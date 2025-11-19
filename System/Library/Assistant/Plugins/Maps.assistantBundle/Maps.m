void sub_18CC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 80));
  _Unwind_Resume(a1);
}

void sub_1B68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_1B8C(void *a1)
{
  v2 = a1[4];
  v3 = *(v2 + 48);
  if (v3)
  {
    v4 = a1[5];
LABEL_7:
    objc_storeStrong((*(v4 + 8) + 40), v3);
    return;
  }

  if (*(v2 + 56))
  {
    v5 = _maps_backgroundStateLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = *(a1[4] + 56);
      *buf = 138412290;
      v17 = v6;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_INFO, "MapsIPCInterface Using existing dispatchGroup: %@", buf, 0xCu);
    }

    v3 = *(a1[4] + 56);
    v4 = a1[6];
    goto LABEL_7;
  }

  v7 = dispatch_group_create();
  v8 = a1[4];
  v9 = *(v8 + 56);
  *(v8 + 56) = v7;

  v10 = _maps_backgroundStateLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = *(a1[4] + 56);
    *buf = 138412290;
    v17 = v11;
    _os_log_impl(&dword_0, v10, OS_LOG_TYPE_INFO, "MapsIPCInterface Created connectionGroup to wait for Maps: %@", buf, 0xCu);
  }

  objc_storeStrong((*(a1[6] + 8) + 40), *(a1[4] + 56));
  dispatch_group_enter(*(a1[4] + 56));
  v12 = dispatch_time(0, 20000000000);
  v13 = a1[4];
  v14 = *(v13 + 40);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_144C8;
  block[3] = &unk_34970;
  block[4] = v13;
  dispatch_after(v12, v14, block);
}

id IPCMessageGetServerFormattedInstructionArrayForKey(void *a1, uint64_t a2)
{
  if (a2)
  {
    v2 = [a1 objectForKeyedSubscript:a2];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v3 = objc_opt_class();
      v4 = [NSSet setWithObjects:v3, objc_opt_class(), 0];
      v5 = [NSKeyedUnarchiver unarchivedObjectOfClasses:v4 fromData:v2 error:0];
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void sub_3F78(uint64_t a1, void *a2, uint64_t a3)
{
  v13 = a2;
  if (a3 == 1)
  {
    [*(a1 + 32) setLocalizedDateFormatFromTemplate:@"Jmm"];
  }

  v5 = [v13 timeSlot];
  v6 = [v5 timeZoneId];
  v7 = [NSTimeZone timeZoneWithName:v6];

  v8 = *(a1 + 32);
  if (v7)
  {
    [*(a1 + 32) setTimeZone:v7];
  }

  else
  {
    v9 = +[NSTimeZone defaultTimeZone];
    [v8 setTimeZone:v9];
  }

  v10 = *(a1 + 32);
  v11 = [v5 date];
  v12 = [v10 stringFromDate:v11];

  [*(a1 + 40) addObject:v12];
}

void sub_456C(id a1)
{
  qword_5A6E8 = [NSBundle bundleWithIdentifier:@"com.apple.maps.assistant.uiplugin"];

  _objc_release_x1();
}

void sub_4664(id a1)
{
  qword_5A6F8 = objc_alloc_init(NSDateComponentsFormatter);

  _objc_release_x1();
}

void sub_4724(id a1)
{
  qword_5A708 = objc_alloc_init(NSDateFormatter);

  _objc_release_x1();
}

void sub_47A4(id a1)
{
  v3 = +[NSBundle afui_assistantUIFrameworkBundle];
  v1 = [v3 assistantUILocale];
  v2 = qword_5A718;
  qword_5A718 = v1;
}

void sub_48D0(id a1)
{
  qword_5A728 = objc_alloc_init(NSMeasurementFormatter);

  _objc_release_x1();
}

void sub_4A6C(id a1)
{
  v1 = objc_alloc_init(NSNumberFormatter);
  v2 = qword_5A738;
  qword_5A738 = v1;

  v3 = qword_5A738;

  [v3 setMinimumIntegerDigits:1];
}

void sub_569C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_56C8(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = SBSGetScreenLockStatus();
  if (v6)
  {
    v7 = a2;
  }

  else
  {
    v7 = 0;
  }

  *(*(*(a1 + 40) + 8) + 24) = v7;
  v8 = _maps_backgroundStateLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = [NSNumber numberWithBool:a2];
    v10 = [NSNumber numberWithBool:v6 != 0];
    *buf = 138412802;
    v12 = v9;
    v13 = 2112;
    v14 = v5;
    v15 = 2112;
    v16 = v10;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_INFO, "MAPS SIRI: Got do-not-disturb-while-driving exit confirmation response %@ error %@ screen locked %@", buf, 0x20u);
  }

  dispatch_group_leave(*(a1 + 32));
}

void sub_604C(void *a1)
{
  v1 = *(a1[7] + 8);
  if ((*(v1 + 24) & 1) == 0)
  {
    *(v1 + 24) = 1;
    v3 = _maps_backgroundStateLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v6 = 0;
      _os_log_impl(&dword_0, v3, OS_LOG_TYPE_INFO, "MAPS SIRI: Bailed out", v6, 2u);
    }

    NSLog(@"MAPS SIRI: We could not get the Maps application to start background nav in a timely fashion.");
    v4 = a1[4];
    v5 = [NSURL URLWithString:@"x-maps-reopen:"];
    [v4 _launchMapsWithURL:v5 serviceHelper:a1[5] placeActionDetails:0 completion:a1[6]];
  }
}

void sub_6120(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _maps_backgroundStateLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v19 = v3;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_INFO, "MAPS SIRI: Got response: %@", buf, 0xCu);
  }

  v5 = *(a1 + 32);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_62A8;
  block[3] = &unk_348F8;
  v17 = *(a1 + 80);
  v13 = v3;
  v11 = *(a1 + 40);
  v6 = *(&v11 + 1);
  v16 = *(a1 + 72);
  v7 = *(a1 + 56);
  v8 = *(a1 + 64);
  *&v9 = v7;
  *(&v9 + 1) = v8;
  v14 = v11;
  v15 = v9;
  v10 = v3;
  dispatch_async(v5, block);
}

void sub_62A8(uint64_t a1)
{
  v1 = *(*(a1 + 80) + 8);
  if (*(v1 + 24) == 1)
  {
    v2 = _maps_backgroundStateLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v2, OS_LOG_TYPE_INFO, "MAPS SIRI: We bailed out before we could get to the start message", buf, 2u);
    }
  }

  else
  {
    *(v1 + 24) = 1;
    v4 = _maps_backgroundStateLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_INFO, "MAPS SIRI: Preparation done", buf, 2u);
    }

    v5 = [*(a1 + 32) navigationState];
    v6 = _maps_backgroundStateLog();
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_INFO);
    if (v5)
    {
      if (v7)
      {
        *buf = 0;
        _os_log_impl(&dword_0, v6, OS_LOG_TYPE_INFO, "MAPS SIRI: Maps has failed preparing, unlocking.", buf, 2u);
      }

      v8 = *(a1 + 40);
      v2 = [NSURL URLWithString:@"x-maps-reopen:"];
      [v8 _launchMapsWithURL:v2 serviceHelper:*(a1 + 48) placeActionDetails:0 completion:*(a1 + 72)];
    }

    else
    {
      if (v7)
      {
        *buf = 0;
        _os_log_impl(&dword_0, v6, OS_LOG_TYPE_INFO, "MAPS SIRI: Sending the start message asynchronously and completing successfully", buf, 2u);
      }

      v9 = *(a1 + 56);
      v10 = [IPCStartNavigationMessage startNavigationMessageWithLoadDirectionsMessage:*(a1 + 64)];
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_64D8;
      v14[3] = &unk_348D0;
      v11 = *(a1 + 72);
      v12 = *(a1 + 40);
      v13 = *(a1 + 48);
      v16 = v11;
      v14[4] = v12;
      v15 = v13;
      [v9 startPreparedNavigation:v10 completion:v14];

      v2 = v16;
    }
  }
}

void sub_64D8(void *a1, void *a2)
{
  if ([a2 success])
  {
    v3 = a1[6];
    v7 = objc_alloc_init(SALocalSearchShowMapPointsCompleted);
    (*(v3 + 16))(v3, v7, 1);
  }

  else
  {
    v4 = _maps_backgroundStateLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_INFO, "MAPS SIRI: Maps has failed to start prepared navigation, unlocking.", buf, 2u);
    }

    v5 = a1[4];
    v6 = [NSURL URLWithString:@"x-maps-reopen:"];
    [v5 _launchMapsWithURL:v6 serviceHelper:a1[5] placeActionDetails:0 completion:a1[6]];
  }
}

void sub_7904(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_791C(uint64_t a1, void *a2, int a3)
{
  v5 = a2;
  v6 = _maps_backgroundStateLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = +[NSThread callStackSymbols];
    v11 = 138412290;
    v12 = v7;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_INFO, "MAPS SIRI: Completion called by %@", &v11, 0xCu);
  }

  v8 = *(*(a1 + 48) + 8);
  if (*(v8 + 24) == 1)
  {
    v9 = _maps_backgroundStateLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      LOWORD(v11) = 0;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_INFO, "MAPS SIRI: Bailing out because we have already been called once", &v11, 2u);
    }
  }

  else
  {
    *(v8 + 24) = 1;
    if (a3)
    {
      [*(a1 + 32) dismissAssistant];
    }

    v10 = *(a1 + 40);
    v9 = [v5 dictionary];
    (*(v10 + 16))(v10, v9);
  }
}

void sub_7C5C(uint64_t a1)
{
  v2 = objc_getAssociatedObject(*(a1 + 32), off_5A128);
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = [v2 copy];
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

        v8 = *(a1 + 32);
        v9 = NSSelectorFromString(*(*(&v10 + 1) + 8 * v7));
        MapsPerformSelector(v8, v9);
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  objc_setAssociatedObject(*(a1 + 32), off_5A128, 0, &dword_0 + 1);
  objc_setAssociatedObject(*(a1 + 32), off_5A120, 0, &dword_0 + 3);
}

void sub_8300(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 32);
  v10[0] = a2;
  v7 = a2;
  v8 = [NSValue valueWithRange:a3, a4];
  v10[1] = v8;
  v9 = [NSArray arrayWithObjects:v10 count:2];
  [v6 addObject:v9];
}

id MapsMap(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (v3)
  {
    v5 = objc_alloc_init(NSMutableArray);
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v6 = v3;
    v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = 0;
      v10 = *v16;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v16 != v10)
          {
            objc_enumerationMutation(v6);
          }

          v12 = v4[2](v4, *(*(&v15 + 1) + 8 * i), v9);
          if (v12)
          {
            [v5 addObject:{v12, v15}];
          }

          ++v9;
        }

        v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v8);
    }

    v13 = [v5 copy];
  }

  else
  {
    v13 = &__NSArray0__struct;
  }

  return v13;
}

id MapsFlatMap(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (v3)
  {
    v5 = objc_alloc_init(NSMutableArray);
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v22 = v3;
    obj = v3;
    v6 = [obj countByEnumeratingWithState:&v29 objects:v34 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = 0;
      v9 = *v30;
      v10 = &off_53000;
      do
      {
        v11 = 0;
        v23 = v7;
        do
        {
          if (*v30 != v9)
          {
            objc_enumerationMutation(obj);
          }

          v12 = v4[2](v4, *(*(&v29 + 1) + 8 * v11), v8);
          v13 = v12;
          if (v12)
          {
            if ([v12 conformsToProtocol:v10[78]])
            {
              v14 = v9;
              v15 = v13;
              v25 = 0u;
              v26 = 0u;
              v27 = 0u;
              v28 = 0u;
              v16 = [v15 countByEnumeratingWithState:&v25 objects:v33 count:16];
              if (v16)
              {
                v17 = v16;
                v18 = *v26;
                do
                {
                  for (i = 0; i != v17; i = i + 1)
                  {
                    if (*v26 != v18)
                    {
                      objc_enumerationMutation(v15);
                    }

                    [v5 addObject:{*(*(&v25 + 1) + 8 * i), v22}];
                  }

                  v17 = [v15 countByEnumeratingWithState:&v25 objects:v33 count:16];
                }

                while (v17);
              }

              v9 = v14;
              v7 = v23;
              v10 = &off_53000;
            }

            else
            {
              [v5 addObject:v13];
            }
          }

          ++v8;

          v11 = v11 + 1;
        }

        while (v11 != v7);
        v7 = [obj countByEnumeratingWithState:&v29 objects:v34 count:16];
      }

      while (v7);
    }

    v20 = [v5 copy];
    v3 = v22;
  }

  else
  {
    v20 = &__NSArray0__struct;
  }

  return v20;
}

id MapsFilter(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (v3)
  {
    v5 = objc_alloc_init(NSMutableArray);
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v6 = v3;
    v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = 0;
      v10 = *v17;
LABEL_4:
      v11 = 0;
      while (1)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v16 + 1) + 8 * v11);
        v15 = 0;
        if (v4[2](v4, v12, v9, &v15))
        {
          [v5 addObject:v12];
        }

        if (v15)
        {
          break;
        }

        ++v9;
        if (v8 == ++v11)
        {
          v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
          if (v8)
          {
            goto LABEL_4;
          }

          break;
        }
      }
    }

    v13 = [v5 copy];
  }

  else
  {
    v13 = &__NSArray0__struct;
  }

  return v13;
}

id MapsFindFirst(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (v3)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v5 = v3;
    v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = 0;
      v9 = *v16;
      while (2)
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v16 != v9)
          {
            objc_enumerationMutation(v5);
          }

          v11 = *(*(&v15 + 1) + 8 * i);
          v14 = 0;
          if (v4[2](v4, v11, v8, &v14))
          {
            v12 = v11;
            goto LABEL_15;
          }

          if (v14)
          {
            goto LABEL_12;
          }

          ++v8;
        }

        v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
        v12 = 0;
        if (v7)
        {
          continue;
        }

        break;
      }
    }

    else
    {
LABEL_12:
      v12 = 0;
    }

LABEL_15:
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

uint64_t MapsAllSatisfies(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (v3)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v5 = v3;
    v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = 0;
      v9 = *v14;
      while (2)
      {
        v10 = 0;
        do
        {
          if (*v14 != v9)
          {
            objc_enumerationMutation(v5);
          }

          if (!v4[2](v4, *(*(&v13 + 1) + 8 * v10), v8))
          {
            v11 = 0;
            goto LABEL_12;
          }

          ++v8;
          v10 = v10 + 1;
        }

        while (v7 != v10);
        v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

    v11 = 1;
LABEL_12:
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

id MapsEquals(void *a1, void *a2)
{
  if (a1 == a2)
  {
    return &dword_0 + 1;
  }

  else
  {
    return [a1 isEqual:a2];
  }
}

__CFString *MapsStringFromBOOL(int a1)
{
  if (a1)
  {
    return @"YES";
  }

  else
  {
    return @"NO";
  }
}

void sub_8D6C(uint64_t a1)
{
  v2 = dispatch_group_create();
  dispatch_group_enter(v2);
  v3 = [*(a1 + 32) connection];
  v4 = [v3 remoteObjectProxy];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_8E68;
  v8[3] = &unk_349C8;
  v5 = *(a1 + 40);
  v9 = v2;
  v10 = v5;
  v6 = v2;
  [v4 dismissNavigationSafetyAlertWithReply:v8];

  v7 = dispatch_walltime(0, (60.0 * 1000000000.0));
  dispatch_group_wait(v6, v7);
}

void sub_9004(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_90B0;
  v6[3] = &unk_34A18;
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(&_dispatch_main_q, v6);
}

void sub_90C4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_916C;
  v6[3] = &unk_34AE0;
  v3 = *(a1 + 48);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v8 = v3;
  v6[4] = v4;
  v7 = v5;
  [v2 performWithMapsRunning:v6];
}

void sub_916C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = objc_alloc_init(IPCLoadDirectionsReply);
    [(IPCLoadDirectionsReply *)v4 setNavigationState:3];
    [(IPCLoadDirectionsReply *)v4 setError:v3];
    v5 = _maps_backgroundStateLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_INFO, "MapsIPCInterface Maps failed to launch, returning Failed", buf, 2u);
    }

    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v6 = +[NSBundle mainBundle];
    v7 = [v6 bundleIdentifier];
    v4 = [v7 stringByAppendingString:@".Maps.PrepareNavigation"];

    *buf = 0;
    v17 = buf;
    v18 = 0x3032000000;
    v19 = sub_9374;
    v20 = sub_9384;
    v21 = 0;
    v8 = [BKSProcessAssertion alloc];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_938C;
    v12[3] = &unk_34AB8;
    v9 = *(a1 + 40);
    v12[4] = *(a1 + 32);
    v13 = v9;
    v14 = *(a1 + 48);
    v15 = buf;
    v10 = [v8 initWithBundleIdentifier:@"com.apple.Maps" flags:43 reason:7 name:v4 withHandler:v12];
    v11 = *(v17 + 5);
    *(v17 + 5) = v10;

    _Block_object_dispose(buf, 8);
  }
}

uint64_t sub_9374(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_938C(uint64_t a1, int a2)
{
  v4 = _maps_backgroundStateLog();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_INFO);
  if (a2)
  {
    if (v5)
    {
      *buf = 0;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_INFO, "MapsIPCInterface Prepare navigation assertion acquired", buf, 2u);
    }

    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_9528;
    v13[3] = &unk_34A90;
    v6 = *(a1 + 32);
    v7 = *(a1 + 40);
    *&v8 = *(a1 + 48);
    *(&v8 + 1) = *(a1 + 56);
    *&v9 = v7;
    *(&v9 + 1) = *(a1 + 32);
    v14 = v9;
    v15 = v8;
    [v6 loadDirectionsWithMessage:v7 completion:v13];

    v10 = v14;
  }

  else
  {
    if (v5)
    {
      *buf = 0;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_INFO, "MapsIPCInterface Failed to acquire assertion, returning Failed", buf, 2u);
    }

    v10 = objc_alloc_init(IPCLoadDirectionsReply);
    [(IPCLoadDirectionsReply *)v10 setNavigationState:3];
    [*(*(*(a1 + 56) + 8) + 40) invalidate];
    v11 = *(*(a1 + 56) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = 0;

    (*(*(a1 + 48) + 16))();
  }
}

void sub_9528(void *a1, void *a2)
{
  v3 = a2;
  v4 = _maps_backgroundStateLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = a1[4];
    *buf = 138412546;
    v10 = v3;
    v11 = 2112;
    v12 = v5;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_INFO, "MapsIPCInterface Received reply: %@ for message: %@", buf, 0x16u);
  }

  (*(a1[6] + 16))();
  v6 = dispatch_time(0, 500000000);
  v7 = *(a1[5] + 8);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_967C;
  block[3] = &unk_34A68;
  block[4] = a1[7];
  dispatch_after(v6, v7, block);
}

void sub_967C(uint64_t a1)
{
  v2 = _maps_backgroundStateLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_INFO, "MapsIPCInterface Invalidating prepare navigation assertion", v5, 2u);
  }

  [*(*(*(a1 + 32) + 8) + 40) invalidate];
  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = 0;
}

void sub_9894(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_9940;
  v6[3] = &unk_34A18;
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(&_dispatch_main_q, v6);
}

void sub_9954(uint64_t a1)
{
  v2 = *(a1 + 32);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_99FC;
  v6[3] = &unk_34AE0;
  v3 = *(a1 + 48);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v8 = v3;
  v6[4] = v4;
  v7 = v5;
  [v2 performWithMapsRunning:v6];
}

void sub_99FC(uint64_t a1, uint64_t a2)
{
  v4 = _maps_backgroundStateLog();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_INFO);
  if (a2)
  {
    if (v5)
    {
      *buf = 0;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_INFO, "MapsIPCInterface Maps failed to launch, returning Failed (start prepared)", buf, 2u);
    }

    v6 = objc_alloc_init(IPCNavigationActionReply);
    [(IPCNavigationActionReply *)v6 setSuccess:0];
    [(IPCNavigationActionReply *)v6 setNavigationActionError:4];
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    if (v5)
    {
      *buf = 0;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_INFO, "MapsIPCInterface acquiring assertion for prepared directions", buf, 2u);
    }

    v7 = [BKSProcessAssertion alloc];
    v8 = +[NSBundle mainBundle];
    v9 = [v8 bundleIdentifier];
    v10 = [v9 stringByAppendingString:@".Maps.StartPreparedNavigation"];
    v6 = [v7 initWithBundleIdentifier:@"com.apple.Maps" flags:3 reason:4 name:v10];

    LODWORD(v9) = [(IPCNavigationActionReply *)v6 acquire];
    v11 = _maps_backgroundStateLog();
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_INFO);
    if (v9)
    {
      if (v12)
      {
        *buf = 0;
        _os_log_impl(&dword_0, v11, OS_LOG_TYPE_INFO, "MapsIPCInterface Sending start prepared navigation to Maps", buf, 2u);
      }

      v14 = *(a1 + 32);
      v13 = *(a1 + 40);
      v15 = *(v14 + 8);
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_9CCC;
      v17[3] = &unk_34B80;
      v17[4] = v14;
      v18 = v13;
      v6 = v6;
      v19 = v6;
      v20 = *(a1 + 48);
      dispatch_async(v15, v17);
    }

    else
    {
      if (v12)
      {
        *buf = 0;
        _os_log_impl(&dword_0, v11, OS_LOG_TYPE_INFO, "MapsIPCInterface Failed to acquire assertion for prepared directions", buf, 2u);
      }

      [(IPCNavigationActionReply *)v6 invalidate];
      v16 = objc_alloc_init(IPCNavigationActionReply);
      [(IPCNavigationActionReply *)v16 setSuccess:0];
      [(IPCNavigationActionReply *)v16 setNavigationActionError:5];
      (*(*(a1 + 48) + 16))();
    }
  }
}

void sub_9CCC(uint64_t a1)
{
  v2 = [*(a1 + 32) connection];
  v3 = [v2 remoteObjectProxy];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_9D9C;
  v5[3] = &unk_34B58;
  v4 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  [v3 startPreparedNavigation:v4 reply:v5];
}

void sub_9D9C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 invalidate];
  (*(*(a1 + 40) + 16))();
}

void sub_9ED4(uint64_t a1)
{
  v2 = [*(a1 + 32) connection];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_A000;
  v7[3] = &unk_34BD0;
  v7[4] = *(a1 + 32);
  v8 = *(a1 + 48);
  v3 = [v2 remoteObjectProxyWithErrorHandler:v7];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_A1B8;
  v5[3] = &unk_34BF8;
  v4 = *(a1 + 40);
  v5[4] = *(a1 + 32);
  v6 = *(a1 + 48);
  [v3 loadDirections:v4 reply:v5];
}

void sub_A000(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _maps_backgroundStateLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v11 = v3;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_INFO, "MapsIPCInterface Connection error while loading directions: %@", buf, 0xCu);
  }

  v5 = *(*(a1 + 32) + 8);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_A144;
  v7[3] = &unk_34BA8;
  v8 = v3;
  v9 = *(a1 + 40);
  v6 = v3;
  dispatch_async(v5, v7);
}

void sub_A144(uint64_t a1)
{
  v2 = objc_alloc_init(IPCLoadDirectionsReply);
  [(IPCLoadDirectionsReply *)v2 setNavigationState:3];
  [(IPCLoadDirectionsReply *)v2 setError:*(a1 + 32)];
  (*(*(a1 + 40) + 16))();
}

void sub_A1B8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 8);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_A27C;
  v7[3] = &unk_34A18;
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

void sub_A3FC(uint64_t a1)
{
  v2 = [*(a1 + 32) connection];
  v3 = [v2 remoteObjectProxy];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_A4B4;
  v4[3] = &unk_34B30;
  v5 = *(a1 + 40);
  [v3 endNavigationWithReply:v4];
}

void sub_A4B4(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_A560;
  v6[3] = &unk_34A18;
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(&_dispatch_main_q, v6);
}

void sub_A574(id a1)
{
  v1 = [(_MapsIPCInterface *)[MapsSiriIPCInterface alloc] initWithListenerEndpointIdentifier:@"kSiriPluginXPCEndpointIdentifier"];
  v2 = qword_5A748;
  qword_5A748 = v1;

  v3 = qword_5A748;

  [v3 _startMapsAppStateMonitor];
}

void sub_A738(uint64_t a1)
{
  v3 = [*(a1 + 32) connection];
  v2 = [v3 remoteObjectProxy];
  [v2 handleTrafficeReroute:*(a1 + 40) reply:*(a1 + 48)];
}

void sub_A840(uint64_t a1)
{
  v3 = [*(a1 + 32) connection];
  v2 = [v3 remoteObjectProxy];
  [v2 endNavigationWithReply:*(a1 + 40)];
}

void sub_A974(uint64_t a1)
{
  v3 = [*(a1 + 32) connection];
  v2 = [v3 remoteObjectProxy];
  [v2 getGuidanceState:*(a1 + 40) reply:*(a1 + 48)];
}

void sub_AA7C(uint64_t a1)
{
  v3 = [*(a1 + 32) connection];
  v2 = [v3 remoteObjectProxy];
  [v2 repeatLastReroutePromptWithReply:*(a1 + 40)];
}

void sub_AB84(uint64_t a1)
{
  v3 = [*(a1 + 32) connection];
  v2 = [v3 remoteObjectProxy];
  [v2 repeatLastGuidanceInstructionWithReply:*(a1 + 40)];
}

void sub_ACB8(uint64_t a1)
{
  v2 = [*(a1 + 32) connection];
  v3 = [v2 remoteObjectProxy];
  [v3 setNavigationMuted:*(a1 + 40)];

  if (*(a1 + 48))
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_AD84;
    block[3] = &unk_34C68;
    v5 = *(a1 + 48);
    dispatch_async(&_dispatch_main_q, block);
  }
}

void sub_AE64(uint64_t a1)
{
  v2 = [*(a1 + 32) connection];
  v3 = [v2 remoteObjectProxy];
  [v3 setNavigationVoiceVolume:*(a1 + 40)];

  if (*(a1 + 48))
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_AF30;
    block[3] = &unk_34C68;
    v5 = *(a1 + 48);
    dispatch_async(&_dispatch_main_q, block);
  }
}

id _maps_backgroundStateLog()
{
  if (qword_5A760 != -1)
  {
    sub_1A890();
  }

  v1 = qword_5A758;

  return v1;
}

void sub_B0C8(id a1)
{
  qword_5A758 = os_log_create("com.apple.Maps", "BackgroundState");

  _objc_release_x1();
}

uint64_t MapsCachedConformsToProtocol(uint64_t a1, Protocol *a2)
{
  v3 = objc_opt_class();
  if (!v3)
  {
    goto LABEL_16;
  }

  v4 = v3;
  if (qword_5A770 != -1)
  {
    sub_1A8A4();
    if (a2)
    {
      goto LABEL_4;
    }

LABEL_16:
    LOBYTE(v7) = 0;
    return v7 & 1;
  }

  if (!a2)
  {
    goto LABEL_16;
  }

LABEL_4:
  v5 = atomic_load(dword_5A370);
  os_unfair_lock_lock(&unk_5A778);
  v6 = [qword_5A768 objectForKey:v4];
  if (!v6)
  {
    v6 = [NSMapTable mapTableWithKeyOptions:256 valueOptions:0];
    [qword_5A768 setObject:v6 forKey:v4];
  }

  v7 = [objc_msgSend(v6 objectForKey:{a2), "unsignedIntegerValue"}];
  os_unfair_lock_unlock(&unk_5A778);
  if (v5 != v7 >> 1)
  {
    v7 = [v4 conformsToProtocol:a2];
    if (qword_5A788 != -1)
    {
      sub_1A8B8();
    }

    v8 = qword_5A780;
    if (os_log_type_enabled(qword_5A780, OS_LOG_TYPE_INFO))
    {
      v9 = v8;
      v10 = NSStringFromClass(v4);
      if (v7)
      {
        v11 = "conforms to";
      }

      else
      {
        v11 = "does not conform to";
      }

      v12 = NSStringFromProtocol(a2);
      v15 = 138544130;
      v16 = v10;
      v17 = 2080;
      v18 = v11;
      v19 = 2114;
      v20 = v12;
      v21 = 1024;
      v22 = v5;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_INFO, "%{public}@ %s %{public}@ (gen: %u)", &v15, 0x26u);
    }

    os_unfair_lock_lock(&unk_5A778);
    v13 = [NSNumber numberWithUnsignedInt:v7 | (2 * v5)];
    [v6 setObject:v13 forKey:a2];

    os_unfair_lock_unlock(&unk_5A778);
  }

  return v7 & 1;
}

void sub_B53C(id a1)
{
  objc_addLoadImageFunc(sub_B598);
  qword_5A768 = [NSMapTable mapTableWithKeyOptions:256 valueOptions:0];

  _objc_release_x1();
}

void sub_B5AC(id a1)
{
  qword_5A780 = os_log_create("com.apple.Maps", "MapsProtocolConformance");

  _objc_release_x1();
}

void sub_BB98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_BBB0(uint64_t a1, void *a2, int a3)
{
  v5 = a2;
  v6 = *(*(a1 + 48) + 8);
  if ((*(v6 + 24) & 1) == 0)
  {
    *(v6 + 24) = 1;
    v9 = v5;
    if (a3)
    {
      [*(a1 + 32) dismissAssistant];
    }

    v7 = *(a1 + 40);
    v8 = [v9 dictionary];
    (*(v7 + 16))(v7, v8);

    v5 = v9;
  }
}

void sub_BD8C(uint64_t a1, void *a2)
{
  v10 = a2;
  if ([v10 success])
  {
    v3 = objc_alloc_init(SALocalSearchNavigationPromptManeuverCompleted);
    goto LABEL_9;
  }

  v4 = [v10 navigationActionError];
  v5 = [SACommandFailed alloc];
  if (v4 == &dword_0 + 2)
  {
    v6 = @"Instructions are nil, nothing to say";
  }

  else
  {
    if (v4 == &dword_0 + 1)
    {
      v3 = [v5 initWithErrorCode:SALocalSearchNavigationNotRunningErrorCode];
      goto LABEL_9;
    }

    v6 = @"Unknown error";
  }

  v3 = [v5 initWithReason:v6];
LABEL_9:
  v7 = v3;
  v8 = *(a1 + 32);
  v9 = [v3 dictionary];
  (*(v8 + 16))(v8, v9);
}

void sub_C638(id a1)
{
  qword_5A798 = objc_opt_new();

  _objc_release_x1();
}

void sub_C880(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 80));
  _Unwind_Resume(a1);
}

id sub_C89C()
{
  if (qword_5A7A8 != -1)
  {
    sub_1A8E0();
  }

  v1 = qword_5A7A0;

  return v1;
}

void sub_C8E0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _populateExternalDevice];
}

uint64_t sub_CA64(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_CC20(uint64_t a1)
{
  v2 = sub_C89C();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = 138543362;
    v5 = v3;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "Allowing previous value of currentCarPlayExternalDevice to deallocate: %{public}@", &v4, 0xCu);
  }
}

void sub_CD0C(id a1)
{
  qword_5A7A0 = os_log_create("com.apple.Maps", "MapsCarPlayExternalDeviceMonitor");

  _objc_release_x1();
}

void sub_CEE4(uint64_t a1)
{
  v4 = objc_alloc_init(SACommandSucceeded);
  v2 = *(a1 + 32);
  v3 = [v4 dictionary];
  (*(v2 + 16))(v2, v3);
}

void sub_EC80(uint64_t a1)
{
  v4 = objc_alloc_init(SALocalSearchSetNavigationVoiceVolumeCompleted);
  v2 = *(a1 + 32);
  v3 = [v4 dictionary];
  (*(v2 + 16))(v2, v3);
}

void sub_F3DC(uint64_t a1, void *a2)
{
  v10 = a2;
  if ([v10 success])
  {
    v3 = objc_alloc_init(SALocalSearchNavigationPromptManeuverCompleted);
    goto LABEL_9;
  }

  v4 = [v10 navigationActionError];
  v5 = [SACommandFailed alloc];
  if (v4 == &dword_0 + 2)
  {
    v6 = @"No traffic prompt to repeat";
  }

  else
  {
    if (v4 == &dword_0 + 1)
    {
      v3 = [v5 initWithErrorCode:SALocalSearchNavigationNotRunningErrorCode];
      goto LABEL_9;
    }

    v6 = @"Unknown error";
  }

  v3 = [v5 initWithReason:v6];
LABEL_9:
  v7 = v3;
  v8 = *(a1 + 32);
  v9 = [v3 dictionary];
  (*(v8 + 16))(v8, v9);
}

void sub_F4E8()
{
  if (qword_5A7B0 != -1)
  {
    sub_1A8F4();
  }
}

id sub_F5BC(id a1)
{
  v1 = +[GEOPlatform sharedPlatform];
  v2 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v1 isInternalInstall]);

  return v2;
}

id sub_10494(id a1)
{
  v1 = +[GEOPlatform sharedPlatform];
  v2 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v1 isInternalInstall]);

  return v2;
}

id sub_11844(id a1)
{
  v1 = +[GEOCountryConfiguration sharedConfiguration];
  v2 = [v1 countryCode];
  v3 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v2 isEqualToString:@"CN"] ^ 1);

  return v3;
}

void sub_11FD8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _maps_backgroundStateLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v11 = 138412290;
    v12 = v3;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_INFO, "MAPS SIRI: Received response for end navigation command: %@", &v11, 0xCu);
  }

  if ([v3 success])
  {
    v5 = *(a1 + 32);
    v6 = objc_alloc_init(SALocalSearchNavigationEndCompleted);
  }

  else
  {
    v7 = [v3 navigationActionError];
    v5 = *(a1 + 32);
    v8 = [SACommandFailed alloc];
    if (v7 == &dword_0 + 1)
    {
      v6 = [v8 initWithErrorCode:SALocalSearchNavigationNotRunningErrorCode];
    }

    else
    {
      v6 = [v8 initWithReason:@"Unknown error"];
    }
  }

  v9 = v6;
  v10 = [v6 dictionary];
  (*(v5 + 16))(v5, v10);
}

MKServerFormattedString *__cdecl sub_127C0(id a1, GEOComposedString *a2, unint64_t a3)
{
  v3 = a2;
  v4 = [[MKServerFormattedString alloc] initWithComposedString:v3];

  return v4;
}

id sub_12818(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[MKServerFormattedString alloc] initWithGeoServerString:v3 parameters:*(a1 + 32)];

  return v4;
}

MKServerFormattedString *__cdecl sub_12880(id a1, GEOComposedString *a2, unint64_t a3)
{
  v3 = a2;
  v4 = [[MKServerFormattedString alloc] initWithComposedString:v3];

  return v4;
}

id sub_128D8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[MKServerFormattedString alloc] initWithGeoServerString:v3 parameters:*(a1 + 32)];

  return v4;
}

void sub_13F88(uint64_t a1)
{
  v2 = _maps_backgroundStateLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_INFO, "MapsIPCInterface Maps broker connection invalidated.", v6, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = *(WeakRetained + 2);
    *(WeakRetained + 2) = 0;
  }
}

void sub_14014(uint64_t a1)
{
  v2 = _maps_backgroundStateLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v7[0] = 0;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_INFO, "MapsIPCInterface Maps broker connection interrupted.", v7, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = [WeakRetained[2] remoteObjectProxy];
    v6 = [v4[3] endpoint];
    [v5 listenerEndpointDidChange:v6 forIdentifier:v4[4]];
  }
}

void sub_1431C(id a1)
{
  v4[0] = FBSOpenApplicationOptionKeyActivateSuspended;
  v4[1] = FBSOpenApplicationOptionKeyPayloadURL;
  v5[0] = &__kCFBooleanTrue;
  v1 = [NSURL URLWithString:@"x-maps-reopen://?backgroundnavigation"];
  v5[1] = v1;
  v2 = [NSDictionary dictionaryWithObjects:v5 forKeys:v4 count:2];
  v3 = qword_5A7B8;
  qword_5A7B8 = v2;
}

void sub_143E4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = _maps_backgroundStateLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = 138412290;
    v7 = v4;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_INFO, "MapsIPCInterface performWithMapsRunning openApplication completed, error: %@", &v6, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
}

uint64_t sub_144B0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_144C8(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 56);
  if (v2)
  {
    dispatch_group_leave(v2);
    v3 = *(a1 + 32);
    v4 = *(v3 + 56);
    *(v3 + 56) = 0;

    v5 = _maps_backgroundStateLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *v6 = 0;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_INFO, "MapsIPCInterface Timed out waiting for a connection to be established", v6, 2u);
    }
  }
}

void sub_14554(uint64_t a1)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), *(*(a1 + 32) + 48));
  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    v2 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      *v3 = 0;
      _os_log_impl(&dword_0, v2, OS_LOG_TYPE_ERROR, "Used established 'connection' but it was nil!", v3, 2u);
    }
  }
}

void sub_14884(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id location)
{
  objc_destroyWeak((v26 + 40));
  objc_destroyWeak((v26 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak((v27 - 128));
  _Unwind_Resume(a1);
}

void sub_148BC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = objc_loadWeakRetained((a1 + 40));
  v4 = _maps_backgroundStateLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v9 = v3;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_INFO, "MapsIPCInterface (%@ invalidationHandler)", buf, 0xCu);
  }

  if (WeakRetained && v3)
  {
    v5 = WeakRetained[5];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_149F8;
    v6[3] = &unk_4AA50;
    v6[4] = WeakRetained;
    v7 = v3;
    dispatch_async(v5, v6);
  }
}

void sub_149F8(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 48);
  v4 = _maps_backgroundStateLog();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_INFO);
  if (v3 == v2)
  {
    if (v5)
    {
      v8 = *(a1 + 40);
      v10 = 138412290;
      v11 = v8;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_INFO, "MapsIPCInterface (%@ invalidationHandler): releasing _connection", &v10, 0xCu);
    }

    v9 = *(a1 + 32);
    v4 = *(v9 + 48);
    *(v9 + 48) = 0;
  }

  else if (v5)
  {
    v6 = *(a1 + 40);
    v7 = *(*(a1 + 32) + 48);
    v10 = 138412546;
    v11 = v6;
    v12 = 2112;
    v13 = v7;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_INFO, "MapsIPCInterface (%@ invalidationHandler): _connection changed to %@", &v10, 0x16u);
  }
}

void sub_14B18(id a1)
{
  v1 = _maps_backgroundStateLog();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
  {
    *v2 = 0;
    _os_log_impl(&dword_0, v1, OS_LOG_TYPE_INFO, "MapsIPCInterface Connection interrupted.", v2, 2u);
  }
}

void sub_14B80(uint64_t a1)
{
  v2 = _maps_backgroundStateLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v4 = 138412290;
    v5 = v3;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_INFO, "MapsIPCInterface Received new connection: %@", &v4, 0xCu);
  }

  objc_storeStrong((*(a1 + 40) + 48), *(a1 + 32));
}

void sub_14C34(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 56);
  if (v2)
  {
    dispatch_group_leave(v2);
    v3 = *(a1 + 32);
    v4 = *(v3 + 56);
    *(v3 + 56) = 0;
  }
}

void sub_187CC(uint64_t a1, void *a2)
{
  if ([a2 success])
  {
    v3 = objc_alloc_init(SACommandSucceeded);
  }

  else
  {
    v4 = [SACommandFailed alloc];
    v3 = [v4 initWithErrorCode:SALocalSearchRerouteSuggestionNotAvailableErrorCode];
  }

  v5 = *(a1 + 32);
  v7 = v3;
  v6 = [v3 dictionary];
  (*(v5 + 16))(v5, v6);
}

_BYTE *sub_194B8(uint64_t a1)
{
  result = *(a1 + 32);
  if (result[8] == 1)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_19548;
    v3[3] = &unk_4AB48;
    v3[4] = result;
    result = [result _notifyObserversWithBlock:v3];
    *(*(a1 + 32) + 8) = 0;
  }

  return result;
}

void sub_1A5B8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3 && [v3 isNavigating])
  {
    v5 = objc_alloc_init(SALocalSearchGetNavigationStatusCompleted);
    v6 = [*(a1 + 32) _overallETAForGuidanceState:v4];
    [v5 setOverallEta:v6];

    v7 = [*(a1 + 32) _maneuverETAForGuidanceState:v4];
    [v5 setNextManeuverEta:v7];

    v8 = [*(a1 + 32) _routeForGuidanceState:v4];
    [v5 setRoute:v8];

    v9 = [*(a1 + 32) _trafficIncidentAlertTypeForGuidanceState:v4];
    [v5 setTrafficIncidentAlertType:v9];

    v10 = [*(a1 + 32) _navigationVolumeForGuidanceState:v4];
    [v5 setVolume:v10];

    v11 = [v5 dictionary];
    v12 = _maps_backgroundStateLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v16 = 138477827;
      v17 = v11;
      _os_log_impl(&dword_0, v12, OS_LOG_TYPE_INFO, "MAPS SIRI: Returning successfully with %{private}@", &v16, 0xCu);
    }

    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v13 = _maps_backgroundStateLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = [v4 shortDescription];
      v16 = 138478083;
      v17 = v14;
      v18 = 1024;
      v19 = [v4 isNavigating];
      _os_log_impl(&dword_0, v13, OS_LOG_TYPE_INFO, "MAPS SIRI: Failed due to lack of guidance state: %{private}@ or isNavigating: %d", &v16, 0x12u);
    }

    v15 = *(a1 + 48);
    v5 = [*(a1 + 40) dictionary];
    (*(v15 + 16))(v15, v5);
  }
}