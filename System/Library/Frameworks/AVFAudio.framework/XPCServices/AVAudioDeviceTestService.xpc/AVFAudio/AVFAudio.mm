uint64_t sub_1000010B4(uint64_t a1, int a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9)
{
  *a1 = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = a4;
  *(a1 + 40) = 0;
  *(a1 + 72) = a3;
  *(a1 + 80) = 0;
  v11 = fmax(a6, 1.0);
  v12 = fmin(a8, v11);
  v13 = 0.0;
  if (v12 != 0.0)
  {
    v13 = a3 / (1000.0 / v12);
  }

  *(a1 + 64) = v13;
  if (a2)
  {
    v14 = a2;
  }

  else
  {
    v14 = -1;
  }

  *(a1 + 52) = v14;
  *(a1 + 56) = (a3 / (1000.0 / v11));
  if (a7 == 0.0)
  {
    v15 = 0;
  }

  else
  {
    v15 = (a3 / (1000.0 / a7));
  }

  *(a1 + 60) = v15;
  v16 = fmax(a9, 0.0);
  if (v16 == 0.0)
  {
    v17 = 0;
  }

  else
  {
    v17 = (a3 / (-1000.0 / v16));
  }

  *(a1 + 48) = v17;
  v18 = a5 * 0.05;
  v19 = __exp10f(v18);
  v20 = v19;
  if (v19 > 1.0)
  {
    if (qword_100025DE0 != -1)
    {
      dispatch_once(&qword_100025DE0, &stru_1000204C0);
    }

    v21 = *qword_100025DE8;
    if (os_log_type_enabled(*qword_100025DE8, OS_LOG_TYPE_ERROR))
    {
      v23 = 136315650;
      v24 = "PulseTone.mm";
      v25 = 1024;
      v26 = 142;
      v27 = 2048;
      v28 = v20;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "%25s:%-5d Playing tone above amplitude of 1.0. { amplitude=%f }", &v23, 0x1Cu);
    }
  }

  *(a1 + 32) = v20;
  *(a1 + 8) = (*(a1 + 64) + *(a1 + 56)) / a3;
  return a1;
}

uint64_t start()
{
  v0 = objc_opt_new();
  v1 = +[NSXPCListener serviceListener];
  [v1 setDelegate:v0];
  [v1 resume];

  return 0;
}

uint64_t *sub_1000022D4(uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {

    operator delete();
  }

  return result;
}

void sub_10000279C(_Unwind_Exception *a1)
{
  v3 = v1;

  _Unwind_Resume(a1);
}

void sub_100003240(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 userInfo];
  v5 = [v4 objectForKeyedSubscript:AVAudioSessionRouteChangeReasonKey];
  v6 = [v5 unsignedIntegerValue];

  v7 = [*(a1 + 32) stringForRouteChangeReason:v6];
  if (qword_100025DF0 != -1)
  {
    dispatch_once(&qword_100025DF0, &stru_100020500);
  }

  v8 = *qword_100025DF8;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v3 userInfo];
    v11 = 136315906;
    v12 = "AVAudioDeviceTestService.mm";
    v13 = 1024;
    v14 = 1731;
    v15 = 2112;
    v16 = v7;
    v17 = 2112;
    v18 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%25s:%-5d route change (%@) - %@", &v11, 0x26u);
  }

  v10 = [NSError errorWithDomain:@"com.apple.avfaudio.devicetest.service" code:-2 userInfo:0];
  (*(*(a1 + 40) + 16))();
}

void sub_100003454(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 userInfo];
  v5 = [v4 objectForKeyedSubscript:AVAudioSessionInterruptionTypeKey];

  if (v5)
  {
    v6 = [v5 unsignedIntegerValue];
    v7 = [v3 userInfo];
    v8 = [v7 objectForKeyedSubscript:AVAudioSessionInterruptionReasonKey];
    v9 = [v8 unsignedIntegerValue];

    v10 = [*(a1 + 32) stringForInterruptionReason:v9];
    if (v6)
    {
      if (v6 == 1)
      {
        if (qword_100025DF0 != -1)
        {
          dispatch_once(&qword_100025DF0, &stru_100020500);
        }

        v11 = *qword_100025DF8;
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          v12 = [v3 userInfo];
          v18 = 136315906;
          v19 = "AVAudioDeviceTestService.mm";
          v20 = 1024;
          v21 = 1765;
          v22 = 2114;
          v23 = v10;
          v24 = 2114;
          v25 = v12;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Interruption began (%{public}@) - %{public}@", &v18, 0x26u);
        }

        v13 = [NSError errorWithDomain:@"com.apple.avfaudio.devicetest.service" code:-16 userInfo:0];
        (*(*(a1 + 40) + 16))();
      }

      else
      {
        if (qword_100025DF0 != -1)
        {
          dispatch_once(&qword_100025DF0, &stru_100020500);
        }

        v17 = *qword_100025DF8;
        if (os_log_type_enabled(*qword_100025DF8, OS_LOG_TYPE_DEFAULT))
        {
          v18 = 136315394;
          v19 = "AVAudioDeviceTestService.mm";
          v20 = 1024;
          v21 = 1784;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Unhandled interruption type", &v18, 0x12u);
        }

        v13 = [NSError errorWithDomain:@"com.apple.avfaudio.devicetest.service" code:-3 userInfo:0];
        (*(*(a1 + 40) + 16))();
      }
    }

    else
    {
      if (qword_100025DF0 != -1)
      {
        dispatch_once(&qword_100025DF0, &stru_100020500);
      }

      v15 = *qword_100025DF8;
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = [v3 userInfo];
        v18 = 136315906;
        v19 = "AVAudioDeviceTestService.mm";
        v20 = 1024;
        v21 = 1775;
        v22 = 2114;
        v23 = v10;
        v24 = 2114;
        v25 = v16;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Interruption ended (%{public}@) - %{public}@", &v18, 0x26u);
      }

      v13 = [NSError errorWithDomain:@"com.apple.avfaudio.devicetest.service" code:-17 userInfo:0];
      (*(*(a1 + 40) + 16))();
    }
  }

  else
  {
    if (qword_100025DF0 != -1)
    {
      dispatch_once(&qword_100025DF0, &stru_100020500);
    }

    v14 = *qword_100025DF8;
    if (os_log_type_enabled(*qword_100025DF8, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 136315650;
      v19 = "AVAudioDeviceTestService.mm";
      v20 = 1024;
      v21 = 1749;
      v22 = 2112;
      v23 = v3;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%25s:%-5d No AVAudioSessionInterruptionTypeKey. note: %@", &v18, 0x1Cu);
    }

    v10 = [NSError errorWithDomain:@"com.apple.avfaudio.devicetest.service" code:-3 userInfo:0];
    (*(*(a1 + 40) + 16))();
  }
}

void sub_1000039A8(uint64_t a1, void *a2)
{
  v3 = a2;
  if (qword_100025DF0 != -1)
  {
    dispatch_once(&qword_100025DF0, &stru_100020500);
  }

  v4 = *qword_100025DF8;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [v3 userInfo];
    v6 = sub_100003D50(-4);
    v8 = 136315906;
    v9 = "AVAudioDeviceTestService.mm";
    v10 = 1024;
    v11 = 1799;
    v12 = 2112;
    v13 = v5;
    v14 = 2048;
    v15 = [v6 code];
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%25s:%-5d mediaserverd/audiomxd died (%@) with test error (%li)", &v8, 0x26u);
  }

  v7 = [NSError errorWithDomain:@"com.apple.avfaudio.devicetest.service" code:-4 userInfo:0];
  (*(*(a1 + 32) + 16))();
}

void sub_100003B7C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (qword_100025DF0 != -1)
  {
    dispatch_once(&qword_100025DF0, &stru_100020500);
  }

  v4 = *qword_100025DF8;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [v3 userInfo];
    v6 = sub_100003D50(-5);
    v8 = 136315906;
    v9 = "AVAudioDeviceTestService.mm";
    v10 = 1024;
    v11 = 1810;
    v12 = 2112;
    v13 = v5;
    v14 = 2048;
    v15 = [v6 code];
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%25s:%-5d mediaserverd/audiomxd was reset (%@) with test error (%li)", &v8, 0x26u);
  }

  v7 = [NSError errorWithDomain:@"com.apple.avfaudio.devicetest.service" code:-5 userInfo:0];
  (*(*(a1 + 32) + 16))();
}

id sub_100003D50(uint64_t a1)
{
  if (qword_100025DF0 != -1)
  {
    dispatch_once(&qword_100025DF0, &stru_100020500);
  }

  v2 = *qword_100025DF8;
  if (os_log_type_enabled(*qword_100025DF8, OS_LOG_TYPE_ERROR))
  {
    v5 = 136315650;
    v6 = "AVAudioDeviceTestService.mm";
    v7 = 1024;
    v8 = 163;
    v9 = 2048;
    v10 = a1;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "%25s:%-5d error code %li", &v5, 0x1Cu);
  }

  v3 = [NSError errorWithDomain:NSCocoaErrorDomain code:a1 userInfo:0];

  return v3;
}

void sub_100004070(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1000040D0(void *result, uint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    operator new();
  }

  return result;
}

void sub_1000041DC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_100004830(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;

  a9.super_class = AVAudioDeviceTestService;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1000067D4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 userInfo];
  v5 = [v4 objectForKey:AVSystemController_AudioVolumeNotificationParameter];

  [v5 floatValue];
  v6 = *(a1 + 32);
  v8 = vabds_f32(v7, v6);
  v9 = fabsf(v7 + v6);
  v10 = (v9 * 0.00000011921) + (v9 * 0.00000011921);
  if (v8 >= 1.1755e-38 && v8 > v10)
  {
    v12 = +[AVSystemController sharedAVSystemController];
    LODWORD(v13) = *(a1 + 32);
    [v12 setActiveCategoryVolumeTo:v13];

    if (qword_100025DF0 != -1)
    {
      dispatch_once(&qword_100025DF0, &stru_100020500);
    }

    v14 = *qword_100025DF8;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      [v5 floatValue];
      v15 = *(a1 + 32);
      v17 = 136315906;
      v18 = "AVAudioDeviceTestService.mm";
      v19 = 1024;
      v20 = 1445;
      v21 = 2048;
      v22 = v16;
      v23 = 2048;
      v24 = v15;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Volume not as expected, updating volume. { current=%f, expected=%f }", &v17, 0x26u);
    }
  }
}

void sub_100006B3C(uint64_t a1)
{
  if (qword_100025DF0 != -1)
  {
    dispatch_once(&qword_100025DF0, &stru_100020500);
  }

  v2 = *qword_100025DF8;
  if (os_log_type_enabled(*qword_100025DF8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v19 = "AVAudioDeviceTestService.mm";
    v20 = 1024;
    v21 = 1378;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Attempting to stop audio session for HearingTest.", buf, 0x12u);
  }

  v3 = [*(a1 + 32) hearingTestSession];
  if (!v3)
  {
    goto LABEL_8;
  }

  v4 = [*(a1 + 32) hearingTestSession];
  if (v4)
  {
    v5 = [*(a1 + 32) hearingTestSession];
    v6 = [v5 isActive];

    if ((v6 & 1) == 0)
    {
LABEL_8:
      if (qword_100025DF0 != -1)
      {
        dispatch_once(&qword_100025DF0, &stru_100020500);
      }

      v7 = *qword_100025DF8;
      if (os_log_type_enabled(*qword_100025DF8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v19 = "AVAudioDeviceTestService.mm";
        v20 = 1024;
        v21 = 1383;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Hearing test audio session is not active, cannot de-activate it.", buf, 0x12u);
      }

      v8 = 0;
      (*(*(a1 + 40) + 16))();
      goto LABEL_26;
    }
  }

  else
  {
  }

  v9 = [*(a1 + 32) hearingTestSession];
  v17 = 0;
  [v9 setActive:0 error:&v17];
  v10 = v17;

  if (v10)
  {
    if (qword_100025DF0 != -1)
    {
      dispatch_once(&qword_100025DF0, &stru_100020500);
    }

    v11 = *qword_100025DF8;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = [v10 localizedDescription];
      *buf = 136315650;
      v19 = "AVAudioDeviceTestService.mm";
      v20 = 1024;
      v21 = 1390;
      v22 = 2114;
      v23 = v12;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed de-activate audio session. { error=%{public}@ }", buf, 0x1Cu);
    }

    v13 = [NSError errorWithDomain:@"com.apple.avfaudio.devicetest.service" code:-14 userInfo:0];

    v8 = v13;
  }

  else
  {
    if (qword_100025DF0 != -1)
    {
      dispatch_once(&qword_100025DF0, &stru_100020500);
    }

    v14 = *qword_100025DF8;
    if (os_log_type_enabled(*qword_100025DF8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v19 = "AVAudioDeviceTestService.mm";
      v20 = 1024;
      v21 = 1393;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%25s:%-5d De-activated audio session.", buf, 0x12u);
    }

    v8 = 0;
  }

  v15 = *(a1 + 32);
  v16 = [v15 userVolumeBeforeHearingTest];
  [v16 floatValue];
  [v15 resetVolume:?];

  [*(a1 + 32) cleanUpObservers];
  (*(*(a1 + 40) + 16))();
LABEL_26:
}

void sub_100007068(uint64_t a1)
{
  if (qword_100025DF0 != -1)
  {
    dispatch_once(&qword_100025DF0, &stru_100020500);
  }

  v2 = *qword_100025DF8;
  if (os_log_type_enabled(*qword_100025DF8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v35 = "AVAudioDeviceTestService.mm";
    v36 = 1024;
    v37 = 1327;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Setting up audio session with Playback category for HearingTest.", buf, 0x12u);
  }

  v3 = +[AVAudioSession sharedInstance];
  [*(a1 + 32) setHearingTestSession:v3];

  v4 = [*(a1 + 32) hearingTestSession];
  v33 = 0;
  v5 = [v4 setCategory:AVAudioSessionCategoryPlayback error:&v33];
  v6 = v33;

  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = v5;
  }

  if (v7)
  {
    v8 = [*(a1 + 32) hearingTestSession];
    v32 = 0;
    v9 = [v8 setMode:AVAudioSessionModeRaw error:&v32];
    v10 = v32;

    if (v10)
    {
      v11 = 0;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      v12 = [*(a1 + 32) hearingTestSession];
      v31 = 0;
      v13 = [v12 setEligibleForBTSmartRoutingConsideration:0 error:&v31];
      v14 = v31;

      if (v14)
      {
        v15 = 0;
      }

      else
      {
        v15 = v13;
      }

      if (v15)
      {
        v16 = [*(a1 + 32) hearingTestSession];
        v30 = 0;
        v17 = [v16 setActive:1 error:&v30];
        v18 = v30;

        if (v18)
        {
          v19 = 0;
        }

        else
        {
          v19 = v17;
        }

        if (v19)
        {
          if (qword_100025DF0 != -1)
          {
            dispatch_once(&qword_100025DF0, &stru_100020500);
          }

          v20 = *qword_100025DF8;
          if (os_log_type_enabled(*qword_100025DF8, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315394;
            v35 = "AVAudioDeviceTestService.mm";
            v36 = 1024;
            v37 = 1367;
            _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Setup and activated audio session for HearingTest.", buf, 0x12u);
          }

          [*(a1 + 32) setupObservers:*(a1 + 40)];
          (*(*(a1 + 48) + 16))();
          v21 = 0;
        }

        else
        {
          if (qword_100025DF0 != -1)
          {
            dispatch_once(&qword_100025DF0, &stru_100020500);
          }

          v28 = *qword_100025DF8;
          if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
          {
            v29 = [v18 localizedDescription];
            *buf = 136315650;
            v35 = "AVAudioDeviceTestService.mm";
            v36 = 1024;
            v37 = 1361;
            v38 = 2114;
            v39 = v29;
            _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to set active. { error=%{public}@ }", buf, 0x1Cu);
          }

          v21 = [NSError errorWithDomain:@"com.apple.avfaudio.devicetest.service" code:-1 userInfo:0];

          (*(*(a1 + 40) + 16))();
        }
      }

      else
      {
        if (qword_100025DF0 != -1)
        {
          dispatch_once(&qword_100025DF0, &stru_100020500);
        }

        v26 = *qword_100025DF8;
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          v27 = [v14 localizedDescription];
          *buf = 136315650;
          v35 = "AVAudioDeviceTestService.mm";
          v36 = 1024;
          v37 = 1352;
          v38 = 2114;
          v39 = v27;
          _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to disable smart routing. { error=%{public}@ }", buf, 0x1Cu);
        }

        v21 = [NSError errorWithDomain:@"com.apple.avfaudio.devicetest.service" code:-1 userInfo:0];

        (*(*(a1 + 40) + 16))();
      }
    }

    else
    {
      if (qword_100025DF0 != -1)
      {
        dispatch_once(&qword_100025DF0, &stru_100020500);
      }

      v24 = *qword_100025DF8;
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        v25 = [v10 localizedDescription];
        *buf = 136315650;
        v35 = "AVAudioDeviceTestService.mm";
        v36 = 1024;
        v37 = 1343;
        v38 = 2114;
        v39 = v25;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to set mode. { error=%{public}@ }", buf, 0x1Cu);
      }

      v21 = [NSError errorWithDomain:@"com.apple.avfaudio.devicetest.service" code:-1 userInfo:0];

      (*(*(a1 + 40) + 16))();
    }
  }

  else
  {
    if (qword_100025DF0 != -1)
    {
      dispatch_once(&qword_100025DF0, &stru_100020500);
    }

    v22 = *qword_100025DF8;
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = [v6 localizedDescription];
      *buf = 136315650;
      v35 = "AVAudioDeviceTestService.mm";
      v36 = 1024;
      v37 = 1335;
      v38 = 2114;
      v39 = v23;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to set category. { error=%{public}@ }", buf, 0x1Cu);
    }

    v21 = [NSError errorWithDomain:@"com.apple.avfaudio.devicetest.service" code:-1 userInfo:0];

    (*(*(a1 + 40) + 16))();
  }
}

void sub_100007868(uint64_t a1)
{
  if (qword_100025DF0 != -1)
  {
    dispatch_once(&qword_100025DF0, &stru_100020500);
  }

  v2 = *qword_100025DF8;
  if (os_log_type_enabled(*qword_100025DF8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v35 = "AVAudioDeviceTestService.mm";
    v36 = 1024;
    v37 = 1277;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Setting up audio session with Playback category for HearingTest.", buf, 0x12u);
  }

  v3 = +[AVAudioSession sharedInstance];
  [*(a1 + 32) setHearingTestSession:v3];

  v4 = [*(a1 + 32) hearingTestSession];
  v33 = 0;
  v5 = [v4 setCategory:AVAudioSessionCategoryPlayback error:&v33];
  v6 = v33;

  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = v5;
  }

  if (v7)
  {
    v8 = [*(a1 + 32) hearingTestSession];
    v32 = 0;
    v9 = [v8 setMode:AVAudioSessionModeRaw error:&v32];
    v10 = v32;

    if (v10)
    {
      v11 = 0;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      v12 = [*(a1 + 32) hearingTestSession];
      v31 = 0;
      v13 = [v12 setEligibleForBTSmartRoutingConsideration:0 error:&v31];
      v14 = v31;

      if (v14)
      {
        v15 = 0;
      }

      else
      {
        v15 = v13;
      }

      if (v15)
      {
        v16 = [*(a1 + 32) hearingTestSession];
        v30 = 0;
        v17 = [v16 setActive:1 error:&v30];
        v18 = v30;

        if (v18)
        {
          v19 = 0;
        }

        else
        {
          v19 = v17;
        }

        if (v19)
        {
          if (qword_100025DF0 != -1)
          {
            dispatch_once(&qword_100025DF0, &stru_100020500);
          }

          v20 = *qword_100025DF8;
          if (os_log_type_enabled(*qword_100025DF8, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315394;
            v35 = "AVAudioDeviceTestService.mm";
            v36 = 1024;
            v37 = 1317;
            _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Setup and activated audio session for HearingTest.", buf, 0x12u);
          }

          [*(a1 + 32) setupObservers:*(a1 + 40)];
          v21 = 0;
        }

        else
        {
          if (qword_100025DF0 != -1)
          {
            dispatch_once(&qword_100025DF0, &stru_100020500);
          }

          v28 = *qword_100025DF8;
          if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
          {
            v29 = [v18 localizedDescription];
            *buf = 136315650;
            v35 = "AVAudioDeviceTestService.mm";
            v36 = 1024;
            v37 = 1311;
            v38 = 2114;
            v39 = v29;
            _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to set active. { error=%{public}@ }", buf, 0x1Cu);
          }

          v21 = [NSError errorWithDomain:@"com.apple.avfaudio.devicetest.service" code:-1 userInfo:0];

          (*(*(a1 + 40) + 16))();
        }
      }

      else
      {
        if (qword_100025DF0 != -1)
        {
          dispatch_once(&qword_100025DF0, &stru_100020500);
        }

        v26 = *qword_100025DF8;
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          v27 = [v14 localizedDescription];
          *buf = 136315650;
          v35 = "AVAudioDeviceTestService.mm";
          v36 = 1024;
          v37 = 1302;
          v38 = 2114;
          v39 = v27;
          _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to disable smart routing. { error=%{public}@ }", buf, 0x1Cu);
        }

        v21 = [NSError errorWithDomain:@"com.apple.avfaudio.devicetest.service" code:-1 userInfo:0];

        (*(*(a1 + 40) + 16))();
      }
    }

    else
    {
      if (qword_100025DF0 != -1)
      {
        dispatch_once(&qword_100025DF0, &stru_100020500);
      }

      v24 = *qword_100025DF8;
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        v25 = [v10 localizedDescription];
        *buf = 136315650;
        v35 = "AVAudioDeviceTestService.mm";
        v36 = 1024;
        v37 = 1293;
        v38 = 2114;
        v39 = v25;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to set mode. { error=%{public}@ }", buf, 0x1Cu);
      }

      v21 = [NSError errorWithDomain:@"com.apple.avfaudio.devicetest.service" code:-1 userInfo:0];

      (*(*(a1 + 40) + 16))();
    }
  }

  else
  {
    if (qword_100025DF0 != -1)
    {
      dispatch_once(&qword_100025DF0, &stru_100020500);
    }

    v22 = *qword_100025DF8;
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = [v6 localizedDescription];
      *buf = 136315650;
      v35 = "AVAudioDeviceTestService.mm";
      v36 = 1024;
      v37 = 1285;
      v38 = 2114;
      v39 = v23;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to set category. { error=%{public}@ }", buf, 0x1Cu);
    }

    v21 = [NSError errorWithDomain:@"com.apple.avfaudio.devicetest.service" code:-1 userInfo:0];

    (*(*(a1 + 40) + 16))();
  }
}

void sub_100008BAC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) inputTapFile];
  v9 = 0;
  v5 = [v4 writeFromBuffer:v3 error:&v9];
  v6 = v9;

  if ((v5 & 1) == 0)
  {
    if (qword_100025DF0 != -1)
    {
      dispatch_once(&qword_100025DF0, &stru_100020500);
    }

    v7 = *qword_100025DF8;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = [*(a1 + 40) localizedDescription];
      *buf = 136315650;
      v11 = "AVAudioDeviceTestService.mm";
      v12 = 1024;
      v13 = 1224;
      v14 = 2112;
      v15 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d error writing debug file %@", buf, 0x1Cu);
    }
  }
}

id sub_100008F94(uint64_t a1)
{
  if (qword_100025DF0 != -1)
  {
    dispatch_once(&qword_100025DF0, &stru_100020500);
  }

  v2 = *qword_100025DF8;
  if (os_log_type_enabled(*qword_100025DF8, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 136315394;
    v14 = "AVAudioDeviceTestService.mm";
    v15 = 1024;
    v16 = 1161;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%25s:%-5d [AVAT Server] Stop tone playback requested.", &v13, 0x12u);
  }

  v3 = *(*(a1 + 32) + 8);
  if (v3)
  {
    *v3 = 1;
    if (qword_100025DF0 != -1)
    {
      dispatch_once(&qword_100025DF0, &stru_100020500);
    }

    v4 = *qword_100025DF8;
    if (os_log_type_enabled(*qword_100025DF8, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(*(*(a1 + 32) + 8) + 24);
      v13 = 136315650;
      v14 = "AVAudioDeviceTestService.mm";
      v15 = 1024;
      v16 = 1165;
      v17 = 2048;
      v18 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%25s:%-5d [AVAT Server] Tone has been stopped. { frequency=%f }", &v13, 0x1Cu);
    }

    [NSThread sleepForTimeInterval:*(*(*(a1 + 32) + 8) + 8)];
  }

  else
  {
    if (qword_100025DF0 != -1)
    {
      dispatch_once(&qword_100025DF0, &stru_100020500);
    }

    v6 = *qword_100025DF8;
    if (os_log_type_enabled(*qword_100025DF8, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 136315394;
      v14 = "AVAudioDeviceTestService.mm";
      v15 = 1024;
      v16 = 1168;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%25s:%-5d [AVAT Server] Tone stop requested but, pulse tone handler is nil", &v13, 0x12u);
    }
  }

  v7 = *(a1 + 32);
  v8 = [v7 userVolumeBeforeHearingTest];
  [v8 floatValue];
  [v7 resetVolume:?];

  [*(a1 + 32) removeSystemVolumeObserver];
  v9 = sub_10000929C();
  v10 = sub_10000931C();
  if ((v10 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v11 = v10;
    if (os_signpost_enabled(v9))
    {
      LOWORD(v13) = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v9, OS_SIGNPOST_INTERVAL_END, v11, "AVF tone playback", "user tap", &v13, 2u);
    }
  }

  return [*(a1 + 32) cleanUp];
}

id sub_10000929C()
{
  p_weak_ivar_lyt = &AVAudioDeviceTestService__classData.weak_ivar_lyt;
  if ((atomic_load_explicit(&qword_100025E20, memory_order_acquire) & 1) == 0)
  {
    v4 = __cxa_guard_acquire(&qword_100025E20);
    p_weak_ivar_lyt = (&AVAudioDeviceTestService__classData + 56);
    if (v4)
    {
      qword_100025E18 = os_log_create("com.apple.avfaudio", "adtssp");
      __cxa_guard_release(&qword_100025E20);
      p_weak_ivar_lyt = (&AVAudioDeviceTestService__classData + 56);
    }
  }

  v2 = p_weak_ivar_lyt[451];

  return v2;
}

uint64_t sub_10000931C()
{
  if ((atomic_load_explicit(&qword_100025E30, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_100025E30))
  {
    v1 = sub_10000929C();
    v2 = os_signpost_id_generate(v1);

    qword_100025E28 = v2;
    __cxa_guard_release(&qword_100025E30);
  }

  return qword_100025E28;
}

intptr_t sub_10000A51C(uint64_t a1)
{
  if (qword_100025DF0 != -1)
  {
    dispatch_once(&qword_100025DF0, &stru_100020500);
  }

  v2 = *qword_100025DF8;
  if (os_log_type_enabled(*qword_100025DF8, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315394;
    v5 = "AVAudioDeviceTestService.mm";
    v6 = 1024;
    v7 = 1112;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%25s:%-5d player finished", &v4, 0x12u);
  }

  (*(*(a1 + 40) + 16))();
  return dispatch_semaphore_signal(*(a1 + 32));
}

void sub_10000A620(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) inputTapFile];
  v9 = 0;
  v5 = [v4 writeFromBuffer:v3 error:&v9];
  v6 = v9;

  if ((v5 & 1) == 0)
  {
    if (qword_100025DF0 != -1)
    {
      dispatch_once(&qword_100025DF0, &stru_100020500);
    }

    v7 = *qword_100025DF8;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = [v6 localizedDescription];
      *buf = 136315650;
      v11 = "AVAudioDeviceTestService.mm";
      v12 = 1024;
      v13 = 1133;
      v14 = 2112;
      v15 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d error writing debug file %@", buf, 0x1Cu);
    }
  }
}

void sub_10000A8A0(id *a1)
{
  if (qword_100025DF0 != -1)
  {
    dispatch_once(&qword_100025DF0, &stru_100020500);
  }

  v2 = *qword_100025DF8;
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    [a1[4] frequency];
    v4 = v3;
    [a1[4] volume];
    v6 = v5;
    [a1[4] duration];
    *buf = 136316162;
    *&buf[4] = "AVAudioDeviceTestService.mm";
    *&buf[12] = 1024;
    *&buf[14] = 892;
    *&buf[18] = 2048;
    *&buf[20] = v4;
    *&buf[28] = 2048;
    *&buf[30] = v6;
    *&buf[38] = 2048;
    v116 = v7;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%25s:%-5d [AVAT Server] Playback tone request. { frequency=%f, volume=%f, duration=%f }", buf, 0x30u);
  }

  v9 = a1[4];
  v8 = a1[5];
  v105[0] = _NSConcreteStackBlock;
  v105[1] = 3221225472;
  v105[2] = sub_10000BA14;
  v105[3] = &unk_100020660;
  v106 = a1[6];
  [v8 checkSequenceValidity:v9 completion:v105];
  v10 = [a1[5] hearingTestSession];
  LODWORD(v8) = v10 == 0;

  if (v8)
  {
    if (qword_100025DF0 != -1)
    {
      dispatch_once(&qword_100025DF0, &stru_100020500);
    }

    v11 = *qword_100025DF8;
    if (os_log_type_enabled(*qword_100025DF8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "AVAudioDeviceTestService.mm";
      *&buf[12] = 1024;
      *&buf[14] = 901;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%25s:%-5d HearingTest session not set, falling back to default playback session.", buf, 0x12u);
    }

    v13 = a1[4];
    v12 = a1[5];
    v103[0] = _NSConcreteStackBlock;
    v103[1] = 3221225472;
    v103[2] = sub_10000BA88;
    v103[3] = &unk_100020660;
    v104 = a1[6];
    [v12 setupAudioSessionFor:v13 playbackOnly:1 completion:v103];
  }

  v14 = +[AVSystemController sharedAVSystemController];
  v102 = 0.0;
  if (([v14 getActiveCategoryVolume:&v102 andName:0] & 1) == 0)
  {
    if (qword_100025DF0 != -1)
    {
      dispatch_once(&qword_100025DF0, &stru_100020500);
    }

    v15 = *qword_100025DF8;
    if (os_log_type_enabled(*qword_100025DF8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "AVAudioDeviceTestService.mm";
      *&buf[12] = 1024;
      *&buf[14] = 913;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%25s:%-5d Error getting current volume", buf, 0x12u);
    }
  }

  if (qword_100025DF0 != -1)
  {
    dispatch_once(&qword_100025DF0, &stru_100020500);
  }

  v16 = *qword_100025DF8;
  if (os_log_type_enabled(*qword_100025DF8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    *&buf[4] = "AVAudioDeviceTestService.mm";
    *&buf[12] = 1024;
    *&buf[14] = 916;
    *&buf[18] = 2048;
    *&buf[20] = v102;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%25s:%-5d [AVAT Server] CurrentVolume=%f", buf, 0x1Cu);
  }

  v17 = [a1[5] userVolumeBeforeHearingTest];
  v18 = v17 == 0;

  if (v18)
  {
    v19 = [NSNumber alloc];
    *&v20 = v102;
    v21 = [v19 initWithFloat:v20];
    [a1[5] setUserVolumeBeforeHearingTest:v21];
  }

  if (qword_100025DF0 != -1)
  {
    dispatch_once(&qword_100025DF0, &stru_100020500);
  }

  v22 = *qword_100025DF8;
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    v23 = [a1[5] userVolumeBeforeHearingTest];
    [v23 doubleValue];
    *buf = 136315650;
    *&buf[4] = "AVAudioDeviceTestService.mm";
    *&buf[12] = 1024;
    *&buf[14] = 922;
    *&buf[18] = 2048;
    *&buf[20] = v24;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "%25s:%-5d [AVAT Server] userVolumeBeforeHearingTest=%f", buf, 0x1Cu);
  }

  [a1[4] volume];
  v26 = vabds_f32(v102, v25);
  if (v26 >= 1.1755e-38)
  {
    v27 = fabsf(v25 + v102);
    if (v26 > ((v27 * 0.00000011921) + (v27 * 0.00000011921)))
    {
      [a1[4] volume];
      if (([v14 setActiveCategoryVolumeTo:?] & 1) == 0)
      {
        if (qword_100025DF0 != -1)
        {
          dispatch_once(&qword_100025DF0, &stru_100020500);
        }

        v28 = *qword_100025DF8;
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          [a1[4] volume];
          *buf = 136315650;
          *&buf[4] = "AVAudioDeviceTestService.mm";
          *&buf[12] = 1024;
          *&buf[14] = 925;
          *&buf[18] = 2048;
          *&buf[20] = v29;
          _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "%25s:%-5d Unable to set category volume to %f", buf, 0x1Cu);
        }

        v30 = a1[6];
        v31 = sub_100003D50(-15);
        v30[2](v30, 0, v31);
      }
    }
  }

  v32 = a1[5];
  [a1[4] volume];
  v34 = v33;
  v100[0] = _NSConcreteStackBlock;
  v100[1] = 3221225472;
  v100[2] = sub_10000BAFC;
  v100[3] = &unk_100020660;
  v101 = a1[6];
  LODWORD(v35) = v34;
  [v32 setupVolumeObserverForVolume:v100 completion:v35];
  if (([a1[5] createAudioEngineAndPulseToneHandlerFor:a1[4]] & 1) == 0)
  {
    if (qword_100025DF0 != -1)
    {
      dispatch_once(&qword_100025DF0, &stru_100020500);
    }

    v36 = *qword_100025DF8;
    if (os_log_type_enabled(*qword_100025DF8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *&buf[4] = "AVAudioDeviceTestService.mm";
      *&buf[12] = 1024;
      *&buf[14] = 937;
      _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Failed to create pulse tone handler", buf, 0x12u);
    }

    v37 = [NSError errorWithDomain:@"com.apple.avfaudio.devicetest.service" code:-10 userInfo:0];
    (*(a1[6] + 2))();
  }

  v38 = [a1[5] hearingTestSession];
  v39 = v38 == 0;

  if (v39)
  {
    if (qword_100025DF0 != -1)
    {
      dispatch_once(&qword_100025DF0, &stru_100020500);
    }

    v40 = *qword_100025DF8;
    if (os_log_type_enabled(*qword_100025DF8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *&buf[4] = "AVAudioDeviceTestService.mm";
      *&buf[12] = 1024;
      *&buf[14] = 943;
      _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "%25s:%-5d No session already created.", buf, 0x12u);
    }

    v41 = a1[5];
    v98[0] = _NSConcreteStackBlock;
    v98[1] = 3221225472;
    v98[2] = sub_10000BB70;
    v98[3] = &unk_100020688;
    v98[4] = v41;
    v99 = a1[6];
    [v41 setupObservers:v98];
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  *&buf[24] = sub_10000BCA8;
  *&buf[32] = sub_10000BCB8;
  v116 = [*(*(a1[5] + 1) + 16) copy];
  v43 = a1[4];
  v42 = a1[5];
  v97[0] = _NSConcreteStackBlock;
  v97[1] = 3221225472;
  v97[2] = sub_10000BCC0;
  v97[3] = &unk_1000206B0;
  v97[4] = v42;
  [v42 setupAudioEngineFor:v43 sourceNodeBlock:v97];
  v44 = a1[5];
  v45 = [a1[4] micBufferNumbers];
  v46 = [v45 count];
  if (v46)
  {
    v47 = [a1[4] micBufferNumbers];
  }

  else
  {
    v47 = 0;
  }

  v95[0] = _NSConcreteStackBlock;
  v95[1] = 3221225472;
  v95[2] = sub_10000BE74;
  v95[3] = &unk_100020660;
  v96 = a1[6];
  [v44 setupMultiChannelMixerForOutputChannel:v47 completion:v95];
  if (v46)
  {
  }

  v48 = sub_10000929C();
  v49 = sub_10000931C();
  if ((v49 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v50 = v49;
    if (os_signpost_enabled(v48))
    {
      [a1[4] frequency];
      v52 = v51;
      [a1[4] soundLevel];
      *v107 = 134218240;
      v108 = v52;
      v109 = 2048;
      *v110 = v53;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v48, OS_SIGNPOST_INTERVAL_BEGIN, v50, "AVF tone playback", "freq=%f, lvl=%f", v107, 0x16u);
    }
  }

  v54 = [a1[5] engine];
  [v54 prepare];

  if ([a1[5] isMixerOutputEnabled])
  {
    v55 = [NSURL fileURLWithPath:@"/tmp/multichannel_mixer_out.caf"];
    v56 = [AVAudioFile alloc];
    v57 = [a1[5] engine];
    v58 = [v57 outputNode];
    v59 = [v58 outputFormatForBus:0];
    v60 = [v59 settings];
    v94 = 0;
    v61 = [v56 initForWriting:v55 settings:v60 error:&v94];
    v62 = v94;

    if (v62)
    {
      (*(a1[6] + 2))();
    }

    v63 = [a1[5] multichannelMixer];
    v64 = [a1[5] multichannelMixer];
    v65 = [v64 outputFormatForBus:0];
    v92[0] = _NSConcreteStackBlock;
    v92[1] = 3221225472;
    v92[2] = sub_10000BEE8;
    v92[3] = &unk_1000206D8;
    v66 = v61;
    v93 = v66;
    [v63 installTapOnBus:0 bufferSize:1024 format:v65 block:v92];
  }

  else
  {
    v62 = 0;
  }

  v67 = [a1[5] engine];
  v91 = v62;
  v68 = [v67 startAndReturnError:&v91];
  v69 = v91;

  if ((v68 & 1) == 0)
  {
    if (qword_100025DF0 != -1)
    {
      dispatch_once(&qword_100025DF0, &stru_100020500);
    }

    v80 = *qword_100025DF8;
    if (os_log_type_enabled(v80, OS_LOG_TYPE_ERROR))
    {
      v81 = [v69 localizedDescription];
      v82 = sub_100003D50(-10);
      v83 = COERCE_DOUBLE([v82 code]);
      *v107 = 136315906;
      v108 = "AVAudioDeviceTestService.mm";
      v109 = 1024;
      *v110 = 990;
      *&v110[4] = 2112;
      *&v110[6] = v81;
      v111 = 2048;
      v112 = v83;
      _os_log_impl(&_mh_execute_header, v80, OS_LOG_TYPE_ERROR, "%25s:%-5d startAndReturnError (%@) with test error (%li)", v107, 0x26u);
    }

    v84 = a1[6];
    v85 = sub_100003D50(-10);
    v84[2](v84, 0, v85);

    exit(-1);
  }

  if (qword_100025DF0 != -1)
  {
    dispatch_once(&qword_100025DF0, &stru_100020500);
  }

  v70 = *qword_100025DF8;
  if (os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
  {
    [a1[4] frequency];
    v72 = v71;
    [a1[4] volume];
    v74 = v73;
    [a1[4] duration];
    *v107 = 136316162;
    v108 = "AVAudioDeviceTestService.mm";
    v109 = 1024;
    *v110 = 995;
    *&v110[4] = 2048;
    *&v110[6] = v72;
    v111 = 2048;
    v112 = v74;
    v113 = 2048;
    v114 = v75;
    _os_log_impl(&_mh_execute_header, v70, OS_LOG_TYPE_DEFAULT, "%25s:%-5d [AVAT Server] Started playing back tone. { frequency=%f, volume=%f, duration=%f }", v107, 0x30u);
  }

  [a1[4] duration];
  v77 = dispatch_time(0, (v76 * 1000000000.0));
  v78 = [a1[5] toneQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000BFC8;
  block[3] = &unk_100020700;
  v86 = *(a1 + 2);
  v79 = v86.i64[0];
  v88 = vextq_s8(v86, v86, 8uLL);
  v90 = buf;
  v89 = a1[6];
  dispatch_after(v77, v78, block);

  _Block_object_dispose(buf, 8);
}

void sub_10000B7E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, void *a58)
{
  _Block_object_dispose((v63 - 192), 8);

  _Unwind_Resume(a1);
}

void sub_10000BA14(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    (*(*(a1 + 32) + 16))();
  }
}

void sub_10000BA88(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    (*(*(a1 + 32) + 16))();
  }
}

void sub_10000BAFC(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    (*(*(a1 + 32) + 16))();
  }
}

void sub_10000BB70(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    if (qword_100025DF0 != -1)
    {
      dispatch_once(&qword_100025DF0, &stru_100020500);
    }

    v4 = *qword_100025DF8;
    if (os_log_type_enabled(*qword_100025DF8, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136315394;
      v6 = "AVAudioDeviceTestService.mm";
      v7 = 1024;
      v8 = 946;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Interruption detected, resetting observers.", &v5, 0x12u);
    }

    [*(a1 + 32) cleanUpObservers];
    (*(*(a1 + 40) + 16))();
  }
}

uint64_t sub_10000BCA8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_10000BCC0(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, unsigned int *a5)
{
  v5 = *(*(a1 + 32) + 8);
  if (v5 && a4)
  {
    v6 = 0;
    v7 = a5 + 4;
    v8 = *a5;
    v9 = *(v5 + 40);
    v10 = *(v5 + 48);
    v11 = *(v5 + 80);
    v12 = a4;
    v13 = *(v5 + 24) / *(v5 + 72);
    do
    {
      ++v9;
      v14 = v10 + 1;
      v15 = 0.0;
      if (v11)
      {
        v11 = 1;
      }

      else
      {
        v16 = *(v5 + 52);
        if (v16)
        {
          if (v10 < 0)
          {
            v11 = *v5;
            *(v5 + 80) = *v5;
          }

          else
          {
            v17 = sin((v13 * v9 + v13 * v9) * 3.14159265) * *(v5 + 32);
            v18 = *(v5 + 56);
            if (v10 >= v18)
            {
              v20 = *(v5 + 60);
              if (v20 || *v5 == 1)
              {
                v21 = *(v5 + 64);
                v22 = v21 + v18;
                if (v22 <= v14)
                {
                  v14 = -(v20 - v21);
                  *(v5 + 52) = (v16 & ~(v16 >> 31)) - 1;
                  v11 = *v5;
                  *(v5 + 80) = *v5;
                  v17 = 0.0;
                }

                else
                {
                  v11 = 0;
                  v17 = v17 * ((v22 - v14) / v21);
                }
              }

              else
              {
                v11 = 0;
                v14 = *(v5 + 56);
              }
            }

            else
            {
              v19 = *(v5 + 64);
              v11 = 0;
              if (v19 > v14)
              {
                v17 = v17 * (v14 / v19);
              }
            }

            v15 = v17;
          }
        }

        else
        {
          v11 = 0;
        }
      }

      v10 = v14;
      v23 = v7;
      v24 = v8;
      if (v8)
      {
        do
        {
          v25 = *v23;
          v23 += 4;
          *(v25 + 4 * v6) = v15;
          --v24;
        }

        while (v24);
      }

      ++v6;
    }

    while (v6 != v12);
    *(v5 + 40) = v9;
    *(v5 + 48) = v14;
  }

  return 0;
}

void sub_10000BE74(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    (*(*(a1 + 32) + 16))();
  }
}

void sub_10000BEE8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v9 = 0;
  v8 = [v7 writeFromBuffer:v5 error:&v9];
  if (v9)
  {
    __assert_rtn("[AVAudioDeviceTestService playbackTone:completion:]_block_invoke", "AVAudioDeviceTestService.mm", 984, "err == nil");
  }

  if ((v8 & 1) == 0)
  {
    __assert_rtn("[AVAudioDeviceTestService playbackTone:completion:]_block_invoke", "AVAudioDeviceTestService.mm", 985, "didWrite");
  }
}

id sub_10000BFC8(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 8);
  if (!v2)
  {
    if (qword_100025DF0 != -1)
    {
      dispatch_once(&qword_100025DF0, &stru_100020500);
    }

    v10 = *qword_100025DF8;
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_21;
    }

    [*(a1 + 40) frequency];
    v14 = v13;
    [*(a1 + 40) volume];
    v16 = v15;
    [*(a1 + 40) duration];
    *v31 = 136316162;
    *&v31[4] = "AVAudioDeviceTestService.mm";
    *&v31[12] = 1024;
    *&v31[14] = 999;
    *&v31[18] = 2048;
    *&v31[20] = v14;
    *&v31[28] = 2048;
    *&v31[30] = v16;
    *&v31[38] = 2048;
    v32 = v17;
    v18 = "%25s:%-5d [AVAT Server] Duration timer called, tone has already been stopped, pulse tone handler is nil { frequency=%f, volume=%f, duration=%f }";
    v19 = v10;
    v20 = 48;
LABEL_20:
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, v18, v31, v20);
LABEL_21:

    goto LABEL_22;
  }

  if (([*(v2 + 16) isEqualToString:*(*(*(a1 + 56) + 8) + 40)] & 1) == 0)
  {
    if (qword_100025DF0 != -1)
    {
      dispatch_once(&qword_100025DF0, &stru_100020500);
    }

    v10 = *qword_100025DF8;
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_21;
    }

    [*(a1 + 40) frequency];
    v22 = v21;
    [*(a1 + 40) volume];
    v24 = v23;
    [*(a1 + 40) duration];
    v25 = *(*(*(a1 + 56) + 8) + 40);
    v26 = *(*(*(a1 + 32) + 8) + 16);
    *v31 = 136316674;
    *&v31[4] = "AVAudioDeviceTestService.mm";
    *&v31[12] = 1024;
    *&v31[14] = 1001;
    *&v31[18] = 2048;
    *&v31[20] = v22;
    *&v31[28] = 2048;
    *&v31[30] = v24;
    *&v31[38] = 2048;
    v32 = v27;
    *v33 = 2112;
    *&v33[2] = v25;
    *&v33[10] = 2112;
    *&v33[12] = v26;
    v18 = "%25s:%-5d [AVAT Server] Duration timer called, tone has already been stopped, pulse tone IDs do not match. { frequency=%f, volume=%f, duration=%f, pulseToneID=%@, currID=%@ }";
    v19 = v10;
    v20 = 68;
    goto LABEL_20;
  }

  v3 = *(*(a1 + 32) + 8);
  if (v3 && [*(v3 + 16) isEqualToString:*(*(*(a1 + 56) + 8) + 40)])
  {
    if (qword_100025DF0 != -1)
    {
      dispatch_once(&qword_100025DF0, &stru_100020500);
    }

    v4 = *qword_100025DF8;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      [*(a1 + 40) frequency];
      v6 = v5;
      [*(a1 + 40) volume];
      v8 = v7;
      [*(a1 + 40) duration];
      *v31 = 136316162;
      *&v31[4] = "AVAudioDeviceTestService.mm";
      *&v31[12] = 1024;
      *&v31[14] = 1003;
      *&v31[18] = 2048;
      *&v31[20] = v6;
      *&v31[28] = 2048;
      *&v31[30] = v8;
      *&v31[38] = 2048;
      v32 = v9;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%25s:%-5d [AVAT Server] Duration timer called, stopping tone. { frequency=%f, volume=%f, duration=%f }", v31, 0x30u);
    }

    **(*(a1 + 32) + 8) = 1;
    [NSThread sleepForTimeInterval:*(*(*(a1 + 32) + 8) + 8)];
    [*(a1 + 32) cleanUp];
    (*(*(a1 + 48) + 16))();
    v10 = sub_10000929C();
    v11 = sub_10000931C();
    if ((v11 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v12 = v11;
      if (os_signpost_enabled(v10))
      {
        *v31 = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v10, OS_SIGNPOST_INTERVAL_END, v12, "AVF tone playback", "duration timer", v31, 2u);
      }
    }

    goto LABEL_21;
  }

LABEL_22:
  v28 = *(a1 + 32);
  v29 = [v28 userVolumeBeforeHearingTest];
  [v29 floatValue];
  [v28 resetVolume:?];

  return [*(a1 + 32) removeSystemVolumeObserver];
}

void sub_10000EC78(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, void *a13, void *exc_bufa, void *a15, uint64_t a16, void *a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, void *a36, uint64_t a37, uint64_t a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60)
{
  if (a2)
  {

    _Block_object_dispose((v66 - 224), 8);
    _Block_object_dispose(&a39, 8);

    if (a2 == 2)
    {
      v68 = objc_begin_catch(a1);
      if (qword_100025DF0 != -1)
      {
        dispatch_once(&qword_100025DF0, &stru_100020500);
      }

      v69 = *qword_100025DF8;
      if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
      {
        v70 = sub_100003D50(-7);
        v71 = [v70 code];
        *(v66 - 224) = 136315906;
        STACK[0x224] = "AVAudioDeviceTestService.mm";
        *(v66 - 212) = 1024;
        LODWORD(STACK[0x22E]) = 838;
        *(v66 - 206) = 2112;
        STACK[0x234] = v68;
        *(v66 - 196) = 2048;
        STACK[0x23E] = v71;
        _os_log_impl(&_mh_execute_header, v69, OS_LOG_TYPE_ERROR, "%25s:%-5d exception (%@) with test error (%li)", (v66 - 224), 0x26u);
      }

      v72 = sub_100003D50(-7);
      (*(a19 + 16))(a19, 0, v72);

      objc_end_catch();
    }

    else
    {
      objc_begin_catch(a1);
    }

    JUMPOUT(0x10000E63CLL);
  }

  _Unwind_Resume(a1);
}

void *sub_10000F6EC(uint64_t a1)
{
  v2 = sub_10000F73C();
  result = dlsym(v2, "MSNMonitorBeginException");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_100025E00 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_10000F73C()
{
  v3[0] = 0;
  if (!qword_100025E08)
  {
    v3[1] = _NSConcreteStackBlock;
    v3[2] = 3221225472;
    v3[3] = sub_1000108C8;
    v3[4] = &unk_100020870;
    v3[5] = v3;
    v4 = off_100020858;
    v5 = 0;
    qword_100025E08 = _sl_dlopen();
    v1 = v3[0];
    v0 = qword_100025E08;
    if (qword_100025E08)
    {
      if (!v3[0])
      {
        return v0;
      }
    }

    else
    {
      v1 = abort_report_np();
    }

    free(v1);
    return v0;
  }

  return qword_100025E08;
}

void sub_10000F84C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 userInfo];
  v5 = [v4 objectForKeyedSubscript:AVAudioSessionRouteChangeReasonKey];
  v6 = [v5 unsignedIntegerValue];

  v7 = [*(a1 + 32) stringForRouteChangeReason:v6];
  if (qword_100025DF0 != -1)
  {
    dispatch_once(&qword_100025DF0, &stru_100020500);
  }

  v8 = *qword_100025DF8;
  if (os_log_type_enabled(*qword_100025DF8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315650;
    v10 = "AVAudioDeviceTestService.mm";
    v11 = 1024;
    v12 = 553;
    v13 = 2112;
    v14 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%25s:%-5d route change (%@)", &v9, 0x1Cu);
  }
}

void sub_10000F9DC(uint64_t a1, void *a2)
{
  v3 = a2;
  if (qword_100025DF0 != -1)
  {
    dispatch_once(&qword_100025DF0, &stru_100020500);
  }

  v4 = *qword_100025DF8;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [v3 object];
    v6 = sub_100003D50(-3);
    v9 = 136315906;
    v10 = "AVAudioDeviceTestService.mm";
    v11 = 1024;
    v12 = 561;
    v13 = 2112;
    v14 = v5;
    v15 = 2048;
    v16 = [v6 code];
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%25s:%-5d interruption (%@) with test error (%li)", &v9, 0x26u);
  }

  v7 = *(a1 + 32);
  v8 = sub_100003D50(-3);
  (*(v7 + 16))(v7, 0, v8);

  exit(-3);
}

void sub_10000FB78(uint64_t a1, void *a2)
{
  v3 = a2;
  if (qword_100025DF0 != -1)
  {
    dispatch_once(&qword_100025DF0, &stru_100020500);
  }

  v4 = *qword_100025DF8;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [v3 object];
    v6 = sub_100003D50(-4);
    v9 = 136315906;
    v10 = "AVAudioDeviceTestService.mm";
    v11 = 1024;
    v12 = 571;
    v13 = 2112;
    v14 = v5;
    v15 = 2048;
    v16 = [v6 code];
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%25s:%-5d mediaserverd died (%@) with test error (%li)", &v9, 0x26u);
  }

  v7 = *(a1 + 32);
  v8 = sub_100003D50(-4);
  (*(v7 + 16))(v7, 0, v8);

  exit(-4);
}

void sub_10000FD20(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (qword_100025DF0 != -1)
  {
    dispatch_once(&qword_100025DF0, &stru_100020500);
  }

  v7 = *qword_100025DF8;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [v5 averagePowerPerChannel];
    v14 = 136315650;
    v15 = "AVAudioDeviceTestService.mm";
    v16 = 1024;
    v17 = 655;
    v18 = 2112;
    v19 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%25s:%-5d collecting input tap data %@", &v14, 0x1Cu);
  }

  if (([*(*(*(a1 + 48) + 8) + 40) appendDataFromBuffer:v5] & 1) == 0)
  {
    if (qword_100025DF0 != -1)
    {
      dispatch_once(&qword_100025DF0, &stru_100020500);
    }

    v9 = *qword_100025DF8;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = sub_100003D50(-10);
      v11 = [v10 code];
      v14 = 136315650;
      v15 = "AVAudioDeviceTestService.mm";
      v16 = 1024;
      v17 = 658;
      v18 = 2048;
      v19 = v11;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%25s:%-5d failed to read in from buffer - test error %li", &v14, 0x1Cu);
    }

    v12 = *(a1 + 40);
    v13 = sub_100003D50(-10);
    (*(v12 + 16))(v12, 0, v13);
  }

  if ([*(*(*(a1 + 48) + 8) + 40) frameLength] >= *(*(*(a1 + 56) + 8) + 24))
  {
    dispatch_semaphore_signal(*(a1 + 32));
  }
}

void sub_10000FFDC(uint64_t a1)
{
  if (qword_100025DF0 != -1)
  {
    dispatch_once(&qword_100025DF0, &stru_100020500);
  }

  v2 = *qword_100025DF8;
  if (os_log_type_enabled(*qword_100025DF8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "AVAudioDeviceTestService.mm";
    *&buf[12] = 1024;
    *&buf[14] = 771;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%25s:%-5d processing xcorr", buf, 0x12u);
  }

  group = dispatch_group_create();
  v3 = dispatch_queue_attr_make_with_qos_class(&_dispatch_queue_attr_concurrent, QOS_CLASS_USER_INTERACTIVE, -1);
  v23 = dispatch_queue_create("com.apple.avfaudio.xcorr_queue", v3);

  v27 = [*(*(*(a1 + 64) + 8) + 40) splitIntoSingleChannelBuffers];
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v40 = sub_10000BCA8;
  v41 = sub_10000BCB8;
  v42 = objc_opt_new();
  obj = objc_alloc_init(NSMutableArray);
  v4 = [*(a1 + 32) micBufferNumbers];
  if (!v4 || ([*(a1 + 32) micBufferNumbers], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "count") == 0, v5, v4, v6))
  {
    for (i = 0; [v27 count] > i; ++i)
    {
      v22 = [NSNumber numberWithInt:i];
      [obj addObject:v22];
    }
  }

  else
  {
    v7 = [*(a1 + 32) micBufferNumbers];
    v8 = [v7 copy];

    obj = v8;
  }

  for (j = 0; [obj count] > j; ++j)
  {
    v10 = *(*&buf[8] + 40);
    v11 = +[NSNull null];
    [v10 addObject:v11];
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  obja = obj;
  v12 = [obja countByEnumeratingWithState:&v34 objects:v38 count:16];
  if (v12)
  {
    v13 = *v35;
    do
    {
      for (k = 0; k != v12; k = k + 1)
      {
        if (*v35 != v13)
        {
          objc_enumerationMutation(obja);
        }

        v15 = *(*(&v34 + 1) + 8 * k);
        v28[0] = _NSConcreteStackBlock;
        v28[1] = 3221225472;
        v28[2] = sub_100010578;
        v28[3] = &unk_100020610;
        v28[4] = v15;
        v29 = v27;
        v16 = *(a1 + 32);
        v17 = *(a1 + 40);
        v18 = *(a1 + 48);
        v30 = v16;
        v31 = v17;
        v32 = v18;
        v33 = buf;
        v19 = objc_retainBlock(v28);
        if ([*(a1 + 32) parallelCrossCorrelationCalculation])
        {
          dispatch_group_async(group, v23, v19);
        }

        else
        {
          (v19[2])(v19);
        }
      }

      v12 = [obja countByEnumeratingWithState:&v34 objects:v38 count:16];
    }

    while (v12);
  }

  if ([*(a1 + 32) parallelCrossCorrelationCalculation])
  {
    dispatch_group_wait(group, 0xFFFFFFFFFFFFFFFFLL);
  }

  v20 = *(*&buf[8] + 40);
  (*(*(a1 + 56) + 16))();

  _Block_object_dispose(buf, 8);
}

void sub_100010448(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10, void *a11, void *a12)
{
  _Block_object_dispose((v13 - 176), 8);

  _Unwind_Resume(a1);
}

void *sub_100010528(uint64_t a1)
{
  v2 = sub_10000F73C();
  result = dlsym(v2, "MSNMonitorEndException");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_100025E10 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_100010578(uint64_t a1)
{
  v2 = [*(a1 + 32) intValue];
  v3 = [*(a1 + 40) objectAtIndex:v2];
  v4 = +[NSData dataWithBytes:length:](NSData, "dataWithBytes:length:", *([v3 audioBufferList] + 2), *(objc_msgSend(v3, "audioBufferList") + 3));
  if ([*(a1 + 48) calculateCrossCorrelationPeak])
  {
    [*(a1 + 56) calculateCrossCorrelationPeakRelativeToSource:*(a1 + 64) capture:v3];
    v6 = v5;
    if (qword_100025DF0 != -1)
    {
      dispatch_once(&qword_100025DF0, &stru_100020500);
    }

    v7 = *qword_100025DF8;
    if (os_log_type_enabled(*qword_100025DF8, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 136315650;
      v14 = "AVAudioDeviceTestService.mm";
      v15 = 1024;
      v16 = 802;
      v17 = 2048;
      v18 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%25s:%-5d db %f", &v13, 0x1Cu);
    }
  }

  v8 = [AVAudioDeviceTestResult alloc];
  v9 = [*(a1 + 48) outputID];
  v10 = [v3 format];
  [v10 sampleRate];
  v11 = [AVAudioDeviceTestResult initWithData:v8 inputID:"initWithData:inputID:outputID:sampleRate:correlationValue:" outputID:v4 sampleRate:v2 correlationValue:v9];

  v12 = *(*(*(a1 + 72) + 8) + 40);
  objc_sync_enter(v12);
  [*(*(*(a1 + 72) + 8) + 40) setObject:v11 atIndexedSubscript:v2];
  objc_sync_exit(v12);
}

void sub_100010798(_Unwind_Exception *a1)
{
  objc_sync_exit(v4);

  _Unwind_Resume(a1);
}

void sub_1000107E4(id a1)
{
  if (qword_100025DF0 != -1)
  {
    dispatch_once(&qword_100025DF0, &stru_100020500);
  }

  v1 = *qword_100025DF8;
  if (os_log_type_enabled(*qword_100025DF8, OS_LOG_TYPE_DEFAULT))
  {
    v2 = 136315394;
    v3 = "AVAudioDeviceTestService.mm";
    v4 = 1024;
    v5 = 715;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "%25s:%-5d player finished", &v2, 0x12u);
  }
}

uint64_t sub_1000108C8(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_100025E08 = result;
  return result;
}

void sub_100010C0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  objc_sync_exit(v10);

  _Unwind_Resume(a1);
}

void sub_10001317C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    if (qword_100025DF0 != -1)
    {
      dispatch_once(&qword_100025DF0, &stru_100020500);
    }

    v7 = *qword_100025DF8;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = [v6 localizedDescription];
      v11 = 136315650;
      v12 = "AVAudioDeviceTestService.mm";
      v13 = 1024;
      v14 = 262;
      v15 = 2112;
      v16 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d Error instantiating AVAudioUnit: %@", &v11, 0x1Cu);
    }
  }

  else
  {
    [*(a1 + 40) setMultichannelMixer:v5];
    v9 = [*(a1 + 40) engine];
    v10 = [*(a1 + 40) multichannelMixer];
    [v9 attachNode:v10];
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_100013308(_Unwind_Exception *a1)
{
  dispatch_semaphore_signal(*(v3 + 32));

  _Unwind_Resume(a1);
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new()
{
    ;
  }
}