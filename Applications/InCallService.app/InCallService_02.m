void sub_100099748(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained setSlidingViewState:3];
    [v2 didFinishSOSSliding:2];
    WeakRetained = v2;
  }
}

void sub_10009A100(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_10009A124(uint64_t a1, int a2)
{
  if (a2)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10009A1BC;
    block[3] = &unk_100356F60;
    objc_copyWeak(&v3, (a1 + 32));
    dispatch_async(&_dispatch_main_q, block);
    objc_destroyWeak(&v3);
  }
}

void sub_10009A1BC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained setDeviceSupportsFindMy:1];
    [v2 createFindMyUI];
    WeakRetained = v2;
  }
}

void sub_10009A2C0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_10009A2E4(uint64_t a1, char a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_10009A37C;
    v5[3] = &unk_100356BB8;
    v5[4] = WeakRetained;
    v6 = a2;
    dispatch_async(&_dispatch_main_q, v5);
  }
}

void sub_10009A768(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10009A78C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained clearMetricItems];
    [v3 setSlidingViewState:1];
    [v3 startMotionStateTracking];
    [v3 repeatingUpdateAnimatedSliderForCountdownNumber:objc_msgSend(*(a1 + 32) forModel:{"countdown"), *(a1 + 32)}];
    WeakRetained = v3;
  }
}

void sub_10009AC5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10009AC80(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_100004F84();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "PHSlidingView,CMMotionActivity,inside handler", buf, 2u);
  }

  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10009AD7C;
  v6[3] = &unk_100356FB0;
  objc_copyWeak(&v8, (a1 + 32));
  v7 = v3;
  v5 = v3;
  dispatch_async(&_dispatch_main_q, v6);

  objc_destroyWeak(&v8);
}

void sub_10009AD7C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = *(a1 + 32);
    v4 = sub_100004F84();
    v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
    if (!v3)
    {
      if (v5)
      {
        LOWORD(v14[0]) = 0;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "PHSlidingView,CMMotionActivity,null", v14, 2u);
      }

      goto LABEL_9;
    }

    if (v5)
    {
      v6 = [*(a1 + 32) isMounted];
      [*(a1 + 32) mountedProbability];
      v14[0] = 67109376;
      v14[1] = v6;
      v15 = 2048;
      v16 = v7;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "PHSlidingView,CMMotionActivity,isMounted:%d,mountedProbability:%lf", v14, 0x12u);
    }

    v8 = [WeakRetained motionActivityList];
    v9 = [PHSlidingViewMotionActivity alloc];
    v10 = [*(a1 + 32) isMounted];
    [*(a1 + 32) mountedProbability];
    v11 = [(PHSlidingViewMotionActivity *)v9 initWithIsMounted:v10 probability:?];
    [v8 addObject:v11];

    v12 = [WeakRetained motionActivityList];
    v13 = [v12 count];

    if (v13 >= 5)
    {
      v4 = [WeakRetained motionActivityList];
      [v4 removeObjectAtIndex:0];
LABEL_9:
    }
  }
}

void sub_10009B294(uint64_t a1)
{
  if ([*(a1 + 32) slidingViewState] == 1)
  {
    v5 = TLAlertTopicSOSCountdownTick;
    if (*(a1 + 48))
    {
      v2 = [*(a1 + 32) alertController];
      [v2 playAlertWithAudio:0 alertTopic:v5];
    }

    else
    {
      v3 = [*(a1 + 40) playsSound];
      v4 = [*(a1 + 32) alertController];
      [v4 playAlertWithAudio:v3 alertTopic:v5];

      if (v3)
      {
        [*(a1 + 32) toggleFlash];
      }
    }
  }
}

void sub_10009B374(uint64_t a1)
{
  if ([*(a1 + 32) slidingViewState] == 1)
  {
    (*(*(a1 + 48) + 16))();
    v2 = *(a1 + 56);
    v3 = *(a1 + 32);
    v4 = [*(a1 + 40) countdown];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10009B454;
    v7[3] = &unk_1003583D8;
    v5 = *(a1 + 56);
    v6 = *(a1 + 40);
    v7[4] = *(a1 + 32);
    v9 = v5;
    v8 = v6;
    [v3 updateAnimatedSliderForCountdownNumber:v2 forTotalCount:v4 afterDelay:v7 completion:0.280999988];
  }
}

void sub_10009B468(uint64_t a1)
{
  if ([*(a1 + 32) slidingViewState] != 1)
  {
    return;
  }

  v2 = sub_100004F84();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Slider Countdown has finished! Calling completion.", v11, 2u);
  }

  [*(a1 + 32) invalidateCountdownAndStopSounds];
  [*(a1 + 32) stopFlash];
  if ([*(a1 + 32) isCallDueToMountedState])
  {
    [*(a1 + 32) setSlidingViewState:5];
    v3 = *(a1 + 32);
    v4 = 3;
LABEL_10:
    [v3 didFinishSOSSliding:v4];
    goto LABEL_11;
  }

  +[SOSUtilities clawReleaseToCallSupport];
  if (v5 == 0.0)
  {
    [*(a1 + 32) setSlidingViewState:4];
    v3 = *(a1 + 32);
    v4 = 0;
    goto LABEL_10;
  }

  +[SOSUtilities clawReleaseToCallSupport];
  v6 = *(a1 + 32);
  if (v7 == 1.0)
  {
    [v6 setSlidingViewState:4];
    v3 = *(a1 + 32);
    v4 = 5;
    goto LABEL_10;
  }

  [v6 setSlidingViewState:2];
LABEL_11:
  if (+[SOSUtilities isMountStateTrackingEnabled])
  {
    v8 = [*(a1 + 32) cmMotionActivityManager];

    if (v8)
    {
      v9 = [*(a1 + 32) cmMotionActivityManager];
      [v9 stopPeriodicActivityUpdates];

      v10 = [*(a1 + 32) motionActivityList];
      [v10 removeAllObjects];
    }
  }
}

void sub_10009B724(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10009B744(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained updateAnimatedSliderForCountdownNumber:*(a1 + 48) forTotalCount:*(a1 + 32) completion:*(a1 + 56)];
}

void sub_10009B8D0(uint64_t a1)
{
  v2 = [*(a1 + 32) animatedSlidingButton];
  v3 = [v2 acceptButton];
  v4 = [NSString stringWithFormat:@"%ld", *(a1 + 40)];
  [v3 setKnobText:v4];

  v6 = [*(a1 + 32) animatedSlidingButton];
  v5 = [v6 acceptButton];
  [v5 setKnobPosition:1.0 - (*(a1 + 40) - 1) / *(a1 + 48)];
}

void sub_10009BA60(uint64_t a1)
{
  v2 = [*(a1 + 32) animatedSlidingButton];
  v3 = [v2 acceptButton];
  [v3 setKnobText:&stru_100361FD0];

  v5 = [*(a1 + 32) animatedSlidingButton];
  v4 = [v5 acceptButton];
  [v4 setKnobPosition:0.0];
}

void sub_10009C3E8(id a1)
{
  v1 = +[PHUIConfiguration inCallControlSpacing];
  v2 = 34.0;
  if (v1 != 5)
  {
    v2 = 27.0;
  }

  if (!v1)
  {
    v2 = 22.0;
  }

  qword_1003B0D20 = *&v2;
}

void sub_10009CAA8(uint64_t a1)
{
  v2 = [*(a1 + 32) animatedSlidingButton];
  [v2 setAlpha:0.0];

  v3 = [*(a1 + 32) powerOffSlidingButton];
  [v3 setAlpha:0.0];
}

id sub_10009CF48(uint64_t a1)
{
  [*(*(a1 + 32) + 216) setAlpha:0.0];
  v2 = *(*(a1 + 32) + 224);

  return [v2 setAlpha:0.0];
}

void sub_10009CFA4(uint64_t a1)
{
  v2 = [*(a1 + 32) beaconManager];
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10009D038;
  v3[3] = &unk_100356988;
  v3[4] = *(a1 + 32);
  [v2 setUserHasAcknowledgedFindMy:1 completion:v3];
}

void sub_10009D038(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10009D0B0;
  block[3] = &unk_100356988;
  block[4] = *(a1 + 32);
  dispatch_async(&_dispatch_main_q, block);
}

id sub_10009D0B0(uint64_t a1)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10009D174;
  v3[3] = &unk_100356988;
  v4 = *(a1 + 32);
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_10009D1E8;
  v2[3] = &unk_1003569B0;
  v2[4] = v4;
  return [UIView _animateUsingDefaultTimingWithOptions:0 animations:v3 completion:v2];
}

id sub_10009D174(uint64_t a1)
{
  [*(*(a1 + 32) + 104) setAlpha:0.0];
  [*(*(a1 + 32) + 216) setAlpha:1.0];
  v2 = *(*(a1 + 32) + 224);

  return [v2 setAlpha:1.0];
}

void sub_10009D1F0(uint64_t a1)
{
  [*(a1 + 32) setShouldPowerDownViewShowFindMyAlert:0];
  v2 = [*(a1 + 32) beaconManager];
  [v2 setUserHasAcknowledgedFindMy:1 completion:&stru_100358468];
}

id sub_10009D25C(uint64_t a1)
{
  [*(*(a1 + 32) + 216) setAlpha:1.0];
  v2 = *(*(a1 + 32) + 224);

  return [v2 setAlpha:1.0];
}

void sub_10009D388(id a1)
{
  v1 = sub_100004F84();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "Shutting off!", v4, 2u);
  }

  v2 = [[FBSShutdownOptions alloc] initWithReason:@"InCallService PowerOff Slider"];
  [v2 setSource:1];
  v3 = +[FBSSystemService sharedService];
  [v3 shutdownWithOptions:v2];
}

void sub_10009D438(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10009D4BC;
  block[3] = &unk_100356D38;
  v2 = *(a1 + 32);
  dispatch_async(&_dispatch_main_q, block);
}

void sub_10009D924(uint64_t a1)
{
  v2 = [*(a1 + 32) avCaptureDevice];
  v3 = [v2 hasTorch];

  if (v3)
  {
    v4 = [*(a1 + 32) avCaptureDevice];
    [v4 lockForConfiguration:0];

    v5 = [*(a1 + 32) avCaptureDevice];
    [v5 setTorchMode:1];

    v6 = [*(a1 + 32) avCaptureDevice];
    [v6 unlockForConfiguration];

    v7 = dispatch_time(0, 500000000);
    v8 = [*(a1 + 32) avCaptureDispatchQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10009DA90;
    block[3] = &unk_100356988;
    block[4] = *(a1 + 32);
    dispatch_after(v7, v8, block);
  }

  else
  {
    v9 = sub_100004F84();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "PHSlidingView,torch not available", buf, 2u);
    }
  }
}

void sub_10009DB38(uint64_t a1)
{
  v2 = [*(a1 + 32) avCaptureDevice];
  v3 = [v2 hasTorch];

  if (v3)
  {
    v4 = [*(a1 + 32) avCaptureDevice];
    [v4 lockForConfiguration:0];

    v5 = [*(a1 + 32) avCaptureDevice];
    v6 = [v5 torchMode];

    if (v6 == 1)
    {
      v7 = [*(a1 + 32) avCaptureDevice];
      [v7 setTorchMode:0];
    }

    v9 = [*(a1 + 32) avCaptureDevice];
    [v9 unlockForConfiguration];
  }

  else
  {
    v8 = sub_100004F84();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "PHSlidingView,torch not available", buf, 2u);
    }
  }
}

void sub_10009DD4C(id a1)
{
  v1 = MGCopyAnswer();
  v2 = +[UIScreen mainScreen];
  [v2 _referenceBounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  if (v1)
  {
    v11 = CFGetTypeID(v1);
    if (v11 == CFDataGetTypeID())
    {
      BytePtr = CFDataGetBytePtr(v1);
      v13 = *(BytePtr + 1);
      *ymmword_1003B0D30 = *BytePtr;
      *&ymmword_1003B0D30[16] = v13;
    }

    v31.origin.x = v4;
    v31.origin.y = v6;
    v31.size.width = v8;
    v31.size.height = v10;
    v14 = CGRectGetWidth(v31) * *ymmword_1003B0D30;
    v15 = floorf(v14);
    v32.origin.x = v4;
    v32.origin.y = v6;
    v32.size.width = v8;
    v32.size.height = v10;
    Height = CGRectGetHeight(v32);
    v28 = *&ymmword_1003B0D30[8];
    v33.origin.x = v4;
    v33.origin.y = v6;
    v33.size.width = v8;
    v33.size.height = v10;
    Width = CGRectGetWidth(v33);
    v17.f64[0] = Height;
    v17.f64[1] = Width;
    v29 = vcvtq_f64_f32(vrndm_f32(vcvt_f32_f64(vmulq_f64(v17, __PAIR128__(*&ymmword_1003B0D30[16], v28)))));
    v18 = v4;
    v17.f64[0] = v6;
    v19 = v8;
    v20 = v10;
    v21 = CGRectGetHeight(*(&v17 - 8));
    v22 = v29;
    *&v21 = v21 * *&ymmword_1003B0D30[24];
    v23 = floorf(*&v21);
  }

  else
  {
    v24 = sub_100004F84();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "PHSlidingView,lockButtonDimension,lock button details not found", buf, 2u);
    }

    if (qword_1003B0D60 != -1)
    {
      sub_1002559D0();
    }

    if ((byte_1003B0D58 & 1) != 0 || (byte_1003B0D59 & 1) != 0 || byte_1003B0D5C == 1)
    {
      v34.origin.x = v4;
      v34.origin.y = v6;
      v34.size.width = v8;
      v34.size.height = v10;
      v25 = CGRectGetWidth(v34);
      v15 = floorf(v25);
      v22 = xmmword_1002F91A0;
    }

    else
    {
      v35.origin.x = v4;
      v35.origin.y = v6;
      v35.size.width = v8;
      v35.size.height = v10;
      v26 = CGRectGetWidth(v35);
      v15 = floorf(v26);
      v22 = xmmword_1002F9190;
    }

    v23 = 70.0;
  }

  *ymmword_1003B0D30 = v15;
  *&ymmword_1003B0D30[8] = v22;
  *&ymmword_1003B0D30[24] = v23;
}

void sub_10009DFB4(id a1)
{
  byte_1003B0D58 = MGIsDeviceOfType();
  byte_1003B0D59 = MGIsDeviceOfType();
  byte_1003B0D5A = MGIsDeviceOfType();
  byte_1003B0D5B = MGIsDeviceOfType();
  byte_1003B0D5C = MGIsDeviceOfType();
}

void sub_10009E4F8(CGRect *a1)
{
  v2 = MGCopyAnswer();
  if (v2)
  {
    v3 = v2;
    v4 = CFGetTypeID(v2);
    if (v4 == CFDataGetTypeID())
    {
      BytePtr = CFDataGetBytePtr(v3);
      v6 = BytePtr[1];
      xmmword_1003B0D80 = *BytePtr;
      *&qword_1003B0D90 = v6;
    }

    Width = CGRectGetWidth(a1[1]);
    v30 = xmmword_1003B0D80;
    Height = CGRectGetHeight(a1[1]);
    v31 = __PAIR128__(*(&xmmword_1003B0D80 + 1), v30);
    v22 = CGRectGetWidth(a1[1]);
    v24 = qword_1003B0D90;
    v7 = CGRectGetHeight(a1[1]);
    v8.f64[0] = Width;
    v8.f64[1] = Height;
    v9.f64[0] = v22;
    v9.f64[1] = v7;
    v10 = vrndmq_f32(vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_f64(v8, v31)), vmulq_f64(v9, __PAIR128__(qword_1003B0D98, v24))));
    xmmword_1003B0D80 = vcvtq_f64_f32(*v10.f32);
    *&qword_1003B0D90 = vcvt_hight_f64_f32(v10);
  }

  else
  {
    v11 = sub_100004F84();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_1002559F8(v11);
    }
  }

  v12 = MGCopyAnswer();
  if (v12)
  {
    v13 = v12;
    v14 = CFGetTypeID(v12);
    if (v14 == CFDataGetTypeID())
    {
      v15 = CFDataGetBytePtr(v13);
      v16 = v15[1];
      xmmword_1003B0DA0 = *v15;
      *&qword_1003B0DB0 = v16;
    }

    v29 = CGRectGetWidth(a1[1]);
    v32 = xmmword_1003B0DA0;
    v27 = CGRectGetHeight(a1[1]);
    v33 = __PAIR128__(*(&xmmword_1003B0DA0 + 1), v32);
    v23 = CGRectGetWidth(a1[1]);
    v25 = qword_1003B0DB0;
    v17 = CGRectGetHeight(a1[1]);
    v18.f64[0] = v29;
    v18.f64[1] = v27;
    v19.f64[0] = v23;
    v19.f64[1] = v17;
    v20 = vrndmq_f32(vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_f64(v18, v33)), vmulq_f64(v19, __PAIR128__(qword_1003B0DB8, v25))));
    xmmword_1003B0DA0 = vcvtq_f64_f32(*v20.f32);
    *&qword_1003B0DB0 = vcvt_hight_f64_f32(v20);
  }

  else
  {
    v21 = sub_100004F84();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      sub_100255A3C(v21);
    }
  }
}

void sub_10009FC40(id a1)
{
  v1 = +[NSUserDefaults standardUserDefaults];
  byte_1003B0DC8 = [v1 BOOLForKey:@"shouldTraceSignposts"];
}

uint64_t sub_1000A0944(uint64_t a1, int a2)
{
  v4 = sub_100009960();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 67109120;
    v6[1] = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Handled user-initiated device lock event, didConsumeEvent: %d", v6, 8u);
  }

  return (*(*(a1 + 32) + 16))();
}

void sub_1000A2DF0(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (!v5 || a3)
  {
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v6 = sub_100004F84();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = NSStringFromClass(*(a1 + 40));
      v9 = 138412290;
      v10 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Received remote view controller from %@", &v9, 0xCu);
    }

    v8 = objc_alloc_init(PHPhoneRemoteHostViewController);
    [(PHPhoneRemoteHostViewController *)v8 setUpRemoteViewController:v5];
    (*(*(a1 + 32) + 16))();
  }
}

uint64_t sub_1000A36B0(uint64_t a1)
{
  qword_1003B0DD8 = objc_alloc_init(*(a1 + 32));

  return _objc_release_x1();
}

void sub_1000A390C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak((v16 - 40));
  _Unwind_Resume(a1);
}

void sub_1000A3940(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v18;
    while (2)
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v17 + 1) + 8 * i);
        if ([v12 isSOSOrFakeSOS])
        {
LABEL_15:

          WeakRetained = objc_loadWeakRetained((a1 + 40));
          [WeakRetained showSOSDisconnectConfirmation:v6];
          goto LABEL_16;
        }

        v13 = +[CNKFeatures sharedInstance];
        if ([v13 isEnhancedEmergencyEnabled] && (objc_msgSend(v12, "isEmergency") & 1) != 0)
        {
          v14 = objc_loadWeakRetained((a1 + 32));
          v15 = [v14 isShowSOSConfirmationSupported];

          if (v15)
          {
            goto LABEL_15;
          }
        }

        else
        {
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v6[2](v6, 1);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained clearAllDelegates];
LABEL_16:
}

void sub_1000A3FF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, id location)
{
  objc_destroyWeak((v30 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000A4054(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v2 = [WeakRetained alertControllers];
  [v2 removeObject:*(a1 + 32)];

  [WeakRetained dismissAlertControllers];
}

void sub_1000A40D0(uint64_t a1)
{
  (*(*(a1 + 48) + 16))();
  [*(a1 + 32) clearAllDelegates];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v2 = [WeakRetained alertControllers];
  [v2 removeObject:*(a1 + 40)];

  [WeakRetained dismissAlertControllers];
}

void sub_1000A4494(id a1)
{
  qword_1003B0DE8 = objc_alloc_init(PHAudioDeviceController);

  _objc_release_x1();
}

void sub_1000A4790(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [v2 _pickableRoutesUsingBackgroundQueue:1];
  v4 = [v2 routesForUnformattedPickableRoutes:v3];

  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000A486C;
  v7[3] = &unk_1003581B0;
  v5 = *(a1 + 40);
  v8 = v4;
  v9 = v5;
  v6 = v4;
  dispatch_async(&_dispatch_main_q, v7);
}

void sub_1000A52E0(uint64_t a1)
{
  v2 = [TUAudioRoute alloc];
  v3 = [*(a1 + 32) _pickedRouteUsingBackgroundQueue:1];
  v4 = [v2 initWithDictionary:v3];

  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000A53C4;
  v7[3] = &unk_1003581B0;
  v5 = *(a1 + 40);
  v8 = v4;
  v9 = v5;
  v6 = v4;
  dispatch_async(&_dispatch_main_q, v7);
}

void sub_1000A58BC(id a1)
{
  v1 = CUTWeakLinkSymbol();
  if (v1)
  {
    v2 = *v1;
  }

  else
  {
    v2 = 0;
  }

  objc_storeStrong(&qword_1003B0DF8, v2);
}

void sub_1000A5DD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000A5DF0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000A5E08(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  [*(a1 + 32) _releaseLock];
}

void sub_1000A5FD0(id a1)
{
  v1 = +[NSNotificationCenter defaultCenter];
  [v1 postNotificationName:@"PHAudioDeviceControllerPickedRouteChangedNotification" object:0];
}

void sub_1000A629C(id a1)
{
  v1 = sub_100004F84();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    v3 = 138412290;
    v4 = @"PHAudioDeviceControllerAudioRoutesChangedNotification";
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "Posting %@", &v3, 0xCu);
  }

  v2 = +[NSNotificationCenter defaultCenter];
  [v2 postNotificationName:@"PHAudioDeviceControllerAudioRoutesChangedNotification" object:0];
}

id sub_1000A68B8()
{
  if (qword_1003B0E10 != -1)
  {
    sub_100255CF8();
  }

  v1 = qword_1003B0E08;

  return v1;
}

void sub_1000A68FC(id a1)
{
  qword_1003B0E08 = os_log_create("com.apple.calls.mobilephone", "Default");

  _objc_release_x1();
}

id sub_1000A6940()
{
  if (qword_1003B0E20 != -1)
  {
    sub_100255D0C();
  }

  v1 = qword_1003B0E18;

  return v1;
}

void sub_1000A6984(id a1)
{
  qword_1003B0E18 = os_log_create("com.apple.calls.mobilephone", "Oversized");

  _objc_release_x1();
}

id sub_1000A69C8()
{
  if (qword_1003B0E30 != -1)
  {
    sub_100255D20();
  }

  v1 = qword_1003B0E28;

  return v1;
}

void sub_1000A6A0C(id a1)
{
  v3 = dispatch_queue_attr_make_with_qos_class(0, 0xFFFFFFFE, 0);
  v1 = dispatch_queue_create("com.apple.calls.mobilephone.logging", v3);
  v2 = qword_1003B0E28;
  qword_1003B0E28 = v1;
}

void sub_1000A6E54(uint64_t a1)
{
  if (*(a1 + 40))
  {
    IOHIDEventSystemClientUnscheduleFromDispatchQueue();
    v2 = *(a1 + 40);

    CFRelease(v2);
  }
}

id sub_1000A6F2C(uint64_t a1)
{
  result = [*(a1 + 32) HIDEventSystemClient];
  if (!result)
  {
    result = IOHIDEventSystemClientCreate();
    if (result)
    {
      v3 = result;
      v5[0] = @"DeviceUsagePage";
      v5[1] = @"DeviceUsage";
      v6[0] = &off_10036A298;
      v6[1] = &off_10036A2B0;
      [NSDictionary dictionaryWithObjects:v6 forKeys:v5 count:2];
      IOHIDEventSystemClientSetMatching();
      IOHIDEventSystemClientRegisterEventBlock();
      v4 = [*(a1 + 32) dispatchQueue];
      IOHIDEventSystemClientScheduleWithDispatchQueue();

      return [*(a1 + 32) setHIDEventSystemClient:v3];
    }
  }

  return result;
}

void sub_1000A703C(id a1, void *a2, void *a3, void *a4, __IOHIDEvent *a5)
{
  if (a2)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = a2;
      if (IOHIDEventGetType() == 3)
      {
        [v9 handleKeyboardEvent:a5];
      }

      v8 = v9;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }
}

id sub_1000A7C04(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v5 handle];
  v8 = [v7 value];

  if ([v8 length])
  {
    v9 = *(a1 + 32);
    v10 = [v6 UUID];
    LODWORD(v9) = [v9 isEmergencyNumberForDigits:v8 senderIdentityUUID:v10];

    if (v9)
    {
      [v5 setDialType:1];
    }
  }

  if ([v5 dialType] == 1 && objc_msgSend(*(a1 + 40), "canMakeEmergencyCallForSenderIdentity:", v6))
  {
    v11 = v6;
    v12 = sub_100004F84();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138412546;
      v17 = v5;
      v18 = 2112;
      v19 = v11;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Updating emergency dial request %@ to use sender identity %@", &v16, 0x16u);
    }

    v13 = [v11 UUID];
    [v5 setLocalSenderIdentityUUID:v13];

    v14 = [v11 accountUUID];
    [v5 setLocalSenderIdentityAccountUUID:v14];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

void sub_1000A7EF4(id a1)
{
  v1 = +[PHUIConfiguration inCallFaceTimeOverlayUISize];
  v2 = 14.0;
  if (v1 == 3)
  {
    v2 = 20.0;
  }

  qword_1003B0E38 = *&v2;
}

void sub_1000A7F64(id a1)
{
  v1 = +[PHUIConfiguration inCallFaceTimeOverlayUISize];
  v2 = 18.0;
  if (v1 == 3)
  {
    v2 = 24.0;
  }

  qword_1003B0E48 = *&v2;
}

void sub_1000A8AE4(uint64_t a1)
{
  v2 = [*(a1 + 32) navigationController];
  v1 = [v2 popToRootViewControllerAnimated:1];
}

void sub_1000AA6A8(uint64_t a1)
{
  v2 = [*(a1 + 32) buttonStackView];
  [v2 setNeedsLayout];

  v3 = [*(a1 + 32) buttonStackView];
  [v3 layoutIfNeeded];
}

uint64_t sub_1000AB4AC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000AB4C4(uint64_t a1)
{
  v2 = +[TUCallCenter sharedInstance];
  v3 = [v2 frontmostCall];

  if (v3)
  {
    v4 = sub_100004F84();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(*(*(a1 + 40) + 8) + 40);
      v6 = 138412290;
      v7 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Setting image: %@ on button", &v6, 0xCu);
    }

    [*(a1 + 32) setControlImage:*(*(*(a1 + 40) + 8) + 40)];
  }
}

void sub_1000AB5B8(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
  v4 = a2;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000AB67C;
  v5[3] = &unk_100358810;
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  dispatch_async(&_dispatch_main_q, v5);
}

uint64_t sub_1000AB67C(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  dispatch_block_cancel(*(a1 + 32));
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

void sub_1000ABAC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000ABAE0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 iconView];
  v5 = [v3 iconImage];

  if (v4 && [*(a1 + 32) usesGlass])
  {
    v6 = sub_100004F84();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412290;
      v13 = v4;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Setting view: %@ on button", &v12, 0xCu);
    }

    [*(a1 + 32) setControlView:v4];
  }

  else
  {
    v7 = sub_100004F84();
    v8 = v7;
    if (v5)
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 138412290;
        v13 = v5;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Setting image: %@ on button", &v12, 0xCu);
      }

      [*(a1 + 32) setControlImage:v5];
    }

    else
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_100255F2C(v8);
      }
    }
  }

  v9 = *(a1 + 32);
  v10 = [*(a1 + 40) delegate];
  v11 = [v10 titleForControlType:*(a1 + 48)];
  [v9 setTitle:v11 forState:0];

  [*(a1 + 32) setControlType:*(a1 + 48)];
}

void sub_1000ABCA8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_100004F84();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Setting image glyph: %@ on button", &v8, 0xCu);
  }

  [*(a1 + 32) setControlImage:v3];
  v5 = *(a1 + 32);
  v6 = [*(a1 + 40) delegate];
  v7 = [v6 titleForControlType:*(a1 + 48)];
  [v5 setTitle:v7 forState:0];

  [*(a1 + 32) setControlType:*(a1 + 48)];
}

void sub_1000ABDD4(uint64_t a1, void *a2)
{
  v4 = a2;
  objc_storeStrong((*(*(a1 + 56) + 8) + 40), a2);
  v5 = [*(a1 + 32) callDisplayStyleManager];
  v6 = [v5 usesLargeFormatUI];

  if (v6)
  {
    v7 = +[UIScreen mainScreen];
    [v7 bounds];
    v9 = v8;
    v11 = v10;

    if (v9 >= v11)
    {
      v12 = v9;
    }

    else
    {
      v12 = v11;
    }

    v13 = v12 * 0.065;
    v14 = [*(a1 + 32) delegate];
    v15 = [v14 resizeImage:*(*(*(a1 + 56) + 8) + 40) maxDimension:v13 * 0.54];

    v16 = *(*(a1 + 56) + 8);
    v17 = *(v16 + 40);
    *(v16 + 40) = v15;
  }

  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_1000ABF50;
  v18[3] = &unk_100358810;
  v19 = *(a1 + 40);
  v20 = *(a1 + 48);
  dispatch_async(&_dispatch_main_q, v18);
}

uint64_t sub_1000ABF50(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  dispatch_block_cancel(*(a1 + 32));
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

void sub_1000ADCE0(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) mainLabel];
  [v2 setText:v1];
}

void sub_1000ADD30(uint64_t a1)
{
  [*(a1 + 32) _updateBadgeViewForLocalizedSenderIdentityTitle:*(a1 + 40)];
  v2 = *(a1 + 48);
  v3 = [*(a1 + 32) subtitleLabel];
  [v3 setText:v2];

  v4 = *(a1 + 56);
  v5 = [*(a1 + 32) subtitleLabel];
  [v5 setColor:v4];

  v6 = [*(a1 + 32) subtitleLabel];
  [v6 sizeToFit];
}

void sub_1000AE254(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) mainLabel];
  [v2 setText:v1];
}

void sub_1000AE2A4(uint64_t a1)
{
  [*(a1 + 32) _updateBadgeViewForLocalizedSenderIdentityTitle:*(a1 + 40)];
  v2 = *(a1 + 48);
  v3 = [*(a1 + 32) subtitleLabel];
  [v3 setText:v2];

  v4 = *(a1 + 56);
  v5 = [*(a1 + 32) subtitleLabel];
  [v5 setColor:v4];

  v6 = *(a1 + 64);
  v7 = [*(a1 + 32) sourceLabel];
  [v7 setText:v6];

  [*(a1 + 32) setFontsForLayout:{objc_msgSend(*(a1 + 64), "length") != 0}];
  v8 = [*(a1 + 32) subtitleLabel];
  [v8 sizeToFit];
}

uint64_t sub_1000AEB1C(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [objc_opt_class() priorityForRoute:v4];
  v7 = [objc_opt_class() priorityForRoute:v5];
  if (v6 == v7)
  {
    v8 = [v4 name];
    v9 = [v5 name];
    v10 = [v8 localizedCompare:v9];
  }

  else if (v6 < v7)
  {
    v10 = -1;
  }

  else
  {
    v10 = 1;
  }

  return v10;
}

void sub_1000AEE38(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    v3 = *(v2 + 16);
    v4 = *(a1 + 32);

    v3(v4);
  }

  else
  {
    v5 = +[TURoute speakerAudioRouteGlyph];
    (*(v2 + 16))(v2, v5);
  }
}

void sub_1000AEFCC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

id sub_1000AEFE8(uint64_t a1)
{
  [*(a1 + 32) suppressRingtone];
  WeakRetained = objc_loadWeakRetained((a1 + 40));

  if (WeakRetained)
  {
    v3 = [PHDeclineWithReminderController alloc];
    v4 = *(a1 + 32);
    v5 = objc_loadWeakRetained((a1 + 40));
    v6 = [(PHDeclineWithReminderController *)v3 initWithCall:v4 presenter:v5];

    v7 = +[NSBundle mainBundle];
    v8 = [v7 localizedStringForKey:@"REMIND_ME_LATER" value:&stru_100361FD0 table:@"InCallService"];
    v9 = [(PHDeclineWithReminderController *)v6 menuActions];
    v10 = [UIMenu menuWithTitle:v8 children:v9];
  }

  else
  {
    v11 = sub_100004F84();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_100255F70();
    }

    v10 = 0;
  }

  return v10;
}

id sub_1000AF83C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1000AF8B4;
  v3[3] = &unk_100356988;
  v3[4] = v1;
  return [v1 performLocationReminderAction:v3 ifAuthorizedForStatus:*(a1 + 40)];
}

id sub_1000AF8B4(uint64_t a1)
{
  [*(a1 + 32) createReminderForWhenILeave];
  v2 = *(a1 + 32);

  return [v2 declineCall];
}

void sub_1000AF8F0(uint64_t a1)
{
  v2 = *(a1 + 32);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000AF98C;
  v5[3] = &unk_100357AB0;
  v5[4] = v2;
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v6 = v3;
  v7 = v4;
  [v2 performLocationReminderAction:v5 ifAuthorizedForStatus:*(a1 + 56)];
}

id sub_1000AF98C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) objectAtIndex:*(a1 + 48)];
  [v2 createReminderForLocation:v3];

  v4 = *(a1 + 32);

  return [v4 declineCall];
}

id sub_1000AF9EC(uint64_t a1)
{
  [*(a1 + 32) createReminderWithDurationInMinutes:60];
  v2 = *(a1 + 32);

  return [v2 declineCall];
}

uint64_t sub_1000AFB20(uint64_t result, uint64_t a2, int a3)
{
  if ((a3 - 3) <= 1)
  {
    return (*(*(result + 32) + 16))();
  }

  return result;
}

void sub_1000B07AC(id a1)
{
  v1 = sub_100004F84();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    sub_100256024();
  }
}

void sub_1000B07F0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = objc_alloc_init(CLGeocoder);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000B08B0;
  v9[3] = &unk_100358A60;
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v10 = v4;
  v11 = v6;
  v12 = v7;
  v8 = v4;
  [v5 reverseGeocodeLocation:v8 completionHandler:v9];
}

void sub_1000B08B0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v50 = v5;
  if (v6 || ![v5 count])
  {
    v7 = +[NSBundle mainBundle];
    v8 = [v7 localizedStringForKey:@"SOMEWHERE" value:&stru_100361FD0 table:@"InCallService"];
  }

  else
  {
    v28 = [v5 firstObject];
    v7 = [v28 postalAddress];

    if (!v7)
    {
      v10 = 0;
      goto LABEL_4;
    }

    v8 = [CNPostalAddressFormatter stringFromPostalAddress:v7 style:0];
  }

  v9 = v8;
  v10 = [EKStructuredLocation locationWithTitle:v8];

LABEL_4:
  [v10 setGeoLocation:*(a1 + 32)];
  v11 = objc_alloc_init(EKEventStore);
  v12 = [EKReminder reminderWithEventStore:v11];
  v13 = [*(a1 + 40) reminderText];
  [v12 setTitle:v13];

  v14 = [v11 defaultCalendarForNewReminders];
  [v12 setCalendar:v14];

  v15 = [v12 calendar];

  if (!v15)
  {
    goto LABEL_25;
  }

  v16 = [v12 calendar];
  v17 = [v16 source];
  v18 = [v17 constraints];
  v19 = [v18 supportsReminderLocations];

  if (v19)
  {
    v20 = [*(a1 + 40) call];
    v21 = [v20 provider];
    v22 = [v21 isSystemProvider];

    if (v22)
    {
      v23 = [v12 calendar];
      v24 = [v23 source];
      v25 = [v24 constraints];
      v26 = [v25 supportsReminderActions];

      if (!v26)
      {
LABEL_18:
        v34 = [EKAlarm alarmWithRelativeOffset:0.0];
        [v34 setProximity:2];
        [v34 setStructuredLocation:v10];
        [v12 setStructuredLocation:v10];
        v35 = [NSArray arrayWithObject:v34];
        [v12 setAlarms:v35];

        v36 = sub_100004F84();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
        {
          v37 = *(a1 + 32);
          *buf = 138412290;
          v53 = v37;
          _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "About to save a reminder for CLLocation %@", buf, 0xCu);
        }

        v51 = 0;
        v38 = [v11 saveReminder:v12 commit:1 error:&v51];
        v39 = v51;
        v40 = v39;
        if (v38)
        {

          v41 = [NSUUID alloc];
          v33 = [v12 uniqueID];
          v32 = [v41 initWithUUIDString:v33];
          v42 = [*(a1 + 40) call];
          [v42 setReminderUUID:v32];
          goto LABEL_27;
        }

        v43 = sub_100004F84();
        if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
        {
          sub_100255FB0();
        }

        goto LABEL_25;
      }

      v27 = [*(a1 + 40) reminderAction];
      [v12 setAction:v27];
    }

    else
    {
      v27 = [*(a1 + 40) reminderActivity];
      [v12 setAppLink:v27];
    }

    goto LABEL_18;
  }

  v29 = sub_100004F84();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "[WARN] Reminder failed because calendar doesn't support location-based reminders", buf, 2u);
  }

  v30 = +[NSBundle mainBundle];
  v31 = [v30 localizedStringForKey:@"REMINDER_FAILED_NO_LOCATION_BASED_REMINDERS" value:&stru_100361FD0 table:@"InCallService"];

  if (!v31)
  {
LABEL_25:
    v44 = +[NSBundle mainBundle];
    v32 = [v44 localizedStringForKey:@"REMINDER_FAILED_TRY_LATER" value:&stru_100361FD0 table:@"InCallService"];

    v33 = 0;
    goto LABEL_26;
  }

  v32 = v31;
  v33 = v32;
LABEL_26:
  v45 = *(a1 + 40);
  v42 = +[NSBundle mainBundle];
  v46 = [v42 localizedStringForKey:@"ERROR" value:&stru_100361FD0 table:@"InCallService"];
  [v45 presentAlertWithTitle:v46 message:v32];

LABEL_27:
  v47 = sub_100004F84();
  if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
  {
    v48 = *(a1 + 48);
    *buf = 134217984;
    v53 = v48;
    _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "PHDeclineWithReminderController.createReminderForWhenILeave endBackgroundTask %lu", buf, 0xCu);
  }

  v49 = +[UIApplication sharedApplication];
  [v49 endBackgroundTask:*(a1 + 48)];
}

id sub_1000B1AD0(uint64_t a1)
{
  [UIApp startedSubTest:@"end-call" forTest:@"EndActiveCall"];
  [UIApp startedSubTest:@"pre-transition-delay" forTest:@"EndActiveCall"];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);

  return [v2 bottomBarActionPerformed:15 withCompletionState:1 fromBar:v3];
}

id sub_1000B1D4C(uint64_t a1)
{
  [UIApp startedSubTest:@"end-to-end" forTest:@"AnswerIncomingCall"];
  [UIApp startedSubTest:@"pre-animation-delay" forTest:@"AnswerIncomingCall"];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);

  return [v2 bottomBarActionPerformed:1 withCompletionState:1 fromBar:v3];
}

uint64_t sub_1000B237C(uint64_t a1)
{
  qword_1003B0E58 = objc_alloc_init(*(a1 + 32));

  return _objc_release_x1();
}

void sub_1000B24C4(uint64_t a1)
{
  +[TUCallCapabilities initializeCachedValues];
  v2 = objc_alloc_init(VMVoicemailManager);
  [*(a1 + 32) setAccountManager:v2];

  v3 = objc_alloc_init(TUCallProviderManager);
  [*(a1 + 32) setCallProviderManager:v3];
  v4 = +[CNContactStore contactStore];
  [*(a1 + 32) setContactStore:v4];

  v5 = +[CNContactStore suggestedContactStore];
  [*(a1 + 32) setSuggestedContactStore:v5];

  v6 = objc_alloc_init(TUCallDirectoryMetadataCacheDataProvider);
  v15[0] = v6;
  v7 = objc_alloc_init(TUMapsMetadataCacheDataProvider);
  v15[1] = v7;
  v8 = objc_alloc_init(TUSuggestionsMetadataCacheDataProvider);
  v15[2] = v8;
  v9 = objc_alloc_init(TUGeoLocationMetadataCacheDataProvider);
  v15[3] = v9;
  v10 = [NSArray arrayWithObjects:v15 count:4];

  v11 = [[TUMetadataCache alloc] initWithDataProviders:v10];
  [*(a1 + 32) setMetadataCache:v11];

  if (+[PHDevice isGeminiCapable])
  {
    v12 = [v3 telephonyProvider];
    v13 = [v12 identifier];
    v14 = [v3 providerWithIdentifier:v13];
  }

  [*(a1 + 32) setInitializationBlockQueued:0];
}

void sub_1000B28D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_1000B28EC(uint64_t a1)
{
  os_unfair_lock_lock((*(a1 + 32) + 12));
  v2 = *(*(a1 + 32) + 16);
  os_unfair_lock_unlock((*(a1 + 32) + 12));

  return v2;
}

uint64_t sub_1000B2948(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1000B2960(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = (*(*(a1 + 32) + 16))();

  return _objc_release_x1();
}

uint64_t sub_1000B2A9C(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = (*(*(a1 + 32) + 16))();

  return _objc_release_x1();
}

void sub_1000B2D00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_1000B2D18(uint64_t a1)
{
  os_unfair_lock_lock((*(a1 + 32) + 12));
  v2 = *(*(a1 + 32) + 40);
  os_unfair_lock_unlock((*(a1 + 32) + 12));

  return v2;
}

uint64_t sub_1000B2D74(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = (*(*(a1 + 32) + 16))();

  return _objc_release_x1();
}

void sub_1000B2FCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_1000B2FE4(uint64_t a1)
{
  os_unfair_lock_lock((*(a1 + 32) + 12));
  v2 = *(*(a1 + 32) + 32);
  os_unfair_lock_unlock((*(a1 + 32) + 12));

  return v2;
}

uint64_t sub_1000B3040(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = (*(*(a1 + 32) + 16))();

  return _objc_release_x1();
}

void sub_1000B3298(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_1000B32B0(uint64_t a1)
{
  os_unfair_lock_lock((*(a1 + 32) + 12));
  v2 = *(*(a1 + 32) + 56);
  os_unfair_lock_unlock((*(a1 + 32) + 12));

  return v2;
}

uint64_t sub_1000B330C(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = (*(*(a1 + 32) + 16))();

  return _objc_release_x1();
}

void sub_1000B39B4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v12 = v3;
  v5 = [v3 contactIdentifier];
  v6 = [v4 objectForKey:v5];

  if (v6)
  {
    v7 = [v6 contact];
    v8 = [v12 handle];
    v9 = [CDSearchUtilities matchedPhoneNumberFor:v7 searchText:v8 allowMatchingLastFour:1];
    [v6 setPreferredPhoneNumber:v9];

    [*(a1 + 40) addObject:v6];
    v10 = *(a1 + 32);
    v11 = [v12 contactIdentifier];
    [v10 removeObjectForKey:v11];
  }
}

void sub_1000B45DC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (*(*(a1 + 32) + 8) == 1)
  {
    v8 = sub_100004F84();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "This geocode was canceled", buf, 2u);
    }
  }

  else
  {
    if (v6)
    {
      v9 = sub_100004F84();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_100256064(v7, v9);
      }
    }

    else
    {
      if ([v5 count])
      {
        v27 = [v5 objectAtIndex:0];
        v10 = [v27 region];
        [v10 center];
        v12 = v11;
        v14 = v13;

        v25 = [[CLLocation alloc] initWithLatitude:v12 longitude:v14];
        v15 = [v27 region];
        [v15 radius];
        v24 = [NSNumber numberWithDouble:?];

        v29[0] = @"Address";
        v26 = [*(a1 + 32) postalAddress];
        v16 = [CNPostalAddressFormatter stringFromPostalAddress:v26 style:0];
        v30[0] = v16;
        v29[1] = @"Name";
        v17 = [*(a1 + 32) labeledValue];
        v18 = [v17 label];
        v19 = [CNLabeledValue localizedStringForLabel:v18];
        v30[1] = v19;
        v30[2] = v25;
        v29[2] = @"CLLocation";
        v29[3] = @"EntityID";
        v20 = [*(a1 + 32) entityID];
        v29[4] = @"Radius";
        v30[3] = v20;
        v30[4] = v24;
        v21 = [NSDictionary dictionaryWithObjects:v30 forKeys:v29 count:5];
        v22 = *(a1 + 32);
        v23 = *(v22 + 56);
        *(v22 + 56) = v21;

        *(*(a1 + 32) + 16) = 2;
        ++*(*(a1 + 32) + 12);
        (*(*(a1 + 40) + 16))();

        goto LABEL_10;
      }

      v9 = sub_100004F84();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_1002560DC(v9);
      }
    }

    *(*(a1 + 32) + 16) = 1;
    ++*(*(a1 + 32) + 12);
  }

  (*(*(a1 + 40) + 16))();
LABEL_10:
}

void sub_1000B51F4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = +[_PHMeCardGeocoderPreferences sharedPreferences];
    v4 = [v3 hasValidNetworkPreferences];

    v5 = sub_100004F84();
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
    if (v4)
    {
      if (v6)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "We have valid network preferences.  Rebuilding address array now.", buf, 2u);
      }

      v7 = *(*(a1 + 32) + 16);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1000B53D8;
      block[3] = &unk_100356988;
      v15 = WeakRetained;
      dispatch_async(v7, block);
      v8 = v15;
    }

    else
    {
      if (v6)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "We do not have valid network preferences.  Waiting until we have some or 2 minutes, whichever comes first.", buf, 2u);
      }

      v9 = +[NSNotificationCenter defaultCenter];
      [v9 addObserver:WeakRetained selector:"_networkPreferencesLoaded" name:@"com.apple.MobilePhone.PHMeCardGeocoder.PreferencesChanged" object:0];

      v10 = [[PCPersistentTimer alloc] initWithTimeInterval:@"com.apple.MobilePHone.PHMeCardGeocoder" serviceIdentifier:WeakRetained target:"_networkPreferencesLoaded" selector:0 userInfo:120.0];
      v11 = *(a1 + 32);
      v12 = *(v11 + 32);
      *(v11 + 32) = v10;

      v13 = *(*(a1 + 32) + 32);
      v8 = +[NSRunLoop mainRunLoop];
      [v13 scheduleInRunLoop:v8];
    }
  }
}

id sub_1000B5454(uint64_t a1)
{
  v2 = sub_100004F84();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = +[_PHMeCardGeocoderPreferences sharedPreferences];
    v8[0] = 67109120;
    v8[1] = [v3 hasValidNetworkPreferences];
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Got network preferences loaded callback, has valid network preferences = %d", v8, 8u);
  }

  [*(*(a1 + 32) + 32) invalidate];
  v4 = *(a1 + 32);
  v5 = *(v4 + 32);
  *(v4 + 32) = 0;

  v6 = +[NSNotificationCenter defaultCenter];
  [v6 removeObserver:*(a1 + 32) name:@"com.apple.MobilePhone.PHMeCardGeocoder.PreferencesChanged" object:0];

  return [*(a1 + 32) _rebuildAddressArray];
}

void sub_1000B5650(uint64_t a1)
{
  v8 = 0u;
  v9 = 0u;
  v6 = 0u;
  v7 = 0u;
  v1 = *(*(a1 + 32) + 24);
  v2 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v7;
    do
    {
      v5 = 0;
      do
      {
        if (*v7 != v4)
        {
          objc_enumerationMutation(v1);
        }

        [*(*(&v6 + 1) + 8 * v5) cancelGeocode];
        v5 = v5 + 1;
      }

      while (v3 != v5);
      v3 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
    }

    while (v3);
  }
}

void sub_1000B5DD0(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = sub_100004F84();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (a2)
  {
    if (v7)
    {
      *buf = 138412290;
      v13 = v5;
      v8 = "Geocode complete, success!  Address: %@";
LABEL_6:
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, v8, buf, 0xCu);
    }
  }

  else if (v7)
  {
    *buf = 138412290;
    v13 = v5;
    v8 = "Geocode complete, unsuccessful.  Scheduling next geocode.  Address: %@";
    goto LABEL_6;
  }

  v9 = *(a1 + 32);
  v10 = *(v9 + 16);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000B5F18;
  block[3] = &unk_100356988;
  block[4] = v9;
  dispatch_async(v10, block);
  [*(a1 + 32) scheduleNextGeocode];
}

id sub_1000B62F4(uint64_t a1)
{
  [*(a1 + 32) _unschedulePerformGeocodesWakeTaskIfEarlierThan:0];
  v2 = [*(a1 + 32) _isNetworkAvailable];
  v3 = sub_100004F84();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (v2)
  {
    if (v4)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "xpc_activity callback: Network available, doing some work...", buf, 2u);
    }

    return [*(a1 + 32) _doWork];
  }

  else
  {
    if (v4)
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "xpc_activity callback: No network available now, scheduling next wake...", v6, 2u);
    }

    return [*(a1 + 32) _scheduleNextGeocode];
  }
}

id sub_1000B6A3C(uint64_t a1)
{
  v2 = sub_100004F84();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Time to rebuild everything from scratch!", v4, 2u);
  }

  [*(a1 + 32) _unscheduleLongTermRebuild];
  return [*(a1 + 32) _rebuildAddressArray];
}

void sub_1000B7438(uint64_t a1)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = 0;
  v2 = *(*(a1 + 32) + 24);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1000B7514;
  v3[3] = &unk_100358C98;
  v3[4] = &v4;
  [v2 enumerateObjectsUsingBlock:v3];
  if (*(v5 + 24) == 1)
  {
    [*(a1 + 32) _saveGeoCache];
    [*(a1 + 32) _scheduleNextGeocode];
  }

  _Block_object_dispose(&v4, 8);
}

void sub_1000B74FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000B7514(uint64_t a1, void *a2)
{
  v10 = a2;
  v3 = [v10 geocodeAfter];
  v4 = +[NSDate date];
  [v3 timeIntervalSinceDate:v4];
  v6 = v5;
  v7 = +[_PHMeCardGeocoderPreferences sharedPreferences];
  [v7 activeUsagePeriodLength];
  v9 = v8;

  if (v6 > v9)
  {
    [v10 recalculateGeocodeAfterDate];
    *(*(*(a1 + 32) + 8) + 24) = 1;
  }
}

void sub_1000B7830(id a1)
{
  qword_1003B0E70 = objc_alloc_init(_PHMeCardGeocoderPreferences);

  _objc_release_x1();
}

id sub_1000BA8E8(uint64_t a1)
{
  [*(a1 + 32) setTrackWidthProportion:*(a1 + 40)];
  [*(a1 + 32) setNeedsLayout];
  v2 = *(a1 + 32);

  return [v2 layoutIfNeeded];
}

id sub_1000BA930(uint64_t a1)
{
  [*(a1 + 32) setTrackWidthProportion:1.0];
  [*(a1 + 32) setNeedsLayout];
  v2 = *(a1 + 32);

  return [v2 layoutIfNeeded];
}

id sub_1000BA978(uint64_t a1)
{
  [*(a1 + 32) setAnimating:0];
  [*(a1 + 32) setCachedTrackMaskWidth:0.0];
  v2 = *(a1 + 32);

  return [v2 setNeedsLayout];
}

id sub_1000BAB24(uint64_t a1)
{
  [*(a1 + 32) setTrackWidthProportion:0.0];
  [*(a1 + 32) setNeedsLayout];
  v2 = *(a1 + 32);

  return [v2 layoutIfNeeded];
}

id sub_1000BAB6C(uint64_t a1)
{
  [*(a1 + 32) setAnimating:0];
  [*(a1 + 32) setCachedTrackMaskWidth:0.0];
  v2 = *(a1 + 32);

  return [v2 setNeedsLayout];
}

id sub_1000BBFBC(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v8 = CGRectGetHeight(*&a1) * 0.5;
  v12.origin.x = a1;
  v12.origin.y = a2;
  v12.size.width = a3;
  v12.size.height = a4;
  if (CGRectGetWidth(v12) >= 115.0)
  {
    UIRectInset();
    [UIBezierPath _bezierPathWithPillRect:"_bezierPathWithPillRect:cornerRadius:" cornerRadius:?];
  }

  else
  {
    [UIBezierPath bezierPathWithRoundedRect:-1 byRoundingCorners:a1 cornerRadii:a2, a3, a4, v8, v8];
  }
  v9 = ;

  return v9;
}

void sub_1000BCA6C(uint64_t a1)
{
  if (*(a1 + 40))
  {
    v2 = 1.0;
  }

  else
  {
    v2 = 0.0;
  }

  [*(a1 + 32) setKnobPosition:v2];
  [*(a1 + 32) layoutIfNeeded];
  v3 = [*(a1 + 32) delegate];
  if (objc_opt_respondsToSelector())
  {
    [v3 actionSlider:*(a1 + 32) didUpdateSlideWithValue:v2];
  }
}

id sub_1000BCB08(uint64_t a1)
{
  [*(a1 + 32) setAnimating:0];
  [*(a1 + 32) setCachedTrackMaskWidth:0.0];
  v2 = *(a1 + 32);

  return [v2 setNeedsLayout];
}

void sub_1000BED94(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = CUTWeakLinkClass();
  if ([v3 hasAnyData])
  {
    v5 = [v4 sharedInstance];
    v6 = [v5 lostModeIsActive];

    if ((v6 & 1) == 0)
    {
      v7[0] = _NSConcreteStackBlock;
      v7[1] = 3221225472;
      v7[2] = sub_1000BEE80;
      v7[3] = &unk_100357110;
      v7[4] = *(a1 + 32);
      v8 = v3;
      dispatch_async(&_dispatch_main_q, v7);
    }
  }
}

void sub_1000BEE80(uint64_t a1)
{
  v2 = objc_alloc(CUTWeakLinkClass());
  v3 = [*(a1 + 32) healthStore];
  v4 = *(a1 + 40);
  v5 = +[MIUIDisplayConfiguration lockScreenConfiguration];
  v6 = [v2 initWithHealthStore:v3 medicalIDData:v4 displayConfiguration:v5];
  v7 = *(a1 + 32);
  v8 = *(v7 + 80);
  *(v7 + 80) = v6;

  v9 = [*(a1 + 32) medicalIDButton];
  [v9 setHidden:0];
}

uint64_t sub_1000BFF70()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = off_1003B0E78;
  v7 = off_1003B0E78;
  if (!off_1003B0E78)
  {
    v1 = sub_1000C3800();
    v5[3] = dlsym(v1, "MSNMonitorEndException");
    off_1003B0E78 = v5[3];
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (!v0)
  {
    v3 = sub_10025485C();
    _Block_object_dispose(&v4, 8);
    _Unwind_Resume(v3);
  }

  return v0("emergency");
}

id sub_1000C0BB8(uint64_t a1)
{
  v2 = [*(a1 + 32) dialerView];
  v3 = [v2 callButton];
  [v3 setAlpha:1.0];

  v4 = [*(a1 + 32) backButton];
  [v4 setAlpha:1.0];

  v5 = [*(a1 + 32) medicalIDButton];
  [v5 setAlpha:1.0];

  v6 = [*(a1 + 32) endButton];
  [v6 setAlpha:0.0];

  v7 = [*(a1 + 32) stewieAlertButton];
  [v7 setAlpha:0.0];

  v8 = [*(a1 + 32) stewieEndCallButton];
  [v8 setAlpha:0.0];

  v9 = [*(a1 + 32) dialerView];
  v10 = [v9 deleteButton];
  [v10 setAlpha:1.0];

  v11 = *(a1 + 32);

  return [v11 refreshUseRTTButton];
}

id sub_1000C0CD8(uint64_t a1)
{
  v2 = [*(a1 + 32) endButton];
  [v2 setEnabled:1];

  v3 = [*(a1 + 32) backButton];
  [v3 setAlpha:0.0];

  v4 = [*(a1 + 32) medicalIDButton];
  [v4 setAlpha:0.0];

  v5 = [*(a1 + 32) dialerView];
  v6 = [v5 callButton];
  [v6 setAlpha:0.0];

  v7 = [*(a1 + 32) endButton];
  [v7 setAlpha:1.0];

  v8 = [*(a1 + 32) stewieAlertButton];
  [v8 setAlpha:0.0];

  v9 = [*(a1 + 32) stewieEndCallButton];
  [v9 setAlpha:0.0];

  v10 = [*(a1 + 32) dialerView];
  v11 = [v10 deleteButton];
  [v11 setAlpha:1.0];

  v12 = *(a1 + 32);

  return [v12 refreshUseRTTButton];
}

id sub_1000C0E14(uint64_t a1)
{
  v2 = [*(a1 + 32) dialerView];
  v3 = [v2 callButton];
  [v3 setAlpha:1.0];

  v4 = [*(a1 + 32) backButton];
  [v4 setAlpha:1.0];

  v5 = [*(a1 + 32) medicalIDButton];
  [v5 setAlpha:1.0];

  v6 = [*(a1 + 32) endButton];
  [v6 setAlpha:0.0];

  v7 = [*(a1 + 32) stewieAlertButton];
  [v7 setAlpha:0.0];

  v8 = [*(a1 + 32) stewieEndCallButton];
  [v8 setAlpha:0.0];

  v9 = [*(a1 + 32) dialerView];
  v10 = [v9 deleteButton];
  [v10 setAlpha:1.0];

  v11 = *(a1 + 32);

  return [v11 refreshUseRTTButton];
}

id sub_1000C0F34(uint64_t a1)
{
  v2 = [*(a1 + 32) dialerView];
  v3 = [v2 callButton];
  [v3 setAlpha:0.0];

  v4 = [*(a1 + 32) stewieAlertButton];
  [v4 setAlpha:1.0];

  v5 = [*(a1 + 32) stewieEndCallButton];
  [v5 setEnabled:1];

  v6 = [*(a1 + 32) stewieEndCallButton];
  [v6 setAlpha:1.0];

  v7 = [*(a1 + 32) medicalIDButton];
  [v7 setAlpha:1.0];

  v8 = [*(a1 + 32) endButton];
  [v8 setAlpha:0.0];

  v9 = [*(a1 + 32) dialerView];
  v10 = [v9 deleteButton];
  [v10 setAlpha:0.0];

  v11 = *(a1 + 32);

  return [v11 refreshUseRTTButton];
}

id *sub_1000C2454(id *result, int a2)
{
  if (a2)
  {
    v2 = result;
    v3 = sub_100004F84();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4[0] = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Initiating emergency call using a Wi-Fi network.", v4, 2u);
    }

    return [v2[4] dialEmergencyCallForDialRequest:v2[5]];
  }

  return result;
}

void sub_1000C2B30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

intptr_t sub_1000C2B50(void *a1, uint64_t a2)
{
  if ((a2 - 1) < 2)
  {
    v3 = a1[4];
    v4 = 2;
    goto LABEL_7;
  }

  if (a2 == 3)
  {
    v3 = a1[4];
    v4 = 3;
    goto LABEL_7;
  }

  if (!a2)
  {
    v3 = a1[4];
    v4 = 1;
LABEL_7:
    [v3 setTtyType:v4];
    goto LABEL_8;
  }

  *(*(a1[6] + 8) + 24) = 0;
LABEL_8:
  v5 = a1[5];

  return dispatch_semaphore_signal(v5);
}

void sub_1000C2BD0(uint64_t a1, int a2)
{
  if (a2)
  {
    v5 = +[TUCallCenter sharedInstance];
    v3 = [v5 dialWithRequest:*(a1 + 32)];
  }

  else
  {
    v4 = sub_100004F84();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "dialEmergencyCall: Digits to dial are MMI/USSD, but user did not successfully unlock", buf, 2u);
    }
  }
}

void *sub_1000C37B0(uint64_t a1)
{
  v2 = sub_1000C3800();
  result = dlsym(v2, "MSNMonitorEndException");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_1003B0E78 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_1000C3800()
{
  v3[0] = 0;
  if (!qword_1003B0E80)
  {
    v3[1] = _NSConcreteStackBlock;
    v3[2] = 3221225472;
    v3[3] = sub_1000C3900;
    v3[4] = &unk_1003567B0;
    v3[5] = v3;
    v4 = off_100358D48;
    v5 = 0;
    qword_1003B0E80 = _sl_dlopen();
  }

  v0 = qword_1003B0E80;
  v1 = v3[0];
  if (!qword_1003B0E80)
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

uint64_t sub_1000C3900()
{
  result = _sl_dlopen();
  qword_1003B0E80 = result;
  return result;
}

void *sub_1000C3974(uint64_t a1)
{
  v2 = sub_1000C3800();
  result = dlsym(v2, "MSNMonitorBeginException");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_1003B0E88 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_1000C4138(id a1)
{
  v1 = dispatch_queue_create("MPCarPlayPhoneCallContainer", 0);
  v2 = qword_1003B0E98;
  qword_1003B0E98 = v1;

  _objc_release_x1(v1, v2);
}

void sub_1000C42B4(uint64_t a1)
{
  v1[0] = _NSConcreteStackBlock;
  v1[1] = 3221225472;
  v1[2] = sub_1000C4334;
  v1[3] = &unk_100356BB8;
  v1[4] = *(a1 + 32);
  v2 = *(a1 + 40);
  dispatch_async(&_dispatch_main_q, v1);
}

void sub_1000C4334(uint64_t a1)
{
  v2 = [*(a1 + 32) dataSource];
  v3 = [v2 numberOfViewCellsForPhoneCallContainer:*(a1 + 32)];

  if ([*(a1 + 32) shouldReloadCellsWithNumberOfCells:v3])
  {
    v4 = [*(a1 + 32) visibleCells];
    v5 = [v4 count];

    if (v3 != v5)
    {
      [*(a1 + 32) updateNumberOfCellsWithNewValue:v3 animated:*(a1 + 40)];
    }

    v6 = *(a1 + 32);
    if ((v6[8] & 1) == 0)
    {
      v7 = [v6 visibleCells];
      v8[0] = _NSConcreteStackBlock;
      v8[1] = 3221225472;
      v8[2] = sub_1000C4448;
      v8[3] = &unk_100358D88;
      v8[4] = *(a1 + 32);
      v9 = *(a1 + 40);
      [v7 enumerateObjectsUsingBlock:v8];
    }
  }
}

void sub_1000C4510(uint64_t a1)
{
  v2 = [*(a1 + 32) dataSource];
  v3 = [v2 phoneCallContainer:*(a1 + 32) titleForViewCellAtIndex:*(a1 + 48)];

  v4 = [*(a1 + 32) dataSource];
  v5 = [v4 phoneCallContainer:*(a1 + 32) subtitleForViewCellAtIndex:*(a1 + 48)];

  v6 = [v5 subtitle];
  v7 = [v5 source];
  v8 = [v5 secondaryString];
  v9 = [v5 isCallIdentification];
  v10 = [*(a1 + 32) dataSource];
  v30 = [v10 phoneCallContainer:*(a1 + 32) subtitleColorForViewCellAtIndex:*(a1 + 48)];

  v11 = [*(a1 + 32) dataSource];
  v31 = [v11 phoneCallContainer:*(a1 + 32) localizedSenderIdentityForViewCellAtIndex:*(a1 + 48)];

  v12 = [*(a1 + 32) visibleCells];
  if ([v12 count] == 1)
  {
    v13 = [*(a1 + 32) dataSource];
    v14 = [v13 phoneCallContainer:*(a1 + 32) avatarViewControllerForViewCellAtIndex:*(a1 + 48)];
  }

  else
  {
    v14 = 0;
  }

  v15 = [*(a1 + 32) dataSource];
  v16 = [v15 phoneCallContainer:*(a1 + 32) cellIsDimmedAtIndex:*(a1 + 48)];

  if (v3 || v6 || v31)
  {
    [*(a1 + 40) setDimmed:v16 animated:1];
    if (v9)
    {
      v17 = [v7 length];
      v18 = *(a1 + 40);
      if (!v17)
      {
        if (v8)
        {
          v19 = v8;
        }

        else
        {
          v19 = v3;
        }

        v20 = *(a1 + 56);
        v21 = v6;
        goto LABEL_15;
      }
    }

    else
    {
      v18 = *(a1 + 40);
    }

    v20 = *(a1 + 56);
    v21 = v3;
    v19 = v6;
LABEL_15:
    [v18 setTitle:v21 subtitle:v19 source:v7 subtitleColor:v30 localizedSenderIdentityTitle:v31 animated:v20];
  }

  v29 = v3;
  v22 = v7;
  v23 = [*(a1 + 40) avatarViewController];
  v24 = [v23 contacts];
  v25 = [v14 contacts];
  v26 = [v24 isEqualToArray:v25];

  if ((v26 & 1) == 0)
  {
    v27 = sub_100004F84();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      v28 = [v14 contacts];
      *buf = 138412290;
      v33 = v28;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Updating CarPlay InCallService AvatarViewController with contacts: %@", buf, 0xCu);
    }

    [*(a1 + 40) setAvatarViewController:v14];
  }
}

id sub_1000C4A2C(uint64_t a1)
{
  [*(a1 + 32) setNeedsLayout];
  v2 = *(a1 + 32);

  return [v2 layoutIfNeeded];
}

void sub_1000C4CC8(uint64_t a1)
{
  *(*(a1 + 32) + 8) = 0;
  *(*(a1 + 32) + 9) = 0;
  v2 = [*(a1 + 32) visibleCells];
  v3 = [v2 count] - 1;

  v4 = [*(a1 + 32) visibleCells];
  v6 = [v4 subarrayWithRange:{1, v3}];

  [v6 makeObjectsPerformSelector:"removeFromSuperview"];
  v5 = [*(a1 + 32) visibleCells];
  [v5 removeObjectsInArray:v6];
}

void sub_1000C4F20(uint64_t a1, void *a2)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000C4FD4;
  block[3] = &unk_100356988;
  v6 = a2;
  v3 = v6;
  dispatch_async(&_dispatch_main_q, block);
  v4 = [*(a1 + 32) visibleCells];
  [v4 removeObject:v3];
}

void sub_1000C5BD8(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [[PHCarPlayNumberPadButton alloc] initWithCharacter:v5];

  [*(a1 + 32) insertObject:v6 atIndex:a3];
}

void sub_1000C5E08(id a1)
{
  v1 = objc_alloc_init(NSCache);
  v2 = qword_1003B0EA0;
  qword_1003B0EA0 = v1;

  _objc_release_x1(v1, v2);
}

void sub_1000C746C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 40));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a17, 8);
  _Unwind_Resume(a1);
}

void sub_1000C74C8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained && ([WeakRetained pauseTimer] & 1) == 0)
  {
    if (--*(*(*(a1 + 32) + 8) + 24))
    {
      v4 = [v3 countdownViewModel];
      if ([v4 playsSound])
      {
      }

      else
      {
        v8 = [v3 countdownViewModel];
        v9 = [v8 playsHaptics];

        if (!v9)
        {
LABEL_15:
          v15 = [v3 countdownLabel];
          v17[0] = _NSConcreteStackBlock;
          v17[1] = 3221225472;
          v17[2] = sub_1000C7738;
          v17[3] = &unk_100358E90;
          v16 = *(a1 + 32);
          v17[4] = v3;
          v17[5] = v16;
          [UIView transitionWithView:v15 duration:5242880 options:v17 animations:0 completion:0.200000003];

          goto LABEL_16;
        }
      }

      v10 = [v3 countdownViewModel];
      if ([v10 playsSound])
      {
        v11 = *(*(*(a1 + 32) + 8) + 24);
        v12 = *(a1 + 48);

        v13 = [v3 alertController];
        [v13 playAlertWithAudio:v11 <= v12 alertTopic:TLAlertTopicSOSCountdownTick];

        if (v11 <= v12)
        {
          [v3 toggleFlash];
        }
      }

      else
      {

        v14 = [v3 alertController];
        [v14 playAlertWithAudio:0 alertTopic:TLAlertTopicSOSCountdownTick];
      }

      goto LABEL_15;
    }

    v5 = sub_100004F84();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Countdown has finished! Calling completion.", buf, 2u);
    }

    [v3 stop];
    v6 = [v3 completion];

    if (v6)
    {
      v7 = [v3 completion];
      v7[2](v7, 0);
    }
  }

LABEL_16:
}

void sub_1000C7738(uint64_t a1)
{
  v4 = [*(a1 + 32) countdownViewModel];
  v2 = [v4 countdownString:*(*(*(a1 + 40) + 8) + 24)];
  v3 = [*(a1 + 32) countdownLabel];
  [v3 setText:v2];
}

void sub_1000C8398(uint64_t a1)
{
  v2 = [*(a1 + 32) avCaptureDevice];
  v3 = [v2 hasTorch];

  if (v3)
  {
    v4 = [*(a1 + 32) avCaptureDevice];
    [v4 lockForConfiguration:0];

    v5 = [*(a1 + 32) avCaptureDevice];
    [v5 setTorchMode:1];

    v6 = [*(a1 + 32) avCaptureDevice];
    [v6 unlockForConfiguration];

    v7 = dispatch_time(0, 500000000);
    v8 = [*(a1 + 32) avCaptureDispatchQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000C8504;
    block[3] = &unk_100356988;
    block[4] = *(a1 + 32);
    dispatch_after(v7, v8, block);
  }

  else
  {
    v9 = sub_100004F84();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "PHSlidingView,torch not available", buf, 2u);
    }
  }
}

void sub_1000C85AC(uint64_t a1)
{
  v2 = [*(a1 + 32) avCaptureDevice];
  v3 = [v2 hasTorch];

  if (v3)
  {
    v4 = [*(a1 + 32) avCaptureDevice];
    [v4 lockForConfiguration:0];

    v5 = [*(a1 + 32) avCaptureDevice];
    v6 = [v5 torchMode];

    if (v6 == 1)
    {
      v7 = [*(a1 + 32) avCaptureDevice];
      [v7 setTorchMode:0];
    }

    v9 = [*(a1 + 32) avCaptureDevice];
    [v9 unlockForConfiguration];
  }

  else
  {
    v8 = sub_100004F84();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "PHSlidingView,torch not available", buf, 2u);
    }
  }
}

id sub_1000C96A0(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) soundPlayer];
  [v4 attemptToPlayKey:a2];

  v5 = *(a1 + 32);

  return [v5 handleNumberPadCharacter:a2];
}

void sub_1000C9B6C(id *a1)
{
  objc_copyWeak(&to, a1 + 5);
  v2 = objc_loadWeakRetained(&to);

  if (v2)
  {
    v3 = [a1[6] sharedUtilityProvider];
    v4 = [a1[4] UUIDString];
    v5 = [v3 conversationForCallUID:v4];

    if (v5)
    {
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1000C9CF4;
      block[3] = &unk_100358F10;
      objc_copyWeak(&v9, a1 + 5);
      v5 = v5;
      v7 = v5;
      v8 = a1[4];
      dispatch_async(&_dispatch_main_q, block);

      objc_destroyWeak(&v9);
    }
  }

  else
  {
    v5 = sub_100004F84();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Stopped fetchRTTConversationForCallUUID because MPRTTTranscriptionMessage was deallocated before starting", buf, 2u);
    }
  }

  objc_destroyWeak(&to);
}

void sub_1000C9CF4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained setConversation:*(a1 + 32)];
    v4 = sub_100004F84();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Successfully finished fetchRTTConversationForCallUUID", v8, 2u);
    }

    v5 = +[NSNotificationCenter defaultCenter];
    v9 = @"MPVoicemailRTTTranscriptDidLoadCallIDKey";
    v6 = [*(a1 + 40) UUIDString];
    v10 = v6;
    v7 = [NSDictionary dictionaryWithObjects:&v10 forKeys:&v9 count:1];
    [v5 postNotificationName:@"MPVoicemailRTTTranscriptDidLoadNotification" object:0 userInfo:v7];
  }

  else
  {
    v5 = sub_100004F84();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Stopped fetchRTTConversationForCallUUID because MPRTTTranscriptionMessage was deallocated when trying to write conversation", v8, 2u);
    }
  }
}

void sub_1000CA17C(uint64_t a1)
{
  if (qword_1003B0EB8 != -1)
  {
    sub_100256450();
  }

  v3 = *(a1 + 32);
  v2 = a1 + 32;
  v4 = off_1003B0EB0(*(v2 + 8), *(v2 + 12), v3);
  v5 = sub_100004F84();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_ERROR);
  if (v4)
  {
    if (v6)
    {
      sub_1002564E0(v2, v5);
    }
  }

  else if (v6)
  {
    sub_100256464(v2, v5);
  }
}

void sub_1000CACC4(uint64_t a1)
{
  v2 = sub_100004F84();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v20 = 138412290;
    v21 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Removing ended call from our call objects: %@", &v20, 0xCu);
  }

  v4 = [*(a1 + 40) participantsView];
  v5 = [v4 superview];
  if (!v5)
  {
    goto LABEL_9;
  }

  v6 = v5;
  v7 = [*(a1 + 40) callGroups];
  v8 = [v7 containsObject:*(a1 + 32)];

  if (v8)
  {
    v9 = [*(a1 + 40) callGroups];
    [v9 removeObject:*(a1 + 32)];

    v10 = [*(a1 + 40) delegate];
    v11 = objc_opt_respondsToSelector();

    if (v11)
    {
      v12 = [*(a1 + 40) delegate];
      v13 = *(a1 + 40);
      v14 = [v13 callGroups];
      [v12 callParticipantsViewController:v13 willShowMultipleLabel:{objc_msgSend(v14, "count") > 1}];
    }

    v15 = [*(a1 + 40) participantsView];
    [v15 updateParticipantsAnimated:1];

    v16 = [*(a1 + 40) delegate];
    v17 = objc_opt_respondsToSelector();

    if (v17)
    {
      v4 = [*(a1 + 40) delegate];
      v18 = *(a1 + 40);
      v19 = [v18 callGroups];
      [v4 callParticipantsViewController:v18 didShowMultipleLabel:{objc_msgSend(v19, "count") > 1}];

LABEL_9:
    }
  }
}

BOOL sub_1000CAED8(id a1, TUCallGroup *a2)
{
  v2 = [(TUCallGroup *)a2 calls];
  v3 = [v2 firstObject];

  if (v3)
  {
    v4 = [v3 wasDeclined] ^ 1;
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

void sub_1000CDA7C(uint64_t a1)
{
  v1 = [*(a1 + 32) view];
  [v1 layoutIfNeeded];
}

id sub_1000CE104(uint64_t a1)
{
  [UIApp startedSubTest:@"end-call" forTest:@"EndActiveCall"];
  [UIApp startedSubTest:@"pre-transition-delay" forTest:@"EndActiveCall"];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);

  return [v2 bottomBarActionPerformed:15 withCompletionState:1 fromBar:v3];
}

id sub_1000CE380(uint64_t a1)
{
  [UIApp startedSubTest:@"end-to-end" forTest:@"AnswerIncomingCall"];
  [UIApp startedSubTest:@"pre-animation-delay" forTest:@"AnswerIncomingCall"];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);

  return [v2 bottomBarActionPerformed:1 withCompletionState:1 fromBar:v3];
}

void sub_1000CF3B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000CF3CC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v16 = WeakRetained;
    v2 = [WeakRetained callCenter];
    v3 = [v2 incomingCall];

    v4 = [v16 featureFlags];
    v5 = TUCallScreeningEnabled();

    if (v5 && !v3)
    {
      v6 = [v16 callCenter];
      v3 = [v6 screeningCall];
    }

    v7 = [v16 bottomBar];
    v8 = [v7 controlForActionType:13];

    v9 = [v16 bottomBar];
    v10 = [v9 controlForActionType:9];

    if (!v10)
    {
      v11 = [v16 bottomBar];
      v10 = [v11 controlForActionType:12];
    }

    if (v3 && v10)
    {
      [v16 configureDeclineWithReminderButton:v8 declineWithMessageButton:v10 forIncomingCall:v3];
    }

    v12 = [v16 featureFlags];
    v13 = [v12 receptionistEnabled];

    if (v3 && v13)
    {
      v14 = [v16 bottomBar];
      v15 = [v14 controlForActionType:27];

      [v16 configureDeclineWithMoreButton:v15 forIncomingCall:v3];
    }

    WeakRetained = v16;
  }
}

void sub_1000CF90C(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 176) callDisplayStyle];
  v7 = [*(a1 + 32) callParticipantsViewController];
  v3 = [v7 view];
  v4 = [v3 layer];
  v5 = v4;
  LODWORD(v6) = 1.0;
  if (v2 == 2)
  {
    *&v6 = 0.0;
  }

  [v4 setOpacity:v6];
}

id sub_1000CF9AC(uint64_t a1)
{
  [*(a1 + 32) resetParticipantsViewConstraints];
  v2 = [*(a1 + 32) view];
  [v2 layoutIfNeeded];

  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000CFA58;
  v4[3] = &unk_100356988;
  v4[4] = *(a1 + 32);
  return [UIView animateWithDuration:v4 animations:0.400000006];
}

void sub_1000CFA58(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 176) callDisplayStyle];
  v7 = [*(a1 + 32) callParticipantsViewController];
  v3 = [v7 view];
  v4 = [v3 layer];
  v5 = v4;
  LODWORD(v6) = 1.0;
  if (v2 == 2)
  {
    *&v6 = 0.0;
  }

  [v4 setOpacity:v6];
}

void sub_1000CFAF8(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 32);
  if (v2 == 1)
  {
    [v3 resetParticipantsViewConstraints];
    v7 = [*(a1 + 32) view];
    [v7 layoutIfNeeded];
  }

  else
  {
    v4 = [v3 callParticipantsViewController];
    v5 = [v4 view];
    [v5 setNeedsLayout];

    v7 = [*(a1 + 32) callParticipantsViewController];
    v6 = [v7 view];
    [v6 layoutIfNeeded];
  }
}

void sub_1000D1AF4(uint64_t a1)
{
  v2 = [*(a1 + 32) trailingPanelCoveringView];

  if (v2)
  {
    if (*(a1 + 48) <= *(a1 + 40))
    {
      v3 = 0.0;
    }

    else
    {
      v3 = 1.0;
    }

    v4 = [*(a1 + 32) trailingPanelCoveringView];
    [v4 setAlpha:v3];
  }

  [*(a1 + 32) updateSupplementalButtonsLayout];
  [*(a1 + 32) updateKeypadBackgroundMaterialWithViewSize:{*(a1 + 40), *(a1 + 48)}];
  v5 = [*(a1 + 32) view];
  [v5 layoutIfNeeded];
}

void sub_1000D45CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000D45E8(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (a2)
  {
    v5 = WeakRetained;
    v4 = [WeakRetained callDetailsCoordinator];
    [v4 startWithReason:@"PHAudioCallViewController requested call details"];

    WeakRetained = v5;
  }
}

void sub_1000D4E98(uint64_t a1)
{
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000D5024;
  v12[3] = &unk_100357110;
  v2 = *(a1 + 32);
  v13 = *(a1 + 40);
  v14 = *(a1 + 48);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000D5068;
  v7[3] = &unk_100359070;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  *&v5 = *(a1 + 48);
  *(&v5 + 1) = *(a1 + 56);
  *&v6 = v3;
  *(&v6 + 1) = v4;
  v8 = v6;
  v9 = v5;
  v10 = *(a1 + 64);
  v11 = *(a1 + 72);
  [UIView transitionWithView:v2 duration:1048832 options:v12 animations:v7 completion:0.4];
}

id sub_1000D5024(uint64_t a1)
{
  [*(a1 + 32) setAlpha:1.0];
  v2 = *(a1 + 40);

  return [v2 setAlpha:0.0];
}

void sub_1000D5068(uint64_t a1)
{
  v2 = dispatch_time(0, 2000000000);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000D5184;
  v7[3] = &unk_100359098;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  *&v5 = *(a1 + 48);
  *(&v5 + 1) = *(a1 + 56);
  *&v6 = v3;
  *(&v6 + 1) = v4;
  v8 = v6;
  v9 = v5;
  v10 = *(a1 + 64);
  v11 = *(a1 + 72);
  dispatch_after(v2, &_dispatch_main_q, v7);
}

void sub_1000D5184(uint64_t a1)
{
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000D5310;
  v12[3] = &unk_100357110;
  v2 = *(a1 + 32);
  v13 = *(a1 + 40);
  v14 = *(a1 + 48);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000D5354;
  v7[3] = &unk_100359070;
  v3 = *(a1 + 48);
  v4 = *(a1 + 40);
  *&v5 = *(a1 + 32);
  *(&v5 + 1) = *(a1 + 56);
  *&v6 = v3;
  *(&v6 + 1) = v4;
  v8 = v6;
  v9 = v5;
  v10 = *(a1 + 64);
  v11 = *(a1 + 72);
  [UIView transitionWithView:v2 duration:2097408 options:v12 animations:v7 completion:0.4];
}

id sub_1000D5310(uint64_t a1)
{
  [*(a1 + 32) setAlpha:0.0];
  v2 = *(a1 + 40);

  return [v2 setAlpha:1.0];
}

void sub_1000D5354(uint64_t a1)
{
  [*(a1 + 32) removeFromSuperview];
  [*(a1 + 40) removeFromSuperview];
  [*(a1 + 48) removeFromSuperview];
  v2 = [*(a1 + 56) callDetailsViewButton];
  [v2 setAlpha:1.0];

  v3 = +[NSUserDefaults standardUserDefaults];
  [v3 setBool:1 forKey:@"iPadInCallUIInfoButtonCoinFlipKey"];

  if (([CNSharedProfileStateOracle contactIsInAutoUpdateState:*(a1 + 64)]& 1) == 0)
  {
    v6 = [*(a1 + 56) imNicknameProvider];
    v4 = [*(a1 + 72) pendingNickname];
    v5 = [v4 handle];
    [v6 markTransitionAsObservedForHandleID:v5 isAutoUpdate:0];
  }
}

void sub_1000D55C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000D55E8(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000D56A0;
  v5[3] = &unk_100356FB0;
  objc_copyWeak(&v7, (a1 + 32));
  v6 = v3;
  v4 = v3;
  dispatch_async(&_dispatch_main_q, v5);

  objc_destroyWeak(&v7);
}

void sub_1000D56A0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setSnapshottedPosterImageToUseForColorInversion:*(a1 + 32)];
  [WeakRetained invertNecessaryUIElementsBasedOnPosterImage:*(a1 + 32)];
}

void sub_1000D5A48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    [*(a1 + 32) setHasInvertedUIElementColorsBasedOnPoster:1];
    v5 = sub_100004F84();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v9[0] = 67109120;
      v9[1] = a2;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "SNAP: bottomButtons prefers white text = %d", v9, 8u);
    }

    v6 = [*(a1 + 32) buttonsViewController];
    v7 = [v6 view];

    [v7 setPrefersWhiteButtonTextColor:a2];
    v8 = [*(a1 + 32) bottomBar];
    [v8 setPrefersWhiteButtonTextColor:a2];
  }
}

void sub_1000D5CB4(uint64_t a1, int a2, uint64_t a3)
{
  if (!a3)
  {
    [*(a1 + 32) setHasInvertedUIElementColorsBasedOnPoster:1];
    v5 = sub_100004F84();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v8[0] = 67109120;
      v8[1] = a2;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "SNAP: callDetailsButton prefers white text = %d", v8, 8u);
    }

    if (a2)
    {
      +[UIColor whiteColor];
    }

    else
    {
      +[UIColor blackColor];
    }
    v6 = ;
    v7 = [*(a1 + 32) callDetailsViewButton];
    [v7 setTintColor:v6];
  }
}

id *sub_1000D5F98(id *result, int a2, uint64_t a3)
{
  if (!a3)
  {
    v4 = result;
    [result[4] setHasInvertedUIElementColorsBasedOnPoster:1];
    v5 = sub_100004F84();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7[0] = 67109120;
      v7[1] = a2;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "SNAP: posterBadgeView prefers white text = %d", v7, 8u);
    }

    if (a2)
    {
      v6 = 1;
    }

    else
    {
      v6 = 2;
    }

    return [v4[5] setTheme:v6];
  }

  return result;
}

void sub_1000D6B78(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_1000D6B9C(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000D6C2C;
  block[3] = &unk_100356F60;
  objc_copyWeak(&v2, (a1 + 32));
  dispatch_async(&_dispatch_main_q, block);
  objc_destroyWeak(&v2);
}

void sub_1000D6C2C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = [WeakRetained inCallRootViewController];
    [v2 updateDesiredSpringboardBehavior];

    WeakRetained = v3;
  }
}

void sub_1000D812C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000D8148(uint64_t a1)
{
  v2 = objc_loadWeakRetained((a1 + 32));
  v3 = [v2 bottomBar];
  [v2 _testing_finishedAnimatingToActiveCallState:v3];

  if (*(a1 + 40) == 1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained revealAudioRoutingDeviceListAnimatedIfNeeded];
  }
}

void sub_1000D8314(uint64_t a1)
{
  v2 = [*(a1 + 32) posterNameViewModel];
  v3 = [v2 posterNameTextView];
  v4 = [v3 layout];

  if (v4 != 1)
  {
    memset(&v14, 0, sizeof(v14));
    CGAffineTransformMakeScale(&v14, 1.03, 1.03);
    v13 = v14;
    v5 = [*(a1 + 32) renderingViewController];
    v6 = [v5 view];
    v12 = v13;
    [v6 setTransform:&v12];

    v11 = v14;
    v7 = [*(a1 + 32) alwaysOnDisplayDimmingView];
    v12 = v11;
    [v7 setTransform:&v12];
  }

  if ([*(a1 + 32) shouldShowNewPosterUpdates])
  {
    v8 = dispatch_time(0, 950000000);
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1000D84B8;
    v9[3] = &unk_100356960;
    v9[4] = *(a1 + 32);
    v10 = *(a1 + 40);
    dispatch_after(v8, &_dispatch_main_q, v9);
  }

  else
  {
    [*(a1 + 32) _updatePosterStatusLabelForState:*(a1 + 40)];
  }
}

id sub_1000D8B14(uint64_t a1)
{
  v2 = [*(a1 + 32) posterNameViewModel];
  [v2 transitionCallToActiveStateAnimated:*(a1 + 40)];

  v3 = *(a1 + 32);

  return [v3 _updateStatusLabelVisibility];
}

id *sub_1000D9A94(id *result, int a2)
{
  if (a2)
  {
    v2 = result;
    result = [result[4] isTTY];
    if ((result & 1) == 0)
    {
      v3 = v2[5];

      return [v3 revealAudioRoutingDeviceListAnimatedIfNeeded];
    }
  }

  return result;
}

void sub_1000D9C84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000D9CA0(uint64_t a1)
{
  v2 = sub_100004F84();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "iPadAudioCallViewController,setCurrentState,PHInCallStateCallBuffer,disable 6-up buttons", v8, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [WeakRetained currentMiddleView];
  [v4 setButtonsEnabled:0];

  v5 = objc_loadWeakRetained((a1 + 32));
  v6 = [v5 currentMiddleView];
  v7 = [v6 buttonForControlType:15];
  [v7 setEnabled:1];
}

void sub_1000DA564(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  _Block_object_dispose(&a22, 8);
  _Block_object_dispose((v34 - 176), 8);
  objc_destroyWeak((v33 + 40));
  _Block_object_dispose(&a33, 8);
  _Unwind_Resume(a1);
}

void sub_1000DA5C4(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((*(*(a1 + 32) + 8) + 40));
  if (WeakRetained)
  {
    v5 = a2 ^ 1u;
    v6 = *(*(a1 + 40) + 8);
    if (*(v6 + 24) != v5)
    {
      *(v6 + 24) = v5;
      v7 = sub_100004F84();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        if (*(*(*(a1 + 40) + 8) + 24))
        {
          v8 = @"YES";
        }

        else
        {
          v8 = @"NO";
        }

        v9 = 138412290;
        v10 = v8;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Audio: setCurrentState: stateChangeLockObservation: wasUnlocked: %@", &v9, 0xCu);
      }

      [WeakRetained setScreeningState:*(a1 + 48) animated:1 overrideWithIsUnlocked:v5];
    }
  }
}

void sub_1000DA6E4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(*(a1 + 32) + 8) + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained traitCollection];
    v5 = [v4 _backlightLuminance];
    v6 = *(*(*(a1 + 40) + 8) + 24);

    if (v5 != v6)
    {
      v7 = [v3 traitCollection];
      *(*(*(a1 + 40) + 8) + 24) = [v7 _backlightLuminance];

      v8 = sub_100004F84();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = @"YES";
        if (!*(*(*(a1 + 48) + 8) + 24))
        {
          v9 = @"NO";
        }

        v10 = *(*(*(a1 + 40) + 8) + 24);
        v11 = 138412546;
        v12 = v9;
        v13 = 2048;
        v14 = v10;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Audio: setCurrentState: stateDisplayChangedObservation: wasUnlocked: %@ with luminance: %ld", &v11, 0x16u);
      }

      [v3 setScreeningState:*(a1 + 56) animated:1 overrideWithIsUnlocked:*(*(*(a1 + 48) + 8) + 24)];
    }
  }
}

id sub_1000DE444(uint64_t a1)
{
  v2 = [*(a1 + 32) view];
  [v2 setBackgroundColor:*(a1 + 40)];

  v3 = *(a1 + 32);

  return [v3 removeBackgroundContactImageView];
}

void sub_1000DF74C(uint64_t a1)
{
  v3 = *(a1 + 40);
  v2 = [NSArray arrayWithObjects:&v3 count:1];
  [*(a1 + 32) setBackgroundEffects:v2];
}

void sub_1000DF7D4(uint64_t a1)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000DF8EC;
  v4[3] = &unk_100356988;
  v5 = *(a1 + 32);
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_1000DF8FC;
  v2[3] = &unk_1003569B0;
  v3 = *(a1 + 32);
  [UIView _animateUsingSpringWithDuration:0 delay:v4 options:v2 mass:0.4 stiffness:0.0 damping:2.0 initialVelocity:300.0 animations:50.0 completion:0.0];
}

void sub_1000DFA50(uint64_t a1)
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000DFB5C;
  v8[3] = &unk_100357110;
  v2 = *(a1 + 32);
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v9 = v2;
  v10 = v4;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000DFBB0;
  v5[3] = &unk_1003591D0;
  v5[4] = v4;
  v6 = v3;
  v7 = *(a1 + 48);
  [UIView animateWithDuration:v8 animations:v5 completion:0.5];
}

id sub_1000DFB5C(uint64_t a1)
{
  v2 = [*(a1 + 32) view];
  [v2 setAlpha:0.0];

  v3 = *(a1 + 40);

  return [v3 setParticipantsViewShouldShowParticipantLabel:1];
}

uint64_t sub_1000DFBB0(uint64_t a1)
{
  [*(a1 + 32) removeChildViewController:*(a1 + 40)];
  v2 = [*(a1 + 40) view];
  [v2 removeFromSuperview];

  [*(a1 + 40) didMoveToParentViewController:0];
  [*(a1 + 32) _updateStatusLabelVisibility];
  result = *(a1 + 48);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

void sub_1000E04B8(id a1)
{
  v1 = [CNContactViewController descriptorForRequiredKeys:CNContactImageDataAvailableKey];
  v6[12] = v1;
  v2 = +[CNMeCardSharingSettingsViewController descriptorForRequiredKeys];
  v6[13] = v2;
  v3 = +[NSPersonNameComponents descriptorForUsedKeys];
  v6[14] = v3;
  v4 = [NSArray arrayWithObjects:v6 count:15];
  v5 = qword_1003B0EC0;
  qword_1003B0EC0 = v4;
}

void sub_1000E0B84(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 248) view];
  [v2 setAlpha:0.0];

  v3 = [*(*(a1 + 32) + 256) view];
  [v3 setAlpha:1.0];
}

void sub_1000E0C0C(uint64_t a1)
{
  v2 = [*(a1 + 32) view];
  [v2 setAlpha:0.0];

  v3 = [*(*(a1 + 40) + 176) callDisplayStyle];
  v4 = [*(*(a1 + 40) + 248) view];
  v6 = v4;
  v5 = 1.0;
  if (v3 == 2)
  {
    v5 = 0.0;
  }

  [v4 setAlpha:v5];
}

void sub_1000E0CB4(uint64_t a1)
{
  v2 = [*(a1 + 32) view];
  [v2 removeFromSuperview];

  [*(a1 + 32) removeFromParentViewController];
  v3 = *(a1 + 40);
  v4 = *(v3 + 256);
  *(v3 + 256) = 0;
}

void sub_1000E1588(uint64_t a1, int a2)
{
  if (a2)
  {
    if (+[PHUIConfiguration shouldUseFullScreenPeoplePicker])
    {
      v3 = +[PHInCallUtilities sharedInstance];
      [v3 setRequestedVCPresentationWithStatusBar:1 withReasonLog:@"Requested presentation of contacts UI"];
    }

    v4 = [*(a1 + 32) inCallRootViewController];
    [v4 presentContactsViewControllerForView:*(a1 + 40)];
  }
}

void sub_1000E1724(uint64_t a1, int a2)
{
  if (a2)
  {
    if (+[PHUIConfiguration shouldUseFullScreenPeoplePicker])
    {
      v3 = +[PHInCallUtilities sharedInstance];
      [v3 setRequestedVCPresentationWithStatusBar:1 withReasonLog:@"Requested presentation of Add Call UI"];
    }

    v4 = [*(a1 + 32) inCallRootViewController];
    [v4 presentPhoneRemoteViewControllerForView:*(a1 + 40)];
  }
}

void sub_1000E1914(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = [*(a1 + 32) callCenter];
    v4 = [v3 callWithStatus:1];
    if (v4)
    {
      v5 = v4;
    }

    else
    {
      v6 = [*(a1 + 32) callCenter];
      v5 = [v6 callWithStatus:2];

      if (!v5)
      {
        v5 = sub_100004F84();
        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
        {
          v14 = [*(a1 + 32) callCenter];
          v15 = [v14 currentCalls];
          v16 = 138412290;
          v17 = v15;
          _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[WARN] Was told to request video presentation but no active or held call was found in calls: %@", &v16, 0xCu);
        }

        goto LABEL_8;
      }
    }

    v7 = [v5 provider];
    v8 = [[TUDialRequest alloc] initWithProvider:v7];
    v9 = [v5 handle];
    [v8 setHandle:v9];

    v10 = [v5 contactIdentifier];
    [v8 setContactIdentifier:v10];

    v11 = [v5 localSenderIdentityUUID];
    [v8 setLocalSenderIdentityUUID:v11];

    [v8 setVideo:1];
    [v8 setOriginatingUIType:1];
    v12 = sub_100004F84();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138412290;
      v17 = v8;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Requesting video via dial request: %@", &v16, 0xCu);
    }

    v13 = [*(a1 + 32) callCenter];
    [v13 launchAppForDialRequest:v8 completion:0];

LABEL_8:
  }
}

void sub_1000E22E4(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = [*(a1 + 32) inCallRootViewController];
    [v3 presentViewControllerFullScreen:*(a1 + 40)];
  }
}

void sub_1000E2FF8(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) glassDimmingView];
  [v2 setAlpha:v1];
}

void sub_1000E4E40(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 112));
  _Unwind_Resume(a1);
}

void sub_1000E4E94(uint64_t a1, int a2)
{
  v4 = sub_100004F84();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (a2)
  {
    if (v5)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Hold Assist: The user has confirmed they want to decline the second incoming call and keep holding with hold assist enabled.", buf, 2u);
    }

    v6 = [*(a1 + 32) frontmostCall];
    v7 = [*(a1 + 32) callCenter];
    [v7 disconnectCall:v6 withReason:2];
  }

  else
  {
    if (v5)
    {
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Hold Assist: The user has confirmed they want stop hold assist and take the new call.", v9, 2u);
    }

    v8 = *(a1 + 40);
    *(*(a1 + 32) + 125) = 1;
    [*(a1 + 32) performBottomBarActionType:v8];
  }
}

void sub_1000E4F94(uint64_t a1, int a2)
{
  if (a2)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained setCurrentState:0];
  }
}

void sub_1000E4FF8(uint64_t a1, char a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (!WeakRetained)
  {
    goto LABEL_15;
  }

  if ((a2 & 1) == 0)
  {
    v15 = sub_100004F84();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v22) = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Not performing live reply with device locked.", &v22, 2u);
    }

    goto LABEL_14;
  }

  if (![WeakRetained usesCompactMulticallUI] || (objc_msgSend(v5, "callCenter"), v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "currentCallGroups"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "count"), v7, v6, v8 < 2))
  {
    v16 = sub_100004F84();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = [*(a1 + 32) frontmostCall];
      v22 = 138412290;
      v23 = v17;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Answering screened call with live reply: %@", &v22, 0xCu);
    }

    v15 = [v5 frontmostCall];
    if (v15)
    {
      [v5 setSendToLiveReply:1];
      v18 = +[UIApplication sharedApplication];
      v19 = [v18 delegate];
      v20 = [v19 answeringMachine];
      v21 = [v15 callUUID];
      [v20 screenCallWithUUID:v21 manualScreening:1 receptionist:1 completion:&stru_100359298];
    }

LABEL_14:

    goto LABEL_15;
  }

  v9 = [v5 callCenter];
  v10 = [v9 currentCallCount];

  if (v10 >= 2)
  {
    v11 = [v5 analyticsReporter];
    [v11 reportMultipleCallsWaitingUIAction:4];
  }

  v12 = [v5 callCenter];
  v13 = [*(a1 + 32) callCenter];
  v14 = [v13 incomingCall];
  [v12 disconnectCall:v14 withReason:2];

LABEL_15:
}

BOOL sub_1000E5840(id a1, TUCall *a2)
{
  v2 = a2;
  v3 = [(TUCall *)v2 provider];
  if ([v3 isTelephonyProvider])
  {
    v4 = [(TUCall *)v2 status]== 1 || [(TUCall *)v2 status]== 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void sub_1000E5BDC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000E5C04(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_copyWeak(&to, (a1 + 40));
  v4 = objc_loadWeakRetained(&to);
  [v4 blockWithHandle:*(a1 + 32)];

  v5 = objc_loadWeakRetained(&to);
  v6 = [v5 frontmostCall];

  if (v6)
  {
    v7 = objc_loadWeakRetained(&to);
    v8 = [v7 callCenter];
    [v8 disconnectCall:v6 withReason:2];
  }

  objc_destroyWeak(&to);
}

void sub_1000E605C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  objc_destroyWeak((v16 + 56));
  objc_destroyWeak(va);
  objc_destroyWeak((v17 - 112));
  _Unwind_Resume(a1);
}

void sub_1000E609C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  [WeakRetained blockWithHandle:*(a1 + 32)];
  v2 = [WeakRetained frontmostCall];
  v3 = [*(a1 + 40) features];
  v4 = [v3 lvm_endCallImmediately];

  if (v4)
  {
    [*(a1 + 48) releaseAssertion];
  }

  else if (v2)
  {
    v5 = *(a1 + 32);
    v6 = [v2 handle];

    if (v5 == v6)
    {
      v7 = [WeakRetained callCenter];
      [v7 disconnectCall:v2 withReason:2];
    }
  }
}

void sub_1000E6178(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v2 = [WeakRetained frontmostCall];
  v3 = [*(a1 + 32) features];
  v4 = [v3 lvm_endCallImmediately];

  if (v4)
  {
    [*(a1 + 40) releaseAssertion];
  }

  else if (v2)
  {
    v5 = *(a1 + 48);
    v6 = [v2 handle];

    if (v5 == v6)
    {
      v7 = [WeakRetained callCenter];
      [v7 disconnectCall:v2 withReason:2];
    }
  }
}

void sub_1000E7868(uint64_t a1)
{
  if (*(a1 + 40))
  {
    v1 = 0.0;
  }

  else
  {
    v1 = 1.0;
  }

  v2 = [*(a1 + 32) currentMiddleView];
  [v2 setAlpha:v1];
}

void sub_1000E8608(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained revealAudioRoutingDeviceListAnimated:1];
    WeakRetained = v2;
  }
}

void sub_1000E8894(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_1000E88B0(uint64_t a1)
{
  v2 = objc_loadWeakRetained((a1 + 32));
  v1 = [v2 bottomBar];
  [v2 _testing_finishedAnimatingToActiveCallState:v1];
}

void sub_1000E9C10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location, char a17)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a17, 8);
  _Unwind_Resume(a1);
}

void sub_1000E9C40(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    *(*(*(a1 + 32) + 8) + 24) = *(*(*(a1 + 32) + 8) + 24) + -1.0;
    if (*(*(*(a1 + 32) + 8) + 24) <= 0.0)
    {
      v4 = [WeakRetained alertCountDownTimer];
      [v4 invalidate];

      v5 = sub_100004F84();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *v8 = 0;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "alertCountDownTimer invalidated, triggering alert", v8, 2u);
      }

      [v3 setAlertTriggeredByAutoCountdown:1];
      v6 = objc_loadWeakRetained((a1 + 40));
      v7 = [v6 bottomBar];
      [v3 bottomBarActionPerformed:38 withCompletionState:1 fromBar:v7];

      [v3 setAlertTriggeredByAutoCountdown:0];
    }
  }
}

void sub_1000EA700(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000EA724(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained audioCallControlsViewControllerDidTapVideoStreamingButton];
}

void sub_1000EAB4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id sub_1000EAB68(uint64_t a1)
{
  v2 = [*(a1 + 32) confirmationTimeoutTimer];
  v3 = [v2 isValid];

  if (v3)
  {
    v4 = [*(a1 + 32) confirmationTimeoutTimer];
    [v4 invalidate];

    [*(a1 + 32) setConfirmationTimeoutTimer:0];
  }

  v5 = *(a1 + 32);

  return [v5 resumeCallBufferTimer];
}

void sub_1000EABE8(uint64_t a1)
{
  v2 = [*(a1 + 32) confirmationTimeoutTimer];
  v3 = [v2 isValid];

  if (v3)
  {
    v4 = [*(a1 + 32) confirmationTimeoutTimer];
    [v4 invalidate];

    [*(a1 + 32) setConfirmationTimeoutTimer:0];
  }

  [*(a1 + 32) stopCallBufferTimer];
  v5 = [*(a1 + 32) bufferSingleCallLabelView];

  if (v5)
  {
    v6 = [*(a1 + 32) bufferSingleCallLabelView];
    [v6 setAlpha:0.0];

    [*(a1 + 32) setBufferSingleCallLabelView:0];
  }

  [*(a1 + 32) stopMessagePlayback];
  +[PHSOSViewController releaseAllCallBufferDismissalAssertions];
  v10 = @"PHCallBufferCompletionReasonKey";
  v7 = [NSNumber numberWithInteger:1];
  v11 = v7;
  v8 = [NSDictionary dictionaryWithObjects:&v11 forKeys:&v10 count:1];

  v9 = +[NSNotificationCenter defaultCenter];
  [v9 postNotificationName:@"PHCallBufferCompletionNotification" object:0 userInfo:v8];
}

void sub_1000EAD68(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000EAE24;
  v5[3] = &unk_100356F60;
  objc_copyWeak(&v6, (a1 + 40));
  [v4 dismissViewControllerAnimated:1 completion:v5];
  objc_destroyWeak(&v6);
}

void sub_1000EAE24(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained restartCallBufferTimer];
}

void sub_1000EB170(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  objc_destroyWeak((v8 + 40));
  _Block_object_dispose(va, 8);
  objc_destroyWeak((v9 - 40));
  _Unwind_Resume(a1);
}

void sub_1000EB198(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    if (([WeakRetained shouldPauseSOSCallBufferTimer] & 1) == 0 && !--*(*(*(a1 + 32) + 8) + 24))
    {
      v4 = [v3 callBufferTimer];
      [v4 invalidate];

      [v3 setCallBufferTimer:0];
      v5 = [v3 bufferSingleCallLabelView];

      if (v5)
      {
        v6 = [v3 bufferSingleCallLabelView];
        [v6 setAlpha:0.0];

        [v3 setBufferSingleCallLabelView:0];
      }

      [v3 stopMessagePlayback];
      v10 = @"PHCallBufferCompletionReasonKey";
      v7 = [NSNumber numberWithInteger:0];
      v11 = v7;
      v8 = [NSDictionary dictionaryWithObjects:&v11 forKeys:&v10 count:1];

      v9 = +[NSNotificationCenter defaultCenter];
      [v9 postNotificationName:@"PHCallBufferCompletionNotification" object:0 userInfo:v8];
    }
  }
}

void sub_1000EBE58(uint64_t a1)
{
  v1 = [*(a1 + 32) trailingPanelCoveringView];
  [v1 setAlpha:1.0];
}

void sub_1000EBFD4(uint64_t a1)
{
  v1 = [*(a1 + 32) trailingPanelCoveringView];
  [v1 setAlpha:0.0];
}

void sub_1000EC01C(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) trailingPanelCoveringView];
  [v3 setHidden:a2];
}

void sub_1000EC390(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000EC3B8(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    [WeakRetained updateTranslationBackgroundView:a2];
    WeakRetained = v4;
  }
}

id sub_1000EDC00(unint64_t a1)
{
  if (a1 <= 6)
  {
    if (((1 << a1) & 0x1E) != 0)
    {
      v1 = +[NSSet set];
    }

    else
    {
      v4[0] = STBackgroundActivityIdentifierCallRinging;
      v4[1] = STBackgroundActivityIdentifierInCall;
      v4[2] = STBackgroundActivityIdentifierVideoConferenceRinging;
      v4[3] = STBackgroundActivityIdentifierInVideoConference;
      v4[4] = STBackgroundActivityIdentifierSharePlay;
      v4[5] = STBackgroundActivityIdentifierSharePlayScreenSharing;
      v4[6] = STBackgroundActivityIdentifierIdlePushToTalkCall;
      v4[7] = STBackgroundActivityIdentifierActivePushToTalkCall;
      v4[8] = STBackgroundActivityIdentifierRecording;
      v4[9] = STBackgroundActivityIdentifierCallHandoff;
      v4[10] = STBackgroundActivityIdentifierVideoConferenceHandoff;
      v4[11] = STBackgroundActivityIdentifierSharePlayInactive;
      v4[12] = STBackgroundActivityIdentifierCallScreening;
      v4[13] = STBackgroundActivityIdentifierInCallRecording;
      v2 = [NSArray arrayWithObjects:v4 count:14];
      v1 = [NSSet setWithArray:v2];
    }
  }

  return v1;
}

void sub_1000EFABC(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) multiwayViewController];
  [v3 setFrontBoardInterfaceOrientation:v2];

  v4 = [*(a1 + 32) multiwayViewController];
  LODWORD(v3) = [v4 wantsPIPRotationForLocalPreview];

  if (v3)
  {
    [*(a1 + 32) rotatePIPForInterfaceOrientation:*(a1 + 48)];
  }

  v5 = +[PHPIPController defaultPIPController];
  [v5 updatePIPSize];

  v6 = +[PHPIPController defaultPIPController];
  [v6 updatePIPFrame];
}

void sub_1000EFCD4(uint64_t a1)
{
  v1 = [*(a1 + 32) multiwayViewController];
  [v1 pipDidRotate];
}

void sub_1000F09A4(uint64_t a1)
{
  [*(a1 + 32) dismissInCallPresentationWithDismissalBlock:&stru_100359498];
  v4 = [ICSApplicationDelegate configurationForCall:*(a1 + 40) preferredPresentationMode:0];
  v2 = +[UIApplication sharedApplication];
  v3 = [v2 delegate];
  [v3 performPresentationWithConfiguration:v4 forSceneType:0];
}

void sub_1000F0A40(id a1)
{
  v2 = +[UIApplication sharedApplication];
  v1 = [v2 delegate];
  [v1 dismissInCallSceneSession];
}

BOOL sub_1000F2288(id a1, TUCall *a2)
{
  v2 = a2;
  if ([(TUCall *)v2 status]== 4 && [(TUCall *)v2 shouldSuppressInCallUI])
  {
    v3 = [(TUCall *)v2 isVideo]^ 1;
  }

  else
  {
    LOBYTE(v3) = 0;
  }

  return v3;
}

uint64_t sub_1000F22E0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) activeConversationForCall:v3];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 mergedRemoteMembers];
    if ([v6 count] == 1)
    {
      v7 = [v5 mergedActiveRemoteParticipants];
      v8 = [v7 count] > 1;
    }

    else
    {
      v8 = 1;
    }

    v12 = [*(a1 + 40) featureFlags];
    if ([v12 oneToOneFaceTimeMyselfEnabled] && objc_msgSend(v5, "isOneToOneFaceTimeMyself"))
    {
      v13 = [v3 isVideo];

      v8 &= v13;
    }

    else
    {
    }

    if ([v3 status] != 4)
    {
      v11 = ([v3 status] != 5) & v8;
      goto LABEL_18;
    }

    goto LABEL_14;
  }

  if (([v3 isVideo] & 1) != 0 || objc_msgSend(v3, "status") != 3)
  {
LABEL_14:
    v11 = 0;
    goto LABEL_18;
  }

  v9 = [v3 provider];
  if ([v9 isFaceTimeProvider])
  {
    v10 = [v3 remoteParticipantHandles];
    v11 = [v10 count] > 1;
  }

  else
  {
    v11 = 0;
  }

LABEL_18:
  return v11;
}

id sub_1000F2978(uint64_t a1)
{
  v2 = sub_100004F84();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "InCallRootViewController dismissed mini window", v4, 2u);
  }

  [*(a1 + 32) updateShouldBecomeVisibleWhenWakingDisplay];
  return [*(a1 + 32) setCoverViewController:0];
}

void sub_1000F3200(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 152));
  _Unwind_Resume(a1);
}

void sub_1000F3284(uint64_t a1)
{
  v2 = [*(a1 + 32) contactIdentifiers];
  v7 = [v2 firstObject];

  v3 = [NSString stringWithFormat:@"mobilephone-contacts://show?id=%@", v7];
  v4 = [[NSURL alloc] initWithString:v3];
  v5 = +[LSApplicationWorkspace defaultWorkspace];
  [v5 openSensitiveURL:v4 withOptions:0];

  [PHInCallRootViewController releaseDismissalAssertionForReason:@"PHFailureAlertShowingAssertionReason"];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setFailureAlertController:0];
}

void sub_1000F3380(uint64_t a1)
{
  v2 = +[LSApplicationWorkspace defaultWorkspace];
  [v2 openApplicationWithBundleID:@"com.apple.facetime"];

  [PHInCallRootViewController releaseDismissalAssertionForReason:@"PHFailureAlertShowingAssertionReason"];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setFailureAlertController:0];
}

void sub_1000F340C(uint64_t a1)
{
  v2 = objc_alloc_init(NSURLComponents);
  [v2 setScheme:@"itms-apps"];
  v3 = [NSURLQueryItem queryItemWithName:@"bundleIdentifier" value:@"com.apple.facetime"];
  v8 = v3;
  v4 = [NSArray arrayWithObjects:&v8 count:1];
  [v2 setQueryItems:v4];

  v5 = [v2 URL];
  v6 = +[LSApplicationWorkspace defaultWorkspace];
  [v6 openURL:v5 withOptions:0];

  [PHInCallRootViewController releaseDismissalAssertionForReason:@"PHFailureAlertShowingAssertionReason"];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setFailureAlertController:0];
}

void sub_1000F3550(uint64_t a1)
{
  v5 = [NSString stringWithFormat:@"https://support.apple.com/102405?cid=mc-ols-learnmore-article_102405-ipados_UI-07092025"];
  v2 = [[NSURL alloc] initWithString:v5];
  v3 = +[LSApplicationWorkspace defaultWorkspace];
  [v3 openURL:v2 withOptions:0];

  [PHInCallRootViewController releaseDismissalAssertionForReason:@"PHFailureAlertShowingAssertionReason"];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setFailureAlertController:0];
}

void sub_1000F3620(uint64_t a1)
{
  v2 = sub_100004F84();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Removing failure alert controller", v4, 2u);
  }

  [PHInCallRootViewController releaseDismissalAssertionForReason:@"PHFailureAlertShowingAssertionReason"];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setFailureAlertController:0];
}

void sub_1000F36BC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1 failureAlertController];
  [v1 presentViewController:v2 animated:1 completion:0];
}

void sub_1000F39EC(uint64_t a1)
{
  v2 = [*(a1 + 32) view];
  v3 = [v2 window];

  v4 = sub_100004F84();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = 138412546;
    v7 = v5;
    v8 = 2112;
    v9 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Completed transition to %@. Presented in window %@.", &v6, 0x16u);
  }
}

void sub_1000F3DFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t sub_1000F3E20(uint64_t result, int a2)
{
  if (a2)
  {
    v2 = result;
    [*(result + 32) removeFromParentViewController];
    v3 = [*(v2 + 32) view];
    [v3 removeFromSuperview];

    v4 = *(v2 + 40);
    WeakRetained = objc_loadWeakRetained((v2 + 56));
    [v4 didMoveToParentViewController:WeakRetained];

    result = *(v2 + 48);
    if (result)
    {
      v6 = *(result + 16);

      return v6();
    }
  }

  return result;
}

void sub_1000F46B8(id a1)
{
  v1 = +[PHInCallUtilities sharedInstance];
  [v1 stopSuppressingInCallStatusBarForReason:@"PHSuppressInCallStatusBarForDialReason"];

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, TUCallCenterInCallServiceDidAppearNotification, 0, 0, 1u);
  v3 = sub_100004F84();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "TUCallCenterInCallServiceDidAppearNotification: Posted in ", v4, 2u);
  }
}

void sub_1000F4BA8(uint64_t a1)
{
  v1 = [*(a1 + 32) inCallWindowScene];
  [v1 requestTransitionToPresentationMode:2 shouldDismissCMASAlerts:0];
}

void sub_1000F4D98(id a1)
{
  v1 = +[UIApplication sharedApplication];
  v2 = [v1 delegate];
  [v2 dismissInCallSceneSession];

  v4 = +[UIApplication sharedApplication];
  v3 = [v4 delegate];
  [v3 dismissScreenSharingSceneSession];
}

void sub_1000F4E28(uint64_t a1)
{
  v1 = [*(a1 + 32) _remoteViewControllerProxy];
  [v1 dismiss];
}

void sub_1000F5298(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained prepareForDismissal];
  v1 = +[UIApplication sharedApplication];
  v2 = [v1 delegate];
  [v2 hideCarPlayUI];
}

void sub_1000F530C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained prepareForDismissal];
  v1 = +[UIApplication sharedApplication];
  v2 = [v1 delegate];
  [v2 hideCarPlayUI];
}

void sub_1000F5798(uint64_t a1)
{
  v1 = [*(a1 + 32) view];
  [v1 setAlpha:1.0];
}

void sub_1000F59B8(uint64_t a1)
{
  [*(a1 + 32) setTemporarilyAllowAllStatusBarPills:1];
  v1 = +[PHInCallUtilities sharedInstance];
  [v1 setRequestedVCPresentationWithStatusBar:0 withReasonLog:@"Completed presentation of contacts with full screen people picker"];
}

id sub_1000F5D20(uint64_t a1)
{
  [*(a1 + 32) setTemporarilyAllowAllStatusBarPills:1];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);

  return [v2 setScreenTimeHostViewController:v3];
}

void sub_1000F5D60(uint64_t a1)
{
  v1 = [*(a1 + 32) view];
  [v1 setAlpha:1.0];
}

id sub_1000F5DA8(uint64_t a1)
{
  v2 = [*(a1 + 32) screenTimeHostViewController];
  [v2 dismissAlert];

  [*(a1 + 32) setScreenTimeHostViewController:0];
  v3 = *(a1 + 32);

  return [v3 setFilteredRequest:0];
}

uint64_t sub_1000F5E04(uint64_t a1)
{
  [*(a1 + 32) setTemporarilyAllowAllStatusBarPills:0];
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

void sub_1000F5E4C(uint64_t a1)
{
  v2 = [*(a1 + 32) screenTimeHostViewController];
  v1 = [v2 view];
  [v1 setAlpha:0.0];
}

uint64_t sub_1000F5EAC(uint64_t result, int a2)
{
  if (a2)
  {
    v2 = result;
    v3 = [*(result + 32) screenTimeHostViewController];
    [v3 removeFromParentViewController];

    v4 = [*(v2 + 32) screenTimeHostViewController];
    v5 = [v4 view];
    [v5 removeFromSuperview];

    v6 = *(*(v2 + 40) + 16);

    return v6();
  }

  return result;
}

uint64_t sub_1000F64E8(uint64_t a1)
{
  v2 = sub_100004F84();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 48);
    v7 = 67109120;
    v8 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "dismissed contactsVC animated %d (before updateDesiredSpringboardBehavior)", &v7, 8u);
  }

  [*(a1 + 32) setContactsViewController:0];
  [*(a1 + 32) updateDesiredSpringboardBehavior];
  v4 = sub_100004F84();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 48);
    v7 = 67109120;
    v8 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "dismissed contactsVC Animated %d (after updateDesiredSpringboardBehavior)", &v7, 8u);
  }

  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t sub_1000F6610(uint64_t a1)
{
  [*(a1 + 32) setTemporarilyAllowAllStatusBarPills:0];
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

uint64_t sub_1000F67B4(uint64_t a1)
{
  v2 = sub_100004F84();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "dismissed contact details (before updateDesiredSpringboardBehavior)", buf, 2u);
  }

  [*(a1 + 32) updateDesiredSpringboardBehavior];
  v3 = sub_100004F84();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "dismissed contact details (after updateDesiredSpringboardBehavior)", v5, 2u);
  }

  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t sub_1000F70EC(uint64_t a1)
{
  v2 = sub_100004F84();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "prepareForDeviceLock completed with dismissal", v4, 2u);
  }

  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_1000F73A4(uint64_t a1)
{
  v2 = sub_100004F84();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "dismissed sensitive view controller: phoneRemoteVC", v3, 2u);
  }

  dispatch_group_leave(*(a1 + 32));
}

void sub_1000F7418(uint64_t a1)
{
  v2 = sub_100004F84();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "dismissed sensitive view controller: contactsVC", v3, 2u);
  }

  dispatch_group_leave(*(a1 + 32));
}

void sub_1000F748C(uint64_t a1)
{
  v2 = sub_100004F84();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "dismissed sensitive view controller: contact details", v3, 2u);
  }

  dispatch_group_leave(*(a1 + 32));
}

uint64_t sub_1000F7500(uint64_t a1)
{
  v2 = sub_100004F84();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "dismiss sensitive view controllers: completed", v4, 2u);
  }

  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_1000F7D18(uint64_t a1)
{
  v2 = sub_100004F84();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) videoCallNavigationController];
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Completed transition to %@", &v5, 0xCu);
  }

  v4 = +[PHPIPController defaultPIPController];
  [v4 updatePIPSize];
}

void sub_1000F8358(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = sub_100004F84();
  v8 = v7;
  if (!v5 || v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_100256768();
    }

    v23 = +[PHInCallUtilities sharedInstance];
    [v23 setRequestedVCPresentationWithStatusBar:0 withReasonLog:@"Error occured when requesting view controller"];
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v26 = v5;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Presenting remote host view controller: %@", buf, 0xCu);
    }

    [*(a1 + 32) setRemoteHostViewController:v5];
    v9 = *(a1 + 32);
    v10 = [v9 remoteHostViewController];
    [v10 setDelegate:v9];

    v11 = *(a1 + 32);
    v12 = [v11 remoteHostViewController];
    v13 = [v12 remoteViewController];
    [v13 setDelegate:v11];

    v14 = *(a1 + 32);
    v15 = [v14 remoteHostViewController];
    v16 = [v15 remoteViewController];
    [v16 setBackgroundStyleDelegate:v14];

    v17 = +[PHUIConfiguration shouldUseFullScreenPeoplePicker];
    v18 = *(a1 + 32);
    if (v17)
    {
      v19 = v18;
      v20 = [*(a1 + 32) presentedViewController];

      if (v20)
      {
        v21 = [*(a1 + 32) presentedViewController];

        v19 = v21;
      }

      v22 = [*(a1 + 32) remoteHostViewController];
      v24[0] = _NSConcreteStackBlock;
      v24[1] = 3221225472;
      v24[2] = sub_1000F8604;
      v24[3] = &unk_100356988;
      v24[4] = *(a1 + 32);
      [v19 presentViewController:v22 animated:1 completion:v24];
    }

    else
    {
      v19 = [*(a1 + 32) remoteHostViewController];
      [v18 presentAsPopover:v19 fromView:*(a1 + 40) completion:0];
    }

    [*(a1 + 32) updateDesiredSpringboardBehavior];
  }
}

void sub_1000F8604(uint64_t a1)
{
  [*(a1 + 32) setTemporarilyAllowAllStatusBarPills:1];
  v1 = +[PHInCallUtilities sharedInstance];
  [v1 setRequestedVCPresentationWithStatusBar:0 withReasonLog:@"Completed presenting view controller with full screen people picker"];
}

uint64_t sub_1000F8858(uint64_t a1)
{
  v2 = sub_100004F84();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 48);
    v7 = 67109120;
    v8 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "dismissed phoneRemoteVC animated %d (before updateDesiredSpringboardBehavior)", &v7, 8u);
  }

  [*(a1 + 32) setRemoteHostViewController:0];
  [*(a1 + 32) updateDesiredSpringboardBehavior];
  v4 = sub_100004F84();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 48);
    v7 = 67109120;
    v8 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "dismissed phoneRemoteVC animated %d (after updateDesiredSpringboardBehavior)", &v7, 8u);
  }

  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t sub_1000F8980(uint64_t a1)
{
  [*(a1 + 32) setTemporarilyAllowAllStatusBarPills:0];
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

void sub_1000FA8A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location)
{
  objc_destroyWeak((v23 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000FA8D0(uint64_t a1)
{
  v2 = sub_100004F84();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "will allowDeviceToLock", buf, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_1000FAA0C;
    v5[3] = &unk_100356D38;
    v6 = *(a1 + 32);
    [WeakRetained prepareForDeviceLockWithCompletion:v5];
    v4 = v6;
  }

  else
  {
    (*(*(a1 + 32) + 16))();
    v4 = sub_100004F84();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "did allowDeviceToLock (root VC deallocated)", buf, 2u);
    }
  }
}

void sub_1000FAA0C(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v1 = sub_100004F84();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "did allowDeviceToLock (after prepareForDeviceLock)", v2, 2u);
  }
}

uint64_t sub_1000FAA88(uint64_t a1)
{
  v2 = sub_100004F84();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Transition complete for view controller with sensitive information. Allowing device to lock now.", v4, 2u);
  }

  return (*(*(a1 + 32) + 16))();
}

BOOL sub_1000FB958(id a1, TUCall *a2)
{
  v2 = a2;
  v3 = [(TUCall *)v2 provider];
  if ([v3 isFaceTimeProvider])
  {
    v4 = [(TUCall *)v2 status]== 1 || [(TUCall *)v2 status]== 4;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void sub_1000FBF0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, id a28)
{
  objc_destroyWeak((v28 + 48));
  objc_destroyWeak(&a28);
  objc_destroyWeak((v29 - 112));
  _Unwind_Resume(a1);
}

void sub_1000FBF4C(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_copyWeak(&to, (a1 + 48));
  v4 = [*(a1 + 32) handle];
  if (v4)
  {
    v5 = objc_loadWeakRetained(&to);
    [v5 blockWithHandle:v4];
  }

  (*(*(a1 + 40) + 16))();

  objc_destroyWeak(&to);
}

void sub_1000FBFF4(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_copyWeak(&to, (a1 + 48));
  v4 = [*(a1 + 32) handle];
  if (v4)
  {
    v5 = objc_loadWeakRetained(&to);
    [v5 blockWithHandle:v4];

    v6 = objc_loadWeakRetained(&to);
    [v6 reportWithCall:*(a1 + 32)];
  }

  (*(*(a1 + 40) + 16))();

  objc_destroyWeak(&to);
}

void sub_1000FC38C(uint64_t a1)
{
  v1 = [*(a1 + 32) multiwayViewController];
  [v1 pipDidRotate];
}

BOOL sub_1000FDD74(id a1, TUCall *a2)
{
  v2 = [(TUCall *)a2 remoteParticipantHandles];
  v3 = [v2 count] > 1;

  return v3;
}

void sub_1000FE350(uint64_t a1)
{
  v1 = [*(a1 + 32) inCallWindowScene];
  [v1 requestTransitionToPresentationMode:2 shouldDismissCMASAlerts:0 analyticsSource:SBSUIInCallTransitionAnalyticsSourceBannerTap];
}

id sub_1000FFD68()
{
  v0 = sub_100004F84();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138412290;
    v5 = @"PHMulitwayCallAssertionReason";
    _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_DEFAULT, "Releasing %@ since the call has ended with no bottom controls showing", &v4, 0xCu);
  }

  v1 = +[UIApplication sharedApplication];
  v2 = [v1 delegate];
  [v2 setMostRecentlyDisconnectedVideoCall:0];

  return [objc_opt_class() releaseDismissalAssertionForReason:@"PHMulitwayCallAssertionReason"];
}

id sub_10010148C(uint64_t a1)
{
  v2 = sub_100004F84();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "BottomBar: Ending active or held call and answering incoming video call %@", &v5, 0xCu);
  }

  return [*(a1 + 40) endActiveOrHeldAndAnswerCall:*(a1 + 32)];
}

id *sub_10010153C(id *result, int a2)
{
  if (a2)
  {
    v2 = result;
    v3 = sub_100004F84();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v5[0] = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "SpamReport: releasing assertions from block and report caller", v5, 2u);
    }

    v4 = [v2[4] multiwayViewController];
    [v4 setIsInCallEndedBlockAndReportFlow:0];

    [PHInCallRootViewController releaseDismissalAssertionForReason:@"PHCallEndedBlockAndReportInProgressAssertionReason"];
    return [PHInCallRootViewController releaseDismissalAssertionForReason:@"PHMulitwayCallAssertionReason"];
  }

  return result;
}

id *sub_1001015F0(id *result, int a2)
{
  if (a2)
  {
    v2 = result;
    v3 = sub_100004F84();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v5[0] = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "SpamReport: releasing assertions from disconnectedCall block and report caller", v5, 2u);
    }

    v4 = [v2[4] multiwayViewController];
    [v4 setIsInCallEndedBlockAndReportFlow:0];

    [PHInCallRootViewController releaseDismissalAssertionForReason:@"PHCallEndedBlockAndReportInProgressAssertionReason"];
    return [PHInCallRootViewController releaseDismissalAssertionForReason:@"PHMulitwayCallAssertionReason"];
  }

  return result;
}

id sub_100101C20(uint64_t a1)
{
  result = [*(a1 + 32) currentAudioAndVideoCallCount];
  v3 = result;
  if (*(a1 + 40))
  {
    v4 = sub_100004F84();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Disconnecting incoming video call due to lock button", buf, 2u);
    }

    [*(a1 + 32) disconnectCall:*(a1 + 40) withReason:2];
    result = +[PHInCallRootViewController setShouldForceDismiss];
  }

  else if (*(a1 + 48))
  {
    v5 = sub_100004F84();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Disconnecting active video call due to lock button", v8, 2u);
    }

    result = [*(a1 + 32) disconnectCall:*(a1 + 48)];
  }

  if (v3 <= 1)
  {
    v6 = sub_100004F84();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "... and requesting lock on next dismiss", v7, 2u);
    }

    return +[PHInCallRootViewController setShouldLockDeviceOnNextDismiss];
  }

  return result;
}

void sub_100101D80(id a1)
{
  v1 = [NSSet setWithObject:@"PHMulitwayCallAssertionReason"];
  [PHInCallRootViewController releaseDismissalAssertionReasons:v1];
}

id sub_100101F78(uint64_t a1)
{
  v2 = sub_100004F84();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "UserFeedbackScore : Releasing Assertion", v4, 2u);
  }

  [PHInCallRootViewController releaseDismissalAssertionForReason:@"PHUserScoreShowingAssertionReason"];
  return [*(a1 + 32) setUserFeedbackViewController:0];
}

void sub_100103850(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = [a2 intValue];
  v7 = *(a1 + 48) * (a3 + 1);
  *&v7 = v7;
  v8 = [v5 buttonForButtonType:v6 createIfNecessary:1 createWithHorizontalPositionFraction:v7];
  [*(a1 + 40) addObject:v8];
}

id sub_1001038DC(id *a1)
{
  v2 = 1.0 / ([a1[4] count] + 1);
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v3 = a1[4];
  v4 = [v3 countByEnumeratingWithState:&v42 objects:v49 count:16];
  if (v4)
  {
    v6 = v4;
    v7 = *v43;
    v8 = v2;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v43 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v10 = *(*(&v42 + 1) + 8 * i);
        *&v5 = v8;
        [a1[5] applyHorizontalPositioningConstraintWithFraction:v10 forButton:v5];
        [v10 setAlpha:1.0];
        v8 = v2 + v8;
      }

      v6 = [v3 countByEnumeratingWithState:&v42 objects:v49 count:16];
    }

    while (v6);
  }

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v11 = a1[6];
  v12 = [v11 countByEnumeratingWithState:&v38 objects:v48 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v39;
    do
    {
      for (j = 0; j != v13; j = j + 1)
      {
        if (*v39 != v14)
        {
          objc_enumerationMutation(v11);
        }

        [*(*(&v38 + 1) + 8 * j) setAlpha:0.0];
      }

      v13 = [v11 countByEnumeratingWithState:&v38 objects:v48 count:16];
    }

    while (v13);
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v16 = [a1[5] buttonDividerViews];
  v17 = [v16 countByEnumeratingWithState:&v34 objects:v47 count:16];
  if (v17)
  {
    v19 = v17;
    v20 = v2 + (v2 * 0.5);
    v21 = *v35;
    do
    {
      for (k = 0; k != v19; k = k + 1)
      {
        if (*v35 != v21)
        {
          objc_enumerationMutation(v16);
        }

        v23 = *(*(&v34 + 1) + 8 * k);
        *&v18 = v20;
        [a1[5] applyHorizontalPositioningConstraintWithFraction:v23 forDividerView:v18];
        [v23 setAlpha:1.0];
        v20 = v2 + v20;
      }

      v19 = [v16 countByEnumeratingWithState:&v34 objects:v47 count:16];
    }

    while (v19);
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v24 = a1[7];
  v25 = [v24 countByEnumeratingWithState:&v30 objects:v46 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v31;
    do
    {
      for (m = 0; m != v26; m = m + 1)
      {
        if (*v31 != v27)
        {
          objc_enumerationMutation(v24);
        }

        [*(*(&v30 + 1) + 8 * m) setAlpha:{0.0, v30}];
      }

      v26 = [v24 countByEnumeratingWithState:&v30 objects:v46 count:16];
    }

    while (v26);
  }

  [a1[5] setNeedsLayout];
  return [a1[5] layoutIfNeeded];
}

_DWORD *sub_100103BFC(_DWORD *result, int a2)
{
  if (a2)
  {
    v2 = result;
    v3 = result[14];
    result = *(result + 4);
    if (v3 == result[2])
    {
      [result removeButtons:*(v2 + 5)];
      v4 = *(v2 + 6);

      return [v4 makeObjectsPerformSelector:"removeFromSuperview"];
    }
  }

  return result;
}

void sub_100104D44(uint64_t a1)
{
  v2 = sub_100004F84();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) isViewLoaded];
    v4 = [*(a1 + 32) view];
    v5 = [v4 window];
    v10 = 67109378;
    LODWORD(v11[0]) = v3;
    WORD2(v11[0]) = 2112;
    *(v11 + 6) = v5;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Inside block: self.isViewLoaded: %d, self.view.window: %@", &v10, 0x12u);
  }

  if ([*(a1 + 32) isViewLoaded])
  {
    v6 = [*(a1 + 32) view];
    v7 = [v6 window];

    if (v7)
    {
      v8 = sub_100004F84();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v10 = 138412290;
        v11[0] = @"PHSuppressInCallStatusBarForFullscreenUIReason";
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "remove status bar suppression %@", &v10, 0xCu);
      }

      v9 = +[PHInCallUtilities sharedInstance];
      [v9 stopSuppressingInCallStatusBarForReason:@"PHSuppressInCallStatusBarForFullscreenUIReason"];
    }
  }
}

void sub_1001058E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100105904(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _stealViewControllerFromPIP];
    WeakRetained = v2;
  }
}

void sub_1001059FC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_100105A20(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _handlePiPEndedAndShouldBePresentedFullScreen:1 transitionIsComplete:a2 viewControllerToSteal:v7];
  }
}

void sub_100105DA0(uint64_t a1)
{
  v1 = [*(a1 + 32) callDisplayStyleManager];
  v2 = [v1 sceneType];

  v6 = +[UIApplication sharedApplication];
  v3 = [v6 delegate];
  v4 = [v3 sceneManager];
  v5 = [v4 sceneOfType:v2];
  [v5 requestTransitionToPresentationMode:2 shouldDismissCMASAlerts:0];
}

void sub_100106718(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001067F0;
  block[3] = &unk_100357318;
  v10 = v5;
  v11 = *(a1 + 32);
  v12 = v6;
  v7 = v6;
  v8 = v5;
  dispatch_async(&_dispatch_main_q, block);
}

void sub_1001067F0(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = sub_100004F84();
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      *buf = 138412290;
      v11 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Fetched user activity: %@ - requesting handoff", buf, 0xCu);
    }

    v6 = +[TUCallCenter sharedInstance];
    v7 = [*(a1 + 32) userInfo];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100106974;
    v8[3] = &unk_1003569B0;
    v9 = *(a1 + 40);
    [v6 pullCallFromClientUsingHandoffActivityUserInfo:v7 completion:v8];
  }

  else
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_100256AC0();
    }

    [PHInCallRootViewController releaseDismissalAssertionForReason:@"PHDismissalReasonWaitingForHandoff"];
  }
}

id sub_100106974(uint64_t a1, int a2)
{
  v4 = sub_100004F84();
  v5 = v4;
  if (a2)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 32);
      v8 = 138412290;
      v9 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Completed handoff request successfully for %@", &v8, 0xCu);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_100256B38();
  }

  return [PHInCallRootViewController releaseDismissalAssertionForReason:@"PHDismissalReasonWaitingForHandoff"];
}

void sub_100107AB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100107AD8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    [WeakRetained removePIPPlaceholderView];
    v2 = [v4 pipController];
    v3 = [v2 viewControllerToRestoreWhenCancellingPIP];

    [v4 _handlePiPEndedAndShouldBePresentedFullScreen:0 transitionIsComplete:1 viewControllerToSteal:v3];
    WeakRetained = v4;
  }
}

void sub_100108BD8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location)
{
  objc_destroyWeak((v22 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100108C14(uint64_t a1)
{
  v2 = objc_loadWeakRetained((a1 + 32));
  v3 = [v2 replyWithMessageStore];
  v4 = [v3 cannedRepliesForSending];
  v5 = [v4 objectAtIndex:*(a1 + 40)];
  [v2 sendDeclineWithMessageResponse:v5];

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained declineCall];
}

void sub_100108CCC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained showCustomReplyWithMessageComposer];
}

void sub_100108DCC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

id sub_100108DE8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained incomingCall];
  [v3 suppressRingtone];

  v4 = objc_loadWeakRetained((a1 + 32));
  v5 = [v4 declineMessageMenu];

  return v5;
}

void sub_100109CE0(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = [*(a1 + 32) recipientHandle];
    v4 = [v3 personHandle];

    v5 = [[INPerson alloc] initWithPersonHandle:v4 nameComponents:0 displayName:0 image:0 contactIdentifier:0 customIdentifier:0];
    v6 = [INSendMessageIntent alloc];
    v30 = v5;
    v7 = [NSArray arrayWithObjects:&v30 count:1];
    v8 = [v6 initWithRecipients:v7 content:0 groupName:0 serviceName:0 sender:0];

    v9 = [[INInteraction alloc] initWithIntent:v8 response:0];
    [v9 setDirection:1];
    v10 = [NSUserActivity alloc];
    v11 = [v10 initWithActivityType:PHSendMessageIntentType];
    [v11 _setInteraction:v9 donate:0];
    v12 = [*(a1 + 32) incomingCall];
    v13 = [v12 provider];
    v14 = [v13 bundleIdentifier];

    v15 = [LSApplicationProxy applicationProxyForIdentifier:v14];
    v28 = FBSOpenApplicationOptionKeyUnlockDevice;
    v29 = &__kCFBooleanTrue;
    v16 = [NSDictionary dictionaryWithObjects:&v29 forKeys:&v28 count:1];
    v17 = sub_100004F84();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v25 = v11;
      v26 = 2112;
      v27 = v14;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Opening user activity %@ for bundle identifier %@", buf, 0x16u);
    }

    v18 = +[LSApplicationWorkspace defaultWorkspace];
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_100109FE0;
    v21[3] = &unk_1003590E8;
    v22 = v11;
    v23 = v15;
    v19 = v15;
    v20 = v11;
    [v18 openUserActivity:v20 withApplicationProxy:v19 options:v16 completionHandler:v21];
  }
}

void sub_100109FE0(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = sub_100004F84();
  v7 = v6;
  if (a2)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      v9 = *(a1 + 40);
      v10 = 138412546;
      v11 = v8;
      v12 = 2112;
      v13 = v9;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Successfully opened user activity %@ for application %@", &v10, 0x16u);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    sub_100256D50(a1, v5, v7);
  }
}

void sub_10010A88C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = sub_100004F84();
  v8 = v7;
  if (!v5 || v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_100256E34();
    }
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      *&buf[4] = v5;
      *&buf[12] = 2112;
      *&buf[14] = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Launched extension with requestIdentifier: %@ error: %@", buf, 0x16u);
    }

    v8 = [*(a1 + 32) _extensionContextForUUID:v5];
    v9 = [v8 _auxiliaryConnection];
    v10 = v9;
    memset(buf, 0, 32);
    if (v9)
    {
      [v9 auditToken];
    }

    v11 = *(a1 + 40);
    v12 = [*(a1 + 32) _extensionBundle];
    *v20 = *buf;
    v21 = *&buf[16];
    [v11 trimDataAgainstTCCForAuditToken:v20 bundle:v12];

    v13 = [v10 remoteObjectProxyWithErrorHandler:&stru_1003599A0];
    v14 = *(a1 + 40);
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_10010AB34;
    v18[3] = &unk_1003599C8;
    v15 = v13;
    v19 = v15;
    [v15 handleIntent:v14 withCompletion:v18];
    v16 = sub_100004F84();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = *(a1 + 40);
      *v20 = 138412290;
      *&v20[4] = v17;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Sent request to extension to handle send message intent: %@", v20, 0xCu);
    }
  }
}

void sub_10010AAE0(id a1, NSError *a2)
{
  v2 = a2;
  v3 = sub_100004F84();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_100256E9C();
  }
}

void sub_10010AB34(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = sub_100004F84();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138413058;
    v15 = v9;
    v16 = 2112;
    v17 = v10;
    v18 = 2112;
    v19 = v11;
    v20 = 2112;
    v21 = v12;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Intent was handled with response: %@ launchContextActivityData: %@ cacheItems: %@ error: %@", &v14, 0x2Au);
  }

  [*(a1 + 32) completeTransaction];
}

id sub_10010B30C(uint64_t a1)
{
  [*(a1 + 32) setHidden:(*(a1 + 48) & 1) == 0];
  v2 = 0.0;
  if (*(a1 + 48))
  {
    v2 = 1.0;
  }

  [*(a1 + 32) setAlpha:v2];
  [*(a1 + 40) setNeedsStatusBarAppearanceUpdate];
  v3 = *(a1 + 40);

  return [v3 setNeedsUpdateOfHomeIndicatorAutoHidden];
}

void sub_10010C1A0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_10010C1C4(uint64_t a1, void *a2)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10010C28C;
  block[3] = &unk_100359A20;
  v5 = a2;
  v3 = v5;
  objc_copyWeak(&v7, (a1 + 40));
  v6 = *(a1 + 32);
  dispatch_async(&_dispatch_main_q, block);

  objc_destroyWeak(&v7);
}

void sub_10010C28C(uint64_t a1)
{
  v2 = sub_1000314C4();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    sub_100256F04(a1, v2);
  }

  v3 = [*(a1 + 32) imageWithRenderingMode:1];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = [WeakRetained infoView];
  [v5 setAvatarImage:v3];

  v6 = objc_loadWeakRetained((a1 + 48));
  v7 = [v6 pipController];
  [v7 setScreenSharingTitle:*(a1 + 40) andAvatarIfNeeded:v3];
}

void sub_10010C434(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10010C450(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained setShowingOverlay:0 animated:1];
    v2 = [v3 overlayDismissTimer];
    [v2 invalidate];

    [v3 setOverlayDismissTimer:0];
    WeakRetained = v3;
  }
}

void sub_10010D680(id a1)
{
  v1 = os_log_create("com.apple.calls.incallservice", "Default");
  v2 = qword_1003B0F10;
  qword_1003B0F10 = v1;

  _objc_release_x1(v1, v2);
}

uint64_t sub_10010D6C4()
{
  if (qword_1003B0F28 != -1)
  {
    sub_10025706C();
  }

  return qword_1003B0F20;
}

void sub_10010D6FC(id a1)
{
  v1 = os_log_create("com.apple.calls.incallservice", "ConversationControls");
  v2 = qword_1003B0F20;
  qword_1003B0F20 = v1;

  _objc_release_x1(v1, v2);
}

void sub_10010D740(id a1)
{
  v1 = os_log_create("com.apple.calls.incallservice", "PiP");
  v2 = qword_1003B0F30;
  qword_1003B0F30 = v1;

  _objc_release_x1(v1, v2);
}

void sub_10010D784(id a1)
{
  v1 = os_log_create("com.apple.calls.incallservice", "Scenes");
  v2 = qword_1003B0F40;
  qword_1003B0F40 = v1;

  _objc_release_x1(v1, v2);
}

void sub_10010D7C8(id a1)
{
  v1 = os_log_create("com.apple.calls.incallservice", "ScreenSharing");
  v2 = qword_1003B0F50;
  qword_1003B0F50 = v1;

  _objc_release_x1(v1, v2);
}

uint64_t sub_10010D80C()
{
  if (qword_1003B0F68 != -1)
  {
    sub_1002570BC();
  }

  return qword_1003B0F60;
}

void sub_10010D844(id a1)
{
  v1 = os_log_create("com.apple.calls.incallservice", "ScreenTime");
  v2 = qword_1003B0F60;
  qword_1003B0F60 = v1;

  _objc_release_x1(v1, v2);
}

uint64_t sub_10010D888()
{
  if (qword_1003B0F78 != -1)
  {
    sub_1002570D0();
  }

  return qword_1003B0F70;
}

void sub_10010D8C0(id a1)
{
  v1 = os_log_create("com.apple.calls.incallservice", "SOS");
  v2 = qword_1003B0F70;
  qword_1003B0F70 = v1;

  _objc_release_x1(v1, v2);
}

uint64_t sub_10010D904()
{
  if (qword_1003B0F88 != -1)
  {
    sub_1002570E4();
  }

  return qword_1003B0F80;
}

void sub_10010D93C(id a1)
{
  v1 = os_log_create("com.apple.calls.incallservice", "AmbientScene");
  v2 = qword_1003B0F80;
  qword_1003B0F80 = v1;

  _objc_release_x1(v1, v2);
}

void sub_10010E5DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location)
{
  objc_destroyWeak((v22 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10010E604(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained showMessagesButtonPressed];
}

void sub_10010F2F4(id a1)
{
  v1 = objc_alloc_init(PHInCallOrientationMonitor);
  v2 = qword_1003B0F90;
  qword_1003B0F90 = v1;

  _objc_release_x1(v1, v2);
}

void sub_10010F3D4(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 isSpringBoardInterfaceOrientationLocked];
  v4 = sub_100004F84();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = @"NO";
    if (v3)
    {
      v5 = @"YES";
    }

    v15 = 138412290;
    v16 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "SpringBoardOrientationLockChangedNotification: Orientation is locked: %@", &v15, 0xCu);
  }

  if (v3)
  {
    v6 = [v2 springBoardLockedInterfaceOrientation];
    v7 = +[UIDevice currentDevice];
    v8 = [v7 userInterfaceIdiom];

    v9 = sub_100004F84();
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
    if ((v8 & 0xFFFFFFFFFFFFFFFBLL) == 1)
    {
      if (v10)
      {
        if (v6 == 1)
        {
          v11 = @"UIInterfaceOrientationPortrait";
        }

        else if (v6 == 3)
        {
          v11 = @"UIInterfaceOrientationLandscapeRight";
        }

        else if (v6 == 4)
        {
          v11 = @"UIInterfaceOrientationLandscapeLeft";
        }

        else
        {
          v11 = @"UIInterfaceOrientationPortraitUpsideDown";
          if (v6 != 2)
          {
            v11 = 0;
          }
        }

        v15 = 138412290;
        v16 = v11;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "SpringBoardOrientationLockChangedNotification: SpringBoard is locked to %@", &v15, 0xCu);
      }
    }

    else
    {
      if (v10)
      {
        if (v6 == 1)
        {
          v12 = @"UIInterfaceOrientationPortrait";
        }

        else if (v6 == 3)
        {
          v12 = @"UIInterfaceOrientationLandscapeRight";
        }

        else if (v6 == 4)
        {
          v12 = @"UIInterfaceOrientationLandscapeLeft";
        }

        else if (v6 == 2)
        {
          v12 = @"UIInterfaceOrientationPortraitUpsideDown";
        }

        else
        {
          v12 = 0;
        }

        if ([v2 currentOrientation] == 1)
        {
          v13 = @"UIInterfaceOrientationPortrait";
        }

        else if ([v2 currentOrientation] == 4)
        {
          v13 = @"UIInterfaceOrientationLandscapeLeft";
        }

        else if ([v2 currentOrientation] == 3)
        {
          v13 = @"UIInterfaceOrientationLandscapeRight";
        }

        else
        {
          v14 = [v2 currentOrientation];
          v13 = @"UIInterfaceOrientationPortraitUpsideDown";
          if (v14 != 2)
          {
            v13 = 0;
          }
        }

        v15 = 138412546;
        v16 = v12;
        v17 = 2112;
        v18 = v13;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "SpringBoardOrientationLockChangedNotification: SpringBoard is locked to %@, but using %@", &v15, 0x16u);
      }

      v6 = [v2 currentOrientation];
    }

    [v2 setLockedOrientation:v6];
  }

  [v2 setIsOrientationLocked:v3];
}

uint64_t sub_100110160(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = qword_1003B0FB0;
  qword_1003B0FB0 = v1;

  return _objc_release_x1(v1, v2);
}

uint64_t sub_1001101CC(uint64_t a1)
{
  qword_1003B0FC0 = objc_alloc_init(*(a1 + 32));

  return _objc_release_x1();
}

void sub_100111590(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100111E00(uint64_t a1)
{
  v3 = [*(a1 + 32) callParticipantsViewController];
  v1 = [v3 view];
  v2 = [v1 layer];
  [v2 setOpacity:0.0];
}

id sub_100111E70(uint64_t a1)
{
  [*(a1 + 32) resetParticipantsViewConstraints];
  v2 = [*(a1 + 32) view];
  [v2 layoutIfNeeded];

  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100111F1C;
  v4[3] = &unk_100356988;
  v4[4] = *(a1 + 32);
  return [UIView animateWithDuration:v4 animations:0.400000006];
}

void sub_100111F1C(uint64_t a1)
{
  v4 = [*(a1 + 32) callParticipantsViewController];
  v1 = [v4 view];
  v2 = [v1 layer];
  LODWORD(v3) = 1.0;
  [v2 setOpacity:v3];
}

void sub_100111F8C(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 32);
  if (v2 == 1)
  {
    [v3 resetParticipantsViewConstraints];
    v7 = [*(a1 + 32) view];
    [v7 layoutIfNeeded];
  }

  else
  {
    v4 = [v3 callParticipantsViewController];
    v5 = [v4 view];
    [v5 setNeedsLayout];

    v7 = [*(a1 + 32) callParticipantsViewController];
    v6 = [v7 view];
    [v6 layoutIfNeeded];
  }
}

void sub_100116584(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1001165A0(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (a2)
  {
    v5 = WeakRetained;
    v4 = [WeakRetained callDetailsCoordinator];
    [v4 startWithReason:@"PHAudioCallViewController requested call details"];

    WeakRetained = v5;
  }
}

void sub_100116EB0(uint64_t a1)
{
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10011703C;
  v12[3] = &unk_100357110;
  v2 = *(a1 + 32);
  v13 = *(a1 + 40);
  v14 = *(a1 + 48);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100117080;
  v7[3] = &unk_100359070;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  *&v5 = *(a1 + 48);
  *(&v5 + 1) = *(a1 + 56);
  *&v6 = v3;
  *(&v6 + 1) = v4;
  v8 = v6;
  v9 = v5;
  v10 = *(a1 + 64);
  v11 = *(a1 + 72);
  [UIView transitionWithView:v2 duration:1048832 options:v12 animations:v7 completion:0.4];
}

id sub_10011703C(uint64_t a1)
{
  [*(a1 + 32) setAlpha:1.0];
  v2 = *(a1 + 40);

  return [v2 setAlpha:0.0];
}

void sub_100117080(uint64_t a1)
{
  v2 = dispatch_time(0, 2000000000);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10011719C;
  v7[3] = &unk_100359098;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  *&v5 = *(a1 + 48);
  *(&v5 + 1) = *(a1 + 56);
  *&v6 = v3;
  *(&v6 + 1) = v4;
  v8 = v6;
  v9 = v5;
  v10 = *(a1 + 64);
  v11 = *(a1 + 72);
  dispatch_after(v2, &_dispatch_main_q, v7);
}

void sub_10011719C(uint64_t a1)
{
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100117328;
  v12[3] = &unk_100357110;
  v2 = *(a1 + 32);
  v13 = *(a1 + 40);
  v14 = *(a1 + 48);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10011736C;
  v7[3] = &unk_100359070;
  v3 = *(a1 + 48);
  v4 = *(a1 + 40);
  *&v5 = *(a1 + 32);
  *(&v5 + 1) = *(a1 + 56);
  *&v6 = v3;
  *(&v6 + 1) = v4;
  v8 = v6;
  v9 = v5;
  v10 = *(a1 + 64);
  v11 = *(a1 + 72);
  [UIView transitionWithView:v2 duration:2097408 options:v12 animations:v7 completion:0.4];
}

id sub_100117328(uint64_t a1)
{
  [*(a1 + 32) setAlpha:0.0];
  v2 = *(a1 + 40);

  return [v2 setAlpha:1.0];
}

void sub_10011736C(uint64_t a1)
{
  [*(a1 + 32) removeFromSuperview];
  [*(a1 + 40) removeFromSuperview];
  [*(a1 + 48) removeFromSuperview];
  v2 = [*(a1 + 56) callDetailsViewButton];
  [v2 setAlpha:1.0];

  v3 = +[NSUserDefaults standardUserDefaults];
  [v3 setBool:1 forKey:@"PHInCallUIInfoButtonCoinFlipKey"];

  if (([CNSharedProfileStateOracle contactIsInAutoUpdateState:*(a1 + 64)]& 1) == 0)
  {
    v6 = [*(a1 + 56) imNicknameProvider];
    v4 = [*(a1 + 72) pendingNickname];
    v5 = [v4 handle];
    [v6 markTransitionAsObservedForHandleID:v5 isAutoUpdate:0];
  }
}

void sub_100117944(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 view];
  [v5 addSubview:v4];

  v8 = [v4 bottomAnchor];

  v6 = [*(a1 + 40) topAnchor];
  v7 = [v8 constraintEqualToAnchor:v6 constant:-30.0];
  [v7 setActive:1];
}

void sub_100117AFC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_100117B20(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100117BB0;
  block[3] = &unk_100356F60;
  objc_copyWeak(&v2, (a1 + 32));
  dispatch_async(&_dispatch_main_q, block);
  objc_destroyWeak(&v2);
}

void sub_100117BB0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = [WeakRetained inCallRootViewController];
    [v2 updateDesiredSpringboardBehavior];

    WeakRetained = v3;
  }
}

void sub_100118300(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10011831C(uint64_t a1)
{
  v2 = objc_loadWeakRetained((a1 + 32));
  v3 = [v2 bottomBar];
  [v2 _testing_finishedAnimatingToActiveCallState:v3];

  if (*(a1 + 40) == 1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained revealAudioRoutingDeviceListAnimatedIfNeeded];
  }
}

void sub_1001184E8(uint64_t a1)
{
  v2 = [*(a1 + 32) posterNameViewModel];
  v3 = [v2 posterNameTextView];
  v4 = [v3 layout];

  if (v4 != 1)
  {
    memset(&v13, 0, sizeof(v13));
    CGAffineTransformMakeScale(&v13, 1.03, 1.03);
    v12 = v13;
    v5 = [*(a1 + 32) posterContainer];
    v11 = v12;
    [v5 setTransform:&v11];

    v10 = v13;
    v6 = [*(a1 + 32) alwaysOnDisplayDimmingView];
    v11 = v10;
    [v6 setTransform:&v11];
  }

  if ([*(a1 + 32) shouldShowNewPosterUpdates])
  {
    v7 = dispatch_time(0, 950000000);
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10011867C;
    v8[3] = &unk_100356960;
    v8[4] = *(a1 + 32);
    v9 = *(a1 + 40);
    dispatch_after(v7, &_dispatch_main_q, v8);
  }

  else
  {
    [*(a1 + 32) _updatePosterStatusLabelForState:*(a1 + 40)];
  }
}

id sub_100118B30(uint64_t a1)
{
  v2 = [*(a1 + 32) posterNameViewModel];
  [v2 transitionCallToActiveStateAnimated:*(a1 + 40)];

  v3 = *(a1 + 32);

  return [v3 _updateStatusLabelVisibility];
}

id *sub_10011996C(id *result, int a2)
{
  if (a2)
  {
    v2 = result;
    result = [result[4] isTTY];
    if ((result & 1) == 0)
    {
      v3 = v2[5];

      return [v3 revealAudioRoutingDeviceListAnimatedIfNeeded];
    }
  }

  return result;
}

void sub_100119B5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100119B78(uint64_t a1)
{
  v2 = sub_100004F84();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "PHAudioCallViewController,setCurrentState,PHInCallStateCallBuffer,disable 6-up buttons", v8, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [WeakRetained currentMiddleView];
  [v4 setButtonsEnabled:0];

  v5 = objc_loadWeakRetained((a1 + 32));
  v6 = [v5 currentMiddleView];
  v7 = [v6 buttonForControlType:15];
  [v7 setEnabled:1];
}

void sub_10011ABA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  _Block_object_dispose(&a22, 8);
  _Block_object_dispose((v34 - 176), 8);
  objc_destroyWeak((v33 + 40));
  _Block_object_dispose(&a33, 8);
  _Unwind_Resume(a1);
}

void sub_10011AC04(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((*(*(a1 + 32) + 8) + 40));
  if (WeakRetained)
  {
    v5 = a2 ^ 1u;
    v6 = *(*(a1 + 40) + 8);
    if (*(v6 + 24) != v5)
    {
      *(v6 + 24) = v5;
      v7 = sub_100004F84();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        if (*(*(*(a1 + 40) + 8) + 24))
        {
          v8 = @"YES";
        }

        else
        {
          v8 = @"NO";
        }

        v9 = 138412290;
        v10 = v8;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Audio: setCurrentState: stateChangeLockObservation: wasUnlocked: %@", &v9, 0xCu);
      }

      [WeakRetained setScreeningState:*(a1 + 48) animated:1 overrideWithIsUnlocked:v5];
    }
  }
}

void sub_10011AD24(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(*(a1 + 32) + 8) + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained traitCollection];
    v5 = [v4 _backlightLuminance];
    v6 = *(*(*(a1 + 40) + 8) + 24);

    if (v5 != v6)
    {
      v7 = [v3 traitCollection];
      *(*(*(a1 + 40) + 8) + 24) = [v7 _backlightLuminance];

      v8 = sub_100004F84();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = @"YES";
        if (!*(*(*(a1 + 48) + 8) + 24))
        {
          v9 = @"NO";
        }

        v10 = *(*(*(a1 + 40) + 8) + 24);
        v11 = 138412546;
        v12 = v9;
        v13 = 2048;
        v14 = v10;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Audio: setCurrentState: stateDisplayChangedObservation: wasUnlocked: %@ with luminance: %ld", &v11, 0x16u);
      }

      [v3 setScreeningState:*(a1 + 56) animated:1 overrideWithIsUnlocked:*(*(*(a1 + 48) + 8) + 24)];
    }
  }
}

id sub_10011E9CC(uint64_t a1)
{
  v2 = [*(a1 + 32) view];
  [v2 setBackgroundColor:*(a1 + 40)];

  v3 = *(a1 + 32);

  return [v3 removeBackgroundContactImageView];
}

id sub_10011EFE8(uint64_t a1)
{
  [*(*(a1 + 32) + 680) setImage:*(a1 + 40)];
  v2 = *(*(a1 + 32) + 680);

  return [v2 setAlpha:1.0];
}

void sub_10011FECC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained && ([WeakRetained detachedPosterNameViewModel], (v3 = objc_claimAutoreleasedReturnValue()) != 0) && (v4 = v3, objc_msgSend(v2, "detachedPosterNameViewModel"), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "isVisible"), v5, v4, !v6))
  {
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10011FFC0;
    v7[3] = &unk_100356988;
    v8 = v2;
    [UIView animateWithDuration:v7 animations:0.3];
  }

  else
  {
    [v2 _updateStatusLabelVisibility];
  }
}

id sub_10011FFC0(uint64_t a1)
{
  [*(a1 + 32) _updatePosterNameAlpha];
  v2 = *(a1 + 32);

  return [v2 _updateStatusLabelVisibility];
}

void sub_1001204CC(uint64_t a1)
{
  v3 = *(a1 + 40);
  v2 = [NSArray arrayWithObjects:&v3 count:1];
  [*(a1 + 32) setBackgroundEffects:v2];
}

void sub_100120554(uint64_t a1)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10012066C;
  v4[3] = &unk_100356988;
  v5 = *(a1 + 32);
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_10012067C;
  v2[3] = &unk_1003569B0;
  v3 = *(a1 + 32);
  [UIView _animateUsingSpringWithDuration:0 delay:v4 options:v2 mass:0.4 stiffness:0.0 damping:2.0 initialVelocity:300.0 animations:50.0 completion:0.0];
}

void sub_1001207D0(uint64_t a1)
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1001208DC;
  v8[3] = &unk_100357110;
  v2 = *(a1 + 32);
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v9 = v2;
  v10 = v4;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100120930;
  v5[3] = &unk_1003591D0;
  v5[4] = v4;
  v6 = v3;
  v7 = *(a1 + 48);
  [UIView animateWithDuration:v8 animations:v5 completion:0.5];
}

id sub_1001208DC(uint64_t a1)
{
  v2 = [*(a1 + 32) view];
  [v2 setAlpha:0.0];

  v3 = *(a1 + 40);

  return [v3 setParticipantsViewShouldShowParticipantLabel:1];
}

uint64_t sub_100120930(uint64_t a1)
{
  [*(a1 + 32) removeChildViewController:*(a1 + 40)];
  v2 = [*(a1 + 40) view];
  [v2 removeFromSuperview];

  [*(a1 + 40) didMoveToParentViewController:0];
  [*(a1 + 32) _updateStatusLabelVisibility];
  result = *(a1 + 48);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

void sub_100120E80(uint64_t a1)
{
  if (*(a1 + 72) == 1)
  {
    v2 = *(a1 + 32);
    v3 = *(a1 + 40);
    v4 = [v2 posterNameViewModel];
    v5 = [v4 priorityPosterNameTextView];
    [v2 addPosterBlurToPosterVC:v3 nameLabelWrapper:v5];
  }

  v6 = [*(a1 + 48) view];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = [*(a1 + 32) snapshotUIImageView];
  }

  v9 = v8;

  if (!*(a1 + 48))
  {
    v10 = [*(a1 + 32) view];
    v11 = [*(a1 + 32) backgroundImageView];
    [v10 insertSubview:v9 above:v11];
  }

  v12 = [*(a1 + 40) view];
  [v12 setAlpha:0.0];

  v13 = *(a1 + 64);
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_1001210A0;
  v24[3] = &unk_100357318;
  v14 = *(a1 + 40);
  v15 = *(a1 + 32);
  v25 = v14;
  v26 = v15;
  v27 = v9;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_100121108;
  v19[3] = &unk_100359C30;
  v16 = *(a1 + 48);
  v17 = *(a1 + 32);
  v20 = v16;
  v21 = v17;
  v22 = v27;
  v23 = *(a1 + 56);
  v18 = v27;
  [UIView animateWithDuration:v24 animations:v19 completion:v13];
}

id sub_1001210A0(uint64_t a1)
{
  [*(a1 + 40) viewAlphaForPosterRenderingViewController];
  v3 = v2;
  v4 = [*(a1 + 32) view];
  [v4 setAlpha:v3];

  v5 = *(a1 + 48);

  return [v5 setAlpha:0.0];
}

uint64_t sub_100121108(uint64_t a1)
{
  if (*(a1 + 32))
  {
    [*(a1 + 40) removeChildViewController:?];
  }

  [*(a1 + 48) removeFromSuperview];
  v2 = *(a1 + 32);
  if (v2)
  {
    [v2 didMoveToParentViewController:0];
  }

  result = *(a1 + 56);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

void sub_100121198(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 contact];
  v5 = [v4 fullscreenImageData];

  v6 = [*(a1 + 32) callDisplayStyleManager];
  if ([v6 callDisplayStyle] != 3)
  {
    goto LABEL_5;
  }

  v7 = [*(a1 + 32) features];
  v8 = [v7 isDominoEnabled];

  if (v8 && !v5)
  {
    v6 = [v3 contact];
    v5 = [v6 imageData];
LABEL_5:
  }

  if (v5)
  {
    v9 = *(a1 + 32);
    v10 = [[UIImage alloc] initWithData:v5];
    [v9 updateBackgroundContactImageViewWithImage:v10 animated:1];

    [*(a1 + 32) updateLegacyBackgroundImageVisibilityWithShouldShowWallpaper:0];
  }

  else
  {
    v11 = sub_100004F84();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "SNAP: Fading out poster, but there is no contact image data either, setting up default blur background in this case", v12, 2u);
    }

    [*(a1 + 32) addDefaultBackgroundGradientView];
  }
}

void sub_1001212F0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained suspendPosterAndCancelDelay:0];
    [v2 setSuspendPosterAfterDelayBlock:0];
    WeakRetained = v2;
  }
}

id sub_100121344(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = [WeakRetained currentState] == 2 || objc_msgSend(WeakRetained, "currentState") == 4;
  v6 = [WeakRetained contactToDisplayInCallWallpaperForCall:*(a1 + 32)];
  v7 = *(a1 + 40);
  v8 = [*(a1 + 32) handle];
  v9 = [v8 value];
  v10 = [TPIncomingCallMetricsProvider appropriateCallerNameViewForContact:v6 callStatus:v7 callIsActive:v5 optionalBackupName:v9];

  if (a2)
  {
    [WeakRetained applyWallpaperTitleStyleAttributesToTextViewWrapper:v10];
  }

  return v10;
}

id *sub_100121444(id *result)
{
  if (*(result + 48) == 1 && result[5] == 3)
  {
    return [result[4] finishNewPosterUpdatesWithCompletion:0];
  }

  return result;
}

void sub_100121B5C(id a1)
{
  v1 = [CNContactViewController descriptorForRequiredKeys:CNContactImageDataAvailableKey];
  v6[12] = v1;
  v2 = +[CNMeCardSharingSettingsViewController descriptorForRequiredKeys];
  v6[13] = v2;
  v3 = +[NSPersonNameComponents descriptorForUsedKeys];
  v6[14] = v3;
  v4 = [NSArray arrayWithObjects:v6 count:15];
  v5 = qword_1003B0FD0;
  qword_1003B0FD0 = v4;
}

void sub_10012225C(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 232) view];
  [v2 setAlpha:0.0];

  v3 = [*(*(a1 + 32) + 424) view];
  [v3 setAlpha:1.0];
}

void sub_1001222E4(uint64_t a1)
{
  v2 = [*(a1 + 32) view];
  [v2 setAlpha:0.0];

  v3 = [*(*(a1 + 40) + 232) view];
  [v3 setAlpha:1.0];
}

void sub_100122360(uint64_t a1)
{
  v2 = [*(a1 + 32) view];
  [v2 removeFromSuperview];

  [*(a1 + 32) removeFromParentViewController];
  v3 = *(a1 + 40);
  v4 = *(v3 + 424);
  *(v3 + 424) = 0;
}

void sub_100122CA0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (+[PHUIConfiguration shouldUseFullScreenPeoplePicker])
    {
      v3 = +[PHInCallUtilities sharedInstance];
      [v3 setRequestedVCPresentationWithStatusBar:1 withReasonLog:@"Requested presentation of contacts UI"];
    }

    v4 = [*(a1 + 32) inCallRootViewController];
    [v4 presentContactsViewControllerForView:*(a1 + 40)];
  }
}

void sub_100122E3C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (+[PHUIConfiguration shouldUseFullScreenPeoplePicker])
    {
      v3 = +[PHInCallUtilities sharedInstance];
      [v3 setRequestedVCPresentationWithStatusBar:1 withReasonLog:@"Requested presentation of Add Call UI"];
    }

    v4 = [*(a1 + 32) inCallRootViewController];
    [v4 presentPhoneRemoteViewControllerForView:*(a1 + 40)];
  }
}

void sub_10012302C(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = [*(a1 + 32) callCenter];
    v4 = [v3 callWithStatus:1];
    if (v4)
    {
      v5 = v4;
    }

    else
    {
      v6 = [*(a1 + 32) callCenter];
      v5 = [v6 callWithStatus:2];

      if (!v5)
      {
        v5 = sub_100004F84();
        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
        {
          v14 = [*(a1 + 32) callCenter];
          v15 = [v14 currentCalls];
          v16 = 138412290;
          v17 = v15;
          _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[WARN] Was told to request video presentation but no active or held call was found in calls: %@", &v16, 0xCu);
        }

        goto LABEL_8;
      }
    }

    v7 = [v5 provider];
    v8 = [[TUDialRequest alloc] initWithProvider:v7];
    v9 = [v5 handle];
    [v8 setHandle:v9];

    v10 = [v5 contactIdentifier];
    [v8 setContactIdentifier:v10];

    v11 = [v5 localSenderIdentityUUID];
    [v8 setLocalSenderIdentityUUID:v11];

    [v8 setVideo:1];
    [v8 setOriginatingUIType:1];
    v12 = sub_100004F84();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138412290;
      v17 = v8;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Requesting video via dial request: %@", &v16, 0xCu);
    }

    v13 = [*(a1 + 32) callCenter];
    [v13 launchAppForDialRequest:v8 completion:0];

LABEL_8:
  }
}

void sub_100123758(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10012377C(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v10 = WeakRetained;
    v5 = [WeakRetained buttonsViewController];
    v6 = [v5 isViewLoaded];

    WeakRetained = v10;
    if (v6)
    {
      v7 = (a2 ^ 1u);
      v8 = [v10 buttonsViewController];
      v9 = [v8 view];
      [v9 setAlpha:v7];

      [*(a1 + 32) setNeedsLayout];
      [*(a1 + 32) layoutIfNeeded];
      WeakRetained = v10;
    }
  }
}

uint64_t sub_1001279A8(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 1);
  }

  return result;
}

id sub_1001279C4(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = [*(a1 + 32) bottomBar];
    [v3 setCurrentState:11 animated:0 animationCompletionBlock:0];
  }

  v4 = *(a1 + 32);
  v5 = [v4 currentState];

  return [v4 updateBottomBarAlphaWithCurrentState:v5];
}

id sub_100127A3C(uint64_t a1)
{
  v2 = +[PHInCallUtilities sharedInstance];
  v3 = [v2 isIPadIdiom];

  if (v3)
  {
    v4 = *(a1 + 32);
    v5 = *&CGAffineTransformIdentity.c;
    *&v9.a = *&CGAffineTransformIdentity.a;
    *&v9.c = v5;
    *&v9.tx = *&CGAffineTransformIdentity.tx;
    [v4 setTransform:&v9];
    CGAffineTransformMakeScale(&v8, 0.100000001, 0.100000001);
    v6 = *(a1 + 40);
    v9 = v8;
    [v6 setTransform:&v9];
  }

  [*(a1 + 40) setAlpha:0.0];
  return [*(a1 + 32) setAlpha:1.0];
}

uint64_t sub_100127AFC(uint64_t a1)
{
  v2 = +[PHInCallUtilities sharedInstance];
  v3 = [v2 isIPadIdiom];

  if (v3)
  {
    v4 = *(a1 + 32);
    v5 = *&CGAffineTransformIdentity.c;
    v7[0] = *&CGAffineTransformIdentity.a;
    v7[1] = v5;
    v7[2] = *&CGAffineTransformIdentity.tx;
    [v4 setTransform:v7];
  }

  [*(a1 + 32) removeFromSuperview];
  [*(a1 + 32) setAlpha:1.0];
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, 1);
  }

  return result;
}

id *sub_100127BA0(id *result, int a2)
{
  if (a2)
  {
    v2 = result;
    v3 = [result[4] bottomBar];
    [v3 setCurrentState:11 animated:0 animationCompletionBlock:0];

    v4 = v2[4];
    v5 = [v4 currentState];

    return [v4 updateBottomBarAlphaWithCurrentState:v5];
  }

  return result;
}

id sub_100127C1C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *&CGAffineTransformIdentity.c;
  *&v7.a = *&CGAffineTransformIdentity.a;
  *&v7.c = v3;
  *&v7.tx = *&CGAffineTransformIdentity.tx;
  [v2 setTransform:&v7];
  CGAffineTransformMakeScale(&v6, 0.100000001, 0.100000001);
  v4 = *(a1 + 40);
  v7 = v6;
  [v4 setTransform:&v7];
  [*(a1 + 40) setAlpha:0.0];
  return [*(a1 + 32) setAlpha:1.0];
}

void sub_100127CB0(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *&CGAffineTransformIdentity.c;
  *v15 = *&CGAffineTransformIdentity.a;
  *&v15[16] = v3;
  v16 = *&CGAffineTransformIdentity.tx;
  [v2 setTransform:v15];
  [*(a1 + 32) removeFromSuperview];
  [*(a1 + 32) setAlpha:1.0];
  v4 = *(a1 + 48);
  if (v4)
  {
    (*(v4 + 16))(v4, 1);
    v5 = sub_100004F84();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [*(a1 + 40) buttonsViewController];
      v7 = [v6 view];
      v8 = [*(a1 + 40) buttonsViewController];
      v9 = [v8 view];
      [v9 alpha];
      v11 = v10;
      v12 = [*(a1 + 40) buttonsViewController];
      v13 = [v12 view];
      v14 = [v13 superview];
      *v15 = 138412802;
      *&v15[4] = v7;
      *&v15[12] = 2048;
      *&v15[14] = v11;
      *&v15[22] = 2112;
      *&v15[24] = v14;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "After setting middleViewState to buttons from screening, six-up view is: %@, six-up view alpha is: %f, six-up view parent view is: %@", v15, 0x20u);
    }
  }
}

id sub_100127E60(uint64_t a1)
{
  [*(a1 + 32) setAlpha:0.0];
  v2 = *(a1 + 40);

  return [v2 setAlpha:1.0];
}

uint64_t sub_100127EA4(uint64_t a1)
{
  [*(a1 + 32) removeFromSuperview];
  [*(a1 + 32) setAlpha:1.0];
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

id sub_100127F08(uint64_t a1)
{
  [*(a1 + 32) setAlpha:0.0];
  v2 = *(a1 + 40);

  return [v2 setAlpha:1.0];
}

uint64_t sub_100127F4C(uint64_t a1)
{
  [*(a1 + 32) removeFromSuperview];
  [*(a1 + 32) setAlpha:1.0];
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

void sub_100127FB0(uint64_t a1)
{
  [*(a1 + 32) setAlpha:0.0];
  [*(a1 + 40) setAlpha:1.0];
  v2 = +[PHInCallUtilities sharedInstance];
  v3 = [v2 isIPadIdiom];

  if (v3)
  {
    CGAffineTransformMakeScale(&v8, 1.20000005, 1.20000005);
    v4 = *(a1 + 32);
    v7 = v8;
    [v4 setTransform:&v7];
    v5 = *(a1 + 40);
    v6 = *&CGAffineTransformIdentity.c;
    *&v7.a = *&CGAffineTransformIdentity.a;
    *&v7.c = v6;
    *&v7.tx = *&CGAffineTransformIdentity.tx;
    [v5 setTransform:&v7];
  }
}

uint64_t sub_100128070(uint64_t a1)
{
  v2 = +[PHInCallUtilities sharedInstance];
  v3 = [v2 isIPadIdiom];

  if (v3)
  {
    v4 = *(a1 + 32);
    v5 = *&CGAffineTransformIdentity.c;
    v7[0] = *&CGAffineTransformIdentity.a;
    v7[1] = v5;
    v7[2] = *&CGAffineTransformIdentity.tx;
    [v4 setTransform:v7];
  }

  [*(a1 + 32) removeFromSuperview];
  [*(a1 + 32) setAlpha:1.0];
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, 1);
  }

  return result;
}

id sub_100128120(uint64_t a1)
{
  [*(a1 + 32) setAlpha:0.0];
  v2 = *(a1 + 40);

  return [v2 setAlpha:1.0];
}

uint64_t sub_100128164(uint64_t a1)
{
  [*(a1 + 32) removeFromSuperview];
  [*(a1 + 32) setAlpha:1.0];
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

id sub_1001281C8(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *&CGAffineTransformIdentity.c;
  *&v7.a = *&CGAffineTransformIdentity.a;
  *&v7.c = v3;
  *&v7.tx = *&CGAffineTransformIdentity.tx;
  [v2 setTransform:&v7];
  CGAffineTransformMakeScale(&v6, 0.100000001, 0.100000001);
  v4 = *(a1 + 40);
  v7 = v6;
  [v4 setTransform:&v7];
  [*(a1 + 40) setAlpha:0.0];
  return [*(a1 + 32) setAlpha:1.0];
}

uint64_t sub_10012825C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *&CGAffineTransformIdentity.c;
  v5[0] = *&CGAffineTransformIdentity.a;
  v5[1] = v3;
  v5[2] = *&CGAffineTransformIdentity.tx;
  [v2 setTransform:v5];
  [*(a1 + 32) removeFromSuperview];
  [*(a1 + 32) setAlpha:1.0];
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, 1);
  }

  return result;
}

uint64_t sub_1001282D4(uint64_t a1, int a2)
{
  v4 = [*(a1 + 32) buttonsViewController];
  [v4 setUpdatesPaused:0];

  if (a2)
  {
    [*(a1 + 40) removeFromSuperview];
  }

  result = *(a1 + 48);
  if (result)
  {
    v6 = *(result + 16);

    return v6();
  }

  return result;
}

uint64_t sub_100128368(uint64_t a1, int a2)
{
  if (a2)
  {
    [*(a1 + 32) removeFromSuperview];
  }

  result = *(a1 + 40);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

id sub_1001283C4(uint64_t a1)
{
  CGAffineTransformMakeScale(&v7, 1.20000005, 1.20000005);
  v2 = *(a1 + 32);
  v6 = v7;
  [v2 setTransform:&v6];
  [*(a1 + 32) setAlpha:0.0];
  v3 = *(a1 + 40);
  v4 = *&CGAffineTransformIdentity.c;
  *&v6.a = *&CGAffineTransformIdentity.a;
  *&v6.c = v4;
  *&v6.tx = *&CGAffineTransformIdentity.tx;
  [v3 setTransform:&v6];
  return [*(a1 + 40) setAlpha:1.0];
}

void sub_100128458(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *&CGAffineTransformIdentity.c;
  *v15 = *&CGAffineTransformIdentity.a;
  *&v15[16] = v3;
  v16 = *&CGAffineTransformIdentity.tx;
  [v2 setTransform:v15];
  [*(a1 + 32) removeFromSuperview];
  [*(a1 + 32) setAlpha:1.0];
  v4 = *(a1 + 48);
  if (v4)
  {
    (*(v4 + 16))(v4, 1);
  }

  v5 = sub_100004F84();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [*(a1 + 40) buttonsViewController];
    v7 = [v6 view];
    v8 = [*(a1 + 40) buttonsViewController];
    v9 = [v8 view];
    [v9 alpha];
    v11 = v10;
    v12 = [*(a1 + 40) buttonsViewController];
    v13 = [v12 view];
    v14 = [v13 superview];
    *v15 = 138412802;
    *&v15[4] = v7;
    *&v15[12] = 2048;
    *&v15[14] = v11;
    *&v15[22] = 2112;
    *&v15[24] = v14;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "After setting middleViewState to screening, six-up view is: %@, six-up view alpha is: %f, six-up view parent view is: %@", v15, 0x20u);
  }
}

id sub_100128608(uint64_t a1)
{
  CGAffineTransformMakeScale(&v7, 1.20000005, 1.20000005);
  v2 = *(a1 + 32);
  v6 = v7;
  [v2 setTransform:&v6];
  [*(a1 + 32) setAlpha:0.0];
  v3 = *(a1 + 40);
  v4 = *&CGAffineTransformIdentity.c;
  *&v6.a = *&CGAffineTransformIdentity.a;
  *&v6.c = v4;
  *&v6.tx = *&CGAffineTransformIdentity.tx;
  [v3 setTransform:&v6];
  return [*(a1 + 40) setAlpha:1.0];
}

void sub_10012869C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *&CGAffineTransformIdentity.c;
  *v15 = *&CGAffineTransformIdentity.a;
  *&v15[16] = v3;
  v16 = *&CGAffineTransformIdentity.tx;
  [v2 setTransform:v15];
  [*(a1 + 32) removeFromSuperview];
  [*(a1 + 32) setAlpha:1.0];
  v4 = *(a1 + 48);
  if (v4)
  {
    (*(v4 + 16))(v4, 1);
  }

  v5 = sub_100004F84();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [*(a1 + 40) buttonsViewController];
    v7 = [v6 view];
    v8 = [*(a1 + 40) buttonsViewController];
    v9 = [v8 view];
    [v9 alpha];
    v11 = v10;
    v12 = [*(a1 + 40) buttonsViewController];
    v13 = [v12 view];
    v14 = [v13 superview];
    *v15 = 138412802;
    *&v15[4] = v7;
    *&v15[12] = 2048;
    *&v15[14] = v11;
    *&v15[22] = 2112;
    *&v15[24] = v14;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "After setting middleViewState to wait on hold, six-up view is: %@, six-up view alpha is: %f, six-up view parent view is: %@", v15, 0x20u);
  }
}

void sub_10012A0B8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 128));
  _Unwind_Resume(a1);
}

void sub_10012A10C(uint64_t a1, int a2)
{
  v4 = sub_100004F84();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (a2)
  {
    if (v5)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Hold Assist: The user has confirmed they want to decline the second incoming call and keep holding with hold assist enabled.", buf, 2u);
    }

    v6 = [*(a1 + 32) frontmostCall];
    v7 = [*(a1 + 32) callCenter];
    [v7 disconnectCall:v6 withReason:2];
  }

  else
  {
    if (v5)
    {
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Hold Assist: The user has confirmed they want stop hold assist and take the new call.", v9, 2u);
    }

    v8 = *(a1 + 40);
    *(*(a1 + 32) + 126) = 1;
    [*(a1 + 32) performBottomBarActionType:v8];
  }
}

void sub_10012A20C(uint64_t a1, int a2)
{
  if (a2)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained setCurrentState:0];
  }
}

void sub_10012A260(uint64_t a1, char a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    if ((a2 & 1) == 0)
    {
      v11 = sub_100004F84();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v18) = 0;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Not performing live reply with device locked.", &v18, 2u);
      }

      goto LABEL_15;
    }

    if ([WeakRetained usesCompactMulticallUI] && (objc_msgSend(v4, "callCenter"), v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "currentCallGroups"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "count"), v6, v5, v7 >= 2))
    {
      v8 = [v4 callCenter];
      v9 = [v8 currentCallCount];

      if (v9 >= 2)
      {
        v10 = [v4 analyticsReporter];
        [v10 reportMultipleCallsWaitingUIAction:4];
      }

      v11 = [v4 callCenter];
      v12 = [v4 callCenter];
      v13 = [v12 incomingCall];
      [v11 disconnectCall:v13 withReason:2];
    }

    else
    {
      v14 = sub_100004F84();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = [v4 frontmostCall];
        v18 = 138412290;
        v19 = v15;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Answering screened call with live reply: %@", &v18, 0xCu);
      }

      v11 = [v4 frontmostCall];
      if (!v11)
      {
        goto LABEL_15;
      }

      [v4 setSendToLiveReply:1];
      v12 = +[UIApplication sharedApplication];
      v13 = [v12 delegate];
      v16 = [v13 answeringMachine];
      v17 = [v11 callUUID];
      [v16 screenCallWithUUID:v17 manualScreening:1 receptionist:1 completion:&stru_100359D70];
    }

LABEL_15:
  }
}

void sub_10012A840(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10012A868(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_copyWeak(&to, (a1 + 40));
  v4 = objc_loadWeakRetained(&to);
  [v4 blockWithHandle:*(a1 + 32)];

  v5 = objc_loadWeakRetained(&to);
  v6 = [v5 frontmostCall];

  if (v6)
  {
    v7 = objc_loadWeakRetained(&to);
    v8 = [v7 callCenter];
    [v8 disconnectCall:v6 withReason:2];
  }

  objc_destroyWeak(&to);
}

void sub_10012AD38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id a26)
{
  objc_destroyWeak((v26 + 56));
  objc_destroyWeak(&a26);
  objc_destroyWeak((v27 - 112));
  _Unwind_Resume(a1);
}

void sub_10012AD74(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (*(a1 + 32))
  {
    [WeakRetained blockWithHandle:?];
  }

  v2 = [*(a1 + 40) callCenter];
  [v2 disconnectCall:*(a1 + 48) withReason:2];
}

void sub_10012ADEC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (*(a1 + 32))
  {
    [WeakRetained blockWithHandle:?];
    [WeakRetained reportWithCall:*(a1 + 40)];
  }

  v2 = [*(a1 + 48) callCenter];
  [v2 disconnectCall:*(a1 + 40) withReason:2];
}

void sub_10012BEB4(uint64_t a1)
{
  if (*(a1 + 40))
  {
    v2 = 0.0;
  }

  else
  {
    v2 = 1.0;
  }

  v3 = [*(a1 + 32) currentMiddleView];
  [v3 setAlpha:v2];

  v4 = [*(a1 + 32) bottomBar];
  [v4 setAlpha:v2];
}

void sub_10012CC68(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained revealAudioRoutingDeviceListAnimated:1];
    WeakRetained = v2;
  }
}

void sub_10012CF60(uint64_t a1)
{
  v1 = [*(a1 + 32) bottomBar];
  [v1 setAlpha:1.0];
}

void sub_10012D06C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_10012D088(uint64_t a1)
{
  v2 = objc_loadWeakRetained((a1 + 32));
  v1 = [v2 bottomBar];
  [v2 _testing_finishedAnimatingToActiveCallState:v1];
}

void sub_10012E1CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location, char a17)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a17, 8);
  _Unwind_Resume(a1);
}

void sub_10012E1FC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    *(*(*(a1 + 32) + 8) + 24) = *(*(*(a1 + 32) + 8) + 24) + -1.0;
    if (*(*(*(a1 + 32) + 8) + 24) <= 0.0)
    {
      v4 = [WeakRetained alertCountDownTimer];
      [v4 invalidate];

      v5 = sub_100004F84();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *v8 = 0;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "alertCountDownTimer invalidated, triggering alert", v8, 2u);
      }

      [v3 setAlertTriggeredByAutoCountdown:1];
      v6 = objc_loadWeakRetained((a1 + 40));
      v7 = [v6 bottomBar];
      [v3 bottomBarActionPerformed:38 withCompletionState:1 fromBar:v7];

      [v3 setAlertTriggeredByAutoCountdown:0];
    }
  }
}

void sub_10012ECB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10012ECDC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained audioCallControlsViewControllerDidTapVideoStreamingButton];
}

void sub_10012F104(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id sub_10012F120(uint64_t a1)
{
  v2 = [*(a1 + 32) confirmationTimeoutTimer];
  v3 = [v2 isValid];

  if (v3)
  {
    v4 = [*(a1 + 32) confirmationTimeoutTimer];
    [v4 invalidate];

    [*(a1 + 32) setConfirmationTimeoutTimer:0];
  }

  v5 = *(a1 + 32);

  return [v5 resumeCallBufferTimer];
}

void sub_10012F1A0(uint64_t a1)
{
  v2 = [*(a1 + 32) confirmationTimeoutTimer];
  v3 = [v2 isValid];

  if (v3)
  {
    v4 = [*(a1 + 32) confirmationTimeoutTimer];
    [v4 invalidate];

    [*(a1 + 32) setConfirmationTimeoutTimer:0];
  }

  [*(a1 + 32) stopCallBufferTimer];
  v5 = [*(a1 + 32) bufferSingleCallLabelView];

  if (v5)
  {
    v6 = [*(a1 + 32) bufferSingleCallLabelView];
    [v6 setAlpha:0.0];

    [*(a1 + 32) setBufferSingleCallLabelView:0];
  }

  [*(a1 + 32) stopMessagePlayback];
  +[PHSOSViewController releaseAllCallBufferDismissalAssertions];
  v10 = @"PHCallBufferCompletionReasonKey";
  v7 = [NSNumber numberWithInteger:1];
  v11 = v7;
  v8 = [NSDictionary dictionaryWithObjects:&v11 forKeys:&v10 count:1];

  v9 = +[NSNotificationCenter defaultCenter];
  [v9 postNotificationName:@"PHCallBufferCompletionNotification" object:0 userInfo:v8];
}

void sub_10012F320(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10012F3DC;
  v5[3] = &unk_100356F60;
  objc_copyWeak(&v6, (a1 + 40));
  [v4 dismissViewControllerAnimated:1 completion:v5];
  objc_destroyWeak(&v6);
}

void sub_10012F3DC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained restartCallBufferTimer];
}

void sub_10012F728(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  objc_destroyWeak((v8 + 40));
  _Block_object_dispose(va, 8);
  objc_destroyWeak((v9 - 40));
  _Unwind_Resume(a1);
}

void sub_10012F750(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    if (([WeakRetained shouldPauseSOSCallBufferTimer] & 1) == 0 && !--*(*(*(a1 + 32) + 8) + 24))
    {
      v4 = [v3 callBufferTimer];
      [v4 invalidate];

      [v3 setCallBufferTimer:0];
      v5 = [v3 bufferSingleCallLabelView];

      if (v5)
      {
        v6 = [v3 bufferSingleCallLabelView];
        [v6 setAlpha:0.0];

        [v3 setBufferSingleCallLabelView:0];
      }

      [v3 stopMessagePlayback];
      v10 = @"PHCallBufferCompletionReasonKey";
      v7 = [NSNumber numberWithInteger:0];
      v11 = v7;
      v8 = [NSDictionary dictionaryWithObjects:&v11 forKeys:&v10 count:1];

      v9 = +[NSNotificationCenter defaultCenter];
      [v9 postNotificationName:@"PHCallBufferCompletionNotification" object:0 userInfo:v8];
    }
  }
}

void sub_10013033C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 112));
  _Unwind_Resume(a1);
}

void sub_100130360(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained setHidden:1];
    WeakRetained = v2;
  }
}

void sub_100130A78(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    [WeakRetained updateTranslationBackgroundView:a2];
    WeakRetained = v4;
  }
}

void sub_100130E54(uint64_t a1)
{
  v1 = [*(a1 + 32) translationBackgroundView];
  [v1 setAlpha:1.0];
}

void sub_100130EA0(uint64_t a1)
{
  v1 = [*(a1 + 32) translationBackgroundView];
  [v1 setAlpha:0.0];
}

void sub_100130EE8(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = [*(a1 + 32) translationBackgroundView];
    [v3 removeFromSuperview];

    [*(a1 + 32) updateTranslationPosterName:*(a1 + 40)];
    v4 = [*(a1 + 32) getParticipantsView_NotWaiting];
    [*(a1 + 32) updateParticipantConstraintsForPosterName:v4];
  }
}

void sub_100132E24(uint64_t a1)
{
  v3 = +[PHUIConfiguration inCallBottomBarSpacing];
  if (v3 == 1)
  {
    v4 = 320.0;
  }

  else
  {
    v4 = dbl_1002F95D0[v3 == 2];
  }

  v14 = [*(a1 + 32) callDisplayStyleManager];
  v5 = [v14 callDisplayStyle];
  if (v5 == 3)
  {
    +[PHUIConfiguration ambientInCallControlSize];
    v7 = v6;
  }

  else
  {
    v1 = [*(a1 + 32) callDisplayStyleManager];
    if ([v1 usesLargeFormatUI] && *(*(a1 + 32) + 14) == 1)
    {
      +[PHBottomBar buttonHeightWithoutDefaultPadding];
    }

    else
    {
      +[PHBottomBarButtonConfiguration defaultHeight];
    }

    v7 = v8;
  }

  v9 = +[PHUIConfiguration inCallBottomBarSpacing];
  v10 = 30.0;
  if (v9 != 6)
  {
    v11 = +[PHUIConfiguration inCallBottomBarSpacing];
    v10 = 24.0;
    if (v11 == 3)
    {
      v10 = 30.0;
    }
  }

  v12 = v10 + v7 * 2.0;
  [*(a1 + 32) bottomMargin];
  qword_1003B0FE8 = *&v4;
  *&qword_1003B0FF0 = v12 + v13;
  if (v5 != 3)
  {
  }
}

void sub_1001333A4(id a1)
{
  v1 = +[PHUIConfiguration inCallBottomBarSpacing];
  if ((v1 - 1) > 5)
  {
    v2 = 0x4041000000000000;
  }

  else
  {
    v2 = qword_1002F95F8[(v1 - 1)];
  }

  qword_1003B1000 = v2;
}

void sub_1001333F0(id a1)
{
  v1 = +[PHUIConfiguration inCallBottomBarSpacing];
  v2 = 0;
  if ((v1 - 1) <= 5)
  {
    v2 = qword_1002F9628[(v1 - 1)];
  }

  qword_1003B1010 = v2;
}

void sub_100133CEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100133D28(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v2 = [WeakRetained delegate];
    v3 = objc_opt_respondsToSelector();

    WeakRetained = v5;
    if (v3)
    {
      v4 = [v5 delegate];
      [v4 bottomBarActionPerformed:25 withCompletionState:1 fromBar:v5];

      WeakRetained = v5;
    }
  }
}

void sub_100136724(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100136750(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setCurrentState:*(a1 + 48) animated:*(a1 + 56) animationCompletionBlock:*(a1 + 32)];
}

id sub_10013A9F0(uint64_t a1)
{
  [*(a1 + 32) setAlpha:0.0];
  v2 = *(a1 + 32);

  return [v2 setUserInteractionEnabled:0];
}

void sub_10013ABD8(uint64_t a1)
{
  v2 = [*(a1 + 32) supplementalTopRightButton];
  [v2 setAlpha:0.0];

  v3 = [*(a1 + 32) supplementalTopLeftButton];
  [v3 setAlpha:0.0];
}

uint64_t sub_10013BBBC(uint64_t a1)
{
  [*(a1 + 32) prepareButtonsForAnimationEnd];
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

id sub_10013C978(id *a1)
{
  v2 = [a1[4] action];
  if (v2 == 32)
  {
    v3 = 1.0;
    if ([a1[5] shouldShowUseRTTButton])
    {
      v4 = 1.0;
    }

    else
    {
      v4 = 0.0;
    }
  }

  else
  {
    v4 = 1.0;
    v3 = 0.0;
  }

  v5 = [a1[5] supplementalBottomLeftButton];
  [v5 setAlpha:v3];

  v6 = [a1[5] supplementalBottomLeftButton];
  [v6 setEnabled:v2 == 32];

  [a1[6] setAlpha:0.0];
  [a1[4] setAlpha:v4];
  v7 = a1[4];

  return [v7 setEnabled:v4 != 0.0];
}

uint64_t sub_10013CA54(uint64_t result)
{
  if (*(result + 40))
  {
    v1 = result;
    [*(result + 32) removeFromSuperview];
    v2 = *(*(v1 + 40) + 16);

    return v2();
  }

  return result;
}

uint64_t sub_10013D364(uint64_t a1)
{
  if ([*(a1 + 32) currentState] == *(a1 + 56))
  {
    [*(a1 + 40) removeFromSuperview];
  }

  result = *(a1 + 48);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

void sub_10013D57C(uint64_t a1, int a2)
{
  if (a2)
  {
    v2 = [*(a1 + 32) sideButtonLeft];
    [v2 removeFromSuperview];
  }
}

uint64_t sub_10013D5C8(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = [*(a1 + 32) mainLeftButton];
    [v3 removeFromSuperview];
  }

  v4 = *(*(a1 + 40) + 16);

  return v4();
}

id sub_10013D8A0(uint64_t a1)
{
  [*(a1 + 32) setAlpha:0.0];
  v2 = *(a1 + 40);

  return [v2 setAlpha:1.0];
}

uint64_t sub_10013D8E4(uint64_t a1)
{
  if ([*(a1 + 32) currentState] == *(a1 + 56))
  {
    [*(a1 + 40) removeFromSuperview];
  }

  result = *(a1 + 48);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

void sub_10013DB68(uint64_t a1)
{
  v2 = [*(a1 + 32) sideButtonLeft];
  v3 = [*(a1 + 32) mainLeftButton];
  v4 = [*(a1 + 32) sideButtonRight];
  [*(a1 + 32) setMainLeftButton:*(a1 + 40)];
  [*(a1 + 32) setSideButtonRight:*(a1 + 48)];
  [*(a1 + 32) setSideButtonLeft:*(a1 + 56)];
  [*(a1 + 32) addSubview:*(*(a1 + 32) + 120)];
  [*(a1 + 32) addSubview:*(*(a1 + 32) + 144)];
  [*(a1 + 32) addSubview:*(*(a1 + 32) + 136)];
  v5 = [*(a1 + 32) buttonLayoutConstraints];

  if (v5)
  {
    v6 = *(a1 + 32);
    v7 = [v6 buttonLayoutConstraints];
    [v6 removeConstraints:v7];
  }

  v8 = [*(a1 + 32) constraintsForState:17];
  [*(a1 + 32) setButtonLayoutConstraints:v8];

  v9 = *(a1 + 32);
  v10 = [v9 buttonLayoutConstraints];
  [v9 addConstraints:v10];

  [*(a1 + 32) setNeedsLayout];
  [*(a1 + 32) layoutIfNeeded];
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_10013DE3C;
  v22[3] = &unk_100359098;
  v23 = v2;
  v24 = v3;
  v25 = v4;
  v26 = *(a1 + 56);
  v27 = *(a1 + 48);
  v28 = *(a1 + 40);
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10013DEB0;
  v16[3] = &unk_100359F38;
  v11 = *(a1 + 32);
  v12 = *(a1 + 64);
  v21 = *(a1 + 72);
  v16[4] = v11;
  v17 = v23;
  v18 = v25;
  v19 = v24;
  v20 = v12;
  v13 = v24;
  v14 = v25;
  v15 = v23;
  [UIView animateWithDuration:v22 animations:v16 completion:0.25];
}

id sub_10013DE3C(uint64_t a1)
{
  [*(a1 + 32) setAlpha:0.0];
  [*(a1 + 40) setAlpha:0.0];
  [*(a1 + 48) setAlpha:0.0];
  [*(a1 + 56) setAlpha:1.0];
  [*(a1 + 64) setAlpha:1.0];
  v2 = *(a1 + 72);

  return [v2 setAlpha:1.0];
}

uint64_t sub_10013DEB0(uint64_t a1)
{
  if ([*(a1 + 32) currentState] == *(a1 + 72))
  {
    [*(a1 + 40) removeFromSuperview];
    [*(a1 + 48) removeFromSuperview];
    [*(a1 + 56) removeFromSuperview];
  }

  result = *(a1 + 64);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

void sub_10013E770(uint64_t a1)
{
  v2 = [*(a1 + 32) mainLeftButton];
  [v2 setAlpha:0.0];

  v3 = [*(a1 + 32) supplementalTopLeftButton];
  [v3 setAlpha:0.0];

  v4 = [*(a1 + 32) supplementalTopRightButton];
  [v4 setAlpha:0.0];
}

uint64_t sub_10013E7FC(uint64_t a1)
{
  if ([*(a1 + 32) currentState] == *(a1 + 64))
  {
    [*(a1 + 40) removeFromSuperview];
    [*(a1 + 48) removeFromSuperview];
    v2 = [*(a1 + 32) mainLeftButton];
    [v2 removeFromSuperview];

    v3 = [*(a1 + 32) mainRightButton];
    [*(a1 + 32) setMainLeftButton:v3];

    [*(a1 + 32) setMainRightButton:0];
    v4 = [*(a1 + 32) supplementalBottomRightButton];
    [v4 removeFromSuperview];

    v5 = [*(a1 + 32) useRTTButton];
    [*(a1 + 32) setSupplementalBottomRightButton:v5];

    v6 = [*(a1 + 32) shouldShowUseRTTButton];
    v7 = [*(a1 + 32) supplementalBottomRightButton];
    [v7 setAlpha:v6];

    v8 = *(a1 + 32);
    v9 = [v8 supplementalBottomRightButton];
    [v8 addSubview:v9];

    v10 = *(a1 + 32);
    v11 = [v10 buttonLayoutConstraints];
    [v10 removeConstraints:v11];

    v12 = [*(a1 + 32) constraintsForState:*(a1 + 64)];
    [*(a1 + 32) setButtonLayoutConstraints:v12];

    v13 = *(a1 + 32);
    v14 = [v13 buttonLayoutConstraints];
    [v13 addConstraints:v14];

    [*(a1 + 32) setNeedsLayout];
    [*(a1 + 32) layoutIfNeeded];
  }

  result = *(a1 + 56);
  if (result)
  {
    v16 = *(result + 16);

    return v16();
  }

  return result;
}

id sub_10013F9EC(uint64_t a1)
{
  v2 = [*(a1 + 32) supplementalTopLeftButton];
  [v2 setAlpha:0.0];

  v3 = [*(a1 + 32) supplementalTopRightButton];
  [v3 setAlpha:0.0];

  v4 = *(a1 + 40);

  return [v4 setTitle:0 forState:0];
}

void sub_10013FA60(uint64_t a1)
{
  v2 = [*(a1 + 32) supplementalTopLeftButton];
  [v2 removeFromSuperview];

  v3 = [*(a1 + 32) supplementalTopRightButton];
  [v3 removeFromSuperview];
}

id sub_10013FAC8(uint64_t a1)
{
  if ([*(a1 + 32) currentState] == *(a1 + 64))
  {
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10013FC98;
    v12[3] = &unk_100356988;
    v12[4] = *(a1 + 32);
    [UIView animateWithDuration:0x20000 delay:v12 options:*(a1 + 56) animations:0.25 completion:0.50999999];
    [*(a1 + 40) removeFromSuperview];
    [*(a1 + 48) removeFromSuperview];
    v2 = [*(a1 + 32) makeButtonWithType:15 title:0 image:0 color:0 font:0 fontColor:0];
    [*(a1 + 32) setMainLeftButton:v2];

    v3 = *(a1 + 32);
    v4 = [v3 mainLeftButton];
    [v3 addSubview:v4];

    v5 = *(a1 + 32);
    v6 = [v5 buttonLayoutConstraints];
    [v5 removeConstraints:v6];

    v7 = [*(a1 + 32) constraintsForState:*(a1 + 64)];
    [*(a1 + 32) setButtonLayoutConstraints:v7];

    v8 = *(a1 + 32);
    v9 = [v8 buttonLayoutConstraints];
    [v8 addConstraints:v9];

    [*(a1 + 32) setNeedsLayout];
    return [*(a1 + 32) layoutIfNeeded];
  }

  else
  {
    v11 = *(*(a1 + 56) + 16);

    return v11();
  }
}

id sub_10013FC98(uint64_t a1)
{
  [*(*(a1 + 32) + 136) setAlpha:1.0];
  v2 = *(*(a1 + 32) + 144);

  return [v2 setAlpha:1.0];
}

NSArray *__cdecl sub_100140034(id a1, UIButton *a2)
{
  v2 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v2;
    v3 = [NSArray arrayWithObjects:&v5 count:1];
  }

  else
  {
    v3 = &__NSArray0__struct;
  }

  return v3;
}

uint64_t sub_100140FFC(uint64_t a1)
{
  v1 = [objc_alloc(*(a1 + 32)) initWithInterval:1.0];
  v2 = qword_1003B1020;
  qword_1003B1020 = v1;

  return _objc_release_x1(v1, v2);
}

id sub_10014128C(uint64_t a1)
{
  v2 = [*(a1 + 32) observers];
  [v2 addObject:*(a1 + 40)];

  v3 = +[NSNotificationCenter defaultCenter];
  [v3 addObserver:*(a1 + 40) selector:*(a1 + 48) name:@"PHIntervalTimerNotification" object:*(a1 + 32)];

  v4 = *(a1 + 32);

  return [v4 _createTimerIfNecessary];
}

id sub_1001413BC(uint64_t a1)
{
  v2 = [*(a1 + 32) observers];
  [v2 removeObject:*(a1 + 40)];

  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:*(a1 + 40) name:@"PHIntervalTimerNotification" object:*(a1 + 32)];

  v4 = *(a1 + 32);

  return [v4 _invalidateTimerIfNecessary];
}

void sub_1001414BC(uint64_t a1)
{
  v1 = [*(a1 + 32) timer];
  [v1 fire];
}

void sub_100141588(uint64_t a1)
{
  v2 = sub_100004F84();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Pausing interval timer", v4, 2u);
  }

  v3 = [*(a1 + 32) timer];
  [v3 invalidate];
}

void sub_100141694(uint64_t a1)
{
  v2 = sub_100004F84();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Resuming interval timer", v6, 2u);
  }

  [*(a1 + 32) _createTimerIfNecessary];
  v3 = [*(a1 + 32) timer];
  v4 = [v3 isValid];

  if (v4)
  {
    v5 = [*(a1 + 32) timer];
    [v5 fire];
  }
}