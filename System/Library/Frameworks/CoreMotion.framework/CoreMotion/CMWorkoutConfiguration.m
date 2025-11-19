@interface CMWorkoutConfiguration
- (BOOL)isEqual:(id)a3;
- (CMWorkoutConfiguration)init;
- (CMWorkoutConfiguration)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CMWorkoutConfiguration

- (CMWorkoutConfiguration)init
{
  v3.receiver = self;
  v3.super_class = CMWorkoutConfiguration;
  result = [(CMWorkoutConfiguration *)&v3 init];
  if (result)
  {
    *&result->_workoutType = xmmword_19B7B9500;
  }

  return result;
}

- (BOOL)isEqual:(id)a3
{
  if (a3 == self)
  {
    return 1;
  }

  objc_opt_class();
  return (objc_opt_isKindOfClass() & 1) != 0 && self->_workoutType == *(a3 + 1) && self->_locationType == *(a3 + 2);
}

- (id)description
{
  v3 = MEMORY[0x1E696AD60];
  v4 = objc_opt_class();
  v6 = objc_msgSend_workoutName_(CMWorkout, v5, self->_workoutType);
  v8 = objc_msgSend_workoutLocationName_(CMWorkout, v7, self->_locationType);
  v10 = objc_msgSend_stringWithFormat_(v3, v9, @"<%@:%p workout:%@ location:%@", v4, self, v6, v8);
  objc_msgSend_appendString_(v10, v11, @">");
  return v10;
}

- (void)encodeWithCoder:(id)a3
{
  objc_msgSend_encodeInteger_forKey_(a3, a2, self->_workoutType, @"kCMWorkoutConfigurationDataCodingKeyWorkoutType");
  locationType = self->_locationType;

  objc_msgSend_encodeInteger_forKey_(a3, v5, locationType, @"kCMWorkoutConfigurationDataCodingKeyLocationType");
}

- (CMWorkoutConfiguration)initWithCoder:(id)a3
{
  v8.receiver = self;
  v8.super_class = CMWorkoutConfiguration;
  v5 = [(CMWorkoutConfiguration *)&v8 init];
  if (v5)
  {
    v5->_workoutType = objc_msgSend_decodeIntegerForKey_(a3, v4, @"kCMWorkoutConfigurationDataCodingKeyWorkoutType");
    v5->_locationType = objc_msgSend_decodeIntegerForKey_(a3, v6, @"kCMWorkoutConfigurationDataCodingKeyLocationType");
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_msgSend_allocWithZone_(CMWorkoutConfiguration, a2, a3);
  v7 = objc_msgSend_init(v4, v5, v6);
  objc_msgSend_setWorkoutType_(v7, v8, self->_workoutType);
  objc_msgSend_setLocationType_(v7, v9, self->_locationType);
  return v7;
}

@end