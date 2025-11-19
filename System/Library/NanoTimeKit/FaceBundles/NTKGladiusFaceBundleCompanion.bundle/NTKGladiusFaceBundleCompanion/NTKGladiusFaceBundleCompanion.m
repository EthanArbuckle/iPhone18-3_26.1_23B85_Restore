id sub_1AB8(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&unk_2A350);
  if (qword_2A358)
  {
    v3 = qword_2A358 == v2;
  }

  else
  {
    v3 = 0;
  }

  if (!v3 || (v4 = [v2 version], v4 != qword_2A360))
  {
    qword_2A358 = v2;
    qword_2A360 = [v2 version];
    v5 = _EnumValueRange();
    v6 = qword_2A348;
    qword_2A348 = v5;
  }

  v7 = qword_2A348;
  os_unfair_lock_unlock(&unk_2A350);

  return v7;
}

void sub_1C84(uint64_t a1)
{
  v2 = +[NSMutableDictionary dictionary];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = *(a1 + 32);
  v4 = objc_opt_class();
  v5 = [*(a1 + 32) device];
  v6 = [v4 _orderedValuesForDevice:v5];

  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        v12 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"style %lu", [v11 unsignedIntValue]);
        [v2 setObject:v12 forKeyedSubscript:v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v13 = qword_2A368;
  qword_2A368 = v2;
}

id sub_1E30(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&unk_2A380);
  if (qword_2A388)
  {
    v3 = qword_2A388 == v2;
  }

  else
  {
    v3 = 0;
  }

  if (!v3 || (v4 = [v2 version], v4 != qword_2A390))
  {
    qword_2A388 = v2;
    qword_2A390 = [v2 version];
    v5 = qword_2A378;
    qword_2A378 = &off_21668;
  }

  v6 = qword_2A378;
  os_unfair_lock_unlock(&unk_2A380);

  return v6;
}

void sub_1FF4(uint64_t a1)
{
  v2 = +[NSMutableDictionary dictionary];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = *(a1 + 32);
  v4 = objc_opt_class();
  v5 = [*(a1 + 32) device];
  v6 = [v4 _orderedValuesForDevice:v5];

  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        v12 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"light %lu", [v11 unsignedIntValue]);
        [v2 setObject:v12 forKeyedSubscript:v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v13 = qword_2A398;
  qword_2A398 = v2;
}

void sub_2F84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2FA8(uint64_t a1, void *a2, id *a3)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateDateOverrideAnimationWithStopTime:*(a1 + 40)];
}

void sub_380C(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) layoutRuleForComplicationState:a2 layoutOverride:0];
  v5 = *(a1 + 56);
  v6[0] = *(a1 + 40);
  v6[1] = v5;
  v6[2] = *(a1 + 72);
  [v4 setContentTransform:v6];
  [*(a1 + 32) setDefaultLayoutRule:v4 forState:a2];
}

void sub_4FB4(id a1)
{
  qword_2A3A8 = objc_alloc_init(NSCache);

  _objc_release_x1();
}

void sub_4FF0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = a2;
  [v4 bounds];
  [v3 drawInRect:?];
  v7 = [*(a1 + 40) layer];
  v6 = [v5 CGContext];

  [v7 renderInContext:v6];
}

double sub_52E8(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&unk_2A3D0);
  if (qword_2A3D8)
  {
    v3 = qword_2A3D8 == v2;
  }

  else
  {
    v3 = 0;
  }

  if (v3 && (v4 = [v2 version], v4 == qword_2A3E0))
  {
    v5 = qword_2A3B8;
  }

  else
  {
    qword_2A3D8 = v2;
    qword_2A3E0 = [v2 version];
    v5 = sub_53D0(qword_2A3E0, v2);
    qword_2A3B8 = v5;
    qword_2A3C0 = v6;
    qword_2A3C8 = v7;
  }

  os_unfair_lock_unlock(&unk_2A3D0);

  return *&v5;
}

double sub_53D0(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [CLKUIAnalogHandConfiguration defaultHourConfigurationForDevice:v2];
  [v3 pegRadius];
  [v3 pegStrokeWidth];
  [NTKGladiusDialView longHourTickRadiusForDevice:v2];

  return 0.0;
}

void sub_7004(id *a1, void *a2, uint64_t a3)
{
  v5 = *(a1[4] + 1);
  v6 = a2;
  sub_73B8(v5, v14);
  v7 = v14[a3 + 315];
  [a1[4] _hourTickLengthAtIndex:a3 forStyle:*(a1[4] + 6)];
  CLKInterpolateBetweenFloatsClipped();
  v9 = [UIColor colorWithWhite:1.0 alpha:v8];
  v10 = [*(a1[4] + 7) hourTickDay];
  v11 = *(a1[4] + 8);
  v12 = NTKInterpolateBetweenColors();

  [a1[5] addObject:v12];
  [v6 setBackgroundColor:{objc_msgSend(a1[6], "CGColor")}];
  v15[0] = [v12 CGColor];
  v15[1] = [a1[7] CGColor];
  v13 = [NSArray arrayWithObjects:v15 count:2];
  [v6 setColors:v13];
}

void sub_73B8(void *a1@<X1>, void *a2@<X8>)
{
  v5 = a1;
  os_unfair_lock_lock(&unk_2AE28);
  if (qword_2AE30)
  {
    v3 = qword_2AE30 == v5;
  }

  else
  {
    v3 = 0;
  }

  if (!v3 || (v4 = [v5 version], v4 != qword_2AE38))
  {
    qword_2AE30 = v5;
    qword_2AE38 = [v5 version];
    sub_7490(v5, __src);
    memcpy(&unk_2A3E8, __src, 0xA40uLL);
  }

  memcpy(a2, &unk_2A3E8, 0xA40uLL);
  os_unfair_lock_unlock(&unk_2AE28);
}

void sub_7490(void *a1@<X1>, uint64_t a2@<X8>)
{
  v3 = a1;
  *(a2 + 40) = 0u;
  *(a2 + 56) = 0u;
  *(a2 + 72) = 0u;
  *(a2 + 88) = 0u;
  *(a2 + 104) = 0u;
  *(a2 + 120) = 0u;
  *(a2 + 136) = 0u;
  *(a2 + 152) = 0u;
  *(a2 + 168) = 0u;
  *(a2 + 184) = 0u;
  *(a2 + 200) = 0u;
  *(a2 + 216) = 0u;
  *(a2 + 232) = 0u;
  *(a2 + 248) = 0u;
  *(a2 + 24) = 0u;
  *(a2 + 504) = 0;
  *(a2 + 264) = 0u;
  *(a2 + 280) = 0u;
  *(a2 + 296) = 0u;
  *(a2 + 312) = 0u;
  *(a2 + 328) = 0u;
  *(a2 + 344) = 0u;
  *(a2 + 360) = 0u;
  *(a2 + 376) = 0u;
  *(a2 + 392) = 0u;
  *(a2 + 408) = 0u;
  *(a2 + 424) = 0u;
  *(a2 + 440) = 0u;
  *(a2 + 456) = 0u;
  *(a2 + 472) = 0u;
  *(a2 + 488) = 0u;
  v4 = [CLKDeviceMetrics metricsWithDevice:v3 identitySizeClass:2];
  *a2 = xmmword_16BA0;
  [v4 scaledValue:7.0];
  *(a2 + 16) = v5;
  [v3 screenBounds];
  CLKRectGetCenter();
  v37 = v7;
  v38 = v6;
  [v3 screenBounds];
  CGRectGetMidY(v45);
  v43[0] = &off_21518;
  v43[1] = &off_21530;
  v44[0] = &off_216F8;
  v44[1] = &off_21708;
  v43[2] = &off_21548;
  v43[3] = &off_21560;
  v44[2] = &off_21718;
  v44[3] = &off_21728;
  v8 = [NSDictionary dictionaryWithObjects:v44 forKeys:v43 count:4];
  [v4 scaledValue:v8 withOverrides:87.0];

  v41[0] = &off_21518;
  v41[1] = &off_21530;
  v42[0] = &off_21708;
  v42[1] = &off_21738;
  v41[2] = &off_21548;
  v41[3] = &off_21560;
  v42[2] = &off_21748;
  v42[3] = &off_21758;
  v9 = [NSDictionary dictionaryWithObjects:v42 forKeys:v41 count:4];
  [v4 scaledValue:v9 withOverrides:84.0];

  v39[0] = &off_21518;
  v39[1] = &off_21530;
  v40[0] = &off_21768;
  v40[1] = &off_21778;
  v39[2] = &off_21548;
  v39[3] = &off_21560;
  v40[2] = &off_21788;
  v40[3] = &off_21798;
  v10 = [NSDictionary dictionaryWithObjects:v40 forKeys:v39 count:4];
  v33 = v4;
  [v4 scaledValue:v10 withOverrides:55.5];

  v35 = a2 + 2232;
  v36 = a2 + 2424;
  v11 = a2 + 2520;
  v12 = a2 + 2136;
  v13 = a2 + 1944;
  v14 = (a2 + 512);
  v15 = -60;
  v34 = a2;
  do
  {
    NTKScreenRadiusAtAngleWithInset();
    v17 = v16;
    NTKScreenRadiusAtAngleWithInset();
    v19 = v17 - v18;
    v20 = v17 + (v17 - v18) * -0.5;
    v21 = __sincos_stret((v15 + 60) * 0.104719755 + -1.57079633);
    *(a2 + 24) = (v15 + 60) * 0.104719755 + -1.57079633;
    *(a2 + 1464) = v19;
    *(v14 - 1) = v38 + v20 * v21.__cosval;
    *v14 = v37 + v20 * v21.__sinval;
    v22 = (v15 + 60) / 5u;
    if (!((v15 + 60) % 5u))
    {
      NTKScreenRadiusAtAngleWithInset();
      v24 = v23;
      v25 = v17 - v23;
      v26 = v17 - v25 * 0.5;
      *(v36 + 8 * v22) = v25;
      v27 = (v35 + 16 * v22);
      *v27 = v38 + v26 * v21.__cosval;
      v27[1] = v37 + v26 * v21.__sinval;
      *(v11 + 8 * v22) = v24;
      NTKScreenRadiusAtAngleWithInset();
      v29 = v28 - v24;
      v30 = v28 - (v28 - v24) * 0.5;
      *(v12 + 8 * v22) = v29;
      v31 = (v13 + 16 * v22);
      *v31 = v38 + v30 * v21.__cosval;
      v31[1] = v37 + v30 * v21.__sinval;
    }

    v14 += 2;
    a2 += 8;
  }

  while (!__CFADD__(v15++, 1));
  *(v34 + 2616) = 0x4008000000000000;
}

void sub_845C(id a1, NTKFace *a2, unint64_t a3, BOOL *a4)
{
  v5 = a2;
  v6 = v5;
  switch(a3)
  {
    case 2uLL:
      v13 = +[NTKComplication nullComplication];
      [(NTKFace *)v6 setComplication:v13 forSlot:NTKComplicationSlotSubdialBottom];

      v8 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:8 zOrder:4000];
      v15[0] = v8;
      v9 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:5 zOrder:4000];
      v15[1] = v9;
      v10 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:18 zOrder:4000];
      v15[2] = v10;
      v11 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:3 zOrder:4000];
      v15[3] = v11;
      v12 = v15;
      goto LABEL_7;
    case 1uLL:
      [(NTKFace *)v5 _setFaceGalleryComplicationTypesForSlots:&__NSDictionary0__struct];
      v8 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:8 zOrder:4000];
      v16[0] = v8;
      v9 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:5 zOrder:9000];
      v16[1] = v9;
      v10 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:18 zOrder:4000];
      v16[2] = v10;
      v11 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:3 zOrder:4000];
      v16[3] = v11;
      v12 = v16;
LABEL_7:
      v14 = [NSArray arrayWithObjects:v12 count:4];
      [(NTKFace *)v6 setCurationPlacements:v14];

      goto LABEL_8;
    case 0uLL:
      v7 = +[NTKComplication nullComplication];
      [(NTKFace *)v6 setComplication:v7 forSlot:NTKComplicationSlotSubdialBottom];

      v8 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:18 zOrder:4000];
      v17[0] = v8;
      v9 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:3 zOrder:4000];
      v17[1] = v9;
      v10 = [NSArray arrayWithObjects:v17 count:2];
      [(NTKFace *)v6 setCurationPlacements:v10];
LABEL_8:

      break;
  }
}

void sub_9394(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_93B8(uint64_t a1, void *a2, id *a3)
{
  v7 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = [WeakRetained lightingDelegate];
  [v6 lowFrequencyLightingTimerFired];
}

double sub_9838(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&unk_2AE58);
  if (qword_2AE60)
  {
    v3 = qword_2AE60 == v2;
  }

  else
  {
    v3 = 0;
  }

  if (v3 && (v4 = [v2 version], v4 == qword_2AE68))
  {
    v5 = qword_2AE40;
  }

  else
  {
    qword_2AE60 = v2;
    qword_2AE68 = [v2 version];
    v5 = sub_9920(qword_2AE68, v2);
    qword_2AE40 = v5;
    qword_2AE48 = v6;
    qword_2AE50 = v7;
  }

  os_unfair_lock_unlock(&unk_2AE58);

  return *&v5;
}

double sub_9920(uint64_t a1, uint64_t a2)
{
  v2 = [CLKDeviceMetrics metricsWithDevice:a2 identitySizeClass:2];
  [v2 scaledValue:6.0];
  v4 = v3;
  [v2 scaledValue:35.5];
  [v2 scaledValue:65.0];

  return v4;
}

__n128 sub_99B0(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_99C4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 36))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_99E4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 36) = v3;
  return result;
}

__n128 sub_9A3C(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_9A48(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_9A68(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

unint64_t sub_9AA4(int32x2_t a1, int32x2_t a2, int32x2_t a3, int32x2_t a4)
{
  *v4.f32 = vsub_f32(vzip1_s32(a4, a2), vzip1_s32(a3, a1));
  *v5.f32 = vsub_f32(vzip2_s32(a4, a2), vzip2_s32(a3, a1));
  v6 = vmul_f32(*v5.f32, vrev64_s32(*v4.f32));
  v7 = vsub_f32(v6, vdup_lane_s32(v6, 1));
  if (fabsf(*v7.i32) >= 0.000000001)
  {
    v10 = vsub_f32(a1, a3);
    v4.i64[1] = v4.i64[0];
    v5.i64[1] = v5.i64[0];
    v11 = vdivq_f32(vsubq_f32(vmulq_lane_f32(v4, v10, 1), vmulq_n_f32(v5, v10.f32[0])), vdupq_lane_s32(v7, 0));
    v12.i32[0] = vmovn_s32(vmvnq_s8(vcgtq_f32(xmmword_16BF0, v11))).u32[0];
    v12.i32[1] = vmovn_s32(vmvnq_s8(vcgtq_f32(v11, xmmword_16BF0))).i32[1];
    v9 = vmaxv_u16(v12) & 1;
    if ((vaddvq_s32(vandq_s8(vmovl_s16(v12), xmmword_16C00)) & 0xF) != 0)
    {
      v8 = 0;
    }

    else
    {
      v8 = v11.u32[0];
    }
  }

  else
  {
    v8 = 0;
    v9 = 1;
  }

  return v8 | (v9 << 32);
}

unint64_t sub_9B7C(uint64_t a1, double a2, double a3, float a4, int32x2_t a5, int32x2_t a6)
{
  v7 = vsub_f32(*&a3, *&a2);
  v8 = *(&a3 + 1);
  v9 = *(&a2 + 1);
  v10 = sqrtf(vmul_f32(v7, v7).f32[0] + ((*(&a3 + 1) - *(&a2 + 1)) * (*(&a3 + 1) - *(&a2 + 1))));
  v11 = v7.f32[0] / v10;
  v73 = v7.f32[0] / v10;
  v74 = v10;
  v12 = (*(&a3 + 1) - *(&a2 + 1)) / v10;
  v72 = a4;
  if ((a1 & 0x100000000) == 0)
  {
    a4 = *&a1;
  }

  v13 = (*(&a3 + 1) - *(&a2 + 1)) / v10;
  v14 = v12 * a4;
  v15 = a4;
  v16 = -(v11 * a4);
  *v17.i32 = *&a2 + (v12 * a4);
  *&v17.i32[1] = *(&a2 + 1) + v16;
  *v18.i32 = *&a3 + v14;
  *&v18.i32[1] = *(&a3 + 1) + v16;
  v19 = a5;
  v21 = sub_9AA4(a5, a6, v17, v18);
  if ((v21 & 0x100000000) != 0)
  {
    v23 = &_swiftEmptyArrayStorage;
  }

  else
  {
    v22 = v21;
    v23 = sub_A8A8(0, 1, 1, &_swiftEmptyArrayStorage);
    v25 = *(v23 + 2);
    v24 = *(v23 + 3);
    if (v25 >= v24 >> 1)
    {
      v23 = sub_A8A8((v24 > 1), v25 + 1, 1, v23);
    }

    *(v23 + 2) = v25 + 1;
    *&v23[4 * v25 + 32] = v22;
  }

  *v26.i32 = *&a2 - v14;
  *&v26.i32[1] = v9 - v16;
  *v27.i32 = *&a3 - v14;
  *&v27.i32[1] = v8 - v16;
  v28 = a6;
  v29 = sub_9AA4(v19, a6, v26, v27);
  if ((v29 & 0x100000000) != 0)
  {
    v31 = v13;
    v32 = v72;
  }

  else
  {
    v30 = v29;
    v31 = v13;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v23 = sub_A8A8(0, *(v23 + 2) + 1, 1, v23);
    }

    v32 = v72;
    v34 = *(v23 + 2);
    v33 = *(v23 + 3);
    if (v34 >= v33 >> 1)
    {
      v23 = sub_A8A8((v33 > 1), v34 + 1, 1, v23);
    }

    *(v23 + 2) = v34 + 1;
    *&v23[4 * v34 + 32] = v30;
  }

  v35 = sub_A194(*&a2, v32, v19, v28);
  if (v36 != -1)
  {
    v37 = v35;
    if (v36)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v23 = sub_A8A8(0, *(v23 + 2) + 1, 1, v23);
      }

      v39 = *(v23 + 2);
      v38 = *(v23 + 3);
      v40 = v38 >> 1;
      v41 = v39 + 1;
      if (v38 >> 1 <= v39)
      {
        v23 = sub_A8A8((v38 > 1), v39 + 1, 1, v23);
        v38 = *(v23 + 3);
        v40 = v38 >> 1;
      }

      *(v23 + 2) = v41;
      *&v23[4 * v39 + 32] = v37;
      v42 = v39 + 2;
      if (v40 < v42)
      {
        v23 = sub_A8A8((v38 > 1), v42, 1, v23);
      }

      v37 >>= 32;
    }

    else
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v23 = sub_A8A8(0, *(v23 + 2) + 1, 1, v23);
      }

      v41 = *(v23 + 2);
      v43 = *(v23 + 3);
      v42 = v41 + 1;
      if (v41 >= v43 >> 1)
      {
        v23 = sub_A8A8((v43 > 1), v41 + 1, 1, v23);
      }
    }

    *(v23 + 2) = v42;
    *&v23[4 * v41 + 32] = v37;
  }

  v44 = sub_A194(*&a3, v32, v19, v28);
  if (v45 == -1)
  {
    v47 = v73;
  }

  else
  {
    v46 = v44;
    v47 = v73;
    if (v45)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v23 = sub_A8A8(0, *(v23 + 2) + 1, 1, v23);
      }

      v49 = *(v23 + 2);
      v48 = *(v23 + 3);
      v50 = v48 >> 1;
      v51 = v49 + 1;
      if (v48 >> 1 <= v49)
      {
        v23 = sub_A8A8((v48 > 1), v49 + 1, 1, v23);
        v48 = *(v23 + 3);
        v50 = v48 >> 1;
      }

      *(v23 + 2) = v51;
      *&v23[4 * v49 + 32] = v46;
      v52 = v49 + 2;
      if (v50 < v52)
      {
        v23 = sub_A8A8((v48 > 1), v52, 1, v23);
      }

      v46 >>= 32;
    }

    else
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v23 = sub_A8A8(0, *(v23 + 2) + 1, 1, v23);
      }

      v51 = *(v23 + 2);
      v53 = *(v23 + 3);
      v52 = v51 + 1;
      if (v51 >= v53 >> 1)
      {
        v23 = sub_A8A8((v53 > 1), v51 + 1, 1, v23);
      }
    }

    *(v23 + 2) = v52;
    *&v23[4 * v51 + 32] = v46;
  }

  v54 = vsub_f32(v19, *&a2);
  v55 = (v47 * v54.f32[0]) + vmuls_lane_f32(v31, v54, 1);
  v56 = vabds_f32(v31 * v54.f32[0], vmuls_lane_f32(v47, v54, 1));
  if (v55 > 0.0 && v55 < v74 && v56 < v15)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v23 = sub_A8A8(0, *(v23 + 2) + 1, 1, v23);
    }

    v60 = *(v23 + 2);
    v59 = *(v23 + 3);
    if (v60 >= v59 >> 1)
    {
      v23 = sub_A8A8((v59 > 1), v60 + 1, 1, v23);
    }

    *(v23 + 2) = v60 + 1;
    *&v23[4 * v60 + 32] = 0;
  }

  v61 = vsub_f32(v28, *&a2);
  v62 = (v47 * v61.f32[0]) + vmuls_lane_f32(v31, v61, 1);
  v63 = vabds_f32(v31 * v61.f32[0], vmuls_lane_f32(v47, v61, 1));
  if (v62 <= 0.0 || v62 >= v74 || v63 >= v15)
  {
    v66 = *(v23 + 2);
    if (v66)
    {
      goto LABEL_65;
    }

LABEL_72:

    return v66;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v23 = sub_A8A8(0, *(v23 + 2) + 1, 1, v23);
  }

  v68 = *(v23 + 2);
  v67 = *(v23 + 3);
  v66 = v68 + 1;
  if (v68 >= v67 >> 1)
  {
    v23 = sub_A8A8((v67 > 1), v68 + 1, 1, v23);
  }

  *(v23 + 2) = v66;
  *&v23[4 * v68 + 32] = 1065353216;
  if (v68 == -1)
  {
    goto LABEL_72;
  }

LABEL_65:
  if (v66 == 1)
  {
    v66 = *(v23 + 8);

    return v66;
  }

  result = sub_A250(v23);
  if ((result & 0x100000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v70 = result;
    result = sub_A2A8(v23);
    if ((result & 0x100000000) == 0)
    {
      v71 = result;

      return v70 | (v71 << 32);
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_A194(float32x2_t a1, float a2, float32x2_t a3, float32x2_t a4)
{
  v4 = vsub_f32(a4, a3);
  v5 = sqrtf(vaddv_f32(vmul_f32(v4, v4)));
  v6 = vsub_f32(a1, a3);
  v7.i32[0] = v6.i32[0];
  v7.f32[1] = v4.f32[1] / v5;
  v4.i32[1] = v6.i32[1];
  v4.f32[0] = v4.f32[0] / v5;
  v8 = vadd_f32(vmul_f32(v6, v4), vrev64_s32(vmul_f32(v6, v7)));
  v9 = vsub_f32(vdup_lane_s32(v8, 1), vmul_f32(v8, v8)).f32[0];
  v10 = a2 * a2;
  result = 0;
  if (v10 >= v9)
  {
    v12 = sqrtf(v10 - v9);
    v13 = v8.f32[0] - v12;
    if (v5 >= (v8.f32[0] - v12))
    {
      v14 = v8.f32[0] + v12;
      if (v14 >= 0.0)
      {
        v15 = v13 / v5;
        if (v15 <= 0.0)
        {
          v15 = 0.0;
        }

        v16 = v14 / v5;
        if (v16 > 1.0)
        {
          v16 = 1.0;
        }

        return LODWORD(v15) | (LODWORD(v16) << 32);
      }
    }
  }

  return result;
}

unint64_t sub_A250(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = *(a1 + 32);
    v3 = v1 - 1;
    if (v1 != 1)
    {
      v4 = (a1 + 36);
      do
      {
        v5 = *v4++;
        v6 = v5;
        if (v5 < v2)
        {
          v2 = v6;
        }

        --v3;
      }

      while (v3);
    }

    v7 = LODWORD(v2);
  }

  else
  {
    v7 = 0;
  }

  return v7 | ((v1 == 0) << 32);
}

unint64_t sub_A2A8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = *(a1 + 32);
    v3 = v1 - 1;
    if (v1 != 1)
    {
      v4 = (a1 + 36);
      do
      {
        v5 = *v4++;
        v6 = v5;
        if (v2 < v5)
        {
          v2 = v6;
        }

        --v3;
      }

      while (v3);
    }

    v7 = LODWORD(v2);
  }

  else
  {
    v7 = 0;
  }

  return v7 | ((v1 == 0) << 32);
}

char *sub_A300(float32x2_t a1, float a2, float a3, float a4, float a5, float32x2_t a6, float a7, float a8)
{
  v10 = vrev64_s32(a1);
  v11 = vmul_n_f32(a1, a4 - a5);
  v96 = a4 - a5;
  v91 = COERCE_DOUBLE(vmul_n_f32(a1, a4));
  v12 = sub_9B7C(0x100000000, *&v11, v91, a2, vmul_n_f32(a6, -(a4 - a5)), vmul_n_f32(a6, -a8));
  if (v13 == -1 || (v13 & 1) == 0)
  {
    v15 = sub_A9AC(0, 1, 1, &_swiftEmptyArrayStorage);
    v17 = *(v15 + 2);
    v16 = *(v15 + 3);
    v18 = v17 + 1;
    v14 = 0.0;
  }

  else
  {
    v14 = *(&v12 + 1);
    v15 = sub_A9AC(0, 1, 1, &_swiftEmptyArrayStorage);
    v17 = *(v15 + 2);
    v16 = *(v15 + 3);
    v18 = v17 + 1;
  }

  if (v17 >= v16 >> 1)
  {
    v15 = sub_A9AC((v16 > 1), v18, 1, v15);
  }

  v19 = v96;
  *(v15 + 2) = v18;
  v20 = &v15[12 * v17];
  *(v20 + 4) = COERCE_UNSIGNED_INT(((v96 - a8) * v14) - v96) | (COERCE_UNSIGNED_INT((v96 - a8) - v96) << 32);
  v20[40] = 1;
  v22 = a1;
  v21 = a6;
  v23 = vsub_f32(0, a6);
  v24 = -a1.f32[0];
  v25 = a2 / v96;
  v26 = vmul_f32(v10, v23);
  v27 = vsub_f32(v26, vdup_lane_s32(v26, 1)).f32[0];
  v28 = a2 / v96;
  if (v27 != 0.0)
  {
    v29 = -a3;
    if (v27 > 0.0)
    {
      v29 = a3;
    }

    v88 = v27;
    v30.i32[0] = vdup_lane_s32(a1, 1).u32[0];
    v30.f32[1] = -a1.f32[0];
    v31 = vmul_n_f32(v30, v29);
    v32 = sub_9AA4(0, vmul_n_f32(v23, v96), v31, vadd_f32(v11, v31));
    v27 = v88;
    v24 = -a1.f32[0];
    v22 = a1;
    v21 = a6;
    v19 = v96;
    v28 = a2 / v96;
    if ((v32 & 0x100000000) == 0)
    {
      v28 = *&v32;
      if (v25 > *&v32)
      {
        v28 = a2 / v96;
      }
    }
  }

  v33 = v21.f32[1];
  v34 = vmul_f32(v11, v23);
  v35 = vadd_f32(v34, vdup_lane_s32(v34, 1));
  v36 = v19 * v19;
  v37 = (v19 * v19) - vmul_f32(v35, v35).f32[0];
  v38 = a2;
  v39 = a2 * a2;
  v40 = 1.0;
  if (v37 >= v39)
  {
    goto LABEL_17;
  }

  v41 = v35.f32[0] - sqrtf(v39 - v37);
  v42 = 1.0;
  if (v19 >= v41)
  {
    v42 = fminf(v41 / v19, 1.0);
  }

  if (vaddv_f32(vmul_f32(v23, v22)) >= 0.0 && ((v56 = fabsf(v27) * (v19 * v42), v28 < v42) ? (v57 = v56 <= a3) : (v57 = 1), v40 = v42, v57))
  {
    v58 = *(v15 + 3);
    v44 = v18 + 1;
    if (v18 >= v58 >> 1)
    {
      v85 = v21.f32[1];
      v90 = v24;
      v86 = sub_A9AC((v58 > 1), v18 + 1, 1, v15);
      v24 = v90;
      v33 = v85;
      v22 = a1;
      v21 = a6;
      v19 = v96;
      v15 = v86;
    }

    v45 = 0;
    v46 = -1;
  }

  else
  {
LABEL_17:
    v43 = *(v15 + 3);
    v44 = v18 + 1;
    if (v18 >= v43 >> 1)
    {
      v82 = v21.f32[1];
      v89 = v24;
      v83 = sub_A9AC((v43 > 1), v18 + 1, 1, v15);
      v24 = v89;
      v33 = v82;
      v22 = a1;
      v21 = a6;
      v19 = v96;
      v15 = v83;
    }

    v45 = COERCE_UNSIGNED_INT(0.0 - (v19 * v28)) | (COERCE_UNSIGNED_INT(0.0 - (v19 * v40)) << 32);
    v46 = 1;
  }

  v47 = v38;
  *(v15 + 2) = v44;
  v48 = &v15[12 * v18];
  *(v48 + 4) = v45;
  v48[40] = v46;
  v49 = vmuls_lane_f32(v21.f32[0], v22, 1) - (v22.f32[0] * v33);
  if (v49 != 0.0)
  {
    v51 = v33;
    v52 = -a3;
    if (v49 > 0.0)
    {
      v52 = a3;
    }

    v53.i32[0] = vdup_lane_s32(v22, 1).u32[0];
    v53.f32[1] = v24;
    v54 = vmul_n_f32(v53, v52);
    v55 = sub_9AA4(0, vmul_n_f32(v21, v19), v54, vadd_f32(v11, v54));
    if ((v55 & 0x100000000) != 0)
    {
      v50 = v25;
      v19 = v96;
      v22 = a1;
      v21 = a6;
      v33 = v51;
      goto LABEL_36;
    }

    v50 = *&v55;
    v19 = v96;
    v22 = a1;
    v21 = a6;
    v33 = v51;
    if (v25 <= *&v55)
    {
      goto LABEL_36;
    }
  }

  v50 = v25;
LABEL_36:
  v59 = vmul_f32(v11, v21);
  v60 = vadd_f32(v59, vdup_lane_s32(v59, 1));
  v61 = v36 - vmul_f32(v60, v60).f32[0];
  v62 = 1.0;
  if (v61 >= v39)
  {
    goto LABEL_40;
  }

  v63 = v60.f32[0] - sqrtf(v39 - v61);
  v64 = 1.0;
  if (v19 >= v63)
  {
    v64 = fminf(v63 / v19, 1.0);
  }

  if ((vmul_f32(v22, v21).f32[0] + (v22.f32[1] * v33)) >= 0.0 && ((v79 = fabsf(v49) * (v19 * v64), v50 < v64) ? (v80 = v79 <= a3) : (v80 = 1), v62 = v64, v80))
  {
    v66 = *(v15 + 2);
    v81 = *(v15 + 3);
    v67 = v66 + 1;
    if (v66 >= v81 >> 1)
    {
      v87 = sub_A9AC((v81 > 1), v66 + 1, 1, v15);
      v21 = a6;
      v19 = v96;
      v15 = v87;
    }

    v68 = 0;
    v69 = -1;
  }

  else
  {
LABEL_40:
    v66 = *(v15 + 2);
    v65 = *(v15 + 3);
    v67 = v66 + 1;
    if (v66 >= v65 >> 1)
    {
      v84 = sub_A9AC((v65 > 1), v66 + 1, 1, v15);
      v21 = a6;
      v19 = v96;
      v15 = v84;
    }

    v68 = COERCE_UNSIGNED_INT((v19 * v50) + 0.0) | (COERCE_UNSIGNED_INT((v19 * v62) + 0.0) << 32);
    v69 = 1;
  }

  *(v15 + 2) = v67;
  v70 = &v15[12 * v66];
  *(v70 + 4) = v68;
  v70[40] = v69;
  v71 = sub_9B7C(0x100000000, *&v11, v91, v47, vmul_n_f32(v21, v19), vmul_n_f32(v21, a7));
  if (v72 == -1 || (v72 & 1) == 0)
  {
    v75 = *(v15 + 2);
    v74 = *(v15 + 3);
    v76 = v75 + 1;
    v73 = 0.0;
  }

  else
  {
    v73 = *(&v71 + 1);
    v75 = *(v15 + 2);
    v74 = *(v15 + 3);
    v76 = v75 + 1;
  }

  if (v75 >= v74 >> 1)
  {
    v15 = sub_A9AC((v74 > 1), v76, 1, v15);
  }

  *(v15 + 2) = v76;
  v77 = &v15[12 * v75];
  *(v77 + 4) = COERCE_UNSIGNED_INT(v96 + ((a7 - v96) * v73)) | (COERCE_UNSIGNED_INT(v96 + (a7 - v96)) << 32);
  v77[40] = 1;
  return v15;
}

char *sub_A8A8(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_AABC(&qword_29C58, &qword_16C80);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

char *sub_A9AC(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_AABC(&qword_29C50, &qword_16C78);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 12);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  v14 = 12 * v8;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v14])
    {
      memmove(v12, v13, v14);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v14);
  }

  return v10;
}

uint64_t sub_AABC(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

char *sub_AB08(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_AABC(&qword_29C60, &qword_16C88);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

void sub_AC20(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t initializeBufferWithCopyOfBuffer for LineIntersection(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for LineIntersection(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
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

uint64_t storeEnumTagSinglePayload for LineIntersection(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_AD34()
{
  v0 = sub_129A0();
  sub_ADB4(v0, qword_2AE70);
  sub_AE18(v0, qword_2AE70);
  return sub_12990();
}

uint64_t *sub_ADB4(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t sub_AE18(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

float sub_AFC4(void *a1)
{
  v10 = 0.0;
  v8 = 0.0;
  v9 = 0.0;
  v7 = 0;
  [a1 getRed:&v10 green:&v9 blue:&v8 alpha:&v7];
  v3 = *(v1 + OBJC_IVAR____TtC29NTKGladiusFaceBundleCompanion14NTKGladiusQuad_renderer);
  if (v3)
  {
    *&v4 = v10;
    *&v5 = v9;
    *&v6 = __PAIR64__(v5, v4);
    result = v8;
    *(&v6 + 1) = LODWORD(result);
    *(v3 + 112) = v6;
  }

  return result;
}

id sub_B460()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NTKGladiusQuad();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for NTKGladiusQuad()
{
  result = qword_29D78;
  if (!qword_29D78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_B54C()
{
  sub_B5FC();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_B5FC()
{
  if (!qword_29F40)
  {
    type metadata accessor for GladiusUtilities.DateOverride();
    v0 = sub_12A10();
    if (!v1)
    {
      atomic_store(v0, &qword_29F40);
    }
  }
}

id sub_B654()
{
  v1 = v0;
  v2 = [objc_opt_self() currentDevice];
  v3 = objc_opt_self();
  result = [v3 defaultHourConfigurationForDevice:v2];
  if (!result)
  {
    __break(1u);
    goto LABEL_8;
  }

  v5 = result;
  result = [v3 defaultMinuteConfigurationForDevice:v2];
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v6 = result;
  result = [v3 defaultSecondConfigurationForDevice:v2];
  if (!result)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v7 = result;
  [v5 handWidth];
  v9 = v8;
  [v5 armLength];
  v11 = v9 + v10;
  [v5 handLength];
  v13 = v12 - v9;
  [v6 handLength];
  *&v9 = v14 - v9;
  [v5 handWidth];
  *&v15 = v15 * 0.5;
  v16 = *&v15 + -2.0;
  [v5 armWidth];
  v18 = v17 * 0.5;
  [v7 handLength];
  v20 = v19;
  [v7 tailLength];
  *&v21 = v21;
  v22 = *(v1 + OBJC_IVAR____TtC29NTKGladiusFaceBundleCompanion14NTKGladiusQuad_screenSize);
  v23 = *(v1 + OBJC_IVAR____TtC29NTKGladiusFaceBundleCompanion14NTKGladiusQuad_screenSize + 8) / v22;
  *v27 = v11;
  *&v27[1] = v13;
  v27[2] = LODWORD(v9);
  *&v27[3] = v16;
  *&v27[4] = v18;
  *&v27[5] = v20;
  *&v22 = v22 * 0.5;
  v27[6] = LODWORD(v21);
  *&v27[7] = v23;
  v27[8] = LODWORD(v22);
  type metadata accessor for GladiusRenderer();
  swift_allocObject();
  sub_120DC(v27);
  v25 = v24;

  v26 = *(v1 + OBJC_IVAR____TtC29NTKGladiusFaceBundleCompanion14NTKGladiusQuad_renderer);
  *(v1 + OBJC_IVAR____TtC29NTKGladiusFaceBundleCompanion14NTKGladiusQuad_renderer) = v25;
}

uint64_t sub_B898()
{
  v1 = sub_AABC(&unk_29F50, &qword_16DC0);
  v2 = *(*(v1 - 8) + 64);
  v3 = __chkstk_darwin(v1 - 8);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v20 - v6;
  v8 = *(v0 + OBJC_IVAR____TtC29NTKGladiusFaceBundleCompanion14NTKGladiusQuad_renderer);
  if (!v8)
  {
    return v8 != 0;
  }

  v9 = OBJC_IVAR____TtC29NTKGladiusFaceBundleCompanion14NTKGladiusQuad_dateOverride;
  swift_beginAccess();
  sub_BB0C(v0 + v9, v5, &unk_29F50, &qword_16DC0);

  sub_C79C(v7, v5);
  v20 = v11;
  v21 = v10;
  v13 = v12;
  sub_BB74(v5, &unk_29F50, &qword_16DC0);
  sub_BB0C(v7, v5, &unk_29F50, &qword_16DC0);
  swift_beginAccess();
  sub_BA9C(v5, v0 + v9);
  swift_endAccess();
  *&v14.f64[0] = v21;
  *&v14.f64[1] = v20;
  v8[8] = vsub_f32(vdup_n_s32(0x3FC90FDAu), vcvt_f32_f64(v14));
  *v14.f64 = v13;
  v8[9].f32[0] = 1.5708 - *v14.f64;
  result = swift_unknownObjectUnownedLoadStrong();
  if (result)
  {
    v16 = result;
    sub_11C08(1, v13);
    v18 = v17;

    sub_BB74(v7, &unk_29F50, &qword_16DC0);
    v19 = v18;
    v8[12].f32[0] = v19 * 1.5;

    return v8 != 0;
  }

  __break(1u);
  return result;
}

uint64_t sub_BA9C(uint64_t a1, uint64_t a2)
{
  v4 = sub_AABC(&unk_29F50, &qword_16DC0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_BB0C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_AABC(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_BB74(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_AABC(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t type metadata accessor for GladiusUtilities.DateOverride()
{
  result = qword_29E00;
  if (!qword_29E00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_BC80()
{
  sub_12920();
  if (v0 <= 0x3F)
  {
    sub_BCF4(319);
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_BCF4(uint64_t a1)
{
  if (!qword_29E10)
  {
    __chkstk_darwin(a1);
    sub_12920();
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_29E10);
    }
  }
}

id sub_BE14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v99 = a2;
  v100 = a1;
  v97 = a3;
  v5 = (*(*(sub_AABC(&unk_29F50, &qword_16DC0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (__chkstk_darwin)();
  v94 = (&v85 - v6);
  v7 = sub_12920();
  v98 = *(v7 - 8);
  v8 = *(v98 + 64);
  v9 = (__chkstk_darwin)();
  v92 = &v85 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v93 = &v85 - v12;
  v13 = __chkstk_darwin(v11);
  v15 = &v85 - v14;
  __chkstk_darwin(v13);
  v17 = &v85 - v16;
  v18 = sub_AABC(&qword_29D88, qword_16D70);
  v19 = *(*(v18 - 8) + 64);
  v20 = __chkstk_darwin(v18 - 8);
  v22 = &v85 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v20);
  v25 = &v85 - v24;
  v26 = __chkstk_darwin(v23);
  v28 = &v85 - v27;
  __chkstk_darwin(v26);
  v30 = &v85 - v29;
  v31 = type metadata accessor for GladiusUtilities.DateOverride();
  v32 = *(v31 - 8);
  v33 = *(v32 + 64);
  v34 = __chkstk_darwin(v31);
  v35 = __chkstk_darwin(v34);
  v36 = __chkstk_darwin(v35);
  v38 = &v85 - v37;
  __chkstk_darwin(v36);
  v95 = &v85 - v41;
  v96 = v32;
  if (a4 == 0.0)
  {
    sub_BB74(v100, &unk_29F50, &qword_16DC0);
    sub_D00C(v99, v30, &qword_29D88, qword_16D70);
    v42 = v98;
    if ((*(v98 + 48))(v30, 1, v7) == 1)
    {
      v43 = v30;
LABEL_7:
      sub_BB74(v43, &qword_29D88, qword_16D70);
      v50 = 1;
      v51 = v97;
      return (*(v96 + 56))(v51, v50, 1, v31);
    }

    v52 = v95;
    (*(v42 + 32))(v95, v30, v7);
    swift_storeEnumTagMultiPayload();
LABEL_21:
    v84 = v52;
    v51 = v97;
    sub_CEE8(v84, v97);
    v50 = 0;
    return (*(v96 + 56))(v51, v50, 1, v31);
  }

  v86 = v40;
  v87 = v25;
  v89 = v39;
  v90 = v17;
  v88 = v22;
  Current = CFAbsoluteTimeGetCurrent();
  v45 = v94;
  sub_BB0C(v100, v94, &unk_29F50, &qword_16DC0);
  v46 = (*(v32 + 48))(v45, 1, v31);
  v91 = v31;
  if (v46 != 1)
  {
    sub_CF4C(v45, v38);
    v53 = v28;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v54 = sub_AABC(&unk_29E40, "Xr");
      v55 = v98;
      v56 = *(v98 + 32);
      v57 = v7;
      v56(v53, &v38[*(v54 + 48)], v7);
      (*(v55 + 8))(v38, v7);
    }

    else
    {
      v55 = v98;
      v56 = *(v98 + 32);
      v57 = v7;
      v56(v53, v38, v7);
    }

    v70 = v99;
    v71 = v90;
    sub_CFB0(v45);
    (*(v55 + 56))(v53, 0, 1, v57);
    v94 = v56;
    v56(v71, v53, v57);
    v72 = sub_AABC(&unk_29E40, "Xr");
    v73 = v72[12];
    v74 = v89;
    (*(v55 + 16))(v89, v71, v57);
    v75 = v88;
    sub_BB0C(v70, v88, &qword_29D88, qword_16D70);
    v76 = *(v55 + 48);
    if (v76(v75, 1, v57) == 1)
    {
      result = [objc_opt_self() faceDate];
      if (!result)
      {
        goto LABEL_24;
      }

      v77 = result;
      v78 = v93;
      sub_12910();

      v74 = v89;
      sub_12900();
      sub_BB74(v100, &unk_29F50, &qword_16DC0);
      v79 = *(v98 + 8);
      v79(v90, v57);
      v79(v78, v57);
      if (v76(v75, 1, v57) != 1)
      {
        sub_BB74(v75, &qword_29D88, qword_16D70);
      }
    }

    else
    {
      sub_BB74(v100, &unk_29F50, &qword_16DC0);
      (*(v55 + 8))(v71, v57);
      v94((v74 + v73), v75, v57);
    }

    v80 = v72[20];
    *(v74 + v72[16]) = Current;
    *(v74 + v80) = a4;
    v81 = v99;
    v82 = v76(v99, 1, v57) != 1;
    v83 = v72[24];
    sub_BB74(v81, &qword_29D88, qword_16D70);
    *(v74 + v83) = v82;
    v31 = v91;
    swift_storeEnumTagMultiPayload();
    v69 = v74;
    goto LABEL_20;
  }

  sub_BB74(v45, &unk_29F50, &qword_16DC0);
  v47 = v98;
  v48 = v7;
  (*(v98 + 56))(v28, 1, 1, v7);
  sub_BB74(v28, &qword_29D88, qword_16D70);
  v49 = v99;
  v43 = v87;
  sub_BB0C(v99, v87, &qword_29D88, qword_16D70);
  if ((*(v47 + 48))(v43, 1, v7) == 1)
  {
    sub_BB74(v100, &unk_29F50, &qword_16DC0);
    sub_BB74(v49, &qword_29D88, qword_16D70);
    v31 = v91;
    goto LABEL_7;
  }

  v58 = *(v47 + 32);
  v59 = v15;
  v58(v15, v43, v48);
  result = [objc_opt_self() faceDate];
  if (result)
  {
    v61 = result;
    v62 = sub_AABC(&unk_29E40, "Xr");
    v63 = v62[12];
    v64 = v62[16];
    v65 = v62[20];
    v66 = v62[24];
    v67 = v92;
    sub_12910();

    sub_BB74(v100, &unk_29F50, &qword_16DC0);
    v68 = v86;
    v58(v86, v67, v48);
    v58((v68 + v63), v59, v48);
    *(v68 + v64) = Current;
    *(v68 + v65) = a4;
    sub_BB74(v99, &qword_29D88, qword_16D70);
    *(v68 + v66) = 1;
    v31 = v91;
    swift_storeEnumTagMultiPayload();
    v69 = v68;
LABEL_20:
    v52 = v95;
    sub_CEE8(v69, v95);
    goto LABEL_21;
  }

  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

id sub_C79C(uint64_t a1, uint64_t a2)
{
  v4 = sub_12920();
  v57 = *(v4 - 8);
  v58 = v4;
  v5 = *(v57 + 64);
  v6 = __chkstk_darwin(v4);
  v8 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v56 = &v52 - v10;
  v11 = __chkstk_darwin(v9);
  v55 = &v52 - v12;
  __chkstk_darwin(v11);
  v14 = &v52 - v13;
  v15 = sub_AABC(&unk_29F50, &qword_16DC0);
  v16 = *(*(v15 - 8) + 64);
  v17 = __chkstk_darwin(v15 - 8);
  v53 = &v52 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v20 = &v52 - v19;
  v21 = type metadata accessor for GladiusUtilities.DateOverride();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  v24 = __chkstk_darwin(v21);
  v26 = &v52 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v59 = &v52 - v27;
  v54 = a1;
  sub_BB0C(a2, a1, &unk_29F50, &qword_16DC0);
  sub_BB0C(a2, v20, &unk_29F50, &qword_16DC0);
  v52 = v22;
  v28 = v22;
  v29 = v21;
  if ((*(v28 + 48))(v20, 1, v21) == 1)
  {
    sub_BB74(v20, &unk_29F50, &qword_16DC0);
    result = [objc_opt_self() faceDate];
    if (result)
    {
      v31 = result;
      sub_12910();

      sub_CDA8();
      return (*(v57 + 8))(v8, v58);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v32 = v59;
    sub_CEE8(v20, v59);
    sub_CF4C(v32, v26);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v33 = sub_AABC(&unk_29E40, "Xr");
      v34 = v33[12];
      v35 = *&v26[v33[16]];
      v36 = *&v26[v33[20]];
      v37 = v26[v33[24]];
      v38 = v57;
      v39 = v58;
      v40 = *(v57 + 32);
      v41 = v55;
      v40(v55, v26, v58);
      v42 = v56;
      v40(v56, &v26[v34], v39);
      sub_CDA8();
      sub_CDA8();
      v43 = [objc_opt_self() functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
      v45 = (CFAbsoluteTimeGetCurrent() - v35) / v36;
      v44 = v45;
      *&v45 = fminf(v44, 1.0);
      if (*&v45 < 0.0)
      {
        *&v45 = 0.0;
      }

      [v43 _solveForInput:v45];
      CLKInterpolateShortestPathBetweenAnglesUnclipped();
      CLKInterpolateShortestPathBetweenAnglesUnclipped();
      CLKInterpolateShortestPathBetweenAnglesUnclipped();

      v46 = *(v38 + 8);
      v46(v41, v39);
      sub_CFB0(v59);
      if (v44 >= 1.0)
      {
        v49 = v54;
        sub_BB74(v54, &unk_29F50, &qword_16DC0);
        if (v37)
        {
          v50 = v53;
          v40(v53, v42, v39);
          swift_storeEnumTagMultiPayload();
          v51 = 0;
        }

        else
        {
          v46(v42, v39);
          v51 = 1;
          v50 = v53;
        }

        (*(v52 + 56))(v50, v51, 1, v29);
        return sub_D00C(v50, v49, &unk_29F50, &qword_16DC0);
      }

      else
      {
        return (v46)(v42, v39);
      }
    }

    else
    {
      v48 = v57;
      v47 = v58;
      (*(v57 + 32))(v14, v26, v58);
      sub_CDA8();
      (*(v48 + 8))(v14, v47);
      return sub_CFB0(v59);
    }
  }

  return result;
}

double sub_CDA8()
{
  v0 = sub_12960();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8[1] = 0;
  v9 = 0.0;
  v8[0] = 0;
  isa = sub_128F0().super.isa;
  sub_12940();
  v6 = sub_12930().super.isa;
  (*(v1 + 8))(v4, v0);
  NTKHourMinuteSecondAnglesForTime();

  return v9;
}

uint64_t sub_CEE8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GladiusUtilities.DateOverride();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_CF4C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GladiusUtilities.DateOverride();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_CFB0(uint64_t a1)
{
  v2 = type metadata accessor for GladiusUtilities.DateOverride();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_D00C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_AABC(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

Class sub_D0C8(uint64_t a1, uint64_t a2, void *a3, unint64_t *a4, uint64_t *a5)
{
  v5 = *(a1 + *a3);
  sub_11B60(0, a4, a5);

  v6.super.isa = sub_129D0().super.isa;

  return v6.super.isa;
}

uint64_t sub_D14C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t *a5, void *a6)
{
  sub_11B60(0, a4, a5);
  v8 = sub_129E0();
  v9 = *(a1 + *a6);
  *(a1 + *a6) = v8;
}

id sub_D238(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC29NTKGladiusFaceBundleCompanion31NTKGladiusLightSpillCoordinator_minorMinuteLayers] = &_swiftEmptyArrayStorage;
  *&v1[OBJC_IVAR____TtC29NTKGladiusFaceBundleCompanion31NTKGladiusLightSpillCoordinator_minorHourLayers] = &_swiftEmptyArrayStorage;
  *&v1[OBJC_IVAR____TtC29NTKGladiusFaceBundleCompanion31NTKGladiusLightSpillCoordinator_majorHourLayers] = &_swiftEmptyArrayStorage;
  v3 = OBJC_IVAR____TtC29NTKGladiusFaceBundleCompanion31NTKGladiusLightSpillCoordinator_dateOverride;
  v4 = type metadata accessor for GladiusUtilities.DateOverride();
  (*(*(v4 - 8) + 56))(&v1[v3], 1, 1, v4);
  *&v1[OBJC_IVAR____TtC29NTKGladiusFaceBundleCompanion31NTKGladiusLightSpillCoordinator_dateOverrideAnimationTimer] = 0;
  swift_unknownObjectWeakInit();
  v5 = &v1[OBJC_IVAR____TtC29NTKGladiusFaceBundleCompanion31NTKGladiusLightSpillCoordinator_currentDialColors];
  *v5 = 0u;
  *(v5 + 1) = 0u;
  *(v5 + 4) = 0;
  v1[OBJC_IVAR____TtC29NTKGladiusFaceBundleCompanion31NTKGladiusLightSpillCoordinator_hasActiveTimeAnimations] = 0;
  sub_11B60(0, &qword_29FA0, off_20510);
  v6 = [swift_getObjCClassFromMetadata() logObject];
  sub_129B0();
  v7 = &v1[OBJC_IVAR____TtC29NTKGladiusFaceBundleCompanion31NTKGladiusLightSpillCoordinator_fadeAnimationKey];
  *v7 = 0x65646146656D6974;
  v7[1] = 0xE800000000000000;
  *&v1[OBJC_IVAR____TtC29NTKGladiusFaceBundleCompanion31NTKGladiusLightSpillCoordinator_tickOverlayBrightness] = 0x3FF0000000000000;
  *&v1[OBJC_IVAR____TtC29NTKGladiusFaceBundleCompanion31NTKGladiusLightSpillCoordinator_device] = a1;
  v9.receiver = v1;
  v9.super_class = type metadata accessor for NTKGladiusLightSpillCoordinator();
  return objc_msgSendSuper2(&v9, "init");
}

id sub_D3E4(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v37 = a5;
  v10 = sub_AABC(&qword_29D88, qword_16D70);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v36 = &v34 - v12;
  v13 = sub_12920();
  v38 = *(v13 - 8);
  v39 = v13;
  v14 = *(v38 + 64);
  __chkstk_darwin(v13);
  v35 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = (v5 + OBJC_IVAR____TtC29NTKGladiusFaceBundleCompanion31NTKGladiusLightSpillCoordinator_currentDialColors);
  v18 = *(v5 + OBJC_IVAR____TtC29NTKGladiusFaceBundleCompanion31NTKGladiusLightSpillCoordinator_currentDialColors);
  v17 = *(v5 + OBJC_IVAR____TtC29NTKGladiusFaceBundleCompanion31NTKGladiusLightSpillCoordinator_currentDialColors + 8);
  v19 = *(v5 + OBJC_IVAR____TtC29NTKGladiusFaceBundleCompanion31NTKGladiusLightSpillCoordinator_currentDialColors + 16);
  v20 = *(v5 + OBJC_IVAR____TtC29NTKGladiusFaceBundleCompanion31NTKGladiusLightSpillCoordinator_currentDialColors + 24);
  v21 = *(v5 + OBJC_IVAR____TtC29NTKGladiusFaceBundleCompanion31NTKGladiusLightSpillCoordinator_currentDialColors + 32);
  *v16 = a1;
  v16[1] = a2;
  v16[2] = a3;
  v16[3] = a4;
  v22 = v37;
  v16[4] = v37;

  v23 = a2;
  v24 = a3;
  v25 = a4;
  v26 = v22;
  sub_11AF8(v18, v17, v19, v20, v21);
  if (*(v5 + OBJC_IVAR____TtC29NTKGladiusFaceBundleCompanion31NTKGladiusLightSpillCoordinator_hasActiveTimeAnimations) == 1)
  {
    result = [objc_opt_self() faceDate];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v28 = result;
    v29 = v35;
    sub_12910();

    sub_D734(v29);
    (*(v38 + 8))(v29, v39);
  }

  sub_F044();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v30 = result;
    v31 = v36;
    (*(v38 + 56))(v36, 1, 1, v39);
    sub_10724(v31);
    v33 = v32;
    sub_BB74(v31, &qword_29D88, qword_16D70);
    [v30 lightSpillCoordinator:v5 wantsUpdateForAngle:v33];
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_D734(uint64_t a1)
{
  v3 = sub_AABC(&qword_29D88, qword_16D70);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v113 - v5;
  v7 = (v1 + OBJC_IVAR____TtC29NTKGladiusFaceBundleCompanion31NTKGladiusLightSpillCoordinator_currentDialColors);
  v8 = *(v1 + OBJC_IVAR____TtC29NTKGladiusFaceBundleCompanion31NTKGladiusLightSpillCoordinator_currentDialColors);
  if (v8)
  {
    v10 = v7[3];
    v9 = v7[4];
    v12 = v7[1];
    v11 = v7[2];
    v13 = sub_12920();
    v14 = *(v13 - 8);
    (*(v14 + 16))(v6, a1, v13);
    (*(v14 + 56))(v6, 0, 1, v13);
    v121 = v8;

    v120 = v12;
    v119 = v11;
    v122 = v10;
    v15 = v9;
    sub_10724(v6);
    v17 = v16;
    sub_BB74(v6, &qword_29D88, qword_16D70);
    v18 = *(v1 + OBJC_IVAR____TtC29NTKGladiusFaceBundleCompanion31NTKGladiusLightSpillCoordinator_majorHourLayers);
    v118 = v15;
    if (v18 >> 62)
    {
      goto LABEL_65;
    }

    for (i = *(&dword_10 + (v18 & 0xFFFFFFFFFFFFFF8)); ; i = sub_12A80())
    {
      v127 = v1;
      v128 = (v1 + OBJC_IVAR____TtC29NTKGladiusFaceBundleCompanion31NTKGladiusLightSpillCoordinator_fadeAnimationKey);

      if (i)
      {
        v125 = v18 & 0xFFFFFFFFFFFFFF8;
        v126 = v18 & 0xC000000000000001;
        v20 = CLKUIAnalogHandsDurationForSecondsAnimation;
        v123 = v121 & 0xFFFFFFFFFFFFFF8;
        v124 = (v121 & 0xC000000000000001);
        v21 = 4;
        v1 = i;
        while (1)
        {
          v22 = v21 - 4;
          if (v126)
          {
            v23 = sub_12A20();
          }

          else
          {
            if (v22 >= *(v125 + 16))
            {
              goto LABEL_59;
            }

            v23 = v18[v21];
          }

          v24 = v23;
          v25 = v21 - 3;
          if (__OFADD__(v22, 1))
          {
            break;
          }

          v26 = sub_129C0();
          v27 = [objc_opt_self() animationWithKeyPath:v26];

          v28 = v27;
          [v28 setDuration:v20];
          LODWORD(v29) = 15.0;
          LODWORD(v30) = 30.0;
          LODWORD(v31) = 15.0;
          [v28 setPreferredFrameRateRange:{v29, v30, v31}];

          *v32.i64 = v22 * 3.14159265 / 6.0;
          v33.i64[0] = v17;
          v34 = sub_115D8(v33, v32);
          if (v124)
          {
            v35 = sub_12A20();
          }

          else
          {
            if (v22 >= *(v123 + 16))
            {
              goto LABEL_60;
            }

            v35 = *(v121 + 8 * v21);
          }

          v36 = v35;
          sub_11828(v34);
          v38 = v37;

          sub_E320(v38);

          isa = sub_129D0().super.isa;

          [v28 setValues:isa];

          sub_11B60(0, &qword_29F68, NSNumber_ptr);
          v40 = sub_129D0().super.isa;

          [v28 setKeyTimes:v40];

          v41 = v128->isa;
          v42 = v128[1].isa;
          v43 = sub_129C0();
          [v24 addAnimation:v28 forKey:v43];

          ++v21;
          if (v25 == v1)
          {
            goto LABEL_17;
          }
        }

LABEL_58:
        __break(1u);
LABEL_59:
        __break(1u);
LABEL_60:
        __break(1u);
        goto LABEL_61;
      }

LABEL_17:

      v1 = *(v127 + OBJC_IVAR____TtC29NTKGladiusFaceBundleCompanion31NTKGladiusLightSpillCoordinator_minorMinuteLayers);
      if (v1 >> 62)
      {
        if (v1 < 0)
        {
          v111 = *(v127 + OBJC_IVAR____TtC29NTKGladiusFaceBundleCompanion31NTKGladiusLightSpillCoordinator_minorMinuteLayers);
        }

        v44 = sub_12A80();
      }

      else
      {
        v44 = *(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8));
      }

      v126 = OBJC_IVAR____TtC29NTKGladiusFaceBundleCompanion31NTKGladiusLightSpillCoordinator_device;

      if (!v44)
      {
        break;
      }

      v18 = 0;
      v125 = v1 & 0xC000000000000001;
      v45 = CLKUIAnalogHandsDurationForSecondsAnimation;
      while (1)
      {
        if (v125)
        {
          v46 = sub_12A20();
        }

        else
        {
          if (v18 >= *(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8)))
          {
            goto LABEL_62;
          }

          v46 = *(v1 + 8 * v18 + 32);
        }

        v47 = v46;
        v48 = v18 + 1;
        if (__OFADD__(v18, 1))
        {
          break;
        }

        v49 = sub_129C0();
        v50 = [objc_opt_self() animationWithKeyPath:v49];

        v51 = v50;
        [v51 setDuration:v45];
        LODWORD(v52) = 15.0;
        LODWORD(v53) = 30.0;
        LODWORD(v54) = 15.0;
        [v51 setPreferredFrameRateRange:{v52, v53, v54}];

        [objc_opt_self() minorMinuteAngleAtIndex:v18 device:*(v127 + v126)];
        v56.i64[0] = v55;
        v57.i64[0] = v17;
        v58 = sub_115D8(v57, v56);
        sub_11828(v58);
        v60 = v59;

        sub_E320(v60);

        v61 = sub_129D0().super.isa;

        [v51 setValues:v61];

        sub_11B60(0, &qword_29F68, NSNumber_ptr);
        v62 = sub_129D0().super.isa;

        [v51 setKeyTimes:v62];

        v63 = v128->isa;
        v64 = v128[1].isa;
        v65 = sub_129C0();
        [v47 addAnimation:v51 forKey:v65];

        v18 = (v18 + 1);
        if (v48 == v44)
        {
          goto LABEL_28;
        }
      }

LABEL_61:
      __break(1u);
LABEL_62:
      __break(1u);
LABEL_63:
      __break(1u);
LABEL_64:
      __break(1u);
LABEL_65:
      ;
    }

LABEL_28:

    v66 = objc_opt_self();
    v67 = v118;
    v68 = [v66 whiteColor];
    v69 = NTKInterpolateBetweenColors();

    v70 = *(v127 + OBJC_IVAR____TtC29NTKGladiusFaceBundleCompanion31NTKGladiusLightSpillCoordinator_minorHourLayers);
    if (v70 >> 62)
    {
      v112 = *(v127 + OBJC_IVAR____TtC29NTKGladiusFaceBundleCompanion31NTKGladiusLightSpillCoordinator_minorHourLayers);
      v71 = sub_12A80();
      v70 = v112;
    }

    else
    {
      v71 = *(&dword_10 + (v70 & 0xFFFFFFFFFFFFFF8));
    }

    v113 = v70;

    if (v71)
    {
      v1 = 0;
      v117 = v113 & 0xFFFFFFFFFFFFFF8;
      v118 = (v113 & 0xC000000000000001);
      v115 = "legate_>,N,W,VupdateDelegate";
      v116 = v113 + 32;
      v72 = CLKUIAnalogHandsDurationForSecondsAnimation;
      v18 = &off_28000;
      v114 = v71;
      do
      {
        if (v118)
        {
          v86 = sub_12A20();
        }

        else
        {
          if (v1 >= *(v117 + 16))
          {
            goto LABEL_64;
          }

          v86 = *(v116 + 8 * v1);
        }

        v87 = v86;
        v85 = v1 + 1;
        if (__OFADD__(v1, 1))
        {
          goto LABEL_63;
        }

        [objc_opt_self() minorHourAngleAtIndex:v1 device:*(v127 + v126)];
        v89.i64[0] = v88;
        v90.i64[0] = v17;
        v91 = sub_115D8(v90, v89);
        v93 = v92;
        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {
          v123 = v93;
          v124 = v87;
          v125 = v85;
          v94 = sub_129C0();
          v95 = [objc_opt_self() animationWithKeyPath:v94];

          v96 = *(v91 + 16);
          if (v96)
          {
            v129[0] = _swiftEmptyArrayStorage;
            v97 = v95;
            v1 = v129;
            sub_12A50();
            v98 = 0;
            while (1)
            {
              if (v98 >= *(v91 + 16))
              {
                __break(1u);
                goto LABEL_58;
              }

              v99 = *(v91 + 8 * v98 + 32);
              v100 = NTKInterpolateBetweenColors();
              if (!v100)
              {
                break;
              }

              v101 = v100;
              ++v98;
              v102 = [v100 CGColor];

              v1 = v129;
              sub_12A30();
              v103 = *(v129[0] + 16);
              sub_12A60();
              sub_12A70();
              sub_12A40();
              if (v96 == v98)
              {

                v74 = v129[0];
                v71 = v114;
                goto LABEL_33;
              }
            }

            __break(1u);
            return;
          }

          v73 = v95;

          v74 = _swiftEmptyArrayStorage;
LABEL_33:
          sub_E434(v74);
        }

        else
        {
          objc_opt_self();
          if (!swift_dynamicCastObjCClass())
          {

            goto LABEL_35;
          }

          v123 = v93;
          v124 = v87;
          v125 = v85;
          v104 = sub_129C0();
          v105 = [objc_opt_self() animationWithKeyPath:v104];

          v95 = v105;
          sub_11828(v91);
          v107 = v106;

          sub_E320(v107);
        }

        v75 = sub_129D0().super.isa;

        [v95 setValues:v75];

        v76 = v95;
        [v76 setDuration:v72];
        LODWORD(v77) = 15.0;
        LODWORD(v78) = 30.0;
        LODWORD(v79) = 15.0;
        [v76 setPreferredFrameRateRange:{v77, v78, v79}];
        sub_11B60(0, &qword_29F68, NSNumber_ptr);
        v80 = sub_129D0().super.isa;

        [v76 setKeyTimes:v80];

        v81 = v128->isa;
        v82 = v128[1].isa;
        v83 = sub_129C0();
        v84 = v124;
        [v124 addAnimation:v76 forKey:v83];

        v85 = v125;
LABEL_35:
        v1 = v85;
      }

      while (v85 != v71);
    }

    *(v127 + OBJC_IVAR____TtC29NTKGladiusFaceBundleCompanion31NTKGladiusLightSpillCoordinator_hasActiveTimeAnimations) = 1;
  }

  else
  {
    v128 = sub_12980();
    v108 = sub_129F0();
    if (os_log_type_enabled(v128, v108))
    {
      v109 = swift_slowAlloc();
      *v109 = 0;
      _os_log_impl(&dword_0, v128, v108, "trying to start ticks animation with no palette!", v109, 2u);
    }

    v110 = v128;
  }
}

unint64_t *sub_E320(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = &_swiftEmptyArrayStorage;
  if (v1)
  {
    v10 = &_swiftEmptyArrayStorage;
    sub_11374(0, v1, 0);
    v2 = &_swiftEmptyArrayStorage;
    v4 = (a1 + 32);
    do
    {
      v8 = *v4;

      sub_AABC(&qword_29F70, &qword_16F50);
      swift_dynamicCast();
      v10 = v2;
      v6 = v2[2];
      v5 = v2[3];
      if (v6 >= v5 >> 1)
      {
        sub_11374((v5 > 1), v6 + 1, 1);
        v2 = v10;
      }

      v2[2] = v6 + 1;
      sub_11AE8(&v9, &v2[4 * v6 + 4]);
      ++v4;
      --v1;
    }

    while (v1);
  }

  return v2;
}

char *sub_E434(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_12A80();
  }

  else
  {
    v2 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  }

  v3 = &_swiftEmptyArrayStorage;
  if (!v2)
  {
    return v3;
  }

  v13 = &_swiftEmptyArrayStorage;
  result = sub_11374(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v13;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        sub_12A20();
        type metadata accessor for CGColor(0);
        swift_dynamicCast();
        v13 = v3;
        v7 = v3[2];
        v6 = v3[3];
        if (v7 >= v6 >> 1)
        {
          sub_11374((v6 > 1), v7 + 1, 1);
          v3 = v13;
        }

        v3[2] = v7 + 1;
        sub_11AE8(v12, &v3[4 * v7 + 4]);
      }
    }

    else
    {
      v8 = (a1 + 32);
      type metadata accessor for CGColor(0);
      do
      {
        v9 = *v8;
        swift_dynamicCast();
        v13 = v3;
        v11 = v3[2];
        v10 = v3[3];
        if (v11 >= v10 >> 1)
        {
          sub_11374((v10 > 1), v11 + 1, 1);
          v3 = v13;
        }

        v3[2] = v11 + 1;
        sub_11AE8(v12, &v3[4 * v11 + 4]);
        ++v8;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

uint64_t sub_E6E8()
{
  v1 = sub_AABC(&qword_29D88, qword_16D70);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v31 - v3;
  v5 = type metadata accessor for GladiusUtilities.DateOverride();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v31 - v11;
  v13 = sub_AABC(&unk_29F50, &qword_16DC0);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = &v31 - v15;
  v17 = OBJC_IVAR____TtC29NTKGladiusFaceBundleCompanion31NTKGladiusLightSpillCoordinator_dateOverride;
  swift_beginAccess();
  sub_BB0C(v0 + v17, v16, &unk_29F50, &qword_16DC0);
  if ((*(v6 + 48))(v16, 1, v5))
  {
    sub_BB74(v16, &unk_29F50, &qword_16DC0);
LABEL_3:
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v19 = result;
      v20 = sub_12920();
      (*(*(v20 - 8) + 56))(v4, 1, 1, v20);
      sub_10724(v4);
      v22 = v21;
      sub_BB74(v4, &qword_29D88, qword_16D70);
      [v19 lightSpillCoordinator:v0 wantsUpdateForAngle:v22];
      return swift_unknownObjectRelease();
    }

    return result;
  }

  sub_CF4C(v16, v12);
  sub_BB74(v16, &unk_29F50, &qword_16DC0);
  sub_CF4C(v12, v10);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_CFB0(v12);
    return sub_CFB0(v10);
  }

  v23 = sub_AABC(&unk_29E40, "Xr");
  v24 = v23;
  if (v10[v23[24]])
  {
    v25 = 1;
  }

  else
  {
    v26 = *&v10[v23[20]];
    v27 = *&v10[v23[16]];
    v25 = CFAbsoluteTimeGetCurrent() < v26 + v27;
  }

  v28 = v24[12];
  sub_CFB0(v12);
  v29 = sub_12920();
  v30 = *(*(v29 - 8) + 8);
  v30(&v10[v28], v29);
  result = (v30)(v10, v29);
  if (!v25)
  {
    goto LABEL_3;
  }

  return result;
}

uint64_t sub_EAC0()
{
  v1 = *(v0 + OBJC_IVAR____TtC29NTKGladiusFaceBundleCompanion31NTKGladiusLightSpillCoordinator_majorHourLayers);
  if (v1 >> 62)
  {
    goto LABEL_41;
  }

  for (i = *(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8)); ; i = sub_12A80())
  {
    v3 = (v30 + OBJC_IVAR____TtC29NTKGladiusFaceBundleCompanion31NTKGladiusLightSpillCoordinator_fadeAnimationKey);

    if (i)
    {
      v4 = 0;
      while (1)
      {
        if ((v1 & 0xC000000000000001) != 0)
        {
          v5 = sub_12A20();
        }

        else
        {
          if (v4 >= *(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8)))
          {
            goto LABEL_36;
          }

          v5 = *(v1 + 8 * v4 + 32);
        }

        v6 = v5;
        v7 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          break;
        }

        v8 = *v3;
        v9 = v3[1];
        v10 = sub_129C0();
        [v6 removeAnimationForKey:v10];

        ++v4;
        if (v7 == i)
        {
          goto LABEL_12;
        }
      }

      __break(1u);
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

LABEL_12:

    v1 = *(v30 + OBJC_IVAR____TtC29NTKGladiusFaceBundleCompanion31NTKGladiusLightSpillCoordinator_minorMinuteLayers);
    if (v1 >> 62)
    {
      if (v1 < 0)
      {
        v28 = *(v30 + OBJC_IVAR____TtC29NTKGladiusFaceBundleCompanion31NTKGladiusLightSpillCoordinator_minorMinuteLayers);
      }

      v11 = sub_12A80();
    }

    else
    {
      v11 = *(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8));
    }

    if (v11)
    {
      v12 = 0;
      while (1)
      {
        if ((v1 & 0xC000000000000001) != 0)
        {
          v13 = sub_12A20();
        }

        else
        {
          if (v12 >= *(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8)))
          {
            goto LABEL_38;
          }

          v13 = *(v1 + 8 * v12 + 32);
        }

        v14 = v13;
        v15 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        v16 = *v3;
        v17 = v3[1];
        v18 = sub_129C0();
        [v14 removeAnimationForKey:v18];

        ++v12;
        if (v15 == v11)
        {
          goto LABEL_23;
        }
      }

LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

LABEL_23:

    v1 = *(v30 + OBJC_IVAR____TtC29NTKGladiusFaceBundleCompanion31NTKGladiusLightSpillCoordinator_minorHourLayers);
    if (v1 >> 62)
    {
      if (v1 < 0)
      {
        v29 = *(v30 + OBJC_IVAR____TtC29NTKGladiusFaceBundleCompanion31NTKGladiusLightSpillCoordinator_minorHourLayers);
      }

      v19 = sub_12A80();
    }

    else
    {
      v19 = *(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8));
    }

    if (!v19)
    {
      break;
    }

    v20 = 0;
    while (1)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v21 = sub_12A20();
      }

      else
      {
        if (v20 >= *(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_40;
        }

        v21 = *(v1 + 8 * v20 + 32);
      }

      v22 = v21;
      v23 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      v24 = *v3;
      v25 = v3[1];
      v26 = sub_129C0();
      [v22 removeAnimationForKey:v26];

      ++v20;
      if (v23 == v19)
      {
        goto LABEL_34;
      }
    }

LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    ;
  }

LABEL_34:

  *(v30 + OBJC_IVAR____TtC29NTKGladiusFaceBundleCompanion31NTKGladiusLightSpillCoordinator_hasActiveTimeAnimations) = 0;
  return result;
}

void sub_F044()
{
  v1 = sub_AABC(&qword_29D88, qword_16D70);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v46 = &v45 - v3;
  v4 = type metadata accessor for GladiusUtilities.DateOverride();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v45 - v10;
  v12 = sub_AABC(&unk_29F50, &qword_16DC0);
  v13 = *(*(v12 - 8) + 64);
  v14 = __chkstk_darwin(v12 - 8);
  v47 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v18 = &v45 - v17;
  __chkstk_darwin(v16);
  v20 = &v45 - v19;
  v21 = OBJC_IVAR____TtC29NTKGladiusFaceBundleCompanion31NTKGladiusLightSpillCoordinator_dateOverride;
  swift_beginAccess();
  v48 = v0;
  v22 = v0 + v21;
  v23 = v4;
  v24 = v5;
  sub_BB0C(v22, v20, &unk_29F50, &qword_16DC0);
  if ((*(v5 + 48))(v20, 1, v23))
  {
    sub_BB74(v20, &unk_29F50, &qword_16DC0);
LABEL_3:
    v25 = v47;
    (*(v24 + 56))(v47, 1, 1, v23);
    v26 = v48;
    swift_beginAccess();
    sub_BA9C(v25, v26 + v21);
    swift_endAccess();
    sub_100A4();
    return;
  }

  v45 = v18;
  v27 = v46;
  sub_CF4C(v20, v11);
  sub_BB74(v20, &unk_29F50, &qword_16DC0);
  sub_CF4C(v11, v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v28 = sub_AABC(&unk_29E40, "Xr");
    v29 = v28;
    if (v9[v28[24]])
    {
      v30 = 1;
    }

    else
    {
      v32 = *&v9[v28[20]];
      v33 = *&v9[v28[16]];
      v30 = CFAbsoluteTimeGetCurrent() < v32 + v33;
    }

    v34 = v29[12];
    sub_CFB0(v11);
    v35 = sub_12920();
    v36 = *(*(v35 - 8) + 8);
    v36(&v9[v34], v35);
    v36(v9, v35);
    v31 = v27;
    if (!v30)
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_CFB0(v11);
    sub_CFB0(v9);
    v31 = v27;
  }

  v38 = v47;
  v37 = v48;
  sub_BB0C(v48 + v21, v47, &unk_29F50, &qword_16DC0);
  v39 = v45;
  sub_C79C(v45, v38);
  sub_BB74(v38, &unk_29F50, &qword_16DC0);
  sub_BB0C(v39, v38, &unk_29F50, &qword_16DC0);
  swift_beginAccess();
  sub_BA9C(v38, v37 + v21);
  swift_endAccess();
  sub_F584();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v41 = Strong;
    v42 = sub_12920();
    (*(*(v42 - 8) + 56))(v31, 1, 1, v42);
    sub_10724(v31);
    v44 = v43;
    sub_BB74(v31, &qword_29D88, qword_16D70);
    [v41 lightSpillCoordinator:v37 wantsUpdateForAngle:v44];
    swift_unknownObjectRelease();
  }

  sub_BB74(v39, &unk_29F50, &qword_16DC0);
}

void sub_F584()
{
  v1 = (v0 + OBJC_IVAR____TtC29NTKGladiusFaceBundleCompanion31NTKGladiusLightSpillCoordinator_currentDialColors);
  v2 = *(v0 + OBJC_IVAR____TtC29NTKGladiusFaceBundleCompanion31NTKGladiusLightSpillCoordinator_currentDialColors);
  if (!v2)
  {
    v91 = sub_12980();
    v73 = sub_129F0();
    if (os_log_type_enabled(v91, v73))
    {
      v74 = swift_slowAlloc();
      *v74 = 0;
      _os_log_impl(&dword_0, v91, v73, "trying to apply instantaneous tick lighting with no palette!", v74, 2u);
    }

    return;
  }

  v3 = v1[3];
  v4 = v1[4];
  v6 = v1[1];
  v5 = v1[2];
  v7 = objc_opt_self();
  sub_112EC(v2, v6, v5, v3, v4);
  v8 = v3;
  v88 = v7;
  v9 = [v7 whiteColor];
  v86 = NTKInterpolateBetweenColors();
  v87 = v8;

  v89 = v0;
  v10 = *(v0 + OBJC_IVAR____TtC29NTKGladiusFaceBundleCompanion31NTKGladiusLightSpillCoordinator_majorHourLayers);
  v85 = v2;
  v77 = v6;
  v78 = v5;
  v81 = v4;
  if (v10 >> 62)
  {
    goto LABEL_65;
  }

  for (i = *(&dword_10 + (v10 & 0xFFFFFFFFFFFFFF8)); ; i = sub_12A80())
  {

    if (!i)
    {
LABEL_20:

      v31 = v81;
      v32 = [v88 whiteColor];
      v79 = NTKInterpolateBetweenColors();
      v80 = v31;

      v33 = v89;
      v34 = *(v89 + OBJC_IVAR____TtC29NTKGladiusFaceBundleCompanion31NTKGladiusLightSpillCoordinator_minorHourLayers);
      if (v34 >> 62)
      {
        if (v34 < 0)
        {
          v75 = *(v89 + OBJC_IVAR____TtC29NTKGladiusFaceBundleCompanion31NTKGladiusLightSpillCoordinator_minorHourLayers);
        }

        v10 = sub_12A80();
      }

      else
      {
        v10 = *(&dword_10 + (v34 & 0xFFFFFFFFFFFFFF8));
      }

      v90 = OBJC_IVAR____TtC29NTKGladiusFaceBundleCompanion31NTKGladiusLightSpillCoordinator_device;

      if (!v10)
      {
LABEL_37:

        v54 = v77;
        v55 = [v88 whiteColor];
        v83 = NTKInterpolateBetweenColors();
        v84 = v54;

        v10 = v78;
        v56 = [v88 whiteColor];
        v82 = NTKInterpolateBetweenColors();
        v88 = v10;

        v57 = *(v33 + OBJC_IVAR____TtC29NTKGladiusFaceBundleCompanion31NTKGladiusLightSpillCoordinator_minorMinuteLayers);
        if (v57 >> 62)
        {
          if (v57 < 0)
          {
            v76 = *(v33 + OBJC_IVAR____TtC29NTKGladiusFaceBundleCompanion31NTKGladiusLightSpillCoordinator_minorMinuteLayers);
          }

          v58 = sub_12A80();
        }

        else
        {
          v58 = *(&dword_10 + (v57 & 0xFFFFFFFFFFFFFF8));
        }

        if (!v58)
        {
LABEL_50:

          return;
        }

        v59 = 0;
        v81 = &dword_0 + 2;
        while (1)
        {
          if ((v57 & 0xC000000000000001) != 0)
          {
            v60 = sub_12A20();
          }

          else
          {
            if (v59 >= *(&dword_10 + (v57 & 0xFFFFFFFFFFFFFF8)))
            {
              goto LABEL_64;
            }

            v60 = *(v57 + 8 * v59 + 32);
          }

          v61 = v60;
          v62 = v59 + 1;
          if (__OFADD__(v59, 1))
          {
            goto LABEL_63;
          }

          [objc_opt_self() minorMinuteAngleAtIndex:v59 device:*(v33 + v90)];
          v63 = NTKInterpolateBetweenColors();
          if (!v63)
          {
            goto LABEL_74;
          }

          v64 = v63;
          v65 = [v63 CGColor];

          v66 = NTKInterpolateBetweenColors();
          if (!v66)
          {
            goto LABEL_75;
          }

          v67 = v66;
          v68 = [v66 CGColor];

          sub_AABC(&qword_29F60, &qword_16F48);
          v69 = swift_allocObject();
          *(v69 + 16) = xmmword_16E00;
          type metadata accessor for CGColor(0);
          *(v69 + 32) = v65;
          *(v69 + 88) = v70;
          *(v69 + 56) = v70;
          *(v69 + 64) = v68;
          v71 = v65;
          v10 = v68;
          isa = sub_129D0().super.isa;

          [v61 setColors:isa];

          ++v59;
          v33 = v89;
          if (v62 == v58)
          {
            goto LABEL_50;
          }
        }
      }

      v35 = 0;
      while (1)
      {
        if ((v34 & 0xC000000000000001) != 0)
        {
          v44 = sub_12A20();
        }

        else
        {
          if (v35 >= *(&dword_10 + (v34 & 0xFFFFFFFFFFFFFF8)))
          {
            goto LABEL_62;
          }

          v44 = *(v34 + 8 * v35 + 32);
        }

        v43 = v44;
        v45 = v35 + 1;
        if (__OFADD__(v35, 1))
        {
          goto LABEL_61;
        }

        [objc_opt_self() minorHourAngleAtIndex:v35 device:*(v33 + v90)];
        objc_opt_self();
        v46 = swift_dynamicCastObjCClass();
        if (v46)
        {
          v36 = v46;
          v37 = [v88 whiteColor];
          v38 = [v37 CGColor];

          [v36 setForegroundColor:v38];
          v39 = v43;
          v40 = NTKInterpolateBetweenColors();
          if (!v40)
          {
            goto LABEL_76;
          }

          v41 = v40;
          v42 = [v40 CGColor];

          [v36 setContentsMultiplyColor:v42];
        }

        else
        {
          objc_opt_self();
          v47 = swift_dynamicCastObjCClass();
          if (!v47)
          {
            goto LABEL_27;
          }

          v48 = v47;
          v49 = NTKInterpolateBetweenColors();
          if (!v49)
          {
            goto LABEL_77;
          }

          v50 = v49;
          v51 = [v49 CGColor];

          sub_AABC(&qword_29F60, &qword_16F48);
          v52 = swift_allocObject();
          *(v52 + 16) = xmmword_16E00;
          type metadata accessor for CGColor(0);
          *(v52 + 32) = v51;
          *(v52 + 88) = v53;
          *(v52 + 56) = v53;
          *(v52 + 64) = v51;
          v39 = v51;
          v42 = sub_129D0().super.isa;

          [v48 setColors:v42];
        }

        v43 = v42;
        v33 = v89;
LABEL_27:

        ++v35;
        if (v45 == v10)
        {
          goto LABEL_37;
        }
      }
    }

    v12 = 4;
LABEL_6:
    v13 = v12 - 4;
    if ((v10 & 0xC000000000000001) != 0)
    {
      break;
    }

    v14 = &off_28000;
    if (v13 >= *(&dword_10 + (v10 & 0xFFFFFFFFFFFFFF8)))
    {
      goto LABEL_59;
    }

    v15 = *(v10 + 8 * v12);
    v16 = v12 - 3;
    if (!__OFADD__(v13, 1))
    {
      goto LABEL_9;
    }

LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    ;
  }

  v15 = sub_12A20();
  v14 = &off_28000;
  v16 = v12 - 3;
  if (__OFADD__(v13, 1))
  {
    goto LABEL_58;
  }

LABEL_9:
  if ((v85 & 0xC000000000000001) != 0)
  {
    v17 = sub_12A20();
  }

  else
  {
    if (v13 >= *(&dword_10 + (v85 & 0xFFFFFFFFFFFFFF8)))
    {
      goto LABEL_60;
    }

    v17 = v85[v12];
  }

  v18 = v17;
  sub_AABC(&qword_29F60, &qword_16F48);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_16E00;
  v20 = v18;
  v21 = [v88 whiteColor];
  v22 = NTKInterpolateBetweenColors();

  v23 = NTKInterpolateBetweenColors();
  if (v23)
  {
    v24 = [v23 v14[69]];

    type metadata accessor for CGColor(0);
    v26 = v25;
    *(v19 + 56) = v25;
    *(v19 + 32) = v24;
    v27 = NTKInterpolateBetweenColors();
    if (!v27)
    {
      goto LABEL_73;
    }

    v28 = v27;
    v29 = [v27 v14[69]];

    *(v19 + 88) = v26;
    *(v19 + 64) = v29;
    v30 = sub_129D0().super.isa;

    [v15 setColors:v30];

    ++v12;
    if (v16 == i)
    {
      goto LABEL_20;
    }

    goto LABEL_6;
  }

  __break(1u);
LABEL_73:
  __break(1u);
LABEL_74:
  __break(1u);
LABEL_75:
  __break(1u);
LABEL_76:
  __break(1u);
LABEL_77:
  __break(1u);
}

void sub_100A4()
{
  v1 = (v0 + OBJC_IVAR____TtC29NTKGladiusFaceBundleCompanion31NTKGladiusLightSpillCoordinator_currentDialColors);
  v63 = *(v0 + OBJC_IVAR____TtC29NTKGladiusFaceBundleCompanion31NTKGladiusLightSpillCoordinator_currentDialColors);
  if (v63)
  {
    v2 = v1[1];
    v62 = v1[2];
    v64 = v1[3];
    v60 = v1[4];
    v3 = *(v0 + OBJC_IVAR____TtC29NTKGladiusFaceBundleCompanion31NTKGladiusLightSpillCoordinator_majorHourLayers);
    if (v3 >> 62)
    {
      goto LABEL_48;
    }

    for (i = *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8)); ; i = v55)
    {
      v58 = v2;
      sub_112EC(v63, v2, v62, v64, v60);

      if (!i)
      {
        break;
      }

      v5 = 4;
      while (1)
      {
        v6 = v5 - 4;
        if ((v3 & 0xC000000000000001) != 0)
        {
          v7 = sub_12A20();
        }

        else
        {
          if (v6 >= *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8)))
          {
            goto LABEL_46;
          }

          v7 = *(v3 + 8 * v5);
        }

        v8 = v7;
        v9 = v5 - 3;
        if (__OFADD__(v6, 1))
        {
          break;
        }

        sub_AABC(&qword_29F60, &qword_16F48);
        v10 = swift_allocObject();
        *(v10 + 16) = xmmword_16E00;
        if ((v63 & 0xC000000000000001) != 0)
        {
          v11 = sub_12A20();
        }

        else
        {
          if (v6 >= *(&dword_10 + (v63 & 0xFFFFFFFFFFFFFF8)))
          {
            goto LABEL_47;
          }

          v11 = *(v63 + 8 * v5);
        }

        v12 = v11;
        v13 = [v11 CGColor];

        type metadata accessor for CGColor(0);
        v15 = v14;
        *(v10 + 56) = v14;
        *(v10 + 32) = v13;
        v16 = [v64 CGColor];
        *(v10 + 88) = v15;
        *(v10 + 64) = v16;
        isa = sub_129D0().super.isa;

        [v8 setColors:isa];

        ++v5;
        if (v9 == i)
        {
          goto LABEL_17;
        }
      }

      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
LABEL_48:
      v54 = v2;
      v55 = sub_12A80();
      v2 = v54;
    }

LABEL_17:

    v18 = v59;
    v19 = *(v59 + OBJC_IVAR____TtC29NTKGladiusFaceBundleCompanion31NTKGladiusLightSpillCoordinator_minorHourLayers);
    if (!(v19 >> 62))
    {
      v20 = *(&dword_10 + (v19 & 0xFFFFFFFFFFFFFF8));
      if (!v20)
      {
        goto LABEL_31;
      }

      goto LABEL_19;
    }

    if (v19 < 0)
    {
      v56 = *(v59 + OBJC_IVAR____TtC29NTKGladiusFaceBundleCompanion31NTKGladiusLightSpillCoordinator_minorHourLayers);
    }

    v20 = sub_12A80();
    if (v20)
    {
LABEL_19:
      if (v20 >= 1)
      {
        v21 = v19 & 0xC000000000000001;

        v22 = 0;
        v23 = &NTKAllSignatureCircularTypes_ptr;
        v24 = &off_28000;
        v61 = v19;
        while (1)
        {
          if (v21)
          {
            v29 = sub_12A20();
          }

          else
          {
            v29 = *(v19 + 8 * v22 + 32);
          }

          v28 = v29;
          v30 = v23[220];
          objc_opt_self();
          v31 = swift_dynamicCastObjCClass();
          if (v31)
          {
            v25 = v31;
            v26 = v28;
            v27 = [v60 CGColor];
            [v25 v24[284]];
          }

          else
          {
            objc_opt_self();
            v32 = swift_dynamicCastObjCClass();
            if (!v32)
            {
              goto LABEL_23;
            }

            v33 = v32;
            v34 = v23;
            v35 = [v64 CGColor];
            sub_AABC(&qword_29F60, &qword_16F48);
            v36 = v20;
            v37 = v21;
            v38 = v24;
            v39 = swift_allocObject();
            *(v39 + 16) = xmmword_16E00;
            type metadata accessor for CGColor(0);
            *(v39 + 32) = v35;
            *(v39 + 88) = v40;
            *(v39 + 56) = v40;
            *(v39 + 64) = v35;
            v41 = v35;
            v23 = v34;
            v26 = v41;
            v27 = sub_129D0().super.isa;
            v24 = v38;
            v21 = v37;
            v20 = v36;
            v19 = v61;

            [v33 setColors:v27];
          }

          v28 = v27;
LABEL_23:
          ++v22;

          if (v20 == v22)
          {

            v18 = v59;
            goto LABEL_31;
          }
        }
      }

      __break(1u);
      goto LABEL_61;
    }

LABEL_31:
    v42 = *(v18 + OBJC_IVAR____TtC29NTKGladiusFaceBundleCompanion31NTKGladiusLightSpillCoordinator_minorMinuteLayers);
    if (v42 >> 62)
    {
      if (v42 < 0)
      {
        v57 = *(v18 + OBJC_IVAR____TtC29NTKGladiusFaceBundleCompanion31NTKGladiusLightSpillCoordinator_minorMinuteLayers);
      }

      v43 = sub_12A80();
      if (v43)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v43 = *(&dword_10 + (v42 & 0xFFFFFFFFFFFFFF8));
      if (v43)
      {
LABEL_33:
        if (v43 < 1)
        {
LABEL_61:
          __break(1u);
          return;
        }

        v44 = 0;
        do
        {
          if ((v42 & 0xC000000000000001) != 0)
          {
            v45 = sub_12A20();
          }

          else
          {
            v45 = *(v42 + 8 * v44 + 32);
          }

          v46 = v45;
          ++v44;
          v47 = [v62 CGColor];
          sub_AABC(&qword_29F60, &qword_16F48);
          v48 = swift_allocObject();
          *(v48 + 16) = xmmword_16E00;
          type metadata accessor for CGColor(0);
          *(v48 + 32) = v47;
          *(v48 + 88) = v49;
          *(v48 + 56) = v49;
          *(v48 + 64) = v47;
          v50 = v47;
          v51 = sub_129D0().super.isa;

          [v46 setColors:v51];
        }

        while (v43 != v44);

        goto LABEL_57;
      }
    }

LABEL_57:

    return;
  }

  v65 = sub_12980();
  v52 = sub_129F0();
  if (os_log_type_enabled(v65, v52))
  {
    v53 = swift_slowAlloc();
    *v53 = 0;
    _os_log_impl(&dword_0, v65, v52, "trying to clear instantaneous tick lighting with no palette!", v53, 2u);
  }
}

uint64_t sub_10724(uint64_t a1)
{
  v2 = sub_12960();
  v71 = *(v2 - 8);
  v72 = v2;
  v3 = *(v71 + 64);
  __chkstk_darwin(v2);
  v70 = &v61 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_AABC(&qword_29D88, qword_16D70);
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5 - 8);
  v68 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v66 = &v61 - v10;
  v11 = __chkstk_darwin(v9);
  v13 = &v61 - v12;
  __chkstk_darwin(v11);
  v69 = &v61 - v14;
  v15 = type metadata accessor for GladiusUtilities.DateOverride();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = __chkstk_darwin(v15);
  v65 = &v61 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v21 = &v61 - v20;
  v22 = sub_AABC(&unk_29F50, &qword_16DC0);
  v23 = *(*(v22 - 8) + 64);
  v24 = __chkstk_darwin(v22 - 8);
  v64 = &v61 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v24);
  v63 = &v61 - v27;
  __chkstk_darwin(v26);
  v29 = &v61 - v28;
  v75 = 0;
  v30 = sub_12920();
  v31 = *(v30 - 8);
  v32 = *(v31 + 48);
  if (v32(a1, 1, v30) != 1)
  {
    goto LABEL_4;
  }

  v61 = v32;
  v62 = v13;
  v33 = OBJC_IVAR____TtC29NTKGladiusFaceBundleCompanion31NTKGladiusLightSpillCoordinator_dateOverride;
  v34 = v67;
  swift_beginAccess();
  sub_BB0C(v34 + v33, v29, &unk_29F50, &qword_16DC0);
  if (!(*(v16 + 48))(v29, 1, v15))
  {
    sub_CF4C(v29, v21);
    sub_BB74(v29, &unk_29F50, &qword_16DC0);
    v42 = v65;
    sub_CF4C(v21, v65);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v43 = sub_AABC(&unk_29E40, "Xr");
      v44 = v33;
      if (*(v42 + v43[24]))
      {
        v45 = v43[12];
        sub_CFB0(v21);
        v46 = *(v31 + 8);
        v46(v42 + v45, v30);
        v46(v42, v30);
        v47 = v67;
      }

      else
      {
        v55 = *(v42 + v43[20]);
        v56 = *(v42 + v43[16]);
        v57 = v43;
        Current = CFAbsoluteTimeGetCurrent();
        v59 = v57[12];
        sub_CFB0(v21);
        v60 = *(v31 + 8);
        v60(v42 + v59, v30);
        v60(v42, v30);
        v47 = v67;
        v13 = v62;
        v32 = v61;
        if (Current >= v55 + v56)
        {
          goto LABEL_4;
        }
      }
    }

    else
    {
      sub_CFB0(v21);
      sub_CFB0(v42);
      v47 = v67;
      v44 = v33;
    }

    v53 = v64;
    sub_BB0C(v47 + v44, v64, &unk_29F50, &qword_16DC0);
    v54 = v63;
    sub_C79C(v63, v53);
    sub_BB74(v53, &unk_29F50, &qword_16DC0);
    return sub_BB74(v54, &unk_29F50, &qword_16DC0);
  }

  sub_BB74(v29, &unk_29F50, &qword_16DC0);
  v13 = v62;
  v32 = v61;
LABEL_4:
  sub_BB0C(a1, v13, &qword_29D88, qword_16D70);
  if (v32(v13, 1, v30) == 1)
  {
    v35 = [objc_opt_self() faceDate];
    v36 = v69;
    if (v35)
    {
      v37 = v66;
      v38 = v32;
      v39 = v35;
      sub_12910();

      v32 = v38;
      v40 = 0;
      v41 = v68;
    }

    else
    {
      v40 = 1;
      v41 = v68;
      v37 = v66;
    }

    (*(v31 + 56))(v37, v40, 1, v30);
    sub_1127C(v37, v36);
    if (v32(v13, 1, v30) != 1)
    {
      sub_BB74(v13, &qword_29D88, qword_16D70);
    }
  }

  else
  {
    v36 = v69;
    (*(v31 + 32))(v69, v13, v30);
    (*(v31 + 56))(v36, 0, 1, v30);
    v41 = v68;
  }

  v73 = 0;
  v74 = 0;
  sub_BB0C(v36, v41, &qword_29D88, qword_16D70);
  v48 = v32(v41, 1, v30);
  isa = 0;
  if (v48 != 1)
  {
    isa = sub_128F0().super.isa;
    (*(v31 + 8))(v41, v30);
  }

  v50 = v70;
  sub_12950();
  v51 = sub_12930().super.isa;
  (*(v71 + 8))(v50, v72);
  CLKHourMinuteSecondAnglesForTime();

  return sub_BB74(v36, &qword_29D88, qword_16D70);
}

id sub_10EF8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NTKGladiusLightSpillCoordinator();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for NTKGladiusLightSpillCoordinator()
{
  result = qword_29F30;
  if (!qword_29F30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_110A0()
{
  sub_B5FC();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    v2 = sub_129A0();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

__n128 sub_111C8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_111DC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_11224(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1127C(uint64_t a1, uint64_t a2)
{
  v4 = sub_AABC(&qword_29D88, qword_16D70);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id sub_112EC(id result, void *a2, void *a3, void *a4, void *a5)
{
  if (result)
  {

    v8 = a2;
    v9 = a3;
    v10 = a4;

    return a5;
  }

  return result;
}

void *sub_11354(void *a1, int64_t a2, char a3)
{
  result = sub_11394(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_11374(char *a1, int64_t a2, char a3)
{
  result = sub_114C8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_11394(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_AABC(&unk_29F88, qword_16F60);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_AABC(&qword_29F70, &qword_16F50);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_114C8(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_AABC(&qword_29F60, &qword_16F48);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_115D8(int8x16_t a1, int8x16_t a2)
{
  *a1.i64 = *a1.i64 / 6.28318531 - (*a2.i64 / 6.28318531 + -1.0);
  *a2.i64 = *a1.i64 - trunc(*a1.i64);
  v2.f64[0] = NAN;
  v2.f64[1] = NAN;
  a1.i64[0] = vbslq_s8(vnegq_f64(v2), a2, a1).i64[0];
  if (1.0 - *a1.i64 / 0.4 < 0.0)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = 1.0 - *a1.i64 / 0.4;
  }

  sub_AABC(&qword_29C60, &qword_16C88);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_16E10;
  *(v4 + 32) = v3;
  *(v4 + 40) = 0;
  *(v4 + 48) = 0;
  *(v4 + 56) = 0x3FF0000000000000;
  *(v4 + 64) = v3;
  sub_12A50();
  sub_12970();
  sub_12A30();
  v5 = _swiftEmptyArrayStorage[2];
  sub_12A60();
  sub_12A70();
  sub_12A40();
  sub_12970();
  sub_12A30();
  v6 = _swiftEmptyArrayStorage[2];
  sub_12A60();
  sub_12A70();
  sub_12A40();
  sub_12970();
  sub_12A30();
  v7 = _swiftEmptyArrayStorage[2];
  sub_12A60();
  sub_12A70();
  sub_12A40();
  sub_12970();
  sub_12A30();
  v8 = _swiftEmptyArrayStorage[2];
  sub_12A60();
  sub_12A70();
  sub_12A40();
  sub_12970();
  sub_12A30();
  v9 = _swiftEmptyArrayStorage[2];
  sub_12A60();
  sub_12A70();
  sub_12A40();
  return v4;
}

void sub_11828(uint64_t a1)
{
  sub_11B60(0, &qword_29F78, NSObject_ptr);
  v2 = sub_12A00();
  v3 = objc_opt_self();
  v4 = [v3 whiteColor];
  v5 = NTKInterpolateBetweenColors();

  if (!v5)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v2)
  {
    v6 = v5;
LABEL_5:
    v8 = *(a1 + 16);
    if (!v8)
    {

      return;
    }

    v20 = v6;
    sub_11354(0, v8, 0);
    v9 = (a1 + 32);
    v10 = v2;
    while (1)
    {
      v11 = *v9;
      v12 = NTKInterpolateBetweenColors();
      if (!v12)
      {
        break;
      }

      v13 = v12;
      if (v2)
      {
        v14 = v12;
      }

      else
      {
        v14 = NTKInterpolateBetweenColors();
        if (!v14)
        {
          goto LABEL_17;
        }
      }

      sub_AABC(&qword_29F80, &qword_16F58);
      v15 = swift_allocObject();
      *(v15 + 16) = xmmword_16E20;
      v16 = v14;
      *(v15 + 32) = [v13 CGColor];
      v17 = [v16 CGColor];

      *(v15 + 40) = v17;
      v19 = _swiftEmptyArrayStorage[2];
      v18 = _swiftEmptyArrayStorage[3];
      if (v19 >= v18 >> 1)
      {
        sub_11354((v18 > 1), v19 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v19 + 1;
      _swiftEmptyArrayStorage[v19 + 4] = v15;
      ++v9;
      --v8;
      v2 = v10;
      if (!v8)
      {

        return;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v7 = [v3 whiteColor];
  v6 = NTKInterpolateBetweenColors();

  if (v6)
  {
    goto LABEL_5;
  }

LABEL_19:
  __break(1u);
}

_OWORD *sub_11AE8(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

void sub_11AF8(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  if (a1)
  {
  }
}

uint64_t sub_11B60(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void sub_11C08(char a1, double a2)
{
  if (a2 <= 0.0)
  {
    v6 = ceil(a2 / -6.28318531) * 6.28318531 + a2;
  }

  else
  {
    v6 = a2 - floor(a2 / 6.28318531) * 6.28318531;
  }

  v7 = floor(v6 / 6.28318531 * 120.0);
  if ((*&v7 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_19;
  }

  if (v7 <= -9.22337204e18)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v7 >= 9.22337204e18)
  {
LABEL_20:
    __break(1u);
LABEL_21:
    swift_once();
    goto LABEL_14;
  }

  v3 = v7 % 120;
  v8 = (v3 + 1 + ((-119 * (v3 + 1)) >> 8)) & 0x80;
  v4 = (v3 + 1 - 120 * ((((137 * (v3 + 1)) >> 8) >> 6) + (v8 >> 7)));
  if ((v3 & 0x8000000000000000) == 0 && ((v3 + 1 - 120 * ((((137 * (v3 + 1)) >> 8) >> 6) + (v8 >> 7))) & 0x80000000) == 0)
  {
    v9 = *(v2 + OBJC_IVAR____TtC29NTKGladiusFaceBundleCompanion32NTKGladiusStretchySecondHandData_samples);
    v10 = *(v9 + 16);
    if (v3 >= v10)
    {
      __break(1u);
    }

    else if (v10 > v4)
    {
      v11 = v9 + 32;
      v12 = *(v11 + 8 * v3);
      v13 = *(v11 + 8 * v4);
      CLKInterpolateBetweenFloatsUnclipped();
      if ((a1 & 1) == 0)
      {
        v15 = v14 - *(v2 + OBJC_IVAR____TtC29NTKGladiusFaceBundleCompanion32NTKGladiusStretchySecondHandData_baseRadius);
      }

      return;
    }

    __break(1u);
    return;
  }

  if (qword_29C30 != -1)
  {
    goto LABEL_21;
  }

LABEL_14:
  v16 = sub_129A0();
  sub_AE18(v16, qword_2AE70);
  v17 = sub_12980();
  v18 = sub_129F0();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 134218496;
    *(v19 + 4) = v6;
    *(v19 + 12) = 2048;
    *(v19 + 14) = v3;
    *(v19 + 22) = 2048;
    *(v19 + 24) = v4;
    _os_log_impl(&dword_0, v17, v18, "Invalid sample index for angle: %f, baseIndex: %ld, nextIndex: %ld", v19, 0x20u);
  }
}

id sub_11EDC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NTKGladiusStretchySecondHandData();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_11F44(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

id sub_11F90(void *a1)
{
  *&v1[OBJC_IVAR____TtC29NTKGladiusFaceBundleCompanion32NTKGladiusStretchySecondHandData_sampleCount] = 120;
  [a1 screenBounds];
  *&v1[OBJC_IVAR____TtC29NTKGladiusFaceBundleCompanion32NTKGladiusStretchySecondHandData_baseRadius] = CGRectGetWidth(v11) * 0.5;
  v2 = sub_AB08(0, 120, 0, _swiftEmptyArrayStorage);
  for (i = 0; i != 120; ++i)
  {
    NTKScreenRadiusAtAngleWithInset();
    v6 = *(v2 + 2);
    v5 = *(v2 + 3);
    if (v6 >= v5 >> 1)
    {
      v7 = v4;
      v8 = sub_AB08((v5 > 1), v6 + 1, 1, v2);
      v4 = v7;
      v2 = v8;
    }

    *(v2 + 2) = v6 + 1;
    *&v2[8 * v6 + 32] = v4;
  }

  *&v1[OBJC_IVAR____TtC29NTKGladiusFaceBundleCompanion32NTKGladiusStretchySecondHandData_samples] = v2;
  v10.receiver = v1;
  v10.super_class = type metadata accessor for NTKGladiusStretchySecondHandData();
  return objc_msgSendSuper2(&v10, "init");
}

void sub_120DC(uint64_t a1)
{
  v3 = *v1;
  v1[2] = 81;
  *(v1 + 24) = 0;
  *(v1 + 6) = CFAbsoluteTimeGetCurrent();
  v1[8] = 0x3F800000C0200000;
  *(v1 + 7) = xmmword_16FE0;
  v4 = *(a1 + 16);
  *(v1 + 76) = *a1;
  *(v1 + 18) = 1064388153;
  *(v1 + 32) = 1065353216;
  *(v1 + 92) = v4;
  *(v1 + 27) = *(a1 + 32);
  v5 = MTLCreateSystemDefaultDevice();
  if (!v5)
  {
    goto LABEL_16;
  }

  v6 = v5;
  v7 = [v5 newCommandQueue];
  if (!v7)
  {
LABEL_15:
    swift_unknownObjectRelease();
LABEL_16:
    type metadata accessor for GladiusRenderer();
    swift_deallocPartialClassInstance();
    return;
  }

  v8 = v7;
  v1[4] = v6;
  swift_unknownObjectRetain();
  v9 = sub_129C0();
  [v8 setLabel:v9];

  v1[5] = v8;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v11 = objc_opt_self();
  swift_unknownObjectRetain();
  v12 = [v11 bundleForClass:ObjCClassFromMetadata];
  v29 = 0;
  v13 = [v6 newDefaultLibraryWithBundle:v12 error:&v29];

  if (!v13)
  {
    v25 = v29;
    sub_128E0();

    swift_willThrow();
    swift_unknownObjectRelease();

LABEL_13:
    swift_unknownObjectRelease();
LABEL_14:
    v26 = v1[4];
    swift_unknownObjectRelease();
    v27 = v1[5];
    goto LABEL_15;
  }

  v14 = v29;
  v15 = sub_129C0();
  v16 = [v13 newFunctionWithName:v15];

  if (!v16)
  {
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    goto LABEL_13;
  }

  v17 = sub_129C0();
  v18 = [v13 newFunctionWithName:v17];

  if (!v18)
  {
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    goto LABEL_13;
  }

  v19 = [objc_allocWithZone(MTLRenderPipelineDescriptor) init];
  [v19 setVertexFunction:v16];
  [v19 setFragmentFunction:v18];
  v20 = [v19 colorAttachments];
  v21 = [v20 objectAtIndexedSubscript:0];

  if (v21)
  {
    [v21 setPixelFormat:v1[2]];
    [v21 setBlendingEnabled:0];
    v29 = 0;
    v22 = [v6 newRenderPipelineStateWithDescriptor:v19 error:&v29];
    if (v22)
    {
      v23 = v22;
      v24 = v29;
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      v1[7] = v23;
      return;
    }

    v28 = v29;
    sub_128E0();

    swift_willThrow();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    goto LABEL_14;
  }

  __break(1u);
}

id sub_12548(void *a1)
{
  [a1 setRenderPipelineState:*(v1 + 56)];
  v3 = *(v1 + 68);
  v37 = *(v1 + 128);
  v36 = *(v1 + 112);
  v4 = *(v1 + 72);
  v38 = *(v1 + 76);
  v39 = *(v1 + 80);
  v5 = *(v1 + 88);
  v6 = *(v1 + 92);
  v7 = *(v1 + 96);
  v8 = *(v1 + 100);
  v9 = *(v1 + 104);
  v10 = __sincosf_stret(*(v1 + 64));
  v11 = __sincosf_stret(v3);
  v12 = __sincosf_stret(v4);
  v13 = sub_A300(__PAIR64__(LODWORD(v10.__sinval), LODWORD(v10.__cosval)), v5, v6, v38 + *&v39, *&v39, __PAIR64__(LODWORD(v12.__sinval), LODWORD(v12.__cosval)), v7, v8);
  v14 = sub_A300(__PAIR64__(LODWORD(v11.__sinval), LODWORD(v11.__cosval)), v5, v6, v38 + *(&v39 + 1), *(&v39 + 1), __PAIR64__(LODWORD(v12.__sinval), LODWORD(v12.__cosval)), v7, v8);
  if (*(v13 + 2) < 4uLL)
  {
LABEL_36:
    __break(1u);
  }

  v15 = 0;
  v16 = 0;
  v17 = 0;
  v18 = 0;
LABEL_3:
  while (1)
  {
    v19 = 12 * v15;
    v20 = v18;
    while (1)
    {
      v21 = v15;
      v18 = v20;
      v22 = v13[v19 + 40];
      v20 = 0x7F0000007FLL;
      if (v22 != 255 && (v22 & 1) != 0)
      {
        v23 = *&v13[v19 + 32];
        v24 = *(&v23 + 1);
        if (*(&v23 + 1) >= *&v23)
        {
          v25 = *&v23;
        }

        else
        {
          v25 = *(&v23 + 1);
        }

        if (*&v23 > *(&v23 + 1))
        {
          v24 = *&v23;
        }

        if (v21 >= *(v14 + 2))
        {
          __break(1u);
          goto LABEL_36;
        }

        v26 = v14[v19 + 40];
        v27 = 0x7F0000007FLL;
        if (v26 != 255 && (v26 & 1) != 0)
        {
          v28 = *&v14[v19 + 32];
          if (*(&v28 + 1) >= *&v28)
          {
            v27.i32[0] = *&v14[v19 + 32];
          }

          else
          {
            v27.i32[0] = HIDWORD(*&v14[v19 + 32]);
          }

          if (v25 > v27.f32[0])
          {
            v27.f32[0] = v25;
          }

          if (*&v28 > *(&v28 + 1))
          {
            LODWORD(v29) = *&v14[v19 + 32];
          }

          else
          {
            LODWORD(v29) = HIDWORD(*&v14[v19 + 32]);
          }

          if (v29 < v24)
          {
            v24 = v29;
          }

          v27.f32[1] = v24;
        }

        v30 = vabs_f32(v27);
        v31 = vcgt_f32(v30, vdup_lane_s32(v30, 1)).u8[0];
        v32 = vrev64_s32(v27);
        if (v31)
        {
          v33 = -1;
        }

        else
        {
          v33 = 0;
        }

        v20 = vbsl_s8(vdup_n_s32(v33), v32, v27);
      }

      v15 = v21 + 1;
      if (v21 > 1)
      {
        break;
      }

      v19 += 12;
      if (v21)
      {
        v17 = v20;
        goto LABEL_3;
      }
    }

    if (v21 != 2)
    {
      break;
    }

    v16 = v20;
  }

  v40[0] = v18;
  v40[1] = v17;
  v40[2] = v16;
  v40[3] = v20;
  v40[4] = __PAIR64__(LODWORD(v10.__sinval), LODWORD(v10.__cosval));
  v40[5] = __PAIR64__(LODWORD(v11.__sinval), LODWORD(v11.__cosval));
  *&v34 = __PAIR64__(LODWORD(v38), v37);
  v40[6] = __PAIR64__(LODWORD(v12.__sinval), LODWORD(v12.__cosval));
  *(&v34 + 1) = v39;
  v41 = v36;
  v42 = v34;
  v43 = v5;
  v44 = v6;
  v45 = v7;
  v46 = v8;
  v47 = v9;
  [a1 setFragmentBytes:v40 length:128 atIndex:0];
  return [a1 drawPrimitives:3 vertexStart:0 vertexCount:3];
}

uint64_t sub_1281C()
{
  v1 = v0[4];
  swift_unknownObjectRelease();
  v2 = v0[5];
  swift_unknownObjectRelease();
  v3 = v0[7];
  swift_unknownObjectRelease();

  return _swift_deallocClassInstance(v0, 132, 15);
}

__double2 __sincos_stret(double a1)
{
  v3 = ___sincos_stret(a1);
  cosval = v3.__cosval;
  sinval = v3.__sinval;
  result.__cosval = cosval;
  result.__sinval = sinval;
  return result;
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