void sub_100002DD0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = RFSelfDiagExtensionHelper;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_10000462C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100004930(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_100004E60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_100005008(id *a1)
{

  operator delete(a1);
}

void *sub_100005044(uint64_t a1)
{
  v2 = operator new(0x10uLL);
  v3 = *(a1 + 8);
  *v2 = off_100010478;
  v2[1] = v3;
  return v2;
}

id sub_10000509C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  *a2 = off_100010478;
  result = v3;
  a2[1] = result;
  return result;
}

void sub_1000050EC(id *a1)
{

  operator delete(a1);
}

void sub_100005128(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v3 = *(a2 + 8);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v5 = [NSData dataWithBytes:v4 length:v3 - v4];
  v6 = [*(a1 + 8) delegate];

  if (v6)
  {
    v7 = [*(a1 + 8) delegate];
    [v7 handleAWDMetricEvent:v5];
  }

  if (v4)
  {

    operator delete(v4);
  }
}

void sub_1000051D8(_Unwind_Exception *a1)
{
  v4 = v3;

  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10000520C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "Z49[RFSelfDiagExtensionHelper addAWDConfiguration:]E3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "Z49[RFSelfDiagExtensionHelper addAWDConfiguration:]E3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "Z49[RFSelfDiagExtensionHelper addAWDConfiguration:]E3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("Z49[RFSelfDiagExtensionHelper addAWDConfiguration:]E3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t sub_100005284(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
    return a1;
  }

  else
  {
    if (v2)
    {
      (*(*v2 + 40))(v2);
    }

    return a1;
  }
}

intptr_t sub_1000054A8(uint64_t a1)
{
  pthread_setname_np("DE.WifiScanner.RunLoop");
  [*(a1 + 32) setFServerRunLoopRef:CFRunLoopGetCurrent()];
  v2 = [*(a1 + 32) fWaitForResult];

  return dispatch_semaphore_signal(v2);
}

uint64_t sub_1000054FC(void *a1)
{
  memset(&v8, 0, sizeof(v8));
  v2 = CFRunLoopSourceCreate(kCFAllocatorDefault, 0, &v8);
  if (v2)
  {
    v3 = v2;
    Current = CFRunLoopGetCurrent();
    CFRunLoopAddSource(Current, v3, kCFRunLoopDefaultMode);
    v5 = objc_retainBlock(a1);
    v5[2]();
      ;
    }

    v6 = CFRunLoopGetCurrent();
    CFRunLoopRemoveSource(v6, v3, kCFRunLoopDefaultMode);
    CFRelease(v3);
  }

  return 0;
}

id sub_100006584(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  result = a4;
  if (a4)
  {
    return [a4 wifiScanCompleted:a2 withError:a3];
  }

  return result;
}

id sub_100006924(id result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result)
  {
    if (a4)
    {
      v4 = result;
      result = IOHIDEventGetType();
      if (result == 12)
      {
        result = [v4 fIsMonitoring];
        if (result)
        {
          IOHIDEventGetFloatValue();
          v6 = v5;
          v7 = [v4 valueQueue];
          v8 = [NSNumber numberWithInt:v6];
          [v7 addObject:v8];

          return [v4 determineEnclosureState];
        }
      }
    }
  }

  return result;
}

void sub_100006D44(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 8);
  if (v2)
  {
    CFRelease(v2);
    *(*(a1 + 32) + 8) = 0;
    v3 = +[ABMDiagnosticExtensionLogging getOSLogHandler];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "ALSDataMonitor: release system client", buf, 2u);
    }
  }

  v4 = *(*(a1 + 32) + 16);
  if (v4)
  {
    CFRelease(v4);
    *(*(a1 + 32) + 16) = 0;
    v5 = +[ABMDiagnosticExtensionLogging getOSLogHandler];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "ALSDataMonitor: release service client", v6, 2u);
    }
  }
}

void operator delete(void *__p)
{
    ;
  }
}

void *__cdecl operator new[](size_t __sz)
{
    ;
  }
}

void *__cdecl operator new(size_t __sz)
{
    ;
  }
}