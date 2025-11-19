@interface _GCDevicePhysicalInputTouchInputParameters
- (BOOL)isEqual:(id)a3;
- (_GCDevicePhysicalInputTouchInputParameters)init;
- (double)touchedThreshold;
- (id)copyWithZone:(_NSZone *)a3;
- (uint64_t)setTouchedThreshold:(uint64_t)result;
- (uint64_t)sources;
- (void)setSources:(void *)a1;
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

- (id)copyWithZone:(_NSZone *)a3
{
  v6.receiver = self;
  v6.super_class = _GCDevicePhysicalInputTouchInputParameters;
  v4 = [(_GCDevicePhysicalInputViewParameters *)&v6 copyWithZone:a3];
  objc_storeStrong(v4 + 2, self->_sources);
  *(v4 + 2) = LODWORD(self->_touchedThreshold);
  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = _GCDevicePhysicalInputTouchInputParameters;
  v6 = [(_GCDevicePhysicalInputViewParameters *)&v8 isEqual:v4]&& ((sources = self->_sources, sources == v4[2]) || [(NSSet *)sources isEqual:?]) && self->_touchedThreshold == *(v4 + 2);

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
  if (!a1)
  {
    return 0.0;
  }

  LODWORD(result) = *(a1 + 8);
  return result;
}

- (void)setSources:(void *)a1
{
  if (a1)
  {
    objc_setProperty_nonatomic_copy(a1, newValue, newValue, 16);
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