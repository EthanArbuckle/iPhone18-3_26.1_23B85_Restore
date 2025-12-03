@interface _HKFitnessMachine
- (BOOL)isEqual:(id)equal;
- (_HKFitnessMachine)initWithCoder:(id)coder;
- (_HKFitnessMachine)initWithType:(unint64_t)type identifier:(id)identifier;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _HKFitnessMachine

- (_HKFitnessMachine)initWithType:(unint64_t)type identifier:(id)identifier
{
  identifierCopy = identifier;
  v11.receiver = self;
  v11.super_class = _HKFitnessMachine;
  v8 = [(_HKFitnessMachine *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_identifier, identifier);
    v9->_type = type;
  }

  return v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    identifier = self->_identifier;
    identifier = [equalCopy identifier];
    v7 = [(NSUUID *)identifier isEqual:identifier];
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
  uUIDString = [(NSUUID *)self->_identifier UUIDString];
  v7 = _HKStringForFitnessMachineType(self->_type);
  name = [(HKDevice *)self->_device name];
  v9 = [HKWorkout _stringFromWorkoutActivityType:self->_activityType];
  v10 = [v3 stringWithFormat:@"<%@ %p> %@ %@ %@ %@", v5, self, uUIDString, v7, name, v9];

  return v10;
}

- (_HKFitnessMachine)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = _HKFitnessMachine;
  v5 = [(_HKFitnessMachine *)&v13 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v5->_type = [coderCopy decodeIntegerForKey:@"Type"];
    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Device"];
    device = v5->_device;
    v5->_device = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Brand"];
    brand = v5->_brand;
    v5->_brand = v10;

    v5->_activityType = [coderCopy decodeIntegerForKey:@"WorkoutActivityType"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  identifier = self->_identifier;
  coderCopy = coder;
  [coderCopy encodeObject:identifier forKey:@"Identifier"];
  [coderCopy encodeInteger:self->_type forKey:@"Type"];
  [coderCopy encodeObject:self->_device forKey:@"Device"];
  [coderCopy encodeObject:self->_brand forKey:@"Brand"];
  [coderCopy encodeInteger:self->_activityType forKey:@"WorkoutActivityType"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "initWithType:identifier:", self->_type, self->_identifier}];
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