void sub_11F8(id a1, NTKFace *a2, unint64_t a3, BOOL *a4)
{
  v5 = a2;
  if (a3 == 4 || a3 == 2)
  {
    v6 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:8 zOrder:4000];
    v12[0] = v6;
    v7 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:3 zOrder:4000];
    v12[1] = v7;
    v8 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:13 zOrder:4000];
    v12[2] = v8;
    v9 = v12;
  }

  else
  {
    if (a3)
    {
      v6 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:3 zOrder:4000];
      v11[0] = v6;
      v7 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:13 zOrder:4000];
      v11[1] = v7;
      v8 = [NSArray arrayWithObjects:v11 count:2];
      [(NTKFace *)v5 setCurationPlacements:v8];
      goto LABEL_8;
    }

    v6 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:8 zOrder:9000];
    v13[0] = v6;
    v7 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:3 zOrder:4000];
    v13[1] = v7;
    v8 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:13 zOrder:4000];
    v13[2] = v8;
    v9 = v13;
  }

  v10 = [NSArray arrayWithObjects:v9 count:3];
  [(NTKFace *)v5 setCurationPlacements:v10];

LABEL_8:
}

void sub_13DC(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_14A8;
  v7[3] = &unk_C3E8;
  v4 = *(a1 + 32);
  v5 = *(a1 + 48);
  v7[4] = *(a1 + 40);
  v8 = v5;
  v9 = v3;
  v10 = *(a1 + 56);
  v6 = v3;
  [v4 enumerateObjectsUsingBlock:v7];
}

void sub_14A8(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [*(a1 + 32) defaultFaceForDevice:*(a1 + 40)];
  if (v3)
  {
    v4 = [NTKPigmentEditOption pigmentNamed:*(a1 + 48)];
    [v3 selectOption:v4 forCustomEditMode:10 slot:0];
    v5 = +[NTKAnalogDialShapeEditOption optionWithShape:forDevice:](NTKAnalogDialShapeEditOption, "optionWithShape:forDevice:", [v6 unsignedIntValue], *(a1 + 40));
    [v3 selectOption:v5 forCustomEditMode:15 slot:0];
    [*(a1 + 56) addObject:v3];
  }
}

void sub_1E2C(id a1)
{
  qword_11FE0 = objc_alloc_init(NSCache);

  _objc_release_x1();
}

void sub_2230(id a1)
{
  qword_11FF0 = [[NTKCornerComplicationConfiguration alloc] initWithTopLeftComplication:36 topRightComplication:10 bottomLeftComplication:3 bottomRightComplication:7];

  _objc_release_x1();
}

void sub_301C(id a1, NSString *a2, NTKComplicationDisplayWrapperView *a3)
{
  v6 = a3;
  v3 = [(NTKComplicationDisplayWrapperView *)v6 display];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v5 = [(NTKComplicationDisplayWrapperView *)v6 display];
    [v5 updateMonochromeColor];
  }
}

void sub_3438(uint64_t a1, __int128 *a2, uint64_t a3)
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_3528;
  v5[3] = &unk_C560;
  v5[4] = *(a1 + 32);
  v5[5] = a3;
  v3 = a2[1];
  v6 = *a2;
  v7 = v3;
  v8 = a2[2];
  v4 = objc_retainBlock(v5);
  (v4[2])(v4, NTKComplicationSlotTopLeft);
  (v4[2])(v4, NTKComplicationSlotTopRight);
  (v4[2])(v4, NTKComplicationSlotBottomLeft);
  (v4[2])(v4, NTKComplicationSlotBottomRight);
}

void sub_3528(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) complicationLayoutforSlot:a2];
  v4 = [v3 defaultLayoutRuleForState:*(a1 + 40)];
  v5 = *(a1 + 64);
  v6[0] = *(a1 + 48);
  v6[1] = v5;
  v6[2] = *(a1 + 80);
  [v4 setContentTransform:v6];
}

id sub_424C()
{
  if (qword_12010 != -1)
  {
    sub_6020();
  }

  v1 = qword_12008;

  return v1;
}

double sub_4290(float a1, float32x4_t a2)
{
  v2 = vmulq_f32(a2, a2);
  *&v3 = v2.f32[2] + vaddv_f32(*v2.f32);
  *v2.f32 = vrsqrte_f32(v3);
  *v2.f32 = vmul_f32(*v2.f32, vrsqrts_f32(v3, vmul_f32(*v2.f32, *v2.f32)));
  v8 = vmulq_n_f32(a2, vmul_f32(*v2.f32, vrsqrts_f32(v3, vmul_f32(*v2.f32, *v2.f32))).f32[0]);
  v4 = __sincosf_stret(a1);
  v5 = v8;
  v6 = vmuls_lane_f32(v5.f32[0], *v5.f32, 1);
  v5.f32[0] = v4.__cosval + (vmulq_f32(v5, v5).f32[0] * (1.0 - v4.__cosval));
  v5.f32[1] = vmuls_lane_f32(v4.__sinval, v8, 2) + (v6 * (1.0 - v4.__cosval));
  return *v5.i64;
}

double sub_438C(float32x4_t _Q0)
{
  _S3 = _Q0.u32[1];
  _S5 = _Q0.u32[2];
  __asm { FMLS            S2, S5, V0.S[2] }

  _S7 = _Q0.u32[3];
  __asm { FMLA            S2, S7, V0.S[3] }

  v10 = vmuls_lane_f32(_Q0.f32[2], _Q0, 3);
  LODWORD(v11) = _S2;
  *(&v11 + 1) = (v10 + (_Q0.f32[0] * _Q0.f32[1])) + (v10 + (_Q0.f32[0] * _Q0.f32[1]));
  __asm
  {
    FMLA            S6, S3, V0.S[1]
    FMLA            S6, S7, V0.S[3]
    FMLA            S16, S5, V0.S[1]
    FMLA            S6, S5, V0.S[2]
    FMLS            S5, S3, V0.S[1]
  }

  return v11;
}

void sub_5F70(id a1)
{
  qword_12008 = [NSBundle bundleForClass:objc_opt_class()];

  _objc_release_x1();
}

void sub_6034(uint64_t a1)
{
  v1 = *(a1 + 16);
  v3[0] = 138412802;
  sub_5FCC();
  v4 = 0;
  _os_log_fault_impl(&dword_0, v2, OS_LOG_TYPE_FAULT, "Failed to create %@ shader for device %@ due to error: %@", v3, 0x20u);
}

void sub_60C4(uint64_t *a1)
{
  v1 = *a1;
  v3[0] = 138412802;
  sub_5FCC();
  v4 = 0;
  _os_log_fault_impl(&dword_0, v2, OS_LOG_TYPE_FAULT, "Failed to create %@ State for device %@ due to error: %@", v3, 0x20u);
}

void sub_614C(uint64_t *a1)
{
  v1 = *a1;
  v4[0] = 138412802;
  sub_5FCC();
  v5 = v2;
  _os_log_fault_impl(&dword_0, v3, OS_LOG_TYPE_FAULT, "Failed to create %@ texture for device %@ due to error: %@", v4, 0x20u);
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