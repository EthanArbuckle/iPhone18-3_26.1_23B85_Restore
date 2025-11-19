uint64_t start()
{
  AXSetThreadPriority();
  SCRCArgumentParserRunWithClassName();
  return 0;
}

void sub_100003524(uint64_t a1)
{
  v2 = malloc_type_malloc(0x800uLL, 0x1000040504FFAC1uLL);
  *&v2->msgh_bits = 0x80000000000;
  v3 = *(a1 + 32);
  v2->msgh_remote_port = 0;
  v2->msgh_local_port = v3;
  v2->msgh_id = 0;
  p_msgh_id = &v2->msgh_id;
  v5 = mach_msg(v2, 258, 0, 0x800u, *(a1 + 32), 0x3E8u, 0);
  if (v5 || *p_msgh_id != 1776)
  {
    v6 = VOTLogLifeCycle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1001279B0(p_msgh_id, v5, v6);
    }
  }

  free(v2);
}

void sub_100004350(id a1)
{
  v1 = objc_alloc_init(NSLock);
  v2 = qword_1001FE978;
  qword_1001FE978 = v1;

  qword_1001FE980 = objc_opt_new();

  _objc_release_x1();
}

void sub_100004674(id a1)
{
  qword_1001FE990 = objc_opt_new();

  _objc_release_x1();
}

uint64_t sub_100004ACC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = (*(*(a1 + 32) + 16))();
  if (v4)
  {
    [v3 setOutputRequest:0];
  }

  return v4;
}

void sub_1000059A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000059B8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000059D0(uint64_t a1, void *a2)
{
  v7 = a2;
  if (![v7 component])
  {
    v6 = [v7 string];
    v3 = __AXStringForVariables();
    v4 = *(*(a1 + 32) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;
  }
}

void sub_100005B5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100005B74(uint64_t a1, void *a2)
{
  v7 = a2;
  if (![v7 component])
  {
    v6 = [v7 originalString];
    v3 = __AXStringForVariables();
    v4 = *(*(a1 + 32) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;
  }
}

void sub_100006A70(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v10 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = *(a1 + 32);
    v8 = [*(a1 + 40) string];
    v9 = [v8 substringWithRange:{a3, a4}];
    [v7 setObject:v10 forKey:v9];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [*(a1 + 32) addEntriesFromDictionary:v10];
    }
  }
}

void sub_100007230(uint64_t a1, uint64_t a2)
{
  if (a2 != 54)
  {
    v4 = [*(a1 + 32) objectForIndex:a2];
    v5 = [*(a1 + 40) objectForIndex:a2];
    v6 = [v4 isEqual:v5];

    if ((v6 & 1) == 0)
    {
      v7 = *(a1 + 48);
      v8 = [NSNumber numberWithUnsignedInteger:a2];
      [v7 addObject:v8];

      *(*(*(a1 + 56) + 8) + 24) = 0;
    }
  }
}

void sub_100009588(void *a1)
{
  v1 = a1;
  if ([VOTSharedWorkspace brailleAlertsEnabled])
  {
    [v1 setGeneratesBraille:1];
    [v1 setBrailleType:2];
  }

  else
  {
    [v1 setGeneratesBraille:0];
  }
}

id sub_1000095FC(void *a1, char a2, void *a3)
{
  v5 = a1;
  v6 = a3;
  if (v5)
  {
    v7 = [objc_allocWithZone(VOTOutputRequest) init];
    v8 = [v7 addString:v5 withLanguage:v6];
    if (a2)
    {
      [v7 setCannotBeInterrupted:1];
      if ((a2 & 2) == 0)
      {
LABEL_4:
        if ((a2 & 4) != 0)
        {
          goto LABEL_5;
        }

        goto LABEL_14;
      }
    }

    else if ((a2 & 2) == 0)
    {
      goto LABEL_4;
    }

    [v7 setDoesNotInterrupt:1];
    if ((a2 & 4) != 0)
    {
LABEL_5:
      if ((a2 & 8) == 0)
      {
LABEL_7:
        v9 = [v7 outputActions];
        v10 = [v9 lastObject];
        [v10 setObject:&__kCFBooleanTrue forVariant:76];

        [v7 send];
        goto LABEL_9;
      }

LABEL_6:
      [v7 setLimitToComponentType:3];
      goto LABEL_7;
    }

LABEL_14:
    sub_100009588(v7);
    if ((a2 & 8) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v7 = 0;
LABEL_9:

  return v7;
}

id sub_10000A1C4(uint64_t a1, void *a2)
{
  v3 = [a2 textualContexts];
  v4 = [v3 containsObject:*(a1 + 32)];

  return v4;
}

id sub_10000A208(uint64_t a1, void *a2)
{
  v3 = [a2 appIdentifiers];
  v4 = [v3 containsObject:*(a1 + 32)];

  return v4;
}

void sub_10000A73C(id a1)
{
  v1 = objc_alloc_init(NSLock);
  v2 = qword_1001FE9C0;
  qword_1001FE9C0 = v1;

  qword_1001FE9B8 = objc_alloc_init(NSMutableArray);

  _objc_release_x1();
}

void sub_10000AED4(id a1)
{
  qword_1001FE9B0 = [objc_allocWithZone(VOTOutputManager) init];

  _objc_release_x1();
}

id sub_10000B1EC(uint64_t a1)
{
  [*(*(a1 + 32) + 8) removeAllObjects];
  [*(*(a1 + 32) + 40) removeAllObjects];
  v2 = *(*(a1 + 32) + 32);

  return [v2 setCannotBeInterrupted:0];
}

void sub_10000B380(uint64_t a1)
{
  if ([*(*(a1 + 32) + 32) isEqual:*(a1 + 40)])
  {
    v2 = *(a1 + 32);
    v3 = *(v2 + 32);
    *(v2 + 32) = 0;
  }

  *(*(a1 + 32) + 48) = 0;
  [*(*(a1 + 32) + 40) removeObjectIdenticalTo:*(a1 + 40)];
  if (([*(a1 + 40) finishedSuccessfully] & 1) == 0)
  {
    v4 = [*(*(a1 + 32) + 8) firstObject];
    v5 = [v4 isComputerVisionAsynchrousRequest];

    if (v5)
    {
      v6 = *(*(a1 + 32) + 8);

      [v6 removeObjectAtIndex:0];
    }
  }
}

void sub_10000B59C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10000B5B4(uint64_t a1)
{
  if (([*(a1 + 32) doesNotInterrupt] && objc_msgSend(*(*(a1 + 40) + 40), "count") || objc_msgSend(*(*(a1 + 40) + 40), "count") && objc_msgSend(*(*(a1 + 40) + 32), "cannotBeInterrupted") && (objc_msgSend(*(a1 + 32), "interruptsEverything") & 1) == 0) && (v2 = *(a1 + 40), *(v2 + 48) <= 4u))
  {
    [*(v2 + 8) addObject:*(a1 + 32)];
    if ([*(*(a1 + 40) + 32) cannotBeInterrupted])
    {
      ++*(*(a1 + 40) + 48);
    }
  }

  else
  {
    v3 = +[NSMutableArray array];
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v4 = *(*(a1 + 40) + 8);
    v5 = [v4 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v21;
      do
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v21 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v20 + 1) + 8 * i);
          if (([v9 cannotBeInterrupted] & 1) == 0)
          {
            v10 = [*(a1 + 32) requestQueueMixinBehavior];

            if (!v10)
            {
              continue;
            }

            v11 = [*(a1 + 32) requestQueueMixinBehavior];
            v12 = (v11)[2](v11, v9);

            if (v12 != 1)
            {
              continue;
            }
          }

          [v3 addObject:v9];
        }

        v6 = [v4 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v6);
    }

    [*(*(a1 + 40) + 8) removeAllObjects];
    [v3 addObject:*(a1 + 32)];
    [*(*(a1 + 40) + 8) addObjectsFromArray:v3];
    v13 = [*(a1 + 32) requestQueueMixinBehavior];
    v19 = 1;
    if (v13)
    {
      v14 = v13;
      v15 = [*(a1 + 32) requestQueueMixinBehavior];
      v16 = [*(*(a1 + 40) + 16) firstObject];
      v17 = [v16 currentRequest];
      v18 = (v15)[2](v15, v17);

      if (v18 == 1)
      {
        v19 = 0;
      }
    }

    *(*(*(a1 + 48) + 8) + 24) = v19;
  }
}

uint64_t sub_10000BA1C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id sub_10000BA34(void *a1)
{
  result = [*(a1[4] + 8) count];
  if (result)
  {
    v3 = [*(a1[4] + 8) firstObject];
    v4 = *(a1[6] + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;

    [*(a1[4] + 8) removeObjectAtIndex:0];
    v6 = a1[5];

    return [v6 setIsActive:1];
  }

  return result;
}

id sub_10000BABC(uint64_t a1)
{
  if ([*(*(*(a1 + 40) + 8) + 40) cannotBeInterrupted])
  {
    objc_storeStrong((*(a1 + 32) + 32), *(*(*(a1 + 40) + 8) + 40));
  }

  v2 = *(*(a1 + 32) + 40);
  v3 = *(*(*(a1 + 40) + 8) + 40);

  return [v2 addObject:v3];
}

id sub_10000C59C(uint64_t a1)
{
  [*(a1 + 32) _activeRouteChanged:0];
  v2 = [*(a1 + 32) speechComponent];
  [v2 callStatusChanged];

  v3 = *(a1 + 32);

  return [v3 _updateSoundCurtain];
}

void sub_10000C994(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10000C9C8(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  if ([*(a1 + 32) isRoutePicked:?])
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a4 = 1;
  }
}

void sub_10000DBA4(uint64_t a1)
{
  [*(*(a1 + 32) + 128) addObject:*(a1 + 40)];
  [*(*(a1 + 32) + 112) cancel];
  v2 = VOTLogAudio();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    Current = CFAbsoluteTimeGetCurrent();
    v4 = *(a1 + 40);
    v5 = *(*(a1 + 32) + 128);
    v8 = 134218498;
    v9 = Current;
    v10 = 2114;
    v11 = v4;
    v12 = 2114;
    v13 = v5;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "TRY ACTIVATE: %f [new user:%{public}@] %{public}@", &v8, 0x20u);
  }

  if (([*(a1 + 32) audioSessionActive] & 1) == 0)
  {
    [*(a1 + 32) toggleAudioSessionActive:1];
    v6 = VOTLogAudio();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = CFAbsoluteTimeGetCurrent();
      v8 = 134217984;
      v9 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "ACTIVATE audio session: %f", &v8, 0xCu);
    }
  }
}

void sub_10000DE88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10000DEB4(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = [*(*(a1 + 32) + 128) copy];

  return _objc_release_x1();
}

void sub_10000DFB0(uint64_t a1)
{
  v2 = (a1 + 32);
  [*(*(a1 + 32) + 128) removeObject:*(a1 + 40)];
  if ([VOTSharedWorkspace inUnitTestMode])
  {
    v3 = 0.1;
  }

  else
  {
    v3 = 1.0;
  }

  v4 = 0.0;
  if ([VOTSharedWorkspace screenOn])
  {
    v5 = VOTLogAudio();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      sub_100127DA0(v2);
    }

    if ([*v2 externalAudioRouteSelected])
    {
      v6 = +[AVAudioSession sharedInstance];
      v7 = [v6 isOtherAudioPlaying];

      if ((v7 & 1) == 0)
      {
        v8 = VOTLogAudio();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
        {
          sub_100127E28(v8);
        }

        if ([*v2 isRouteAirplayMirroring])
        {
          v9 = +[AXSubsystemVOTAudio sharedInstance];
          v10 = [v9 ignoreLogging];

          if ((v10 & 1) == 0)
          {
            v11 = +[AXSubsystemVOTAudio identifier];
            v12 = AXLoggerForFacility();

            v13 = AXOSLogLevelFromAXLogLevel();
            if (os_log_type_enabled(v12, v13))
            {
              v14 = AXColorizeFormatLog();
              v15 = _AXStringForArgs();
              if (os_log_type_enabled(v12, v13))
              {
                *buf = 138543362;
                v23 = *&v15;
                _os_log_impl(&_mh_execute_header, v12, v13, "%{public}@", buf, 0xCu);
              }
            }
          }

          v3 = 120.0;
        }

        else
        {
          v3 = v3 * 6.0;
          v4 = v3;
          if (v3 <= 0.0)
          {
            goto LABEL_23;
          }
        }
      }
    }

    if (*(a1 + 48) >= 0.0)
    {
      v4 = *(a1 + 48);
    }

    else
    {
      v4 = v3;
    }
  }

LABEL_23:
  v16 = VOTLogAudio();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    v23 = v4;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "Audio session de-activate delay: %f", buf, 0xCu);
  }

  v18 = *(a1 + 32);
  v17 = *(a1 + 40);
  v19 = *(v18 + 112);
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_10000E2B8;
  v20[3] = &unk_1001C7778;
  v20[4] = v18;
  v21 = v17;
  [v19 afterDelay:v20 processBlock:v4];
}

uint64_t sub_10000E2B8(uint64_t a1)
{
  v2 = VOTLogAudio();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) audioSessionActive];
    v4 = *(a1 + 40);
    v5 = *(*(a1 + 32) + 128);
    *buf = 67109634;
    *v13 = v3;
    *&v13[4] = 2114;
    *&v13[6] = v4;
    v14 = 2114;
    v15 = v5;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Attempt session deactivate. is active: %d - remove user: %{public}@, all users: %{public}@ ", buf, 0x1Cu);
  }

  if (AXDeviceSupportsSonification())
  {
    v6 = +[VOTAudiographManager sharedManager];
    if ([v6 isPlaying])
    {
      v7 = 1;
    }

    else
    {
      v8 = +[VOTAudiographManager sharedManager];
      v7 = [v8 isScrubbing];
    }
  }

  else
  {
    v7 = 0;
  }

  result = [*(a1 + 32) audioSessionActive];
  if (result)
  {
    result = [*(*(a1 + 32) + 128) count];
    if (!result)
    {
      result = [*(a1 + 32) isSpeaking];
      if (result)
      {
        result = [*(a1 + 32) isPaused];
        if (v7 & 1 | ((result & 1) == 0))
        {
          return result;
        }
      }

      else if (v7)
      {
        return result;
      }

      [*(a1 + 32) toggleAudioSessionActive:0];
      v10 = VOTLogAudio();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        Current = CFAbsoluteTimeGetCurrent();
        *buf = 134217984;
        *v13 = Current;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Session deactivated. at t=%f", buf, 0xCu);
      }

      return AX_PERFORM_WITH_LOCK();
    }
  }

  return result;
}

void sub_10000E4D4(uint64_t a1)
{
  [*(*(a1 + 32) + 40) removeAllObjects];
  v2 = *(a1 + 32);
  v3 = *(v2 + 32);
  *(v2 + 32) = 0;
}

void sub_10000EE70(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(*(a1 + 32) + 176) allValues];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10000EF20;
  v6[3] = &unk_1001C7868;
  v7 = v3;
  v5 = v3;
  [v4 enumerateObjectsUsingBlock:v6];
}

void sub_10000EF38(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(*(a1 + 32) + 168) allValues];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10000EFE8;
  v6[3] = &unk_1001C7868;
  v7 = v3;
  v5 = v3;
  [v4 enumerateObjectsUsingBlock:v6];
}

void sub_10000F4F4(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void sub_10000F510(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

uint64_t sub_10000F858(uint64_t a1)
{
  qword_1001FE9E8 = objc_alloc_init(*(a1 + 32));

  return _objc_release_x1();
}

void sub_10000F93C()
{
  v0 = +[VOTLockStateManager sharedInstance];
  [v0 _notifyObserversLockStateDidChange];
}

uint64_t sub_100010AF0(uint64_t a1)
{
  CFPreferencesSetAppValue(*(a1 + 32), *(a1 + 40), kAXSAccessibilityPreferenceDomain);
  v1 = kAXSAccessibilityPreferenceDomain;

  return CFPreferencesAppSynchronize(v1);
}

uint64_t sub_100010C14(uint64_t a1)
{
  CFPreferencesSetAppValue(*(a1 + 32), *(a1 + 40), kAXSAccessibilityPreferenceDomain);
  v1 = kAXSAccessibilityPreferenceDomain;

  return CFPreferencesAppSynchronize(v1);
}

void sub_1000113EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100011410(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateAudioSessionProperties];
}

uint64_t sub_1000114C4(uint64_t a1)
{
  result = hearingAidStreamSelected();
  *(*(a1 + 32) + 104) = result;
  return result;
}

uint64_t sub_100012338(uint64_t a1)
{
  v1 = (a1 + 32);
  [*(a1 + 32) _finishedPlaying];
  v2 = VOTLogAudio();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    sub_1001282A4(v1, v2);
  }

  *(*v1 + 136) = 0;
  v3 = VOTLogAudio();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_100128320(v3);
  }

  inPropertyData = 0;
  return AudioServicesSetProperty(0x61637421u, 4u, (*v1 + 32), 4u, &inPropertyData);
}

void sub_1000125D4(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0x16u);
}

void sub_100013570(id a1)
{
  v1 = objc_alloc_init(NSLock);
  v2 = qword_1001FEA20;
  qword_1001FEA20 = v1;

  qword_1001FEA28 = objc_alloc_init(NSLock);

  _objc_release_x1();
}

void sub_1000136A8(id a1)
{
  v3 = objc_alloc_init(AXUIMockElement);
  v1 = [VOTElement elementWithUIElement:v3];
  v2 = qword_1001FEA08;
  qword_1001FEA08 = v1;
}

void sub_10001370C(uint64_t a1)
{
  v1 = objc_allocWithZone(*(a1 + 32));
  v4 = +[AXUIElement uiSystemWideApplication];
  v2 = [v1 initWithUIElement:v4];
  v3 = qword_1001FEA08;
  qword_1001FEA08 = v2;
}

void sub_1000138D8(id a1)
{
  +[VOTElement resetSystemAppElement];
  v1 = VOTSharedWorkspace;

  [v1 handleSystemWideServerDied];
}

void sub_100015314(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10001532C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100015344(uint64_t a1, void *a2)
{
  v3 = [a2 localOpaqueParent];
  if (v3)
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), v3);
  }

  return _objc_release_x1();
}

void sub_100015780(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100015798(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = [a2 objectForKeyedSubscript:UIAccessibilityTokenReplaceWithWiFiSSID];
  v8 = [v7 BOOLValue];

  if (v8)
  {
    [*(a1 + 32) replaceCharactersInRange:*(*(*(a1 + 48) + 8) + 24) + a3 withString:{a4, *(a1 + 40)}];
    *(*(*(a1 + 48) + 8) + 24) += [*(a1 + 40) length] - a4;
  }
}

void sub_100016450(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100016468(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = [a2 objectForKeyedSubscript:UIAccessibilityTokenReplaceWithActiveActivity];
  v8 = [v7 BOOLValue];

  if (v8)
  {
    [*(a1 + 32) replaceCharactersInRange:*(*(*(a1 + 48) + 8) + 24) + a3 withString:{a4, *(a1 + 40)}];
    *(*(*(a1 + 48) + 8) + 24) += [*(a1 + 40) length] - a4;
  }
}

void sub_100016AC0(id a1)
{
  v3 = objc_alloc_init(AXUIMockElement);
  v1 = [VOTElement elementWithUIElement:v3];
  v2 = qword_1001FEA68;
  qword_1001FEA68 = v1;
}

uint64_t sub_10001918C(uint64_t a1)
{
  v2 = [*(a1 + 32) uiElement];
  v27 = @"direction";
  v3 = [NSNumber numberWithLong:*(a1 + 48)];
  v28 = v3;
  v4 = [NSDictionary dictionaryWithObjects:&v28 forKeys:&v27 count:1];
  [v2 performAXAction:2003 withValue:v4];

  v5 = [*(a1 + 32) uiElement];
  LODWORD(v3) = [v5 BOOLWithAXAttribute:2093];

  if (v3)
  {
    v6 = [*(a1 + 32) remoteParent];
    if (v6)
    {
      [*(a1 + 32) updateFrame];
      [*(a1 + 32) frame];
      v8 = v7;
      v10 = v9;
      v12 = v11;
      v14 = v13;
      v15 = +[AXBackBoardServer server];
      [v15 convertFrame:objc_msgSend(*(a1 + 32) fromContextId:{"windowContextId"), v8, v10, v12, v14}];
      v17 = v16;
      v19 = v18;
      v21 = v20;
      v23 = v22;

      v24 = [v6 uiElement];
      v25 = [NSValue valueWithRect:v17, v19, v21, v23];
      [v24 performAXAction:2039 withValue:v25];
    }
  }

  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_100019CD0(uint64_t a1, uint64_t a2)
{
  v2 = *(*(a1 + 32) + 8);
  v3 = [NSKeyedArchiver archivedDataWithRootObject:a2 requiringSecureCoding:1 error:0];
  [v2 performAXAction:2065 withValue:v3];
}

void sub_10001A0E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10001A0FC(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = [a2 uiElement];
  *(*(*(a1 + 32) + 8) + 24) = [v5 performAXAction:2013];

  if (*(*(*(a1 + 32) + 8) + 24) == 1)
  {
    *a3 = 1;
  }
}

void sub_10001B348(id a1)
{
  v1 = +[AXSpringBoardServer server];
  [v1 dismissShelfSwitcher];
}

void sub_10001B390(id a1)
{
  v1 = +[AXSpringBoardServer server];
  [v1 requestDismissJindo];
}

void sub_10001BAEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10001BB04(uint64_t a1, void *a2, _BYTE *a3)
{
  v8 = a2;
  v5 = [v8 uiElement];
  *(*(*(a1 + 32) + 8) + 24) = [v5 performAXAction:*(a1 + 40)];

  if ((*(*(*(a1 + 32) + 8) + 24) & 1) != 0 || ([v8 uiElement], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "BOOLWithAXAttribute:", 2093), v6, (v7 & 1) == 0))
  {
    *a3 = 1;
  }
}

uint64_t sub_10001BD14(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 8);
  v3 = [NSValue valueWithRect:*(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72)];
  [v2 performAXAction:2039 withValue:v3];

  result = *(a1 + 40);
  if (result)
  {
    v5 = *(result + 16);

    return v5();
  }

  return result;
}

BOOL sub_10001CAC4(uint64_t a1, float a2, float a3, float a4, float a5)
{
  if (*(a1 + 32) != 1)
  {
    return vabds_f32(a2, a3) < (a4 / 3.0);
  }

  v6.location = a2;
  v6.length = a4;
  v7.location = a3;
  v7.length = a5;
  return NSIntersectionRange(v6, v7).length != 0;
}

void sub_10001D3D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10001D404(uint64_t a1, void *a2)
{
  v2 = *(*(a1 + 32) + 8);
  if (*(v2 + 24))
  {
    result = 1;
  }

  else
  {
    result = [a2 includesFeaturesForImageExploration];
    v2 = *(*(a1 + 32) + 8);
  }

  *(v2 + 24) = result;
  return result;
}

id sub_10001D450(id a1, id a2, unint64_t a3)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [[VOTCustomAction alloc] initWithWireDictionary:v3];
  }

  else
  {
    v4 = v3;
  }

  v5 = v4;

  return v5;
}

int64_t sub_10001D4C8(id a1, VOTCustomAction *a2, VOTCustomAction *a3)
{
  v4 = a3;
  v5 = [(VOTCustomAction *)a2 sortPriority];
  v6 = [(VOTCustomAction *)v4 sortPriority];

  return v5 > v6;
}

BOOL sub_10001D754(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 categoryName];
  if ([v4 isEqualToString:*(a1 + 32)])
  {
    v5 = 1;
  }

  else if (*(a1 + 32))
  {
    v5 = 0;
  }

  else
  {
    v6 = [v3 categoryName];
    v5 = v6 == 0;
  }

  return v5;
}

int64_t sub_10001D7D8(id a1, VOTCustomActionCategory *a2, VOTCustomActionCategory *a3)
{
  v4 = a3;
  v5 = [(VOTCustomActionCategory *)a2 categoryName];
  v6 = [(VOTCustomActionCategory *)v4 categoryName];

  v7 = [v5 localizedCompare:v6];
  return v7;
}

void sub_10001ECFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10001ED14(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = [a2 application];
  v6 = [v5 activeKeyboard];
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  if (*(*(*(a1 + 32) + 8) + 40))
  {
    *a3 = 1;
  }
}

void sub_10001EFC8(uint64_t a1, void *a2)
{
  v3 = [a2 uiElement];
  [v3 setAXAttribute:2018 withObject:*(a1 + 32) synchronous:0];
}

BOOL sub_1000230D8(id a1, id a2, unint64_t a3)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
    v5 = [v4 objectForKeyedSubscript:AXInteractionLocationDescriptorViewPointerNumberKey];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass & 1) != 0 && ([v4 objectForKeyedSubscript:AXInteractionLocationDescriptorAttributedNameKey], v7 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), v8 = objc_opt_isKindOfClass(), v7, (v8) && (v9 = AXInteractionLocationDescriptorPointValueKey, objc_msgSend(v4, "objectForKeyedSubscript:", AXInteractionLocationDescriptorPointValueKey), v10 = objc_claimAutoreleasedReturnValue(), v11 = CFGetTypeID(v10), TypeID = AXValueGetTypeID(), v10, v11 == TypeID))
    {
      v13 = [v4 objectForKeyedSubscript:v9];
      v14 = AXValueGetType(v13) == kAXValueTypeCGPoint;
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

void sub_100023430(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [VOTDragCustomAction alloc];
  v7 = [*(a1 + 32) objectAtIndexedSubscript:a3];
  v14 = [(VOTDragCustomAction *)v6 initWithName:v7 wireDictionary:v5];

  if (*(a1 + 64) == 1)
  {
    v8 = [*(a1 + 40) remoteParent];

    if (v8)
    {
      [*(*(a1 + 40) + 8) rectWithAXAttribute:2171];
      x = v16.origin.x;
      y = v16.origin.y;
      width = v16.size.width;
      height = v16.size.height;
      MidX = CGRectGetMidX(v16);
      v17.origin.x = x;
      v17.origin.y = y;
      v17.size.width = width;
      v17.size.height = height;
      [(VOTDragCustomAction *)v14 setRemotePoint:MidX, CGRectGetMidY(v17)];
      [(VOTDragCustomAction *)v14 setRemoteElement:*(a1 + 48)];
    }
  }

  [*(a1 + 56) addObject:v14];
}

BOOL sub_100023614(id a1, id a2, unint64_t a3)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
    v5 = [v4 objectForKeyedSubscript:AXInteractionLocationDescriptorViewPointerNumberKey];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass & 1) != 0 && ([v4 objectForKeyedSubscript:AXInteractionLocationDescriptorAttributedNameKey], v7 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), v8 = objc_opt_isKindOfClass(), v7, (v8) && (v9 = AXInteractionLocationDescriptorPointValueKey, objc_msgSend(v4, "objectForKeyedSubscript:", AXInteractionLocationDescriptorPointValueKey), v10 = objc_claimAutoreleasedReturnValue(), v11 = CFGetTypeID(v10), TypeID = AXValueGetTypeID(), v10, v11 == TypeID) && (objc_msgSend(v4, "objectForKeyedSubscript:", v9), v13 = objc_claimAutoreleasedReturnValue(), Type = AXValueGetType(v13), v13, Type == kAXValueTypeCGPoint) && (v15 = AXInteractionLocationDescriptorContextSpacePointKey, objc_msgSend(v4, "objectForKeyedSubscript:", AXInteractionLocationDescriptorContextSpacePointKey), v16 = objc_claimAutoreleasedReturnValue(), v17 = CFGetTypeID(v16), v18 = AXValueGetTypeID(), v16, v17 == v18) && (objc_msgSend(v4, "objectForKeyedSubscript:", v15), v19 = objc_claimAutoreleasedReturnValue(), v20 = AXValueGetType(v19), v19, v20 == kAXValueTypeCGPoint) && (v21 = AXInteractionLocationDescriptorFixedScreenSpacePointKey, objc_msgSend(v4, "objectForKeyedSubscript:", AXInteractionLocationDescriptorFixedScreenSpacePointKey), v22 = objc_claimAutoreleasedReturnValue(), v23 = CFGetTypeID(v22), v24 = AXValueGetTypeID(), v22, v23 == v24) && (objc_msgSend(v4, "objectForKeyedSubscript:", v21), v25 = objc_claimAutoreleasedReturnValue(), v26 = AXValueGetType(v25), v25, v26 == kAXValueTypeCGPoint))
    {
      v27 = [v4 objectForKeyedSubscript:AXInteractionLocationDescriptorContextIDKey];
      objc_opt_class();
      v28 = objc_opt_isKindOfClass();
    }

    else
    {
      v28 = 0;
    }
  }

  else
  {
    v28 = 0;
  }

  return v28 & 1;
}

void sub_10002395C(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [VOTDropCustomAction alloc];
  v7 = [*(a1 + 32) objectAtIndexedSubscript:a3];
  v8 = [(VOTDropCustomAction *)v6 initWithName:v7 wireDictionary:v5];

  [*(a1 + 40) addObject:v8];
}

BOOL sub_10002620C(void *a1, void *a2)
{
  v3 = a2;
  v4 = [a1 traits];
  v5 = [v3 traits];

  if (((kAXButtonTrait & v4) != 0) == ((kAXButtonTrait & v5) == 0) || ((kAXHeaderTrait & v4) != 0) == ((kAXHeaderTrait & v5) == 0))
  {
    return 1;
  }

  v6 = kAXTextEntryTrait & v5;
  if ((kAXTextEntryTrait & v4) != 0 && v6 == 0)
  {
    return 1;
  }

  return (kAXTextEntryTrait & v4) == 0 && v6 != 0;
}

uint64_t sub_1000262D4()
{
  result = _sl_dlopen();
  qword_1001FEA88 = result;
  return result;
}

void sub_100026348(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 2u);
}

void sub_100027330(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100027360(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = VOTLogAudio();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v9 = 138412290;
    v10 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "sound complete: %@", &v9, 0xCu);
  }

  v6 = +[VOTOutputManager outputManager];
  [v6 disableAudioSession:*(a1 + 32)];

  v7 = *(a1 + 40);
  if (v7)
  {
    (*(v7 + 16))(v7, v3);
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    [WeakRetained setCompletionBlock:0];
  }
}

void sub_100027FB8(id a1)
{
  qword_1001FEA90 = [[VOTCrashManager alloc] _init];

  _objc_release_x1();
}

void sub_1000281FC(id a1)
{
  v1 = VOTLogCommon();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "VoiceOver alive for 10s. Resetting crash count", v3, 2u);
  }

  v2 = +[VOTCrashManager sharedInstance];
  [v2 _resetConsecutiveCrashCount];
}

void sub_100028688(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000286AC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _resetTranslator];
}

void sub_100029CEC(uint64_t a1)
{
  v2 = VOTLogBrailleGestures();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    sub_100128F08(a1, v2);
  }
}

void sub_10002A32C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10002A350(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10002A368(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_group_leave(*(a1 + 32));
}

void sub_10002A608(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10002A62C(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_group_leave(*(a1 + 32));
}

void sub_10002A764(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, va, 0x16u);
}

void sub_10002A7A4(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

__CFString *sub_10002A7C4(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = a1;
  v11 = a2;
  v19[1] = &a9;
  v12 = [NSString alloc];
  v13 = [NSLocale localeWithLocaleIdentifier:@"en-US"];
  v19[0] = 0;
  v14 = [v12 initWithValidatedFormat:v10 validFormatSpecifiers:v11 locale:v13 arguments:&a9 error:v19];
  v15 = v19[0];

  if (v15)
  {
    v16 = AXLogCommon();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
    {
      *buf = 138412802;
      v21 = v15;
      v22 = 2112;
      v23 = v10;
      v24 = 2112;
      v25 = v11;
      _os_log_fault_impl(&_mh_execute_header, v16, OS_LOG_TYPE_FAULT, "Error creating string: %@ [%@/%@]", buf, 0x20u);
    }

    v17 = &stru_1001CBF90;
  }

  else
  {
    v17 = v14;
  }

  return v17;
}

void sub_10002B244(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 88));
  _Unwind_Resume(a1);
}

void sub_10002B288(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _updateUserSubstitutions:*(*(a1 + 32) + 224)];
}

void sub_10002B2E4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = +[AXSettings sharedInstance];
  [WeakRetained setShouldOutputToHearingAid:{objc_msgSend(v1, "voiceOverShouldOutputToHearingAid")}];
}

void sub_10002B350(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained updateAudioSessionProperties:0];
}

void sub_10002B394(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained updateAudioSessionProperties:0];
}

void sub_10002B3D8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained callStatusChanged];
}

void sub_10002B418(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained updateAudioSessionProperties:0];
}

void sub_10002B45C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained updateDuckingMode:0];
}

void sub_10002BED0(uint64_t a1)
{
  v42[0] = 0;
  v42[1] = v42;
  v42[2] = 0x3032000000;
  v42[3] = sub_10002C4F4;
  v42[4] = sub_10002C504;
  v43 = 0;
  v2 = +[AVAudioSession sharedInstance];
  v3 = [v2 category];

  v4 = +[AVAudioSession sharedInstance];
  v5 = [v4 categoryOptions];

  v6 = AVAudioSessionCategoryVoiceOver;
  v7 = +[VOTOutputManager outputManager];
  v8 = [v7 audioSessionActive];

  v40[0] = _NSConcreteStackBlock;
  v40[1] = 3221225472;
  v40[2] = sub_10002C50C;
  v40[3] = &unk_1001C7E28;
  v41 = v8;
  v9 = objc_retainBlock(v40);
  if ([VOTSharedWorkspace audioDestinationRequestExternal])
  {
    goto LABEL_2;
  }

  v16 = +[AXSettings sharedInstance];
  if ([v16 voiceOverAudioFollowsHDMIAudio])
  {
    v17 = +[VOTOutputManager outputManager];
    v18 = [v17 selectedRouteIsHDMI];

    if (v18)
    {
LABEL_2:
      v10 = VOTLogAudio();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Audio destination is External", buf, 2u);
      }

      v11 = +[VOTOutputManager outputManager];
      v12 = [v11 externalAudioRouteSelected];

      if (v12)
      {
        v13 = VOTLogAudio();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "External audio selected - changing to playback category", buf, 2u);
        }

        v14 = AVAudioSessionCategoryPlayback;
        v15 = +[VOTOutputManager outputManager];
        [v15 updateWithCurrentRoute];
        v6 = v14;
      }

      else
      {
        v19 = VOTLogAudio();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Changing route name to external audio", buf, 2u);
        }

        v15 = +[VOTOutputManager outputManager];
        [v15 selectExternalAudioRoute];
      }

      goto LABEL_22;
    }
  }

  else
  {
  }

  v20 = +[VOTOutputManager outputManager];
  v21 = [v20 externalAudioRouteSelected];

  if (v21)
  {
    v22 = VOTLogAudio();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "External audio already selected - going back to local", buf, 2u);
    }

    v15 = +[VOTOutputManager outputManager];
    [v15 selectLocalAudioRoute];
  }

  else
  {
    v23 = VOTLogAudio();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Update to current route when external audio route not selected", buf, 2u);
    }

    v15 = +[VOTOutputManager outputManager];
    [v15 updateWithCurrentRoute];
  }

LABEL_22:

  v24 = *(a1 + 40);
  if (v5 == v24)
  {
LABEL_27:
    v28 = 1;
    goto LABEL_29;
  }

  if (*(*(a1 + 32) + 192) == v24)
  {
    v25 = VOTLogAudio();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      v26 = *(a1 + 40);
      v27 = *(*(a1 + 32) + 192);
      *buf = 67109632;
      *v45 = 1;
      *&v45[4] = 2048;
      *&v45[6] = v27;
      *&v45[14] = 2048;
      *&v45[16] = v26;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Not really different options (different: %d) (lastSet: %lu, newSet: %lu)", buf, 0x1Cu);
    }

    goto LABEL_27;
  }

  v28 = 0;
LABEL_29:
  v29 = [v3 isEqualToString:v6];
  v30 = VOTLogAudio();
  v31 = v28 & v29;
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
  {
    v32 = @"YES";
    v33 = *(a1 + 40);
    *buf = 138544386;
    if (v31)
    {
      v32 = @"NO";
    }

    *v45 = v32;
    *&v45[8] = 2114;
    *&v45[10] = v3;
    *&v45[18] = 2114;
    *&v45[20] = v6;
    v46 = 2048;
    v47 = v5;
    v48 = 2048;
    v49 = v33;
    _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "Changing route? [%{public}@] - categories [%{public}@/%{public}@], options: [%lu/%lu]", buf, 0x34u);
  }

  if ((v31 & 1) == 0)
  {
    *(*(a1 + 32) + 192) = *(a1 + 40);
    v36[0] = _NSConcreteStackBlock;
    v36[1] = 3221225472;
    v36[2] = sub_10002C5C8;
    v36[3] = &unk_1001C7E50;
    v34 = v6;
    v35 = *(a1 + 40);
    v37 = v34;
    v38 = v42;
    v39 = v35;
    (v9[2])(v9, v36);
  }

  _Block_object_dispose(v42, 8);
}

void sub_10002C4A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10002C4F4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10002C50C(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = v3;
  if (*(a1 + 32) == 1)
  {
    v4 = +[VOTOutputManager outputManager];
    [v4 toggleAudioSessionActive:0];

    v3 = v6;
  }

  if (v3)
  {
    v3[2](v6);
    v3 = v6;
  }

  if (*(a1 + 32) == 1)
  {
    v5 = +[VOTOutputManager outputManager];
    [v5 toggleAudioSessionActive:1];

    v3 = v6;
  }
}

void sub_10002C5C8(void *a1)
{
  v2 = VOTLogAudio();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1[4];
    v4 = a1[6];
    *buf = 138412546;
    v21 = v3;
    v22 = 1024;
    v23 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Setting category to %@ with options: %d", buf, 0x12u);
  }

  v5 = +[AVAudioSession sharedInstance];
  v6 = *(a1[5] + 8);
  obj = *(v6 + 40);
  [v5 setDuckingFadeOutDuration:&off_1001D9990 fadeInDuration:&off_1001D99A0 error:&obj];
  objc_storeStrong((v6 + 40), obj);

  if (*(*(a1[5] + 8) + 40))
  {
    v7 = VOTLogAudio();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_100128FF4();
    }
  }

  v8 = +[AVAudioSession sharedInstance];
  v9 = a1[6];
  v10 = a1[4];
  v11 = *(a1[5] + 8);
  v18 = *(v11 + 40);
  [v8 setCategory:v10 withOptions:v9 error:&v18];
  objc_storeStrong((v11 + 40), v18);

  if (*(*(a1[5] + 8) + 40))
  {
    v12 = VOTLogAudio();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_100129060();
    }
  }

  v13 = VOTLogAudio();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Setting VoiceOver MX Session audio property for playback during continuity camera", buf, 2u);
  }

  v14 = +[AVAudioSession sharedInstance];
  v17 = 0;
  [v14 setMXSessionProperty:kMXSessionProperty_PrefersToPlayDuringWombat value:&__kCFBooleanTrue error:&v17];
  v15 = v17;

  if (v15)
  {
    v16 = VOTLogAudio();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_1001290CC();
    }
  }
}

void sub_10002D814(id a1)
{
  v6 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
  v1 = dispatch_queue_create("vot-language-reload-queue", v6);
  v2 = qword_1001FEAA8;
  qword_1001FEAA8 = v1;

  v3 = [AXDispatchTimer alloc];
  v4 = [v3 initWithTargetSerialQueue:qword_1001FEAA8];
  v5 = qword_1001FEAA0;
  qword_1001FEAA0 = v4;

  [qword_1001FEAA0 setAutomaticallyCancelPendingBlockUponSchedulingNewBlock:1];
}

void sub_10002D8B4(uint64_t a1)
{
  if (([*(*(a1 + 32) + 208) isEqualToString:*(a1 + 40)] & 1) == 0)
  {
    objc_storeStrong((*(a1 + 32) + 208), *(a1 + 40));
    v2 = objc_alloc_init(AXIndexMap);
    [*(a1 + 32) _loadPunctuationTable:v2 withLevel:1 language:*(a1 + 40)];
    v3 = objc_alloc_init(AXIndexMap);
    [*(a1 + 32) _loadPunctuationTable:v3 withLevel:2 language:*(a1 + 40)];
    v4 = objc_alloc_init(AXIndexMap);
    [*(a1 + 32) _loadPunctuationTable:v4 withLevel:3 language:*(a1 + 40)];
    v5 = *(a1 + 32);
    v6 = *(v5 + 40);
    v8[0] = v2;
    v8[1] = v3;
    v8[2] = v4;
    v7 = [NSArray arrayWithObjects:v8 count:3];
    [v6 performSelector:"_resetLanguageDataOnSpeechThread:language:" onTarget:v5 count:2 objects:{v7, *(a1 + 40), 0}];
  }
}

void sub_10002DA08(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 208);
  *(v1 + 208) = 0;
}

void sub_10002F4F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10002F514(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

id sub_100030338(id a1, NSTextCheckingResult *a2)
{
  v3 = [(NSTextCheckingResult *)a2 range];

  return [NSValue valueWithRange:v3, v2];
}

id sub_100030380(id a1, NSTextCheckingResult *a2)
{
  v3 = [(NSTextCheckingResult *)a2 range];

  return [NSValue valueWithRange:v3, v2];
}

void sub_100030674(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v9 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_1000306A4(id a1)
{
  v5 = 0;
  v1 = +[NSRegularExpression regularExpressionWithPattern:options:error:](NSRegularExpression, "regularExpressionWithPattern:options:error:", @"(?<!\\b[[:lower:]\\d]{1})[[:upper:]]+[[:lower:]\\d]+", 0, &v5);
  v2 = v5;
  v3 = qword_1001FEAD8;
  qword_1001FEAD8 = v1;

  if (v2)
  {
    v4 = VOTLogSpeech();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1001293C0();
    }
  }
}

void sub_100030740(uint64_t a1, void *a2)
{
  v19 = a2;
  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    v3 = +[NSMutableString string];
    v4 = *(*(a1 + 40) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;
  }

  [*(a1 + 32) rangeOfString:@"VoiceOver"];
  if (!v6)
  {
    [*(a1 + 32) rangeOfString:@"Hz"];
    if (!v7)
    {
      v8 = +[NSCharacterSet whitespaceNewlineAndSpecialCharacterSet];
      v9 = [v8 mutableCopy];

      v10 = +[NSCharacterSet punctuationCharacterSet];
      [v9 formUnionWithCharacterSet:v10];

      if ([v19 numberOfRanges])
      {
        v11 = 0;
        do
        {
          v12 = [v19 rangeAtIndex:v11];
          v14 = v13;
          v15 = *(*(*(a1 + 40) + 8) + 40);
          v16 = *(*(*(a1 + 48) + 8) + 24);
          v17 = [*(a1 + 32) substringWithRange:{v16, &v12[-v16]}];
          [v15 appendString:v17];

          if ([*(*(*(a1 + 40) + 8) + 40) length] && (objc_msgSend(v9, "characterIsMember:", objc_msgSend(*(*(*(a1 + 40) + 8) + 40), "characterAtIndex:", objc_msgSend(*(*(*(a1 + 40) + 8) + 40), "length") - 1)) & 1) == 0 && (*(*(*(a1 + 56) + 8) + 24) & 1) == 0)
          {
            [*(*(*(a1 + 40) + 8) + 40) appendString:@" "];
          }

          v18 = [*(a1 + 32) substringWithRange:{v12, v14}];
          *(*(*(a1 + 56) + 8) + 24) = [v18 isEqualToString:@"Mc"];
          [*(*(*(a1 + 40) + 8) + 40) appendString:v18];
          *(*(*(a1 + 48) + 8) + 24) = &v12[v14];

          ++v11;
        }

        while ([v19 numberOfRanges] > v11);
      }
    }
  }
}

id sub_100030F5C(id a1, NSTextCheckingResult *a2, unint64_t a3)
{
  v4 = [(NSTextCheckingResult *)a2 range];

  return [NSValue valueWithRange:v4, v3];
}

void sub_100031978(id a1)
{
  v4 = 0;
  v1 = [NSRegularExpression regularExpressionWithPattern:@"\\bJP¥[0-9. options:]+\\b" error:1, &v4];
  v2 = v4;
  v3 = qword_1001FEB08;
  qword_1001FEB08 = v1;
}

void sub_1000321F0(id a1)
{
  v4 = 0;
  v1 = [NSRegularExpression regularExpressionWithPattern:@"(?<!\\b(?:jan(?:uary)?|feb(?:ruary)?|mar(?:ch)?|apr(?:il)?|may|jun(?:e)?|jul(?:y)?|aug(?:ust)?|sep(?:tember)?|oct(?:ober)?|nov(?:ember)?|dec(?:ember)?)\\s)(\\d+)" options:1 error:&v4];
  v2 = v4;
  v3 = qword_1001FEB18;
  qword_1001FEB18 = v1;
}

void sub_1000325BC(id a1)
{
  v4 = 0;
  v1 = [NSRegularExpression regularExpressionWithPattern:@"([1-9]){1}(′|')\\s?([0-9]{1 options:2})(″|)" error:1, &v4];
  v2 = v4;
  v3 = qword_1001FEB28;
  qword_1001FEB28 = v1;
}

void sub_100032808(id a1)
{
  v4 = 0;
  v1 = [NSRegularExpression regularExpressionWithPattern:@"\\b(([0-9]{1 options:2})h)?([0-9]{1 error:2})(min|m)\\b", 1, &v4];
  v2 = v4;
  v3 = qword_1001FEB38;
  qword_1001FEB38 = v1;
}

BOOL sub_100033E1C(id a1, AXSSPunctuationEntry *a2, unint64_t a3, BOOL *a4)
{
  v4 = [(AXSSPunctuationEntry *)a2 punctuation:a3];
  v5 = sub_100051384(v4);

  return v5;
}

const __CFString *sub_100033E58(uint64_t a1)
{
  v1 = &stru_1001CBF90;
  if ((a1 - 56319) >= 2 && a1 != 65532)
  {
    if (a1 == 8233)
    {
      return @"\n";
    }

    else
    {
      v4 = +[NSCharacterSet controlCharacterSet];
      if ([v4 characterIsMember:a1])
      {
        v5 = +[NSCharacterSet whitespaceAndNewlineCharacterSet];
        v6 = [v5 characterIsMember:a1];

        if (v6)
        {
          v1 = 0;
        }
      }

      else
      {
        v1 = 0;
      }
    }
  }

  return v1;
}

NSString *__cdecl sub_100034604(id a1)
{
  v1 = [VOTSharedWorkspace selectedLanguage];
  v2 = sub_100051B24(46, @"UnicodeHex.Alternate1.", @"VOTOutputPunctuation", v1);

  return v2;
}

void sub_100035930(id a1)
{
  v1 = +[NSCharacterSet punctuationCharacterSet];
  v2 = [v1 mutableCopy];
  v3 = qword_1001FEB68;
  qword_1001FEB68 = v2;

  v4 = qword_1001FEB68;
  v5 = +[NSCharacterSet symbolCharacterSet];
  [v4 formUnionWithCharacterSet:v5];

  qword_1001FEB70 = +[NSCharacterSet alphanumericCharacterSet];

  _objc_release_x1();
}

void sub_100035BCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose((v29 - 160), 8);
  _Block_object_dispose((v29 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_100035C08(uint64_t a1, uint64_t a2)
{
  if (a2 && *(*(*(a1 + 40) + 8) + 24) >= 3)
  {
    v3 = sub_1000511CC(off_1001FDDD0, @"repeat.filter.no.spaces", 0);
    v4 = AXFormatInteger();
    v11 = [NSString stringWithFormat:v3, v4, CEMEmojiTokenGetString()];

    v5 = *(*(a1 + 56) + 8);
    v6 = *(v5 + 40);
    v7 = *(v5 + 32) + *(*(*(a1 + 48) + 8) + 24);
    if (v7)
    {
      v8 = [NSString stringWithFormat:@", %@", v11];

      v9 = v8;
    }

    else
    {
      v9 = v11;
    }

    v12 = v9;
    [*(a1 + 32) replaceCharactersInRange:v7 withString:{v6, v9}];
    v10 = *(*(*(a1 + 56) + 8) + 40);
    *(*(*(a1 + 48) + 8) + 24) += [v12 length] - v10;
  }
}

void sub_100035D88(void *a1, CFTypeRef cf, unint64_t a3, uint64_t a4)
{
  if (*(*(a1[5] + 8) + 24))
  {
    if (a3 <= *(*(a1[6] + 8) + 40) + *(*(a1[6] + 8) + 32) && CEMEmojiTokensAreEquivalent())
    {
      if (*(*(a1[5] + 8) + 24))
      {
        ++*(*(a1[7] + 8) + 24);
      }
    }

    else
    {
      (*(a1[4] + 16))();
      v8 = *(*(a1[5] + 8) + 24);
      if (v8)
      {
        CFRelease(v8);
        *(*(a1[5] + 8) + 24) = 0;
      }
    }
  }

  if (!*(*(a1[5] + 8) + 24))
  {
    *(*(a1[6] + 8) + 32) = a3;
    *(*(a1[6] + 8) + 40) = 0;
    *(*(a1[5] + 8) + 24) = CFRetain(cf);
    *(*(a1[7] + 8) + 24) = 1;
  }

  *(*(a1[6] + 8) + 40) += a4;
}

void sub_100036620(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100036640(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_100037140(uint64_t a1, void *a2, void *a3)
{
  v13 = a2;
  v5 = a3;
  if ([*(a1 + 32) length])
  {
    v6 = 0;
    do
    {
      v7 = [*(a1 + 32) rangeOfString:v5 options:2 range:{v6, objc_msgSend(*(a1 + 32), "length") - v6}];
      v8 = v7;
      v10 = v9;
      if (!v7)
      {
        goto LABEL_15;
      }

      if (v7 == 0x7FFFFFFFFFFFFFFFLL)
      {
        break;
      }

      if ([*(a1 + 40) characterIsMember:{objc_msgSend(*(a1 + 32), "characterAtIndex:", v7 - 1)}])
      {
LABEL_15:
        if (&v10[v8] == [*(a1 + 32) length] || objc_msgSend(*(a1 + 40), "characterIsMember:", objc_msgSend(*(a1 + 32), "characterAtIndex:", &v10[v8])))
        {
          v11 = [v13 substringToIndex:{objc_msgSend(v13, "rangeOfString:", @"."}];

          v12 = sub_1000511CC(off_1001FDDD0, v11, 0);
          [*(a1 + 32) replaceCharactersInRange:v8 withString:{v10, v12}];
          v10 = [v12 length];

          v13 = v11;
        }
      }

      v6 = &v8[v10];
    }

    while (v6 < [*(a1 + 32) length]);
  }
}

uint64_t sub_1000379BC(void *a1)
{
  v1 = a1;
  if ([v1 hasPrefix:@"he"])
  {
    v2 = 1;
  }

  else
  {
    v2 = [v1 hasPrefix:@"ar"];
  }

  return v2;
}

id sub_100037A1C()
{
  if (qword_1001FEB90 != -1)
  {
    sub_100129864();
  }

  v1 = qword_1001FEB88;

  return v1;
}

void sub_100037A60(id a1)
{
  qword_1001FEB88 = [NSCharacterSet characterSetWithCharactersInString:@"1234567890"];

  _objc_release_x1();
}

id sub_100037AA8()
{
  if (qword_1001FEBA0 != -1)
  {
    sub_100129878();
  }

  v1 = qword_1001FEB98;

  return v1;
}

void sub_100037AEC(id a1)
{
  qword_1001FEB98 = [NSCharacterSet characterSetWithCharactersInString:@"abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"];

  _objc_release_x1();
}

void sub_1000385A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17)
{
  if (a2 == 1)
  {
    v18 = objc_begin_catch(exception_object);
    v19 = VOTLogSpeech();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      sub_1001298F4();
    }

    [a17 mutableCopy];
    objc_end_catch();
    JUMPOUT(0x1000384D4);
  }

  _Unwind_Resume(exception_object);
}

void sub_100038908(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10003892C(uint64_t a1, uint64_t a2, char *a3)
{
  v6 = *(*(a1 + 64) + 8);
  v8 = *(v6 + 32);
  v7 = *(v6 + 40);
  v9 = v7 + v8;
  if (a2 != v7 + v8)
  {
    v10 = [*(a1 + 32) substringWithRange:{v7 + v8, a2 - (v7 + v8)}];
    v11 = [*(a1 + 40) _stringForNormalText:v10 action:*(a1 + 48) allowPausingAtBoundaries:1 ignoreLeadingCommas:(v9 == 0) & *(a1 + 72)];
    [*(a1 + 56) appendString:v11];
  }

  v12 = [*(a1 + 32) length];
  if (a3 >= &v12[-a2])
  {
    a3 = &v12[-a2];
  }

  if (&a3[a2] <= [*(a1 + 32) length])
  {
    v15 = [*(a1 + 32) substringWithRange:{a2, a3}];
    v13 = [*(a1 + 40) _stringForLiteralText:v15 action:*(a1 + 48) allowChangingLanguageForPunctuation:0];
    [*(a1 + 56) appendString:v13];
    v14 = *(*(a1 + 64) + 8);
    *(v14 + 32) = a2;
    *(v14 + 40) = a3;
  }
}

uint64_t sub_100038DC8(uint64_t a1, void *a2)
{
  v3 = [a2 objectForKey:AXUIAccessibilitySpeechAttributePhonemeSubstitution];
  if (v3)
  {
    [*(a1 + 32) addObject:v3];
  }

  return _objc_release_x1();
}

void sub_100038E34(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = objc_alloc_init(TTSSubstitution);
  [v7 setOriginalString:v6];

  [v7 setPhonemes:v5];
  [*(a1 + 32) addObject:v7];
}

void sub_100039B54(id a1)
{
  qword_1001FEBA8 = [NSCharacterSet characterSetWithRange:10240, 256];

  _objc_release_x1();
}

void sub_10003AE24(id a1)
{
  qword_1001FEBC0 = [NSRegularExpression regularExpressionWithPattern:@"<[^>]+>|<\\/[^>]+>|<[^>]+\\/>" options:0 error:0];

  _objc_release_x1();
}

void sub_10003C2E0(id a1)
{
  qword_1001FEBD0 = [objc_allocWithZone(VOTSpringBoardConnection) init];

  _objc_release_x1();
}

void sub_10003C8CC(id a1, int64_t a2)
{
  if (a2 == 0x7FFFFFFFFFFFFFFFLL)
  {
    _AXSVoiceOverTouchSetEnabled();
    if (_AXSCanDisableApplicationAccessibility())
    {

      _AXSApplicationAccessibilitySetEnabled();
    }
  }

  else
  {

    _AXSVoiceOverTouchSetUsageConfirmed();
  }
}

void sub_10003CA18()
{
  __chkstk_darwin();
  v1 = v0;
  v2 = +[VOTSpringBoardConnection defaultConnection];
  v3 = [v2 isConnected];

  if ((v3 & 1) == 0)
  {
    LOBYTE(v8) = 1;
    _AXLogWithFacility();
    v4 = [VOTSpringBoardConnection defaultConnection:v8];
    [v4 restartConnection];
  }

  if (!v1 || !AXSerializeWrapper())
  {
    v5 = +[VOTSpringBoardConnection defaultConnection];
    v6 = [v5 _sbPort];

    if (v6)
    {
      CFMachPortGetPort(v6);
    }

    if (sub_100116080())
    {
      v7 = +[VOTSpringBoardConnection defaultConnection];
      [v7 _sbPort];
      _AXLogWithFacility();
    }
  }
}

void sub_10003CE18(id a1)
{
  v1 = +[NSMutableCharacterSet controlCharacterSet];
  v2 = +[NSCharacterSet whitespaceAndNewlineCharacterSet];
  [v1 formUnionWithCharacterSet:v2];

  [v1 addCharactersInString:@"\u200E"];
  v3 = qword_1001FEBE0;
  qword_1001FEBE0 = v1;
}

void sub_10003D320(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = [VOTNameSearcherLaunchableApp alloc];
  v8 = [*(a1 + 32) objectForKey:v6];
  v9 = [(VOTNameSearcherLaunchableApp *)v7 initWithName:v6 value:v8 displayID:v5];

  [*(a1 + 40) addObject:v9];
}

void sub_10003D3D8(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = [VOTNameSearcherLaunchableApp alloc];
  v8 = [*(a1 + 32) objectForKey:v6];
  v9 = [(VOTNameSearcherLaunchableApp *)v7 initWithName:v6 value:v8 displayID:v5];

  [*(a1 + 40) addObject:v9];
}

int64_t sub_10003D490(id a1, VOTNameSearcherLaunchableApp *a2, VOTNameSearcherLaunchableApp *a3)
{
  v4 = a3;
  v5 = [(VOTNameSearcherLaunchableApp *)a2 name];
  v6 = [(VOTNameSearcherLaunchableApp *)v4 name];

  v7 = [v5 compare:v6];
  return v7;
}

id sub_10003D658(void *a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = [v1 objectForKeyedSubscript:@"x"];
    [v2 floatValue];
    v4 = v3;
    v5 = [v1 objectForKeyedSubscript:@"y"];

    [v5 floatValue];
    v7 = [NSValue ax_valueWithCGPoint:v4, v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

id sub_10003D714(void *a1)
{
  v1 = a1;
  if (!v1)
  {
    _AXAssert();
  }

  [v1 ax_CGPointValue];
  v3 = v2;
  v8[0] = @"x";
  v4 = [NSNumber numberWithDouble:?];
  v8[1] = @"y";
  v9[0] = v4;
  v5 = [NSNumber numberWithDouble:v3];
  v9[1] = v5;
  v6 = [NSDictionary dictionaryWithObjects:v9 forKeys:v8 count:2];

  return v6;
}

double sub_10003D830(void *a1)
{
  v1 = a1;
  x = CGPointZero.x;
  y = CGPointZero.y;
  v4 = [v1 count];
  if (v4)
  {
    v5 = v4;
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v6 = v1;
    v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v15;
      do
      {
        v10 = 0;
        do
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(v6);
          }

          [*(*(&v14 + 1) + 8 * v10) ax_CGPointValue];
          x = x + v11;
          y = y + v12;
          v10 = v10 + 1;
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v8);
    }

    x = x / v5;
  }

  return x;
}

void sub_10003DA90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10003DAA8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10003DAC0(NSRange *a1, void *a2, NSUInteger a3, uint64_t a4, NSUInteger a5, NSUInteger a6, _BYTE *a7)
{
  v19 = a2;
  v14 = a1[3];
  if (v14.length)
  {
    v21.location = a5;
    v21.length = a6;
    v15 = NSIntersectionRange(v14, v21);
    length = a1[3].length;
    if (v15.length != length)
    {
      v14.location = a1[3].location;
      goto LABEL_10;
    }

LABEL_12:
    location = a1[2].location;
    *(location + 24) = a3;
    *(location + 32) = a4;
    objc_storeStrong((*(a1[2].length + 8) + 40), a2);
    goto LABEL_13;
  }

  if (v14.location >= a5 && v14.location - a5 <= a6)
  {
    goto LABEL_12;
  }

  length = 0;
LABEL_10:
  if (a3 > length + v14.location)
  {
LABEL_13:
    *a7 = 1;
  }
}

void sub_10003DCE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class sub_10003E1A8(uint64_t a1)
{
  v3[0] = 0;
  if (!qword_1001FEBF8)
  {
    v3[1] = _NSConcreteStackBlock;
    v3[2] = 3221225472;
    v3[3] = sub_10003E2D4;
    v3[4] = &unk_1001C78B0;
    v3[5] = v3;
    v4 = off_1001C8390;
    v5 = 0;
    qword_1001FEBF8 = _sl_dlopen();
  }

  if (!qword_1001FEBF8)
  {
    sub_100129E28(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  result = objc_getClass("UITextChecker");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_100129DAC();
  }

  qword_1001FEBF0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_10003E2D4()
{
  result = _sl_dlopen();
  qword_1001FEBF8 = result;
  return result;
}

void sub_10003E47C(id a1)
{
  qword_1001FEC08 = [objc_allocWithZone(VOTDisplayManager) init];

  _objc_release_x1();
}

void sub_10003EFF4(uint64_t a1)
{
  v5 = @"frame";
  v7.origin.x = CGRectZero.origin.x;
  v7.origin.y = CGRectZero.origin.y;
  v7.size.width = CGRectZero.size.width;
  v7.size.height = CGRectZero.size.height;
  v2 = NSStringFromRect(v7);
  v6 = v2;
  v3 = [NSDictionary dictionaryWithObjects:&v6 forKeys:&v5 count:1];

  v4 = [*(a1 + 32) uiClient];
  [v4 sendAsynchronousMessage:v3 withIdentifier:1 targetAccessQueue:0 completion:0];
}

void sub_10003F528(uint64_t a1, void *a2, uint64_t a3, __n128 a4, __n128 a5, __n128 a6, __n128 a7)
{
  if (a3)
  {
    v8 = *(*(a1 + 32) + 16);
    a4.n128_u64[0] = *&CGRectNull.origin.x;
    a5.n128_u64[0] = *&CGRectNull.origin.y;
    a6.n128_u64[0] = *&CGRectNull.size.width;
    a7.n128_u64[0] = *&CGRectNull.size.height;

    v8(a4, a5, a6, a7);
  }

  else
  {
    v10 = [a2 objectForKey:@"convertedFrame"];
    v9 = *(a1 + 32);
    v12 = CGRectFromString(v10);
    (*(v9 + 16))(v9, v12.origin, *&v12.origin.y, v12.size, *&v12.size.height);
  }
}

void sub_10003F724(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  if (a3)
  {
    v4 = *(v3 + 16);
    v5 = *(a1 + 32);

    v4(v5, 0);
  }

  else
  {
    v6 = [a2 objectForKey:@"convertedFramesStrings"];
    (*(v3 + 16))(v3, v6);
  }
}

id sub_10003FA08(void *a1)
{
  v1 = a1;
  v2 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", 2 * [v1 count]);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = v1;
  v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v13 + 1) + 8 * i) pointValue];
        v9 = v8;
        v10 = [NSNumber numberWithDouble:?];
        [v2 addObject:v10];

        v11 = [NSNumber numberWithDouble:v9];
        [v2 addObject:v11];
      }

      v5 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }

  return v2;
}

void sub_100040724(uint64_t a1)
{
  if ([*(a1 + 32) length] && objc_msgSend(*(a1 + 40), "_isSystemReadyForUI"))
  {
    v2 = [*(a1 + 40) uiClient];
    v3 = *(a1 + 32);
    v10[0] = @"VoiceOverCaptionText";
    v10[1] = @"VoiceOverCaptionLanguage";
    v4 = *(a1 + 48);
    if (!v4)
    {
      v4 = &stru_1001CBF90;
    }

    v11[0] = v3;
    v11[1] = v4;
    v10[2] = @"VoiceOverCaptionSpokenRange";
    v5 = NSStringFromRange(*(a1 + 64));
    v11[2] = v5;
    v10[3] = @"VoiceOverCaptionVoiceName";
    v6 = [*(a1 + 56) name];
    v7 = v6;
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = &stru_1001CBF90;
    }

    v11[3] = v8;
    v9 = [NSDictionary dictionaryWithObjects:v11 forKeys:v10 count:4];
    [v2 sendAsynchronousMessage:v9 withIdentifier:8 targetAccessQueue:0 completion:0];
  }
}

void sub_100041830(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 56);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1000418D8;
  v3[3] = &unk_1001C7778;
  v4 = *(a1 + 40);
  v5 = *(a1 + 32);
  [v2 registerWithCompletionHandler:v3];
}

id sub_1000418D8(uint64_t a1)
{
  [*(a1 + 32) addObserver:*(a1 + 40) selector:"_callStatusChanged:" name:TUCallCenterCallStatusChangedNotification object:0];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = TUCallCenterVideoCallStatusChangedNotification;

  return [v2 addObserver:v3 selector:"_callStatusChanged:" name:v4 object:0];
}

id sub_100041AFC(uint64_t a1)
{
  [*(a1 + 32) _hunterMigrateDefaultRotors];
  [*(a1 + 32) _hunterMigrateDigitalCrownNavigation];
  v2 = *(a1 + 32);

  return [v2 _crystalBMigrateDuckingVolumePreferences];
}

void sub_100042D74(id a1)
{
  qword_1001FEC10 = [[AXUIClient alloc] initWithIdentifier:@"AXAssetClient-VoiceOver" serviceBundleName:@"AXAssetAndDataServer"];

  _objc_release_x1();
}

void sub_100044350(id a1, NSNotification *a2)
{
  v5 = a2;
  v2 = [(NSNotification *)v5 object];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v4 = [(NSNotification *)v5 object];
    sub_1000509A4(v4);
  }
}

void sub_1000443D8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained userCommandManager];
  [v1 reloadPreferringUserProfile];
}

void sub_100044430()
{
  [VOTSharedWorkspace setDisableVoiceOverSettingOnStop:0];
  v0 = +[VOTWorkspace sharedWorkspace];
  [v0 stop:1];
}

uint64_t sub_10004448C(int a1, int a2, CFTypeRef cf1)
{
  if (CFEqual(cf1, kAXSVoiceOverTouchUsageConfirmedNotification))
  {
    v5 = VOTSharedWorkspace;

    return [v5 _voiceOverUsageConfirmed];
  }

  if (CFEqual(cf1, @"com.apple.preferences.sounds.changed"))
  {
    v6 = VOTSharedWorkspace;

    return [v6 preferencesKeyboardClickStatusChange:0];
  }

  if (CFEqual(cf1, @"com.apple.language.changed"))
  {
    v7 = VOTSharedWorkspace;
    v8 = "_languageChanged";
LABEL_13:

    return [v7 performSelector:v8 withObject:0 afterDelay:2.0];
  }

  if (CFEqual(cf1, @"com.apple.purplebuddy.LanguageResetReady"))
  {
    v7 = VOTSharedWorkspace;
    v8 = "_languageChangedInBuddy";
    goto LABEL_13;
  }

  if (CFEqual(cf1, kAXSVoiceOverTouchSpeakingRateChangedNotification))
  {
    v10 = VOTSharedWorkspace;

    return [v10 _preferencesSpeechRateChange];
  }

  else if (CFEqual(cf1, kAXSVoiceOverTouchEnabledNotification))
  {
    v11 = VOTSharedWorkspace;
    v12 = kAXSVoiceOverTouchEnabledNotification;

    return [v11 _voiceOverTouchEnabledChange:v12];
  }

  else if (CFEqual(cf1, kAXSVoiceOverTouchLanguageRotorChangedNotification))
  {
    v13 = VOTSharedWorkspace;

    return [v13 preferencesLanguageRotorItemsChanged:0];
  }

  else if (CFEqual(cf1, kAXSVoiceOverTouchBrailleLanguageRotorChangedNotification))
  {
    v14 = VOTSharedWorkspace;

    return [v14 preferencesBrailleLanguageRotorItemsChanged:0];
  }

  else if (CFEqual(cf1, kTTSPreferencesSpokenLanguageChangedNotification))
  {
    v15 = VOTSharedWorkspace;

    return [v15 systemSpokenLanguageChanged:0];
  }

  else if (CFEqual(cf1, kAXSVoiceOverTouchTypingModeChangedNotification))
  {
    v16 = VOTSharedWorkspace;

    return [v16 _preferencesTypingModeChanged:0];
  }

  else
  {
    result = CFEqual(cf1, kAXSVoiceOverTouchScreenCurtainNotification);
    if (result)
    {
      v17 = VOTSharedWorkspace;

      return [v17 _preferencesScreenCurtainChanged:0];
    }
  }

  return result;
}

void sub_100044750(id a1)
{
  if (_AXSVoiceOverTouchEnabledThroughAccessory())
  {
    v1 = AXLogSystemApp();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
    {
      *v3 = 0;
      _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "VOT requesting system-app wake-up for enabled-through-accessory", v3, 2u);
    }

    v2 = +[AXSystemAppServer server];
    [v2 wakeUpDeviceIfNecessary];
  }
}

void sub_1000447F4()
{
  if ((AXInPreboardScenario() & 1) == 0)
  {
    [VOTSharedWorkspace setDisableVoiceOverSettingOnStop:0];
    v0 = +[AXSubsystemVoiceOverLifeCycle sharedInstance];
    v1 = [v0 ignoreLogging];

    if ((v1 & 1) == 0)
    {
      v2 = +[AXSubsystemVoiceOverLifeCycle identifier];
      v3 = AXLoggerForFacility();

      v4 = AXOSLogLevelFromAXLogLevel();
      if (os_log_type_enabled(v3, v4))
      {
        v5 = AXColorizeFormatLog();
        v6 = _AXStringForArgs();
        if (os_log_type_enabled(v3, v4))
        {
          v8 = 138543362;
          v9 = v6;
          _os_log_impl(&_mh_execute_header, v3, v4, "%{public}@", &v8, 0xCu);
        }
      }
    }

    v7 = +[VOTWorkspace sharedWorkspace];
    [v7 stop:1];
  }
}

void sub_100045090(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_1000450AC(uint64_t a1)
{
  [*(a1 + 32) lock];
  v2 = *(*(a1 + 48) + 8);
  if ((*(v2 + 24) & 1) == 0)
  {
    [*(a1 + 40) end];
    v2 = *(*(a1 + 48) + 8);
  }

  *(v2 + 24) = 1;
  v3 = *(a1 + 32);

  return [v3 unlock];
}

uint64_t sub_100045110(uint64_t a1)
{
  v2 = +[AXSubsystemVoiceOverLifeCycle sharedInstance];
  v3 = [v2 ignoreLogging];

  if ((v3 & 1) == 0)
  {
    v4 = +[AXSubsystemVoiceOverLifeCycle identifier];
    v5 = AXLoggerForFacility();

    v6 = AXOSLogLevelFromAXLogLevel();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = AXColorizeFormatLog();
      v8 = _AXStringForArgs();
      if (os_log_type_enabled(v5, v6))
      {
        v10 = 138543362;
        v11 = v8;
        _os_log_impl(&_mh_execute_header, v5, v6, "%{public}@", &v10, 0xCu);
      }
    }
  }

  return (*(*(a1 + 40) + 16))();
}

void sub_100045364(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 objectForKeyedSubscript:@"offset"];
  [v3 doubleValue];

  v4 = v2;
  AXPerformBlockAsynchronouslyOnMainThread();
}

void sub_100045430(uint64_t a1)
{
  v2 = [*(a1 + 32) objectForKeyedSubscript:@"enabled"];
  if ([v2 BOOLValue])
  {
    v3 = *(a1 + 48) > 0.0;
  }

  else
  {
    v3 = 0;
  }

  if (v3 != [*(a1 + 40) reachabilityActive])
  {
    v4 = +[VOTOutputManager outputManager];
    if (v3)
    {
      +[VOSOutputEvent ReachabilityDidBegin];
    }

    else
    {
      +[VOSOutputEvent ReachabilityDidEnd];
    }
    v5 = ;
    [v4 sendEvent:v5];

    [*(a1 + 40) setReachabilityOffset:*(a1 + 48) / *(&xmmword_1001FF150 + 1)];
    [*(a1 + 40) setReachabilityActive:v3];
    v6 = [*(a1 + 40) elementManager];
    [v6 handleReachabilityToggled];
  }
}

void sub_100046004(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 432);
  *(v1 + 432) = 0;
}

void sub_100046014(uint64_t a1)
{
  v2 = +[AXSettings sharedInstance];
  *(*(a1 + 32) + 480) = [v2 voiceOverImageCaptionsEnabled];
}

void sub_100046070(uint64_t a1)
{
  v2 = +[AXSettings sharedInstance];
  *(*(a1 + 32) + 481) = [v2 voiceOverShouldSpeakDiscoveredText];
}

void sub_1000460CC(uint64_t a1)
{
  v2 = +[AXSettings sharedInstance];
  *(*(a1 + 32) + 482) = [v2 voiceOverAutomaticButtonLabels];
}

void sub_100046128(uint64_t a1)
{
  v2 = +[AXSettings sharedInstance];
  *(*(a1 + 32) + 584) = [v2 voiceOverContentDescriptionLevel];
}

void sub_100046184(uint64_t a1)
{
  v2 = +[AXSettings sharedInstance];
  *(*(a1 + 32) + 600) = [v2 voiceOverContainerOutputFeedback];
}

void sub_1000461E0(uint64_t a1)
{
  v2 = +[AXSettings sharedInstance];
  *(*(a1 + 32) + 608) = [v2 voiceOverMoreContentOutputFeedback];
}

void sub_10004623C(uint64_t a1)
{
  v2 = +[AXSettings sharedInstance];
  *(*(a1 + 32) + 483) = [v2 voiceOverSoundEffectsEnabled];
}

void sub_100046298(uint64_t a1)
{
  v2 = +[AXSettings sharedInstance];
  *(*(a1 + 32) + 616) = [v2 voiceOverNumberFeedback];
}

void sub_1000462F4(uint64_t a1)
{
  v2 = +[AXSettings sharedInstance];
  *(*(a1 + 32) + 624) = [v2 voiceOverVerbosityEmojiFeedback];
}

void sub_100046350(uint64_t a1)
{
  v2 = +[AXSettings sharedInstance];
  *(*(a1 + 32) + 490) = [v2 voiceOverBrailleAlertsEnabled];
}

void sub_1000463AC(uint64_t a1)
{
  v5 = +[AXSettings sharedInstance];
  v2 = [v5 imageCaptioningDisabledApps];
  v3 = *(a1 + 32);
  v4 = *(v3 + 592);
  *(v3 + 592) = v2;
}

void sub_100046414(uint64_t a1)
{
  v2 = +[AXSettings sharedInstance];
  [*(a1 + 32) setAutomaticAccessibilityEnabled:{objc_msgSend(v2, "automaticAccessibilityEnabled")}];
}

void sub_100046474(uint64_t a1)
{
  v2 = +[AXSettings sharedInstance];
  [*(a1 + 32) setAutomaticAccessibilityVisualizationsEnabled:{objc_msgSend(v2, "automaticAccessibilityVisualizationsEnabled")}];
}

void sub_1000464D4(uint64_t a1)
{
  v2 = +[AXSettings sharedInstance];
  [*(a1 + 32) setNavigationStyle:{objc_msgSend(v2, "voiceOverNavigationStyle")}];
}

void sub_100046534(uint64_t a1)
{
  v2 = +[AXSettings sharedInstance];
  [*(a1 + 32) setNavigationDirection:{objc_msgSend(v2, "voiceOverNavigationDirectionMode")}];
}

void sub_1000465A0(uint64_t a1)
{
  v2 = +[AXSettings sharedInstance];
  [*(a1 + 32) setUpdateRotorWithElement:{objc_msgSend(v2, "voiceOverRotorUpdatesWithElement")}];
}

void sub_1000467B0(uint64_t a1)
{
  [*(a1 + 32) systemSpokenLanguageChanged:0];
  v1 = +[NSNotificationCenter defaultCenter];
  [v1 postNotificationName:off_1001FDB18 object:0];
}

void sub_1000468A0(uint64_t a1)
{
  [*(a1 + 32) _updateActivityListeners];
  v2 = [*(a1 + 32) votSettings];
  [v2 currentElementDidUpdate:*(a1 + 40)];
}

void sub_100047D10(id a1)
{
  v1 = [NSBundle bundleWithPath:@"/System/Library/Frameworks/UIKit.framework"];
  [v1 load];
}

void sub_100048AF8(uint64_t a1)
{
  v2 = *(a1 + 32);
  v5 = [NSNumber numberWithBool:*(a1 + 46)];
  v3 = [NSNumber numberWithUnsignedInt:*(a1 + 40)];
  v4 = [NSNumber numberWithUnsignedShort:*(a1 + 44)];
  [v2 _postKeyboardEvent:v5 modifiers:v3 keyCode:v4];
}

void sub_100048C80(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v6 = [NSNumber numberWithUnsignedInt:*(a1 + 56)];
  v5 = [NSNumber numberWithUnsignedShort:*(a1 + 60)];
  [v2 _postKeyboardEventWithCharacters:v3 originalCharacters:v4 modifiers:v6 keyCode:v5];
}

void sub_1000498A4(id a1, NSArray *a2, NSError *a3)
{
  v4 = a2;
  v5 = a3;
  if (v5)
  {
    v6 = AXMediaLogLanguageTranslation();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_100129EE4();
    }
  }

  v7 = AXMediaLogLanguageTranslation();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG);

  if (v8)
  {
    v9 = [(NSArray *)v4 ax_flatMappedArrayUsingBlock:&stru_1001C88D8];
    v10 = AXMediaLogLanguageTranslation();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      sub_100129F58(v9, v10);
    }
  }
}

id sub_10004997C(id a1, AXMTranslationModelInstallStatus *a2)
{
  v2 = a2;
  v3 = [(AXMTranslationModelInstallStatus *)v2 localeIdentifier];
  v4 = [NSNumber numberWithUnsignedInteger:[(AXMTranslationModelInstallStatus *)v2 state]];
  v5 = [(AXMTranslationModelInstallStatus *)v2 progress];

  v6 = [NSNumber numberWithLongLong:v5];
  v7 = [NSString stringWithFormat:@"[id: %@ state:%@ progress:%@]", v3, v4, v6];

  return v7;
}

void sub_100049A58(id a1, NSError *a2)
{
  v2 = a2;
  v3 = AXMediaLogLanguageTranslation();
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_100129FF4();
    }
  }

  else if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Translation asset installation finished successfully", v5, 2u);
  }
}

id sub_100049BCC(uint64_t a1, void *a2)
{
  v3 = [a2 uuid];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

void sub_100049ED0(uint64_t a1)
{
  v2 = *(a1 + 32);
  objc_sync_enter(v2);
  [*(*(a1 + 32) + 424) removeAllObjects];
  v3 = *(*(a1 + 32) + 424);
  v4 = +[AXSSPunctuationManager sharedDatabase];
  v5 = [v4 punctuationGroups];
  [v3 axSafelyAddObjectsFromArray:v5];

  v6 = AXLogPunctuationStorage();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = *(*(a1 + 32) + 424);
    v13 = 138412290;
    v14 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "resetting punc groups: %@", &v13, 0xCu);
  }

  v8 = *(a1 + 32);
  v9 = *(v8 + 432);
  *(v8 + 432) = 0;

  v10 = [*(a1 + 32) punctuationGroupsUpdatedHandler];
  v11 = v10 == 0;

  if (!v11)
  {
    v12 = [*(a1 + 32) punctuationGroupsUpdatedHandler];
    v12[2]();
  }

  objc_sync_exit(v2);
}

void sub_10004A1BC(id a1, VOTOutputRequest *a2)
{
  v2 = +[VOTOutputManager outputManagerIfExists];
  [v2 updateAudioSessionProperties];
}

void sub_10004AB04(id a1, BOOL a2)
{
  if (!a2)
  {
    v4 = +[VOTOutputManager outputManager];
    v3 = +[VOSOutputEvent DidChangeVolume];
    [v4 sendEvent:v3];
  }
}

void sub_10004AFB4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [NSNumber numberWithBool:*(a1 + 40)];
  [v1 _temporarilyChangeQuickNav:v2];
}

void sub_10004B224(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = off_1001FDDD0;
  v4 = [VOTSharedWorkspace selectedLanguage];
  v3 = sub_1000511CC(v2, @"system.unmuted", v4);
  [v1 speakSimpleString:v3];
}

void sub_10004B2AC(uint64_t a1)
{
  v2 = [*(a1 + 32) eventRecord];
  [*(*(a1 + 40) + 40) postEvent:v2];
  v3 = [v2 copy];

  [v3 setType:1026];
  [v3 setOriginalType:1026];
  [*(*(a1 + 40) + 40) postEvent:v3];
}

void sub_10004C890(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_10004C8A8(uint64_t a1)
{
  result = [*(a1 + 32) _callCenterQueue_currentCallState];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void sub_10004C950(uint64_t a1)
{
  v3 = +[AVSystemController sharedAVSystemController];
  v2 = [v3 attributeForKey:AVSystemController_ActiveAudioRouteAttribute];
  *(*(a1 + 32) + 371) = [v2 isEqualToString:@"Speaker"];
}

uint64_t sub_10004DA7C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10004DA94(void *a1)
{
  v5 = [*(a1[4] + 336) objectForKey:a1[5]];
  v2 = [v5 copyWithCache];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

id sub_10004DAFC(uint64_t a1)
{
  result = *(*(*(a1 + 56) + 8) + 40);
  if (result)
  {
    if (*(a1 + 64) != -1)
    {
      if ([result pid] == *(a1 + 64) || (result = objc_msgSend(*(a1 + 32), "doesHaveTraits:", kAXWebContentTrait), result))
      {
        v3 = *(a1 + 48);
        v4 = *(*(a1 + 40) + 336);
        v5 = *(*(*(a1 + 56) + 8) + 40);

        return [v4 setObject:v5 forKey:v3];
      }
    }
  }

  return result;
}

void sub_10004DC80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10004DC98(uint64_t a1)
{
  v2 = (a1 + 48);
  v3 = *(*(a1 + 32) + 344);
  v4 = [NSNumber numberWithInt:*(a1 + 48)];
  v5 = [v3 objectForKeyedSubscript:v4];
  v6 = *(*(v2 - 1) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  if (!*(*(*(v2 - 1) + 8) + 40))
  {
    AppElementWithPid = _AXUIElementCreateAppElementWithPid();
    if (AppElementWithPid)
    {
      v9 = AppElementWithPid;
      v10 = [AXUIElement uiElementWithAXElement:AppElementWithPid];
      v11 = [[VOTElement alloc] initWithUIElement:v10 initializeAssociatedPids:0];
      v12 = *(*(a1 + 40) + 8);
      v13 = *(v12 + 40);
      *(v12 + 40) = v11;

      if (([*(*(*(a1 + 40) + 8) + 40) isApplication] & 1) == 0)
      {
        v14 = VOTLogCommon();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
        {
          sub_10012A068(v2, v10, v14);
        }
      }

      v15 = *(*(*(a1 + 40) + 8) + 40);
      v16 = *(*(a1 + 32) + 344);
      v17 = [NSNumber numberWithInt:*(a1 + 48)];
      [v16 setObject:v15 forKeyedSubscript:v17];

      CFRelease(v9);
    }
  }
}

void sub_10004DFCC(id a1, int64_t a2)
{
  if (!a2)
  {
    v3 = +[AXSettings sharedInstance];
    [v3 setVoiceOverAlwaysTurnOnBluetooth:1];
  }
}

id sub_10004E6B8(uint64_t a1)
{
  v2 = +[AXSettings sharedInstance];
  [v2 setVoiceOverUserDidReadUSBRestrictedModeAlert:1];

  v3 = *(a1 + 32);

  return [v3 _setUSBRMPreferenceDisabled];
}

uint64_t sub_10004F2DC(uint64_t result, _DWORD *a2, uint64_t a3)
{
  v3 = -5;
  if (a2 && a3 == 4)
  {
    v3 = 0;
    **(result + 40) = *a2;
  }

  *(*(*(result + 32) + 8) + 24) = v3;
  return result;
}

uint64_t sub_10005057C(double a1, float a2)
{
  result = TTSSpeechRateToNashvilleRate();
  if (a2 >= 0.5)
  {
    return TTSSpeechRateToNashvilleRate();
  }

  return result;
}

void sub_100050604(void *a1)
{
  v1 = a1;
  v2 = +[AXSubsystemVoiceOverLifeCycle sharedInstance];
  v3 = [v2 ignoreLogging];

  if ((v3 & 1) == 0)
  {
    v4 = +[AXSubsystemVoiceOverLifeCycle identifier];
    v5 = AXLoggerForFacility();

    v6 = AXOSLogLevelFromAXLogLevel();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = AXColorizeFormatLog();
      v16 = v1;
      v8 = _AXStringForArgs();
      if (os_log_type_enabled(v5, v6))
      {
        *buf = 138543362;
        v19 = v8;
        _os_log_impl(&_mh_execute_header, v5, v6, "%{public}@", buf, 0xCu);
      }
    }
  }

  v9 = +[AXSubsystemVoiceOverLifeCycle sharedInstance];
  v10 = [v9 ignoreLogging];

  if ((v10 & 1) == 0)
  {
    v11 = +[AXSubsystemVoiceOverLifeCycle identifier];
    v12 = AXLoggerForFacility();

    v13 = AXOSLogLevelFromAXLogLevel();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = AXColorizeFormatLog();
      v17 = [v1 callStackSymbols];
      v15 = _AXStringForArgs();

      if (os_log_type_enabled(v12, v13))
      {
        *buf = 138543362;
        v19 = v15;
        _os_log_impl(&_mh_execute_header, v12, v13, "%{public}@", buf, 0xCu);
      }
    }
  }
}

BOOL sub_10005083C()
{
  if (byte_1001FEC39 == 1)
  {
    return byte_1001FEC38 != 0;
  }

  byte_1001FEC39 = 1;
  result = *&xmmword_1001FF150 > 640.0;
  byte_1001FEC38 = *&xmmword_1001FF150 > 640.0;
  return result;
}

id sub_10005088C(void *a1)
{
  v1 = a1;
  if ([v1 length] == 1)
  {
    v2 = +[NSCharacterSet uppercaseLetterCharacterSet];
    v3 = [v2 characterIsMember:{objc_msgSend(v1, "characterAtIndex:", 0)}];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id sub_100050908(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = +[AXSettings sharedInstance];
  v6 = [v5 voiceOverCapitalLetterFeedback] == 0;

  v7 = [TTSSpeechManager literalStringMarkup:v3 string:v4 speakCap:v6];

  return v7;
}

double sub_1000509A4(void *a1)
{
  v1 = a1;
  v2 = [v1 coreAnimationMainDisplay];
  [v2 referenceBounds];
  *&xmmword_1001FF150 = v3;
  *(&xmmword_1001FF150 + 1) = v4;

  v5 = [v1 coreAnimationMainDisplay];

  [v5 scale];
  qword_1001FF160 = v6;

  if (*(&xmmword_1001FF150 + 1) == 2272.0 && *&xmmword_1001FF150 == 1280.0 && *&qword_1001FF160 == 3.0)
  {
    qword_1001FF160 = 0x4010000000000000;
  }

  __asm { FMOV            V3.2D, #0.5 }

  xmmword_1001FF170 = vmulq_f64(xmmword_1001FF150, _Q3);
  result = *(&xmmword_1001FF150 + 1) / 3.0;
  qword_1001FF180 = xmmword_1001FF170;
  *algn_1001FF188 = *(&xmmword_1001FF150 + 1) / 3.0;
  return result;
}

id sub_100050AB0(void *a1, void *a2, char a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a4;
  v11 = a5;
  v12 = a1;
  v13 = +[NSCharacterSet whitespaceCharacterSet];
  v14 = [v12 stringByTrimmingCharactersInSet:v13];

  if (![v14 length])
  {
    v20 = 0;
    goto LABEL_53;
  }

  v15 = [v14 lowercaseString];

  v14 = v15;
  v16 = [v14 rangeOfString:@"-"];
  v17 = v14;
  if (v16 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v17 = [v14 substringToIndex:v16];
  }

  v18 = [VOTSharedWorkspace systemSpokenLanguage];
  v54 = v17;
  if ((sub_100051014(v11, v14, v9) & 1) == 0)
  {
    IsSpeakableEmojiString = AXLanguageIsSpeakableEmojiString();
    if (![v18 hasPrefix:v17] || (a3 & 1) != 0)
    {
      if (IsSpeakableEmojiString)
      {
        v20 = 0;
        v21 = 1;
      }

      else if ([v14 isEqualToString:@"emoji"])
      {
        v24 = +[AXLanguageManager sharedInstance];
        v25 = [v24 dialectsThatCanSpeakString:v9];
        v26 = [v25 firstObject];
        v20 = [v26 specificLanguageID];

        v21 = 0;
      }

      else
      {
        v21 = 0;
        v20 = 0;
      }

      goto LABEL_19;
    }

    if ((IsSpeakableEmojiString & 1) == 0)
    {
      v27 = +[AXLanguageManager sharedInstance];
      v28 = [v27 dialectsThatCanSpeakString:v9];
      v29 = [v28 firstObject];
      v20 = [v29 specificLanguageID];

      v53 = 0;
      goto LABEL_26;
    }

LABEL_12:

    v14 = 0;
    v23 = 0;
    v53 = 1;
    goto LABEL_27;
  }

  v19 = [v18 hasPrefix:v17];
  v20 = 0;
  v21 = 1;
  if (v19 && (a3 & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_19:
  v53 = v21;
  if (([v14 isEqualToString:@"zh-hans"] & 1) != 0 || objc_msgSend(v14, "isEqualToString:", @"zh-hant"))
  {
    v30 = [v18 lowercaseString];
    v31 = [v30 hasPrefix:@"zh"];

    if (v31)
    {
      v32 = v18;

      v20 = v32;
    }
  }

  if (!v20)
  {
    v20 = AXLanguageConvertToCanonicalForm();
LABEL_26:
    v23 = 1;
    if (v20)
    {
      goto LABEL_35;
    }

LABEL_27:
    v33 = AXCLanguageToLocales();
    v34 = [v33 allKeys];
    v35 = [v34 containsObject:v14];

    if (v35)
    {
      v20 = v14;
      if (v20)
      {
        goto LABEL_35;
      }
    }

    else
    {
      v20 = 0;
    }

    if (v14)
    {
      v36 = [v14 stringByReplacingOccurrencesOfString:@"_" withString:@"-"];

      v37 = [v36 rangeOfString:@"-"];
      if (v37 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v38 = [v36 substringToIndex:v37];

        v36 = v38;
      }

      v20 = AXLanguageConvertToCanonicalForm();
      v14 = v36;
    }

    goto LABEL_35;
  }

  v23 = 1;
LABEL_35:
  if ((AXLanguageSupportedBySynthesizer() & 1) == 0)
  {
    v39 = [v20 lowercaseString];
    v40 = [v39 rangeOfString:@"-"];
    if (v40 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v41 = 0;
    }

    else
    {
      v42 = v40;
      v43 = @"zh-hans";
      if (([v39 hasPrefix:@"zh-hans"] & 1) == 0)
      {
        v43 = @"zh-hant";
        if (([v39 hasPrefix:@"zh-hant"] & 1) == 0)
        {
          v43 = [v39 substringToIndex:v42];
        }
      }

      if (AXLanguageSupportedBySynthesizer())
      {
        v41 = v43;
        v39 = v41;
      }

      else
      {
        v41 = 0;
        v39 = v43;
      }
    }

    v20 = v41;
  }

  v44 = v23 ^ 1;
  if (v20)
  {
    v44 = 1;
  }

  if (v44)
  {
    v49 = v54;
  }

  else
  {
    v20 = v18;
    v45 = [v10 objectForVariant:28];
    v46 = [v45 BOOLValue];

    v47 = [v10 string];
    v48 = sub_100051170(v47);

    v49 = v54;
    if (v53 & 1) == 0 && ((!v48 | v46))
    {
      v50 = sub_1000516CC(off_1001FDDD0, @"unpronounceable", &stru_1001CBF90, 0);
      v51 = [NSString stringWithFormat:@"%@, %@", v50, v9];

      [v10 setString:v51];
      v9 = v51;
    }
  }

LABEL_53:

  return v20;
}

uint64_t sub_100051014(void *a1, void *a2, void *a3)
{
  v21 = a1;
  v20 = a2;
  v5 = a3;
  v6 = [v5 length];
  if (v6 >= 1)
  {
    v7 = v6;
    v8 = 0;
    v9 = 0;
    v10 = 1;
    while (1)
    {
      v11 = [v5 rangeOfComposedCharacterSequenceAtIndex:{v8, v20}];
      v13 = v12;
      v14 = [v5 substringWithRange:{v11, v12}];
      if (AXLanguageIsSpeakableEmojiString())
      {
        break;
      }

      v15 = [v5 characterAtIndex:v8];
      v16 = +[NSCharacterSet whitespaceAndNewlineCharacterSet];
      v17 = [v16 characterIsMember:v15];

      if ((v17 & 1) == 0)
      {
        if ((v15 - 900) < 0x7C || sub_100051298(v15) || sub_1000511D4(v21, v20, v14))
        {
          break;
        }

        v10 = 0;
        v9 |= v15 == 65532;
      }

      v8 += v13;
      if (v8 >= v7)
      {
        v18 = v9 | v10;
        goto LABEL_13;
      }
    }
  }

  v18 = 1;
LABEL_13:

  return v18 & 1;
}

BOOL sub_100051170(void *a1)
{
  v1 = a1;
  v2 = [v1 length] == 1 && (objc_msgSend(v1, "characterAtIndex:", 0) - 57344) >> 1 < 0xC7F;

  return v2;
}

id sub_1000511D4(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = [v5 speakableCharacters];
  if (v8)
  {
    v9 = [v5 canSpeakString:v7];
  }

  else
  {
    v10 = [VOTSharedWorkspace votSettings];
    v9 = [v10 stringIsSupported:v7 language:v6];
  }

  return v9;
}

BOOL sub_100051298(uint64_t a1)
{
  v2 = objc_allocWithZone(NSString);
  if (a1 >= 0x10000)
  {
    v3 = @"%@%08lx";
  }

  else
  {
    v3 = @"%@%04lx";
  }

  v4 = [v2 initWithFormat:v3, @"UnicodeHex.", a1];
  v5 = sub_1000516CC(@"VOTOutputPunctuation", v4, 0, 0);
  if (v5)
  {
    v6 = 1;
  }

  else
  {
    v7 = [objc_allocWithZone(NSString) initWithFormat:v3, @"UnicodeHex.Math.", a1];

    v5 = sub_1000516CC(@"VOTOutputPunctuation", v7, 0, 0);
    v6 = v5 != 0;
    v4 = v7;
  }

  return v6;
}

uint64_t sub_100051384(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:{@", "}])
  {
    v2 = 1;
  }

  else
  {
    v2 = [v1 isEqualToString:@"·"];
  }

  return v2;
}

id sub_1000513DC(char a1, void *a2, double a3)
{
  v5 = a2;
  v6 = vcvtmd_s64_f64(a3);
  if (v6 > 59 || (a1 & 1) != 0)
  {
    if (v6 > 3599)
    {
      v13 = v6 / 0xE10uLL;
      v17 = v6 % 0xE10uLL;
      v14 = v6 % 0x3CuLL;
      v15 = off_1001FDDD0;
      if ((v17 + 59) > 0x76)
      {
        v18 = v17 / 60;
        if (v14)
        {
          v7 = sub_1000516CC(off_1001FDDD0, @"hours.minutes.seconds.format", 0, v5);
          v22 = v14;
        }

        else
        {
          v7 = sub_1000516CC(off_1001FDDD0, @"hours.minutes.format", 0, v5);
        }

        v21 = v18;
        goto LABEL_22;
      }

      if (v14)
      {
        v16 = @"hours.seconds.format";
        goto LABEL_13;
      }

      v19 = @"hours.format";
    }

    else
    {
      v13 = v6 / 60;
      v14 = v6 % 60;
      v15 = off_1001FDDD0;
      if (v14)
      {
        v16 = @"minutes.seconds.format";
LABEL_13:
        v7 = sub_1000516CC(v15, v16, 0, v5);
        v21 = v14;
LABEL_22:
        [NSString localizedStringWithFormat:v7, v13, v21, v22];
        goto LABEL_23;
      }

      v19 = @"minutes.format";
    }

    v7 = sub_1000516CC(v15, v19, 0, v5);
    goto LABEL_22;
  }

  if (a3 - floor(a3) <= 0.0)
  {
    v7 = sub_1000516CC(off_1001FDDD0, @"seconds.format", 0, v5);
    [NSString localizedStringWithFormat:v7, v6, v21, v22];
    v12 = LABEL_23:;
    goto LABEL_24;
  }

  v7 = AXFormatFloat();
  v8 = +[NSLocale currentLocale];
  v9 = [v8 objectForKey:NSLocaleDecimalSeparator];

  if (v9)
  {
    v10 = [v7 stringByReplacingOccurrencesOfString:v9 withString:@"."];

    v7 = v10;
  }

  v11 = sub_1000516CC(off_1001FDDD0, @"seconds.with.subseconds", 0, v5);
  v12 = [NSString stringWithFormat:v11, v7];

LABEL_24:

  return v12;
}

id sub_1000516CC(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = v7;
  }

  v11 = v10;
  v12 = a4;
  v13 = a1;
  v14 = +[NSBundle mainBundle];
  v15 = AXNSLocalizedStringForLocale();

  if (!v15 || [v15 isEqualToString:v11])
  {
    v16 = v9;

    v15 = v16;
  }

  return v15;
}

double sub_1000517F4(double a1)
{
  v1 = *&xmmword_1001FF150;
  if (*&xmmword_1001FF150 <= *(&xmmword_1001FF150 + 1))
  {
    v1 = *(&xmmword_1001FF150 + 1);
  }

  return v1 * a1;
}

void sub_100051810(BOOL *a1, BOOL *a2, uint64_t a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8, CGFloat a9, CGFloat a10, CGFloat a11, double a12)
{
  v18 = a1;
  v25 = 0.0 - a12;
  if (a3 == 2)
  {
    v34.origin.x = a8;
    v34.origin.y = a9;
    v34.size.width = a10;
    v34.size.height = a11;
    *a1 = a5 - CGRectGetMaxY(v34) >= v25;
    v35.origin.x = a4;
    v35.origin.y = a5;
    v35.size.width = a6;
    v35.size.height = a7;
    v30 = a9 - CGRectGetMaxY(v35);
    goto LABEL_7;
  }

  if (a3 == 3)
  {
    v32.origin.x = a8;
    v32.origin.y = a9;
    v32.size.width = a10;
    v32.size.height = a11;
    *a1 = a4 - CGRectGetMaxX(v32) >= v25;
    v33.origin.x = a4;
    v33.origin.y = a5;
    v33.size.width = a6;
    v33.size.height = a7;
    v30 = a8 - CGRectGetMaxX(v33);
LABEL_7:
    v18 = a2;
    goto LABEL_9;
  }

  v26 = a8;
  if (a3 == 4)
  {
    *a2 = a4 - CGRectGetMaxX(*&v26) >= v25;
    v31.origin.x = a4;
    v31.origin.y = a5;
    v31.size.width = a6;
    v31.size.height = a7;
    v30 = a8 - CGRectGetMaxX(v31);
  }

  else
  {
    *a2 = a5 - CGRectGetMaxY(*&v26) >= v25;
    v36.origin.x = a4;
    v36.origin.y = a5;
    v36.size.width = a6;
    v36.size.height = a7;
    v30 = a9 - CGRectGetMaxY(v36);
  }

LABEL_9:
  *v18 = v30 >= v25;
}

double sub_10005199C(uint64_t a1, double a2, double a3)
{
  v3 = a3;
  if (a1 == 1)
  {
    return *&xmmword_1001FF150 - a2;
  }

  if (a1 == 2)
  {
    return *(&xmmword_1001FF150 + 1) - a3;
  }

  if (a1 != 3)
  {
    return a2;
  }

  return v3;
}

double sub_100051A04(uint64_t a1)
{
  result = *&xmmword_1001FF150;
  if ((a1 - 3) < 2)
  {
    return *(&xmmword_1001FF150 + 1);
  }

  return result;
}

uint64_t sub_100051A24(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 rangeOfComposedCharacterSequenceAtIndex:a1];
  v6 = [v3 substringWithRange:{v4, v5}];
  if (![v6 isEqualToString:@"ツ"] || (v7 = 1, objc_msgSend(v3, "wordStringFromPosition:inDirection:", a1, 1), v8 = objc_claimAutoreleasedReturnValue(), +[VOTOutputManager outputManager](VOTOutputManager, "outputManager"), v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "speechComponent"), v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "emoticonReplacements"), v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v11, "allValues"), v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "containsObject:", v8), v12, v11, v10, v9, v8, (v13 & 1) == 0))
  {
    v7 = 0;
  }

  return v7;
}

id sub_100051B24(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = objc_allocWithZone(NSString);
  if (a1 >= 0x10000)
  {
    v11 = @"%@%08lx";
  }

  else
  {
    v11 = @"%@%04lx";
  }

  v12 = [v10 initWithFormat:v11, v7, a1];
  v13 = sub_1000516CC(v8, v12, 0, v9);
  if ([v13 containsString:@"unicodehex"])
  {
    v14 = AXCFormattedString();
  }

  else
  {
    v14 = v13;
  }

  v15 = v14;

  return v15;
}

id sub_100051C28(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5)
{
  v9 = a4;
  v10 = a3;
  v11 = a2;
  v12 = objc_allocWithZone(NSString);
  if (a1 >= 0x10000)
  {
    v13 = @"%@%08lx.withCount";
  }

  else
  {
    v13 = @"%@%04lx.withCount";
  }

  v14 = [v12 initWithFormat:v13, v11, a1];

  v15 = sub_100051CFC(v10, v14, 0, v9, a5);

  return v15;
}

id sub_100051CFC(void *a1, void *a2, void *a3, void *a4, uint64_t a5)
{
  v9 = a2;
  v10 = a3;
  v11 = v10;
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = v9;
  }

  v13 = v12;
  v14 = a4;
  v15 = a1;
  v16 = +[NSBundle mainBundle];
  v17 = AXNSLocalizedStringForLocale();

  v21 = a5;
  v18 = AXCFormattedString();

  if (!v18 || [v18 isEqualToString:{v13, v21}])
  {
    v19 = v11;

    v18 = v19;
  }

  return v18;
}

id sub_100051E20(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  v6 = 0;
  if (v3 && v4)
  {
    v7 = [v3 rangeOfString:@"-"];
    if (v7 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v8 = [v3 substringToIndex:v7];

      v3 = v8;
    }

    v9 = [v5 rangeOfString:@"-"];
    if (v9 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v10 = [v5 substringToIndex:v9];

      v5 = v10;
    }

    v6 = [v3 isEqualToString:v5];
  }

  return v6;
}

void sub_100051EEC(void *a1, void *a2, void *a3, int a4, int a5, int a6)
{
  v11 = a1;
  v12 = a2;
  v13 = a3;
  v14 = [v11 rowRange];
  if (v15)
  {
    v16 = v14;
    if (v14 != 0x7FFFFFFF && v14 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v17 = v15;
      if ([v11 doesHaveTraits:kAXKeyboardKeyTrait])
      {
        v18 = AXFormatInteger();
        v19 = [v12 addString:v18];

        v20 = [v12 lastAction];
        [v20 setIsVoiceOverGeneratedContent:1];
      }

      else
      {
        v21 = @"one.of.many";
        if (a4)
        {
          v21 = @"item.one.of.many";
        }

        v22 = v21;
        v23 = sub_1000516CC(off_1001FDDD0, v22, 0, v13);
        if ([v23 length])
        {
          v24 = v16 + 1;
          v37 = v16 + 1;
          v38 = v17;
          v39 = v23;
          v25 = AXCFormattedString();
          if (a5)
          {
            v26 = sub_1000516CC(off_1001FDDD0, @"one.of.many.abbreviated", 0, v13);
            v37 = v24;
            v38 = v17;
            v27 = AXCFormattedString();
          }

          else
          {
            v27 = 0;
          }

          v23 = v39;
          if (a6)
          {

            v25 = &stru_1001CBF90;
          }

          v35 = [v12 addString:v25 brailleString:v27 withLanguage:{v13, v37, v38}];
          v36 = [v12 lastAction];
          [v36 setIsVoiceOverGeneratedContent:1];

          if (v27)
          {
            [v12 setGeneratesBraille:1];
          }
        }

        else
        {
          v28 = +[AXSubsystemVoiceOver sharedInstance];
          v29 = [v28 ignoreLogging];

          if ((v29 & 1) == 0)
          {
            v30 = +[AXSubsystemVoiceOver identifier];
            v31 = AXLoggerForFacility();

            v32 = AXOSLogLevelFromAXLogLevel();
            if (os_log_type_enabled(v31, v32))
            {
              v33 = AXColorizeFormatLog();
              v34 = _AXStringForArgs();
              if (os_log_type_enabled(v31, v32))
              {
                *buf = 138543362;
                v41 = v34;
                _os_log_impl(&_mh_execute_header, v31, v32, "%{public}@", buf, 0xCu);
              }
            }
          }
        }
      }
    }
  }
}

void sub_100052220()
{
  v2 = AXSystemRootDirectory();
  v0 = [v2 stringByAppendingString:@"System/Library/PrivateFrameworks/ScreenReaderOutput.framework"];
  v1 = [NSBundle bundleWithPath:v0];
  [v1 load];
}

void sub_1000522A0()
{
  v0 = [NSBundle bundleWithPath:@"/System/Library/AccessibilityBundles/VoiceOverTouch.axbundle"];
  if (v0)
  {
    v1 = v0;
    [v0 load];
    [objc_msgSend(v1 "principalClass")];
    v0 = v1;
  }
}

uint64_t sub_100052300(uint64_t result)
{
  if ((result - 1) >= 6)
  {
    return 0;
  }

  return result;
}

id sub_100052340(void *a1, uint64_t a2, void *a3)
{
  v5 = VOTSharedWorkspace;
  v6 = a3;
  v7 = a1;
  v8 = +[AXSettings sharedInstance];
  v9 = [v8 voiceOverPunctuationGroup];
  v10 = [v5 punctuationGroupForUUID:v9];

  v11 = +[VOTOutputManager outputManager];
  v12 = [v11 speechComponent];

  v13 = [v12 replacePunctuation:v7 punctuationGroup:v10 replaceCommas:a2 languageCode:v6];

  return v13;
}

uint64_t sub_100052438(uint64_t a1)
{
  if (a1 == 1)
  {
    return 1;
  }

  else
  {
    return 2 * (a1 == 2);
  }
}

id sub_100052450(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  if (!v5)
  {
    v12 = 0;
    goto LABEL_50;
  }

  if (!v6)
  {
    v8 = [VOTOutputRequest stringShouldSeparateDueToLanguage:v5 language:0 keyboardLanguageHint:v7];
    if ([v8 count])
    {
      v9 = [v8 objectAtIndexedSubscript:0];
      v10 = [v9 objectForKeyedSubscript:@"language"];

      v11 = +[NSNull null];

      if (v10 == v11)
      {
        v6 = 0;
      }

      else
      {
        v6 = v10;
      }
    }

    else
    {
      v6 = 0;
    }
  }

  v13 = v6;
  v14 = +[AXSettings sharedInstance];
  v15 = [v14 voiceOverLanguageDetectionEnabled];
  v16 = +[VOTOutputManager outputManager];
  v17 = [v16 currentLanguageMap];
  v6 = sub_100050AB0(v13, v5, v15 ^ 1, 0, v17);

  v18 = +[AXSettings sharedInstance];
  v19 = AXSpeechSourceKeyVoiceOver;
  v20 = [v18 speechVoiceIdentifierForLanguage:v6 sourceKey:AXSpeechSourceKeyVoiceOver exists:0];

  v12 = [VOTSharedWorkspace phoneticStringForCharacter:v5 andVoiceIdentifier:v20];
  if ([v6 hasPrefix:@"ko"])
  {
    v21 = 0;
    if (v12)
    {
      goto LABEL_32;
    }

LABEL_21:
    if ((v21 & 1) == 0)
    {
      if ([v5 length] != 1)
      {
LABEL_33:
        v22 = v6;
        if (!v22)
        {
          v22 = [VOTSharedWorkspace selectedLanguage];
          if (!v22)
          {
            v22 = [VOTSharedWorkspace systemSpokenLanguage];
          }
        }

        goto LABEL_36;
      }

      v24 = [v5 mutableCopy];
      CFStringNormalize(v24, kCFStringNormalizationFormD);
      CFStringFold(v24, 0x181uLL, 0);
      v36 = v19;
      v37 = v20;
      if (([(__CFString *)v24 isEqualToString:v5]& 1) != 0 || ![(__CFString *)v24 length])
      {
        v12 = 0;
      }

      else
      {
        v25 = 0;
        v26 = 0;
        do
        {
          v27 = [(__CFString *)v24 substringWithRange:v25, 1];
          v28 = sub_100052450(v27, v6, v7);
          if (!v28)
          {
            v29 = TTSChoseong_JongseongToHangul();
            v28 = sub_100052450(v29, v6, v7);
          }

          v12 = __AXStringForVariables();

          ++v25;
          v26 = v12;
        }

        while (v25 < [(__CFString *)v24 length:v28]);
      }

      v19 = v36;
      v20 = v37;
    }

LABEL_32:
    if (v12)
    {
      goto LABEL_47;
    }

    goto LABEL_33;
  }

  if (!v6)
  {
    v23 = [VOTSharedWorkspace systemSpokenLanguage];
    if ([v23 hasPrefix:@"ko"])
    {
      v21 = 0;
    }

    else
    {
      v21 = [v7 hasPrefix:@"ko"] ^ 1;
    }

    if (v12)
    {
      goto LABEL_32;
    }

    goto LABEL_21;
  }

  if (v12)
  {
    goto LABEL_47;
  }

  v22 = v6;
LABEL_36:
  v30 = v22;
  if ([v5 length] != 1)
  {

    goto LABEL_44;
  }

  if (([(__CFString *)v30 isEqualToString:@"zh-CN"]& 1) != 0 || ([(__CFString *)v30 isEqualToString:@"cmn-CN"]& 1) != 0)
  {
    v31 = @"zh-Hans";
LABEL_40:

    v30 = v31;
    goto LABEL_41;
  }

  if (([(__CFString *)v30 isEqualToString:@"zh-TW"]& 1) != 0 || ([(__CFString *)v30 isEqualToString:@"cmn-TW"]& 1) != 0)
  {
    v31 = @"zh-Hant";
    goto LABEL_40;
  }

  if (([(__CFString *)v30 isEqualToString:@"zh-HK"]& 1) != 0 || [(__CFString *)v30 isEqualToString:@"yue-HK"])
  {
    v31 = @"yue-Hant";
    goto LABEL_40;
  }

LABEL_41:
  v32 = +[AXLanguageManager sharedInstance];
  v12 = [v32 descriptionOfWord:v5 forLanguage:v30];

  if (!v12)
  {
LABEL_44:
    if ([v6 hasPrefix:@"en"])
    {
      v12 = 0;
    }

    else
    {
      v33 = +[AXSettings sharedInstance];
      v34 = [v33 speechVoiceIdentifierForLanguage:@"en" sourceKey:v19 exists:0];

      v12 = [VOTSharedWorkspace phoneticStringForCharacter:v5 andVoiceIdentifier:v34];
      v20 = v34;
    }
  }

LABEL_47:
  if ([v5 isEqualToString:v12])
  {

    v12 = 0;
  }

LABEL_50:

  return v12;
}

uint64_t sub_100052974(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"Kana"])
  {
    v2 = 1;
  }

  else
  {
    v2 = [v1 isEqualToString:@"Kana-Flick"];
  }

  return v2;
}

double sub_1000529CC(void *a1)
{
  v1 = sub_100052974(a1);
  result = 2.25;
  if (v1)
  {
    return 0.25;
  }

  return result;
}

__CFString *sub_1000529F4()
{
  if ([VOTSharedWorkspace inUnitTestMode])
  {
    v0 = @"AppleWeeFee";
  }

  else
  {
    v1 = [[CWFInterface alloc] init];
    [v1 activate];
    v2 = [v1 currentKnownNetworkProfile];
    v0 = [v2 networkName];

    [v1 invalidate];
  }

  return v0;
}

__CFString *sub_100052A90(int a1)
{
  if (a1 <= 4999)
  {
    switch(a1)
    {
      case 1000:
        v2 = @"Screen Changed";

        break;
      case 1001:
        v2 = @"Layout Changed";

        break;
      case 1002:
        v2 = @"Action Performed";

        break;
      case 1004:
        v2 = @"Screen Locked";

        break;
      case 1005:
        v2 = @"Value Changed";

        break;
      case 1006:
        v2 = @"Alert";

        break;
      case 1007:
      case 1072:
        v2 = @"Webpage Loaded";

        break;
      case 1008:
        v2 = @"Announcement";

        break;
      case 1009:
        v2 = @"Element Scrolled by Page";

        break;
      case 1010:
        v2 = @"Auto Correction Mode";

        break;
      case 1011:
        v2 = @"Orientation Changed";

        break;
      case 1012:
        v2 = @"Keyboard Key Selected";

        break;
      case 1013:
        v2 = @"Auto Correction Displayed";

        break;
      case 1014:
        v2 = @"Keyboard Changed";

        break;
      case 1015:
        v2 = @"SpringBoard Return";

        break;
      case 1016:
        v2 = @"Element Moved";

        break;
      case 1017:
        v2 = @"Selection Changed";

        break;
      case 1018:
        v2 = @"First Responder Changed";

        break;
      case 1019:
        v2 = @"Low Battery";

        break;
      case 1020:
        v2 = @"Move to Element";

        break;
      case 1021:
        v2 = @"PID Status Changed";

        break;
      case 1022:
        v2 = @"Web Selection Changed";

        break;
      case 1023:
        v2 = @"Invalid Text Input";

        break;
      case 1026:
        v2 = @"Invalid Status Changed";

        break;
      case 1028:
        v2 = @"HID Event Received";

        break;
      case 1044:
        v2 = @"Update element Visuals";

        break;
      case 1050:
        v2 = @"Unmute Eligible Event Occured";

        break;
      case 1052:
        v2 = @"Text Replacement Occurred";

        break;
      case 1053:
        v2 = @"Native Focus Item Changed With Context";

        break;
      case 1055:
        v2 = @"Screen will change";

        break;
      case 1056:
        v2 = @"Vision engine did produce result";

        break;
      case 1059:
        v2 = @"Screen will wake";

        break;
      case 1061:
        v2 = @"Web Form Control Interaction Start";

        break;
      case 1062:
        v2 = @"Web Form Control Interaction End";

        break;
      case 1063:
        v2 = @"cont. path began";

        break;
      case 1064:
        v2 = @"Live Continuous Sonification Begin";

        break;
      case 1065:
        v2 = @"Live Continuous Sonification Update";

        break;
      case 1066:
        v2 = @"Live Continuous Sonification End";

        break;
      case 1068:
        v2 = @"Captions were displayed onscreen";

        break;
      case 1070:
        v2 = @"Context Menu Status";

        break;
      default:
        goto LABEL_148;
    }

    return v2;
  }

  if (a1 > 5700)
  {
    switch(a1)
    {
      case 5701:
        v2 = @"Siri finished speaking";

        break;
      case 5702:
        v2 = @"Siri started listening";

        break;
      case 5703:
        v2 = @"Siri finished listening";

        break;
      default:
        goto LABEL_148;
    }
  }

  else
  {
    switch(a1)
    {
      case 5000:
        v2 = @"App Was Activated";

        break;
      case 5001:
        v2 = @"Focused Apps Did Change";

        break;
      case 5700:
        v2 = @"Siri started speaking";

        return v2;
      default:
LABEL_148:
        v2 = [NSString stringWithFormat:@"Unknown Notification (%ld)", a1];

        return v2;
    }
  }

  return v2;
}

uint64_t sub_1000530E0(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  v6 = 0;
  if (v3 && v4)
  {
    v7 = [v3 length];
    if ([v5 length] >= v7)
    {
      if (v7)
      {
        v8 = 0;
        v9 = v7 - 1;
        do
        {
          v10 = [v3 indexAtPosition:v8];
          v11 = v10 == [v5 indexAtPosition:v8];
          v6 = v11;
          if (!v11)
          {
            break;
          }

          v11 = v9 == v8++;
        }

        while (!v11);
      }

      else
      {
        v6 = 1;
      }
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

uint64_t sub_1000531A8(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  v6 = 0;
  if (v3 && v4)
  {
    v7 = [v3 length];
    v8 = [v5 length];
    if (v7 >= v8)
    {
      v9 = v8;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      v10 = 0;
      v11 = v9 - 1;
      do
      {
        v12 = [v3 indexAtPosition:v10];
        v13 = v12 == [v5 indexAtPosition:v10];
        v6 = v13;
        if (!v13)
        {
          break;
        }

        v13 = v11 == v10++;
      }

      while (!v13);
    }

    else
    {
      v6 = 1;
    }
  }

  return v6;
}

uint64_t sub_100053268(void *a1, void *a2, int a3)
{
  v5 = a1;
  v6 = a2;
  v7 = [v5 count];
  if (v7 != [v6 count])
  {
    goto LABEL_20;
  }

  if (v7 < 1)
  {
LABEL_17:
    v19 = 1;
    goto LABEL_21;
  }

  v8 = 0;
  while (1)
  {
    v9 = [v5 objectAtIndexedSubscript:v8];
    v10 = [v9 name];

    if (a3)
    {
      v11 = [v5 objectAtIndexedSubscript:v8];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        goto LABEL_16;
      }
    }

    v13 = [v6 objectAtIndexedSubscript:v8];
    v14 = [v13 name];

    if (![v10 isAXAttributedString] || !objc_msgSend(v14, "isAXAttributedString"))
    {
      if (([v10 isEqualToString:v14] & 1) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_15;
    }

    v15 = [v10 attributeValueForKey:UIAccessibilityCustomRotorActionIdentifierToken];
    v16 = [v14 attributeValueForKey:UIAccessibilityCustomRotorActionIdentifierToken];
    v17 = v16;
    v18 = !v15 || v16 == 0;
    if (!v18 && ![v15 isEqualToString:v16])
    {
      break;
    }

LABEL_15:
LABEL_16:

    if (v7 == ++v8)
    {
      goto LABEL_17;
    }
  }

LABEL_19:
LABEL_20:
  v19 = 0;
LABEL_21:

  return v19;
}

id sub_100053424(void *a1, char **a2)
{
  v3 = a1;
  [v3 updateValue];
  v4 = [v3 value];
  v5 = [v3 selectedTextRange];
  v7 = v6;

  if (v5 == 0x7FFFFFFFFFFFFFFFLL || &v5[v7] > [v4 length])
  {
    v5 = [v4 length];
  }

  v8 = [v4 ax_wordFromPosition:v5 - 1 inDirection:1];
  v10 = v9;
  if (&v8[v9] <= [v4 length])
  {
    if (a2)
    {
      *a2 = v8;
      a2[1] = v10;
    }

    v11 = [v4 substringWithRange:{v8, v10}];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

id sub_100053524(void *a1)
{
  v1 = a1;
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:v1 value:&stru_1001CBF90 table:off_1001FDDD0];

  return v3;
}

id sub_1000535B8(void *a1)
{
  v1 = a1;
  v2 = [v1 count];
  v3 = [v1 mutableCopy];
  if ((v2 - 1) >= 0)
  {
    do
    {
      v4 = [v3 objectAtIndexedSubscript:--v2];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 && [v4 isAccessibilityOpaqueElementProvider] && (objc_msgSend(VOTSharedWorkspace, "navigationStyleHonorsGroups") & 1) == 0)
      {
        v5 = [v4 visibleOpaqueElements];
        if ([v5 count])
        {
          [v3 replaceObjectsInRange:v2 withObjectsFromArray:{1, v5}];
        }

        else
        {
          [v3 removeObjectAtIndex:v2];
        }
      }
    }

    while (v2 > 0);
  }

  [v3 sortUsingComparator:&stru_1001C8B58];
  v6 = +[NSCharacterSet alphanumericCharacterSet];
  v7 = [v6 invertedSet];

  +[NSCharacterSet whitespaceAndNewlineCharacterSet];
  v12 = _NSConcreteStackBlock;
  v13 = 3221225472;
  v14 = sub_100053870;
  v16 = v15 = &unk_1001C8B80;
  v17 = v7;
  v8 = v7;
  v9 = v16;
  v10 = [v3 indexesOfObjectsPassingTest:&v12];
  [v3 removeObjectsAtIndexes:{v10, v12, v13, v14, v15}];

  return v3;
}

int64_t sub_1000537A8(id a1, VOTElement *a2, VOTElement *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = +[NSNull null];

  if (v6 == v4 || (+[NSNull null], v7 = objc_claimAutoreleasedReturnValue(), v7, v7 == v5))
  {
    v10 = -1;
  }

  else
  {
    v8 = [(VOTElement *)v4 label];
    v9 = [(VOTElement *)v5 label];
    v10 = [v8 localizedCaseInsensitiveCompare:v9];
  }

  return v10;
}

BOOL sub_100053870(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[NSNull null];

  if (v4 == v3)
  {
    v6 = 1;
  }

  else
  {
    v5 = v3;
    if ([v5 doesHaveTraits:kAXIgnoreItemChooserTrait] & 1) != 0 || (objc_msgSend(v5, "doesHaveTraits:", kAXSpacerTrait))
    {
      v6 = 1;
    }

    else
    {
      v7 = [v5 label];
      v8 = [v7 stringByTrimmingCharactersInSet:*(a1 + 32)];

      v9 = [v5 value];
      v10 = [v9 stringByTrimmingCharactersInSet:*(a1 + 32)];

      v6 = 1;
      if ([v8 length] || objc_msgSend(v10, "length"))
      {
        [v8 rangeOfCharacterFromSet:*(a1 + 40)];
        if (v11 != [v8 length] || !objc_msgSend(v8, "length"))
        {
          v6 = 0;
        }
      }
    }
  }

  return v6;
}

id sub_1000539B8(void *a1, void *a2)
{
  v3 = a1;
  v4 = v3;
  if (!v3)
  {
    *a2 = &off_1001DB6D8;
    v7 = [[AXAttributedString alloc] initWithString:&stru_1001CBF90];
    goto LABEL_24;
  }

  if ([v3 isAXAttributedString])
  {
    v5 = v4;
    if (![v5 hasAttribute:UIAccessibilityTokenPlaceholder])
    {
      v30 = v4;
      v31 = a2;
      v7 = [[AXAttributedString alloc] initWithString:&stru_1001CBF90];
      v12 = objc_opt_new();
      if ([v5 length])
      {
        v13 = 0;
        v14 = &OBJC_IVAR___VOTElementFetcherSearchParameters__direction;
        v15 = &kVOTEventCommandBrailleStatusRouter_ptr;
        v32 = v5;
        do
        {
          v16 = v15[362];
          v17 = [v5 attributesAtIndex:v13 effectiveRange:0];
          v18 = [v16 uiElementWithAXElement:{objc_msgSend(v17, "objectForKey:", UIAccessibilityTokenAttachment)}];
          v19 = [v14 + 546 elementWithUIElement:v18];

          if (v19)
          {
            v20 = [v19 label];
            [v7 appendString:v20];
            if ([v20 length])
            {
              v21 = v15;
              v22 = v7;
              v23 = v14;
              v24 = 0;
              do
              {
                v25 = [NSNumber numberWithUnsignedInteger:v13];
                [v12 addObject:v25];

                ++v24;
              }

              while (v24 < [v20 length]);
              v14 = v23;
              v7 = v22;
              v15 = v21;
              v5 = v32;
            }
          }

          else
          {
            v20 = [v5 substringWithRange:{v13, 1}];
            [v7 appendString:v20];
            v26 = [NSNumber numberWithUnsignedInteger:v13];
            [v12 addObject:v26];
          }

          ++v13;
        }

        while (v13 < [v5 length]);
      }

      v27 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v5 length]);
      [v12 addObject:v27];

      if (v31)
      {
        v28 = v12;
        *v31 = v12;
      }

      v4 = v30;
      goto LABEL_23;
    }

    *a2 = &off_1001DB6F0;
    v6 = v5;
  }

  else
  {
    v5 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v4, "length")}];
    if ([v4 length])
    {
      v8 = 0;
      do
      {
        v9 = [NSNumber numberWithUnsignedInteger:v8];
        [v5 addObject:v9];

        ++v8;
      }

      while (v8 < [v4 length]);
    }

    v10 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v4 length]);
    [v5 addObject:v10];

    v11 = v5;
    *a2 = v5;
    v6 = [[AXAttributedString alloc] initWithString:v4];
  }

  v7 = v6;
LABEL_23:

LABEL_24:

  return v7;
}

unint64_t sub_100053D48(unint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 count];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    do
    {
      v7 = [v3 objectAtIndexedSubscript:(v6 + v5) >> 1];
      v8 = [v7 unsignedIntegerValue];

      if (v8 < a1)
      {
        v6 = ((v6 + v5) >> 1) + 1;
      }

      else
      {
        v5 = (v6 + v5) >> 1;
      }
    }

    while (v6 < v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

unint64_t sub_100053DE4(unint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = sub_100053D48(a1, v5);
  sub_100053D48(a1 + a2, v5);

  return v6;
}

id sub_100053E44(unint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 count])
  {
    if ([v3 count] <= a1)
    {
      [v3 lastObject];
    }

    else
    {
      [v3 objectAtIndex:a1];
    }
    v5 = ;
    v4 = [v5 unsignedIntegerValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id sub_100053ECC(unint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = sub_100053E44(a1, v5);
  sub_100053E44(a1 + a2, v5);

  return v6;
}

void sub_100055260(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = &stru_1001CBF90;
  }

  v6 = VOTLogHandwriting();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v32 = 138543362;
    v33 = v3;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "handwriting element: %{public}@", &v32, 0xCu);
  }

  [v3 updateGesturedTextInputAttributes];
  v7 = [v3 gesturedTextInputAttributes];
  if ([v7 shouldPlayKeyboardSecureClickSound])
  {
    v8 = +[VOTOutputManager outputManager];
    v9 = +[VOSOutputEvent DidEnterSecureText];
    [v8 sendEvent:v9];
  }

  if ([v7 acceptsRawInput])
  {
    if ([v3 doesHaveAllTraits:kAXSecureTextFieldTrait | kAXWebContentTrait])
    {
      v10 = 0;
    }

    else
    {
      v16 = [*(a1 + 40) currentInputString];
      v10 = [v16 commonPrefixWithString:v5 options:0];
    }

    v12 = -[__CFString substringFromIndex:](v5, "substringFromIndex:", [v10 length]);
    v17 = [v10 length];
    v18 = [*(a1 + 40) currentInputString];
    v19 = [v18 length];

    if (v17 == v19)
    {
      if ([v12 length])
      {
        [v3 insertText:v12 source:{objc_msgSend(*(a1 + 40), "valueChangeOriginator")}];
      }
    }

    else
    {
      v21 = *(a1 + 40);
      v22 = [v10 length];
      v23 = [*(a1 + 40) currentInputString];
      v24 = [v21 _numberOfCharactersToDeleteToDesiredLength:v22 fromString:v23];

      [v3 replaceCharactersAtCursor:v24 withString:v12 source:{objc_msgSend(*(a1 + 40), "valueChangeOriginator")}];
    }

    [*(a1 + 40) setCurrentInputString:v5];
LABEL_35:

    goto LABEL_36;
  }

  if ([v3 doesHaveTraits:kAXWebContentTrait])
  {
    v11 = [*(a1 + 40) currentInputString];
    v10 = [v11 lowercaseString];

    v12 = [(__CFString *)v5 lowercaseString];
    v13 = 0;
    if ([v10 length])
    {
      do
      {
        if (v13 >= [v12 length])
        {
          break;
        }

        v14 = [v10 characterAtIndex:v13];
        if (v14 != [v12 characterAtIndex:v13])
        {
          break;
        }

        ++v13;
      }

      while (v13 < [v10 length]);
    }

    if (v13 >= [v12 length])
    {
      v15 = &stru_1001CBF90;
    }

    else
    {
      v15 = [v12 substringWithRange:{v13, 1}];
    }

    v25 = [*(a1 + 40) localizedWebRotorMap];
    v26 = [v25 objectForKey:v15];

    if (v26)
    {
      [*(a1 + 40) setRotorType:{objc_msgSend(v26, "integerValue")}];
      v27 = +[VOTRotor stringForRotorType:](VOTRotor, "stringForRotorType:", [*(a1 + 40) rotorType]);
      [VOTOutputRequest sendRequestWithString:v27];

      [*(a1 + 40) clearCurrentString];
    }

    else if ([(__CFString *)v15 length])
    {
      v31 = sub_1000511CC(off_1001FDDD0, @"handwrite.notrecognized", 0);
      [VOTOutputRequest sendRequestWithString:v31];

      [*(a1 + 40) setCurrentInputString:v5];
    }

    goto LABEL_35;
  }

  if ([v3 doesHaveTraits:kAXTableIndexTrait])
  {
    v20 = [(__CFString *)v5 lowercaseString];

    [v3 jumpToTableIndex:v20];
    [*(a1 + 40) clearCurrentString];
    v5 = v20;
  }

  else
  {
    v28 = [*(a1 + 40) nameSearcherMonitorElement];
    v29 = [v3 isEqual:v28];

    if ((v29 & 1) == 0)
    {
      [*(a1 + 40) setNameSearcherMonitorElement:v3];
      [*(a1 + 40) setNameSearcher:0];
    }

    [*(a1 + 40) _prepareNameSearcherForElement:v3];
    [*(a1 + 40) setPendingInputString:v5];
    v30 = [*(a1 + 40) nameSearcher];
    [v30 updateMatchingItems];

    [*(a1 + 40) setCurrentInputString:v5];
  }

LABEL_36:
}

void sub_100055868(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100055880(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100055898(uint64_t a1, void *a2)
{
  *(*(*(a1 + 32) + 8) + 40) = [a2 gesturedTextInputAttributes];

  return _objc_release_x1();
}

void sub_100055AA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100055AC0(uint64_t a1, void *a2)
{
  v19 = a2;
  [v19 updateGesturedTextInputAttributes];
  v3 = [v19 gesturedTextInputAttributes];
  if ([*(a1 + 32) isNextBrailleTableEvent:*(a1 + 40)])
  {
    v4 = [*(a1 + 32) performNextBrailleTableCommand];
    v5 = a1 + 48;
LABEL_3:
    *(*(*v5 + 8) + 24) = v4;
    goto LABEL_4;
  }

  if ([v3 acceptsRawInput])
  {
    v5 = a1 + 48;
    if ((*(*(*(a1 + 48) + 8) + 24) & 1) == 0)
    {
      v4 = [*(a1 + 32) _processRawInputEvent:*(a1 + 40) forElement:v19 withAttributes:v3];
      goto LABEL_3;
    }
  }

  else
  {
    v14 = [v19 doesHaveTraits:kAXWebContentTrait];
    v15 = [*(a1 + 32) gesturesControlRotor];
    if (v14)
    {
      if (v15)
      {
        *(*(*(a1 + 48) + 8) + 24) = [*(a1 + 32) _processRotorEvent:*(a1 + 40)];
      }

      v5 = a1 + 48;
      if ((*(*(*(a1 + 48) + 8) + 24) & 1) == 0)
      {
        v4 = [*(a1 + 32) _processWebRotorEvent:*(a1 + 40)];
        goto LABEL_3;
      }
    }

    else
    {
      if (v15)
      {
        *(*(*(a1 + 48) + 8) + 24) = [*(a1 + 32) _processRotorEvent:*(a1 + 40)];
      }

      v5 = a1 + 48;
      if ((*(*(*(a1 + 48) + 8) + 24) & 1) == 0)
      {
        [*(a1 + 32) _prepareNameSearcherForElement:v19];
        v4 = [*(a1 + 32) _processSearchEvent:*(a1 + 40) forElement:v19];
        goto LABEL_3;
      }
    }
  }

LABEL_4:
  if (*(*(*(a1 + 48) + 8) + 24))
  {
    goto LABEL_24;
  }

  v6 = [*(a1 + 40) command];
  if ([v6 isEqualToString:kVOTEventCommandToggleMute])
  {
    goto LABEL_22;
  }

  v7 = [*(a1 + 40) command];
  if ([v7 isEqualToString:kVOTEventCommandToggleScreenCurtain])
  {
LABEL_21:

LABEL_22:
LABEL_23:
    *(*(*(a1 + 48) + 8) + 24) = 1;
    goto LABEL_24;
  }

  v8 = [*(a1 + 40) command];
  if ([v8 isEqualToString:kVOTEventCommandCopySpeechToClipboard])
  {
LABEL_20:

    goto LABEL_21;
  }

  v9 = [*(a1 + 40) command];
  if ([v9 isEqualToString:kVOTEventCommandStartHelp])
  {
LABEL_19:

    goto LABEL_20;
  }

  v10 = [*(a1 + 40) command];
  if ([v10 isEqualToString:kVOTEventCommandItemChooser])
  {
LABEL_18:

    goto LABEL_19;
  }

  v11 = [*(a1 + 40) command];
  if ([v11 isEqualToString:kVOTEventCommandFirstElement])
  {
LABEL_17:

    goto LABEL_18;
  }

  v12 = [*(a1 + 40) command];
  if ([v12 isEqualToString:kVOTEventCommandLastElement])
  {
LABEL_16:

    goto LABEL_17;
  }

  v13 = [*(a1 + 40) command];
  if ([v13 isEqualToString:kVOTEventCommandCenterElement])
  {
LABEL_15:

    goto LABEL_16;
  }

  v18 = [*(a1 + 40) command];
  if ([v18 isEqualToString:kVOTEventCommandIdle])
  {

    goto LABEL_15;
  }

  v16 = [*(a1 + 40) command];
  v17 = [v16 isEqualToString:kVOTEventCommandTracking];

  if (v17)
  {
    goto LABEL_23;
  }

LABEL_24:
}

void sub_1000571E4(uint64_t a1)
{
  v4 = [*(a1 + 32) messageForSelectingItem:*(a1 + 40)];
  v2 = [VOTSharedWorkspace selectedLanguage];
  v3 = sub_1000095FC(v4, 1, v2);

  [*(a1 + 48) setNameSearcher:0];
  [*(a1 + 48) didSelectItem];
}

void sub_100057D10(uint64_t a1)
{
  v2 = [*(a1 + 32) repeaterTimer];
  [v2 cancel];

  *(*(a1 + 32) + 16) = 0;
  *(*(a1 + 32) + 8) = 4;
  *(*(a1 + 32) + 24) = 1;
}

void sub_10005A068(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 128));
  _Unwind_Resume(a1);
}

id sub_10005A0C0(uint64_t a1, void *a2)
{
  if (a2)
  {
    return [a2 performSelector:"_updateForContinuityStateChange" withObject:0 afterDelay:0.0];
  }

  return result;
}

void sub_10005A0E0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateContinuousPathTimeout];
}

void sub_10005A120(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained updateRotorForCurrentElement:1 completion:0];
}

void sub_10005A168(uint64_t a1)
{
  v5 = +[AXSettings sharedInstance];
  v2 = [v5 voiceOverDirectTouchEnabledApps];
  v3 = [v2 mutableCopy];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setDirectTouchApps:v3];
}

void sub_10005A214(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateFlashlightEnabledStatus];
}

void sub_10005A254(uint64_t a1, uint64_t a2)
{
  if (a2 == 3)
  {
    v3 = VOTLogLayoutChange();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      sub_10012A5E4();
    }

    Current = CFAbsoluteTimeGetCurrent();
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained lastHomeButtonPressTime];
    v7 = Current - v6;

    if (v7 >= 1.0)
    {
      v8 = objc_loadWeakRetained((a1 + 32));
      [v8 handleNotification:1000 withData:0 forElement:0];
    }

    else
    {
      v8 = VOTLogLayoutChange();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        sub_10012A620();
      }
    }
  }
}

void sub_10005A320(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setSpringBoardActionHandlerIdentifier:v3];
}

void sub_10005F918(id a1)
{
  qword_1001FEC48 = [NSSet setWithObjects:kVOTEventCommandHomeButtonPress, kVOTEventCommandSystemShowNotificationCenter, kVOTEventCommandSystemShowControlCenter, kVOTEventCommandSystemActivateSpeakScreen, kVOTEventCommandSystemToggleDock, kVOTEventCommandSystemToggleAppSwitcher, kVOTEventCommandSystemActivateLockButton, kVOTEventCommandSystemShowSpotlight, kVOTEventCommandSystemActivateAccessibilityShortcut, kVOTEventCommandSystemToggleReachability, kVOTEventCommandSystemTakeScreenshot, kVOTEventCommandSystemSwitchToPreviousApp, kVOTEventCommandSystemSwitchToNextApp, kVOTEventCommandEdgeRight, kVOTEventCommandEdgeLeft, kVOTEventCommandEdgeTop, kVOTEventCommandEdgeBottom, kVOTEventCommandBottomEdgePanDown, kVOTEventCommandBottomEdgePanShort, kVOTEventCommandBottomEdgePanLong, kVOTEventCommandTopEdgePanDown, kVOTEventCommandTopEdgePanShort, kVOTEventCommandTopEdgePanLong, kVOTEventCommandSystemToggleTypeToSiri, 0];

  _objc_release_x1();
}

void sub_10005FCE4(id a1)
{
  v3[0] = kVOTEventCommandSimpleTap;
  v3[1] = kVOTEventCommandBottomEdgePanShort;
  v3[2] = kVOTEventCommandBottomEdgePanLong;
  v3[3] = kVOTEventCommandTopEdgePanShort;
  v3[4] = kVOTEventCommandTopEdgePanLong;
  v3[5] = kVOTEventCommandSearchRotorRight;
  v3[6] = kVOTEventCommandSearchRotorLeft;
  v3[7] = kVOTEventCommandSearchRotorUp;
  v3[8] = kVOTEventCommandSearchRotorDown;
  v3[9] = kVOTEventCommandNextElement;
  v3[10] = kVOTEventCommandPreviousElement;
  v3[11] = kVOTEventCommandTracking;
  v3[12] = kVOTEventCommandEscape;
  v3[13] = kVOTEventCommandToggleSpeaking;
  v3[14] = kVOTEventCommandSimulatedLongPress;
  v3[15] = kVOTEventCommandStartStopToggle;
  v3[16] = kVOTEventCommandScrollUpPage;
  v3[17] = kVOTEventCommandScrollDownPage;
  v3[18] = kVOTEventCommandScrollLeftPage;
  v3[19] = kVOTEventCommandScrollRightPage;
  v3[20] = kVOTEventCommandToggleScreenCurtain;
  v3[21] = kVOTEventCommandToggleMute;
  v3[22] = @"RotorWords";
  v1 = [NSArray arrayWithObjects:v3 count:23];
  v2 = qword_1001FEC58;
  qword_1001FEC58 = v1;
}

void sub_1000605D0(id a1)
{
  qword_1001FEC68 = dispatch_queue_create("UserEventOccurred", 0);

  _objc_release_x1();
}

void sub_100060610(id a1)
{
  v1 = +[VOTUserEventManager sharedInstance];
  [v1 userEventOccurred];
}

void sub_1000615B0(id a1)
{
  v3[0] = kVOTEventCommandNextElement;
  v3[1] = kVOTEventCommandPreviousElement;
  v1 = [NSArray arrayWithObjects:v3 count:2];
  v2 = qword_1001FEC78;
  qword_1001FEC78 = v1;
}

void sub_100061F40(id a1)
{
  v1 = [NSSet alloc];
  v5[0] = kAXScreenChangePopup;
  v5[1] = kAXForceUpdateChangeToken;
  v5[2] = kAXPerformElementUpdateImmediatelyToken;
  v5[3] = kAXAnnouncementTypeStopSpeech;
  v5[4] = kAXScreenChangeMenuBar;
  v2 = [NSArray arrayWithObjects:v5 count:5];
  v3 = [v1 initWithArray:v2];
  v4 = qword_1001FEC88;
  qword_1001FEC88 = v3;
}

uint64_t sub_100062B08(uint64_t a1)
{
  *(*(a1 + 32) + 352) = [objc_allocWithZone(SCRCTargetSelectorTimer) initWithTarget:*(a1 + 32) selector:"_handleInvalidStatusChanged:" thread:*(*(a1 + 32) + 1656)];

  return _objc_release_x1();
}

BOOL sub_100063074(id a1, VOTElement *a2)
{
  v2 = a2;
  if ([(VOTElement *)v2 isSystemApp]&& [(VOTElement *)v2 isSiriTalkingOrListening])
  {
    v3 = 1;
  }

  else
  {
    v3 = [(VOTElement *)v2 isDictationListening];
  }

  return v3;
}

uint64_t sub_100065B90(uint64_t a1, void *a2)
{
  v3 = a2;
  if (([v3 readingContentCausesPageTurn] & 1) != 0 || (objc_msgSend(v3, "isReadingContent") & 1) != 0 || (objc_msgSend(v3, "includeDuringContentReading") & 1) != 0 || objc_msgSend(v3, "doesHaveTraits:", kAXWebContentTrait))
  {
    v4 = [v3 pageContent];
    v5 = [v4 isEqualToString:*(a1 + 32)] ^ 1;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

$85E40A55691FE2F31975A98F57E3065D sub_100065F90(id a1, VOTElement *a2, VOTElement *a3)
{
  v3 = a2;
  if ([(VOTElement *)v3 readingContentCausesPageTurn]|| [(VOTElement *)v3 isReadingContent])
  {
    v4 = 1;
  }

  else
  {
    v4 = [(VOTElement *)v3 includeDuringContentReading];
  }

  v5 = v4;
  v6 = 0;
  result.var1 = v6;
  result.var0 = v5;
  return result;
}

BOOL sub_100067ACC(id a1, _VOTCopiedSpeechItem *a2, unint64_t a3, BOOL *a4)
{
  v4 = [(_VOTCopiedSpeechItem *)a2 timestamp:a3];
  [v4 timeIntervalSinceNow];
  v6 = fabs(v5) < 7200.0;

  return v6;
}

uint64_t sub_100068050(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100068068(uint64_t a1, void *a2)
{
  v4 = a2;
  if ((([v4 isReadingContent] & 1) != 0 || objc_msgSend(v4, "includeDuringContentReading")) && (objc_msgSend(v4, "isEqual:", *(a1 + 32)) & 1) == 0)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }

  return 0;
}

$85E40A55691FE2F31975A98F57E3065D sub_1000680FC(id a1, VOTElement *a2, VOTElement *a3)
{
  v3 = a2;
  if ([(VOTElement *)v3 readingContentCausesPageTurn]|| [(VOTElement *)v3 isReadingContent])
  {
    v4 = 1;
  }

  else
  {
    v4 = [(VOTElement *)v3 includeDuringContentReading];
  }

  v5 = v4;
  v6 = 0;
  result.var1 = v6;
  result.var0 = v5;
  return result;
}

void sub_100068F88(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 2168));
  [WeakRetained directInteractionElementsUpdated:0];
}

void sub_10006992C(uint64_t a1)
{
  v2 = +[VOTItemChooserAdapter sharedInstance];
  [v2 showItemChooser:1 withItems:*(a1 + 32)];

  *(*(a1 + 40) + 1766) = 1;
}

void sub_100069984(uint64_t a1, void *a2)
{
  v8 = a2;
  v3 = [objc_allocWithZone(NSMutableArray) initWithCapacity:{objc_msgSend(*(a1 + 32), "count")}];
  if ([*(a1 + 32) count])
  {
    v4 = 0;
    do
    {
      v5 = [*(a1 + 32) objectAtIndex:v4];
      if ([v8 count] > v4)
      {
        v6 = [v8 objectAtIndex:v4];
        v10 = CGRectFromString(v6);
        v7 = [v5 regionDescriptionWithFrame:{v10.origin.x, v10.origin.y, v10.size.width, v10.size.height}];
        [v3 addObject:v7];
      }

      ++v4;
    }

    while ([*(a1 + 32) count] > v4);
  }

  [*(a1 + 40) setObject:v3 forKey:@"regionDescriptions"];
  (*(*(a1 + 48) + 16))();
}

$85E40A55691FE2F31975A98F57E3065D sub_100069E70(id a1, VOTElement *a2, VOTElement *a3)
{
  v3 = [(VOTElement *)a2 identifier];
  v4 = [v3 isEqualToString:@"SFFindOnPageBarIdentifier"];

  v5 = v4;
  v6 = 0;
  result.var1 = v6;
  result.var0 = v5;
  return result;
}

id sub_10006A208(uint64_t a1)
{
  result = [*(*(a1 + 32) + 1656) performSelector:"_updateCursorFrameForElementIfNeeded:" onTarget:*(a1 + 32) count:1 objects:{*(a1 + 40), 0}];
  if (*(a1 + 48) == 1)
  {
    v3 = *(a1 + 40);

    return [v3 performSimpleTap];
  }

  return result;
}

void sub_10006AA84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_10006B84C(uint64_t a1, int a2)
{
  if (a2)
  {
    v2 = @"element.on.text";
  }

  else
  {
    v2 = @"element.off.text";
  }

  return sub_1000516CC(off_1001FDDD0, v2, 0, *(a1 + 32));
}

id sub_10006B880(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

id sub_10006B8C4(uint64_t a1, void *a2)
{
  v3 = [a2 uuid];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

void sub_10006C0C4(uint64_t a1)
{
  if (atomic_fetch_add((*(a1 + 32) + 1640), 0) == *(a1 + 56))
  {
    v2 = +[AXSettings sharedInstance];
    v3 = [v2 voiceOverRotorSummaryFeedback];

    v4 = +[AXSettings sharedInstance];
    v5 = [v4 voiceOverRotorSummaryFeedback];

    if (v5 & 2 | (v3 & 0x10))
    {
      if ((v5 & 2) != 0)
      {
        v6 = 2;
      }

      else
      {
        v6 = 10;
      }

      if ((v3 & 0x10) != 0)
      {
        v7 = v6;
      }

      else
      {
        v7 = 6;
      }

      v8 = sub_1000095FC(*(a1 + 40), v7, *(a1 + 48));
    }
  }
}

void sub_10006C77C(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  [v4 frame];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  [v3 frame];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v32.origin.x = v6;
  v32.origin.y = v8;
  v32.size.width = v10;
  v32.size.height = v12;
  v33.origin.x = v14;
  v33.origin.y = v16;
  v33.size.width = v18;
  v33.size.height = v20;
  if (!CGRectEqualToRect(v32, v33))
  {
    v21 = +[VOTElement systemAppApplication];
    v22 = [v21 applicationOrientation];

    if ((v22 - 3) >= 2)
    {
      if (v10 > *&xmmword_1001FF150 + -50.0)
      {
        goto LABEL_2;
      }
    }

    else if (v12 > *(&xmmword_1001FF150 + 1) + -50.0)
    {
      goto LABEL_2;
    }

    v31 = 0;
    v23 = kAXLaunchIconTrait;
    v24 = [v4 doesHaveTraits:kAXLaunchIconTrait];
    v25 = 10.0;
    if ((v24 & 1) == 0)
    {
      v26 = [v3 doesHaveTraits:{v23, 10.0}];
      v25 = 0.0;
      if (v26)
      {
        v25 = 10.0;
      }
    }

    sub_100051810(&v31, &v31 + 1, v22, v14, v16, v18, v20, v6, v8, v10, v12, v25);
    if (HIBYTE(v31) == 1)
    {
      v27 = +[VOTOutputManager outputManager];
      v28 = +[VOSOutputEvent DidWrapForwards];
      [v27 sendEvent:v28];
    }

    if (v31 == 1)
    {
      v29 = +[VOTOutputManager outputManager];
      v30 = +[VOSOutputEvent DidWrapBackwards];
      [v29 sendEvent:v30];
    }
  }

LABEL_2:
}

id sub_10006E03C(uint64_t a1)
{
  v2 = kAXWebContentTrait;
  if (![*(a1 + 32) doesHaveTraits:kAXWebContentTrait])
  {
    return 0;
  }

  if ([*(a1 + 40) doesHaveTraits:v2])
  {
    return 0;
  }

  v3 = [*(a1 + 32) immediateRemoteParent];
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = kAXCausesPageTurnTrait;
  while (![v4 doesHaveTraits:v5])
  {
    v6 = [v4 directParent];

    v4 = v6;
    if (!v6)
    {
      return 0;
    }
  }

  v8 = [v4 scrollNextPage];

  return v8;
}

$85E40A55691FE2F31975A98F57E3065D sub_10006E160(id a1, VOTElement *a2, VOTElement *a3)
{
  v3 = a2;
  v4 = +[VOTTextSearchManager sharedManager];
  v5 = [v4 currentSearchValue];

  if ([v5 length])
  {
    v6 = [(VOTElement *)v3 label];
    if ([v6 length] && (v7 = 1, objc_msgSend(v6, "rangeOfString:options:", v5, 1) != 0x7FFFFFFFFFFFFFFFLL))
    {
      v9 = 2;
    }

    else
    {
      v8 = [(VOTElement *)v3 value];
      if ([v8 length] && (v7 = 1, objc_msgSend(v8, "rangeOfString:options:", v5, 1) != 0x7FFFFFFFFFFFFFFFLL))
      {
        v9 = 2;
      }

      else
      {
        v7 = 0;
        v9 = 0;
      }
    }
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  v10 = v7;
  v11 = v9;
  result.var1 = v11;
  result.var0 = v10;
  return result;
}

$85E40A55691FE2F31975A98F57E3065D sub_10006E2B4(id a1, VOTElement *a2, VOTElement *a3)
{
  v3 = 0;
  v4 = 0;
  result.var1 = v4;
  result.var0 = v3;
  return result;
}

BOOL sub_10006E358(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (![VOTSharedWorkspace navigationStyleHonorsGroups])
  {
    goto LABEL_35;
  }

  v7 = [v6 groupedParent];
  if (v7)
  {
    v8 = v7;
    v9 = [v6 groupedParent];
    v10 = [v5 groupedParent];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      v12 = 0;
      goto LABEL_29;
    }
  }

  if (([v5 isAccessibleGroup] & 1) == 0)
  {
LABEL_35:
    if (![v5 doesHaveTraits:kAXStaticTextTrait] || !objc_msgSend(v5, "doesHaveTraits:", kAXWebContentTrait))
    {
LABEL_18:
      if (![v5 doesHaveTraits:kAXImageTrait] || (objc_msgSend(v5, "doesHaveTraits:", kAXLinkTrait) & 1) != 0 || (objc_msgSend(v5, "doesHaveTraits:", kAXHeaderTrait) & 1) != 0)
      {
        goto LABEL_24;
      }

      v22 = [VOTSharedWorkspace navigateImagesOption];
      if (v22 != 3)
      {
        if (v22 != 2 || ([v5 originalLabel], v23 = objc_claimAutoreleasedReturnValue(), v24 = objc_msgSend(v23, "length"), v23, v24))
        {
LABEL_24:
          v12 = v5 != 0;
          goto LABEL_29;
        }

        v26 = VOTLogCommon();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
        {
          *v27 = 0;
          _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "Skipping image with no label", v27, 2u);
        }
      }

LABEL_28:
      v12 = 0;
      goto LABEL_29;
    }

    v13 = [v5 nextElement];
    v14 = kAXToggleTrait;
    v15 = kAXRadioButtonTrait;
    if (([v13 doesHaveTraits:kAXRadioButtonTrait | kAXToggleTrait] & 1) == 0)
    {
      v16 = [v13 titleElements];
      if (([v16 containsObject:v5] & 1) != 0 || objc_msgSend(*(a1 + 32), "shouldElement:beCombined:combineLinks:", v13, v5, 0) && !objc_msgSend(v16, "count"))
      {
        goto LABEL_27;
      }
    }

    v16 = [v5 previousElement];
    if (![v16 doesHaveTraits:v15 | v14] || !objc_msgSend(*(a1 + 32), "shouldElement:beCombined:combineLinks:", v16, v5, 0))
    {
LABEL_17:
      v20 = [v5 application];
      v21 = [v20 elementActsAsTitleElement:v5];

      if (v21)
      {
        goto LABEL_28;
      }

      goto LABEL_18;
    }

    v17 = [v16 titleElements];
    if ([v17 count])
    {
      v18 = [v16 titleElements];
      v19 = [v18 containsObject:v5];

      if ((v19 & 1) == 0)
      {
        goto LABEL_17;
      }
    }

    else
    {
    }

LABEL_27:

    goto LABEL_28;
  }

  v12 = 1;
LABEL_29:

  return v12;
}

$85E40A55691FE2F31975A98F57E3065D sub_10006E6AC(id a1, VOTElement *a2, VOTElement *a3)
{
  v3 = [(VOTElement *)a2 doesHaveTraits:kAXImageTrait];
  v4 = 0;
  result.var1 = v4;
  result.var0 = v3;
  return result;
}

$85E40A55691FE2F31975A98F57E3065D sub_10006E70C(id a1, VOTElement *a2, VOTElement *a3)
{
  v3 = [(VOTElement *)a2 doesHaveAllTraits:kAXLinkTrait | kAXVisitedTrait];
  v4 = 0;
  result.var1 = v4;
  result.var0 = v3;
  return result;
}

$85E40A55691FE2F31975A98F57E3065D sub_10006E77C(id a1, VOTElement *a2, VOTElement *a3)
{
  v3 = a2;
  if ([(VOTElement *)v3 doesHaveTraits:kAXHeaderTrait])
  {
    v4 = 1;
  }

  else
  {
    v4 = [(VOTElement *)v3 servesAsHeadingLandmark];
  }

  v5 = v4;
  v6 = 0;
  result.var1 = v6;
  result.var0 = v5;
  return result;
}

void sub_10006E890(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

BOOL sub_10006E8A8(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 doesHaveTraits:kAXHeaderTrait])
  {
    v4 = [v3 value];
    v5 = [v4 intValue];

    v6 = *(*(*(a1 + 32) + 8) + 24);
    v7 = v6 - 46;
    v8 = v6 - 16;
    if (v7 < 5)
    {
      v9 = v7 + 2;
    }

    else
    {
      v8 = 29;
      v9 = 1;
    }

    **(a1 + 40) = v8;
    v10 = v5 == v9;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

$85E40A55691FE2F31975A98F57E3065D sub_10006E980(id a1, VOTElement *a2, VOTElement *a3)
{
  v3 = a2;
  if ([(VOTElement *)v3 doesHaveTraits:kAXVisitedTrait])
  {
    v4 = 0;
  }

  else
  {
    v4 = [(VOTElement *)v3 doesHaveTraits:kAXLinkTrait];
  }

  v5 = v4;
  v6 = 0;
  result.var1 = v6;
  result.var0 = v5;
  return result;
}

$85E40A55691FE2F31975A98F57E3065D sub_10006EA14(id a1, VOTElement *a2, VOTElement *a3)
{
  v3 = [(VOTElement *)a2 doesHaveTraits:kAXLinkTrait];
  v4 = 0;
  result.var1 = v4;
  result.var0 = v3;
  return result;
}

uint64_t sub_10006EB1C(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 doesHaveTraits:kAXStaticTextTrait])
  {
    v4 = [v3 label];
    [v4 rangeOfCharacterFromSet:*(a1 + 32)];
    if (v5 == [v4 length])
    {
    }

    else
    {
      v6 = [v3 doesHaveTraits:kAXHeaderTrait | kAXLinkTrait];

      if (!v6)
      {
        v7 = 1;
        goto LABEL_6;
      }
    }
  }

  v7 = 0;
LABEL_6:

  return v7;
}

$85E40A55691FE2F31975A98F57E3065D sub_10006EC14(id a1, VOTElement *a2, VOTElement *a3)
{
  v3 = [(VOTElement *)a2 traits];
  v4 = ((kAXButtonTrait | kAXTextEntryTrait | kAXPickerElementTrait | kAXPopupButtonTrait | kAXRadioButtonTrait | kAXTabButtonTrait | kAXSecureTextFieldTrait) & v3) != 0;
  v5 = 0;
  result.var1 = v5;
  result.var0 = v4;
  return result;
}

$85E40A55691FE2F31975A98F57E3065D sub_10006ECD8(id a1, VOTElement *a2, VOTElement *a3)
{
  v3 = a2;
  v4 = [(VOTElement *)v3 containerTypes];
  if ([v4 containsObject:&off_1001D9D58])
  {
    v5 = 1;
    if (![(VOTElement *)v3 isElementFirstElement:1 orLastElement:0 withType:4])
    {
      v5 = [(VOTElement *)v3 isElementFirstElement:1 orLastElement:0 withType:0x2000];
    }
  }

  else
  {
    v6 = [(VOTElement *)v3 containerTypes];
    if ([v6 containsObject:&off_1001D9D70])
    {
      v5 = 1;
      if (![(VOTElement *)v3 isElementFirstElement:1 orLastElement:0 withType:4])
      {
        v5 = [(VOTElement *)v3 isElementFirstElement:1 orLastElement:0 withType:0x2000];
      }
    }

    else
    {
      v5 = 0;
    }
  }

  v7 = v5;
  v8 = 0;
  result.var1 = v8;
  result.var0 = v7;
  return result;
}

$85E40A55691FE2F31975A98F57E3065D sub_10006EDF8(id a1, VOTElement *a2, VOTElement *a3)
{
  v3 = a2;
  v4 = [(VOTElement *)v3 containerTypes];
  if ([v4 containsObject:&off_1001D9D88])
  {
    v5 = [(VOTElement *)v3 isElementFirstElement:1 orLastElement:0 withType:64];
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  v7 = 0;
  result.var1 = v7;
  result.var0 = v6;
  return result;
}

$85E40A55691FE2F31975A98F57E3065D sub_10006EEA0(id a1, VOTElement *a2, VOTElement *a3)
{
  v3 = a2;
  v4 = [(VOTElement *)v3 containerTypes];
  if ([v4 containsObject:&off_1001D9D40])
  {
    v5 = [(VOTElement *)v3 isElementFirstElement:1 orLastElement:0 withType:2];
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  v7 = 0;
  result.var1 = v7;
  result.var0 = v6;
  return result;
}

$85E40A55691FE2F31975A98F57E3065D sub_10006EF48(id a1, VOTElement *a2, VOTElement *a3)
{
  v3 = a2;
  v4 = [(VOTElement *)v3 containerTypes];
  if ([v4 containsObject:&off_1001D9DA0])
  {
    v5 = [(VOTElement *)v3 isElementFirstElement:1 orLastElement:0 withType:128];
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  v7 = 0;
  result.var1 = v7;
  result.var0 = v6;
  return result;
}

$85E40A55691FE2F31975A98F57E3065D sub_10006EFF0(id a1, VOTElement *a2, VOTElement *a3)
{
  v3 = a2;
  v4 = [(VOTElement *)v3 containerTypes];
  if ([v4 containsObject:&off_1001D9DB8])
  {
    v5 = [(VOTElement *)v3 isElementFirstElement:1 orLastElement:0 withType:1];
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  v7 = 0;
  result.var1 = v7;
  result.var0 = v6;
  return result;
}

$85E40A55691FE2F31975A98F57E3065D sub_10006F098(id a1, VOTElement *a2, VOTElement *a3)
{
  v3 = a2;
  if ([(VOTElement *)v3 doesHaveTraits:kAXLinkTrait])
  {
    v4 = [(VOTElement *)v3 linkedElement];
    v5 = v4 != 0;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  v7 = 0;
  result.var1 = v7;
  result.var0 = v6;
  return result;
}

$85E40A55691FE2F31975A98F57E3065D sub_10006F12C(id a1, VOTElement *a2, VOTElement *a3)
{
  v3 = a2;
  if ([(VOTElement *)v3 doesHaveTraits:kAXRadioButtonTrait])
  {
    v4 = 2;
    v5 = 1;
  }

  else if ([(VOTElement *)v3 doesHaveTraits:kAXPopupButtonTrait | kAXButtonTrait])
  {
    v4 = 0;
    v5 = [(VOTElement *)v3 doesHaveTraits:kAXToggleTrait]^ 1;
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  v6 = v5;
  v7 = v4;
  result.var1 = v7;
  result.var0 = v6;
  return result;
}

$85E40A55691FE2F31975A98F57E3065D sub_10006F2BC(id a1, VOTElement *a2, VOTElement *a3)
{
  v3 = [(VOTElement *)a2 blockquoteLevel]!= 0;
  v4 = 0;
  result.var1 = v4;
  result.var0 = v3;
  return result;
}

BOOL sub_10006F37C(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) lastElementBlockquoteLevel] < 1)
  {
    v5 = 0;
  }

  else
  {
    v4 = [v3 blockquoteLevel];
    v5 = v4 == [*(a1 + 32) lastElementBlockquoteLevel];
  }

  return v5;
}

BOOL sub_10006F484(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 doesHaveAllTraits:kAXHeaderTrait])
  {
    if ([*(a1 + 32) lastElementHeadingLevel])
    {
      if ([v3 doesHaveAllTraits:kAXWebContentTrait])
      {
        [v3 value];
      }

      else
      {
        [v3 headingLevelValue];
      }
      v5 = ;
      v6 = [v5 intValue];
      v4 = [*(a1 + 32) lastElementHeadingLevel] == v6;
    }

    else
    {
      v4 = 1;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t sub_10006F628(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  LODWORD(v2) = [v3 doesHaveAllTraits:{objc_msgSend(v2, "currentSimilarTraits")}];

  return v2;
}

uint64_t sub_10006F758(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  LODWORD(v2) = [v3 doesHaveAllTraits:{objc_msgSend(v2, "currentSimilarTraits")}];

  return v2 ^ 1;
}

$85E40A55691FE2F31975A98F57E3065D sub_10006F7D4(id a1, VOTElement *a2, VOTElement *a3)
{
  v3 = [(VOTElement *)a2 doesHaveTraits:kAXTextEntryTrait];
  v4 = 0;
  result.var1 = v4;
  result.var0 = v3;
  return result;
}

$85E40A55691FE2F31975A98F57E3065D sub_10006F834(id a1, VOTElement *a2, VOTElement *a3)
{
  v4 = a2;
  v5 = a3;
  if ([(VOTElement *)v4 doesHaveTraits:kAXRadioButtonTrait])
  {
    v6 = [(VOTElement *)v5 directParent];
    v7 = [(VOTElement *)v4 directParent];
    v8 = [v6 isEqual:v7];

    v9 = v8 ^ 1;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;
  v11 = 0;
  result.var1 = v11;
  result.var0 = v10;
  return result;
}

$85E40A55691FE2F31975A98F57E3065D sub_10006F910(id a1, VOTElement *a2, VOTElement *a3)
{
  v3 = [(VOTElement *)a2 doesHaveTraits:kAXToggleTrait];
  v4 = 0;
  result.var1 = v4;
  result.var0 = v3;
  return result;
}

$85E40A55691FE2F31975A98F57E3065D sub_10006F970(id a1, VOTElement *a2, VOTElement *a3)
{
  v3 = [(VOTElement *)a2 doesHaveTraits:kAXSearchFieldTrait];
  v4 = 0;
  result.var1 = v4;
  result.var0 = v3;
  return result;
}

uint64_t sub_10006FFBC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15[0] = a3;
  v15[1] = a4;
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v14 = a2;
  v10 = a2;
  [v8 _customPublicRotorMatchForType:v9 range:v15 element:&v14 direction:a5 lastSearchUUID:a6];
  v11 = v14;

  v12 = v15[0];
  return v12;
}

void sub_100070390(id a1)
{
  v3[0] = kVOTEventCommandNextGraphic;
  v3[1] = kVOTEventCommandPreviousGraphic;
  v4[0] = &stru_1001C9388;
  v4[1] = &stru_1001C93A8;
  v3[2] = kVOTEventCommandNextHeading;
  v3[3] = kVOTEventCommandPreviousHeading;
  v4[2] = &stru_1001C93C8;
  v4[3] = &stru_1001C93E8;
  v3[4] = kVOTEventCommandNextHeading;
  v3[5] = kVOTEventCommandPreviousHeading;
  v4[4] = &stru_1001C9408;
  v4[5] = &stru_1001C9428;
  v3[6] = kVOTEventCommandNextSameElement;
  v3[7] = kVOTEventCommandPreviousSameElement;
  v4[6] = &stru_1001C9448;
  v4[7] = &stru_1001C9468;
  v3[8] = kVOTEventCommandNextSameHeading;
  v3[9] = kVOTEventCommandPreviousSameHeading;
  v4[8] = &stru_1001C9488;
  v4[9] = &stru_1001C94A8;
  v3[10] = kVOTEventCommandNextDifferentElement;
  v3[11] = kVOTEventCommandPreviousDifferentElement;
  v4[10] = &stru_1001C94C8;
  v4[11] = &stru_1001C94E8;
  v3[12] = kVOTEventCommandNextTable;
  v3[13] = kVOTEventCommandPreviousTable;
  v4[12] = &stru_1001C9508;
  v4[13] = &stru_1001C9528;
  v3[14] = kVOTEventCommandNextFrame;
  v3[15] = kVOTEventCommandPreviousFrame;
  v4[14] = &stru_1001C9548;
  v4[15] = &stru_1001C9568;
  v3[16] = kVOTEventCommandNextControl;
  v3[17] = kVOTEventCommandPreviousControl;
  v4[16] = &stru_1001C9588;
  v4[17] = &stru_1001C95A8;
  v3[18] = kVOTEventCommandNextRadioGroup;
  v3[19] = kVOTEventCommandPreviousRadioGroup;
  v4[18] = &stru_1001C95C8;
  v4[19] = &stru_1001C95E8;
  v3[20] = kVOTEventCommandNextCheckbox;
  v3[21] = kVOTEventCommandPreviousCheckbox;
  v4[20] = &stru_1001C9608;
  v4[21] = &stru_1001C9628;
  v3[22] = kVOTEventCommandNextList;
  v3[23] = kVOTEventCommandPreviousList;
  v4[22] = &stru_1001C9648;
  v4[23] = &stru_1001C9668;
  v3[24] = kVOTEventCommandNextLink;
  v3[25] = kVOTEventCommandPreviousLink;
  v4[24] = &stru_1001C9688;
  v4[25] = &stru_1001C96A8;
  v3[26] = kVOTEventCommandNextBoldText;
  v3[27] = kVOTEventCommandPreviousBoldText;
  v4[26] = &stru_1001C96C8;
  v4[27] = &stru_1001C96E8;
  v3[28] = kVOTEventCommandNextItalicText;
  v3[29] = kVOTEventCommandPreviousItalicText;
  v4[28] = &stru_1001C9708;
  v4[29] = &stru_1001C9728;
  v3[30] = kVOTEventCommandNextUnderlineText;
  v3[31] = kVOTEventCommandPreviousUnderlineText;
  v4[30] = &stru_1001C9748;
  v4[31] = &stru_1001C9768;
  v3[32] = kVOTEventCommandNextMisspelledWord;
  v3[33] = kVOTEventCommandPreviousMisspelledWord;
  v4[32] = &stru_1001C9788;
  v4[33] = &stru_1001C97A8;
  v3[34] = kVOTEventCommandNextPlainText;
  v3[35] = kVOTEventCommandPreviousPlainText;
  v4[34] = &stru_1001C97C8;
  v4[35] = &stru_1001C97E8;
  v3[36] = kVOTEventCommandNextColorChange;
  v3[37] = kVOTEventCommandPreviousColorChange;
  v4[36] = &stru_1001C9808;
  v4[37] = &stru_1001C9828;
  v3[38] = kVOTEventCommandNextFontChange;
  v3[39] = kVOTEventCommandPreviousFontChange;
  v4[38] = &stru_1001C9848;
  v4[39] = &stru_1001C9868;
  v3[40] = kVOTEventCommandNextStyleChange;
  v3[41] = kVOTEventCommandPreviousStyleChange;
  v4[40] = &stru_1001C9888;
  v4[41] = &stru_1001C98A8;
  v3[42] = kVOTEventCommandNextBlockquote;
  v3[43] = kVOTEventCommandPreviousBlockquote;
  v4[42] = &stru_1001C98C8;
  v4[43] = &stru_1001C98E8;
  v3[44] = kVOTEventCommandNextSameBlockquote;
  v3[45] = kVOTEventCommandPreviousSameBlockquote;
  v4[44] = &stru_1001C9908;
  v4[45] = &stru_1001C9928;
  v3[46] = kVOTEventCommandNextVisitedLink;
  v3[47] = kVOTEventCommandPreviousVisitedLink;
  v4[46] = &stru_1001C9948;
  v4[47] = &stru_1001C9968;
  v1 = [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:48];
  v2 = qword_1001FECA8;
  qword_1001FECA8 = v1;
}

void sub_1000714BC(id a1)
{
  v1 = qword_1001FECB8;
  qword_1001FECB8 = &off_1001DBBB0;
}

id sub_100071640()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = qword_1001FED08;
  v7 = qword_1001FED08;
  if (!qword_1001FED08)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_1000B1ACC;
    v3[3] = &unk_1001C8370;
    v3[4] = &v4;
    sub_1000B1ACC(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_100071708(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100071720(id a1, NSError *a2)
{
  if (a2)
  {
    _AXLogWithFacility();
  }
}

void sub_100071780(id a1, NSError *a2)
{
  if (a2)
  {
    _AXLogWithFacility();
  }
}

void sub_100071DE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_100071DFC(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

void sub_1000731A8(id a1)
{
  v1 = objc_allocWithZone(NSArray);
  qword_1001FECC8 = [v1 initWithObjects:{UIAccessibilityTokenMisspelled, AXUIAccessibilityTextAttributeHeadingLevel, AXUIAccessibilityTextAttributeCustom, UIAccessibilityTokenBlockquoteLevel, UIAccessibilityTokenStyleName, UIAccessibilityTokenFontFamily, UIAccessibilityTokenFontSize, UIAccessibilityTokenLineSpacing, UIAccessibilityTokenForegroundColor, UIAccessibilityTokenBold, UIAccessibilityTokenItalic, UIAccessibilityTokenUnderline, UIAccessibilityTokenStrikethrough, UIAccessibilityTokenParagraphAlignment, UIAccessibilityTokenHighlightedText, UIAccessibilityTokenFontName, UIAccessibilityTokenListItemLabel, UIAccessibilityTokenIndentationLevel, 0}];

  _objc_release_x1();
}

void sub_100076478(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = *(v2 + 1656);
  v5 = [NSNumber numberWithInteger:a1[10]];
  [v4 performSelector:"_finishHandlingLineMovementInWeb:direction:withCurrentElement:markerArray:textObjects:existingRequest:" onTarget:v2 count:6 objects:{v3, v5, a1[6], a1[7], a1[8], a1[9], 0}];
}

void sub_100079C98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100079CB0(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v7 = [*(a1 + 32) _treePositionForMathSegment:a2];
  if (sub_1000531A8(v7, *(a1 + 40)))
  {
    *(*(*(a1 + 48) + 8) + 24) = a3;
    *a4 = 1;
  }
}

void sub_10007AAE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10007AB10(uint64_t a1)
{
  [*(a1 + 32) updateValue];
  v2 = [*(a1 + 32) value];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return [*(a1 + 40) isEqualToString:*(*(*(a1 + 48) + 8) + 40)] ^ 1;
}

void sub_10007C44C(uint64_t a1)
{
  v10 = [*(a1 + 32) _currentElement];
  v2 = [*(*(a1 + 32) + 232) application];
  v3 = [v2 isDictationListening];

  if (v3)
  {
    v4 = [*(*(a1 + 32) + 232) application];
    v5 = [v4 startStopToggle];

    if (v5)
    {
      goto LABEL_13;
    }
  }

  if ([v10 doesHaveTraits:kAXStatusBarElementTrait] && (objc_msgSend(*(a1 + 40), "startStopToggle") & 1) != 0 || (objc_msgSend(v10, "startStopToggle") & 1) != 0)
  {
    goto LABEL_13;
  }

  v6 = [v10 remoteParent];
  if (v6)
  {
    v7 = v6;
    v8 = [v10 immediateRemoteParent];
    if ([v8 startStopToggle])
    {

      goto LABEL_13;
    }

    if ([v8 isEqual:v7])
    {
    }

    else
    {
      v9 = [v7 startStopToggle];

      if (v9)
      {
        goto LABEL_13;
      }
    }
  }

  [*(a1 + 40) startStopToggle];
LABEL_13:
}

uint64_t sub_10007C58C(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    v2 = result;
    LOBYTE(v10) = 1;
    _AXLogWithFacility();
    v3 = [AXSubsystemMagicTapToggle sharedInstance:v10];
    v4 = [v3 ignoreLogging];

    if ((v4 & 1) == 0)
    {
      v5 = +[AXSubsystemMagicTapToggle identifier];
      v6 = AXLoggerForFacility();

      v7 = AXOSLogLevelFromAXLogLevel();
      if (os_log_type_enabled(v6, v7))
      {
        v8 = AXColorizeFormatLog();
        v9 = _AXStringForArgs();
        if (os_log_type_enabled(v6, v7))
        {
          *buf = 138543362;
          v13 = v9;
          _os_log_impl(&_mh_execute_header, v6, v7, "%{public}@", buf, 0xCu);
        }
      }
    }

    return (*(*(v2 + 32) + 16))();
  }

  return result;
}

void sub_10007E298(uint64_t a1)
{
  v2 = +[VOTDisplayManager displayManager];
  [v2 setCursorFrameForElement:*(a1 + 32)];
}

id sub_10007E2F0(uint64_t a1)
{
  if (*(a1 + 32))
  {
    [*(a1 + 40) updateValue];
    v2 = [*(a1 + 40) toggleStatusLabel];
    if (([v2 isEqualToString:*(a1 + 32)] & 1) == 0)
    {
      v3 = [objc_allocWithZone(VOTOutputRequest) init];
      [v3 setDoesNotInterrupt:1];
      v4 = [v3 addString:v2];
      [*(a1 + 48) sendRequest:v3];
    }
  }

  v5 = *(a1 + 48);
  v6 = *(v5 + 1656);
  v7 = *(v5 + 112);

  return [v6 performSelector:"forceUpdate" onTarget:v7 cancelMask:0 count:0 objects:0];
}

void sub_10007F3E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10007F400(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = objc_alloc_init(AXEventPathInfoRepresentation);
  v4 = [*(a1 + 32) fingersFromTouchCommands];
  v5 = [v4 objectForKey:v3];

  [v5 pointValue];
  [v6 setPathLocation:?];
  LOBYTE(v4) = [v3 intValue];

  [v6 setPathIndex:v4];
  [v6 setPathProximity:{objc_msgSend(v6, "pathProximity") | 3}];
  [*(*(*(a1 + 40) + 8) + 40) addObject:v6];
}

void sub_10007FB1C(id a1)
{
  v1 = +[AXSettings sharedInstance];
  [v1 setTapticTimeUsageCount:{objc_msgSend(v1, "tapticTimeUsageCount") + 1}];
}

void sub_1000807F8(uint64_t a1)
{
  v2 = +[VOTElement systemWideElement];
  [v2 postFingerLiftAtPoint:*(a1 + 48) withContextId:{*(a1 + 32), *(a1 + 40)}];
}

void sub_10008197C(void *a1)
{
  v1 = a1;
  v17 = objc_opt_new();
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v2 = sub_1000B1C6C();
  v3 = [v2 deliveredNotifications];

  v4 = [v3 countByEnumeratingWithState:&v18 objects:v24 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v19;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v19 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v18 + 1) + 8 * i);
        v9 = [v8 request];
        v10 = [v9 content];
        v11 = [v10 threadIdentifier];
        v12 = [v11 isEqualToString:v1];

        if (v12)
        {
          v13 = [v8 request];
          v14 = [v13 identifier];
          [v17 addObject:v14];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v18 objects:v24 count:16];
    }

    while (v5);
  }

  v15 = VOTLogCommon();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v23 = v1;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "Removing VO notifications %@", buf, 0xCu);
  }

  v16 = sub_1000B1C6C();
  [v16 removeDeliveredNotificationsWithIdentifiers:v17];
}

void sub_100081D18()
{
  v0 = sub_1000B1C6C();
  [v0 requestAuthorizationWithOptions:32 completionHandler:&stru_1001C9B98];
}

void sub_100081E74(id a1, BOOL a2, NSError *a3)
{
  v3 = a2;
  v4 = a3;
  v5 = VOTLogCommon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6[0] = 67109378;
    v6[1] = v3;
    v7 = 2112;
    v8 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Requested authorization to show notification for flashlight: %d %@", v6, 0x12u);
  }
}

BOOL sub_10008296C(id a1, VOTCustomActionCategory *a2)
{
  v2 = [(VOTCustomActionCategory *)a2 categoryName];
  v3 = [v2 isEqualToString:UIAccessibilityCustomActionCategoryEdit];

  return v3;
}

BOOL sub_100082BA8(id a1, VOTCustomActionCategory *a2)
{
  v2 = [(VOTCustomActionCategory *)a2 categoryName];
  v3 = [v2 isEqualToString:UIAccessibilityCustomActionCategoryEdit];

  return v3;
}

void sub_100083200(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va1, a12);
  va_start(va, a12);
  v13 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_100083224(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v7 = *(*(*(a1 + 40) + 8) + 24);
    v17 = [*(a1 + 32) _textAttachmentElementForString:*(*(*(a1 + 48) + 8) + 40) inRange:{v7 + a3, a4}];
    v8 = +[NSMutableArray array];
    v9 = [v17 value];
    [v8 axSafelyAddObject:v9];

    v10 = [v17 label];
    [v8 axSafelyAddObject:v10];

    v11 = [v8 componentsJoinedByString:{@", "}];
    v12 = [v17 label];
    v13 = [v12 length];

    if (v13)
    {
      v14 = [*(*(*(a1 + 48) + 8) + 40) axStringByReplacingCharactersInRange:v7 + a3 withString:{a4, v11}];
      v15 = *(*(a1 + 48) + 8);
      v16 = *(v15 + 40);
      *(v15 + 40) = v14;

      *(*(*(a1 + 40) + 8) + 24) += [v11 length] - a4;
    }
  }
}

id sub_100083620(uint64_t a1, void *a2)
{
  v3 = [a2 textualContexts];
  v4 = [v3 containsObject:*(a1 + 32)];

  return v4;
}

id sub_100083664(uint64_t a1, void *a2)
{
  v3 = [a2 appIdentifiers];
  v4 = [v3 containsObject:*(a1 + 32)];

  return v4;
}

uint64_t sub_10008524C(uint64_t a1, double a2, double a3)
{
  v4 = [objc_allocWithZone(VOTElement) initWithPosition:{a2, a3}];
  if (([v4 isEqual:*(*(a1 + 32) + 64)] & 1) != 0 || !objc_msgSend(v4, "isAccessibleElement"))
  {
    v5 = 0;
  }

  else
  {
    [*(a1 + 32) _echoDifferentElement:v4 forEvent:*(a1 + 40)];
    v5 = 1;
  }

  return v5;
}

id sub_100086100(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 ignoreWhenVoiceOverTouches] && objc_msgSend(*(a1 + 32), "origin") == 2)
  {
    v4 = 0;
  }

  else
  {
    v4 = [v3 isValidForContext:*(a1 + 40)];
  }

  return v4;
}

id sub_100087D3C(uint64_t a1, int a2)
{
  v2 = off_1001FDDD0;
  if (a2)
  {
    v3 = @"element.on.text";
  }

  else
  {
    v3 = @"element.off.text";
  }

  v4 = [VOTSharedWorkspace selectedLanguage];
  v5 = sub_1000516CC(v2, v3, 0, v4);

  return v5;
}

id sub_100089FC8(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = [v3 isEqualToString:*(*(a1 + 32) + 1016)];

  return v4;
}

id sub_10008B4EC(uint64_t a1, void *a2)
{
  v3 = [a2 uuid];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

void sub_10008BE58(id a1)
{
  v6 = [VOTSharedWorkspace selectedLanguage];
  v1 = off_1001FDDD0;
  v2 = +[AXSettings sharedInstance];
  if ([v2 voiceOverAudioDuckingEnabled])
  {
    v3 = @"audioducking.on";
  }

  else
  {
    v3 = @"audioducking.off";
  }

  v4 = sub_1000516CC(v1, v3, 0, v6);
  v5 = sub_1000095FC(v4, 0, v6);
}

$85E40A55691FE2F31975A98F57E3065D sub_10008C478(id a1, VOTElement *a2, VOTElement *a3)
{
  v3 = [(VOTElement *)a2 doesHaveTraits:kAXWebContentTrait];
  v4 = 0;
  result.var1 = v4;
  result.var0 = v3;
  return result;
}

$85E40A55691FE2F31975A98F57E3065D sub_10008C4B8(id a1, VOTElement *a2, VOTElement *a3)
{
  v3 = [(VOTElement *)a2 doesHaveTraits:kAXScrollableTrait];
  v4 = 0;
  result.var1 = v4;
  result.var0 = v3;
  return result;
}

void sub_10008E108(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = AXLogVoiceOverMapsAI();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v8 = 138412290;
    v9 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Smart Maps Descriptions Result: %@", &v8, 0xCu);
  }

  if (v3)
  {
    v5 = *(a1 + 32);
    v6 = v3;
    v7 = [v5 addString:v6];
    [*(a1 + 32) setGeneratesBraille:1];
    [*(a1 + 32) setBrailleType:2];
    [*(a1 + 40) sendRequest:*(a1 + 32)];
  }
}

void sub_10008E208(uint64_t a1)
{
  v2 = [*(a1 + 32) mapFeatureType];
  if (v2)
  {
    if (v2 == 1)
    {
      v3 = *(a1 + 32);
      v4 = *(a1 + 40);
      v5 = *(v4 + 512);
      v6 = *(v4 + 520);
    }

    else
    {
      v7 = *(a1 + 32);
      [v7 centerPoint];
      v3 = v7;
    }

    v8 = [v3 mapDetailedInformationAtPoint:{v5, v6}];
    v9 = [*(a1 + 48) addString:v8];
  }

  if (*(a1 + 56) == 1)
  {
    v10 = *(a1 + 32);
    v11 = *(a1 + 48);
    v12 = [v10 language];
    [v10 announceTableInfo:v11 options:0 language:v12];
  }

  [*(a1 + 32) announceAdditionalTextualInformation:*(a1 + 48)];
  v18 = [*(a1 + 32) hint];
  if ([v18 length])
  {
    v13 = [*(a1 + 48) addString:v18];
  }

  v14 = *(a1 + 48);
  v15 = [*(a1 + 32) application];
  v16 = [v15 label];
  v17 = [v14 addString:v16];

  [*(a1 + 48) setGeneratesBraille:1];
  [*(a1 + 48) setBrailleType:2];
  [*(a1 + 40) sendRequest:*(a1 + 48)];
}

void sub_10008E374(uint64_t a1, void *a2)
{
  v4 = a2;
  if ([v4 length])
  {
    v3 = [*(a1 + 32) addString:v4];
  }

  (*(*(a1 + 40) + 16))();
}

uint64_t sub_10008E478(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

id sub_10008EBFC(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = [v3 isEqualToString:*(*(a1 + 32) + 1016)];

  return v4;
}

uint64_t sub_10009068C(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isSystemApp] & 1) != 0 || (objc_msgSend(v3, "isSpotlight"))
  {
    v4 = 0;
  }

  else
  {
    v5 = *(*(a1 + 32) + 1736);
    v6 = [v3 bundleIdentifier];
    v4 = [v5 containsObject:v6] ^ 1;
  }

  return v4;
}

void sub_1000942AC(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = [a2 outputActions];
  v7 = [v6 firstObject];
  v8 = [v7 isEqual:v5];

  if (v8)
  {
    Current = CFAbsoluteTimeGetCurrent();
    v10 = VOTLogCommon();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = [*(a1 + 32) application];
      v12 = [v11 activeKeyboard];
      v13 = [*(a1 + 32) application];
      v14 = [v13 activeKeyboard];
      v22 = 138412546;
      v23 = *&v12;
      v24 = 1024;
      LODWORD(v25) = [v14 isKeyboardContinuousPathAvailable];
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Continuous path activation? %@ %d", &v22, 0x12u);
    }

    *(*(a1 + 40) + 1778) = 1;
    [*(a1 + 40) continuousPathTimeout];
    v16 = v15;
    v17 = Current - *(a1 + 48);
    [*(a1 + 40) continuousPathTimeout];
    if (v17 < v18)
    {
      [*(a1 + 40) continuousPathTimeout];
      v16 = v19 - (Current - *(a1 + 48));
    }

    v20 = VOTLogCommon();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      [*(a1 + 40) continuousPathTimeout];
      v22 = 134218240;
      v23 = v16;
      v24 = 2048;
      v25 = v21;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "Continuous path waiting for %f (user choice: %f)", &v22, 0x16u);
    }

    [*(*(a1 + 40) + 448) dispatchAfterDelay:*(a1 + 32) withObject:v16];
  }
}

id sub_1000944D4(uint64_t a1, void *a2)
{
  result = [a2 finishedSuccessfully];
  if (result && (*(a1 + 48) & 1) == 0)
  {
    [*(a1 + 32) _alternativeKeyActivateTime];
    *(*(a1 + 32) + 1778) = 0;
    v4 = *(a1 + 40);
    v5 = *(*(a1 + 32) + 448);

    return [v5 dispatchAfterDelay:v4 withObject:?];
  }

  return result;
}

id sub_10009453C(uint64_t a1)
{
  v2 = VOTLogElement();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    sub_10012BD40();
  }

  return [*(a1 + 32) resetBannerTimer];
}

$85E40A55691FE2F31975A98F57E3065D sub_100094C04(id a1, VOTElement *a2, VOTElement *a3)
{
  v3 = a2;
  if ([(VOTElement *)v3 isReadingContent])
  {
    v4 = 1;
  }

  else
  {
    v4 = [(VOTElement *)v3 includeDuringContentReading];
  }

  v5 = v4;
  v6 = 0;
  result.var1 = v6;
  result.var0 = v5;
  return result;
}

void sub_1000958BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000958D4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 label];
  v5 = +[NSCharacterSet whitespaceCharacterSet];
  v6 = [v4 stringByTrimmingCharactersInSet:v5];

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100095ACC;
  v15[3] = &unk_1001C9EE8;
  v7 = v3;
  v16 = v7;
  v8 = objc_retainBlock(v15);
  if ([v6 length])
  {
    v9 = *(*(a1 + 32) + 1736);
    v10 = [v7 bundleIdentifier];
    if ([v9 containsObject:v10])
    {
LABEL_8:

      goto LABEL_9;
    }

    v11 = [v7 bundleIdentifier];
    if ([v11 isEqualToString:@"com.apple.accessibility.MagnifierAngel"])
    {

      goto LABEL_8;
    }

    v12 = [v7 bundleIdentifier];
    v13 = [v12 isEqualToString:@"com.apple.DocumentManager.DockFolderViewService"];

    if ((v13 & 1) == 0)
    {
      v14 = [*(a1 + 40) addString:v6];
      [*(a1 + 48) addObject:v6];
      (v8[2])(v8, *(a1 + 40));
      v10 = [v7 summaryElement];
      if (v10)
      {
        [*(a1 + 32) _addDescription:v10 toRequest:*(a1 + 40) withOptions:1];
        *(*(*(a1 + 64) + 8) + 24) = 1;
        [*(a1 + 56) addObject:v10];
      }

      goto LABEL_8;
    }
  }

LABEL_9:
}

void sub_100095ACC(uint64_t a1, void *a2)
{
  v11 = a2;
  v3 = [*(a1 + 32) bundleIdentifier];
  if (j__VOSProcessAllowsScreenRecognition())
  {
    v4 = +[AXSettings sharedInstance];
    v5 = [*(a1 + 32) bundleIdentifier];
    v6 = [v4 automaticAccessibilityModeForBundleIdentifier:v5];

    if (v6 != 1)
    {
      goto LABEL_5;
    }

    v7 = off_1001FDDD0;
    v3 = [VOTSharedWorkspace selectedLanguage];
    v8 = sub_1000516CC(v7, @"neuralvision.on", 0, v3);
    v9 = [VOTSharedWorkspace selectedLanguage];
    v10 = [v11 addString:v8 withLanguage:v9];
  }

LABEL_5:
}

BOOL sub_100095C44(id a1, VOTElement *a2, unint64_t a3, BOOL *a4)
{
  v4 = a2;
  if ([(VOTElement *)v4 isSafari])
  {
    v5 = 1;
  }

  else
  {
    v5 = [(VOTElement *)v4 isGoogleChrome];
  }

  return v5;
}

$85E40A55691FE2F31975A98F57E3065D sub_10009A000(id a1, VOTElement *a2, VOTElement *a3)
{
  v3 = a2;
  if ([(VOTElement *)v3 doesHaveTraits:kAXKeyboardKeyTrait])
  {
    v4 = [(VOTElement *)v3 isInternationalKeyboardKey];
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  v6 = 0;
  result.var1 = v6;
  result.var0 = v5;
  return result;
}

void sub_10009A058(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v14 = a2;
  [v14 frame];
  v17.origin.x = v7;
  v17.origin.y = v8;
  v17.size.width = v9;
  v17.size.height = v10;
  v16 = CGRectIntersection(*(a1 + 48), v17);
  if (v16.size.width >= *(a1 + 64) * 0.5 && v16.size.height >= *(a1 + 72) * 0.5)
  {
    v11 = [v14 equivalenceTag];
    v12 = [*(a1 + 32) equivalenceTag];
    v13 = [v11 isEqualToString:v12];

    if (v13)
    {
      objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
      *a4 = 1;
    }
  }
}

void sub_10009AA70(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 2168));
  [WeakRetained directInteractionElementsUpdated:*(a1 + 40)];
}

int64_t sub_10009C7D8(id a1, VOTOutputRequest *a2)
{
  v2 = a2;
  v3 = [(VOTOutputRequest *)v2 doesNotInterrupt]&& [(VOTOutputRequest *)v2 originationType]== 1;

  return v3;
}

void sub_10009C828(uint64_t a1)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10009C8BC;
  v3[3] = &unk_1001C76E8;
  v2 = *(a1 + 32);
  v4 = *(a1 + 40);
  [v2 performAsyncBlock:v3 forThreadKey:*(*(a1 + 32) + 1712)];
}

void sub_10009C8BC(uint64_t a1)
{
  v2 = +[VOTDisplayManager displayManager];
  [v2 setCursorFrameForElement:*(a1 + 32)];
}

id sub_10009ED6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [*(*(a1 + 32) + 232) attributedValueForRange:{a2, a3}];
  if (!v6)
  {
    v6 = [*(*(a1 + 32) + 232) valueForRange:{a2, a3}];
  }

  return v6;
}

unint64_t sub_10009EDE0(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v6 = (*(*(a1 + 48) + 16))();
  v7 = [*(a1 + 32) characterIsMember:{objc_msgSend(v6, "characterAtIndex:", 0)}];
  v8 = 0;
  if ([v6 length])
  {
    do
    {
      v9 = [*(a1 + 40) characterIsMember:{objc_msgSend(v6, "characterAtIndex:", v8)}];
      if (a4)
      {
        if (v9 & 1) != 0 || (v7 & 1) == 0 && ([*(a1 + 32) characterIsMember:{objc_msgSend(v6, "characterAtIndex:", v8)}])
        {
          break;
        }
      }

      else if (!v9)
      {
        break;
      }

      ++v8;
    }

    while (v8 < [v6 length]);
  }

  return v8;
}

BOOL sub_10009F19C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 textInputElement];
  v5 = [v4 isEqual:*(*(a1 + 32) + 232)];

  if (v5 && (v6 = [v3 textInputElementRange], v6 != 0x7FFFFFFF))
  {
    v8 = 0;
    v10 = *(a1 + 40);
    if (v6 <= *(a1 + 48) + v10 && v6 + v7 >= v10)
    {
      [v3 updateFrame];
      [v3 frame];
      v12 = CGRectIntersection(v11, *(a1 + 56));
      v8 = !CGRectIsEmpty(v12);
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void sub_1000A1390(id a1, VOTOutputAction *a2, unint64_t a3, BOOL *a4)
{
  v6 = a2;
  v4 = [(VOTOutputAction *)v6 objectForVariant:15];

  if (v4)
  {
    v5 = [(VOTOutputAction *)v6 objectForVariant:15];
    [(VOTOutputAction *)v6 setObject:v5 forVariant:16];
  }
}

uint64_t sub_1000A1C1C(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 doesHaveTraits:kAXWebContentTrait] && objc_msgSend(v3, "expandedStatus"))
  {
    v4 = [v3 equivalenceTag];
    v5 = [*(a1 + 32) equivalenceTag];
    v6 = [v4 isEqualToString:v5];

    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

id sub_1000A210C(uint64_t a1)
{
  v2 = +[AXHapticFeedbackManager sharedManager];
  [v2 playHapticFeedbackForType:19];

  v3 = *(a1 + 32);

  return [v3 _handleFireStewie];
}

id sub_1000A3CC0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1000A3D34;
  v3[3] = &unk_1001C76E8;
  v3[4] = v1;
  return [v1 performAsyncBlock:v3 forThreadKey:v1[214]];
}

void sub_1000A3D3C(id a1, VOTOutputAction *a2, unint64_t a3, BOOL *a4)
{
  v4 = off_1001FDDD0;
  v5 = a2;
  v6 = sub_1000511CC(v4, @"braille.paste.operation", 0);
  [(VOTOutputAction *)v5 setBrailleString:v6];
}

void sub_1000A9854(uint64_t a1)
{
  v2 = +[NSNotificationCenter defaultCenter];
  [v2 postNotificationName:@"VOTBSIStateChangedNotification" object:*(a1 + 32) userInfo:*(a1 + 40)];

  v3 = VOTLogBrailleGestures();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [NSNumber numberWithBool:*(a1 + 56)];
    v5 = [NSNumber numberWithInteger:*(a1 + 48)];
    v6 = [NSNumber numberWithBool:*(a1 + 57)];
    v7 = 138412802;
    v8 = v4;
    v9 = 2112;
    v10 = v5;
    v11 = 2112;
    v12 = v6;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Posting BSIStateChangedNotification with active:%@ usage:%@ preferSingleHand:%@", &v7, 0x20u);
  }
}

void sub_1000AB5DC(id a1, NSString *a2, NSString *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = objc_alloc_init(VOTOutputRequest);
  v7 = [(VOTOutputRequest *)v6 addString:v4];
  [(VOTOutputRequest *)v6 setLanguage:v5];
  [(VOTOutputRequest *)v6 setBrailleType:2];
  [(VOTOutputRequest *)v6 setCannotBeInterrupted:1];
  [(VOTOutputRequest *)v6 send];
  v8 = VOTLogCommon();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412546;
    v10 = v4;
    v11 = 2112;
    v12 = v5;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Describing image: %@/%@", &v9, 0x16u);
  }
}

void sub_1000AED20(id a1)
{
  v1 = +[VOTUserEventManager sharedInstance];
  [v1 userEventOccurred];
}

Class sub_1000B1ACC(uint64_t a1)
{
  v3[0] = 0;
  if (!qword_1001FED10)
  {
    v3[1] = _NSConcreteStackBlock;
    v3[2] = 3221225472;
    v3[3] = sub_1000B1BF8;
    v3[4] = &unk_1001C78B0;
    v3[5] = v3;
    v4 = off_1001CA288;
    v5 = 0;
    qword_1001FED10 = _sl_dlopen();
  }

  if (!qword_1001FED10)
  {
    sub_10012DA58(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  result = objc_getClass("SpeakThisServices");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_10012D9DC();
  }

  qword_1001FED08 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_1000B1BF8()
{
  result = _sl_dlopen();
  qword_1001FED10 = result;
  return result;
}

id sub_1000B1C6C()
{
  if (qword_1001FED20 != -1)
  {
    sub_10012DAD8();
  }

  v1 = qword_1001FED18;

  return v1;
}

void sub_1000B1CB0(id a1)
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x2050000000;
  v1 = qword_1001FED28;
  v18 = qword_1001FED28;
  if (!qword_1001FED28)
  {
    v10 = _NSConcreteStackBlock;
    v11 = 3221225472;
    v12 = sub_1000B1E94;
    v13 = &unk_1001C8370;
    v14 = &v15;
    sub_1000B1E94(&v10);
    v1 = v16[3];
  }

  v2 = v1;
  _Block_object_dispose(&v15, 8);
  v3 = [[v1 alloc] initWithBundleIdentifier:@"com.apple.VoiceOverNotifications"];
  v4 = qword_1001FED18;
  qword_1001FED18 = v3;

  v15 = 0;
  v16 = &v15;
  v17 = 0x2050000000;
  v5 = qword_1001FED38;
  v18 = qword_1001FED38;
  if (!qword_1001FED38)
  {
    v10 = _NSConcreteStackBlock;
    v11 = 3221225472;
    v12 = sub_1000B2054;
    v13 = &unk_1001C8370;
    v14 = &v15;
    sub_1000B2054(&v10);
    v5 = v16[3];
  }

  v6 = v5;
  _Block_object_dispose(&v15, 8);
  v7 = [v5 categoryWithIdentifier:@"com.apple.VoiceOver.message" actions:&__NSArray0__struct intentIdentifiers:&__NSArray0__struct options:0];
  v8 = qword_1001FED18;
  v9 = [NSSet setWithObject:v7];
  [v8 setNotificationCategories:v9];
}

void sub_1000B1E78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class sub_1000B1E94(uint64_t a1)
{
  sub_1000B1EEC();
  result = objc_getClass("UNUserNotificationCenter");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_10012DAEC();
  }

  qword_1001FED28 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_1000B1EEC()
{
  v0[0] = 0;
  if (!qword_1001FED30)
  {
    v0[1] = _NSConcreteStackBlock;
    v0[2] = 3221225472;
    v0[3] = sub_1000B1FE0;
    v0[4] = &unk_1001C78B0;
    v0[5] = v0;
    v1 = off_1001CA2C0;
    v2 = 0;
    qword_1001FED30 = _sl_dlopen();
  }

  if (!qword_1001FED30)
  {
    sub_10012DB68(v0);
  }

  if (v0[0])
  {
    free(v0[0]);
  }
}

uint64_t sub_1000B1FE0()
{
  result = _sl_dlopen();
  qword_1001FED30 = result;
  return result;
}

Class sub_1000B2054(uint64_t a1)
{
  sub_1000B1EEC();
  result = objc_getClass("UNNotificationCategory");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_10012DBE8();
  }

  qword_1001FED38 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_1000B20AC(id a1, NSError *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = VOTLogCommon();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_10012DC64();
    }
  }
}

Class sub_1000B2104(uint64_t a1)
{
  sub_1000B1EEC();
  result = objc_getClass("UNMutableNotificationContent");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_10012DCCC();
  }

  qword_1001FED40 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class sub_1000B215C(uint64_t a1)
{
  sub_1000B1EEC();
  result = objc_getClass("UNNotificationRequest");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_10012DD48();
  }

  qword_1001FED48 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_1000B223C(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

void sub_1000B23E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000B240C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateWebRotorItems];
}

uint64_t sub_1000B2B2C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

BOOL sub_1000B5238(id a1, VOTCustomAction *a2)
{
  v2 = [(VOTCustomAction *)a2 categoryName];
  v3 = [v2 isEqualToString:UIAccessibilityCustomActionCategoryEdit];

  return v3;
}

void sub_1000B5280(uint64_t a1, void *a2, int a3)
{
  v4 = a2;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = [v4 customPublicRotors];
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v22 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        v11 = [v4 customPublicRotorName:v10];
        v12 = v11;
        if (((*(a1 + 48) & 1) != 0 || ([v11 isEqualToString:@"AXCustomSystemRotorTypeMisspelledWord"] & 1) == 0) && objc_msgSend(v12, "length") && objc_msgSend(v4, "customPublicRotorIsVisibleInTouchRotor:", v10) && (objc_msgSend(*(a1 + 32), "_customPublicRotorInRotor:", v12) & 1) == 0)
        {
          v20[0] = @"uuid";
          v20[1] = @"name";
          v21[0] = v10;
          v21[1] = v12;
          v13 = [NSDictionary dictionaryWithObjects:v21 forKeys:v20 count:2];
          v14 = [v13 mutableCopy];

          if (a3)
          {
            [v14 setObject:*(a1 + 40) forKey:@"element"];
          }

          [*(*(a1 + 32) + 72) addObject:v14];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v16 objects:v22 count:16];
    }

    while (v7);
  }
}

id sub_1000B5470(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v7 = a2;
  v3 = a2;
  v4 = [NSArray arrayWithObjects:&v7 count:1];
  v5 = [v2 customActionsAreValid:{v4, v7}];

  return v5;
}

void sub_1000B5514(uint64_t a1, void *a2)
{
  v3 = [a2 objectForKey:@"VOTRotorType"];
  if (v3)
  {
    v6 = v3;
    v4 = [v3 intValue];
    v5 = sub_1000F8D8C(*(*(a1 + 32) + 16), v4) == -1;
    v3 = v6;
    if (!v5)
    {
      sub_1000FA620(*(*(a1 + 32) + 16), v4);
      sub_1000FA60C(*(*(a1 + 32) + 16), v4, 0);
      v3 = v6;
    }
  }
}

uint64_t sub_1000B575C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) delegate];
  if ([v3 isValidForContext:v4])
  {
    v5 = [v3 categoryName];
    v6 = [v5 isEqualToString:UIAccessibilityCustomActionCategoryEdit] ^ 1;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

BOOL sub_1000B5974(id a1, VOTCustomAction *a2, unint64_t a3, BOOL *a4)
{
  v4 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    isKindOfClass = 1;
  }

  else
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  return isKindOfClass & 1;
}

uint64_t sub_1000B5B44(uint64_t a1)
{
  v1 = [objc_alloc(*(a1 + 32)) _init];
  v2 = qword_1001FED58;
  qword_1001FED58 = v1;

  return _objc_release_x1(v1, v2);
}

void sub_1000B5D3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000B5D58(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleSiriVoiceUpdate];
}

void sub_1000B6D6C(uint64_t a1, void *a2)
{
  v4 = a2;
  if ([*(a1 + 32) length])
  {
    [*(a1 + 32) appendString:*(a1 + 40)];
  }

  v3 = VOSLocString();
  if (v3)
  {
    [*(a1 + 32) appendString:v3];
  }
}

void sub_1000B7904(id a1)
{
  v4[0] = kVOTEventCommandHomeButtonPress;
  v4[1] = kVOTEventCommandMoveToStatusBar;
  v4[2] = kVOTEventCommandEjectButtonPress;
  v4[3] = kVOTEventCommandLeftElementCommunity;
  v4[4] = kVOTEventCommandRightElementCommunity;
  v4[5] = kVOTEventCommandShowSideApp;
  v4[6] = kVOTEventCommandPreviousContainer;
  v4[7] = kVOTEventCommandNextContainer;
  v1 = [NSArray arrayWithObjects:v4 count:8];
  v2 = [NSSet setWithArray:v1];
  v3 = qword_1001FED68;
  qword_1001FED68 = v2;
}

void sub_1000B7AE0(id a1)
{
  v1 = [objc_allocWithZone(VOTUserEventManager) init];
  v2 = qword_1001FED78;
  qword_1001FED78 = v1;

  _objc_release_x1(v1, v2);
}

void sub_1000BA6CC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v9 = a2;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v9 BOOLValue])
  {
    v7 = *(a1 + 32);
    v8 = [*(a1 + 40) attributedSubstringFromRange:{a3, a4}];
    [v7 addObject:v8];
  }
}

void sub_1000BAD38(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [*(a1 + 32) objectAtIndex:a3];
  v7 = [v6 longLongValue];
  v8 = [v6 unsignedLongLongValue];
  if (v7 == -1)
  {
LABEL_17:
    if ((*(a1 + 74) & 1) == 0)
    {
      v20 = [*(a1 + 40) addString:v5 withLanguage:*(a1 + 56)];
      v21 = [*(a1 + 40) lastAction];
      [v21 setIsVoiceOverGeneratedContent:1];

      if (*(a1 + 75) == 1)
      {
        v22 = *(a1 + 48);
        if (([v22 containedIn:4] & 1) != 0 || (objc_msgSend(v22, "containedIn:", 0x2000) & 1) != 0 || (objc_msgSend(v22, "containedIn:", 2) & 1) != 0 || (objc_msgSend(v22, "containedIn:", 1) & 1) != 0 || (objc_msgSend(v22, "containedIn:", 8) & 1) != 0 || (objc_msgSend(v22, "containedIn:", 32) & 1) != 0 || (objc_msgSend(v22, "containedIn:", 16) & 1) != 0 || objc_msgSend(v22, "containedIn:", 0x8000)) && (objc_msgSend(v22, "isElementFirstElement:orLastElement:withType:", 1, 1, 0))
        {

          v23 = [*(a1 + 40) lastAction];
          LODWORD(v24) = 1062836634;
          v25 = [NSNumber numberWithFloat:v24];
          [v23 setObject:v25 forVariant:32];
LABEL_34:

          goto LABEL_35;
        }
      }
    }

    goto LABEL_35;
  }

  if ((*(a1 + 72) != 1 || (kAXButtonTrait & v8) == 0) && (*(a1 + 73) != 1 || (kAXSelectedTrait & v8) != kAXSelectedTrait))
  {
    if (((kAXInactiveTrait | kAXSelectedTrait) & v8) != 0)
    {
      v9 = [*(a1 + 40) outputActions];
      v10 = [v9 count];

      if (v10)
      {
        v11 = [*(a1 + 40) outputActions];
        v12 = [v11 firstObject];
        v13 = [v12 objectForVariant:68];
        v14 = [v13 BOOLValue];

        if (v14)
        {
          v15 = 1;
LABEL_33:
          v27 = [*(a1 + 40) addString:v5 breakWords:0 withLanguage:*(a1 + 56) atIndex:v15];
          v23 = [*(a1 + 40) outputActions];
          v25 = [v23 objectAtIndexedSubscript:v15];
          [v25 setIsVoiceOverGeneratedContent:1];
          goto LABEL_34;
        }

        if ([*(a1 + 48) doesHaveTraits:kAXPickerElementTrait])
        {
          v26 = [*(a1 + 40) outputActions];
          v15 = [v26 count];

          goto LABEL_33;
        }
      }

      v15 = 0;
      goto LABEL_33;
    }

    if ((kAXStatusBarElementTrait & v8) == 0 || (*(a1 + 65) & 0x20) == 0)
    {
      if ((kAXLinkTrait & v8) != 0)
      {
        v31 = 0;
        v32 = &v31;
        v33 = 0x2020000000;
        v34 = 0;
        v16 = [*(a1 + 40) outputActions];
        v30[0] = _NSConcreteStackBlock;
        v30[1] = 3221225472;
        v30[2] = sub_1000BB1EC;
        v30[3] = &unk_1001C75E8;
        v30[4] = &v31;
        [v16 enumerateObjectsUsingBlock:v30];

        if (v32[3])
        {
LABEL_44:
          _Block_object_dispose(&v31, 8);
          goto LABEL_35;
        }

        v17 = +[AXSettings sharedInstance];
        v18 = [v17 voiceOverLinkFeedback];

        if ((v18 & 2) != 0)
        {
          v19 = [*(a1 + 40) addString:v5 withLanguage:*(a1 + 56)];
          v28 = [*(a1 + 40) lastAction];
          [v28 setIsVoiceOverGeneratedContent:1];

          if ((v18 & 4) == 0)
          {
            goto LABEL_41;
          }

          if (v19)
          {
            v29 = [v19 firstObject];
LABEL_40:
            [v29 setObject:@"Sounds/LinkBegin.aiff" forVariant:75];

            goto LABEL_41;
          }
        }

        else if ((v18 & 4) == 0)
        {
          v19 = 0;
LABEL_41:
          if ((v18 & 8) != 0)
          {
            [v19 enumerateObjectsUsingBlock:&stru_1001CA620];
          }

          goto LABEL_44;
        }

        v29 = [*(a1 + 40) lastAction];
        v19 = 0;
        goto LABEL_40;
      }

      goto LABEL_17;
    }
  }

LABEL_35:
}

void sub_1000BB1CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000BB1EC(uint64_t a1, void *a2)
{
  if ((*(*(*(a1 + 32) + 8) + 24) & 1) == 0)
  {
    v4 = [a2 objectForVariant:52];
    *(*(*(a1 + 32) + 8) + 24) = v4 != 0;
  }
}

void sub_1000BBE58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_1000BBE88(uint64_t a1, void *a2, NSUInteger a3, NSUInteger a4)
{
  v7 = [a2 objectForKey:UIAccessibilityTokenMathTreePosition];
  if (sub_1000530E0(*(a1 + 32), v7))
  {
    [*(a1 + 40) addAttribute:kSCROSelectionAttribute value:kCFBooleanTrue range:{a3, a4}];
    *(*(*(a1 + 48) + 8) + 24) = a3;
    v9.location = a3;
    v9.length = a4;
    if (NSIntersectionRange(v9, **(a1 + 64)).length)
    {
      *(*(*(a1 + 56) + 8) + 24) = 1;
    }
  }
}

void sub_1000BD48C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47)
{
  _Block_object_dispose(&a39, 8);
  _Block_object_dispose(&a43, 8);
  _Block_object_dispose(&a47, 8);
  _Unwind_Resume(a1);
}

void sub_1000BD4D0(uint64_t a1, void *a2)
{
  v5 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = 32;
  }

  else
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v3 = 48;
    if (isKindOfClass)
    {
      v3 = 40;
    }
  }

  ++*(*(*(a1 + v3) + 8) + 24);
}

void sub_1000BD6AC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v18 = a2;
  v7 = *(a1 + 48);
  v8 = *(a1 + 40) + a3;
  v9 = *(a1 + 56);
  v10 = v8 < v7 || v8 - v7 >= v9;
  if (!v10)
  {
    v10 = v8 >= v7;
    v11 = v8 - v7;
    if (v10)
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    if (v12 + a4 > v9)
    {
      a4 = v9 - v12;
    }

    if ([VOTSharedWorkspace brailleFormattingEnabled])
    {
      v13 = [v18 objectForKey:UIAccessibilityTokenBold];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 && [v13 BOOLValue])
      {
        [*(a1 + 32) addAttribute:kSCROBoldTextAttribute value:&__kCFBooleanTrue range:{v12, a4}];
      }

      v14 = [v18 objectForKey:UIAccessibilityTokenItalic];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 && [v14 BOOLValue])
      {
        [*(a1 + 32) addAttribute:kSCROItalicTextAttribute value:&__kCFBooleanTrue range:{v12, a4}];
      }

      v15 = [v18 objectForKey:UIAccessibilityTokenUnderline];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 && [v15 BOOLValue])
      {
        [*(a1 + 32) addAttribute:kSCROUnderlineTextAttribute value:&__kCFBooleanTrue range:{v12, a4}];
      }
    }

    v16 = [v18 objectForKey:UIAccessibilityInlineTextCompletion];
    if (v16)
    {
      [*(a1 + 32) addAttribute:kSCROSuggestionTextAttribute value:&__kCFBooleanTrue range:{v12, a4}];
    }

    v17 = [v18 objectForKey:UIAccessibilityTokenAttachment];
    if (v17)
    {
      [*(a1 + 32) addAttribute:UIAccessibilityTokenAttachment value:v17 range:{v12, a4}];
    }
  }
}

void sub_1000C0718(_Unwind_Exception *a1)
{
  _Block_object_dispose(&STACK[0x308], 8);
  _Block_object_dispose(&STACK[0x328], 8);
  _Unwind_Resume(a1);
}

void sub_1000C0884(uint64_t a1)
{
  v2 = [*(a1 + 32) isTouchContainer];
  if ([*(a1 + 32) doesHaveTraits:kAXBackButtonTrait] & 1) != 0 || (objc_msgSend(*(a1 + 32), "doesHaveTraits:", kAXTextEntryTrait))
  {
    v3 = 1;
  }

  else
  {
    v3 = [*(a1 + 32) doesHaveTraits:kAXKeyboardKeyTrait];
  }

  if ((*(*(*(a1 + 40) + 8) + 24) & 1) != 0 || *(*(*(a1 + 48) + 8) + 24) == 1)
  {
    v4 = ![VOTVisionEngine elementNeedsAdditionalDescription:*(a1 + 32)];
  }

  else
  {
    v4 = 0;
  }

  v5 = [*(a1 + 32) doesHaveTraits:kAXPlaysSoundTrait];
  if (((v2 | v3) & 1) == 0)
  {
    if (*(a1 + 56))
    {
      if ((v4 | v5))
      {
        return;
      }
    }

    else if (v4 & 1 | ((*(a1 + 57) & 1) == 0) | v5 & 1)
    {
      return;
    }

    v9 = objc_opt_new();
    v6 = [VOTSharedWorkspace elementManager];
    [v9 setIncludeFullImageDescriptionsForValidElements:{objc_msgSend(v6, "determineFullImageDescriptionsEnabled:", *(a1 + 32))}];

    v7 = [VOTSharedWorkspace elementManager];
    [v9 setIncludeSceneDetection:{objc_msgSend(v7, "determineSceneDetectionsEnabled:", *(a1 + 32))}];

    v8 = [VOTSharedWorkspace visionEngine];
    [v8 analyzeElement:*(a1 + 32) withOptions:v9];
  }
}