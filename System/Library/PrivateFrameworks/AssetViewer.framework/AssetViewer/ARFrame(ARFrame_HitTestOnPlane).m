@interface ARFrame(ARFrame_HitTestOnPlane)
- (id)hitTestOnPlaneWithWorldTransform:()ARFrame_HitTestOnPlane forImagePoint:maxDistance:;
@end

@implementation ARFrame(ARFrame_HitTestOnPlane)

- (id)hitTestOnPlaneWithWorldTransform:()ARFrame_HitTestOnPlane forImagePoint:maxDistance:
{
  v46 = (*&_D4 * 2.0) + -1.0;
  _S0 = -2.0;
  __asm { FMLA            S1, S0, V4.S[1] }

  v42 = _S1;
  v15 = [a1 camera];
  [v15 projectionMatrix];
  v57 = __invert_f4(v56);
  v34 = v57.columns[0];
  v36 = v57.columns[1];
  v38 = v57.columns[3];
  v40 = v57.columns[2];

  v16 = vaddq_f32(v38, vmlaq_f32(vmlaq_n_f32(vmulq_n_f32(v34, v46), v36, v42), 0, v40));
  v47 = vdivq_f32(v16, vdupq_laneq_s32(v16, 3));
  v17 = [a1 camera];
  [v17 transform];
  v43 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v18, v47.f32[0]), v19, *v47.f32, 1), v20, v47, 2), v21, v47, 3);

  v22 = [a1 camera];
  [v22 transform];
  v48 = v23;

  _Q0.columns[0] = vsubq_f32(v43, v48);
  _Q0.columns[1] = vmulq_f32(_Q0.columns[0], _Q0.columns[0]);
  _Q0.columns[2].f32[0] = _Q0.columns[1].f32[2] + vaddv_f32(*_Q0.columns[1].f32);
  *_Q0.columns[1].f32 = vrsqrte_f32(_Q0.columns[2].u32[0]);
  *_Q0.columns[1].f32 = vmul_f32(*_Q0.columns[1].f32, vrsqrts_f32(_Q0.columns[2].u32[0], vmul_f32(*_Q0.columns[1].f32, *_Q0.columns[1].f32)));
  _Q0.columns[0] = vmulq_n_f32(_Q0.columns[0], vmul_f32(*_Q0.columns[1].f32, vrsqrts_f32(_Q0.columns[2].u32[0], vmul_f32(*_Q0.columns[1].f32, *_Q0.columns[1].f32))).f32[0]);
  _Q0.columns[1] = vmulq_f32(a3, _Q0.columns[0]);
  _Q0.columns[1].f32[0] = _Q0.columns[1].f32[2] + vaddv_f32(*_Q0.columns[1].f32);
  if (_Q0.columns[1].f32[0] <= -0.00000011921 && ((_Q0.columns[3] = a5, _Q0.columns[2] = vmulq_f32(a3, vsubq_f32(a5, v48)), _S5 = (_Q0.columns[2].f32[2] + vaddv_f32(*_Q0.columns[2].f32)) / _Q0.columns[1].f32[0], _S5 >= 0.0) ? (v26 = _S5 <= a7) : (v26 = 0), v26))
  {
    *&v28 = vmla_n_f32(*v48.f32, *_Q0.columns[0].f32, _S5);
    v44 = _S5;
    __asm { FMLA            S1, S5, V0.S[2] }

    *(&v28 + 1) = __PAIR64__(vextq_s8(*&a5, *&a5, 8uLL).u32[1], _Q0.columns[1].u32[0]);
    v49 = v28;
    _Q0.columns[0] = a2;
    _Q0.columns[2] = a4;
    _Q0.columns[1] = a3;
    v58 = __invert_f4(_Q0);
    v29 = 0;
    v50[0] = a2;
    v50[1] = a3;
    v50[2] = a4;
    v50[3] = v49;
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    do
    {
      *(&v51 + v29 * 16) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v58.columns[0], COERCE_FLOAT(v50[v29])), v58.columns[1], *&v50[v29], 1), v58.columns[2], v50[v29], 2), v58.columns[3], v50[v29], 3);
      ++v29;
    }

    while (v29 != 4);
    v39 = *&v53;
    v41 = *&v54;
    v35 = *&v51;
    v37 = *&v52;
    v27 = [objc_alloc(MEMORY[0x277CE52C0]) initWithType:2];
    [v27 setAnchor:0];
    [v27 setDistance:v44];
    [v27 setWorldTransform:{*a2.i64, *a3.i64, *a4.i64, *&v49}];
    [v27 setLocalTransform:{v35, v37, v39, v41}];
  }

  else
  {
    v27 = 0;
  }

  return v27;
}

@end