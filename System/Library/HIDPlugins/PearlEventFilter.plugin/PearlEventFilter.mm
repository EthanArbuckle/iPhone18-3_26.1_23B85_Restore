uint64_t sub_29D446FD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_29D447170();
  if (v5)
  {
    if (v5 == 1)
    {
      TimeStamp = IOHIDEventGetTimeStamp();
      v10 = sub_29D448754(TimeStamp - *(a1 + 64), v7, v8, v9);
      *(a1 + 64) = TimeStamp;
      if (v10 <= 0x3E8)
      {
        v11 = *(a1 + 24);
        v15 = MEMORY[0x29EDCA5F8];
        v16 = 3221225472;
        v17 = sub_29D4488B4;
        v18 = &unk_29F34F4E0;
        v19 = a1;
        v12 = 6;
LABEL_10:
        v20 = v12;
        goto LABEL_11;
      }

      if ((*(a1 + 45) & 1) == 0)
      {
        v11 = *(a1 + 24);
        v15 = MEMORY[0x29EDCA5F8];
        v16 = 3221225472;
        v17 = sub_29D4488B4;
        v18 = &unk_29F34F4E0;
        v19 = a1;
        v12 = 1;
        goto LABEL_10;
      }

      sub_29D4487BC(1u);
    }

    else if (*(a1 + 44) == 1)
    {
      v13 = *(a1 + 24);
      v15 = MEMORY[0x29EDCA5F8];
      v16 = 3221225472;
      v17 = sub_29D4488B4;
      v18 = &unk_29F34F4E0;
      v19 = a1;
      v20 = v5;
      v11 = v13;
LABEL_11:
      dispatch_async(v11, &v15);
    }
  }

  return a3;
}

uint64_t sub_29D447170()
{
  Type = IOHIDEventGetType();
  if (Type == 1)
  {
    if (IOHIDEventGetIntegerValue() == 65292 && IOHIDEventGetIntegerValue() == 3)
    {
      IOHIDEventGetVendorDefinedData();
    }

    return 0;
  }

  if (Type == 11)
  {
    if ((IOHIDEventGetIntegerValue() & 0x20000) != 0)
    {
      return 3;
    }

    return 0;
  }

  if (Type != 3 || !IOHIDEventGetIntegerValue())
  {
    return 0;
  }

  IntegerValue = IOHIDEventGetIntegerValue();
  v2 = IOHIDEventGetIntegerValue();
  if (IntegerValue == 12 && v2 == 48)
  {
    return IOHIDEventGetIntegerValue() != 0;
  }

  if (IntegerValue != 65289 || v2 != 1 || IOHIDEventGetIntegerValue())
  {
    return 0;
  }

  return 2;
}

void sub_29D4472EC(uint64_t a1)
{
  v11 = *MEMORY[0x29EDCA608];
  v2 = MEMORY[0x29EDCA988];
  if (__osLogTrace)
  {
    v3 = __osLogTrace;
  }

  else
  {
    v3 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v10[0]) = 0;
    _os_log_impl(&dword_29D446000, v3, OS_LOG_TYPE_DEFAULT, "PearlEventFilter::updateKeybagState\n", v10, 2u);
  }

  kdebug_trace();
  v4 = MKBGetDeviceLockState();
  kdebug_trace();
  v6 = v4 != 3 && v4 != 0;
  *(a1 + 44) = v6;
  if (__osLogTrace)
  {
    v7 = __osLogTrace;
  }

  else
  {
    v7 = v2;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 44);
    v10[0] = 67109120;
    v10[1] = v8;
    _os_log_impl(&dword_29D446000, v7, OS_LOG_TYPE_DEFAULT, "PearlEventFilter::updateKeybagState -> void (_ %d)\n", v10, 8u);
  }

  v9 = *MEMORY[0x29EDCA608];
}

uint64_t AWDBiometricKitPrewarmCameraReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v35 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v35 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v35 & 0x7F) << v5;
        if ((v35 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) == 3)
      {
        v28 = 0;
        v29 = 0;
        v16 = 0;
        *(a1 + 32) |= 1u;
        while (1)
        {
          v36 = 0;
          v30 = [a2 position] + 1;
          if (v30 >= [a2 position] && (v31 = objc_msgSend(a2, "position") + 1, v31 <= objc_msgSend(a2, "length")))
          {
            v32 = [a2 data];
            [v32 getBytes:&v36 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v36 & 0x7F) << v28;
          if ((v36 & 0x80) == 0)
          {
            break;
          }

          v28 += 7;
          v20 = v29++ > 8;
          if (v20)
          {
            v21 = 0;
            v22 = &OBJC_IVAR___AWDBiometricKitPrewarmCamera__machTimestampInMillisecond;
            goto LABEL_55;
          }
        }

        v22 = &OBJC_IVAR___AWDBiometricKitPrewarmCamera__machTimestampInMillisecond;
        goto LABEL_52;
      }

      if (v13 == 2)
      {
        break;
      }

      if (v13 == 1)
      {
        v14 = 0;
        v15 = 0;
        v16 = 0;
        *(a1 + 32) |= 4u;
        while (1)
        {
          v37 = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:&v37 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v37 & 0x7F) << v14;
          if ((v37 & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v20 = v15++ > 8;
          if (v20)
          {
            v21 = 0;
            v22 = &OBJC_IVAR___AWDBiometricKitPrewarmCamera__timestamp;
            goto LABEL_55;
          }
        }

        v22 = &OBJC_IVAR___AWDBiometricKitPrewarmCamera__timestamp;
        goto LABEL_52;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_56:
      v33 = [a2 position];
      if (v33 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v23 = 0;
    v24 = 0;
    v16 = 0;
    *(a1 + 32) |= 2u;
    while (1)
    {
      v38 = 0;
      v25 = [a2 position] + 1;
      if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 1, v26 <= objc_msgSend(a2, "length")))
      {
        v27 = [a2 data];
        [v27 getBytes:&v38 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v16 |= (v38 & 0x7F) << v23;
      if ((v38 & 0x80) == 0)
      {
        break;
      }

      v23 += 7;
      v20 = v24++ > 8;
      if (v20)
      {
        v21 = 0;
        v22 = &OBJC_IVAR___AWDBiometricKitPrewarmCamera__prewarmCameraEventSource;
        goto LABEL_55;
      }
    }

    v22 = &OBJC_IVAR___AWDBiometricKitPrewarmCamera__prewarmCameraEventSource;
LABEL_52:
    if ([a2 hasError])
    {
      v21 = 0;
    }

    else
    {
      v21 = v16;
    }

LABEL_55:
    *(a1 + *v22) = v21;
    goto LABEL_56;
  }

  return [a2 hasError] ^ 1;
}

uint64_t sub_29D44803C(uint64_t a1)
{
  v10 = *MEMORY[0x29EDCA608];
  v2 = __osLogTrace;
  v3 = MEMORY[0x29EDCA988];
  if (__osLogTrace)
  {
    v4 = __osLogTrace;
  }

  else
  {
    v4 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v9[0]) = 0;
    _os_log_impl(&dword_29D446000, v4, OS_LOG_TYPE_DEFAULT, "PearlEventFilter::AddRef\n", v9, 2u);
    v2 = __osLogTrace;
  }

  v5 = (*(a1 + 8) + 1);
  *(a1 + 8) = v5;
  if (v2)
  {
    v6 = v2;
  }

  else
  {
    v6 = v3;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9[0] = 67109120;
    v9[1] = v5;
    _os_log_impl(&dword_29D446000, v6, OS_LOG_TYPE_DEFAULT, "PearlEventFilter::AddRef: -> %u\n", v9, 8u);
  }

  v7 = *MEMORY[0x29EDCA608];
  return v5;
}

uint64_t PearlEventFilterFactory(uint64_t a1, const void *a2)
{
  v15 = *MEMORY[0x29EDCA608];
  v4 = MEMORY[0x29EDCA988];
  if (__osLogTrace)
  {
    v5 = __osLogTrace;
  }

  else
  {
    v5 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_29D446000, v5, OS_LOG_TYPE_DEFAULT, "PearlEventFilterFactory\n", buf, 2u);
  }

  v6 = *MEMORY[0x29EDB8EF0];
  v7 = CFUUIDGetConstantUUIDWithBytes(*MEMORY[0x29EDB8EF0], 0x7Fu, 0x1Au, 0x3Au, 0xE6u, 0x3Eu, 0x3Du, 0x47u, 0xAu, 0xBDu, 0x15u, 0xA2u, 0xDDu, 0x7Eu, 0x1Bu, 0xB7u, 0x19u);
  if (CFEqual(a2, v7))
  {
    v8 = MEMORY[0x29ED58670](a1, 72, 0x10E0040284D09D9, 0);
    v9 = CFUUIDGetConstantUUIDWithBytes(v6, 0x25u, 0x44u, 0x51u, 0xCCu, 0x1Du, 0xAAu, 0x48u, 0xE1u, 0x83u, 0xE7u, 0x8Du, 0x9Bu, 0x7Fu, 0x82u, 0x53u, 0x79u);
    sub_29D448CAC(v8, v9);
  }

  else
  {
    v8 = 0;
  }

  if (__osLogTrace)
  {
    v10 = __osLogTrace;
  }

  else
  {
    v10 = v4;
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v14 = v8;
    _os_log_impl(&dword_29D446000, v10, OS_LOG_TYPE_DEFAULT, "PearlEventFilterFactory: -> %p\n", buf, 0xCu);
  }

  v11 = *MEMORY[0x29EDCA608];
  return v8;
}

uint64_t sub_29D448334(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v23 = *MEMORY[0x29EDCA608];
  v8 = MEMORY[0x29EDCA988];
  if (__osLogTrace)
  {
    v9 = __osLogTrace;
  }

  else
  {
    v9 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_29D446000, v9, OS_LOG_TYPE_DEFAULT, "PearlEventFilter::QueryInterface\n", buf, 2u);
  }

  *&v24.byte0 = a2;
  *&v24.byte8 = a3;
  v10 = CFUUIDCreateFromUUIDBytes(0, v24);
  v11 = *MEMORY[0x29EDB8EF0];
  v12 = CFUUIDGetConstantUUIDWithBytes(*MEMORY[0x29EDB8EF0], 0, 0, 0, 0, 0, 0, 0, 0, 0xC0u, 0, 0, 0, 0, 0, 0, 0x46u);
  if (CFEqual(v10, v12) || (v13 = CFUUIDGetConstantUUIDWithBytes(v11, 0x19u, 0xD7u, 0x74u, 0x41u, 0xBBu, 0xC4u, 0x45u, 0x11u, 0x91u, 0x49u, 0x60u, 0x57u, 0x2Au, 0xBu, 1u, 0x5Cu), CFEqual(v10, v13)))
  {
    v14 = __osLogTrace;
    if (__osLogTrace)
    {
      v15 = __osLogTrace;
    }

    else
    {
      v15 = v8;
    }

    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_29D446000, v15, OS_LOG_TYPE_DEFAULT, "PearlEventFilter::AddRef\n", buf, 2u);
      v14 = __osLogTrace;
    }

    v16 = *(a1 + 8) + 1;
    *(a1 + 8) = v16;
    if (!v14)
    {
      v14 = v8;
    }

    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v22 = v16;
      _os_log_impl(&dword_29D446000, v14, OS_LOG_TYPE_DEFAULT, "PearlEventFilter::AddRef: -> %u\n", buf, 8u);
    }

    v17 = 0;
  }

  else
  {
    a1 = 0;
    v17 = 2147483652;
  }

  *a4 = a1;
  CFRelease(v10);
  if (__osLogTrace)
  {
    v18 = __osLogTrace;
  }

  else
  {
    v18 = v8;
  }

  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v22 = v17;
    _os_log_impl(&dword_29D446000, v18, OS_LOG_TYPE_DEFAULT, "PearlEventFilter::QueryInterface: -> %u\n", buf, 8u);
  }

  v19 = *MEMORY[0x29EDCA608];
  return v17;
}

uint64_t sub_29D4485C4(uint64_t a1)
{
  v10 = *MEMORY[0x29EDCA608];
  v2 = MEMORY[0x29EDCA988];
  if (__osLogTrace)
  {
    v3 = __osLogTrace;
  }

  else
  {
    v3 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v9[0]) = 0;
    _os_log_impl(&dword_29D446000, v3, OS_LOG_TYPE_DEFAULT, "PearlEventFilter::Release\n", v9, 2u);
  }

  v4 = (*(a1 + 8) - 1);
  *(a1 + 8) = v4;
  if (a1 && !v4)
  {
    v5 = sub_29D4486F4(a1);
    MEMORY[0x29ED587D0](v5, 0x10E0C40284D09D9);
  }

  if (__osLogTrace)
  {
    v6 = __osLogTrace;
  }

  else
  {
    v6 = v2;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9[0] = 67109120;
    v9[1] = v4;
    _os_log_impl(&dword_29D446000, v6, OS_LOG_TYPE_DEFAULT, "PearlEventFilter::Release: -> %u\n", v9, 8u);
  }

  v7 = *MEMORY[0x29EDCA608];
  return v4;
}

uint64_t sub_29D4486F4(uint64_t a1)
{
  CFPlugInRemoveInstanceForFactory(*(a1 + 16));
  CFRelease(*(a1 + 16));

  return a1;
}

unint64_t sub_29D448754(unint64_t a1, double a2, double a3, double a4)
{
  if (qword_2A1A13170 != -1)
  {
    sub_29D4494D8();
  }

  LODWORD(a3) = dword_2A1A13178;
  LODWORD(a4) = *algn_2A1A1317C;
  return (a1 * *&a3 / *&a4 * 0.000001);
}

uint64_t sub_29D4487BC(unsigned int a1)
{
  v8 = *MEMORY[0x29EDCA608];
  if (a1 >= 7)
  {
    v1 = &off_29F34F500;
  }

  else
  {
    v1 = &(&off_29F34F500)[2 * a1];
  }

  if (__osLogTrace)
  {
    v2 = __osLogTrace;
  }

  else
  {
    v2 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *v1;
    v6 = 136315138;
    v7 = v3;
    _os_log_impl(&dword_29D446000, v2, OS_LOG_TYPE_DEFAULT, "PearlEventFilter::logEvent (%s)\n", &v6, 0xCu);
  }

  if (*(v1 + 2))
  {
    BKLogEvent();
  }

  result = *(v1 + 3);
  if (result)
  {
    result = kdebug_trace();
  }

  v5 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_29D4488B4(uint64_t a1)
{
  v28 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 32);
  v3 = MEMORY[0x29EDCA988];
  if (__osLogTrace)
  {
    v4 = __osLogTrace;
  }

  else
  {
    v4 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 40);
    *buf = 67109120;
    *&buf[4] = v5;
    _os_log_impl(&dword_29D446000, v4, OS_LOG_TYPE_DEFAULT, "PearlEventFilter::prewarmCamera (%d)\n", buf, 8u);
  }

  v27 = 0;
  *buf = 0;
  v6 = *(a1 + 40);
  if (v6 == 6)
  {
    v7 = 2;
  }

  else
  {
    v7 = 1;
  }

  sub_29D4487BC(v6);
  v8 = *(a1 + 40);
  v9 = *(v2 + 48);
  if (v9 + 1.0 >= CFAbsoluteTimeGetCurrent() && (v8 != 6 || *(v2 + 56) == 6))
  {
    if (__osLog)
    {
      v12 = __osLog;
    }

    else
    {
      v12 = v3;
    }

    if (!os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      goto LABEL_29;
    }

    LOWORD(v25[0]) = 0;
    v13 = "PearlEventFilter::prewarmCamera - prewarmed too recently\n";
    goto LABEL_23;
  }

  kdebug_trace();
  v10 = [*(v2 + 32) calls];
  v11 = [v10 count];

  kdebug_trace();
  if (v11)
  {
    if (__osLog)
    {
      v12 = __osLog;
    }

    else
    {
      v12 = v3;
    }

    if (!os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      goto LABEL_29;
    }

    LOWORD(v25[0]) = 0;
    v13 = "PearlEventFilter::prewarmCamera - call in progress\n";
LABEL_23:
    _os_log_impl(&dword_29D446000, v12, OS_LOG_TYPE_INFO, v13, v25, 2u);
    goto LABEL_29;
  }

  BKLogEvent();
  kdebug_trace();
  *(v2 + 48) = CFAbsoluteTimeGetCurrent();
  v14 = *(a1 + 40);
  *(v2 + 56) = v14;
  strcpy(buf, "PR+");
  *&buf[4] = 1;
  *&buf[6] = v7;
  if (v14 >= 5)
  {
    v15 = 0;
  }

  else
  {
    v15 = 0x302000100uLL >> (8 * v14);
  }

  v27 = v15;
  if (IOConnectCallStructMethod(*(v2 + 40), 0, buf, 9uLL, 0, 0))
  {
    sub_29D4494EC();
    goto LABEL_34;
  }

  v16 = objc_alloc_init(AWDBiometricKitPrewarmCamera);
  [(AWDBiometricKitPrewarmCamera *)v16 setPrewarmCameraEventSource:*(a1 + 40)];
  v17 = mach_absolute_time();
  [(AWDBiometricKitPrewarmCamera *)v16 setMachTimestampInMillisecond:sub_29D448754(v17, v18, v19, v20) % 0x1388];
  AWDPostMetric();
  v21 = MEMORY[0x29EDBFD60];
  v22 = [(AWDBiometricKitPrewarmCamera *)v16 dictionaryRepresentation];
  [v21 analyticsOSLogNSDictionary:v22 forEvent:@"biometricKitPrewarmCameraEvent"];

LABEL_29:
  if (__osLogTrace)
  {
    v23 = __osLogTrace;
  }

  else
  {
    v23 = v3;
  }

  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    v25[0] = 67109120;
    v25[1] = 0;
    _os_log_impl(&dword_29D446000, v23, OS_LOG_TYPE_DEFAULT, "PearlEventFilter::prewarmCamera -> %{errno}d\n", v25, 8u);
  }

LABEL_34:
  v24 = *MEMORY[0x29EDCA608];
}

uint64_t sub_29D448CAC(uint64_t a1, const void *a2)
{
  *a1 = &PearlEventFilter::functionTable;
  *(a1 + 8) = 1;
  *(a1 + 16) = 0;
  v4 = (a1 + 16);
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 44) = 257;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  v5 = os_log_create("com.apple.BiometricKit", "PearlEventFilter");
  v6 = __osLog;
  __osLog = v5;

  v7 = __osLog;
  if (!__osLog)
  {
    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
    {
      sub_29D4495FC();
    }

    v7 = __osLog;
  }

  objc_storeStrong(&__osLogTrace, v7);
  *v4 = CFRetain(a2);
  CFPlugInAddInstanceForFactory(a2);
  v8 = dispatch_queue_create("com.apple.PearlEventFilter", 0);
  v9 = *(a1 + 24);
  *(a1 + 24) = v8;

  v10 = *(a1 + 24);
  v11 = dispatch_get_global_queue(2, 0);
  dispatch_set_target_queue(v10, v11);

  sub_29D448F94(a1);
  handler[0] = MEMORY[0x29EDCA5F8];
  handler[1] = 3221225472;
  handler[2] = sub_29D4472E4;
  handler[3] = &unk_29F34F570;
  handler[4] = a1;
  out_token = -1;
  notify_register_dispatch("com.apple.mobile.keybagd.lock_status", &out_token, *(a1 + 24), handler);
  v17[0] = MEMORY[0x29EDCA5F8];
  v17[1] = 3221225472;
  v17[2] = sub_29D44914C;
  v17[3] = &unk_29F34F570;
  v17[4] = a1;
  out_token = -1;
  notify_register_dispatch("com.apple.iokit.hid.displayStatus", &out_token, *(a1 + 24), v17);
  LODWORD(v10) = out_token;
  v16[0] = MEMORY[0x29EDCA5F8];
  v16[1] = 3221225472;
  v16[2] = sub_29D4492C8;
  v16[3] = &unk_29F34F570;
  v16[4] = a1;
  out_token = -1;
  notify_register_dispatch("com.apple.passkit.inapp.presented", &out_token, *(a1 + 24), v16);
  v15[0] = MEMORY[0x29EDCA5F8];
  v15[1] = 3221225472;
  v15[2] = sub_29D449454;
  v15[3] = &unk_29F34F570;
  v15[4] = a1;
  out_token = -1;
  notify_register_dispatch("com.apple.passkit.inapp.dismissed", &out_token, *(a1 + 24), v15);
  sub_29D4472EC(a1);
  sub_29D449154(a1, v10);
  v12 = objc_alloc_init(MEMORY[0x29EDB8530]);
  v13 = *(a1 + 32);
  *(a1 + 32) = v12;

  return a1;
}

void sub_29D448F94(uint64_t a1)
{
  v17 = *MEMORY[0x29EDCA608];
  v2 = MEMORY[0x29EDCA988];
  if (__osLogTrace)
  {
    v3 = __osLogTrace;
  }

  else
  {
    v3 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v15) = 0;
    _os_log_impl(&dword_29D446000, v3, OS_LOG_TYPE_DEFAULT, "PearlEventFilter::pearlConnect\n", &v15, 2u);
  }

  v4 = *MEMORY[0x29EDBB118];
  v5 = IOServiceMatching("ApplePearlSEPDriver");
  MatchingService = IOServiceGetMatchingService(v4, v5);
  if (MatchingService)
  {
    v7 = MatchingService;
    v8 = IOServiceOpen(MatchingService, *MEMORY[0x29EDCA6B0], 0, (a1 + 40));
    if (!v8)
    {
      IOObjectRelease(v7);
      if (__osLogTrace)
      {
        v9 = __osLogTrace;
      }

      else
      {
        v9 = v2;
      }

      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v15 = 67109120;
        v16 = 0;
        v10 = v9;
        v11 = OS_LOG_TYPE_DEFAULT;
LABEL_13:
        _os_log_impl(&dword_29D446000, v10, v11, "PearlEventFilter::pearlConnect -> %{errno}d\n", &v15, 8u);
        goto LABEL_14;
      }

      goto LABEL_14;
    }

    v13 = v8;
    sub_29D449644(v8, v7);
  }

  else
  {
    sub_29D449720(&v15);
    v13 = v15;
  }

  if (__osLogTrace)
  {
    v14 = __osLogTrace;
  }

  else
  {
    v14 = v2;
  }

  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    v15 = 67109120;
    v16 = v13;
    v10 = v14;
    v11 = OS_LOG_TYPE_ERROR;
    goto LABEL_13;
  }

LABEL_14:
  v12 = *MEMORY[0x29EDCA608];
}

void sub_29D449154(uint64_t a1, int a2)
{
  v12 = *MEMORY[0x29EDCA608];
  v4 = MEMORY[0x29EDCA988];
  if (__osLogTrace)
  {
    v5 = __osLogTrace;
  }

  else
  {
    v5 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v9[0]) = 0;
    _os_log_impl(&dword_29D446000, v5, OS_LOG_TYPE_DEFAULT, "PearlEventFilter::updateDisplayState\n", v9, 2u);
  }

  v9[0] = 0;
  kdebug_trace();
  notify_get_state(a2, v9);
  kdebug_trace();
  *(a1 + 45) = v9[0] != 0;
  BKLogEvent();
  if (__osLogTrace)
  {
    v6 = __osLogTrace;
  }

  else
  {
    v6 = v4;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 45);
    *buf = 67109120;
    v11 = v7;
    _os_log_impl(&dword_29D446000, v6, OS_LOG_TYPE_DEFAULT, "PearlEventFilter::updateDisplayState -> void (_ %d)\n", buf, 8u);
  }

  v8 = *MEMORY[0x29EDCA608];
}

void sub_29D4492D4(uint64_t a1, int a2)
{
  v15 = *MEMORY[0x29EDCA608];
  v4 = MEMORY[0x29EDCA988];
  if (__osLogTrace)
  {
    v5 = __osLogTrace;
  }

  else
  {
    v5 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = "false";
    if (a2)
    {
      v6 = "true";
    }

    LODWORD(v10) = 136315138;
    *(&v10 + 4) = v6;
    _os_log_impl(&dword_29D446000, v5, OS_LOG_TYPE_DEFAULT, "PearlEventFilter::updateWalletState (%s)\n", &v10, 0xCu);
  }

  if (a2)
  {
    v7 = *(a1 + 24);
    *&v10 = MEMORY[0x29EDCA5F8];
    *(&v10 + 1) = 3221225472;
    v11 = sub_29D4488B4;
    v12 = &unk_29F34F4E0;
    v13 = a1;
    v14 = 6;
    dispatch_async(v7, &v10);
  }

  if (__osLogTrace)
  {
    v8 = __osLogTrace;
  }

  else
  {
    v8 = v4;
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v10) = 0;
    _os_log_impl(&dword_29D446000, v8, OS_LOG_TYPE_DEFAULT, "PearlEventFilter::updateWalletState -> void\n", &v10, 2u);
  }

  v9 = *MEMORY[0x29EDCA608];
}

BOOL sub_29D449498@<W0>(NSObject *a1@<X8>)
{
  if (a1)
  {
    v3 = a1;
  }

  else
  {
    v3 = v1;
  }

  return os_log_type_enabled(v3, OS_LOG_TYPE_ERROR);
}

BOOL sub_29D4494B8@<W0>(NSObject *a1@<X8>)
{
  if (a1)
  {
    v3 = a1;
  }

  else
  {
    v3 = v1;
  }

  return os_log_type_enabled(v3, OS_LOG_TYPE_ERROR);
}

void sub_29D4494EC()
{
  v11 = *MEMORY[0x29EDCA608];
  if (sub_29D4494B8(__osLog))
  {
    sub_29D449470();
    sub_29D449484();
    sub_29D449460();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  if (sub_29D4494B8(__osLogTrace))
  {
    sub_29D449460();
    _os_log_impl(v5, v6, v7, v8, v9, 8u);
  }

  v10 = *MEMORY[0x29EDCA608];
}

uint64_t sub_29D449644(uint64_t a1, io_object_t a2)
{
  v10 = *MEMORY[0x29EDCA608];
  if (sub_29D449498(__osLog))
  {
    sub_29D449470();
    sub_29D449484();
    sub_29D449460();
    _os_log_impl(v3, v4, v5, v6, v7, 0x30u);
  }

  result = IOObjectRelease(a2);
  v9 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_29D449720(_DWORD *a1)
{
  v8 = *MEMORY[0x29EDCA608];
  if (sub_29D449498(__osLog))
  {
    sub_29D449470();
    sub_29D449484();
    sub_29D449460();
    _os_log_impl(v2, v3, v4, v5, v6, 0x30u);
  }

  *a1 = -536870212;
  v7 = *MEMORY[0x29EDCA608];
}

void operator delete()
{
    ;
  }
}