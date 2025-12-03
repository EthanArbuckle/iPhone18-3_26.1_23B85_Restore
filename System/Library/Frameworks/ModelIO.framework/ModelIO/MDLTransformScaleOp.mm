@interface MDLTransformScaleOp
- (MDLTransformScaleOp)initWithName:(id)name inverse:(BOOL)inverse data:(id)data;
- (double)double4x4AtTime:(uint64_t)time@<X2>;
- (double)float4x4AtTime:(uint64_t)time;
@end

@implementation MDLTransformScaleOp

- (MDLTransformScaleOp)initWithName:(id)name inverse:(BOOL)inverse data:(id)data
{
  nameCopy = name;
  dataCopy = data;
  v15.receiver = self;
  v15.super_class = MDLTransformScaleOp;
  v11 = [(MDLTransformScaleOp *)&v15 init];
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
  objc_msgSend_float3AtTime_(*(self + 24), a2, time);
  v4.columns[3] = v4.columns[0];
  v4.columns[0] = v4.columns[0].u32[0];
  v4.columns[1].i32[0] = 0;
  v4.columns[1].i64[1] = 0;
  v4.columns[1].i32[1] = v4.columns[3].i32[1];
  v4.columns[2].i64[0] = 0;
  v4.columns[2].i32[3] = 0;
  v4.columns[2].i32[2] = v4.columns[3].i32[2];
  v4.columns[3] = xmmword_239F9C1B0;
  if (*(self + 8))
  {
    v4.columns[0].i64[0] = __invert_f4(v4);
  }

  return *v4.columns[0].i64;
}

- (double)double4x4AtTime:(uint64_t)time@<X2>
{
  v10 = *(self + 24);
  *&v11 = 0;
  if (v10)
  {
    objc_msgSend_double3AtTime_(v10, a2, time, a5, a6, a7, a8, 0.0);
    *&v11 = 0;
    v12 = v16;
    v13 = vextq_s8(v12, v12, 8uLL).u64[0];
    *&v14 = v17;
  }

  else
  {
    v12.i64[0] = 0;
    v13 = 0;
    *&v14 = 0;
  }

  v12.i64[1] = 0;
  *(&v14 + 1) = 0;
  *(&v11 + 1) = v13;
  if (*(self + 8))
  {
    __invert_d4();
  }

  else
  {
    *a4 = v12;
    *(a4 + 16) = 0uLL;
    *(a4 + 32) = v11;
    *(a4 + 48) = 0uLL;
    *(a4 + 64) = 0uLL;
    *(a4 + 80) = v14;
    *(a4 + 96) = 0;
    *(a4 + 104) = 0;
    result = 0.0;
    *(a4 + 112) = xmmword_239F9C570;
  }

  return result;
}

@end