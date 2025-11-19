uint64_t RPLogSetLogLevel(uint64_t result)
{
  if (result <= 3)
  {
    __RPLogLevel = result;
  }

  return result;
}

uint64_t sub_10000119C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 40);
  if (a2)
  {
    return (*(v3 + 16))(v3, 0, a2);
  }

  else
  {
    return (*(v3 + 16))(v3, *(a1 + 32));
  }
}

void sub_100001670(uint64_t a1)
{
  v2 = [*(a1 + 32) status];
  if (v2 == 5)
  {
    if (__RPLogLevel > 1 || !os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_10;
    }

    *v6 = 136446466;
    *&v6[4] = "+[RPAudioMixUtility mixAudioForMovie:finalMovieURL:outputFileType:withCompletionHandler:]_block_invoke";
    *&v6[12] = 1024;
    *&v6[14] = 72;
    v3 = " [INFO] %{public}s:%d AVAssetExportSessionStatusCancelled";
    goto LABEL_9;
  }

  if (v2 == 4)
  {
    if (__RPLogLevel > 1 || !os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_10;
    }

    *v6 = 136446466;
    *&v6[4] = "+[RPAudioMixUtility mixAudioForMovie:finalMovieURL:outputFileType:withCompletionHandler:]_block_invoke";
    *&v6[12] = 1024;
    *&v6[14] = 67;
    v3 = " [INFO] %{public}s:%d AVAssetExportSessionFailed";
LABEL_9:
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v3, v6, 0x12u);
LABEL_10:
    v4 = *(a1 + 40);
    v5 = [NSError _rpUserErrorForCode:-5818 userInfo:0, *v6, *&v6[16]];
    (*(v4 + 16))(v4, v5);

    return;
  }

  if (__RPLogLevel <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 136446466;
    *&v6[4] = "+[RPAudioMixUtility mixAudioForMovie:finalMovieURL:outputFileType:withCompletionHandler:]_block_invoke";
    *&v6[12] = 1024;
    *&v6[14] = 77;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d AVAssetExportSession returned with no errors", v6, 0x12u);
  }

  (*(*(a1 + 40) + 16))();
}

void sub_100001E14(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0x12u);
}

void sub_100003018(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained isScrubbing];

  if ((v3 & 1) == 0)
  {
    v4 = objc_loadWeakRetained((a1 + 32));
    v5 = [v4 avPlayer];
    v6 = [v5 currentItem];
    v7 = v6;
    if (v6)
    {
      [v6 currentTime];
    }

    else
    {
      memset(&time, 0, sizeof(time));
    }

    Seconds = CMTimeGetSeconds(&time);
    v9 = objc_loadWeakRetained((a1 + 32));
    v10 = [v9 avTrimmer];
    [v10 setValue:Seconds];
  }
}

void sub_10000438C(uint64_t a1)
{
  v2 = [*(a1 + 32) topToolBar];
  [v2 setAlpha:1.0];

  v3 = [*(a1 + 32) bottomToolBar];
  [v3 setAlpha:1.0];

  v4 = [*(a1 + 32) scrubberContainterView];
  [v4 setAlpha:1.0];
}

void sub_1000044A8(uint64_t a1)
{
  v2 = [*(a1 + 32) topToolBar];
  [v2 setAlpha:0.0];

  v3 = [*(a1 + 32) bottomToolBar];
  [v3 setAlpha:0.0];

  v4 = [*(a1 + 32) scrubberContainterView];
  [v4 setAlpha:0.0];
}

id sub_1000049E4(uint64_t a1)
{
  v2 = [*(a1 + 32) topToolBar];
  [v2 setItems:0];

  v3 = [*(a1 + 32) bottomToolBar];
  [v3 setItems:0];

  [*(a1 + 32) refreshAVRotation];
  v4 = [*(a1 + 32) shouldApplyPadUILayout];
  v5 = *(a1 + 32);
  if (v4)
  {

    return [v5 applyPadUILayout];
  }

  else
  {

    return [v5 applyPhoneUILayout];
  }
}

void sub_100005254(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, id location)
{
  objc_destroyWeak((v25 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100005290(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained pauseAction];
}

void sub_100005820(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    if (__RPLogLevel <= 2 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10000B568();
    }
  }

  else
  {
    v7 = +[NSFileManager defaultManager];
    v8 = [*(a1 + 32) videoURL];
    [v7 _srRemoveFile:v8 completion:&stru_100018648];

    [*(a1 + 32) setVideoURL:v5];
  }

  v9 = +[PHPhotoLibrary sharedPhotoLibrary];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000059A8;
  v11[3] = &unk_100018578;
  v12 = *(a1 + 32);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100005A0C;
  v10[3] = &unk_100018698;
  v10[4] = v12;
  [v9 performChanges:v11 completionHandler:v10];
}

void sub_1000059A8(uint64_t a1)
{
  v2 = [*(a1 + 32) videoURL];
  v1 = [PHAssetChangeRequest creationRequestForAssetFromVideoAtFileURL:v2];
}

void sub_100005A0C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100005AA8;
  v7[3] = &unk_100018670;
  v5 = *(a1 + 32);
  v8 = v4;
  v9 = v5;
  v6 = v4;
  dispatch_async(&_dispatch_main_q, v7);
}

id sub_100005AA8(uint64_t a1)
{
  v2 = (a1 + 32);
  if (*(a1 + 32))
  {
    v3 = __RPLogLevel > 2;
  }

  else
  {
    v3 = 1;
  }

  if (!v3 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10000B5F8(v2);
  }

  return [*(a1 + 40) doneAction];
}

void sub_100005B84(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [v2 videoURL];
  [v2 displayShareSheetWithVideoURL:v3];

  if ([*(a1 + 32) isPadMode])
  {
    v20 = [*(a1 + 32) doneButton];
    v4 = [*(a1 + 32) flexSpace];
    v5 = [*(a1 + 32) titleButton];
    v6 = [*(a1 + 32) flexSpace];
    v7 = [*(a1 + 32) playButton];
    v8 = [*(a1 + 32) fixSpace];
    v9 = [*(a1 + 32) shareButton];
    v10 = [*(a1 + 32) fixSpace];
    v11 = [*(a1 + 32) saveButton];
    v12 = [NSArray arrayWithObjects:v20, v4, v5, v6, v7, v8, v9, v10, v11, 0];
    v21 = [v12 mutableCopy];

    if ([*(a1 + 32) isIntroMode])
    {
      v13 = [*(a1 + 32) playButton];
      [v21 removeObject:v13];
    }

    v14 = [*(a1 + 32) topToolBar];
    [v14 setItems:v21];
  }

  else
  {
    v21 = [*(a1 + 32) topToolBar];
    v14 = [*(a1 + 32) doneButton];
    v15 = [*(a1 + 32) flexSpace];
    v16 = [*(a1 + 32) titleButton];
    v17 = [*(a1 + 32) flexSpace];
    v18 = [*(a1 + 32) saveButton];
    v19 = [NSArray arrayWithObjects:v14, v15, v16, v17, v18, 0];
    [v21 setItems:v19];
  }
}

void sub_10000618C(uint64_t a1)
{
  v2 = [*(a1 + 32) exportSession];
  v3 = [v2 status];

  if (v3 == 5)
  {
    if (__RPLogLevel <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446466;
      v9 = "[RPVideoEditorViewController trimVideo]_block_invoke";
      v10 = 1024;
      v11 = 789;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d Export Trim Video Cancelled", buf, 0x12u);
    }

    goto LABEL_9;
  }

  if (v3 == 4)
  {
    if (__RPLogLevel <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v4 = [*(a1 + 32) exportSession];
      v5 = [v4 error];
      *buf = 136446722;
      v9 = "[RPVideoEditorViewController trimVideo]_block_invoke";
      v10 = 1024;
      v11 = 784;
      v12 = 1024;
      v13 = [v5 code];
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d Export Trim Video Failed, due to error: %i", buf, 0x18u);
    }

LABEL_9:
    v6 = [*(*(a1 + 32) + 304) delegate];
    [v6 movieScrubberDidCancelEditing:*(*(a1 + 32) + 304)];

    return;
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000063C4;
  block[3] = &unk_100018578;
  block[4] = *(a1 + 32);
  dispatch_sync(&_dispatch_main_q, block);
}

void sub_1000063C4(uint64_t a1)
{
  *(*(a1 + 32) + 9) = 0;
  v2 = +[NSFileManager defaultManager];
  [v2 _srRemoveFile:*(*(a1 + 32) + 280) completion:&stru_1000186E0];

  v3 = [*(*(a1 + 32) + 296) outputURL];
  v4 = *(a1 + 32);
  v5 = *(v4 + 280);
  *(v4 + 280) = v3;

  v6 = +[NSNotificationCenter defaultCenter];
  [v6 removeObserver:*(a1 + 32)];

  v7 = *(a1 + 32);
  v8 = [v7[37] outputURL];
  [v7 reloadAVLayerWithURL:v8];

  v9 = +[NSNotificationCenter defaultCenter];
  [v9 addObserver:*(a1 + 32) selector:"itemDidFinishPlaying:" name:AVPlayerItemDidPlayToEndTimeNotification object:*(*(a1 + 32) + 72)];
}

void sub_1000064F8(id a1, NSError *a2)
{
  v2 = a2;
  if (v2 && __RPLogLevel <= 2 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10000B698(v2);
  }
}

void sub_100006924(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained isScrubbing];

  if ((v3 & 1) == 0)
  {
    v4 = objc_loadWeakRetained((a1 + 32));
    v5 = [v4 avPlayer];
    v6 = [v5 currentItem];
    v7 = v6;
    if (v6)
    {
      [v6 currentTime];
    }

    else
    {
      memset(&time, 0, sizeof(time));
    }

    Seconds = CMTimeGetSeconds(&time);
    v9 = objc_loadWeakRetained((a1 + 32));
    v10 = [v9 avTrimmer];
    [v10 setValue:Seconds];
  }
}

void sub_100006B74(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(RPUIActivityItem);
  v5 = *(a1 + 32);
  if (v5[5])
  {
    v6 = [v5 overrideShareMessage];
    [(RPUIActivityItem *)v4 setOverrideShareMessage:v6];
  }

  else
  {
    v6 = [NSBundle _rpLocalizedStringFromFrameworkBundleWithKey:@"SHARE_TEXT_FORMAT"];
    v7 = [v3 author];
    if ([v7 length])
    {
      v8 = [v3 appName];
      v9 = [v3 author];
      v10 = [NSString stringWithFormat:v6, v8, v9];
    }

    else
    {
      v8 = [v3 appName];
      if (v8)
      {
        v10 = [v3 appName];
      }

      else
      {
        v10 = &stru_1000189F8;
      }
    }

    v11 = [v3 appName];
    [(RPUIActivityItem *)v4 setAppName:v11];

    [(RPUIActivityItem *)v4 setShareText:v10];
    v12 = [v3 itemURL];
    [(RPUIActivityItem *)v4 setItemURL:v12];

    v13 = [NSData alloc];
    v14 = [v3 appArtworkURL];
    v15 = [v13 initWithContentsOfURL:v14];

    v16 = [UIImage imageWithData:v15];
    [(RPUIActivityItem *)v4 setAppIcon:v16];
  }

  [(RPUIActivityItem *)v4 setVideoURL:*(a1 + 40)];
  v17 = [UIActivityViewController alloc];
  v30 = v4;
  v18 = [NSArray arrayWithObjects:&v30 count:1];
  v19 = [v17 initWithActivityItems:v18 applicationActivities:0];

  v29 = UIActivityTypeCopyToPasteboard;
  v20 = [NSArray arrayWithObjects:&v29 count:1];
  [v19 setExcludedActivityTypes:v20];

  v28[0] = UIActivityTypeMail;
  v28[1] = UIActivityTypeMessage;
  v28[2] = UIActivityTypeCopyToPasteboard;
  v28[3] = UIActivityTypePostToFacebook;
  v21 = [NSArray arrayWithObjects:v28 count:4];
  v22 = [v21 mutableCopy];

  [v19 setActivityTypeOrder:v22];
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_100006F90;
  v27[3] = &unk_100018708;
  v27[4] = *(a1 + 32);
  [v19 setCompletionWithItemsHandler:v27];
  if ([*(a1 + 32) isPadMode])
  {
    [v19 setModalPresentationStyle:7];
    v23 = [v19 popoverPresentationController];
    v24 = [*(a1 + 32) shareButton];
    [v23 setBarButtonItem:v24];
  }

  v25 = *(a1 + 32);
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_1000070A0;
  v26[3] = &unk_100018578;
  v26[4] = v25;
  [v25 presentViewController:v19 animated:1 completion:v26];
}

void sub_100006F90(uint64_t a1, void *a2, int a3)
{
  v5 = a2;
  v6 = v5;
  if (a3)
  {
    v7 = _NSConcreteStackBlock;
    v8 = 3221225472;
    v9 = sub_10000704C;
    v10 = &unk_100018670;
    v11 = *(a1 + 32);
    v12 = v5;
    dispatch_async(&_dispatch_main_q, &v7);
  }

  [*(a1 + 32) setShareSheetUp:{0, v7, v8, v9, v10, v11}];
}

void sub_10000704C(uint64_t a1)
{
  v2 = [*(a1 + 32) activityTypes];
  [v2 addObject:*(a1 + 40)];
}

void sub_100007818(uint64_t a1)
{
  v2 = [*(a1 + 32) avPlayer];
  v3 = *(a1 + 40);
  v4 = [*(a1 + 32) avPlayer];
  v5 = v4;
  if (v4)
  {
    [v4 currentTime];
    LODWORD(v4) = v6;
  }

  CMTimeMakeWithSeconds(&v7, v3, v4);
  [v2 seekToTime:&v7];
}

void sub_100007968(uint64_t a1)
{
  v2 = [*(a1 + 32) avPlayer];
  v3 = *(a1 + 40);
  v4 = [*(a1 + 32) avPlayer];
  v5 = v4;
  if (v4)
  {
    [v4 currentTime];
    LODWORD(v4) = v6;
  }

  CMTimeMakeWithSeconds(&v7, v3, v4);
  [v2 seekToTime:&v7];
}

id *sub_100007F4C(id *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (!a6)
  {
    v8 = result;
    v9 = [result[4] cachedTimeStamps];
    [v9 setObject:a3 forKey:v8[5]];

    v10 = v8[4];
    v11 = v8[5];

    return [v10 setThumbnailFromCacheWithTimeStamp:v11];
  }

  return result;
}

void sub_10000804C(uint64_t a1)
{
  v2 = [*(a1 + 32) cachedTimeStamps];
  v3 = [v2 objectForKey:*(a1 + 40)];

  v4 = [*(a1 + 32) avTrimmer];
  [v4 setThumbnailImage:v3 forTimestamp:*(a1 + 40)];
}

uint64_t sub_100009678(uint64_t a1)
{
  qword_10001F0B0 = [*(a1 + 32) _createOverlayImageWithBackgroundWhite:0.959999979 backgroundAlpha:0.959999979 glyphAlpha:0.300000012];

  return _objc_release_x1();
}

uint64_t sub_100009758(uint64_t a1)
{
  qword_10001F0C0 = [*(a1 + 32) _createOverlayImageWithBackgroundWhite:0.959999979 backgroundAlpha:0.959999979 glyphAlpha:0.5];

  return _objc_release_x1();
}

void sub_100009B9C(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7)
{
  v13 = *(a1 + 32);
  v14 = a7;
  v15 = a6;
  v16 = a5;
  v17 = a4;
  v18 = a3;
  v19 = a2;
  [v13 setBundleIdentifier:v19];
  [*(a1 + 32) setAppName:v18];

  [*(a1 + 32) setMovieURL:v17];
  [*(a1 + 32) setFileAttachmentURL:v16];

  [*(a1 + 32) setOverrideShareMessage:v15];
  [*(a1 + 32) setOverrideTintColor:v14];

  v20 = [v19 isEqualToString:@"com.apple.replayKit.ReplayKitTestRunneriOS"];
  [*(a1 + 32) setIsInternalTestMode:v20];
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v21 = [*(a1 + 32) isInternalTestMode];
    *buf = 136315394;
    v24 = "[RPVideoEditorExtensionViewController setupChildViewControllers]_block_invoke";
    v25 = 1024;
    v26 = v21;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%s isInternalTestMode: %d", buf, 0x12u);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100009D9C;
  block[3] = &unk_100018578;
  block[4] = *(a1 + 32);
  dispatch_async(&_dispatch_main_q, block);
}

id sub_100009D9C(uint64_t a1)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "loaded input items", v3, 2u);
  }

  return [*(a1 + 32) setupVideoEditorController];
}

void sub_10000A398(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45)
{
  _Block_object_dispose(&a33, 8);
  _Block_object_dispose(&a39, 8);
  _Block_object_dispose(&a45, 8);
  _Block_object_dispose((v45 - 224), 8);
  _Block_object_dispose((v45 - 176), 8);
  _Block_object_dispose((v45 - 128), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10000A3EC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10000A404(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 attachments];
  v5 = [v4 objectAtIndexedSubscript:0];

  if ([v5 hasItemConformingToTypeIdentifier:*(a1 + 32)])
  {
    dispatch_group_enter(*(a1 + 40));
    v6 = *(a1 + 32);
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10000A520;
    v9[3] = &unk_1000187D0;
    v10 = v3;
    v12 = *(a1 + 56);
    v13 = *(a1 + 72);
    v14 = *(a1 + 88);
    v8 = *(a1 + 40);
    v7 = v8;
    v11 = v8;
    [v5 loadItemForTypeIdentifier:v6 options:0 completionHandler:v9];
  }
}

void sub_10000A520(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  if (!v7)
  {
    v8 = [*(a1 + 32) attributedTitle];
    v9 = [v8 string];
    v10 = [v9 isEqualToString:@"RPVideoEditorExtensionAppNameKey"];

    if (v10)
    {
      v11 = *(a1 + 48);
LABEL_6:
      objc_storeStrong((*(v11 + 8) + 40), a2);
      goto LABEL_10;
    }

    v12 = [*(a1 + 32) attributedTitle];
    v13 = [v12 string];
    v14 = [v13 isEqualToString:@"RPVideoEditorExtensionMovieURLKey"];

    if (v14)
    {
      v15 = v6;
      v16 = [NSURL fileURLWithPath:v15];
      v17 = *(a1 + 56);
    }

    else
    {
      v20 = [*(a1 + 32) attributedTitle];
      v21 = [v20 string];
      v22 = [v21 isEqualToString:@"RPVideoEditorExtensionBundleIdentifierKey"];

      if (v22)
      {
        v11 = *(a1 + 64);
        goto LABEL_6;
      }

      v23 = [*(a1 + 32) attributedTitle];
      v24 = [v23 string];
      v25 = [v24 isEqualToString:@"RPVideoEditorExtensionFileAttachmentKey"];

      if (!v25)
      {
        v26 = [*(a1 + 32) attributedTitle];
        v27 = [v26 string];
        v28 = [v27 isEqualToString:@"RPVideoEditorExtensionOverrideShareMessageKey"];

        if (v28)
        {
          v11 = *(a1 + 80);
        }

        else
        {
          v29 = [*(a1 + 32) attributedTitle];
          v30 = [v29 string];
          v31 = [v30 isEqualToString:@"RPVideoEditorExtensionOverrideTintColorKey"];

          if (!v31)
          {
            goto LABEL_10;
          }

          v11 = *(a1 + 88);
        }

        goto LABEL_6;
      }

      v15 = v6;
      v16 = [NSURL fileURLWithPath:v15];
      v17 = *(a1 + 72);
    }

    v18 = *(v17 + 8);
    v19 = *(v18 + 40);
    *(v18 + 40) = v16;

    goto LABEL_10;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10000B734();
  }

LABEL_10:
  dispatch_group_leave(*(a1 + 40));
}

uint64_t sub_10000A798(void *a1)
{
  result = a1[4];
  if (result)
  {
    return (*(result + 16))(result, *(*(a1[5] + 8) + 40), *(*(a1[6] + 8) + 40), *(*(a1[7] + 8) + 40), *(*(a1[8] + 8) + 40), *(*(a1[9] + 8) + 40), *(*(a1[10] + 8) + 40));
  }

  return result;
}

void sub_10000AC94(id a1, NSError *a2)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10000B77C(a2);
  }
}

void sub_10000AE8C(id a1)
{
  qword_10001F0D8 = objc_alloc_init(RPStoreManager);

  _objc_release_x1();
}

void sub_10000B494(uint64_t a1, void *a2)
{
  if (__RPLogLevel <= 2 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100001E00();
    sub_100001E14(&_mh_execute_header, &_os_log_default, v4, " [ERROR] %{public}s:%d Failed to get videoCodecType for asset", v5, v6, v7, v8, v9);
  }

  *a2 = a1;
}

void sub_10000B568()
{
  v0[0] = 136446466;
  sub_100008E0C();
  *(&v0[3] + 2) = 709;
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, " [ERROR] %{public}s:%d Error Mixing video Audio tracks", v0, 0x12u);
}

void sub_10000B5F8(id *a1)
{
  [*a1 code];
  *v3 = 136446722;
  sub_100008E0C();
  *&v3[7] = 726;
  v3[9] = v1;
  v4 = v2;
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, " [ERROR] %{public}s:%d Error writing video to camera roll: %d", v3, 0x18u);
}

void sub_10000B698(void *a1)
{
  [a1 code];
  *v3 = 136446722;
  sub_100008E0C();
  *&v3[7] = 801;
  v3[9] = v1;
  v4 = v2;
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, " [ERROR] %{public}s:%d Failed to remove file, due to error: %i", v3, 0x18u);
}

void sub_10000B77C(void *a1)
{
  v1[0] = 67109120;
  v1[1] = [a1 code];
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "error calling extension - %i", v1, 8u);
}

void sub_10000B814(uint64_t *a1)
{
  v1 = *a1;
  v2 = 138412290;
  v3 = v1;
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "RPStoreManager::performLookupWithBundleIdentifiers could not complete lookup with error:%@", &v2, 0xCu);
}