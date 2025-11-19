void sub_100002C94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100002CB4(uint64_t a1, void *a2)
{
  v3 = [a2 CGContext];
  CGContextScaleCTM(v3, 1.0, -1.0);
  CGContextTranslateCTM(v3, 0.0, -*(a1 + 48));
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = [*(a1 + 32) CGImage];
  v7 = 0;
  v8 = 0;
  v9 = v4;
  v10 = v5;

  CGContextDrawImage(v3, *&v7, v6);
}

void sub_100002F88(id a1)
{
  qword_1000D4988 = [NSSet setWithObjects:UIActivityTypeAirDrop, UIActivityTypeCopyToPasteboard, UIActivityTypeMail, UIActivityTypeMessage, UIActivityTypeSaveToCameraRoll, @"com.apple.DocumentManagerUICore.SaveToFiles", 0];

  _objc_release_x1();
}

void sub_100003020(id a1)
{
  qword_1000D4998 = [NSSet setWithObjects:@"ph.telegra.Telegraph.Share", @"com.apple.sharing.quick-note", @"app.swiftgram.ios.Share", 0];

  _objc_release_x1();
}

void sub_100003088(uint64_t a1)
{
  sub_1000030E0();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("LPLinkMetadata");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_1000D49A0 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    sub_100073D44();
    sub_1000030E0();
  }
}

void sub_1000030E0()
{
  v1[0] = 0;
  if (!qword_1000D49A8)
  {
    v1[1] = _NSConcreteStackBlock;
    v1[2] = 3221225472;
    v1[3] = sub_1000031DC;
    v1[4] = &unk_1000B9FE0;
    v1[5] = v1;
    v2 = off_1000B9FC8;
    v3 = 0;
    qword_1000D49A8 = _sl_dlopen();
  }

  v0 = v1[0];
  if (!qword_1000D49A8)
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

uint64_t sub_1000031DC()
{
  result = _sl_dlopen();
  qword_1000D49A8 = result;
  return result;
}

Class sub_100003250(uint64_t a1)
{
  sub_1000030E0();
  result = objc_getClass("LPFileMetadata");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_1000D49B0 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = sub_100073D6C();
    return sub_1000032A8(v3);
  }

  return result;
}

Class sub_1000032A8(uint64_t a1)
{
  sub_1000030E0();
  result = objc_getClass("LPImage");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_1000D49B8 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = sub_100073D94();
    return [(UIImage *)v3 _sss_imageFromScreenshot:v4, v5];
  }

  return result;
}

void sub_100003584(double *a1, void *a2)
{
  v10 = a2;
  v3 = -a1[5];
  v4 = -a1[6];
  v5 = a1[9];
  v6 = a1[10];
  v7 = SSCGImageBackedImageFromImage();
  [v7 drawInRect:{v3, v4, v5, v6}];
  if (a1[11] > 0.0 && (_os_feature_enabled_impl() & 1) == 0)
  {
    CGContextSaveGState([v10 CGContext]);
    v8 = +[UIColor whiteColor];
    v9 = [v8 colorWithAlphaComponent:a1[11]];
    [v9 set];

    v12.size.width = a1[12];
    v12.size.height = a1[13];
    v12.origin.x = 0.0;
    v12.origin.y = 0.0;
    UIRectFillUsingBlendMode(v12, kCGBlendModeNormal);
    CGContextRestoreGState([v10 CGContext]);
  }
}

void sub_100003A88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100003C08(uint64_t a1)
{
  sub_100003C60();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("LPLinkMetadata");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_1000D49C0 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    sub_100073D44();
    sub_100003C60();
  }
}

void sub_100003C60()
{
  v1[0] = 0;
  if (!qword_1000D49C8)
  {
    v1[1] = _NSConcreteStackBlock;
    v1[2] = 3221225472;
    v1[3] = sub_100003D5C;
    v1[4] = &unk_1000B9FE0;
    v1[5] = v1;
    v2 = off_1000BA028;
    v3 = 0;
    qword_1000D49C8 = _sl_dlopen();
  }

  v0 = v1[0];
  if (!qword_1000D49C8)
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

uint64_t sub_100003D5C()
{
  result = _sl_dlopen();
  qword_1000D49C8 = result;
  return result;
}

Class sub_100003DD0(uint64_t a1)
{
  sub_100003C60();
  result = objc_getClass("LPFileMetadata");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_1000D49D0 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = sub_100073D6C();
    return sub_100003E28(v3);
  }

  return result;
}

Class sub_100003E28(uint64_t a1)
{
  sub_100003C60();
  result = objc_getClass("LPImage");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_1000D49D8 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = sub_100073D94();
    return +[(SSSPathView *)v3];
  }

  return result;
}

id sub_1000054E8(uint64_t a1)
{
  v2 = [*(a1 + 32) currentCropController];
  [v2 setCropRect:{*(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64)}];

  v3 = *(a1 + 32);

  return [v3 layoutIfNeeded];
}

id sub_100007740(uint64_t a1)
{
  [*(a1 + 32) setNeedsLayout];
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1000077D8;
  v3[3] = &unk_1000BA0B8;
  v3[4] = *(a1 + 32);
  v4 = *(a1 + 40);
  return [UIView animateWithDuration:v3 animations:0.25];
}

id sub_1000077D8(uint64_t a1)
{
  [*(a1 + 32) setIsVICardPresented:*(a1 + 40)];
  v2 = *(a1 + 32);

  return [v2 layoutIfNeeded];
}

void sub_10000839C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class sub_100009F30(uint64_t a1)
{
  v4[0] = 0;
  if (!qword_1000D49E8)
  {
    v4[1] = _NSConcreteStackBlock;
    v4[2] = 3221225472;
    v4[3] = sub_10000A074;
    v4[4] = &unk_1000B9FE0;
    v4[5] = v4;
    v5 = off_1000BA0D8;
    v6 = 0;
    qword_1000D49E8 = _sl_dlopen();
    v2 = v4[0];
    if (qword_1000D49E8)
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
  result = objc_getClass("AKInkAnnotation");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_100073E00();
  }

  qword_1000D49E0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_10000A074()
{
  result = _sl_dlopen();
  qword_1000D49E8 = result;
  return result;
}

void sub_10000A0E8(void *a1)
{
  v1 = a1;
  v2 = +[SSSApplication sharedSSSApplication];
  v3 = [v2 sssAppDelegate];
  v4 = [v3 viewControllerManager];
  v5 = [v4 rootViewController];

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10000A1E0;
  v8[3] = &unk_1000BA0F8;
  v9 = v5;
  v10 = v1;
  v6 = v1;
  v7 = v5;
  [v7 fullscreenifyWithCompletion:v8];
}

void sub_10000A1E0(uint64_t a1)
{
  v2 = [*(a1 + 32) view];
  v3 = [NSMutableArray arrayWithObject:v2];
  if ([v3 count])
  {
    while (1)
    {
      v4 = [v3 firstObject];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      [v3 removeObjectAtIndex:0];
      v5 = [v4 subviews];
      [v3 addObjectsFromArray:v5];

      if (![v3 count])
      {
        goto LABEL_4;
      }
    }
  }

  else
  {
LABEL_4:
    v4 = 0;
  }

  if (v4)
  {
    if ((+[RPTTestRunner isRecapAvailable]& 1) != 0)
    {
      v6 = [*(a1 + 32) view];
      v7 = sub_10000A650(v6);

      if (v7)
      {
        v8 = [v7 topBar];
        RPTGetBoundsForView();
        v10 = v9;
        v12 = v11;
        [v8 frame];
        MaxY = CGRectGetMaxY(v44);
        v14 = [RPTScrollViewTestParameters alloc];
        v35 = _NSConcreteStackBlock;
        v36 = 3221225472;
        v37 = sub_10000A718;
        v38 = &unk_1000BA0F8;
        v39 = *(a1 + 32);
        v40 = *(a1 + 40);
        v15 = [v14 initWithTestName:@"GlitchFreeHero" scrollView:v4 completionHandler:&v35];
        [v15 setDirection:{2, v35, v36, v37, v38}];
        [v15 setPreventSheetDismissal:1];
        [v15 setShouldFlick:0];
        [v15 setScrollingBounds:{v10, MaxY, v12, 10.0}];
        [RPTTestRunner runTestWithParameters:v15];
      }

      else
      {
        v27 = os_log_create("com.apple.screenshotservices", "XPC");
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          sub_100073E28(v27, v28, v29, v30, v31, v32, v33, v34);
        }

        (*(*(a1 + 40) + 16))();
      }
    }

    else
    {
      v24 = +[UIApplication sharedApplication];
      [v24 startedTest:@"GlitchFreeHero"];

      [v4 contentSize];
      v26 = v25;
      v41[0] = _NSConcreteStackBlock;
      v41[1] = 3221225472;
      v41[2] = sub_10000A574;
      v41[3] = &unk_1000BA0F8;
      v42 = *(a1 + 32);
      v43 = *(a1 + 40);
      [v4 _simulateScrollWithTranslation:0 duration:0 willBeginDragging:0 didEndDragging:v41 willBeginDecelerating:v26 didEndDecelerating:{0.0, 0.75}];
    }
  }

  else
  {
    v16 = os_log_create("com.apple.screenshotservices", "XPC");
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_100073E60(v16, v17, v18, v19, v20, v21, v22, v23);
    }

    (*(*(a1 + 40) + 16))();
  }
}

void sub_10000A574(uint64_t a1)
{
  v2 = +[UIApplication sharedApplication];
  [v2 finishedTest:@"GlitchFreeHero"];

  v3 = *(a1 + 40);
  v4 = *(a1 + 32);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10000AE84;
  v7[3] = &unk_1000BA0F8;
  v8 = v4;
  v9 = v3;
  v5 = v4;
  v6 = v9;
  [v5 pipifyWithCompletion:v7];
}

id sub_10000A650(uint64_t a1)
{
  v1 = [NSMutableArray arrayWithObject:a1];
  if ([v1 count])
  {
    while (1)
    {
      v2 = [v1 firstObject];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      [v1 removeObjectAtIndex:0];
      v3 = [v2 subviews];
      [v1 addObjectsFromArray:v3];

      if (![v1 count])
      {
        goto LABEL_4;
      }
    }
  }

  else
  {
LABEL_4:
    v2 = 0;
  }

  return v2;
}

void sub_10000A718(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10000A7BC;
  v3[3] = &unk_1000BA0F8;
  v4 = v2;
  v5 = *(a1 + 40);
  [v4 pipifyWithCompletion:v3];
}

void sub_10000A7C8(void *a1)
{
  v1 = a1;
  v2 = +[SSSApplication sharedSSSApplication];
  v3 = [v2 sssAppDelegate];
  v4 = [v3 viewControllerManager];
  v5 = [v4 rootViewController];

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10000A8C0;
  v8[3] = &unk_1000BA0F8;
  v9 = v5;
  v10 = v1;
  v6 = v1;
  v7 = v5;
  [v7 fullscreenifyWithCompletion:v8];
}

void sub_10000A8C0(uint64_t a1)
{
  v2 = [*(a1 + 32) view];
  v3 = sub_10000A650(v2);

  if (v3)
  {
    v4 = [v3 currentScreenshot];
    v5 = [v3 screenshotViewForScreenshot:v4];

    [v5 enterCrop];
    [v5 bounds];
    [v5 convertRect:0 toView:?];
    v10 = v6;
    v11 = v7;
    v12 = v8;
    v13 = v9;
    if (v8 >= v9)
    {
      v14 = v9;
    }

    else
    {
      v14 = v8;
    }

    MidX = CGRectGetMidX(*&v6);
    v48.origin.x = v10;
    v48.origin.y = v11;
    v48.size.width = v12;
    v48.size.height = v13;
    v49.origin.y = CGRectGetMidY(v48);
    y = v49.origin.y;
    v49.size.width = 0.0;
    v49.size.height = 0.0;
    v49.origin.x = MidX;
    v50 = CGRectInset(v49, v14 * -0.25, v14 * -0.25);
    x = v50.origin.x;
    v16 = v50.origin.y;
    width = v50.size.width;
    height = v50.size.height;
    v50.origin.x = v10;
    v50.origin.y = v11;
    v50.size.width = v12;
    v50.size.height = v13;
    MaxX = CGRectGetMaxX(v50);
    v51.origin.x = v10;
    v51.origin.y = v11;
    v51.size.width = v12;
    v51.size.height = v13;
    MaxY = CGRectGetMaxY(v51);
    v52.origin.x = x;
    v52.origin.y = v16;
    v52.size.width = width;
    v52.size.height = height;
    v20 = CGRectGetMaxX(v52);
    v53.origin.x = x;
    v53.origin.y = v16;
    v53.size.width = width;
    v53.size.height = height;
    v21 = CGRectGetMaxY(v53);
    v46[0] = _NSConcreteStackBlock;
    v46[1] = 3221225472;
    v46[2] = sub_10000ACB0;
    v46[3] = &unk_1000BA118;
    *&v46[4] = v10;
    *&v46[5] = v11;
    *&v46[6] = x;
    *&v46[7] = v16;
    *&v46[8] = MaxX;
    *&v46[9] = MaxY;
    *&v46[10] = v20;
    *&v46[11] = v21;
    v22 = [[RPTBlockInteraction alloc] initWithActions:v46];
    v41[0] = _NSConcreteStackBlock;
    v41[1] = 3221225472;
    v41[2] = sub_10000AD58;
    v41[3] = &unk_1000BA138;
    *&v41[4] = v20 + (MidX - v20) * 0.5;
    *&v41[5] = v21 + y - v21;
    v42 = x + (MidX - x) * 0.5;
    v43 = v16 + (y - v16) * 0.5;
    v44 = v42 + -100.0;
    v45 = v43 + -100.0;
    v23 = [[RPTBlockInteraction alloc] initWithActions:v41];
    v24 = [RPTInteractionTestParameters alloc];
    v47[0] = v22;
    v47[1] = v23;
    v25 = [NSArray arrayWithObjects:v47 count:2];
    v38[0] = _NSConcreteStackBlock;
    v38[1] = 3221225472;
    v38[2] = sub_10000ADD4;
    v38[3] = &unk_1000BA0F8;
    v39 = *(a1 + 32);
    v40 = *(a1 + 40);
    v26 = [v24 initWithTestName:@"CropAndZoom" interactions:v25 completionHandler:v38];

    [RPTTestRunner runTestWithParameters:v26];
  }

  else
  {
    v27 = os_log_create("com.apple.screenshotservices", "XPC");
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      sub_100073E98(v27, v28, v29, v30, v31, v32, v33, v34);
    }

    (*(*(a1 + 40) + 16))();
  }
}

void sub_10000ACB0(double *a1, void *a2)
{
  v3 = a1[4];
  v4 = a1[5];
  v5 = a2;
  [v5 pointerOrFingerTapDown:{v3, v4}];
  [v5 pointerOrFingerMoveToPoint:a1[6] duration:{a1[7], 0.6}];
  [v5 pointerOrFingerTapUp:{a1[6], a1[7]}];
  [v5 pointerOrFingerTapDown:{a1[8], a1[9]}];
  [v5 pointerOrFingerMoveToPoint:a1[10] duration:{a1[11], 0.6}];
  [v5 pointerOrFingerTapUp:{a1[10], a1[11]}];
}

void sub_10000AD58(double *a1, void *a2)
{
  v3 = a1[4];
  v4 = a1[5];
  v5 = a2;
  [v5 pointerOrFingerTapDown:{v3, v4}];
  [v5 pointerOrFingerDragWithStartPoint:0 mask:0 endPoint:a1[6] mask:a1[7] duration:{a1[8], a1[9], 0.6}];
}

void sub_10000ADD4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10000AE78;
  v3[3] = &unk_1000BA0F8;
  v4 = v2;
  v5 = *(a1 + 40);
  [v4 pipifyWithCompletion:v3];
}

void sub_10000AE90(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

id sub_10000B3C4(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!v2[1])
  {
    v3 = objc_alloc_init(SSSCropOverlayView);
    v4 = *(a1 + 32);
    v5 = *(v4 + 8);
    *(v4 + 8) = v3;

    [*(*(a1 + 32) + 8) setLineGrabberAlpha:*(*(a1 + 32) + 360)];
    [*(*(a1 + 32) + 8) setCornerGrabberAlpha:*(*(a1 + 32) + 344)];
    [*(*(a1 + 32) + 8) setLineAlpha:*(*(a1 + 32) + 352)];
    [*(a1 + 32) addSubview:*(*(a1 + 32) + 8)];
    v2 = *(a1 + 32);
  }

  if (!v2[6])
  {
    v6 = objc_alloc_init(SSSUncroppedOccludingView);
    v7 = *(a1 + 32);
    v8 = *(v7 + 48);
    *(v7 + 48) = v6;

    [*(a1 + 32) insertSubview:*(*(a1 + 32) + 72) belowSubview:*(*(a1 + 32) + 8)];
    [*(*(a1 + 32) + 72) addSubview:*(*(a1 + 32) + 48)];
    v2 = *(a1 + 32);
  }

  if (!v2[14])
  {
    v9 = [[UILongPressGestureRecognizer alloc] initWithTarget:*(a1 + 32) action:"_handleOverlayViewResize:"];
    v10 = *(a1 + 32);
    v11 = *(v10 + 112);
    *(v10 + 112) = v9;

    [*(*(a1 + 32) + 112) setMinimumPressDuration:0.0];
    [*(*(a1 + 32) + 8) addGestureRecognizer:*(*(a1 + 32) + 112)];
  }

  result = _SSScreenshotsRedesign2025Enabled();
  if (result && *(a1 + 40) == 1)
  {
    v13 = *(*(a1 + 32) + 224);
    y = CGPointZero.y;

    return [v13 setContentOffset:{CGPointZero.x, y}];
  }

  return result;
}

id sub_10000D058(uint64_t a1)
{
  [*(a1 + 32) setNeedsLayout];
  v2 = *(a1 + 32);
  v3 = v2[28];
  [v2 _contentInsetForUnitRect:{*(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64)}];
  [v3 setContentInset:?];
  [*(*(a1 + 32) + 224) zoomToRect:0 animated:{*(a1 + 72), *(a1 + 80), *(a1 + 88), *(a1 + 96)}];
  [*(a1 + 32) _updateLastScrollViewUnitRect];
  v4 = *(a1 + 32);

  return [v4 layoutIfNeeded];
}

id sub_10000D0E0(uint64_t a1)
{
  [*(a1 + 32) _updateLastScrollViewUnitRect];
  [*(a1 + 32) _updateForScrollViewNonLiveUserEvent];
  v2 = *(a1 + 32);

  return [v2 setNeedsLayout];
}

id *sub_10000EC0C(id *result, int a2)
{
  if (a2)
  {
    if (*(result + 40) == 1)
    {
      return [result[4] _setWallpaperBackgroundStyleEnabled:1];
    }
  }

  return result;
}

void sub_10000F490(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1;
  *a2 = xmmword_10008F370;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0x4010000000000000;
  v6 = v3;
  [v3 displayCornerRadius];
  if (v4 != _UITraitCollectionDisplayCornerRadiusUnspecified)
  {
    [v6 displayCornerRadius];
    if (v5 != 0.0)
    {
      *a2 = xmmword_10008F380;
      *(a2 + 16) = xmmword_10008F390;
      *(a2 + 32) = 0x4010000000000000;
    }
  }
}

double sub_10000F550()
{
  v0 = _SSScreenshotsRedesign2025Enabled();
  result = 0.0;
  if (v0)
  {
    return 24.0;
  }

  return result;
}

void sub_10000FEE8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = +[BSActionResponse response];
  [v1 sendResponse:v2];
}

void sub_100010DA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100010DC8(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100010E80;
  v5[3] = &unk_1000BA208;
  objc_copyWeak(&v7, (a1 + 32));
  v6 = v3;
  v4 = v3;
  dispatch_async(&_dispatch_main_q, v5);

  objc_destroyWeak(&v7);
}

void sub_100010E80(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    [WeakRetained[8] setImage:*(a1 + 32)];
    if ((_os_feature_enabled_impl() & 1) == 0)
    {
      v2 = [WeakRetained delegate];
      [v2 imageViewDidLoadImage:WeakRetained];
    }

    [WeakRetained analyzeCurrentImageIfNecessary];
    [objc_opt_class() _saveImageForSysdiagnose:*(a1 + 32)];
  }
}

void sub_100011634(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, id a28)
{
  objc_destroyWeak(&a28);
  objc_destroyWeak((v28 + 40));
  objc_destroyWeak((v28 + 32));
  objc_destroyWeak((v29 - 120));
  objc_destroyWeak((v29 - 112));
  _Unwind_Resume(a1);
}

void sub_10001167C(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = objc_loadWeakRetained((a1 + 40));
  v6 = [WeakRetained currentInProcessRequestID];
  if (v6 == [v3 analysisRequestID])
  {
    [WeakRetained setCurrentInProcessRequestID:0];
  }

  if (WeakRetained)
  {
    if (v5)
    {
      v7 = [WeakRetained screenshot];

      if (v7 == v5)
      {
        if ((*(a1 + 48) & 1) == 0)
        {
          v8 = os_log_create("com.apple.screenshotservices", "ShareSheet");
          if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Did complete analysis", buf, 2u);
          }
        }

        v9 = [WeakRetained imageInteraction];
        [v9 setAnalysis:v3];

        [WeakRetained setInteractionMode:{objc_msgSend(WeakRetained, "interactionMode")}];
        v10 = [WeakRetained delegate];
        v11 = [WeakRetained imageInteraction];
        [v10 imageViewDidUpdateInteraction:v11 withAnalysis:v3];
      }
    }
  }

  if ((*(a1 + 48) & 1) == 0)
  {
    v12 = _SSSignpostLog();
    if (os_signpost_enabled(v12))
    {
      *v15 = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v12, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "AnalyzeScreenshot", "", v15, 2u);
    }

    v13 = os_log_create("com.apple.screenshotservices", "Performance");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "END AnalyzeScreenshot", v14, 2u);
    }
  }
}

void sub_1000118B0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = os_log_create("com.apple.screenshotservices", "ShareSheet");
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Did begin analysis of new image", v11, 2u);
    }

    if ([*(a1 + 32) _ss_vi2Enabled])
    {
      v6 = 64;
    }

    else
    {
      v6 = -65;
    }

    v5 = [[VKCImageAnalyzerRequest alloc] initWithImage:v3 orientation:0 requestType:v6];
    [v5 setImageSource:1];
    [v5 set_wantsFormFieldDetection:0];
    v7 = objc_alloc_init(VKCImageAnalyzerRequestVIConfiguration);
    v8 = [NSNumber numberWithBool:_SSVisualLookUpInScreenshotsEnabled()];
    [v7 setIsScreenshotsVLUAuthorized:v8];

    [v5 setViConfiguration:v7];
    WeakRetained = objc_loadWeakRetained((a1 + 56));
    v10 = [WeakRetained currentInProcessRequestID];
    if (v10 >= 1)
    {
      [*(a1 + 40) cancelRequestID:v10];
      [WeakRetained setCurrentInProcessRequestID:0];
    }

    [*(a1 + 40) processRequest:v5 progressHandler:0 completionHandler:*(a1 + 48)];
    [WeakRetained setCurrentInProcessRequestID:{-[NSObject requestID](v5, "requestID")}];
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_100073ED0(v5);
  }
}

void sub_100011E34(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained updateInteractionHighlightStatusIfNecessary];
}

void sub_1000123BC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1000123E0(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000124AC;
  block[3] = &unk_1000BA320;
  objc_copyWeak(&v8, (a1 + 40));
  v6 = v3;
  v7 = *(a1 + 32);
  v4 = v3;
  dispatch_async(&_dispatch_main_q, block);

  objc_destroyWeak(&v8);
}

uint64_t sub_1000124AC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  v6 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained[14] setImage:*(a1 + 32)];
    v3 = v6;
  }

  v4 = *(a1 + 40);
  if (v4)
  {
    (*(v4 + 16))(v4, v3);
  }

  return _objc_release_x1();
}

void sub_100012750(uint64_t a1)
{
  v2 = [*(a1 + 40) _createDirectoryForSysdiagnoseIfNecessary];
  if (!v2)
  {
    v4 = *(a1 + 32);
    v3 = (a1 + 32);
    v5 = [v4 ss_isHDRImage];
    v6 = [*v3 ss_ioSurfaceImageData];
    if (v6)
    {
      goto LABEL_7;
    }

    v7 = *v3;
    if (v5)
    {
      [v7 ss_heicDataWithImageDescription:0];
    }

    else
    {
      [v7 ss_pngDataWithImageDescription:0];
    }
    v6 = ;
    if (v6)
    {
LABEL_7:
      if (v5)
      {
        v8 = @"Screenshot.heic";
      }

      else
      {
        v8 = @"Screenshot.png";
      }

      v9 = [@"/private/var/db/sysdiagnose/com.apple.ScreenshotServicesService/" stringByAppendingString:v8];
      v12 = 0;
      v10 = [v6 writeToFile:v9 options:1 error:&v12];
      v2 = v12;
      if ((v10 & 1) == 0)
      {
        v11 = os_log_create("com.apple.screenshotservices", "PhotoLibrary");
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          sub_100073F8C(v9, v2, v11);
        }
      }
    }

    else
    {
      v6 = os_log_create("com.apple.screenshotservices", "PhotoLibrary");
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_100074014(v3, v6);
      }

      v2 = 0;
    }
  }
}

id sub_100013170(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setEarlyVIAnalysis:a2];
  v3 = os_log_create("com.apple.screenshotservices", "ScreenshotManager");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Environment VI Analysis Complete", buf, 2u);
  }

  v4 = _SSSignpostLog();
  if (os_signpost_enabled(v4))
  {
    *v8 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v4, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "AnalyzeScreenshot", "", v8, 2u);
  }

  v5 = os_log_create("com.apple.screenshotservices", "Performance");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "END AnalyzeScreenshot", v7, 2u);
  }

  return [*(a1 + 40) hash];
}

void sub_1000143B8(uint64_t a1)
{
  v2 = os_log_create("com.apple.screenshotservices", "ScreenshotManager");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) environmentDescription];
    v4 = [v3 loggableDescription];
    *buf = 138412290;
    v9 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Finished saving edits to screenshot with environment description %@", buf, 0xCu);
  }

  objc_initWeak(buf, *(a1 + 40));
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100014530;
  v5[3] = &unk_1000BA208;
  objc_copyWeak(&v7, buf);
  v6 = *(a1 + 32);
  dispatch_async(&_dispatch_main_q, v5);

  objc_destroyWeak(&v7);
  objc_destroyWeak(buf);
}

void sub_100014530(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v4 = *(a1 + 32);
    v3 = (a1 + 32);
    [v4 wasJustSavedForMode:0];
    v5 = [*v3 environmentDescription];
    v6 = [v5 identifier];

    v7 = [WeakRetained[6] indexOfObject:v6];
    if (v7 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v8 = os_log_create("com.apple.screenshotservices", "ScreenshotManager");
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_1000742E4(v3);
      }
    }

    else
    {
      [WeakRetained[6] removeObjectAtIndex:v7];
    }

    [WeakRetained _reevaluateTrackingForScreenshotWithEnvironmentDescriptionIdentifier:v6];
  }
}

void sub_100014614(uint64_t a1)
{
  v2 = os_log_create("com.apple.screenshotservices", "ScreenshotManager");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) environmentDescription];
    v4 = [v3 loggableDescription];
    *buf = 138412290;
    v9 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Finished saving edits to pdf with environment description %@", buf, 0xCu);
  }

  objc_initWeak(buf, *(a1 + 40));
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10001478C;
  v5[3] = &unk_1000BA208;
  objc_copyWeak(&v7, buf);
  v6 = *(a1 + 32);
  dispatch_async(&_dispatch_main_q, v5);

  objc_destroyWeak(&v7);
  objc_destroyWeak(buf);
}

void sub_10001478C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v4 = *(a1 + 32);
    v3 = (a1 + 32);
    [v4 wasJustSavedForMode:1];
    v5 = [*v3 environmentDescription];
    v6 = [v5 identifier];

    v7 = [WeakRetained[6] indexOfObject:v6];
    if (v7 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v8 = os_log_create("com.apple.screenshotservices", "ScreenshotManager");
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_1000742E4(v3);
      }
    }

    else
    {
      [WeakRetained[6] removeObjectAtIndex:v7];
    }

    [WeakRetained _reevaluateTrackingForScreenshotWithEnvironmentDescriptionIdentifier:v6];
  }
}

void sub_1000148FC(id a1)
{
  qword_1000D49F0 = dispatch_queue_create("com.apple.screenshotservices.screenshotManagerTemporarySavingQueue", &_dispatch_queue_attr_concurrent);

  _objc_release_x1();
}

void sub_100014A14(uint64_t a1)
{
  v2 = dispatch_group_create();
  v22 = +[NSMutableArray array];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v19 = a1;
  obj = *(a1 + 32);
  v3 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (v3)
  {
    v4 = v3;
    v21 = *v33;
    height = CGSizeZero.height;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v33 != v21)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v32 + 1) + 8 * i);
        v8 = [v7 imageGenerator];
        v9 = [v8 isGeneratedImageHDR:v7];

        if ((_SSHDRCaptureEnabled() | v9))
        {
          v10 = UTTypeHEIC;
        }

        else
        {
          v10 = UTTypePNG;
        }

        v11 = v10;
        v12 = [v7 imageGenerator];
        v13 = [v12 generateImageDataForScreenshot:v7 shouldApplyCrop:1 allowHDR:v9 targetSize:v11 imageType:{CGSizeZero.width, height}];

        dispatch_group_enter(v2);
        v14 = +[SSScreenshotAssetManager sharedAssetManager];
        if (v13)
        {
          v29[0] = _NSConcreteStackBlock;
          v29[1] = 3221225472;
          v29[2] = sub_100014DB8;
          v29[3] = &unk_1000BA458;
          v30 = v22;
          v31 = v2;
          [v14 saveImageDataToTemporaryLocation:v13 persistable:v7 completionHandler:v29];
          v16 = &v31;
          v15 = &v30;
        }

        else
        {
          v26[0] = _NSConcreteStackBlock;
          v26[1] = 3221225472;
          v26[2] = sub_100014EF0;
          v26[3] = &unk_1000BA4A8;
          v27 = v22;
          v28 = v2;
          [v14 recordPersistableToTemporaryLocation:v7 withCompletionBlock:v26];
          v16 = &v28;
          v15 = &v27;
        }
      }

      v4 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
    }

    while (v4);
  }

  dispatch_group_wait(v2, 0xFFFFFFFFFFFFFFFFLL);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100015014;
  block[3] = &unk_1000BA280;
  v17 = *(v19 + 40);
  v24 = v22;
  v25 = v17;
  v18 = v22;
  dispatch_async(&_dispatch_main_q, block);
}

void sub_100014DB8(uint64_t a1, void *a2, void *a3)
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100014EA4;
  v7[3] = &unk_1000BA430;
  v8 = a2;
  v9 = a3;
  v10 = *(a1 + 32);
  v11 = *(a1 + 40);
  v5 = v9;
  v6 = v8;
  dispatch_async(&_dispatch_main_q, v7);
}

void sub_100014EA4(uint64_t a1)
{
  if (*(a1 + 32) && !*(a1 + 40))
  {
    [*(a1 + 48) addObject:?];
  }

  v2 = *(a1 + 56);

  dispatch_group_leave(v2);
}

void sub_100014EF0(uint64_t a1, char a2, void *a3)
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100014FC4;
  v5[3] = &unk_1000BA480;
  v9 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v4 = v6;
  dispatch_async(&_dispatch_main_q, v5);
}

void sub_100014FC4(uint64_t a1)
{
  if (*(a1 + 56) == 1 && *(a1 + 32))
  {
    [*(a1 + 40) addObject:?];
  }

  v2 = *(a1 + 48);

  dispatch_group_leave(v2);
}

void sub_100015414(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 40) containsObject:*(a1 + 40)];
  v3 = os_log_create("com.apple.screenshotservices", "ScreenshotManager");
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (v2)
  {
    if (v4)
    {
      v5 = *(a1 + 48);
      v6 = [v5 environmentDescription];
      v7 = [v6 loggableDescription];
      v11 = 134218242;
      v12 = v5;
      v13 = 2112;
      v14 = v7;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Perform cleanup for screenshot: %p, with environment description: %@", &v11, 0x16u);
    }

    [*(*(a1 + 32) + 40) removeObject:*(a1 + 40)];
    [*(a1 + 32) _reevaluateTrackingForScreenshotWithEnvironmentDescriptionIdentifier:*(a1 + 40)];
  }

  else
  {
    if (v4)
    {
      v8 = *(a1 + 48);
      v9 = [v8 environmentDescription];
      v10 = [v9 loggableDescription];
      v11 = 134218242;
      v12 = v8;
      v13 = 2112;
      v14 = v10;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Cleanup already performed for screenshot: %p, with environment description: %@", &v11, 0x16u);
    }
  }
}

id sub_1000155B4(void *a1)
{
  result = [*(a1[4] + 40) containsObject:a1[5]];
  if (result)
  {
    v3 = os_log_create("com.apple.screenshotservices", "ScreenshotManager");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v5 = a1[5];
      v4 = a1[6];
      v6 = 134218242;
      v7 = v4;
      v8 = 2112;
      v9 = v5;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "FORCE CLEANUP: timeout reached for deletion of screenshot: %p, with environment description: %@", &v6, 0x16u);
    }

    return (*(a1[7] + 16))();
  }

  return result;
}

void sub_100015694(uint64_t a1)
{
  v2 = +[SSScreenshotAssetManager sharedAssetManager];
  v3 = *(a1 + 64);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10001578C;
  v9[3] = &unk_1000BA548;
  v4 = *(a1 + 32);
  v5 = *(a1 + 56);
  v6 = *(a1 + 40);
  *&v7 = *(a1 + 48);
  *(&v7 + 1) = v5;
  *&v8 = v4;
  *(&v8 + 1) = v6;
  v10 = v8;
  v11 = v7;
  [v2 removePersistable:v4 deleteOptions:v3 withCompletionBlock:v9];
}

void sub_10001578C(uint64_t a1)
{
  v2 = os_log_create("com.apple.screenshotservices", "ScreenshotManager");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = [v3 environmentDescription];
    v5 = [v4 loggableDescription];
    *buf = 134218242;
    v15 = v3;
    v16 = 2112;
    v17 = v5;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Finished removing screenshot: %p, with environment description %@", buf, 0x16u);
  }

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10001592C;
  v11[3] = &unk_1000BA520;
  v6 = *(a1 + 56);
  v7 = *(a1 + 40);
  v8 = *(a1 + 32);
  *&v9 = *(a1 + 48);
  *(&v9 + 1) = v6;
  *&v10 = v7;
  *(&v10 + 1) = v8;
  v12 = v10;
  v13 = v9;
  dispatch_async(&_dispatch_main_q, v11);
}

id sub_10001592C(void *a1)
{
  (*(a1[7] + 16))();
  v2 = os_log_create("com.apple.screenshotservices", "ScreenshotManager");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1[4];
    v4 = a1[5];
    v6 = 134218240;
    v7 = v3;
    v8 = 2048;
    v9 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Release image provider: %p, for screenshot: %p", &v6, 0x16u);
  }

  return [*(a1[6] + 64) removeObject:a1[4]];
}

void sub_100015B18(uint64_t a1)
{
  v2 = +[SSScreenshotAssetManager sharedAssetManager];
  [v2 removePersistable:*(a1 + 32) deleteOptions:*(a1 + 40) withCompletionBlock:&stru_1000BA590];
}

uint64_t sub_100016864(uint64_t a1)
{
  qword_1000D4A00 = objc_alloc_init(*(a1 + 32));

  return _objc_release_x1();
}

void sub_1000169F4(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void sub_100017A04(uint64_t a1)
{
  [*(a1 + 32) _addScreenshotWithPDF:0 visibleRect:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  v2 = *(a1 + 40);
  v3 = *(a1 + 48) - 2;
  v4 = [*(a1 + 32) debugView];
  v5 = v4;
  if (v2 == v3)
  {
    [v4 resetScrollOffset];
  }

  else
  {
    [v4 advanceScrollOffset];
  }
}

void sub_1000181C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class sub_100018C2C(uint64_t a1)
{
  v4[0] = 0;
  if (!qword_1000D4A18)
  {
    v4[1] = _NSConcreteStackBlock;
    v4[2] = 3221225472;
    v4[3] = sub_100018D70;
    v4[4] = &unk_1000B9FE0;
    v4[5] = v4;
    v5 = off_1000BA5F8;
    v6 = 0;
    qword_1000D4A18 = _sl_dlopen();
    v2 = v4[0];
    if (qword_1000D4A18)
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
  result = objc_getClass("WKWebView");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_100074434();
  }

  qword_1000D4A10 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_100018D70()
{
  result = _sl_dlopen();
  qword_1000D4A18 = result;
  return result;
}

void sub_100019750(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10001976C(uint64_t a1, uint64_t a2, int a3)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained && a3)
  {
    v5 = WeakRetained;
    [WeakRetained reportStatistics];
    WeakRetained = v5;
  }
}

void sub_100019CC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100019D00(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 selectedOptionIndex];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setShareFormatOption:v4];

  [v3 selectedOptionIndex];
  _SSSetLastUsedScreenshotShareFormatOption();
  v6 = objc_loadWeakRetained((a1 + 32));
  [v6 didChangeShareOptions];
}

void sub_10001A058(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10001A098(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 selectedOptionIndex];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setShareAsOption:v4];

  [v3 selectedOptionIndex];
  _SSSetLastUsedFullPageScreenshotShareAsOption();
  v6 = objc_loadWeakRetained((a1 + 32));
  [v6 didChangeShareOptions];
}

void sub_10001A3D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10001A400(uint64_t a1, void *a2)
{
  v3 = [a2 text];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setRenameOption:v3];

  v5 = objc_loadWeakRetained((a1 + 32));
  [v5 didChangeRenameOption];
}

void sub_10001C114(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = v5;
  if (v5)
  {
    if (!a3)
    {
      v7 = [v5 activityType];
      v8 = [@"com.apple.screenshotservices.sirisharing" isEqual:v7];

      if (v8)
      {
        v9 = os_log_create("com.apple.screenshotservices", "Editing");
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
        {
          sub_1000744E8(a1);
        }

        [v6 _setOptions:0];
        [v6 becomeCurrent];
        [v6 resignCurrent];
        [v6 invalidate];
      }
    }
  }

  [*(a1 + 40) _markImageAsBeingEdited];
}

void sub_10001C6B0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 88));
  _Unwind_Resume(a1);
}

void sub_10001C6D8(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001C7AC;
  block[3] = &unk_1000BA2F8;
  objc_copyWeak(&v6, (a1 + 40));
  dispatch_async(&_dispatch_main_q, block);
  v4 = *(a1 + 32);
  if (v4)
  {
    (*(v4 + 16))(v4, v3, 1);
  }

  objc_destroyWeak(&v6);
}

void sub_10001C7AC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    WeakRetained[44] = 0;
  }
}

void sub_10001C7E0(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_initWeak(&location, *(a1 + 32));
  v7 = _NSConcreteStackBlock;
  v8 = 3221225472;
  v9 = sub_10001C91C;
  v10 = &unk_1000BA2F8;
  objc_copyWeak(&v11, &location);
  dispatch_async(&_dispatch_main_q, &v7);
  v4 = [*(a1 + 40) identifier];
  v5 = [*(a1 + 32) imageDescription];
  v6 = [v3 ss_dataWithFileFormat:v4 addProperties:1 imageDescription:v5];

  (*(*(a1 + 48) + 16))();
  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void sub_10001C900(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10001C91C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    WeakRetained[44] = 0;
  }
}

void sub_10001DBB8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained q_saveEditedPDF];

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001DC84;
  block[3] = &unk_1000BA2F8;
  objc_copyWeak(&v5, (a1 + 40));
  dispatch_async(&_dispatch_main_q, block);
  v3 = *(a1 + 32);
  if (v3)
  {
    (*(v3 + 16))();
  }

  objc_destroyWeak(&v5);
}

void sub_10001DC84(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    WeakRetained[45] = 0;
  }
}

void sub_10001E3B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25)
{
  objc_destroyWeak((v25 + 48));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a25, 8);
  _Unwind_Resume(a1);
}

void sub_10001E408(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v9 = 0;
  v5 = [v4 writeToURL:v3 options:1 error:&v9];
  v6 = v9;
  *(*(*(a1 + 40) + 8) + 24) = v5;
  v7 = os_log_create("com.apple.screenshotservices", "PDF");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    if (*(*(*(a1 + 40) + 8) + 24))
    {
      v8 = @"Saved";
    }

    else
    {
      v8 = @"Could not save";
    }

    *buf = 138412802;
    v11 = v8;
    v12 = 2112;
    v13 = v3;
    v14 = 2112;
    v15 = v6;
    _os_log_debug_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "%@ previously saved PDF to %@ (%@)", buf, 0x20u);
  }
}

void sub_10001E540(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained setPDFURL:*(a1 + 32)];

  v3 = os_log_create("com.apple.screenshotservices", "PDF");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_100074840((a1 + 32), a1, v3);
  }
}

uint64_t sub_10001F090(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) imageProvider];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10001F140;
  v7[3] = &unk_1000BA2D0;
  v8 = v3;
  v5 = v3;
  [v4 requestOutputImageForSaving:v7];

  return 0;
}

uint64_t sub_10001F154(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 editedPDFDataForShareSheet];
  v3[2](v3, v4, 0);

  return 0;
}

void sub_10001F55C(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  if (WeakRetained)
  {
    v3 = [a1[4] environmentDescription];
    v4 = [v3 imageSurface];
    v5 = [UIImage ss_cgImageBackedImageFromImageSurface:v4];

    v6 = UIImagePNGRepresentation(v5);
    v7 = *(a1[4] + 13);
    v11 = v6;
    v8 = [NSArray arrayWithObjects:&v11 count:1];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10001F6C0;
    v9[3] = &unk_1000BA7F0;
    v10 = a1[5];
    [v7 insertImagesData:v8 completion:v9];
  }
}

void sub_10001F6C0(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    v6 = os_log_create("com.apple.screenshotservices", "Screenshot");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1000748D0(v5);
    }
  }

  if (a2)
  {
    v7 = os_log_create("com.apple.screenshotservices", "Screenshot");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "screenshot sent to quick note", v9, 2u);
    }
  }

  v8 = *(a1 + 32);
  if (v8)
  {
    (*(v8 + 16))();
  }
}

Class sub_10001FA4C(uint64_t a1)
{
  v4[0] = 0;
  if (!qword_1000D4A28)
  {
    v4[1] = _NSConcreteStackBlock;
    v4[2] = 3221225472;
    v4[3] = sub_10001FB90;
    v4[4] = &unk_1000B9FE0;
    v4[5] = v4;
    v5 = off_1000BA810;
    v6 = 0;
    qword_1000D4A28 = _sl_dlopen();
    v2 = v4[0];
    if (qword_1000D4A28)
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
  result = objc_getClass("SYLinkContextClient");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_100074960();
  }

  qword_1000D4A20 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_10001FB90()
{
  result = _sl_dlopen();
  qword_1000D4A28 = result;
  return result;
}

void sub_10001FF64(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 48) == 1;
  if (*(a1 + 56))
  {
    v3 = 0.3;
  }

  else
  {
    v3 = 0.0;
  }

  v4 = [*(a1 + 32) delegate];
  [v4 dittoRootViewController:*(a1 + 32) wantsBackground:v2 duration:v3];
}

id sub_100021A8C(uint64_t a1)
{
  [*(a1 + 32) setFrame:{*(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64)}];
  v2 = *(a1 + 32);

  return [v2 layoutIfNeeded];
}

id sub_100023E98(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) state];

  return [v1 setState:v2];
}

id sub_100023EDC(uint64_t a1)
{
  [*(a1 + 32) layoutIfNeeded];
  v2 = [*(*(a1 + 40) + 16) view];
  [v2 layoutIfNeeded];

  [*(*(a1 + 40) + 16) setContentSwitcherAlpha:*(a1 + 56)];
  v3 = +[SSSSignificantEventController sharedSignificantEventController];
  [v3 screenshotAppearAnimationEndedForScreenshot:*(a1 + 48) userInterface:*(a1 + 40)];

  v4 = *(a1 + 40);

  return [v4 _prepareDragInteractionIfNecessary];
}

void sub_100023F74(uint64_t a1)
{
  [*(*(a1 + 32) + 16) setContentSwitcherAlpha:*(a1 + 48)];
  [*(a1 + 40) layoutIfNeeded];
  v2 = [*(*(a1 + 32) + 16) view];
  [v2 layoutIfNeeded];

  if (_SSScreenshotsRedesign2025Enabled())
  {
    v3 = [*(a1 + 40) flashView];
    [v3 _setContinuousCornerRadius:sub_10000F550()];
  }
}

void sub_100024020(uint64_t a1)
{
  v2 = +[SSSSignificantEventController sharedSignificantEventController];
  [v2 screenshotAppearAnimationEndedForScreenshot:*(a1 + 32) userInterface:*(a1 + 40)];

  [*(a1 + 40) _prepareDragInteractionIfNecessary];
  [*(a1 + 48) cleanUpAfterGestureScreenshotBasedAnimation];
  [*(a1 + 48) setNeedsLayout];
  v3 = [*(*(a1 + 40) + 16) view];
  [v3 setNeedsLayout];
}

uint64_t sub_100024210(uint64_t a1)
{
  [*(a1 + 32) _positionAppearingScreenshot:*(a1 + 40)];
  result = *(a1 + 48);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

void sub_1000245AC(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 32);
  *(v2 + 32) = 0;

  (*(*(*(a1 + 32) + 40) + 16))(*(*(a1 + 32) + 40), [*(a1 + 40) successful]);
  v4 = *(a1 + 32);
  v5 = *(v4 + 40);
  *(v4 + 40) = 0;

  v6 = [*(a1 + 32) delegate];
  [v6 containerViewControllerEndedShowingWaitingForImageIdentifierUpdatesUI:*(a1 + 32)];
}

void sub_1000250C8(int8x16_t *a1)
{
  v2 = [[UICubicTimingParameters alloc] initWithControlPoint1:0.666670024 controlPoint2:{0.00666669989, 0.800000012, 0.993330002}];
  v3 = [[UIViewPropertyAnimator alloc] initWithDuration:v2 timingParameters:*a1[3].i64];
  [v3 setUserInteractionEnabled:0];
  v4 = a1[2].i64[0];
  v5 = *(v4 + 96);
  *(v4 + 96) = v3;
  v6 = v3;

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10002524C;
  v11[3] = &unk_1000BA068;
  v11[4] = a1[2].i64[0];
  [v6 addAnimations:v11];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100025254;
  v8[3] = &unk_1000BA920;
  v10 = vextq_s8(a1[3], a1[3], 8uLL);
  v7 = a1[2].i64[1];
  v8[4] = a1[2].i64[0];
  v9 = v7;
  [v6 addCompletion:v8];
  [v6 startAnimation];
}

void sub_100025254(uint64_t a1)
{
  v2 = *(a1 + 48) - *(a1 + 56);
  if (v2 < 0.0)
  {
    v2 = 0.0;
  }

  v3 = dispatch_time(0, (v2 * 1000000000.0));
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10002531C;
  v5[3] = &unk_1000BA0F8;
  v4 = *(a1 + 40);
  v5[4] = *(a1 + 32);
  v6 = v4;
  dispatch_after(v3, &_dispatch_main_q, v5);
}

uint64_t sub_10002531C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 96);
  *(v2 + 96) = 0;

  [*(a1 + 32) _performPostDismissActions];
  v4 = *(a1 + 40);

  return sub_10002B474(v4);
}

void sub_100025370(uint64_t a1)
{
  if (*(a1 + 48) == 1)
  {
    v3 = objc_alloc_init(BSMutableAnimationSettings);
    [*(a1 + 32) _durationForHorizontalSlideOffDismiss];
    [v3 setDuration:?];
    v2 = v3;
  }

  else
  {
    v2 = 0;
  }

  v4 = v2;
  [*(a1 + 32) _performPreDismissActionsForAnimationSettings:?];
  if ((*(a1 + 49) & 1) == 0)
  {
    [*(a1 + 32) setState:0 animated:1 completion:0];
  }

  (*(*(a1 + 40) + 16))();
}

id sub_10002583C(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 32);
  if (v2 == 1)
  {
    v4 = [v3 view];
    [v4 setAlpha:0.0];
  }

  else
  {
    v4 = [v3[2] view];
    [v4 frame];
    [v4 setFrame:?];
  }

  v5 = *(a1 + 32);

  return [v5 setNeedsStatusBarAppearanceUpdate];
}

void sub_100025AB0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v4 = [v1 view];
  [v4 bounds];
  [v1 _updateForSize:{v2, v3}];
}

void sub_100025CC8(uint64_t a1)
{
  v2 = +[SSSSignificantEventController sharedSignificantEventController];
  v3 = [*(*(a1 + 32) + 16) visibleScreenshots];
  [v2 screenshotUIWithScreenshots:v3 beganStateChangeFromState:*(*(a1 + 32) + 144) toState:*(a1 + 48)];

  v4 = [*(*(a1 + 32) + 16) view];
  [v4 layoutIfNeeded];

  v5 = [*(a1 + 32) view];
  [v5 layoutIfNeeded];

  [*(a1 + 32) _prepareGesturesForState:*(a1 + 48)];
  [*(*(a1 + 32) + 16) setScreenshotsUseTrilinearMinificationFilter:1];
  [*(*(a1 + 32) + 16) setShowsShadow:0 animated:0];
  v6 = +[SSSSpringAnimationParameters scaleAnimationParameters];
  [v6 setAnimationOptions:{objc_msgSend(v6, "animationOptions") & 0xFFFFFFFFFFFFFFFDLL}];
  if (*(a1 + 48) == 1)
  {
    v7 = 2;
  }

  else
  {
    v7 = 3;
  }

  [v6 setAnimationReason:v7];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100025EE8;
  v15[3] = &unk_1000BAA38;
  v9 = *(a1 + 40);
  v8 = *(a1 + 48);
  v15[4] = *(a1 + 32);
  v18 = v8;
  v19 = *(a1 + 56);
  v17 = v9;
  v10 = v6;
  v16 = v10;
  v11 = objc_retainBlock(v15);
  if (!*(a1 + 48))
  {
    [*(*(a1 + 32) + 16) removeChildViewControllers];
    v12 = [*(a1 + 32) view];
    v13 = [v12 window];
    v14 = [v13 firstResponder];
    [v14 resignFirstResponder];
  }

  (v11[2])(v11);
}

void sub_100025EE8(uint64_t a1)
{
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1000260E8;
  v16[3] = &unk_1000BA1B8;
  v2 = *(a1 + 56);
  v16[4] = *(a1 + 32);
  v16[5] = v2;
  v3 = objc_retainBlock(v16);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100026178;
  v12[3] = &unk_1000BA9E8;
  v5 = *(a1 + 48);
  v4 = *(a1 + 56);
  v12[4] = *(a1 + 32);
  v14 = v4;
  v15 = *(a1 + 64);
  v13 = v5;
  v6 = objc_retainBlock(v12);
  if (*(a1 + 64) == 1)
  {
    v7 = *(a1 + 40);
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1000262B4;
    v10[3] = &unk_1000BA998;
    v11 = v3;
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1000262C4;
    v8[3] = &unk_1000BAA10;
    v9 = v6;
    [UIView sss_animateWithAnimationParameters:v7 animations:v10 completion:v8];
  }

  else
  {
    (v3[2])(v3);
    (v6[2])(v6, 1);
  }
}

id sub_1000260E8(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [v2 view];
  [v3 bounds];
  [v2 _updateForSize:{v4, v5}];

  [*(*(a1 + 32) + 16) setState:*(a1 + 40)];
  [*(*(a1 + 32) + 16) setSnapshotScreenshotEdits:*(a1 + 40) == 0];
  v6 = *(a1 + 32);

  return [v6 setNeedsStatusBarAppearanceUpdate];
}

void sub_100026178(uint64_t a1)
{
  v2 = [*(a1 + 32) state];
  v3 = *(a1 + 48);
  v4 = *(a1 + 32);
  v5 = v4[2];
  v6 = [v4 state] == 0;
  v7 = v2 == v3 && v6;
  [v5 setShowsShadow:v7 animated:*(a1 + 56)];
  [*(*(a1 + 32) + 16) setScreenshotsUseTrilinearMinificationFilter:{objc_msgSend(*(a1 + 32), "state") == 0}];
  [*(*(a1 + 32) + 16) stateTransitionFinished];
  if (v2 == v3)
  {
    v8 = [*(a1 + 32) delegate];
    [v8 containerViewController:*(a1 + 32) didTransitionToState:*(a1 + 48)];
  }

  v9 = *(a1 + 40);
  if (v9)
  {
    (*(v9 + 16))();
  }

  v11 = +[SSSSignificantEventController sharedSignificantEventController];
  v10 = [*(*(a1 + 32) + 16) visibleScreenshots];
  [v11 screenshotUIWithScreenshots:v10 endedStateChangeFromState:*(*(a1 + 32) + 144) toState:*(a1 + 48) userInterface:?];
}

void sub_100026DD8(uint64_t a1)
{
  v2 = [*(a1 + 32) lastViewEditMode];
  v3 = *(a1 + 32);
  if (v2)
  {
    v4 = [v3 editedPDFDataForShareSheet];
    if (v4)
    {
      v5 = [NSItemProvider alloc];
      v6 = [UTTypePDF identifier];
      v7 = [v5 initWithItem:v4 typeIdentifier:v6];

LABEL_11:
      [*(a1 + 40) addObject:v7];

      goto LABEL_12;
    }

    goto LABEL_12;
  }

  v8 = [v3 imageGenerator];
  v9 = [v8 isGeneratedImageHDR:*(a1 + 32)];

  v10 = [*(a1 + 32) imageGenerator];
  height = CGSizeZero.height;
  v4 = [v10 generateImageForScreenshot:*(a1 + 32) shouldApplyCrop:1 allowHDR:0 targetSize:{CGSizeZero.width, height}];

  if (v4 || ([*(a1 + 32) imageProvider], v12 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v12, "requestOutputImageForSavingBlocking"), v4 = objc_claimAutoreleasedReturnValue(), v12, v4))
  {
    if (v9)
    {
      v13 = [*(a1 + 32) imageGenerator];
      v14 = [v13 generateImageDataForScreenshot:*(a1 + 32) shouldApplyCrop:1 allowHDR:1 targetSize:UTTypeHEIC imageType:{CGSizeZero.width, height}];

      if (v14)
      {
        v7 = objc_alloc_init(NSItemProvider);
        v22[0] = _NSConcreteStackBlock;
        v22[1] = 3221225472;
        v22[2] = sub_10002707C;
        v22[3] = &unk_1000BA7C8;
        v23 = v14;
        v15 = v14;
        [v7 registerDataRepresentationForContentType:UTTypeHEIC visibility:0 loadHandler:v22];
        v19[0] = _NSConcreteStackBlock;
        v19[1] = 3221225472;
        v19[2] = sub_1000270B0;
        v19[3] = &unk_1000BAA88;
        v16 = v4;
        v17 = *(a1 + 32);
        v20 = v16;
        v21 = v17;
        [v7 registerDataRepresentationForContentType:UTTypePNG visibility:0 loadHandler:v19];

        if (v7)
        {
          goto LABEL_11;
        }
      }
    }

    v18 = [[NSItemProvider alloc] initWithObject:v4];
    if (v18)
    {
      v7 = v18;
      goto LABEL_11;
    }

LABEL_12:
  }

  dispatch_group_leave(*(a1 + 48));
}

uint64_t sub_1000270B0(uint64_t a1, void (**a2)(void, void, void))
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = a2;
  v6 = [v4 imageDescription];
  v7 = [v3 ss_pngDataWithImageDescription:v6];
  (a2)[2](v5, v7, 0);

  return 0;
}

void sub_10002712C(uint64_t a1)
{
  v2 = +[UIPasteboard generalPasteboard];
  [v2 setItemProviders:*(a1 + 32)];
  [*(a1 + 40) screenshotsViewController:*(a1 + 48) requestsDeleteForScreenshots:*(a1 + 56) deleteOptions:*(a1 + 64) forReason:*(a1 + 72)];
}

void sub_1000273B8(uint64_t a1)
{
  if (*(a1 + 40) == 2)
  {
    [*(a1 + 32) setState:0];
    v2 = [*(*(a1 + 32) + 16) view];
    [v2 layoutIfNeeded];
  }

  v3 = [*(*(a1 + 32) + 16) visibleScreenshots];
  v4 = [v3 count];

  if (!v4 && *(a1 + 40) == 1)
  {
    v5 = *(a1 + 32);

    [v5 _dismissScreenshotsWithSlide];
  }
}

void sub_10002747C(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 16) visibleScreenshots];
  if ([v2 count])
  {
  }

  else
  {
    v3 = *(a1 + 48);

    if (v3 == 2)
    {
      v4 = *(a1 + 32);
      v7[0] = _NSConcreteStackBlock;
      v7[1] = 3221225472;
      v7[2] = sub_100027580;
      v7[3] = &unk_1000BA3E8;
      v7[4] = v4;
      v8 = *(a1 + 40);
      [v4 dismissScreenshotsAnimated:1 completion:v7];

      return;
    }
  }

  v5 = *(a1 + 32);
  v6 = *(a1 + 40);

  [v5 _stopBeingInterestedInScreenshots:v6];
}

id sub_100027AD8(uint64_t a1)
{
  [*(*(a1 + 32) + 24) progressTowardsReceivingAllImageIdentifierUpdates];
  v3 = v2;
  if (v2 >= 1.0)
  {
    v9 = *(a1 + 40);
    v10 = [*(*(a1 + 32) + 24) successful];
    v11 = *(v9 + 16);

    return v11(v9, v10);
  }

  else
  {
    v4 = os_log_create("com.apple.screenshotservices", "ShareSheet");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      sub_1000749E0(v4, v3);
    }

    v5 = objc_retainBlock(*(a1 + 40));
    v6 = *(a1 + 32);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    [*(a1 + 32) _prepareImageIdentifierUpdateAlertIfNecessary];
    return [*(a1 + 32) _presentImageIdentifierUpdateAlertIfNecessary];
  }
}

id sub_100027C8C(uint64_t a1)
{
  [*(*(a1 + 32) + 24) progressTowardsReceivingAllImageIdentifierUpdates];
  v2 = *(a1 + 40);
  if (v3 >= 1.0)
  {
    v9 = [*(*(a1 + 32) + 24) successful];
    v10 = *(v2 + 16);

    return v10(v2, v9);
  }

  else
  {
    v4 = objc_retainBlock(*(a1 + 40));
    v5 = *(a1 + 32);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;

    [*(a1 + 32) _prepareImageIdentifierUpdateAlertIfNecessary];
    v7 = *(a1 + 32);

    return [v7 _presentImageIdentifierUpdateAlertIfNecessary];
  }
}

void sub_100028548(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 32) _updateForSize:{*(a1 + 40), *(a1 + 48)}];
  v4 = *(a1 + 32);
  if (v4[12])
  {
    objc_initWeak(&location, v4);
    v5 = *(*(a1 + 32) + 96);
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_10002863C;
    v6[3] = &unk_1000BA2F8;
    objc_copyWeak(&v7, &location);
    [v5 addAnimations:v6];
    objc_destroyWeak(&v7);
    objc_destroyWeak(&location);
  }
}

void sub_100028620(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10002863C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _moveScreenshotsViewForHorizontalSlideOffDismiss];
}

void *sub_1000289D4(void *result, uint64_t a2)
{
  if (a2)
  {
    v2 = result;
    [*(result[4] + 16) setBorderViewStyleOverride:0 withAnimator:0];
    v3 = v2[4];

    return [v3 _stopDraggingDismissing:0];
  }

  return result;
}

void sub_100028C28(uint64_t a1)
{
  [*(*(a1 + 32) + 16) setBorderViewStyleOverride:0 withAnimator:0];
  v2 = [*(*(a1 + 32) + 16) view];
  [v2 setAlpha:1.0];
}

void sub_1000299EC(id a1)
{
  qword_1000D4A40 = objc_alloc_init(SSSSignificantEventController);

  _objc_release_x1();
}

void sub_10002A4F4(uint64_t a1)
{
  v2 = [objc_opt_class() newTestScreenshot];
  v3 = dispatch_get_global_queue(0, 0);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10002A5C4;
  v6[3] = &unk_1000BA280;
  v4 = *(a1 + 40);
  v7 = v2;
  v8 = v4;
  v5 = v2;
  dispatch_async(v3, v6);
}

uint64_t sub_10002B474(uint64_t result)
{
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t sub_10002B488(uint64_t result)
{
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_10002BB64(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v3 = WeakRetained;
  if (WeakRetained && *(WeakRetained + 13) == 1)
  {
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_10002BC24;
    v5[3] = &unk_1000BAB38;
    v6 = a1[4];
    v4 = a1[5];
    v7 = v3;
    v8 = v4;
    [v3 _loadUneditedImageIfNecessaryWithCompletionBlock:v5];
  }
}

void sub_10002BC24(uint64_t a1)
{
  v2 = *(a1 + 40);
  v1 = *(a1 + 48);
  v4 = *(a1 + 32);
  v3 = [v2 _outputImageOnCurrentUneditedImage];
  (*(v1 + 16))(v1, v3);
}

void sub_10002BE2C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v4 = WeakRetained;
  if (WeakRetained && *(WeakRetained + 13) == 1)
  {
    v3 = [*(a1 + 32) generateImageDataForScreenshot:*(a1 + 40) shouldApplyCrop:1 allowHDR:*(a1 + 72) targetSize:*(a1 + 48) imageType:{CGSizeZero.width, CGSizeZero.height}];
    (*(*(a1 + 56) + 16))();
  }

  else
  {
    (*(*(a1 + 56) + 16))();
  }
}

void sub_10002BFF0(uint64_t a1)
{
  v2 = *(a1 + 40);
  v5 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v4 = [WeakRetained _outputImageOnCurrentUneditedImage];
  (*(v2 + 16))(v2, v4);
}

void sub_10002C190(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10002C1A8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10002C1C0(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_10002C33C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10002C354(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_10002C480(uint64_t a1)
{
  v1 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained screenshot];
  v3 = [v2 backingImage];
  (*(v1 + 16))(v1, v3);
}

void sub_10002C620(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10002C638(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_10002C788(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = [WeakRetained cachedCGImageBackedUneditedImageForUI];

  if (!v3)
  {
    v4 = objc_loadWeakRetained((a1 + 48));
    v5 = [v4 screenshot];
    v6 = [v5 backingImage];

    v7 = [v6 CGImage];
    v8 = objc_loadWeakRetained((a1 + 48));
    v9 = v8;
    if (v7)
    {
      [v8 setCachedCGImageBackedUneditedImageForUI:v6];
    }

    else
    {
      v10 = [v8 screenshot];
      v11 = [v10 environmentDescription];
      v12 = [v11 imageSurface];

      v13 = [UIImage ss_cgImageBackedImageFromImageSurface:v12];
      v14 = objc_loadWeakRetained((a1 + 48));
      [v14 setCachedCGImageBackedUneditedImageForUI:v13];

      v9 = v12;
    }
  }

  v15 = *(a1 + 40);
  v16 = [*(a1 + 32) cachedCGImageBackedUneditedImageForUI];
  (*(v15 + 16))(v15, v16);
}

void sub_10002CA00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10002CA18(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_10002CBBC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10002CBE0(uint64_t a1, void *a2)
{
  v11 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setHasOriginalUneditedImage:1];

  v4 = objc_loadWeakRetained((a1 + 40));
  v5 = [v4 screenshot];
  [v5 setBackingImage:v11];

  v6 = objc_loadWeakRetained((a1 + 40));
  [v6 setHasChangedBackingImage:1];

  v7 = objc_loadWeakRetained((a1 + 40));
  v8 = [v7 screenshot];
  v9 = [v8 hasEverBeenEditedForMode:0];

  if ((v9 & 1) == 0)
  {
    v10 = objc_loadWeakRetained((a1 + 40));
    [v10 setCachedOutputImage:v11];
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_10002CDCC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _resumeHighQualityQueueIfNecessary];
}

uint64_t sub_10002D07C(uint64_t a1)
{
  v2 = os_log_create("com.apple.screenshotservices", "ImageProvider");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "execute deletion block in highQualityImageQueue", v4, 2u);
  }

  return (*(*(a1 + 32) + 16))();
}

void sub_10002D808(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10002D820(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10002D838(double *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = *(a1 + 4);
  v7 = a1[7];
  v8 = a1[8];
  v9 = a2;
  [v9 convertPoint:v6 fromView:{v7, v8}];
  obj = [v9 hitTest:*(a1 + 5) withEvent:?];

  v10 = obj;
  if (obj)
  {
    objc_storeStrong((*(*(a1 + 6) + 8) + 40), obj);
    v10 = obj;
    *a4 = 1;
  }
}

void sub_10002EF3C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = WeakRetained[1];
    WeakRetained[1] = 0;

    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v4 = [v2[4] gestureRecognizers];
    v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v10;
      while (2)
      {
        v8 = 0;
        do
        {
          if (*v10 != v7)
          {
            objc_enumerationMutation(v4);
          }

          if ([*(*(&v9 + 1) + 8 * v8) state] == 2)
          {

            [v2 annotationsDidChange];
            goto LABEL_12;
          }

          v8 = v8 + 1;
        }

        while (v6 != v8);
        v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

    [v2 setNeedsPageImageUpdate];
  }

LABEL_12:
}

void sub_100030230(id *a1)
{
  [a1[4] duration];
  v3 = v2;
  [a1[4] delay];
  v5 = v4;
  v6 = [a1[4] animationOptions];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100030364;
  v10[3] = &unk_1000BA998;
  v7 = a1[4];
  v11 = a1[5];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10003037C;
  v8[3] = &unk_1000BAA10;
  v9 = a1[6];
  [UIView _animateWithDuration:v6 delay:v7 options:v10 factory:v8 animations:v3 completion:v5];
}

uint64_t sub_100030364(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t sub_10003037C(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

double *sub_1000308EC(double *result)
{
  v5 = *(result + 5);
  if (v5 >= 1)
  {
    v9[6] = v4;
    v9[7] = v3;
    v9[14] = v1;
    v9[15] = v2;
    v6 = result;
    for (i = 0; i < v5; ++i)
    {
      v8 = v6[6] + i * v6[7];
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_1000309D4;
      v9[3] = &unk_1000BA1B8;
      *&v9[4] = v6[4];
      *&v9[5] = v8;
      result = [UIView addKeyframeWithRelativeStartTime:v9 relativeDuration:i / v5 animations:1.0 / v5];
      v5 = *(v6 + 5);
    }
  }

  return result;
}

void sub_1000309D4(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 16);
  v2 = [*(a1 + 32) _shapeLayerPathForProgress:*(a1 + 40)];
  [v1 setPath:v2];
}

void sub_100030CF0(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 waitingForImageIdentifierUpdatesAlertControllerDidCancel:*(a1 + 32)];
}

const __CFString *sub_100031654(uint64_t a1)
{
  v1 = @"unknown";
  if (a1 == 1)
  {
    v1 = @"fullscreen";
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return @"miniature";
  }
}

__CFString *sub_100031680(unint64_t a1)
{
  if (a1 > 4)
  {
    return 0;
  }

  else
  {
    return off_1000BACF0[a1];
  }
}

double sub_100033E74(uint64_t a1, uint64_t a2, void *a3, double a4, double a5, double a6, double a7, double a8, double a9, double a10, double a11, double a12, double a13)
{
  v24 = a3;
  v25 = a10 - a8;
  v26 = a11 - a9;
  UIRectGetCorners();
  v27 = v67;
  v28 = v69;
  if (sub_100035CC0(a1, a2))
  {
    v27 = v25 + v67;
  }

  if (sub_100035CD4(a1, a2))
  {
    v29 = v25 + v70;
  }

  else
  {
    v29 = v70;
  }

  if (sub_100035CE8(a1, a2))
  {
    v30 = v26 + v68;
  }

  else
  {
    v30 = v68;
  }

  v61 = 0u;
  v62 = 0u;
  if (sub_100035CFC(a1, a2))
  {
    v28 = v26 + v69;
  }

  v63 = 0uLL;
  v64 = 0uLL;
  v31 = v24;
  v32 = [v31 countByEnumeratingWithState:&v61 objects:v66 count:16];
  if (v32)
  {
    v33 = v32;
    v34 = *v62;
    do
    {
      for (i = 0; i != v33; i = i + 1)
      {
        v57 = v28;
        v58 = v30;
        v59 = v27;
        v60 = v29;
        if (*v62 != v34)
        {
          objc_enumerationMutation(v31);
        }

        [*(*(&v61 + 1) + 8 * i) CGRectValue];
        x = v73.origin.x;
        y = v73.origin.y;
        width = v73.size.width;
        height = v73.size.height;
        MinX = CGRectGetMinX(v73);
        v74.origin.x = x;
        v74.origin.y = y;
        v74.size.width = width;
        v74.size.height = height;
        MaxX = CGRectGetMaxX(v74);
        v75.origin.x = x;
        v75.origin.y = y;
        v75.size.width = width;
        v75.size.height = height;
        MinY = CGRectGetMinY(v75);
        v76.origin.x = x;
        v76.origin.y = y;
        v76.size.width = width;
        v76.size.height = height;
        MaxY = CGRectGetMaxY(v76);
        v27 = v59;
        v29 = v60;
        if (vabdd_f64(MinX, v59) < 0.005)
        {
          v27 = MinX;
        }

        if (vabdd_f64(MaxX, v60) < 0.005)
        {
          v29 = MaxX;
        }

        if (vabdd_f64(MinY, v58) >= 0.005)
        {
          v44 = v58;
        }

        else
        {
          v44 = MinY;
        }

        if (vabdd_f64(MaxY, v57) >= 0.005)
        {
          v45 = v57;
        }

        else
        {
          v45 = MaxY;
        }

        if (vabdd_f64(MinY, v45) >= 0.005)
        {
          v28 = v45;
        }

        else
        {
          v28 = MinY;
        }

        if (vabdd_f64(MaxY, v44) >= 0.005)
        {
          v30 = v44;
        }

        else
        {
          v30 = MaxY;
        }
      }

      v33 = [v31 countByEnumeratingWithState:&v61 objects:v66 count:16];
    }

    while (v33);
  }

  if (v29 - v27 < a12)
  {
    if (sub_100035CC0(a1, a2))
    {
      v27 = v29 - a12;
    }

    else
    {
      v29 = a12 + v27;
    }
  }

  if (v28 - v30 < a13)
  {
    if (sub_100035CE8(a1, a2))
    {
      v30 = v28 - a13;
    }

    else
    {
      v28 = a13 + v30;
    }
  }

  v46 = 0;
  *v65 = v27;
  *&v65[1] = v30;
  *&v65[2] = v27;
  *&v65[3] = v28;
  *&v65[4] = v29;
  *&v65[5] = v28;
  __asm { FMOV            V1.2D, #1.0 }

  *&v65[6] = v29;
  *&v65[7] = v30;
  do
  {
    v52 = &v65[v46];
    v71 = vld2q_f64(v52);
    v53 = vmaxnmq_f64(v71.val[0], 0);
    v72.val[0] = vbslq_s8(vcgtq_f64(v53, _Q1), _Q1, v53);
    v71.val[0] = vmaxnmq_f64(v71.val[1], 0);
    v72.val[1] = vbslq_s8(vcgtq_f64(v71.val[0], _Q1), _Q1, v71.val[0]);
    vst2q_f64(v52, v72);
    v46 += 4;
  }

  while (v46 != 8);
  UIRectMakeWithPoints();
  v55 = v54;

  return v55;
}

double sub_1000341E4(uint64_t a1, double a2, double a3, double a4, double a5)
{
  result = 1.0;
  if (a2 > 0.0 && a3 > 0.0)
  {
    result = a4 / a2;
    if (a1 != 1)
    {
      v7 = a5 / a3;
      if (result >= v7)
      {
        return v7;
      }
    }
  }

  return result;
}

double sub_100034278()
{
  +[SSSCropOverlayCornerView preferredDimension];
  v1 = v0;
  +[SSSCropOverlayGrabberView preferredOtherDimension];
  return v2 + v1 * 2.0;
}

uint64_t start(int a1, char **a2)
{
  getpid();
  memorystatus_control();
  v4 = objc_autoreleasePoolPush();
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  v9 = UIApplicationMain(a1, a2, v6, v8);

  objc_autoreleasePoolPop(v4);
  return v9;
}

id sub_100034A74(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 8);
  v3 = *&CGAffineTransformIdentity.c;
  *&v11.a = *&CGAffineTransformIdentity.a;
  *&v11.c = v3;
  *&v11.tx = *&CGAffineTransformIdentity.tx;
  [v2 setTransform:&v11];
  v4 = *(a1 + 32);
  v5 = v4[1];
  [v4 bounds];
  [v5 setFrame:?];
  v6 = [*(a1 + 32) traitCollection];
  v7 = 1.0 / sub_10000F530();

  memset(&v11, 0, sizeof(v11));
  CGAffineTransformMakeScale(&v11, v7, v7);
  v8 = *(*(a1 + 32) + 8);
  v10 = v11;
  [v8 setTransform:&v10];
  [*(*(a1 + 32) + 8) frame];
  return [*(*(a1 + 32) + 8) setFrame:{CGPointZero.x, CGPointZero.y}];
}

void sub_100034DF0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [UIBezierPath bezierPathWithRect:?];
  [v1 appendPath:v2];
}

SSSActivityViewController *sub_1000356C8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, void *a7, void *a8)
{
  v12 = a1;
  v13 = v12;
  if (!v12 || a6)
  {
    v15 = a8;
    v16 = a7;
    v14 = [[SSSActivityViewController alloc] initWithActivityItems:v15 applicationActivities:v16 editMode:a4];
  }

  else
  {
    v14 = v12;
  }

  return v14;
}

void sub_100037968(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100037A04;
  v5[3] = &unk_1000BA3E8;
  v5[4] = *(a1 + 32);
  v6 = v3;
  v4 = v3;
  dispatch_async(&_dispatch_main_q, v5);
}

void sub_100037A04(uint64_t a1)
{
  v1 = *(a1 + 40);
  v5 = [*(a1 + 32) screenshot];
  v2 = [v5 environmentDescription];
  v3 = [v2 appleInternalOptions];
  v4 = [v3 recapMovie];
  [v4 setScreenshot:v1];
}

void sub_100037A8C(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100037B34;
  block[3] = &unk_1000BA4D0;
  v5 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v6 = v2;
  v7 = v3;
  dispatch_async(&_dispatch_main_q, block);
}

void sub_100037B34(uint64_t a1)
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2050000000;
  v2 = qword_1000D4A58;
  v14 = qword_1000D4A58;
  if (!qword_1000D4A58)
  {
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100038A84;
    v10[3] = &unk_1000B9FA8;
    v10[4] = &v11;
    sub_100038A84(v10);
    v2 = v12[3];
  }

  v3 = v2;
  _Block_object_dispose(&v11, 8);
  v4 = [[v2 alloc] initWithContentsOfURL:*(a1 + 32)];
  v5 = [*(a1 + 40) snapshots];
  [v4 setSnapshots:v5];

  v6 = [*(a1 + 40) screenshot];
  [v4 setScreenshot:v6];

  v7 = [*(a1 + 48) screenshot];
  v8 = [v7 environmentDescription];
  v9 = [v8 appleInternalOptions];
  [v9 setRecapMovie:v4];

  [*(a1 + 48) finishLoadingScreenshot];
}

void sub_100037C98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100037F68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100038524(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = [*(a1 + 48) screenshot];
  [v1 tapToRadar:v2 screenshot:v3];
}

uint64_t sub_100038940()
{
  if (!qword_1000D4A50)
  {
    qword_1000D4A50 = _sl_dlopen();
  }

  return qword_1000D4A50;
}

uint64_t sub_100038A10()
{
  result = _sl_dlopen();
  qword_1000D4A50 = result;
  return result;
}

void sub_100038A84(uint64_t a1)
{
  sub_100038ADC();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("RCPMovie");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_1000D4A58 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    sub_100074B0C();
    sub_100038ADC();
  }
}

void sub_100038ADC()
{
  if (!sub_100038940())
  {
    v0 = abort_report_np();
    free(v0);
  }
}

Class sub_100038B2C(uint64_t a1)
{
  sub_100038ADC();
  result = objc_getClass("RCPVizualizerView");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_1000D4A60 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = sub_100074B34();
    return sub_100038B84(v3);
  }

  return result;
}

SSSScreenshotItemProviderPDFAsImage *sub_100038B84(uint64_t a1)
{
  sub_100038ADC();
  result = objc_getClass("RCPTimelineView");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_1000D4A68 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = sub_100074B5C();
    return [(SSSScreenshotItemProviderPDFAsImage *)v3 initWithScreenshot:v4, v5];
  }

  return result;
}

void sub_100039000(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100039168(uint64_t a1)
{
  sub_1000391C0();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("LPLinkMetadata");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_1000D4A70 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    sub_100073D44();
    sub_1000391C0();
  }
}

void sub_1000391C0()
{
  v1[0] = 0;
  if (!qword_1000D4A78)
  {
    v1[1] = _NSConcreteStackBlock;
    v1[2] = 3221225472;
    v1[3] = sub_1000392BC;
    v1[4] = &unk_1000B9FE0;
    v1[5] = v1;
    v2 = off_1000BAD80;
    v3 = 0;
    qword_1000D4A78 = _sl_dlopen();
  }

  v0 = v1[0];
  if (!qword_1000D4A78)
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

uint64_t sub_1000392BC()
{
  result = _sl_dlopen();
  qword_1000D4A78 = result;
  return result;
}

Class sub_100039330(uint64_t a1)
{
  sub_1000391C0();
  result = objc_getClass("LPFileMetadata");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_1000D4A80 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = sub_100073D6C();
    return sub_100039388(v3);
  }

  return result;
}

void sub_100039388(uint64_t a1)
{
  sub_1000391C0();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("LPImage");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_1000D4A88 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = sub_100073D94();
    [(_SSSPDFThumbnailView *)v2 layoutSubviews];
  }
}

void sub_100039934(id a1, CALayer *a2)
{
  v4 = a2;
  v2 = +[UIColor clearColor];
  -[CALayer setBorderColor:](v4, "setBorderColor:", [v2 CGColor]);

  [(CALayer *)v4 setBorderWidth:0.0];
  v3 = +[UIColor clearColor];
  -[CALayer setBackgroundColor:](v4, "setBackgroundColor:", [v3 CGColor]);

  [(CALayer *)v4 setCornerCurve:kCACornerCurveContinuous];
  [(CALayer *)v4 setCornerRadius:4.0];
  [(CALayer *)v4 setMasksToBounds:1];
}

void sub_100039F5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100039F7C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _updateOverlayControllerForBeingActiveForScreenshotEditsSnapshotted:WeakRetained[9]];
    [v2 _hideAndShowViewsForScreenshotEditsSnapshotted:v2[9]];
    WeakRetained = v2;
  }
}

void sub_10003A084(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained setCachedViewsHidden:1];
    [v2[5] setHidden:0];
    WeakRetained = v2;
  }
}

void sub_10003AEA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_10003B1BC()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = qword_1000D4AA8;
  v8 = qword_1000D4AA8;
  if (!qword_1000D4AA8)
  {
    v1 = sub_10003D614();
    v6[3] = dlsym(v1, "AKControllerDrawingGestureRecognizerNeedsDependencyUpdate");
    qword_1000D4AA8 = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = sub_100074B84();
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

void sub_10003C3E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class sub_10003D5BC(uint64_t a1)
{
  sub_10003D614();
  result = objc_getClass("AKController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_1000D4A90 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    sub_100074BA8();
    return sub_10003D614();
  }

  return result;
}

uint64_t sub_10003D614()
{
  v3[0] = 0;
  if (!qword_1000D4A98)
  {
    v3[1] = _NSConcreteStackBlock;
    v3[2] = 3221225472;
    v3[3] = sub_10003D714;
    v3[4] = &unk_1000B9FE0;
    v3[5] = v3;
    v4 = off_1000BADD8;
    v5 = 0;
    qword_1000D4A98 = _sl_dlopen();
  }

  v0 = qword_1000D4A98;
  v1 = v3[0];
  if (!qword_1000D4A98)
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

uint64_t sub_10003D714()
{
  result = _sl_dlopen();
  qword_1000D4A98 = result;
  return result;
}

Class sub_10003D788(uint64_t a1)
{
  sub_10003D614();
  result = objc_getClass("AKPageModelController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_1000D4AA0 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = sub_100074BD0();
    return sub_10003D7E0(v3);
  }

  return result;
}

void *sub_10003D7E0(uint64_t a1)
{
  v2 = sub_10003D614();
  result = dlsym(v2, "AKControllerDrawingGestureRecognizerNeedsDependencyUpdate");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1000D4AA8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class sub_10003D830(uint64_t a1)
{
  sub_10003D614();
  result = objc_getClass("AKTextBoxAnnotation");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_1000D4AB0 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = sub_100074BF8();
    return sub_10003D888(v3);
  }

  return result;
}

void *sub_10003D888(uint64_t a1)
{
  v2 = sub_10003D614();
  result = dlsym(v2, "AKStatisticsDocumentTypeImage");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1000D4AB8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_10003D8D8(uint64_t a1)
{
  sub_10003D614();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("AKAnnotation");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_1000D4AC0 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = sub_100074C20();
    [(SSSScreenshotsView *)v2 layoutSubviews];
  }
}

void sub_10003E658(uint64_t a1)
{
  [*(a1 + 32) setIsPerformingFullscreenSetup:1];
  v2 = *(*(a1 + 32) + 10);
  v93 = NSForegroundColorAttributeName;
  v3 = +[UIColor whiteColor];
  v94 = v3;
  v4 = [NSDictionary dictionaryWithObjects:&v94 forKeys:&v93 count:1];
  [v2 setTitleTextAttributes:v4];

  v5 = objc_opt_new();
  v6 = *(a1 + 32);
  v7 = *(v6 + 18);
  *(v6 + 18) = v5;

  [*(*(a1 + 32) + 10) setDelegate:?];
  v8 = *(*(a1 + 32) + 10);
  v9 = objc_opt_new();
  [v8 setShadowImage:v9];

  [*(*(a1 + 32) + 10) setAccessibilityIdentifier:@"navigation-bar"];
  v10 = [UIBlurEffect effectWithStyle:1102];
  if ((_SSScreenshotsRedesign2025Enabled() & 1) == 0)
  {
    v92 = v10;
    v11 = [NSArray arrayWithObjects:&v92 count:1];
    [*(*(a1 + 32) + 10) setBackgroundEffects:v11];
  }

  if (_SSScreenshotsRedesign2025Enabled())
  {
    v12 = objc_alloc_init(UIView);
  }

  else
  {
    v12 = [[UIVisualEffectView alloc] initWithEffect:v10];
  }

  v13 = v12;
  objc_storeStrong((*(a1 + 32) + 26), v12);

  v14 = [*(*(a1 + 32) + 26) layer];
  [v14 setAllowsGroupOpacity:0];

  v15 = [[UIVisualEffectView alloc] initWithEffect:v10];
  v16 = *(a1 + 32);
  v17 = *(v16 + 98);
  *(v16 + 98) = v15;

  v18 = [*(*(a1 + 32) + 98) layer];
  [v18 setAllowsGroupOpacity:0];

  if ((_SSScreenshotsRedesign2025Enabled() & 1) == 0)
  {
    v19 = +[SSChromeHelper separatorView];
    v20 = *(a1 + 32);
    v21 = *(v20 + 34);
    *(v20 + 34) = v19;

    [*(*(a1 + 32) + 10) addSubview:*(*(a1 + 32) + 34)];
    v22 = +[SSChromeHelper separatorView];
    v23 = *(a1 + 32);
    v24 = *(v23 + 42);
    *(v23 + 42) = v22;

    v25 = [*(*(a1 + 32) + 26) contentView];
    [v25 addSubview:*(*(a1 + 32) + 42)];
  }

  v26 = objc_alloc_init(SSSScreenshotCountIndicator);
  v27 = *(a1 + 32);
  v28 = *(v27 + 122);
  *(v27 + 122) = v26;

  v29 = [UIImageSymbolConfiguration configurationWithScale:3];
  v30 = [UIImage _systemImageNamed:@"info.circle.and.sparkles" withConfiguration:v29];

  v31 = [UIImageSymbolConfiguration configurationWithScale:3];
  v32 = [UIImage _systemImageNamed:@"info.circle.and.sparkles.fill" withConfiguration:v31];

  v33 = [UIButton buttonWithType:0];
  v34 = *(a1 + 32);
  v35 = *(v34 + 58);
  *(v34 + 58) = v33;

  [*(*(a1 + 32) + 58) setAccessibilityIdentifier:@"Screenshots-Visual-Search-Button"];
  v89 = v30;
  [*(*(a1 + 32) + 58) setImage:v30 forState:0];
  [*(*(a1 + 32) + 58) setImage:v32 forState:4];
  v88 = v32;
  [*(*(a1 + 32) + 58) setImage:v32 forState:1];
  [*(*(a1 + 32) + 58) addTarget:*(a1 + 32) action:"analysisInfoButtonPressed:" forControlEvents:64];
  v87 = [UIVibrancyEffect _effectForBlurEffect:v10 vibrancyStyle:102];
  v36 = [[UIVisualEffectView alloc] initWithEffect:v87];
  [v36 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v36 setUserInteractionEnabled:0];
  v37 = _SSScreenshotsRedesign2025Enabled();
  v38 = *(*(a1 + 32) + 26);
  v90 = v10;
  if (v37)
  {
    [v38 addSubview:v36];
  }

  else
  {
    v39 = [v38 contentView];
    [v39 addSubview:v36];
  }

  v40 = objc_alloc_init(UILabel);
  v41 = *(a1 + 32);
  v42 = *(v41 + 50);
  *(v41 + 50) = v40;

  v43 = *(*(a1 + 32) + 50);
  v44 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
  [v43 setFont:v44];

  [*(*(a1 + 32) + 50) setTextAlignment:1];
  [*(*(a1 + 32) + 50) setNumberOfLines:0];
  v45 = [v36 contentView];
  [v45 addSubview:*(*(a1 + 32) + 50)];

  v46 = [*(a1 + 32) _bottomBarContentView];
  [v46 addSubview:*(*(a1 + 32) + 58)];
  [*(*(a1 + 32) + 58) setTranslatesAutoresizingMaskIntoConstraints:0];
  [*(*(a1 + 32) + 50) setTranslatesAutoresizingMaskIntoConstraints:0];
  [*(*(a1 + 32) + 50) setAdjustsFontForContentSizeCategory:1];
  [*(*(a1 + 32) + 50) setMaximumContentSizeCategory:UIContentSizeCategoryExtraExtraExtraLarge];
  [*(a1 + 32) bounds];
  v48 = v47 + -32.0 + -64.0 + -16.0;
  v49 = [*(*(a1 + 32) + 58) leadingAnchor];
  v50 = [v46 leadingAnchor];
  [v49 constraintEqualToAnchor:v50 constant:20.0];
  v52 = v51 = v36;
  [*(a1 + 32) setVsButtonLeadingConstraint:v52];

  v86 = [*(a1 + 32) vsButtonLeadingConstraint];
  v91[0] = v86;
  v85 = [*(*(a1 + 32) + 58) topAnchor];
  v84 = [v46 topAnchor];
  v83 = [v85 constraintEqualToAnchor:v84 constant:20.0];
  v91[1] = v83;
  v82 = [*(*(a1 + 32) + 50) centerXAnchor];
  v81 = [v46 centerXAnchor];
  v80 = [v82 constraintEqualToAnchor:v81];
  v91[2] = v80;
  v79 = [*(*(a1 + 32) + 50) centerYAnchor];
  v78 = [*(*(a1 + 32) + 58) centerYAnchor];
  v77 = [v79 constraintGreaterThanOrEqualToAnchor:v78];
  v91[3] = v77;
  v76 = [*(*(a1 + 32) + 50) widthAnchor];
  v75 = [v76 constraintLessThanOrEqualToConstant:v48];
  v91[4] = v75;
  v73 = [*(*(a1 + 32) + 50) topAnchor];
  v72 = [v46 topAnchor];
  v70 = [v73 constraintGreaterThanOrEqualToAnchor:v72];
  v91[5] = v70;
  v69 = [v51 contentView];
  v68 = [v69 topAnchor];
  v67 = [v46 topAnchor];
  v66 = [v68 constraintEqualToAnchor:v67];
  v91[6] = v66;
  v65 = [v51 contentView];
  v64 = [v65 leadingAnchor];
  v63 = [v46 leadingAnchor];
  v62 = [v64 constraintEqualToAnchor:v63];
  v91[7] = v62;
  v74 = v51;
  v53 = [v51 contentView];
  [v53 bottomAnchor];
  v54 = v71 = v46;
  v55 = [v46 bottomAnchor];
  v56 = [v54 constraintEqualToAnchor:v55];
  v91[8] = v56;
  v57 = [v51 contentView];
  v58 = [v57 trailingAnchor];
  v59 = [v46 trailingAnchor];
  v60 = [v58 constraintEqualToAnchor:v59];
  v91[9] = v60;
  v61 = [NSArray arrayWithObjects:v91 count:10];
  [NSLayoutConstraint activateConstraints:v61];

  [*(*(a1 + 32) + 58) setAlpha:0.0];
  [*(a1 + 32) _updateSubviewOrdering];
  [*(a1 + 32) addOrRemoveActionInfoViewIfNecessary];
  [*(a1 + 32) setIsPerformingFullscreenSetup:0];
}

void sub_10003F308(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10003F5A8(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [*(a1 + 32) activeScreenshotView];
  if (v3 == v5)
  {
    v4 = *(a1 + 40);
  }

  else
  {
    v4 = 0;
  }

  [v5 setInteractionMode:v4];
}

id sub_10003F620(uint64_t a1)
{
  v1 = 1.0;
  if (*(a1 + 40))
  {
    v1 = 0.0;
  }

  return [*(a1 + 32) setAlpha:v1];
}

id *sub_10003F63C(id *result, int a2)
{
  if (a2)
  {
    return [result[4] setHidden:*(result + 40)];
  }

  return result;
}

void sub_10003FA90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10003FAD8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [*(WeakRetained + 58) setAlpha:*(a1 + 40)];
  [WeakRetained _updateInstructionLabelIfNecessaryAnimated:1];
}

void sub_100040AC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100040AE8(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v18 = [WeakRetained leadingAnchor];
  v17 = [a1[4] leadingAnchor];
  v16 = [v18 constraintEqualToAnchor:v17];
  v20[0] = v16;
  v15 = objc_loadWeakRetained(a1 + 6);
  v14 = [v15 trailingAnchor];
  v13 = [a1[4] trailingAnchor];
  v12 = [v14 constraintEqualToAnchor:v13];
  v20[1] = v12;
  v2 = objc_loadWeakRetained(a1 + 6);
  v3 = [v2 topAnchor];
  v4 = [a1[5] topAnchor];
  [a1[5] safeAreaInsets];
  v5 = [v3 constraintEqualToAnchor:v4 constant:?];
  v20[2] = v5;
  v6 = objc_loadWeakRetained(a1 + 6);
  v7 = [v6 bottomAnchor];
  v8 = [a1[5] safeAreaLayoutGuide];
  v9 = [v8 bottomAnchor];
  v10 = [v7 constraintEqualToAnchor:v9];
  v20[3] = v10;
  v11 = [NSArray arrayWithObjects:v20 count:4];
  [NSLayoutConstraint activateConstraints:v11];
}

id sub_100042614(uint64_t a1)
{
  v2 = [*(a1 + 32) editMode] == 1 && objc_msgSend(*(a1 + 32), "state") == 1;
  v3 = [*(a1 + 32) currentScreenshot];
  v4 = [v3 pdfData];

  if (v4)
  {
    v5 = v2;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  [*(*(a1 + 32) + 146) setAlpha:v5];
  v7 = *(*(a1 + 32) + 98);

  return [v7 setAlpha:v6];
}

void sub_100045290(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000452AC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = *(a1 + 56);
    *(WeakRetained + 186) = *(a1 + 40);
    *(WeakRetained + 202) = v3;
    v4 = WeakRetained;
    [WeakRetained layoutIfNeeded];
    WeakRetained = v4;
  }
}

Class sub_100046AC4(uint64_t a1)
{
  v4[0] = 0;
  if (!qword_1000D4AD0)
  {
    v4[1] = _NSConcreteStackBlock;
    v4[2] = 3221225472;
    v4[3] = sub_100046C08;
    v4[4] = &unk_1000B9FE0;
    v4[5] = v4;
    v5 = off_1000BAE68;
    v6 = 0;
    qword_1000D4AD0 = _sl_dlopen();
    v2 = v4[0];
    if (qword_1000D4AD0)
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
  result = objc_getClass("AKToolbarView");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_100074C48();
  }

  qword_1000D4AC8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_100046C08()
{
  result = _sl_dlopen();
  qword_1000D4AD0 = result;
  return result;
}

void sub_100046F68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100046F8C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _relevantTraitsDidChange];
}

uint64_t sub_1000476F8(uint64_t a1)
{
  v2 = [*(a1 + 32) _screenshotsView];
  [v2 removeScreenshots:*(a1 + 40)];

  if (*(a1 + 56) == 1)
  {
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_1000477D0;
    v5[3] = &unk_1000BA068;
    v5[4] = *(a1 + 32);
    [UIView performWithoutAnimation:v5];
    v3 = [*(a1 + 32) _screenshotsView];
    [v3 layoutIfNeeded];
  }

  result = *(a1 + 48);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_1000477D0(uint64_t a1)
{
  [*(a1 + 32) _updateBarButtonItemPositionsAnimated:0 force:0];
  v2 = [*(*(a1 + 32) + 16) navigationBar];
  [v2 layoutIfNeeded];
}

uint64_t sub_10004783C(uint64_t a1)
{
  v2 = [*(a1 + 32) _screenshotsView];
  [v2 setCurrentScreenshotCropHandlesFadedOut:0];

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = *(a1 + 40);
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v10 + 1) + 8 * v7) removeFromSuperview];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000479B8;
  block[3] = &unk_1000BA068;
  block[4] = *(a1 + 32);
  dispatch_async(&_dispatch_main_q, block);
  result = *(a1 + 48);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_1000479C8(uint64_t a1)
{
  if (*(a1 + 40) == 2)
  {
    v2 = [*(a1 + 32) _screenshotsView];
    [v2 setState:0];
  }

  v3 = [*(a1 + 32) _screenshotsView];
  [v3 setCurrentScreenshotCropHandlesFadedOut:1];

  v4 = [*(a1 + 32) _screenshotsView];
  [v4 layoutIfNeeded];
}

void sub_1000483E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  objc_destroyWeak(va);
  objc_destroyWeak((v15 - 104));
  _Unwind_Resume(a1);
}

void sub_100048430(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained becomeFirstResponder];
}

void sub_100048470(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained becomeFirstResponder];

  v3 = objc_loadWeakRetained((a1 + 32));
  [v3 _undoPushed];
}

void sub_1000484D0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained becomeFirstResponder];

  v3 = objc_loadWeakRetained((a1 + 32));
  [v3 _redoPushed];
}

void sub_1000487C0(uint64_t a1)
{
  v2 = os_log_create("com.apple.screenshotservices", "Screenshot");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "show full-screen tip after delay", v4, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _showFullScreenTip];
}

void sub_1000497F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, id a29)
{
  objc_destroyWeak(&a29);
  objc_destroyWeak((v29 - 136));
  _Unwind_Resume(a1);
}

id sub_100049844(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained _screenshotsView];
  v3 = [v2 createUndoMenu];

  return v3;
}

void sub_1000498A8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained annotationButtonPressed];
}

void sub_100049E64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v22 + 32));
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100049EC0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _deletePushed];
}

void sub_100049F00(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _performClose];
}

void sub_10004AF1C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_10004AF38(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    [WeakRetained presentViewController:WeakRetained[21] animated:1 completion:0];
    v3 = [v4[21] popoverPresentationController];
    [v3 setBarButtonItem:*(a1 + 32)];
    [v3 _setIgnoreBarButtonItemSiblings:1];

    WeakRetained = v4;
  }
}

void sub_10004B1BC(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);

    [v3 _actuallyPresentShareFromBarButtonItem:v4];
  }

  else
  {
    v5 = os_log_create("com.apple.screenshotservices", "ShareSheet");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_100074D1C(a1, v5);
    }

    v6 = +[NSBundle mainBundle];
    v7 = [v6 localizedStringForKey:@"SAVE_TO_PHOTOS_FAILURE_MESSAGE" value:@"Unable to save image to Photos." table:0];

    v8 = +[NSBundle mainBundle];
    v9 = [v8 localizedStringForKey:@"OK" value:@"OK" table:0];

    v10 = [UIAlertController alertControllerWithTitle:0 message:v7 preferredStyle:1];
    v11 = [UIAlertAction actionWithTitle:v9 style:0 handler:0];
    [v10 addAction:v11];

    [*(a1 + 32) presentViewController:v10 animated:1 completion:0];
  }
}

void sub_10004B5E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10004B60C(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained becomeFirstResponder];
  v5 = [WeakRetained _screenshotsView];
  [v5 setNeedsLayout];

  if (WeakRetained)
  {
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10004B7D0;
    v10[3] = &unk_1000BAF78;
    objc_copyWeak(&v11, (a1 + 32));
    [WeakRetained[33] setDisplayLinkObserverHandler:v10];
    [WeakRetained[33] startObserver];
    objc_destroyWeak(&v11);
  }

  v6 = [WeakRetained _screenshotsView];
  v7 = [v6 editMode] == 2;

  if (v7)
  {
    [WeakRetained _exitCrop];
    v3[2](v3, &__NSArray0__struct);
  }

  else
  {
    v8 = [WeakRetained _buildDoneMenuElements];
    v12 = v8;
    v9 = [NSArray arrayWithObjects:&v12 count:1];
    v3[2](v3, v9);
  }
}

id sub_10004B7D0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained isShowingModalUI];

  if ((v3 & 1) == 0)
  {
    v4 = objc_loadWeakRetained((a1 + 32));
    v5 = [v4 _screenshotsView];
    [v5 setNeedsLayout];
  }

  return v3;
}

void sub_10004C548(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak(&STACK[0x230]);
  objc_destroyWeak(&STACK[0x260]);
  objc_destroyWeak(&STACK[0x270]);
  _Unwind_Resume(a1);
}

void sub_10004C6FC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    [WeakRetained setDismissalType:1];
    v3 = *(a1 + 40);
    [v5 commitInflightEditsIfNecessary];
    if (v3 == 1)
    {
      [v5 _dismissWithDeleteOptions:1];
      v4 = +[SSStatisticsManager sharedStatisticsManager];
      [v4 didSaveImageToPhotos];
    }

    else
    {
      [v5 _savePDFToPhotosPushed];
      [v5 _dismissWithDeleteOptions:2];
      v4 = +[SSStatisticsManager sharedStatisticsManager];
      [v4 didSavePDFImageToPhotos];
    }

    WeakRetained = v5;
  }
}

void sub_10004C7BC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v6 = WeakRetained;
    [WeakRetained setDismissalType:2];
    v6[26] = 2;
    [v6 _saveToFilesPushed:*(a1 + 40) savePDF:*(a1 + 40) ^ 1u];
    v3 = *(a1 + 40);
    v4 = +[SSStatisticsManager sharedStatisticsManager];
    v5 = v4;
    if (v3 == 1)
    {
      [v4 didSaveImageToFiles];
    }

    else
    {
      [v4 didSaveFullPagePDFToFiles];
    }

    WeakRetained = v6;
  }
}

void sub_10004C860(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained setDismissalType:5];
    v3[26] = 2;
    [v3 _saveToQuickNotePushed:1 savePDF:0];
    v2 = +[SSStatisticsManager sharedStatisticsManager];
    [v2 didSaveImageToQuickNote];

    WeakRetained = v3;
  }
}

void sub_10004C8F0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained setDismissalType:3];
    v3[26] = 1;
    [v3 _saveToFilesPushed:0 savePDF:1];
    v2 = +[SSStatisticsManager sharedStatisticsManager];
    [v2 didSaveMixedToPhotosAndFiles];

    WeakRetained = v3;
  }
}

void sub_10004C980(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained setDismissalType:4];
    v3[26] = 2;
    [v3 _saveToQuickNotePushed:1 savePDF:1];
    v2 = +[SSStatisticsManager sharedStatisticsManager];
    [v2 didSaveMixedToQuickNoteAndFiles];

    WeakRetained = v3;
  }
}

void sub_10004CA10(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained setDismissalType:2];
    v3[26] = 2;
    [v3 _saveToFilesPushed:1 savePDF:1];
    v2 = +[SSStatisticsManager sharedStatisticsManager];
    [v2 didSaveMixedAllToFiles];

    WeakRetained = v3;
  }
}

void sub_10004CAA0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setDismissalType:7];
  [WeakRetained _exportVellumPDF];
}

void sub_10004CAEC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _sendToDeveloper];
}

void sub_10004CB2C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    [WeakRetained setDismissalType:6];
    v2 = [v5 delegate];
    v3 = [v5 visibleScreenshots];
    [v2 screenshotsViewController:v5 requestsCopyDeleteForScreenshots:v3 deleteOptions:2 forReason:2];

    v4 = +[SSStatisticsManager sharedStatisticsManager];
    [v4 didCopyDeleteScreenshots];

    WeakRetained = v5;
  }
}

void sub_10004CBD8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    [WeakRetained setDismissalType:8];
    v2 = [v5 delegate];
    v3 = [v5 visibleScreenshots];
    [v2 screenshotsViewController:v5 requestsDeleteForScreenshots:v3 deleteOptions:2 forReason:1];

    v4 = +[SSStatisticsManager sharedStatisticsManager];
    [v4 didDeleteScreenshots];

    WeakRetained = v5;
  }
}

void sub_10004D200(uint64_t a1, void *a2)
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10004D308;
  v8[3] = &unk_1000BAFF0;
  v8[4] = *(a1 + 32);
  v3 = a2;
  [v3 enumerateObjectsUsingBlock:v8];
  v4 = [v3 mutableCopy];
  v5 = *(a1 + 32);
  v6 = *(v5 + 224);
  *(v5 + 224) = v4;

  [*(*(a1 + 32) + 224) removeObjectsInArray:*(*(a1 + 32) + 216)];
  v7 = [[UIDocumentPickerViewController alloc] initForExportingURLs:v3 asCopy:1];

  [v7 setDelegate:*(a1 + 32)];
  [*(a1 + 32) presentViewController:v7 animated:1 completion:0];
}

void sub_10004D308(uint64_t a1, void *a2)
{
  v7 = a2;
  if ([v7 startAccessingSecurityScopedResource])
  {
    v3 = *(*(a1 + 32) + 216);
    if (v3)
    {
      [v3 addObject:v7];
    }

    else
    {
      v4 = [NSMutableArray arrayWithObject:v7];
      v5 = *(a1 + 32);
      v6 = *(v5 + 216);
      *(v5 + 216) = v4;
    }
  }
}

void sub_10004D39C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!v3)
  {
    v3 = +[NSArray array];
  }

  v4 = *(a1 + 40);
  v6 = v3;
  if (*(a1 + 48) == 1)
  {
    v5 = [v3 arrayByAddingObjectsFromArray:*(a1 + 32)];
    (*(v4 + 16))(v4, v5);
  }

  else
  {
    (*(v4 + 16))(v4);
  }
}

void sub_10004D4CC(id a1, NSURL *a2, unint64_t a3, BOOL *a4)
{
  v4 = a2;
  v5 = +[NSFileManager defaultManager];
  [v5 removeItemAtURL:v4 error:0];
}

void sub_10004D760(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  if (v15)
  {
    objc_destroyWeak(v16);
  }

  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10004D788(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) delegate];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10004D848;
  v8[3] = &unk_1000BB0C8;
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  v9 = v3;
  v10 = v5;
  v8[4] = v6;
  v7 = v3;
  [v4 dismissRequestedFromScreenshotsViewController:v6 completion:v8];
}

uint64_t sub_10004D848(uint64_t a1)
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = [*(a1 + 32) visibleScreenshots];
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    do
    {
      v6 = 0;
      do
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v10 + 1) + 8 * v6);
        v8 = +[SSSScreenshotManager sharedScreenshotManager];
        [v8 removeTemporaryScreenshotLocation:v7 deleteOptions:*(a1 + 48)];

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }

  return sub_10002B474(*(a1 + 40));
}

void sub_10004D988(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _saveImages:*(a1 + 32) toQuickNoteWithDismissalCompletionBlock:0];
}

void sub_10004DC2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10004DC44(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    v6 = os_log_create("com.apple.screenshotservices", "Screenshot");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_100074E3C(a1, v5, v6);
    }
  }

  if (a2)
  {
    v7 = os_log_create("com.apple.screenshotservices", "Screenshot");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = [*(a1 + 32) count];
      v9 = 134217984;
      v10 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%lu screenshots sent to Quick Note", &v9, 0xCu);
    }
  }
}

void sub_10004DD70(uint64_t a1, void *a2)
{
  v3 = [a2 object];
  NSClassFromString(@"ICSystemPaperExtensionHostViewController");
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v5 = os_log_create("com.apple.screenshotservices", "Screenshot");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Quick Note UI dismissed", v6, 2u);
    }

    sub_10002B474(*(a1 + 32));
  }
}

void sub_10004E5FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, id a30)
{
  objc_destroyWeak((v30 + 32));
  objc_destroyWeak(&a30);
  objc_destroyWeak((v31 - 160));
  _Unwind_Resume(a1);
}

void sub_10004E654(uint64_t a1)
{
  if ((*(a1 + 40) & 1) != 0 || *(a1 + 41) == 1)
  {
    v2 = [*(a1 + 32) currentScreenshot];

    if (v2)
    {
      v3 = [*(a1 + 32) delegate];
      v4 = *(a1 + 32);
      v5 = [v4 currentScreenshot];
      v12 = v5;
      v6 = [NSArray arrayWithObjects:&v12 count:1];
      [v3 screenshotsViewController:v4 requestsDeleteForScreenshots:v6 deleteOptions:2 forReason:1];
    }
  }

  else
  {
    v7 = [*(a1 + 32) _currentScreenshotView];
    v8 = [v7 _internalPDFView];
    v11 = [v8 currentPage];

    v9 = [*(a1 + 32) currentScreenshot];
    [v9 deletePDFPage:v11];

    v10 = [*(a1 + 32) _screenshotsView];
    [v10 setNeedsLayout];

    if (_SSScreenshotsRedesign2025Enabled())
    {
      [*(a1 + 32) _updateUndoRedoEnabledState];
      [*(a1 + 32) _updateBarButtonItemPositionsAnimated:0 force:1];
    }
  }
}

void sub_10004E808(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    [WeakRetained becomeFirstResponder];
    (*(*(a1 + 32) + 16))();
    v3 = [v4 _screenshotsView];
    [v3 setNeedsLayout];

    WeakRetained = v4;
  }
}

void sub_10004E880(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained[30];
    WeakRetained[30] = 0;
    v4 = WeakRetained;

    [v4 becomeFirstResponder];
    v3 = [v4 _screenshotsView];
    [v3 setNeedsLayout];

    WeakRetained = v4;
  }
}

void sub_10004E8FC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained presentViewController:WeakRetained[30] animated:1 completion:0];
    WeakRetained = v2;
  }
}

void sub_10004F06C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10004F094(uint64_t a1, uint64_t a2, char a3)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v8 = WeakRetained;
    v5 = [WeakRetained _screenshotsView];
    [v5 setNeedsLayout];

    if ((a3 & 1) != 0 || ([v8[21] presentingViewController], (v6 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      WeakRetained = v8;
      if (*(v8 + 177))
      {
        goto LABEL_7;
      }

      *(v8 + 177) = 1;
      [v8 _cancelSharing:1 completion:0];
      v7 = [v8 _screenshotsView];
      [v7 setIsSharing:0];

      [v8[21] setCompletionWithItemsHandler:0];
      v6 = v8[21];
      v8[21] = 0;
    }

    WeakRetained = v8;
  }

LABEL_7:
}

void sub_10004F580(uint64_t a1)
{
  [*(a1 + 32) _updateBarButtonItemPositionsAnimated:0 force:0];
  v3 = [*(a1 + 32) _screenshotsView];
  v2 = [v3 topBar];
  [v2 layoutIfNeeded];
}

void sub_10004F5F0(uint64_t a1)
{
  [*(*(a1 + 32) + 168) _cancel];
  *(*(a1 + 32) + 177) = 0;
  v2 = [*(a1 + 32) _screenshotsView];
  [v2 setNeedsLayout];

  v3 = [*(a1 + 32) delegate];
  [v3 activityViewControllerDismissedFromScreenshotsViewController:*(a1 + 32)];
}

uint64_t sub_10004F680(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

void sub_10004F794(uint64_t a1, char a2)
{
  v4 = [*(*(a1 + 32) + 168) presentingViewController];
  v6 = v4;
  if (!v4)
  {
    goto LABEL_4;
  }

  v5 = *(a1 + 48);
  if (a2)
  {
    [v4 dismissViewControllerAnimated:v5 completion:0];
LABEL_4:
    sub_10002B474(*(a1 + 40));
    goto LABEL_6;
  }

  [v4 dismissViewControllerAnimated:v5 completion:*(a1 + 40)];
LABEL_6:
}

void sub_10004FA60(uint64_t a1, int a2)
{
  if (a2)
  {
    [*(a1 + 32) presentViewController:*(*(a1 + 32) + 168) animated:1 completion:0];
    v3 = [*(*(a1 + 32) + 168) popoverPresentationController];
    v4 = [*(a1 + 32) _screenshotsView];
    [v4 screenshotsExtentRect];
    [v3 setSourceRect:?];

    v5 = [*(*(a1 + 32) + 168) popoverPresentationController];
    v6 = [*(a1 + 32) view];
    [v5 setSourceView:v6];

    v14 = [*(*(a1 + 32) + 168) popoverPresentationController];
    [v14 setPermittedArrowDirections:2];
  }

  else
  {
    v7 = os_log_create("com.apple.screenshotservices", "ShareSheet");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_100074D1C(a1, v7);
    }

    v8 = +[NSBundle mainBundle];
    v9 = [v8 localizedStringForKey:@"SAVE_TO_PHOTOS_FAILURE_MESSAGE" value:@"Unable to save image to Photos." table:0];

    v10 = +[NSBundle mainBundle];
    v11 = [v10 localizedStringForKey:@"OK" value:@"OK" table:0];

    v12 = [UIAlertController alertControllerWithTitle:0 message:v9 preferredStyle:1];
    v13 = [UIAlertAction actionWithTitle:v11 style:0 handler:0];
    [v12 addAction:v13];

    [*(a1 + 32) presentViewController:v12 animated:1 completion:0];
  }
}

void sub_1000500D0(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 192);
  if (!v2)
  {
    v18 = 0;
    v19 = &v18;
    v20 = 0x2050000000;
    v3 = qword_1000D4AF0;
    v21 = qword_1000D4AF0;
    if (!qword_1000D4AF0)
    {
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_1000531E0;
      v17[3] = &unk_1000B9FA8;
      v17[4] = &v18;
      sub_1000531E0(v17);
      v3 = v19[3];
    }

    v4 = v3;
    _Block_object_dispose(&v18, 8);
    v5 = [[v3 alloc] initForContext:1 betaApplicationIdentifier:*(a1 + 40)];
    v6 = *(a1 + 32);
    v7 = *(v6 + 192);
    *(v6 + 192) = v5;

    [*(*(a1 + 32) + 192) initiateFeedbackSnapshot];
    v2 = *(*(a1 + 32) + 192);
  }

  [v2 associateScreenshotImages:*(a1 + 48)];
  [*(*(a1 + 32) + 192) setDelegate:?];
  v8 = [*(*(a1 + 32) + 192) createFeedbackViewControllerForCurrentState];
  v9 = *(a1 + 32);
  v10 = *(v9 + 184);
  *(v9 + 184) = v8;

  v11 = +[NSBundle mainBundle];
  v12 = [v11 localizedStringForKey:@"BACK" value:@"Back" table:0];

  v13 = [[UIBarButtonItem alloc] initWithTitle:v12 style:0 target:*(a1 + 32) action:"dismissTFViewController"];
  v14 = [*(*(a1 + 32) + 184) navigationItem];
  [v14 setLeftBarButtonItem:v13];

  v15 = [*(a1 + 32) _screenshotsView];
  [v15 setIsSharing:1];

  v16 = [[UINavigationController alloc] initWithRootViewController:*(*(a1 + 32) + 184)];
  [v16 setModalPresentationStyle:1];
  [*(a1 + 32) presentViewController:v16 animated:1 completion:0];
}

void sub_100050300(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100050398(uint64_t a1)
{
  v2 = [*(a1 + 32) _screenshotsView];
  [v2 setIsSharing:0];

  v3 = [*(a1 + 32) _screenshotsView];
  [v3 setNeedsLayout];
}

void sub_1000504F8(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 dismissRequestedFromScreenshotsViewController:*(a1 + 32) completion:0];
}

void sub_100050B88(uint64_t a1)
{
  v2 = [*(a1 + 32) _screenshotsView];
  [v2 setShowsShadow:*(a1 + 40)];
}

void sub_100050FF0(uint64_t a1)
{
  v2 = [*(a1 + 32) _currentScreenshotView];
  [v2 commitInflightEdits];

  v3 = [*(a1 + 32) _screenshotsView];
  [v3 doneCrop];

  v4 = [*(a1 + 32) _screenshotsView];
  [v4 setEditMode:1];

  [*(a1 + 32) _updateBarButtonItemPositionsAnimated:0 force:0];
  [*(a1 + 32) becomeFirstResponder];
  v5 = [*(a1 + 32) _screenshotsView];
  [v5 setNeedsLayout];
}

void sub_1000517E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location)
{
  objc_destroyWeak((v22 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100051808(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  *(WeakRetained + 299) = *(a1 + 56);
  *(WeakRetained + 300) = *(a1 + 57);
  *(WeakRetained + 301) = *(a1 + 58);
  v2 = [*(a1 + 32) analysisButtonImageForCurrentState];
  [*(WeakRetained + 20) setImage:v2];

  v3 = *(a1 + 48);
  v4 = [WeakRetained _screenshotsView];
  [v4 setInteractionMode:v3];

  [WeakRetained updatePrimaryAction];
}

void *sub_100052FC4(uint64_t a1)
{
  v2 = sub_100053014();
  result = dlsym(v2, "SYIsQuickNoteAvailable");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_1000D4AD8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_100053014()
{
  v3[0] = 0;
  if (!qword_1000D4AE0)
  {
    v3[1] = _NSConcreteStackBlock;
    v3[2] = 3221225472;
    v3[3] = sub_100053114;
    v3[4] = &unk_1000B9FE0;
    v3[5] = v3;
    v4 = off_1000BB278;
    v5 = 0;
    qword_1000D4AE0 = _sl_dlopen();
  }

  v0 = qword_1000D4AE0;
  v1 = v3[0];
  if (!qword_1000D4AE0)
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

uint64_t sub_100053114()
{
  result = _sl_dlopen();
  qword_1000D4AE0 = result;
  return result;
}

Class sub_100053188(uint64_t a1)
{
  sub_100053014();
  result = objc_getClass("SYLinkContextClient");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_1000D4AE8 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = sub_100074960();
    return sub_1000531E0(v3);
  }

  return result;
}

Class sub_1000531E0(uint64_t a1)
{
  v4[0] = 0;
  if (!qword_1000D4AF8)
  {
    v4[1] = _NSConcreteStackBlock;
    v4[2] = 3221225472;
    v4[3] = sub_100053324;
    v4[4] = &unk_1000B9FE0;
    v4[5] = v4;
    v5 = off_1000BB290;
    v6 = 0;
    qword_1000D4AF8 = _sl_dlopen();
    v2 = v4[0];
    if (qword_1000D4AF8)
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
  result = objc_getClass("TFFeedbackSession");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_100074EFC();
  }

  qword_1000D4AF0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_100053324()
{
  result = _sl_dlopen();
  qword_1000D4AF8 = result;
  return result;
}

__n128 sub_10005385C@<Q0>(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>)
{
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *a1 = a2;
  *(a1 + 8) = a3;
  result = *a1;
  *(a1 + 16) = CGPointZero;
  *(a1 + 32) = result;
  return result;
}

id sub_1000538E8(double a1, double a2, double a3, double a4)
{
  v8 = +[NSMutableString string];
  objc_msgSend(v8, "appendFormat:", @"<(%.1f,"), *&a1;
  [v8 appendFormat:@"%.1f"], *&a2);
  [v8 appendFormat:@"@ %.1fx%.1f>", *&a3, *&a4];

  return v8;
}

id sub_10005398C(CGSize *a1)
{
  v2 = [NSMutableString stringWithString:@"<"];
  v3 = sub_1000538E8(a1[1].width, a1[1].height, a1[2].width, a1[2].height);
  v4 = [NSString stringWithFormat:@"rect: %@ ", v3];
  [v2 appendString:v4];

  v5 = NSStringFromCGSize(*a1);
  v6 = [NSString stringWithFormat:@"total size: %@", v5];
  [v2 appendString:v6];

  [v2 appendString:@">"];

  return v2;
}

uint64_t sub_100053AC4(uint64_t a1, unint64_t a2)
{
  if (a2 <= 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = a2;
  }

  if (a1)
  {
    return 2;
  }

  else
  {
    return v2;
  }
}

id sub_1000547CC(uint64_t a1)
{
  result = [*(a1 + 32) willSoonUnparentChildDittoRootViewController];
  if ((result & 1) == 0)
  {
    v3 = *(*(a1 + 32) + 16);

    return [v3 performProgrammaticDismiss];
  }

  return result;
}

uint64_t sub_100054E6C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_100054E7C()
{
  result = os_variant_has_internal_ui();
  if (result)
  {
    v1 = [objc_opt_self() standardUserDefaults];
    v2 = String._bridgeToObjectiveC()();
    v3 = [v1 BOOLForKey:v2];

    return v3;
  }

  return result;
}

void *sub_100054F18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_100055840(&qword_1000D4048);
  type metadata accessor for Tips.Action();
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_10008F5C0;
  v9 = objc_opt_self();
  v10 = [v9 mainBundle];
  v20._object = 0x80000001000AF010;
  v11._countAndFlagsBits = 0xD000000000000024;
  v11._object = 0x80000001000AEFE0;
  v20._countAndFlagsBits = 0xD000000000000014;
  v12._countAndFlagsBits = 0;
  v12._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v11, 0, v10, v12, v20);

  v13 = swift_allocObject();
  v13[2] = a1;
  v13[3] = a2;
  v13[4] = a3;
  v13[5] = a4;
  sub_100054E6C(a1);
  sub_100054E6C(a3);
  sub_1000558BC();
  Tips.Action.init<A>(id:title:perform:)();
  v14 = [v9 mainBundle];
  v21._object = 0x80000001000AF060;
  v15._countAndFlagsBits = 0xD000000000000023;
  v15._object = 0x80000001000AF030;
  v16._countAndFlagsBits = 0;
  v16._object = 0xE000000000000000;
  v21._countAndFlagsBits = 0xD000000000000013;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v15, 0, v14, v16, v21);

  v17 = swift_allocObject();
  v17[2] = a1;
  v17[3] = a2;
  v17[4] = a3;
  v17[5] = a4;
  sub_100054E6C(a1);
  sub_100054E6C(a3);
  Tips.Action.init<A>(id:title:perform:)();
  v18 = sub_100055990(v8);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return v18;
}

uint64_t sub_100055334@<X0>(uint64_t *a1@<X8>)
{
  sub_100055D58();
  result = Tip.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

size_t sub_100055374(size_t a1, int64_t a2, char a3)
{
  result = sub_100055394(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_100055394(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100055840(&qword_1000D4048);
  v10 = *(type metadata accessor for Tips.Action() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for Tips.Action() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t sub_10005556C()
{
  v0 = sub_100055840(&qword_1000D4070);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v15[-1] - v2;
  v4 = sub_100055840(&qword_1000D4078);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15[-1] - v6;
  if (os_variant_has_internal_ui() && (v8 = [objc_opt_self() standardUserDefaults], v9 = String._bridgeToObjectiveC()(), v10 = objc_msgSend(v8, "BOOLForKey:", v9), v8, v9, v10))
  {
    v16 = type metadata accessor for Tips.IgnoresDisplayFrequency();
    v17 = &protocol witness table for Tips.IgnoresDisplayFrequency;
    sub_100055E20(v15);
    Tips.IgnoresDisplayFrequency.init(_:)();
  }

  else
  {
    v16 = type metadata accessor for Tips.MaxDisplayCount();
    v17 = &protocol witness table for Tips.MaxDisplayCount;
    sub_100055E20(v15);
    Tips.MaxDisplayCount.init(_:)();
  }

  static Tips.OptionsBuilder.buildExpression(_:)();
  sub_100055E84(v15, &qword_1000D4080);
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  static Tips.OptionsBuilder.buildPartialBlock<A>(first:)();
  v15[0] = v4;
  v15[1] = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v12 = static Tips.OptionsBuilder.buildFinalResult<A>(_:)();
  (*(v1 + 8))(v3, v0);
  (*(v5 + 8))(v7, v4);
  return v12;
}

uint64_t sub_100055840(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_10005588C()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    return v1();
  }

  return result;
}

unint64_t sub_1000558BC()
{
  result = qword_1000D4050;
  if (!qword_1000D4050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D4050);
  }

  return result;
}

uint64_t sub_100055910()
{
  if (*(v0 + 16))
  {
  }

  if (*(v0 + 32))
  {
  }

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100055960()
{
  v1 = *(v0 + 32);
  if (v1)
  {
    return v1();
  }

  return result;
}

void *sub_100055990(uint64_t a1)
{
  v2 = type metadata accessor for Tips.Action();
  v3 = *(v2 - 8);
  (__chkstk_darwin)();
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_100055840(&qword_1000D4068);
  v6 = (__chkstk_darwin)();
  v29 = (&v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v6);
  v9 = &v24 - v8;
  v31 = &_swiftEmptyArrayStorage;
  sub_100055374(0, 0, 0);
  v10 = v31;
  v28 = *(a1 + 16);
  if (v28)
  {
    v11 = 0;
    v13 = *(v3 + 16);
    v12 = v3 + 16;
    v14 = *(v12 + 56);
    v26 = (*(v12 + 64) + 32) & ~*(v12 + 64);
    v27 = v13;
    v15 = a1 + v26;
    v24 = (v12 + 16);
    v25 = v14;
    do
    {
      v16 = v29;
      v17 = *(v30 + 48);
      *v29 = v11;
      v18 = v12;
      v27(v16 + v17, v15, v2);
      sub_100055DAC(v16, v9);
      Tips.Action.with(index:)();
      sub_100055E84(v9, &qword_1000D4068);
      v31 = v10;
      v19 = v2;
      v21 = v10[2];
      v20 = v10[3];
      if (v21 >= v20 >> 1)
      {
        sub_100055374(v20 > 1, v21 + 1, 1);
        v10 = v31;
      }

      ++v11;
      v10[2] = v21 + 1;
      v22 = v25;
      (*v24)(v10 + v26 + v21 * v25, v5, v19);
      v15 += v22;
      v2 = v19;
      v12 = v18;
    }

    while (v28 != v11);
  }

  return v10;
}

unint64_t sub_100055C14()
{
  result = qword_1000D4058;
  if (!qword_1000D4058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D4058);
  }

  return result;
}

uint64_t sub_100055C74(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 sub_100055C8C(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_100055C98(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_100055CF4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

unint64_t sub_100055D58()
{
  result = qword_1000D4060;
  if (!qword_1000D4060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D4060);
  }

  return result;
}

uint64_t sub_100055DAC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100055840(&qword_1000D4068);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t *sub_100055E20(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_100055E84(uint64_t a1, uint64_t *a2)
{
  v3 = sub_100055840(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

Swift::Void __swiftcall UIView._sss_setGlassBackground()()
{
  v0 = type metadata accessor for _Glass._GlassVariant();
  __chkstk_darwin(v0 - 8);
  static _Glass._GlassVariant.regular.getter();
  v1[3] = type metadata accessor for _Glass();
  v1[4] = &protocol witness table for _Glass;
  sub_100055E20(v1);
  _Glass.init(_:smoothness:)();
  UIView._background.setter();
}

Swift::Void __swiftcall UIView._sss_setConcentricCornerMaskingConfiguration()()
{
  v0 = sub_100055840(&qword_1000D4088);
  __chkstk_darwin(v0 - 8);
  v2 = &v8 - v1;
  v3 = sub_100055840(&qword_1000D4090);
  __chkstk_darwin(v3 - 8);
  v5 = &v8 - v4;
  v6 = type metadata accessor for _UICornerMaskingConfiguration.CornerStyle();
  (*(*(v6 - 8) + 56))(v2, 1, 1, v6);
  static _UICornerMaskingConfiguration.containerConcentric(symmetric:fallbackStyle:)();
  sub_1000561A4(v2);
  v7 = type metadata accessor for _UICornerMaskingConfiguration();
  (*(*(v7 - 8) + 56))(v5, 0, 1, v7);
  UIView.cornerMaskingConfiguration.setter();
}

uint64_t sub_1000561A4(uint64_t a1)
{
  v2 = sub_100055840(&qword_1000D4088);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100056380@<X0>(uint64_t a1@<X8>)
{
  sub_100055840(&qword_1000D40A0);
  sub_100057608(&qword_1000D40E8, &qword_1000D40A0);
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  if (v9[4] == v9[0])
  {
    v2 = sub_100055840(&qword_1000D40A8);
    return (*(*(v2 - 8) + 56))(a1, 1, 1, v2);
  }

  else
  {
    v4 = dispatch thunk of Collection.subscript.read();
    v6 = v5;
    v7 = sub_100055840(&qword_1000D40A8);
    v8 = *(v7 - 8);
    (*(v8 + 16))(a1, v6, v7);
    v4(v9, 0);
    return (*(v8 + 56))(a1, 0, 1, v7);
  }
}

uint64_t sub_100056594(void *a1, uint64_t a2)
{
  v118 = a2;
  v3 = *a1;
  v103 = type metadata accessor for CanvasElementAutoresizeBehavior();
  __chkstk_darwin(v103);
  v104 = &v86 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100055840(&qword_1000D40B8);
  __chkstk_darwin(v5 - 8);
  v102 = &v86 - v6;
  v7 = sub_100055840(&qword_1000D40C0);
  __chkstk_darwin(v7 - 8);
  v115 = &v86 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v100 = &v86 - v10;
  v11 = type metadata accessor for RectanglePathSource();
  __chkstk_darwin(v11 - 8);
  v95 = &v86 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for ShapeType();
  v116 = *(v13 - 8);
  v117 = v13;
  __chkstk_darwin(v13);
  v113 = &v86 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v114 = &v86 - v16;
  v92 = type metadata accessor for CanvasElementFlags();
  v91 = *(v92 - 8);
  __chkstk_darwin(v92);
  v90 = &v86 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v109 = &v86 - v19;
  v20 = sub_100055840(&qword_1000D4098);
  __chkstk_darwin(v20 - 8);
  v88 = &v86 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v94 = (&v86 - v23);
  v24 = type metadata accessor for Shape();
  v111 = *(v24 - 8);
  v112 = v24;
  __chkstk_darwin(v24);
  v99 = &v86 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v101 = &v86 - v27;
  __chkstk_darwin(v28);
  v89 = &v86 - v29;
  __chkstk_darwin(v30);
  v93 = &v86 - v31;
  v32 = sub_100055840(&unk_1000D4370);
  __chkstk_darwin(v32 - 8);
  v106 = &v86 - v33;
  v34 = sub_100055840(&qword_1000D40A0);
  v35 = *(v34 - 8);
  __chkstk_darwin(v34);
  v37 = &v86 - v36;
  v105 = v3;
  v38 = *(v3 + class metadata base offset for Capsule.Ref);
  v39 = *(v38 - 8);
  __chkstk_darwin(v40);
  v42 = &v86 - v41;
  v43 = sub_100055840(&qword_1000D40A8);
  v44 = *(v43 - 8);
  __chkstk_darwin(v43);
  v96 = &v86 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v46);
  v48 = &v86 - v47;
  v110 = a1;
  Capsule.Ref.root.getter();
  dispatch thunk of ContainerCanvasElement.subelements.getter();
  v49 = *(v39 + 8);
  v97 = v38;
  v49(v42, v38);
  v50 = v43;
  v51 = v106;
  sub_100056380(v106);
  v52 = *(v35 + 8);
  v98 = v34;
  v52(v37, v34);
  v53 = (*(v44 + 48))(v51, 1, v50);
  v108 = v50;
  v107 = v44;
  if (v53 == 1)
  {
    sub_100055E84(v51, &unk_1000D4370);
LABEL_9:
    RectanglePathSource.init()();
    v71 = v114;
    ShapeType.init(_:)();
    (*(v116 + 16))(v113, v71, v117);
    v72 = type metadata accessor for Color();
    v73 = *(*(v72 - 8) + 56);
    v74 = v100;
    v73(v100, 1, 1, v72);
    v73(v115, 1, 1, v72);
    v75 = sub_100055840(&qword_1000D40C8);
    (*(*(v75 - 8) + 56))(v102, 1, 1, v75);
    v120 = &_swiftEmptyArrayStorage;
    sub_1000575C0(&qword_1000D40D0, &type metadata accessor for CanvasElementAutoresizeBehavior);
    sub_100055840(&qword_1000D40D8);
    sub_100057608(&qword_1000D40E0, &qword_1000D40D8);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v76 = v101;
    Shape.init(frame:type:strokeWidth:strokeColor:fillColor:text:textResizeBehavior:)();
    Color.init(red:green:blue:alpha:)();
    v73(v74, 0, 1, v72);
    Shape.fillColor.setter();
    v77 = Shape.strokeWidth.setter();
    __chkstk_darwin(v77);
    *(&v86 - 4) = v97;
    v78 = v118;
    *(&v86 - 3) = *(v105 + class metadata base offset for Capsule.Ref + 8);
    *(&v86 - 2) = v78;
    swift_getKeyPath();
    Capsule.Ref.subscript.getter();

    Shape.frame.setter();
    Shape.opacity.setter();
    static CanvasElementFlags.readOnly.getter();
    Shape.flags.setter();
    v80 = v111;
    v79 = v112;
    (*(v111 + 16))(v99, v76, v112);
    type metadata accessor for TaggedCanvasElement();
    sub_1000575C0(&qword_1000D47F0, &type metadata accessor for TaggedCanvasElement);

    v81 = v96;
    SharedTagged_10.init<A>(_:_:)();
    v82 = Capsule.Ref.root.modify();
    v83 = dispatch thunk of ContainerCanvasElement.subelements.modify();
    CROrderedSet.insert(_:at:)();
    (*(v107 + 8))(v81, v108);
    v83(v119, 0);
    v82(&v120, 0);
    (*(v80 + 8))(v76, v79);
    return (*(v116 + 8))(v114, v117);
  }

  (*(v44 + 32))(v48, v51, v50);
  v54 = v94;
  SharedTagged_10<>.shape.getter();
  v55 = sub_100055840(&qword_1000D40B0);
  v56 = *(v55 - 8);
  v57 = *(v56 + 48);
  if (v57(v54, 1, v55) == 1)
  {
    (*(v44 + 8))(v48, v50);
    sub_100055E84(v54, &qword_1000D4098);
    goto LABEL_9;
  }

  v87 = v57;
  v106 = v48;
  v58 = v89;
  Ref.subscript.getter();
  v94 = *(v56 + 8);
  v94(v54, v55);
  v59 = v93;
  (*(v111 + 32))(v93, v58, v112);
  v60 = v109;
  Shape.flags.getter();
  v61 = v90;
  static CanvasElementFlags.readOnly.getter();
  sub_1000575C0(&qword_1000D43A0, &type metadata accessor for CanvasElementFlags);
  v62 = v92;
  LOBYTE(v58) = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v63 = *(v91 + 8);
  v63(v61, v62);
  v63(v60, v62);
  if ((v58 & 1) == 0)
  {
    (*(v111 + 8))(v59, v112);
    (*(v107 + 8))(v106, v108);
    goto LABEL_9;
  }

  v64 = v111;
  v65 = v112;
  v66 = v88;
  v67 = v106;
  SharedTagged_10<>.shape.getter();
  v68 = v87(v66, 1, v55);
  v69 = v108;
  if (v68 == 1)
  {
    (*(v64 + 8))(v93, v65);
    (*(v107 + 8))(v67, v69);
    return sub_100055E84(v66, &qword_1000D4098);
  }

  else
  {
    v84 = v64;
    v85 = Ref.subscript.modify();
    Shape.opacity.setter();
    v85(&v120, 0);
    (*(v84 + 8))(v93, v65);
    (*(v107 + 8))(v67, v69);
    return (v94)(v66, v55);
  }
}

uint64_t sub_1000574D8@<X0>(void *a1@<X8>)
{
  result = dispatch thunk of ContainerCanvasElement.bounds.getter();
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  return result;
}

uint64_t sub_100057558(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

__n128 sub_1000575AC(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t sub_1000575C0(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100057608(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_100057558(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100057654(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100057674(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 32) = v3;
  return result;
}

__n128 sub_1000576B4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1000576C0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000576E0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

void sub_100057730(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_100057784()
{
  v0 = type metadata accessor for Logger();
  sub_1000648C0(v0, qword_1000D4C08);
  sub_100058ECC(v0, qword_1000D4C08);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100057808()
{
  v1 = *(*v0 + 88);
  v2 = type metadata accessor for Optional();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1000578C8()
{
  v0 = swift_allocObject();
  (*(*(*(*v0 + 80) - 8) + 56))(v0 + *(*v0 + 88), 1, 1);
  return v0;
}

void sub_100057B30(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4)
{
  v6 = *a4;
  swift_beginAccess();
  v7 = *(a1 + v6);
  *(a1 + v6) = a3;
  v8 = a3;
}

id sub_100057BD0()
{
  v1 = OBJC_IVAR____SSSScreenshotPaperKitPDFView____lazy_storage___toolPicker;
  v2 = *(v0 + OBJC_IVAR____SSSScreenshotPaperKitPDFView____lazy_storage___toolPicker);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____SSSScreenshotPaperKitPDFView____lazy_storage___toolPicker);
  }

  else
  {
    v4 = [objc_allocWithZone(PKToolPicker) init];
    [v4 setOverrideUserInterfaceStyle:2];
    [v4 setColorUserInterfaceStyle:1];
    [v4 _setShowsHandwritingTool:0];
    [v4 addObserver:v0];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

uint64_t sub_100057D7C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_100057D90(a1, a2);
  }

  return a1;
}

uint64_t sub_100057D90(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_100057E78(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_100057E8C(a1, a2);
  }

  return a1;
}

uint64_t sub_100057E8C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

void sub_1000580AC(double a1)
{
  v3 = OBJC_IVAR____SSSScreenshotPaperKitPDFView_vellumOpacity;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  if (v4 != a1)
  {
    v5 = OBJC_IVAR____SSSScreenshotPaperKitPDFView_isChangingVellumOpacity;
    *(v1 + OBJC_IVAR____SSSScreenshotPaperKitPDFView_isChangingVellumOpacity) = 1;
    v6 = OBJC_IVAR____SSSScreenshotPaperKitPDFView_paperDocumentView;
    swift_beginAccess();
    v7 = *(v1 + v6);
    if (v7)
    {
      v8 = v7;
      dispatch thunk of PaperDocumentView.vellumOpacity.setter();
    }

    *(v1 + v5) = 0;
  }
}

uint64_t sub_100058230()
{
  v1 = sub_100055840(&qword_1000D4170);
  __chkstk_darwin(v1 - 8);
  v3 = &v74 - v2;
  v4 = type metadata accessor for CRKeyPath();
  __chkstk_darwin(v4 - 8);
  v81 = &v74 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100055840(&qword_1000D4178);
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v83 = &v74 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = v9;
  __chkstk_darwin(v8);
  v11 = &v74 - v10;
  v12 = type metadata accessor for UUID();
  v89 = *(v12 - 8);
  v90 = v12;
  __chkstk_darwin(v12);
  v14 = &v74 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for URL();
  v91 = *(v15 - 8);
  v92 = v15;
  v16 = __chkstk_darwin(v15);
  v85 = &v74 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v20 = &v74 - v19;
  __chkstk_darwin(v18);
  v22 = &v74 - v21;
  v23 = sub_100055840(&qword_1000D4180);
  v24 = __chkstk_darwin(v23 - 8);
  v84 = &v74 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v27 = &v74 - v26;
  v28 = OBJC_IVAR____SSSScreenshotPaperKitPDFView_screenshot;
  swift_beginAccess();
  v29 = *&v0[v28];
  if (v29)
  {
    v78 = v11;
    v76 = v7;
    v79 = v6;
    v80 = v3;
    v88 = v27;
    v30 = [v29 pdfData];
    v31 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v33 = v32;

    v34 = &v0[OBJC_IVAR____SSSScreenshotPaperKitPDFView_pdfData];
    swift_beginAccess();
    v35 = *v34;
    v36 = *(v34 + 1);
    if (v33 >> 60 == 15)
    {
      if (v36 >> 60 == 15)
      {
        sub_100057D7C(*v34, *(v34 + 1));
        return sub_100057E78(v31, v33);
      }
    }

    else if (v36 >> 60 != 15)
    {
      sub_100057D90(v31, v33);
      sub_100057D90(v31, v33);
      sub_100057D7C(v35, v36);
      sub_100057D90(v31, v33);
      sub_100057D7C(v35, v36);
      v51 = sub_100062248(v31, v33, v35, v36);
      sub_100057E78(v35, v36);
      sub_100057E78(v35, v36);
      sub_100057E8C(v31, v33);
      sub_100057E78(v31, v33);
      if (v51)
      {
        sub_100057E8C(v31, v33);
        return sub_100057E8C(v31, v33);
      }

      goto LABEL_9;
    }

    sub_100057D90(v31, v33);
    sub_100057D90(v31, v33);
    sub_100057D7C(v35, v36);
    sub_100057E78(v31, v33);
    sub_100057E78(v35, v36);
LABEL_9:
    v41 = *v34;
    v42 = *(v34 + 1);
    v87 = v31;
    *v34 = v31;
    *(v34 + 1) = v33;
    v86 = v33;
    sub_100057E78(v41, v42);
    v43 = OBJC_IVAR____SSSScreenshotPaperKitPDFView_cachedRenderedPDFDocument;
    swift_beginAccess();
    v44 = *&v0[v43];
    *&v0[v43] = 0;

    v45 = OBJC_IVAR____SSSScreenshotPaperKitPDFView_cachedPDFTask;
    swift_beginAccess();
    v77 = v0;
    if (*&v0[v45])
    {

      Task.cancel()();
    }

    v47 = v91;
    v46 = v92;
    v48 = v88;
    v75 = *(v91 + 56);
    v75(v88, 1, 1, v92);
    v49 = NSTemporaryDirectory();
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    URL.init(fileURLWithPath:)();

    UUID.init()();
    UUID.uuidString.getter();
    (*(v89 + 8))(v14, v90);
    URL.appendingPathComponent(_:)();

    v50 = *(v47 + 8);
    v50(v20, v46);
    Data.write(to:options:)();
    v90 = v50;
    sub_100055E84(v48, &qword_1000D4180);
    v52 = *(v47 + 32);
    v52(v48, v22, v46);
    v75(v48, 0, 1, v46);
    v53 = v84;
    sub_100064290(v48, v84, &qword_1000D4180);
    if ((*(v47 + 48))(v53, 1, v46) == 1)
    {
      sub_100055E84(v48, &qword_1000D4180);
      sub_100057E8C(v87, v86);
      return sub_100055E84(v53, &qword_1000D4180);
    }

    else
    {
      v58 = v85;
      v52(v85, v53, v46);
      v59 = static CRKeyPath.unique.getter();
      __chkstk_darwin(v59);
      v60 = v77;
      *(&v74 - 2) = v58;
      *(&v74 - 1) = v60;
      type metadata accessor for PaperDocument();
      sub_100064878(&qword_1000D4190, &type metadata accessor for PaperDocument);
      v61 = v78;
      Capsule.init(id:initClosure:)();
      v62 = type metadata accessor for TaskPriority();
      (*(*(v62 - 8) + 56))(v80, 1, 1, v62);
      v63 = v76;
      v64 = v83;
      (*(v76 + 16))(v83, v61, v79);
      type metadata accessor for MainActor();
      v65 = v87;
      v66 = v86;
      sub_100057D90(v87, v86);
      v67 = v60;
      v68 = static MainActor.shared.getter();
      v69 = (*(v63 + 80) + 40) & ~*(v63 + 80);
      v70 = (v82 + v69 + 7) & 0xFFFFFFFFFFFFFFF8;
      v71 = swift_allocObject();
      *(v71 + 2) = v68;
      *(v71 + 3) = &protocol witness table for MainActor;
      *(v71 + 4) = v67;
      v72 = v79;
      (*(v63 + 32))(&v71[v69], v64, v79);
      v73 = &v71[v70];
      *v73 = v65;
      v73[1] = v66;
      sub_10005D144(0, 0, v80, &unk_10008F850, v71);

      sub_100057E8C(v65, v66);
      (*(v63 + 8))(v78, v72);
      sub_100055E84(v88, &qword_1000D4180);
      return v90(v85, v92);
    }
  }

  v38 = OBJC_IVAR____SSSScreenshotPaperKitPDFView_paperDocumentView;
  swift_beginAccess();
  v39 = *&v0[v38];
  if (v39)
  {
    [v39 removeFromSuperview];
    v40 = *&v0[v38];
  }

  else
  {
    v40 = 0;
  }

  *&v0[v38] = 0;

  v54 = OBJC_IVAR____SSSScreenshotPaperKitPDFView_cachedRenderedPDFDocument;
  swift_beginAccess();
  v55 = *&v0[v54];
  *&v0[v54] = 0;

  v56 = OBJC_IVAR____SSSScreenshotPaperKitPDFView_cancellable;
  swift_beginAccess();
  *&v0[v56] = 0;

  v57 = OBJC_IVAR____SSSScreenshotPaperKitPDFView_cachedPDFTask;
  result = swift_beginAccess();
  if (*&v0[v57])
  {

    Task.cancel()();
  }

  return result;
}

uint64_t sub_100058ECC(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

void sub_100059004()
{
  v1 = v0;
  v2 = OBJC_IVAR____SSSScreenshotPaperKitPDFView_paperDocumentView;
  swift_beginAccess();
  v3 = *&v0[v2];
  if (v3)
  {
    v4 = v3;
    v5 = dispatch thunk of PaperDocumentView.pdfView.getter();

    if (v5)
    {
      v6 = OBJC_IVAR____SSSScreenshotPaperKitPDFView_isCropping;
      swift_beginAccess();
      if (*(v1 + v6) == 1)
      {
        [v5 setMinScaleFactor:1.0];
        [v5 setMaxScaleFactor:1.0];
      }

      else
      {
        v7 = [v5 currentPage];
        if (v7)
        {
          v8 = v7;
          [v1 bounds];
          v10 = v9;
          v12 = fmax(v11 + -200.0, 200.0);
          [v8 boundsForBox:0];
          v15 = sub_1000341E4(1, v13, v14, v12, v10);
          sub_100034218();
          v17 = v16;
          [v5 setAutoScales:0];
          [v5 setMaxScaleFactor:v17];
          [v5 setMinScaleFactor:v15];

          v5 = v8;
        }
      }
    }
  }
}

void sub_100059250(void *a1)
{
  v3 = OBJC_IVAR____SSSScreenshotPaperKitPDFView_rulerHostView;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = a1;

  v6 = OBJC_IVAR____SSSScreenshotPaperKitPDFView_paperDocumentView;
  swift_beginAccess();
  v7 = *(v1 + v6);
  if (v7)
  {
    v8 = *(v1 + v3);
    v9 = v7;
    dispatch thunk of PaperDocumentView.rulerHostView.setter();
  }
}

uint64_t sub_1000592F8(double a1, double a2, double a3, double a4)
{
  v9 = sub_100055840(&qword_1000D41A8);
  v78 = *(v9 - 8);
  __chkstk_darwin(v9);
  v77 = &v69 - v10;
  v76 = sub_100055840(&qword_1000D41B0);
  v75 = *(v76 - 8);
  __chkstk_darwin(v76);
  v12 = &v69 - v11;
  v80 = sub_100055840(&qword_1000D4178);
  v74 = *(v80 - 8);
  __chkstk_darwin(v80);
  v14 = &v69 - v13;
  v15 = sub_100055840(&qword_1000D41B8);
  v16 = (__chkstk_darwin)(v15 - 8);
  v18 = &v69 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v79 = &v69 - v19;
  v20 = sub_100055840(&qword_1000D41C0);
  __chkstk_darwin(v20 - 8);
  v22 = &v69 - v21;
  v23 = sub_100055840(&qword_1000D41C8);
  v83 = *(v23 - 8);
  v84 = v23;
  __chkstk_darwin(v23);
  v81 = &v69 - v24;
  v25 = sub_100055840(&qword_1000D41D0);
  __chkstk_darwin(v25 - 8);
  v27 = &v69 - v26;
  v28 = sub_100055840(&qword_1000D41D8);
  v29 = *(v28 - 8);
  __chkstk_darwin(v28);
  v82 = &v69 - v30;
  v31 = OBJC_IVAR____SSSScreenshotPaperKitPDFView_paperDocumentView;
  result = swift_beginAccess();
  v73 = v4;
  v33 = *&v4[v31];
  if (v33)
  {
    v72 = v9;
    v34 = v33;
    dispatch thunk of PaperDocumentView.currentPage.getter();
    if ((*(v29 + 48))(v27, 1, v28) == 1)
    {

      return sub_100055E84(v27, &qword_1000D41D0);
    }

    v71 = v34;
    v35 = v82;
    (*(v29 + 32))(v82, v27, v28);
    WeakTagged_3<>.docPage.getter();
    v37 = v83;
    v36 = v84;
    if ((*(v83 + 48))(v22, 1, v84) == 1)
    {
      (*(v29 + 8))(v35, v28);

      return sub_100055E84(v22, &qword_1000D41C0);
    }

    v70 = v29;
    v38 = v18;
    v39 = v81;
    (*(v37 + 32))(v81, v22, v36);
    v40 = v71;
    dispatch thunk of PaperDocumentView.paperDocument.getter();
    swift_getKeyPath();
    v41 = v80;
    Capsule.subscript.getter();

    v42 = (*(v74 + 8))(v14, v41);
    __chkstk_darwin(v42);
    *(&v69 - 2) = v39;
    v43 = v79;
    sub_10005A94C(sub_1000623B0, (&v69 - 4), v79);
    (*(v75 + 8))(v12, v76);
    sub_100064290(v43, v38, &qword_1000D41B8);
    v44 = v78;
    v45 = v72;
    if ((*(v78 + 48))(v38, 1, v72) == 1)
    {

      sub_100055E84(v43, &qword_1000D41B8);
      (*(v70 + 8))(v82, v28);
      sub_100055E84(v38, &qword_1000D41B8);
      return (*(v83 + 8))(v81, v84);
    }

    (*(v44 + 32))(v77, v38, v45);
    v46 = v73;
    v47 = *&v73[v31];
    if (v47)
    {
      v48 = v47;
      v49 = dispatch thunk of PaperDocumentView.pdfView.getter();

      if (v49)
      {
        v50 = [v49 currentPage];
        if (v50)
        {
          v51 = v50;
          [v50 boundsForBox:0];
          v53 = v52;
          v55 = v54;
          v57 = v56;
          v59 = v58;

LABEL_14:
          v64 = swift_beginAccess();
          v65 = __chkstk_darwin(v64);
          v66 = v77;
          *(&v69 - 10) = v77;
          *(&v69 - 9) = a1;
          *(&v69 - 8) = a2;
          *(&v69 - 7) = a3;
          *(&v69 - 6) = a4;
          *(&v69 - 5) = v53;
          *(&v69 - 4) = v55;
          *(&v69 - 3) = v57;
          *(&v69 - 2) = v59;
          *(&v69 - 1) = v65;
          v67 = v71;
          v68 = dispatch thunk of PaperDocumentView.paperDocument.modify();
          Capsule.callAsFunction<A>(_:)();
          v68(v85, 0);

          sub_100055E84(v79, &qword_1000D41B8);
          (*(v70 + 8))(v82, v28);
          (*(v44 + 8))(v66, v72);
          return (*(v83 + 8))(v81, v84);
        }
      }
    }

    [v46 bounds];
    v53 = v60;
    v55 = v61;
    v57 = v62;
    v59 = v63;
    goto LABEL_14;
  }

  return result;
}

double sub_100059C3C()
{
  v1 = v0;
  sub_100059E90(&v25);
  if ((v28 & 1) == 0)
  {
    v3 = v25;
    v4 = v26;
    v5 = v27;
    v6 = OBJC_IVAR____SSSScreenshotPaperKitPDFView_paperDocumentView;
    swift_beginAccess();
    v7 = *&v1[v6];
    if (v7)
    {
      v8 = v7;
      v9 = dispatch thunk of PaperDocumentView.pdfView.getter();

      if (v9)
      {
        v10 = [v9 currentPage];
        if (v10)
        {
          v11 = v10;
          [v10 boundsForBox:0];
          v13 = v12;
          v15 = v14;
          v17 = v16;
          v19 = v18;

LABEL_9:
          v29.origin = v3;
          v29.size.width = v4;
          v29.size.height = v5;
          CGRectGetWidth(v29);
          v30.origin.x = v13;
          v30.origin.y = v15;
          v30.size.width = v17;
          v30.size.height = v19;
          CGRectGetWidth(v30);
          v31.origin = v3;
          v31.size.width = v4;
          v31.size.height = v5;
          CGRectGetHeight(v31);
          v32.origin.x = v13;
          v32.origin.y = v15;
          v32.size.width = v17;
          v32.size.height = v19;
          CGRectGetHeight(v32);
          v33.origin.x = v13;
          v33.origin.y = v15;
          v33.size.width = v17;
          v33.size.height = v19;
          v2 = (v3.x - v13) / CGRectGetWidth(v33);
          v34.origin.x = v13;
          v34.origin.y = v15;
          v34.size.width = v17;
          v34.size.height = v19;
          CGRectGetHeight(v34);
          return v2;
        }
      }
    }

    [v1 bounds];
    v13 = v20;
    v15 = v21;
    v17 = v22;
    v19 = v23;
    goto LABEL_9;
  }

  return 0.0;
}

uint64_t sub_100059E90@<X0>(_OWORD *a1@<X8>)
{
  v47 = a1;
  v2 = sub_100055840(&qword_1000D41E0);
  __chkstk_darwin(v2 - 8);
  *&v43 = &v40 - v3;
  v4 = sub_100055840(&qword_1000D41E8);
  __chkstk_darwin(v4 - 8);
  v42 = &v40 - v5;
  v6 = sub_100055840(&qword_1000D4178);
  v44 = *(v6 - 8);
  v45 = v6;
  __chkstk_darwin(v6);
  v46 = &v40 - v7;
  v8 = sub_100055840(&qword_1000D41C0);
  __chkstk_darwin(v8 - 8);
  v10 = &v40 - v9;
  v11 = sub_100055840(&qword_1000D41C8);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v40 - v13;
  v15 = sub_100055840(&qword_1000D41D0);
  __chkstk_darwin(v15 - 8);
  v17 = &v40 - v16;
  v18 = sub_100055840(&qword_1000D41D8);
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v40 - v20;
  v22 = OBJC_IVAR____SSSScreenshotPaperKitPDFView_paperDocumentView;
  result = swift_beginAccess();
  v24 = *(v1 + v22);
  v25 = 0uLL;
  if (v24)
  {
    v26 = v24;
    dispatch thunk of PaperDocumentView.currentPage.getter();
    if ((*(v19 + 48))(v17, 1, v18) == 1)
    {

      v27 = &qword_1000D41D0;
      v28 = v17;
    }

    else
    {
      (*(v19 + 32))(v21, v17, v18);
      WeakTagged_3<>.docPage.getter();
      if ((*(v12 + 48))(v10, 1, v11) == 1)
      {
        (*(v19 + 8))(v21, v18);

        v27 = &qword_1000D41C0;
        v28 = v10;
      }

      else
      {
        (*(v12 + 32))(v14, v10, v11);
        v41 = v12;
        v31 = v46;
        dispatch thunk of PaperDocumentView.paperDocument.getter();
        type metadata accessor for PaperDocument();
        sub_100064878(&qword_1000D4190, &type metadata accessor for PaperDocument);
        v32 = v43;
        WeakRef.subscript.getter();
        v33 = v32;
        v34 = type metadata accessor for PaperDocumentPage();
        v35 = *(v34 - 8);
        if ((*(v35 + 48))(v33, 1, v34) == 1)
        {

          (*(v44 + 8))(v31, v45);
          (*(v41 + 8))(v14, v11);
          (*(v19 + 8))(v21, v18);
          v27 = &qword_1000D41E0;
          v28 = v33;
        }

        else
        {
          v36 = v42;
          PaperDocumentPage.contentsBounds.getter();
          (*(v35 + 8))(v33, v34);
          v37 = type metadata accessor for ContentsBounds();
          v38 = *(v37 - 8);
          if ((*(v38 + 48))(v36, 1, v37) != 1)
          {
            ContentsBounds.bounds.getter();
            v43 = v48;
            v40 = v49;
            v29 = v50;

            (*(v44 + 8))(v46, v45);
            (*(v41 + 8))(v14, v11);
            (*(v19 + 8))(v21, v18);
            result = (*(v38 + 8))(v36, v37);
            v30 = v40;
            v25 = v43;
            goto LABEL_12;
          }

          (*(v44 + 8))(v46, v45);
          (*(v41 + 8))(v14, v11);
          (*(v19 + 8))(v21, v18);
          v27 = &qword_1000D41E8;
          v28 = v36;
        }
      }
    }

    result = sub_100055E84(v28, v27);
    v29 = 1;
    v30 = 0uLL;
    v25 = 0uLL;
  }

  else
  {
    v29 = 1;
    v30 = 0uLL;
  }

LABEL_12:
  v39 = v47;
  *v47 = v25;
  v39[1] = v30;
  *(v39 + 32) = v29;
  return result;
}

void sub_10005A590()
{
  v1 = v0;
  v2 = OBJC_IVAR____SSSScreenshotPaperKitPDFView_paperDocumentView;
  swift_beginAccess();
  v3 = *&v1[v2];
  if (v3)
  {
    v4 = v3;
    v5 = dispatch thunk of PaperDocumentView.pdfView.getter();

    if (v5)
    {
      v6 = [v5 currentPage];
      if (v6)
      {
        v7 = v6;
        [v6 boundsForBox:0];

        return;
      }
    }
  }

  [v1 bounds];
}

uint64_t sub_10005A6A4(uint64_t a1)
{
  v2 = sub_100055840(&qword_1000D41B0);
  v3 = __chkstk_darwin(v2);
  (*(v5 + 16))(&v7 - v4, a1, v3);
  return PaperDocument.pages.setter();
}

uint64_t sub_10005A774()
{
  v0 = type metadata accessor for CRKeyPath();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v16 - v5;
  sub_100055840(&qword_1000D41A8);
  SharedTagged_3.identity.getter();
  sub_100055840(&qword_1000D41C8);
  sub_100057608(&qword_1000D43E8, &qword_1000D41C8);
  Reference.identity.getter();
  v7 = CRKeyPath.rawValue.getter();
  v9 = v8;
  v10 = CRKeyPath.rawValue.getter();
  v12 = v11;
  v13 = sub_100062248(v7, v9, v10, v11);
  sub_100057E8C(v10, v12);
  sub_100057E8C(v7, v9);
  v14 = *(v1 + 8);
  v14(v4, v0);
  v14(v6, v0);
  return v13 & 1;
}

uint64_t sub_10005A94C@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v31 = a1;
  v32 = a2;
  v26 = a3;
  v4 = sub_100055840(&qword_1000D41A8);
  v28 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v26 - v5;
  v7 = sub_100055840(&qword_1000D41B8);
  __chkstk_darwin(v7 - 8);
  v9 = &v26 - v8;
  v10 = sub_100055840(&qword_1000D41B0);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v26 - v12;
  v14 = sub_100055840(&qword_1000D4398);
  v27 = *(v14 - 8);
  __chkstk_darwin(v14);
  v16 = &v26 - v15;
  (*(v11 + 16))(v13, v34, v10);
  v17 = v28;
  sub_100057608(&qword_1000D43D8, &qword_1000D41B0);
  dispatch thunk of Sequence.makeIterator()();
  v18 = sub_100057608(&qword_1000D43E0, &qword_1000D4398);
  v33 = v16;
  v34 = v14;
  v29 = v18;
  dispatch thunk of IteratorProtocol.next()();
  v19 = *(v17 + 48);
  if (v19(v9, 1, v4) == 1)
  {
LABEL_6:
    (*(v27 + 8))(v33, v34);
    v22 = 1;
    v23 = v26;
  }

  else
  {
    v30 = *(v17 + 32);
    v20 = (v17 + 8);
    while (1)
    {
      v30(v6, v9, v4);
      v21 = v31(v6);
      if (v3)
      {
        (*v20)(v6, v4);
        return (*(v27 + 8))(v33, v34);
      }

      if (v21)
      {
        break;
      }

      (*v20)(v6, v4);
      dispatch thunk of IteratorProtocol.next()();
      if (v19(v9, 1, v4) == 1)
      {
        goto LABEL_6;
      }
    }

    (*(v27 + 8))(v33, v34);
    v25 = v26;
    v30(v26, v6, v4);
    v23 = v25;
    v22 = 0;
  }

  return (*(v28 + 56))(v23, v22, 1, v4);
}

uint64_t sub_10005AD9C(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8, double a9)
{
  v25 = sub_100055840(&qword_1000D4388);
  __chkstk_darwin(v25 - 8);
  v27 = &v37 - v26;
  v28 = sub_100055840(&qword_1000D4390);
  v29 = *(v28 - 8);
  __chkstk_darwin(v28);
  v31 = &v37 - v30;
  SharedTagged_3<>.docPage.getter();
  if ((*(v29 + 48))(v27, 1, v28) == 1)
  {
    return sub_100055E84(v27, &qword_1000D4388);
  }

  v38 = a9;
  (*(v29 + 32))(v31, v27, v28);
  v40.origin.x = a1;
  v40.origin.y = a2;
  v40.size.width = a3;
  v40.size.height = a4;
  CGRectGetWidth(v40);
  v37 = a4;
  v41.origin.x = a5;
  v41.origin.y = a6;
  v41.size.width = a7;
  v41.size.height = a8;
  CGRectGetWidth(v41);
  v42.origin.x = a1;
  v42.origin.y = a2;
  v42.size.width = a3;
  v42.size.height = v37;
  CGRectGetHeight(v42);
  v43.origin.x = a5;
  v43.origin.y = a6;
  v43.size.width = a7;
  v43.size.height = a8;
  CGRectGetHeight(v43);
  v44.origin.x = a5;
  v44.origin.y = a6;
  v44.size.width = a7;
  v44.size.height = a8;
  CGRectGetWidth(v44);
  v45.origin.x = a5;
  v45.origin.y = a6;
  v45.size.width = a7;
  v45.size.height = a8;
  CGRectGetHeight(v45);
  v33 = Ref.subscript.modify();
  PaperDocumentPage.setContentsBounds(_:)();
  v33(v39, 0);
  v34 = Ref.subscript.modify();
  v35 = v38;
  PaperDocumentPage.bounds.setter();
  v34(v39, 0);
  if (v35 > 0.0)
  {
    v36 = Ref.subscript.modify();
    type metadata accessor for PaperDocumentPage();
    sub_100064878(&qword_1000D43D0, &type metadata accessor for PaperDocumentPage);
    PaperPage<>.setVellum<A>(opacity:in:)();
    v36(v39, 0);
  }

  return (*(v29 + 8))(v31, v28);
}

double sub_10005B158(void *a1, uint64_t a2, double (*a3)(void))
{
  v4 = a1;
  v5 = a3();

  return v5;
}

double sub_10005B200()
{
  v1 = v0;
  v2 = OBJC_IVAR____SSSScreenshotPaperKitPDFView_isCropping;
  swift_beginAccess();
  if (v1[v2] != 1)
  {
    v11 = [v1 window];
    if (v11)
    {
      v8 = v11;
      [v11 bounds];
      v10 = v12;
      goto LABEL_9;
    }

    v13 = OBJC_IVAR____SSSScreenshotPaperKitPDFView_paperDocumentView;
    swift_beginAccess();
    v14 = *&v1[v13];
    if (v14)
    {
      v15 = v14;
      v6 = dispatch thunk of PaperDocumentView.pdfView.getter();

      if (v6)
      {
        v7 = [v6 currentPage];
        if (v7)
        {
          goto LABEL_6;
        }

        goto LABEL_14;
      }
    }

LABEL_15:
    [v1 bounds];
    return v16;
  }

  sub_100059E90(&v18);
  if ((v20 & 1) == 0)
  {
    return v19;
  }

  v3 = OBJC_IVAR____SSSScreenshotPaperKitPDFView_paperDocumentView;
  swift_beginAccess();
  v4 = *&v1[v3];
  if (!v4)
  {
    goto LABEL_15;
  }

  v5 = v4;
  v6 = dispatch thunk of PaperDocumentView.pdfView.getter();

  if (!v6)
  {
    goto LABEL_15;
  }

  v7 = [v6 currentPage];
  if (!v7)
  {
LABEL_14:

    goto LABEL_15;
  }

LABEL_6:
  v8 = v7;
  [v7 boundsForBox:0];
  v10 = v9;

LABEL_9:
  return v10;
}

void sub_10005B49C(char a1)
{
  v3 = OBJC_IVAR____SSSScreenshotPaperKitPDFView_paperDocumentView;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (v4)
  {
    v5 = v4;
    v6 = [v5 isFirstResponder];
    if (a1)
    {
      if (v6 & 1) != 0 || ([v5 _isAncestorOfFirstResponder])
      {
        goto LABEL_9;
      }

      v7 = &selRef_becomeFirstResponder;
    }

    else
    {
      if (!v6)
      {
LABEL_9:

        return;
      }

      v7 = &selRef_resignFirstResponder;
    }

    [v5 *v7];
    goto LABEL_9;
  }
}

void sub_10005B638(char a1)
{
  v3 = a1 & 1;
  v4 = type metadata accessor for CanvasEditingMode();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = OBJC_IVAR____SSSScreenshotPaperKitPDFView_editable;
  swift_beginAccess();
  v9 = v1[v8];
  v1[v8] = a1;
  if (v9 != v3)
  {
    [v1 setUserInteractionEnabled:v3];
    v10 = OBJC_IVAR____SSSScreenshotPaperKitPDFView_paperDocumentView;
    swift_beginAccess();
    v11 = *&v1[v10];
    if (v11)
    {
      v12 = v1[v8];
      v13 = v11;
      v14 = v13;
      if (v12)
      {
        static CanvasEditingMode.default.getter();
      }

      else
      {
        if (![v13 isFirstResponder])
        {
LABEL_8:

          return;
        }

        (*(v5 + 104))(v7, enum case for CanvasEditingMode.readOnly(_:), v4);
      }

      dispatch thunk of PaperDocumentView.editingMode.setter();
      goto LABEL_8;
    }
  }
}

id sub_10005B7B8(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  swift_unknownObjectWeakInit();
  *&v4[OBJC_IVAR____SSSScreenshotPaperKitPDFView_leftRightMargin] = 0x4059000000000000;
  v11 = OBJC_IVAR____SSSScreenshotPaperKitPDFView_context;
  type metadata accessor for CRContext();
  v17 = 0;
  memset(v16, 0, sizeof(v16));
  v12 = static CRContext.newTransientContext(uniqueAssetManager:encryptionDelegate:)();
  sub_100055E84(v16, &qword_1000D4108);
  *&v5[v11] = v12;
  v5[OBJC_IVAR____SSSScreenshotPaperKitPDFView_screenshotEditsSnapshotted] = 0;
  *&v5[OBJC_IVAR____SSSScreenshotPaperKitPDFView_cancellable] = 0;
  *&v5[OBJC_IVAR____SSSScreenshotPaperKitPDFView_paperDocumentView] = 0;
  *&v5[OBJC_IVAR____SSSScreenshotPaperKitPDFView_cachedRenderedPDFDocument] = 0;
  *&v5[OBJC_IVAR____SSSScreenshotPaperKitPDFView_cachedPDFTask] = 0;
  *&v5[OBJC_IVAR____SSSScreenshotPaperKitPDFView____lazy_storage___toolPicker] = 0;
  *&v5[OBJC_IVAR____SSSScreenshotPaperKitPDFView_pdfData] = xmmword_10008F810;
  v5[OBJC_IVAR____SSSScreenshotPaperKitPDFView_didFailToWritePDFToURL] = 0;
  v5[OBJC_IVAR____SSSScreenshotPaperKitPDFView_isChangingVellumOpacity] = 0;
  *&v5[OBJC_IVAR____SSSScreenshotPaperKitPDFView_vellumOpacity] = 0;
  *&v5[OBJC_IVAR____SSSScreenshotPaperKitPDFView_screenshot] = 0;
  v5[OBJC_IVAR____SSSScreenshotPaperKitPDFView_isCropping] = 0;
  *&v5[OBJC_IVAR____SSSScreenshotPaperKitPDFView_rulerHostView] = 0;
  *&v5[OBJC_IVAR____SSSScreenshotPaperKitPDFView_changeCounter] = 0;
  v5[OBJC_IVAR____SSSScreenshotPaperKitPDFView_editable] = 0;
  v15.receiver = v5;
  v15.super_class = ObjectType;
  v13 = objc_msgSendSuper2(&v15, "initWithFrame:", a1, a2, a3, a4);
  [v13 setUserInteractionEnabled:0];
  return v13;
}

uint64_t sub_10005BA30@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100055840(&qword_1000D43A8);
  __chkstk_darwin(v8 - 8);
  v10 = &v15 - v9;
  (*(v5 + 16))(v7, a1, v4);

  CRContext.assetManager.getter();
  PaperDocument.init<A>(url:in:assetManager:)();
  v11 = type metadata accessor for PaperDocument();
  v12 = *(v11 - 8);
  v13 = *(v12 + 48);
  if (v13(v10, 1, v11) != 1)
  {
    return (*(v12 + 32))(a2, v10, v11);
  }

  PaperDocument.init()();
  result = (v13)(v10, 1, v11);
  if (result != 1)
  {
    return sub_100055E84(v10, &qword_1000D43A8);
  }

  return result;
}

uint64_t sub_10005BC40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[20] = a6;
  v7[21] = a7;
  v7[18] = a4;
  v7[19] = a5;
  v8 = type metadata accessor for CanvasEditingMode();
  v7[22] = v8;
  v7[23] = *(v8 - 8);
  v7[24] = swift_task_alloc();
  v9 = sub_100055840(&qword_1000D4178);
  v7[25] = v9;
  v7[26] = *(v9 - 8);
  v7[27] = swift_task_alloc();
  type metadata accessor for MainActor();
  v7[28] = static MainActor.shared.getter();
  v11 = dispatch thunk of Actor.unownedExecutor.getter();
  v7[29] = v11;
  v7[30] = v10;

  return _swift_task_switch(sub_10005BDA0, v11, v10);
}

uint64_t sub_10005BDA0()
{
  v1 = v0[24];
  v2 = v0[22];
  v3 = v0[23];
  v4 = *(v0[18] + OBJC_IVAR____SSSScreenshotPaperKitPDFView_context);
  (*(v0[26] + 16))(v0[27], v0[19], v0[25]);
  (*(v3 + 104))(v1, enum case for CanvasEditingMode.readOnly(_:), v2);
  v5 = v4;
  v6 = sub_100057BD0();
  objc_allocWithZone(type metadata accessor for PaperDocumentView());
  v7 = swift_task_alloc();
  v0[31] = v7;
  *v7 = v0;
  v7[1] = sub_10005BEC4;
  v8 = v0[27];
  v9 = v0[24];

  return PaperDocumentView.init(context:document:editingMode:toolPicker:)(v5, v8, v9, v6);
}

uint64_t sub_10005BEC4(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 256) = a1;

  v3 = *(v2 + 240);
  v4 = *(v2 + 232);

  return _swift_task_switch(sub_10005BFEC, v4, v3);
}

uint64_t sub_10005BFEC()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 256);
  [v1 bounds];
  [v2 setFrame:?];
  v3 = objc_opt_self();
  v4 = [v3 clearColor];
  [v2 setBackgroundColor:v4];

  result = dispatch thunk of PaperDocumentView.pdfView.getter();
  if (!result)
  {
    __break(1u);
    goto LABEL_19;
  }

  v6 = result;
  v7 = [v3 clearColor];
  [v6 setBackgroundColor:v7];

  result = dispatch thunk of PaperDocumentView.pdfView.getter();
  if (!result)
  {
LABEL_19:
    __break(1u);
    return result;
  }

  v8 = result;
  v9 = *(v0 + 256);
  v10 = *(v0 + 144);
  [v10 bounds];
  [v8 setFrame:?];

  v11 = v10;
  dispatch thunk of PaperDocumentView.contentSnapshottingView.setter();
  dispatch thunk of PaperDocumentView.sixChannelBlendingDisableSnapshotting.setter();
  dispatch thunk of PaperDocumentView.automaticallyAdjustScaleFactor.setter();
  [v9 setOverrideUserInterfaceStyle:1];

  v12 = [v11 traitCollection];
  [v12 userInterfaceIdiom];

  dispatch thunk of PaperDocumentView.canEditVellumOpacity.setter();
  v13 = OBJC_IVAR____SSSScreenshotPaperKitPDFView_rulerHostView;
  swift_beginAccess();
  v14 = *&v11[v13];
  dispatch thunk of PaperDocumentView.rulerHostView.setter();
  dispatch thunk of PaperDocumentView.shouldDeselectElementsWhenToolPickerIsHidden.setter();
  v15 = dispatch thunk of PaperDocumentView.toolPicker.getter();
  if (v15)
  {
    v16 = v15;
    v17 = [*(v0 + 144) traitCollection];
    v18 = [v17 userInterfaceIdiom];

    if (v18)
    {
      v19 = 0;
    }

    else
    {
      v19 = _UISolariumEnabled() ^ 1;
    }

    [v16 _setWantsClearBackgroundColorInCompactSize:v19];
  }

  v20 = *(v0 + 144);
  [v20 addSubview:*(v0 + 256)];
  v21 = OBJC_IVAR____SSSScreenshotPaperKitPDFView_paperDocumentView;
  swift_beginAccess();
  v22 = *&v20[v21];
  if (v22)
  {
    [v22 removeFromSuperview];
    v23 = *&v20[v21];
  }

  else
  {
    v23 = 0;
  }

  v24 = *(v0 + 256);
  *&v20[v21] = v24;
  v25 = v24;

  v26 = *&v20[v21];
  if (v26)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    v28 = v26;
    if (Strong)
    {
      v29 = [Strong _paperKitPDFViewOverlayViewController:*(v0 + 144)];
      swift_unknownObjectRelease();
    }

    dispatch thunk of PaperDocumentView.viewControllerForPresentingUI.setter();
  }

  v30 = *(v0 + 160);
  v31 = *(v0 + 168);
  v32 = (*(v0 + 144) + OBJC_IVAR____SSSScreenshotPaperKitPDFView_pdfData);
  swift_beginAccess();
  v33 = *v32;
  v34 = v32[1];
  *v32 = v30;
  v32[1] = v31;
  sub_100057E78(v33, v34);
  sub_100057D90(v30, v31);
  sub_100059004();
  v35 = swift_task_alloc();
  *(v0 + 264) = v35;
  *v35 = v0;
  v35[1] = sub_10005C3A8;

  return sub_10005C64C();
}

uint64_t sub_10005C3A8()
{
  v1 = *v0;

  v2 = *(v1 + 240);
  v3 = *(v1 + 232);

  return _swift_task_switch(sub_10005C4C8, v3, v2);
}

uint64_t sub_10005C4C8()
{
  v1 = v0[32];
  v2 = v0[18];

  v0[17] = dispatch thunk of PaperDocumentView.publisher.getter();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100055840(&qword_1000D43F0);
  sub_100057608(&qword_1000D43F8, &qword_1000D43F0);
  v3 = Publisher<>.sink(receiveValue:)();

  v4 = OBJC_IVAR____SSSScreenshotPaperKitPDFView_cancellable;
  swift_beginAccess();
  *(v2 + v4) = v3;

  v5 = v0[1];

  return v5();
}

uint64_t sub_10005C64C()
{
  v1[11] = v0;
  sub_100055840(&qword_1000D4170);
  v1[12] = swift_task_alloc();
  v2 = sub_100055840(&qword_1000D4178);
  v1[13] = v2;
  v3 = *(v2 - 8);
  v1[14] = v3;
  v1[15] = *(v3 + 64);
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  type metadata accessor for MainActor();
  v1[19] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10005C7A4, v5, v4);
}

uint64_t sub_10005C7A4()
{
  v1 = v0[11];

  v2 = OBJC_IVAR____SSSScreenshotPaperKitPDFView_paperDocumentView;
  swift_beginAccess();
  v3 = *(v1 + v2);
  if (v3)
  {
    v5 = v0[17];
    v4 = v0[18];
    v6 = v0[13];
    v7 = v0[14];
    v8 = v0[11];
    v9 = v3;
    dispatch thunk of PaperDocumentView.paperDocument.getter();

    v29 = *(v7 + 32);
    v29(v4, v5, v6);
    v10 = OBJC_IVAR____SSSScreenshotPaperKitPDFView_cachedPDFTask;
    swift_beginAccess();
    v30 = v10;
    v31 = v8;
    if (*(v8 + v10))
    {

      Task.cancel()();
    }

    v11 = v0[18];
    v28 = v11;
    v12 = v0[15];
    v13 = v0[16];
    v14 = v0[13];
    v15 = v0[14];
    v17 = v0[11];
    v16 = v0[12];
    v18 = OBJC_IVAR____SSSScreenshotPaperKitPDFView_vellumOpacity;
    swift_beginAccess();
    v19 = *(v17 + v18);
    v20 = type metadata accessor for TaskPriority();
    (*(*(v20 - 8) + 56))(v16, 1, 1, v20);
    v21 = swift_allocObject();
    swift_unknownObjectWeakInit();
    (*(v15 + 16))(v13, v11, v14);
    v22 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    v23 = (v12 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
    v24 = swift_allocObject();
    *(v24 + 16) = 0;
    *(v24 + 24) = 0;
    v29(v24 + v22, v13, v14);
    *(v24 + v23) = v19;
    *(v24 + ((v23 + 15) & 0xFFFFFFFFFFFFFFF8)) = v21;
    v25 = sub_10005DF9C(0, 0, v16, &unk_10008F8E0, v24);
    sub_100055E84(v16, &qword_1000D4170);
    (*(v15 + 8))(v28, v14);
    *(v31 + v30) = v25;
  }

  v26 = v0[1];

  return v26();
}

void sub_10005CA98()
{
  v0 = type metadata accessor for DispatchWorkItemFlags();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DispatchQoS();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100055840(&qword_1000D4170);
  __chkstk_darwin(v8 - 8);
  v10 = &v24 - v9;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    v13 = type metadata accessor for TaskPriority();
    (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
    type metadata accessor for MainActor();
    v14 = v12;
    v15 = static MainActor.shared.getter();
    v16 = swift_allocObject();
    v16[2] = v15;
    v16[3] = &protocol witness table for MainActor;
    v16[4] = v14;
    sub_10005D144(0, 0, v10, &unk_10008FA60, v16);

    v17 = OBJC_IVAR____SSSScreenshotPaperKitPDFView_changeCounter;
    swift_beginAccess();
    v18 = *&v14[v17];
    v19 = __CFADD__(v18, 1);
    v20 = v18 + 1;
    if (v19)
    {
      __break(1u);
    }

    else
    {
      *&v14[v17] = v20;
      if (v14[OBJC_IVAR____SSSScreenshotPaperKitPDFView_isChangingVellumOpacity])
      {
      }

      else
      {
        sub_100064748(0, &qword_1000D4400);
        v26 = static OS_dispatch_queue.main.getter();
        v21 = swift_allocObject();
        *(v21 + 16) = v14;
        aBlock[4] = sub_1000647C8;
        aBlock[5] = v21;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_10005D444;
        aBlock[3] = &unk_1000BB8D0;
        v22 = _Block_copy(aBlock);
        v25 = v14;
        static DispatchQoS.unspecified.getter();
        v27 = &_swiftEmptyArrayStorage;
        sub_100064878(&qword_1000D4408, &type metadata accessor for DispatchWorkItemFlags);
        v24 = v4;
        sub_100055840(&qword_1000D4410);
        sub_100057608(&qword_1000D4418, &qword_1000D4410);
        dispatch thunk of SetAlgebra.init<A>(_:)();
        v23 = v26;
        OS_dispatch_queue.async(group:qos:flags:execute:)();
        _Block_release(v22);

        (*(v1 + 8))(v3, v0);
        (*(v5 + 8))(v7, v24);
      }
    }
  }
}

uint64_t sub_10005CEFC()
{
  v0[2] = type metadata accessor for MainActor();
  v0[3] = static MainActor.shared.getter();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_10005CFA8;

  return sub_10005C64C();
}

uint64_t sub_10005CFA8()
{

  v1 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10005D0E4, v1, v0);
}

uint64_t sub_10005D0E4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10005D144(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100055840(&qword_1000D4170);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_100064290(a3, v25 - v10, &qword_1000D4170);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_100055E84(v11, &qword_1000D4170);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = String.utf8CString.getter() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_100055E84(a3, &qword_1000D4170);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_100055E84(a3, &qword_1000D4170);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_10005D444(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_10005D570(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  v6 = type metadata accessor for ContinuousClock();
  v5[10] = v6;
  v5[11] = *(v6 - 8);
  v5[12] = swift_task_alloc();

  return _swift_task_switch(sub_10005D630, 0, 0);
}

uint64_t sub_10005D630()
{
  static Clock<>.continuous.getter();
  v1 = swift_task_alloc();
  *(v0 + 104) = v1;
  *v1 = v0;
  v1[1] = sub_10005D6FC;

  return sub_100061404(500000000000000000, 0, 0, 0, 1);
}

uint64_t sub_10005D6FC()
{
  v2 = *v1;

  v3 = v2[12];
  v4 = v2[11];
  v5 = v2[10];
  if (v0)
  {

    (*(v4 + 8))(v3, v5);
    v6 = sub_100064980;
  }

  else
  {
    (*(v4 + 8))(v3, v5);
    v6 = sub_10005D894;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_10005D894()
{
  if (static Task<>.isCancelled.getter())
  {
    if (qword_1000D4C00 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_100058ECC(v1, qword_1000D4C08);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "PDF caching cancelled", v4, 2u);
    }

    v5 = *(v0 + 8);

    return v5();
  }

  else
  {
    v7 = swift_task_alloc();
    *(v0 + 112) = v7;
    *v7 = v0;
    v7[1] = sub_10005DA38;

    return sub_1000627E8();
  }
}

uint64_t sub_10005DA38(uint64_t a1)
{
  *(*v1 + 120) = a1;

  return _swift_task_switch(sub_10005DB38, 0, 0);
}

uint64_t sub_10005DB38()
{
  if (qword_1000D4C00 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100058ECC(v1, qword_1000D4C08);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Generated new cached PDF document", v4, 2u);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[16] = Strong;
  v6 = v0[15];
  if (Strong)
  {
    type metadata accessor for MainActor();
    v7 = v6;
    v0[17] = static MainActor.shared.getter();
    v9 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(sub_10005DCF8, v9, v8);
  }

  else
  {

    v10 = v0[1];

    return v10();
  }
}

uint64_t sub_10005DCF8()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 120);

  v3 = OBJC_IVAR____SSSScreenshotPaperKitPDFView_cachedRenderedPDFDocument;
  swift_beginAccess();
  v4 = *&v1[v3];
  *&v1[v3] = v2;

  return _swift_task_switch(sub_10005DD98, 0, 0);
}

uint64_t sub_10005DD98()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10005DE00()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10005DEA0;

  return sub_1000627E8();
}

uint64_t sub_10005DEA0(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_10005DF9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100055840(&qword_1000D4170);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_100064290(a3, v25 - v10, &qword_1000D4170);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_100055E84(v11, &qword_1000D4170);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = String.utf8CString.getter() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_10005E3D0(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  type metadata accessor for MainActor();
  v2[4] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10005E468, v4, v3);
}

uint64_t sub_10005E468()
{
  v1 = v0[3];
  v2 = v0[2];

  v0[5] = _Block_copy(v2);
  v3 = v1;
  v4 = swift_task_alloc();
  v0[6] = v4;
  *v4 = v0;
  v4[1] = sub_10005E518;

  return sub_10005C64C();
}

uint64_t sub_10005E518()
{
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 24);
  v5 = *v0;

  v1[2](v1);
  _Block_release(v1);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_10005E650(uint64_t a1, unint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____SSSScreenshotPaperKitPDFView_pdfData);
  swift_beginAccess();
  v7 = *v5;
  v6 = v5[1];
  if (a2 >> 60 != 15)
  {
    if (v6 >> 60 != 15)
    {
      sub_100057D7C(v7, v6);
      sub_100057D7C(v7, v6);
      sub_100057D90(a1, a2);
      v8 = sub_100062248(a1, a2, v7, v6);
      sub_100057E78(v7, v6);
      sub_100057E78(v7, v6);
      sub_100057E78(a1, a2);
      if ((v8 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_7;
    }

LABEL_5:
    sub_100057D7C(v7, v6);
    sub_100057D90(a1, a2);
    sub_100057E78(a1, a2);
    sub_100057E78(v7, v6);
    return 0;
  }

  if (v6 >> 60 != 15)
  {
    goto LABEL_5;
  }

  sub_100057D7C(v7, v6);
  sub_100057D90(a1, a2);
  sub_100057E78(a1, a2);
LABEL_7:
  v9 = OBJC_IVAR____SSSScreenshotPaperKitPDFView_cachedRenderedPDFDocument;
  swift_beginAccess();
  v10 = *(v2 + v9);
  if (v10)
  {
    v11 = *(v2 + v9);
    v12 = v10;
    return v11;
  }

  return 0;
}

id sub_10005E850()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10005E958(uint64_t a1, void *a2, _BYTE *a3)
{
  v122 = a3;
  v125 = a2;
  v151 = type metadata accessor for CanvasElementFlags();
  v153 = *(v151 - 8);
  __chkstk_darwin(v151);
  v150 = &v104 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v149 = &v104 - v6;
  v7 = sub_100055840(&qword_1000D40A8);
  v148 = *(v7 - 8);
  __chkstk_darwin(v7);
  v157 = &v104 - v8;
  v9 = sub_100055840(&unk_1000D4370);
  __chkstk_darwin(v9 - 8);
  v11 = &v104 - v10;
  v121 = sub_100055840(&qword_1000D40A0);
  v154 = *(v121 - 8);
  __chkstk_darwin(v121);
  v120 = &v104 - v12;
  v156 = sub_100055840(&qword_1000D4380);
  v147 = *(v156 - 8);
  __chkstk_darwin(v156);
  v155 = &v104 - v13;
  v119 = sub_100055840(&qword_1000D43B0);
  v152 = *(v119 - 8);
  __chkstk_darwin(v119);
  v111 = &v104 - v14;
  v15 = sub_100055840(&qword_1000D43B8);
  __chkstk_darwin(v15 - 8);
  v118 = &v104 - v16;
  v110 = type metadata accessor for PKDrawingStruct();
  v146 = *(v110 - 8);
  __chkstk_darwin(v110);
  v109 = &v104 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v108 = &v104 - v19;
  v135 = type metadata accessor for PaperDocumentPage();
  v145 = *(v135 - 8);
  __chkstk_darwin(v135);
  v117 = &v104 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v116 = &v104 - v22;
  __chkstk_darwin(v23);
  v129 = &v104 - v24;
  v25 = sub_100055840(&qword_1000D4388);
  __chkstk_darwin(v25 - 8);
  v132 = &v104 - v26;
  v128 = sub_100055840(&qword_1000D4390);
  v136 = *(v128 - 8);
  __chkstk_darwin(v128);
  v141 = &v104 - v27;
  v28 = sub_100055840(&qword_1000D41A8);
  v133 = *(v28 - 8);
  __chkstk_darwin(v28);
  v30 = &v104 - v29;
  v31 = sub_100055840(&qword_1000D41B8);
  __chkstk_darwin(v31 - 8);
  v142 = &v104 - v32;
  v33 = sub_100055840(&qword_1000D41B0);
  v34 = *(v33 - 8);
  __chkstk_darwin(v33);
  v36 = &v104 - v35;
  v144 = sub_100055840(&qword_1000D4398);
  v115 = *(v144 - 8);
  __chkstk_darwin(v144);
  v143 = &v104 - v37;
  swift_getKeyPath();
  Capsule.Ref.subscript.getter();

  CROrderedSet.makeIterator()();
  v38 = v36;
  v39 = v128;
  v40 = v133;
  (*(v34 + 8))(v38, v33);
  v41 = v132;
  v42 = v142;
  CROrderedSet.Iterator.next()();
  v43 = *(v40 + 48);
  v140 = v40 + 48;
  v139 = v43;
  if (v43(v42, 1, v28) != 1)
  {
    v46 = *(v40 + 32);
    v45 = v40 + 32;
    v138 = v46;
    v137 = (v136 + 6);
    v127 = (v136 + 4);
    v134 = v145 + 1;
    v114 = (v152 + 6);
    v107 = (v152 + 2);
    v106 = (v152 + 1);
    v105 = (v146 + 4);
    v104 = v146 + 1;
    v113 = (v154 + 1);
    v154 = (v148 + 48);
    v152 = (v148 + 32);
    v146 = (*&v153 + 8);
    v145 = (v148 + 8);
    v112 = (v147 + 8);
    v126 = v136 + 1;
    v136 = (v45 - 24);
    v147 = a1;
    v131 = v28;
    v133 = v45;
    v130 = v30;
    v46(v30, v42, v28);
    while (1)
    {
      SharedTagged_3<>.docPage.getter();
      if ((*v137)(v41, 1, v39) == 1)
      {
        (*v136)(v30, v28);
        sub_100055E84(v41, &qword_1000D4388);
      }

      else
      {
        v48 = v141;
        (*v127)(v141, v41, v39);
        v49 = v129;
        Ref.subscript.getter();
        v50 = PaperDocumentPage.pageIndex.getter();
        v51 = v39;
        v53 = v52;
        v54 = *v134;
        (*v134)(v49, v135);
        if (v53)
        {
          (*v126)(v48, v51);
          v30 = v130;
          v28 = v131;
          (*v136)(v130, v131);
          v41 = v132;
          v39 = v51;
        }

        else
        {
          v55 = [v125 pageAtIndex:v50];
          v30 = v130;
          if (v55)
          {
            v56 = v55;
            [v55 boundsForBox:1];
            v58 = v57;
            v60 = v59;
            v62 = v61;
            v64 = v63;
            [v56 boundsForBox:0];
            x = v160.origin.x;
            y = v160.origin.y;
            width = v160.size.width;
            height = v160.size.height;
            v167.origin.x = v58;
            v167.origin.y = v60;
            v167.size.width = v62;
            v167.size.height = v64;
            v69 = CGRectEqualToRect(v160, v167);
            v39 = v128;
            v70 = v141;
            v28 = v131;
            if (v69)
            {

              (*v126)(v70, v39);
              (*v136)(v30, v28);
            }

            else
            {
              v123 = v56;
              [v56 setBounds:0 forBox:{v58, v60, v62, v64}];
              v161.origin.x = x;
              v161.origin.y = y;
              v161.size.width = width;
              v161.size.height = height;
              MinX = CGRectGetMinX(v161);
              v162.origin.y = v60;
              v72 = MinX;
              v162.origin.x = v58;
              v124 = v64;
              v73 = v62;
              v74 = v162.origin.y;
              v162.size.width = v73;
              v162.size.height = v124;
              v153 = v72 - CGRectGetMinX(v162);
              v163.origin.x = v58;
              v163.origin.y = v74;
              v163.size.width = v73;
              v163.size.height = v124;
              v75 = v58;
              MaxY = CGRectGetMaxY(v163);
              v164.origin.x = x;
              v164.origin.y = y;
              v164.size.width = width;
              v164.size.height = height;
              v77 = MaxY - CGRectGetMaxY(v164);
              CGAffineTransformMakeTranslation(&v159, v153, v77);
              v78 = Ref.subscript.modify();
              v79 = v74;
              v80 = v73;
              v81 = v124;
              PaperDocumentPage.setContentsBounds(_:)();
              v78(v158, 0);
              v165.origin.x = v75;
              v165.origin.y = v79;
              v165.size.width = v80;
              v165.size.height = v81;
              CGRectGetMinX(v165);
              v82 = Ref.subscript.modify();
              PaperDocumentPage.bounds.setter();
              v82(v158, 0);
              v83 = v116;
              Ref.subscript.getter();
              v84 = v118;
              PaperDocumentPage.drawing.getter();
              v54(v83, v135);
              v85 = v119;
              if ((*v114)(v84, 1, v119))
              {
                sub_100055E84(v84, &qword_1000D43B8);
              }

              else
              {
                v86 = v111;
                (*v107)(v111, v84, v85);
                sub_100055E84(v84, &qword_1000D43B8);
                v87 = v109;
                Ref.subscript.getter();
                (*v106)(v86, v85);
                v88 = v108;
                v89 = v87;
                v90 = v110;
                (*v105)(v108, v89, v110);
                PKDrawingStruct.apply<A>(_:concat:in:)();
                (*v104)(v88, v90);
              }

              v91 = v117;
              Ref.subscript.getter();
              v92 = v120;
              PaperDocumentPage.subelements.getter();
              v54(v91, v135);
              v93 = v121;
              CROrderedSet.makeIterator()();
              (*v113)(v92, v93);
              CROrderedSet.Iterator.next()();
              v153 = *v154;
              if ((*&v153)(v11, 1, v7) != 1)
              {
                v148 = *v152;
                do
                {
                  (v148)(v157, v11, v7);
                  SharedTagged_10.subscript.getter();
                  sub_10006441C(v158, v158[3]);
                  v96 = v7;
                  v97 = v149;
                  dispatch thunk of CanvasElement.flags.getter();
                  sub_100064460(v158);
                  v98 = v150;
                  static CanvasElementFlags.readOnly.getter();
                  sub_100064878(&qword_1000D43A0, &type metadata accessor for CanvasElementFlags);
                  v99 = v151;
                  v100 = dispatch thunk of SetAlgebra.isSuperset(of:)();
                  v101 = *v146;
                  (*v146)(v98, v99);
                  v101(v97, v99);
                  if (v100)
                  {
                    v166.origin.x = v75;
                    v166.origin.y = v79;
                    v166.size.width = v80;
                    v166.size.height = v81;
                    CGRectGetMinY(v166);
                    v102 = SharedTagged_10.subscript.modify();
                    sub_1000644AC(v103, *(v103 + 24));
                    dispatch thunk of CanvasElement.frame.setter();
                    v102(v158, 0);
                  }

                  else
                  {
                    v94 = SharedTagged_10.subscript.modify();
                    sub_1000644AC(v95, *(v95 + 24));
                    dispatch thunk of CanvasElement.apply(_:)();
                    v94(v158, 0);
                  }

                  v7 = v96;
                  (*v145)(v157, v96);
                  CROrderedSet.Iterator.next()();
                }

                while ((*&v153)(v11, 1, v96) != 1);
              }

              (*v112)(v155, v156);
              v39 = v128;
              (*v126)(v141, v128);
              v30 = v130;
              v28 = v131;
              (*v136)(v130, v131);
              *v122 = 1;
            }
          }

          else
          {
            v39 = v128;
            (*v126)(v141, v128);
            v28 = v131;
            (*v136)(v30, v131);
          }

          v41 = v132;
        }
      }

      v47 = v142;
      CROrderedSet.Iterator.next()();
      if (v139(v47, 1, v28) == 1)
      {
        break;
      }

      v138(v30, v47, v28);
    }
  }

  return (*(v115 + 8))(v143, v144);
}

uint64_t sub_10005FDB4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100055840(&qword_1000D43A8);
  v9 = __chkstk_darwin(v8 - 8);
  v11 = &v16 - v10;
  (*(v5 + 16))(v7, a1, v4, v9);

  CRContext.assetManager.getter();
  PaperDocument.init<A>(url:in:assetManager:)();
  v12 = type metadata accessor for PaperDocument();
  v13 = *(v12 - 8);
  v14 = *(v13 + 48);
  if (v14(v11, 1, v12) != 1)
  {
    return (*(v13 + 32))(a2, v11, v12);
  }

  PaperDocument.init()();
  result = (v14)(v11, 1, v12);
  if (result != 1)
  {
    return sub_100055E84(v11, &qword_1000D43A8);
  }

  return result;
}

uint64_t sub_10005FFB8(uint64_t a1)
{
  v108[7] = a1;
  v1 = sub_100055840(&unk_1000D4360);
  __chkstk_darwin(v1 - 8);
  v93 = &v62 - v2;
  v105 = type metadata accessor for CanvasElementFlags();
  v101 = *(v105 - 8);
  __chkstk_darwin(v105);
  v92 = &v62 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v91 = &v62 - v5;
  __chkstk_darwin(v6);
  v97 = &v62 - v7;
  __chkstk_darwin(v8);
  v106 = &v62 - v9;
  v10 = sub_100055840(&qword_1000D40A8);
  v99 = *(v10 - 8);
  __chkstk_darwin(v10);
  v94 = &v62 - v11;
  v12 = sub_100055840(&unk_1000D4370);
  __chkstk_darwin(v12 - 8);
  v98 = &v62 - v13;
  v73 = sub_100055840(&qword_1000D40A0);
  v102 = *(v73 - 8);
  __chkstk_darwin(v73);
  v72 = &v62 - v14;
  v71 = type metadata accessor for PaperDocumentPage();
  v100 = *(v71 - 8);
  __chkstk_darwin(v71);
  v70 = &v62 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = sub_100055840(&qword_1000D4380);
  v95 = *(v104 - 8);
  __chkstk_darwin(v104);
  v103 = &v62 - v16;
  v17 = sub_100055840(&qword_1000D4388);
  __chkstk_darwin(v17 - 8);
  v75 = &v62 - v18;
  v19 = sub_100055840(&qword_1000D4390);
  v76 = *(v19 - 8);
  __chkstk_darwin(v19);
  v81 = &v62 - v20;
  v74 = sub_100055840(&qword_1000D41A8);
  v85 = *(v74 - 8);
  __chkstk_darwin(v74);
  v86 = &v62 - v21;
  v22 = sub_100055840(&qword_1000D41B8);
  __chkstk_darwin(v22 - 8);
  v84 = &v62 - v23;
  v24 = sub_100055840(&qword_1000D41B0);
  v25 = *(v24 - 8);
  __chkstk_darwin(v24);
  v27 = &v62 - v26;
  v28 = sub_100055840(&qword_1000D4398);
  v63 = *(v28 - 8);
  __chkstk_darwin(v28);
  v30 = &v62 - v29;
  swift_getKeyPath();
  Capsule.Ref.subscript.getter();
  v31 = v98;

  CROrderedSet.makeIterator()();
  v32 = v27;
  v33 = v75;
  v34 = v24;
  v35 = v94;
  (*(v25 + 8))(v32, v34);
  v36 = v84;
  v83 = v28;
  v82 = v30;
  CROrderedSet.Iterator.next()();
  v37 = v36;
  v38 = v74;
  v39 = v85;
  v40 = *(v85 + 48);
  v80 = v85 + 48;
  v79 = v40;
  if (v40(v37, 1, v74) != 1)
  {
    v42 = v39 + 32;
    v78 = *(v39 + 32);
    v77 = (v76 + 6);
    v68 = (v76 + 4);
    v67 = (v100 + 1);
    v66 = (v102 + 1);
    v102 = (v99 + 48);
    v100 = (v99 + 32);
    v43 = (v101 + 8);
    v96 = (v99 + 8);
    v89 = (v101 + 16);
    v87 = (v101 + 32);
    v88 = (v101 + 56);
    v65 = (v95 + 8);
    v64 = v76 + 1;
    v85 = v42;
    v76 = (v42 - 24);
    v90 = v10;
    v69 = v19;
    do
    {
      v44 = v86;
      v78(v86, v37, v38);
      SharedTagged_3<>.docPage.getter();
      if ((*v77)(v33, 1, v19) == 1)
      {
        (*v76)(v44, v38);
        sub_100055E84(v33, &qword_1000D4388);
      }

      else
      {
        (*v68)(v81, v33, v19);
        v45 = v70;
        Ref.subscript.getter();
        v46 = v72;
        PaperDocumentPage.subelements.getter();
        (*v67)(v45, v71);
        v47 = v73;
        CROrderedSet.makeIterator()();
        (*v66)(v46, v47);
        CROrderedSet.Iterator.next()();
        v101 = *v102;
        if ((v101)(v31, 1, v10) != 1)
        {
          v99 = *v100;
          (v99)(v35, v31, v10);
          while (1)
          {
            SharedTagged_10.subscript.getter();
            v51 = v35;
            sub_10006441C(v108, v108[3]);
            v52 = v106;
            dispatch thunk of CanvasElement.flags.getter();
            sub_100064460(v108);
            v53 = v97;
            static CanvasElementFlags.useOriginalPDFAppearance.getter();
            sub_100064878(&qword_1000D43A0, &type metadata accessor for CanvasElementFlags);
            v54 = v105;
            v55 = dispatch thunk of SetAlgebra.isSuperset(of:)();
            v50 = v10;
            v56 = *v43;
            (*v43)(v53, v54);
            v56(v52, v54);
            if (v55)
            {
              v57 = v91;
              static CanvasElementFlags.useOriginalPDFAppearance.getter();
              v95 = SharedTagged_10.subscript.modify();
              sub_1000644AC(v58, *(v58 + 24));
              v59 = dispatch thunk of CanvasElement.flags.modify();
              v60 = v105;
              (*v89)(v106);
              v61 = v92;
              dispatch thunk of SetAlgebra.intersection(_:)();
              if (dispatch thunk of SetAlgebra.isEmpty.getter())
              {
                v56(v61, v60);
                v56(v57, v60);
                v49 = 1;
                v48 = v93;
              }

              else
              {
                dispatch thunk of SetAlgebra.subtract(_:)();
                v56(v57, v60);
                v48 = v93;
                (*v87)(v93, v61, v60);
                v49 = 0;
              }

              (*v88)(v48, v49, 1, v60);
              sub_100055E84(v48, &unk_1000D4360);
              v59(v107, 0);
              (v95)(v108, 0);
              v50 = v90;
              v51 = v94;
            }

            (*v96)(v51, v50);
            v31 = v98;
            CROrderedSet.Iterator.next()();
            v10 = v50;
            v35 = v51;
            if ((v101)(v31, 1, v50) == 1)
            {
              break;
            }

            (v99)(v51, v31, v50);
          }
        }

        (*v65)(v103, v104);
        v19 = v69;
        (*v64)(v81, v69);
        v38 = v74;
        (*v76)(v86, v74);
        v33 = v75;
      }

      v37 = v84;
      CROrderedSet.Iterator.next()();
    }

    while (v79(v37, 1, v38) != 1);
  }

  return (*(v63 + 8))(v82, v83);
}

uint64_t sub_100060E54@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = __DataStorage._bytes.getter();
    if (v10)
    {
      v11 = __DataStorage._offset.getter();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = __DataStorage._length.getter();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v20 = a3;
    v21 = BYTE2(a3);
    v22 = BYTE3(a3);
    v23 = BYTE4(a3);
    v24 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = __DataStorage._bytes.getter();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = __DataStorage._offset.getter();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = __DataStorage._length.getter();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_100061084(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v13[0] = a1;
      LOWORD(v13[1]) = a2;
      BYTE2(v13[1]) = BYTE2(a2);
      BYTE3(v13[1]) = BYTE3(a2);
      BYTE4(v13[1]) = BYTE4(a2);
      BYTE5(v13[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = sub_100062190(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_100057E8C(a3, a4);
    return v10 & 1;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v13, 0, 14);
LABEL_9:
  sub_100060E54(v13, a3, a4, &v12);
  v10 = v4;
  sub_100057E8C(a3, a4);
  if (!v4)
  {
    v10 = v12;
  }

  return v10 & 1;
}

uint64_t sub_100061214(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10006130C;

  return v6(a1);
}

uint64_t sub_10006130C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100061404(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = type metadata accessor for ContinuousClock.Instant();
  *(v6 + 64) = v12;
  *(v6 + 72) = *(v12 - 8);
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return _swift_task_switch(sub_100061504, 0, 0);
}

uint64_t sub_100061504()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];
  v4 = type metadata accessor for ContinuousClock();
  v5 = sub_100064878(&qword_1000D43C0, &type metadata accessor for ContinuousClock);
  dispatch thunk of Clock.now.getter();
  sub_100064878(&qword_1000D43C8, &type metadata accessor for ContinuousClock.Instant);
  dispatch thunk of InstantProtocol.advanced(by:)();
  v6 = *(v3 + 8);
  v0[12] = v6;
  v0[13] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v2);
  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = sub_100061694;
  v8 = v0[11];

  return dispatch thunk of Clock.sleep(until:tolerance:)(v8, v0 + 2, v4, v5);
}

uint64_t sub_100061694()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 64);
  v5 = *v1;
  *(v5 + 120) = v0;

  v2(v3, v4);
  if (v0)
  {

    return _swift_task_switch(sub_100061850, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_100061850()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000618BC(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_100064970;

  return v6();
}

uint64_t sub_1000619A4(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_100061A8C;

  return v7();
}

uint64_t sub_100061A8C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100061B80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100055840(&qword_1000D4170);
  __chkstk_darwin(v9 - 8);
  v11 = v23 - v10;
  sub_100064290(a3, v23 - v10, &qword_1000D4170);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_100055E84(v11, &qword_1000D4170);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  TaskPriority.rawValue.getter();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v14 = dispatch thunk of Actor.unownedExecutor.getter();
  v16 = v15;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v17 = String.utf8CString.getter() + 32;
    v18 = swift_allocObject();
    *(v18 + 16) = a4;
    *(v18 + 24) = a5;

    if (v16 | v14)
    {
      v24[0] = 0;
      v24[1] = 0;
      v19 = v24;
      v24[2] = v14;
      v24[3] = v16;
    }

    else
    {
      v19 = 0;
    }

    v23[1] = 7;
    v23[2] = v19;
    v23[3] = v17;
    v21 = swift_task_create();

    sub_100055E84(a3, &qword_1000D4170);

    return v21;
  }

LABEL_8:
  sub_100055E84(a3, &qword_1000D4170);
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a5;
  if (v16 | v14)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v14;
    v24[7] = v16;
  }

  return swift_task_create();
}

uint64_t sub_100061E7C(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100064974;

  return v6(a1);
}

uint64_t sub_100061F7C()
{
  v1 = sub_100055840(&qword_1000D4178);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);
  sub_100057E8C(*(v0 + v5), *(v0 + v5 + 8));

  return _swift_deallocObject(v0, v5 + 16, v3 | 7);
}