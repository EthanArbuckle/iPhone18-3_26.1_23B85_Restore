void sub_18B8(uint64_t a1, __int128 *a2, uint64_t a3)
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_19A8;
  v5[3] = &unk_10410;
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

void sub_19A8(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) complicationLayoutforSlot:a2];
  v4 = [v3 defaultLayoutRuleForState:*(a1 + 40)];
  v5 = *(a1 + 64);
  v6[0] = *(a1 + 48);
  v6[1] = v5;
  v6[2] = *(a1 + 80);
  [v4 setContentTransform:v6];
}

void sub_23C0(id a1, NSString *a2, NTKComplicationDisplayWrapperView *a3)
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

void sub_2C5C(id a1, NTKFace *a2, unint64_t a3, BOOL *a4)
{
  v5 = a2;
  if (a3)
  {
    v6 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:13 zOrder:4000];
    v10 = v6;
    v7 = &v10;
  }

  else
  {
    v6 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:13 zOrder:9000];
    v11 = v6;
    v7 = &v11;
  }

  v8 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:3 zOrder:4000];
  v7[1] = v8;
  v9 = [NSArray arrayWithObjects:v7 count:2];
  [(NTKFace *)v5 setCurationPlacements:v9];
}

void sub_37CC(id a1)
{
  qword_16AA0 = [[NTKCornerComplicationConfiguration alloc] initWithTopLeftComplication:10 topRightComplication:36 bottomLeftComplication:3 bottomRightComplication:7];

  _objc_release_x1();
}

void NTKCrosswindBuildSectorsConfiguration(_DWORD *a1, uint64_t a2, unint64_t *a3, __n128 a4, __n128 a5)
{
  memset(v39, 0, sizeof(v39));
  v7 = [NSNumber numberWithFloat:?];
  v8 = v39[a5.n128_u32[0]];
  v39[a5.n128_u32[0]] = v7;

  HIDWORD(v9) = a4.n128_u32[1];
  LODWORD(v9) = a4.n128_u32[1];
  v10 = [NSNumber numberWithFloat:v9];
  v11 = v39[a5.n128_u32[1]];
  v39[a5.n128_u32[1]] = v10;

  v12 = [NSNumber numberWithFloat:COERCE_DOUBLE(__PAIR64__(a4.n128_u32[1], a4.n128_u32[2]))];
  v13 = a5.n128_u32[2];
  v14 = v39[a5.n128_u32[2]];
  v39[a5.n128_u32[2]] = v12;

  v15 = [NSMutableArray arrayWithObjects:v39 count:3];
  v16 = v15;
  if (*(a2 + 16) == 1)
  {
    [v15 removeObjectAtIndex:a5.n128_u32[0]];
    v13 = a5.n128_u32[2] - (a5.n128_u32[0] < a5.n128_u32[2]);
  }

  if (*a2 >= 0)
  {
    v17 = *a2;
  }

  else
  {
    v17 = v13;
  }

  if (a3)
  {
    *a3 = v17;
  }

  memset(v38, 0, sizeof(v38));
  v18 = [v16 count];
  v19 = v18;
  if (v18)
  {
    v20 = 0;
    v21 = -v18;
    do
    {
      v22 = [NSNumber numberWithUnsignedInteger:NTKCrosswindOffsetIndexWrapped(*(a2 + 8), v20, 4)];
      v23 = v38[v17 % v19];
      v38[v17 % v19] = v22;

      --v20;
      ++v17;
    }

    while (v21 != v20);
  }

  v24 = [NSMutableArray arrayWithObjects:v38 count:v19];
  if (*(a2 + 17))
  {
    --v19;
    [v16 removeObjectAtIndex:v13];
    [v24 removeObjectAtIndex:v13];
  }

  if (v19)
  {
    v25 = 0;
    v26 = a1 + 8;
    do
    {
      v27 = [v16 objectAtIndexedSubscript:v25];
      [v27 floatValue];
      v29 = v28;

      v30 = &v26[v25];
      *(v30 - 7) = v29;
      v31 = [v24 objectAtIndexedSubscript:v25];
      *(v30 - 4) = [v31 unsignedIntValue];

      v32 = __sincosf_stret(v29);
      *&v26[2 * v25++] = __PAIR64__(LODWORD(v32.__sinval), LODWORD(v32.__cosval));
    }

    while (v19 != v25);
  }

  *a1 = v19;

  for (i = 2; i != -1; --i)
  {
  }

  for (j = 2; j != -1; --j)
  {
  }
}

uint64_t NTKCrosswindDeduplicateAnglesInSectorsConfiguration(uint64_t result)
{
  v1 = result;
  v12 = 0;
  v11 = 0;
  v10 = 0;
  v9 = 0;
  v2 = *result;
  if (v2)
  {
    v3 = 0;
    v4 = 0;
    v5 = result + 4;
    while (1)
    {
      v6 = *(v5 + 4 * v4);
      if (v4 == v2 - 1)
      {
        break;
      }

      v7 = v4 + 1;
      v8 = *(v5 + 4 * (v4 + 1));
      result = CLKFloatEqualsFloat();
      if ((result & 1) == 0)
      {
        goto LABEL_6;
      }

LABEL_7:
      v4 = v7;
      if (v7 == v2)
      {
        goto LABEL_10;
      }
    }

    v7 = v4 + 1;
LABEL_6:
    *(&v11 + v3) = v6;
    *(&v9 + v3++) = *(v1 + 16 + 4 * v4);
    goto LABEL_7;
  }

  v3 = 0;
LABEL_10:
  *v1 = v3;
  *(v1 + 4) = v11;
  *(v1 + 12) = v12;
  *(v1 + 16) = v9;
  *(v1 + 24) = v10;
  return result;
}

double NTKCrosswindGetAngleIndiciesFromSectorsConfiguration(_DWORD *a1)
{
  if (*a1)
  {
    v2 = 0;
    v3.i64[0] = -1;
    v3.i64[1] = -1;
    do
    {
      v20 = v3;
      v4 = *&a1[v2 + 1];
      v5 = CLKFloatEqualsFloat();
      v6.i32[0] = v2;
      *(v6.i64 + 4) = *(v20.i64 + 4);
      if (v5)
      {
        v7 = -1;
      }

      else
      {
        v7 = 0;
      }

      v8 = vbslq_s8(vdupq_n_s32(v7), v6, v20);
      v17 = v8;
      v8.i32[3] = v20.i32[3];
      v18 = v8;
      v9 = CLKFloatEqualsFloat();
      v10 = v17;
      v10.i32[1] = v2;
      v10.i32[2] = v17.i32[2];
      if (v9)
      {
        v11 = -1;
      }

      else
      {
        v11 = 0;
      }

      v19 = vbslq_s8(vdupq_n_s32(v11), v10, v18);
      v12 = CLKFloatEqualsFloat();
      v13 = v19;
      v13.i32[2] = v2;
      if (v12)
      {
        v14 = -1;
      }

      else
      {
        v14 = 0;
      }

      v15 = vbslq_s8(vdupq_n_s32(v14), v13, v19);
      v15.i32[3] = v20.i32[3];
      ++v2;
      v3 = v15;
    }

    while (v2 < *a1);
  }

  else
  {
    v15.i64[0] = -1;
  }

  return *v15.i64;
}

double sub_4248(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&unk_16AC8);
  if (qword_16AD0)
  {
    v3 = qword_16AD0 == v2;
  }

  else
  {
    v3 = 0;
  }

  if (v3 && (v4 = [v2 version], v4 == qword_16AD8))
  {
    v5 = qword_16AB0;
  }

  else
  {
    qword_16AD0 = v2;
    qword_16AD8 = [v2 version];
    v5 = sub_4330(qword_16AD8, v2);
    qword_16AB0 = v5;
    qword_16AB8 = v6;
    qword_16AC0 = v7;
  }

  os_unfair_lock_unlock(&unk_16AC8);

  return *&v5;
}

double sub_4330(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [CLKUIAnalogHandConfiguration defaultSecondConfigurationForDevice:v2];
  [v3 handLength];

  CLKRoundForDevice();
  v5 = v4;
  CLKRoundForDevice();

  return v5;
}

id sub_454C()
{
  if (qword_16AE8 != -1)
  {
    sub_7754();
  }

  v1 = qword_16AE0;

  return v1;
}

_DWORD *sub_60AC(_DWORD *result, uint64_t a2, uint64_t a3)
{
  if (a2 && a3)
  {
    v5 = result;
    for (i = 0; i != a2; ++i)
    {
      __src[NTKCrosswindOffsetIndexWrapped(i, a3, a2)] = v5[i];
    }

    return memcpy(v5, __src, 4 * a2);
  }

  return result;
}

void sub_63CC(id a1)
{
  qword_16AE0 = [NSBundle bundleForClass:objc_opt_class()];

  _objc_release_x1();
}

uint64_t NTKCrosswindPolarFullTurnAngleCrossingBetweenAngles()
{
  CLKWrapRadians();
  v1 = v0;
  CLKWrapRadians();
  v3 = v2 > 5.02654825 && v1 < 1.25663706;
  v4 = v2 >= 1.25663706 || v1 <= 5.02654825;
  v5 = v3 << 63 >> 63;
  if (v4)
  {
    return v5;
  }

  else
  {
    return 1;
  }
}

uint64_t NTKCrosswindPolarFullTurnAngleCrossingAlongShortestPathBetweenAngles()
{
  CLKWrapRadians();
  v1 = v0;
  CLKWrapRadians();
  v3 = v2;
  if (CLKFloatEqualsFloat())
  {
    return 0;
  }

  CLKInterpolateShortestPathBetweenAnglesUnclipped();
  CLKWrapRadians();
  if (v1 >= v3)
  {
    return v5 >= v1 || v3 >= v5;
  }

  else
  {
    v6 = v5 >= v3 || v1 >= v5;
    return v6 << 63 >> 63;
  }
}

__n128 NTKCrosswindHourMinuteSecondAnglesToPolarAngles()
{
  CLKClockRadiansToPolarRadians();
  v5 = v0;
  CLKClockRadiansToPolarRadians();
  v1.f64[0] = v5;
  v1.f64[1] = v2;
  *&v3 = vcvt_f32_f64(v1);
  v6 = v3;
  CLKClockRadiansToPolarRadians();
  return v6;
}

void sub_6CE4(id a1)
{
  qword_16AF0 = objc_alloc_init(NSCache);

  _objc_release_x1();
}

void sub_7768(uint64_t a1)
{
  v1 = *(a1 + 8);
  v3[0] = 138412802;
  sub_6428();
  _os_log_fault_impl(&dword_0, v2, OS_LOG_TYPE_FAULT, "Failed to create %@ shader for device %@ due to error: %@", v3, 0x20u);
}

void sub_77F4(uint64_t *a1)
{
  v1 = *a1;
  v3[0] = 138412802;
  sub_6428();
  _os_log_fault_impl(&dword_0, v2, OS_LOG_TYPE_FAULT, "Failed to create %@ State for device %@ due to error: %@", v3, 0x20u);
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