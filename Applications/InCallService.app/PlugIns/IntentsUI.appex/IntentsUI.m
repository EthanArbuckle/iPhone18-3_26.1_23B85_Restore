id RTTUIUtilitiesClass()
{
  if (qword_1000C6018 != -1)
  {
    sub_10007A1C8();
  }

  v1 = qword_1000C6010;

  return v1;
}

void sub_100002A4C(id a1)
{
  qword_1000C6010 = CUTWeakLinkClass();
  if (!qword_1000C6010)
  {
    v1 = PHDefaultLog();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
    {
      *v2 = 0;
      _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "[WARN] Could not find class RTTUIUtilities; RTTUI.framework may have failed to link.", v2, 2u);
    }
  }
}

void sub_100002B18(id a1)
{
  qword_1000C6020 = [UIFontDescriptor preferredFontDescriptorWithTextStyle:UIFontTextStyleHeadline addingSymbolicTraits:0x8000 options:0];

  _objc_release_x1();
}

void sub_100002BB0(id a1)
{
  qword_1000C6030 = [UIFontDescriptor preferredFontDescriptorWithTextStyle:UIFontTextStyleCaption2 addingSymbolicTraits:0x8000 options:0];

  _objc_release_x1();
}

uint64_t sub_100002CA4(uint64_t a1)
{
  qword_1000C6040 = objc_alloc_init(*(a1 + 32));

  return _objc_release_x1();
}

void sub_100002DEC(uint64_t a1)
{
  +[TUCallCapabilities initializeCachedValues];
  v2 = objc_alloc_init(TUCallProviderManager);
  [*(a1 + 32) setCallProviderManager:v2];
  v3 = +[CNContactStore contactStore];
  [*(a1 + 32) setContactStore:v3];

  v4 = +[CNContactStore suggestedContactStore];
  [*(a1 + 32) setSuggestedContactStore:v4];

  v5 = objc_alloc_init(TUCallDirectoryMetadataCacheDataProvider);
  v14[0] = v5;
  v6 = objc_alloc_init(TUMapsMetadataCacheDataProvider);
  v14[1] = v6;
  v7 = objc_alloc_init(TUSuggestionsMetadataCacheDataProvider);
  v14[2] = v7;
  v8 = objc_alloc_init(TUGeoLocationMetadataCacheDataProvider);
  v14[3] = v8;
  v9 = [NSArray arrayWithObjects:v14 count:4];

  v10 = [[TUMetadataCache alloc] initWithDataProviders:v9];
  [*(a1 + 32) setMetadataCache:v10];

  if (+[PHDevice isGeminiCapable])
  {
    v11 = [v2 telephonyProvider];
    v12 = [v11 identifier];
    v13 = [v2 providerWithIdentifier:v12];
  }

  [*(a1 + 32) setInitializationBlockQueued:0];
}

void sub_1000031DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_1000031F4(uint64_t a1)
{
  os_unfair_lock_lock((*(a1 + 32) + 12));
  v2 = *(*(a1 + 32) + 16);
  os_unfair_lock_unlock((*(a1 + 32) + 12));

  return v2;
}

uint64_t sub_100003250(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100003268(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = (*(*(a1 + 32) + 16))();

  return _objc_release_x1();
}

void sub_1000035E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_1000035FC(uint64_t a1)
{
  os_unfair_lock_lock((*(a1 + 32) + 12));
  v2 = *(*(a1 + 32) + 24);
  os_unfair_lock_unlock((*(a1 + 32) + 12));

  return v2;
}

uint64_t sub_100003658(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = (*(*(a1 + 32) + 16))();

  return _objc_release_x1();
}

void sub_1000038BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_1000038D4(uint64_t a1)
{
  os_unfair_lock_lock((*(a1 + 32) + 12));
  v2 = *(*(a1 + 32) + 40);
  os_unfair_lock_unlock((*(a1 + 32) + 12));

  return v2;
}

uint64_t sub_100003930(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = (*(*(a1 + 32) + 16))();

  return _objc_release_x1();
}

void sub_100003B88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_100003BA0(uint64_t a1)
{
  os_unfair_lock_lock((*(a1 + 32) + 12));
  v2 = *(*(a1 + 32) + 32);
  os_unfair_lock_unlock((*(a1 + 32) + 12));

  return v2;
}

uint64_t sub_100003BFC(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = (*(*(a1 + 32) + 16))();

  return _objc_release_x1();
}

id PHDefaultLog()
{
  if (qword_1000C6058 != -1)
  {
    sub_10007A204();
  }

  v1 = qword_1000C6050;

  return v1;
}

void sub_100003D98(id a1)
{
  qword_1000C6050 = os_log_create("com.apple.calls.mobilephone", "Default");

  _objc_release_x1();
}

void sub_10000401C(id a1)
{
  v3 = [UIFont preferredFontForTextStyle:UIFontTextStyleFootnote];
  v1 = [v3 withCaseSensitiveAttribute];
  v2 = qword_1000C6060;
  qword_1000C6060 = v1;
}

void sub_1000040C8(id a1)
{
  v3 = +[UIFontDescriptor voicemailHeadlineShortFontDescriptor];
  v1 = [UIFont fontWithDescriptor:v3 size:0.0];
  v2 = qword_1000C6070;
  qword_1000C6070 = v1;
}

void sub_100004184(id a1)
{
  v4 = +[UIFontDescriptor voicemailCaptionRegularFontDescriptor];
  v1 = [UIFont fontWithDescriptor:v4 size:0.0];
  v2 = [v1 withCaseSensitiveAttribute];
  v3 = qword_1000C6080;
  qword_1000C6080 = v2;
}

void sub_100007498(uint64_t a1)
{
  v2 = PHDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) intent];
    v4 = [*(a1 + 32) extensionContext];
    v12 = 138412546;
    v13 = v3;
    v14 = 2112;
    v15 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "countdown completed, request handling of intent: %@ on extension context: %@", &v12, 0x16u);
  }

  v6 = *(a1 + 32);
  v5 = (a1 + 32);
  v7 = [v6 intent];

  if (v7)
  {
    v8 = [*v5 extensionContext];
    v9 = [*v5 intent];
    [v8 _requestHandlingOfIntent:v9];
  }

  else
  {
    v8 = PHDefaultLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10007A254(v5);
    }
  }

  v10 = PHDefaultLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v12) = 0;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Enabling application idleTimer for CallIntentCountdown: countdownCompleted", &v12, 2u);
  }

  v11 = +[UIApplication sharedApplication];
  [v11 _setIdleTimerDisabled:0 forReason:@"CallIntentCountdown"];
}

void sub_100007C3C(id a1)
{
  qword_1000C6090 = objc_alloc_init(CHManager);

  _objc_release_x1();
}

void sub_100007CBC(id a1)
{
  qword_1000C60A0 = objc_alloc_init(NSCache);

  _objc_release_x1();
}

void sub_1000091B4(id a1)
{
  qword_1000C60B0 = objc_alloc_init(NSCache);

  _objc_release_x1();
}

void sub_10000B854(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10000B874(uint64_t a1)
{
  --*(*(*(a1 + 48) + 8) + 24);
  v2 = [*(a1 + 32) countdownLabel];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10000B99C;
  v10[3] = &unk_1000B1D48;
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v11 = *(a1 + 32);
  v12 = v4;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10000BA20;
  v6[3] = &unk_1000B1D70;
  v5 = *(a1 + 56);
  v8 = v4;
  v9 = v5;
  v6[4] = v11;
  v7 = v3;
  [UIView transitionWithView:v2 duration:5242880 options:v10 animations:v6 completion:0.200000003];
}

void sub_10000B99C(uint64_t a1)
{
  v3 = [NSString stringWithFormat:@"%ld", *(*(*(a1 + 40) + 8) + 24)];
  v2 = [*(a1 + 32) countdownLabel];
  [v2 setText:v3];
}

uint64_t sub_10000BA20(uint64_t result)
{
  if (!*(*(*(result + 48) + 8) + 24))
  {
    v1 = result;
    v2 = PHDefaultLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(v1 + 56);
      v4 = 134217984;
      v5 = v3;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "completed count down from number: %ld", &v4, 0xCu);
    }

    [*(v1 + 32) cancel];
    return (*(*(v1 + 40) + 16))();
  }

  return result;
}

id sub_10000C670(uint64_t a1, void *a2, void *a3)
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
    v12 = PHDefaultLog();
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

void sub_10000FF74(uint64_t a1)
{
  v2 = [*(a1 + 32) gridView];
  [v2 setArrangedSubviewRows:&__NSArray0__struct];

  v3 = [*(a1 + 32) titleStackView];
  [v3 setArrangedSubviews:&__NSArray0__struct];

  v4 = [*(a1 + 32) subtitleStackView];
  [v4 setArrangedSubviews:&__NSArray0__struct];
}

id sub_100010C74(id a1, SEL a2, id a3)
{
  v4 = a3;
  v5 = [v4 senderDestinationID];
  if ([v5 length])
  {
    v6 = [v4 senderISOCountryCode];
    v7 = [TUHandle normalizedPhoneNumberHandleForValue:v5 isoCountryCode:v6];

    if (v7)
    {
      v8 = [[a1 alloc] initWithHandle:v7];
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

  return v8;
}

id sub_100010D3C(id a1, SEL a2, id a3)
{
  v3 = a3;
  v4 = objc_alloc_init(NSMutableOrderedSet);
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = v3;
  v5 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v22;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v22 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v21 + 1) + 8 * i);
        v10 = [v9 receiverDestinationID];
        if ([v10 length])
        {
          v11 = [v9 receiverISOCountryCode];
          v12 = [TUHandle normalizedPhoneNumberHandleForValue:v10 isoCountryCode:v11];

          if (v12)
          {
            v13 = [[TUMetadataDestinationID alloc] initWithHandle:v12];
          }

          else
          {
            v13 = 0;
          }

          [v4 addObject:v13];
        }

        else
        {
          v13 = 0;
        }

        v14 = [v9 senderDestinationID];

        if ([v14 length])
        {
          v15 = [v9 senderISOCountryCode];
          v16 = [TUHandle normalizedPhoneNumberHandleForValue:v14 isoCountryCode:v15];

          if (v16)
          {
            v17 = [[TUMetadataDestinationID alloc] initWithHandle:v16];

            v13 = v17;
          }

          [v4 addObject:v13];
        }
      }

      v6 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v6);
  }

  v18 = [v4 array];

  return v18;
}

void sub_1000113F0(uint64_t a1)
{
  v2 = [*(a1 + 32) fetchContactFormatter];
  v3 = *(a1 + 32);
  v4 = *(v3 + 72);
  *(v3 + 72) = v2;

  v5 = [*(a1 + 32) fetchNumberFormatter];
  v6 = *(a1 + 32);
  v7 = *(v6 + 96);
  *(v6 + 96) = v5;

  v8 = objc_alloc_init(NSMutableDictionary);
  v9 = *(a1 + 32);
  v10 = *(v9 + 88);
  *(v9 + 88) = v8;

  [*(a1 + 32) updateRecentCalls];
  [*(a1 + 32) setUnreadCallCount:{objc_msgSend(*(*(a1 + 32) + 24), "unreadCallCount")}];
  v11 = +[NSNotificationCenter defaultCenter];
  [v11 addObserver:*(a1 + 32) selector:"handleCNContactStoreDidChangeNotification:" name:CNContactStoreDidChangeNotification object:0];
  [*(a1 + 32) addAcceptedIntroductionsNotifier];
  [v11 addObserver:*(a1 + 32) selector:"handleIDSServiceAvailabilityDidChangeNotification:" name:IDSServiceAvailabilityDidChangeNotification object:0];
  [v11 addObserver:*(a1 + 32) selector:"handleNSCurrentLocaleDidChangeNotification:" name:NSCurrentLocaleDidChangeNotification object:0];
  [v11 addObserver:*(a1 + 32) selector:"handleTUCallHistoryControllerRecentCallsDidChangeNotification:" name:TUCallHistoryControllerRecentCallsDidChangeNotification object:0];
  [v11 addObserver:*(a1 + 32) selector:"handleTUCallHistoryControllerUnreadCallCountDidChangeNotification:" name:TUCallHistoryControllerUnreadCallCountDidChangeNotification object:0];
  [v11 addObserver:*(a1 + 32) selector:"handleTUMetadataCacheDidFinishUpdatingNotification:" name:TUMetadataCacheDidFinishUpdatingNotification object:*(*(a1 + 32) + 104)];
  [v11 addObserver:*(a1 + 32) selector:"handleUIApplicationSignificantTimeChangeNotification:" name:UIApplicationSignificantTimeChangeNotification object:0];
  [v11 addObserver:*(a1 + 32) selector:"handleUIApplicationDidBecomeActiveNotification:" name:UIApplicationDidBecomeActiveNotification object:0];
  objc_initWeak(&location, *(a1 + 32));
  if (qword_1000C60D0 != -1)
  {
    sub_10007A810();
  }

  v12 = qword_1000C60D8;
  v13 = *(a1 + 32);
  v14 = *(v13 + 56);
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_1000116C0;
  handler[3] = &unk_1000B1E10;
  objc_copyWeak(&v17, &location);
  v16 = *(a1 + 32);
  notify_register_dispatch(v12, (v13 + 16), v14, handler);
  [*(a1 + 32) setInitializationBlockQueued:0];

  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);
}

void sub_1000116A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000116C0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = PHDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      if (qword_1000C60D0 != -1)
      {
        sub_10007A838();
      }

      *buf = 136315138;
      v10 = qword_1000C60D8;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Handling %s by fetching metadata for recent calls", buf, 0xCu);
    }

    v4 = [*(a1 + 32) recentCalls];
    if ([v4 count])
    {
      v5 = [*(a1 + 32) serialQueue];
      v6[0] = _NSConcreteStackBlock;
      v6[1] = 3221225472;
      v6[2] = sub_100011844;
      v6[3] = &unk_1000B1DE8;
      v7 = *(a1 + 32);
      v8 = v4;
      dispatch_async(v5, v6);
    }
  }
}

void sub_100011B88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_100011BA0(uint64_t a1)
{
  os_unfair_lock_lock((*(a1 + 32) + 12));
  v2 = *(*(a1 + 32) + 112);
  os_unfair_lock_unlock((*(a1 + 32) + 12));

  return v2;
}

uint64_t sub_100011BFC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100011C14(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = (*(*(a1 + 32) + 16))();

  return _objc_release_x1();
}

void sub_100011F28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100011F44(uint64_t a1)
{
  *(*(*(a1 + 48) + 8) + 40) = [*(a1 + 32) contactForHandle:*(a1 + 40)];

  return _objc_release_x1();
}

void sub_1000120A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000120BC(uint64_t a1)
{
  v6 = [*(a1 + 32) itemCache];
  v2 = [*(a1 + 40) uniqueId];
  v3 = [v6 objectForKeyedSubscript:v2];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void sub_100012294(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000122AC(uint64_t a1)
{
  v2 = [*(a1 + 32) callHistoryController];
  v3 = [v2 coalescingStrategy];

  if (v3 == 2)
  {
    v4 = &kCHCoalescingStrategyCollapseIfEqual;
  }

  else
  {
    if (v3 != 1)
    {
      return;
    }

    v4 = &kCHCoalescingStrategyRecents;
  }

  v5 = *v4;
  if (v5)
  {
    v9 = v5;
    v6 = [*(a1 + 40) coalescedCallWithCall:*(a1 + 48) usingStrategy:v5];
    v7 = *(*(a1 + 56) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;
  }
}

void sub_100012404(uint64_t a1)
{
  v1 = [*(a1 + 32) callHistoryController];
  [v1 deleteAllRecentCalls];
}

void sub_1000124FC(uint64_t a1)
{
  v2 = [*(a1 + 32) callHistoryController];
  [v2 deleteRecentCalls:*(a1 + 40)];
}

void sub_100012620(uint64_t a1)
{
  v1 = [*(a1 + 32) callHistoryController];
  [v1 markRecentCallsAsRead];
}

void sub_1000126EC(uint64_t a1)
{
  v1 = [*(a1 + 32) callHistoryController];
  [v1 markRecentAudioCallsAsRead];
}

void sub_1000127B8(uint64_t a1)
{
  v1 = [*(a1 + 32) callHistoryController];
  [v1 markRecentVideoCallsAsRead];
}

void sub_10001295C(uint64_t a1)
{
  v2 = [*(a1 + 32) callHistoryController];
  [v2 updateReminderUUID:*(a1 + 40) forRecentCall:*(a1 + 48)];
}

void sub_100012B6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100012B84(uint64_t a1)
{
  v7 = [*(a1 + 32) contactsByHandleForRecentCall:*(a1 + 40) keyDescriptors:*(a1 + 48)];
  v2 = [v7 allValues];
  v3 = [v2 firstObject];
  v4 = [v3 firstObject];
  v5 = *(*(a1 + 56) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

void sub_100012D5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100012D74(uint64_t a1)
{
  v2 = [*(a1 + 32) contactsByHandleForRecentCall:*(a1 + 40) keyDescriptors:*(a1 + 48)];
  if (v2)
  {
    v3 = +[NSMutableDictionary dictionary];
    v4 = *(*(a1 + 56) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;

    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v6 = [v2 allKeys];
    v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v15;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v14 + 1) + 8 * i);
          v12 = [v2 objectForKeyedSubscript:v11];
          v13 = [v12 firstObject];
          [*(*(*(a1 + 56) + 8) + 40) setObject:v13 forKeyedSubscript:v11];
        }

        v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v8);
    }
  }
}

void sub_100012FBC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100012FDC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained handleUpdatedContacts];
}

void sub_100013130(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100013148(uint64_t a1)
{
  v2 = PHDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v12 = 138412290;
    v13 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Attempting to create a dial request for recent call %@", &v12, 0xCu);
  }

  v4 = [*(a1 + 40) callProviderManager];
  v5 = [v4 dialRequestForRecentCall:*(a1 + 32)];
  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  if (*(*(*(a1 + 48) + 8) + 40))
  {
    v8 = [*(a1 + 32) validRemoteParticipantHandles];
    v9 = [v8 anyObject];

    if (v9)
    {
      v10 = [*(a1 + 40) contactForHandle:v9];
      v11 = [v10 identifier];
      [*(*(*(a1 + 48) + 8) + 40) setContactIdentifier:v11];
    }

    [*(*(*(a1 + 48) + 8) + 40) setOriginatingUIType:8];
  }

  else
  {
    v9 = PHDefaultLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_10007A84C((a1 + 32), v9);
    }
  }
}

void sub_100013424(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = PHDefaultLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_10007A8C8(a1, v3, v4);
    }
  }
}

void sub_100015718(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100015730(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) identifier];
  v4 = +[CNContactViewController descriptorForRequiredKeys];
  v9 = v4;
  v5 = [NSArray arrayWithObjects:&v9 count:1];
  v6 = [v2 fetchUnifiedContactForID:v3 withDescriptors:v5];
  v7 = *(*(a1 + 48) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;
}

void sub_10001764C(uint64_t a1)
{
  v2 = [*(a1 + 32) featureFlags];
  v3 = [v2 phoneRecentsAvatarsEnabled];

  if (v3)
  {
    v4 = [*(a1 + 32) serialQueue];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100017718;
    v7[3] = &unk_1000B1DE8;
    v5 = *(a1 + 40);
    v6 = *(a1 + 32);
    v8 = v5;
    v9 = v6;
    dispatch_async(v4, v7);
  }
}

void sub_100017718(uint64_t a1)
{
  if ([*(a1 + 32) count])
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v2 = *(a1 + 32);
    v3 = [v2 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v16;
      do
      {
        for (i = 0; i != v4; i = i + 1)
        {
          if (*v16 != v5)
          {
            objc_enumerationMutation(v2);
          }

          v7 = *(*(&v15 + 1) + 8 * i);
          v8 = [v7 uniqueId];
          v9 = [*(a1 + 40) itemCache];
          v10 = [v9 objectForKeyedSubscript:v8];
          v11 = [v10 mutableCopy];

          if (v11)
          {
            v12 = [*(a1 + 40) localizedSubtitleForRecentCall:v7];
            [v11 setLocalizedSubtitle:v12];

            v13 = [v11 copy];
            v14 = [*(a1 + 40) itemCache];
            [v14 setObject:v13 forKeyedSubscript:v8];
          }
        }

        v4 = [v2 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v4);
    }

    os_unfair_lock_lock((*(a1 + 40) + 12));
    [*(a1 + 40) notifyDelegatesRecentsController:*(a1 + 40) didUpdateCalls:*(a1 + 32)];
    os_unfair_lock_unlock((*(a1 + 40) + 12));
  }
}

void sub_100017A8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100017AB0(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = [WeakRetained serialQueue];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100017B88;
  v9[3] = &unk_1000B1FA0;
  v9[4] = WeakRetained;
  v10 = v3;
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v11 = v6;
  v12 = v7;
  v8 = v3;
  dispatch_async(v5, v9);
}

void sub_100017B88(uint64_t a1)
{
  [*(a1 + 32) setBlockedStatusCache:*(a1 + 40)];
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = *(a1 + 48);
  v2 = [obj countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v28;
    v20 = *v28;
    do
    {
      v5 = 0;
      v21 = v3;
      do
      {
        if (*v28 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v27 + 1) + 8 * v5);
        v7 = [v6 uniqueId];
        v8 = [*(a1 + 32) itemCache];
        v9 = [v8 objectForKeyedSubscript:v7];
        v10 = [v9 mutableCopy];

        if (v10)
        {
          v25 = 0u;
          v26 = 0u;
          v23 = 0u;
          v24 = 0u;
          v11 = [v6 remoteParticipantHandles];
          v12 = [v11 countByEnumeratingWithState:&v23 objects:v31 count:16];
          if (v12)
          {
            v13 = *v24;
            while (2)
            {
              for (i = 0; i != v12; ++i)
              {
                if (*v24 != v13)
                {
                  objc_enumerationMutation(v11);
                }

                v15 = *(*(&v23 + 1) + 8 * i);
                v16 = [*(a1 + 32) blockedStatusCache];
                v17 = [v16 objectForKeyedSubscript:v15];

                if (v17 && [v17 intValue] == 1)
                {

                  v12 = 1;
                  goto LABEL_18;
                }
              }

              v12 = [v11 countByEnumeratingWithState:&v23 objects:v31 count:16];
              if (v12)
              {
                continue;
              }

              break;
            }

LABEL_18:
            v4 = v20;
            v3 = v21;
          }

          [v10 setIsBlocked:v12];
          v18 = [v10 copy];
          v19 = [*(a1 + 32) itemCache];
          [v19 setObject:v18 forKeyedSubscript:v7];
        }

        v5 = v5 + 1;
      }

      while (v5 != v3);
      v3 = [obj countByEnumeratingWithState:&v27 objects:v32 count:16];
    }

    while (v3);
  }

  os_unfair_lock_lock((*(a1 + 56) + 12));
  [*(a1 + 32) notifyDelegatesRecentsController:*(a1 + 32) didUpdateCalls:*(a1 + 48)];
  os_unfair_lock_unlock((*(a1 + 56) + 12));
}

void sub_1000185AC(uint64_t a1)
{
  v6 = [*(a1 + 32) recentCalls];
  if ([v6 count])
  {
    v2 = [*(a1 + 32) contactCache];
    [v2 removeAllObjects];

    v3 = *(a1 + 32);
    v4 = [v3 recentCalls];
    [v3 fetchContactsForRecentCalls:v4];

    v5 = [*(a1 + 32) itemCache];
    [v5 removeAllObjects];

    [*(a1 + 32) populateItemCacheForRecentCalls:v6];
    os_unfair_lock_lock((*(a1 + 32) + 12));
    [*(a1 + 32) notifyDelegatesRecentsController:*(a1 + 32) didChangeCalls:v6];
    os_unfair_lock_unlock((*(a1 + 32) + 12));
  }
}

void sub_100018A74(uint64_t a1)
{
  v2 = [*(a1 + 32) fetchContactFormatter];
  [*(a1 + 32) setContactFormatter:v2];

  v3 = [*(a1 + 32) fetchNumberFormatter];
  [*(a1 + 32) setNumberFormatter:v3];

  v8 = [*(a1 + 32) recentCalls];
  if ([v8 count])
  {
    v4 = [*(a1 + 32) itemCache];
    [v4 removeAllObjects];

    [*(a1 + 32) populateItemCacheForRecentCalls:v8];
    v5 = [*(a1 + 32) featureFlags];
    v6 = [v5 phoneRecentsAvatarsEnabled];

    os_unfair_lock_lock((*(a1 + 32) + 12));
    v7 = *(a1 + 32);
    if (v6)
    {
      [v7 notifyDelegatesRecentsController:v7 didUpdateCalls:v8];
    }

    else
    {
      [v7 notifyDelegatesRecentsController:v7 didChangeCalls:v8];
    }

    os_unfair_lock_unlock((*(a1 + 32) + 12));
  }
}

void sub_100019050(uint64_t a1)
{
  v2 = [*(a1 + 32) recentCalls];
  if ([v2 count])
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v16 = v2;
    v3 = v2;
    v4 = [v3 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v18;
      do
      {
        for (i = 0; i != v5; i = i + 1)
        {
          if (*v18 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = *(*(&v17 + 1) + 8 * i);
          v9 = [v8 uniqueId];
          v10 = [*(a1 + 32) itemCache];
          v11 = [v10 objectForKeyedSubscript:v9];
          v12 = [v11 mutableCopy];

          if (v12)
          {
            v13 = [*(a1 + 32) localizedSubtitleForRecentCall:v8];
            [v12 setLocalizedSubtitle:v13];

            v14 = [v12 copy];
            v15 = [*(a1 + 32) itemCache];
            [v15 setObject:v14 forKeyedSubscript:v9];
          }
        }

        v5 = [v3 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v5);
    }

    os_unfair_lock_lock((*(a1 + 32) + 12));
    [*(a1 + 32) notifyDelegatesRecentsController:*(a1 + 32) didChangeCalls:v3];
    os_unfair_lock_unlock((*(a1 + 32) + 12));
    v2 = v16;
  }
}

void sub_10001939C(uint64_t a1)
{
  v3 = [*(a1 + 32) recentCalls];
  if ([v3 count])
  {
    v2 = [*(a1 + 32) itemCache];
    [v2 removeAllObjects];

    [*(a1 + 32) populateItemCacheForRecentCalls:v3];
    os_unfair_lock_lock((*(a1 + 32) + 12));
    [*(a1 + 32) notifyDelegatesRecentsController:*(a1 + 32) didChangeCalls:v3];
    os_unfair_lock_unlock((*(a1 + 32) + 12));
  }
}

void sub_10001A2E8(id a1)
{
  v3 = +[NSBundle mainBundle];
  v1 = [v3 localizedStringForKey:@"UNKNOWN_LABEL" value:&stru_1000B4840 table:@"PHRecents"];
  v2 = qword_1000C60C0;
  qword_1000C60C0 = v1;
}

void sub_10001A518(id a1)
{
  v1 = CUTWeakLinkSymbol();
  if (v1)
  {
    qword_1000C60D8 = *v1;
  }
}

void sub_10001A550(id a1)
{
  v4[0] = CNContactPhoneNumbersKey;
  v4[1] = CNContactEmailAddressesKey;
  v1 = [CNContactFormatter descriptorForRequiredKeysForStyle:0];
  v4[2] = v1;
  v4[3] = CNContactSocialProfilesKey;
  v2 = [NSArray arrayWithObjects:v4 count:4];
  v3 = qword_1000C60E0;
  qword_1000C60E0 = v2;
}

void sub_10001A81C(id *a1)
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
      block[2] = sub_10001A9A4;
      block[3] = &unk_1000B2050;
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
    v5 = PHDefaultLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Stopped fetchRTTConversationForCallUUID because MPRTTTranscriptionMessage was deallocated before starting", buf, 2u);
    }
  }

  objc_destroyWeak(&to);
}

void sub_10001A9A4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained setConversation:*(a1 + 32)];
    v4 = PHDefaultLog();
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
    v5 = PHDefaultLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Stopped fetchRTTConversationForCallUUID because MPRTTTranscriptionMessage was deallocated when trying to write conversation", v8, 2u);
    }
  }
}

void sub_10001F97C(uint64_t a1)
{
  v2 = PHDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "MPVoicemailController initWithVoicemailManager, inside serialDispatchQueue", buf, 2u);
  }

  objc_storeStrong((*(a1 + 32) + 96), &_dispatch_main_q);
  v3 = *(a1 + 32);
  v4 = *(v3 + 32);
  *(v3 + 32) = &__NSArray0__struct;

  v5 = *(a1 + 32);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10001FB8C;
  v7[3] = &unk_1000B20A0;
  v8 = v5;
  [v8 fetchMessagesCompletion:v7];
  v6 = +[NSNotificationCenter defaultCenter];
  [v6 addObserver:*(a1 + 32) selector:"handleCNContactStoreDidChangeNotification:" name:CNContactStoreDidChangeNotification object:0];
  [v6 addObserver:*(a1 + 32) selector:"handleNSCurrentLocaleDidChangeNotification:" name:NSCurrentLocaleDidChangeNotification object:0];
  [v6 addObserver:*(a1 + 32) selector:"handleTUMetadataCacheDidFinishUpdatingNotification:" name:TUMetadataCacheDidFinishUpdatingNotification object:0];
  [v6 addObserver:*(a1 + 32) selector:"handleUIApplicationSignificantTimeChangeNotification:" name:UIApplicationSignificantTimeChangeNotification object:0];
  [v6 addObserver:*(a1 + 32) selector:"handleUIApplicationWillEnterForegroundNotification:" name:UIApplicationWillEnterForegroundNotification object:0];
  [v6 addObserver:*(a1 + 32) selector:"handleRecentsChangedNotification:" name:kCallHistoryDatabaseChangedNotification object:0];
  [v6 addObserver:*(a1 + 32) selector:"handleVoicemailsChangedNotification:" name:@"PHVoicemailManagerVoicemailsChanged" object:0];
  [*(a1 + 32) addAcceptedIntroductionsNotifier];
}

void sub_10001FB8C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = PHDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "MPVoicemailController initWithVoicemailManager, fetchMessagesCompletion", v5, 2u);
  }

  [*(a1 + 32) setMessages:v3];
}

uint64_t sub_10001FD6C(uint64_t a1)
{
  if (objc_loadWeakRetained((a1 + 40)))
  {
    (*(*(a1 + 32) + 16))();
  }

  return _objc_release_x1();
}

void sub_10001FEB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10001FED0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10001FFE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000200B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10002030C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100020324(uint64_t a1)
{
  v2 = [*(a1 + 32) identifier];
  v43 = [NSString stringWithFormat:@"%@", v2];

  v3 = [*(a1 + 40) localizedSubtitleCache];
  v4 = [v3 objectForKey:v43];
  v5 = *(*(a1 + 48) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  if (![*(*(*(a1 + 48) + 8) + 40) length])
  {
    v7 = [*(a1 + 32) senderDestinationID];
    if ([v7 length])
    {
      v8 = [*(a1 + 32) senderISOCountryCode];
      v9 = [*(a1 + 40) senderContactForMessage:*(a1 + 32)];
      v10 = [TUHandle normalizedHandleWithDestinationID:v7];
      v11 = v10;
      if (v9 && [v10 type] == 2)
      {
        v12 = [CNPhoneNumber phoneNumberWithDigits:v7 countryCode:v8];
        if (v12)
        {
          v13 = [v9 labeledValueForPhoneNumber:v12];
        }

        else
        {
          v13 = 0;
        }

        v14 = [v13 label];
        v15 = [CNLabeledValue localizedDisplayStringForLabel:v14 propertyName:CNContactPhoneNumbersKey];
        v16 = *(*(a1 + 48) + 8);
        v17 = *(v16 + 40);
        *(v16 + 40) = v15;
      }

      if (![*(*(*(a1 + 48) + 8) + 40) length])
      {
        v18 = [[TUMetadataDestinationID alloc] initWithHandle:v11];
        if (v18)
        {
          v19 = [*(a1 + 40) metadataCache];
          v20 = [v19 metadataForDestinationID:v18];

          v21 = [v20 metadataForProvider:objc_opt_class()];
          v22 = *(*(a1 + 48) + 8);
          v23 = *(v22 + 40);
          *(v22 + 40) = v21;

          if (![*(*(*(a1 + 48) + 8) + 40) length])
          {
            v24 = [v20 metadataForProvider:objc_opt_class()];
            v25 = *(*(a1 + 48) + 8);
            v26 = *(v25 + 40);
            *(v25 + 40) = v24;
          }

          if (![*(*(*(a1 + 48) + 8) + 40) length])
          {
            v27 = [v20 metadataForProvider:objc_opt_class()];
            v28 = *(*(a1 + 48) + 8);
            v29 = *(v28 + 40);
            *(v28 + 40) = v27;
          }
        }
      }
    }

    v30 = [*(a1 + 40) featureFlags];
    v31 = [v30 callScreeningEnabledM3];

    if (v31)
    {
      v32 = [*(a1 + 32) provider];
      v33 = [v32 isEqual:@"com.apple.telephonyutilities.callservicesd.FaceTimeProvider"];

      if (v33)
      {
        v34 = +[NSBundle mainBundle];
        v35 = [v34 localizedStringForKey:@"MPVOICEMAIL_TABLE_VIEW_CELL_TITLE_FaceTime_Audio" value:&stru_1000B4840 table:@"MPVoicemail"];
        v36 = *(*(a1 + 48) + 8);
        v37 = *(v36 + 40);
        *(v36 + 40) = v35;
      }
    }

    if (![*(*(*(a1 + 48) + 8) + 40) length])
    {
      v38 = +[NSBundle mainBundle];
      v39 = [v38 localizedStringForKey:@"MPVOICEMAIL_TABLE_VIEW_CELL_SUBTITLE_UNKNOWN" value:&stru_1000B4840 table:@"MPVoicemail"];
      v40 = *(*(a1 + 48) + 8);
      v41 = *(v40 + 40);
      *(v40 + 40) = v39;
    }

    v42 = [*(a1 + 40) localizedSubtitleCache];
    [v42 setObject:*(*(*(a1 + 48) + 8) + 40) forKey:v43];
  }
}

void sub_100020920(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100020938(uint64_t a1)
{
  v2 = [*(a1 + 32) identifier];
  v21 = [NSString stringWithFormat:@"%@", v2];

  v3 = [*(a1 + 40) localizedDowntimeTitleCache];
  v4 = [v3 objectForKey:v21];
  v5 = *(*(a1 + 48) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  if (!*(*(*(a1 + 48) + 8) + 40))
  {
    v7 = [*(a1 + 40) senderContactForMessage:*(a1 + 32)];
    v8 = [*(a1 + 40) contactFormatter];
    v9 = [v8 stringFromContact:v7];

    if (![v9 length])
    {
      v10 = [*(a1 + 40) localizedHandleTitleFromMessage:*(a1 + 32)];

      v9 = v10;
    }

    if (![v9 length])
    {
      v11 = +[NSBundle mainBundle];
      v12 = [v11 localizedStringForKey:@"MPVOICEMAIL_TABLE_VIEW_CELL_TITLE_UNKNOWN" value:&stru_1000B4840 table:@"MPVoicemail"];

      v9 = v12;
    }

    v13 = *(a1 + 40);
    v14 = TUBundle();
    v15 = [v14 localizedStringForKey:@"DOWNTIME_CALLER_%@" value:&stru_1000B4840 table:@"TelephonyUtilities"];
    v16 = [NSString stringWithFormat:v15, v9];
    v17 = [v13 attributedStringForDowntimeMessage:v16];
    v18 = *(*(a1 + 48) + 8);
    v19 = *(v18 + 40);
    *(v18 + 40) = v17;

    v20 = [*(a1 + 40) localizedDowntimeTitleCache];
    [v20 setObject:*(*(*(a1 + 48) + 8) + 40) forKey:v21];
  }
}

void sub_100020C74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100020C8C(uint64_t a1)
{
  v2 = [*(a1 + 32) identifier];
  v20 = [NSString stringWithFormat:@"%@", v2];

  v3 = [*(a1 + 40) localizedTitleCache];
  v4 = [v3 objectForKey:v20];
  v5 = *(*(a1 + 48) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  if (!*(*(*(a1 + 48) + 8) + 40))
  {
    v7 = [*(a1 + 40) senderContactForMessage:*(a1 + 32)];
    v8 = [*(a1 + 40) contactFormatter];
    v9 = [v8 stringFromContact:v7];
    v10 = *(*(a1 + 48) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;

    if (![*(*(*(a1 + 48) + 8) + 40) length])
    {
      v12 = [*(a1 + 40) localizedHandleTitleFromMessage:*(a1 + 32)];
      v13 = *(*(a1 + 48) + 8);
      v14 = *(v13 + 40);
      *(v13 + 40) = v12;
    }

    if (![*(*(*(a1 + 48) + 8) + 40) length])
    {
      v15 = +[NSBundle mainBundle];
      v16 = [v15 localizedStringForKey:@"MPVOICEMAIL_TABLE_VIEW_CELL_TITLE_UNKNOWN" value:&stru_1000B4840 table:@"MPVoicemail"];
      v17 = *(*(a1 + 48) + 8);
      v18 = *(v17 + 40);
      *(v17 + 40) = v16;
    }

    v19 = [*(a1 + 40) localizedTitleCache];
    [v19 setObject:*(*(*(a1 + 48) + 8) + 40) forKey:v20];
  }
}

void sub_1000211F8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = +[NSMutableArray array];
    v4 = WeakRetained[4];
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v13;
      do
      {
        v8 = 0;
        do
        {
          if (*v13 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v12 + 1) + 8 * v8);
          if ((*(*(a1 + 32) + 16))())
          {
            [v3 addObject:v9];
          }

          v8 = v8 + 1;
        }

        while (v6 != v8);
        v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v6);
    }

    v10 = *(a1 + 40);
    v11 = [v3 copy];
    (*(v10 + 16))(v10, v11);
  }
}

void sub_1000215E4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = +[NSMutableArray array];
    v4 = WeakRetained[3];
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v13;
      do
      {
        v8 = 0;
        do
        {
          if (*v13 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v12 + 1) + 8 * v8);
          if ((*(*(a1 + 32) + 16))())
          {
            [v3 addObject:v9];
          }

          v8 = v8 + 1;
        }

        while (v6 != v8);
        v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v6);
    }

    v10 = *(a1 + 40);
    v11 = [v3 copy];
    (*(v10 + 16))(v10, v11);
  }
}

void sub_100021BD0(void *a1)
{
  v1 = a1[4];
  v2 = a1[5];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100021C64;
  v4[3] = &unk_1000B2168;
  v3 = a1[7];
  v4[4] = a1[6];
  v5 = v3;
  [v1 voicemailWithIdentifier:v2 completion:v4];
}

void sub_100021C64(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) completionDispatchQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100021D28;
  v7[3] = &unk_1000B2140;
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

void sub_100021E04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100021E24(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained handleUpdatedContacts];
}

id sub_100022484(id result)
{
  v1 = *(result + 4);
  v2 = *(result + 5);
  if (*(v1 + 40) != v2)
  {
    *(v1 + 40) = v2;
    return [*(result + 4) postMPVoicemailControllerUnreadMessageCountDidChangeNotification];
  }

  return result;
}

void sub_1000226AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000226C4(uint64_t a1)
{
  v7 = [*(a1 + 32) senderDestinationID];
  if ([v7 length])
  {
    v2 = [*(a1 + 40) contactCache];
    v3 = [v2 objectForKeyedSubscript:v7];
    v4 = [v3 value];
    v5 = *(*(a1 + 48) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;
  }
}

void sub_100022BEC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) serialDispatchQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100022CB4;
  block[3] = &unk_1000B2220;
  v5 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, block);
}

uint64_t sub_100022CB4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = [v2 contactKeyDescriptors];
  [v2 fetchContactsForMessages:v3 keyDescriptors:v4];

  [*(a1 + 32) fetchMetadataForMessages:*(a1 + 40)];
  v5 = *(*(a1 + 48) + 16);

  return v5();
}

void sub_100022EB4(id a1)
{
  v3 = dispatch_queue_create("com.apple.mobilephone.voicemail", 0);
  v1 = [[CoreTelephonyClient alloc] initWithQueue:v3];
  v2 = qword_1000C60F0;
  qword_1000C60F0 = v1;
}

void sub_100022FE4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (!v6)
  {
    v27 = 0;
    group = dispatch_group_create();
    v29 = +[NSMutableArray array];
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v28 = v5;
    obj = [v5 subscriptions];
    v8 = [obj countByEnumeratingWithState:&v45 objects:v49 count:16];
    if (!v8)
    {
      goto LABEL_17;
    }

    v9 = v8;
    v10 = *v46;
    v11 = v44;
    while (1)
    {
      v12 = 0;
      v31 = v9;
      do
      {
        if (*v46 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v45 + 1) + 8 * v12);
        v34 = [v13 context];
        v14 = [*(a1 + 32) accountManager];
        v15 = [v14 accounts];
        v43[0] = _NSConcreteStackBlock;
        v43[1] = 3221225472;
        v44[0] = sub_1000233CC;
        v44[1] = &unk_1000B2290;
        v44[2] = v13;
        v16 = [v15 tu_firstObjectPassingTest:v43];

        if (v16)
        {
          v17 = [*(a1 + 32) accountManager];
          v18 = [v16 UUID];
          if ([v17 isAccountSubscribed:v18])
          {
          }

          else
          {
            v19 = [*(a1 + 32) accountManager];
            [v16 UUID];
            v20 = v11;
            v21 = a1;
            v23 = v22 = v10;
            v33 = [v19 isCallVoicemailSupportedForAccountUUID:v23];

            v10 = v22;
            a1 = v21;
            v11 = v20;
            v9 = v31;

            if (!v33)
            {
              goto LABEL_15;
            }

            dispatch_group_enter(group);
            v24 = *(a1 + 40);
            v38[0] = _NSConcreteStackBlock;
            v38[1] = 3221225472;
            v38[2] = sub_100023440;
            v38[3] = &unk_1000B22B8;
            v39 = group;
            v40 = v29;
            v41 = v16;
            v42 = v13;
            [v24 getVoicemailInfo:v34 completion:v38];

            v17 = v39;
          }
        }

LABEL_15:

        v12 = v12 + 1;
      }

      while (v9 != v12);
      v9 = [obj countByEnumeratingWithState:&v45 objects:v49 count:16];
      if (!v9)
      {
LABEL_17:

        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_1000235D4;
        block[3] = &unk_1000B2140;
        v25 = *(a1 + 48);
        v36 = v29;
        v37 = v25;
        v26 = v29;
        v7 = group;
        dispatch_group_notify(group, &_dispatch_main_q, block);

        v6 = v27;
        v5 = v28;
        goto LABEL_18;
      }
    }
  }

  v7 = PHDefaultLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    sub_10007AB1C(v6, v7);
  }

LABEL_18:
}

id sub_1000233CC(uint64_t a1, void *a2)
{
  v3 = [a2 UUID];
  v4 = [v3 UUIDString];
  v5 = [*(a1 + 32) labelID];
  v6 = [v4 isEqualToString:v5];

  return v6;
}

void sub_100023440(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v8 = a3;
  v9 = a5;
  v10 = PHDefaultLog();
  v11 = v10;
  if (v9)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_10007AB94(v9, v11);
    }
  }

  else
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      if (a2)
      {
        v12 = @"YES";
      }

      else
      {
        v12 = @"NO";
      }

      v17 = 138412546;
      v18 = v12;
      v19 = 1024;
      v20 = [v8 intValue];
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Voicemail info returned available=%@, count=%d", &v17, 0x12u);
    }

    v13 = *(a1 + 40);
    v14 = [MPLegacyVoicemail alloc];
    v11 = [*(a1 + 48) UUID];
    v15 = [*(a1 + 56) label];
    v16 = [(MPLegacyVoicemail *)v14 initWithAccountID:v11 label:v15 hasUnreadMessages:a2];
    [v13 addObject:v16];
  }

  dispatch_group_leave(*(a1 + 32));
}

id sub_100023670(uint64_t a1)
{
  v2 = [*(a1 + 32) contactCache];
  [v2 removeAllObjects];

  v3 = [*(a1 + 32) localizedSubtitleCache];
  [v3 removeAllObjects];

  v4 = [*(a1 + 32) localizedTitleCache];
  [v4 removeAllObjects];

  v5 = *(a1 + 32);
  v6 = v5[4];
  v7 = [v5 contactKeyDescriptors];
  [v5 fetchContactsForMessages:v6 keyDescriptors:v7];

  v8 = *(a1 + 32);

  return [v8 postMPVoicemailControllerMessagesDidChangeNotification];
}

id sub_10002397C(uint64_t a1)
{
  v2 = [*(a1 + 32) localizedSubtitleCache];
  [v2 removeAllObjects];

  v3 = [*(a1 + 32) localizedTitleCache];
  [v3 removeAllObjects];

  v4 = *(a1 + 32);

  return [v4 postMPVoicemailControllerMessagesDidChangeNotification];
}

id sub_100023B3C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 144);
  *(v2 + 144) = 0;

  v4 = [*(a1 + 32) localizedSubtitleCache];
  [v4 removeAllObjects];

  v5 = [*(a1 + 32) localizedTitleCache];
  [v5 removeAllObjects];

  v6 = *(a1 + 32);

  return [v6 postMPVoicemailControllerMessagesDidChangeNotification];
}

id sub_100023D0C(uint64_t a1)
{
  v2 = [*(a1 + 32) localizedSubtitleCache];
  [v2 removeAllObjects];

  v3 = [*(a1 + 32) localizedTitleCache];
  [v3 removeAllObjects];

  v4 = [*(a1 + 32) localizedDowntimeTitleCache];
  [v4 removeAllObjects];

  v5 = *(a1 + 32);

  return [v5 postMPVoicemailControllerMessagesDidChangeNotification];
}

id sub_1000240F8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100024168;
  v3[3] = &unk_1000B20A0;
  v3[4] = v1;
  return [v1 fetchMessagesCompletion:v3];
}

void sub_1000241FC(uint64_t a1)
{
  v2 = +[NSNotificationCenter defaultCenter];
  [v2 postNotificationName:@"MPVoicemailControllerMessagesDidChangeNotification" object:*(a1 + 32)];
}

void sub_1000242E4(uint64_t a1)
{
  v2 = +[NSNotificationCenter defaultCenter];
  [v2 postNotificationName:@"MPVoicemailControllerUnreadMessageCountDidChangeNotification" object:*(a1 + 32)];
}

void sub_1000250F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = [*(a1 + 32) _accessibilityHigherContrastTintColorForColor:a2];
  v8 = *(a1 + 40);
  v10 = NSForegroundColorAttributeName;
  v11 = v7;
  v9 = [NSDictionary dictionaryWithObjects:&v11 forKeys:&v10 count:1];
  [v8 setAttributes:v9 range:{a3, a4}];
}

void sub_1000285A4(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) metadataView];
  [v3 setExpanded:v2];

  v4 = *(a1 + 40);
  v5 = [*(a1 + 32) metadataViewTapGestureRecognizer];
  [v5 setEnabled:v4];
}

id sub_100028624(uint64_t a1)
{
  v2 = [*(a1 + 32) transcriptView];
  [v2 setNeedsUpdateConstraints];

  [*(a1 + 32) setNeedsUpdateConstraints];
  v3 = [*(a1 + 32) transcriptView];
  [v3 layoutIfNeeded];

  v4 = *(a1 + 32);

  return [v4 layoutIfNeeded];
}

void sub_100029B1C(id a1)
{
  qword_1000C6100 = [UIImage tpImageForSymbolType:26 textStyle:UIFontTextStyleBody scale:3 isStaticSize:0];

  _objc_release_x1();
}

void sub_100029BB8(id a1)
{
  qword_1000C6110 = [UIImage tpImageForSymbolType:25 textStyle:UIFontTextStyleBody scale:3 isStaticSize:0];

  _objc_release_x1();
}

id PHVoicemailCellDateFormatter()
{
  v0 = qword_1000C6120;
  if (!qword_1000C6120)
  {
    v1 = objc_alloc_init(NSDateFormatter);
    v2 = qword_1000C6120;
    qword_1000C6120 = v1;

    [qword_1000C6120 setTimeStyle:1];
    [qword_1000C6120 setDateStyle:3];
    v0 = qword_1000C6120;
  }

  return v0;
}

id PHVoicemailDurationFormatter()
{
  if (qword_1000C6130 != -1)
  {
    sub_10007AC78();
  }

  v1 = qword_1000C6128;

  return v1;
}

void sub_10002C460(id a1)
{
  v1 = objc_alloc_init(NSDateComponentsFormatter);
  v2 = qword_1000C6128;
  qword_1000C6128 = v1;

  [qword_1000C6128 setAllowedUnits:192];
  v3 = qword_1000C6128;

  [v3 setZeroFormattingBehavior:0x10000];
}

id PHVoicemailFormatTime(double a1)
{
  v1 = &stru_1000B4840;
  if (a1 >= 0.0)
  {
    v2 = a1;
  }

  else
  {
    v1 = @"-";
    v2 = -a1;
  }

  v3 = v1;
  v4 = PHVoicemailDurationFormatter();
  v5 = [v4 stringFromTimeInterval:v2];

  v6 = [NSString stringWithFormat:@"%@%@", v3, v5];

  return v6;
}

float PHVoicemailLowQualityConfidenceThresholdForTranscript()
{
  v0 = PHPreferencesGetValue();
  v1 = v0;
  if (v0)
  {
    [v0 floatValue];
    v3 = v2;
  }

  else
  {
    v3 = 0.6878;
  }

  return v3;
}

float PHVoicemailConfidenceThresholdForTranscript()
{
  v0 = PHPreferencesGetValue();
  v1 = v0;
  if (v0)
  {
    [v0 floatValue];
    v3 = v2;
  }

  else
  {
    v3 = 0.45096;
  }

  return v3;
}

id PHVoicemailTranscriptAttributedPrefix()
{
  if (qword_1000C6140 != -1)
  {
    sub_10007AC8C();
  }

  v1 = qword_1000C6138;

  return v1;
}

void sub_10002C670(id a1)
{
  v1 = [UIApp userInterfaceLayoutDirection];
  v2 = +[NSBundle mainBundle];
  v3 = v2;
  if (v1 == 1)
  {
    v4 = @"VOICEMAIL_TRANSCRIPTION_QUOTE_SUFFIX";
  }

  else
  {
    v4 = @"VOICEMAIL_TRANSCRIPTION_QUOTE_PREFIX";
  }

  v5 = [v2 localizedStringForKey:v4 value:&stru_1000B4840 table:@"General"];

  v6 = [NSAttributedString alloc];
  v12[0] = NSForegroundColorAttributeName;
  v7 = [UIColor colorWithRed:0.572549045 green:0.572549045 blue:0.572549045 alpha:1.0];
  v13[0] = v7;
  v12[1] = NSFontAttributeName;
  v8 = [UIFont phPreferredTightLeadingFontForTextStyle:UIFontTextStyleBody];
  v13[1] = v8;
  v9 = [NSDictionary dictionaryWithObjects:v13 forKeys:v12 count:2];
  v10 = [v6 initWithString:v5 attributes:v9];
  v11 = qword_1000C6138;
  qword_1000C6138 = v10;
}

id PHVoicemailTranscriptAttributedSuffix()
{
  if (qword_1000C6150[0] != -1)
  {
    sub_10007ACA0();
  }

  v1 = qword_1000C6148;

  return v1;
}

void sub_10002C844(id a1)
{
  v1 = [UIApp userInterfaceLayoutDirection];
  v2 = +[NSBundle mainBundle];
  v3 = v2;
  if (v1 == 1)
  {
    v4 = @"VOICEMAIL_TRANSCRIPTION_QUOTE_PREFIX";
  }

  else
  {
    v4 = @"VOICEMAIL_TRANSCRIPTION_QUOTE_SUFFIX";
  }

  v5 = [v2 localizedStringForKey:v4 value:&stru_1000B4840 table:@"General"];

  v6 = [NSAttributedString alloc];
  v12[0] = NSForegroundColorAttributeName;
  v7 = [UIColor colorWithRed:0.572549045 green:0.572549045 blue:0.572549045 alpha:1.0];
  v13[0] = v7;
  v12[1] = NSFontAttributeName;
  v8 = [UIFont phPreferredTightLeadingFontForTextStyle:UIFontTextStyleBody];
  v13[1] = v8;
  v9 = [NSDictionary dictionaryWithObjects:v13 forKeys:v12 count:2];
  v10 = [v6 initWithString:v5 attributes:v9];
  v11 = qword_1000C6148;
  qword_1000C6148 = v10;
}

uint64_t sub_10002EC7C(uint64_t a1)
{
  *(v1 + 16) = a1;
  sub_100030744(&qword_1000C4F48);
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_10002ED18, 0, 0);
}

uint64_t sub_10002ED18()
{
  v1 = *(v0[2] + OBJC_IVAR____TtC9IntentsUI26VoicemailDelegateDecorator_onUpdate);
  if (qword_1000C4E08 != -1)
  {
    swift_once();
  }

  v2 = v0[3];
  v3 = qword_1000C7658;
  v4 = sub_10007AE28();
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  v8 = (v1 + *v1);
  v5 = swift_task_alloc();
  v0[4] = v5;
  *v5 = v0;
  v5[1] = sub_100031878;
  v6 = v0[3];

  return v8(v3, v6);
}

uint64_t sub_10002EEC8(uint64_t a1)
{
  *(v1 + 16) = a1;
  sub_100030744(&qword_1000C4F48);
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_10002EF64, 0, 0);
}

uint64_t sub_10002EF64()
{
  v1 = *(v0[2] + OBJC_IVAR____TtC9IntentsUI26VoicemailDelegateDecorator_onUpdate);
  if (qword_1000C4E10 != -1)
  {
    swift_once();
  }

  v2 = v0[3];
  v3 = qword_1000C7660;
  v4 = sub_10007AE28();
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  v8 = (v1 + *v1);
  v5 = swift_task_alloc();
  v0[4] = v5;
  *v5 = v0;
  v5[1] = sub_100031878;
  v6 = v0[3];

  return v8(v3, v6);
}

void sub_10002F114(char *a1, uint64_t a2, const char *a3)
{
  v4 = &a1[OBJC_IVAR____TtC9IntentsUI26VoicemailDelegateDecorator_lastTask];
  v6 = a1;
  os_unfair_lock_lock(v4);
  sub_10003078C(v4 + 1, v6, v5, a3);
  os_unfair_lock_unlock(v4);
}

uint64_t sub_10002F1A8(uint64_t a1)
{
  *(v1 + 16) = a1;
  sub_100030744(&qword_1000C4F48);
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_10002F244, 0, 0);
}

uint64_t sub_10002F244()
{
  v1 = *(v0[2] + OBJC_IVAR____TtC9IntentsUI26VoicemailDelegateDecorator_onUpdate);
  if (qword_1000C4E18 != -1)
  {
    swift_once();
  }

  v2 = v0[3];
  v3 = qword_1000C7668;
  v4 = sub_10007AE28();
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  v8 = (v1 + *v1);
  v5 = swift_task_alloc();
  v0[4] = v5;
  *v5 = v0;
  v5[1] = sub_100031878;
  v6 = v0[3];

  return v8(v3, v6);
}

uint64_t sub_10002F3F4(uint64_t a1)
{
  *(v1 + 16) = a1;
  sub_100030744(&qword_1000C4F48);
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_10002F490, 0, 0);
}

uint64_t sub_10002F490()
{
  v1 = *(v0[2] + OBJC_IVAR____TtC9IntentsUI26VoicemailDelegateDecorator_onUpdate);
  if (qword_1000C4E20 != -1)
  {
    swift_once();
  }

  v2 = v0[3];
  v3 = qword_1000C7670;
  v4 = sub_10007AE28();
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  v8 = (v1 + *v1);
  v5 = swift_task_alloc();
  v0[4] = v5;
  *v5 = v0;
  v5[1] = sub_100031878;
  v6 = v0[3];

  return v8(v3, v6);
}

uint64_t sub_10002F640(uint64_t a1)
{
  *(v1 + 16) = a1;
  sub_100030744(&qword_1000C4F48);
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_10002F6DC, 0, 0);
}

uint64_t sub_10002F6DC()
{
  v1 = *(v0[2] + OBJC_IVAR____TtC9IntentsUI26VoicemailDelegateDecorator_onUpdate);
  if (qword_1000C4E28 != -1)
  {
    swift_once();
  }

  v2 = v0[3];
  v3 = qword_1000C7678;
  v4 = sub_10007AE28();
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  v8 = (v1 + *v1);
  v5 = swift_task_alloc();
  v0[4] = v5;
  *v5 = v0;
  v5[1] = sub_100031878;
  v6 = v0[3];

  return v8(v3, v6);
}

uint64_t sub_10002F88C(uint64_t a1)
{
  *(v1 + 16) = a1;
  sub_100030744(&qword_1000C4F48);
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_10002F928, 0, 0);
}

uint64_t sub_10002F928()
{
  v1 = *(v0[2] + OBJC_IVAR____TtC9IntentsUI26VoicemailDelegateDecorator_onUpdate);
  if (qword_1000C4E30 != -1)
  {
    swift_once();
  }

  v2 = v0[3];
  v3 = qword_1000C7680;
  v4 = sub_10007AE28();
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  v8 = (v1 + *v1);
  v5 = swift_task_alloc();
  v0[4] = v5;
  *v5 = v0;
  v5[1] = sub_100031878;
  v6 = v0[3];

  return v8(v3, v6);
}

uint64_t sub_10002FAD8(uint64_t a1)
{
  *(v1 + 16) = a1;
  sub_100030744(&qword_1000C4F48);
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_10002FB74, 0, 0);
}

uint64_t sub_10002FB74()
{
  v1 = *(v0[2] + OBJC_IVAR____TtC9IntentsUI26VoicemailDelegateDecorator_onUpdate);
  if (qword_1000C4E38 != -1)
  {
    swift_once();
  }

  v2 = v0[3];
  v3 = qword_1000C7688;
  v4 = sub_10007AE28();
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  v8 = (v1 + *v1);
  v5 = swift_task_alloc();
  v0[4] = v5;
  *v5 = v0;
  v5[1] = sub_10002FCFC;
  v6 = v0[3];

  return v8(v3, v6);
}

uint64_t sub_10002FCFC()
{
  v1 = *(*v0 + 24);
  v4 = *v0;

  sub_1000316B8(v1, &qword_1000C4F48);

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_10002FE4C(uint64_t *a1, void *a2, uint64_t a3)
{
  v6 = sub_10007AE28();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin();

  v9 = sub_10007B318();
  v10 = sub_10007B6E8();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v18 = a1;
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "VoicemailDelegateDecorator: received greetingDidChange", v11, 2u);
    a1 = v18;
  }

  (*(v7 + 16))(&v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v6);
  v12 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  (*(v7 + 32))(v13 + v12, &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
  v14 = a2;
  v15 = sub_10007AF08();

  *a1 = v15;
  return result;
}

uint64_t sub_10003004C(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  sub_100030744(&qword_1000C4F48);
  v2[4] = swift_task_alloc();

  return _swift_task_switch(sub_1000300E8, 0, 0);
}

uint64_t sub_1000300E8()
{
  v1 = *(v0[2] + OBJC_IVAR____TtC9IntentsUI26VoicemailDelegateDecorator_onUpdate);
  if (qword_1000C4E40 != -1)
  {
    swift_once();
  }

  v3 = v0[3];
  v2 = v0[4];
  v4 = qword_1000C7690;
  v5 = sub_10007AE28();
  v6 = *(v5 - 8);
  (*(v6 + 16))(v2, v3, v5);
  (*(v6 + 56))(v2, 0, 1, v5);
  v10 = (v1 + *v1);
  v7 = swift_task_alloc();
  v0[5] = v7;
  *v7 = v0;
  v7[1] = sub_1000302B0;
  v8 = v0[4];

  return v10(v4, v8);
}

uint64_t sub_1000302B0()
{
  v1 = *(*v0 + 32);
  v4 = *v0;

  sub_1000316B8(v1, &qword_1000C4F48);

  v2 = *(v4 + 8);

  return v2();
}

id sub_10003051C()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for VoicemailDelegateDecorator()
{
  result = qword_1000C4EC8;
  if (!qword_1000C4EC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10003065C()
{
  result = sub_10007B338();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

char *sub_100030714()
{
  if (&swift_runtimeSupportsNoncopyableTypes)
  {
    return sub_100030744(&qword_1000C4ED8);
  }

  else
  {
    return &type metadata for () + 8;
  }
}

uint64_t sub_100030744(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_10003078C(uint64_t *a1, void *a2, uint64_t a3, const char *a4)
{

  v7 = sub_10007B318();
  v8 = sub_10007B6E8();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, a4, v9, 2u);
  }

  *(swift_allocObject() + 16) = a2;
  v10 = a2;
  v11 = sub_10007AF08();

  *a1 = v11;
  return result;
}

uint64_t sub_1000308A4(uint64_t a1)
{
  *(v1 + 16) = a1;
  sub_100030744(&qword_1000C4F48);
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_100030940, 0, 0);
}

uint64_t sub_100030940()
{
  v1 = *(v0[2] + OBJC_IVAR____TtC9IntentsUI26VoicemailDelegateDecorator_onUpdate);
  if (qword_1000C4E48 != -1)
  {
    swift_once();
  }

  v2 = v0[3];
  v3 = qword_1000C7698;
  v4 = sub_10007AE28();
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  v8 = (v1 + *v1);
  v5 = swift_task_alloc();
  v0[4] = v5;
  *v5 = v0;
  v5[1] = sub_100031878;
  v6 = v0[3];

  return v8(v3, v6);
}

uint64_t sub_100030B7C(uint64_t a1, id *a2)
{
  result = sub_10007B458();
  *a2 = 0;
  return result;
}

uint64_t sub_100030BF4(uint64_t a1, id *a2)
{
  v3 = sub_10007B468();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_100030C74@<X0>(void *a1@<X8>)
{
  sub_10007B478();
  v2 = sub_10007B448();

  *a1 = v2;
  return result;
}

uint64_t sub_100030CB8()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100030CF0()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100031874;

  return sub_1000308A4(v2);
}

uint64_t sub_100030D84@<X0>(void *a1@<X8>)
{
  v2 = sub_10007B448();

  *a1 = v2;
  return result;
}

uint64_t sub_100030DCC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10007B478();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_100030DF8(uint64_t a1)
{
  v2 = sub_1000317E0(&qword_1000C4F78);
  v3 = sub_1000317E0(&unk_1000C4F80);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_100030E90()
{
  sub_10007B478();
  v0 = sub_10007B4E8();

  return v0;
}

uint64_t sub_100030ECC()
{
  sub_10007B478();
  sub_10007B4B8();
}

Swift::Int sub_100030F20()
{
  sub_10007B478();
  sub_10007BBD8();
  sub_10007B4B8();
  v0 = sub_10007BBF8();

  return v0;
}

uint64_t sub_100030F94()
{
  v0 = sub_10007B478();
  v2 = v1;
  if (v0 == sub_10007B478() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_10007BB38();
  }

  return v5 & 1;
}

uint64_t sub_10003101C()
{
  v1 = sub_10007AE28();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1000310E0()
{
  v2 = *(sub_10007AE28() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100031874;

  return sub_10003004C(v4, v0 + v3);
}

uint64_t sub_1000311B8()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10003124C;

  return sub_10002FAD8(v2);
}

uint64_t sub_10003124C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100031340()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100031874;

  return sub_10002F88C(v2);
}

uint64_t sub_1000313D4()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100031874;

  return sub_10002F640(v2);
}

uint64_t sub_100031468()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100031874;

  return sub_10002F3F4(v2);
}

uint64_t sub_1000314FC()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100031874;

  return sub_10002F1A8(v2);
}

uint64_t sub_100031590()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100031874;

  return sub_10002EEC8(v2);
}

uint64_t sub_100031624()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100031874;

  return sub_10002EC7C(v2);
}

uint64_t sub_1000316B8(uint64_t a1, uint64_t *a2)
{
  v3 = sub_100030744(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_10003172C(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_1000317E0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Name(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10003187C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[44] = a5;
  v6[45] = a6;
  v6[43] = a4;
  v7 = sub_10007AE68();
  v6[46] = v7;
  v6[47] = *(v7 - 8);
  v6[48] = swift_task_alloc();
  v6[49] = swift_task_alloc();
  v8 = sub_10007AEF8();
  v6[50] = v8;
  v6[51] = *(v8 - 8);
  v6[52] = swift_task_alloc();
  v6[53] = swift_task_alloc();
  sub_100030744(&qword_1000C5120);
  v6[54] = swift_task_alloc();
  v9 = sub_10007B388();
  v6[55] = v9;
  v6[56] = *(v9 - 8);
  v6[57] = swift_task_alloc();
  v6[58] = sub_100030744(&qword_1000C5128);
  v6[59] = swift_task_alloc();
  v6[60] = sub_100030744(&qword_1000C5130);
  v6[61] = swift_task_alloc();
  v10 = sub_100030744(&qword_1000C5138);
  v6[62] = v10;
  v6[63] = *(v10 - 8);
  v6[64] = swift_task_alloc();
  v11 = sub_100030744(&qword_1000C5140);
  v6[65] = v11;
  v6[66] = *(v11 - 8);
  v6[67] = swift_task_alloc();
  v6[68] = sub_10007B5B8();
  v6[69] = sub_10007B5A8();
  v13 = sub_10007B578();
  v6[70] = v13;
  v6[71] = v12;

  return _swift_task_switch(sub_100031BCC, v13, v12);
}

uint64_t sub_100031BCC()
{
  v2 = *(v0 + 504);
  v1 = *(v0 + 512);
  v3 = *(v0 + 496);
  *(v0 + 576) = sub_1000353E4();
  sub_10007B358();
  sub_10007B968();
  sub_100035598(&qword_1000C5148, &qword_1000C5128);
  sub_10007B658();
  sub_10007B9A8();
  (*(v2 + 8))(v1, v3);
  sub_10007B998();
  swift_beginAccess();
  *(v0 + 704) = enum case for TPTipsHelper.Entry.Kind.voicemailDetail(_:);
  v4 = sub_10007B5A8();
  *(v0 + 584) = v4;
  if (v4)
  {
    swift_getObjectType();
    v5 = sub_10007B578();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *(v0 + 600) = v7;
  *(v0 + 592) = v5;

  return _swift_task_switch(sub_100031D8C, v5, v7);
}

uint64_t sub_100031D8C()
{
  v1 = v0[73];
  v0[76] = sub_10007B978();
  sub_100035598(&qword_1000C5150, &qword_1000C5130);
  v2 = swift_task_alloc();
  v0[77] = v2;
  *v2 = v0;
  v2[1] = sub_100031E90;
  v3 = v0[54];

  return _sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v3, v1, &protocol witness table for MainActor);
}

uint64_t sub_100031E90()
{
  v2 = *v1;

  if (v0)
  {
    v3 = *(v2 + 600);
    v4 = *(v2 + 592);
    v5 = sub_100032184;
  }

  else
  {
    (*(v2 + 608))();
    v3 = *(v2 + 600);
    v4 = *(v2 + 592);
    v5 = sub_100031FC0;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100031FC0()
{
  v1 = *(v0 + 55);
  v2 = *(v0 + 56);
  v3 = *(v0 + 54);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {

    sub_1000316B8(v3, &qword_1000C5120);
    v4 = *(v0 + 71);
    v5 = *(v0 + 70);

    return _swift_task_switch(sub_100032AC8, v5, v4);
  }

  else
  {
    (*(v2 + 32))(*(v0 + 57), v3, v1);
    v6 = sub_10007B988();
    *(v0 + 78) = v7;
    v11 = (v6 + *v6);
    v8 = swift_task_alloc();
    *(v0 + 79) = v8;
    *v8 = v0;
    v8[1] = sub_10003219C;
    v9 = *(v0 + 57);

    return v11(v0 + 708, v9);
  }
}

uint64_t sub_10003219C()
{
  v1 = *v0;
  v2 = *(*v0 + 456);
  v3 = *(*v0 + 448);
  v4 = *(*v0 + 440);

  (*(v3 + 8))(v2, v4);
  *(v1 + 709) = *(v1 + 708);
  v5 = *(v1 + 600);
  v6 = *(v1 + 592);

  return _swift_task_switch(sub_100032348, v6, v5);
}

uint64_t sub_100032348()
{

  v1 = *(v0 + 568);
  v2 = *(v0 + 560);

  return _swift_task_switch(sub_1000323B0, v2, v1);
}

uint64_t sub_1000323B0()
{
  v71 = v0;
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 640) = Strong;
  if (!Strong)
  {
    (*(*(v0 + 528) + 8))(*(v0 + 536), *(v0 + 520));

LABEL_20:

    v64 = *(v0 + 8);

    return v64();
  }

  if (*(v0 + 709))
  {
    v69 = Strong;
    v2 = [Strong voicemailTipView];
    if (v2)
    {
      v3 = v2;

      if (qword_1000C4E68 != -1)
      {
        swift_once();
      }

      v4 = *(v0 + 408);
      v5 = *(v0 + 416);
      v6 = *(v0 + 400);
      v7 = *(v0 + 344);
      v8 = sub_10007B338();
      sub_1000345E8(v8, qword_1000C7700);
      (*(v4 + 16))(v5, v7, v6);
      v9 = sub_10007B318();
      v10 = sub_10007B6E8();
      if (os_log_type_enabled(v9, v10))
      {
        v66 = *(v0 + 528);
        v67 = *(v0 + 520);
        v68 = *(v0 + 536);
        v12 = *(v0 + 408);
        v11 = *(v0 + 416);
        v13 = *(v0 + 400);
        v14 = swift_slowAlloc();
        v70 = swift_slowAlloc();
        *v14 = 136315394;
        v15 = sub_10007BC48();
        v17 = sub_100052954(v15, v16, &v70);

        *(v14 + 4) = v17;
        *(v14 + 12) = 2080;
        v18 = v13;
        v19 = sub_10007B348();
        v21 = v20;
        (*(v12 + 8))(v11, v18);
        v22 = sub_100052954(v19, v21, &v70);

        *(v14 + 14) = v22;
        _os_log_impl(&_mh_execute_header, v9, v10, "%s: Already tracking tip %s, ignoring to add new one.", v14, 0x16u);
        swift_arrayDestroy();

        (*(v66 + 8))(v68, v67);
      }

      else
      {
        v58 = *(v0 + 536);
        v59 = *(v0 + 528);
        v60 = *(v0 + 520);
        v62 = *(v0 + 408);
        v61 = *(v0 + 416);
        v63 = *(v0 + 400);

        (*(v62 + 8))(v61, v63);
        (*(v59 + 8))(v58, v60);
      }

      goto LABEL_20;
    }

    v47 = *(v0 + 576);
    v49 = *(v0 + 400);
    v48 = *(v0 + 408);
    v50 = *(v0 + 360);
    v51 = *(v0 + 344);
    *(v0 + 120) = v49;
    *(v0 + 128) = v47;
    v52 = sub_10003543C((v0 + 96));
    v53 = *(v48 + 16);
    *(v0 + 648) = v53;
    *(v0 + 656) = (v48 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v53(v52, v51, v49);
    v54 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v55 = swift_allocObject();
    *(v55 + 16) = v54;
    *(v55 + 24) = v50;
    v56 = objc_allocWithZone(sub_10007B368());
    v57 = sub_10007B378();
    *(v0 + 664) = v57;
    [v57 setTranslatesAutoresizingMaskIntoConstraints:0];
    sub_10007AED8();
    v45 = swift_task_alloc();
    *(v0 + 672) = v45;
    *v45 = v0;
    v46 = sub_100032BD8;
  }

  else
  {
    if (qword_1000C4E68 != -1)
    {
      swift_once();
    }

    v23 = *(v0 + 424);
    v24 = *(v0 + 400);
    v25 = *(v0 + 408);
    v26 = *(v0 + 344);
    v27 = sub_10007B338();
    sub_1000345E8(v27, qword_1000C7700);
    (*(v25 + 16))(v23, v26, v24);
    v28 = sub_10007B318();
    v29 = sub_10007B6E8();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = *(v0 + 424);
      v32 = *(v0 + 400);
      v31 = *(v0 + 408);
      v33 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      *v33 = 136315394;
      v34 = sub_10007BC48();
      v36 = sub_100052954(v34, v35, &v70);

      *(v33 + 4) = v36;
      *(v33 + 12) = 2080;
      v37 = v32;
      v38 = sub_10007B348();
      v40 = v39;
      (*(v31 + 8))(v30, v37);
      v41 = sub_100052954(v38, v40, &v70);

      *(v33 + 14) = v41;
      _os_log_impl(&_mh_execute_header, v28, v29, "%s: Stopping observation of tip %s", v33, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
      v42 = *(v0 + 424);
      v43 = *(v0 + 400);
      v44 = *(v0 + 408);

      (*(v44 + 8))(v42, v43);
    }

    sub_10007AED8();
    v45 = swift_task_alloc();
    *(v0 + 688) = v45;
    *v45 = v0;
    v46 = sub_100032FC8;
  }

  v45[1] = v46;

  return static TPTipsHelper.shared.getter();
}

uint64_t sub_100032AC8()
{
  v1 = v0[67];
  v2 = v0[66];
  v3 = v0[65];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_100032BD8(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 680) = a1;

  v3 = *(v2 + 568);
  v4 = *(v2 + 560);

  return _swift_task_switch(sub_100032D00, v4, v3);
}

uint64_t sub_100032D00()
{
  v28 = v0;
  v1 = *(v0 + 648);
  v2 = *(v0 + 576);
  v3 = *(v0 + 400);
  v4 = *(v0 + 344);
  (*(*(v0 + 376) + 104))(*(v0 + 392), *(v0 + 704), *(v0 + 368));
  *(v0 + 160) = v3;
  *(v0 + 168) = v2;
  v5 = sub_10003543C((v0 + 136));
  v1(v5, v4, v3);
  v6 = sub_10007AE38();
  v8 = v7;
  v9 = *(v0 + 392);
  v10 = *(v0 + 368);
  v11 = (*(v0 + 376) + 8);
  if (*(v0 + 160))
  {
    sub_1000355E0((v0 + 136), v0 + 216);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = *v8;
    *v8 = 0x8000000000000000;
    v12 = *(v0 + 240);
    v25 = v10;
    v13 = sub_10003567C(v0 + 216, v12);
    v14 = v6;
    v15 = *(v12 - 8);
    v16 = swift_task_alloc();
    (*(v15 + 16))(v16, v13, v12);
    v6 = v14;
    sub_1000346F0(v16, v9, isUniquelyReferenced_nonNull_native, &v27);
    (*v11)(v9, v25);
    sub_100035504(v0 + 216);

    *v8 = v27;
  }

  else
  {
    sub_1000316B8(v0 + 136, &qword_1000C5158);
    sub_10006063C(v9, v0 + 176);
    sub_1000316B8(v0 + 176, &qword_1000C5158);
    (*v11)(v9, v10);
  }

  v17 = *(v0 + 680);
  v18 = *(v0 + 664);
  v19 = *(v0 + 640);
  v6(v0 + 288, 0);

  [v19 setVoicemailTipView:v18];
  v20 = sub_10007B5A8();
  *(v0 + 584) = v20;
  if (v20)
  {
    swift_getObjectType();
    v21 = sub_10007B578();
    v23 = v22;
  }

  else
  {
    v21 = 0;
    v23 = 0;
  }

  *(v0 + 600) = v23;
  *(v0 + 592) = v21;

  return _swift_task_switch(sub_100031D8C, v21, v23);
}

uint64_t sub_100032FC8(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 696) = a1;

  v3 = *(v2 + 568);
  v4 = *(v2 + 560);

  return _swift_task_switch(sub_1000330F0, v4, v3);
}

uint64_t sub_1000330F0()
{
  v1 = *(v0 + 696);
  v2 = *(v0 + 704);
  v4 = *(v0 + 376);
  v3 = *(v0 + 384);
  v5 = *(v0 + 368);

  (*(v4 + 104))(v3, v2, v5);
  v6 = sub_10007AE48();

  if (!*(v6 + 16) || (v7 = sub_100060394(*(v0 + 384)), (v8 & 1) == 0))
  {
    v16 = *(v0 + 640);
    v17 = *(v0 + 536);
    v18 = *(v0 + 528);
    v19 = *(v0 + 520);
    v21 = *(v0 + 376);
    v20 = *(v0 + 384);
    v22 = *(v0 + 368);

    (*(v21 + 8))(v20, v22);
    (*(v18 + 8))(v17, v19);
    goto LABEL_11;
  }

  v10 = *(v0 + 376);
  v9 = *(v0 + 384);
  v11 = *(v0 + 368);
  sub_1000354A0(*(v6 + 56) + 40 * v7, v0 + 56);
  (*(v10 + 8))(v9, v11);

  sub_1000355E0((v0 + 56), v0 + 16);
  sub_1000355F8((v0 + 16), *(v0 + 40));
  v12 = sub_10007B348();
  v14 = v13;
  if (v12 == sub_10007B348() && v14 == v15)
  {
  }

  else
  {
    v23 = sub_10007BB38();

    if ((v23 & 1) == 0)
    {
      v29 = *(v0 + 640);
      (*(*(v0 + 528) + 8))(*(v0 + 536), *(v0 + 520));

      goto LABEL_10;
    }
  }

  v24 = *(v0 + 640);
  v25 = *(v0 + 536);
  v26 = *(v0 + 528);
  v27 = *(v0 + 520);
  v28 = [v24 voicemailTipView];
  [v28 removeFromSuperview];

  [v24 setVoicemailTipView:0];
  [v24 loadExpandedViewsIfNecessary];

  (*(v26 + 8))(v25, v27);
LABEL_10:
  sub_100035504(v0 + 16);
LABEL_11:

  v30 = *(v0 + 8);

  return v30();
}

void sub_100033414()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if (qword_1000C4E68 != -1)
    {
      swift_once();
    }

    v2 = sub_10007B338();
    sub_1000345E8(v2, qword_1000C7700);
    v3 = sub_10007B318();
    v4 = sub_10007B6E8();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v12 = v6;
      *v5 = 136315138;
      v7 = sub_10007BC48();
      v9 = sub_100052954(v7, v8, &v12);

      *(v5 + 4) = v9;
      _os_log_impl(&_mh_execute_header, v3, v4, "%s: Calling voicemailMessageTableViewCellShouldPresentWelcomeViewController", v5, 0xCu);
      sub_100035504(v6);
    }

    v10 = [v1 delegate];
    if (v10)
    {
      v11 = v10;
      if ([v10 respondsToSelector:"voicemailMessageTableViewCellShouldPresentWelcomeViewController:"])
      {
        [v11 voicemailMessageTableViewCellShouldPresentWelcomeViewController:v1];
      }

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

uint64_t sub_1000335E8()
{
  ObjectType = swift_getObjectType();
  if (qword_1000C4E68 != -1)
  {
    swift_once();
  }

  v1 = sub_10007B338();
  sub_1000345E8(v1, qword_1000C7700);
  v2 = sub_10007B318();
  v3 = sub_10007B6E8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v12 = v5;
    *v4 = 136315138;
    v6 = sub_10007BC48();
    v8 = sub_100052954(v6, v7, &v12);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v2, v3, "%s: Starting observation of tips", v4, 0xCu);
    sub_100035504(v5);
  }

  sub_10007AED8();
  sub_10007AEC8();
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = ObjectType;

  sub_10007AF08();
}

uint64_t sub_1000337E4(uint64_t a1, uint64_t a2)
{
  v2[5] = a1;
  v2[6] = a2;
  v3 = sub_10007AEF8();
  v2[7] = v3;
  v2[8] = *(v3 - 8);
  v2[9] = swift_task_alloc();
  sub_10007AED8();
  v4 = swift_task_alloc();
  v2[10] = v4;
  *v4 = v2;
  v4[1] = sub_1000338E0;

  return static TPTipsHelper.shared.getter();
}

uint64_t sub_1000338E0(uint64_t a1)
{
  *(*v1 + 88) = a1;

  return _swift_task_switch(sub_1000339E0, 0, 0);
}

uint64_t sub_1000339E0()
{
  *(v0 + 96) = sub_10007B5B8();
  *(v0 + 104) = sub_10007B5A8();
  v2 = sub_10007B578();

  return _swift_task_switch(sub_100033A78, v2, v1);
}

uint64_t sub_100033A78()
{
  v1 = *(v0 + 88);

  sub_10007AE98();

  return _swift_task_switch(sub_100033AEC, 0, 0);
}

uint64_t sub_100033AEC()
{
  v23 = v0;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[14] = Strong;
  if (Strong)
  {
    if (qword_1000C4E68 != -1)
    {
      swift_once();
    }

    v2 = sub_10007B338();
    sub_1000345E8(v2, qword_1000C7700);
    v3 = sub_10007B318();
    v4 = sub_10007B6E8();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v22 = v6;
      *v5 = 136315138;
      v7 = sub_10007BC48();
      v9 = sub_100052954(v7, v8, &v22);

      *(v5 + 4) = v9;
      _os_log_impl(&_mh_execute_header, v3, v4, "%s: Observing LiveVoicemailTip", v5, 0xCu);
      sub_100035504(v6);
    }

    sub_10007AEE8();
    v0[15] = sub_10007B5A8();
    v10 = swift_task_alloc();
    v0[16] = v10;
    *v10 = v0;
    v10[1] = sub_100033E40;
    v11 = v0[9];

    return sub_100034ABC(v11);
  }

  else
  {
    if (qword_1000C4E68 != -1)
    {
      swift_once();
    }

    v13 = sub_10007B338();
    sub_1000345E8(v13, qword_1000C7700);
    v14 = sub_10007B318();
    v15 = sub_10007B6E8();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v22 = v17;
      *v16 = 136315138;
      v18 = sub_10007BC48();
      v20 = sub_100052954(v18, v19, &v22);

      *(v16 + 4) = v20;
      _os_log_impl(&_mh_execute_header, v14, v15, "%s: Observing tip failed because self is nil", v16, 0xCu);
      sub_100035504(v17);
    }

    v21 = v0[1];

    return v21();
  }
}

uint64_t sub_100033E40()
{

  v1 = sub_10007B578();

  return _swift_task_switch(sub_100033F7C, v1, v0);
}

uint64_t sub_100033F7C()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];

  (*(v2 + 8))(v1, v3);

  return _swift_task_switch(sub_10003400C, 0, 0);
}

uint64_t sub_10003400C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000340BC()
{
  swift_getObjectType();
  if (qword_1000C4E68 != -1)
  {
    swift_once();
  }

  v0 = sub_10007B338();
  sub_1000345E8(v0, qword_1000C7700);
  v1 = sub_10007B318();
  v2 = sub_10007B6E8();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v9 = v4;
    *v3 = 136315138;
    v5 = sub_10007BC48();
    v7 = sub_100052954(v5, v6, &v9);

    *(v3 + 4) = v7;
    _os_log_impl(&_mh_execute_header, v1, v2, "%s: Stopping observation of tips", v3, 0xCu);
    sub_100035504(v4);
  }

  sub_10007AED8();
  sub_10007AEC8();
  sub_10007AF08();
}

uint64_t sub_100034254()
{
  v1 = sub_10007AE68();
  v0[2] = v1;
  v0[3] = *(v1 - 8);
  v0[4] = swift_task_alloc();
  sub_10007AED8();
  v2 = swift_task_alloc();
  v0[5] = v2;
  *v2 = v0;
  v2[1] = sub_10003434C;

  return static TPTipsHelper.shared.getter();
}

uint64_t sub_10003434C(uint64_t a1)
{
  *(*v1 + 48) = a1;

  return _swift_task_switch(sub_10003444C, 0, 0);
}

uint64_t sub_10003444C()
{
  (*(v0[3] + 104))(v0[4], enum case for TPTipsHelper.Entry.Kind.voicemailDetail(_:), v0[2]);
  sub_10007B5B8();
  v0[7] = sub_10007B5A8();
  v2 = sub_10007B578();

  return _swift_task_switch(sub_100034504, v2, v1);
}

uint64_t sub_100034504()
{
  v1 = v0[6];
  v3 = v0[3];
  v2 = v0[4];
  v4 = v0[2];

  sub_10007AE58();

  (*(v3 + 8))(v2, v4);

  v5 = v0[1];

  return v5();
}

uint64_t sub_1000345E8(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_100034620()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100034658()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100031874;

  return sub_1000337E4(v2, v3);
}

uint64_t sub_1000346F0(uint64_t a1, uint64_t a2, char a3, void *a4)
{
  v8 = sub_10007AE68();
  v9 = *(v8 - 8);
  (__chkstk_darwin)();
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10007AEF8();
  v33 = v12;
  v34 = sub_1000353E4();
  v13 = sub_10003543C(&v32);
  (*(*(v12 - 8) + 32))(v13, a1, v12);
  v14 = *a4;
  v16 = sub_100060394(a2);
  v17 = v14[2];
  v18 = (v15 & 1) == 0;
  v19 = v17 + v18;
  if (__OFADD__(v17, v18))
  {
    __break(1u);
    goto LABEL_14;
  }

  v20 = v15;
  v21 = v14[3];
  if (v21 >= v19 && (a3 & 1) != 0)
  {
LABEL_7:
    v22 = *a4;
    if (v20)
    {
LABEL_8:
      v23 = v22[7] + 40 * v16;
      sub_100035504(v23);
      return sub_1000355E0(&v32, v23);
    }

    goto LABEL_11;
  }

  if (v21 >= v19 && (a3 & 1) == 0)
  {
    sub_1000623EC();
    goto LABEL_7;
  }

  sub_100060AB8(v19, a3 & 1);
  v25 = sub_100060394(a2);
  if ((v20 & 1) != (v26 & 1))
  {
LABEL_14:
    result = sub_10007BB68();
    __break(1u);
    return result;
  }

  v16 = v25;
  v22 = *a4;
  if (v20)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v9 + 16))(v11, a2, v8);
  v27 = sub_10003567C(&v32, v33);
  __chkstk_darwin(v27, v27);
  v29 = &v31 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v30 + 16))(v29);
  sub_1000349A0(v16, v11, v29, v22);
  return sub_100035504(&v32);
}

uint64_t sub_1000349A0(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = sub_10007AEF8();
  v17 = v8;
  v18 = sub_1000353E4();
  v9 = sub_10003543C(&v16);
  (*(*(v8 - 8) + 32))(v9, a3, v8);
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v10 = a4[6];
  v11 = sub_10007AE68();
  (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a2, v11);
  result = sub_1000355E0(&v16, a4[7] + 40 * a1);
  v13 = a4[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v15;
  }

  return result;
}

uint64_t sub_100034ABC(uint64_t a1)
{
  v2[12] = a1;
  v2[13] = v1;
  v2[14] = swift_getObjectType();
  v3 = sub_10007AE68();
  v2[15] = v3;
  v2[16] = *(v3 - 8);
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v4 = sub_10007AE78();
  v2[19] = v4;
  v2[20] = *(v4 - 8);
  v2[21] = swift_task_alloc();
  v5 = sub_10007AEF8();
  v2[22] = v5;
  v6 = *(v5 - 8);
  v2[23] = v6;
  v2[24] = *(v6 + 64);
  v2[25] = swift_task_alloc();
  sub_100030744(&qword_1000C5110);
  v2[26] = swift_task_alloc();
  v2[27] = sub_10007B5B8();
  v2[28] = sub_10007B5A8();
  v8 = sub_10007B578();
  v2[29] = v8;
  v2[30] = v7;

  return _swift_task_switch(sub_100034CC4, v8, v7);
}

uint64_t sub_100034CC4()
{
  v1 = v0[26];
  v3 = v0[24];
  v2 = v0[25];
  v4 = v0[22];
  v5 = v0[23];
  v16 = v0[14];
  v6 = v0[12];
  v7 = sub_10007B608();
  (*(*(v7 - 8) + 56))(v1, 1, 1, v7);
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v9 = *(v5 + 16);
  v0[31] = v9;
  v0[32] = (v5 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v9(v2, v6, v4);

  v10 = sub_10007B5A8();
  v11 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v12 = (v3 + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = swift_allocObject();
  *(v13 + 16) = v10;
  *(v13 + 24) = &protocol witness table for MainActor;
  (*(v5 + 32))(v13 + v11, v2, v4);
  *(v13 + v12) = v8;
  *(v13 + ((v12 + 15) & 0xFFFFFFFFFFFFFFF8)) = v16;

  v0[33] = sub_100078AB0(0, 0, v1, &unk_1000A1748, v13);
  sub_10007AED8();
  v14 = swift_task_alloc();
  v0[34] = v14;
  *v14 = v0;
  v14[1] = sub_100034ED8;

  return static TPTipsHelper.shared.getter();
}

uint64_t sub_100034ED8(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 280) = a1;

  v3 = *(v2 + 240);
  v4 = *(v2 + 232);

  return _swift_task_switch(sub_100035000, v4, v3);
}

uint64_t sub_100035000()
{
  v13 = v0[35];
  v12 = v0[31];
  v1 = v0[21];
  v2 = v0[22];
  v3 = v0[20];
  v14 = v0[19];
  v4 = v0[17];
  v5 = v0[18];
  v7 = v0[15];
  v6 = v0[16];
  v8 = v0[12];

  (*(v6 + 104))(v5, enum case for TPTipsHelper.Entry.Kind.voicemailDetail(_:), v7);
  v0[5] = v2;
  v0[6] = sub_1000353E4();
  v9 = sub_10003543C(v0 + 2);
  v12(v9, v8, v2);
  (*(v6 + 16))(v4, v5, v7);
  sub_1000354A0((v0 + 2), (v0 + 7));

  sub_10007AE88();
  (*(v6 + 8))(v5, v7);
  sub_100035504((v0 + 2));
  sub_10007AEB8();

  (*(v3 + 8))(v1, v14);

  v10 = v0[1];

  return v10();
}

uint64_t sub_1000351C4()
{
  v1 = sub_10007AEF8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_1000352AC(uint64_t a1)
{
  v4 = *(sub_10007AEF8() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = *(v1 + v6);
  v10 = *(v1 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8));
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_10003124C;

  return sub_10003187C(a1, v7, v8, v1 + v5, v9, v10);
}

unint64_t sub_1000353E4()
{
  result = qword_1000C5118;
  if (!qword_1000C5118)
  {
    sub_10007AEF8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C5118);
  }

  return result;
}

uint64_t *sub_10003543C(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_1000354A0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100035504(uint64_t a1)
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

uint64_t sub_100035550(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100035598(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_100035550(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000355E0(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

void *sub_1000355F8(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_10003563C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10003567C(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t sub_1000356D0()
{
  v0 = sub_10007B338();
  sub_10003C2DC(v0, qword_1000C5160);
  v1 = sub_1000345E8(v0, qword_1000C5160);
  if (qword_1000C4E60 != -1)
  {
    swift_once();
  }

  v2 = sub_1000345E8(v0, qword_1000C76E8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void *sub_1000357A8(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return (a1 & 0xFFFFFFFFFFFFFF8);
  }

  v3 = sub_10007BA18();
  if (!v3)
  {
LABEL_7:

    return _swiftEmptyArrayStorage;
  }

  v4 = v3;
  v5 = sub_1000390DC(v3, 0);
  sub_100071AB4((v5 + 4), v4, a1);
  v7 = v6;

  result = v5;
  if (v7 != v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

void sub_10003583C(uint64_t a1, void *a2)
{
  v6 = *v2;
  v5 = v2[1];
  v7 = v5 + 32;
  v8 = *(v5 + 16);
  if (*v2)
  {

    v9 = sub_100053958(a2, v7, v8, (v6 + 16));
    v8 = v10;
    v7 = v11;

    if (v8)
    {
LABEL_9:
      sub_1000392CC(a2);
      swift_unknownObjectRetain();
      sub_10007B8C8();
      sub_10007B8F8();
      sub_10007B908();
LABEL_15:
      sub_10007B8D8();
      return;
    }

    if ((v9 & 0x8000000000000000) == 0)
    {
      goto LABEL_10;
    }

    __break(1u);
  }

  if (!v8)
  {
    goto LABEL_9;
  }

  type metadata accessor for MessageID(0);
  v9 = 0;
  while (1)
  {
    v12 = *(v7 + 8 * v9);
    v13 = sub_10007B768();

    if (v13)
    {
      break;
    }

    if (v8 == ++v9)
    {
      goto LABEL_9;
    }
  }

LABEL_10:
  v16 = v2[2];
  v14 = v2 + 2;
  v15 = v16;
  if (v9 >= *(v16 + 16))
  {
    __break(1u);
  }

  else
  {
    swift_unknownObjectRetain();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v14 = v15;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v15 = sub_100039A20(v15);
      *v14 = v15;
    }

    if (v9 < *(v15 + 16))
    {
      *(v15 + 8 * v9 + 32) = a1;
      swift_unknownObjectRetain();
      swift_unknownObjectRelease();
      goto LABEL_15;
    }
  }

  __break(1u);
}

uint64_t sub_1000359E4(uint64_t a1, id *a2, uint64_t a3, void **a4)
{
  v6 = sub_10007ADB8();
  v7 = *(v6 - 8);
  v9 = __chkstk_darwin(v6, v8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9, v12);
  v14 = &v20 - v13;
  v15 = *a4;
  v16 = [*a2 date];
  sub_10007ADA8();

  v17 = [v15 date];
  sub_10007ADA8();

  LOBYTE(v17) = sub_10007AD98();
  v18 = *(v7 + 8);
  v18(v11, v6);
  v18(v14, v6);
  return v17 & 1;
}

unint64_t sub_100035B54(unint64_t result, char a2)
{
  v3 = v2;
  v23 = result;
  if (result >> 62)
  {
    goto LABEL_29;
  }

  v4 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v5 = 0;
      v6 = v23 & 0xC000000000000001;
      v27 = v23 + 32;
      v28 = v23 & 0xFFFFFFFFFFFFFF8;
      v25 = v23 & 0xC000000000000001;
      v26 = v4;
      while (v6)
      {
        v7 = sub_10007B898();
        v8 = __OFADD__(v5++, 1);
        if (v8)
        {
          goto LABEL_25;
        }

LABEL_9:
        v9 = [v7 identifier];
        swift_beginAccess();
        v11 = v3[2];
        v10 = v3[3];
        v12 = v10 + 32;
        v13 = *(v10 + 16);
        if (v11)
        {
          swift_unknownObjectRetain();

          v14 = sub_100053958(v9, v12, v13, (v11 + 16));
          v16 = v15;

          if (v16)
          {
            goto LABEL_4;
          }
        }

        else
        {
          swift_unknownObjectRetain();
          if (!v13)
          {
LABEL_4:
            sub_1000392CC(v9);

            swift_unknownObjectRetain();
            sub_10007B8C8();
            sub_10007B8F8();
            sub_10007B908();
            sub_10007B8D8();
            swift_unknownObjectRelease();
            goto LABEL_5;
          }

          type metadata accessor for MessageID(0);
          v14 = 0;
          while (1)
          {
            v17 = *(v12 + 8 * v14);
            v18 = sub_10007B768();

            if (v18)
            {
              break;
            }

            if (v13 == ++v14)
            {
              v6 = v25;
              v4 = v26;
              goto LABEL_4;
            }
          }

          v6 = v25;
          v4 = v26;
        }

        v19 = v3[4];
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v3[4] = v19;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v19 = sub_100039A20(v19);
          v3[4] = v19;
        }

        if ((v14 & 0x8000000000000000) != 0)
        {
          goto LABEL_27;
        }

        if (v14 >= *(v19 + 16))
        {
          goto LABEL_28;
        }

        *(v19 + 8 * v14 + 32) = v7;
        swift_unknownObjectRelease();
        sub_10007B8D8();
LABEL_5:
        swift_endAccess();
        result = swift_unknownObjectRelease();
        if (v5 == v4)
        {
          goto LABEL_30;
        }
      }

      if (v5 >= *(v28 + 16))
      {
        goto LABEL_26;
      }

      v7 = *(v27 + 8 * v5);
      swift_unknownObjectRetain();
      v8 = __OFADD__(v5++, 1);
      if (!v8)
      {
        goto LABEL_9;
      }

LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      result = sub_10007BA18();
      v4 = result;
    }

    while (result);
  }

LABEL_30:
  if (a2)
  {
    swift_beginAccess();
    v21 = v3[4];
    v29 = sub_10003B63C(v3[3], v21);
    sub_10003C15C(&v29, sub_1000359E4);
    v22 = v29[2];
    if (v22 == *(v21 + 16))
    {
      sub_10003A058((v29 + 4), v22, v3 + 2);

      return swift_endAccess();
    }

    else
    {
      __break(1u);

      __break(1u);
    }
  }

  return result;
}

uint64_t sub_100035E7C()
{

  return _swift_deallocClassInstance(v0, 40, 7);
}

void sub_100035F80(uint64_t a1)
{
  v3 = v1 + OBJC_IVAR____TtC9IntentsUI22CachedVoicemailManager__estimatedCount;
  os_unfair_lock_lock(v3);
  *(v3 + 8) = a1;
  os_unfair_lock_unlock(v3);
  v4 = [objc_allocWithZone(NSUserDefaults) init];
  os_unfair_lock_lock(v3);
  v5 = *(v3 + 8);
  os_unfair_lock_unlock(v3);
  sub_10007B888(26);

  v8._object = 0x800000010008BC00;
  v8._countAndFlagsBits = 0xD000000000000018;
  sub_10007B4C8(v8);
  v6 = sub_10007B448();

  [v4 setInteger:v5 forKey:v6];
}

uint64_t sub_1000360A0()
{
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  sub_10003D1C8();
  v1 = sub_10007B578();

  return _swift_task_switch(sub_100036134, v1, v0);
}

uint64_t sub_100036134()
{
  if (qword_1000C4DE0 != -1)
  {
    swift_once();
  }

  v1 = sub_10007B338();
  sub_1000345E8(v1, qword_1000C5160);
  v2 = sub_10007B318();
  v3 = sub_10007B6D8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "This must be overriden, its a misuse to use this directly without overriding this property", v4, 2u);
  }

  v5 = *(v0 + 8);

  return v5(&_swiftEmptyArrayStorage);
}

char *sub_100036254(uint64_t a1, uint64_t a2)
{
  *&v2[OBJC_IVAR____TtC9IntentsUI22CachedVoicemailManager_state] = 0x8000000000000000;
  *&v2[OBJC_IVAR____TtC9IntentsUI22CachedVoicemailManager_deferredOperationsQueue] = _swiftEmptyArrayStorage;
  v3 = &v2[OBJC_IVAR____TtC9IntentsUI22CachedVoicemailManager__estimatedCount];
  *v3 = 0;
  *(v3 + 1) = 0;
  v4 = &v2[OBJC_IVAR____TtC9IntentsUI22CachedVoicemailManager_serviceName];
  *v4 = a1;
  *(v4 + 1) = a2;
  v14.receiver = v2;
  v14.super_class = type metadata accessor for CachedVoicemailManager();
  v5 = objc_msgSendSuper2(&v14, "init");
  v6 = objc_allocWithZone(NSUserDefaults);
  v7 = v5;
  v8 = [v6 init];
  sub_10007B888(26);

  v12 = *&v7[OBJC_IVAR____TtC9IntentsUI22CachedVoicemailManager_serviceName];
  v13 = *&v7[OBJC_IVAR____TtC9IntentsUI22CachedVoicemailManager_serviceName + 8];

  v15._object = 0x800000010008BC00;
  v15._countAndFlagsBits = 0xD000000000000018;
  sub_10007B4C8(v15);
  v9 = sub_10007B448();

  v10 = [v8 integerForKey:{v9, v12, v13}];

  sub_100035F80(v10);
  return v7;
}

uint64_t sub_1000363A8()
{
  v1[10] = v0;
  sub_100030744(&qword_1000C5110);
  v1[11] = swift_task_alloc();
  type metadata accessor for VoicemailActor();
  v1[12] = swift_initStaticObject();
  v1[13] = sub_10003D1C8();
  v3 = sub_10007B578();
  v1[14] = v3;
  v1[15] = v2;

  return _swift_task_switch(sub_100036480, v3, v2);
}

uint64_t sub_100036480()
{
  v36 = v0;
  if (qword_1000C4E60 != -1)
  {
    swift_once();
  }

  v1 = sub_10007B338();
  v0[16] = sub_1000345E8(v1, qword_1000C76E8);
  v2 = sub_10007B318();
  v3 = sub_10007B6E8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v35 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_100052954(0x73654D6863746566, 0xEF29287365676173, &v35);
    _os_log_impl(&_mh_execute_header, v2, v3, "CachedVoicemailManager: %s", v4, 0xCu);
    sub_100035504(v5);
  }

  v6 = v0[10];
  v7 = OBJC_IVAR____TtC9IntentsUI22CachedVoicemailManager_state;
  v8 = *(v6 + OBJC_IVAR____TtC9IntentsUI22CachedVoicemailManager_state);
  v0[17] = v8;
  if (v8 >> 62)
  {
    if (v8 >> 62 == 1)
    {
      v9 = (v8 & 0x3FFFFFFFFFFFFFFFLL);
      v10 = OBJC_IVAR____TtC9IntentsUI22CachedVoicemailManager_deferredOperationsQueue;

      swift_beginAccess();
      v11 = *(v6 + v10);
      v12 = *(v11 + 16);
      if (v12)
      {

        v13 = v11 + 40;
        do
        {
          v14 = *(v13 - 8);
          v35 = v8 & 0x3FFFFFFFFFFFFFFFLL;

          v14(&v35);

          v13 += 16;
          --v12;
        }

        while (v12);
      }

      *(v6 + v10) = _swiftEmptyArrayStorage;

      v15 = sub_10007B318();
      v16 = sub_10007B6E8();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        v35 = v18;
        *v17 = 136315138;
        *(v17 + 4) = sub_100052954(0x73654D6863746566, 0xEF29287365676173, &v35);
        _os_log_impl(&_mh_execute_header, v15, v16, "CachedVoicemailManager: %s returning voicemails", v17, 0xCu);
        sub_100035504(v18);
      }

      swift_beginAccess();
      v19 = v9[2];
      v20 = v9[3];
      v21 = v9[4];

      v22 = sub_100039200(v19, v20, v21);

      v23 = v0[1];

      return v23(v22);
    }

    v29 = v0[12];
    v28 = v0[13];
    v30 = v0[11];
    v31 = sub_10007B608();
    (*(*(v31 - 8) + 56))(v30, 1, 1, v31);
    v32 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v33 = swift_allocObject();
    v33[2] = v29;
    v33[3] = v28;
    v33[4] = v32;
    v8 = sub_100078D70(0, 0, v30, &unk_1000A1898, v33);
    v0[19] = v8;
    *(v6 + v7) = v8;

    v34 = swift_task_alloc();
    v0[20] = v34;
    v26 = type metadata accessor for CachedVoicemailManager.Cache();
    *v34 = v0;
    v34[1] = sub_100036D48;
    v27 = v0 + 9;
  }

  else
  {

    v25 = swift_task_alloc();
    v0[18] = v25;
    v26 = type metadata accessor for CachedVoicemailManager.Cache();
    *v25 = v0;
    v25[1] = sub_1000369D0;
    v27 = v0 + 8;
  }

  return Task<>.value.getter(v27, v8, v26);
}

uint64_t sub_1000369D0()
{
  v1 = *v0;

  v2 = *(v1 + 120);
  v3 = *(v1 + 112);

  return _swift_task_switch(sub_100036AF0, v3, v2);
}

uint64_t sub_100036AF0()
{
  v19 = v0;

  v1 = v0[8];
  v2 = v0[10];
  v3 = OBJC_IVAR____TtC9IntentsUI22CachedVoicemailManager_deferredOperationsQueue;
  swift_beginAccess();
  v4 = *(v2 + v3);
  v5 = *(v4 + 16);
  if (v5)
  {

    v6 = v4 + 40;
    do
    {
      v7 = *(v6 - 8);
      v18 = v1;

      v7(&v18);

      v6 += 16;
      --v5;
    }

    while (v5);
  }

  *(v2 + v3) = _swiftEmptyArrayStorage;

  v8 = sub_10007B318();
  v9 = sub_10007B6E8();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v18 = v11;
    *v10 = 136315138;
    *(v10 + 4) = sub_100052954(0x73654D6863746566, 0xEF29287365676173, &v18);
    _os_log_impl(&_mh_execute_header, v8, v9, "CachedVoicemailManager: %s returning voicemails", v10, 0xCu);
    sub_100035504(v11);
  }

  swift_beginAccess();
  v12 = v1[2];
  v13 = v1[3];
  v14 = v1[4];

  v15 = sub_100039200(v12, v13, v14);

  v16 = v0[1];

  return v16(v15);
}

uint64_t sub_100036D48()
{
  v1 = *v0;

  v2 = *(v1 + 120);
  v3 = *(v1 + 112);

  return _swift_task_switch(sub_100036E68, v3, v2);
}

uint64_t sub_100036E68()
{
  v19 = v0;

  v1 = v0[9];
  v2 = v0[10];
  v3 = OBJC_IVAR____TtC9IntentsUI22CachedVoicemailManager_deferredOperationsQueue;
  swift_beginAccess();
  v4 = *(v2 + v3);
  v5 = *(v4 + 16);
  if (v5)
  {

    v6 = v4 + 40;
    do
    {
      v7 = *(v6 - 8);
      v18 = v1;

      v7(&v18);

      v6 += 16;
      --v5;
    }

    while (v5);
  }

  *(v2 + v3) = _swiftEmptyArrayStorage;

  v8 = sub_10007B318();
  v9 = sub_10007B6E8();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v18 = v11;
    *v10 = 136315138;
    *(v10 + 4) = sub_100052954(0x73654D6863746566, 0xEF29287365676173, &v18);
    _os_log_impl(&_mh_execute_header, v8, v9, "CachedVoicemailManager: %s returning voicemails", v10, 0xCu);
    sub_100035504(v11);
  }

  swift_beginAccess();
  v12 = v1[2];
  v13 = v1[3];
  v14 = v1[4];

  v15 = sub_100039200(v12, v13, v14);

  v16 = v0[1];

  return v16(v15);
}

uint64_t sub_1000370B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[8] = a1;
  v4[9] = a4;
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  sub_10003D1C8();
  v6 = sub_10007B578();
  v4[10] = v6;
  v4[11] = v5;

  return _swift_task_switch(sub_100037150, v6, v5);
}

uint64_t sub_100037150()
{
  v16 = v0;
  if (qword_1000C4E60 != -1)
  {
    swift_once();
  }

  v1 = sub_10007B338();
  *(v0 + 96) = sub_1000345E8(v1, qword_1000C76E8);
  v2 = sub_10007B318();
  v3 = sub_10007B6E8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v15 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_100052954(0x73654D6863746566, 0xEF29287365676173, &v15);
    _os_log_impl(&_mh_execute_header, v2, v3, "CachedVoicemailManager: %s inside of a task", v4, 0xCu);
    sub_100035504(v5);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 104) = Strong;
  if (Strong)
  {
    v14 = (*((swift_isaMask & *Strong) + 0xC0) + **((swift_isaMask & *Strong) + 0xC0));
    v7 = swift_task_alloc();
    *(v0 + 112) = v7;
    *v7 = v0;
    v7[1] = sub_10003742C;

    return v14();
  }

  else
  {
    type metadata accessor for CachedVoicemailManager.Cache();
    v9 = swift_allocObject();
    sub_10003B304(_swiftEmptyArrayStorage);
    v9[2] = v10;
    v9[3] = v11;
    v9[4] = v12;
    **(v0 + 64) = v9;
    v13 = *(v0 + 8);

    return v13();
  }
}

uint64_t sub_10003742C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 120) = v1;

  if (v1)
  {
    v5 = v4[10];
    v6 = v4[11];
    v7 = sub_100037774;
  }

  else
  {
    v4[16] = a1;
    v5 = v4[10];
    v6 = v4[11];
    v7 = sub_100037554;
  }

  return _swift_task_switch(v7, v5, v6);
}

uint64_t sub_100037554()
{
  v17 = v0;
  v1 = *(v0 + 104);
  v2 = sub_10003C340(*(v0 + 128), 1);
  *(v1 + OBJC_IVAR____TtC9IntentsUI22CachedVoicemailManager_state) = v2 | 0x4000000000000000;
  swift_retain_n();

  swift_beginAccess();
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v5 = *(v2 + 32);

  v6 = sub_100039200(v3, v4, v5);

  if ((v6 & 0x8000000000000000) != 0 || (v6 & 0x4000000000000000) != 0)
  {
    v7 = sub_10007BA18();
  }

  else
  {
    v7 = *(v6 + 16);
  }

  sub_100035F80(v7);

  v8 = sub_10007B318();
  v9 = sub_10007B6E8();
  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v0 + 104);
  if (v10)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v16 = v13;
    *v12 = 136315138;
    *(v12 + 4) = sub_100052954(0x73654D6863746566, 0xEF29287365676173, &v16);
    _os_log_impl(&_mh_execute_header, v8, v9, "CachedVoicemailManager: %s returning cache from a task", v12, 0xCu);
    sub_100035504(v13);
  }

  **(v0 + 64) = v2;
  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_100037774()
{
  v1 = *(v0 + 104);
  type metadata accessor for CachedVoicemailManager.Cache();
  v2 = swift_allocObject();
  sub_10003B304(_swiftEmptyArrayStorage);
  v4 = v3;
  v6 = v5;
  v8 = v7;

  v2[2] = v4;
  v2[3] = v6;
  v2[4] = v8;
  **(v0 + 64) = v2;
  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_1000379A4(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  sub_10003D1C8();
  v4 = sub_10007B578();

  return _swift_task_switch(sub_100037A3C, v4, v3);
}

uint64_t sub_100037A3C()
{
  v1 = *(v0 + 24);
  *(v0 + 32) = _Block_copy(*(v0 + 16));
  v2 = v1;
  v3 = swift_task_alloc();
  *(v0 + 40) = v3;
  *v3 = v0;
  v3[1] = sub_100037AE0;

  return sub_1000363A8();
}

uint64_t sub_100037AE0()
{
  v1 = *(*v0 + 32);
  v2 = *(*v0 + 24);
  v6 = *v0;

  sub_100030744(&unk_1000C5360);
  isa = sub_10007B518().super.isa;

  (v1)[2](v1, isa);

  _Block_release(v1);
  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_100037C58(uint64_t a1)
{
  v2[9] = a1;
  v2[10] = v1;
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  sub_10003D1C8();
  v4 = sub_10007B578();
  v2[11] = v4;
  v2[12] = v3;

  return _swift_task_switch(sub_100037CF0, v4, v3);
}

uint64_t sub_100037CF0()
{
  v1 = *(v0[10] + OBJC_IVAR____TtC9IntentsUI22CachedVoicemailManager_state);
  v0[13] = v1;
  if (v1 >> 62)
  {
    if (v1 >> 62 == 1)
    {
      v2 = v0[9];
      v3 = (v1 & 0x3FFFFFFFFFFFFFFFLL);
      swift_beginAccess();
      v4 = v3[2];
      v5 = v3[3];
      v6 = v3[4];

      sub_1000444D0(v2, v4, v5, v6);
      v8 = v7;

      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    v12 = v0[1];

    return v12(v9);
  }

  else
  {

    v10 = swift_task_alloc();
    v0[14] = v10;
    v11 = type metadata accessor for CachedVoicemailManager.Cache();
    *v10 = v0;
    v10[1] = sub_100037E98;

    return Task<>.value.getter(v0 + 8, v1, v11);
  }
}

uint64_t sub_100037E98()
{
  v1 = *v0;

  v2 = *(v1 + 96);
  v3 = *(v1 + 88);

  return _swift_task_switch(sub_100037FB8, v3, v2);
}

uint64_t sub_100037FB8()
{
  v1 = v0[8];
  v2 = v0[9];
  swift_beginAccess();
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];

  sub_1000444D0(v2, v3, v4, v5);
  v7 = v6;

  v8 = v0[1];

  return v8(v7);
}

uint64_t sub_100038228(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  sub_10003D1C8();
  v5 = sub_10007B578();

  return _swift_task_switch(sub_1000382C4, v5, v4);
}

uint64_t sub_1000382C4()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 16);
  *(v0 + 40) = _Block_copy(*(v0 + 24));
  v3 = v2;
  v4 = v1;
  v5 = swift_task_alloc();
  *(v0 + 48) = v5;
  *v5 = v0;
  v5[1] = sub_100038380;
  v6 = *(v0 + 16);

  return sub_100037C58(v6);
}

uint64_t sub_100038380(uint64_t a1)
{
  v3 = *(*v1 + 40);
  v4 = *(*v1 + 32);
  v5 = *(*v1 + 16);
  v8 = *v1;

  v3[2](v3, a1);
  _Block_release(v3);
  swift_unknownObjectRelease();
  v6 = *(v8 + 8);

  return v6();
}

uint64_t sub_100038514(unint64_t a1)
{
  v4 = *(v1 + OBJC_IVAR____TtC9IntentsUI22CachedVoicemailManager_state);
  if (!(v4 >> 62))
  {
    v15 = swift_allocObject();
    *(v15 + 16) = a1;
    v16 = OBJC_IVAR____TtC9IntentsUI22CachedVoicemailManager_deferredOperationsQueue;
    swift_beginAccess();
    v17 = *(v1 + v16);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v1 + v16) = v17;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v17 = sub_100078390(0, v17[2] + 1, 1, v17);
      *(v1 + v16) = v17;
    }

    v20 = v17[2];
    v19 = v17[3];
    if (v20 >= v19 >> 1)
    {
      v17 = sub_100078390((v19 > 1), v20 + 1, 1, v17);
    }

    v17[2] = v20 + 1;
    v21 = &v17[2 * v20];
    v21[4] = sub_10003D1C0;
    v21[5] = v15;
    *(v1 + v16) = v17;
    swift_endAccess();
    v14 = 1;
    v24 = 1;
    sub_10003C288();
    swift_willThrowTypedImpl();
    return v14;
  }

  if (v4 >> 62 != 1)
  {
    v24 = 0;
    sub_10003C288();
    swift_willThrowTypedImpl();
    return 0;
  }

  v5 = (v4 & 0x3FFFFFFFFFFFFFFFLL);
  v25 = _swiftEmptyArrayStorage;
  swift_retain_n();
  sub_10003CF8C(a1, v5, &v25);

  swift_beginAccess();
  v6 = v5[4];
  v23 = sub_10003B63C(v5[3], v6);
  sub_10003C15C(&v23, sub_1000359E4);
  if (!v2)
  {
    v7 = v23[2];
    if (v7 == *(v6 + 16))
    {
      sub_10003A058((v23 + 4), v7, v5 + 2);

      swift_endAccess();
      v8 = v25;

      v10 = sub_100065068(v9);

      if ((v10 & 0xC000000000000001) != 0)
      {
        if (v10 < 0)
        {
          v11 = v10;
        }

        else
        {
          v11 = v10 & 0xFFFFFFFFFFFFFF8;
        }

        v12 = sub_10007B7F8();
        v10 = sub_100063308(v11, v12);
      }

      v13 = sub_10003A740(v8, v10);
      v14 = v13;
      if ((v13 & 0xC000000000000001) != 0)
      {
        if (sub_10007B7F8())
        {
LABEL_12:

          v24 = v14;
          sub_10003C288();
          swift_willThrowTypedImpl();

          return v14;
        }
      }

      else if (*(v13 + 16))
      {
        goto LABEL_12;
      }

      v14 = sub_1000357A8(v8);

      return v14;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100038820(uint64_t **a1, unint64_t a2)
{
  v3 = *a1;
  v8 = _swiftEmptyArrayStorage;

  sub_10003CF8C(a2, v3, &v8);

  swift_beginAccess();
  v4 = v3[4];
  v7 = sub_10003B63C(v3[3], v4);
  sub_10003C15C(&v7, sub_1000359E4);
  v5 = v7[2];
  if (v5 == *(v4 + 16))
  {
    sub_10003A058((v7 + 4), v5, v3 + 2);

    swift_endAccess();
  }

  else
  {
    __break(1u);

    __break(1u);
  }

  return result;
}

uint64_t sub_100038918(unint64_t a1)
{
  v3 = swift_allocObject();
  *(v3 + 16) = a1;
  v4 = *(v1 + OBJC_IVAR____TtC9IntentsUI22CachedVoicemailManager_state);
  if (v4 >> 62)
  {
    if (v4 >> 62 == 1)
    {

      sub_100038B18((v4 & 0x3FFFFFFFFFFFFFFFLL), a1, v5);
    }

    else
    {
      sub_10003C288();

      swift_willThrowTypedImpl();

      return 0;
    }
  }

  else
  {
    v6 = swift_allocObject();
    *(v6 + 16) = sub_10003C21C;
    *(v6 + 24) = v3;
    v7 = OBJC_IVAR____TtC9IntentsUI22CachedVoicemailManager_deferredOperationsQueue;
    swift_beginAccess();
    v8 = *(v1 + v7);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v1 + v7) = v8;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = sub_100078390(0, v8[2] + 1, 1, v8);
      *(v1 + v7) = v8;
    }

    v11 = v8[2];
    v10 = v8[3];
    if (v11 >= v10 >> 1)
    {
      v8 = sub_100078390((v10 > 1), v11 + 1, 1, v8);
    }

    v8[2] = v11 + 1;
    v12 = &v8[2 * v11];
    v12[4] = sub_10003C25C;
    v12[5] = v6;
    *(v1 + v7) = v8;
    swift_endAccess();
    v1 = 1;
    sub_10003C288();
    swift_willThrowTypedImpl();
  }

  return v1;
}

uint64_t sub_100038B18(uint64_t *a1, unint64_t a2, __n128 a3)
{
  v3 = a2;
  if (a2 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_10007BA18())
  {
    v6 = 0;
    v7 = v3 & 0xC000000000000001;
    v8 = v3 & 0xFFFFFFFFFFFFFF8;
    a3.n128_u64[0] = 136315138;
    v27 = a3;
    v28 = i;
    v29 = v3 & 0xC000000000000001;
    while (v7)
    {
      v9 = sub_10007B898();
      v10 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        goto LABEL_17;
      }

LABEL_9:
      v11 = [v9 identifier];
      swift_beginAccess();
      sub_10003583C(v9, v11);
      v13 = v12;
      swift_endAccess();

      if (v13)
      {
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
      }

      else
      {
        if (qword_1000C4DE0 != -1)
        {
          swift_once();
        }

        v14 = sub_10007B338();
        sub_1000345E8(v14, qword_1000C5160);
        swift_unknownObjectRetain();
        v15 = sub_10007B318();
        v16 = sub_10007B6C8();
        swift_unknownObjectRelease();
        if (os_log_type_enabled(v15, v16))
        {
          v17 = swift_slowAlloc();
          v31 = swift_slowAlloc();
          v32 = v9;
          v33[0] = v31;
          *v17 = v27.n128_u32[0];
          swift_unknownObjectRetain();
          sub_100030744(&unk_1000C5360);
          v18 = sub_10007B498();
          log = v15;
          v20 = v8;
          v21 = a1;
          v22 = v3;
          v23 = sub_100052954(v18, v19, v33);
          i = v28;

          *(v17 + 4) = v23;
          v3 = v22;
          a1 = v21;
          v8 = v20;
          _os_log_impl(&_mh_execute_header, log, v16, "CachedVoicemailmanager: Told to update message but no message was found with id: %s", v17, 0xCu);
          sub_100035504(v31);

          v7 = v29;

          swift_unknownObjectRelease();
        }

        else
        {
          swift_unknownObjectRelease();
        }
      }

      ++v6;
      if (v10 == i)
      {
        goto LABEL_20;
      }
    }

    if (v6 >= *(v8 + 16))
    {
      goto LABEL_18;
    }

    v9 = *(v3 + 8 * v6 + 32);
    swift_unknownObjectRetain();
    v10 = v6 + 1;
    if (!__OFADD__(v6, 1))
    {
      goto LABEL_9;
    }

LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    ;
  }

LABEL_20:
  swift_beginAccess();
  v24 = a1[4];
  v32 = sub_10003B63C(a1[3], v24);
  sub_10003C15C(&v32, sub_1000359E4);
  v25 = v32[2];
  if (v25 == *(v24 + 16))
  {
    sub_10003A058((v32 + 4), v25, a1 + 2);

    return swift_endAccess();
  }

  else
  {
    __break(1u);

    __break(1u);
  }

  return result;
}

id sub_100038EAC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CachedVoicemailManager();
  return objc_msgSendSuper2(&v2, "dealloc");
}

char *sub_100038F68()
{
  if (&swift_runtimeSupportsNoncopyableTypes)
  {
    return sub_100030744(&qword_1000C51C0);
  }

  else
  {
    return &type metadata for () + 8;
  }
}

unint64_t sub_100038FBC(uint64_t *a1)
{
  if (*a1 >= 0)
  {
    return *a1 >> 62;
  }

  else
  {
    return (*a1 >> 3) + 2;
  }
}

uint64_t sub_100038FE4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7E && *(a1 + 8))
  {
    return (*a1 + 126);
  }

  v3 = (((*a1 >> 57) >> 5) | (4 * ((*a1 >> 57) & 0x18 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7D)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_100039040(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *result = a2 - 126;
    if (a3 >= 0x7E)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1F | (32 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

void *sub_1000390A0(void *result, uint64_t a2)
{
  if (a2 < 2)
  {
    *result = *result & 0xFFFFFFFFFFFFFF8 | (a2 << 62);
  }

  else
  {
    *result = (8 * (a2 - 2)) | 0x8000000000000000;
  }

  return result;
}

void *sub_1000390DC(uint64_t a1, uint64_t a2)
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

  sub_100030744(&unk_1000C59F0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

void *sub_100039164(unint64_t a1, void (*a2)(void *, uint64_t, unint64_t))
{
  if (!(a1 >> 62))
  {
    return (a1 & 0xFFFFFFFFFFFFFF8);
  }

  v5 = sub_10007BA18();
  if (!v5)
  {
LABEL_7:

    return _swiftEmptyArrayStorage;
  }

  v6 = v5;
  v7 = sub_1000390DC(v5, 0);
  a2(v7 + 4, v6, a1);
  v9 = v8;

  result = v7;
  if (v9 != v6)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

void *sub_100039200(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  if (!v3)
  {
    return &_swiftEmptyArrayStorage;
  }

  v7 = sub_1000390DC(*(a3 + 16), 0);
  v8 = sub_100071F8C(&v10, v7 + 32, v3, a1, a2, a3);

  if (v8 != v3)
  {
    __break(1u);
    return &_swiftEmptyArrayStorage;
  }

  return v7;
}

uint64_t sub_1000392CC(void *a1)
{
  v2 = a1;
  sub_10007B8C8();
  sub_10007B8F8();
  sub_10007B908();
  result = sub_10007B8D8();
  v4 = *(v1[1] + 16);
  if (*v1)
  {
    swift_beginAccess();
    if (sub_10007B018() >= v4)
    {
      result = swift_isUniquelyReferenced_native();
      v5 = *v1;
      if ((result & 1) == 0)
      {
        if (!v5)
        {
LABEL_12:
          __break(1u);
          return result;
        }

        v6 = sub_10007B038();

        *v1 = v6;
        v5 = v6;
      }

      if (v5)
      {
        return sub_10007AFD8();
      }

      __break(1u);
      goto LABEL_12;
    }
  }

  else if (v4 < 0x10)
  {
    return result;
  }

  return sub_100039404();
}

uint64_t sub_100039404()
{
  v1 = *v0;
  if (*v0)
  {
    swift_beginAccess();
    v2 = *(v1 + 24) & 0x3FLL;
  }

  else
  {
    v2 = 0;
  }

  v3 = v0[1];
  if (v2 || *(v3 + 16) >= 0x10uLL)
  {
    v5 = sub_10007B048();
    if (v2 <= v5)
    {
      v6 = v5;
    }

    else
    {
      v6 = v2;
    }

    v4 = sub_1000394A4(v3, v6, 0, v2);
  }

  else
  {
    v4 = 0;
  }

  *v0 = v4;
  return result;
}

uint64_t sub_1000394A4(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  if (a3)
  {
    v6 = 0;
  }

  else
  {
    v6 = a2;
  }

  v7 = sub_10007B048();
  result = 0;
  if (v7 <= v6)
  {
    v7 = v6;
  }

  if (v7 <= a4)
  {
    v7 = a4;
  }

  if (v7 >= 5)
  {
    v9 = sub_10007B058();
    sub_100039524(a1, (v9 + 16));
    return v9;
  }

  return result;
}

Swift::Int sub_100039574(Swift::Int result, uint64_t a2, Swift::Int *a3)
{
  v9 = result;
  if (a2)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      v5 = 0;
      while (1)
      {
        v6 = *a3;
        v7 = *(v9 + 8 * v5);
        result = sub_10007B758(v6);
        if (__OFSUB__(1 << *a3, 1))
        {
          break;
        }

        v8 = sub_10007AFB8();

        if (v8)
        {
          while (1)
          {
            sub_10007B008();
          }
        }

        result = sub_10007AFF8();
        if (++v5 == a2)
        {
          return result;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_100039680(uint64_t result, char a2)
{
  if (result < 0)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v3 = v2;
  sub_10007B8E8();
  v5 = *v2;
  if (*v2)
  {
    swift_beginAccess();
    v6 = *(v5 + 16) & 0x3FLL;
    v7 = sub_10007B048();
    v8 = v7;
    if ((a2 & 1) == 0)
    {
      swift_beginAccess();
      v7 = v8;
      v8 = *(v5 + 24) & 0x3FLL;
    }
  }

  else
  {
    v7 = sub_10007B048();
    v6 = 0;
    if (a2)
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }
  }

  v9 = v3[1];
  if (v6 < v7)
  {
    if (v8 <= v7)
    {
      v10 = v7;
    }

    else
    {
      v10 = v8;
    }

LABEL_23:
    v13 = sub_1000394A4(v9, v10, 0, v8);

    *v3 = v13;
    return result;
  }

  if (v8 <= v7)
  {
    v11 = v7;
  }

  else
  {
    v11 = v8;
  }

  result = sub_10007B048();
  if (result <= v11)
  {
    v12 = v11;
  }

  else
  {
    v12 = result;
  }

  if (v12 < v6)
  {
    if (v8 <= v12)
    {
      v10 = v12;
    }

    else
    {
      v10 = v8;
    }

    goto LABEL_23;
  }

  if (!v5 || (result = swift_isUniquelyReferenced_native(), (result & 1) != 0))
  {
    v14 = *v3;
    if (*v3)
    {
      goto LABEL_28;
    }

LABEL_32:
    if (!v8)
    {
      return result;
    }

    __break(1u);
    goto LABEL_34;
  }

  if (!*v3)
  {
LABEL_35:
    __break(1u);
    return result;
  }

  v14 = sub_10007B038();

  *v3 = v14;
  if (!v14)
  {
    goto LABEL_32;
  }

LABEL_28:
  result = swift_beginAccess();
  if ((*(v14 + 24) & 0x3FLL) != v8)
  {
    *(v14 + 24) = *(v14 + 24) & 0xFFFFFFFFFFFFFFC0 | v8 & 0x3F;
  }

  return result;
}

void sub_100039820(int64_t a1, uint64_t a2)
{
  v4 = v2[1];
  v5 = *(v4 + 16);
  v6 = *v2;
  if (!*v2)
  {
    if (!v5)
    {
      goto LABEL_16;
    }

LABEL_15:
    sub_100039980(a1);
    return;
  }

  swift_beginAccess();
  if ((*(v6 + 16) & 0x3FLL) == (*(v6 + 24) & 0x3FLL))
  {
    if (!v5)
    {
      goto LABEL_16;
    }
  }

  else if (v5 <= sub_10007B028())
  {
LABEL_16:
    sub_100039980(a1);
    sub_100039404();
    return;
  }

  isUniquelyReferenced_native = swift_isUniquelyReferenced_native();
  v9 = *v2;
  if ((isUniquelyReferenced_native & 1) == 0)
  {
    if (!v9)
    {
      goto LABEL_20;
    }

    v10 = sub_10007B038();

    *v2 = v10;
    v9 = v10;
  }

  if (v9)
  {

    sub_100039A34(a2, (v9 + 16), v9 + 32, v2);
    if (__OFADD__(a1, 1))
    {
      __break(1u);
    }

    else if (a1 + 1 >= a1)
    {

      sub_100039C14(a1, a1 + 1, v4, (v9 + 16));

      goto LABEL_15;
    }

    __break(1u);
  }

  __break(1u);
LABEL_20:
  __break(1u);
}

uint64_t sub_100039980(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if ((result & 1) == 0)
  {
    result = sub_100039A20(v3);
    v3 = result;
    *v1 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 8 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 40), 8 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    sub_10007B8D8();
    return v8;
  }

  return result;
}

void sub_100039A34(uint64_t a1, Swift::Int *a2, uint64_t a3, uint64_t a4)
{
  v6 = a1;
  v19 = sub_10007AFB8();
  sub_10007B008();
  if (v19)
  {
    v7 = sub_10007AFC8();
    while (1)
    {
      v8 = sub_10007AFE8();
      if (v9)
      {
LABEL_25:
        __break(1u);
        return;
      }

      if ((v8 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
        goto LABEL_25;
      }

      v10 = *(a4 + 8);
      if (v8 >= *(v10 + 16))
      {
        goto LABEL_23;
      }

      v11 = *a2;
      v12 = *(v10 + 8 * v8 + 32);
      v13 = sub_10007B758(v11);

      v14 = 1 << *a2;
      if (__OFSUB__(v14, 1))
      {
        goto LABEL_24;
      }

      v15 = (v14 - 1) & v13;
      if (v6 >= v7)
      {
        if (v15 >= v7 && v6 >= v15)
        {
LABEL_18:
          sub_10007AFE8();
          v6 = a1;
          sub_10007AFD8();
        }
      }

      else if (v15 >= v7 || v6 >= v15)
      {
        goto LABEL_18;
      }

      sub_10007B008();
    }
  }

  sub_10007AFD8();
}

void sub_100039C14(uint64_t a1, uint64_t a2, uint64_t a3, Swift::Int *a4)
{
  v5 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    goto LABEL_58;
  }

  if (v5 >= 1)
  {
    v9 = *(a3 + 16);
    if (a1 < (v9 - v5) / 2)
    {
      if (sub_10007B018() / 3 > a1)
      {
        if (a1 < 0)
        {
LABEL_62:
          __break(1u);
          goto LABEL_63;
        }

        if (v9 < a1)
        {
LABEL_63:
          __break(1u);
          goto LABEL_64;
        }

        v10 = a3;

        if (a1)
        {
          v11 = 0;
          while (1)
          {
            v12 = *a4;
            v13 = *(v10 + 32 + 8 * v11);
            sub_10007B758(v12);
            if (__OFSUB__(1 << *a4, 1))
            {
              break;
            }

            if (sub_10007AFB8())
            {
              while (1)
              {
                v14 = sub_10007AFE8();
                if ((v15 & 1) == 0 && v14 == v11)
                {
                  break;
                }

                sub_10007B008();
              }
            }

            if (__OFADD__(v11, v5))
            {
              goto LABEL_55;
            }

            ++v11;
            sub_10007AFF8();

            if (v11 == a1)
            {
              goto LABEL_17;
            }
          }

          __break(1u);
LABEL_55:
          __break(1u);
          goto LABEL_56;
        }

LABEL_17:

        goto LABEL_18;
      }

      sub_10007AFB8();
      v21 = sub_10007AFE8();
      if ((v22 & 1) != 0 || v21 >= a1)
      {
LABEL_33:
        sub_10007B008();
LABEL_18:
        v16 = a4[1];
        if (__OFSUB__(v16 >> 6, v5))
        {
LABEL_60:
          __break(1u);
          goto LABEL_61;
        }

        v17 = 1 << *a4;
        v18 = __OFSUB__(v17, 1);
        v19 = v17 - 1;
        if (v18)
        {
LABEL_61:
          __break(1u);
          goto LABEL_62;
        }

        v20 = (v19 & (((v16 >> 6) - v5) >> 63)) + (v16 >> 6) - v5;
        if (v20 < v19)
        {
          v19 = 0;
        }

        a4[1] = a4[1] & 0x3F | ((v20 - v19) << 6);
        return;
      }

      if (!__OFADD__(v21, v5))
      {
        sub_10007AFF8();
        goto LABEL_33;
      }

      __break(1u);
LABEL_39:
      sub_10007AFB8();
      v23 = sub_10007AFE8();
      if ((v24 & 1) == 0 && v23 >= v4)
      {
        if (__OFSUB__(v23, v5))
        {
LABEL_56:
          __break(1u);
LABEL_57:
          __break(1u);
LABEL_58:
          __break(1u);
          goto LABEL_59;
        }

        sub_10007AFF8();
      }

      sub_10007B008();
      return;
    }

    v4 = a2;
    if (__OFSUB__(v9, a2))
    {
LABEL_59:
      __break(1u);
      goto LABEL_60;
    }

    if ((v9 - a2) >= sub_10007B018() / 3)
    {
      goto LABEL_39;
    }

    if (v9 < v4)
    {
LABEL_64:
      __break(1u);
      goto LABEL_65;
    }

    if (v4 < 0)
    {
LABEL_65:
      __break(1u);
      return;
    }

    if (v9 != v4)
    {
      do
      {
        v25 = *a4;
        v26 = *(a3 + 32 + 8 * v4);
        sub_10007B758(v25);
        if (__OFSUB__(1 << *a4, 1))
        {
          goto LABEL_57;
        }

        if (sub_10007AFB8())
        {
          while (1)
          {
            v27 = sub_10007AFE8();
            if ((v28 & 1) == 0 && v27 == v4)
            {
              break;
            }

            sub_10007B008();
          }
        }

        sub_10007AFF8();
      }

      while (++v4 != v9);
    }
  }
}

uint64_t sub_10003A058(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  sub_10003B04C(a1, a2, sub_10003B034);
  v7 = v6;
  v8 = sub_10003A130();
  v9 = sub_1000394A4(v7, 0, 1, v8);
  if (*(v7 + 16) <= 0xFuLL)
  {

    v9 = 0;
  }

  *a3 = v9;
  a3[1] = v7;

  sub_10003B04C(a1, a2, sub_10003B040);
  a3[2] = v10;
}

uint64_t sub_10003A138(char *__dst, char *__src, char *a3, uint64_t a4, uint64_t (*a5)(void **, uint64_t *, void **, uint64_t *))
{
  v6 = v5;
  v7 = a3;
  v8 = __src;
  v9 = __dst;
  v10 = __src - __dst;
  v11 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v11 = __src - __dst;
  }

  v12 = v11 >> 4;
  v13 = a3 - __src;
  v14 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v14 = a3 - __src;
  }

  v15 = v14 >> 4;
  if (v12 < v14 >> 4)
  {
    v16 = a4;
    if (a4 != __dst || &__dst[16 * v12] <= a4)
    {
      memmove(a4, __dst, 16 * v12);
    }

    v62 = (v16 + 16 * v12);
    if (v10 < 16)
    {
LABEL_10:
      v8 = v9;
      goto LABEL_51;
    }

    while (1)
    {
      if (v8 >= v7)
      {
        goto LABEL_10;
      }

      v59 = v9;
      v19 = v7;
      v20 = *v8;
      v21 = *(v8 + 1);
      v22 = v8;
      v23 = *v16;
      v24 = *(v16 + 8);
      v25 = v16;
      v67 = v20;
      v65 = v23;
      v66 = v21;
      v64 = v24;
      v26 = v20;
      swift_unknownObjectRetain();
      v27 = v23;
      swift_unknownObjectRetain();
      v28 = a5(&v67, &v66, &v65, &v64);
      if (v5)
      {

        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        v51 = &v62[-v25 + 15];
        if (&v62[-v25] >= 0)
        {
          v51 = &v62[-v25];
        }

        v49 = v59;
        if (v59 < v25 || v59 >= v25 + (v51 & 0xFFFFFFFFFFFFFFF0) || v59 != v25)
        {
          v52 = 16 * (v51 >> 4);
          v50 = v25;
          goto LABEL_57;
        }

        return 1;
      }

      v29 = v28;

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      if (v29)
      {
        break;
      }

      v17 = v25;
      v16 = v25 + 16;
      v8 = v22;
      v18 = v59;
      v7 = v19;
      if (v59 != v25)
      {
        goto LABEL_12;
      }

LABEL_13:
      v9 = v18 + 16;
      if (v16 >= v62)
      {
        goto LABEL_10;
      }
    }

    v30 = v22;
    v17 = v22;
    v8 = v22 + 16;
    v18 = v59;
    v7 = v19;
    v16 = v25;
    if (v59 == v30)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v18 = *v17;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[16 * v15] <= a4)
  {
    v31 = a4;
    memmove(a4, __src, 16 * v15);
    a4 = v31;
  }

  v62 = (a4 + 16 * v15);
  v32 = v13 < 16;
  v16 = a4;
  if (v32 || v8 <= v9)
  {
LABEL_51:
    v53 = &v62[-v16 + 15];
    if (&v62[-v16] >= 0)
    {
      v53 = &v62[-v16];
    }

    if (v8 < v16 || v8 >= v16 + (v53 & 0xFFFFFFFFFFFFFFF0) || v8 != v16)
    {
      v52 = 16 * (v53 >> 4);
      v49 = v8;
      v50 = v16;
LABEL_57:
      memmove(v49, v50, v52);
      return 1;
    }

    return 1;
  }

  v33 = -a4;
  v57 = a4;
  v60 = v9;
  v55 = -a4;
LABEL_25:
  v63 = v6;
  v56 = v8 - 16;
  v34 = v62;
  v35 = &v62[v33];
  v36 = v7 - 16;
  v58 = v8;
  while (1)
  {
    v37 = v36;
    v38 = *(v34 - 2);
    v39 = *(v34 - 1);
    v34 -= 16;
    v40 = *(v8 - 2);
    v41 = *(v8 - 1);
    v67 = v38;
    v65 = v40;
    v66 = v39;
    v64 = v41;
    v42 = v38;
    swift_unknownObjectRetain();
    v43 = v40;
    swift_unknownObjectRetain();
    v44 = a5(&v67, &v66, &v65, &v64);
    if (v63)
    {
      break;
    }

    v45 = v44;

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v7 = v37;
    v46 = v37 + 16;
    if (v45)
    {
      if (v46 != v58)
      {
        *v37 = *v56;
      }

      v16 = v57;
      v6 = 0;
      if (v62 <= v57 || (v8 = v56, v33 = v55, v56 <= v60))
      {
        v8 = v56;
        goto LABEL_51;
      }

      goto LABEL_25;
    }

    v8 = v58;
    if (v46 != v62)
    {
      *v37 = *v34;
    }

    v35 -= 16;
    v36 = v37 - 16;
    v62 = v34;
    if (v34 <= v57)
    {
      v62 = v34;
      v16 = v57;
      goto LABEL_51;
    }
  }

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  if (v35 >= 0)
  {
    v47 = v35;
  }

  else
  {
    v47 = v35 + 15;
  }

  v48 = v47 >> 4;
  v50 = v57;
  v49 = v58;
  if (v58 < v57 || v58 >= &v57[v47 & 0xFFFFFFFFFFFFFFF0])
  {
    v52 = 16 * v48;
    goto LABEL_57;
  }

  if (v58 != v57)
  {
    memmove(v58, v57, 16 * v48);
  }

  return 1;
}

uint64_t sub_10003A59C(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_10003A628(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

char *sub_10003A63C(char *result, int64_t a2, char a3, char *a4)
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
    sub_100030744(&qword_1000C52D8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

void *sub_10003A740(unint64_t a1, void *a2)
{
  v2 = a2;
  if (a2[2])
  {
    v54[0] = a1;
    v45 = a1 >> 62;
    if (a1 >> 62)
    {
LABEL_47:
      v36 = a1;
      v3 = sub_10007BA18();
      a1 = v36;
    }

    else
    {
      v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v50 = a1;

    if (v3)
    {
      v4 = 0;
      v51 = v50 & 0xC000000000000001;
      v49 = v50 & 0xFFFFFFFFFFFFFF8;
      v47 = v50 + 32;
      v53 = v2 + 7;
      while (1)
      {
        if (v51)
        {
          a1 = sub_10007B898();
        }

        else
        {
          if (v4 >= *(v49 + 16))
          {
            goto LABEL_46;
          }

          a1 = *(v47 + 8 * v4);
        }

        v52 = a1;
        v5 = __OFADD__(v4++, 1);
        if (v5)
        {
          goto LABEL_45;
        }

        v6 = sub_10007B758(v2[5]);
        v7 = -1 << *(v2 + 32);
        v8 = v6 & ~v7;
        v9 = v8 >> 6;
        v10 = 1 << v8;
        if (((1 << v8) & v53[v8 >> 6]) != 0)
        {
          break;
        }

LABEL_6:

        if (v4 == v3)
        {
          goto LABEL_40;
        }
      }

      v11 = ~v7;
      type metadata accessor for MessageID(0);
      while (1)
      {
        v12 = *(v2[6] + 8 * v8);
        v13 = sub_10007B768();

        if (v13)
        {
          break;
        }

        v8 = (v8 + 1) & v11;
        v9 = v8 >> 6;
        v10 = 1 << v8;
        if (((1 << v8) & v53[v8 >> 6]) == 0)
        {
          goto LABEL_6;
        }
      }

      v54[1] = v4;

      v16 = *(v2 + 32);
      v17 = v16 & 0x3F;
      v18 = ((1 << v16) + 63) >> 6;
      v43 = v18;
      if (v17 <= 0xD)
      {
LABEL_19:
        v44 = &v42;
        __chkstk_darwin(v14, v15);
        v20 = &v42 - ((v19 + 15) & 0x3FFFFFFFFFFFFFF0);
        a1 = memcpy(v20, v53, v19);
        v21 = v2[2];
        v22 = *&v20[8 * v9] & ~v10;
        v48 = v20;
        *&v20[8 * v9] = v22;
        v46 = v21 - 1;
        if (v45)
        {
          a1 = sub_10007BA18();
          v52 = a1;
        }

        else
        {
          v52 = *(v49 + 16);
        }

        while (1)
        {
          if (v4 == v52)
          {
            v2 = sub_10003AE40(v48, v43, v46, v2);
            goto LABEL_40;
          }

          if (v51)
          {
            a1 = sub_10007B898();
          }

          else
          {
            if ((v4 & 0x8000000000000000) != 0)
            {
              goto LABEL_43;
            }

            if (v4 >= *(v49 + 16))
            {
              goto LABEL_44;
            }

            a1 = *(v47 + 8 * v4);
          }

          v23 = a1;
          v5 = __OFADD__(v4++, 1);
          if (v5)
          {
            break;
          }

          v24 = sub_10007B758(v2[5]);
          v25 = v2;
          v26 = -1 << *(v2 + 32);
          v27 = v24 & ~v26;
          v28 = v27 >> 6;
          v29 = 1 << v27;
          if (((1 << v27) & v53[v27 >> 6]) != 0)
          {
            v30 = ~v26;
            while (1)
            {
              v31 = *(v25[6] + 8 * v27);
              v32 = sub_10007B768();

              if (v32)
              {
                break;
              }

              v27 = (v27 + 1) & v30;
              v28 = v27 >> 6;
              v29 = 1 << v27;
              if (((1 << v27) & v53[v27 >> 6]) == 0)
              {
                goto LABEL_22;
              }
            }

            v33 = v48[v28];
            v48[v28] = v33 & ~v29;
            v2 = v25;
            if ((v33 & v29) != 0)
            {
              v34 = v46 - 1;
              if (__OFSUB__(v46, 1))
              {
                __break(1u);
              }

              --v46;
              if (!v34)
              {

                v2 = &_swiftEmptySetSingleton;
                goto LABEL_40;
              }
            }
          }

          else
          {
LABEL_22:

            v2 = v25;
          }
        }

        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
LABEL_46:
        __break(1u);
        goto LABEL_47;
      }

      v37 = 8 * v18;

      v38 = v2;
      v39 = v37;
      if (swift_stdlib_isStackAllocationSafe())
      {

        v2 = v38;
        goto LABEL_19;
      }

      v40 = swift_slowAlloc();
      memcpy(v40, v53, v39);
      sub_10003AC10(v40, v43, v38, v8, v54);
      v2 = v41;
    }

LABEL_40:
  }

  else
  {

    return &_swiftEmptySetSingleton;
  }

  return v2;
}

void sub_10003AC10(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t *a5)
{
  v5 = a5;
  v7 = *(a3 + 16);
  *(a1 + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v29 = a3 + 56;
  while (2)
  {
    v26 = v8;
    do
    {
      while (1)
      {
        if (*v5 >> 62)
        {
          v9 = sub_10007BA18();
        }

        else
        {
          v9 = *((*v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v10 = v5[1];
        if (v10 == v9)
        {

          sub_10003AE40(a1, a2, v26, a3);
          return;
        }

        v11 = *v5;
        if ((*v5 & 0xC000000000000001) != 0)
        {
          v12 = sub_10007B898();
        }

        else
        {
          if ((v10 & 0x8000000000000000) != 0)
          {
            __break(1u);
LABEL_26:
            __break(1u);
LABEL_27:
            __break(1u);
LABEL_28:
            __break(1u);
            return;
          }

          if (v10 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_27;
          }

          v12 = *(v11 + 8 * v10 + 32);
        }

        v13 = v12;
        if (__OFADD__(v10, 1))
        {
          goto LABEL_26;
        }

        v5[1] = v10 + 1;
        v14 = sub_10007B758(*(a3 + 40));
        v15 = -1 << *(a3 + 32);
        v16 = v14 & ~v15;
        v17 = v16 >> 6;
        v18 = 1 << v16;
        if (((1 << v16) & *(v29 + 8 * (v16 >> 6))) != 0)
        {
          break;
        }

LABEL_3:

        v5 = a5;
      }

      type metadata accessor for MessageID(0);
      v19 = *(*(a3 + 48) + 8 * v16);
      v20 = sub_10007B768();

      if ((v20 & 1) == 0)
      {
        v21 = ~v15;
        do
        {
          v16 = (v16 + 1) & v21;
          v17 = v16 >> 6;
          v18 = 1 << v16;
          if (((1 << v16) & *(v29 + 8 * (v16 >> 6))) == 0)
          {
            goto LABEL_3;
          }

          v22 = *(*(a3 + 48) + 8 * v16);
          v23 = sub_10007B768();
        }

        while ((v23 & 1) == 0);
      }

      v5 = a5;

      v24 = a1[v17];
      a1[v17] = v24 & ~v18;
    }

    while ((v24 & v18) == 0);
    v8 = v26 - 1;
    if (__OFSUB__(v26, 1))
    {
      goto LABEL_28;
    }

    if (v26 != 1)
    {
      continue;
    }

    break;
  }
}

uint64_t sub_10003AE40(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = &_swiftEmptySetSingleton;
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  sub_100030744(&qword_1000C52F0);
  result = sub_10007B868();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = v9[5];
    v17 = *(*(v4 + 48) + 8 * (v13 | (v11 << 6)));
    result = sub_10007B758(v16);
    v18 = -1 << *(v9 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
    {
      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v12 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v21 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
    *(v9[6] + 8 * v21) = v17;
    ++v9[2];
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

id sub_10003B034@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  *a2 = v2;
  return v2;
}

void sub_10003B04C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, id *))
{
  v4 = a1;
  if (!a2)
  {
    v6 = _swiftEmptyArrayStorage;
    v11 = 0;
    goto LABEL_31;
  }

  if (a2 <= 0)
  {
    v6 = _swiftEmptyArrayStorage;
    v9 = _swiftEmptyArrayStorage[3];
    if (a1)
    {
      goto LABEL_6;
    }
  }

  else
  {
    sub_100030744(&unk_1000C59F0);
    v6 = swift_allocObject();
    v7 = j__malloc_size(v6);
    v8 = v7 - 32;
    if (v7 < 32)
    {
      v8 = v7 - 25;
    }

    v9 = (2 * (v8 >> 3)) | 1;
    v6[2] = a2;
    v6[3] = v9;
    if (v4)
    {
LABEL_6:
      if ((a2 & 0x8000000000000000) == 0)
      {
        v10 = v4 + 16 * a2;
        if (v4)
        {
          goto LABEL_8;
        }

LABEL_38:
        __break(1u);
LABEL_39:
        __break(1u);
LABEL_40:
        __break(1u);
      }

LABEL_41:
      __break(1u);
      goto LABEL_42;
    }
  }

  if (a2 < 0)
  {
    goto LABEL_41;
  }

  v10 = 0;
  if (!v4)
  {
    goto LABEL_38;
  }

LABEL_8:
  v11 = (v9 >> 1) - a2;
  v12 = a2 - 1;
  v13 = v6 + 5;
  if (v4 == v10)
  {
LABEL_11:
    __break(1u);
  }

  else
  {
    while (1)
    {
      v14 = *(v4 + 8);
      v36 = *v4;
      v37 = v14;
      v15 = v36;
      swift_unknownObjectRetain();
      a3(&v35, &v36);
      swift_unknownObjectRelease();

      *(v13 - 1) = v35;
      if (!v12)
      {
        break;
      }

      --v12;
      ++v13;
      v4 += 16;
      if (v4 == v10)
      {
        goto LABEL_11;
      }
    }
  }

  v16 = v4 + 16;
  if (v16 != v10)
  {
    v34 = a3;
    do
    {
      v17 = *(v16 + 8);
      v36 = *v16;
      v37 = v17;
      v18 = v36;
      swift_unknownObjectRetain();
      v34(&v35, &v36);
      swift_unknownObjectRelease();

      v19 = v35;
      if (!v11)
      {
        v20 = v6[3];
        if (((v20 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_40;
        }

        v21 = v20 & 0xFFFFFFFFFFFFFFFELL;
        if (v21 <= 1)
        {
          v22 = 1;
        }

        else
        {
          v22 = v21;
        }

        sub_100030744(&unk_1000C59F0);
        v23 = swift_allocObject();
        v24 = j__malloc_size(v23);
        v25 = v24 - 32;
        if (v24 < 32)
        {
          v25 = v24 - 25;
        }

        v26 = v25 >> 3;
        v23[2] = v22;
        v23[3] = (2 * (v25 >> 3)) | 1;
        v27 = (v23 + 4);
        v28 = v6[3] >> 1;
        if (v6[2])
        {
          v29 = v6 + 4;
          if (v23 != v6 || v27 >= v29 + 8 * v28)
          {
            memmove(v23 + 4, v29, 8 * v28);
          }

          v6[2] = 0;
        }

        v13 = (v27 + 8 * v28);
        v11 = (v26 & 0x7FFFFFFFFFFFFFFFLL) - v28;

        v6 = v23;
      }

      v30 = __OFSUB__(v11--, 1);
      if (v30)
      {
        goto LABEL_39;
      }

      v16 += 16;
      *v13++ = v19;
    }

    while (v16 != v10);
  }

LABEL_31:
  v31 = v6[3];
  if (v31 < 2)
  {
    return;
  }

  v32 = v31 >> 1;
  v30 = __OFSUB__(v32, v11);
  v33 = v32 - v11;
  if (v30)
  {
LABEL_42:
    __break(1u);
    return;
  }

  v6[2] = v33;
}

void sub_10003B304(uint64_t a1)
{
  v21 = 0;
  v22 = sub_100039164(_swiftEmptyArrayStorage, sub_100071AB4);
  sub_100039164(_swiftEmptyArrayStorage, sub_100071918);
  v2 = *(a1 + 16);
  sub_100039680(v2, 0);
  sub_10007B8E8();
  v20 = v2;
  if (!v2)
  {
    return;
  }

  v3 = 0;
  while (1)
  {
    v7 = *(a1 + 32 + 16 * v3);
    v8 = (v22 + 4);
    v9 = v22[2];
    if (!v21)
    {
      break;
    }

    v10 = v7;
    swift_unknownObjectRetain();

    sub_100053958(v10, v8, v9, (v21 + 16));
    LOBYTE(v10) = v11;

    if ((v10 & 1) == 0)
    {
      goto LABEL_27;
    }

LABEL_15:
    v15 = v7;
    sub_10007B8C8();
    sub_10007B8F8();
    sub_10007B908();
    sub_10007B8D8();
    v16 = v22[2];
    if (v21)
    {
      swift_beginAccess();
      if (sub_10007B018() >= v16)
      {
        v18 = v21;
        if ((swift_isUniquelyReferenced_native() & 1) == 0)
        {
          v19 = sub_10007B038();

          v21 = v19;
          v18 = v19;
        }

        if (!v18)
        {
          goto LABEL_28;
        }

        sub_10007AFD8();
      }

      else
      {
        v17 = *(v21 + 24) & 0x3FLL;
        if (v16 > 0xF || v17)
        {
          goto LABEL_3;
        }

        v21 = 0;
      }
    }

    else if (v16 > 0xF)
    {
      v17 = 0;
LABEL_3:
      v4 = sub_10007B048();
      if (v17 <= v4)
      {
        v5 = v4;
      }

      else
      {
        v5 = v17;
      }

      v6 = sub_1000394A4(v22, v5, 0, v17);

      v21 = v6;
    }

    ++v3;
    swift_unknownObjectRetain();
    sub_10007B8C8();
    sub_10007B8F8();
    sub_10007B908();
    sub_10007B8D8();
    swift_unknownObjectRelease();

    if (v3 == v20)
    {
      return;
    }
  }

  v12 = v7;
  swift_unknownObjectRetain();
  if (!v9)
  {
    goto LABEL_15;
  }

  type metadata accessor for MessageID(0);
  while (1)
  {
    v13 = *v8;
    v14 = sub_10007B768();

    if (v14)
    {
      break;
    }

    ++v8;
    if (!--v9)
    {
      goto LABEL_15;
    }
  }

LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
  __break(1u);
}

uint64_t sub_10003B63C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  if (v4)
  {
    sub_100030744(&qword_1000C52E0);
    v6 = swift_allocObject();
    v7 = j__malloc_size(v6);
    v8 = v7 - 32;
    if (v7 < 32)
    {
      v8 = v7 - 17;
    }

    v9 = v8 >> 4;
    v6[2] = v4;
    v6[3] = 2 * v9;
    v10 = *(a1 + 16);
    if (v10)
    {
      v11 = (a1 + 32);
      v12 = (a2 + 32);
      v2 = (v9 & 0x7FFFFFFFFFFFFFFFLL) - v4;
      v13 = v4 - 1;
      v14 = 4;
      while (1)
      {
        v15 = &v6[v14];
        v9 = *v11;
        v16 = *v12;
        *v15 = *v11;
        v15[1] = v16;
        if (!v13)
        {
          break;
        }

        v17 = v9;
        swift_unknownObjectRetain();
        v14 += 2;
        ++v11;
        ++v12;
        --v13;
        if (!--v10)
        {
          goto LABEL_8;
        }
      }
    }

    else
    {
LABEL_8:
      __break(1u);
    }

    v18 = v9;
    swift_unknownObjectRetain();
  }

  else
  {
    v2 = 0;
    v6 = _swiftEmptyArrayStorage;
  }

  v20 = v6[3];
  if (v20 < 2)
  {
    return v6;
  }

  v21 = v20 >> 1;
  v22 = __OFSUB__(v21, v2);
  v23 = v21 - v2;
  if (!v22)
  {
    v6[2] = v23;
    return v6;
  }

  __break(1u);
  return result;
}

void sub_10003B774(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(void **, uint64_t *, void **, uint64_t *))
{
  v6 = v5;
  v7 = a3;
  v8 = a3[1];
  if (v8 < 1)
  {
    v11 = _swiftEmptyArrayStorage;
LABEL_90:
    v10 = *a1;
    if (*a1)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_121;
      }

      goto LABEL_92;
    }

    goto LABEL_130;
  }

  v9 = a4;
  v10 = 0;
  v11 = _swiftEmptyArrayStorage;
  while (1)
  {
    v12 = v10;
    if (v10 + 1 >= v8)
    {
      v25 = v10 + 1;
    }

    else
    {
      v109 = v8;
      v13 = *v7;
      v14 = *v7 + 16 * (v10 + 1);
      v15 = *v14;
      v16 = *(v14 + 8);
      v17 = v13 + 16 * v10;
      v18 = *v17;
      v19 = *(v17 + 8);
      v115 = v16;
      v116 = v15;
      v113 = v19;
      v114 = v18;
      v20 = v15;
      swift_unknownObjectRetain();
      v10 = v18;
      swift_unknownObjectRetain();
      v107 = a5(&v116, &v115, &v114, &v113);
      if (v6)
      {
LABEL_101:

        swift_unknownObjectRelease();

        swift_unknownObjectRelease();
        return;
      }

      swift_unknownObjectRelease();

      swift_unknownObjectRelease();
      v21 = v12;
      v22 = v12 + 2;
      v103 = v21;
      v23 = 16 * v21;
      v24 = (v13 + 16 * v21 + 24);
      while (1)
      {
        v25 = v109;
        if (v109 == v22)
        {
          break;
        }

        v26 = v24[1];
        v27 = *(v24 - 1);
        v28 = *v24;
        v115 = v24[2];
        v116 = v26;
        v113 = v28;
        v114 = v27;
        v29 = v26;
        swift_unknownObjectRetain();
        v10 = v27;
        swift_unknownObjectRetain();
        LODWORD(v27) = a5(&v116, &v115, &v114, &v113);
        swift_unknownObjectRelease();

        swift_unknownObjectRelease();
        ++v22;
        v24 += 2;
        if ((v107 ^ v27))
        {
          v25 = v22 - 1;
          break;
        }
      }

      v7 = a3;
      v12 = v103;
      v9 = a4;
      if (v107)
      {
        if (v25 < v103)
        {
          goto LABEL_124;
        }

        if (v103 < v25)
        {
          v30 = 16 * v25 - 16;
          v31 = v25;
          v32 = v103;
          do
          {
            if (v32 != --v31)
            {
              v33 = *a3;
              if (!*a3)
              {
                goto LABEL_128;
              }

              v34 = *(v33 + v23);
              *(v33 + v23) = *(v33 + v30);
              *(v33 + v30) = v34;
            }

            ++v32;
            v30 -= 16;
            v23 += 16;
          }

          while (v32 < v31);
        }
      }

      v6 = 0;
    }

    v35 = v7[1];
    if (v25 >= v35)
    {
      goto LABEL_29;
    }

    if (__OFSUB__(v25, v12))
    {
      goto LABEL_120;
    }

    if (v25 - v12 >= v9)
    {
      goto LABEL_29;
    }

    if (__OFADD__(v12, v9))
    {
      __break(1u);
LABEL_123:
      __break(1u);
LABEL_124:
      __break(1u);
LABEL_125:
      __break(1u);
LABEL_126:
      __break(1u);
      goto LABEL_127;
    }

    if (v12 + v9 >= v35)
    {
      v36 = v7[1];
    }

    else
    {
      v36 = v12 + v9;
    }

    if (v36 < v12)
    {
      goto LABEL_123;
    }

    if (v25 == v36)
    {
LABEL_29:
      v37 = v25;
      if (v25 < v12)
      {
        goto LABEL_119;
      }
    }

    else
    {
      v99 = v11;
      v100 = v36;
      v112 = v6;
      v85 = *v7;
      v86 = *v7 + 16 * v25 - 16;
      v104 = v12;
      v87 = v12 - v25;
      do
      {
        v108 = v86;
        v110 = v25;
        v88 = *(v85 + 16 * v25);
        v101 = v87;
        do
        {
          v89 = *v86;
          v90 = *(v86 + 8);
          v115 = *(&v88 + 1);
          v116 = v88;
          v113 = v90;
          v114 = v89;
          v20 = v88;
          swift_unknownObjectRetain();
          v10 = v89;
          swift_unknownObjectRetain();
          v91 = a5(&v116, &v115, &v114, &v113);
          if (v112)
          {
            goto LABEL_101;
          }

          v92 = v91;
          swift_unknownObjectRelease();

          swift_unknownObjectRelease();
          if ((v92 & 1) == 0)
          {
            break;
          }

          if (!v85)
          {
            goto LABEL_126;
          }

          v93 = *v86;
          v88 = *(v86 + 16);
          *v86 = v88;
          *(v86 + 16) = v93;
          v86 -= 16;
        }

        while (!__CFADD__(v87++, 1));
        v25 = v110 + 1;
        v86 = v108 + 16;
        v37 = v100;
        v87 = v101 - 1;
      }

      while (v110 + 1 != v100);
      v6 = 0;
      v7 = a3;
      v12 = v104;
      v11 = v99;
      if (v100 < v104)
      {
        goto LABEL_119;
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v11 = sub_10003A63C(0, *(v11 + 2) + 1, 1, v11);
    }

    v39 = *(v11 + 2);
    v38 = *(v11 + 3);
    v40 = v39 + 1;
    if (v39 >= v38 >> 1)
    {
      v11 = sub_10003A63C((v38 > 1), v39 + 1, 1, v11);
    }

    *(v11 + 2) = v40;
    v41 = &v11[16 * v39];
    *(v41 + 4) = v12;
    *(v41 + 5) = v37;
    v42 = *a1;
    if (!*a1)
    {
      goto LABEL_129;
    }

    v10 = v37;
    if (v39)
    {
      break;
    }

LABEL_3:
    v8 = v7[1];
    v9 = a4;
    if (v10 >= v8)
    {
      goto LABEL_90;
    }
  }

  while (1)
  {
    v43 = v40 - 1;
    if (v40 >= 4)
    {
      v48 = &v11[16 * v40 + 32];
      v49 = *(v48 - 64);
      v50 = *(v48 - 56);
      v54 = __OFSUB__(v50, v49);
      v51 = v50 - v49;
      if (v54)
      {
        goto LABEL_106;
      }

      v53 = *(v48 - 48);
      v52 = *(v48 - 40);
      v54 = __OFSUB__(v52, v53);
      v46 = v52 - v53;
      v47 = v54;
      if (v54)
      {
        goto LABEL_107;
      }

      v55 = &v11[16 * v40];
      v57 = *v55;
      v56 = *(v55 + 1);
      v54 = __OFSUB__(v56, v57);
      v58 = v56 - v57;
      if (v54)
      {
        goto LABEL_109;
      }

      v54 = __OFADD__(v46, v58);
      v59 = v46 + v58;
      if (v54)
      {
        goto LABEL_112;
      }

      if (v59 >= v51)
      {
        v77 = &v11[16 * v43 + 32];
        v79 = *v77;
        v78 = *(v77 + 1);
        v54 = __OFSUB__(v78, v79);
        v80 = v78 - v79;
        if (v54)
        {
          goto LABEL_118;
        }

        if (v46 < v80)
        {
          v43 = v40 - 2;
        }

        goto LABEL_70;
      }

      goto LABEL_49;
    }

    if (v40 == 3)
    {
      v44 = *(v11 + 4);
      v45 = *(v11 + 5);
      v54 = __OFSUB__(v45, v44);
      v46 = v45 - v44;
      v47 = v54;
LABEL_49:
      if (v47)
      {
        goto LABEL_108;
      }

      v60 = &v11[16 * v40];
      v62 = *v60;
      v61 = *(v60 + 1);
      v63 = __OFSUB__(v61, v62);
      v64 = v61 - v62;
      v65 = v63;
      if (v63)
      {
        goto LABEL_111;
      }

      v66 = &v11[16 * v43 + 32];
      v68 = *v66;
      v67 = *(v66 + 1);
      v54 = __OFSUB__(v67, v68);
      v69 = v67 - v68;
      if (v54)
      {
        goto LABEL_114;
      }

      if (__OFADD__(v64, v69))
      {
        goto LABEL_115;
      }

      if (v64 + v69 >= v46)
      {
        if (v46 < v69)
        {
          v43 = v40 - 2;
        }

        goto LABEL_70;
      }

      goto LABEL_63;
    }

    v70 = &v11[16 * v40];
    v72 = *v70;
    v71 = *(v70 + 1);
    v54 = __OFSUB__(v71, v72);
    v64 = v71 - v72;
    v65 = v54;
LABEL_63:
    if (v65)
    {
      goto LABEL_110;
    }

    v73 = &v11[16 * v43];
    v75 = *(v73 + 4);
    v74 = *(v73 + 5);
    v54 = __OFSUB__(v74, v75);
    v76 = v74 - v75;
    if (v54)
    {
      goto LABEL_113;
    }

    if (v76 < v64)
    {
      goto LABEL_3;
    }

LABEL_70:
    v81 = v43 - 1;
    if (v43 - 1 >= v40)
    {
      break;
    }

    if (!*v7)
    {
      goto LABEL_125;
    }

    v82 = *&v11[16 * v81 + 32];
    v83 = *&v11[16 * v43 + 40];
    sub_10003A138((*v7 + 16 * v82), (*v7 + 16 * *&v11[16 * v43 + 32]), (*v7 + 16 * v83), v42, a5);
    if (v6)
    {
      goto LABEL_100;
    }

    if (v83 < v82)
    {
      goto LABEL_104;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v11 = sub_10003A628(v11);
    }

    if (v81 >= *(v11 + 2))
    {
      goto LABEL_105;
    }

    v84 = &v11[16 * v81];
    *(v84 + 4) = v82;
    *(v84 + 5) = v83;
    v117 = v11;
    sub_10003A59C(v43);
    v11 = v117;
    v40 = *(v117 + 2);
    if (v40 <= 1)
    {
      goto LABEL_3;
    }
  }

  __break(1u);
LABEL_104:
  __break(1u);
LABEL_105:
  __break(1u);
LABEL_106:
  __break(1u);
LABEL_107:
  __break(1u);
LABEL_108:
  __break(1u);
LABEL_109:
  __break(1u);
LABEL_110:
  __break(1u);
LABEL_111:
  __break(1u);
LABEL_112:
  __break(1u);
LABEL_113:
  __break(1u);
LABEL_114:
  __break(1u);
LABEL_115:
  __break(1u);
LABEL_116:
  __break(1u);
LABEL_117:
  __break(1u);
LABEL_118:
  __break(1u);
LABEL_119:
  __break(1u);
LABEL_120:
  __break(1u);
LABEL_121:
  v11 = sub_10003A628(v11);
LABEL_92:
  v117 = v11;
  v95 = *(v11 + 2);
  if (v95 < 2)
  {
LABEL_100:
  }

  else
  {
    while (*v7)
    {
      v96 = *&v11[16 * v95];
      v97 = *&v11[16 * v95 + 24];
      sub_10003A138((*v7 + 16 * v96), (*v7 + 16 * *&v11[16 * v95 + 16]), (*v7 + 16 * v97), v10, a5);
      if (v6)
      {
        goto LABEL_100;
      }

      if (v97 < v96)
      {
        goto LABEL_116;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v11 = sub_10003A628(v11);
      }

      if (v95 - 2 >= *(v11 + 2))
      {
        goto LABEL_117;
      }

      v98 = &v11[16 * v95];
      *v98 = v96;
      *(v98 + 1) = v97;
      v117 = v11;
      sub_10003A59C(v95 - 1);
      v11 = v117;
      v95 = *(v117 + 2);
      if (v95 <= 1)
      {
        goto LABEL_100;
      }
    }

LABEL_127:
    __break(1u);
LABEL_128:
    __break(1u);
LABEL_129:
    __break(1u);
LABEL_130:
    __break(1u);
  }
}

void sub_10003BEE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t (*a5)(uint64_t *, uint64_t *, void **, uint64_t *))
{
  v6 = v5;
  if (a3 != a2)
  {
    v7 = *a4;
    v8 = *a4 + 16 * a3 - 16;
    v9 = a1 - a3;
LABEL_3:
    v20 = v8;
    v21 = a3;
    v10 = *(v7 + 16 * a3);
    v19 = v9;
    while (1)
    {
      v11 = *v8;
      v12 = *(v8 + 8);
      v26 = *(&v10 + 1);
      v27 = v10;
      v24 = v12;
      v25 = v11;
      v23 = v10;
      swift_unknownObjectRetain();
      v13 = v11;
      swift_unknownObjectRetain();
      v14 = v6;
      v15 = a5(&v27, &v26, &v25, &v24);
      swift_unknownObjectRelease();

      swift_unknownObjectRelease();
      if (v14)
      {
        break;
      }

      if ((v15 & 1) == 0)
      {
        v6 = 0;
LABEL_11:
        a3 = v21 + 1;
        v8 = v20 + 16;
        v9 = v19 - 1;
        if (v21 + 1 != a2)
        {
          goto LABEL_3;
        }

        return;
      }

      if (!v7)
      {
        __break(1u);
        return;
      }

      v16 = *v8;
      v10 = *(v8 + 16);
      *v8 = v10;
      *(v8 + 16) = v16;
      v8 -= 16;
      v17 = __CFADD__(v9++, 1);
      v6 = 0;
      if (v17)
      {
        goto LABEL_11;
      }
    }
  }
}

void sub_10003C034(uint64_t *a1, uint64_t (*a2)(void **, uint64_t *, void **, uint64_t *))
{
  v4 = a1[1];
  v5 = sub_10007BB18(v4);
  if (v5 < v4)
  {
    if (v4 >= -1)
    {
      v6 = v5;
      if (v4 <= 1)
      {
        v7 = _swiftEmptyArrayStorage;
      }

      else
      {
        sub_100030744(&qword_1000C52D0);
        v7 = sub_10007B558();
        v7[2] = v4 / 2;
      }

      v9[0] = (v7 + 4);
      v9[1] = v4 / 2;
      v8 = v7;
      sub_10003B774(v9, v10, a1, v6, a2);
      v8[2] = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v4 < 0)
  {
    goto LABEL_12;
  }

  if (v4)
  {
    sub_10003BEE4(0, v4, 1, a1, a2);
  }
}

void sub_10003C15C(void **a1, uint64_t (*a2)(void **, uint64_t *, void **, uint64_t *))
{
  v4 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = sub_100039A0C(v4);
  }

  v5 = v4[2];
  v6[0] = (v4 + 4);
  v6[1] = v5;
  sub_10003C034(v6, a2);
  *a1 = v4;
}

uint64_t sub_10003C1E4()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10003C224()
{

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_10003C288()
{
  result = qword_1000C52E8;
  if (!qword_1000C52E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C52E8);
  }

  return result;
}

uint64_t *sub_10003C2DC(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

void *sub_10003C340(unint64_t a1, char a2)
{
  LOBYTE(v5) = a2;
  v6 = a1;
  if (a1 >> 62)
  {
    goto LABEL_115;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_10007BA18())
  {
    v8 = _swiftEmptyArrayStorage;
    v106 = v6;
    v105 = v5;
    if (i)
    {
      v111[0] = _swiftEmptyArrayStorage;
      sub_100053104(0, i & ~(i >> 63), 0);
      if (i < 0)
      {
        __break(1u);
LABEL_117:
        swift_once();
        goto LABEL_63;
      }

      v2 = 0;
      v8 = v111[0];
      v9 = v6 & 0xC000000000000001;
      do
      {
        if (v9)
        {
          v5 = sub_10007B898();
        }

        else
        {
          v5 = *(v6 + 8 * v2 + 32);
          swift_unknownObjectRetain();
        }

        v10 = [v5 identifier];
        v111[0] = v8;
        v4 = v8[2];
        v11 = v8[3];
        if (v4 >= v11 >> 1)
        {
          v13 = v10;
          sub_100053104((v11 > 1), v4 + 1, 1);
          v10 = v13;
          v6 = v106;
          v8 = v111[0];
        }

        ++v2;
        v8[2] = v4 + 1;
        v12 = &v8[2 * v4];
        v12[4] = v10;
        v12[5] = v5;
      }

      while (i != v2);
    }

    v3 = sub_100064B8C(_swiftEmptyArrayStorage);
    v110 = v8[2];
    if (v110)
    {
      break;
    }

LABEL_44:
    v4 = v3 + 64;
    v45 = 1 << *(v3 + 32);
    v46 = -1;
    if (v45 < 64)
    {
      v46 = ~(-1 << v45);
    }

    v6 = v46 & *(v3 + 64);
    v47 = (v45 + 63) >> 6;
    v2 = v3;

    v48 = 0;
    v110 = 0;
    v3 = _swiftEmptyArrayStorage;
    while (v6)
    {
LABEL_52:
      v50 = (v48 << 9) | (8 * __clz(__rbit64(v6)));
      v5 = *(*(v2 + 48) + v50);
      v51 = *(*(v2 + 56) + v50);
      if (v51 >> 62)
      {
        v52 = sub_10007BA18();
      }

      else
      {
        v52 = *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v6 &= v6 - 1;
      if (v52 > 1)
      {
        v108 = v5;

        v5 = v8;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v3 = sub_10007825C(0, *(v3 + 16) + 1, 1, v3);
        }

        v54 = *(v3 + 16);
        v53 = *(v3 + 24);
        if (v54 >= v53 >> 1)
        {
          v3 = sub_10007825C((v53 > 1), v54 + 1, 1, v3);
        }

        *(v3 + 16) = v54 + 1;
        v55 = v3 + 16 * v54;
        *(v55 + 32) = v108;
        *(v55 + 40) = v51;
        v8 = v5;
      }
    }

    while (1)
    {
      v49 = v48 + 1;
      if (__OFADD__(v48, 1))
      {
        __break(1u);
        goto LABEL_109;
      }

      if (v49 >= v47)
      {
        break;
      }

      v6 = *(v4 + 8 * v49);
      ++v48;
      if (v6)
      {
        v48 = v49;
        goto LABEL_52;
      }
    }

    if (!*(v3 + 16))
    {

      if (qword_1000C4DE0 == -1)
      {
        goto LABEL_69;
      }

      goto LABEL_119;
    }

    if (qword_1000C4DE0 != -1)
    {
      goto LABEL_117;
    }

LABEL_63:
    v56 = sub_10007B338();
    sub_1000345E8(v56, qword_1000C5160);

    v57 = sub_10007B318();
    LOBYTE(v5) = sub_10007B6D8();

    if (os_log_type_enabled(v57, v5))
    {
      v107 = v5;
      v58 = swift_slowAlloc();
      v104 = swift_slowAlloc();
      v111[0] = v104;
      *v58 = 136315394;
      v59 = *(v3 + 16);
      v109 = v58;
      if (v59)
      {
        v112 = _swiftEmptyArrayStorage;
        sub_10007B8E8();
        v60 = (v3 + 32);
        v61 = v59;
        do
        {
          v62 = *v60;
          v60 += 2;
          v63 = v62;
          sub_10007B8C8();
          sub_10007B8F8();
          sub_10007B908();
          sub_10007B8D8();
          --v61;
        }

        while (v61);
        v58 = v109;
      }

      type metadata accessor for MessageID(0);
      v68 = sub_10007B538();
      v6 = v69;

      v70 = sub_100052954(v68, v6, v111);

      *(v58 + 4) = v70;
      *(v58 + 12) = 2080;
      if (v59)
      {
        v103 = v57;
        v112 = _swiftEmptyArrayStorage;
        sub_100053144(0, v59, 0);
        v71 = 40;
        v72 = v112;
        do
        {
          v73 = *(v3 + v71);
          v112 = v72;
          v75 = v72[2];
          v74 = v72[3];
          v6 = v75 + 1;

          if (v75 >= v74 >> 1)
          {
            sub_100053144((v74 > 1), v75 + 1, 1);
            v72 = v112;
          }

          v72[2] = v6;
          v72[v75 + 4] = v73;
          v71 += 16;
          --v59;
        }

        while (v59);

        v57 = v103;
        v58 = v109;
      }

      else
      {
      }

      sub_100030744(&unk_1000C5300);
      v76 = sub_10007B538();
      v78 = v77;

      v5 = sub_100052954(v76, v78, v111);

      *(v58 + 14) = v5;
      _os_log_impl(&_mh_execute_header, v57, v107, "CachedVoicemailManager.Cache.init(voicemails:) with duplicate keys: %s, voicemails: %s", v58, 0x16u);
      LOBYTE(v5) = v104;
      swift_arrayDestroy();
    }

    else
    {
    }

    v79 = 1 << *(v2 + 32);
    v80 = -1;
    if (v79 < 64)
    {
      v80 = ~(-1 << v79);
    }

    v3 = v80 & *(v2 + 64);
    v81 = (v79 + 63) >> 6;

    v82 = 0;
    v8 = _swiftEmptyArrayStorage;
    while (v3)
    {
LABEL_89:
      v84 = (v82 << 9) | (8 * __clz(__rbit64(v3)));
      v6 = *(*(v2 + 48) + v84);
      v85 = *(*(v2 + 56) + v84);
      if (v85 >> 62)
      {
        v86 = sub_10007BA18();
      }

      else
      {
        v86 = *((v85 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v3 &= v3 - 1;
      if (v86)
      {
        if ((v85 & 0xC000000000000001) != 0)
        {
          v92 = v6;

          v87 = sub_10007B898();
        }

        else
        {
          if (!*((v85 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_121;
          }

          v87 = *(v85 + 32);
          v88 = v6;
          swift_unknownObjectRetain();
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_100078128(0, v8[2] + 1, 1, v8);
        }

        v90 = v8[2];
        v89 = v8[3];
        v5 = v90 + 1;
        if (v90 >= v89 >> 1)
        {
          v8 = sub_100078128((v89 > 1), v90 + 1, 1, v8);
        }

        v8[2] = v5;
        v91 = &v8[2 * v90];
        v91[4] = v6;
        v91[5] = v87;
      }
    }

    while (1)
    {
      v83 = v82 + 1;
      if (__OFADD__(v82, 1))
      {
        break;
      }

      if (v83 >= v81)
      {

        while (1)
        {
          sub_10003B304(v8);
          v94 = v93;
          v96 = v95;
          v98 = v97;

          type metadata accessor for CachedVoicemailManager.Cache();
          result = swift_allocObject();
          result[2] = v94;
          v100 = result + 2;
          result[3] = v96;
          result[4] = v98;
          if ((v105 & 1) == 0)
          {
            return result;
          }

          v101 = result;
          swift_beginAccess();
          v112 = sub_10003B63C(v96, v98);
          sub_10003C15C(&v112, sub_1000359E4);
          if (v110)
          {
            goto LABEL_122;
          }

          v102 = v112[2];
          if (v102 == *(v98 + 16))
          {
            sub_10003A058((v112 + 4), v102, v100);

            swift_endAccess();
            return v101;
          }

          __break(1u);
LABEL_119:
          swift_once();
LABEL_69:
          v64 = sub_10007B338();
          sub_1000345E8(v64, qword_1000C5160);
          v65 = sub_10007B318();
          v66 = sub_10007B6E8();
          if (os_log_type_enabled(v65, v66))
          {
            v67 = swift_slowAlloc();
            *v67 = 0;
            _os_log_impl(&_mh_execute_header, v65, v66, "CachedVoicemailManager.Cache.init(voicemails:) without duplicate keys", v67, 2u);
          }
        }
      }

      v3 = *(v4 + 8 * v83);
      ++v82;
      if (v3)
      {
        v82 = v83;
        goto LABEL_89;
      }
    }

LABEL_110:
    __break(1u);
LABEL_111:
    __break(1u);
LABEL_112:
    __break(1u);
LABEL_113:
    __break(1u);
LABEL_114:
    __break(1u);
LABEL_115:
    ;
  }

  v14 = 0;
  v15 = v8 + 5;
  while (1)
  {
    if (v14 >= v8[2])
    {
LABEL_109:
      __break(1u);
      goto LABEL_110;
    }

    v4 = *v15;
    v17 = *(v3 + 16);
    v5 = *(v15 - 1);
    swift_unknownObjectRetain_n();
    v18 = v5;
    v6 = v18;
    if (v17)
    {
      v19 = sub_100060468(v18);
      if (v20)
      {
        v5 = *(*(v3 + 56) + 8 * v19);
        v111[0] = v5;
        swift_unknownObjectRetain();

        sub_10007B508();
        v2 = v3;
        if (*((v111[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v111[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v5 = *((v111[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_10007B548();
        }

        sub_10007B568();
        v3 = v111[0];
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v112 = v2;
        v22 = sub_100060468(v6);
        v24 = *(v2 + 16);
        v25 = (v23 & 1) == 0;
        v26 = __OFADD__(v24, v25);
        v27 = v24 + v25;
        if (v26)
        {
          goto LABEL_113;
        }

        LOBYTE(v5) = v23;
        if (*(v2 + 24) >= v27)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v42 = v22;
            sub_100062674();
            v22 = v42;
            v40 = v112;
            if (v5)
            {
              goto LABEL_37;
            }

            goto LABEL_41;
          }
        }

        else
        {
          sub_100060E9C(v27, isUniquelyReferenced_nonNull_native);
          v22 = sub_100060468(v6);
          if ((v5 & 1) != (v28 & 1))
          {
            goto LABEL_121;
          }
        }

        v40 = v112;
        if (v5)
        {
LABEL_37:
          v41 = v40[7];
          v5 = *(v41 + 8 * v22);
          *(v41 + 8 * v22) = v3;
          swift_unknownObjectRelease();

          v3 = v40;
LABEL_43:
          swift_unknownObjectRelease();
          goto LABEL_16;
        }

LABEL_41:
        v40[(v22 >> 6) + 8] |= 1 << v22;
        *(v40[6] + 8 * v22) = v6;
        *(v40[7] + 8 * v22) = v3;
        v43 = v40[2];
        v26 = __OFADD__(v43, 1);
        v44 = v43 + 1;
        if (v26)
        {
          goto LABEL_114;
        }

        v3 = v40;
        v40[2] = v44;

        swift_unknownObjectRelease();
        goto LABEL_43;
      }
    }

    v2 = v8;
    sub_100030744(&unk_1000C59F0);
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_1000A1780;
    *(v29 + 32) = v4;
    v30 = v3;
    v3 = swift_isUniquelyReferenced_nonNull_native();
    v111[0] = v30;
    v32 = sub_100060468(v6);
    v33 = *(v30 + 16);
    v34 = (v31 & 1) == 0;
    v35 = v33 + v34;
    if (__OFADD__(v33, v34))
    {
      goto LABEL_111;
    }

    LOBYTE(v5) = v31;
    if (*(v30 + 24) < v35)
    {
      break;
    }

    if (v3)
    {
      v3 = v111[0];
      if ((v31 & 1) == 0)
      {
        goto LABEL_33;
      }
    }

    else
    {
      sub_100062674();
      v3 = v111[0];
      if ((v5 & 1) == 0)
      {
LABEL_33:
        *(v3 + 8 * (v32 >> 6) + 64) |= 1 << v32;
        *(*(v3 + 48) + 8 * v32) = v6;
        *(*(v3 + 56) + 8 * v32) = v29;
        v38 = *(v3 + 16);
        v26 = __OFADD__(v38, 1);
        v39 = v38 + 1;
        if (v26)
        {
          goto LABEL_112;
        }

        *(v3 + 16) = v39;
        swift_unknownObjectRelease();

        goto LABEL_15;
      }
    }

LABEL_14:
    v16 = *(v3 + 56);
    v5 = *(v16 + 8 * v32);
    *(v16 + 8 * v32) = v29;
    swift_unknownObjectRelease();

LABEL_15:
    v8 = v2;
LABEL_16:
    ++v14;
    v15 += 2;
    if (v110 == v14)
    {
      goto LABEL_44;
    }
  }

  sub_100060E9C(v35, v3);
  v36 = sub_100060468(v6);
  if ((v5 & 1) == (v37 & 1))
  {
    v32 = v36;
    v3 = v111[0];
    if ((v5 & 1) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_14;
  }

LABEL_121:
  type metadata accessor for MessageID(0);
  sub_10007BB68();
  __break(1u);
LABEL_122:

  __break(1u);
  return result;
}

void sub_10003CF8C(unint64_t a1, uint64_t a2, void *a3)
{
  if (a1 >> 62)
  {
    goto LABEL_25;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_10007BA18())
  {
    v5 = 0;
    v24 = i;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v6 = sub_10007B898();
      }

      else
      {
        if (v5 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_24;
        }

        v6 = *(a1 + 32 + 8 * v5);
      }

      v7 = v6;
      if (__OFADD__(v5++, 1))
      {
        break;
      }

      swift_beginAccess();
      v10 = *(a2 + 16);
      v9 = *(a2 + 24);
      v11 = v9 + 32;
      v12 = *(v9 + 16);
      if (v10)
      {

        v13 = sub_100053958(v7, v11, v12, (v10 + 16));
        v15 = v14;
        v17 = v16;

        if ((v15 & 1) == 0)
        {
          goto LABEL_19;
        }
      }

      else if (v12)
      {
        type metadata accessor for MessageID(0);
        v13 = 0;
        while (1)
        {
          v18 = *(v11 + 8 * v13);
          v19 = sub_10007B768();

          if (v19)
          {
            break;
          }

          if (v12 == ++v13)
          {
            goto LABEL_4;
          }
        }

        v17 = 0;
LABEL_19:
        sub_100039820(v13, v17);

        sub_100039980(v13);
        swift_endAccess();
        swift_unknownObjectRelease();
        v21 = v7;
        sub_10007B508();
        if (*((*a3 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_10007B548();
        }

        sub_10007B568();
        goto LABEL_5;
      }

LABEL_4:
      swift_endAccess();
LABEL_5:

      if (v5 == v24)
      {
        return;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    ;
  }
}

unint64_t sub_10003D1C8()
{
  result = qword_1000C52F8;
  if (!qword_1000C52F8)
  {
    type metadata accessor for VoicemailActor();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C52F8);
  }

  return result;
}

uint64_t sub_10003D220()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10003D258()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10003D298(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10003124C;

  return sub_1000370B8(a1, v4, v5, v6);
}

uint64_t sub_10003D34C()
{
  _Block_release(*(v0 + 24));

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10003D394()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100031874;

  return sub_100038228(v2, v3, v4);
}

uint64_t sub_10003D44C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100031874;

  return sub_100052390(a1, v4, v5, v6);
}

uint64_t sub_10003D518()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10003D558()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100031874;

  return sub_1000379A4(v2, v3);
}

uint64_t sub_10003D604()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100031874;

  return sub_1000522A8(v2, v3, v4);
}

uint64_t sub_10003D6C4()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10003D704(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_10003D71C(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 8))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10003D770(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void *sub_10003D7D0(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

char *sub_10003D828(void *a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v8 = OBJC_IVAR____TtC9IntentsUI22VisualVoicemailManager_messagesChangedPublisher;
  sub_100030744(&unk_1000C5350);
  swift_allocObject();
  *&v3[v8] = sub_10007B3C8();
  *&v3[OBJC_IVAR____TtC9IntentsUI22VisualVoicemailManager_visualVoicemailManager] = a1;
  v9 = &v3[OBJC_IVAR____TtC9IntentsUI22VisualVoicemailManager_onVoicemailsChanged];
  *v9 = a2;
  *(v9 + 1) = a3;
  v15.receiver = v3;
  v15.super_class = ObjectType;
  v10 = a1;

  v11 = objc_msgSendSuper2(&v15, "init");
  v12 = *&v11[OBJC_IVAR____TtC9IntentsUI22VisualVoicemailManager_visualVoicemailManager];
  v13 = v11;
  [v12 setDelegate:{v13, v15.receiver, v15.super_class}];

  return v13;
}