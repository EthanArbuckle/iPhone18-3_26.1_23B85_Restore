@interface _GCDevicePhysicalInputTouchInputParameters
- (BOOL)isEqual:(id)equal;
- (_GCDevicePhysicalInputTouchInputParameters)init;
- (double)touchedThreshold;
- (id)copyWithZone:(_NSZone *)zone;
- (uint64_t)setTouchedThreshold:(uint64_t)result;
- (uint64_t)sources;
- (void)setSources:(void *)sources;
@end

@implementation _GCDevicePhysicalInputTouchInputParameters

- (_GCDevicePhysicalInputTouchInputParameters)init
{
  v3.receiver = self;
  v3.super_class = _GCDevicePhysicalInputTouchInputParameters;
  result = [(_GCDevicePhysicalInputTouchInputParameters *)&v3 init];
  result->_touchedThreshold = 0.0;
  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = _GCDevicePhysicalInputTouchInputParameters;
  v4 = [(_GCDevicePhysicalInputViewParameters *)&v6 copyWithZone:zone];
  objc_storeStrong(v4 + 2, self->_sources);
  *(v4 + 2) = LODWORD(self->_touchedThreshold);
  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v8.receiver = self;
  v8.super_class = _GCDevicePhysicalInputTouchInputParameters;
  v6 = [(_GCDevicePhysicalInputViewParameters *)&v8 isEqual:equalCopy]&& ((sources = self->_sources, sources == equalCopy[2]) || [(NSSet *)sources isEqual:?]) && self->_touchedThreshold == *(equalCopy + 2);

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

- (double)touchedThreshold
{
  if (!self)
  {
    return 0.0;
  }

  LODWORD(result) = *(self + 8);
  return result;
}

- (void)setSources:(void *)sources
{
  if (sources)
  {
    objc_setProperty_nonatomic_copy(sources, newValue, newValue, 16);
  }
}

- (uint64_t)setTouchedThreshold:(uint64_t)result
{
  if (result)
  {
    *(result + 8) = a2;
  }

  return result;
}

@end