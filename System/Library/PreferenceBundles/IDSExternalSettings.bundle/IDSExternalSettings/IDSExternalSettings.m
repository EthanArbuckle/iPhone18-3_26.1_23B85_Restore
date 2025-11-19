const __CFString *sub_DE8()
{
  CFPreferencesAppSynchronize(@"com.apple.ids");
  v0 = CFPreferencesCopyAppValue(@"custom-ids-bag-url", @"com.apple.ids");
  if (!v0)
  {
    return @"none";
  }

  CFRelease(v0);
  return @"Custom";
}

id sub_E40(void *a1)
{
  IDSLog();
  if ([a1 isEqualToString:{@"Custom", a1}])
  {
    v2 = IMUserNotificationTitleKey;
    v3 = IMUserNotificationMessageKey;
    v4 = [NSArray arrayWithObject:&stru_8438];
    v5 = IMUserNotificationTextFieldValuesKey;
    v6 = [NSArray arrayWithObject:&stru_8438];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1040;
    v9[3] = &unk_8298;
    return [+[IMUserNotificationCenter sharedInstance](IMUserNotificationCenter addUserNotification:"addUserNotification:listener:completionHandler:" listener:[IMUserNotification completionHandler:"userNotificationWithIdentifier:timeout:alertLevel:displayFlags:displayInformation:" userNotificationWithIdentifier:3 timeout:0 alertLevel:[NSDictionary dictionaryWithObjectsAndKeys:@"Bag fetch URL" displayFlags:v2 displayInformation:@"Please type in URL", v3, v4, v5, v6, IMUserNotificationTextFieldTitlesKey, @"OK", IMUserNotificationDefaultButtonTitleKey, @"Cancel", IMUserNotificationAlternateButtonTitleKey, 0, 0], 0.0], 0, v9];
  }

  else
  {
    CFPreferencesSetAppValue(@"custom-ids-bag-url", 0, @"com.apple.ids");

    return CFPreferencesAppSynchronize(@"com.apple.ids");
  }
}

uint64_t sub_1040(uint64_t a1, void *a2)
{
  result = [a2 response];
  if (!result)
  {
    v4 = [*(a1 + 32) responseInformation];
    v5 = [v4 objectForKey:IMUserNotificationTextFieldValuesKey];
    objc_opt_class();
    result = objc_opt_isKindOfClass();
    if (result)
    {
      result = [v5 length];
      if (result)
      {
        CFPreferencesSetAppValue(@"custom-ids-bag-url", v5, @"com.apple.ids");

        return CFPreferencesAppSynchronize(@"com.apple.ids");
      }
    }
  }

  return result;
}

const __CFString *sub_10EC()
{
  CFPreferencesAppSynchronize(@"com.apple.ids");
  v0 = CFPreferencesCopyAppValue(@"custom-sps-bag-url", @"com.apple.ids");
  if (!v0)
  {
    return @"none";
  }

  CFRelease(v0);
  return @"Custom";
}

id sub_1144(void *a1)
{
  IDSLog();
  if ([a1 isEqualToString:{@"Custom", a1}])
  {
    v2 = IMUserNotificationTitleKey;
    v3 = IMUserNotificationMessageKey;
    v4 = [NSArray arrayWithObject:&stru_8438];
    v5 = IMUserNotificationTextFieldValuesKey;
    v6 = [NSArray arrayWithObject:&stru_8438];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1344;
    v9[3] = &unk_8298;
    return [+[IMUserNotificationCenter sharedInstance](IMUserNotificationCenter addUserNotification:"addUserNotification:listener:completionHandler:" listener:[IMUserNotification completionHandler:"userNotificationWithIdentifier:timeout:alertLevel:displayFlags:displayInformation:" userNotificationWithIdentifier:3 timeout:0 alertLevel:[NSDictionary dictionaryWithObjectsAndKeys:@"Bag fetch URL" displayFlags:v2 displayInformation:@"Please type in URL", v3, v4, v5, v6, IMUserNotificationTextFieldTitlesKey, @"OK", IMUserNotificationDefaultButtonTitleKey, @"Cancel", IMUserNotificationAlternateButtonTitleKey, 0, 0], 0.0], 0, v9];
  }

  else
  {
    CFPreferencesSetAppValue(@"custom-sps-bag-url", 0, @"com.apple.ids");

    return CFPreferencesAppSynchronize(@"com.apple.ids");
  }
}

uint64_t sub_1344(uint64_t a1, void *a2)
{
  result = [a2 response];
  if (!result)
  {
    v4 = [*(a1 + 32) responseInformation];
    v5 = [v4 objectForKey:IMUserNotificationTextFieldValuesKey];
    objc_opt_class();
    result = objc_opt_isKindOfClass();
    if (result)
    {
      result = [v5 length];
      if (result)
      {
        CFPreferencesSetAppValue(@"custom-sps-bag-url", v5, @"com.apple.ids");

        return CFPreferencesAppSynchronize(@"com.apple.ids");
      }
    }
  }

  return result;
}

const __CFString *sub_13F0()
{
  CFPreferencesAppSynchronize(@"com.apple.ids");
  v0 = CFPreferencesCopyAppValue(@"testOptionsHeader", @"com.apple.ids");
  if (!v0)
  {
    return @"none";
  }

  CFRelease(v0);
  return @"Custom";
}

id sub_1448(void *a1)
{
  if ([a1 isEqualToString:@"Custom"])
  {
    v1 = IMUserNotificationTitleKey;
    v2 = IMUserNotificationMessageKey;
    v3 = [NSArray arrayWithObject:&stru_8438];
    v4 = IMUserNotificationTextFieldValuesKey;
    v5 = [NSArray arrayWithObject:&stru_8438];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1620;
    v7[3] = &unk_8298;
    return [+[IMUserNotificationCenter sharedInstance](IMUserNotificationCenter addUserNotification:"addUserNotification:listener:completionHandler:" listener:[IMUserNotification completionHandler:"userNotificationWithIdentifier:timeout:alertLevel:displayFlags:displayInformation:" userNotificationWithIdentifier:3 timeout:0 alertLevel:[NSDictionary dictionaryWithObjectsAndKeys:@"X-Apple-Test-Options:" displayFlags:v1 displayInformation:&stru_8438, v2, v3, v4, v5, IMUserNotificationTextFieldTitlesKey, @"OK", IMUserNotificationDefaultButtonTitleKey, @"Cancel", IMUserNotificationAlternateButtonTitleKey, 0, 0], 0.0], 0, v7];
  }

  else
  {
    CFPreferencesSetAppValue(@"testOptionsHeader", 0, @"com.apple.ids");

    return CFPreferencesAppSynchronize(@"com.apple.ids");
  }
}

uint64_t sub_1620(uint64_t a1, void *a2)
{
  result = [a2 response];
  if (!result)
  {
    v4 = [*(a1 + 32) responseInformation];
    v5 = [v4 objectForKey:IMUserNotificationTextFieldValuesKey];
    objc_opt_class();
    result = objc_opt_isKindOfClass();
    if (result)
    {
      result = [v5 length];
      if (result)
      {
        CFPreferencesSetAppValue(@"testOptionsHeader", v5, @"com.apple.ids");

        return CFPreferencesAppSynchronize(@"com.apple.ids");
      }
    }
  }

  return result;
}

const __CFString *sub_16CC()
{
  CFPreferencesAppSynchronize(@"com.apple.ids");
  v0 = CFPreferencesCopyAppValue(@"x-test-opts", @"com.apple.ids");
  if (!v0)
  {
    return @"none";
  }

  CFRelease(v0);
  return @"Custom";
}

id sub_1724(void *a1)
{
  if ([a1 isEqualToString:@"Custom"])
  {
    v1 = IMUserNotificationTitleKey;
    v2 = IMUserNotificationMessageKey;
    v3 = [NSArray arrayWithObject:&stru_8438];
    v4 = IMUserNotificationTextFieldValuesKey;
    v5 = [NSArray arrayWithObject:&stru_8438];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_18FC;
    v7[3] = &unk_8298;
    return [+[IMUserNotificationCenter sharedInstance](IMUserNotificationCenter addUserNotification:"addUserNotification:listener:completionHandler:" listener:[IMUserNotification completionHandler:"userNotificationWithIdentifier:timeout:alertLevel:displayFlags:displayInformation:" userNotificationWithIdentifier:3 timeout:0 alertLevel:[NSDictionary dictionaryWithObjectsAndKeys:@"x-test-opts:" displayFlags:v1 displayInformation:&stru_8438, v2, v3, v4, v5, IMUserNotificationTextFieldTitlesKey, @"OK", IMUserNotificationDefaultButtonTitleKey, @"Cancel", IMUserNotificationAlternateButtonTitleKey, 0, 0], 0.0], 0, v7];
  }

  else
  {
    CFPreferencesSetAppValue(@"x-test-opts", 0, @"com.apple.ids");

    return CFPreferencesAppSynchronize(@"com.apple.ids");
  }
}

uint64_t sub_18FC(uint64_t a1, void *a2)
{
  result = [a2 response];
  if (!result)
  {
    v4 = [*(a1 + 32) responseInformation];
    v5 = [v4 objectForKey:IMUserNotificationTextFieldValuesKey];
    objc_opt_class();
    result = objc_opt_isKindOfClass();
    if (result)
    {
      result = [v5 length];
      if (result)
      {
        CFPreferencesSetAppValue(@"x-test-opts", v5, @"com.apple.ids");

        return CFPreferencesAppSynchronize(@"com.apple.ids");
      }
    }
  }

  return result;
}

const __CFString *sub_19A8()
{
  CFPreferencesAppSynchronize(@"com.apple.ids");
  v0 = CFPreferencesCopyAppValue(@"env", @"com.apple.ids");
  if (!v0)
  {
    return @"prod";
  }

  return v0;
}

uint64_t sub_1A0C(void *a1)
{
  IDSLog();
  if ([a1 length])
  {
    v2 = a1;
  }

  else
  {
    v2 = 0;
  }

  CFPreferencesSetAppValue(@"env", v2, @"com.apple.ids");

  return CFPreferencesAppSynchronize(@"com.apple.ids");
}

const __CFString *sub_1A88()
{
  CFPreferencesAppSynchronize(@"com.apple.ids");
  v0 = CFPreferencesCopyAppValue(@"sps-env", @"com.apple.ids");
  if (!v0)
  {
    return @"prod";
  }

  return v0;
}

uint64_t sub_1AEC(void *a1)
{
  IDSLog();
  if ([a1 length])
  {
    v2 = a1;
  }

  else
  {
    v2 = 0;
  }

  CFPreferencesSetAppValue(@"sps-env", v2, @"com.apple.ids");

  return CFPreferencesAppSynchronize(@"com.apple.ids");
}

void sub_1B68()
{
  IDSLog();
  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, 0, 0);
  CFDictionaryAddValue(Mutable, kSecClass, kSecClassGenericPassword);
  CFDictionarySetValue(Mutable, kSecAttrService, @"com.apple.iChat.VeniceRegistrationAgent");
  v1 = SecItemDelete(Mutable);
  if (v1)
  {
    NSLog(@"Unable to remove V0 keychain data: %ld", v1);
  }

  CFDictionarySetValue(Mutable, kSecAttrService, @"com.apple.facetime");
  v2 = SecItemDelete(Mutable);
  if (v2)
  {
    NSLog(@"Unable to remove V1 keychain data: %ld", v2);
  }

  if (Mutable)
  {

    CFRelease(Mutable);
  }
}

uint64_t sub_1C78()
{
  IDSLog();
  v0 = [@"killall -9 identityservicesd" UTF8String];

  return system(v0);
}

uint64_t sub_1CD4()
{
  IDSLog();
  v0 = [@"killall -9 identityservicesd imagent" UTF8String];

  return system(v0);
}

uint64_t sub_1D30()
{
  IDSLog();
  v0 = [@"killall -USR2 imagent" UTF8String];

  return system(v0);
}

uint64_t sub_1D8C()
{
  IDSLog();
  v0 = [@"killall -USR2 identityservicesd" UTF8String];

  return system(v0);
}

uint64_t sub_1DE8()
{
  IDSLog();
  v0 = [@"killall -USR1 identityservicesd" UTF8String];

  return system(v0);
}

uint64_t sub_1E44()
{
  IDSLog();
  v0 = [@"killall -9 mediaserverd Contacts imagent imavagent identityservicesd SpringBoard MobilePhone MobileSMS" UTF8String];

  return system(v0);
}

uint64_t sub_1EA0()
{
  v0 = popen("/usr/bin/killall -9 identityservicesd sharingd lsuseractivityd callservicesd FaceTime SpringBoard blued BTServer cloudpaird wirelessproxd", "r");

  return pclose(v0);
}

id sub_1ED8(int a1, void *a2)
{
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = [a2 allKeys];
  result = [obj countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (result)
  {
    v5 = result;
    v6 = *v21;
    if (a1)
    {
      v7 = kCFBooleanTrue;
    }

    else
    {
      v7 = 0;
    }

    do
    {
      v8 = 0;
      do
      {
        if (*v21 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v20 + 1) + 8 * v8);
        v16 = 0u;
        v17 = 0u;
        v18 = 0u;
        v19 = 0u;
        v10 = [a2 objectForKey:v9];
        v11 = [v10 countByEnumeratingWithState:&v16 objects:v24 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v17;
          do
          {
            v14 = 0;
            do
            {
              if (*v17 != v13)
              {
                objc_enumerationMutation(v10);
              }

              CFPreferencesSetAppValue(*(*(&v16 + 1) + 8 * v14), v7, v9);
              v14 = v14 + 1;
            }

            while (v12 != v14);
            v12 = [v10 countByEnumeratingWithState:&v16 objects:v24 count:16];
          }

          while (v12);
        }

        CFPreferencesAppSynchronize(v9);
        v8 = v8 + 1;
      }

      while (v8 != v5);
      result = [obj countByEnumeratingWithState:&v20 objects:v25 count:16];
      v5 = result;
    }

    while (result);
  }

  return result;
}

uint64_t sub_2084()
{
  IDSLog();
  v0 = [@"rm -rf /var/mobile/Library/Preferences/com.apple.ids.service.com.apple.* /var/mobile/Library/Preferences/com.apple.imservice.*" UTF8String];

  return system(v0);
}

uint64_t sub_20E0()
{
  v0 = sub_3248();
  if (![v0 count])
  {
    return 0xFFFFFFFFLL;
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  result = [v0 countByEnumeratingWithState:&v15 objects:v20 count:16];
  if (result)
  {
    v2 = result;
    v3 = *v16;
    while (2)
    {
      for (i = 0; i != v2; i = i + 1)
      {
        if (*v16 != v3)
        {
          objc_enumerationMutation(v0);
        }

        v5 = *(*(&v15 + 1) + 8 * i);
        v11 = 0u;
        v12 = 0u;
        v13 = 0u;
        v14 = 0u;
        v6 = [v0 objectForKey:{v5, 0}];
        v7 = [v6 countByEnumeratingWithState:&v11 objects:v19 count:16];
        if (v7)
        {
          v8 = v7;
          v9 = *v12;
LABEL_9:
          v10 = 0;
          while (1)
          {
            if (*v12 != v9)
            {
              objc_enumerationMutation(v6);
            }

            if (!CFPreferencesGetAppBooleanValue(*(*(&v11 + 1) + 8 * v10), v5, 0))
            {
              return 0xFFFFFFFFLL;
            }

            if (v8 == ++v10)
            {
              v8 = [v6 countByEnumeratingWithState:&v11 objects:v19 count:16];
              if (v8)
              {
                goto LABEL_9;
              }

              break;
            }
          }
        }
      }

      v2 = [v0 countByEnumeratingWithState:&v15 objects:v20 count:16];
      result = 0;
      if (v2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

uint64_t sub_2280(int a1)
{
  v2 = sub_3248();
  sub_1ED8(a1 >= 0, v2);
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"kMarcoSyncLoggingPrefs", 0, 0, 1u);
  v4 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(v4, @"PCLoggingSettingsDidChangeNotification", 0, 0, 1u);

  return system("killall -USR2 imagent");
}

uint64_t sub_2304(const __CFString *a1)
{
  if (a1)
  {
    v1 = a1;
  }

  else
  {
    v1 = @"CNFDumpRegistrationLogs";
  }

  return _MarcoAction(0, v1, 4);
}

uint64_t sub_2320()
{
  result = qword_C230;
  if (!qword_C230)
  {
    v1 = +[NSMutableDictionary dictionary];
    [v1 setObject:+[NSArray arrayWithObjects:](NSArray forKey:{"arrayWithObjects:", @"Log", @"PCWriteLogs", @"APSFullNetworkLogging", 0), @"com.apple.persistentconnection"}];
    qword_C230 = [NSDictionary dictionaryWithDictionary:v1];
    v2 = qword_C230;
    return qword_C230;
  }

  return result;
}

id sub_23BC()
{
  v0 = sub_2320();
  result = [v0 count];
  if (result)
  {
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v20 = [v0 countByEnumeratingWithState:&v27 objects:v32 count:16];
    if (v20)
    {
      v2 = *v28;
      v18 = *v28;
      v19 = v0;
      do
      {
        v3 = 0;
        do
        {
          if (*v28 != v2)
          {
            objc_enumerationMutation(v0);
          }

          v21 = v3;
          v4 = *(*(&v27 + 1) + 8 * v3);
          v23 = 0u;
          v24 = 0u;
          v25 = 0u;
          v26 = 0u;
          obj = [v0 objectForKey:v4];
          v5 = [obj countByEnumeratingWithState:&v23 objects:v31 count:16];
          if (v5)
          {
            v6 = v5;
            v7 = *v24;
            while (2)
            {
              for (i = 0; i != v6; i = i + 1)
              {
                if (*v24 != v7)
                {
                  objc_enumerationMutation(obj);
                }

                v9 = *(*(&v23 + 1) + 8 * i);
                sub_32C8();
                v10 = _CFPreferencesCopyValueWithContainer();
                if (v10)
                {
                  v11 = v10;
                  v12 = CFGetTypeID(v10);
                  if (v12 == CFBooleanGetTypeID())
                  {
                    Value = CFBooleanGetValue(v11);
                  }

                  else
                  {
                    Value = 0;
                  }

                  CFRelease(v11);
                }

                else
                {
                  Value = 0;
                }

                v14 = CFPreferencesCopyValue(v9, v4, @"mobile", kCFPreferencesAnyHost);
                if (v14)
                {
                  v15 = v14;
                  v16 = CFGetTypeID(v14);
                  if (v16 == CFBooleanGetTypeID())
                  {
                    if (Value)
                    {
                      Value = 1;
                    }

                    else
                    {
                      Value = CFBooleanGetValue(v15) != 0;
                    }
                  }

                  CFRelease(v15);
                }

                if (!Value)
                {
                  return 0;
                }
              }

              v6 = [obj countByEnumeratingWithState:&v23 objects:v31 count:16];
              if (v6)
              {
                continue;
              }

              break;
            }
          }

          v3 = v21 + 1;
          v2 = v18;
          v0 = v19;
        }

        while ((v21 + 1) != v20);
        v17 = [v19 countByEnumeratingWithState:&v27 objects:v32 count:16];
        result = &dword_0 + 1;
        v20 = v17;
      }

      while (v17);
    }

    else
    {
      return &dword_0 + 1;
    }
  }

  return result;
}

void sub_263C(int a1)
{
  v2 = [(NSArray *)NSSearchPathForDirectoriesInDomains(NSLibraryDirectory lastObject:1)];
  v3 = +[NSFileManager defaultManager];
  if (a1)
  {
    if ([(NSFileManager *)v3 fileExistsAtPath:@"/usr/sbin/tcpdump"])
    {
      -[NSData writeToFile:options:error:](+[NSData data](NSData, "data"), "writeToFile:options:error:", [v2 stringByAppendingPathComponent:@"Caches/com.apple.aps.tcpdump.en0.plist"], 0, 0);
      if ([+[FTDeviceSupport supportsCellularData] sharedInstance]
      {
        -[NSData writeToFile:options:error:](+[NSData data](NSData, "data"), "writeToFile:options:error:", [v2 stringByAppendingPathComponent:@"Caches/com.apple.aps.tcpdump.pdp_ip0.plist"], 0, 0);
      }
    }
  }

  else
  {
    -[NSFileManager removeItemAtPath:error:](v3, "removeItemAtPath:error:", [v2 stringByAppendingPathComponent:@"Preferences/com.apple.aps.tcpdump.en0.plist"], 0);
    -[NSFileManager removeItemAtPath:error:](+[NSFileManager defaultManager](NSFileManager, "defaultManager"), "removeItemAtPath:error:", [v2 stringByAppendingPathComponent:@"Preferences/com.apple.aps.tcpdump.pdp_ip0.plist"], 0);
    -[NSFileManager removeItemAtPath:error:](+[NSFileManager defaultManager](NSFileManager, "defaultManager"), "removeItemAtPath:error:", [v2 stringByAppendingPathComponent:@"Caches/com.apple.aps.tcpdump.en0.plist"], 0);
    -[NSFileManager removeItemAtPath:error:](+[NSFileManager defaultManager](NSFileManager, "defaultManager"), "removeItemAtPath:error:", [v2 stringByAppendingPathComponent:@"Caches/com.apple.aps.tcpdump.pdp_ip0.plist"], 0);
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = [sub_2320() allKeys];
  v16 = [obj countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v16)
  {
    v15 = *v23;
    if (a1)
    {
      v4 = kCFBooleanTrue;
    }

    else
    {
      v4 = 0;
    }

    do
    {
      v5 = 0;
      do
      {
        if (*v23 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v17 = v5;
        v6 = *(*(&v22 + 1) + 8 * v5);
        v18 = 0u;
        v19 = 0u;
        v20 = 0u;
        v21 = 0u;
        v7 = [sub_2320() objectForKey:v6];
        v8 = [v7 countByEnumeratingWithState:&v18 objects:v26 count:16];
        if (v8)
        {
          v9 = v8;
          v10 = *v19;
          do
          {
            for (i = 0; i != v9; i = i + 1)
            {
              if (*v19 != v10)
              {
                objc_enumerationMutation(v7);
              }

              v12 = *(*(&v18 + 1) + 8 * i);
              sub_32C8();
              _CFPreferencesSetValueWithContainer();
              CFPreferencesSetValue(v12, v4, v6, @"mobile", kCFPreferencesAnyHost);
            }

            v9 = [v7 countByEnumeratingWithState:&v18 objects:v26 count:16];
          }

          while (v9);
        }

        sub_32C8();
        _CFPreferencesSynchronizeWithContainer();
        CFPreferencesAppSynchronize(v6);
        v5 = v17 + 1;
      }

      while ((v17 + 1) != v16);
      v16 = [obj countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v16);
  }

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"PCLoggingSettingsDidChangeNotification", 0, 0, 1u);
}

CFIndex sub_29D4()
{
  v0 = sub_3348();
  if (![v0 count])
  {
    return 0xFFFFFFFFLL;
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v1 = [v0 countByEnumeratingWithState:&v16 objects:v21 count:16];
  if (v1)
  {
    v2 = v1;
    v3 = *v17;
    while (2)
    {
      v4 = 0;
      do
      {
        if (*v17 != v3)
        {
          objc_enumerationMutation(v0);
        }

        v5 = *(*(&v16 + 1) + 8 * v4);
        v12 = 0u;
        v13 = 0u;
        v14 = 0u;
        v15 = 0u;
        v6 = [v0 objectForKey:{v5, 0}];
        v7 = [v6 countByEnumeratingWithState:&v12 objects:v20 count:16];
        if (v7)
        {
          v8 = v7;
          v9 = *v13;
LABEL_9:
          v10 = 0;
          while (1)
          {
            if (*v13 != v9)
            {
              objc_enumerationMutation(v6);
            }

            if (!CFPreferencesGetAppBooleanValue(*(*(&v12 + 1) + 8 * v10), v5, 0))
            {
              return 0xFFFFFFFFLL;
            }

            if (v8 == ++v10)
            {
              v8 = [v6 countByEnumeratingWithState:&v12 objects:v20 count:16];
              if (v8)
              {
                goto LABEL_9;
              }

              break;
            }
          }
        }

        v4 = v4 + 1;
      }

      while (v4 != v2);
      v2 = [v0 countByEnumeratingWithState:&v16 objects:v21 count:16];
      if (v2)
      {
        continue;
      }

      break;
    }
  }

  return CFPreferencesGetAppIntegerValue(@"MadridLoggingLevel", @"com.apple.logging", 0);
}

void sub_2B88(unsigned int a1)
{
  v2 = sub_3348();
  sub_1ED8((a1 & 0x80000000) == 0, v2);
  if ((a1 & 0x80000000) != 0)
  {
    CFPreferencesSetAppValue(@"MadridLoggingLevel", 0, @"com.apple.logging");
    CFPreferencesSetAppValue(@"DebugLevel", 0, @"com.apple.mmcs");
  }

  else
  {
    v3 = [[NSNumber alloc] initWithInteger:a1];
    CFPreferencesSetAppValue(@"MadridLoggingLevel", v3, @"com.apple.logging");
    CFPreferencesSetAppValue(@"DebugLevel", [NSNumber numberWithInt:3], @"com.apple.mmcs");
  }

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"kMarcoSyncLoggingPrefs", 0, 0, 1u);
  v5 = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterPostNotification(v5, @"PCLoggingSettingsDidChangeNotification", 0, 0, 1u);
}

void sub_2C90(int a1)
{
  if (a1)
  {
    sub_2EB0(&__kCFBooleanTrue, @"CSILog", @"enabled");
    sub_2EB0(@"512", @"CSILog", @"history");
    sub_2EB0(&__kCFBooleanTrue, @"CSILog", @"enableGlobalLogging");
    sub_2EB0(&__kCFBooleanTrue, @"MobileAnalyzer", @"enabled");
    sub_2EB0(@"512", @"MobileAnalyzer", @"history");
    sub_2EB0(&__kCFBooleanTrue, @"Artemis", @"enabled");
    sub_2EB0(@"512", @"Artemis", @"history");
    sub_2EB0(@"1", @"EURCoreDump", @"enabled");
    sub_2EB0(@"2", @"CoreDump", @"enabled");
    sub_2EB0(@"512", @"DIAG", @"history");
    sub_2EB0(@"default", @"DIAG", @"file");
    v1 = &__kCFBooleanTrue;
    v2 = @"DIAG";
  }

  else
  {
    sub_2EB0(&__kCFBooleanFalse, @"CSILog", @"enabled");
    sub_2EB0(@"64", @"CSILog", @"history");
    sub_2EB0(&__kCFBooleanFalse, @"CSILog", @"enableGlobalLogging");
    sub_2EB0(&__kCFBooleanFalse, @"MobileAnalyzer", @"enabled");
    sub_2EB0(@"16", @"MobileAnalyzer", @"history");
    sub_2EB0(&__kCFBooleanFalse, @"Artemis", @"enabled");
    sub_2EB0(@"16", @"Artemis", @"history");
    v1 = @"0";
    v2 = @"CoreDump";
  }

  sub_2EB0(v1, v2, @"enabled");
}

void sub_2EB0(__CFString *a1, uint64_t a2, uint64_t a3)
{
  if (qword_C250 != -1)
  {
    sub_38E4();
  }

  if (qword_C260 != -1)
  {
    sub_38F8();
  }

  v9 = 0;
  memset(v8, 0, sizeof(v8));
  v6 = off_C248(kCFAllocatorDefault, nullsub_1, v8);
  if (v6)
  {
    v7 = v6;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if ([(__CFString *)a1 BOOLValue])
      {
        a1 = @"true";
      }

      else
      {
        a1 = @"false";
      }
    }

    off_C258(v7, a2, a3, a1);
    CFRelease(v7);
  }
}

uint64_t sub_2FD0()
{
  IMSetDomainBoolForKey();
  IMSetDomainBoolForKey();
  [(NSString *)NSHomeDirectory() stringByAppendingPathComponent:@"/Library/Preferences/.GlobalPreferences"];

  return IMSetDomainBoolForKey();
}

void sub_304C()
{
  v0 = WiFiManagerClientCreate();
  if (v0)
  {
    v1 = v0;
    WiFiManagerClientSetProperty();
    WiFiManagerClientSetProperty();
    WiFiManagerClientSetProperty();

    CFRelease(v1);
  }
}

uint64_t sub_310C(int a1)
{
  IMSetDomainBoolForKey();
  IMSetDomainBoolForKey();
  v2 = a1 == 0;
  if (a1)
  {
    v3 = @"Info";
  }

  else
  {
    v3 = @"Error";
  }

  if (v2)
  {
    v4 = @"FALSE";
  }

  else
  {
    v4 = @"TRUE";
  }

  IMSetDomainValueForKey();
  v8 = @"StackDebugEnabled";
  v9 = v4;
  [NSDictionary dictionaryWithObjects:&v9 forKeys:&v8 count:1];
  IMSetDomainValueForKey();
  v6 = @"DebugLevel";
  v7 = v3;
  [NSDictionary dictionaryWithObjects:&v7 forKeys:&v6 count:1];
  return IMSetDomainValueForKey();
}

uint64_t sub_3248()
{
  result = qword_C238;
  if (!qword_C238)
  {
    v1 = objc_alloc_init(NSMutableDictionary);
    [v1 setObject:+[NSArray arrayWithObjects:](NSArray forKey:{"arrayWithObjects:", @"RegistrationLogging", 0), @"com.apple.logging"}];
    qword_C238 = [v1 copy];

    return qword_C238;
  }

  return result;
}

id sub_32C8()
{
  [@"systemgroup.com.apple.sharedpclogging" UTF8String];
  v0 = container_system_group_path_for_identifier();
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  v2 = [[NSString alloc] initWithCString:v0 encoding:4];
  free(v1);
  return v2;
}

uint64_t sub_3348()
{
  result = qword_C240;
  if (!qword_C240)
  {
    v1 = objc_alloc_init(NSMutableDictionary);
    [v1 setObject:+[NSArray arrayWithObjects:](NSArray forKey:{"arrayWithObjects:", @"MadridLogging", 0), @"com.apple.logging"}];
    qword_C240 = [v1 copy];

    return qword_C240;
  }

  return result;
}