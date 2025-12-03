@interface MDLTransformOrientOp
- (MDLTransformOrientOp)initWithName:(id)name inverse:(BOOL)inverse data:(id)data;
- (double)double4x4AtTime:(uint64_t)time@<X2>;
- (double)float4x4AtTime:(uint64_t)time;
@end

@implementation MDLTransformOrientOp

- (MDLTransformOrientOp)initWithName:(id)name inverse:(BOOL)inverse data:(id)data
{
  nameCopy = name;
  dataCopy = data;
  v15.receiver = self;
  v15.super_class = MDLTransformOrientOp;
  v11 = [(MDLTransformOrientOp *)&v15 init];
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
  objc_msgSend_floatQuaternionAtTime_(*(self + 24), a2, time);
  v15.columns[1] = v15.columns[0];
  v15.columns[3].f32[0] = vmulq_f32(v15.columns[0], v15.columns[0]).f32[0];
  v4 = v15.columns[0].f32[1];
  v5 = vmuls_lane_f32(v15.columns[0].f32[1], *v15.columns[0].f32, 1);
  v6 = vmuls_lane_f32(v15.columns[0].f32[2], v15.columns[0], 2);
  v7 = vmuls_lane_f32(v15.columns[0].f32[3], v15.columns[0], 3);
  v8 = vmuls_lane_f32(v15.columns[1].f32[0], *v15.columns[1].f32, 1);
  v9 = vmuls_lane_f32(v15.columns[0].f32[2], v15.columns[0], 3);
  v10 = vmuls_lane_f32(v15.columns[1].f32[0], v15.columns[1], 2);
  v11 = vmuls_lane_f32(v15.columns[0].f32[1], v15.columns[0], 3);
  v15.columns[2].i32[3] = 0;
  v15.columns[0].i32[3] = 0;
  v15.columns[0].f32[0] = (v15.columns[3].f32[0] - (v5 + v6)) + v7;
  v15.columns[0].f32[1] = (v8 + v9) + (v8 + v9);
  v12 = (v8 - v9) + (v8 - v9);
  v13 = vmuls_lane_f32(v4, v15.columns[1], 2);
  v14 = vmuls_lane_f32(v15.columns[1].f32[0], v15.columns[1], 3);
  v15.columns[1].i32[3] = 0;
  v15.columns[1].f32[0] = v12;
  v15.columns[1].f32[1] = (v5 + v7) - (v6 + v15.columns[3].f32[0]);
  v15.columns[2].f32[0] = (v10 + v11) + (v10 + v11);
  v15.columns[2].f32[1] = (v13 - v14) + (v13 - v14);
  v15.columns[2].f32[2] = (v6 + v7) - (v15.columns[3].f32[0] + v5);
  v15.columns[3] = xmmword_239F9C1B0;
  if (*(self + 8))
  {
    v15.columns[0].f32[2] = (v10 - v11) + (v10 - v11);
    v15.columns[1].f32[2] = (v13 + v14) + (v13 + v14);
    v15.columns[0].i64[0] = __invert_f4(v15);
  }

  return *v15.columns[0].i64;
}

- (double)double4x4AtTime:(uint64_t)time@<X2>
{
  v6 = *(self + 24);
  if (v6)
  {
    objc_msgSend_doubleQuaternionAtTime_(v6, a2, time);
    v7 = v24;
    v8 = v25;
  }

  else
  {
    v7 = 0uLL;
    v8 = 0uLL;
  }

  v9 = vmuld_n_f64(v7.f64[0], v7.f64[0]);
  v10 = vmuld_lane_f64(v7.f64[1], v7, 1);
  v11 = vmuld_n_f64(v8.f64[0], v8.f64[0]);
  v12 = vmuld_lane_f64(v8.f64[1], v8, 1);
  *&v17 = v9 - (v10 + v11) + v12;
  v13 = vmuld_lane_f64(v7.f64[0], v7, 1);
  v14 = vmuld_lane_f64(v8.f64[0], v8, 1);
  v15 = vmuld_n_f64(v7.f64[0], v8.f64[0]);
  v16 = vmuld_lane_f64(v7.f64[1], v8, 1);
  *(&v17 + 1) = v13 + v14 + v13 + v14;
  *(&v18 + 1) = 0;
  *&v19 = v13 - v14 + v13 - v14;
  v20 = vmuld_lane_f64(v8.f64[0], v7, 1);
  v21 = vmuld_lane_f64(v7.f64[0], v8, 1);
  v7.f64[1] = 0.0;
  if (*(self + 8))
  {
    __invert_d4();
  }

  else
  {
    *a4 = v17;
    *&v18 = v15 - v16 + v15 - v16;
    *(a4 + 16) = v18;
    *(&v19 + 1) = v10 + v12 - (v11 + v9);
    *(a4 + 32) = v19;
    v7.f64[0] = v20 + v21 + v20 + v21;
    *(a4 + 48) = v7;
    *(&v22 + 1) = v20 - v21 + v20 - v21;
    *&v22 = v15 + v16 + v15 + v16;
    *(a4 + 64) = v22;
    *(a4 + 80) = COERCE_UNSIGNED_INT64(v11 + v12 - (v9 + v10));
    *(a4 + 96) = 0;
    *(a4 + 104) = 0;
    result = 0.0;
    *(a4 + 112) = xmmword_239F9C570;
  }

  return result;
}

@end