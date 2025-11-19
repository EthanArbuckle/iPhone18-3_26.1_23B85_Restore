double NTKKuiperMaximumTypographicSize()
{
  if (qword_16CE0 != -1)
  {
    sub_7904();
  }

  return *&qword_16CD0;
}

double NTKKuiperMaximumOverscrollTypographicSize()
{
  if (qword_16CF8 != -1)
  {
    sub_7918();
  }

  return *&qword_16CE8;
}

id NTKKuiperRainbowGradientImage()
{
  if (qword_16D08 != -1)
  {
    sub_792C();
  }

  v0 = [qword_16D00 copy];

  return v0;
}

void sub_1008(id a1)
{
  qword_16D00 = [NTKKuiperFaceBundle imageWithName:@"Pride Gradient_626x626"];

  _objc_release_x1();
}

double NTKKuiperDigitRotationForDensity(uint64_t a1, uint64_t a2)
{
  if (a1 <= 1)
  {
    if (!a1)
    {
      return 0.0;
    }

    if (a1 == 1)
    {
      result = 1.0;
      if ((a2 & 1) == 0)
      {
        return 0.0;
      }

      return result;
    }

    return 1.0;
  }

  if (a1 == 2)
  {
    v3 = 0xAAAAAAAAAAAAAAABLL * a2;
    v4 = 0x5555555555555556;
  }

  else
  {
    if (a1 != 3)
    {
      return 1.0;
    }

    v3 = __ROR8__(0xAAAAAAAAAAAAAAABLL * a2, 1);
    v4 = 0x2AAAAAAAAAAAAAABLL;
  }

  result = 1.0;
  if (v3 < v4)
  {
    return 0.0;
  }

  return result;
}

void sub_30D4(uint64_t a1, uint64_t a2)
{
  v5 = [*(a1 + 32) normalComplicationDisplayWrapperForSlot:a2];
  v2 = [v5 display];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v4 = [v5 display];
    [v4 transitionToMonochromeWithFraction:1.0];
  }
}

void sub_33A8(uint64_t a1, __int128 *a2, uint64_t a3)
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_3498;
  v5[3] = &unk_105B0;
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

void sub_3498(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) complicationLayoutforSlot:a2];
  v4 = [v3 defaultLayoutRuleForState:*(a1 + 40)];
  v5 = *(a1 + 64);
  v6[0] = *(a1 + 48);
  v6[1] = v5;
  v6[2] = *(a1 + 80);
  [v4 setContentTransform:v6];
}

id sub_3AC8(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 48) == a2)
  {
    v2 = *(a1 + 32);
  }

  else
  {
    v3 = *(a1 + 40);
    v4 = [NSNumber numberWithInteger:a2];
    v2 = [v3 objectForKeyedSubscript:v4];
  }

  return v2;
}

void sub_3BC4(id a1)
{
  qword_16D10 = objc_opt_new();

  _objc_release_x1();
}

void sub_3D10(id a1)
{
  v3[0] = &off_10E30;
  v3[1] = &off_10E48;
  v4[0] = NTKFaceBundleDensityDetailed;
  v4[1] = NTKFaceBundleDensityMedium;
  v3[2] = &off_10E60;
  v3[3] = &off_10E78;
  v4[2] = NTKFaceBundleDensitySimple;
  v4[3] = NTKFaceBundleDensityMinimal;
  v1 = [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:4];
  v2 = qword_16D20;
  qword_16D20 = v1;
}

void sub_4084(id a1)
{
  v3[0] = &off_10E90;
  v3[1] = &off_10EA8;
  v4[0] = NTKFaceBundleStyle1;
  v4[1] = NTKFaceBundleStyle2;
  v3[2] = &off_10EC0;
  v3[3] = &off_10ED8;
  v4[2] = NTKFaceBundleStyle3;
  v4[3] = NTKFaceBundleStyle4;
  v3[4] = &off_10EF0;
  v4[4] = NTKFaceBundleStyle5;
  v1 = [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:5];
  v2 = qword_16D30;
  qword_16D30 = v1;
}

void sub_4208(id a1)
{
  LODWORD(v1) = 1061997773;
  LODWORD(v2) = 1.0;
  v3 = [CAMediaTimingFunction functionWithControlPoints:0.0];
  v4 = qword_16D40;
  qword_16D40 = v3;

  LODWORD(v5) = 1045220557;
  LODWORD(v6) = 1.0;
  LODWORD(v7) = 1.0;
  qword_16D48 = [CAMediaTimingFunction functionWithControlPoints:0.0];

  _objc_release_x1();
}

id sub_459C()
{
  v0 = objc_opt_new();
  v1 = +[UIColor whiteColor];
  [v0 setBackgroundColor:{objc_msgSend(v1, "CGColor")}];

  v2 = sub_4624();
  [v0 setActions:v2];

  return v0;
}

id sub_4624()
{
  if (qword_16D60 != -1)
  {
    sub_7990();
  }

  v1 = qword_16D58;

  return v1;
}

id sub_4668(uint64_t a1, unint64_t a2)
{
  v3 = objc_opt_new();
  [v3 setFillMode:kCAFillModeBoth];
  [v3 setInstanceCount:a2];
  v4 = +[UIColor whiteColor];
  [v3 setInstanceColor:{objc_msgSend(v4, "CGColor")}];

  CATransform3DMakeRotation(&v6, 6.28318531 / a2, 0.0, 0.0, 1.0);
  [v3 setInstanceTransform:&v6];

  return v3;
}

void sub_4B54(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [v5 layer];
  [v6 setAnchorPoint:{0.5, 1.0}];

  memset(&v14, 0, sizeof(v14));
  CGAffineTransformMakeRotation(&v14, (((a3 + 7) % 0xCuLL) / 12.0 + ((a3 + 7) % 0xCuLL) / 12.0) * 3.14159265);
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  if (v7 != 0.0)
  {
    v9 = v7 * 10.0 + 1.0;
    v12 = v14;
    CGAffineTransformScale(&v13, &v12, 1.0 - v7 * 10.0, v9);
    v14 = v13;
    v8 = v8 / v9;
  }

  v12 = v14;
  CGAffineTransformTranslate(&v13, &v12, 0.0, v8);
  v14 = v13;
  v11 = v13;
  v10 = [v5 layer];

  v13 = v11;
  [v10 setAffineTransform:&v13];
}

void sub_5AEC(id a1)
{
  v1 = +[NSNull null];
  v4[0] = @"affineTransform";
  v4[1] = @"backgroundColor";
  v5[0] = v1;
  v5[1] = v1;
  v4[2] = @"bounds";
  v4[3] = @"contentsMultiplyColor";
  v5[2] = v1;
  v5[3] = v1;
  v4[4] = @"hidden";
  v4[5] = @"instanceCount";
  v5[4] = v1;
  v5[5] = v1;
  v4[6] = @"instanceDelay";
  v4[7] = @"instanceTransform";
  v5[6] = v1;
  v5[7] = v1;
  v4[8] = @"opacity";
  v4[9] = @"position";
  v5[8] = v1;
  v5[9] = v1;
  v4[10] = @"transform";
  v5[10] = v1;
  v2 = [NSDictionary dictionaryWithObjects:v5 forKeys:v4 count:11];
  v3 = qword_16D58;
  qword_16D58 = v2;
}

void sub_5C08(void *a1@<X1>, _OWORD *a2@<X8>)
{
  v6 = a1;
  os_unfair_lock_lock(&unk_16D98);
  if (qword_16DA0)
  {
    v3 = qword_16DA0 == v6;
  }

  else
  {
    v3 = 0;
  }

  if (!v3 || (v4 = [v6 version], v4 != qword_16DA8))
  {
    qword_16DA0 = v6;
    qword_16DA8 = [v6 version];
    sub_5CE0(v6, v7);
    xmmword_16D68 = v7[0];
    unk_16D78 = v7[1];
    xmmword_16D88 = v7[2];
  }

  v5 = unk_16D78;
  *a2 = xmmword_16D68;
  a2[1] = v5;
  a2[2] = xmmword_16D88;
  os_unfair_lock_unlock(&unk_16D98);
}

void sub_5CE0(uint64_t a1@<X1>, void *a2@<X8>)
{
  v7 = [CLKDeviceMetrics metricsWithDevice:a1 identitySizeClass:2];
  [v7 scaledValue:2.0];
  *a2 = v3;
  [v7 scaledValue:60.0];
  a2[1] = v4;
  [v7 scaledValue:7.0];
  a2[2] = 0x3FF0000000000000;
  a2[3] = v5;
  [v7 scaledValue:2.75];
  a2[4] = 0x3FF0000000000000;
  a2[5] = v6;
}

void sub_5D84(id a1)
{
  v1 = qword_16DB0;
  qword_16DB0 = @"12";
}

void sub_5D9C(id a1)
{
  v1 = qword_16DC0;
  qword_16DC0 = @"I";
}

void sub_5EA4(id a1)
{
  qword_16DD0 = [[NTKCornerComplicationConfiguration alloc] initWithTopLeftComplication:43 topRightComplication:10 bottomLeftComplication:3 bottomRightComplication:7];

  _objc_release_x1();
}

void sub_67B0(uint64_t a1, CFAttributedStringRef attrString)
{
  v3 = CTLineCreateWithAttributedString(attrString);
  TypographicBounds = CTLineGetTypographicBounds(v3, 0, 0, 0);
  CGContextSetTextPosition(*(a1 + 48), (*(a1 + 32) - TypographicBounds) * 0.5, *(a1 + 56));
  CTLineDraw(v3, *(a1 + 48));

  CFRelease(v3);
}

id sub_6828(void *a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = objc_opt_new();
  [v8 setObject:v5 forKey:NSForegroundColorAttributeName];

  [v8 setObject:v6 forKey:NSFontAttributeName];
  v9 = [[NSMutableAttributedString alloc] initWithString:v7];

  [v9 setAttributes:v8 range:{0, objc_msgSend(v9, "length")}];

  return v9;
}

double sub_6A64(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&unk_16DE8);
  if (qword_16DF0)
  {
    v3 = qword_16DF0 == v2;
  }

  else
  {
    v3 = 0;
  }

  if (v3 && (v4 = [v2 version], v4 == qword_16DF8))
  {
    v5 = qword_16DE0;
  }

  else
  {
    qword_16DF0 = v2;
    qword_16DF8 = [v2 version];
    v5 = sub_6B14(qword_16DF8, v2);
    qword_16DE0 = v5;
  }

  os_unfair_lock_unlock(&unk_16DE8);

  return *&v5;
}

double sub_6B14(uint64_t a1, uint64_t a2)
{
  v2 = [CLKDeviceMetrics metricsWithDevice:a2 identitySizeClass:2];
  [v2 scaledValue:4.5];
  v4 = v3;

  return v4;
}

void sub_6C88(id a1, NTKFace *a2, unint64_t a3, BOOL *a4)
{
  v5 = a2;
  switch(a3)
  {
    case 2uLL:
      v6 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:3 zOrder:7000];
      v10 = v6;
      v7 = &v10;
      goto LABEL_7;
    case 1uLL:
      v6 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:3 zOrder:4000];
      v11 = v6;
      v7 = &v11;
      goto LABEL_7;
    case 0uLL:
      v6 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:3 zOrder:7000];
      v12 = v6;
      v7 = &v12;
LABEL_7:
      v8 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:13 zOrder:4000];
      v7[1] = v8;
      v9 = [NSArray arrayWithObjects:v7 count:2];
      [(NTKFace *)v5 setCurationPlacements:v9];

      break;
  }
}

void sub_7548(id a1)
{
  qword_16E00 = [NTKFontLoader fontDescriptorForSectName:@"__KuiperFont" fromMachO:&dword_0];

  _objc_release_x1();
}

void sub_7718(id a1)
{
  v3[0] = UIFontFeatureTypeIdentifierKey;
  v3[1] = UIFontFeatureSelectorIdentifierKey;
  v4[0] = &off_10FE0;
  v4[1] = &off_10FF8;
  v1 = [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:2];
  v2 = qword_16E10;
  qword_16E10 = v1;
}

void sub_77BC(id a1)
{
  v3[0] = UIFontFeatureTypeIdentifierKey;
  v3[1] = UIFontFeatureSelectorIdentifierKey;
  v4[0] = &off_10FE0;
  v4[1] = &off_11010;
  v1 = [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:2];
  v2 = qword_16E20;
  qword_16E20 = v1;
}

void sub_7860(id a1)
{
  v3[0] = UIFontFeatureTypeIdentifierKey;
  v3[1] = UIFontFeatureSelectorIdentifierKey;
  v4[0] = &off_10FE0;
  v4[1] = &off_11028;
  v1 = [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:2];
  v2 = qword_16E30;
  qword_16E30 = v1;
}