@interface MDLTransformMatrixOp
- (MDLTransformMatrixOp)initWithName:(id)name inverse:(BOOL)inverse data:(id)data;
- (double)double4x4AtTime:(uint64_t)time@<X2>;
- (double)float4x4AtTime:(uint64_t)time;
@end

@implementation MDLTransformMatrixOp

- (MDLTransformMatrixOp)initWithName:(id)name inverse:(BOOL)inverse data:(id)data
{
  nameCopy = name;
  dataCopy = data;
  v15.receiver = self;
  v15.super_class = MDLTransformMatrixOp;
  v11 = [(MDLTransformMatrixOp *)&v15 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_animatedValue, data);
    objc_storeStrong(&v12->_name, name);
    v12->_inverse = inverse;
    v13 = v12;
  }

  return v12;
}

- (double)float4x4AtTime:(uint64_t)time
{
  objc_msgSend_float4x4AtTime_(*(self + 24), a2, time);
  if (*(self + 8))
  {
    v4.columns[0].i64[0] = __invert_f4(v4);
  }

  return *v4.columns[0].i64;
}

- (double)double4x4AtTime:(uint64_t)time@<X2>
{
  vars0 = 0u;
  v6 = *(self + 24);
  if (v6)
  {
    objc_msgSend_double4x4AtTime_(v6, a2, time);
  }

  if (*(self + 8))
  {
    __invert_d4();
  }

  else
  {
    a4[4] = 0u;
    a4[5] = 0u;
    a4[6] = 0u;
    a4[7] = 0u;
    *a4 = 0u;
    a4[1] = 0u;
    result = 0.0;
    a4[2] = 0u;
    a4[3] = 0u;
  }

  return result;
}

@end