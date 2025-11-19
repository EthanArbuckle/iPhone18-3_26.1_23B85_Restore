id sub_25E8(uint64_t a1, double a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  *&a2 = fabsf((v3 - (*&a2 + 0.4)) / 0.4);
  if (*&a2 > 1.0)
  {
    *&a2 = 1.0;
  }

  return [*(a1 + 32) _solveForInput:a2];
}

void sub_2720(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = a3;
  v8 = a2;
  v9 = [v6 complication];
  v10 = [*(a1 + 40) complicationPlatter];
  v11 = [v7 display];
  [v5 _applyColor:v9 platterColor:v10 toComplicationView:v11 slot:v8];

  v12 = [v7 display];

  v13 = *&CGAffineTransformIdentity.c;
  v14[0] = *&CGAffineTransformIdentity.a;
  v14[1] = v13;
  v14[2] = *&CGAffineTransformIdentity.tx;
  [v12 setTransform:v14];
}

void sub_35BC(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) _keylinePaddingForState:a2];
  v5 = v4;
  [*(a1 + 32) _keylineEdgeGapForState:a2];
  v7 = v6;
  v8 = [*(a1 + 32) device];
  NTKCircularMediumComplicationDiameter();
  v10 = v9;

  v11 = [*(a1 + 32) device];
  sub_4444(v11, &v42);
  v12 = v43;

  v13 = [*(a1 + 32) device];
  sub_4444(v13, &v40);
  v14 = v10 + v12;
  v15 = v10 + v12 + v41;

  if ((a2 & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    v16 = [*(a1 + 32) device];
    sub_4444(v16, &v38);
    v15 = v15 + v39;
  }

  v17 = [*(a1 + 32) device];
  sub_4444(v17, v34);
  v35 = v34[6];
  v36 = v34[7];
  v37 = v34[8];

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = *(a1 + 40);
  v18 = [obj countByEnumeratingWithState:&v30 objects:v44 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = 0;
    v21 = v5 + v7;
    v22 = *v31;
    do
    {
      v23 = 0;
      v24 = v20;
      do
      {
        if (*v31 != v22)
        {
          objc_enumerationMutation(obj);
        }

        v25 = *(*(&v30 + 1) + 8 * v23);
        v26 = [*(a1 + 32) device];
        v20 = [NTKComplicationLayoutRule layoutRuleForDevice:v26 withReferenceFrame:3 horizontalLayout:3 verticalLayout:v21 keylinePadding:v15, v10, v10, v5, v5, v5, v5];

        v29[0] = v35;
        v29[1] = v36;
        v29[2] = v37;
        [v20 setContentTransform:v29];
        v27 = [*(a1 + 32) complicationLayoutforSlot:v25];
        [v27 setDefaultLayoutRule:v20 forState:a2];

        v15 = v14 + v15;
        v23 = v23 + 1;
        v24 = v20;
      }

      while (v19 != v23);
      v19 = [obj countByEnumeratingWithState:&v30 objects:v44 count:16];
    }

    while (v19);
  }
}

id sub_3CDC(uint64_t a1, void *a2)
{
  v3 = [a2 format];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = [*(a1 + 32) background];
  [v12 setFill];

  v17.origin.x = v5;
  v17.origin.y = v7;
  v17.size.width = v9;
  v17.size.height = v11;
  UIRectFill(v17);
  v13 = *(a1 + 40);
  if (v13)
  {
    [v13 drawInRect:{v5, v7, v9, v11}];
  }

  v14 = *(a1 + 48);

  return [v14 drawInRect:{v5, v7, v9, v11}];
}

void sub_4444(void *a1@<X1>, _OWORD *a2@<X8>)
{
  v9 = a1;
  os_unfair_lock_lock(&unk_16E60);
  if (qword_16E68)
  {
    v3 = qword_16E68 == v9;
  }

  else
  {
    v3 = 0;
  }

  if (!v3 || (v4 = [v9 version], v4 != qword_16E70))
  {
    qword_16E68 = v9;
    qword_16E70 = [v9 version];
    sub_454C(v9, v10);
    xmmword_16E30 = v10[6];
    unk_16E40 = v10[7];
    xmmword_16E50 = v10[8];
    xmmword_16DF0 = v10[2];
    unk_16E00 = v10[3];
    xmmword_16E10 = v10[4];
    unk_16E20 = v10[5];
    xmmword_16DD0 = v10[0];
    unk_16DE0 = v10[1];
  }

  v5 = unk_16E40;
  a2[6] = xmmword_16E30;
  a2[7] = v5;
  a2[8] = xmmword_16E50;
  v6 = unk_16E00;
  a2[2] = xmmword_16DF0;
  a2[3] = v6;
  v7 = unk_16E20;
  a2[4] = xmmword_16E10;
  a2[5] = v7;
  v8 = unk_16DE0;
  *a2 = xmmword_16DD0;
  a2[1] = v8;
  os_unfair_lock_unlock(&unk_16E60);
}

void sub_454C(void *a1@<X1>, uint64_t a2@<X8>)
{
  *(a2 + 112) = 0u;
  *(a2 + 128) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 80) = 0u;
  *(a2 + 96) = 0u;
  v31 = (a2 + 96);
  v30 = a1;
  v3 = [CLKDeviceMetrics metricsWithDevice:v30 identitySizeClass:2];
  v53[0] = &off_10B88;
  v53[1] = &off_10BA0;
  v54[0] = &off_110E8;
  v54[1] = &off_110E8;
  v53[2] = &off_10BB8;
  v54[2] = &off_110F8;
  v4 = [NSDictionary dictionaryWithObjects:v54 forKeys:v53 count:3];
  [v3 scaledValue:v4 withOverrides:1.0];
  *a2 = v5;

  *(a2 + 8) = 0x400C000000000000;
  v51[0] = &off_10B88;
  v51[1] = &off_10BA0;
  v52[0] = &off_11108;
  v52[1] = &off_11118;
  v51[2] = &off_10BD0;
  v51[3] = &off_10BB8;
  v52[2] = &off_11128;
  v52[3] = &off_11138;
  v6 = [NSDictionary dictionaryWithObjects:v52 forKeys:v51 count:4];
  [v3 scaledValue:v6 withOverrides:24.5];
  *(a2 + 16) = v7;

  v49[0] = &off_10B88;
  v49[1] = &off_10BA0;
  v50[0] = &off_11148;
  v50[1] = &off_11158;
  v49[2] = &off_10BD0;
  v49[3] = &off_10BB8;
  v50[2] = &off_11168;
  v50[3] = &off_11178;
  v8 = [NSDictionary dictionaryWithObjects:v50 forKeys:v49 count:4];
  [v3 scaledValue:v8 withOverrides:7.5];
  *(a2 + 24) = v9;

  v47[0] = &off_10B88;
  v47[1] = &off_10BA0;
  v48[0] = &off_11188;
  v48[1] = &off_11188;
  v47[2] = &off_10BD0;
  v48[2] = &off_11198;
  v10 = [NSDictionary dictionaryWithObjects:v48 forKeys:v47 count:3];
  [v3 scaledValue:v10 withOverrides:-10.0];
  *(a2 + 32) = v11;

  v45[0] = &off_10B88;
  v45[1] = &off_10BA0;
  v46[0] = &off_111A8;
  v46[1] = &off_111B8;
  v12 = [NSDictionary dictionaryWithObjects:v46 forKeys:v45 count:2];
  [v3 scaledValue:v12 withOverrides:17.5];
  *(a2 + 40) = v13;

  v43[0] = &off_10B88;
  v34 = xmmword_EB40;
  v14 = [NSValue valueWithBytes:&v34 objCType:"{CGSize=dd}"];
  v44[0] = v14;
  v43[1] = &off_10BA0;
  v33 = xmmword_EB50;
  v15 = [NSValue valueWithBytes:&v33 objCType:"{CGSize=dd}"];
  v44[1] = v15;
  v43[2] = &off_10BD0;
  v32 = xmmword_EB60;
  v16 = [NSValue valueWithBytes:&v32 objCType:"{CGSize=dd}"];
  v44[2] = v16;
  v17 = [NSDictionary dictionaryWithObjects:v44 forKeys:v43 count:3];
  [v3 scaledSize:v17 withOverrides:{115.5, 155.5}];
  *(a2 + 48) = v18;
  *(a2 + 56) = v19;

  v41[0] = &off_10B88;
  v41[1] = &off_10BA0;
  v42[0] = &off_111C8;
  v42[1] = &off_111D8;
  v41[2] = &off_10BD0;
  v42[2] = &off_111E8;
  v20 = [NSDictionary dictionaryWithObjects:v42 forKeys:v41 count:3];
  [v3 scaledValue:v20 withOverrides:28.5];
  *(a2 + 64) = v21;

  v39[0] = &off_10B88;
  v39[1] = &off_10BA0;
  v40[0] = &off_111F8;
  v40[1] = &off_11208;
  v39[2] = &off_10BD0;
  v39[3] = &off_10BE8;
  v40[2] = &off_11218;
  v40[3] = &off_11228;
  v39[4] = &off_10C00;
  v39[5] = &off_10C18;
  v40[4] = &off_11238;
  v40[5] = &off_11248;
  v22 = [NSDictionary dictionaryWithObjects:v40 forKeys:v39 count:6];
  [v3 scaledValue:v22 withOverrides:150.0];
  *(a2 + 72) = v23;

  v37[0] = &off_10B88;
  v37[1] = &off_10BA0;
  v38[0] = &off_11188;
  v38[1] = &off_11188;
  v37[2] = &off_10BD0;
  v38[2] = &off_11258;
  v24 = [NSDictionary dictionaryWithObjects:v38 forKeys:v37 count:3];
  [v3 scaledValue:v24 withOverrides:7.0];
  *(a2 + 80) = v25;

  v35[0] = &off_10B88;
  v35[1] = &off_10BA0;
  v36[0] = &off_11188;
  v36[1] = &off_11188;
  v35[2] = &off_10BD0;
  v35[3] = &off_10BE8;
  v36[2] = &off_11168;
  v36[3] = &off_11268;
  v35[4] = &off_10C00;
  v35[5] = &off_10C18;
  v36[4] = &off_11168;
  v36[5] = &off_11168;
  v35[6] = &off_10C30;
  v35[7] = &off_10C48;
  v36[6] = &off_11268;
  v36[7] = &off_11168;
  v35[8] = &off_10BB8;
  v36[8] = &off_11268;
  v26 = [NSDictionary dictionaryWithObjects:v36 forKeys:v35 count:9];
  [v3 scaledValue:v26 withOverrides:9.0];
  *(a2 + 88) = v27;

  NTKDefaultCornerComplicationScaleForFullscreenOpaqueFaceForDevice();
  v29 = v28;

  CGAffineTransformMakeScale(v31, v29, v29);
}

id sub_4EA4(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&unk_16E80);
  if (qword_16E88)
  {
    v3 = qword_16E88 == v2;
  }

  else
  {
    v3 = 0;
  }

  if (!v3 || (v4 = [v2 version], v4 != qword_16E90))
  {
    qword_16E88 = v2;
    qword_16E90 = [v2 version];
    v5 = _EnumValueRange();
    v6 = qword_16E78;
    qword_16E78 = v5;
  }

  v7 = qword_16E78;
  os_unfair_lock_unlock(&unk_16E80);

  return v7;
}

void sub_503C(id a1)
{
  v3[0] = &off_10C60;
  v3[1] = &off_10C78;
  v4[0] = NTKFaceBundleStyle1;
  v4[1] = NTKFaceBundleStyle2;
  v3[2] = &off_10C90;
  v3[3] = &off_10CA8;
  v4[2] = NTKFaceBundleStyle3;
  v4[3] = NTKFaceBundleStyle4;
  v3[4] = &off_10CC0;
  v3[5] = &off_10CD8;
  v4[4] = NTKFaceBundleStyle5;
  v4[5] = NTKFaceBundleStyle6;
  v1 = [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:6];
  v2 = qword_16E98;
  qword_16E98 = v1;
}

id sub_51CC(uint64_t a1, void *a2)
{
  v3 = a2;
  os_unfair_lock_lock(&unk_16EB0);
  if (qword_16EB8)
  {
    v4 = qword_16EB8 == v3;
  }

  else
  {
    v4 = 0;
  }

  if (!v4 || (v5 = [v3 version], v5 != qword_16EC0))
  {
    qword_16EB8 = v3;
    qword_16EC0 = [v3 version];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_52F0;
    v10[3] = &unk_10510;
    v10[4] = *(a1 + 32);
    v6 = sub_52F0(v10, v3);
    v7 = qword_16EA8;
    qword_16EA8 = v6;
  }

  v8 = qword_16EA8;
  os_unfair_lock_unlock(&unk_16EB0);

  return v8;
}

id sub_52F0(uint64_t a1, uint64_t a2)
{
  v5.receiver = *(a1 + 32);
  v5.super_class = &OBJC_METACLASS___NTKVictoryDigitalColorEditOption;
  v2 = objc_msgSendSuper2(&v5, "_orderedValuesForDevice:", a2);
  v3 = [v2 arrayByExcludingObjectsInArray:&off_11088];

  return v3;
}

void sub_5F2C(void *a1@<X1>, _OWORD *a2@<X8>)
{
  v6 = a1;
  os_unfair_lock_lock(&unk_16EF8);
  if (qword_16F00)
  {
    v3 = qword_16F00 == v6;
  }

  else
  {
    v3 = 0;
  }

  if (!v3 || (v4 = [v6 version], v4 != qword_16F08))
  {
    qword_16F00 = v6;
    qword_16F08 = [v6 version];
    sub_6004(v6, v7);
    xmmword_16EC8 = v7[0];
    unk_16ED8 = v7[1];
    xmmword_16EE8 = v7[2];
  }

  v5 = unk_16ED8;
  *a2 = xmmword_16EC8;
  a2[1] = v5;
  a2[2] = xmmword_16EE8;
  os_unfair_lock_unlock(&unk_16EF8);
}

void sub_6004(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v3 = [CLKDeviceMetrics metricsWithDevice:a1 identitySizeClass:2];
  v18[0] = &off_10D38;
  v18[1] = &off_10D50;
  v19[0] = &off_11278;
  v19[1] = &off_11288;
  v4 = [NSDictionary dictionaryWithObjects:v19 forKeys:v18 count:2];
  [v3 scaledValue:v4 withOverrides:105.0];
  *a2 = v5;

  v16[0] = &off_10D38;
  v16[1] = &off_10D68;
  v17[0] = &off_11298;
  v17[1] = &off_112A8;
  v6 = [NSDictionary dictionaryWithObjects:v17 forKeys:v16 count:2];
  [v3 scaledValue:v6 withOverrides:77.5];
  *(a2 + 8) = v7;

  v14[0] = &off_10D38;
  v14[1] = &off_10D68;
  v15[0] = &off_112B8;
  v15[1] = &off_112C8;
  v14[2] = &off_10D50;
  v14[3] = &off_10D80;
  v15[2] = &off_112D8;
  v15[3] = &off_112E8;
  v14[4] = &off_10D98;
  v15[4] = &off_112F8;
  v8 = [NSDictionary dictionaryWithObjects:v15 forKeys:v14 count:5];
  [v3 scaledValue:v8 withOverrides:88.0];
  *(a2 + 16) = v9;

  v12[0] = &off_10D80;
  v12[1] = &off_10D98;
  v13[0] = &off_11308;
  v13[1] = &off_11308;
  v10 = [NSDictionary dictionaryWithObjects:v13 forKeys:v12 count:2];
  [v3 constantValue:v10 withOverrides:-2.0];
  *(a2 + 24) = v11;

  *(a2 + 32) = xmmword_EBB0;
}

void sub_6460(id a1, NTKFace *a2, unint64_t a3, BOOL *a4)
{
  v5 = a2;
  if (a3 - 1 < 2)
  {
    v6 = [NTKComplication anyComplicationOfType:18];
    [(NTKFace *)v5 setComplication:v6 forSlot:NTKComplicationSlot2];

    v7 = [NTKComplication anyComplicationOfType:7];
    [(NTKFace *)v5 setComplication:v7 forSlot:NTKComplicationSlotBottom];

    v8 = 4000;
    v9 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:20 zOrder:4000];
    v14 = v9;
    v10 = &v14;
LABEL_5:
    v11 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:9 zOrder:v8];
    v10[1] = v11;
    v12 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:2 zOrder:4000];
    v10[2] = v12;
    v13 = [NSArray arrayWithObjects:v10 count:3];
    [(NTKFace *)v5 setCurationPlacements:v13];

    goto LABEL_6;
  }

  if (!a3)
  {
    v9 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:20 zOrder:5000];
    v15 = v9;
    v10 = &v15;
    v8 = 7000;
    goto LABEL_5;
  }

LABEL_6:
}

double sub_812C(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&unk_16F30);
  if (qword_16F38)
  {
    v3 = qword_16F38 == v2;
  }

  else
  {
    v3 = 0;
  }

  if (v3 && (v4 = [v2 version], v4 == qword_16F40))
  {
    v5 = qword_16F10;
  }

  else
  {
    qword_16F38 = v2;
    qword_16F40 = [v2 version];
    v5 = sub_822C(qword_16F40, v2);
    qword_16F10 = v5;
    qword_16F18 = v6;
    qword_16F20 = v7;
    qword_16F28 = v8;
  }

  os_unfair_lock_unlock(&unk_16F30);

  return *&v5;
}

double sub_822C(uint64_t a1, uint64_t a2)
{
  v2 = [CLKDeviceMetrics metricsWithDevice:a2 identitySizeClass:2];
  v16[0] = &off_10EA0;
  v16[1] = &off_10EB8;
  v17[0] = &off_11318;
  v17[1] = &off_11328;
  v16[2] = &off_10ED0;
  v16[3] = &off_10EE8;
  v17[2] = &off_11338;
  v17[3] = &off_11348;
  v16[4] = &off_10F00;
  v17[4] = &off_11358;
  v3 = [NSDictionary dictionaryWithObjects:v17 forKeys:v16 count:5];
  [v2 scaledValue:v3 withOverrides:12.5];
  v5 = v4;

  v15[0] = &off_11368;
  v15[1] = &off_11378;
  v14[0] = &off_10EA0;
  v14[1] = &off_10EB8;
  v14[2] = &off_10ED0;
  v14[3] = &off_10EE8;
  v15[2] = &off_11388;
  v15[3] = &off_11398;
  v14[4] = &off_10F00;
  v15[4] = &off_113A8;
  v6 = [NSDictionary dictionaryWithObjects:v15 forKeys:v14 count:5];
  [v2 scaledValue:v6 withOverrides:86.5];

  v12[0] = &off_10EA0;
  v12[1] = &off_10ED0;
  v13[0] = &off_113B8;
  v13[1] = &off_113C8;
  v7 = [NSDictionary dictionaryWithObjects:v13 forKeys:v12 count:2];
  [v2 scaledValue:v7 withOverrides:180.0];

  v10[0] = &off_10EA0;
  v10[1] = &off_10EB8;
  v11[0] = &off_113D8;
  v11[1] = &off_113D8;
  v10[2] = &off_10ED0;
  v11[2] = &off_113E8;
  v8 = [NSDictionary dictionaryWithObjects:v11 forKeys:v10 count:3];
  [v2 scaledValue:v8 withOverrides:7.5];

  return v5;
}