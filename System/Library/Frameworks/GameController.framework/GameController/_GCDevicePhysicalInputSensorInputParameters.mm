@interface _GCDevicePhysicalInputSensorInputParameters
- (BOOL)isEqual:(id)equal;
- (_GCDevicePhysicalInputSensorInputParameters)init;
- (double)maximumValue;
- (double)minimumValue;
- (id)copyWithZone:(_NSZone *)zone;
- (uint64_t)setMaximumValue:(uint64_t)result;
- (uint64_t)setMinimumValue:(uint64_t)result;
@end

@implementation _GCDevicePhysicalInputSensorInputParameters

- (_GCDevicePhysicalInputSensorInputParameters)init
{
  v3.receiver = self;
  v3.super_class = _GCDevicePhysicalInputSensorInputParameters;
  return [(_GCDevicePhysicalInputSensorInputParameters *)&v3 init];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5.receiver = self;
  v5.super_class = _GCDevicePhysicalInputSensorInputParameters;
  result = [(_GCDevicePhysicalInputViewParameters *)&v5 copyWithZone:zone];
  *(result + 2) = LODWORD(self->_minimumValue);
  *(result + 3) = LODWORD(self->_maximumValue);
  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v7.receiver = self;
  v7.super_class = _GCDevicePhysicalInputSensorInputParameters;
  v5 = [(_GCDevicePhysicalInputViewParameters *)&v7 isEqual:equalCopy]&& self->_minimumValue == equalCopy[2] && self->_maximumValue == equalCopy[3];

  return v5;
}

- (double)minimumValue
{
  if (!self)
  {
    return 0.0;
  }

  LODWORD(result) = *(self + 8);
  return result;
}

- (double)maximumValue
{
  if (!self)
  {
    return 0.0;
  }

  LODWORD(result) = *(self + 12);
  return result;
}

- (uint64_t)setMinimumValue:(uint64_t)result
{
  if (result)
  {
    *(result + 8) = a2;
  }

  return result;
}

- (uint64_t)setMaximumValue:(uint64_t)result
{
  if (result)
  {
    *(result + 12) = a2;
  }

  return result;
}

@end