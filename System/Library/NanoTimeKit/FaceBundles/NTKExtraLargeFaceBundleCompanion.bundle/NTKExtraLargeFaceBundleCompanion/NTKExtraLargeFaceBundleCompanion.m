void sub_146C(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (![*(a1 + 32) isRunningNapiliGMOrLater])
  {
    goto LABEL_18;
  }

  if (a3 > 2)
  {
    switch(a3)
    {
      case 3:
        v6 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:16 zOrder:4000];
        v22[0] = v6;
        v7 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:2 zOrder:4000];
        v22[1] = v7;
        v8 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:5 zOrder:4000];
        v22[2] = v8;
        v9 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:12 zOrder:4000];
        v22[3] = v9;
        v10 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:13 zOrder:4000];
        v22[4] = v10;
        v11 = v22;
        goto LABEL_14;
      case 4:
        v20 = NTKComplicationSlotCenter;
        v21 = &off_10B78;
        v15 = [NSDictionary dictionaryWithObjects:&v21 forKeys:&v20 count:1];
        [v5 _setFaceGalleryComplicationTypesForSlots:v15];

        v6 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:2 zOrder:4000];
        v19[0] = v6;
        v7 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:5 zOrder:4000];
        v19[1] = v7;
        v8 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:12 zOrder:4000];
        v19[2] = v8;
        v9 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:13 zOrder:4000];
        v19[3] = v9;
        v13 = v19;
        break;
      case 5:
        v17 = NTKComplicationSlotCenter;
        v18 = &off_10B90;
        v12 = [NSDictionary dictionaryWithObjects:&v18 forKeys:&v17 count:1];
        [v5 _setFaceGalleryComplicationTypesForSlots:v12];

        v6 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:2 zOrder:4000];
        v7 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:5 zOrder:4000, v6];
        v16[1] = v7;
        v8 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:12 zOrder:4000];
        v16[2] = v8;
        v9 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:13 zOrder:4000];
        v16[3] = v9;
        v13 = v16;
        break;
      default:
        goto LABEL_18;
    }

LABEL_16:
    v10 = [NSArray arrayWithObjects:v13 count:4];
    [v5 setCurationPlacements:v10];
    goto LABEL_17;
  }

  switch(a3)
  {
    case 0:
      v6 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:2 zOrder:7000];
      v25[0] = v6;
      v7 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:5 zOrder:4000];
      v25[1] = v7;
      v8 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:12 zOrder:4000];
      v25[2] = v8;
      v9 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:13 zOrder:4000];
      v25[3] = v9;
      v13 = v25;
      goto LABEL_16;
    case 1:
      v6 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:13 zOrder:4000];
      v24[0] = v6;
      v7 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:2 zOrder:4000];
      v24[1] = v7;
      v8 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:5 zOrder:4000];
      v24[2] = v8;
      v9 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:16 zOrder:4000];
      v24[3] = v9;
      v10 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:12 zOrder:4000];
      v24[4] = v10;
      v11 = v24;
      goto LABEL_14;
    case 2:
      v6 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:16 zOrder:8000];
      v23[0] = v6;
      v7 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:2 zOrder:4000];
      v23[1] = v7;
      v8 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:5 zOrder:4000];
      v23[2] = v8;
      v9 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:12 zOrder:4000];
      v23[3] = v9;
      v10 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:13 zOrder:4000];
      v23[4] = v10;
      v11 = v23;
LABEL_14:
      v14 = [NSArray arrayWithObjects:v11 count:5];
      [v5 setCurationPlacements:v14];

LABEL_17:
      break;
  }

LABEL_18:
}

id sub_35C8(uint64_t a1)
{
  [*(a1 + 32) invalidateComplicationLayout];
  [*(a1 + 32) setNeedsLayout];
  [*(a1 + 32) layoutIfNeeded];
  v2 = *(a1 + 32);

  return [v2 layoutComplicationViews];
}

id sub_3F50(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) _complicationView];
  if ([v5 isMulticolor] && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = v7;
    v9 = [*(a1 + 32) device];
    if (v6)
    {
      v10 = [NTKFaceColorScheme colorSchemeForDevice:v9 withFaceColorPalette:v5 foregroundColor:v6 units:1 alternateHighlight:0];
    }

    else
    {
      v11 = [v8 overrideColor];
      v10 = [NTKFaceColorScheme colorSchemeForDevice:v9 withFaceColorPalette:v5 foregroundColor:v11 units:1 alternateHighlight:0];
    }
  }

  else
  {
    v8 = [*(a1 + 32) device];
    v10 = [NTKFaceColorScheme colorSchemeForDevice:v8 withFaceColorPalette:v5 units:1];
  }

  return v10;
}

double sub_4DF8(uint64_t a1, void *a2)
{
  v3 = a2;
  os_unfair_lock_lock(&unk_15C20);
  if (qword_15C28)
  {
    v4 = qword_15C28 == v3;
  }

  else
  {
    v4 = 0;
  }

  if (!v4 || (v5 = [v3 version], v5 != qword_15C30))
  {
    qword_15C28 = v3;
    qword_15C30 = [v3 version];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_4F2C;
    v10[3] = &unk_104A0;
    v10[4] = *(a1 + 32);
    qword_15C08 = sub_4F2C(v10);
    qword_15C10 = v6;
    qword_15C18 = v7;
  }

  v8 = *&qword_15C08;
  os_unfair_lock_unlock(&unk_15C20);

  return v8;
}

double sub_4F2C(uint64_t a1)
{
  [*(a1 + 32) _loadLayoutRules];
  [*(a1 + 32) bounds];
  v2 = [*(a1 + 32) complicationLayoutforSlot:NTKComplicationSlotCenter];
  v3 = [v2 defaultLayoutRuleForState:0];
  [v3 referenceFrame];
  CGRectGetMidY(v5);

  return 0.0;
}

void sub_5B50(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = [a3 display];
  if ([v4 conformsToProtocol:&OBJC_PROTOCOL___CDRichComplicationTintedPlatterColorOverridable])
  {
    [v4 setTintedFraction:*(a1 + 32)];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v4 transitionToMonochromeWithFraction:*(a1 + 40)];
  }
}

void sub_64DC(id a1, NTKFaceViewController *a2)
{
  v2 = a2;
  [(NTKFaceViewController *)v2 setDataMode:3];
  [(NTKFaceViewController *)v2 setShowsCanonicalContent:1];
  [(NTKFaceViewController *)v2 setShowContentForUnadornedSnapshot:1];
  [(NTKFaceViewController *)v2 setShowsLockedUI:0];
  [(NTKFaceViewController *)v2 setIgnoreSnapshotImages:1];
  [(NTKFaceViewController *)v2 setShouldUseSampleTemplate:1];
}

void sub_6A8C(void *a1@<X1>, uint64_t a2@<X8>)
{
  v8 = a1;
  os_unfair_lock_lock(&unk_15CA0);
  if (qword_15CA8)
  {
    v3 = qword_15CA8 == v8;
  }

  else
  {
    v3 = 0;
  }

  if (!v3 || (v4 = [v8 version], v4 != qword_15CB0))
  {
    qword_15CA8 = v8;
    qword_15CB0 = [v8 version];
    sub_6B90(v8, v9);
    xmmword_15C78 = v9[4];
    unk_15C88 = v9[5];
    qword_15C98 = v10;
    xmmword_15C38 = v9[0];
    unk_15C48 = v9[1];
    xmmword_15C58 = v9[2];
    unk_15C68 = v9[3];
  }

  v5 = unk_15C88;
  *(a2 + 64) = xmmword_15C78;
  *(a2 + 80) = v5;
  *(a2 + 96) = qword_15C98;
  v6 = unk_15C48;
  *a2 = xmmword_15C38;
  *(a2 + 16) = v6;
  v7 = unk_15C68;
  *(a2 + 32) = xmmword_15C58;
  *(a2 + 48) = v7;
  os_unfair_lock_unlock(&unk_15CA0);
}

void sub_6B90(void *a1@<X1>, uint64_t a2@<X8>)
{
  v3 = a1;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 80) = 0u;
  *(a2 + 96) = 0;
  v4 = [CLKDeviceMetrics metricsWithDevice:v3 identitySizeClass:2];
  v50[0] = &off_108E8;
  v50[1] = &off_10900;
  v51[0] = &off_10D78;
  v51[1] = &off_10D88;
  v50[2] = &off_10918;
  v50[3] = &off_10930;
  v51[2] = &off_10D98;
  v51[3] = &off_10DA8;
  v50[4] = &off_10948;
  v50[5] = &off_10960;
  v51[4] = &off_10DB8;
  v51[5] = &off_10DC8;
  v5 = [NSDictionary dictionaryWithObjects:v51 forKeys:v50 count:6];
  [v4 scaledValue:v5 withOverrides:55.0];
  v7 = v6;
  *(a2 + 80) = v6;

  [v3 sizeClass];
  if (CLKDeviceCategoryForSizeClass() < 5)
  {
    v44[0] = &off_108E8;
    v44[1] = &off_10900;
    v45[0] = &off_10E18;
    v45[1] = &off_10E28;
    v44[2] = &off_10918;
    v44[3] = &off_10930;
    v45[2] = &off_10E38;
    v45[3] = &off_10E48;
    v17 = [NSDictionary dictionaryWithObjects:v45 forKeys:v44 count:4];
    [v4 scaledValue:v17 withOverrides:13.5];
    *(a2 + 16) = v18;

    v42[0] = &off_108E8;
    v42[1] = &off_10900;
    v43[0] = &off_10E58;
    v43[1] = &off_10E68;
    v42[2] = &off_10918;
    v42[3] = &off_10990;
    v43[2] = &off_10E78;
    v43[3] = &off_10E88;
    v42[4] = &off_10930;
    v43[4] = &off_10DC8;
    v19 = [NSDictionary dictionaryWithObjects:v43 forKeys:v42 count:5];
    [v4 scaledValue:v19 withOverrides:58.0];
    *(a2 + 24) = v20;

    v40[0] = &off_108E8;
    v40[1] = &off_10918;
    v41[0] = &off_10E98;
    v41[1] = &off_10EA8;
    v40[2] = &off_109A8;
    v40[3] = &off_10990;
    v41[2] = &off_10EB8;
    v41[3] = &off_10EC8;
    v40[4] = &off_10930;
    v41[4] = &off_10EC8;
    v21 = [NSDictionary dictionaryWithObjects:v41 forKeys:v40 count:5];
    [v4 scaledValue:v21 withOverrides:135.0];
    v12 = v22;
  }

  else
  {
    v48[0] = &off_10948;
    v48[1] = &off_10960;
    v49[0] = &off_10DD8;
    v49[1] = &off_10DE8;
    v8 = [NSDictionary dictionaryWithObjects:v49 forKeys:v48 count:2];
    [v4 scaledValue:v8 withOverrides:7.0];
    v10 = v9;

    CDGraphicExtraLargeComplicationContentDiameter();
    v12 = v11 + v10 * 2.0;
    [v3 screenBounds];
    *(a2 + 16) = (v13 - v12) * 0.5;
    v46[0] = &off_10948;
    v46[1] = &off_10960;
    v47[0] = &off_10DF8;
    v47[1] = &off_10DF8;
    v46[2] = &off_10978;
    v47[2] = &off_10E08;
    v14 = [NSDictionary dictionaryWithObjects:v47 forKeys:v46 count:3];
    [v4 scaledValue:v14 withOverrides:9.5];
    v16 = v15;

    *(a2 + 24) = v7 + v16 - v10;
  }

  *(a2 + 32) = v12;
  *(a2 + 40) = v12;
  v38[0] = &off_108E8;
  v38[1] = &off_10900;
  v39[0] = &off_10ED8;
  v39[1] = &off_10ED8;
  v38[2] = &off_10918;
  v39[2] = &off_10EE8;
  v23 = [NSDictionary dictionaryWithObjects:v39 forKeys:v38 count:3];
  [v4 scaledValue:v23 withOverrides:23.0];
  *(a2 + 48) = v24;

  v36[0] = &off_108E8;
  v36[1] = &off_10900;
  v37[0] = &off_10EF8;
  v37[1] = &off_10F08;
  v36[2] = &off_10918;
  v37[2] = &off_10F18;
  v25 = [NSDictionary dictionaryWithObjects:v37 forKeys:v36 count:3];
  [v4 scaledValue:v25 withOverrides:2.5];
  *(a2 + 56) = v26;

  *(a2 + 64) = 0x401E000000000000;
  v34[0] = &off_108E8;
  v34[1] = &off_10900;
  v35[0] = &off_10EF8;
  v35[1] = &off_10F08;
  v34[2] = &off_10918;
  v34[3] = &off_109A8;
  v35[2] = &off_10F18;
  v35[3] = &off_10F28;
  v34[4] = &off_10990;
  v34[5] = &off_10930;
  v35[4] = &off_10F18;
  v35[5] = &off_10F18;
  v27 = [NSDictionary dictionaryWithObjects:v35 forKeys:v34 count:6];
  [v4 constantValue:v27 withOverrides:2.5];
  *(a2 + 72) = v28;

  v32[0] = &off_108E8;
  v32[1] = &off_10918;
  v33[0] = &off_10F38;
  v33[1] = &off_10F48;
  v29 = [NSDictionary dictionaryWithObjects:v33 forKeys:v32 count:2];
  [v4 scaledValue:v29 withOverrides:63.0];
  *(a2 + 88) = v30;

  [v3 screenBounds];
  +[NTKGossamerColorPalette contentScaleForTintedBackground];
  CLKFloorForDevice();
  *(a2 + 96) = v31;
}