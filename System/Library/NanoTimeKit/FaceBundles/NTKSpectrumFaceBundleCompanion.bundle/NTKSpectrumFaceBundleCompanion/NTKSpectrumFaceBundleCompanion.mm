uint64_t _NTKSpectrumGetOverlayGradientColor(double a1)
{
  v1 = a1;
  v2 = fminf(fmaxf(v1, 0.0), 1.0);
  OverlayGradientTable = NTKSpectrumGetOverlayGradientTable();
  v4 = (v2 * 6.0);
  v5 = (v4 + 1) % 6;
  v6 = *(OverlayGradientTable + 4 * v4);
  CLKUIConvertToRGBfFromSRGB8_fast();
  v7 = *(OverlayGradientTable + 4 * v5);
  CLKUIConvertToRGBfFromSRGB8_fast();

  return CLKUIConvertToUIColorFromRGBf_fast();
}

id sub_1170(uint64_t a1, void *a2, void *a3)
{
  CLKUIConvertToRGBfFromUIColor_fast();
  result = CLKUIConvertRGBtoLAB();
  __asm { FMOV            V2.4S, #1.0 }

  if (a2)
  {
    CLKUIConvertLABtoRGB();
    result = CLKUIConvertToUIColorFromRGBf_fast();
    *a2 = result;
    if (!a3)
    {
      return result;
    }
  }

  else if (!a3)
  {
    return result;
  }

  CLKUIConvertLABtoRGB();
  result = CLKUIConvertToUIColorFromRGBf_fast();
  *a3 = result;
  return result;
}

void sub_1264(void *a1, void *a2, void *a3)
{
  v14 = a1;
  CLKUIConvertToRGBfFromUIColor_fast();
  CLKUIConvertRGBtoLAB();
  v13 = v5;
  CLKUIConvertLABtoRGB();
  __asm { FMOV            V1.4S, #1.0 }

  v11 = CLKUIConvertToUIColorFromRGBf_fast();
  if (v13 < 85.0)
  {
    if (a2)
    {
      *a2 = v14;
    }

    if (!a3)
    {
      goto LABEL_10;
    }

LABEL_9:
    v12 = v11;
    *a3 = v11;
    goto LABEL_10;
  }

  if (a3)
  {
    *a3 = v14;
  }

  a3 = a2;
  if (a2)
  {
    goto LABEL_9;
  }

LABEL_10:
}

void sub_203C(double *a1, void *a2, unint64_t a3)
{
  v5 = *(a1 + 4);
  v6 = a1[5];
  v8 = a2;
  [v5 _tickOpactiyAtIndex:a3 bezelTextWidthInRadius:v6 invisibleTicksAlpha:0.0];
  *&v7 = v7;
  if (*(a1 + 6) <= a3)
  {
    *&v7 = 0.0;
  }

  [v8 setOpacity:v7];
}

void sub_2160(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v9 = a2;
  [v5 _tickOpactiyAtIndex:a3 bezelTextWidthInRadius:v6 invisibleTicksAlpha:0.0];
  [*(a1 + 32) _tickOpactiyAtIndex:a3 bezelTextWidthInRadius:*(a1 + 48) invisibleTicksAlpha:0.0];
  v7 = *(a1 + 56);
  CLKInterpolateBetweenFloatsClipped();
  *&v8 = v8;
  [v9 setOpacity:v8];
}

void sub_2288(double *a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 4);
  v5 = a1[5];
  v6 = a1[6];
  v8 = a2;
  [v4 _tickOpactiyAtIndex:a3 bezelTextWidthInRadius:v5 invisibleTicksAlpha:v6];
  *&v7 = v7;
  [v8 setOpacity:v7];
}

void sub_2340(id a1)
{
  v1 = +[NSNull null];
  v4[0] = @"instanceTransform";
  v4[1] = @"contentsMultiplyColor";
  v5[0] = v1;
  v5[1] = v1;
  v4[2] = @"transform";
  v4[3] = @"hidden";
  v5[2] = v1;
  v5[3] = v1;
  v4[4] = @"position";
  v4[5] = @"opacity";
  v5[4] = v1;
  v5[5] = v1;
  v4[6] = @"instanceCount";
  v4[7] = @"instanceDelay";
  v5[6] = v1;
  v5[7] = v1;
  v4[8] = @"backgroundColor";
  v5[8] = v1;
  v2 = [NSDictionary dictionaryWithObjects:v5 forKeys:v4 count:9];
  v3 = qword_165F0;
  qword_165F0 = v2;
}

void sub_25B0(void *a1@<X1>, _OWORD *a2@<X8>)
{
  v7 = a1;
  os_unfair_lock_lock(&unk_16640);
  if (qword_16648)
  {
    v3 = qword_16648 == v7;
  }

  else
  {
    v3 = 0;
  }

  if (!v3 || (v4 = [v7 version], v4 != qword_16650))
  {
    qword_16648 = v7;
    qword_16650 = [v7 version];
    sub_2688(v7, v8);
    xmmword_16600 = v8[0];
    *algn_16610 = v8[1];
    xmmword_16620 = v8[2];
    unk_16630 = v8[3];
  }

  v5 = *algn_16610;
  *a2 = xmmword_16600;
  a2[1] = v5;
  v6 = unk_16630;
  a2[2] = xmmword_16620;
  a2[3] = v6;
  os_unfair_lock_unlock(&unk_16640);
}

void sub_2688(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v9 = [CLKDeviceMetrics metricsWithDevice:a1 identitySizeClass:2];
  [v9 scaledSize:3 withOverride:1.5 forSizeClass:{6.0, 1.5, 7.0}];
  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 16) = v3 * 0.5;
  [v9 scaledSize:3 withOverride:1.0 forSizeClass:{5.5, 1.0, 6.5}];
  *(a2 + 24) = v5;
  *(a2 + 32) = v6;
  *(a2 + 40) = v5 * 0.5;
  [v9 scaledValue:3 withOverride:3.0 forSizeClass:3.0];
  *(a2 + 48) = v7;
  [v9 scaledValue:5.5];
  *(a2 + 56) = v8;
}

void sub_2C84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2CA0(uint64_t a1, double a2, double a3, float a4, float a5, float a6, float a7)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    WeakRetained[12] = a2;
    WeakRetained[13] = a3;
    *(WeakRetained + 28) = a4;
    *(WeakRetained + 29) = a5;
    *(WeakRetained + 30) = a6;
    *(WeakRetained + 31) = a7;
  }
}

void sub_476C(id a1, NSString *a2, NTKComplicationDisplayWrapperView *a3)
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

void sub_48F0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [v4 display];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    CGAffineTransformMakeScale(&v7, *(a1 + 32), *(a1 + 32));
    [v4 setContentTransform:&v7];
  }
}

double sub_5C4C(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&unk_16680);
  if (qword_16688)
  {
    v3 = qword_16688 == v2;
  }

  else
  {
    v3 = 0;
  }

  if (v3 && (v4 = [v2 version], v4 == qword_16690))
  {
    v5 = qword_16660;
  }

  else
  {
    qword_16688 = v2;
    qword_16690 = [v2 version];
    v5 = sub_5D4C(qword_16690, v2);
    qword_16660 = v5;
    qword_16668 = v6;
    qword_16670 = v7;
    qword_16678 = v8;
  }

  os_unfair_lock_unlock(&unk_16680);

  return *&v5;
}

double sub_5D4C(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [CLKDeviceMetrics metricsWithDevice:v2 identitySizeClass:2];
  [v3 scaledValue:3 withOverride:133.0 forSizeClass:151.0];
  [NTKAnalogUtilities largeDialDiameterForDevice:v2];

  return 1.0;
}

id sub_5EF4(uint64_t a1, void *a2)
{
  v3 = a2;
  os_unfair_lock_lock(&unk_166A0);
  if (qword_166A8)
  {
    v4 = qword_166A8 == v3;
  }

  else
  {
    v4 = 0;
  }

  if (!v4 || (v5 = [v3 version], v5 != qword_166B0))
  {
    qword_166A8 = v3;
    qword_166B0 = [v3 version];
    v6 = [*(a1 + 32) __orderedValuesForDevice:v3];
    v7 = qword_16698;
    qword_16698 = v6;
  }

  v8 = qword_16698;
  os_unfair_lock_unlock(&unk_166A0);

  return v8;
}

void sub_6558(uint64_t a1)
{
  v6.receiver = *(a1 + 32);
  v6.super_class = NTKSpectrumAnalogColorEditOption;
  v1 = objc_msgSendSuper2(&v6, "_valueToFaceBundleStringDict");
  v2 = [v1 mutableCopy];

  [v2 removeObjectForKey:&off_10C00];
  v9[0] = &off_10D98;
  v9[1] = &off_10D80;
  v10[0] = NTKFaceBundleColorSpectrumDualTone1;
  v10[1] = NTKFaceBundleColorSpectrumDualTone2;
  v9[2] = &off_10D68;
  v9[3] = &off_10D50;
  v10[2] = NTKFaceBundleColorSpectrumDualTone3;
  v10[3] = NTKFaceBundleColorSpectrumDualTone4;
  v9[4] = &off_10D38;
  v9[5] = &off_10D20;
  v10[4] = NTKFaceBundleColorSpectrumDualTone5;
  v10[5] = NTKFaceBundleColorSpectrumDualTone6;
  v9[6] = &off_10D08;
  v9[7] = &off_10CF0;
  v10[6] = NTKFaceBundleColorSpectrumDualTone7;
  v10[7] = NTKFaceBundleColorSpectrumDualTone8;
  v9[8] = &off_10CD8;
  v9[9] = &off_10CC0;
  v10[8] = NTKFaceBundleColorSpectrumDualTone9;
  v10[9] = NTKFaceBundleColorSpectrumDualTone10;
  v9[10] = &off_10CA8;
  v9[11] = &off_10C18;
  v10[10] = NTKFaceBundleColorSpectrumDualTone11;
  v10[11] = NTKFaceBundleColorSpectrumMulticolor1;
  v3 = [NSDictionary dictionaryWithObjects:v10 forKeys:v9 count:12];
  [v2 addEntriesFromDictionary:v3];

  v7[0] = &off_10C90;
  v7[1] = &off_10C78;
  v8[0] = NTKFaceBundleColorSpectrumDualTone12;
  v8[1] = NTKFaceBundleColorSpectrumDualTone13;
  v7[2] = &off_10C60;
  v7[3] = &off_10C48;
  v8[2] = NTKFaceBundleColorSpectrumDualTone14;
  v8[3] = NTKFaceBundleColorSpectrumDualTone15;
  v7[4] = &off_10C30;
  v8[4] = NTKFaceBundleColorSpectrumDualTone16;
  v4 = [NSDictionary dictionaryWithObjects:v8 forKeys:v7 count:5];
  [v2 addEntriesFromDictionary:v4];

  v5 = qword_166B8;
  qword_166B8 = v2;
}