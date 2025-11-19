void sub_1360(id a1)
{
  qword_1A3E0 = objc_alloc_init(NTKParameciumFaceComplicationDescriptor);

  _objc_release_x1();
}

void sub_2494(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_24B8(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v8 = *a3;
    v7 = *(a3 + 24);
    v9 = *(a3 + 8);
    v10 = v7;
    [WeakRetained updateTime:&v8];
  }
}

void sub_2ADC(id a1, NSString *a2, NTKComplicationDisplayWrapperView *a3)
{
  v3 = [(NTKComplicationDisplayWrapperView *)a3 display];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v3 transitionToMonochromeWithFraction:1.0];
  }
}

double normalizeAngle(double a1)
{
  if (a1 <= 0.0)
  {
    return a1 + ceil(a1 / -6.28318531) * 6.28318531;
  }

  else
  {
    return a1 + floor(a1 / 6.28318531) * -6.28318531;
  }
}

double computeShortestAngle(double a1, double a2)
{
  if (a1 <= 0.0)
  {
    v2 = ceil(a1 / -6.28318531);
    v3 = 6.28318531;
  }

  else
  {
    v2 = floor(a1 / 6.28318531);
    v3 = -6.28318531;
  }

  v4 = a1 + v2 * v3;
  if (a2 <= 0.0)
  {
    v5 = ceil(a2 / -6.28318531);
    v6 = 6.28318531;
  }

  else
  {
    v5 = floor(a2 / 6.28318531);
    v6 = -6.28318531;
  }

  v7 = v4 - (a2 + v5 * v6);
  if (v7 <= 0.0)
  {
    v8 = ceil(v7 / -6.28318531);
    v9 = 6.28318531;
  }

  else
  {
    v8 = floor(v7 / 6.28318531);
    v9 = -6.28318531;
  }

  v10 = v7 + v8 * v9;
  v11 = fabs(v10);
  v12 = -v10;
  result = 6.28318531 - v10;
  if (v11 <= 3.14159265)
  {
    return v12;
  }

  return result;
}

void sub_395C(id a1)
{
  qword_1A3F0 = objc_alloc_init(NSCache);

  _objc_release_x1();
}

double sub_3A78(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&unk_1A410);
  if (qword_1A418)
  {
    v3 = qword_1A418 == v2;
  }

  else
  {
    v3 = 0;
  }

  if (v3 && (v4 = [v2 version], v4 == qword_1A420))
  {
    v5 = qword_1A400;
  }

  else
  {
    qword_1A418 = v2;
    qword_1A420 = [v2 version];
    v5 = sub_3B40(qword_1A420, v2);
    qword_1A400 = v5;
    qword_1A408 = v6;
  }

  os_unfair_lock_unlock(&unk_1A410);

  return *&v5;
}

double sub_3B40(uint64_t a1, uint64_t a2)
{
  v2 = [CLKDeviceMetrics metricsWithDevice:a2 identitySizeClass:2];
  [v2 scaledValue:-48.0];
  v4 = v3;
  [v2 scaledValue:-57.0];

  return v4;
}

uint64_t sub_5438(uint64_t a1, unint64_t a2)
{
  v3 = 0;
  v4 = *(a1 + 40) + vcvts_n_f32_u64(a2, 7uLL) * *(a1 + 56);
  v5 = a2 << 9;
  do
  {
    v6 = *(a1 + 32) + vcvts_n_f32_u32(v3, 7uLL) * *(a1 + 48);
    v7 = *(a1 + 72);
    v8 = *(a1 + 76);
    pnoise3();
    v10 = ((v9 + 1.0) * 0.5 * 255.0);
    v11 = *(a1 + 72);
    v12 = *(a1 + 76);
    pnoise3();
    v14 = ((v13 + 1.0) * 0.5 * 255.0);
    v15 = *(a1 + 72);
    v16 = *(a1 + 76);
    pnoise3();
    v18 = ((v17 + 1.0) * 0.5 * 255.0);
    v19 = *(a1 + 72);
    v20 = *(a1 + 76);
    result = pnoise3();
    *(*(a1 + 64) + v5) = v10;
    *(*(a1 + 64) + v5 + 1) = v14;
    *(*(a1 + 64) + v5 + 2) = v18;
    *(*(a1 + 64) + v5 + 3) = ((v22 + 1.0) * 0.5 * 255.0);
    ++v3;
    v5 += 4;
  }

  while (v3 != 128);
  return result;
}

void *sub_55B4(uint64_t a1, void *a2)
{
  v3 = [a2 blitCommandEncoder];
  v10 = vdupq_n_s64(0x80uLL);
  v11 = 1;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  memset(v9, 0, sizeof(v9));
  [v3 copyFromBuffer:v4 sourceOffset:0 sourceBytesPerRow:512 sourceBytesPerImage:0x10000 sourceSize:&v10 toTexture:v5 destinationSlice:0 destinationLevel:0 destinationOrigin:v9];
  [v3 endEncoding];
  v6 = *(a1 + 40);
  v7 = v6;

  return v6;
}

void sub_568C(id a1)
{
  v1 = [NTKFontLoader fontDescriptorForSectName:@"__ConfettiFont" fromMachO:&dword_0];
  v2 = qword_1A428;
  qword_1A428 = v1;

  _objc_release_x1(v1, v2);
}

uint64_t sub_5B74(uint64_t result, int a2)
{
  v2 = *(result + 48);
  if (v2)
  {
    v3 = 0;
    v4 = vdupq_n_s32(0x437F0000u);
    do
    {
      v5.i64[0] = 0x3F0000003F000000;
      v5.i64[1] = 0x3F0000003F000000;
      *(*(result + 40) + 4 * (v3 + v2 * a2)) = vuzp1_s8(vmovn_s32(vcvtq_s32_f32(vminnmq_f32(vmaxnmq_f32(vmlaq_f32(v5, xmmword_BED0, *(*(result + 32) + 16 * (v3 + v2 * a2))), 0), v4))), 0x438937054369FA7FLL).u32[0];
      ++v3;
      v2 = *(result + 48);
    }

    while (v3 < v2);
  }

  return result;
}

double translationMatrix()
{
  __asm { FMOV            V2.4S, #1.0 }

  *&result = 1065353216;
  return result;
}

__n128 sub_6AE4(uint64_t a1, int a2, float a3, __n128 a4)
{
  *([*(a1 + 32) contents] + a2) = a3;
  v6 = a4;
  v6.n128_f32[1] = 1.0 - a4.n128_f32[1];
  v10 = v6;
  v7 = [*(a1 + 40) contents];
  result = v10;
  v7[a2] = v10.n128_u64[0];
  return result;
}

double sub_8034(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&unk_1A448);
  if (qword_1A450)
  {
    v3 = qword_1A450 == v2;
  }

  else
  {
    v3 = 0;
  }

  if (v3 && (v4 = [v2 version], v4 == qword_1A458))
  {
    v5 = qword_1A438;
  }

  else
  {
    qword_1A450 = v2;
    qword_1A458 = [v2 version];
    v5 = sub_80FC(qword_1A458, v2);
    qword_1A438 = v5;
    qword_1A440 = v6;
  }

  os_unfair_lock_unlock(&unk_1A448);

  return *&v5;
}

double sub_80FC(uint64_t a1, uint64_t a2)
{
  v2 = [CLKDeviceMetrics metricsWithDevice:a2 identitySizeClass:6];
  [v2 setRoundingBehavior:0];
  [v2 scaledValue:145.0];
  v4 = v3;
  [v2 scaledValue:1.0];

  return v4;
}

void sub_85A0(uint64_t a1, void *a2, unint64_t a3)
{
  v5 = a2;
  v6 = [*(a1 + 32) defaultFaceForDevice:*(a1 + 40)];
  if (v6)
  {
    v7 = +[NTKParameciumBackgroundEditOption optionWithParameciumBackground:forDevice:](NTKParameciumBackgroundEditOption, "optionWithParameciumBackground:forDevice:", [v5 unsignedIntValue], *(a1 + 40));
    [v6 selectOption:v7 forCustomEditMode:15 slot:0];
    if ([*(a1 + 48) count] > a3)
    {
      v8 = [*(a1 + 48) objectAtIndexedSubscript:a3];
      v9 = +[NTKParameciumStyleEditOption optionWithParameciumStyle:forDevice:](NTKParameciumStyleEditOption, "optionWithParameciumStyle:forDevice:", [v8 unsignedIntValue], *(a1 + 40));

      [v6 selectOption:v9 forCustomEditMode:12 slot:0];
    }

    if (a3 == 2)
    {
      [v6 setComplication:0 forSlot:NTKComplicationSlotSubdialTop];
      v10 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:3 zOrder:4000];
      v15[0] = v10;
      v11 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:14 zOrder:4000];
      v15[1] = v11;
      v12 = [NSArray arrayWithObjects:v15 count:2];
      [v6 setCurationPlacements:v12];
    }

    else
    {
      if (a3 == 1)
      {
        v10 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:19 zOrder:4000];
        v16[0] = v10;
        v11 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:3 zOrder:4000];
        v16[1] = v11;
        v12 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:14 zOrder:4000];
        v16[2] = v12;
        v13 = v16;
      }

      else
      {
        if (a3)
        {
LABEL_12:
          [*(a1 + 56) addObject:v6];

          goto LABEL_13;
        }

        v10 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:19 zOrder:4000];
        v17[0] = v10;
        v11 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:3 zOrder:4000];
        v17[1] = v11;
        v12 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:14 zOrder:8000];
        v17[2] = v12;
        v13 = v17;
      }

      v14 = [NSArray arrayWithObjects:v13 count:3];
      [v6 setCurationPlacements:v14];
    }

    goto LABEL_12;
  }

LABEL_13:
}

void sub_8C3C(id a1)
{
  v3[0] = &off_14E98;
  v3[1] = &off_14EB0;
  v4[0] = @"on";
  v4[1] = @"off";
  v1 = [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:2];
  v2 = qword_1A460;
  qword_1A460 = v1;
}

void sub_8DE0(id a1)
{
  v3[0] = &off_14EF8;
  v3[1] = &off_14EE0;
  v4[0] = @"numbers";
  v4[1] = @"simple";
  v3[2] = &off_14EC8;
  v4[2] = @"confetti";
  v1 = [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:3];
  v2 = qword_1A470;
  qword_1A470 = v1;
}

void sub_8EC4(uint64_t a1, void *a2, NSObject *a3)
{
  v5 = [a2 description];
  v6 = 138412546;
  v7 = a1;
  v8 = 2112;
  v9 = v5;
  _os_log_error_impl(&dword_0, a3, OS_LOG_TYPE_ERROR, "Failed to create paramecium pipeline for %@ with error: %@", &v6, 0x16u);
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