void sub_1688(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [NTKFace defaultFaceOfStyle:6 forDevice:*(a1 + 32)];
  v7 = v6;
  if (v6)
  {
    [v6 selectOption:v5 forCustomEditMode:12 slot:0];
    v8 = +[NTKMotionFaceBundle complicationTypesBySlot];
    v9 = [v8 mutableCopy];

    v10 = NTKComplicationSlotDate;
    v11 = [v9 objectForKeyedSubscript:v10];
    v12 = [v11 firstObject];
    v13 = [v12 unsignedIntegerValue];

    [v9 removeObjectForKey:v10];
    [v7 _setFaceGalleryComplicationTypesForSlots:v9];
    v14 = [NTKDateComplication complicationWithDateStyle:v13];
    [v7 setComplication:v14 forSlot:v10];

    if (a3 == 2)
    {
      v15 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:19 zOrder:4000];
      v19 = v15;
      v16 = &v19;
    }

    else if (a3 == 1)
    {
      v15 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:19 zOrder:9000];
      v20 = v15;
      v16 = &v20;
    }

    else
    {
      if (a3)
      {
LABEL_9:
        [*(a1 + 40) addObject:v7];

        goto LABEL_10;
      }

      v15 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:19 zOrder:4000];
      v21 = v15;
      v16 = &v21;
    }

    v17 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:2 zOrder:4000];
    v16[1] = v17;
    v18 = [NSArray arrayWithObjects:v16 count:2];
    [v7 setCurationPlacements:v18];

    goto LABEL_9;
  }

LABEL_10:
}

id sub_19A0(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&unk_CA10);
  if (qword_CA18)
  {
    v3 = qword_CA18 == v2;
  }

  else
  {
    v3 = 0;
  }

  if (!v3 || (v4 = [v2 version], v4 != qword_CA20))
  {
    qword_CA18 = v2;
    qword_CA20 = [v2 version];
    v5 = qword_CA08;
    qword_CA08 = &off_8990;
  }

  v6 = qword_CA08;
  os_unfair_lock_unlock(&unk_CA10);

  return v6;
}

void sub_1B74(id a1)
{
  v3[0] = &off_8838;
  v3[1] = &off_8850;
  v4[0] = NTKFaceBundleThemeButterfly;
  v4[1] = NTKFaceBundleThemeFlower;
  v3[2] = &off_8868;
  v4[2] = NTKFaceBundleThemeJellyfish;
  v1 = [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:3];
  v2 = qword_CA28;
  qword_CA28 = v1;
}

void sub_1ECC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id sub_1F04(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained _complicationForegroundColor];

  return v2;
}

double sub_1F50(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = 0.0;
  if ([WeakRetained _shouldAdjustLayoutForTimeTravel])
  {
    [WeakRetained _timeTravelYAdjustment];
    v2 = v3;
  }

  return v2;
}

void sub_302C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_304C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained videoPlayerView];
    v4 = [v2 currentListing];
    v5 = [v4 video];
    if (!v5)
    {
      v6 = _NTKLoggingObjectForDomain();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_335C(v4, v6);
      }
    }

    [v3 loadVideo:v5];
    if (([v2 paused] & 1) == 0)
    {
      [v3 play];
    }

    v7 = [v2 posterImageView];
    [v7 setHidden:1];
  }
}

void sub_335C(void *a1, NSObject *a2)
{
  v4 = 136315906;
  v5 = "[NTKVideoFaceView _handleTapToPlayVideoGesture:]_block_invoke";
  v6 = 2048;
  v7 = [a1 theme];
  v8 = 2048;
  v9 = [a1 variant];
  v10 = 2048;
  v11 = [a1 clip];
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "%s — Video listing video is nil for theme (%lu) variant (%lu) clip (%lu)", &v4, 0x2Au);
}