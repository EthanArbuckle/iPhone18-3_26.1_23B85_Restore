void sub_2358(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = 0;
  if (a3 > 2)
  {
    if (a3 == 3)
    {
      if ([*(a1 + 32) supportsUrsa])
      {
        v6 = +[NTKComplication compassComplication];
        v7 = +[NTKComplication elevationComplication];
        v8 = +[NTKComplication waypointsComplication];
      }

      else
      {
        v7 = [NTKComplication anyComplicationOfType:8];
        v8 = [NTKComplication anyComplicationOfType:22];
        v6 = 0;
      }

      v9 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:16 zOrder:4000];
      v22 = v9;
      v10 = &v22;
    }

    else if (a3 == 4)
    {
      if ([*(a1 + 32) supportsCharon])
      {
        v6 = +[NTKComplication waterTemperatureComplication];
        v7 = +[NTKComplication tidesComplication];
        v8 = +[NTKComplication depthComplication];
      }

      else
      {
        v16 = +[NTKComplication stateOfMindComplication];
        v17 = +[NTKComplication calendarTimelineComplication];
        v18 = +[NTKComplication monthlyHikingDistanceComplication];
        v6 = 0;
        v7 = 0;
        v8 = 0;
      }

      v9 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:16 zOrder:4000];
      v21 = v9;
      v10 = &v21;
    }

    else
    {
      v7 = 0;
      v8 = 0;
      if (a3 != 5)
      {
        goto LABEL_32;
      }

      if ([*(a1 + 32) supportsCharon])
      {
        v6 = +[NTKComplication waterTemperatureComplication];
        v7 = +[NTKComplication compassBearingComplication];
        +[NTKComplication depthComplication];
      }

      else
      {
        v6 = [NTKComplication anyComplicationOfType:10];
        v7 = [NTKComplication anyComplicationOfType:8];
        +[NTKComplication rainComplication];
      }
      v8 = ;
      v9 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:16 zOrder:4000];
      v20 = v9;
      v10 = &v20;
    }

    goto LABEL_23;
  }

  if (!a3)
  {
    v6 = [NTKComplication anyComplicationOfType:1];
    v7 = [NTKComplication anyComplicationOfType:43];
    v8 = +[NTKComplication weatherLocationComplication];
    v9 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:7 zOrder:4000];
    v25 = v9;
    v10 = &v25;
LABEL_23:
    v11 = 2;
LABEL_24:
    v19 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:v11 zOrder:4000, v20];
    v10[1] = v19;
    v15 = [NSArray arrayWithObjects:v10 count:2];

    if (v6)
    {
      [v5 setComplication:v6 forSlot:NTKComplicationSlotTopLeft];
    }

    goto LABEL_26;
  }

  if (a3 != 1)
  {
    v7 = 0;
    v8 = 0;
    if (a3 != 2)
    {
      goto LABEL_32;
    }

    v6 = [NTKComplication anyComplicationOfType:1];
    v7 = +[NTKComplication translateComplication];
    v8 = [NTKComplication anyComplicationOfType:5];
    v9 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:2 zOrder:4000];
    v23 = v9;
    v10 = &v23;
    v11 = 7;
    goto LABEL_24;
  }

  v7 = [NTKComplication anyComplicationOfType:15];
  v8 = +[NTKComplication vitalsComplication];
  v12 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:7 zOrder:7000];
  v24[0] = v12;
  v13 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:9 zOrder:4000];
  v24[1] = v13;
  v14 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:2 zOrder:4000];
  v24[2] = v14;
  v15 = [NSArray arrayWithObjects:v24 count:3];

  v6 = 0;
LABEL_26:
  if (v7)
  {
    [v5 setComplication:v7 forSlot:NTKComplicationSlotCenter];
  }

  if (v8)
  {
    [v5 setComplication:v8 forSlot:NTKComplicationSlotBottom];
  }

  if (v15)
  {
    [v5 setCurationPlacements:v15];
  }

LABEL_32:
}

id _complicationOrDie(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = v1;
  }

  else
  {
    v3 = +[NTKComplication nullComplication];
  }

  v4 = v3;

  return v4;
}

void sub_2888(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_2944;
  v6[3] = &unk_8338;
  v7 = [v3 copy];
  v5 = v7;
  [v4 enumerateKeysAndObjectsUsingBlock:v6];

  [*(a1 + 40) addObject:v5];
}

void sub_35D4(uint64_t a1, uint64_t a2)
{
  v5 = [*(a1 + 32) normalComplicationDisplayWrapperForSlot:a2];
  v3 = [v5 display];
  v4 = v3;
  if (*(a1 + 48) == 1)
  {
    [v3 transitionToMonochromeWithFraction:*(a1 + 40)];
  }

  else
  {
    [v3 updateMonochromeColor];
  }
}

void sub_3C20(uint64_t a1, uint64_t a2)
{
  v4 = 72;
  if ((a2 & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    v4 = 48;
  }

  v5 = *(a1 + v4);
  v6 = *(a1 + 64);
  v7 = *(a1 + 128);
  v8 = *(a1 + 32);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v12 = *(a1 + 152);
  v32 = *(a1 + 136);
  v33 = v12;
  v34 = *(a1 + 168);
  if ((a2 & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    v13 = 88;
  }

  else
  {
    v13 = 80;
  }

  v14 = [NTKComplicationLayoutRule layoutRuleForDevice:v8 withReferenceFrame:3 horizontalLayout:3 verticalLayout:0 keylinePadding:&v32 clip:v5 contentTransform:v6, v7, v7, UIEdgeInsetsZero.top, left, bottom, right];
  v15 = [*(a1 + 40) complicationLayoutforSlot:{NTKComplicationSlotTopLeft, v32, v33, v34}];
  [v15 setDefaultLayoutRule:v14 forState:a2];

  v16 = *(a1 + 184) + *(a1 + 192);
  v17 = *(a1 + 200);
  v18 = *(a1 + 208);
  v19 = *(a1 + 216);
  v20 = v6 + v16 * v17;
  v21 = *(a1 + 48);
  v22 = *(a1 + v13) + v20 + v16 * (1.0 - v17) * 0.5 - v19 * (1.0 - v17) * 0.5;
  v23 = *(a1 + 32);
  v24 = *(a1 + 152);
  v32 = *(a1 + 136);
  v33 = v24;
  v34 = *(a1 + 168);
  v25 = [NTKComplicationLayoutRule layoutRuleForDevice:v23 withReferenceFrame:3 horizontalLayout:3 verticalLayout:0 keylinePadding:&v32 clip:v21 contentTransform:v22, v18, v19, UIEdgeInsetsZero.top, left, bottom, right];
  v26 = [*(a1 + 40) complicationLayoutforSlot:NTKComplicationSlotCenter];
  [v26 setDefaultLayoutRule:v25 forState:a2];

  v27 = v22 + v19 * *(a1 + 200) + *(a1 + v13);
  v28 = *(a1 + 32);
  v29 = *(a1 + 152);
  v32 = *(a1 + 136);
  v33 = v29;
  v34 = *(a1 + 168);
  v30 = [NTKComplicationLayoutRule layoutRuleForDevice:v28 withReferenceFrame:3 horizontalLayout:3 verticalLayout:0 keylinePadding:&v32 clip:v21 contentTransform:v27, v18, v19, UIEdgeInsetsZero.top, left, bottom, right];
  v31 = [*(a1 + 40) complicationLayoutforSlot:NTKComplicationSlotBottom];
  [v31 setDefaultLayoutRule:v30 forState:a2];
}

void sub_41EC(void *a1@<X1>, uint64_t a2@<X8>)
{
  v7 = a1;
  os_unfair_lock_lock(&unk_C818);
  if (qword_C820)
  {
    v3 = qword_C820 == v7;
  }

  else
  {
    v3 = 0;
  }

  if (!v3 || (v4 = [v7 version], v4 != qword_C828))
  {
    qword_C820 = v7;
    qword_C828 = [v7 version];
    sub_42DC(v7, v8);
    xmmword_C7F0 = v8[2];
    unk_C800 = v8[3];
    qword_C810 = v9;
    xmmword_C7D0 = v8[0];
    unk_C7E0 = v8[1];
  }

  v5 = unk_C800;
  *(a2 + 32) = xmmword_C7F0;
  *(a2 + 48) = v5;
  *(a2 + 64) = qword_C810;
  v6 = unk_C7E0;
  *a2 = xmmword_C7D0;
  *(a2 + 16) = v6;
  os_unfair_lock_unlock(&unk_C818);
}

void sub_42DC(void *a1@<X1>, uint64_t a2@<X8>)
{
  *(a2 + 64) = 0;
  v3 = a1;
  v4 = [CLKDeviceMetrics metricsWithDevice:v3 identitySizeClass:4];
  [v4 setRoundingBehavior:0];
  v39[0] = &off_8AE8;
  v39[1] = &off_8B00;
  v40[0] = &off_8E40;
  v40[1] = &off_8E40;
  v39[2] = &off_8B18;
  v39[3] = &off_8B30;
  v40[2] = &off_8E40;
  v40[3] = &off_8E40;
  v39[4] = &off_8B48;
  v40[4] = &off_8E40;
  v5 = [NSDictionary dictionaryWithObjects:v40 forKeys:v39 count:5];
  [v4 scaledValue:v5 withOverrides:0.9434];
  v7 = v6;
  *a2 = v6;

  [v4 setRoundingBehavior:1];
  NTKWhistlerSubdialComplicationDiameter();
  v9 = v8;
  NTKWhistlerSubdialComplicationContentDiameter();
  v11 = (v9 - v10) * 0.5;
  NTKWhistlerSubdialComplicationContentDiameter();
  v13 = v12;

  v14 = (v13 - v7 * v13) * 0.5;
  v15 = 12.0 - v11 - v14;
  *(a2 + 8) = v15;
  [v4 scaledValue:8.0];
  *(a2 + 16) = v16 - v11 - v14;
  v37[0] = &off_8AE8;
  v37[1] = &off_8B00;
  v38[0] = &off_8E50;
  v38[1] = &off_8E50;
  v37[2] = &off_8B18;
  v37[3] = &off_8B30;
  v38[2] = &off_8E50;
  v38[3] = &off_8E50;
  v37[4] = &off_8B48;
  v38[4] = &off_8E50;
  v17 = [NSDictionary dictionaryWithObjects:v38 forKeys:v37 count:5];
  [v4 scaledValue:v17 withOverrides:5.5];
  v19 = v18;
  *(a2 + 24) = v18;

  v35[0] = &off_8B60;
  v35[1] = &off_8B00;
  v36[0] = &off_8E60;
  v36[1] = &off_8E60;
  v35[2] = &off_8B18;
  v35[3] = &off_8B30;
  v36[2] = &off_8E60;
  v36[3] = &off_8E60;
  v35[4] = &off_8B48;
  v36[4] = &off_8E60;
  v20 = [NSDictionary dictionaryWithObjects:v36 forKeys:v35 count:5];
  [v4 constantValue:v20 withOverrides:1.0];
  v22 = v21;

  *(a2 + 32) = v19 - v22;
  v33[0] = &off_8B00;
  v33[1] = &off_8B18;
  v34[0] = &off_8E70;
  v34[1] = &off_8E80;
  v33[2] = &off_8B30;
  v33[3] = &off_8B48;
  v34[2] = &off_8E90;
  v34[3] = &off_8E70;
  v23 = [NSDictionary dictionaryWithObjects:v34 forKeys:v33 count:4];
  [v4 scaledValue:v23 withOverrides:8.0];
  *(a2 + 40) = v24;

  *(a2 + 48) = v13 * 0.5 + v15 + 2.0;
  v31[0] = &off_8AE8;
  v31[1] = &off_8B00;
  v32[0] = &off_8EA0;
  v32[1] = &off_8EA0;
  v31[2] = &off_8B18;
  v31[3] = &off_8B30;
  v32[2] = &off_8EA0;
  v32[3] = &off_8EA0;
  v31[4] = &off_8B48;
  v32[4] = &off_8EA0;
  v25 = [NSDictionary dictionaryWithObjects:v32 forKeys:v31 count:5];
  [v4 scaledValue:v25 withOverrides:47.0];
  *(a2 + 56) = v26;

  v29[0] = &off_8AE8;
  v29[1] = &off_8B00;
  v30[0] = &off_8EB0;
  v30[1] = &off_8EB0;
  v29[2] = &off_8B18;
  v29[3] = &off_8B30;
  v30[2] = &off_8EC0;
  v30[3] = &off_8EC0;
  v29[4] = &off_8B48;
  v30[4] = &off_8EC0;
  v27 = [NSDictionary dictionaryWithObjects:v30 forKeys:v29 count:5];
  [v4 scaledValue:v27 withOverrides:44.0];
  *(a2 + 64) = v28;
}