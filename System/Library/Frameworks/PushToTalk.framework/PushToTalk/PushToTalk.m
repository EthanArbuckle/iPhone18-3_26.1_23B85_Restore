id _pttAttemptTranslateErrorFromCXError(void *a1)
{
  v1 = a1;
  v2 = [v1 domain];
  v3 = [v2 isEqualToString:*MEMORY[0x277CBAF28]];

  if (!v3)
  {
    goto LABEL_19;
  }

  v4 = [v1 code];
  if (v4 <= 6)
  {
    if (v4 <= 2)
    {
      if (v4 == 1)
      {
LABEL_20:
        v13 = MEMORY[0x277CCA9B8];
        v6 = [v1 userInfo];
        v7 = v13;
        v8 = 0;
        goto LABEL_26;
      }

      if (v4 == 2)
      {
        v11 = MEMORY[0x277CCA9B8];
        v6 = [v1 userInfo];
        v7 = v11;
        v8 = 3;
        goto LABEL_26;
      }
    }

    else
    {
      switch(v4)
      {
        case 3:
          v16 = MEMORY[0x277CCA9B8];
          v6 = [v1 userInfo];
          v7 = v16;
          v8 = 2;
          goto LABEL_26;
        case 4:
          v14 = MEMORY[0x277CCA9B8];
          v6 = [v1 userInfo];
          v7 = v14;
          v8 = 1;
          goto LABEL_26;
        case 6:
          v9 = MEMORY[0x277CCA9B8];
          v6 = [v1 userInfo];
          v7 = v9;
          v8 = 4;
          goto LABEL_26;
      }
    }

LABEL_19:
    v12 = v1;
    goto LABEL_27;
  }

  if (v4 > 9)
  {
    switch(v4)
    {
      case 10:
        v18 = MEMORY[0x277CCA9B8];
        v6 = [v1 userInfo];
        v7 = v18;
        v8 = 8;
        goto LABEL_26;
      case 11:
        v15 = MEMORY[0x277CCA9B8];
        v6 = [v1 userInfo];
        v7 = v15;
        v8 = 6;
        goto LABEL_26;
      case 12:
        v10 = MEMORY[0x277CCA9B8];
        v6 = [v1 userInfo];
        v7 = v10;
        v8 = 9;
        goto LABEL_26;
    }

    goto LABEL_19;
  }

  if (v4 == 7)
  {
    v17 = MEMORY[0x277CCA9B8];
    v6 = [v1 userInfo];
    v7 = v17;
    v8 = 5;
    goto LABEL_26;
  }

  if (v4 == 8)
  {
    goto LABEL_20;
  }

  v5 = MEMORY[0x277CCA9B8];
  v6 = [v1 userInfo];
  v7 = v5;
  v8 = 7;
LABEL_26:
  v12 = [v7 errorWithDomain:@"com.apple.pushtotalk.channel" code:v8 userInfo:v6];

LABEL_27:

  return v12;
}

id PTDefaultLog()
{
  if (PTDefaultLog_onceToken != -1)
  {
    PTDefaultLog_cold_1();
  }

  v1 = PTDefaultLog_log;

  return v1;
}

uint64_t __PTDefaultLog_block_invoke()
{
  PTDefaultLog_log = os_log_create("com.apple.pushtotalk.framework", "Default");

  return MEMORY[0x2821F96F8]();
}

void sub_23A70B5A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_23A70BE5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_23A70CFA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

id _pttTemporaryFilesystemURLForImage(void *a1)
{
  if (a1)
  {
    v1 = [a1 imageByPreparingThumbnailOfSize:{300.0, 300.0}];
    v2 = UIImageJPEGRepresentation(v1, 1.0);
    v3 = [MEMORY[0x277CCAD78] UUID];
    v4 = MEMORY[0x277CCACA8];
    v5 = [v3 UUIDString];
    v6 = [v4 stringWithFormat:@"PushToTalk-%@.jpeg", v5];

    v7 = NSTemporaryDirectory();
    v8 = [v7 stringByAppendingPathComponent:v6];

    v9 = [MEMORY[0x277CBEBC0] fileURLWithPath:v8];
    [v2 writeToFile:v8 atomically:1];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

id _pttCheckIfErrorPreventingInstantiationExists()
{
  v0 = [MEMORY[0x277CCAC38] processInfo];
  v1 = [v0 isiOSAppOnMac];

  if (v1)
  {
    v2 = 1;
    NSLog(&cfstr_ErrorPushToTal.isa);
    goto LABEL_14;
  }

  v3 = SecTaskCreateFromSelf(0);
  if (!v3)
  {
    goto LABEL_13;
  }

  v4 = v3;
  v5 = SecTaskCopyValueForEntitlement(v3, @"com.apple.developer.push-to-talk", 0);
  CFRelease(v4);
  if (!v5)
  {
    goto LABEL_13;
  }

  v6 = CFGetTypeID(v5);
  if (v6 != CFBooleanGetTypeID())
  {
    CFRelease(v5);
    goto LABEL_13;
  }

  Value = CFBooleanGetValue(v5);
  CFRelease(v5);
  if (!Value)
  {
LABEL_13:
    v2 = 4;
    NSLog(&cfstr_ErrorPushToTal_0.isa);
    goto LABEL_14;
  }

  v8 = [MEMORY[0x277CCA8D8] mainBundle];
  v9 = [v8 infoDictionary];

  v10 = [v9 objectForKeyedSubscript:@"UIBackgroundModes"];
  v11 = [v10 containsObject:@"push-to-talk"];

  if (v11)
  {
    v12 = SecTaskCreateFromSelf(0);
    if (v12)
    {
      v13 = v12;
      v14 = SecTaskCopyValueForEntitlement(v12, @"aps-environment", 0);
      CFRelease(v13);
      if (v14)
      {
        v15 = CFGetTypeID(v14);
        TypeID = CFStringGetTypeID();
        CFRelease(v14);
        if (v15 == TypeID)
        {
          v17 = 0;
          goto LABEL_15;
        }
      }
    }

    v2 = 3;
    NSLog(&cfstr_ErrorPushToTal_2.isa);
  }

  else
  {
    v2 = 2;
    NSLog(&cfstr_ErrorPushToTal_1.isa);
  }

LABEL_14:
  v17 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.pushtotalk.instantiation" code:v2 userInfo:0];
LABEL_15:

  return v17;
}

uint64_t PTChannelLeaveReasonForCXActionOriginator(uint64_t a1)
{
  if ((a1 - 1) > 3)
  {
    return 0;
  }

  else
  {
    return qword_23A70FC90[a1 - 1];
  }
}

uint64_t PTChannelTransmitRequestSourceForCXActionOriginator(uint64_t a1)
{
  if ((a1 - 1) > 3)
  {
    return 0;
  }

  else
  {
    return qword_23A70FCB0[a1 - 1];
  }
}