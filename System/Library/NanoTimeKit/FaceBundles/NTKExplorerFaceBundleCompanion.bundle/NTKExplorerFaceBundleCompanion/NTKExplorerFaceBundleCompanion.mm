double _subdialYPositionForDensity(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1 == 3)
  {
    sub_2BFC(v3, v12);
    v5 = &v13;
  }

  else
  {
    sub_2BFC(v3, v10);
    v5 = &v11;
  }

  v6 = *v5;
  [v4 screenBounds];
  v8 = v7;

  return v6 + v8 * 0.5;
}

double _statusViewYPositionForDensity(unint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1 > 1)
  {
    sub_2BFC(v3, v10);
    v5 = &v11;
  }

  else
  {
    sub_2BFC(v3, v12);
    v5 = &v13;
  }

  v6 = *v5;
  [v4 screenBounds];
  v8 = v7;

  return v6 + v8 * 0.5;
}

id sub_295C(uint64_t a1, void *a2)
{
  v3 = [a2 format];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  [*(a1 + 32) drawInRect:{v5, v7, v9, v11}];
  [*(a1 + 40) drawInRect:{v5, v7, v9, v11}];
  [*(a1 + 48) drawInRect:{v5, v7, v9, v11}];
  [*(a1 + 56) drawAtPoint:{*(a1 + 72), *(a1 + 80)}];
  v12 = *(a1 + 64);
  v13 = *(a1 + 72);
  v14 = *(a1 + 80);

  return [v12 drawAtPoint:{v13, v14}];
}

void sub_2BFC(void *a1@<X1>, _OWORD *a2@<X8>)
{
  v8 = a1;
  os_unfair_lock_lock(&unk_161A0);
  if (qword_161A8)
  {
    v3 = qword_161A8 == v8;
  }

  else
  {
    v3 = 0;
  }

  if (!v3 || (v4 = [v8 version], v4 != qword_161B0))
  {
    qword_161A8 = v8;
    qword_161B0 = [v8 version];
    sub_2CF4(v8, v9);
    xmmword_16170 = v9[4];
    unk_16180 = v9[5];
    xmmword_16190 = v9[6];
    xmmword_16130 = v9[0];
    unk_16140 = v9[1];
    xmmword_16150 = v9[2];
    unk_16160 = v9[3];
  }

  v5 = unk_16180;
  a2[4] = xmmword_16170;
  a2[5] = v5;
  a2[6] = xmmword_16190;
  v6 = unk_16140;
  *a2 = xmmword_16130;
  a2[1] = v6;
  v7 = unk_16160;
  a2[2] = xmmword_16150;
  a2[3] = v7;
  os_unfair_lock_unlock(&unk_161A0);
}

void sub_2CF4(void *a1@<X1>, uint64_t a2@<X8>)
{
  v3 = a1;
  v4 = [CLKDeviceMetrics metricsWithDevice:v3 identitySizeClass:2];
  [NTKAnalogUtilities dialSizeForDevice:v3];
  v6 = v5;

  *a2 = v6 + -1.0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = v6 + -1.0;
  *(a2 + 32) = v6 + -1.0;
  v26[0] = &off_10C38;
  v26[1] = &off_10C50;
  v27[0] = &off_11118;
  v27[1] = &off_11128;
  v7 = [NSDictionary dictionaryWithObjects:v27 forKeys:v26 count:2];
  [v4 constantValue:v7 withOverrides:0.0];
  v9 = v8;

  *(a2 + 40) = 0;
  *(a2 + 48) = v9;
  *(a2 + 56) = CGPointZero;
  *(a2 + 72) = 0x3FF0000000000000;
  v24[0] = &off_10C38;
  v24[1] = &off_10C50;
  v25[0] = &off_11138;
  v25[1] = &off_11148;
  v24[2] = &off_10C68;
  v25[2] = &off_10C80;
  v10 = [NSDictionary dictionaryWithObjects:v25 forKeys:v24 count:3];
  [v4 scaledValue:v10 withOverrides:34.0];
  *(a2 + 80) = v11;

  v22[0] = &off_10C38;
  v22[1] = &off_10C50;
  v23[0] = &off_11158;
  v23[1] = &off_11168;
  v22[2] = &off_10C68;
  v23[2] = &off_11178;
  v12 = [NSDictionary dictionaryWithObjects:v23 forKeys:v22 count:3];
  [v4 scaledValue:v12 withOverrides:28.5];
  *(a2 + 88) = v13;

  v20[0] = &off_10C38;
  v20[1] = &off_10C68;
  v21[0] = &off_11188;
  v21[1] = &off_11198;
  v14 = [NSDictionary dictionaryWithObjects:v21 forKeys:v20 count:2];
  [v4 scaledValue:v14 withOverrides:-27.0];
  *(a2 + 96) = v15;

  v18[0] = &off_10C38;
  v18[1] = &off_10C68;
  v19[0] = &off_111A8;
  v19[1] = &off_111B8;
  v16 = [NSDictionary dictionaryWithObjects:v19 forKeys:v18 count:2];
  [v4 scaledValue:v16 withOverrides:-31.5];
  *(a2 + 104) = v17;
}

id sub_3278(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&unk_161C0);
  if (qword_161C8)
  {
    v3 = qword_161C8 == v2;
  }

  else
  {
    v3 = 0;
  }

  if (!v3 || (v4 = [v2 version], v4 != qword_161D0))
  {
    qword_161C8 = v2;
    qword_161D0 = [v2 version];
    v5 = _EnumValueRange();
    v6 = qword_161B8;
    qword_161B8 = v5;
  }

  v7 = qword_161B8;
  os_unfair_lock_unlock(&unk_161C0);

  return v7;
}

void sub_33A0(id a1)
{
  v3[0] = &off_10C98;
  v3[1] = &off_10CB0;
  v4[0] = NTKFaceBundleColorRed;
  v4[1] = NTKFaceBundleColorRedWhite;
  v3[2] = &off_10CC8;
  v4[2] = NTKFaceBundleColorWhite;
  v1 = [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:3];
  v2 = qword_161D8;
  qword_161D8 = v1;
}

double sub_3DE0(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&unk_16208);
  if (qword_16210)
  {
    v3 = qword_16210 == v2;
  }

  else
  {
    v3 = 0;
  }

  if (v3 && (v4 = [v2 version], v4 == qword_16218))
  {
    v5 = qword_161E8;
  }

  else
  {
    qword_16210 = v2;
    qword_16218 = [v2 version];
    v5 = sub_3EE0(qword_16218, v2);
    qword_161E8 = v5;
    qword_161F0 = v6;
    qword_161F8 = v7;
    qword_16200 = v8;
  }

  os_unfair_lock_unlock(&unk_16208);

  return *&v5;
}

double sub_3EE0(uint64_t a1, uint64_t a2)
{
  v2 = [CLKDeviceMetrics metricsWithDevice:a2 identitySizeClass:2];
  [v2 setRoundingBehavior:3];
  v8[0] = &off_10D88;
  v8[1] = &off_10DA0;
  v9[0] = &off_111C8;
  v9[1] = &off_111D8;
  v3 = [NSDictionary dictionaryWithObjects:v9 forKeys:v8 count:2];
  [v2 scaledValue:v3 withOverrides:20.75];

  v6[0] = &off_10D88;
  v6[1] = &off_10DA0;
  v7[0] = &off_111E8;
  v7[1] = &off_111F8;
  v4 = [NSDictionary dictionaryWithObjects:v7 forKeys:v6 count:2];
  [v2 scaledValue:v4 withOverrides:6.25];

  return 2.5;
}

id _ringColor()
{
  if (qword_16228 != -1)
  {
    sub_8304();
  }

  v1 = qword_16220;

  return v1;
}

id _minuteTickColor()
{
  if (qword_16268 != -1)
  {
    sub_8318();
  }

  v1 = qword_16260;

  return v1;
}

id _numeralsGreyColor()
{
  if (qword_16288 != -1)
  {
    sub_832C();
  }

  v1 = qword_16280;

  return v1;
}

double _hourNumeralOpacity(uint64_t a1)
{
  result = 0.0;
  if (a1 == 2)
  {
    return 1.0;
  }

  return result;
}

void sub_57D0(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 removeAllAnimations];
  v4 = *&CATransform3DIdentity.m33;
  v10[4] = *&CATransform3DIdentity.m31;
  v10[5] = v4;
  v5 = *&CATransform3DIdentity.m43;
  v10[6] = *&CATransform3DIdentity.m41;
  v10[7] = v5;
  v6 = *&CATransform3DIdentity.m13;
  v10[0] = *&CATransform3DIdentity.m11;
  v10[1] = v6;
  v7 = *&CATransform3DIdentity.m23;
  v10[2] = *&CATransform3DIdentity.m21;
  v10[3] = v7;
  [v3 setTransform:v10];
  v8 = _numeralsGreyColor();
  [v3 setForegroundColor:{objc_msgSend(v8, "CGColor")}];

  v9 = *(a1 + 32);
  *&v9 = v9;
  [v3 setOpacity:v9];
}

double _minuteNumeralOpacity(uint64_t a1)
{
  result = 0.0;
  if (a1 == 3)
  {
    return 1.0;
  }

  return result;
}

void sub_588C(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 removeAllAnimations];
  v4 = *&CATransform3DIdentity.m33;
  v10[4] = *&CATransform3DIdentity.m31;
  v10[5] = v4;
  v5 = *&CATransform3DIdentity.m43;
  v10[6] = *&CATransform3DIdentity.m41;
  v10[7] = v5;
  v6 = *&CATransform3DIdentity.m13;
  v10[0] = *&CATransform3DIdentity.m11;
  v10[1] = v6;
  v7 = *&CATransform3DIdentity.m23;
  v10[2] = *&CATransform3DIdentity.m21;
  v10[3] = v7;
  [v3 setTransform:v10];
  v8 = _numeralsGreyColor();
  [v3 setForegroundColor:{objc_msgSend(v8, "CGColor")}];

  v9 = *(a1 + 32);
  *&v9 = v9;
  [v3 setOpacity:v9];
}

id _secondTickColor(uint64_t a1)
{
  if (qword_16258 != -1)
  {
    sub_8340();
  }

  v2 = &qword_16250;
  if (a1 != 2)
  {
    v2 = &qword_16248;
  }

  v3 = *v2;

  return v3;
}

id _hourTickColor(uint64_t a1)
{
  if (qword_16240 != -1)
  {
    sub_8354();
  }

  v2 = &qword_16238;
  if (a1 != 2)
  {
    v2 = &qword_16230;
  }

  v3 = *v2;

  return v3;
}

__n128 _minuteClusterTransform@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (qword_16410 != -1)
  {
    sub_8368();
  }

  if (a1 == 3)
  {
    v4 = &xmmword_16310;
  }

  else if (a1)
  {
    v4 = &xmmword_16290;
  }

  else
  {
    v4 = &xmmword_16390;
  }

  v5 = v4[5];
  *(a2 + 64) = v4[4];
  *(a2 + 80) = v5;
  v6 = v4[7];
  *(a2 + 96) = v4[6];
  *(a2 + 112) = v6;
  v7 = v4[1];
  *a2 = *v4;
  *(a2 + 16) = v7;
  result = v4[2];
  v9 = v4[3];
  *(a2 + 32) = result;
  *(a2 + 48) = v9;
  return result;
}

__n128 _minuteInstanceTransform@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (qword_16598 != -1)
  {
    sub_837C();
  }

  if (a1 == 3)
  {
    v4 = &xmmword_16498;
  }

  else if (a1)
  {
    v4 = &xmmword_16418;
  }

  else
  {
    v4 = &xmmword_16518;
  }

  v5 = v4[5];
  *(a2 + 64) = v4[4];
  *(a2 + 80) = v5;
  v6 = v4[7];
  *(a2 + 96) = v4[6];
  *(a2 + 112) = v6;
  v7 = v4[1];
  *a2 = *v4;
  *(a2 + 16) = v7;
  result = v4[2];
  v9 = v4[3];
  *(a2 + 32) = result;
  *(a2 + 48) = v9;
  return result;
}

uint64_t _minuteInstanceCount(uint64_t a1)
{
  if (a1 == 3)
  {
    return 4;
  }

  else
  {
    return 1;
  }
}

double _minuteTickOpacity(uint64_t a1)
{
  result = 1.0;
  if (!a1)
  {
    return 0.0;
  }

  return result;
}

double _secondReplicatorInstanceDelay(uint64_t a1)
{
  result = 1.0;
  if (a1 == 2)
  {
    return 3.0;
  }

  return result;
}

void sub_5ED8(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = dbl_CC80[a3];
  v6 = a2;
  [v4 setBeginTime:v5];
  [v6 addAnimation:*(a1 + 32) forKey:@"hourNumeralShow"];
}

void sub_5F54(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = dbl_CC98[a3];
  v6 = a2;
  [v4 setBeginTime:v5];
  [v6 addAnimation:*(a1 + 32) forKey:@"hourNumeralHide"];
}

void sub_5FD0(uint64_t a1, void *a2, unint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = a3 * 5.0 + 0.00000011920929;
  v6 = a2;
  [v4 setBeginTime:v5];
  [v6 addAnimation:*(a1 + 32) forKey:@"minuteNumeralShow"];
}

uint64_t sub_6340(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (*(a1 + 48) == 1)
  {
    if (*(a1 + 49))
    {
      goto LABEL_6;
    }

    v6 = v3;
    v3 = [*(a1 + 32) insertSublayer:v3 above:*(*(a1 + 40) + 48)];
  }

  else
  {
    v6 = v3;
    v3 = [v3 removeFromSuperlayer];
  }

  v4 = v6;
LABEL_6:

  return _objc_release_x1(v3, v4);
}

uint64_t sub_63C4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (*(a1 + 48) == 1)
  {
    if (*(a1 + 49))
    {
      goto LABEL_6;
    }

    v6 = v3;
    v3 = [*(a1 + 32) insertSublayer:v3 above:*(*(a1 + 40) + 48)];
  }

  else
  {
    v6 = v3;
    v3 = [v3 removeFromSuperlayer];
  }

  v4 = v6;
LABEL_6:

  return _objc_release_x1(v3, v4);
}

void sub_7308(id a1)
{
  v1 = [UIColor colorWithRed:0.0949019608 green:0.0956862745 blue:0.0988235294 alpha:1.0];
  v2 = qword_16220;
  qword_16220 = v1;

  _objc_release_x1(v1, v2);
}

void sub_7364(id a1)
{
  v1 = [UIColor colorWithRed:0.780392157 green:0.784313725 blue:0.792156863 alpha:1.0];
  v2 = qword_16238;
  qword_16238 = v1;

  v3 = [UIColor colorWithRed:0.862745098 green:0.866666667 blue:0.870588235 alpha:1.0];
  v4 = qword_16230;
  qword_16230 = v3;

  _objc_release_x1(v3, v4);
}

void sub_7400(id a1)
{
  v1 = [UIColor colorWithWhite:0.588235294 alpha:1.0];
  v2 = qword_16250;
  qword_16250 = v1;

  v3 = [UIColor colorWithRed:0.345098039 green:0.349019608 blue:0.356862745 alpha:1.0];
  v4 = qword_16248;
  qword_16248 = v3;

  _objc_release_x1(v3, v4);
}

void sub_748C(id a1)
{
  v1 = [UIColor colorWithRed:0.388235294 green:0.392156863 blue:0.4 alpha:1.0];
  v2 = qword_16260;
  qword_16260 = v1;

  _objc_release_x1(v1, v2);
}

id _numeralsRedColor()
{
  if (qword_16278 != -1)
  {
    sub_83E0();
  }

  v1 = qword_16270;

  return v1;
}

void sub_752C(id a1)
{
  v1 = [UIColor colorWithRed:1.0 green:0.231372549 blue:0.188235294 alpha:1.0];
  v2 = qword_16270;
  qword_16270 = v1;

  _objc_release_x1(v1, v2);
}

void sub_7584(id a1)
{
  v1 = [UIColor colorWithRed:0.780392157 green:0.784313725 blue:0.792156863 alpha:1.0];
  v2 = qword_16280;
  qword_16280 = v1;

  _objc_release_x1(v1, v2);
}

void sub_75E0(id a1)
{
  CATransform3DMakeRotation(&v1, 0.471238898, 0.0, 0.0, 1.0);
  *byte_16390 = v1;
  CATransform3DMakeRotation(&v1, 0.261799388, 0.0, 0.0, 1.0);
  *byte_16290 = v1;
  CATransform3DMakeRotation(&v1, 0.41887902, 0.0, 0.0, 1.0);
  *byte_16310 = v1;
}

void sub_76C8(id a1)
{
  v1 = *&CATransform3DIdentity.m33;
  xmmword_16458 = *&CATransform3DIdentity.m31;
  unk_16468 = v1;
  v2 = *&CATransform3DIdentity.m43;
  xmmword_16478 = *&CATransform3DIdentity.m41;
  unk_16488 = v2;
  v3 = *&CATransform3DIdentity.m13;
  xmmword_16418 = *&CATransform3DIdentity.m11;
  unk_16428 = v3;
  v4 = *&CATransform3DIdentity.m23;
  xmmword_16438 = *&CATransform3DIdentity.m21;
  unk_16448 = v4;
  CATransform3DMakeRotation(&v5, -0.104719755, 0.0, 0.0, 1.0);
  *byte_16498 = v5;
  CATransform3DMakeRotation(&v5, -0.0174532925, 0.0, 0.0, 1.0);
  *byte_16518 = v5;
}

void sub_78B4(void *a1@<X1>, void *a2@<X8>)
{
  v5 = a1;
  os_unfair_lock_lock(&unk_167E0);
  if (qword_167E8)
  {
    v3 = qword_167E8 == v5;
  }

  else
  {
    v3 = 0;
  }

  if (!v3 || (v4 = [v5 version], v4 != qword_167F0))
  {
    qword_167E8 = v5;
    qword_167F0 = [v5 version];
    sub_798C(v5, __src);
    memcpy(&unk_165A0, __src, 0x240uLL);
  }

  memcpy(a2, &unk_165A0, 0x240uLL);
  os_unfair_lock_unlock(&unk_167E0);
}

void sub_798C(void *a1@<X1>, uint64_t a2@<X8>)
{
  v3 = a1;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 80) = 0u;
  *(a2 + 96) = 0u;
  *(a2 + 112) = 0u;
  *(a2 + 128) = 0u;
  *(a2 + 144) = 0u;
  *(a2 + 160) = 0u;
  *(a2 + 176) = 0u;
  *(a2 + 192) = 0u;
  *(a2 + 208) = 0u;
  *(a2 + 224) = 0u;
  *(a2 + 240) = 0u;
  *(a2 + 256) = 0u;
  *(a2 + 272) = 0u;
  *(a2 + 288) = 0u;
  *(a2 + 304) = 0u;
  *(a2 + 320) = 0u;
  *(a2 + 336) = 0u;
  *(a2 + 352) = 0u;
  *(a2 + 368) = 0u;
  *(a2 + 384) = 0u;
  *(a2 + 400) = 0u;
  *(a2 + 416) = 0u;
  *(a2 + 432) = 0u;
  *(a2 + 448) = 0u;
  *(a2 + 464) = 0u;
  *(a2 + 480) = 0u;
  v4 = [CLKDeviceMetrics metricsWithDevice:v3 identitySizeClass:2];
  [v4 setRoundingBehavior:2];
  v79[0] = &off_10EA8;
  v66 = xmmword_CBA0;
  v51 = [NSValue valueWithBytes:&v66 objCType:"{CGSize=dd}"];
  v80[0] = v51;
  v79[1] = &off_10EC0;
  v65 = xmmword_CBB0;
  v5 = [NSValue valueWithBytes:&v65 objCType:"{CGSize=dd}"];
  v80[1] = v5;
  v79[2] = &off_10ED8;
  v64 = xmmword_CBB0;
  v6 = [NSValue valueWithBytes:&v64 objCType:"{CGSize=dd}"];
  v80[2] = v6;
  v79[3] = &off_10EF0;
  v63 = xmmword_CBC0;
  v7 = [NSValue valueWithBytes:&v63 objCType:"{CGSize=dd}"];
  v80[3] = v7;
  v79[4] = &off_10F08;
  v62 = xmmword_CBC0;
  v8 = [NSValue valueWithBytes:&v62 objCType:"{CGSize=dd}"];
  v80[4] = v8;
  v9 = [NSDictionary dictionaryWithObjects:v80 forKeys:v79 count:5];
  v50 = v4;
  [v4 scaledSize:v9 withOverrides:{5.0, 12.0}];
  *(a2 + 496) = v10;
  *(a2 + 504) = v11;

  v77[0] = &off_10EA8;
  v61 = xmmword_CBD0;
  v49 = [NSValue valueWithBytes:&v61 objCType:"{CGSize=dd}"];
  v78[0] = v49;
  v77[1] = &off_10EC0;
  v60 = xmmword_CBE0;
  v12 = [NSValue valueWithBytes:&v60 objCType:"{CGSize=dd}"];
  v78[1] = v12;
  v77[2] = &off_10ED8;
  v59 = xmmword_CBF0;
  v13 = [NSValue valueWithBytes:&v59 objCType:"{CGSize=dd}"];
  v78[2] = v13;
  v77[3] = &off_10EF0;
  v58 = xmmword_CBE0;
  v14 = [NSValue valueWithBytes:&v58 objCType:"{CGSize=dd}"];
  v78[3] = v14;
  v77[4] = &off_10F08;
  v57 = xmmword_CBE0;
  v15 = [NSValue valueWithBytes:&v57 objCType:"{CGSize=dd}"];
  v78[4] = v15;
  v16 = [NSDictionary dictionaryWithObjects:v78 forKeys:v77 count:5];
  [v4 scaledSize:v16 withOverrides:{2.0, 10.0}];
  *(a2 + 512) = v17;
  *(a2 + 520) = v18;

  v75[0] = &off_10EA8;
  v56 = xmmword_CC00;
  v19 = [NSValue valueWithBytes:&v56 objCType:"{CGSize=dd}"];
  v76[0] = v19;
  v75[1] = &off_10EC0;
  v55 = xmmword_CC10;
  v20 = [NSValue valueWithBytes:&v55 objCType:"{CGSize=dd}"];
  v76[1] = v20;
  v75[2] = &off_10ED8;
  v54 = xmmword_CC20;
  v21 = [NSValue valueWithBytes:&v54 objCType:"{CGSize=dd}"];
  v76[2] = v21;
  v75[3] = &off_10EF0;
  v53 = xmmword_CC30;
  v22 = [NSValue valueWithBytes:&v53 objCType:"{CGSize=dd}"];
  v76[3] = v22;
  v75[4] = &off_10F08;
  v52 = xmmword_CC40;
  v23 = [NSValue valueWithBytes:&v52 objCType:"{CGSize=dd}"];
  v76[4] = v23;
  v24 = [NSDictionary dictionaryWithObjects:v76 forKeys:v75 count:5];
  [v50 scaledSize:v24 withOverrides:{2.0, 7.0}];
  *(a2 + 528) = v25;
  *(a2 + 536) = v26;

  v73[0] = &off_10EA8;
  v73[1] = &off_10EC0;
  v74[0] = &off_11238;
  v74[1] = &off_11248;
  v27 = [NSDictionary dictionaryWithObjects:v74 forKeys:v73 count:2];
  [v50 scaledValue:v27 withOverrides:14.0];
  *a2 = v28;

  v71[0] = &off_10EA8;
  v71[1] = &off_10EC0;
  v72[0] = &off_11258;
  v72[1] = &off_11268;
  v29 = [NSDictionary dictionaryWithObjects:v72 forKeys:v71 count:2];
  [v50 scaledValue:v29 withOverrides:43.0];
  *(a2 + 8) = v30;

  memset_pattern16((a2 + 304), &unk_CC60, 0xC0uLL);
  v31 = CLKLocaleCurrentNumberSystem();
  if (v31 != 1)
  {
    if (v31 != 2)
    {
      [v50 scaledValue:0 withOverride:10.0 forSizeClass:8.5];
      *(a2 + 544) = v35;
      [v50 scaledValue:3 withOverride:22.0 forSizeClass:23.0];
      *(a2 + 560) = v36;
      *(a2 + 416) = xmmword_CC50;
      *(a2 + 432) = xmmword_CC50;
      *(a2 + 448) = 0x3FD999999999999ALL;
      v33 = 0.5;
      v34 = 456;
      goto LABEL_6;
    }

    [v50 scaledValue:-1.5];
  }

  [v50 scaledValue:0 withOverride:11.0 forSizeClass:9.5];
  *(a2 + 544) = v32;
  [v50 scaledValue:3 withOverride:22.5 forSizeClass:23.5];
  v34 = 560;
LABEL_6:
  *(a2 + v34) = v33;
  v69[0] = &off_10EA8;
  v69[1] = &off_10EC0;
  v70[0] = &off_11278;
  v70[1] = &off_11288;
  v37 = [NSDictionary dictionaryWithObjects:v70 forKeys:v69 count:2];
  [v50 scaledValue:v37 withOverrides:56.0];

  v67[0] = &off_10EA8;
  v67[1] = &off_10EC0;
  v68[0] = &off_11298;
  v68[1] = &off_112A8;
  v38 = [NSDictionary dictionaryWithObjects:v68 forKeys:v67 count:2];
  [v50 scaledValue:v38 withOverrides:51.0];

  v39 = (a2 + 120);
  for (i = 1; i != 13; ++i)
  {
    __sincos_stret(i * -3.14159265 / 6.0 + 1.57079633);
    [v3 screenScale];
    UIRoundToScale();
    v42 = v41;
    [v3 screenScale];
    UIRoundToScale();
    *(v39 - 1) = v42;
    *v39 = v43;
    v39 += 2;
  }

  v44 = 0;
  v45 = (a2 + 24);
  do
  {
    __sincos_stret(*&qword_CCC8[v44]);
    [v3 screenScale];
    UIRoundToScale();
    v47 = v46;
    [v3 screenScale];
    UIRoundToScale();
    *(v45 - 1) = v47;
    *v45 = v48;
    ++v44;
    v45 += 2;
  }

  while (v44 != 3);
}

void sub_81C4(id a1)
{
  v1 = +[NSNull null];
  v4[0] = @"instanceTransform";
  v4[1] = @"contentsMultiplyColor";
  v5[0] = v1;
  v5[1] = v1;
  v4[2] = @"backgroundColor";
  v4[3] = @"transform";
  v5[2] = v1;
  v5[3] = v1;
  v4[4] = @"hidden";
  v4[5] = @"position";
  v5[4] = v1;
  v5[5] = v1;
  v4[6] = @"opacity";
  v4[7] = @"instanceCount";
  v5[6] = v1;
  v5[7] = v1;
  v4[8] = @"instanceDelay";
  v5[8] = v1;
  v2 = [NSDictionary dictionaryWithObjects:v5 forKeys:v4 count:9];
  v3 = qword_167F8;
  qword_167F8 = v2;
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