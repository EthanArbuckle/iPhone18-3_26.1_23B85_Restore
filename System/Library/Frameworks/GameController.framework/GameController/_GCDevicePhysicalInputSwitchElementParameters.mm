@interface _GCDevicePhysicalInputSwitchElementParameters
- (BOOL)isEqual:(id)equal;
- (_GCDevicePhysicalInputSwitchElementParameters)init;
- (id)copyWithZone:(_NSZone *)zone;
- (id)sources;
- (uint64_t)canWrap;
- (uint64_t)eventPositionField;
- (uint64_t)isSequential;
- (uint64_t)positionRange;
- (uint64_t)setCanWrap:(uint64_t)result;
- (uint64_t)setEventPositionField:(uint64_t)result;
- (uint64_t)setPositionRange:(uint64_t)range;
- (uint64_t)setSequential:(uint64_t)result;
- (void)setSources:(void *)sources;
@end

@implementation _GCDevicePhysicalInputSwitchElementParameters

- (_GCDevicePhysicalInputSwitchElementParameters)init
{
  v3.receiver = self;
  v3.super_class = _GCDevicePhysicalInputSwitchElementParameters;
  result = [(_GCDevicePhysicalInputSwitchElementParameters *)&v3 init];
  result->_sequential = 0;
  result->_canWrap = 0;
  result->_positionRange.location = 0;
  result->_positionRange.length = 0;
  result->_eventPositionField = -1;
  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = _GCDevicePhysicalInputSwitchElementParameters;
  v4 = [(_GCDevicePhysicalInputElementParameters *)&v6 copyWithZone:zone];
  objc_storeStrong(v4 + 6, self->_sources);
  *(v4 + 40) = self->_sequential;
  *(v4 + 41) = self->_canWrap;
  *(v4 + 4) = self->_positionRange;
  v4[7] = self->_eventPositionField;
  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v9.receiver = self;
  v9.super_class = _GCDevicePhysicalInputSwitchElementParameters;
  v7 = [(_GCDevicePhysicalInputElementParameters *)&v9 isEqual:equalCopy]&& ((sources = self->_sources, sources == equalCopy[6]) || [(NSSet *)sources isEqual:?]) && self->_sequential == *(equalCopy + 40) && self->_canWrap == *(equalCopy + 41) && (self->_positionRange.location == equalCopy[8] ? (v6 = self->_positionRange.length == equalCopy[9]) : (v6 = 0), v6) && self->_eventPositionField == equalCopy[7];

  return v7;
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

- (uint64_t)canWrap
{
  if (self)
  {
    v1 = *(self + 41);
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

- (uint64_t)isSequential
{
  if (self)
  {
    v1 = *(self + 40);
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

- (uint64_t)positionRange
{
  if (result)
  {
    v1 = result + 64;
    result = *(result + 64);
    v2 = *(v1 + 8);
  }

  return result;
}

- (uint64_t)eventPositionField
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

- (uint64_t)setSequential:(uint64_t)result
{
  if (result)
  {
    *(result + 40) = a2;
  }

  return result;
}

- (uint64_t)setCanWrap:(uint64_t)result
{
  if (result)
  {
    *(result + 41) = a2;
  }

  return result;
}

- (uint64_t)setPositionRange:(uint64_t)range
{
  if (result)
  {
    *(result + 64) = a2;
    *(result + 72) = range;
  }

  return result;
}

- (uint64_t)setEventPositionField:(uint64_t)result
{
  if (result)
  {
    *(result + 56) = a2;
  }

  return result;
}

@end