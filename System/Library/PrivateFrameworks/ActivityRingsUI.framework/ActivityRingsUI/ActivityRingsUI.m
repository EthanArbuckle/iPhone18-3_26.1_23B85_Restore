void sub_1CFD693A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  if (v15)
  {
    objc_destroyWeak(v14);
  }

  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id arui_rings_log()
{
  if (arui_rings_log_onceToken != -1)
  {
    arui_rings_log_cold_1();
  }

  v1 = arui_rings_log___logger;

  return v1;
}

uint64_t sub_1CFD6A58C()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1CFD6A5D0()
{
  if (*(v0 + 32) != 1)
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1CFD6A614()
{
  if (*(v0 + 48) != 1)
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1CFD6A6A0()
{
  if (*(v0 + 56) != 1)
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1CFD6A6E0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC508A78);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CFD6A750(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC508A78);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1CFD6A80C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1CFD8D03C();
  *a1 = result;
  return result;
}

uint64_t sub_1CFD6A864()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC508C78);
  sub_1CFD8C21C();
  return swift_getOpaqueTypeConformance2();
}

id ActivityRingsUIFrameworkBundle()
{
  v0 = ActivityRingsUIFrameworkBundle___ARUIClassBundle;
  if (!ActivityRingsUIFrameworkBundle___ARUIClassBundle)
  {
    v1 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v2 = ActivityRingsUIFrameworkBundle___ARUIClassBundle;
    ActivityRingsUIFrameworkBundle___ARUIClassBundle = v1;

    v0 = ActivityRingsUIFrameworkBundle___ARUIClassBundle;
  }

  return v0;
}

void sub_1CFD6DF1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1CFD6E0A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1CFD6E3D0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_1CFD6E5B4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_1CFD6E798(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_1CFD6E97C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_1CFD6EB68(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_1CFD6ED4C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_1CFD6EF38(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_1CFD6F188(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1CFD6F43C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1CFD6F644(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1CFD6F830(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1CFD6FA1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1CFD6FC08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1CFD70074(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location)
{
  objc_destroyWeak((v22 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1CFD70310(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1CFD7045C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1CFD70880(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1CFD737B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1CFD73ABC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 64));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_1CFD73C04(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v1 + 32));
  _Unwind_Resume(a1);
}

void sub_1CFD73E28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1CFD74024(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

uint64_t OUTLINED_FUNCTION_1_0()
{

  return objc_opt_class();
}

double clamp(double result, double a2, double a3)
{
  if (a3 >= result)
  {
    result = a3;
  }

  if (result > a2)
  {
    return a2;
  }

  return result;
}

float32x2_t ARUIFloat2Saturate(float32x2_t a1)
{
  __asm { FMOV            V1.2S, #1.0 }

  return vmaxnm_f32(vminnm_f32(a1, _D1), 0);
}

float ARUIPercent(float a1, float a2, float a3)
{
  result = 1.0;
  if (vabds_f32(a2, a3) >= 0.0001)
  {
    return (a1 - a2) / (a3 - a2);
  }

  return result;
}

float32x2_t ARUIRandomFloat2(double a1, float a2)
{
  v7 = a2 - *&a1;
  v2 = arc4random();
  v3 = arc4random();
  v4.i32[0] = v2 & 0x7FFFFFFF;
  v4.i32[1] = v3 & 0x7FFFFFFF;
  return vmla_n_f32(vdup_lane_s32(*&a1, 0), vmul_f32(vcvt_f32_u32(v4), 0x3000000030000000), v7);
}

double ARUIScreenBlend(float32x4_t a1, float32x4_t a2)
{
  __asm { FMOV            V2.4S, #1.0 }

  *&result = vmlsq_f32(_Q2, vsubq_f32(_Q2, a2), vsubq_f32(_Q2, a1)).u64[0];
  return result;
}

double matrix_float4x4_rotation(float32x4_t a1, float a2)
{
  v2 = __sincosf_stret(a2);
  v3 = *a1.f32;
  _S5 = a1.u32[1];
  v5 = vmuls_lane_f32(v3.f32[0], v3, 1);
  _S16 = a1.u32[2];
  _Q21 = a1;
  v3.f32[0] = (v2.__cosval * (1.0 - (v3.f32[0] * v3.f32[0]))) + (v3.f32[0] * v3.f32[0]);
  v3.f32[1] = -(vmuls_lane_f32(v2.__sinval, a1, 2) - (v5 * (1.0 - v2.__cosval)));
  __asm
  {
    FMLS            S6, S5, V21.S[1]
    FMLA            S6, S5, V21.S[1]
    FMLS            S3, S16, V21.S[2]
    FMLA            S1, S16, V21.S[2]
  }

  return *&v3;
}

double matrix_float4x4_zRotation_and_translation(float a1, float32x2_t a2, double a3, float32x4_t a4)
{
  v7 = vcgt_f32(vdup_n_s32(0x38D1B717u), vabs_f32(a2));
  if (vand_s8(v7, vdup_lane_s32(v7, 1)).u8[0])
  {
    v8 = *MEMORY[0x1E69E9B18];
    v9 = *(MEMORY[0x1E69E9B18] + 16);
    v10 = *(MEMORY[0x1E69E9B18] + 32);
    a4 = *(MEMORY[0x1E69E9B18] + 48);
  }

  else
  {
    *a4.f32 = a2;
    a4.i32[3] = 1.0;
    v10 = xmmword_1CFD90F90;
    v8 = xmmword_1CFD90FA0;
    v9 = xmmword_1CFD90F80;
  }

  if (fabsf(a1) >= 0.0001)
  {
    v22[8] = v4;
    v22[9] = v5;
    v19 = v8;
    v20 = a4;
    v17 = v9;
    v18 = v10;
    *&v11 = matrix_float4x4_rotation(xmmword_1CFD90F90, a1);
    v12 = 0;
    v21[0] = v11;
    v21[1] = v13;
    v21[2] = v14;
    v21[3] = v15;
    memset(v22, 0, 64);
    do
    {
      *&v22[v12 / 8] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v19, COERCE_FLOAT(v21[v12 / 0x10])), v17, *&v21[v12 / 0x10], 1), v18, v21[v12 / 0x10], 2), v20, v21[v12 / 0x10], 3);
      v12 += 16;
    }

    while (v12 != 64);
    *&v8 = v22[0];
  }

  return *&v8;
}

id __ARUIColorForCurrentContrastMode_block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 accessibilityContrast];
  v4 = 40;
  if (v3 == 1)
  {
    v4 = 32;
  }

  v5 = *(a1 + v4);

  return v5;
}

void sub_1CFD7FB04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __arui_rings_log_block_invoke()
{
  v0 = os_log_create("com.apple.ActivityRingsUI", "rings");
  v1 = arui_rings_log___logger;
  arui_rings_log___logger = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

void sub_1CFD833C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id SparksCelebration.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SparksCelebration.init()()
{
  *&v0[OBJC_IVAR____TtC15ActivityRingsUI17SparksCelebration_duration] = 0x4014000000000000;
  type metadata accessor for Sparks();
  *&v0[OBJC_IVAR____TtC15ActivityRingsUI17SparksCelebration_scene] = sub_1CFD8865C();
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SparksCelebration();
  return objc_msgSendSuper2(&v2, sel_init);
}

uint64_t sub_1CFD837B0(void *a1, id a2)
{
  v5 = *(v2 + OBJC_IVAR____TtC15ActivityRingsUI17SparksCelebration_scene);
  [a2 screenScale];
  v29 = v6;
  [a1 translation];
  v28 = v7;
  [a2 drawableSize];
  v27 = v8;
  [a2 screenScale];
  v25 = v9;
  [a1 translation];
  v26 = v10;
  [a2 drawableSize];
  v12 = vdiv_f32(vmul_f32(vmul_f32(__PAIR64__(v25, v29), COERCE_FLOAT32X2_T(-2.00000048)), __PAIR64__(v26, v28)), __PAIR64__(v11, v27));
  [a1 scale];
  v14 = v13;
  [a2 screenScale];
  v16 = v14 * v15;
  [a1 diameter];
  v18 = v16 * v17;
  [a2 drawableSize];
  v20 = 1.25 / (v18 / v19);
  v21 = swift_allocObject();
  *(v21 + 16) = v5;
  *(v21 + 24) = v20;
  *(v21 + 32) = v12;
  *(v21 + 40) = a1;
  v22 = v5;
  v23 = a1;
  sub_1CFD8CF7C();
}

uint64_t sub_1CFD83950(double a1, double a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC508A00);
  sub_1CFD8CF2C();
  sub_1CFD8CFBC();
  if (!v16.i64[1])
  {
    sub_1CFD84264(&v15);
    goto LABEL_8;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_8:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC508A10);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_1CFD912F0;
    *(v7 + 56) = MEMORY[0x1E69E6158];
    *(v7 + 32) = 0xD000000000000029;
    *(v7 + 40) = 0x80000001CFD92C70;
    goto LABEL_11;
  }

  sub_1CFD8CF8C();
  if (v20)
  {
    type metadata accessor for simd_float4x4();
    if (swift_dynamicCast())
    {
      sub_1CFD8CF8C();
      if (swift_dynamicCast())
      {
        v21.columns[0] = v15;
        v21.columns[1] = v16;
        v21.columns[2] = v17;
        v21.columns[3] = v18;
        v22 = __invert_f4(v21);
        v10 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v15, v22.columns[0].f32[0]), v16, *v22.columns[0].f32, 1), v17, v22.columns[0], 2), v18, v22.columns[0], 3);
        v22.columns[1] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v15, v22.columns[1].f32[0]), v16, *v22.columns[1].f32, 1), v17, v22.columns[1], 2), v18, v22.columns[1], 3);
        v11 = v22.columns[1];
        v22.columns[2] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v15, v22.columns[2].f32[0]), v16, *v22.columns[2].f32, 1), v17, v22.columns[2], 2), v18, v22.columns[2], 3);
        v12 = v22.columns[2];
        v13 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v15, v22.columns[3].f32[0]), v16, *v22.columns[3].f32, 1), v17, v22.columns[3], 2), v18, v22.columns[3], 3);
        v22.columns[0] = v10;
        v22.columns[3] = v13;
        v23 = __invert_f4(v22);
        v2 = vaddq_f32(v13, vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v10, v19.f32[0]), v11, *v19.f32, 1), v12, v19, 2));
        v23.columns[0] = vaddq_f32(v23.columns[3], vmlaq_n_f32(vmlaq_lane_f32(vmulq_n_f32(v23.columns[0], *&a2), v23.columns[1], *&a2, 1), v23.columns[2], v2.f32[2] / v2.f32[3]));
        v23.columns[2].i64[0] = vdivq_f32(v23.columns[0], vdupq_laneq_s32(v23.columns[0], 3)).u64[0];
        v23.columns[2].f32[2] = v23.columns[0].f32[2] / v23.columns[0].f32[3];
        v23.columns[2].i32[3] = v23.columns[0].i32[3];
        v15 = v23.columns[2];
        MEMORY[0x1EEE9AC00](v3);
        sub_1CFD8CF2C();
        v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC508A18);
        MEMORY[0x1EEE9AC00](v4);
        v5 = sub_1CFD8CF2C();
        MEMORY[0x1EEE9AC00](v5);
        sub_1CFD8CF2C();
        sub_1CFD8CF2C();
        sub_1CFD8CF2C();
        sub_1CFD8CF2C();
        sub_1CFD8CF2C();
        return sub_1CFD8CF2C();
      }
    }
  }

  else
  {
    sub_1CFD84264(&v19);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC508A10);
  v8 = swift_allocObject();
  v9 = MEMORY[0x1E69E6158];
  *(v8 + 16) = xmmword_1CFD912F0;
  *(v8 + 56) = v9;
  *(v8 + 32) = 0x72656D6163206F4ELL;
  *(v8 + 40) = 0xE900000000000061;
LABEL_11:
  sub_1CFD8D30C();
}

id SparksCelebration.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SparksCelebration();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

float sub_1CFD84250(_OWORD *a1)
{
  *&v2 = 0;
  *(&v2 + 1) = *(v1 + 16);
  *a1 = v2;
  return *&v2;
}

uint64_t sub_1CFD84264(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC508A08);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void type metadata accessor for simd_float4x4()
{
  if (!qword_1EC508A20)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_1EC508A20);
    }
  }
}

float sub_1CFD8431C(uint64_t a1)
{
  v2 = **(v1 + 16);
  *(&v2 + 1) = *(a1 + 8);
  *a1 = v2;
  return *&v2;
}

id sub_1CFD84378(_OWORD *a1, SEL *a2)
{
  v5 = *(v2 + 16);
  [v5 *a2];
  v14 = v6;
  [v5 *a2];
  v13 = v7;
  [v5 *a2];
  v12 = v8;
  result = [v5 *a2];
  *&v10 = __PAIR64__(v13, v14);
  *(&v10 + 1) = __PAIR64__(v11, v12);
  *a1 = v10;
  return result;
}

__n128 __swift_memcpy64_16(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1CFD84424(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 64))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1CFD84444(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 64) = v3;
  return result;
}

uint64_t get_enum_tag_for_layout_string_15ActivityRingsUI0aB13RenderingModeO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1CFD844B0(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 8))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  if ((v4 + 1) >= 2)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1CFD8450C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void *sub_1CFD8456C(void *result, unsigned int a2)
{
  if (a2 > 0x7FFFFFFE)
  {
    a2 -= 0x7FFFFFFF;
    goto LABEL_5;
  }

  if (a2)
  {
LABEL_5:
    *result = a2;
  }

  return result;
}

__n128 ActivityRingsSwiftUIView.kind.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = v1[1].n128_u64[0];
  v3 = v1[1].n128_u8[8];
  result = *v1;
  *a1 = *v1;
  a1[1].n128_u64[0] = v2;
  a1[1].n128_u8[8] = v3;
  return result;
}

__n128 ActivityRingsSwiftUIView.kind.setter(__n128 *a1)
{
  v2 = a1[1].n128_u64[0];
  v3 = a1[1].n128_u8[8];
  result = *a1;
  *v1 = *a1;
  v1[1].n128_u64[0] = v2;
  v1[1].n128_u8[8] = v3;
  return result;
}

uint64_t ActivityRingsSwiftUIView.renderingMode.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 32);
  *a1 = v2;
  return sub_1CFD846D8(v2);
}

uint64_t sub_1CFD846D8(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t ActivityRingsSwiftUIView.renderingMode.setter(uint64_t *a1)
{
  v2 = *a1;
  result = sub_1CFD84714(*(v1 + 32));
  *(v1 + 32) = v2;
  return result;
}

uint64_t sub_1CFD84714(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

__n128 ActivityRingsSwiftUIView.init(kind:isPlaceholder:isPaused:shouldShowSprites:isWheelchairUser:renderingMode:)@<Q0>(__n128 *a1@<X0>, unsigned __int8 a2@<W1>, unsigned __int8 a3@<W2>, unsigned __int8 a4@<W3>, unsigned __int8 a5@<W4>, unint64_t *a6@<X5>, __n128 *a7@<X8>)
{
  v7 = a1[1].n128_u64[0];
  v8 = a1[1].n128_u8[8];
  v9 = *a6;
  result = *a1;
  *a7 = *a1;
  a7[1].n128_u64[0] = v7;
  a7[1].n128_u8[8] = v8;
  a7[1].n128_u8[9] = a2;
  a7[1].n128_u8[10] = a3;
  a7[1].n128_u8[11] = a4;
  a7[1].n128_u8[12] = a5;
  a7[2].n128_u64[0] = v9;
  return result;
}

double ActivityRingsSwiftUIView.body.getter@<D0>(uint64_t a1@<X8>)
{
  sub_1CFD846D8(*(v1 + 32));
  sub_1CFD84888();
  sub_1CFD848DC();
  sub_1CFD8D06C();
  result = *&v4;
  *a1 = v4;
  *(a1 + 16) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = v7;
  return result;
}

unint64_t sub_1CFD84888()
{
  result = qword_1EC508A28;
  if (!qword_1EC508A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC508A28);
  }

  return result;
}

unint64_t sub_1CFD848DC()
{
  result = qword_1EC508A30;
  if (!qword_1EC508A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC508A30);
  }

  return result;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1CFD8496C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFFD && *(a1 + 40))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 32);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v5 = -1;
  }

  else
  {
    v5 = v4;
  }

  v6 = v5 - 1;
  if (v4 < 1)
  {
    v7 = -1;
  }

  else
  {
    v7 = v6;
  }

  return (v7 + 1);
}

uint64_t sub_1CFD849D4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 2147483646;
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2 + 1;
    }
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for ActivityRingsSwiftUIView.Kind(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;

  return v2 + 16;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for ActivityRingsSwiftUIView.Kind(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 25))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 24);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for ActivityRingsSwiftUIView.Kind(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

unint64_t sub_1CFD84B34()
{
  result = qword_1EC508A38;
  if (!qword_1EC508A38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC508A40);
    sub_1CFD84888();
    sub_1CFD848DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC508A38);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_1CFD84C1C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFFD && *(a1 + 24))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 16);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v5 = -1;
  }

  else
  {
    v5 = v4;
  }

  v6 = v5 - 1;
  if (v4 < 1)
  {
    v7 = -1;
  }

  else
  {
    v7 = v6;
  }

  return (v7 + 1);
}

uint64_t sub_1CFD84C84(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 2147483646;
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 1;
    }
  }

  return result;
}

double sub_1CFD84D00@<D0>(unsigned int a1@<W1>, uint64_t a2@<X2>, uint64_t a3@<X8>, double a4@<D0>)
{
  sub_1CFD8D01C();
  v9 = v8;
  sub_1CFD8D01C();
  if (v10 < v9)
  {
    v9 = v10;
  }

  [objc_opt_self() preferredActivityRingThicknessForDiameter:1 isStandaloneRing:v9];
  v12 = v11;
  if ((a1 & 0x100) != 0)
  {
    v13 = 4;
  }

  else
  {
    v13 = 3;
  }

  sub_1CFD846D8(a2);
  sub_1CFD8D22C();
  sub_1CFD8D00C();
  *a3 = v13;
  *(a3 + 8) = v9;
  *(a3 + 16) = v12;
  *(a3 + 24) = a4;
  *(a3 + 32) = ~(a1 >> 14) & 4;
  *(a3 + 33) = a1 & 1;
  *(a3 + 40) = a2;
  *(a3 + 48) = v15;
  *(a3 + 64) = v16;
  result = *&v17;
  *(a3 + 80) = v17;
  return result;
}

uint64_t sub_1CFD84E00@<X0>(double (**a1)@<D0>(uint64_t a1@<X8>)@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = *(v1 + 9);
  v6 = *(v1 + 10);
  v7 = v1[2];
  v8 = swift_allocObject();
  *(v8 + 16) = v3;
  *(v8 + 24) = v4;
  *(v8 + 25) = v5;
  *(v8 + 26) = v6;
  *(v8 + 32) = v7;
  *a1 = sub_1CFD84E9C;
  a1[1] = v8;

  return sub_1CFD846D8(v7);
}

double sub_1CFD84E9C@<D0>(uint64_t a1@<X8>)
{
  if (*(v1 + 25))
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  v3 = v2 | *(v1 + 24);
  if (*(v1 + 26))
  {
    v4 = 0x10000;
  }

  else
  {
    v4 = 0;
  }

  return sub_1CFD84D00(v3 | v4, *(v1 + 32), a1, *(v1 + 16));
}

unint64_t sub_1CFD84ED4()
{
  result = qword_1EC508A48;
  if (!qword_1EC508A48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC508A50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC508A48);
  }

  return result;
}

void *sub_1CFD84F64@<X0>(uint64_t a1@<X1>, void *a2@<X8>)
{
  sub_1CFD8D01C();
  v5 = v4;
  sub_1CFD8D01C();
  if (v6 < v5)
  {
    v5 = v6;
  }

  v7 = objc_opt_self();
  [v7 preferredActivityRingThicknessForDiameter_];
  v9 = v8;
  [v7 preferredActivityRingInterspacingForDiameter_];
  sub_1CFD8504C(a1, v12, v5, v9, v9 + v10);
  sub_1CFD8D22C();
  sub_1CFD8D00C();
  return memcpy(a2, v12, 0x120uLL);
}

uint64_t sub_1CFD8504C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>)
{
  v9 = *(a1 + 25);
  v10 = *(a1 + 26);
  v11 = *(a1 + 24);
  v12 = *(a1 + 32);
  v50 = *a1;
  v48 = *(a1 + 8);
  sub_1CFD853AC(a1, v75);
  sub_1CFD853AC(a1, v75);
  sub_1CFD853AC(a1, v75);
  v13 = sub_1CFD8D08C();
  sub_1CFD8CFEC();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v89 = 0;
  if (*(a1 + 27))
  {
    v22 = 3;
  }

  else
  {
    v22 = 2;
  }

  v23 = (v10 & 1) == 0;
  if (v10)
  {
    v24 = 1;
  }

  else
  {
    v24 = 4;
  }

  if (v23)
  {
    v25 = 4;
  }

  else
  {
    v25 = 0;
  }

  v47 = v25;
  if (v23)
  {
    v26 = 4;
  }

  else
  {
    v26 = v22;
  }

  v27 = (v9 & 1) == 0;
  if (v9)
  {
    v28 = 4;
  }

  else
  {
    v28 = 2;
  }

  v29 = a3;
  v46 = a3;
  v30 = a3 - (a5 + a5);
  v31 = v11 & 1;
  if (v27)
  {
    v32 = 1;
  }

  else
  {
    v32 = 4;
  }

  v33 = v29 - a5;
  if (v27)
  {
    v34 = 0;
  }

  else
  {
    v34 = 4;
  }

  v35 = *(a1 + 16);
  v36 = sub_1CFD8D08C();
  sub_1CFD8CFEC();
  v88 = 0;
  LOBYTE(v52) = v32;
  *(&v52 + 1) = v33;
  *&v53 = a4;
  *(&v53 + 1) = v48;
  LOBYTE(v54) = v24;
  BYTE1(v54) = v31;
  *(&v54 + 1) = v12;
  LOBYTE(v55) = v13;
  *(&v55 + 1) = v15;
  *v56 = v17;
  *&v56[8] = v19;
  *&v56[16] = v21;
  v56[24] = 0;
  LOBYTE(v57) = v28;
  *(&v57 + 1) = v30;
  *&v58 = a4;
  *(&v58 + 1) = v35;
  LOBYTE(v59) = v26;
  BYTE1(v59) = v31;
  *(&v59 + 1) = v12;
  LOBYTE(v60) = v36;
  *(&v60 + 1) = v37;
  *v61 = v38;
  *&v61[8] = v39;
  *&v61[16] = v40;
  v61[24] = 0;
  *&v51[23] = v58;
  *&v51[7] = v57;
  *&v51[80] = *&v61[9];
  *&v51[71] = *v61;
  *&v51[55] = v60;
  *&v51[39] = v59;
  *a2 = v34;
  *(a2 + 8) = v46;
  *(a2 + 16) = a4;
  *(a2 + 24) = v50;
  *(a2 + 32) = v47;
  *(a2 + 33) = v31;
  *(a2 + 40) = v12;
  v41 = v53;
  *(a2 + 48) = v52;
  *(a2 + 64) = v41;
  v42 = v54;
  v43 = v55;
  v44 = *v56;
  *(a2 + 121) = *&v56[9];
  *(a2 + 96) = v43;
  *(a2 + 112) = v44;
  *(a2 + 80) = v42;
  *(a2 + 153) = *&v51[16];
  *(a2 + 137) = *v51;
  *(a2 + 217) = *&v51[80];
  *(a2 + 201) = *&v51[64];
  *(a2 + 185) = *&v51[48];
  *(a2 + 169) = *&v51[32];
  v62[0] = v28;
  v63 = v30;
  v64 = a4;
  v65 = v35;
  v66 = v26;
  v67 = v31;
  v68 = v12;
  v69 = v36;
  v70 = v37;
  v71 = v38;
  v72 = v39;
  v73 = v40;
  v74 = 0;
  sub_1CFD846D8(v12);
  sub_1CFD853E4(&v52, v75);
  sub_1CFD853E4(&v57, v75);
  sub_1CFD85454(v62);
  v75[0] = v32;
  v76 = v33;
  v77 = a4;
  v78 = v48;
  v79 = v24;
  v80 = v31;
  v81 = v12;
  v82 = v13;
  v83 = v15;
  v84 = v17;
  v85 = v19;
  v86 = v21;
  v87 = 0;
  sub_1CFD85454(v75);
  return sub_1CFD84714(v12);
}

uint64_t sub_1CFD85328@<X0>(void *(**a1)@<X0>(void *a1@<X8>)@<X8>)
{
  v3 = *(v1 + 16);
  v8[0] = *v1;
  v8[1] = v3;
  v9 = *(v1 + 32);
  v4 = swift_allocObject();
  v5 = *(v1 + 16);
  *(v4 + 16) = *v1;
  *(v4 + 32) = v5;
  *(v4 + 48) = *(v1 + 32);
  *a1 = sub_1CFD853A4;
  a1[1] = v4;
  return sub_1CFD853AC(v8, v7);
}

uint64_t sub_1CFD853E4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC508A58);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CFD85454(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC508A58);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1CFD854BC()
{
  result = qword_1EC508A60;
  if (!qword_1EC508A60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC508A68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC508A60);
  }

  return result;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_1CFD85534(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFFD && *(a1 + 48))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 40);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v5 = -1;
  }

  else
  {
    v5 = v4;
  }

  v6 = v5 - 1;
  if (v4 < 1)
  {
    v7 = -1;
  }

  else
  {
    v7 = v6;
  }

  return (v7 + 1);
}

uint64_t sub_1CFD8559C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 2147483646;
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 40) = a2 + 1;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ActivityRing.Kind(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ActivityRing.Kind(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1CFD85768()
{
  result = qword_1EC508A70;
  if (!qword_1EC508A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC508A70);
  }

  return result;
}

uint64_t sub_1CFD857D8@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[1];
  v53 = *v1;
  v54 = v3;
  v55 = v1[2];
  v26 = sub_1CFD85A7C();
  sub_1CFD8CFFC();
  v4 = v47;
  v5 = v48;
  v6 = v49;
  v7 = v50;
  v8 = v51;
  v9 = v52;
  v10 = sub_1CFD8D22C();
  v12 = v11;
  if ((v55 & 1) != 0 || v53 == 4)
  {
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
  }

  else
  {
    v25 = v11;
    v17 = v10;
    v14 = swift_allocObject();
    v18 = v54;
    v19 = v55;
    v14[1] = v53;
    v14[2] = v18;
    v14[3] = v19;
    v20 = *(&v53 + 1);
    sub_1CFD86D08(&v53, v37);
    v15 = sub_1CFD8D23C();
    v16 = v20;

    v13 = sub_1CFD86D00;
    v10 = v17;
    v12 = v25;
  }

  *&v27 = v4 * 0.5;
  *(&v27 + 1) = v4;
  *&v28 = __PAIR64__(v6, v5);
  *(&v28 + 1) = v7;
  *&v29 = v8;
  *(&v29 + 1) = v9;
  *&v30 = v26;
  WORD4(v30) = 256;
  *&v31 = v10;
  *(&v31 + 1) = v12;
  v34 = v29;
  v35 = v30;
  v36 = v31;
  v32 = v27;
  v33 = v28;
  v21 = v10;
  sub_1CFD6A6E0(&v27, v37);
  sub_1CFD86D40(v13);
  sub_1CFD86D84(v13);
  v22 = v35;
  *(a1 + 32) = v34;
  *(a1 + 48) = v22;
  *(a1 + 64) = v36;
  v23 = v33;
  *a1 = v32;
  *(a1 + 16) = v23;
  *(a1 + 80) = v13;
  *(a1 + 88) = v14;
  *(a1 + 96) = v15;
  *(a1 + 104) = v16;
  sub_1CFD86D84(v13);
  v37[0] = v4 * 0.5;
  v37[1] = v4;
  v38 = v5;
  v39 = v6;
  v40 = v7;
  v41 = v8;
  v42 = v9;
  v43 = v26;
  v44 = 256;
  v45 = v21;
  v46 = v12;
  return sub_1CFD6A750(v37);
}

uint64_t sub_1CFD85A7C()
{
  if (*v0 == 4)
  {
    v1 = [objc_opt_self() pausedRingsColors];
    if (v1)
    {
      v2 = v1;
      v3 = [v1 gradientDarkColor];

      if (v3)
      {
        v1 = v3;

        return MEMORY[0x1EEDDC738](v1);
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return MEMORY[0x1EEDDC738](v1);
  }

  v4 = *(v0 + 40);
  if (!v4)
  {
    sub_1CFD8D14C();
    goto LABEL_11;
  }

  if (v4 == 1)
  {
    sub_1CFD86298();
LABEL_11:
    v5 = sub_1CFD8D15C();

    return v5;
  }

  sub_1CFD846D8(*(v0 + 40));
  return v4;
}

uint64_t sub_1CFD85B98@<X0>(__int128 *a1@<X1>, uint64_t a2@<X8>)
{
  v4 = sub_1CFD8D12C();
  v33 = *(v4 - 8);
  v34 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC508A80);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v33 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC508A88);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v35 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v33 - v14;
  v16 = *(a1 + 1);
  v17 = *(a1 + 2);
  sub_1CFD86134(v64);
  *&v63[7] = v64[0];
  *&v63[23] = v64[1];
  *&v63[39] = v65;
  if (*(a1 + 5) == 1)
  {
    (*(v8 + 56))(v15, 1, 1, v7);
    v18 = a1[1];
    v45 = *a1;
    v46 = v18;
    v47 = a1[2];
    sub_1CFD86298();
    v20 = v19;
  }

  else
  {
    v21 = *(v7 + 36);
    v22 = *MEMORY[0x1E6981DC0];
    v23 = sub_1CFD8D24C();
    (*(*(v23 - 8) + 104))(&v10[v21], v22, v23);
    *v10 = v16;
    *(v10 + 1) = v17;
    v10[16] = 3;
    *(v10 + 17) = v45;
    *(v10 + 5) = *(&v45 + 3);
    *(v10 + 3) = v16;
    *(v10 + 4) = v17;
    *(v10 + 20) = 2;
    v10[42] = 0;
    sub_1CFD86E90(v10, v15);
    (*(v8 + 56))(v15, 0, 1, v7);
    v20 = sub_1CFD8D14C();
  }

  (*(v33 + 104))(v6, *MEMORY[0x1E69814D8], v34);
  v24 = sub_1CFD8D17C();
  v34 = v24;
  *&v25 = *(a1 + 3) / 15.0;
  v26 = v35;
  sub_1CFD86DC8(v15, v35, &qword_1EC508A88);
  *&v36 = v16;
  *(&v36 + 1) = v17;
  LOBYTE(v37[0]) = 0;
  *(v37 + 1) = *v63;
  *(&v37[1] + 1) = *&v63[16];
  v37[2] = *&v63[31];
  v38 = 256;
  *(a2 + 64) = 256;
  v27 = v37[0];
  *a2 = v36;
  *(a2 + 16) = v27;
  v28 = v37[2];
  *(a2 + 32) = v37[1];
  *(a2 + 48) = v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC508A90);
  sub_1CFD86DC8(v26, a2 + *(v29 + 48), &qword_1EC508A88);
  v30 = (a2 + *(v29 + 64));
  *&v39 = v16;
  *(&v39 + 1) = v17;
  LOBYTE(v40) = 1;
  *(&v40 + 1) = *v62;
  DWORD1(v40) = *&v62[3];
  *(&v40 + 1) = v20;
  LOWORD(v41) = 256;
  *(&v41 + 2) = v60;
  WORD3(v41) = v61;
  *(&v41 + 1) = v24;
  v42 = v25;
  v43 = 0;
  *&v44[0] = 0;
  *(&v44[0] + 1) = v16;
  *&v44[1] = v17;
  WORD4(v44[1]) = 2;
  BYTE10(v44[1]) = 0;
  v30[2] = v41;
  v30[3] = v25;
  v31 = v40;
  *v30 = v39;
  v30[1] = v31;
  v30[4] = v44[0];
  *(v30 + 75) = *(v44 + 11);
  sub_1CFD86DC8(&v36, &v45, &qword_1EC508A98);
  sub_1CFD86DC8(&v39, &v45, &qword_1EC508AA0);
  sub_1CFD86E30(v15, &qword_1EC508A88);
  *&v45 = v16;
  *(&v45 + 1) = v17;
  LOBYTE(v46) = 1;
  *(&v46 + 1) = *v62;
  DWORD1(v46) = *&v62[3];
  *(&v46 + 1) = v20;
  LOWORD(v47) = 256;
  *(&v47 + 2) = v60;
  WORD3(v47) = v61;
  *(&v47 + 1) = v34;
  v48 = v25;
  v49 = 0;
  v50 = 0;
  v51 = v16;
  v52 = v17;
  v53 = 2;
  v54 = 0;
  sub_1CFD86E30(&v45, &qword_1EC508AA0);
  sub_1CFD86E30(v26, &qword_1EC508A88);
  v55[0] = v16;
  v55[1] = v17;
  v56 = 0;
  v57 = *v63;
  *v58 = *&v63[16];
  *&v58[15] = *&v63[31];
  v59 = 256;
  return sub_1CFD86E30(v55, &qword_1EC508A98);
}

double sub_1CFD86134@<D0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 1);
  v5 = *(v1 + 2);
  v6 = *(v1 + 3);
  v7 = v1[32];
  v8 = *(v1 + 5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC508AA8);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1CFD916E0;
  if (v8 == 1)
  {
    sub_1CFD86298();
    *(v9 + 32) = v10;
    LOBYTE(v13) = v3;
    *(&v13 + 1) = v4;
    *&v14 = v5;
    *(&v14 + 1) = v6;
    LOBYTE(v15) = v7;
    sub_1CFD86298();
  }

  else
  {
    *(v9 + 32) = sub_1CFD8D14C();
    v11 = sub_1CFD8D14C();
  }

  *(v9 + 40) = v11;
  MEMORY[0x1D3874BB0](v9);
  sub_1CFD8D25C();
  sub_1CFD8D02C();
  result = *&v13;
  *a1 = v13;
  *(a1 + 16) = v14;
  *(a1 + 32) = v15;
  return result;
}

void sub_1CFD86298()
{
  v38[1] = *MEMORY[0x1E69E9840];
  v1 = sub_1CFD8D12C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  LODWORD(v5) = *v0;
  v37 = 0;
  v38[0] = 0;
  v35 = 0;
  v36 = 0;
  v33 = 0;
  v34 = 0;
  v6 = objc_opt_self();
  v7 = v6;
  if (v5 > 1)
  {
    if (v5 == 2)
    {
      goto LABEL_15;
    }

    if (v5 != 3)
    {
      goto LABEL_20;
    }

    v8 = [v6 energyColors];
    if (!v8)
    {
      goto LABEL_31;
    }

    v9 = v8;
    v10 = [v8 nonGradientTextColor];

    if (!v10)
    {
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

    [v10 getRed:v38 green:&v37 blue:&v36 alpha:0];

    v11 = [v7 energyColors];
    if (!v11)
    {
LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

    v5 = v11;
    v7 = [v11 nonGradientTextColor];

    if (v7)
    {
      goto LABEL_29;
    }

    __break(1u);
  }

  if (v5)
  {
    goto LABEL_25;
  }

  v12 = [v7 energyColors];
  if (!v12)
  {
    goto LABEL_32;
  }

  v13 = v12;
  v14 = [v12 gradientDarkColor];

  if (!v14)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  [v14 getRed:v38 green:&v37 blue:&v36 alpha:0];

  v15 = [v7 energyColors];
  if (!v15)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v16 = v15;
  v7 = [v15 gradientLightColor];

  if (v7)
  {
    goto LABEL_29;
  }

  __break(1u);
LABEL_15:
  v17 = [v7 sedentaryColors];
  if (!v17)
  {
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v18 = v17;
  v19 = [v17 gradientDarkColor];

  if (!v19)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  [v19 getRed:v38 green:&v37 blue:&v36 alpha:0];

  v20 = [v7 sedentaryColors];
  if (!v20)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v21 = v20;
  v7 = [v20 gradientLightColor];

  if (v7)
  {
LABEL_29:
    [v7 getRed:&v35 green:&v34 blue:&v33 alpha:0];

    (*(v2 + 104))(v4, *MEMORY[0x1E69814D8], v1);
    sub_1CFD8D16C();
    return;
  }

  __break(1u);
LABEL_20:
  v22 = [v7 pausedRingsColors];
  if (!v22)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v23 = v22;
  v24 = [v22 gradientDarkColor];

  if (!v24)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  [v24 getRed:v38 green:&v37 blue:&v36 alpha:0];

  v25 = [v7 pausedRingsColors];
  if (!v25)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v26 = v25;
  v7 = [v25 gradientLightColor];

  if (v7)
  {
    goto LABEL_29;
  }

  __break(1u);
LABEL_25:
  v27 = [v7 briskColors];
  if (!v27)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v28 = v27;
  v29 = [v27 gradientDarkColor];

  if (!v29)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  [v29 getRed:v38 green:&v37 blue:&v36 alpha:0];

  v30 = [v7 briskColors];
  if (!v30)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v31 = v30;
  v7 = [v30 gradientLightColor];

  if (v7)
  {
    goto LABEL_29;
  }

LABEL_45:
  __break(1u);
}

uint64_t sub_1CFD867C0()
{
  v1 = *v0;
  sub_1CFD8D31C();
  MEMORY[0x1D3874CD0](v1);
  return sub_1CFD8D33C();
}

uint64_t sub_1CFD86808()
{
  v1 = *v0;
  sub_1CFD8D31C();
  MEMORY[0x1D3874CD0](v1);
  return sub_1CFD8D33C();
}

double sub_1CFD8684C@<D0>(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>)
{
  CGRectGetMidX(*&a2);
  v27.origin.x = a2;
  v27.origin.y = a3;
  v27.size.width = a4;
  v27.size.height = a5;
  CGRectGetMidY(v27);
  v28.origin.x = a2;
  v28.origin.y = a3;
  v28.size.width = a4;
  v28.size.height = a5;
  CGRectGetWidth(v28);
  v29.origin.x = a2;
  v29.origin.y = a3;
  v29.size.width = a4;
  v29.size.height = a5;
  CGRectGetHeight(v29);
  sub_1CFD8D0CC();
  v21 = 0x3FF0000000000000;
  v22 = 0;
  v23 = 0;
  v24 = 0x3FF0000000000000;
  v25 = 0;
  v26 = 0;
  sub_1CFD8D0BC();
  v19[0] = v12;
  v19[1] = v13;
  v20 = v14;
  sub_1CFD8CFFC();
  sub_1CFD8D0AC();
  sub_1CFD8712C(v15);
  sub_1CFD87180(v19);
  result = *&v16;
  v11 = v17;
  *a1 = v16;
  *(a1 + 16) = v11;
  *(a1 + 32) = v18;
  return result;
}

double sub_1CFD86AB4@<D0>(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>)
{
  sub_1CFD8684C(v8, a2, a3, a4, a5);
  result = *v8;
  v7 = v8[1];
  *a1 = v8[0];
  *(a1 + 16) = v7;
  *(a1 + 32) = v9;
  return result;
}

uint64_t sub_1CFD86B04@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x1E6980210];
  v3 = sub_1CFD8D07C();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

__n128 sub_1CFD86B90@<Q0>(__n128 *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

__n128 sub_1CFD86B9C(__n128 *a1)
{
  result = *a1;
  *v1 = *a1;
  return result;
}

__n128 (*sub_1CFD86BA8(uint64_t a1))(__n128 *a1)
{
  *(a1 + 16) = v1;
  *a1 = *v1;
  return sub_1CFD86BD4;
}

__n128 sub_1CFD86BD4(__n128 *a1)
{
  result = *a1;
  *a1[1].n128_u64[0] = *a1;
  return result;
}

uint64_t sub_1CFD86BE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1CFD871D4();

  return MEMORY[0x1EEDE4440](a1, a2, a3, v6);
}

uint64_t sub_1CFD86C4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1CFD871D4();

  return MEMORY[0x1EEDE43F0](a1, a2, a3, v6);
}

uint64_t sub_1CFD86CB0(uint64_t a1)
{
  v2 = sub_1CFD871D4();

  return MEMORY[0x1EEDE4410](a1, v2);
}

uint64_t sub_1CFD86D40(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1CFD86D84(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1CFD86DC8(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1CFD86E30(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1CFD86E90(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC508A80);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for ActivityRing.Arc(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 17))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 16);
  v4 = v3 >= 4;
  v5 = v3 - 4;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for ActivityRing.Arc(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 3;
    }
  }

  return result;
}

uint64_t sub_1CFD87034(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1CFD87080()
{
  result = qword_1EC508AE0;
  if (!qword_1EC508AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC508AE0);
  }

  return result;
}

unint64_t sub_1CFD870D8()
{
  result = qword_1EC508AE8;
  if (!qword_1EC508AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC508AE8);
  }

  return result;
}

unint64_t sub_1CFD871D4()
{
  result = qword_1EC508AF0;
  if (!qword_1EC508AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC508AF0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ActivityRing.Arc.Kind(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ActivityRing.Arc.Kind(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1CFD8737C()
{
  result = qword_1EC508AF8;
  if (!qword_1EC508AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC508AF8);
  }

  return result;
}

uint64_t sub_1CFD87488()
{
  if (*(v0 + OBJC_IVAR____TtC15ActivityRingsUI15SpringAnimation_animationState + 40) != 1)
  {
    result = sub_1CFD8D2BC();
    __break(1u);
  }

  return result;
}

id SpringAnimation.__allocating_init(initialValue:delay:)(double a1, double a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = &v5[OBJC_IVAR____TtC15ActivityRingsUI15SpringAnimation_animationState];
  *v6 = a1;
  *(v6 + 8) = 0u;
  *(v6 + 24) = 0u;
  v6[40] = 0;
  *&v5[OBJC_IVAR____TtC15ActivityRingsUI15SpringAnimation_delay] = a2;
  *&v5[OBJC_IVAR____TtC15ActivityRingsUI15SpringAnimation_remainingDelay] = a2;
  v8.receiver = v5;
  v8.super_class = v2;
  return objc_msgSendSuper2(&v8, sel_init);
}

id SpringAnimation.init(initialValue:delay:)(double a1, double a2)
{
  v3 = &v2[OBJC_IVAR____TtC15ActivityRingsUI15SpringAnimation_animationState];
  *v3 = a1;
  *(v3 + 8) = 0u;
  *(v3 + 24) = 0u;
  v3[40] = 0;
  *&v2[OBJC_IVAR____TtC15ActivityRingsUI15SpringAnimation_delay] = a2;
  *&v2[OBJC_IVAR____TtC15ActivityRingsUI15SpringAnimation_remainingDelay] = a2;
  v5.receiver = v2;
  v5.super_class = type metadata accessor for SpringAnimation();
  return objc_msgSendSuper2(&v5, sel_init);
}

void sub_1CFD87694(double a1, double a2, double a3)
{
  v4 = v3 + OBJC_IVAR____TtC15ActivityRingsUI15SpringAnimation_animationState;
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  *(v4 + 32) = a3;
  *(v4 + 40) = 1;
}

uint64_t sub_1CFD876D4(double a1)
{
  v2 = v1 + OBJC_IVAR____TtC15ActivityRingsUI15SpringAnimation_animationState;
  if (*(v1 + OBJC_IVAR____TtC15ActivityRingsUI15SpringAnimation_animationState + 40) == 1)
  {
    *(v2 + 32) = a1;
    *(v2 + 40) = 1;
  }

  else
  {
    result = sub_1CFD8D2BC();
    __break(1u);
  }

  return result;
}

uint64_t sub_1CFD877DC(double a1)
{
  v2 = v1 + OBJC_IVAR____TtC15ActivityRingsUI15SpringAnimation_animationState;
  if (*(v1 + OBJC_IVAR____TtC15ActivityRingsUI15SpringAnimation_animationState + 40) != 1)
  {
    result = sub_1CFD8D2BC();
    __break(1u);
    return result;
  }

  v3 = *(v2 + 32);
  v4 = *(v2 + 24);
  v5 = *v2;
  v6 = *(v2 + 8);
  if (*(v1 + OBJC_IVAR____TtC15ActivityRingsUI15SpringAnimation_delay) <= 0.001 || (v7 = *(v1 + OBJC_IVAR____TtC15ActivityRingsUI15SpringAnimation_remainingDelay), v7 <= 0.001))
  {
    if (vabdd_f64(v5, v3) < 0.001 && fabs(v6) < 0.001)
    {
      return 0;
    }

    v10 = v5 - v3;
    v11 = sqrt(*(v2 + 16));
    v12 = v4 * 0.5;
    if (v11 - v4 * 0.5 <= 0.001)
    {
      if (v12 - v11 <= 0.001)
      {
        v31 = exp(-(v12 * a1));
        v32 = v6 + v12 * v10;
        v33 = v10 + v32 * a1;
        v19 = v31 * v33;
        v29 = v31 * v32 - v31 * v12 * v33;
        goto LABEL_18;
      }

      v22 = sqrt(v12 * v12 - v11 * v11);
      v24 = exp(-(v12 * a1));
      v25 = v22 * a1;
      v34 = cosh(v25);
      v26 = (v6 + v12 * v10) / v22;
      v27 = sinh(v25);
      v28 = v10 * v34 + v26 * v27;
      v19 = v24 * v28;
      v20 = v24 * (v22 * (v26 * v34) + v22 * (v10 * v27));
      v21 = v24 * v12 * v28;
    }

    else
    {
      v13 = sqrt(v11 * v11 - v12 * v12);
      v15 = exp(-(v12 * a1));
      v16 = __sincos_stret(v13 * a1);
      v17 = (v6 + v12 * v10) / v13;
      v18 = v10 * v16.__cosval + v17 * v16.__sinval;
      v19 = v15 * v18;
      v20 = v15 * (v13 * (v17 * v16.__cosval) - v13 * (v10 * v16.__sinval));
      v21 = v15 * v12 * v18;
    }

    v29 = v20 - v21;
LABEL_18:
    if (vabdd_f64(v19 + v3, v3) >= 0.001)
    {
      *v2 = v19 + v3;
    }

    else
    {
      *v2 = v3;
    }

    *(v2 + 8) = v29;
    result = 1;
    *(v2 + 40) = 1;
    return result;
  }

  v8 = v7 - a1;
  if (v8 > 1.0)
  {
    v8 = 1.0;
  }

  if (v8 < 0.0)
  {
    v8 = 0.0;
  }

  *(v1 + OBJC_IVAR____TtC15ActivityRingsUI15SpringAnimation_remainingDelay) = v8;
  return 1;
}

void sub_1CFD87AD0()
{
  v1 = v0 + OBJC_IVAR____TtC15ActivityRingsUI15SpringAnimation_animationState;
  if (*(v0 + OBJC_IVAR____TtC15ActivityRingsUI15SpringAnimation_animationState + 40) == 1)
  {
    *v1 = *(v1 + 32);
    *(v1 + 8) = 0;
    *(v1 + 40) = 1;
  }
}

id SpringAnimation.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SpringAnimation.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SpringAnimation();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for SpringAnimation.SpringAnimationState(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 41))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 40);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for SpringAnimation.SpringAnimationState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t sub_1CFD87E2C()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1CFD87EA4(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))();
  }

  v6 = *(*(*(a3 + 16) - 8) + 64);
  v8 = ((v6 + *(v4 + 80) + ((v6 + *(v4 + 80)) & ~*(v4 + 80))) & ~*(v4 + 80)) + v6;
  v9 = 8 * v8;
  if (v8 <= 3)
  {
    v11 = ((v7 + ~(-1 << v9)) >> v9) + 1;
    if (HIWORD(v11))
    {
      v10 = *(a1 + v8);
      if (!v10)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v11 > 0xFF)
    {
      v10 = *(a1 + v8);
      if (!*(a1 + v8))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v11 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))();
      }

      return 0;
    }
  }

  v10 = *(a1 + v8);
  if (!*(a1 + v8))
  {
    goto LABEL_22;
  }

LABEL_11:
  v12 = (v10 - 1) << v9;
  if (v8 > 3)
  {
    v12 = 0;
  }

  if (v8)
  {
    if (v8 > 3)
    {
      LODWORD(v8) = 4;
    }

    if (v8 > 2)
    {
      if (v8 == 3)
      {
        LODWORD(v8) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v8) = *a1;
      }
    }

    else if (v8 == 1)
    {
      LODWORD(v8) = *a1;
    }

    else
    {
      LODWORD(v8) = *a1;
    }
  }

  return v5 + (v8 | v12) + 1;
}

char *sub_1CFD87FFC(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = ((*(v5 + 64) + *(v5 + 80) + ((*(v5 + 64) + *(v5 + 80)) & ~*(v5 + 80))) & ~*(v5 + 80)) + *(v5 + 64);
  v8 = a3 >= v6;
  v9 = a3 - v6;
  if (v9 != 0 && v8)
  {
    if (v7 <= 3)
    {
      v14 = ((v9 + ~(-1 << (8 * v7))) >> (8 * v7)) + 1;
      if (HIWORD(v14))
      {
        v10 = 4;
      }

      else
      {
        if (v14 < 0x100)
        {
          v15 = 1;
        }

        else
        {
          v15 = 2;
        }

        if (v14 >= 2)
        {
          v10 = v15;
        }

        else
        {
          v10 = 0;
        }
      }
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  if (v6 < a2)
  {
    v11 = ~v6 + a2;
    if (v7 < 4)
    {
      v13 = (v11 >> (8 * v7)) + 1;
      if (v7)
      {
        v16 = v11 & ~(-1 << (8 * v7));
        v17 = result;
        bzero(result, v7);
        result = v17;
        if (v7 != 3)
        {
          if (v7 == 2)
          {
            *v17 = v16;
            if (v10 > 1)
            {
LABEL_39:
              if (v10 == 2)
              {
                *&result[v7] = v13;
              }

              else
              {
                *&result[v7] = v13;
              }

              return result;
            }
          }

          else
          {
            *v17 = v11;
            if (v10 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *v17 = v16;
        v17[2] = BYTE2(v16);
      }

      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = result;
      bzero(result, v7);
      result = v12;
      *v12 = v11;
      v13 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v10)
    {
      result[v7] = v13;
    }

    return result;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *&result[v7] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_28;
    }

    *&result[v7] = 0;
  }

  else if (v10)
  {
    result[v7] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return result;
  }

LABEL_28:
  v18 = *(v5 + 56);

  return v18();
}

uint64_t sub_1CFD8823C()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1CFD882AC(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))();
  }

  v6 = *(*(*(a3 + 16) - 8) + 64);
  v8 = ((v6 + *(v4 + 80)) & ~*(v4 + 80)) + v6;
  v9 = 8 * v8;
  if (v8 <= 3)
  {
    v11 = ((v7 + ~(-1 << v9)) >> v9) + 1;
    if (HIWORD(v11))
    {
      v10 = *(a1 + v8);
      if (!v10)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v11 > 0xFF)
    {
      v10 = *(a1 + v8);
      if (!*(a1 + v8))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v11 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))();
      }

      return 0;
    }
  }

  v10 = *(a1 + v8);
  if (!*(a1 + v8))
  {
    goto LABEL_22;
  }

LABEL_11:
  v12 = (v10 - 1) << v9;
  if (v8 > 3)
  {
    v12 = 0;
  }

  if (v8)
  {
    if (v8 > 3)
    {
      LODWORD(v8) = 4;
    }

    if (v8 > 2)
    {
      if (v8 == 3)
      {
        LODWORD(v8) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v8) = *a1;
      }
    }

    else if (v8 == 1)
    {
      LODWORD(v8) = *a1;
    }

    else
    {
      LODWORD(v8) = *a1;
    }
  }

  return v5 + (v8 | v12) + 1;
}

char *sub_1CFD883FC(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = ((*(v5 + 64) + *(v5 + 80)) & ~*(v5 + 80)) + *(v5 + 64);
  v8 = a3 >= v6;
  v9 = a3 - v6;
  if (v9 != 0 && v8)
  {
    if (v7 <= 3)
    {
      v14 = ((v9 + ~(-1 << (8 * v7))) >> (8 * v7)) + 1;
      if (HIWORD(v14))
      {
        v10 = 4;
      }

      else
      {
        if (v14 < 0x100)
        {
          v15 = 1;
        }

        else
        {
          v15 = 2;
        }

        if (v14 >= 2)
        {
          v10 = v15;
        }

        else
        {
          v10 = 0;
        }
      }
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  if (v6 < a2)
  {
    v11 = ~v6 + a2;
    if (v7 < 4)
    {
      v13 = (v11 >> (8 * v7)) + 1;
      if (v7)
      {
        v16 = v11 & ~(-1 << (8 * v7));
        v17 = result;
        bzero(result, v7);
        result = v17;
        if (v7 != 3)
        {
          if (v7 == 2)
          {
            *v17 = v16;
            if (v10 > 1)
            {
LABEL_39:
              if (v10 == 2)
              {
                *&result[v7] = v13;
              }

              else
              {
                *&result[v7] = v13;
              }

              return result;
            }
          }

          else
          {
            *v17 = v11;
            if (v10 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *v17 = v16;
        v17[2] = BYTE2(v16);
      }

      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = result;
      bzero(result, v7);
      result = v12;
      *v12 = v11;
      v13 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v10)
    {
      result[v7] = v13;
    }

    return result;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *&result[v7] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_28;
    }

    *&result[v7] = 0;
  }

  else if (v10)
  {
    result[v7] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return result;
  }

LABEL_28:
  v18 = *(v5 + 56);

  return v18();
}

void *sub_1CFD8865C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC508C60);
  (MEMORY[0x1EEE9AC00])();
  v2 = &v14 - v1;
  v3 = sub_1CFD8CE4C();
  v4 = *(v3 - 8);
  v5 = (MEMORY[0x1EEE9AC00])();
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v14 - v8;
  sub_1CFD89BBC(v2);
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    sub_1CFD8B830(v2);
    v10 = sub_1CFD8CF0C();
    sub_1CFD8B898();
    swift_allocError();
    *v11 = 0x762E736B72617053;
    v11[1] = 0xEA00000000007866;
    (*(*(v10 - 1) + 104))(v11, *MEMORY[0x1E69DF2A0], v10);
    swift_willThrow();
  }

  else
  {
    (*(v4 + 32))(v9, v2, v3);
    (*(v4 + 16))(v7, v9, v3);
    v10 = objc_allocWithZone(sub_1CFD8CFCC());
    v12 = sub_1CFD8CF1C();
    if (!v0)
    {
      v10 = v12;
    }

    (*(v4 + 8))(v9, v3);
  }

  return v10;
}

uint64_t sub_1CFD888DC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC508C50);
  sub_1CFD8CF6C();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1CFD91AB0;
  sub_1CFD8CF3C();
  sub_1CFD8CF3C();
  sub_1CFD8CF3C();
  sub_1CFD8CF3C();
  sub_1CFD8CF3C();
  sub_1CFD8CF3C();
  sub_1CFD8CF3C();
  sub_1CFD8CF3C();
  sub_1CFD8CF3C();
  sub_1CFD8CF3C();
  sub_1CFD8CF3C();
  sub_1CFD8CF3C();
  result = sub_1CFD8CF3C();
  off_1EC508C18 = v0;
  return result;
}

void *sub_1CFD88CC8(uint64_t a1)
{
  qword_1EC508C20 = a1;
  sub_1CFD8CE6C();
  *&v1 = v1;
  dword_1EC508C28 = LODWORD(v1);
  sub_1CFD8CEBC();
  dword_1EC508C2C = v2;
  result = sub_1CFD8CEFC();
  v4 = result[1];
  if (!v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  v5 = result[2];
  if (!v5)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v6 = result[3];
  if (!v6)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v7 = result[4];
  if (v7)
  {
    v8 = *v4 * *v5;
    v9 = (v8 * 0.02) / 5.0;
    v10 = (v8 * 0.03) / 5.0;
    v11 = (v8 * 0.1) / 5.0;
    v12 = (v8 * 0.2) / 5.0;
    *v6 = fminf(v9, v10);
    v6[1] = fmaxf(v9, v10);
    *v7 = fminf(v11, v12);
    v7[1] = fmaxf(v11, v12);
    return result;
  }

LABEL_9:
  __break(1u);
  return result;
}

void *sub_1CFD88E20(uint64_t a1, uint64_t (*a2)(uint64_t, __n128))
{
  qword_1EC508C20 = a1;
  sub_1CFD8CE6C();
  *&v3 = v3;
  dword_1EC508C28 = LODWORD(v3);
  sub_1CFD8CEBC();
  dword_1EC508C2C = v4;
  result = sub_1CFD8CEFC();
  if (!result[1])
  {
    __break(1u);
    goto LABEL_9;
  }

  v6 = result[2];
  if (!v6)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (!result[3])
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (!result[4])
  {
LABEL_11:
    __break(1u);
    return result;
  }

  v7 = *v6;

  return a2(a1, v7);
}

void *sub_1CFD88ED0(uint64_t a1)
{
  qword_1EC508C20 = a1;
  sub_1CFD8CE6C();
  *&v2 = v2;
  dword_1EC508C28 = LODWORD(v2);
  sub_1CFD8CEBC();
  dword_1EC508C2C = v3;
  result = sub_1CFD8CEFC();
  v5 = result[1];
  if (!v5)
  {
    __break(1u);
    goto LABEL_8;
  }

  v6 = result[2];
  if (!v6)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v7 = result[3];
  if (!v7)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v8 = *v5;
  v9 = *v6;

  return sub_1CFD8A268(a1, v7, v8, v9);
}

void *sub_1CFD88F64(uint64_t a1)
{
  qword_1EC508C20 = a1;
  sub_1CFD8CE6C();
  *&v1 = v1;
  dword_1EC508C28 = LODWORD(v1);
  sub_1CFD8CEBC();
  dword_1EC508C2C = v2;
  result = sub_1CFD8CEFC();
  v4 = result[1];
  if (!v4)
  {
    __break(1u);
    goto LABEL_12;
  }

  v5 = result[2];
  if (!v5)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (!result[3])
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v6 = result[4];
  if (!v6)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v7 = result[5];
  if (!v7)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v8 = result[6];
  if (!v8)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v9 = result[7];
  if (!v9)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v10 = result[8];
  if (!v10)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  result = result[9];
  if (result)
  {
    v11 = *v5;
    v12 = (*v4 * 0.02) / 5.0;
    v13 = (*v4 * 0.03) / 5.0;
    v14 = (*v4 * 0.25) / 5.0;
    v15 = (*v4 * 0.4) / 5.0;
    *v6 = xmmword_1CFD91AC0;
    *v7 = xmmword_1CFD91AC0;
    *v8 = fminf(v12, v13);
    v8[1] = fmaxf(v12, v13);
    *v9 = fminf(v14, v15);
    v9[1] = fmaxf(v14, v15);
    *v10 = v11;
    result = sub_1CFD8CEAC();
    *(v6 + 12) = 1065353216;
    return result;
  }

LABEL_19:
  __break(1u);
  return result;
}

void *sub_1CFD890B0(uint64_t a1)
{
  qword_1EC508C20 = a1;
  sub_1CFD8CE6C();
  *&v2 = v2;
  dword_1EC508C28 = LODWORD(v2);
  sub_1CFD8CEBC();
  dword_1EC508C2C = v3;
  result = sub_1CFD8CEFC();
  if (!result[1])
  {
    __break(1u);
    goto LABEL_8;
  }

  if (!result[2])
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (!result[3])
  {
LABEL_9:
    __break(1u);
    return result;
  }

  return sub_1CFD8B0A4(a1);
}

void *sub_1CFD89180(uint64_t a1, uint64_t (*a2)(uint64_t, __n128))
{
  qword_1EC508C20 = a1;
  sub_1CFD8CE6C();
  *&v3 = v3;
  dword_1EC508C28 = LODWORD(v3);
  sub_1CFD8CEBC();
  dword_1EC508C2C = v4;
  result = sub_1CFD8CEFC();
  v7 = result[1];
  if (!v7)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (!result[2])
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (!result[3])
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v6.n128_u32[0] = *v7;

  return a2(a1, v6);
}

uint64_t sub_1CFD89224(uint64_t a1)
{
  qword_1EC508C20 = a1;
  sub_1CFD8CE6C();
  *&v1 = v1;
  dword_1EC508C28 = LODWORD(v1);
  sub_1CFD8CEBC();
  dword_1EC508C2C = v2;
  result = sub_1CFD8CEFC();
  v4 = *(result + 8);
  if (v4)
  {
    v5 = *(result + 16);
    if (v5)
    {
      v6 = (*v4 * 0.01) / 3.0;
      v7 = (*v4 * 0.02) / 3.0;
      *v5 = fminf(v6, v7);
      v5[1] = fmaxf(v6, v7);
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1CFD892C8(uint64_t a1)
{
  qword_1EC508C20 = a1;
  sub_1CFD8CE6C();
  *&v1 = v1;
  dword_1EC508C28 = LODWORD(v1);
  sub_1CFD8CEBC();
  dword_1EC508C2C = v2;
  result = sub_1CFD8CEFC();
  if (!*(result + 8))
  {
    __break(1u);
    goto LABEL_7;
  }

  result = *(result + 16);
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  return sub_1CFD8CEAC();
}

void *sub_1CFD89344(uint64_t a1)
{
  qword_1EC508C20 = a1;
  sub_1CFD8CE6C();
  *&v2 = v2;
  dword_1EC508C28 = LODWORD(v2);
  sub_1CFD8CEBC();
  dword_1EC508C2C = v3;
  result = sub_1CFD8CEFC();
  v5 = result[1];
  if (!v5)
  {
    __break(1u);
    goto LABEL_20;
  }

  v6 = result[2];
  if (!v6)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!result[3])
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v7 = result[4];
  if (!v7)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v8 = result[5];
  if (!v8)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v9 = result[6];
  if (!v9)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v10 = result[7];
  if (!v10)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v11 = result[8];
  if (!v11)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v12 = result[9];
  if (!v12)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v13 = result[10];
  if (!v13)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v14 = result[11];
  if (!v14)
  {
LABEL_29:
    __break(1u);
    return result;
  }

  v32 = *v5;
  v15 = *v6;
  v16 = *v7;
  v30 = _simd_cos_f4(0);
  v17 = _simd_sin_f4(0);
  v18 = vextq_s8(v30, v30, 4uLL);
  v19 = vmulq_f32(vzip1q_s32(vrev64q_s32(v30), v30), vextq_s8(vzip1q_s32(v18, v17), v18, 8uLL));
  v20 = vzip2q_s32(vzip1q_s32(v30, v17), v17);
  v20.f32[3] = -v17.f32[0];
  v21 = vextq_s8(v17, v17, 8uLL);
  v22 = vtrn1q_s32(v17, vextq_s8(v30, v30, 8uLL));
  v17.i32[3] = v17.i32[1];
  v23 = vtrn1q_s32(v21, v30);
  v23.f32[1] = -v30.f32[0];
  v31 = vmlaq_f32(vrev64q_s32(vmulq_f32(vmulq_f32(v17, v20), v23)), v22, v19);
  sub_1CFD8CE6C();
  if (v15)
  {
    v24 = 1.0;
  }

  else
  {
    v24 = 0.0;
  }

  MEMORY[0x1D3874820](a1, &unk_1F4C7CD78, &unk_1F4C7CDA8, 4);
  sub_1CFD8CE9C();
  v26 = (fminf(fmaxf(v25, 0.0), 1.0) * -0.2) + 0.3;
  sub_1CFD8CE8C();
  MEMORY[0x1D3874820](a1, &unk_1F4C7CDD8, &unk_1F4C7CE08, 4);
  sub_1CFD8CE9C();
  v28 = v27 * 6.6;
  if (v16)
  {
    v29 = v28;
  }

  else
  {
    v29 = 0.0;
  }

  result = sub_1CFD8CE8C();
  *v8 = v32;
  *v9 = v31;
  *v10 = 1096296694;
  *v11 = v24;
  *v12 = v26;
  *v13 = 1041865114;
  *v14 = v29;
  *(v8 + 12) = 1065353216;
  return result;
}

void *sub_1CFD895E8(uint64_t a1)
{
  qword_1EC508C20 = a1;
  sub_1CFD8CE6C();
  *&v1 = v1;
  dword_1EC508C28 = LODWORD(v1);
  sub_1CFD8CEBC();
  dword_1EC508C2C = v2;
  sub_1CFD8CEEC();
  result = sub_1CFD8CEFC();
  if (!result[1])
  {
    __break(1u);
    goto LABEL_10;
  }

  if (!result[2])
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (!result[3])
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (!result[4])
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (!result[5])
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (!result[6])
  {
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
  }

  if (!result[7])
  {
    goto LABEL_15;
  }

  return result;
}

id sub_1CFD89AA8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC508C60);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v9 - v1;
  sub_1CFD89BBC(&v9 - v1);
  v3 = sub_1CFD8CE4C();
  v4 = *(v3 - 8);
  v5 = (*(v4 + 48))(v2, 1, v3);
  v6 = 0;
  if (v5 != 1)
  {
    v7 = sub_1CFD8CE2C();
    (*(v4 + 8))(v2, v3);
    v6 = v7;
  }

  return v6;
}

uint64_t sub_1CFD89BBC@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for Sparks();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  v4 = sub_1CFD8D27C();
  v5 = sub_1CFD8D27C();
  v6 = [v3 URLForResource:v4 withExtension:v5];

  if (v6)
  {
    sub_1CFD8CE3C();

    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  v8 = sub_1CFD8CE4C();
  v9 = *(*(v8 - 8) + 56);

  return v9(a1, v7, 1, v8);
}

void *sub_1CFD89CEC()
{
  swift_getObjCClassMetadata();
  v0 = sub_1CFD8865C();

  return v0;
}

uint64_t sub_1CFD89D78()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC508C60);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v14 - v3;
  v5 = sub_1CFD8CE4C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFD89BBC(v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_1CFD8B830(v4);
    v9 = sub_1CFD8CF0C();
    sub_1CFD8B898();
    swift_allocError();
    *v10 = 0x762E736B72617053;
    v10[1] = 0xEA00000000007866;
    (*(*(v9 - 8) + 104))(v10, *MEMORY[0x1E69DF2A0], v9);
    swift_willThrow();
  }

  else
  {
    (*(v6 + 32))(v8, v4, v5);
    v11 = [objc_allocWithZone(sub_1CFD8CFCC()) init];
    v12 = sub_1CFD8CFAC();
    if (!v0)
    {
      v1 = v12;
    }

    (*(v6 + 8))(v8, v5);
  }

  return v1;
}

id sub_1CFD89FCC()
{
  v0 = sub_1CFD89D78();

  return v0;
}

id sub_1CFD8A050()
{
  sub_1CFD8B7E8(0, &qword_1EC508C58);
  v0 = sub_1CFD8D29C();

  return v0;
}

id sub_1CFD8A0A0()
{
  sub_1CFD8B3D0();
  sub_1CFD8B7E8(0, &qword_1EC508C40);
  v0 = sub_1CFD8D26C();

  return v0;
}

id sub_1CFD8A118()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for Sparks();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t __vfx_get_effect_class_Sparks()
{
  type metadata accessor for Sparks();

  return swift_getObjCClassFromMetadata();
}

float sub_1CFD8A188(uint64_t a1, float *a2, float *a3, float a4)
{
  sub_1CFD8CE6C();
  *&v8 = v8;
  v9 = *&v8 - a4;
  MEMORY[0x1D3874820](a1, &unk_1F4C7CB18, &unk_1F4C7CB58, 7);
  sub_1CFD8CE9C();
  v11 = v10;
  sub_1CFD8CE8C();
  result = v11 * 2222.0;
  *a2 = v11 * 2222.0;
  *a3 = fminf(fmaxf(1.0 - fminf(fmaxf((v9 + -2.8) / 1.2, 0.0), 1.0), 0.0), 1.0);
  return result;
}

uint64_t sub_1CFD8A268(uint64_t a1, uint64_t *a2, float a3, float a4)
{
  sub_1CFD8CE6C();
  *&v8 = v8;
  v9 = *&v8 - a4;
  MEMORY[0x1D3874820](a1, &unk_1F4C7CBC8, &unk_1F4C7CC08, 7);
  sub_1CFD8CE9C();
  sub_1CFD8CE8C();
  sub_1CFD8CEBC();
  v11 = v10;
  MEMORY[0x1D3874820](a1, &unk_1F4C7CC48, &unk_1F4C7CC88, 8);
  result = sub_1CFD8CE9C();
  v14 = (a3 * 2000.0) * ((v11 * v13) * fminf(fmaxf(1.0 - fminf(fmaxf((v9 + -2.8) / 1.7, 0.0), 1.0), 0.0), 1.0));
  if ((LODWORD(v14) & 0x7FFFFFFFu) >= 0x7F800000)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v14 <= -9.2234e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v14 < 9.2234e18)
  {
    v15 = v14;
    result = sub_1CFD8CE8C();
    *a2 = v15;
    a2[1] = v15;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

float sub_1CFD8A3E8(uint64_t a1, float *a2, float *a3, float a4)
{
  sub_1CFD8CE6C();
  *&v8 = v8;
  v9 = *&v8 - a4;
  MEMORY[0x1D3874820](a1, &unk_1F4C7CCF8, &unk_1F4C7CD38, 7);
  sub_1CFD8CE9C();
  v11 = v10;
  sub_1CFD8CE8C();
  result = (v11 * 3333.0) + 1111.0;
  *a2 = result;
  *a3 = fminf(fmaxf(1.0 - fminf(fmaxf((v9 + -2.8) / 1.2, 0.0), 1.0), 0.0), 1.0);
  return result;
}

unint64_t sub_1CFD8A4D8(uint64_t a1, uint64_t a2)
{
  sub_1CFD8D31C();
  sub_1CFD8D28C();
  v4 = sub_1CFD8D33C();

  return sub_1CFD8A9A4(a1, a2, v4);
}

uint64_t sub_1CFD8A550(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC508C48);
  v35 = a2;
  result = sub_1CFD8D2DC();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v35 & 1) == 0)
      {

        v25 = v24;
      }

      sub_1CFD8D31C();
      sub_1CFD8D28C();
      result = sub_1CFD8D33C();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v34;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1CFD8A7F4(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1CFD8D2AC() + 1) & ~v5;
    do
    {
      sub_1CFD8D31C();

      sub_1CFD8D28C();
      v9 = sub_1CFD8D33C();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_1CFD8A9A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_1CFD8D2EC())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

id sub_1CFD8AA5C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC508C48);
  v2 = *v0;
  v3 = sub_1CFD8D2CC();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        result = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_1CFD8ABC8(uint64_t a1, float32x4_t a2, uint64_t a3, float *a4)
{
  MEMORY[0x1D3874870](a1, MEMORY[0x1E69E7CC0] + 32, MEMORY[0x1E69E7CC0] + 32, 0, 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC508C70);
  v6 = swift_allocObject();
  v6[2] = xmmword_1CFD90F70;
  v6[3] = xmmword_1CFD91AE0;
  v6[4] = xmmword_1CFD91AF0;
  v6[5] = xmmword_1CFD90F70;
  MEMORY[0x1D3874870](a1, v6 + 2, &unk_1F4C7CAE8, 4, 1);
  swift_setDeallocating();
  swift_deallocClassInstance();
  v7 = vaddq_f32(a2, a2);
  if (v7.f32[0] <= v7.f32[1])
  {
    if (v7.f32[1] > v7.f32[0])
    {
LABEL_5:
      sub_1CFD8CE5C();
      v8 = 1.0;
      goto LABEL_8;
    }
  }

  else if (v7.f32[1] > v7.f32[0])
  {
    goto LABEL_5;
  }

  v10 = v7.f32[2];
  v12 = v7.f32[0];
  sub_1CFD8CE5C();
  v8 = 1.0;
  if (v10 <= v12)
  {
    v8 = 1.66;
  }

LABEL_8:
  sub_1CFD8CEAC();
  sub_1CFD8CEDC();
  sub_1CFD8CEDC();
  sub_1CFD8CEAC();
  *a4 = v8;

  return sub_1CFD8CEDC();
}

uint64_t sub_1CFD8ADD0(uint64_t a1, float32x4_t a2, uint64_t a3, float *a4)
{
  MEMORY[0x1D3874870](a1, MEMORY[0x1E69E7CC0] + 32, MEMORY[0x1E69E7CC0] + 32, 0, 1);
  v6 = vaddq_f32(a2, a2);
  if (v6.f32[2] > v6.f32[0])
  {
    v7 = 1.0;
  }

  else
  {
    v7 = 2.0;
  }

  if (v6.f32[1] > v6.f32[0])
  {
    v7 = 1.0;
  }

  if (v6.f32[2] > v6.f32[0])
  {
    v8 = 1.0;
  }

  else
  {
    v8 = 2.0;
  }

  if (v6.f32[1] > v6.f32[0])
  {
    v8 = 1.0;
  }

  if (v6.f32[0] <= v6.f32[1])
  {
    v9 = v8;
  }

  else
  {
    v9 = v7;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC508C70);
  v10 = swift_allocObject();
  v10[2] = xmmword_1CFD91B30;
  v10[3] = xmmword_1CFD91B40;
  v10[4] = xmmword_1CFD91B50;
  v10[5] = xmmword_1CFD91B60;
  MEMORY[0x1D3874870](a1, v10 + 2, &unk_1F4C7CB98, 4, 1);
  swift_setDeallocating();
  swift_deallocClassInstance();
  sub_1CFD8CE5C();
  sub_1CFD8CE5C();
  sub_1CFD8CE5C();
  sub_1CFD8CE5C();
  sub_1CFD8CEAC();
  sub_1CFD8CEDC();
  sub_1CFD8CEDC();
  sub_1CFD8CEDC();
  sub_1CFD8CEDC();
  sub_1CFD8CEDC();
  sub_1CFD8CEAC();
  *a4 = v9;

  return sub_1CFD8CEDC();
}

uint64_t sub_1CFD8B0A4(uint64_t a1)
{
  MEMORY[0x1D3874870](a1, MEMORY[0x1E69E7CC0] + 32, MEMORY[0x1E69E7CC0] + 32, 0, 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC508C70);
  v2 = swift_allocObject();
  v2[2] = xmmword_1CFD90F70;
  v2[3] = xmmword_1CFD91B40;
  v2[4] = xmmword_1CFD91C30;
  v2[5] = xmmword_1CFD90F70;
  MEMORY[0x1D3874870](a1, v2 + 2, &unk_1F4C7CCC8, 4, 1);
  swift_setDeallocating();
  swift_deallocClassInstance();
  sub_1CFD8CE5C();
  sub_1CFD8CE5C();
  sub_1CFD8CEAC();
  sub_1CFD8CEDC();
  sub_1CFD8CEDC();
  sub_1CFD8CEDC();
  sub_1CFD8CEAC();

  return sub_1CFD8CEDC();
}

uint64_t type metadata accessor for Sparks()
{
  result = qword_1EC508C30;
  if (!qword_1EC508C30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1CFD8B3D0()
{
  v0 = sub_1CFD8CF6C();
  v43 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v2 = &v37 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC5089E8 != -1)
  {
    goto LABEL_29;
  }

  while (1)
  {
    v3 = off_1EC508C18;
    v42 = *(off_1EC508C18 + 2);
    if (!v42)
    {
      return MEMORY[0x1E69E7CC8];
    }

    v4 = objc_opt_self();
    v5 = 0;
    v40 = v3 + ((*(v43 + 80) + 32) & ~*(v43 + 80));
    v41 = v4;
    v38 = (v43 + 8);
    v39 = v43 + 16;
    v6 = MEMORY[0x1E69E7CC8];
    v37 = v3;
    while (v5 < v3[2])
    {
      (*(v43 + 16))(v2, &v40[*(v43 + 72) * v5], v0);

      v11 = sub_1CFD8CF4C();
      v13 = v12;
      v14 = [v41 valueWithPointer_];
      if (!v14)
      {
        v26 = sub_1CFD8A4D8(v11, v13);
        v28 = v27;

        if (v28)
        {
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v44 = v6;
          v30 = v6;
          if (!isUniquelyReferenced_nonNull_native)
          {
            sub_1CFD8AA5C();
            v30 = v44;
          }

          sub_1CFD8A7F4(v26, v30);

          (*v38)(v2, v0);
          v6 = v30;
        }

        else
        {
          (*v38)(v2, v0);
        }

        goto LABEL_6;
      }

      v15 = v14;
      v16 = v0;
      v17 = swift_isUniquelyReferenced_nonNull_native();
      v44 = v6;
      v18 = sub_1CFD8A4D8(v11, v13);
      v20 = v6[2];
      v21 = (v19 & 1) == 0;
      v22 = __OFADD__(v20, v21);
      v23 = v20 + v21;
      if (v22)
      {
        goto LABEL_27;
      }

      v24 = v19;
      if (v6[3] < v23)
      {
        sub_1CFD8A550(v23, v17);
        v18 = sub_1CFD8A4D8(v11, v13);
        if ((v24 & 1) != (v25 & 1))
        {
          result = sub_1CFD8D2FC();
          __break(1u);
          return result;
        }

LABEL_18:
        if ((v24 & 1) == 0)
        {
          goto LABEL_19;
        }

        goto LABEL_4;
      }

      if (v17)
      {
        goto LABEL_18;
      }

      v35 = v18;
      sub_1CFD8AA5C();
      v18 = v35;
      if ((v24 & 1) == 0)
      {
LABEL_19:
        v31 = v44;
        v44[(v18 >> 6) + 8] |= 1 << v18;
        v32 = (v31[6] + 16 * v18);
        *v32 = v11;
        v32[1] = v13;
        *(v31[7] + 8 * v18) = v15;

        v0 = v16;
        (*v38)(v2, v16);
        v33 = v31[2];
        v22 = __OFADD__(v33, 1);
        v34 = v33 + 1;
        if (v22)
        {
          goto LABEL_28;
        }

        v31[2] = v34;
        v6 = v31;
        goto LABEL_5;
      }

LABEL_4:
      v7 = v18;

      v8 = v44;
      v9 = v44[7];
      v10 = *(v9 + 8 * v7);
      *(v9 + 8 * v7) = v15;

      v0 = v16;
      (*v38)(v2, v16);
      v6 = v8;
LABEL_5:
      v3 = v37;
LABEL_6:
      if (v42 == ++v5)
      {
        return v6;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    swift_once();
  }
}

uint64_t sub_1CFD8B7E8(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_1CFD8B830(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC508C60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1CFD8B898()
{
  result = qword_1EC508C68;
  if (!qword_1EC508C68)
  {
    sub_1CFD8CF0C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC508C68);
  }

  return result;
}

uint64_t sub_1CFD8B924@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1CFD8D24C();
  v68 = *(v4 - 8);
  v69 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v62 = &v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1CFD8D18C();
  v61 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC508C90);
  MEMORY[0x1EEE9AC00](v63);
  v10 = &v60 - v9;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC508C98);
  MEMORY[0x1EEE9AC00](v64);
  v67 = &v60 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC508CA0);
  v73 = *(v12 - 8);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v66 = &v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v65 = &v60 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC508CA8);
  v17 = MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v60 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v60 - v20;
  v22 = *a1;
  v24 = *(a1 + 2);
  v23 = *(a1 + 3);
  v25 = *(a1 + 1);
  v26 = a1[33];
  v27 = *(a1 + 5);
  v28 = a1[32];
  v71 = v22;
  v72 = v26;
  if (v28 <= 1)
  {
    v70 = v12;
  }

  else if (v28 == 2)
  {
    v70 = v12;
  }

  else
  {
    if (v28 != 3)
    {
      sub_1CFD8C280(a1, v74);
      v53 = 1;
      goto LABEL_13;
    }

    v70 = v12;
  }

  if (v22 == 4)
  {
    sub_1CFD8C280(a1, v74);

    v53 = 1;
    v12 = v70;
  }

  else
  {
    sub_1CFD8C280(a1, v74);
    sub_1CFD8D19C();
    v29 = v61;
    (*(v61 + 104))(v8, *MEMORY[0x1E6981630], v6);
    v60 = sub_1CFD8D1AC();

    (*(v29 + 8))(v8, v6);
    v30 = sub_1CFD8D13C();
    KeyPath = swift_getKeyPath();
    v32 = v68;
    v33 = v69;
    v34 = MEMORY[0x1E6981DF0];
    if (v27 != 1)
    {
      v34 = MEMORY[0x1E6981DC0];
    }

    v35 = v62;
    (*(v68 + 104))(v62, *v34, v69);
    (*(v32 + 32))(&v10[*(v63 + 36)], v35, v33);
    *v10 = v60;
    *(v10 + 1) = 0;
    *(v10 + 8) = 1;
    *(v10 + 3) = KeyPath;
    *(v10 + 4) = v30;
    sub_1CFD8D22C();
    sub_1CFD8D00C();
    v36 = v10;
    v37 = v67;
    sub_1CFD8C328(v36, v67, &qword_1EC508C90);
    v38 = (v37 + *(v64 + 36));
    v39 = v74[1];
    *v38 = v74[0];
    v38[1] = v39;
    v38[2] = v74[2];
    v40 = sub_1CFD8D09C();
    sub_1CFD8CFEC();
    v42 = v41;
    v44 = v43;
    v46 = v45;
    v48 = v47;
    v49 = v66;
    sub_1CFD8C328(v37, v66, &qword_1EC508C98);
    v12 = v70;
    v50 = v49 + *(v70 + 36);
    *v50 = v40;
    *(v50 + 8) = v42;
    *(v50 + 16) = v44;
    *(v50 + 24) = v46;
    *(v50 + 32) = v48;
    *(v50 + 40) = 0;
    v51 = v49;
    v52 = v65;
    sub_1CFD8C328(v51, v65, &qword_1EC508CA0);
    sub_1CFD8C328(v52, v21, &qword_1EC508CA0);
    v53 = 0;
  }

LABEL_13:
  (*(v73 + 56))(v21, v53, 1, v12);
  v54 = v71;
  v55 = v27 != 1 && v71 == 4;
  v56 = v72 & 1;
  if (v55)
  {
    v57 = 0.36;
  }

  else
  {
    v57 = 1.0;
  }

  sub_1CFD8C2B8(v21, v19);
  *a2 = v54;
  *(a2 + 8) = v23;
  *(a2 + 16) = v24;
  *(a2 + 24) = v25;
  *(a2 + 32) = v56;
  *(a2 + 40) = v27;
  *(a2 + 48) = v57;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC508CB0);
  sub_1CFD8C2B8(v19, a2 + *(v58 + 48));
  sub_1CFD846D8(v27);
  sub_1CFD86E30(v21, &qword_1EC508CA8);
  sub_1CFD86E30(v19, &qword_1EC508CA8);
  return sub_1CFD84714(v27);
}

uint64_t sub_1CFD8C054()
{
  v1 = sub_1CFD8D05C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC508C78);
  MEMORY[0x1EEE9AC00](v5);
  v7 = (v12 - v6);
  v8 = v0[1];
  v12[0] = *v0;
  v12[1] = v8;
  v12[2] = v0[2];
  *v7 = sub_1CFD8D21C();
  v7[1] = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC508C80);
  sub_1CFD8B924(v12, v7 + *(v10 + 44));
  (*(v2 + 104))(v4, *MEMORY[0x1E697F3A0], v1);
  sub_1CFD8C21C();
  sub_1CFD8D0FC();
  (*(v2 + 8))(v4, v1);
  return sub_1CFD86E30(v7, &qword_1EC508C78);
}

unint64_t sub_1CFD8C21C()
{
  result = qword_1EC508C88;
  if (!qword_1EC508C88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC508C78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC508C88);
  }

  return result;
}

uint64_t sub_1CFD8C2B8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC508CA8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CFD8C328(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1CFD8C3A4()
{
  result = qword_1EC508CB8;
  if (!qword_1EC508CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC508CB8);
  }

  return result;
}

simd_float4x4 __invert_f4(simd_float4x4 a1)
{
  MEMORY[0x1EEE73560](a1.columns[0], a1.columns[1], a1.columns[2], a1.columns[3]);
  result.columns[3].i64[1] = v8;
  result.columns[3].i64[0] = v7;
  result.columns[2].i64[1] = v6;
  result.columns[2].i64[0] = v5;
  result.columns[1].i64[1] = v4;
  result.columns[1].i64[0] = v3;
  result.columns[0].i64[1] = v2;
  result.columns[0].i64[0] = v1;
  return result;
}

__double2 __sincos_stret(double a1)
{
  MEMORY[0x1EEE73570](a1);
  result.__cosval = v2;
  result.__sinval = v1;
  return result;
}

__float2 __sincosf_stret(float a1)
{
  MEMORY[0x1EEE73578](a1);
  result.__cosval = v2;
  result.__sinval = v1;
  return result;
}