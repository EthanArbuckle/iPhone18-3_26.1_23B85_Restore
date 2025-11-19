@interface ARUIRingUniforms
- (ARUIRingUniforms)initWithRing:(id)a3 inContext:(id)a4;
- (__n128)uniforms;
- (__n128)vertexAttributes;
- (void)_updateUniformsWithRing:(id)a3 inContext:(id)a4;
- (void)_updateVertexAttributesWithRing:(id)a3 inContext:(id)a4;
@end

@implementation ARUIRingUniforms

- (ARUIRingUniforms)initWithRing:(id)a3 inContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = ARUIRingUniforms;
  v8 = [(ARUIRingUniforms *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(ARUIRingUniforms *)v8 _updateVertexAttributesWithRing:v6 inContext:v7];
    [(ARUIRingUniforms *)v9 _updateUniformsWithRing:v6 inContext:v7];
  }

  return v9;
}

- (void)_updateVertexAttributesWithRing:(id)a3 inContext:(id)a4
{
  v56 = a3;
  v6 = a4;
  [v56 diameter];
  [v56 thickness];
  [v56 zRotation];
  v8 = v7;
  [v6 screenScale];
  v10 = v9;
  [v56 scale];
  v12 = v11;
  v13 = v10 * v11;
  [v6 drawableDiameter];
  v15 = v14 / v13;
  [v6 skewAdjustmentMatrix];
  v52 = v17;
  v54 = v16;
  v48 = v19;
  v50 = v18;
  [v56 translation];
  *v20.i32 = v12 * v15;
  v22 = COERCE_DOUBLE(vneg_f32(v21));
  v21.i32[1] = HIDWORD(v22);
  v23 = vdiv_f32(v21, vdup_lane_s32(v20, 0));
  *&v25 = matrix_float4x4_zRotation_and_translation(v8, vadd_f32(v23, v23), v22, v24);
  v26 = 0;
  v57 = v25;
  v58 = v27;
  v59 = v28;
  v60 = v29;
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  do
  {
    *(&v61 + v26) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v54, COERCE_FLOAT(*(&v57 + v26))), v52, *(&v57 + v26), 1), v50, *(&v57 + v26), 2), v48, *(&v57 + v26), 3);
    v26 += 16;
  }

  while (v26 != 64);
  v53 = v62;
  v55 = v61;
  v49 = v64;
  v51 = v63;
  matrix_float4x4_uniform_scale();
  v30 = 0;
  v57 = v31;
  v58 = v32;
  v59 = v33;
  v60 = v34;
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  do
  {
    *(&v61 + v30) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v55, COERCE_FLOAT(*(&v57 + v30))), v53, *(&v57 + v30), 1), v51, *(&v57 + v30), 2), v49, *(&v57 + v30), 3);
    v30 += 16;
  }

  while (v30 != 64);
  v46 = v62;
  v47 = v61;
  v44 = v64;
  v45 = v63;
  matrix_float4x4_uniform_scale();
  v35 = 0;
  v57 = v36;
  v58 = v37;
  v59 = v38;
  v60 = v39;
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  do
  {
    *(&v61 + v35) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v55, COERCE_FLOAT(*(&v57 + v35))), v53, *(&v57 + v35), 1), v51, *(&v57 + v35), 2), v49, *(&v57 + v35), 3);
    v35 += 16;
  }

  while (v35 != 64);
  v40 = v61;
  v41 = v62;
  v42 = v63;
  v43 = v64;
  *self->_anon_10 = v47;
  *&self->_anon_10[16] = v46;
  *&self->_anon_10[32] = v45;
  *&self->_anon_10[48] = v44;
  *&self->_anon_10[64] = v40;
  *&self->_anon_10[80] = v41;
  *&self->_anon_10[96] = v42;
  *&self->_anon_10[112] = v43;
}

- (void)_updateUniformsWithRing:(id)a3 inContext:(id)a4
{
  v54 = a3;
  v6 = a4;
  [v54 diameter];
  v8 = v7;
  [v54 thickness];
  v10 = v9;
  [v6 screenScale];
  v53 = v11;
  [v54 scale];
  v13 = v12;
  [v54 translation];
  v15 = v14;
  [v6 drawableSize];
  v17 = v16;
  [v54 percentage];
  v19 = v18;
  [v54 zRotation];
  v21 = v20;
  v22 = [v6 opaque];

  if (v22)
  {
    [v54 topColorPremultipliedVector];
    *&self[1].super.isa = v23;
    [v54 bottomColorPremultipliedVector];
  }

  else
  {
    [v54 topColorVector];
    *&self[1].super.isa = v25;
    [v54 bottomColorVector];
  }

  *self[1]._anon_10 = v24;
  [v54 emptyOpacity];
  *&self[1]._anon_10[80] = v26;
  [v54 trackOpacity];
  *&self[1]._anon_10[88] = v27;
  [v54 opacity];
  *&self[1]._anon_10[92] = v28;
  *&self[1]._anon_10[64] = v19;
  v29 = ARUIFloatGreater(v19, 0.5);
  v30 = v19;
  v31 = 2.0;
  if (v29)
  {
    v32 = 2.0 / ((v30 + -0.5) * 2.0 + 1.0);
    v31 = v32;
  }

  v33 = *&self[1]._anon_10[64];
  *(&v33 + 1) = (v10 * (v53 * v13)) * 0.5;
  v34 = v8 * 0.2;
  v35 = (v8 * (v53 * v13)) * 0.5 - *(&v33 + 1);
  *&v35 = v35;
  v52 = v35;
  *(&v33 + 1) = __PAIR64__(LODWORD(v31), LODWORD(v35));
  *&self[1]._anon_10[84] = v34;
  *&self[1]._anon_10[64] = v33;
  v36 = v30 * 6.28318531;
  v37 = __sincosf_stret(v36);
  *v39.i64 = matrix_float4x4_zRotation_and_translation(-v21, 0, v52, v38);
  *&self[1]._anon_10[32] = vaddq_f32(v42, vmlaq_f32(vmlsq_lane_f32(vmulq_f32(v39, 0), v40, *&v52, 0), 0, v41));
  *&self[1]._anon_10[48] = vaddq_f32(v42, vmlaq_f32(vmlaq_n_f32(vmulq_n_f32(v39, v37.__sinval * *&v52), v40, -(v37.__cosval * *&v52)), 0, v41));
  __asm { FMOV            V1.2D, #0.5 }

  *v39.f32 = vcvt_f32_f64(vaddq_f64(vmulq_f64(vcvtq_f64_f32(v17), _Q1), vcvtq_f64_f32(vmul_n_f32(v15, v53))));
  v39.i64[1] = 0x3F80000000000000;
  *&self[1]._anon_10[16] = v39;
  v48 = v21 + v30 * 6.28318531;
  v49 = __sincosf_stret(v21 + 0.0);
  v50 = __sincosf_stret(v48);
  *&v51 = __PAIR64__(LODWORD(v49.__sinval), LODWORD(v49.__cosval));
  *(&v51 + 1) = __PAIR64__(LODWORD(v50.__sinval), LODWORD(v50.__cosval));
  *&self[1]._anon_10[96] = v51;
}

- (__n128)vertexAttributes
{
  v2 = *(a1 + 96);
  *(a2 + 64) = *(a1 + 80);
  *(a2 + 80) = v2;
  v3 = *(a1 + 128);
  *(a2 + 96) = *(a1 + 112);
  *(a2 + 112) = v3;
  v4 = *(a1 + 32);
  *a2 = *(a1 + 16);
  *(a2 + 16) = v4;
  result = *(a1 + 48);
  v6 = *(a1 + 64);
  *(a2 + 32) = result;
  *(a2 + 48) = v6;
  return result;
}

- (__n128)uniforms
{
  v2 = *(a1 + 224);
  *(a2 + 64) = *(a1 + 208);
  *(a2 + 80) = v2;
  v3 = *(a1 + 256);
  *(a2 + 96) = *(a1 + 240);
  *(a2 + 112) = v3;
  v4 = *(a1 + 160);
  *a2 = *(a1 + 144);
  *(a2 + 16) = v4;
  result = *(a1 + 176);
  v6 = *(a1 + 192);
  *(a2 + 32) = result;
  *(a2 + 48) = v6;
  return result;
}

@end