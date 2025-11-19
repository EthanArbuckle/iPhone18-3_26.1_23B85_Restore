void sub_1A54(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 56));
  _Unwind_Resume(a1);
}

void sub_1A8C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if ([v5 count])
  {
    v8[1] = _NSConcreteStackBlock;
    v8[2] = 3221225472;
    v8[3] = sub_1BE4;
    v8[4] = &unk_488A0;
    objc_copyWeak(&v10, (a1 + 32));
    v9 = v5;
    AXPerformBlockOnMainThread();

    objc_destroyWeak(&v10);
  }

  objc_copyWeak(v8, (a1 + 32));
  v7 = v6;
  AXPerformBlockOnMainThread();

  objc_destroyWeak(v8);
}

void sub_1BE4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained availableAssets];
  if (!v3)
  {
LABEL_11:

    goto LABEL_12;
  }

  v4 = v3;
  v5 = objc_loadWeakRetained((a1 + 40));
  v6 = [v5 availableAssets];
  v7 = [v6 count];
  v8 = [*(a1 + 32) count];

  if (v7 != v8)
  {
LABEL_12:
    v23 = HCLogComfortSounds();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v24 = *(a1 + 32);
      v25 = objc_loadWeakRetained((a1 + 40));
      v26 = [v25 availableAssets];
      v29 = 138412546;
      v30 = v24;
      v31 = 2112;
      v32 = v26;
      _os_log_impl(&dword_0, v23, OS_LOG_TYPE_DEFAULT, "Found new assets %@\nOld assets: %@", &v29, 0x16u);
    }

    v27 = objc_loadWeakRetained((a1 + 40));
    [v27 setAvailableAssets:*(a1 + 32)];

    v28 = objc_loadWeakRetained((a1 + 40));
    [v28 reloadSpecifiers];

    return;
  }

  v9 = objc_loadWeakRetained((a1 + 40));
  v10 = [v9 availableAssets];
  v11 = [v10 count];

  if (v11)
  {
    v12 = 0;
    do
    {
      v13 = objc_loadWeakRetained((a1 + 40));
      v14 = [v13 availableAssets];
      WeakRetained = [v14 objectAtIndex:v12];

      v15 = [*(a1 + 32) objectAtIndex:v12];
      v16 = [WeakRetained assetId];
      v17 = [v15 assetId];
      if (([v16 isEqualToString:v17] & 1) == 0)
      {

        goto LABEL_11;
      }

      v18 = [WeakRetained isInstalled];
      v19 = v18 ^ [v15 isInstalled];

      if (v19)
      {
        goto LABEL_12;
      }

      ++v12;
      v20 = objc_loadWeakRetained((a1 + 40));
      v21 = [v20 availableAssets];
      v22 = [v21 count];
    }

    while (v22 > v12);
    if (v19)
    {
      goto LABEL_12;
    }
  }
}

void sub_1E78(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained downloadProgress];
  if ([v2 isEqualToDictionary:*(a1 + 32)])
  {
  }

  else
  {
    v3 = *(a1 + 32);

    if (!v3)
    {
      return;
    }

    WeakRetained = objc_loadWeakRetained((a1 + 40));
    [WeakRetained setDownloadProgress:*(a1 + 32)];
  }
}

void sub_1F24(uint64_t a1)
{
  objc_copyWeak(&v1, (a1 + 32));
  AXPerformBlockOnMainThread();
  objc_destroyWeak(&v1);
}

void sub_1FAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  objc_destroyWeak(va);
  _Unwind_Resume(a1);
}

void sub_1FC4(uint64_t a1)
{
  v2 = +[HUComfortSoundsSettings sharedInstance];
  v3 = [v2 selectedComfortSound];
  v4 = [v3 soundGroup];

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = [WeakRetained specifiers];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_20C8;
  v7[3] = &unk_488F0;
  v8[1] = v4;
  objc_copyWeak(v8, (a1 + 32));
  [v6 enumerateObjectsUsingBlock:v7];

  objc_destroyWeak(v8);
}

void sub_20C8(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v10 = a2;
  v6 = [v10 userInfo];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v6 soundGroup] == *(a1 + 40))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v8 = [WeakRetained getGroupSpecifierForSpecifier:v10];

    if ([v8 isRadioGroup])
    {
      [v8 setProperty:v10 forKey:PSRadioGroupCheckedSpecifierKey];
      v9 = objc_loadWeakRetained((a1 + 32));
      [v9 reloadSpecifier:v8];

      *a4 = 1;
    }
  }
}

void sub_2854(uint64_t a1, uint64_t a2)
{
  v3 = [HUComfortSound comfortSoundWithAsset:a2];
  [*(a1 + 32) hcSafeAddObject:v3];
}

void sub_28B4(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [v7 localizedName];
  v4 = [PSSpecifier preferenceSpecifierNamed:v3 target:*(a1 + 32) set:0 get:0 detail:0 cell:3 edit:0];

  [v4 setProperty:objc_opt_class() forKey:PSCellClassKey];
  [v4 setUserInfo:v7];
  v5 = *(a1 + 40);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [*(a1 + 40) soundGroup];
    if (v6 == [v7 soundGroup])
    {
      [*(a1 + 48) setProperty:v4 forKey:PSRadioGroupCheckedSpecifierKey];
    }
  }

  [*(a1 + 56) addObject:v4];
}

id sub_3048(uint64_t a1)
{
  v2 = HCLogComfortSounds();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v7 = 138412290;
    v8 = v3;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "Removing asset %@", &v7, 0xCu);
  }

  v4 = +[AXHAServer sharedInstance];
  v5 = [*(a1 + 32) asset];
  [v4 removeComfortSoundAsset:v5];

  return [*(a1 + 40) setAvailableAssets:0];
}

void sub_3DC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, id a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, id a49)
{
  objc_destroyWeak((v53 + 32));
  objc_destroyWeak((v52 + 32));
  objc_destroyWeak((v51 + 32));
  objc_destroyWeak((v50 + 32));
  objc_destroyWeak((v49 + 32));
  objc_destroyWeak((v54 + 32));
  objc_destroyWeak(&a44);
  objc_destroyWeak(&a49);
  objc_destroyWeak((v55 - 216));
  objc_destroyWeak((v55 - 176));
  objc_destroyWeak((v55 - 136));
  objc_destroyWeak((v55 - 128));
  _Unwind_Resume(a1);
}

void sub_3F20(uint64_t a1)
{
  objc_copyWeak(&v1, (a1 + 32));
  AXPerformBlockOnMainThread();
  objc_destroyWeak(&v1);
}

void sub_3FA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  objc_destroyWeak(va);
  _Unwind_Resume(a1);
}

void sub_3FC0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained reloadSpecifiers];
}

void sub_4000(uint64_t a1)
{
  objc_copyWeak(&v1, (a1 + 32));
  AXPerformBlockOnMainThread();
  objc_destroyWeak(&v1);
}

void sub_4088(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  objc_destroyWeak(va);
  _Unwind_Resume(a1);
}

void sub_40A0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained playingSample];

  if ((v3 & 1) == 0)
  {
    v4 = objc_loadWeakRetained((a1 + 32));
    [v4 reloadSpecifierID:@"CSFeatureToggleSpecID"];
  }
}

void sub_412C(uint64_t a1)
{
  objc_copyWeak(&v1, (a1 + 32));
  AXPerformBlockOnMainThread();
  objc_destroyWeak(&v1);
}

void sub_41B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  objc_destroyWeak(va);
  _Unwind_Resume(a1);
}

void sub_41CC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained reloadSpecifierID:@"CSRelativeVolumeSpecID"];
}

void sub_4214(uint64_t a1)
{
  objc_copyWeak(&v1, (a1 + 32));
  AXPerformBlockOnMainThread();
  objc_destroyWeak(&v1);
}

void sub_429C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  objc_destroyWeak(va);
  _Unwind_Resume(a1);
}

void sub_42B4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained reloadSpecifierID:@"CSMediaVolumeSpecID"];
}

void sub_42FC(uint64_t a1)
{
  objc_copyWeak(&v1, (a1 + 32));
  AXPerformBlockOnMainThread();
  objc_destroyWeak(&v1);
}

void sub_4384(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  objc_destroyWeak(va);
  _Unwind_Resume(a1);
}

void sub_439C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained playingSample];

  if ((v3 & 1) == 0)
  {
    v4 = objc_loadWeakRetained((a1 + 32));
    [v4 reloadSpecifierID:@"CSTimerSpecID"];
  }
}

void sub_4428(uint64_t a1)
{
  objc_copyWeak(&v1, (a1 + 32));
  AXPerformBlockOnMainThread();
  objc_destroyWeak(&v1);
}

void sub_44B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  objc_destroyWeak(va);
  _Unwind_Resume(a1);
}

void sub_44C8(uint64_t a1)
{
  v2 = +[HUComfortSoundsSettings sharedInstance];
  v3 = [v2 timerEnabled];

  if (v3)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained reloadSpecifierID:@"CSTimerSpecID"];
  }
}

void sub_455C(uint64_t a1)
{
  objc_copyWeak(&v1, (a1 + 32));
  AXPerformBlockOnMainThread();
  objc_destroyWeak(&v1);
}

void sub_45E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  objc_destroyWeak(va);
  _Unwind_Resume(a1);
}

void sub_45FC(uint64_t a1)
{
  v2 = +[HUComfortSoundsSettings sharedInstance];
  v3 = [v2 timerEnabled];

  if (v3)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained reloadSpecifierID:@"CSTimerSpecID"];
  }
}

void sub_4690(uint64_t a1)
{
  objc_copyWeak(&v1, (a1 + 32));
  AXPerformBlockOnMainThread();
  objc_destroyWeak(&v1);
}

void sub_4718(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  objc_destroyWeak(va);
  _Unwind_Resume(a1);
}

void sub_4730(uint64_t a1)
{
  v2 = +[HUComfortSoundsSettings sharedInstance];
  v3 = [v2 timerEnabled];

  if (v3)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained reloadSpecifierID:@"CSTimerSpecID"];
  }
}

void sub_47C4(uint64_t a1)
{
  objc_copyWeak(&v1, (a1 + 32));
  AXPerformBlockOnMainThread();
  objc_destroyWeak(&v1);
}

void sub_484C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  objc_destroyWeak(va);
  _Unwind_Resume(a1);
}

void sub_4864(uint64_t a1)
{
  v2 = +[HUComfortSoundsSettings sharedInstance];
  v3 = [v2 timerEnabled];

  if (v3)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained reloadSpecifierID:@"CSTimerSpecID"];
  }
}

void sub_48F8(uint64_t a1)
{
  objc_copyWeak(&v1, (a1 + 32));
  AXPerformBlockOnMainThread();
  objc_destroyWeak(&v1);
}

void sub_4980(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  objc_destroyWeak(va);
  _Unwind_Resume(a1);
}

void sub_4998(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained reloadSpecifierID:@"CSTinnitusFilterID"];
}

void sub_49E0(uint64_t a1)
{
  objc_copyWeak(&v1, (a1 + 32));
  AXPerformBlockOnMainThread();
  objc_destroyWeak(&v1);
}

void sub_4A68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  objc_destroyWeak(va);
  _Unwind_Resume(a1);
}

void sub_4A80(uint64_t a1)
{
  v2 = +[HUComfortSoundsSettings sharedInstance];
  v3 = [v2 tinnitusFilterEnabled];

  if (v3)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained reloadSpecifierID:@"CSTinnitusFilterID"];
  }
}

id sub_4B14(uint64_t a1, void *a2)
{
  if (a2)
  {
    return [a2 performSelector:"_updateComfortSoundsButtonForOneness" withObject:0 afterDelay:0.0];
  }

  return result;
}

id sub_5484()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = qword_57468;
  v7 = qword_57468;
  if (!qword_57468)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_64B8;
    v3[3] = &unk_48A48;
    v3[4] = &v4;
    sub_64B8(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_554C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_6400(uint64_t a1)
{
  if ([*(a1 + 32) playingSample])
  {
    v1 = +[AXHAServer sharedInstance];
    [v1 startComfortSoundsPreview];
  }
}

Class sub_64B8(uint64_t a1)
{
  v4[0] = 0;
  if (!qword_57470)
  {
    v4[1] = _NSConcreteStackBlock;
    v4[2] = 3221225472;
    v4[3] = sub_65FC;
    v4[4] = &unk_48A80;
    v4[5] = v4;
    v5 = off_48A68;
    v6 = 0;
    qword_57470 = _sl_dlopen();
    v2 = v4[0];
    if (qword_57470)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("AXSpringBoardServer");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_2CE54();
  }

  qword_57468 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_65FC(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_57470 = result;
  return result;
}

void sub_6FF4(uint64_t a1)
{
  v13 = [*(a1 + 32) availabilityLabel];
  v2 = hearingLocString();
  if ([*(*(a1 + 32) + 120) isPaired])
  {
    v3 = hearingLocString();

    v4 = +[AXHAServer sharedInstance];
    v5 = [v4 hearingAidReachable];

    if (v5)
    {
      v6 = hearingLocString();

      v7 = +[AXHAServer sharedInstance];
      v8 = [v7 connectedDeviceName];

      if ([v8 length])
      {
        v9 = hearingLocString();
        v10 = [NSString localizedStringWithFormat:v9, v8];

        v6 = v10;
      }

      v3 = v6;
    }

    v11 = [*(a1 + 32) valueLabel];
    v12 = [*(a1 + 32) detailString];
    [v11 setText:v12];

    v2 = v3;
  }

  [v13 setText:v2];
  [*(a1 + 32) updateTextColor];
  [*(a1 + 32) setNeedsLayout];
}

void sub_7D2C(uint64_t a1)
{
  v1 = *(a1 + 32);
  AXPerformBlockOnMainThread();
}

void sub_7DAC(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(a1 + 40))
  {
    *(v2 + 176) = 1;
    v3 = [*(a1 + 32) device];
    v4 = [v3 name];
    v5 = [*(a1 + 32) titleLabel];
    [v5 setText:v4];

    v6 = [*(a1 + 32) titleLabel];
    v7 = [v6 text];

    if (!v7)
    {
      v8 = hearingLocString();
      v9 = [*(a1 + 32) titleLabel];
      [v9 setText:v8];
    }

    v10 = *(a1 + 32);

    [v10 updateDetails];
  }

  else
  {
    *(v2 + 176) = 0;
    v11 = hearingLocString();
    v12 = [*(a1 + 32) titleLabel];
    [v12 setText:v11];

    v13 = [*(a1 + 32) detailTextLabel];
    [v13 setText:@" "];
  }
}

void sub_97E4(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = [PSSpecifier preferenceSpecifierNamed:v5 target:0 set:0 get:0 detail:objc_opt_class() cell:2 edit:0];

  [v7 setUserInfo:v6];
  [*(a1 + 32) addObject:v7];
}

void sub_99A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_99C8(uint64_t a1)
{
  objc_copyWeak(&v1, (a1 + 32));
  AXPerformBlockAsynchronouslyOnMainThread();
  objc_destroyWeak(&v1);
}

void sub_9A50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  objc_destroyWeak(va);
  _Unwind_Resume(a1);
}

void sub_9A68(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained reloadSpecifiers];
}

uint64_t sub_A0FC(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setCurrentDevicePSEVersion:a2];
  v4 = *(a1 + 32);
  return AXPerformBlockOnMainThread();
}

void sub_B6A4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v4 - 104));
  _Unwind_Resume(a1);
}

void sub_B6E8(uint64_t a1)
{
  v2 = +[PASettings sharedInstance];
  v3 = [v2 configurationCameFromEnrollment];

  if (v3)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained reloadSpecifiers];
  }
}

void sub_B774(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (([WeakRetained playingMedia] & 1) == 0)
  {
    [WeakRetained reloadSpecifiers];
    v1 = +[PASettings sharedInstance];
    [v1 personalAudioAccommodationTypes];
    [WeakRetained setMediaEnabled:compoundAttributeContainsAttribute()];
  }
}

void sub_B7F8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained updateHeadphoneStatus];
}

id sub_BB3C(uint64_t a1)
{
  if (![*(a1 + 32) currentRouteSupportsAudioAccomodations] || (+[HUUtilities sharedUtilities](HUUtilities, "sharedUtilities"), v2 = objc_claimAutoreleasedReturnValue(), v3 = objc_msgSend(v2, "wirelessSplitterEnabled"), v2, v3))
  {
    v4 = +[PAStimulus musicStimulus];
    v5 = [v4 isPlaying];

    if (v5)
    {
      [*(a1 + 32) stopPlayingSample];
    }
  }

  v6 = *(a1 + 32);

  return [v6 reloadSpecifiers];
}

void sub_BE1C(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  v8 = +[HUAccessoryManager sharedInstance];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_C028;
  v17[3] = &unk_48AD0;
  v17[4] = *(a1 + 32);
  [v8 getPairedDeviceSupportsPSE:v17];

  v15[0] = 0;
  v15[1] = v15;
  v15[2] = 0x3032000000;
  v15[3] = sub_C034;
  v15[4] = sub_C044;
  v16 = +[NSMutableDictionary dictionary];
  v9 = +[HUAccessoryManager sharedInstance];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_C04C;
  v14[3] = &unk_48B48;
  v14[4] = v15;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_C0D0;
  v11[3] = &unk_48B70;
  v11[4] = *(a1 + 32);
  v13 = v15;
  v10 = v6;
  v12 = v10;
  [v9 enumerateAvailablePSEDevicesWithBlock:v14 andCompletion:v11];

  _Block_object_dispose(v15, 8);
}

void sub_C010(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_C034(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_C04C(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  if ([v6 length] && objc_msgSend(v5, "length"))
  {
    [*(*(*(a1 + 32) + 8) + 40) setObject:v5 forKey:v6];
  }
}

void sub_C0D0(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v1 = v2;
  AXPerformBlockOnMainThread();
}

id sub_C160(uint64_t a1)
{
  [*(a1 + 32) setAvailablePSEDevices:*(*(*(a1 + 48) + 8) + 40)];
  [*(a1 + 32) setCurrentRouteSupportsAudioAccomodations:*(a1 + 40) != 0];
  v3.receiver = *(a1 + 32);
  v3.super_class = AudioAccommodationsViewController;
  return objc_msgSendSuper2(&v3, "reloadSpecifiers");
}

void sub_D48C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a4;
  v6 = +[PASettings sharedInstance];
  [*(a1 + 32) setTransparencyCustomized:{objc_msgSend(v6, "transparencyCustomizedForAddress:", v5)}];

  v8 = +[PAHMSManager sharedInstance];
  v7 = [v8 yodelEnabledForAddress:v5];

  [*(a1 + 32) setHearingAssistEnabled:v7];
}

void sub_D794(uint64_t a1, void *a2)
{
  v3 = a2;
  v7 = *(a1 + 40);
  v5 = v3;
  v6 = *(a1 + 32);
  v4 = v3;
  AXPerformBlockOnMainThread();
}

void sub_D830(uint64_t a1)
{
  if (*(a1 + 32) || (*(a1 + 48) & 1) != 0)
  {
    v2 = *(a1 + 40);
    if ((v2[161] & 1) == 0)
    {
      v3 = +[PAStimulus musicStimulus];
      v4 = [v3 isPlaying];

      if (!v4)
      {
LABEL_7:
        v6 = objc_alloc_init(PersonalAudioEnrollmentViewController);
        v7 = *(a1 + 40);
        v8 = *(v7 + 152);
        *(v7 + 152) = v6;

        [*(*(a1 + 40) + 152) setModalPresentationStyle:-2];
        [*(a1 + 40) presentViewController:*(*(a1 + 40) + 152) animated:1 completion:0];
        v13 = +[HUUtilities sharedUtilities];
        [v13 pauseNowPlaying:1 withQueue:0 andCompletion:0];
        goto LABEL_8;
      }

      v2 = *(a1 + 40);
    }

    v5 = [v2 specifierForID:@"AXPAPlaySampleSpecID"];
    [v2 toggleSample:v5];

    goto LABEL_7;
  }

  v13 = objc_alloc_init(PSConfirmationSpecifier);
  v9 = paLocString();
  [v13 setTitle:v9];

  v10 = paLocString();
  [v13 setPrompt:v10];

  v11 = paLocString();
  [v13 setOkButton:v11];

  v12 = paLocString();
  [v13 setAlternateButton:v12];

  [*(a1 + 40) showConfirmationViewForSpecifier:v13 useAlert:1];
LABEL_8:
}

void sub_E490(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_E4C8(uint64_t a1)
{
  objc_copyWeak(&v1, (a1 + 32));
  AXPerformBlockOnMainThread();
  objc_destroyWeak(&v1);
}

void sub_E550(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  objc_destroyWeak(va);
  _Unwind_Resume(a1);
}

void sub_E568(uint64_t a1)
{
  v2 = +[HUComfortSoundsSettings sharedInstance];
  if (([v2 tinnitusFilterEnabled] & 1) == 0)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v4 = [WeakRetained playingSample];

    if (!v4)
    {
      goto LABEL_5;
    }

    v2 = +[AXHAServer sharedInstance];
    [v2 stopComfortSoundsPreview];
  }

LABEL_5:
  v5 = objc_loadWeakRetained((a1 + 32));
  [v5 reloadSpecifiers];
}

void sub_E614(uint64_t a1)
{
  objc_copyWeak(&v1, (a1 + 32));
  AXPerformBlockOnMainThread();
  objc_destroyWeak(&v1);
}

void sub_E69C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  objc_destroyWeak(va);
  _Unwind_Resume(a1);
}

void sub_E6B4(uint64_t a1)
{
  v2 = +[HUComfortSoundsSettings sharedInstance];
  v3 = [[HUComfortSoundsFilterPoint alloc] initWithPoint:{0.0, 0.0}];
  [v2 setTinnitusFilterPoint:v3];

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  LODWORD(v3) = [WeakRetained playingSample];

  if (v3)
  {
    v5 = +[AXHAServer sharedInstance];
    [v5 startComfortSoundsPreview];
  }

  v6 = objc_loadWeakRetained((a1 + 32));
  [v6 reloadSpecifiers];
}

void sub_F50C(uint64_t a1)
{
  if ([*(a1 + 32) playingSample])
  {
    v1 = +[AXHAServer sharedInstance];
    [v1 startComfortSoundsPreview];
  }
}

void sub_F7F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class sub_F994(uint64_t a1)
{
  v4[0] = 0;
  if (!qword_57480)
  {
    v4[1] = _NSConcreteStackBlock;
    v4[2] = 3221225472;
    v4[3] = sub_FAD8;
    v4[4] = &unk_48A80;
    v4[5] = v4;
    v5 = off_48C08;
    v6 = 0;
    qword_57480 = _sl_dlopen();
    v2 = v4[0];
    if (qword_57480)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("AXSettings");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_2CE7C();
  }

  qword_57478 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_FAD8(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_57480 = result;
  return result;
}

void sub_FF00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_FF24(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setBluetoothAvailability:a2];
}

id sub_10244(uint64_t a1, void *a2)
{
  if (a2)
  {
    return [a2 performSelector:"_updateLiveListenButtonForOneness" withObject:0 afterDelay:0.0];
  }

  return result;
}

void sub_10780(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v22 + 48));
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_107C0(uint64_t a1, uint64_t a2, double a3)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained updateLiveListenWithState:a2 andLevel:a3];
}

void sub_10820(id *a1, void *a2)
{
  v3 = a2;
  v9[0] = 0;
  v9[1] = v9;
  v9[2] = 0x2020000000;
  v10 = 0;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10980;
  v6[3] = &unk_48CA0;
  v7 = a1[4];
  v8 = v9;
  [v3 enumerateKeysAndObjectsUsingBlock:v6];
  v4 = a1[5];
  objc_copyWeak(&v5, a1 + 6);
  AXPerformBlockOnMainThread();
  [a1[5] cacheVolumeProperties];
  objc_destroyWeak(&v5);

  _Block_object_dispose(v9, 8);
}

void sub_10954(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  _Block_object_dispose((v2 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_10980(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [*(a1 + 32) containsPeripheralWithUUID:v6];
    if ((v8 & 1) != 0 || ([*(a1 + 32) deviceUUID], v3 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "rangeOfString:", v3) != 0x7FFFFFFFFFFFFFFFLL))
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      if ((v8 & 1) == 0)
      {
      }

      if (isKindOfClass)
      {
        v14[0] = _NSConcreteStackBlock;
        v14[1] = 3221225472;
        v14[2] = sub_10B50;
        v14[3] = &unk_48C78;
        v10 = *(a1 + 32);
        v11 = *(a1 + 40);
        v15 = v10;
        v16 = v11;
        [v7 enumerateKeysAndObjectsUsingBlock:v14];
        v12 = v15;
        goto LABEL_11;
      }
    }

    else
    {
    }
  }

  v12 = HCLogHearingAids();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = *(a1 + 32);
    *buf = 138412546;
    v18 = v6;
    v19 = 2112;
    v20 = v13;
    _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "HearingAidDetailViewController: Ignoring update for %@\n%@", buf, 0x16u);
  }

LABEL_11:
}

void sub_10B50(uint64_t a1, void *a2, void *a3)
{
  v16 = a2;
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = [v5 availableEars];
  v8 = [*(a1 + 32) valueForProperty:0x200000];
  v9 = [*(a1 + 32) valueForProperty:0x40000000];
  v10 = [*(a1 + 32) valueForProperty:0x10000];
  v11 = *(a1 + 32);
  [v11 setValue:v6 forProperty:{objc_msgSend(v16, "unsignedLongLongValue")}];

  if (([v16 unsignedLongLongValue] & 8) != 0 && objc_msgSend(*(a1 + 32), "availableEars") != v7)
  {
    goto LABEL_24;
  }

  v12 = [v16 unsignedLongLongValue];
  if ((v12 & 0x200000) != 0)
  {
    v6 = [*(a1 + 32) valueForProperty:0x200000];
    if (![v8 isEqualToArray:v6])
    {

LABEL_24:
      *(*(*(a1 + 40) + 8) + 24) = 1;
      goto LABEL_25;
    }
  }

  v13 = [v16 unsignedLongLongValue];
  if ((v13 & 0x40000000) != 0)
  {
    v11 = [*(a1 + 32) valueForProperty:0x40000000];
    if (![v9 isEqualToArray:v11])
    {
      LODWORD(v14) = 1;
      goto LABEL_22;
    }
  }

  if (([v16 unsignedLongLongValue] & 0x10000) == 0)
  {
    if (([v16 unsignedLongLongValue] & 0x400) != 0)
    {
      LODWORD(v14) = 1;
      if ((v13 & 0x40000000) != 0)
      {
        goto LABEL_22;
      }
    }

    else
    {
      v14 = ([v16 unsignedLongLongValue] >> 35) & 1;
      if ((v13 & 0x40000000) != 0)
      {
        goto LABEL_22;
      }
    }

LABEL_17:
    if ((v12 & 0x200000) != 0)
    {
      goto LABEL_23;
    }

    goto LABEL_18;
  }

  v15 = [*(a1 + 32) valueForProperty:0x10000];
  if (([v10 isEqualToArray:v15] & 1) == 0 || (objc_msgSend(v16, "unsignedLongLongValue") & 0x400) != 0)
  {
    LODWORD(v14) = 1;
  }

  else
  {
    v14 = ([v16 unsignedLongLongValue] >> 35) & 1;
  }

  if ((v13 & 0x40000000) == 0)
  {
    goto LABEL_17;
  }

LABEL_22:

  if ((v12 & 0x200000) != 0)
  {
LABEL_23:

    if ((v14 & 1) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

LABEL_18:
  if (v14)
  {
    goto LABEL_24;
  }

LABEL_25:
}

void sub_10D78(uint64_t a1)
{
  v2 = *(*(*(a1 + 40) + 8) + 24);
  v3 = [*(a1 + 32) hysteresisTimer];
  [v3 invalidate];

  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v8 = WeakRetained;
  v5 = 0.2;
  if (v2)
  {
    v5 = 0.5;
  }

  v6 = &selRef_reloadSpecifiers;
  if (!v2)
  {
    v6 = &selRef_updateView;
  }

  v7 = [NSTimer scheduledTimerWithTimeInterval:WeakRetained target:*v6 selector:0 userInfo:0 repeats:v5];
  [*(a1 + 32) setHysteresisTimer:v7];
}

id sub_11098(uint64_t a1)
{
  *(*(a1 + 32) + 138) = *(a1 + 40);
  v2.receiver = *(a1 + 32);
  v2.super_class = HearingAidDetailController;
  return objc_msgSendSuper2(&v2, "reloadSpecifiers");
}

void sub_112C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_112E0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id sub_13F9C()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = qword_57488;
  v7 = qword_57488;
  if (!qword_57488)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_16C90;
    v3[3] = &unk_48A48;
    v3[4] = &v4;
    sub_16C90(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_14064(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_14450(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 168), 8);
  _Block_object_dispose((v1 - 136), 8);
  _Unwind_Resume(a1);
}

void sub_14474(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v13 = a2;
  if ((*(*(*(a1 + 72) + 8) + 24) & 1) == 0)
  {
    v6 = [*(a1 + 32) index];
    if (v6 < [*(a1 + 40) index])
    {
      v7 = [v13 index];
      if (v7 == [*(a1 + 32) index])
      {
        *(*(*(a1 + 72) + 8) + 24) = 1;
        v8 = [*(a1 + 48) device];
        [v8 selectProgram:v13 forEar:4];
      }
    }
  }

  if ((*(*(*(a1 + 80) + 8) + 24) & 1) == 0)
  {
    v9 = [*(a1 + 56) index];
    if (v9 < [*(a1 + 64) index])
    {
      v10 = [v13 index];
      if (v10 == [*(a1 + 56) index])
      {
        *(*(*(a1 + 80) + 8) + 24) = 1;
        v11 = [*(a1 + 48) device];
        [v11 selectProgram:v13 forEar:4];
      }
    }
  }

  if (*(*(*(a1 + 72) + 8) + 24) == 1)
  {
    v12 = *(*(*(a1 + 80) + 8) + 24);
  }

  else
  {
    v12 = 0;
  }

  *a4 = v12 & 1;
}

void sub_145E4(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v13 = a2;
  if ((*(*(*(a1 + 72) + 8) + 24) & 1) == 0)
  {
    v6 = [*(a1 + 32) index];
    if (v6 < [*(a1 + 40) index])
    {
      v7 = [v13 index];
      if (v7 == [*(a1 + 32) index])
      {
        *(*(*(a1 + 72) + 8) + 24) = 1;
        v8 = [*(a1 + 48) device];
        [v8 selectProgram:v13 forEar:2];
      }
    }
  }

  if ((*(*(*(a1 + 80) + 8) + 24) & 1) == 0)
  {
    v9 = [*(a1 + 56) index];
    if (v9 < [*(a1 + 64) index])
    {
      v10 = [v13 index];
      if (v10 == [*(a1 + 56) index])
      {
        *(*(*(a1 + 80) + 8) + 24) = 1;
        v11 = [*(a1 + 48) device];
        [v11 selectProgram:v13 forEar:2];
      }
    }
  }

  if (*(*(*(a1 + 72) + 8) + 24) == 1)
  {
    v12 = *(*(*(a1 + 80) + 8) + 24);
  }

  else
  {
    v12 = 0;
  }

  *a4 = v12 & 1;
}

void sub_14C74(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = *(a1 + 32);
  v4 = [v7 userInfo];
  v5 = [v3 indexOfObject:v4];

  v6 = [v7 propertyForKey:PSTableCellKey];
  if ((v5 != 0x7FFFFFFFFFFFFFFFLL) != [v6 isChecked])
  {
    [v6 setChecked:v5 != 0x7FFFFFFFFFFFFFFFLL];
    [*(a1 + 40) reloadSpecifier:v7];
  }
}

void sub_15060(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_15080(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v6 = -1;
    [*(a1 + 32) getGroup:&v6 row:0 ofSpecifier:v3];
    if (v6 != -1)
    {
      v4 = [*(*(a1 + 32) + OBJC_IVAR___PSListController__specifiers) indexOfObject:v3];
      v5 = [*(a1 + 40) specifiersInGroupAtGroupIndex:v6];
      v7.length = [v5 count];
      v7.location = v4;
      *(*(*(a1 + 48) + 8) + 32) = NSUnionRange(*(*(*(a1 + 48) + 8) + 32), v7);
    }
  }
}

void sub_156B0(uint64_t a1)
{
  *(*(a1 + 32) + 136) = *(a1 + 40);
  v1 = *(a1 + 32);
  v2 = [v1 specifierForID:@"LiveListenButtonCell"];
  [v1 updateLiveListenCell:v2];
}

Class sub_16C90(uint64_t a1)
{
  v4[0] = 0;
  if (!qword_57490)
  {
    v4[1] = _NSConcreteStackBlock;
    v4[2] = 3221225472;
    v4[3] = sub_16DD4;
    v4[4] = &unk_48A80;
    v4[5] = v4;
    v5 = off_48DB0;
    v6 = 0;
    qword_57490 = _sl_dlopen();
    v2 = v4[0];
    if (qword_57490)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("AXSpringBoardServer");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_2CE54();
  }

  qword_57488 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_16DD4(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_57490 = result;
  return result;
}

void sub_171BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  _Block_object_dispose((v15 - 96), 8);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

BOOL sub_17204()
{
  v0 = +[HMHealthKitUtilities sharedInstance];
  v1 = [v0 getRegionSupportStatusForFeatureID:HKFeatureIdentifierHearingAid] == 2;

  return v1;
}

id sub_17254()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = qword_574A8;
  v7 = qword_574A8;
  if (!qword_574A8)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_194FC;
    v3[3] = &unk_48A48;
    v3[4] = &v4;
    sub_194FC(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1731C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_17334(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setAudiograms:v4];
}

void sub_1769C(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  if (v6 && (+[HUUtilities sharedUtilities](HUUtilities, "sharedUtilities"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v8 wirelessSplitterEnabled], v8, !v9))
  {
    v10 = &stru_49868;
  }

  else
  {
    v10 = paLocString();
  }

  v13 = v10;
  v12 = *(a1 + 32);
  v11 = v10;
  AXPerformBlockOnMainThread();
}

id sub_177A4(uint64_t a1)
{
  [*(a1 + 32) setDidLoadRouteInfo:1];
  [*(a1 + 32) setCurrentDevicePSEVersion:*(a1 + 48)];
  [*(*(a1 + 32) + 40) setEnabled:{objc_msgSend(*(a1 + 40), "length") == 0}];
  [*(a1 + 32) updateIntroButtonTrayCaption:*(a1 + 40)];
  v2 = *(a1 + 32);

  return [v2 showWelcomeController];
}

id sub_179F4(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 48) stimuli];
  [v2 enumerateObjectsUsingBlock:&stru_48E38];

  v3 = +[PASettings sharedInstance];
  v4 = [*(a1 + 32) currentPersonalAudioConfiguration];
  [v3 setPersonalMediaConfiguration:v4];

  v5 = +[PASettings sharedInstance];
  [v5 setPersonalMediaEnabled:{objc_msgSend(*(a1 + 32), "personalAudioWasEnabled")}];

  v6 = +[PASettings sharedInstance];
  [v6 setPersonalAudioAccommodationTypes:{objc_msgSend(*(a1 + 32), "currentPersonalAudioAccommodationTypes")}];

  v7 = *(a1 + 32);

  return [v7 dismissViewControllerAnimated:1 completion:&stru_48E78];
}

void sub_17CB4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) stimuli];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_17DA4;
  v10[3] = &unk_48F08;
  v5 = v3;
  v11 = v5;
  v6 = [v4 indexOfObjectPassingTest:v10];

  if (v6 == 0x7FFFFFFFFFFFFFFFLL || (v7 = *(a1 + 32)) == 0 || ([v7 stimuli], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "count"), v8, !v9))
  {
    [v5 stop];
  }
}

void sub_19334(uint64_t a1)
{
  sub_1938C();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("HKObjectType");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_57498 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    sub_2CEA4();
    sub_1938C();
  }
}

void sub_1938C()
{
  v1[0] = 0;
  if (!qword_574A0)
  {
    v1[1] = _NSConcreteStackBlock;
    v1[2] = 3221225472;
    v1[3] = sub_19488;
    v1[4] = &unk_48A80;
    v1[5] = v1;
    v2 = off_48F90;
    v3 = 0;
    qword_574A0 = _sl_dlopen();
  }

  v0 = v1[0];
  if (!qword_574A0)
  {
    v0 = abort_report_np();
    goto LABEL_7;
  }

  if (v1[0])
  {
LABEL_7:
    free(v0);
  }
}

uint64_t sub_19488(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_574A0 = result;
  return result;
}

Class sub_194FC(uint64_t a1)
{
  sub_1938C();
  result = objc_getClass("HKHealthStore");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_574A8 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = sub_2CECC();
    return sub_19554(v3);
  }

  return result;
}

Class sub_19554(uint64_t a1)
{
  sub_1938C();
  result = objc_getClass("HKSampleQuery");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_574B0 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = sub_2CEF4();
    return [(PersonalAudioLinkControl *)v3 linkWithTitle:v4, v5];
  }

  return result;
}

uint64_t sub_1C248(uint64_t a1)
{
  [*(a1 + 32) setValue:*(a1 + 40)];
  v3 = *(a1 + 32);
  return AXPerformBlockOnMainThread();
}

void sub_1C2D0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = v1[17];
  v3 = [v1 valueString];
  [v2 setText:v3];
}

uint64_t sub_1D9E0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1D9F8(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  if ([v7 isSelected] && objc_msgSend(v7, "isStream"))
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    *a4 = 1;
  }
}

void sub_1DA7C(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  if ([v7 isSelected] && objc_msgSend(v7, "isStream"))
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    *a4 = 1;
  }
}

void sub_1DB00(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  if ([v7 isSelected] && objc_msgSend(v7, "isStream"))
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    *a4 = 1;
  }
}

void sub_1E458(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

id sub_1E488(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  [*(a1 + 32) setText:a2];
  result = [*(a1 + 32) sizeThatFits:{1.79769313e308, UITableViewAutomaticDimension}];
  *(*(*(a1 + 40) + 8) + 24) = v7 + *(*(*(a1 + 40) + 8) + 24);
  if (v7 >= *(a1 + 56))
  {
    *(*(*(a1 + 48) + 8) + 24) = 0;
    *a4 = 1;
  }

  return result;
}

void *sub_21798(uint64_t a1)
{
  v5[0] = 0;
  if (!qword_574C0)
  {
    v5[1] = _NSConcreteStackBlock;
    v5[2] = 3221225472;
    v5[3] = sub_218D8;
    v5[4] = &unk_48A80;
    v5[5] = v5;
    v6 = off_48FF8;
    v7 = 0;
    qword_574C0 = _sl_dlopen();
    v3 = v5[0];
    v2 = qword_574C0;
    if (qword_574C0)
    {
      if (!v5[0])
      {
        goto LABEL_5;
      }
    }

    else
    {
      v3 = abort_report_np();
    }

    free(v3);
    goto LABEL_5;
  }

  v2 = qword_574C0;
LABEL_5:
  result = dlsym(v2, "CPFSSizeStrings");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_574B8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_218D8(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_574C0 = result;
  return result;
}

id sub_21A00(uint64_t a1, void *a2)
{
  if (a2)
  {
    return [a2 performSelector:"_updateLiveListenButtonEnabled" withObject:0 afterDelay:0.0];
  }

  return result;
}

void sub_21D04(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 56));
  _Unwind_Resume(a1);
}

void sub_21D34(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained reloadSpecifiers];
}

void sub_21D74(uint64_t a1, uint64_t a2, double a3)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained updateLiveListenWithState:a2 andLevel:a3];
}

id sub_21EB4(uint64_t a1)
{
  *(*(a1 + 32) + 137) = *(a1 + 40);
  v2.receiver = *(a1 + 32);
  v2.super_class = LiveListenViewController;
  return objc_msgSendSuper2(&v2, "reloadSpecifiers");
}

id sub_223DC()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = qword_574C8;
  v7 = qword_574C8;
  if (!qword_574C8)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_22F10;
    v3[3] = &unk_48A48;
    v3[4] = &v4;
    sub_22F10(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_224A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_224BC(uint64_t a1, void *a2, void *a3)
{
  v12 = a2;
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [v5 objectForKey:HULiveListenRemoteDeviceNameKey];
    v7 = [PSSpecifier preferenceSpecifierNamed:v6 target:*(a1 + 32) set:0 get:0 detail:0 cell:4 edit:0];

    [v7 setIdentifier:v12];
    [v7 setProperty:objc_opt_class() forKey:PSCellClassKey];
    v8 = *(a1 + 32);
    v9 = [v5 objectForKey:HULiveListenRemoteDeviceStartDateKey];
    v10 = [v5 objectForKey:HULiveListenRemoteDeviceEndDateKey];
    v11 = [v8 _subtitleForStartDate:v9 endDate:v10];
    [v7 setProperty:v11 forKey:PSTableCellSubtitleTextKey];

    [*(a1 + 40) addObject:v7];
  }
}

void sub_22870(uint64_t a1)
{
  *(*(a1 + 32) + 136) = *(a1 + 40);
  v1 = *(a1 + 32);
  v2 = [v1 specifierForID:@"LLStartButtonSpecID"];
  [v1 updateLiveListenCell:v2];
}

Class sub_22F10(uint64_t a1)
{
  v4[0] = 0;
  if (!qword_574D0)
  {
    v4[1] = _NSConcreteStackBlock;
    v4[2] = 3221225472;
    v4[3] = sub_23054;
    v4[4] = &unk_48A80;
    v4[5] = v4;
    v5 = off_49060;
    v6 = 0;
    qword_574D0 = _sl_dlopen();
    v2 = v4[0];
    if (qword_574D0)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("AXSpringBoardServer");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_2CE54();
  }

  qword_574C8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_23054(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_574D0 = result;
  return result;
}

void sub_236AC(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  if (v6)
  {
    v8 = +[HUUtilities sharedUtilities];
    v9 = [v8 wirelessSplitterEnabled] ^ 1;
  }

  else
  {
    v9 = 0;
  }

  v10 = HCLogAudioAccommodations();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = +[HUUtilities sharedUtilities];
    *buf = 67109376;
    v16 = v6 != 0;
    v17 = 1024;
    v18 = [v11 wirelessSplitterEnabled];
    _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "Updating headphones %d, %d", buf, 0xEu);
  }

  v12 = *(a1 + 32);
  if (*(v12 + 8) != v9)
  {
    *(v12 + 8) = v9;
    v13 = *(a1 + 32);
    v14 = v7;
    AXPerformBlockOnMainThread();
  }
}

id sub_2385C(uint64_t a1)
{
  [*(a1 + 32) setCurrentRouteAddress:*(a1 + 40)];
  v2 = *(a1 + 32);

  return [v2 updateViewForCurrentNode];
}

void sub_23A48(uint64_t a1)
{
  v8 = 0.0;
  v2 = +[AVSystemController sharedAVSystemController];
  [v2 getActiveCategoryVolume:&v8 andName:0];

  if (fabs(v8 + -0.5) >= 0.001)
  {
    v3 = HCLogAudioAccommodations();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218240;
      v10 = v8;
      v11 = 2048;
      v12 = 0x3FE0000000000000;
      _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "Changing volume from %lf to %lf", buf, 0x16u);
    }

    v4 = +[AVSystemController sharedAVSystemController];
    LODWORD(v5) = 0.5;
    [v4 setActiveCategoryVolumeTo:v5];

    v6 = *(a1 + 32);
    v7 = paLocString();
    [v6 updateButtonTrayCaption:v7];
  }
}

void sub_242BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_243A4(id a1, NSDictionary *a2, unint64_t a3, NSString *a4, BOOL a5, unint64_t a6)
{
  v6 = a4;
  v7 = +[PASettings sharedInstance];
  [v7 resetValueForSelector:"transparencyAmplification" forAddress:v6];

  v8 = +[PASettings sharedInstance];
  [v8 resetValueForSelector:"transparencyBalance" forAddress:v6];

  v9 = +[PASettings sharedInstance];
  [v9 resetValueForSelector:"transparencyTone" forAddress:v6];

  v10 = +[PASettings sharedInstance];
  [v10 setTransparencyCustomized:0 forAddress:v6];
}

void sub_24EFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_24F14(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_24F2C(uint64_t a1, void *a2, uint64_t a3, BOOL *a4)
{
  v6 = [a2 configuration];
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  *a4 = *(*(*(a1 + 32) + 8) + 40) != 0;
}

void sub_24F90(id a1, PAStimulus *a2, unint64_t a3, BOOL *a4)
{
  [(PAStimulus *)a2 stop:a3];

  UIAccessibilityPostNotification(0x42Fu, &__kCFBooleanFalse);
}

void sub_250A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_250CC(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 play];
  UIAccessibilityPostNotification(0x42Fu, &__kCFBooleanTrue);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_25198;
  v4[3] = &unk_49108;
  objc_copyWeak(&v5, (a1 + 32));
  [v3 registerListener:v4 forBucketCount:30];
  objc_destroyWeak(&v5);
}

void sub_25198(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [WeakRetained visualizerView];
  [v4 updateWithMagnitudes:v3];
}

void sub_2545C(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 selectedNode];
  [v3 setSelected:{objc_msgSend(v3, "isEqual:", v4)}];
}

void sub_2568C(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [*(a1 + 32) selectedNode];
  v4 = [v3 stimuli];
  v5 = [v4 indexOfObject:v6];

  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    [v6 stop];
    UIAccessibilityPostNotification(0x42Fu, &__kCFBooleanFalse);
  }
}

Class sub_25A9C(uint64_t a1)
{
  v4[0] = 0;
  if (!qword_57500)
  {
    v4[1] = _NSConcreteStackBlock;
    v4[2] = 3221225472;
    v4[3] = sub_25BE0;
    v4[4] = &unk_48A80;
    v4[5] = v4;
    v5 = off_49178;
    v6 = 0;
    qword_57500 = _sl_dlopen();
    v2 = v4[0];
    if (qword_57500)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("MPVolumeSlider");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_2CFB8();
  }

  qword_574F8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_25BE0(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_57500 = result;
  return result;
}

void sub_25D3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25D60(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setBluetoothAvailability:a2];
}

void sub_261F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_2620C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_26224(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [v5 userInfo];
  if ([v3 leftAvailable] & 1) != 0 || (objc_msgSend(v3, "rightAvailable"))
  {
    v4 = [v5 propertyForKey:PSTableCellKey];
    [v4 setChecked:{objc_msgSend(v3, "isPaired")}];
  }

  else
  {
    [*(*(*(a1 + 32) + 8) + 40) addObject:v5];
  }
}

void sub_2740C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 88));
  _Unwind_Resume(a1);
}

void sub_27448(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained availableDevices];
  [v1 enumerateObjectsUsingBlock:&stru_49200];
}

void sub_274A8(id a1, id a2, unint64_t a3, BOOL *a4)
{
  v4 = [a2 propertyForKey:{PSTableCellKey, a4}];
  [v4 updateAvailability];
}

void sub_274F8(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_copyWeak(&v5, (a1 + 32));
  v4 = v3;
  AXPerformBlockAsynchronouslyOnMainThread();

  objc_destroyWeak(&v5);
}

void sub_275BC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _handleAvailableDevicesChanged:*(a1 + 32)];
}

void sub_2760C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = HCLogHearingAids();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v8 = v3;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "Received control message %@", buf, 0xCu);
  }

  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_27744;
  v5[3] = &unk_49290;
  objc_copyWeak(&v6, (a1 + 32));
  [v3 enumerateKeysAndObjectsUsingBlock:v5];
  objc_destroyWeak(&v6);
}

void sub_27744(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v5 isEqualToString:AXHAMessageKeyPayload] && objc_msgSend(v6, "unsignedLongLongValue") == &dword_0 + 1)
  {
    objc_copyWeak(&v7, (a1 + 32));
    AXPerformBlockOnMainThread();
    objc_destroyWeak(&v7);
  }
}

void sub_27848(uint64_t a1)
{
  v2 = hearingSettingsLocString(@"HearingAidRemovedPairingTitle", @"HearingAidSettings");
  v3 = hearingSettingsLocString(@"HearingAidRemovedPairingMessage", @"HearingAidSettings");
  v9 = [UIAlertController alertControllerWithTitle:v2 message:v3 preferredStyle:1];

  v4 = hearingSettingsLocString(@"HearingAidCancel", @"HearingAidSettings");
  v5 = [UIAlertAction actionWithTitle:v4 style:0 handler:&stru_49248];
  [v9 addAction:v5];

  v6 = hearingSettingsLocString(@"HearingAlertButtonTitle", @"HearingAidSettings");
  v7 = [UIAlertAction actionWithTitle:v6 style:0 handler:&stru_49268];
  [v9 addAction:v7];

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained presentViewController:v9 animated:1 completion:0];
}

void sub_279BC(id a1, UIAlertAction *a2)
{
  v2 = HCLogHearingAids();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "User decided not to repair pairing", v3, 2u);
  }
}

void sub_27A24(id a1, UIAlertAction *a2)
{
  v2 = HCLogHearingAids();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "Removing pairing", v5, 2u);
  }

  v3 = +[HUHearingAidSettings sharedInstance];
  [v3 setClearPartialPairing:1];

  v4 = +[HUHearingAidSettings sharedInstance];
  [v4 setPairedHearingAids:0];
}

void sub_27CFC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) availableDevices];
  v11 = _NSConcreteStackBlock;
  v12 = 3221225472;
  v13 = sub_27EB4;
  v14 = &unk_492B8;
  v15 = v3;
  v5 = v3;
  v6 = [v4 indexOfObjectPassingTest:&v11];

  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = [v5 name];
    v8 = [PSSpecifier preferenceSpecifierNamed:v7 target:*(a1 + 32) set:0 get:"valueForSpecifier:" detail:objc_opt_class() cell:4 edit:0, v11, v12, v13, v14, v15];

    [v8 setUserInfo:v5];
    [v8 setProperty:objc_opt_class() forKey:PSCellClassKey];
  }

  else
  {
    v9 = [*(a1 + 32) availableDevices];
    v8 = [v9 objectAtIndex:v6];

    v10 = [v8 propertyForKey:PSTableCellKey];
    [v10 updateAvailability];
  }

  [*(a1 + 40) addObject:v8];
}

id sub_27EB4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 userInfo];
  v4 = [v3 deviceUUID];
  v5 = [v2 containsPeripheralWithUUID:v4];

  return v5;
}

int64_t sub_27F14(id a1, id a2, id a3)
{
  v4 = a3;
  v5 = [a2 userInfo];
  v6 = [v5 RSSI];
  v7 = [v4 userInfo];

  v8 = [v7 RSSI];
  v9 = [v6 compare:v8];

  return v9;
}

void sub_282BC(uint64_t a1)
{
  [*(*(a1 + 32) + 168) dismissViewControllerAnimated:1 completion:0];
  v2 = *(a1 + 32);
  v3 = *(v2 + 168);
  *(v2 + 168) = 0;
}

void sub_28A04(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) specifier];
  v5 = [v3 isEqual:v4];

  if ((v5 & 1) == 0)
  {
    v6 = [v3 propertyForKey:PSTableCellKey];
    [v6 setChecked:0];

    v7 = HCLogHearingAids();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [v3 userInfo];
      v10 = 138412290;
      v11 = v8;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "HearingAidController: Disconnecting other Hearing Aids\n%@", &v10, 0xCu);
    }

    v9 = [v3 userInfo];
    [v9 disconnectAndUnpair:0];
  }
}

void sub_2934C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak(v20);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_29374(uint64_t a1, double a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  *&v3 = a2;
  [WeakRetained audioLevelDidChange:v3];
}

void sub_293C4(uint64_t a1, double a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  *&v3 = a2;
  [WeakRetained audioLevelDidChange:v3];
}

void sub_2959C(uint64_t a1, void *a2, unint64_t a3)
{
  v5 = UIApp;
  v8 = a2;
  v6 = [v5 userInterfaceLayoutDirection];
  v7 = 5 - a3;
  if (!v6)
  {
    v7 = a3;
  }

  [v8 setHighlighted:v7 < *(a1 + 32)];
}

void sub_2979C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

CGFloat sub_297B4(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 frame];
  [v3 setFrame:{*(*(*(a1 + 32) + 8) + 32), *(*(*(a1 + 32) + 8) + 40)}];
  [v3 frame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v15.origin.x = v5;
  v15.origin.y = v7;
  v15.size.width = v9;
  v15.size.height = v11;
  Width = CGRectGetWidth(v15);
  v13 = *(*(a1 + 32) + 8);
  result = Width + 11.0 + *(v13 + 32);
  *(v13 + 32) = result;
  return result;
}

id HearingSettingsBundle()
{
  v0 = qword_57508;
  if (!qword_57508)
  {
    v1 = [NSBundle bundleForClass:objc_opt_class()];
    v2 = qword_57508;
    qword_57508 = v1;

    v0 = qword_57508;
  }

  return v0;
}

id hearingSettingsLocString(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = HearingSettingsBundle();
  v6 = [v5 localizedStringForKey:v4 value:v4 table:v3];

  return v6;
}

void sub_2ABA4(uint64_t a1)
{
  v2 = [*(a1 + 32) numberOfPips];
  [*(a1 + 32) bounds];
  x = v20.origin.x;
  y = v20.origin.y;
  width = v20.size.width;
  height = v20.size.height;
  v7 = CGRectGetWidth(v20) / (2 * v2 - 1);
  if (v7 <= 50.0)
  {
    v8 = v7;
  }

  else
  {
    v8 = 50.0;
  }

  v21.origin.x = x;
  v21.origin.y = y;
  v21.size.width = width;
  v21.size.height = height;
  v9 = (CGRectGetWidth(v21) - v8 * v2 - v8 * (v2 - 1)) * 0.5;
  v10 = [*(a1 + 40) count];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_2ACF8;
  v12[3] = &unk_49400;
  v11 = *(a1 + 40);
  v12[4] = *(a1 + 32);
  v14 = v10;
  v13 = v11;
  v15 = 0x405E000000000000;
  v16 = v9;
  v17 = v8;
  v18 = v8;
  v19 = 0x4052C00000000000;
  [UIView _animateWithFrictionBounceAnimations:v12 completion:0];
}

void sub_2ACF8(uint64_t a1)
{
  v2 = [*(a1 + 32) levels];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_2ADB4;
  v5[3] = &unk_493D8;
  v3 = *(a1 + 40);
  v7 = *(a1 + 48);
  v6 = v3;
  v4 = *(a1 + 72);
  v8 = *(a1 + 56);
  v9 = v4;
  v10 = *(a1 + 88);
  [v2 enumerateObjectsUsingBlock:v5];
}

void sub_2ADB4(uint64_t a1, void *a2, unint64_t a3)
{
  v13 = a2;
  if (*(a1 + 40) <= a3)
  {
    v5 = &off_4C6C8;
  }

  else
  {
    v5 = [*(a1 + 32) objectAtIndex:a3];
  }

  v6 = *(a1 + 48);
  [v5 floatValue];
  v7 = *(a1 + 64);
  v8 = *(a1 + 56) + a3 * v7 + a3 * *(a1 + 72);
  v10 = v6 / 18.0 + v6 * v9;
  if (v6 >= v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = v6;
  }

  v12 = [UIBezierPath bezierPathWithRoundedRect:*(a1 + 56) + a3 * v7 + a3 * *(a1 + 72) cornerRadius:*(a1 + 80) + v11 * -0.5, v7, v11, fmax(v7, 1.5)];
  [v13 setPath:{objc_msgSend(v12, "CGPath")}];
}

void sub_2B170(_Unwind_Exception *a1)
{
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v4 - 88));
  _Unwind_Resume(a1);
}

void sub_2B1BC(uint64_t a1)
{
  objc_copyWeak(&v1, (a1 + 32));
  AXPerformBlockOnMainThread();
  objc_destroyWeak(&v1);
}

void sub_2B244(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  objc_destroyWeak(va);
  _Unwind_Resume(a1);
}

void sub_2B25C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained updateTimerOptionSpecifiers];
}

void sub_2B29C(uint64_t a1)
{
  objc_copyWeak(&v1, (a1 + 32));
  AXPerformBlockOnMainThread();
  objc_destroyWeak(&v1);
}

void sub_2B324(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  objc_destroyWeak(va);
  _Unwind_Resume(a1);
}

void sub_2B33C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained reloadSpecifierID:@"CSTimerToggleSpecID"];
}

void sub_2B384(uint64_t a1)
{
  objc_copyWeak(&v1, (a1 + 32));
  AXPerformBlockOnMainThread();
  objc_destroyWeak(&v1);
}

void sub_2B40C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  objc_destroyWeak(va);
  _Unwind_Resume(a1);
}

void sub_2B424(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained reloadSpecifierID:@"CSAlwaysToggleSpecID"];
}

void sub_2CC90(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [PSSpecifier preferenceSpecifierNamed:v4 target:v3 set:0 get:0 detail:0 cell:4 edit:0];
  [v5 setProperty:v4 forKey:@"controller"];

  [*(a1 + 40) addObject:v5];
}

uint64_t sub_2CF1C()
{
  dlerror();
  v0 = abort_report_np();
  return sub_2CF40(v0);
}

void sub_2CF40(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "Progress not a number %@", &v2, 0xCu);
}

NSRange NSUnionRange(NSRange range1, NSRange range2)
{
  v4 = _NSUnionRange(range1, range2);
  length = v4.length;
  location = v4.location;
  result.length = length;
  result.location = location;
  return result;
}