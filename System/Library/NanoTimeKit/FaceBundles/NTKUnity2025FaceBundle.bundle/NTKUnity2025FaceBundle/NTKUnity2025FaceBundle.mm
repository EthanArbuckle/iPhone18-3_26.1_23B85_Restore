void sub_23C09A6E4(uint64_t a1, void *a2, uint64_t a3)
{
  v29[4] = *MEMORY[0x277D85DE8];
  v5 = a2;
  switch(a3)
  {
    case 2:
      v20 = [MEMORY[0x277D2C020] placementWithWatchOS12Group:12 zOrder:4000];
      v21 = [MEMORY[0x277D2C020] placementWithWatchOS12Group:3 zOrder:{4000, v20}];
      v27[1] = v21;
      v22 = [MEMORY[0x277D2C020] placementWithWatchOS12Group:17 zOrder:4000];
      v27[2] = v22;
      v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:3];
      [v5 setCurationPlacements:v23];

      if (*(a1 + 48) != 1)
      {
        break;
      }

      v11 = [v5 curationPlacements];
      v14 = MEMORY[0x277D2C020];
      goto LABEL_10;
    case 1:
      v15 = [MEMORY[0x277D2C020] placementWithWatchOS12Group:12 zOrder:4000];
      v28[0] = v15;
      v16 = [MEMORY[0x277D2C020] placementWithWatchOS12Group:13 zOrder:4000];
      v28[1] = v16;
      v17 = [MEMORY[0x277D2C020] placementWithWatchOS12Group:3 zOrder:4000];
      v28[2] = v17;
      v18 = [MEMORY[0x277D2C020] placementWithWatchOS12Group:17 zOrder:4000];
      v28[3] = v18;
      v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:4];
      [v5 setCurationPlacements:v19];

      if (*(a1 + 48) != 1)
      {
        break;
      }

      v11 = [v5 curationPlacements];
      v14 = MEMORY[0x277D2C020];
LABEL_10:
      v13 = 4000;
      goto LABEL_11;
    case 0:
      v6 = [MEMORY[0x277D2C020] placementWithWatchOS12Group:12 zOrder:4000];
      v29[0] = v6;
      v7 = [MEMORY[0x277D2C020] placementWithWatchOS12Group:13 zOrder:4000];
      v29[1] = v7;
      v8 = [MEMORY[0x277D2C020] placementWithWatchOS12Group:3 zOrder:4000];
      v29[2] = v8;
      v9 = [MEMORY[0x277D2C020] placementWithWatchOS12Group:17 zOrder:9000];
      v29[3] = v9;
      v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:4];
      [v5 setCurationPlacements:v10];

      if (*(a1 + 48) == 1)
      {
        v11 = [v5 curationPlacements];
        v12 = MEMORY[0x277D2C020];
        v13 = [*(a1 + 32) _newFacesGroupZOrderForDevice:*(a1 + 40)];
        v14 = v12;
LABEL_11:
        v24 = [v14 placementWithWatchOS12Group:1 zOrder:v13];
        v25 = [v11 arrayByAddingObject:v24];
        [v5 setCurationPlacements:v25];
      }

      break;
  }

  v26 = *MEMORY[0x277D85DE8];
}

void sub_23C09B464(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = [a3 display];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v3 transitionToMonochromeWithFraction:1.0];
  }
}

uint64_t sub_23C09BA08()
{
  qword_281459BB8 = objc_alloc_init(NTKUnity2025ChimesObserver);

  return MEMORY[0x2821F96F8]();
}

void sub_23C09BF58(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) device];
  sub_23C09C5B4(v4, v4);
  v6 = v5;

  memset(&v14, 0, sizeof(v14));
  CGAffineTransformMakeScale(&v14, v6, v6);
  v7 = *MEMORY[0x277D2BF08];
  v8 = [*(a1 + 40) complicationLayoutforSlot:*MEMORY[0x277D2BF08]];
  [*(a1 + 32) _circularComplicationCenterForSlot:v7 inFaceBounds:{*(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 80)}];
  v9 = [MEMORY[0x277D2C0D0] layoutRuleForState:a2 viewCenterInFaceBounds:0 position:1 editingAdjustment:0 wide:*(a1 + 48) forDevice:?];
  v13 = v14;
  [v9 setContentTransform:&v13];
  [v8 setDefaultLayoutRule:v9 forState:a2];
  v10 = *MEMORY[0x277D2BEE8];
  v11 = [*(a1 + 40) complicationLayoutforSlot:*MEMORY[0x277D2BEE8]];

  [*(a1 + 32) _circularComplicationCenterForSlot:v10 inFaceBounds:{*(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 80)}];
  v12 = [MEMORY[0x277D2C0D0] layoutRuleForState:a2 viewCenterInFaceBounds:1 position:1 editingAdjustment:0 wide:*(a1 + 48) forDevice:?];

  v13 = v14;
  [v12 setContentTransform:&v13];
  [v11 setDefaultLayoutRule:v12 forState:a2];
}

double sub_23C09C5B4(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&unk_27E1EE0F8);
  if (qword_27E1EE100)
  {
    v3 = qword_27E1EE100 == v2;
  }

  else
  {
    v3 = 0;
  }

  if (v3 && (v4 = [v2 version], v4 == qword_27E1EE108))
  {
    v5 = qword_27E1EE0E0;
  }

  else
  {
    qword_27E1EE100 = v2;
    qword_27E1EE108 = [v2 version];
    v5 = sub_23C09C69C(qword_27E1EE108, v2);
    qword_27E1EE0E0 = v5;
    qword_27E1EE0E8 = v6;
    qword_27E1EE0F0 = v7;
  }

  os_unfair_lock_unlock(&unk_27E1EE0F8);

  return *&v5;
}

double sub_23C09C69C(uint64_t a1, void *a2)
{
  v39[8] = *MEMORY[0x277D85DE8];
  v2 = a2;
  [v2 screenBounds];
  v4 = v3;
  [v2 screenBounds];
  v5 = [MEMORY[0x277CBBAF8] metricsWithDevice:v2 identitySizeClass:2];
  MEMORY[0x23EEC6520](v2);

  v38[0] = &unk_284EDE058;
  v38[1] = &unk_284EDE070;
  v39[0] = &unk_284EDE1C0;
  v39[1] = &unk_284EDE1D0;
  v38[2] = &unk_284EDE088;
  v38[3] = &unk_284EDE0A0;
  v39[2] = &unk_284EDE1E0;
  v39[3] = &unk_284EDE1F0;
  v38[4] = &unk_284EDE0B8;
  v38[5] = &unk_284EDE0D0;
  v39[4] = &unk_284EDE1F0;
  v39[5] = &unk_284EDE1D0;
  v38[6] = &unk_284EDE0E8;
  v38[7] = &unk_284EDE100;
  v39[6] = &unk_284EDE200;
  v39[7] = &unk_284EDE210;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v39 forKeys:v38 count:8];
  [v5 scaledValue:v6 withOverrides:84.0];
  v8 = v7;

  v36[0] = &unk_284EDE058;
  __asm { FMOV            V0.2D, #13.0 }

  v35 = _Q0;
  v14 = [MEMORY[0x277CCAE60] valueWithBytes:&v35 objCType:"{CGSize=dd}"];
  v37[0] = v14;
  v36[1] = &unk_284EDE070;
  __asm { FMOV            V0.2D, #14.0 }

  v34 = _Q0;
  v16 = [MEMORY[0x277CCAE60] valueWithBytes:&v34 objCType:"{CGSize=dd}"];
  v37[1] = v16;
  v36[2] = &unk_284EDE088;
  v33 = xmmword_23C0A09D0;
  v17 = [MEMORY[0x277CCAE60] valueWithBytes:&v33 objCType:"{CGSize=dd}"];
  v37[2] = v17;
  v36[3] = &unk_284EDE0A0;
  v32 = xmmword_23C0A09E0;
  v18 = [MEMORY[0x277CCAE60] valueWithBytes:&v32 objCType:"{CGSize=dd}"];
  v37[3] = v18;
  v36[4] = &unk_284EDE0B8;
  v31 = xmmword_23C0A09F0;
  v19 = [MEMORY[0x277CCAE60] valueWithBytes:&v31 objCType:"{CGSize=dd}"];
  v37[4] = v19;
  v36[5] = &unk_284EDE0D0;
  v30 = xmmword_23C0A0A00;
  v20 = [MEMORY[0x277CCAE60] valueWithBytes:&v30 objCType:"{CGSize=dd}"];
  v37[5] = v20;
  v36[6] = &unk_284EDE0E8;
  v29 = xmmword_23C0A0A10;
  v21 = [MEMORY[0x277CCAE60] valueWithBytes:&v29 objCType:"{CGSize=dd}"];
  v37[6] = v21;
  v36[7] = &unk_284EDE100;
  v28 = xmmword_23C0A09F0;
  v22 = [MEMORY[0x277CCAE60] valueWithBytes:&v28 objCType:"{CGSize=dd}"];
  v37[7] = v22;
  v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v37 forKeys:v36 count:8];
  [v5 scaledSize:v23 withOverrides:{13.0, 13.0}];
  v25 = v24;

  v26 = *MEMORY[0x277D85DE8];
  return v4 * 0.5 - v8 * 0.5 * 0.5 - v25 * 0.5;
}

void getHourAndMinuteFromDate(void *a1, uint64_t *a2, void *a3)
{
  v5 = MEMORY[0x277CBEA80];
  v6 = a1;
  v11 = [v5 currentCalendar];
  v7 = [v11 components:96 fromDate:v6];

  *a2 = [v7 hour];
  *a3 = [v7 minute];
  v8 = [MEMORY[0x277CBEAF8] currentLocale];
  if ((CLKLocaleIs24HourMode() & 1) == 0)
  {
    v9 = *a2;
    if (*a2)
    {
      if (v9 < 13)
      {
        goto LABEL_7;
      }

      v10 = v9 - 12;
    }

    else
    {
      v10 = 12;
    }

    *a2 = v10;
  }

LABEL_7:
}

void sub_23C09CCB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_23C09CCCC(uint64_t a1, void *a2, id *a3)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained updateImageIfHourChanged:*a3];
}

uint64_t NTKUnity2025SettingIndexFromColorwayName(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1 && [v1 length])
  {
    v3 = [v2 characterAtIndex:{objc_msgSend(v2, "length") - 1}];
    if (v3 >= 53)
    {
      v3 = 53;
    }

    if (v3 <= 48)
    {
      v3 = 48;
    }

    v4 = (v3 - 48);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id generateColorArray(int a1)
{
  v14[3] = *MEMORY[0x277D85DE8];
  if (a1 <= 2)
  {
    if (a1 == 1)
    {
      v1 = NTKColorWithRGBA();
      v13 = v1;
      v2 = MEMORY[0x277CBEA60];
      v3 = &v13;
      goto LABEL_12;
    }

    if (a1 == 2)
    {
      v1 = NTKColorWithRGBA();
      v12 = v1;
      v2 = MEMORY[0x277CBEA60];
      v3 = &v12;
      goto LABEL_12;
    }
  }

  else
  {
    switch(a1)
    {
      case 3:
        v1 = NTKColorWithRGBA();
        v11 = v1;
        v2 = MEMORY[0x277CBEA60];
        v3 = &v11;
        goto LABEL_12;
      case 4:
        v1 = NTKColorWithRGBA();
        v10 = v1;
        v2 = MEMORY[0x277CBEA60];
        v3 = &v10;
        goto LABEL_12;
      case 5:
        v1 = NTKColorWithRGBA();
        v9 = v1;
        v2 = MEMORY[0x277CBEA60];
        v3 = &v9;
LABEL_12:
        v4 = [v2 arrayWithObjects:v3 count:1];
        goto LABEL_13;
    }
  }

  v1 = NTKColorWithRGBA();
  v14[0] = v1;
  v7 = NTKColorWithRGBA();
  v14[1] = v7;
  v8 = NTKColorWithRGBA();
  v14[2] = v8;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:3];

LABEL_13:
  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

uint64_t sub_23C09D5AC()
{
  qword_27E1EE110 = objc_alloc_init(MEMORY[0x277CBEA78]);

  return MEMORY[0x2821F96F8]();
}

id sub_23C09DC80()
{
  if (qword_27E1EE428 != -1)
  {
    sub_23C09FADC();
  }

  v1 = qword_27E1EE420;

  return v1;
}

void *sub_23C09E64C(uint64_t a1)
{
  result = *(a1 + 32);
  if (!*(result + 12 * *(a1 + 40) + 14))
  {
    return [result loadMesh:?];
  }

  return result;
}

void *sub_23C09E67C(uint64_t a1)
{
  result = *(a1 + 32);
  if (!result[134])
  {
    return [result loadMesh:10];
  }

  return result;
}

uint64_t sub_23C09F71C()
{
  qword_27E1EE420 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];

  return MEMORY[0x2821F96F8]();
}

void sub_23C09F778(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_fault_impl(a1, a2, OS_LOG_TYPE_FAULT, a4, &a9, 2u);
}

float NTKUnity2025MathNormalizeRotation(float result)
{
    ;
  }

    ;
  }

  return result;
}

double NTKUnity2025MathBuildEulerRotationMatrix(float a1, float a2, float a3)
{
  __sincosf_stret(a2);
  cosval = __sincosf_stret(a1).__cosval;
  v6 = __sincosf_stret(a3);
  *&v7 = cosval * v6.__cosval;
  *(&v7 + 1) = cosval * v6.__sinval;
  return v7;
}

double NTKUnity2025MathMatrixTranslate()
{
  __asm { FMOV            V3.4S, #1.0 }

  *&result = 1065353216;
  return result;
}

float NTKUnity2025MathSpringStep(float *a1, float *a2, float a3, float a4, float a5)
{
  v5 = *a2 + ((-(*a2 * a4) - (a3 * *a1)) * a5);
  result = *a1 + (*a2 * a5);
  *a2 = v5;
  *a1 = result;
  return result;
}

double NTKUnity2025MathSpringStep2(float32x2_t *a1, float32x2_t *a2, float32x2_t a3, int32x2_t a4, float a5)
{
  v5 = COERCE_DOUBLE(vmla_n_f32(*a1, *a2, a5));
  *a2 = vmla_n_f32(*a2, vmls_lane_f32(vmul_f32(*a2, vneg_f32(vdup_lane_s32(a4, 0))), *a1, a3, 0), a5);
  *a1 = v5;
  return v5;
}

double NTKUnity2025MathSpringStep3(float32x4_t *a1, float32x4_t *a2, float32x2_t a3, int32x2_t a4, float a5)
{
  v5 = vmlaq_n_f32(*a1, *a2, a5);
  *a2 = vmlaq_n_f32(*a2, vmlsq_lane_f32(vmulq_f32(*a2, vnegq_f32(vdupq_lane_s32(a4, 0))), *a1, a3, 0), a5);
  *a1 = v5;
  return *v5.i64;
}

float NTKUnity2025MathSpringImpulse(float *a1, float a2)
{
  result = *a1 + a2;
  *a1 = result;
  return result;
}

float NTKUnity2025MathSmoothMove(float *a1, float a2, float a3, float a4, float a5, float a6)
{
  v6 = a3 - a2;
  v7 = *a1 + ((-(*a1 * a6) - (a5 * v6)) * a4);
  v8 = v6 + (*a1 * a4);
  *a1 = v7;
  return a3 - v8;
}

__n128 NTKUnity2025MathLinearizeRGBColor(__n128 a1)
{
  v1 = [MEMORY[0x277D75348] colorWithRed:a1.n128_f32[0] green:a1.n128_f32[1] blue:a1.n128_f32[2] alpha:1.0];
  CLKUIConvertToRGBfFromUIColor();
  v4 = v2;

  return v4;
}

void sub_23C09FC28(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v4[0] = 138412546;
  sub_23C09F7A0();
  _os_log_fault_impl(&dword_23C099000, v2, OS_LOG_TYPE_FAULT, "Unity2025: Failed to create %@ shader for device %@", v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

void sub_23C09FCB4(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v4[0] = 138412546;
  sub_23C09F7A0();
  _os_log_fault_impl(&dword_23C099000, v2, OS_LOG_TYPE_FAULT, "Unity2025: Failed to create %@ shader for device %@", v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

__float2 __sincosf_stret(float a1)
{
  MEMORY[0x2822043C8](a1);
  result.__cosval = v2;
  result.__sinval = v1;
  return result;
}