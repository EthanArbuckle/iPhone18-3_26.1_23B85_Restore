int main(int argc, const char **argv, const char **envp)
{
  v3 = objc_opt_new();
  v4 = +[NSXPCListener serviceListener];
  [v4 setDelegate:v3];
  [v4 resume];

  return 0;
}

id BKDisableiCloudServiceLog()
{
  if (qword_1000085E8 != -1)
  {
    sub_100001390();
  }

  v1 = qword_1000085E0;

  return v1;
}

void sub_100000E10(id a1)
{
  qword_1000085E0 = os_log_create("com.apple.iBooks", "DisableiCloudService");

  _objc_release_x1();
}

void sub_1000013A4(char a1, uint64_t a2, os_log_t log)
{
  v3 = @"YES";
  if ((a1 & 1) == 0)
  {
    v3 = @"NO";
  }

  v4 = 138412546;
  v5 = v3;
  v6 = 2114;
  v7 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Failed to set iCloud enabled to %@ for %{public}@.", &v4, 0x16u);
}

void sub_100001444(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "_isServiceDisabled(%{public}@): TCC returned a NULL array!", &v2, 0xCu);
}

FAULT, "isLiverpoolAndUbiquityEnabled - liverpool OFF, ubiquity ON --> forcing liverpool ON", v11, 2u);
      }

      v6 = 1;
      [(XPCUbiquityDisableService *)self _setService:kTCCServiceLiverpool enabled:1 withReply:&stru_100004168];
      goto LABEL_16;
    }

LABEL_15:
    v6 = 0;
    goto LABEL_16;
  }

  v8 = v5 | [(XPCUbiquityDisableService *)self _isServiceDisabledAlternative:kTCCServiceUbiquity];
  v9 = BKDisableiCloudServiceLog();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if (!v8)
  {
    if (v10)
    {
      LOWORD(v11[0]) = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "isLiverpoolAndUbiquityEnabled - Skip setting unknown liverpool value because ubiquity is also unknown!", v11, 2u);
    }

    goto LABEL_15;
  }

  if (v10)
  {
    v11[0] = 67109120;
    v11[1] = v5;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "isLiverpoolAndUbiquityEnabled - Setting unknown liverpool value to %{BOOL}d", v11, 8u);
  }

  [(XPCUbiquityDisableService *)self _setService:kTCCServiceLiverpool enabled:v5 withReply:&stru_100004188];
  v6 = v5;
LABEL_16:
  if (v4)
  {
    v4[2](v4, v6, v5, 0);
  }
}

- (void)_setService:(__CFString *)a3 enabled:(BOOL)a4 withReply:(id)a5
{
  v5 = a4;
  v7 = a5;
  v8 = BKDisableiCloudServiceLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = @"NO";
    if (v5)
    {
      v9 = @"YES";
    }

    v12 = 138412546;
    v13 = v9;
    v14 = 2114;
    v15 = a3;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Setting iCloud enabled to %@ for %{public}@.", &v12, 0x16u);
  }

  if (TCCAccessSetForBundleId())
  {
    v10 = 0;
    if (v7)
    {
LABEL_7:
      v7[2](v7, v10);
    }
  }

  else
  {
    v11 = BKDisableiCloudServiceLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_1000013A4(v5, a3, v11);
    }

    v10 = [NSError errorWithDomain:@"XPCUbiquityDisableServiceErrorDomain" code:0 userInfo:0];
    if (v7)
    {
      goto LABEL_7;
    }
  }
}

- (BOOL)_isBundleIdentifierInArray:(__CFArray *)a3
{
  Count = CFArrayGetCount(a3);
  if (Count)
  {
    v5 = Count;
    v6 = 0;
    v7 = 1;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a3, v6);
      v9 = CFGetTypeID(ValueAtIndex);
      if (v9 == CFStringGetTypeID() && CFStringCompare(ValueAtIndex, @"com.apple.iBooks", 0) == kCFCompareEqualTo)
      {
        break;
      }

      v7 = ++v6 < v5;
    }

    while (v5 != v6);
  }

  else
  {
    return 0;
  }

  return v7;
}

- (BOOL)_isServiceEnabledAlternative:(__CFString *)a3
{
  v5 = TCCAccessCopyBundleIdentifiersForService();
  if (v5)
  {
    v6 = v5;
    v7 = [(XPCUbiquityDisableService *)self _isBundleIdentifierInArray:v5];
    CFRelease(v6);
    return v7;
  }

  else
  {
    v9 = BKDisableiCloudServiceLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_100001444(a3, v9);
    }

    return 0;
  }
}

- (BOOL)_isServiceDisabledAlternative:(__CFString *)a3
{
  v5 = TCCAccessCopyBundleIdentifiersDisabledForService();
  if (v5)
  {
    v6 = v5;
    v7 = [(XPCUbiquityDisableService *)self _isBundleIdentifierInArray:v5];
    CFRelease(v6);
    return v7;
  }

  else
  {
    v9 = BKDisableiCloudServiceLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_100001444(a3, v9);
    }

    return 1;
  }
}

@end