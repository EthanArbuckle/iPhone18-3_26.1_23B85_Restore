uint64_t ICRemotePrefManagerEvaluatePrivateEntitlement(void *a1)
{
  result = [a1 valueForEntitlement:@"com.apple.private.imagecapturecore.authorization_bypass"];
  if (result)
  {
    v2 = result;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      result = [v2 BOOLValue];
      if (result)
      {
        __ICOSLogCreate();
        v3 = @"privateBypass";
        if ([@"privateBypass" length] >= 0x15)
        {
          v3 = [objc_msgSend(@"privateBypass" substringWithRange:{0, 18), "stringByAppendingString:", @".."}];
        }

        v4 = [NSString stringWithFormat:@"ICAuthorizationBypassEntitlement found"];
        v5 = _gICOSLog;
        if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
        {
          v6 = 136446466;
          v7 = [(__CFString *)v3 UTF8String];
          v8 = 2114;
          v9 = v4;
          _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", &v6, 0x16u);
        }

        return 1;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void sub_10000143C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100002A28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

int main(int argc, const char **argv, const char **envp)
{
  v3 = objc_autoreleasePoolPush();
  __ICOSLogCreate();
  v4 = @"icprefd[xpc]";
  if ([@"icprefd[xpc]" length] >= 0x15)
  {
    v4 = [objc_msgSend(@"icprefd[xpc]" substringWithRange:{0, 18), "stringByAppendingString:", @".."}];
  }

  v5 = [NSString stringWithFormat:@"%@", @"Launching icprefd [xpc]"];
  v6 = _gICOSLog;
  if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v11 = [(__CFString *)v4 UTF8String];
    v12 = 2114;
    v13 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
  }

  v7 = objc_alloc_init(ICRemotePrefManager);
  v8 = +[NSXPCListener serviceListener];
  [(NSXPCListener *)v8 setDelegate:v7];
  [(NSXPCListener *)v8 resume];
  [+[NSRunLoop currentRunLoop](NSRunLoop run];

  objc_autoreleasePoolPop(v3);
  return 0;
}