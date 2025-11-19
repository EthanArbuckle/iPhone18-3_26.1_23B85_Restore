void sub_2708(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = [*(a1 + 40) observers];
    [v2 addObject:*(a1 + 32)];

    v3 = [*(a1 + 40) observers];
    v4 = [v3 count];

    if (v4 == &dword_0 + 1)
    {
      v5 = *(a1 + 40);
      v6 = [v5 queue];
      [v5 _startMonitoringWithQueue:v6];
    }
  }
}

void sub_287C(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = [*(a1 + 40) observers];
    [v2 removeObject:*(a1 + 32)];

    v3 = [*(a1 + 40) observers];
    v4 = [v3 count];

    if (!v4)
    {
      v5 = *(a1 + 40);

      [v5 _stopMonitoring];
    }
  }
}

void sub_2CFC(id a1)
{
  qword_384D0 = objc_alloc_init(AXDeviceScreenLockMonitor);

  _objc_release_x1();
}

void sub_2E3C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, WeakRetained, sub_2F1C, @"com.apple.mobile.keybagd.lock_status", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    v3 = AXLogSpeakScreen();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      sub_1B170(v3);
    }

    v4 = mach_absolute_time();
    v5 = dword_384E4;
    if (!dword_384E4)
    {
      mach_timebase_info(&dword_384E0);
      v5 = dword_384E4;
    }

    [WeakRetained deviceLockStateChanged:(v4 * dword_384E0 / v5) / 1000000000.0];
  }
}

void sub_2F1C(uint64_t a1, void *a2)
{
  v4 = a2;
  v2 = mach_absolute_time();
  v3 = dword_384E4;
  if (!dword_384E4)
  {
    mach_timebase_info(&dword_384E0);
    v3 = dword_384E4;
  }

  [v4 deviceLockStateChanged:(v2 * dword_384E0 / v3) / 1000000000.0];
}

void sub_30D0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_30EC(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _notifyObserver:v5 isDeviceLocked:objc_msgSend(WeakRetained timestamp:{"isDeviceLocked"), *(a1 + 40)}];
  }
}

uint64_t sub_32D0(uint64_t a1)
{
  v1 = *(a1 + 32);
  qword_384E8 = objc_alloc_init(objc_opt_class());

  return _objc_release_x1();
}

void sub_3A94(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 176));
  objc_destroyWeak((v2 - 128));
  _Unwind_Resume(a1);
}

id *sub_3B08(id *result, uint64_t a2)
{
  if (a2 == 8)
  {
    return [result[4] _handleLockButtonPress];
  }

  return result;
}

void sub_3B1C(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setSpringBoardActionHandlerId:v3];
}

id sub_3B78(uint64_t a1, void *a2)
{
  if (a2)
  {
    return [a2 performSelector:"_updateForContinuityStateChange" withObject:0 afterDelay:0.0];
  }

  return result;
}

void sub_3B98(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateVCWithLatestHighlightColors];
}

void sub_3BD8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateVCWithLatestHighlightColors];
}

void sub_3C18(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateGestureRecognizers];
}

void sub_3C58(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateGestureRecognizers];
}

void sub_3CA4(uint64_t a1)
{
  v2 = +[AXSpeakFingerManager sharedInstance];
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_3D78;
  v3[3] = &unk_30B18;
  objc_copyWeak(&v5, (a1 + 40));
  v4 = *(a1 + 32);
  [v2 registerBlockForStateChange:v3];

  objc_destroyWeak(&v5);
}

void sub_3D78(uint64_t a1)
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_3E1C;
  v2[3] = &unk_30B18;
  objc_copyWeak(&v4, (a1 + 40));
  v3 = *(a1 + 32);
  dispatch_async(&_dispatch_main_q, v2);

  objc_destroyWeak(&v4);
}

id sub_3E1C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _speakFingerStateChanged];

  v3 = *(a1 + 32);

  return [v3 updateSpeakScreenUI];
}

void sub_3E64(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (![WeakRetained isReadingFromFrontmostApp])
  {
LABEL_12:

    return;
  }

  v3 = objc_loadWeakRetained((a1 + 32));
  v4 = [v3 highlightSentences];
  if ((v4 & 1) == 0)
  {
    v1 = objc_loadWeakRetained((a1 + 32));
    if (![v1 highlightWords])
    {
      goto LABEL_10;
    }
  }

  v5 = objc_loadWeakRetained((a1 + 32));
  v6 = [v5 currentContent];
  if (!v6)
  {

    if (v4)
    {
LABEL_11:

      goto LABEL_12;
    }

LABEL_10:

    goto LABEL_11;
  }

  v7 = v6;
  v8 = objc_loadWeakRetained((a1 + 32));
  v9 = [v8 currentSpeakingRange];

  if ((v4 & 1) == 0)
  {
  }

  if (v9)
  {
    v3 = objc_loadWeakRetained((a1 + 32));
    v1 = [v3 currentContent];
    v10 = objc_loadWeakRetained((a1 + 32));
    v11 = [v10 currentWordRange];
    v13 = v12;
    v14 = objc_loadWeakRetained((a1 + 32));
    v15 = [v14 currentSpeakingRange];
    LOBYTE(v16) = 0;
    [v3 _fetchTextRectsAndApplyHighlightToContent:v1 withRange:v11 elementRange:v13 updateSentences:v15 scrollWords:1 scrollSentences:{0, v16}];

    WeakRetained = v3;
    goto LABEL_10;
  }
}

void sub_4158(id a1, int a2, NSData *a3)
{
  v4 = a3;
  v5 = v4;
  if (a2 <= 1020)
  {
    if (a2 != 1000)
    {
      if (a2 == 1009)
      {
        v7 = AXLogSpeakScreen();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
        {
          sub_1B1F8();
        }

        v6 = +[SpeakThisUIServer sharedInstance];
        [v6 _pageDidScroll:v5];
        goto LABEL_20;
      }

      goto LABEL_21;
    }

    v12 = AXLogSpeakScreen();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      sub_1B234();
    }

    v9 = +[SpeakThisUIServer sharedInstance];
    v6 = v9;
    v10 = 1;
LABEL_19:
    [v9 _frontmostAppMayHaveChanged:v10];
    goto LABEL_20;
  }

  if (a2 == 1021)
  {
    v8 = AXLogSpeakScreen();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v13 = 138543362;
      v14 = v5;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_INFO, "Pid status changed: %{public}@", &v13, 0xCu);
    }

    v9 = +[SpeakThisUIServer sharedInstance];
    v6 = v9;
    v10 = 0;
    goto LABEL_19;
  }

  if (a2 == 1044)
  {
    v6 = +[SpeakThisUIServer sharedInstance];
    v11 = [v6 updateElementVisualsCoalescer];
    [v11 notifyUpdateElementVisualsEventDidOccur];

    goto LABEL_20;
  }

  if (a2 == 1078 && v4)
  {
    v6 = +[SpeakThisUIServer sharedInstance];
    [v6 keyboardFocusChangedForSceneIdentifier:v5];
LABEL_20:
  }

LABEL_21:
}

void sub_4BA8(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a2;
  v5 = [AXUIClientMessenger clientMessengerWithIdentifier:v3];
  v6 = [v4 mutableCopy];

  [v6 setObject:a1[5] forKeyedSubscript:STSMessageKeyUUID];
  v7 = a1[6];
  v8 = +[AXAccessQueue mainAccessQueue];
  [v5 sendAsynchronousMessage:v6 withIdentifier:v7 targetAccessQueue:v8 completion:0];

  v9 = AXLogSpeakScreen();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = 138412546;
    v11 = v6;
    v12 = 2112;
    v13 = v5;
    _os_log_impl(&dword_0, v9, OS_LOG_TYPE_INFO, "Got reply: %@ sending to %@", &v10, 0x16u);
  }
}

void sub_697C(uint64_t a1)
{
  v3 = [*(*(a1 + 32) + 16) view];
  v2 = [v3 window];
  *(*(*(a1 + 40) + 8) + 24) = [v2 interfaceOrientation];
}

void sub_69EC(uint64_t a1)
{
  _AXSetAllowsSuspendedAppServer();
  AXOverrideRequestingClientType();
  if (*(a1 + 64) == 1)
  {
    [*(a1 + 32) updateCache:2084];
    [*(a1 + 32) updateCache:3046];
  }

  v2 = *(a1 + 40);
  v3 = *(v2 + 48);
  *(v2 + 48) = 0;

  v4 = *(a1 + 40);
  v5 = *(v4 + 56);
  *(v4 + 56) = 0;

  v6 = *(a1 + 40);
  v7 = *(v6 + 40);
  *(v6 + 40) = 0;

  *(*(a1 + 40) + 64) = -1;
  [*(a1 + 40) setSpeakingRangeAndElements:0];
  _AXSetAllowsSuspendedAppServer();
  v8 = [*(a1 + 40) _fetchNextElementsAndReturnContentStringUsingAppElement:*(a1 + 32) startingWithPageTurnElement:*(a1 + 65) shouldScrollOpaqueProviderIfNecessary:0 deviceOrientation:*(*(*(a1 + 56) + 8) + 24)];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_6B40;
  v11[3] = &unk_30BD0;
  v9 = *(a1 + 48);
  v12 = v8;
  v13 = v9;
  v10 = v8;
  dispatch_async(&_dispatch_main_q, v11);
  AXOverrideRequestingClientType();
}

uint64_t sub_6B40(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

void sub_6D24(uint64_t a1)
{
  v3 = [*(*(a1 + 32) + 16) view];
  v2 = [v3 window];
  *(*(*(a1 + 40) + 8) + 24) = [v2 interfaceOrientation];
}

void sub_6D94(uint64_t a1)
{
  v2 = [*(a1 + 32) _fetchNextElementsAndReturnContentStringUsingAppElement:0 startingWithPageTurnElement:0 shouldScrollOpaqueProviderIfNecessary:*(a1 + 56) deviceOrientation:*(*(*(a1 + 48) + 8) + 24)];
  v3 = [v2 length];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_6EDC;
  v9[3] = &unk_30C20;
  v9[4] = *(a1 + 32);
  [v2 enumerateSubstringsInRange:0 options:v3 usingBlock:{4, v9}];
  [*(*(a1 + 32) + 8) addAdditionalContentToSpeechQueue:v2];
  if (*(a1 + 40))
  {
    v4 = _NSConcreteStackBlock;
    v5 = 3221225472;
    v6 = sub_6F8C;
    v7 = &unk_30C48;
    v8 = *(a1 + 40);
    dispatch_async(&_dispatch_main_q, &v4);
  }

  [*(a1 + 32) setIsFetchingContent:{0, v4, v5, v6, v7}];
}

void sub_6EDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = [*(*(a1 + 32) + 8) content];
  v8 = [v7 length];

  v10 = [*(a1 + 32) sentenceRanges];
  v9 = [NSValue valueWithRange:&v8[a3], a4];
  [v10 addObject:v9];
}

void sub_75A0(id a1, RBSAssertion *a2, NSError *a3)
{
  if (a3)
  {
    v3 = AXLogSpeakScreen();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "Assertion for fetching more content was unexpectedly invalidated.", v4, 2u);
    }
  }
}

void sub_78AC(id a1, RBSAssertion *a2, NSError *a3)
{
  if (a3)
  {
    v3 = AXLogSpeakScreen();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v4 = 0;
      _os_log_impl(&dword_0, v3, OS_LOG_TYPE_INFO, "Assertion for fetching more content was unexpectedly invalidated.", v4, 2u);
    }
  }
}

void sub_7B94(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = AXLogSpeakScreen();
  if (os_signpost_enabled(v4))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_0, v4, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "SpeakThis-FetchContent", "", buf, 2u);
  }

  v5 = *(a1 + 56);
  v6 = 0.5;
  if ((v5 & 0x20) == 0)
  {
    v6 = 0.0;
  }

  if ((v5 & 0x10) != 0)
  {
    v7 = 0.3;
  }

  else
  {
    v7 = v6;
  }

  if ((v5 & 1) != 0 && [*(*(a1 + 32) + 8) canResumeWithContent:v3])
  {
    v8 = *(*(a1 + 32) + 8);
    v29 = 0;
    v9 = [v8 resumeSpeakingAfterDelay:&v29 error:v7];
    v10 = v29;
    if ((v9 & 1) == 0)
    {
      v11 = AXLogSpeakScreen();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_1B440();
      }

      v33 = STSMessageReplyKeyErrorCode;
      v12 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [*(a1 + 32) _stsErrorCodeForOratorErrorCode:{objc_msgSend(v10, "code")}]);
      v34 = v12;
      v13 = [NSDictionary dictionaryWithObjects:&v34 forKeys:&v33 count:1];
LABEL_25:

      goto LABEL_29;
    }

    goto LABEL_28;
  }

  [*(*(a1 + 32) + 8) setContent:v3];
  [*(*(a1 + 32) + 8) setSpeakingContext:1];
  v14 = AXLogSpeakScreen();
  if (os_signpost_enabled(v14))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_0, v14, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "SpeakThis-StartSpeaking", "", buf, 2u);
  }

  v15 = *(*(a1 + 32) + 8);
  v28 = 0;
  v16 = [v15 startSpeakingWithPreferredLanguage:0 delayBeforeStart:&v28 error:v7];
  v17 = v28;
  v10 = v17;
  if (v16)
  {
    v18 = *(a1 + 56);
    if ((v18 & 8) != 0)
    {
      v19 = *(a1 + 32);
      if ((v18 & 0x30) == 0 || *(v19 + 16))
      {
        [*(v19 + 16) updateBarWithAppTitleForApp:*(v19 + 32)];
        [*(a1 + 32) _updateVCWithLatestHighlightColors];
      }

      else
      {
        [v19 _handleLoadUIAtAppPoint:*(a1 + 40)];
      }

      v24 = [v3 length];
      v26[0] = _NSConcreteStackBlock;
      v26[1] = 3221225472;
      v26[2] = sub_8040;
      v26[3] = &unk_30C20;
      v26[4] = *(a1 + 32);
      [v3 enumerateSubstringsInRange:0 options:v24 usingBlock:{4, v26}];
      [*(a1 + 32) _handleFinishShowingUI];
    }

LABEL_28:
    v13 = 0;
    goto LABEL_29;
  }

  v31 = STSMessageReplyKeyErrorCode;
  v20 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [*(a1 + 32) _stsErrorCodeForOratorErrorCode:{objc_msgSend(v17, "code")}]);
  v32 = v20;
  v13 = [NSDictionary dictionaryWithObjects:&v32 forKeys:&v31 count:1];

  if ((*(a1 + 56) & 4) != 0 && [v10 code] == &dword_0 + 1)
  {
    v21 = [NSBundle bundleForClass:objc_opt_class()];
    v12 = [v21 localizedStringForKey:@"NO_SPEAKABLE_CONTENT_EXISTS" value:@"NO_SPEAKABLE_CONTENT_EXISTS" table:@"Localizable"];

    [*(a1 + 32) _handleNoSpeakableContent:v12];
    if (!UIAccessibilityIsVoiceOverRunning())
    {
      [*(*(a1 + 32) + 8) setContent:v12];
      v22 = *(*(a1 + 32) + 8);
      v27 = v10;
      [v22 startSpeakingWithPreferredLanguage:0 error:&v27];
      v23 = v27;

      v10 = v23;
    }

    goto LABEL_25;
  }

LABEL_29:
  if (([*(a1 + 32) isPausingAssistiveTechnology] & 1) == 0)
  {
    [UIAccessibilityNotification postNotification:UIAccessibilityPauseAssistiveTechnologyNotification withData:UIAccessibilityNotificationSwitchControlIdentifier];
    [*(a1 + 32) setIsPausingAssistiveTechnology:1];
  }

  v25 = *(a1 + 48);
  if (v25)
  {
    (*(v25 + 16))(v25, v13, 0);
  }
}

void sub_8040(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = [*(a1 + 32) sentenceRanges];
  v6 = [NSValue valueWithRange:a3, a4];
  [v7 addObject:v6];
}

void sub_8658(uint64_t a1, char a2)
{
  if (a2)
  {
    goto LABEL_7;
  }

  v3 = *(a1 + 32);
  v4 = [v3[1] lastSpokenSubstringRange];
  v6 = [v3 _findIndexOfRange:{v4, v5}];
  v7 = 0x7FFFFFFFFFFFFFFFLL;
  if (v6 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = v6;
    v9 = [*(a1 + 32) speakingRangeAndElements];
    v10 = [v9 count] - 1;

    if (v8 >= v10)
    {
      v7 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = [*(a1 + 32) speakingRangeAndElements];
      v12 = [v11 objectAtIndexedSubscript:v8 + 1];

      v7 = [v12 range];
    }
  }

  if ([*(*(a1 + 32) + 8) fastForwardWithBoundary:v7])
  {
LABEL_7:
    v13 = 0;
  }

  else
  {
    v15 = STSMessageReplyKeyErrorCode;
    v16 = &off_31D28;
    v13 = [NSDictionary dictionaryWithObjects:&v16 forKeys:&v15 count:1];
  }

  v14 = *(a1 + 40);
  if (v14)
  {
    (*(v14 + 16))(v14, v13, 0);
  }
}

void sub_8850(uint64_t a1, char a2)
{
  if (a2)
  {
    goto LABEL_8;
  }

  v3 = *(a1 + 32);
  v4 = [v3[1] lastSpokenSubstringRange];
  v6 = [v3 _findIndexOfRange:{v4, v5}];
  v7 = v6;
  if (v6)
  {
    v8 = v6 == 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v8 = 1;
  }

  if (!v8)
  {
    v9 = [*(a1 + 32) speakingRangeAndElements];
    v10 = [v9 objectAtIndexedSubscript:v7 - 1];

    v7 = [v10 range];
  }

  if ([*(*(a1 + 32) + 8) rewindWithBoundary:v7])
  {
LABEL_8:
    v11 = 0;
  }

  else
  {
    v13 = STSMessageReplyKeyErrorCode;
    v14 = &off_31D28;
    v11 = [NSDictionary dictionaryWithObjects:&v14 forKeys:&v13 count:1];
  }

  v12 = *(a1 + 40);
  if (v12)
  {
    (*(v12 + 16))(v12, v11, 0);
  }
}

void sub_9378(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 length] && (objc_msgSend(*(a1 + 32), "isEqualToString:", v3) & 1) == 0)
  {
    [*(*(a1 + 40) + 8) setContent:v3];
    v5 = *(*(a1 + 40) + 8);
    v11 = 0;
    v4 = [v5 startSpeakingWithPreferredLanguage:0 error:&v11];
    v6 = v11;
    v7 = AXLogSpeakScreen();
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_INFO);
    if (v4)
    {
      if (v8)
      {
        *buf = 0;
        _os_log_impl(&dword_0, v7, OS_LOG_TYPE_INFO, "Updating assertion flags to keep app alive but not necessarily responsive.", buf, 2u);
      }

      [*(a1 + 40) _clearAssertions:*(*(a1 + 40) + 224)];
      v9 = [v3 length];
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_9550;
      v10[3] = &unk_30C20;
      v10[4] = *(a1 + 40);
      [v3 enumerateSubstringsInRange:0 options:v9 usingBlock:{4, v10}];
    }

    else
    {
      if (v8)
      {
        *buf = 138412290;
        v13 = v6;
        _os_log_impl(&dword_0, v7, OS_LOG_TYPE_INFO, "Error speaking next page: %@", buf, 0xCu);
      }
    }
  }

  else
  {
    v4 = 0;
  }

  [*(a1 + 40) _finishHandlingPageScroll:v4];
}

void sub_9550(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = [*(a1 + 32) sentenceRanges];
  v6 = [NSValue valueWithRange:a3, a4];
  [v7 addObject:v6];
}

id sub_9F34(uint64_t a1)
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_9FB8;
  v2[3] = &unk_30AF0;
  v2[4] = *(a1 + 32);
  return [UIView animateWithDuration:v2 animations:0.2];
}

id *sub_A690(id *result, char a2)
{
  if ((a2 & 1) == 0)
  {
    return [result[4] _handleSpeakingStopped];
  }

  return result;
}

void sub_AE84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va1, a13);
  va_start(va, a13);
  v15 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v13 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_AEB4(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 304);
  v3 = v2 - [*(a1 + 40) range];
  v4 = *(a1 + 32);
  v5 = *(v4 + 304);
  v6 = *(v4 + 312);
  if (v5 >= [*(a1 + 40) range])
  {
    v7 = v3;
  }

  else
  {
    v7 = 0;
  }

  v8 = *(a1 + 48);
  v9 = *(a1 + 32);
  v10 = *(v9 + 304);
  if (v10 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v11 = *(v9 + 312) + v10;
    if (v11 <= [*(a1 + 48) length])
    {
      v12 = [*(a1 + 48) substringWithRange:{*(*(a1 + 32) + 304), *(*(a1 + 32) + 312)}];

      v8 = v12;
    }
  }

  v13 = [*(a1 + 40) element];
  v14 = [v13 numberWithAXAttribute:2004];
  v15 = [v14 unsignedLongLongValue];

  v16 = kAXWebContentTrait;
  v17 = kAXWebContentTrait & v15;
  if ((kAXWebContentTrait & v15) != kAXWebContentTrait)
  {
    goto LABEL_14;
  }

  v18 = [*(a1 + 40) element];
  [v18 updateCache:2310];

  v19 = [*(a1 + 40) element];
  v20 = [AXElement elementWithUIElement:v19];
  v21 = [v20 elementForAttribute:2310 shouldFetchAttributes:0];

  LOBYTE(v19) = [v21 isVisible];
  v22 = [*(a1 + 32) activeWebContentIsHidden];
  if (v19)
  {
    if (v22)
    {
      [*(a1 + 32) setActiveWebContentIsHidden:0];
      *(*(*(a1 + 56) + 8) + 24) = 1;
      *(*(*(a1 + 64) + 8) + 24) = 1;
      v23 = AXLogSpeakScreen();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v23, OS_LOG_TYPE_INFO, "Starting to highlight web content because we are active again.", buf, 2u);
      }
    }

LABEL_14:
    v59[0] = @"speakThisRangeInElement";
    v24 = [NSValue valueWithRange:*(a1 + 80), *(a1 + 88)];
    v60[0] = v24;
    v60[1] = v8;
    v59[1] = @"speakThisCurrentString";
    v59[2] = @"speakThisWantsSentenceRects";
    v60[2] = &__kCFBooleanFalse;
    v59[3] = @"speakThisIgnoreScrollToVisible";
    v25 = [NSNumber numberWithInt:*(*(*(a1 + 64) + 8) + 24) ^ 1u];
    v60[3] = v25;
    v21 = [NSDictionary dictionaryWithObjects:v60 forKeys:v59 count:4];

    v57[0] = @"speakThisRangeInElement";
    v26 = [NSValue valueWithRange:v7, v6];
    v58[0] = v26;
    v58[1] = v8;
    v57[1] = @"speakThisCurrentString";
    v57[2] = @"speakThisWantsSentenceRects";
    v58[2] = &__kCFBooleanTrue;
    v57[3] = @"speakThisIgnoreScrollToVisible";
    v27 = [NSNumber numberWithInt:*(*(*(a1 + 56) + 8) + 24) ^ 1u];
    v58[3] = v27;
    v28 = [NSDictionary dictionaryWithObjects:v58 forKeys:v57 count:4];

    v29 = 0;
    if (v17 == v16 && (*(*(*(a1 + 72) + 8) + 24) & 1) != 0)
    {
      v30 = [*(a1 + 40) element];
      v31 = [v30 BOOLWithAXAttribute:2093];

      if (v31)
      {
        v32 = [*(a1 + 40) element];
        v29 = [v32 objectWithAXAttribute:95224 parameter:v28];

        if ([v29 count])
        {
          v33 = [*(a1 + 40) element];
          v34 = [v33 objectWithAXAttribute:2092];

          if (v34)
          {
            v35 = [AXUIElement uiElementWithAXElement:v34 cache:0];
            v36 = [AXElement elementWithUIElement:v35];
            v37 = [v36 uiElement];
            v38 = [v29 lastObject];
            [v37 performAXAction:2039 withValue:v38];
          }
        }
      }

      else
      {
        v29 = 0;
      }
    }

    if ([*(a1 + 32) highlightWords])
    {
      v39 = [*(a1 + 40) element];
      v40 = [v39 objectWithAXAttribute:95224 parameter:v21];

      if (![v40 count])
      {
        v41 = [v40 firstObject];
        [v41 CGRectValue];
        v63.origin.x = CGRectZero.origin.x;
        v63.origin.y = CGRectZero.origin.y;
        v63.size.width = CGRectZero.size.width;
        v63.size.height = CGRectZero.size.height;
        v42 = CGRectEqualToRect(v61, v63);

        if (v42)
        {
          *(*(a1 + 32) + 304) = xmmword_23190;
          *(*(*(a1 + 72) + 8) + 24) = 1;
        }
      }
    }

    else
    {
      v40 = 0;
    }

    if ([*(a1 + 32) highlightSentences] && *(*(*(a1 + 72) + 8) + 24) == 1)
    {
      v43 = [*(a1 + 40) element];
      v44 = [v43 objectWithAXAttribute:95224 parameter:v28];

      if (![v44 count])
      {
        v45 = [v44 firstObject];
        [v45 CGRectValue];
        v64.origin.x = CGRectZero.origin.x;
        v64.origin.y = CGRectZero.origin.y;
        v64.size.width = CGRectZero.size.width;
        v64.size.height = CGRectZero.size.height;
        v46 = CGRectEqualToRect(v62, v64);

        if (v46)
        {
          *(*(a1 + 32) + 304) = xmmword_23190;
        }
      }
    }

    else
    {
      v44 = v29;
    }

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_B58C;
    block[3] = &unk_30D98;
    v47 = *(a1 + 40);
    block[4] = *(a1 + 32);
    v52 = v47;
    v53 = v40;
    v48 = *(a1 + 72);
    v54 = v44;
    v55 = v48;
    v49 = v44;
    v50 = v40;
    dispatch_async(&_dispatch_main_q, block);

LABEL_37:
    goto LABEL_38;
  }

  if ((v22 & 1) == 0)
  {
    [*(a1 + 32) setActiveWebContentIsHidden:1];
    v28 = AXLogSpeakScreen();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v28, OS_LOG_TYPE_INFO, "Skipping highlighting because web content is hidden. We are probably on a different tab", buf, 2u);
    }

    goto LABEL_37;
  }

LABEL_38:
}

void sub_B58C(uint64_t a1)
{
  if (_AXSQuickSpeakHighlightTextEnabled() && [*(a1 + 32) isReadingFromFrontmostApp])
  {
    if ([*(a1 + 32) needToRefreshContextIds])
    {
      v2 = [*(a1 + 40) element];
      [v2 updateCache:2021];
    }

    if ([*(a1 + 32) highlightWords])
    {
      v3 = *(a1 + 32);
      v4 = *(a1 + 48);
      v5 = [v3[2] view];
      v6 = [*(a1 + 40) element];
      v7 = [v3 _convertAXValueSceneReferenceRects:v4 toView:v5 fromElement:v6];

      v8 = AXLogSpeakScreen();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        sub_1B720();
      }

      [*(*(a1 + 32) + 16) setHighlightSelectionRects:v7];
      [*(a1 + 32) _updateIsHighlightVisible];
    }

    if ([*(a1 + 32) highlightSentences] && *(*(*(a1 + 64) + 8) + 24) == 1)
    {
      v9 = *(a1 + 32);
      v10 = *(a1 + 56);
      v11 = [v9[2] view];
      v12 = [*(a1 + 40) element];
      v13 = [v9 _convertAXValueSceneReferenceRects:v10 toView:v11 fromElement:v12];

      v14 = AXLogSpeakScreen();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        sub_1B790();
      }

      [*(*(a1 + 32) + 16) setSentenceHighlightSelectionRects:v13];
      [*(a1 + 32) _updateIsHighlightVisible];
    }
  }

  v15 = AXLogSpeakScreen();
  if (os_signpost_enabled(v15))
  {
    *v16 = 0;
    _os_signpost_emit_with_name_impl(&dword_0, v15, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "SpeakThis-FetchRects", "", v16, 2u);
  }
}

void sub_C57C(uint64_t a1)
{
  if (_AXSSpeakThisEnabled())
  {
    v2 = +[AXSettings sharedInstance];
    v3 = [v2 showSpeechController];

    v4 = [*(a1 + 32) eventProcessor];
    v5 = v4;
    if (v3)
    {
      [v4 beginHandlingHIDEventsForReason:@"Speak screen was turned on with the speech controller always visible"];

      v6 = *(a1 + 32);

      [v6 _handleLoadSpeakUnderfingerUI];
      return;
    }
  }

  else
  {
    [*(a1 + 32) stopButtonPressed];
    [*(a1 + 32) _handleHideUI];
    v4 = [*(a1 + 32) eventProcessor];
    v5 = v4;
  }

  v7 = [v4 isHandlingHIDEvents];

  if (v7)
  {
    v8 = [*(a1 + 32) eventProcessor];
    [v8 endHandlingHIDEventsForReason:@"Speak screen was turned on with the speech controller always visible"];
  }
}

id sub_CAF8(uint64_t a1)
{
  result = [*(a1 + 32) isWaitingForPageScroll];
  if (result)
  {
    v3 = *(a1 + 32);

    return [v3 _handleNewPage];
  }

  return result;
}

void sub_CD6C(uint64_t a1)
{
  v2 = [*(a1 + 32) view];
  v4 = [v2 window];

  [*(a1 + 32) setContextID:{objc_msgSend(v4, "_contextId")}];
  v3 = [*(a1 + 40) eventProcessor];
  [v3 addEventContextForWindow:v4];
}

void sub_CE80(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (v4)
  {
    v5 = AXLogSpeakScreen();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_1B918();
    }
  }

  else
  {
    [*(a1 + 32) setScreenDetectorRunning:1];
  }
}

void sub_CFCC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_CFE8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained stop];
    [*(a1 + 32) setScreenDetectorRunning:0];
    WeakRetained = v3;
  }
}

id sub_D26C(uint64_t a1)
{
  v2 = [*(a1 + 32) eventProcessor];
  [v2 removeEventContextForContextID:{objc_msgSend(*(a1 + 40), "contextID")}];

  v3 = +[AXUIDisplayManager sharedDisplayManager];
  [v3 removeContentViewController:*(a1 + 40) withUserInteractionEnabled:1 forService:*(a1 + 32)];

  v4 = *(*(a1 + 32) + 128);
  v5 = *(a1 + 48);

  return [v4 removeObjectForKey:v5];
}

id sub_D2F4(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(*(a1 + 32) + 16);

  return [v2 updateUIForDisplayChange];
}

void sub_D530(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 16), *(a1 + 40));
  v2 = *(a1 + 48);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = [*(a1 + 40) view];
  v4 = [v3 window];
  v5 = [v4 screen];
  v6 = [v5 displayIdentity];
  v7 = [v6 displayID];

  v8 = [*(a1 + 40) view];
  v9 = [v8 window];
  v10 = [v9 _contextId];

  v11 = [*(a1 + 32) hitTestCategoryAssertion];
  [v11 invalidate];

  if (v10)
  {
    v12 = +[BKSTouchEventService sharedInstance];
    v13 = [NSNumber numberWithUnsignedInt:v10];
    v17 = v13;
    v14 = [NSArray arrayWithObjects:&v17 count:1];
    v15 = [v12 setContextIDs:v14 forHitTestContextCategory:1];
    [*(a1 + 32) setHitTestCategoryAssertion:v15];
  }

  v16 = [*(a1 + 32) eventProcessor];
  [v16 setActiveDisplayId:v7];
}

void sub_E408(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void sub_E430(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, va, 0x16u);
}

void sub_12AA8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _subscribeEventMonitor];
  }

  (*(*(a1 + 32) + 16))();
}

void sub_12BC8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _unsubscribeEventMonitors];
    WeakRetained = v2;
  }
}

void sub_12F7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_12FA0(uint64_t a1)
{
  v1 = *(a1 + 32);
  objc_copyWeak(&v2, (a1 + 40));
  AXPerformBlockOnMainThread();
  objc_destroyWeak(&v2);
}

void sub_13030(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  objc_destroyWeak(va);
  _Unwind_Resume(a1);
}

void sub_13048(uint64_t a1)
{
  [*(*(a1 + 32) + 8) setAlpha:1.0];
  v2 = +[AXUIDisplayManager sharedDisplayManager];
  v3 = *(*(a1 + 32) + 8);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [v2 registerNubbit:v3 delegate:WeakRetained];

  v5 = +[AXSettings sharedInstance];
  [v5 speechControllerIdleOpacity];
  [*(*(a1 + 32) + 8) setAlpha:?];
}

id sub_13570(uint64_t a1)
{
  +[AXSpeakOverlayControlBar controlBarSize];
  v3 = v2;
  v5 = v4;
  v6 = [*(a1 + 32) view];
  [v6 bounds];
  v7 = floor((CGRectGetWidth(v14) - v3) * 0.5);
  [*(*(a1 + 32) + 8) frame];
  v9 = v8;
  [*(*(a1 + 32) + 8) frame];
  [*(*(a1 + 32) + 8) setFrame:{v7, fmax(v9 + v10 - v5, 0.0), v3, v5}];

  [*(*(a1 + 32) + 96) updateButtonConstraints];
  v11 = *(*(a1 + 32) + 8);

  return [v11 layoutIfNeeded];
}

void sub_149E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_14A08(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained collapseNubbit];
}

id sub_14DB8(uint64_t a1)
{
  [*(*(a1 + 32) + 8) frame];
  v3 = v2;
  v5 = v4;
  v6 = [*(a1 + 32) stateManager];
  v7 = [v6 inTabMode];

  if (v7)
  {
    +[AXSpeakOverlayControlBar nubbitSize];
    v9 = v8;
    v11 = v10;
    v12 = *(a1 + 32);
    v13 = [v12 view];
    [v13 frame];
    [v12 _denormalizedNubbitOriginForViewSize:{v14, v15}];
    v17 = v16;
    v19 = v18;

    [*(*(a1 + 32) + 8) setFrame:{v17, v19, v9, v11}];
  }

  else
  {
    +[AXSpeakOverlayControlBar controlBarSize];
    v21 = v20;
    v23 = v22;
    v24 = [*(a1 + 32) view];
    [v24 bounds];
    v25 = floor((CGRectGetWidth(v29) - v21) * 0.5);

    [*(*(a1 + 32) + 8) setFrame:{v25, fmax(v3 + v5 - v23, 0.0), v21, v23}];
    [*(*(a1 + 32) + 96) updateButtonConstraints];
  }

  [*(*(a1 + 32) + 8) setAlpha:1.0];
  [*(*(a1 + 32) + 96) updateForTabModeChangeUsingSpeakFingerButton:*(a1 + 40)];
  [*(a1 + 32) _updateNubbitForTabModeChange];
  v26 = *(*(a1 + 32) + 8);

  return [v26 layoutIfNeeded];
}

uint64_t sub_15180(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t sub_15820(uint64_t result, int a2)
{
  if (a2)
  {
    *(*(result + 32) + 42) = 0;
  }

  return result;
}

id sub_15E90(uint64_t a1)
{
  [*(a1 + 32) _denormalizedNubbitOriginForViewSize:{*(a1 + 40), *(a1 + 48)}];
  v3 = v2;
  v5 = v4;
  [*(*(a1 + 32) + 8) frame];
  v7 = v6;
  v9 = v8;
  v10 = [*(a1 + 32) stateManager];
  v11 = [v10 inTabMode];

  if ((v11 & 1) == 0)
  {
    v12 = [*(a1 + 32) view];
    [v12 frame];
    Width = CGRectGetWidth(v17);
    [*(*(a1 + 32) + 8) frame];
    v3 = floor((Width - CGRectGetWidth(v18)) * 0.5);
  }

  v14 = *(*(a1 + 32) + 8);

  return [v14 setFrame:{v3, v5, v7, v9}];
}

void sub_15F80(uint64_t a1)
{
  v2 = [*(a1 + 32) stateManager];
  v3 = [v2 inTabMode];

  if (v3)
  {
    v4 = *(a1 + 32);

    [v4 _registerNubbit];
  }
}

id sub_1642C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [v2 view];
  [v3 frame];
  [v2 _denormalizedNubbitOriginForViewSize:{v4, v5}];
  v7 = v6;
  v9 = v8;

  [*(*(a1 + 32) + 8) frame];
  v11 = v10;
  v13 = v12;
  v14 = +[UIScreen mainScreen];
  [v14 bounds];
  v16 = vabdd_f64(v15, *(a1 + 48));

  if (v16 >= 2.22044605e-16)
  {
    v29.origin.x = v7;
    v29.origin.y = v9;
    v29.size.width = v11;
    v29.size.height = v13;
    if (CGRectIntersectsRect(*(a1 + 40), v29) && (+[UIScreen mainScreen](UIScreen, "mainScreen"), v19 = objc_claimAutoreleasedReturnValue(), [v19 bounds], v21 = vabdd_f64(v20, *(a1 + 48) + *(a1 + 64)), v19, v21 < 2.22044605e-16))
    {
      v28.origin.x = v7;
      v28.origin.y = v9;
      v28.size.width = v11;
      v28.size.height = v13;
      v22 = v9 - (CGRectGetMaxY(v28) - *(a1 + 48));
      if (v22 >= 0.0)
      {
        v23 = v22;
      }

      else
      {
        v23 = 0.0;
      }

      [*(*(a1 + 32) + 8) frame];
      if (vabdd_f64(v24, v23) >= 0.001)
      {
        if (([*(a1 + 32) ignoreNextNubbitPositionUpdate] & 1) == 0)
        {
          [*(a1 + 32) _saveNubbitPosition];
        }

        [*(*(a1 + 32) + 8) setFrame:{v7, v23, v11, v13}];
      }

      v25 = *(a1 + 32);

      return [v25 setIgnoreNextNubbitPositionUpdate:1];
    }

    else
    {
      result = [*(a1 + 32) ignoreNextNubbitPositionUpdate];
      if ((result & 1) == 0)
      {
        v26 = *(a1 + 32);

        return [v26 _saveNubbitPosition];
      }
    }
  }

  else
  {
    [*(a1 + 32) setIgnoreNextNubbitPositionUpdate:0];
    v17 = *(*(a1 + 32) + 8);

    return [v17 setFrame:{v7, v9, v11, v13}];
  }

  return result;
}

void sub_16684(uint64_t a1)
{
  v2 = [*(a1 + 32) stateManager];
  v3 = [v2 inTabMode];

  if (v3)
  {
    v4 = *(a1 + 32);

    [v4 _registerNubbit];
  }
}

void sub_167B8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = *(a1 + 48);
    v4 = *(a1 + 32);
    v5 = WeakRetained;
    if (v3 != *(v4 + 41))
    {
      *(v4 + 41) = v3;
      if (*(a1 + 48) == 1)
      {
        +[NSDate timeIntervalSinceReferenceDate];
        [v5 setLastDeviceLockedTimestamp:?];
      }

      else
      {
        *(*(a1 + 32) + 40) = 0;
        +[NSDate timeIntervalSinceReferenceDate];
        [v5 setLastDeviceUnlockedTimestamp:?];
      }
    }

    [v5 setDeviceLocked:*(a1 + 48)];
    WeakRetained = v5;
  }
}

void sub_16924(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
}

id AXSpeakBundle()
{
  if (qword_38508 != -1)
  {
    sub_1BBB4();
  }

  v1 = qword_38500;

  return v1;
}

void sub_16DC4(id a1)
{
  qword_38500 = [NSBundle bundleForClass:objc_opt_class()];

  _objc_release_x1();
}

id AXSpeakThisLocString(void *a1)
{
  v1 = a1;
  v2 = AXSpeakBundle();
  v3 = [v2 localizedStringForKey:v1 value:v1 table:@"Localizable"];

  return v3;
}

id AXSpeakThisSpeakingRateStringForSpeed(double a1)
{
  if (fabs(a1 + -0.5) < 0.001)
  {
    v2 = @"SPEED_HALF";
LABEL_9:
    v3 = AXSpeakThisLocString(v2);
    goto LABEL_10;
  }

  if (fabs(a1 + -1.0) < 0.001)
  {
    v2 = @"SPEED_NORMAL";
    goto LABEL_9;
  }

  if (fabs(a1 + -1.5) < 0.001)
  {
    v2 = @"SPEED_ONE_AND_HALF";
    goto LABEL_9;
  }

  if (fabs(a1 + -2.0) < 0.001)
  {
    v2 = @"SPEED_TWO";
    goto LABEL_9;
  }

  v5 = AXSpeakThisLocString(@"SPEED_GENERIC");
  v3 = [NSString localizedStringWithFormat:v5, *&a1];

LABEL_10:

  return v3;
}

void sub_16FE4(id a1)
{
  qword_38518 = objc_alloc_init(SpeakThisUIStateManager);

  _objc_release_x1();
}

void sub_17644(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1765C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_17FD0(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = [v2 isSpeaking];

  v4 = [*(a1 + 32) delegate];
  v5 = v4;
  if (v3)
  {
    [v4 stopButtonPressed];
  }

  else
  {
    [v4 startNewReadAllFromGesture];
  }
}

void sub_18050(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 exitSpeakFingerModeWithEventProcessor:*(a1 + 32)];
}

void sub_180A4(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 speakElementAtPoint:*(a1 + 32) withEventProcessor:{*(a1 + 40), *(a1 + 48)}];
}

uint64_t sub_181DC()
{
  v0 = sub_1BEA4();
  sub_1AED0(v0, AXSSDataLog);
  sub_182C4(v0, AXSSDataLog);
  return sub_1BE94();
}

uint64_t AXSSDataLog.unsafeMutableAddressor()
{
  if (qword_382A0 != -1)
  {
    swift_once();
  }

  v0 = sub_1BEA4();

  return sub_182C4(v0, AXSSDataLog);
}

uint64_t sub_182C4(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

id sub_182FC()
{
  v1 = OBJC_IVAR____TtC9SpeakThis20SpeakScreenUIManager____lazy_storage___displayManager;
  v2 = *(v0 + OBJC_IVAR____TtC9SpeakThis20SpeakScreenUIManager____lazy_storage___displayManager);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC9SpeakThis20SpeakScreenUIManager____lazy_storage___displayManager);
LABEL_5:
    v6 = v2;
    return v3;
  }

  result = [objc_opt_self() sharedDisplayManager];
  if (result)
  {
    v5 = *(v0 + v1);
    *(v0 + v1) = result;
    v3 = result;

    v2 = 0;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

void sub_18380()
{
  v1 = v0;
  v2 = sub_1BE34();
  v75 = *(v2 - 8);
  v3 = *(v75 + 64);
  __chkstk_darwin(v2, v4);
  v6 = &v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1A724(&qword_38378, &qword_23320);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v11 = __chkstk_darwin(v7, v10);
  v13 = &v65 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11, v14);
  v16 = &v65 - v15;
  v17 = sub_1BDF4();
  v18 = *(*(v17 - 8) + 64);
  v20 = __chkstk_darwin(v17, v19);
  v22 = __chkstk_darwin(v20, v21);
  v24 = &v65 - v23;
  __chkstk_darwin(v22, v25);
  v29 = &v65 - v28;
  if (*(v1 + OBJC_IVAR____TtC9SpeakThis20SpeakScreenUIManager_activeViewController))
  {
    return;
  }

  v72 = v16;
  v73 = v13;
  v70 = v8;
  v71 = OBJC_IVAR____TtC9SpeakThis20SpeakScreenUIManager_activeViewController;
  v66 = v6;
  v67 = v2;
  v69 = v27;
  v76 = v26;
  if (qword_382A8 != -1)
  {
    swift_once();
  }

  v30 = sub_1BE24();
  v31 = sub_182C4(v30, static SpeakThisSignposts.controller);
  sub_1BDE4();
  v68 = v31;
  v32 = sub_1BE04();
  v33 = sub_1BF74();
  v34 = sub_1BF84();
  v36 = v72;
  v35 = v73;
  v74 = v17;
  if (v34)
  {
    v37 = swift_slowAlloc();
    *v37 = 0;
    v38 = sub_1BDD4();
    _os_signpost_emit_with_name_impl(&dword_0, v32, v33, v38, "showControllerUI", "", v37, 2u);
    v17 = v74;
  }

  v39 = v76;
  (*(v76 + 16))(v24, v29, v17);
  v40 = sub_1BE64();
  v41 = *(v40 + 48);
  v42 = *(v40 + 52);
  swift_allocObject();
  sub_1BE54();
  v43 = *(v39 + 8);
  v76 = v39 + 8;
  v43(v29, v17);
  v44 = objc_opt_self();
  if (![v44 sharedInstance])
  {
    __break(1u);
    goto LABEL_16;
  }

  sub_1A614();
  sub_1A76C(&qword_38380);
  sub_1BD44();
  v45 = objc_allocWithZone(sub_1A724(&qword_38388, &qword_23328));
  v46 = v70;
  (*(v70 + 16))(v35, v36, v7);
  v47 = sub_1BEE4();
  (*(v46 + 8))(v36, v7);
  v48 = v71;
  v49 = *(v1 + v71);
  *(v1 + v71) = v47;
  v50 = v47;

  v51 = [v50 view];
  if (!v51)
  {
LABEL_16:
    __break(1u);
    return;
  }

  v52 = [objc_opt_self() clearColor];
  [v51 setBackgroundColor:v52];

  v53 = sub_182FC();
  v54 = *(v1 + v48);
  v55 = [v44 sharedInstance];
  [v53 addContentViewController:v54 withUserInteractionEnabled:1 forService:v55];

  v56 = sub_1BE04();
  v57 = v69;
  sub_1BE44();
  v58 = sub_1BF64();
  if (sub_1BF84())
  {

    v59 = v66;
    sub_1BE74();

    v60 = v75;
    v61 = v67;
    if ((*(v75 + 88))(v59, v67) == enum case for OSSignpostError.doubleEnd(_:))
    {
      v62 = "[Error] Interval already ended";
    }

    else
    {
      (*(v60 + 8))(v59, v61);
      v62 = "";
    }

    v63 = swift_slowAlloc();
    *v63 = 0;
    v64 = sub_1BDD4();
    _os_signpost_emit_with_name_impl(&dword_0, v56, v58, v64, "showControllerUI", v62, v63, 2u);
  }

  v43(v57, v74);
}

uint64_t SSSecureHostingController.__allocating_init(rootView:)(uint64_t a1)
{
  v2 = v1;
  v4 = objc_allocWithZone(v1);
  v5 = sub_1A52C(a1);
  (*(*(*(v2 + class metadata base offset for SSSecureHostingController) - 8) + 8))(a1);
  return v5;
}

uint64_t sub_18AA8()
{
  v1 = sub_1BEA4();
  v0[5] = v1;
  v2 = *(v1 - 8);
  v0[6] = v2;
  v3 = *(v2 + 64) + 15;
  v0[7] = swift_task_alloc();
  v4 = sub_1BD84();
  v0[8] = v4;
  v5 = *(v4 - 8);
  v0[9] = v5;
  v6 = *(v5 + 64) + 15;
  v0[10] = swift_task_alloc();
  v7 = sub_1A724(&qword_38398, &qword_23360);
  v0[11] = v7;
  v8 = *(v7 - 8);
  v0[12] = v8;
  v9 = *(v8 + 64) + 15;
  v0[13] = swift_task_alloc();
  v10 = sub_1A724(&qword_383A0, &qword_23368);
  v0[14] = v10;
  v11 = *(v10 - 8);
  v0[15] = v11;
  v12 = *(v11 + 64) + 15;
  v0[16] = swift_task_alloc();
  v13 = sub_1A724(&qword_383A8, &unk_23370);
  v0[17] = v13;
  v14 = *(v13 - 8);
  v0[18] = v14;
  v15 = *(v14 + 64) + 15;
  v0[19] = swift_task_alloc();
  v0[20] = swift_task_alloc();

  return _swift_task_switch(sub_18D04, 0, 0);
}

uint64_t sub_18D04()
{
  v0[21] = sub_1BDC4();
  v0[22] = sub_1BF24();
  v0[23] = sub_1BF14();
  v2 = sub_1BF04();

  return _swift_task_switch(sub_18DA8, v2, v1);
}

uint64_t sub_18DA8()
{
  v1 = v0[23];
  v2 = v0[21];

  v0[24] = sub_1BDB4();

  return _swift_task_switch(sub_18E1C, 0, 0);
}

uint64_t sub_18E1C()
{
  v1 = objc_opt_self();
  v0[25] = v1;
  v2 = [v1 sharedInstance];
  v0[26] = v2;
  if (v2)
  {
    v5 = v0[22];
    v0[27] = sub_1BF14();
    v6 = sub_1BF04();
    v8 = v7;
    v2 = sub_18ED8;
    v3 = v6;
    v4 = v8;
  }

  else
  {
    __break(1u);
  }

  return _swift_task_switch(v2, v3, v4);
}

uint64_t sub_18ED8()
{
  v2 = v0[26];
  v1 = v0[27];
  v3 = v0[20];

  v0[28] = sub_1A614();
  v0[29] = sub_1A76C(&qword_38380);
  sub_1BD64();

  return _swift_task_switch(sub_18F94, 0, 0);
}

uint64_t sub_18F94()
{
  v1 = [*(v0 + 200) sharedInstance];
  *(v0 + 240) = v1;
  if (v1)
  {
    v4 = *(v0 + 176);
    *(v0 + 248) = sub_1BF14();
    v5 = sub_1BF04();
    v7 = v6;
    v1 = sub_19044;
    v2 = v5;
    v3 = v7;
  }

  else
  {
    __break(1u);
  }

  return _swift_task_switch(v1, v2, v3);
}

uint64_t sub_19044()
{
  v2 = v0[30];
  v1 = v0[31];
  v4 = v0[28];
  v3 = v0[29];
  v5 = v0[16];

  sub_1BD74();

  return _swift_task_switch(sub_190D0, 0, 0);
}

uint64_t sub_190D0()
{
  v1 = [*(v0 + 200) sharedInstance];
  *(v0 + 256) = v1;
  if (v1)
  {
    v4 = *(v0 + 176);
    *(v0 + 264) = sub_1BF14();
    v5 = sub_1BF04();
    v7 = v6;
    v1 = sub_19180;
    v2 = v5;
    v3 = v7;
  }

  else
  {
    __break(1u);
  }

  return _swift_task_switch(v1, v2, v3);
}

uint64_t sub_19180()
{
  v2 = v0[32];
  v1 = v0[33];
  v4 = v0[28];
  v3 = v0[29];
  v5 = v0[13];

  sub_1BD54();

  return _swift_task_switch(sub_1920C, 0, 0);
}

uint64_t sub_1920C()
{
  v1 = [*(v0 + 200) sharedInstance];
  *(v0 + 272) = v1;
  if (v1)
  {
    v4 = *(v0 + 176);
    *(v0 + 280) = sub_1BF14();
    v5 = sub_1BF04();
    v7 = v6;
    v1 = sub_192BC;
    v2 = v5;
    v3 = v7;
  }

  else
  {
    __break(1u);
  }

  return _swift_task_switch(v1, v2, v3);
}

uint64_t sub_192BC()
{
  v2 = v0[34];
  v1 = v0[35];
  v4 = v0[28];
  v3 = v0[29];
  v5 = v0[19];

  sub_1BD64();

  return _swift_task_switch(sub_19348, 0, 0);
}

uint64_t sub_19348()
{
  v1 = v0[22];
  (*(v0[9] + 104))(v0[10], enum case for AXUIActivityRelevance.speakScreen(_:), v0[8]);
  v0[36] = sub_1BF14();
  v3 = sub_1BF04();

  return _swift_task_switch(sub_193F8, v3, v2);
}

uint64_t sub_193F8()
{
  v1 = *(v0 + 288);
  v28 = *(v0 + 160);
  v30 = *(v0 + 152);
  v32 = *(v0 + 192);
  v3 = *(v0 + 128);
  v2 = *(v0 + 136);
  v5 = *(v0 + 104);
  v4 = *(v0 + 112);
  v7 = *(v0 + 80);
  v6 = *(v0 + 88);

  sub_1AE88(&qword_383B0, &qword_383A8, &unk_23370);
  sub_1AE88(&qword_383B8, &qword_383A0, &qword_23368);
  sub_1AE88(&unk_383C0, &qword_38398, &qword_23360);
  sub_1BDA4();
  *(v0 + 296) = 0;
  v8 = *(v0 + 152);
  v31 = *(v0 + 160);
  v9 = *(v0 + 136);
  v10 = *(v0 + 144);
  v11 = *(v0 + 120);
  v27 = *(v0 + 112);
  v29 = *(v0 + 128);
  v26 = *(v0 + 104);
  v13 = *(v0 + 88);
  v12 = *(v0 + 96);
  v14 = *(v0 + 72);
  v15 = *(v0 + 80);
  v16 = *(v0 + 64);

  (*(v14 + 8))(v15, v16);
  v17 = *(v10 + 8);
  v17(v8, v9);
  (*(v12 + 8))(v26, v13);
  (*(v11 + 8))(v29, v27);
  v17(v31, v9);
  v19 = *(v0 + 152);
  v18 = *(v0 + 160);
  v20 = *(v0 + 128);
  v21 = *(v0 + 104);
  v22 = *(v0 + 80);
  v23 = *(v0 + 56);

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_196A8()
{
  if (qword_382A0 != -1)
  {
    swift_once();
  }

  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  v4 = sub_182C4(v3, AXSSDataLog);
  swift_beginAccess();
  (*(v2 + 16))(v1, v4, v3);
  v5 = sub_1BE84();
  v6 = sub_1BF54();
  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[37];
  v10 = v0[6];
  v9 = v0[7];
  v11 = v0[5];
  if (v7)
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_0, v5, v6, "Failed to start live activity", v12, 2u);
  }

  (*(v10 + 8))(v9, v11);
  v14 = v0[19];
  v13 = v0[20];
  v15 = v0[16];
  v16 = v0[13];
  v17 = v0[10];
  v18 = v0[7];

  v19 = v0[1];

  return v19();
}

uint64_t sub_19868(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1A724(&qword_38390, &qword_23330);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8, v11);
  v13 = v28 - v12;
  sub_1ABC0(a3, v28 - v12);
  v14 = sub_1BF44();
  v15 = *(v14 - 8);
  v16 = (*(v15 + 48))(v13, 1, v14);

  if (v16 == 1)
  {
    sub_1AC30(v13);
  }

  else
  {
    sub_1BF34();
    (*(v15 + 8))(v13, v14);
  }

  v18 = *(a5 + 16);
  v17 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v18)
  {
    swift_getObjectType();
    v19 = sub_1BF04();
    v21 = v20;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v22 = sub_1BEF4() + 32;
      v23 = swift_allocObject();
      *(v23 + 16) = a4;
      *(v23 + 24) = a5;

      if (v21 | v19)
      {
        v29[0] = 0;
        v29[1] = 0;
        v24 = v29;
        v29[2] = v19;
        v29[3] = v21;
      }

      else
      {
        v24 = 0;
      }

      v28[1] = 7;
      v28[2] = v24;
      v28[3] = v22;
      v26 = swift_task_create();

      sub_1AC30(a3);

      return v26;
    }
  }

  else
  {
    v19 = 0;
    v21 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1AC30(a3);
  v25 = swift_allocObject();
  *(v25 + 16) = a4;
  *(v25 + 24) = a5;
  if (v21 | v19)
  {
    v29[4] = 0;
    v29[5] = 0;
    v29[6] = v19;
    v29[7] = v21;
  }

  return swift_task_create();
}

void sub_19C18()
{
  v1 = OBJC_IVAR____TtC9SpeakThis20SpeakScreenUIManager_activeViewController;
  v2 = *(v0 + OBJC_IVAR____TtC9SpeakThis20SpeakScreenUIManager_activeViewController);
  if (v2)
  {
    v3 = v2;
    v4 = sub_182FC();
    v5 = objc_opt_self();
    v6 = v3;
    v7 = [v5 sharedInstance];
    [v4 removeContentViewController:v6 withUserInteractionEnabled:1 forService:v7];

    v8 = *(v0 + v1);
    *(v0 + v1) = 0;
  }
}

id sub_19D94()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SpeakScreenUIManager();
  return objc_msgSendSuper2(&v2, "dealloc");
}

Swift::Void __swiftcall SpeakThisUIServer.updateSpeakScreenUI()()
{
  sub_1A614();
  sub_1A76C(&qword_382B8);
  sub_1BEB4();
  sub_1BEC4();
}

uint64_t sub_19F34@<X0>(uint64_t *a1@<X8>)
{
  sub_1A614();
  result = sub_1BEB4();
  *a1 = result;
  return result;
}

uint64_t SSSecureHostingController.init(rootView:)(uint64_t a1)
{
  v3 = swift_isaMask & *v1;
  v4 = sub_1A52C(a1);
  (*(*(*(v3 + class metadata base offset for SSSecureHostingController) - 8) + 8))(a1);
  return v4;
}

void *SSSecureHostingController.init(coder:rootView:)(uint64_t a1, uint64_t a2)
{
  v4 = *((swift_isaMask & *v2) + class metadata base offset for SSSecureHostingController);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(a1, a2);
  (*(v5 + 16))(&v12 - v7);
  v8 = sub_1BED4();
  v9 = *(v5 + 8);
  v10 = v8;
  v9(a2, v4);
  if (v8)
  {
  }

  return v8;
}

id SSSecureHostingController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder:a1];

  return v3;
}

id SSSecureHostingController.init(coder:)(void *a1)
{
  v3 = swift_isaMask & *v1;
  v4 = *(v3 + class metadata base offset for SSSecureHostingController);
  v5 = *(v3 + class metadata base offset for SSSecureHostingController + 8);
  v8.receiver = v1;
  v8.super_class = type metadata accessor for SSSecureHostingController();
  v6 = objc_msgSendSuper2(&v8, "initWithCoder:", a1);

  if (v6)
  {
  }

  return v6;
}

id SSSecureHostingController.__deallocating_deinit()
{
  v1 = swift_isaMask & *v0;
  v2 = *(v1 + class metadata base offset for SSSecureHostingController);
  v3 = *(v1 + class metadata base offset for SSSecureHostingController + 8);
  v5.receiver = v0;
  v5.super_class = type metadata accessor for SSSecureHostingController();
  return objc_msgSendSuper2(&v5, "dealloc");
}

uint64_t sub_1A33C(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1A434;

  return v7(a1);
}

uint64_t sub_1A434()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1A52C(uint64_t a1)
{
  v2 = (*(*(*((swift_isaMask & *v1) + class metadata base offset for SSSecureHostingController) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(a1, a1);
  (*(v4 + 16))(&v6 - v3);
  return sub_1BEE4();
}

unint64_t sub_1A614()
{
  result = qword_382B0;
  if (!qword_382B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_382B0);
  }

  return result;
}

uint64_t sub_1A724(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1A76C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1A614();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A9E8()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1AA20()
{
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1AACC;

  return sub_18AA8();
}

uint64_t sub_1AACC()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1ABC0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A724(&qword_38390, &qword_23330);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1AC30(uint64_t a1)
{
  v2 = sub_1A724(&qword_38390, &qword_23330);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1AC98()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1ACD0(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1AF68;

  return sub_1A33C(a1, v5);
}

uint64_t sub_1AD88(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1AACC;

  return sub_1A33C(a1, v5);
}

uint64_t sub_1AE40(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1AE88(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1AE40(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t *sub_1AED0(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t SpeakThisSignposts.controller.unsafeMutableAddressor()
{
  if (qword_382A8 != -1)
  {
    swift_once();
  }

  v0 = sub_1BE24();

  return sub_182C4(v0, static SpeakThisSignposts.controller);
}

uint64_t sub_1AFDC()
{
  v0 = sub_1BE24();
  sub_1AED0(v0, static SpeakThisSignposts.controller);
  sub_182C4(v0, static SpeakThisSignposts.controller);
  return sub_1BE14();
}

uint64_t static SpeakThisSignposts.controller.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_382A8 != -1)
  {
    swift_once();
  }

  v2 = sub_1BE24();
  v3 = sub_182C4(v2, static SpeakThisSignposts.controller);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

void sub_1B1F8()
{
  sub_E424();
  sub_E3FC();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1B234()
{
  sub_E424();
  sub_E3FC();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1B270(uint64_t a1)
{
  v1 = *(a1 + 128);
  v7 = +[NSThread callStackSymbols];
  sub_E460();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_1B320(void *a1)
{
  [a1 count];
  sub_E3F0();
  sub_E460();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_1B3A0(uint64_t a1, NSObject *a2)
{
  v3 = [NSNumber numberWithInt:a1];
  sub_E3F0();
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "Could not make RBSTarget for %@", v4, 0xCu);
}

void sub_1B654()
{
  sub_E424();
  sub_E3FC();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1B690(NSRange a1)
{
  v1 = NSStringFromRange(a1);
  sub_E3F0();
  sub_E460();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_1B720()
{
  sub_E3F0();
  sub_E3FC();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1B790()
{
  sub_E3F0();
  sub_E3FC();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1B800()
{
  sub_E424();
  sub_E3FC();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1B83C()
{
  sub_E3F0();
  sub_E450();
  sub_E430(&dword_0, v0, v1, "Adding content view controller %@ for window scene: %@");
}

void sub_1B8A8()
{
  sub_E3F0();
  sub_E3FC();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1B9C0()
{
  sub_E3F0();
  sub_E450();
  sub_E430(&dword_0, v0, v1, "Removing content view controller %@ for window scene: %@");
}

void sub_1BA94()
{
  sub_E3F0();
  sub_E450();
  sub_E430(&dword_0, v0, v1, "Updating content view controller %@ for window scene: %@");
}

void sub_1BB00()
{
  sub_E424();
  sub_E3FC();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1BB3C()
{
  sub_E424();
  sub_E3FC();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1BB78()
{
  sub_E424();
  sub_E3FC();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1BBDC(int a1, NSObject *a2)
{
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_debug_impl(&dword_0, a2, OS_LOG_TYPE_DEBUG, "Added event context for contextID: %u", v2, 8u);
}

void sub_1BC54(int a1, NSObject *a2)
{
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_debug_impl(&dword_0, a2, OS_LOG_TYPE_DEBUG, "Removed event context for contextID: %u", v2, 8u);
}

void sub_1BCCC(int a1, NSObject *a2)
{
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "Unable to remove event context for contextID: %u", v2, 8u);
}