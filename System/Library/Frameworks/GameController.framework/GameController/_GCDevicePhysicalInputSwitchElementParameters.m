@interface _GCDevicePhysicalInputSwitchElementParameters
- (BOOL)isEqual:(id)a3;
- (_GCDevicePhysicalInputSwitchElementParameters)init;
- (id)copyWithZone:(_NSZone *)a3;
- (id)sources;
- (uint64_t)canWrap;
- (uint64_t)eventPositionField;
- (uint64_t)isSequential;
- (uint64_t)positionRange;
- (uint64_t)setCanWrap:(uint64_t)result;
- (uint64_t)setEventPositionField:(uint64_t)result;
- (uint64_t)setPositionRange:(uint64_t)a3;
- (uint64_t)setSequential:(uint64_t)result;
- (void)setSources:(void *)a1;
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

- (id)copyWithZone:(_NSZone *)a3
{
  v6.receiver = self;
  v6.super_class = _GCDevicePhysicalInputSwitchElementParameters;
  v4 = [(_GCDevicePhysicalInputElementParameters *)&v6 copyWithZone:a3];
  objc_storeStrong(v4 + 6, self->_sources);
  *(v4 + 40) = self->_sequential;
  *(v4 + 41) = self->_canWrap;
  *(v4 + 4) = self->_positionRange;
  v4[7] = self->_eventPositionField;
  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = _GCDevicePhysicalInputSwitchElementParameters;
  v7 = [(_GCDevicePhysicalInputElementParameters *)&v9 isEqual:v4]&& ((sources = self->_sources, sources == v4[6]) || [(NSSet *)sources isEqual:?]) && self->_sequential == *(v4 + 40) && self->_canWrap == *(v4 + 41) && (self->_positionRange.location == v4[8] ? (v6 = self->_positionRange.length == v4[9]) : (v6 = 0), v6) && self->_eventPositionField == v4[7];

  return v7;
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

- (uint64_t)canWrap
{
  if (a1)
  {
    v1 = *(a1 + 41);
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

- (uint64_t)isSequential
{
  if (a1)
  {
    v1 = *(a1 + 40);
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

- (void)setSources:(void *)a1
{
  if (a1)
  {
    objc_setProperty_nonatomic_copy(a1, newValue, newValue, 48);
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

- (uint64_t)setPositionRange:(uint64_t)a3
{
  if (result)
  {
    *(result + 64) = a2;
    *(result + 72) = a3;
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