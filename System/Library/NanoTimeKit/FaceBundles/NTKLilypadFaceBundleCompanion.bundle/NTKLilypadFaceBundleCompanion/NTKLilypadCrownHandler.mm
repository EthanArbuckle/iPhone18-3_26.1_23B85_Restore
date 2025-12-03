@interface NTKLilypadCrownHandler
- (NTKLilypadCrownHandler)init;
- (float)amplitudeForThread:(int)thread atTime:(double)time;
- (void)pluckThread:(int)thread withAmplitude:(float)amplitude atTime:(double)time;
- (void)reset;
@end

@implementation NTKLilypadCrownHandler

- (NTKLilypadCrownHandler)init
{
  v5.receiver = self;
  v5.super_class = NTKLilypadCrownHandler;
  v2 = [(NTKLilypadCrownHandler *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(NTKLilypadCrownHandler *)v2 reset];
  }

  return v3;
}

- (void)reset
{
  v2 = 16;
  v3 = vdupq_n_s64(0xFFEFFFFFFFFFFFFFLL);
  do
  {
    *&self->pluckTimes[48] = v3;
    self = (self + 64);
    *&self[-1].pluckAmplitudes[992] = v3;
    *&self[-1].pluckAmplitudes[1008] = v3;
    *&self[-1].pluckAmplitudes[976] = v3;
    *&self->pluckTimes[992] = 0uLL;
    *&self->pluckTimes[1008] = 0uLL;
    *&self->pluckTimes[960] = 0uLL;
    *&self->pluckTimes[976] = 0uLL;
    --v2;
  }

  while (v2);
}

- (void)pluckThread:(int)thread withAmplitude:(float)amplitude atTime:(double)time
{
  dispatch_assert_queue_V2(&_dispatch_main_q);
  if (thread <= 0xF)
  {
    v8 = &self->pluckTimes[64 * thread];
    if (time - *v8 > 1.5)
    {
      v10 = *(v8 + 2);
      v9 = *(v8 + 3);
      v11 = *(v8 + 1);
      v12 = vextq_s8(v10, v9, 8uLL);
      v9.i64[0] = vdupq_laneq_s64(v9, 1).u64[0];
      *&v9.i64[1] = time;
      *v8 = vextq_s8(*v8, v11, 8uLL);
      *(v8 + 1) = vextq_s8(v11, v10, 8uLL);
      *(v8 + 2) = v12;
      *(v8 + 3) = v9;
      v13 = (self + 64 * thread);
      v14 = v13[68];
      v15 = v13[67];
      v16 = v13[66];
      v17 = vextq_s8(v16, v15, 8uLL);
      v18 = vextq_s8(v13[65], v16, 8uLL);
      v19 = vextq_s8(v15, v14, 8uLL);
      v14.i64[0] = vdupq_laneq_s64(v14, 1).u64[0];
      *&v14.i64[1] = amplitude;
      v13[67] = v19;
      v13[65] = v18;
      v13[66] = v17;
      v13[68] = v14;
    }
  }
}

- (float)amplitudeForThread:(int)thread atTime:(double)time
{
  dispatch_assert_queue_V2(&_dispatch_main_q);
  result = 0.0;
  if (thread <= 0xF)
  {
    v7 = vdupq_lane_s64(*&time, 0);
    v8 = (self + 64 * thread);
    v9 = vsubq_f64(v7, v8[4]);
    v10 = vsubq_f64(v7, v8[3]);
    v11 = vsubq_f64(v7, v8[2]);
    v12 = vsubq_f64(v7, v8[1]);
    v13 = vdupq_n_s64(0xBFC3333333333333);
    v14 = vaddq_f64(v12, v13);
    v15 = vaddq_f64(v11, v13);
    v16 = vaddq_f64(v10, v13);
    v17 = vaddq_f64(v9, v13);
    v18 = vdupq_n_s64(0x3FC3333333333333uLL);
    v19 = vcgtq_f64(v18, v9);
    v20 = vcgtq_f64(v18, v10);
    v21 = vcgtq_f64(v18, v11);
    v22 = vcgtq_f64(v18, v12);
    v23 = vdupq_n_s64(0x4072C00000000000uLL);
    __asm { FMOV            V17.2D, #1.5 }

    v33 = vmulq_f64(vmulq_f64(v17, vnegq_f64(v17)), vbslq_s8(v19, v23, _Q17));
    v29 = vmulq_f64(vmulq_f64(v16, vnegq_f64(v16)), vbslq_s8(v20, v23, _Q17));
    x = vmulq_f64(vmulq_f64(v15, vnegq_f64(v15)), vbslq_s8(v21, v23, _Q17));
    v35 = _simd_exp_d2(vmulq_f64(vmulq_f64(v14, vnegq_f64(v14)), vbslq_s8(v22, v23, _Q17)));
    xa = _simd_exp_d2(x);
    v30 = _simd_exp_d2(v29);
    return vaddvq_f64(vaddq_f64(vaddq_f64(vmulq_f64(v8[65], v35), vmulq_f64(v8[67], v30)), vaddq_f64(vmulq_f64(v8[66], xa), vmulq_f64(v8[68], _simd_exp_d2(v33)))));
  }

  return result;
}

@end