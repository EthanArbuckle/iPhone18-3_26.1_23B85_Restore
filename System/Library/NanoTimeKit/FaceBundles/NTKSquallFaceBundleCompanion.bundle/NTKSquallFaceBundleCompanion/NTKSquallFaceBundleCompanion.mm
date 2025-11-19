void sub_2980(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_29A4(uint64_t a1, void *a2, id *a3)
{
  v7 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    objc_storeStrong(WeakRetained + 19, *a3);
  }

  [v6 _updateLabelsAnimated:1];
}

void sub_2D30(void *a1@<X1>, _OWORD *a2@<X8>)
{
  v7 = a1;
  os_unfair_lock_lock(&unk_16868);
  if (qword_16870)
  {
    v3 = qword_16870 == v7;
  }

  else
  {
    v3 = 0;
  }

  if (!v3 || (v4 = [v7 version], v4 != qword_16878))
  {
    qword_16870 = v7;
    qword_16878 = [v7 version];
    sub_2E08(v7, v8);
    xmmword_16828 = v8[0];
    unk_16838 = v8[1];
    xmmword_16848 = v8[2];
    unk_16858 = v8[3];
  }

  v5 = unk_16838;
  *a2 = xmmword_16828;
  a2[1] = v5;
  v6 = unk_16858;
  a2[2] = xmmword_16848;
  a2[3] = v6;
  os_unfair_lock_unlock(&unk_16868);
}

void sub_2E08(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v3 = [CLKDeviceMetrics metricsWithDevice:a1 identitySizeClass:6];
  [v3 scaledValue:111.5];
  *a2 = v4;
  *(a2 + 8) = xmmword_9A10;
  *(a2 + 24) = 0x3FC0A3D70A3D70A4;
  v19 = &off_10968;
  v20 = &off_10A10;
  v5 = [NSDictionary dictionaryWithObjects:&v20 forKeys:&v19 count:1];
  [v3 constantValue:v5 withOverrides:119.5];
  *(a2 + 32) = v6;

  v17 = &off_10968;
  v18 = &off_10A20;
  v7 = [NSDictionary dictionaryWithObjects:&v18 forKeys:&v17 count:1];
  [v3 constantValue:v7 withOverrides:211.0];
  *(a2 + 40) = v8;

  v15 = &off_10968;
  v16 = &off_10A30;
  v9 = [NSDictionary dictionaryWithObjects:&v16 forKeys:&v15 count:1];
  [v3 constantValue:v9 withOverrides:125.5];
  *(a2 + 48) = v10;

  v13 = &off_10968;
  v14 = &off_10A40;
  v11 = [NSDictionary dictionaryWithObjects:&v14 forKeys:&v13 count:1];
  [v3 constantValue:v11 withOverrides:203.5];
  *(a2 + 56) = v12;
}

double sub_3758(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&unk_16898);
  if (qword_168A0)
  {
    v3 = qword_168A0 == v2;
  }

  else
  {
    v3 = 0;
  }

  if (v3 && (v4 = [v2 version], v4 == qword_168A8))
  {
    v5 = qword_16880;
  }

  else
  {
    qword_168A0 = v2;
    qword_168A8 = [v2 version];
    v5 = sub_3840(qword_168A8, v2);
    qword_16880 = v5;
    qword_16888 = v6;
    qword_16890 = v7;
  }

  os_unfair_lock_unlock(&unk_16898);

  return *&v5;
}

double sub_3840(uint64_t a1, uint64_t a2)
{
  v2 = [CLKDeviceMetrics metricsWithDevice:a2 identitySizeClass:6];
  v5 = &off_10980;
  v6 = &off_10A50;
  v3 = [NSDictionary dictionaryWithObjects:&v6 forKeys:&v5 count:1];
  [v2 constantValue:v3 withOverrides:64.0];

  return 2.5;
}

void sub_39D4(id a1, CLKUITimeLabel *a2)
{
  v2 = [(CLKUITimeLabel *)a2 timeFormatter];
  [v2 setForcedNumberSystem:0];
}

double sub_3DEC(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&unk_168C0);
  if (qword_168C8)
  {
    v3 = qword_168C8 == v2;
  }

  else
  {
    v3 = 0;
  }

  if (v3 && (v4 = [v2 version], v4 == qword_168D0))
  {
    v5 = qword_168B0;
  }

  else
  {
    qword_168C8 = v2;
    qword_168D0 = [v2 version];
    v5 = sub_3EB4(qword_168D0, v2);
    qword_168B0 = v5;
    qword_168B8 = v6;
  }

  os_unfair_lock_unlock(&unk_168C0);

  return *&v5;
}

double sub_3EB4(uint64_t a1, uint64_t a2)
{
  v2 = [CLKDeviceMetrics metricsWithDevice:a2 identitySizeClass:6];
  [v2 scaledValue:9 withOverride:42.5 forSizeClass:43.5];
  v4 = v3;
  [v2 scaledValue:9 withOverride:18.5 forSizeClass:20.0];

  return v4;
}

void sub_411C(id a1, NTKFace *a2, unint64_t a3, BOOL *a4)
{
  v5 = a2;
  if (a3)
  {
    v6 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:6 zOrder:4000];
    v13 = v6;
    v7 = &v13;
  }

  else
  {
    v6 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:6 zOrder:9000];
    v14 = v6;
    v7 = &v14;
  }

  v8 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:4 zOrder:4000];
  v7[1] = v8;
  v9 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:5 zOrder:4000];
  v7[2] = v9;
  v10 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:12 zOrder:4000];
  v7[3] = v10;
  v11 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:2 zOrder:4000];
  v7[4] = v11;
  v12 = [NSArray arrayWithObjects:v7 count:5];
  [(NTKFace *)v5 setCurationPlacements:v12];
}

void sub_4D60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_4D84(uint64_t a1, void *a2, id *a3)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained[1] bezelProgress];
  [WeakRetained setProgress:?];
}

void _addToPath(void *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, double a6, double a7, double a8, double a9, double a10)
{
  v22 = a1;
  [v22 addLineToPoint:{_clipToBounds(a2, a3, a4, a5, a6)}];
  [v22 addLineToPoint:{_clipToBounds(a2, a3, a4, a5, a8)}];
  [v22 addLineToPoint:{_clipToBounds(a2, a3, a4, a5, a10)}];
}

id sub_5BE8(void *a1, void *a2)
{
  v3 = [a2 CGContext];
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v7 = a1[7];

  return [v4 _compositeBezelImagesA:v5 andB:v6 clippingPath:v7 context:v3];
}

double _clipToBounds(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, double a5)
{
  MaxX = CGRectGetMaxX(*&a1);
  v14.origin.x = a1;
  v14.origin.y = a2;
  v14.size.width = a3;
  v14.size.height = a4;
  MinX = CGRectGetMinX(v14);
  if (MinX < a5)
  {
    MinX = a5;
  }

  if (MaxX <= MinX)
  {
    v12 = MaxX;
  }

  else
  {
    v12 = MinX;
  }

  v15.origin.x = a1;
  v15.origin.y = a2;
  v15.size.width = a3;
  v15.size.height = a4;
  CGRectGetMaxY(v15);
  v16.origin.x = a1;
  v16.origin.y = a2;
  v16.size.width = a3;
  v16.size.height = a4;
  CGRectGetMinY(v16);
  return v12;
}

double _rotateToQuadrant(uint64_t a1, double result, double a3, double a4)
{
  switch(a1)
  {
    case 3:
      return a3;
    case 2:
      return a4 - result;
    case 1:
      return a4 - a3;
  }

  return result;
}

double sub_62E4(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&unk_168E0);
  if (qword_168E8)
  {
    v3 = qword_168E8 == v2;
  }

  else
  {
    v3 = 0;
  }

  if (!v3 || (v4 = [v2 version], v4 != qword_168F0))
  {
    qword_168E8 = v2;
    qword_168F0 = [v2 version];
    qword_168D8 = 0x4029000000000000;
  }

  os_unfair_lock_unlock(&unk_168E0);

  return 0.0;
}

void sub_63D8(id a1)
{
  v1 = [NTKFontLoader registerFontDescriptorsForSectName:@"__SquallFontL" fromMachO:&dword_0];
  v5 = kCTFontFamilyNameAttribute;
  v6 = @"Hermes Cape Cod Link";
  v2 = [NSDictionary dictionaryWithObjects:&v6 forKeys:&v5 count:1];
  v3 = [UIFontDescriptor fontDescriptorWithFontAttributes:v2];
  v4 = qword_168F8;
  qword_168F8 = v3;
}

void sub_64F4(id a1)
{
  v1 = [NTKFontLoader fontDescriptorForSectName:@"__SquallFontV" fromMachO:&dword_0];
  v2 = qword_16908;
  qword_16908 = v1;

  v3 = qword_16908;
  v11 = kCTFontVariationAttribute;
  v4 = [NSNumber numberWithUnsignedInt:TextToFourCharCode()];
  v9 = v4;
  v10 = &off_109F8;
  v5 = [NSDictionary dictionaryWithObjects:&v10 forKeys:&v9 count:1];
  v12 = v5;
  v6 = [NSDictionary dictionaryWithObjects:&v12 forKeys:&v11 count:1];
  v7 = [v3 fontDescriptorByAddingAttributes:v6];
  v8 = qword_16908;
  qword_16908 = v7;
}

double sub_6FA8(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&unk_16928);
  if (qword_16930)
  {
    v3 = qword_16930 == v2;
  }

  else
  {
    v3 = 0;
  }

  if (v3 && (v4 = [v2 version], v4 == qword_16938))
  {
    v5 = qword_16918;
  }

  else
  {
    qword_16930 = v2;
    qword_16938 = [v2 version];
    v5 = sub_7070(qword_16938, v2);
    qword_16918 = v5;
    qword_16920 = v6;
  }

  os_unfair_lock_unlock(&unk_16928);

  return *&v5;
}

double sub_7070(uint64_t a1, uint64_t a2)
{
  v2 = [CLKDeviceMetrics metricsWithDevice:a2 identitySizeClass:6];
  [v2 scaledValue:9 withOverride:53.5 forSizeClass:54.0];

  return 16.0;
}