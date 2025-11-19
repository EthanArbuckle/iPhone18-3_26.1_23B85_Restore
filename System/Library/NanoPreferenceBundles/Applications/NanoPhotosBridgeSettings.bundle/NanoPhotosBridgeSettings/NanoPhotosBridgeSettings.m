id nanophotos_log_NanoPhotosCore()
{
  if (qword_12F10 != -1)
  {
    dispatch_once(&qword_12F10, &stru_C3A0);
  }

  v1 = qword_12F08;

  return v1;
}

void sub_1154(id a1)
{
  qword_12F08 = os_log_create("com.apple.NanoPhotos", "NanoPhotosCore");

  _objc_release_x1();
}

id nanophotos_log_NanoPhotosUI()
{
  if (qword_12F20 != -1)
  {
    dispatch_once(&qword_12F20, &stru_C3C0);
  }

  v1 = qword_12F18;

  return v1;
}

void sub_11EC(id a1)
{
  qword_12F18 = os_log_create("com.apple.NanoPhotos", "NanoPhotosUI");

  _objc_release_x1();
}

id nanophotos_log_sync()
{
  if (qword_12F30 != -1)
  {
    dispatch_once(&qword_12F30, &stru_C3E0);
  }

  v1 = qword_12F28;

  return v1;
}

void sub_1284(id a1)
{
  qword_12F28 = os_log_create("com.apple.NanoPhotos", "sync");

  _objc_release_x1();
}

id nanophotos_log_sync_oversize()
{
  if (qword_12F40 != -1)
  {
    dispatch_once(&qword_12F40, &stru_C400);
  }

  v1 = qword_12F38;

  return v1;
}

void sub_131C(id a1)
{
  qword_12F38 = os_log_create("com.apple.NanoPhotos", "sync_oversize");

  _objc_release_x1();
}

id nanophotos_log_bridge()
{
  if (qword_12F80 != -1)
  {
    dispatch_once(&qword_12F80, &stru_C420);
  }

  v1 = qword_12F78;

  return v1;
}

void sub_13B4(id a1)
{
  qword_12F78 = os_log_create("com.apple.NanoPhotos", "bridge");

  _objc_release_x1();
}

id nanophotos_log_Settings()
{
  if (qword_12F50 != -1)
  {
    dispatch_once(&qword_12F50, &stru_C440);
  }

  v1 = qword_12F48;

  return v1;
}

void sub_144C(id a1)
{
  qword_12F48 = os_log_create("com.apple.NanoPhotos", "Settings");

  _objc_release_x1();
}

void sub_15D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_15F4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained syncedAlbumChanged];
}

void sub_2D5C(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = a4;
  v7 = a3;
  v8 = a2;
  objc_opt_self();
  objc_opt_self();
  v11 = [NSBundle bundleForClass:objc_opt_class()];
  v9 = [v11 bundleIdentifier];
  v10 = [NSURL URLWithString:v6];

  [BPSWatchSettingsNavigationDonation emitNavigationEventForApplicationSettingWithIconSpecifierIdentifier:v9 title:v8 localizedNavigationComponents:v7 deepLink:v10];
}

id sub_2E54(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_self();
  v3 = [_NSLocalizedStringResource alloc];
  v4 = +[NSLocale currentLocale];
  objc_opt_self();
  v5 = [NSBundle bundleForClass:objc_opt_class()];
  v6 = [v5 bundleURL];
  v7 = [v3 initWithKey:v2 table:@"NanoPhotosBridgeSettings" locale:v4 bundleURL:v6];

  return v7;
}

id sub_2F3C()
{
  objc_opt_self();
  objc_opt_self();
  v0 = [NSBundle bundleForClass:objc_opt_class()];
  v1 = [v0 bundleIdentifier];
  v2 = [NSString stringWithFormat:@"bridge:root=%@", v1];

  return v2;
}

void sub_3A54(id a1)
{
  qword_12F68 = objc_alloc_init(NPTOBridgeInterfaceTheme);

  _objc_release_x1();
}

void sub_3B18(uint64_t a1)
{
  v2 = +[PUInterfaceManager currentTheme];
  v3 = qword_12F58;
  qword_12F58 = v2;

  v4 = objc_opt_class();
  ClassMethod = class_getClassMethod(v4, "currentTheme");
  v6 = *(a1 + 32);
  v7 = objc_opt_class();
  v8 = class_getClassMethod(v7, "sharedInstance");

  method_exchangeImplementations(ClassMethod, v8);
}

void sub_3F84(id a1, NSError *a2)
{
  v2 = a2;
  v3 = nanophotos_log_bridge();
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v5 = [(NSError *)v2 localizedDescription];
      v6 = 138412290;
      v7 = v5;
      _os_log_error_impl(&dword_0, v4, OS_LOG_TYPE_ERROR, "[Sensitive] Error prefetching sensitive content policy album chooser: %@", &v6, 0xCu);
    }
  }

  else if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v6) = 0;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "[Sensitive] Successfully prefetched policy album chooser", &v6, 2u);
  }
}

void sub_42C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_42E4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _syncedAlbumIdentifierPreferenceChanged];
}

void sub_4650(uint64_t a1, void *a2)
{
  v3 = a2;
  if (([*(a1 + 32) _allowsSharedAlbumSelection] & 1) != 0 || objc_msgSend(v3, "assetCollectionSubtype") != &stru_20.flags + 1)
  {
    [*(a1 + 40) addObject:v3];
  }
}

id sub_4978(uint64_t a1)
{
  result = [*(a1 + 32) isViewLoaded];
  if (result)
  {
    v3 = *(a1 + 32);

    return [v3 _reloadData];
  }

  return result;
}

id _npto_albumCount(void *a1)
{
  v1 = a1;
  v2 = objc_alloc_init(PHFetchOptions);
  [v2 setWantsIncrementalChangeDetails:0];
  v3 = [PHAsset fetchAssetsInAssetCollection:v1 options:v2];

  v4 = [v3 countOfAssetsWithMediaType:1];
  return v4;
}