@interface ARCoachingInstanceTransform
- (ARCoachingInstanceTransform)init:(__n128)a3;
- (__n128)transform;
- (void)doTransform;
@end

@implementation ARCoachingInstanceTransform

- (__n128)transform
{
  result = *(a1 + 80);
  v2 = *(a1 + 96);
  v3 = *(a1 + 112);
  v4 = *(a1 + 128);
  return result;
}

- (ARCoachingInstanceTransform)init:(__n128)a3
{
  v17.receiver = a1;
  v17.super_class = ARCoachingInstanceTransform;
  v5 = [(ARCoachingInstanceTransform *)&v17 init];
  v6 = v5;
  if (v5)
  {
    *v5->_anon_10 = a2;
    *&v5->_anon_10[16] = a3;
    *&v5->_anon_10[32] = a4;
    *&v5->_anon_10[48] = a5;
    *v5->_anon_50 = a2;
    *&v5->_anon_50[16] = a3;
    *&v5->_anon_50[32] = a4;
    *&v5->_anon_50[48] = a5;
    *v5->_localScale = 0u;
    *v5->_localTranslation = 0u;
    __asm { FMOV            V0.4S, #1.0 }

    [(ARCoachingInstanceTransform *)v5 setRecordedScale:*&_Q0];
    [(ARCoachingInstanceTransform *)v6 setRecordedTranslation:0.0];
  }

  return v6;
}

- (void)doTransform
{
  [(ARCoachingInstanceTransform *)self localScale];
  [ARCoachingTransformations scale:?];
  v21 = v4;
  v22 = v3;
  v19 = v6;
  v20 = v5;
  [(ARCoachingInstanceTransform *)self localTranslation];
  [ARCoachingTransformations translate:?];
  v11 = 0;
  v12 = *&self->_anon_10[16];
  v13 = *&self->_anon_10[32];
  v14 = *&self->_anon_10[48];
  v23 = *self->_anon_10;
  v24 = v12;
  v25 = v13;
  v26 = v14;
  do
  {
    *(&v27 + v11) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v7, COERCE_FLOAT(*(&v23 + v11))), v8, *(&v23 + v11), 1), v9, *(&v23 + v11), 2), v10, *(&v23 + v11), 3);
    v11 += 16;
  }

  while (v11 != 64);
  v15 = 0;
  v23 = v27;
  v24 = v28;
  v25 = v29;
  v26 = v30;
  do
  {
    *(&v27 + v15) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v22, COERCE_FLOAT(*(&v23 + v15))), v21, *(&v23 + v15), 1), v20, *(&v23 + v15), 2), v19, *(&v23 + v15), 3);
    v15 += 16;
  }

  while (v15 != 64);
  v16 = v28;
  v17 = v29;
  v18 = v30;
  *self->_anon_50 = v27;
  *&self->_anon_50[16] = v16;
  *&self->_anon_50[32] = v17;
  *&self->_anon_50[48] = v18;
}

@end