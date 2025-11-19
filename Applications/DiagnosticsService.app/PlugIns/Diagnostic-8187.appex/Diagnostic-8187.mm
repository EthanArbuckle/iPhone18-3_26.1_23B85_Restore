void sub_100001DBC(const void **a1, _WORD *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = v8 >> 1;
    if (v8 >> 1 <= -2)
    {
      sub_100003598();
    }

    v10 = v4 - v7;
    if (v10 <= v9 + 1)
    {
      v11 = v9 + 1;
    }

    else
    {
      v11 = v10;
    }

    v12 = v10 >= 0x7FFFFFFFFFFFFFFELL;
    v13 = 0x7FFFFFFFFFFFFFFFLL;
    if (!v12)
    {
      v13 = v11;
    }

    if (v13)
    {
      sub_100003640(a1, v13);
    }

    v14 = (2 * v9);
    v15 = *a2;
    v16 = &v14[-(v8 >> 1)];
    *v14 = v15;
    v6 = v14 + 1;
    memcpy(v16, v7, v8);
    v17 = *a1;
    *a1 = v16;
    a1[1] = v6;
    a1[2] = 0;
    if (v17)
    {
      operator delete(v17);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  a1[1] = v6;
}

void sub_100001E98(uint64_t a1, _OWORD *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 4;
    if ((v7 + 1) >> 60)
    {
      sub_100003598();
    }

    v8 = v4 - *a1;
    v9 = v8 >> 3;
    if (v8 >> 3 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF0)
    {
      v10 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    if (v10)
    {
      sub_1000036B8(a1, v10);
    }

    v11 = (16 * v7);
    *v11 = *a2;
    v6 = 16 * v7 + 16;
    v12 = *(a1 + 8) - *a1;
    v13 = v11 - v12;
    memcpy(v11 - v12, *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 1);
  }

  *(a1 + 8) = v6;
}

void sub_1000035B0(const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  sub_10000360C(exception, a1);
}

std::logic_error *sub_10000360C(std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  return result;
}

void sub_100003640(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    operator new();
  }

  sub_100003684();
}

void sub_100003684()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
}

void sub_1000036B8(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  sub_100003684();
}

void sub_100003700(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x2AAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_100003684();
}

void sub_100003758(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_100003684();
}

void sub_1000037B0(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  sub_100003684();
}

void sub_1000037F8(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x333333333333334)
  {
    operator new();
  }

  sub_100003684();
}

uint64_t *initialize(uint64_t *result)
{
  v1 = 42;
  v2 = *result;
  do
  {
    v3 = -12211 * (v2 / 53668) + 40014 * (v2 % 53668);
    v2 = ((v3 >> 63) & 0x7FFFFFAB) + v3;
    if ((v1 - 3) <= 0x1F)
    {
      result[v1] = v2;
    }

    --v1;
  }

  while (v1 != 2);
  *result = v2;
  result[2] = result[3];
  return result;
}

uint64_t next(uint64_t *a1)
{
  v1 = -12211 * (*a1 / 53668) + 40014 * (*a1 % 53668);
  v2 = ((v1 >> 63) & 0x7FFFFFAB) + v1;
  v3 = -3791 * (a1[1] / 52774) + 40692 * (a1[1] % 52774);
  v4 = ((v3 >> 63) & 0x7FFFFF07) + v3;
  *a1 = v2;
  a1[1] = v4;
  v5 = &a1[a1[2] / 67108862];
  a1[2] = v5[3] - v4;
  v5[3] = v2;
  v6 = a1[2];
  if (v6 < 0)
  {
    v6 += 2147483563;
    a1[2] = v6;
  }

  return v6;
}

uint64_t *ConstructRandom(uint64_t *a1, time_t a2)
{
  if (!a2)
  {
    a2 = time(0);
  }

  *a1 = a2;
  a1[1] = a2;

  return initialize(a1);
}

float UniformFloat(uint64_t *a1)
{
  result = next(a1) * 4.65661306e-10;
  if (result == 1.0)
  {
    return 0.0;
  }

  return result;
}

void sub_100003F04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100003F34(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100003F4C(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

id sub_100004DF4(uint64_t a1, void *a2)
{
  v3 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Recieved thermal notification from kernel.", v5, 2u);
  }

  return [a2 recievedThermalStateChangedNotification];
}

id sub_100004E6C(uint64_t a1, void *a2)
{
  v3 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Recieved shutdown notification!", v5, 2u);
  }

  return [a2 recievedShutdownNotification];
}

void sub_100004F74(uint64_t a1)
{
  v2 = OSThermalNotificationCurrentLevel();
  v3 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v30 = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Device thermal level is now %d", buf, 8u);
  }

  if (v2 == 11)
  {
    if ([*(a1 + 32) isThermalBlocked])
    {
      return;
    }

    v4 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Pausing drain operations due to high thermal state", buf, 2u);
    }

    [*(a1 + 32) setIsThermalBlocked:1];
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v5 = [*(a1 + 32) drainQueue];
    v6 = [v5 operations];

    v7 = [v6 countByEnumeratingWithState:&v23 objects:v28 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v24;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v24 != v9)
          {
            objc_enumerationMutation(v6);
          }

          [*(*(&v23 + 1) + 8 * i) pause];
        }

        v8 = [v6 countByEnumeratingWithState:&v23 objects:v28 count:16];
      }

      while (v8);
    }

    goto LABEL_19;
  }

  if (v2 >= 12)
  {
    v11 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Device is hot enough to trigger OS warning screen and process murdering. Aborting battery drain.", buf, 2u);
    }

    [*(a1 + 32) setIsThermalBlocked:1];
    v22 = 0;
    [BatteryDrainController setCode:-1 forError:&v22];
    v6 = v22;
    [*(a1 + 32) failedToExecuteWithError:v6];
LABEL_19:

    return;
  }

  if (!v2 && [*(a1 + 32) isThermalBlocked])
  {
    v12 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Resuming drain operations due to lowered thermal state", buf, 2u);
    }

    [*(a1 + 32) setIsThermalBlocked:0];
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v13 = [*(a1 + 32) drainQueue];
    v6 = [v13 operations];

    v14 = [v6 countByEnumeratingWithState:&v18 objects:v27 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v19;
      do
      {
        for (j = 0; j != v15; j = j + 1)
        {
          if (*v19 != v16)
          {
            objc_enumerationMutation(v6);
          }

          [*(*(&v18 + 1) + 8 * j) resume];
        }

        v15 = [v6 countByEnumeratingWithState:&v18 objects:v27 count:16];
      }

      while (v15);
    }

    goto LABEL_19;
  }
}

void sub_1000063C0(IONotificationPort **a1, io_iterator_t a2)
{
  v4 = objc_autoreleasePoolPush();
  v5 = *a1;
  v6 = IOIteratorNext(a2);
  if (v6)
  {
    v7 = v6;
    do
    {
      v8 = IOServiceAddInterestNotification(v5, v7, "IOGeneralInterest", sub_100006980, 0, &dword_10001F840);
      v9 = DiagnosticLogHandleForCategory();
      v10 = v9;
      if (v8)
      {
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          sub_10000B61C(&v11, v12, v10);
        }
      }

      else
      {
        if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Added interest notification for battery", buf, 2u);
        }

        sub_10000699C(v7);
      }

      IOObjectRelease(v7);
      v7 = IOIteratorNext(a2);
    }

    while (v7);
  }

  objc_autoreleasePoolPop(v4);
}

void sub_100006980(uint64_t a1, io_registry_entry_t a2, int a3)
{
  if (a3 == -536723200)
  {
    sub_10000699C(a2);
  }
}

void sub_10000699C(io_registry_entry_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = +[NSMutableDictionary dictionary];
  sub_100006DB8(a1, v3, @"CurrentCapacity");
  sub_100006DB8(a1, v3, @"MaxCapacity");
  sub_100006DB8(a1, v3, @"AtCriticalLevel");
  sub_100006DB8(a1, v3, @"Voltage");
  sub_100006DB8(a1, v3, @"FullyCharged");
  sub_100006DB8(a1, v3, @"IsCharging");
  sub_100006DB8(a1, v3, @"ExternalConnected");
  sub_100006DB8(a1, v3, @"ExternalChargeCapable");
  sub_100006DB8(a1, v3, @"AdapterInfo");
  sub_100006DB8(a1, v3, @"CapacityEstimated");
  sub_100006DB8(a1, v3, @"AdapterDetails");
  v4 = [v3 count];
  v5 = DiagnosticLogHandleForCategory();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_INFO);
  if (v4)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    *v26 = 0;
    v7 = "Updating battery status with populated properties";
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    *v26 = 0;
    v7 = "Updating battery status properties, will be UIDeviceBatteryStateUnknown";
  }

  _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, v7, v26, 2u);
LABEL_7:

  v8 = v3;
  v9 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    sub_10000B72C(v8, v9);
  }

  v10 = [v8 objectForKey:@"CurrentCapacity"];
  v11 = [v10 intValue];

  v12 = [v8 objectForKey:@"MaxCapacity"];
  v13 = [v12 intValue];

  if (v13)
  {
    v14 = v13;
  }

  else
  {
    v14 = 100;
  }

  v15 = v11 / v14;
  if (v15 != *&dword_10001F530)
  {
    v16 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *v26 = 134218240;
      *&v26[4] = *&dword_10001F530;
      *&v26[12] = 2048;
      v27 = v15;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Battery level has changed from %f to %f. Sending notification", v26, 0x16u);
    }

    v17 = +[NSNotificationCenter defaultCenter];
    *&v18 = v15;
    v19 = [NSNumber numberWithFloat:v18];
    [v17 postNotificationName:@"com.apple.Diagnostics.BatteryLevelChangedNotification" object:v19];

    dword_10001F530 = LODWORD(v15);
  }

  v20 = [v8 objectForKey:{@"IsCharging", *v26}];
  v21 = [v20 BOOLValue];

  v22 = [v8 objectForKey:@"ExternalConnected"];
  v23 = [v22 BOOLValue];

  if ((v21 & 1) != 0 || v23)
  {
    v24 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *v26 = 67109376;
      *&v26[4] = v21;
      *&v26[8] = 1024;
      *&v26[10] = v23;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "The battery is either charging (%d) or connected to a charging source (%d). Sending notification", v26, 0xEu);
    }

    v25 = +[NSNotificationCenter defaultCenter];
    [v25 postNotificationName:@"com.apple.Diagnostics.BatteryConnectedToChargingNotification" object:0];
  }

  objc_autoreleasePoolPop(v2);
}

void sub_100006DB8(io_registry_entry_t a1, void *a2, const __CFString *a3)
{
  v7 = a2;
  CFProperty = IORegistryEntryCreateCFProperty(a1, a3, kCFAllocatorDefault, 0);
  if (CFProperty)
  {
    v6 = CFProperty;
    [v7 setObject:CFProperty forKey:a3];
  }
}

void sub_100006E44(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

void sub_100006E60(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 2u);
}

void sub_100007294(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

BOOL sub_100007640(id a1, id a2)
{
  v2 = a2;
  v3 = [v2 length] && objc_msgSend(v2, "length") < 0x33;

  return v3;
}

uint64_t GetPhysicalCPUs()
{
  v4 = 0;
  v3 = 4;
  v0 = sysctlbyname("hw.physicalcpu_max", &v4, &v3, 0, 0);
  v1 = v4;
  if (v4 <= 1)
  {
    v1 = 1;
  }

  if (v0)
  {
    return 1;
  }

  else
  {
    return v1;
  }
}

uint64_t detect_cpu()
{
  v2 = 0;
  v1 = 4;
  if (sysctlbyname("hw.cpufamily", &v2, &v1, 0, 0))
  {
    return 0;
  }

  else
  {
    return v2;
  }
}

double matrix4x4_translation(float a1, float a2, float a3)
{
  __asm { FMOV            V3.4S, #1.0 }

  *&result = 1065353216;
  return result;
}

double matrix4x4_rotation(float a1, float32x4_t a2)
{
  v2 = vmulq_f32(a2, a2);
  *&v3 = v2.f32[2] + vaddv_f32(*v2.f32);
  *v2.f32 = vrsqrte_f32(v3);
  *v2.f32 = vmul_f32(*v2.f32, vrsqrts_f32(v3, vmul_f32(*v2.f32, *v2.f32)));
  v8 = vmulq_n_f32(a2, vmul_f32(*v2.f32, vrsqrts_f32(v3, vmul_f32(*v2.f32, *v2.f32))).f32[0]);
  v4 = __sincosf_stret(a1);
  v5 = v8;
  v6 = vmuls_lane_f32(v5.f32[0], *v5.f32, 1);
  v5.f32[0] = v4.__cosval + (vmulq_f32(v5, v5).f32[0] * (1.0 - v4.__cosval));
  v5.f32[1] = vmuls_lane_f32(v4.__sinval, v8, 2) + (v6 * (1.0 - v4.__cosval));
  return *v5.i64;
}

void sub_10000B2B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, char a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, id a56)
{
  _Block_object_dispose(&a51, 8);

  _Unwind_Resume(a1);
}

uint64_t sub_10000B340(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10000B454(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Failed to save asset [%@]: %@", &v3, 0x16u);
}

void sub_10000B4DC(void *a1, uint8_t *buf, os_log_t log, void *a4)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Failed to download asset: %@", buf, 0xCu);
}

void sub_10000B61C(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Failed to add interest notification for battery", buf, 2u);
}

void sub_10000B72C(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "Updating battery data based on properties: %{public}@", &v2, 0xCu);
}

void sub_10000B7A4()
{
  v0 = objc_opt_class();
  sub_100007294(&_mh_execute_header, v1, v2, "Starting [%@]", v3, v4, v5, v6, 2u);
}

void sub_10000B82C()
{
  v0 = objc_opt_class();
  sub_100007294(&_mh_execute_header, v1, v2, "Cancelling [%@]", v3, v4, v5, v6, 2u);
}

void sub_10000B8B4()
{
  v0 = objc_opt_class();
  sub_100007294(&_mh_execute_header, v1, v2, "Finishing [%@]", v3, v4, v5, v6, 2u);
}

void sub_10000BAA4(uint64_t a1, NSObject *a2)
{
  v4 = 138412290;
  v5 = objc_opt_class();
  v3 = v5;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Main returning for %@", &v4, 0xCu);
}

void sub_10000BB80(os_log_t log)
{
  v1 = 136315394;
  v2 = "/Library/Caches/com.apple.xbs/Sources/Diagnostics/DiagnosticsService/Diagnostic-8187/CPUDrainOperation.m";
  v3 = 1024;
  v4 = 125;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Error: %s:%d, unable to allocate memory.", &v1, 0x12u);
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

__float2 __sincosf_stret(float a1)
{
  v3 = ___sincosf_stret(a1);
  cosval = v3.__cosval;
  sinval = v3.__sinval;
  result.__cosval = cosval;
  result.__sinval = sinval;
  return result;
}