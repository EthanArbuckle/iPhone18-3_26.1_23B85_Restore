void sub_185C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained _removeExpiredEnabledStates];
    (*(*(a1 + 32) + 16))();
    WeakRetained = v3;
  }
}

BOOL sub_1D74(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [*(*(a1 + 40) + 16) objectForKey:v3];
  [v4 timeIntervalSinceDate:v5];
  v7 = v6;

  if (v7 >= 0.0)
  {
    v8 = sub_9AEC(13);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412290;
      v11 = v3;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "[KeepLocalTransientState] Expiring enable state for model object: %@", &v10, 0xCu);
    }
  }

  return v7 >= 0.0;
}

void sub_3264(uint64_t a1, void *a2)
{
  v8 = a2;
  v3 = [v8 propertyForKey:@"NMBSpecifierRecommendationKey"];
  v4 = [v3 identifier];
  if ([v4 isEqualToString:NMSRecommendationLibraryPinsIdentifier])
  {

LABEL_4:
    v7 = 40;
    goto LABEL_6;
  }

  v5 = [v3 identifier];
  v6 = [v5 isEqualToString:NMSRecommendationRecentMusicIdentifier];

  if (v6)
  {
    goto LABEL_4;
  }

  v7 = 32;
LABEL_6:
  [*(a1 + v7) addObject:v8];
}

void sub_3418(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_343C(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = +[NSMutableArray array];
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v6 = v3;
    v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v13;
      do
      {
        v10 = 0;
        do
        {
          if (*v13 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = [WeakRetained _recommendationSpecifierWithRecommendation:{*(*(&v12 + 1) + 8 * v10), v12}];
          [v5 addObject:v11];

          v10 = v10 + 1;
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v8);
    }

    [WeakRetained setRecommendationSpecifiers:v5];
    [WeakRetained reloadSpecifiers];
  }
}

void sub_391C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [MPIdentifierSet alloc];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_39E4;
  v8[3] = &unk_14588;
  v9 = v3;
  v6 = v3;
  v7 = [v5 initWithBlock:v8];
  [v4 addObject:v7];
}

void sub_39E4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v3 setDeviceLibraryPersistentID:{objc_msgSend(v2, "longLongValue")}];
}

void sub_3A3C(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    v6 = sub_9AEC(13);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_9D1C(v5);
    }
  }

  else
  {
    v7 = [a2 results];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_3BA0;
    v14[3] = &unk_145D8;
    v8 = *(a1 + 32);
    v9 = *(a1 + 40);
    v15 = v8;
    v16 = v9;
    [v7 enumerateItemsUsingBlock:v14];

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_3BF8;
    block[3] = &unk_14600;
    v11 = *(a1 + 32);
    v10 = v11.i64[0];
    v13 = vextq_s8(v11, v11, 8uLL);
    dispatch_async(&_dispatch_main_q, block);

    v6 = v15;
  }
}

void sub_3BA0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) _playlistSpecifierWithPlaylist:a2];
  [v2 addObject:v3];
}

id sub_3BF8(uint64_t a1)
{
  v2 = [*(a1 + 40) copy];
  [*(a1 + 32) setPlaylistSpecifiers:v2];

  v3 = *(a1 + 32);

  return [v3 reloadSpecifiers];
}

void sub_3F70(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [MPIdentifierSet alloc];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_4038;
  v8[3] = &unk_14588;
  v9 = v3;
  v6 = v3;
  v7 = [v5 initWithBlock:v8];
  [v4 addObject:v7];
}

void sub_4038(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v3 setDeviceLibraryPersistentID:{objc_msgSend(v2, "longLongValue")}];
}

void sub_4090(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    v6 = sub_9AEC(13);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_9DA4(v5);
    }
  }

  else
  {
    v7 = [a2 results];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_41F4;
    v14[3] = &unk_14650;
    v8 = *(a1 + 32);
    v9 = *(a1 + 40);
    v15 = v8;
    v16 = v9;
    [v7 enumerateItemsUsingBlock:v14];

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_424C;
    block[3] = &unk_14600;
    v11 = *(a1 + 32);
    v10 = v11.i64[0];
    v13 = vextq_s8(v11, v11, 8uLL);
    dispatch_async(&_dispatch_main_q, block);

    v6 = v15;
  }
}

void sub_41F4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) _albumSpecifierWithAlbum:a2];
  [v2 addObject:v3];
}

id sub_424C(uint64_t a1)
{
  v2 = [*(a1 + 40) copy];
  [*(a1 + 32) setAlbumSpecifiers:v2];

  v3 = *(a1 + 32);

  return [v3 reloadSpecifiers];
}

void sub_6C94(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 112));
  _Unwind_Resume(a1);
}

void sub_6CB0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _presentDownloadWaitingAlertIfNeededWithModelObject:*(a1 + 32)];
}

void sub_772C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 176), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_7768(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_7780(uint64_t a1, uint64_t a2, id *a3)
{
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), *a3);
  v5 = a3[1];
  *(*(*(a1 + 40) + 8) + 24) = [v5 integerValue] == &stru_20.vmsize + 7;
}

void sub_7A94(uint64_t a1)
{
  v1 = [*(a1 + 32) _selfOrPresentedViewController];
  [v1 dismissViewControllerAnimated:1 completion:0];
}

void sub_8BF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_8C18(uint64_t a1, char a2)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_8CCC;
  block[3] = &unk_14768;
  objc_copyWeak(&v6, (a1 + 40));
  v5 = *(a1 + 32);
  v7 = a2;
  dispatch_async(&_dispatch_main_q, block);

  objc_destroyWeak(&v6);
}

void sub_8CCC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _completeTransientStateWithModelObject:*(a1 + 32) success:*(a1 + 48)];
}

void sub_8F50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_8F6C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _reloadContents];
}

id sub_96B8(uint64_t a1)
{
  v2 = [*(a1 + 32) playlistSpecifiers];
  v3 = [v2 filteredArrayUsingPredicate:*(a1 + 40)];
  [*(a1 + 32) setPlaylistSpecifiers:v3];

  [*(a1 + 32) _unpinPlaylist:*(a1 + 48)];
  v4 = +[NMSMediaPinningManager sharedManager];
  [v4 setWorkoutPlaylistID:0];

  v6 = *(a1 + 64);
  v5 = *(a1 + 72);
  v7 = *(a1 + 56);
  v9.receiver = *(a1 + 32);
  v9.super_class = NMBridgeSyncedMusicController;
  objc_msgSendSuper2(&v9, "tableView:commitEditingStyle:forRowAtIndexPath:", v7, v5, v6);
  return [*(a1 + 32) _disableEditableAndButtonIfNothingLeftToEdit];
}

uint64_t sub_99A8(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_9ACC(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

id sub_9AEC(uint64_t a1)
{
  if (qword_190E0 != -1)
  {
    sub_9EEC();
  }

  v2 = qword_19068[a1];

  return v2;
}

void sub_9B40(id a1)
{
  v1 = os_log_create("com.apple.nanomusic", "NanoMusicCore");
  v2 = qword_19068[0];
  qword_19068[0] = v1;

  v3 = os_log_create("com.apple.nanomusic", "NanoMusicCore-Oversize");
  v4 = qword_19070;
  qword_19070 = v3;

  v5 = os_log_create("com.apple.nanomusic", "NanoMediaRemote");
  v6 = qword_19078;
  qword_19078 = v5;

  v7 = os_log_create("com.apple.nanomusic", "NanoMediaRemote-Oversize");
  v8 = qword_19080;
  qword_19080 = v7;

  v9 = os_log_create("com.apple.nanomusic", "NanoAudioControl");
  v10 = qword_19088;
  qword_19088 = v9;

  v11 = os_log_create("com.apple.nanomusic", "NanoMusicSync");
  v12 = qword_19090;
  qword_19090 = v11;

  v13 = os_log_create("com.apple.nanomusic", "NanoMusicSync-Oversize");
  v14 = qword_19098;
  qword_19098 = v13;

  v15 = os_log_create("com.apple.nanomusic", "NanoMediaUI");
  v16 = qword_190A0;
  qword_190A0 = v15;

  v17 = os_log_create("com.apple.nanomusic", "NanoMediaUI-Oversize");
  v18 = qword_190A8;
  qword_190A8 = v17;

  v19 = os_log_create("com.apple.nanomusic", "NanoMediaAPI");
  v20 = qword_190B0;
  qword_190B0 = v19;

  v21 = os_log_create("com.apple.nanomusic", "NanoMediaAPI-Oversize");
  v22 = qword_190B8;
  qword_190B8 = v21;

  v23 = os_log_create("com.apple.nanomusic", "NanoMediaTool");
  v24 = qword_190C0;
  qword_190C0 = v23;

  v25 = os_log_create("com.apple.nanomusic", "NanoMediaBridgeUI");
  v26 = qword_190D0;
  qword_190D0 = v25;

  v27 = os_log_create("com.apple.nanomusic", "NanoMediaBridgeUI-Oversize");
  v28 = qword_190D8;
  qword_190D8 = v27;

  qword_190C8 = os_log_create("com.apple.nanomusic", "NanoMediaAppActivity");

  _objc_release_x1();
}

void sub_9D1C(void *a1)
{
  v1 = [a1 userInfo];
  sub_9ACC(&dword_0, v2, v3, "[NMBridgeSyncedMusicController] Requesting playlists failed with error: %@", v4, v5, v6, v7, 2u);
}

void sub_9DA4(void *a1)
{
  v1 = [a1 userInfo];
  sub_9ACC(&dword_0, v2, v3, "[NMBridgeSyncedMusicController] Requesting albums failed with error: %@", v4, v5, v6, v7, 2u);
}

void sub_9E2C(uint64_t *a1, NSObject *a2)
{
  v2 = *a1;
  v3 = 134217984;
  v4 = v2;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "[NMBridgeSyncedMusicController] Unexpected picked music grouping: %ld", &v3, 0xCu);
}