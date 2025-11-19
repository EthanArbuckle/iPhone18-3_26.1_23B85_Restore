void sub_100004F7C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 128));
  _Unwind_Resume(a1);
}

void sub_10000500C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [*(a1 + 32) _onDeviceEyeTrackingToggled];
    WeakRetained = v3;
  }
}

void sub_100005060(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [*(a1 + 32) _onDeviceEyeTrackingToggled];
    WeakRetained = v3;
  }
}

void sub_1000050B4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = +[AXSettings sharedInstance];
    [v3 setShouldShowUncalibratedPoints:{objc_msgSend(v2, "assistiveTouchMouseOnDeviceEyeTrackingShouldShowUncalibratedPoints")}];

    WeakRetained = v3;
  }
}

void sub_100005124(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained && WeakRetained[15])
  {
    v3 = WeakRetained;
    v2 = +[AXSettings sharedInstance];
    [v3[15] setUseWeightedMovingAverage:{objc_msgSend(v2, "assistiveTouchOnDeviceEyeTrackingShouldUseWeightedAverages")}];

    WeakRetained = v3;
  }
}

void sub_1000051A0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained && WeakRetained[15])
  {
    v3 = WeakRetained;
    v2 = +[AXSettings sharedInstance];
    [v3[15] setUseMedianFilter:{objc_msgSend(v2, "assistiveTouchOnDeviceEyeTrackingShouldUseMotionFilter")}];

    WeakRetained = v3;
  }
}

void sub_10000521C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained && WeakRetained[15])
  {
    v3 = WeakRetained;
    v2 = +[AXSettings sharedInstance];
    [v3[15] setUseGaussianBlur:{objc_msgSend(v2, "assistiveTouchOnDeviceEyeTrackingShouldUseGaussianBlur")}];

    WeakRetained = v3;
  }
}

void sub_100005298(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = +[AXSettings sharedInstance];
    v4 = [v3 assistiveTouchOnDeviceEyeTrackingSmoothingBufferSize];
    WeakRetained[112] = v4 >= kAXSAssistiveTouchOnDeviceEyeTrackingSmoothingBufferSizeMinUserPreference;
  }

  v5 = +[AXAccessQueue mainAccessQueue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000053A0;
  v6[3] = &unk_1001D3460;
  objc_copyWeak(&v7, (a1 + 32));
  [v5 performSynchronousWritingBlock:v6];

  objc_destroyWeak(&v7);
}

void sub_1000053A0(uint64_t a1)
{
  v2 = +[AXSettings sharedInstance];
  v3 = [v2 assistiveTouchOnDeviceEyeTrackingSmoothingBufferSize];

  if (v3 <= kAXSAssistiveTouchOnDeviceEyeTrackingSmoothingBufferSizeMinUserPreference)
  {
    v4 = kAXSAssistiveTouchOnDeviceEyeTrackingSmoothingBufferSizeMinUserPreference;
  }

  else
  {
    v4 = v3;
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained _currentPointSmoother];
  [v5 setBufferSize:v4];
}

void sub_10000543C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained _smoothingBufferSizeForCurrentActiveEyeTracker];
  v4 = v3;
  if (WeakRetained)
  {
    v5 = 0;
    if ((*(*(a1 + 32) + 112) & 1) == 0 && v3)
    {
      v6 = [v3 unsignedIntegerValue];
      v5 = v6 > kAXSAssistiveTouchMotionTrackerSmoothingBufferSizeDefault;
    }

    WeakRetained[96] = v5;
  }

  if (v4)
  {
    v7 = +[AXAccessQueue mainAccessQueue];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100005570;
    v8[3] = &unk_1001D3438;
    objc_copyWeak(&v10, (a1 + 40));
    v9 = v4;
    [v7 performSynchronousWritingBlock:v8];

    objc_destroyWeak(&v10);
  }
}

void sub_100005570(uint64_t a1)
{
  v2 = [*(a1 + 32) unsignedIntegerValue];
  if (v2 <= 1)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = [WeakRetained _currentPointSmoother];
  [v4 setBufferSize:v3];
}

void sub_1000055E0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    if (*(*(a1 + 32) + 112) == 1)
    {
      WeakRetained[96] = 0;
    }

    else
    {
      v4 = +[AXSettings sharedInstance];
      v5 = [v4 assistiveTouchMotionTrackerSmoothingBufferSize];
      v3[96] = v5 > kAXSAssistiveTouchMotionTrackerSmoothingBufferSizeDefault;
    }
  }

  v6 = +[AXAccessQueue mainAccessQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100005700;
  v7[3] = &unk_1001D3460;
  objc_copyWeak(&v8, (a1 + 40));
  [v6 performSynchronousWritingBlock:v7];

  objc_destroyWeak(&v8);
}

void sub_100005700(uint64_t a1)
{
  v2 = +[AXSettings sharedInstance];
  v3 = [v2 assistiveTouchMotionTrackerSmoothingBufferSize];

  if (v3 <= 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained _currentPointSmoother];
  [v5 setBufferSize:v4];
}

void sub_100005790(uint64_t a1)
{
  v2 = +[AXAccessQueue mainAccessQueue];
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100005850;
  v3[3] = &unk_1001D3460;
  objc_copyWeak(&v4, (a1 + 32));
  [v2 performSynchronousWritingBlock:v3];

  objc_destroyWeak(&v4);
}

void sub_100005850(uint64_t a1)
{
  v6 = +[AXSettings sharedInstance];
  [v6 assistiveTouchMotionTrackerSmoothingMaxDelta];
  v3 = v2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained _currentPointSmoother];
  [v5 setSmoothingMaxDelta:v3];
}

void sub_1000058D8(uint64_t a1)
{
  v2 = +[AXAccessQueue mainAccessQueue];
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100005998;
  v3[3] = &unk_1001D3460;
  objc_copyWeak(&v4, (a1 + 32));
  [v2 performSynchronousWritingBlock:v3];

  objc_destroyWeak(&v4);
}

void sub_100005998(uint64_t a1)
{
  v6 = +[AXSettings sharedInstance];
  [v6 assistiveTouchMotionTrackerXNormalizationOrder];
  v3 = v2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained _currentPointSmoother];
  [v5 setXOrder:v3];
}

void sub_100005A20(uint64_t a1)
{
  v2 = +[AXAccessQueue mainAccessQueue];
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100005AE0;
  v3[3] = &unk_1001D3460;
  objc_copyWeak(&v4, (a1 + 32));
  [v2 performSynchronousWritingBlock:v3];

  objc_destroyWeak(&v4);
}

void sub_100005AE0(uint64_t a1)
{
  v6 = +[AXSettings sharedInstance];
  [v6 assistiveTouchMotionTrackerYNormalizationOrder];
  v3 = v2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained _currentPointSmoother];
  [v5 setYOrder:v3];
}

void sub_100005B68(uint64_t a1)
{
  v2 = +[AXAccessQueue mainAccessQueue];
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100005C28;
  v3[3] = &unk_1001D3460;
  objc_copyWeak(&v4, (a1 + 32));
  [v2 performSynchronousWritingBlock:v3];

  objc_destroyWeak(&v4);
}

void sub_100005C28(uint64_t a1)
{
  v6 = +[AXSettings sharedInstance];
  [v6 assistiveTouchMotionTrackerXNormalizationOffset];
  v3 = v2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained _currentPointSmoother];
  [v5 setXOffset:v3];
}

void sub_100005CB0(uint64_t a1)
{
  v2 = +[AXAccessQueue mainAccessQueue];
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100005D70;
  v3[3] = &unk_1001D3460;
  objc_copyWeak(&v4, (a1 + 32));
  [v2 performSynchronousWritingBlock:v3];

  objc_destroyWeak(&v4);
}

void sub_100005D70(uint64_t a1)
{
  v6 = +[AXSettings sharedInstance];
  [v6 assistiveTouchMotionTrackerYNormalizationOffset];
  v3 = v2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained _currentPointSmoother];
  [v5 setYOffset:v3];
}

void sub_100005DF8(uint64_t a1)
{
  v2 = +[AXAccessQueue mainAccessQueue];
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100005EB8;
  v3[3] = &unk_1001D3460;
  objc_copyWeak(&v4, (a1 + 32));
  [v2 performSynchronousWritingBlock:v3];

  objc_destroyWeak(&v4);
}

void sub_100005EB8(uint64_t a1)
{
  v5 = +[AXSettings sharedInstance];
  v2 = [v5 assistiveTouchMotionTrackerShouldOffsetBufferPoints];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [WeakRetained _currentPointSmoother];
  [v4 setShouldOffsetBufferPoints:v2];
}

void sub_100005F40(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = +[AXSettings sharedInstance];
    v3[172] = [v2 assistiveTouchForceEyeTrackerExperience];

    WeakRetained = v3;
  }
}

void sub_100005FAC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [*(a1 + 32) _headTrackingToggled];
    WeakRetained = v3;
  }
}

void sub_100006000(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = +[AXSettings sharedInstance];
    [v2 assistiveTouchHeadTrackingSensitivity];
    [v3[9] setSensitivity:?];

    WeakRetained = v3;
  }
}

void sub_100006070(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [*(a1 + 32) _updateMotionTrackerMode];
    WeakRetained = v3;
  }
}

void sub_1000060C4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = +[AXSettings sharedInstance];
    [v2 assistiveTouchHeadTrackingMovementToleranceInJoystickMode];
    [v3[9] setJoystickModeMovementThreshold:?];

    WeakRetained = v3;
  }
}

void sub_100006134(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [*(a1 + 32) _updateMotionTrackerExpressionConfig];
    WeakRetained = v3;
  }
}

void sub_100006188(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [*(a1 + 32) _updateMotionTrackerActionConfig];
    WeakRetained = v3;
  }
}

void sub_1000061DC(uint64_t a1)
{
  v5 = +[BKSMousePointerService sharedInstance];
  v2 = [v5 addPointerDeviceObserver:*(a1 + 32)];
  v3 = *(a1 + 32);
  v4 = *(v3 + 160);
  *(v3 + 160) = v2;
}

id sub_1000064FC(uint64_t a1)
{
  v2 = ASTLogCommon();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    if (_AXSAssistiveTouchEnabled())
    {
      v3 = @"YES";
    }

    else
    {
      v3 = @"NO";
    }

    v6 = 136315650;
    v7 = "[HNDDeviceManager setDetectDevices:]_block_invoke";
    if (_AXSAssistiveTouchScannerEnabled())
    {
      v4 = @"YES";
    }

    else
    {
      v4 = @"NO";
    }

    v8 = 2112;
    v9 = v3;
    v10 = 2112;
    v11 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s: attempting to enableMotionTrackingDevices, _AXSAssistiveTouchEnabled: %@, _AXSAssistiveTouchScannerEnabled: %@", &v6, 0x20u);
  }

  result = _AXSAssistiveTouchEnabled();
  if (result)
  {
    result = _AXSAssistiveTouchScannerEnabled();
    if (!result)
    {
      return [*(a1 + 32) enableMotionTrackingDevices];
    }
  }

  return result;
}

void sub_100006960(uint64_t a1)
{
  v2 = +[AXSettings sharedInstance];
  [v2 updateCustomizableMouse:*(a1 + 32)];
}

void sub_100006E68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100006E80(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100006E98(uint64_t a1)
{
  v12[0] = @"scrollAmount";
  v2 = [NSNumber numberWithLong:*(*(a1 + 32) + 56)];
  v12[1] = @"scrollPoint";
  v13[0] = v2;
  v3 = [NSValue valueWithPoint:*(a1 + 48), *(a1 + 56)];
  v13[1] = v3;
  v4 = [NSDictionary dictionaryWithObjects:v13 forKeys:v12 count:2];

  if (([*(*(*(a1 + 40) + 8) + 40) performAXAction:2047 withValue:v4] & 1) == 0)
  {
    while (1)
    {
      v5 = [*(*(*(a1 + 40) + 8) + 40) numberWithAXAttribute:2021];
      v6 = [v5 unsignedIntValue];

      v7 = +[AXBackBoardServer server];
      v8 = [v7 contextIdHostingContextId:v6];

      v9 = [AXUIElement uiApplicationForContext:v8];
      if (!v9 || [*(*(*(a1 + 40) + 8) + 40) isEqual:v9])
      {
        break;
      }

      v10 = *(*(a1 + 40) + 8);
      v11 = *(v10 + 40);
      *(v10 + 40) = v9;

      if ([*(*(*(a1 + 40) + 8) + 40) performAXAction:2047 withValue:v4])
      {
        goto LABEL_7;
      }
    }
  }

LABEL_7:
  *(*(a1 + 32) + 56) = 0;
}

void sub_100007BD0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100007BF4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _checkBackboardEffectiveDeviceOrientation];
}

void sub_100008314(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100008334(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a4 = 1;
  }
}

void sub_1000085E8(uint64_t a1)
{
  v1 = [*(a1 + 32) _currentPointSmoother];
  [v1 removeAllPoints];
}

void sub_100008980(uint64_t a1, void *a2, int a3)
{
  v5 = a2;
  [v5 unsignedIntegerValue];
  v6 = AXAssistiveTouchHeadTrackingExpressionForAXSSFacialExpression();
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_100006E80;
  v12 = sub_100006E90;
  v13 = [*(a1 + 32) objectForKeyedSubscript:v6];
  if (a3)
  {
    v7 = v9[5];
    if (v7)
    {
      if (([v7 isEqualToString:@"__NONE__"] & 1) == 0)
      {
        [*(a1 + 40) delayedHeadTrackingPointForExpressions];
        [HNDVirtualHIDMouse handleHeadTrackingMovementWithPoint:?];
        [*(a1 + 40) setIgnoreMovementDuringFacialExpressionActivation:1];
        AXPerformBlockOnMainThreadAfterDelay();
      }
    }
  }

  _Block_object_dispose(&v8, 8);
}

void sub_100008ADC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100008AF4(uint64_t a1)
{
  v2 = [objc_allocWithZone(HNDEvent) init];
  [v2 setType:1];
  [v2 setButtonNumber:4];
  [v2 setActionOverride:*(*(*(a1 + 40) + 8) + 40)];
  v3 = [*(a1 + 32) handManager];
  [v3 handleButtonEvent:v2];

  AXPerformBlockOnMainThreadAfterDelay();
}

void sub_100008BDC(uint64_t a1)
{
  v3 = [objc_allocWithZone(HNDEvent) init];
  [v3 setType:2];
  [v3 setButtonNumber:4];
  [v3 setActionOverride:*(*(*(a1 + 40) + 8) + 40)];
  v2 = [*(a1 + 32) handManager];
  [v2 handleButtonEvent:v3];

  [*(a1 + 32) setIgnoreMovementDuringFacialExpressionActivation:0];
}

void sub_100008C7C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (([*(a1 + 32) containsObject:?] & 1) == 0)
  {
    (*(*(a1 + 40) + 16))();
  }
}

void sub_100008CE8(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [*(a1 + 32) currentFacialExpressions];
  v4 = [v3 containsObject:v5];

  if ((v4 & 1) == 0)
  {
    (*(*(a1 + 40) + 16))();
  }
}

void sub_1000093F0(uint64_t a1)
{
  v2 = [*(a1 + 32) _currentPointSmoother];
  [v2 addPoint:{*(a1 + 56), *(a1 + 64)}];

  v3 = [*(a1 + 40) currentlySnappedInBubbleMode];
  v4 = [*(a1 + 32) wasSnappedInBubbleMode];
  v5 = [*(a1 + 32) wasSnappedInBubbleMode];
  if (v4 & 1 | ((v3 & 1) == 0) && ((v5 ^ 1 | v3) & 1) != 0)
  {
    if (v3)
    {
      return;
    }
  }

  else
  {
    v6 = [*(a1 + 32) _currentPointSmoother];
    [v6 removeAllPoints];

    if (v3)
    {
      return;
    }
  }

  v10 = [*(a1 + 32) _currentPointSmoother];
  [v10 point];
  v7 = *(*(a1 + 48) + 8);
  *(v7 + 32) = v8;
  *(v7 + 40) = v9;
}

void sub_1000094D8(uint64_t a1)
{
  v2 = [*(a1 + 32) _currentPointSmoother];
  [v2 addPoint:{*(a1 + 48), *(a1 + 56)}];

  v6 = [*(a1 + 32) _currentPointSmoother];
  [v6 point];
  v3 = *(*(a1 + 40) + 8);
  *(v3 + 32) = v4;
  *(v3 + 40) = v5;
}

void sub_100009904(id a1, NSTimer *a2)
{
  v2 = +[AXPISystemActionHelper sharedInstance];
  [v2 activateHomeButton];
}

id sub_100009AFC(uint64_t a1)
{
  v2 = [*(a1 + 32) handManager];
  v3 = [v2 mainDisplayManager];
  [v3 setNeedsRecalibration:*(a1 + 40)];

  [*(a1 + 32) _resetCalibrationTimer];
  v4 = *(*(a1 + 32) + 216);

  return [v4 resetGazeEnrollment];
}

void sub_100009D08(uint64_t a1)
{
  v3 = [*(a1 + 32) handManager];
  v2 = [v3 mainDisplayManager];
  [v2 showBubbleNotificationIndefinitelyWithError:*(a1 + 40)];
}

BOOL sub_10000A0C8(id a1, id a2, unint64_t a3, BOOL *a4)
{
  v4 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

void sub_10000AE78(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v3 deviceCountChanged:{objc_msgSend(v2, "deviceCount")}];
}

id sub_10000AF60(uint64_t a1)
{
  [*(*(a1 + 32) + 152) unionSet:*(a1 + 40)];
  v2 = *(a1 + 32);

  return [v2 _notifyDisplayManagerDeviceCountChanged];
}

id sub_10000B030(uint64_t a1)
{
  [*(*(a1 + 32) + 152) minusSet:*(a1 + 40)];
  v2 = *(a1 + 32);

  return [v2 _notifyDisplayManagerDeviceCountChanged];
}

void sub_10000B36C(id a1)
{
  qword_100218970 = [[SCATSwitchControlServerInstance alloc] _initServer];

  _objc_release_x1();
}

void sub_10000CEFC(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

void sub_10000DE80(uint64_t a1)
{
  v2 = [*(a1 + 32) pointPicker];
  v3 = [v2 delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [*(a1 + 32) pointPicker];
    v6 = [v5 delegate];
    v7 = [*(a1 + 32) pointPicker];
    [v6 pointPickerDidFinishSweeping:v7];

    v8 = [*(a1 + 32) axisPointPicker];
    [v8 setSweepFocusContext:0];
  }
}

void sub_10000EAA4(uint64_t a1, int a2)
{
  if (a2)
  {
    v2 = [*(a1 + 32) viewController];
    [v2 setTransitioningToOrFromActive:0];
  }
}

void sub_10000EBEC(uint64_t a1)
{
  v2 = [*(a1 + 32) viewController];
  v1 = [v2 view];
  [v1 setAlpha:0.0];
}

void sub_10000EC4C(uint64_t a1, int a2)
{
  if (a2)
  {
    v2 = [*(a1 + 32) viewController];
    [v2 setTransitioningToOrFromActive:0];
  }
}

void sub_10000EFA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10000EFC8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = +[AXSettings sharedInstance];
  [v1 setListenForMouseKeyToggle:{objc_msgSend(v2, "assistiveTouchMouseKeysOptionToggleEnabled")}];
}

void sub_10000F028(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateKeyboardMonitorStateIfNeeded];
}

uint64_t sub_10000F194(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 type] == 10)
  {
    v4 = [v3 keyInfo];
    if ([v4 keyCode] == 226)
    {
    }

    else
    {
      v5 = [v3 keyInfo];
      v6 = [v5 keyCode];

      if (v6 != 230)
      {
        dword_100218980 = 0;
        goto LABEL_12;
      }
    }

    if (++dword_100218980 == 5)
    {
      dword_100218980 = 0;
      v7 = +[AXSettings sharedInstance];
      v8 = [v7 assistiveTouchMouseKeysEnabled];

      if (v8)
      {
        v9 = @"MOUSE_KEYS_DISABLED";
      }

      else
      {
        v9 = @"MOUSE_KEYS_ENABLED";
      }

      v10 = sub_100042B24(v9);
      [*(a1 + 32) _showSimpleAlertWithText:v10];
      v11 = +[AXSettings sharedInstance];
      [v11 setAssistiveTouchMouseKeysEnabled:v8 ^ 1];
    }

    else
    {
      [*(*(a1 + 32) + 32) afterDelay:&stru_1001D3770 processBlock:2.0];
    }
  }

LABEL_12:

  return 0;
}

void sub_10000F428(uint64_t a1, void *a2)
{
  device = a2;
  if (IOHIDDeviceConformsTo(device, 1u, 6u) || IOHIDDeviceConformsTo(device, 1u, 7u))
  {
    [*(a1 + 32) addObject:device];
  }
}

void sub_10000F49C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 delegate];
  [v5 deviceDetector:*(a1 + 32) didFindDevice:v4];
}

BOOL sub_10000F50C(id a1, HNDDevice *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

void sub_10000FCC8(void *a1, uint64_t a2, uint64_t a3, __IOHIDDevice *a4)
{
  v6 = ASTLogCommon();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v8 = 138412546;
    v9 = a4;
    v10 = 2080;
    v11 = "matched";
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "===> IOHIDDeviceRef[%@] %s <===\n", &v8, 0x16u);
  }

  sub_10000FFD4(a4);
  v7 = [a1 delegate];
  [v7 deviceDetector:a1 didFindDevice:a4];
}

void sub_10000FDB4(void *a1, uint64_t a2, uint64_t a3, __IOHIDDevice *a4)
{
  v6 = ASTLogCommon();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v10 = a4;
    v11 = 2080;
    v12 = "removed";
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "===> IOHIDDeviceRef[%@] %s <===\n", buf, 0x16u);
  }

  sub_10000FFD4(a4);
  v7 = [a1 delegate];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100010888;
  v8[3] = &unk_1001D3820;
  v8[4] = a4;
  [v7 deviceDetector:a1 unloadDevicesPassingTest:v8];
}

void sub_10000FEE8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = +[AXSettings sharedInstance];
  [v1 setMouseKeysEnabled:{objc_msgSend(v2, "assistiveTouchMouseKeysEnabled")}];
}

void sub_10000FFD4(__IOHIDDevice *a1)
{
  if (a1)
  {
    v2 = ASTLogCommon();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v39 = 136315394;
      v40 = "Transport";
      v41 = 2112;
      Property = IOHIDDeviceGetProperty(a1, @"Transport");
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s -- %@", &v39, 0x16u);
    }

    v3 = ASTLogCommon();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = IOHIDDeviceGetProperty(a1, @"VendorID");
      v39 = 136315394;
      v40 = "VendorID";
      v41 = 2112;
      Property = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s -- %@", &v39, 0x16u);
    }

    v5 = ASTLogCommon();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = IOHIDDeviceGetProperty(a1, @"VendorIDSource");
      v39 = 136315394;
      v40 = "VendorIDSource";
      v41 = 2112;
      Property = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s -- %@", &v39, 0x16u);
    }

    v7 = ASTLogCommon();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = IOHIDDeviceGetProperty(a1, @"ProductID");
      v39 = 136315394;
      v40 = "ProductID";
      v41 = 2112;
      Property = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s -- %@", &v39, 0x16u);
    }

    v9 = ASTLogCommon();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = IOHIDDeviceGetProperty(a1, @"VersionNumber");
      v39 = 136315394;
      v40 = "VersionNumber";
      v41 = 2112;
      Property = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%s -- %@", &v39, 0x16u);
    }

    v11 = ASTLogCommon();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = IOHIDDeviceGetProperty(a1, @"Manufacturer");
      v39 = 136315394;
      v40 = "Manufacturer";
      v41 = 2112;
      Property = v12;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%s -- %@", &v39, 0x16u);
    }

    v13 = ASTLogCommon();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = IOHIDDeviceGetProperty(a1, @"Product");
      v39 = 136315394;
      v40 = "Product";
      v41 = 2112;
      Property = v14;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "%s -- %@", &v39, 0x16u);
    }

    v15 = ASTLogCommon();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = IOHIDDeviceGetProperty(a1, @"SerialNumber");
      v39 = 136315394;
      v40 = "SerialNumber";
      v41 = 2112;
      Property = v16;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "%s -- %@", &v39, 0x16u);
    }

    v17 = ASTLogCommon();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = IOHIDDeviceGetProperty(a1, @"CountryCode");
      v39 = 136315394;
      v40 = "CountryCode";
      v41 = 2112;
      Property = v18;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "%s -- %@", &v39, 0x16u);
    }

    v19 = ASTLogCommon();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v20 = IOHIDDeviceGetProperty(a1, @"StandardType");
      v39 = 136315394;
      v40 = "StandardType";
      v41 = 2112;
      Property = v20;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "%s -- %@", &v39, 0x16u);
    }

    v21 = ASTLogCommon();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v22 = IOHIDDeviceGetProperty(a1, @"LocationID");
      v39 = 136315394;
      v40 = "LocationID";
      v41 = 2112;
      Property = v22;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "%s -- %@", &v39, 0x16u);
    }

    v23 = ASTLogCommon();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      v24 = IOHIDDeviceGetProperty(a1, @"DeviceUsage");
      v39 = 136315394;
      v40 = "DeviceUsage";
      v41 = 2112;
      Property = v24;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "%s -- %@", &v39, 0x16u);
    }

    v25 = ASTLogCommon();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      v26 = IOHIDDeviceGetProperty(a1, @"DeviceUsagePage");
      v39 = 136315394;
      v40 = "DeviceUsagePage";
      v41 = 2112;
      Property = v26;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "%s -- %@", &v39, 0x16u);
    }

    v27 = ASTLogCommon();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
    {
      v28 = IOHIDDeviceGetProperty(a1, @"DeviceUsagePairs");
      v39 = 136315394;
      v40 = "DeviceUsagePairs";
      v41 = 2112;
      Property = v28;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_INFO, "%s -- %@", &v39, 0x16u);
    }

    v29 = ASTLogCommon();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
    {
      v30 = IOHIDDeviceGetProperty(a1, @"PrimaryUsage");
      v39 = 136315394;
      v40 = "PrimaryUsage";
      v41 = 2112;
      Property = v30;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_INFO, "%s -- %@", &v39, 0x16u);
    }

    v31 = ASTLogCommon();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
    {
      v32 = IOHIDDeviceGetProperty(a1, @"PrimaryUsagePage");
      v39 = 136315394;
      v40 = "PrimaryUsagePage";
      v41 = 2112;
      Property = v32;
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_INFO, "%s -- %@", &v39, 0x16u);
    }

    v33 = ASTLogCommon();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
    {
      v34 = IOHIDDeviceGetProperty(a1, @"ReportInterval");
      v39 = 136315394;
      v40 = "ReportInterval";
      v41 = 2112;
      Property = v34;
      _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_INFO, "%s -- %@", &v39, 0x16u);
    }

    v35 = ASTLogCommon();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
    {
      v36 = IOHIDDeviceGetProperty(a1, @"ReportDescriptor");
      v39 = 136315394;
      v40 = "ReportDescriptor";
      v41 = 2112;
      Property = v36;
      _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_INFO, "%s -- %@", &v39, 0x16u);
    }

    v37 = ASTLogCommon();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
    {
      v38 = IOHIDDeviceGetProperty(a1, @"Reset");
      v39 = 136315394;
      v40 = "Reset";
      v41 = 2112;
      Property = v38;
      _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_INFO, "%s -- %@", &v39, 0x16u);
    }
  }
}

void sub_100011140(id a1, SCATMenu *a2)
{
  v3 = +[AXElement systemWideElement];
  v2 = [v3 systemApplication];
  [v2 performAction:5202];
}

void sub_1000111A4(id a1, SCATMenu *a2)
{
  v3 = +[AXElement systemWideElement];
  v2 = [v3 systemApplication];
  [v2 performAction:5204];
}

void sub_100011208(id a1, SCATMenu *a2)
{
  v3 = +[AXElement systemWideElement];
  v2 = [v3 systemApplication];
  [v2 performAction:5203];
}

void sub_10001126C(id a1, SCATMenu *a2)
{
  v3 = +[AXElement systemWideElement];
  v2 = [v3 systemApplication];
  [v2 performAction:5205 withValue:&off_1001E5040];
}

void sub_1000112D8(id a1, SCATMenu *a2)
{
  v3 = +[AXElement systemWideElement];
  v2 = [v3 systemApplication];
  [v2 performAction:5205 withValue:&off_1001E5058];
}

void sub_100011344(id a1, SCATMenu *a2)
{
  v3 = +[AXElement systemWideElement];
  v2 = [v3 systemApplication];
  [v2 performAction:5207];
}

void sub_1000113A8(id a1, SCATMenu *a2)
{
  v3 = +[AXElement systemWideElement];
  v2 = [v3 systemApplication];
  [v2 performAction:5208];
}

void sub_100013A1C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 120));
  _Unwind_Resume(a1);
}

void sub_100013A78(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = +[AXSettings sharedInstance];
  v3 = [v2 assistiveTouchOrbAction];
  WeakRetained[1248] = v3 != 0;

  v4 = objc_loadWeakRetained((a1 + 32));
  [v4 _updateSpeakScreenStatus];
}

void sub_100013B08(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateSpeakScreenStatus];
}

void sub_100013B48(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateSpeakScreenStatus];
}

void sub_100013B88(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateSpeakScreenStatus];
}

void sub_100013BC8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateSpeakScreenStatus];
}

void sub_100013C08(uint64_t a1)
{
  v2 = +[AXSettings sharedInstance];
  v3 = [v2 assistiveTouchVirtualTrackpadEnabled];

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained isShowingVirtualTrackpad];

  if (v3 != v5)
  {
    v6 = objc_loadWeakRetained((a1 + 32));
    [v6 _setVirtualTrackpadEnabled:v3];
  }
}

void sub_100013CB4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = +[AXSettings sharedInstance];
  [WeakRetained _onDeviceEyeTrackingSettingsChanged:{objc_msgSend(v1, "assistiveTouchMouseOnDeviceEyeTrackingEnabled")}];
}

void sub_100013D20(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = +[AXSettings sharedInstance];
  [WeakRetained _onDeviceEyeTrackingSettingsChanged:{objc_msgSend(v1, "switchControlOnDeviceEyeTrackingEnabled")}];
}

void sub_100013D8C(uint64_t a1)
{
  v2 = +[AXSettings sharedInstance];
  [v2 assistiveTouchMousePointerTimeout];
  v4 = v3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setAssistiveTouchMousePointerTimeout:v4];

  v6 = objc_loadWeakRetained((a1 + 32));
  [v6 _updateAutoHideMousePointer];
}

void sub_100013E20(uint64_t a1)
{
  v2 = +[AXSettings sharedInstance];
  v3 = [v2 assistiveTouchMousePointerTimeoutEnabled];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setAssistiveTouchMousePointerTimeoutEnabled:v3];

  v5 = objc_loadWeakRetained((a1 + 32));
  [v5 _updateAutoHideMousePointer];
}

void sub_100013EAC(uint64_t a1)
{
  v2 = +[AXSettings sharedInstance];
  [v2 assistiveTouchMouseDwellControlActivationTimeout];
  v4 = v3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setAssistiveTouchMouseDwellControlActivationTimeout:v4];

  v6 = objc_loadWeakRetained((a1 + 32));
  [v6 _updateAutoHideMousePointer];
}

void sub_100013F40(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = +[AXSettings sharedInstance];
  [v1 _setVirtualTrackpadEnabled:{objc_msgSend(v2, "assistiveTouchVirtualTrackpadEnabled")}];
}

void sub_100014120(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location, char a17)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a17, 8);
  _Unwind_Resume(a1);
}

void sub_100014154(uint64_t a1)
{
  v2 = [*(a1 + 32) handManager];
  v3 = [v2 deviceManager];
  *(*(*(a1 + 40) + 8) + 24) = [v3 hidDeviceIsConfiguring];

  if ((*(*(*(a1 + 40) + 8) + 24) & 1) == 0)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    [WeakRetained setFingerContentViewIsActive:0];
  }
}

id sub_100014894(uint64_t a1)
{
  [HNDHandManager screenFrame:]_0();
  v2 = *(a1 + 32);

  return [v2 initializeScreenBounds];
}

void sub_100015168(uint64_t a1)
{
  v2 = +[NSNotificationCenter defaultCenter];
  [v2 postNotificationName:@"HNDDisplayManagerDidRefreshScannerDisplayContextNotification" object:*(*(a1 + 32) + 112)];
}

void sub_100015878(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

uint64_t sub_10001589C(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v14 = WeakRetained;
  if (a2)
  {
    if ((*(a1 + 48) & 1) == 0)
    {
      *(WeakRetained + 48) = 0;
      v5 = [*(a1 + 32) handManager];
      [v5 showUIForEyeTracker];

      v6 = *(a1 + 32);
      [v6 _nubbitPointForEdgePosition];
      [v6 _moveNubbitToPosition:?];
      v7 = [v14 handManager];
      v8 = [v7 deviceManager];
      [v8 setDetectDevices:1];
    }

    v9 = [*(a1 + 32) _removeAllSystemGestureDisablingAssertions];
    goto LABEL_5;
  }

  v11 = [WeakRetained handManager];
  v12 = [v11 deviceManager];
  [v12 setDetectDevices:1];

  [v14 _resetForceDismissalReason];
  v9 = [v14[7] shouldShowFaceGuidance];
  v10 = v14;
  if (v9)
  {
    v9 = [v14 faceGuidanceComplete];
    v10 = v14;
    if ((v9 & 1) == 0)
    {
      v9 = [v14 setNeedsRecalibration:1];
LABEL_5:
      v10 = v14;
    }
  }

  return _objc_release_x1(v9, v10);
}

void -[HNDDisplayManager _blockAllSystemGestures](HNDDisplayManager *self, SEL a2)
{
  v3 = [(HNDDisplayManager *)self disableControlCenterAssertion];

  if (!v3)
  {
    v4 = [AXAssertion assertionWithType:AXAssertionTypeDisableControlCenterGesture identifier:@"EyeTracking: Disable Control Center"];
    [(HNDDisplayManager *)self setDisableControlCenterAssertion:v4];
  }

  v5 = [(HNDDisplayManager *)self disableNotificationCenterAssertion];

  if (!v5)
  {
    v6 = [AXAssertion assertionWithType:AXAssertionTypeDisableNotificationCenterGesture identifier:@"EyeTracking: Disable Notification Center"];
    [(HNDDisplayManager *)self setDisableNotificationCenterAssertion:v6];
  }

  v7 = [(HNDDisplayManager *)self disableSystemGesturesAssertion];

  if (!v7)
  {
    v8 = [AXAssertion assertionWithType:AXAssertionTypeDisableSystemGestures identifier:@"EyeTracking: Disable system gestures"];
    [(HNDDisplayManager *)self setDisableSystemGesturesAssertion:v8];
  }
}

void sub_100016064(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v5 = a2;
  v3 = [v2 fingerController];
  v4 = [v3 eventSenderServiceID];

  [v5 setSenderID:v4];
}

id sub_10001680C(uint64_t a1)
{
  v1 = *(a1 + 56);
  v3[0] = *(a1 + 40);
  v3[1] = v1;
  v3[2] = *(a1 + 72);
  return [*(*(a1 + 32) + 104) setTransform:v3];
}

void sub_1000169CC(uint64_t a1)
{
  v2 = +[AXSpringBoardServer server];
  [v2 reachabilityOffset];
  [*(a1 + 32) setReachabilityOffset:?];
}

void sub_100016A28(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = ASTLogCommon();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v8 = 138412290;
    v9 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Reachability triggered: %@", &v8, 0xCu);
  }

  [*(a1 + 32) _handleReachability:v3];
  v5 = [v3 copy];
  v6 = *(a1 + 32);
  v7 = *(v6 + 1256);
  *(v6 + 1256) = v5;
}

void sub_100017D0C(uint64_t a1)
{
  v2 = +[HNDDefaults sharedDefaults];
  v3 = [NSNumber numberWithDouble:*(a1 + 32)];
  [v2 setPreference:v3 forKey:@"NubbitPositionPercentage"];

  v5 = +[HNDDefaults sharedDefaults];
  v4 = [NSNumber numberWithUnsignedInt:*(a1 + 40)];
  [v5 setPreference:v4 forKey:@"NubbitPositionEdge"];
}

void sub_100017ED4(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v10 = [*(a1 + 32) rocker];
  [v10 frame];
  v5 = v4;
  v6 = [*(a1 + 32) rocker];
  [v6 frame];
  v8 = v7;
  v9 = [*(a1 + 32) rocker];
  [v9 setFrame:{v2, v3, v5, v8}];
}

void sub_10001A478(uint64_t a1)
{
  *(*(a1 + 32) + 1264) = 1;
  *(*(a1 + 32) + 1120) = 0;
  v2 = [*(a1 + 32) handManager];
  [v2 setNubbitMoving:0];

  v3 = *(a1 + 32);
  v4 = +[AXSettings sharedInstance];
  v5 = [v4 assistiveTouchLongPressAction];
  [v3 activateAssistiveTouchAction:v5 fromButtonPress:0];

  [*(*(a1 + 32) + 1280) cancel];
  v6 = ASTLogCommon();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "long press activated", v7, 2u);
  }
}

id sub_10001B268(uint64_t a1)
{
  v2 = ASTLogCommon();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 40);
    v5[0] = 67109120;
    v5[1] = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "AST Handling orientation change: (hidden: %d)", v5, 8u);
  }

  ++qword_100218990;
  return [*(a1 + 32) _updateViewsForOrientation];
}

void sub_10001B328(uint64_t a1)
{
  v2 = ASTLogCommon();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 64);
    *buf = 67109120;
    v23 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "AST windows: set windows visible again (rocker hidden: %d)", buf, 8u);
  }

  [*(*(a1 + 32) + 32) setHidden:0];
  [*(*(a1 + 32) + 40) setHidden:0];
  if ([*(a1 + 32) inNubbitMode] && (*(a1 + 64) & 1) == 0)
  {
    v4 = *(a1 + 32);
    [v4 _nubbitPointForEdgePosition];
    [v4 _validateNubbitPosition:0 forKeyboard:?];
    v7 = v5;
    v8 = v6;
    v9 = *(a1 + 32);
    if (*(v9 + 1380) == 1)
    {
      v10 = [v9 _position:v5 isOverKeyboard:{v6, *(v9 + 1616), *(v9 + 1624), *(v9 + 1632), *(v9 + 1640)}];
      v9 = *(a1 + 32);
      if (v10)
      {
        [v9 _nubbitPositionForKeyboardFrame:{*(v9 + 1616), *(v9 + 1624), *(v9 + 1632), *(v9 + 1640)}];
        v7 = v11;
        v8 = v12;
        v9 = *(a1 + 32);
      }
    }

    v13 = [v9 activeRocker];
    [v13 transitionMenuToNubbit:0 changeAlpha:0 animate:{v7, v8}];
  }

  v14 = [*(a1 + 32) trackpadViewController];
  [v14 handleOrientationChange];

  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10001B58C;
  v18[3] = &unk_1001D3B48;
  v15 = *(a1 + 40);
  v19 = *(a1 + 32);
  v21 = *(a1 + 64);
  v20 = *(a1 + 48);
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10001B6AC;
  v16[3] = &unk_1001D3B70;
  v16[4] = v19;
  v17 = v15;
  [UIView animateWithDuration:v18 animations:v16 completion:0.2];
}

void sub_10001B58C(uint64_t a1)
{
  if (!--qword_100218990)
  {
    v2 = ASTLogCommon();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = *(*(a1 + 32) + 1232);
      v8[0] = 67109120;
      v8[1] = v3;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "AST: orientation finished: visuals still hidden? %d", v8, 8u);
    }

    v4 = *(a1 + 32);
    if ((v4[1232] & 1) == 0)
    {
      if ((*(a1 + 56) & 1) == 0)
      {
        v5 = [v4 activeRocker];
        [v5 setAlpha:*(a1 + 40)];

        v4 = *(a1 + 32);
      }

      v6 = [v4 trackpadViewController];
      v7 = [v6 view];
      [v7 setAlpha:*(a1 + 48)];
    }
  }
}

uint64_t sub_10001B6AC(uint64_t a1)
{
  [*(a1 + 32) setNeedsRecalibration:1];
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

void sub_10001C07C(uint64_t a1)
{
  if ([*(*(a1 + 32) + 96) isActive])
  {
    [*(*(a1 + 32) + 96) setAlpha:(*(a1 + 40) ^ 1u)];
  }

  if ([*(a1 + 32) alwaysShowMenu])
  {
    v2 = *(a1 + 40);
    v3 = [*(a1 + 32) activeRocker];
    v4 = v3;
    if (v2 == 1)
    {
      v5 = 0.0;
LABEL_8:
      [v3 setAlpha:v5];

      goto LABEL_9;
    }

    [v3 alpha];
    v7 = v6;

    if (v7 == 0.0)
    {
      v3 = [*(a1 + 32) activeRocker];
      v4 = v3;
      v5 = 1.0;
      goto LABEL_8;
    }
  }

LABEL_9:
  [*(*(a1 + 32) + 1512) setAlpha:(*(a1 + 40) ^ 1u)];
  v8 = (*(a1 + 40) ^ 1u);
  v9 = [*(*(a1 + 32) + 1424) view];
  [v9 setAlpha:v8];

  if ([*(a1 + 32) inBubbleMode])
  {
    v10 = [*(a1 + 32) handManager];
    v11 = [v10 currentlySnappedInBubbleMode];

    if (v11)
    {
      v12 = *(a1 + 32);
      if (*(a1 + 40) == 1)
      {

        [v12 hideBubbleCursor];
      }

      else
      {

        [v12 showBubbleCursor];
      }
    }
  }
}

id sub_10001C6AC(uint64_t a1)
{
  v2 = [UIColor colorWithRed:0.0 green:0.0 blue:0.0 alpha:0.01];
  [*(*(a1 + 32) + 160) setBackgroundColor:v2];

  v3 = *(*(a1 + 32) + 160);

  return [v3 setAlpha:1.0];
}

id sub_10001C724(uint64_t a1)
{
  v2 = +[UIColor clearColor];
  [*(*(a1 + 32) + 160) setBackgroundColor:v2];

  v3 = *(*(a1 + 32) + 160);

  return [v3 setAlpha:0.0];
}

void sub_10001C788(uint64_t a1)
{
  [*(a1 + 32) reachabilityOffset];
  if (v2 != 0.0)
  {
    [*(a1 + 32) _updateRockerReachability];
  }

  v4 = [*(a1 + 32) handManager];
  v3 = [*(a1 + 32) hardwareIdentifier];
  [v4 resetFingersIfActiveOnDisplay:v3];
}

void sub_10001D1FC(uint64_t a1)
{
  v2 = [*(a1 + 32) activeRocker];
  [v2 activateMenuItemDown:*(a1 + 40) fromButtonPress:*(a1 + 48)];

  v3 = *(a1 + 40);
  AXPerformBlockOnMainThreadAfterDelay();
}

void sub_10001D2C8(uint64_t a1)
{
  v2 = [*(a1 + 32) activeRocker];
  v3 = [v2 activateMenuItemUp:*(a1 + 40) fromButtonPress:*(a1 + 48)];

  if ((*(a1 + 49) & 1) == 0 && (v3 & 1) == 0)
  {
    v4 = +[AXPISystemActionHelper sharedInstance];
    [v4 performActionForSystemAction:*(a1 + 40)];
  }
}

void sub_10001D36C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 1392));
  [WeakRetained activateCurrentBubbleModeFocusedElement];
}

void sub_10001D728(uint64_t a1)
{
  if ([*(*(a1 + 32) + 1280) isCancelled] && *(a1 + 40))
  {
    v2 = ASTLogCommon();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      LOWORD(v15) = 0;
      v3 = "not activating single tap because double tap fired";
LABEL_9:
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, v3, &v15, 2u);
    }
  }

  else
  {
    if (*(*(a1 + 32) + 1264) != 1 || !*(a1 + 48))
    {
      v4 = +[AXSettings sharedInstance];
      v2 = [v4 assistiveTouchMainScreenCustomization];

      v5 = ASTLogCommon();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v6 = *(a1 + 56);
        v15 = 138412290;
        v16 = v6;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Activating single tap action %@", &v15, 0xCu);
      }

      v7 = *(a1 + 56);
      if (v7 && ([v7 isEqualToString:AXAssistiveTouchIconTypeOpenMenu] & 1) == 0)
      {
        v14 = *(a1 + 32);
        v13 = *(a1 + 56);
      }

      else
      {
        v8 = [*(a1 + 32) rocker];
        v9 = [v8 customizationMapAllowInstanceActivation:v2];

        if (v9)
        {
          v10 = AXAssistiveTouchLocationsForLayout();
          v11 = [v10 firstObject];
          v12 = [v2 objectForKeyedSubscript:v11];

          [*(a1 + 32) activateAssistiveTouchAction:v12 fromButtonPress:0];
          goto LABEL_20;
        }

        v13 = *(a1 + 56);
        if (!v13)
        {
          goto LABEL_20;
        }

        v14 = *(a1 + 32);
      }

      [v14 activateAssistiveTouchAction:v13 fromButtonPress:0];
      goto LABEL_20;
    }

    v2 = ASTLogCommon();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      LOWORD(v15) = 0;
      v3 = "not activating single tap because long press fired";
      goto LABEL_9;
    }
  }

LABEL_20:
}

void sub_10001DB54(uint64_t a1)
{
  v2 = ASTLogCommon();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromPoint(*(a1 + 40));
    v9 = 138412290;
    v10 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Moving bubble notification to pos: %@.", &v9, 0xCu);
  }

  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = *(a1 + 72);
  v7 = *(a1 + 80);
  v8 = [*(*(a1 + 32) + 152) bannerView];
  [v8 setFrame:{v4, v5, v6, v7}];
}

id sub_10001EECC(uint64_t a1)
{
  [*(a1 + 32) setShouldDelayBeforePresentingHUDView:0];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);

  return [v2 _presentLargeContentViewerForHUDItem:v3 inContentView:v4];
}

void sub_10001F8F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, id location)
{
  objc_destroyWeak((v33 + 32));
  objc_destroyWeak((v34 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10001F938(uint64_t a1)
{
  *(*(a1 + 32) + 48) = 0;
  *(*(a1 + 32) + 1376) = 0;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained didForceDimissCalibration];

  if ((v3 & 1) == 0)
  {
    v4 = objc_loadWeakRetained((a1 + 40));
    v5 = [v4 handManager];
    [v5 showUIForEyeTracker];
  }

  v6 = objc_loadWeakRetained((a1 + 40));
  [v6 _nubbitPointForEdgePosition];
  [v6 _moveNubbitToPosition:?];

  v7 = objc_loadWeakRetained((a1 + 40));
  [v7 _removeAllSystemGestureDisablingAssertions];
}

void sub_10001FA04(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateViewsForOrientation];
}

void sub_100020478(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_fault_impl(a1, a2, OS_LOG_TYPE_FAULT, a4, &a9, 2u);
}

id sub_100022458(uint64_t a1)
{
  result = [*(a1 + 32) isActive];
  if (result)
  {
    *(*(a1 + 32) + 40) = 1;
    v3 = *(a1 + 32);

    return [v3 _idleTimerDidFire];
  }

  return result;
}

id sub_100022A70(uint64_t a1)
{
  [*(a1 + 32) _handleSelectAction];
  v2 = *(a1 + 32);

  return [v2 resumeScanning];
}

void sub_100022F78(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 2u);
}

void sub_100022FA0(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, va, 0x16u);
}

void sub_100023004(id a1)
{
  v1 = objc_alloc_init(HNDHandManager);
  v2 = qword_100218998;
  qword_100218998 = v1;

  _objc_release_x1(v1, v2);
}

void sub_100023798(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 120));
  _Unwind_Resume(a1);
}

id sub_1000237DC(uint64_t a1, void *a2)
{
  if (a2)
  {
    return [a2 performSelector:"_updateSystemPointerForOneness" withObject:0 afterDelay:0.0];
  }

  return result;
}

void sub_10002380C(uint64_t a1)
{
  v2 = +[AXSettings sharedInstance];
  v3 = [v2 assistiveTouchMouseBehavesLikeFinger];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setMouseBehavesLikeFinger:v3];

  v5 = objc_loadWeakRetained((a1 + 32));
  [v5 resetFingersIfNeeded];
}

void sub_100023898(uint64_t a1)
{
  v4 = +[AXSettings sharedInstance];
  v2 = [v4 onDeviceEyeTrackingEnabled];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setIsOnDeviceEyeTrackingEnabled:v2];
}

void sub_100023908(uint64_t a1)
{
  v4 = +[AXSettings sharedInstance];
  v2 = [v4 onDeviceEyeTrackingEnabled];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setIsOnDeviceEyeTrackingEnabled:v2];
}

void sub_100023FF8(id a1, int64_t a2)
{
  if (a2 == 0x7FFFFFFFFFFFFFFFLL)
  {
    _AXSAssistiveTouchScannerSetEnabled();
    v2 = +[AXSettings sharedInstance];
    v3 = [v2 assistiveTouchScannerAddedTripleClickAutomatically];

    if (!v3)
    {
      return;
    }

    v6 = _AXSTripleClickCopyOptions();
    if ([v6 containsObject:&off_1001E50B8])
    {
      v4 = [v6 mutableCopy];
      [v4 removeObject:&off_1001E50B8];
      _AXSSetTripleClickOptions();
    }

    v5 = +[AXSettings sharedInstance];
    [v5 setAssistiveTouchScannerAddedTripleClickAutomatically:0];
  }

  else
  {
    v6 = +[AXSettings sharedInstance];
    [v6 setAssistiveTouchSwitchUsageConfirmed:1];
  }
}

void sub_1000247F0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 88));
  _Unwind_Resume(a1);
}

void sub_100024864(uint64_t a1)
{
  v2 = [*(a1 + 32) assistiveTouchOpenMenuSwaggleEnabled];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setOpenMenuWithSwaggle:v2];
}

void sub_1000248C0(uint64_t a1)
{
  [*(a1 + 32) assistiveTouchSpeed];
  v3 = v2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setTouchSpeed:v3];
}

void sub_100024924(uint64_t a1)
{
  v3 = [*(a1 + 32) assistiveTouchCustomGestures];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setCustomGestures:v3];
}

void sub_100024988(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained updateMenuVisibility];
}

void sub_1000249C8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained updatePointerAppearance];
}

void sub_100024A08(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained updatePointerAppearance];
}

void sub_100024A48(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _dwellControlToggled];
}

void sub_100024A88(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained updateSoftwareKeyboardState];
}

void sub_100024AC8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained enableBubbleMode:{objc_msgSend(*(a1 + 32), "assistiveTouchBubbleModeEnabled")}];
}

void sub_100024B24(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained updateAssistiveTouchEyeTrackingAutoHideEnabled];
}

void sub_100024B64(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained updateAssistiveTouchEyeTrackingAutoHideTimeout];
}

void sub_100024BA4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained updateAssistiveTouchEyeTrackingAutoHideOpacity];
}

void sub_100024BE4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _setApplicationAccessibilityEnabledIfNeeded];
}

void sub_100024D48(uint64_t a1, void *a2)
{
  v4 = a2;
  if ([*(a1 + 32) deviceSupportsAutoHide] && objc_msgSend(*(a1 + 32), "eyeTrackingAutoHideEnabled"))
  {
    v3 = +[AXSettings sharedInstance];
    [v3 assistiveTouchEyeTrackingAutoHideOpacity];
    [v4 updateOpacityForEyeTrackingAutoHide:?];
  }

  else
  {
    [v4 updateOpacityForEyeTrackingAutoHide:0.0];
  }
}

void sub_100024F40(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  WeakRetained[2] = [WeakRetained deviceOrientation];
  [WeakRetained refreshOrientationBackoffCount];
  objc_copyWeak(&v3, (a1 + 32));
  AXPerformBlockOnMainThreadAfterDelay();
  objc_destroyWeak(&v3);
}

void sub_100025028(uint64_t a1)
{
  v2 = ASTLogCommon();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(*(a1 + 32) + 8);
    v9[0] = 67109120;
    v9[1] = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "AST Windows: handManager orientation: %d", v9, 8u);
  }

  v4 = [*(a1 + 32) mainDisplayManager];
  [v4 setOrientation:*(*(a1 + 32) + 8) withCompletion:0];

  v5 = [*(a1 + 32) mainDisplayManager];
  v6 = [v5 orientation];

  if (v6)
  {
    [*(a1 + 32) setRefreshOrientationBackoffCount:0];
    [*(a1 + 32) setIsRefreshingOrientation:0];
  }

  else
  {
    [*(a1 + 32) setRefreshOrientationBackoffCount:{objc_msgSend(*(a1 + 32), "refreshOrientationBackoffCount") + 1}];
    v7 = ASTLogCommon();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_100128A3C();
    }

    [*(a1 + 32) setIsRefreshingOrientation:0];
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    [WeakRetained refreshOrientation];
  }
}

void sub_100025410(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000254A4;
  v6[3] = &unk_1001D36E8;
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  [v5 restartWithCompletion:v6];
}

void sub_1000254A4(uint64_t a1)
{
  if (_AXSAssistiveTouchScannerEnabled())
  {
    +[SCATScannerManager updateElementCacheScheme];
    AXPerformBlockAsynchronouslyOnMainThread();
  }

  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) deviceManager];
  [v2 deviceCountChanged:{objc_msgSend(v3, "deviceCount")}];
}

void sub_100025520(id a1)
{
  v1 = +[SCATScannerManager sharedManager];
  [v1 loadScanner];

  v2 = +[SCATScannerManager sharedManager];
  [v2 beginScanningWithFocusContext:0];
}

void sub_1000258C4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) hardwareIdentifier];
  [v2 _showFingersIfNeededForMouseOnDisplay:v3];

  if ([*(a1 + 40) type] == 3)
  {
    if (([*(a1 + 32) shouldIgnorePointerEventWhileEyeTrackerConfigures:*(a1 + 40)] & 1) == 0 && (objc_msgSend(*(a1 + 32), "shouldIgnorePointerEventWhileEyeTrackerIsInactive") & 1) == 0 && (objc_msgSend(*(a1 + 32), "shouldIgnorePointerEventWhileEyeTrackerPressedButtonDownWithDwell") & 1) == 0)
    {
      v4 = *(a1 + 32);
      [*(a1 + 40) location];
      v6 = v5;
      v8 = v7;
      v33 = [*(a1 + 40) hardwareIdentifier];
      [v4 moveFingerToPoint:v6 onDisplay:v8];
    }

    return;
  }

  if ([*(a1 + 40) type] != 4)
  {
    if ([*(a1 + 40) type] != 1 && objc_msgSend(*(a1 + 40), "type") != 2)
    {
      return;
    }

    [*(a1 + 32) cancelDwellTimer];
    if ([*(a1 + 32) eyeTrackingAutoHideEnabled])
    {
      v10 = [*(a1 + 32) eyeTrackingAutoHideCursorAnimator];

      if (v10)
      {
        v11 = [*(a1 + 32) eyeTrackingAutoHideCursorAnimator];
        [v11 stopAnimation:1];

        [*(a1 + 32) setEyeTrackingAutoHideCursorAnimator:0];
      }

      [*(a1 + 32) _showCursorsForAutoHideWithDuration:&off_1001E50D0];
    }

    v12 = [*(a1 + 32) shouldHideSystemPointerForFingersView];
    v13 = [*(a1 + 32) shouldHandleSystemPointerButtonEvent:*(a1 + 40)];
    v14 = [*(a1 + 32) viewAtSystemPointerPoint];
    v15 = v14;
    if (!v12 || (v13 & 1) == 0)
    {
      if (v14 && [*(a1 + 40) type] == 1)
      {
        v16 = *(a1 + 32);
        v17 = [*(a1 + 40) hardwareIdentifier];
        v18 = [v16 displayManagerForHardwareIdentifier:v17];
        v19 = [v18 fingerController];

        if (![v19 numberOfFingers])
        {
          if (!*(*(a1 + 32) + 352))
          {
            v20 = [v19 acquireAssertionToSuppressVisualsWithReason:@"HideFingersReasonSystemButtonHandler"];
            v21 = *(a1 + 32);
            v22 = *(v21 + 352);
            *(v21 + 352) = v20;
          }

          [*(a1 + 40) location];
          v23 = [AXPIFingerModel fingerModelForLocation:?];
          v35 = v23;
          v24 = [NSArray arrayWithObjects:&v35 count:1];
          [*(a1 + 40) location];
          [v19 showFingerModels:v24 animated:1 startPointForAnimation:?];

          [v19 pressFingersDownAnimated:1];
        }
      }

      if ([*(a1 + 40) type] == 2)
      {
        v25 = *(a1 + 32);
        v26 = [*(a1 + 40) hardwareIdentifier];
        [v25 resetFingersIfNeededOnDisplay:v26];

        v27 = *(*(a1 + 32) + 352);
        if (v27)
        {
          v28 = v27;
          v29 = *(a1 + 32);
          v30 = *(v29 + 352);
          *(v29 + 352) = 0;

          v34 = v28;
          v31 = v28;
          AXPerformBlockOnMainThreadAfterDelay();
        }
      }
    }

    v32 = *(a1 + 32);
    if ((v13 & 1) == 0)
    {
      if (![v32 shouldHideSystemPointerForFingersView] || !v15)
      {
        goto LABEL_35;
      }

      v32 = *(a1 + 32);
    }

    [v32 handleButtonEvent:*(a1 + 40)];
LABEL_35:

    return;
  }

  v9 = *(a1 + 32);

  [v9 cancelDwellTimer];
}

void sub_100025F08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100025F20(uint64_t a1, void *a2)
{
  v3 = *(*(a1 + 32) + 8);
  if (*(v3 + 24) == 1)
  {
    *(v3 + 24) = 1;
  }

  else
  {
    v5 = [a2 fingerController];
    *(*(*(a1 + 32) + 8) + 24) = [v5 numberOfFingers] > 1;
  }
}

void sub_10002637C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_1000263A0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained reloadFingerAppearance];
}

void sub_100026A04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose((v31 - 160), 8);
  _Unwind_Resume(a1);
}

void sub_100026A34(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v19 = a2;
  [v19 location];
  if (a3)
  {
    *(*(*(a1 + 48) + 8) + 32) = v7 - *(*(*(a1 + 56) + 8) + 32);
    [v19 location];
    v8 = v9 - *(*(*(a1 + 56) + 8) + 40);
    v10 = *(*(a1 + 48) + 8);
  }

  else
  {
    v10 = *(*(a1 + 56) + 8);
    *(v10 + 32) = v7;
  }

  *(v10 + 40) = v8;
  v11 = vaddq_f64(*(a1 + 72), *(*(*(a1 + 48) + 8) + 32));
  if (*(a1 + 88) == 1)
  {
    y = v11.y;
LABEL_7:
    v15 = *(a1 + 40);
    v16 = y;
    v17 = NSStringFromCGPoint(v11);
    [v15 addObject:v17];

    goto LABEL_9;
  }

  point = v11;
  v13 = [*(a1 + 32) fingerContainerView];
  [v13 bounds];
  y = point.y;
  v14 = CGRectContainsPoint(v21, point);

  v11.x = point.x;
  if (v14)
  {
    goto LABEL_7;
  }

  *(*(*(a1 + 64) + 8) + 24) = 0;
  *a4 = 1;
LABEL_9:
}

void sub_100026B80(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v8 = a2;
  v6 = [v5 objectAtIndexedSubscript:a3];
  v7 = CGPointFromString(v6);

  [v8 setLocation:{v7.x, v7.y}];
  [v8 setShape:*(a1 + 40)];
}

void sub_100026F78(uint64_t a1, double a2, double a3)
{
  if (*(*(a1 + 32) + 249) == 1)
  {
    v13 = v6;
    v14 = v5;
    v15 = v3;
    v16 = v4;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100027038;
    v9[3] = &unk_1001D3AF8;
    v10 = *(a1 + 40);
    v11 = a2;
    v12 = a3;
    [UIView animateWithDuration:v9 animations:0.15];
  }
}

uint64_t sub_100027048(uint64_t a1)
{
  result = (*(*(a1 + 40) + 16))(*(a1 + 48), *(a1 + 56));
  *(*(a1 + 32) + 250) = 0;
  return result;
}

id sub_100027400(uint64_t a1)
{
  v2 = [*(a1 + 32) fingerController];
  [v2 liftFingersUpAnimated:1];

  *(*(a1 + 40) + 248) = 0;
  [*(a1 + 40) resumeBubbleModeForSpecialUsageToolIfNecessary];
  [*(a1 + 40) resumeEyeTrackingAutoHideForSpecialUsageToolIfNecessary];
  [*(a1 + 40) _systemPointerSettingsDidChange];
  [*(a1 + 32) setMultiTouchToolBackgroundEnabled:0];
  if (*(a1 + 56) == -1.0 && *(a1 + 64) == -1.0)
  {
    [*(a1 + 40) currentPointForPointer];
  }

  [*(a1 + 32) updateWithPrimaryFingerPoint:?];
  *(*(a1 + 40) + 232) = HNDPointNull;
  if ([*(a1 + 40) _shouldRepeatGesture])
  {
    v4 = *(a1 + 40);
    if (*(a1 + 72) == 1 && (v4[249] & 1) == 0)
    {
      v5 = *(a1 + 48);

      return [v4 startDragModeOnDisplay:v5];
    }
  }

  else
  {
    v4 = *(a1 + 40);
  }

  v4[249] = 0;
  [*(a1 + 40) _resetDwellModeToDefault];
  v7 = *(a1 + 32);

  return [v7 resetNubbitLocation];
}

id *sub_100027508(id *result)
{
  if (*(result[4] + 249) == 1)
  {
    return [result[5] moveNubbitToPoint:?];
  }

  return result;
}

id *sub_100027524(id *result)
{
  if (*(result[4] + 249) == 1)
  {
    return [result[5] setNubbitMoving:1];
  }

  return result;
}

id sub_100027544(uint64_t a1)
{
  (*(*(a1 + 48) + 16))(*(a1 + 56), *(a1 + 64));
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 56);
  v5 = *(a1 + 64);

  return [v2 moveFingersToPointInFingerCoordinateSpace:v3 onDisplay:0 allowOutOfBounds:{v4, v5}];
}

void sub_100027594(uint64_t a1)
{
  (*(*(a1 + 56) + 16))();
  [*(a1 + 32) updateWithPrimaryFingerPoint:{*(a1 + 72), *(a1 + 80)}];
  [*(a1 + 40) moveFingersToPointInFingerCoordinateSpace:*(a1 + 48) onDisplay:0 allowOutOfBounds:{*(a1 + 72), *(a1 + 80)}];
  v2 = *(a1 + 64);
  AXPerformBlockOnMainThreadAfterDelay();
}

uint64_t sub_100027654(uint64_t a1)
{
  result = (*(*(a1 + 40) + 16))();
  *(*(a1 + 32) + 250) = 0;
  return result;
}

void sub_10002793C(id a1)
{
  v1 = qword_1002189A8;
  qword_1002189A8 = &off_1001E4DE8;
}

uint64_t sub_100027B30(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_100027C04(uint64_t a1)
{
  v86 = +[NSMutableArray array];
  v87 = +[NSMutableArray array];
  v85 = +[NSMutableArray array];
  v88 = +[NSMutableArray array];
  v1 = +[NSMutableArray array];
  v2 = +[AXElement systemWideElement];
  v3 = [v2 systemApplication];
  v4 = [v3 currentApplications];
  v100[0] = _NSConcreteStackBlock;
  v100[1] = 3221225472;
  v100[2] = sub_10002845C;
  v100[3] = &unk_1001D3F68;
  v5 = v1;
  v101 = v5;
  [v4 enumerateObjectsUsingBlock:v100];

  if ([v5 count])
  {
    v7 = 0;
    v93 = 0;
    v94 = 0;
    y = CGRectZero.origin.y;
    width = CGRectZero.size.width;
    height = CGRectZero.size.height;
    *&v6 = 136315906;
    v84 = v6;
    while (1)
    {
      v11 = [v5 objectAtIndexedSubscript:{v7, v84}];
      v12 = [v11 uiElement];
      v13 = [v12 canPerformAXAction:2007];

      v14 = [v11 uiElement];
      v15 = [v14 canPerformAXAction:2006];

      v16 = [v11 uiElement];
      v17 = [v16 canPerformAXAction:2008];

      v18 = [v11 uiElement];
      v19 = [v18 canPerformAXAction:2009];

      [v11 visibleFrame];
      v112.origin.x = CGRectZero.origin.x;
      v112.origin.y = y;
      v112.size.width = width;
      v112.size.height = height;
      if (CGRectEqualToRect(v110, v112))
      {
        v20 = 0;
        goto LABEL_5;
      }

      [v11 visibleFrame];
      IsInfinite = CGRectIsInfinite(v111);
      v20 = !IsInfinite;
      if (IsInfinite || ((v13 | v15 | v17 | v19) & 1) == 0)
      {
        goto LABEL_5;
      }

      if (([v11 respondsToUserInteraction] & 1) == 0)
      {
        v20 = 1;
LABEL_5:
        v21 = AXLogCommon();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315650;
          v41 = @"NO";
          if (v20)
          {
            v41 = @"YES";
          }

          v103 = "[HNDHandManager generateContinuousScrollersOnQueue:withCompletion:]_block_invoke";
          v104 = 2112;
          v105 = v11;
          v106 = 2112;
          v107 = v41;
          _os_log_debug_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEBUG, "%s: skipping scroll view: %@, elementFrameIsValid: %@", buf, 0x20u);
        }

        goto LABEL_6;
      }

      if ((v13 | v15))
      {
        break;
      }

      v29 = 0;
      v21 = 0;
      v28 = 0;
      v89 = 0;
      v30 = v93;
      v31 = AXAccessQueue_ptr;
      if ((v17 | v19))
      {
        goto LABEL_20;
      }

LABEL_35:
      if (v21 | v29)
      {
        v91 = v29;
        v93 = v30;
        v46 = AXLogCommon();
        if (os_log_type_enabled(&v46->super, OS_LOG_TYPE_DEBUG))
        {
          *buf = v84;
          v103 = "[HNDHandManager generateContinuousScrollersOnQueue:withCompletion:]_block_invoke";
          v104 = 2112;
          v105 = v11;
          v106 = 2112;
          v107 = v21;
          v108 = 2112;
          v109 = v91;
          _os_log_debug_impl(&_mh_execute_header, &v46->super, OS_LOG_TYPE_DEBUG, "%s: scrollAncestor is different! scrollView: %@ \n scrollAncestor1: %@ \n scrollAncestor2: %@", buf, 0x2Au);
        }

        goto LABEL_44;
      }

      v21 = 0;
      v29 = 0;
LABEL_39:
      v91 = v29;
      v47 = v28;
      v48 = v31[307];
      v49 = v31;
      [v11 visibleFrame];
      v50 = [v48 valueWithCGRect:?];
      v51 = v30;
      v52 = [v30 containsObject:v50];

      v93 = v51;
      if ((v52 & 1) == 0)
      {
        [v11 visibleFrame];
        v54 = v53;
        v56 = v55;
        v58 = v57;
        v60 = v59;
        v61 = [v49[307] valueWithCGRect:?];
        [v51 addObject:v61];

        v62 = [v11 windowDisplayId];
        v63 = [*(a1 + 32) displayManagerForDisplayId:v62];
        [v63 orientedContinuousScrollViewFrameForScrollViewFrame:{v54, v56, v58, v60}];
        v65 = v64;
        v67 = v66;
        v69 = v68;
        v71 = v70;

        v46 = [[HNDContinuousScroller alloc] initWithTargetElement:v11 scrollView:v11 orientedScrollViewFrame:v47 scrollAxis:v89 supportedScrollDirections:v65, v67, v69, v71];
        if ([*(a1 + 32) inBubbleMode] && objc_msgSend(*(a1 + 32), "currentlySnappedInBubbleMode"))
        {
          [(HNDContinuousScroller *)v46 setScrollAreaToShowOverride:&off_1001E4638];
        }

        v72 = [*(a1 + 32) displayManagerForDisplayId:v62];
        [v72 screenBounds];
        v74 = v73;
        v76 = v75;
        v78 = v77;
        v80 = v79;

        [(HNDContinuousScroller *)v46 extendActivationRegionWithoutCollidingWithScrollers:v94 rotatedScreenBounds:v74, v76, v78, v80];
        [v94 addObject:v46];
LABEL_44:
      }

LABEL_6:
      if ([v5 count] <= ++v7)
      {
        goto LABEL_48;
      }
    }

    v23 = 2;
    if (!v13)
    {
      v23 = 0;
    }

    v24 = 4;
    if ((v15 & 1) == 0)
    {
      v24 = 0;
    }

    v89 = v24 | v23;
    v90 = v87;

    v25 = v88;
    v26 = *(a1 + 32);
    v99 = 0;
    v27 = [v26 _scrollAncestorIsSelfForScrollView:v11 scrollAction:2006 resultScrollAncestor:&v99];
    v21 = v99;
    if (v27)
    {
      v28 = 0;
      v29 = 0;
      v30 = v90;
      v94 = v25;
      v31 = AXAccessQueue_ptr;
      goto LABEL_39;
    }

    v94 = v25;
    v42 = *(a1 + 32);
    v98 = 0;
    v43 = [v42 _scrollAncestorIsSelfForScrollView:v11 scrollAction:2007 resultScrollAncestor:&v98];
    v29 = v98;
    if ((v17 | v19))
    {
      v31 = AXAccessQueue_ptr;
      v30 = v90;
      if (v43)
      {
        v28 = 0;
        goto LABEL_39;
      }

LABEL_20:
      v32 = v29;
      v33 = v30;
      v34 = v94;
      v35 = v21;
      v36 = 8;
      if (!v17)
      {
        v36 = 0;
      }

      v37 = 16;
      if ((v19 & 1) == 0)
      {
        v37 = 0;
      }

      v89 = v37 | v36;
      v38 = v86;

      v94 = v85;
      v39 = *(a1 + 32);
      v97 = v21;
      v40 = [v39 _scrollAncestorIsSelfForScrollView:v11 scrollAction:2008 resultScrollAncestor:&v97];
      v21 = v97;

      if (v40)
      {
        v28 = 1;
        v30 = v38;
        v31 = AXAccessQueue_ptr;
        v29 = v32;
        goto LABEL_39;
      }

      v44 = *(a1 + 32);
      v96 = v32;
      v43 = [v44 _scrollAncestorIsSelfForScrollView:v11 scrollAction:2009 resultScrollAncestor:&v96];
      v45 = v96;

      v28 = 1;
      v29 = v45;
      v30 = v38;
    }

    else
    {
      v28 = 0;
      v30 = v90;
    }

    v31 = AXAccessQueue_ptr;
    if (v43)
    {
      goto LABEL_39;
    }

    goto LABEL_35;
  }

  v93 = 0;
  v94 = 0;
LABEL_48:
  os_unfair_lock_lock((*(a1 + 32) + 392));
  v81 = [v85 copy];
  [*(a1 + 32) setHorizontalContinuousScrollers:v81];

  v82 = [v88 copy];
  [*(a1 + 32) setVerticalContinuousScrollers:v82];

  if ([*(a1 + 32) scrollingBlockedOnElementRefresh])
  {
    [*(a1 + 32) setScrollingBlockedOnElementRefresh:0];
  }

  os_unfair_lock_unlock((*(a1 + 32) + 392));
  v83 = *(a1 + 40);
  if (v83)
  {
    v95 = v83;
    AXPerformBlockAsynchronouslyOnMainThread();
  }
}

void sub_10002845C(uint64_t a1, void *a2)
{
  v3 = [a2 scrollViewsForAutoScroll];
  if ([v3 count])
  {
    [*(a1 + 32) addObjectsFromArray:v3];
  }
}

void sub_1000286F4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 hardwareIdentifier];
  [v2 bubbleModeFailedToSnapOnDisplay:v3];
}

BOOL sub_1000299F0(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isGroup])
  {
    v4 = [v3 firstDescendantMatchingItem:*(a1 + 32)];
    v5 = v4 != 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void sub_10002AC90(uint64_t a1)
{
  if (*(a1 + 40) == 1)
  {
    v7[7] = v1;
    v7[8] = v2;
    v4 = [*(a1 + 32) elementFetcher];
    [v4 enableEventManagement];

    v5 = [*(a1 + 32) elementFetcher];
    [v5 setEnabled:1];

    v6 = objc_alloc_init(AXUpdateElementVisualsCoalescer);
    [*(a1 + 32) setUpdateElementVisualsCoalescer:v6];
    [v6 setThreshold:0.2];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10002AD84;
    v7[3] = &unk_1001D3488;
    v7[4] = *(a1 + 32);
    [v6 setUpdateVisualsSequenceDidFinishHandler:v7];
  }
}

id sub_10002AD84(uint64_t a1)
{
  if ([*(a1 + 32) inBubbleMode])
  {
    [*(a1 + 32) refreshElementFetcherWithScrollingBlocked:1];
  }

  result = [*(a1 + 32) needsGenerateScrollers];
  if (result)
  {
    v3 = *(a1 + 32);

    return [v3 generateContinuousScrollersWithCompletion:0];
  }

  return result;
}

id *sub_10002AF50(id *result)
{
  if ((result[5] & 1) == 0)
  {
    v2 = result;
    v3 = [result[4] continuousScrollerGenerationQueue];

    if (v3)
    {
      [v2[4] setContinuousScrollerGenerationQueue:0];
    }

    v4 = [v2[4] elementFetcher];
    [v4 disableEventManagement];

    v5 = [v2[4] elementFetcher];
    [v5 setEnabled:0];

    v6 = v2[4];

    return [v6 setUpdateElementVisualsCoalescer:0];
  }

  return result;
}

void sub_10002B274(uint64_t a1)
{
  os_unfair_lock_lock((*(a1 + 32) + 392));
  v2 = *(a1 + 32);
  v3 = 440;
  if (*(v2 + 496) == 1)
  {
    v3 = 432;
  }

  v4 = [*(v2 + v3) count];
  os_unfair_lock_unlock((*(a1 + 32) + 392));
  if (!v4)
  {
    [*(a1 + 32) endContinuousScrollingOnDisplay:*(a1 + 40) withCompletion:0];
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);

    [v5 showMenu:1 onDisplay:v6];
  }
}

void sub_10002BDE4(uint64_t a1, void *a2)
{
  v5 = a2;
  [v5 visibleFrame];
  v9.origin.x = CGRectZero.origin.x;
  v9.origin.y = CGRectZero.origin.y;
  v9.size.width = CGRectZero.size.width;
  v9.size.height = CGRectZero.size.height;
  if (!CGRectEqualToRect(v7, v9))
  {
    [v5 visibleFrame];
    if (!CGRectIsInfinite(v8))
    {
      v3 = [v5 scrollAncestorForScrollAction:*(a1 + 48)];
      if (v3)
      {
        v4 = v3;
        if (([*(a1 + 32) containsObject:v3] & 1) == 0)
        {
          [*(a1 + 32) addObject:v4];
          [*(a1 + 40) addObject:v5];
        }
      }
    }
  }
}

void sub_10002C330(uint64_t a1)
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10002C42C;
  v7[3] = &unk_1001D3488;
  v8 = *(a1 + 32);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10002C470;
  v4[3] = &unk_1001D4048;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = v2;
  v6 = v3;
  [UIView animateWithDuration:v7 animations:v4 completion:0.1];
}

void sub_10002C42C(uint64_t a1)
{
  v1 = [*(a1 + 32) fingerController];
  [v1 resetPinchFingers];
}

void sub_10002C470(uint64_t a1)
{
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) fingerController];
  v4 = [v3 fingerModels];

  if ([v4 count])
  {
    v5 = [*v2 fingerController];
    v6 = [v5 fingerModels];
    v7 = [v6 firstObject];

    if (v7)
    {
      v8 = *v2;
      [v7 location];
      [v8 updateWithPrimaryFingerPoint:?];
    }

    [*(a1 + 32) performPress:3 type:1];
    *(*(a1 + 40) + 208) = HNDPointNull;
    *(*(a1 + 40) + 186) = 0;
  }

  else
  {
    v9 = ASTLogCommon();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      sub_100128A8C(v2, v9);
    }
  }
}

void sub_10002D778(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isMenuVisible])
  {
    Current = CFAbsoluteTimeGetCurrent();
    [v3 lastMenuInteractionTime];
    if (Current - v5 > 0.5)
    {
      [v3 showMenu:0];
    }
  }

  else
  {
    if (![*(a1 + 32) inCustomGesture])
    {
      v9 = [*(a1 + 32) inDragMode];
      v10 = *(a1 + 32);
      if (v9)
      {
        v11 = [v3 hardwareIdentifier];
        [v10 endDragModeAtPoint:v11 onDisplay:0 completed:{v10[29], v10[30]}];
      }

      else
      {
        if (![*(a1 + 32) inContinuousScrollMode])
        {
          goto LABEL_13;
        }

        v12 = *(a1 + 32);
        v11 = [v3 hardwareIdentifier];
        [v12 endContinuousScrollingOnDisplay:v11 withCompletion:0];
      }

      goto LABEL_13;
    }

    v6 = AXLogCommon();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *v25 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Substantial transition, reseting gesture", v25, 2u);
    }

    v7 = *(a1 + 32);
    v8 = *(v7 + 56);
    *(v7 + 56) = 0;
  }

LABEL_13:
  if (!_AXSAssistiveTouchScannerEnabled())
  {
    v13 = [*(a1 + 32) deviceManager];
    v14 = [v13 mainDeviceIsPointer];

    v15 = [*(a1 + 32) isVirtualTrackpadVisible];
    if ((v14 & 1) == 0 && (v15 & 1) == 0)
    {
      [v3 screenBounds];
      x = v26.origin.x;
      y = v26.origin.y;
      width = v26.size.width;
      height = v26.size.height;
      MidX = CGRectGetMidX(v26);
      v27.origin.x = x;
      v27.origin.y = y;
      v27.size.width = width;
      v27.size.height = height;
      MidY = CGRectGetMidY(v27);
      v22 = *(a1 + 32);
      v23 = [v3 hardwareIdentifier];
      [v22 resetFingersToPoint:v23 onDisplay:{MidX, MidY}];
    }
  }

  if ([v3 visualsHidden])
  {
    v24 = NSStringFromSelector(*(a1 + 40));
    [v3 setVisualsHidden:0 forReason:v24 animated:1];
  }
}

void sub_10002DABC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10002DAD4(uint64_t a1, void *a2)
{
  v2 = *(*(a1 + 32) + 8);
  if (*(v2 + 24))
  {
    result = 1;
  }

  else
  {
    result = [a2 isMenuVisible];
    v2 = *(*(a1 + 32) + 8);
  }

  *(v2 + 24) = result;
  return result;
}

void sub_10002DBC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10002DBDC(uint64_t a1, void *a2)
{
  v3 = *(*(a1 + 32) + 8);
  if (*(v3 + 24) == 1)
  {
    *(v3 + 24) = 1;
  }

  else
  {
    v5 = [a2 fingerController];
    *(*(*(a1 + 32) + 8) + 24) = [v5 isPinchEnabled];
  }
}

uint64_t sub_10002DCE4(uint64_t a1)
{
  v2 = [*(a1 + 32) deviceOrientation];
  v3 = ASTLogCommon();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = *(*(a1 + 32) + 8);
    *buf = 67109376;
    v7 = v4;
    v8 = 1024;
    v9 = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Orientation changed: old %d new %d", buf, 0xEu);
  }

  *(*(a1 + 32) + 8) = v2;
  return AXPerformBlockAsynchronouslyOnMainThread();
}

void sub_10002DFF0(uint64_t a1)
{
  v2 = [*(a1 + 32) mainDisplayManager];
  [v2 setOrientation:*(*(a1 + 32) + 8) withCompletion:0];
}

void sub_10002E0D0(uint64_t a1, void *a2)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = NSStringFromSelector(v3);
  [v4 setVisualsHidden:v2 forReason:v5 animated:1];
}

void sub_10002E264(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 visualsHidden])
  {
    v4 = NSStringFromSelector(*(a1 + 32));
    [v3 setVisualsHidden:0 forReason:v4 animated:1];
  }

  else
  {
    v4 = ASTLogCommon();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Tried to show visuals after performing screenshot, but visuals were already shown.", v5, 2u);
    }
  }
}

void sub_10002E554(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = ASTLogCommon();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412546;
    v8 = v3;
    v9 = 1024;
    v10 = [v3 inNubbitMode];
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Screenshot will fire. Display manager: %@, In nubbit mode: %d", &v7, 0x12u);
  }

  if ([v3 inNubbitMode])
  {
    v5 = *(a1 + 40);
    *(*(*(a1 + 32) + 8) + 24) = 1;
    v6 = NSStringFromSelector(v5);
    [v3 setVisualsHidden:1 forReason:v6 animated:0];
  }
}

id sub_10002E83C(uint64_t a1)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10002E8B8;
  v3[3] = &unk_1001D41B8;
  v4 = *(a1 + 48);
  v1 = *(a1 + 32);
  v3[4] = *(a1 + 40);
  return [v1 enumerateDisplayManagersWithBlock:v3];
}

void sub_10002E8B8(uint64_t a1, void *a2)
{
  if ((*(a1 + 40) & 1) == 0)
  {
    v3 = *(a1 + 32);
    v4 = a2;
    v5 = NSStringFromSelector(v3);
    [v4 setVisualsHidden:0 forReason:v5 animated:1];
  }
}

void sub_10002F4FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10002F514(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    v5 = 1;
  }

  else
  {
    v7 = v3;
    if ([v3 visualsHidden])
    {
      v5 = 0;
    }

    else
    {
      v5 = [v7 inNubbitMode];
    }

    v4 = v7;
  }

  *(*(*(a1 + 32) + 8) + 24) = v5;

  return _objc_release_x1(v5, v4);
}

void sub_10002F710(id a1, HNDDisplayManager *a2)
{
  v2 = [(HNDDisplayManager *)a2 fingerController];
  [v2 cancelGesture];
}

void sub_10002F7F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10002F810(uint64_t a1, void *a2)
{
  v3 = *(*(a1 + 32) + 8);
  if (*(v3 + 24) == 1)
  {
    *(v3 + 24) = 1;
  }

  else
  {
    v5 = [a2 fingerController];
    *(*(*(a1 + 32) + 8) + 24) = [v5 isPerformingGesture];
  }
}

void sub_10002F92C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10002F944(uint64_t a1, void *a2)
{
  v3 = *(*(a1 + 32) + 8);
  if (*(v3 + 24) == 1)
  {
    *(v3 + 24) = 1;
  }

  else
  {
    v5 = [a2 fingerController];
    *(*(*(a1 + 32) + 8) + 24) = [v5 isPerformingMultiStepGesture];
  }
}

id sub_10002FD78(uint64_t a1)
{
  v2 = [*(a1 + 32) fingerController];
  [v2 showStartingFingersForGesture:*(a1 + 40) animated:1 startPointForAnimation:{*(a1 + 64), *(a1 + 72)}];

  v3 = [*(a1 + 48) _shouldRepeatGesture];
  v4 = *(a1 + 48);
  if (v3)
  {
    v5 = v4[7];
    v6 = *(a1 + 56);

    return [v4 prepareGesture:v5 onDisplay:v6];
  }

  else
  {
    [v4 specialToolUsageEnded:0];
    [*(a1 + 32) setMultiTouchToolBackgroundEnabled:0];
    v8 = *(a1 + 48);

    return [v8 _resetDwellModeToDefault];
  }
}

void sub_10002FF54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10002FF6C(uint64_t a1, void *a2)
{
  v2 = *(*(a1 + 32) + 8);
  if (*(v2 + 24))
  {
    result = 1;
  }

  else
  {
    result = [a2 multiTouchToolBackgroundEnabled];
    v2 = *(*(a1 + 32) + 8);
  }

  *(v2 + 24) = result;
  return result;
}

void sub_1000303C4(id a1, HNDDisplayManager *a2)
{
  v2 = a2;
  v3 = [(HNDDisplayManager *)v2 multiTouchToolBackgroundEnabled];
  v4 = [(HNDDisplayManager *)v2 fingerController];

  [v4 setShouldAddRealEventFlag:v3];
}

void sub_10003042C(uint64_t a1, void *a2)
{
  v16 = a2;
  v3 = [v16 fingerContentViewIsActive];
  [v16 setFingerContentViewIsActive:*(a1 + 40)];
  if (v3 && (*(a1 + 40) & 1) == 0)
  {
    v4 = [*(a1 + 32) deviceManager];
    if ([v4 hidDeviceIsConfiguring])
    {
    }

    else
    {
      v5 = [*(a1 + 32) deviceManager];
      v6 = [v5 hidDeviceSentReservedStatus];

      if (!v6)
      {
        if (!AXDeviceSupportsOnDeviceEyeTracking() || ([*(a1 + 32) mainDisplayManager], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "isShowingCalibrationUI"), v9, !v10))
        {
          v11 = *(a1 + 32);
          [v11 currentPointForPointer];
          v13 = v12;
          v15 = v14;
          v8 = [v16 hardwareIdentifier];
          [v11 resetFingersToPoint:v8 onDisplay:{v13, v15}];
          goto LABEL_7;
        }
      }
    }

    v7 = *(a1 + 32);
    v8 = [v16 hardwareIdentifier];
    [v7 resetFingersToPoint:v8 onDisplay:0 active:{-1.0, -1.0}];
LABEL_7:
  }
}

void sub_100030820(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v3 isMenuVisible];
  v5 = [v3 hardwareIdentifier];

  [v2 showMenu:v4 ^ 1 onDisplay:v5];
}

id sub_100030DF4(uint64_t a1)
{
  [*(*(a1 + 32) + 424) removeAllObjects];
  v2 = *(*(a1 + 32) + 464);

  return [v2 cleanup];
}

void sub_10003102C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100031044(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10003105C(void *a1, void *a2)
{
  v11 = a2;
  v4 = [v11 window];
  v5 = [v4 windowScene];
  v6 = a1[4];

  if (v5 == v6)
  {
    objc_storeStrong((*(a1[6] + 8) + 40), a2);
    v7 = *(a1[5] + 464);
    v8 = [v11 window];
    v9 = [v8 screen];
    v10 = [v9 displayIdentity];
    [v7 removeGlobalMouseEventsForDisplayID:{objc_msgSend(v10, "displayID")}];
  }
}

void sub_1000319F0(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 32) != v3)
  {
    v7 = v3;
    v4 = [v3 fingerController];
    v5 = [v4 numberOfFingers];

    v3 = v7;
    if (v5)
    {
      v6 = [v7 fingerController];
      [v6 clearAllFingersAnimated:1 endPointForAnimation:{CGPointZero.x, CGPointZero.y}];

      [*(a1 + 40) specialToolUsageEnded:1];
      v3 = v7;
    }
  }
}

void *sub_100031A9C(uint64_t a1)
{
  result = *(a1 + 32);
  v3 = *(a1 + 40) == 1 && result[25] != 1;
  if (*(a1 + 41) == 1 && (v3 || (*(result + 12) & 1) == 0 || result[45] == 2))
  {
    return [result _startDwellTimer];
  }

  return result;
}

id sub_100032B3C(uint64_t a1)
{
  [*(a1 + 32) _handleAction:*(a1 + 40) type:4 state:3];
  v2 = *(a1 + 32);

  return [v2 setIsDwellActionPendingButtonUp:0];
}

void sub_100033CA4(uint64_t a1)
{
  [*(a1 + 32) setHidePointerForEyeTrackingAutoHide:0];
  [*(a1 + 32) setEyeTrackingAutoHideFinished:1];
  v2 = [*(a1 + 32) dwellControlEnabled];
  v3 = *(a1 + 32);
  if (v2)
  {
    if (([v3 dwellControlPaused] & 1) == 0)
    {
      [*(a1 + 32) setEyeTrackingAutotHideLastPointCursorShowed:{-1.0, -1.0}];
      [*(a1 + 32) setEyeTrackingAutotHideLastBubbleModeElementShowed:0];
    }

    v4 = *(a1 + 32);

    [v4 _startDwellTimer];
  }

  else
  {
    v12 = [v3 currentDisplayManager];
    v5 = [v12 fingerController];
    if ([v5 numberOfFingers])
    {
      v6 = [v5 fingerModels];
      v7 = [v6 objectAtIndexedSubscript:0];
      [v7 location];
      v9 = v8;
      v11 = v10;

      [*(a1 + 32) setEyeTrackingAutotHideLastPointCursorShowed:{v9, v11}];
    }
  }
}

void sub_100033DD4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [NSNumber numberWithDouble:*(a1 + 40)];
  [v1 _showCursorsForAutoHideWithDuration:v2];
}

void sub_100033EA4(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) inBubbleMode])
  {
    [v3 hideBubbleCursorForEyeTrackingAutoHide];
  }

  [v3 hideFingerContentViewForEyeTrackingAutoHide];
}

void sub_100033F98(uint64_t a1, void *a2)
{
  v4 = a2;
  if ([*(a1 + 32) inBubbleMode] && objc_msgSend(*(a1 + 32), "currentlySnappedInBubbleMode"))
  {
    [v4 showBubbleCursor];
  }

  else
  {
    v3 = *(a1 + 40);
    if (v3)
    {
      [v3 doubleValue];
      [v4 setFingerContentViewIsActive:1 withDuration:0x10000 options:?];
    }

    else
    {
      [v4 setFingerContentViewIsActive:1];
    }
  }
}

void sub_100034364(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100034380(uint64_t a1)
{
  v2 = *(a1 + 32);
  [*(a1 + 40) _dwellTimerDuration];
  v4 = v3;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100034440;
  v5[3] = &unk_1001D4458;
  objc_copyWeak(&v6, (a1 + 48));
  [v2 performCircularProgressAnimationOnFingersWithDuration:v5 completion:v4];
  objc_destroyWeak(&v6);
}

void sub_100034440(uint64_t a1, int a2)
{
  if (a2)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained _dwellTimerFired];

    v4 = objc_loadWeakRetained((a1 + 32));
    [v4 cancelDwellTimer];
  }
}

void sub_100034760(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100034784(uint64_t a1)
{
  v2 = *(a1 + 32);
  [*(a1 + 40) _dwellTimerDuration];
  v4 = v3;
  v5 = *(a1 + 56);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10003484C;
  v6[3] = &unk_1001D4458;
  objc_copyWeak(&v7, (a1 + 48));
  [v2 animateBubbleCursorDwellWithDuration:v5 inRocker:v6 completion:v4];
  objc_destroyWeak(&v7);
}

void sub_10003484C(uint64_t a1, int a2)
{
  if (a2)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained _dwellTimerFired];

    v4 = objc_loadWeakRetained((a1 + 32));
    [v4 cancelDwellTimer];
  }
}

void sub_100034A50(id a1, HNDDisplayManager *a2)
{
  v2 = [(HNDDisplayManager *)a2 fingerController];
  [v2 cancelCircularProgressAnimation];
}

void sub_100035338(id a1, HNDDisplayManager *a2)
{
  v2 = a2;
  v7 = +[AXSettings sharedInstance];
  [v7 assistiveTouchIdleOpacity];
  v4 = v3;
  v5 = [(HNDDisplayManager *)v2 fingerController];

  v6 = [v5 fingerContainerView];
  [v6 setAlpha:v4];
}

void sub_100035440(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 hardwareIdentifier];
  [v2 _fadeFingersAfterDelayIfNeededOnDisplay:v3];
}

void sub_100035598(uint64_t a1)
{
  *(*(a1 + 32) + 184) = 1;
  [*(*(a1 + 32) + 104) setShouldShowFingerOutlines:{objc_msgSend(*(a1 + 32), "_fadedFingersShouldShowOutlines")}];
  [*(*(a1 + 32) + 104) setShouldShowInnerCircle:0];
  [*(a1 + 32) reloadFingerAppearance];
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100035670;
  v3[3] = &unk_1001D36E8;
  v2 = *(a1 + 40);
  v3[4] = *(a1 + 32);
  v4 = v2;
  [UIView animateWithDuration:v3 animations:0.5];
}

void sub_100035670(uint64_t a1)
{
  v7 = +[AXSettings sharedInstance];
  [v7 assistiveTouchIdleOpacity];
  v3 = v2;
  v4 = [*(a1 + 32) displayManagerForHardwareIdentifier:*(a1 + 40)];
  v5 = [v4 fingerController];
  v6 = [v5 fingerContainerView];
  [v6 setAlpha:v3];
}

void sub_100035844(uint64_t a1)
{
  v1 = [*(a1 + 32) fingerContainerView];
  [v1 setAlpha:1.0];
}

void sub_100035C7C(_BYTE *a1, uint64_t a2)
{
  if (a2 == 1 && a1[40] == 1)
  {
    if (a1[41] == 1)
    {
      v9[0] = AXAssistiveTouchIconTypeDwell;
      v9[1] = AXAssistiveTouchIconTypeScroll;
      v2 = v9;
      v3 = 2;
    }

    else
    {
      if (a1[42] == 1)
      {
        v8 = AXAssistiveTouchIconTypeDwell;
        v2 = &v8;
      }

      else
      {
        v7 = AXAssistiveTouchIconTypeScroll;
        v2 = &v7;
      }

      v3 = 1;
    }

    v4 = [NSArray arrayWithObjects:v2 count:v3];
    v5 = AXAssistiveTouchInsertIconsIntoDictionary();
    v6 = +[AXSettings sharedInstance];
    [v6 setAssistiveTouchMainScreenCustomization:v5];
  }
}

void sub_100036004(id a1, HNDDisplayManager *a2)
{
  v2 = [(HNDDisplayManager *)a2 expandedRocker];
  [v2 reloadDwellMenu];
}

id sub_1000368C4(uint64_t a1)
{
  result = [*(a1 + 32) isPendingFingerLiftForPrimaryButtonPressUp];
  if (result)
  {
    v3 = *(a1 + 32);

    return [v3 _reallyLiftFingersUpForPotentialTapViaPrimaryButton];
  }

  return result;
}

void sub_10003746C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100037488(uint64_t a1)
{
  v2 = [AXElement elementAtCoordinate:0 withVisualPadding:0 allowSameProcess:?];
  if (v2)
  {
    v3 = v2;
    while (1)
    {
      if ((*(a1 + 32) & 0xFFFFFFFE) == 0x7EE)
      {
        [v3 setAutoscrollTarget:v3];
      }

      v4 = [v3 uiElement];
      v5 = [v4 performAXAction:*(a1 + 32)];

      v6 = [v3 uiElement];
      v7 = [v6 BOOLWithAXAttribute:2093];

      if (!v7 || (v5 & 1) != 0)
      {
        break;
      }

      v8 = [v3 remoteParent];

      v3 = v8;
      if (!v8)
      {
        v9 = 0;
        v3 = 0;
        goto LABEL_11;
      }
    }

    v9 = v7 | v5;
LABEL_11:
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

intptr_t sub_100037578(uint64_t a1)
{
  *(*(*(a1 + 48) + 8) + 24) = (*(*(a1 + 40) + 16))(*(a1 + 56), *(a1 + 64));
  v2 = *(a1 + 32);

  return dispatch_semaphore_signal(v2);
}

void sub_1000375CC(id a1)
{
  v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, 0);
  v1 = dispatch_queue_create("AXScrollElementQuery", v3);
  v2 = qword_1002189F8;
  qword_1002189F8 = v1;
}

void sub_100037B50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100037B68(uint64_t a1, void *a2)
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = [a2 fingerController];
  v4 = [v3 fingerModels];

  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(a1 + 32) + 8);
        if (*(v9 + 24))
        {
          v10 = 1;
        }

        else
        {
          v10 = [*(*(&v11 + 1) + 8 * v8) isPressed];
          v9 = *(*(a1 + 32) + 8);
        }

        *(v9 + 24) = v10;
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }
}

void sub_100037D00(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 hardwareIdentifier];
  [v2 resetFingersIfNeededOnDisplay:v3];
}

uint64_t sub_1000381C4(uint64_t a1, double a2, double a3)
{
  v6 = [*(a1 + 32) fingerController];
  [v6 midpointForFingers];
  v8 = v7;
  v10 = v9;

  v11 = v8 == a2 && v10 == a3;
  if (!v11 || (v8 == CGPointZero.x ? (v12 = v10 == CGPointZero.y) : (v12 = 0), v12))
  {
    v14 = 0;
  }

  else
  {
    v13 = [*(a1 + 32) fingerController];
    v14 = [v13 numberOfFingers] < 2;
  }

  v15 = [*(a1 + 40) shouldHideSystemPointerForFingersView];
  v16 = 0;
  if (v15 && !v14)
  {
    v16 = *(*(a1 + 40) + 225) ^ 1;
  }

  return v16 & 1;
}

void sub_10003836C(uint64_t a1, void *a2)
{
  v9 = a2;
  if ([*(a1 + 32) canShowASTMousePointer])
  {
    v3 = [v9 fingerController];
    v4 = [v3 numberOfFingers];

    if (v4)
    {
      v5 = [v9 fingerController];
      v6 = [v5 fingerModels];
      v7 = [v6 axMapObjectsUsingBlock:&stru_1001D4668];

      v8 = [v9 fingerController];
      [v8 showFingerModels:v7 animated:0 startPointForAnimation:{CGPointZero.x, CGPointZero.y}];
    }
  }
}

id sub_10003844C(id a1, AXPIFingerModel *a2, unint64_t a3)
{
  [(AXPIFingerModel *)a2 location];

  return [AXPIFingerModel fingerModelForLocation:?];
}

id sub_100039624(uint64_t a1, void *a2)
{
  v3 = [a2 hardwareIdentifier];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

BOOL sub_1000397C8(uint64_t a1, void *a2)
{
  v3 = [a2 window];
  v4 = [v3 screen];
  v5 = [v4 displayIdentity];
  v6 = [v5 displayID] == *(a1 + 32);

  return v6;
}

void sub_10003C8DC(id a1)
{
  v1 = +[SCATBluetoothManager superNew];
  v2 = qword_100218A18;
  qword_100218A18 = v1;

  _objc_release_x1(v1, v2);
}

id sub_10003D814(uint64_t a1)
{
  [*(*(a1 + 32) + 48) addObject:*(a1 + 40)];
  v2 = *(a1 + 32);

  return [v2 _beginStateTransitionIfNecessary];
}

id sub_10003D8EC(uint64_t a1)
{
  [*(*(a1 + 32) + 48) removeObject:*(a1 + 40)];
  v2 = *(a1 + 32);

  return [v2 _beginStateTransitionIfNecessary];
}

uint64_t sub_10003D9F4(void *a1)
{
  v1 = a1[6];
  v2 = [*(a1[4] + 48) containsObject:a1[5]];
  v3 = *(v1 + 16);

  return v3(v1, v2);
}

id sub_10003DB7C(uint64_t a1)
{
  result = [*(*(a1 + 32) + 8) count];
  if (result)
  {
    v3 = 0;
    while ([*(*(a1 + 32) + 8) pointerAtIndex:v3] != *(a1 + 40))
    {
      ++v3;
      result = [*(*(a1 + 32) + 8) count];
      if (v3 >= result)
      {
        return result;
      }
    }

    v4 = *(*(a1 + 32) + 8);

    return [v4 removePointerAtIndex:v3];
  }

  return result;
}

void sub_10003DCA4(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(*(a1 + 32) + 56) allValues];
  (*(v1 + 16))(v1, v2);
}

void sub_10003DDD0(uint64_t a1)
{
  v2 = SWCHLogHW();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    sub_1001290D8(a1, v2);
  }

  if (*(*(a1 + 48) + 16))
  {
    v3 = [*(a1 + 32) addressString];
    v4 = [v3 UTF8String];

    WORD2(v13) = 0;
    LODWORD(v13) = 0;
    BTDeviceAddressFromString();
    v12 = 0;
    if (BTDeviceFromAddress())
    {
      v5 = SWCHLogHW();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        sub_100129170();
      }
    }

    else
    {
      v8 = [*(a1 + 40) length];
      [*(a1 + 40) getBytes:&v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0) length:v8];
      [*(a1 + 40) length];
      BTAccessoryManagerSendCustomMessage();
      v9 = SWCHLogHW();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        v10 = *(a1 + 56);
        v11 = *(a1 + 40);
        *buf = 67109634;
        *v15 = v10;
        *&v15[4] = 2112;
        *&v15[6] = v11;
        v16 = 2080;
        v17 = v4;
        _os_log_debug_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "sent custom message type %d data %@ to device %s", buf, 0x1Cu);
      }
    }
  }

  else
  {
    v6 = SWCHLogHW();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 32);
      *buf = 138412290;
      *v15 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Went to send custom message to device %@ but we had no session.", buf, 0xCu);
    }
  }
}

void sub_10003E0D8(uint64_t a1)
{
  v2 = SWCHLogHW();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    sub_1001291D8(a1, v2);
  }

  if (*(*(a1 + 40) + 16))
  {
    v3 = [*(a1 + 32) addressString];
    v4 = [v3 UTF8String];

    BTDeviceAddressFromString();
    if (BTDeviceFromAddress())
    {
      v5 = SWCHLogHW();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        sub_100129270();
      }
    }

    else
    {
      v8 = BTAccessoryManagerSendControlCommand();
      v5 = SWCHLogHW();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        v9 = *(a1 + 52);
        v10 = *(a1 + 48);
        *buf = 67109890;
        *v12 = v9;
        *&v12[4] = 1024;
        *&v12[6] = v10;
        v13 = 2080;
        v14 = v4;
        v15 = 1024;
        v16 = v8;
        _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "sent control message type %d value %u to device %s result %d", buf, 0x1Eu);
      }
    }
  }

  else
  {
    v6 = SWCHLogHW();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 32);
      *buf = 138412290;
      *v12 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Went to send configuration message to device %@ but we had no session.", buf, 0xCu);
    }
  }
}

void sub_10003E350(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x12u);
}

void sub_10003E7BC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_10003E7E0(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v7[1] = a2;
  objc_copyWeak(v7, (a1 + 40));
  v6 = v5;
  AXPerformBlockAsynchronouslyOnMainThread();

  objc_destroyWeak(v7);
}

void sub_10003E8B4(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2 > 5)
  {
    if (v2 > 7)
    {
      if (v2 != 8)
      {
        if (v2 == 11)
        {
          WeakRetained = [*(a1 + 32) delegate];
          [WeakRetained didFailToPinApp];
        }

        else
        {
          if (v2 != 12)
          {
            return;
          }

          WeakRetained = [*(a1 + 32) delegate];
          [WeakRetained didFailToFloatApp];
        }

        goto LABEL_22;
      }

      v4 = [*(a1 + 32) delegate];
      [v4 resetNubbitLocation];

      goto LABEL_19;
    }

    if (v2 == 6)
    {
      WeakRetained = [*(a1 + 32) delegate];
      [WeakRetained screenshotWillFire];
    }

    else
    {
      WeakRetained = [*(a1 + 32) delegate];
      [WeakRetained screenshotDidFire];
    }
  }

  else
  {
    if (v2 > 2)
    {
      if (v2 != 3)
      {
        if (v2 == 4)
        {
          v5 = [*(a1 + 40) objectForKey:AXSpringBoardActionKeyActiveInterfaceOrientation];
          v6 = [v5 integerValue];

          WeakRetained = [*(a1 + 32) delegate];
          [WeakRetained orientationChanged:v6];
        }

        else
        {
          WeakRetained = [*(a1 + 32) delegate];
          [WeakRetained mediaPlaybackChanged];
        }

        goto LABEL_22;
      }

LABEL_19:
      WeakRetained = objc_loadWeakRetained((a1 + 48));
      [WeakRetained substantialTransitionOccurred];
      goto LABEL_22;
    }

    if (v2 == 1)
    {
      WeakRetained = [*(a1 + 32) delegate];
      [WeakRetained volumeChanged];
    }

    else
    {
      if (v2 != 2)
      {
        return;
      }

      v3 = objc_loadWeakRetained((a1 + 48));
      [v3 ringerSwitchChanged];

      WeakRetained = objc_loadWeakRetained((a1 + 48));
      [WeakRetained rotationLockChanged];
    }
  }

LABEL_22:
}

void sub_10003EA9C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(*(a1 + 32) + 24))
  {
    v4 = +[AXSpringBoardServer server];
    [v4 removeActionHandler:*(*(a1 + 32) + 24)];
  }

  v6 = v3;
  v5 = v3;
  AXPerformBlockAsynchronouslyOnMainThread();
}

uint64_t sub_10003EB6C(uint64_t a1)
{
  v2 = [*(a1 + 40) copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 24);
  *(v3 + 24) = v2;

  return _objc_release_x1(v2, v4);
}

void sub_10003EC90(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v3 = v4;
  AXPerformBlockAsynchronouslyOnMainThread();
}

void sub_10003ED2C(uint64_t a1)
{
  if (*(a1 + 48) == 1)
  {
    v3 = [*(a1 + 32) objectForKey:AXClarityBoardResultKey];
    v4 = [v3 integerValue];

    v5 = [*(a1 + 40) delegate];
    [v5 orientationChanged:v4];
  }
}

void sub_10003EDC0(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(*(a1 + 32) + 32))
  {
    v4 = +[AXClarityBoardServer server];
    [v4 removeActionHandler:*(*(a1 + 32) + 32)];
  }

  v6 = v3;
  v5 = v3;
  AXPerformBlockAsynchronouslyOnMainThread();
}

uint64_t sub_10003EE90(uint64_t a1)
{
  v2 = [*(a1 + 40) copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 32);
  *(v3 + 32) = v2;

  return _objc_release_x1(v2, v4);
}

void sub_10003EF50(uint64_t a1)
{
  [*(a1 + 32) manipulateDimTimer:0];
  if (+[AXSpringBoardServer isAvailable])
  {
    v2 = AXSpringBoardServer_ptr;
    v3 = +[AXSpringBoardServer server];
    [v3 setCancelGestureActivation:1 cancelEnabled:0];

    v4 = +[AXSpringBoardServer server];
    [v4 setCancelGestureActivation:4 cancelEnabled:0];

    if (!*(*(a1 + 32) + 24))
    {
      goto LABEL_8;
    }

    v5 = 24;
    goto LABEL_7;
  }

  if (+[AXClarityBoardServer isAvailable]&& *(*(a1 + 32) + 32))
  {
    v2 = AXClarityBoardServer_ptr;
    v5 = 32;
LABEL_7:
    v6 = [*v2 server];
    [v6 removeActionHandler:*(*(a1 + 32) + v5)];

    v7 = *(a1 + 32);
    v8 = *(v7 + v5);
    *(v7 + v5) = 0;
  }

LABEL_8:
  v9 = +[NSNotificationCenter defaultCenter];
  [v9 postNotificationName:@"HNDEventManagerReset" object:0];
}

void sub_10003F230(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 keyboardVisible:*(a1 + 72) withFrame:{*(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64)}];
}

void sub_10003F45C(uint64_t a1)
{
  v2 = [*(a1 + 32) disableIdleTimerAssertion];

  if (!v2)
  {
    v4 = +[AXUserEventTimer sharedInstance];
    v3 = [v4 acquireAssertionToDisableIdleTimerWithReason:@"AssistiveTouch"];
    [*(a1 + 32) setDisableIdleTimerAssertion:v3];
  }
}

id sub_10003F4F8(uint64_t a1)
{
  v2 = [*(a1 + 32) disableIdleTimerAssertion];
  [v2 invalidate];

  v3 = *(a1 + 32);

  return [v3 setDisableIdleTimerAssertion:0];
}

void sub_10003F80C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_autoreleasePoolPush();
  v7 = [AXEventRepresentation representationWithHIDEvent:a4 hidStreamIdentifier:@"AST-UIApplicationEvents"];
  v6 = v7;
  AXPerformBlockOnMainThread();

  objc_autoreleasePoolPop(v5);
}

void sub_10003F8C4(uint64_t a1)
{
  v3 = +[HNDEventManager sharedManager];
  v2 = [v3 delegate];
  [v2 handleRealEvent:*(a1 + 32)];
}

double sub_10003FA2C(uint64_t a1, double a2, double a3)
{
  v3 = a2 * *(a1 + 32);
  v4 = a3 * *(a1 + 40);
  v5 = +[HNDHandManager sharedManager];
  v6 = [v5 currentDisplayManager];
  v7 = [v6 window];

  v8 = +[AXBackBoardServer server];
  v9 = [v7 _contextId];
  v10 = [v7 screen];
  v11 = [v10 displayIdentity];
  [v8 convertPoint:v9 toContextId:objc_msgSend(v11 displayId:{"displayID"), v3, v4}];
  v13 = v12;

  return v13;
}

uint64_t sub_10003FE2C(void *a1, uint64_t a2, uint64_t a3, const void *a4)
{
  if ((AXIsInternalInstall() & 1) == 0)
  {
    ASTLogEventManagement();
  }

  v6 = ASTLogEventManagement();
  v7 = os_signpost_id_generate(v6);

  v8 = ASTLogEventManagement();
  v9 = v8;
  v10 = v7 - 1;
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v9, OS_SIGNPOST_INTERVAL_BEGIN, v7, "IOHIDEventFilterCallback event tap with priority:kAssistiveTouchEventFilterPriority", "", buf, 2u);
  }

  SenderID = IOHIDEventGetSenderID();
  v12 = IOHIDEventGetType() == 11 && _AXSAutomationEnabled() != 0;
  if (SenderID == 0x8000000817319372 || SenderID == 0x8000000817319375 && !v12)
  {
    v16 = ASTLogEventManagement();
    v14 = v16;
    if (v10 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v16))
    {
      goto LABEL_36;
    }

    *buf = 0;
    v15 = "For reason: senderId";
    goto LABEL_19;
  }

  if (IOHIDEventGetType() != 14)
  {
    if (IOHIDEventGetType() == 17 && sub_100042C64())
    {
      v17 = ASTLogEventManagement();
      v14 = v17;
      if (v10 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v17))
      {
        goto LABEL_36;
      }

      *buf = 0;
      v15 = "For reason: kIOHIDEventTypePointer";
      goto LABEL_19;
    }

    v14 = a1;
    if (![v14 isCapturingEvents]|| ([v14 shouldCaptureEvent:a4]& 1) == 0)
    {
      v22 = ASTLogEventManagement();
      v23 = v22;
      if (v10 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v22))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v23, OS_SIGNPOST_INTERVAL_END, v7, "IOHIDEventFilterCallback event tap with priority:kAssistiveTouchEventFilterPriority", "For reason: !isCapturingEvents || !shouldCaptureEvent", buf, 2u);
      }

      goto LABEL_36;
    }

    IsSwitchControlRunning = UIAccessibilityIsSwitchControlRunning();
    *buf = 0;
    v43 = buf;
    v44 = 0x3032000000;
    v45 = sub_100040958;
    v46 = sub_100040968;
    v47 = 0;
    if (IsSwitchControlRunning)
    {
      if ([v14 _shouldSwitchControlIgnoreHIDEvent:a4])
      {
        v19 = ASTLogEventManagement();
        v20 = v19;
        if (v10 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v19))
        {
          goto LABEL_53;
        }

        *v41 = 0;
        v21 = "For reason: _shouldSwitchControlIgnoreHIDEvent";
LABEL_52:
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v20, OS_SIGNPOST_INTERVAL_END, v7, "IOHIDEventFilterCallback event tap with priority:kAssistiveTouchEventFilterPriority", v21, v41, 2u);
LABEL_53:
        v24 = 0;
LABEL_54:

        _Block_object_dispose(buf, 8);
        goto LABEL_37;
      }

      v34 = +[SCATScannerManager sharedManager];
      v35 = sub_100040970();
      v36 = [v34 isSwitchWithSource:v35];

      if ((v36 & 1) == 0)
      {
        v39 = ASTLogEventManagement();
        v20 = v39;
        if (v10 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v39))
        {
          goto LABEL_53;
        }

        *v41 = 0;
        v21 = "For reason: isSwitchWithSource";
        goto LABEL_52;
      }
    }

    else
    {
      v26 = [v14 delegate];
      v27 = [v26 isPerformingGesture];

      if (v27)
      {
        v28 = [AXEventRepresentation representationWithHIDEvent:a4 hidStreamIdentifier:@"AST-IOHIDFilter"];
        v29 = *(v43 + 5);
        *(v43 + 5) = v28;

        v30 = [*(v43 + 5) handInfo];
        v31 = [v30 eventType];

        if (v31 == 1)
        {
          v32 = [v14 delegate];
          [v32 cancelCurrentGesture];

          v33 = ASTLogEventManagement();
          v20 = v33;
          if (v10 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v33))
          {
            *v41 = 0;
            _os_signpost_emit_with_name_impl(&_mh_execute_header, v20, OS_SIGNPOST_INTERVAL_END, v7, "IOHIDEventFilterCallback event tap with priority:kAssistiveTouchEventFilterPriority", "For reason: kAXEventHandTouched", v41, 2u);
          }

          v24 = 1;
          goto LABEL_54;
        }
      }
    }

    CFRetain(a4);
    v40 = v14;
    AXPerformBlockAsynchronouslyOnMainThread();
    v37 = ASTLogEventManagement();
    v38 = v37;
    if (v10 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v37))
    {
      *v41 = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v38, OS_SIGNPOST_INTERVAL_END, v7, "IOHIDEventFilterCallback event tap with priority:kAssistiveTouchEventFilterPriority", "", v41, 2u);
    }

    v24 = 1;
    v20 = v40;
    goto LABEL_54;
  }

  v13 = ASTLogEventManagement();
  v14 = v13;
  if (v10 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v13))
  {
    goto LABEL_36;
  }

  *buf = 0;
  v15 = "For reason: kIOHIDEventTypeProximity";
LABEL_19:
  _os_signpost_emit_with_name_impl(&_mh_execute_header, v14, OS_SIGNPOST_INTERVAL_END, v7, "IOHIDEventFilterCallback event tap with priority:kAssistiveTouchEventFilterPriority", v15, buf, 2u);
LABEL_36:
  v24 = 0;
LABEL_37:

  return v24;
}

void sub_1000403D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100040958(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id sub_100040970()
{
  Type = IOHIDEventGetType();
  v1 = 0;
  if (Type > 10)
  {
    if (Type == 11)
    {
      v3 = &SCATSwitchSourceScreen;
      goto LABEL_13;
    }

    if (Type != 35)
    {
      goto LABEL_14;
    }
  }

  else
  {
    if (Type == 2)
    {
      v3 = &SCATSwitchSourceMFI;
      goto LABEL_13;
    }

    if (Type != 3)
    {
      goto LABEL_14;
    }

    IntegerValue = IOHIDEventGetIntegerValue();
    if (IntegerValue == 7)
    {
      v3 = &SCATSwitchSourceKeyboard;
      goto LABEL_13;
    }

    if (IntegerValue != 12)
    {
      v1 = 0;
      goto LABEL_14;
    }
  }

  v3 = &SCATSwitchSourceGamepad;
LABEL_13:
  v1 = *v3;
LABEL_14:

  return v1;
}

void sub_100040A2C(uint64_t a1)
{
  v2 = *(*(*(a1 + 40) + 8) + 40);
  if (!v2)
  {
    v3 = [AXEventRepresentation representationWithHIDEvent:*(a1 + 48) hidStreamIdentifier:@"AST-IOHIDFilter"];
    v4 = *(*(a1 + 40) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;

    v2 = *(*(*(a1 + 40) + 8) + 40);
  }

  [*(a1 + 32) _handleIOHIDEvent:v2];
  v6 = *(a1 + 48);

  CFRelease(v6);
}

void sub_1000411D8(id a1, SCATMenu *a2)
{
  v2 = [SCATHardwareAction crownRotationClockwise:1];
  [v2 performAction];
}

void sub_100041224(id a1, SCATMenu *a2)
{
  v2 = [SCATHardwareAction crownRotationClockwise:0];
  [v2 performAction];
}

void sub_100041270(uint64_t a1)
{
  v1 = [SCATHardwareAction actionForHardwareActionString:*(a1 + 32)];
  [v1 performAction];
}

void sub_100041CAC(id a1, SCATMenu *a2)
{
  v3 = +[AXSettings sharedInstance];
  [v3 assistiveTouchStepInterval];
  [v3 setAssistiveTouchStepInterval:v2 + -0.05];
}

void sub_100041D08(id a1, SCATMenu *a2)
{
  v3 = +[AXSettings sharedInstance];
  [v3 assistiveTouchStepInterval];
  [v3 setAssistiveTouchStepInterval:v2 + 0.05];
}

void sub_100041D64(id a1, SCATMenu *a2)
{
  v2 = a2;
  v3 = [(SCATModernMenuSheet *)[SCATModernMenuPositionsSheet alloc] initWithMenu:v2];
  [(SCATMenu *)v2 pushSheet:v3];
}

void sub_100041DD0(id a1, SCATMenu *a2)
{
  v4 = +[AXSettings sharedInstance];
  v2 = [v4 assistiveTouchScannerSpeechEnabled];
  v3 = +[AXSettings sharedInstance];
  [v3 setAssistiveTouchScannerSpeechEnabled:v2 ^ 1];
}

void sub_100041E40(id a1, SCATMenu *a2)
{
  v4 = +[AXSettings sharedInstance];
  v2 = [v4 assistiveTouchScannerSoundEnabled];
  v3 = +[AXSettings sharedInstance];
  [v3 setAssistiveTouchScannerSoundEnabled:v2 ^ 1];
}

void sub_100041EB0(id a1, SCATMenu *a2)
{
  v4 = +[AXSettings sharedInstance];
  v2 = [v4 assistiveTouchGroupElementsEnabled];
  v3 = +[AXSettings sharedInstance];
  [v3 setAssistiveTouchGroupElementsEnabled:v2 ^ 1];
}

uint64_t sub_100042140(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[AXSettings sharedInstance];
  v5 = [v4 assistiveTouchScannerSpeechEnabled];

  v6 = [*(a1 + 32) _stringForSpeechEnabled:v5];
  [v3 setTitle:v6];

  if (v5)
  {
    v7 = @"SCATIcon_settings_speechOn";
  }

  else
  {
    v7 = @"SCATIcon_settings_speechOff";
  }

  [v3 setImageName:v7];

  return 1;
}

uint64_t sub_1000421E0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[AXSettings sharedInstance];
  v5 = [v4 assistiveTouchScannerSoundEnabled];

  v6 = [*(a1 + 32) _stringForSoundEnabled:v5];
  [v3 setTitle:v6];

  if (v5)
  {
    v7 = @"SCATIcon_settings_soundOn";
  }

  else
  {
    v7 = @"SCATIcon_settings_soundOff";
  }

  [v3 setImageName:v7];

  return 1;
}

uint64_t sub_100042280(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[AXSettings sharedInstance];
  v5 = [v4 assistiveTouchGroupElementsEnabled];

  v6 = [*(a1 + 32) _stringForGroupEnabled:v5];
  [v3 setTitle:v6];

  if (v5)
  {
    v7 = @"SCATIcon_settings_groupElements";
  }

  else
  {
    v7 = @"SCATIcon_settings_scanByElement";
  }

  [v3 setImageName:v7];

  return 1;
}

double sub_10004240C(double a1, double a2)
{
  v2 = 0;
  v3 = 0;
  *&result = CGRectIntegral(*&a1);
  return result;
}

id sub_100042418()
{
  v0 = +[AXSpringBoardServer server];
  if ([v0 isScreenLockedWithPasscode:0])
  {
    v1 = +[AFPreferences sharedPreferences];
    v2 = [v1 disableAssistantWhilePasscodeLocked];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id sub_1000424B4()
{
  v0 = +[AXSpringBoardServer server];
  v1 = [v0 dismissBuddyIfNecessary];

  return v1;
}

uint64_t sub_1000424F4()
{
  result = AXIsBuddyCompleted();
  if (result)
  {
    if (AXInPreboardScenario())
    {
      return 0;
    }

    else
    {
      v1 = MKBGetDeviceLockState();
      return v1 == 3 || v1 == 0;
    }
  }

  return result;
}

id sub_100042534()
{
  if ((AXDeviceHasPearl() & 1) == 0 && (AXDeviceHasTopTouchIDButton() & 1) == 0 && !_AXSMossdeepEnabled())
  {
    return 0;
  }

  v0 = [[LAStorage alloc] initWithDomain:0 authenticationContext:0];
  v5 = 0;
  v1 = [v0 BOOLForKey:1 error:&v5];
  v2 = v5;
  if (v2)
  {
    v3 = AXLogSettings();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_10012934C(v2, v3);
    }
  }

  return v1;
}

uint64_t sub_1000425F8()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = off_100218A58;
  v8 = off_100218A58;
  if (!off_100218A58)
  {
    v1 = sub_1000443FC();
    v6[3] = dlsym(v1, "AXWatchRemoteScreenIsTwiceFeatureOn");
    off_100218A58 = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    sub_10012943C();
  }

  result = v0();
  if (result)
  {
    v5 = 0;
    v6 = &v5;
    v7 = 0x2020000000;
    v3 = off_100218A68;
    v8 = off_100218A68;
    if (!off_100218A68)
    {
      v4 = sub_1000443FC();
      v6[3] = dlsym(v4, "AXWatchRemoteScreenIsPairedGizmoSupported");
      off_100218A68 = v6[3];
      v3 = v6[3];
    }

    _Block_object_dispose(&v5, 8);
    if (!v3)
    {
      sub_1001293C4();
    }

    return v3();
  }

  return result;
}

void sub_100042790(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

double sub_1000427AC(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v15.origin.x = [HNDHandManager screenFrame:]_0();
  v15.origin.y = v8;
  v15.size.width = v9;
  v15.size.height = v10;
  v13.origin.x = a1;
  v13.origin.y = a2;
  v13.size.width = a3;
  v13.size.height = a4;
  v14 = CGRectIntersection(v13, v15);
  x = v14.origin.x;
  if (CGRectIsNull(v14))
  {
    return CGRectZero.origin.x;
  }

  return x;
}

double sub_100042840(double a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8)
{
  v10 = CGRectIntersection(*&a1, *&a5);
  x = v10.origin.x;
  if (CGRectIsNull(v10))
  {
    return CGRectZero.origin.x;
  }

  return x;
}

void sub_1000428A0(void *a1)
{
  v1 = a1;
  v2 = +[AXSettings sharedInstance];
  v3 = [v2 assistiveTouchUsageCount];
  v9 = [v3 mutableCopy];

  v4 = v9;
  if (!v9)
  {
    v4 = [[NSMutableDictionary alloc] initWithCapacity:0];
  }

  v10 = v4;
  v5 = [v4 objectForKey:v1];
  v6 = [v5 integerValue];

  v7 = [NSNumber numberWithInteger:v6 + 1];
  [v10 setObject:v7 forKey:v1];

  v8 = +[AXSettings sharedInstance];
  [v8 setAssistiveTouchUsageCount:v10];
}

double sub_1000429B0(char a1, double a2, double a3, double a4, double a5, double a6)
{
  if ((a1 & 1) == 0)
  {
    a2 = fmin(a2, 1.0);
    if (a2 < 0.0)
    {
      a2 = 0.0;
    }
  }

  return a6 * a2;
}

uint64_t sub_1000429E0(uint64_t a1)
{
  v2 = [UIApp userInterfaceLayoutDirection] == 1;

  return _AXSBTitleForMedusaGesture(a1, v2);
}

id sub_100042A2C(void *a1)
{
  v1 = a1;
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:v1 value:v1 table:@"LocalizedStrings-j3xx"];

  return v3;
}

id sub_100042AA8(void *a1)
{
  v1 = a1;
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:v1 value:v1 table:@"LocalizedStrings-hello"];

  return v3;
}

id sub_100042B24(void *a1)
{
  v1 = a1;
  v2 = AXLocStringKeyForModel();
  if (AXDeviceIsJ3XX())
  {
    v3 = sub_100042A2C(v2);
    v4 = v3;
    if (v3 && ([v3 isEqualToString:v1] & 1) == 0 && !objc_msgSend(v4, "isEqualToString:", v2))
    {
      goto LABEL_15;
    }
  }

  else
  {
    v4 = 0;
  }

  if (qword_100218A50 != -1)
  {
    sub_1001294B4();
  }

  if (byte_100218A48 == 1)
  {
    v5 = sub_100042AA8(v2);

    v4 = v5;
  }

  if (!v4 || ([v4 isEqualToString:v1] & 1) != 0 || objc_msgSend(v4, "isEqualToString:", v2))
  {
    v6 = +[NSBundle mainBundle];
    v7 = [v6 localizedStringForKey:v1 value:v1 table:@"LocalizedStrings"];

    v4 = v7;
  }

LABEL_15:

  return v4;
}

uint64_t sub_100042C64()
{
  if (qword_100218A50 != -1)
  {
    sub_1001294B4();
  }

  return byte_100218A48;
}

id sub_100042C9C(void *a1)
{
  v1 = a1;
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:v1 value:v1 table:@"LocalizedStrings-Staccato"];

  return v3;
}

id sub_100042D18(void *a1)
{
  v1 = a1;
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:v1 value:v1 table:@"LocalizedStrings-D94"];

  return v3;
}

uint64_t sub_100042D94()
{
  v0 = +[UIDevice currentDevice];
  byte_100218A28 = [v0 userInterfaceIdiom] == 0;

  return byte_100218A28;
}

void sub_100042F54(uint64_t a1, int a2, double *a3, uint64_t a4, double a5, double a6, double a7, double a8, double a9, double a10)
{
  if (a4)
  {
    v13 = a4;
    v14 = a3 + 1;
    do
    {
      *(v14 - 1) = (*(*(a1 + 40) + 16))(*(v14 - 1), *v14);
      *v14 = v15;
      v14 += 2;
      --v13;
    }

    while (v13);
  }

  if (a2 <= 1)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v17 = *(a1 + 32);
        v18 = *a3;
        v19 = a3[1];

        [v17 addLineToPoint:{v18, v19}];
      }
    }

    else
    {
      v32 = *(a1 + 32);
      v33 = *a3;
      v34 = a3[1];

      [v32 moveToPoint:{v33, v34}];
    }
  }

  else
  {
    switch(a2)
    {
      case 2:
        v20 = *(a1 + 32);
        v21 = a3[2];
        v22 = a3[3];
        v23 = *a3;
        v24 = a3[1];

        [v20 addQuadCurveToPoint:v21 controlPoint:{v22, v23, v24, a9, a10}];
        break;
      case 3:
        v25 = *(a1 + 32);
        v26 = a3[4];
        v27 = a3[5];
        v28 = *a3;
        v29 = a3[1];
        v30 = a3[2];
        v31 = a3[3];

        [v25 addCurveToPoint:v26 controlPoint1:v27 controlPoint2:{v28, v29, v30, v31}];
        break;
      case 4:
        v16 = *(a1 + 32);

        [v16 closePath];
        break;
    }
  }
}

uint64_t sub_100043C20()
{
  if (byte_100218A38 == 1)
  {
    v1 = byte_100218A39;
    return v1 & 1;
  }

  if (AXDeviceHasHomeButton())
  {
    v1 = 0;
    return v1 & 1;
  }

  return AXDeviceIsPhone();
}

uint64_t sub_100043C74()
{
  if (byte_100218A3A == 1)
  {
    v0 = byte_100218A3B;
  }

  else
  {
    v0 = AXDeviceHasHomeButton() ^ 1;
  }

  return v0 & 1;
}

void sub_100043CB4(uint64_t a1)
{
  while (1)
  {
    while (1)
    {
      if (!qword_100218A40)
      {
        v2 = [UINotificationFeedbackGenerator alloc];
        v3 = [NSSet setWithArray:&off_1001E4E18];
        v4 = [_UINotificationFeedbackGeneratorConfiguration privateConfigurationForTypes:v3];
        v5 = [v2 initWithConfiguration:v4];
        v6 = qword_100218A40;
        qword_100218A40 = v5;
      }

      if (a1 > 1)
      {
        break;
      }

      if (a1 != 1)
      {
        return;
      }

      v9 = +[CHHapticEngine capabilitiesForHardware];
      v10 = [v9 supportsHaptics];

      a1 = 4;
      if (v10)
      {
        [qword_100218A40 prepare];
        v12 = qword_100218A40;
        v13 = 1016;
        goto LABEL_18;
      }
    }

    if (a1 != 2)
    {
      break;
    }

    v7 = +[CHHapticEngine capabilitiesForHardware];
    v8 = [v7 supportsHaptics];

    a1 = 4;
    if (v8)
    {
      [qword_100218A40 prepare];
      v12 = qword_100218A40;
      v13 = 1017;
LABEL_18:

      [v12 _privateNotificationOccurred:v13];
      return;
    }
  }

  if (a1 == 3)
  {
    v11 = 1;
  }

  else
  {
    if (a1 != 4)
    {
      return;
    }

    v11 = 0;
  }

  sub_100043E68(v11);
}

void sub_100043E68(uint64_t a1)
{
  v2 = +[UIDevice currentDevice];
  v3 = [v2 _tapticEngine];
  [v3 prepareUsingFeedback:a1];

  v4 = +[UIDevice currentDevice];
  v5 = [v4 _tapticEngine];
  [v5 actuateFeedback:a1];

  v7 = +[UIDevice currentDevice];
  v6 = [v7 _tapticEngine];
  [v6 endUsingFeedback:a1];
}

HNDButtonStateContainer *sub_10004401C(unsigned int a1, unsigned int a2)
{
  v4 = sub_100044278(a1);
  sub_100044278(a2);
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_100044314;
  v5 = v22[3] = &unk_1001D4B40;
  v23 = v5;
  v6 = [v4 objectsPassingTest:v22];
  v17 = _NSConcreteStackBlock;
  v18 = 3221225472;
  v19 = sub_100044338;
  v20 = &unk_1001D4B40;
  v21 = v4;
  v7 = v4;
  v8 = [v5 objectsPassingTest:&v17];
  if ([v6 count] >= 2)
  {
    v9 = ASTLogMouse();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      sub_1001294C8(v6, v9);
    }
  }

  if ([v8 count] >= 2)
  {
    v10 = ASTLogMouse();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      sub_100129540(v8, v10);
    }
  }

  if (![v8 count] && !objc_msgSend(v6, "count"))
  {
    v11 = ASTLogMouse();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      sub_1001295B8(a1, a2, v11);
    }
  }

  v12 = [HNDButtonStateContainer alloc];
  v13 = [v6 anyObject];
  v14 = [v8 anyObject];
  v15 = [(HNDButtonStateContainer *)v12 initWithUpButton:v13 downButton:v14];

  return v15;
}

id sub_100044278(unsigned int a1)
{
  v2 = +[NSMutableSet set];
  v3 = 1;
  do
  {
    if ((a1 >> (v3 - 1)))
    {
      v4 = [NSNumber numberWithUnsignedInt:v3];
      [v2 addObject:v4];
    }

    v3 = (v3 + 1);
  }

  while (v3 != 32);

  return v2;
}

void sub_10004435C(id a1)
{
  v1 = +[AXSettings sharedInstance];
  byte_100218A48 = [v1 laserEnabled];
}

void *sub_1000443AC(uint64_t a1)
{
  v2 = sub_1000443FC();
  result = dlsym(v2, "AXWatchRemoteScreenIsTwiceFeatureOn");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_100218A58 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_1000443FC()
{
  v2[0] = 0;
  if (!qword_100218A60)
  {
    v2[1] = _NSConcreteStackBlock;
    v2[2] = 3221225472;
    v2[3] = sub_1000444F4;
    v2[4] = &unk_1001D4BC0;
    v2[5] = v2;
    v3 = off_1001D4BA8;
    v4 = 0;
    qword_100218A60 = _sl_dlopen();
  }

  v0 = qword_100218A60;
  if (!qword_100218A60)
  {
    sub_100129640(v2);
  }

  if (v2[0])
  {
    free(v2[0]);
  }

  return v0;
}

uint64_t sub_1000444F4()
{
  result = _sl_dlopen();
  qword_100218A60 = result;
  return result;
}

void *sub_100044568(uint64_t a1)
{
  v2 = sub_1000443FC();
  result = dlsym(v2, "AXWatchRemoteScreenIsPairedGizmoSupported");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_100218A68 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id sub_1000445BC()
{
  v0 = objc_alloc_init(AXSSSwitchControlSettings);
  v1 = +[AXSettings sharedInstance];
  v2 = [v1 switchControlScanningStyle];
  if (v2 == 2)
  {
    v26 = AXSSSwitchControlScanningStyleSingleSwitchStep;
    v3 = &v26;
  }

  else if (v2 == 1)
  {
    v27 = AXSSSwitchControlScanningStyleManual;
    v3 = &v27;
  }

  else
  {
    if (v2)
    {
      goto LABEL_8;
    }

    v28 = AXSSSwitchControlScanningStyleAuto;
    v3 = &v28;
  }

  v4 = [NSArray arrayWithObjects:v3 count:1];
  [v0 setScanningStyles:v4];

LABEL_8:
  v5 = [v1 switchControlTapBehavior];
  if (v5 == 2)
  {
    v23 = AXSSSwitchControlTapBehaviorAlways;
    v6 = &v23;
  }

  else if (v5 == 1)
  {
    v24 = AXSSSwitchControlTapBehaviorAuto;
    v6 = &v24;
  }

  else
  {
    if (v5)
    {
      goto LABEL_15;
    }

    v25 = AXSSSwitchControlTapBehaviorDefault;
    v6 = &v25;
  }

  v7 = [NSArray arrayWithObjects:v6 count:1];
  [v0 setTapBehaviors:v7];

LABEL_15:
  if ([v1 assistiveTouchScannerCursorHighVisibilityEnabled])
  {
    v22 = AXSSSwitchControlCursorSizeLarge;
    v8 = &v22;
  }

  else
  {
    v21 = AXSSSwitchControlCursorSizeSmall;
    v8 = &v21;
  }

  v9 = [NSArray arrayWithObjects:v8 count:1];
  [v0 setCursorSizes:v9];

  v10 = [v1 switchControlScanAfterTapLocation];
  if (v10 == 1)
  {
    v19 = AXSSSwitchControlPostActivationScanLocationCurrentItem;
    v11 = &v19;
  }

  else
  {
    if (v10)
    {
      goto LABEL_23;
    }

    v20 = AXSSSwitchControlPostActivationScanLocationDefault;
    v11 = &v20;
  }

  v12 = [NSArray arrayWithObjects:v11 count:1];
  [v0 setPostActivationScanLocations:v12];

LABEL_23:
  [v1 assistiveTouchStepInterval];
  [v0 setAutoScanningInterval:?];
  [v1 assistiveTouchScanTimeout];
  [v0 setAutoHideTimeout:?];
  if ([v1 assistiveTouchDelayAfterInputEnabled])
  {
    [v1 assistiveTouchDelayAfterInput];
  }

  else
  {
    v13 = AXSSSwitchControlTimeIntervalNotApplicable;
  }

  [v0 setPauseOnFirstItemInterval:v13];
  [v0 setNumberOfScanLoops:{objc_msgSend(v1, "assistiveTouchScanCycles")}];
  [v1 switchControlDwellTime];
  [v0 setDwellDuration:?];
  if ([v1 assistiveTouchActionRepeatEnabled])
  {
    [v1 assistiveTouchActionRepeatInterval];
  }

  else
  {
    v14 = AXSSSwitchControlTimeIntervalNotApplicable;
  }

  [v0 setRepeatActionInterval:v14];
  if ([v1 assistiveTouchInputHoldEnabled])
  {
    [v1 assistiveTouchInputHoldDuration];
  }

  else
  {
    v15 = AXSSSwitchControlTimeIntervalNotApplicable;
  }

  [v0 setHoldDuration:v15];
  if ([v1 assistiveTouchInputCoalescingEnabled])
  {
    [v1 assistiveTouchInputCoalescingDuration];
  }

  else
  {
    v16 = AXSSSwitchControlTimeIntervalNotApplicable;
  }

  [v0 setIgnoreRepeatDuration:v16];
  [v0 setSoundEffectsEnabled:{objc_msgSend(v1, "assistiveTouchScannerSoundEnabled")}];
  [v0 setSpeechEnabled:{objc_msgSend(v1, "assistiveTouchScannerSpeechEnabled")}];
  if ([v1 assistiveTouchLongPressEnabled])
  {
    [v1 assistiveTouchLongPressDuration];
  }

  else
  {
    v17 = AXSSSwitchControlTimeIntervalNotApplicable;
  }

  [v0 setLongPressDuration:v17];
  [v1 switchControlAutoTapTimeout];
  [v0 setAutoTapTimeout:?];

  return v0;
}

void sub_100044950(void *a1)
{
  v1 = a1;
  v2 = +[AXSettings sharedInstance];
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  v3 = [v1 scanningStyles];
  v4 = [v3 countByEnumeratingWithState:&v64 objects:v71 count:16];
  if (!v4)
  {
    goto LABEL_16;
  }

  v5 = v4;
  v6 = *v65;
  v7 = AXSSSwitchControlScanningStyleAuto;
  v8 = AXSSSwitchControlScanningStyleManual;
  v9 = AXSSSwitchControlScanningStyleSingleSwitchStep;
  while (2)
  {
    for (i = 0; i != v5; i = i + 1)
    {
      if (*v65 != v6)
      {
        objc_enumerationMutation(v3);
      }

      v11 = *(*(&v64 + 1) + 8 * i);
      if ([v11 isEqualToString:v7])
      {
        v12 = 0;
LABEL_15:
        [v2 setSwitchControlScanningStyle:v12];
        goto LABEL_16;
      }

      if ([v11 isEqualToString:v8])
      {
        v12 = 1;
        goto LABEL_15;
      }

      if ([v11 isEqualToString:v9])
      {
        v12 = 2;
        goto LABEL_15;
      }
    }

    v5 = [v3 countByEnumeratingWithState:&v64 objects:v71 count:16];
    if (v5)
    {
      continue;
    }

    break;
  }

LABEL_16:

  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v13 = [v1 tapBehaviors];
  v14 = [v13 countByEnumeratingWithState:&v60 objects:v70 count:16];
  if (!v14)
  {
    goto LABEL_31;
  }

  v15 = v14;
  v16 = *v61;
  v17 = AXSSSwitchControlTapBehaviorDefault;
  v18 = AXSSSwitchControlTapBehaviorAuto;
  v19 = AXSSSwitchControlTapBehaviorAlways;
  while (2)
  {
    v20 = 0;
    while (2)
    {
      if (*v61 != v16)
      {
        objc_enumerationMutation(v13);
      }

      v21 = *(*(&v60 + 1) + 8 * v20);
      if ([v21 isEqualToString:v17])
      {
        v22 = 0;
LABEL_30:
        [v2 setSwitchControlTapBehavior:v22];
        goto LABEL_31;
      }

      if ([v21 isEqualToString:v18])
      {
        v22 = 1;
        goto LABEL_30;
      }

      if ([v21 isEqualToString:v19])
      {
        v22 = 2;
        goto LABEL_30;
      }

      if (v15 != ++v20)
      {
        continue;
      }

      break;
    }

    v15 = [v13 countByEnumeratingWithState:&v60 objects:v70 count:16];
    if (v15)
    {
      continue;
    }

    break;
  }

LABEL_31:

  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v23 = [v1 cursorSizes];
  v24 = [v23 countByEnumeratingWithState:&v56 objects:v69 count:16];
  if (!v24)
  {
    goto LABEL_45;
  }

  v25 = v24;
  v26 = *v57;
  v27 = AXSSSwitchControlCursorSizeSmall;
  v28 = AXSSSwitchControlCursorSizeMedium;
  v29 = AXSSSwitchControlCursorSizeLarge;
  while (2)
  {
    v30 = 0;
    while (2)
    {
      if (*v57 != v26)
      {
        objc_enumerationMutation(v23);
      }

      v31 = *(*(&v56 + 1) + 8 * v30);
      if ([v31 isEqualToString:v27] & 1) != 0 || (objc_msgSend(v31, "isEqualToString:", v28))
      {
        v32 = 0;
LABEL_44:
        [v2 setAssistiveTouchScannerCursorHighVisibilityEnabled:v32];
        goto LABEL_45;
      }

      if ([v31 isEqualToString:v29])
      {
        v32 = 1;
        goto LABEL_44;
      }

      if (v25 != ++v30)
      {
        continue;
      }

      break;
    }

    v25 = [v23 countByEnumeratingWithState:&v56 objects:v69 count:16];
    if (v25)
    {
      continue;
    }

    break;
  }

LABEL_45:

  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v33 = [v1 postActivationScanLocations];
  v34 = [v33 countByEnumeratingWithState:&v52 objects:v68 count:16];
  if (v34)
  {
    v35 = v34;
    v36 = *v53;
    v37 = AXSSSwitchControlPostActivationScanLocationCurrentItem;
    v38 = AXSSSwitchControlPostActivationScanLocationDefault;
    v39 = 1;
    while (2)
    {
      for (j = 0; j != v35; j = j + 1)
      {
        if (*v53 != v36)
        {
          objc_enumerationMutation(v33);
        }

        v41 = *(*(&v52 + 1) + 8 * j);
        if ([v41 isEqualToString:v37])
        {
          goto LABEL_56;
        }

        if ([v41 isEqualToString:v38])
        {
          v39 = 0;
LABEL_56:
          [v2 setSwitchControlScanAfterTapLocation:v39];
          goto LABEL_57;
        }
      }

      v35 = [v33 countByEnumeratingWithState:&v52 objects:v68 count:16];
      if (v35)
      {
        continue;
      }

      break;
    }
  }

LABEL_57:

  [v1 autoScanningInterval];
  v42 = AXSSSwitchControlTimeIntervalNotApplicable;
  if (v43 != AXSSSwitchControlTimeIntervalNotApplicable)
  {
    [v1 autoScanningInterval];
    [v2 setAssistiveTouchStepInterval:?];
  }

  [v1 autoHideTimeout];
  if (v44 != v42)
  {
    [v1 autoHideTimeout];
    [v2 setAssistiveTouchScanTimeout:?];
  }

  [v1 pauseOnFirstItemInterval];
  if (v45 == v42)
  {
    [v2 setAssistiveTouchDelayAfterInputEnabled:0];
  }

  else
  {
    [v2 setAssistiveTouchDelayAfterInputEnabled:1];
    [v1 pauseOnFirstItemInterval];
    [v2 setAssistiveTouchDelayAfterInput:?];
  }

  [v2 setAssistiveTouchScanCycles:{objc_msgSend(v1, "numberOfScanLoops")}];
  [v1 dwellDuration];
  if (v46 != v42)
  {
    [v1 dwellDuration];
    [v2 setSwitchControlDwellTime:?];
  }

  [v1 repeatActionInterval];
  if (v47 == v42)
  {
    [v2 setAssistiveTouchActionRepeatEnabled:0];
  }

  else
  {
    [v2 setAssistiveTouchActionRepeatEnabled:1];
    [v1 repeatActionInterval];
    [v2 setAssistiveTouchActionRepeatInterval:?];
  }

  [v1 holdDuration];
  if (v48 == v42)
  {
    [v2 setAssistiveTouchInputHoldEnabled:0];
  }

  else
  {
    [v2 setAssistiveTouchInputHoldEnabled:1];
    [v1 holdDuration];
    [v2 setAssistiveTouchInputHoldDuration:?];
  }

  [v1 ignoreRepeatDuration];
  if (v49 == v42)
  {
    [v2 setAssistiveTouchInputCoalescingEnabled:0];
  }

  else
  {
    [v2 setAssistiveTouchInputCoalescingEnabled:1];
    [v1 ignoreRepeatDuration];
    [v2 setAssistiveTouchInputCoalescingDuration:?];
  }

  [v2 setAssistiveTouchScannerSoundEnabled:{objc_msgSend(v1, "soundEffectsEnabled")}];
  [v2 setAssistiveTouchScannerSpeechEnabled:{objc_msgSend(v1, "speechEnabled")}];
  [v1 longPressDuration];
  if (v50 == v42)
  {
    [v2 setAssistiveTouchLongPressEnabled:0];
  }

  else
  {
    [v2 setAssistiveTouchLongPressEnabled:1];
    [v1 longPressDuration];
    [v2 setAssistiveTouchLongPressDuration:?];
  }

  [v1 autoTapTimeout];
  if (v51 != v42)
  {
    [v1 autoTapTimeout];
    [v2 setSwitchControlAutoTapTimeout:?];
  }
}

id sub_10004722C(uint64_t a1)
{
  result = [*(a1 + 32) isActive];
  if (result)
  {
    result = [*(a1 + 32) forcePause];
    if ((result & 1) == 0)
    {
      v3 = [*(a1 + 32) isSpeakingFocusContext];
      v4 = *(a1 + 32);
      if (v3)
      {

        return [v4 setShouldScanToNextFocusContextAfterSpeaking:1];
      }

      else
      {
        [v4 _stepToNextFocusContextInDirection:0];
        v5 = *(a1 + 32);

        return [v5 _autoscanToNextFocusContext];
      }
    }
  }

  return result;
}

void sub_100047D54(uint64_t a1)
{
  v5 = *(a1 + 40);
  v7 = [*(a1 + 32) delegate];
  if (objc_opt_respondsToSelector())
  {
    v2 = [*(a1 + 32) delegate];
    if ([v2 conformsToProtocol:&OBJC_PROTOCOL___SCATTadmorInputSourceDelegate])
    {
      v6 = vmulq_f64(vdivq_f64(v5, vdupq_n_s64(0x405FC00000000000uLL)), vdupq_n_s64(0x4059000000000000uLL));
      v3 = vmovn_s64(vmvnq_s8(vceqq_f64(CGPointZero, v6)));
      v4 = v3.i8[0] | v3.i8[4];

      if ((v4 & 1) == 0)
      {
        return;
      }

      v7 = [*(a1 + 32) delegate];
      [v7 tadmorInputSource:*(a1 + 32) didReceiveMovementDelta:*&v6];
    }

    else
    {
    }
  }
}

void sub_100048334(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [SCATControllableDevicesMenuItem alloc];
  v7 = [NSString stringWithFormat:@"%@%lu", @"controllableDevice", a3];
  v8 = [(SCATControllableDevicesMenuItem *)v6 initWithIdentifier:v7 delegate:*(a1 + 32) searchResult:v5];

  [*(a1 + 40) addObject:v8];
}

void sub_100049570(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_1000495AC(uint64_t a1)
{
  v5 = +[AXSettings sharedInstance];
  [v5 assistiveTouchVirtualTrackpadSpeed];
  v3 = v2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setPointerSpeed:v3];
}

void sub_100049624(uint64_t a1)
{
  v5 = +[AXSettings sharedInstance];
  [v5 assistiveTouchVirtualTrackpadScrollSpeed];
  v3 = v2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setScrollSpeed:v3];
}

void sub_10004969C(uint64_t a1)
{
  v5 = +[AXSettings sharedInstance];
  [v5 assistiveTouchVirtualTrackpadFadeDelay];
  v3 = v2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setFadeDelay:v3];
}

void sub_100049714(uint64_t a1)
{
  v4 = +[AXSettings sharedInstance];
  v2 = [v4 assistiveTouchVirtualTrackpadScrollToggleEnabled];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setNaturalScroll:v2];
}

void sub_100049784(uint64_t a1)
{
  v6 = +[AXSettings sharedInstance];
  [v6 assistiveTouchVirtualTrackpadHoldDuration];
  v3 = v2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained trackpadPressGestureRecognizer];
  [v5 setMinimumPressDuration:v3];
}

void sub_100049C68(uint64_t a1)
{
  v2 = [*(a1 + 32) handManager];
  [*(a1 + 32) previousPointerPoint];
  [v2 moveFingerToPoint:?];

  v9 = [*(a1 + 32) handManager];
  [*(a1 + 32) previousPointerPoint];
  v4 = v3;
  v6 = v5;
  v7 = [*(a1 + 32) displayManager];
  v8 = [v7 hardwareIdentifier];
  [v9 moveSystemPointerIfActiveToPoint:v8 onDisplay:{v4, v6}];
}

void sub_10004A8DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10004A900(uint64_t a1)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10004A9D0;
  v3[3] = &unk_1001D3460;
  objc_copyWeak(&v4, (a1 + 32));
  [UIView animateWithDuration:v3 animations:0.5];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setIsTrackpadDimmed:1];

  objc_destroyWeak(&v4);
}

void sub_10004A9D0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained resetVisibility:0];
}

void sub_10004BFB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  objc_destroyWeak(va);
  objc_destroyWeak((v16 - 208));
  objc_destroyWeak((v16 - 200));
  _Unwind_Resume(a1);
}

void sub_10004C064(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _goBackInMenuState:3];
}

void sub_10004C0A8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained && WeakRetained[148] == 1)
  {
    v4 = WeakRetained;
    v3 = objc_loadWeakRetained((a1 + 32));
    [v3 _updateNubbitFadedProperties];

    WeakRetained = v4;
  }
}

id sub_10004C11C(uint64_t a1)
{
  [*(a1 + 32) _preloadInitialMenuItems];
  v2 = *(a1 + 32);

  return [v2 _preloadDwellMenuItems];
}

void sub_10004C158(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setInitialItems:0];
}

void sub_10004C19C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained reloadDwellMenu];
}

void sub_10004C1DC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained reloadDwellMenu];
}

void sub_10004C21C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained reloadDwellMenu];
}

void sub_10004C25C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _shortcutsDidUpdate];
}

id sub_10004CA94(uint64_t a1)
{
  [*(a1 + 32) setAlpha:1.0];
  v2 = *(*(a1 + 32) + 88);

  return [v2 setSelected:1];
}

void sub_10004D09C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10004D0B4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10004D0CC(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  [*(a1 + 32) convertPoint:v7 toView:{*(a1 + 48), *(a1 + 56)}];
  if ([v7 pointInside:0 withEvent:?])
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a4 = 1;
  }
}

void sub_10004D954(uint64_t a1)
{
  [*(*(a1 + 32) + 192) setAlpha:0.0];
  v2 = *(a1 + 32);
  v3 = *(v2 + 192);
  *(v2 + 192) = 0;
}

void *sub_10004D9A8(uint64_t a1)
{
  [*(*(*(a1 + 40) + 8) + 40) removeFromSuperview];
  result = *(a1 + 32);
  if (!result[24])
  {
    result = [result style];
    if (result)
    {
      v3[0] = _NSConcreteStackBlock;
      v3[1] = 3221225472;
      v3[2] = sub_10004DA60;
      v3[3] = &unk_1001D3488;
      v3[4] = *(a1 + 32);
      return [UIView animateWithDuration:v3 animations:0.2];
    }
  }

  return result;
}

void sub_1000518D0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 256));
  _Unwind_Resume(a1);
}

void sub_100051FF4(id a1)
{
  v1 = AXAssistiveTouchIconTypeSiri;
  v9[0] = AXAssistiveTouchIconTypeNotificationCenter;
  v9[1] = AXAssistiveTouchIconTypeSiri;
  v2 = AXAssistiveTouchIconTypeTypeToSiri;
  v9[2] = AXAssistiveTouchIconTypeTypeToSiri;
  v9[3] = AXAssistiveTouchIconTypeControlCenter;
  v9[4] = AXAssistiveTouchIconTypeAppSwitcher;
  v9[5] = AXAssistiveTouchIconTypeScreenshot;
  v9[6] = AXAssistiveTouchIconTypeVoiceControl;
  v9[7] = AXAssistiveTouchIconTypeRebootDevice;
  v9[8] = AXAssistiveTouchIconTypeSOS;
  v9[9] = AXAssistiveTouchIconTypeToggleDock;
  v9[10] = AXAssistiveTouchIconTypeArmApplePay;
  v9[11] = AXAssistiveTouchIconTypeConfirmApplePay;
  v3 = AXAssistiveTouchIconTypeTrackpad;
  v9[12] = AXAssistiveTouchIconTypeDetectionMode;
  v9[13] = AXAssistiveTouchIconTypeTrackpad;
  v9[14] = AXAssistiveTouchIconTypeWatchRemoteScreen;
  v9[15] = AXAssistiveTouchIconTypeBackgroundSounds;
  v9[16] = AXAssistiveTouchIconTypeLiveCaptions;
  v9[17] = AXAssistiveTouchIconTypeLiveSpeech;
  v9[18] = AXAssistiveTouchIconTypeNearbyDeviceControl;
  v9[19] = AXAssistiveTouchIconTypeAssistiveAccess;
  v9[20] = AXAssistiveTouchIconTypeCamera;
  v9[21] = AXAssistiveTouchIconTypeFrontFacingCamera;
  v4 = [NSArray arrayWithObjects:v9 count:22];
  v5 = qword_100218A78;
  qword_100218A78 = v4;

  v6 = [qword_100218A78 mutableCopy];
  if (AXDeviceIsSiriAvailableInClarity())
  {
    [v6 removeObject:v1];
    [v6 removeObject:v2];
  }

  [v6 removeObject:v3];
  [v6 addObject:AXAssistiveTouchIconTypeHome];
  [v6 addObject:AXAssistiveTouchIconTypeOrientation];
  v7 = [v6 copy];
  v8 = qword_100218A80;
  qword_100218A80 = v7;
}

void sub_100052224(uint64_t a1, void *a2)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100062274;
  block[3] = &unk_1001D3488;
  v4 = a2;
  v2 = v4;
  dispatch_async(&_dispatch_main_q, block);
}

void sub_1000522B8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained[17] cancel];
  [WeakRetained _notificationCenterPressed];
}

void sub_10005230C(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _pinchPressed:v3 mode:1];
}

void sub_10005236C(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _pinchPressed:v3 mode:0];
}

void sub_1000523CC(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _pinchPressed:v3 mode:2];
}

void sub_10005242C(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _doubleTapPressed:v3 fromButtonPress:0];
}

void sub_10005248C(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _longPressPressed:v3 fromButtonPress:0];
}

void sub_1000524EC(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _dragAndDropPressed:v3 fromButtonPress:0 dragMenu:0];
}

void sub_100052550(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _dragAndDropPressed:v3 fromButtonPress:0 dragMenu:1];
}

void sub_1000525B4(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _spotlightPressed:v3];
}

void sub_100052610(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _orbPressed:v3 fromButtonPress:0];
}

void sub_100052670(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _activateLockButton];
}

void sub_1000526B0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _volumeDown:1];
}

void sub_1000526F4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _volumeDown:0];
}

void sub_100052738(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _volumeUp:1];
}

void sub_10005277C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _volumeUp:0];
}

void sub_1000527C0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _tripleClickHomePressed];
}

void sub_100052800(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _orientationPressed:v3];
}

void sub_10005285C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _ringerPressed:1];
}

void sub_1000528A0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _actionButtonPressed];
}

void sub_1000528E0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _cameraButtonPressed];
}

void sub_100052920(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _cameraButtonLightPressed];
}

void sub_100052960(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _cameraButtonDoubleLightPressed];
}

void sub_1000529A0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _openVisualIntelligence];
}

void sub_1000529E0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _rotationLockPressed];
}

void sub_100052A20(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _screenshotPressed];
}

void sub_100052A60(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _trackpadPressed];
}

void sub_100052AA0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _menuBarPressed];
}

void sub_100052AE0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _shakePressed];
}

void sub_100052B20(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _toggleAppSwitcher];
}

void sub_100052B60(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained[17] cancel];
  [WeakRetained _hardwareButtonPressed:v3];
}

void sub_100052BD0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained[17] cancel];
  [WeakRetained _controlCenterPressed];
}

void sub_100052C24(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _homeButton:1];
}

void sub_100052C68(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _homeButton:0];
}

void sub_100052CAC(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (*(WeakRetained + 96) == 1)
  {
    [WeakRetained[17] cancel];
    [v4 _customsPressed:v5];
  }

  else
  {
    [v5 setHighlighted:0];
  }
}

void sub_100052D40(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained[17] cancel];
  [WeakRetained _siriButtonPressed];
}

id sub_100052D94(uint64_t a1)
{
  v1 = *(*(*(a1 + 32) + 8) + 40);
  v2 = (sub_100042418() & 1) != 0 || _AXSHomeButtonAssistant() != 0;

  return [v1 setDisabled:v2];
}

void sub_100052DEC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained[17] cancel];
  [WeakRetained _typeToSiriButtonPressed];
}

id sub_100052E40(uint64_t a1)
{
  v1 = *(*(*(a1 + 32) + 8) + 40);
  v2 = (sub_100042418() & 1) != 0 || _AXSHomeButtonAssistant() != 0;

  return [v1 setDisabled:v2];
}

void sub_100052E98(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained[17] cancel];
  [WeakRetained _voiceControlPressed];
}

void sub_100052EEC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _commandAndControlPressed];
}

void sub_100052F2C(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained[17] cancel];
  [WeakRetained _gesturesPressed:v3];
}

void sub_100052F9C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _sosPressed];
}

void sub_100052FDC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _detectionModePresssed];
}

void sub_10005301C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _watchRemoteScreenPressed];
}

void sub_10005305C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _backgroundSoundsPressed];
}

void sub_10005309C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _liveCaptionsPressed];
}

void sub_1000530DC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _liveSpeechPressed];
}

void sub_10005311C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _dimFlashingLightsPressed];
}

void sub_10005315C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _hapticMusicPressed];
}

void sub_10005319C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _motionCuesPressed];
}

void sub_1000531DC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _nearbyDeviceControlPressed];
}

void sub_10005321C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _accessibilityReaderPressed];
}

void sub_10005325C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _rebootDevicePressed];
}

void sub_10005329C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _reachabilityPressed];
}

void sub_1000532DC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _speakScreenPressed];
}

void sub_10005331C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _sysdiagnosePressed];
}

void sub_10005335C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _dockPressed];
}

void sub_10005339C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _confirmApplePay];
}

void sub_1000533DC(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _applePayButtonPressed:v3];
}

void sub_100053438(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained[17] cancel];
  [WeakRetained _dwellPressed:v3];
}

void sub_1000534A8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _toggleDwellControlPause:0];
}

void sub_1000534EC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _toggleDwellControlPause:1];
}

void sub_100053530(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _lockDwellControlAction:1];
}

void sub_100053574(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _lockDwellControlAction:0];
}

void sub_1000535B8(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _tapPressed:v3 fromButtonPress:0];
}

void sub_100053618(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _increaseDwellTimePressed];
}

void sub_100053658(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _decreaseDwellTimePressed];
}

void sub_100053698(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained[17] cancel];
  [WeakRetained _scrollPressed:v3];
}

void sub_100053708(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _scrollPressed:v3 fromButtonPress:0 vertical:1 forward:0 max:0];
}

void sub_100053774(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _scrollPressed:v3 fromButtonPress:0 vertical:1 forward:1 max:0];
}

void sub_1000537E0(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _scrollPressed:v3 fromButtonPress:0 vertical:0 forward:0 max:0];
}

void sub_10005384C(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _scrollPressed:v3 fromButtonPress:0 vertical:0 forward:1 max:0];
}

void sub_1000538B8(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _scrollPressed:v3 fromButtonPress:0 vertical:1 forward:0 max:1];
}

void sub_100053924(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _scrollPressed:v3 fromButtonPress:0 vertical:1 forward:1 max:1];
}

void sub_100053990(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _continuousScrollPressed:v3 fromButtonPress:0 inDirection:1 iconType:*(a1 + 32)];
}

void sub_1000539F8(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _continuousScrollPressed:v3 fromButtonPress:0 inDirection:0 iconType:*(a1 + 32)];
}

void sub_100053A60(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _bubbleModeToggled];
}

void sub_100053AA0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _autoHideForEyeTrackingToggled];
}

void sub_100053AE0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _bubbleModeToggled];
}

void sub_100053B20(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _calibrateEyeTrackingPressed];
}

void sub_100053B60(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _toggleNeedsToShowZoomWindow];
}

void sub_100053BA0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _toggleOnDeviceEyeTracking];
}

void sub_100053BE0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _toggleDwellKeyboardContinuousPath];
}

void sub_100053C20(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _toggleAssistiveAccess];
}

void sub_100053C60(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _cameraPressed];
}

void sub_100053CA0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _frontFacingCameraPressed];
}

void sub_100053CE0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _customGesturePressed:*(a1 + 32) fromButtonPress:0];
}

id sub_100053D34(uint64_t a1)
{
  v2 = +[AXSiriShortcutsManager sharedManager];
  [v2 performShortcut:*(a1 + 32)];

  v3 = *(a1 + 40);

  return [v3 _menuExited];
}

void sub_100053D88(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _siriShortcutsMenuPressed:v3];
}

BOOL sub_100054900(id a1, HNDRockerButton *a2, unint64_t a3, BOOL *a4)
{
  v5 = [(HNDRockerButton *)a2 type];
  v6 = AXAssistiveTouchIconTypeConfirmApplePay;

  if (v5 == v6)
  {
    *a4 = 1;
  }

  return v5 == v6;
}

BOOL sub_100054960(id a1, HNDRockerButton *a2, unint64_t a3, BOOL *a4)
{
  v5 = [(HNDRockerButton *)a2 type];
  v6 = AXAssistiveTouchIconTypeArmApplePay;

  if (v5 == v6)
  {
    *a4 = 1;
  }

  return v5 == v6;
}

void sub_100054ABC(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = [v4 objectAtIndexedSubscript:a3];
  [v5 setLocation:v6];
}

void sub_100054F98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, id a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, id a30)
{
  objc_destroyWeak((v30 + 32));
  objc_destroyWeak((v31 + 32));
  objc_destroyWeak(&a25);
  objc_destroyWeak(&a30);
  objc_destroyWeak((v32 - 112));
  _Unwind_Resume(a1);
}

void sub_100055024(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleTouch:4];
}

void sub_100055068(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleTouch:3];
}

void sub_1000550AC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleTouch:2];
}

void sub_1000550F0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleTouch:5];
}

void sub_100055488(id a1, HNDRockerButton *a2)
{
  v2 = +[AXPISystemActionHelper sharedInstance];
  [v2 rotateUpsideDown];
}

void sub_1000554D0(id a1, HNDRockerButton *a2)
{
  v2 = +[AXPISystemActionHelper sharedInstance];
  [v2 rotateRight];
}

void sub_100055518(id a1, HNDRockerButton *a2)
{
  v2 = +[AXPISystemActionHelper sharedInstance];
  [v2 rotatePortrait];
}

void sub_100055560(id a1, HNDRockerButton *a2)
{
  v2 = +[AXPISystemActionHelper sharedInstance];
  [v2 rotateLeft];
}

void sub_10005589C(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  v10 = [v5 scrollItems];
  v7 = *(a1 + 32);
  v8 = [*(a1 + 40) objectAtIndexedSubscript:a3];
  v9 = [v7 _rockerButtonForLocation:v8 buttonType:v6];

  [v10 addObject:v9];
}

void sub_100055C24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100055C3C(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v6 = a3;
  if (([v6 isEqualToString:AXAssistiveTouchIconTypeDwellPauseToggle] & 1) != 0 || objc_msgSend(v6, "isEqualToString:", AXAssistiveTouchIconTypeDwellLockToggle))
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a4 = 1;
  }
}

void sub_100055E8C(uint64_t a1, void *a2, uint64_t a3)
{
  v8 = a2;
  if (![v8 isEqualToString:AXAssistiveTouchIconTypeMoveMenu] || *(*(a1 + 32) + 97) == 1)
  {
    if (AXRuntimeCheck_DwellKeyboardSwipe())
    {
      v5 = 0;
    }

    else
    {
      v5 = [*(a1 + 40) objectAtIndexedSubscript:a3];
    }

    v6 = [*(a1 + 32) dwellItems];
    v7 = [*(a1 + 32) _rockerButtonForLocation:v5 buttonType:v8];
    [v6 addObject:v7];
  }
}

BOOL sub_100056194(id a1, HNDRockerButton *a2, unint64_t a3, BOOL *a4)
{
  v5 = [(HNDRockerButton *)a2 type];
  v6 = [v5 isEqualToString:AXAssistiveTouchIconTypeArmApplePay];

  if (v6)
  {
    *a4 = 1;
  }

  return v6;
}

void sub_100056324(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10005634C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _confirmApplePay];
}

id sub_1000564E8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 shortcutName];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100056614;
  v9[3] = &unk_1001D4EB8;
  v10 = *(a1 + 32);
  v5 = [HNDRockerButton buttonWithTitle:v4 imageName:@"SCATIcon_siri_shortcuts" downBlock:0 upBlock:v9 showWithGuidedAccess:0 showWithAssistiveAccess:0];

  v6 = [v3 identifier];
  [v5 setAccessibilityIdentifier:v6];

  v7 = [v3 glyphImage];

  [v5 setOverrideImage:v7];

  return v5;
}

void sub_100056614(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = [a2 accessibilityIdentifier];
  v6 = [v3 shortcutForIdentifier:v4];

  v5 = v6;
  if (v6)
  {
    [*(a1 + 32) performShortcut:v6];
    v5 = v6;
  }
}

void sub_10005684C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100056874(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _updateHapticMusicIcon:*(a1 + 32)];
}

void sub_1000568C4(uint64_t a1, void *a2)
{
  v3 = [a2 hapticMusicButton];
  [a2 _updateHapticMusicIcon:v3];
}

void sub_100057328(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _ringerPressed:0];
}

void sub_100057374(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _morePressed:v3];
}

id sub_100057610(uint64_t a1)
{
  result = [*(a1 + 32) _menuExited];
  *(*(a1 + 32) + 32) = 1;
  return result;
}

void sub_100057C18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id location)
{
  objc_destroyWeak(&a23);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100057C68(id *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  if ([a1[4] count] < 8)
  {
    v7 = [v6 name];
    v10 = _NSConcreteStackBlock;
    v11 = 3221225472;
    v12 = sub_100057DDC;
    v13 = &unk_1001D4CD0;
    objc_copyWeak(&v15, a1 + 6);
    v14 = v6;
    v8 = [HNDRockerButton buttonWithTitle:v7 imageName:@"IconFavorites" downBlock:0 upBlock:&v10 showWithGuidedAccess:1 showWithAssistiveAccess:1];

    v9 = [a1[5] objectAtIndexedSubscript:{objc_msgSend(a1[4], "count", v10, v11, v12, v13)}];
    [v8 setLocation:v9];

    [v8 setCustomTitle:1];
    [a1[4] addObject:v8];

    objc_destroyWeak(&v15);
  }

  else
  {
    *a4 = 1;
  }
}

void sub_100057DDC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _customGesturePressed:*(a1 + 32) fromButtonPress:0];
}

void sub_100057E30(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _addFavoriteBoxPressed];
}

id sub_10005858C(uint64_t a1)
{
  [*(a1 + 32) enumerateObjectsUsingBlock:&stru_1001D4FE8];
  [*(*(a1 + 40) + 224) centerItems:*(a1 + 32) withView:*(a1 + 48)];
  [*(a1 + 40) _centerBackButtonToView:*(a1 + 48)];
  [*(a1 + 40) setShouldForciblyHideBackButtonForAnimation:1];
  [*(a1 + 40) _updateBackButtonVisibility];
  v2 = *(a1 + 40);

  return [v2 layoutIfNeeded];
}

id sub_100058610(uint64_t a1)
{
  result = [*(a1 + 32) isEqualToArray:*(*(a1 + 40) + 48)];
  if ((result & 1) == 0)
  {
    result = [*(a1 + 32) enumerateObjectsUsingBlock:&stru_1001D5008];
  }

  if (*(a1 + 48) == 1)
  {
    v3 = *(a1 + 40);

    return [v3 _updateKeyboardFocusIfNeeded];
  }

  return result;
}

id sub_100058690(uint64_t a1)
{
  [*(a1 + 32) setShouldForciblyHideBackButtonForAnimation:0];
  [*(a1 + 32) _updateBackButtonVisibility];
  [*(*(a1 + 32) + 64) alpha];
  if (v2 == 1.0)
  {
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100058824;
    v13[3] = &unk_1001D3488;
    v13[4] = *(a1 + 32);
    [UIView performWithoutAnimation:v13];
  }

  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v3 = *(a1 + 40);
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v9 + 1) + 8 * v7) setTranslatesAutoresizingMaskIntoConstraints:{1, v9}];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v14 count:16];
    }

    while (v5);
  }

  return [*(a1 + 32) _layoutButtonsWithViewForCenteringAtStart:0 includingBackButton:0];
}

id sub_100058824(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [v2 _contentView];
  [v2 _centerBackButtonToView:v3];

  v4 = *(a1 + 32);

  return [v4 layoutIfNeeded];
}

id sub_100058AF4(uint64_t a1)
{
  [*(a1 + 32) enumerateObjectsUsingBlock:&stru_1001D5070];
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v8 + 1) + 8 * v6) setTranslatesAutoresizingMaskIntoConstraints:{1, v8}];
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  return [*(a1 + 40) _layoutButtonsWithViewForCenteringAtStart:*(a1 + 48) includingBackButton:1];
}

id sub_100058C10(uint64_t a1)
{
  result = [*(a1 + 32) enumerateObjectsUsingBlock:&stru_1001D5090];
  if (*(a1 + 48) == 1)
  {
    v3 = *(a1 + 40);

    return [v3 _updateKeyboardFocusIfNeeded];
  }

  return result;
}

void sub_100058C6C(id a1, id a2, unint64_t a3, BOOL *a4)
{
  v4 = a2;
  if (([v4 isUserInteractionEnabled] & 1) == 0)
  {
    [v4 removeFromSuperview];
  }
}

void sub_100059DF8(uint64_t a1)
{
  v1 = [*(a1 + 32) window];
  [v1 setAlpha:0.0];
}

uint64_t sub_100059E40(uint64_t a1)
{
  [*(a1 + 32) bounds];
  AX_CGRectGetCenter();
  v3 = v2;
  v5 = v4;
  v6 = [*(a1 + 32) window];
  [*(a1 + 32) convertPoint:0 toView:{v3, v5}];
  [v6 convertPoint:0 toWindow:?];
  v8 = v7;
  v10 = v9;

  v11 = +[HNDHandManager sharedManager];
  v12 = [*(a1 + 32) hardwareIdentifier];
  [v11 performFingerDownAtPoint:v12 onDisplay:{v8, v10}];

  v13 = +[HNDHandManager sharedManager];
  v14 = [*(a1 + 32) hardwareIdentifier];
  [v13 performFingerUpAtPoint:v14 onDisplay:{v8, v10}];

  return AXPerformBlockOnMainThreadAfterDelay();
}

id sub_100059F9C(uint64_t a1)
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_10005A020;
  v2[3] = &unk_1001D3488;
  v2[4] = *(a1 + 32);
  return [UIView animateWithDuration:v2 animations:0.15];
}

void sub_10005A020(uint64_t a1)
{
  v1 = [*(a1 + 32) window];
  [v1 setAlpha:1.0];
}

id sub_10005AA8C(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 224);
  v3 = [*(a1 + 40) allValues];
  [v2 centerItems:v3 withView:*(a1 + 48)];

  if (*(a1 + 56) == 1)
  {
    [*(a1 + 32) _centerBackButtonToView:*(a1 + 48)];
  }

  v4 = *(a1 + 32);

  return [v4 layoutIfNeeded];
}

void sub_10005AB10(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setAlpha:1.0];
  [*(a1 + 32) _updateRockerItemIfNeededForItem:v3];
  [v3 setUserInteractionEnabled:1];
}

void sub_10005B0F8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  v8 = v3;
  if (*(a1 + 32) == 1 && (v5 = [v3 showWithGuidedAccess], v4 = v8, !v5))
  {
    v7 = 1;
  }

  else if (*(a1 + 33) == 1)
  {
    v6 = [v4 showWithAssistiveAccess];
    v4 = v8;
    v7 = v6 ^ 1;
  }

  else
  {
    v7 = 0;
  }

  [v4 setHidden:v7];
}

void sub_10005B190(id a1, HNDRockerButton *a2, unint64_t a3, BOOL *a4)
{
  v7 = a2;
  v4 = [(HNDRockerButton *)v7 type];
  v5 = [v4 isEqualToString:AXAssistiveTouchIconTypeSpeakScreen];

  if (v5)
  {
    v6 = +[MCProfileConnection sharedConnection];
    -[HNDRockerButton setHidden:](v7, "setHidden:", [v6 effectiveBoolValueForSetting:MCFeatureAccessibilitySpeechAllowed] == 2);
  }
}

void sub_10005B230(id a1)
{
  v3[0] = AXAssistiveTouchIconTypeNotificationCenter;
  v3[1] = AXAssistiveTouchIconTypeControlCenter;
  v3[2] = AXAssistiveTouchIconTypeAppSwitcher;
  v3[3] = AXAssistiveTouchIconTypeScreenshot;
  v3[4] = AXAssistiveTouchIconTypeVoiceControl;
  v3[5] = AXAssistiveTouchIconTypeDetectionMode;
  v3[6] = AXAssistiveTouchIconTypeWatchRemoteScreen;
  v3[7] = AXAssistiveTouchIconTypeBackgroundSounds;
  v3[8] = AXAssistiveTouchIconTypeLiveCaptions;
  v3[9] = AXAssistiveTouchIconTypeLiveSpeech;
  v3[10] = AXAssistiveTouchIconTypeNearbyDeviceControl;
  v3[11] = AXAssistiveTouchIconTypeCamera;
  v3[12] = AXAssistiveTouchIconTypeFrontFacingCamera;
  v3[13] = AXAssistiveTouchIconTypeTripleClick;
  v1 = [NSArray arrayWithObjects:v3 count:14];
  v2 = qword_100218A90;
  qword_100218A90 = v1;
}

void sub_10005B364(uint64_t a1, void *a2)
{
  if (*(a1 + 32))
  {
    v2 = qword_100218A90;
    v3 = a2;
    v4 = [v3 type];
    [v3 setDisabled:{objc_msgSend(v2, "containsObject:")}];
  }

  else
  {
    v4 = a2;
    [v4 setDisabled:0];
  }
}

BOOL sub_10005B4D4(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = [a2 tag];
  v7 = *(a1 + 32);
  if (v6 == v7)
  {
    *a4 = 1;
  }

  return v6 == v7;
}

id sub_10005C790(uint64_t a1)
{
  CGAffineTransformMakeScale(&v5, 0.9, 0.9);
  v2 = *(*(a1 + 32) + 160);
  v4 = v5;
  return [v2 setTransform:&v4];
}

id sub_10005C7F4(uint64_t a1)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10005C8C4;
  v3[3] = &unk_1001D3488;
  v4 = *(a1 + 32);
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_10005C910;
  v2[3] = &unk_1001D3750;
  v2[4] = v4;
  return [UIView animateWithDuration:0x20000 delay:v3 options:v2 animations:0.15 completion:0.0];
}

id sub_10005C8C4(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 160);
  v2 = *&CGAffineTransformIdentity.c;
  v4[0] = *&CGAffineTransformIdentity.a;
  v4[1] = v2;
  v4[2] = *&CGAffineTransformIdentity.tx;
  return [v1 setTransform:v4];
}

void sub_10005C950(id a1)
{
  v1 = +[AXPISystemActionHelper sharedInstance];
  [v1 activateVoiceControl];
}

void sub_10005C9D0(id a1)
{
  v1 = +[AXPISystemActionHelper sharedInstance];
  [v1 activateSiri];
}

void sub_10005CA50(id a1)
{
  v1 = +[AXPISystemActionHelper sharedInstance];
  [v1 activateTypeToSiri];
}

void sub_10005CB70(id a1, int64_t a2)
{
  if (!a2)
  {
    v3 = +[AXPISystemActionHelper sharedInstance];
    [v3 activateTripleClick];
  }
}

void sub_10005CBC0(id a1)
{
  v1 = +[AXPISystemActionHelper sharedInstance];
  [v1 activateTripleClick];
}

void sub_10005CC50(id a1)
{
  v1 = dispatch_get_global_queue(25, 0);
  dispatch_async(v1, &stru_1001D52C0);
}

void sub_10005CCA0(id a1)
{
  v1 = +[AXPISystemActionHelper sharedInstance];
  [v1 toggleNotificationCenter];
}

void sub_10005CD30(id a1)
{
  v1 = dispatch_get_global_queue(25, 0);
  dispatch_async(v1, &stru_1001D5300);
}

void sub_10005CD80(id a1)
{
  v1 = +[AXPISystemActionHelper sharedInstance];
  [v1 toggleControlCenter];
}

void sub_10005CE00(id a1)
{
  v1 = +[AXPISystemActionHelper sharedInstance];
  [v1 takeScreenshot];
}

void sub_10005DA74(id a1, NSError *a2)
{
  if (a2)
  {
    _AXLogWithFacility();
  }
}

id sub_10005DF9C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = +[HNDHandManager sharedManager];
  [v3 volumeLevel];
  [v2 showVolumeBar:1 withProgress:?];

  result = [*(*(a1 + 32) + 184) isCancelled];
  if ((result & 1) == 0)
  {
    v5 = *(a1 + 32);

    return [v5 _updateVolumeDisplay];
  }

  return result;
}

void sub_10005F1B0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _enableDockIconActivationMode:1];
}

void sub_10005F1F4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _enableDockIconActivationMode:2];
}

void sub_10005F238(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _enableDockIconActivationMode:3];
}

void sub_10005F7E8(uint64_t a1)
{
  [*(a1 + 32) _menuExited];
  v2 = +[AXSpringBoardServer server];
  [v2 performMedusaGesture:*(a1 + 40)];
}

void sub_10005F848(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _sideAppMorePressed:v3];
}

id sub_10005FD54(uint64_t a1)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10005FDF0;
  v3[3] = &unk_1001D3488;
  v3[4] = *(a1 + 32);
  result = [UIView animateWithDuration:v3 animations:0.5];
  *(*(a1 + 32) + 148) = 1;
  return result;
}

void sub_1000605D4(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 168) == 1)
  {
    v3 = ASTLogRocker();
    v4 = v3;
    v5 = *(a1 + 40);
    if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v3))
    {
      *v9 = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v4, OS_SIGNPOST_INTERVAL_END, v5, "Transition Menu to Nubbit", "", v9, 2u);
    }
  }

  else
  {
    *(v2 + 168) = 1;
    [*(a1 + 32) _setBackgroundWithType:0];
    [*(a1 + 32) frame];
    v12 = CGRectIntegral(v11);
    v6 = *(a1 + 48);
    v7 = *(a1 + 56);
    [*(*(a1 + 32) + 200) bounds];
    [*(a1 + 32) setFrame:{v6, v7}];
    [*(a1 + 32) _setMaskViewNubbitRadius];
    [*(a1 + 32) _layoutForegroundImageView];
    if (*(a1 + 64) == 1)
    {
      [*(*(a1 + 32) + 160) setAlpha:1.0];
    }

    [*(*(a1 + 32) + 48) enumerateObjectsUsingBlock:&stru_1001D5448];
    [*(a1 + 32) _updateBackButtonVisibility];
    [*(*(a1 + 32) + 224) centerItems:*(*(a1 + 32) + 48)];
    v8 = *(a1 + 32);

    [v8 layoutIfNeeded];
  }
}

void sub_100060768(uint64_t a1)
{
  v2 = [*(a1 + 32) style];
  v3 = *(a1 + 32);
  if (!v2 && (*(v3 + 96) & 1) == 0)
  {
    [*(v3 + 48) enumerateObjectsUsingBlock:&stru_1001D5490];
    [*(*(a1 + 32) + 48) removeAllObjects];
    v3 = *(a1 + 32);
  }

  *(v3 + 148) = 1;
  if (*(a1 + 48) == 1)
  {
    [*(a1 + 32) highlightNubbit];
  }

  *(*(a1 + 32) + 168) = 0;
  v4 = +[HNDHandManager sharedManager];
  [v4 setNubbitMoving:0];

  UIAccessibilityPostNotification(UIAccessibilityScreenChangedNotification, 0);
  [*(a1 + 32) _updateKeyboardFocusIfNeeded];
  v5 = ASTLogRocker();
  v6 = v5;
  v7 = *(a1 + 40);
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    *v8 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v6, OS_SIGNPOST_INTERVAL_END, v7, "Transition Menu to Nubbit", "", v8, 2u);
  }
}

void sub_100060DB4(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 168) == 1)
  {
    v3 = ASTLogRocker();
    v4 = v3;
    v5 = *(a1 + 48);
    if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v3))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v4, OS_SIGNPOST_INTERVAL_END, v5, "Transition Nubbit to Menu", "", buf, 2u);
    }

    return;
  }

  *(v2 + 168) = 1;
  v6 = [*(a1 + 32) displayManager];
  v7 = [v6 usesSeparateRockerForFullMenu];

  if ((v7 & 1) == 0)
  {
    AXPerformBlockOnMainThreadAfterDelay();
  }

  [*(a1 + 32) _setBackgroundWithType:1];
  [*(a1 + 32) _layoutButtonsWithViewForCenteringAtStart:0 includingBackButton:1];
  [*(a1 + 32) frame];
  [*(*(a1 + 32) + 200) bounds];
  v9 = v8;
  v11 = v10;
  v12 = *(a1 + 56) - v8 * 0.5;
  v13 = *(a1 + 64) - v10 * 0.5;
  v14 = roundf(v13);
  v15 = [*(a1 + 32) displayManager];
  if ([v15 orientation] != 1)
  {

    goto LABEL_12;
  }

  HasJindo = AXDeviceHasJindo();

  if (!HasJindo)
  {
LABEL_12:
    v17 = [*(a1 + 32) displayManager];
    [v17 safeAreaInsets];
    v22 = v23;
    goto LABEL_13;
  }

  v17 = [*(a1 + 32) displayManager];
  [v17 foreheadRect];
  v19 = v18;
  v20 = [*(a1 + 32) displayManager];
  [v20 foreheadRect];
  v22 = v19 + v21 + 9.0;

LABEL_13:
  v24 = roundf(v12);
  v25 = v14;

  v26 = ASTLogCommon();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    v39 = v22;
    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "Safe Area: %f", buf, 0xCu);
  }

  if (v22 > v25)
  {
    v27 = ASTLogCommon();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      v39 = v22;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_INFO, "Menu is in safe area, moving down: %f", buf, 0xCu);
    }

    v25 = v22;
  }

  [*(a1 + 32) setFrame:{v24, v25, v9, v11}];
  [*(a1 + 32) _setMaskViewMenuRadius];
  [*(a1 + 32) layoutIfNeeded];
  [*(*(a1 + 32) + 160) setAlpha:0.0];
  [*(*(a1 + 32) + 160) frame];
  v29 = v28;
  v31 = v30;
  if ([*(*(a1 + 32) + 48) count] == 4)
  {
    v32 = 2;
  }

  else
  {
    v32 = [*(*(a1 + 32) + 48) count] != 6 && objc_msgSend(*(*(a1 + 32) + 48), "count") == 8;
  }

  v33 = [*(*(a1 + 32) + 48) objectAtIndex:v32];
  [v33 frame];
  v35 = v34;
  v37 = v36;

  [*(*(a1 + 32) + 160) setFrame:{v35, v37, v29, v31}];
  (*(*(a1 + 40) + 16))();
}

void sub_1000611DC(uint64_t a1)
{
  *(*(a1 + 32) + 168) = 0;
  [*(a1 + 32) _resetHoverCircleLocation];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100061310;
  v7[3] = &unk_1001D3FB8;
  v2 = *(a1 + 40);
  v7[4] = *(a1 + 32);
  v8 = v2;
  [UIView animateWithDuration:v7 animations:0.02];
  UIAccessibilityPostNotification(UIAccessibilityScreenChangedNotification, 0);
  [*(a1 + 32) _updateKeyboardFocusIfNeeded];
  v3 = ASTLogRocker();
  v4 = v3;
  v5 = *(a1 + 48);
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v3))
  {
    *v6 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v4, OS_SIGNPOST_INTERVAL_END, v5, "Transition Nubbit to Menu", "", v6, 2u);
  }
}

uint64_t sub_100061310(uint64_t a1)
{
  [*(*(a1 + 32) + 88) setAlpha:1.0];
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

void sub_100062274(uint64_t a1)
{
  v2 = +[AXSpringBoardServer server];
  v9 = [v2 visibleTripleClickItems];

  v3 = AXUIAssistiveTouchStringForName();
  if ([v9 count] == 1)
  {
    v4 = [v9 firstObject];
    v5 = +[AXTripleClickHelpers localizedTitleForAccessibilityShortcutOption:](AXTripleClickHelpers, "localizedTitleForAccessibilityShortcutOption:", [v4 intValue]);
    v6 = v5;
    if (v5)
    {
      v7 = v5;
    }

    else
    {
      v7 = v3;
    }

    v8 = v7;

    v3 = v8;
  }

  [*(*(a1 + 32) + 232) setTitle:v3];
}

void sub_100062540(id a1)
{
  v1 = +[UIScreen mainScreen];
  [v1 scale];
  v3 = v2;
  v8.width = 60.0;
  v8.height = 60.0;
  UIGraphicsBeginImageContextWithOptions(v8, 0, v3);

  v4 = +[UIColor clearColor];
  [v4 set];

  v9.origin.x = 0.0;
  v9.origin.y = 0.0;
  v9.size.width = 60.0;
  v9.size.height = 60.0;
  UIRectFill(v9);
  v5 = UIGraphicsGetImageFromCurrentImageContext();
  v6 = qword_100218AA0;
  qword_100218AA0 = v5;

  UIGraphicsEndImageContext();
}

void sub_100062DC0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 240));
  _Unwind_Resume(a1);
}

void sub_100062DEC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _traitCollectionDidChange:v4];
}

void sub_100063B7C(uint64_t a1, void *a2)
{
  v4 = a2;
  objc_storeStrong((*(a1 + 32) + 136), a2);
  if (!v4)
  {
    v5 = ASTLogCommon();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_100129884(a1 + 32, v5);
    }
  }

  (*(*(a1 + 40) + 16))();
}

void sub_100063C14(uint64_t a1, void *a2)
{
  v4 = a2;
  objc_storeStrong((*(a1 + 32) + 144), a2);
  if (!v4)
  {
    v5 = ASTLogCommon();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_100129884(a1 + 32, v5);
    }
  }

  (*(*(a1 + 40) + 16))();
}

void sub_100063E78(uint64_t a1)
{
  v2 = [*(a1 + 32) _deviceSpecificImageForName:*(a1 + 40) screenHeight:*(a1 + 64)];
  v3 = [v2 imageWithTintColor:*(a1 + 48) renderingMode:1];

  v4 = *(a1 + 56);
  if (v4)
  {
    v6 = v4;
    v5 = v3;
    AXPerformBlockAsynchronouslyOnMainThread();
  }
}

id sub_100064DA0(uint64_t a1)
{
  v1 = 1.0;
  if ((*(a1 + 48) & 1) == 0)
  {
    v1 = *(a1 + 40);
  }

  return [*(a1 + 32) setAlpha:v1];
}

void sub_100066E94(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_100066EC4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateAXMouse];
}

void sub_100066F04(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateSensitivityMultiplier];
}

void sub_100067608(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10006762C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained canUseMainKeyboardKeysPreferenceDidChange];
}

void sub_100068074(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100068098(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained repeatMouseKeyMovementAction:*(a1 + 40)];
}

void sub_100068208(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location, char a17)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a17, 8);
  _Unwind_Resume(a1);
}

void sub_100068238(uint64_t a1)
{
  v2 = *(*(*(a1 + 32) + 8) + 24);
  v3 = +[AXSettings sharedInstance];
  v4 = [v3 assistiveTouchMouseKeysMaxSpeed];

  if (v2 < v4)
  {
    *(*(*(a1 + 32) + 8) + 24) = *(*(*(a1 + 32) + 8) + 24) + 1.0;
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained movePointerWithMouseKeyAction:*(a1 + 48) increment:*(*(*(a1 + 32) + 8) + 24)];
}

void sub_100068B1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100068B34(uint64_t a1)
{
  [*(a1 + 32) handleReportCallback:*(a1 + 56) report:*(*(*(a1 + 40) + 8) + 24) reportLength:*(a1 + 48)];
  free(*(*(*(a1 + 40) + 8) + 24));
  *(*(*(a1 + 40) + 8) + 24) = 0;
}

void sub_1000692C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_1000692DC()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = qword_100218AC8;
  v7 = qword_100218AC8;
  if (!qword_100218AC8)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_10006A5E4;
    v3[3] = &unk_1001D4B88;
    v3[4] = &v4;
    sub_10006A5E4(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1000693A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100069B34(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v6 + 32));
  objc_destroyWeak((v5 + 32));
  objc_destroyWeak((v4 + 32));
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v7 - 120));
  objc_destroyWeak((v7 - 112));
  _Unwind_Resume(a1);
}

void sub_100069BC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _sendEventForButtonNumber:1 value:a3];
}

void sub_100069C14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _sendEventForButtonNumber:2 value:a3];
}

void sub_100069C68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _sendEventForButtonNumber:3 value:a3];
}

void sub_100069CBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _sendEventForButtonNumber:4 value:a3];
}

void sub_100069D10(uint64_t a1, float a2, float a3)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  *&v7 = a2;
  [WeakRetained setCurrentLeftXDisplacement:v7];

  v9 = objc_loadWeakRetained((a1 + 32));
  *&v8 = a3;
  [v9 setCurrentLeftYDisplacement:v8];
}

void sub_100069D88(uint64_t a1, float a2, float a3)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  *&v7 = a2;
  [WeakRetained setCurrentRightXDisplacement:v7];

  v9 = objc_loadWeakRetained((a1 + 32));
  *&v8 = a3;
  [v9 setCurrentRightYDisplacement:v8];
}

void sub_100069E00(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained _toggleIgnoreInputs];
  }
}

void *sub_10006A3D8(uint64_t a1)
{
  v2 = sub_10006A428();
  result = dlsym(v2, "GCControllerDidConnectNotification");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_100218AB0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_10006A428()
{
  v2[0] = 0;
  if (!qword_100218AB8)
  {
    v2[1] = _NSConcreteStackBlock;
    v2[2] = 3221225472;
    v2[3] = sub_10006A520;
    v2[4] = &unk_1001D4BC0;
    v2[5] = v2;
    v3 = off_1001D57B8;
    v4 = 0;
    qword_100218AB8 = _sl_dlopen();
  }

  v0 = qword_100218AB8;
  if (!qword_100218AB8)
  {
    sub_100129A94(v2);
  }

  if (v2[0])
  {
    free(v2[0]);
  }

  return v0;
}

uint64_t sub_10006A520()
{
  result = _sl_dlopen();
  qword_100218AB8 = result;
  return result;
}

void *sub_10006A594(uint64_t a1)
{
  v2 = sub_10006A428();
  result = dlsym(v2, "GCControllerDidBecomeCurrentNotification");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_100218AC0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class sub_10006A5E4(uint64_t a1)
{
  sub_10006A428();
  result = objc_getClass("GCController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_100129B14();
  }

  qword_100218AC8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_10006AC1C(uint64_t a1)
{
  v2 = [*(a1 + 32) orbPreviewWindow];
  [*(a1 + 32) setAxOrbPreviewWindow:v2];

  v4 = [*(a1 + 32) axOrbPreviewWindow];
  v3 = [v4 uiElement];
  [v3 updateCacheWithAttributes:&off_1001E4F08];
}

BOOL sub_10006B024(id a1, AXElement *a2)
{
  v2 = a2;
  [(AXElement *)v2 updateCache:3010];
  v3 = [(AXElement *)v2 uiElement];

  LOBYTE(v2) = [v3 BOOLWithAXAttribute:3010];
  return v2;
}

void sub_10006B448(uint64_t a1)
{
  v2 = [*(a1 + 32) elementFetcher];
  [v2 setEnabled:{objc_msgSend(*(a1 + 32), "_elementFetchingRequired")}];
}

void sub_10006B4A8(uint64_t a1, void *a2)
{
  v2 = a2;
  v4 = [v2 elementFetcher];
  v3 = [v2 _elementFetchingRequired];

  [v4 setEnabled:v3];
}

void sub_10006B7B4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

uint64_t sub_10006B7D0(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (![v3 isValid])
  {
    goto LABEL_14;
  }

  if (WeakRetained && [WeakRetained _isSpeechEnabled] && (objc_msgSend(v3, "accessibilityRespondsToUserInteraction") & 1) == 0)
  {
    v39 = v3;
    _AXAssert();
  }

  [v3 scatFrame];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  if (!_AXSMossdeepEnabled())
  {
    v14 = [HNDHandManager screenFrame:]_0();
    v16 = v15;
    v18 = v17;
    v20 = v19;
    if (WeakRetained)
    {
      v21 = WeakRetained[17];
      v22 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v3 windowDisplayId]);
      v23 = [v21 objectForKey:v22];

      [v23 convertFrameToInterfaceOrientation:{v6, v8, v10, v12}];
      v6 = v24;
      v8 = v25;
      v10 = v26;
      v12 = v27;
      if (v23)
      {
        [v23 screenBounds];
        v14 = v28;
        v16 = v29;
        v18 = v30;
        v20 = v31;
      }
    }

    v43.origin.x = v14;
    v43.origin.y = v16;
    v43.size.width = v18;
    v43.size.height = v20;
    v48.origin.x = v6;
    v48.origin.y = v8;
    v48.size.width = v10;
    v48.size.height = v12;
    v44 = CGRectIntersection(v43, v48);
    x = v44.origin.x;
    y = v44.origin.y;
    width = v44.size.width;
    height = v44.size.height;
    v40 = CGRectGetWidth(v44);
    v45.origin.x = x;
    v45.origin.y = y;
    v45.size.width = width;
    v45.size.height = height;
    v36 = v40 * CGRectGetHeight(v45);
    v46.origin.x = v6;
    v46.origin.y = v8;
    v46.size.width = v10;
    v46.size.height = v12;
    v37 = CGRectGetWidth(v46);
    v47.origin.x = v6;
    v47.origin.y = v8;
    v47.size.width = v10;
    v47.size.height = v12;
    if (v36 / (v37 * CGRectGetHeight(v47)) >= 0.8)
    {
      v13 = [*(a1 + 32) _isElementInIgnoredTouchRegions:v3] ^ 1;
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  v41.origin.x = v6;
  v41.origin.y = v8;
  v41.size.width = v10;
  v41.size.height = v12;
  if (CGRectGetWidth(v41) <= 0.0)
  {
LABEL_14:
    v13 = 0;
    goto LABEL_15;
  }

  v42.origin.x = v6;
  v42.origin.y = v8;
  v42.size.width = v10;
  v42.size.height = v12;
  v13 = CGRectGetHeight(v42) > 0.0;
LABEL_15:

  return v13;
}

void sub_10006BAAC(id a1)
{
  v1 = objc_opt_new();
  v2 = qword_100218AD0;
  qword_100218AD0 = v1;

  _objc_release_x1(v1, v2);
}

void sub_10006C9DC(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  [a1 _handleSystemServerDied];

  objc_autoreleasePoolPop(v2);
}

void sub_10006CA20(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = objc_autoreleasePoolPush();
  [v1 _handleSystemServerDied];

  objc_autoreleasePoolPop(v2);
}

void sub_10006CA64(int a1, int a2, int a3, CFTypeRef cf)
{
  if (cf)
  {
    CFRetain(cf);
  }

  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10007076C;
  v6[3] = &unk_1001D3AD0;
  v7 = a3;
  v6[4] = cf;
  dispatch_async(&_dispatch_main_q, v6);
}

void sub_10006CCC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_10006CCF4(uint64_t a1)
{
  v2 = [*(a1 + 32) ignoredTouchRegions];
  *(*(*(a1 + 40) + 8) + 24) = [v2 count] != 0;
}

void sub_10006CD58(uint64_t a1)
{
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = [*(a1 + 32) ignoredTouchRegions];
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        if (CGPathContainsPoint(*(*(&v7 + 1) + 8 * i), 0, *(a1 + 48), 0))
        {
          *(*(*(a1 + 40) + 8) + 24) = 1;
          goto LABEL_11;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:
}

void sub_10006CF24(uint64_t a1)
{
  v2 = [*(a1 + 32) observer];
  v3 = +[AXElement systemWideElement];
  v4 = [v3 uiElement];
  v5 = [v4 axElement];

  v6 = +[AXElement systemWideElement];
  [v6 setPassivelyListeningForEvents:1];

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = *(a1 + 40);
  v8 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v20;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v20 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v19 + 1) + 8 * i);
        v13 = [v12 intValue];
        v14 = [*(a1 + 32) currentlyObservingNotifications];
        LOBYTE(v12) = [v14 containsObject:v12];

        if ((v12 & 1) == 0)
        {
          v18 = AXObserverAddNotification(v2, v5, v13, *(a1 + 32));
          LOBYTE(v17) = 1;
          _AXLogWithFacility();
          v15 = [*(a1 + 32) currentlyObservingNotifications];
          v16 = [NSNumber numberWithInt:v13];
          [v15 addObject:v16];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v9);
  }
}

void sub_10006D234(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10006D24C(uint64_t a1)
{
  v2 = +[AXElement systemWideElement];
  v3 = [v2 uiElement];
  v4 = [v3 axElement];

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = *(a1 + 32);
  v6 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v20;
    do
    {
      v9 = 0;
      do
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v19 + 1) + 8 * v9);
        v11 = [*(a1 + 40) currentlyObservingNotifications];
        v12 = [v11 containsObject:v10];

        if (v12)
        {
          v17 = [v10 intValue];
          v18 = AXObserverRemoveNotification(*(*(*(a1 + 48) + 8) + 24), v4, v17);
          v16 = @"Unregistered for notification: %d, error: %ld";
          LOBYTE(v15) = 1;
          _AXLogWithFacility();
        }

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v7);
  }

  v13 = [*(a1 + 40) currentlyObservingNotifications];
  [v13 removeObjectsInArray:*(a1 + 32)];

  v14 = *(*(*(a1 + 48) + 8) + 24);
  if (v14)
  {
    CFRelease(v14);
    *(*(*(a1 + 48) + 8) + 24) = 0;
  }
}

void sub_10006D690(uint64_t a1, uint64_t a2)
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_10006D708;
  v2[3] = &unk_1001D4430;
  v2[4] = *(a1 + 32);
  v2[5] = a2;
  dispatch_async(&_dispatch_main_q, v2);
}

id *sub_10006D708(id *result)
{
  if (result[5] == 3)
  {
    return [result[4] _handleAppTransition];
  }

  return result;
}

void sub_10006D720(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10006D7BC;
  v5[3] = &unk_1001D36E8;
  v5[4] = *(a1 + 32);
  v6 = v3;
  v4 = v3;
  dispatch_async(&_dispatch_main_q, v5);
}

void sub_10006EEE4(uint64_t a1, void *a2)
{
  v3 = a2;
  if ((*(*(a1 + 40) + 16))())
  {
    [*(a1 + 32) addObject:v3];
  }
}

void sub_10006F24C(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [v5 scrollAncestorForScrollAction:*(a1 + 48)];
  if (v3)
  {
    v4 = v3;
    if (([*(a1 + 32) containsObject:v3] & 1) == 0)
    {
      [*(a1 + 32) addObject:v4];
      [*(a1 + 40) addObject:v5];
    }
  }
}

BOOL sub_10006F6AC(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 scatIsAXElement])
  {
    [v3 frame];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;
    [*(a1 + 32) frame];
    v19.origin.x = v12;
    v19.origin.y = v13;
    v19.size.width = v14;
    v19.size.height = v15;
    v18.origin.x = v5;
    v18.origin.y = v7;
    v18.size.width = v9;
    v18.size.height = v11;
    v16 = CGRectEqualToRect(v18, v19);
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

void sub_10007076C(uint64_t a1)
{
  v2 = +[HNDAccessibilityManager sharedManager];
  v3 = v2;
  v4 = *(a1 + 40);
  if (v4 <= 1017)
  {
    if (v4 > 1005)
    {
      if (v4 > 1008)
      {
        if (v4 == 1009)
        {
          [v2 _handleElementScrolledByPage];
        }

        else if (v4 == 1011)
        {
          [v2 _handleOrientationChanged];
        }
      }

      else if (v4 == 1006)
      {
        [v2 _handleAlertAppeared];
      }

      else if (v4 == 1008)
      {
        [v2 _handleAnnouncementNotification:*(a1 + 32)];
      }
    }

    else if (v4 > 1003)
    {
      if (v4 == 1004)
      {
        [v2 _handleScreenLocked];
      }

      else
      {
        [v2 _handleValueChanged];
      }
    }

    else if (v4 == 1000)
    {
      [v2 _handleScreenChanged:*(a1 + 32)];
    }

    else if (v4 == 1001)
    {
      [v2 _handleLayoutChanged:*(a1 + 32)];
    }

    goto LABEL_43;
  }

  if (v4 <= 1033)
  {
    if (v4 <= 1028)
    {
      if (v4 == 1018)
      {
        [v2 _handleFirstResponderChanged];
      }

      else if (v4 == 1021)
      {
        [v2 _handlePidStatusChanged];
      }

      goto LABEL_43;
    }

    if (v4 == 1029)
    {
      [v2 _handleKeyboardPopupAppeared];
      goto LABEL_43;
    }

    if (v4 != 1033)
    {
      goto LABEL_43;
    }

    v5 = *(a1 + 32);
    v6 = [v5 objectForKeyedSubscript:kAXNotificationDataKey];
    v7 = [v6 isEqualToString:UIAccessibilityNotificationSwitchControlIdentifier];

    if (v7)
    {
      v8 = [v5 objectForKeyedSubscript:kAXPidKey];
      [v3 _handlePauseForPid:{objc_msgSend(v8, "intValue")}];
LABEL_37:

      goto LABEL_38;
    }

    goto LABEL_38;
  }

  if (v4 > 1044)
  {
    if (v4 == 1045)
    {
      [v2 updateCachedOrbPreviewWindow:*(a1 + 32)];
    }

    else if (v4 == 1078)
    {
      [v2 _handleKeyboardFocusChanged];
    }
  }

  else
  {
    if (v4 == 1034)
    {
      v5 = *(a1 + 32);
      v9 = [v5 objectForKeyedSubscript:kAXNotificationDataKey];
      v10 = [v9 isEqualToString:UIAccessibilityNotificationSwitchControlIdentifier];

      if (v10)
      {
        v8 = [v5 objectForKeyedSubscript:kAXPidKey];
        [v3 _handleResumeForPid:{objc_msgSend(v8, "intValue")}];
        goto LABEL_37;
      }

LABEL_38:

      goto LABEL_43;
    }

    if (v4 == 1044)
    {
      [v2 _handleElementVisualsUpdated];
    }
  }

LABEL_43:

  v11 = *(a1 + 32);
  if (v11)
  {

    CFRelease(v11);
  }
}