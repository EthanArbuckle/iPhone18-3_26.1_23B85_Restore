@interface _GCDevicePhysicalInputAxis2DInputParameters
- (BOOL)isEqual:(id)a3;
- (_GCDevicePhysicalInputAxis2DInputParameters)init;
- (id)copyWithZone:(_NSZone *)a3;
- (uint64_t)canWrap;
- (uint64_t)isAnalog;
- (uint64_t)setAnalog:(uint64_t)result;
- (uint64_t)setCanWrap:(uint64_t)result;
- (uint64_t)sources;
- (void)setSources:(void *)a1;
@end

@implementation _GCDevicePhysicalInputAxis2DInputParameters

- (_GCDevicePhysicalInputAxis2DInputParameters)init
{
  v3.receiver = self;
  v3.super_class = _GCDevicePhysicalInputAxis2DInputParameters;
  result = [(_GCDevicePhysicalInputAxis2DInputParameters *)&v3 init];
  result->_analog = 0;
  result->_canWrap = 0;
  return result;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v6.receiver = self;
  v6.super_class = _GCDevicePhysicalInputAxis2DInputParameters;
  v4 = [(_GCDevicePhysicalInputViewParameters *)&v6 copyWithZone:a3];
  objc_storeStrong(v4 + 2, self->_sources);
  *(v4 + 8) = self->_analog;
  *(v4 + 9) = self->_canWrap;
  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = _GCDevicePhysicalInputAxis2DInputParameters;
  v6 = [(_GCDevicePhysicalInputViewParameters *)&v8 isEqual:v4]&& ((sources = self->_sources, sources == v4[2]) || [(NSSet *)sources isEqual:?]) && self->_analog == *(v4 + 8) && self->_canWrap == *(v4 + 9);

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
  if (a1)
  {
    v1 = *(a1 + 8);
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

- (uint64_t)canWrap
{
  if (a1)
  {
    v1 = *(a1 + 9);
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

- (void)setSources:(void *)a1
{
  if (a1)
  {
    objc_setProperty_nonatomic_copy(a1, newValue, newValue, 16);
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