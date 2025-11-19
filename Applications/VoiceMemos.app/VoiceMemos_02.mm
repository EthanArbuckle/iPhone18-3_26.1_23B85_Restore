void sub_100089490(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = OSLogForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1001B9A24();
    }
  }

  if (v5)
  {
    v8 = [*(a1 + 32) outputFileURL];
    v12 = 0;
    v9 = [AVURLAsset rc_updateFile:v8 withTranscriptionData:v5 error:&v12];
    v10 = v12;

    if ((v9 & 1) == 0)
    {
      v11 = OSLogForCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_1001B9A98();
      }
    }
  }

  dispatch_group_leave(*(a1 + 40));
}

id sub_100089AC0(uint64_t a1)
{
  result = [*(*(a1 + 32) + 16) currentAudioAndVideoCallCount];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void sub_10008AB60(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    objc_begin_catch(exception_object);
    JUMPOUT(0x10008AA0CLL);
  }

  _Unwind_Resume(exception_object);
}

void sub_10008ABE8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(a1 + 32);
    v7 = 0;
    v4 = [v3 endAccessSessionWithToken:a2 error:&v7];
    v5 = v7;
    if ((v4 & 1) == 0)
    {
      v6 = OSLogForCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_1001B9DC4();
      }
    }

    [*(a1 + 40) setEditingStatus:0];
  }
}

id sub_10008AC90(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = [*(a1 + 32) recordingAccessToken];
  (*(v2 + 16))(v2, v3);

  [*(a1 + 32) setRecordingAccessToken:0];
  [*(a1 + 40) setMode:0];
  v4 = *(a1 + 32);

  return [v4 setCurrentState:0];
}

void sub_10008AD14(uint64_t a1)
{
  [*(a1 + 32) setMode:3];
  v2 = [AVURLAsset rc_preciseTimingAssetWithURL:*(a1 + 40)];
  [v2 rc_durationInSeconds];
  v4 = v3;
  if (v2)
  {
    v5 = v3 > 0.00000011920929;
  }

  else
  {
    v5 = 0;
  }

  if (v5)
  {
    v8 = v3 + *(a1 + 112);
    [*(a1 + 48) setContentDuration:v3];
    RCTimeRangeMake();
    [*(a1 + 48) setTimeRangeInContentToUse:?];
    RCTimeRangeMake();
    [*(a1 + 48) setTimeRangeInComposition:?];
    v9 = *(a1 + 32);
    v10 = [RCComposition compositionMetadataURLForComposedAVURL:*(a1 + 56)];
    v32 = 0;
    v11 = [v9 _pushFileVersion:v10 error:&v32];
    v12 = v32;

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v34 = sub_100084F78;
    *&v35 = sub_100084F88;
    *(&v35 + 1) = [*(a1 + 64) compositionByOverdubbingWithFragment:*(a1 + 48)];
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_10008B120;
    v24[3] = &unk_10028BCB0;
    v30 = buf;
    v13 = *(a1 + 72);
    v14 = *(a1 + 32);
    v25 = v13;
    v26 = v14;
    v27 = *(a1 + 80);
    v28 = *(a1 + 88);
    v29 = *(a1 + 104);
    v31 = v8;
    v15 = objc_retainBlock(v24);
    if ([*(a1 + 88) silencing] && objc_msgSend(*(*&buf[8] + 40), "hasMultipleTracks"))
    {
      v16 = *(a1 + 32);
      v17 = *(v16 + 104);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10008B1C0;
      block[3] = &unk_10028BD00;
      block[4] = v16;
      v23 = buf;
      v20 = *(a1 + 48);
      v21 = *(a1 + 96);
      v22 = v15;
      dispatch_async(v17, block);
    }

    else
    {
      (v15[2])(v15);
    }

    _Block_object_dispose(buf, 8);
  }

  else
  {
    v6 = OSLogForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v18 = *(a1 + 40);
      *buf = 136315906;
      *&buf[4] = "[VMAudioService _mergeRecording:atTime:controller:shouldCaptureSpatial:error:]_block_invoke_2";
      *&buf[12] = 2112;
      *&buf[14] = v2;
      *&buf[22] = 2112;
      v34 = v18;
      LOWORD(v35) = 2048;
      *(&v35 + 2) = v4;
      _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%s -- Merged recording failed - asset = %@, url = %@, outputDuration = %f", buf, 0x2Au);
    }

    v7 = +[NSFileManager defaultManager];
    [v7 removeItemAtURL:*(a1 + 40) error:0];

    (*(*(a1 + 104) + 16))();
  }
}

id sub_10008B120(uint64_t a1)
{
  [*(*(*(a1 + 72) + 8) + 40) saveMetadataToDefaultLocation];
  v2 = +[NSFileManager defaultManager];
  [v2 removeItemAtURL:*(a1 + 32) error:0];

  [*(a1 + 40) __refreshRecording:*(a1 + 48) composition:*(*(*(a1 + 72) + 8) + 40) controller:*(a1 + 56)];
  [*(a1 + 40) setEditingStatus:2];
  (*(*(a1 + 64) + 16))();
  v3 = *(a1 + 80);
  v4 = *(a1 + 56);

  return [v4 setCurrentTime:v3];
}

void sub_10008B1C0(uint64_t a1)
{
  v2 = *(a1 + 64);
  v3 = *(*(v2 + 8) + 40);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10008B284;
  v6[3] = &unk_10028BCD8;
  v9 = v2;
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  [v4 __eraseSecondLayerInComposition:v3 outputFragment:v5 completionBlock:v6];
}

void sub_10008B284(void *a1, uint64_t a2)
{
  if (a2)
  {
    v3 = [*(*(a1[6] + 8) + 40) compositionByOverdubbingWithFragment:a2];
    v4 = *(a1[6] + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;
  }

  v6 = a1[4];
  v7 = a1[5];

  dispatch_async(v6, v7);
}

void sub_10008B3E0(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v6 = *(a1 + 32);
    v7 = *(a1 + 40);
    v8 = *(a1 + 56);
    v9 = *(a1 + 48);
    v13 = 0;
    v10 = [v6 _mergeRecording:v7 atTime:v9 controller:a3 shouldCaptureSpatial:&v13 error:v8];
    v11 = v13;
    if ((v10 & 1) == 0)
    {
      [*(a1 + 48) setRecordingError:v11];
    }
  }

  else
  {
    v12 = *(a1 + 48);

    [v12 setRecordingError:a4];
  }
}

void sub_10008B950(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    objc_begin_catch(exception_object);
    JUMPOUT(0x10008B8B8);
  }

  _Unwind_Resume(exception_object);
}

void sub_10008B9A0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = *(a1 + 32);
    v6 = 0;
    v3 = [v2 endAccessSessionWithToken:a2 error:&v6];
    v4 = v6;
    if ((v3 & 1) == 0)
    {
      v5 = OSLogForCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        sub_1001B9EAC();
      }
    }
  }
}

void sub_10008C088(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(a1 + 32);

    [v3 setRecordingError:a2];
  }

  else
  {
    v5 = +[RCRecordingTranscriptionService sharedInstance];
    v4 = [*(a1 + 32) recordingID];
    [v5 startTranscriptionFor:v4];
  }
}

void sub_10008CA7C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    v6 = *(a1 + 32);
    v10 = 0;
    v7 = [v6 endAccessSessionWithToken:a2 error:&v10];
    v8 = v10;
    if ((v7 & 1) == 0)
    {
      v9 = OSLogForCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v12 = "[VMAudioService _mixDownEditedRecording:completion:]_block_invoke";
        v13 = 2112;
        v14 = v8;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%s -- accessError = %@", buf, 0x16u);
      }
    }
  }

  else
  {
    v8 = OSLogForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v12 = "[VMAudioService _mixDownEditedRecording:completion:]_block_invoke";
      v13 = 2112;
      v14 = v5;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s -- finalization error = %@", buf, 0x16u);
    }
  }

  [*(a1 + 40) setEditingStatus:0];
  (*(*(a1 + 48) + 16))();
}

void sub_10008FC78(uint64_t a1)
{
  [*(a1 + 32) removeFromSuperview];
  v2 = [*(a1 + 40) centerContentContainerView];
  [v2 addSubview:*(a1 + 48)];
}

void sub_10008FF5C(uint64_t a1)
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [*(a1 + 32) _bottomElementsToHide];
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v8 + 1) + 8 * i);
        [v7 setHidden:*(a1 + 48)];
        [v7 setAlpha:*(a1 + 40)];
      }

      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

void sub_100092990(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location)
{
  objc_destroyWeak((v22 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100092A00(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained removeFromParentViewController];
}

id sub_100092BC0(uint64_t a1)
{
  [*(a1 + 32) performControlsAction:5 position:*(a1 + 40) source:0.0];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);

  return [v2 showAlertForSaveAsNew:v3];
}

void sub_1000933CC(uint64_t a1)
{
  if (*(a1 + 40))
  {
    v1 = 0.0;
  }

  else
  {
    v1 = 1.0;
  }

  v2 = [*(a1 + 32) descriptionView];
  [v2 setAlpha:v1];
}

void sub_1000941C0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

id sub_100094C4C(void *a1)
{
  v1 = a1;
  v2 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v1, "count")}];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = v1;
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [*(*(&v10 + 1) + 8 * i) folderControllerID];
        [v2 addObject:v8];
      }

      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  return v2;
}

BOOL sub_100094FF0(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 folderType])
  {
    v4 = [*(a1 + 32) playableCountForFolder:v3] != 0;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

BOOL sub_100095240(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 folderType])
  {
    v4 = [*(a1 + 32) playableCountForFolder:v3] != 0;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

id sub_100095850(unsigned int a1)
{
  *v8 = 0;
  v9 = 0;
  v10 = 0;
  v2 = bswap32(a1);
  *&v8[1] = v2;
  if ((v2 & 0x80) != 0)
  {
    if (!__maskrune(v2, 0x40000uLL))
    {
      goto LABEL_17;
    }
  }

  else if ((_DefaultRuneLocale.__runetype[v2] & 0x40000) == 0)
  {
    goto LABEL_17;
  }

  v3 = v2 >> 8;
  if ((v2 & 0x8000) != 0)
  {
    if (!__maskrune(v3, 0x40000uLL))
    {
      goto LABEL_17;
    }
  }

  else if ((_DefaultRuneLocale.__runetype[v3] & 0x40000) == 0)
  {
    goto LABEL_17;
  }

  v4 = v2 << 8 >> 24;
  if ((v2 & 0x800000) != 0)
  {
    if (!__maskrune(v4, 0x40000uLL))
    {
      goto LABEL_17;
    }
  }

  else if ((_DefaultRuneLocale.__runetype[v4] & 0x40000) == 0)
  {
    goto LABEL_17;
  }

  v5 = v2 >> 24;
  if (v2 < 0)
  {
    if (__maskrune(v5, 0x40000uLL))
    {
      goto LABEL_15;
    }
  }

  else if ((_DefaultRuneLocale.__runetype[v5] & 0x40000) != 0)
  {
LABEL_15:
    strcpy(&v8[5], "'");
    v8[0] = 39;
    goto LABEL_18;
  }

LABEL_17:
  __sprintf_chk(v8, 0, 0x14uLL, "%d", a1);
LABEL_18:
  v6 = [NSString stringWithUTF8String:v8];

  return v6;
}

BOOL sub_1000959C0(signed int a1, void *a2)
{
  if (a1 && a2)
  {
    v7 = NSLocalizedDescriptionKey;
    v4 = sub_100095850(a1);
    v8 = v4;
    v5 = [NSDictionary dictionaryWithObjects:&v8 forKeys:&v7 count:1];
    *a2 = [NSError errorWithDomain:NSOSStatusErrorDomain code:a1 userInfo:v5];
  }

  return a1 == 0;
}

uint64_t sub_100095AC4(OSType a1, OSType a2, AudioComponentInstance *a3)
{
  inDesc.componentType = a1;
  inDesc.componentSubType = a2;
  *&inDesc.componentManufacturer = 1634758764;
  inDesc.componentFlagsMask = 0;
  Next = AudioComponentFindNext(0, &inDesc);
  return AudioComponentInstanceNew(Next, a3);
}

uint64_t sub_100095B14(OpaqueAudioComponentInstance *a1, void *inData, int a3)
{
  if (a3)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  return AudioUnitSetProperty(a1, 8u, v3, 0, inData, 0x28u);
}

void sub_100095BC0(unsigned int *a1, unsigned int a2, int a3, int a4)
{
  *a1 = a2;
  if (a2)
  {
    v5 = (4 * a3);
    v6 = (a1 + 4);
    v7 = a2;
    do
    {
      *(v6 - 2) = 1;
      *(v6 - 1) = v5;
      if (a4)
      {
        bzero(*v6, v5);
      }

      v6 += 2;
      --v7;
    }

    while (v7);
  }
}

_DWORD *sub_100095C2C(_DWORD *result, _DWORD *a2)
{
  v2 = *result;
  *a2 = *result;
  if (v2)
  {
    v3 = result;
    v4 = 0;
    v5 = (result + 4);
    v6 = a2 + 4;
    do
    {
      v7 = *(v5 - 1);
      *(v6 - 2) = *(v5 - 2);
      *(v6 - 1) = v7;
      v9 = *v6;
      v6 += 2;
      v8 = v9;
      v10 = *v5;
      v5 += 2;
      result = memcpy(v8, v10, v7);
      ++v4;
    }

    while (v4 < *v3);
  }

  return result;
}

char *sub_100095C94(int a1, unsigned int a2)
{
  LODWORD(v3) = a1;
  v4 = malloc_type_malloc(16 * (a1 - 1) + 24, 0x10800404ACF7207uLL);
  v5 = v4;
  if (v3)
  {
    v6 = 4 * a2;
    v7 = (v4 + 16);
    v3 = v3;
    do
    {
      *v7 = malloc_type_malloc(v6, 0x100004052888210uLL);
      v7 += 2;
      --v3;
    }

    while (v3);
  }

  return v5;
}

void sub_100095D28(void **a1, unsigned int a2)
{
  if (a2)
  {
    v3 = a2;
    v4 = a1 + 2;
    do
    {
      v5 = *v4;
      v4 += 2;
      free(v5);
      --v3;
    }

    while (v3);
  }

  free(a1);
}

float sub_100095D80(_DWORD *a1, int a2, int a3, float result, float a5)
{
  if (a2)
  {
    v5 = 0;
    v8 = *a1;
    v6 = (a1 + 4);
    v7 = v8;
    do
    {
      if (v7)
      {
        v9 = v7;
        v10 = v6;
        do
        {
          v11 = *v10;
          v10 += 2;
          *(v11 + 4 * (v5 + a3)) = result * *(v11 + 4 * (v5 + a3));
          --v9;
        }

        while (v9);
      }

      result = fmin(fmax((result + a5), 0.0), 1.0);
      ++v5;
    }

    while (v5 != a2);
  }

  return result;
}

void sub_100095DE4(_DWORD *a1, int a2, int a3)
{
  if (*a1)
  {
    v4 = 0;
    v5 = a3;
    v6 = 4 * a2;
    v7 = 4;
    do
    {
      bzero((*&a1[v7] + 4 * v5), v6);
      ++v4;
      v7 += 4;
    }

    while (v4 < *a1);
  }
}

uint64_t *sub_100095E54(uint64_t *result, unsigned int a2, uint64_t *a3, unsigned int a4, unsigned int a5, unsigned int a6)
{
  if (a5)
  {
    v7 = result;
    v8 = a4;
    v9 = a2;
    v10 = 4 * a6;
    v11 = a5;
    do
    {
      v12 = *a3++;
      v13 = (v12 + 4 * v8);
      v14 = *v7++;
      result = memcpy(v13, (v14 + 4 * v9), v10);
      --v11;
    }

    while (v11);
  }

  return result;
}

void sub_1000966B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id sub_1000966DC(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v7 = a4;
  v8 = [a2 dequeueReusableCellWithReuseIdentifier:@"kFolderCellReuseIdentifier" forIndexPath:a3];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v10 = [WeakRetained cellsHashTable];
  [v10 addObject:v8];

  v11 = objc_loadWeakRetained((a1 + 32));
  v12 = [v11 foldersController];
  v13 = [v12 folderWithIdentifier:v7];

  v14 = [RCFolderDisplayModel folderDisplayModelWithFolderModel:v13];
  v15 = objc_loadWeakRetained((a1 + 32));
  v16 = [v15 currentActiveFolderViewController];

  if (v16)
  {
    v17 = [v16 folderUUID];
    if (v17)
    {
      v18 = v17;
      v19 = [v14 UUID];
      v20 = [v16 folderUUID];
      v21 = [v19 isEqualToString:v20];

      if (v21)
      {
        v22 = [v14 displayName];
        [v16 setFolderTitle:v22];
      }
    }
  }

  v23 = objc_loadWeakRetained((a1 + 32));
  [v23 _configureCell:v8 withFolderDisplayModel:v14];

  return v8;
}

id sub_100096920(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = [WeakRetained _layoutListAppearance];

  v8 = [[UICollectionLayoutListConfiguration alloc] initWithAppearance:v7];
  v9 = objc_loadWeakRetained((a1 + 32));
  [v8 setShowsSeparators:{objc_msgSend(v9, "_showsSeparators")}];

  v10 = objc_loadWeakRetained((a1 + 32));
  v11 = [v10 _trailingSwipeActionsConfigurationProvider];
  [v8 setTrailingSwipeActionsConfigurationProvider:v11];

  if (a2 == 1)
  {
    [v8 setHeaderMode:1];
  }

  v12 = [NSCollectionLayoutSection sectionWithListConfiguration:v8 layoutEnvironment:v5];
  if (!a2)
  {
    v13 = objc_loadWeakRetained((a1 + 32));
    [v13 _builtInFolderSectionTopPadding];
    v15 = v14;

    if (v15 > 0.0)
    {
      v16 = [NSCollectionLayoutDimension fractionalWidthDimension:1.0];
      v17 = [NSCollectionLayoutDimension absoluteDimension:v15];
      v18 = [NSCollectionLayoutSize sizeWithWidthDimension:v16 heightDimension:v17];

      v19 = [NSCollectionLayoutBoundarySupplementaryItem boundarySupplementaryItemWithLayoutSize:v18 elementKind:@"kFolderCollectionElementKindSectionSpacer" alignment:1];
      v22 = v19;
      v20 = [NSArray arrayWithObjects:&v22 count:1];
      [v12 setBoundarySupplementaryItems:v20];
    }
  }

  return v12;
}

id sub_1000973F0(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 section])
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v5 = [WeakRetained foldersController];
    v6 = [v5 folderAtIndexPath:v3];

    v7 = +[RCRecorderStyleProvider sharedStyleProvider];
    if ([v7 usesVectorGlyph])
    {
      v8 = 0;
    }

    else
    {
      v10 = +[NSBundle mainBundle];
      v8 = [v10 localizedStringForKey:@"DELETE" value:&stru_100295BB8 table:0];
    }

    v21 = _NSConcreteStackBlock;
    v22 = 3221225472;
    v23 = sub_1000976D8;
    v24 = &unk_10028BF20;
    objc_copyWeak(&v26, (a1 + 32));
    v11 = v6;
    v25 = v11;
    v12 = [UIContextualAction contextualActionWithStyle:1 title:v8 handler:&v21];
    v13 = [UIColor systemRedColor:v21];
    [v12 setBackgroundColor:v13];

    v14 = [v7 swipeTrashImage];
    [v12 setImage:v14];

    v15 = +[NSBundle mainBundle];
    v16 = [v15 localizedStringForKey:@"AX_DELETE" value:&stru_100295BB8 table:0];
    v17 = [v12 image];
    [v17 setAccessibilityLabel:v16];

    v18 = [v12 image];
    [v18 setAccessibilityIdentifier:@"FoldersList/SwipeAction/Delete"];

    v27 = v12;
    v19 = [NSArray arrayWithObjects:&v27 count:1];
    v9 = [UISwipeActionsConfiguration configurationWithActions:v19];

    objc_destroyWeak(&v26);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

void sub_1000976D8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v6 = [WeakRetained selectionDelegate];
  v7 = *(a1 + 32);
  v8 = objc_loadWeakRetained((a1 + 40));
  [v6 deleteFolder:v7 controller:v8 completionBlock:v5];
}

void sub_100098C08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, id a28, id a29)
{
  objc_destroyWeak(&a21);
  objc_destroyWeak(&a29);
  objc_destroyWeak(&a28);
  objc_destroyWeak((v29 - 120));
  objc_destroyWeak((v29 - 112));
  _Unwind_Resume(a1);
}

void sub_100098C5C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = [WeakRetained isSetup];

  if ((v3 & 1) == 0)
  {
    v4 = objc_loadWeakRetained((a1 + 56));
    v5 = [v4 selectionDelegate];
    v6 = objc_loadWeakRetained((a1 + 48));
    v7 = [v6 recordingsCollectionViewController];
    [v7 setFolderSelectionDelegate:v5];

    v8 = objc_loadWeakRetained((a1 + 56));
    v9 = [v8 libraryActionHandler];
    v10 = objc_loadWeakRetained((a1 + 48));
    [v10 setLibraryActionHandler:v9];

    v11 = objc_loadWeakRetained((a1 + 56));
    v12 = [v11 recordingViewControllerDelegate];
    v13 = objc_loadWeakRetained((a1 + 48));
    [v13 setRecordingViewControllerDelegate:v12];

    v14 = *(a1 + 32);
    v15 = objc_loadWeakRetained((a1 + 48));
    [v15 setFolderTitle:v14];

    v16 = objc_loadWeakRetained((a1 + 48));
    v17 = objc_loadWeakRetained((*(a1 + 40) + 64));
    [v16 setUndoManager:v17];

    v18 = objc_loadWeakRetained((a1 + 48));
    [v18 setIsSetup:1];
  }
}

void sub_100098DFC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained recordingsCollectionViewController];
  [v3 setFolderSelectionDelegate:0];

  v4 = objc_loadWeakRetained((a1 + 32));
  [v4 setLibraryActionHandler:0];

  v5 = objc_loadWeakRetained((a1 + 32));
  [v5 setRecordingViewControllerDelegate:0];

  v6 = objc_loadWeakRetained((a1 + 32));
  [v6 setIsSetup:0];
}

void sub_10009C944(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = qword_1002D7100;
  qword_1002D7100 = v1;
}

NSArray *__cdecl sub_10009CB3C(id a1, NSArray *a2)
{
  v2 = a2;
  v3 = +[NSMutableArray array];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v4 = v2;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v19;
    v8 = AVTimeFormatter_ptr;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v19 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v18 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v11 = v10;
          v10 = v11;
          if ([v11 action] == "delete:")
          {
            v12 = +[RCRecorderStyleProvider sharedStyleProvider];
            [v12 trashImage];
            v13 = v8;
            v15 = v14 = v4;

            v16 = [v11 title];
            v10 = [UIKeyCommand commandWithTitle:v16 image:v15 action:"delete:" input:@"\b" modifierFlags:0 propertyList:0];

            v4 = v14;
            v8 = v13;
          }
        }

        [v3 addObject:v10];
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v6);
  }

  return v3;
}

void sub_10009CE20(id a1, UIAction *a2)
{
  v2 = +[NSBundle mainBundle];
  v12 = [v2 localizedStringForKey:@"SETTINGS_RESET_IDENTIFIER_ALERT_TITLE" value:&stru_100295BB8 table:0];

  v3 = +[NSBundle mainBundle];
  v4 = [v3 localizedStringForKey:@"SETTINGS_RESET_IDENTIFIER_MESSAGE" value:&stru_100295BB8 table:0];

  v5 = [UIAlertController alertControllerWithTitle:v12 message:v4 preferredStyle:1];
  v6 = +[NSBundle mainBundle];
  v7 = [v6 localizedStringForKey:@"CANCEL" value:&stru_100295BB8 table:0];

  v8 = [UIAlertAction actionWithTitle:v7 style:1 handler:0];
  [v5 addAction:v8];
  v9 = +[NSBundle mainBundle];
  v10 = [v9 localizedStringForKey:@"SETTINGS_RESET_IDENTIFIER" value:&stru_100295BB8 table:0];

  v11 = [UIAlertAction actionWithTitle:v10 style:0 handler:&stru_10028C050];
  [v5 addAction:v11];
  [v5 rc_showInMainWindow];
}

void sub_10009CFD4(id a1, UIAlertAction *a2)
{
  v2 = +[NSUserDefaults standardUserDefaults];
  [v2 setBool:1 forKey:@"RCAppAnalyticsUserIDResetKey"];
}

id sub_10009D0A8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[NSMutableArray array];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();
        [v4 addObject:{v10, v14}];
        if (isKindOfClass)
        {
          v12 = [*(a1 + 32) resetIdentifierAction];
          [v4 addObject:v12];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  return v4;
}

void sub_10009E280(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setHasMetTimeThreshold:1];

  v6 = objc_loadWeakRetained((a1 + 32));
  v3 = [v6 delegate];
  v4 = objc_loadWeakRetained((a1 + 32));
  v5 = [v4 UUID];
  [v3 backupTimerFiredForUUID:v5];
}

void sub_10009F000(uint64_t a1)
{
  v2 = [*(a1 + 32) browseFoldersViewController];
  v1 = [v2 recordingViewController];
  [v1 updateForSizeChange];
}

id sub_10009F2D0(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = *(a1 + 32);

  return [v3 _displayMultiLayerAlertIfNeeded];
}

uint64_t sub_10009F3BC(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_10009F77C(uint64_t a1)
{
  [*(a1 + 32) setBool:1 forKey:@"RCLayeredRecordingsSyncAlertWasDismissed"];
  v2 = [*(a1 + 40) mainControllerHelper];
  [v2 setWillMigrateFromSingleLayerToMultiLayer:0];
}

uint64_t sub_10009FBC8(uint64_t a1)
{
  v2 = [*(a1 + 32) mainControllerHelper];
  [v2 startCapturing:*(a1 + 40)];

  result = *(a1 + 48);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

void sub_1000A0090(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v3 - 104));
  _Unwind_Resume(a1);
}

void sub_1000A00B4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained browseFoldersViewController];
  v4 = [v3 activeRecordingsCollectionViewController];
  objc_initWeak(&location, v4);

  v5 = objc_loadWeakRetained(&location);
  [v5 willSelectItemWithUUID:*(a1 + 32)];

  v6 = objc_loadWeakRetained(&location);
  [v6 selectItemWithUUID:*(a1 + 32) animated:0];

  v7 = objc_loadWeakRetained((a1 + 40));
  [v7 didSelectForUUID:*(a1 + 32) resetPosition:0 force:0];

  v8 = objc_loadWeakRetained((a1 + 40));
  v9 = [v8 mainControllerHelper];
  LODWORD(v4) = [v9 isPlayingForUUID:*(a1 + 32)];

  if (v4)
  {
    v10 = objc_loadWeakRetained((a1 + 40));
    v11 = [v10 playbackViewController];
    [v11 showPlayingForUUID:*(a1 + 32)];
  }

  objc_destroyWeak(&location);
}

void sub_1000A01E8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained browseFoldersViewController];
  v4 = [v3 activeRecordingsCollectionViewController];
  objc_initWeak(&location, v4);

  v5 = objc_loadWeakRetained(&location);
  v6 = [v5 viewIfLoaded];
  if (!v6)
  {

    goto LABEL_5;
  }

  v7 = objc_loadWeakRetained(&location);
  v8 = [v7 viewIfLoaded];
  v9 = [v8 window];

  if (!v9)
  {
LABEL_5:
    v10 = *(a1 + 32);
    v11 = objc_loadWeakRetained(&location);
    [v11 setViewDidAppearCompletionBlock:v10];

    goto LABEL_6;
  }

  (*(*(a1 + 32) + 16))();
LABEL_6:
  objc_destroyWeak(&location);
}

id sub_1000A0304(uint64_t a1)
{
  v2 = [*(a1 + 32) recordingsModelInteractor];
  v3 = [v2 isRecentlyDeletedForUUID:*(a1 + 40)];

  v4 = *(a1 + 32);
  v5 = *(a1 + 48);
  if (v3)
  {
    v6 = *(a1 + 48);

    return [v4 goToRecentlyDeletedIfNeededWithCompletion:{v6, v5}];
  }

  else
  {

    return [v4 goToAllRecordingsIfNeeded:1 completion:v5];
  }
}

void sub_1000A1548(uint64_t a1)
{
  v9 = _NSConcreteStackBlock;
  v10 = 3221225472;
  v11 = sub_1000A164C;
  v12 = &unk_10028A650;
  v2 = *(a1 + 40);
  v13 = *(a1 + 32);
  v14 = v2;
  v3 = objc_retainBlock(&v9);
  v4 = v3;
  if (*(a1 + 48) == 1)
  {
    (v3[2])(v3);
  }

  else
  {
    v5 = [*(*(a1 + 32) + 72) isRecentlyDeletedForUUID:{*(a1 + 40), v9, v10, v11, v12, v13}];
    v6 = [*(a1 + 32) browseFoldersViewController];
    v7 = v6;
    if (v5)
    {
      v8 = 3;
    }

    else
    {
      v8 = 0;
    }

    [v6 goToBuiltInFolderOfType:v8 animated:0 completion:v4];
  }
}

void sub_1000A164C(uint64_t a1)
{
  +[CATransaction begin];
  v3 = _NSConcreteStackBlock;
  v4 = 3221225472;
  v5 = sub_1000A16FC;
  v6 = &unk_10028A650;
  v2 = *(a1 + 40);
  v7 = *(a1 + 32);
  v8 = v2;
  [CATransaction setCompletionBlock:&v3];
  [CATransaction commit:v3];
}

void sub_1000A16FC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v5 = [v1 browseFoldersViewController];
  v3 = [v5 currentActiveFolderViewController];
  v4 = [v3 recordingsCollectionViewController];
  [v1 _selectRecordingWithUUID:v2 inRecordingsCollectionViewController:v4];
}

void sub_1000A26F4(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {
    v3 = [*(a1 + 32) browseFoldersViewController];
    v4 = [v3 activeRecordingsCollectionViewController];

    if ([v4 isEditing])
    {
      [v4 endEditing];
    }
  }
}

void sub_1000A3670(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000A368C(uint64_t a1)
{
  v1 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setPresentedSelectFolderViewController:v1];
}

void sub_1000A3E68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000A3E8C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained setPresentedPlaybackSettingsViewController:*(a1 + 32)];
  [WeakRetained setPresentingPlaybackSettingsViewController:*(a1 + 40)];
  v2 = [WeakRetained mainControllerHelper];
  v3 = [WeakRetained selectedUUID];
  [v2 setLooping:1 forUUID:v3];
}

void sub_1000A4630(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000A465C(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = +[NSBundle mainBundle];
  v4 = [v3 localizedStringForKey:@"NEW_FOLDER_NAME_PLACEHOLDER" value:&stru_100295BB8 table:0];
  [v5 setPlaceholder:v4];

  [v5 addTarget:*(a1 + 32) action:"_newFolderTextDidChange:" forControlEvents:0x20000];
  [v5 setAutocapitalizationType:1];
}

void sub_1000A4718(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = [WeakRetained textFields];
  v4 = [v3 objectAtIndexedSubscript:0];
  v6 = [v4 text];

  v5 = [*(a1 + 32) recordingsModelInteractor];
  if ([v5 userFolderExistsWithName:v6])
  {
    [*(a1 + 32) _presentNameTakenAlertWithName:v6 sourceController:*(a1 + 40)];
  }

  else if (([v5 createUserFolderWithName:v6] & 1) == 0)
  {
    [*(a1 + 32) _showFailedNewFolderAlert];
  }
}

void sub_1000A4AE0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setPlaceholder:v3];
  [v4 addTarget:*(a1 + 40) action:"_renamingTextDidChange:" forControlEvents:0x20000];
  [v4 setAutocapitalizationType:1];
}

void sub_1000A4B54(uint64_t a1)
{
  v5 = [*(a1 + 32) recordingsModelInteractor];
  v2 = [*(a1 + 40) text];
  if ([v5 userFolderExistsWithName:v2])
  {
    [*(a1 + 32) _presentNameTakenAlertWithName:v2 sourceController:*(a1 + 48)];
  }

  else
  {
    v3 = +[RCApplicationModel sharedApplicationModel];
    v4 = [v3 folderWithName:*(a1 + 56)];
    [*(a1 + 32) renameFolder:v4 toName:v2];
  }
}

id sub_1000A59F8(uint64_t a1, void *a2)
{
  v2 = *(a1 + 40);
  if (*(a1 + 32))
  {
    return [a2 moveRecordingsWithUUIDs:v2 toFolderWithUUID:?];
  }

  else
  {
    return [a2 _removeFromUserFolderRecordingsWithUUIDs:v2];
  }
}

void sub_1000A611C(uint64_t a1)
{
  v2 = [*(a1 + 32) UUID];
  if (*(a1 + 56) != 1)
  {
    [*(a1 + 40) selectRecordingWithUUID:v2 returnToBrowse:0];
  }

  [*(a1 + 40) didSelectForUUID:v2 resetPosition:0 force:0];
  v3 = [*(a1 + 40) browseFoldersViewController];
  v4 = [v3 recordingViewController];

  objc_initWeak(&location, *(a1 + 40));
  v10 = _NSConcreteStackBlock;
  v11 = 3221225472;
  v12 = sub_1000A62EC;
  v13 = &unk_10028C220;
  v5 = v4;
  v14 = v5;
  objc_copyWeak(&v19, &location);
  v15 = *(a1 + 48);
  v16 = *(a1 + 32);
  v6 = v2;
  v20 = *(a1 + 64);
  v7 = *(a1 + 40);
  v17 = v6;
  v18 = v7;
  v8 = objc_retainBlock(&v10);
  v9 = v8;
  if (*(a1 + 56) == 1)
  {
    (v8[2])(v8);
  }

  else
  {
    [*(a1 + 40) setState:1 withOptions:1 completion:{v8, v10, v11, v12, v13, v14, v15, v16}];
  }

  [*(a1 + 40) updateQuickActions];

  objc_destroyWeak(&v19);
  objc_destroyWeak(&location);
}

void sub_1000A62D0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 72));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_1000A62EC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  v3 = [WeakRetained mainControllerHelper];
  v4 = [v3 timeController];
  [*(a1 + 32) setActiveTimeController:v4];

  v5 = objc_loadWeakRetained((a1 + 72));
  v6 = [v5 mainControllerHelper];
  v7 = [v6 liveTranscription];
  [*(a1 + 32) setLiveTranscription:v7];

  [*(a1 + 32) startEditWithComposition:*(a1 + 40) displayModel:*(a1 + 48)];
  v8 = *(a1 + 32);
  v9 = objc_loadWeakRetained((a1 + 72));
  v10 = [v9 playbackSettings];
  [v8 updateWithPlaybackSettings:v10];

  v11 = objc_loadWeakRetained((a1 + 72));
  v12 = [v11 mainControllerHelper];
  LODWORD(v10) = [v12 isPlayingForUUID:*(a1 + 56)];

  if (v10)
  {
    [*(a1 + 32) showPlayingForUUID:*(a1 + 56)];
  }

  if (*(a1 + 80) == 1)
  {
    v13 = [*(a1 + 64) mainControllerHelper];
    [v13 enterTrimMode];

    v14 = [*(a1 + 64) browseFoldersViewController];
    v15 = [v14 recordingViewController];
    [v15 updateForTrimMode];
  }

  if ([*(a1 + 64) shouldOpenTranscriptAfterNavigatingToEdit])
  {
    [*(a1 + 64) setShouldOpenTranscriptAfterNavigatingToEdit:0];
    [*(a1 + 64) toggleTranscriptView];
  }

  dispatch_async(&_dispatch_main_q, &stru_10028C1F8);
}

void sub_1000A6490(id a1)
{
  v1 = +[UIApplication sharedApplication];
  v2 = [v1 isRunningTest];

  if (v2)
  {
    v4 = +[UIApplication sharedApplication];
    v3 = [v4 delegate];
    [v3 ppt_didShowVoiceMemoEditor];
  }
}

void sub_1000A66D8(uint64_t a1)
{
  v2 = [*(a1 + 32) browseFoldersViewController];
  v3 = [v2 activeRecordingsCollectionViewController];

  if ((*(a1 + 56) & 1) == 0)
  {
    [v3 deselectSelectedItem];
    v4 = [*(a1 + 32) playbackViewController];
    [v4 updateWithRecordingModel:*(a1 + 40)];

    v5 = [*(a1 + 32) browseFoldersViewController];
    v6 = [v5 currentActiveFolderViewController];

    v7 = *(a1 + 32);
    v8 = [*(a1 + 40) UUID];
    v9 = [v6 folderType];
    v10 = [v6 folderTitle];
    [v7 _setCorrectOriginalFolderForRecordingWithUUID:v8 folderType:v9 userFolderName:v10];
  }

  [v3 setEditing:0];
  v11 = [*(a1 + 32) browseFoldersViewController];
  v12 = [v11 recordingViewController];

  if ((*(a1 + 56) & 1) == 0)
  {
    v13 = [*(a1 + 40) UUID];
    [v3 prepareForAdditionOfNewRecordingWithUUID:v13];

    if ([v12 isDisplayingTranscriptView])
    {
      [v12 toggleTranscriptView];
    }

    [v12 setWaveformDataSource:0];
  }

  v14 = [*(a1 + 32) mainControllerHelper];
  [v12 updateForRecordingStart:{objc_msgSend(v14, "shouldSaveAsNew")}];

  [v12 updateWithRecordingModel:*(a1 + 40)];
  v15 = [v12 view];
  v16 = [v15 displayStyle] == 1;

  objc_initWeak(&location, *(a1 + 32));
  v17 = *(a1 + 32);
  v23 = _NSConcreteStackBlock;
  v24 = 3221225472;
  v25 = sub_1000A69CC;
  v26 = &unk_10028C290;
  v29 = v16;
  v18 = v3;
  v27 = v18;
  objc_copyWeak(&v28, &location);
  [v17 setState:1 withOptions:0 completion:&v23];
  v19 = [*(a1 + 32) mainControllerHelper];
  v20 = [v19 timeController];
  [v12 setActiveTimeController:v20];

  v21 = [*(a1 + 32) mainControllerHelper];
  v22 = [v21 liveTranscription];
  [v12 setLiveTranscription:v22];

  [v12 setWaveformDataSource:*(a1 + 48)];
  [*(a1 + 32) updateQuickActions];
  objc_destroyWeak(&v28);

  objc_destroyWeak(&location);
}

void sub_1000A69AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000A69CC(uint64_t a1)
{
  dispatch_async(&_dispatch_main_q, &stru_10028C268);
  if (*(a1 + 48) == 1)
  {
    [*(a1 + 32) deselectSelectedItem];
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained splitViewController];

  [v3 hidePrimaryColumnIfNeeded];
}

void sub_1000A6A54(id a1)
{
  v1 = +[UIApplication sharedApplication];
  v2 = [v1 isRunningTest];

  if (v2)
  {
    v4 = +[UIApplication sharedApplication];
    v3 = [v4 delegate];
    [v3 ppt_didStartCyclerRecording];
  }
}

void sub_1000A6EBC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000A6ED8(uint64_t a1)
{
  dispatch_async(&_dispatch_main_q, &stru_10028C2B0);
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained mainControllerHelper];
  [v2 promptForRatingIfNeeded];
}

void sub_1000A6F48(id a1)
{
  v1 = +[UIApplication sharedApplication];
  v2 = [v1 isRunningTest];

  if (v2)
  {
    v4 = +[UIApplication sharedApplication];
    v3 = [v4 delegate];
    [v3 ppt_didEndCyclerRecording];
  }
}

void sub_1000A903C(id a1, NSString *a2)
{
  v2 = a2;
  v3 = +[UIPasteboard generalPasteboard];
  [v3 setString:v2];
}

void sub_1000AA4DC(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0x20u);
}

void sub_1000AA540(id a1)
{
  v3[0] = UIActivityTypePrint;
  v3[1] = UIActivityTypeAssignToContact;
  v3[2] = UIActivityTypeSaveToCameraRoll;
  v3[3] = UIActivityTypeAddToReadingList;
  v3[4] = UIActivityTypePostToFacebook;
  v3[5] = UIActivityTypePostToWeibo;
  v3[6] = UIActivityTypePostToFlickr;
  v3[7] = UIActivityTypePostToVimeo;
  v3[8] = UIActivityTypePostToTencentWeibo;
  v3[9] = @"com.apple.VoiceMemos.VoiceMemosShareExtension";
  v1 = [NSArray arrayWithObjects:v3 count:10];
  v2 = qword_1002D7110;
  qword_1002D7110 = v1;
}

id sub_1000AE6B0(uint64_t a1)
{
  [*(a1 + 32) _updateVisibleAreaWithAnimationDuration:*(a1 + 56)];
  [*(a1 + 32) _updateSelectionOverlayWithAnimationDuration:*(a1 + 56)];
  [*(a1 + 32) _updateBackgroundWaveformHighlight];
  if (*(*(*(a1 + 48) + 8) + 24) == 1 && [*(a1 + 32) displayStyle] != 1)
  {
    v2 = [*(a1 + 32) delegate];
    [v2 waveformViewController:*(*(a1 + 32) + 280) didChangeToVisibleTimeRange:*(*(a1 + 32) + 288)];
  }

  v3 = *(a1 + 40);

  return [v3 setAlpha:0.0];
}

uint64_t sub_1000AE758(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 1);
  }

  return result;
}

uint64_t sub_1000AEA98(uint64_t a1, void *a2, uint64_t a3, int a4, int a5, double a6)
{
  v11 = a2;
  if (!a5 || a3 != 1 && a5 > 0)
  {
    v12 = 0;
    goto LABEL_5;
  }

  v12 = 0;
  if (a5 >= 0 || a3 == -1)
  {
    v15 = fmax(a6 / *(a1 + 40), 0.0);
    if (v15 < 0.25)
    {
      v16 = *(a1 + 32);
      v17 = *(v16 + 280);
      v18 = *(v16 + 312);
      v19 = *(v16 + 320);
      v20 = ((1.0 - v15 * 4.0) * 0.025 + v15 * 4.0 * 0.0125) * (*(v16 + 136) * a5 * *(v16 + 128));
      [*(v16 + 24) selectedTimeRangeMinimumDuration];
      v22 = v18 + v21;
      if (v18 + v21 < v19 + v20)
      {
        v22 = v19 + v20;
      }

      v23 = v19 - v21;
      if (v23 >= v18 + v20)
      {
        v23 = v18 + v20;
      }

      if (a4)
      {
        v24 = v22;
      }

      else
      {
        v24 = v19;
      }

      if (a4)
      {
        v23 = v18;
      }

      v25 = fmax(v23, 0.0);
      v26 = *(a1 + 32);
      if (*(v26 + 264) >= v24)
      {
        v27 = v24;
      }

      else
      {
        v27 = *(v26 + 264);
      }

      v28 = v25 - v23;
      v29 = v27 - v24;
      if (a4)
      {
        v30 = v29;
      }

      else
      {
        v30 = v28;
      }

      RCTimeRangeMake();
      v33 = *(a1 + 32);
      v34 = *(v33 + 272);
      if (v34 > 0.0 && v34 < *(v33 + 264))
      {
        if (a3 == -1)
        {
          RCTimeRangeMake();
          if (v25 < v31)
          {
            v35 = *(a1 + 32);
            v27 = v25 + v35[34];
            goto LABEL_44;
          }
        }

        else
        {
          RCTimeRangeMake();
          if (v27 > v32)
          {
            v35 = *(a1 + 32);
            v25 = v27 - v35[34];
LABEL_44:
            v38 = v17 + v20 + v30;
            [v35 _setSelectedTimeRange:0 updateVisibleTimeRange:0 updateWaveformViewContentSizeAndOffset:1 notifyDelegate:v25 animationDuration:{v27, 0.0}];
            v39 = *(a1 + 32);
            v40 = 1.0;
            if (v15 < 0.125)
            {
              v40 = *(v39 + 128) * 1.1;
            }

            *(v39 + 128) = v40;
            v41 = v38 + *(a1 + 40) * 0.5;
            WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 224));
            [WeakRetained waveformViewController:*(a1 + 32) didScrubToTime:0 finished:v41];

            v12 = 1;
            goto LABEL_5;
          }
        }
      }

      v12 = 0;
      if (v25 < v31)
      {
        goto LABEL_5;
      }

      v36 = v27 >= v31 && v25 <= v32;
      if (!v36 || v27 > v32)
      {
        goto LABEL_5;
      }

      v35 = *(a1 + 32);
      goto LABEL_44;
    }
  }

LABEL_5:

  return v12;
}

void sub_1000AEE9C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v6 = v3;
  v5 = [v3 superview];

  if (v4 != v5)
  {
    [*(a1 + 32) addSubview:v6];
    [*(a1 + 32) sendSubviewToBack:v6];
    [v6 frame];
    [v6 setFrame:?];
  }
}

id sub_1000AEF2C(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 72);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1000AEFB0;
  v3[3] = &unk_10028C3D0;
  v3[4] = *(a1 + 40);
  return [v1 enumerateObjectsUsingBlock:v3];
}

uint64_t sub_1000AF3F0(uint64_t result)
{
  v1 = *(result + 32);
  if ((*(v1 + 89) & 1) == 0)
  {
    v2 = result;
    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    v3 = *(v1 + 72);
    v4 = [v3 countByEnumeratingWithState:&v54 objects:v59 count:16];
    v48 = v2;
    if (v4)
    {
      v5 = v4;
      v6 = *v55;
      while (2)
      {
        for (i = 0; i != v5; i = i + 1)
        {
          if (*v55 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = *(*(&v54 + 1) + 8 * i);
          [v8 setIsPlayback:{objc_msgSend(*(v48 + 32), "isPlayback")}];
          if ([*(*(v48 + 32) + 24) isRecording])
          {
            v9 = *(*(v48 + 32) + 214) ^ 1;
          }

          else
          {
            v9 = 0;
          }

          [v8 setShouldOnlyRenderOnScreenTimeLabels:v9 & 1];
          [*(v48 + 32) _frameForTimeMarkerView:v8];
          v11 = v10;
          v13 = v12;
          v15 = v14;
          v17 = v16;
          [v8 frame];
          v61.origin.x = v18;
          v61.origin.y = v19;
          v61.size.width = v20;
          v61.size.height = v21;
          v60.origin.x = v11;
          v60.origin.y = v13;
          v60.size.width = v15;
          v60.size.height = v17;
          if (!CGRectEqualToRect(v60, v61))
          {
            v2 = v48;
            [*(v48 + 32) _setTimeMarkerViewsNeedInitialLayout:1];
            goto LABEL_15;
          }
        }

        v5 = [v3 countByEnumeratingWithState:&v54 objects:v59 count:16];
        v2 = v48;
        if (v5)
        {
          continue;
        }

        break;
      }
    }

LABEL_15:

    v22 = *(v2 + 32);
    if (*(v22 + 88) == 1)
    {
      return [v22 _layoutTimeMarkerViewsForCurrentlyVisibleTimeRange];
    }

    else
    {
      result = [*(v22 + 72) count];
      if (result)
      {
        v23 = &v47[-2 * [*(*(v2 + 32) + 72) count]];
        v52 = 0u;
        v53 = 0u;
        v50 = 0u;
        v51 = 0u;
        v24 = *(*(v2 + 32) + 72);
        v25 = [v24 countByEnumeratingWithState:&v50 objects:v58 count:16];
        if (v25)
        {
          v26 = v25;
          v49 = v24;
          v47[1] = v47;
          v27 = 0;
          v28 = *v51;
          do
          {
            for (j = 0; j != v26; j = j + 1)
            {
              if (*v51 != v28)
              {
                objc_enumerationMutation(v49);
              }

              v30 = *(*(&v50 + 1) + 8 * j);
              if (v27)
              {
                v31 = 0;
                v32 = 1;
                while (1)
                {
                  v33 = &v23[2 * v31];
                  v35 = *v33;
                  v34 = v33[1];
                  [v30 visibleTimeRange];
                  v37 = vabdd_f64(v35, v36);
                  [v30 visibleTimeRange];
                  if (v37 <= 0.00000011920929)
                  {
                    *v33 = v38;
                    goto LABEL_32;
                  }

                  if (vabdd_f64(v34, v38) <= 0.00000011920929)
                  {
                    break;
                  }

                  v31 = v32;
                  v39 = v27 > v32++;
                  if (!v39)
                  {
                    ++v27;
                    v40 = &v23[2 * v27];
                    [v30 visibleTimeRange];
                    *v40 = v41;
                    v40[1] = v42;
                    goto LABEL_32;
                  }
                }

                [v30 visibleTimeRange];
                *(v33 + 1) = v45;
              }

              else
              {
                [*(*(&v50 + 1) + 8 * j) visibleTimeRange];
                *v23 = v43;
                v23[1] = v44;
                v27 = 1;
              }

LABEL_32:
              ;
            }

            v26 = [v49 countByEnumeratingWithState:&v50 objects:v58 count:16];
          }

          while (v26);

          v46 = 1;
          v2 = v48;
          while (1)
          {
            result = RCTimeRangeContainsRange();
            if (result)
            {
              break;
            }

            v39 = v27 > v46++;
            if (!v39)
            {
              return [*(v2 + 32) _layoutTimeMarkerViewsForCurrentlyVisibleTimeRange];
            }
          }
        }

        else
        {

          return [*(v2 + 32) _layoutTimeMarkerViewsForCurrentlyVisibleTimeRange];
        }
      }
    }
  }

  return result;
}

void sub_1000AFDF0(uint64_t a1)
{
  [*(a1 + 32) desiredTimeDeltaForVisibleTimeRange];
  if (([*(*(a1 + 32) + 24) isHidden] & 1) == 0)
  {
    [*(*(a1 + 32) + 24) isEditingEnabled];
  }

  RCTimeRangeMake();
  v3 = v2;
  v5 = v4;
  v6 = *(a1 + 32);
  v8 = *(v6 + 280);
  v7 = *(v6 + 288);
  v9 = [*(v6 + 72) objectAtIndexedSubscript:0];
  [v9 setDebugID:0];
  RCTimeRangeMake();
  [v9 setVisibleTimeRange:?];
  [v9 setMarkerClippingRange:{v3, v5}];
  [*(a1 + 32) _frameForTimeMarkerView:v9];
  [v9 setFrame:?];
  v10 = [*(*(a1 + 32) + 72) objectAtIndexedSubscript:1];

  [v10 setDebugID:1];
  [v10 setVisibleTimeRange:{v8, v7}];
  [v10 setMarkerClippingRange:{v3, v5}];
  [*(a1 + 32) _frameForTimeMarkerView:v10];
  [v10 setFrame:?];
  v11 = [*(*(a1 + 32) + 72) objectAtIndexedSubscript:2];

  [v11 setDebugID:2];
  RCTimeRangeMake();
  [v11 setVisibleTimeRange:?];
  [v11 setMarkerClippingRange:{v3, v5}];
  [*(a1 + 32) _frameForTimeMarkerView:v11];
  [v11 setFrame:?];
  *(*(a1 + 32) + 88) = 0;
}

void sub_1000B0B38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = VMSilenceRemover;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1000B1D24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000B1D3C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000B1D54(uint64_t a1)
{
  v5 = [*(a1 + 32) recordingWithUniqueID:*(a1 + 40)];
  v2 = [RCComposition compositionLoadedForSavedRecording:v5];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

uint64_t sub_1000B229C(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  [a2 distanceFromLocation:v5];
  v8 = v7;
  [v6 distanceFromLocation:*(a1 + 32)];
  v10 = v9;

  if (v10 - v8 > 0.0)
  {
    return -1;
  }

  else
  {
    return v10 - v8 != 0.0;
  }
}

void sub_1000B3E94(id a1)
{
  v1 = objc_opt_new();
  v2 = qword_1002D7130;
  qword_1002D7130 = v1;

  v3 = OSLogForCategory();
  v4 = *(qword_1002D7130 + 8);
  *(qword_1002D7130 + 8) = v3;

  *(qword_1002D7130 + 16) = -1;
}

void sub_1000B5A50(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 captureFailedWithError:*(a1 + 40)];
}

id sub_1000B6AB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  result = [*(a1 + 32) recording];
  if ((result & 1) == 0)
  {
    *a5 = 1;
    v8 = *(a1 + 40);

    return [v8 _enterTrimMode];
  }

  return result;
}

id sub_1000B7694(uint64_t a1)
{
  v2 = [*(a1 + 32) endTrimReloadDataSourceBlock];

  if (v2)
  {
    v3 = [*(a1 + 32) endTrimReloadDataSourceBlock];
    v3[2]();
  }

  v4 = *(a1 + 32);

  return [v4 setEndTrimReloadDataSourceBlock:0];
}

void sub_1000B8720(uint64_t a1)
{
  v3 = [*(a1 + 32) recordingWithUniqueID:*(a1 + 40)];
  v2 = *(a1 + 48);
  *&v2 = v2;
  [v3 setLayerMix:v2];
  [*(a1 + 32) saveIfNecessary];
}

id sub_1000B8F30(uint64_t a1)
{
  [*(a1 + 32) setEditing:0 animated:1];
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);

  return [v2 _eraseRecordingsWithUUIDs:v3];
}

void sub_1000B9458(uint64_t a1)
{
  v2 = +[NSUserDefaults standardUserDefaults];
  [v2 setBool:1 forKey:*(a1 + 32)];
}

id sub_1000B9ADC(uint64_t a1)
{
  [*(a1 + 32) setEditing:0 animated:1];
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);

  return [v2 _restoreRecordingsWithUUIDs:v3 isRecover:v4];
}

void sub_1000B9DD8(uint64_t a1, void *a2)
{
  [a2 _restoreFolder:*(a1 + 32)];
  v3 = *(*(a1 + 40) + 24);
  v4 = [*(a1 + 32) recordingUUIDs];
  v8 = [v3 restoreRecordingsWithUUIDs:v4];

  v5 = *(a1 + 32);
  v6 = *(*(a1 + 40) + 24);
  v7 = [v5 name];
  [v6 addRecordingsWithUUIDs:v8 toUserFolderNamed:v7];
}

uint64_t sub_1000BA344(void *a1)
{
  [*(a1[4] + 24) deleteUserFolder:a1[5]];
  result = a1[6];
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

uint64_t sub_1000BA3A0(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

void sub_1000BA890(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_1000BA8AC(uint64_t a1, void *a2)
{
  v8 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = [WeakRetained audioPlayer];
  if (v4)
  {
    [*(a1 + 32) timeIntervalSinceNow];
    v6 = *(a1 + 48) - v5 * *(a1 + 56);
    [v4 playerTime];
    if (v7 - v6 >= *(a1 + 64))
    {
      [v8 invalidate];
      [WeakRetained _updateNowPlayingInfo];
    }
  }

  else
  {
    [v8 invalidate];
  }
}

void sub_1000BADA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, id a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, id a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, id a40)
{
  objc_destroyWeak((v40 + 32));
  objc_destroyWeak((v42 + 40));
  objc_destroyWeak((v41 + 40));
  objc_destroyWeak(&a30);
  objc_destroyWeak(&a35);
  objc_destroyWeak(&a40);
  objc_destroyWeak((v43 - 160));
  objc_destroyWeak((v43 - 120));
  objc_destroyWeak((v43 - 112));
  _Unwind_Resume(a1);
}

uint64_t sub_1000BAE90(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained audioPlayer];
  v3 = [v2 recordingID];

  if (v3)
  {
    [WeakRetained pauseForUUID:v3];
    v4 = 0;
  }

  else
  {
    v4 = 100;
  }

  return v4;
}

uint64_t sub_1000BAF04(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained audioPlayer];
  v3 = [v2 recordingID];
  v4 = v3;
  v5 = 100;
  if (v2 && v3)
  {
    if ([v2 playing])
    {
      v5 = 100;
    }

    else
    {
      [WeakRetained playbackForUUID:v4];
      v5 = 0;
    }
  }

  return v5;
}

uint64_t sub_1000BAF8C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained audioPlayer];
  v3 = [v2 recordingID];

  if (v3)
  {
    [WeakRetained toggleForUUID:v3];
    v4 = 0;
  }

  else
  {
    v4 = 100;
  }

  return v4;
}

uint64_t sub_1000BB000(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained audioPlayer];
  v6 = [v5 recordingID];

  if (v6)
  {
    [v3 interval];
    [WeakRetained _jumpByIncrement:v6 forUUID:-v7];
    v8 = 0;
  }

  else
  {
    v8 = 100;
  }

  return v8;
}

uint64_t sub_1000BB090(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained audioPlayer];
  v6 = [v5 recordingID];

  if (v6)
  {
    [v3 interval];
    [WeakRetained _jumpByIncrement:v6 forUUID:?];
    v7 = 0;
  }

  else
  {
    v7 = 100;
  }

  return v7;
}

uint64_t sub_1000BB11C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained audioPlayer];
  v4 = [v3 recordingID];

  if (v4)
  {
    v5 = [*(a1 + 32) firstObject];
    [v5 doubleValue];
    [WeakRetained _jumpByIncrement:v4 forUUID:-v6];

    v7 = 0;
  }

  else
  {
    v7 = 100;
  }

  return v7;
}

uint64_t sub_1000BB1B0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained audioPlayer];
  v4 = [v3 recordingID];

  if (v4)
  {
    v5 = [*(a1 + 32) firstObject];
    [v5 doubleValue];
    [WeakRetained _jumpByIncrement:v4 forUUID:?];

    v6 = 0;
  }

  else
  {
    v6 = 100;
  }

  return v6;
}

uint64_t sub_1000BB240(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained audioPlayer];
  v6 = [v5 recordingID];

  if (v6)
  {
    [v3 positionTime];
    [WeakRetained _jumpToTargetTime:?];
    v7 = 0;
  }

  else
  {
    v7 = 100;
  }

  return v7;
}

void sub_1000BB3D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t sub_1000BB3F4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if ([WeakRetained isRecording])
  {
    v2 = [WeakRetained delegate];
    v3 = [v2 remoteToggleShouldPauseRecording];

    if (v3)
    {
      [WeakRetained pauseCapturing];
    }

    else
    {
      [WeakRetained stopCapturing];
    }
  }

  return 0;
}

void sub_1000BCABC(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [*(a1 + 32) currentDuration];
  [v2 recordingDurationUpdated:?];
}

void sub_1000BCB8C(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [*(a1 + 32) currentDuration];
  [v2 recordingDurationUpdated:?];
}

void sub_1000BCC5C(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [*(a1 + 32) currentDuration];
  [v2 recordingDurationUpdated:?];
}

void sub_1000BDB88(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_1000BDBB0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [*(a1 + 32) recording];
  v3 = *(a1 + 32);
  if (v2)
  {
    [WeakRetained _recordingStarted:v3];
  }

  else
  {
    [WeakRetained _recordingStopped:v3];
    WeakRetained[48] = 0;
  }

  [WeakRetained _reconcileAudioStateWithApplicationState];
}

void sub_1000BE14C(uint64_t a1, void *a2, int a3, float a4)
{
  v11 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = [WeakRetained delegate];

  if (v8)
  {
    if (a3)
    {
      v10 = 2;
    }

    else
    {
      v10 = 1;
    }

    *&v9 = a4;
    [v8 didUpdateToStatus:v10 progress:v11 forRecordingWithUUID:v9];
  }
}

void sub_1000C0708(uint64_t a1)
{
  v2 = [*(a1 + 32) systemApertureElementContext];
  v3 = [v2 transitionContext];
  v4 = [v3 fromLayoutMode];

  if (v4 != *(a1 + 40))
  {
    v5 = [*(a1 + 32) delegate];
    [v5 activeLayoutModeDidChangeForPlatterViewController:*(a1 + 32) previousActiveLayoutMode:v4];
  }
}

void sub_1000C09EC(uint64_t a1)
{
  v2 = [*(a1 + 32) activeLayoutMode];
  v3 = [*(a1 + 32) systemApertureElementContext];
  v4 = v3;
  if (v2 == 3)
  {
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_1000C0ABC;
    v5[3] = &unk_10028A3B8;
    v5[4] = *(a1 + 32);
    [v3 setElementNeedsUpdateWithCoordinatedAnimations:v5];
  }

  else
  {
    [v3 requestTransitionToPreferredLayoutMode];
  }
}

id sub_1000C0ABC(uint64_t a1)
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_1000C0B38;
  v2[3] = &unk_10028A3B8;
  v2[4] = *(a1 + 32);
  return [UIView performWithoutAnimation:v2];
}

void sub_1000C0B38(uint64_t a1)
{
  [*(a1 + 32) _updateViewsForLayoutMode:objc_msgSend(*(a1 + 32) platterState:{"platterLayoutModeForSystemApertureLayoutMode:", objc_msgSend(*(a1 + 32), "activeLayoutMode")), objc_msgSend(*(a1 + 32), "platterState")}];
  v2 = [*(a1 + 32) view];
  [v2 setNeedsLayout];

  v3 = [*(a1 + 32) view];
  [v3 layoutIfNeeded];
}

void sub_1000C3D08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_1000C3D20(void *result, void *a2)
{
  if (a2)
  {
    v2 = result;
    result = [a2 hasBeenTranscribed];
    *(*(v2[4] + 8) + 24) = result;
  }

  return result;
}

uint64_t sub_1000C4290(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[RCSSavedRecordingService sharedService];
  v5 = *(a1 + 32);
  v21 = 0;
  v6 = [v4 prepareToExportCompositionAVURL:v5 error:&v21];
  v7 = v21;
  if (v6)
  {
    v8 = +[RCShareableComposition _createTemporaryDirectory];
    if (v8)
    {
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_1000C4534;
      v16[3] = &unk_10028C7D0;
      v20 = v3;
      v9 = v8;
      v17 = v9;
      v18 = v4;
      v19 = v6;
      v10 = objc_retainBlock(v16);
      [*(a1 + 40) _copyResourcesForRecording:*(a1 + 48) toDirectory:v9 completion:v10];

      v11 = v20;
    }

    else
    {
      v13 = RCVoiceMemosErrorDomain;
      v22 = NSLocalizedDescriptionKey;
      v23 = @"Failed to create temp directory when registering audio file representation with item provider";
      v14 = [NSDictionary dictionaryWithObjects:&v23 forKeys:&v22 count:1];
      v11 = [NSError errorWithDomain:v13 code:1 userInfo:v14];

      (*(v3 + 2))(v3, 0, 0, v11);
    }
  }

  else
  {
    v12 = OSLogForCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v25 = "[RCShareableComposition registerAudioFileRepresentationWithItemProvider:error:]_block_invoke";
      v26 = 2112;
      v27 = v7;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%s -- error preparing to export composition = %@", buf, 0x16u);
    }

    (*(v3 + 2))(v3, 0, 0, v7);
  }

  return 0;
}

void sub_1000C4534(void *a1)
{
  (*(a1[7] + 16))();
  v2 = +[NSFileManager defaultManager];
  [v2 removeItemAtURL:a1[4] error:0];

  v3 = a1[5];
  v4 = a1[6];
  v7 = 0;
  LOBYTE(v2) = [v3 endAccessSessionWithToken:v4 error:&v7];
  v5 = v7;
  if ((v2 & 1) == 0)
  {
    v6 = OSLogForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v9 = "[RCShareableComposition registerAudioFileRepresentationWithItemProvider:error:]_block_invoke";
      v10 = 2112;
      v11 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s -- end token access session error = %@", buf, 0x16u);
    }
  }
}

void sub_1000C4ED0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000C4F0C(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = [WeakRetained _createManagedTemporaryDirectory];
    if (!v6)
    {
      [v5 setShareURLS:&__NSArray0__struct];
      v3[2](v3);
LABEL_11:

      goto LABEL_12;
    }

    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_1000C5154;
    v21[3] = &unk_10028C820;
    v7 = v5;
    v22 = v7;
    v23 = v3;
    v8 = objc_retainBlock(v21);
    if ([v7 sendAsRaw])
    {
      if (![v7 exportSeparateTracks])
      {
        v15 = _NSConcreteStackBlock;
        v16 = 3221225472;
        v17 = sub_1000C519C;
        v18 = &unk_10028C848;
        v11 = v7;
        v19 = v11;
        v20 = v8;
        v12 = objc_retainBlock(&v15);
        v13 = [v11 composition];
        v14 = [v13 savedRecordingUUID];
        [v11 _copyResourcesForRecording:v14 toDirectory:v6 completion:v12];

        v9 = v19;
        goto LABEL_10;
      }

      v9 = [v7 composition];
      v10 = [v9 savedRecordingUUID];
      [v7 _splitTracksForRecording:v10 toDirectory:v6 completion:v8];
    }

    else
    {
      v9 = [v7 composition];
      v10 = [v9 savedRecordingUUID];
      [v7 _renderRecording:v10 toDirectory:v6 completion:v8];
    }

LABEL_10:
    goto LABEL_11;
  }

LABEL_12:
}

uint64_t sub_1000C5154(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setShareURLS:a2];
  v3 = *(*(a1 + 40) + 16);

  return v3();
}

void sub_1000C519C(uint64_t a1, void *a2)
{
  v6 = a2;
  if (v6)
  {
    v3 = *(a1 + 32);
    v4 = [v3 composition];
    v5 = [v4 savedRecordingUUID];
    [v3 _attachSharingMetadataToRecording:v5 atURL:v6 completion:*(a1 + 40)];
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

void sub_1000C5314(uint64_t a1)
{
  v1 = [*(*(a1 + 32) + 48) composedAVURL];
  v2 = qword_1002D7160;
  qword_1002D7160 = v1;
}

void sub_1000C5444(uint64_t a1)
{
  v2 = [*(a1 + 32) recordingWithUniqueID:*(a1 + 40)];
  (*(*(a1 + 48) + 16))();
}

void sub_1000C5578(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);

    [a2 copyResourcesForSharingIntoDirectory:v3 completion:v4];
  }

  else
  {
    v5 = RCVoiceMemosErrorDomain;
    v10 = NSLocalizedDescriptionKey;
    v6 = +[NSBundle mainBundle];
    v7 = [v6 localizedStringForKey:@"COPY_RESOURCES_ERROR" value:&stru_100295BB8 table:0];
    v11 = v7;
    v8 = [NSDictionary dictionaryWithObjects:&v11 forKeys:&v10 count:1];
    v9 = [NSError errorWithDomain:v5 code:1 userInfo:v8];

    (*(*(a1 + 40) + 16))();
  }
}

void sub_1000C593C(uint64_t a1, void *a2)
{
  v2 = *(a1 + 40);
  if (*(a1 + 32))
  {
    v6 = *(a1 + 32);
    v3 = a2;
    v4 = [NSArray arrayWithObjects:&v6 count:1];
    (*(v2 + 16))(v2, v4, v3);
  }

  else
  {
    v5 = *(v2 + 16);
    v4 = a2;
    v5(v2, 0, v4);
  }
}

void sub_1000C5B58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000C5B70(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000C5B88(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = [a2 subjectForActivityType:*(a1 + 32)];
    v4 = *(*(a1 + 40) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;
  }
}

char *sub_1000C67B4(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v47 = sub_1000C773C(&qword_1002CE1A8);
  v45 = *(v47 - 8);
  __chkstk_darwin(v47, v10);
  v44 = &v43 - v11;
  v12 = sub_1000C773C(&qword_1002CE1B0);
  v48 = *(v12 - 8);
  v49 = v12;
  __chkstk_darwin(v12, v13);
  v46 = &v43 - v14;
  v15 = sub_1000C773C(&qword_1002CE1B8);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15, v17);
  v19 = &v43 - v18;
  v43 = sub_1000C773C(&qword_1002CE1C0);
  v20 = *(v43 - 8);
  __chkstk_darwin(v43, v21);
  v23 = &v43 - v22;
  v24 = type metadata accessor for SiriTipViewStyle();
  __chkstk_darwin(v24 - 8, v25);
  swift_unknownObjectWeakInit();
  if (_swiftEmptyArrayStorage >> 62 && _CocoaArrayWrapper.endIndex.getter())
  {
    v26 = sub_1000C8898(_swiftEmptyArrayStorage);
  }

  else
  {
    v26 = &_swiftEmptySetSingleton;
  }

  *&v4[OBJC_IVAR____TtC10VoiceMemos22RCSiriTipContainerView_cancellables] = v26;
  v27 = OBJC_IVAR____TtC10VoiceMemos22RCSiriTipContainerView_siriTipView;
  static SiriTipViewStyle.automatic.getter();
  v28 = objc_allocWithZone(type metadata accessor for SiriTipUIView());
  v29 = SiriTipUIView.init(style:)();
  SiriTipUIView.loadOnAppear.setter();
  v50 = sub_100152518();
  sub_100012A90();
  SiriTipUIView.setIntent<A>(intent:)();

  SiriTipUIView.allowsDismissal.setter();
  *&v5[v27] = v29;
  v30 = type metadata accessor for RCSiriTipContainerView();
  v51.receiver = v5;
  v51.super_class = v30;
  v31 = objc_msgSendSuper2(&v51, "initWithFrame:", a1, a2, a3, a4);
  sub_1000C6F74();
  v32 = OBJC_IVAR____TtC10VoiceMemos22RCSiriTipContainerView_siriTipView;
  v33 = *&v31[OBJC_IVAR____TtC10VoiceMemos22RCSiriTipContainerView_siriTipView];
  swift_getKeyPath();
  v34 = v33;
  _KeyValueCodingAndObservingPublishing<>.publisher<A>(for:options:)();

  sub_100008034(&qword_1002CE1C8, &qword_1002CE1B8);
  Publisher<>.removeDuplicates()();
  (*(v16 + 8))(v19, v15);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100008034(&qword_1002CE1D0, &qword_1002CE1C0);
  v35 = v43;
  Publisher<>.sink(receiveValue:)();

  (*(v20 + 8))(v23, v35);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v36 = *&v31[v32];
  swift_getKeyPath();
  v37 = v36;
  v38 = v44;
  _KeyValueCodingAndObservingPublishing<>.publisher<A>(for:options:)();

  sub_100008034(&qword_1002CE1D8, &qword_1002CE1A8);
  sub_1000171B0(&qword_1002CE1E0, type metadata accessor for CGRect);
  v40 = v46;
  v39 = v47;
  Publisher<>.removeDuplicates()();
  (*(v45 + 8))(v38, v39);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100008034(&qword_1002CE1E8, &qword_1002CE1B0);
  v41 = v49;
  Publisher<>.sink(receiveValue:)();

  (*(v48 + 8))(v40, v41);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  return v31;
}

void sub_1000C6F74()
{
  v1 = OBJC_IVAR____TtC10VoiceMemos22RCSiriTipContainerView_siriTipView;
  [v0 addSubview:*&v0[OBJC_IVAR____TtC10VoiceMemos22RCSiriTipContainerView_siriTipView]];
  [*&v0[v1] setTranslatesAutoresizingMaskIntoConstraints:0];
  v2 = objc_opt_self();
  sub_1000C773C(&unk_1002CE190);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_100240520;
  v4 = [*&v0[v1] bottomAnchor];
  v5 = [v0 layoutMarginsGuide];
  v6 = [v5 bottomAnchor];

  v7 = [v4 constraintEqualToAnchor:v6 constant:-12.0];
  *(v3 + 32) = v7;
  v8 = [*&v0[v1] leadingAnchor];
  v9 = [v0 layoutMarginsGuide];
  v10 = [v9 leadingAnchor];

  v11 = [v8 constraintEqualToAnchor:v10];
  *(v3 + 40) = v11;
  v12 = [*&v0[v1] trailingAnchor];
  v13 = [v0 layoutMarginsGuide];
  v14 = [v13 trailingAnchor];

  v15 = [v12 constraintEqualToAnchor:v14];
  *(v3 + 48) = v15;
  sub_1000067AC(0, &unk_1002D5DF0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v2 activateConstraints:isa];
}

id sub_1000C71F0@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 isPresented];
  *a2 = result;
  return result;
}

void sub_1000C7238(_BYTE *a1)
{
  if ((*a1 & 1) == 0)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v2 = Strong;
      v3 = swift_unknownObjectWeakLoadStrong();

      if (v3)
      {
        [v3 didDismissSiriTipView];
        swift_unknownObjectRelease();
      }
    }
  }
}

id sub_1000C72C4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 bounds];
  *a2 = v4;
  a2[1] = v5;
  a2[2] = v6;
  a2[3] = v7;
  return result;
}

void sub_1000C7314()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = swift_unknownObjectWeakLoadStrong();

    if (v2)
    {
      [v2 siriTipViewBoundsDidChange];
      swift_unknownObjectRelease();
    }
  }
}

id sub_1000C7394()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RCSiriTipContainerView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t variable initialization expression of AudioEnginePlayer.audioReadingQueue()
{
  v15 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v0 = *(v15 - 8);
  __chkstk_darwin(v15, v1);
  v3 = v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v4, v5);
  v6 = type metadata accessor for DispatchQoS.QoSClass();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6, v8);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v11 - 8, v12);
  v14[1] = sub_1000067AC(0, &qword_1002D1070);
  (*(v7 + 104))(v10, enum case for DispatchQoS.QoSClass.userInitiated(_:), v6);
  DispatchQoS.init(qosClass:relativePriority:)();
  v16 = _swiftEmptyArrayStorage;
  sub_1000171B0(&qword_1002CDFC0, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_1000C773C(&unk_1002D1E10);
  sub_100008034(&qword_1002CDFD0, &unk_1002D1E10);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v0 + 104))(v3, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v15);
  return OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
}

uint64_t sub_1000C773C(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1000C7784(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t variable initialization expression of AudioEnginePlayer.seekSyncDispatchQueue()
{
  v15 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v0 = *(v15 - 8);
  __chkstk_darwin(v15, v1);
  v3 = v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v4, v5);
  v6 = type metadata accessor for DispatchQoS.QoSClass();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6, v8);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v11 - 8, v12);
  v14[1] = sub_1000067AC(0, &qword_1002D1070);
  (*(v7 + 104))(v10, enum case for DispatchQoS.QoSClass.userInitiated(_:), v6);
  DispatchQoS.init(qosClass:relativePriority:)();
  v16 = _swiftEmptyArrayStorage;
  sub_1000171B0(&qword_1002CDFC0, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_1000C773C(&unk_1002D1E10);
  sub_100008034(&qword_1002CDFD0, &unk_1002D1E10);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v0 + 104))(v3, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v15);
  return OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
}

void *variable initialization expression of AudioEnginePlayer.cancellables()
{
  if (!(_swiftEmptyArrayStorage >> 62) || !_CocoaArrayWrapper.endIndex.getter())
  {
    return &_swiftEmptySetSingleton;
  }

  return sub_1000C8898(_swiftEmptyArrayStorage);
}

uint64_t sub_1000C7BC8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = enum case for EventProperty.required<A>(_:);
  v4 = sub_1000C773C(a1);
  v5 = *(*(v4 - 8) + 104);

  return v5(a2, v3, v4);
}

Swift::Int sub_1000C7CDC()
{
  Hasher.init(_seed:)();
  swift_getWitnessTable();
  _CFObject.hash(into:)();
  return Hasher._finalize()();
}

_DWORD *sub_1000C7D44@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

uint64_t sub_1000C7D60(uint64_t a1, id *a2)
{
  result = static String._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return result;
}

uint64_t sub_1000C7DD8(uint64_t a1, id *a2)
{
  v3 = static String._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_1000C7E58@<X0>(void *a1@<X8>)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = String._bridgeToObjectiveC()();

  *a1 = v2;
  return result;
}

uint64_t sub_1000C7ED4@<X0>(void *a1@<X8>)
{
  result = static CGFloat._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = v3;
  return result;
}

uint64_t sub_1000C7F1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t *))
{
  v9 = 0;
  v10 = 1;
  result = a5(a1, &v9);
  v7 = v9;
  v8 = v10;
  if (v10)
  {
    v7 = 0;
  }

  *a2 = v7;
  *(a2 + 8) = v8;
  return result;
}

uint64_t sub_1000C7F8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t *))
{
  v10 = 0;
  v11 = 1;
  v6 = a5(a1, &v10);
  v7 = v10;
  v8 = v11;
  if (v11)
  {
    v7 = 0;
  }

  *a2 = v7;
  *(a2 + 8) = v8;
  return v6 & 1;
}

uint64_t sub_1000C7FE8@<X0>(uint64_t *a1@<X8>)
{
  result = static Int._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = result;
  return result;
}

Swift::Int sub_1000C8010()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_1000C8058()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

uint64_t sub_1000C809C()
{
  swift_getWitnessTable();

  return static _CFObject.== infix(_:_:)();
}

uint64_t sub_1000C8108()
{
  sub_1000171B0(&qword_1002CE138, type metadata accessor for Key);
  sub_1000171B0(&qword_1002CE140, type metadata accessor for Key);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t sub_1000C81C4()
{
  sub_1000171B0(&qword_1002CE338, type metadata accessor for RCAudioCodecName);
  sub_1000171B0(&qword_1002CE340, type metadata accessor for RCAudioCodecName);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t sub_1000C8280()
{
  sub_1000171B0(&qword_1002CE348, type metadata accessor for RCRecordingShareMetadataKey);
  sub_1000171B0(&qword_1002CE350, type metadata accessor for RCRecordingShareMetadataKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t sub_1000C833C()
{
  sub_1000171B0(&qword_1002CE380, type metadata accessor for AttributeName);
  sub_1000171B0(&qword_1002CE388, type metadata accessor for AttributeName);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t sub_1000C83F8@<X0>(void *a1@<X8>)
{
  v2 = String._bridgeToObjectiveC()();

  *a1 = v2;
  return result;
}

uint64_t sub_1000C8440()
{
  sub_1000171B0(&qword_1002CE370, type metadata accessor for TraitKey);
  sub_1000171B0(&qword_1002CE378, type metadata accessor for TraitKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

double sub_1000C84FC@<D0>(void *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

uint64_t sub_1000C8508()
{
  sub_1000171B0(&qword_1002CE358, type metadata accessor for Weight);
  sub_1000171B0(&qword_1002CE360, type metadata accessor for Weight);
  sub_1000C9FDC();
  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t sub_1000C85D0()
{
  sub_1000171B0(&qword_1002CE128, type metadata accessor for UIBackgroundTaskIdentifier);
  sub_1000171B0(&qword_1002CE130, type metadata accessor for UIBackgroundTaskIdentifier);
  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t sub_1000C868C()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v0 = String.hashValue.getter();

  return v0;
}

uint64_t sub_1000C86C8()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();
}

Swift::Int sub_1000C871C()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v0 = Hasher._finalize()();

  return v0;
}

void sub_1000C8798()
{
  v1 = *v0;
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  Hasher._combine(_:)(*&v1);
}

uint64_t sub_1000C87FC()
{
  v0 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = v1;
  if (v0 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v5 & 1;
}

unint64_t sub_1000C8898(unint64_t result)
{
  v1 = result;
  v2 = result >> 62;
  if (result >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (result)
    {
LABEL_3:
      sub_1000C773C(&qword_1002CE1F0);
      result = static _SetStorage.allocate(capacity:)();
      v3 = result;
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      result = _CocoaArrayWrapper.endIndex.getter();
      v5 = result;
      if (!result)
      {
        return v3;
      }

      goto LABEL_9;
    }
  }

  else if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = &_swiftEmptySetSingleton;
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return v3;
  }

LABEL_9:
  v6 = 0;
  v7 = v3 + 56;
  v20 = v1 & 0xC000000000000001;
  v18 = v1 + 32;
  v19 = v1 & 0xFFFFFFFFFFFFFF8;
  while (v20)
  {
    result = specialized _ArrayBuffer._getElementSlowPath(_:)();
    v8 = result;
    v9 = __OFADD__(v6++, 1);
    if (v9)
    {
      goto LABEL_25;
    }

LABEL_18:
    type metadata accessor for AnyCancellable();
    sub_1000171B0(&qword_1002CE1F8, &type metadata accessor for AnyCancellable);
    result = dispatch thunk of Hashable._rawHashValue(seed:)();
    v10 = -1 << v3[32];
    v11 = result & ~v10;
    v12 = v11 >> 6;
    v13 = *&v7[8 * (v11 >> 6)];
    v14 = 1 << v11;
    if (((1 << v11) & v13) != 0)
    {
      v15 = ~v10;
      sub_1000171B0(&qword_1002CE200, &type metadata accessor for AnyCancellable);
      while (1)
      {
        result = dispatch thunk of static Equatable.== infix(_:_:)();
        if (result)
        {
          break;
        }

        v11 = (v11 + 1) & v15;
        v12 = v11 >> 6;
        v13 = *&v7[8 * (v11 >> 6)];
        v14 = 1 << v11;
        if (((1 << v11) & v13) == 0)
        {
          goto LABEL_22;
        }
      }
    }

    else
    {
LABEL_22:
      *&v7[8 * v12] = v14 | v13;
      *(*(v3 + 6) + 8 * v11) = v8;
      v16 = *(v3 + 2);
      v9 = __OFADD__(v16, 1);
      v17 = v16 + 1;
      if (v9)
      {
        goto LABEL_26;
      }

      *(v3 + 2) = v17;
    }

    if (v6 == v5)
    {
      return v3;
    }
  }

  if (v6 >= *(v19 + 16))
  {
    goto LABEL_27;
  }

  v8 = *(v18 + 8 * v6);

  v9 = __OFADD__(v6++, 1);
  if (!v9)
  {
    goto LABEL_18;
  }

LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

__n128 sub_1000C8BC8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

void sub_1000C8D3C()
{
  v1 = v0;
  v2 = type metadata accessor for SiriTipViewStyle();
  __chkstk_darwin(v2 - 8, v3);
  swift_unknownObjectWeakInit();
  if (_swiftEmptyArrayStorage >> 62 && _CocoaArrayWrapper.endIndex.getter())
  {
    v4 = sub_1000C8898(_swiftEmptyArrayStorage);
  }

  else
  {
    v4 = &_swiftEmptySetSingleton;
  }

  *(v0 + OBJC_IVAR____TtC10VoiceMemos22RCSiriTipContainerView_cancellables) = v4;
  v5 = OBJC_IVAR____TtC10VoiceMemos22RCSiriTipContainerView_siriTipView;
  static SiriTipViewStyle.automatic.getter();
  v6 = objc_allocWithZone(type metadata accessor for SiriTipUIView());
  v7 = SiriTipUIView.init(style:)();
  SiriTipUIView.loadOnAppear.setter();
  sub_100152518();
  sub_100012A90();
  SiriTipUIView.setIntent<A>(intent:)();

  SiriTipUIView.allowsDismissal.setter();
  *(v1 + v5) = v7;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void *sub_1000C8EB8(uint64_t a1)
{
  v2 = type metadata accessor for Transcriber.TranscriptionOption();
  v3 = *(v2 - 8);
  v5 = __chkstk_darwin(v2, v4);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5, v8);
  v39 = &v32 - v9;
  v10 = *(a1 + 16);
  if (v10)
  {
    sub_1000C773C(&qword_1002CE178);
    v11 = static _SetStorage.allocate(capacity:)();
    v12 = 0;
    v14 = *(v3 + 16);
    v13 = v3 + 16;
    v37 = v14;
    v38 = v11 + 56;
    v15 = *(v13 + 64);
    v34 = v10;
    v35 = a1 + ((v15 + 32) & ~v15);
    v16 = *(v13 + 56);
    v17 = (v13 - 8);
    v33 = (v13 + 16);
    while (1)
    {
      v36 = v12;
      v37(v39, v35 + v16 * v12, v2);
      sub_1000171B0(&qword_1002CE180, &type metadata accessor for Transcriber.TranscriptionOption);
      v18 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v19 = ~(-1 << *(v11 + 32));
      v20 = v18 & v19;
      v21 = (v18 & v19) >> 6;
      v22 = *(v38 + 8 * v21);
      v23 = 1 << (v18 & v19);
      if ((v23 & v22) != 0)
      {
        while (1)
        {
          v24 = v13;
          v37(v7, *(v11 + 48) + v20 * v16, v2);
          sub_1000171B0(&qword_1002CE188, &type metadata accessor for Transcriber.TranscriptionOption);
          v25 = dispatch thunk of static Equatable.== infix(_:_:)();
          v26 = *v17;
          (*v17)(v7, v2);
          if (v25)
          {
            break;
          }

          v20 = (v20 + 1) & v19;
          v21 = v20 >> 6;
          v22 = *(v38 + 8 * (v20 >> 6));
          v23 = 1 << v20;
          v13 = v24;
          if (((1 << v20) & v22) == 0)
          {
            goto LABEL_8;
          }
        }

        v26(v39, v2);
        v13 = v24;
      }

      else
      {
LABEL_8:
        v27 = v39;
        *(v38 + 8 * v21) = v23 | v22;
        result = (*v33)(*(v11 + 48) + v20 * v16, v27, v2);
        v29 = *(v11 + 16);
        v30 = __OFADD__(v29, 1);
        v31 = v29 + 1;
        if (v30)
        {
          __break(1u);
          return result;
        }

        *(v11 + 16) = v31;
      }

      v12 = v36 + 1;
      if (v36 + 1 == v34)
      {
        return v11;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

void *sub_1000C91D8(uint64_t a1)
{
  v2 = type metadata accessor for Transcriber.ReportingOption();
  v3 = *(v2 - 8);
  v5 = __chkstk_darwin(v2, v4);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5, v8);
  v39 = &v32 - v9;
  v10 = *(a1 + 16);
  if (v10)
  {
    sub_1000C773C(&qword_1002CE160);
    v11 = static _SetStorage.allocate(capacity:)();
    v12 = 0;
    v14 = *(v3 + 16);
    v13 = v3 + 16;
    v37 = v14;
    v38 = v11 + 56;
    v15 = *(v13 + 64);
    v34 = v10;
    v35 = a1 + ((v15 + 32) & ~v15);
    v16 = *(v13 + 56);
    v17 = (v13 - 8);
    v33 = (v13 + 16);
    while (1)
    {
      v36 = v12;
      v37(v39, v35 + v16 * v12, v2);
      sub_1000171B0(&qword_1002CE168, &type metadata accessor for Transcriber.ReportingOption);
      v18 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v19 = ~(-1 << *(v11 + 32));
      v20 = v18 & v19;
      v21 = (v18 & v19) >> 6;
      v22 = *(v38 + 8 * v21);
      v23 = 1 << (v18 & v19);
      if ((v23 & v22) != 0)
      {
        while (1)
        {
          v24 = v13;
          v37(v7, *(v11 + 48) + v20 * v16, v2);
          sub_1000171B0(&qword_1002CE170, &type metadata accessor for Transcriber.ReportingOption);
          v25 = dispatch thunk of static Equatable.== infix(_:_:)();
          v26 = *v17;
          (*v17)(v7, v2);
          if (v25)
          {
            break;
          }

          v20 = (v20 + 1) & v19;
          v21 = v20 >> 6;
          v22 = *(v38 + 8 * (v20 >> 6));
          v23 = 1 << v20;
          v13 = v24;
          if (((1 << v20) & v22) == 0)
          {
            goto LABEL_8;
          }
        }

        v26(v39, v2);
        v13 = v24;
      }

      else
      {
LABEL_8:
        v27 = v39;
        *(v38 + 8 * v21) = v23 | v22;
        result = (*v33)(*(v11 + 48) + v20 * v16, v27, v2);
        v29 = *(v11 + 16);
        v30 = __OFADD__(v29, 1);
        v31 = v29 + 1;
        if (v30)
        {
          __break(1u);
          return result;
        }

        *(v11 + 16) = v31;
      }

      v12 = v36 + 1;
      if (v36 + 1 == v34)
      {
        return v11;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

void *sub_1000C94F8(uint64_t a1)
{
  v2 = type metadata accessor for TranscriptionResultAttributeOption();
  v3 = *(v2 - 8);
  v5 = __chkstk_darwin(v2, v4);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5, v8);
  v39 = &v32 - v9;
  v10 = *(a1 + 16);
  if (v10)
  {
    sub_1000C773C(&qword_1002CE148);
    v11 = static _SetStorage.allocate(capacity:)();
    v12 = 0;
    v14 = *(v3 + 16);
    v13 = v3 + 16;
    v37 = v14;
    v38 = v11 + 56;
    v15 = *(v13 + 64);
    v34 = v10;
    v35 = a1 + ((v15 + 32) & ~v15);
    v16 = *(v13 + 56);
    v17 = (v13 - 8);
    v33 = (v13 + 16);
    while (1)
    {
      v36 = v12;
      v37(v39, v35 + v16 * v12, v2);
      sub_1000171B0(&qword_1002CE150, &type metadata accessor for TranscriptionResultAttributeOption);
      v18 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v19 = ~(-1 << *(v11 + 32));
      v20 = v18 & v19;
      v21 = (v18 & v19) >> 6;
      v22 = *(v38 + 8 * v21);
      v23 = 1 << (v18 & v19);
      if ((v23 & v22) != 0)
      {
        while (1)
        {
          v24 = v13;
          v37(v7, *(v11 + 48) + v20 * v16, v2);
          sub_1000171B0(&qword_1002CE158, &type metadata accessor for TranscriptionResultAttributeOption);
          v25 = dispatch thunk of static Equatable.== infix(_:_:)();
          v26 = *v17;
          (*v17)(v7, v2);
          if (v25)
          {
            break;
          }

          v20 = (v20 + 1) & v19;
          v21 = v20 >> 6;
          v22 = *(v38 + 8 * (v20 >> 6));
          v23 = 1 << v20;
          v13 = v24;
          if (((1 << v20) & v22) == 0)
          {
            goto LABEL_8;
          }
        }

        v26(v39, v2);
        v13 = v24;
      }

      else
      {
LABEL_8:
        v27 = v39;
        *(v38 + 8 * v21) = v23 | v22;
        result = (*v33)(*(v11 + 48) + v20 * v16, v27, v2);
        v29 = *(v11 + 16);
        v30 = __OFADD__(v29, 1);
        v31 = v29 + 1;
        if (v30)
        {
          __break(1u);
          return result;
        }

        *(v11 + 16) = v31;
      }

      v12 = v36 + 1;
      if (v36 + 1 == v34)
      {
        return v11;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

uint64_t sub_1000C98A0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000C98C0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 4) = v3;
  return result;
}

__n128 sub_1000C98FC(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_1000C9910(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000C9930(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 24) = v3;
  return result;
}

__n128 sub_1000C99D4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_1000C99E8(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 48))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000C9A08(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 48) = v3;
  return result;
}

unint64_t sub_1000C9FDC()
{
  result = qword_1002CE368;
  if (!qword_1002CE368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002CE368);
  }

  return result;
}

Swift::Int sub_1000CA0B8()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_1000CA100()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

uint64_t sub_1000CA144()
{
  v1 = *(v0 + 129);
  if (v1 == 5)
  {
    v6 = *(v0 + 80);
    v7 = *(v0 + 112);
    v15 = *(v0 + 96);
    v16 = v7;
    v17 = *(v0 + 128);
    v8 = *(v0 + 48);
    v11 = *(v0 + 32);
    v12 = v8;
    v13 = *(v0 + 64);
    v14 = v6;
    *&v19[9] = *(v0 + 57);
    v18 = v11;
    *v19 = v8;
    v21 = *(v0 + 74);
    v22 = *(v0 + 90);
    v23[0] = *(v0 + 106);
    *(v23 + 15) = *(v0 + 121);
    v20 = 0;
  }

  else
  {
    v2 = *(v0 + 80);
    v3 = *(v0 + 112);
    v15 = *(v0 + 96);
    v16 = v3;
    v17 = *(v0 + 128);
    v4 = *(v0 + 48);
    v11 = *(v0 + 32);
    v12 = v4;
    v13 = *(v0 + 64);
    v14 = v2;
    *&v19[9] = *(v0 + 57);
    v18 = v11;
    *v19 = v4;
    v21 = *(v0 + 74);
    v22 = *(v0 + 90);
    v23[0] = *(v0 + 106);
    *(v23 + 15) = *(v0 + 121);
    if (v1 == 4)
    {
      v5 = 1;
    }

    else
    {
      v5 = 2;
    }

    v20 = v5;
  }

  sub_10002BE9C(&v11, v10);
  return sub_10002BD98(&v18);
}

uint64_t sub_1000CA29C()
{
  sub_10000E274(v0 + 16);
  v1 = *(v0 + 112);
  v5[4] = *(v0 + 96);
  v5[5] = v1;
  v6 = *(v0 + 128);
  v2 = *(v0 + 48);
  v5[0] = *(v0 + 32);
  v5[1] = v2;
  v3 = *(v0 + 80);
  v5[2] = *(v0 + 64);
  v5[3] = v3;
  sub_10002BF18(v5);
  return swift_deallocClassInstance();
}

uint64_t getEnumTagSinglePayload for TranscriptViewConfigurationStyle(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_20;
  }

  v2 = a2 + 5;
  if (a2 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v5 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_20;
      }
    }

    else
    {
      v5 = *(a1 + 1);
      if (!v5)
      {
        goto LABEL_20;
      }
    }

    return (*a1 | (v5 << 8)) - 5;
  }

  if (v4)
  {
    v5 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v5 << 8)) - 5;
    }
  }

LABEL_20:
  v7 = *a1;
  if (v7 >= 4)
  {
    v8 = v7 - 3;
  }

  else
  {
    v8 = 0;
  }

  if (v8 >= 3)
  {
    return v8 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for TranscriptViewConfigurationStyle(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 5;
  if (a3 + 5 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xFB)
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_1000CA45C(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 4)
  {
    return v1 - 3;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_1000CA470(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 3;
  }

  return result;
}

uint64_t sub_1000CA490(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1000C773C(&qword_1002CE540);
  v40 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v38 = v2;
    v39 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = v19 | (v8 << 6);
      v23 = *(v5 + 56);
      v24 = *(*(v5 + 48) + 8 * v22);
      v25 = v23 + 40 * v22;
      if (v40)
      {
        v26 = *v25;
        v27 = *(v25 + 16);
        v43 = *(v25 + 32);
        v41 = v26;
        v42 = v27;
      }

      else
      {
        sub_1000CC230(v25, &v41);
        v28 = v24;
      }

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      Hasher.init(_seed:)();
      String.hash(into:)();
      v29 = Hasher._finalize()();

      v30 = -1 << *(v7 + 32);
      v31 = v29 & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v14 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v14 + 8 * v32);
          if (v36 != -1)
          {
            v15 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v31) & ~*(v14 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v24;
      v16 = *(v7 + 56) + 40 * v15;
      v17 = v41;
      v18 = v42;
      *(v16 + 32) = v43;
      *v16 = v17;
      *(v16 + 16) = v18;
      ++*(v7 + 16);
      v5 = v39;
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_34;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v9, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v37;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_1000CA7A0(uint64_t a1, char a2, uint64_t *a3)
{
  v4 = v3;
  v6 = *v3;
  sub_1000C773C(a3);
  v35 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v6 + 16))
  {
    v34 = v6;
    v9 = 0;
    v10 = (v6 + 64);
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v21 = v18 | (v9 << 6);
      v22 = (*(v6 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v6 + 56) + 8 * v21);
      if ((v35 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v26 = -1 << *(v8 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v15 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v15 + 8 * v28);
          if (v32 != -1)
          {
            v16 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v27) & ~*(v15 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v6 = v34;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v4 = v3;
      goto LABEL_33;
    }

    v33 = 1 << *(v6 + 32);
    v4 = v3;
    if (v33 >= 64)
    {
      bzero(v10, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v33;
    }

    *(v6 + 16) = 0;
  }

LABEL_33:
  *v4 = v8;
  return result;
}

uint64_t sub_1000CAA40(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1000C773C(&qword_1002CE590);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = (*(v5 + 56) + 40 * (v16 | (v8 << 6)));
      if (a2)
      {
        sub_100015FD0(v19, v28);
      }

      else
      {
        sub_1000CC430(v19, v28);
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v20 = -1 << *(v7 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v14 + 8 * v22);
          if (v26 != -1)
          {
            v15 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = sub_100015FD0(v28, *(v7 + 56) + 40 * v15);
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if (a2)
    {
      v27 = 1 << *(v5 + 32);
      if (v27 >= 64)
      {
        bzero((v5 + 64), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v27;
      }

      *(v5 + 16) = 0;
    }

    v3 = v2;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_1000CACE0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1000C773C(&qword_1002CE580);
  v33 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = (*(v5 + 56) + 40 * v20);
      if (v33)
      {
        sub_100015FD0(v24, v34);
      }

      else
      {
        sub_1000CC430(v24, v34);
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      result = sub_100015FD0(v34, *(v7 + 56) + 40 * v15);
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_1000CAFA4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1000C773C(&qword_1002CE588);
  v35 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v2;
    v34 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(v5 + 56);
      v21 = *(*(v5 + 48) + 8 * v19);
      v22 = *(v20 + 4 * v19);
      if ((v35 & 1) == 0)
      {
        v23 = v21;
      }

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      Hasher.init(_seed:)();
      String.hash(into:)();
      v24 = Hasher._finalize()();

      v25 = -1 << *(v7 + 32);
      v26 = v24 & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v21;
      *(*(v7 + 56) + 4 * v15) = v22;
      ++*(v7 + 16);
      v5 = v34;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v33;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v33;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1000CB260(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1000C773C(&qword_1002CE5B8);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v31 = v3;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = (*(v5 + 56) + 32 * v20);
      v32 = v22[1];
      v33 = *v22;
      result = static Hasher._hash(seed:_:)();
      v23 = -1 << *(v7 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v21;
      v16 = (*(v7 + 56) + 32 * v15);
      *v16 = v33;
      v16[1] = v32;
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if (a2)
    {
      v30 = 1 << *(v5 + 32);
      if (v30 >= 64)
      {
        bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v30;
      }

      *(v5 + 16) = 0;
    }

    v3 = v31;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_1000CB4CC(__int128 *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1000D2E40(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_1000CBD78();
      v11 = v19;
      goto LABEL_8;
    }

    sub_1000CACE0(v16, a4 & 1);
    v11 = sub_1000D2E40(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = v21[7] + 40 * v11;
    sub_100014B64(v22);

    return sub_100015FD0(a1, v22);
  }

  else
  {
    sub_1000CB8BC(v11, a2, a3, a1, v21);
  }
}

unint64_t sub_1000CB620(void *a1, char a2, float a3)
{
  v4 = v3;
  v7 = *v3;
  result = sub_10002454C(a1);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a2 & 1) == 0)
  {
    if (v15 < v13 || (a2 & 1) != 0)
    {
      sub_1000CAFA4(v13, a2 & 1);
      result = sub_10002454C(a1);
      if ((v14 & 1) != (v17 & 1))
      {
LABEL_16:
        type metadata accessor for RCRecordingShareMetadataKey(0);
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v16 = result;
      sub_1000CBF20();
      result = v16;
    }
  }

  v18 = *v4;
  if (v14)
  {
    *(v18[7] + 4 * result) = a3;
    return result;
  }

  v18[(result >> 6) + 8] |= 1 << result;
  *(v18[6] + 8 * result) = a1;
  *(v18[7] + 4 * result) = a3;
  v19 = v18[2];
  v12 = __OFADD__(v19, 1);
  v20 = v19 + 1;
  if (v12)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v18[2] = v20;

  return a1;
}

unint64_t sub_1000CB770(uint64_t a1, char a2, double a3, double a4, double a5, double a6)
{
  v7 = v6;
  v14 = *v6;
  result = sub_1000D3004(a1);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 >= v20 && (a2 & 1) != 0)
  {
    goto LABEL_8;
  }

  if (v22 >= v20 && (a2 & 1) == 0)
  {
    v23 = result;
    sub_1000CC07C();
    result = v23;
    goto LABEL_8;
  }

  sub_1000CB260(v20, a2 & 1);
  result = sub_1000D3004(a1);
  if ((v21 & 1) == (v24 & 1))
  {
LABEL_8:
    v25 = *v7;
    if (v21)
    {
      v26 = (v25[7] + 32 * result);
      *v26 = a3;
      v26[1] = a4;
      v26[2] = a5;
      v26[3] = a6;
      return result;
    }

    v25[(result >> 6) + 8] |= 1 << result;
    *(v25[6] + 8 * result) = a1;
    v27 = (v25[7] + 32 * result);
    *v27 = a3;
    v27[1] = a4;
    v27[2] = a5;
    v27[3] = a6;
    v28 = v25[2];
    v19 = __OFADD__(v28, 1);
    v29 = v28 + 1;
    if (!v19)
    {
      v25[2] = v29;
      return result;
    }

    goto LABEL_13;
  }

LABEL_14:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_1000CB8BC(unint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_100015FD0(a4, a5[7] + 40 * a1);
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

id sub_1000CB92C()
{
  v1 = v0;
  sub_1000C773C(&qword_1002CE540);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        sub_1000CC230(*(v2 + 56) + 40 * v17, v22);
        *(*(v4 + 48) + 8 * v17) = v18;
        v19 = *(v4 + 56) + 40 * v17;
        v20 = v23;
        v21 = v22[1];
        *v19 = v22[0];
        *(v19 + 16) = v21;
        *(v19 + 32) = v20;
        result = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1000CBABC()
{
  v1 = v0;
  sub_1000C773C(&qword_1002CE5A8);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 8 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 8 * v14);
      *(*(v4 + 48) + 16 * v14) = *(*(v2 + 48) + 16 * v14);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1000CBC0C()
{
  v1 = v0;
  sub_1000C773C(&qword_1002CE590);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 40 * (v14 | (v8 << 6));
        sub_1000CC430(*(v2 + 56) + v17, v18);
        result = sub_100015FD0(v18, *(v4 + 56) + v17);
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1000CBD78()
{
  v1 = v0;
  sub_1000C773C(&qword_1002CE580);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 40 * v17;
        sub_1000CC430(*(v2 + 56) + 40 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_100015FD0(v25, *(v4 + 56) + v22);
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v24;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v4;
  }

  return result;
}

id sub_1000CBF20()
{
  v1 = v0;
  sub_1000C773C(&qword_1002CE588);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(*(v2 + 56) + 4 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 4 * v17) = v19;
        result = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1000CC07C()
{
  v1 = v0;
  sub_1000C773C(&qword_1002CE5B8);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; v20[1] = v19)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = (*(v2 + 56) + 32 * v14);
      v18 = *v17;
      v19 = v17[1];
      *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14);
      v20 = (*(v4 + 56) + 32 * v14);
      *v20 = v18;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

id sub_1000CC28C@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Locale();
  __chkstk_darwin(v2 - 8, v3);
  v4 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v4 - 8, v5);
  result = MobileGestalt_get_current_device();
  if (result)
  {
    v7 = result;
    MobileGestalt_get_wapiCapability();

    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    result = String.init(localized:table:bundle:locale:comment:)();
    *a1 = 0xD000000000000015;
    *(a1 + 8) = 0x800000010022D900;
    *(a1 + 16) = result;
    *(a1 + 24) = v8;
    *(a1 + 32) = 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000CC430(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t getEnumTagSinglePayload for TranscriptViewConfigurationStyle.EmptyStateType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TranscriptViewConfigurationStyle.EmptyStateType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1000CC5E8()
{
  result = qword_1002CE5B0;
  if (!qword_1002CE5B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002CE5B0);
  }

  return result;
}

void *sub_1000CC63C(char a1)
{
  result = sub_10000AACC((v1 + 16), *(v1 + 40));
  if (*(*result + 32))
  {
    result = sub_10000AACC((v1 + 16), *(v1 + 40));
    if ((*(*result + 51) & 1) == 0)
    {
      result = swift_unknownObjectWeakLoadStrong();
      if (result)
      {
        v4 = &selRef_expandTranscriptView;
        if ((a1 & 1) == 0)
        {
          v4 = &selRef_collapseTranscriptView;
        }

        [result *v4];

        return swift_unknownObjectRelease();
      }
    }
  }

  return result;
}

uint64_t sub_1000CC6DC()
{
  sub_100014B64(v0 + 16);
  swift_unknownObjectRelease();
  sub_10000E274(v0 + 64);

  return swift_deallocClassInstance();
}

unint64_t sub_1000CC724(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x100000000) != 0)
  {
    return 0xD00000000000001FLL;
  }

  _StringGuts.grow(_:)(56);
  v2._countAndFlagsBits = 0xD000000000000023;
  v2._object = 0x800000010022DCB0;
  String.append(_:)(v2);
  Double.write<A>(to:)();
  v3._object = 0x800000010022DCE0;
  v3._countAndFlagsBits = 0xD000000000000011;
  String.append(_:)(v3);
  v4._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v4);

  return 0;
}

void sub_1000CC85C()
{
  v1 = *(v0 + 56);
  if (v1)
  {
    v2 = OBJC_IVAR____TtC10VoiceMemos21AudioEnginePlayerItem_renderer;
    v3 = *(v1 + OBJC_IVAR____TtC10VoiceMemos21AudioEnginePlayerItem_renderer);

    [v3 currentSampleTime];
    if ((*&v4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v4 > -9.22337204e18)
    {
      if (v4 < 9.22337204e18)
      {
        if (*(v1 + OBJC_IVAR____TtC10VoiceMemos21AudioEnginePlayerItem_playbackEndTime) >= (v4 & ~(v4 >> 63)))
        {
          v5 = v4 & ~(v4 >> 63);
        }

        else
        {
          v5 = *(v1 + OBJC_IVAR____TtC10VoiceMemos21AudioEnginePlayerItem_playbackEndTime);
        }

        v6 = *(v1 + OBJC_IVAR____TtC10VoiceMemos21AudioEnginePlayerItem_silenceRemover);
        if (!v6)
        {
          goto LABEL_11;
        }

        v7 = [v6 samplesRemoved];
        if ((v7 & 0x8000000000000000) == 0)
        {
          if (!__OFADD__(v5, v7))
          {
LABEL_11:
            v8 = *(v1 + v2);
            [v8 sampleRate];

            return;
          }

          goto LABEL_17;
        }

LABEL_16:
        __break(1u);
LABEL_17:
        __break(1u);
        return;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }

    __break(1u);
    goto LABEL_15;
  }
}

uint64_t sub_1000CC97C()
{
  if (*(v0 + 96))
  {
    v1 = *(v0 + 96);
  }

  else
  {
    v1 = sub_1000CC9DC(v0);
    *(v0 + 96) = v1;
  }

  return v1;
}

uint64_t sub_1000CC9DC(uint64_t a1)
{
  v20 = a1;
  v1 = sub_1000C773C(&qword_1002CEB48);
  __chkstk_darwin(v1 - 8, v2);
  v4 = &v17 - v3;
  v17 = type metadata accessor for OS_dispatch_queue.SchedulerTimeType.Stride();
  v5 = *(v17 - 8);
  __chkstk_darwin(v17, v6);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1000C773C(&qword_1002CEB50);
  v9 = *(v19 - 8);
  __chkstk_darwin(v19, v10);
  v12 = &v17 - v11;
  v21 = &off_10028CA00;
  sub_1000C773C(&qword_1002CEB58);
  swift_allocObject();
  v18 = CurrentValueSubject.init(_:)();
  v21 = v18;
  static OS_dispatch_queue.SchedulerTimeType.Stride.seconds(_:)();
  sub_100017154();
  v13 = static OS_dispatch_queue.main.getter();
  v22 = v13;
  v14 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  (*(*(v14 - 8) + 56))(v4, 1, 1, v14);
  sub_100008034(&qword_1002CEB60, &qword_1002CEB58);
  sub_1000171F8(&qword_1002CEB68, sub_100017154);
  Publisher.debounce<A>(for:scheduler:options:)();
  sub_1000D0D14(v4);

  (*(v5 + 8))(v8, v17);
  swift_allocObject();
  swift_weakInit();
  sub_100008034(&qword_1002CEB70, &qword_1002CEB50);
  v15 = v19;
  Publisher<>.sink(receiveValue:)();

  (*(v9 + 8))(v12, v15);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  return v18;
}

uint64_t sub_1000CCDA4()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1000CC85C();
    sub_1000CD408(1, 0, 0, v1);
  }

  return result;
}

uint64_t sub_1000CCE0C(uint64_t a1)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v18 = *(v3 - 8);
  __chkstk_darwin(v3, v4);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DispatchQoS();
  v7 = *(v17 - 8);
  __chkstk_darwin(v17, v8);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + 56))
  {
    if (*(v1 + 16) == 1)
    {
      sub_1000CF3BC();
      *(v1 + 16) = 0;
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        [Strong audioPlayerIsPlayingChanged:0];
        swift_unknownObjectRelease();
      }
    }
  }

  v12 = *(v1 + 56);
  *(v1 + 56) = a1;
  v16 = *(v1 + 40);
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  aBlock[4] = DebugData.init(name:);
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10012ED20;
  aBlock[3] = &unk_10028DD68;
  v14 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v19 = _swiftEmptyArrayStorage;
  sub_1000171F8(&qword_1002D1DC0, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000C773C(&unk_1002D1080);
  sub_100008034(&qword_1002D1DD0, &unk_1002D1080);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v14);

  (*(v18 + 8))(v6, v3);
  (*(v7 + 8))(v10, v17);
}

void sub_1000CD13C()
{
  if (*(v0 + 56))
  {
    if (*(v0 + 16) != 1)
    {
      sub_1000CEF64();
      *(v0 + 16) = 1;
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        [Strong audioPlayerIsPlayingChanged:1];

        swift_unknownObjectRelease();
      }
    }
  }
}

void sub_1000CD1B8()
{
  if (*(v0 + 56))
  {
    if (*(v0 + 16))
    {
      sub_1000CF3BC();
      *(v0 + 16) = 0;
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        [Strong audioPlayerIsPlayingChanged:0];

        swift_unknownObjectRelease();
      }
    }
  }
}

void sub_1000CD22C(double a1)
{
  v2 = *(v1 + 56);
  if (v2)
  {
    v3 = *(*(v2 + OBJC_IVAR____TtC10VoiceMemos21AudioEnginePlayerItem_assetReader) + 24) * a1;
    if ((*&v3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v3 > -9.22337204e18)
    {
      if (v3 < 9.22337204e18)
      {
        if (*(v2 + OBJC_IVAR____TtC10VoiceMemos21AudioEnginePlayerItem_playbackEndTime) == v3)
        {
          return;
        }

        *(v2 + OBJC_IVAR____TtC10VoiceMemos21AudioEnginePlayerItem_playbackEndTime) = v3;
        *(v2 + OBJC_IVAR____TtC10VoiceMemos21AudioEnginePlayerItem_seekPosition) = -1;
        v4 = *(v1 + 48);
        v5 = swift_allocObject();
        *(v5 + 16) = sub_1000D0D00;
        *(v5 + 24) = v2;
        v8[4] = sub_1000D0FC4;
        v8[5] = v5;
        v8[0] = _NSConcreteStackBlock;
        v8[1] = 1107296256;
        v8[2] = sub_100157BA4;
        v8[3] = &unk_10028DD18;
        v6 = _Block_copy(v8);
        swift_retain_n();

        dispatch_sync(v4, v6);
        _Block_release(v6);
        LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

        if ((v4 & 1) == 0)
        {
          sub_1000CC85C();
          sub_1000CD408(0, 0, 0, v7);

          return;
        }

LABEL_12:
        __break(1u);
        return;
      }

LABEL_11:
      __break(1u);
      goto LABEL_12;
    }

    __break(1u);
    goto LABEL_11;
  }
}

void sub_1000CD408(char a1, void (*a2)(void), uint64_t a3, double a4)
{
  v5 = v4;
  v10 = type metadata accessor for DispatchWorkItemFlags();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10, v12);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DispatchQoS();
  v17 = __chkstk_darwin(v15, v16);
  v20 = &v36 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(v5 + 56);
  if (v21)
  {
    v41 = a3;
    v42 = v18;
    v43 = v17;
    if (a4 < 0.0)
    {
      a4 = 0.0;
    }

    v22 = OBJC_IVAR____TtC10VoiceMemos21AudioEnginePlayerItem_assetReader;

    v23 = sub_1000D9588();
    if (v23 >= a4)
    {
      v23 = a4;
    }

    v24 = v23 * *(*(v21 + v22) + 24);
    if ((*&v24 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v24 > -9.22337204e18)
    {
      if (v24 < 9.22337204e18)
      {
        v25 = *(v21 + OBJC_IVAR____TtC10VoiceMemos21AudioEnginePlayerItem_playbackEndTime);
        v26 = __OFSUB__(v25, 1);
        v27 = v25 - 1;
        if (!v26)
        {
          v39 = v11;
          v40 = v10;
          if (v27 >= v24)
          {
            v28 = v24;
          }

          else
          {
            v28 = v27;
          }

          OS_dispatch_queue.sync<A>(execute:)();
          if ((a1 & 1) != 0 || v28 != aBlock || *(v21 + OBJC_IVAR____TtC10VoiceMemos21AudioEnginePlayerItem_seekPosition) == -1)
          {
            *(v21 + OBJC_IVAR____TtC10VoiceMemos21AudioEnginePlayerItem_seekPosition) = v28;
            v33 = swift_allocObject();
            *(v33 + 16) = v28;
            *(v33 + 24) = v21;
            *(v33 + 32) = v5;
            *(v33 + 40) = a1 & 1;
            v34 = v41;
            *(v33 + 48) = a2;
            *(v33 + 56) = v34;
            v49 = sub_1000D0D98;
            v50 = v33;
            aBlock = _NSConcreteStackBlock;
            v46 = 1107296256;
            v47 = sub_10012ED20;
            v48 = &unk_10028DDB8;
            v35 = _Block_copy(&aBlock);

            sub_1000D0DAC(a2);

            static DispatchQoS.unspecified.getter();
            v44 = _swiftEmptyArrayStorage;
            sub_1000171F8(&qword_1002D1DC0, &type metadata accessor for DispatchWorkItemFlags);
            sub_1000C773C(&unk_1002D1080);
            sub_100008034(&qword_1002D1DD0, &unk_1002D1080);
            v31 = v40;
            dispatch thunk of SetAlgebra.init<A>(_:)();
            OS_dispatch_queue.async(group:qos:flags:execute:)();
            _Block_release(v35);
          }

          else
          {
            if (!a2)
            {
              goto LABEL_20;
            }

            v38 = *(v5 + 40);
            v29 = swift_allocObject();
            v30 = v41;
            *(v29 + 16) = a2;
            *(v29 + 24) = v30;
            v49 = sub_1000D0DBC;
            v50 = v29;
            aBlock = _NSConcreteStackBlock;
            v46 = 1107296256;
            v47 = sub_10012ED20;
            v48 = &unk_10028DE08;
            v37 = _Block_copy(&aBlock);
            sub_1000D0DAC(a2);

            static DispatchQoS.unspecified.getter();
            v44 = _swiftEmptyArrayStorage;
            sub_1000171F8(&qword_1002D1DC0, &type metadata accessor for DispatchWorkItemFlags);
            sub_1000C773C(&unk_1002D1080);
            sub_100008034(&qword_1002D1DD0, &unk_1002D1080);
            v31 = v40;
            dispatch thunk of SetAlgebra.init<A>(_:)();
            v32 = v37;
            OS_dispatch_queue.async(group:qos:flags:execute:)();
            _Block_release(v32);
            sub_1000338B4(a2);
          }

          (*(v39 + 8))(v14, v31);
          (*(v42 + 8))(v20, v43);
LABEL_20:

          return;
        }

        goto LABEL_28;
      }

LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
      return;
    }

    __break(1u);
    goto LABEL_27;
  }

  if (a2)
  {
    a2(0);
  }
}

uint64_t sub_1000CD9D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v17 = *(v4 - 8);
  __chkstk_darwin(v4, v5);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DispatchQoS();
  v8 = *(v16 - 8);
  __chkstk_darwin(v16, v9);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100017154();
  v12 = static OS_dispatch_queue.main.getter();
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = a2;
  aBlock[4] = sub_1000D0DC4;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10012ED20;
  aBlock[3] = &unk_10028DE58;
  v14 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1000171F8(&qword_1002D1DC0, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000C773C(&unk_1002D1080);
  sub_100008034(&qword_1002D1DD0, &unk_1002D1080);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v14);

  (*(v17 + 8))(v7, v4);
  return (*(v8 + 8))(v11, v16);
}

uint64_t sub_1000CDCBC(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v77 = a4;
  v11 = type metadata accessor for DispatchWorkItemFlags();
  v83 = *(v11 - 8);
  v84 = v11;
  __chkstk_darwin(v11, v12);
  v81 = &v66 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = type metadata accessor for DispatchQoS();
  v80 = *(v82 - 8);
  __chkstk_darwin(v82, v14);
  v79 = &v66 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for OSSignpostID();
  v74 = *(v16 - 8);
  v75 = v16;
  v18 = __chkstk_darwin(v16, v17);
  v72 = &v66 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18, v20);
  v73 = &v66 - v21;
  v22 = type metadata accessor for OSSignposter();
  v78 = *(v22 - 8);
  __chkstk_darwin(v22, v23);
  v25 = &v66 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for SignpostInterval();
  result = __chkstk_darwin(v26, v27);
  v30 = &v66 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = OBJC_IVAR____TtC10VoiceMemos21AudioEnginePlayerItem_seekPosition;
  v32 = *(a2 + OBJC_IVAR____TtC10VoiceMemos21AudioEnginePlayerItem_seekPosition);
  v76 = a1;
  if (v32 != a1 || (v71 = a3, !*(a3 + 56)))
  {
    v37 = 0;
    if (!a5)
    {
      return result;
    }

    goto LABEL_11;
  }

  v33 = a2;
  v69 = result;
  v70 = a5;

  v34 = static UUID.== infix(_:_:)();

  if ((v34 & 1) == 0)
  {
    v37 = 0;
    a5 = v70;
    if (!v70)
    {
      return result;
    }

LABEL_11:
    sub_100017154();

    v38 = static OS_dispatch_queue.main.getter();
    v39 = swift_allocObject();
    *(v39 + 16) = a5;
    *(v39 + 24) = a6;
    *(v39 + 32) = v37;
    v89 = sub_1000D0DF0;
    v90 = v39;
    aBlock = _NSConcreteStackBlock;
    v86 = 1107296256;
    v87 = sub_10012ED20;
    v88 = &unk_10028DEA8;
    v40 = _Block_copy(&aBlock);

    v41 = v79;
    static DispatchQoS.unspecified.getter();
    aBlock = _swiftEmptyArrayStorage;
    sub_1000171F8(&qword_1002D1DC0, &type metadata accessor for DispatchWorkItemFlags);
    sub_1000C773C(&unk_1002D1080);
    sub_100008034(&qword_1002D1DD0, &unk_1002D1080);
    v42 = v81;
    v43 = v84;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v40);

    sub_1000338B4(a5);
    (*(v83 + 8))(v42, v43);
    return (*(v80 + 8))(v41, v82);
  }

  v35 = v77;
  if ((v77 & 1) == 0 && *(a2 + v31) == *(a2 + OBJC_IVAR____TtC10VoiceMemos21AudioEnginePlayerItem_preparedToPlayIndex))
  {
    v36 = *(a2 + OBJC_IVAR____TtC10VoiceMemos21AudioEnginePlayerItem_assetReader);
    if ((*(v36 + 120) & 1) == 0 && *(a2 + OBJC_IVAR____TtC10VoiceMemos21AudioEnginePlayerItem_playbackEndTime) == *(v36 + 112))
    {
      v37 = 1;
      a5 = v70;
      if (!v70)
      {
        return result;
      }

      goto LABEL_11;
    }
  }

  v68 = a6;
  if (qword_1002CDDA0 != -1)
  {
    swift_once();
  }

  v44 = sub_100018D90(v22, qword_1002E8CF8);
  v45 = *(v78 + 16);
  v45(v25, v44, v22);
  aBlock = 0x203D206563726F66;
  v86 = 0xE800000000000000;
  if (v35)
  {
    v46 = 1702195828;
  }

  else
  {
    v46 = 0x65736C6166;
  }

  if (v35)
  {
    v47 = 0xE400000000000000;
  }

  else
  {
    v47 = 0xE500000000000000;
  }

  v48 = v47;
  String.append(_:)(*&v46);

  v49 = aBlock;
  v50 = v86;
  v45(v30, v25, v22);
  v51 = &v30[*(v69 + 20)];
  *v51 = "AudioPlayer.prepare";
  *(v51 + 1) = 19;
  v51[16] = 2;
  OSSignposter.logHandle.getter();
  v52 = v73;
  OSSignpostID.init(log:)();

  v53 = OSSignposter.logHandle.getter();
  v54 = static os_signpost_type_t.begin.getter();
  v55 = OS_os_log.signpostsEnabled.getter();

  v67 = v33;
  if (v55)
  {
    v56 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    v58 = v49;
    v59 = v57;
    aBlock = v57;
    *v56 = 136315138;
    v60 = sub_10001901C(v58, v50, &aBlock);

    *(v56 + 4) = v60;
    v61 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v53, v54, v61, "AudioPlayer.prepare", "%s", v56, 0xCu);
    sub_100014B64(v59);
  }

  else
  {
  }

  a6 = v68;
  a5 = v70;
  v63 = v74;
  v62 = v75;
  (*(v74 + 16))(v72, v52, v75);
  type metadata accessor for OSSignpostIntervalState();
  swift_allocObject();
  v64 = OSSignpostIntervalState.init(id:isOpen:)();
  (*(v78 + 8))(v25, v22);
  (*(v63 + 8))(v52, v62);
  *&v30[*(v69 + 24)] = v64;
  v65 = v71;
  sub_1000CF688(v67, v76, *(v67 + OBJC_IVAR____TtC10VoiceMemos21AudioEnginePlayerItem_playbackEndTime));
  sub_1000E7E64();
  if (*(v65 + 16) == 1)
  {
    sub_1000CEF64();
  }

  result = sub_1000D0E20(v30);
  v37 = 1;
  if (a5)
  {
    goto LABEL_11;
  }

  return result;
}

uint64_t sub_1000CE51C(char *a1, uint64_t a2, char a3)
{
  v7 = a1;
  v8 = [a1 rc_playbackFormat];
  if (!v8)
  {
    sub_1000D0B9C();
    swift_allocError();
    *v17 = 0;
    *(v17 + 8) = 0;
    *(v17 + 12) = 1;
    swift_willThrow();
    return v7;
  }

  v9 = v8;
  [v8 sampleRate];
  v11 = v10;
  v12 = [v9 channelCount];

  v13 = *(v3 + 104);
  type metadata accessor for AudioAssetReader();
  v14 = swift_allocObject();
  *(v14 + 104) = 0;
  *(v14 + 112) = 0;
  *(v14 + 120) = 1;
  *(v14 + 128) = 0;
  *(v14 + 136) = 1;
  *(v14 + 16) = v7;
  *(v14 + 24) = v11;
  *(v14 + 32) = v12;
  *(v14 + 40) = 0;
  *(v14 + 48) = v13;
  *(v14 + 56) = 0;
  *(v14 + 60) = 1;
  *(v14 + 96) = 0;
  *(v14 + 64) = 0u;
  *(v14 + 80) = 0u;

  v15 = v7;
  v16 = sub_1000CFED8(v12, v11);
  if (v4)
  {

    return v7;
  }

  v18 = v16;
  v19 = sub_1000CFD74(v12, v11);
  type metadata accessor for AudioEnginePlayerItem();
  v7 = swift_allocObject();
  result = UUID.init()();
  *&v7[OBJC_IVAR____TtC10VoiceMemos21AudioEnginePlayerItem_seekPosition] = -1;
  *&v7[OBJC_IVAR____TtC10VoiceMemos21AudioEnginePlayerItem_preparedToPlayIndex] = -1;
  *&v7[OBJC_IVAR____TtC10VoiceMemos21AudioEnginePlayerItem_renderer] = v18;
  *&v7[OBJC_IVAR____TtC10VoiceMemos21AudioEnginePlayerItem_assetReader] = v14;
  *&v7[OBJC_IVAR____TtC10VoiceMemos21AudioEnginePlayerItem_silenceRemover] = v19;
  if (a3)
  {

    v21 = sub_1000D9588();
  }

  else
  {
    v21 = *&a2;
  }

  v22 = v11 * v21;
  if (COERCE__INT64(fabs(v11 * v21)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_15;
  }

  if (v22 <= -9.22337204e18)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v22 < 9.22337204e18)
  {
    *&v7[OBJC_IVAR____TtC10VoiceMemos21AudioEnginePlayerItem_playbackEndTime] = v22;
    return v7;
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_1000CE79C(void *a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v12 = type metadata accessor for DispatchWorkItemFlags();
  v26 = *(v12 - 8);
  __chkstk_darwin(v12, v13);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for DispatchQoS();
  v16 = *(v25 - 8);
  __chkstk_darwin(v25, v17);
  v19 = &v24 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *(v6 + 40);
  v20 = swift_allocObject();
  *(v20 + 16) = v6;
  *(v20 + 24) = a1;
  *(v20 + 32) = a2;
  *(v20 + 40) = a3 & 1;
  *(v20 + 48) = a4;
  *(v20 + 56) = a5;
  aBlock[4] = sub_1000D0C34;
  aBlock[5] = v20;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10012ED20;
  aBlock[3] = &unk_10028DC28;
  v21 = _Block_copy(aBlock);

  v22 = a1;

  static DispatchQoS.unspecified.getter();
  v27 = _swiftEmptyArrayStorage;
  sub_1000171F8(&qword_1002D1DC0, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000C773C(&unk_1002D1080);
  sub_100008034(&qword_1002D1DD0, &unk_1002D1080);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v21);
  (*(v26 + 8))(v15, v12);
  (*(v16 + 8))(v19, v25);
}

uint64_t sub_1000CEAA0(uint64_t a1, char *a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for DispatchWorkItemFlags();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11, v13);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DispatchQoS();
  v26 = *(v16 - 8);
  v27 = v16;
  __chkstk_darwin(v16, v17);
  v19 = &v25 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1000CE51C(a2, a3, a4 & 1);
  sub_100017154();
  v25 = static OS_dispatch_queue.main.getter();
  v21 = swift_allocObject();
  v21[2] = a5;
  v21[3] = a6;
  v21[4] = v20;
  aBlock[4] = sub_1000D0CCC;
  aBlock[5] = v21;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10012ED20;
  aBlock[3] = &unk_10028DCC8;
  v22 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1000171F8(&qword_1002D1DC0, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000C773C(&unk_1002D1080);
  sub_100008034(&qword_1002D1DD0, &unk_1002D1080);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v23 = v25;
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v22);

  (*(v12 + 8))(v15, v11);
  return (*(v26 + 8))(v19, v27);
}

uint64_t sub_1000CEF64()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1, v3);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  result = __chkstk_darwin(v6, v7);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v0 + 56);
  if (v12)
  {
    v15 = *(v0 + 48);
    v16 = v9;
    v17 = result;
    v13 = swift_allocObject();
    *(v13 + 16) = v0;
    *(v13 + 24) = v12;
    aBlock[4] = sub_1000D0C2C;
    aBlock[5] = v13;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10012ED20;
    aBlock[3] = &unk_10028DBD8;
    v14 = _Block_copy(aBlock);
    swift_retain_n();

    static DispatchQoS.unspecified.getter();
    v18 = _swiftEmptyArrayStorage;
    sub_1000171F8(&qword_1002D1DC0, &type metadata accessor for DispatchWorkItemFlags);
    sub_1000C773C(&unk_1002D1080);
    sub_100008034(&qword_1002D1DD0, &unk_1002D1080);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v14);

    (*(v2 + 8))(v5, v1);
    (*(v16 + 8))(v11, v17);
  }

  return result;
}

id sub_1000CF24C(uint64_t a1, uint64_t a2)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = 0;
    if (![Strong activateAudioSessionForPlaybackAndReturnError:&v12])
    {
      v11 = v12;
      v10 = _convertNSErrorToError(_:)();

      swift_willThrow();
      swift_unknownObjectRelease();
      goto LABEL_10;
    }

    v4 = v12;
    swift_unknownObjectRelease();
  }

  *(a2 + OBJC_IVAR____TtC10VoiceMemos21AudioEnginePlayerItem_preparedToPlayIndex) = -1;
  v5 = *(a2 + OBJC_IVAR____TtC10VoiceMemos21AudioEnginePlayerItem_renderer);
  v12 = 0;
  v6 = [v5 startAndReturnError:&v12];
  v7 = v12;
  if (!v6)
  {
    v9 = v12;
    v10 = _convertNSErrorToError(_:)();

    swift_willThrow();
LABEL_10:
    sub_1000CF9A4(v10);
  }

  return v7;
}

uint64_t sub_1000CF3BC()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1, v3);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v7 = *(v6 - 8);
  result = __chkstk_darwin(v6, v8);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v0 + 56);
  if (v12)
  {
    v16 = *(v0 + 48);
    aBlock[4] = sub_1000D0E7C;
    aBlock[5] = v12;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10012ED20;
    aBlock[3] = &unk_10028DED0;
    v15 = result;
    v14 = _Block_copy(aBlock);
    swift_retain_n();
    static DispatchQoS.unspecified.getter();
    v17 = _swiftEmptyArrayStorage;
    sub_1000171F8(&qword_1002D1DC0, &type metadata accessor for DispatchWorkItemFlags);
    sub_1000C773C(&unk_1002D1080);
    sub_100008034(&qword_1002D1DD0, &unk_1002D1080);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v13 = v14;
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v13);

    (*(v2 + 8))(v5, v1);
    (*(v7 + 8))(v11, v15);
  }

  return result;
}

uint64_t sub_1000CF688(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 48);
  v8 = swift_allocObject();
  *(v8 + 16) = sub_1000D0F88;
  *(v8 + 24) = a1;
  v20 = sub_1000D0C10;
  v21 = v8;
  aBlock = _NSConcreteStackBlock;
  v17 = 1107296256;
  v18 = sub_100157BA4;
  v19 = &unk_10028DB10;
  v9 = _Block_copy(&aBlock);

  dispatch_sync(v7, v9);
  _Block_release(v9);
  LOBYTE(v9) = swift_isEscapingClosureAtFileLocation();

  if (v9)
  {
    __break(1u);
    goto LABEL_5;
  }

  v11 = *(a1 + OBJC_IVAR____TtC10VoiceMemos21AudioEnginePlayerItem_renderer);
  [v11 reset];
  [v11 setSampleOffset:a2];
  *(*(a1 + OBJC_IVAR____TtC10VoiceMemos21AudioEnginePlayerItem_assetReader) + 48) = *(v3 + 104);

  sub_1000D95C8(a2, a3, 0);
  [*(a1 + OBJC_IVAR____TtC10VoiceMemos21AudioEnginePlayerItem_silenceRemover) reset];
  [v11 prepare];
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  v13 = swift_allocObject();
  *(v13 + 16) = sub_1000D0C18;
  *(v13 + 24) = v12;
  v20 = sub_1000D0FC4;
  v21 = v13;
  aBlock = _NSConcreteStackBlock;
  v17 = 1107296256;
  v18 = sub_100157BA4;
  v19 = &unk_10028DB88;
  v14 = _Block_copy(&aBlock);

  dispatch_sync(v7, v14);
  _Block_release(v14);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t sub_1000CF9A4(uint64_t a1)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3, v5);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8, v10);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v14 = result;
    v21 = v4;
    v22 = v8;
    v15 = *(v1 + 32);
    sub_100017154();
    v20 = static OS_dispatch_queue.main.getter();
    v16 = swift_allocObject();
    v16[2] = v1;
    v16[3] = v14;
    v16[4] = v15;
    v16[5] = a1;
    aBlock[4] = sub_1000D0E94;
    aBlock[5] = v16;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10012ED20;
    aBlock[3] = &unk_10028DF20;
    v17 = _Block_copy(aBlock);

    swift_unknownObjectRetain();
    swift_errorRetain();

    static DispatchQoS.unspecified.getter();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_1000171F8(&qword_1002D1DC0, &type metadata accessor for DispatchWorkItemFlags);
    sub_1000C773C(&unk_1002D1080);
    sub_100008034(&qword_1002D1DD0, &unk_1002D1080);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v18 = v20;
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v17);
    swift_unknownObjectRelease();

    (*(v21 + 8))(v7, v3);
    return (*(v9 + 8))(v12, v22);
  }

  return result;
}

void sub_1000CFCC4(uint64_t a1, void *a2)
{
  if (*(a1 + 56))
  {
    if (*(a1 + 16) == 1)
    {
      sub_1000CF3BC();
      *(a1 + 16) = 0;
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        [Strong audioPlayerIsPlayingChanged:0];
        swift_unknownObjectRelease();
      }
    }
  }

  v5 = _convertErrorToNSError(_:)();
  [a2 audioPlayerError:v5];
}

id sub_1000CFD74(uint64_t a1, double a2)
{
  v5 = *(v2 + 64);
  if (v5)
  {
    v6 = v5;
    [v6 sampleRate];
    if (v7 == a2 && [v6 channelCount] == a1)
    {
      [v6 reset];
      return v5;
    }
  }

  if ((a1 & 0x80000000) != 0)
  {
    __break(1u);
  }

  v13 = 0;
  v5 = [objc_allocWithZone(VMSilenceRemover) initWithSampleRate:a1 channelCount:&v13 error:a2];
  v8 = v13;
  if (v5)
  {
    [v5 setInputProvider:v2];
    [v5 setEnabled:*(v2 + 80)];
    v9 = *(v2 + 64);
    *(v2 + 64) = v5;
    v10 = v5;
  }

  else
  {
    v11 = v8;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v5;
}

id sub_1000CFED8(uint64_t a1, double a2)
{
  v6 = *(v2 + 72);
  if (v6)
  {
    v3 = v6;
    [v3 sampleRate];
    if (v7 == a2 && [v3 channelCount] == a1)
    {
      [v3 reset];
      return v3;
    }
  }

  v8 = [objc_allocWithZone(AVAudioFormat) initStandardFormatWithSampleRate:a1 channels:a2];
  if (v8)
  {
    v9 = v8;
    v3 = [objc_allocWithZone(VMAudioOutputRenderer) initWithQueue:*(v2 + 40)];
    [v3 setDelegate:v2];
    v10 = swift_allocObject();
    swift_weakInit();
    aBlock[4] = sub_1000D0BF0;
    aBlock[5] = v10;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000D028C;
    aBlock[3] = &unk_10028DAC0;
    v11 = _Block_copy(aBlock);

    aBlock[0] = 0;
    v12 = [v3 prepareToRender:v9 inputBlock:v11 error:aBlock];
    _Block_release(v11);
    if (v12)
    {
      v13 = aBlock[0];
    }

    else
    {
      v15 = aBlock[0];
      _convertNSErrorToError(_:)();

      swift_willThrow();
    }
  }

  else
  {
    sub_1000D0B9C();
    swift_allocError();
    *v14 = 0;
    *(v14 + 8) = 0;
    *(v14 + 12) = 1;
    swift_willThrow();
  }

  return v3;
}

uint64_t sub_1000D0138(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v5 = *(result + 56);
    if (v5)
    {
      if (*(v5 + OBJC_IVAR____TtC10VoiceMemos21AudioEnginePlayerItem_silenceRemover))
      {
        if (a2 < 0xFFFFFFFF80000000)
        {
          __break(1u);
        }

        else if (a2 <= 0x7FFFFFFF)
        {
          v6 = [*(v5 + OBJC_IVAR____TtC10VoiceMemos21AudioEnginePlayerItem_silenceRemover) fillNextBuffer:a1 frameCount:a2];

          return v6;
        }

        __break(1u);
      }

      else
      {

        v7 = sub_1000DA040(a1, a2);

        return v7;
      }
    }

    else
    {

      return 0;
    }
  }

  return result;
}

uint64_t sub_1000D028C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);

  v6 = v5(a2, a3);

  return v6;
}

id *AudioEnginePlayer.deinit()
{
  sub_10000E274((v0 + 3));

  return v0;
}

uint64_t AudioEnginePlayer.__deallocating_deinit()
{
  AudioEnginePlayer.deinit();

  return swift_deallocClassInstance();
}

id sub_1000D0384(id result)
{
  *(v1 + 80) = result;
  v2 = *(v1 + 56);
  if (v2)
  {
    return [*(v2 + OBJC_IVAR____TtC10VoiceMemos21AudioEnginePlayerItem_silenceRemover) setEnabled:result & 1];
  }

  return result;
}

id sub_1000D03BC(id result)
{
  *(v1 + 81) = result;
  v2 = *(v1 + 56);
  if (v2)
  {
    return [*(v2 + OBJC_IVAR____TtC10VoiceMemos21AudioEnginePlayerItem_renderer) setEnhanceEnabled:result & 1];
  }

  return result;
}

id sub_1000D03F8(float a1)
{
  *(v1 + 84) = a1;
  v2 = *(v1 + 56);
  if (v2)
  {
    return [*(v2 + OBJC_IVAR____TtC10VoiceMemos21AudioEnginePlayerItem_renderer) setRate:?];
  }

  return result;
}

uint64_t sub_1000D0420(uint64_t a1)
{
  *(v1 + 104) = a1;

  sub_1000CC97C();

  CurrentValueSubject.value.setter();
}

uint64_t AudioEnginePlayer.fillNextBuffer(_:frameCount:)(uint64_t a1, int a2)
{
  v3 = *(v2 + 56);
  if (!v3)
  {
    return 0;
  }

  v5 = a2;

  v6 = sub_1000DA040(a1, v5);

  if (v6 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (v6 <= 0x7FFFFFFF)
  {
    [*(v3 + OBJC_IVAR____TtC10VoiceMemos21AudioEnginePlayerItem_renderer) setShouldRenderSilenceOnEmptyQueue:v6 != 0];

    return v6;
  }

  __break(1u);
  return result;
}

id AudioEnginePlayer.audioEngineOutputNodeAccessQueue()()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v1 = [Strong audioEngineOutputNodeAccessQueue];
  swift_unknownObjectRelease();
  return v1;
}

Swift::Void __swiftcall AudioEnginePlayer.audioRendererQueueEmpty()()
{
  if (*(v0 + 112) == 1)
  {

    sub_1000CD408(0, 0, 0, 0.0);
  }

  else if (*(v0 + 56))
  {
    if (*(v0 + 16) == 1)
    {
      sub_1000CF3BC();
      *(v0 + 16) = 0;
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        [Strong audioPlayerIsPlayingChanged:0];

        swift_unknownObjectRelease();
      }
    }
  }
}

void AudioEnginePlayer.audioRendererError(_:)()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = _convertErrorToNSError(_:)();
    [v1 audioPlayerError:v2];
    swift_unknownObjectRelease();
  }
}

Swift::Void __swiftcall AudioEnginePlayer.audioRendererWasInterrupted()()
{
  v1 = *(v0 + 56);
  if (v1 && *(v0 + 16) == 1)
  {
    v2 = *(v1 + OBJC_IVAR____TtC10VoiceMemos21AudioEnginePlayerItem_renderer);

    [v2 currentSampleTime];
    sub_1000CD408(0, 0, 0, v3 / *(*(v1 + OBJC_IVAR____TtC10VoiceMemos21AudioEnginePlayerItem_assetReader) + 24));
  }
}

uint64_t sub_1000D0954(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{

  a3(v4);
}

uint64_t sub_1000D0998()
{
  v1 = OBJC_IVAR____TtC10VoiceMemos21AudioEnginePlayerItem_uuid;
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AudioEnginePlayerItem()
{
  result = qword_1002CEA30;
  if (!qword_1002CEA30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000D0AD4()
{
  result = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_1000D0B9C()
{
  result = qword_1002CEB40;
  if (!qword_1002CEB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002CEB40);
  }

  return result;
}

uint64_t sub_1000D0BF8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000D0C7C(void (*a1)(void))
{

  a1(*(v1 + 32));

  return _swift_deallocObject(v1, 40, 7);
}

uint64_t sub_1000D0D14(uint64_t a1)
{
  v2 = sub_1000C773C(&qword_1002CEB48);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000D0DAC(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1000D0E20(uint64_t a1)
{
  v2 = type metadata accessor for SignpostInterval();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *initializeBufferWithCopyOfBuffer for AudioEnginePlayer.Error(void *result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 5) = *(a2 + 5);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for AudioEnginePlayer.Error(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 13))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for AudioEnginePlayer.Error(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 12) = 0;
    *(result + 8) = 0;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 13) = v3;
  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for AudioEnginePlayer.Format(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for AudioEnginePlayer.Format(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 12))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for AudioEnginePlayer.Format(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 12) = v3;
  return result;
}

uint64_t sub_1000D1000(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v30 = *(a1 + 16);
  v28 = a2 >> 62;
  if (a2 >> 62)
  {
    goto LABEL_38;
  }

  for (i = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v6 = i >= v30 ? v30 : i;
    v34 = _swiftEmptyArrayStorage;
    result = specialized ContiguousArray.reserveCapacity(_:)();
    if (v6 < 0)
    {
      break;
    }

    v24 = v3;
    v25 = i;
    v29 = v4;
    if (v6)
    {
      v8 = v4 & 0xC000000000000001;
      v9 = objc_opt_self();
      v10 = 0;
      v11 = *&kCMTimeZero.timescale;
      epoch = kCMTimeZero.epoch;
      v27 = v4 & 0xFFFFFFFFFFFFFF8;
      while (v30 != v10)
      {
        v16 = *(a1 + 32 + 4 * v10);
        if (v28)
        {
          v17 = _CocoaArrayWrapper.endIndex.getter();
        }

        else
        {
          v17 = *(v27 + 16);
        }

        if (v10 == v17)
        {
          goto LABEL_34;
        }

        if (v8)
        {
          v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v10 >= *(v27 + 16))
          {
            goto LABEL_37;
          }

          v13 = *(v4 + 8 * v10 + 32);
        }

        v14 = v13;
        ++v10;
        v3 = [v9 audioMixInputParametersWithTrack:{v13, v24}];
        value = kCMTimeZero.value;
        v32 = v11;
        v33 = epoch;
        LODWORD(v15) = v16;
        [v3 setVolume:&value atTime:v15];

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v4 = v29;
        if (v6 == v10)
        {
          goto LABEL_19;
        }
      }

      __break(1u);
LABEL_34:
      __break(1u);
    }

    else
    {
LABEL_19:
      if (v30 <= v25)
      {
        return v34;
      }

      v3 = (a1 + 32);
      v18 = *&kCMTimeZero.timescale;
      v4 = kCMTimeZero.epoch;
      while (v6 < v30)
      {
        v19 = *(v3 + v6);
        if (v28)
        {
          if (v6 == _CocoaArrayWrapper.endIndex.getter())
          {
            return v34;
          }
        }

        else if (v6 == *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          return v34;
        }

        if ((v29 & 0xC000000000000001) != 0)
        {
          v20 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v6 >= *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_36;
          }

          v20 = *(v29 + 8 * v6 + 32);
        }

        v21 = v20;
        ++v6;
        v22 = [objc_opt_self() audioMixInputParametersWithTrack:v20];
        value = kCMTimeZero.value;
        v32 = v18;
        v33 = v4;
        LODWORD(v23) = v19;
        [v22 setVolume:&value atTime:v23];

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        if (v30 == v6)
        {
          return v34;
        }
      }
    }

    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    ;
  }

  __break(1u);
  return result;
}

__n128 sub_1000D134C@<Q0>(_OWORD *a1@<X8>)
{
  result = *v1;
  v3 = *(v1 + 16);
  *a1 = *v1;
  a1[1] = v3;
  return result;
}

uint64_t sub_1000D1358(void *a1)
{
  v4 = *(v1 + 8);
  v5 = [*(v1 + 24) copyNextSampleBuffer];
  if (v5)
  {
    v6 = v5;
    v7 = sub_100137DAC(v5, v4);
  }

  else
  {
    v7 = 0;
  }

  *a1 = v7;
  v8 = *(v2 + 8);

  return v8();
}

uint64_t sub_1000D13F8(uint64_t a1, uint64_t a2)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  if (a2)
  {
    swift_getObjectType();
    v4 = dispatch thunk of Actor.unownedExecutor.getter();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  return _swift_task_switch(sub_1000D1488, v4, v6);
}

uint64_t sub_1000D1488()
{
  v1 = *(v0 + 24);
  v2 = *(v1 + 8);
  v3 = [*(v1 + 24) copyNextSampleBuffer];
  if (v3)
  {
    v4 = v3;
    v5 = sub_100137DAC(v3, v2);
  }

  else
  {
    v5 = 0;
  }

  **(v0 + 16) = v5;
  v6 = *(v0 + 8);

  return v6();
}

id sub_1000D1524(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = objc_opt_self();
  URL._bridgeToObjectiveC()(v7);
  v9 = v8;
  v10 = [v6 rc_preciseTimingAssetWithURL:v8];

  v11 = objc_allocWithZone(AVAssetReader);
  v40 = 0;
  v12 = v10;
  v13 = a2;
  v14 = [v11 initWithAsset:v12 error:&v40];
  if (!v14)
  {
    v29 = v40;
    _convertNSErrorToError(_:)();

    swift_willThrow();

    v15 = v13;
    v13 = v12;
    goto LABEL_21;
  }

  v15 = v14;
  v39 = a1;
  v16 = v40;

  v17 = [v15 asset];
  v18 = [v17 rc_audioTracks];

  isa = v18;
  if (!v18)
  {
    sub_1000067AC(0, &qword_1002D0440);
    static Array._unconditionallyBridgeFromObjectiveC(_:)();
    isa = Array._bridgeToObjectiveC()().super.isa;
  }

  sub_1000067AC(0, &qword_1002D0440);
  v20 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = v20;
  v22 = v20 >> 62;
  if (v20 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter() != 2)
    {
      goto LABEL_10;
    }
  }

  else if (*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10) != 2)
  {
LABEL_10:

    if (v22)
    {
      if (_CocoaArrayWrapper.endIndex.getter())
      {
        goto LABEL_12;
      }
    }

    else if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_12:
      if ((v21 & 0xC000000000000001) != 0)
      {
        v30 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (!*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
        }

        v30 = *(v21 + 32);
      }

      v31 = v30;

      v32 = [v13 settings];

      static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
      v33 = objc_allocWithZone(AVAssetReaderTrackOutput);
      v27 = Dictionary._bridgeToObjectiveC()().super.isa;

      v26 = [v33 initWithTrack:v31 outputSettings:v27];

      goto LABEL_16;
    }

    [objc_allocWithZone(NSError) initWithDomain:NSCocoaErrorDomain code:259 userInfo:0];
    swift_willThrow();
LABEL_21:

    v37 = type metadata accessor for URL();
    (*(*(v37 - 8) + 8))(a1, v37);
    return v12;
  }

  if (!RCTranscribeAllAudioTracks())
  {
    goto LABEL_10;
  }

  v23 = [v13 settings];

  static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v24 = objc_allocWithZone(AVAssetReaderAudioMixOutput);
  v25 = Dictionary._bridgeToObjectiveC()().super.isa;

  v26 = [v24 initWithAudioTracks:isa audioSettings:v25];

  v27 = [objc_allocWithZone(AVMutableAudioMix) init];
  sub_1000D1000(a3, v21);

  sub_1000067AC(0, &qword_1002CEB78);
  v28 = Array._bridgeToObjectiveC()().super.isa;

  [(objc_class *)v27 setInputParameters:v28];

  [v26 setAudioMix:v27];
LABEL_16:

  v34 = v26;
  [v34 setAlwaysCopiesSampleData:0];
  v35 = [v15 canAddOutput:v34];

  if (v35)
  {
    [v15 addOutput:v34];
    [v15 startReading];
  }

  v36 = type metadata accessor for URL();
  (*(*(v36 - 8) + 8))(v39, v36);
  return v12;
}

uint64_t sub_1000D1AE4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000D1B2C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1000D1B8C()
{
  result = qword_1002CEB80;
  if (!qword_1002CEB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002CEB80);
  }

  return result;
}

uint64_t sub_1000D1BF0()
{
  type metadata accessor for KeychainDataStore();
  v0 = swift_allocObject();
  result = Logger.init(subsystem:category:)();
  qword_1002E8C98 = v0;
  return result;
}

uint64_t sub_1000D1C6C(uint64_t a1, unint64_t a2)
{
  result = 0;
  sub_1000C773C(&qword_1002CEC38);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100241D40;
  *(inited + 32) = kSecClass;
  type metadata accessor for CFString(0);
  *(inited + 40) = kSecClassKey;
  *(inited + 64) = v5;
  *(inited + 72) = kSecAttrApplicationTag;
  v6 = kSecClass;
  v7 = kSecClassKey;
  v8 = kSecAttrApplicationTag;

  *(inited + 80) = sub_1000D2064(a1, a2);
  *(inited + 88) = v9;
  *(inited + 104) = &type metadata for Data;
  *(inited + 112) = kSecAttrSynchronizable;
  *(inited + 120) = 1;
  *(inited + 144) = &type metadata for Bool;
  *(inited + 152) = kSecReturnData;
  *(inited + 184) = &type metadata for Bool;
  *(inited + 160) = 1;
  v10 = kSecAttrSynchronizable;
  v11 = kSecReturnData;
  sub_1000D420C(inited);
  swift_setDeallocating();
  sub_1000C773C(&qword_1002CEC40);
  swift_arrayDestroy();
  sub_1000D5190(&qword_1002CE328, type metadata accessor for CFString);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v13 = SecItemCopyMatching(isa, &result);

  if (v13)
  {
    v14 = SecCopyErrorMessageString(v13, 0);
    if (v14)
    {
      v15 = v14;
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        v22[0] = 0;
        v22[1] = 0;
        static String._conditionallyBridgeFromObjectiveC(_:result:)();
      }
    }

    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v22[0] = swift_slowAlloc();
      *v19 = 136315650;
      *(v19 + 4) = sub_10001901C(a1, a2, v22);
      *(v19 + 12) = 1024;
      *(v19 + 14) = v13;
      *(v19 + 18) = 2080;
      v20 = sub_10001901C(0, 0xE000000000000000, v22);

      *(v19 + 20) = v20;
      _os_log_impl(&_mh_execute_header, v17, v18, "Error reading data from Keychain, tag=%s, status=%d, error=%s", v19, 0x1Cu);
      swift_arrayDestroy();
    }

    else
    {
    }

    v16 = 0;
  }

  else if (result)
  {
    swift_unknownObjectRetain();
    if (swift_dynamicCast())
    {
      v16 = v22[0];
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v16 = 0;
  }

  swift_unknownObjectRelease();
  return v16;
}

uint64_t sub_1000D2064(uint64_t a1, unint64_t a2)
{
  *&v40 = a1;
  *(&v40 + 1) = a2;

  sub_1000C773C(&qword_1002CEC60);
  if (swift_dynamicCast())
  {
    sub_100015FD0(__src, &v41);
    sub_10000AACC(&v41, v42);
    dispatch thunk of ContiguousBytes.withUnsafeBytes<A>(_:)();
    __src[0] = v40;
    sub_100014B64(&v41);
    goto LABEL_63;
  }

  v39 = 0;
  memset(__src, 0, sizeof(__src));
  sub_1000D43F0(__src);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_67;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
    *&__src[0] = a1;
    *(&__src[0] + 1) = a2 & 0xFFFFFFFFFFFFFFLL;
    v4 = __src;
  }

  else if ((a1 & 0x1000000000000000) != 0)
  {
    v4 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v4 = _StringObject.sharedUTF8.getter();
  }

  sub_1000D39F0(v4, v5, &v41);
  v6 = *(&v41 + 1);
  v7 = v41;
  if (*(&v41 + 1) >> 60 != 15)
  {
    __src[0] = v41;
    goto LABEL_63;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v8 = a1 & 0xFFFFFFFFFFFFLL;
  }

LABEL_12:
  *&__src[0] = sub_1000D4F14(v8);
  *(&__src[0] + 1) = v9;
  __chkstk_darwin(*&__src[0], v9);
  v10 = sub_1000D3AB8(sub_1000D4FB4);
  v14 = v10;
  v15 = v11;
  v16 = v12;
  v17 = *(&__src[0] + 1) >> 62;
  if ((*(&__src[0] + 1) >> 62) > 1)
  {
    if (v17 == 2)
    {
      v19 = *(*&__src[0] + 16);
      v18 = *(*&__src[0] + 24);
      v20 = __OFSUB__(v18, v19);
      v21 = v18 - v19;
      if (v20)
      {
        goto LABEL_70;
      }

      if (v13 != v21)
      {
        goto LABEL_23;
      }
    }

    else if (v13)
    {
      v22 = 0;
      goto LABEL_60;
    }
  }

  else if (v17)
  {
    if (__OFSUB__(DWORD1(__src[0]), __src[0]))
    {
      goto LABEL_71;
    }

    if (v13 != DWORD1(__src[0]) - LODWORD(__src[0]))
    {
LABEL_23:
      if (v17 == 2)
      {
        v22 = *(*&__src[0] + 24);
      }

      else if (v17 == 1)
      {
        v22 = *&__src[0] >> 32;
      }

      else
      {
        v22 = BYTE14(__src[0]);
      }

LABEL_60:
      if (v22 >= v13)
      {
        Data._Representation.replaceSubrange(_:with:count:)();
LABEL_62:

        goto LABEL_63;
      }

      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
    }
  }

  else if (v13 != BYTE14(__src[0]))
  {
    goto LABEL_23;
  }

  v35 = v7;
  if ((v11 & 0x2000000000000000) != 0)
  {
    v23 = HIBYTE(v11) & 0xF;
  }

  else
  {
    v23 = v10 & 0xFFFFFFFFFFFFLL;
  }

  *(&v40 + 7) = 0;
  *&v40 = 0;
  if (4 * v23 == v12 >> 14)
  {
    goto LABEL_57;
  }

  v34 = v6;
  LOBYTE(v24) = 0;
  v25 = (v10 >> 59) & 1;
  if ((v11 & 0x1000000000000000) == 0)
  {
    LOBYTE(v25) = 1;
  }

  v26 = 4 << v25;
  v36 = (v11 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v37 = v11 & 0xFFFFFFFFFFFFFFLL;
  do
  {
    v27 = v16 & 0xC;
    v28 = v16;
    if (v27 == v26)
    {
      v28 = sub_1000D4010(v16, v14, v15);
    }

    v29 = v28 >> 16;
    if (v28 >> 16 >= v23)
    {
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      v8 = String.UTF8View._foreignCount()();
      v7 = 0;
      v6 = 0xF000000000000000;
      goto LABEL_12;
    }

    if ((v15 & 0x1000000000000000) != 0)
    {
      v31 = String.UTF8View._foreignSubscript(position:)();
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else if ((v15 & 0x2000000000000000) != 0)
    {
      *&v41 = v14;
      *(&v41 + 1) = v37;
      v31 = *(&v41 + v29);
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v30 = v36;
      if ((v14 & 0x1000000000000000) == 0)
      {
        v30 = _StringObject.sharedUTF8.getter();
      }

      v31 = *(v30 + v29);
      if (v27 != v26)
      {
LABEL_46:
        if ((v15 & 0x1000000000000000) == 0)
        {
          goto LABEL_47;
        }

        goto LABEL_50;
      }
    }

    v16 = sub_1000D4010(v16, v14, v15);
    if ((v15 & 0x1000000000000000) == 0)
    {
LABEL_47:
      v16 = (v16 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_52;
    }

LABEL_50:
    if (v23 <= v16 >> 16)
    {
      goto LABEL_66;
    }

    v16 = String.UTF8View._foreignIndex(after:)();
LABEL_52:
    *(&v40 + v24) = v31;
    v24 = v24 + 1;
    if ((v24 >> 8))
    {
      goto LABEL_65;
    }

    if (v24 == 14)
    {
      *&v41 = v40;
      *(&v41 + 6) = *(&v40 + 6);
      Data._Representation.append(contentsOf:)();
      LOBYTE(v24) = 0;
    }
  }

  while (4 * v23 != v16 >> 14);
  v6 = v34;
  if (v24)
  {
    *&v41 = v40;
    *(&v41 + 6) = *(&v40 + 6);
    Data._Representation.append(contentsOf:)();
    sub_10002CE5C(v35, v34);
    goto LABEL_62;
  }

LABEL_57:

  sub_10002CE5C(v35, v6);
LABEL_63:
  v32 = __src[0];
  sub_1000D4334(*&__src[0], *(&__src[0] + 1));

  sub_1000D4388(v32, *(&v32 + 1));
  return v32;
}

void sub_1000D2574(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{

  v43 = a3;
  v49 = a4;
  v6 = sub_1000D2064(a3, a4);
  v8 = v7;
  sub_1000C773C(&qword_1002CEC38);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100241D40;
  *(inited + 32) = kSecClass;
  type metadata accessor for CFString(0);
  v11 = v10;
  *(inited + 40) = kSecClassKey;
  *(inited + 64) = v10;
  *(inited + 72) = kSecAttrApplicationTag;
  *(inited + 80) = v6;
  *(inited + 88) = v8;
  *(inited + 104) = &type metadata for Data;
  *(inited + 112) = kSecAttrSynchronizable;
  *(inited + 120) = 1;
  *(inited + 144) = &type metadata for Bool;
  *(inited + 152) = kSecReturnData;
  *(inited + 184) = &type metadata for Bool;
  *(inited + 160) = 1;
  v47 = kSecClass;
  v46 = kSecClassKey;
  v12 = v8;
  v45 = kSecAttrApplicationTag;
  v51 = v6;
  sub_1000D4334(v6, v8);
  v44 = kSecAttrSynchronizable;
  v13 = kSecReturnData;
  sub_1000D420C(inited);
  swift_setDeallocating();
  sub_1000C773C(&qword_1002CEC40);
  swift_arrayDestroy();
  sub_1000D5190(&qword_1002CE328, type metadata accessor for CFString);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v15 = SecItemDelete(isa);

  if (v15)
  {
    v16 = SecCopyErrorMessageString(v15, 0);
    if (v16)
    {
      v17 = v16;
      objc_opt_self();
      v18 = v49;
      if (swift_dynamicCastObjCClass())
      {
        v52 = 0;
        v53 = 0;
        static String._conditionallyBridgeFromObjectiveC(_:result:)();
      }
    }

    else
    {
      v18 = v49;
    }

    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      *v21 = 136315650;
      *(v21 + 4) = sub_10001901C(v43, v18, &v52);
      *(v21 + 12) = 1024;
      *(v21 + 14) = v15;
      *(v21 + 18) = 2080;
      v22 = sub_10001901C(0, 0xE000000000000000, &v52);

      *(v21 + 20) = v22;
      _os_log_impl(&_mh_execute_header, v19, v20, "Error deleting data from Keychain, tag=%s, status=%d, error=%s", v21, 0x1Cu);
      swift_arrayDestroy();

      v12 = v8;
    }

    else
    {
    }
  }

  if (a2 >> 60 == 15)
  {
    v23 = v6;
    v24 = v12;
LABEL_20:
    sub_1000D4388(v23, v24);
    return;
  }

  v25 = swift_initStackObject();
  *(v25 + 32) = v47;
  *(v25 + 16) = xmmword_100241D40;
  *(v25 + 40) = v46;
  *(v25 + 64) = v11;
  *(v25 + 72) = v45;
  *(v25 + 80) = v6;
  *(v25 + 88) = v12;
  *(v25 + 104) = &type metadata for Data;
  *(v25 + 112) = v44;
  *(v25 + 120) = 1;
  *(v25 + 144) = &type metadata for Bool;
  *(v25 + 152) = kSecValueData;
  *(v25 + 184) = &type metadata for Data;
  *(v25 + 160) = a1;
  *(v25 + 168) = a2;
  sub_1000D43DC(a1, a2);
  v26 = v47;
  v27 = v46;
  v28 = v45;
  sub_1000D4334(v6, v12);
  v29 = v44;
  sub_1000D43DC(a1, a2);
  v30 = kSecValueData;
  sub_1000D420C(v25);
  swift_setDeallocating();
  swift_arrayDestroy();
  v31 = Dictionary._bridgeToObjectiveC()().super.isa;

  v32 = SecItemAdd(v31, 0);

  if (!v32)
  {
    sub_10002CE5C(a1, a2);
    v23 = v6;
    v24 = v12;
    goto LABEL_20;
  }

  v33 = SecCopyErrorMessageString(v32, 0);
  v42 = v12;
  if (!v33)
  {
    v37 = 0;
    v36 = 0xE000000000000000;
    v35 = v49;
    goto LABEL_24;
  }

  v34 = v33;
  objc_opt_self();
  v35 = v49;
  if (!swift_dynamicCastObjCClass())
  {

    goto LABEL_23;
  }

  v52 = 0;
  v53 = 0;
  static String._conditionallyBridgeFromObjectiveC(_:result:)();

  v36 = v53;
  if (!v53)
  {
LABEL_23:
    v37 = 0;
    v36 = 0xE000000000000000;
    goto LABEL_24;
  }

  v37 = v52;
LABEL_24:

  v38 = Logger.logObject.getter();
  v39 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    *v40 = 136315650;
    *(v40 + 4) = sub_10001901C(v43, v35, &v52);
    *(v40 + 12) = 1024;
    *(v40 + 14) = v32;
    *(v40 + 18) = 2080;
    v41 = sub_10001901C(v37, v36, &v52);

    *(v40 + 20) = v41;
    _os_log_impl(&_mh_execute_header, v38, v39, "Error writing data to Keychain, tag=%s, status=%d, error=%s", v40, 0x1Cu);
    swift_arrayDestroy();

    sub_1000D4388(v51, v42);
    sub_10002CE5C(a1, a2);
  }

  else
  {
    sub_1000D4388(v51, v42);
    sub_10002CE5C(a1, a2);
  }
}

uint64_t sub_1000D2C74()
{
  v1 = OBJC_IVAR____TtC10VoiceMemos17KeychainDataStore_log;
  v2 = type metadata accessor for Logger();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for KeychainDataStore()
{
  result = qword_1002CEBB0;
  if (!qword_1002CEBB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000D2D64()
{
  result = type metadata accessor for Logger();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_1000D2DFC(uint64_t a1)
{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return sub_1000D31C8(a1, v4);
}

unint64_t sub_1000D2E40(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return sub_1000D3290(a1, a2, v4);
}

unint64_t sub_1000D2EB8(uint64_t a1)
{
  Hasher.init(_seed:)();
  type metadata accessor for CFString(0);
  sub_1000D5190(&qword_1002CEC58, type metadata accessor for CFString);
  _CFObject.hash(into:)();
  v2 = Hasher._finalize()();

  return sub_1000D3348(a1, v2);
}

unint64_t sub_1000D2F6C(uint64_t a1)
{
  type metadata accessor for Session.Kind();
  sub_1000D5190(&qword_1002CECB0, &type metadata accessor for Session.Kind);
  v2 = dispatch thunk of Hashable._rawHashValue(seed:)();

  return sub_1000D34CC(a1, v2);
}

unint64_t sub_1000D3004(uint64_t a1)
{
  v2 = static Hasher._hash(seed:_:)();

  return sub_1000D368C(a1, v2);
}

unint64_t sub_1000D3048(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  v2 = Hasher._finalize()();

  return sub_1000D36F8(a1, v2);
}

unint64_t sub_1000D311C(char a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  v2 = Hasher._finalize()();

  return sub_1000D38A8(a1 & 1, v2);
}

unint64_t sub_1000D31C8(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_1000CC230(*(v2 + 48) + 40 * v4, v8);
      v6 = static AnyHashable.== infix(_:_:)();
      sub_1000D513C(v8);
      if (v6)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_1000D3290(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_1000D3348(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    type metadata accessor for CFString(0);
    sub_1000D5190(&qword_1002CEC58, type metadata accessor for CFString);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = static _CFObject.== infix(_:_:)();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_1000D3454(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = -1 << *(v3 + 32);
  result = a3 & ~v5;
  if ((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v7 = ~v5;
    do
    {
      v8 = (*(v3 + 48) + 16 * result);
      v10 = *v8;
      v9 = v8[1];
      if (v10 == a1 && v9 == a2)
      {
        break;
      }

      result = (result + 1) & v7;
    }

    while (((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_1000D34CC(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v4 = type metadata accessor for Session.Kind();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4, v6);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v2;
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  v19 = v2 + 64;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v14 = *(v5 + 16);
    v13 = v5 + 16;
    v12 = v14;
    v15 = *(v13 + 56);
    do
    {
      v12(v8, *(v21 + 48) + v15 * v10, v4);
      sub_1000D5190(&qword_1002CECB8, &type metadata accessor for Session.Kind);
      v16 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v13 - 8))(v8, v4);
      if (v16)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v19 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

unint64_t sub_1000D368C(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_1000D36F8(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      if (*(*(v2 + 48) + v4))
      {
        if (*(*(v2 + 48) + v4) == 1)
        {
          v7 = 0xEB0000000065636ELL;
          v8 = 0x656C695370696B73;
          v9 = a1;
          if (!a1)
          {
            goto LABEL_17;
          }
        }

        else
        {
          v8 = 0x6F566F6964757473;
          v7 = 0xEB00000000656369;
          v9 = a1;
          if (!a1)
          {
LABEL_17:
            v11 = 0x800000010022D240;
            if (v8 != 0xD000000000000010)
            {
              goto LABEL_19;
            }

            goto LABEL_18;
          }
        }
      }

      else
      {
        v8 = 0xD000000000000010;
        v7 = 0x800000010022D240;
        v9 = a1;
        if (!a1)
        {
          goto LABEL_17;
        }
      }

      if (v9 == 1)
      {
        v10 = 0x656C695370696B73;
      }

      else
      {
        v10 = 0x6F566F6964757473;
      }

      if (v9 == 1)
      {
        v11 = 0xEB0000000065636ELL;
      }

      else
      {
        v11 = 0xEB00000000656369;
      }

      if (v8 != v10)
      {
        goto LABEL_19;
      }

LABEL_18:
      if (v7 == v11)
      {

        return v4;
      }

LABEL_19:
      v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v6;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_1000D38A8(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    if (a1)
    {
      v6 = 0x6369666963657073;
    }

    else
    {
      v6 = 0x6563655274736F6DLL;
    }

    if (a1)
    {
      v7 = 0xE800000000000000;
    }

    else
    {
      v7 = 0xEA0000000000746ELL;
    }

    while (1)
    {
      v8 = *(*(v2 + 48) + v4) ? 0x6369666963657073 : 0x6563655274736F6DLL;
      v9 = *(*(v2 + 48) + v4) ? 0xE800000000000000 : 0xEA0000000000746ELL;
      if (v8 == v6 && v9 == v7)
      {
        break;
      }

      v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

uint64_t sub_1000D39F0@<X0>(_BYTE *__src@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  result = 0;
  v6 = 0xC000000000000000;
  if (__src && a2)
  {
    if (a2 <= 14)
    {
      result = sub_1000D4E5C(__src, &__src[a2]);
      v6 = v9 & 0xFFFFFFFFFFFFFFLL;
    }

    else
    {
      type metadata accessor for __DataStorage();
      swift_allocObject();
      v8 = __DataStorage.init(bytes:length:)();
      if (a2 >= 0x7FFFFFFF)
      {
        type metadata accessor for Data.RangeReference();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = a2;
        v6 = v8 | 0x8000000000000000;
      }

      else
      {
        result = a2 << 32;
        v6 = v8 | 0x4000000000000000;
      }
    }
  }

  *a3 = result;
  a3[1] = v6;
  return result;
}

char *sub_1000D3AB8(void *(*a1)(uint64_t *__return_ptr, char *, char *))
{
  v3 = v1;
  v6 = *v1;
  v5 = v1[1];
  v7 = v5 >> 62;
  if ((v5 >> 62) <= 1)
  {
    if (!v7)
    {
      sub_1000D4388(v6, v5);
      v18[0] = v6;
      LOWORD(v18[1]) = v5;
      BYTE2(v18[1]) = BYTE2(v5);
      BYTE3(v18[1]) = BYTE3(v5);
      BYTE4(v18[1]) = BYTE4(v5);
      BYTE5(v18[1]) = BYTE5(v5);
      BYTE6(v18[1]) = BYTE6(v5);
      result = a1(&v16, v18, v18 + BYTE6(v5));
      if (!v2)
      {
        result = v16;
      }

      v9 = LODWORD(v18[1]) | ((WORD2(v18[1]) | (BYTE6(v18[1]) << 16)) << 32);
      *v3 = v18[0];
      v3[1] = v9;
      return result;
    }

    v11 = v5 & 0x3FFFFFFFFFFFFFFFLL;

    sub_1000D4388(v6, v5);
    *v3 = xmmword_100241D50;
    sub_1000D4388(0, 0xC000000000000000);
    v12 = v6 >> 32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      if (v12 < v6)
      {
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      if (__DataStorage._bytes.getter() && __OFSUB__(v6, __DataStorage._offset.getter()))
      {
LABEL_26:
        __break(1u);
      }

      type metadata accessor for __DataStorage();
      swift_allocObject();
      v13 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();

      v11 = v13;
    }

    if (v12 >= v6)
    {

      v14 = sub_1000D3F5C(v6, v6 >> 32, a1);

      v10 = v11 | 0x4000000000000000;
      if (!v2)
      {
        *v3 = v6;
        v3[1] = v10;
        return v14;
      }

      *v3 = v6;
      goto LABEL_21;
    }

    __break(1u);
    goto LABEL_25;
  }

  if (v7 == 2)
  {

    sub_1000D4388(v6, v5);
    v16 = v6;
    v17 = v5 & 0x3FFFFFFFFFFFFFFFLL;
    *v3 = xmmword_100241D50;
    sub_1000D4388(0, 0xC000000000000000);
    Data.LargeSlice.ensureUniqueReference()();
    result = sub_1000D3F5C(*(v16 + 2), *(v16 + 3), a1);
    v10 = v17 | 0x8000000000000000;
    if (!v2)
    {
      *v3 = v16;
      v3[1] = v10;
      return result;
    }

    *v3 = v16;
LABEL_21:
    v3[1] = v10;
    return result;
  }

  memset(v18, 0, 15);
  result = a1(&v16, v18, v18);
  if (!v2)
  {
    return v16;
  }

  return result;
}

_BYTE *sub_1000D3E5C@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = sub_1000D4E5C(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_1000D501C(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_1000D5098(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}