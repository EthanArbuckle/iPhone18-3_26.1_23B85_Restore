@interface _GCSteeringWheelElementParameters
- (BOOL)isEqual:(id)a3;
- (_GCSteeringWheelElementParameters)init;
- (double)maximumDegreesOfRotation;
- (id)copyWithZone:(_NSZone *)a3;
- (id)sources;
- (uint64_t)eventRotationValueField;
- (uint64_t)setEventRotationValueField:(uint64_t)result;
- (uint64_t)setMaximumDegreesOfRotation:(uint64_t)result;
- (void)setSources:(void *)a1;
@end

@implementation _GCSteeringWheelElementParameters

- (_GCSteeringWheelElementParameters)init
{
  v3.receiver = self;
  v3.super_class = _GCSteeringWheelElementParameters;
  result = [(_GCSteeringWheelElementParameters *)&v3 init];
  result->_eventRotationValueField = -1;
  return result;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v6.receiver = self;
  v6.super_class = _GCSteeringWheelElementParameters;
  v4 = [(_GCDevicePhysicalInputElementParameters *)&v6 copyWithZone:a3];
  objc_storeStrong(v4 + 6, self->_sources);
  *(v4 + 10) = LODWORD(self->_maximumDegreesOfRotation);
  v4[7] = self->_eventRotationValueField;
  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = _GCSteeringWheelElementParameters;
  v6 = [(_GCDevicePhysicalInputElementParameters *)&v8 isEqual:v4]&& ((sources = self->_sources, sources == v4[6]) || [(NSSet *)sources isEqual:?]) && self->_maximumDegreesOfRotation == *(v4 + 10) && self->_eventRotationValueField == v4[7];

  return v6;
}

- (id)sources
{
  v1 = a1;
  if (a1)
  {
    v2 = a1[6];
    if (v2)
    {
      v1 = v2;
    }

    else
    {
      v3 = MEMORY[0x1E695DFD8];
      v4 = MEMORY[0x1E69A06B8];
      v5 = [(_GCDevicePhysicalInputElementParameters *)a1 aliases];
      v6 = [(_GCDevicePhysicalInputElementParameters *)v1 localizedName];
      v7 = [(_GCDevicePhysicalInputElementParameters *)v1 symbol];
      v8 = [v4 sourceWithElementAliases:v5 localizedName:v6 symbol:v7];
      v1 = [v3 setWithObject:v8];
    }
  }

  return v1;
}

- (double)maximumDegreesOfRotation
{
  if (!a1)
  {
    return 0.0;
  }

  LODWORD(result) = *(a1 + 40);
  return result;
}

- (uint64_t)eventRotationValueField
{
  if (result)
  {
    return *(result + 56);
  }

  return result;
}

- (void)setSources:(void *)a1
{
  if (a1)
  {
    objc_setProperty_nonatomic_copy(a1, newValue, newValue, 48);
  }
}

- (uint64_t)setMaximumDegreesOfRotation:(uint64_t)result
{
  if (result)
  {
    *(result + 40) = a2;
  }

  return result;
}

- (uint64_t)setEventRotationValueField:(uint64_t)result
{
  if (result)
  {
    *(result + 56) = a2;
  }

  return result;
}

@end