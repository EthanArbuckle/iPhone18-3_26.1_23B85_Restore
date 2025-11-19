void sub_1001F0FA0(NSObject *a1)
{
  oslog[2] = a1;
  oslog[1] = a1;
  v2 = [(objc_class *)a1[4].isa delegate];
  v3 = objc_opt_respondsToSelector() ^ 1;

  if (v3)
  {
    oslog[0] = _BYLoggingFacility();
    v7 = OS_LOG_TYPE_FAULT;
    if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_FAULT))
    {
      v4 = [(objc_class *)a1[4].isa delegate];
      location = NSStringFromSelector("proximityAutomatedDeviceEnrollmentController:wantsToDismissPairingWithError:");
      sub_100073058(buf, v4, location);
      _os_log_fault_impl(&_mh_execute_header, oslog[0], v7, "%{public}@ does not respond to %{public}@, bailing out.", buf, 0x16u);

      objc_storeStrong(&location, 0);
    }

    objc_storeStrong(oslog, 0);
  }

  else
  {
    v5 = [(objc_class *)a1[4].isa delegate];
    [v5 proximityAutomatedDeviceEnrollmentController:a1[4].isa wantsToDismissPairingWithError:a1[5].isa];
  }
}

void sub_1001F1248(NSObject *a1)
{
  oslog[2] = a1;
  oslog[1] = a1;
  v2 = [(objc_class *)a1[4].isa delegate];
  v3 = objc_opt_respondsToSelector() ^ 1;

  if (v3)
  {
    oslog[0] = _BYLoggingFacility();
    v7 = OS_LOG_TYPE_FAULT;
    if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_FAULT))
    {
      v4 = [(objc_class *)a1[4].isa delegate];
      location = NSStringFromSelector("proximityAutomatedDeviceEnrollmentController:wantsToTransitionToPairingWithPin:");
      sub_100073058(buf, v4, location);
      _os_log_fault_impl(&_mh_execute_header, oslog[0], v7, "%{public}@ does not respond to %{public}@, bailing out.", buf, 0x16u);

      objc_storeStrong(&location, 0);
    }

    objc_storeStrong(oslog, 0);
  }

  else
  {
    v5 = [(objc_class *)a1[4].isa delegate];
    [v5 proximityAutomatedDeviceEnrollmentController:a1[4].isa wantsToTransitionToPairingWithPin:a1[5].isa];
  }
}

void sub_1001F14F0(NSObject *a1)
{
  oslog[2] = a1;
  oslog[1] = a1;
  [(objc_class *)a1[4].isa setCurrentEnrollmentStatusViewModel:a1[5].isa];
  v2 = [(objc_class *)a1[4].isa delegate];
  v3 = objc_opt_respondsToSelector() ^ 1;

  if (v3)
  {
    oslog[0] = _BYLoggingFacility();
    v7 = OS_LOG_TYPE_FAULT;
    if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_FAULT))
    {
      v4 = [(objc_class *)a1[4].isa delegate];
      location = NSStringFromSelector("proximityAutomatedDeviceEnrollmentController:wantsToTransitionToEnrollmentWithInitialViewModel:");
      sub_100073058(buf, v4, location);
      _os_log_fault_impl(&_mh_execute_header, oslog[0], v7, "%{public}@ does not respond to %{public}@, bailing out.", buf, 0x16u);

      objc_storeStrong(&location, 0);
    }

    objc_storeStrong(oslog, 0);
  }

  else
  {
    v5 = [(objc_class *)a1[4].isa delegate];
    [v5 proximityAutomatedDeviceEnrollmentController:a1[4].isa wantsToTransitionToEnrollmentWithInitialViewModel:a1[5].isa];
  }
}

void sub_1001F17A4(NSObject *a1)
{
  oslog[2] = a1;
  oslog[1] = a1;
  [(objc_class *)a1[4].isa setCurrentEnrollmentStatusViewModel:a1[5].isa];
  v2 = [(objc_class *)a1[4].isa delegate];
  v3 = objc_opt_respondsToSelector() ^ 1;

  if (v3)
  {
    oslog[0] = _BYLoggingFacility();
    v7 = OS_LOG_TYPE_FAULT;
    if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_FAULT))
    {
      v4 = [(objc_class *)a1[4].isa delegate];
      location = NSStringFromSelector("proximityAutomatedDeviceEnrollmentController:hasEnrollmentStatusViewModelUpdate:");
      sub_100073058(buf, v4, location);
      _os_log_fault_impl(&_mh_execute_header, oslog[0], v7, "%{public}@ does not respond to %{public}@, bailing out.", buf, 0x16u);

      objc_storeStrong(&location, 0);
    }

    objc_storeStrong(oslog, 0);
  }

  else
  {
    v5 = [(objc_class *)a1[4].isa delegate];
    [v5 proximityAutomatedDeviceEnrollmentController:a1[4].isa hasEnrollmentStatusViewModelUpdate:a1[5].isa];
  }
}

void sub_1001F1AB8(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  (*(a1[4] + 16))(a1[4], location[0] == 0, location[0]);
  objc_storeStrong(location, 0);
}

void sub_1001F1C18(NSObject *a1)
{
  oslog[2] = a1;
  oslog[1] = a1;
  v2 = [(objc_class *)a1[4].isa delegate];
  v3 = objc_opt_respondsToSelector() ^ 1;

  if (v3)
  {
    oslog[0] = _BYLoggingFacility();
    v7 = OS_LOG_TYPE_FAULT;
    if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_FAULT))
    {
      v4 = [(objc_class *)a1[4].isa delegate];
      location = NSStringFromSelector("proximityAutomatedDeviceEnrollmentControllerWantsToTransitionToCompletion:");
      sub_100073058(buf, v4, location);
      _os_log_fault_impl(&_mh_execute_header, oslog[0], v7, "%{public}@ does not respond to %{public}@, bailing out.", buf, 0x16u);

      objc_storeStrong(&location, 0);
    }

    objc_storeStrong(oslog, 0);
  }

  else
  {
    v5 = [(objc_class *)a1[4].isa delegate];
    [v5 proximityAutomatedDeviceEnrollmentControllerWantsToTransitionToCompletion:a1[4].isa];
  }
}

void sub_1001F1E78(NSObject *a1)
{
  oslog[2] = a1;
  oslog[1] = a1;
  v2 = [(objc_class *)a1[4].isa delegate];
  v3 = objc_opt_respondsToSelector() ^ 1;

  if (v3)
  {
    oslog[0] = _BYLoggingFacility();
    v7 = OS_LOG_TYPE_FAULT;
    if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_FAULT))
    {
      v4 = [(objc_class *)a1[4].isa delegate];
      location = NSStringFromSelector("proximityAutomatedDeviceEnrollmentControllerWantsToDisplayShutdownUI:");
      sub_100073058(buf, v4, location);
      _os_log_fault_impl(&_mh_execute_header, oslog[0], v7, "%{public}@ does not respond to %{public}@, bailing out.", buf, 0x16u);

      objc_storeStrong(&location, 0);
    }

    objc_storeStrong(oslog, 0);
  }

  else
  {
    v5 = [(objc_class *)a1[4].isa delegate];
    [v5 proximityAutomatedDeviceEnrollmentControllerWantsToDisplayShutdownUI:a1[4].isa];
  }
}

void sub_1001F3478(id *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v12 = a1;
  if ([location[0] length])
  {
    v3 = &_dispatch_main_q;
    v4 = _NSConcreteStackBlock;
    v5 = -1073741824;
    v6 = 0;
    v7 = sub_1001F35A4;
    v8 = &unk_10032B838;
    v9 = location[0];
    v10 = a1[4];
    dispatch_async(v3, &v4);

    objc_storeStrong(&v10, 0);
    objc_storeStrong(&v9, 0);
    v11 = 0;
  }

  else
  {
    v11 = 1;
  }

  objc_storeStrong(location, 0);
}

void sub_1001F35A4(uint64_t a1)
{
  location[2] = a1;
  location[1] = a1;
  v2 = +[NSBundle mainBundle];
  v3 = [(NSBundle *)v2 localizedStringForKey:0x100339000 value:&stru_10032F900 table:@"Migration"];
  location[0] = [NSString localizedStringWithFormat:v3, *(a1 + 32)];

  [*(a1 + 40) setProgressTitle:location[0]];
  objc_storeStrong(location, 0);
}

void sub_1001F3870(uint64_t a1)
{
  v1 = [*(a1 + 32) migrationSourceClient];
  [v1 cancel];
}

void sub_1001F3AEC(uint64_t a1)
{
  v10[2] = a1;
  v10[1] = a1;
  [*(a1 + 32) setError:*(a1 + 40)];
  v2 = [*(a1 + 32) presentedViewController];

  if (v2)
  {
    v3 = [*(a1 + 32) presentedViewController];
    v5 = _NSConcreteStackBlock;
    v6 = -1073741824;
    v7 = 0;
    v8 = sub_1001F3C20;
    v9 = &unk_10032B0D0;
    v10[0] = *(a1 + 32);
    [v3 dismissViewControllerAnimated:1 completion:&v5];

    objc_storeStrong(v10, 0);
  }

  else
  {
    v4 = [*(a1 + 32) delegate];
    [v4 flowItemDone:*(a1 + 32)];
  }
}

void sub_1001F3C20(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 flowItemDone:*(a1 + 32)];
}

void sub_1001F486C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, int a11, _Unwind_Exception *exception_object)
{
  objc_destroyWeak(v12);
  objc_destroyWeak((v13 - 48));
  _Unwind_Resume(a1);
}

void sub_1001F48A0(id *a1)
{
  location[2] = a1;
  location[1] = a1;
  location[0] = objc_loadWeakRetained(a1 + 4);
  if (location[0])
  {
    v1 = &_dispatch_main_q;
    block = _NSConcreteStackBlock;
    v3 = -1073741824;
    v4 = 0;
    v5 = sub_1001F499C;
    v6 = &unk_10032B0D0;
    v7 = location[0];
    dispatch_async(v1, &block);

    objc_storeStrong(&v7, 0);
    v8 = 0;
  }

  else
  {
    v8 = 1;
  }

  objc_storeStrong(location, 0);
}

id sub_1001F499C(uint64_t a1)
{
  v2 = [*(a1 + 32) startDeviceMigrationBlock];
  v2[2](v2);

  return [*(a1 + 32) _updateAnalyticsWithChoice:@"migration"];
}

void sub_1001F4B28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, int a11, _Unwind_Exception *exception_object)
{
  objc_destroyWeak(v12);
  objc_destroyWeak((v13 - 48));
  _Unwind_Resume(a1);
}

void sub_1001F4B5C(id *a1)
{
  location[2] = a1;
  location[1] = a1;
  location[0] = objc_loadWeakRetained(a1 + 4);
  if (location[0])
  {
    v1 = &_dispatch_main_q;
    block = _NSConcreteStackBlock;
    v3 = -1073741824;
    v4 = 0;
    v5 = sub_1001F4C58;
    v6 = &unk_10032B0D0;
    v7 = location[0];
    dispatch_async(v1, &block);

    objc_storeStrong(&v7, 0);
    v8 = 0;
  }

  else
  {
    v8 = 1;
  }

  objc_storeStrong(location, 0);
}

id sub_1001F4C58(uint64_t a1)
{
  v2 = [*(a1 + 32) miscState];
  v3 = [v2 migrationManager];
  [v3 cancelWithCause:3];

  return [*(a1 + 32) _updateAnalyticsWithChoice:@"other"];
}

void sub_1001F5498(id *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v9 = 0;
  objc_storeStrong(&v9, a3);
  v5 = +[UIApplication sharedApplication];
  v6 = [(UIApplication *)v5 applicationState];

  if ((!v6 || (v6 - 1) >= 2) && IOHIDEventGetType() == 3 && IOHIDEventGetIntegerValue())
  {
    IntegerValue = IOHIDEventGetIntegerValue();
    v7 = 1;
    if (IntegerValue != 48)
    {
      v7 = 1;
      if (IntegerValue != 64)
      {
        v7 = 1;
        if (IntegerValue != 233)
        {
          v7 = 1;
          if (IntegerValue != 234)
          {
            v7 = IntegerValue == 149;
          }
        }
      }
    }

    [a1[4] setAnyButtonPressed:v7];
  }

  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

id *sub_1001F65B4(id *result, char a2)
{
  if (a2)
  {
    return [result[4] selectChoice:result[5]];
  }

  return result;
}

uint64_t sub_1001F71CC(uint64_t result)
{
  if (*(result + 32))
  {
    return (*(*(result + 32) + 16))(*(result + 32), 1);
  }

  return result;
}

void sub_1001F7598(uint64_t a1)
{
  v2 = [*(a1 + 32) deferredExtendedInitCompletionBlock];

  if (v2)
  {
    v3 = [*(a1 + 32) deferredExtendedInitCompletionBlock];
    v3[2](v3);

    [*(a1 + 32) setDeferredExtendedInitCompletionBlock:0];
  }
}

void sub_1001F7E14(id *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v3 = +[NSFileManager defaultManager];
  [(NSFileManager *)v3 removeItemAtPath:@"/var/mobile/Media/iTunes_Control/iTunes/ShowLicense" error:0];

  +[BYWarranty acknowledge];
  v4 = [a1[4] iOSTermsController];

  if (v4)
  {
    v5 = [a1[4] iOSTermsController];
    [v5 didAgree];
  }

  v6 = [a1[5] navigationController];
  [v6 dismissViewControllerAnimated:1 completion:0];

  v7 = [a1[4] delegate];
  [v7 flowItemDone:a1[4]];

  objc_storeStrong(location, 0);
}

void sub_1001F8408(uint64_t a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v24 = 0;
  objc_storeStrong(&v24, a3);
  v23[1] = a1;
  v23[0] = [location[0] preferredDescriptor];
  v22 = [location[0] alternateDescriptor];
  v21 = [location[0] latestUpdate];
  oslog = _BYLoggingFacility();
  v19 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [v23[0] humanReadableUpdateName];
    v6 = [v22 humanReadableUpdateName];
    v7 = [v21 humanReadableUpdateName];
    sub_1001F87C8(buf, v5, v23[0], v6, v22, v7, v21);
    _os_log_impl(&_mh_execute_header, oslog, v19, "Did finish scanForUpdates:\n\tpreferred update %{public}@ (%p)\n\talternate update %{public}@ (%p)\n\tlatest update %{public}@ (%p)", buf, 0x3Eu);
  }

  objc_storeStrong(&oslog, 0);
  [*(a1 + 32) setPreferredUpdate:v23[0]];
  [*(a1 + 32) setAlternateUpdate:v22];
  [*(a1 + 32) setLatestUpdate:v21];
  v8 = +[NSDate date];
  [*(a1 + 32) setLastScanDate:v8];

  v9 = dispatch_time(0, 300000000000);
  v10 = &_dispatch_main_q;
  block = _NSConcreteStackBlock;
  v13 = -1073741824;
  v14 = 0;
  v15 = sub_1001F880C;
  v16 = &unk_10032B838;
  v17 = *(a1 + 32);
  v18 = v23[0];
  dispatch_after(v9, v10, &block);

  if (*(a1 + 40))
  {
    v11 = [v24 domain];
    if ([v11 isEqualToString:SUErrorDomain])
    {
      [v24 code];
    }

    (*(*(a1 + 40) + 16))();
  }

  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v21, 0);
  objc_storeStrong(&v22, 0);
  objc_storeStrong(v23, 0);
  objc_storeStrong(&v24, 0);
  objc_storeStrong(location, 0);
}

double sub_1001F87C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *&result = 138544642;
  *a1 = 138544642;
  *(a1 + 4) = a2;
  *(a1 + 12) = 2048;
  *(a1 + 14) = a3;
  *(a1 + 22) = 2114;
  *(a1 + 24) = a4;
  *(a1 + 32) = 2048;
  *(a1 + 34) = a5;
  *(a1 + 42) = 2114;
  *(a1 + 44) = a6;
  *(a1 + 52) = 2048;
  *(a1 + 54) = a7;
  return result;
}

void sub_1001F880C(uint64_t a1)
{
  v2 = [*(a1 + 32) preferredUpdate];
  v3 = [v2 isEqual:*(a1 + 40)];

  if (v3)
  {
    [*(a1 + 32) reset];
  }
}

void sub_1001F8CD4(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v12 = 0;
  objc_storeStrong(&v12, a3);
  v11 = 0;
  objc_storeStrong(&v11, a4);
  v10 = 0;
  objc_storeStrong(&v10, a5);
  if (*(a1 + 48) & 1) != 0 && ([*(a1 + 32) BOOLValue])
  {
    v9 = +[CTCellularPlanManager sharedManager];
    [v9 setUserInPurchaseFlow:0];
  }

  (*(*(a1 + 40) + 16))();
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(location, 0);
}

void sub_1001F9104(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v26 = 0;
  objc_storeStrong(&v26, a3);
  v25 = 0;
  objc_storeStrong(&v25, a4);
  v24 = 0;
  objc_storeStrong(&v24, a5);
  v23 = a1;
  if (v24 && *(a1 + 48) < *(a1 + 56))
  {
    v22 = [*(a1 + 32) _retryDelaySecondsForAttemptCount:*(a1 + 48)];
    oslog = _BYLoggingFacility();
    v20 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      sub_100077E48(buf, v22);
      _os_log_impl(&_mh_execute_header, oslog, v20, "Software update scan failed; will retry in %ld seconds...", buf, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
    v9 = dispatch_time(0, 1000000000 * v22);
    v10 = &_dispatch_main_q;
    block = _NSConcreteStackBlock;
    v12 = -1073741824;
    v13 = 0;
    v14 = sub_1001F93D0;
    v15 = &unk_10032EF88;
    v16 = *(a1 + 32);
    v18 = *(a1 + 64) & 1;
    v19 = *(a1 + 65) & 1;
    v17[1] = *(a1 + 48);
    v17[2] = *(a1 + 56);
    v17[0] = *(a1 + 40);
    dispatch_after(v9, v10, &block);

    objc_storeStrong(v17, 0);
    objc_storeStrong(&v16, 0);
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }

  objc_storeStrong(&v24, 0);
  objc_storeStrong(&v25, 0);
  objc_storeStrong(&v26, 0);
  objc_storeStrong(location, 0);
}

void sub_1001F96A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, int a11, _Unwind_Exception *exception_object, id location)
{
  objc_storeStrong(&location, 0);
  objc_storeStrong((v13 - 24), 0);
  _Unwind_Resume(a1);
}

uint64_t *sub_1001FA118(uint64_t *a1, unint64_t a2)
{
  v8 = a1;
  v7 = a2;
  result = sub_1001FBC94(a1);
  if (a2 > result)
  {
    if (v7 > sub_1001FBCBC(a1))
    {
      sub_1001FBD14();
    }

    v5 = sub_1001FBD24(a1);
    sub_1001FBD4C(v6, v7, v5, a1);
    sub_1001FBD9C(a1, v6);
    return sub_1001FBEA4(v6);
  }

  return result;
}

void **sub_1001FA204(uint64_t *a1, unint64_t a2)
{
  v8 = a1;
  v7 = a2;
  result = sub_1001FC910(a1);
  if (a2 > result)
  {
    if (v7 > sub_1001FCAD8(a1))
    {
      sub_1001FCB2C();
    }

    v5 = sub_1001FC934(a1);
    sub_1001FCB3C(v6, v7, v5, a1);
    sub_1001FCB8C(a1, v6);
    return sub_1001FCC90(v6);
  }

  return result;
}

uint64_t sub_1001FA2B8(uint64_t *a1, void **a2, float32x4_t *a3)
{
  v5 = a1[1];
  if (v5 >= a1[2])
  {
    result = sub_1001FD184(a1, a2, a3);
    v6 = result;
  }

  else
  {
    result = sub_1001FD0F4(a1, a2, a3);
    v6 = v5 + 64;
  }

  a1[1] = v6;
  return result;
}

uint64_t sub_1001FA340(uint64_t *a1, uint64_t *a2)
{
  v4 = a1[1];
  if (v4 >= a1[2])
  {
    result = sub_1001FE09C(a1, a2);
    v5 = result;
  }

  else
  {
    result = sub_1001FE018(a1, a2);
    v5 = v4 + 24;
  }

  a1[1] = v5;
  return result;
}

double sub_1001FB408(float32x4_t *a1, float a2)
{
  v2 = 1.0 - a2;
  __asm { FMOV            V2.4S, #3.0 }

  *&result = vaddq_f32(vaddq_f32(vaddq_f32(vmulq_n_f32(vmulq_n_f32(vmulq_n_f32(*a1, v2), v2), v2), vmulq_n_f32(vmulq_n_f32(vmulq_n_f32(vmulq_f32(a1[1], _Q2), a2), v2), v2)), vmulq_n_f32(vmulq_n_f32(vmulq_n_f32(vmulq_f32(a1[2], _Q2), a2), a2), v2)), vmulq_n_f32(vmulq_n_f32(vmulq_n_f32(a1[3], a2), a2), a2)).u64[0];
  return result;
}

double sub_1001FB4DC(float32x4_t *a1, float a2)
{
  v2 = 1.0 - a2;
  __asm
  {
    FMOV            V2.4S, #-3.0
    FMOV            V3.4S, #3.0
    FMOV            V4.4S, #-6.0
  }

  v12 = vmulq_n_f32(vmulq_n_f32(vmulq_f32(a1[1], _Q4), v2), a2);
  __asm { FMOV            V4.4S, #6.0 }

  *&result = vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(vmulq_n_f32(vmulq_n_f32(vmulq_f32(*a1, _Q2), v2), v2), vmulq_n_f32(vmulq_n_f32(vmulq_f32(a1[1], _Q3), v2), v2)), v12), vmulq_n_f32(vmulq_n_f32(vmulq_f32(a1[2], _Q4), v2), a2)), vmulq_n_f32(vmulq_n_f32(vmulq_f32(a1[2], _Q2), a2), a2)), vmulq_n_f32(vmulq_n_f32(vmulq_f32(a1[3], _Q3), a2), a2)).u64[0];
  return result;
}

uint64_t sub_1001FB61C(uint64_t *a1, void *a2)
{
  v4 = a1[1];
  if (v4 >= a1[2])
  {
    result = sub_1001FF758(a1, a2);
    v5 = result;
  }

  else
  {
    result = sub_1001FF6D4(a1, a2);
    v5 = v4 + 24;
  }

  a1[1] = v5;
  return result;
}

uint64_t sub_1001FB698(uint64_t *a1, double *a2, double *a3, double *a4, double *a5)
{
  v7 = a1[1];
  if (v7 >= a1[2])
  {
    result = sub_10020018C(a1, a2, a3, a4, a5);
    v8 = result;
  }

  else
  {
    result = sub_1002000F0(a1, a2, a3, a4, a5);
    v8 = v7 + 24;
  }

  a1[1] = v8;
  return result;
}

uint64_t sub_1001FB8B8(void *a1)
{
  if (sub_1001FB890(a1))
  {
    std::__libcpp_verbose_abort("%s", "/AppleInternal/Library/BuildRoots/4~CAoWugC5QmmFqzOYKuOQOcdrhucW-RWkP0Yhj4U/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/include/c++/v1/__vector/vector.h:426: assertion !empty() failed: front() called on an empty vector\n");
  }

  return *a1;
}

uint64_t sub_1001FB914(void *a1)
{
  if (sub_1001FB890(a1))
  {
    std::__libcpp_verbose_abort("%s", "/AppleInternal/Library/BuildRoots/4~CAoWugC5QmmFqzOYKuOQOcdrhucW-RWkP0Yhj4U/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/include/c++/v1/__vector/vector.h:434: assertion !empty() failed: back() called on an empty vector\n");
  }

  return a1[1] - 24;
}

uint64_t sub_1001FB99C(void *a1, unint64_t a2)
{
  if (a2 >= sub_1001FB974(a1))
  {
    std::__libcpp_verbose_abort("%s", "/AppleInternal/Library/BuildRoots/4~CAoWugC5QmmFqzOYKuOQOcdrhucW-RWkP0Yhj4U/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/include/c++/v1/__vector/vector.h:407: assertion __n < size() failed: vector[] index out of bounds\n");
  }

  return *a1 + 24 * a2;
}

uint64_t sub_1001FBCBC(uint64_t a1)
{
  v3[1] = a1;
  sub_1001FBF0C();
  v3[0] = 0xAAAAAAAAAAAAAAALL;
  sub_1001FBF34();
  v2 = 0x7FFFFFFFFFFFFFFFLL;
  return *sub_1001FBEDC(v3, &v2);
}

void sub_1001FBD9C(uint64_t *a1, uint64_t *a2)
{
  sub_1001FC31C();
  v7 = a2[1] + 24 * ((a1[1] - *a1) / -24);
  sub_1001FC39C();
  v4 = v3;
  sub_1001FC39C();
  v6 = v5;
  sub_1001FC39C();
  sub_1001FC32C(a1, v4, v6);
  a2[1] = v7;
  a1[1] = *a1;
  sub_1001FC3B0(a1, a2 + 1);
  sub_1001FC3B0(a1 + 1, a2 + 2);
  sub_1001FC3B0(a1 + 2, a2 + 3);
  *a2 = a2[1];
  sub_1001FBD24(a1);
  sub_1001FC3EC();
}

void *sub_1001FBF60(void *a1, void *a2)
{
  if (sub_1001FBFA4(&v5, a2, a1))
  {
    return a2;
  }

  else
  {
    return a1;
  }
}

void sub_1001FBFEC()
{
  exception = __cxa_allocate_exception(0x10uLL);
  sub_1001FC060(exception, "vector");
}

std::logic_error *sub_1001FC0A0(std::logic_error *a1, const char *a2)
{
  std::logic_error::logic_error(a1, a2);
  return a1;
}

void *sub_1001FC0FC(void *result, unint64_t a2, uint64_t a3, uint64_t a4)
{
  result[3] = 0;
  result[4] = a4;
  if (a2)
  {
    sub_1001FC1A8(result[4], a2);
  }

  *result = 0;
  v4 = *result + 24 * a3;
  result[2] = v4;
  result[1] = v4;
  result[3] = *result;
  return result;
}

void sub_1001FC1EC(uint64_t a1, unint64_t a2)
{
  sub_1001FBF0C();
  if (a2 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_1001FC240();
  }

  sub_1001FC274();
}

void sub_1001FC240()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
}

void *sub_1001FC32C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1001FC39C();
  v4 = v3;
  sub_1001FC39C();
  return memcpy(v4, v5, 24 * ((a3 - a2) / 24));
}

uint64_t *sub_1001FC3B0(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *result = *a2;
  *a2 = v2;
  return result;
}

uint64_t *sub_1001FC400(uint64_t *a1)
{
  sub_1001FC46C(a1);
  if (*a1)
  {
    v2 = a1[4];
    v3 = *a1;
    sub_1001FC4D0(a1);
    sub_1001FC498(v2, v3);
  }

  return a1;
}

uint64_t *sub_1001FC528(uint64_t *result, uint64_t a2)
{
  v2 = result;
  while (a2 != v2[2])
  {
    v3 = v2[4];
    v2[2] -= 24;
    sub_1001FC39C();
    result = sub_1001FC594(v3, v4);
  }

  return result;
}

void *sub_1001FC690(void *a1)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  sub_1001FC6D4(a1);
  return a1;
}

uint64_t *sub_1001FC758(uint64_t *a1)
{
  v3[1] = a1;
  sub_1001FC7A4(v3, a1);
  sub_1001FC7E4(v3);
  return a1;
}

void sub_1001FC7E4(uint64_t **a1)
{
  if (**a1)
  {
    sub_1001FC878(*a1);
    sub_1001FC8C8();
    v2 = *a1;
    v3 = **a1;
    sub_1001FC910(*a1);
    sub_1001FC8D8(v2, v3);
  }
}

void sub_1001FC878(uint64_t *a1)
{
  sub_1001FC934(a1);
  sub_1001FC958(a1, *a1);
  sub_1001FC9D0();
}

void sub_1001FC958(uint64_t a1, uint64_t a2)
{
  for (i = *(a1 + 8); a2 != i; i -= 64)
  {
    sub_1001FCA14();
    sub_1001FC9E4();
  }

  *(a1 + 8) = a2;
}

uint64_t sub_1001FCAD8(uint64_t a1)
{
  v3[1] = a1;
  sub_1001FCCC8();
  v3[0] = 0x3FFFFFFFFFFFFFFLL;
  sub_1001FBF34();
  v2 = 0x7FFFFFFFFFFFFFFFLL;
  return *sub_1001FBEDC(v3, &v2);
}

void sub_1001FCB8C(uint64_t *a1, uint64_t *a2)
{
  sub_1001FC8C8();
  v7 = a2[1] - ((a1[1] - *a1) >> 6 << 6);
  sub_1001FCA14();
  v4 = v3;
  sub_1001FCA14();
  v6 = v5;
  sub_1001FCA14();
  sub_1001FCEE4(a1, v4, v6);
  a2[1] = v7;
  a1[1] = *a1;
  sub_1001FCF4C(a1, a2 + 1);
  sub_1001FCF4C(a1 + 1, a2 + 2);
  sub_1001FCF4C(a1 + 2, a2 + 3);
  *a2 = a2[1];
  sub_1001FC934(a1);
  sub_1001FCF88();
}

void *sub_1001FCD00(void *result, unint64_t a2, uint64_t a3, uint64_t a4)
{
  result[3] = 0;
  result[4] = a4;
  if (a2)
  {
    sub_1001FCDAC(result[4], a2);
  }

  *result = 0;
  v4 = *result + (a3 << 6);
  result[2] = v4;
  result[1] = v4;
  result[3] = *result;
  return result;
}

void sub_1001FCDF0(uint64_t a1, unint64_t a2)
{
  sub_1001FCCC8();
  if (a2 > 0x3FFFFFFFFFFFFFFLL)
  {
    sub_1001FC240();
  }

  sub_1001FCE40();
}

void *sub_1001FCEE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1001FCA14();
  v4 = v3;
  sub_1001FCA14();
  return memcpy(v4, v5, (a3 - a2) >> 6 << 6);
}

uint64_t *sub_1001FCF4C(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *result = *a2;
  *a2 = v2;
  return result;
}

void **sub_1001FCF9C(void **a1)
{
  sub_1001FD008(a1);
  if (*a1)
  {
    v2 = a1[4];
    v3 = *a1;
    sub_1001FD034(a1);
    sub_1001FC8D8(v2, v3);
  }

  return a1;
}

void sub_1001FD088(uint64_t a1, uint64_t a2)
{
  while (a2 != *(a1 + 16))
  {
    *(a1 + 16) -= 64;
    sub_1001FCA14();
    sub_1001FC9E4();
  }
}

void *sub_1001FD0F4(uint64_t a1, void **a2, float32x4_t *a3)
{
  v10 = a1;
  v9 = a2;
  v8 = a3;
  sub_1001FD250(&v6, a1, 1);
  sub_1001FCA14();
  sub_1001FD298(a1, v4, v9, v8);
  v7 += 64;
  return sub_1001FD2D8(&v6);
}

uint64_t sub_1001FD184(uint64_t *a1, void **a2, float32x4_t *a3)
{
  v14 = a1;
  v13 = a2;
  v12 = a3;
  v4 = sub_1001FC934(a1);
  v5 = sub_1001FDF00(a1, v4 + 1);
  v6 = sub_1001FC934(a1);
  sub_1001FCB3C(v10, v5, v6, a1);
  sub_1001FCA14();
  sub_1001FD298(a1, v7, v13, v12);
  v11 += 64;
  sub_1001FCB8C(a1, v10);
  v8 = a1[1];
  sub_1001FCC90(v10);
  return v8;
}

void *sub_1001FD310(void *result, uint64_t a2, uint64_t a3)
{
  *result = a2;
  result[1] = *(a2 + 8);
  result[2] = *(a2 + 8) + (a3 << 6);
  return result;
}

float32x4_t *sub_1001FD39C(float32x4_t *a1, void *a2, float32x4_t a3)
{
  v7 = a1;
  location = 0;
  objc_storeStrong(&location, a2);
  v3 = v7;
  sub_1001FD420(v7, location, a3);
  objc_storeStrong(&location, 0);
  return v3;
}

float32x4_t *sub_1001FD420(float32x4_t *a1, void *a2, float32x4_t a3)
{
  v61 = a1;
  location = 0;
  objc_storeStrong(&location, a2);
  v3 = v61;
  v4 = [location objectForKeyedSubscript:@"p0"];
  v72 = 0;
  objc_storeStrong(&v72, v4);
  if (v72 && [v72 count] == 4)
  {
    v5 = [v72 objectAtIndexedSubscript:0];
    [v5 floatValue];
    v7 = v6;
    v8 = [v72 objectAtIndexedSubscript:1];
    [v8 floatValue];
    v10 = v9;
    v11 = [v72 objectAtIndexedSubscript:2];
    [v11 floatValue];
    v13 = v12;
    v14 = [v72 objectAtIndexedSubscript:3];
    [v14 floatValue];
    v86 = v7;
    v85 = v10;
    v84 = v13;
    v83 = v15;
    v82.i64[0] = __PAIR64__(v10, v7);
    v82.i64[1] = __PAIR64__(v15, v13);
    v73 = v82;

    v71 = 1;
  }

  else
  {
    v81 = 0;
    v80 = 0;
    v79 = 0;
    v78 = 0;
    v74 = 0;
    v75 = 0;
    v76 = 0;
    v77 = 0;
    v73 = 0u;
    v71 = 1;
  }

  objc_storeStrong(&v72, 0);
  v58 = vmulq_f32(v73, a3);

  *v3 = v58;
  v16 = v3 + 1;
  v17 = [location objectForKeyedSubscript:@"p1"];
  v69 = 0;
  objc_storeStrong(&v69, v17);
  if (v69 && [v69 count] == 4)
  {
    v18 = [v69 objectAtIndexedSubscript:0];
    [v18 floatValue];
    v20 = v19;
    v21 = [v69 objectAtIndexedSubscript:1];
    [v21 floatValue];
    v23 = v22;
    v24 = [v69 objectAtIndexedSubscript:2];
    [v24 floatValue];
    v26 = v25;
    v27 = [v69 objectAtIndexedSubscript:3];
    [v27 floatValue];
    v99 = v20;
    v98 = v23;
    v97 = v26;
    v96 = v28;
    v95.i64[0] = __PAIR64__(v23, v20);
    v95.i64[1] = __PAIR64__(v28, v26);
    v70 = v95;

    v68 = 1;
    v16 = v3 + 1;
  }

  else
  {
    v94 = 0;
    v93 = 0;
    v92 = 0;
    v91 = 0;
    v87 = 0;
    v88 = 0;
    v89 = 0;
    v90 = 0;
    v70 = 0u;
    v68 = 1;
  }

  objc_storeStrong(&v69, 0);
  v57 = vmulq_f32(v70, a3);

  *v16 = v57;
  v29 = v3 + 2;
  v30 = [location objectForKeyedSubscript:@"p2"];
  v66 = 0;
  objc_storeStrong(&v66, v30);
  if (v66 && [v66 count] == 4)
  {
    v31 = [v66 objectAtIndexedSubscript:0];
    [v31 floatValue];
    v33 = v32;
    v34 = [v66 objectAtIndexedSubscript:1];
    [v34 floatValue];
    v36 = v35;
    v37 = [v66 objectAtIndexedSubscript:2];
    [v37 floatValue];
    v39 = v38;
    v40 = [v66 objectAtIndexedSubscript:3];
    [v40 floatValue];
    v112 = v33;
    v111 = v36;
    v110 = v39;
    v109 = v41;
    v108.i64[0] = __PAIR64__(v36, v33);
    v108.i64[1] = __PAIR64__(v41, v39);
    v67 = v108;

    v65 = 1;
    v29 = v3 + 2;
  }

  else
  {
    v107 = 0;
    v106 = 0;
    v105 = 0;
    v104 = 0;
    v100 = 0;
    v101 = 0;
    v102 = 0;
    v103 = 0;
    v67 = 0u;
    v65 = 1;
  }

  objc_storeStrong(&v66, 0);
  v56 = vmulq_f32(v67, a3);

  *v29 = v56;
  v42 = [location objectForKeyedSubscript:@"p3"];
  v63 = 0;
  objc_storeStrong(&v63, v42);
  if (v63 && [v63 count] == 4)
  {
    v43 = [v63 objectAtIndexedSubscript:0];
    [v43 floatValue];
    v45 = v44;
    v46 = [v63 objectAtIndexedSubscript:1];
    [v46 floatValue];
    v48 = v47;
    v49 = [v63 objectAtIndexedSubscript:2];
    [v49 floatValue];
    v51 = v50;
    v52 = [v63 objectAtIndexedSubscript:3];
    [v52 floatValue];
    v125 = v45;
    v124 = v48;
    v123 = v51;
    v122 = v53;
    v121.i64[0] = __PAIR64__(v48, v45);
    v121.i64[1] = __PAIR64__(v53, v51);
    v64 = v121;

    v62 = 1;
  }

  else
  {
    v120 = 0;
    v119 = 0;
    v118 = 0;
    v117 = 0;
    v113 = 0;
    v114 = 0;
    v115 = 0;
    v116 = 0;
    v64 = 0u;
    v62 = 1;
  }

  objc_storeStrong(&v63, 0);
  v55 = vmulq_f32(v64, a3);

  v3[3] = v55;
  objc_storeStrong(&location, 0);
  return v3;
}

unint64_t sub_1001FDF00(void *a1, uint64_t a2)
{
  v7[1] = a1;
  v7[0] = a2;
  v6 = sub_1001FCAD8(a1);
  if (v7[0] > v6)
  {
    sub_1001FCB2C();
  }

  v5 = sub_1001FC910(a1);
  if (v5 >= v6 >> 1)
  {
    return v6;
  }

  v4 = 2 * v5;
  return *sub_1001FDFA4(&v4, v7);
}

void *sub_1001FDFD4(void *a1, void *a2)
{
  if (sub_1001FBFA4(&v5, a1, a2))
  {
    return a2;
  }

  else
  {
    return a1;
  }
}

void *sub_1001FE018(uint64_t a1, uint64_t *a2)
{
  v8 = a1;
  v7 = a2;
  sub_1001FE160(&v5, a1);
  sub_1001FC39C();
  sub_1001FE1AC(a1, v3, v7);
  v6 += 24;
  return sub_1001FE1E4(&v5);
}

uint64_t sub_1001FE09C(uint64_t *a1, uint64_t *a2)
{
  v12 = a1;
  v11 = a2;
  v3 = sub_1001FBD24(a1);
  v4 = sub_1001FEC48(a1, v3 + 1);
  v5 = sub_1001FBD24(a1);
  sub_1001FBD4C(v9, v4, v5, a1);
  sub_1001FC39C();
  sub_1001FE1AC(a1, v6, v11);
  v10 += 24;
  sub_1001FBD9C(a1, v9);
  v7 = a1[1];
  sub_1001FBEA4(v9);
  return v7;
}

void *sub_1001FE21C(void *result, uint64_t a2, uint64_t a3)
{
  *result = a2;
  result[1] = *(a2 + 8);
  result[2] = *(a2 + 8) + 24 * a3;
  return result;
}

void *sub_1001FE2D8(void *a1, uint64_t *a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  sub_1001FE354();
  v3 = *a2;
  v4 = a2[1];
  v5 = sub_1001FC934(a2);
  sub_1001FE364(a1, v3, v4, v5);
  return a1;
}

uint64_t sub_1001FE364(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  sub_1001FC7A4(&v6, a1);
  sub_1001FE418(v7, v6);
  if (v8)
  {
    sub_1001FE44C(a1, v8);
  }

  sub_1001FE55C(v7);
  return sub_1001FE578(v7);
}

void sub_1001FE44C(uint64_t a1, unint64_t a2)
{
  if (a2 > sub_1001FCAD8(a1))
  {
    sub_1001FCB2C();
  }

  sub_1001FCDAC(a1, a2);
}

void *sub_1001FE4D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  sub_1001FD250(&v6, a1, a4);
  v7 = sub_1001FE614(a1, v10, v9, v7);
  return sub_1001FD2D8(&v6);
}

uint64_t sub_1001FE5F0(uint64_t result, uint64_t a2)
{
  *result = a2;
  *(result + 8) = 0;
  return result;
}

uint64_t sub_1001FE614(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_1001FE69C(a2, a3);
  v6 = v5;
  sub_1001FE730();
  v8 = sub_1001FE6F4(a1, v4, v6, v7);
  return sub_1001FE758(a4, v8);
}

uint64_t sub_1001FE69C(uint64_t a1, uint64_t a2)
{
  v6[2] = a1;
  v6[1] = a2;
  sub_1001FE730();
  v6[0] = v2;
  sub_1001FE730();
  v5 = v3;
  return sub_1001FE788(v6, &v5);
}

void *sub_1001FE80C(void *result, void *a2, void *a3)
{
  *result = *a2;
  result[1] = *a3;
  return result;
}

uint64_t sub_1001FE8CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v20 = a1;
  v19 = a2;
  v18 = a3;
  v3 = sub_1001FE69C(a1, a2);
  v17 = v4;
  v16 = v3;
  v5 = v3;
  v6 = v4;
  sub_1001FE730();
  v8 = sub_1001FE978(&v13, v5, v6, v7);
  v15 = v9;
  v14 = v8;
  v12 = sub_1001FE9C4(v20, v8);
  v11 = sub_1001FE758(v18, v15);
  return sub_1001FE788(&v12, &v11);
}

uint64_t sub_1001FE9F4(const void *a1, uint64_t a2, char *a3)
{
  v7[1] = a1;
  v7[0] = a2;
  v6 = a3;
  v5 = (a2 - a1) >> 6;
  sub_1001FEA6C(a3, a1, v5);
  v4 = &v6[64 * v5];
  return sub_1001FEAC4(v7, &v4);
}

void *sub_1001FEA6C(void *result, const void *a2, uint64_t a3)
{
  if (a3)
  {
    return memmove(result, a2, ((a3 - 1) << 6) + 64);
  }

  return result;
}

void *sub_1001FEB48(void *result, void *a2, void *a3)
{
  *result = *a2;
  result[1] = *a3;
  return result;
}

uint64_t sub_1001FEBF0(uint64_t a1)
{
  if ((*(a1 + 8) & 1) == 0)
  {
    sub_1001FC7E4(a1);
  }

  return a1;
}

unint64_t sub_1001FEC48(void *a1, uint64_t a2)
{
  v7[1] = a1;
  v7[0] = a2;
  v6 = sub_1001FBCBC(a1);
  if (v7[0] > v6)
  {
    sub_1001FBD14();
  }

  v5 = sub_1001FBC94(a1);
  if (v5 >= v6 >> 1)
  {
    return v6;
  }

  v4 = 2 * v5;
  return *sub_1001FDFA4(&v4, v7);
}

void *sub_1001FECEC(void *a1)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  sub_1001FED30(a1);
  return a1;
}

uint64_t *sub_1001FEDB4(uint64_t *a1)
{
  v3[1] = a1;
  sub_1001FEE00(v3, a1);
  sub_1001FEE40(v3);
  return a1;
}

void sub_1001FEE40(uint64_t **a1)
{
  if (**a1)
  {
    sub_1001FEED4(*a1);
    sub_1001FEF24();
    v2 = *a1;
    v3 = **a1;
    sub_1001FEF6C(*a1);
    sub_1001FEF34(v2, v3);
  }
}

void sub_1001FEED4(uint64_t *a1)
{
  sub_1001FEF94(a1);
  sub_1001FEFBC(a1, *a1);
  sub_1001FF034();
}

uint64_t *sub_1001FEFBC(uint64_t *result, uint64_t a2)
{
  v2 = result;
  for (i = result[1]; a2 != i; i -= 24)
  {
    sub_1001FF078();
    result = sub_1001FF048(v2, v3);
  }

  *(v2 + 8) = a2;
  return result;
}

void *sub_1001FF200(void *a1)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  sub_1001FF244(a1);
  return a1;
}

uint64_t *sub_1001FF2C8(uint64_t *a1)
{
  v3[1] = a1;
  sub_1001FF314(v3, a1);
  sub_1001FF354(v3);
  return a1;
}

void sub_1001FF354(uint64_t **a1)
{
  if (**a1)
  {
    sub_1001FF3E8(*a1);
    sub_1001FF438();
    v2 = *a1;
    v3 = **a1;
    sub_1001FF480(*a1);
    sub_1001FF448(v2, v3);
  }
}

void sub_1001FF3E8(uint64_t *a1)
{
  sub_1001FB974(a1);
  sub_1001FF4A8(a1, *a1);
  sub_1001FF520();
}

void sub_1001FF4A8(uint64_t a1, uint64_t a2)
{
  for (i = *(a1 + 8); a2 != i; i -= 24)
  {
    sub_1001FF564();
    sub_1001FF534();
  }

  *(a1 + 8) = a2;
}

void *sub_1001FF6D4(uint64_t a1, void *a2)
{
  v8 = a1;
  v7 = a2;
  sub_1001FF81C(&v5, a1);
  sub_1001FF078();
  sub_1001FF868(a1, v3, v7);
  v6 += 24;
  return sub_1001FF8A0(&v5);
}

uint64_t sub_1001FF758(uint64_t *a1, void *a2)
{
  v12 = a1;
  v11 = a2;
  v3 = sub_1001FEF94(a1);
  v4 = sub_1001FFA14(a1, v3 + 1);
  v5 = sub_1001FEF94(a1);
  sub_1001FFAB8(v9, v4, v5, a1);
  sub_1001FF078();
  sub_1001FF868(a1, v6, v11);
  v10 += 24;
  sub_1001FFB08(a1, v9);
  v7 = a1[1];
  sub_1001FFC10(v9);
  return v7;
}

void *sub_1001FF8D8(void *result, uint64_t a2, uint64_t a3)
{
  *result = a2;
  result[1] = *(a2 + 8);
  result[2] = *(a2 + 8) + 24 * a3;
  return result;
}

void *sub_1001FF994(void *result, void *a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  *result = *a2;
  result[1] = a2[1];
  result[2] = a2[2];
  a2[2] = 0;
  a2[1] = 0;
  *a2 = 0;
  return result;
}

unint64_t sub_1001FFA14(void *a1, uint64_t a2)
{
  v7[1] = a1;
  v7[0] = a2;
  v6 = sub_1001FFC48(a1);
  if (v7[0] > v6)
  {
    sub_1001FFCA0();
  }

  v5 = sub_1001FEF6C(a1);
  if (v5 >= v6 >> 1)
  {
    return v6;
  }

  v4 = 2 * v5;
  return *sub_1001FDFA4(&v4, v7);
}

void sub_1001FFB08(uint64_t *a1, uint64_t *a2)
{
  sub_1001FEF24();
  v7 = a2[1] + 24 * ((a1[1] - *a1) / -24);
  sub_1001FF078();
  v4 = v3;
  sub_1001FF078();
  v6 = v5;
  sub_1001FF078();
  sub_1001FFED4(a1, v4, v6);
  a2[1] = v7;
  a1[1] = *a1;
  sub_1001FFF44(a1, a2 + 1);
  sub_1001FFF44(a1 + 1, a2 + 2);
  sub_1001FFF44(a1 + 2, a2 + 3);
  *a2 = a2[1];
  sub_1001FEF94(a1);
  sub_1001FFF80();
}

uint64_t sub_1001FFC48(uint64_t a1)
{
  v3[1] = a1;
  sub_1001FFCB0();
  v3[0] = 0xAAAAAAAAAAAAAAALL;
  sub_1001FBF34();
  v2 = 0x7FFFFFFFFFFFFFFFLL;
  return *sub_1001FBEDC(v3, &v2);
}

void *sub_1001FFCE8(void *result, unint64_t a2, uint64_t a3, uint64_t a4)
{
  result[3] = 0;
  result[4] = a4;
  if (a2)
  {
    sub_1001FFD94(result[4], a2);
  }

  *result = 0;
  v4 = *result + 24 * a3;
  result[2] = v4;
  result[1] = v4;
  result[3] = *result;
  return result;
}

void sub_1001FFDD8(uint64_t a1, unint64_t a2)
{
  sub_1001FFCB0();
  if (a2 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_1001FC240();
  }

  sub_1001FFE2C();
}

void *sub_1001FFED4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1001FF078();
  v4 = v3;
  sub_1001FF078();
  return memcpy(v4, v5, 24 * ((a3 - a2) / 24));
}

uint64_t *sub_1001FFF44(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *result = *a2;
  *a2 = v2;
  return result;
}

uint64_t *sub_1001FFF94(uint64_t *a1)
{
  sub_100200000(a1);
  if (*a1)
  {
    v2 = a1[4];
    v3 = *a1;
    sub_10020002C(a1);
    sub_1001FEF34(v2, v3);
  }

  return a1;
}

uint64_t *sub_100200084(uint64_t *result, uint64_t a2)
{
  v2 = result;
  while (a2 != v2[2])
  {
    v3 = v2[4];
    v2[2] -= 24;
    sub_1001FF078();
    result = sub_1001FF048(v3, v4);
  }

  return result;
}

void *sub_1002000F0(uint64_t a1, double *a2, double *a3, double *a4, double *a5)
{
  v14 = a1;
  v13 = a2;
  v12 = a3;
  v11 = a4;
  v10 = a5;
  sub_100200268(&v8, a1);
  sub_1001FF564();
  sub_1002002B4(a1, v6, v13, v12, v11, v10);
  v9 += 24;
  return sub_100200304(&v8);
}

uint64_t sub_10020018C(uint64_t *a1, double *a2, double *a3, double *a4, double *a5)
{
  v18 = a1;
  v17 = a2;
  v16 = a3;
  v15 = a4;
  v14 = a5;
  v6 = sub_1001FB974(a1);
  v7 = sub_100200494(a1, v6 + 1);
  v8 = sub_1001FB974(a1);
  sub_100200538(v12, v7, v8, a1);
  sub_1001FF564();
  sub_1002002B4(a1, v9, v17, v16, v15, v14);
  v13 += 24;
  sub_100200588(a1, v12);
  v10 = a1[1];
  sub_100200690(v12);
  return v10;
}

void *sub_10020033C(void *result, uint64_t a2, uint64_t a3)
{
  *result = a2;
  result[1] = *(a2 + 8);
  result[2] = *(a2 + 8) + 24 * a3;
  return result;
}

float sub_100200384(uint64_t a1, uint64_t a2, double *a3, double *a4, double *a5, double *a6)
{
  v6 = *a5;
  v7 = *a6;
  return sub_1002003E8(a2, *a3, *a4, v6, v7);
}

float sub_100200430(uint64_t a1, double a2, double a3, float a4, float a5)
{
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = a4;
  result = a5;
  *(a1 + 20) = a5;
  return result;
}

unint64_t sub_100200494(void *a1, uint64_t a2)
{
  v7[1] = a1;
  v7[0] = a2;
  v6 = sub_1002006C8(a1);
  if (v7[0] > v6)
  {
    sub_100200720();
  }

  v5 = sub_1001FF480(a1);
  if (v5 >= v6 >> 1)
  {
    return v6;
  }

  v4 = 2 * v5;
  return *sub_1001FDFA4(&v4, v7);
}

void sub_100200588(uint64_t *a1, uint64_t *a2)
{
  sub_1001FF438();
  v7 = a2[1] + 24 * ((a1[1] - *a1) / -24);
  sub_1001FF564();
  v4 = v3;
  sub_1001FF564();
  v6 = v5;
  sub_1001FF564();
  sub_100200954(a1, v4, v6);
  a2[1] = v7;
  a1[1] = *a1;
  sub_1002009C4(a1, a2 + 1);
  sub_1002009C4(a1 + 1, a2 + 2);
  sub_1002009C4(a1 + 2, a2 + 3);
  *a2 = a2[1];
  sub_1001FB974(a1);
  sub_100200A00();
}

uint64_t sub_1002006C8(uint64_t a1)
{
  v3[1] = a1;
  sub_100200730();
  v3[0] = 0xAAAAAAAAAAAAAAALL;
  sub_1001FBF34();
  v2 = 0x7FFFFFFFFFFFFFFFLL;
  return *sub_1001FBEDC(v3, &v2);
}

void *sub_100200768(void *result, unint64_t a2, uint64_t a3, uint64_t a4)
{
  result[3] = 0;
  result[4] = a4;
  if (a2)
  {
    sub_100200814(result[4], a2);
  }

  *result = 0;
  v4 = *result + 24 * a3;
  result[2] = v4;
  result[1] = v4;
  result[3] = *result;
  return result;
}

void sub_100200858(uint64_t a1, unint64_t a2)
{
  sub_100200730();
  if (a2 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_1001FC240();
  }

  sub_1002008AC();
}

void *sub_100200954(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1001FF564();
  v4 = v3;
  sub_1001FF564();
  return memcpy(v4, v5, 24 * ((a3 - a2) / 24));
}

uint64_t *sub_1002009C4(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *result = *a2;
  *a2 = v2;
  return result;
}

void **sub_100200A14(void **a1)
{
  sub_100200A80(a1);
  if (*a1)
  {
    v2 = a1[4];
    v3 = *a1;
    sub_100200AAC(a1);
    sub_1001FF448(v2, v3);
  }

  return a1;
}

void sub_100200B04(uint64_t a1, uint64_t a2)
{
  while (a2 != *(a1 + 16))
  {
    *(a1 + 16) -= 24;
    sub_1001FF564();
    sub_1001FF534();
  }
}

void *sub_100200C18(void *a1)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  sub_100200C5C(a1);
  return a1;
}

uint64_t *sub_100200CE0(uint64_t *a1)
{
  v3[1] = a1;
  sub_100200D2C(v3, a1);
  sub_100200D6C(v3);
  return a1;
}

void sub_100200D6C(uint64_t **a1)
{
  if (**a1)
  {
    sub_100200E00(*a1);
    sub_1001FC31C();
    v2 = *a1;
    v3 = **a1;
    sub_1001FBC94(*a1);
    sub_1001FC498(v2, v3);
  }
}

void sub_100200E00(uint64_t *a1)
{
  sub_1001FBD24(a1);
  sub_100200E50(a1, *a1);
  sub_100200EC8();
}

uint64_t *sub_100200E50(uint64_t *result, uint64_t a2)
{
  v2 = result;
  for (i = result[1]; a2 != i; i -= 24)
  {
    sub_1001FC39C();
    result = sub_1001FC594(v2, v3);
  }

  *(v2 + 8) = a2;
  return result;
}

BOOL sub_100201EBC(uint64_t a1)
{
  v1 = 1;
  if (a1 != 4)
  {
    return a1 == 3;
  }

  return v1;
}

void sub_100202EA8(id *a1)
{
  v2[2] = a1;
  v2[1] = a1;
  v2[0] = a1[4];
  v1 = &_dispatch_main_q;
  IDSRegistrationControlGetStateForRegistrationType();

  objc_storeStrong(v2, 0);
}

void sub_100202F78(uint64_t a1, uint64_t a2, id obj)
{
  v13 = a1;
  v12 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  v10 = a1;
  v9 = 1;
  if (v12)
  {
    oslog = _BYLoggingFacility();
    v7 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      v4 = oslog;
      v5 = v7;
      sub_10006AA68(v6);
      _os_log_impl(&_mh_execute_header, v4, v5, "PhoneNumber Permission skipped because IDS registration status is already set", v6, 2u);
    }

    objc_storeStrong(&oslog, 0);
    v9 = 0;
  }

  if (*(a1 + 32))
  {
    (*(*(a1 + 32) + 16))();
  }

  objc_storeStrong(&location, 0);
}

void sub_100203198(uint64_t a1, uint64_t a2, id obj)
{
  v8 = a1;
  v7 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  if (!v7)
  {
    v4 = *(a1 + 40);
    v5 = [*(a1 + 32) buddyPreferences];
    [v4 _registerPhoneNumberPermissionEnabled:0 buddyPreferences:v5];
  }

  objc_storeStrong(&location, 0);
}

void sub_100203568(id a1, BOOL a2, NSError *a3)
{
  v7 = a1;
  v6 = a2;
  location = 0;
  objc_storeStrong(&location, a3);
  oslog[1] = a1;
  if (!v6)
  {
    oslog[0] = _BYLoggingFacility();
    if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
    {
      sub_10006AE18(buf, location);
      _os_log_impl(&_mh_execute_header, oslog[0], OS_LOG_TYPE_DEFAULT, "PhoneNumber Permission enable failed with error: %@", buf, 0xCu);
    }

    objc_storeStrong(oslog, 0);
  }

  objc_storeStrong(&location, 0);
}

void sub_10020365C(id a1, BOOL a2, NSError *a3)
{
  v7 = a1;
  v6 = a2;
  location = 0;
  objc_storeStrong(&location, a3);
  oslog[1] = a1;
  if (!v6)
  {
    oslog[0] = _BYLoggingFacility();
    if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
    {
      sub_10006AE18(buf, location);
      _os_log_impl(&_mh_execute_header, oslog[0], OS_LOG_TYPE_DEFAULT, "PhoneNumber Permission disable failed with error: %@", buf, 0xCu);
    }

    objc_storeStrong(oslog, 0);
  }

  objc_storeStrong(&location, 0);
}

void sub_100203F80(id *a1)
{
  v12[2] = a1;
  v12[1] = a1;
  v2 = [a1[4] accountOperationsQueue];
  dispatch_suspend(v2);

  v3 = +[ACAccountStore defaultStore];
  v4 = a1[5];
  v5 = _NSConcreteStackBlock;
  v6 = -1073741824;
  v7 = 0;
  v8 = sub_1002040D0;
  v9 = &unk_10032E570;
  v10 = a1[5];
  v11 = a1[4];
  v12[0] = a1[6];
  [v3 removeAccount:v4 withCompletionHandler:&v5];

  objc_storeStrong(v12, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v10, 0);
}

void sub_1002040D0(id *a1, char a2, id obj)
{
  v18 = a1;
  v17 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  v15 = a1;
  v4 = &_dispatch_main_q;
  block = _NSConcreteStackBlock;
  v6 = -1073741824;
  v7 = 0;
  v8 = sub_10020423C;
  v9 = &unk_10032BBB0;
  v14 = v17 & 1;
  v10 = a1[4];
  v11 = location;
  v12 = a1[5];
  v13 = a1[6];
  dispatch_async(v4, &block);

  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&location, 0);
}

void sub_10020423C(uint64_t a1)
{
  oslog[2] = a1;
  oslog[1] = a1;
  if (*(a1 + 64))
  {
    oslog[0] = _BYLoggingFacility();
    v9 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
    {
      sub_10006AE18(buf, *(a1 + 32));
      _os_log_impl(&_mh_execute_header, oslog[0], v9, "Done removing account: %@", buf, 0xCu);
    }

    objc_storeStrong(oslog, 0);
  }

  else
  {
    v8 = _BYLoggingFacility();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 0;
      v4 = 0;
      if (_BYIsInternalInstall())
      {
        v2 = *(a1 + 40);
      }

      else if (*(a1 + 40))
      {
        v7 = [*(a1 + 40) domain];
        v6 = 1;
        v2 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"<Error domain: %@, code %ld>", v7, [*(a1 + 40) code]);
        v5 = v2;
        v4 = 1;
      }

      else
      {
        v2 = 0;
      }

      sub_100071CBC(v11, v2);
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Error removing account: %{public}@", v11, 0xCu);
      if (v4)
      {
      }

      if (v6)
      {
      }
    }

    objc_storeStrong(&v8, 0);
  }

  [*(*(a1 + 48) + 16) removeObject:*(a1 + 32)];
  v3 = [*(a1 + 48) accountOperationsQueue];
  dispatch_resume(v3);

  if (*(a1 + 56))
  {
    (*(*(a1 + 56) + 16))();
  }
}

BOOL sub_10020460C(id a1, id a2, NSDictionary *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v11 = 0;
  objc_storeStrong(&v11, a3);
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v9 = 0;
  v7 = 0;
  v5 = 0;
  if (isKindOfClass)
  {
    v10 = [location[0] accountType];
    v9 = 1;
    v8 = [v10 identifier];
    v7 = 1;
    v5 = [v8 isEqualToString:ACAccountTypeIdentifierIDMS];
  }

  v13 = v5 & 1;
  if (v7)
  {
  }

  if (v9)
  {
  }

  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
  return v13 & 1;
}

void sub_100204730(NSObject *a1, char a2, id obj)
{
  v11 = a1;
  v10 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  oslog[1] = a1;
  if ((v10 & 1) == 0)
  {
    oslog[0] = _BYLoggingFacility();
    v7 = 16;
    if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_ERROR))
    {
      v4 = oslog[0];
      v5 = v7;
      sub_10006AA68(v6);
      _os_log_error_impl(&_mh_execute_header, v4, v5, "IDMS account removal failed", v6, 2u);
    }

    objc_storeStrong(oslog, 0);
  }

  if (a1[4].isa)
  {
    (*(a1[4].isa + 2))();
  }

  objc_storeStrong(&location, 0);
}

void sub_100204BD4(id a1)
{
  v4 = a1;
  v3 = a1;
  v2 = SecItemDeleteAll();
  if (v2)
  {
    oslog = _BYLoggingFacility();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      sub_100082D54(buf, v2);
      _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "Unable to delete keychain items: %d for primary account type", buf, 8u);
    }

    objc_storeStrong(&oslog, 0);
  }
}

void sub_100204CAC(NSObject *a1, char a2, id obj)
{
  v21 = a1;
  v20 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  oslog[1] = a1;
  if (v20)
  {
    (*(a1[6].isa + 2))();
    oslog[0] = _BYLoggingFacility();
    v17 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
    {
      v4 = oslog[0];
      v5 = v17;
      sub_10006AA68(buf);
      _os_log_impl(&_mh_execute_header, v4, v5, "Restoring proto account", buf, 2u);
    }

    objc_storeStrong(oslog, 0);
    v15 = 0;
    v14 = [ACAccount createProtoAccountWithAgeRange:[(objc_class *)a1[4].isa ageRange]];
    isa = a1[5].isa;
    obja = 0;
    [(objc_class *)isa saveVerifiedAccount:v14 error:&obja];
    objc_storeStrong(&v15, obja);
    if (v15)
    {
      v12 = _BYLoggingFacility();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
      {
        v10 = 0;
        v8 = 0;
        if (_BYIsInternalInstall())
        {
          v7 = v15;
        }

        else if (v15)
        {
          v11 = [v15 domain];
          v10 = 1;
          v7 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"<Error domain: %@, code %ld>", v11, [v15 code]);
          v9 = v7;
          v8 = 1;
        }

        else
        {
          v7 = 0;
        }

        sub_10006AE18(v22, v7);
        _os_log_fault_impl(&_mh_execute_header, v12, OS_LOG_TYPE_FAULT, "Failed to restore proto account: %@", v22, 0xCu);
        if (v8)
        {
        }

        if (v10)
        {
        }
      }

      objc_storeStrong(&v12, 0);
    }

    objc_storeStrong(&v14, 0);
    objc_storeStrong(&v15, 0);
  }

  if (a1[7].isa)
  {
    (*(a1[7].isa + 2))();
  }

  objc_storeStrong(&location, 0);
}

void sub_100204F84(uint64_t a1, char a2, id obj)
{
  v6 = a1;
  v5 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  if (v5)
  {
    (*(*(a1 + 32) + 16))(*(a1 + 32));
  }

  if (*(a1 + 40))
  {
    (*(*(a1 + 40) + 16))(*(a1 + 40));
  }

  objc_storeStrong(&location, 0);
}

void sub_100205104(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, int a9, int a10, _Unwind_Exception *exception_object, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak(v18);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100205124(uint64_t a1, char a2, id obj)
{
  v10 = a1;
  v9 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  v7 = a1;
  if (v9)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    [WeakRetained removeIDMSAccount:{*(a1 + 32), WeakRetained}];
    objc_storeStrong(&v5, 0);
    v6 = 0;
  }

  else
  {
    if (*(a1 + 32))
    {
      (*(*(a1 + 32) + 16))();
    }

    v6 = 1;
  }

  objc_storeStrong(&location, 0);
}

void sub_1002055BC(uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 40);
  v2 = *(a2 + 40);
  *(a1 + 40) = 0;
  objc_storeStrong((a1 + 40), v2);

  objc_storeStrong(v3, 0);
}

void sub_10020560C(uint64_t a1, char a2, id obj)
{
  v7 = a1;
  v6 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  v4 = *(*(*(a1 + 40) + 8) + 40);
  if (!v4)
  {
    v4 = location;
  }

  objc_storeStrong((*(*(a1 + 40) + 8) + 40), v4);
  dispatch_group_leave(*(a1 + 32));
  objc_storeStrong(&location, 0);
}

uint64_t sub_10020589C(id *a1, void *a2)
{
  v2 = a1;
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v3 = [location[0] identifier];
  v4 = [v2[4] identifier];
  LOBYTE(v2) = [v3 isEqualToString:v4];

  objc_storeStrong(location, 0);
  return v2 & 1;
}

BOOL sub_1002059FC(id a1, id a2, NSDictionary *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v11 = 0;
  objc_storeStrong(&v11, a3);
  v10[1] = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10[0] = location[0];
    v5 = [v10[0] accountType];
    v6 = [v5 identifier];
    v7 = [v6 isEqualToString:ACAccountTypeIdentifieriTunesStore];
    v8 = 0;
    if (v7)
    {
      v8 = [v10[0] isActive];
    }

    v13 = v8 & 1;

    objc_storeStrong(v10, 0);
  }

  else
  {
    v13 = 0;
  }

  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
  return v13 & 1;
}

void sub_100205D14(uint64_t a1)
{
  v2 = [ACAccountStore defaultStore:a1];
  v3 = [v2 accounts];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void sub_100206068(uint64_t a1, char a2, id obj, void *a4)
{
  v20 = a1;
  v19 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  v17 = 0;
  objc_storeStrong(&v17, a4);
  v16 = a1;
  if (v19)
  {
    v14 = location == 0;
    v13 = [location isManagedAppleID] & 1;
    v6 = [location isUnderage];
    v7 = [v6 BOOLValue];

    v12 = v7 & 1;
    v8 = [location isLegacyStudent];
    v9 = [v8 BOOLValue];

    v11 = v9 & 1;
    oslog = _BYLoggingFacility();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      sub_10008685C(buf, v13 & 1, v12 & 1, v11 & 1);
      _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "Account Tools: isChild - isMAID: %d isUnderage: %d isStudent: %d", buf, 0x14u);
    }

    objc_storeStrong(&oslog, 0);
    if (*(a1 + 32))
    {
      (*(*(a1 + 32) + 16))();
    }

    v15 = 0;
  }

  else
  {
    if (*(a1 + 32))
    {
      (*(*(a1 + 32) + 16))();
    }

    v15 = 1;
  }

  objc_storeStrong(&v17, 0);
  objc_storeStrong(&location, 0);
}

void sub_100206538(NSObject *a1)
{
  oslog[2] = a1;
  oslog[1] = a1;
  if (!*(a1[4].isa + 6))
  {
    oslog[0] = _BYLoggingFacility();
    v16 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
    {
      v2 = oslog[0];
      v3 = v16;
      sub_10006AA68(buf);
      _os_log_impl(&_mh_execute_header, v2, v3, "Account Tools: Fetching configuration info...", buf, 2u);
    }

    objc_storeStrong(oslog, 0);
    v14 = dispatch_semaphore_create(0);
    location = objc_opt_new();
    v18 = @"com.apple.idms.config.privacy.icloud.data";
    v4 = [NSArray arrayWithObjects:&v18 count:1];
    isa = a1[5].isa;
    v6 = _NSConcreteStackBlock;
    v7 = -1073741824;
    v8 = 0;
    v9 = sub_100206768;
    v10 = &unk_10032F1E0;
    v12[1] = a1[6].isa;
    v11 = a1[4].isa;
    v12[0] = v14;
    [location configurationInfoWithIdentifiers:v4 forAltDSID:isa completion:&v6];

    dispatch_semaphore_wait(v14, 0xFFFFFFFFFFFFFFFFLL);
    objc_storeStrong(v12, 0);
    objc_storeStrong(&v11, 0);
    objc_storeStrong(&location, 0);
    objc_storeStrong(&v14, 0);
  }

  objc_storeStrong((*(a1[7].isa + 1) + 40), *(a1[4].isa + 6));
}

void sub_100206768(uint64_t a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  obj = 0;
  objc_storeStrong(&obj, a3);
  oslog[1] = a1;
  if (obj)
  {
    oslog[0] = _BYLoggingFacility();
    v17 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
    {
      v15 = 0;
      v13 = 0;
      if (_BYIsInternalInstall())
      {
        v5 = obj;
      }

      else if (obj)
      {
        v16 = [obj domain];
        v15 = 1;
        v5 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"<Error domain: %@, code %ld>", v16, [obj code]);
        v14 = v5;
        v13 = 1;
      }

      else
      {
        v5 = 0;
      }

      sub_100071CBC(buf, v5);
      _os_log_impl(&_mh_execute_header, oslog[0], v17, "Account Tools: Error fetching configurationInfo: %{public}@", buf, 0xCu);
      if (v13)
      {
      }

      if (v15)
      {
      }
    }

    objc_storeStrong(oslog, 0);
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), obj);
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = _BYLoggingFacility();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        sub_10006AE18(v21, location[0]);
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Account Tools: fetched configurationInfo %@", v21, 0xCu);
      }

      objc_storeStrong(&v9, 0);
      objc_storeStrong((*(a1 + 32) + 48), location[0]);
    }

    else
    {
      v12 = _BYLoggingFacility();
      v11 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v10 = objc_opt_class();
        sub_100071CBC(v22, v10);
        _os_log_impl(&_mh_execute_header, v12, v11, "Account Tools: configurationInfo dict was not a dict, it was a %{public}@", v22, 0xCu);
        objc_storeStrong(&v10, 0);
      }

      objc_storeStrong(&v12, 0);
      v6 = [NSError errorWithDomain:@"com.apple.purplebuddy.accounterror" code:1 userInfo:0];
      v7 = *(*(a1 + 48) + 8);
      v8 = *(v7 + 40);
      *(v7 + 40) = v6;

      objc_storeStrong(location, 0);
    }
  }

  dispatch_semaphore_signal(*(a1 + 40));
  objc_storeStrong(&obj, 0);
  objc_storeStrong(location, 0);
}

void sub_100206BF0(uint64_t a1)
{
  location[2] = a1;
  location[1] = a1;
  location[0] = 0;
  v2 = *(a1 + 32);
  obj = 0;
  v3 = [v2 configurationInfoError:&obj];
  objc_storeStrong(location, obj);
  v14 = v3;
  if (*(a1 + 40))
  {
    v4 = &_dispatch_main_q;
    v5 = _NSConcreteStackBlock;
    v6 = -1073741824;
    v7 = 0;
    v8 = sub_100206D5C;
    v9 = &unk_10032C2E0;
    v12 = *(a1 + 40);
    v10 = v14;
    v11 = location[0];
    dispatch_async(v4, &v5);

    objc_storeStrong(&v11, 0);
    objc_storeStrong(&v10, 0);
    objc_storeStrong(&v12, 0);
  }

  objc_storeStrong(&v14, 0);
  objc_storeStrong(location, 0);
}

void sub_1002072AC(id *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v32 = 0;
  objc_storeStrong(&v32, a3);
  v31[1] = a1;
  if (v32)
  {
    v31[0] = _BYLoggingFacility();
    v30 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v31[0], OS_LOG_TYPE_ERROR))
    {
      v28 = 0;
      v26 = 0;
      if (_BYIsInternalInstall())
      {
        v5 = v32;
      }

      else if (v32)
      {
        v29 = [v32 domain];
        v28 = 1;
        v5 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"<Error domain: %@, code %ld>", v29, [v32 code]);
        v27 = v5;
        v26 = 1;
      }

      else
      {
        v5 = 0;
      }

      sub_100071CBC(buf, v5);
      _os_log_error_impl(&_mh_execute_header, v31[0], v30, "Unable to retrieve the primary account: %{public}@", buf, 0xCu);
      if (v26)
      {
      }

      if (v28)
      {
      }
    }

    objc_storeStrong(v31, 0);
    if (a1[5])
    {
      (*(a1[5] + 2))();
    }

    v25 = 1;
  }

  else if (location[0])
  {
    v21 = _BYLoggingFacility();
    v20 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v8 = v21;
      v9 = v20;
      sub_10006AA68(v19);
      _os_log_impl(&_mh_execute_header, v8, v9, "Account Tools: Fetching user information...", v19, 2u);
    }

    objc_storeStrong(&v21, 0);
    v18 = objc_opt_new();
    v10 = [location[0] aa_altDSID];
    v11 = _NSConcreteStackBlock;
    v12 = -1073741824;
    v13 = 0;
    v14 = sub_1002076AC;
    v15 = &unk_10032F230;
    v17 = a1[5];
    v16 = a1[4];
    [v18 getUserInformationForAltDSID:v10 completion:&v11];

    objc_storeStrong(&v16, 0);
    objc_storeStrong(&v17, 0);
    objc_storeStrong(&v18, 0);
    v25 = 0;
  }

  else
  {
    oslog = _BYLoggingFacility();
    v23 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      v6 = oslog;
      v7 = v23;
      sub_10006AA68(v22);
      _os_log_impl(&_mh_execute_header, v6, v7, "No primary account found!", v22, 2u);
    }

    objc_storeStrong(&oslog, 0);
    if (a1[5])
    {
      (*(a1[5] + 2))();
    }

    v25 = 1;
  }

  objc_storeStrong(&v32, 0);
  objc_storeStrong(location, 0);
}

void sub_1002076AC(NSObject *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v21 = 0;
  objc_storeStrong(&v21, a3);
  oslog[1] = a1;
  if (v21)
  {
    oslog[0] = _BYLoggingFacility();
    v19 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
    {
      v17 = 0;
      v15 = 0;
      if (_BYIsInternalInstall())
      {
        v5 = v21;
      }

      else if (v21)
      {
        v18 = [v21 domain];
        v17 = 1;
        v5 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"<Error domain: %@, code %ld>", v18, [v21 code]);
        v16 = v5;
        v15 = 1;
      }

      else
      {
        v5 = 0;
      }

      sub_100071CBC(buf, v5);
      _os_log_impl(&_mh_execute_header, oslog[0], v19, "Account Tools: Failed to fetch user information error: %{public}@", buf, 0xCu);
      if (v15)
      {
      }

      if (v17)
      {
      }
    }

    objc_storeStrong(oslog, 0);
    if (a1[5].isa)
    {
      (*(a1[5].isa + 2))();
    }

    v14 = 1;
  }

  else
  {
    v6 = *(a1[4].isa + 3);
    block = _NSConcreteStackBlock;
    v8 = -1073741824;
    v9 = 0;
    v10 = sub_100207980;
    v11 = &unk_10032B838;
    v12 = a1[4].isa;
    v13 = location[0];
    dispatch_async(v6, &block);
    (*(a1[5].isa + 2))();
    objc_storeStrong(&v13, 0);
    objc_storeStrong(&v12, 0);
    v14 = 0;
  }

  objc_storeStrong(&v21, 0);
  objc_storeStrong(location, 0);
}

void sub_100209A2C(uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 40);
  v2 = *(a2 + 40);
  *(a1 + 40) = 0;
  objc_storeStrong((a1 + 40), v2);

  objc_storeStrong(v3, 0);
}

void sub_100209A7C(uint64_t a1, void *a2, void *a3, void *a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v45 = 0;
  objc_storeStrong(&v45, a3);
  v44 = 0;
  objc_storeStrong(&v44, a4);
  v43 = a1;
  v42 = _BYSignpostGetNanoseconds() / 1000000000.0;
  v41 = _BYSignpostSubsystem();
  v40 = 2;
  v39 = *(a1 + 56);
  if (v39 && v39 != -1 && os_signpost_enabled(v41))
  {
    v7 = v41;
    v8 = v40;
    v9 = v39;
    sub_10006AA68(buf);
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v7, v8, v9, "ActivationSendRequest", "", buf, 2u);
  }

  objc_storeStrong(&v41, 0);
  oslog = _BYSignpostSubsystem();
  v36 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000CE794(v51, *(a1 + 56), *&v42);
    _os_log_impl(&_mh_execute_header, oslog, v36, "END [%lld] %fs: ActivationSendRequest ", v51, 0x16u);
  }

  objc_storeStrong(&oslog, 0);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = [v45 statusCode];
  }

  else
  {
    v10 = 200;
  }

  v35 = v10;
  if (!v44 && v35 == 200)
  {
    v17 = dispatch_get_global_queue(25, 0);
    block = _NSConcreteStackBlock;
    v19 = -1073741824;
    v20 = 0;
    v21 = sub_10020A060;
    v22 = &unk_10032BB10;
    v23 = *(a1 + 32);
    v24 = *(a1 + 40);
    v25 = location[0];
    dispatch_async(v17, &block);

    objc_storeStrong(&v25, 0);
    objc_storeStrong(&v24, 0);
    objc_storeStrong(&v23, 0);
  }

  else
  {
    if (v44)
    {
      v34 = _BYLoggingFacility();
      v33 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        v31 = 0;
        v29 = 0;
        if (_BYIsInternalInstall())
        {
          v11 = v44;
        }

        else if (v44)
        {
          v32 = [v44 domain];
          v31 = 1;
          v11 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"<Error domain: %@, code %ld>", v32, [v44 code]);
          v30 = v11;
          v29 = 1;
        }

        else
        {
          v11 = 0;
        }

        sub_100071CBC(v50, v11);
        _os_log_impl(&_mh_execute_header, v34, v33, "Buddy Activation: Failed session request: %{public}@", v50, 0xCu);
        if (v29)
        {
        }

        if (v31)
        {
        }
      }

      objc_storeStrong(&v34, 0);
    }

    else
    {
      v28 = _BYLoggingFacility();
      v27 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        sub_100077E48(v49, v35);
        _os_log_impl(&_mh_execute_header, v28, v27, "Buddy Activation: Session request returned http %ld", v49, 0xCu);
      }

      objc_storeStrong(&v28, 0);
      v47 = @"statusCode";
      v12 = [NSNumber numberWithInteger:v35];
      v48 = v12;
      v13 = [NSDictionary dictionaryWithObjects:&v48 forKeys:&v47 count:1];
      v14 = [NSError errorWithDomain:@"com.apple.purplebuddy.activation" code:1 userInfo:v13];
      v15 = v44;
      v44 = v14;
    }

    v16 = [*(a1 + 32) completion];

    if (v16)
    {
      v26 = [*(a1 + 32) completion];
      [*(a1 + 32) _cleanup];
      (*(v26 + 2))(v26, 0, 0, 0, v44);
      objc_storeStrong(&v26, 0);
    }
  }

  objc_storeStrong((*(*(a1 + 48) + 8) + 40), 0);
  objc_storeStrong(&v44, 0);
  objc_storeStrong(&v45, 0);
  objc_storeStrong(location, 0);
}

void sub_10020A060(uint64_t a1)
{
  location[2] = a1;
  location[1] = a1;
  location[0] = 0;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  obj = 0;
  v5 = [v2 _newActivationRequestWithOptions:v3 sessionData:v4 error:&obj];
  objc_storeStrong(location, obj);
  v16 = v5;
  v6 = &_dispatch_main_q;
  v7 = _NSConcreteStackBlock;
  v8 = -1073741824;
  v9 = 0;
  v10 = sub_10020A1C4;
  v11 = &unk_10032BB10;
  v12 = v16;
  v13 = *(a1 + 32);
  v14 = location[0];
  dispatch_async(v6, &v7);

  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(location, 0);
}

void sub_10020A1C4(uint64_t a1)
{
  v39[2] = a1;
  v39[1] = a1;
  if (*(a1 + 32))
  {
    objc_storeStrong((*(a1 + 40) + 72), *(a1 + 32));
    v39[0] = _BYLoggingFacility();
    v38 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v39[0], OS_LOG_TYPE_DEFAULT))
    {
      v2 = *(*(a1 + 40) + 25) & 1;
      v3 = [*(a1 + 32) URL];
      location = [v3 absoluteString];
      sub_100097718(buf, v2, location);
      _os_log_impl(&_mh_execute_header, v39[0], v38, "Buddy Activation Request: Activate, AllowAnyHTTPSCert=%d, with URL: %@.\n", buf, 0x12u);

      objc_storeStrong(&location, 0);
    }

    objc_storeStrong(v39, 0);
    oslog = _BYLoggingFacility();
    v35 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
    {
      v4 = *(a1 + 32);
      v34 = [v4 allHTTPHeaderFields];
      sub_100078180(v42, v4, v34);
      _os_log_debug_impl(&_mh_execute_header, oslog, v35, "Using request %@ with headers %@", v42, 0x16u);

      objc_storeStrong(&v34, 0);
    }

    objc_storeStrong(&oslog, 0);
    v33 = [*(a1 + 40) completion];
    v32 = 0;
    v31 = 0;
    v5 = _BYSignpostSubsystem();
    v6 = _BYSignpostCreate();
    v30 = v7;
    v29 = v6;

    log = _BYSignpostSubsystem();
    v27 = 1;
    v26 = v29;
    if (v29 && v26 != -1 && os_signpost_enabled(log))
    {
      v8 = log;
      v9 = v27;
      v10 = v26;
      sub_10006AA68(v25);
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v8, v9, v10, "ActivationSendRequest", "", v25, 2u);
    }

    objc_storeStrong(&log, 0);
    v24 = _BYSignpostSubsystem();
    v23 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      sub_100077E48(v41, v29);
      _os_log_impl(&_mh_execute_header, v24, v23, "BEGIN [%lld]: ActivationSendRequest ", v41, 0xCu);
    }

    objc_storeStrong(&v24, 0);
    v31 = v29;
    v32 = v30;
    v17 = _NSConcreteStackBlock;
    v18 = -1073741824;
    v19 = 0;
    v20 = sub_10020A6DC;
    v21 = &unk_10032F280;
    v22[1] = v29;
    v22[2] = v30;
    v22[0] = v33;
    [*(a1 + 40) setCompletion:&v17];
    v11 = [*(a1 + 40) session];
    v16 = [v11 dataTaskWithRequest:*(a1 + 32)];

    v15 = _BYLoggingFacility();
    v14 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      sub_100071CBC(v40, v16);
      _os_log_impl(&_mh_execute_header, v15, v14, "Buddy Activation Request: Created data task: %{public}@", v40, 0xCu);
    }

    objc_storeStrong(&v15, 0);
    [v16 resume];
    objc_storeStrong(&v16, 0);
    objc_storeStrong(v22, 0);
    objc_storeStrong(&v33, 0);
  }

  else
  {
    v12 = [*(a1 + 40) completion];

    if (v12)
    {
      v13 = [*(a1 + 40) completion];
      [*(a1 + 40) _cleanup];
      (*(v13 + 2))(v13, 0, 0, 0, *(a1 + 48));
      objc_storeStrong(&v13, 0);
    }
  }
}

void sub_10020A6DC(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v21 = 0;
  objc_storeStrong(&v21, a3);
  v20 = 0;
  objc_storeStrong(&v20, a4);
  v19 = 0;
  objc_storeStrong(&v19, a5);
  v18 = a1;
  v17 = _BYSignpostGetNanoseconds() / 1000000000.0;
  log = _BYSignpostSubsystem();
  v15 = 2;
  v14 = a1[5];
  if (v14 && v14 != -1 && os_signpost_enabled(log))
  {
    v9 = log;
    v10 = v15;
    v11 = v14;
    sub_10006AA68(buf);
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v9, v10, v11, "ActivationSendRequest", "", buf, 2u);
  }

  objc_storeStrong(&log, 0);
  oslog = _BYSignpostSubsystem();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000CE794(v23, a1[5], *&v17);
    _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: ActivationSendRequest ", v23, 0x16u);
  }

  objc_storeStrong(&oslog, 0);
  if (a1[4])
  {
    (*(a1[4] + 16))();
  }

  objc_storeStrong(&v19, 0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(&v21, 0);
  objc_storeStrong(location, 0);
}

void sub_10020AABC(uint64_t a1)
{
  v51[2] = a1;
  v51[1] = a1;
  v51[0] = 0;
  v50 = 0;
  v49 = 0;
  v48 = 0;
  v2 = _BYSignpostSubsystem();
  v3 = _BYSignpostCreate();
  v47 = v4;
  v46 = v3;

  location = _BYSignpostSubsystem();
  v44 = 1;
  v43 = v46;
  if (v46 && v43 != -1 && os_signpost_enabled(location))
  {
    v5 = location;
    v6 = v44;
    v7 = v43;
    sub_10006AA68(buf);
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v5, v6, v7, "ActivationCreateSessionRequest", "", buf, 2u);
  }

  objc_storeStrong(&location, 0);
  oslog = _BYSignpostSubsystem();
  v40 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    sub_100077E48(v55, v46);
    _os_log_impl(&_mh_execute_header, oslog, v40, "BEGIN [%lld]: ActivationCreateSessionRequest ", v55, 0xCu);
  }

  objc_storeStrong(&oslog, 0);
  v48 = v46;
  v49 = v47;
  obj = v51[0];
  v38 = v50;
  v8 = MAECreateSessionRequestWithError();
  objc_storeStrong(v51, obj);
  objc_storeStrong(&v50, v38);
  if (v8)
  {
    v24 = _BYSignpostGetNanoseconds() / 1000000000.0;
    log = _BYSignpostSubsystem();
    v22 = 2;
    v21 = v48;
    if (v48 && v21 != -1 && os_signpost_enabled(log))
    {
      v11 = log;
      v12 = v22;
      v13 = v21;
      sub_10006AA68(v20);
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v11, v12, v13, "ActivationCreateSessionRequest", "", v20, 2u);
    }

    objc_storeStrong(&log, 0);
    v19 = _BYSignpostSubsystem();
    v18 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000CE794(v53, v48, *&v24);
      _os_log_impl(&_mh_execute_header, v19, v18, "END [%lld] %fs: ActivationCreateSessionRequest ", v53, 0x16u);
    }

    objc_storeStrong(&v19, 0);
    [*(a1 + 32) _addCommonHeaders:v51[0]];
    if (*(a1 + 56))
    {
      (*(*(a1 + 56) + 16))();
    }

    if (*(*(a1 + 32) + 48))
    {
      [v51[0] setURL:*(*(a1 + 32) + 48)];
    }

    v17 = _BYLoggingFacility();
    v16 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      v14 = v51[0];
      v15 = [v51[0] allHTTPHeaderFields];
      sub_100078180(v52, v14, v15);
      _os_log_debug_impl(&_mh_execute_header, v17, v16, "Created session request %@ with headers %@", v52, 0x16u);

      objc_storeStrong(&v15, 0);
    }

    objc_storeStrong(&v17, 0);
    [*(a1 + 32) _sendSessionRequest:v51[0] withOptions:*(a1 + 40)];
  }

  else
  {
    v37 = _BYLoggingFacility();
    v36 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      v34 = 0;
      v32 = 0;
      if (_BYIsInternalInstall())
      {
        v9 = v50;
      }

      else if (v50)
      {
        v35 = [v50 domain];
        v34 = 1;
        v9 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"<Error domain: %@, code %ld>", v35, [v50 code]);
        v33 = v9;
        v32 = 1;
      }

      else
      {
        v9 = 0;
      }

      sub_100071CBC(v54, v9);
      _os_log_impl(&_mh_execute_header, v37, v36, "Activation: Failed to create session url request: %{public}@", v54, 0xCu);
      if (v32)
      {
      }

      if (v34)
      {
      }
    }

    objc_storeStrong(&v37, 0);
    v10 = &_dispatch_main_q;
    block = _NSConcreteStackBlock;
    v26 = -1073741824;
    v27 = 0;
    v28 = sub_10020B0E0;
    v29 = &unk_10032BCA0;
    v31 = *(a1 + 48);
    v30 = v50;
    dispatch_async(v10, &block);

    objc_storeStrong(&v30, 0);
    objc_storeStrong(&v31, 0);
  }

  objc_storeStrong(&v50, 0);
  objc_storeStrong(v51, 0);
}

void sub_10020B4B8(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v21 = 0;
  objc_storeStrong(&v21, a3);
  v20 = 0;
  objc_storeStrong(&v20, a4);
  v19 = 0;
  objc_storeStrong(&v19, a5);
  v18 = a1;
  v17 = _BYSignpostGetNanoseconds() / 1000000000.0;
  log = _BYSignpostSubsystem();
  v15 = 2;
  v14 = a1[5];
  if (v14 && v14 != -1 && os_signpost_enabled(log))
  {
    v9 = log;
    v10 = v15;
    v11 = v14;
    sub_10006AA68(buf);
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v9, v10, v11, "ActivationSendRequest", "", buf, 2u);
  }

  objc_storeStrong(&log, 0);
  oslog = _BYSignpostSubsystem();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000CE794(v23, a1[5], *&v17);
    _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: ActivationSendRequest ", v23, 0x16u);
  }

  objc_storeStrong(&oslog, 0);
  if (a1[4])
  {
    (*(a1[4] + 16))();
  }

  objc_storeStrong(&v19, 0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(&v21, 0);
  objc_storeStrong(location, 0);
}

double sub_10020C1D0(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  *&result = 67109634;
  *a1 = 67109634;
  *(a1 + 4) = a2;
  *(a1 + 8) = 2112;
  *(a1 + 10) = a3;
  *(a1 + 18) = 2112;
  *(a1 + 20) = a4;
  return result;
}

void sub_10020C434(NSObject *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  oslog[1] = a1;
  oslog[0] = _BYLoggingFacility();
  v6 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
  {
    v3 = oslog[0];
    v4 = v6;
    sub_10006AA68(v5);
    _os_log_impl(&_mh_execute_header, v3, v4, "Invalidating and cancelling activation session task due to connectivity", v5, 2u);
  }

  objc_storeStrong(oslog, 0);
  [(objc_class *)a1[4].isa cancel];
  objc_storeStrong(location, 0);
}

void sub_10020D93C(id a1)
{
  location[2] = a1;
  location[1] = a1;
  v1 = +[BuddyTestFundamentalFlow classes];
  location[0] = [v1 mutableCopy];

  memset(__b, 0, sizeof(__b));
  v2 = [location[0] copy];
  v3 = [v2 countByEnumeratingWithState:__b objects:v13 count:16];
  if (v3)
  {
    v4 = *__b[2];
    do
    {
      for (i = 0; i < v3; ++i)
      {
        if (*__b[2] != v4)
        {
          objc_enumerationMutation(v2);
        }

        v11 = 0;
        v11 = *(__b[1] + 8 * i);
        if ([v11 isSubclassOfClass:objc_opt_class()])
        {
          v6 = location[0];
          v7 = [v11 allowedFlowItems];
          [v6 addObjectsFromArray:v7];
        }
      }

      v3 = [v2 countByEnumeratingWithState:__b objects:v13 count:16];
    }

    while (v3);
  }

  v8 = [location[0] copy];
  v9 = qword_1003A7400;
  qword_1003A7400 = v8;

  objc_storeStrong(location, 0);
}

void sub_10020E698(uint64_t a1)
{
  [*(a1 + 32) alphaForBuddyBackgroundStyle:{*(a1 + 40), a1, a1}];
  v3 = v2;
  v4 = [*(a1 + 32) view];
  [v4 setAlpha:v3];
}

id sub_10020ED70()
{
  v9 = 0;
  v10 = &v9;
  v11 = 1342177280;
  v12 = 32;
  v8 = qword_1003A7410;
  v13 = qword_1003A7410;
  if (!qword_1003A7410)
  {
    v2.super.isa = _NSConcreteStackBlock;
    v3 = -1073741824;
    v4 = 0;
    v5 = sub_10020EFE4;
    v6 = &unk_10032B070;
    v7 = &v9;
    sub_10020EFE4(&v2);
  }

  v0 = v10[3];
  _Block_object_dispose(&v9, 8);

  return v0;
}

void sub_10020EE84(id a1, BOOL a2, NSError *a3)
{
  v13 = a1;
  v12 = a2;
  location = 0;
  objc_storeStrong(&location, a3);
  oslog[1] = a1;
  if (v12)
  {
    v8 = _BYLoggingFacility();
    v7 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v4 = v8;
      v5 = v7;
      sub_10006AA68(v6);
      _os_log_impl(&_mh_execute_header, v4, v5, "FTRegAppleIDSetupManager (background) setup success.", v6, 2u);
    }

    objc_storeStrong(&v8, 0);
  }

  else
  {
    oslog[0] = _BYLoggingFacility();
    v9 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
    {
      sub_10006AE18(buf, location);
      _os_log_impl(&_mh_execute_header, oslog[0], v9, "FTRegAppleIDSetupManager (background) setup failed with error %@", buf, 0xCu);
    }

    objc_storeStrong(oslog, 0);
  }

  objc_storeStrong(&location, 0);
}

void sub_10020EFE4(NSAssertionHandler *a1)
{
  sub_10020F128();
  *(*(a1[4].super.isa + 1) + 24) = objc_getClass("FTRegAppleIDSetupManager");
  if (!*(*(a1[4].super.isa + 1) + 24))
  {
    a1 = +[NSAssertionHandler currentHandler];
    v2 = [NSString stringWithUTF8String:"Class getFTRegAppleIDSetupManagerClass(void)_block_invoke"];
    [(NSAssertionHandler *)a1 handleFailureInFunction:v2 file:@"BuddyAppleIDFacetimeRegistrationManager.m" lineNumber:20 description:@"Unable to find class %s", "FTRegAppleIDSetupManager"];

    __break(1u);
  }

  qword_1003A7410 = *(*(a1[4].super.isa + 1) + 24);
}

void sub_10020F128()
{
  if (!sub_10020F250())
  {
    v0 = +[NSAssertionHandler currentHandler];
    v1 = [NSString stringWithUTF8String:"void *CommunicationsSetupUILibrary(void)"];
    [(NSAssertionHandler *)v0 handleFailureInFunction:v1 file:@"BuddyAppleIDFacetimeRegistrationManager.m" lineNumber:19 description:@"%s", 0];

    __break(1u);
  }
}

uint64_t sub_10020F250()
{
  if (!qword_1003A7418)
  {
    sub_10020F304();
  }

  return qword_1003A7418;
}

uint64_t sub_10020F304()
{
  result = _sl_dlopen();
  qword_1003A7418 = result;
  return result;
}

id sub_10020F6A8()
{
  v9 = 0;
  v10 = &v9;
  v11 = 1342177280;
  v12 = 32;
  v8 = qword_1003A7420;
  v13 = qword_1003A7420;
  if (!qword_1003A7420)
  {
    v2.super.isa = _NSConcreteStackBlock;
    v3 = -1073741824;
    v4 = 0;
    v5 = sub_10020FB5C;
    v6 = &unk_10032B070;
    v7 = &v9;
    sub_10020FB5C(&v2);
  }

  v0 = v10[3];
  _Block_object_dispose(&v9, 8);

  return v0;
}

void sub_10020F7BC(uint64_t a1, char a2, id obj)
{
  v13 = a1;
  v12 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  oslog[1] = a1;
  oslog[0] = _BYLoggingFacility();
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
  {
    v4 = v12 & 1;
    v8 = 0;
    v6 = 0;
    if (_BYIsInternalInstall())
    {
      v5 = location;
    }

    else if (location)
    {
      v9 = [location domain];
      v8 = 1;
      v5 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"<Error domain: %@, code %ld>", v9, [location code]);
      v7 = v5;
      v6 = 1;
    }

    else
    {
      v5 = 0;
    }

    sub_10008D1D4(buf, v4, v5);
    _os_log_impl(&_mh_execute_header, oslog[0], OS_LOG_TYPE_DEFAULT, "Did check whether to present safety settings with result %d error %{public}@", buf, 0x12u);
    if (v6)
    {
    }

    if (v8)
    {
    }
  }

  objc_storeStrong(oslog, 0);
  *(*(*(a1 + 40) + 8) + 24) = v12 & 1;
  dispatch_semaphore_signal(*(a1 + 32));
  objc_storeStrong(&location, 0);
}

id sub_10020F9D4()
{
  v9 = 0;
  v10 = &v9;
  v11 = 1342177280;
  v12 = 32;
  v8 = qword_1003A7430;
  v13 = qword_1003A7430;
  if (!qword_1003A7430)
  {
    v2 = _NSConcreteStackBlock;
    v3 = -1073741824;
    v4 = 0;
    v5 = sub_10020FF10;
    v6 = &unk_10032B070;
    v7 = &v9;
    sub_10020FF10(&v2);
  }

  v0 = v10[3];
  _Block_object_dispose(&v9, 8);

  return v0;
}

void sub_10020FB5C(NSAssertionHandler *a1)
{
  sub_10020FCA0();
  *(*(a1[4].super.isa + 1) + 24) = objc_getClass("AISSafetySettingsController");
  if (!*(*(a1[4].super.isa + 1) + 24))
  {
    a1 = +[NSAssertionHandler currentHandler];
    v2 = [NSString stringWithUTF8String:"Class getAISSafetySettingsControllerClass(void)_block_invoke"];
    [(NSAssertionHandler *)a1 handleFailureInFunction:v2 file:@"BuddySafetySettingsPresentationManager.m" lineNumber:39 description:@"Unable to find class %s", "AISSafetySettingsController"];

    __break(1u);
  }

  qword_1003A7420 = *(*(a1[4].super.isa + 1) + 24);
}

void sub_10020FCA0()
{
  if (!sub_10020FDC8())
  {
    v0 = +[NSAssertionHandler currentHandler];
    v1 = [NSString stringWithUTF8String:"void *AppleIDSetupLibrary(void)"];
    [(NSAssertionHandler *)v0 handleFailureInFunction:v1 file:@"BuddySafetySettingsPresentationManager.m" lineNumber:37 description:@"%s", 0];

    __break(1u);
  }
}

uint64_t sub_10020FDC8()
{
  if (!qword_1003A7428)
  {
    sub_10020FE7C();
  }

  return qword_1003A7428;
}

uint64_t sub_10020FE7C()
{
  result = _sl_dlopen();
  qword_1003A7428 = result;
  return result;
}

Class sub_10020FF10(uint64_t a1)
{
  sub_10020FDC8();
  result = objc_getClass("AISSafetySettingsContext");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1003A7430 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_100210124(uint64_t a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v3 = [location[0] genericTermsURL];
  v4 = [NSURL URLWithString:v3];
  [*(a1 + 32) setTermsURL:v4];

  v5 = *(a1 + 40);
  v6 = [*(a1 + 32) termsURL];
  (*(v5 + 16))(v5, v6 != 0);

  objc_storeStrong(location, 0);
}

void sub_10021035C(uint64_t a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v17 = 0;
  objc_storeStrong(&v17, a3);
  if (([*(a1 + 32) presentationCanceled] & 1) == 0)
  {
    if (location[0])
    {
      [*(a1 + 32) setNavigationController:*(a1 + 40)];
      [*(a1 + 32) setPresentationCompletion:*(a1 + 48)];
      v5 = objc_alloc_init(RemoteUIController);
      [*(a1 + 32) setRemoteUIController:v5];

      v6 = [*(a1 + 32) navigationController];
      v7 = [*(a1 + 32) remoteUIController];
      [v7 setNavigationController:v6];

      v8 = *(a1 + 32);
      v9 = [v8 remoteUIController];
      [v9 setDelegate:v8];

      v10 = +[RUIStyle setupAssistantStyle];
      v11 = [*(a1 + 32) remoteUIController];
      [v11 setStyle:v10];

      v12 = *(a1 + 32);
      v13 = [v12 remoteUIController];
      [v12 _addHandlersForTermsButtonsToRemoteUIController:v13];

      v14 = [*(a1 + 32) remoteUIController];
      v15 = location[0];
      v16 = [*(a1 + 32) termsURL];
      [v14 loadData:v15 baseURL:v16];
    }

    else
    {
      (*(*(a1 + 48) + 16))();
    }
  }

  objc_storeStrong(&v17, 0);
  objc_storeStrong(location, 0);
}

void sub_1002109CC(NSObject *a1, void *a2, void *a3, void *a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v15 = 0;
  objc_storeStrong(&v15, a3);
  v14 = 0;
  objc_storeStrong(&v14, a4);
  oslog[1] = a1;
  oslog[0] = _BYLoggingFacility();
  v12 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
  {
    v7 = oslog[0];
    v8 = v12;
    sub_10006AA68(v11);
    _os_log_impl(&_mh_execute_header, v7, v8, "User agreed to terms", v11, 2u);
  }

  objc_storeStrong(oslog, 0);
  isa = a1[4].isa;
  v10 = [objc_opt_class() _termsVersionFromObjectModel:location[0]];
  [(objc_class *)isa _userRespondedToCombinedTCsWithAgreement:1 withSLAVersion:v10];

  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(location, 0);
}

void sub_100210B00(NSObject *a1, void *a2, void *a3, void *a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v13 = 0;
  objc_storeStrong(&v13, a3);
  v12 = 0;
  objc_storeStrong(&v12, a4);
  oslog[1] = a1;
  oslog[0] = _BYLoggingFacility();
  v10 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
  {
    v7 = oslog[0];
    v8 = v10;
    sub_10006AA68(v9);
    _os_log_impl(&_mh_execute_header, v7, v8, "User disagreed to terms", v9, 2u);
  }

  objc_storeStrong(oslog, 0);
  [(objc_class *)a1[4].isa _userRespondedToCombinedTCsWithAgreement:0 withSLAVersion:0];
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(location, 0);
}

void sub_100212764(uint64_t a1, char a2, id obj)
{
  v21 = a1;
  v20 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  v18[1] = a1;
  if (v20)
  {
    v4 = *(a1 + 32);
    v5 = *(*(a1 + 40) + 48);
    v12 = _NSConcreteStackBlock;
    v13 = -1073741824;
    v14 = 0;
    v15 = sub_1002129F0;
    v16 = &unk_10032DEC8;
    v17 = *(a1 + 40);
    v18[0] = *(a1 + 48);
    [v4 saveAccount:v5 withCompletionHandler:&v12];
    objc_storeStrong(v18, 0);
    objc_storeStrong(&v17, 0);
  }

  else
  {
    oslog = _BYLoggingFacility();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 0;
      v7 = 0;
      if (_BYIsInternalInstall())
      {
        v6 = location;
      }

      else if (location)
      {
        v10 = [location domain];
        v9 = 1;
        v6 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"<Error domain: %@, code %ld>", v10, [location code]);
        v8 = v6;
        v7 = 1;
      }

      else
      {
        v6 = 0;
      }

      sub_100071CBC(buf, v6);
      _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "AppleIDHost: Silent -updateProperties failed, error: %{public}@", buf, 0xCu);
      if (v7)
      {
      }

      if (v9)
      {
      }
    }

    objc_storeStrong(&oslog, 0);
    (*(*(a1 + 48) + 16))();
  }

  objc_storeStrong(&location, 0);
}

void sub_1002129F0(NSObject *a1, char a2, id obj)
{
  v13 = a1;
  v12 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  oslog[1] = a1;
  [(objc_class *)a1[4].isa setRanSilentUpdateProperties:1];
  oslog[0] = _BYLoggingFacility();
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
  {
    v4 = v12 & 1;
    v8 = 0;
    v6 = 0;
    if (_BYIsInternalInstall())
    {
      v5 = location;
    }

    else if (location)
    {
      v9 = [location domain];
      v8 = 1;
      v5 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"<Error domain: %@, code %ld>", v9, [location code]);
      v7 = v5;
      v6 = 1;
    }

    else
    {
      v5 = 0;
    }

    sub_10008D1D4(buf, v4, v5);
    _os_log_impl(&_mh_execute_header, oslog[0], OS_LOG_TYPE_DEFAULT, "AppleIDHost: Silent -updateProperties succeeded! Save success = %d error: %{public}@", buf, 0x12u);
    if (v6)
    {
    }

    if (v8)
    {
    }
  }

  objc_storeStrong(oslog, 0);
  (*(a1[5].isa + 2))();
  objc_storeStrong(&location, 0);
}

void sub_1002134D8(id *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v8[1] = a1;
  v8[0] = objc_alloc_init(ACAccountStore);
  v7 = [v8[0] accounts];
  if ([v7 count])
  {
    v3 = +[BuddyAccountTools sharedBuddyAccountTools];
    v4 = [v7 objectAtIndexedSubscript:0];
    [v3 removeAccount:v4 completion:0];
  }

  v5 = [a1[4] delegate];
  v6 = [v5 popToBuddyControllerWithClass:objc_opt_class() withOffset:1 animated:1];

  objc_storeStrong(&v7, 0);
  objc_storeStrong(v8, 0);
  objc_storeStrong(location, 0);
}

id sub_100213C44()
{
  v9 = 0;
  v10 = &v9;
  v11 = 1342177280;
  v12 = 32;
  v8 = qword_1003A7438;
  v13 = qword_1003A7438;
  if (!qword_1003A7438)
  {
    v2.super.isa = _NSConcreteStackBlock;
    v3 = -1073741824;
    v4 = 0;
    v5 = sub_100213F38;
    v6 = &unk_10032B070;
    v7 = &v9;
    sub_100213F38(&v2);
  }

  v0 = v10[3];
  _Block_object_dispose(&v9, 8);

  return v0;
}

void sub_100213F38(NSAssertionHandler *a1)
{
  sub_10021407C();
  *(*(a1[4].super.isa + 1) + 24) = objc_getClass("SBFSecureWindow");
  if (!*(*(a1[4].super.isa + 1) + 24))
  {
    a1 = +[NSAssertionHandler currentHandler];
    v2 = [NSString stringWithUTF8String:"Class getSBFSecureWindowClass(void)_block_invoke"];
    [(NSAssertionHandler *)a1 handleFailureInFunction:v2 file:@"BuddyLockscreenSceneDelegate.m" lineNumber:21 description:@"Unable to find class %s", "SBFSecureWindow"];

    __break(1u);
  }

  qword_1003A7438 = *(*(a1[4].super.isa + 1) + 24);
}

void sub_10021407C()
{
  if (!sub_1002141A4())
  {
    v0 = +[NSAssertionHandler currentHandler];
    v1 = [NSString stringWithUTF8String:"void *SpringBoardFoundationLibrary(void)"];
    [(NSAssertionHandler *)v0 handleFailureInFunction:v1 file:@"BuddyLockscreenSceneDelegate.m" lineNumber:20 description:@"%s", 0];

    __break(1u);
  }
}

uint64_t sub_1002141A4()
{
  if (!qword_1003A7440)
  {
    sub_100214258();
  }

  return qword_1003A7440;
}

uint64_t sub_100214258()
{
  result = _sl_dlopen();
  qword_1003A7440 = result;
  return result;
}

void sub_100214F34(id *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v10[1] = a1;
  v3 = &_dispatch_main_q;
  block = _NSConcreteStackBlock;
  v5 = -1073741824;
  v6 = 0;
  v7 = sub_100215044;
  v8 = &unk_10032B838;
  v9 = location[0];
  v10[0] = a1[4];
  dispatch_async(v3, &block);

  objc_storeStrong(v10, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

id sub_100215044(NSObject *a1)
{
  oslog[2] = a1;
  oslog[1] = a1;
  [BFFViewControllerSpinnerManager stopAnimatingSpinnerFor:@"Disclosure"];
  if (a1[4].isa)
  {
    oslog[0] = _BYLoggingFacility();
    v7 = 16;
    if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_ERROR))
    {
      v2 = oslog[0];
      v3 = v7;
      sub_10006AA68(v6);
      _os_log_error_impl(&_mh_execute_header, v2, v3, "BuddyCloudConfigController: _setupForCloudConfigurationState: Error attempting to store cloud config details!", v6, 2u);
    }

    objc_storeStrong(oslog, 0);
    return [(objc_class *)a1[5].isa showRetrievalError:a1[4].isa];
  }

  else
  {
    [(objc_class *)a1[5].isa setLastRetrievalError:0];
    v5 = [(objc_class *)a1[5].isa configController];
    [v5 setCloudConfigState:3];

    return [(objc_class *)a1[5].isa _setupForCloudConfigurationState];
  }
}

void sub_100215154(id *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v10[1] = a1;
  v3 = &_dispatch_main_q;
  block = _NSConcreteStackBlock;
  v5 = -1073741824;
  v6 = 0;
  v7 = sub_100215264;
  v8 = &unk_10032B838;
  v9 = location[0];
  v10[0] = a1[4];
  dispatch_async(v3, &block);

  objc_storeStrong(v10, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

id sub_100215264(uint64_t a1)
{
  [BFFViewControllerSpinnerManager stopAnimatingSpinnerFor:@"Disclosure", a1, a1];
  if (*(a1 + 32))
  {
    return [*(a1 + 40) showRetrievalError:*(a1 + 32)];
  }

  [*(a1 + 40) setLastRetrievalError:0];
  v3 = [*(a1 + 40) configController];
  [v3 setCloudConfigState:3];

  return [*(a1 + 40) _setupForCloudConfigurationState];
}

void sub_1002157B4(id *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v9[1] = a1;
  v3 = &_dispatch_main_q;
  v4 = _NSConcreteStackBlock;
  v5 = -1073741824;
  v6 = 0;
  v7 = sub_1002158A0;
  v8 = &unk_10032AF58;
  objc_copyWeak(v9, a1 + 4);
  dispatch_async(v3, &v4);

  objc_destroyWeak(v9);
  objc_storeStrong(location, 0);
}

void sub_1002158A0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _showEraseDeviceAlert];
}

void sub_100215AC8(id *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v9[1] = a1;
  v3 = &_dispatch_main_q;
  v4 = _NSConcreteStackBlock;
  v5 = -1073741824;
  v6 = 0;
  v7 = sub_100215BB4;
  v8 = &unk_10032AF58;
  objc_copyWeak(v9, a1 + 4);
  dispatch_async(v3, &v4);

  objc_destroyWeak(v9);
  objc_storeStrong(location, 0);
}

void sub_100215BB4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _leaveRemoteManagementAndErase];
}

void sub_100215D7C(id *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v22[1] = a1;
  if (location[0])
  {
    v4 = +[NSBundle mainBundle];
    v5 = [(NSBundle *)v4 localizedStringForKey:@"REMOTE_MANAGEMENT_LEAVE_FAILED_ALERT_TITLE" value:&stru_10032F900 table:@"Localizable"];
    v6 = +[NSBundle mainBundle];
    v7 = [UIDevice modelSpecificLocalizedStringKeyForKey:@"REMOTE_MANAGEMENT_LEAVE_FAILED_ALERT_BODY"];
    v8 = [(NSBundle *)v6 localizedStringForKey:v7 value:&stru_10032F900 table:@"Localizable"];
    v20 = [UIAlertController alertControllerWithTitle:v5 message:v8 preferredStyle:1];

    v9 = +[NSBundle mainBundle];
    v10 = [(NSBundle *)v9 localizedStringForKey:@"OK" value:&stru_10032F900 table:@"Localizable"];
    v19 = [UIAlertAction actionWithTitle:v10 style:1 handler:0];

    [v20 addAction:v19];
    v11 = &_dispatch_main_q;
    block = _NSConcreteStackBlock;
    v13 = -1073741824;
    v14 = 0;
    v15 = sub_10021631C;
    v16 = &unk_10032AFA8;
    objc_copyWeak(&v18, a1 + 4);
    v17 = v20;
    dispatch_async(v11, &block);

    objc_storeStrong(&v17, 0);
    objc_destroyWeak(&v18);
    objc_storeStrong(&v19, 0);
    objc_storeStrong(&v20, 0);
  }

  else
  {
    NSLog(@"Unenroll is successfull. Erasing the device...");
    v22[0] = objc_alloc_init(DDRResetOptions);
    [v22[0] setEraseDataPlan:1];
    v21 = [[DDRResetRequest alloc] initWithMode:4 options:v22[0] reason:@"Remote Management Unenroll"];
    v3 = +[DDRResetService sharedInstance];
    [(DDRResetService *)v3 resetWithRequest:v21 completion:&stru_10032F3C8];

    objc_storeStrong(&v21, 0);
    objc_storeStrong(v22, 0);
  }

  objc_storeStrong(location, 0);
}

void sub_1002160F8(id a1, NSError *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  oslog[1] = a1;
  if (location[0])
  {
    oslog[0] = _BYLoggingFacility();
    v13 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_ERROR))
    {
      v11 = 0;
      v9 = 0;
      if (_BYIsInternalInstall())
      {
        v3 = location[0];
      }

      else if (location[0])
      {
        v12 = [location[0] domain];
        v11 = 1;
        v3 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"<Error domain: %@, code %ld>", v12, [location[0] code]);
        v10 = v3;
        v9 = 1;
      }

      else
      {
        v3 = 0;
      }

      sub_100071CBC(buf, v3);
      _os_log_error_impl(&_mh_execute_header, oslog[0], v13, "Reset failed: %{public}@", buf, 0xCu);
      if (v9)
      {
      }

      if (v11)
      {
      }
    }

    objc_storeStrong(oslog, 0);
  }

  else
  {
    v8 = _BYLoggingFacility();
    v7 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v4 = v8;
      v5 = v7;
      sub_10006AA68(v6);
      _os_log_impl(&_mh_execute_header, v4, v5, "Reset was successful!", v6, 2u);
    }

    objc_storeStrong(&v8, 0);
  }

  objc_storeStrong(location, 0);
}

void sub_10021631C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained navigationController];
  [v3 presentViewController:*(a1 + 32) animated:1 completion:0];
}

void sub_100216F54(id *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v14 = 0;
  objc_storeStrong(&v14, a3);
  v13[1] = a1;
  v5 = &_dispatch_main_q;
  block = _NSConcreteStackBlock;
  v7 = -1073741824;
  v8 = 0;
  v9 = sub_1002170A4;
  v10 = &unk_10032BB10;
  v11 = location[0];
  v12 = a1[4];
  v13[0] = v14;
  dispatch_async(v5, &block);

  objc_storeStrong(v13, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(location, 0);
}

void sub_1002170A4(NSObject *a1)
{
  oslog[2] = a1;
  oslog[1] = a1;
  [BFFViewControllerSpinnerManager stopAnimatingSpinnerFor:@"Disclosure"];
  if (a1[4].isa)
  {
    if ([BuddyCloudConfigController isSoftwareUpdateError:a1[4].isa])
    {
      v2 = [(objc_class *)a1[5].isa configController];
      [v2 transitionToSoftwareUpdateControllerFromController:a1[5].isa lastError:a1[4].isa];
    }

    else if ([BuddyCloudConfigController isCredentialsError:a1[4].isa])
    {
      v3 = [(objc_class *)a1[5].isa configController];
      [v3 setCloudConfigState:6];

      v4 = [(objc_class *)a1[5].isa configController];
      [v4 transitionToLoginViewControllerFromController:a1[5].isa lastError:a1[4].isa];
    }

    else
    {
      oslog[0] = _BYLoggingFacility();
      if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_ERROR))
      {
        v8 = 0;
        v6 = 0;
        if (_BYIsInternalInstall())
        {
          isa = a1[4].isa;
        }

        else if (a1[4].isa)
        {
          v9 = [(objc_class *)a1[4].isa domain];
          v8 = 1;
          isa = [NSString stringWithFormat:@"<Error domain: %@, code %ld>", v9, [(objc_class *)a1[4].isa code]];
          v7 = isa;
          v6 = 1;
        }

        else
        {
          isa = 0;
        }

        sub_100071CBC(buf, isa);
        _os_log_error_impl(&_mh_execute_header, oslog[0], OS_LOG_TYPE_ERROR, "Error retrieving cloud config: %{public}@", buf, 0xCu);
        if (v6)
        {
        }

        if (v8)
        {
        }
      }

      objc_storeStrong(oslog, 0);
      [(objc_class *)a1[5].isa showRetrievalError:a1[4].isa];
    }
  }

  else
  {
    [(objc_class *)a1[5].isa _storeProfileDataAndCompleteDisclosure:a1[6].isa];
  }
}

void sub_1002174EC(id *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v14 = 0;
  objc_storeStrong(&v14, a3);
  v13[1] = a1;
  v5 = &_dispatch_main_q;
  block = _NSConcreteStackBlock;
  v7 = -1073741824;
  v8 = 0;
  v9 = sub_10021763C;
  v10 = &unk_10032BB10;
  v11 = v14;
  v12 = a1[4];
  v13[0] = location[0];
  dispatch_async(v5, &block);

  objc_storeStrong(v13, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(location, 0);
}

void sub_10021763C(NSObject *a1)
{
  oslog[2] = a1;
  oslog[1] = a1;
  [BFFViewControllerSpinnerManager stopAnimatingSpinnerFor:@"Disclosure"];
  if (a1[4].isa)
  {
    if ([BuddyCloudConfigController isSoftwareUpdateError:a1[4].isa])
    {
      v2 = [(objc_class *)a1[5].isa configController];
      [v2 transitionToSoftwareUpdateControllerFromController:a1[5].isa lastError:a1[4].isa];
    }

    else if ([BuddyCloudConfigController isCredentialsError:a1[4].isa])
    {
      v3 = [(objc_class *)a1[5].isa configController];
      [v3 setCloudConfigState:6];

      v4 = [(objc_class *)a1[5].isa configController];
      [v4 transitionToLoginViewControllerFromController:a1[5].isa lastError:a1[4].isa];
    }

    else
    {
      oslog[0] = _BYLoggingFacility();
      v26 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_ERROR))
      {
        v24 = 0;
        v22 = 0;
        if (_BYIsInternalInstall())
        {
          isa = a1[4].isa;
        }

        else if (a1[4].isa)
        {
          v25 = [(objc_class *)a1[4].isa domain];
          v24 = 1;
          isa = [NSString stringWithFormat:@"<Error domain: %@, code %ld>", v25, [(objc_class *)a1[4].isa code]];
          v23 = isa;
          v22 = 1;
        }

        else
        {
          isa = 0;
        }

        sub_100071CBC(buf, isa);
        _os_log_error_impl(&_mh_execute_header, oslog[0], v26, "Error retrieving cloud config: %{public}@", buf, 0xCu);
        if (v22)
        {
        }

        if (v24)
        {
        }
      }

      objc_storeStrong(oslog, 0);
      [(objc_class *)a1[5].isa showRetrievalError:a1[4].isa];
    }
  }

  else
  {
    location = objc_opt_new();
    v20 = 0;
    memset(__b, 0, sizeof(__b));
    v6 = [(objc_class *)a1[5].isa navigationController];
    v7 = [v6 viewControllers];

    v8 = [v7 countByEnumeratingWithState:__b objects:v28 count:16];
    if (v8)
    {
      v9 = *__b[2];
      do
      {
        for (i = 0; i < v8; ++i)
        {
          if (*__b[2] != v9)
          {
            objc_enumerationMutation(v7);
          }

          v19 = *(__b[1] + 8 * i);
          if (v20)
          {
            [location addObject:v19];
          }

          else if ([v19 isEqual:a1[5].isa])
          {
            v20 = 1;
          }
        }

        v8 = [v7 countByEnumeratingWithState:__b objects:v28 count:16];
      }

      while (v8);
    }

    v11 = [(objc_class *)a1[5].isa configController];
    v12 = [v11 delegate];
    [v12 removeViewControllersOnNextPush:location];

    v17 = _BYLoggingFacility();
    v16 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v13 = v17;
      v14 = v16;
      sub_10006AA68(v15);
      _os_log_impl(&_mh_execute_header, v13, v14, "MDM profile retrieved!!", v15, 2u);
    }

    objc_storeStrong(&v17, 0);
    [(objc_class *)a1[5].isa _storeProfileDataAndCompleteDisclosure:a1[6].isa];
    objc_storeStrong(&location, 0);
  }
}

void sub_100217CC0(id *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v10[1] = a1;
  v3 = &_dispatch_main_q;
  block = _NSConcreteStackBlock;
  v5 = -1073741824;
  v6 = 0;
  v7 = sub_100217DD0;
  v8 = &unk_10032B838;
  v9 = location[0];
  v10[0] = a1[4];
  dispatch_async(v3, &block);

  objc_storeStrong(v10, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

void sub_100217DD0(NSObject *a1)
{
  oslog[2] = a1;
  oslog[1] = a1;
  if (a1[4].isa)
  {
    oslog[0] = _BYLoggingFacility();
    if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_ERROR))
    {
      v6 = 0;
      v4 = 0;
      if (_BYIsInternalInstall())
      {
        isa = a1[4].isa;
      }

      else if (a1[4].isa)
      {
        v7 = [(objc_class *)a1[4].isa domain];
        v6 = 1;
        isa = [NSString stringWithFormat:@"<Error domain: %@, code %ld>", v7, [(objc_class *)a1[4].isa code]];
        v5 = isa;
        v4 = 1;
      }

      else
      {
        isa = 0;
      }

      sub_100071CBC(buf, isa);
      _os_log_error_impl(&_mh_execute_header, oslog[0], OS_LOG_TYPE_ERROR, "Failed to store profile data with error: %{public}@", buf, 0xCu);
      if (v4)
      {
      }

      if (v6)
      {
      }
    }

    objc_storeStrong(oslog, 0);
    [(objc_class *)a1[5].isa showRetrievalError:a1[4].isa];
  }

  else
  {
    v3 = [(objc_class *)a1[5].isa configController];
    [v3 cloudConfigDidFinishFromViewController:a1[5].isa wasApplied:1];
  }
}

id sub_1002184B0(NSObject *a1)
{
  oslog[2] = a1;
  oslog[1] = a1;
  oslog[0] = _BYLoggingFacility();
  v6 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
  {
    v2 = oslog[0];
    v3 = v6;
    sub_10006AA68(v5);
    _os_log_impl(&_mh_execute_header, v2, v3, "Web controller finished dimissing; advancing panes!", v5, 2u);
  }

  objc_storeStrong(oslog, 0);
  return [(objc_class *)a1[4].isa _storeProfileDataAndCompleteDisclosure:a1[5].isa];
}

void sub_10021A5A4(void *a1, void *a2, _BYTE *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v7 = a3;
  v5 = a1[4];
  v6 = [location[0] domain];
  LOBYTE(v5) = [v5 containsObject:v6];

  if (v5)
  {
    *(*(a1[5] + 8) + 24) = 1;
    *v7 = 1;
  }

  objc_storeStrong(location, 0);
}

void sub_10021A7A8(uint64_t a1)
{
  v27 = a1;
  v26 = a1;
  v2 = [*(a1 + 32) managedConfiguration];
  v3 = [v2 isPasscodeSet];

  v25 = v3 & 1;
  if ((v3 & 1) == 0)
  {
    v4 = [*(a1 + 32) passcodeCacheManager];
    v24 = [v4 cachedPasscode];

    v5 = [*(a1 + 32) passcodeCacheManager];
    [v5 uncachePasscode];

    if (v24)
    {
      location = 0;
      v6 = [*(a1 + 32) managedConfiguration];
      obj = 0;
      v7 = [v6 changePasscodeFrom:0 to:v24 outError:&obj];
      objc_storeStrong(&location, obj);

      if ((v7 ^ 1))
      {
        oslog = _BYLoggingFacility();
        v20 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
        {
          v18 = 0;
          v16 = 0;
          if (_BYIsInternalInstall())
          {
            v8 = location;
          }

          else if (location)
          {
            v19 = [location domain];
            v18 = 1;
            v8 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"<Error domain: %@, code %ld>", v19, [location code]);
            v17 = v8;
            v16 = 1;
          }

          else
          {
            v8 = 0;
          }

          sub_100071CBC(buf, v8);
          _os_log_impl(&_mh_execute_header, oslog, v20, "Failed to set the passcode: %{public}@", buf, 0xCu);
          if (v16)
          {
          }

          if (v18)
          {
          }
        }

        objc_storeStrong(&oslog, 0);
      }

      else
      {
        v15 = _BYLoggingFacility();
        v14 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          v9 = v15;
          v10 = v14;
          sub_10006AA68(v13);
          _os_log_impl(&_mh_execute_header, v9, v10, "Successfully set the passcode!", v13, 2u);
        }

        objc_storeStrong(&v15, 0);
        BYSetupAssistantCreateAuthContext();
        v11 = [*(a1 + 32) passcodeCacheManager];
        [v11 cachePasscode:v24 retrievable:1];

        v12 = [*(a1 + 32) buddyPreferences];
        [v12 setObject:&__kCFBooleanTrue forKey:@"Passcode4Presented"];
      }

      objc_storeStrong(&location, 0);
    }

    objc_storeStrong(&v24, 0);
  }

  if (*(a1 + 40))
  {
    (*(*(a1 + 40) + 16))();
  }
}

void sub_10021CC34(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = *(a1 + 32);
  v4 = [v3 error];
  [v2 backupDeviceController:v3 backupCompletedWithError:v4];
}

double sub_10021E7D8(uint64_t a1, int a2, uint64_t a3, int a4)
{
  *&result = 67109634;
  *a1 = 67109634;
  *(a1 + 4) = a2;
  *(a1 + 8) = 2112;
  *(a1 + 10) = a3;
  *(a1 + 18) = 1024;
  *(a1 + 20) = a4;
  return result;
}

double sub_10021EED8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  *&result = 138412802;
  *a1 = 138412802;
  *(a1 + 4) = a2;
  *(a1 + 12) = 1024;
  *(a1 + 14) = a3;
  *(a1 + 18) = 2048;
  *(a1 + 20) = a4;
  return result;
}

void sub_10021F23C(id a1)
{
  v1 = objc_opt_new();
  v2 = qword_1003A7448;
  qword_1003A7448 = v1;
}

void sub_100220FFC(uint64_t a1)
{
  v1 = [*(*(a1 + 32) + 24) layer];
  v2 = +[UIColor _labelColor];
  [v1 setBorderColor:{objc_msgSend(v2, "CGColor")}];
}

void sub_1002223C8(id a1)
{
  v1 = objc_alloc_init(BuddyThreatNotificationProvider);
  v2 = qword_1003A7458;
  qword_1003A7458 = v1;
}

id sub_100222604(uint64_t a1)
{
  result = [TNUIOnBoardingFlow isLDMEnabledOnBoardingViewControllerRequired:a1];
  *(*(*(a1 + 32) + 8) + 24) = result & 1;
  return result;
}

void sub_1002228F8(id a1)
{
  v1 = objc_alloc_init(BuddySIMManager);
  v2 = qword_1003A7470;
  qword_1003A7470 = v1;
}

void sub_100223314(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  if (a1[4])
  {
    (*(a1[4] + 16))();
  }

  objc_storeStrong(location, 0);
}

void sub_100224230(id *a1)
{
  v30[2] = a1;
  v30[1] = a1;
  v2 = [a1[4] managedConfiguration];
  v30[0] = [v2 cloudConfigurationDetails];

  v3 = [v30[0] objectForKeyedSubscript:kMCCCConfigurationURLKey];
  v29 = [NSURL URLWithString:v3];

  v4 = a1[4];
  v5 = [v4 usernameCell];
  v6 = [v5 editableTextField];
  v7 = [v6 text];
  v28 = [v4 _sanitizedUsername:v7];

  v8 = [a1[4] passwordCell];
  v9 = [v8 editableTextField];
  v27 = [v9 text];

  v10 = [v30[0] objectForKeyedSubscript:kMCCCAnchorCertificatesKey];
  location = [BuddyCloudConfigController getCertificatesFromCertificateDataArray:v10];

  oslog = _BYLoggingFacility();
  v24 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    sub_10022460C(buf, v28);
    _os_log_impl(&_mh_execute_header, oslog, v24, "Retrieving configuration for username: %{private}@", buf, 0xCu);
  }

  objc_storeStrong(&oslog, 0);
  v11 = [a1[4] managedConfiguration];
  v12 = v29;
  v13 = v28;
  v14 = v27;
  v15 = location;
  v31 = kMDMCanRequestSoftwareUpdateKey;
  v16 = [NSNumber numberWithBool:1];
  v32 = v16;
  v17 = [NSDictionary dictionaryWithObjects:&v32 forKeys:&v31 count:1];
  v18 = _NSConcreteStackBlock;
  v19 = -1073741824;
  v20 = 0;
  v21 = sub_100224620;
  v22 = &unk_10032F418;
  v23 = a1[4];
  [v11 retrieveCloudConfigurationFromURL:v12 username:v13 password:v14 anchorCertificates:v15 additionalMachineInfo:v17 completionBlock:&v18];

  objc_storeStrong(&v23, 0);
  objc_storeStrong(&location, 0);
  objc_storeStrong(&v27, 0);
  objc_storeStrong(&v28, 0);
  objc_storeStrong(&v29, 0);
  objc_storeStrong(v30, 0);
}

double sub_10022460C(uint64_t a1, uint64_t a2)
{
  *&result = 138477827;
  *a1 = 138477827;
  *(a1 + 4) = a2;
  return result;
}

void sub_100224620(id *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v14 = 0;
  objc_storeStrong(&v14, a3);
  v13[1] = a1;
  v5 = &_dispatch_main_q;
  block = _NSConcreteStackBlock;
  v7 = -1073741824;
  v8 = 0;
  v9 = sub_100224770;
  v10 = &unk_10032BB10;
  v11 = a1[4];
  v12 = location[0];
  v13[0] = v14;
  dispatch_async(v5, &block);

  objc_storeStrong(v13, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(location, 0);
}

void sub_100224770(uint64_t a1)
{
  v27[2] = a1;
  v27[1] = a1;
  [BFFViewControllerSpinnerManager stopAnimatingSpinnerFor:@"Login"];
  v2 = [*(a1 + 32) view];
  [v2 setUserInteractionEnabled:1];

  if (*(a1 + 40))
  {
    if ([BuddyCloudConfigController isCredentialsError:*(a1 + 40)])
    {
      v3 = [*(a1 + 32) configController];
      [v3 setCloudConfigState:6];

      v4 = [*(a1 + 32) passwordCell];
      v5 = [v4 editableTextField];
      [v5 becomeFirstResponder];

      v6 = +[NSBundle mainBundle];
      v7 = [(NSBundle *)v6 localizedStringForKey:@"CLOUD_CONFIG_CREDENTIAL_MISSING_OR_WRONG" value:&stru_10032F900 table:@"Localizable"];
      v27[0] = [UIAlertController alertControllerWithTitle:0 message:v7 preferredStyle:1];

      v8 = +[NSBundle mainBundle];
      v9 = [(NSBundle *)v8 localizedStringForKey:@"OK" value:&stru_10032F900 table:0];
      v20 = _NSConcreteStackBlock;
      v21 = -1073741824;
      v22 = 0;
      v23 = sub_100224B70;
      v24 = &unk_10032B598;
      v25 = v27[0];
      location = [UIAlertAction actionWithTitle:v9 style:0 handler:&v20];

      [v27[0] addAction:location];
      v10 = [*(a1 + 32) navigationController];
      [v10 presentViewController:v27[0] animated:1 completion:0];

      objc_storeStrong(&location, 0);
      objc_storeStrong(&v25, 0);
      objc_storeStrong(v27, 0);
    }

    else
    {
      if ([BuddyCloudConfigController isSoftwareUpdateError:*(a1 + 40)])
      {
        v11 = [*(a1 + 32) configController];
        [v11 transitionToSoftwareUpdateControllerFromController:*(a1 + 32) lastError:*(a1 + 40)];
      }

      else
      {
        v11 = [*(a1 + 32) configController];
        [v11 transitionToErrorViewInDisclosureViewControllerFromController:*(a1 + 32) lastError:*(a1 + 40)];
      }
    }
  }

  else
  {
    v12 = [*(a1 + 32) managedConfiguration];
    v13 = *(a1 + 48);
    v14 = _NSConcreteStackBlock;
    v15 = -1073741824;
    v16 = 0;
    v17 = sub_100224BCC;
    v18 = &unk_10032B6F0;
    v19 = *(a1 + 32);
    [v12 storeProfileData:v13 completion:&v14];

    objc_storeStrong(&v19, 0);
  }
}

void sub_100224B70(id *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  [a1[4] dismissViewControllerAnimated:1 completion:0];
  objc_storeStrong(location, 0);
}

void sub_100224BCC(id *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v10[1] = a1;
  v3 = &_dispatch_main_q;
  block = _NSConcreteStackBlock;
  v5 = -1073741824;
  v6 = 0;
  v7 = sub_100224CDC;
  v8 = &unk_10032B838;
  v9 = location[0];
  v10[0] = a1[4];
  dispatch_async(v3, &block);

  objc_storeStrong(v10, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

void sub_100224CDC(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = [*(a1 + 40) configController];
    [v2 transitionToErrorViewInDisclosureViewControllerFromController:*(a1 + 40) lastError:*(a1 + 32)];
  }

  else
  {
    v2 = [*(a1 + 40) configController];
    [v2 cloudConfigDidFinishFromViewController:*(a1 + 40) wasApplied:1];
  }
}

void sub_100227274(id *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v3 = [a1[4] view];
  v4 = [v3 window];
  v5 = [v4 windowScene];
  +[BuddyPasscodeBaseViewController _passcodeInputVerticalPaddingForOrientation:](BuddyPasscodeBaseViewController, "_passcodeInputVerticalPaddingForOrientation:", [v5 interfaceOrientation]);
  v7 = v6;

  v8 = [a1[4] contentViewTopConstraint];
  [v8 setConstant:v7];

  v9 = [a1[4] passcodeInputViewBottomConstraint];
  [v9 setConstant:v7];

  objc_storeStrong(location, 0);
}

void sub_100227A34(id *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v3 = [a1[4] delegate];
  [v3 flowItemDone:a1[4]];

  objc_storeStrong(location, 0);
}

void sub_100227AA4(uint64_t a1)
{
  v46 = a1;
  v45 = a1;
  v2 = [*(a1 + 32) proximitySetupController];
  v3 = [v2 validatePasscode:*(a1 + 40)];

  v44 = v3 & 1;
  if (v3)
  {
    oslog = _BYLoggingFacility();
    v33 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      v7 = oslog;
      v8 = v33;
      sub_10006AA68(v32);
      _os_log_impl(&_mh_execute_header, v7, v8, "Passcode entered by user does match source device", v32, 2u);
    }

    objc_storeStrong(&oslog, 0);
    v9 = [*(a1 + 32) proximitySetupController];
    [v9 setHasValidatedPasscode:1];

    v10 = [*(a1 + 32) managedConfiguration];
    v11 = [v10 passcode:*(a1 + 40) meetsCurrentConstraintsOutError:0];

    v31 = v11 & 1;
    if ([*(a1 + 32) _shouldSetPasscode] & 1) != 0 && (v31)
    {
      v30 = _BYLoggingFacility();
      v29 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        v12 = v30;
        v13 = v29;
        sub_10006AA68(v28);
        _os_log_impl(&_mh_execute_header, v12, v13, "Setting a breadcrumb for the passcode to be set later...", v28, 2u);
      }

      objc_storeStrong(&v30, 0);
      v14 = +[UIKeyboardInputModeController sharedInputModeController];
      [v14 saveDeviceUnlockPasscodeInputModes];

      v15 = [*(a1 + 32) passcodeCacheManager];
      [v15 cachePasscode:*(a1 + 40) retrievable:1];
    }

    else
    {
      v27 = _BYLoggingFacility();
      v26 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        v16 = v27;
        v17 = v26;
        sub_10006AA68(v25);
        _os_log_impl(&_mh_execute_header, v16, v17, "Passcode breadcrumb not set; not supposed to set passcode or does not meet current policy", v25, 2u);
      }

      objc_storeStrong(&v27, 0);
    }

    v18 = &_dispatch_main_q;
    v19 = _NSConcreteStackBlock;
    v20 = -1073741824;
    v21 = 0;
    v22 = sub_100227FC0;
    v23 = &unk_10032B0D0;
    v24 = *(a1 + 32);
    dispatch_async(v18, &v19);

    objc_storeStrong(&v24, 0);
  }

  else
  {
    location = _BYLoggingFacility();
    v42 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(location, OS_LOG_TYPE_DEFAULT))
    {
      v4 = location;
      v5 = v42;
      sub_10006AA68(buf);
      _os_log_impl(&_mh_execute_header, v4, v5, "Passcode entered by user does not match source device", buf, 2u);
    }

    objc_storeStrong(&location, 0);
    v6 = &_dispatch_main_q;
    block = _NSConcreteStackBlock;
    v36 = -1073741824;
    v37 = 0;
    v38 = sub_100227ED8;
    v39 = &unk_10032B0D0;
    v40 = *(a1 + 32);
    dispatch_async(v6, &block);

    objc_storeStrong(&v40, 0);
  }
}

void sub_100227ED8(uint64_t a1)
{
  v2 = [*(a1 + 32) view];
  v3 = [v2 window];
  [v3 setUserInteractionEnabled:1];

  [BFFViewControllerSpinnerManager stopAnimatingSpinnerFor:@"BUDDY_PROXIMITY_PASSCODE_VALIDATION_CONTROLLER"];
  v4 = [*(a1 + 32) passcodeInputView];
  [v4 shakePasscode];

  v5 = [*(a1 + 32) passcodeInputView];
  [v5 setPasscode:&stru_10032F900];
}

void sub_100227FC0(uint64_t a1)
{
  v2 = [*(a1 + 32) view];
  v3 = [v2 window];
  [v3 setUserInteractionEnabled:1];

  [BFFViewControllerSpinnerManager stopAnimatingSpinnerFor:@"BUDDY_PROXIMITY_PASSCODE_VALIDATION_CONTROLLER"];
  v4 = [*(a1 + 32) delegate];
  [v4 flowItemDone:*(a1 + 32)];
}

void sub_100228750(id *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v11[1] = a1;
  v3 = [a1[4] proximitySetupController];
  [v3 resetInformation];

  v4 = [a1[4] proximitySetupController];
  [v4 setExpressDataSource:0];

  v5 = dispatch_get_global_queue(0, 0);
  v7 = _NSConcreteStackBlock;
  v8 = 3221225472;
  v9 = sub_1002288B4;
  v10 = &unk_10032B0D0;
  v11[0] = a1[4];
  dispatch_async(v5, &v7);

  v6 = [a1[4] delegate];
  [v6 flowItemDone:a1[4]];

  objc_storeStrong(v11, 0);
  objc_storeStrong(location, 0);
}

void sub_1002288B4(uint64_t a1)
{
  v1 = [*(a1 + 32) proximitySetupController];
  [v1 setupFinished];
}

uint64_t sub_100228A68(uint64_t result, uint64_t a2)
{
  if (a2 == 1)
  {
    v2 = result;
    v3 = [*(result + 32) proximitySetupController];
    v4 = [v3 handshake];
    [v4 hasPasscodeSet];

    v5 = [*(v2 + 32) proximitySetupController];
    [v5 hasValidatedPasscode];

    return (*(*(v2 + 40) + 16))();
  }

  else if (a2 == 2)
  {
    return (*(*(result + 40) + 16))();
  }

  return result;
}

uint64_t sub_100229A24()
{
  v3 = sub_10022CB04();
  if (!v3)
  {
    v0 = +[NSAssertionHandler currentHandler];
    v1 = [NSString stringWithUTF8String:"void *WiFiKitLibrary(void)"];
    [(NSAssertionHandler *)v0 handleFailureInFunction:v1 file:@"BuddyWiFiController.m" lineNumber:41 description:@"%s", 0];

    __break(1u);
  }

  return v3;
}

void sub_100229B50()
{
  if (!sub_10022CC4C())
  {
    v0 = +[NSAssertionHandler currentHandler];
    v1 = [NSString stringWithUTF8String:"void *WiFiKitUILibrary(void)"];
    [(NSAssertionHandler *)v0 handleFailureInFunction:v1 file:@"BuddyWiFiController.m" lineNumber:42 description:@"%s", 0];

    __break(1u);
  }
}

id sub_100229FEC()
{
  v9 = 0;
  v10 = &v9;
  v11 = 1342177280;
  v12 = 32;
  v8 = qword_1003A7488;
  v13 = qword_1003A7488;
  if (!qword_1003A7488)
  {
    v2.super.isa = _NSConcreteStackBlock;
    v3 = -1073741824;
    v4 = 0;
    v5 = sub_10022CD94;
    v6 = &unk_10032B070;
    v7 = &v9;
    sub_10022CD94(&v2);
  }

  v0 = v10[3];
  _Block_object_dispose(&v9, 8);

  return v0;
}

id sub_10022A100()
{
  v4 = sub_10022CED8();
  if (!v4)
  {
    v0 = +[NSAssertionHandler currentHandler];
    v1 = [NSString stringWithUTF8String:"NSString *getWFNetworkListControllerAssociationDidFinishNotification(void)"];
    [(NSAssertionHandler *)v0 handleFailureInFunction:v1 file:@"BuddyWiFiController.m" lineNumber:49 description:@"%s", dlerror()];

    __break(1u);
  }

  v2 = *v4;

  return v2;
}

id sub_10022A208()
{
  v9 = 0;
  v10 = &v9;
  v11 = 1342177280;
  v12 = 32;
  v8 = qword_1003A7498;
  v13 = qword_1003A7498;
  if (!qword_1003A7498)
  {
    v2.super.isa = _NSConcreteStackBlock;
    v3 = -1073741824;
    v4 = 0;
    v5 = sub_10022D040;
    v6 = &unk_10032B070;
    v7 = &v9;
    sub_10022D040(&v2);
  }

  v0 = v10[3];
  _Block_object_dispose(&v9, 8);

  return v0;
}

id sub_10022ABD4(uint64_t a1)
{
  v2 = [*(a1 + 32) miscState];
  [v2 setUserSkippedWiFi:1];

  return [*(a1 + 32) _flowItemDoneWithResetActivationMethod:*(a1 + 40) & 1];
}

void sub_10022B064(uint64_t a1)
{
  v20 = a1;
  v19 = a1;
  v2 = +[BuddyActivationConfiguration currentConfiguration];
  v3 = [v2 isActivated] ^ 1;

  v18 = v3 & 1;
  v4 = [*(a1 + 32) networkProvider];
  v5 = 1;
  if (([v4 connectedOverWiFiAndNetworkReachable] & 1) == 0)
  {
    v5 = v18 ^ 1;
  }

  v17 = v5 & 1;
  v15 = 0;
  v6 = 0;
  if (v18)
  {
    v16 = +[BYPreferencesController buddyPreferencesInternal];
    v15 = 1;
    v6 = [v16 BOOLForKey:@"skipWiFiRequirement"];
  }

  if (v15)
  {
  }

  if (v6)
  {
    v17 = 1;
  }

  v7 = &_dispatch_main_q;
  v8 = _NSConcreteStackBlock;
  v9 = -1073741824;
  v10 = 0;
  v11 = sub_10022B228;
  v12 = &unk_10032B688;
  v13 = *(a1 + 32);
  v14 = v17 & 1;
  dispatch_async(v7, &v8);

  objc_storeStrong(&v13, 0);
}

void sub_10022B228(uint64_t a1)
{
  v11[2] = a1;
  v11[1] = a1;
  v11[0] = [*(a1 + 32) viewController];
  if ((*(a1 + 40) & 1) == 0)
  {
    v8 = [v11[0] buttonTray];
    [v8 removeAllButtons];

    goto LABEL_8;
  }

  v2 = [v11[0] buttonTray];
  v3 = [v2 allButtons];
  v4 = 1;
  if (![v3 count])
  {
    v4 = [*(a1 + 32) preventNextButtonCreation];
  }

  if ((v4 & 1) == 0)
  {
    location = +[OBBoldTrayButton boldButton];
    [location addTarget:*(a1 + 32) action:"_nextTapped:" forEvents:64];
    v5 = +[NSBundle mainBundle];
    v6 = [(NSBundle *)v5 localizedStringForKey:@"CONTINUE" value:&stru_10032F900 table:@"Localizable"];
    [location setTitle:v6 forState:0];

    v7 = [v11[0] buttonTray];
    [v7 addButton:location];

    objc_storeStrong(&location, 0);
LABEL_8:
    [*(*(a1 + 32) + 8) setShowAdditionalSetupInfo:(*(a1 + 40) ^ 1) & 1];
    v10 = 0;
    goto LABEL_9;
  }

  v10 = 1;
LABEL_9:
  objc_storeStrong(v11, 0);
}

id sub_10022B894()
{
  v4 = sub_10022D184();
  if (!v4)
  {
    v0 = +[NSAssertionHandler currentHandler];
    v1 = [NSString stringWithUTF8String:"NSString *getWFNetworkListControllerAssociationErrorKey(void)"];
    [(NSAssertionHandler *)v0 handleFailureInFunction:v1 file:@"BuddyWiFiController.m" lineNumber:51 description:@"%s", dlerror()];

    __break(1u);
  }

  v2 = *v4;

  return v2;
}

void sub_10022C00C(id *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v3 = [a1[4] showModalWiFiSettingsBlock];
  (*(v3 + 2))(v3, 0, 0);

  objc_storeStrong(a1[4] + 4, 0);
  objc_storeStrong(location, 0);
}

void sub_10022C098(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  objc_storeStrong((a1[4] + 32), 0);
  objc_storeStrong(location, 0);
}

void sub_10022C23C(id *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v10 = a1;
  [a1[4] _clearReturnToServiceTimer];
  v3 = [a1[4] networkProvider];
  v4 = [v3 isCellularDataPossible];

  v9 = v4 & 1;
  v5 = +[BuddyActivationConfiguration currentConfiguration];
  v6 = [v5 supportsCellularActivation];

  v8 = v6 & 1;
  oslog = _BYLoggingFacility();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    sub_100075A38(buf, v9 & 1, v8 & 1);
    _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "Return to Service timer timed out. isCellularDataPossible: %d isCellularActivationPossible: %d", buf, 0xEu);
  }

  objc_storeStrong(&oslog, 0);
  if (v9 & 1) != 0 && (v8)
  {
    [a1[4] _flowItemDoneWithResetActivationMethod:0];
  }

  objc_storeStrong(location, 0);
}

uint64_t sub_10022CB04()
{
  if (!qword_1003A7478)
  {
    sub_10022CBB8();
  }

  return qword_1003A7478;
}

uint64_t sub_10022CBB8()
{
  result = _sl_dlopen();
  qword_1003A7478 = result;
  return result;
}

uint64_t sub_10022CC4C()
{
  if (!qword_1003A7480)
  {
    sub_10022CD00();
  }

  return qword_1003A7480;
}

uint64_t sub_10022CD00()
{
  result = _sl_dlopen();
  qword_1003A7480 = result;
  return result;
}

void sub_10022CD94(NSAssertionHandler *a1)
{
  sub_100229B50();
  *(*(a1[4].super.isa + 1) + 24) = objc_getClass("WFBuddyViewController");
  if (!*(*(a1[4].super.isa + 1) + 24))
  {
    a1 = +[NSAssertionHandler currentHandler];
    v2 = [NSString stringWithUTF8String:"Class getWFBuddyViewControllerClass(void)_block_invoke"];
    [(NSAssertionHandler *)a1 handleFailureInFunction:v2 file:@"BuddyWiFiController.m" lineNumber:44 description:@"Unable to find class %s", "WFBuddyViewController"];

    __break(1u);
  }

  qword_1003A7488 = *(*(a1[4].super.isa + 1) + 24);
}

uint64_t sub_10022CED8()
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x20000000;
  v12 = 32;
  v8 = qword_1003A7490;
  v13 = qword_1003A7490;
  if (!qword_1003A7490)
  {
    v2 = _NSConcreteStackBlock;
    v3 = -1073741824;
    v4 = 0;
    v5 = sub_10022CFD4;
    v6 = &unk_10032B070;
    v7 = &v9;
    sub_10022CFD4(&v2);
  }

  v0 = v10[3];
  _Block_object_dispose(&v9, 8);
  return v0;
}

void *sub_10022CFD4(uint64_t a1)
{
  v2 = sub_100229A24();
  result = dlsym(v2, "WFNetworkListControllerAssociationDidFinishNotification");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1003A7490 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_10022D040(NSAssertionHandler *a1)
{
  sub_100229A24();
  *(*(a1[4].super.isa + 1) + 24) = objc_getClass("WFNetworkListController");
  if (!*(*(a1[4].super.isa + 1) + 24))
  {
    a1 = +[NSAssertionHandler currentHandler];
    v2 = [NSString stringWithUTF8String:"Class getWFNetworkListControllerClass(void)_block_invoke"];
    [(NSAssertionHandler *)a1 handleFailureInFunction:v2 file:@"BuddyWiFiController.m" lineNumber:46 description:@"Unable to find class %s", "WFNetworkListController"];

    __break(1u);
  }

  qword_1003A7498 = *(*(a1[4].super.isa + 1) + 24);
}

uint64_t sub_10022D184()
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x20000000;
  v12 = 32;
  v8 = qword_1003A74A0;
  v13 = qword_1003A74A0;
  if (!qword_1003A74A0)
  {
    v2 = _NSConcreteStackBlock;
    v3 = -1073741824;
    v4 = 0;
    v5 = sub_10022D280;
    v6 = &unk_10032B070;
    v7 = &v9;
    sub_10022D280(&v2);
  }

  v0 = v10[3];
  _Block_object_dispose(&v9, 8);
  return v0;
}

void *sub_10022D280(uint64_t a1)
{
  v2 = sub_100229A24();
  result = dlsym(v2, "WFNetworkListControllerAssociationErrorKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1003A74A0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_10022D4C4(uint64_t a1)
{
  v17 = a1;
  v16 = a1;
  v2 = [*(a1 + 32) managedConfiguration];
  v3 = [v2 shouldShowCloudConfigurationUI];

  v15 = v3 & 1;
  v4 = +[BuddyCloudConfigManager sharedManager];
  v5 = [v4 cloudConfigurationDetails];
  v6 = [v5 objectForKeyedSubscript:kCCRemoteManagementAccountIdentifierKey];
  v15 = (v15 & 1 & (v6 == 0)) != 0;

  if (v15)
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v7 = [*(a1 + 32) enrollmentCoordinator];
    v8 = _NSConcreteStackBlock;
    v9 = -1073741824;
    v10 = 0;
    v11 = sub_10022D694;
    v12 = &unk_10032B020;
    v13 = *(a1 + 32);
    v14 = *(a1 + 40);
    [v7 verifyEnrollmentStateWithCompletionHandler:&v8];

    objc_storeStrong(&v14, 0);
    objc_storeStrong(&v13, 0);
  }
}

uint64_t sub_10022D694(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    v3 = [*(a1 + 32) managedConfiguration];
    [v3 cloudConfigurationUIDidCompleteWasApplied:1];
  }

  return (*(*(a1 + 40) + 16))();
}

void sub_10022E5B4(id *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v11[1] = a1;
  v3 = &_dispatch_main_q;
  v4 = _NSConcreteStackBlock;
  v5 = -1073741824;
  v6 = 0;
  v7 = sub_10022E6EC;
  v8 = &unk_10032BB10;
  v9 = location[0];
  v10 = a1[4];
  v11[0] = a1[5];
  dispatch_async(v3, &v4);

  objc_storeStrong(v11, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

void sub_10022E6EC(NSObject *a1)
{
  oslog[2] = a1;
  oslog[1] = a1;
  if (a1[4].isa)
  {
    oslog[0] = _BYLoggingFacility();
    if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_ERROR))
    {
      v8 = 0;
      v6 = 0;
      if (_BYIsInternalInstall())
      {
        isa = a1[4].isa;
      }

      else if (a1[4].isa)
      {
        v9 = [(objc_class *)a1[4].isa domain];
        v8 = 1;
        isa = [NSString stringWithFormat:@"<Error domain: %@, code %ld>", v9, [(objc_class *)a1[4].isa code]];
        v7 = isa;
        v6 = 1;
      }

      else
      {
        isa = 0;
      }

      sub_100071CBC(buf, isa);
      _os_log_error_impl(&_mh_execute_header, oslog[0], OS_LOG_TYPE_ERROR, "Failed to set UI complete for cloud configuration. Error: %{public}@", buf, 0xCu);
      if (v6)
      {
      }

      if (v8)
      {
      }
    }

    objc_storeStrong(oslog, 0);
    v3 = a1[5].isa;
    v4 = [(objc_class *)a1[6].isa disclosureViewController];
    LOBYTE(v3) = [(objc_class *)v3 isEqual:v4];

    if (v3)
    {
      v5 = [(objc_class *)a1[6].isa disclosureViewController];
      [v5 showRetrievalError:a1[4].isa];
    }

    else
    {
      [(objc_class *)a1[6].isa transitionToErrorViewInDisclosureViewControllerFromController:a1[5].isa lastError:a1[4].isa];
    }
  }

  else
  {
    [(objc_class *)a1[6].isa _completeCloudConfig];
  }
}

id sub_10022F4D4()
{
  v9 = 0;
  v10 = &v9;
  v11 = 1342177280;
  v12 = 32;
  v8 = qword_1003A74A8;
  v13 = qword_1003A74A8;
  if (!qword_1003A74A8)
  {
    v2.super.isa = _NSConcreteStackBlock;
    v3 = -1073741824;
    v4 = 0;
    v5 = sub_10022FF20;
    v6 = &unk_10032B070;
    v7 = &v9;
    sub_10022FF20(&v2);
  }

  v0 = v10[3];
  _Block_object_dispose(&v9, 8);

  return v0;
}

void sub_10022F5E8(id a1, NSError *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  oslog[1] = a1;
  if (location[0])
  {
    oslog[0] = _BYLoggingFacility();
    v13 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_ERROR))
    {
      v11 = 0;
      v9 = 0;
      if (_BYIsInternalInstall())
      {
        v3 = location[0];
      }

      else if (location[0])
      {
        v12 = [location[0] domain];
        v11 = 1;
        v3 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"<Error domain: %@, code %ld>", v12, [location[0] code]);
        v10 = v3;
        v9 = 1;
      }

      else
      {
        v3 = 0;
      }

      sub_10006AE18(buf, v3);
      _os_log_error_impl(&_mh_execute_header, oslog[0], v13, "Error enrolling in beta program: %@", buf, 0xCu);
      if (v9)
      {
      }

      if (v11)
      {
      }
    }

    objc_storeStrong(oslog, 0);
  }

  else
  {
    v8 = _BYLoggingFacility();
    v7 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v4 = v8;
      v5 = v7;
      sub_10006AA68(v6);
      _os_log_impl(&_mh_execute_header, v4, v5, "Successfully enrolled in beta program", v6, 2u);
    }

    objc_storeStrong(&v8, 0);
  }

  objc_storeStrong(location, 0);
}

void sub_10022FF20(NSAssertionHandler *a1)
{
  sub_100230064();
  *(*(a1[4].super.isa + 1) + 24) = objc_getClass("SDMDMConfigurator");
  if (!*(*(a1[4].super.isa + 1) + 24))
  {
    a1 = +[NSAssertionHandler currentHandler];
    v2 = [NSString stringWithUTF8String:"Class getSDMDMConfiguratorClass(void)_block_invoke"];
    [(NSAssertionHandler *)a1 handleFailureInFunction:v2 file:@"BuddyCloudConfigController.m" lineNumber:47 description:@"Unable to find class %s", "SDMDMConfigurator"];

    __break(1u);
  }

  qword_1003A74A8 = *(*(a1[4].super.isa + 1) + 24);
}

void sub_100230064()
{
  if (!sub_10023018C())
  {
    v0 = +[NSAssertionHandler currentHandler];
    v1 = [NSString stringWithUTF8String:"void *SeedingLibrary(void)"];
    [(NSAssertionHandler *)v0 handleFailureInFunction:v1 file:@"BuddyCloudConfigController.m" lineNumber:46 description:@"%s", 0];

    __break(1u);
  }
}

uint64_t sub_10023018C()
{
  if (!qword_1003A74B0)
  {
    sub_100230240();
  }

  return qword_1003A74B0;
}

uint64_t sub_100230240()
{
  result = _sl_dlopen();
  qword_1003A74B0 = result;
  return result;
}

void sub_1002316C8(id a1)
{
  attr[2] = a1;
  attr[1] = a1;
  attr[0] = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
  v1 = dispatch_queue_create("Setup Catalyst Queue", attr[0]);
  CATSetCatalystQueue();

  v2 = objc_alloc_init(BuddyDeviceManagementSupport);
  v3 = qword_1003A74B8;
  qword_1003A74B8 = v2;

  objc_storeStrong(attr, 0);
}

void sub_100231A58(uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 40);
  v2 = *(a2 + 40);
  *(a1 + 40) = 0;
  objc_storeStrong((a1 + 40), v2);

  objc_storeStrong(v3, 0);
}

uint64_t sub_100231DA4(uint64_t result)
{
  if (*(result + 32))
  {
    return (*(*(result + 32) + 16))();
  }

  return result;
}

void sub_100231DEC(uint64_t a1, char a2)
{
  v32 = a1;
  v31 = a2;
  v30 = a1;
  v29 = 2;
  if (a2)
  {
    oslog = _BYLoggingFacility();
    v27 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      sub_100082D54(buf, *(a1 + 64));
      _os_log_impl(&_mh_execute_header, oslog, v27, "Skip keys loaded in %i attempts", buf, 8u);
    }

    objc_storeStrong(&oslog, 0);
    [*(a1 + 32) setDidFetchSkipKeysSuccessfully:1];
    (*(*(a1 + 40) + 16))();
  }

  else if (*(a1 + 64) == 2)
  {
    v26 = _BYLoggingFacility();
    v25 = 16;
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v3 = v26;
      v4 = v25;
      sub_10006AA68(v24);
      _os_log_error_impl(&_mh_execute_header, v3, v4, "Abort loading skip keys. Max retry attempt reached.", v24, 2u);
    }

    objc_storeStrong(&v26, 0);
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v23 = _BYLoggingFacility();
    v22 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      sub_100082D54(v33, *(a1 + 64));
      _os_log_debug_impl(&_mh_execute_header, v23, v22, "Retry loading skip keys: %i", v33, 8u);
    }

    objc_storeStrong(&v23, 0);
    location = objc_loadWeakRetained((a1 + 56));
    if (location)
    {
      [location _delayBetweenLoadSkipKeysRetriesInSeconds];
      v6 = dispatch_time(0, (v5 * 1000000000.0));
      v7 = *(location + 4);
      block = _NSConcreteStackBlock;
      v14 = -1073741824;
      v15 = 0;
      v16 = sub_100232190;
      v17 = &unk_10032F5A8;
      v18 = *(a1 + 32);
      v20 = *(a1 + 64);
      v19 = *(a1 + 48);
      dispatch_after(v6, v7, &block);
      objc_storeStrong(&v19, 0);
      objc_storeStrong(&v18, 0);
    }

    else
    {
      v12 = _BYLoggingFacility();
      v11 = 16;
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v8 = v12;
        v9 = v11;
        sub_10006AA68(v10);
        _os_log_error_impl(&_mh_execute_header, v8, v9, "Abort loading skip keys. Self not found", v10, 2u);
      }

      objc_storeStrong(&v12, 0);
      (*(*(a1 + 40) + 16))();
    }

    objc_storeStrong(&location, 0);
  }
}

void sub_1002322D8(uint64_t a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v10[1] = a1;
  v3 = [*(a1 + 32) skipKeysQueue];
  block = _NSConcreteStackBlock;
  v5 = -1073741824;
  v6 = 0;
  v7 = sub_10023240C;
  v8 = &unk_10032B838;
  v9 = *(a1 + 32);
  v10[0] = location[0];
  dispatch_sync(v3, &block);

  if (*(a1 + 40))
  {
    (*(*(a1 + 40) + 16))(*(a1 + 40), location[0] != 0);
  }

  objc_storeStrong(v10, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

void sub_100234544(id *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v3 = objc_opt_class();
  v4 = [a1[4] view];
  v5 = [v4 window];
  v6 = [v5 windowScene];
  [v3 _passcodeInputVerticalPaddingForOrientation:{objc_msgSend(v6, "interfaceOrientation")}];
  v8 = v7;

  v9 = [a1[4] contentViewTopConstraint];
  [v9 setConstant:v8];

  v10 = [a1[4] passcodeInputViewBottomConstraint];
  [v10 setConstant:v8];

  objc_storeStrong(location, 0);
}

void sub_100234BD8(uint64_t a1)
{
  v2 = [*(a1 + 32) passcodeManager];
  [v2 transitionToNextPasscodeStateForInput:*(a1 + 40)];
}

void sub_1002351E0(uint64_t a1, double a2)
{
  v3 = [*(a1 + 32) contentViewTopConstraint];
  [v3 constant];
  v5 = v4 + a2;
  v6 = objc_opt_class();
  v7 = +[UIApplication sharedApplication];
  [v6 _passcodeInputVerticalPaddingForOrientation:{-[UIApplication activeInterfaceOrientation](v7, "activeInterfaceOrientation")}];
  v17 = 0;
  v15 = 0;
  if (v5 <= v8)
  {
    v11 = objc_opt_class();
    v16 = +[UIApplication sharedApplication];
    v15 = 1;
    [v11 _passcodeInputVerticalPaddingForOrientation:{-[UIApplication activeInterfaceOrientation](v16, "activeInterfaceOrientation")}];
    v10 = v12;
  }

  else
  {
    v18 = [*(a1 + 32) contentViewTopConstraint];
    v17 = 1;
    [v18 constant];
    v10 = v9 + a2;
  }

  v13 = [*(a1 + 32) contentViewTopConstraint];
  [v13 setConstant:v10];

  if (v15)
  {
  }

  if (v17)
  {
  }

  v14 = [*(a1 + 32) view];
  [v14 layoutIfNeeded];
}

void sub_100236658(id *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v3 = [a1[4] passcodeManager];
  [v3 acceptWeakPasscode:0];

  objc_storeStrong(location, 0);
}

void sub_1002366C8(NSObject *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  oslog[1] = a1;
  oslog[0] = _BYLoggingFacility();
  v7 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
  {
    v3 = oslog[0];
    v4 = v7;
    sub_10006AA68(v6);
    _os_log_impl(&_mh_execute_header, v3, v4, "User accepted weak passcode", v6, 2u);
  }

  objc_storeStrong(oslog, 0);
  v5 = [(objc_class *)a1[4].isa passcodeManager];
  [v5 acceptWeakPasscode:1];

  objc_storeStrong(location, 0);
}

void sub_100236B20(NSObject *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  oslog[1] = a1;
  oslog[0] = _BYLoggingFacility();
  v6 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
  {
    v3 = oslog[0];
    v4 = v6;
    sub_10006AA68(v5);
    _os_log_impl(&_mh_execute_header, v3, v4, "User opted out of passcode", v5, 2u);
  }

  objc_storeStrong(oslog, 0);
  [(objc_class *)a1[4].isa _finishedWithPasscode:0];
  objc_storeStrong(location, 0);
}

void sub_1002374F4(id *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v3 = [a1[4] passcodeManager];
  [v3 setNumericPasscodeEntry:0];

  v4 = [a1[4] passcodeManager];
  [v4 setSimplePasscodeEntryLength:0];

  [a1[4] _commitPasscodeEntryTypeChange];
  objc_storeStrong(location, 0);
}

void sub_100237594(id *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v3 = [a1[4] passcodeManager];
  [v3 setNumericPasscodeEntry:1];

  v4 = [a1[4] passcodeManager];
  [v4 setSimplePasscodeEntryLength:0];

  [a1[4] _commitPasscodeEntryTypeChange];
  objc_storeStrong(location, 0);
}

void sub_100237638(id *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v3 = [a1[4] passcodeManager];
  [v3 setNumericPasscodeEntry:1];

  v4 = [a1[4] passcodeManager];
  [v4 setSimplePasscodeEntryLength:6];

  [a1[4] _commitPasscodeEntryTypeChange];
  objc_storeStrong(location, 0);
}

void sub_1002376DC(id *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v3 = [a1[4] passcodeManager];
  [v3 setNumericPasscodeEntry:1];

  v4 = [a1[4] passcodeManager];
  [v4 setSimplePasscodeEntryLength:4];

  [a1[4] _commitPasscodeEntryTypeChange];
  objc_storeStrong(location, 0);
}

void sub_100237780(id *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  [a1[4] _showSkipPasscodeAlert];
  objc_storeStrong(location, 0);
}

BOOL sub_1002379A8(id a1, UIView *a2, NSDictionary *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v5 = 0;
  objc_storeStrong(&v5, a3);
  objc_opt_class();
  LOBYTE(a3) = objc_opt_isKindOfClass();
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
  return a3 & 1;
}

void sub_10023877C(id *a1)
{
  v15[2] = a1;
  v15[1] = a1;
  v15[0] = [a1[4] cloudConfiguration];
  location = [v15[0] details];
  if (location)
  {
    v2 = [a1[4] headerView];
    v3 = [a1[4] _remoteManagementText];
    [v2 setDetailText:v3];

    [a1[4] setInProgress:0];
    v4 = [a1[4] migrationDeadlineTimer];
    [v4 invalidate];

    [a1[4] setMigrationDeadlineTimer:0];
    v5 = [a1[4] buttonTray];
    [v5 removeAllButtons];

    v6 = [a1[4] buttonTray];
    v7 = [a1[4] enrollButton];
    [v6 addButton:v7];

    if ([v15[0] isProvisionallyEnrolled])
    {
      v8 = a1[4];
      v9 = +[NSBundle mainBundle];
      v10 = [UIDevice modelSpecificLocalizedStringKeyForKey:@"REMOTE_MANAGEMENT_LEAVE"];
      v11 = [(NSBundle *)v9 localizedStringForKey:v10 value:&stru_10032F900 table:@"Localizable"];
      [v8 addLinkButton:v11 action:"_showLeaveRemoteManagementAlert"];
    }

    [a1[4] _setupMigrationUI];
    v12 = [a1[4] view];
    [v12 setNeedsLayout];
  }

  else
  {
    oslog = _BYLoggingFacility();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      sub_1000B25DC(buf, "[BuddyCloudConfigDisclosureViewController_new _setupView]_block_invoke");
      _os_log_error_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_ERROR, "%s: No cloud config available. Returning...", buf, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
  }

  objc_storeStrong(&location, 0);
  objc_storeStrong(v15, 0);
}

id sub_100238F3C(uint64_t a1)
{
  v2 = [*(a1 + 32) headerView];
  v3 = [*(a1 + 32) _remoteManagementText];
  [v2 setDetailText:v3];

  return [*(a1 + 32) _updateMigrationDeadlineTimer];
}

void sub_100239750(id *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v9[1] = a1;
  v3 = &_dispatch_main_q;
  v4 = _NSConcreteStackBlock;
  v5 = -1073741824;
  v6 = 0;
  v7 = sub_10023983C;
  v8 = &unk_10032AF58;
  objc_copyWeak(v9, a1 + 4);
  dispatch_async(v3, &v4);

  objc_destroyWeak(v9);
  objc_storeStrong(location, 0);
}

void sub_10023983C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _showEraseDeviceAlert];
}

void sub_100239A64(id *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v9[1] = a1;
  v3 = &_dispatch_main_q;
  v4 = _NSConcreteStackBlock;
  v5 = -1073741824;
  v6 = 0;
  v7 = sub_100239B50;
  v8 = &unk_10032AF58;
  objc_copyWeak(v9, a1 + 4);
  dispatch_async(v3, &v4);

  objc_destroyWeak(v9);
  objc_storeStrong(location, 0);
}

void sub_100239B50(id *a1)
{
  location[2] = a1;
  location[1] = a1;
  location[0] = objc_loadWeakRetained(a1 + 4);
  if (location[0])
  {
    [location[0] setInProgress:1];
    v2 = [location[0] disclosureVCDelegate];
    WeakRetained = objc_loadWeakRetained(a1 + 4);
    [v2 disclosureViewController:WeakRetained didReceiveUserConsent:0];
  }

  objc_storeStrong(location, 0);
}

void sub_10023F4EC(id *a1)
{
  location[2] = a1;
  location[1] = a1;
  location[0] = objc_loadWeakRetained(a1 + 5);
  if (location[0])
  {
    [location[0] additionViewControllerCompleted];
    v2 = [a1[4] multilingualFlowManager];
    [v2 setDidMakeSelection:1];
  }

  objc_storeStrong(location, 0);
}

id sub_10023F86C(id a1, BuddyMultilingualDisplayableViewModel *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v2 = [location[0] identifier];
  objc_storeStrong(location, 0);

  return v2;
}

void sub_1002409A0(uint64_t a1)
{
  [*(a1 + 32) loadViewIfNeeded];
  if ([*(a1 + 40) connectionType] == 1)
  {
    v2 = [*(a1 + 32) headerView];
    v3 = +[NSBundle mainBundle];
    v4 = [UIDevice modelSpecificLocalizedStringKeyForKey:@"PROGRESS_DETAIL_WIRED"];
  }

  else
  {
    v2 = [*(a1 + 32) headerView];
    v3 = +[NSBundle mainBundle];
    v4 = [UIDevice modelSpecificLocalizedStringKeyForKey:@"PROGRESS_DETAIL_WIRELESS"];
  }

  v5 = [(NSBundle *)v3 localizedStringForKey:v4 value:&stru_10032F900 table:@"Migration"];
  [v2 setDetailText:v5];
}

void sub_100240E6C(id a1)
{
  v1 = objc_alloc_init(BYDevice);
  v2 = qword_1003A74E0;
  qword_1003A74E0 = v1;
}

uint64_t sub_100241234()
{
  v3 = sub_10024163C();
  if (!v3)
  {
    v0 = +[NSAssertionHandler currentHandler];
    v1 = [NSString stringWithUTF8String:"BOOL BYSBSIsSystemApertureAvailable(void)"];
    [(NSAssertionHandler *)v0 handleFailureInFunction:v1 file:@"BYDevice.m" lineNumber:18 description:@"%s", dlerror()];

    __break(1u);
  }

  return v3() & 1;
}

uint64_t sub_1002414F4()
{
  if (!qword_1003A74D0)
  {
    sub_1002415A8();
  }

  return qword_1003A74D0;
}

uint64_t sub_1002415A8()
{
  result = _sl_dlopen();
  qword_1003A74D0 = result;
  return result;
}

uint64_t sub_10024163C()
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x20000000;
  v12 = 32;
  v8 = qword_1003A74D8;
  v13 = qword_1003A74D8;
  if (!qword_1003A74D8)
  {
    v2 = _NSConcreteStackBlock;
    v3 = -1073741824;
    v4 = 0;
    v5 = sub_100241738;
    v6 = &unk_10032B070;
    v7 = &v9;
    sub_100241738(&v2);
  }

  v0 = v10[3];
  _Block_object_dispose(&v9, 8);
  return v0;
}

void *sub_100241738(uint64_t a1)
{
  v2 = sub_1002417A4();
  result = dlsym(v2, "SBSIsSystemApertureAvailable");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1003A74D8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_1002417A4()
{
  v3 = sub_1002414F4();
  if (!v3)
  {
    v0 = +[NSAssertionHandler currentHandler];
    v1 = [NSString stringWithUTF8String:"void *SpringBoardServicesLibrary(void)"];
    [(NSAssertionHandler *)v0 handleFailureInFunction:v1 file:@"BYDevice.m" lineNumber:17 description:@"%s", 0];

    __break(1u);
  }

  return v3;
}

void sub_100241960(id a1)
{
  v1 = objc_opt_new();
  v2 = qword_1003A7508;
  qword_1003A7508 = v1;
}

id sub_100241D60()
{
  v9 = 0;
  v10 = &v9;
  v11 = 1342177280;
  v12 = 32;
  v8 = qword_1003A74F0;
  v13 = qword_1003A74F0;
  if (!qword_1003A74F0)
  {
    v2.super.isa = _NSConcreteStackBlock;
    v3 = -1073741824;
    v4 = 0;
    v5 = sub_1002423C0;
    v6 = &unk_10032B070;
    v7 = &v9;
    sub_1002423C0(&v2);
  }

  v0 = v10[3];
  _Block_object_dispose(&v9, 8);

  return v0;
}

id sub_1002421E0()
{
  v9 = 0;
  v10 = &v9;
  v11 = 1342177280;
  v12 = 32;
  v8 = qword_1003A7500;
  v13 = qword_1003A7500;
  if (!qword_1003A7500)
  {
    v2.super.isa = _NSConcreteStackBlock;
    v3 = -1073741824;
    v4 = 0;
    v5 = sub_100242774;
    v6 = &unk_10032B070;
    v7 = &v9;
    sub_100242774(&v2);
  }

  v0 = v10[3];
  _Block_object_dispose(&v9, 8);

  return v0;
}

void sub_1002423C0(NSAssertionHandler *a1)
{
  sub_100242504();
  *(*(a1[4].super.isa + 1) + 24) = objc_getClass("CDPAccount");
  if (!*(*(a1[4].super.isa + 1) + 24))
  {
    a1 = +[NSAssertionHandler currentHandler];
    v2 = [NSString stringWithUTF8String:"Class getCDPAccountClass(void)_block_invoke"];
    [(NSAssertionHandler *)a1 handleFailureInFunction:v2 file:@"BYSecurityInterface.m" lineNumber:20 description:@"Unable to find class %s", "CDPAccount"];

    __break(1u);
  }

  qword_1003A74F0 = *(*(a1[4].super.isa + 1) + 24);
}

void sub_100242504()
{
  if (!sub_10024262C())
  {
    v0 = +[NSAssertionHandler currentHandler];
    v1 = [NSString stringWithUTF8String:"void *CoreCDPLibrary(void)"];
    [(NSAssertionHandler *)v0 handleFailureInFunction:v1 file:@"BYSecurityInterface.m" lineNumber:18 description:@"%s", 0];

    __break(1u);
  }
}

uint64_t sub_10024262C()
{
  if (!qword_1003A74F8)
  {
    sub_1002426E0();
  }

  return qword_1003A74F8;
}

uint64_t sub_1002426E0()
{
  result = _sl_dlopen();
  qword_1003A74F8 = result;
  return result;
}

void sub_100242774(NSAssertionHandler *a1)
{
  sub_100242504();
  *(*(a1[4].super.isa + 1) + 24) = objc_getClass("CDPStateController");
  if (!*(*(a1[4].super.isa + 1) + 24))
  {
    a1 = +[NSAssertionHandler currentHandler];
    v2 = [NSString stringWithUTF8String:"Class getCDPStateControllerClass(void)_block_invoke"];
    [(NSAssertionHandler *)a1 handleFailureInFunction:v2 file:@"BYSecurityInterface.m" lineNumber:21 description:@"Unable to find class %s", "CDPStateController"];

    __break(1u);
  }

  qword_1003A7500 = *(*(a1[4].super.isa + 1) + 24);
}

void sub_100243360(id *a1, char a2)
{
  v16 = a1;
  v15 = a2;
  v14 = a1;
  v3 = &_dispatch_main_q;
  v4 = _NSConcreteStackBlock;
  v5 = -1073741824;
  v6 = 0;
  v7 = sub_1002434B0;
  v8 = &unk_10032F738;
  v9 = a1[4];
  v13 = v15 & 1;
  v10 = a1[5];
  v11 = a1[6];
  v12 = a1[7];
  dispatch_async(v3, &v4);

  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v9, 0);
}

void sub_1002434B0(uint64_t a1)
{
  oslog[2] = a1;
  oslog[1] = a1;
  [BFFViewControllerSpinnerManager stopAnimatingSpinnerFor:@"beta re-enroll spinner"];
  v2 = [*(a1 + 32) view];
  v3 = [v2 window];
  [v3 setUserInteractionEnabled:1];

  if (*(a1 + 64) & 1) != 0 || ([*(a1 + 32) fakeBetaReEnrollment])
  {
    oslog[0] = _BYLoggingFacility();
    v15 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
    {
      v4 = oslog[0];
      v5 = v15;
      sub_10006AA68(buf);
      _os_log_impl(&_mh_execute_header, v4, v5, "Beta Re-Enroll did succeed", buf, 2u);
    }

    objc_storeStrong(oslog, 0);
    v6 = [*(a1 + 32) softwareUpdateCache];
    [v6 reset];

    v7 = [*(a1 + 32) settingsManager];
    [v7 setSeedEnrollmentProgramName:*(a1 + 40) assetAudience:*(a1 + 48) programID:*(a1 + 56)];

    v8 = [*(a1 + 32) delegate];
    [v8 flowItemDone:*(a1 + 32) nextItem:0];
  }

  else
  {
    v13 = _BYLoggingFacility();
    v12 = 16;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v9 = v13;
      v10 = v12;
      sub_10006AA68(v11);
      _os_log_error_impl(&_mh_execute_header, v9, v10, "Beta Re-Enroll did fail", v11, 2u);
    }

    objc_storeStrong(&v13, 0);
    [*(a1 + 32) _presentReEnrollFailureAlert];
  }
}

void sub_100243DE8(id *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  [a1[4] _enrollTapped:a1[4]];
  objc_storeStrong(location, 0);
}

void sub_100243E3C(id *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  [a1[4] _recordAnalyticsEventForEnrollment:0];
  v3 = [a1[4] delegate];
  [v3 flowItemDone:a1[4] nextItem:0];

  objc_storeStrong(location, 0);
}

void sub_100243EBC(id *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  [a1[4] _enrollTapped:a1[4]];
  objc_storeStrong(location, 0);
}

void sub_100243F10(id *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  [a1[4] _recordAnalyticsEventForEnrollment:0];
  v3 = [a1[4] miscState];
  v4 = [v3 migrationManager];
  v5 = [v4 willMigrate];

  if (v5)
  {
    v6 = [a1[4] miscState];
    v7 = [v6 migrationManager];
    [v7 reset];
  }

  v8 = [a1[4] delegate];
  v9 = [v8 popToBuddyControllerWithClass:objc_opt_class() animated:1];

  objc_storeStrong(location, 0);
}

void sub_1002441B8(id a1, UIAlertAction *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  objc_storeStrong(location, 0);
}

void sub_100244494(uint64_t a1)
{
  v87 = a1;
  v86 = a1;
  v2 = [*(a1 + 32) existingSettings];
  v3 = [v2 backupMetadata];
  [*(a1 + 32) setBackupMetadata:v3];

  v4 = [*(a1 + 32) backupMetadata];
  v84 = 0;
  v82 = 0;
  v80 = 0;
  v5 = 0;
  if (!v4)
  {
    v85 = [*(a1 + 32) proximitySetupController];
    v84 = 1;
    v5 = 0;
    if ([v85 hasAppliedSettings])
    {
      v83 = [*(a1 + 32) proximitySetupController];
      v82 = 1;
      v81 = [v83 backupMetadataFromTerminatedConnection];
      v80 = 1;
      v5 = v81 != 0;
    }
  }

  if (v80)
  {
  }

  if (v82)
  {
  }

  if (v84)
  {
  }

  if (v5)
  {
    location = _BYLoggingFacility();
    v78 = 2;
    if (os_log_type_enabled(location, OS_LOG_TYPE_DEBUG))
    {
      v6 = location;
      v7 = v78;
      sub_10006AA68(buf);
      _os_log_debug_impl(&_mh_execute_header, v6, v7, "Beta Re-Enroll using backup metadata from terminated proximity connection", buf, 2u);
    }

    objc_storeStrong(&location, 0);
    v8 = [*(a1 + 32) proximitySetupController];
    v9 = [v8 backupMetadataFromTerminatedConnection];
    [*(a1 + 32) setBackupMetadata:v9];
  }

  v76 = 0;
  v10 = [*(a1 + 32) backupMetadata];
  v74 = 0;
  v11 = 0;
  if ([v10 hasSeedEnrollmentProgram])
  {
    v75 = [*(a1 + 32) backupMetadata];
    v74 = 1;
    v11 = [v75 hasSeedEnrollmentAssetAudience];
  }

  if (v74)
  {
  }

  if (v11)
  {
    v12 = [*(a1 + 32) seedProgramManager];
    v73 = [v12 currentEnrollmentMetadata];

    v13 = [v73 bySeedProgramManager_valueForProgramKey];
    v14 = [*(a1 + 32) backupMetadata];
    v15 = [v14 seedEnrollmentProgram];
    v71 = 0;
    v69 = 0;
    v67 = 0;
    v16 = 1;
    if ([v13 isEqualToString:v15])
    {
      v72 = [v73 bySeedProgramManager_valueForAssetAudienceKey];
      v71 = 1;
      v70 = [*(a1 + 32) backupMetadata];
      v69 = 1;
      v68 = [v70 seedEnrollmentAssetAudience];
      v67 = 1;
      v16 = [v72 isEqualToString:?] ^ 1;
    }

    if (v67)
    {
    }

    if (v69)
    {
    }

    if (v71)
    {
    }

    if (v16)
    {
      oslog = _BYLoggingFacility();
      v65 = 2;
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
      {
        v17 = oslog;
        v18 = v65;
        sub_10006AA68(v64);
        _os_log_debug_impl(&_mh_execute_header, v17, v18, "Beta Re-Enroll: Backup has enrollment that we lack", v64, 2u);
      }

      objc_storeStrong(&oslog, 0);
      v76 = 1;
    }

    objc_storeStrong(&v73, 0);
  }

  if ((v76 & 1) == 0)
  {
    v19 = [*(a1 + 32) buddyPreferencesInternal];
    [*(a1 + 32) setFakeBetaReEnrollment:{objc_msgSend(v19, "BOOLForKey:", @"FakeBetaReEnrollment"}];

    v76 = [*(a1 + 32) fakeBetaReEnrollment] & 1;
  }

  if (v76)
  {
    v63 = 0;
    v20 = [*(a1 + 32) miscState];
    v62 = [v20 migrationManager];

    if ([v62 willMigrate])
    {
      if ([v62 forceUpdateToMigrate] & 1) != 0 || (objc_msgSend(v62, "requiresUpdateToMigrate"))
      {
        v63 = 1;
        v21 = [*(a1 + 32) proximitySetupController];
        v22 = [v21 productVersion];
        [*(a1 + 32) setSourceSystemVersion:v22];
      }

      v23 = [*(a1 + 32) proximitySetupController];
      v24 = [v23 deviceClass];
      [*(a1 + 32) setSourceDeviceClass:v24];

      v61 = _BYLoggingFacility();
      v60 = OS_LOG_TYPE_DEBUG;
      if (os_log_type_enabled(v61, OS_LOG_TYPE_DEBUG))
      {
        v25 = [NSNumber numberWithBool:v63 & 1];
        sub_100071CBC(v89, v25);
        _os_log_debug_impl(&_mh_execute_header, v61, v60, "Beta Re-Enroll: Migration needs software update? %{public}@", v89, 0xCu);
      }

      objc_storeStrong(&v61, 0);
    }

    else
    {
      v26 = [*(a1 + 32) pendingRestoreState];
      v27 = [v26 backupItem];

      if (v27)
      {
        v28 = [*(a1 + 32) pendingRestoreState];
        v58 = 0;
        v56 = 0;
        v29 = 1;
        if (([v28 forceSoftwareUpdateRestore] & 1) == 0)
        {
          v59 = [*(a1 + 32) pendingRestoreState];
          v58 = 1;
          v57 = [v59 backupItem];
          v56 = 1;
          v29 = [v57 isCompatible] ^ 1;
        }

        if (v56)
        {
        }

        if (v58)
        {
        }

        if (v29)
        {
          v63 = 1;
          v30 = [*(a1 + 32) pendingRestoreState];
          v31 = [v30 backupItem];
          v32 = [v31 snapshot];
          v33 = [v32 systemVersion];
          [*(a1 + 32) setSourceSystemVersion:v33];
        }

        v34 = [*(a1 + 32) pendingRestoreState];
        v35 = [v34 backupItem];
        v36 = [v35 backup];
        v37 = [v36 deviceClass];
        [*(a1 + 32) setSourceDeviceClass:v37];

        v55 = _BYLoggingFacility();
        v54 = OS_LOG_TYPE_DEBUG;
        if (os_log_type_enabled(v55, OS_LOG_TYPE_DEBUG))
        {
          v38 = [NSNumber numberWithBool:v63 & 1];
          sub_100071CBC(v88, v38);
          _os_log_debug_impl(&_mh_execute_header, v55, v54, "Beta Re-Enroll: Restore needs software update? %{public}@", v88, 0xCu);
        }

        objc_storeStrong(&v55, 0);
      }

      else
      {
        v39 = [*(a1 + 32) proximitySetupController];
        v40 = [v39 deviceClass];
        [*(a1 + 32) setSourceDeviceClass:v40];
      }
    }

    if ((v63 & 1) == 0)
    {
      v41 = [*(a1 + 32) buddyPreferencesInternal];
      v42 = [v41 BOOLForKey:@"FakeRequireBetaReEnrollment"];

      if (v42)
      {
        v63 = 1;
        [*(a1 + 32) setSourceSystemVersion:@"99.9"];
        v43 = MGCopyAnswer();
        [*(a1 + 32) setSourceDeviceClass:v43];
      }
    }

    if (v63)
    {
      v44 = [*(a1 + 32) softwareUpdateCache];
      v45 = _NSConcreteStackBlock;
      v46 = -1073741824;
      v47 = 0;
      v48 = sub_100244F88;
      v49 = &unk_10032DB50;
      v50 = v62;
      v51 = *(a1 + 32);
      v52 = *(a1 + 40);
      v53 = v76 & 1;
      [v44 scanUsingCache:1 withCompletion:&v45];

      objc_storeStrong(&v52, 0);
      objc_storeStrong(&v51, 0);
      objc_storeStrong(&v50, 0);
    }

    else
    {
      (*(*(a1 + 40) + 16))();
    }

    objc_storeStrong(&v62, 0);
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

void sub_100244F88(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v25 = 0;
  objc_storeStrong(&v25, a3);
  v24 = 0;
  objc_storeStrong(&v24, a4);
  v23 = 0;
  objc_storeStrong(&v23, a5);
  v22 = a1;
  v21 = 0;
  if (v24)
  {
    if ([*(a1 + 32) willMigrate])
    {
      v9 = [*(a1 + 40) sourceSystemVersion];
      v10 = [v24 productVersion];
      v21 = [BuddyMigrationCapability supportsMigrationFromProductVersion:v9 toProductVersion:v10 toProductVersionFetchedFromCurrentProductVersion:0];
    }

    else
    {
      v11 = [*(a1 + 40) pendingRestoreState];
      v12 = [v11 backupItem];
      v13 = [v24 productVersion];
      v21 = [v12 isCompatibleWithUpdateToSystemVersion:v13] & 1;
    }
  }

  if (v21)
  {
    v14 = [*(a1 + 40) buddyPreferencesInternal];
    v15 = [v14 BOOLForKey:@"FakeRequireBetaReEnrollment"];

    if (v15)
    {
      v21 = 0;
    }
  }

  if ((v21 & 1) == 0)
  {
    [*(a1 + 40) setRequiresBetaReEnrollment:1];
    oslog = _BYLoggingFacility();
    v19 = 2;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
    {
      v16 = oslog;
      v17 = v19;
      sub_10006AA68(v18);
      _os_log_debug_impl(&_mh_execute_header, v16, v17, "Beta Re-Enroll: Re-enrollment required", v18, 2u);
    }

    objc_storeStrong(&oslog, 0);
  }

  (*(*(a1 + 48) + 16))();
  objc_storeStrong(&v23, 0);
  objc_storeStrong(&v24, 0);
  objc_storeStrong(&v25, 0);
  objc_storeStrong(location, 0);
}

void sub_100247CCC(id a1)
{
  location[2] = a1;
  location[1] = a1;
  v14[0] = objc_opt_class();
  v14[1] = objc_opt_class();
  v14[2] = objc_opt_class();
  v14[3] = objc_opt_class();
  v14[4] = objc_opt_class();
  v14[5] = objc_opt_class();
  v14[6] = objc_opt_class();
  v14[7] = objc_opt_class();
  v14[8] = objc_opt_class();
  v14[9] = objc_opt_class();
  v14[10] = objc_opt_class();
  v14[11] = objc_opt_class();
  v14[12] = objc_opt_class();
  v14[13] = objc_opt_class();
  v14[14] = objc_opt_class();
  v14[15] = objc_opt_class();
  v14[16] = objc_opt_class();
  v14[17] = objc_opt_class();
  v14[18] = objc_opt_class();
  v14[19] = objc_opt_class();
  v14[20] = objc_opt_class();
  v14[21] = objc_opt_class();
  v14[22] = objc_opt_class();
  v14[23] = objc_opt_class();
  v14[24] = objc_opt_class();
  v14[25] = objc_opt_class();
  v14[26] = objc_opt_class();
  v14[27] = objc_opt_class();
  v14[28] = objc_opt_class();
  v14[29] = objc_opt_class();
  v14[30] = objc_opt_class();
  v14[31] = objc_opt_class();
  v14[32] = objc_opt_class();
  v14[33] = objc_opt_class();
  v14[34] = objc_opt_class();
  v14[35] = objc_opt_class();
  v14[36] = objc_opt_class();
  v14[37] = objc_opt_class();
  v14[38] = objc_opt_class();
  v14[39] = objc_opt_class();
  v14[40] = objc_opt_class();
  v14[41] = objc_opt_class();
  v14[42] = objc_opt_class();
  v14[43] = objc_opt_class();
  v14[44] = objc_opt_class();
  v14[45] = objc_opt_class();
  v14[46] = objc_opt_class();
  v14[47] = objc_opt_class();
  v14[48] = objc_opt_class();
  v14[49] = objc_opt_class();
  v14[50] = objc_opt_class();
  v14[51] = objc_opt_class();
  v14[52] = objc_opt_class();
  v14[53] = objc_opt_class();
  v14[54] = objc_opt_class();
  v14[55] = objc_opt_class();
  v14[56] = objc_opt_class();
  v14[57] = objc_opt_class();
  v14[58] = objc_opt_class();
  v14[59] = objc_opt_class();
  v14[60] = objc_opt_class();
  v14[61] = objc_opt_class();
  v14[62] = objc_opt_class();
  v14[63] = objc_opt_class();
  v14[64] = objc_opt_class();
  v14[65] = objc_opt_class();
  v14[66] = objc_opt_class();
  v14[67] = objc_opt_class();
  v14[68] = objc_opt_class();
  v14[69] = objc_opt_class();
  v14[70] = objc_opt_class();
  v14[71] = objc_opt_class();
  v14[72] = objc_opt_class();
  v14[73] = objc_opt_class();
  v14[74] = objc_opt_class();
  v14[75] = objc_opt_class();
  v14[76] = objc_opt_class();
  v14[77] = objc_opt_class();
  v14[78] = objc_opt_class();
  v14[79] = objc_opt_class();
  v14[80] = objc_opt_class();
  v14[81] = objc_opt_class();
  v14[82] = objc_opt_class();
  v14[83] = objc_opt_class();
  v14[84] = objc_opt_class();
  v14[85] = objc_opt_class();
  v14[86] = objc_opt_class();
  v14[87] = objc_opt_class();
  v14[88] = objc_opt_class();
  v14[89] = objc_opt_class();
  v14[90] = objc_opt_class();
  v14[91] = objc_opt_class();
  v14[92] = objc_opt_class();
  v14[93] = objc_opt_class();
  v14[94] = objc_opt_class();
  v14[95] = objc_opt_class();
  v14[96] = objc_opt_class();
  v14[97] = objc_opt_class();
  v14[98] = objc_opt_class();
  v14[99] = objc_opt_class();
  v14[100] = objc_opt_class();
  v1 = [NSArray arrayWithObjects:v14 count:101];
  location[0] = [(NSArray *)v1 mutableCopy];

  memset(v10, 0, sizeof(v10));
  v2 = [location[0] copy];
  v3 = [v2 countByEnumeratingWithState:v10 objects:v13 count:16];
  if (v3)
  {
    v4 = *v10[2];
    do
    {
      for (i = 0; i < v3; ++i)
      {
        if (*v10[2] != v4)
        {
          objc_enumerationMutation(v2);
        }

        v11 = 0;
        v11 = *(v10[1] + 8 * i);
        if ([v11 isSubclassOfClass:objc_opt_class()])
        {
          v6 = location[0];
          v7 = [v11 allowedFlowItems];
          [v6 addObjectsFromArray:v7];
        }
      }

      v3 = [v2 countByEnumeratingWithState:v10 objects:v13 count:16];
    }

    while (v3);
  }

  v8 = [location[0] copy];
  v9 = qword_1003A7518;
  qword_1003A7518 = v8;

  objc_storeStrong(location, 0);
}

void sub_1002498C8(id a1)
{
  v1 = objc_alloc_init(BuddyActivationConfiguration);
  v2 = qword_1003A7538;
  qword_1003A7538 = v1;
}

void sub_100249D98(uint64_t a1)
{
  v2 = [*(a1 + 32) delegates];
  [v2 addObject:*(a1 + 40)];
}

void sub_100249EFC(uint64_t a1)
{
  v2 = [*(a1 + 32) delegates];
  [v2 removeObject:*(a1 + 40)];
}

void sub_10024A164(uint64_t a1)
{
  v9 = a1;
  v8 = a1;
  memset(v6, 0, sizeof(v6));
  v2 = [*(a1 + 32) delegates];
  v3 = [v2 countByEnumeratingWithState:v6 objects:v10 count:16];
  if (v3)
  {
    v4 = *v6[2];
    do
    {
      for (i = 0; i < v3; ++i)
      {
        if (*v6[2] != v4)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(v6[1] + 8 * i);
        [v7 activationConfigurationChanged:*(a1 + 40) & 1 isActivated:*(a1 + 41) & 1];
      }

      v3 = [v2 countByEnumeratingWithState:v6 objects:v10 count:16];
    }

    while (v3);
  }
}

void sub_10024ACE0(uint64_t a1)
{
  v11 = a1;
  v10 = a1;
  v9 = [*(a1 + 32) isActivated] & 1;
  v2 = [*(a1 + 32) activationStateQueue];
  v3 = _NSConcreteStackBlock;
  v4 = 3221225472;
  v5 = sub_10024ADE0;
  v6 = &unk_10032B688;
  v7 = *(a1 + 32);
  v8 = v9 & 1;
  dispatch_sync(v2, &v3);

  [*(a1 + 32) notifyDelegatesConfigurationChanged:{1, v3, v4, v5, v6}];
  objc_storeStrong(&v7, 0);
}

id sub_10024ADE0(uint64_t a1)
{
  v5 = a1;
  v4 = a1;
  LOBYTE(v2) = 0;
  if (*(a1 + 40))
  {
    v2 = [*(a1 + 32) initialActivationState] ^ 1;
  }

  return [*(a1 + 32) setHasActivated:{v2 & 1, v4, v5}];
}

void sub_10024B6F8(id *a1, uint64_t a2, id obj)
{
  v37 = a1;
  v36 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  v34[1] = a1;
  v34[0] = objc_loadWeakRetained(a1 + 5);
  v4 = [v34[0] miscState];
  [v4 setActivationPlanRequest:0];

  if (v36 != 2)
  {
    oslog = _BYLoggingFacility();
    v32 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      v30 = 0;
      v28 = 0;
      if (_BYIsInternalInstall())
      {
        v5 = location;
      }

      else if (location)
      {
        v31 = [location domain];
        v30 = 1;
        v5 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"<Error domain: %@, code %ld>", v31, [location code]);
        v29 = v5;
        v28 = 1;
      }

      else
      {
        v5 = 0;
      }

      sub_100071CBC(buf, v5);
      _os_log_error_impl(&_mh_execute_header, oslog, v32, "Failed to add cellular plan: %{public}@", buf, 0xCu);
      if (v28)
      {
      }

      if (v30)
      {
      }
    }

    objc_storeStrong(&oslog, 0);
    if (a1[4])
    {
      (*(a1[4] + 2))();
    }

LABEL_24:
    v24 = 0;
    goto LABEL_25;
  }

  v27 = _BYLoggingFacility();
  v26 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v27;
    v7 = v26;
    sub_10006AA68(v25);
    _os_log_impl(&_mh_execute_header, v6, v7, "Successfully added cellular plan", v25, 2u);
  }

  objc_storeStrong(&v27, 0);
  v8 = [v34[0] miscState];
  v9 = [v8 skipActivationForActivationPlanRequest];

  if ((v9 & 1) == 0)
  {
    v10 = sub_10024BB88();
    v11 = sub_10024BC9C();
    v38 = v11;
    v39 = &off_10033D580;
    v12 = [NSDictionary dictionaryWithObjects:&v39 forKeys:&v38 count:1];
    v13 = [v10 flowWithOptions:v12];
    [v34[0] setSetupFlow:v13];

    v14 = [v34[0] setupFlow];
    LOBYTE(v13) = v14 == 0;

    if (v13)
    {
      (*(a1[4] + 2))();
      v24 = 1;
      goto LABEL_25;
    }

    v15 = v34[0];
    v16 = [v34[0] setupFlow];
    [v16 setDelegate:v15];

    v17 = [v34[0] setupFlow];
    v18 = _NSConcreteStackBlock;
    v19 = -1073741824;
    v20 = 0;
    v21 = sub_10024BDA4;
    v22 = &unk_10032DB78;
    v23 = a1[4];
    [v17 firstViewController:&v18];

    objc_storeStrong(&v23, 0);
    goto LABEL_24;
  }

  if (a1[4])
  {
    (*(a1[4] + 2))();
  }

  v24 = 1;
LABEL_25:
  objc_storeStrong(v34, 0);
  if (!v24)
  {
    v24 = 0;
  }

  objc_storeStrong(&location, 0);
}

id sub_10024BB88()
{
  v9 = 0;
  v10 = &v9;
  v11 = 1342177280;
  v12 = 32;
  v8 = qword_1003A7540;
  v13 = qword_1003A7540;
  if (!qword_1003A7540)
  {
    v2.super.isa = _NSConcreteStackBlock;
    v3 = -1073741824;
    v4 = 0;
    v5 = sub_10024C31C;
    v6 = &unk_10032B070;
    v7 = &v9;
    sub_10024C31C(&v2);
  }

  v0 = v10[3];
  _Block_object_dispose(&v9, 8);

  return v0;
}

id sub_10024BC9C()
{
  v4 = sub_10024C6D4();
  if (!v4)
  {
    v0 = +[NSAssertionHandler currentHandler];
    v1 = [NSString stringWithUTF8String:"NSString *getTSUserInfoFlowTypeKey(void)"];
    [(NSAssertionHandler *)v0 handleFailureInFunction:v1 file:@"BuddySIMActivationController.m" lineNumber:27 description:@"%s", dlerror()];

    __break(1u);
  }

  v2 = *v4;

  return v2;
}

void sub_10024BDA4(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  if (a1[4])
  {
    (*(a1[4] + 16))(a1[4], location[0] != 0);
  }

  objc_storeStrong(location, 0);
}

void sub_10024C31C(NSAssertionHandler *a1)
{
  sub_10024C460();
  *(*(a1[4].super.isa + 1) + 24) = objc_getClass("TSSIMSetupFlow");
  if (!*(*(a1[4].super.isa + 1) + 24))
  {
    a1 = +[NSAssertionHandler currentHandler];
    v2 = [NSString stringWithUTF8String:"Class getTSSIMSetupFlowClass(void)_block_invoke"];
    [(NSAssertionHandler *)a1 handleFailureInFunction:v2 file:@"BuddySIMActivationController.m" lineNumber:26 description:@"Unable to find class %s", "TSSIMSetupFlow"];

    __break(1u);
  }

  qword_1003A7540 = *(*(a1[4].super.isa + 1) + 24);
}

uint64_t sub_10024C460()
{
  v3 = sub_10024C58C();
  if (!v3)
  {
    v0 = +[NSAssertionHandler currentHandler];
    v1 = [NSString stringWithUTF8String:"void *SIMSetupSupportLibrary(void)"];
    [(NSAssertionHandler *)v0 handleFailureInFunction:v1 file:@"BuddySIMActivationController.m" lineNumber:25 description:@"%s", 0];

    __break(1u);
  }

  return v3;
}

uint64_t sub_10024C58C()
{
  if (!qword_1003A7548)
  {
    sub_10024C640();
  }

  return qword_1003A7548;
}

uint64_t sub_10024C640()
{
  result = _sl_dlopen();
  qword_1003A7548 = result;
  return result;
}

uint64_t sub_10024C6D4()
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x20000000;
  v12 = 32;
  v8 = qword_1003A7550;
  v13 = qword_1003A7550;
  if (!qword_1003A7550)
  {
    v2 = _NSConcreteStackBlock;
    v3 = -1073741824;
    v4 = 0;
    v5 = sub_10024C7D0;
    v6 = &unk_10032B070;
    v7 = &v9;
    sub_10024C7D0(&v2);
  }

  v0 = v10[3];
  _Block_object_dispose(&v9, 8);
  return v0;
}

void *sub_10024C7D0(uint64_t a1)
{
  v2 = sub_10024C460();
  result = dlsym(v2, "TSUserInfoFlowTypeKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1003A7550 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Swift::String __swiftcall NSLocalizedString(_:tableName:bundle:value:comment:)(Swift::String _, Swift::String_optional tableName, NSBundle bundle, Swift::String value, Swift::String comment)
{
  v5 = NSLocalizedString(_:tableName:bundle:value:comment:)(_._countAndFlagsBits, _._object, tableName.value._countAndFlagsBits, tableName.value._object, bundle.super.isa, value._countAndFlagsBits, value._object, comment._countAndFlagsBits);
  result._object = v6;
  result._countAndFlagsBits = v5;
  return result;
}

Swift::String __swiftcall String.lowercased()()
{
  v0 = String.lowercased()();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

void operator delete(void *__p)
{
    ;
  }
}

void operator new()
{
    ;
  }
}