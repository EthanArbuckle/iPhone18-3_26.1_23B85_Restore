void sub_12B8(id a1)
{
  v1 = objc_opt_new();
  v4 = [BSUIMappedImageCacheOptions optionsWithContainerPathProvider:v1];

  v2 = [[BSUIMappedImageCache alloc] initWithUniqueIdentifier:@"com.apple.NanoTimeKit.NTKUtilityFaceView" options:v4];
  v3 = qword_163B8;
  qword_163B8 = v2;
}

double sub_1624@<D0>(void *a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 304) = 0;
  *(a3 + 272) = 0u;
  *(a3 + 288) = 0u;
  *(a3 + 240) = 0u;
  *(a3 + 256) = 0u;
  *(a3 + 208) = 0u;
  *(a3 + 224) = 0u;
  *(a3 + 176) = 0u;
  *(a3 + 192) = 0u;
  *(a3 + 144) = 0u;
  *(a3 + 160) = 0u;
  *(a3 + 112) = 0u;
  *(a3 + 128) = 0u;
  *(a3 + 80) = 0u;
  *(a3 + 96) = 0u;
  *(a3 + 48) = 0u;
  *(a3 + 64) = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0u;
  *a3 = 0u;
  sub_244C(a1, a3);
  if (a2 <= 0xE)
  {
    v6 = a3 + 8 * a2;
    *(a3 + 56) = *(v6 + 64);
    result = *(v6 + 192);
    *(a3 + 184) = result;
  }

  return result;
}

id _NTKUtilityTick(unint64_t a1, void *a2, double a3, double a4, double a5, double a6, double a7)
{
  v13 = (a1 * 6.0) * 0.0174532925;
  v14 = v13;
  v15 = __sincosf_stret(v14);
  v16 = a2;
  v17 = +[CALayer layer];
  v18 = [v16 CGColor];

  [v17 setBackgroundColor:v18];
  CGAffineTransformMakeRotation(&v20, v13);
  [v17 setAffineTransform:&v20];
  [v17 setAnchorPoint:{0.5, 0.0}];
  [v17 setBounds:{0.0, 0.0, a3, a4}];
  [v17 setPosition:{a6 + a5 * v15.__sinval, a7 - a5 * v15.__cosval}];

  return v17;
}

id _NTKUtilityMinuteLayer(unint64_t a1, double a2, double a3, double a4, double a5, uint64_t a6, unint64_t a7, void *a8)
{
  v14 = a8;
  if (a1)
  {
    v15 = a1;
  }

  else
  {
    v15 = 60;
  }

  if (a7 <= 0xB && ((1 << a7) & 0x806) != 0)
  {
    v16 = @"%i";
    v17 = a7;
  }

  else
  {
    v16 = @"%02i";
    v17 = 0;
  }

  v18 = _NTKUtilityNumberText(v16, v15, v17);
  if (!NTKShowIndicScriptNumerals() || ([NTKSFCompactFont numericFontOfSize:a2 weight:UIFontWeightMedium], (v19 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v19 = [CLKFont systemFontOfSize:a2 weight:UIFontWeightMedium];
  }

  v20 = _NTKUtilityLanguageRenderingHintForUtilityFaceDialTypeface(a7);
  v21 = [NSAttributedString alloc];
  v42[0] = v19;
  v41[0] = NSFontAttributeName;
  v41[1] = NSForegroundColorAttributeName;
  v22 = +[UIColor whiteColor];
  v41[2] = NSLanguageIdentifierAttributeName;
  v42[1] = v22;
  v42[2] = v20;
  v23 = [NSDictionary dictionaryWithObjects:v42 forKeys:v41 count:3];
  v24 = [v21 initWithString:v18 attributes:v23];

  [v24 boundingRectWithSize:3 options:0 context:{CGSizeZero.width, CGSizeZero.height}];
  v27 = v26;
  v29 = v28;
  v31 = v30;
  if (a7 == 2)
  {
    [v19 ascender];
    v33 = v32;
    [v19 capHeight];
    v35 = v33 - v34;
    [v19 descender];
    v31 = ceil(v31 + v36);
  }

  else
  {
    v35 = v25;
  }

  v37 = (a1 * 6.0) * 0.0174532925;
  v38 = __sincosf_stret(v37);
  v39 = +[CATextLayer layer];
  [v39 setString:v24];
  [v39 setAnchorPoint:{0.5, 0.5}];
  [v39 setMasksToBounds:0];
  [v39 setBounds:{v27, v35, ceil(v29), v31}];
  [v39 setAlignmentMode:kCAAlignmentCenter];
  [v39 setPosition:{a4 + a3 * v38.__sinval, a5 - a3 * v38.__cosval}];

  return v39;
}

id _NTKUtilityHourLayer(unint64_t a1, double a2, double a3, double a4, double a5, uint64_t a6, uint64_t a7)
{
  if (!NTKShowIndicScriptNumerals() || ([NTKSFCompactFont numericFontOfSize:a2 weight:UIFontWeightMedium], (v13 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v13 = [CLKFont systemFontOfSize:a2 weight:UIFontWeightMedium];
  }

  if (a1)
  {
    v14 = a1;
  }

  else
  {
    v14 = 12;
  }

  v15 = _NTKUtilityNumberText(@"%i", v14, a7);
  v16 = _NTKUtilityLanguageRenderingHintForUtilityFaceDialTypeface(a7);
  v17 = [NSAttributedString alloc];
  v46[0] = v13;
  v45[0] = NSFontAttributeName;
  v45[1] = NSForegroundColorAttributeName;
  v18 = +[UIColor whiteColor];
  v45[2] = NSLanguageIdentifierAttributeName;
  v46[1] = v18;
  v46[2] = v16;
  v19 = [NSDictionary dictionaryWithObjects:v46 forKeys:v45 count:3];
  v20 = [v17 initWithString:v15 attributes:v19];

  v21 = CTLineCreateWithAttributedString(v20);
  BoundsWithOptions = CTLineGetBoundsWithOptions(v21, 8uLL);
  y = BoundsWithOptions.origin.y;
  height = BoundsWithOptions.size.height;
  CFRelease(v21);
  [v13 capHeight];
  v25 = y + height - v24;
  [(__CFAttributedString *)v20 boundingRectWithSize:3 options:0 context:CGSizeZero.width, CGSizeZero.height];
  v27 = v26;
  v29 = v28;
  [v13 ascender];
  v31 = v30;
  [v13 capHeight];
  if (a7 && v25 > 0.4 && y >= -0.4)
  {
    [v13 ascender];
    v34 = v33 - v25;
    v35 = ceil(v25);
  }

  else
  {
    v35 = floor(v31 - v32);
    if (a7 && v25 <= 0.4 && y < -0.4)
    {
      [v13 capHeight];
      v34 = ceil(v36 - y);
    }

    else
    {
      [v13 capHeight];
      v38 = v37;
      if (a7 == 2)
      {
        [v13 descender];
        v34 = v38 - v39;
      }

      else
      {
        v34 = ceil(v37) + 2.0;
      }
    }
  }

  v40 = ceil(v29);
  v41 = _NTKUtilityFaceRectCenterThatFitsInBoundingRadius(a1 * 3.14159265 / 6.0 + -1.57079633, v40, v34, a3);
  v42 = __sincos_stret(a1 * 3.14159265 / 6.0 + -1.57079633);
  v43 = +[CATextLayer layer];
  [v43 setString:v20];
  [v43 setBounds:{v27, v35, v40, v34}];
  [v43 setAnchorPoint:{0.5, 0.5}];
  [v43 setAlignmentMode:kCAAlignmentCenter];
  [v43 setMasksToBounds:0];
  [v43 setPosition:{a4 + v41 * v42.__cosval, a5 + v41 * v42.__sinval}];

  return v43;
}

double _NTKUtilityFaceRectCenterThatFitsInBoundingRadius(double a1, double a2, double a3, double a4)
{
  while (a1 < 6.28318531)
  {
    a1 = a1 + 6.28318531;
  }

  v7 = a1;
  v8 = fmodf(v7, 6.2832);
  v9 = v8;
  if (v8 >= 1.57079633)
  {
    if (v9 >= 3.14159265)
    {
      v11 = a3 * -0.5;
      v12 = v9 < 4.71238898;
      v10 = 0.5;
      if (v12)
      {
        v10 = -0.5;
      }
    }

    else
    {
      v11 = a3 * 0.5;
      v10 = -0.5;
    }
  }

  else
  {
    v10 = 0.5;
    v11 = a3 * 0.5;
  }

  v13 = a2 * v10;
  v14 = __sincosf_stret(v8);
  v15 = (v11 + v11) * v14.__sinval + (v13 + v13) * v14.__cosval;
  v16 = v13;
  v17 = v11;
  v18 = (v16 * v16) + (v17 * v17);
  v19 = a4;
  v20 = (v18 - (v19 * v19)) * -4.0 + v15 * v15;
  return (sqrtf(v20) - v15) * 0.5;
}

id _NTKUtilityNumberText(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v6 = [NTKUtilityFaceTypefaceEditOption localeForTypeface:a3];
  v7 = [[NSString alloc] initWithFormat:v5 locale:v6, a2];

  return v7;
}

uint64_t _NTKUtilityLanguageRenderingHintForUtilityFaceDialTypeface(uint64_t a1)
{
  if ((a1 - 1) >= 0xE)
  {
    a1 = 0;
  }

  return _CLKLocaleRenderingHintLanguageIdentifierForNumberingSystem(a1);
}

void sub_244C(void *a1@<X1>, void *a2@<X8>)
{
  v5 = a1;
  os_unfair_lock_lock(&unk_164F8);
  if (qword_16500)
  {
    v3 = qword_16500 == v5;
  }

  else
  {
    v3 = 0;
  }

  if (!v3 || (v4 = [v5 version], v4 != qword_16508))
  {
    qword_16500 = v5;
    qword_16508 = [v5 version];
    sub_2524(v5, __src);
    memcpy(&unk_163C0, __src, 0x138uLL);
  }

  memcpy(a2, &unk_163C0, 0x138uLL);
  os_unfair_lock_unlock(&unk_164F8);
}

void sub_2524(void *a1@<X1>, uint64_t a2@<X8>)
{
  *(a2 + 248) = 0u;
  *(a2 + 232) = 0u;
  *(a2 + 216) = 0u;
  *(a2 + 200) = 0u;
  *(a2 + 184) = 0u;
  *(a2 + 168) = 0u;
  *(a2 + 152) = 0u;
  *(a2 + 136) = 0u;
  *(a2 + 120) = 0u;
  *(a2 + 104) = 0u;
  *(a2 + 88) = 0u;
  *(a2 + 56) = 0u;
  v3 = (a2 + 56);
  *(a2 + 72) = 0u;
  v3[14] = 0u;
  v3[15] = 0u;
  v3[13] = 0u;
  v4 = a1;
  v5 = [CLKDeviceMetrics metricsWithDevice:v4 identitySizeClass:2];
  [v5 scaledValue:6.0];
  *(a2 + 24) = v6;
  [v5 scaledValue:3 withOverride:4.0 forSizeClass:5.0];
  *(a2 + 48) = v7;
  [v5 setRoundingBehavior:0];
  [v5 scaledValue:1.25];
  *(a2 + 40) = v8;
  [v5 scaledValue:2.25];
  *(a2 + 32) = v9;
  [v5 setRoundingBehavior:2];
  [NTKAnalogUtilities dialDiameterForDevice:v4];
  v11 = v10;

  *a2 = v11;
  [v5 scaledValue:4.0];
  *(a2 + 16) = v12;
  [v5 constantValue:0 withOverride:0.0 forSizeClass:4.0];
  *(a2 + 8) = v13;
  [v5 setRoundingBehavior:1];
  [v5 scaledValue:0 withOverride:7.5 forSizeClass:6.5];
  v15 = v14;
  *(a2 + 64) = v14;
  v54[0] = &off_11040;
  v54[1] = &off_11070;
  v55[0] = &off_11058;
  v55[1] = &off_11088;
  v16 = [NSDictionary dictionaryWithObjects:v55 forKeys:v54 count:2];
  [v5 scaledValue:v16 withOverrides:23.0];
  *(a2 + 192) = v17;

  [v5 scaledValue:8.0];
  *(a2 + 72) = v18;
  v52[0] = &off_11040;
  v52[1] = &off_11070;
  v53[0] = &off_11058;
  v53[1] = &off_11088;
  v19 = [NSDictionary dictionaryWithObjects:v53 forKeys:v52 count:2];
  [v5 scaledValue:v19 withOverrides:24.0];
  *(a2 + 200) = v20;

  [v5 scaledValue:9.0];
  *(a2 + 80) = v21;
  [v5 scaledValue:22.5];
  *(a2 + 208) = v22;
  *(a2 + 88) = v15;
  [v5 scaledValue:19.5];
  *(a2 + 216) = v23;
  *(a2 + 96) = v15;
  [v5 scaledValue:18.0];
  *(a2 + 224) = v24;
  *(a2 + 104) = v15;
  [v5 scaledValue:18.0];
  *(a2 + 232) = v25;
  *(a2 + 112) = v15;
  v50[0] = &off_11040;
  [v5 scaledValue:19.0];
  v26 = [NSNumber numberWithDouble:?];
  v50[1] = &off_11070;
  v51[0] = v26;
  [v5 scaledValue:23.75];
  v27 = [NSNumber numberWithDouble:?];
  v51[1] = v27;
  v28 = [NSDictionary dictionaryWithObjects:v51 forKeys:v50 count:2];
  [v5 scaledValue:v28 withOverrides:21.85];
  *(a2 + 240) = v29;

  *(a2 + 120) = v15;
  v48[0] = &off_11040;
  [v5 scaledValue:19.0];
  v30 = [NSNumber numberWithDouble:?];
  v48[1] = &off_11070;
  v49[0] = v30;
  [v5 scaledValue:23.75];
  v31 = [NSNumber numberWithDouble:?];
  v49[1] = v31;
  v32 = [NSDictionary dictionaryWithObjects:v49 forKeys:v48 count:2];
  [v5 scaledValue:v32 withOverrides:21.85];
  *(a2 + 248) = v33;

  *(a2 + 128) = v15;
  v46[0] = &off_11040;
  [v5 scaledValue:19.0];
  v34 = [NSNumber numberWithDouble:?];
  v46[1] = &off_11070;
  v47[0] = v34;
  [v5 scaledValue:23.75];
  v35 = [NSNumber numberWithDouble:?];
  v47[1] = v35;
  v36 = [NSDictionary dictionaryWithObjects:v47 forKeys:v46 count:2];
  [v5 scaledValue:v36 withOverrides:21.85];
  *(a2 + 256) = v37;

  *(a2 + 136) = v15;
  [v5 scaledValue:22.5];
  *(a2 + 264) = v38;
  *(a2 + 144) = v15;
  [v5 scaledValue:18.0];
  *(a2 + 272) = v39;
  [v5 scaledValue:0 withOverride:7.5 forSizeClass:6.5];
  *(a2 + 152) = v40;
  [v5 scaledValue:22.5];
  *(a2 + 280) = v41;
  v42 = *(a2 + 64);
  *(a2 + 160) = v42;
  [v5 scaledValue:18.0];
  *(a2 + 288) = v43;
  *(a2 + 168) = v42;
  [v5 scaledValue:19.0];
  *(a2 + 296) = v44;
  *(a2 + 176) = v42;
  [v5 scaledValue:19.0];
  *(a2 + 304) = v45;
}

void sub_3F94(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = [a3 display];
  [*(a1 + 32) _complicationAlphaForEditMode:*(a1 + 40)];
  [*(a1 + 32) _complicationAlphaForEditMode:*(a1 + 48)];
  v4 = *(a1 + 56);
  CLKInterpolateBetweenFloatsClipped();
  [v5 setAlpha:?];
}

void sub_42C0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = [a3 display];
  if ([v4 conformsToProtocol:&OBJC_PROTOCOL___NTKUtilityComplicationView])
  {
    [v4 setAccentColor:*(*(a1 + 32) + 24)];
  }
}

void sub_4618(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = [a3 display];
  if ([v4 conformsToProtocol:&OBJC_PROTOCOL___NTKUtilityComplicationView])
  {
    [v4 setAccentColor:*(*(a1 + 32) + 24)];
  }
}

void sub_58D4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v5 = [v2 layer];
  v4 = [v3 CGContext];

  [v5 renderInContext:v4];
}

void sub_5BA4(void *a1@<X1>, _OWORD *a2@<X8>)
{
  v7 = a1;
  os_unfair_lock_lock(&unk_16550);
  if (qword_16558)
  {
    v3 = qword_16558 == v7;
  }

  else
  {
    v3 = 0;
  }

  if (!v3 || (v4 = [v7 version], v4 != qword_16560))
  {
    qword_16558 = v7;
    qword_16560 = [v7 version];
    sub_5C7C(v7, v8);
    xmmword_16510 = v8[0];
    unk_16520 = v8[1];
    xmmword_16530 = v8[2];
    unk_16540 = v8[3];
  }

  v5 = unk_16520;
  *a2 = xmmword_16510;
  a2[1] = v5;
  v6 = unk_16540;
  a2[2] = xmmword_16530;
  a2[3] = v6;
  os_unfair_lock_unlock(&unk_16550);
}

void sub_5C7C(uint64_t a1@<X1>, void *a2@<X8>)
{
  v3 = [CLKDeviceMetrics metricsWithDevice:a1 identitySizeClass:2];
  v34[0] = &off_111A8;
  v34[1] = &off_111C0;
  v35[0] = &off_11728;
  v35[1] = &off_11738;
  v4 = [NSDictionary dictionaryWithObjects:v35 forKeys:v34 count:2];
  [v3 scaledValue:v4 withOverrides:52.5];
  *a2 = v5;

  v32[0] = &off_111A8;
  v32[1] = &off_111C0;
  v33[0] = &off_11748;
  v33[1] = &off_11758;
  v6 = [NSDictionary dictionaryWithObjects:v33 forKeys:v32 count:2];
  [v3 scaledValue:v6 withOverrides:30.0];
  a2[1] = v7;

  v30[0] = &off_111A8;
  v30[1] = &off_111D8;
  v31[0] = &off_11768;
  v31[1] = &off_11778;
  v30[2] = &off_111F0;
  v31[2] = &off_11778;
  v8 = [NSDictionary dictionaryWithObjects:v31 forKeys:v30 count:3];
  [v3 scaledValue:v8 withOverrides:34.5];
  a2[2] = v9;

  v28[0] = &off_111A8;
  v28[1] = &off_111D8;
  v29[0] = &off_11788;
  v29[1] = &off_11798;
  v28[2] = &off_111F0;
  v29[2] = &off_11798;
  v10 = [NSDictionary dictionaryWithObjects:v29 forKeys:v28 count:3];
  [v3 scaledValue:v10 withOverrides:27.0];
  a2[3] = v11;

  v26[0] = &off_111A8;
  v26[1] = &off_111D8;
  v27[0] = &off_117A8;
  v27[1] = &off_117B8;
  v26[2] = &off_111F0;
  v27[2] = &off_117B8;
  v12 = [NSDictionary dictionaryWithObjects:v27 forKeys:v26 count:3];
  [v3 scaledValue:v12 withOverrides:28.0];
  a2[4] = v13;

  v24[0] = &off_111A8;
  v24[1] = &off_111D8;
  v25[0] = &off_117C8;
  v25[1] = &off_117D8;
  v24[2] = &off_111F0;
  v25[2] = &off_117D8;
  v14 = [NSDictionary dictionaryWithObjects:v25 forKeys:v24 count:3];
  [v3 scaledValue:v14 withOverrides:35.5];
  a2[5] = v15;

  v22[0] = &off_111A8;
  v22[1] = &off_111C0;
  v23[0] = &off_117E8;
  v23[1] = &off_117F8;
  v16 = [NSDictionary dictionaryWithObjects:v23 forKeys:v22 count:2];
  [v3 scaledValue:v16 withOverrides:11.0];
  a2[6] = v17;

  v20[0] = &off_111A8;
  v20[1] = &off_111C0;
  v21[0] = &off_11808;
  v21[1] = &off_11818;
  v18 = [NSDictionary dictionaryWithObjects:v21 forKeys:v20 count:2];
  [v3 scaledValue:v18 withOverrides:17.0];
  a2[7] = v19;
}

id sub_6168(uint64_t a1, void *a2)
{
  v3 = a2;
  os_unfair_lock_lock(&unk_16570);
  if (qword_16578)
  {
    v4 = qword_16578 == v3;
  }

  else
  {
    v4 = 0;
  }

  if (!v4 || (v5 = [v3 version], v5 != qword_16580))
  {
    qword_16578 = v3;
    qword_16580 = [v3 version];
    v6 = [*(a1 + 32) __orderedValuesForDevice:v3];
    v7 = qword_16568;
    qword_16568 = v6;
  }

  v8 = qword_16568;
  os_unfair_lock_unlock(&unk_16570);

  return v8;
}

id sub_6338(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&unk_16590);
  if (qword_16598)
  {
    v3 = qword_16598 == v2;
  }

  else
  {
    v3 = 0;
  }

  if (!v3 || (v4 = [v2 version], v4 != qword_165A0))
  {
    qword_16598 = v2;
    qword_165A0 = [v2 version];
    v5 = sub_63F8(qword_165A0, v2);
    v6 = qword_16588;
    qword_16588 = v5;
  }

  v7 = qword_16588;
  os_unfair_lock_unlock(&unk_16590);

  return v7;
}

id sub_63F8(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_alloc_init(NSMutableDictionary);
  v4 = _EnumValueRange();
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v27;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v27 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v26 + 1) + 8 * i);
        v10 = +[NTKUtilityFaceTypefaceEditOption _localizedNameForValue:forDevice:](NTKUtilityFaceTypefaceEditOption, "_localizedNameForValue:forDevice:", [v9 unsignedIntegerValue], v2);
        [v3 setObject:v9 forKey:v10];
      }

      v6 = [v4 countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v6);
  }

  v11 = [v3 allKeys];
  v12 = [v11 sortedArrayUsingSelector:"localizedCaseInsensitiveCompare:"];

  v13 = objc_alloc_init(NSMutableArray);
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v14 = v12;
  v15 = [v14 countByEnumeratingWithState:&v22 objects:v30 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v23;
    do
    {
      for (j = 0; j != v16; j = j + 1)
      {
        if (*v23 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = [v3 objectForKeyedSubscript:{*(*(&v22 + 1) + 8 * j), v22}];
        if (v19)
        {
          [v13 addObject:v19];
        }
      }

      v16 = [v14 countByEnumeratingWithState:&v22 objects:v30 count:16];
    }

    while (v16);
  }

  v20 = [v13 copy];

  return v20;
}

void sub_6854(id a1)
{
  v3[0] = &off_11208;
  v3[1] = &off_11220;
  v4[0] = NTKFaceBundleStyle1;
  v4[1] = NTKFaceBundleStyle2;
  v3[2] = &off_11238;
  v3[3] = &off_11250;
  v4[2] = NTKFaceBundleStyle3;
  v4[3] = NTKFaceBundleStyle4;
  v3[4] = &off_11268;
  v3[5] = &off_11280;
  v4[4] = NTKFaceBundleStyle5;
  v4[5] = NTKFaceBundleStyle6;
  v3[6] = &off_11298;
  v3[7] = &off_112B0;
  v4[6] = NTKFaceBundleStyle7;
  v4[7] = NTKFaceBundleStyle8;
  v3[8] = &off_112C8;
  v3[9] = &off_112E0;
  v4[8] = NTKFaceBundleStyle9;
  v4[9] = NTKFaceBundleStyle10;
  v3[10] = &off_112F8;
  v3[11] = &off_11310;
  v4[10] = NTKFaceBundleStyle11;
  v4[11] = NTKFaceBundleStyle12;
  v3[12] = &off_11328;
  v3[13] = &off_11340;
  v4[12] = NTKFaceBundleStyle13;
  v4[13] = NTKFaceBundleStyle14;
  v3[14] = &off_11358;
  v4[14] = NTKFaceBundleStyle15;
  v1 = [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:15];
  v2 = qword_165A8;
  qword_165A8 = v1;
}

void sub_6DF0(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = v5;
  if (a3 > 1)
  {
    if ((a3 - 2) < 2)
    {
      v10 = [*(a1 + 32) mutableCopy];
      [v6 _setFaceGalleryComplicationTypesForSlots:v10];

      v7 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:3 zOrder:4000];
      v17 = v7;
      v8 = &v17;
      v9 = 16;
      goto LABEL_14;
    }

    if (a3 != 4)
    {
      if (a3 == 5)
      {
        [v5 _setFaceGalleryComplicationTypesForSlots:&__NSDictionary0__struct];
        v7 = +[NTKFaceCurationPlacementValue placementWithWatchOS12Group:zOrder:](NTKFaceCurationPlacementValue, "placementWithWatchOS12Group:zOrder:", 5, [*(a1 + 40) _cleanGroupZOrderForDevice:*(a1 + 48)]);
        v15 = v7;
        v8 = &v15;
LABEL_9:
        v9 = 3;
LABEL_14:
        v12 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:v9 zOrder:4000];
        v8[1] = v12;
        v13 = [NSArray arrayWithObjects:v8 count:2];
        [v6 setCurationPlacements:v13];

        goto LABEL_15;
      }

      goto LABEL_15;
    }

    [v5 _setFaceGalleryComplicationTypesForSlots:&__NSDictionary0__struct];
    v7 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:3 zOrder:4000];
    v16 = v7;
    v8 = &v16;
LABEL_13:
    v9 = 5;
    goto LABEL_14;
  }

  if (!a3)
  {
    v11 = [*(a1 + 32) mutableCopy];
    [v6 _setFaceGalleryComplicationTypesForSlots:v11];

    v7 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:3 zOrder:8000];
    v19 = v7;
    v8 = &v19;
    goto LABEL_13;
  }

  if (a3 == 1)
  {
    v7 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:16 zOrder:4000];
    v18 = v7;
    v8 = &v18;
    goto LABEL_9;
  }

LABEL_15:
  v14 = [NTKDateComplication complicationWithDateStyle:*(a1 + 64)];
  [v6 setComplication:v14 forSlot:*(a1 + 56)];
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