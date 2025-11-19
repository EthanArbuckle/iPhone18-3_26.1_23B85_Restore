id sub_1200()
{
  if (qword_16B28 != -1)
  {
    sub_6AD0();
  }

  v1 = qword_16B20;

  return v1;
}

void sub_1D00(id a1)
{
  qword_16B20 = [NSBundle bundleForClass:objc_opt_class()];

  _objc_release_x1();
}

id sub_3574(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&unk_16B38);
  if (qword_16B40)
  {
    v3 = qword_16B40 == v2;
  }

  else
  {
    v3 = 0;
  }

  if (!v3 || (v4 = [v2 version], v4 != qword_16B48))
  {
    qword_16B40 = v2;
    qword_16B48 = [v2 version];
    v5 = _EnumValueRange();
    v6 = qword_16B30;
    qword_16B30 = v5;
  }

  v7 = qword_16B30;
  os_unfair_lock_unlock(&unk_16B38);

  return v7;
}

void sub_36A0(id a1)
{
  v3[0] = &off_10A18;
  v3[1] = &off_10A30;
  v4[0] = NTKFaceBundleStyle1;
  v4[1] = NTKFaceBundleStyle2;
  v1 = [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:2];
  v2 = qword_16B50;
  qword_16B50 = v1;
}

void sub_4234(void *a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t *a4@<X8>)
{
  v21 = a1;
  v7 = [v21 threadExecutionWidth];
  if ((v7 & (v7 - 1)) != 0)
  {
    v8 = -1;
    v9 = 32;
    while (v9)
    {
      v10 = 1 << (v8 + 2);
      ++v8;
      --v9;
      if (v7 < v10)
      {
        v7 = 1 << v8;
        goto LABEL_6;
      }
    }
  }

  do
  {
LABEL_6:
    v11 = v7;
    v12 = a2 / v7;
    v13 = a2 % v7;
    v7 >>= 1;
  }

  while (v13);
  v14 = [v21 maxTotalThreadsPerThreadgroup] / v11;
  if ((v14 & (v14 - 1)) != 0)
  {
    v15 = -1;
    v16 = 32;
    while (v16)
    {
      v17 = 1 << (v15 + 2);
      ++v15;
      --v16;
      if (v14 < v17)
      {
        v14 = 1 << v15;
        goto LABEL_12;
      }
    }
  }

  do
  {
LABEL_12:
    v18 = v14;
    v19 = a3 / v14;
    v20 = a3 % v14;
    v14 >>= 1;
  }

  while (v20);
  *a4 = v11;
  a4[1] = v18;
  a4[2] = 1;
  a4[3] = v12;
  a4[4] = v19;
  a4[5] = 1;
}

void sub_588C(uint64_t a1, uint64_t a2)
{
  v5 = [*(a1 + 32) normalComplicationDisplayWrapperForSlot:a2];
  v2 = [v5 display];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v4 = [v5 display];
    [v4 updateMonochromeColor];
  }
}

double sub_63A8(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&unk_16B88);
  if (qword_16B90)
  {
    v3 = qword_16B90 == v2;
  }

  else
  {
    v3 = 0;
  }

  if (v3 && (v4 = [v2 version], v4 == qword_16B98))
  {
    v5 = qword_16B68;
  }

  else
  {
    qword_16B90 = v2;
    qword_16B98 = [v2 version];
    v5 = sub_64A8(qword_16B98, v2);
    qword_16B68 = v5;
    qword_16B70 = v6;
    qword_16B78 = v7;
    qword_16B80 = v8;
  }

  os_unfair_lock_unlock(&unk_16B88);

  return *&v5;
}

double sub_64A8(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [CLKDeviceMetrics metricsWithDevice:v2 identitySizeClass:2];
  [v3 scaledValue:3 withOverride:133.0 forSizeClass:151.0];
  [NTKAnalogUtilities largeDialDiameterForDevice:v2];

  return 1.0;
}

void sub_67F8(id a1, NTKFace *a2, unint64_t a3, BOOL *a4)
{
  v5 = a2;
  if (a3)
  {
    v6 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:17 zOrder:4000];
    v10 = v6;
    v7 = &v10;
  }

  else
  {
    v6 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:17 zOrder:5000];
    v11 = v6;
    v7 = &v11;
  }

  v8 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:3 zOrder:4000];
  v7[1] = v8;
  v9 = [NSArray arrayWithObjects:v7 count:2];
  [(NTKFace *)v5 setCurationPlacements:v9];
}

void sub_6AE4(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "[coltan] missing artwork: %@", &v2, 0xCu);
}