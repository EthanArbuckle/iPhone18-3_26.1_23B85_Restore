id sub_1000C0A40(id result)
{
  if ((*(result + 64) & 1) == 0)
  {
    v1 = result;
    result = [*(result + 4) shouldAnnounceTableInfo];
    if (result)
    {
      v2 = v1[4];
      v3 = v1[5];
      v5 = v1[6];
      v4 = v1[7];

      return [v2 announceTableInfo:v3 options:v4 language:v5];
    }
  }

  return result;
}

void sub_1000C0AAC(void *a1, void *a2)
{
  v7 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = a1[5];
LABEL_10:
    ++*(*(v3 + 8) + 24);
    goto LABEL_11;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = a1[6];
    goto LABEL_10;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v3 = a1[7];
    goto LABEL_10;
  }

  v4 = +[VOTWorkspace sharedWorkspace];
  v5 = [v4 visionEngine];

  v6 = [v5 resultsForElement:a1[4]];
  if ([v6 count])
  {
    ++*(*(a1[7] + 8) + 24);
  }

LABEL_11:
}

id sub_1000C0BD0(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  result = [a2 importance];
  if (result != 1)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a4 = 1;
  }

  return result;
}

void sub_1000C0C18(uint64_t a1)
{
  [*(a1 + 32) doesHaveTraits:kAXWebContentTrait];
  v2 = [VOTSharedWorkspace systemSpokenLanguage];
  v3 = AXLanguageCanonicalFormToGeneralLanguage();

  if ([*(a1 + 32) doesHaveTraits:kAXStatusBarElementTrait])
  {
    v4 = [*(a1 + 40) outputActions];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1000C0DB8;
    v9[3] = &unk_1001CA7A8;
    v10 = v3;
    [v4 enumerateObjectsUsingBlock:v9];
  }

  if ([*(a1 + 32) isReadingContent])
  {
    v5 = [*(a1 + 40) outputActions];
    [v5 enumerateObjectsUsingBlock:&stru_1001CA7C8];
  }

  v6 = [*(a1 + 32) textualContext];
  if (v6)
  {
    v7 = [*(a1 + 40) outputActions];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1000C0E4C;
    v8[3] = &unk_1001C9D00;
    v8[4] = v6;
    [v7 enumerateObjectsUsingBlock:v8];
  }
}

void sub_1000C0DB8(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [v4 objectForVariant:15];
  LOBYTE(a1) = [v3 hasPrefix:*(a1 + 32)];

  if ((a1 & 1) == 0)
  {
    [v4 setObject:&stru_1001CBF90 forVariant:16];
  }
}

void sub_1000C0E5C(uint64_t a1, void *a2)
{
  v5 = a2;
  if ([v5 length])
  {
    v3 = [*(a1 + 32) addString:v5 withLanguage:*(a1 + 40)];
    v4 = [*(a1 + 32) lastAction];
    [v4 setIsVoiceOverGeneratedContent:1];
  }

  (*(*(a1 + 48) + 16))();
}

uint64_t sub_1000C0EE8(uint64_t a1)
{
  v2 = [VOTSharedWorkspace elementManager];
  v3 = [v2 elementRotor];
  v4 = [v3 currentRotorType];

  if (v4 == 94)
  {
    v5 = *(a1 + 32);
    v6 = sub_1000516CC(off_1001FDDE0, @"scribble.rotor.hint", 0, *(a1 + 40));
    v7 = [v5 addString:v6 withLanguage:*(a1 + 40)];
  }

  v8 = *(*(a1 + 48) + 16);

  return v8();
}

BOOL sub_1000C11D4(id a1, VOTCustomAction *a2, unint64_t a3, BOOL *a4)
{
  v4 = a2;
  v5 = [(VOTCustomAction *)v4 isMemberOfClass:objc_opt_class()];

  return v5;
}

BOOL sub_1000C1220(id a1, VOTCustomAction *a2, unint64_t a3, BOOL *a4)
{
  v4 = a2;
  v5 = [(VOTCustomAction *)v4 isMemberOfClass:objc_opt_class()];

  return v5;
}

void sub_1000C26E0(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v8 = a2;
  if (CGRectIsNull(*&a2))
  {
    [*(a1 + 32) frame];
    v8 = v10;
    a3 = v11;
    a4 = v12;
    a5 = v13;
  }

  v14 = *(a1 + 40);
  v15 = [*(a1 + 32) regionDescriptionWithFrame:{v8, a3, a4, a5}];
  (*(v14 + 16))(v14, v15);
}

void sub_1000C4128(void *a1, double a2, double a3)
{
  v5 = [a1 handInfo];
  v7 = [v5 paths];

  if ([v7 count] == 1)
  {
    v6 = [v7 objectAtIndex:0];
    [v6 setPathLocation:{a2, a3}];
  }
}

void sub_1000C4254(uint64_t a1)
{
  v2 = [objc_allocWithZone(VOTHandwritingManager) init];
  v3 = qword_1001FED88;
  qword_1001FED88 = v2;

  [qword_1001FED88 setDelegate:*(a1 + 32)];
  v4 = [[AXDispatchTimer alloc] initWithTargetSerialQueue:&_dispatch_main_q];
  [v4 setAutomaticallyCancelPendingBlockUponSchedulingNewBlock:1];
  [*(a1 + 32) _setHandwritingCaptureTimer:v4];
}

void sub_1000C4D10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, id location)
{
  objc_destroyWeak((v34 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000C4D44(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v4 = [a2 userInfo];
  v3 = [v4 objectForKey:@"element"];
  [v2 _beginNativeSliding:v3];
}

void sub_1000C4DB4(uint64_t a1, void *a2)
{
  v3 = a2;
  *(*(a1 + 32) + 544) = CFAbsoluteTimeGetCurrent();
  *(*(a1 + 32) + 678) = 0;
  v4 = CGPointZero;
  *(*(a1 + 32) + 376) = CGPointZero;
  *(*(a1 + 32) + 360) = v4;
  v5 = [v3 userInfo];

  v6 = [v5 objectForKey:@"disabledOnTap"];
  v7 = [v6 BOOLValue];

  if ((v7 & 1) == 0)
  {
    v8 = +[VOTElement systemWideElement];
    [v8 postFingerLiftAtPoint:0 withContextId:{CGPointZero.x, CGPointZero.y}];
  }
}

void sub_1000C4EC4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateDelayUntilSpeakUnderTouch];
}

void sub_1000C4F04(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateTapSpeedFromPreferences];
}

void sub_1000C4F44(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateVoiceOverHandGesturesActionCustomizations];
}

double sub_1000C50AC(unint64_t a1)
{
  v2 = *&qword_1001FEDF0;
  if (*&qword_1001FEDF0 == 0.0)
  {
    info = 0;
    if (mach_timebase_info(&info))
    {
      v2 = *&qword_1001FEDF0;
    }

    else
    {
      LODWORD(v3) = info.numer;
      LODWORD(v4) = info.denom;
      v2 = v3 / v4 * 0.000000001;
      qword_1001FEDF0 = *&v2;
    }
  }

  return v2 * a1;
}

void sub_1000C64A0(id a1, AXEventRepresentation *a2)
{
  v4 = a2;
  if ([(AXEventRepresentation *)v4 type]== 3001)
  {
    BKSHIDServicesCancelTouchesOnMainDisplay();
    v2 = [AXEventRepresentation cancelEventForPathIndexMask:[(AXEventRepresentation *)v4 pathIndexMask]];
    v3 = +[AXEventTapManager sharedManager];
    [v3 sendHIDSystemEvent:v2 senderID:0x8000000817319373];
  }
}

id sub_1000C6548(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  if (*(a1 + 40) == 1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v6 = [WeakRetained _audioAccessoryEventFilter:v3];
  }

  else
  {
    v7 = *(a1 + 41);
    v8 = objc_loadWeakRetained((a1 + 32));
    WeakRetained = v8;
    if (v7 == 1)
    {
      v6 = [v8 _atvEventFilter:v3];
    }

    else
    {
      v6 = [v8 _iosEventFilter:v3];
    }
  }

  v9 = v6;

  objc_autoreleasePoolPop(v4);
  return v9;
}

void sub_1000C66F4(uint64_t a1, void *a2)
{
  v15 = a2;
  v3 = +[AXSettings sharedInstance];
  v4 = [v3 zoomCurrentLensMode];
  v5 = [v4 isEqualToString:AXZoomLensModeFullscreen];

  if (v5)
  {
    v6 = [v15 objectForKey:ZWAttributeKeyZoomLevel];
    [v6 floatValue];
    v8 = v7;

    v9 = [v15 objectForKey:ZWAttributeKeyZoomFrame];
    v17 = CGRectFromString(v9);
    x = v17.origin.x;
    y = v17.origin.y;
    width = v17.size.width;
    height = v17.size.height;

    *&xmmword_1001FEDC0 = x;
    *(&xmmword_1001FEDC0 + 1) = y;
    qword_1001FEDD0 = *&width;
    unk_1001FEDD8 = *&height;
  }

  else
  {
    size = CGRectNull.size;
    xmmword_1001FEDC0 = CGRectNull.origin;
    *&qword_1001FEDD0 = size;
    v8 = 0;
  }

  dword_1001FED98 = v8;
  [*(a1 + 32) _commitDeferredZoomInfoIfAppropriate];
}

void sub_1000C7208()
{
  v0 = objc_autoreleasePoolPush();
  [VOTSharedWorkspace handleSystemWideServerDied];

  objc_autoreleasePoolPop(v0);
}

void sub_1000C7250(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = a5;
  v9 = objc_autoreleasePoolPush();
  if (a3 <= 1030)
  {
    if (a3 > 1018)
    {
      if (a3 == 1019)
      {
        [VOTSharedWorkspace resetSystemBatteryLowState];
        goto LABEL_24;
      }

      if (a3 == 1028)
      {
        [v8 _handleEventWithData:a4];
        goto LABEL_24;
      }
    }

    else
    {
      if (a3 == 1011)
      {
        [VOTSharedWorkspace handleOrientationChanged];
        [v8 updateOrientation];
        goto LABEL_24;
      }

      if (a3 == 1015)
      {
        [VOTSharedWorkspace handleReturnToSpringBoard];
        goto LABEL_24;
      }
    }

    goto LABEL_22;
  }

  if (a3 <= 1050)
  {
    if (a3 == 1031)
    {
      [v8 _handleKeyboardVisibilityChanged:a4];
      goto LABEL_24;
    }

    if (a3 == 1045)
    {
      [v8 _handleElementPreviewNotification:a4];
      v10 = [v8 elementManager];
      [v10 handleNotification:1045 withData:a4 forElement:0];
LABEL_23:

      goto LABEL_24;
    }

LABEL_22:
    v10 = [v8 elementManager];
    [v10 handleNotification:a3 withData:a4 forElement:a2];
    goto LABEL_23;
  }

  if (a3 == 1051)
  {
    [v8 _simulatePreviewActionGesture];
    goto LABEL_24;
  }

  if (a3 == 2027)
  {
    [VOTSharedWorkspace handleRingerSwitchSwitched:0];
    goto LABEL_24;
  }

  if (a3 != 3030)
  {
    goto LABEL_22;
  }

  [v8 _handleSOSMedicalIDShown];
LABEL_24:
  objc_autoreleasePoolPop(v9);
}

id sub_1000CB21C(uint64_t a1)
{
  v2 = (a1 + 32);
  *(*(a1 + 32) + 56) = CGPointZero;
  (*v2)[3].x = CFAbsoluteTimeGetCurrent();
  v3 = *v2;
  v4 = 1.0;
  if ((v2[3] & 1) == 0)
  {
    v4 = 0.0;
    if (*(a1 + 57) == 1)
    {
      v4 = *(a1 + 48);
    }
  }

  *&v3[2].x = v2[1];
  v3[2].y = v4;
  v5 = VOTLogEvent();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_10012E3E4(v2);
  }

  return [(CGPoint *)*v2 _transitionToGestureState:1];
}

void sub_1000CCE2C(id a1)
{
  v4[0] = kVOTEventCommandSearchRotorLeft;
  v4[1] = kVOTEventCommandSearchRotorRight;
  v4[2] = kVOTEventCommandEscape;
  v4[3] = kVOTEventCommandCut;
  v4[4] = kVOTEventCommandCopy;
  v4[5] = kVOTEventCommandPaste;
  v4[6] = kVOTEventCommandUndo;
  v4[7] = kVOTEventCommandRedo;
  v4[8] = kVOTEventCommandBSIExit;
  v4[9] = kVOTEventCommandBSIPreviousRotor;
  v4[10] = kVOTEventCommandBSINextRotor;
  v4[11] = kVOTEventCommandBSIEscape;
  v4[12] = kVOTEventCommandPreviousTextSegment;
  v4[13] = kVOTEventCommandNextTextSegment;
  v4[14] = kVOTEventCommandPreviousTextSegmentType;
  v4[15] = kVOTEventCommandNextTextSegmentType;
  v4[16] = kVOTEventCommandSelectLeft;
  v4[17] = kVOTEventCommandSelectRight;
  v1 = [NSArray arrayWithObjects:v4 count:18];
  v2 = [NSSet setWithArray:v1];
  v3 = qword_1001FEDE0;
  qword_1001FEDE0 = v2;
}

uint64_t sub_1000CD1B4(uint64_t a1)
{
  result = [*(a1 + 32) isEqual:*(*(a1 + 40) + 856)];
  if ((result & 1) == 0)
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
    v3 = [*(a1 + 32) copyWithCache];
    v4 = *(a1 + 40);
    v5 = *(v4 + 856);
    *(v4 + 856) = v3;

    return _objc_release_x1(v3, v5);
  }

  return result;
}

void sub_1000CD320(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000CD338(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000CE1C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000CE1EC(uint64_t a1)
{
  [*(*(a1 + 32) + 560) removeAllObjects];
  v2 = *(*(a1 + 32) + 560);
  v3 = [NSNumber numberWithUnsignedInt:*(a1 + 40)];
  [v2 addObject:v3];

  v4 = *(*(a1 + 32) + 560);
  v5 = [NSNumber numberWithUnsignedInt:*(a1 + 44)];
  [v4 addObject:v5];
}

void sub_1000CE294(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained[22];
  v3 = [NSValue valueWithPoint:*(a1 + 40), *(a1 + 48)];
  v4 = [NSNumber numberWithDouble:*(a1 + 56)];
  v5 = [NSNumber numberWithDouble:*(a1 + 64)];
  v6 = [NSNumber numberWithDouble:*(a1 + 72)];
  [WeakRetained performSelector:"_startTouchDownForTapAndHoldActionWithCenter:force:altitude:azimuth:" withThreadKey:v2 count:4 objects:{v3, v4, v5, v6}];

  v7 = +[VOTOutputManager outputManager];
  [v7 removeVOSEventFinishedHandler:@"PassThroughHandler"];
}

void sub_1000CF18C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000CF1A4(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 560) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return _objc_release_x1(v2, v4);
}

void sub_1000CFC40(uint64_t a1)
{
  v1 = [*(a1 + 32) elementManager];
  [v1 updateCursorFrameAfterLift];
}

void sub_1000D00D0(uint64_t a1)
{
  v1 = [*(a1 + 32) directInteractionKeyboardManager];
  [v1 updateTypingMode];
}

void sub_1000D1388(uint64_t a1)
{
  [*(*(a1 + 32) + 560) removeAllObjects];
  v2 = *(*(a1 + 32) + 560);
  v3 = [NSNumber numberWithUnsignedInt:*(a1 + 40)];
  [v2 addObject:v3];

  v4 = *(*(a1 + 32) + 560);
  v5 = [NSNumber numberWithUnsignedInt:*(a1 + 44)];
  [v4 addObject:v5];
}

void sub_1000D3384(id a1)
{
  v1 = [objc_allocWithZone(VOTBrailleManager) init];
  v2 = qword_1001FEDF8;
  qword_1001FEDF8 = v1;

  _objc_release_x1(v1, v2);
}

void sub_1000D3C90(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 104));
  _Unwind_Resume(a1);
}

void sub_1000D3D10(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained updateBrailleInputSettings];
}

void sub_1000D3D50(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained updateBrailleInputSettings];
}

void sub_1000D3D90(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained updateBrailleOutputSettings];
}

void sub_1000D3DD0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateOnscreenKeyboardSettings];
}

void sub_1000D3E10(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateStatusCellPrefs];
}

void sub_1000D3E50(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateStatusCellPrefs];
}

void sub_1000D3E90(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateWordWrapPrefs];
}

void sub_1000D3ED0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateBrailleKeyDebouncePrefs];
}

void sub_1000D3F10(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = +[AXSettings sharedInstance];
  [WeakRetained setTestingHasActiveDisplay:{objc_msgSend(v1, "voiceOverTouchUpdateBrailleWithoutConnectedDisplay")}];
}

void sub_1000D3F7C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateBrailleAutoAdvancePrefs];
}

void sub_1000D3FBC(uint64_t a1, uint64_t a2)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000E1050;
  block[3] = &unk_1001C78B0;
  block[4] = a2;
  dispatch_async(&_dispatch_main_q, block);
}

id sub_1000D425C(uint64_t a1, void *a2)
{
  v3 = VOTLogBraille();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Received SCRODisplayConfigurationChangedNotification.", v5, 2u);
  }

  return [a2 handleBrailleConfigurationChanged:&__kCFBooleanTrue];
}

BOOL sub_1000D4F00(id a1, NSDictionary *a2, unint64_t a3, BOOL *a4)
{
  v4 = VOSBrailleTableForRotorItem();
  v5 = [v4 replacements];
  v6 = [v5 count] == 0;

  return v6;
}

BOOL sub_1000D6AD8(id a1, NSDictionary *a2, unint64_t a3, BOOL *a4)
{
  v4 = VOSBrailleTableForRotorItem();
  v5 = [v4 replacements];
  v6 = [v5 count] == 0;

  return v6;
}

uint64_t sub_1000D7FE0(uint64_t a1, void *a2)
{
  v3 = a2;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v4 = *(a1 + 32);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000D80D4;
  v7[3] = &unk_1001CAB80;
  v7[4] = &v8;
  [v4 enumerateAttribute:v3 inRange:0 options:objc_msgSend(v4 usingBlock:{"length"), 0, v7}];
  v5 = *(v9 + 24);
  _Block_object_dispose(&v8, 8);

  return v5;
}

void sub_1000D80BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_1000D80D4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  result = [a2 BOOLValue];
  if (result)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a5 = 1;
  }

  return result;
}

uint64_t sub_1000D8118(uint64_t a1, void *a2)
{
  v3 = a2;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v4 = *(a1 + 32);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000D820C;
  v7[3] = &unk_1001CAB80;
  v7[4] = &v8;
  [v4 enumerateAttribute:v3 inRange:0 options:objc_msgSend(v4 usingBlock:{"length"), 0, v7}];
  v5 = *(v9 + 24);
  _Block_object_dispose(&v8, 8);

  return v5;
}

void sub_1000D81F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000D820C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  if (a2)
  {
    *(*(*(result + 32) + 8) + 24) = 1;
    *a5 = 1;
  }

  return result;
}

uint64_t sub_1000D8228(uint64_t a1, void *a2)
{
  v3 = a2;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v4 = *(a1 + 32);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000D831C;
  v7[3] = &unk_1001CAB80;
  v7[4] = &v8;
  [v4 enumerateAttribute:v3 inRange:0 options:objc_msgSend(v4 usingBlock:{"length"), 0, v7}];
  v5 = *(v9 + 24);
  _Block_object_dispose(&v8, 8);

  return v5;
}

void sub_1000D8304(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_1000D831C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  result = [a2 intValue];
  if (result >= 1)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a5 = 1;
  }

  return result;
}

void sub_1000D9F84(id a1)
{
  v1 = +[NSNotificationCenter defaultCenter];
  [v1 postNotificationName:@"VOTBrailleDisplayActiveStateChanged" object:0];
}

void sub_1000DA4B8(void *a1)
{
  v1 = a1;
  v2 = [v1 keyString];
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v3 = &stru_1001CBF90;
  }

  v31 = v1;
  v4 = [v1 modifiers];
  if ([(__CFString *)v3 length])
  {
    v5 = 0;
  }

  else
  {
    v5 = v4 == kBRLTBrailleKeyboardKeyModifierNull;
  }

  if (!v5)
  {
    v6 = kBRLTBrailleKeyboardKeyModifierShift;
    v7 = kBRLTBrailleKeyboardKeyModifierShift & v4;
    v8 = ((kBRLTBrailleKeyboardKeyModifierCommand & ~v4) == 0) | (8 * ((kBRLTBrailleKeyboardKeyModifierShift & v4) == kBRLTBrailleKeyboardKeyModifierShift));
    if ((kBRLTBrailleKeyboardKeyModifierOption & ~v4) == 0)
    {
      v8 |= 2u;
    }

    if ((kBRLTBrailleKeyboardKeyModifierControl & ~v4) == 0)
    {
      v8 |= 4u;
    }

    if ((kBRLTBrailleKeyboardKeyModifierSecondaryFn & ~v4) == 0)
    {
      v8 |= 0x40u;
    }

    v30 = v8;
    if ([(__CFString *)v3 length])
    {
      v9 = [(__CFString *)v3 length];
      if (v9)
      {
        v10 = v9;
        v11 = 0;
        v12 = 0;
        v13 = v9 - 1;
        do
        {
          v14 = v3;
          v15 = [(__CFString *)v3 substringWithRange:v12, 1];
          v16 = v15;
          if (v7 == v6)
          {
            v17 = [v15 uppercaseString];
          }

          else
          {
            v17 = v15;
          }

          v18 = v17;

          if (v12 < v13)
          {
            v19 = [VOTSharedWorkspace suppressValueChangeNotificationCount];
            [VOTSharedWorkspace setSuppressValueChangeNotificationCount:v19 + 1];
            v20 = [VOTSharedWorkspace suppressSelectionChangeNotificationCount];
            [VOTSharedWorkspace setSuppressSelectionChangeNotificationCount:v20 + 1];
          }

          [VOTSharedWorkspace postKeyboardEventWithCharacters:v18 originalCharacters:v16 modifiers:v30 keyCode:{objc_msgSend(v31, "keyCode")}];

          ++v12;
          v11 = v18;
          v3 = v14;
        }

        while (v10 != v12);
      }

      else
      {
        v18 = 0;
      }
    }

    else
    {
      if (v7 == v6)
      {
        v21 = [(__CFString *)v3 uppercaseString];
      }

      else
      {
        v21 = v3;
      }

      v18 = v21;
      [VOTSharedWorkspace postKeyboardEventWithCharacters:v21 originalCharacters:v3 modifiers:v30 keyCode:{objc_msgSend(v1, "keyCode")}];
    }

    v22 = +[AXSubsystemBrailleHardware sharedInstance];
    v23 = [v22 ignoreLogging];

    if ((v23 & 1) == 0)
    {
      v24 = +[AXSubsystemBrailleHardware identifier];
      v25 = AXLoggerForFacility();

      v26 = AXOSLogLevelFromAXLogLevel();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = AXColorizeFormatLog();
        v28 = v3;
        v29 = _AXStringForArgs();
        if (os_log_type_enabled(v25, v26))
        {
          *buf = 138543362;
          v33 = v29;
          _os_log_impl(&_mh_execute_header, v25, v26, "%{public}@", buf, 0xCu);
        }

        v3 = v28;
      }
    }
  }
}

id sub_1000DB2CC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  result = [a2 integerValue];
  if (result == 1)
  {
    *(*(*(a1 + 32) + 8) + 24) = a3;
    *a5 = 1;
  }

  return result;
}

void sub_1000DBA70(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v12 = a3;
  if ([*(a1 + 32) isEqualToString:a2])
  {
    [*(*(a1 + 40) + 168) setPersistentKeyModifiers:{objc_msgSend(*(*(a1 + 40) + 168), "persistentKeyModifiers") ^ objc_msgSend(v12, "unsignedIntegerValue")}];
    v7 = objc_alloc_init(VOTOutputRequest);
    v8 = off_1001FDDD0;
    v9 = [*(a1 + 48) objectForKey:v12];
    v10 = sub_1000511CC(v8, v9, 0);
    v11 = [(VOTOutputRequest *)v7 addString:v10];

    [(VOTOutputRequest *)v7 setGeneratesBraille:1];
    [(VOTOutputRequest *)v7 setBrailleType:2];
    [(VOTOutputRequest *)v7 send];
    *(*(*(a1 + 56) + 8) + 24) = 1;
    *a4 = 1;
  }
}

void sub_1000DBBA4(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v20 = a3;
  if ([*(a1 + 32) isEqualToString:a2])
  {
    v7 = [*(*(a1 + 40) + 168) persistentKeyModifiers];
    *(*(a1 + 40) + 200) ^= [v20 unsignedIntegerValue];
    v8 = *(*(a1 + 40) + 200);
    v9 = [v20 unsignedIntegerValue] & v8;
    v10 = [v20 unsignedIntegerValue];
    v11 = [v20 unsignedIntegerValue];
    v12 = v9 == v10;
    if (v9 == v10)
    {
      v13 = @".on";
    }

    else
    {
      v13 = @".off";
    }

    if (v12)
    {
      v14 = v7 | v11;
    }

    else
    {
      v14 = v7 & ~v11;
    }

    [*(*(a1 + 40) + 168) setPersistentKeyModifiers:v14];
    v15 = objc_alloc_init(VOTOutputRequest);
    v16 = [*(a1 + 48) objectForKey:v20];
    v17 = [v16 stringByAppendingString:v13];

    v18 = sub_1000511CC(off_1001FDDD0, v17, 0);
    v19 = [(VOTOutputRequest *)v15 addString:v18];

    [(VOTOutputRequest *)v15 setGeneratesBraille:1];
    [(VOTOutputRequest *)v15 setBrailleType:2];
    [(VOTOutputRequest *)v15 send];
    *(*(*(a1 + 56) + 8) + 24) = 1;
    *a4 = 1;
  }
}

void sub_1000DC84C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose((v27 - 136), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000DC914(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1000DC92C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(*(*(a1 + 48) + 8) + 40) length];
  v5 = [*(*(*(a1 + 48) + 8) + 40) stringByTrimmingCharactersInSet:v3];
  v6 = *(a1 + 32);
  if (!v6[27])
  {
    [v6 _updateTextReplacementEntries];
  }

  v7 = [VOTSharedWorkspace inUnitTestMode];
  v8 = 216;
  if (v7)
  {
    v8 = 376;
  }

  v9 = *(*(a1 + 32) + v8);
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v10 = v9;
  v11 = [v10 countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v11)
  {
    v12 = v11;
    v28 = v4;
    v13 = *v30;
    while (2)
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v30 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v29 + 1) + 8 * i);
        v16 = [v15 shortcut];
        v17 = [v16 compare:v5 options:129];

        if (!v17)
        {
          v19 = *(*(*(a1 + 48) + 8) + 40);
          v20 = [v15 phrase];
          v21 = [v19 stringByReplacingOccurrencesOfString:v5 withString:v20];
          v22 = *(*(a1 + 48) + 8);
          v23 = *(v22 + 40);
          *(v22 + 40) = v21;

          v24 = *(*(*(a1 + 56) + 8) + 24);
          v25 = [*(a1 + 40) value];
          v26 = &v28[[v25 length]];

          if (v24 <= v26)
          {
            *(*(*(a1 + 56) + 8) + 24) += [*(*(*(a1 + 48) + 8) + 40) length] - v28;
          }

          v18 = 1;
          goto LABEL_17;
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v29 objects:v33 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }
  }

  v18 = 0;
LABEL_17:

  return v18;
}

void sub_1000DD1AC(id a1, VOTOutputAction *a2, unint64_t a3, BOOL *a4)
{
  v4 = a2;
  LODWORD(v5) = 0.75;
  v6 = [NSNumber numberWithFloat:v5];
  [(VOTOutputAction *)v4 setObject:v6 forVariant:32];
}

void sub_1000DE01C(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 168);
  v3 = kSCROBrailleUIRequestTypeKey;
  v4 = &off_1001DA988;
  v2 = [NSDictionary dictionaryWithObjects:&v4 forKeys:&v3 count:1];
  [v1 handleBrailleUIResponse:&__kCFBooleanFalse forRequest:v2];
}

NSNumber *sub_1000DE214(uint64_t a1)
{
  v1 = [*(*(a1 + 32) + 168) persistentKeyModifiers];

  return [NSNumber numberWithUnsignedInt:v1];
}

NSString *sub_1000DF068(uint64_t a1)
{
  v1.location = [*(*(a1 + 32) + 168) rangeOfCellRepresentingCharacterAtIndex:*(a1 + 40)];

  return NSStringFromRange(v1);
}

void sub_1000DF23C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 224);
  *(v1 + 224) = 0;
}

void sub_1000DFAB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000DFAD4(id a1)
{
  v3[0] = &off_1001DA9A0;
  v3[1] = &off_1001DA9D0;
  v4[0] = &off_1001DA9B8;
  v4[1] = &off_1001DA9E8;
  v3[2] = &off_1001DAA00;
  v3[3] = &off_1001DAA30;
  v4[2] = &off_1001DAA18;
  v4[3] = &off_1001DAA48;
  v3[4] = &off_1001DAA60;
  v3[5] = &off_1001DAA90;
  v4[4] = &off_1001DAA78;
  v4[5] = &off_1001DAAA8;
  v3[6] = &off_1001DAAC0;
  v3[7] = &off_1001DAAF0;
  v4[6] = &off_1001DAAD8;
  v4[7] = &off_1001DAB08;
  v3[8] = &off_1001DAB20;
  v4[8] = &off_1001DAB38;
  v1 = [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:9];
  v2 = qword_1001FEE08;
  qword_1001FEE08 = v1;
}

uint64_t sub_1000DFC00(uint64_t a1)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v3 = *(*(a1 + 32) + 168);
    v4 = *(*(*(a1 + 40) + 8) + 24);

    return [v3 systemVirtualDisplayPressKeyChord:v4];
  }

  return result;
}

void sub_1000E07D4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v5;
  v8 = [*(a1 + 32) objectForKey:v7];
  v9 = v7;
  if (v8)
  {
    v10 = sub_1000511CC(off_1001FDDD0, @"braille.app.badge.format", 0);
    v9 = [NSString stringWithFormat:v10, v7, v8];
  }

  v12[0] = kSCROBrailleUIResponseAppsInfoAppNameKey;
  v12[1] = kSCROBrailleUIResponseAppsInfoAppIDKey;
  v13[0] = v9;
  v13[1] = v6;
  v11 = [NSDictionary dictionaryWithObjects:v13 forKeys:v12 count:2];
  [*(a1 + 40) addObject:v11];
}

uint64_t sub_1000E1058(void *a1, int a2)
{
  v3 = a1;
  v4 = +[VOTKeyboardManager keyboardManager];
  v5 = [v4 modifierKeyLockEnabled];

  if (v5 & 1) != 0 || ([VOTSharedWorkspace elementManager], v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(VOTSharedWorkspace, "currentElement"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v7, "modifierKeyChoiceForElement:", v8), v8, v7, (v9) && objc_msgSend(v3, "isOptionKeyPressed") && (objc_msgSend(v3, "isControlKeyPressed"))
  {
    v6 = 1;
  }

  else
  {
    v6 = a2 & (v9 >> 1);
  }

  return v6;
}

void sub_1000E2270(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location)
{
  objc_destroyWeak((v22 + 40));
  objc_destroyWeak((v23 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t sub_1000E22C8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained[22];

  return v2;
}

unint64_t sub_1000E22F8(id a1, VOSCommandResolver *a2)
{
  v2 = [VOTSharedWorkspace currentElement];
  v3 = 2;
  if (([v2 containedIn:2] & 1) == 0)
  {
    v3 = [v2 doesHaveTraits:kAXTextEntryTrait];
  }

  return v3;
}

uint64_t sub_1000E235C(uint64_t a1, unint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (a2 <= 1 && WeakRetained[22] >= 2)
  {
    v7 = WeakRetained;
    WeakRetained = [*(a1 + 32) length];
    v5 = v7;
    if (WeakRetained)
    {
      v7[22] = 1;
    }
  }

  return _objc_release_x1(WeakRetained, v5);
}

id sub_1000E409C(uint64_t a1)
{
  [*(a1 + 32) lastVolumeDownButtonUpTime];
  v3 = v2;
  result = [*(a1 + 32) lastVolumeDownButtonDownTime];
  if (v3 - v5 >= 0.75)
  {
    [*(a1 + 32) lastVolumeDownButtonDownTime];
    v7 = v6;
    result = [*(a1 + 32) lastVolumeUpButtonDownTime];
    if (vabdd_f64(v7, v8) <= 0.25)
    {
      [*(a1 + 32) lastVolumeDownButtonUpTime];
      v10 = v9;
      result = [*(a1 + 32) lastVolumeUpButtonUpTime];
      if (vabdd_f64(v10, v11) <= 0.25)
      {
        v12 = *(a1 + 32);

        return [v12 _resetSoundAndScreenCurtain];
      }
    }
  }

  return result;
}

void sub_1000E62F8(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 directInteractionModeStatus:*(*(a1 + 32) + 32)];
}

uint64_t sub_1000E6AB8(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = qword_1001FEE68;
  qword_1001FEE68 = v1;

  return _objc_release_x1(v1, v2);
}

id sub_1000EB834(void *a1)
{
  v1 = [a1 stringByReplacingOccurrencesOfString:@"pageup" withString:@"⇞"];
  v2 = [v1 stringByReplacingOccurrencesOfString:@"pagedown" withString:@"⇟"];

  v3 = [v2 stringByReplacingOccurrencesOfString:@"home" withString:@"⇱"];

  v4 = [v3 stringByReplacingOccurrencesOfString:@"end" withString:@"⇲"];

  v5 = [v4 stringByReplacingOccurrencesOfString:@"shift" withString:@"⇧"];

  v6 = [v5 stringByReplacingOccurrencesOfString:@"control" withString:@"⌃"];

  v7 = [v6 stringByReplacingOccurrencesOfString:@"option" withString:@"⌥"];

  v8 = [v7 stringByReplacingOccurrencesOfString:@"command" withString:@"⌘"];

  v9 = [v8 stringByReplacingOccurrencesOfString:@"left" withString:@"←"];

  v10 = [v9 stringByReplacingOccurrencesOfString:@"right" withString:@"→"];

  v11 = [v10 stringByReplacingOccurrencesOfString:@"up" withString:@"↑"];

  v12 = [v11 stringByReplacingOccurrencesOfString:@"down" withString:@"↓"];

  v13 = [v12 stringByReplacingOccurrencesOfString:@"esc" withString:@"⎋"];

  v14 = [v13 stringByReplacingOccurrencesOfString:@"tab" withString:@"⇥"];

  v15 = [v14 stringByReplacingOccurrencesOfString:@"capslock" withString:@"⇪"];

  v16 = [v15 stringByReplacingOccurrencesOfString:@" " withString:@"␣"];

  v17 = [v16 stringByReplacingOccurrencesOfString:@"return" withString:@"⏎"];

  v18 = [v17 stringByReplacingOccurrencesOfString:@"backspace" withString:@"⌫"];

  v19 = [v18 stringByReplacingOccurrencesOfString:@"delete" withString:@"⌦"];

  v20 = [v19 stringByReplacingOccurrencesOfString:@"fn" withString:@"Fn"];

  v21 = [v20 stringByReplacingOccurrencesOfString:@"f1" withString:@"F1"];

  v22 = [v21 stringByReplacingOccurrencesOfString:@"f2" withString:@"F2"];

  v23 = [v22 stringByReplacingOccurrencesOfString:@"f3" withString:@"F3"];

  v24 = [v23 stringByReplacingOccurrencesOfString:@"f4" withString:@"F4"];

  v25 = [v24 stringByReplacingOccurrencesOfString:@"f5" withString:@"F5"];

  v26 = [v25 stringByReplacingOccurrencesOfString:@"f6" withString:@"F6"];

  v27 = [v26 stringByReplacingOccurrencesOfString:@"f7" withString:@"F7"];

  v28 = [v27 stringByReplacingOccurrencesOfString:@"f8" withString:@"F8"];

  v29 = [v28 stringByReplacingOccurrencesOfString:@"f9" withString:@"F9"];

  v30 = [v29 stringByReplacingOccurrencesOfString:@"f10" withString:@"F10"];

  v31 = [v30 stringByReplacingOccurrencesOfString:@"f11" withString:@"F11"];

  v32 = [v31 stringByReplacingOccurrencesOfString:@"f12" withString:@"F12"];

  v33 = [AXSSKeyChord keyChordWithString:v32];

  return v33;
}

void sub_1000EBE70(id a1)
{
  v1 = [objc_allocWithZone(VOTExternalAccessoryManager) init];
  v2 = qword_1001FEE70;
  qword_1001FEE70 = v1;

  _objc_release_x1(v1, v2);
}

void sub_1000EC04C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_1000EC064()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = qword_1001FEEA0;
  v7 = qword_1001FEEA0;
  if (!qword_1001FEEA0)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_1000F00DC;
    v3[3] = &unk_1001C8370;
    v3[4] = &v4;
    sub_1000F00DC(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1000EC12C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000EC144(int a1, void *a2, CFTypeRef cf1)
{
  result = CFEqual(cf1, kAXSVoiceOverTouchEnabledThroughAccessoryNotification);
  if (result)
  {

    return [a2 _accessoryWantsStop:0];
  }

  return result;
}

void sub_1000EC6CC(uint64_t a1)
{
  v2 = [*(a1 + 32) userInfo];
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v3 = qword_1001FEEB8;
  v20 = qword_1001FEEB8;
  if (!qword_1001FEEB8)
  {
    *&buf = _NSConcreteStackBlock;
    *(&buf + 1) = 3221225472;
    v22 = sub_1000F02F0;
    v23 = &unk_1001C8370;
    v24 = &v17;
    v4 = sub_1000F0134();
    v5 = dlsym(v4, "EAAccessoryKey");
    *(v24[1] + 24) = v5;
    qword_1001FEEB8 = *(v24[1] + 24);
    v3 = v18[3];
  }

  _Block_object_dispose(&v17, 8);
  if (!v3)
  {
    sub_10012F150();
  }

  v6 = [v2 objectForKey:*v3];

  if ([v6 supportsAccessibility])
  {
    [v6 setDelegate:*(a1 + 40)];
    v7 = objc_getAssociatedObject(v6, &unk_1001FEE80);
    v8 = [v7 BOOLValue];

    if ((v8 & 1) == 0)
    {
      v9 = [NSNumber numberWithBool:1];
      [v6 updateSystemProperty:1 withValue:v9];
    }

    v10 = +[AXSubsystemVoiceOverIAP sharedInstance];
    v11 = [v10 ignoreLogging];

    if ((v11 & 1) == 0)
    {
      v12 = +[AXSubsystemVoiceOverIAP identifier];
      v13 = AXLoggerForFacility();

      v14 = AXOSLogLevelFromAXLogLevel();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = AXColorizeFormatLog();
        v16 = _AXStringForArgs();
        if (os_log_type_enabled(v13, v14))
        {
          LODWORD(buf) = 138543362;
          *(&buf + 4) = v16;
          _os_log_impl(&_mh_execute_header, v13, v14, "%{public}@", &buf, 0xCu);
        }
      }
    }
  }
}

void sub_1000EC958(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000ECA2C(uint64_t a1)
{
  if ([*(a1 + 32) supportsAccessibility])
  {
    [*(a1 + 32) setDelegate:0];
  }

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v2 = [sub_1000EC064() sharedAccessoryManager];
  v3 = [v2 connectedAccessories];

  v4 = [v3 countByEnumeratingWithState:&v33 objects:v39 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v34;
    while (2)
    {
      v7 = 0;
      do
      {
        if (*v34 != v6)
        {
          objc_enumerationMutation(v3);
        }

        if ([*(*(&v33 + 1) + 8 * v7) supportsAccessibility])
        {
          v8 = 0;
          goto LABEL_13;
        }

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v33 objects:v39 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v8 = 1;
LABEL_13:

  v9 = +[AXSubsystemVoiceOverIAP sharedInstance];
  v10 = [v9 ignoreLogging];

  if ((v10 & 1) == 0)
  {
    v11 = +[AXSubsystemVoiceOverIAP identifier];
    v12 = AXLoggerForFacility();

    v13 = AXOSLogLevelFromAXLogLevel();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = AXColorizeFormatLog();
      v31 = *(a1 + 32);
      v15 = _AXStringForArgs();
      if (os_log_type_enabled(v12, v13))
      {
        *buf = 138543362;
        v38 = v15;
        _os_log_impl(&_mh_execute_header, v12, v13, "%{public}@", buf, 0xCu);
      }
    }
  }

  v16 = +[AXSubsystemVoiceOverIAP sharedInstance];
  v17 = [v16 ignoreLogging];

  if ((v17 & 1) == 0)
  {
    v18 = +[AXSubsystemVoiceOverIAP identifier];
    v19 = AXLoggerForFacility();

    v20 = AXOSLogLevelFromAXLogLevel();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = AXColorizeFormatLog();
      v22 = [sub_1000EC064() sharedAccessoryManager];
      v32 = [v22 connectedAccessories];
      v23 = _AXStringForArgs();

      if (os_log_type_enabled(v19, v20))
      {
        *buf = 138543362;
        v38 = v23;
        _os_log_impl(&_mh_execute_header, v19, v20, "%{public}@", buf, 0xCu);
      }
    }
  }

  v24 = +[AXSubsystemVoiceOverIAP sharedInstance];
  v25 = [v24 ignoreLogging];

  if ((v25 & 1) == 0)
  {
    v26 = +[AXSubsystemVoiceOverIAP identifier];
    v27 = AXLoggerForFacility();

    v28 = AXOSLogLevelFromAXLogLevel();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = AXColorizeFormatLog();
      _AXSVoiceOverTouchEnabledThroughAccessory();
      v30 = _AXStringForArgs();
      if (os_log_type_enabled(v27, v28))
      {
        *buf = 138543362;
        v38 = v30;
        _os_log_impl(&_mh_execute_header, v27, v28, "%{public}@", buf, 0xCu);
      }
    }
  }

  if (v8)
  {
    [*(a1 + 40) _handleAccessoryShutdown];
  }
}

id sub_1000ECEB4(uint64_t a1)
{
  v2 = +[AXSubsystemVoiceOverIAP sharedInstance];
  v3 = [v2 ignoreLogging];

  if ((v3 & 1) == 0)
  {
    v4 = +[AXSubsystemVoiceOverIAP identifier];
    v5 = AXLoggerForFacility();

    v6 = AXOSLogLevelFromAXLogLevel();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = AXColorizeFormatLog();
      v33 = [sub_1000EC064() sharedAccessoryManager];
      v8 = _AXStringForArgs();

      if (os_log_type_enabled(v5, v6))
      {
        *buf = 138543362;
        v41 = v8;
        _os_log_impl(&_mh_execute_header, v5, v6, "%{public}@", buf, 0xCu);
      }
    }
  }

  v9 = [sub_1000EC064() sharedAccessoryManager];
  [v9 registerForLocalNotifications];

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v10 = [sub_1000EC064() sharedAccessoryManager];
  v11 = [v10 connectedAccessories];

  v12 = [v11 countByEnumeratingWithState:&v35 objects:v39 count:16];
  v13 = &dispatch_queue_create_ptr;
  if (v12)
  {
    v14 = v12;
    v15 = &unk_1001FEE80;
    v16 = *v36;
    v34 = *v36;
    do
    {
      for (i = 0; i != v14; i = i + 1)
      {
        if (*v36 != v16)
        {
          objc_enumerationMutation(v11);
        }

        v18 = *(*(&v35 + 1) + 8 * i);
        if ([v18 supportsAccessibility])
        {
          v19 = [v13[257] sharedInstance];
          v20 = [v19 ignoreLogging];

          if ((v20 & 1) == 0)
          {
            v21 = v15;
            v22 = v11;
            v23 = [v13[257] identifier];
            v24 = AXLoggerForFacility();

            v25 = AXOSLogLevelFromAXLogLevel();
            if (os_log_type_enabled(v24, v25))
            {
              v26 = a1;
              v27 = AXColorizeFormatLog();
              v28 = _AXStringForArgs();
              if (os_log_type_enabled(v24, v25))
              {
                *buf = 138543362;
                v41 = v28;
                _os_log_impl(&_mh_execute_header, v24, v25, "%{public}@", buf, 0xCu);
              }

              a1 = v26;
              v13 = &dispatch_queue_create_ptr;
            }

            v11 = v22;
            v15 = v21;
            v16 = v34;
          }

          [v18 setDelegate:*(a1 + 32)];
          v29 = objc_getAssociatedObject(v18, v15);
          v30 = [v29 BOOLValue];

          if ((v30 & 1) == 0)
          {
            v31 = [NSNumber numberWithBool:1];
            [v18 updateSystemProperty:1 withValue:v31];
          }

          objc_setAssociatedObject(v18, v15, &__kCFBooleanTrue, 1);
        }
      }

      v14 = [v11 countByEnumeratingWithState:&v35 objects:v39 count:16];
    }

    while (v14);
  }

  return [sub_1000EC064() accessibilityStartListening];
}

void sub_1000ED2F4(uint64_t a1)
{
  [sub_1000EC064() accessibilityStopListening];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = [sub_1000EC064() sharedAccessoryManager];
  v3 = [v2 connectedAccessories];

  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        if ([v8 supportsAccessibility])
        {
          v9 = [NSNumber numberWithBool:0];
          [v8 updateSystemProperty:1 withValue:v9];

          [v8 updateItemProperty:5 withValue:&__NSDictionary0__struct];
        }

        objc_setAssociatedObject(*(a1 + 32), &unk_1001FEE80, &__kCFBooleanFalse, 1);
        [v8 setDelegate:0];
      }

      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  v10 = [sub_1000EC064() sharedAccessoryManager];
  [v10 unregisterForLocalNotifications];
}

id sub_1000EDB64()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = qword_1001FEEC0;
  v7 = qword_1001FEEC0;
  if (!qword_1001FEEC0)
  {
    v1 = sub_1000F0134();
    v5[3] = dlsym(v1, "EAAccessoryAccessibilityPointXKey");
    qword_1001FEEC0 = v5[3];
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (!v0)
  {
    sub_10012F1C8();
  }

  v2 = *v0;

  return v2;
}

void sub_1000EDC50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_1000EDC68()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = qword_1001FEEC8;
  v7 = qword_1001FEEC8;
  if (!qword_1001FEEC8)
  {
    v1 = sub_1000F0134();
    v5[3] = dlsym(v1, "EAAccessoryAccessibilityPointYKey");
    qword_1001FEEC8 = v5[3];
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (!v0)
  {
    sub_10012F240();
  }

  v2 = *v0;

  return v2;
}

void sub_1000EDD54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_1000EDD6C()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = qword_1001FEED0;
  v7 = qword_1001FEED0;
  if (!qword_1001FEED0)
  {
    v1 = sub_1000F0134();
    v5[3] = dlsym(v1, "EAAccessoryAccessibilityTextKey");
    qword_1001FEED0 = v5[3];
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (!v0)
  {
    sub_10012F2B8();
  }

  v2 = *v0;

  return v2;
}

void sub_1000EDE58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000EED2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000EF2B8(id a1)
{
  v1 = qword_1001FEE90;
  qword_1001FEE90 = &off_1001DBAF8;
}

void sub_1000EF2D0(uint64_t a1)
{
  v2 = [sub_1000EC064() sharedAccessoryManager];
  v3 = [v2 connectedAccessories];
  v4 = [v3 count];

  if (v4 && ([qword_1001FEE88 isEqual:*(a1 + 32)] & 1) == 0)
  {
    objc_storeStrong(&qword_1001FEE88, *(a1 + 32));
    [*(a1 + 40) accessories];
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    obj = v25 = 0u;
    v17 = [obj countByEnumeratingWithState:&v22 objects:v27 count:16];
    if (v17)
    {
      v16 = *v23;
      do
      {
        for (i = 0; i != v17; i = i + 1)
        {
          if (*v23 != v16)
          {
            objc_enumerationMutation(obj);
          }

          v6 = *(*(&v22 + 1) + 8 * i);
          v18 = 0u;
          v19 = 0u;
          v20 = 0u;
          v21 = 0u;
          v7 = qword_1001FEE90;
          v8 = [v7 countByEnumeratingWithState:&v18 objects:v26 count:16];
          if (v8)
          {
            v9 = v8;
            v10 = *v19;
            do
            {
              for (j = 0; j != v9; j = j + 1)
              {
                if (*v19 != v10)
                {
                  objc_enumerationMutation(v7);
                }

                v12 = *(*(&v18 + 1) + 8 * j);
                v13 = [v12 intValue];
                v14 = [*(a1 + 40) accessibilityAccessory:v6 currentValueForItemProperty:objc_msgSend(v12 withElement:{"intValue"), *(a1 + 32)}];
                [v6 updateItemProperty:v13 withValue:v14];
              }

              v9 = [v7 countByEnumeratingWithState:&v18 objects:v26 count:16];
            }

            while (v9);
          }
        }

        v17 = [obj countByEnumeratingWithState:&v22 objects:v27 count:16];
      }

      while (v17);
    }
  }
}

void sub_1000EF5A0(uint64_t a1)
{
  v2 = [*(a1 + 32) accessories];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
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
        v8 = *(a1 + 40);
        *&v8 = v8;
        v9 = [NSNumber numberWithFloat:v8];
        [v7 updateSystemProperty:2 withValue:v9];

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }
}

void sub_1000EF758(uint64_t a1)
{
  v1 = [*(a1 + 32) accessories];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [v1 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v9;
    do
    {
      v5 = 0;
      do
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v6 = *(*(&v8 + 1) + 8 * v5);
        _AXSVoiceOverTouchSpeakingRate();
        v7 = [NSNumber numberWithFloat:?];
        [v6 updateSystemProperty:3 withValue:v7];

        v5 = v5 + 1;
      }

      while (v3 != v5);
      v3 = [v1 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v3);
  }
}

void sub_1000EFE70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class sub_1000F00DC(uint64_t a1)
{
  sub_1000F0134();
  result = objc_getClass("EAAccessoryManager");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_10012FD1C();
  }

  qword_1001FEEA0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_1000F0134()
{
  v2[0] = 0;
  if (!qword_1001FEEA8)
  {
    v2[1] = _NSConcreteStackBlock;
    v2[2] = 3221225472;
    v2[3] = sub_1000F022C;
    v2[4] = &unk_1001C78B0;
    v2[5] = v2;
    v3 = off_1001CAE70;
    v4 = 0;
    qword_1001FEEA8 = _sl_dlopen();
  }

  v0 = qword_1001FEEA8;
  if (!qword_1001FEEA8)
  {
    sub_10012FD98(v2);
  }

  if (v2[0])
  {
    free(v2[0]);
  }

  return v0;
}

uint64_t sub_1000F022C()
{
  result = _sl_dlopen();
  qword_1001FEEA8 = result;
  return result;
}

void *sub_1000F02A0(uint64_t a1)
{
  v2 = sub_1000F0134();
  result = dlsym(v2, "EAAccessoryDidConnectNotification");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1001FEEB0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_1000F02F0(uint64_t a1)
{
  v2 = sub_1000F0134();
  result = dlsym(v2, "EAAccessoryKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1001FEEB8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_1000F0340(uint64_t a1)
{
  v2 = sub_1000F0134();
  result = dlsym(v2, "EAAccessoryAccessibilityPointXKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1001FEEC0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_1000F0390(uint64_t a1)
{
  v2 = sub_1000F0134();
  result = dlsym(v2, "EAAccessoryAccessibilityPointYKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1001FEEC8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_1000F03E0(uint64_t a1)
{
  v2 = sub_1000F0134();
  result = dlsym(v2, "EAAccessoryAccessibilityTextKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1001FEED0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_1000F0430(uint64_t a1)
{
  v2 = sub_1000F0134();
  result = dlsym(v2, "EAAccessoryAccessibilityTraitButton");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1001FEED8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_1000F0480(uint64_t a1)
{
  v2 = sub_1000F0134();
  result = dlsym(v2, "EAAccessoryAccessibilityTraitLink");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1001FEEE0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_1000F04D0(uint64_t a1)
{
  v2 = sub_1000F0134();
  result = dlsym(v2, "EAAccessoryAccessibilityTraitImage");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1001FEEE8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_1000F0520(uint64_t a1)
{
  v2 = sub_1000F0134();
  result = dlsym(v2, "EAAccessoryAccessibilityTraitSearchField");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1001FEEF0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_1000F0570(uint64_t a1)
{
  v2 = sub_1000F0134();
  result = dlsym(v2, "EAAccessoryAccessibilityTraitSelected");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1001FEEF8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_1000F05C0(uint64_t a1)
{
  v2 = sub_1000F0134();
  result = dlsym(v2, "EAAccessoryAccessibilityTraitSound");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1001FEF00 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_1000F0610(uint64_t a1)
{
  v2 = sub_1000F0134();
  result = dlsym(v2, "EAAccessoryAccessibilityTraitKeyboardKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1001FEF08 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_1000F0660(uint64_t a1)
{
  v2 = sub_1000F0134();
  result = dlsym(v2, "EAAccessoryAccessibilityTraitStaticText");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1001FEF10 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_1000F06B0(uint64_t a1)
{
  v2 = sub_1000F0134();
  result = dlsym(v2, "EAAccessoryAccessibilityTraitSummaryElement");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1001FEF18 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_1000F0700(uint64_t a1)
{
  v2 = sub_1000F0134();
  result = dlsym(v2, "EAAccessoryAccessibilityTraitNotEnabled");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1001FEF20 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_1000F0750(uint64_t a1)
{
  v2 = sub_1000F0134();
  result = dlsym(v2, "EAAccessoryAccessibilityTraitUpdatesFrequently");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1001FEF28 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_1000F07A0(uint64_t a1)
{
  v2 = sub_1000F0134();
  result = dlsym(v2, "EAAccessoryAccessibilityTraitAdjustable");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1001FEF30 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_1000F07F0(uint64_t a1)
{
  v2 = sub_1000F0134();
  result = dlsym(v2, "EAAccessoryAccessibilityTraitBackButton");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1001FEF38 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_1000F0840(uint64_t a1)
{
  v2 = sub_1000F0134();
  result = dlsym(v2, "EAAccessoryAccessibilityTraitMap");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1001FEF40 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_1000F0890(uint64_t a1)
{
  v2 = sub_1000F0134();
  result = dlsym(v2, "EAAccessoryAccessibilityTraitStartsMediaSession");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1001FEF48 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_1000F08E0(uint64_t a1)
{
  v2 = sub_1000F0134();
  result = dlsym(v2, "EAAccessoryAccessibilityTraitDeleteKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1001FEF50 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_1000F0930(uint64_t a1)
{
  v2 = sub_1000F0134();
  result = dlsym(v2, "EAAccessoryAccessibilityWidthKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1001FEF58 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_1000F0980(uint64_t a1)
{
  v2 = sub_1000F0134();
  result = dlsym(v2, "EAAccessoryAccessibilityHeightKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1001FEF60 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_1000F09D0(uint64_t a1)
{
  v2 = sub_1000F0134();
  result = dlsym(v2, "EAAccessoryAccessibilitySystemPropertyVoiceOverVolumeKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1001FEF68 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_1000F0A20(uint64_t a1)
{
  v2 = sub_1000F0134();
  result = dlsym(v2, "EAAccessoryAccessibilitySystemPropertySpeakingRateKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1001FEF70 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_1000F0A70(uint64_t a1)
{
  v2 = sub_1000F0134();
  result = dlsym(v2, "EAAccessoryAccessibilitySystemPropertyVoiceOverEnabledKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1001FEF78 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_1000F2038(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  [a2 ax_CGPointValue];
  v7 = v6;
  v9 = v8;
  [v5 ax_CGPointValue];
  v11 = v10;
  v13 = v12;

  v14 = *(*(a1 + 32) + 24);
  if (v14 <= 5)
  {
    if (((1 << v14) & 0x19) != 0)
    {
      v15 = v9 <= v13;
      if (v9 < v13)
      {
        return -1;
      }

      return !v15;
    }

    if (((1 << v14) & 0x24) != 0)
    {
      v15 = v7 <= v11;
      if (v7 < v11)
      {
        return -1;
      }

      return !v15;
    }
  }

  if (v7 <= v11)
  {
    if (v7 >= v11)
    {
      return 0;
    }

    v17 = *(a1 + 40) == 0;
    v18 = 1;
  }

  else
  {
    v17 = *(a1 + 40) == 0;
    v18 = -1;
  }

  if (v17)
  {
    return v18;
  }

  else
  {
    return -v18;
  }
}

uint64_t sub_1000F2430(uint64_t a1, uint64_t a2)
{
  if (qword_1001FEF88 != -1)
  {
    sub_10012FE18();
  }

  if (a1 == a2)
  {
    return 1;
  }

  result = [qword_1001FEF80 characterIsMember:a1];
  if (result)
  {
    v5 = qword_1001FEF80;

    return [v5 characterIsMember:a2];
  }

  return result;
}

void sub_1000F24C0(id a1)
{
  v3 = [NSString stringWithFormat:@"%C%C%C%C%C%C%C%C%C%C%C", 32, 160, 8194, 8195, 8196, 8197, 8198, 8199, 8200, 8201, 8202];
  v1 = [NSCharacterSet characterSetWithCharactersInString:v3];
  v2 = qword_1001FEF80;
  qword_1001FEF80 = v1;
}

uint64_t sub_1000F28C4(uint64_t result)
{
  *(*(result + 32) + 17) = 0;
  *(*(result + 32) + 16) = 1;
  return result;
}

id sub_1000F2950(uint64_t a1)
{
  *(*(a1 + 32) + 18) = 0;
  *(*(a1 + 32) + 40) = CFAbsoluteTimeGetCurrent();
  *(*(a1 + 32) + 17) = 1;
  result = [*(*(a1 + 32) + 24) potentialOperation];
  if (result)
  {
    v3 = *(a1 + 32);
    v4 = *(v3 + 32);
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_1000F2A04;
    v5[3] = &unk_1001C76E8;
    v5[4] = v3;
    return [v4 afterDelay:v5 processBlock:1.0];
  }

  return result;
}

id sub_1000F2A04(uint64_t a1)
{
  result = [*(a1 + 32) _announceDropReady];
  *(*(a1 + 32) + 18) = 1;
  return result;
}

void sub_1000F2AD0(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 24);
  objc_storeStrong((*(a1 + 32) + 24), *(a1 + 40));
  [*(*(a1 + 32) + 32) cancel];
  if (*(a1 + 40))
  {
    if (![v2 itemCount] && objc_msgSend(*(*(a1 + 32) + 24), "itemCount"))
    {
      [*(a1 + 32) _announceDragPickup];
    }

    if ([v2 itemCount] >= 1)
    {
      v3 = [*(*(a1 + 32) + 24) itemCount];
      if (v3 != [v2 itemCount])
      {
        [*(a1 + 32) _announceDragCount];
      }
    }

    v4 = *(a1 + 32);
    if (*(v4 + 17) == 1 && (*(v4 + 18) & 1) == 0 && (v5 = [*(v4 + 24) potentialOperation], v4 = *(a1 + 32), v5))
    {
      [v4 _announceDropReady];
      *(*(a1 + 32) + 18) = 1;
    }

    else if (*(v4 + 18) == 1 && [v2 potentialOperation] && !objc_msgSend(*(*(a1 + 32) + 24), "potentialOperation"))
    {
      [*(a1 + 32) _announceDropUnready];
      *(*(a1 + 32) + 18) = 0;
    }
  }

  else
  {
    v6 = +[AXSubsystemVoiceOver sharedInstance];
    v7 = [v6 ignoreLogging];

    if ((v7 & 1) == 0)
    {
      v8 = +[AXSubsystemVoiceOver identifier];
      v9 = AXLoggerForFacility();

      v10 = AXOSLogLevelFromAXLogLevel();
      if (os_log_type_enabled(v9, v10))
      {
        v11 = AXColorizeFormatLog();
        v12 = _AXStringForArgs();
        if (os_log_type_enabled(v9, v10))
        {
          v13 = 138543362;
          v14 = v12;
          _os_log_impl(&_mh_execute_header, v9, v10, "%{public}@", &v13, 0xCu);
        }
      }
    }
  }
}

void sub_1000F2D88(uint64_t a1)
{
  *(*(a1 + 32) + 16) = 0;
  *(*(a1 + 32) + 17) = 0;
  *(*(a1 + 32) + 18) = 0;
  v1 = *(a1 + 32);
  v2 = *(v1 + 24);
  *(v1 + 24) = 0;
}

uint64_t sub_1000F2E24(uint64_t result)
{
  *(*(result + 32) + 17) = 0;
  *(*(result + 32) + 18) = 0;
  return result;
}

void sub_1000F2EAC(uint64_t a1)
{
  if ([*(*(a1 + 32) + 24) potentialOperation])
  {
    v1 = sub_1000511CC(off_1001FDDD0, @"drop.complete", 0);
    [VOTOutputRequest sendRequestWithString:v1];
  }
}

void sub_1000F2F3C(id a1)
{
  v1 = sub_1000511CC(off_1001FDDD0, @"drag.cancelled", 0);
  [VOTOutputRequest sendRequestWithString:v1];
}

void sub_1000F3090(uint64_t a1)
{
  v2 = off_1001FDDD0;
  v3 = [VOTSharedWorkspace selectedLanguage];
  v4 = sub_1000511CC(v2, @"dragging.item.count", v3);
  v7 = +[NSString localizedStringWithFormat:](NSString, "localizedStringWithFormat:", v4, [*(*(a1 + 32) + 24) itemCount]);

  v5 = objc_alloc_init(VOTOutputRequest);
  v6 = [(VOTOutputRequest *)v5 addString:v7];
  [(VOTOutputRequest *)v5 setCannotBeInterrupted:1];
  [(VOTOutputRequest *)v5 send];
}

void sub_1000F62E0(_Unwind_Exception *a1)
{
  _Block_object_dispose(&STACK[0x2B0], 8);
  _Block_object_dispose(&STACK[0x2D0], 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000F63FC(uint64_t a1, uint64_t a2)
{
  LOBYTE(v13) = *(a1 + 96);
  v3 = [*(a1 + 32) _handleOpaqueSearchForElementInDirection:*(a1 + 80) opaqueParent:a2 searchType:*(a1 + 88) range:*(*(a1 + 64) + 8) + 32 matchBlock:*(a1 + 56) resetContentOffsetInOpaqueParent:*(*(a1 + 72) + 8) + 24 peeking:v13];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 opaqueParent];

    if (v5)
    {
      v6 = v4;
    }

    else
    {
      v6 = [*(a1 + 40) currentOpaqueElement];

      v9 = [v6 opaqueParent];

      if (!v9)
      {
        _AXAssert();
      }
    }

    if ([v6 isValid])
    {
      WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 136));
      v11 = +[VOTElementFetchFoundData fetchFoundData:forceUpdate:direction:generation:range:searchType:](VOTElementFetchFoundData, "fetchFoundData:forceUpdate:direction:generation:range:searchType:", v6, *(a1 + 97), *(a1 + 80), [*(a1 + 48) clientGeneration], *(*(*(a1 + 64) + 8) + 32), *(*(*(a1 + 64) + 8) + 40), *(a1 + 88));
      [WeakRetained elementFetchFound:v11];

      v8 = VOTLogElement();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        sub_1001306C0();
      }

LABEL_12:

      return 1;
    }

    v12 = VOTLogElement();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      sub_100130658();
    }
  }

  else if (*(a1 + 98) == 1)
  {
    result = [*(a1 + 40) isAccessibleGroup];
    if (!result)
    {
      return result;
    }

    v6 = objc_loadWeakRetained((*(a1 + 32) + 136));
    v8 = +[VOTElementFetchFoundData fetchFoundData:forceUpdate:direction:generation:range:searchType:](VOTElementFetchFoundData, "fetchFoundData:forceUpdate:direction:generation:range:searchType:", 0, *(a1 + 97), *(a1 + 80), [*(a1 + 48) clientGeneration], *(*(*(a1 + 64) + 8) + 32), *(*(*(a1 + 64) + 8) + 40), *(a1 + 88));
    [v6 elementFetchFound:v8];
    goto LABEL_12;
  }

  return 0;
}

id sub_1000F6654(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v9 = a2;
  v10 = a5;
  v11 = *(a1 + 40);
  if (v11)
  {
    v12 = *(a1 + 48);
    v20 = v10;
    v13 = (*(v11 + 16))(v11, v9, a3, a4, v12, &v20);
    v15 = v14;
    v16 = v20;

    if (v13 == 0x7FFFFFFF || (v13 == a3 ? (v17 = v15 == a4) : (v17 = 0), v17))
    {
      v18 = 0;
    }

    else
    {
      v18 = +[VOTElementFetchFoundData fetchFoundData:forceUpdate:direction:generation:range:searchType:](VOTElementFetchFoundData, "fetchFoundData:forceUpdate:direction:generation:range:searchType:", v9, *(a1 + 64), *(a1 + 48), [*(a1 + 32) clientGeneration], v13, v15, *(a1 + 56));
    }

    v10 = v16;
  }

  else
  {
    v18 = 0;
  }

  [v18 setSearchUUID:v10];

  return v18;
}

id sub_1000F6790(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v9 = a2;
  v10 = a5;
  v11 = [VOTRotor systemRotorTypeForSearchType:*(a1 + 40)];
  if (v11)
  {
    v12 = [v9 customPublicRotorForSystemType:v11];
    v13 = v12;
    if (v12)
    {
      if ([v12 isEqual:v10])
      {
        v14 = objc_opt_new();
        [v14 setSearchUUID:v10];
      }

      else
      {
        v15 = [VOTElement customPublicRotorDictionaryForRotorId:v13 startRange:a3 direction:a4, *(a1 + 48)];
        v16 = [v9 customPublicRotorResultWithItem:v15 startElement:v9];
        v17 = [v16 objectForKeyedSubscript:@"targetElement"];
        v18 = [AXUIElement uiElementWithAXElement:v17];
        v19 = [VOTElement elementWithUIElement:v18];

        if (v19)
        {
          v26 = v15;
          valuePtr = xmmword_10017E110;
          v20 = [v16 objectForKeyedSubscript:@"targetRange"];

          if (v20)
          {
            v21 = [v16 objectForKeyedSubscript:@"targetRange"];
            AXValueGetValue(v21, kAXValueTypeCFRange, &valuePtr);
          }

          v22 = *(a1 + 56);
          v23 = *(a1 + 48);
          v24 = [*(a1 + 32) clientGeneration];
          v14 = [VOTElementFetchFoundData fetchFoundData:v19 forceUpdate:v22 direction:v23 generation:v24 range:valuePtr searchType:*(a1 + 40)];
          [v14 setSearchUUID:v13];
          v15 = v26;
        }

        else
        {
          v14 = objc_opt_new();
          [v14 setSearchUUID:v13];
        }
      }
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

void sub_1000F6A68(uint64_t a1)
{
  v1 = a1 + 32;
  *(*(a1 + 32) + 48) = *(*(a1 + 32) + 56);
  v2 = VOTLogElement();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    sub_100130728(v1, v2, v3, v4, v5, v6, v7, v8);
  }
}

void sub_1000F6BDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000F6BF4(uint64_t result)
{
  v1 = *(result + 32);
  v2 = *(v1 + 80) + 1;
  *(v1 + 80) = v2;
  *(*(*(result + 40) + 8) + 24) = v2;
  return result;
}

void sub_1000F71A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000F7204(uint64_t result)
{
  v1 = *(result + 32);
  v2 = *(v1 + 56) + 1;
  *(v1 + 56) = v2;
  *(*(*(result + 40) + 8) + 24) = v2;
  return result;
}

uint64_t sub_1000F7BB0(uint64_t result, float a2)
{
  *v2 = a2;
  *(v2 + 4) = v3;
  *(v2 + 12) = 2114;
  *(v2 + 14) = result;
  return result;
}

void sub_1000F8074(uint64_t a1)
{
  v2 = +[NSNotificationCenter defaultCenter];
  [v2 postNotificationName:@"VOTRotorChangedNotification" object:*(a1 + 32) userInfo:*(a1 + 40)];
}

void sub_1000F80E4(uint64_t a1)
{
  v3 = +[VOTConfiguration rootConfiguration];
  v2 = [NSNumber numberWithInteger:*(*(a1 + 32) + 24)];
  [v3 setPreference:v2 forKey:*(a1 + 40)];
}

CFIndex sub_1000F8D8C(const __CFArray *a1, const void *a2)
{
  v4.length = CFArrayGetCount(a1);
  v4.location = 0;

  return CFArrayGetFirstIndexOfValue(a1, v4, a2);
}

void sub_1000F8E40(id a1)
{
  v38[0] = kAXSVoiceOverTouchRotorItemSpeechRate;
  v37 = [NSNumber numberWithInteger:81];
  v39[0] = v37;
  v38[1] = kAXSVoiceOverTouchRotorItemVolume;
  v36 = [NSNumber numberWithInteger:80];
  v39[1] = v36;
  v38[2] = kAXSVoiceOverTouchRotorItemHandwriting;
  v35 = [NSNumber numberWithInteger:60];
  v39[2] = v35;
  v38[3] = kAXSVoiceOverTouchRotorItemBrailleGesture;
  v34 = [NSNumber numberWithInteger:61];
  v39[3] = v34;
  v38[4] = kAXSVoiceOverTouchRotorItemHints;
  v33 = [NSNumber numberWithInteger:59];
  v39[4] = v33;
  v38[5] = kAXSVoiceOverTouchRotorItemAudioDucking;
  v32 = [NSNumber numberWithInteger:87];
  v39[5] = v32;
  v39[6] = &off_1001DABC8;
  v38[6] = kAXSVoiceOverTouchRotorItemAudioDuckingAmount;
  v38[7] = kAXSVoiceOverTouchRotorItemCharacter;
  v31 = [NSNumber numberWithInteger:3];
  v39[7] = v31;
  v38[8] = kAXSVoiceOverTouchRotorItemWord;
  v30 = [NSNumber numberWithInteger:4];
  v39[8] = v30;
  v38[9] = kAXSVoiceOverTouchRotorItemLine;
  v29 = [NSNumber numberWithInteger:5];
  v39[9] = v29;
  v38[10] = kAXSVoiceOverTouchRotorItemHeader;
  v28 = [NSNumber numberWithInteger:8];
  v39[10] = v28;
  v38[11] = kAXSVoiceOverTouchRotorItemLink;
  v27 = [NSNumber numberWithInteger:9];
  v39[11] = v27;
  v39[12] = &off_1001DABE0;
  v38[12] = kAXSVoiceOverTouchRotorItemTextSelection;
  v38[13] = kAXSVoiceOverTouchRotorItemFormElement;
  v26 = [NSNumber numberWithInteger:10];
  v39[13] = v26;
  v38[14] = kAXSVoiceOverTouchRotorItemRadioGroup;
  v25 = [NSNumber numberWithInteger:11];
  v39[14] = v25;
  v38[15] = kAXSVoiceOverTouchRotorItemTableStart;
  v24 = [NSNumber numberWithInteger:12];
  v39[15] = v24;
  v38[16] = kAXSVoiceOverTouchRotorItemListStart;
  v23 = [NSNumber numberWithInteger:14];
  v39[16] = v23;
  v38[17] = kAXSVoiceOverTouchRotorItemVisitedLink;
  v22 = [NSNumber numberWithInteger:15];
  v39[17] = v22;
  v38[18] = kAXSVoiceOverTouchRotorItemNonVisitedLink;
  v21 = [NSNumber numberWithInteger:16];
  v39[18] = v21;
  v38[19] = kAXSVoiceOverTouchRotorItemSame;
  v20 = [NSNumber numberWithInteger:43];
  v39[19] = v20;
  v38[20] = kAXSVoiceOverTouchRotorItemAllItems;
  v19 = [NSNumber numberWithInteger:44];
  v39[20] = v19;
  v38[21] = kAXSVoiceOverTouchRotorItemImage;
  v18 = [NSNumber numberWithInteger:17];
  v39[21] = v18;
  v38[22] = kAXSVoiceOverTouchRotorItemStaticText;
  v17 = [NSNumber numberWithInteger:18];
  v39[22] = v17;
  v38[23] = kAXSVoiceOverTouchRotorItemTextZoom;
  v16 = [NSNumber numberWithInteger:20];
  v39[23] = v16;
  v38[24] = kAXSVoiceOverTouchRotorItemLandmark;
  v15 = [NSNumber numberWithInteger:33];
  v39[24] = v15;
  v38[25] = kAXSVoiceOverTouchRotorItemArticle;
  v14 = [NSNumber numberWithInteger:34];
  v39[25] = v14;
  v38[26] = kAXSVoiceOverTouchRotorItemButton;
  v13 = [NSNumber numberWithInteger:35];
  v39[26] = v13;
  v38[27] = kAXSVoiceOverTouchRotorItemSearchField;
  v1 = [NSNumber numberWithInteger:40];
  v39[27] = v1;
  v38[28] = kAXSVoiceOverTouchRotorItemCheckbox;
  v2 = [NSNumber numberWithInteger:41];
  v39[28] = v2;
  v38[29] = kAXSVoiceOverTouchRotorItemTextField;
  v3 = [NSNumber numberWithInteger:36];
  v39[29] = v3;
  v38[30] = kAXSVoiceOverTouchRotorItemContainers;
  v4 = [NSNumber numberWithInteger:38];
  v39[30] = v4;
  v38[31] = kAXSVoiceOverTouchRotorItemVerticalNavigation;
  v5 = [NSNumber numberWithInteger:7];
  v39[31] = v5;
  v38[32] = kAXSVoiceOverTouchRotorItemPunctuation;
  v6 = [NSNumber numberWithInteger:85];
  v39[32] = v6;
  v38[33] = kAXSVoiceOverTouchRotorItemSounds;
  v7 = [NSNumber numberWithInteger:86];
  v39[33] = v7;
  v38[34] = kAXSVoiceOverTouchRotorItemTypingMode;
  v8 = [NSNumber numberWithInteger:21];
  v39[34] = v8;
  v38[35] = kAXSVoiceOverTouchRotorItemContinuousPath;
  v9 = [NSNumber numberWithInteger:22];
  v39[35] = v9;
  v38[36] = kAXSVoiceOverTouchRotorItemNavigationDirection;
  v10 = [NSNumber numberWithInteger:90];
  v39[36] = v10;
  v39[37] = &off_1001DABF8;
  v38[37] = kAXSVoiceOverTouchRotorItemVoice;
  v38[38] = kAXSVoiceOverTouchRotorItemBrailleLanguage;
  v39[38] = &off_1001DAC10;
  v39[39] = &off_1001DAC28;
  v38[39] = kAXSVoiceOverTouchRotorItemBrailleInputLanguage;
  v38[40] = kAXSVoiceOverTouchRotorItemBrailleAutoAdvance;
  v39[40] = &off_1001DAC40;
  v39[41] = &off_1001DAC58;
  v38[41] = kAXSVoiceOverTouchRotorItem2DBrailleZoom;
  v38[42] = kAXSVoiceOverTouchRotorItem2DBraillePanHorizontal;
  v39[42] = &off_1001DAC70;
  v39[43] = &off_1001DAC88;
  v38[43] = kAXSVoiceOverTouchRotorItem2DBraillePanVertical;
  v38[44] = kAXSVoiceOverTouchRotorItem2DBrailleInvert;
  v39[44] = &off_1001DACA0;
  v39[45] = &off_1001DACB8;
  v38[45] = kAXSVoiceOverTouchRotorItem2DBrailleTextMode;
  v38[46] = kAXSVoiceOverTouchRotorItem2DBrailleEdgeIntensity;
  v39[46] = &off_1001DACD0;
  v39[47] = &off_1001DACE8;
  v38[47] = kAXSVoiceOverTouchRotorAudioDestination;
  v38[48] = kAXSVoiceOverTouchRotorActivities;
  v39[48] = &off_1001DAD00;
  v39[49] = &off_1001DAD18;
  v38[49] = kAXSVoiceOverTouchRotorToggleLiveRegions;
  v38[50] = kAXSVoiceOverTouchRotorMLElementsMode;
  v39[50] = &off_1001DAD30;
  v39[51] = &off_1001DAD48;
  v38[51] = kAXSVoiceOverTouchRotorNavigationStyle;
  v38[52] = kAXSVoiceOverTouchRotorItemMisspelledWords;
  v39[52] = &off_1001DAD60;
  v39[53] = &off_1001DAD78;
  v38[53] = kAXSVoiceOverTouchRotorImageDescriptions;
  v38[54] = kAXSVoiceOverTouchRotorDetectionMode;
  v39[54] = &off_1001DAD90;
  v39[55] = &off_1001DADA8;
  v38[55] = kAXSVoiceOverTouchRotorDirectTouchMode;
  v38[56] = kAXSVoiceOverTouchRotorItemCopiedSpeech;
  v39[56] = &off_1001DADC0;
  v11 = [NSDictionary dictionaryWithObjects:v39 forKeys:v38 count:57];
  v12 = qword_1001FEF90;
  qword_1001FEF90 = v11;
}

void sub_1000FA620(const __CFArray *a1, const void *a2)
{
  v6.length = CFArrayGetCount(a1);
  v6.location = 0;
  FirstIndexOfValue = CFArrayGetFirstIndexOfValue(a1, v6, a2);
  if (FirstIndexOfValue != -1)
  {

    CFArrayRemoveValueAtIndex(a1, FirstIndexOfValue);
  }
}

void sub_1000FABE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000FB918(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 88));
  _Unwind_Resume(a1);
}

void sub_1000FB94C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateDotPositions];
}

void sub_1000FB98C(uint64_t a1)
{
  v4 = +[AXSettings sharedInstance];
  v2 = [v4 voiceOverTouchBrailleGesturesUsesTypingSoundFeedback];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setUsesTypingSoundFeedback:v2];
}

void sub_1000FB9FC(uint64_t a1)
{
  v4 = +[AXSettings sharedInstance];
  v2 = [v4 voiceOverTouchBrailleGesturesUsesHapticFeedback];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setUsesHapticFeedback:v2];
}

id sub_1000FC1B0(uint64_t a1)
{
  v2 = [*(a1 + 32) disableIdleTimerAssertion];
  [v2 invalidate];

  v3 = *(a1 + 32);

  return [v3 setDisableIdleTimerAssertion:0];
}

void sub_1000FC200(id a1)
{
  v1 = +[AXSettings sharedInstance];
  [v1 setVoiceOverBSIUsageCount:{objc_msgSend(v1, "voiceOverBSIUsageCount") + 1}];
}

BOOL sub_1000FDF60(id a1, NSDictionary *a2, unint64_t a3, BOOL *a4)
{
  v4 = VOSBrailleTableForRotorItem();
  if ([v4 supportsTranslationMode8Dot] && !AXDeviceSupportsManyTouches())
  {
    v6 = 0;
  }

  else
  {
    v5 = [v4 replacements];
    v6 = [v5 count] == 0;
  }

  return v6;
}

void sub_1000FE7B8(id a1, VOTElement *a2)
{
  v2 = a2;
  [(VOTElement *)v2 updateGesturedTextInputAttributes];
  v5 = [(VOTElement *)v2 gesturedTextInputAttributes];

  if ([v5 shouldPlayKeyboardSecureClickSound])
  {
    v3 = +[VOTOutputManager outputManager];
    v4 = +[VOSOutputEvent DidEnterSecureText];
    [v3 sendEvent:v4];
  }
}

id sub_1000FEDD0(uint64_t a1, int a2)
{
  HasHomeButton = AXDeviceHasHomeButton();
  v5 = @"landscape.right.hint.charge.port";
  if (a2)
  {
    v5 = @"landscape.left.hint.charge.port";
  }

  v6 = @"landscape.left.hint";
  if (!a2)
  {
    v6 = @"landscape.right.hint";
  }

  if (HasHomeButton)
  {
    v7 = v6;
  }

  else
  {
    v7 = v5;
  }

  v8 = sub_1000516CC(off_1001FDDD0, v7, 0, *(a1 + 32));

  return v8;
}

void sub_1000FF6FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_1000FF714(uint64_t a1, void *a2)
{
  result = [a2 requiresLaTeXInput];
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

void sub_1000FFC48(uint64_t a1)
{
  v2 = [*(a1 + 32) lastPrintBrailleCharacter];

  if (v2)
  {
    v3 = *(a1 + 32);
    v4 = [v3 lastPrintBrailleCharacter];
    v9 = [v3 _spokenStringForPrintBraille:v4];

    if ([v9 length])
    {
      if ([*(a1 + 32) didAnnounceExplorationMode])
      {
        v5 = v9;
      }

      else
      {
        v6 = *(a1 + 32);
        v7 = sub_1000511CC(off_1001FDDD0, @"braille.exploration.mode.announcement", 0);
        v8 = [v6 _stringWithFirstPart:v7 secondPart:v9];

        [*(a1 + 32) setDidAnnounceExplorationMode:1];
        v5 = v8;
      }

      v9 = v5;
      [*(a1 + 32) _speakText:v5 useKeyboardLanguage:0];
    }
  }
}

void sub_100100084(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {
    v3 = *(a1 + 32);
    v4 = AXFormatInteger();
    [v3 addObject:v4];
  }
}

void sub_1001009A0(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {
    v3 = *(a1 + 32);
    v4 = [NSNumber numberWithUnsignedInteger:a2];
    [v3 addObject:v4];
  }
}

id sub_100100B58(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100100BCC;
  v3[3] = &unk_1001C76E8;
  v3[4] = v1;
  return [v1 _playWarningTones:2 completion:v3];
}

void sub_100102E44(id a1, VOTOutputRequest *a2)
{
  if ([(VOTOutputRequest *)a2 finishedSuccessfully])
  {
    v2 = +[AXSettings sharedInstance];
    [v2 setVoiceOverTouchBrailleGesturesDidPlayCalibrationHint:1];
  }
}

void sub_1001030FC(uint64_t a1)
{
  v2 = [*(a1 + 32) warningTonesTimer];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1001031AC;
  v5[3] = &unk_1001C7A18;
  v4 = *(a1 + 40);
  v3 = *(a1 + 48);
  v5[4] = *(a1 + 32);
  v7 = v3;
  v6 = v4;
  [v2 afterDelay:v5 processBlock:1.0];
}

void sub_1001031C0(uint64_t a1)
{
  v2 = [*(a1 + 32) warningTonesTimer];
  [v2 afterDelay:*(a1 + 40) processBlock:1.0];
}

void sub_10010468C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1001046C0(uint64_t a1)
{
  v5 = +[AXSettings sharedInstance];
  v2 = [v5 imageCaptionGenderStrategy];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [WeakRetained engine];
  [v4 setGenderStrategy:v2];
}

void sub_100104748(uint64_t a1)
{
  v2 = VOTLogCommon();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Received langauge configuration change. Purging vision engine cache", v4, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained purgeCache];
}

id sub_100104F18(uint64_t a1)
{
  v2 = +[NSMutableArray array];
  v3 = [*(a1 + 32) language];
  if ([v3 length])
  {
    v4 = [NSLocale localeWithLocaleIdentifier:v3];
    if (v4)
    {
      [v2 addObject:v4];
    }
  }

  if (*(a1 + 40))
  {
    [v2 addObject:?];
  }

  return v2;
}

void sub_1001054B4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = AXLogBrailleHW();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = *(a1 + 32);
    v8 = 138412290;
    v9 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Rendering string for 2d braille: %@", &v8, 0xCu);
  }

  v6 = +[VOTPlanarBrailleManager manager];
  v7 = [v3 brailleEdges];

  [v6 setImageData:v7];
}

void sub_100105928(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = AXLogBrailleHW();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = *(a1 + 32);
    v8 = 138412290;
    v9 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Rendering element for 2d braille: %@", &v8, 0xCu);
  }

  v6 = +[VOTPlanarBrailleManager manager];
  v7 = [v3 brailleEdges];

  [v6 setImageData:v7];
}

void sub_1001061E4(uint64_t a1, void *a2)
{
  v3 = a2;
  +[NSDate timeIntervalSinceReferenceDate];
  v5 = v4;
  v6 = VOTLogCommon();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = v5 - *(a1 + 56);
    v13 = 134217984;
    v14 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Vision request took %.3fs to complete", &v13, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 24));
  [WeakRetained visionEngine:*(a1 + 32) updatedResult:v3 forElement:*(a1 + 40) event:1 visionOptions:*(a1 + 48)];

  if (*(a1 + 64) == 1)
  {
    v9 = AXLogBrailleHW();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = *(a1 + 40);
      v13 = 138412290;
      v14 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Processing vision request for 2d braille: %@", &v13, 0xCu);
    }

    v11 = +[VOTPlanarBrailleManager manager];
    v12 = [v3 brailleEdges];
    [v11 setImageData:v12];
  }
}

void sub_100106760(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = [NSError ax_errorWithDomain:@"vot" description:@"No element provided"];
    (*(v1 + 16))(v1, 0, v2);
  }
}

void sub_1001067EC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  +[NSDate timeIntervalSinceReferenceDate];
  v8 = v7;
  v9 = VOTLogCommon();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = v8 - *(a1 + 40);
    v15 = 134217984;
    v16 = v10;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Vision request took %.3fs to complete", &v15, 0xCu);
  }

  v11 = *(a1 + 32);
  if (v11)
  {
    v12 = [v5 captionFeatures];
    v13 = [v12 firstObject];
    v14 = [v13 caption];
    (*(v11 + 16))(v11, v14, v6);
  }
}

void sub_100106D98(id a1)
{
  v1 = objc_alloc_init(VOTDebugManager);
  v2 = qword_1001FEFA0;
  qword_1001FEFA0 = v1;

  _objc_release_x1(v1, v2);
}

void sub_1001074A0(id a1)
{
  v1 = [objc_allocWithZone(VOTElementLabelCache) init];
  v2 = qword_1001FEFB0;
  qword_1001FEFB0 = v1;

  _objc_release_x1(v1, v2);
}

void sub_10010769C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1001076C0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleCustomLabelsChanged:0];
}

id sub_100107778(uint64_t a1)
{
  [*(a1 + 32) _loadLabelCache];
  v2 = *(a1 + 32);
  v3 = v2[1];

  return [v2 _iCloudPublishData:v3];
}

void sub_100107A20(uint64_t a1)
{
  v2 = +[NSUbiquitousKeyValueStore defaultStore];
  [v2 synchronize];

  v3 = +[NSUbiquitousKeyValueStore defaultStore];
  v4 = [v3 dictionaryForKey:@"VOTLabelCache"];

  v5 = VOTLogICloud();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138477827;
    v12 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Got element label synch from icloud: %{private}@", buf, 0xCu);
  }

  v6 = *(a1 + 32);
  v7 = *(v6 + 16);
  if (v4)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100107BDC;
    block[3] = &unk_1001C7778;
    block[4] = v6;
    v10 = v4;
    dispatch_async(v7, block);
  }

  else
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100107BE8;
    v8[3] = &unk_1001C76E8;
    v8[4] = v6;
    dispatch_async(v7, v8);
  }
}

void sub_100107EA8(uint64_t a1)
{
  v2 = +[NSMutableDictionary dictionary];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = *(a1 + 32);
  v4 = [v3 countByEnumeratingWithState:&v14 objects:v20 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v15;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v14 + 1) + 8 * i);
        v9 = [*(a1 + 32) objectForKey:{v8, v14}];
        v10 = [v8 hashKey];
        [v2 setObject:v9 forKey:v10];
      }

      v5 = [v3 countByEnumeratingWithState:&v14 objects:v20 count:16];
    }

    while (v5);
  }

  v11 = +[NSUbiquitousKeyValueStore defaultStore];
  [v11 setDictionary:v2 forKey:@"VOTLabelCache"];

  v12 = +[NSUbiquitousKeyValueStore defaultStore];
  [v12 synchronize];

  v13 = VOTLogICloud();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138477827;
    v19 = v2;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Publishing data to iCloud %{private}@", buf, 0xCu);
  }
}

id sub_100108300(uint64_t a1)
{
  if (!*(*(a1 + 32) + 8))
  {
    v2 = objc_alloc_init(NSMutableDictionary);
    v3 = *(a1 + 32);
    v4 = *(v3 + 8);
    *(v3 + 8) = v2;
  }

  v5 = [*(a1 + 40) length];
  v6 = *(*(a1 + 32) + 8);
  if (v5)
  {
    v7 = [v6 allKeys];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v15;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v15 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v14 + 1) + 8 * i);
          if ([v12 isEqual:*(a1 + 48)])
          {
            [*(*(a1 + 32) + 8) removeObjectForKey:v12];
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v9);
    }

    [*(*(a1 + 32) + 8) setObject:*(a1 + 40) forKey:*(a1 + 48)];
  }

  else
  {
    [v6 removeObjectForKey:*(a1 + 48)];
  }

  [*(a1 + 32) _syncLabelCache];
  return [*(a1 + 32) _iCloudPublishData:*(*(a1 + 32) + 8)];
}

uint64_t sub_1001085AC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1001085C4(void *a1)
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = *(a1[4] + 8);
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v11 + 1) + 8 * i);
        if ([v7 isEqual:{a1[5], v11}])
        {
          v8 = [*(a1[4] + 8) objectForKey:v7];
          v9 = *(a1[6] + 8);
          v10 = *(v9 + 40);
          *(v9 + 40) = v8;

          goto LABEL_11;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:
}

void sub_10010878C(id a1)
{
  v1 = objc_alloc_init(VOTPlanarBrailleManager);
  v2 = qword_1001FEFC0;
  qword_1001FEFC0 = v1;

  _objc_release_x1(v1, v2);
}

void sub_100108AFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100108B1C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100108B34(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 threadKey];
  [v3 performSelector:"_setPlanarBrailleElementHandler:previousElements:" withThreadKey:v5 count:2 objects:{*(*(*(a1 + 40) + 8) + 40), v4}];
}

void sub_100108D58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_100108D7C(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a2;
  v5 = [v3 threadKey];
  [v3 performSelector:"_setPlanarBrailleElementHandler:previousElements:nextElements:" withThreadKey:v5 count:3 objects:{*(*(a1[5] + 8) + 40), *(*(a1[6] + 8) + 40), v4}];
}

void sub_100109614(uint64_t a1, void *a2)
{
  v10 = a2;
  [*(a1 + 32) setPreviousPanningDirection:0];
  if (*(a1 + 56) != 1 || [v10 count] && (v3 = *(a1 + 32), objc_msgSend(v10, "firstObject"), v4 = objc_claimAutoreleasedReturnValue(), LOBYTE(v3) = objc_msgSend(v3, "_isElementForReading:", v4), v4, (v3 & 1) != 0))
  {
    v5 = [v10 count];
    v6 = [VOTSharedWorkspace elementManager];
    v7 = v6;
    if (v5)
    {
      v8 = [v10 firstObject];
      [v7 moveToElement:v8];
    }

    else
    {
      [v6 setCurrentElement:*(a1 + 40) shouldSetBrailleElement:0];

      v9 = [VOTSharedWorkspace elementManager];
      [v9 moveToElement:*(a1 + 48)];

      v7 = +[VOTOutputManager outputManager];
      v8 = +[VOSOutputEvent BoundaryEncountered];
      [v7 sendEvent:v8];
    }
  }

  else
  {
    v7 = [VOTEvent brailleEventWithCommand:kVOTEventCommandScrollLeftPage info:0];
    [v7 setObject:&__kCFBooleanTrue forIndex:119];
    [VOTSharedWorkspace dispatchCommand:v7];
  }
}

void sub_1001097B0(uint64_t a1, void *a2)
{
  v10 = a2;
  [*(a1 + 32) setPreviousPanningDirection:1];
  if (*(a1 + 56) != 1 || [v10 count] && (v3 = *(a1 + 32), objc_msgSend(v10, "firstObject"), v4 = objc_claimAutoreleasedReturnValue(), LOBYTE(v3) = objc_msgSend(v3, "_isElementForReading:", v4), v4, (v3 & 1) != 0))
  {
    v5 = [v10 count];
    v6 = [VOTSharedWorkspace elementManager];
    v7 = v6;
    if (v5)
    {
      v8 = [v10 firstObject];
      [v7 moveToElement:v8];
    }

    else
    {
      [v6 setCurrentElement:*(a1 + 40) shouldSetBrailleElement:0];

      v9 = [VOTSharedWorkspace elementManager];
      [v9 moveToElement:*(a1 + 48)];

      v7 = +[VOTOutputManager outputManager];
      v8 = +[VOSOutputEvent BoundaryEncountered];
      [v7 sendEvent:v8];
    }
  }

  else
  {
    v7 = [VOTEvent brailleEventWithCommand:kVOTEventCommandScrollRightPage info:0];
    [v7 setObject:&__kCFBooleanTrue forIndex:119];
    [VOTSharedWorkspace dispatchCommand:v7];
  }
}

void sub_100109B6C(id a1, NSArray *a2)
{
  v4 = a2;
  if ([(NSArray *)v4 count])
  {
    v2 = [VOTSharedWorkspace elementManager];
    v3 = [(NSArray *)v4 firstObject];
    [v2 moveToElement:v3];
  }

  else
  {
    v2 = +[VOTOutputManager outputManager];
    v3 = +[VOSOutputEvent BoundaryEncountered];
    [v2 sendEvent:v3];
  }
}

void sub_100109C28(id a1, NSArray *a2)
{
  v4 = a2;
  if ([(NSArray *)v4 count])
  {
    v2 = [VOTSharedWorkspace elementManager];
    v3 = [(NSArray *)v4 firstObject];
    [v2 moveToElement:v3];
  }

  else
  {
    v2 = +[VOTOutputManager outputManager];
    v3 = +[VOSOutputEvent BoundaryEncountered];
    [v2 sendEvent:v3];
  }
}

id sub_100109FEC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [NSNumber numberWithInteger:*(a1 + 40)];
  v3 = [v1 _elementAtRelativeIndex:v2];

  return v3;
}

void sub_10010B528(id a1)
{
  v1 = objc_opt_new();
  v2 = qword_1001FEFD8;
  qword_1001FEFD8 = v1;

  _objc_release_x1(v1, v2);
}

void sub_10010B798(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10010B7B0(uint64_t a1)
{
  v2 = [[NSLocale alloc] initWithLocaleIdentifier:@"en_US"];
  v3 = VOTLogHandwriting();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = [v2 localeIdentifier];
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Initializing handwriting engine with locale: %@", &buf, 0xCu);
  }

  v10 = 0;
  v11 = &v10;
  v12 = 0x2050000000;
  v5 = qword_1001FF018;
  v13 = qword_1001FF018;
  if (!qword_1001FF018)
  {
    *&buf = _NSConcreteStackBlock;
    *(&buf + 1) = 3221225472;
    v15 = sub_10010E0B0;
    v16 = &unk_1001C8370;
    v17 = &v10;
    sub_10010E0B0(&buf);
    v5 = v11[3];
  }

  v6 = v5;
  _Block_object_dispose(&v10, 8);
  v7 = [[v5 alloc] initWithMode:1 locale:v2];
  if (!v7)
  {
    v8 = VOTLogHandwriting();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_100130F98(v2, v8);
    }
  }

  [v7 setAutoCapitalizationMode:0];
  [v7 setMaxRecognitionResultCount:8];
  [*(a1 + 32) setRecognitionEngine:v7];
  v9 = *(a1 + 32);
  AXPerformBlockAsynchronouslyOnMainThread();
}

void sub_10010B9F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_10010BA10(uint64_t a1)
{
  [*(a1 + 32) _updateActiveCharacterSetFromCharacterMode:1 allowedCharacterModes:15 announceChange:0];
  v2 = *(a1 + 32);

  return [v2 resetSession];
}

void sub_10010C328(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, char a53)
{
  _Block_object_dispose(&a47, 8);
  _Block_object_dispose(&a53, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10010C390(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10010C3A8(uint64_t a1)
{
  v2 = [*(a1 + 32) recognitionEngine];
  v3 = [*(a1 + 32) recognitionCanvas];
  v7 = [v2 textRecognitionResultForDrawing:v3 options:0 shouldCancel:&stru_1001CB508];

  v4 = [v7 textRecognitionResultArray];
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

void sub_10010C45C(uint64_t a1)
{
  v2 = [*(a1 + 32) recognitionEngine];
  v3 = [v2 activeCharacterSet];
  v4 = [v3 characterIsMember:*(a1 + 48)];

  if ((v4 & 1) == 0)
  {
    v5 = VOTLogHandwriting();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = *(*(*(a1 + 40) + 8) + 40);
      v9 = 138543362;
      v10 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Suggested char: (%{public}@) is not a member of our char set, returning not recognized", &v9, 0xCu);
    }

    v7 = *(*(a1 + 40) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = 0;
  }
}

void sub_10010CF30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10010CF4C(id a1)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2050000000;
  v1 = qword_1001FF020;
  v8 = qword_1001FF020;
  if (!qword_1001FF020)
  {
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_10010E108;
    v4[3] = &unk_1001C8370;
    v4[4] = &v5;
    sub_10010E108(v4);
    v1 = v6[3];
  }

  v2 = v1;
  _Block_object_dispose(&v5, 8);
  v3 = [v1 sharedInstance];
}

void sub_10010D010(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_10010D028()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = qword_1001FF030;
  v7 = qword_1001FF030;
  if (!qword_1001FF030)
  {
    v1 = sub_10010E160();
    v5[3] = dlsym(v1, "UIKeyboardVariantStrings");
    qword_1001FF030 = v5[3];
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (!v0)
  {
    sub_1001311C0();
  }

  v2 = *v0;

  return v2;
}

void sub_10010D114(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10010D75C(uint64_t a1)
{
  v3 = [*(a1 + 32) _characterSetForHandwritingMode:*(a1 + 40)];
  v2 = [*(a1 + 32) recognitionEngine];
  [v2 setActiveCharacterSet:v3];
}

Class sub_10010DEF0(uint64_t a1)
{
  sub_10010DF48();
  result = objc_getClass("CHDrawing");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_10013124C();
  }

  qword_1001FF008 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_10010DF48()
{
  v0[0] = 0;
  if (!qword_1001FF010)
  {
    v0[1] = _NSConcreteStackBlock;
    v0[2] = 3221225472;
    v0[3] = sub_10010E03C;
    v0[4] = &unk_1001C78B0;
    v0[5] = v0;
    v1 = off_1001CB590;
    v2 = 0;
    qword_1001FF010 = _sl_dlopen();
  }

  if (!qword_1001FF010)
  {
    sub_1001312C8(v0);
  }

  if (v0[0])
  {
    free(v0[0]);
  }
}

uint64_t sub_10010E03C()
{
  result = _sl_dlopen();
  qword_1001FF010 = result;
  return result;
}

Class sub_10010E0B0(uint64_t a1)
{
  sub_10010DF48();
  result = objc_getClass("CHRecognizer");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_100131348();
  }

  qword_1001FF018 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class sub_10010E108(uint64_t a1)
{
  sub_10010E160();
  result = objc_getClass("UIKeyboardImpl");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_1001313C4();
  }

  qword_1001FF020 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_10010E160()
{
  v2[0] = 0;
  if (!qword_1001FF028)
  {
    v2[1] = _NSConcreteStackBlock;
    v2[2] = 3221225472;
    v2[3] = sub_10010E258;
    v2[4] = &unk_1001C78B0;
    v2[5] = v2;
    v3 = off_1001CB5A8;
    v4 = 0;
    qword_1001FF028 = _sl_dlopen();
  }

  v0 = qword_1001FF028;
  if (!qword_1001FF028)
  {
    sub_100131440(v2);
  }

  if (v2[0])
  {
    free(v2[0]);
  }

  return v0;
}

uint64_t sub_10010E258()
{
  result = _sl_dlopen();
  qword_1001FF028 = result;
  return result;
}

void *sub_10010E2CC(uint64_t a1)
{
  v2 = sub_10010E160();
  result = dlsym(v2, "UIKeyboardVariantStrings");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1001FF030 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_10010E31C(uint64_t a1)
{
  v2 = sub_10010E160();
  result = dlsym(v2, "UIKeyboardGetCurrentInputMode");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_1001FF038 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_10010E36C(uint64_t a1)
{
  v2 = sub_10010E160();
  result = dlsym(v2, "UIKeyboardRomanAccentVariants");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_1001FF040 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_10010E884(id a1)
{
  v1 = [[VOTSystemServerInstance alloc] _initServer];
  v2 = qword_1001FF048;
  qword_1001FF048 = v1;

  _objc_release_x1(v1, v2);
}

void sub_100110898(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v12 - 136), 8);
  _Unwind_Resume(a1);
}

void sub_1001108CC(uint64_t a1, void *a2)
{
  v3 = *(*(a1 + 40) + 8);
  if ((*(v3 + 24) & 1) == 0)
  {
    *(v3 + 24) = 1;
    v4 = *(a1 + 32);
    v5 = a2;
    v6 = [[AXIPCMessage alloc] initWithKey:7007 payload:v5];

    (*(v4 + 16))(v4, v6);
  }
}

void sub_10011096C(uint64_t a1, void *a2)
{
  v2 = *(*(a1 + 40) + 8);
  if ((*(v2 + 24) & 1) == 0)
  {
    *(v2 + 24) = 1;
    v8 = @"error";
    v9 = a2;
    v4 = a2;
    v5 = [NSDictionary dictionaryWithObjects:&v9 forKeys:&v8 count:1];
    v6 = *(a1 + 32);
    v7 = [[AXIPCMessage alloc] initWithKey:7007 payload:v5];
    (*(v6 + 16))(v6, v7);
  }
}

uint64_t sub_100110A58(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

intptr_t sub_100110A70(uint64_t a1)
{
  v2 = *(a1 + 64);
  if ((v2 - 1) < 2)
  {
    v3 = [*(a1 + 32) objectForKeyedSubscript:AXVoiceOverAutomationKeyRotorNames];
    if ([v3 count])
    {
      [*(a1 + 40) _modifyRotorItems:v3 shouldEnable:v2 == 1];
      v4 = *(a1 + 40);
      v5 = *(*(a1 + 56) + 8);
      obj = *(v5 + 40);
      [v4 _updateRotorsForElementWithErrorMessage:&obj];
      objc_storeStrong((v5 + 40), obj);
    }

    else
    {
      v8 = *(*(a1 + 56) + 8);
      v9 = *(v8 + 40);
      *(v8 + 40) = @"No rotor names provided";
    }
  }

  else if (v2 == 3)
  {
    +[VOTOutputManager clearPreviousSoundsPlayed];
  }

  else if (v2)
  {
    v6 = *(*(a1 + 56) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = @"Unknown automation command";
  }

  else
  {
    +[VOTOutputRequest clearPreviousRequests];
  }

  return dispatch_semaphore_signal(*(a1 + 48));
}

uint64_t sub_10011179C(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = qword_1001FF060;
  qword_1001FF060 = v1;

  return _objc_release_x1(v1, v2);
}

void sub_100112A88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100112AB8(uint64_t a1, void *a2)
{
  result = [a2 isHeader] ^ 1;
  *(*(*(a1 + 32) + 8) + 24) = (*(*(*(a1 + 32) + 8) + 24) | result) & 1;
  return result;
}

void sub_10011431C(uint64_t a1)
{
  v2 = [*(a1 + 32) eventQueue];
  [v2 addObject:*(a1 + 40)];
}

void sub_1001144C8(uint64_t a1)
{
  v2 = [*(a1 + 32) eventQueue];
  [v2 addObject:*(a1 + 40)];
}

void sub_1001146C0(uint64_t a1)
{
  v2 = *(a1 + 32);
  if ((v2[9] & 1) != 0 || (*(a1 + 48) & 1) != 0 || *(a1 + 49) == 1)
  {
    v3 = [v2 eventQueue];
    [v3 addObject:*(a1 + 40)];
  }
}

void sub_1001147C8(uint64_t a1)
{
  if (*(a1 + 40) == 1)
  {
    v2 = +[AXEventTapManager sharedManager];
    v9 = 0u;
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v3 = [*(a1 + 32) eventQueue];
    v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
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

          [v2 sendHIDSystemEvent:*(*(&v9 + 1) + 8 * v7) repostCreatorHIDEvent:1 senderID:0x8000000817319373];
          usleep(0x3E8u);
          v7 = v7 + 1;
        }

        while (v5 != v7);
        v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v5);
    }
  }

  v8 = [*(a1 + 32) eventQueue];
  [v8 removeAllObjects];
}

void sub_1001156A4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a2;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v27;
    v11 = kSCRCMathStringAttributeSpeakLiteralCharacters;
    v12 = kSCRCMathStringAttributeIsNonTechnicalText;
    v24 = kSCRCMathStringAttributeIsNonTechnicalText;
    v25 = kSCRCMathStringAttributeTreePosition;
    v23 = kSCRCMathStringAttributeSpeakWithPitchInflection;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v27 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v14 = *(*(&v26 + 1) + 8 * i);
        if ([v14 isEqualToString:v11])
        {
          [*(a1 + 32) addIndexesInRange:{a3, a4}];
          continue;
        }

        if ([v14 isEqualToString:v12])
        {
          v15 = *(a1 + 40);
          v16 = UIAccessibilityTokenIgnoreLeadingCommas;
          v17 = 0;
LABEL_10:
          [v15 setAttribute:v17 forKey:v16 withRange:{a3, a4}];
          continue;
        }

        if ([v14 isEqualToString:v25])
        {
          v18 = *(a1 + 40);
          v19 = [v7 objectForKey:v14];
          v20 = v18;
          v12 = v24;
          [v20 setAttribute:v19 forKey:UIAccessibilityTokenMathTreePosition withRange:{a3, a4}];
        }

        else if ([v14 isEqualToString:v23])
        {
          v21 = [v7 objectForKey:v14];
          v22 = [v21 integerValue];

          if (v22 == 1)
          {
            [*(a1 + 40) setAttribute:&__kCFBooleanTrue forKey:UIAccessibilityTokenLowPitch withRange:{a3, a4}];
            v12 = v24;
          }

          else
          {
            v12 = v24;
            if (v22 == 2)
            {
              v15 = *(a1 + 40);
              v16 = UIAccessibilityTokenHighPitch;
              v17 = &__kCFBooleanTrue;
              goto LABEL_10;
            }
          }
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v9);
  }
}

uint64_t sub_100115EB4(int a1, mach_msg_timeout_t a2, _DWORD *a3)
{
  memset(&reply_port_12[4], 0, 28);
  reply_port = 0;
  v6 = mig_get_reply_port();
  reply_port_4 = a1;
  reply_port_8 = v6;
  v11 = 5395;
  *reply_port_12 = 0x66D0D600000000;
  if (&_voucher_mach_msg_set)
  {
    voucher_mach_msg_set(&v11);
    v7 = reply_port_8;
  }

  else
  {
    v7 = v6;
  }

  v8 = mach_msg(&v11, 275, 0x18u, 0x30u, v7, a2, 0);
  v9 = v8;
  if ((v8 - 268435458) <= 0xE && ((1 << (v8 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(reply_port_8);
  }

  else
  {
    if (!v8)
    {
      if (*&reply_port_12[4] == 71)
      {
        v9 = 4294966988;
      }

      else if (*&reply_port_12[4] == 6738234)
      {
        if ((v11 & 0x80000000) == 0)
        {
          if (reply_port == 36)
          {
            v9 = 4294966996;
            if (*&reply_port_12[16])
            {
              if (reply_port_4)
              {
                v9 = 4294966996;
              }

              else
              {
                v9 = *&reply_port_12[16];
              }
            }
          }

          else
          {
            v9 = 4294966996;
          }

          goto LABEL_28;
        }

        v9 = 4294966996;
        if (*&reply_port_12[8] == 1 && reply_port == 40 && !reply_port_4 && *&reply_port_12[22] << 16 == 0x100000)
        {
          v9 = 0;
          *a3 = *&reply_port_12[12];
          return v9;
        }
      }

      else
      {
        v9 = 4294966995;
      }

LABEL_28:
      mach_msg_destroy(&v11);
      return v9;
    }

    mig_dealloc_reply_port(reply_port_8);
  }

  if ((v9 - 268435459) <= 1)
  {
    if ((v11 & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(mach_task_self_, reply_port_8);
    }

    goto LABEL_28;
  }

  return v9;
}

uint64_t sub_100116080()
{
  v0 = __chkstk_darwin();
  v45 = 0u;
  memset(v46, 0, sizeof(v46));
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v32 = 0u;
  v31 = 0u;
  v30 = 0u;
  v29 = 0u;
  v28 = 0u;
  v27 = 0u;
  v26 = 0u;
  v25 = 0u;
  v24 = 0u;
  v23 = 0u;
  v22 = 0u;
  v21 = 0u;
  v20 = 0u;
  v19 = 0u;
  memset(&msg.msgh_size, 0, 20);
  v14 = 1;
  v15 = v4;
  v16 = 16777472;
  v17 = v3;
  v18 = NDR_record;
  LODWORD(v19) = v5;
  if (v2 > 0x1000)
  {
    return 4294966989;
  }

  v7 = v3;
  v8 = v2;
  v9 = v1;
  v10 = v0;
  __memcpy_chk();
  v11 = (v8 + 3) & 0x3FFC;
  *(&msg + v11 + 60) = v7;
  msg.msgh_bits = -2147483629;
  msg.msgh_remote_port = v10;
  msg.msgh_local_port = 0;
  DWORD1(v19) = v8;
  msg.msgh_voucher_port = 0;
  msg.msgh_id = 6738135;
  if (&_voucher_mach_msg_set)
  {
    voucher_mach_msg_set(&msg);
  }

  v6 = mach_msg(&msg, 17, v11 + 64, 0, 0, v9, 0);
  if ((v6 - 268435459) <= 1)
  {
    if ((msg.msgh_bits & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(mach_task_self_, msg.msgh_local_port);
    }

    mach_msg_destroy(&msg);
  }

  return v6;
}

uint64_t sub_100116294(uint64_t a1, int a2)
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

uint64_t sub_1001162B4(uint64_t result, int a2, int a3)
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

void type metadata accessor for os_unfair_lock_s()
{
  if (!qword_1001FE728)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_1001FE728);
    }
  }
}

id sub_10011632C()
{
  result = [objc_allocWithZone(type metadata accessor for VOTMagnifierService()) init];
  qword_1001FF190 = result;
  return result;
}

uint64_t sub_100116434@<X0>(uint64_t a1@<X8>)
{
  sub_100117630(&qword_1001FE788);
  v3 = (__chkstk_darwin)();
  v5 = &v12[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v7 = &v12[-v6];
  v8 = OBJC_IVAR___VOTMagnifierService____lazy_storage___logger;
  swift_beginAccess();
  sub_10011767C(v1 + v8, v7);
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v7, 1, v9) != 1)
  {
    return (*(v10 + 32))(a1, v7, v9);
  }

  sub_1001176EC(v7);
  Logger.init(subsystem:category:)();
  (*(v10 + 16))(v5, a1, v9);
  (*(v10 + 56))(v5, 0, 1, v9);
  swift_beginAccess();
  sub_100117754(v5, v1 + v8);
  return swift_endAccess();
}

void sub_100116B54(void (*a1)(void))
{
  v3 = type metadata accessor for Logger();
  __chkstk_darwin(v3);
  v4 = *(v1 + OBJC_IVAR___VOTMagnifierService_service);
  a1();
}

id sub_100116E10()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for VOTMagnifierService()
{
  result = qword_1001FE768;
  if (!qword_1001FE768)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100116EE8()
{
  sub_100116F88();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_100116F88()
{
  if (!qword_1001FE778)
  {
    type metadata accessor for Logger();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1001FE778);
    }
  }
}

unint64_t sub_100116FE0(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1001170AC(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_1001175D4(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100117588(v11);
  return v7;
}

unint64_t sub_1001170AC(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_1001171B8(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = _StringObject.sharedUTF8.getter();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

char *sub_1001171B8(uint64_t a1, unint64_t a2)
{
  v3 = sub_100117204(a1, a2);
  sub_100117334(&off_1001CB810);
  return v3;
}

char *sub_100117204(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return &_swiftEmptyArrayStorage;
  }

  v6 = sub_100117420(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 32, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = _StringObject.sharedUTF8.getter();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 32, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = String.UTF8View._foreignCount()();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_100117420(v10, 0);
        result = _StringGuts._foreignCopyUTF8(into:)();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_100117334(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_100117494(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_100117420(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return &_swiftEmptyArrayStorage;
  }

  sub_100117630(&qword_1001FE780);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_100117494(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100117630(&qword_1001FE780);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_100117588(uint64_t a1)
{
  v1 = *(*(a1 + 24) - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_1001175D4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100117630(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_10011767C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100117630(&qword_1001FE788);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001176EC(uint64_t a1)
{
  v2 = sub_100117630(&qword_1001FE788);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100117754(uint64_t a1, uint64_t a2)
{
  v4 = sub_100117630(&qword_1001FE788);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001177E8(uint64_t a1)
{
  v3 = sub_100117630(&qword_1001FE850);
  __chkstk_darwin(v3 - 8);
  v5 = v10 - v4;
  v6 = OBJC_IVAR____TtC3vot11VOTSettings__systemLanguage;
  swift_beginAccess();
  sub_10012346C(v1 + v6, v5, &qword_1001FE850);
  v7 = sub_100123598(v5, a1);
  sub_10012408C(v5, &qword_1001FE850);
  if (v7)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    v10[-2] = v1;
    v10[-1] = a1;
    v10[2] = v1;
    sub_1001240EC(&qword_1001FE858, type metadata accessor for VOTSettings);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  else
  {
    sub_10012346C(a1, v5, &qword_1001FE850);
    swift_beginAccess();
    sub_100124008(v5, v1 + v6, &qword_1001FE850);
    swift_endAccess();
    [*(v1 + OBJC_IVAR____TtC3vot11VOTSettings_workspace) systemSpokenLanguageChanged:0];
    sub_10012408C(v5, &qword_1001FE850);
  }

  return sub_10012408C(a1, &qword_1001FE850);
}

uint64_t sub_100117A1C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100117630(&qword_1001FE850);
  __chkstk_darwin(v4 - 8);
  v6 = &v9 - v5;
  sub_10012346C(a2, &v9 - v5, &qword_1001FE850);
  v7 = OBJC_IVAR____TtC3vot11VOTSettings__systemLanguage;
  swift_beginAccess();
  sub_100124008(v6, a1 + v7, &qword_1001FE850);
  swift_endAccess();
  [*(a1 + OBJC_IVAR____TtC3vot11VOTSettings_workspace) systemSpokenLanguageChanged:0];
  return sub_10012408C(v6, &qword_1001FE850);
}

uint64_t sub_100117B44()
{
  v1 = v0;
  v2 = type metadata accessor for Locale();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100117630(&qword_1001FE850);
  __chkstk_darwin(v6 - 8);
  v8 = &v12 - v7;
  swift_getKeyPath();
  v13 = v0;
  sub_1001240EC(&qword_1001FE858, type metadata accessor for VOTSettings);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v9 = OBJC_IVAR____TtC3vot11VOTSettings__systemLanguage;
  swift_beginAccess();
  sub_10012346C(v1 + v9, v8, &qword_1001FE850);
  if ((*(v3 + 48))(v8, 1, v2))
  {
    sub_10012408C(v8, &qword_1001FE850);
    return 0;
  }

  else
  {
    (*(v3 + 16))(v5, v8, v2);
    sub_10012408C(v8, &qword_1001FE850);
    v11 = Locale.minimalCanonicLocaleIdentifier.getter();
    (*(v3 + 8))(v5, v2);
    return v11;
  }
}

uint64_t sub_100118264@<X0>(uint64_t *a1@<X1>, uint64_t *a2@<X2>, uint64_t a3@<X8>)
{
  swift_getKeyPath();
  v9 = v3;
  sub_1001240EC(&qword_1001FE858, type metadata accessor for VOTSettings);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v7 = *a1;
  swift_beginAccess();
  return sub_10012346C(v9 + v7, a3, a2);
}

uint64_t sub_100118474(uint64_t a1)
{
  v3 = sub_100117630(&qword_1001FE890);
  __chkstk_darwin(v3 - 8);
  v5 = v10 - v4;
  v6 = OBJC_IVAR____TtC3vot11VOTSettings__systemVoiceSelection;
  swift_beginAccess();
  sub_10012346C(v1 + v6, v5, &qword_1001FE890);
  v7 = sub_1001239C8(v5, a1);
  sub_10012408C(v5, &qword_1001FE890);
  if (v7)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    v10[-2] = v1;
    v10[-1] = a1;
    v10[2] = v1;
    sub_1001240EC(&qword_1001FE858, type metadata accessor for VOTSettings);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  else
  {
    sub_10012346C(a1, v5, &qword_1001FE890);
    swift_beginAccess();
    sub_10012392C(v5, v1 + v6, &qword_1001FE890);
    swift_endAccess();
  }

  return sub_10012408C(a1, &qword_1001FE890);
}

uint64_t sub_10011867C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X4>, uint64_t *a3@<X5>, uint64_t a4@<X8>)
{
  v7 = *a1;
  swift_getKeyPath();
  sub_1001240EC(&qword_1001FE858, type metadata accessor for VOTSettings);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v8 = *a2;
  swift_beginAccess();
  return sub_10012346C(v7 + v8, a4, a3);
}

uint64_t sub_100118760(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t (*a7)(char *))
{
  v10 = sub_100117630(a5);
  __chkstk_darwin(v10 - 8);
  v12 = &v14 - v11;
  sub_10012346C(a1, &v14 - v11, a5);
  return a7(v12);
}

id sub_100118BC0(uint64_t a1)
{
  v2 = sub_100117630(&qword_1001FE8C0);
  v3 = __chkstk_darwin(v2 - 8);
  v49 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v3);
  v47 = &v46 - v6;
  v7 = __chkstk_darwin(v5);
  v9 = &v46 - v8;
  __chkstk_darwin(v7);
  v11 = &v46 - v10;
  v12 = sub_100117630(&qword_1001FE890);
  v13 = __chkstk_darwin(v12 - 8);
  v48 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v46 - v15;
  v17 = type metadata accessor for AXSettings.VoiceOver.Activity();
  v18 = *(v17 - 8);
  v19 = *(v18 + 48);
  if (v19(a1, 1, v17) != 1)
  {
    sub_10012346C(a1, v11, &qword_1001FE8C0);
    if (v19(v11, 1, v17) == 1)
    {
      sub_10012408C(v11, &qword_1001FE8C0);
      v20 = type metadata accessor for VoiceSelection();
      (*(*(v20 - 8) + 56))(v16, 1, 1, v20);
    }

    else
    {
      AXSettings.VoiceOver.Activity.voiceSelection.getter();
      (*(v18 + 8))(v11, v17);
      v21 = type metadata accessor for VoiceSelection();
      if ((*(*(v21 - 8) + 48))(v16, 1, v21) != 1)
      {
        v31 = v16;
        goto LABEL_12;
      }
    }

    sub_10012408C(v16, &qword_1001FE890);
  }

  swift_getKeyPath();
  v22 = v51;
  v50 = a1;
  v23 = OBJC_IVAR____TtC3vot11VOTSettings___observationRegistrar;
  v53 = v51;
  sub_1001240EC(&qword_1001FE858, type metadata accessor for VOTSettings);
  v46 = v23;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v24 = OBJC_IVAR____TtC3vot11VOTSettings__currentActivity;
  swift_beginAccess();
  sub_10012346C(v22 + v24, v9, &qword_1001FE8C0);
  v25 = v19(v9, 1, v17);
  a1 = v50;
  sub_10012408C(v9, &qword_1001FE8C0);
  if (v25 != 1)
  {
    swift_getKeyPath();
    v26 = v51;
    v52 = v51;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v27 = v47;
    sub_10012346C(v26 + v24, v47, &qword_1001FE8C0);
    if (v19(v27, 1, v17))
    {
      sub_10012408C(v27, &qword_1001FE8C0);
      v28 = type metadata accessor for VoiceSelection();
      v29 = v48;
      (*(*(v28 - 8) + 56))(v48, 1, 1, v28);
LABEL_10:
      v31 = v29;
LABEL_12:
      sub_10012408C(v31, &qword_1001FE890);
      goto LABEL_13;
    }

    v29 = v48;
    AXSettings.VoiceOver.Activity.voiceSelection.getter();
    sub_10012408C(v27, &qword_1001FE8C0);
    v30 = type metadata accessor for VoiceSelection();
    if ((*(*(v30 - 8) + 48))(v29, 1, v30) == 1)
    {
      goto LABEL_10;
    }

    sub_10012408C(v29, &qword_1001FE890);
    v40 = *(v51 + OBJC_IVAR____TtC3vot11VOTSettings_workspace);
    v41 = [v40 previousRotorVoiceIdentifier];
    if (!v41)
    {
      AXSettings.VoiceOver.currentRotorVoiceIdentifier.getter();
      if (v44)
      {
        v45 = String._bridgeToObjectiveC()();
      }

      else
      {
        v45 = 0;
      }

      [v40 setPreviousRotorVoiceIdentifier:v45];

      return AXSettings.VoiceOver.currentRotorVoiceIdentifier.setter();
    }
  }

LABEL_13:
  result = (v19)(a1, 1, v17);
  if (result != 1)
  {
    swift_getKeyPath();
    v33 = v51;
    v52 = v51;
    sub_1001240EC(&qword_1001FE858, type metadata accessor for VOTSettings);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v34 = OBJC_IVAR____TtC3vot11VOTSettings__currentActivity;
    swift_beginAccess();
    v35 = v33 + v34;
    v36 = v49;
    sub_10012346C(v35, v49, &qword_1001FE8C0);
    v37 = v19(v36, 1, v17);
    result = sub_10012408C(v36, &qword_1001FE8C0);
    if (v37 == 1)
    {
      AXSettings.VoiceOver.currentRotorVoiceIdentifier.getter();
      if (v38)
      {
      }

      else
      {
        AXSettings.VoiceOver.currentRotorVoiceIdentifier.getter();
        if (v39)
        {
        }

        else
        {
          v42 = [*(v51 + OBJC_IVAR____TtC3vot11VOTSettings_workspace) previousRotorVoiceIdentifier];
          if (v42)
          {
            v43 = v42;
            static String._unconditionallyBridgeFromObjectiveC(_:)();
          }

          AXSettings.VoiceOver.currentRotorVoiceIdentifier.setter();
        }

        return [*(v51 + OBJC_IVAR____TtC3vot11VOTSettings_workspace) setPreviousRotorVoiceIdentifier:0];
      }
    }
  }

  return result;
}

uint64_t sub_100119690(uint64_t a1)
{
  v3 = sub_100117630(&qword_1001FE8C0);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = v13 - v7;
  v9 = OBJC_IVAR____TtC3vot11VOTSettings__currentActivity;
  swift_beginAccess();
  sub_10012346C(v1 + v9, v8, &qword_1001FE8C0);
  v10 = sub_100123CE8(v8, a1);
  sub_10012408C(v8, &qword_1001FE8C0);
  if (v10)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    v13[-2] = v1;
    v13[-1] = a1;
    v13[2] = v1;
    sub_1001240EC(&qword_1001FE858, type metadata accessor for VOTSettings);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  else
  {
    sub_10012346C(a1, v8, &qword_1001FE8C0);
    sub_10012346C(v1 + v9, v6, &qword_1001FE8C0);
    swift_beginAccess();
    sub_100124008(v8, v1 + v9, &qword_1001FE8C0);
    swift_endAccess();
    sub_100118BC0(v6);
    sub_10012408C(v6, &qword_1001FE8C0);
    sub_10012408C(v8, &qword_1001FE8C0);
  }

  return sub_10012408C(a1, &qword_1001FE8C0);
}

uint64_t sub_1001198F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100117630(&qword_1001FE8C0);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v12[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v9 = &v12[-v8];
  sub_10012346C(a2, &v12[-v8], &qword_1001FE8C0);
  v10 = OBJC_IVAR____TtC3vot11VOTSettings__currentActivity;
  swift_beginAccess();
  sub_10012346C(a1 + v10, v7, &qword_1001FE8C0);
  swift_beginAccess();
  sub_100124008(v9, a1 + v10, &qword_1001FE8C0);
  swift_endAccess();
  sub_100118BC0(v7);
  sub_10012408C(v7, &qword_1001FE8C0);
  return sub_10012408C(v9, &qword_1001FE8C0);
}

id sub_100119A58(uint64_t a1)
{
  v3 = sub_100117630(&qword_1001FE8C0);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v16 - v7;
  result = [*(v1 + OBJC_IVAR____TtC3vot11VOTSettings_workspace) elementManager];
  if (result)
  {
    v10 = [result determineActivityForElement:a1];
    swift_unknownObjectRelease();
    v11 = type metadata accessor for AXSettings.VoiceOver.Activity();
    v12 = *(*(v11 - 8) + 56);
    if (v10)
    {
      v13 = *(v11 - 8);
      v12(v6, 1, 1, v11);
      sub_1001240EC(&qword_1001FE900, &type metadata accessor for AXSettings.VoiceOver.Activity);
      dispatch thunk of static _ObjectiveCBridgeable._conditionallyBridgeFromObjectiveC(_:result:)();

      if ((*(v13 + 48))(v6, 1, v11) == 1)
      {
        v14 = v8;
        v15 = 1;
      }

      else
      {
        (*(v13 + 32))(v8, v6, v11);
        v14 = v8;
        v15 = 0;
      }

      v12(v14, v15, 1, v11);
    }

    else
    {
      v12(v8, 1, 1, v11);
    }

    return sub_100119690(v8);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100119D4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[18] = a3;
  v4[19] = a4;
  v4[17] = a2;
  v5 = type metadata accessor for VoiceSelection();
  v4[20] = v5;
  v4[21] = *(v5 - 8);
  v4[22] = swift_task_alloc();
  v4[23] = sub_100117630(&qword_1001FE8D0);
  v4[24] = swift_task_alloc();
  v4[25] = sub_100117630(&qword_1001FE878);
  v4[26] = swift_task_alloc();
  v4[27] = swift_task_alloc();
  sub_100117630(&qword_1001FE8D8);
  v4[28] = swift_task_alloc();
  v4[29] = swift_task_alloc();
  v6 = sub_100117630(&qword_1001FE8E0);
  v4[30] = v6;
  v4[31] = *(v6 - 8);
  v4[32] = swift_task_alloc();
  sub_100117630(&qword_1001FE850);
  v4[33] = swift_task_alloc();
  v4[34] = swift_task_alloc();
  v4[35] = swift_task_alloc();
  v4[36] = swift_task_alloc();
  v4[37] = swift_task_alloc();
  v4[38] = swift_task_alloc();
  v7 = sub_100117630(&qword_1001FE8E8);
  v4[39] = v7;
  v4[40] = *(v7 - 8);
  v4[41] = swift_task_alloc();
  v8 = sub_100117630(&qword_1001FE8F0);
  v4[42] = v8;
  v4[43] = *(v8 - 8);
  v4[44] = swift_task_alloc();
  sub_100117630(&qword_1001FE890);
  v4[45] = swift_task_alloc();
  v4[46] = swift_task_alloc();
  v4[47] = swift_task_alloc();
  v4[48] = swift_task_alloc();
  v4[49] = swift_task_alloc();
  v4[50] = swift_task_alloc();
  v9 = type metadata accessor for Locale();
  v4[51] = v9;
  v4[52] = *(v9 - 8);
  v4[53] = swift_task_alloc();
  v4[54] = swift_task_alloc();
  v4[55] = swift_task_alloc();

  return _swift_task_switch(sub_10011A16C, 0, 0);
}

uint64_t sub_10011A16C()
{
  v0[56] = *(v0[19] + OBJC_IVAR____TtC3vot11VOTSettings_settings);
  AXSettings.VoiceOver.defaultVoiceSelectionStream.getter();
  v1 = swift_task_alloc();
  v0[57] = v1;
  *v1 = v0;
  v1[1] = sub_10011A228;
  v2 = v0[44];
  v3 = v0[39];

  return AXFetchableStream.callAsFunction()(v2, v3);
}

uint64_t sub_10011A228()
{
  v1 = *v0;
  v2 = *(*v0 + 328);
  v3 = *(*v0 + 320);
  v4 = *(*v0 + 312);

  v5 = *(v3 + 8);
  *(v1 + 464) = v5;
  *(v1 + 472) = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v5(v2, v4);

  return _swift_task_switch(sub_10011A38C, 0, 0);
}

uint64_t sub_10011A38C()
{
  v20 = v0[58];
  v1 = v0[55];
  v2 = v0[51];
  v3 = v0[52];
  v4 = v0[50];
  v5 = v0[44];
  v6 = v0[41];
  v7 = v0[38];
  v19 = v0[39];
  v17 = v0[49];
  v18 = v0[17];
  v8 = *(v0[42] + 48);
  v9 = v3[4];
  v0[60] = v9;
  v0[61] = (v3 + 4) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v9(v1, v5, v2);
  sub_10012452C(v5 + v8, v4, &qword_1001FE890);
  v10 = v3[2];
  v0[62] = v10;
  v0[63] = (v3 + 2) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v10(v7, v1, v2);
  v11 = v3[7];
  v0[64] = v11;
  v0[65] = (v3 + 7) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v11(v7, 0, 1, v2);
  sub_1001177E8(v7);
  sub_10012346C(v4, v17, &qword_1001FE890);
  v12 = sub_100118474(v17);
  v18(v12);
  AXSettings.VoiceOver.defaultVoiceSelectionStream.getter();
  AXFetchableStream.makeAsyncIterator()();
  v20(v6, v19);
  v0[66] = OBJC_IVAR____TtC3vot11VOTSettings___observationRegistrar;
  v0[67] = OBJC_IVAR____TtC3vot11VOTSettings__systemLanguage;
  v0[68] = OBJC_IVAR____TtC3vot11VOTSettings_workspace;
  v0[69] = OBJC_IVAR____TtC3vot11VOTSettings__systemVoiceSelection;
  swift_beginAccess();
  swift_beginAccess();
  v0[70] = 0;
  v13 = swift_task_alloc();
  v0[71] = v13;
  *v13 = v0;
  v13[1] = sub_10011A600;
  v14 = v0[30];
  v15 = v0[28];

  return AsyncStream.Iterator.next(isolation:)(v15, 0, 0, v14);
}

uint64_t sub_10011A600()
{

  return _swift_task_switch(sub_10011A6FC, 0, 0);
}

uint64_t sub_10011A6FC()
{
  v1 = *(v0 + 336);
  v2 = *(v0 + 344);
  v3 = *(v0 + 232);
  sub_10012452C(*(v0 + 224), v3, &qword_1001FE8D8);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = *(v0 + 440);
    v5 = *(v0 + 416);
    v7 = *(v0 + 400);
    v6 = *(v0 + 408);
    (*(*(v0 + 248) + 8))(*(v0 + 256), *(v0 + 240));
    sub_10012408C(v7, &qword_1001FE890);
    (*(v5 + 8))(v4, v6);

    v8 = *(v0 + 8);

    return v8();
  }

  v108 = *(v0 + 536);
  v106 = *(v0 + 512);
  v105 = *(v0 + 496);
  v10 = *(v0 + 432);
  v11 = *(v0 + 408);
  v12 = *(v0 + 416);
  v13 = *(v0 + 384);
  v14 = *(v0 + 296);
  v15 = *(v0 + 232);
  v16 = *(v0 + 216);
  v111 = (v0 + 216);
  v104 = *(v0 + 200);
  v17 = *(v0 + 152);
  v18 = *(*(v0 + 336) + 48);
  (*(v0 + 480))(v10, v15, v11);
  v19 = v15 + v18;
  v20 = v12;
  sub_10012452C(v19, v13, &qword_1001FE890);
  swift_getKeyPath();
  *(v0 + 112) = v17;
  sub_1001240EC(&qword_1001FE858, type metadata accessor for VOTSettings);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v105(v14, v10, v11);
  v106(v14, 0, 1, v11);
  v21 = *(v104 + 48);
  sub_10012346C(v17 + v108, v16, &qword_1001FE850);
  sub_10012346C(v14, v16 + v21, &qword_1001FE850);
  v22 = *(v20 + 48);
  v23 = v22(v16, 1, v11);
  v24 = *(v0 + 408);
  if (v23 == 1)
  {
    sub_10012408C(*(v0 + 296), &qword_1001FE850);
    if (v22(v16 + v21, 1, v24) == 1)
    {
      goto LABEL_22;
    }

    goto LABEL_10;
  }

  sub_10012346C(*(v0 + 216), *(v0 + 288), &qword_1001FE850);
  if (v22(v16 + v21, 1, v24) == 1)
  {
    v25 = *(v0 + 408);
    v26 = *(v0 + 416);
    v27 = *(v0 + 288);
    sub_10012408C(*(v0 + 296), &qword_1001FE850);
    (*(v26 + 8))(v27, v25);
LABEL_10:
    v109 = v22;
    sub_10012408C(*v111, &qword_1001FE878);
    goto LABEL_11;
  }

  v109 = v22;
  v46 = *(v0 + 416);
  v45 = *(v0 + 424);
  v47 = *(v0 + 408);
  v49 = *(v0 + 288);
  v48 = *(v0 + 296);
  v112 = *(v0 + 216);
  (*(v0 + 480))(v45, v16 + v21, v47);
  sub_1001240EC(&qword_1001FE8B0, &type metadata accessor for Locale);
  v50 = dispatch thunk of static Equatable.== infix(_:_:)();
  v51 = *(v46 + 8);
  v51(v45, v47);
  sub_10012408C(v48, &qword_1001FE850);
  v51(v49, v47);
  sub_10012408C(v112, &qword_1001FE850);
  if (v50)
  {
    v110 = *(v0 + 560);
    goto LABEL_24;
  }

LABEL_11:
  v107 = *(v0 + 536);
  v28 = *(v0 + 512);
  v29 = *(v0 + 408);
  v111 = (v0 + 280);
  v31 = *(v0 + 272);
  v30 = *(v0 + 280);
  v33 = *(v0 + 200);
  v32 = *(v0 + 208);
  v34 = *(v0 + 152);
  (*(v0 + 496))(v30, *(v0 + 432), v29);
  v28(v30, 0, 1, v29);
  sub_10012346C(v34 + v107, v31, &qword_1001FE850);
  v35 = *(v33 + 48);
  sub_10012346C(v31, v32, &qword_1001FE850);
  sub_10012346C(v30, v32 + v35, &qword_1001FE850);
  v36 = v109(v32, 1, v29);
  v37 = *(v0 + 408);
  if (v36 == 1)
  {
    sub_10012408C(*(v0 + 272), &qword_1001FE850);
    if (v109(v32 + v35, 1, v37) == 1)
    {
      sub_10012408C(*(v0 + 208), &qword_1001FE850);
LABEL_21:
      v60 = *(v0 + 544);
      v61 = *(v0 + 536);
      v62 = *(v0 + 304);
      v63 = *(v0 + 152);
      sub_10012346C(*(v0 + 280), v62, &qword_1001FE850);
      swift_beginAccess();
      sub_100124008(v62, v63 + v61, &qword_1001FE850);
      swift_endAccess();
      [*(v63 + v60) systemSpokenLanguageChanged:0];
      sub_10012408C(v62, &qword_1001FE850);
LABEL_22:
      v41 = *(v0 + 560);
      goto LABEL_23;
    }

    goto LABEL_16;
  }

  sub_10012346C(*(v0 + 208), *(v0 + 264), &qword_1001FE850);
  if (v109(v32 + v35, 1, v37) == 1)
  {
    v39 = *(v0 + 408);
    v38 = *(v0 + 416);
    v40 = *(v0 + 264);
    sub_10012408C(*(v0 + 272), &qword_1001FE850);
    (*(v38 + 8))(v40, v39);
LABEL_16:
    sub_10012408C(*(v0 + 208), &qword_1001FE878);
    goto LABEL_17;
  }

  v52 = *(v0 + 416);
  v53 = *(v0 + 424);
  v54 = *(v0 + 408);
  v56 = *(v0 + 264);
  v55 = *(v0 + 272);
  v57 = *(v0 + 208);
  (*(v0 + 480))(v53, v32 + v35, v54);
  sub_1001240EC(&qword_1001FE8B0, &type metadata accessor for Locale);
  v58 = dispatch thunk of static Equatable.== infix(_:_:)();
  v59 = *(v52 + 8);
  v59(v53, v54);
  sub_10012408C(v55, &qword_1001FE850);
  v59(v56, v54);
  sub_10012408C(v57, &qword_1001FE850);
  if (v58)
  {
    goto LABEL_21;
  }

LABEL_17:
  v41 = *(v0 + 560);
  v42 = *(v0 + 280);
  v43 = *(v0 + 152);
  swift_getKeyPath();
  v44 = swift_task_alloc();
  *(v44 + 16) = v43;
  *(v44 + 24) = v42;
  *(v0 + 120) = v43;
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

LABEL_23:
  v110 = v41;
  sub_10012408C(*v111, &qword_1001FE850);
LABEL_24:
  v64 = *(v0 + 552);
  v65 = *(v0 + 376);
  v66 = *(v0 + 368);
  v68 = *(v0 + 184);
  v67 = *(v0 + 192);
  v69 = *(v0 + 168);
  v113 = *(v0 + 160);
  v70 = *(v0 + 152);
  sub_10012346C(*(v0 + 384), v65, &qword_1001FE890);
  sub_10012346C(v70 + v64, v66, &qword_1001FE890);
  v71 = *(v68 + 48);
  sub_10012346C(v66, v67, &qword_1001FE890);
  sub_10012346C(v65, v67 + v71, &qword_1001FE890);
  v72 = *(v69 + 48);
  if (v72(v67, 1, v113) == 1)
  {
    v73 = *(v0 + 160);
    sub_10012408C(*(v0 + 368), &qword_1001FE890);
    if (v72(v67 + v71, 1, v73) == 1)
    {
      sub_10012408C(*(v0 + 192), &qword_1001FE890);
LABEL_32:
      v94 = *(v0 + 552);
      v95 = *(v0 + 432);
      v96 = *(v0 + 408);
      v97 = *(v0 + 416);
      v98 = *(v0 + 392);
      v99 = *(v0 + 376);
      v100 = *(v0 + 152);
      sub_10012408C(*(v0 + 384), &qword_1001FE890);
      (*(v97 + 8))(v95, v96);
      sub_10012346C(v99, v98, &qword_1001FE890);
      swift_beginAccess();
      sub_10012392C(v98, v100 + v94, &qword_1001FE890);
      swift_endAccess();
      v87 = v110;
      goto LABEL_33;
    }

    goto LABEL_29;
  }

  v74 = *(v0 + 160);
  sub_10012346C(*(v0 + 192), *(v0 + 360), &qword_1001FE890);
  v75 = v72(v67 + v71, 1, v74);
  v76 = *(v0 + 360);
  v77 = *(v0 + 368);
  if (v75 == 1)
  {
    v79 = *(v0 + 160);
    v78 = *(v0 + 168);
    sub_10012408C(*(v0 + 368), &qword_1001FE890);
    (*(v78 + 8))(v76, v79);
LABEL_29:
    sub_10012408C(*(v0 + 192), &qword_1001FE8D0);
    goto LABEL_30;
  }

  v88 = *(v0 + 192);
  v89 = *(v0 + 168);
  v90 = *(v0 + 176);
  v91 = *(v0 + 160);
  (*(v89 + 32))(v90, v67 + v71, v91);
  sub_1001240EC(&qword_1001FE8F8, &type metadata accessor for VoiceSelection);
  v92 = dispatch thunk of static Equatable.== infix(_:_:)();
  v93 = *(v89 + 8);
  v93(v90, v91);
  sub_10012408C(v77, &qword_1001FE890);
  v93(v76, v91);
  sub_10012408C(v88, &qword_1001FE890);
  if (v92)
  {
    goto LABEL_32;
  }

LABEL_30:
  v80 = *(v0 + 432);
  v82 = *(v0 + 408);
  v81 = *(v0 + 416);
  v83 = *(v0 + 376);
  v84 = *(v0 + 384);
  v85 = *(v0 + 152);
  swift_getKeyPath();
  v86 = swift_task_alloc();
  *(v86 + 16) = v85;
  *(v86 + 24) = v83;
  *(v0 + 128) = v85;
  v87 = v110;
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  sub_10012408C(v84, &qword_1001FE890);
  (*(v81 + 8))(v80, v82);

LABEL_33:
  sub_10012408C(*(v0 + 376), &qword_1001FE890);
  *(v0 + 560) = v87;
  v101 = swift_task_alloc();
  *(v0 + 568) = v101;
  *v101 = v0;
  v101[1] = sub_10011A600;
  v102 = *(v0 + 240);
  v103 = *(v0 + 224);

  return AsyncStream.Iterator.next(isolation:)(v103, 0, 0, v102);
}

uint64_t sub_10011B48C(uint64_t a1)
{
  v3 = sub_100117630(&qword_1001FE850);
  __chkstk_darwin(v3 - 8);
  v5 = v10 - v4;
  v6 = OBJC_IVAR____TtC3vot11VOTSettings___overrideLanguage;
  swift_beginAccess();
  sub_10012346C(v1 + v6, v5, &qword_1001FE850);
  v7 = sub_100123598(v5, a1);
  sub_10012408C(v5, &qword_1001FE850);
  if (v7)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    v10[-2] = v1;
    v10[-1] = a1;
    v10[2] = v1;
    sub_1001240EC(&qword_1001FE858, type metadata accessor for VOTSettings);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  else
  {
    sub_10012346C(a1, v5, &qword_1001FE850);
    swift_beginAccess();
    sub_10012392C(v5, v1 + v6, &qword_1001FE850);
    swift_endAccess();
  }

  return sub_10012408C(a1, &qword_1001FE850);
}

uint64_t sub_10011B694(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t *a5)
{
  v9 = sub_100117630(a3);
  __chkstk_darwin(v9 - 8);
  v11 = &v14 - v10;
  sub_10012346C(a2, &v14 - v10, a3);
  v12 = *a5;
  swift_beginAccess();
  sub_10012392C(v11, a1 + v12, a3);
  return swift_endAccess();
}

id sub_10011B790(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();
  v6 = v5;

  if (v6)
  {
    v7 = String._bridgeToObjectiveC()();
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t sub_10011B810()
{
  v1 = v0;
  v2 = sub_100117630(&qword_1001FE850);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v21 - v6;
  v8 = type metadata accessor for Locale();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v22 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v21 - v12;
  swift_getKeyPath();
  v24 = v0;
  sub_1001240EC(&qword_1001FE858, type metadata accessor for VOTSettings);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v14 = OBJC_IVAR____TtC3vot11VOTSettings___overrideLanguage;
  swift_beginAccess();
  sub_10012346C(v1 + v14, v7, &qword_1001FE850);
  v15 = *(v9 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    v21 = v9;
    sub_10012408C(v7, &qword_1001FE850);
    swift_getKeyPath();
    v23 = v1;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v16 = OBJC_IVAR____TtC3vot11VOTSettings__selectedLanguage;
    swift_beginAccess();
    sub_10012346C(v1 + v16, v5, &qword_1001FE850);
    if (v15(v5, 1, v8))
    {
      sub_10012408C(v5, &qword_1001FE850);
      return 0;
    }

    else
    {
      v18 = v21;
      v19 = v22;
      (*(v21 + 16))(v22, v5, v8);
      sub_10012408C(v5, &qword_1001FE850);
      v17 = Locale.minimalCanonicLocaleIdentifier.getter();
      (*(v18 + 8))(v19, v8);
    }
  }

  else
  {
    (*(v9 + 32))(v13, v7, v8);
    v17 = Locale.minimalCanonicLocaleIdentifier.getter();
    (*(v9 + 8))(v13, v8);
  }

  return v17;
}

uint64_t sub_10011BD18(uint64_t a1)
{
  v3 = sub_100117630(&qword_1001FE850);
  __chkstk_darwin(v3 - 8);
  v5 = v10 - v4;
  v6 = OBJC_IVAR____TtC3vot11VOTSettings__selectedLanguage;
  swift_beginAccess();
  sub_10012346C(v1 + v6, v5, &qword_1001FE850);
  v7 = sub_100123598(v5, a1);
  sub_10012408C(v5, &qword_1001FE850);
  if (v7)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    v10[-2] = v1;
    v10[-1] = a1;
    v10[2] = v1;
    sub_1001240EC(&qword_1001FE858, type metadata accessor for VOTSettings);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  else
  {
    sub_10012346C(a1, v5, &qword_1001FE850);
    swift_beginAccess();
    sub_100124008(v5, v1 + v6, &qword_1001FE850);
    swift_endAccess();
    [*(v1 + OBJC_IVAR____TtC3vot11VOTSettings_workspace) _preferencesSelectedLanguageChanged];
    sub_10012408C(v5, &qword_1001FE850);
  }

  return sub_10012408C(a1, &qword_1001FE850);
}

uint64_t sub_10011BF48(uint64_t a1, uint64_t a2)
{
  v4 = sub_100117630(&qword_1001FE850);
  __chkstk_darwin(v4 - 8);
  v6 = &v9 - v5;
  sub_10012346C(a2, &v9 - v5, &qword_1001FE850);
  v7 = OBJC_IVAR____TtC3vot11VOTSettings__selectedLanguage;
  swift_beginAccess();
  sub_100124008(v6, a1 + v7, &qword_1001FE850);
  swift_endAccess();
  [*(a1 + OBJC_IVAR____TtC3vot11VOTSettings_workspace) _preferencesSelectedLanguageChanged];
  return sub_10012408C(v6, &qword_1001FE850);
}

uint64_t sub_10011C054(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[21] = a3;
  v4[22] = a4;
  v4[20] = a2;
  v4[23] = sub_100117630(&qword_1001FE878);
  v4[24] = swift_task_alloc();
  v4[25] = swift_task_alloc();
  v5 = type metadata accessor for Locale.LanguageCode();
  v4[26] = v5;
  v4[27] = *(v5 - 8);
  v4[28] = swift_task_alloc();
  v4[29] = sub_100117630(&qword_1001FE880);
  v4[30] = swift_task_alloc();
  sub_100117630(&qword_1001FE888);
  v4[31] = swift_task_alloc();
  v4[32] = swift_task_alloc();
  v4[33] = swift_task_alloc();
  v6 = type metadata accessor for Locale.Language();
  v4[34] = v6;
  v4[35] = *(v6 - 8);
  v4[36] = swift_task_alloc();
  sub_100117630(&qword_1001FE850);
  v4[37] = swift_task_alloc();
  v4[38] = swift_task_alloc();
  v4[39] = swift_task_alloc();
  v4[40] = swift_task_alloc();
  v4[41] = swift_task_alloc();
  v4[42] = swift_task_alloc();
  v4[43] = swift_task_alloc();
  v7 = type metadata accessor for Locale();
  v4[44] = v7;
  v4[45] = *(v7 - 8);
  v4[46] = swift_task_alloc();
  v4[47] = swift_task_alloc();
  v4[48] = swift_task_alloc();
  v8 = type metadata accessor for CoreSynthesizer.Voice.Trait();
  v4[49] = v8;
  v4[50] = *(v8 - 8);
  v4[51] = swift_task_alloc();
  sub_100117630(&qword_1001FE840);
  v4[52] = swift_task_alloc();
  v4[53] = swift_task_alloc();
  v9 = type metadata accessor for CoreSynthesizer.Voice();
  v4[54] = v9;
  v4[55] = *(v9 - 8);
  v4[56] = swift_task_alloc();
  v4[57] = swift_task_alloc();
  v10 = sub_100117630(&qword_1001FE890);
  v4[58] = v10;
  v4[59] = *(v10 - 8);
  v4[60] = swift_task_alloc();
  v11 = type metadata accessor for VoiceSelection();
  v4[61] = v11;
  v4[62] = *(v11 - 8);
  v4[63] = swift_task_alloc();
  sub_100117630(&qword_1001FE898);
  v4[64] = swift_task_alloc();
  v12 = sub_100117630(&qword_1001FE8A0);
  v4[65] = v12;
  v4[66] = *(v12 - 8);
  v4[67] = swift_task_alloc();
  v13 = sub_100117630(&qword_1001FE8A8);
  v4[68] = v13;
  v4[69] = *(v13 - 8);
  v4[70] = swift_task_alloc();

  return _swift_task_switch(sub_10011C610, 0, 0);
}

uint64_t sub_10011C610()
{
  v2 = v0[21];
  v1 = v0[22];
  v3 = v0[20];
  *(swift_allocObject() + 16) = v3;
  v4 = v3;
  axObservationTrackingStream<A>(_:)();

  AsyncStream.makeAsyncIterator()();
  v0[71] = OBJC_IVAR____TtC3vot11VOTSettings_resolver;
  v0[72] = OBJC_IVAR____TtC3vot11VOTSettings__selectedLanguage;
  v0[73] = OBJC_IVAR____TtC3vot11VOTSettings___observationRegistrar;
  v0[74] = OBJC_IVAR____TtC3vot11VOTSettings_workspace;
  swift_beginAccess();
  v0[77] = v1;
  v0[76] = v2;
  v0[75] = 0;
  v5 = swift_task_alloc();
  v0[78] = v5;
  *v5 = v0;
  v5[1] = sub_10011C79C;
  v6 = v0[65];
  v7 = v0[64];

  return AsyncStream.Iterator.next(isolation:)(v7, 0, 0, v6);
}

uint64_t sub_10011C79C()
{

  return _swift_task_switch(sub_10011C898, 0, 0);
}

uint64_t sub_10011C898()
{
  v1 = v0[64];
  if ((*(v0[59] + 48))(v1, 1, v0[58]) == 1)
  {
    v2 = v0[70];
    v3 = v0[69];
    v4 = v0[68];
    v5 = v0[67];
    v6 = v0[66];
    v7 = v0[65];
    sub_100123260(v0[76]);
    (*(v6 + 8))(v5, v7);
    (*(v3 + 8))(v2, v4);

    v8 = v0[1];

    return v8();
  }

  v10 = v0[61];
  v11 = v0[62];
  v12 = v0[60];
  sub_10012452C(v1, v12, &qword_1001FE890);
  if ((*(v11 + 48))(v12, 1, v10) == 1)
  {
    sub_10012408C(v0[60], &qword_1001FE890);
    goto LABEL_12;
  }

  (*(v0[62] + 32))(v0[63], v0[60], v0[61]);
  v13 = VoiceSelection.voiceId.getter();
  v0[79] = v14;
  if (!v14)
  {
    (*(v0[62] + 8))(v0[63], v0[61]);
LABEL_12:
    v19 = v0[72];
    v20 = v0[45];
    v56 = v0[44];
    v22 = v0[38];
    v21 = v0[39];
    v24 = v0[23];
    v23 = v0[24];
    v25 = v0[20];
    (*(v20 + 56))(v21, 1, 1);
    sub_10012346C(v25 + v19, v22, &qword_1001FE850);
    v26 = *(v24 + 48);
    sub_10012346C(v22, v23, &qword_1001FE850);
    sub_10012346C(v21, v23 + v26, &qword_1001FE850);
    v27 = *(v20 + 48);
    v28 = v27(v23, 1, v56);
    v29 = v0[44];
    if (v28 == 1)
    {
      sub_10012408C(v0[38], &qword_1001FE850);
      if (v27(v23 + v26, 1, v29) == 1)
      {
        sub_10012408C(v0[24], &qword_1001FE850);
LABEL_20:
        v45 = v0[74];
        v46 = v0[72];
        v47 = v0[40];
        v48 = v0[20];
        sub_10012346C(v0[39], v47, &qword_1001FE850);
        swift_beginAccess();
        sub_100124008(v47, v48 + v46, &qword_1001FE850);
        swift_endAccess();
        [*(v48 + v45) _preferencesSelectedLanguageChanged];
        sub_10012408C(v47, &qword_1001FE850);
        v33 = v0[75];
        goto LABEL_21;
      }
    }

    else
    {
      sub_10012346C(v0[24], v0[37], &qword_1001FE850);
      if (v27(v23 + v26, 1, v29) != 1)
      {
        v38 = v0[45];
        v37 = v0[46];
        v39 = v0[44];
        v41 = v0[37];
        v40 = v0[38];
        v42 = v0[24];
        (*(v38 + 32))(v37, v23 + v26, v39);
        sub_1001240EC(&qword_1001FE8B0, &type metadata accessor for Locale);
        v43 = dispatch thunk of static Equatable.== infix(_:_:)();
        v44 = *(v38 + 8);
        v44(v37, v39);
        sub_10012408C(v40, &qword_1001FE850);
        v44(v41, v39);
        sub_10012408C(v42, &qword_1001FE850);
        if (v43)
        {
          goto LABEL_20;
        }

LABEL_18:
        v33 = v0[75];
        v34 = v0[39];
        v35 = v0[20];
        swift_getKeyPath();
        v36 = swift_task_alloc();
        *(v36 + 16) = v35;
        *(v36 + 24) = v34;
        v0[18] = v35;
        sub_1001240EC(&qword_1001FE858, type metadata accessor for VOTSettings);
        ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

LABEL_21:
        v49 = v0[76];
        sub_10012408C(v0[39], &qword_1001FE850);
        if (v49)
        {
          v50 = v0[76];

          v50(v51);
          sub_100123260(v50);
          sub_100123260(v50);
        }

        v0[76] = 0;
        v0[77] = 0;
        v0[75] = v33;
        v52 = swift_task_alloc();
        v0[78] = v52;
        *v52 = v0;
        v52[1] = sub_10011C79C;
        v53 = v0[65];
        v54 = v0[64];

        return AsyncStream.Iterator.next(isolation:)(v54, 0, 0, v53);
      }

      v30 = v0[44];
      v31 = v0[45];
      v32 = v0[37];
      sub_10012408C(v0[38], &qword_1001FE850);
      (*(v31 + 8))(v32, v30);
    }

    sub_10012408C(v0[24], &qword_1001FE878);
    goto LABEL_18;
  }

  v15 = v13;
  v16 = v14;
  v0[80] = *(v0[20] + v0[71]);
  v55 = (&async function pointer to dispatch thunk of VoiceResolver.voice(forIdentifier:) + async function pointer to dispatch thunk of VoiceResolver.voice(forIdentifier:));
  v17 = swift_task_alloc();
  v0[81] = v17;
  *v17 = v0;
  v17[1] = sub_10011D0BC;
  v18 = v0[53];

  return v55(v18, v15, v16);
}

uint64_t sub_10011D0BC()
{

  return _swift_task_switch(sub_10011D1D4, 0, 0);
}

uint64_t sub_10011D1D4()
{
  v1 = v0[54];
  v2 = v0[55];
  v3 = v0[53];
  v4 = *(v2 + 48);
  v0[82] = v4;
  v0[83] = (v2 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v4(v3, 1, v1) == 1)
  {
    (*(v0[62] + 8))(v0[63], v0[61]);
    sub_10012408C(v3, &qword_1001FE840);
    goto LABEL_9;
  }

  v5 = v0[57];
  v7 = v0[50];
  v6 = v0[51];
  v8 = v0[49];
  v9 = *(v2 + 32);
  v0[84] = v9;
  v0[85] = (v2 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v9(v5, v3, v1);
  static CoreSynthesizer.Voice.Trait.installed.getter();
  v10 = CoreSynthesizer.Voice.has(_:)();
  (*(v7 + 8))(v6, v8);
  v11 = v0[63];
  if ((v10 & 1) == 0)
  {
    v19 = v0[61];
    v20 = v0[62];
    (*(v0[55] + 8))(v0[57], v0[54]);
    (*(v20 + 8))(v11, v19);
LABEL_9:
    v21 = v0[72];
    v22 = v0[45];
    v61 = v0[44];
    v24 = v0[38];
    v23 = v0[39];
    v26 = v0[23];
    v25 = v0[24];
    v27 = v0[20];
    (*(v22 + 56))(v23, 1, 1);
    sub_10012346C(v27 + v21, v24, &qword_1001FE850);
    v28 = *(v26 + 48);
    sub_10012346C(v24, v25, &qword_1001FE850);
    sub_10012346C(v23, v25 + v28, &qword_1001FE850);
    v29 = *(v22 + 48);
    v30 = v29(v25, 1, v61);
    v31 = v0[44];
    if (v30 == 1)
    {
      sub_10012408C(v0[38], &qword_1001FE850);
      if (v29(v25 + v28, 1, v31) == 1)
      {
        sub_10012408C(v0[24], &qword_1001FE850);
LABEL_17:
        v47 = v0[74];
        v48 = v0[72];
        v49 = v0[40];
        v50 = v0[20];
        sub_10012346C(v0[39], v49, &qword_1001FE850);
        swift_beginAccess();
        sub_100124008(v49, v50 + v48, &qword_1001FE850);
        swift_endAccess();
        [*(v50 + v47) _preferencesSelectedLanguageChanged];
        sub_10012408C(v49, &qword_1001FE850);
        v35 = v0[75];
        goto LABEL_18;
      }
    }

    else
    {
      sub_10012346C(v0[24], v0[37], &qword_1001FE850);
      if (v29(v25 + v28, 1, v31) != 1)
      {
        v40 = v0[45];
        v39 = v0[46];
        v41 = v0[44];
        v43 = v0[37];
        v42 = v0[38];
        v44 = v0[24];
        (*(v40 + 32))(v39, v25 + v28, v41);
        sub_1001240EC(&qword_1001FE8B0, &type metadata accessor for Locale);
        v45 = dispatch thunk of static Equatable.== infix(_:_:)();
        v46 = *(v40 + 8);
        v46(v39, v41);
        sub_10012408C(v42, &qword_1001FE850);
        v46(v43, v41);
        sub_10012408C(v44, &qword_1001FE850);
        if (v45)
        {
          goto LABEL_17;
        }

LABEL_15:
        v35 = v0[75];
        v36 = v0[39];
        v37 = v0[20];
        swift_getKeyPath();
        v38 = swift_task_alloc();
        *(v38 + 16) = v37;
        *(v38 + 24) = v36;
        v0[18] = v37;
        sub_1001240EC(&qword_1001FE858, type metadata accessor for VOTSettings);
        ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

LABEL_18:
        v51 = v0[76];
        sub_10012408C(v0[39], &qword_1001FE850);
        if (!v51)
        {
LABEL_21:
          *(v0 + 38) = 0u;
          v0[75] = v35;
          v54 = swift_task_alloc();
          v0[78] = v54;
          *v54 = v0;
          v54[1] = sub_10011C79C;
          v55 = v0[65];
          v56 = v0[64];

          return AsyncStream.Iterator.next(isolation:)(v56, 0, 0, v55);
        }

        v52 = v0[76];
LABEL_20:

        v52(v53);
        sub_100123260(v52);
        sub_100123260(v52);
        goto LABEL_21;
      }

      v32 = v0[44];
      v33 = v0[45];
      v34 = v0[37];
      sub_10012408C(v0[38], &qword_1001FE850);
      (*(v33 + 8))(v34, v32);
    }

    sub_10012408C(v0[24], &qword_1001FE878);
    goto LABEL_15;
  }

  v12 = VoiceSelection.voiceId.getter();
  v0[86] = v13;
  if (!v13)
  {
    v58 = v0[62];
    v57 = v0[63];
    v59 = v0[61];
    (*(v0[55] + 8))(v0[57], v0[54]);
    (*(v58 + 8))(v57, v59);
    v52 = v0[76];
    v35 = v0[75];
    if (!v52)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  v14 = v12;
  v15 = v13;
  v60 = (&async function pointer to dispatch thunk of VoiceResolver.voice(forIdentifier:) + async function pointer to dispatch thunk of VoiceResolver.voice(forIdentifier:));
  v16 = swift_task_alloc();
  v0[87] = v16;
  *v16 = v0;
  v16[1] = sub_10011D8AC;
  v17 = v0[52];

  return v60(v17, v14, v15);
}

uint64_t sub_10011D8AC()
{

  return _swift_task_switch(sub_10011D9C4, 0, 0);
}

uint64_t sub_10011D9C4()
{
  v1 = *(v0 + 432);
  v2 = *(v0 + 416);
  if ((*(v0 + 656))(v2, 1, v1) == 1)
  {
    v3 = *(v0 + 496);
    v4 = *(v0 + 504);
    v5 = *(v0 + 488);
    (*(*(v0 + 440) + 8))(*(v0 + 456), v1);
    (*(v3 + 8))(v4, v5);
    sub_10012408C(v2, &qword_1001FE840);
    v6 = *(v0 + 608);
    if (v6)
    {
      goto LABEL_26;
    }

    goto LABEL_27;
  }

  (*(v0 + 672))(*(v0 + 448), v2, v1);
  CoreSynthesizer.Voice.primaryLocale.getter();
  CoreSynthesizer.Voice.primaryLocales.getter();
  v7 = *(v0 + 80);
  v8 = sub_100123300((v0 + 56), v7);
  v9 = *(v7 - 8);
  v10 = swift_task_alloc();
  (*(v9 + 16))(v10, v8, v7);
  *(v0 + 40) = swift_getAssociatedTypeWitness();
  *(v0 + 48) = swift_getAssociatedConformanceWitness();
  sub_100123344((v0 + 16));
  dispatch thunk of Sequence.makeIterator()();

  sub_100117588(v0 + 56);
  while (1)
  {
    v13 = *(v0 + 352);
    v12 = *(v0 + 360);
    v14 = *(v0 + 344);
    sub_1001233A8(v0 + 16, *(v0 + 40));
    dispatch thunk of IteratorProtocol.next()();
    v82 = *(v12 + 48);
    if (v82(v14, 1, v13) == 1)
    {
      break;
    }

    v15 = *(v0 + 280);
    v16 = *(v0 + 288);
    v18 = *(v0 + 264);
    v17 = *(v0 + 272);
    v19 = *(v0 + 256);
    v20 = *(v0 + 232);
    v21 = *(v0 + 240);
    v22 = *(v0 + 216);
    v83 = *(v0 + 208);
    v80 = *(*(v0 + 360) + 32);
    v80(*(v0 + 376), *(v0 + 344), *(v0 + 352));
    Locale.language.getter();
    Locale.Language.languageCode.getter();
    (*(v15 + 8))(v16, v17);
    VoiceSelection.boundLanguage.getter();
    v23 = *(v20 + 48);
    sub_10012346C(v18, v21, &qword_1001FE888);
    sub_10012346C(v19, v21 + v23, &qword_1001FE888);
    v24 = *(v22 + 48);
    v25 = v24(v21, 1, v83);
    v26 = *(v0 + 208);
    if (v25 == 1)
    {
      v11 = *(v0 + 264);
      sub_10012408C(*(v0 + 256), &qword_1001FE888);
      sub_10012408C(v11, &qword_1001FE888);
      if (v24(v21 + v23, 1, v26) == 1)
      {
        sub_10012408C(*(v0 + 240), &qword_1001FE888);
LABEL_15:
        v38 = *(v0 + 376);
        v39 = *(v0 + 384);
        v40 = *(v0 + 352);
        (*(*(v0 + 360) + 8))(v39, v40);
        v80(v39, v38, v40);
        break;
      }

      goto LABEL_6;
    }

    sub_10012346C(*(v0 + 240), *(v0 + 248), &qword_1001FE888);
    v27 = v24(v21 + v23, 1, v26);
    v28 = *(v0 + 256);
    v29 = *(v0 + 264);
    v30 = *(v0 + 248);
    if (v27 == 1)
    {
      v32 = *(v0 + 208);
      v31 = *(v0 + 216);
      sub_10012408C(*(v0 + 256), &qword_1001FE888);
      sub_10012408C(v29, &qword_1001FE888);
      (*(v31 + 8))(v30, v32);
LABEL_6:
      sub_10012408C(*(v0 + 240), &qword_1001FE880);
      goto LABEL_7;
    }

    v84 = *(v0 + 240);
    v34 = *(v0 + 216);
    v33 = *(v0 + 224);
    v35 = *(v0 + 208);
    (*(v34 + 32))(v33, v21 + v23, v35);
    sub_1001240EC(&qword_1001FE8B8, &type metadata accessor for Locale.LanguageCode);
    v36 = dispatch thunk of static Equatable.== infix(_:_:)();
    v37 = *(v34 + 8);
    v37(v33, v35);
    sub_10012408C(v28, &qword_1001FE888);
    sub_10012408C(v29, &qword_1001FE888);
    v37(v30, v35);
    sub_10012408C(v84, &qword_1001FE888);
    if (v36)
    {
      goto LABEL_15;
    }

LABEL_7:
    (*(*(v0 + 360) + 8))(*(v0 + 376), *(v0 + 352));
  }

  v85 = *(v0 + 576);
  v41 = *(v0 + 384);
  v43 = *(v0 + 352);
  v42 = *(v0 + 360);
  v44 = *(v0 + 336);
  v45 = *(v0 + 200);
  v46 = *(v0 + 184);
  v47 = *(v0 + 160);
  sub_100117588(v0 + 16);
  swift_getKeyPath();
  *(v0 + 152) = v47;
  sub_1001240EC(&qword_1001FE858, type metadata accessor for VOTSettings);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v81 = *(v42 + 16);
  v81(v44, v41, v43);
  v79 = *(v42 + 56);
  v79(v44, 0, 1, v43);
  v48 = *(v46 + 48);
  sub_10012346C(v47 + v85, v45, &qword_1001FE850);
  sub_10012346C(v44, v45 + v48, &qword_1001FE850);
  v49 = v82(v45, 1, v43);
  v50 = *(v0 + 352);
  if (v49 == 1)
  {
    sub_10012408C(*(v0 + 336), &qword_1001FE850);
    if (v82(v45 + v48, 1, v50) == 1)
    {
      sub_10012408C(*(v0 + 200), &qword_1001FE850);
      goto LABEL_23;
    }

LABEL_21:
    sub_10012408C(*(v0 + 200), &qword_1001FE878);
    goto LABEL_22;
  }

  sub_10012346C(*(v0 + 200), *(v0 + 328), &qword_1001FE850);
  if (v82(v45 + v48, 1, v50) == 1)
  {
    v51 = *(v0 + 352);
    v52 = *(v0 + 360);
    v53 = *(v0 + 328);
    sub_10012408C(*(v0 + 336), &qword_1001FE850);
    (*(v52 + 8))(v53, v51);
    goto LABEL_21;
  }

  v72 = *(v0 + 360);
  v71 = *(v0 + 368);
  v73 = *(v0 + 352);
  v75 = *(v0 + 328);
  v74 = *(v0 + 336);
  v76 = *(v0 + 200);
  (*(v72 + 32))(v71, v45 + v48, v73);
  sub_1001240EC(&qword_1001FE8B0, &type metadata accessor for Locale);
  v77 = dispatch thunk of static Equatable.== infix(_:_:)();
  v56 = *(v72 + 8);
  v56(v71, v73);
  sub_10012408C(v74, &qword_1001FE850);
  v56(v75, v73);
  sub_10012408C(v76, &qword_1001FE850);
  if ((v77 & 1) == 0)
  {
LABEL_22:
    v54 = *(v0 + 352);
    v55 = *(v0 + 320);
    v81(v55, *(v0 + 384), v54);
    v79(v55, 0, 1, v54);
    sub_10011BD18(v55);
LABEL_23:
    v56 = *(*(v0 + 360) + 8);
  }

  v57 = *(v0 + 608);
  v59 = *(v0 + 496);
  v58 = *(v0 + 504);
  v60 = *(v0 + 488);
  v62 = *(v0 + 448);
  v61 = *(v0 + 456);
  v63 = *(v0 + 432);
  v64 = *(v0 + 440);
  v56(*(v0 + 384), *(v0 + 352));
  v65 = *(v64 + 8);
  v65(v62, v63);
  v65(v61, v63);
  (*(v59 + 8))(v58, v60);
  if (!v57)
  {
LABEL_27:
    v66 = *(v0 + 600);
    goto LABEL_28;
  }

  v6 = *(v0 + 608);
LABEL_26:
  v66 = *(v0 + 600);

  v6(v67);
  sub_100123260(v6);
  sub_100123260(v6);
LABEL_28:
  *(v0 + 608) = 0u;
  *(v0 + 600) = v66;
  v68 = swift_task_alloc();
  *(v0 + 624) = v68;
  *v68 = v0;
  v68[1] = sub_10011C79C;
  v69 = *(v0 + 520);
  v70 = *(v0 + 512);

  return AsyncStream.Iterator.next(isolation:)(v70, 0, 0, v69);
}

uint64_t sub_10011E3B4@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v33 = a2;
  v3 = sub_100117630(&qword_1001FE890);
  __chkstk_darwin(v3 - 8);
  v34 = &v32 - v4;
  v5 = sub_100117630(&qword_1001FE8C0);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v32 - v9;
  v11 = sub_100117630(&qword_1001FE8C8);
  v12 = __chkstk_darwin(v11 - 8);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v32 - v15;
  AXSettings.VoiceOver.currentVoiceRotor.getter();
  swift_getKeyPath();
  v35 = a1;
  sub_1001240EC(&qword_1001FE858, type metadata accessor for VOTSettings);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v17 = OBJC_IVAR____TtC3vot11VOTSettings__currentActivity;
  swift_beginAccess();
  sub_10012346C(a1 + v17, v10, &qword_1001FE8C0);
  sub_10012346C(v16, v14, &qword_1001FE8C8);
  v18 = type metadata accessor for UserVoiceConfiguration();
  v19 = *(v18 - 8);
  if ((*(v19 + 48))(v14, 1, v18) == 1)
  {
    sub_10012408C(v14, &qword_1001FE8C8);
    v20 = type metadata accessor for VoiceSelection();
    v21 = *(v20 - 8);
    v22 = *(v21 + 56);
    v22(v34, 1, 1, v20);
    sub_10012346C(v10, v8, &qword_1001FE8C0);
    v23 = type metadata accessor for AXSettings.VoiceOver.Activity();
    v24 = *(v23 - 8);
    if ((*(v24 + 48))(v8, 1, v23) == 1)
    {
      sub_10012408C(v10, &qword_1001FE8C0);
      sub_10012408C(v16, &qword_1001FE8C8);
      sub_10012408C(v8, &qword_1001FE8C0);
      v22(v33, 1, 1, v20);
    }

    else
    {
      AXSettings.VoiceOver.Activity.voiceSelection.getter();
      sub_10012408C(v10, &qword_1001FE8C0);
      sub_10012408C(v16, &qword_1001FE8C8);
      (*(v24 + 8))(v8, v23);
    }

    v31 = v34;
    result = (*(v21 + 48))(v34, 1, v20);
    if (result != 1)
    {
      return sub_10012408C(v31, &qword_1001FE890);
    }
  }

  else
  {
    v25 = v34;
    UserVoiceConfiguration.selection.getter();
    sub_10012408C(v10, &qword_1001FE8C0);
    sub_10012408C(v16, &qword_1001FE8C8);
    (*(v19 + 8))(v14, v18);
    v26 = type metadata accessor for VoiceSelection();
    v27 = *(v26 - 8);
    v28 = *(v27 + 56);
    v28(v25, 0, 1, v26);
    v29 = v33;
    (*(v27 + 32))(v33, v25, v26);
    return (v28)(v29, 0, 1, v26);
  }

  return result;
}

uint64_t sub_10011EAA8(const void *a1, void *a2)
{
  *(v2 + 16) = a2;
  *(v2 + 24) = _Block_copy(a1);
  v4 = a2;

  return _swift_task_switch(sub_10011EB20, 0, 0);
}

uint64_t sub_10011EB20()
{
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_10011EBC0;

  return AXSettings.VoiceOver.effectiveSpeakingRate()();
}

uint64_t sub_10011EBC0(float a1)
{
  v3 = *(*v1 + 24);
  v4 = *(*v1 + 16);
  v7 = *v1;

  v3[2](v3, a1);
  _Block_release(v3);
  v5 = *(v7 + 8);

  return v5();
}

uint64_t sub_10011EE8C(const void *a1, void *a2, float a3)
{
  *(v3 + 16) = a2;
  *(v3 + 40) = a3;
  *(v3 + 24) = _Block_copy(a1);
  v5 = a2;

  return _swift_task_switch(sub_10011EF08, 0, 0);
}

uint64_t sub_10011EF08()
{
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_10011EFAC;
  v2.n128_u32[0] = *(v0 + 40);

  return AXSettings.VoiceOver.setEffectiveSpeakingRate(_:)(v2);
}

uint64_t sub_10011EFAC()
{
  v1 = *(*v0 + 24);
  v2 = *(*v0 + 16);
  v5 = *v0;

  v1[2](v1);
  _Block_release(v1);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_10011F0E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[2] = a2;
  v7[3] = a3;
  v11 = type metadata accessor for VoiceSelection();
  v7[4] = v11;
  v7[5] = *(v11 - 8);
  v12 = swift_task_alloc();
  v7[6] = v12;
  v13 = swift_task_alloc();
  v7[7] = v13;
  *v13 = v7;
  v13[1] = sub_10011F20C;

  return sub_10011F580(v12, a5, a6, a7);
}

uint64_t sub_10011F20C()
{

  return _swift_task_switch(sub_10011F308, 0, 0);
}

uint64_t sub_10011F308()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = *(v0 + 32);
  (*(v0 + 16))(v1);
  (*(v2 + 8))(v1, v3);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_10011F580(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = type metadata accessor for Locale();
  v5[7] = v6;
  v5[8] = *(v6 - 8);
  v5[9] = swift_task_alloc();
  sub_100117630(&qword_1001FE8C0);
  v5[10] = swift_task_alloc();
  v5[11] = swift_task_alloc();

  return _swift_task_switch(sub_10011F68C, 0, 0);
}

uint64_t sub_10011F68C()
{
  v1 = [objc_opt_self() outputManagerIfExists];
  if (!v1)
  {
    __break(1u);
    goto LABEL_13;
  }

  v4 = v1;
  v5 = [v1 speechComponent];

  if (!v5)
  {
LABEL_13:
    __break(1u);
    return AXSettings.VoiceOver.voiceSelection(locale:withActivity:)(v1, v2, v3);
  }

  v6 = [v5 determineActivityForAction:v0[3]];

  v7 = type metadata accessor for AXSettings.VoiceOver.Activity();
  v8 = *(*(v7 - 8) + 56);
  if (!v6)
  {
    v13 = v0[11];
    goto LABEL_7;
  }

  v9 = *(v7 - 8);
  v10 = v0[10];
  v8(v10, 1, 1, v7);
  sub_1001240EC(&qword_1001FE900, &type metadata accessor for AXSettings.VoiceOver.Activity);
  dispatch thunk of static _ObjectiveCBridgeable._conditionallyBridgeFromObjectiveC(_:result:)();

  v11 = (*(v9 + 48))(v10, 1, v7);
  v12 = v0[11];
  if (v11 == 1)
  {
    v13 = v0[11];
LABEL_7:
    v14 = 1;
    goto LABEL_9;
  }

  (*(v9 + 32))(v0[11], v0[10], v7);
  v13 = v12;
  v14 = 0;
LABEL_9:
  v8(v13, v14, 1, v7);

  Locale.init(withAXRemapping:)();
  v15 = swift_task_alloc();
  v0[12] = v15;
  *v15 = v0;
  v15[1] = sub_10011F904;
  v3 = v0[11];
  v2 = v0[9];
  v1 = v0[2];

  return AXSettings.VoiceOver.voiceSelection(locale:withActivity:)(v1, v2, v3);
}

uint64_t sub_10011F904()
{

  return _swift_task_switch(sub_10011FA00, 0, 0);
}

uint64_t sub_10011FA00()
{
  v1 = v0[11];
  (*(v0[8] + 8))(v0[9], v0[7]);
  sub_10012408C(v1, &qword_1001FE8C0);

  v2 = v0[1];

  return v2();
}

uint64_t sub_10011FAB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[6] = a6;
  v7[7] = a7;
  v7[4] = a4;
  v7[5] = a5;
  v7[2] = a2;
  v7[3] = a3;
  v8 = type metadata accessor for Locale();
  v7[8] = v8;
  v7[9] = *(v8 - 8);
  v7[10] = swift_task_alloc();
  v9 = type metadata accessor for VoiceSelection();
  v7[11] = v9;
  v7[12] = *(v9 - 8);
  v7[13] = swift_task_alloc();

  return _swift_task_switch(sub_10011FBD4, 0, 0);
}

uint64_t sub_10011FBD4()
{

  Locale.init(withAXRemapping:)();
  v1 = swift_task_alloc();
  v0[14] = v1;
  *v1 = v0;
  v1[1] = sub_10011FCAC;
  v2 = v0[13];
  v3 = v0[10];
  v4 = v0[7];

  return AXSettings.VoiceOver.voiceSelection(locale:withActivity:)(v2, v3, v4);
}

uint64_t sub_10011FCAC()
{

  return _swift_task_switch(sub_10011FDA8, 0, 0);
}

uint64_t sub_10011FDA8()
{
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[11];
  v4 = v0[2];
  (*(v0[9] + 8))(v0[10], v0[8]);
  v4(v1);
  (*(v2 + 8))(v1, v3);

  v5 = v0[1];

  return v5();
}

id sub_100120208()
{
  v1 = v0;
  v2 = type metadata accessor for CoreSynthesizer.Voice.Trait();
  __chkstk_darwin(v2 - 8);
  v36 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for VoiceResolver.Mode();
  v4 = *(v35 - 8);
  __chkstk_darwin(v35);
  v6 = (&v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = OBJC_IVAR____TtC3vot11VOTSettings_settings;
  type metadata accessor for AXSettings();
  v8 = static AXSettings.shared.getter();
  v9 = direct field offset for AXSettings.voiceover;
  swift_beginAccess();
  v10 = *&v8[v9];

  *&v1[v7] = v10;
  v11 = OBJC_IVAR____TtC3vot11VOTSettings_executor;
  type metadata accessor for TTSExecutor();
  swift_allocObject();
  *&v1[v11] = TTSExecutor.init()();
  v34 = OBJC_IVAR____TtC3vot11VOTSettings_resolver;
  v33 = type metadata accessor for VoiceResolver();
  sub_100117630(&qword_1001FE918);
  v12 = type metadata accessor for VoiceResolver.VoiceSortKey();
  v13 = *(v12 - 8);
  v14 = *(v13 + 72);
  v15 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_10017E780;
  v17 = v16 + v15;
  static CoreSynthesizer.Voice.Trait.firstParty.getter();
  v18 = enum case for VoiceResolver.VoiceSortKey.trait(_:);
  v19 = *(v13 + 104);
  v19(v17, enum case for VoiceResolver.VoiceSortKey.trait(_:), v12);
  static CoreSynthesizer.Voice.Trait.localeDefault.getter();
  v19(v17 + v14, v18, v12);
  v19(v17 + 2 * v14, enum case for VoiceResolver.VoiceSortKey.quality(_:), v12);
  v19(v17 + 3 * v14, enum case for VoiceResolver.VoiceSortKey.name(_:), v12);
  *v6 = v16;
  (*(v4 + 104))(v6, enum case for VoiceResolver.Mode.custom(_:), v35);
  v20 = type metadata accessor for VoiceDatabaseClient();
  v21 = VoiceDatabaseClient.__allocating_init(readOnly:)();
  v39 = v20;
  v40 = &protocol witness table for VoiceDatabaseClient;
  v38 = v21;
  static CoreSynthesizer.Voice.Trait.installed.getter();
  *&v1[v34] = VoiceResolver.__allocating_init(voiceSource:requiredTraits:sortMode:)();
  result = [objc_opt_self() sharedWorkspace];
  if (result)
  {
    *&v1[OBJC_IVAR____TtC3vot11VOTSettings_workspace] = result;
    v23 = OBJC_IVAR____TtC3vot11VOTSettings__systemLanguage;
    v24 = type metadata accessor for Locale();
    v25 = *(*(v24 - 8) + 56);
    v25(&v1[v23], 1, 1, v24);
    v25(&v1[v23], 1, 1, v24);
    v26 = OBJC_IVAR____TtC3vot11VOTSettings__systemVoiceSelection;
    v27 = type metadata accessor for VoiceSelection();
    v28 = *(*(v27 - 8) + 56);
    v28(&v1[v26], 1, 1, v27);
    v28(&v1[v26], 1, 1, v27);
    v29 = OBJC_IVAR____TtC3vot11VOTSettings__currentActivity;
    v30 = type metadata accessor for AXSettings.VoiceOver.Activity();
    (*(*(v30 - 8) + 56))(&v1[v29], 1, 1, v30);
    v25(&v1[OBJC_IVAR____TtC3vot11VOTSettings___overrideLanguage], 1, 1, v24);
    v25(&v1[OBJC_IVAR____TtC3vot11VOTSettings__selectedLanguage], 1, 1, v24);
    *&v1[OBJC_IVAR____TtC3vot11VOTSettings__languageCharacters] = &_swiftEmptyDictionarySingleton;
    sub_100117630(&qword_1001FE920);
    v31 = swift_allocObject();
    *(v31 + 16) = 0;
    *&v1[OBJC_IVAR____TtC3vot11VOTSettings__languageCharactersLock] = v31;
    ObservationRegistrar.init()();
    v32 = type metadata accessor for VOTSettings();
    v37.receiver = v1;
    v37.super_class = v32;
    return objc_msgSendSuper2(&v37, "init");
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_10012076C()
{
  v1 = sub_100117630(&qword_1001FE868);
  v2 = __chkstk_darwin(v1 - 8);
  v39 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __chkstk_darwin(v2);
  v40 = &v31 - v5;
  v6 = __chkstk_darwin(v4);
  v8 = &v31 - v7;
  __chkstk_darwin(v6);
  v10 = &v31 - v9;
  v11 = dispatch_group_create();
  dispatch_group_enter(v11);
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  v13 = *&v0[OBJC_IVAR____TtC3vot11VOTSettings_executor];
  v14 = type metadata accessor for TaskPriority();
  v15 = *(v14 - 8);
  v36 = *(v15 + 56);
  v36(v10, 1, 1, v14);
  v16 = swift_allocObject();
  v16[2] = sub_100124F8C;
  v16[3] = v12;
  v16[4] = v0;
  v37 = v10;
  sub_10012346C(v10, v8, &qword_1001FE868);
  v35 = *(v15 + 48);
  LODWORD(v12) = v35(v8, 1, v14);
  v38 = v13;
  swift_retain_n();
  v17 = v11;
  v18 = v0;
  v32 = v15;
  v33 = v18;
  if (v12 == 1)
  {
    sub_10012408C(v8, &qword_1001FE868);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v15 + 8))(v8, v14);
  }

  v19 = sub_1001240EC(&qword_1001FE870, &type metadata accessor for TTSExecutor);
  v20 = swift_allocObject();
  *(v20 + 16) = &unk_10017E898;
  *(v20 + 24) = v16;
  v45 = 6;
  v46 = 0;
  v21 = v38;
  v47 = v38;
  v48 = v19;
  v34 = v19;

  swift_task_create();
  sub_10012408C(v37, &qword_1001FE868);

  dispatch_group_enter(v17);
  v22 = swift_allocObject();
  *(v22 + 16) = v17;
  v23 = v40;
  v36(v40, 1, 1, v14);
  v24 = swift_allocObject();
  v25 = v33;
  v24[2] = v33;
  v24[3] = sub_10012315C;
  v24[4] = v22;
  v26 = v39;
  sub_10012346C(v23, v39, &qword_1001FE868);
  v27 = v35(v26, 1, v14);
  v28 = v17;
  v29 = v25;
  if (v27 == 1)
  {
    sub_10012408C(v26, &qword_1001FE868);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v32 + 8))(v26, v14);
  }

  v30 = swift_allocObject();
  *(v30 + 16) = &unk_10017E8B8;
  *(v30 + 24) = v24;
  v41 = 6;
  v42 = 0;
  v43 = v21;
  v44 = v34;

  swift_task_create();
  sub_10012408C(v23, &qword_1001FE868);

  OS_dispatch_group.wait()();
}

uint64_t sub_100120CF4()
{
  swift_getKeyPath();
  sub_1001240EC(&qword_1001FE858, type metadata accessor for VOTSettings);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
}

uint64_t sub_100120DB4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1001240EC(&qword_1001FE858, type metadata accessor for VOTSettings);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = OBJC_IVAR____TtC3vot11VOTSettings__languageCharacters;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_100120E7C(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC3vot11VOTSettings__languageCharacters;
  swift_beginAccess();
  *(a1 + v4) = a2;
}

uint64_t sub_100120EEC()
{
  swift_getKeyPath();
  sub_1001240EC(&qword_1001FE858, type metadata accessor for VOTSettings);
  ObservationRegistrar.access<A, B>(_:keyPath:)();
}

uint64_t sub_100120F98@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1001240EC(&qword_1001FE858, type metadata accessor for VOTSettings);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + OBJC_IVAR____TtC3vot11VOTSettings__languageCharactersLock);
}

uint64_t sub_10012104C()
{
  swift_getKeyPath();
  sub_1001240EC(&qword_1001FE858, type metadata accessor for VOTSettings);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t sub_100121108(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = type metadata accessor for Locale();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v46 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v43 = &v41 - v14;
  v15 = sub_100117630(&qword_1001FE850);
  __chkstk_darwin(v15 - 8);
  v17 = &v41 - v16;
  v47 = v11;
  if (a4)
  {
    v44 = a1;
    v45 = a2;
    v42 = v10;
    v18 = a4;
  }

  else
  {
    swift_getKeyPath();
    v48[1] = v5;
    sub_1001240EC(&qword_1001FE858, type metadata accessor for VOTSettings);
    ObservationRegistrar.access<A, B>(_:keyPath:)();
    v28 = v47;

    v29 = OBJC_IVAR____TtC3vot11VOTSettings__systemLanguage;
    swift_beginAccess();
    sub_10012346C(v5 + v29, v17, &qword_1001FE850);
    if ((*(v28 + 48))(v17, 1, v10))
    {
      sub_10012408C(v17, &qword_1001FE850);
      v27 = 1;
      return v27 & 1;
    }

    v44 = a1;
    v45 = a2;
    v38 = v43;
    (*(v28 + 16))(v43, v17, v10);
    sub_10012408C(v17, &qword_1001FE850);
    a3 = Locale.minimalCanonicLocaleIdentifier.getter();
    v18 = v39;
    v40 = *(v28 + 8);
    v42 = v10;
    v40(v38, v10);
  }

  swift_getKeyPath();
  v19 = OBJC_IVAR____TtC3vot11VOTSettings___observationRegistrar;
  v48[0] = v5;
  sub_1001240EC(&qword_1001FE858, type metadata accessor for VOTSettings);

  v41 = v19;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v21 = OBJC_IVAR____TtC3vot11VOTSettings__languageCharactersLock;
  v22 = *(v5 + OBJC_IVAR____TtC3vot11VOTSettings__languageCharactersLock);
  v23 = __chkstk_darwin(v20);
  *(&v41 - 4) = v5;
  *(&v41 - 3) = a3;
  v24 = a3;
  *(&v41 - 2) = v18;
  __chkstk_darwin(v23);
  *(&v41 - 2) = sub_1001226D8;
  *(&v41 - 1) = v25;

  os_unfair_lock_lock(v22 + 4);
  sub_100122E7C(v48);
  os_unfair_lock_unlock(v22 + 4);
  v26 = v48[0];

  if (v26)
  {

    v27 = dispatch thunk of AXCachedLocaleCharacterSupportMatrix.supports(string:)();
  }

  else
  {

    v30 = v46;
    Locale.init(withAXRemapping:)();
    v31 = v47;
    (*(v47 + 16))(v43, v30, v42);
    type metadata accessor for AXCachedLocaleCharacterSupportMatrix();
    swift_allocObject();
    v32 = AXCachedLocaleCharacterSupportMatrix.init(locale:)();
    swift_getKeyPath();
    v48[0] = v5;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v34 = *(v5 + v21);
    v35 = __chkstk_darwin(v33);
    *(&v41 - 4) = v5;
    *(&v41 - 3) = v24;
    *(&v41 - 2) = v18;
    *(&v41 - 1) = v32;
    __chkstk_darwin(v35);
    *(&v41 - 2) = sub_100122EC0;
    *(&v41 - 1) = v36;

    os_unfair_lock_lock(v34 + 4);
    sub_100122EE0();
    os_unfair_lock_unlock(v34 + 4);

    v27 = dispatch thunk of AXCachedLocaleCharacterSupportMatrix.supports(string:)();

    (*(v31 + 8))(v46, v42);
  }

  return v27 & 1;
}

uint64_t sub_10012165C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  swift_getKeyPath();
  sub_1001240EC(&qword_1001FE858, type metadata accessor for VOTSettings);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v8 = OBJC_IVAR____TtC3vot11VOTSettings__languageCharacters;
  result = swift_beginAccess();
  v10 = *(a1 + v8);
  if (*(v10 + 16))
  {

    v11 = sub_100126938(a2, a3);
    if (v12)
    {
      v13 = *(*(v10 + 56) + 8 * v11);
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  *a4 = v13;
  return result;
}

uint64_t sub_100121788(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getKeyPath();
  sub_1001240EC(&qword_1001FE858, type metadata accessor for VOTSettings);

  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v8 = OBJC_IVAR____TtC3vot11VOTSettings__languageCharacters;
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(a1 + v8);
  *(a1 + v8) = 0x8000000000000000;
  sub_100122B90(a4, a2, a3, isUniquelyReferenced_nonNull_native);

  *(a1 + v8) = v11;
  swift_endAccess();
  swift_getKeyPath();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();
}

uint64_t sub_1001219BC(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = type metadata accessor for CoreSynthesizer.Voice.Trait();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v3[8] = swift_task_alloc();
  sub_100117630(&qword_1001FE840);
  v3[9] = swift_task_alloc();

  return _swift_task_switch(sub_100121AC4, 0, 0);
}

uint64_t sub_100121AC4()
{
  v6 = (&async function pointer to dispatch thunk of VoiceResolver.voice(forIdentifier:) + async function pointer to dispatch thunk of VoiceResolver.voice(forIdentifier:));
  v1 = swift_task_alloc();
  v0[10] = v1;
  *v1 = v0;
  v1[1] = sub_100121B80;
  v2 = v0[9];
  v3 = v0[2];
  v4 = v0[3];

  return v6(v2, v3, v4);
}

uint64_t sub_100121B80()
{

  return _swift_task_switch(sub_100121C7C, 0, 0);
}

uint64_t sub_100121C7C()
{
  v1 = v0[9];
  v2 = type metadata accessor for CoreSynthesizer.Voice();
  v3 = *(v2 - 8);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    sub_10012408C(v1, &qword_1001FE840);
    v4 = 0;
  }

  else
  {
    v6 = v0[7];
    v5 = v0[8];
    v7 = v0[5];
    v8 = v0[6];
    CoreSynthesizer.Voice.traits.getter();
    (*(v3 + 8))(v1, v2);
    static CoreSynthesizer.Voice.Trait.hasSuperCompactCounterpart.getter();
    sub_1001240EC(&qword_1001FE848, &type metadata accessor for CoreSynthesizer.Voice.Trait);
    v4 = dispatch thunk of SetAlgebra.isSuperset(of:)();
    v9 = *(v8 + 8);
    v9(v6, v7);
    v9(v5, v7);
  }

  v10 = v0[1];

  return v10(v4 & 1);
}

uint64_t sub_100121FD4(int a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;
  v3[4] = v6;
  a3;
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = sub_1001220A8;

  return sub_1001219BC(v5, v7);
}

uint64_t sub_1001220A8(char a1)
{
  v3 = *(*v1 + 24);
  v4 = *(*v1 + 16);
  v7 = *v1;

  v3[2](v3, a1 & 1);
  _Block_release(v3);
  v5 = *(v7 + 8);

  return v5();
}

id sub_10012220C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VOTSettings();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for VOTSettings()
{
  result = qword_1001FE818;
  if (!qword_1001FE818)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100122404()
{
  sub_1001225D8(319, &qword_1001FE828, &type metadata accessor for Locale);
  if (v0 <= 0x3F)
  {
    sub_1001225D8(319, &qword_1001FE830, &type metadata accessor for VoiceSelection);
    if (v1 <= 0x3F)
    {
      sub_1001225D8(319, &qword_1001FE838, &type metadata accessor for AXSettings.VoiceOver.Activity);
      if (v2 <= 0x3F)
      {
        type metadata accessor for ObservationRegistrar();
        if (v3 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_1001225D8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1001226F8(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1001227F0;

  return v6(a1);
}

uint64_t sub_1001227F0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1001228E8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_100117630(&qword_1001FE860);
  v34 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
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
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
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

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
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

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
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

uint64_t sub_100122B90(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_100126938(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_1001228E8(v16, a4 & 1);
      v11 = sub_100126938(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_100122D0C();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v23 = (v21[6] + 16 * v11);
  *v23 = a2;
  v23[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v24 = v21[2];
  v15 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v25;
}

void *sub_100122D0C()
{
  v1 = v0;
  sub_100117630(&qword_1001FE860);
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
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
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

void *sub_100122E7C@<X0>(void *a1@<X8>)
{
  result = (*(v1 + 16))(&v5);
  if (!v2)
  {
    *a1 = v5;
  }

  return result;
}

uint64_t sub_100122F5C()
{
  *(*(v0 + 16) + OBJC_IVAR____TtC3vot11VOTSettings__languageCharactersLock) = *(v0 + 24);
}

uint64_t sub_100122FA0()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100122FF0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100124F88;

  return sub_100119D4C(a1, v4, v5, v6);
}

uint64_t sub_1001230A4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100124F88;

  return sub_1001226F8(a1, v4);
}

uint64_t sub_100123164()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1001231A4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100124F88;

  return sub_10011C054(a1, v4, v5, v6);
}

uint64_t sub_100123260(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

void *sub_100123300(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t *sub_100123344(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_1001233A8(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t sub_10012346C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_100117630(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100123598(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Locale();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100117630(&qword_1001FE850);
  __chkstk_darwin(v8 - 8);
  v10 = &v21 - v9;
  v11 = sub_100117630(&qword_1001FE878);
  v12 = __chkstk_darwin(v11 - 8);
  v14 = &v21 - v13;
  v15 = *(v12 + 56);
  sub_10012346C(a1, &v21 - v13, &qword_1001FE850);
  sub_10012346C(a2, &v14[v15], &qword_1001FE850);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) != 1)
  {
    sub_10012346C(v14, v10, &qword_1001FE850);
    if (v16(&v14[v15], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v14[v15], v4);
      sub_1001240EC(&qword_1001FE8B0, &type metadata accessor for Locale);
      v18 = dispatch thunk of static Equatable.== infix(_:_:)();
      v19 = *(v5 + 8);
      v19(v7, v4);
      v19(v10, v4);
      sub_10012408C(v14, &qword_1001FE850);
      v17 = v18 ^ 1;
      return v17 & 1;
    }

    (*(v5 + 8))(v10, v4);
    goto LABEL_6;
  }

  if (v16(&v14[v15], 1, v4) != 1)
  {
LABEL_6:
    sub_10012408C(v14, &qword_1001FE878);
    v17 = 1;
    return v17 & 1;
  }

  sub_10012408C(v14, &qword_1001FE850);
  v17 = 0;
  return v17 & 1;
}

uint64_t sub_10012392C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_100117630(a3);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t sub_1001239C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VoiceSelection();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100117630(&qword_1001FE890);
  __chkstk_darwin(v8 - 8);
  v10 = &v21 - v9;
  v11 = sub_100117630(&qword_1001FE8D0);
  v12 = __chkstk_darwin(v11 - 8);
  v14 = &v21 - v13;
  v15 = *(v12 + 56);
  sub_10012346C(a1, &v21 - v13, &qword_1001FE890);
  sub_10012346C(a2, &v14[v15], &qword_1001FE890);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) != 1)
  {
    sub_10012346C(v14, v10, &qword_1001FE890);
    if (v16(&v14[v15], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v14[v15], v4);
      sub_1001240EC(&qword_1001FE8F8, &type metadata accessor for VoiceSelection);
      v18 = dispatch thunk of static Equatable.== infix(_:_:)();
      v19 = *(v5 + 8);
      v19(v7, v4);
      v19(v10, v4);
      sub_10012408C(v14, &qword_1001FE890);
      v17 = v18 ^ 1;
      return v17 & 1;
    }

    (*(v5 + 8))(v10, v4);
    goto LABEL_6;
  }

  if (v16(&v14[v15], 1, v4) != 1)
  {
LABEL_6:
    sub_10012408C(v14, &qword_1001FE8D0);
    v17 = 1;
    return v17 & 1;
  }

  sub_10012408C(v14, &qword_1001FE890);
  v17 = 0;
  return v17 & 1;
}

uint64_t sub_100123CE8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AXSettings.VoiceOver.Activity();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100117630(&qword_1001FE8C0);
  __chkstk_darwin(v8 - 8);
  v10 = &v21 - v9;
  v11 = sub_100117630(&qword_1001FE908);
  v12 = __chkstk_darwin(v11 - 8);
  v14 = &v21 - v13;
  v15 = *(v12 + 56);
  sub_10012346C(a1, &v21 - v13, &qword_1001FE8C0);
  sub_10012346C(a2, &v14[v15], &qword_1001FE8C0);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) != 1)
  {
    sub_10012346C(v14, v10, &qword_1001FE8C0);
    if (v16(&v14[v15], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v14[v15], v4);
      sub_1001240EC(&qword_1001FE910, &type metadata accessor for AXSettings.VoiceOver.Activity);
      v18 = dispatch thunk of static Equatable.== infix(_:_:)();
      v19 = *(v5 + 8);
      v19(v7, v4);
      v19(v10, v4);
      sub_10012408C(v14, &qword_1001FE8C0);
      v17 = v18 ^ 1;
      return v17 & 1;
    }

    (*(v5 + 8))(v10, v4);
    goto LABEL_6;
  }

  if (v16(&v14[v15], 1, v4) != 1)
  {
LABEL_6:
    sub_10012408C(v14, &qword_1001FE908);
    v17 = 1;
    return v17 & 1;
  }

  sub_10012408C(v14, &qword_1001FE8C0);
  v17 = 0;
  return v17 & 1;
}

uint64_t sub_100124008(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_100117630(a3);
  (*(*(v5 - 8) + 24))(a2, a1, v5);
  return a2;
}

uint64_t sub_10012408C(uint64_t a1, uint64_t *a2)
{
  v3 = sub_100117630(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1001240EC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100124134()
{
  _Block_release(*(v0 + 24));

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10012417C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100124F88;

  return sub_100121FD4(v2, v3, v4);
}

uint64_t sub_100124234()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100124F88;

  return sub_1001262A4(v2, v3, v4);
}

uint64_t sub_1001242F4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100124F88;

  return sub_10012638C(a1, v4, v5, v6);
}

uint64_t sub_1001243C0()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1001243FC()
{
  v1 = *(sub_100117630(&qword_1001FE8C0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 56) & ~v2;
  v4 = *(v1 + 64);

  v5 = type metadata accessor for AXSettings.VoiceOver.Activity();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10012452C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_100117630(a3);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100124594(uint64_t a1)
{
  v4 = *(sub_100117630(&qword_1001FE8C0) - 8);
  v5 = (*(v4 + 80) + 56) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = v1[6];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_100124F88;

  return sub_10011FAB0(a1, v6, v7, v8, v9, v10, v1 + v5);
}

uint64_t sub_1001246AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v23[0] = a4;
  v12 = sub_100117630(&qword_1001FE868);
  __chkstk_darwin(v12 - 8);
  v14 = v23 - v13;
  sub_10012346C(a5, v23 - v13, &qword_1001FE868);
  v15 = type metadata accessor for TaskPriority();
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_10012408C(v14, &qword_1001FE868);
    if (a2)
    {
LABEL_3:
      v17 = String.utf8CString.getter();

      v18 = swift_allocObject();
      *(v18 + 16) = a6;
      *(v18 + 24) = a7;

      swift_unknownObjectRetain();
      if (a3 == 1)
      {
        v19 = 0;
      }

      else
      {
        v24[0] = 6;
        v24[1] = 0;
        v24[2] = a3;
        v24[3] = v23[0];
        v19 = v24;
      }

      v23[1] = 7;
      v23[2] = v19;
      v23[3] = v17 + 32;
      v21 = swift_task_create();

      goto LABEL_12;
    }
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v16 + 8))(v14, v15);
    if (a2)
    {
      goto LABEL_3;
    }
  }

  v20 = swift_allocObject();
  *(v20 + 16) = a6;
  *(v20 + 24) = a7;

  swift_unknownObjectRetain();
  if (a3 != 1)
  {
    v24[4] = 6;
    v24[5] = 0;
    v24[6] = a3;
    v24[7] = v23[0];
  }

  v21 = swift_task_create();
LABEL_12:
  sub_10012408C(a5, &qword_1001FE868);
  return v21;
}

uint64_t sub_100124970()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1001249A8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100124A60;

  return sub_1001226F8(a1, v4);
}

uint64_t sub_100124A60()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void sub_100124B54()
{
  v1 = *(v0 + 16);
  v2 = VoiceSelection._bridgeToObjectiveC()();
  (*(v1 + 16))(v1, v2);
}

uint64_t sub_100124BB0()
{

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_100124C00(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_100124F88;

  return sub_10011F0E4(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_100124CEC(void (*a1)(void))
{
  a1(*(v1 + 24));

  return _swift_deallocObject(v1, 40, 7);
}

uint64_t sub_100124D34()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100124A60;

  return sub_10011EE8C(v3, v4, v2);
}

uint64_t sub_100124DE8()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100124E28()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100124F88;

  return sub_10011EAA8(v2, v3);
}

uint64_t sub_100124ED4()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100124F94(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  sub_100117630(&qword_1001FE950);
  v3[5] = swift_task_alloc();
  v4 = type metadata accessor for VOMapsItem();
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();

  return _swift_task_switch(sub_10012509C, 0, 0);
}

uint64_t sub_10012509C()
{
  v42 = v0;
  v1 = v0[2];
  v41[0] = &_swiftEmptyArrayStorage;
  if (v1 >> 62)
  {
LABEL_17:
    v2 = _CocoaArrayWrapper.endIndex.getter();
    v36 = v0;
    if (v2)
    {
LABEL_3:
      v3 = 0;
      v4 = v1 & 0xC000000000000001;
      v5 = v1 & 0xFFFFFFFFFFFFFF8;
      v6 = (v0[2] + 32);
      v0 = &selRef_iosSystemAppApplication;
      do
      {
        if (v4)
        {
          v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v3 >= *(v5 + 16))
          {
            goto LABEL_16;
          }

          v7 = *(v6 + 8 * v3);
        }

        v8 = v7;
        v9 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
          __break(1u);
LABEL_16:
          __break(1u);
          goto LABEL_17;
        }

        if ([v7 isMapItem])
        {
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v1 = v41;
          specialized ContiguousArray._endMutation()();
        }

        else
        {
        }

        ++v3;
      }

      while (v9 != v2);
      v10 = v41[0];
      if ((v41[0] & 0x8000000000000000) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_37;
    }
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
      goto LABEL_3;
    }
  }

  v10 = &_swiftEmptyArrayStorage;
  if ((&_swiftEmptyArrayStorage & 0x8000000000000000) == 0)
  {
LABEL_19:
    if ((v10 & 0x4000000000000000) == 0)
    {
      v11 = *(v10 + 16);
      v12 = v36;
      if (v11)
      {
        goto LABEL_21;
      }

      goto LABEL_38;
    }
  }

LABEL_37:
  while (1)
  {
    v11 = _CocoaArrayWrapper.endIndex.getter();
    v12 = v36;
    if (!v11)
    {
      break;
    }

LABEL_21:
    v13 = 0;
    v14 = v12[7];
    v39 = (v14 + 48);
    v40 = v10 & 0xC000000000000001;
    v34 = v14;
    v38 = (v14 + 32);
    v15 = &_swiftEmptyArrayStorage;
    v35 = v10;
    v37 = v11;
    while (1)
    {
      if (v40)
      {
        v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v13 >= *(v10 + 16))
        {
          goto LABEL_36;
        }

        v17 = *(v10 + 8 * v13 + 32);
      }

      v18 = v17;
      v19 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      v20 = v12[5];
      v21 = v12[6];
      v41[0] = v17;
      sub_100125738(v41, v20);

      if ((*v39)(v20, 1, v21) == 1)
      {
        sub_10012408C(v12[5], &qword_1001FE950);
        v16 = v37;
      }

      else
      {
        v23 = v12[8];
        v22 = v12[9];
        v24 = v12[6];
        v25 = *v38;
        (*v38)(v22, v12[5], v24);
        v25(v23, v22, v24);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v15 = sub_100126760(0, *(v15 + 2) + 1, 1, v15);
        }

        v27 = *(v15 + 2);
        v26 = *(v15 + 3);
        v12 = v36;
        v16 = v37;
        if (v27 >= v26 >> 1)
        {
          v15 = sub_100126760(v26 > 1, v27 + 1, 1, v15);
        }

        v28 = v36[8];
        v29 = v36[6];
        *(v15 + 2) = v27 + 1;
        v25(&v15[((v34[80] + 32) & ~v34[80]) + *(v34 + 9) * v27], v28, v29);
        v10 = v35;
      }

      ++v13;
      if (v19 == v16)
      {
        goto LABEL_39;
      }
    }

    __break(1u);
LABEL_36:
    __break(1u);
  }

LABEL_38:
  v15 = &_swiftEmptyArrayStorage;
LABEL_39:
  v12[10] = v15;

  if (*(v15 + 2))
  {
    v12[11] = type metadata accessor for VOMapsManager();
    type metadata accessor for MainActor();
    v12[12] = static MainActor.shared.getter();
    v31 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(sub_1001254E0, v31, v30);
  }

  else
  {

    v32 = v12[1];

    return (v32)(0, 0);
  }
}

uint64_t sub_1001254E0()
{

  v0[13] = static VOMapsManager.sharedInstance.getter();
  v4 = (&async function pointer to dispatch thunk of VOMapsManager.describeMaps(elements:) + async function pointer to dispatch thunk of VOMapsManager.describeMaps(elements:));
  v1 = swift_task_alloc();
  v0[14] = v1;
  *v1 = v0;
  v1[1] = sub_10012559C;
  v2 = v0[10];

  return v4(v2);
}

uint64_t sub_10012559C(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 104);
  v8 = *v2;

  v6 = *(v8 + 8);

  return v6(a1, a2);
}

uint64_t sub_100125738@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v3 = [*a1 mapSmartDescriptionDictionary];
  v4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  strcpy(v28, "Latitude");
  BYTE1(v28[1]) = 0;
  WORD1(v28[1]) = 0;
  HIDWORD(v28[1]) = -402653184;
  AnyHashable.init<A>(_:)();
  if (*(v4 + 16) && (v5 = sub_1001269B0(v27), (v6 & 1) != 0))
  {
    sub_1001175D4(*(v4 + 56) + 32 * v5, v28);
    sub_1001269F4(v27);
    swift_dynamicCast();
  }

  else
  {
    sub_1001269F4(v27);
  }

  strcpy(v28, "Longitude");
  WORD1(v28[1]) = 0;
  HIDWORD(v28[1]) = -385875968;
  AnyHashable.init<A>(_:)();
  if (*(v4 + 16) && (v7 = sub_1001269B0(v27), (v8 & 1) != 0))
  {
    sub_1001175D4(*(v4 + 56) + 32 * v7, v28);
    sub_1001269F4(v27);
    swift_dynamicCast();
  }

  else
  {
    sub_1001269F4(v27);
  }

  v28[0] = 0xD000000000000010;
  v28[1] = 0x8000000100178730;
  AnyHashable.init<A>(_:)();
  if (*(v4 + 16) && (v9 = sub_1001269B0(v27), (v10 & 1) != 0))
  {
    sub_1001175D4(*(v4 + 56) + 32 * v9, v28);
    sub_1001269F4(v27);
    swift_dynamicCast();
  }

  else
  {
    sub_1001269F4(v27);
  }

  strcpy(v28, "DistanceAway");
  BYTE5(v28[1]) = 0;
  HIWORD(v28[1]) = -5120;
  AnyHashable.init<A>(_:)();
  if (*(v4 + 16) && (v11 = sub_1001269B0(v27), (v12 & 1) != 0))
  {
    sub_1001175D4(*(v4 + 56) + 32 * v11, v28);
    sub_1001269F4(v27);
    swift_dynamicCast();
  }

  else
  {
    sub_1001269F4(v27);
  }

  strcpy(v28, "MapWidthScale");
  HIWORD(v28[1]) = -4864;
  AnyHashable.init<A>(_:)();
  if (*(v4 + 16) && (v13 = sub_1001269B0(v27), (v14 & 1) != 0))
  {
    sub_1001175D4(*(v4 + 56) + 32 * v13, v28);
    sub_1001269F4(v27);
    swift_dynamicCast();
  }

  else
  {
    sub_1001269F4(v27);
  }

  strcpy(v28, "MapHeightScale");
  HIBYTE(v28[1]) = -18;
  AnyHashable.init<A>(_:)();
  if (*(v4 + 16) && (v15 = sub_1001269B0(v27), (v16 & 1) != 0))
  {
    sub_1001175D4(*(v4 + 56) + 32 * v15, v28);
    sub_1001269F4(v27);
    swift_dynamicCast();
  }

  else
  {
    sub_1001269F4(v27);
  }

  v28[0] = 0xD000000000000013;
  v28[1] = 0x8000000100178750;
  AnyHashable.init<A>(_:)();
  if (*(v4 + 16) && (v17 = sub_1001269B0(v27), (v18 & 1) != 0))
  {
    sub_1001175D4(*(v4 + 56) + 32 * v17, v28);
    sub_1001269F4(v27);

    swift_dynamicCast();
  }

  else
  {

    sub_1001269F4(v27);
  }

  sub_100127960(0, &qword_1001FE960);
  v19 = static NSObject.== infix(_:_:)();
  v20 = [v2 label];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v21 = [v2 value];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v22 = sub_100126BC8([v2 mapFeatureType]);
  if (v19)
  {
    v27[0] = 0x64657375636F465BLL;
    v27[1] = 0xE90000000000005DLL;
    String.append(_:)(*&v22);
  }

  VOMapsItem.init(title:value:type:latitude:longitude:headingDirection:distanceFromMyLocation:mapWidthScale:mapHeightScale:mapHeadingDirection:)();
  v24 = type metadata accessor for VOMapsItem();
  return (*(*(v24 - 8) + 56))(a2, 0, 1, v24);
}

uint64_t sub_100125F88(int a1, void *a2, void *aBlock)
{
  v3[2] = a2;
  v3[3] = _Block_copy(aBlock);
  sub_100127960(0, &qword_1001FE968);
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v3[4] = v5;
  swift_getObjCClassMetadata();
  v6 = a2;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_100126084;

  return sub_100124F94(v5, v6);
}

uint64_t sub_100126084(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v5 = *(*v2 + 16);
  v6 = *v2;

  if (a2)
  {
    v7 = String._bridgeToObjectiveC()();
  }

  else
  {
    v7 = 0;
  }

  v8 = *(v4 + 24);
  (v8)[2](v8, v7);

  _Block_release(v8);
  v9 = *(v6 + 8);

  return v9();
}

id sub_10012624C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VOMapsAdapter();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1001262A4(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_100124F88;

  return v6();
}

uint64_t sub_10012638C(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_100124A60;

  return v7();
}

uint64_t sub_100126474(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100117630(&qword_1001FE868);
  __chkstk_darwin(v9 - 8);
  v11 = v23 - v10;
  sub_100127748(a3, v23 - v10);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_10012408C(v11, &qword_1001FE868);
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

    sub_10012408C(a3, &qword_1001FE868);

    return v21;
  }

LABEL_8:
  sub_10012408C(a3, &qword_1001FE868);
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

size_t sub_100126760(size_t result, int64_t a2, char a3, void *a4)
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

  sub_100117630(&qword_1001FE958);
  v10 = *(type metadata accessor for VOMapsItem() - 8);
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
  v15 = *(type metadata accessor for VOMapsItem() - 8);
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

unint64_t sub_100126938(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return sub_100126A48(a1, a2, v4);
}

unint64_t sub_1001269B0(uint64_t a1)
{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return sub_100126B00(a1, v4);
}

unint64_t sub_100126A48(uint64_t a1, uint64_t a2, uint64_t a3)
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

unint64_t sub_100126B00(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_1001275E0(*(v2 + 48) + 40 * v4, v8);
      v6 = static AnyHashable.== infix(_:_:)();
      sub_1001269F4(v8);
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