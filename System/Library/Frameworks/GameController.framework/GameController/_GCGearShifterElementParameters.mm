@interface _GCGearShifterElementParameters
- (BOOL)isEqual:(id)equal;
- (_GCGearShifterElementParameters)init;
- (id)copyWithZone:(_NSZone *)zone;
- (id)sources;
- (uint64_t)eventShifterValueField;
- (uint64_t)isPatternShifter;
- (uint64_t)positionRange;
- (uint64_t)setEventShifterValueField:(uint64_t)result;
- (uint64_t)setPatternShifter:(uint64_t)result;
- (uint64_t)setPositionRange:(uint64_t)range;
- (void)setSources:(void *)sources;
@end

@implementation _GCGearShifterElementParameters

- (_GCGearShifterElementParameters)init
{
  v3.receiver = self;
  v3.super_class = _GCGearShifterElementParameters;
  result = [(_GCGearShifterElementParameters *)&v3 init];
  result->_patternShifter = 0;
  result->_positionRange.location = 0;
  result->_positionRange.length = 0;
  result->_eventShifterValueField = -1;
  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = _GCGearShifterElementParameters;
  v4 = [(_GCDevicePhysicalInputElementParameters *)&v6 copyWithZone:zone];
  objc_storeStrong(v4 + 6, self->_sources);
  *(v4 + 40) = self->_patternShifter;
  *(v4 + 4) = self->_positionRange;
  v4[7] = self->_eventShifterValueField;
  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v9.receiver = self;
  v9.super_class = _GCGearShifterElementParameters;
  v7 = [(_GCDevicePhysicalInputElementParameters *)&v9 isEqual:equalCopy]&& ((sources = self->_sources, sources == equalCopy[6]) || [(NSSet *)sources isEqual:?]) && self->_patternShifter == *(equalCopy + 40) && (self->_positionRange.location == equalCopy[8] ? (v6 = self->_positionRange.length == equalCopy[9]) : (v6 = 0), v6) && self->_eventShifterValueField == equalCopy[7];

  return v7;
}

- (uint64_t)isPatternShifter
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

- (uint64_t)eventShifterValueField
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

- (uint64_t)setPatternShifter:(uint64_t)result
{
  if (result)
  {
    *(result + 40) = a2;
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

- (uint64_t)setEventShifterValueField:(uint64_t)result
{
  if (result)
  {
    *(result + 56) = a2;
  }

  return result;
}

@end