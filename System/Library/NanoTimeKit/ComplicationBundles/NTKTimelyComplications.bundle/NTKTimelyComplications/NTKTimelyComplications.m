uint64_t sub_18F0(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&stru_17D6C);
  if (qword_17D70)
  {
    v3 = qword_17D70 == v2;
  }

  else
  {
    v3 = 0;
  }

  if (v3 && (v4 = [v2 version], v4 == qword_17D78))
  {
    v5 = byte_17D68;
  }

  else
  {
    qword_17D70 = v2;
    qword_17D78 = [v2 version];
    sub_1998(qword_17D78, v2);
    v5 = 1;
    byte_17D68 = 1;
  }

  os_unfair_lock_unlock(&stru_17D6C);

  return v5;
}

void sub_1998(uint64_t a1, uint64_t a2)
{
  v13 = [CLKDeviceMetrics metricsWithDevice:a2 identitySizeClass:2];
  [v13 scaledValue:24.0];
  v3 = v2;
  v4 = +[CLKDevice currentDevice];
  CLKComplicationGraphicExtraLargeCircularScalingFactor();
  v6 = v3 * v5;

  v7 = [UIImageSymbolConfiguration configurationWithPointSize:v6];
  v8 = [UIImage systemImageNamed:@"globe"];
  v9 = [v8 imageWithConfiguration:v7];

  v10 = [CLKFullColorImageProvider providerWithFullColorImage:v9 monochromeFilterType:1 applyScalingAndCircularMasking:0];
  v11 = qword_17D60;
  qword_17D60 = v10;

  v12 = +[UIColor systemOrangeColor];
  [qword_17D60 setTintColor:v12];
}

uint64_t sub_1AC8(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&stru_17D8C);
  if (qword_17D90)
  {
    v3 = qword_17D90 == v2;
  }

  else
  {
    v3 = 0;
  }

  if (v3 && (v4 = [v2 version], v4 == qword_17D98))
  {
    v5 = byte_17D88;
  }

  else
  {
    qword_17D90 = v2;
    qword_17D98 = [v2 version];
    sub_1B6C();
    v5 = 1;
    byte_17D88 = 1;
  }

  os_unfair_lock_unlock(&stru_17D8C);

  return v5;
}

void sub_1B6C()
{
  v3 = [UIImage systemImageNamed:@"globe"];
  v0 = [CLKFullColorImageProvider providerWithFullColorImage:v3 monochromeFilterType:1 applyScalingAndCircularMasking:0];
  v1 = qword_17D80;
  qword_17D80 = v0;

  v2 = +[UIColor systemOrangeColor];
  [qword_17D80 setTintColor:v2];
}

void sub_2ED0(id a1)
{
  v1 = [UIColor colorWithWhite:0.937254902 alpha:1.0];
  v2 = qword_17DA0;
  qword_17DA0 = v1;

  qword_17DA8 = [UIColor colorWithWhite:0.100000001 alpha:1.0];

  _objc_release_x1();
}

void sub_36C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak(&a15);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id sub_36FC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained overrideDate];
  if (v2)
  {
    [WeakRetained overrideDate];
  }

  else
  {
    +[CLKDate complicationDate];
  }
  v3 = ;

  return v3;
}

void sub_3F4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_3F74(uint64_t a1, void *a2, id *a3)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateDayTimeColoring];
}

void sub_4734(void *a1@<X1>, _OWORD *a2@<X8>)
{
  v7 = a1;
  os_unfair_lock_lock(&unk_17DF8);
  if (qword_17E00)
  {
    v3 = qword_17E00 == v7;
  }

  else
  {
    v3 = 0;
  }

  if (!v3 || (v4 = [v7 version], v4 != qword_17E08))
  {
    qword_17E00 = v7;
    qword_17E08 = [v7 version];
    sub_480C(v7, v8);
    xmmword_17DB8 = v8[0];
    unk_17DC8 = v8[1];
    xmmword_17DD8 = v8[2];
    unk_17DE8 = v8[3];
  }

  v5 = unk_17DC8;
  *a2 = xmmword_17DB8;
  a2[1] = v5;
  v6 = unk_17DE8;
  a2[2] = xmmword_17DD8;
  a2[3] = v6;
  os_unfair_lock_unlock(&unk_17DF8);
}

void sub_480C(uint64_t a1@<X1>, void *a2@<X8>)
{
  v11 = [CLKDeviceMetrics metricsWithDevice:a1 identitySizeClass:2];
  [v11 scaledValue:12.0];
  *a2 = v3;
  [v11 scaledValue:3 withOverride:20.5 forSizeClass:23.0];
  a2[1] = v4;
  [v11 scaledValue:10.5];
  a2[2] = v5;
  [v11 scaledValue:3 withOverride:31.5 forSizeClass:35.5];
  a2[3] = v6;
  [v11 scaledValue:3 withOverride:8.0 forSizeClass:8.5];
  a2[4] = v7;
  [v11 scaledValue:6.5];
  a2[5] = v8;
  [v11 scaledValue:3 withOverride:2.0 forSizeClass:2.5];
  a2[6] = v9;
  [v11 scaledValue:2.5];
  a2[7] = v10;
}

void sub_490C(void *a1@<X1>, _OWORD *a2@<X8>)
{
  v7 = a1;
  os_unfair_lock_lock(&unk_17E50);
  if (qword_17E58)
  {
    v3 = qword_17E58 == v7;
  }

  else
  {
    v3 = 0;
  }

  if (!v3 || (v4 = [v7 version], v4 != qword_17E60))
  {
    qword_17E58 = v7;
    qword_17E60 = [v7 version];
    sub_49E4(v7, v8);
    xmmword_17E10 = v8[0];
    unk_17E20 = v8[1];
    xmmword_17E30 = v8[2];
    unk_17E40 = v8[3];
  }

  v5 = unk_17E20;
  *a2 = xmmword_17E10;
  a2[1] = v5;
  v6 = unk_17E40;
  a2[2] = xmmword_17E30;
  a2[3] = v6;
  os_unfair_lock_unlock(&unk_17E50);
}

float64x2_t sub_49E4@<Q0>(void *a1@<X1>, uint64_t a2@<X8>)
{
  v3 = a1;
  sub_4734(v3, a2);
  CLKComplicationGraphicExtraLargeCircularScalingFactor();
  v8 = v4;

  v5 = vmulq_n_f64(*(a2 + 16), v8);
  *a2 = vmulq_n_f64(*a2, v8);
  *(a2 + 16) = v5;
  result = vmulq_n_f64(*(a2 + 32), v8);
  v7 = vmulq_n_f64(*(a2 + 48), v8);
  *(a2 + 32) = result;
  *(a2 + 48) = v7;
  return result;
}

id sub_5A38(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[NTKRichComplicationDialView alloc] initWithTickCount:*(a1 + 32) tickSize:*(a1 + 40) dialRange:*(a1 + 48) startAngle:{*(a1 + 56), *(a1 + 64)}];
  v5 = [v4 largeTickLayer];
  v6 = [v3 CGColor];

  [v5 setBackgroundColor:v6];

  return v4;
}

void sub_5C2C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 32) != [v3 isHidden])
  {
    [v3 setHidden:?];
  }
}

void sub_5FC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_5FE8(uint64_t a1, void *a2, id *a3)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateProgress];
}

id sub_62A0(uint64_t a1, double a2)
{
  LODWORD(a2) = *(a1 + 56);
  [*(a1 + 32) setProgress:a2];
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);

  return [v3 setOverrideDate:v4];
}

double sub_64BC(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&unk_17E88);
  if (qword_17E90)
  {
    v3 = qword_17E90 == v2;
  }

  else
  {
    v3 = 0;
  }

  if (v3 && (v4 = [v2 version], v4 == qword_17E98))
  {
    v5 = qword_17E68;
  }

  else
  {
    qword_17E90 = v2;
    qword_17E98 = [v2 version];
    v5 = sub_65BC(qword_17E98, v2);
    qword_17E68 = v5;
    qword_17E70 = v6;
    qword_17E78 = v7;
    qword_17E80 = v8;
  }

  os_unfair_lock_unlock(&unk_17E88);

  return *&v5;
}

double sub_65BC(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[CLKDeviceMetrics alloc] initWithDevice:v2 identitySizeClass:2];

  [v3 scaledValue:3.0];
  [v3 scaledValue:3 withOverride:80.0 forSizeClass:90.0];
  [v3 scaledValue:3 withOverride:12.0 forSizeClass:13.5];

  return 1.0;
}

double sub_6670(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&unk_17EC0);
  if (qword_17EC8)
  {
    v3 = qword_17EC8 == v2;
  }

  else
  {
    v3 = 0;
  }

  if (v3 && (v4 = [v2 version], v4 == qword_17ED0))
  {
    v5 = qword_17EA0;
  }

  else
  {
    qword_17EC8 = v2;
    qword_17ED0 = [v2 version];
    v5 = sub_6770(qword_17ED0, v2);
    qword_17EA0 = v5;
    qword_17EA8 = v6;
    qword_17EB0 = v7;
    qword_17EB8 = v8;
  }

  os_unfair_lock_unlock(&unk_17EC0);

  return *&v5;
}

double sub_6770(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = sub_64BC(v2, v2);
  CLKComplicationGraphicExtraLargeCircularScalingFactor();
  v5 = v4;

  return v5 * v3;
}

id sub_70F0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[NTKRichComplicationDialView alloc] initWithTickCount:*(a1 + 32) tickSize:*(a1 + 40) dialRange:*(a1 + 48) startAngle:{*(a1 + 56), *(a1 + 64)}];
  v5 = [v4 largeTickLayer];
  v6 = [v3 CGColor];

  [v5 setBackgroundColor:v6];

  return v4;
}

void sub_72F4(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 32) != [v3 isHidden])
  {
    [v3 setHidden:?];
  }
}

void sub_7860(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_7888(uint64_t a1, void *a2, id *a3)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateProgress];
}

id sub_7B74(uint64_t a1, double a2)
{
  LODWORD(a2) = *(a1 + 56);
  [*(a1 + 32) setProgress:a2];
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);

  return [v3 setText:v4];
}

double sub_7D90(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&unk_17EF8);
  if (qword_17F00)
  {
    v3 = qword_17F00 == v2;
  }

  else
  {
    v3 = 0;
  }

  if (v3 && (v4 = [v2 version], v4 == qword_17F08))
  {
    v5 = qword_17ED8;
  }

  else
  {
    qword_17F00 = v2;
    qword_17F08 = [v2 version];
    v5 = sub_7E90(qword_17F08, v2);
    qword_17ED8 = v5;
    qword_17EE0 = v6;
    qword_17EE8 = v7;
    qword_17EF0 = v8;
  }

  os_unfair_lock_unlock(&unk_17EF8);

  return *&v5;
}

double sub_7E90(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[CLKDeviceMetrics alloc] initWithDevice:v2 identitySizeClass:2];

  [v3 scaledSize:{1.0, 4.0}];
  v5 = v4;
  [v3 scaledValue:3 withOverride:40.0 forSizeClass:45.0];
  [v3 scaledValue:20.0];

  return v5;
}

double sub_7F44(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&unk_17F30);
  if (qword_17F38)
  {
    v3 = qword_17F38 == v2;
  }

  else
  {
    v3 = 0;
  }

  if (v3 && (v4 = [v2 version], v4 == qword_17F40))
  {
    v5 = qword_17F10;
  }

  else
  {
    qword_17F38 = v2;
    qword_17F40 = [v2 version];
    v5 = sub_8044(qword_17F40, v2);
    qword_17F10 = v5;
    qword_17F18 = v6;
    qword_17F20 = v7;
    qword_17F28 = v8;
  }

  os_unfair_lock_unlock(&unk_17F30);

  return *&v5;
}

double sub_8044(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = sub_7D90(v2, v2);
  CLKComplicationGraphicExtraLargeCircularScalingFactor();
  v5 = v4;

  return v5 * v3;
}

void sub_80CC(uint64_t a1, void *a2, NSObject *a3)
{
  v5 = objc_opt_class();
  v6 = v5;
  v7 = [a2 allKeys];
  v8 = [v7 componentsJoinedByString:{@", "}];
  v9 = 138543618;
  v10 = v5;
  v11 = 2114;
  v12 = v8;
  _os_log_error_impl(&dword_0, a3, OS_LOG_TYPE_ERROR, "%{public}@ No ALCity provided in the provided metadata ([%{public}@]).", &v9, 0x16u);
}