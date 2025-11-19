@interface _HKFitnessMachine
- (BOOL)isEqual:(id)a3;
- (_HKFitnessMachine)initWithCoder:(id)a3;
- (_HKFitnessMachine)initWithType:(unint64_t)a3 identifier:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _HKFitnessMachine

- (_HKFitnessMachine)initWithType:(unint64_t)a3 identifier:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = _HKFitnessMachine;
  v8 = [(_HKFitnessMachine *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_identifier, a4);
    v9->_type = a3;
  }

  return v9;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    identifier = self->_identifier;
    v6 = [v4 identifier];
    v7 = [(NSUUID *)identifier isEqual:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(NSUUID *)self->_identifier UUIDString];
  v7 = _HKStringForFitnessMachineType(self->_type);
  v8 = [(HKDevice *)self->_device name];
  v9 = [HKWorkout _stringFromWorkoutActivityType:self->_activityType];
  v10 = [v3 stringWithFormat:@"<%@ %p> %@ %@ %@ %@", v5, self, v6, v7, v8, v9];

  return v10;
}

- (_HKFitnessMachine)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = _HKFitnessMachine;
  v5 = [(_HKFitnessMachine *)&v13 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v5->_type = [v4 decodeIntegerForKey:@"Type"];
    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Device"];
    device = v5->_device;
    v5->_device = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Brand"];
    brand = v5->_brand;
    v5->_brand = v10;

    v5->_activityType = [v4 decodeIntegerForKey:@"WorkoutActivityType"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  identifier = self->_identifier;
  v5 = a3;
  [v5 encodeObject:identifier forKey:@"Identifier"];
  [v5 encodeInteger:self->_type forKey:@"Type"];
  [v5 encodeObject:self->_device forKey:@"Device"];
  [v5 encodeObject:self->_brand forKey:@"Brand"];
  [v5 encodeInteger:self->_activityType forKey:@"WorkoutActivityType"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "initWithType:identifier:", self->_type, self->_identifier}];
  v5 = [(HKDevice *)self->_device copy];
  v6 = v4[4];
  v4[4] = v5;

  v7 = [(NSString *)self->_brand copy];
  v8 = v4[5];
  v4[5] = v7;

  v4[3] = self->_activityType;
  return v4;
}

@end