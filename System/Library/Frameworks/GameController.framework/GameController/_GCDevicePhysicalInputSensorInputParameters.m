@interface _GCDevicePhysicalInputSensorInputParameters
- (BOOL)isEqual:(id)a3;
- (_GCDevicePhysicalInputSensorInputParameters)init;
- (double)maximumValue;
- (double)minimumValue;
- (id)copyWithZone:(_NSZone *)a3;
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

- (id)copyWithZone:(_NSZone *)a3
{
  v5.receiver = self;
  v5.super_class = _GCDevicePhysicalInputSensorInputParameters;
  result = [(_GCDevicePhysicalInputViewParameters *)&v5 copyWithZone:a3];
  *(result + 2) = LODWORD(self->_minimumValue);
  *(result + 3) = LODWORD(self->_maximumValue);
  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = _GCDevicePhysicalInputSensorInputParameters;
  v5 = [(_GCDevicePhysicalInputViewParameters *)&v7 isEqual:v4]&& self->_minimumValue == v4[2] && self->_maximumValue == v4[3];

  return v5;
}

- (double)minimumValue
{
  if (!a1)
  {
    return 0.0;
  }

  LODWORD(result) = *(a1 + 8);
  return result;
}

- (double)maximumValue
{
  if (!a1)
  {
    return 0.0;
  }

  LODWORD(result) = *(a1 + 12);
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