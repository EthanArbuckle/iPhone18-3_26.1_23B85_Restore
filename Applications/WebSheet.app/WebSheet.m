id sub_100001658()
{
  v0 = +[UMUserManager sharedManager];
  v1 = [v0 isMultiUser];

  return v1;
}

uint64_t sub_100001698()
{
  SBSSpringBoardServerPort();
  SBGetScreenLockStatus();
  return 0;
}

uint64_t sub_1000016D4(id *a1, const __CFDictionary *a2, int a3)
{
  dword_10000CC90 = a3;
  if (sub_100001658() || !sub_100001698())
  {
    Value = CFDictionaryGetValue(a2, @"Interface");
    v6 = [NSURL URLWithString:CFDictionaryGetValue(a2, @"ProbeURL")];
    v7 = CFDictionaryGetValue(a2, @"SSID");
    v8 = CFDictionaryGetValue(a2, @"CarPlayAndInternet");
    TypeID = CFBooleanGetTypeID();
    if (v8)
    {
      if (CFGetTypeID(v8) != TypeID)
      {
        v8 = 0;
        if (!Value)
        {
LABEL_19:
          [UIApp terminateWithSuccess];
          v10 = 0;
LABEL_37:

          return v10;
        }

LABEL_10:
        if (!v6 || !v7)
        {
          goto LABEL_19;
        }

        v11 = CFDictionaryCreate(kCFAllocatorDefault, &kSCProxiesNoGlobal, &kCFBooleanTrue, 1, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
        if (v11)
        {
          v12 = v11;
          v13 = SCDynamicStoreCopyProxiesWithOptions();
          if (v13)
          {
            v14 = v13;
            v15 = SCNetworkProxiesCopyMatching();
            if (v15)
            {
              v16 = v15;
              if (CFArrayGetCount(v15) >= 1 && (ValueAtIndex = CFArrayGetValueAtIndex(v16, 0)) != 0 && (v18 = ValueAtIndex, v29 = CFDictionaryGetTypeID(), CFGetTypeID(v18) == v29))
              {
                Copy = CFDictionaryCreateCopy(kCFAllocatorDefault, v18);
              }

              else
              {
                Copy = 0;
              }

              CFRelease(v16);
            }

            else
            {
              Copy = 0;
            }

            CFRelease(v14);
          }

          else
          {
            Copy = 0;
          }

          CFRelease(v12);
          if (!a1)
          {
            goto LABEL_29;
          }
        }

        else
        {
          Copy = 0;
          if (!a1)
          {
            goto LABEL_29;
          }
        }

        [*a1 setInterfaceName:Value];
        [a1[1] setCarPlayAndInternetMode:v8];
        [a1[1] startWithURL:v6 ssid:v7 interface:Value proxyConfiguration:Copy showCancelMenu:1 delegate:*a1];
LABEL_29:
        if (Copy)
        {
          CFRelease(Copy);
        }

        v20 = [SBSRemoteAlertDefinition alloc];
        v21 = +[NSBundle mainBundle];
        v22 = [v21 bundleIdentifier];
        v23 = [v20 initWithServiceName:v22 viewControllerClassName:@"WebSheetRemoteAlertPresentationViewController"];

        if (a1)
        {
          v24 = [SBSRemoteAlertHandle newHandleWithDefinition:v23 configurationContext:0];
          v25 = a1[2];
          a1[2] = v24;
        }

        v26 = objc_alloc_init(SBSRemoteAlertActivationContext);
        [v26 setReason:@"CaptiveWebSheet"];
        if (a1)
        {
          v27 = a1[2];
          if (v27)
          {
            [v27 registerObserver:*a1];
            [a1[2] activateWithContext:v26];
          }
        }

        v10 = 1;
        goto LABEL_37;
      }

      v8 = CFBooleanGetValue(v8) != 0;
    }

    if (!Value)
    {
      goto LABEL_19;
    }

    goto LABEL_10;
  }

  [UIApp terminateWithSuccess];
  return 0;
}

void sub_100002094(uint64_t a1)
{
  v2 = *(a1 + 16);
}

void sub_1000020D8(void *a1, const void *a2, int a3)
{
  NSLog(@"captive probe completed");
  if (a2)
  {
    CFRelease(a2);
  }

  if (a1)
  {
    v6 = a1;
    v7 = v6;
    if ((a3 - 1) > 6)
    {
      v8 = 0;
    }

    else
    {
      v8 = qword_100003BC8[a3 - 1];
    }

    v9 = [v6 probeCompleteCompletionHandler];

    if (v9)
    {
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_1000021D4;
      v10[3] = &unk_1000082C0;
      v11 = v7;
      v12 = v8;
      dispatch_async(&_dispatch_main_q, v10);
    }
  }
}

id sub_1000021D4(uint64_t a1)
{
  v2 = [*(a1 + 32) probeCompleteCompletionHandler];
  v2[2](v2, *(a1 + 40));

  v3 = *(a1 + 32);

  return [v3 setProbeCompleteCompletionHandler:0];
}

void sub_1000022A8(uint64_t a1)
{
  v2 = [*(a1 + 32) _remoteViewControllerProxy];
  [v2 setWallpaperTunnelActive:0];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100002364;
  v6[3] = &unk_100008328;
  v7 = v2;
  v5 = v2;
  [v3 dismissViewControllerAnimated:v4 completion:v6];
}

void sub_100002364(uint64_t a1)
{
  [*(a1 + 32) dismiss];

  dispatch_async(&_dispatch_main_q, &stru_100008300);
}

void sub_100002610(uint64_t a1)
{
  NSLog(@"WebSheet view controller presentation finished.");
  v2 = [*(a1 + 32) _remoteViewControllerProxy];
  [v2 setWallpaperStyle:1 withDuration:0.0];
  [v2 setWallpaperTunnelActive:1];
}

const char *sub_100002694(char a1)
{
  if (a1)
  {
    return "Exclusive";
  }

  else
  {
    return "BuddyAnchor";
  }
}

uint64_t sub_1000026C0(char a1)
{
  v4[3] = &type metadata for WebSheetFeatureFlags;
  v4[4] = sub_10000271C();
  LOBYTE(v4[0]) = a1 & 1;
  v2 = isFeatureEnabled(_:)();
  sub_100002770(v4);
  return v2 & 1;
}

unint64_t sub_10000271C()
{
  result = qword_10000CC80;
  if (!qword_10000CC80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000CC80);
  }

  return result;
}

uint64_t sub_100002770(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
    return _swift_release(*a1);
  }

  else
  {
    return (*(v1 + 8))();
  }
}

Swift::Int sub_1000027F4(char a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1 & 1);
  return Hasher._finalize()();
}

Swift::Int sub_100002854()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_1000028C8()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

unint64_t sub_100002910()
{
  result = qword_10000CC88;
  if (!qword_10000CC88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000CC88);
  }

  return result;
}

const char *sub_100002964()
{
  if (*v0)
  {
    return "Exclusive";
  }

  else
  {
    return "BuddyAnchor";
  }
}

uint64_t getEnumTagSinglePayload for WebSheetFeatureFlags(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for WebSheetFeatureFlags(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}