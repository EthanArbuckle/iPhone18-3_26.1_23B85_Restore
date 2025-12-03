@interface _GCDevicePhysicalInputAxisInputParameters
- (BOOL)isEqual:(id)equal;
- (_GCDevicePhysicalInputAxisInputParameters)init;
- (id)copyWithZone:(_NSZone *)zone;
- (uint64_t)canWrap;
- (uint64_t)isAnalog;
- (uint64_t)setAnalog:(uint64_t)result;
- (uint64_t)setCanWrap:(uint64_t)result;
- (uint64_t)sources;
- (void)setSources:(void *)sources;
@end

@implementation _GCDevicePhysicalInputAxisInputParameters

- (_GCDevicePhysicalInputAxisInputParameters)init
{
  v3.receiver = self;
  v3.super_class = _GCDevicePhysicalInputAxisInputParameters;
  result = [(_GCDevicePhysicalInputAxisInputParameters *)&v3 init];
  result->_analog = 0;
  result->_canWrap = 0;
  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = _GCDevicePhysicalInputAxisInputParameters;
  v4 = [(_GCDevicePhysicalInputViewParameters *)&v6 copyWithZone:zone];
  objc_storeStrong(v4 + 2, self->_sources);
  *(v4 + 8) = self->_analog;
  *(v4 + 9) = self->_canWrap;
  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v8.receiver = self;
  v8.super_class = _GCDevicePhysicalInputAxisInputParameters;
  v6 = [(_GCDevicePhysicalInputViewParameters *)&v8 isEqual:equalCopy]&& ((sources = self->_sources, sources == equalCopy[2]) || [(NSSet *)sources isEqual:?]) && self->_analog == *(equalCopy + 8) && self->_canWrap == *(equalCopy + 9);

  return v6;
}

- (uint64_t)sources
{
  if (result)
  {
    return *(result + 16);
  }

  return result;
}

- (uint64_t)isAnalog
{
  if (self)
  {
    v1 = *(self + 8);
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

- (uint64_t)canWrap
{
  if (self)
  {
    v1 = *(self + 9);
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

- (void)setSources:(void *)sources
{
  if (sources)
  {
    objc_setProperty_nonatomic_copy(sources, newValue, newValue, 16);
  }
}

- (uint64_t)setAnalog:(uint64_t)result
{
  if (result)
  {
    *(result + 8) = a2;
  }

  return result;
}

- (uint64_t)setCanWrap:(uint64_t)result
{
  if (result)
  {
    *(result + 9) = a2;
  }

  return result;
}

@end