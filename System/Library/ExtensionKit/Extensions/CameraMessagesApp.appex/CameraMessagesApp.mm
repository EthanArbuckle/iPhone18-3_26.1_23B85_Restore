void sub_1000019F4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5)
  {
    if (*(a1 + 80) == 1)
    {
      [v5 beginSupressingLivePhoto];
    }

    [v5 setMediaOrigin:*(a1 + 72)];
    [v5 removeSidecarObjectForKey:*(a1 + 32)];
    v22 = 0;
    v8 = [NSKeyedArchiver archivedDataWithRootObject:v5 requiringSecureCoding:1 error:&v22];
    v9 = v22;
    if (!v8)
    {
      v10 = os_log_create("com.apple.camera", "CameraMessagesApp");
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_100007740(v9, v10);
      }
    }

    [CMAMessagesExtensionStorageHelper markFilesPurgeableForAsset:*(a1 + 40)];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100001C50;
    block[3] = &unk_100010438;
    v21 = *(a1 + 81);
    v16 = *(a1 + 48);
    v17 = v8;
    v20 = *(a1 + 72);
    v18 = *(a1 + 56);
    v19 = *(a1 + 64);
    v11 = v8;
    dispatch_async(&_dispatch_main_q, block);

LABEL_13:
    goto LABEL_14;
  }

  if (v6)
  {
    v12 = os_log_create("com.apple.camera", "CameraMessagesApp");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_1000077B8(v7, v12);
    }

    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100001F70;
    v13[3] = &unk_100010460;
    v14 = *(a1 + 64);
    dispatch_async(&_dispatch_main_q, v13);
    v9 = v14;
    goto LABEL_13;
  }

LABEL_14:
}

uint64_t sub_100001C50(uint64_t a1)
{
  if (*(a1 + 72) == 1)
  {
    [*(a1 + 32) _insertAssetArchive:*(a1 + 40) completionHandler:&stru_1000103F0];
    v2 = os_log_create("com.apple.camera", "CameraMessagesApp");
    if (!os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_10;
    }

    v3 = *(a1 + 32);
    v10 = 138543362;
    v11 = v3;
    v4 = "Called _insertAssetArchive on %{public}@";
    goto LABEL_9;
  }

  v5 = *(a1 + 64);
  if (v5 > 4)
  {
    v6 = 5;
  }

  else
  {
    v6 = qword_10000DCC8[v5];
  }

  [*(a1 + 48) reportPayloadSentFromSource:v6];
  [*(a1 + 32) _sendAssetArchive:*(a1 + 40) completionHandler:&stru_100010410];
  v2 = os_log_create("com.apple.camera", "CameraMessagesApp");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    v10 = 138543362;
    v11 = v7;
    v4 = "Called _sendAssetArchive on %{public}@";
LABEL_9:
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, v4, &v10, 0xCu);
  }

LABEL_10:

  result = *(a1 + 56);
  if (result)
  {
    return (*(result + 16))(result, v8);
  }

  return result;
}

void sub_100001DB8(id a1, NSError *a2)
{
  v2 = a2;
  CAMSignpostWithIDAndArgs();
  v3 = os_log_create("com.apple.camera", "CameraMessagesApp");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138543362;
    v5 = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Staging complete: %{public}@", &v4, 0xCu);
  }
}

void sub_100001E94(id a1, NSError *a2)
{
  v2 = a2;
  CAMSignpostWithIDAndArgs();
  v3 = os_log_create("com.apple.camera", "CameraMessagesApp");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138543362;
    v5 = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Send complete: %{public}@", &v4, 0xCu);
  }
}

uint64_t sub_100001F70(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_100002704(uint64_t a1)
{
  Current = CFAbsoluteTimeGetCurrent();
  v3 = [*(a1 + 32) _regularCameraViewController];
  v4 = [v3 persistenceController];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000027B4;
  v5[3] = &unk_1000104A8;
  *&v5[4] = Current;
  [v4 emptyLocalPersistenceStorageWithTimeout:v5 completionHandler:0.5];
}

void sub_1000027B4(uint64_t a1)
{
  Current = CFAbsoluteTimeGetCurrent();
  v3 = *(a1 + 32);
  v4 = os_log_create("com.apple.camera", "CameraMessagesApp");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 134217984;
    v6 = Current - v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Emptying local persistence storage took %.3fs", &v5, 0xCu);
  }
}

id sub_100002AE0(uint64_t a1)
{
  result = [*(a1 + 32) _didReceiveViewWillAppear];
  if ((result & 1) == 0)
  {
    v3 = os_log_create("com.apple.camera", "Camera");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 40);
      v5 = 134217984;
      v6 = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Stopping camera session that we started in viewDidLoad since we haven't received viewWillAppear within %.3f seconds", &v5, 0xCu);
    }

    return [*(a1 + 32) _stopActiveCameraSession];
  }

  return result;
}

void sub_100004160(uint64_t a1)
{
  v1 = [*(a1 + 32) _regularCameraViewController];
  [v1 setMessagesTransitionState:2 animated:1];

  v2 = sub_1000041D0();
  dispatch_async(v2, &stru_100010560);
}

id sub_1000041D0()
{
  if (qword_100015AD8 != -1)
  {
    sub_100007850();
  }

  v1 = qword_100015AE0;

  return v1;
}

void sub_100004214(id a1)
{
  CAMSignpostWithIDAndArgs();
  if (!qword_100015AE8)
  {
    qword_100015AE8 = dlopen("/System/Library/PrivateFrameworks/AssetExplorer.framework/AssetExplorer", 2);
  }

  CAMSignpostWithIDAndArgs();
}

void sub_1000043A4(uint64_t a1)
{
  v1 = [*(a1 + 32) _regularCameraViewController];
  [v1 setMessagesTransitionState:0 animated:1];
}

void sub_1000044DC(uint64_t a1, void *a2)
{
  v3 = *(a1 + 72);
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = [v4 view];
  v7 = [v6 window];
  v8 = [v7 screen];
  [v8 scale];
  [CMAMessagesExtensionUtilities shutterButtonAlignmentRectForReferenceBounds:v3 layoutStyle:*(a1 + 40) screenScale:*(a1 + 48), *(a1 + 56), *(a1 + 64), v9];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;

  if (!*(a1 + 72))
  {
    v13 = v13 + v17 / 1.5;
  }

  [PUReviewScreenUtilities orientedGeometryForFrame:*(a1 + 80) inBounds:v11 orientation:v13, v15, v17, *(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64), 0, 0, 0, 0];
  [v5 setControlCenterAlignmentPoint:*(a1 + 88) forceLayout:0];
}

id sub_100004A7C(uint64_t a1)
{
  [*(a1 + 32) setUserInteractionEnabled:1];
  v2 = os_log_create("com.apple.camera", "CameraMessagesApp");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Dismissing after _transportAsset completion", v4, 2u);
  }

  return [*(a1 + 40) dismiss];
}

void sub_100004C24(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = os_log_create("com.apple.camera", "CameraMessagesApp");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_100007898();
    }
  }

  else
  {
    v4 = *(a1 + 32);

    [CMAMessagesExtensionStorageHelper markFilesPurgeableForAsset:v4];
  }
}

void sub_1000051E4(uint64_t a1)
{
  v17 = objc_alloc_init(PHAssetCreationOptions);
  [v17 setUseRecoverableStagingDirectory:1];
  [v17 setShouldUseAutomaticallyGeneratedOriginalFilename:1];
  v2 = [*(a1 + 32) mediaType];
  if (v2 == 2)
  {
    v8 = [*(a1 + 32) identifier];
    v4 = [PHAssetCreationRequest creationRequestForAssetWithUUID:v8 options:v17];

    v9 = [*(a1 + 32) providedFullsizeRenderVideoURL];
    v10 = v9;
    if (v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = [*(a1 + 32) providedVideoURL];
    }

    v12 = v11;

    [v4 addResourceWithType:2 fileURL:v12 options:0];
  }

  else
  {
    if (v2 != 1)
    {
      goto LABEL_16;
    }

    v3 = [*(a1 + 32) identifier];
    v4 = [PHAssetCreationRequest creationRequestForAssetWithUUID:v3 options:v17];

    v5 = [*(a1 + 32) providedFullsizeRenderImageURL];
    v6 = v5;
    if (v5)
    {
      v7 = v5;
    }

    else
    {
      v7 = [*(a1 + 32) providedFullsizeImageURL];
    }

    v12 = v7;

    [v4 addResourceWithType:1 fileURL:v12 options:0];
    if ([*(a1 + 32) isLivePhoto])
    {
      v13 = [*(a1 + 32) providedFullsizeRenderVideoURL];
      v14 = v13;
      if (v13)
      {
        v15 = v13;
      }

      else
      {
        v15 = [*(a1 + 32) providedVideoURL];
      }

      v16 = v15;

      [v4 addResourceWithType:9 fileURL:v16 options:0];
    }
  }

LABEL_16:
}

void sub_1000053B4(id a1, BOOL a2, NSError *a3)
{
  v3 = a2;
  v4 = a3;
  v5 = os_log_create("com.apple.camera", "Camera");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = @"Success.";
    if (!v3)
    {
      v6 = v4;
    }

    v7 = 138543362;
    v8 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Finished updating asset. %{public}@", &v7, 0xCu);
  }
}

void sub_1000060F8(id a1)
{
  v1 = dispatch_queue_create("com.apple.camera.softlink.AssetExplorer", 0);
  v2 = qword_100015AE0;
  qword_100015AE0 = v1;

  v3 = qword_100015AE0;
  v4 = camSoftLinkQueue();
  dispatch_set_target_queue(v3, v4);
}

Class sub_10000616C(uint64_t a1)
{
  sub_1000061C4();
  result = objc_getClass("AECameraAssetPackageGenerator");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_100015AF0 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    sub_1000079C0();
    return sub_1000061C4();
  }

  return result;
}

uint64_t sub_1000061C4()
{
  CAMSignpostWithIDAndArgs();
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = 0;
  v0 = sub_1000041D0();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000062DC;
  block[3] = &unk_100010660;
  block[4] = &v4;
  dispatch_sync(v0, block);

  CAMSignpostWithIDAndArgs();
  v1 = v5[3];
  _Block_object_dispose(&v4, 8);
  return v1;
}

void sub_1000062C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_1000062DC(uint64_t a1)
{
  result = qword_100015AE8;
  if (!qword_100015AE8)
  {
    result = dlopen("/System/Library/PrivateFrameworks/AssetExplorer.framework/AssetExplorer", 2);
    qword_100015AE8 = result;
  }

  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

Class sub_100006328(uint64_t a1)
{
  sub_1000061C4();
  result = objc_getClass("AEChatKitStatisticsManager");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_100015AF8 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = sub_1000079E8();
    return sub_100006380(v3);
  }

  return result;
}

void *sub_100006380(uint64_t a1)
{
  v2 = sub_1000061C4();
  result = dlsym(v2, "kUTTypeAssetPreviewImage");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_100015B00 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_1000063D0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

id sub_100006C20(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 64);
  v7[0] = *(a1 + 48);
  v7[1] = v3;
  v8 = *(a1 + 80);
  [v2 configureWithShutterButtonSpec:v7];
  v4 = *(a1 + 88);
  v5 = [*(a1 + 32) imageView];
  [v5 setAlpha:v4];

  [*(a1 + 32) setCenter:{*(a1 + 96), *(a1 + 104)}];
  return [*(a1 + 40) setAlpha:1.0];
}

id sub_100006CA4(uint64_t a1)
{
  [*(a1 + 32) removeFromSuperview];
  [*(a1 + 40) completeTransition:{objc_msgSend(*(a1 + 40), "transitionWasCancelled") ^ 1}];
  v3 = *(a1 + 40);
  v2 = *(a1 + 48);

  return [v2 _finishTransitionWithContext:v3];
}

void sub_100007740(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Failed to archive package: %{public}@", &v2, 0xCu);
}

void sub_1000077B8(void *a1, NSObject *a2)
{
  v3 = [a1 localizedDescription];
  v4 = 138543362;
  v5 = v3;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "CAMAssetTransportController reported an error generating AEMutableAssetPackage: %{public}@", &v4, 0xCu);
}

uint64_t sub_1000078CC()
{
  dlerror();
  v0 = abort_report_np();
  return sub_1000078F0(v0);
}

void sub_100007A10(uint64_t a1, int a2, os_log_t log)
{
  v3 = 138543618;
  v4 = a1;
  v5 = 1024;
  v6 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Failed to mark file purgeable: %{public}@, %{errno}d", &v3, 0x12u);
}