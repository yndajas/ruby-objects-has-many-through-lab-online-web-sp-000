class Patient
  attr_accessor :name
  
  @@all = []
  
  def self.all
    @@all
  end
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def new_appointment(date, doctor)
    appointment = Appointment.new
    appointment.date = date
    appointment.patient = self
    appointment.doctor = doctor
  end
  
end