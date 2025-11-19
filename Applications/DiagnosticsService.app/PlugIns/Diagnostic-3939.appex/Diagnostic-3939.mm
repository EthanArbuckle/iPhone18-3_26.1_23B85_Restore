void sub_100001524(id a1)
{
  qword_1000166C8 = objc_alloc_init(DAHIDEventMonitor);

  _objc_release_x1();
}

void sub_100001A7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100001A94(uint64_t a1)
{
  v2 = [*(a1 + 32) HIDEvents];
  v3 = [v2 objectAtIndexedSubscript:*(a1 + 48)];
  v4 = [v3 objectForKeyedSubscript:@"HIDServiceClient"];
  v5 = [v4 pointerValue];

  if (v5)
  {
    *(*(*(a1 + 40) + 8) + 24) = IOHIDServiceClientSetProperty(v5, *(a1 + 56), *(a1 + 64)) != 0;
  }

  else
  {
    v6 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1000086D8();
    }
  }
}

uint64_t _HIDEventFilterCallback(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v5 = [a2 delegate];
    [v5 handleHIDEvent:a4];
  }

  return 0;
}

void sub_1000022B4(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

void sub_100004D44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, id location)
{
  objc_destroyWeak((v28 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100004DB0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _downloadSpriteImageUsingResponder:*(a1 + 32)];
}

void sub_100004E00(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Haptic engine was reset", buf, 2u);
    }

    v3 = [WeakRetained hapticEngine];
    v6 = 0;
    [v3 startAndReturnError:&v6];
    v4 = v6;

    if (v4)
    {
      v5 = DiagnosticLogHandleForCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        sub_1000088A4();
      }
    }
  }
}

void sub_100004EEC(id a1, int64_t a2)
{
  v3 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 134217984;
    v5 = a2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Haptic engine stopped for reason %ld", &v4, 0xCu);
  }
}

void sub_100004F94(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained buttonEventMonitor];
  v3 = objc_loadWeakRetained((a1 + 32));
  [v2 addTarget:v3 action:"didReceiveButtonEvent:" forButtonEvents:objc_msgSend(v3 propagate:{"targetButtonEvents"), 0}];
}

void sub_10000530C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100005344(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10000535C(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_100005BF0(uint64_t a1)
{
  v2 = [*(a1 + 32) inputs];
  v3 = [v2 buttonParameters];

  v4 = [*(a1 + 32) inputs];
  v5 = v4;
  if (v3)
  {
    v6 = [v4 buttonParameters];
    v7 = [v6 segments];
  }

  else
  {
    v8 = [v4 switchParameters];

    v9 = [*(a1 + 32) inputs];
    v5 = v9;
    if (v8)
    {
      v6 = [v9 switchParameters];
      v7 = [v6 states];
    }

    else
    {
      v10 = [v9 touchButtonParameters];

      if (!v10)
      {
        return;
      }

      v5 = [*(a1 + 32) inputs];
      v6 = [v5 touchButtonParameters];
      v7 = [v6 targetEvents];
    }
  }

  v11 = v7;
  v12 = [v7 objectAtIndexedSubscript:{objc_msgSend(*(a1 + 32), "currentSegment")}];
  v13 = [v12 range];

  if (v13)
  {
    v14 = *(a1 + 32);
    v15 = [v13 transitionAssetRange];
    v17 = v16;
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_100005DBC;
    v19[3] = &unk_1000105B8;
    v19[4] = *(a1 + 32);
    v20 = v13;
    v18 = v13;
    [v14 showTransitionWithRange:v15 WithCompletionHandler:{v17, v19}];
  }
}

void sub_100005DBC(uint64_t a1)
{
  v2 = [*(a1 + 32) testImage];
  v3 = [*(a1 + 32) spriteImage];
  v4 = [*(a1 + 40) displayAssetRange];
  v6 = v5;
  v7 = [*(a1 + 32) inputs];
  v8 = [v7 buttonSwitchSpecification];
  v9 = [v8 asset];
  [v9 size];
  v10 = [DASpriteImage imagesFromSprite:v3 inRange:v4 withImageSize:v6];
  [v2 setAnimationImages:v10];

  [*(a1 + 40) displayAssetRange];
  v12 = v11 / 60.0;
  v13 = [*(a1 + 32) testImage];
  [v13 setAnimationRepeatCount:0];

  v14 = [*(a1 + 32) testImage];
  [v14 setAnimationDuration:v12];

  v15 = [*(a1 + 32) testImage];
  [v15 startAnimating];
}

uint64_t sub_100006220(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100006350;
  block[3] = &unk_100010438;
  block[4] = *(a1 + 32);
  dispatch_async(&_dispatch_main_q, block);
  if (+[CBSUtilities isCheckerBoardActive])
  {
    +[CBSUtilities disableTouchButtonEvents];
  }

  v2 = +[DAHIDEventMonitor sharedInstance];
  v3 = [v2 currentlyMonitoring];

  if (v3)
  {
    v4 = +[DAHIDEventMonitor sharedInstance];
    [v4 stopMonitoring];
  }

  v5 = [*(a1 + 32) hapticEngine];

  if (v5)
  {
    v6 = [*(a1 + 32) hapticEngine];
    [v6 stopWithCompletionHandler:0];

    [*(a1 + 32) setHapticEngine:0];
  }

  return (*(*(a1 + 40) + 16))();
}

void sub_100006350(uint64_t a1)
{
  v2 = [*(a1 + 32) timeoutTimer];

  if (v2)
  {
    v3 = [*(a1 + 32) timeoutTimer];
    [v3 invalidate];

    v4 = *(a1 + 32);

    [v4 setTimeoutTimer:0];
  }
}

id sub_1000065C0(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) result];
  [v3 setStatusCode:v2];

  v4 = [*(a1 + 32) result];
  v5 = [v4 statusCode];
  v6 = [v5 isEqualToNumber:&off_1000111B8];

  if (v6)
  {
    v7 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_100008954();
    }

    goto LABEL_7;
  }

  v8 = [*(a1 + 32) allResults];

  if (!v8)
  {
LABEL_7:
    v9 = [*(a1 + 32) result];
    [v9 setData:&__NSDictionary0__struct];
    goto LABEL_8;
  }

  v13 = @"inputEvents";
  v9 = [*(a1 + 32) allResults];
  v14 = v9;
  v10 = [NSDictionary dictionaryWithObjects:&v14 forKeys:&v13 count:1];
  v11 = [*(a1 + 32) result];
  [v11 setData:v10];

LABEL_8:
  return [*(a1 + 32) setFinished:1];
}

void sub_100006A28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v22 + 40));
  objc_destroyWeak((v21 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100006A64(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained inputs];
  v4 = [v3 touchButtonParameters];

  v5 = objc_loadWeakRetained((a1 + 40));
  v6 = v5;
  if (v4)
  {
    [v5 setupTest];

    v7 = objc_alloc_init(NSMutableArray);
    v8 = objc_loadWeakRetained((a1 + 40));
    [v8 setAllResults:v7];

    [*(a1 + 32) startTimer];
    [*(a1 + 32) showNextSegment];
    [*(a1 + 32) setIsInputMonitoringPaused:0];
  }

  else
  {
    v9 = [v5 buttonEventMonitor];
    v10 = objc_loadWeakRetained((a1 + 40));
    [v9 addTarget:v10 action:"didReceiveButtonEvent:" forButtonEvents:objc_msgSend(v10 propagate:{"targetButtonEvents"), 0}];
  }

  [*(a1 + 32) setIsInputMonitoringPaused:0];
  v11 = objc_loadWeakRetained((a1 + 40));
  [v11 resetTimer];
}

void sub_100006BB0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained inputs];
  v4 = [v3 touchButtonParameters];

  v5 = objc_loadWeakRetained((a1 + 40));
  v6 = v5;
  if (v4)
  {
    [v5 timedOut];
  }

  else
  {
    v7 = [v5 buttonEventMonitor];
    v8 = objc_loadWeakRetained((a1 + 40));
    [v7 addTarget:v8 action:"didReceiveButtonEvent:" forButtonEvents:objc_msgSend(v8 propagate:{"targetButtonEvents"), 0}];
  }

  [*(a1 + 32) setIsInputMonitoringPaused:0];
  v9 = objc_loadWeakRetained((a1 + 40));
  [v9 setButtonFailure:1];

  v10 = objc_loadWeakRetained((a1 + 40));
  [v10 showNextSegment];

  v11 = objc_loadWeakRetained((a1 + 40));
  [v11 resetTimer];
}

void sub_1000076B4(uint64_t a1)
{
  v2 = [*(a1 + 32) inputs];
  v3 = [v2 touchButtonParameters];

  if (v3)
  {
    if (([*(a1 + 32) isCancelled] & 1) == 0 && (objc_msgSend(*(a1 + 32), "isFinished") & 1) == 0 && (objc_msgSend(*(a1 + 32), "isInputMonitoringPaused") & 1) == 0)
    {
      v4 = *(a1 + 40);
      if (IOHIDEventGetType() == 42)
      {
        v5 = DiagnosticLogHandleForCategory();
        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
        {
          v6 = *(a1 + 40);
          *buf = 138412290;
          v52 = v6;
          _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Found touch sensitive button event %@", buf, 0xCu);
        }

        if (([*(a1 + 32) currentSegment] & 0x80000000) != 0)
        {
          v20 = DiagnosticLogHandleForCategory();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Ignoring event as initial segment has not yet been started", buf, 2u);
          }
        }

        else
        {
          v7 = [*(a1 + 32) currentSegment];
          v8 = [v3 targetEvents];
          v9 = [v8 count];

          if (v9 > v7)
          {
            v10 = +[NSDate date];
            [v10 timeIntervalSince1970];
            v12 = [NSNumber numberWithUnsignedLongLong:(v11 * 1000.0)];

            v13 = *(a1 + 40);
            IntegerValue = IOHIDEventGetIntegerValue();
            v15 = *(a1 + 40);
            IOHIDEventGetFloatValue();
            v17 = v16;
            if (_UIEventHIDGetChildForceStageEvent(*(a1 + 40)))
            {
              IOHIDEventGetFloatValue();
              v19 = v18;
            }

            else
            {
              v19 = -1;
            }

            v49[0] = @"type";
            v44 = [*(a1 + 32) inputs];
            v22 = [v44 type];
            v50[0] = v22;
            v49[1] = @"identifier";
            v23 = [*(a1 + 32) inputs];
            v24 = [v23 identifier];
            v50[1] = v24;
            v50[2] = v12;
            v45 = v12;
            v49[2] = @"timestamp";
            v49[3] = @"eventData";
            v47[0] = @"touch";
            v25 = [NSNumber numberWithLong:IntegerValue];
            v48[0] = v25;
            v47[1] = @"stage";
            v43 = v19;
            [NSNumber numberWithLong:v19];
            v26 = v42 = IntegerValue;
            v48[1] = v26;
            v47[2] = @"positionY";
            *&v27 = v17;
            v28 = [NSNumber numberWithFloat:v27];
            v48[2] = v28;
            v29 = [NSDictionary dictionaryWithObjects:v48 forKeys:v47 count:3];
            v50[3] = v29;
            v30 = [NSDictionary dictionaryWithObjects:v50 forKeys:v49 count:4];

            v31 = v30;
            v32 = [*(a1 + 32) allResults];
            [v32 addObject:v30];

            v33 = [v3 targetEvents];
            v34 = [v33 objectAtIndexedSubscript:{objc_msgSend(*(a1 + 32), "currentSegment")}];

            v35 = [v34 eventType];
            if (v35 == 1)
            {
              v39 = [v34 value];
              v40 = [NSNumber numberWithInteger:v42];
              v41 = [v39 isEqualToNumber:v40];

              if (!v41)
              {
LABEL_29:

                goto LABEL_30;
              }
            }

            else
            {
              if (v35)
              {
                goto LABEL_29;
              }

              v36 = [v34 value];
              v37 = [NSNumber numberWithInteger:v43];
              v38 = [v36 isEqualToNumber:v37];

              if ((v38 & 1) == 0)
              {
                goto LABEL_29;
              }
            }

            if ([v3 resetTimer])
            {
              block[0] = _NSConcreteStackBlock;
              block[1] = 3221225472;
              block[2] = sub_100007CE0;
              block[3] = &unk_100010438;
              block[4] = *(a1 + 32);
              dispatch_async(&_dispatch_main_q, block);
            }

            if ([v34 performHapticOnEvent])
            {
              [*(a1 + 32) playHaptic];
            }

            [*(a1 + 32) setCurrentSegmentActionCount:{objc_msgSend(*(a1 + 32), "currentSegmentActionCount") + 1}];
            [*(a1 + 32) showNextSegment];
            goto LABEL_29;
          }

          v21 = DiagnosticLogHandleForCategory();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            sub_100008990();
          }

          [*(a1 + 32) endTestWithStatusCode:&off_1000112A8];
        }
      }
    }
  }

LABEL_30:
}

uint64_t _UIEventHIDGetChildForceStageEvent(uint64_t a1)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = 0;
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100008304;
  v3[3] = &unk_1000106A8;
  v3[4] = &v4;
  _UIEventHIDEnumerateChildren(a1, 41, v3);
  v1 = v5[3];
  _Block_object_dispose(&v4, 8);
  return v1;
}

void sub_100007CC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000080B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location, uint64_t a21, char a22)
{
  objc_destroyWeak((v22 + 40));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a22, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100008100(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));

  if (WeakRetained)
  {
    v3 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Haptic playback is finished", v6, 2u);
    }

    v4 = [*(a1 + 32) hapticPlaybackLock];
    [v4 unlock];
  }

  return 1;
}

void sub_1000081A0(uint64_t a1)
{
  v1 = *(*(*(a1 + 32) + 8) + 40);
  v4 = 0;
  [v1 startAtTime:&v4 error:0.0];
  v2 = v4;
  if (v2)
  {
    v3 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_100008A08();
    }
  }
}

void _UIEventHIDEnumerateChildren(uint64_t a1, int a2, void *a3)
{
  v4 = a3;
  if (!a2 || IOHIDEventConformsTo())
  {
    Children = IOHIDEventGetChildren();
    if (Children)
    {
      v6 = Children;
      Count = CFArrayGetCount(Children);
      v11 = 0;
      if (Count >= 1)
      {
        v8 = Count;
        for (i = 0; i < v8; ++i)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v6, i);
          if (!a2 || IOHIDEventGetType() == a2)
          {
            v4[2](v4, ValueAtIndex, i, &v11);
            if (v11)
            {
              break;
            }
          }
        }
      }
    }
  }
}

uint64_t sub_100008304(uint64_t result, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  *(*(*(result + 32) + 8) + 24) = a2;
  *a4 = 1;
  return result;
}

void sub_100008740(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "[ERROR] - Could not find plugin.", buf, 2u);
}

void sub_100008868()
{
  sub_1000022D0();
  sub_100008650();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100008918()
{
  sub_1000022D0();
  sub_100008650();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100008954()
{
  sub_1000022D0();
  sub_100008650();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100008990()
{
  sub_1000022D0();
  sub_100008650();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000089CC()
{
  sub_1000022D0();
  sub_100008650();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}