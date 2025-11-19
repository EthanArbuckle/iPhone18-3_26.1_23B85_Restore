void sub_100001C60(uint64_t a1)
{
  v1 = [*(a1 + 32) _remoteViewControllerProxy];
  [v1 deactivate];
  [v1 invalidate];
  dispatch_async(&_dispatch_main_q, &stru_100028730);
}

void sub_100002010(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100002318(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000023AC(uint64_t a1)
{
  v1 = [*(a1 + 32) _remoteViewControllerProxy];
  [v1 deactivate];
}

void sub_1000028BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_1000028D4()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = off_100031890;
  v8 = off_100031890;
  if (!off_100031890)
  {
    v1 = sub_100002AC0();
    v6[3] = dlsym(v1, "CACLogAccessibility");
    off_100031890 = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = sub_100012D7C();
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = v0();

  return v2;
}

Class sub_100002A68(uint64_t a1)
{
  sub_100002AC0();
  result = objc_getClass("CACCustomCommandEditorViewController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_100031868 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    sub_100012FD8();
    return sub_100002AC0();
  }

  return result;
}

uint64_t sub_100002AC0()
{
  v3[0] = 0;
  if (!qword_100031870)
  {
    v3[1] = _NSConcreteStackBlock;
    v3[2] = 3221225472;
    v3[3] = sub_100002BC0;
    v3[4] = &unk_1000287B8;
    v3[5] = v3;
    v4 = off_1000287A0;
    v5 = 0;
    qword_100031870 = _sl_dlopen();
  }

  v0 = qword_100031870;
  v1 = v3[0];
  if (!qword_100031870)
  {
    v1 = abort_report_np();
    goto LABEL_7;
  }

  if (v3[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

uint64_t sub_100002BC0(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_100031870 = result;
  return result;
}

Class sub_100002C34(uint64_t a1)
{
  sub_100002AC0();
  result = objc_getClass("CACSpokenCommandItem");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_100031878 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = sub_100013000();
    return sub_100002C8C(v3);
  }

  return result;
}

Class sub_100002C8C(uint64_t a1)
{
  sub_100002AC0();
  result = objc_getClass("CACPreferences");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_100031880 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = sub_100013028();
    return sub_100002CE4(v3);
  }

  return result;
}

void *sub_100002CE4(uint64_t a1)
{
  v2 = sub_100002AC0();
  result = dlsym(v2, "CACLogPreferences");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_100031888 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_100002D34(uint64_t a1)
{
  v2 = sub_100002AC0();
  result = dlsym(v2, "CACLogAccessibility");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_100031890 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_100002D84(uint64_t a1)
{
  sub_100002AC0();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("CACRecordedUserActionFlow");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_100031898 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    sub_100013050();
    sub_100002DDC();
  }
}

void sub_100002DE8(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void sub_100003C90(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_fault_impl(a1, v9, OS_LOG_TYPE_FAULT, a4, &a9, 0xCu);
}

void sub_100003CB0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0x20u);
}

uint64_t start(int a1, char **a2)
{
  v4 = objc_autoreleasePoolPush();
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = UIApplicationMain(a1, a2, 0, v6);

  objc_autoreleasePoolPop(v4);
  return v7;
}

void sub_100004540(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10000467C(uint64_t a1)
{
  [*(a1 + 32) setAlpha:1.0];
  v2 = [*(a1 + 40) popoverPresentingViewController];
  [v2 didMoveToParentViewController:*(a1 + 40)];
}

void sub_1000047A0(uint64_t a1)
{
  [*(a1 + 32) dismissViewControllerAnimated:1 completion:0];
  v3 = [*(a1 + 32) popoverPresentingViewController];
  v2 = [v3 view];
  [v2 setAlpha:0.0];
}

void sub_100004814(uint64_t a1)
{
  v1 = [*(a1 + 32) _remoteViewControllerProxy];
  [v1 deactivate];
}

void sub_100004B44(uint64_t a1)
{
  sub_100004B9C();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("CACCorrectionsCollectionViewController");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_1000318A0 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    sub_100013394();
    sub_100004B9C();
  }
}

void sub_100004B9C()
{
  v1[0] = 0;
  if (!qword_1000318A8)
  {
    v1[1] = _NSConcreteStackBlock;
    v1[2] = 3221225472;
    v1[3] = sub_100004C98;
    v1[4] = &unk_1000287B8;
    v1[5] = v1;
    v2 = off_100028828;
    v3 = 0;
    qword_1000318A8 = _sl_dlopen();
  }

  v0 = v1[0];
  if (!qword_1000318A8)
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

uint64_t sub_100004C98(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_1000318A8 = result;
  return result;
}

VOTQuickSettingsListViewController *sub_100004D0C(uint64_t a1)
{
  sub_100004B9C();
  result = objc_getClass("CACPopoverPresentingViewController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_1000318B0 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = sub_1000133BC();
    return [(VOTQuickSettingsListViewController *)v3 initWithNibName:v4 bundle:v5, v6];
  }

  return result;
}

void sub_10000518C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v3 - 88));
  _Unwind_Resume(a1);
}

void sub_1000051D0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained reloadSpecifiers];
}

void sub_100005210(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained reloadSpecifiers];
}

void sub_100005250(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained reloadSpecifiers];
}

void sub_100005980(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000059A4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if ([WeakRetained _isFiltering])
  {
    v1 = sub_10000CCD4(@"item.count");
    v2 = [WeakRetained filteredSpecifiers];
    v3 = +[NSString localizedStringWithFormat:](NSString, "localizedStringWithFormat:", v1, [v2 count]);

    UIAccessibilitySpeakIfNotSpeaking();
  }
}

void sub_100006224(uint64_t a1)
{
  v7 = [*(a1 + 32) imageExplorerViewController];
  v2 = [*(a1 + 32) hostAppName];
  v3 = *(a1 + 40);
  v4 = [*(a1 + 32) visionResult];
  v5 = [v4 features];
  v6 = [*(a1 + 32) detailData];
  [v7 launchImageExplorerFromHostApp:v2 withImage:v3 visionFeatures:v5 data:v6];
}

void sub_100006804(uint64_t a1)
{
  v1 = [*(a1 + 32) _remoteViewControllerProxy];
  [v1 deactivate];
  [v1 invalidate];
  dispatch_async(&_dispatch_main_q, &stru_1000288B8);
}

void sub_100006FF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id location, char a27)
{
  objc_destroyWeak(&location);
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose((v27 - 128), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100007024(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10000703C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  v3 = VOTLogImageExplorer();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_1000139BC();
  }

  +[NSDate timeIntervalSinceReferenceDate];
  v5 = v4;
  v6 = [WeakRetained _photoAssetDataWithNetWorkAccess:1];
  +[NSDate timeIntervalSinceReferenceDate];
  v8 = v7;
  v9 = VOTLogImageExplorer();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v23 = objc_opt_class();
    v24 = NSStringFromClass(v23);
    *buf = 138412546;
    v32 = v24;
    v33 = 2048;
    v34 = v8 - v5;
    _os_log_debug_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "%@ - Loading image from network took %.3fs to complete", buf, 0x16u);
  }

  v10 = [UIImage alloc];
  v11 = [v6 imageData];
  v12 = [v10 initWithData:v11];

  v13 = [*(a1 + 40) visionEngine];
  v14 = +[AXMVisionAnalysisOptions voiceOverOptions];
  +[NSDate timeIntervalSinceReferenceDate];
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_100007334;
  v26[3] = &unk_1000288E0;
  v30 = v15;
  v29 = *(a1 + 64);
  v26[4] = WeakRetained;
  v27 = v12;
  v25 = *(a1 + 48);
  v16 = v25;
  v28 = v25;
  v17 = v12;
  v18 = objc_retainBlock(v26);
  v19 = [v13 imageNode];
  [v19 setShouldProcessRemotely:1];

  v20 = VOTLogImageExplorer();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
    sub_100013A64();
  }

  v21 = [v13 imageNode];
  v22 = [[CIImage alloc] initWithImage:v17];
  [v21 triggerWithImage:v22 options:v14 cacheKey:0 resultHandler:v18];
}

void sub_100007334(uint64_t a1, void *a2)
{
  v3 = a2;
  +[NSDate timeIntervalSinceReferenceDate];
  v5 = v4;
  v6 = VOTLogImageExplorer();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    sub_100013AFC();
  }

  v7 = VOTLogImageExplorer();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    sub_100013B98(a1, v5);
  }

  v8 = UIAccessibilityAnnouncementNotification;
  v9 = sub_10000CCD4(@"VoiceOverImageExplorer.image.and.features.updated");
  UIAccessibilityPostNotification(v8, v9);

  v10 = *(*(a1 + 56) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v3;
  v12 = v3;

  objc_storeStrong((*(*(a1 + 64) + 8) + 40), *(a1 + 40));
  dispatch_semaphore_signal(*(a1 + 48));
}

void sub_100007448(uint64_t a1)
{
  v5 = [*(a1 + 32) imageExplorerViewController];
  v2 = *(*(*(a1 + 40) + 8) + 40);
  v3 = [*(*(*(a1 + 48) + 8) + 40) features];
  v4 = [*(a1 + 32) detailData];
  [v5 updateImageExplorerWithImage:v2 features:v3 data:v4];
}

id sub_100007AFC(uint64_t a1, void *a2)
{
  v3 = [a2 label];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

BOOL sub_100008360(id a1, id a2, NSDictionary *a3)
{
  v4 = a2;
  v5 = a3;
  objc_opt_class();
  v6 = __UIAccessibilityCastAsClass();
  v7 = v6;
  if (v6)
  {
    v8 = [v6 isHeader];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void sub_10000A3B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10000A3D4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10000A3EC(uint64_t a1, void *a2)
{
  v29 = a2;
  v4 = *(a1 + 32);
  [*(a1 + 40) normalizedFrame];
  [*(a1 + 32) frame];
  UIAccessibilityFrameForBounds();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = *(a1 + 32);
  [v29 normalizedFrame];
  [*(a1 + 32) frame];
  UIAccessibilityFrameForBounds();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v31.origin.x = v6;
  v31.origin.y = v8;
  v31.size.width = v10;
  v31.size.height = v12;
  v36.origin.x = v15;
  v36.origin.y = v17;
  v36.size.width = v19;
  v36.size.height = v21;
  if (CGRectIntersectsRect(v31, v36))
  {
    goto LABEL_10;
  }

  v32.origin.x = v15;
  v32.origin.y = v17;
  v32.size.width = v19;
  v32.size.height = v21;
  v37.origin.x = v6;
  v37.origin.y = v8;
  v37.size.width = v10;
  v37.size.height = v12;
  if (CGRectContainsRect(v32, v37))
  {
LABEL_10:
    v33.origin.x = v15;
    v33.origin.y = v17;
    v33.size.width = v19;
    v33.size.height = v21;
    v38.origin.x = v6;
    v38.origin.y = v8;
    v38.size.width = v10;
    v38.size.height = v12;
    v34 = CGRectIntersection(v33, v38);
    x = v34.origin.x;
    y = v34.origin.y;
    width = v34.size.width;
    height = v34.size.height;
    v26 = CGRectGetWidth(v34);
    v35.origin.x = x;
    v35.origin.y = y;
    v35.size.width = width;
    v35.size.height = height;
    v27 = v26 * CGRectGetHeight(v35);
    v28 = *(*(a1 + 48) + 8);
    if (v27 > *(v28 + 24))
    {
      *(v28 + 24) = v27;
      objc_storeStrong((*(*(a1 + 56) + 8) + 40), a2);
    }
  }
}

void sub_10000A7F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id sub_10000A820(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = [WeakRetained elements];
  v6 = [v5 objectForKeyedSubscript:*(a1 + 32)];

  if (![v6 count])
  {
    goto LABEL_17;
  }

  v7 = *(a1 + 32);
  if (v7 == @"VoiceOverImageExplorer.text.rotor")
  {
    v9 = [v6 firstObject];
    v8 = [v9 accessibilityElements];

    v6 = v9;
    goto LABEL_7;
  }

  if (v7 == @"VoiceOverImageExplorer.document.rotor" || v7 == @"VoiceOverImageExplorer.table.rotor")
  {
    v8 = [v6 ax_flatMappedArrayUsingBlock:&stru_100028A70];
LABEL_7:

    v6 = v8;
  }

  if ([v6 count])
  {
    v10 = [v3 currentItem];
    v11 = [v10 targetElement];
    v12 = [v6 indexOfObject:v11];

    if (v12 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v13 = 0;
    }

    else
    {
      if ([v3 searchDirection])
      {
        v13 = v12 + 1;
      }

      else
      {
        v13 = v12 - 1;
      }

      if ((v13 & 0x8000000000000000) != 0)
      {
        goto LABEL_17;
      }
    }

    if (v13 < [v6 count])
    {
      v14 = objc_alloc_init(UIAccessibilityCustomRotorItemResult);
      v15 = [v6 objectAtIndexedSubscript:v13];
      [v14 setTargetElement:v15];

      goto LABEL_18;
    }
  }

LABEL_17:
  v14 = 0;
LABEL_18:

  return v14;
}

id sub_10000A9E4(id a1, id a2)
{
  v2 = a2;
  v3 = [v2 accessibilityElements];
  v4 = [v3 count];

  if (v4)
  {
    v5 = [v2 accessibilityElements];
    v6 = [v5 firstObject];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void sub_10000B16C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v3 + 48));
  objc_destroyWeak((v2 + 48));
  objc_destroyWeak((v4 - 104));
  _Unwind_Resume(a1);
}

void sub_10000B1B8(uint64_t a1, void *a2)
{
  v15 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v4 = [WeakRetained _axNearbyRelationKeyForFeature:*(a1 + 32) andNeighborFeature:v15];

  if (v4)
  {
    v5 = [v15 faceDetectionResult];
    v6 = [v5 name];

    if (AXRuntimeCheck_MediaAnalysisSupport())
    {
      v7 = [v15 mediaAnalysisFaceDetectionResult];
      v8 = [v7 name];

      v6 = v8;
    }

    if (![(__CFString *)v6 length])
    {

      v6 = @"UNKFace";
    }

    v9 = [*(a1 + 40) objectForKey:v4];
    v10 = [v9 mutableCopy];
    v11 = v10;
    if (v10)
    {
      v12 = v10;
    }

    else
    {
      v12 = +[NSMutableArray array];
    }

    v13 = v12;

    v14 = [[VOTImageExplorerCustomContentValue alloc] initWithFeatureValue:v6 featureType:@"Face"];
    [v13 axSafelyAddObject:v14];
    [*(a1 + 40) setObject:v13 forKeyedSubscript:v4];
  }
}

void sub_10000B32C(uint64_t a1, void *a2)
{
  v13 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v4 = [WeakRetained _axNearbyRelationKeyForFeature:*(a1 + 32) andNeighborFeature:v13];

  if (v4)
  {
    v5 = [*(a1 + 40) objectForKey:v4];
    v6 = [v5 mutableCopy];
    v7 = v6;
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = +[NSMutableArray array];
    }

    v9 = v8;

    v10 = [VOTImageExplorerCustomContentValue alloc];
    v11 = [v13 classificationLocalizedValue];
    v12 = [(VOTImageExplorerCustomContentValue *)v10 initWithFeatureValue:v11 featureType:@"Object"];

    [v9 axSafelyAddObject:v12];
    [*(a1 + 40) setObject:v9 forKeyedSubscript:v4];
  }
}

void sub_10000B450(uint64_t a1, void *a2)
{
  v13 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v4 = [WeakRetained _axNearbyRelationKeyForFeature:*(a1 + 32) andNeighborFeature:v13];

  if (v4 && [v13 ocrFeatureType] != 1)
  {
    v5 = [*(a1 + 40) objectForKey:v4];
    v6 = [v5 mutableCopy];
    v7 = v6;
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = +[NSMutableArray array];
    }

    v9 = v8;

    v10 = [VOTImageExplorerCustomContentValue alloc];
    v11 = +[AXMVisionFeature nameForOCRType:](AXMVisionFeature, "nameForOCRType:", [v13 ocrFeatureType]);
    v12 = [(VOTImageExplorerCustomContentValue *)v10 initWithFeatureValue:v11 featureType:@"OCR"];

    [v9 axSafelyAddObject:v12];
    [*(a1 + 40) setObject:v9 forKeyedSubscript:v4];
  }
}

void sub_10000B6C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10000B6DC(uint64_t a1, void *a2, void *a3)
{
  v37 = a2;
  v39 = a3;
  v48 = 0;
  v49 = &v48;
  v50 = 0x3032000000;
  v51 = sub_10000A3D4;
  v52 = sub_10000A3E4;
  v53 = +[NSString string];
  v4 = [v39 axFilterObjectsUsingBlock:&stru_100028B00];
  v38 = [v4 axFilterObjectsUsingBlock:&stru_100028B20];
  v35 = v4;
  v5 = [v4 count];
  if (v5)
  {
    v6 = v49[5];
    v7 = sub_10000CCD4(@"VoiceOverImageExplorer.maybe.x.people");
    v31 = [NSString stringWithFormat:v7, v5];
    v8 = __UIAXStringForVariables();
    v9 = v49[5];
    v49[5] = v8;

    if ([v38 count])
    {
      v10 = v49[5];
      v11 = sub_10000CCD4(@"VoiceOverImageExplorer.relations.including.people.names");
      v12 = [v38 valueForKeyPath:@"@distinctUnionOfObjects.value"];
      v13 = UIAXLabelForElements();
      v30 = [NSString stringWithFormat:v11, v13];
      v33 = @"__AXStringForVariablesSentinel";
      v14 = __UIAXStringForVariables();
      v15 = v49[5];
      v49[5] = v14;
    }
  }

  v42 = [v39 axFilterObjectsUsingBlock:{&stru_100028B40, v30, v33}];
  v41 = objc_opt_new();
  [v42 valueForKeyPath:@"@distinctUnionOfObjects.value"];
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  obj = v45 = 0u;
  v16 = [obj countByEnumeratingWithState:&v44 objects:v54 count:16];
  if (v16)
  {
    v17 = *v45;
    do
    {
      for (i = 0; i != v16; i = i + 1)
      {
        if (*v45 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v19 = *(*(&v44 + 1) + 8 * i);
        v20 = [NSPredicate predicateWithFormat:@"value = %@", v19];
        v21 = [v42 filteredArrayUsingPredicate:v20];
        v22 = [v21 count];

        v23 = [NSNumber numberWithUnsignedInteger:v22];
        [v41 setObject:v23 forKey:v19];
      }

      v16 = [obj countByEnumeratingWithState:&v44 objects:v54 count:16];
    }

    while (v16);
  }

  v43[0] = _NSConcreteStackBlock;
  v43[1] = 3221225472;
  v43[2] = sub_10000BCB0;
  v43[3] = &unk_100028B68;
  v43[4] = &v48;
  [v41 enumerateKeysAndObjectsUsingBlock:v43];
  v24 = [v39 axFilterObjectsUsingBlock:&stru_100028B88];
  if ([v24 count])
  {
    v25 = v49[5];
    v26 = [v24 valueForKeyPath:@"@distinctUnionOfObjects.value"];
    v32 = UIAXLabelForElements();
    v34 = @"__AXStringForVariablesSentinel";
    v27 = __UIAXStringForVariables();
    v28 = v49[5];
    v49[5] = v27;
  }

  v29 = [AXCustomContent customContentWithLabel:v37 value:v49[5], v32, v34];
  [*(*(*(a1 + 32) + 8) + 40) axSafelyAddObject:v29];

  _Block_object_dispose(&v48, 8);
}

BOOL sub_10000BBE4(id a1, VOTImageExplorerCustomContentValue *a2, unint64_t a3)
{
  v3 = [(VOTImageExplorerCustomContentValue *)a2 type];
  v4 = [v3 isEqualToString:@"Face"];

  return v4;
}

BOOL sub_10000BC28(id a1, VOTImageExplorerCustomContentValue *a2, unint64_t a3)
{
  v3 = [(VOTImageExplorerCustomContentValue *)a2 value];
  v4 = [v3 isEqualToString:@"UNKFace"];

  return v4 ^ 1;
}

BOOL sub_10000BC6C(id a1, VOTImageExplorerCustomContentValue *a2, unint64_t a3)
{
  v3 = [(VOTImageExplorerCustomContentValue *)a2 type];
  v4 = [v3 isEqualToString:@"Object"];

  return v4;
}

void sub_10000BCB0(uint64_t a1, void *a2, void *a3)
{
  v12 = a2;
  v5 = [a3 unsignedIntegerValue];
  v6 = v12;
  if (v5)
  {
    v7 = *(*(*(a1 + 32) + 8) + 40);
    v8 = v12;
    if (v5 != 1)
    {
      v8 = [NSString stringWithFormat:@"%lu %@", v5, v12];
    }

    v9 = __UIAXStringForVariables();
    v10 = *(*(a1 + 32) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;

    v6 = v12;
    if (v5 != 1)
    {

      v6 = v12;
    }
  }
}

BOOL sub_10000BD8C(id a1, VOTImageExplorerCustomContentValue *a2, unint64_t a3)
{
  v3 = [(VOTImageExplorerCustomContentValue *)a2 type];
  v4 = [v3 isEqualToString:@"OCR"];

  return v4;
}

void sub_10000CA10(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 sceneClassId];
  [v2 axSafelyAddObject:v3];
}

void sub_10000CAF8(id a1)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v1 = qword_1000318D8;
  v11 = qword_1000318D8;
  if (!qword_1000318D8)
  {
    v2 = sub_10000CDB8();
    v9[3] = dlsym(v2, "kTCCServicePhotos");
    qword_1000318D8 = v9[3];
    v1 = v9[3];
  }

  _Block_object_dispose(&v8, 8);
  if (!v1)
  {
    sub_100012D7C();
    goto LABEL_9;
  }

  v3 = *v1;
  v4 = *v1;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v5 = off_1000318C8;
  v11 = off_1000318C8;
  if (!off_1000318C8)
  {
    v6 = sub_10000CDB8();
    v9[3] = dlsym(v6, "TCCAccessPreflight");
    off_1000318C8 = v9[3];
    v5 = v9[3];
  }

  _Block_object_dispose(&v8, 8);
  if (!v5)
  {
LABEL_9:
    v7 = sub_100012D7C();
    _Block_object_dispose(&v8, 8);
    _Unwind_Resume(v7);
  }

  byte_1000318B8 = v5(v3, 0) == 0;
}

id sub_10000CCD4(void *a1)
{
  v1 = a1;
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:v1 value:&stru_100028F48 table:@"AXUIViewService"];

  return v3;
}

void *sub_10000CD68(uint64_t a1)
{
  v2 = sub_10000CDB8();
  result = dlsym(v2, "TCCAccessPreflight");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_1000318C8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_10000CDB8()
{
  v3[0] = 0;
  if (!qword_1000318D0)
  {
    v3[1] = _NSConcreteStackBlock;
    v3[2] = 3221225472;
    v3[3] = sub_10000CEB8;
    v3[4] = &unk_1000287B8;
    v3[5] = v3;
    v4 = off_100028C18;
    v5 = 0;
    qword_1000318D0 = _sl_dlopen();
  }

  v0 = qword_1000318D0;
  v1 = v3[0];
  if (!qword_1000318D0)
  {
    v1 = abort_report_np();
    goto LABEL_7;
  }

  if (v3[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

uint64_t sub_10000CEB8(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_1000318D0 = result;
  return result;
}

void *sub_10000CF2C(uint64_t a1)
{
  v2 = sub_10000CDB8();
  result = dlsym(v2, "kTCCServicePhotos");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1000318D8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_10000D2C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id sub_10000D2E0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained value];
  v2 = AXFormatFloatWithPercentage();

  return v2;
}

void sub_10000F28C(id a1)
{
  v1 = [NSBundle bundleWithPath:@"/System/Library/AccessibilityBundles/GAXClient.bundle"];
  v2 = v1;
  if (v1)
  {
    v16 = 0;
    v3 = [v1 loadAndReturnError:&v16];
    v4 = v16;
    if (v3)
    {
      goto LABEL_14;
    }

    v5 = +[AXSubsystemVoiceOver sharedInstance];
    v6 = [v5 ignoreLogging];

    if (v6)
    {
      goto LABEL_14;
    }

    v7 = +[AXSubsystemVoiceOver identifier];
    v8 = AXLoggerForFacility();

    v9 = AXOSLogLevelFromAXLogLevel();
    if (!os_log_type_enabled(v8, v9))
    {
      goto LABEL_13;
    }

    v10 = AXColorizeFormatLog();
    v11 = _AXStringForArgs();
    if (os_log_type_enabled(v8, v9))
    {
      *buf = 138543362;
      v18 = v11;
      _os_log_impl(&_mh_execute_header, v8, v9, "%{public}@", buf, 0xCu);
    }

LABEL_12:
LABEL_13:

    goto LABEL_14;
  }

  v12 = +[AXSubsystemVoiceOver sharedInstance];
  v13 = [v12 ignoreLogging];

  if ((v13 & 1) == 0)
  {
    v14 = +[AXSubsystemVoiceOver identifier];
    v4 = AXLoggerForFacility();

    v15 = AXOSLogLevelFromAXLogLevel();
    if (!os_log_type_enabled(v4, v15))
    {
LABEL_14:

      goto LABEL_15;
    }

    v8 = AXColorizeFormatLog();
    v10 = _AXStringForArgs();
    if (os_log_type_enabled(v4, v15))
    {
      *buf = 138543362;
      v18 = v10;
      _os_log_impl(&_mh_execute_header, v4, v15, "%{public}@", buf, 0xCu);
    }

    goto LABEL_12;
  }

LABEL_15:
}

uint64_t sub_10000F8E8(uint64_t a1)
{
  v1 = a1;
  v2 = [*(*(a1 + 32) + 56) objectAtIndex:?];
  LODWORD(v1) = [v2 containsObject:*(v1 + 40)];

  return v1 ^ 1;
}

void sub_10000FA20(uint64_t a1)
{
  v1 = [*(a1 + 32) view];
  [v1 setAlpha:0.0];
}

id sub_10000FA68(uint64_t a1)
{
  [*(*(a1 + 32) + 16) resignFirstResponder];
  [*(*(a1 + 32) + 16) setText:&stru_100028F48];
  [*(*(a1 + 32) + 32) removeAllObjects];
  v2 = *(a1 + 32);
  v3 = *(v2 + 104);
  *(v2 + 104) = 0;

  v4 = [*(a1 + 32) delegate];
  [v4 itemChooser:*(a1 + 32) didSelectItemAtIndex:*(*(a1 + 32) + 112) activate:*(*(a1 + 32) + 120)];

  v5 = *(a1 + 32);

  return [v5 _updateGuidedAccessWindowId:0];
}

BOOL sub_10000FCB4(uint64_t a1, void *a2)
{
  v3 = [a2 lowercaseString];
  v4 = [v3 rangeOfString:*(*(a1 + 32) + 104)] == 0x7FFFFFFFFFFFFFFFLL;

  return v4;
}

void sub_1000100DC(uint64_t a1, void *a2, uint64_t a3)
{
  v12 = a2;
  if ([v12 length])
  {
    v5 = [v12 substringToIndex:1];
    v6 = [v5 uppercaseString];

    v7 = +[NSCharacterSet letterCharacterSet];
    v8 = [v7 characterIsMember:{-[__CFString characterAtIndex:](v6, "characterAtIndex:", 0)}];

    if ((v8 & 1) == 0)
    {

      v6 = @"#";
    }

    v9 = [*(*(a1 + 32) + 40) objectForKey:v6];
    if (!v9)
    {
      v9 = [objc_allocWithZone(NSMutableArray) init];
      [*(*(a1 + 32) + 40) setObject:v9 forKey:v6];
    }

    v10 = [NSNumber numberWithInteger:a3];
    v11 = [NSArray arrayWithObjects:v12, v10, 0];
    [v9 addObject:v11];
  }
}

void sub_10001024C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = +[UIColor clearColor];
  [v1 setIndexBackgroundColor:v2];
}

id sub_10001042C(uint64_t a1)
{
  v10 = CGRectIntegral(*(a1 + 40));
  x = v10.origin.x;
  y = v10.origin.y;
  width = v10.size.width;
  height = v10.size.height;
  v6 = [*(a1 + 32) view];
  [v6 setFrame:{x, y, width, height}];

  v11 = CGRectIntegral(*(a1 + 40));
  v7 = *(*(a1 + 32) + 128);

  return [v7 setFrame:{v11.origin.x, v11.origin.y, v11.size.width, v11.size.height}];
}

void sub_100011B8C(uint64_t a1)
{
  v1 = [*(a1 + 32) _remoteViewControllerProxy];
  [v1 deactivate];
}

void sub_100011F48(_Unwind_Exception *a1)
{
  objc_destroyWeak(v1);
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_100011F70(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained dismiss];
}

void sub_100011FB0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained dismiss];
}

void sub_1000121A0(uint64_t a1)
{
  v1 = [*(a1 + 32) _remoteViewControllerProxy];
  [v1 deactivate];
  [v1 invalidate];
  dispatch_async(&_dispatch_main_q, &stru_100028E78);
}

void sub_10001252C(uint64_t a1)
{
  v3 = [*(a1 + 32) itemChooserController];
  v2 = [*(a1 + 32) items];
  [v3 showItemChooser:v2];
}

void sub_100012694(uint64_t a1)
{
  v2 = [*(a1 + 32) _remoteViewControllerProxy];
  [v2 deactivate];
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v3 = *(a1 + 40);
  AXPerformBlockOnMainThreadAfterDelay();
}

void sub_100012748(uint64_t a1)
{
  v6[0] = @"row";
  v2 = [NSNumber numberWithInteger:*(a1 + 40)];
  v7[0] = v2;
  v6[1] = @"activate";
  v3 = [NSNumber numberWithBool:*(a1 + 48)];
  v6[2] = @"searchTerm";
  v4 = *(a1 + 32);
  v7[1] = v3;
  v7[2] = v4;
  v5 = [NSDictionary dictionaryWithObjects:v7 forKeys:v6 count:3];
  UIAccessibilityPostNotification(0x7EAu, v5);
}

void sub_100012B0C(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = 138412546;
  v8 = v6;
  v9 = 2112;
  v10 = a2;
  _os_log_debug_impl(&_mh_execute_header, a3, OS_LOG_TYPE_DEBUG, "%@ - Did prepare for alert activation context : %@", &v7, 0x16u);
}

void sub_100012BC0(uint64_t a1, void *a2, NSObject *a3)
{
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = [a2 userInfo];
  v8 = 138412802;
  v9 = v6;
  v10 = 2112;
  v11 = a2;
  v12 = 2112;
  v13 = v7;
  _os_log_debug_impl(&_mh_execute_header, a3, OS_LOG_TYPE_DEBUG, "%@ - Did configure with alert configuration context : %@, userInfo : %@", &v8, 0x20u);
}

void sub_100012C90(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Could not decode settings data: %@", &v2, 0xCu);
}

uint64_t sub_100012D7C()
{
  dlerror();
  v0 = abort_report_np();
  return sub_100012DA0(v0);
}

void sub_100012DA0(void *a1, NSObject *a2)
{
  v3 = [a1 userInfo];
  sub_100002DDC();
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Unsupported context for custom command: %@", v4, 0xCu);
}

void sub_100013078(void *a1)
{
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  v4 = [a1 image];
  v5 = [a1 features];
  sub_100003C70();
  sub_100003CB0(&_mh_execute_header, v6, v7, "%@ - Before update : image : %@ features : %@", v8, v9, v10, v11, v12);
}

void sub_100013134(void *a1)
{
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  v4 = [a1 image];
  v5 = [a1 features];
  sub_100003C70();
  sub_100003CB0(&_mh_execute_header, v6, v7, "%@ - After update : image : %@ features : %@", v8, v9, v10, v11, v12);
}

void sub_1000131F0()
{
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  sub_100003C90(&_mh_execute_header, v2, v3, "%@ - image is nil", v4, v5, v6, v7, 2u);
}

void sub_10001327C()
{
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  sub_100003C90(&_mh_execute_header, v2, v3, "%@ - features not found", v4, v5, v6, v7, 2u);
}

void sub_100013308()
{
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  sub_100003C90(&_mh_execute_header, v2, v3, "%@ - detail data not found", v4, v5, v6, v7, 2u);
}

void sub_1000133E4()
{
  sub_100007E1C();
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  sub_100007DF4();
  sub_100007DE4();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_10001347C()
{
  sub_100007E1C();
  v1 = objc_opt_class();
  v2 = NSStringFromClass(v1);
  v8 = [v0 userInfo];
  sub_100007DE4();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x20u);
}

void sub_100013540()
{
  sub_100007E1C();
  v1 = v0;
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  v4 = [v1 visionResult];
  sub_100007E28();
  sub_100007E0C();
  _os_log_fault_impl(v5, v6, v7, v8, v9, 0x20u);
}

void sub_1000135FC()
{
  sub_100007E1C();
  v1 = v0;
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  v4 = [v1 elementInfo];
  sub_100007E28();
  sub_100007E0C();
  _os_log_fault_impl(v5, v6, v7, v8, v9, 0x20u);
}

void sub_1000136B8()
{
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  sub_100002DDC();
  sub_100007E0C();
  _os_log_fault_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_100013748()
{
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  sub_100002DDC();
  sub_100007E0C();
  _os_log_fault_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_1000137D8()
{
  sub_100007E1C();
  v1 = v0;
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  v4 = [v1 _photoLibraryURL];
  sub_100007E28();
  sub_100007DE4();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x20u);
}

void sub_100013894()
{
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  sub_100002DDC();
  sub_100007E0C();
  _os_log_fault_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_100013924()
{
  sub_100007E1C();
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  sub_100007DF4();
  sub_100007DE4();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_1000139BC()
{
  sub_100007E1C();
  v1 = objc_opt_class();
  v2 = NSStringFromClass(v1);
  v3 = *(v0 + 32);
  sub_100002DDC();
  sub_100007DE4();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x16u);
}

void sub_100013A64()
{
  sub_100007E1C();
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  sub_100007DF4();
  sub_100007DE4();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_100013AFC()
{
  sub_100007E1C();
  v1 = *(v0 + 32);
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  sub_100007DF4();
  sub_100007DE4();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x16u);
}

void sub_100013B98(uint64_t a1, double a2)
{
  v4 = *(a1 + 32);
  v5 = objc_opt_class();
  v11 = NSStringFromClass(v5);
  v12 = a2 - *(a1 + 72);
  sub_100007DE4();
  _os_log_debug_impl(v6, v7, v8, v9, v10, 0x16u);
}

void sub_100013C5C(void *a1)
{
  v1 = [a1 detailData];
  sub_100002DDC();
  sub_100007DE4();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_100013CE8(void *a1, NSObject *a2)
{
  v3 = [a1 description];
  v4 = 138412546;
  v5 = v3;
  v6 = 2112;
  v7 = @"VoiceOverImageExplorer.text.rotor";
  _os_log_fault_impl(&_mh_execute_header, a2, OS_LOG_TYPE_FAULT, "Unable to add element %@ with a feature key of: %@", &v4, 0x16u);
}