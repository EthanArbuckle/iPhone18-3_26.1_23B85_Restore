id sub_2FB8(float32x2_t *a1)
{
  [*&a1[4] convertPointFromView:{vmulq_f64(vcvtq_f64_f32(a1[5]), xmmword_8140)}];
  v2 = a1[4];
  v3 = a1[6].f32[0] * a1[6].f32[1];

  return [v2 launchFireworkAt:1 type:0 scale:? color:?];
}

id sub_301C(float32x2_t *a1)
{
  [*&a1[4] convertPointFromView:{vmulq_f64(vcvtq_f64_f32(a1[5]), xmmword_8150)}];
  v2 = a1[4];
  v3 = a1[6].f32[0] * a1[6].f32[1];

  return [v2 launchFireworkAt:2 type:1 scale:? color:?];
}

id sub_3080(float32x2_t *a1)
{
  [*&a1[4] convertPointFromView:{vmulq_f64(vcvtq_f64_f32(a1[5]), xmmword_8160)}];
  v2 = a1[4];
  v3 = a1[6].f32[0] * a1[6].f32[1];

  return [v2 launchFireworkAt:2 type:3 scale:? color:?];
}

id sub_30E4(float32x2_t *a1)
{
  [*&a1[4] convertPointFromView:{vmulq_f64(vcvtq_f64_f32(a1[5]), xmmword_8170)}];
  v2 = a1[4];
  v3 = (a1[6].f32[0] * a1[6].f32[1]) * 0.9;

  return [v2 launchFireworkAt:2 type:2 scale:? color:?];
}

id sub_315C(float32x2_t *a1)
{
  [*&a1[4] convertPointFromView:{vmulq_f64(vcvtq_f64_f32(a1[5]), xmmword_8180)}];
  v2 = a1[4];
  v3 = a1[6].f32[0] * a1[6].f32[1];

  return [v2 launchFireworkAt:2 type:1 scale:? color:?];
}

id sub_31C0(float32x2_t *a1)
{
  [*&a1[4] convertPointFromView:{vmulq_f64(vcvtq_f64_f32(a1[5]), xmmword_8190)}];
  v2 = a1[4];
  v3 = a1[6].f32[0] * a1[6].f32[1];

  return [v2 launchFireworkAt:1 type:0 scale:? color:?];
}

void sub_3224(id *a1, double a2)
{
  v3 = a2 / 0.819999993;
  [a1[4] red];
  v5 = v4;
  v6 = v3;
  [a1[5] red];
  v8 = v7;
  [a1[4] red];
  v10 = v5 + v6 * (v8 - v9);
  [a1[4] green];
  v12 = v11;
  [a1[5] green];
  v14 = v13;
  [a1[4] green];
  v16 = v12 + v6 * (v14 - v15);
  [a1[4] blue];
  v18 = v17;
  [a1[5] blue];
  v20 = v19;
  [a1[4] blue];
  v22 = v18 + v6 * (v20 - v21);
  [a1[4] alpha];
  v24 = v23;
  [a1[5] alpha];
  v26 = v25;
  [a1[4] alpha];
  v28 = v24 + v6 * (v26 - v27);
  v30 = [UIColor colorWithRed:v10 * 255.0 / 255.0 green:v16 * 255.0 / 255.0 blue:v22 * 255.0 / 255.0 alpha:v28];
  v29 = [a1[6] scene];
  [v29 setBackgroundColor:v30];
}

void sub_339C(id *a1, double a2)
{
  v3 = a2 / 1.73000002;
  [a1[4] red];
  v5 = v4;
  v6 = v3;
  [a1[5] red];
  v8 = v7;
  [a1[4] red];
  v10 = v5 + v6 * (v8 - v9);
  [a1[4] green];
  v12 = v11;
  [a1[5] green];
  v14 = v13;
  [a1[4] green];
  v16 = v12 + v6 * (v14 - v15);
  [a1[4] blue];
  v18 = v17;
  [a1[5] blue];
  v20 = v19;
  [a1[4] blue];
  v22 = v18 + v6 * (v20 - v21);
  [a1[4] alpha];
  v24 = v23;
  [a1[5] alpha];
  v26 = v25;
  [a1[4] alpha];
  v28 = v24 + v6 * (v26 - v27);
  v30 = [UIColor colorWithRed:v10 * 255.0 / 255.0 green:v16 * 255.0 / 255.0 blue:v22 * 255.0 / 255.0 alpha:v28];
  v29 = [a1[6] scene];
  [v29 setBackgroundColor:v30];
}

void sub_4080(uint64_t a1)
{
  v1 = [*(a1 + 32) children];
  [v1 enumerateObjectsUsingBlock:&stru_C2B8];
}

id sub_4720(uint64_t a1, double a2)
{
  v3 = a2 / 1.10000002;
  v4 = (*(a1 + 48) + ((v3 * v3) * (*(a1 + 52) - *(a1 + 48))));
  [*(a1 + 32) setParticleScale:v4];
  [*(a1 + 32) particleScale];
  [*(a1 + 32) setParticleScaleRange:v5 * 3.5];
  [*(a1 + 40) setParticleScale:v4];
  [*(a1 + 40) particleScale];
  [*(a1 + 40) setParticleScaleRange:v6 * 3.5];
  *&v4 = ((1.0 - powf(1.0 - v3, 4.0)) * 1.4) + 0.0;
  [*(a1 + 32) setEmissionDistance:(*&v4 * *(a1 + 56))];
  [*(a1 + 32) emissionDistance];
  [*(a1 + 32) setEmissionDistanceRange:v7 * 0.25];
  [*(a1 + 40) setEmissionDistance:(*&v4 * *(a1 + 56)) * 0.5];
  [*(a1 + 40) emissionDistance];
  [*(a1 + 40) setEmissionDistanceRange:v8 + v8];
  v9 = (*&v4 * *(a1 + 60));
  v10 = *(a1 + 32);

  return [v10 setParticleBirthRate:v9];
}

id sub_4858(uint64_t a1)
{
  [*(a1 + 32) setParticleBirthRate:0.0];
  v2 = *(a1 + 40);

  return [v2 setParticleBirthRate:0.0];
}

void sub_54A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, char a48)
{
  _Block_object_dispose(&a48, 8);
  _Block_object_dispose((v48 - 248), 8);
  _Unwind_Resume(a1);
}

void sub_54D4(uint64_t a1)
{
  if ((*(*(*(a1 + 40) + 8) + 24) & 1) == 0)
  {
    v2 = [*(a1 + 32) physicsBody];
    [v2 applyImpulse:{*(a1 + 48) * *(a1 + 64), *(a1 + 56) * *(a1 + 64)}];

    *(*(*(a1 + 40) + 8) + 24) = 1;
  }
}

void sub_5544(uint64_t a1, void *a2, double a3)
{
  v18 = a2;
  v5 = *(a1 + 56);
  v6 = a3 / v5;
  if (a3 >= 0.100000001)
  {
    v9 = fmin((a3 + -0.100000001) / (v5 + -0.1) * 1.2, 1.0);
    v8 = *(a1 + 60) + ((v9 * v9) * (*(a1 + 64) - *(a1 + 60)));
  }

  else
  {
    v7 = fmin(a3 / 0.100000001 * 1.2, 1.0);
    v8 = ((v7 * v7) * (*(a1 + 60) + -0.01)) + 0.01;
  }

  [*(a1 + 32) setParticleScale:v8];
  [*(a1 + 32) setParticleBirthRate:(*(a1 + 68) + (v6 * (*(a1 + 72) - *(a1 + 68))))];
  if (v6 >= 0.6)
  {
    if (v6 >= 0.61 && (*(*(*(a1 + 48) + 8) + 24) & 1) != 0)
    {
      v10 = [*(a1 + 40) physicsBody];
      [v10 setFieldBitMask:4];

      *(*(*(a1 + 48) + 8) + 24) = 0;
    }

    v11 = [*(a1 + 40) physicsBody];
    [v11 velocity];
    v13 = v12 * 0.92;
    v14 = [*(a1 + 40) physicsBody];
    [v14 velocity];
    v16 = v15 * 0.92;
    v17 = [*(a1 + 40) physicsBody];
    [v17 setVelocity:{v13, v16}];
  }
}

void sub_6050(uint64_t a1)
{
  v1 = *(a1 + 32);
  v4 = [NSBundle bundleForClass:objc_opt_class()];
  v2 = [v4 URLForResource:@"FireworksSoundEffect" withExtension:@"m4r"];
  v3 = qword_111D8;
  qword_111D8 = v2;
}

__float2 __sincosf_stret(float a1)
{
  v3 = ___sincosf_stret(a1);
  cosval = v3.__cosval;
  sinval = v3.__sinval;
  result.__cosval = cosval;
  result.__sinval = sinval;
  return result;
}