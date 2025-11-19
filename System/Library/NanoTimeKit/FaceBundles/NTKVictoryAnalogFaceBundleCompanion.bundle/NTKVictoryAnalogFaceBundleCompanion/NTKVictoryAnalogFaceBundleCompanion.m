void sub_12E0(id a1, NTKFace *a2, unint64_t a3, BOOL *a4)
{
  v5 = a2;
  if (a3 > 2)
  {
    if (a3 - 3 < 3)
    {
      v8 = [NTKComplication anyComplicationOfType:8];
      [(NTKFace *)v5 setComplication:v8 forSlot:NTKComplicationSlotBottomCenter];

      v6 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:20 zOrder:4000];
      v12 = v6;
      v7 = &v12;
      goto LABEL_10;
    }
  }

  else
  {
    switch(a3)
    {
      case 0uLL:
        v6 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:3 zOrder:4000];
        v15 = v6;
        v7 = &v15;
        v9 = 20;
LABEL_11:
        v10 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:v9 zOrder:4000];
        v7[1] = v10;
        v11 = [NSArray arrayWithObjects:v7 count:2];
        [(NTKFace *)v5 setCurationPlacements:v11];

        break;
      case 1uLL:
        v6 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:20 zOrder:6000];
        v14 = v6;
        v7 = &v14;
        goto LABEL_10;
      case 2uLL:
        v6 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:20 zOrder:4000];
        v13 = v6;
        v7 = &v13;
LABEL_10:
        v9 = 3;
        goto LABEL_11;
    }
  }
}

id sub_2160(uint64_t a1, void *a2)
{
  v3 = a2;
  os_unfair_lock_lock(&unk_12448);
  if (qword_12450)
  {
    v4 = qword_12450 == v3;
  }

  else
  {
    v4 = 0;
  }

  if (!v4 || (v5 = [v3 version], v5 != qword_12458))
  {
    qword_12450 = v3;
    qword_12458 = [v3 version];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_2284;
    v10[3] = &unk_C408;
    v10[4] = *(a1 + 32);
    v6 = sub_2284(v10, v3);
    v7 = qword_12440;
    qword_12440 = v6;
  }

  v8 = qword_12440;
  os_unfair_lock_unlock(&unk_12448);

  return v8;
}

id sub_2284(uint64_t a1, uint64_t a2)
{
  v4.receiver = *(a1 + 32);
  v4.super_class = &OBJC_METACLASS___NTKVictoryAnalogColorEditOption;
  v2 = objc_msgSendSuper2(&v4, "_orderedValuesForDevice:", a2);

  return v2;
}

void sub_2D04(id a1)
{
  qword_12460 = _EnumValueRange();

  _objc_release_x1();
}

void sub_2D88(id a1)
{
  qword_12470 = _EnumValueRange();

  _objc_release_x1();
}

void sub_2EBC(id a1)
{
  v3[0] = &off_CAC0;
  v3[1] = &off_CAD8;
  v4[0] = NTKFaceBundleStyle1;
  v4[1] = NTKFaceBundleStyle2;
  v3[2] = &off_CAF0;
  v3[3] = &off_CB08;
  v4[2] = NTKFaceBundleStyle3;
  v4[3] = NTKFaceBundleStyle4;
  v3[4] = &off_CB20;
  v4[4] = NTKFaceBundleStyle5;
  v1 = [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:5];
  v2 = qword_12480;
  qword_12480 = v1;
}

void sub_4060(void *a1, uint64_t a2, void *a3)
{
  v3 = a1[4];
  v4 = a1[5];
  v5 = a1[6];
  v6 = [a3 display];
  [v3 _applyColor:v4 alternateColor:v5 toComplicationView:v6];
}

void sub_4C84(uint64_t a1, __int128 *a2, uint64_t a3)
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_4D5C;
  v5[3] = &unk_C4D8;
  v5[4] = *(a1 + 32);
  v5[5] = a3;
  v3 = a2[1];
  v6 = *a2;
  v7 = v3;
  v8 = a2[2];
  v4 = objc_retainBlock(v5);
  (v4[2])(v4, NTKComplicationSlotTopLeft);
  (v4[2])(v4, NTKComplicationSlotTopRight);
  (v4[2])(v4, NTKComplicationSlotBottomCenter);
}

void sub_4D5C(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) complicationLayoutforSlot:a2];
  v4 = [v3 defaultLayoutRuleForState:*(a1 + 40)];
  v5 = *(a1 + 64);
  v6[0] = *(a1 + 48);
  v6[1] = v5;
  v6[2] = *(a1 + 80);
  [v4 setContentTransform:v6];
}

uint64_t sub_4DD0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 16);
  v4 = *(a1 + 56);
  v6[0] = *(a1 + 40);
  v6[1] = v4;
  v6[2] = *(a1 + 72);
  return v3(v2, v6, a2);
}

id sub_544C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 format];
  [v4 bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  [*(a1 + 32) setFill];
  v32.origin.x = v6;
  v32.origin.y = v8;
  v32.size.width = v10;
  v32.size.height = v12;
  UIRectFill(v32);
  v13 = [*(a1 + 40) layer];
  v14 = [v3 CGContext];

  [v13 renderInContext:v14];
  y = CGPointZero.y;
  [*(a1 + 48) size];
  UIRectCenteredIntegralRectScale();
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  [*(a1 + 56) drawInRect:0];
  v24 = *(a1 + 64);
  if (v24)
  {
    [v24 drawInRect:{v17, v19, v21, v23}];
  }

  [*(a1 + 48) drawInRect:{v17, v19, v21, v23}];
  NTKCSecondHandCenterOffset();
  v25 = *(a1 + 72);
  v27 = v6 + v10 * 0.5 - v26;
  v29 = v8 + v12 * 0.5 - v28;

  return [v25 drawAtPoint:{v27, v29}];
}

void sub_55D0(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 format];
  [v3 bounds];
  [v2 drawInRect:?];
}

void sub_5CB0(void *a1@<X1>, uint64_t a2@<X8>)
{
  v6 = a1;
  os_unfair_lock_lock(&unk_124D0);
  if (qword_124D8)
  {
    v3 = qword_124D8 == v6;
  }

  else
  {
    v3 = 0;
  }

  if (!v3 || (v4 = [v6 version], v4 != qword_124E0))
  {
    qword_124D8 = v6;
    qword_124E0 = [v6 version];
    sub_5D9C(v6, v7);
    xmmword_12498 = v7[0];
    unk_124A8 = v7[1];
    xmmword_124B8 = v7[2];
    qword_124C8 = v8;
  }

  v5 = unk_124A8;
  *a2 = xmmword_12498;
  *(a2 + 16) = v5;
  *(a2 + 32) = xmmword_124B8;
  *(a2 + 48) = qword_124C8;
  os_unfair_lock_unlock(&unk_124D0);
}

void sub_5D9C(void *a1@<X1>, uint64_t a2@<X8>)
{
  v3 = a1;
  v4 = [CLKDeviceMetrics metricsWithDevice:v3 identitySizeClass:2];
  NTKColorFaceViewEdgeGapNormal();
  *a2 = v5;
  NTKColorFaceViewEdgeGapEditing();
  *(a2 + 8) = v6;
  v27[0] = &off_CB50;
  v27[1] = &off_CB68;
  v28[0] = &off_CDE8;
  v28[1] = &off_CDE8;
  v27[2] = &off_CB80;
  v27[3] = &off_CB98;
  v28[2] = &off_CDF8;
  v28[3] = &off_CBB0;
  v27[4] = &off_CBC8;
  v28[4] = &off_CE08;
  v7 = [NSDictionary dictionaryWithObjects:v28 forKeys:v27 count:5];
  [v4 scaledValue:v7 withOverrides:2.0];
  v9 = v8;

  v25[0] = &off_CB50;
  v25[1] = &off_CB68;
  v26[0] = &off_CDE8;
  v26[1] = &off_CDE8;
  v25[2] = &off_CB80;
  v26[2] = &off_CE18;
  v10 = [NSDictionary dictionaryWithObjects:v26 forKeys:v25 count:3];
  [v4 scaledValue:v10 withOverrides:12.0];
  v12 = v11;

  v23[0] = &off_CB50;
  v23[1] = &off_CB68;
  v24[0] = &off_CDE8;
  v24[1] = &off_CDE8;
  v23[2] = &off_CB80;
  v24[2] = &off_CE28;
  v13 = [NSDictionary dictionaryWithObjects:v24 forKeys:v23 count:3];
  [v4 scaledValue:v13 withOverrides:3.0];
  v15 = v14;

  v21[0] = &off_CB50;
  v21[1] = &off_CB68;
  v22[0] = &off_CDE8;
  v22[1] = &off_CDE8;
  v21[2] = &off_CB80;
  v22[2] = &off_CE18;
  v16 = [NSDictionary dictionaryWithObjects:v22 forKeys:v21 count:3];
  [v4 scaledValue:v16 withOverrides:12.0];
  v18 = v17;

  *(a2 + 16) = v9;
  *(a2 + 24) = v12;
  *(a2 + 32) = v15;
  *(a2 + 40) = v18;
  [v3 screenBounds];
  v20 = v19;

  *(a2 + 48) = v20 - (v12 + v18);
}