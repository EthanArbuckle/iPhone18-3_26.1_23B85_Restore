void sub_102C(id a1)
{
  qword_15620 = objc_alloc_init(AXTouchAccommodationsUIServer);

  _objc_release_x1();
}

void sub_1238(uint64_t a1)
{
  if (UIAccessibilityIsVoiceOverRunning())
  {
    v2 = *(a1 + 32);
    v3 = sub_12B4(@"TOUCH-ACCOMMODATIONS-SUSPENEDED-DUE-TO-VOICEOVER-ON");
    [v2 _showBannerWithText:v3 andSubtitleText:0];
  }
}

id sub_12B4(void *a1)
{
  v1 = a1;
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:v1 value:v1 table:@"Localizable"];

  return v3;
}

void sub_13E8(uint64_t a1)
{
  if (_UIAccessibilityZoomTouchEnabled())
  {
    v2 = *(a1 + 32);
    v3 = sub_12B4(@"TOUCH-ACCOMMODATIONS-ZOOM-CONTROLLER-ENABLED");
    [v2 _showBannerWithText:v3 andSubtitleText:0];
  }
}

void sub_1CC0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_12B4(@"TOUCH-ACCOMMODATIONS-SUSPENEDED-DUE-TO-VOICEOVER-ON");
  [v1 _showBannerWithText:v2 andSubtitleText:0];
}

void sub_1D20(id a1)
{
  v1 = +[AXSettings sharedInstance];
  [v1 setZoomShouldShowSlug:1];
}

void sub_1D6C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_12B4(@"TOUCH-ACCOMMODATIONS-ZOOM-CONTROLLER-ENABLED");
  [v1 _showBannerWithText:v2 andSubtitleText:0];
}

void sub_1DCC(id a1)
{
  v1 = +[AXSettings sharedInstance];
  [v1 setZoomShouldShowSlug:0];
}

void sub_1E18(uint64_t a1)
{
  v2 = +[NSDate distantPast];
  v3 = +[AXSettings sharedInstance];
  [v3 setAccessibilityHelpBannerFirstShownTimestamp:v2];

  v4 = [*(a1 + 32) alertBannerManager];
  [v4 dismissAlertBanner:@"User tapped dismiss button"];
}

void sub_2028(id a1, BOOL a2)
{
  v2 = a2;
  v3 = AXLogTouchAccommodations();
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v5 = 0;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_INFO, "Showing Scene View Controller for Touch Accommodations", v5, 2u);
    }
  }

  else if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_78EC(v4);
  }
}

void sub_2140(id a1, BOOL a2)
{
  v2 = a2;
  v3 = AXLogTouchAccommodations();
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v5 = 0;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_INFO, "Hiding Scene View Controller for Touch Accommodations", v5, 2u);
    }
  }

  else if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_7930(v4);
  }
}

void sub_2418(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  if (a2 == 0x7FFFFFFFFFFFFFFFLL)
  {
    [v3 setTouchAccommodationsEnabled:0];
  }

  else
  {
    [v3 setTouchAccommodationsUsageConfirmed:1];
  }

  v4 = [*(a1 + 40) usageConfirmationTimeoutTimer];
  [v4 cancel];
}

void sub_248C(id a1)
{
  v1 = +[AXSpringBoardServer server];
  [v1 hideAlert];
}

void sub_2540(uint64_t a1)
{
  v1 = *(a1 + 32);
  if ((*(v1 + 9) & 1) == 0)
  {
    v3 = [*(v1 + 48) parentViewController];

    if (!v3)
    {
      v4 = +[AXUIDisplayManager sharedDisplayManager];
      [v4 addContentViewController:*(*(a1 + 32) + 48) withUserInteractionEnabled:0 forService:?];
    }

    *(*(a1 + 32) + 9) = 1;
    *(*(a1 + 32) + 10) = 0;
  }
}

void sub_2630(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2[9] == 1 && (v2[10] & 1) == 0)
  {
    v3 = [v2 viewController];
    [v3 removeAllHandTouchMarkers];

    v4 = [*(*(a1 + 32) + 48) parentViewController];

    if (v4)
    {
      v5 = +[AXUIDisplayManager sharedDisplayManager];
      [v5 removeContentViewController:*(*(a1 + 32) + 48) withUserInteractionEnabled:0 forService:?];
    }

    *(*(a1 + 32) + 10) = 1;
    *(*(a1 + 32) + 9) = 0;
  }
}

void sub_29A8(uint64_t a1)
{
  v3 = [*(a1 + 32) viewController];
  v2 = [*(a1 + 32) _getPointsArrayFromPathInfoArray:*(a1 + 40)];
  [v3 updateLocationOfHandTouchMarkerAtPoints:v2];
}

void sub_2AA4(uint64_t a1)
{
  v3 = [*(a1 + 32) viewController];
  v2 = [*(a1 + 32) _getPointsArrayFromPathInfoArray:*(a1 + 40)];
  [v3 resetProgressTrackOfHandTouchMarkerAtPoints:v2];
}

void sub_2B7C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v6 = sub_12B4(@"HOLD_DURATION_TRIPLE_CLICK_HELP_FORMAT");
  v2 = sub_12B4(@"HOLD-DURATION-HELP-SUBTITLE");
  v3 = +[AXSettings sharedInstance];
  [v3 touchAccommodationsHoldDuration];
  *&v4 = v4;
  v5 = [NSString localizedStringWithFormat:v2, *&v4];
  [v1 _showBannerWithText:v6 andSubtitleText:v5];
}

void sub_3E00(uint64_t a1)
{
  if (*(a1 + 40) != 1)
  {
    return;
  }

  v2 = +[AXSettings sharedInstance];
  v3 = [v2 touchAccommodationsTapActivationMethod];

  if (!v3)
  {
    return;
  }

  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v44 = a1;
  v4 = [*(*(a1 + 32) + 8) sublayers];
  v5 = [v4 countByEnumeratingWithState:&v46 objects:v50 count:16];
  if (!v5)
  {
    goto LABEL_30;
  }

  v6 = v5;
  v7 = *v47;
  v45 = kCAFilterPlusD;
  do
  {
    for (i = 0; i != v6; i = i + 1)
    {
      if (*v47 != v7)
      {
        objc_enumerationMutation(v4);
      }

      v9 = *(*(&v46 + 1) + 8 * i);
      v10 = +[AXSettings sharedInstance];
      [v10 touchAccommodationsTapActivationTimeout];
      v12 = v11;

      if (v12 <= 0.289999992)
      {
        v19 = [v9 name];
        v20 = [v19 isEqualToString:@"shapeLayerDisc"];

        if (v20 || ([v9 name], v21 = objc_claimAutoreleasedReturnValue(), v22 = objc_msgSend(v21, "isEqualToString:", @"shapeLayerDot"), v21, v22))
        {
          v23 = +[UIColor clearColor];
          [v9 setFillColor:{objc_msgSend(v23, "CGColor")}];
          goto LABEL_27;
        }

        v25 = [v9 name];
        v26 = [v25 isEqualToString:@"shapeLayerEmptyTrack"];

        if (v26 || ([v9 name], v27 = objc_claimAutoreleasedReturnValue(), v28 = objc_msgSend(v27, "isEqualToString:", @"holdDurationProgressTrack"), v27, v28))
        {
          v29 = +[UIColor clearColor];
          goto LABEL_26;
        }
      }

      else
      {
        v13 = +[AXSettings sharedInstance];
        [v13 touchAccommodationsHoldDuration];
        v15 = v14;

        v16 = [v9 name];
        v17 = [v16 isEqualToString:@"shapeLayerDisc"];

        if (v15 > 0.289999992)
        {
          if (!v17)
          {
            continue;
          }

          v18 = [UIColor colorWithRed:0.0 green:0.0 blue:0.0 alpha:0.5];
          [v9 setFillColor:{objc_msgSend(v18, "CGColor")}];
          goto LABEL_23;
        }

        if (v17)
        {
          v24 = 0.5;
LABEL_22:
          v32 = [UIColor colorWithRed:0.0 green:0.0 blue:0.0 alpha:v24];
          [v9 setFillColor:{objc_msgSend(v32, "CGColor")}];

          v18 = [CAFilter filterWithType:v45];
          [v9 setCompositingFilter:v18];
LABEL_23:

          continue;
        }

        v30 = [v9 name];
        v31 = [v30 isEqualToString:@"shapeLayerDot"];

        if (v31)
        {
          v24 = 0.300000012;
          goto LABEL_22;
        }

        v33 = [v9 name];
        v34 = [v33 isEqualToString:@"shapeLayerEmptyTrack"];

        if (v34)
        {
          v29 = [UIColor colorWithRed:1.0 green:1.0 blue:1.0 alpha:0.5];
LABEL_26:
          v23 = v29;
          [v9 setStrokeColor:{objc_msgSend(v29, "CGColor")}];
LABEL_27:

          [v9 setCompositingFilter:0];
          continue;
        }
      }
    }

    v6 = [v4 countByEnumeratingWithState:&v46 objects:v50 count:16];
  }

  while (v6);
LABEL_30:

  v35 = +[AXSettings sharedInstance];
  [v35 touchAccommodationsTapActivationTimeout];
  v37 = v36;

  v38 = *(v44 + 32);
  if (v37 <= 0.289999992)
  {
    v39 = +[UIColor clearColor];
    v41 = v38;
    v42 = v39;
    v40 = 0;
  }

  else
  {
    v39 = +[UIColor whiteColor];
    v40 = kCAFilterNormalBlendMode;
    v41 = v38;
    v42 = v39;
  }

  v43 = [v41 _createProgressLayerWithColor:v42 withFilterName:v40 forHoldDuration:0];

  [v43 setName:@"tapAssistanceProgressTrack"];
  [*(*(v44 + 32) + 8) addSublayer:v43];
}

void sub_4834(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_4868(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 8);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_4920;
  v3[3] = &unk_10580;
  objc_copyWeak(&v5, (a1 + 40));
  v4 = *(a1 + 32);
  dispatch_async(v2, v3);

  objc_destroyWeak(&v5);
}

void sub_4920(uint64_t a1)
{
  v2 = +[AXSettings sharedInstance];
  v3 = [v2 touchAccommodationsIgnoreRepeatEnabled];

  if ((v3 & 1) == 0)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    [WeakRetained _setTimerState:0];

    v5 = *(*(a1 + 32) + 32);

    [v5 cancel];
  }
}

id sub_49B4(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 type] == 3001)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v5 = [WeakRetained _handleEvent:v3];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void sub_4FAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_4FD0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _endHoldDurationAndAllowTapAssistance:1];
}

void sub_5104(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_5128(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _setTimerState:4];
}

void sub_5254(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_5278(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _setTimerState:0];
}

void sub_57D8(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 32);
  if (v2 == 1)
  {
    v7 = [v3 copy];
    v4 = [v7 handInfo];
    [v4 setEventType:1];

    [v7 resetInitialTouchCountValueForHidStreamIdentifier:TouchAccommodationsHIDEventTapIdentifier];
    [v7 setIsGeneratedEvent:1];
    [*(a1 + 40) _sendHIDEventUnconditionally:v7 shouldUseOriginalTime:1];
    [NSThread sleepForTimeInterval:0.05];
  }

  else
  {
    [v3 setIsGeneratedEvent:1];
    v6 = *(a1 + 32);
    v5 = *(a1 + 40);

    [v5 _sendHIDEventUnconditionally:v6 shouldUseOriginalTime:1];
  }
}

id sub_596C(uint64_t a1)
{
  v2 = [*(a1 + 32) initialTouchEvent];

  if (v2)
  {
    v3 = *(a1 + 32);
    v4 = [v3 initialTouchEvent];
    [v3 _sendHIDEventUnconditionally:v4 shouldUseOriginalTime:0];

    [NSThread sleepForTimeInterval:0.05];
    v5 = [*(*(a1 + 32) + 160) handInfo];
    [v5 setEventType:6];

    [*(*(a1 + 32) + 160) setIsGeneratedEvent:1];
    [*(*(a1 + 32) + 160) setWillUpdateMask:0];
    [*(*(a1 + 32) + 160) setDidUpdateMask:0];
    [*(a1 + 32) _sendHIDEventUnconditionally:*(*(a1 + 32) + 160) shouldUseOriginalTime:0];
  }

  v6 = *(a1 + 32);

  return [v6 setInitialTouchEvent:0];
}

id sub_5B08(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2[19])
  {
    v3 = [v2[19] handInfo];
    [v3 setEventType:1];

    [*(*(a1 + 32) + 152) setIsGeneratedEvent:1];
    [*(a1 + 32) _sendHIDEventUnconditionally:*(*(a1 + 32) + 152) shouldUseOriginalTime:0];
    [NSThread sleepForTimeInterval:0.05];
    v4 = [*(*(a1 + 32) + 152) handInfo];
    [v4 setEventType:6];

    [*(*(a1 + 32) + 152) setIsGeneratedEvent:1];
    [*(*(a1 + 32) + 152) setWillUpdateMask:0];
    [*(*(a1 + 32) + 152) setDidUpdateMask:0];
    [*(a1 + 32) _sendHIDEventUnconditionally:*(*(a1 + 32) + 152) shouldUseOriginalTime:0];
    v2 = *(a1 + 32);
  }

  return [v2 setFinalTouchEvent:0];
}

uint64_t sub_6A18(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_6A30(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 120) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return _objc_release_x1();
}

void sub_7140(uint64_t a1)
{
  v1 = (a1 + 32);
  os_unfair_lock_lock((*(a1 + 32) + 56));
  if ([*&(*v1)[12]._os_unfair_lock_opaque count])
  {
    v2 = AXLogTouchAccommodations();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      sub_7B88(v1, 48, v2);
    }

    [*&(*v1)[12]._os_unfair_lock_opaque removeAllObjects];
  }

  os_unfair_lock_unlock(*v1 + 14);
}

id sub_71F4(uint64_t a1)
{
  v2 = [*(a1 + 40) copy];
  [*(a1 + 32) setInitialTouchEvent:v2];

  v3 = *(a1 + 32);

  return [v3 setCanBeginIgnoreRepeatTimer:1];
}

void sub_7254(id *a1)
{
  [a1[4] _setTimerState:2];
  if ([a1[5] touchAccommodationsTapActivationMethod] == &dword_0 + 2)
  {
    v5 = [a1[6] handInfo];
    v2 = [v5 paths];
    v3 = a1[4];
    v4 = v3[14];
    v3[14] = v2;
  }
}

id sub_72EC(uint64_t a1)
{
  if ([*(a1 + 32) touchAccommodationsIgnoreRepeatEnabled])
  {
    if (([*(a1 + 32) touchAccommodationsHoldDurationEnabled] & 1) == 0)
    {
      v2 = *(a1 + 40);
      if (v2[8] != 3 && *(a1 + 48) != 10 && [v2 canBeginIgnoreRepeatTimer])
      {
        [*(a1 + 40) _setTimerState:3];
      }
    }
  }

  v3 = *(a1 + 40);

  return [v3 setCanBeginIgnoreRepeatTimer:0];
}

void sub_7374(uint64_t a1)
{
  if ([*(a1 + 32) _shouldAllowBypassForSwipeGestures])
  {
    v2 = [*(a1 + 32) _bypassForSwipeGestureDueToEvent:*(a1 + 40)];
    v3 = AXLogTouchAccommodations();
    v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG);
    if (v2)
    {
      if (v4)
      {
        sub_7CB8((a1 + 40));
      }
    }

    else
    {
      if (v4)
      {
        sub_7C40(a1);
      }

      v6 = *(a1 + 32);
      v5 = *(a1 + 40);
      v7 = *(v6 + 128);
      v8[0] = _NSConcreteStackBlock;
      v8[1] = 3221225472;
      v8[2] = sub_7484;
      v8[3] = &unk_10530;
      v8[4] = v6;
      v9 = v5;
      dispatch_sync(v7, v8);
    }
  }
}

id sub_7484(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 120);
  if (!v2)
  {
    v3 = +[NSMutableArray array];
    v4 = *(a1 + 32);
    v5 = *(v4 + 120);
    *(v4 + 120) = v3;

    v2 = *(*(a1 + 32) + 120);
  }

  v6 = *(a1 + 40);

  return [v2 addObject:v6];
}

void sub_760C(uint64_t a1)
{
  Current = CFAbsoluteTimeGetCurrent();
  if (Current - *(*(a1 + 32) + 88) > 3.0)
  {
    v3 = +[AXUserEventTimer sharedInstance];
    [v3 userEventOccurred];

    *(*(a1 + 32) + 88) = Current;
  }
}

void sub_7974(uint64_t *a1, NSObject *a2)
{
  v2 = *a1;
  v3 = 134217984;
  v4 = v2;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "Unexpected state for ending hold duration: %ld", &v3, 0xCu);
}

void sub_79F0(NSObject *a1)
{
  v2 = +[NSThread callStackSymbols];
  v3 = 138543362;
  v4 = v2;
  _os_log_debug_impl(&dword_0, a1, OS_LOG_TYPE_DEBUG, "Ending hold duration %{public}@", &v3, 0xCu);
}

void sub_7B88(void *a1, uint64_t a2, NSObject *a3)
{
  v6 = [*(*a1 + a2) count];
  v7 = *(*a1 + a2);
  v8 = 134218242;
  v9 = v6;
  v10 = 2114;
  v11 = v7;
  _os_log_error_impl(&dword_0, a3, OS_LOG_TYPE_ERROR, "HID has been quiesced for 30 seconds but there are still %lu generations anticipating update! This is a bug somewhere in the system! generations: %{public}@", &v8, 0x16u);
}

void sub_7C40(uint64_t a1)
{
  v6 = *(a1 + 48);
  sub_78CC();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_7CB8(uint64_t *a1)
{
  v6 = *a1;
  sub_78CC();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
}