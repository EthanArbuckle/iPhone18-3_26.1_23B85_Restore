@interface _GCSteeringWheelElementParameters
- (BOOL)isEqual:(id)equal;
- (_GCSteeringWheelElementParameters)init;
- (double)maximumDegreesOfRotation;
- (id)copyWithZone:(_NSZone *)zone;
- (id)sources;
- (uint64_t)eventRotationValueField;
- (uint64_t)setEventRotationValueField:(uint64_t)result;
- (uint64_t)setMaximumDegreesOfRotation:(uint64_t)result;
- (void)setSources:(void *)sources;
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

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = _GCSteeringWheelElementParameters;
  v4 = [(_GCDevicePhysicalInputElementParameters *)&v6 copyWithZone:zone];
  objc_storeStrong(v4 + 6, self->_sources);
  *(v4 + 10) = LODWORD(self->_maximumDegreesOfRotation);
  v4[7] = self->_eventRotationValueField;
  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v8.receiver = self;
  v8.super_class = _GCSteeringWheelElementParameters;
  v6 = [(_GCDevicePhysicalInputElementParameters *)&v8 isEqual:equalCopy]&& ((sources = self->_sources, sources == equalCopy[6]) || [(NSSet *)sources isEqual:?]) && self->_maximumDegreesOfRotation == *(equalCopy + 10) && self->_eventRotationValueField == equalCopy[7];

  return v6;
}

- (id)sources
{
  selfCopy = self;
  if (self)
  {
    v2 = self[6];
    if (v2)
    {
      selfCopy = v2;
    }

    else
    {
      v3 = MEMORY[0x1E695DFD8];
      v4 = MEMORY[0x1E69A06B8];
      aliases = [(_GCDevicePhysicalInputElementParameters *)self aliases];
      localizedName = [(_GCDevicePhysicalInputElementParameters *)selfCopy localizedName];
      symbol = [(_GCDevicePhysicalInputElementParameters *)selfCopy symbol];
      v8 = [v4 sourceWithElementAliases:aliases localizedName:localizedName symbol:symbol];
      selfCopy = [v3 setWithObject:v8];
    }
  }

  return selfCopy;
}

- (double)maximumDegreesOfRotation
{
  if (!self)
  {
    return 0.0;
  }

  LODWORD(result) = *(self + 40);
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

- (void)setSources:(void *)sources
{
  if (sources)
  {
    objc_setProperty_nonatomic_copy(sources, newValue, newValue, 48);
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