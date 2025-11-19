void sub_1450(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  if ([a3 isEqualToString:kMXSystemControllerNotification_NowPlayingAppDidChange])
  {
    v8 = [a5 objectForKey:kMXSystemControllerNotificationKey_NowPlayingAppDidChange_DisplayID];

    [a2 nowPlayingAppChanged:v8];
    return;
  }

  if ([a3 isEqualToString:kMXSystemControllerNotification_ActiveAudioRouteDidChange])
  {
    if ([a2 isRouteAvailable])
    {
      if (![a2 nowPlayingBundleID])
      {
        [a2 refreshNowPlayingAppBundleID];
        if ([a2 nowPlayingBundleID])
        {

          [a2 unregisterRouteChangeListener];
        }
      }
    }

    return;
  }

  if ([a3 isEqualToString:kMXSystemControllerNotification_PickableRoutesDidChange])
  {
    if ([a2 isRouteAvailable])
    {

      [a2 choosePickableRoute];
    }

    return;
  }

  if (![a3 isEqualToString:kMXSystemControllerNotification_SystemVolumeDidChange])
  {
    return;
  }

  v9 = [a5 objectForKey:kMXSystemControllerNotificationKey_SystemVolumeDidChange_Volume];
  v10 = [a5 objectForKey:kMXSystemControllerNotificationKey_SystemVolumeDidChange_AudioCategory];
  v11 = [a5 objectForKey:kMXSystemControllerNotificationKey_SystemVolumeDidChange_ActiveAudioCategory];
  [a2 setCurrentActiveVolumeAudioCategory:v11];
  v12 = [a5 objectForKey:kMXSystemControllerNotificationKey_SystemVolumeDidChange_SequenceNumber];
  v13 = kMXSystemControllerNotificationKey_SystemVolumeDidChange_SilenceVolumeHUD;
  v14 = [a5 objectForKey:kMXSystemControllerNotificationKey_SystemVolumeDidChange_SilenceVolumeHUD];
  [a2 setIsPersonalizedVolumeUpdate:v14];
  v15 = qword_C2308;
  if (os_log_type_enabled(qword_C2308, OS_LOG_TYPE_DEFAULT))
  {
    v22 = 138413314;
    v23 = v9;
    v24 = 2112;
    v25 = v10;
    v26 = 2112;
    v27 = v12;
    v28 = 2112;
    v29 = v14;
    v30 = 2112;
    v31 = v11;
    _os_log_impl(&dword_0, v15, OS_LOG_TYPE_DEFAULT, "BTAudioAVNotificationMonitor: kMXSystemControllerNotification_SystemVolumeDidChange : volume %@, audio category %@, sequenceNumber %@, isPersonalizedVolumeUpdate %@ activeAudioCategory: %@", &v22, 0x34u);
  }

  v16 = [a5 objectForKey:kMXSystemControllerNotificationKey_SystemVolumeDidChange_Reason];
  v17 = [a5 objectForKey:v13];
  if (!_os_feature_enabled_impl())
  {
    v20 = qword_C2308;
    if (!os_log_type_enabled(qword_C2308, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    LOWORD(v22) = 0;
    v21 = "Error: PersonalizedVolumeV2 feature flag is not enabled";
    goto LABEL_35;
  }

  if (![v16 isEqualToString:@"ExplicitVolumeChange"] || !objc_msgSend(v17, "isEqualToNumber:", +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", 0)) || (objc_msgSend(v11, "isEqualToString:", kMXSessionAudioCategory_PhoneCall) & 1) == 0 && (objc_msgSend(v11, "isEqualToString:", kMXSessionAudioCategory_AudioVideo) & 1) == 0 && !objc_msgSend(v11, "isEqualToString:", kMXSessionAudioCategory_VoiceCommand) || !objc_msgSend(a2, "isBluetoothRoute"))
  {
    return;
  }

  if (![objc_msgSend(a2 "processManualVolumeUpdates")])
  {
    v20 = qword_C2308;
    if (!os_log_type_enabled(qword_C2308, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    LOWORD(v22) = 0;
    v21 = "Error: PersonalizedVolumeV2 processManualVolumeUpdates is disabled";
LABEL_35:
    _os_log_impl(&dword_0, v20, OS_LOG_TYPE_DEFAULT, v21, &v22, 2u);
    return;
  }

  if (([v14 BOOLValue] & 1) == 0)
  {
    if ([a2 isVolumeUpdateToAccessoryRequired:v12])
    {
      v18 = @"Top-Down";
    }

    else
    {
      v18 = @"Bottom-Up";
    }

    [a2 setReasonForManualVolumeUpdate:v18];
    [v9 floatValue];
    [a2 sendManualVolumeUpdate:(v19 * 100.0)];
  }
}

uint64_t sub_1948(uint64_t a1, uint64_t a2)
{
  v4 = sub_38E7C(a1);
  *v4 = off_ACC68;
  *(v4 + 16) = 0;
  *(v4 + 24) = 0;
  sub_24D3C((v4 + 96));
  sub_24D3C((a1 + 120));
  sub_24D3C((a1 + 144));
  sub_24D3C((a1 + 168));
  *(a1 + 192) = 1;
  *(a1 + 200) = 0;
  *(a1 + 208) = a2;
  *(a1 + 289) = 0;
  *(a1 + 408) = 0;
  *(a1 + 416) = 0;
  *(a1 + 425) = 0;
  *(a1 + 428) = 0;
  *(a1 + 432) = 0;
  *(a1 + 476) = 0;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 500) = 0x3F8000003F800000;
  *(a1 + 510) = 0;
  sub_709AC(a1 + 512, v5);
  *(a1 + 576) = 0;
  *(a1 + 584) = 256;
  *(a1 + 588) = 1065353216;
  *(a1 + 592) = 0;
  sub_709AC(a1 + 600, v6);
  *(a1 + 792) = 0;
  *(a1 + 794) = 0;
  *(a1 + 9064) = 0;
  *(a1 + 480) = 0;
  *(a1 + 400) = 0;
  bzero((a1 + 816), 0x200AuLL);
  atomic_store(0, (a1 + 288));
  *(a1 + 216) = 0u;
  *(a1 + 440) = 0u;
  *(a1 + 32) = 0;
  *(a1 + 48) = 0;
  *(a1 + 64) = 0;
  *(a1 + 80) = 0;
  *(a1 + 232) = 0u;
  *(a1 + 248) = 0u;
  *(a1 + 264) = 0u;
  *(a1 + 280) = 0;
  *(a1 + 456) = 0u;
  *(a1 + 800) = 0;
  *(a1 + 808) = 0;
  *(a1 + 9032) = 0u;
  *(a1 + 9048) = 0u;
  pthread_mutex_init((a1 + 664), 0);
  pthread_cond_init((a1 + 728), 0);
  *(a1 + 784) = 0;
  *(a1 + 776) = 4;
  return a1;
}

void sub_1AB8(_Unwind_Exception *a1, uint64_t a2)
{
  sub_70A28(v2 + 512, a2);
  if (*(v2 + 359) < 0)
  {
    operator delete(*(v2 + 336));
  }

  sub_38F74(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_1B04(uint64_t a1, uint64_t a2)
{
  *a1 = off_ACC68;
  v3 = *(a1 + 24);
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  atomic_store(0, (a1 + 288));
  v4 = *(a1 + 9008);
  if (v4)
  {
    if (!dispatch_block_testcancel(*(a1 + 9008)))
    {
      dispatch_block_cancel(v4);
      v4 = *(a1 + 9008);
    }

    _Block_release(v4);
    *(a1 + 9008) = 0;
  }

  v5 = *(a1 + 200);
  if (v5)
  {
    CFRelease(v5);
  }

  sub_70A28(a1 + 600, a2);
  sub_70A28(a1 + 512, v6);
  if (*(a1 + 359) < 0)
  {
    operator delete(*(a1 + 336));
  }

  return sub_38F74(a1);
}

uint64_t sub_1C00(uint64_t a1, uint64_t a2)
{
  if (_os_feature_enabled_impl())
  {
    v7 = 0;
    Int64 = CFPrefs_GetInt64();
    if (a2 == 1918989668)
    {
      if (Int64)
      {
        a2 = 1919312242;
        v4 = qword_B7DE0;
        if (os_log_type_enabled(qword_B7DE0, OS_LOG_TYPE_DEFAULT))
        {
          *v6 = 0;
          _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "Forcing FarFieldInput due to defaults write", v6, 2u);
        }
      }
    }
  }

  return a2;
}

void sub_1CBC(void **a1, void *a2)
{
  if (sub_70820() && (v4 = xpc_dictionary_get_value(a2, "kBTAudioDebugEnableAudioLogging")) != 0)
  {
    v5 = v4;
    if (xpc_get_type(v4) != &_xpc_type_BOOL)
    {
      v6 = qword_B7DE0;
      if (os_log_type_enabled(qword_B7DE0, OS_LOG_TYPE_FAULT))
      {
        sub_75E14(v6, v7, v8, v9, v10, v11, v12, v13);
      }

      if (sub_70820())
      {
        goto LABEL_32;
      }
    }

    value = xpc_BOOL_get_value(v5);
  }

  else
  {
    value = 0;
  }

  sub_1FC0(a1, value);
  string = xpc_dictionary_get_string(a2, "kBTAudioMsgPropertyDeviceAddress");
  if (string)
  {
    sub_2088(v42, string);
    if (*(a1 + 359) < 0)
    {
      operator delete(a1[42]);
    }

    *(a1 + 21) = *v42;
    a1[44] = *&v42[16];
  }

  *(a1 + 425) = 0;
  v16 = xpc_dictionary_get_value(a2, "kBTAudioMsgPropertyVolumeIsAbsolute");
  if (xpc_get_type(v16) != &_xpc_type_BOOL)
  {
    v17 = qword_B7DE0;
    if (os_log_type_enabled(qword_B7DE0, OS_LOG_TYPE_FAULT))
    {
      sub_75E8C(v17, v18, v19, v20, v21, v22, v23, v24);
    }

    if (sub_70820())
    {
      goto LABEL_32;
    }
  }

  v25 = xpc_BOOL_get_value(v16);
  (*(*a1 + 149))(a1, v25);
  v26 = xpc_dictionary_get_value(a2, "kBTAudioMsgPropertyIsAppleAudioDevice");
  if (v26)
  {
    if (xpc_get_type(v26) == &_xpc_type_BOOL)
    {
      v38 = xpc_dictionary_get_value(a2, "kBTAudioMsgPropertyVolumeScalar");
      if (v38)
      {
        if (*(a1 + 408) == 1)
        {
          v39 = xpc_double_get_value(v38);
          v40 = qword_B7DE0;
          if (os_log_type_enabled(qword_B7DE0, OS_LOG_TYPE_DEFAULT))
          {
            v41 = a1[25];
            *v42 = 134218242;
            *&v42[4] = v39;
            *&v42[12] = 2112;
            *&v42[14] = v41;
            _os_log_impl(&dword_0, v40, OS_LOG_TYPE_DEFAULT, "Received initial absolute volume of %f from bluetoothd Device %@", v42, 0x16u);
          }

          *(a1 + 120) = v39;
          *(a1 + 122) = (*(*a1 + 46))(a1, v39);
        }
      }
    }
  }

  v27 = xpc_dictionary_get_value(a2, "kBTAudioDebugEnableAudioCaptures");
  if (!v27)
  {
    v37 = 0;
    goto LABEL_26;
  }

  v28 = v27;
  if (xpc_get_type(v27) != &_xpc_type_BOOL)
  {
    v29 = qword_B7DE0;
    if (os_log_type_enabled(qword_B7DE0, OS_LOG_TYPE_FAULT))
    {
      sub_75F04(v29, v30, v31, v32, v33, v34, v35, v36);
    }

    if (sub_70820())
    {
LABEL_32:
      abort();
    }
  }

  v37 = xpc_BOOL_get_value(v28);
LABEL_26:
  sub_2140(a1, v37);
}

void sub_1FC0(uint64_t a1, int a2)
{
  v4 = qword_B7DE0;
  if (os_log_type_enabled(qword_B7DE0, OS_LOG_TYPE_DEFAULT))
  {
    v5 = "disabled";
    if (a2)
    {
      v5 = "enabled";
    }

    v6 = 136315138;
    v7 = v5;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "Set plugin audio logging to: %s", &v6, 0xCu);
  }

  *(a1 + 793) = a2;
}

_BYTE *sub_2088(_BYTE *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_9824();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  a1[23] = v4;
  if (v4)
  {
    memmove(a1, __s, v4);
  }

  a1[v5] = 0;
  return a1;
}

void sub_2140(uint64_t a1, int a2)
{
  v4 = qword_B7DE0;
  if (os_log_type_enabled(qword_B7DE0, OS_LOG_TYPE_DEFAULT))
  {
    v5 = "disabled";
    if (a2)
    {
      v5 = "enabled";
    }

    v6 = 136315138;
    v7 = v5;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "Set plugin audio capture to: %s", &v6, 0xCu);
  }

  *(a1 + 792) = a2;
}

void sub_2208(uint64_t a1)
{
  v11[0] = 0;
  v11[1] = 0;
  sub_70AF4(v11, a1 + 600);
  v2 = qword_B7DE0;
  if (os_log_type_enabled(qword_B7DE0, OS_LOG_TYPE_DEFAULT))
  {
    v3 = (*(*a1 + 16))(a1);
    if ((*(*a1 + 1072))(a1))
    {
      v4 = "Yes";
    }

    else
    {
      v4 = "No";
    }

    v5 = (*(*a1 + 1080))(a1);
    v6 = (*(*a1 + 1584))(a1);
    if (v5)
    {
      v7 = "Yes";
    }

    else
    {
      v7 = "No";
    }

    *buf = 67109890;
    v13 = v3;
    v14 = 2082;
    v15 = v4;
    v16 = 2082;
    v17 = v7;
    v18 = 1024;
    v19 = v6;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "InitializeIOStreams audioObjectID: %u hasOutput: %{public}s hasInput: %{public}s PCM Packetizaton Threshold: %u", buf, 0x22u);
  }

  v8 = malloc_type_calloc(1uLL, 0x418uLL, 0x10800404ACF7207uLL);
  (*(*a1 + 1712))(a1, v8);
  *(*(*a1 + 1672))(a1) = 64;
  if ((*(*a1 + 1072))(a1))
  {
    (*(*a1 + 1704))(a1, *(a1 + 380));
    v9 = (*(*a1 + 1688))(a1);
    v10 = malloc_type_calloc(v9, 1uLL, 0x1000040BDFB0063uLL);
    (*(*a1 + 1696))(a1, v10);
  }

  if ((*(*a1 + 1080))(a1))
  {
    *(a1 + 808) = 16450;
    *(a1 + 800) = malloc_type_calloc(1uLL, 0x8084uLL, 0x1000040BDFB0063uLL);
  }

  if (*(a1 + 793) == 1)
  {
    mach_timebase_info((a1 + 9020));
  }

  operator new();
}

uint64_t sub_2624(uint64_t a1)
{
  v3[0] = 0;
  v3[1] = 0;
  sub_70AF4(v3, a1 + 600);
  sub_2688(a1, 0);
  *(a1 + 192) = 0;
  return sub_70C40(v3);
}

void sub_2688(uint64_t a1, int a2)
{
  v4 = qword_B7DE0;
  if (os_log_type_enabled(qword_B7DE0, OS_LOG_TYPE_DEFAULT))
  {
    v5 = "NO";
    if (a2)
    {
      v5 = "YES";
    }

    v6 = 136446210;
    v7 = v5;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "Signaling audio start condition! %{public}s", &v6, 0xCu);
  }

  atomic_store(a2, (a1 + 288));
  if (*(a1 + 508))
  {
    pthread_mutex_lock((a1 + 664));
    pthread_cond_signal((a1 + 728));
    pthread_mutex_unlock((a1 + 664));
  }
}

uint64_t sub_2774(uint64_t a1)
{
  v5[0] = 0;
  v5[1] = 0;
  sub_70AF4(v5, a1 + 600);
  atomic_store(0, (a1 + 288));
  if (*(a1 + 208))
  {
    sub_11568();
    operator delete();
  }

  v2.n128_f64[0] = sub_2990(a1);
  if (*(a1 + 16))
  {
    nullsub_88(v2.n128_f64[0]);
    operator delete();
  }

  if ((*(*a1 + 1672))(a1, v2) && *(*(*a1 + 1672))(a1))
  {
    v3 = (*(*a1 + 1672))(a1);
    free(v3);
    (*(*a1 + 1712))(a1, 0);
  }

  if (*(a1 + 800) && (*(*a1 + 1080))(a1))
  {
    free(*(a1 + 800));
    *(a1 + 800) = 0;
    *(a1 + 808) = 0;
  }

  if (*(a1 + 400))
  {
    operator delete();
  }

  pthread_mutex_lock((a1 + 664));
  pthread_cond_signal((a1 + 728));
  sub_29E0(a1);
  pthread_mutex_unlock((a1 + 664));
  pthread_mutex_destroy((a1 + 664));
  pthread_cond_destroy((a1 + 728));
  return sub_70C40(v5);
}

double sub_2990(FILE **a1)
{
  v2 = a1 + 1129;
  fclose(a1[1129]);
  fclose(a1[1130]);
  fclose(a1[1131]);
  fclose(a1[1132]);
  result = 0.0;
  *v2 = 0u;
  v2[1] = 0u;
  return result;
}

void *sub_29E0(uint64_t a1)
{
  result = *(a1 + 80);
  if (result)
  {
    free(result);
    result = sub_24F04(a1 + 168);
    *(a1 + 80) = 0;
  }

  return result;
}

uint64_t sub_2A18(uint64_t a1, double a2)
{
  v4 = qword_B7DE0;
  if (os_log_type_enabled(qword_B7DE0, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 296);
    v9 = 67109120;
    v10 = v5;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "BT Audio jitter: Update sample rate to %d", &v9, 8u);
  }

  v6 = *(a1 + 296);
  if (v6 != a2)
  {
    v7 = qword_B7DE0;
    if (os_log_type_enabled(qword_B7DE0, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 67109376;
      v10 = v6;
      v11 = 1024;
      v12 = a2;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "BT Audio mPhysicalFormat.mSampleRate %d, sampleRate %d", &v9, 0xEu);
    }

    *(a1 + 296) = a2;
  }

  return 0;
}

void sub_2B44(uint64_t a1, int a2, const void *a3, size_t a4)
{
  if (*(a1 + 792) == 1)
  {
    v17 = 0;
    memset(__filename, 0, sizeof(__filename));
    v15 = 0;
    v13 = 0u;
    v14 = 0u;
    *v12 = 0u;
    memset(&v11, 0, sizeof(v11));
    v10 = time(0);
    localtime_r(&v10, &v11);
    sprintf(v12, "%d_%d_%d_%d_%d_%d", v11.tm_year + 1900, v11.tm_mon + 1, v11.tm_mday, v11.tm_hour, v11.tm_min, v11.tm_sec);
    sub_42134();
    if (a2 > 1)
    {
      if (a2 == 2)
      {
        v8 = *(a1 + 9048);
        if (v8)
        {
          goto LABEL_18;
        }

        v9 = (a1 + 9048);
        sprintf(__filename, "%s/outputEncodedCapture-%s.enc");
      }

      else
      {
        if (a2 != 3)
        {
LABEL_11:
          if (os_log_type_enabled(qword_B7DE0, OS_LOG_TYPE_ERROR))
          {
            sub_75F7C();
          }

          return;
        }

        v8 = *(a1 + 9056);
        if (v8)
        {
          goto LABEL_18;
        }

        v9 = (a1 + 9056);
        sprintf(__filename, "%s/outputRawCapture-%s.pcm");
      }
    }

    else
    {
      if (a2)
      {
        if (a2 == 1)
        {
          v8 = *(a1 + 9040);
          if (!v8)
          {
            v9 = (a1 + 9040);
            sprintf(__filename, "%s/inputRawCapture-%s.pcm");
            goto LABEL_17;
          }

LABEL_18:
          fwrite(a3, 1uLL, a4, v8);
          return;
        }

        goto LABEL_11;
      }

      v8 = *(a1 + 9032);
      if (v8)
      {
        goto LABEL_18;
      }

      v9 = (a1 + 9032);
      sprintf(__filename, "%s/inputEncodedCapture-%s.enc");
    }

LABEL_17:
    v8 = fopen(__filename, "wb");
    *v9 = v8;
    if (!v8)
    {
      return;
    }

    goto LABEL_18;
  }
}

void sub_2D44(uint64_t a1, uint64_t a2, void *a3)
{
  if ((*(*a1 + 1328))(a1) && *(a1 + 424) == 1)
  {
    (*(*a1 + 824))(v9, a1, 0);
    bzero(a3, (v10 * a2));
  }

  else
  {
    (*(*a1 + 1616))(a1, a2, a3);
    if ((*(*a1 + 1320))(a1))
    {
      v6 = *(a1 + 400);
      if (v6)
      {
        v7 = atomic_load((v6 + 24));
        if (v7)
        {
          v8 = *(a1 + 400);
          (*(*a1 + 824))(v9, a1, 0);
          sub_16584(v8, a3, a2, v9);
        }
      }
    }
  }
}

void sub_2EE0(uint64_t a1, unsigned int a2, const float *a3, uint64_t a4)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    sub_1C194(v4, a2, a3, a4);
  }
}

void sub_2EF0(uint64_t a1, uint64_t a2, const float *a3, uint64_t a4)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    sub_1BDAC(v4, a2, a3, a4);
  }
}

uint64_t sub_2F00(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v27[0] = 0;
  v27[1] = 0;
  sub_70AF4(v27, (a1 + 75));
  if (a1[27])
  {
    v6 = sub_15BF0(a1[3]);
    v7 = a1[27];
    v8 = (*(*a1 + 1672))(a1);
    (*(*v7 + 24))(v7, a3, a2, v8, 64);
    v9 = 0;
    v10 = 0;
    while (1)
    {
      if (v9 >= *(*(*a1 + 1672))(a1))
      {
        v22 = sub_70820();
        if ((v10 - 1) < 0xB)
        {
          v23 = v22;
        }

        else
        {
          v23 = 0;
        }

        if (v23 == 1 && *(a1[27] + 52) == 33023)
        {
          sub_707B4(36, v6, 0, 0, 0);
        }

        return sub_70C40(v27);
      }

      v11 = *((*(*a1 + 1672))(a1) + 16 * v9 + 12);
      if (v11)
      {
        break;
      }

LABEL_31:
      ++v9;
    }

    if (v11 > (*(*a1 + 800))(a1))
    {
      v12 = qword_B7DE0;
      if (os_log_type_enabled(qword_B7DE0, OS_LOG_TYPE_FAULT))
      {
        sub_75FB8(v30, &v31, v12);
      }

      if (sub_70820())
      {
        abort();
      }
    }

    if (v11 > (*(*a1 + 800))(a1))
    {
      v24 = qword_B7DE0;
      if (os_log_type_enabled(qword_B7DE0, OS_LOG_TYPE_ERROR))
      {
        v25 = (*(*a1 + 800))(a1);
        sub_76008(buf, v11, v25, v24);
      }

      return sub_70C40(v27);
    }

    v13 = a1[27];
    if (v6)
    {
      if (!v13)
      {
LABEL_29:
        v18 = *((*(*a1 + 1672))(a1) + 16 * v9 + 12);
        v19 = a1[3];
        v20 = (*(*a1 + 1672))(a1);
        sub_15924(v19, *(v20 + 16 * v9 + 16), v11);
        v6 += v11;
        ++*(a1 + 119);
        v10 += v18;
        if ((*(*a1 + 1720))(a1))
        {
          *(a1 + 119) = 0;
          sub_15B0C(a1[3]);
          v6 = sub_15BF0(a1[3]);
        }

        goto LABEL_31;
      }
    }

    else
    {
      if (!v13)
      {
        v6 = 0;
        goto LABEL_29;
      }

      if (*(v13 + 52) == 2)
      {
        if (*(v13 + 104) == 48000.0)
        {
          v14 = &unk_885C0;
        }

        else
        {
          v14 = &unk_885C9;
        }

        sub_15924(a1[3], v14, 9uLL);
        v15 = *((*(*a1 + 1672))(a1) + 16 * v9 + 12);
        if (v15 >= 0xFF)
        {
          do
          {
            buf[0] = -1;
            sub_15924(a1[3], buf, 1uLL);
            v15 -= 255;
          }

          while (v15 > 0xFE);
        }

        buf[0] = v15;
        sub_15924(a1[3], buf, 1uLL);
        v13 = a1[27];
        v6 = 9;
        if (!v13)
        {
          goto LABEL_29;
        }
      }

      else
      {
        v6 = 0;
      }
    }

    if (*(v13 + 52) == 33023)
    {
      if (*((*(*a1 + 1672))(a1) + 16 * v9 + 12) >= 0x800u)
      {
        v16 = qword_B7DE0;
        if (os_log_type_enabled(qword_B7DE0, OS_LOG_TYPE_ERROR))
        {
          v21 = *((*(*a1 + 1672))(a1) + 16 * v9 + 12);
          *buf = 67109120;
          v29 = v21;
          _os_log_error_impl(&dword_0, v16, OS_LOG_TYPE_ERROR, "FATAL: Unable to correctly create AAC-ELD Size Header for %d bytes of encoded audio (max: 0x7FF = 2047)", buf, 8u);
        }
      }

      v17 = (*(*a1 + 1672))(a1);
      v6 += (*(*a1 + 1568))(a1, *(v17 + 16 * v9 + 12));
    }

    goto LABEL_29;
  }

  if (os_log_type_enabled(qword_B7DE0, OS_LOG_TYPE_ERROR))
  {
    sub_76060();
  }

  return sub_70C40(v27);
}

void sub_3520(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_70C40(va);
  _Unwind_Resume(a1);
}

void sub_355C(uint64_t a1)
{
  v2 = *(a1 + 208);
  if (v2)
  {
    sub_11CAC(v2);
  }

  *(a1 + 510) = 0;
}

uint64_t sub_358C(uint64_t a1, uint64_t a2, char *a3)
{
  v40[0] = 0;
  v40[1] = 0;
  sub_70AF4(v40, a1 + 600);
  v39 = 0;
  v37 = 0u;
  v38 = 0u;
  (*(*a1 + 824))(&v37, a1, 0);
  if (!*(a1 + 216))
  {
    sub_25624(a1 + 96, a3, (v38 * a2));
    v8 = 0;
    v10 = 0;
    goto LABEL_32;
  }

  if (!a3)
  {
    if (os_log_type_enabled(qword_B7DE0, OS_LOG_TYPE_ERROR))
    {
      sub_760D8();
    }

    goto LABEL_43;
  }

  if (!(*(*a1 + 1672))(a1))
  {
    if (os_log_type_enabled(qword_B7DE0, OS_LOG_TYPE_ERROR))
    {
      sub_7609C();
    }

LABEL_43:
    v10 = 0;
    goto LABEL_44;
  }

  v6 = *(a1 + 216);
  v7 = (*(*a1 + 1672))(a1);
  (*(*v6 + 24))(v6, a3, a2, v7, 64);
  v8 = 0;
  LODWORD(v9) = 0;
  v10 = 0;
  while (v9 < *(*(*a1 + 1672))(a1))
  {
    if (*((*(*a1 + 1672))(a1) + 16 * v9 + 12))
    {
      v11 = v9;
      if ((*(**(a1 + 216) + 32))(*(a1 + 216)))
      {
        if ((*(**(a1 + 216) + 40))(*(a1 + 216)))
        {
          v12 = 1;
        }

        else
        {
          v12 = HIDWORD(v38) == 1;
        }

        if (v12 || *(*(a1 + 216) + 132) == 1)
        {
          if (_os_feature_enabled_impl() && *(*(a1 + 216) + 52) == 508 && sub_32EAC(*(*(a1 + 416) + 9280)))
          {
            v13 = (*(*a1 + 1672))(a1);
            (*(*a1 + 1576))(a1, byte_B7DE8, *(v13 + 16 * v9 + 12));
            v14 = *((*(*a1 + 1672))(a1) + 16 * v9 + 16);
            v15 = (*(*a1 + 1672))(a1);
            memcpy(&unk_B7DF2, v14, *(v15 + 16 * v9 + 12));
            v16 = (*(*a1 + 1672))(a1);
            v8 = sub_25698(a1 + 96, byte_B7DE8, (*(v16 + 16 * v9 + 12) + 10));
            v17 = *((*(*a1 + 1672))(a1) + 16 * v9 + 16);
            v18 = (*(*a1 + 1672))(a1);
            sub_2B44(a1, 2, v17, *(v18 + 16 * v9 + 12));
            if (*(a1 + 793) == 1)
            {
              v19 = qword_B7DE0;
              if (os_log_type_enabled(qword_B7DE0, OS_LOG_TYPE_DEFAULT))
              {
                v20 = *((*(*a1 + 1672))(a1) + 16 * v9 + 12);
                *buf = 67109376;
                v42 = v20;
                v43 = 1024;
                v44 = v8;
                _os_log_impl(&dword_0, v19, OS_LOG_TYPE_DEFAULT, "Number of bytes to write: %d; number of bytes written: %d;", buf, 0xEu);
              }
            }
          }

          else
          {
            v21 = *((*(*a1 + 1672))(a1) + 16 * v9 + 16);
            v22 = (*(*a1 + 1672))(a1);
            v8 = sub_25698(a1 + 96, v21, *(v22 + 16 * v9 + 12));
            v23 = *((*(*a1 + 1672))(a1) + 16 * v9 + 12);
            v24 = *((*(*a1 + 1672))(a1) + 16 * v9 + 16);
            v25 = (*(*a1 + 1672))(a1);
            sub_2B44(a1, 2, v24, *(v25 + 16 * v9 + 12));
            v10 += v23;
          }
        }

        else
        {
          v28 = *((*(*a1 + 1672))(a1) + 16 * v9 + 16);
          v29 = *((*(*a1 + 1672))(a1) + 16 * v9 + 12);
          v9 = v9 + 1;
          v30 = *((*(*a1 + 1672))(a1) + 16 * (v11 + 1) + 16);
          v31 = (*(*a1 + 1672))(a1);
          v8 = sub_257B0(a1 + 96, v28, v29, v30, *(v31 + 16 * v9 + 12));
        }
      }

      else
      {
        v26 = *((*(*a1 + 1672))(a1) + 16 * v9 + 16);
        v27 = (*(*a1 + 1672))(a1);
        v8 = sub_25624(a1 + 96, v26, *(v27 + 16 * v9 + 12));
      }

      ++*(a1 + 476);
    }

    LODWORD(v9) = v9 + 1;
  }

  v32 = sub_70820();
  if ((v8 - 1) < 0xB)
  {
    v33 = v32;
  }

  else
  {
    v33 = 0;
  }

  if (v33 == 1)
  {
    v34 = *(*(a1 + 216) + 52);
    if (v34 == 510 || v34 == 260)
    {
      sub_707B4(36, v8, 0, 0, 0);
    }
  }

LABEL_32:
  sub_70BD4(v40);
  (*(*a1 + 1632))(a1);
  if (!*(a1 + 216))
  {
    v35 = *(a1 + 208);
LABEL_40:
    *(a1 + 476) = 0;
    *(a1 + 472) = 1;
    sub_11D6C(v35);
    goto LABEL_44;
  }

  if ((*(*a1 + 1720))(a1, *(a1 + 476), v8))
  {
    if (!*(a1 + 472))
    {
      v35 = *(a1 + 208);
      if (v35)
      {
        goto LABEL_40;
      }
    }
  }

LABEL_44:
  sub_70C40(v40);
  return v10;
}

void sub_3EF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_70C40(va);
  _Unwind_Resume(a1);
}

unint64_t sub_3F14(uint64_t a1, uint64_t a2, unint64_t a3, void *a4)
{
  v22 = 0;
  if ((*(*a2 + 40))(a2))
  {
    if (a3)
    {
      v8 = 0;
      while (1)
      {
        if (!sub_24F3C(a1 + 120))
        {
          return v8;
        }

        v9 = sub_2523C(a1 + 120, &unk_B81E8, 0x2021uLL);
        v10 = v9;
        if (v9 <= 1)
        {
          v11 = qword_B7DE0;
          if (os_log_type_enabled(qword_B7DE0, OS_LOG_TYPE_ERROR))
          {
            *buf = 134217984;
            v24 = v10;
            _os_log_error_impl(&dword_0, v11, OS_LOG_TYPE_ERROR, "Input Decode: Bytes read too small: bytesRead %lu", buf, 0xCu);
          }

          goto LABEL_22;
        }

        v12 = byte_B81E9;
        *a4 += v9;
        if (v12)
        {
          *(a1 + 592) = 1;
          sub_2B44(a1, 0, &unk_B81EA, v12);
          if ((*(a1 + 592) & 1) == 0)
          {
            goto LABEL_18;
          }
        }

        else
        {
          sub_2B44(a1, 0, &unk_B81EA, 0);
          if ((*(a1 + 592) & 1) == 0)
          {
LABEL_18:
            v15 = qword_B7DE0;
            if (os_log_type_enabled(qword_B7DE0, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_0, v15, OS_LOG_TYPE_DEFAULT, "Input Decode: This may be an invalid packet. Not decoding", buf, 2u);
            }

            v14 = v22;
            if (!v22)
            {
              goto LABEL_22;
            }

            goto LABEL_21;
          }

          v13 = sub_24F20(a1 + 144);
          sub_707B4(35, v13, 0, 0, 0);
        }

        (*(*a2 + 32))(a2, &unk_B81EA, v12, byte_BA20A, 16450, &v22);
        v14 = v22;
        if (*(a1 + 584) && !v22)
        {
          (*(*a2 + 32))(a2, &unk_B81EA, 0, byte_BA20A, 16450, &v22);
          v14 = v22;
        }

        v8 += v14;
        if (!v14)
        {
          goto LABEL_22;
        }

LABEL_21:
        sub_25624(a1 + 144, byte_BA20A, v14);
        sub_2B44(a1, 1, byte_BA20A, v22);
        v22 = 0;
LABEL_22:
        if (v8 >= a3)
        {
          return v8;
        }
      }
    }

    return 0;
  }

  if (!a3)
  {
    return 0;
  }

  v8 = 0;
  do
  {
    if (!sub_24F3C(a1 + 120))
    {
      break;
    }

    v16 = (*(*a2 + 64))(a2);
    if (!v16)
    {
      v17 = qword_B7DE0;
      if (os_log_type_enabled(qword_B7DE0, OS_LOG_TYPE_ERROR))
      {
        sub_76114(buf, &buf[1], v17);
      }
    }

    if (v16 >= 0x2021)
    {
      v18 = 8225;
    }

    else
    {
      v18 = v16;
    }

    v19 = sub_251D0(a1 + 120, &unk_B81E8, v18);
    sub_2B44(a1, 0, &unk_B81E8, v19);
    (*(*a2 + 32))(a2, &unk_B81E8, v19, byte_BA20A, 16450, &v22);
    v20 = v22;
    if (v22)
    {
      sub_25624(a1 + 144, byte_BA20A, v22);
      sub_2B44(a1, 1, byte_BA20A, v22);
      v22 = 0;
    }

    v8 += v20;
  }

  while (v8 < a3);
  return v8;
}

uint64_t sub_4358(unsigned __int8 *a1)
{
  v2 = atomic_load(a1 + 593);
  if (v2)
  {
    (*(*a1 + 1592))(a1);
  }

  v3 = *(*a1 + 664);

  return v3(a1);
}

uint64_t sub_43FC(uint64_t a1, int a2, BOOL *a3, _BYTE *a4)
{
  if (a3)
  {
    v5 = a2 == 1919246692 || a2 == 1919513701;
    *a3 = v5;
  }

  if (a4)
  {
    *a4 = 1;
  }

  return 0;
}

uint64_t sub_4434(uint64_t *a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, void *a6)
{
  v6 = 1852797029;
  v7 = atomic_load(a1 + 288);
  if (v7)
  {
    if (a3 == 1919246692)
    {
      v40 = 0;
      v38 = 0u;
      v39 = 0u;
      (*(*a1 + 824))(&v38, a1, 1);
      v26 = a1[28];
      if (v26)
      {
        v27 = (v26 + 80);
      }

      else
      {
        v27 = &v39;
      }

      v28 = (*v27 * a4);
      if (v28)
      {
        bzero(a6, v28);
        v29 = a1[28];
        v37 = 0;
        if (v29)
        {
          v30 = (*(*a1 + 1624))(a1, v29, v28, &v37);
          v31 = v37;
          v32 = sub_251D0((a1 + 18), a6, v28);
          v33 = sub_24F20((a1 + 18));
        }

        else
        {
          v32 = sub_251D0((a1 + 15), a6, v28);
          v33 = sub_24F20((a1 + 15));
          sub_2B44(a1, 1, a6, v32);
          v30 = 0;
          v31 = 0;
        }

        sub_707B4(30, v28, v32, v33, v28);
        v34 = a1[2];
        if (v34)
        {
          sub_1BDAC(v34, v32, a6, v31);
        }

        if (v32 != v28)
        {
          v35 = qword_B7DE0;
          if (os_log_type_enabled(qword_B7DE0, OS_LOG_TYPE_ERROR))
          {
            *buf = 134218496;
            v42 = v28;
            v43 = 2048;
            v44 = v32;
            v45 = 2048;
            v46 = v30;
            _os_log_error_impl(&dword_0, v35, OS_LOG_TYPE_ERROR, "Input Decode: Requested %lu bytes, but only read %lu bytes instead. Decoded a total of %lu bytes", buf, 0x20u);
          }
        }

        return 0;
      }

      if (os_log_type_enabled(qword_B7DE0, OS_LOG_TYPE_ERROR))
      {
        sub_76154();
      }
    }

    else
    {
      if (a3 != 1919513701)
      {
        return 0;
      }

      if ((*(*a1 + 1680))(a1))
      {
        if ((*(*a1 + 904))(a1))
        {
          v11 = mach_absolute_time();
          v12 = atomic_load(a1 + 593);
          if (v12)
          {
            (*(*a1 + 1592))(a1, a4, v11);
          }

          (*(*a1 + 664))(a1);
        }

        v40 = 0;
        v38 = 0u;
        v39 = 0u;
        (*(*a1 + 824))(&v38, a1, 0);
        v13 = (v39 * a4);
        v14 = (*(*a1 + 1584))(a1);
        v15 = v14;
        v16 = v39 * v14;
        if (v14)
        {
          v17 = v14;
        }

        else
        {
          v17 = a4;
        }

        if (v16)
        {
          v18 = v39 * v14;
        }

        else
        {
          v18 = v13;
        }

        sub_25624((a1 + 21), a6, v13);
        sub_707B4(31, v18, 0, 0, 0);
        v19 = 0;
        do
        {
          if (v15 && sub_24F20((a1 + 21)) < v18)
          {
            break;
          }

          v20 = (*(*a1 + 1680))(a1);
          sub_251D0((a1 + 21), v20, v18);
          v21 = (*(*a1 + 1680))(a1);
          sub_2B44(a1, 3, v21, v18);
          v22 = (*(*a1 + 1680))(a1);
          sub_2D44(a1, v17, v22);
          v23 = (*(*a1 + 376))(a1);
          v24 = (*(*a1 + 1680))(a1);
          if (v23)
          {
            sub_2F00(a1, v17, v24);
          }

          else
          {
            v19 += sub_358C(a1, v17, v24);
          }
        }

        while (v16 && sub_24F20((a1 + 21)) >= v16);
        v25 = a1[2];
        if (v25)
        {
          sub_1C194(v25, a4, a6, v19);
        }

        return 0;
      }
    }
  }

  return v6;
}

void *sub_4A40(uint64_t a1, uint64_t a2, double *a3, void *a4, void *a5)
{
  v9 = mach_absolute_time();
  v10 = *(a1 + 376);
  if (!*(a1 + 448))
  {
    v11 = *&qword_C2290;
    if (*&qword_C2290 == 0.0)
    {
      *&info = 0.0;
      if (mach_timebase_info(&info))
      {
        qword_C2290 = 0x41CDCD6500000000;
        v11 = 1000000000.0;
      }

      else if (info.numer && info.denom)
      {
        v11 = info.denom / info.numer * 1000000000.0;
        *&qword_C2290 = v11;
      }

      else
      {
        v11 = *&qword_C2290;
      }
    }

    v12 = v11 * v10;
    (*(*a1 + 824))(&info, a1, 0);
    v13 = (v12 / *&info * *(a1 + 588));
    *(a1 + 440) = v9;
    *(a1 + 448) = v9 + v13;
    *(a1 + 456) = v13;
    *(a1 + 464) = 0;
  }

  v19 = 0;
  result = mach_timebase_info(&v19);
  if (v9 >= *(a1 + 448))
  {
    v17 = *&qword_C2290 * v10;
    result = (*(*a1 + 824))(&info, a1, 0);
    v18 = (v17 / *&info * *(a1 + 588));
    *(a1 + 456) = v18;
    v16 = *(a1 + 448);
    *(a1 + 440) = v16;
    *(a1 + 448) = v16 + v18;
    v15 = *(a1 + 464) + v10;
    *(a1 + 464) = v15;
  }

  else
  {
    v15 = *(a1 + 464);
    v16 = *(a1 + 440);
  }

  *a3 = v15;
  *a4 = v16;
  *a5 = 0;
  return result;
}

uint64_t sub_4C24(uint64_t a1)
{
  v2 = qword_B7DE0;
  if (os_log_type_enabled(qword_B7DE0, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(*(a1 + 416) + 9288);
    v44[0] = BYTE3(v3);
    v44[1] = BYTE2(v3);
    v44[2] = BYTE1(v3);
    v44[3] = v3;
    v44[4] = 0;
    v4 = *(a1 + 432);
    v5 = *(a1 + 200);
    v6 = (*(*a1 + 16))(a1);
    v7 = (*(*a1 + 408))(a1);
    *buf = 136447234;
    *v46 = v44;
    *&v46[8] = 2048;
    *&v46[10] = v4;
    v47 = 2114;
    v48 = v5;
    v49 = 1024;
    v50 = v6;
    v51 = 1024;
    v52 = v7;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "Starting IO on profile %{public}s, activeIO:%llu to %{public}@ mAudioObjectID: %u Wait IO Start %d", buf, 0x2Cu);
  }

  v8 = *(*(*(a1 + 416) + 9280) + 344);
  if (((*(*a1 + 1352))(a1) & 1) == 0 && (*(*a1 + 880))(a1) && (v8 & 1) == 0 && os_log_type_enabled(qword_B7DE0, OS_LOG_TYPE_ERROR))
  {
    sub_76190();
  }

  v9 = *(a1 + 432);
  if (v9 == -1)
  {
    v10 = 1852797029;
    if (os_log_type_enabled(qword_B7DE0, OS_LOG_TYPE_ERROR))
    {
      sub_76208();
    }

    goto LABEL_45;
  }

  v10 = 0;
  *(a1 + 432) = v9 + 1;
  *(a1 + 592) = 0;
  if (v9)
  {
LABEL_45:
    v32 = qword_B7DE0;
    if (os_log_type_enabled(qword_B7DE0, OS_LOG_TYPE_DEFAULT))
    {
      v33 = *(a1 + 432);
      *buf = 67109376;
      *v46 = v10;
      *&v46[4] = 2048;
      *&v46[6] = v33;
      _os_log_impl(&dword_0, v32, OS_LOG_TYPE_DEFAULT, "StartIO returns %x (%llu)", buf, 0x12u);
    }

    return v10;
  }

  if (!*(a1 + 208))
  {
LABEL_42:
    v10 = 0;
    *(a1 + 472) = 0;
    goto LABEL_45;
  }

  pthread_mutex_lock((a1 + 664));
  v12 = *(a1 + 16);
  if (v12)
  {
    v11.n128_f64[0] = sub_1B974(v12);
  }

  if (((*(*a1 + 376))(a1, v11) & 1) == 0)
  {
    sub_5450(a1);
  }

  if (*(a1 + 9017) == 1 && *(a1 + 9016) == 1)
  {
    (*(**(a1 + 416) + 1496))(*(a1 + 416));
    v13 = qword_B7DE0;
    if (os_log_type_enabled(qword_B7DE0, OS_LOG_TYPE_DEFAULT))
    {
      v14 = *(a1 + 200);
      *buf = 138543362;
      *v46 = v14;
      _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "%{public}@ : Injecting silent Audio started", buf, 0xCu);
    }

    v15 = (*(**(a1 + 416) + 16))(*(a1 + 416));
    v42[0] = _NSConcreteStackBlock;
    v42[1] = 3221225472;
    v42[2] = sub_5634;
    v42[3] = &unk_AD328;
    v43 = v15;
    sub_507D8(qword_D8DF0, v15, v42);
  }

  sub_5718(a1);
  sub_11930(*(a1 + 208), *(a1 + 32), *(a1 + 40), *(a1 + 48), *(a1 + 56));
  v16 = *(a1 + 216);
  if (v16 && *(v16 + 52) == 33023)
  {
    (*(*a1 + 1656))(a1);
  }

  if ((*(*a1 + 296))(a1))
  {
    v17 = qword_D8DF0;
    v18 = (*(*a1 + 16))(a1);
    if (sub_500F8(v17, v18))
    {
      v19 = qword_D8DF0;
      v20 = (*(*a1 + 16))(a1);
      sub_50454(v19, v20);
    }
  }

  if (!*(a1 + 508) || !(*(*a1 + 408))(a1))
  {
LABEL_40:
    pthread_mutex_unlock((a1 + 664));
    if (sub_42134())
    {
      (*(**(a1 + 416) + 624))(*(a1 + 416), 0, 200);
    }

    goto LABEL_42;
  }

  v21 = mach_absolute_time();
  if (*(a1 + 793) == 1)
  {
    v22 = qword_B7DE0;
    if (os_log_type_enabled(qword_B7DE0, OS_LOG_TYPE_DEFAULT))
    {
      v23 = mach_absolute_time() * *(a1 + 9020) / *(a1 + 9024) / 0x3E8;
      *buf = 134217984;
      *v46 = v23;
      _os_log_impl(&dword_0, v22, OS_LOG_TYPE_DEFAULT, "start time %llus", buf, 0xCu);
    }
  }

  v24 = pthread_cond_timedwait_relative_np((a1 + 728), (a1 + 664), (a1 + 776));
  if (v24 == 60)
  {
    if (os_log_type_enabled(qword_B7DE0, OS_LOG_TYPE_ERROR))
    {
      sub_761CC();
    }

    dispatch_async(*(qword_D8DF0 + 192), &stru_AD368);
  }

  if (*(a1 + 192))
  {
    if (*(a1 + 793) == 1)
    {
      v25 = qword_B7DE0;
      if (os_log_type_enabled(qword_B7DE0, OS_LOG_TYPE_DEFAULT))
      {
        v26 = mach_absolute_time() * *(a1 + 9020) / *(a1 + 9024) / 0x3E8;
        *buf = 134217984;
        *v46 = v26;
        _os_log_impl(&dword_0, v25, OS_LOG_TYPE_DEFAULT, "response time %llus", buf, 0xCu);
      }
    }

    v27 = mach_absolute_time();
    v28 = sub_352E8(*(*(a1 + 416) + 9280), v27 - v21, 1);
    v29 = *(a1 + 368);
    v30 = (*(*a1 + 856))(a1);
    v31 = *(qword_D8DF0 + 192);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_57F0;
    block[3] = &unk_AD388;
    v37 = 0;
    v38 = v24;
    v39 = v29;
    v40 = v30;
    v41 = v28;
    dispatch_async(v31, block);
    goto LABEL_40;
  }

  v35 = qword_B7DE0;
  if (os_log_type_enabled(qword_B7DE0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v35, OS_LOG_TYPE_DEFAULT, "device No longer valid, StartIO return immediately", buf, 2u);
  }

  pthread_mutex_unlock((a1 + 664));
  return 560227702;
}

BOOL sub_5450(void *a1)
{
  if (!a1[4])
  {
    if ((*(*a1 + 1072))(a1))
    {
      v2 = mmap(0, a1[5], 3, 4097, -1, 0);
      a1[4] = v2;
      if ((sub_24D7C((a1 + 12), v2, a1[5]) & 1) == 0)
      {
        result = os_log_type_enabled(qword_B7DE0, OS_LOG_TYPE_ERROR);
        if (!result)
        {
          return result;
        }

        sub_76244();
        return 0;
      }
    }
  }

  if (!a1[6])
  {
    if ((*(*a1 + 1080))(a1))
    {
      v3 = mmap(0, a1[7], 3, 4097, -1, 0);
      a1[6] = v3;
      if ((sub_24D7C((a1 + 15), v3, a1[7]) & 1) == 0)
      {
        result = os_log_type_enabled(qword_B7DE0, OS_LOG_TYPE_ERROR);
        if (!result)
        {
          return result;
        }

        sub_76280();
        return 0;
      }
    }
  }

  if (a1[8])
  {
    return 1;
  }

  if (!(*(*a1 + 1080))(a1))
  {
    return 1;
  }

  v4 = mmap(0, a1[9], 3, 4097, -1, 0);
  a1[8] = v4;
  if (sub_24D7C((a1 + 18), v4, a1[9]))
  {
    return 1;
  }

  result = os_log_type_enabled(qword_B7DE0, OS_LOG_TYPE_ERROR);
  if (result)
  {
    sub_762BC();
    return 0;
  }

  return result;
}

void *sub_5634(uint64_t a1)
{
  result = sub_508C0(qword_D8DF0, *(a1 + 32));
  if (result)
  {
    v3 = result;
    v4 = result[1137];
    if (v4 && v4[192] == 1)
    {
      (*(*v4 + 1488))(v4, 0, *(a1 + 32));
    }

    result = v3[1140];
    if (result && *(result + 192) == 1)
    {
      v5 = *(a1 + 32);
      v6 = *(*result + 1488);

      return v6();
    }
  }

  return result;
}

BOOL sub_5718(uint64_t a1)
{
  v1 = *(a1 + 80);
  if (*(a1 + 88))
  {
    v2 = *(a1 + 88);
  }

  else
  {
    v2 = 16450;
  }

  *(a1 + 794) = 0;
  if (v1)
  {
    return 1;
  }

  if (!(*(*a1 + 1072))(a1))
  {
    return 1;
  }

  v4 = malloc_type_calloc(1uLL, v2, 0xA11D4559uLL);
  *(a1 + 80) = v4;
  if (v4)
  {
    if (sub_24D7C(a1 + 168, v4, v2))
    {
      return 1;
    }
  }

  result = os_log_type_enabled(qword_B7DE0, OS_LOG_TYPE_ERROR);
  if (result)
  {
    sub_762F8();
    return 0;
  }

  return result;
}

void sub_57F0(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 36);
  sub_4F374(*(a1 + 40), &__p);
  sub_4F18C(v2, v3, &__p, *(a1 + 44), *(a1 + 48));
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_585C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_5878(uint64_t a1)
{
  v2 = qword_B7DE0;
  if (os_log_type_enabled(qword_B7DE0, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(*(a1 + 416) + 9288);
    v13[0] = BYTE3(v3);
    v13[1] = BYTE2(v3);
    v13[2] = BYTE1(v3);
    v13[3] = v3;
    v13[4] = 0;
    v4 = *(a1 + 432);
    *buf = 136446466;
    *&buf[4] = v13;
    *&buf[12] = 2048;
    *&buf[14] = v4;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "StopIO on profile %{public}s, activeIO:%llu", buf, 0x16u);
  }

  *buf = 0;
  *&buf[8] = 0;
  sub_70AF4(buf, a1 + 600);
  v5 = *(a1 + 432);
  if (v5)
  {
    *(a1 + 592) = 0;
    v6 = v5 - 1;
    *(a1 + 432) = v6;
    if (!v6)
    {
      if (*(a1 + 9017) == 1 && *(a1 + 9016) == 1)
      {
        (*(**(a1 + 416) + 1496))(*(a1 + 416));
      }

      v7 = *(a1 + 216);
      if (v7 && *(a1 + 476) && *(v7 + 52) == 33023)
      {
        sub_15B0C(*(a1 + 24));
        *(a1 + 476) = 0;
      }

      *(a1 + 440) = 0u;
      *(a1 + 456) = 0u;
      (*(*a1 + 712))(a1, 0, 1.0);
      if ((*(*a1 + 672))(a1))
      {
        (*(*a1 + 576))(a1, 0, 0);
      }

      if ((*(*a1 + 688))(a1))
      {
        (*(*a1 + 680))(a1, 150);
      }

      if (*(*(*(a1 + 416) + 9280) + 230) == 1)
      {
        if (sub_42134())
        {
          sub_2C0BC(*(*(a1 + 416) + 9280));
          sub_29D3C(*(*(a1 + 416) + 9280), 1);
        }

        *(*(*(a1 + 416) + 9280) + 232) = 0;
        (*(*a1 + 576))(a1, 0, 6);
        if (sub_42134())
        {
          (*(**(a1 + 416) + 624))(*(a1 + 416), 1, 200);
        }

        else
        {
          (*(*a1 + 576))(a1, 0, 7);
        }
      }

      (*(*a1 + 1424))(a1, 1);
      v9 = *(a1 + 216);
      if (v9)
      {
        AudioConverterReset(*(v9 + 56));
        if (*(a1 + 792) == 1)
        {
          sub_111E8(*(a1 + 216));
        }
      }

      v10 = *(a1 + 224);
      if (v10)
      {
        AudioConverterReset(*(v10 + 16));
        if (sub_24F3C(a1 + 144))
        {
          sub_25350(a1 + 144);
        }
      }

      sub_2990(a1);
      sub_5D54(a1);
      sub_29E0(a1);
      sub_5DC8(a1);
      *(a1 + 585) = 1;
      pthread_mutex_lock((*(a1 + 416) + 9512));
      pthread_cond_broadcast((*(a1 + 416) + 9576));
      pthread_mutex_unlock((*(a1 + 416) + 9512));
    }

    v11 = qword_B7DE0;
    if (os_log_type_enabled(qword_B7DE0, OS_LOG_TYPE_DEBUG))
    {
      sub_76334((a1 + 432), v11);
    }

    v8 = 0;
  }

  else
  {
    v8 = 1852797029;
    if (os_log_type_enabled(qword_B7DE0, OS_LOG_TYPE_ERROR))
    {
      sub_763B0();
    }
  }

  sub_70C40(buf);
  return v8;
}

uint64_t sub_5D54(uint64_t result)
{
  v1 = result;
  if (*(result + 32))
  {
    sub_24F04(result + 96);
    result = munmap(*(v1 + 32), *(v1 + 40));
    *(v1 + 32) = 0;
  }

  if (*(v1 + 48))
  {
    sub_24F04(v1 + 120);
    result = munmap(*(v1 + 48), *(v1 + 56));
    *(v1 + 48) = 0;
  }

  if (*(v1 + 64))
  {
    sub_24F04(v1 + 144);
    result = munmap(*(v1 + 64), *(v1 + 72));
    *(v1 + 64) = 0;
  }

  return result;
}

uint64_t sub_5DC8(_DWORD *a1)
{
  result = (*(*a1 + 688))(a1);
  if ((result & 1) == 0)
  {
    v3 = a1[99];
    v4 = a1[97];
    if (v3 != v4)
    {
      v5 = qword_B7DE0;
      if (os_log_type_enabled(qword_B7DE0, OS_LOG_TYPE_DEFAULT))
      {
        v6 = a1[96];
        v7[0] = 67109632;
        v7[1] = v4;
        v8 = 1024;
        v9 = v3;
        v10 = 1024;
        v11 = v6;
        _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "LatencyUpdate Request config change mLinkLatency %u -> %u, mPluginLatency %u to HAL", v7, 0x14u);
        v3 = a1[99];
      }

      return (*(*a1 + 240))(a1, 1819569763, v3);
    }
  }

  return result;
}

uint64_t sub_5F00(uint64_t a1)
{
  v10[0] = 0;
  v10[1] = 0;
  sub_70AF4(v10, a1 + 600);
  if (*(a1 + 216))
  {
    *(a1 + 216) = 0;
  }

  if (*(a1 + 224))
  {
    *(a1 + 224) = 0;
  }

  v2 = *(a1 + 232);
  if (v2)
  {
    if (*(a1 + 792) != 1 || (sub_111E8(v2), (v2 = *(a1 + 232)) != 0))
    {
      (*(*v2 + 8))(v2);
    }

    *(a1 + 232) = 0;
  }

  v3 = *(a1 + 240);
  if (v3)
  {
    (*(*v3 + 8))(v3);
    *(a1 + 240) = 0;
  }

  v4 = *(a1 + 248);
  if (v4)
  {
    if (*(a1 + 792) == 1)
    {
      sub_111E8(v4);
      v4 = *(a1 + 248);
    }

    if (v4 == *(a1 + 272))
    {
      *(a1 + 272) = 0;
    }

    if (v4)
    {
      (*(*v4 + 8))(v4);
    }

    *(a1 + 248) = 0;
  }

  v5 = *(a1 + 272);
  if (v5)
  {
    (*(*v5 + 8))(v5);
    *(a1 + 272) = 0;
  }

  v6 = *(a1 + 256);
  if (v6)
  {
    if (v6 == *(a1 + 280))
    {
      *(a1 + 280) = 0;
    }

    (*(*v6 + 8))(v6);
    *(a1 + 256) = 0;
  }

  v7 = *(a1 + 280);
  if (v7)
  {
    (*(*v7 + 8))(v7);
    *(a1 + 280) = 0;
  }

  v8 = *(a1 + 264);
  if (v8)
  {
    (*(*v8 + 8))(v8);
    *(a1 + 264) = 0;
  }

  return sub_70C40(v10);
}

float sub_610C(uint64_t a1, float a2)
{
  v2 = *(a1 + 492);
  if (v2 > a2)
  {
    a2 = *(a1 + 492);
  }

  v3 = *(a1 + 496);
  if (a2 > v3)
  {
    a2 = *(a1 + 496);
  }

  return ((v3 - a2) / v2) + 1.0;
}

float *sub_615C(float *result, float a2)
{
  v3 = result[120];
  v4 = result[2266];
  v5 = v4 * a2;
  if (v3 != (v4 * a2))
  {
    v6 = result;
    result[120] = v5;
    (*(*result + 328))(result, v4 * a2);
    v7 = qword_B7DE0;
    if (os_log_type_enabled(qword_B7DE0, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(v6 + 25);
      v11[0] = 134218754;
      *&v11[1] = v3;
      v12 = 2048;
      v13 = v5;
      v14 = 2048;
      v15 = a2;
      v16 = 2114;
      v17 = v8;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "Wireless Splitter Updating individual volume from MV [%f -> %f] MV = %f device %{public}@", v11, 0x2Au);
    }

    result = (*(*v6 + 1320))(v6);
    if (result)
    {
      if ((v6[102] & 1) == 0)
      {
        v9 = *(v6 + 50);
        if (v9)
        {
          v10 = atomic_load((v9 + 24));
          if (v10)
          {
            sub_16518(*(v6 + 50), v6[122]);
          }
        }
      }

      strcpy(v11, "dlovptuo");
      BYTE1(v11[2]) = 0;
      HIWORD(v11[2]) = 0;
      return (*(*v6 + 248))(v6, v11);
    }
  }

  return result;
}

void sub_6320(void *a1, int a2)
{
  v3 = *(a1[52] + 9280);
  if (v3[344] != a2)
  {
    sub_35C34(v3, a2);
    v5 = a1[26];
    if (v5)
    {
      v6 = qword_B7DE0;
      if (os_log_type_enabled(qword_B7DE0, OS_LOG_TYPE_DEFAULT))
      {
        if (a2)
        {
          v7 = "enabled";
        }

        else
        {
          v7 = "disabled";
        }

        v8 = (*(*a1 + 16))(a1);
        v9 = 136315394;
        v10 = v7;
        v11 = 1024;
        v12 = v8;
        _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "Wireless Splitter from CA is %s for device %d", &v9, 0x12u);
        v5 = a1[26];
      }

      sub_12EA4(v5, a2);
    }
  }
}

uint64_t sub_6464(uint64_t a1)
{
  v1 = *(a1 + 232);
  if (v1)
  {
    return *(v1 + 52);
  }

  else
  {
    return 0xFFFFLL;
  }
}

void sub_647C(uint64_t a1, void **a2, _BOOL4 a3)
{
  v6 = qword_B7DE0;
  if (os_log_type_enabled(qword_B7DE0, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 200);
    v8 = a2;
    if (*(a2 + 23) < 0)
    {
      v8 = *a2;
    }

    v9 = "Relinquished";
    *buf = 138543874;
    v14 = v7;
    v15 = 2082;
    if (a3)
    {
      v9 = "Owned";
    }

    v16 = v8;
    v17 = 2082;
    v18 = v9;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@] Update ownership state notification for %{public}s Bluetoothd as %{public}s", buf, 0x20u);
  }

  v10 = *(a1 + 208);
  if (v10)
  {
    if (*(a2 + 23) < 0)
    {
      sub_9780(__p, *a2, a2[1]);
    }

    else
    {
      *__p = *a2;
      v12 = a2[2];
    }

    sub_14558(v10, __p, a3);
    if (SHIBYTE(v12) < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_65E0(uint64_t a1, float a2)
{
  v2 = *(a1 + 208);
  if (v2)
  {
    sub_1486C(v2, a2);
  }
}

void sub_65F0(uint64_t a1)
{
  v1 = *(a1 + 208);
  if (v1)
  {
    sub_14964(v1);
  }
}

float sub_6618(uint64_t a1)
{
  v1 = *(a1 + 492);
  v2 = *(a1 + 496);
  TranslateValue();
  return v3;
}

_BYTE *sub_6650@<X0>(int a1@<W1>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v3 = "unknown";
  if (a1 == 2)
  {
    v3 = "right";
  }

  if (a1 == 1)
  {
    v4 = "left";
  }

  else
  {
    v4 = v3;
  }

  return sub_2088(a2, v4);
}

_BYTE *sub_6688@<X0>(int a1@<W1>, uint64_t a2@<X8>)
{
  switch(a1)
  {
    case 2:
      *a2 = 0;
      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
      v3 = "FiedLeft";
      goto LABEL_7;
    case 1:
      *a2 = 0;
      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
      v3 = "FixedRight";
      goto LABEL_7;
    case 0:
      *a2 = 0;
      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
      v3 = "Auto";
LABEL_7:

      return sub_2088(a2, v3);
  }

  if (os_log_type_enabled(qword_B7DE0, OS_LOG_TYPE_ERROR))
  {
    sub_763EC();
  }

  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  return sub_2088(a2, "Unknown");
}

uint64_t sub_6764(uint64_t a1, __int32 *a2)
{
  if (!a2)
  {
    return 1852797029;
  }

  v3 = *(qword_D8DF0 + 144);
  v4 = *v3;
  v5 = (*(*a1 + 16))(a1);
  v6 = v4(v3, v5, 1, a2);
  if (v6)
  {
    v7 = qword_B7DE0;
    if (os_log_type_enabled(qword_B7DE0, OS_LOG_TYPE_ERROR))
    {
      sub_76460(a2, v7, v8);
    }
  }

  return v6;
}

uint64_t sub_6818(uint64_t a1)
{
  v2 = 0x676C6F6262616366;
  v3 = 0;
  return (*(*a1 + 248))(a1, &v2);
}

void sub_687C(uint64_t a1)
{
  v1 = *(a1 + 289);
  v2 = v1 != 0;
  v3 = v1 - 1;
  if (v2)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  *(a1 + 289) = v4;
  v5 = qword_B7DE0;
  if (os_log_type_enabled(qword_B7DE0, OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 67109120;
    v6[1] = v4;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "Decerement StartIO block counters pending Config Change %d", v6, 8u);
  }
}

void sub_692C(uint64_t a1, int a2)
{
  *(a1 + 289) = a2;
  v3 = qword_B7DE0;
  if (os_log_type_enabled(qword_B7DE0, OS_LOG_TYPE_DEFAULT))
  {
    v4[0] = 67109120;
    v4[1] = a2;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "Increment StartIO block counters pending Config Change %d", v4, 8u);
  }
}

void sub_69D8(uint64_t a1)
{
  v1 = *(a1 + 290);
  v2 = v1 != 0;
  v3 = v1 - 1;
  if (v2)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  *(a1 + 290) = v4;
  v5 = qword_B7DE0;
  if (os_log_type_enabled(qword_B7DE0, OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 67109120;
    v6[1] = v4;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "Decrement bypass StartIO counter %d", v6, 8u);
  }
}

void sub_6A88(uint64_t a1)
{
  *(a1 + 290) = 0;
  v1 = qword_B7DE0;
  if (os_log_type_enabled(qword_B7DE0, OS_LOG_TYPE_DEFAULT))
  {
    v2[0] = 67109120;
    v2[1] = 0;
    _os_log_impl(&dword_0, v1, OS_LOG_TYPE_DEFAULT, "Clear bypass StartIO counter %d", v2, 8u);
  }
}

void sub_6B28(uint64_t a1)
{
  v1 = *(a1 + 290) + 1;
  *(a1 + 290) = v1;
  v2 = qword_B7DE0;
  if (os_log_type_enabled(qword_B7DE0, OS_LOG_TYPE_DEFAULT))
  {
    v3[0] = 67109120;
    v3[1] = v1;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "Increment bypass StartIO counter %d", v3, 8u);
  }
}

uint64_t sub_6BDC(uint64_t a1, uint64_t a2)
{
  v5[0] = 0;
  v5[1] = 0;
  sub_70AF4(v5, a1 + 600);
  *(a1 + 208) = a2;
  return sub_70C40(v5);
}

uint64_t sub_6C2C()
{
  v0 = qword_B7DE0;
  if (os_log_type_enabled(qword_B7DE0, OS_LOG_TYPE_FAULT))
  {
    sub_764F4(v0, v1, v2, v3, v4, v5, v6, v7);
  }

  result = sub_70820();
  if (result)
  {
    abort();
  }

  return result;
}

uint64_t sub_6C80(_DWORD *a1, int a2)
{
  v4 = qword_B7DE0;
  if (os_log_type_enabled(qword_B7DE0, OS_LOG_TYPE_DEFAULT))
  {
    v5 = (*(*a1 + 688))(a1);
    v7[0] = 67109376;
    v7[1] = a2;
    v8 = 1024;
    v9 = v5;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "LatencyUpdate Set link latency to %u, dynamic %d", v7, 0xEu);
  }

  result = (*(*a1 + 688))(a1);
  if ((result & 1) == 0)
  {
    a1[97] = a2;
    a1[98] = a2;
  }

  return result;
}

void sub_6DB0(uint64_t a1, int a2)
{
  v4 = (*(*a1 + 688))(a1);
  v5 = *(a1 + 416);
  if (v5)
  {
    v6 = v5[1160];
    if (v6)
    {
      LODWORD(v6) = *(v6 + 344);
    }
  }

  else
  {
    LODWORD(v6) = 0;
  }

  if (v6 | v4)
  {
    *(a1 + 388) = a2;
    *(a1 + 396) = a2;
    v7 = qword_B7DE0;
    if (!os_log_type_enabled(qword_B7DE0, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    v8 = *(a1 + 384);
    v16 = 67109376;
    v17 = a2;
    v18 = 1024;
    v19 = v8;
    v9 = "LatencyUpdate dynamic, mLinkLatency %u, mPluginLatency %u";
    v10 = v7;
    v11 = 14;
    goto LABEL_12;
  }

  *(a1 + 396) = a2;
  if (((*(*v5 + 1024))(v5) & 1) == 0)
  {
    sub_5DC8(a1);
  }

  v12 = qword_B7DE0;
  if (os_log_type_enabled(qword_B7DE0, OS_LOG_TYPE_DEFAULT))
  {
    v13 = *(a1 + 388);
    v14 = *(a1 + 384);
    v15 = (*(**(a1 + 416) + 1024))(*(a1 + 416));
    v16 = 67109632;
    v17 = v13;
    v18 = 1024;
    v19 = v14;
    v20 = 1024;
    v21 = v15;
    v9 = "LatencyUpdate static, mLinkLatency %u, mPluginLatency %u, IO %d";
    v10 = v12;
    v11 = 20;
LABEL_12:
    _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, v9, &v16, v11);
  }
}

uint64_t sub_6F9C()
{
  v0 = qword_B7DE0;
  if (os_log_type_enabled(qword_B7DE0, OS_LOG_TYPE_FAULT))
  {
    sub_764F4(v0, v1, v2, v3, v4, v5, v6, v7);
  }

  result = sub_70820();
  if (result)
  {
    abort();
  }

  return result;
}

uint64_t sub_7048(uint64_t a1, int a2, uint64_t a3)
{
  if (!a2)
  {
    return 1852797029;
  }

  v3 = *(a1 + 8);
  v4 = *(qword_D8DF0 + 168);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_70E8;
  block[3] = &unk_AD3A8;
  v7 = a2;
  v8 = v3;
  block[4] = a1;
  block[5] = a3;
  dispatch_async(v4, block);
  return 0;
}

void sub_70E8(uint64_t a1)
{
  v2 = (a1 + 48);
  if (*(a1 + 48) && *(qword_D8DF0 + 144) && (v3 = *(a1 + 32), v4 = *(a1 + 52), sub_4D4B0()))
  {
    v5 = qword_B7DE0;
    if (os_log_type_enabled(qword_B7DE0, OS_LOG_TYPE_DEFAULT))
    {
      v6.i32[0] = *v2;
      v7 = vrev64_s16(*&vmovl_u8(v6));
      v13 = vuzp1_s8(v7, v7).u32[0];
      v14 = 0;
      v8 = *(v3 + 8);
      *buf = 136446466;
      v16 = &v13;
      v17 = 1024;
      v18 = v8;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "Sending device config change for %{public}s on %d", buf, 0x12u);
    }

    v10 = *(a1 + 48);
    v9 = *(a1 + 52);
    v11 = *(a1 + 40);
    (*(*(qword_D8DF0 + 144) + 32))();
  }

  else
  {
    v12 = qword_B7DE0;
    if (os_log_type_enabled(qword_B7DE0, OS_LOG_TYPE_ERROR))
    {
      sub_7656C(v2, a1, v12);
    }
  }
}

uint64_t sub_7254()
{
  v0 = qword_B7DE0;
  if (os_log_type_enabled(qword_B7DE0, OS_LOG_TYPE_FAULT))
  {
    sub_764F4(v0, v1, v2, v3, v4, v5, v6, v7);
  }

  result = sub_70820();
  if (result)
  {
    abort();
  }

  return result;
}

uint64_t sub_72C0()
{
  v0 = qword_B7DE0;
  if (os_log_type_enabled(qword_B7DE0, OS_LOG_TYPE_FAULT))
  {
    sub_764F4(v0, v1, v2, v3, v4, v5, v6, v7);
  }

  result = sub_70820();
  if (result)
  {
    abort();
  }

  return result;
}

void sub_730C(uint64_t a1, int a2)
{
  if (a2)
  {
    v4 = *(a1 + 400);
    if (v4)
    {
      atomic_store(0, (v4 + 24));
    }
  }

  *(a1 + 408) = a2;
  v5 = qword_B7DE0;
  if (os_log_type_enabled(qword_B7DE0, OS_LOG_TYPE_DEFAULT))
  {
    if (a2)
    {
      v6 = "";
    }

    else
    {
      v6 = "not";
    }

    v7 = (*(*a1 + 16))(a1);
    v8 = 136446466;
    v9 = v6;
    v10 = 1024;
    v11 = v7;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "Set absolute volume to %{public}s supported for device mAudioObjectID %d", &v8, 0x12u);
  }
}

uint64_t sub_745C(uint64_t *a1, float a2)
{
  v4 = sub_42134();
  if (a2 != 0.0 && v4 != 0)
  {
    v6 = *(a1[52] + 9280);
    if (*(v6 + 152))
    {
      *(v6 + 152) = 0;
      v7 = [NSString alloc];
      (*(*a1 + 864))(__p, a1);
      if (v16 >= 0)
      {
        v8 = __p;
      }

      else
      {
        v8 = *__p;
      }

      v9 = [v7 initWithUTF8String:v8];
      if (v16 < 0)
      {
        operator delete(*__p);
      }

      sub_680C0(a1[52], v9, 0);
      sub_6806C(a1[52], 1836414053);
    }
  }

  v10 = qword_B7DE0;
  if (os_log_type_enabled(qword_B7DE0, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a1[52] + 9136) == a1)
    {
      v11 = "Routed";
    }

    else
    {
      v11 = "Not Routed";
    }

    *__p = 136446466;
    *&__p[4] = v11;
    v14 = 2048;
    v15 = a2;
    _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "Volume Update received from bluetoothd, for %{public}s Audio device volume %f", __p, 0x16u);
  }

  return (*(*a1 + 488))(a1, *(a1[52] + 9136) == a1, a2);
}

void sub_7648(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_766C(void *result, float a2)
{
  v2 = result[52];
  if (v2)
  {
    v3 = result;
    result = *(v2 + 9136);
    if (result)
    {
      v5 = ((*(*result + 952))(result) * 100.0);
      v6 = *(*v3 + 360);

      return v6(v3, v5, (a2 * 100.0), 0);
    }
  }

  return result;
}

void sub_773C(uint64_t *a1, char *__s1, void *a3)
{
  if (!strcmp(__s1, "kBTAudioMsgPropertyVolumeScalar"))
  {
    v9.n128_f64[0] = xpc_double_get_value(a3);
    v10 = v9.n128_f64[0];
    if (*(a1[52] + 9136) == a1)
    {
      v15 = v9.n128_f64[0];
      (*(*a1 + 352))(a1, v15);
    }

    v11 = *(*a1 + 344);
    v12 = a1;
    v9.n128_f32[0] = v10;

    goto LABEL_38;
  }

  if (!strcmp(__s1, "kBTAudioMsgPropertyInputVolumeScalar"))
  {
    v9.n128_f64[0] = xpc_double_get_value(a3);
    v11 = *(*a1 + 512);
    v9.n128_f32[0] = v9.n128_f64[0];
    v12 = a1;

LABEL_38:
    v11(v12, v9);
    return;
  }

  if (!strcmp(__s1, "kBTAudioMsgPropertyLatency"))
  {
    value = xpc_int64_get_value(a3);
    v14 = qword_B7DE0;
    if (os_log_type_enabled(qword_B7DE0, OS_LOG_TYPE_DEBUG))
    {
      sub_76678(value, v14);
    }

    (*(*a1 + 280))(a1, value);
  }

  else if (!strcmp(__s1, "kBTAudioMsgPropertyVolumeIsAbsolute"))
  {
    v16 = xpc_BOOL_get_value(a3);
    v17 = qword_B7DE0;
    if (os_log_type_enabled(qword_B7DE0, OS_LOG_TYPE_DEBUG))
    {
      sub_765FC(v16, v17);
    }

    (*(*a1 + 1192))(a1, v16);
    if (v16)
    {
      (*(*a1 + 520))(a1);
    }
  }

  else if (!strcmp(__s1, "kBTAudioMsgPropertyScoIsEnabled"))
  {
    v18 = xpc_dictionary_get_value(a3, "kBTAudioMsgPropertyScoStatus");
    v19 = xpc_dictionary_get_value(a3, "kBTAudioMsgPropertyScoIsEnabled");
    if (v19 && v18)
    {
      v20 = v19;
      v21 = xpc_int64_get_value(v18);
      v22 = xpc_BOOL_get_value(v20);
      v23 = *(*a1 + 384);

      v23(a1, v21, v22);
    }
  }

  else
  {
    if (!strcmp(__s1, "kBTAudioMsgPropertyECNRIsEnabled"))
    {
      v24 = xpc_BOOL_get_value(a3);
      v25 = *(*a1 + 424);
      v26 = v24;
      v27 = a1;

      goto LABEL_113;
    }

    if (!strcasecmp(__s1, "kBTAudioMsgPropertyNBSSupport"))
    {
      v28 = xpc_BOOL_get_value(a3);
      v25 = *(*a1 + 432);
      v26 = v28;
      v27 = a1;

      goto LABEL_113;
    }

    if (!strcasecmp(__s1, "kBTAudioMsgPropertyWBSSupport"))
    {
      v29 = xpc_BOOL_get_value(a3);
      v25 = *(*a1 + 440);
      v26 = v29;
      v27 = a1;

      goto LABEL_113;
    }

    if (!strcasecmp(__s1, "kBTAudioMsgPropertyUWBSSupport"))
    {
      v30 = xpc_BOOL_get_value(a3);
      v25 = *(*a1 + 448);
      v26 = v30;
      v27 = a1;

      goto LABEL_113;
    }

    if (!strcasecmp(__s1, "kBTAudioMsgPropertyUWBSStereoSupport"))
    {
      v31 = xpc_BOOL_get_value(a3);
      v25 = *(*a1 + 456);
      v26 = v31;
      v27 = a1;

      goto LABEL_113;
    }

    if (!strcasecmp(__s1, "kBTAudioMsgPropertySWBStereoSupport"))
    {
      v32 = xpc_BOOL_get_value(a3);
      v25 = *(*a1 + 464);
      v26 = v32;
      v27 = a1;

      goto LABEL_113;
    }

    if (!strcasecmp(__s1, "kBTAudioMsgPropertyCategory"))
    {
      v33 = xpc_int64_get_value(a3);
      (*(*a1 + 472))(a1, v33);
      sub_5AAC0(a1[52], 1684234612);
      v34 = qword_B7DE0;
      if (!os_log_type_enabled(qword_B7DE0, OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

      v35 = (*(*a1 + 856))(a1);
      v61 = 67109120;
      LODWORD(v62) = v35;
      v36 = "kBTAudioMsgPropertyCategory : Updated as %u";
      v37 = v34;
      goto LABEL_75;
    }

    if (!strcasecmp(__s1, "kBTAudioMsgPropertyDSPOffload"))
    {
      v38 = xpc_BOOL_get_value(a3);
      v25 = *(*a1 + 480);
      v26 = v38;
      v27 = a1;

      goto LABEL_113;
    }

    if (!strcasecmp(__s1, "kBTAudioMsgPropertyBitpool"))
    {
      v39 = xpc_int64_get_value(a3);
      v25 = *(*a1 + 760);
      v26 = v39;
      v27 = a1;

      goto LABEL_113;
    }

    if (!strcasecmp(__s1, "kBTAudioMsgPropertyCodec"))
    {
      v40 = xpc_int64_get_value(a3);
      v25 = *(*a1 + 776);
      v26 = v40;
      v27 = a1;

      goto LABEL_113;
    }

    if (!strcasecmp(__s1, "kBTAudioMsgPropertyFrameCount"))
    {
      v41 = xpc_int64_get_value(a3);
      v25 = *(*a1 + 768);
      v26 = v41;
      v27 = a1;

      goto LABEL_113;
    }

    if (!strcasecmp(__s1, "kBTAudioMsgPropertyRtpInterval"))
    {
      v42 = xpc_int64_get_value(a3);
      v25 = *(*a1 + 784);
      v26 = v42;
      v27 = a1;

      goto LABEL_113;
    }

    if (!strcasecmp(__s1, "kBTAudioMsgPropertyFrameLen"))
    {
      v43 = xpc_int64_get_value(a3);
      v25 = *(*a1 + 792);
      v26 = v43;
      v27 = a1;

      goto LABEL_113;
    }

    if (!strcasecmp(__s1, "kBTAudioMsgPropertyLinkAdaptEncoderBitrate"))
    {
      v44 = xpc_int64_get_value(a3);
      v25 = *(*a1 + 912);
      v26 = v44;
      v27 = a1;

      goto LABEL_113;
    }

    if (!strcasecmp(__s1, "kBTAudioMsgPropertySamplingSpeedParams"))
    {
      (*(*a1 + 896))(a1);
      (*(*a1 + 888))(a1);
      v45 = xpc_dictionary_get_value(a3, "kBTAudioMsgPropertyLatencyChangeMsec");
      v46 = xpc_dictionary_get_value(a3, "kBTAudioMsgPropertySamplingIntervalMultiplier");
      if (v46 && v45)
      {
        v47 = v46;
        v48 = xpc_int64_get_value(v45);
        v50.n128_f64[0] = xpc_double_get_value(v47);
        v49 = *(*a1 + 712);
        v50.n128_f32[0] = v50.n128_f64[0];

        v49(a1, v48, v50);
      }
    }

    else
    {
      if (!strcasecmp(__s1, "kBTAudioMsgPropertyDynamicClock"))
      {
        v51 = xpc_BOOL_get_value(a3);
        v25 = *(*a1 + 720);
        v26 = v51;
        v27 = a1;

        goto LABEL_113;
      }

      if (strcasecmp(__s1, "kBTAudioMsgPropertyLowLatencyMode"))
      {
        if (strcasecmp(__s1, "kBTAudioMsgPropertyDynamicLatencyDelayMicroSec"))
        {
          if (strcasecmp(__s1, "kBTAudioMsgPropertyInputAudio"))
          {
            if (!strcasecmp(__s1, "kBTAudioMsgPropertySupportedCodecs"))
            {
              v57 = _CFXPCCreateCFObjectFromXPCObject();
              (*(*a1 + 936))(a1, v57);

              CFRelease(v57);
            }

            else if (!strcasecmp(__s1, "kBTAudioMsgPropertyInputSWPLCSupport"))
            {
              v58 = xpc_BOOL_get_value(a3);

              sub_88D0(a1, v58);
            }

            else if (!strcasecmp(__s1, "kBTAudioMsgPropertyWSModeEnabled"))
            {
              v59 = xpc_BOOL_get_value(a3);
              sub_5D634(a1[52], v59, a1);
              v60 = qword_D8DF0;

              sub_50470(v60);
            }

            else if (!strcasecmp(__s1, "kBTAudioMsgPropertyDynamicLatencySupported"))
            {
              v6 = xpc_BOOL_get_value(a3);
              v7 = qword_B7DE0;
              if (os_log_type_enabled(qword_B7DE0, OS_LOG_TYPE_DEFAULT))
              {
                v8 = "not supported";
                if (v6)
                {
                  v8 = "supported";
                }

                v61 = 136315138;
                v62 = v8;
                _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "Dynamic Latency is %s", &v61, 0xCu);
              }

              (*(*a1 + 696))(a1, v6);
            }

            return;
          }

          v56 = xpc_BOOL_get_value(a3);
          v25 = *(*a1 + 920);
          v26 = v56;
          v27 = a1;

LABEL_113:
          v25(v27, v26);
          return;
        }

        v54 = xpc_int64_get_value(a3) / 0x3E8uLL;
        (*(*a1 + 680))(a1, v54);
        v55 = qword_B7DE0;
        if (!os_log_type_enabled(qword_B7DE0, OS_LOG_TYPE_DEFAULT))
        {
          return;
        }

        v61 = 67109120;
        LODWORD(v62) = v54;
        v36 = "In ear-Latency change received from BTServer, latency %uMSec";
        v37 = v55;
LABEL_75:
        _os_log_impl(&dword_0, v37, OS_LOG_TYPE_DEFAULT, v36, &v61, 8u);
        return;
      }

      v52 = xpc_int64_get_value(a3);
      v53 = qword_B7DE0;
      if (os_log_type_enabled(qword_B7DE0, OS_LOG_TYPE_DEFAULT))
      {
        v61 = 67109120;
        LODWORD(v62) = v52;
        _os_log_impl(&dword_0, v53, OS_LOG_TYPE_DEFAULT, "latencyMode received from bluetoothd: %d", &v61, 8u);
      }

      (*(*a1 + 648))(a1, v52);
    }
  }
}

void sub_88D0(uint64_t a1, int a2)
{
  v4 = qword_B7DE0;
  if (os_log_type_enabled(qword_B7DE0, OS_LOG_TYPE_DEFAULT))
  {
    v5 = "not supported";
    if (a2)
    {
      v5 = "supported";
    }

    v6 = 136315138;
    v7 = v5;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "Set SupportInputSwPlc %s", &v6, 0xCu);
  }

  *(a1 + 584) = a2;
}

uint64_t sub_89A0(uint64_t a1)
{
  v1 = *(a1 + 416);
  if (v1)
  {
    v2 = *(*(v1 + 9280) + 168);
  }

  else
  {
    if (os_log_type_enabled(qword_B7DE0, OS_LOG_TYPE_ERROR))
    {
      sub_766F0();
    }

    v2 = 0;
  }

  return v2 & 1;
}

uint64_t sub_89FC(uint64_t a1)
{
  v1 = *(a1 + 416);
  if (v1)
  {
    return *(*(v1 + 9280) + 152);
  }

  result = os_log_type_enabled(qword_B7DE0, OS_LOG_TYPE_ERROR);
  if (result)
  {
    sub_76770();
    return 0;
  }

  return result;
}

uint64_t sub_8A54(uint64_t a1)
{
  v1 = *(a1 + 416);
  if (v1)
  {
    v2 = *(*(v1 + 9280) + 145);
  }

  else
  {
    if (os_log_type_enabled(qword_B7DE0, OS_LOG_TYPE_ERROR))
    {
      sub_767F0();
    }

    v2 = 0;
  }

  return v2 & 1;
}

uint64_t sub_8AB0(uint64_t a1, char a2, int a3)
{
  result = *(a1 + 416);
  if (result)
  {
    *(*(result + 9280) + 145) = a2;
    if (a3)
    {
      return sub_5AAC0(result, 1651466595);
    }
  }

  return result;
}

uint64_t sub_8AD4(uint64_t a1)
{
  v1 = *(a1 + 416);
  if (v1)
  {
    v2 = *(*(v1 + 9280) + 144);
  }

  else
  {
    if (os_log_type_enabled(qword_B7DE0, OS_LOG_TYPE_ERROR))
    {
      sub_76870();
    }

    v2 = 0;
  }

  return v2 & 1;
}

uint64_t sub_8B30(uint64_t result, char a2)
{
  v2 = *(result + 416);
  if (v2)
  {
    *(*(v2 + 9280) + 144) = a2;
  }

  return result;
}

uint64_t sub_8B44(uint64_t a1)
{
  v1 = *(a1 + 416);
  if (v1)
  {
    return *(*(v1 + 9280) + 172);
  }

  result = os_log_type_enabled(qword_B7DE0, OS_LOG_TYPE_ERROR);
  if (result)
  {
    sub_768F0();
    return 0;
  }

  return result;
}

uint64_t sub_8B9C(uint64_t a1)
{
  v1 = *(a1 + 416);
  if (v1)
  {
    return *(*(v1 + 9280) + 176);
  }

  result = os_log_type_enabled(qword_B7DE0, OS_LOG_TYPE_ERROR);
  if (result)
  {
    sub_76970();
    return 0;
  }

  return result;
}

uint64_t sub_8BF4(uint64_t a1)
{
  v1 = *(a1 + 416);
  if (v1)
  {
    return *(*(v1 + 9280) + 60);
  }

  else
  {
    return 0;
  }
}

void sub_8C10(uint64_t a1, int a2)
{
  v2 = *(a1 + 416);
  if (v2)
  {
    v3 = v2[1160];
    if (*(v3 + 60) != a2)
    {
      *(v3 + 60) = a2;
      v5 = qword_B7DE0;
      if (os_log_type_enabled(qword_B7DE0, OS_LOG_TYPE_DEFAULT))
      {
        v6 = (*(*v2 + 16))(v2);
        v7 = *(*(*(a1 + 416) + 9280) + 60);
        v8[0] = 67109376;
        v8[1] = v6;
        v9 = 1024;
        v10 = v7;
        _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "Local stream state of mAudioObjectID %d changed to %d", v8, 0xEu);
      }
    }
  }
}

void sub_8D14(uint64_t a1, unsigned int a2)
{
  v4 = qword_B7DE0;
  if (os_log_type_enabled(qword_B7DE0, OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 67109120;
    v6[1] = a2;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "Setting listen mode  %d", v6, 8u);
  }

  v5 = *(a1 + 208);
  if (v5)
  {
    sub_14748(v5, a2);
  }
}

void sub_8DD0(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v21 = 0;
  v19 = 0u;
  v20 = 0u;
  v6 = sub_508C0(qword_D8DF0, a3);
  if (!v6)
  {
    goto LABEL_10;
  }

  v7 = v6[1137];
  if (v7)
  {
    LOBYTE(v7) = *(v7 + 192);
  }

  v8 = v6[1140];
  if (v8)
  {
    LOBYTE(v7) = v7 | *(v8 + 192);
  }

  if (v7)
  {
    if (*(a1 + 9017))
    {
      if (*(a1 + 416))
      {
        (*(*a1 + 824))(&v19, a1, 0);
        v13[0] = _NSConcreteStackBlock;
        v13[1] = 3221225472;
        v13[2] = sub_8FCC;
        v13[3] = &unk_AD3C8;
        v17 = a3;
        v13[4] = a1;
        v13[5] = a2;
        v14 = v19;
        v15 = v20;
        v16 = v21;
        v9 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, v13);
        *(a1 + 9008) = v9;
        sub_51628(qword_D8DF0, 10, a3, v9);
      }
    }

    else
    {
      v11 = qword_B7DE0;
      if (os_log_type_enabled(qword_B7DE0, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "Injecting silent Audio Stopped", buf, 2u);
      }

      v12 = *(a1 + 9008);
      if (v12 && !dispatch_block_testcancel(*(a1 + 9008)))
      {
        dispatch_block_cancel(v12);
        v12 = *(a1 + 9008);
      }

      _Block_release(v12);
      *(a1 + 9008) = 0;
    }
  }

  else
  {
LABEL_10:
    v10 = qword_B7DE0;
    if (os_log_type_enabled(qword_B7DE0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "Injecting silent Audio Stopped : Input device not available", buf, 2u);
    }
  }
}

uint64_t sub_8FCC(uint64_t a1)
{
  v2 = *(a1 + 32);
  v22[0] = 0;
  v22[1] = 0;
  sub_70AF4(v22, qword_D8DF0 + 200);
  _Block_release(*(v2 + 9008));
  *(v2 + 9008) = 0;
  sub_70BD4(v22);
  v3 = sub_508C0(qword_D8DF0, *(a1 + 88));
  if (!v3)
  {
    goto LABEL_16;
  }

  v4 = v3[1137];
  if (v4)
  {
    LOBYTE(v4) = *(v4 + 192);
  }

  v5 = v3[1140];
  if (v5)
  {
    LOBYTE(v4) = v4 | *(v5 + 192);
  }

  if ((v4 & 1) == 0)
  {
LABEL_16:
    v13 = qword_B7DE0;
    if (!os_log_type_enabled(qword_B7DE0, OS_LOG_TYPE_DEFAULT))
    {
      return sub_70C40(v22);
    }

    *info = 0;
    v14 = "Injecting silent Audio Stopped : Input device not available";
    goto LABEL_18;
  }

  if ((*(v2 + 9017) & 1) == 0)
  {
    v13 = qword_B7DE0;
    if (!os_log_type_enabled(qword_B7DE0, OS_LOG_TYPE_DEFAULT))
    {
      return sub_70C40(v22);
    }

    *info = 0;
    v14 = "Injecting silent Audio Stopped";
LABEL_18:
    v15 = v13;
    v16 = 2;
LABEL_19:
    _os_log_impl(&dword_0, v15, OS_LOG_TYPE_DEFAULT, v14, info, v16);
    return sub_70C40(v22);
  }

  v6 = mach_absolute_time();
  if (*(a1 + 40) && (*(*(v2 + 416) + 9472) & 1) == 0)
  {
    *info = 0;
    mach_timebase_info(info);
    v7 = *(a1 + 48) / 1000.0;
    v8 = (((v6 - *(a1 + 40)) * *info / *&info[4] / 0x3E8) / 1000.0) * v7;
    v9 = *(a1 + 64);
    if ((v8 * v9) > 8192.0)
    {
      v8 = (0x1000 / v9);
    }

    v10 = v8;
    v11 = sub_358C(v2, v8, (v2 + 816));
    v12 = *(v2 + 16);
    if (v12)
    {
      sub_1C194(v12, v10, (v2 + 816), v11);
    }
  }

  if (!(*(*v2 + 1024))(v2))
  {
    v18 = qword_B7DE0;
    if (!os_log_type_enabled(qword_B7DE0, OS_LOG_TYPE_DEFAULT))
    {
      return sub_70C40(v22);
    }

    v19 = *(v2 + 200);
    v20 = *(a1 + 40);
    v21 = (*(*v2 + 1024))(v2);
    *info = 138543874;
    *&info[4] = v19;
    v24 = 2048;
    v25 = v20;
    v26 = 1024;
    v27 = v21;
    v14 = " %{public}@ : Injecting silent Audio allowed to stop [%llu  %d]";
    v15 = v18;
    v16 = 28;
    goto LABEL_19;
  }

  (*(*v2 + 1488))(v2, v6, *(a1 + 88));
  return sub_70C40(v22);
}

uint64_t sub_9320(uint64_t a1)
{
  v2 = (*(**(a1 + 416) + 16))(*(a1 + 416));
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_93D0;
  v4[3] = &unk_AD3E8;
  v4[4] = a1;
  return sub_507D8(qword_D8DF0, v2, v4);
}

void sub_93D0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 9008);
  if (v2 && !dispatch_block_testcancel(*(v1 + 9008)))
  {
    v3 = qword_B7DE0;
    if (os_log_type_enabled(qword_B7DE0, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "Injecting silent Audio Stopped", v4, 2u);
      v2 = *(v1 + 9008);
    }

    dispatch_block_cancel(v2);
    _Block_release(*(v1 + 9008));
    *(v1 + 9008) = 0;
  }
}

float sub_946C(float *a1, int a2)
{
  result = a1[120];
  if (a2 == 1)
  {
    v3 = a1[126];
  }

  else
  {
    if (a2)
    {
      return result;
    }

    v3 = a1[125];
  }

  return result * v3;
}

_BYTE *sub_9490@<X0>(unsigned int a1@<W1>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  if (a1 > 3)
  {
    v2 = "Unknown";
  }

  else
  {
    v2 = off_AD420[a1];
  }

  return sub_2088(a2, v2);
}

_BYTE *sub_94C0@<X0>(unsigned int a1@<W1>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  if (a1 > 0xC)
  {
    v2 = "unknown";
  }

  else
  {
    v2 = off_AD440[a1];
  }

  return sub_2088(a2, v2);
}

double sub_96A4(uint64_t a1, unint64_t a2)
{
  result = a2;
  *(a1 + 464) = a2;
  return result;
}

void *sub_9780(_BYTE *__dst, void *__src, unint64_t a3)
{
  if (a3 > 0x16)
  {
    if (a3 < 0x7FFFFFFFFFFFFFF8)
    {
      operator new();
    }

    sub_9824();
  }

  __dst[23] = a3;
  v3 = a3 + 1;

  return memmove(__dst, __src, v3);
}

void sub_983C(const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  sub_9898(exception, a1);
}

std::logic_error *sub_9898(std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  return result;
}

void sub_98E4(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_fault_impl(a1, a2, OS_LOG_TYPE_FAULT, a4, &a9, 0xCu);
}

os_log_t sub_9900()
{
  result = os_log_create("com.apple.bluetooth", "BTAudio");
  qword_B7DE0 = result;
  return result;
}

uint64_t sub_9930(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  *(a1 + 24) = 0;
  *a1 = a2;
  *(a1 + 8) = a3;
  sub_9B78(a1);
  v6 = qword_C2298;
  if (os_log_type_enabled(qword_C2298, OS_LOG_TYPE_DEFAULT))
  {
    v18 = sub_5448(*a1);
    v7 = "Owner";
    if (sub_744C(*a1))
    {
      v8 = "Guest";
    }

    else
    {
      v8 = "Owner";
    }

    v17 = v8;
    if (sub_742C(*a1))
    {
      v9 = "enabled";
    }

    else
    {
      v9 = "disabled";
    }

    if ((*(**a1 + 1352))())
    {
      v10 = "enabled";
    }

    else
    {
      v10 = "disabled";
    }

    v11 = sub_5448(*(a1 + 8));
    if (sub_744C(*(a1 + 8)))
    {
      v7 = "Guest";
    }

    if (sub_742C(*(a1 + 8)))
    {
      v12 = "enabled";
    }

    else
    {
      v12 = "disabled";
    }

    v13 = (*(**(a1 + 8) + 1352))();
    *buf = 138414338;
    if (v13)
    {
      v14 = "enabled";
    }

    else
    {
      v14 = "disabled";
    }

    v20 = v18;
    v15 = "mediaexperience";
    v21 = 2080;
    v22 = v17;
    if (a4)
    {
      v15 = "bluetooth";
    }

    v23 = 2080;
    v24 = v9;
    v25 = 2080;
    v26 = v10;
    v27 = 2112;
    v28 = v11;
    v29 = 2080;
    v30 = v7;
    v31 = 2080;
    v32 = v12;
    v33 = 2080;
    v34 = v14;
    v35 = 2080;
    v36 = v15;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "Wireless Splitter session started aggregating user1 %@ is %s = [InEar=%s, Onwership=%s] and user2 %@ is %s = [InEar=%s, Onwership=%s] aggregated from %s", buf, 0x5Cu);
  }

  if ((a4 & 1) == 0)
  {
    sub_9C50(a1);
  }

  return a1;
}

uint64_t sub_9B78(void *a1)
{
  v2 = qword_C2298;
  if (os_log_type_enabled(qword_C2298, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "Wireless Splitter start all aggregates from BTAudioHALPlugin", v4, 2u);
  }

  if (*a1)
  {
    (*(**a1 + 312))(*a1, 1);
  }

  result = a1[1];
  if (result)
  {
    return (*(*result + 312))(result, 1);
  }

  return result;
}

void sub_9C50(uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    if (*(a1 + 8))
    {
      *(a1 + 16) = sub_6464(v2);
      *(a1 + 20) = sub_6464(*(a1 + 8));
      v3 = qword_C2298;
      if (os_log_type_enabled(qword_C2298, OS_LOG_TYPE_DEFAULT))
      {
        sub_A398(*(a1 + 16), v10);
        v4 = v11;
        v5 = v10[0];
        sub_A398(*(a1 + 20), __p);
        v6 = v10;
        if (v4 < 0)
        {
          v6 = v5;
        }

        if (v9 >= 0)
        {
          v7 = __p;
        }

        else
        {
          v7 = __p[0];
        }

        *buf = 136446466;
        v13 = v6;
        v14 = 2082;
        v15 = v7;
        _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "Wireless Splitter Codec Configuration User1 = %{public}s , User2 = %{public}s", buf, 0x16u);
        if (v9 < 0)
        {
          operator delete(__p[0]);
        }

        if (v11 < 0)
        {
          operator delete(v10[0]);
        }
      }
    }
  }
}

void sub_9D88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_9DB0(void *a1)
{
  v2 = qword_C2298;
  if (os_log_type_enabled(qword_C2298, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "Wireless Splitter stop all aggregates from BTAudioHALPlugin", v4, 2u);
  }

  if (*a1)
  {
    (*(**a1 + 312))(*a1, 0);
  }

  result = a1[1];
  if (result)
  {
    return (*(*result + 312))(result, 0);
  }

  return result;
}

void sub_9E88(void *a1, uint64_t a2)
{
  v4 = qword_C2298;
  if (os_log_type_enabled(qword_C2298, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138543362;
    v7 = sub_5448(a2);
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "Wireless Splitter stop for Audio Device %{public}@", &v6, 0xCu);
  }

  sub_9DB0(a1);
  if (*a1 == a2)
  {
    *a1 = 0;
  }

  else if (a1[1] == a2)
  {
    a1[1] = 0;
  }

  else
  {
    v5 = qword_C2298;
    if (os_log_type_enabled(qword_C2298, OS_LOG_TYPE_ERROR))
    {
      sub_769F0(v5);
    }
  }
}

void sub_9F88(float *a1)
{
  v2 = *a1;
  if (v2)
  {
    v3 = *(a1 + 1);
    if (v3)
    {
      v4 = a1[6];
      v5 = v2[120];
      if (v5 <= *(v3 + 480))
      {
        v5 = *(v3 + 480);
      }

      a1[6] = v5;
      (*(*v2 + 320))(v2);
      v6.n128_f32[0] = a1[6];
      (*(**(a1 + 1) + 320))(v6);
      v7 = qword_C2298;
      if (os_log_type_enabled(qword_C2298, OS_LOG_TYPE_DEFAULT))
      {
        v8 = *(*a1 + 9064);
        v9 = *(*(a1 + 1) + 9064);
        v10 = 134218240;
        v11 = v8;
        v12 = 2048;
        v13 = v9;
        _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "Wireless Splitter aggregated scale factor user1=%f user2=%f", &v10, 0x16u);
      }

      if (v4 != a1[6])
      {
        (*(**a1 + 336))(*a1);
      }
    }
  }
}

float *sub_A120(float **a1, float a2)
{
  result = *a1;
  if (result && a1[1])
  {
    sub_615C(result, a2);
    sub_615C(a1[1], a2);
    *(a1 + 6) = a2;
    v5.n128_f32[0] = (*a1)[122];
    (*(**a1 + 496))(v5);
    v6 = a1[1];
    v7.n128_f32[0] = v6[122];
    v8 = *(*v6 + 496);

    return v8(v7);
  }

  return result;
}

CFArrayRef sub_A20C(uint64_t *a1)
{
  if (!*a1)
  {
    return 0;
  }

  v2 = a1[1];
  if (!v2)
  {
    return 0;
  }

  v3 = *(*(*a1 + 416) + 9080);
  v4 = *(*(v2 + 416) + 9080);
  CFRetain(v3);
  CFRetain(v4);
  v5 = sub_744C(*a1);
  if (v5)
  {
    v6 = v4;
  }

  else
  {
    v6 = v3;
  }

  if (v5)
  {
    v7 = v3;
  }

  else
  {
    v7 = v4;
  }

  values[0] = v6;
  values[1] = v7;
  v8 = CFArrayCreate(kCFAllocatorDefault, values, 2, &kCFTypeArrayCallBacks);
  v9 = qword_C2298;
  if (os_log_type_enabled(qword_C2298, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136315394;
    CStringPtr = CFStringGetCStringPtr(v3, 0x8000100u);
    v13 = 2080;
    v14 = CFStringGetCStringPtr(v4, 0x8000100u);
    _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "Wireless Splitter kBluetoothAudioDeviceWirelessSplitterAggregation called aggregating with %s and %s", &v11, 0x16u);
  }

  CFRelease(v3);
  CFRelease(v4);
  return v8;
}

_BYTE *sub_A398@<X0>(int a1@<W1>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  if (a1 > 33022)
  {
    if (a1 == 33023)
    {
      v2 = "AAC-ELD";
      return sub_2088(a2, v2);
    }

    if (a1 == 0xFFFF)
    {
      v2 = "Undefined";
      return sub_2088(a2, v2);
    }

LABEL_9:
    v2 = "Unknown";
    return sub_2088(a2, v2);
  }

  if (!a1)
  {
    v2 = "SBC";
    return sub_2088(a2, v2);
  }

  if (a1 != 2)
  {
    goto LABEL_9;
  }

  v2 = "AAC-LC";
  return sub_2088(a2, v2);
}

uint64_t sub_A410(void *a1, int a2)
{
  v4 = *a1;
  if (v4 && (result = (*(*v4 + 16))(v4), result == a2))
  {
    v6 = 16;
    v7 = a1;
  }

  else
  {
    v7 = a1 + 1;
    result = a1[1];
    if (!result)
    {
      return result;
    }

    result = (*(*result + 16))(result);
    if (result != a2)
    {
      return result;
    }

    v6 = 20;
  }

  v8 = *v7;
  v9 = *(a1 + v6);
  if (*v7)
  {
    v10 = v9 == 0xFFFF;
  }

  else
  {
    v10 = 1;
  }

  if (!v10)
  {
    if (v9 == 33023)
    {
      (*(*v8 + 768))(*v7, 3);
      v11 = 174;
    }

    else if (v9 == 2)
    {
      if (sub_70818())
      {
        v11 = 192;
      }

      else
      {
        v11 = 244;
      }
    }

    else
    {
      v11 = 256;
    }

    v12 = *(*v8 + 912);

    return v12(v8, v11);
  }

  return result;
}

os_log_t sub_A588()
{
  result = os_log_create("com.apple.bluetooth", "BTAudio");
  qword_C2298 = result;
  return result;
}

void sub_A5B8(uint64_t a1, int a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  v5[0] = *a3;
  v5[1] = v3;
  v6 = *(a3 + 32);
  sub_58DE4(a1, a2, v5);
  *v4 = off_AD4B8;
  *(v4 + 152) = 1;
  *(v4 + 16) = 0;
}

void *sub_A614(void *a1)
{
  *a1 = off_AD4B8;
  v2 = a1[2];
  if (v2)
  {
    AudioConverterDispose(v2);
  }

  else
  {
    v3 = qword_C22A0;
    if (os_log_type_enabled(qword_C22A0, OS_LOG_TYPE_ERROR))
    {
      sub_76A34(v3);
    }
  }

  return sub_58E28(a1);
}

void sub_A694(void *a1)
{
  sub_A614(a1);

  operator delete();
}

void sub_A6CC(uint64_t a1, int a2)
{
  *(a1 + 24) = 0x40D7700000000000;
  v2 = (a1 + 24);
  *(a1 + 116) = a2;
  *(a1 + 32) = xmmword_885F0;
  *(a1 + 48) = xmmword_88600;
  ioPropertyDataSize = 40;
  Property = AudioFormatGetProperty(0x666D7469u, 0, 0, &ioPropertyDataSize, (a1 + 64));
  sub_199EC(Property, "couldn't get output data format");
  v4 = AudioConverterNew(v2, v2 + 1, &v2[-1].mBitsPerChannel);
  sub_199EC(v4, "Could not create new audio converter");
  v2[2].mBytesPerPacket = 1;
  operator new[]();
}

void sub_A7F8(uint64_t a1, unsigned __int8 *a2, _BOOL8 a3, void *a4, unint64_t a5, void *a6)
{
  if (a3)
  {
    a3 = *a2 != 255;
  }

  sub_58EC8(a1, a2, a3, a4, a5, a6);
}

os_log_t sub_A838()
{
  result = os_log_create("com.apple.bluetooth", "BTAudio");
  qword_C22A0 = result;
  return result;
}

uint64_t sub_A868(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = sub_1948(a1, a3);
  *v7 = off_AD528;
  *(v7 + 9212) = 0;
  *(v7 + 9080) = 0;
  *(v7 + 9096) = 0;
  *(v7 + 9088) = 0;
  sub_8998(v7, a2);
  (*(*a1 + 1600))(a1, a4);
  sub_1CBC(a1, a4);
  sub_AD48(a1, a4);
  *(a1 + 368) = 1953260897;
  if (sub_42134())
  {
    *(a1 + 9017) = 1;
  }

  *(a1 + 9016) = 1;
  atomic_store(1u, (a1 + 288));
  *(a1 + 292) = 1;
  *(a1 + 296) = 0x40D7700000000000;
  *(a1 + 304) = 0xC6C70636DLL;
  v8 = *(a1 + 9160);
  *(a1 + 312) = 2 * v8;
  *(a1 + 316) = 1;
  *(a1 + 320) = 2 * v8;
  *(a1 + 324) = v8;
  *(a1 + 328) = 16;
  *(a1 + 372) = 10240;
  *(a1 + 376) = 0xA00000002800;
  *(a1 + 88) = 0;
  *(a1 + 40) = sub_24E2C() + *(a1 + 372);
  v9 = (a1 + 296);
  if ((*(*a1 + 1080))(a1))
  {
    *(a1 + 56) = sub_24E2C() + *(a1 + 372);
    *(a1 + 72) = sub_24E2C() + *(a1 + 372);
    v10 = *v9;
    *(a1 + 9184) = *(a1 + 312);
    *(a1 + 9168) = v10;
    *(a1 + 9200) = *(a1 + 328);
    *(a1 + 9184) = 2;
    *(a1 + 9192) = 0x100000002;
  }

  v11 = *(a1 + 9108);
  if (v11 <= 59)
  {
    if (v11 == 40)
    {
      v12 = 10;
      v13 = &unk_886A4;
      goto LABEL_18;
    }

    if (v11 == 56)
    {
      v12 = 3;
      v13 = &unk_886CC;
      goto LABEL_18;
    }
  }

  else
  {
    if (v11 == 60)
    {
      v12 = 13;
      v13 = &unk_886D8;
      goto LABEL_18;
    }

    if (v11 == 90 || v11 == 120)
    {
      v12 = 4;
      v13 = &unk_8870C;
      goto LABEL_18;
    }
  }

  v14 = qword_C22A8;
  if (os_log_type_enabled(qword_C22A8, OS_LOG_TYPE_ERROR))
  {
    sub_76A78(v11, v14);
  }

  v13 = 0;
  v12 = 0;
LABEL_18:
  *(a1 + 9144) = v13;
  *(a1 + 9152) = v12;
  *(a1 + 9120) = CFArrayCreateMutable(0, 0, 0);
  *(a1 + 9128) = CFArrayCreateMutable(0, 0, 0);
  *(a1 + 9136) = CFArrayCreateMutable(0, 0, 0);
  if (*(a1 + 9144))
  {
    v15 = qword_C22A8;
    if (os_log_type_enabled(qword_C22A8, OS_LOG_TYPE_DEFAULT))
    {
      v16 = *(a1 + 9108);
      v20[0] = 67109120;
      v20[1] = v16;
      _os_log_impl(&dword_0, v15, OS_LOG_TYPE_DEFAULT, "Using CodecPriorityTable%u", v20, 8u);
    }

    sub_B1EC(a1, *(a1 + 9112));
  }

  *(a1 + 384) = 10000;
  *(a1 + 396) = 0;
  *(a1 + 424) = sub_42134();
  *(a1 + 480) = 1056964608;
  *(a1 + 496) = 0;
  *(a1 + 488) = 0xC2C80000C2480000;
  if ((*(*a1 + 1320))(a1))
  {
    operator new();
  }

  (*(*a1 + 496))(a1, *(a1 + 488));
  *(a1 + 508) = sub_42134() ^ 1;
  *(a1 + 509) = 0;
  if (sub_42134() || sub_42134())
  {
    v17 = 1;
  }

  else
  {
    v17 = -1;
  }

  *(a1 + 9104) = v17;
  v18 = *(a1 + 216);
  if (v18)
  {
    sub_1C6BC(*(qword_D8DF0 + 456), *(v18 + 52), 3, *v9);
  }

  return a1;
}

uint64_t sub_AD48(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kBTAudioMsgPropertyDirection");
  if (xpc_get_type(value) != &_xpc_type_int64)
  {
    v5 = qword_C22A8;
    if (os_log_type_enabled(qword_C22A8, OS_LOG_TYPE_FAULT))
    {
      sub_76AF0(v5, v6, v7, v8, v9, v10, v11, v12);
    }

    if (sub_70820())
    {
      goto LABEL_40;
    }
  }

  v13 = xpc_int64_get_value(value);
  v14 = xpc_dictionary_get_value(xdict, "kBTAudioMsgPropertyInputAudio");
  if (xpc_get_type(v14) != &_xpc_type_BOOL)
  {
    v15 = qword_C22A8;
    if (os_log_type_enabled(qword_C22A8, OS_LOG_TYPE_FAULT))
    {
      sub_76B68(v15, v16, v17, v18, v19, v20, v21, v22);
    }

    if (sub_70820())
    {
      goto LABEL_40;
    }
  }

  *(a1 + 9208) = xpc_BOOL_get_value(v14);
  (*(*a1 + 1056))(a1, (v13 >> 1) & 1);
  (*(*a1 + 1064))(a1, *(a1 + 9208) & v13 & 1);
  v23 = qword_C22A8;
  if (os_log_type_enabled(qword_C22A8, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a1 + 9208))
    {
      v24 = "Yes";
    }

    else
    {
      v24 = "No";
    }

    v25 = (*(*a1 + 1072))(a1);
    v26 = (*(*a1 + 1080))(a1);
    v74[0] = 67109890;
    v74[1] = v13;
    v75 = 2082;
    v76 = v24;
    v77 = 1024;
    v78 = v25;
    v79 = 1024;
    v80 = v26;
    _os_log_impl(&dword_0, v23, OS_LOG_TYPE_DEFAULT, "LEA: Direction %x Stream state Input Audio = %{public}s output = %d input = %d", v74, 0x1Eu);
  }

  v27 = xpc_dictionary_get_value(xdict, "kBTAudioMsgPropertyIsStereo");
  if (xpc_get_type(v27) != &_xpc_type_BOOL)
  {
    v28 = qword_C22A8;
    if (os_log_type_enabled(qword_C22A8, OS_LOG_TYPE_FAULT))
    {
      sub_76BE0(v28, v29, v30, v31, v32, v33, v34, v35);
    }

    if (sub_70820())
    {
      goto LABEL_40;
    }
  }

  v36 = xpc_BOOL_get_value(v27) ? 2 : 1;
  *(a1 + 9160) = v36;
  v37 = xpc_dictionary_get_value(xdict, "kBTAudioMsgPropertySupportsAudioMixing");
  if (xpc_get_type(v37) != &_xpc_type_BOOL)
  {
    v38 = qword_C22A8;
    if (os_log_type_enabled(qword_C22A8, OS_LOG_TYPE_FAULT))
    {
      sub_76C58(v38, v39, v40, v41, v42, v43, v44, v45);
    }

    if (sub_70820())
    {
      goto LABEL_40;
    }
  }

  *(a1 + 9156) = xpc_BOOL_get_value(v37);
  v46 = xpc_dictionary_get_value(xdict, "kBTAudioMsgPropertySupportedCodecs");
  if (xpc_get_type(v46) != &_xpc_type_array)
  {
    v47 = qword_C22A8;
    if (os_log_type_enabled(qword_C22A8, OS_LOG_TYPE_FAULT))
    {
      sub_76CD0(v47, v48, v49, v50, v51, v52, v53, v54);
    }

    if (sub_70820())
    {
      goto LABEL_40;
    }
  }

  *(a1 + 9112) = _CFXPCCreateCFObjectFromXPCObject();
  v55 = xpc_dictionary_get_value(xdict, "kBTAudioMsgPropertyMaxPacketSize");
  if (xpc_get_type(v55) != &_xpc_type_int64)
  {
    v56 = qword_C22A8;
    if (os_log_type_enabled(qword_C22A8, OS_LOG_TYPE_FAULT))
    {
      sub_76D48(v56, v57, v58, v59, v60, v61, v62, v63);
    }

    if (sub_70820())
    {
      goto LABEL_40;
    }
  }

  *(a1 + 9108) = xpc_int64_get_value(v55);
  v64 = xpc_dictionary_get_value(xdict, "kBTAudioMsgPropertyECNRIsEnabled");
  if (xpc_get_type(v64) != &_xpc_type_BOOL)
  {
    v65 = qword_C22A8;
    if (os_log_type_enabled(qword_C22A8, OS_LOG_TYPE_FAULT))
    {
      sub_76DC0(v65, v66, v67, v68, v69, v70, v71, v72);
    }

    if (sub_70820())
    {
LABEL_40:
      abort();
    }
  }

  result = xpc_BOOL_get_value(v64);
  if (result)
  {
    return (*(*a1 + 424))(a1, 1);
  }

  return result;
}

void sub_B1EC(uint64_t a1, CFArrayRef theArray)
{
  if (CFArrayGetCount(theArray) > 0)
  {
    for (i = 0; i < CFArrayGetCount(theArray); ++i)
    {
      valuePtr = 0;
      v5 = *(a1 + 296);
      v6 = *(a1 + 320);
      *__p = *(a1 + 304);
      v48 = v6;
      v7 = *(a1 + 9192);
      v45 = *(a1 + 9176);
      v46 = v7;
      ValueAtIndex = CFArrayGetValueAtIndex(theArray, i);
      CFNumberGetValue(ValueAtIndex, kCFNumberSInt32Type, &valuePtr);
      v9 = *(a1 + 9152);
      if (v9)
      {
        v10 = *(a1 + 9144);
        while (1)
        {
          v11 = *v10++;
          if (valuePtr == v11)
          {
            break;
          }

          if (!--v9)
          {
            goto LABEL_7;
          }
        }

        switch(valuePtr)
        {
          case 1:
            if ((*(*a1 + 1072))(a1))
            {
              operator new();
            }

            if (((valuePtr - 14) & 0xFFFFFFFD) == 0)
            {
              operator new();
            }

            v14 = 64000;
            goto LABEL_99;
          case 2:
            if ((*(*a1 + 1072))(a1))
            {
              operator new();
            }

            if (((valuePtr - 14) & 0xFFFFFFFD) == 0)
            {
              operator new();
            }

            goto LABEL_66;
          case 3:
          case 17:
            if ((*(*a1 + 1072))(a1))
            {
              operator new();
            }

            if (((valuePtr - 14) & 0xFFFFFFFD) == 0)
            {
              operator new();
            }

            v14 = 64000;
            goto LABEL_99;
          case 4:
          case 16:
            if ((*(*a1 + 1072))(a1))
            {
              operator new();
            }

            if (((valuePtr - 14) & 0xFFFFFFFD) == 0)
            {
              operator new();
            }

            goto LABEL_58;
          case 5:
            v13 = *(a1 + 9108);
            switch(v13)
            {
              case '(':
                v14 = 42666;
LABEL_84:
                if ((*(*a1 + 1072))(a1))
                {
                  operator new();
                }

                goto LABEL_99;
              case '<':
                v14 = 48000;
                goto LABEL_84;
              case '8':
                v14 = 44800;
                goto LABEL_84;
            }

            if (os_log_type_enabled(qword_C22A8, OS_LOG_TYPE_ERROR))
            {
              sub_76E38(&v39, v40);
            }

LABEL_88:
            v14 = 0;
LABEL_99:
            v17 = qword_C22A8;
            if (os_log_type_enabled(qword_C22A8, OS_LOG_TYPE_DEFAULT))
            {
              sub_CD08(valuePtr, buf);
              v18 = v57 >= 0 ? buf : *buf;
              *v50 = 136315394;
              v51 = v18;
              v52 = 1024;
              v53 = v14;
              _os_log_impl(&dword_0, v17, OS_LOG_TYPE_DEFAULT, "Adding codec %s at bitrate %d", v50, 0x12u);
              if (SHIBYTE(v57) < 0)
              {
                operator delete(*buf);
              }
            }

            break;
          case 6:
            v15 = *(a1 + 9108);
            if (v15 == 40)
            {
              v14 = 64000;
LABEL_78:
              if ((*(*a1 + 1072))(a1))
              {
                operator new();
              }

              goto LABEL_99;
            }

            if (v15 == 60)
            {
              v14 = 96000;
              goto LABEL_78;
            }

            if (os_log_type_enabled(qword_C22A8, OS_LOG_TYPE_ERROR))
            {
              sub_76E38(&v43, v44);
            }

LABEL_96:
            v14 = 0;
            goto LABEL_99;
          case 7:
            v16 = *(a1 + 9108);
            switch(v16)
            {
              case '(':
                v14 = 32000;
LABEL_92:
                if ((*(*a1 + 1072))(a1))
                {
                  operator new();
                }

                goto LABEL_99;
              case '<':
                v14 = 48000;
                goto LABEL_92;
              case '8':
                v14 = 44800;
                goto LABEL_92;
            }

            if (os_log_type_enabled(qword_C22A8, OS_LOG_TYPE_ERROR))
            {
              sub_76E38(&v41, v42);
            }

            goto LABEL_96;
          case 9:
            if ((*(*a1 + 1072))(a1))
            {
              operator new();
            }

            if (((valuePtr - 14) & 0xFFFFFFFD) == 0)
            {
              operator new();
            }

            v14 = 32000;
            goto LABEL_99;
          case 10:
            if ((*(*a1 + 1072))(a1))
            {
              operator new();
            }

            if (((valuePtr - 14) & 0xFFFFFFFD) == 0)
            {
              operator new();
            }

            v14 = 42667;
            goto LABEL_99;
          case 11:
            if ((*(*a1 + 1072))(a1))
            {
              operator new();
            }

            if (((valuePtr - 14) & 0xFFFFFFFD) == 0)
            {
              operator new();
            }

LABEL_58:
            v14 = 48000;
            goto LABEL_99;
          case 12:
          case 18:
            if ((*(*a1 + 1072))(a1))
            {
              operator new();
            }

            if (((valuePtr - 14) & 0xFFFFFFFD) == 0)
            {
              operator new();
            }

            v14 = 64000;
            goto LABEL_99;
          case 13:
            if ((*(*a1 + 1072))(a1))
            {
              operator new();
            }

            if (((valuePtr - 14) & 0xFFFFFFFD) == 0)
            {
              operator new();
            }

LABEL_66:
            v14 = 32000;
            goto LABEL_99;
          case 14:
            if ((*(*a1 + 1072))(a1))
            {
              operator new();
            }

            if (((valuePtr - 14) & 0xFFFFFFFD) == 0)
            {
              operator new();
            }

            v14 = 32000;
            goto LABEL_99;
          case 15:
            if (*(a1 + 9108) == 60)
            {
              if ((*(*a1 + 1072))(a1))
              {
                operator new();
              }

              v14 = 24000;
              goto LABEL_99;
            }

            if (os_log_type_enabled(qword_C22A8, OS_LOG_TYPE_ERROR))
            {
              sub_76E38(&v37, v38);
            }

            goto LABEL_88;
          default:
            if (os_log_type_enabled(qword_C22A8, OS_LOG_TYPE_ERROR))
            {
              sub_76E64(&v35, v36);
            }

            v14 = 0;
            goto LABEL_99;
        }
      }

      else
      {
LABEL_7:
        v12 = qword_C22A8;
        if (os_log_type_enabled(qword_C22A8, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109120;
          *&buf[4] = valuePtr;
          _os_log_error_impl(&dword_0, v12, OS_LOG_TYPE_ERROR, "Could not find codec %d matching codec priority table, skipping codec", buf, 8u);
        }
      }
    }
  }

  if ((*(*a1 + 1072))(a1) && *(a1 + 9152))
  {
    v19 = 0;
    while (1)
    {
      v20 = sub_D01C(a1, *(*(a1 + 9144) + 4 * v19));
      if (v20)
      {
        break;
      }

      if (++v19 >= *(a1 + 9152))
      {
        goto LABEL_114;
      }
    }

    *(a1 + 216) = v20;
  }

LABEL_114:
  if ((*(*a1 + 1080))(a1))
  {
    v21 = 0;
    v22 = 1;
    while (1)
    {
      v23 = v22;
      v24 = sub_D160(a1, dword_8871C[v21]);
      if (v24)
      {
        break;
      }

      v22 = 0;
      v21 = 1;
      if ((v23 & 1) == 0)
      {
        goto LABEL_120;
      }
    }

    *(a1 + 224) = v24;
  }

LABEL_120:
  v25 = *(a1 + 224);
  if (v25)
  {
    if (*(a1 + 9104) == 2)
    {
      v26 = sub_D01C(a1, *(v25 + 8));
      if (v26)
      {
        *(a1 + 216) = v26;
      }
    }
  }

  v27 = *(a1 + 216);
  if (v27)
  {
    sub_11E18(*(a1 + 208), *(v27 + 52));
    v28 = *(a1 + 216);
    v29 = *(v28 + 96);
    v30 = *(v28 + 80);
    *(a1 + 296) = *(v28 + 64);
    *(a1 + 312) = v30;
    *(a1 + 328) = v29;
    v31 = qword_C22A8;
    if (os_log_type_enabled(qword_C22A8, OS_LOG_TYPE_DEFAULT))
    {
      sub_CD08(*(v28 + 52), __p);
      if ((SBYTE7(v48) & 0x80u) == 0)
      {
        v32 = __p;
      }

      else
      {
        v32 = __p[0];
      }

      v33 = *(a1 + 296);
      v34 = *(a1 + 9104);
      *buf = 136315650;
      *&buf[4] = v32;
      v55 = 2048;
      v56 = v33;
      v57 = 1024;
      v58 = v34;
      _os_log_impl(&dword_0, v31, OS_LOG_TYPE_DEFAULT, "Update physical format based %s at bitrate %f mAudioContentType = %d", buf, 0x1Cu);
      if (SBYTE7(v48) < 0)
      {
        operator delete(__p[0]);
      }
    }
  }
}

uint64_t sub_C8A0(uint64_t a1)
{
  *a1 = off_AD528;
  if (sub_42134())
  {
    *(a1 + 9017) = 0;
  }

  if ((*(*a1 + 880))(a1))
  {
    v2 = qword_D8DF0;
    (*(*a1 + 864))(__p, a1);
    sub_4D7D4(v2, __p);
    if (v7 < 0)
    {
      operator delete(__p[0]);
    }
  }

  CFRelease(*(a1 + 9112));
  sub_CAA0(a1);
  sub_5F00(a1);
  if ((*(*a1 + 1680))(a1) && (*(*a1 + 1072))(a1))
  {
    v3 = (*(*a1 + 1680))(a1);
    free(v3);
    (*(*a1 + 1696))(a1, 0);
  }

  (*(*a1 + 72))(a1);
  return sub_1B04(a1, v4);
}

void sub_CAA0(uint64_t a1)
{
  Count = CFArrayGetCount(*(a1 + 9120));
  if (Count >= 1)
  {
    v3 = Count;
    for (i = 0; i != v3; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 9120), i);
      if (ValueAtIndex)
      {
        v6 = ValueAtIndex;
        v7 = *ValueAtIndex;
        if (*ValueAtIndex)
        {
          v8 = qword_C22A8;
          if (!os_log_type_enabled(qword_C22A8, OS_LOG_TYPE_DEBUG) || (*buf = 134217984, v12 = v7, _os_log_debug_impl(&dword_0, v8, OS_LOG_TYPE_DEBUG, "Deleting BTAudioEncoder 0x%p from mCodecList", buf, 0xCu), (v7 = *v6) != 0))
          {
            (*(*v7 + 8))(v7);
          }

          *v6 = 0;
        }

        v9 = v6[1];
        if (v9)
        {
          v10 = qword_C22A8;
          if (!os_log_type_enabled(qword_C22A8, OS_LOG_TYPE_DEBUG) || (*buf = 134217984, v12 = v9, _os_log_debug_impl(&dword_0, v10, OS_LOG_TYPE_DEBUG, "Deleting BTAudioDecoder 0x%p from mCodecList", buf, 0xCu), (v9 = v6[1]) != 0))
          {
            (*(*v9 + 8))(v9);
          }
        }

        free(v6);
      }
    }
  }

  if (*(a1 + 216))
  {
    *(a1 + 216) = 0;
  }

  if (*(a1 + 224))
  {
    *(a1 + 224) = 0;
  }

  CFArrayRemoveAllValues(*(a1 + 9120));
  CFRelease(*(a1 + 9120));
  CFArrayRemoveAllValues(*(a1 + 9128));
  CFRelease(*(a1 + 9128));
  CFArrayRemoveAllValues(*(a1 + 9136));
  CFRelease(*(a1 + 9136));
}

void sub_CCC0(uint64_t a1)
{
  sub_C8A0(a1);

  operator delete();
}

std::string *sub_CD08@<X0>(int a1@<W1>, uint64_t a2@<X8>)
{
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 23) = 7;
  strcpy(a2, "Unknown");
  if ((a1 - 1) >= 0x12)
  {
    v2 = "Unknown Codec";
  }

  else
  {
    v2 = off_ADC00[a1 - 1];
  }

  return std::string::assign(a2, v2);
}

void sub_CD7C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_CD98(CFArrayRef *a1, uint64_t a2)
{
  if (a2)
  {
    Count = CFArrayGetCount(a1[1140]);
    v5 = qword_C22A8;
    if (os_log_type_enabled(qword_C22A8, OS_LOG_TYPE_DEFAULT))
    {
      v6 = "Yes";
      v7 = *(a2 + 16);
      if (*a2)
      {
        v8 = "Yes";
      }

      else
      {
        v8 = "NO";
      }

      if (!*(a2 + 8))
      {
        v6 = "NO";
      }

      v17 = 134219010;
      v18 = a2;
      v19 = 1024;
      *v20 = v7;
      *&v20[4] = 2048;
      *&v20[6] = Count;
      v21 = 2080;
      v22 = v8;
      v23 = 2080;
      v24 = v6;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "Adding BTAudioEncoder %p type %d, to mCodecArray at index %ld Encode %s decode %s", &v17, 0x30u);
    }

    CFArrayInsertValueAtIndex(a1[1140], Count, a2);
    v9 = CFArrayGetCount(a1[1141]);
    if (!sub_D2A8(v9, a1[1141], *(a2 + 24)))
    {
      v10 = qword_C22A8;
      if (os_log_type_enabled(qword_C22A8, OS_LOG_TYPE_DEFAULT))
      {
        v11 = *(a2 + 24);
        v12 = *(a2 + 16);
        v17 = 134218496;
        v18 = v11;
        v19 = 2048;
        *v20 = v9;
        *&v20[8] = 1024;
        *&v20[10] = v12;
        _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "Adding sampleRate %f to mSampleRateArray at index %ld via Codec %d ", &v17, 0x1Cu);
      }

      CFArrayInsertValueAtIndex(a1[1141], v9, (a2 + 24));
    }

    if (*(a2 + 8))
    {
      v13 = CFArrayGetCount(a1[1142]);
      if (!sub_D2A8(v13, a1[1142], *(a2 + 24)))
      {
        v14 = qword_C22A8;
        if (os_log_type_enabled(qword_C22A8, OS_LOG_TYPE_DEFAULT))
        {
          v15 = *(a2 + 24);
          v16 = *(a2 + 16);
          v17 = 134218496;
          v18 = v15;
          v19 = 2048;
          *v20 = v13;
          *&v20[8] = 1024;
          *&v20[10] = v16;
          _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "Adding sampleRate %f to mSampleRateInputArray at index %ld via Codec %d ", &v17, 0x1Cu);
        }

        CFArrayInsertValueAtIndex(a1[1142], v13, (a2 + 24));
      }
    }
  }

  else if (os_log_type_enabled(qword_C22A8, OS_LOG_TYPE_ERROR))
  {
    sub_76E90();
  }
}

uint64_t sub_D01C(uint64_t a1, int a2)
{
  if (os_log_type_enabled(qword_C22A8, OS_LOG_TYPE_DEBUG))
  {
    sub_76EC4();
  }

  if ((a2 - 1) > 0x11 || CFArrayGetCount(*(a1 + 9120)) < 1)
  {
    return 0;
  }

  v4 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 9120), v4);
    if (ValueAtIndex)
    {
      v6 = ValueAtIndex;
      v7 = *ValueAtIndex;
      if (*ValueAtIndex)
      {
        if (*(v7 + 52) == a2)
        {
          break;
        }
      }
    }

    if (++v4 >= CFArrayGetCount(*(a1 + 9120)))
    {
      return 0;
    }
  }

  v9 = qword_C22A8;
  if (os_log_type_enabled(qword_C22A8, OS_LOG_TYPE_DEBUG))
  {
    v10 = 134217984;
    v11 = v7;
    _os_log_debug_impl(&dword_0, v9, OS_LOG_TYPE_DEBUG, "GetEncoder returned encoder at addr %p", &v10, 0xCu);
    return *v6;
  }

  return v7;
}

uint64_t sub_D160(uint64_t a1, int a2)
{
  if (os_log_type_enabled(qword_C22A8, OS_LOG_TYPE_DEBUG))
  {
    sub_76F38();
  }

  if ((a2 - 1) > 0x11 || CFArrayGetCount(*(a1 + 9120)) < 1)
  {
    return 0;
  }

  v4 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 9120), v4);
    if (ValueAtIndex)
    {
      v6 = ValueAtIndex;
      v7 = ValueAtIndex[1];
      if (v7)
      {
        if (*(v7 + 8) == a2)
        {
          break;
        }
      }
    }

    if (++v4 >= CFArrayGetCount(*(a1 + 9120)))
    {
      return 0;
    }
  }

  v9 = qword_C22A8;
  if (os_log_type_enabled(qword_C22A8, OS_LOG_TYPE_DEBUG))
  {
    v10 = 134217984;
    v11 = v7;
    _os_log_debug_impl(&dword_0, v9, OS_LOG_TYPE_DEBUG, "GetDecoder returned decoder at addr %p", &v10, 0xCu);
    return v6[1];
  }

  return v7;
}

BOOL sub_D2A8(int a1, CFArrayRef theArray, double a3)
{
  if (!theArray)
  {
    return 0;
  }

  Count = CFArrayGetCount(theArray);
  v6 = Count - 1;
  if (Count < 1)
  {
    return 0;
  }

  v7 = 0;
  do
  {
    v9 = *CFArrayGetValueAtIndex(theArray, v7) == a3;
    result = v9;
    v9 = v9 || v6 == v7++;
  }

  while (!v9);
  return result;
}

uint64_t sub_D32C(uint64_t a1, int a2, float *a3)
{
  v6 = *(a1 + 296);
  *a3 = v6;
  if ((*(*a1 + 1080))(a1) && a2 == 2 && *(a1 + 224))
  {
    v7 = dword_8871C;
    v8 = 2;
  }

  else
  {
    v8 = *(a1 + 9152);
    if (!v8)
    {
      v9 = 0;
LABEL_19:
      v15 = 1;
LABEL_20:
      v17 = 1;
      goto LABEL_21;
    }

    v7 = *(a1 + 9144);
  }

  v9 = 0;
  v10 = v8;
  do
  {
    v11 = *v7++;
    v12 = sub_D01C(a1, v11);
    if (!v12)
    {
      goto LABEL_14;
    }

    if (!v9)
    {
      v13 = *(v12 + 64);
LABEL_13:
      v6 = v13;
      v9 = v12;
      goto LABEL_14;
    }

    v13 = *(v12 + 64);
    if (v13 > v6)
    {
      goto LABEL_13;
    }

LABEL_14:
    --v10;
  }

  while (v10);
  if (!v9)
  {
    goto LABEL_19;
  }

  v14 = *(a1 + 216);
  if (v9 != v14)
  {
    v15 = 0;
    v16 = *(v9 + 64);
    *a3 = v16;
    goto LABEL_20;
  }

  v22 = qword_C22A8;
  if (os_log_type_enabled(qword_C22A8, OS_LOG_TYPE_DEFAULT))
  {
    v23 = *(v9 + 52);
    v24 = *(v14 + 52);
    v25 = 67109376;
    *v26 = v23;
    *&v26[4] = 1024;
    *&v26[6] = v24;
    _os_log_impl(&dword_0, v22, OS_LOG_TYPE_DEFAULT, "Preferred encoded is same as current encoder = %d : %d", &v25, 0xEu);
  }

  v15 = 0;
  v17 = 0;
LABEL_21:
  v18 = qword_C22A8;
  if (os_log_type_enabled(qword_C22A8, OS_LOG_TYPE_DEFAULT))
  {
    v19 = *a3;
    if (v15)
    {
      v20 = 0;
    }

    else
    {
      v20 = *(v9 + 52);
    }

    v25 = 134218240;
    *v26 = v19;
    *&v26[8] = 1024;
    v27 = v20;
    _os_log_impl(&dword_0, v18, OS_LOG_TYPE_DEFAULT, "New suggested sampling rate %f preferredEncoder = %d", &v25, 0x12u);
  }

  return v17;
}

id *sub_D558(uint64_t a1, unsigned int a2)
{
  v8 = 0.0;
  sub_D32C(a1, a2, &v8);
  v4 = *(a1 + 216);
  if (v4 && *(v4 + 64) == v8)
  {
    *(a1 + 9104) = a2;
    (*(*a1 + 528))(a1, *(a1 + 296));
    v5 = qword_C22A8;
    if (os_log_type_enabled(qword_C22A8, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(*(a1 + 216) + 52);
      *buf = 67109120;
      v10 = v6;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "Updating Content Type immediately as we are already using the requested codec: %d", buf, 8u);
    }

    result = *(a1 + 208);
    if (result)
    {
      sub_124B0(result, *(a1 + 9104));
      return 0;
    }
  }

  else
  {
    (*(*a1 + 240))(a1, 1650549620, a2);
    return (&dword_0 + 1);
  }

  return result;
}

void sub_D6B4(uint64_t a1, int a2)
{
  v4 = qword_C22A8;
  if (os_log_type_enabled(qword_C22A8, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 9104);
    v8[0] = 1.5047e-36;
    v8[1] = v5;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "Update content type via config change, new content type =%d", v8, 8u);
  }

  v8[0] = 0.0;
  sub_D32C(a1, a2, v8);
  *(a1 + 9104) = a2;
  v6.n128_f64[0] = v8[0];
  (*(*a1 + 528))(a1, v6);
  v7 = *(a1 + 208);
  if (v7)
  {
    sub_124B0(v7, *(a1 + 9104));
  }
}

uint64_t sub_D7D0(uint64_t a1, double a2)
{
  v4 = qword_C22A8;
  if (os_log_type_enabled(qword_C22A8, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 296);
    v22 = 134218240;
    v23 = v5;
    v24 = 2048;
    v25 = a2;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "Updating sample rate %f -> %f", &v22, 0x16u);
  }

  if (*(a1 + 224) && (v6 = *(a1 + 9104), v6 == 2))
  {
    v7 = dword_8871C;
  }

  else
  {
    v6 = *(a1 + 9152);
    if (!v6)
    {
LABEL_12:
      v12 = 560227702;
      if (os_log_type_enabled(qword_C22A8, OS_LOG_TYPE_ERROR))
      {
        sub_76FE0();
      }

      return v12;
    }

    v7 = *(a1 + 9144);
  }

  v8 = v6;
  while (1)
  {
    v9 = sub_D01C(a1, *v7);
    v10 = *v7++;
    v11 = sub_D160(a1, v10);
    if (v9)
    {
      if (*(v9 + 64) == a2)
      {
        break;
      }
    }

    if (!--v8)
    {
      goto LABEL_12;
    }
  }

  if (v9 == *(a1 + 216))
  {
    if (os_log_type_enabled(qword_C22A8, OS_LOG_TYPE_ERROR))
    {
      sub_76FAC();
    }
  }

  else
  {
    v13 = *(v9 + 64);
    v14 = *(v9 + 80);
    *(a1 + 328) = *(v9 + 96);
    *(a1 + 296) = v13;
    *(a1 + 312) = v14;
    *(a1 + 216) = v9;
    if (v11)
    {
      *(a1 + 224) = v11;
    }

    v15 = *(a1 + 208);
    if (v15)
    {
      sub_11E18(v15, *(v9 + 52));
    }
  }

  *(a1 + 296) = a2;
  v16 = qword_C22A8;
  if (os_log_type_enabled(qword_C22A8, OS_LOG_TYPE_ERROR))
  {
    v18 = *(a1 + 216);
    if (v18)
    {
      v19 = *(v18 + 52);
    }

    else
    {
      v19 = 255;
    }

    v20 = *(a1 + 224);
    if (v20)
    {
      v21 = *(v20 + 8);
    }

    else
    {
      v21 = 255;
    }

    v22 = 134218752;
    v23 = a2;
    v24 = 2048;
    v25 = a2;
    v26 = 1024;
    v27 = v19;
    v28 = 1024;
    v29 = v21;
    _os_log_error_impl(&dword_0, v16, OS_LOG_TYPE_ERROR, "Device sample rate changed for LEA %f -> %f [encoder = %d, decoder = %d]", &v22, 0x22u);
  }

  return 0;
}

void *sub_DA28@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result[52] + 9280);
  if (*(v2 + 31) < 0)
  {
    return sub_9780(a2, *(v2 + 8), *(v2 + 16));
  }

  v3 = *(v2 + 8);
  *(a2 + 16) = *(v2 + 24);
  *a2 = v3;
  return result;
}

uint64_t sub_DA90(uint64_t a1, char a2, float a3)
{
  *(a1 + 480) = a3;
  *(a1 + 488) = ((a3 + -1.0) * 100.0) + 0.0;
  if (os_log_type_enabled(qword_C22A8, OS_LOG_TYPE_DEBUG))
  {
    sub_77014(a3);
  }

  result = (*(*a1 + 1320))(a1);
  if (result)
  {
    if ((*(a1 + 408) & 1) == 0)
    {
      v7 = *(a1 + 400);
      if (v7)
      {
        v8 = atomic_load((v7 + 24));
        if (v8)
        {
          sub_16518(*(a1 + 400), *(a1 + 488));
        }
      }
    }

    if ((a2 & 1) != 0 || (result = sub_42134(), result))
    {
      v9 = 0x6F757470766F6C64;
      v10 = 0;
      return (*(*a1 + 248))(a1, &v9);
    }
  }

  return result;
}

void sub_DBEC(uint64_t a1, float a2)
{
  *(a1 + 488) = a2;
  *(a1 + 480) = ((0.0 - a2) / -100.0) + 1.0;
  if (os_log_type_enabled(qword_C22A8, OS_LOG_TYPE_DEBUG))
  {
    sub_77094(a2);
  }

  if ((*(*a1 + 1320))(a1))
  {
    if (*(a1 + 408) == 1)
    {
      v4 = *(a1 + 208);
      if (v4)
      {
        sub_126AC(v4, *(a1 + 480));
      }
    }

    else
    {
      v5 = *(a1 + 400);
      if (v5)
      {
        v6 = atomic_load((v5 + 24));
        if (v6)
        {
          sub_16518(*(a1 + 400), *(a1 + 488));
        }
      }
    }
  }
}

uint64_t sub_DCDC(_DWORD *a1, int a2)
{
  v4 = qword_C22A8;
  if (os_log_type_enabled(qword_C22A8, OS_LOG_TYPE_DEFAULT))
  {
    v5 = "disabled";
    if (a2)
    {
      v5 = "enabled";
    }

    v6 = "enable";
    if (a2)
    {
      v6 = "disable";
    }

    v8[0] = 136446466;
    *&v8[1] = v5;
    v9 = 2082;
    v10 = v6;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "BT LEA device set ecnr is %{public}s. AG will %{public}s EC/NR.", v8, 0x16u);
  }

  a1[2303] = a2;
  strcpy(v8, "rncebolg");
  BYTE1(v8[2]) = 0;
  HIWORD(v8[2]) = 0;
  return (*(*a1 + 248))(a1, v8);
}

uint64_t sub_DE00(uint64_t result, uint64_t a2)
{
  if (*(result + 9208) != a2)
  {
    *(result + 9208) = a2;
    v4 = *(result + 416);
    v5 = (*(*result + 1072))(result);
    v6 = *(*v4 + 1280);

    return v6(v4, a2, v5);
  }

  return result;
}

uint64_t sub_DEB8(CFTypeRef *a1, const __CFArray *a2)
{
  v4 = qword_C22A8;
  if (os_log_type_enabled(qword_C22A8, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "LEA: Setting Supported Codecs", v6, 2u);
  }

  CFRelease(a1[1139]);
  a1[1139] = CFArrayCreateCopy(kCFAllocatorDefault, a2);
  return (*(*a1 + 30))(a1, 1885762657, a2);
}

uint64_t sub_DF80(uint64_t a1)
{
  sub_CAA0(a1);
  sub_5F00(a1);
  *(a1 + 9120) = CFArrayCreateMutable(0, 0, 0);
  *(a1 + 9128) = CFArrayCreateMutable(0, 0, 0);
  *(a1 + 9136) = CFArrayCreateMutable(0, 0, 0);
  sub_B1EC(a1, *(a1 + 9112));
  v5 = 0.0;
  sub_D32C(a1, *(a1 + 9104), &v5);
  v2.n128_f64[0] = v5;
  v3 = *(*a1 + 528);

  return v3(a1, v2);
}

void sub_E060(uint64_t a1, int a2, int a3)
{
  v6 = qword_C22A8;
  if (os_log_type_enabled(qword_C22A8, OS_LOG_TYPE_DEFAULT))
  {
    if (a2)
    {
      v7 = "Yes";
    }

    else
    {
      v7 = "No";
    }

    v8 = *(a1 + 224);
    if (v8)
    {
      v9 = *(v8 + 8);
    }

    else
    {
      v9 = 255;
    }

    if (a3)
    {
      v10 = "Yes";
    }

    else
    {
      v10 = "No";
    }

    v11 = *(a1 + 216);
    if (v11)
    {
      v12 = *(v11 + 52);
    }

    else
    {
      v12 = 255;
    }

    v26 = 136446978;
    v27 = v7;
    v28 = 1024;
    v29 = v9;
    v30 = 2082;
    v31 = v10;
    v32 = 1024;
    v33 = v12;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "LEA: Updating Codecs Input = %{public}s Decoder = %d , Output = %{public}s Encoder = %d", &v26, 0x22u);
  }

  if (a3 && !*(a1 + 216) && *(a1 + 9152))
  {
    v24 = 0;
    while (1)
    {
      v25 = sub_D01C(a1, *(*(a1 + 9144) + 4 * v24));
      if (v25)
      {
        break;
      }

      if (++v24 >= *(a1 + 9152))
      {
        goto LABEL_17;
      }
    }

    *(a1 + 216) = v25;
  }

LABEL_17:
  if (a2)
  {
    v13 = *(a1 + 224);
    if (v13)
    {
      goto LABEL_25;
    }

    v14 = 1;
    while (1)
    {
      v15 = v14;
      v16 = sub_D160(a1, dword_8871C[v13]);
      if (v16)
      {
        break;
      }

      v14 = 0;
      v13 = 1;
      if ((v15 & 1) == 0)
      {
        goto LABEL_25;
      }
    }
  }

  else
  {
    v16 = 0;
  }

  *(a1 + 224) = v16;
LABEL_25:
  v17 = qword_C22A8;
  if (os_log_type_enabled(qword_C22A8, OS_LOG_TYPE_DEFAULT))
  {
    if (a2)
    {
      v18 = "Yes";
    }

    else
    {
      v18 = "No";
    }

    v19 = *(a1 + 224);
    if (v19)
    {
      v20 = *(v19 + 8);
    }

    else
    {
      v20 = 255;
    }

    if (a3)
    {
      v21 = "Yes";
    }

    else
    {
      v21 = "No";
    }

    v22 = *(a1 + 216);
    if (v22)
    {
      v23 = *(v22 + 52);
    }

    else
    {
      v23 = 255;
    }

    v26 = 136446978;
    v27 = v18;
    v28 = 1024;
    v29 = v20;
    v30 = 2082;
    v31 = v21;
    v32 = 1024;
    v33 = v23;
    _os_log_impl(&dword_0, v17, OS_LOG_TYPE_DEFAULT, "LEA: Codec Update completed Input = %{public}s Decoder = %d , Output = %{public}s Encoder = %d", &v26, 0x22u);
  }
}

uint64_t sub_E2B8(_BYTE *a1, int *a2)
{
  v4 = *a2;
  result = 1;
  if (*a2 <= 1701015153)
  {
    if (v4 == 1650549620 || v4 == 1651728749)
    {
      return result;
    }

    if (v4 == 1684234612)
    {
      if (os_log_type_enabled(qword_C22A8, OS_LOG_TYPE_DEBUG))
      {
        sub_77114();
      }

      return 1;
    }

    goto LABEL_19;
  }

  if (v4 == 1701015154)
  {
    return result;
  }

  if (v4 != 1870098020 && v4 != 1937009955)
  {
LABEL_19:

    return sub_6FE8();
  }

  if ((*(*a1 + 1080))(a1) && (a1[9208] & 1) != 0 || a2[1] != 1768845428) && ((v7 = (*(*a1 + 1072))(a1), v8 = a2[1], (v7) || v8 != 1869968496) && (v8 == 1735159650 || v8 == 1869968496 || v8 == 1768845428))
  {
    return a2[2] == 0;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_E480(uint64_t a1, int *a2, _BYTE *a3)
{
  v4 = *a2;
  if (*a2 <= 1684234611)
  {
    if (v4 == 1650549620)
    {
      *a3 = 1;
      return 0;
    }

    if (v4 != 1651728749)
    {
      goto LABEL_10;
    }

LABEL_9:
    *a3 = 0;
    return 0;
  }

  if (v4 == 1701015154)
  {
    goto LABEL_9;
  }

  if (v4 == 1684234612)
  {
    v5 = qword_C22A8;
    if (os_log_type_enabled(qword_C22A8, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "kBluetoothAudioDeviceCategory", v7, 2u);
    }

    goto LABEL_9;
  }

LABEL_10:

  return sub_6FF0();
}

uint64_t sub_E578(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, int *a5)
{
  v6 = *a2;
  if (*a2 > 1668641651)
  {
    if (v6 != 1701015154 && v6 != 1684234612)
    {
      if (v6 == 1668641652)
      {
        result = sub_6FF8();
        *a5 += 48;
        return result;
      }

      goto LABEL_11;
    }

    goto LABEL_9;
  }

  if (v6 == 1650549620)
  {
LABEL_9:
    v8 = 4;
    goto LABEL_10;
  }

  if (v6 == 1651728749)
  {
    v8 = 1;
LABEL_10:
    *a5 = v8;
    return 0;
  }

LABEL_11:

  return sub_6FF8();
}

uint64_t sub_E670(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, int *a7, double *a8)
{
  v12 = *a2;
  if (*a2 > 1684234611)
  {
    switch(v12)
    {
      case 1684234612:
        result = 0;
        v23 = *(a1 + 9216);
        break;
      case 1701015154:
        result = 0;
        v23 = *(a1 + 9212);
        break;
      case 1853059619:
        if (CFArrayGetCount(*(a1 + 9128)))
        {
          v19 = *CFArrayGetValueAtIndex(*(a1 + 9128), 0);
          if (CFArrayGetCount(*(a1 + 9128)) < 2)
          {
            v21 = v19;
          }

          else
          {
            v20 = 1;
            v21 = v19;
            do
            {
              ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 9128), v20);
              if (*ValueAtIndex < v21)
              {
                v21 = *ValueAtIndex;
              }

              if (*ValueAtIndex > v19)
              {
                v19 = *ValueAtIndex;
              }

              ++v20;
            }

            while (v20 < CFArrayGetCount(*(a1 + 9128)));
          }
        }

        else
        {
          v21 = 8000.0;
          v19 = 8000.0;
        }

        result = 0;
        *a8 = v21;
        a8[1] = v19;
        v18 = 16;
LABEL_36:
        *a7 = v18;
        return result;
      default:
        goto LABEL_27;
    }

LABEL_32:
    *a8 = v23;
    v18 = 4;
    goto LABEL_36;
  }

  switch(v12)
  {
    case 1650549620:
      result = 0;
      v23 = *(a1 + 9104);
      goto LABEL_32;
    case 1651728749:
      result = 0;
      *a8 = *(a1 + 9156);
      v18 = 1;
      goto LABEL_36;
    case 1668641652:
      result = sub_7000();
      if (result)
      {
        return result;
      }

      v14 = *a7;
      v15 = a6 - v14;
      v16 = (a6 - v14) / 0xCu;
      if (v16 >= 2)
      {
        v16 = 2;
      }

      if (v15 >= 0xC)
      {
        v17 = a8 + v14;
        *v17 = 0x7261777764636174;
        *(v17 + 2) = 0;
        if (v15 >= 0x18)
        {
          strcpy(v17 + 12, "tcabwwar");
          v17[21] = 0;
          *(v17 + 11) = 0;
        }

        LODWORD(v14) = *a7;
      }

      result = 0;
      v18 = v14 + 12 * v16;
      goto LABEL_36;
  }

LABEL_27:

  return sub_7000();
}

uint64_t sub_E8BC(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4, int a5, unsigned int *a6)
{
  v6 = 561211770;
  if (!a6)
  {
    return v6;
  }

  if (*a2 == 1853059700)
  {
    if (a5 != 8)
    {
      if (os_log_type_enabled(qword_C22A8, OS_LOG_TYPE_ERROR))
      {
        sub_77150();
      }

      return v6;
    }

    v8 = *(a1 + 296);
    v9 = *a6;
    v10 = qword_C22A8;
    v11 = os_log_type_enabled(qword_C22A8, OS_LOG_TYPE_DEFAULT);
    if (v11)
    {
      v17 = 67109376;
      v18 = v8;
      v19 = 1024;
      v20 = v9;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "setPropertyData: sample rate (%d->%d)\n", &v17, 0xEu);
    }

    if (v9 != v8)
    {
      if (*(a1 + 224) && *(a1 + 9104) == 2)
      {
        v12 = 9136;
      }

      else
      {
        v12 = 9128;
      }

      v14 = sub_D2A8(v11, *(a1 + v12), v9);
      v15 = qword_C22A8;
      v16 = os_log_type_enabled(qword_C22A8, OS_LOG_TYPE_DEFAULT);
      if (!v14)
      {
        v6 = 560226676;
        if (v16)
        {
          v17 = 67109376;
          v18 = v8;
          v19 = 1024;
          v20 = v9;
          _os_log_impl(&dword_0, v15, OS_LOG_TYPE_DEFAULT, "setPropertyData unsupported: sample rate (%d->%d)\n", &v17, 0xEu);
        }

        return v6;
      }

      if (v16)
      {
        v17 = 67109376;
        v18 = v8;
        v19 = 1024;
        v20 = v9;
        _os_log_impl(&dword_0, v15, OS_LOG_TYPE_DEFAULT, "Request device configuration change: sample rate (%d->%d)\n", &v17, 0xEu);
      }

      (*(*a1 + 240))(a1, 1853059700, v9);
    }

    return 0;
  }

  if (*a2 == 1650549620)
  {
    if (*a6 != *(a1 + 9104))
    {
      sub_D558(a1, *a6);
    }

    return 0;
  }

  return sub_7008();
}

uint64_t sub_EB70()
{
  v0 = qword_C22A8;
  if (os_log_type_enabled(qword_C22A8, OS_LOG_TYPE_FAULT))
  {
    sub_764F4(v0, v1, v2, v3, v4, v5, v6, v7);
  }

  result = sub_70820();
  if (result)
  {
    abort();
  }

  return result;
}

uint64_t sub_EBBC()
{
  v0 = qword_C22A8;
  if (os_log_type_enabled(qword_C22A8, OS_LOG_TYPE_FAULT))
  {
    sub_764F4(v0, v1, v2, v3, v4, v5, v6, v7);
  }

  result = sub_70820();
  if (result)
  {
    abort();
  }

  return result;
}

uint64_t sub_EC08()
{
  v0 = qword_C22A8;
  if (os_log_type_enabled(qword_C22A8, OS_LOG_TYPE_FAULT))
  {
    sub_764F4(v0, v1, v2, v3, v4, v5, v6, v7);
  }

  result = sub_70820();
  if (result)
  {
    abort();
  }

  return result;
}

void sub_EC54()
{
  v0 = qword_C22A8;
  if (os_log_type_enabled(qword_C22A8, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_0, v0, OS_LOG_TYPE_DEFAULT, "LEA NotifyPostProfileUpdateProperty", v1, 2u);
  }
}

uint64_t sub_ECB8()
{
  v0 = qword_C22A8;
  if (os_log_type_enabled(qword_C22A8, OS_LOG_TYPE_FAULT))
  {
    sub_764F4(v0, v1, v2, v3, v4, v5, v6, v7);
  }

  result = sub_70820();
  if (result)
  {
    abort();
  }

  return result;
}

double sub_ED04(uint64_t a1)
{
  v1 = *(a1 + 224);
  if (v1)
  {
    return *(v1 + 64);
  }

  else
  {
    return 0.0;
  }
}

__n128 sub_ED1C@<Q0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v3 = 216;
  if (a2)
  {
    v3 = 224;
  }

  v4 = *(a1 + v3);
  result = *(v4 + 64);
  v6 = *(v4 + 80);
  *a3 = result;
  *(a3 + 16) = v6;
  *(a3 + 32) = *(v4 + 96);
  return result;
}

void sub_ED44(uint64_t a1, xpc_object_t xdict)
{
  string = xpc_dictionary_get_string(xdict, "kBTAudioMsgPropertyDeviceUID");
  if (!string)
  {
    v4 = qword_C22A8;
    if (os_log_type_enabled(qword_C22A8, OS_LOG_TYPE_FAULT))
    {
      sub_77184(v4, v5, v6, v7, v8, v9, v10, v11);
    }

    if (sub_70820())
    {
      abort();
    }
  }

  v12 = CFStringCreateWithCString(kCFAllocatorDefault, string, 0x8000100u);
  *(a1 + 200) = v12;
  v13 = qword_C22A8;
  if (os_log_type_enabled(qword_C22A8, OS_LOG_TYPE_DEFAULT))
  {
    v14 = (*(*a1 + 16))(a1);
    v15 = 136315394;
    v16 = string;
    v17 = 1024;
    v18 = v14;
    _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "LEA Device XPC connection for UID %s connected to[ %d ] ", &v15, 0x12u);
    v12 = *(a1 + 200);
  }

  **(a1 + 208) = v12;
}

CFIndex sub_EEA0(uint64_t a1, uint64_t a2, CFIndex Count, int a4)
{
  if (a4)
  {
    v7 = *(a1 + 224);
    v8 = *(v7 + 72);
    v20 = v8;
    v21 = *(v7 + 88);
LABEL_3:
    v9 = 9136;
    goto LABEL_8;
  }

  v10 = *(a1 + 216);
  v11 = *(v10 + 72);
  v20 = v11;
  v21 = *(v10 + 88);
  if ((*(*a1 + 1080))(a1) && *(a1 + 224) && *(a1 + 9104) == 2)
  {
    goto LABEL_3;
  }

  v9 = 9128;
LABEL_8:
  v12 = *(a1 + v9);
  if (CFArrayGetCount(v12) < Count)
  {
    Count = CFArrayGetCount(v12);
  }

  if (CFArrayGetCount(v12) >= 1)
  {
    v13 = 0;
    v14 = 1;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v12, v13);
      v16 = *ValueAtIndex;
      v17 = a2 + 56 * v13;
      *v17 = *ValueAtIndex;
      *(v17 + 24) = v21;
      *(v17 + 8) = v20;
      *(v17 + 40) = v16;
      *(v17 + 48) = v16;
      v13 = v14;
    }

    while (CFArrayGetCount(v12) > v14++);
  }

  return Count;
}

uint64_t sub_EFD8(uint64_t a1, double *a2, uint64_t a3)
{
  if (a3 != 1)
  {
    v6 = qword_C22A8;
    if (os_log_type_enabled(qword_C22A8, OS_LOG_TYPE_FAULT))
    {
      sub_771FC(v6, v7, v8, v9, v10, v11, v12, v13);
    }

    if (sub_70820())
    {
      abort();
    }
  }

  if (CFArrayGetCount(*(a1 + 9128)))
  {
    v14 = *CFArrayGetValueAtIndex(*(a1 + 9128), 0);
    if (CFArrayGetCount(*(a1 + 9128)) < 2)
    {
      v16 = v14;
    }

    else
    {
      v15 = 1;
      v16 = v14;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 9128), v15);
        if (*ValueAtIndex < v14)
        {
          v14 = *ValueAtIndex;
        }

        if (*ValueAtIndex > v16)
        {
          v16 = *ValueAtIndex;
        }

        ++v15;
      }

      while (v15 < CFArrayGetCount(*(a1 + 9128)));
    }
  }

  else
  {
    v16 = 8000.0;
    v14 = 8000.0;
  }

  v18 = qword_C22A8;
  if (os_log_type_enabled(qword_C22A8, OS_LOG_TYPE_DEFAULT))
  {
    v20 = 134218240;
    v21 = v14;
    v22 = 2048;
    v23 = v16;
    _os_log_impl(&dword_0, v18, OS_LOG_TYPE_DEFAULT, "LEA: UpdateSamplingRate minRate %f, maxRate %f", &v20, 0x16u);
  }

  *a2 = v14;
  a2[1] = v16;
  return a3;
}

uint64_t sub_F190(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(*a1 + 1064))(a1);
  (*(*a1 + 1056))(a1, a3);
  v6 = *(*a1 + 1520);

  return v6(a1, a2, a3);
}

CFIndex sub_F27C(uint64_t a1, char a2)
{
  if ((a2 & 1) != 0 || (*(*a1 + 1080))(a1) && *(a1 + 224) && *(a1 + 9104) == 2)
  {
    v3 = 9136;
  }

  else
  {
    v3 = 9128;
  }

  return CFArrayGetCount(*(a1 + v3));
}

BOOL sub_F304(uint64_t a1, char a2, double a3, double a4)
{
  if (a4 == a3)
  {
    v7 = 0;
  }

  else
  {
    if ((a2 & 1) != 0 || *(a1 + 224) && *(a1 + 9104) == 2)
    {
      v6 = 9136;
    }

    else
    {
      v6 = 9128;
    }

    v7 = sub_D2A8(a1, *(a1 + v6), a4);
  }

  v8 = qword_C22A8;
  if (os_log_type_enabled(qword_C22A8, OS_LOG_TYPE_DEFAULT))
  {
    v10[0] = 67109632;
    v10[1] = a3;
    v11 = 1024;
    v12 = a4;
    v13 = 1024;
    v14 = v7;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "FormatChangeSupported: sample rate (%d->%d) Supported = %d\n", v10, 0x14u);
  }

  return v7;
}

uint64_t sub_F414(_BYTE *a1, int a2, int a3)
{
  if ((*(*a1 + 1080))(a1))
  {
    if (a2 == 1768845428 && (a1[9208] & 1) == 0)
    {
      return 0;
    }
  }

  else if (a2 == 1768845428)
  {
    return 0;
  }

  result = (*(*a1 + 1072))(a1);
  if (a2 != 1869968496 || result)
  {
    if (a2 == 1735159650 || a2 == 1869968496 || a2 == 1768845428)
    {
      return a3 == 0;
    }

    return 0;
  }

  return result;
}

_BYTE *sub_F5EC(_BYTE *result, _BYTE *a2)
{
  *result = 0;
  *a2 = 0;
  return result;
}

void sub_F5FC(void *a1, int a2, os_log_t log, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, a5, 2u);
}

void sub_F634(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

os_log_t sub_F65C()
{
  result = os_log_create("com.apple.bluetooth", "BTAudio");
  qword_C22A8 = result;
  return result;
}

uint64_t sub_F68C(uint64_t a1, uint64_t a2, int a3)
{
  *sub_38E7C(a1) = &off_ADCA0;
  v6 = qword_C22B0;
  if (os_log_type_enabled(qword_C22B0, OS_LOG_TYPE_DEFAULT))
  {
    v7 = sub_39024(a1);
    v8 = "output";
    if (a3)
    {
      v8 = "input";
    }

    v10 = 136446466;
    v11 = v8;
    v12 = 1024;
    v13 = v7;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "Creating %{public}s audio stream with audioObjectID: %u", &v10, 0x12u);
  }

  *(a1 + 16) = a2;
  *(a1 + 13) = a3;
  return a1;
}

void sub_F7B4(uint64_t a1)
{
  sub_38F74(a1);

  operator delete();
}

os_log_t sub_F940()
{
  result = os_log_create("com.apple.bluetooth", "BTAudio");
  qword_C22B0 = result;
  return result;
}

void sub_10580(uint64_t a1)
{
  v2 = sub_508C0(qword_D8DF0, *(*(a1 + 32) + 24));
  if (v2)
  {
    v3 = *(a1 + 40);
    v4 = *(*v2 + 1160);

    v4();
  }

  else
  {
    v5 = qword_C22B8;
    if (os_log_type_enabled(qword_C22B8, OS_LOG_TYPE_ERROR))
    {
      sub_772EC(v5);
    }
  }
}

BTAudioAVNotificationMonitor *sub_106F8(uint64_t a1)
{
  _Block_release(*(*(a1 + 32) + 16));
  *(*(a1 + 32) + 16) = 0;
  v2 = qword_C22B8;
  if (os_log_type_enabled(qword_C22B8, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "BTUnifiedAudioDevice::startManualVolumeUpdateTimer: reached the time limit", v6, 2u);
  }

  result = +[BTAudioAVNotificationMonitor sharedInstance];
  if (result)
  {
    v4 = result;
    v5 = *(*(a1 + 32) + 32);
    result = [(BTAudioAVNotificationMonitor *)v4 getPersonalizedVolumeDevice:*(*(a1 + 32) + 32)];
    if (result)
    {
      *(*(a1 + 32) + 8) = 1;
    }
  }

  return result;
}

os_log_t sub_107F8()
{
  result = os_log_create("com.apple.bluetooth", "BTAudio");
  qword_C22B8 = result;
  return result;
}

double sub_10828(uint64_t a1, int a2, __int128 *a3)
{
  *a1 = off_ADD80;
  *(a1 + 144) = 0;
  *(a1 + 168) = 0;
  *(a1 + 177) = 0;
  *(a1 + 52) = a2;
  v3 = *a3;
  v4 = a3[1];
  *(a1 + 96) = *(a3 + 4);
  *(a1 + 64) = v3;
  *(a1 + 80) = v4;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 33) = 0u;
  return result;
}

void *sub_10878(void *a1)
{
  *a1 = off_ADD80;
  v2 = a1[18];
  a1[18] = 0;
  if (v2)
  {
    operator delete[]();
  }

  v3 = a1[21];
  a1[21] = 0;
  if (v3)
  {
    operator delete[]();
  }

  v4 = a1[18];
  a1[18] = 0;
  if (v4)
  {
    operator delete[]();
  }

  return a1;
}

uint64_t sub_10918(uint64_t a1, int a2, _BYTE *a3, int a4, int a5)
{
  if (a4)
  {
    v5 = 0;
    v6 = a4;
    v7 = ~(-1 << a2);
    v8 = 8 - a2;
    v9 = a3;
    do
    {
      v10 = v5 / a2;
      v11 = a3[v10];
      if (a5)
      {
        v12 = v11 & v7;
        LOBYTE(v11) = v11 & v7;
      }

      else
      {
        v11 >>= v8;
        v12 = a3[v10 + 1] >> v8;
      }

      *v9++ = (v12 >> (a2 - 8 + a2 + v10 * a2 - v5)) | (v11 << (8 - (a2 + v10 * a2 - v5)));
      v5 += 8;
      --v6;
    }

    while (v6);
  }

  return (a4 * a2 + (a4 * a2 < 0 ? 7 : 0)) >> 3;
}

uint64_t sub_109B8(int a1, AudioConverterRef inAudioConverter)
{
  outSize = 0;
  result = AudioConverterGetPropertyInfo(inAudioConverter, 0x636D6763u, &outSize, 0);
  if (!result)
  {
    result = outSize;
    if (outSize)
    {
      operator new[]();
    }
  }

  return result;
}

uint64_t sub_10AD4(int a1, AudioConverterRef inAudioConverter)
{
  outSize = 0;
  result = AudioConverterGetPropertyInfo(inAudioConverter, 0x6F636C20u, &outSize, 0);
  if (!result)
  {
    result = outSize;
    if (outSize)
    {
      operator new[]();
    }
  }

  return result;
}

void sub_10BF0(int a1, OpaqueAudioConverter *a2, AudioFileID inAudioFile)
{
  *isWritable = 0;
  PropertyInfo = AudioFileGetPropertyInfo(inAudioFile, 0x706E666Fu, isWritable, &isWritable[1]);
  v6 = isWritable[1];
  if (PropertyInfo || !isWritable[1])
  {
    v7 = qword_C22C0;
    if (os_log_type_enabled(qword_C22C0, OS_LOG_TYPE_ERROR))
    {
      sub_77510(PropertyInfo, v6, v7);
    }
  }

  else
  {
    outPropertyData = 0;
    isWritable[0] = 8;
    if (AudioConverterGetProperty(a2, 0x7072696Du, isWritable, &outPropertyData))
    {
      if (os_log_type_enabled(qword_C22C0, OS_LOG_TYPE_ERROR))
      {
        sub_77598();
      }
    }

    else
    {
      v12 = 0;
      v13 = 0;
      isWritable[0] = 16;
      if (AudioFileGetProperty(inAudioFile, 0x706E666Fu, isWritable, &v12))
      {
        if (os_log_type_enabled(qword_C22C0, OS_LOG_TYPE_ERROR))
        {
          sub_775D4();
        }
      }

      else
      {
        v8 = v12 + v13 + SHIDWORD(v13);
        if (os_log_type_enabled(qword_C22C0, OS_LOG_TYPE_ERROR))
        {
          sub_77648();
        }

        v13 = outPropertyData;
        v12 = v8 - (outPropertyData + SHIDWORD(outPropertyData));
        v9 = AudioFileSetProperty(inAudioFile, 0x706E666Fu, 0x10u, &v12);
        v10 = qword_C22C0;
        v11 = os_log_type_enabled(qword_C22C0, OS_LOG_TYPE_ERROR);
        if (v9)
        {
          if (v11)
          {
            sub_776BC();
          }
        }

        else
        {
          if (v11)
          {
            *buf = 134217984;
            v17 = 16;
            _os_log_error_impl(&dword_0, v10, OS_LOG_TYPE_ERROR, "Writing packet table information to destination file: %ld\n", buf, 0xCu);
            v10 = qword_C22C0;
          }

          if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
          {
            *buf = 134217984;
            v17 = v12;
            _os_log_error_impl(&dword_0, v10, OS_LOG_TYPE_ERROR, "     Total valid frames: %lld\n", buf, 0xCu);
            v10 = qword_C22C0;
          }

          if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
          {
            *buf = 67109120;
            LODWORD(v17) = v13;
            _os_log_error_impl(&dword_0, v10, OS_LOG_TYPE_ERROR, "         Priming frames: %d\n", buf, 8u);
            v10 = qword_C22C0;
          }

          if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
          {
            sub_776F8(&v13 + 1);
          }
        }
      }
    }
  }
}

void sub_10EE4(uint64_t a1, UInt32 a2, UInt32 a3)
{
  ioNumPackets = a3;
  v32 = 0;
  memset(v31, 0, sizeof(v31));
  memset(&v25, 0, sizeof(v25));
  v24 = time(0);
  localtime_r(&v24, &v25);
  sprintf(v31, "%d_%d_%d_%d_%d_%d", v25.tm_year + 1900, v25.tm_mon + 1, v25.tm_mday, v25.tm_hour, v25.tm_min, v25.tm_sec);
  v5 = sub_42134();
  v6 = "/var/tmp";
  if (v5)
  {
    v6 = "/Library/Preferences/Audio";
  }

  if (*(a1 + 176))
  {
    if (!*(a1 + 16))
    {
      v30 = 0;
      v28 = 0u;
      v29 = 0u;
      *cStr = 0u;
      sprintf(cStr, "%s/encode-capture-%s.caf", v6, v31);
      v7 = CFStringCreateWithCString(kCFAllocatorDefault, cStr, 0x8000100u);
      v8 = CFURLCreateWithFileSystemPath(kCFAllocatorDefault, v7, kCFURLPOSIXPathStyle, 0);
      *(a1 + 16) = v8;
      v9 = os_log_type_enabled(qword_C22C0, OS_LOG_TYPE_ERROR);
      if (v8)
      {
        if (v9)
        {
          sub_77770();
        }
      }

      else if (v9)
      {
        sub_777AC();
      }

      CFRelease(v7);
    }

    v12 = (a1 + 8);
    v11 = *(a1 + 8);
    if (v11)
    {
      goto LABEL_15;
    }

    v16 = *(a1 + 16);
    if (v16)
    {
      v17 = AudioFileCreateWithURL(v16, 0x63616666u, (a1 + 104), 1u, (a1 + 8));
      if (v17)
      {
        v17 = os_log_type_enabled(qword_C22C0, OS_LOG_TYPE_ERROR);
        if (v17)
        {
          sub_777E8();
        }
      }

      v18 = *(a1 + 8);
      v19 = sub_109B8(v17, *(a1 + 56));
      if (*(a1 + 92) >= 3u)
      {
        v20 = *(a1 + 8);
        sub_10AD4(v19, *(a1 + 56));
      }

      v11 = *v12;
      if (*v12)
      {
LABEL_15:
        v13 = AudioFileWritePackets(v11, 0, a2, *(a1 + 168), *(a1 + 32), &ioNumPackets, *(a1 + 144));
        sub_199EC(v13, "AudioFileWritePackets failed!");
        v14 = ioNumPackets;
        *(a1 + 32) += ioNumPackets;
        v15 = *(a1 + 124);
        if (v15)
        {
          *(a1 + 24) += (v15 * v14);
        }

        else if (v14)
        {
          v21 = *(a1 + 24);
          v22 = (*(a1 + 168) + 8);
          do
          {
            v23 = *v22;
            v22 += 4;
            v21 += v23;
            --v14;
          }

          while (v14);
          *(a1 + 24) = v21;
        }
      }
    }
  }

  else
  {
    v10 = *(a1 + 40);
    if (v10 || (v30 = 0, v28 = 0u, v29 = 0u, *cStr = 0u, sprintf(cStr, "%s/encode-capture-%s.enc", v6, v31), v10 = fopen(cStr, "wb"), (*(a1 + 40) = v10) != 0))
    {
      fwrite(*(a1 + 144), 1uLL, a2, v10);
    }
  }
}

void sub_111E8(uint64_t a1)
{
  if (*(a1 + 176))
  {
    v2 = *(a1 + 8);
    if (v2)
    {
      if (!*(a1 + 136))
      {
        v3 = qword_C22C0;
        v4 = os_log_type_enabled(qword_C22C0, OS_LOG_TYPE_ERROR);
        if (v4)
        {
          v6 = *(a1 + 24);
          v7 = 134217984;
          v8 = v6;
          _os_log_error_impl(&dword_0, v3, OS_LOG_TYPE_ERROR, "Total number of output frames counted: %lld\n", &v7, 0xCu);
          v2 = *(a1 + 8);
        }

        sub_10BF0(v4, *(a1 + 56), v2);
        v5 = *(a1 + 8);
      }

      sub_109B8(a1, *(a1 + 56));
      AudioFileClose(*(a1 + 8));
      *(a1 + 8) = 0;
      CFRelease(*(a1 + 16));
      *(a1 + 16) = 0;
      *(a1 + 32) = 0;
    }
  }

  else
  {
    fclose(*(a1 + 40));
    *(a1 + 40) = 0;
  }
}

void sub_112FC(uint64_t a1, char *a2, char *a3, uint64_t a4, uint64_t a5)
{
  if (a4)
  {
    v5 = (a5 + 1);
    do
    {
      v6 = *a2++;
      *(v5 - 1) = v6;
      v7 = *a3++;
      *v5 = v7;
      v5 += 2;
      --a4;
    }

    while (a4);
  }
}

os_log_t sub_11330()
{
  result = os_log_create("com.apple.bluetooth", "BTAudio");
  qword_C22C0 = result;
  return result;
}

void *sub_11360(uint64_t a1, xpc_object_t xdict)
{
  int64 = xpc_dictionary_get_int64(xdict, "kBTAudioMsgArgDeviceType");
  v5 = qword_C22C8;
  if (os_log_type_enabled(qword_C22C8, OS_LOG_TYPE_DEBUG))
  {
    sub_77824(int64, v5);
  }

  value = xpc_dictionary_get_value(xdict, "kBTAudioMsgArgDeviceProperties");
  return sub_4C45C(qword_D8DF0, int64, a1, value);
}

BOOL sub_113F4(uint64_t a1, xpc_object_t xdict)
{
  applier[0] = _NSConcreteStackBlock;
  applier[1] = 3221225472;
  applier[2] = sub_11910;
  applier[3] = &unk_ADF98;
  applier[4] = a1;
  return xpc_dictionary_apply(xdict, applier);
}

void sub_1146C(uint64_t a1)
{
  v2 = *(a1 + 8);
  v1 = (a1 + 8);
  v3 = sub_4D4B0();
  if (v3)
  {

    sub_2688(v3, 1);
  }

  else if (os_log_type_enabled(qword_C22C8, OS_LOG_TYPE_ERROR))
  {
    sub_778C0(v1);
  }
}

uint64_t sub_114EC(uint64_t result)
{
  *result = 0;
  *(result + 8) = 0;
  return result;
}

uint64_t sub_114F8(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = sub_4D4B0();
  if (v3)
  {
    (*(*v3 + 1152))(v3, 0);
  }

  return a1;
}

uint64_t sub_1156C(uint64_t result)
{
  if (result)
  {
    sub_114F8(result);

    operator delete();
  }

  return result;
}

void sub_115AC(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = sub_4D4B0();
  if (v3)
  {
    v4 = v3;
    v5 = qword_C22C8;
    if (os_log_type_enabled(qword_C22C8, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 8);
      v7[0] = 67109120;
      v7[1] = v6;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "BTAudioDevice %d disconnected, marking invalid", v7, 8u);
    }

    sub_4CBFC(qword_D8DF0, v4);
  }
}

void sub_11680(uint64_t a1, xpc_object_t object)
{
  type = xpc_get_type(object);
  if (type == &_xpc_type_dictionary)
  {

    sub_117A0(a1, object);
  }

  else if (type == &_xpc_type_error)
  {
    if (object == &_xpc_error_connection_invalid)
    {

      sub_115AC(a1);
    }

    else
    {
      xpc_dictionary_get_string(object, _xpc_error_key_description);
      if (os_log_type_enabled(qword_C22C8, OS_LOG_TYPE_ERROR))
      {
        sub_779AC();
      }
    }
  }

  else
  {
    v5 = xpc_copy_description(object);
    if (os_log_type_enabled(qword_C22C8, OS_LOG_TYPE_ERROR))
    {
      sub_77938();
    }

    free(v5);
  }
}

void sub_117A0(uint64_t a1, xpc_object_t xdict)
{
  int64 = xpc_dictionary_get_int64(xdict, "kBTAudioMsgId");
  if (int64 - 1 > 0x26)
  {
    if (os_log_type_enabled(qword_C22C8, OS_LOG_TYPE_ERROR))
    {
      sub_77A20();
    }
  }

  else if (qword_ADF08[2 * int64])
  {
    v6 = qword_ADF08[2 * int64];
    value = xpc_dictionary_get_value(xdict, "kBTAudioMsgArgs");

    v6(a1, value);
  }

  else if (os_log_type_enabled(qword_C22C8, OS_LOG_TYPE_ERROR))
  {
    sub_77A90();
  }
}

void sub_118A4(uint64_t a1, char *a2, void *a3)
{
  v5 = *(a1 + 8);
  v6 = sub_4D4B0();
  if (v6)
  {
    v7 = v6;
    v8 = *(v6 + 416);

    sub_62614(v8, v7, a2, a3);
  }
}

void sub_11930(id *a1, void *a2, size_t a3, void *a4, size_t a5)
{
  v10 = qword_C22C8;
  if (os_log_type_enabled(qword_C22C8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218752;
    *&buf[4] = a2;
    *&buf[12] = 2048;
    *&buf[14] = a3;
    v18 = 2048;
    v19 = a4;
    v20 = 2048;
    v21 = a5;
    _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "XPC START MESSAGE SENT, Shared Memory output 0x%p of size %lu. Shared Memory Input 0x%p of size %lu", buf, 0x2Au);
  }

  v11 = 0;
  *buf = *off_ADFB8;
  if (a2 && a3)
  {
    v11 = xpc_shmem_create(a2, a3);
  }

  v12 = 0;
  object = v11;
  if (a4 && a5)
  {
    v12 = xpc_shmem_create(a4, a5);
  }

  v16 = v12;
  v13 = xpc_dictionary_create(buf, &object, 2uLL);
  if (v13)
  {
    v14 = v13;
    sub_11B14(a1, 5u, v13);
    xpc_release(v14);
  }

  else if (os_log_type_enabled(qword_C22C8, OS_LOG_TYPE_ERROR))
  {
    sub_77B00();
  }

  if (object)
  {
    xpc_release(object);
  }

  else if (os_log_type_enabled(qword_C22C8, OS_LOG_TYPE_ERROR))
  {
    sub_77B34();
  }

  if (v16)
  {
    xpc_release(v16);
  }

  else if (os_log_type_enabled(qword_C22C8, OS_LOG_TYPE_ERROR))
  {
    sub_77B68();
  }
}

void sub_11B14(id *a1, unsigned int a2, uint64_t a3)
{
  v6 = sub_4C12C(qword_D8DF0);
  if (v6)
  {
    v7 = v6;
    *keys = *off_ADFF0;
    v15 = "kBTAudioMsgArgs";
    values = xpc_int64_create(a2);
    object = xpc_string_create([*a1 UTF8String]);
    v13 = a3;
    if (a3)
    {
      v8 = 3;
    }

    else
    {
      v8 = 2;
    }

    v9 = xpc_dictionary_create(keys, &values, v8);
    if (v9)
    {
      v10 = v9;
      xpc_connection_send_message(v7, v9);
      xpc_release(v10);
    }

    else if (os_log_type_enabled(qword_C22C8, OS_LOG_TYPE_ERROR))
    {
      sub_77B9C();
    }

    if (object)
    {
      xpc_release(object);
    }

    else if (os_log_type_enabled(qword_C22C8, OS_LOG_TYPE_ERROR))
    {
      sub_77BD0();
    }

    if (values)
    {
      xpc_release(values);
    }

    else if (os_log_type_enabled(qword_C22C8, OS_LOG_TYPE_ERROR))
    {
      sub_77C04();
    }
  }

  else if (os_log_type_enabled(qword_C22C8, OS_LOG_TYPE_ERROR))
  {
    sub_77C38();
  }
}

void sub_11CAC(id *a1)
{
  if (os_log_type_enabled(qword_C22C8, OS_LOG_TYPE_DEBUG))
  {
    sub_77C6C();
  }

  sub_11B14(a1, 7u, 0);
}

void sub_11D00(id *a1, int a2)
{
  if (a2 == 2)
  {
    v2 = 21;
  }

  else
  {
    if (a2 != 3)
    {
      goto LABEL_6;
    }

    v2 = 20;
  }

  sub_11B14(a1, v2, 0);
LABEL_6:
  if (os_log_type_enabled(qword_C22C8, OS_LOG_TYPE_DEBUG))
  {
    sub_77CA0();
  }
}

void sub_11D78(id *a1, BOOL a2)
{
  if (os_log_type_enabled(qword_C22C8, OS_LOG_TYPE_DEBUG))
  {
    sub_77D08();
  }

  v4 = xpc_BOOL_create(a2);
  if (v4)
  {
    v5 = v4;
    sub_11B14(a1, 0xEu, v4);
    xpc_release(v5);
  }

  else if (os_log_type_enabled(qword_C22C8, OS_LOG_TYPE_ERROR))
  {
    sub_77D70();
  }
}

void sub_11E18(id *a1, unsigned int a2)
{
  if (os_log_type_enabled(qword_C22C8, OS_LOG_TYPE_DEBUG))
  {
    sub_77DA4();
  }

  v4 = xpc_int64_create(a2);
  if (v4)
  {
    v5 = v4;
    sub_11B14(a1, 9u, v4);
    xpc_release(v5);
  }

  else if (os_log_type_enabled(qword_C22C8, OS_LOG_TYPE_ERROR))
  {
    sub_77E0C();
  }
}

void sub_11EB8(id *a1, unsigned int a2, unsigned int a3)
{
  v6 = qword_C22C8;
  if (os_log_type_enabled(qword_C22C8, OS_LOG_TYPE_DEFAULT))
  {
    v7 = "enable";
    if (!a2)
    {
      v7 = "disable";
    }

    *buf = 136315394;
    *&buf[4] = v7;
    *&buf[12] = 1024;
    *&buf[14] = a3;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "XPC Send AMP Data Source, reason:%s codecID: %u", buf, 0x12u);
  }

  *buf = *off_ADFC8;
  object = xpc_int64_create(a2);
  v11 = xpc_int64_create(a3);
  v8 = xpc_dictionary_create(buf, &object, 2uLL);
  if (v8)
  {
    v9 = v8;
    sub_11B14(a1, 0x25u, v8);
    xpc_release(v9);
  }

  else if (os_log_type_enabled(qword_C22C8, OS_LOG_TYPE_ERROR))
  {
    sub_77E40();
  }

  if (object)
  {
    xpc_release(object);
  }

  else if (os_log_type_enabled(qword_C22C8, OS_LOG_TYPE_ERROR))
  {
    sub_77E74();
  }

  if (v11)
  {
    xpc_release(v11);
  }

  else if (os_log_type_enabled(qword_C22C8, OS_LOG_TYPE_ERROR))
  {
    sub_77EA8();
  }
}

void sub_12070(id *a1, unsigned int a2)
{
  v4 = qword_C22C8;
  if (os_log_type_enabled(qword_C22C8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = a2;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "XPC Send AMP Metric avgFlush %u(ms)", buf, 8u);
  }

  *buf = "kBTAudioMsgPropertyAmpAvgSkipDurationInSecond";
  values = xpc_int64_create(a2);
  v5 = xpc_dictionary_create(buf, &values, 1uLL);
  if (v5)
  {
    v6 = v5;
    sub_11B14(a1, 0x27u, v5);
    xpc_release(v6);
  }

  else if (os_log_type_enabled(qword_C22C8, OS_LOG_TYPE_ERROR))
  {
    sub_77EDC();
  }

  if (values)
  {
    xpc_release(values);
  }

  else if (os_log_type_enabled(qword_C22C8, OS_LOG_TYPE_ERROR))
  {
    sub_77F10();
  }
}

void sub_121B8(id *a1, unsigned int a2)
{
  v4 = qword_C22C8;
  if (os_log_type_enabled(qword_C22C8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "XPC Send AMPAudioInput Audio feedback", buf, 2u);
  }

  *buf = "kBTAudioMsgPropertyAmpAudioFeedBack";
  values = xpc_int64_create(a2);
  v5 = xpc_dictionary_create(buf, &values, 1uLL);
  if (v5)
  {
    v6 = v5;
    sub_11B14(a1, 0x26u, v5);
    xpc_release(v6);
  }

  else if (os_log_type_enabled(qword_C22C8, OS_LOG_TYPE_ERROR))
  {
    sub_77F44();
  }

  if (values)
  {
    xpc_release(values);
  }

  else if (os_log_type_enabled(qword_C22C8, OS_LOG_TYPE_ERROR))
  {
    sub_77F78();
  }
}

void sub_122F4(id *a1, unsigned int a2, unsigned int a3, unsigned int a4)
{
  if (os_log_type_enabled(qword_C22C8, OS_LOG_TYPE_DEBUG))
  {
    sub_77FAC();
  }

  *keys = *off_ADFD8;
  v14 = "kBTAudioMsgPropertyScoSampleRate";
  values = xpc_int64_create(a2);
  object = xpc_int64_create(a3);
  v12 = xpc_int64_create(a4);
  v8 = xpc_dictionary_create(keys, &values, 3uLL);
  if (v8)
  {
    v9 = v8;
    sub_11B14(a1, 0xBu, v8);
    xpc_release(v9);
  }

  else if (os_log_type_enabled(qword_C22C8, OS_LOG_TYPE_ERROR))
  {
    sub_78030();
  }

  if (values)
  {
    xpc_release(values);
  }

  else if (os_log_type_enabled(qword_C22C8, OS_LOG_TYPE_ERROR))
  {
    sub_78064();
  }

  if (object)
  {
    xpc_release(object);
  }

  else if (os_log_type_enabled(qword_C22C8, OS_LOG_TYPE_ERROR))
  {
    sub_78098();
  }

  if (v12)
  {
    xpc_release(v12);
  }

  else if (os_log_type_enabled(qword_C22C8, OS_LOG_TYPE_ERROR))
  {
    sub_780CC();
  }
}

void sub_124B0(id *a1, unsigned int a2)
{
  if (os_log_type_enabled(qword_C22C8, OS_LOG_TYPE_DEBUG))
  {
    sub_78100();
  }

  v4 = xpc_int64_create(a2);
  if (v4)
  {
    v5 = v4;
    sub_11B14(a1, 0xAu, v4);
    xpc_release(v5);
  }

  else if (os_log_type_enabled(qword_C22C8, OS_LOG_TYPE_ERROR))
  {
    sub_78168();
  }
}

void sub_12550(id *a1, float a2)
{
  v3 = qword_C22C8;
  v4 = a2;
  if (os_log_type_enabled(qword_C22C8, OS_LOG_TYPE_DEBUG))
  {
    *keys = 134217984;
    *&keys[4] = v4;
    _os_log_debug_impl(&dword_0, v3, OS_LOG_TYPE_DEBUG, "Send XPC Input volume changed to %f", keys, 0xCu);
  }

  *keys = "kBTAudioMsgPropertyInputVolumeScalar";
  values = xpc_double_create(v4);
  v5 = xpc_dictionary_create(keys, &values, 1uLL);
  if (v5)
  {
    v6 = v5;
    sub_11B14(a1, 3u, v5);
    xpc_release(v6);
  }

  else if (os_log_type_enabled(qword_C22C8, OS_LOG_TYPE_ERROR))
  {
    sub_7819C();
  }

  if (values)
  {
    xpc_release(values);
  }

  else if (os_log_type_enabled(qword_C22C8, OS_LOG_TYPE_ERROR))
  {
    sub_781D0();
  }
}

void sub_126AC(id *a1, float a2)
{
  v3 = qword_C22C8;
  v4 = a2;
  if (os_log_type_enabled(qword_C22C8, OS_LOG_TYPE_DEBUG))
  {
    *keys = 134217984;
    *&keys[4] = v4;
    _os_log_debug_impl(&dword_0, v3, OS_LOG_TYPE_DEBUG, "Send XPC volume changed to %f", keys, 0xCu);
  }

  *keys = "kBTAudioMsgPropertyVolumeScalar";
  values = xpc_double_create(v4);
  v5 = xpc_dictionary_create(keys, &values, 1uLL);
  if (v5)
  {
    v6 = v5;
    sub_11B14(a1, 3u, v5);
    xpc_release(v6);
  }

  else if (os_log_type_enabled(qword_C22C8, OS_LOG_TYPE_ERROR))
  {
    sub_78204();
  }

  if (values)
  {
    xpc_release(values);
  }

  else if (os_log_type_enabled(qword_C22C8, OS_LOG_TYPE_ERROR))
  {
    sub_78238();
  }
}

void sub_12808(id *a1, BOOL value)
{
  keys = "kBTAudioMsgPropertyDynamicLatencyAudioAndInputAggregationOn";
  values = xpc_BOOL_create(value);
  v3 = xpc_dictionary_create(&keys, &values, 1uLL);
  if (v3)
  {
    v4 = v3;
    sub_11B14(a1, 3u, v3);
    xpc_release(v4);
  }

  else if (os_log_type_enabled(qword_C22C8, OS_LOG_TYPE_ERROR))
  {
    sub_7826C();
  }

  if (values)
  {
    xpc_release(values);
  }

  else if (os_log_type_enabled(qword_C22C8, OS_LOG_TYPE_ERROR))
  {
    sub_782A0();
  }
}

void sub_12900(id *a1, _BOOL4 value)
{
  keys = "kBTAudioMsgPropertyExpanseOn";
  values = xpc_BOOL_create(value);
  v4 = xpc_dictionary_create(&keys, &values, 1uLL);
  if (v4)
  {
    v5 = v4;
    sub_11B14(a1, 3u, v4);
    xpc_release(v5);
  }

  else if (os_log_type_enabled(qword_C22C8, OS_LOG_TYPE_ERROR))
  {
    sub_782D4();
  }

  if (values)
  {
    xpc_release(values);
  }

  else if (os_log_type_enabled(qword_C22C8, OS_LOG_TYPE_ERROR))
  {
    sub_78308();
  }

  v6 = qword_C22C8;
  if (os_log_type_enabled(qword_C22C8, OS_LOG_TYPE_DEFAULT))
  {
    v7[0] = 67109120;
    v7[1] = value;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "SendExpanseStatePropertyChanged expanseOn:%d", v7, 8u);
  }
}

void sub_12A48(id *a1, _BOOL4 value)
{
  keys = "kBTAudioMsgPropertyExpanseInA2DP";
  values = xpc_BOOL_create(value);
  v4 = xpc_dictionary_create(&keys, &values, 1uLL);
  if (v4)
  {
    v5 = v4;
    sub_11B14(a1, 3u, v4);
    xpc_release(v5);
  }

  else if (os_log_type_enabled(qword_C22C8, OS_LOG_TYPE_ERROR))
  {
    sub_7833C();
  }

  if (values)
  {
    xpc_release(values);
  }

  else if (os_log_type_enabled(qword_C22C8, OS_LOG_TYPE_ERROR))
  {
    sub_78370();
  }

  v6 = qword_C22C8;
  if (os_log_type_enabled(qword_C22C8, OS_LOG_TYPE_DEFAULT))
  {
    v7[0] = 67109120;
    v7[1] = value;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "SendExpanseInA2DPChanged expanseOn:%d", v7, 8u);
  }
}

void sub_12B90(id *a1, _BOOL4 value)
{
  keys = "kBTAudioMsgPropertyCallScreening";
  values = xpc_BOOL_create(value);
  v4 = xpc_dictionary_create(&keys, &values, 1uLL);
  if (v4)
  {
    v5 = v4;
    sub_11B14(a1, 3u, v4);
    xpc_release(v5);
  }

  else if (os_log_type_enabled(qword_C22C8, OS_LOG_TYPE_ERROR))
  {
    sub_783A4();
  }

  if (values)
  {
    xpc_release(values);
  }

  v6 = qword_C22C8;
  if (os_log_type_enabled(qword_C22C8, OS_LOG_TYPE_DEFAULT))
  {
    v7[0] = 67109120;
    v7[1] = value;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "SendCallScreeningState enabled:%d", v7, 8u);
  }
}

void sub_12CB4(id *a1, BOOL value)
{
  keys = "kBTAudioMsgPropertyGameOn";
  values = xpc_BOOL_create(value);
  v3 = xpc_dictionary_create(&keys, &values, 1uLL);
  if (v3)
  {
    v4 = v3;
    sub_11B14(a1, 3u, v3);
    xpc_release(v4);
  }

  else if (os_log_type_enabled(qword_C22C8, OS_LOG_TYPE_ERROR))
  {
    sub_783D8();
  }

  if (values)
  {
    xpc_release(values);
  }

  else if (os_log_type_enabled(qword_C22C8, OS_LOG_TYPE_ERROR))
  {
    sub_7840C();
  }
}

void sub_12DAC(id *a1, BOOL value)
{
  keys = "kBTAudioMsgPropertyVoiceOverOn";
  values = xpc_BOOL_create(value);
  v3 = xpc_dictionary_create(&keys, &values, 1uLL);
  if (v3)
  {
    v4 = v3;
    sub_11B14(a1, 3u, v3);
    xpc_release(v4);
  }

  else if (os_log_type_enabled(qword_C22C8, OS_LOG_TYPE_ERROR))
  {
    sub_78440();
  }

  if (values)
  {
    xpc_release(values);
  }

  else if (os_log_type_enabled(qword_C22C8, OS_LOG_TYPE_ERROR))
  {
    sub_78474();
  }
}

void sub_12EA4(id *a1, BOOL value)
{
  keys = "kBTAudioMsgPropertyWSModeEnabled";
  values = xpc_BOOL_create(value);
  v3 = xpc_dictionary_create(&keys, &values, 1uLL);
  if (v3)
  {
    v4 = v3;
    sub_11B14(a1, 3u, v3);
    xpc_release(v4);
  }

  else if (os_log_type_enabled(qword_C22C8, OS_LOG_TYPE_ERROR))
  {
    sub_784A8();
  }

  if (values)
  {
    xpc_release(values);
  }

  else if (os_log_type_enabled(qword_C22C8, OS_LOG_TYPE_ERROR))
  {
    sub_784DC();
  }
}

void sub_12F9C(id *a1, BOOL value)
{
  keys = "kBTAudioMsgPropertySpatialAudioActive";
  values = xpc_BOOL_create(value);
  v3 = xpc_dictionary_create(&keys, &values, 1uLL);
  if (v3)
  {
    v4 = v3;
    sub_11B14(a1, 3u, v3);
    xpc_release(v4);
  }

  else if (os_log_type_enabled(qword_C22C8, OS_LOG_TYPE_ERROR))
  {
    sub_78510();
  }

  if (values)
  {
    xpc_release(values);
  }

  else if (os_log_type_enabled(qword_C22C8, OS_LOG_TYPE_ERROR))
  {
    sub_78544();
  }
}

void sub_13094(id *a1, unsigned int a2)
{
  if (os_log_type_enabled(qword_C22C8, OS_LOG_TYPE_DEBUG))
  {
    sub_78578();
  }

  keys = "kBTAudioMsgPropertyFrameCount";
  values = xpc_int64_create(a2);
  v4 = xpc_dictionary_create(&keys, &values, 1uLL);
  if (v4)
  {
    v5 = v4;
    sub_11B14(a1, 3u, v4);
    xpc_release(v5);
  }

  else if (os_log_type_enabled(qword_C22C8, OS_LOG_TYPE_ERROR))
  {
    sub_785E0();
  }

  if (values)
  {
    xpc_release(values);
  }

  else if (os_log_type_enabled(qword_C22C8, OS_LOG_TYPE_ERROR))
  {
    sub_78614();
  }
}

void sub_131B8(id *a1, unsigned int a2)
{
  if (os_log_type_enabled(qword_C22C8, OS_LOG_TYPE_DEBUG))
  {
    sub_78648();
  }

  keys = "kBTAudioMsgPropertySpatialOn";
  values = xpc_int64_create(a2);
  v4 = xpc_dictionary_create(&keys, &values, 1uLL);
  if (v4)
  {
    v5 = v4;
    sub_11B14(a1, 3u, v4);
    xpc_release(v5);
  }

  else if (os_log_type_enabled(qword_C22C8, OS_LOG_TYPE_ERROR))
  {
    sub_786B0();
  }

  if (values)
  {
    xpc_release(values);
  }

  else if (os_log_type_enabled(qword_C22C8, OS_LOG_TYPE_ERROR))
  {
    sub_786E4();
  }
}

void sub_132DC(id *a1, const __CFString *a2, int a3, float a4)
{
  valuePtr = a3;
  v15 = (a4 * 100.0);
  v8 = qword_C22C8;
  if (os_log_type_enabled(qword_C22C8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109634;
    *&buf[4] = a4;
    v19 = 2112;
    v20 = a2;
    v21 = 1024;
    v22 = a3;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "Send adaptive volume ramp end config CurrentVolume %d audioCategory %@ rampEndReason %d", buf, 0x18u);
  }

  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v10 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, &v15);
  Copy = CFStringCreateCopy(kCFAllocatorDefault, a2);
  v12 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, &valuePtr);
  CFDictionaryAddValue(Mutable, @"kBTAudioMsgPropertyAdaptiveVolumeCurrentVolume", v10);
  CFDictionaryAddValue(Mutable, @"kBTAudioMsgPropertyAdaptiveVolumeAudioCategory", Copy);
  CFDictionaryAddValue(Mutable, @"kBTAudioMsgPropertyAdaptiveVolumeRampEndReason", v12);
  *buf = "kBTAudioMsgPropertyAdaptiveVolumeRampEnd";
  values = _CFXPCCreateXPCObjectFromCFObject();
  v13 = xpc_dictionary_create(buf, &values, 1uLL);
  if (v13)
  {
    v14 = v13;
    sub_11B14(a1, 3u, v13);
    xpc_release(v14);
  }

  else if (os_log_type_enabled(qword_C22C8, OS_LOG_TYPE_ERROR))
  {
    sub_78718();
  }

  if (values)
  {
    xpc_release(values);
    if (!Mutable)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  if (!os_log_type_enabled(qword_C22C8, OS_LOG_TYPE_ERROR))
  {
    if (!Mutable)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  sub_7874C();
  if (Mutable)
  {
LABEL_12:
    CFRelease(Mutable);
  }

LABEL_13:
  if (v10)
  {
    CFRelease(v10);
  }

  if (Copy)
  {
    CFRelease(Copy);
  }

  if (v12)
  {
    CFRelease(v12);
  }
}

void sub_13550(id *a1, const __CFString *a2, void *a3, void *a4, void *a5)
{
  v9 = [a3 intValue];
  v22 = v9;
  v10 = [a4 intValue];
  valuePtr = v10;
  v11 = [a5 intValue];
  v20 = v11;
  v12 = qword_C22C8;
  if (os_log_type_enabled(qword_C22C8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138413058;
    *&buf[4] = a2;
    v25 = 1024;
    v26 = v9;
    v27 = 1024;
    v28 = v10;
    v29 = 1024;
    v30 = v11;
    _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "Send manual volume update currentAudioCategory %@ currentVolume %d manualVolumeUpdate %d isRampInProgress %d", buf, 0x1Eu);
  }

  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v14 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, &valuePtr);
  v15 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, &v22);
  v16 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, &v20);
  Copy = CFStringCreateCopy(kCFAllocatorDefault, a2);
  CFDictionaryAddValue(Mutable, @"kBTAudioMsgPropertyManualVolumeUpdateNewVolume", v14);
  CFDictionaryAddValue(Mutable, @"kBTAudioMsgPropertyManualVolumeUpdateCurrentVolume", v15);
  CFDictionaryAddValue(Mutable, @"kBTAudioMsgPropertyManualVolumeUpdateRampInProgress", v16);
  CFDictionaryAddValue(Mutable, @"kBTAudioMsgPropertyManualVolumeUpdateCurrentAudioCategory", Copy);
  *buf = "kBTAudioMsgPropertyManualVolumeUpdate";
  values = _CFXPCCreateXPCObjectFromCFObject();
  v18 = xpc_dictionary_create(buf, &values, 1uLL);
  if (v18)
  {
    v19 = v18;
    sub_11B14(a1, 3u, v18);
    xpc_release(v19);
  }

  else if (os_log_type_enabled(qword_C22C8, OS_LOG_TYPE_ERROR))
  {
    sub_78780();
  }

  if (values)
  {
    xpc_release(values);
    if (!v14)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  if (!os_log_type_enabled(qword_C22C8, OS_LOG_TYPE_ERROR))
  {
    if (!v14)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  sub_787B4();
  if (v14)
  {
LABEL_12:
    CFRelease(v14);
  }

LABEL_13:
  if (v15)
  {
    CFRelease(v15);
  }

  if (Copy)
  {
    CFRelease(Copy);
  }

  if (v16)
  {
    CFRelease(v16);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }
}

void sub_13808(id *a1, _BOOL4 a2)
{
  v4 = qword_C22C8;
  if (os_log_type_enabled(qword_C22C8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = a2;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "Send PME On bud status%d", buf, 8u);
  }

  *buf = "kBTAudioMsgPropertyPMEOnBuds";
  values = xpc_BOOL_create(a2);
  v5 = xpc_dictionary_create(buf, &values, 1uLL);
  if (v5)
  {
    v6 = v5;
    sub_11B14(a1, 3u, v5);
    xpc_release(v6);
  }

  else if (os_log_type_enabled(qword_C22C8, OS_LOG_TYPE_ERROR))
  {
    sub_787E8();
  }

  if (values)
  {
    xpc_release(values);
  }

  else if (os_log_type_enabled(qword_C22C8, OS_LOG_TYPE_ERROR))
  {
    sub_7881C();
  }
}

void sub_13950(id *a1, _BOOL4 a2)
{
  v4 = qword_C22C8;
  if (os_log_type_enabled(qword_C22C8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = a2;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "Send headtracking availability changed %d", buf, 8u);
  }

  *buf = "kBTHeadtrackingAvailabilityChanged";
  values = xpc_BOOL_create(a2);
  v5 = xpc_dictionary_create(buf, &values, 1uLL);
  if (v5)
  {
    v6 = v5;
    sub_11B14(a1, 3u, v5);
    xpc_release(v6);
  }

  else if (os_log_type_enabled(qword_C22C8, OS_LOG_TYPE_ERROR))
  {
    sub_78850();
  }

  if (values)
  {
    xpc_release(values);
  }

  else if (os_log_type_enabled(qword_C22C8, OS_LOG_TYPE_ERROR))
  {
    sub_78884();
  }
}

void sub_13A98(id *a1, const __CFString *a2, int a3)
{
  valuePtr = a3;
  v6 = qword_C22C8;
  if (os_log_type_enabled(qword_C22C8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    *&buf[4] = a2;
    v15 = 1024;
    v16 = a3;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "Send USBC for Address: %@ Status: %d", buf, 0x12u);
  }

  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  Copy = CFStringCreateCopy(kCFAllocatorDefault, a2);
  v9 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, &valuePtr);
  CFDictionaryAddValue(Mutable, @"kBTAudioMsgUnifiedUSBCBTAddress", Copy);
  CFDictionaryAddValue(Mutable, @"kBTAudioMsgUnifiedUSBCStatus", v9);
  *buf = "kBTAudioMsgUnifiedUSBCDict";
  values = _CFXPCCreateXPCObjectFromCFObject();
  v10 = xpc_dictionary_create(buf, &values, 1uLL);
  if (v10)
  {
    v11 = v10;
    sub_11B14(a1, 3u, v10);
    xpc_release(v11);
  }

  else if (os_log_type_enabled(qword_C22C8, OS_LOG_TYPE_ERROR))
  {
    sub_788B8();
  }

  if (values)
  {
    xpc_release(values);
    if (!Copy)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  if (!os_log_type_enabled(qword_C22C8, OS_LOG_TYPE_ERROR))
  {
    if (!Copy)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  sub_788EC();
  if (Copy)
  {
LABEL_12:
    CFRelease(Copy);
  }

LABEL_13:
  if (v9)
  {
    CFRelease(v9);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }
}

void sub_13CA0(id *a1, const __CFString *a2, int a3, int a4)
{
  valuePtr = a3;
  v8 = qword_C22C8;
  if (os_log_type_enabled(qword_C22C8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    *&buf[4] = a2;
    v19 = 1024;
    v20 = a3;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "Send SpatialAudio App Based Mode %@ Mode%d", buf, 0x12u);
  }

  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v10 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, &valuePtr);
  Copy = CFStringCreateCopy(kCFAllocatorDefault, a2);
  v12 = &kCFBooleanTrue;
  if (!a4)
  {
    v12 = &kCFBooleanFalse;
  }

  v13 = *v12;
  CFDictionaryAddValue(Mutable, @"kBTAudioMsgPropertySpatialMode", v10);
  CFDictionaryAddValue(Mutable, @"kBTAudioMsgPropertySpatialBundleID", Copy);
  CFDictionaryAddValue(Mutable, @"kBTAudioMsgPropertyHeadTrack", v13);
  *buf = "kBTAudioMsgPropertySpatialAudioAppBasedMode";
  values = _CFXPCCreateXPCObjectFromCFObject();
  v14 = xpc_dictionary_create(buf, &values, 1uLL);
  if (v14)
  {
    v15 = v14;
    sub_11B14(a1, 3u, v14);
    xpc_release(v15);
  }

  else if (os_log_type_enabled(qword_C22C8, OS_LOG_TYPE_ERROR))
  {
    sub_78920();
  }

  if (values)
  {
    xpc_release(values);
    if (!Copy)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  if (!os_log_type_enabled(qword_C22C8, OS_LOG_TYPE_ERROR))
  {
    if (!Copy)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  sub_78954();
  if (Copy)
  {
LABEL_14:
    CFRelease(Copy);
  }

LABEL_15:
  if (v10)
  {
    CFRelease(v10);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }
}

void sub_13EE4(id *a1, BOOL a2)
{
  if (os_log_type_enabled(qword_C22C8, OS_LOG_TYPE_DEBUG))
  {
    sub_78988();
  }

  keys = "kBTAudioMsgPropertyAllowSpatialAudio";
  values = xpc_BOOL_create(a2);
  v4 = xpc_dictionary_create(&keys, &values, 1uLL);
  if (v4)
  {
    v5 = v4;
    sub_11B14(a1, 3u, v4);
    xpc_release(v5);
  }

  else if (os_log_type_enabled(qword_C22C8, OS_LOG_TYPE_ERROR))
  {
    sub_789F0();
  }

  if (values)
  {
    xpc_release(values);
  }

  else if (os_log_type_enabled(qword_C22C8, OS_LOG_TYPE_ERROR))
  {
    sub_78A24();
  }
}

void sub_14008(id *a1, BOOL a2)
{
  if (os_log_type_enabled(qword_C22C8, OS_LOG_TYPE_DEBUG))
  {
    sub_78A58();
  }

  keys = "kBTAudioMsgPropertyEnableSoftwareVolume";
  values = xpc_BOOL_create(a2);
  v4 = xpc_dictionary_create(&keys, &values, 1uLL);
  if (v4)
  {
    v5 = v4;
    sub_11B14(a1, 3u, v4);
    xpc_release(v5);
  }

  else if (os_log_type_enabled(qword_C22C8, OS_LOG_TYPE_ERROR))
  {
    sub_78AC0();
  }

  if (values)
  {
    xpc_release(values);
  }

  else if (os_log_type_enabled(qword_C22C8, OS_LOG_TYPE_ERROR))
  {
    sub_78AF4();
  }
}

void sub_1412C(id *a1, BOOL a2)
{
  if (os_log_type_enabled(qword_C22C8, OS_LOG_TYPE_DEBUG))
  {
    sub_78B28();
  }

  keys = "kBTAudioMsgPropertyAllowSCOForTBT";
  values = xpc_BOOL_create(a2);
  v4 = xpc_dictionary_create(&keys, &values, 1uLL);
  if (v4)
  {
    v5 = v4;
    sub_11B14(a1, 3u, v4);
    xpc_release(v5);
  }

  else if (os_log_type_enabled(qword_C22C8, OS_LOG_TYPE_ERROR))
  {
    sub_78B90();
  }

  if (values)
  {
    xpc_release(values);
  }

  else if (os_log_type_enabled(qword_C22C8, OS_LOG_TYPE_ERROR))
  {
    sub_78BC4();
  }
}

void sub_14250(id *a1, unsigned int a2)
{
  if (os_log_type_enabled(qword_C22C8, OS_LOG_TYPE_DEBUG))
  {
    sub_78BF8();
  }

  keys = "kBTAudioMsgPropertyScoSampleRate";
  values = xpc_int64_create(a2);
  v4 = xpc_dictionary_create(&keys, &values, 1uLL);
  if (v4)
  {
    v5 = v4;
    sub_11B14(a1, 3u, v4);
    xpc_release(v5);
  }

  else if (os_log_type_enabled(qword_C22C8, OS_LOG_TYPE_ERROR))
  {
    sub_78C60();
  }

  if (values)
  {
    xpc_release(values);
  }

  else if (os_log_type_enabled(qword_C22C8, OS_LOG_TYPE_ERROR))
  {
    sub_78C94();
  }
}

void sub_14374(id *a1, unsigned int a2, unsigned int a3, unsigned int a4, unsigned int a5)
{
  v10 = qword_C22C8;
  if (os_log_type_enabled(qword_C22C8, OS_LOG_TYPE_DEFAULT))
  {
    v13[0] = 67109376;
    v13[1] = a3;
    v14 = 1024;
    v15 = a2;
    _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "XPC Send HFP Codec Type: %u, %u!", v13, 0xEu);
  }

  v11 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(v11, "kBTAudioMsgPropertyScoChannelFormat", a2);
  xpc_dictionary_set_int64(v11, "kBTAudioMsgPropertyScoSampleRate", a3);
  xpc_dictionary_set_int64(v11, "kBTAudioMsgPropertyTransportType", a4);
  if (_os_feature_enabled_impl())
  {
    xpc_dictionary_set_int64(v11, "kBTAudioMsgPropertyInputConfig", a5);
  }

  v12 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_value(v12, "kBTAudioMsgPropertyScoCodecTypeChanged", v11);
  if (!v12)
  {
    if (os_log_type_enabled(qword_C22C8, OS_LOG_TYPE_ERROR))
    {
      sub_78CC8();
      if (!v11)
      {
        goto LABEL_12;
      }
    }

    else if (!v11)
    {
      goto LABEL_12;
    }

LABEL_10:
    xpc_release(v11);
    return;
  }

  sub_11B14(a1, 3u, v12);
  xpc_release(v12);
  if (v11)
  {
    goto LABEL_10;
  }

LABEL_12:
  if (os_log_type_enabled(qword_C22C8, OS_LOG_TYPE_ERROR))
  {
    sub_78CFC();
  }
}

void sub_14558(id *a1, const char *a2, _BOOL4 a3)
{
  v6 = qword_C22C8;
  if (os_log_type_enabled(qword_C22C8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = a3;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "Send ownership state for has changed to %d", buf, 8u);
  }

  *buf = *off_AE008;
  values = xpc_BOOL_create(a3);
  if (a2[23] < 0)
  {
    a2 = *a2;
  }

  v12 = xpc_string_create(a2);
  keys = "kBTAudioMsgPropertyOwnershipStateChanged";
  object = xpc_dictionary_create(buf, &values, 2uLL);
  v7 = xpc_dictionary_create(&keys, &object, 1uLL);
  if (v7)
  {
    v8 = v7;
    sub_11B14(a1, 3u, v7);
    xpc_release(v8);
  }

  else if (os_log_type_enabled(qword_C22C8, OS_LOG_TYPE_ERROR))
  {
    sub_78D30();
  }

  if (object)
  {
    xpc_release(object);
  }

  else if (os_log_type_enabled(qword_C22C8, OS_LOG_TYPE_ERROR))
  {
    sub_78D64();
  }

  if (values)
  {
    xpc_release(values);
  }

  else if (os_log_type_enabled(qword_C22C8, OS_LOG_TYPE_ERROR))
  {
    sub_78D98();
  }

  if (v12)
  {
    xpc_release(v12);
  }

  else if (os_log_type_enabled(qword_C22C8, OS_LOG_TYPE_ERROR))
  {
    sub_78DCC();
  }
}

void sub_14748(id *a1, unsigned int a2)
{
  if (os_log_type_enabled(qword_C22C8, OS_LOG_TYPE_DEBUG))
  {
    sub_78E00();
  }

  keys = "kBTAudioMsgPropertyListenMode";
  values = xpc_int64_create(a2);
  v4 = xpc_dictionary_create(&keys, &values, 1uLL);
  if (v4)
  {
    v5 = v4;
    sub_11B14(a1, 3u, v4);
    xpc_release(v5);
  }

  else if (os_log_type_enabled(qword_C22C8, OS_LOG_TYPE_ERROR))
  {
    sub_78E68();
  }

  if (values)
  {
    xpc_release(values);
  }

  else if (os_log_type_enabled(qword_C22C8, OS_LOG_TYPE_ERROR))
  {
    sub_78E9C();
  }
}

void sub_1486C(id *a1, float a2)
{
  keys = "kBTAudioMsgPropertyDosimetrySensitivity";
  values = xpc_double_create(a2);
  v3 = xpc_dictionary_create(&keys, &values, 1uLL);
  if (v3)
  {
    v4 = v3;
    sub_11B14(a1, 3u, v3);
    xpc_release(v4);
  }

  else if (os_log_type_enabled(qword_C22C8, OS_LOG_TYPE_ERROR))
  {
    sub_78ED0();
  }

  if (values)
  {
    xpc_release(values);
  }

  else if (os_log_type_enabled(qword_C22C8, OS_LOG_TYPE_ERROR))
  {
    sub_78F04();
  }
}

void sub_14964(id *a1)
{
  keys = "kBTAudioMsgPropertyDosimetryVolumeCurve";
  values = _CFXPCCreateXPCObjectFromCFObject();
  v2 = xpc_dictionary_create(&keys, &values, 1uLL);
  if (v2)
  {
    v3 = v2;
    sub_11B14(a1, 3u, v2);
    xpc_release(v3);
  }

  else if (os_log_type_enabled(qword_C22C8, OS_LOG_TYPE_ERROR))
  {
    sub_78F38();
  }

  if (values)
  {
    xpc_release(values);
  }

  else if (os_log_type_enabled(qword_C22C8, OS_LOG_TYPE_ERROR))
  {
    sub_78F6C();
  }
}

void sub_14A5C(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = (a1 + 8);
  v5 = sub_4D4B0();
  v6 = qword_C22C8;
  if (os_log_type_enabled(qword_C22C8, OS_LOG_TYPE_DEBUG))
  {
    sub_78FA0(v3, v6, v7, v8, v9, v10, v11, v12);
    if (v5)
    {
LABEL_3:
      value = xpc_dictionary_get_value(a2, "kBTAudioMsgPropertyInEarDetection");
      if (value)
      {
        v14 = value;
        if (xpc_get_type(value) == &_xpc_type_BOOL)
        {
          v15 = xpc_BOOL_get_value(v14);
          sub_2B430(*(*(v5 + 416) + 9280), v15);
          if (v15)
          {
            v16 = xpc_dictionary_get_value(a2, "kBTAudioMsgPropertyInEarEnabled");
            v17 = xpc_BOOL_get_value(v16);
            sub_2B684(*(*(v5 + 416) + 9280), v17);
            v18 = xpc_dictionary_get_value(a2, "kBTAudioMsgPropertyInEarStatus");
            if (xpc_get_type(v18) == &_xpc_type_int64)
            {
              v21 = xpc_int64_get_value(v18);
              v20 = v21;
              v19 = HIBYTE(v21);
            }

            else
            {
              v19 = 0;
              v20 = 0;
            }

            v22 = xpc_dictionary_get_value(a2, "kBTAudioMsgPropertyPrimaryBudSide");
            if (xpc_get_type(v22) == &_xpc_type_int64)
            {
              v23 = xpc_int64_get_value(v22);
            }

            else
            {
              v23 = 0;
            }

            v24 = xpc_dictionary_get_value(a2, "kBTAudioMsgPropertyFixedMicRole");
            if (xpc_get_type(v24) == &_xpc_type_int64)
            {
              v25 = xpc_int64_get_value(v24);
            }

            else
            {
              v25 = 0;
            }

            sub_2C5A0(*(*(v5 + 416) + 9280), v23);
            sub_2C7A0(*(*(v5 + 416) + 9280), v25);
            sub_2C478(*(*(v5 + 416) + 9280), v20, v19);
          }
        }

        else if (os_log_type_enabled(qword_C22C8, OS_LOG_TYPE_ERROR))
        {
          sub_79010();
        }
      }

      else if (os_log_type_enabled(qword_C22C8, OS_LOG_TYPE_DEBUG))
      {
        sub_79044();
      }

      return;
    }
  }

  else if (v5)
  {
    goto LABEL_3;
  }

  if (os_log_type_enabled(qword_C22C8, OS_LOG_TYPE_ERROR))
  {
    sub_79078();
  }
}

void sub_14C88(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = (a1 + 8);
  v5 = sub_4D4B0();
  v6 = qword_C22C8;
  if (os_log_type_enabled(qword_C22C8, OS_LOG_TYPE_DEBUG))
  {
    sub_790AC(v3, v6, v7, v8, v9, v10, v11, v12);
    if (v5)
    {
LABEL_3:
      value = xpc_dictionary_get_value(a2, "kBTAudioMsgPropertyIsGenuineAirPods");
      if (value)
      {
        v14 = value;
        if (xpc_get_type(value) == &_xpc_type_BOOL)
        {
          v15 = xpc_BOOL_get_value(v14);
          sub_30430(*(*(v5 + 416) + 9280), v15);
        }

        else if (os_log_type_enabled(qword_C22C8, OS_LOG_TYPE_ERROR))
        {
          sub_7911C();
        }
      }

      else if (os_log_type_enabled(qword_C22C8, OS_LOG_TYPE_DEBUG))
      {
        sub_79150();
      }

      return;
    }
  }

  else if (v5)
  {
    goto LABEL_3;
  }

  if (os_log_type_enabled(qword_C22C8, OS_LOG_TYPE_ERROR))
  {
    sub_79078();
  }
}

void sub_14DA8(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 8u);
}

void sub_14DE0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 2u);
}

os_log_t sub_14DFC()
{
  result = os_log_create("com.apple.bluetooth", "BTAudio");
  qword_C22C8 = result;
  return result;
}

os_log_t *sub_14E2C(os_log_t *a1)
{
  *a1 = 0;
  a1[1] = os_nexus_controller_create();
  v2 = os_log_create("com.apple.bluetooth", "BTAudioSkywalk");
  v3 = *a1;
  *a1 = v2;

  v4 = *a1;
  v5 = *a1;
  if (a1[1])
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(v8[0]) = 134219008;
      *(v8 + 4) = 2048;
      WORD2(v8[1]) = 2048;
      *(&v8[1] + 6) = 1;
      HIWORD(v8[2]) = 2048;
      v8[3] = 1;
      LOWORD(v8[4]) = 2048;
      *(&v8[4] + 2) = 8;
      WORD1(v8[5]) = 2048;
      *(&v8[5] + 4) = 8;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "Creating skywalk nexus with NEXUS_ATTR_SLOT_BUF_SIZE: %llu, NEXUS_ATTR_RX_RINGS: %llu, NEXUS_ATTR_TX_RINGS: %llu, NEXUS_ATTR_TX_SLOTS: %llu, NEXUS_ATTR_RX_SLOTS: %llu", v8, 0x34u);
    }

    os_nexus_attr_create();
    os_nexus_attr_set();
    os_nexus_attr_set();
    os_nexus_attr_set();
    os_nexus_attr_set();
    os_nexus_attr_set();
    os_nexus_attr_set();
    strcpy(v8, "com.apple.bluetooth.AudioPipe");
    HIWORD(v8[3]) = 0;
    memset(&v8[4], 0, 32);
    v6 = a1[1];
    os_nexus_controller_register_provider();
    os_nexus_attr_destroy();
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    sub_79184();
  }

  return a1;
}

uint64_t sub_15004(uint64_t a1)
{
  if (*(a1 + 8))
  {
    os_nexus_controller_deregister_provider();
    v2 = *(a1 + 8);
    os_nexus_controller_destroy();
  }

  return a1;
}

id sub_15058(uint64_t a1)
{
  v1 = [[NSUUID alloc] initWithUUIDBytes:a1 + 16];

  return v1;
}

uint64_t sub_1509C(uint64_t a1, uint64_t a2, char a3)
{
  *a1 = off_AE028;
  *(a1 + 8) = -1;
  *(a1 + 16) = 0;
  *(a1 + 200) = 0;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0;
  *(a1 + 208) = a3;
  mach_timebase_info((a1 + 192));
  *(a1 + 200) = a2;
  v5 = os_log_create("com.apple.bluetooth", "BTAudioSkywalk");
  v6 = *(a1 + 16);
  *(a1 + 16) = v5;

  return a1;
}

uint64_t sub_15160(uint64_t a1)
{
  *a1 = off_AE028;
  v2 = *(a1 + 16);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v9.ident) = 0;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "Tearing down AudioSkywalkPipe", &v9, 2u);
  }

  atomic_store(1u, (a1 + 144));
  v3 = *(a1 + 12);
  if (v3 != -1 || *(a1 + 8) != -1)
  {
    v9.ident = a1 + 144;
    *&v9.filter = 0x10000000000FFF6;
    v9.data = 0;
    v9.udata = 0;
    kevent(v3, &v9, 1, 0, 0, 0);
    kevent(*(a1 + 8), &v9, 1, 0, 0, 0);
    pthread_mutex_lock((a1 + 32));
    while (!atomic_load((a1 + 145)))
    {
      pthread_cond_wait((a1 + 96), (a1 + 32));
    }

    pthread_mutex_unlock((a1 + 32));
    pthread_cond_destroy((a1 + 96));
    pthread_mutex_destroy((a1 + 32));
    v5 = *(a1 + 8);
    if (v5 != -1)
    {
      close(v5);
    }
  }

  v6 = *(a1 + 12);
  if (v6 != -1)
  {
    close(v6);
  }

  if (*(a1 + 176))
  {
    os_channel_destroy();
  }

  v7 = *(a1 + 16);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v9.ident) = 0;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "AudioSkywalkPipe torn down", &v9, 2u);
  }

  return a1;
}

void sub_1531C(uint64_t a1)
{
  sub_15160(a1);

  operator delete();
}

void sub_15354(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = a3;
  v9 = objc_retainBlock(a2);
  v10 = *(a1 + 152);
  *(a1 + 152) = v9;

  v11 = objc_retainBlock(v8);
  v12 = *(a1 + 160);
  *(a1 + 160) = v11;

  v13 = objc_retainBlock(v7);
  v14 = *(a1 + 168);
  *(a1 + 168) = v13;

  atomic_store(0, (a1 + 144));
  atomic_store(0, (a1 + 145));
  if (*(a1 + 152))
  {
    *(a1 + 12) = kqueue();
  }

  if (*(a1 + 160))
  {
    *(a1 + 8) = kqueue();
  }

  v15 = *(a1 + 176);
  fd = os_channel_get_fd();
  v17.ident = __chkstk_darwin(fd);
  *&v17.filter = 393215;
  memset(&v17.fflags, 0, 20);
  v18 = a1 + 144;
  v19 = 393206;
  v21 = 0;
  v20 = 0;
  v22 = 0;
  if (kevent(*(a1 + 12), &v17, 2, 0, 0, 0) == -1)
  {
    if (os_log_type_enabled(*(a1 + 16), OS_LOG_TYPE_ERROR))
    {
      sub_791B8();
    }
  }

  else if (*(a1 + 152))
  {
    pthread_mutex_init((a1 + 32), 0);
    pthread_cond_init((a1 + 96), 0);
    memset(&v23, 0, sizeof(v23));
    pthread_attr_init(&v23);
    pthread_attr_setdetachstate(&v23, 2);
    pthread_create((a1 + 24), &v23, sub_15548, a1);
  }
}

uint64_t sub_15548(uint64_t a1)
{
  pthread_setname_np("AudioSkywalkPipeReadLoop");
  v2 = os_log_create("com.apple.bluetooth", "BTAudioSkywalk");
  v3 = v2;
  v4 = *(a1 + 200);
  if (!v4)
  {
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      sub_791EC((a1 + 200), v3);
    }

    v4 = 22000;
    *(a1 + 200) = 22000;
  }

  v5 = 1000 * v4 * *(a1 + 196) / *(a1 + 192);
  policy_info = v5;
  v18 = v5 >> 2;
  v19 = v18;
  v20 = 0;
  v6 = mach_thread_self();
  thread_policy_set(v6, 2u, &policy_info, 4u);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v16.ident) = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "Starting AudioSkywalk read loop", &v16, 2u);
  }

  mach_absolute_time();
  *(a1 + 216) = 0;
  *(a1 + 224) = 0;
  v7 = (a1 + 216);
  if (!atomic_load((a1 + 144)))
  {
    v9 = 20000000 * *(a1 + 196) / *(a1 + 192);
    do
    {
      memset(&v16, 0, sizeof(v16));
      kevent(*(a1 + 12), 0, 0, &v16, 1, 0);
      if (v16.filter != -1)
      {
        break;
      }

      v10 = mach_absolute_time();
      v11 = v10;
      if (*v7)
      {
        v12 = *(a1 + 224);
        if (v12)
        {
          if (v10 > *v7 + v9)
          {
            v13 = (v10 - v12) * *(a1 + 192) / *(a1 + 196) / 0xF4240;
            (*(*(a1 + 168) + 16))();
          }
        }
      }

      sub_1581C(a1);
      *(a1 + 216) = v11 + v5;
      *(a1 + 224) = v11;
    }

    while (!atomic_load((a1 + 144)));
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v16.ident) = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "Stopping AudioSkywalk read loop", &v16, 2u);
  }

  pthread_mutex_lock((a1 + 32));
  atomic_store(1u, (a1 + 145));
  pthread_cond_signal((a1 + 96));
  pthread_mutex_unlock((a1 + 32));
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v16.ident) = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "AudioSkywalk read loop stopped", &v16, 2u);
  }

  return 0;
}

void sub_1581C(uint64_t a1)
{
  if (*(a1 + 176))
  {
    v2 = *(a1 + 176);
    os_channel_ring_id();
    os_channel_rx_ring();
    v6 = 0u;
    v7 = 0u;
    v4 = 0u;
    v5 = 0u;
    if (os_channel_get_next_slot())
    {
      if (*(a1 + 208) == 1 && os_log_type_enabled(*(a1 + 16), OS_LOG_TYPE_DEBUG))
      {
        sub_79268(&v4);
      }

      (*(*(a1 + 152) + 16))(*(a1 + 152), v5);
      os_channel_get_next_slot();
      os_channel_advance_slot();
    }

    v3 = *(a1 + 176);
    os_channel_sync();
  }

  else if (os_log_type_enabled(*(a1 + 16), OS_LOG_TYPE_ERROR))
  {
    sub_792E4();
  }
}

void sub_15924(uint64_t a1, const void *a2, size_t a3)
{
  if (*(a1 + 176))
  {
    v6 = *(a1 + 176);
    os_channel_ring_id();
    os_channel_tx_ring();
    if (os_channel_get_next_slot())
    {
      v7 = *(a1 + 184);
      v8 = -v7;
      if (-v7 >= a3)
      {
        if (*(a1 + 208) == 1)
        {
          v10 = *(a1 + 16);
          if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
          {
            v11 = *(a1 + 184);
            *buf = 134218752;
            v13 = a3;
            v14 = 1024;
            v15 = 0;
            v16 = 1024;
            v17 = 0;
            v18 = 2048;
            v19 = v11;
            _os_log_debug_impl(&dword_0, v10, OS_LOG_TYPE_DEBUG, "Writing total of %lu bytes into pipe, slot %d of length %hu starting at offset %lu", buf, 0x22u);
          }

          v7 = *(a1 + 184);
        }

        memcpy(v7, a2, a3);
        *(a1 + 184) += a3;
        os_channel_set_slot_properties();
      }

      else
      {
        v9 = *(a1 + 16);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          sub_79318(a3, v8, v9);
        }
      }
    }

    else if (os_log_type_enabled(*(a1 + 16), OS_LOG_TYPE_ERROR))
    {
      sub_793A0();
    }
  }

  else if (os_log_type_enabled(*(a1 + 16), OS_LOG_TYPE_ERROR))
  {
    sub_792E4();
  }
}

void sub_15B0C(uint64_t a1)
{
  if (*(a1 + 176))
  {
    v2 = *(a1 + 176);
    os_channel_ring_id();
    os_channel_tx_ring();
    memset(v4, 0, sizeof(v4));
    os_channel_get_next_slot();
    if (*(a1 + 208) == 1 && os_log_type_enabled(*(a1 + 16), OS_LOG_TYPE_DEBUG))
    {
      sub_793D4(v4, a1);
    }

    os_channel_advance_slot();
    v3 = *(a1 + 176);
    os_channel_sync();
    *(a1 + 184) = 0;
  }

  else if (os_log_type_enabled(*(a1 + 16), OS_LOG_TYPE_ERROR))
  {
    sub_792E4();
  }
}

uint64_t sub_15C10(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v6 = sub_1509C(a1, a3, a4);
  *v6 = off_AE048;
  v6[30] = 0;
  v7 = v6 + 30;
  v6[31] = 0;
  v6[32] = 0;
  v6[29] = *(a2 + 8);
  v8 = [[NSUUID alloc] initWithUUIDBytes:a2 + 16];
  v9 = *(a1 + 248);
  *(a1 + 248) = v8;

  v24[0] = 0;
  v24[1] = 0;
  [*(a1 + 248) getUUIDBytes:v24];
  v23[0] = 0;
  v23[1] = 0;
  v10 = *(a1 + 232);
  if (os_nexus_controller_alloc_provider_instance())
  {
    if (os_log_type_enabled(*(a1 + 16), OS_LOG_TYPE_ERROR))
    {
      sub_79464();
    }
  }

  else
  {
    v11 = objc_alloc_init(NSUUID);
    v12 = *(a1 + 256);
    *(a1 + 256) = v11;

    v22[0] = 0;
    v22[1] = 0;
    [*(a1 + 256) getUUIDBytes:v22];
    v13 = *(a1 + 232);
    os_nexus_controller_bind_provider_instance();
    v14 = *(a1 + 232);
    os_nexus_controller_bind_provider_instance();
    v15 = [[NSUUID alloc] initWithUUIDBytes:v23];
    v16 = *(a1 + 240);
    *(a1 + 240) = v15;

    v17 = *(a1 + 16);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = *v7;
      v20 = 138412290;
      v21 = v18;
      _os_log_impl(&dword_0, v17, OS_LOG_TYPE_DEFAULT, "Registering Audio skywalk server channel to %@", &v20, 0xCu);
    }

    os_channel_attr_create();
    os_channel_attr_set();
    os_channel_attr_set_key();
    *(a1 + 176) = os_channel_create_extended();
    os_channel_attr_destroy();
    if (!*(a1 + 176) && os_log_type_enabled(*(a1 + 16), OS_LOG_TYPE_ERROR))
    {
      sub_79498();
    }
  }

  return a1;
}

uint64_t sub_15EA4(uint64_t a1)
{
  *a1 = off_AE048;
  v4[0] = 0;
  v4[1] = 0;
  [*(a1 + 240) getUUIDBytes:v4];
  v2 = *(a1 + 232);
  os_nexus_controller_free_provider_instance();

  sub_15160(a1);
  return a1;
}

void sub_15F54(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_1BE4(a1);
  }

  _Unwind_Resume(a1);
}

void sub_15F64(uint64_t a1)
{
  sub_15EA4(a1);

  operator delete();
}

void *sub_15FAC(void *a1, void *a2, void *a3, uint64_t a4, char a5)
{
  v9 = a2;
  v10 = a3;
  sub_1509C(a1, a4, a5);
  *a1 = &off_AE068;
  v14[0] = 0;
  v14[1] = 0;
  [v9 getUUIDBytes:v14];
  v11 = a1[2];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(v13) = 138412290;
    *(&v13 + 4) = v9;
    _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "Registering Audio skywalk client channel to %@", &v13, 0xCu);
  }

  os_channel_attr_create();
  v13 = 0uLL;
  [v10 getUUIDBytes:&v13];
  os_channel_attr_set_key();
  os_channel_attr_set();
  a1[22] = os_channel_create_extended();
  os_channel_attr_destroy();

  return a1;
}

void sub_16118(_Unwind_Exception *a1)
{
  sub_15160(v2);

  _Unwind_Resume(a1);
}

void sub_16158(uint64_t a1)
{
  sub_15160(a1);

  operator delete();
}

float sub_16200(float a1)
{
  if (a1 >= 0.0)
  {
    return 1.0;
  }

  else
  {
    return __exp10f(a1 / 20.0);
  }
}

uint64_t sub_1621C(float a1)
{
  if (a1 >= 0.0)
  {
    v1 = 32768.0;
  }

  else
  {
    v1 = __exp10f(a1 / 20.0) * 32768.0;
  }

  v2 = llroundf(v1);
  if (v2 >= 0x8000)
  {
    return 0x8000;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_16268(uint64_t a1, int a2, float a3, float a4, float a5)
{
  *a1 = a3;
  if (a3 >= 0.0)
  {
    v10 = 32768.0;
  }

  else
  {
    v10 = __exp10f(a3 / 20.0) * 32768.0;
  }

  v11 = llroundf(v10);
  if (v11 >= 0x8000)
  {
    v11 = 0x8000;
  }

  *(a1 + 4) = v11;
  *(a1 + 8) = v11;
  *(a1 + 12) = 0;
  *(a1 + 16) = a5;
  *(a1 + 20) = a4;
  sub_163C0(a1);
  v12 = qword_C22D0;
  if (os_log_type_enabled(qword_C22D0, OS_LOG_TYPE_DEFAULT))
  {
    v13 = "NO";
    v15 = 134218498;
    v16 = a3;
    if (a2)
    {
      v13 = "YES";
    }

    v17 = 2048;
    v18 = a4;
    v19 = 2080;
    v20 = v13;
    _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "BT Audio Volume initialized with Volume %f Sample Rate %f Valid %s", &v15, 0x20u);
  }

  atomic_store(a2, (a1 + 24));
  return a1;
}