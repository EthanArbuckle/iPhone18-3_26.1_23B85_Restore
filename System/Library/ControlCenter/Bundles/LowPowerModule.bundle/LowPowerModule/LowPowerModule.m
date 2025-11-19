void sub_29C9CF2AC(uint64_t a1)
{
  if ([*(a1 + 32) isExpanded])
  {
    [*(a1 + 32) _configureMenu];
  }

  v2 = *(a1 + 32);
  if ([v2 isExpanded])
  {
    v3 = 0;
  }

  else
  {
    v3 = [*(a1 + 32) isSelected];
  }

  [v2 setSelected:v3];
  v4 = *(a1 + 32);
  v5 = [v4 glyphState];
  [v4 setGlyphState:v5];
}

void sub_29C9CF600(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t sub_29C9CF640(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained toggleLowPowerMode];

  return 0;
}

uint64_t sub_29C9CF674(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained toggleMobileChargeMode];

  v3 = objc_loadWeakRetained((a1 + 32));
  [v3 refreshStateAnimated:1];

  return 0;
}

id sub_29C9CF92C()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = qword_2A1A12998;
  v7 = qword_2A1A12998;
  if (!qword_2A1A12998)
  {
    v1 = sub_29C9D0018();
    v5[3] = dlsym(v1, "PowerUIMCMStatusAsNotification");
    qword_2A1A12998 = v5[3];
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (!v0)
  {
    sub_29C9D0228();
  }

  v2 = *v0;

  return v2;
}

void sub_29C9CFA18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_29C9CFCAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_29C9CFCC8(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    v6 = *(a1 + 40);
    v15 = v5;
    v7 = [MEMORY[0x29EDB9F48] bundleForClass:objc_opt_class()];
    v8 = v7;
    if (v6)
    {
      v9 = @"CONTROL_CENTER_STATUS_LOW_POWER_MODE_ON";
    }

    else
    {
      v9 = @"CONTROL_CENTER_STATUS_LOW_POWER_MODE_OFF";
    }

    if (v6)
    {
      v10 = 1;
    }

    else
    {
      v10 = 2;
    }

    v11 = [v7 localizedStringForKey:v9 value:&stru_2A23EED98 table:0];

    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v13 = [WeakRetained contentModuleContext];
    v14 = [MEMORY[0x29EDC0CF0] statusUpdateWithMessage:v11 type:v10];
    [v13 enqueueStatusUpdate:v14];

    v5 = v15;
  }
}

Class sub_29C9CFFC0(uint64_t a1)
{
  sub_29C9D0018();
  result = objc_getClass("PowerUISmartChargeClient");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_29C9D02D8();
  }

  qword_2A1A12990 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_29C9D0018()
{
  v6 = *MEMORY[0x29EDCA608];
  v3[0] = 0;
  if (!qword_2A1A129A0)
  {
    v3[1] = MEMORY[0x29EDCA5F8];
    v3[2] = 3221225472;
    v3[3] = sub_29C9D0110;
    v3[4] = &unk_29F33D098;
    v3[5] = v3;
    v4 = xmmword_29F33D080;
    v5 = 0;
    qword_2A1A129A0 = _sl_dlopen();
  }

  v0 = qword_2A1A129A0;
  if (!qword_2A1A129A0)
  {
    sub_29C9D0354(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  v1 = *MEMORY[0x29EDCA608];
  return v0;
}

uint64_t sub_29C9D0110(uint64_t a1)
{
  v4 = *MEMORY[0x29EDCA608];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_2A1A129A0 = result;
  v3 = *MEMORY[0x29EDCA608];
  return result;
}

void *sub_29C9D0184(uint64_t a1)
{
  v2 = sub_29C9D0018();
  result = dlsym(v2, "PowerUIMCMStatusAsNotification");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_2A1A12998 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_29C9D01D4(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

void sub_29C9D0228()
{
  v0 = [MEMORY[0x29EDB9F28] currentHandler];
  v1 = [MEMORY[0x29EDBA0F8] stringWithUTF8String:"NSString *getPowerUIMCMStatusAsNotification(void)"];
  [v0 handleFailureInFunction:v1 file:@"CCUILowPowerModule.m" lineNumber:22 description:{@"%s", dlerror()}];

  __break(1u);
}

void sub_29C9D02D8()
{
  v0 = [MEMORY[0x29EDB9F28] currentHandler];
  v1 = [MEMORY[0x29EDBA0F8] stringWithUTF8String:"Class getPowerUISmartChargeClientClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"CCUILowPowerModule.m" lineNumber:21 description:{@"Unable to find class %s", "PowerUISmartChargeClient"}];

  __break(1u);
}

void sub_29C9D0354(void *a1)
{
  v2 = [MEMORY[0x29EDB9F28] currentHandler];
  v3 = [MEMORY[0x29EDBA0F8] stringWithUTF8String:"void *PowerUILibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"CCUILowPowerModule.m" lineNumber:20 description:{@"%s", *a1}];

  __break(1u);
  JUMPOUT(0x29C9D03D4);
}