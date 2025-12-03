@interface MDLTransformTranslateOp
- (MDLTransformTranslateOp)initWithName:(id)name inverse:(BOOL)inverse data:(id)data;
- (double)float4x4AtTime:(uint64_t)time;
- (void)double4x4AtTime:(uint64_t)time@<X2>;
@end

@implementation MDLTransformTranslateOp

- (MDLTransformTranslateOp)initWithName:(id)name inverse:(BOOL)inverse data:(id)data
{
  nameCopy = name;
  dataCopy = data;
  v15.receiver = self;
  v15.super_class = MDLTransformTranslateOp;
  v11 = [(MDLTransformTranslateOp *)&v15 init];
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
  v4.columns[0] = *MEMORY[0x277D860B8];
  v4.columns[3].i32[3] = 1.0;
  if (*(self + 8))
  {
    v4.columns[1] = *(MEMORY[0x277D860B8] + 16);
    v4.columns[2] = *(MEMORY[0x277D860B8] + 32);
    v4.columns[0].i64[0] = __invert_f4(v4);
  }

  return *v4.columns[0].i64;
}

- (void)double4x4AtTime:(uint64_t)time@<X2>
{
  result = *(self + 24);
  if (result)
  {
    result = objc_msgSend_double3AtTime_(result, a2, time);
    v7 = v14;
    v8 = vextq_s8(v7, v7, 8uLL).u64[0];
    *&v9 = vars0;
  }

  else
  {
    v7.i64[0] = 0;
    v8 = 0;
    *&v9 = 0;
  }

  v7.i64[1] = v8;
  *(&v9 + 1) = 1.0;
  if (*(self + 8))
  {
    v18 = *(MEMORY[0x277D860A0] + 32);
    v19 = *(MEMORY[0x277D860A0] + 48);
    v20 = *(MEMORY[0x277D860A0] + 64);
    v21 = *(MEMORY[0x277D860A0] + 80);
    v16 = *MEMORY[0x277D860A0];
    v17 = *(MEMORY[0x277D860A0] + 16);
    return __invert_d4();
  }

  else
  {
    v10 = MEMORY[0x277D860A0];
    v11 = *(MEMORY[0x277D860A0] + 48);
    a4[2] = *(MEMORY[0x277D860A0] + 32);
    a4[3] = v11;
    v12 = v10[5];
    a4[4] = v10[4];
    a4[5] = v12;
    v13 = v10[1];
    *a4 = *v10;
    a4[1] = v13;
    a4[6] = v7;
    a4[7] = v9;
  }

  return result;
}

@end