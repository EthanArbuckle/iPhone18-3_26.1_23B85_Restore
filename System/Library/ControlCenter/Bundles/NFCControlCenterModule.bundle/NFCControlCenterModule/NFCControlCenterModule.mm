id sub_1A0C(uint64_t a1)
{
  objc_storeWeak((*(a1 + 32) + 48), *(a1 + 40));
  v2 = *(a1 + 32);
  if (*(a1 + 40))
  {

    return [v2 _registerForCameraNotifications];
  }

  else
  {

    return [v2 _unregisterForCameraNotifications];
  }
}

id sub_1C2C(id result, io_registry_entry_t a2, int a3)
{
  if (a3 == -536870608)
  {
    v5 = result;
    if (sub_2160(a2, @"FrontCameraActive"))
    {
      v6 = 2;
    }

    else
    {
      v6 = 0;
    }

    v7 = v6 | sub_2160(a2, @"BackCameraActive");
    if (sub_2160(a2, @"BackTeleCameraActive"))
    {
      v8 = v7 | 4;
    }

    else
    {
      v8 = v7;
    }

    return [v5 _capturingCameraTypesDidChange:v8];
  }

  return result;
}

void sub_1EA0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _notifyDelegateIfNeeded];
}

void sub_204C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 48));
  [WeakRetained isCameraCapturingDidChange:*(*(a1 + 32) + 8)];
}

void sub_211C(id a1)
{
  qword_11B10 = os_log_create("com.apple.BarcodeSupport.NFCControlCenterModule", "NFCCCameraMonitor");

  _objc_release_x1();
}

BOOL sub_2160(io_registry_entry_t a1, const __CFString *a2)
{
  CFProperty = IORegistryEntryCreateCFProperty(a1, a2, kCFAllocatorDefault, 0);
  if (!CFProperty)
  {
    return 0;
  }

  v3 = CFProperty;
  v4 = CFGetTypeID(CFProperty);
  v6 = v4 == CFBooleanGetTypeID() && v3 == kCFBooleanTrue;
  CFRelease(v3);
  return v6;
}

void sub_21D0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

id sub_25D8(uint64_t a1)
{
  result = [*(a1 + 32) isExpanded];
  if ((result & 1) == 0)
  {
    [*(a1 + 32) _didCollapse];
    [*(a1 + 32) scrollToTop:0];
    v3 = *(a1 + 32);

    return [v3 _setModuleState:0 animated:0];
  }

  return result;
}

void sub_28AC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_28C8(uint64_t a1, char a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    if (a2)
    {
      v6 = WeakRetained[5];
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_2A1C;
      v9[3] = &unk_C438;
      objc_copyWeak(&v10, (a1 + 32));
      v7[0] = _NSConcreteStackBlock;
      v7[1] = 3221225472;
      v7[2] = sub_2C10;
      v7[3] = &unk_C358;
      objc_copyWeak(&v8, (a1 + 32));
      [v6 startReaderWithDelegate:v5 errorHandler:v9 interruptionHandler:v7];
      objc_destroyWeak(&v8);
      objc_destroyWeak(&v10);
    }

    else
    {
      [WeakRetained _setModuleState:5 animated:1];
    }
  }
}

void sub_2A00(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  _Unwind_Resume(a1);
}

void sub_2A1C(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_2AAC;
  block[3] = &unk_C358;
  objc_copyWeak(&v2, (a1 + 32));
  dispatch_async(&_dispatch_main_q, block);
  objc_destroyWeak(&v2);
}

void sub_2AAC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _setModuleState:3 animated:1];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_2BD0;
    v7[3] = &unk_C410;
    objc_copyWeak(&v8, (a1 + 32));
    v4 = [NSTimer timerWithTimeInterval:0 repeats:v7 block:1.5];
    v5 = v3[7];
    v3[7] = v4;

    v6 = +[NSRunLoop mainRunLoop];
    [v6 addTimer:v3[7] forMode:NSRunLoopCommonModes];

    objc_destroyWeak(&v8);
  }
}

void sub_2BD0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _startReader];
}

void sub_2C10(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_2CA0;
  block[3] = &unk_C358;
  objc_copyWeak(&v2, (a1 + 32));
  dispatch_async(&_dispatch_main_q, block);
  objc_destroyWeak(&v2);
}

void sub_2CA0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _setModuleState:3 animated:1];
    [v2 _startReaderIfNeeded];
    WeakRetained = v2;
  }
}

void sub_2DF8(uint64_t a1)
{
  [*(a1 + 32) preferredExpandedContentWidth];
  v3 = v2;
  [*(a1 + 32) preferredExpandedContentHeight];
  [*(a1 + 32) setPreferredContentSize:{v3, v4}];
  v5 = [*(a1 + 32) view];
  [v5 setNeedsLayout];
}

void sub_2F80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2FA0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _stopTransientModuleStateTimer];
    [v2 _setModuleState:0 animated:1];
    WeakRetained = v2;
  }
}

void sub_3210(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_322C(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    if (a2)
    {
      [WeakRetained _startReader];
    }

    else
    {
      [WeakRetained _setModuleState:3 animated:1];
    }

    WeakRetained = v4;
  }
}

id sub_330C(uint64_t a1)
{
  *(*(a1 + 32) + 48) = *(a1 + 40);
  [*(a1 + 32) _stopTransientModuleStateTimer];
  v2 = *(a1 + 40);
  if ((v2 - 3) <= 1)
  {
    v3 = [*(a1 + 32) contentModuleContext];
    [v3 dismissModule];

    v2 = *(a1 + 40);
  }

  if (v2 == 6)
  {
    v4 = dispatch_time(0, 300000000);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_345C;
    block[3] = &unk_C380;
    block[4] = *(a1 + 32);
    dispatch_after(v4, &_dispatch_main_q, block);
    v2 = *(a1 + 40);
  }

  v5 = *(a1 + 32);
  if (v2 > 5)
  {
    if (v2 == 6)
    {
      v8 = 2;
      return [v5 _setModuleState:v8 animated:1];
    }

    if (v2 != 8)
    {
      v6 = v2 == 10;
      v7 = 3;
LABEL_12:
      if (v6)
      {
        v8 = v7;
      }

      else
      {
        v8 = 0;
      }

      return [v5 _setModuleState:v8 animated:1];
    }
  }

  else
  {
    if (!v2)
    {
      return [v5[5] disconnect];
    }

    if (v2 != 1)
    {
      v6 = v2 == 5;
      v7 = 1;
      goto LABEL_12;
    }
  }

  v8 = 3;
  return [v5 _setModuleState:v8 animated:1];
}

void sub_345C(uint64_t a1)
{
  v1 = [*(a1 + 32) contentModuleContext];
  [v1 dismissModule];
}

void sub_38F8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_3914(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    WeakRetained[48] = a2 == 1;
    [WeakRetained _updateAvailable];
    if (!a2)
    {
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_3A3C;
      v9[3] = &unk_C410;
      objc_copyWeak(&v10, (a1 + 32));
      v6 = [NSTimer timerWithTimeInterval:0 repeats:v9 block:1.5];
      v7 = v5[4];
      v5[4] = v6;

      v8 = +[NSRunLoop mainRunLoop];
      [v8 addTimer:v5[4] forMode:NSRunLoopCommonModes];

      objc_destroyWeak(&v10);
    }
  }
}

void sub_3A3C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _checkHardwareSupport];
}

id sub_443C(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 40) == 5)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = 1.0;
  }

  [*(v2 + 16) setAlpha:v3];
  v4 = *(a1 + 32);
  if (*(v4 + 40) == 5)
  {
    v5 = 1.0;
  }

  else
  {
    v5 = 0.0;
  }

  v6 = *(v4 + 24);

  return [v6 setAlpha:v5];
}

id sub_55B8(uint64_t a1)
{
  if (*(a1 + 40))
  {
    v2 = 1.0;
  }

  else
  {
    v2 = 0.0;
  }

  [*(*(a1 + 32) + 24) setAlpha:v2];
  if (*(a1 + 41))
  {
    v3 = 1.0;
  }

  else
  {
    v3 = 0.0;
  }

  [*(*(a1 + 32) + 32) setAlpha:v3];
  if (*(a1 + 42))
  {
    v4 = 1.0;
  }

  else
  {
    v4 = 0.0;
  }

  v5 = *(*(a1 + 32) + 40);

  return [v5 setAlpha:v4];
}

id sub_61AC(uint64_t a1)
{
  v1 = 1.0;
  if (*(a1 + 40))
  {
    v1 = 0.75;
  }

  return [*(a1 + 32) setAlpha:v1];
}