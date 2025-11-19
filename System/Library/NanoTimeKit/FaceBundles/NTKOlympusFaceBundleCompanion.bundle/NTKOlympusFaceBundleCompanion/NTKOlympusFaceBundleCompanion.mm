void sub_398C(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + 32);
  v4 = a3;
  CLKInterpolateBetweenFloatsClipped();
  [v4 setAlpha:?];
}

void sub_40B0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [v4 display];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    CGAffineTransformMakeScale(&v8, *(a1 + 32), *(a1 + 32));
    [v4 setContentTransform:&v8];
    v7 = [v4 display];
    [v7 updateMonochromeColor];
  }
}

void sub_41E4(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  v6 = [v5 display];
  if ([v6 conformsToProtocol:&OBJC_PROTOCOL___NTKUtilityFlatComplicationView])
  {
    v7 = [v8 isEqualToString:NTKComplicationSlotBezel];

    if (!v7)
    {
      goto LABEL_5;
    }

    v6 = [v5 display];
    [v6 setForegroundColor:*(a1 + 32)];
  }

LABEL_5:
}

double sub_52F8(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&unk_15B40);
  if (qword_15B48)
  {
    v3 = qword_15B48 == v2;
  }

  else
  {
    v3 = 0;
  }

  if (v3 && (v4 = [v2 version], v4 == qword_15B50))
  {
    v5 = qword_15B28;
  }

  else
  {
    qword_15B48 = v2;
    qword_15B50 = [v2 version];
    v5 = sub_53E0(qword_15B50, v2);
    qword_15B28 = v5;
    qword_15B30 = v6;
    qword_15B38 = v7;
  }

  os_unfair_lock_unlock(&unk_15B40);

  return *&v5;
}

double sub_53E0(uint64_t a1, uint64_t a2)
{
  v2 = [CLKDeviceMetrics metricsWithDevice:a2 identitySizeClass:2];
  [v2 scaledValue:3 withOverride:133.0 forSizeClass:151.0];
  v4 = v3;
  [v2 scaledValue:3 withOverride:155.0 forSizeClass:176.0];
  [v2 scaledValue:3 withOverride:162.0 forSizeClass:184.0];

  return v4;
}

id sub_549C(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&unk_15B60);
  if (qword_15B68)
  {
    v3 = qword_15B68 == v2;
  }

  else
  {
    v3 = 0;
  }

  if (!v3 || (v4 = [v2 version], v4 != qword_15B70))
  {
    qword_15B68 = v2;
    qword_15B70 = [v2 version];
    v5 = qword_15B58;
    qword_15B58 = &off_10B40;
  }

  v6 = qword_15B58;
  os_unfair_lock_unlock(&unk_15B60);

  return v6;
}

void sub_573C(id a1, NTKFace *a2, unint64_t a3, BOOL *a4)
{
  v5 = a2;
  if (a3 <= 2)
  {
    if (!a3)
    {
      v8 = [NTKComplication anyComplicationOfType:1];
      [(NTKFace *)v5 setComplication:v8 forSlot:NTKComplicationSlotBezel];

      v6 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:20 zOrder:4000];
      v16 = v6;
      v7 = &v16;
      goto LABEL_11;
    }

    if (a3 != 1)
    {
      if (a3 != 2)
      {
        goto LABEL_15;
      }

      goto LABEL_9;
    }

    v10 = [NTKComplication anyComplicationOfType:8];
    [(NTKFace *)v5 setComplication:v10 forSlot:NTKComplicationSlotBezel];

    v6 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:20 zOrder:4000];
    v15 = v6;
    v7 = &v15;
LABEL_13:
    v9 = 2;
    goto LABEL_14;
  }

  if (a3 - 3 < 2)
  {
    v6 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:20 zOrder:4000];
    v13 = v6;
    v7 = &v13;
    goto LABEL_13;
  }

  if (a3 == 5)
  {
LABEL_9:
    v6 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:20 zOrder:4000];
    v14 = v6;
    v7 = &v14;
LABEL_11:
    v9 = 3;
LABEL_14:
    v11 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:v9 zOrder:4000];
    v7[1] = v11;
    v12 = [NSArray arrayWithObjects:v7 count:2];
    [(NTKFace *)v5 setCurationPlacements:v12];
  }

LABEL_15:
}

void sub_65F4(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v5 = [v4 _colorOptionFromColorValue:30 device:*(a1 + 40)];
  v9 = [v4 _olympusFaceWithStyle:a2 dial:0 colorOption:v5 complicationTypesBySlot:*(a1 + 48) forDevice:*(a1 + 40)];

  if (v9)
  {
    [*(a1 + 56) addObject:v9];
  }

  v6 = *(a1 + 32);
  v7 = [v6 _colorOptionFromColorValue:30 device:*(a1 + 40)];
  v8 = [v6 _olympusFaceWithStyle:a2 dial:1 colorOption:v7 complicationTypesBySlot:*(a1 + 48) forDevice:*(a1 + 40)];

  if (v8)
  {
    [*(a1 + 56) addObject:v8];
  }
}

uint64_t sub_68A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = [*(a1 + 32) _olympusFaceWithStyle:a2 dial:a3 colorOption:a4 complicationTypesBySlot:*(a1 + 40) forDevice:*(a1 + 48)];
  if (v5)
  {
    [*(a1 + 56) addObject:v5];
  }

  return _objc_release_x1();
}