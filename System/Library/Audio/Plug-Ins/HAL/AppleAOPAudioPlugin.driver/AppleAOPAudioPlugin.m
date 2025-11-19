void sub_EE0(uint64_t a1, uint64_t a2, int a3)
{
  v31 = (*(qword_28A18 + 16))();
  sub_1224("+ IOVoiceTriggerServiceInterestHandler(inMessageType: 0x%x)\n", v5, v6, v7, v8, v9, v10, v11, a3);
  if ((a2 - 1) <= 0xFFFFFFFD)
  {
    v19 = +[AppleAOPAudioPlugin sharedPlugin];
    v20 = [v19 getDeviceFromIOObject:a2];
    v21 = v20;
    if (a3 == -469794559 && v20)
    {
      v22 = clock();
      sub_1FF8("voice trigger event #%d.\n", v23, v24, v25, v26, v27, v28, v29, ++dword_28A78);
      v33 = 0;
      v32 = *"otvabolg";
      [v21 setLastVoiceTrigEventTime:v22];
      [v19 changedProperty:&v32 forObject:v21];
    }
  }

  sub_1224("- IOVoiceTriggerServiceInterestHandler()\n", v12, v13, v14, v15, v16, v17, v18, v30);
  if (v31 == 1)
  {
    (*(qword_28A18 + 24))(&qword_28A18);
  }
}

BOOL CADeprecated::CAMutex::Lock(CADeprecated::CAMutex *this)
{
  v2 = pthread_self();
  v3 = pthread_equal(v2, atomic_load_explicit(this + 2, memory_order_acquire));
  if (!v3)
  {
    v4 = pthread_mutex_lock((this + 24));
    if (v4)
    {
      v6 = v4;
      v7 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
      if (v7)
      {
        sub_18698(v7, v8, v9, v10, v11, v12, v13, v14);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      *exception = off_24B48;
      exception[2] = v6;
    }

    atomic_store(v2, this + 2);
  }

  return v3 == 0;
}

void BorealisOwlLog::VLog(BorealisOwlLog *this, char *__format, va_list a3, char *a4)
{
  if (this <= 5)
  {
    v4 = this;
    if (BorealisOwlLog::mLogLevel >= this)
    {
      vsnprintf(__str, 0x100uLL, __format, a3);
      syslog(5, "(%s) %s", (&BorealisOwlLog::kDelimStrings)[v4], __str);
    }
  }
}

void CADeprecated::CAMutex::Unlock(CADeprecated::CAMutex *this)
{
  v2 = pthread_self();
  if (pthread_equal(v2, atomic_load_explicit(this + 2, memory_order_acquire)))
  {
    atomic_store(0, this + 2);
    v3 = pthread_mutex_unlock((this + 24));
    if (v3)
    {
      v4 = v3;
      v5 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
      if (v5)
      {
        sub_186D4(v5, v6, v7, v8, v9, v10, v11, v12);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      *exception = off_24B48;
      exception[2] = v4;
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *v14 = 0;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, " CAMutex::Unlock: A thread is attempting to unlock a Mutex it doesn't own", v14, 2u);
  }
}

void sub_14AC(uint64_t a1, uint64_t a2, int a3)
{
  v5 = (*(qword_28A18 + 16))(&qword_28A18);
  sub_1224("+ %s(message type: 0x%x)\n", v6, v7, v8, v9, v10, v11, v12, "IOAudioServiceInterestHandler");
  if ((a2 - 1) <= 0xFFFFFFFD)
  {
    v20 = +[AppleAOPAudioPlugin sharedPlugin];
    v28 = [v20 getDeviceFromIOObject:a2];
    if (v28)
    {
      if (a3 == -536870896)
      {
        sub_1224(" %s() device is dead, removing it.\n", v21, v22, v23, v24, v25, v26, v27, "IOAudioServiceInterestHandler");
        [v20 removeIODevice:v28];
        [v28 deactivate];
      }

      else if (a3 == -536870608)
      {
        sub_1224(" %s() device property change.\n", v21, v22, v23, v24, v25, v26, v27, "IOAudioServiceInterestHandler");
      }
    }
  }

  sub_1224("- %s()\n", v13, v14, v15, v16, v17, v18, v19, "IOAudioServiceInterestHandler");
  if (v5)
  {
    (*(qword_28A18 + 24))(&qword_28A18);
  }
}

void sub_1674(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_B96C(va);
  _Unwind_Resume(a1);
}

uint64_t AOPAudioDeviceHWManager::HW_IsVoiceTriggerSupported(AOPAudioDeviceHWManager *this)
{
  v1 = *(this + 6);
  if (v1)
  {
    Object = BorealisOwl_IOKitObject::GetObject(v1);
    v14 = 0;
    if ((BorealisOwl_IOKitObject::CopyProperty_BOOL(Object, @"voice trigger supported", &v14, v3) & 1) == 0)
    {
      sub_8C70("exception thrown in BorealisOwlDevice::%s:%d : %s\n\n\n", v4, v5, v6, v7, v8, v9, v10, "HW_IsVoiceTriggerSupported");
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_1920C();
      }

      exception = __cxa_allocate_exception(0x10uLL);
      *exception = off_24B48;
      exception[2] = 1852797029;
    }

    v11 = v14;
  }

  else
  {
    v11 = 0;
  }

  return v11 & 1;
}

uint64_t BorealisOwl_IOKitObject::CopyProperty_BOOL(BorealisOwl_IOKitObject *this, const __CFString *a2, const __CFString *a3, BOOL *a4)
{
  CFProperty = IORegistryEntryCreateCFProperty(this, a2, 0, 0);
  if (CFProperty)
  {
    v6 = CFProperty;
    v7 = CFGetTypeID(CFProperty);
    if (v7 == CFBooleanGetTypeID())
    {
      LOBYTE(a3->isa) = CFBooleanGetValue(v6) != 0;
    }

    else
    {
      v9 = CFGetTypeID(v6);
      if (v9 != CFNumberGetTypeID())
      {
        v8 = 0;
        goto LABEL_9;
      }

      v11 = v6;
      v12 = 0;
      valuePtr = 0;
      CFNumberGetValue(v6, kCFNumberSInt32Type, &valuePtr);
      LOBYTE(a3->isa) = valuePtr != 0;
      sub_1870(&v11);
    }

    v8 = 1;
LABEL_9:
    CFRelease(v6);
    return v8;
  }

  return 0;
}

void sub_185C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1870(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1870(uint64_t a1)
{
  if (*(a1 + 8) == 1)
  {
    v2 = *a1;
    if (*a1)
    {
      CFRelease(v2);
    }
  }

  return a1;
}

void *AOPAudioDeviceHWManager::HW_GetVoiceTriggerConfiguration(AOPAudioDeviceHWManager *this)
{
  v13 = CFStringCreateWithCString(0, "VTConfigured", 0x600u);
  v14 = 1;
  v2 = CFStringCreateWithCString(0, "VTConfiguration", 0x600u);
  v11 = v2;
  v12 = 1;
  v10 = 0;
  cf = 0;
  if (!BorealisOwl_IOKitObject::CopyProperty_BOOL(*(this + 6), v13, &v10) || !v10)
  {
LABEL_9:
    v4 = CFStringCreateWithCString(0, "<na>", 0x600u);
    v7 = v4;
    v8 = 0;
    sub_1F78(&v7);
    goto LABEL_10;
  }

  v3 = BorealisOwl_IOKitObject::CopyProperty_CFString(*(this + 6), v2, &cf);
  v4 = cf;
  if (cf)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0;
  }

  if ((v5 & 1) == 0)
  {
    if (cf)
    {
      CFRelease(cf);
    }

    goto LABEL_9;
  }

LABEL_10:
  sub_1F78(&v11);
  sub_1F78(&v13);
  return v4;
}

void sub_1A54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  sub_1F78(va);
  sub_1F78(va1);
  _Unwind_Resume(a1);
}

uint64_t BorealisOwl_IOKitObject::CallMethod(BorealisOwl_IOKitObject *this, uint32_t a2, const unint64_t *a3, uint32_t a4, const void *a5, size_t a6, unint64_t *a7, unsigned int *a8, void *outputStruct, unint64_t *a10)
{
  var2 = this->var2;
  if (var2 && this->var5)
  {
    return IOConnectCallMethod(var2, a2, a3, a4, a5, a6, a7, a8, outputStruct, a10);
  }

  else
  {
    return 1937010544;
  }
}

BorealisOwl_IOKitObject *AOPAudioDeviceHWManager::_HW_VoiceTriggerSetControlValue(AOPAudioDeviceHWManager *this, unsigned int a2, unsigned int a3)
{
  result = *(this + 6);
  if (result)
  {
    v4 = a2;
    v20[0] = a2;
    v20[1] = a3;
    result = BorealisOwl_IOKitObject::CallMethod(result, 3u, v20, 2u, 0, 0, 0, 0, 0, 0);
    if (result)
    {
      sub_8C70("_HW_VoiceTriggerSetControlValue(0x%x, 0x%x) failed, status: 0x%x\n", v5, v6, v7, v8, v9, v10, v11, v4);
      sub_8C70("exception thrown in BorealisOwlDevice::%s:%d : %s\n\n\n", v12, v13, v14, v15, v16, v17, v18, "_HW_VoiceTriggerSetControlValue");
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_190E8();
      }

      exception = __cxa_allocate_exception(0x10uLL);
      *exception = off_24B48;
      exception[2] = 1852797029;
    }
  }

  return result;
}

AOPAudioDeviceHWManager *AOPAudioDeviceHWManager::HW_VoiceTriggerSetControlValue(AOPAudioDeviceHWManager *this, int a2, unsigned int a3)
{
  if (!a2)
  {
    v4 = this;
    this = AOPAudioDeviceHWManager::_HW_VoiceTriggerSetControlValue(this, a2, a3);
    *(v4 + 88) = a3 != 0;
  }

  return this;
}

uint64_t CACFDictionary::AddString(CACFDictionary *this, const __CFString *a2, const __CFString *a3)
{
  if (!this->var2)
  {
    return 0;
  }

  result = 0;
  if (a3)
  {
    var0 = this->var0;
    if (var0)
    {
      CFDictionarySetValue(var0, a2, a3);
      return 1;
    }
  }

  return result;
}

const __CFDictionary *BorealisOwl_IOKitObject::CopyProperty_BOOL(BorealisOwl_IOKitObject *this, const __CFString *a2, BOOL *a3)
{
  p_var3 = &this->var3;
  (*(this->var0 + 3))(this);

  return CACFDictionary::GetBool(p_var3, a2, a3);
}

void BorealisOwl_IOKitObject::CacheProperties(BorealisOwl_IOKitObject *this)
{
  var1 = this->var1;
  if (var1)
  {
    p_var3 = &this->var3;
    if (!this->var3.var0 || this->var4)
    {
      properties = 0;
      if (IORegistryEntryCreateCFProperties(var1, &properties, 0, 0))
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          sub_18248();
        }

        __break(1u);
      }

      else
      {
        sub_1D80(p_var3, properties);
        if (properties)
        {
          CFRelease(properties);
        }
      }
    }
  }
}

uint64_t sub_1D80(uint64_t a1, CFTypeRef cf)
{
  v4 = *(a1 + 8);
  if (v4 == 1)
  {
    v5 = *a1;
    if (*a1)
    {
      CFRelease(v5);
      LOBYTE(v4) = *(a1 + 8);
    }

    else
    {
      LOBYTE(v4) = 1;
    }
  }

  *a1 = cf;
  *(a1 + 9) = 1;
  if (cf && (v4 & 1) != 0)
  {
    CFRetain(cf);
  }

  return a1;
}

const __CFDictionary *CACFDictionary::GetBool(CACFDictionary *this, const __CFString *a2, BOOL *a3)
{
  result = this->var0;
  if (result)
  {
    result = CFDictionaryGetValue(result, a2);
    if (result)
    {
      v5 = result;
      v6 = CFGetTypeID(result);
      if (v6 == CFBooleanGetTypeID())
      {
        v7 = CFBooleanGetValue(v5) == 0;
      }

      else
      {
        v8 = CFGetTypeID(v5);
        if (v8 != CFNumberGetTypeID())
        {
          return 0;
        }

        valuePtr = 0;
        CFNumberGetValue(v5, kCFNumberSInt32Type, &valuePtr);
        v7 = valuePtr == 0;
      }

      v9 = !v7;
      *a3 = v9;
      return (&dword_0 + 1);
    }
  }

  return result;
}

const __CFDictionary *BorealisOwl_IOKitObject::CopyProperty_CFString(BorealisOwl_IOKitObject *this, const __CFString *a2, const __CFString **a3)
{
  p_var3 = &this->var3;
  (*(this->var0 + 3))(this);
  String = CACFDictionary::GetString(p_var3, a2, a3);
  if (*a3)
  {
    CFRetain(*a3);
  }

  return String;
}

const __CFDictionary *CACFDictionary::GetString(CACFDictionary *this, const __CFString *a2, const __CFString **a3)
{
  result = this->var0;
  if (result)
  {
    result = CFDictionaryGetValue(result, a2);
    if (result)
    {
      v5 = result;
      v6 = CFGetTypeID(result);
      if (v6 == CFStringGetTypeID())
      {
        *a3 = v5;
        return (&dword_0 + 1);
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1F78(uint64_t a1)
{
  if (*(a1 + 8) == 1)
  {
    v2 = *a1;
    if (*a1)
    {
      CFRelease(v2);
    }
  }

  return a1;
}

uint64_t sub_1FB8(uint64_t a1)
{
  if (*(a1 + 8) == 1)
  {
    v2 = *a1;
    if (*a1)
    {
      CFRelease(v2);
    }
  }

  return a1;
}

BorealisOwl_IOKitObject *AOPAudioDeviceHWManager::_HW_VoiceTriggerGetControlValue(AOPAudioDeviceHWManager *this, unint64_t *a2, unint64_t *a3)
{
  *a3 = 0;
  v20 = 1;
  result = *(this + 6);
  if (result)
  {
    result = BorealisOwl_IOKitObject::CallMethod(result, 2u, a2, 1u, 0, 0, a3, &v20, 0, 0);
    if (result)
    {
      sub_8C70("DeviceHWManager::_HW_VoiceTriggerGetControlValue(inControlID: %llu) failing\n", v5, v6, v7, v8, v9, v10, v11, *a2);
      sub_8C70("exception thrown in BorealisOwlDevice::%s:%d : %s\n\n\n", v12, v13, v14, v15, v16, v17, v18, "_HW_VoiceTriggerGetControlValue");
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_19078();
      }

      exception = __cxa_allocate_exception(0x10uLL);
      *exception = off_24B48;
      exception[2] = 1852797029;
    }
  }

  return result;
}

uint64_t AOPAudioDeviceHWManager::HW_VoiceTriggerGetControlValue(AOPAudioDeviceHWManager *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = a2;
  v11 = 0;
  if (a2)
  {
    sub_159EC(this, a2, a3, a4, a5, a6, a7, a8, v10);
    return 0;
  }

  else
  {
    AOPAudioDeviceHWManager::_HW_VoiceTriggerGetControlValue(this, &v10, &v11);
    result = v11;
    *(this + 88) = v11 != 0;
  }

  return result;
}

uint64_t AOPAudioDeviceHWManager::HW_DisableListening(AOPAudioDeviceHWManager *this)
{
  *v11 = xmmword_1CF90;
  result = BorealisOwl_IOKitObject::CallMethod((this + 8), 5u, v11, 2u, 0, 0, 0, 0, 0, 0);
  if (result)
  {
    sub_8C70("AOPAudioDeviceHWManager::HW_DisableListening: user client method failed", v2, v3, v4, v5, v6, v7, v8, outputStruct);
    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_24B48;
    exception[2] = 1852797029;
  }

  return result;
}

BOOL BorealisOwl_IOKitObject::CopyProperty_UInt64(BorealisOwl_IOKitObject *this, const __CFString *a2, const __CFString *a3, unint64_t *a4)
{
  CFProperty = IORegistryEntryCreateCFProperty(this, a2, 0, 0);
  if (!CFProperty)
  {
    return 0;
  }

  v6 = CFProperty;
  v7 = CFGetTypeID(CFProperty);
  v8 = v7 == CFNumberGetTypeID();
  v9 = v8;
  if (v8)
  {
    v11 = v6;
    v12 = 0;
    valuePtr = 0;
    CFNumberGetValue(v6, kCFNumberSInt64Type, &valuePtr);
    a3->isa = valuePtr;
    sub_1870(&v11);
  }

  CFRelease(v6);
  return v9;
}

void sub_2318(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1870(va);
  _Unwind_Resume(a1);
}

uint64_t AOPAudioDeviceHWManager::HW_GetDeviceInputLatencyFrames(AOPAudioDeviceHWManager *this)
{
  Object = BorealisOwl_IOKitObject::GetObject((this + 8));
  v12 = 0;
  if (!BorealisOwl_IOKitObject::CopyProperty_UInt64(Object, @"device input latency in frames", &v12, v2))
  {
    sub_8C70("exception thrown in BorealisOwlDevice::%s:%d : %s\n\n\n", v3, v4, v5, v6, v7, v8, v9, "HW_GetDeviceInputLatencyFrames");
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_195FC();
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_24B48;
    exception[2] = 1852797029;
  }

  return v12;
}

uint64_t sub_2440(uint64_t a1, double *a2, unint64_t *a3, void *a4)
{
  v8 = **(a1 + 32);
  v18[1] = v8;
  v9 = (*(*v8 + 16))(v8);
  v19 = v9;
  v17 = 0;
  v18[0] = 0;
  v15 = 0;
  v16 = 0;
  AOPAudioDeviceHWManager::HW_ReadIOTimeStampStatusBuffer(**(a1 + 40), v18, &v17, &v16, &v15);
  v11 = v15;
  v10 = v16;
  *a2 = v16;
  *a3 = v11;
  v12 = v18[0];
  *a4 = v18[0];
  if (v10 - v12 >= (*(a1 + 56) / *(a1 + 80) - *(a1 + 60)))
  {
    v13 = (*(a1 + 56) / *(a1 + 80) - *(a1 + 60));
  }

  else
  {
    v13 = v10 - v12;
  }

  *(*(a1 + 72) + 8) = v13;
  kdebug_trace();
  if (v9)
  {
    (*(*v8 + 24))(v8);
  }

  return 0;
}

void sub_2560(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_B96C(va);
  _Unwind_Resume(a1);
}

AOPAudioDeviceHWManager *AOPAudioDeviceHWManager::HW_ReadIOTimeStampStatusBuffer(AOPAudioDeviceHWManager *this, unint64_t *a2, unint64_t *a3, unint64_t *a4, unint64_t *a5)
{
  v5 = *(this + 10);
  do
  {
    *a2 = *v5;
    *a3 = v5[1];
    *a5 = v5[3];
    v6 = v5[2];
    *a4 = v6;
    v7 = v5[3];
  }

  while (*(v5 + 1) != __PAIR128__(*a5, v6));
  v8 = *a2;
  v9 = *a3;
  v10 = *(this + 18);
  if (v10 < *(this + 17))
  {
    *(this + 13) = v8;
    *(this + 14) = v9;
    *(this + 15) = v6;
    *(this + 16) = v7;
    *(this + 18) = v10 + 1;
  }

  v11 = *(this + 24);
  if (v11 < *(this + 23))
  {
    *(this + 19) = v8;
    *(this + 20) = v9;
    *(this + 21) = v6;
    *(this + 22) = v7;
    *(this + 24) = v11 + 1;
  }

  return this;
}

double AOPAudioDeviceHWManager::HW_StatusReset(AOPAudioDeviceHWManager *this)
{
  result = 0.0;
  *(this + 120) = 0u;
  *(this + 104) = 0u;
  *(this + 37) = 0;
  *(this + 38) = 0;
  *(this + 43) = 0;
  *(this + 44) = 0;
  *(this + 9) = 0u;
  *(this + 10) = 0u;
  *(this + 22) = 0;
  *(this + 24) = 0;
  *(this + 25) = 0;
  *(this + 27) = 0;
  *(this + 28) = 0;
  *(this + 30) = 0;
  *(this + 31) = 0;
  *(this + 32) = 0;
  return result;
}

BOOL ForceReadInputDataBufferNull(void)
{
  v0 = MGCopyAnswer();
  Value = CFBooleanGetValue(v0);
  CFRelease(v0);
  if (!Value)
  {
    return 0;
  }

  keyExistsAndHasValidFormat = 0;
  AppIntegerValue = CFPreferencesGetAppIntegerValue(@"Force ReadInputData Buffer Null", @"com.apple.voicetrigger", &keyExistsAndHasValidFormat);
  if (keyExistsAndHasValidFormat)
  {
    v3 = AppIntegerValue <= 0;
  }

  else
  {
    v3 = 1;
  }

  return !v3;
}

uint64_t AOPAudioDeviceHWManager::HW_StartIO(AOPAudioDeviceHWManager *this)
{
  result = BorealisOwl_IOKitObject::CallMethod((this + 8), 2u, 0, 0, 0, 0, 0, 0, 0, 0);
  if (result)
  {
    sub_8C70("exception thrown in BorealisOwlDevice::%s:%d : %s\n\n\n", v2, v3, v4, v5, v6, v7, v8, "HW_StartIO");
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_18F98();
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_24B48;
    exception[2] = 1852797029;
  }

  return result;
}

uint64_t sub_2BB8(uint64_t a1, uint64_t a2, _BYTE *a3, _BYTE *a4)
{
  *a3 = *(a1 + 32);
  *a4 = 1;
  return 1970171760;
}

void ReadInputData(unsigned int a1, char *a2, char a3, unsigned int a4, unsigned int a5, double a6, uint64_t a7, uint64_t *a8, uint64_t *a9, char a10)
{
  if ((a3 & 1) == 0)
  {
    kdebug_trace();
  }

  v18 = *a8;
  v19 = *(*a8 + 216);
  if (v19 < *(*a8 + 208))
  {
    *(v18 + 200) = a6;
    *(v18 + 216) = v19 + 1;
    v18 = *a8;
  }

  v20 = *(v18 + 240);
  if (v20 < *(v18 + 232))
  {
    *(v18 + 224) = a6;
    *(v18 + 240) = v20 + 1;
  }

  v21 = *a9;
  v22 = (*(*v21 + 16))(v21);
  v30 = v22;
  if (!a1)
  {
    sub_8C70("ReadInputData() IOBufferFrameSize == 0 \n", v23, v24, v25, v26, v27, v28, v29, v62);
    if (a3)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  if (a2)
  {
    v67 = *a8;
    v31 = *(*a8 + 64) / a4;
    v65 = a5;
    v66 = v22;
    if (v31 >= a1)
    {
      if (a1 > 0x1000 && (a3 & 1) == 0)
      {
        sub_8C70("ReadInputData() requested frames (%d) is very large...continuing\n", v23, v24, v25, v26, v27, v28, v29, a1);
      }
    }

    else
    {
      sub_8C70("ReadInputData() requested frames (%d) exceeds max (%d), truncating...\n", v23, v24, v25, v26, v27, v28, v29, a1);
      a1 = v31;
    }

    v64 = a1 * a4;
    bzero(a2, a1 * a4);
    v32 = a6;
    v33 = *a8;
    v71 = *(*a8 + 152);
    v70 = *(*a8 + 160);
    v69 = *(*a8 + 168);
    v68 = *(*a8 + 176);
    if (v69)
    {
      LODWORD(v34) = v69 - v71;
      if (v31 >= v69 - v71)
      {
        v34 = v34;
      }

      else
      {
        v34 = v31;
      }

      v63 = v34;
      v35 = sub_3038(v33 + 312, a1 + v32, v69 + *(v67 + 72) + *(v67 + 68));
      v43 = (v33 + 296);
      if (v35)
      {
        *v43 = vaddq_s64(*v43, vdupq_n_s64(1uLL));
      }

      else
      {
        ++v43->i64[0];
        sub_8C70("ReadInputData() Out of Bounds, read @ (%lld) > (%lld) \n", v36, v37, v38, v39, v40, v41, v42, a1 + v32);
      }

      v44 = *a8;
      v45 = sub_3038(*a8 + 360, a6, v69 - v63);
      v53 = (v44 + 344);
      if (v45)
      {
        *v53 = vaddq_s64(*v53, vdupq_n_s64(1uLL));
      }

      else
      {
        ++v53->i64[0];
        sub_8C70("ReadInputData() Out of Bounds, read @ (%lld) < (%lld) \n", v46, v47, v48, v49, v50, v51, v52, a6);
      }
    }

    v54 = (v31 & ((v32 % v31) >> 63)) + v32 % v31;
    if (v54 + a1 <= v31)
    {
      v55 = 0;
    }

    else
    {
      v55 = a1 - (v31 - v54);
    }

    if (a10)
    {
      goto LABEL_40;
    }

    if (v54 + a1 <= v31)
    {
      v56 = a1;
    }

    else
    {
      v56 = v31 - v54;
    }

    v57 = v56 * a4;
    memcpy(a2, (*(v67 + 56) + v54 * a4), v57);
    if (v55)
    {
      memcpy(&a2[v57], *(v67 + 56), v55 * a4);
    }

    if (v64 < v65)
    {
LABEL_40:
      v58 = 0;
    }

    else
    {
      v59 = 0;
      v60 = 0;
      do
      {
        v60 ^= *&a2[2 * v59++];
      }

      while (v59 < v64 / v65);
      v58 = v60;
    }

    v61 = *a8;
    if (sub_30B8(*a8 + 264, v58))
    {
      ++*(v61 + 256);
    }

    ++*(v61 + 248);
    if ((a3 & 1) == 0)
    {
      kdebug_trace();
    }

    if (v66)
    {
      goto LABEL_49;
    }

    return;
  }

  sub_8C70("ReadInputData() outBuffer == NULL \n", v23, v24, v25, v26, v27, v28, v29, v62);
  if ((a3 & 1) == 0)
  {
LABEL_14:
    kdebug_trace();
  }

LABEL_15:
  if (v30)
  {
LABEL_49:
    (*(*v21 + 24))(v21);
  }
}

void sub_2FC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_B96C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_3038(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a3;
  v6 = a2;
  v3 = *(a1 + 24);
  if (!v3)
  {
    sub_B9C8();
  }

  return (*(*v3 + 48))(v3, &v6, &v5);
}

uint64_t sub_30B8(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    sub_B9C8();
  }

  return (*(*v2 + 48))(v2, &v4);
}

void sub_33CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_B96C(va);
  _Unwind_Resume(a1);
}

uint64_t AOPAudioDeviceHWManager::HW_StopIO(AOPAudioDeviceHWManager *this)
{
  result = BorealisOwl_IOKitObject::CallMethod((this + 8), 3u, 0, 0, 0, 0, 0, 0, 0, 0);
  if (result)
  {
    sub_8C70("exception thrown in BorealisOwlDevice::%s:%d : %s\n\n\n", v2, v3, v4, v5, v6, v7, v8, "HW_StopIO");
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_19008();
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_24B48;
    exception[2] = 1852797029;
  }

  return result;
}

uint64_t AOPAudioDeviceHWManager::HW_GetClockDomain(AOPAudioDeviceHWManager *this)
{
  Object = BorealisOwl_IOKitObject::GetObject((this + 8));
  v11 = 0;
  if (BorealisOwl_IOKitObject::CopyProperty_UInt64(Object, @"input clock domain", &v11, v2))
  {
    return v11;
  }

  sub_8C70("AOPAudioDeviceHWManager::HW_GetClockDomain() failed to get registry key '%s' (error: 0x%x), assuming clock domain private(0)\n", v3, v4, v5, v6, v7, v8, v9, "input clock domain");
  return 0;
}

void AOPAudioDeviceHWManager::HW_SetVoiceTriggerConfiguration(AOPAudioDeviceHWManager *this, const __CFDictionary *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_1224("+-DeviceHWManager::HW_SetVoiceTriggerConfiguration(theConfigDictionary: %p)\n", a2, a3, a4, a5, a6, a7, a8, a2);
  if (!*(this + 6))
  {
    return;
  }

  if (!a2)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_19888();
    }

    goto LABEL_27;
  }

  TypeID = CFDictionaryGetTypeID();
  if (TypeID != CFGetTypeID(a2))
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_1974C();
    }

    goto LABEL_27;
  }

  Value = CFDictionaryGetValue(a2, @"CorealisRTModelVersion");
  if (Value)
  {
    v12 = CFStringGetTypeID();
    if (v12 == CFGetTypeID(Value))
    {
      Value = CFStringGetCStringPtr(Value, 0x600u);
    }

    else
    {
      Value = 0;
    }
  }

  v13 = CFDictionaryGetValue(a2, @"CorealisRTModel");
  if (!v13)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_19844();
    }

    goto LABEL_27;
  }

  v14 = v13;
  v15 = CFDataGetTypeID();
  if (v15 != CFGetTypeID(v14))
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_19790();
    }

LABEL_27:
    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_24B48;
    v41 = 560947818;
    goto LABEL_28;
  }

  v23 = "<unknown>";
  if (Value)
  {
    LOBYTE(v23) = Value;
  }

  sub_1FF8("AOP Audio updating voice trigger configuration to '%s'\n", v16, v17, v18, v19, v20, v21, v22, v23);
  IsConnectionOpen = BorealisOwl_IOKitObject::IsConnectionOpen(*(this + 6));
  v31 = *(this + 6);
  if (IsConnectionOpen)
  {
    if (!BorealisOwl_IOKitObject::SetConnectionProperty(v31, @"kPropertyConfiguration", a2))
    {
      return;
    }

    goto LABEL_29;
  }

  BorealisOwl_IOKitObject::OpenConnection(v31, 0, v24, v25, v26, v27, v28, v29);
  if (BorealisOwl_IOKitObject::SetConnectionProperty(*(this + 6), @"kPropertyConfiguration", a2))
  {
LABEL_29:
    sub_8C70("exception thrown in BorealisOwlDevice::%s:%d : %s\n\n\n", v32, v33, v34, v35, v36, v37, v38, "HW_SetVoiceTriggerConfiguration");
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_197D4();
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_24B48;
    v41 = 1852797029;
LABEL_28:
    exception[2] = v41;
  }

  v39 = *(this + 6);

  BorealisOwl_IOKitObject::CloseConnection(v39);
}

void AOPAudioDeviceHWManager::HW_UpdateRingBufferDescription(AOPAudioDeviceHWManager *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v17 = *(this + 7);
  sub_1224("+-DeviceHWManager::_HW_UpdateRingBufferDescription() {%p, %p}\n", a2, a3, a4, a5, a6, a7, a8, *(this + 10));
  if (!*(this + 10) || !*(this + 7))
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_18F54();
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_24B48;
    exception[2] = 1852797029;
  }

  *(this + 18) = AOPAudioDeviceHWManager::HW_GetZeroTimeStampWrapFrames(this);
  *(this + 17) = AOPAudioDeviceHWManager::HW_GetSafetyOffsetFrames(this);
  v18 = *(this + 18);
  sub_1FF8("RingBufferDescription {size %dB, zeroTSWrap: %d frames, safety offset %d frames}\n", v9, v10, v11, v12, v13, v14, v15, *(this + 16));
}

uint64_t AOPAudioDeviceHWManager::HW_GetZeroTimeStampWrapFrames(AOPAudioDeviceHWManager *this)
{
  Object = BorealisOwl_IOKitObject::GetObject((this + 8));
  v12 = 0;
  if (!BorealisOwl_IOKitObject::CopyProperty_UInt64(Object, @"zero timestamp wrap frames", &v12, v2))
  {
    sub_8C70("exception thrown in BorealisOwlDevice::%s:%d : %s\n\n\n", v3, v4, v5, v6, v7, v8, v9, "HW_GetZeroTimeStampWrapFrames");
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_1951C();
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_24B48;
    exception[2] = 1852797029;
  }

  return v12;
}

uint64_t AOPAudioDeviceHWManager::HW_GetSafetyOffsetFrames(AOPAudioDeviceHWManager *this)
{
  Object = BorealisOwl_IOKitObject::GetObject((this + 8));
  v12 = 0;
  if (!BorealisOwl_IOKitObject::CopyProperty_UInt64(Object, @"driver safety offset in frames", &v12, v2))
  {
    sub_8C70("exception thrown in BorealisOwlDevice::%s:%d : %s\n\n\n", v3, v4, v5, v6, v7, v8, v9, "HW_GetSafetyOffsetFrames");
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_1958C();
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_24B48;
    exception[2] = 1852797029;
  }

  return v12;
}

uint64_t AOPAudioDeviceHWManager::HW_GetBytesPerSample(AOPAudioDeviceHWManager *this)
{
  Object = BorealisOwl_IOKitObject::GetObject((this + 8));
  v12 = 0;
  if (!BorealisOwl_IOKitObject::CopyProperty_UInt64(Object, @"bytes per sample", &v12, v2))
  {
    sub_8C70("exception thrown in BorealisOwlDevice::%s:%d : %s\n\n\n", v3, v4, v5, v6, v7, v8, v9, "HW_GetBytesPerSample");
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_1935C();
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_24B48;
    exception[2] = 1852797029;
  }

  return v12;
}

uint64_t AOPAudioDeviceHWManager::HW_GetChannelsPerFrame(AOPAudioDeviceHWManager *this)
{
  Object = BorealisOwl_IOKitObject::GetObject((this + 8));
  v12 = 0;
  if (!BorealisOwl_IOKitObject::CopyProperty_UInt64(Object, @"channels per frame", &v12, v2))
  {
    sub_8C70("exception thrown in BorealisOwlDevice::%s:%d : %s\n\n\n", v3, v4, v5, v6, v7, v8, v9, "HW_GetChannelsPerFrame");
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_193CC();
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_24B48;
    exception[2] = 1852797029;
  }

  return v12;
}

uint64_t AOPAudioDeviceHWManager::HW_GetFramesPerPacket(AOPAudioDeviceHWManager *this)
{
  Object = BorealisOwl_IOKitObject::GetObject((this + 8));
  v12 = 0;
  if (!BorealisOwl_IOKitObject::CopyProperty_UInt64(Object, @"frames per packet", &v12, v2))
  {
    sub_8C70("exception thrown in BorealisOwlDevice::%s:%d : %s\n\n\n", v3, v4, v5, v6, v7, v8, v9, "HW_GetFramesPerPacket");
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_1943C();
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_24B48;
    exception[2] = 1852797029;
  }

  return v12;
}

uint64_t AOPAudioDeviceHWManager::HW_GetInputSamplesPerSec(AOPAudioDeviceHWManager *this)
{
  Object = BorealisOwl_IOKitObject::GetObject((this + 8));
  v12 = 0;
  if (!BorealisOwl_IOKitObject::CopyProperty_UInt64(Object, @"input samples per sec", &v12, v2))
  {
    sub_8C70("exception thrown in BorealisOwlDevice::%s:%d : %s\n\n\n", v3, v4, v5, v6, v7, v8, v9, "HW_GetInputSamplesPerSec");
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_194AC();
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_24B48;
    exception[2] = 1852797029;
  }

  return v12;
}

void BorealisOwl_IOKitObject::BorealisOwl_IOKitObject(BorealisOwl_IOKitObject *this)
{
  *&this->var1 = 0;
  this->var3.var0 = 0;
  this->var0 = off_247F8;
  *&this->var3.var1 = 257;
  *&this->var4 = 257;
}

{
  *&this->var1 = 0;
  this->var3.var0 = 0;
  this->var0 = off_247F8;
  *&this->var3.var1 = 257;
  *&this->var4 = 257;
}

void BorealisOwl_IOKitObject::BorealisOwl_IOKitObject(BorealisOwl_IOKitObject *this, unsigned int a2)
{
  this->var0 = off_247F8;
  this->var1 = a2;
  this->var2 = 0;
  this->var3.var0 = 0;
  *&this->var3.var1 = 257;
  *&this->var4 = 257;
}

{
  this->var0 = off_247F8;
  this->var1 = a2;
  this->var2 = 0;
  this->var3.var0 = 0;
  *&this->var3.var1 = 257;
  *&this->var4 = 257;
}

void BorealisOwl_IOKitObject::BorealisOwl_IOKitObject(BorealisOwl_IOKitObject *this, const __CFDictionary *a2)
{
  this->var0 = off_247F8;
  *&this->var1 = 0;
  this->var3.var0 = a2;
  *&this->var3.var1 = 1;
  *&this->var4 = 1;
}

{
  this->var0 = off_247F8;
  *&this->var1 = 0;
  this->var3.var0 = a2;
  *&this->var3.var1 = 1;
  *&this->var4 = 1;
}

void BorealisOwl_IOKitObject::BorealisOwl_IOKitObject(BorealisOwl_IOKitObject *this, const BorealisOwl_IOKitObject *a2)
{
  v4 = off_247F8;
  this->var0 = off_247F8;
  this->var1 = a2->var1;
  this->var2 = 0;
  var0 = a2->var3.var0;
  this->var3.var0 = var0;
  var1 = a2->var3.var1;
  this->var3.var1 = var1;
  this->var3.var2 = a2->var3.var2;
  if (var1 && var0 != 0)
  {
    CFRetain(var0);
    v4 = this->var0;
  }

  *&this->var4 = *&a2->var4;
  (v4[4])(this);
}

uint64_t BorealisOwl_IOKitObject::operator=(uint64_t a1, int a2)
{
  v4 = *(a1 + 12);
  if (v4)
  {
    IOServiceClose(v4);
    *(a1 + 12) = 0;
  }

  (*(*a1 + 40))(a1);
  *(a1 + 8) = a2;
  *(a1 + 33) = 1;
  return a1;
}

uint64_t BorealisOwl_IOKitObject::CloseConnection(BorealisOwl_IOKitObject *this)
{
  result = this->var2;
  if (result)
  {
    result = IOServiceClose(result);
    this->var2 = 0;
  }

  return result;
}

uint64_t BorealisOwl_IOKitObject::operator=(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 12);
  if (v4)
  {
    IOServiceClose(v4);
    *(a1 + 12) = 0;
  }

  (*(*a1 + 40))(a1);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 32) = *(a2 + 32);
  sub_46C8(a1 + 16, a2 + 16);
  v5 = *(a1 + 16);
  if (v5)
  {
    CFRelease(v5);
  }

  (*(*a1 + 32))(a1);
  return a1;
}

uint64_t sub_46C8(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == 1)
  {
    v4 = *a1;
    if (*a1)
    {
      CFRelease(v4);
    }
  }

  v5 = *a2;
  *a1 = *a2;
  v6 = *(a2 + 8);
  *(a1 + 8) = v6;
  *(a1 + 9) = *(a2 + 9);
  if (v6 == 1 && v5 != 0)
  {
    CFRetain(v5);
  }

  return a1;
}

void BorealisOwl_IOKitObject::~BorealisOwl_IOKitObject(BorealisOwl_IOKitObject *this)
{
  var0 = off_247F8;
  this->var0 = off_247F8;
  var2 = this->var2;
  if (var2)
  {
    IOServiceClose(var2);
    this->var2 = 0;
    var0 = this->var0;
  }

  (var0[5])(this);
  sub_1FB8(&this->var3);
}

{
  BorealisOwl_IOKitObject::~BorealisOwl_IOKitObject(this);

  operator delete();
}

BorealisOwl_IOKitObject *BorealisOwl_IOKitObject::TestForLiveness(BorealisOwl_IOKitObject *this)
{
  if (this)
  {
    properties = 0;
    v1 = IORegistryEntryCreateCFProperties(this, &properties, 0, 0);
    if (properties)
    {
      CFRelease(properties);
    }

    return (v1 == 0);
  }

  return this;
}

__CFDictionary *BorealisOwl_IOKitObject::CopyProperties(BorealisOwl_IOKitObject *this)
{
  (*(this->var0 + 3))(this);
  result = this->var3.var0;
  if (result)
  {
    CFRetain(result);
    return this->var3.var0;
  }

  return result;
}

BOOL BorealisOwl_IOKitObject::HasProperty(BorealisOwl_IOKitObject *this, const __CFString *a2)
{
  p_var3 = &this->var3;
  (*(this->var0 + 3))(this);

  return CACFDictionary::HasKey(p_var3, a2);
}

const __CFDictionary *BorealisOwl_IOKitObject::CopyProperty_SInt32(BorealisOwl_IOKitObject *this, const __CFString *a2, int *a3)
{
  p_var3 = &this->var3;
  (*(this->var0 + 3))(this);

  return CACFDictionary::GetSInt32(p_var3, a2, a3);
}

const __CFDictionary *BorealisOwl_IOKitObject::CopyProperty_UInt32(BorealisOwl_IOKitObject *this, const __CFString *a2, unsigned int *a3)
{
  p_var3 = &this->var3;
  (*(this->var0 + 3))(this);

  return CACFDictionary::GetUInt32(p_var3, a2, a3);
}

const __CFDictionary *BorealisOwl_IOKitObject::CopyProperty_UInt64(BorealisOwl_IOKitObject *this, const __CFString *a2, unint64_t *a3)
{
  p_var3 = &this->var3;
  (*(this->var0 + 3))(this);

  return CACFDictionary::GetUInt64(p_var3, a2, a3);
}

const __CFDictionary *BorealisOwl_IOKitObject::CopyProperty_Fixed32(BorealisOwl_IOKitObject *this, const __CFString *a2, float *a3)
{
  p_var3 = &this->var3;
  (*(this->var0 + 3))(this);

  return CACFDictionary::GetFixed32(p_var3, a2, a3);
}

const __CFDictionary *BorealisOwl_IOKitObject::CopyProperty_Fixed64(BorealisOwl_IOKitObject *this, const __CFString *a2, double *a3)
{
  p_var3 = &this->var3;
  (*(this->var0 + 3))(this);

  return CACFDictionary::GetFixed64(p_var3, a2, a3);
}

const __CFDictionary *BorealisOwl_IOKitObject::CopyProperty_CFArray(BorealisOwl_IOKitObject *this, const __CFString *a2, const __CFArray **a3)
{
  p_var3 = &this->var3;
  (*(this->var0 + 3))(this);
  Array = CACFDictionary::GetArray(p_var3, a2, a3);
  if (*a3)
  {
    CFRetain(*a3);
  }

  return Array;
}

const __CFDictionary *BorealisOwl_IOKitObject::CopyProperty_CFDictionary(BorealisOwl_IOKitObject *this, const __CFString *a2, const __CFDictionary **a3)
{
  p_var3 = &this->var3;
  (*(this->var0 + 3))(this);
  Dictionary = CACFDictionary::GetDictionary(p_var3, a2, a3);
  if (*a3)
  {
    CFRetain(*a3);
  }

  return Dictionary;
}

__CFDictionary *BorealisOwl_IOKitObject::CopyProperty_CFType(BorealisOwl_IOKitObject *this, const __CFString *a2, const void **a3)
{
  p_var3 = &this->var3;
  (*(this->var0 + 3))(this);
  CFType = CACFDictionary::GetCFType(p_var3, a2, a3);
  if (*a3)
  {
    CFRetain(*a3);
  }

  return CFType;
}

const __CFDictionary *BorealisOwl_IOKitObject::CopyProperty_CACFString(BorealisOwl_IOKitObject *this, const __CFString *a2, CACFString *a3)
{
  p_var3 = &this->var3;
  (*(this->var0 + 3))(this);

  return CACFDictionary::GetCACFString(&p_var3->var0, a2, a3);
}

const __CFDictionary *BorealisOwl_IOKitObject::CopyProperty_CACFArray(BorealisOwl_IOKitObject *this, const __CFString *a2, CFTypeRef *a3)
{
  p_var3 = &this->var3;
  (*(this->var0 + 3))(this);

  return CACFDictionary::GetCACFArray(p_var3, a2, a3);
}

const __CFDictionary *BorealisOwl_IOKitObject::CopyProperty_CACFDictionary(BorealisOwl_IOKitObject *this, const __CFString *a2, CACFDictionary *a3)
{
  p_var3 = &this->var3;
  (*(this->var0 + 3))(this);

  return CACFDictionary::GetCACFDictionary(p_var3, a2, a3);
}

__CFDictionary *BorealisOwl_IOKitObject::CopyProperty_CACFType(CACFDictionary *a1, const __CFString *a2, uint64_t a3)
{
  v5 = a1 + 1;
  (*(a1->var0 + 3))(a1);
  cf = 0;
  result = CACFDictionary::GetCFType(v5, a2, &cf);
  if (result)
  {
    return sub_4F28(a3, cf);
  }

  return result;
}

uint64_t sub_4F28(uint64_t a1, CFTypeRef cf)
{
  if (*(a1 + 8) == 1)
  {
    v4 = *a1;
    if (*a1)
    {
      CFRelease(v4);
    }
  }

  *a1 = cf;
  *(a1 + 8) = 1;
  if (cf)
  {
    CFRetain(cf);
  }

  return a1;
}

uint64_t BorealisOwl_IOKitObject::SetProperty(BorealisOwl_IOKitObject *this, const __CFString *a2, const void *a3)
{
  result = IORegistryEntrySetCFProperty(this->var1, a2, a3);
  if (result)
  {
    v5 = result;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_181D8();
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_24B48;
    exception[2] = v5;
  }

  return result;
}

uint64_t BorealisOwl_IOKitObject::SetProperty_BOOL(BorealisOwl_IOKitObject *this, const __CFString *a2, int a3)
{
  valuePtr = a3;
  v6 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v7 = 1;
  BorealisOwl_IOKitObject::SetProperty(this, a2, v6);
  return sub_1870(&v6);
}

void sub_5074(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1870(va);
  _Unwind_Resume(a1);
}

uint64_t BorealisOwl_IOKitObject::SetProperty_SInt32(BorealisOwl_IOKitObject *this, const __CFString *a2, int a3)
{
  valuePtr = a3;
  v6 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v7 = 1;
  BorealisOwl_IOKitObject::SetProperty(this, a2, v6);
  return sub_1870(&v6);
}

void sub_50EC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1870(va);
  _Unwind_Resume(a1);
}

uint64_t BorealisOwl_IOKitObject::SetProperty_UInt32(BorealisOwl_IOKitObject *this, const __CFString *a2, int a3)
{
  valuePtr = a3;
  v6 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v7 = 1;
  BorealisOwl_IOKitObject::SetProperty(this, a2, v6);
  return sub_1870(&v6);
}

void sub_5164(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1870(va);
  _Unwind_Resume(a1);
}

void BorealisOwl_IOKitObject::PropertiesChanged(BorealisOwl_IOKitObject *this)
{
  if (this->var3.var1)
  {
    var0 = this->var3.var0;
    if (var0)
    {
      CFRelease(var0);
    }
  }

  this->var3.var0 = 0;
  this->var3.var2 = 1;
}

BOOL BorealisOwl_IOKitObject::HasProperty(BorealisOwl_IOKitObject *this, const __CFString *a2, const __CFString *a3)
{
  CFProperty = IORegistryEntryCreateCFProperty(this, a2, 0, 0);
  v4 = CFProperty;
  if (CFProperty)
  {
    CFRelease(CFProperty);
  }

  return v4 != 0;
}

BOOL BorealisOwl_IOKitObject::CopyProperty_SInt32(BorealisOwl_IOKitObject *this, const __CFString *a2, const __CFString *a3, int *a4)
{
  CFProperty = IORegistryEntryCreateCFProperty(this, a2, 0, 0);
  if (!CFProperty)
  {
    return 0;
  }

  v6 = CFProperty;
  v7 = CFGetTypeID(CFProperty);
  v8 = v7 == CFNumberGetTypeID();
  v9 = v8;
  if (v8)
  {
    v11 = v6;
    v12 = 0;
    valuePtr = 0;
    CFNumberGetValue(v6, kCFNumberSInt32Type, &valuePtr);
    LODWORD(a3->isa) = valuePtr;
    sub_1870(&v11);
  }

  CFRelease(v6);
  return v9;
}

void sub_5298(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1870(va);
  _Unwind_Resume(a1);
}

BOOL BorealisOwl_IOKitObject::CopyProperty_UInt32(BorealisOwl_IOKitObject *this, const __CFString *a2, const __CFString *a3, unsigned int *a4)
{
  CFProperty = IORegistryEntryCreateCFProperty(this, a2, 0, 0);
  if (!CFProperty)
  {
    return 0;
  }

  v6 = CFProperty;
  v7 = CFGetTypeID(CFProperty);
  v8 = v7 == CFNumberGetTypeID();
  v9 = v8;
  if (v8)
  {
    v11 = v6;
    v12 = 0;
    valuePtr = 0;
    CFNumberGetValue(v6, kCFNumberSInt32Type, &valuePtr);
    LODWORD(a3->isa) = valuePtr;
    sub_1870(&v11);
  }

  CFRelease(v6);
  return v9;
}

void sub_5348(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1870(va);
  _Unwind_Resume(a1);
}

CFTypeRef BorealisOwl_IOKitObject::CopyProperty_CFString(BorealisOwl_IOKitObject *this, const __CFString *a2, const __CFString *a3, const __CFString **a4)
{
  result = IORegistryEntryCreateCFProperty(this, a2, 0, 0);
  if (result)
  {
    v6 = result;
    v7 = CFGetTypeID(result);
    if (v7 == CFStringGetTypeID())
    {
      a3->isa = v6;
      return &dword_0 + 1;
    }

    else
    {
      CFRelease(v6);
      return 0;
    }
  }

  return result;
}

CFTypeRef BorealisOwl_IOKitObject::CopyProperty_CFArray(BorealisOwl_IOKitObject *this, const __CFString *a2, const __CFString *a3, const __CFArray **a4)
{
  result = IORegistryEntryCreateCFProperty(this, a2, 0, 0);
  if (result)
  {
    v6 = result;
    v7 = CFGetTypeID(result);
    if (v7 == CFArrayGetTypeID())
    {
      a3->isa = v6;
      return &dword_0 + 1;
    }

    else
    {
      CFRelease(v6);
      return 0;
    }
  }

  return result;
}

CFTypeRef BorealisOwl_IOKitObject::CopyProperty_CFDictionary(BorealisOwl_IOKitObject *this, const __CFString *a2, const __CFString *a3, const __CFDictionary **a4)
{
  result = IORegistryEntryCreateCFProperty(this, a2, 0, 0);
  if (result)
  {
    v6 = result;
    v7 = CFGetTypeID(result);
    if (v7 == CFDictionaryGetTypeID())
    {
      a3->isa = v6;
      return &dword_0 + 1;
    }

    else
    {
      CFRelease(v6);
      return 0;
    }
  }

  return result;
}

void BorealisOwl_IOKitObject::CopyProperty_CACFString(BorealisOwl_IOKitObject *this, const __CFString *a2, const __CFString *a3, CACFString *a4)
{
  CFProperty = IORegistryEntryCreateCFProperty(this, a2, 0, 0);
  if (CFProperty)
  {
    v6 = CFProperty;
    v7 = CFGetTypeID(CFProperty);
    if (v7 == CFStringGetTypeID())
    {
      sub_5534(a3, v6);

      CFRelease(v6);
      return;
    }

    CFRelease(v6);
  }

  sub_5534(a3, 0);
}

uint64_t sub_5534(uint64_t a1, CFTypeRef cf)
{
  v3 = *a1;
  if (v3 == cf)
  {
    v4 = v3;
  }

  else
  {
    v4 = cf;
    if (v3 && (*(a1 + 8) & 1) != 0)
    {
      CFRelease(v3);
    }

    *a1 = v4;
  }

  *(a1 + 8) = 1;
  if (v4)
  {
    CFRetain(v4);
  }

  return a1;
}

uint64_t BorealisOwl_IOKitObject::CopyMatchingObjectWithPropertyValue(BorealisOwl_IOKitObject *this, const __CFString *a2, const __CFString *a3, const void *a4)
{
  var1 = 0;
  if (this && a2 && a3)
  {
    mainPort = 0;
    v8 = IOMainPort(bootstrap_port, &mainPort);
    if (v8)
    {
      v12 = v8;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_182B8();
      }

      exception = __cxa_allocate_exception(0x10uLL);
      *exception = off_24B48;
      exception[2] = v12;
    }

    CFRetain(this);
    *&v21.var1 = 0;
    v21.var3.var0 = 0;
    v21.var0 = off_247F8;
    *&v21.var3.var1 = 257;
    *&v21.var4 = 257;
    existing = 0;
    if (!IOServiceGetMatchingServices(mainPort, this, &existing) && existing)
    {
      v17 = off_24870;
      iterator = existing;
      v19 = 1;
      v9 = IOIteratorNext(existing);
      v16.var0 = off_247F8;
      v16.var1 = v9;
      v16.var2 = 0;
      v16.var3.var0 = 0;
      *&v16.var3.var1 = 257;
      *&v16.var4 = 257;
      while (!v21.var1 && v16.var1)
      {
        cf1 = 0;
        v15 = 1;
        BorealisOwl_IOKitObject::CopyProperty_CACFType(&v16, a2, &cf1);
        if (cf1 && CFEqual(cf1, a3))
        {
          (*(v16.var0 + 4))(&v16);
          BorealisOwl_IOKitObject::operator=(&v21, v16.var1);
        }

        v10 = IOIteratorNext(iterator);
        BorealisOwl_IOKitObject::operator=(&v16, v10);
        sub_6504(&cf1);
      }

      BorealisOwl_IOKitObject::~BorealisOwl_IOKitObject(&v16);
      BorealisOwl_IOKitIterator::~BorealisOwl_IOKitIterator(&v17);
    }

    (*(v21.var0 + 4))(&v21);
    var1 = v21.var1;
    BorealisOwl_IOKitObject::~BorealisOwl_IOKitObject(&v21);
  }

  return var1;
}

void sub_5808(_Unwind_Exception *a1, uint64_t a2, BorealisOwl_IOKitObject *a3, char a4, uint64_t a5, uint64_t a6, BorealisOwl_IOKitObject *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  BorealisOwl_IOKitIterator::~BorealisOwl_IOKitIterator(&a16);
  BorealisOwl_IOKitObject::~BorealisOwl_IOKitObject(&a19);
  _Unwind_Resume(a1);
}

void BorealisOwl_IOKitIterator::BorealisOwl_IOKitIterator(BorealisOwl_IOKitIterator *this, int a2, char a3)
{
  *this = off_24870;
  *(this + 2) = a2;
  *(this + 12) = a3;
}

{
  *this = off_24870;
  *(this + 2) = a2;
  *(this + 12) = a3;
}

uint64_t BorealisOwl_IOKitObject::CopyChildWithIntegerPropertyValues(BorealisOwl_IOKitObject *this, const __CFString *a2, const __CFString *a3, const __CFString *a4, const __CFString *a5)
{
  var1 = 0;
  if (this && a2 && a4)
  {
    v8 = a5;
    v9 = a3;
    *&v20.var1 = 0;
    v20.var3.var0 = 0;
    v20.var0 = off_247F8;
    *&v20.var3.var1 = 257;
    *&v20.var4 = 257;
    v17 = off_24870;
    iterator = 0;
    v19 = 1;
    if (IORegistryEntryGetChildIterator(this, "IOService", &iterator))
    {
      iterator = 0;
    }

    else if (iterator)
    {
      v10 = IOIteratorNext(iterator);
      v16.var0 = off_247F8;
      v16.var1 = v10;
      v16.var2 = 0;
      v16.var3.var0 = 0;
      *&v16.var3.var1 = 257;
      *&v16.var4 = 257;
      while (!v20.var1 && v16.var1)
      {
        v15 = 0;
        (*(v16.var0 + 3))(&v16);
        UInt32 = CACFDictionary::GetUInt32(&v16.var3, a2, &v15);
        v14 = 0;
        (*(v16.var0 + 3))(&v16);
        if ((UInt32 & CACFDictionary::GetUInt32(&v16.var3, a4, &v14)) == 1 && v15 == v9 && v14 == v8)
        {
          (*(v16.var0 + 4))(&v16);
          BorealisOwl_IOKitObject::operator=(&v20, v16.var1);
        }

        v12 = IOIteratorNext(iterator);
        BorealisOwl_IOKitObject::operator=(&v16, v12);
      }

      BorealisOwl_IOKitObject::~BorealisOwl_IOKitObject(&v16);
    }

    (*(v20.var0 + 4))(&v20);
    var1 = v20.var1;
    BorealisOwl_IOKitIterator::~BorealisOwl_IOKitIterator(&v17);
    BorealisOwl_IOKitObject::~BorealisOwl_IOKitObject(&v20);
  }

  return var1;
}

void sub_5AE0(_Unwind_Exception *a1, uint64_t a2, BorealisOwl_IOKitObject *a3, char a4, uint64_t a5, BorealisOwl_IOKitObject *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18)
{
  BorealisOwl_IOKitIterator::~BorealisOwl_IOKitIterator(&a16);
  BorealisOwl_IOKitObject::~BorealisOwl_IOKitObject(&a18);
  _Unwind_Resume(a1);
}

void BorealisOwl_IOKitIterator::BorealisOwl_IOKitIterator(BorealisOwl_IOKitIterator *this, io_registry_entry_t entry, const char *plane)
{
  *this = off_24870;
  *(this + 2) = 0;
  v3 = (this + 8);
  *(this + 12) = 1;
  if (IORegistryEntryGetChildIterator(entry, plane, this + 2))
  {
    *v3 = 0;
  }
}

{
  *this = off_24870;
  *(this + 2) = 0;
  v3 = (this + 8);
  *(this + 12) = 1;
  if (IORegistryEntryGetParentIterator(entry, plane, this + 2))
  {
    *v3 = 0;
  }
}

{
  *this = off_24870;
  *(this + 2) = 0;
  v3 = (this + 8);
  *(this + 12) = 1;
  if (IORegistryEntryGetChildIterator(entry, plane, this + 2))
  {
    *v3 = 0;
  }
}

{
  *this = off_24870;
  *(this + 2) = 0;
  v3 = (this + 8);
  *(this + 12) = 1;
  if (IORegistryEntryGetParentIterator(entry, plane, this + 2))
  {
    *v3 = 0;
  }
}

uint64_t BorealisOwl_IOKitObject::CopyParentByClassName(BorealisOwl_IOKitObject *this, const char *a2, const char *plane, const char *a4)
{
  v9 = off_24870;
  v10 = 0;
  v11 = 1;
  if (IORegistryEntryGetParentIterator(this, plane, &v10))
  {
    var1 = 0;
    v10 = 0;
  }

  else if (v10)
  {
    v8.var0 = off_247F8;
    v8.var1 = IOIteratorNext(v10);
    v8.var2 = 0;
    v8.var3.var0 = 0;
    *&v8.var3.var1 = 257;
    *&v8.var4 = 257;
    while (1)
    {
      if (!v8.var1)
      {
        var1 = 0;
        goto LABEL_11;
      }

      if (IOObjectConformsTo(v8.var1, a2))
      {
        break;
      }

      v6 = IOIteratorNext(v10);
      BorealisOwl_IOKitObject::operator=(&v8, v6);
    }

    (*(v8.var0 + 4))(&v8);
    var1 = v8.var1;
LABEL_11:
    BorealisOwl_IOKitObject::~BorealisOwl_IOKitObject(&v8);
  }

  else
  {
    var1 = 0;
  }

  BorealisOwl_IOKitIterator::~BorealisOwl_IOKitIterator(&v9);
  return var1;
}

void sub_5CC8(_Unwind_Exception *a1, BorealisOwl_IOKitObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  BorealisOwl_IOKitObject::~BorealisOwl_IOKitObject(&a10);
  BorealisOwl_IOKitIterator::~BorealisOwl_IOKitIterator((v10 - 32));
  _Unwind_Resume(a1);
}

void BorealisOwl_IOKitObject::OpenConnection(BorealisOwl_IOKitObject *this, uint64_t type, uint64_t a3, unsigned int *p_var2, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  var1 = this->var1;
  if (var1)
  {
    p_var2 = &this->var2;
    if (!this->var2)
    {
      var1 = IOServiceOpen(var1, mach_task_self_, type, p_var2);
      if (var1)
      {
        v10 = var1;
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          sub_18328();
        }

        exception = __cxa_allocate_exception(0x10uLL);
        *exception = off_24B48;
        exception[2] = v10;
      }
    }
  }

  var2 = this->var2;
  sub_11E8(var1, type, a3, p_var2, a5, a6, a7, a8, "OpenConnection");
}

uint64_t BorealisOwl_IOKitObject::SetConnectionNotificationPort(BorealisOwl_IOKitObject *this, uint32_t a2, mach_port_t a3, uintptr_t a4)
{
  result = this->var2;
  if (result)
  {
    result = IOConnectSetNotificationPort(result, a2, a3, a4);
    if (a3)
    {
      if (result)
      {
        v7 = result;
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          sub_18398();
        }

        exception = __cxa_allocate_exception(0x10uLL);
        *exception = off_24B48;
        exception[2] = v7;
      }
    }
  }

  return result;
}

mach_vm_address_t BorealisOwl_IOKitObject::MapMemory(BorealisOwl_IOKitObject *this, uint32_t a2, IOOptionBits options, unsigned int *a4)
{
  *a4 = 0;
  var2 = this->var2;
  if (var2 && this->var5)
  {
    v11 = 0;
    atAddress = 0;
    v7 = IOConnectMapMemory64(var2, a2, mach_task_self_, &atAddress, &v11, options);
    if (v7)
    {
      v9 = v7;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_18408();
      }

      exception = __cxa_allocate_exception(0x10uLL);
      *exception = off_24B48;
      exception[2] = v9;
    }

    else
    {
      result = atAddress;
      if (atAddress)
      {
        *a4 = v11;
        return result;
      }

      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_18478();
      }

      exception = __cxa_allocate_exception(0x10uLL);
      *exception = off_24B48;
      exception[2] = 1852797029;
    }
  }

  return 0;
}

void BorealisOwl_IOKitObject::ReleaseMemory(BorealisOwl_IOKitObject *this, mach_vm_address_t atAddress, uint32_t memoryType)
{
  if (atAddress)
  {
    var2 = this->var2;
    if (var2)
    {
      if (IOConnectUnmapMemory64(var2, memoryType, mach_task_self_, atAddress))
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          sub_184C0();
        }

        __break(1u);
      }
    }
  }
}

uint64_t BorealisOwl_IOKitObject::CallTrap(BorealisOwl_IOKitObject *this, uint32_t a2)
{
  var2 = this->var2;
  if (var2 && this->var5)
  {
    return IOConnectTrap0(var2, a2);
  }

  else
  {
    return 1937010544;
  }
}

uint64_t BorealisOwl_IOKitObject::Retain(BorealisOwl_IOKitObject *this)
{
  result = this->var1;
  if (result)
  {
    return IOObjectRetain(result);
  }

  return result;
}

void BorealisOwl_IOKitObject::Release(BorealisOwl_IOKitObject *this)
{
  var1 = this->var1;
  if (var1)
  {
    IOObjectRelease(var1);
    this->var1 = 0;
  }

  if (this->var3.var1)
  {
    var0 = this->var3.var0;
    if (var0)
    {
      CFRelease(var0);
    }
  }

  this->var3.var0 = 0;
  this->var3.var2 = 1;
}

void BorealisOwl_IOKitIterator::BorealisOwl_IOKitIterator(BorealisOwl_IOKitIterator *this)
{
  *this = off_24870;
  *(this + 2) = 0;
  *(this + 12) = 1;
}

{
  *this = off_24870;
  *(this + 2) = 0;
  *(this + 12) = 1;
}

void BorealisOwl_IOKitIterator::BorealisOwl_IOKitIterator(BorealisOwl_IOKitIterator *this, const BorealisOwl_IOKitIterator *a2)
{
  *this = off_24870;
  v3 = *(a2 + 2);
  *(this + 2) = v3;
  *(this + 12) = *(a2 + 12);
  if (v3)
  {
    IOObjectRetain(v3);
  }
}

{
  *this = off_24870;
  v3 = *(a2 + 2);
  *(this + 2) = v3;
  *(this + 12) = *(a2 + 12);
  if (v3)
  {
    IOObjectRetain(v3);
  }
}

uint64_t BorealisOwl_IOKitIterator::Retain(BorealisOwl_IOKitIterator *this)
{
  result = *(this + 2);
  if (result)
  {
    return IOObjectRetain(result);
  }

  return result;
}

void BorealisOwl_IOKitIterator::BorealisOwl_IOKitIterator(BorealisOwl_IOKitIterator *this, __CFDictionary *a2)
{
  *(this + 2) = 0;
  v2 = (this + 8);
  *this = off_24870;
  *(this + 12) = 1;
  if (IOServiceGetMatchingServices(kIOMainPortDefault, a2, this + 2))
  {
    *v2 = 0;
  }
}

uint64_t BorealisOwl_IOKitIterator::operator=(uint64_t a1, io_object_t object)
{
  if (*(a1 + 12) == 1)
  {
    v4 = *(a1 + 8);
    if (v4)
    {
      IOObjectRelease(v4);
    }
  }

  *(a1 + 8) = object;
  if (object)
  {
    IOObjectRetain(object);
  }

  return a1;
}

uint64_t BorealisOwl_IOKitIterator::Release(uint64_t this)
{
  if (*(this + 12) == 1)
  {
    v1 = this;
    this = *(this + 8);
    if (this)
    {
      this = IOObjectRelease(this);
      *(v1 + 8) = 0;
    }
  }

  return this;
}

uint64_t BorealisOwl_IOKitIterator::operator=(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 12) == 1)
  {
    v4 = *(a1 + 8);
    if (v4)
    {
      IOObjectRelease(v4);
      *(a1 + 8) = 0;
    }
  }

  v5 = *(a2 + 8);
  *(a1 + 8) = v5;
  if (v5)
  {
    IOObjectRetain(v5);
  }

  return a1;
}

void BorealisOwl_IOKitIterator::~BorealisOwl_IOKitIterator(BorealisOwl_IOKitIterator *this)
{
  *this = off_24870;
  if (*(this + 12) == 1)
  {
    v2 = *(this + 2);
    if (v2)
    {
      IOObjectRelease(v2);
      *(this + 2) = 0;
    }
  }
}

{
  BorealisOwl_IOKitIterator::~BorealisOwl_IOKitIterator(this);

  operator delete();
}

uint64_t sub_6504(uint64_t a1)
{
  if (*(a1 + 8) == 1)
  {
    v2 = *a1;
    if (*a1)
    {
      CFRelease(v2);
      *a1 = 0;
    }
  }

  return a1;
}

void sub_6548(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 8u);
}

void CAAudioChannelLayout::CAAudioChannelLayout(CAAudioChannelLayout *this)
{
  *this = sub_65A0(0);
}

{
  *this = sub_65A0(0);
}

_DWORD *sub_65A0(unsigned int a1)
{
  v1 = sub_6D8C(a1, 0x14u);
  v2 = sub_6E00(12, v1);
  v3 = sub_6CF8(48, v2);
  v3[2] = 1;
  v3[3] = v2;
  *v3 = &off_248A8;
  bzero(v3 + 4, v2);
  return v3;
}

void CAAudioChannelLayout::CAAudioChannelLayout(CAAudioChannelLayout *this, AudioChannelLayout *a2, int a3)
{
  if (a2 <= 4)
  {
    switch(a2)
    {
      case 1:
        v8 = 6553601;
        goto LABEL_22;
      case 2:
        v6 = 6619138;
        v7 = 6946818;
        v5 = a3 == 0;
LABEL_19:
        if (v5)
        {
          v8 = v6;
        }

        else
        {
          v8 = v7;
        }

        goto LABEL_22;
      case 4:
        if (a3)
        {
          v8 = 7012356;
        }

        else
        {
          v8 = 7077892;
        }

        goto LABEL_22;
    }

LABEL_15:
    v9 = sub_65A0(a2);
    *this = v9;
    CAAudioChannelLayout::SetAllToUnknown((v9 + 4), a2);
    return;
  }

  if (a2 <= 6)
  {
    v5 = a3 == 0;
    if (a2 == 5)
    {
      v6 = 7143429;
      v7 = 7733253;
    }

    else
    {
      v6 = 7208966;
      v7 = 9109510;
    }

    goto LABEL_19;
  }

  if (a2 == 7)
  {
    v8 = 9175047;
    goto LABEL_22;
  }

  if (a2 != 8)
  {
    goto LABEL_15;
  }

  v8 = 7274504;
LABEL_22:
  v10 = sub_65A0(0);
  v10[4] = v8;
  *this = v10;
}

void CAAudioChannelLayout::CAAudioChannelLayout(CAAudioChannelLayout *this, atomic_uint a2)
{
  *this = 0;
  CAAudioChannelLayout::SetWithTag(this, a2);
}

{
  *this = 0;
  CAAudioChannelLayout::SetWithTag(this, a2);
}

atomic_uint *CAAudioChannelLayout::SetWithTag(atomic_uint **this, atomic_uint a2)
{
  v4 = *this;
  if (v4 && atomic_fetch_add(v4 + 2, 0xFFFFFFFF) == 1)
  {
    (*(*v4 + 16))(v4);
  }

  result = sub_65A0(0);
  result[4] = a2;
  *this = result;
  return result;
}

atomic_uint **CAAudioChannelLayout::operator=(atomic_uint **a1, atomic_uint **a2)
{
  v3 = *a1;
  v4 = *a2;
  if (v3 != *a2)
  {
    if (v3)
    {
      if (atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
      {
        (*(*v3 + 16))(v3);
      }

      v4 = *a2;
    }

    *a1 = v4;
    if (v4)
    {
      atomic_fetch_add(v4 + 2, 1u);
    }
  }

  return a1;
}

void CAAudioChannelLayout::CAAudioChannelLayout(CAAudioChannelLayout *this, unsigned int *a2)
{
  *this = 0;
  CAAudioChannelLayout::operator=(this, a2);
}

{
  *this = 0;
  CAAudioChannelLayout::operator=(this, a2);
}

atomic_uint **CAAudioChannelLayout::operator=(atomic_uint **a1, unsigned int *a2)
{
  v4 = *a1;
  if (v4)
  {
    if (v4 + 4 == a2)
    {
      return a1;
    }

    if (atomic_fetch_add(v4 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v4 + 16))(v4);
    }
  }

  if (a2)
  {
    v5 = sub_6AD4(a2);
  }

  else
  {
    v5 = sub_65A0(0);
  }

  *a1 = v5;
  return a1;
}

void CAAudioChannelLayout::~CAAudioChannelLayout(atomic_uint **this)
{
  v2 = *this;
  if (v2)
  {
    if (atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v2 + 16))(v2);
    }

    *this = 0;
  }
}

uint64_t CAAudioChannelLayout::Set(CAAudioChannelLayout *this, const AudioChannelLayout *a2, unint64_t a3)
{
  v6 = *this;
  if (!v6)
  {
LABEL_5:
    if (a2)
    {
      v7 = sub_6D8C(a2->mNumberChannelDescriptions, 0x14u);
      if (sub_6E00(12, v7) > a3)
      {
        v8 = sub_65A0(0);
        result = 0;
LABEL_11:
        *this = v8;
        return result;
      }

      v10 = sub_6AD4(&a2->mChannelLayoutTag);
    }

    else
    {
      v10 = sub_65A0(0);
    }

    v8 = v10;
    result = 1;
    goto LABEL_11;
  }

  if ((v6 + 16) != a2)
  {
    if (atomic_fetch_add((v6 + 8), 0xFFFFFFFF) == 1)
    {
      (*(*v6 + 16))(v6);
    }

    goto LABEL_5;
  }

  return 1;
}

_DWORD *sub_6AD4(unsigned int *a1)
{
  v2 = sub_6D8C(a1[2], 0x14u);
  v3 = sub_6E00(12, v2);
  v4 = sub_6CF8(48, v3);
  v4[2] = 1;
  v4[3] = v3;
  *v4 = &off_248A8;
  bzero(v4 + 4, v3);
  memcpy(v4 + 4, a1, v3);
  return v4;
}

BOOL CAAudioChannelLayout::operator==(void *a1, void *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*a1 == *a2)
  {
    return 1;
  }

  v4 = v2[4];
  if (v4 == v3[4])
  {
    if (v4)
    {
      if (v4 == 0x10000)
      {
        return v2[5] == v3[5];
      }

      return 1;
    }

    v6 = v2[6];
    if (v6 == v3[6])
    {
      if (v6)
      {
        v7 = v2 + 7;
        v8 = v3 + 7;
        result = 1;
        while (*v7 == *v8)
        {
          if (*v7 == 100)
          {
            v9 = *v7 == *v8 && *(v7 + 1) == *(v8 + 1);
            if (!v9 || v7[4] != v8[4])
            {
              break;
            }
          }

          v8 += 5;
          v7 += 5;
          if (!--v6)
          {
            return result;
          }
        }

        return 0;
      }

      return 1;
    }
  }

  return 0;
}

BOOL CAAudioChannelLayout::operator!=(void *a1, void *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*a1 == *a2)
  {
    return 0;
  }

  v4 = v2[4];
  if (v4 == v3[4])
  {
    if (v4)
    {
      if (v4 == 0x10000)
      {
        return v2[5] != v3[5];
      }

      return 0;
    }

    v6 = v2[6];
    if (v6 == v3[6])
    {
      if (v6)
      {
        v7 = v2 + 7;
        for (i = v3 + 7; *v7 == *i; i += 5)
        {
          if (*v7 == 100)
          {
            v9 = *v7 == *i && *(v7 + 1) == *(i + 1);
            if (!v9 || v7[4] != i[4])
            {
              break;
            }
          }

          result = 0;
          v7 += 5;
          if (!--v6)
          {
            return result;
          }
        }

        return 1;
      }

      return 0;
    }
  }

  return 1;
}

void *sub_6CF8(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  result = malloc_type_malloc(a2 + 16, 0x72B6561FuLL);
  if (v2)
  {
    if (!result)
    {
      exception = __cxa_allocate_exception(8uLL);
      v5 = std::bad_alloc::bad_alloc(exception);
    }
  }

  return result;
}

uint64_t sub_6D60(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

unint64_t sub_6D8C(unsigned int a1, unsigned int a2)
{
  result = a1 * a2;
  if ((result & 0xFFFFFFFF00000000) != 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_6E70(exception, "arithmetic multiplication overflow");
  }

  return result;
}

uint64_t sub_6E00(int a1, int a2)
{
  v2 = __CFADD__(a1, a2);
  result = (a1 + a2);
  if (v2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_6E70(exception, "arithmetic addition overflow");
  }

  return result;
}

std::runtime_error *sub_6E70(std::runtime_error *a1, const char *a2)
{
  result = std::runtime_error::runtime_error(a1, a2);
  return result;
}

__CFDictionary *CACFDictionary::Size(CACFDictionary *this)
{
  result = this->var0;
  if (result)
  {
    return CFDictionaryGetCount(result);
  }

  return result;
}

__CFDictionary *CACFDictionary::GetCFType(CACFDictionary *this, const __CFString *a2, const void **a3)
{
  result = this->var0;
  if (result)
  {
    Value = CFDictionaryGetValue(result, a2);
    *a3 = Value;
    return (Value != 0);
  }

  return result;
}

const __CFDictionary *CACFDictionary::GetSInt32(CACFDictionary *this, const __CFString *a2, int *a3)
{
  result = this->var0;
  if (result)
  {
    result = CFDictionaryGetValue(result, a2);
    if (result)
    {
      v5 = result;
      v6 = CFGetTypeID(result);
      if (v6 == CFNumberGetTypeID())
      {
        CFNumberGetValue(v5, kCFNumberSInt32Type, a3);
        return (&dword_0 + 1);
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

const __CFDictionary *CACFDictionary::GetUInt32(CACFDictionary *this, const __CFString *a2, unsigned int *a3)
{
  result = this->var0;
  if (result)
  {
    result = CFDictionaryGetValue(result, a2);
    if (result)
    {
      v5 = result;
      v6 = CFGetTypeID(result);
      if (v6 == CFNumberGetTypeID())
      {
        CFNumberGetValue(v5, kCFNumberSInt32Type, a3);
        return (&dword_0 + 1);
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

const __CFDictionary *CACFDictionary::GetSInt64(CACFDictionary *this, const __CFString *a2, uint64_t *a3)
{
  result = this->var0;
  if (result)
  {
    result = CFDictionaryGetValue(result, a2);
    if (result)
    {
      v5 = result;
      v6 = CFGetTypeID(result);
      if (v6 == CFNumberGetTypeID())
      {
        CFNumberGetValue(v5, kCFNumberSInt64Type, a3);
        return (&dword_0 + 1);
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

const __CFDictionary *CACFDictionary::GetUInt64(CACFDictionary *this, const __CFString *a2, unint64_t *a3)
{
  result = this->var0;
  if (result)
  {
    result = CFDictionaryGetValue(result, a2);
    if (result)
    {
      v5 = result;
      v6 = CFGetTypeID(result);
      if (v6 == CFNumberGetTypeID())
      {
        CFNumberGetValue(v5, kCFNumberSInt64Type, a3);
        return (&dword_0 + 1);
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

const __CFDictionary *CACFDictionary::GetFloat32FromString(CACFDictionary *this, const __CFString *a2, float *a3)
{
  result = this->var0;
  if (result)
  {
    result = CFDictionaryGetValue(result, a2);
    if (result)
    {
      v5 = result;
      v6 = CFGetTypeID(result);
      if (v6 == CFStringGetTypeID())
      {
        DoubleValue = CFStringGetDoubleValue(v5);
        *a3 = DoubleValue;
        return (&dword_0 + 1);
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

const __CFDictionary *CACFDictionary::GetUInt32FromString(CACFDictionary *this, const __CFString *a2, SInt32 *a3)
{
  result = this->var0;
  if (result)
  {
    result = CFDictionaryGetValue(result, a2);
    if (result)
    {
      v5 = result;
      v6 = CFGetTypeID(result);
      if (v6 == CFStringGetTypeID())
      {
        *a3 = CFStringGetIntValue(v5);
        return (&dword_0 + 1);
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

const __CFDictionary *CACFDictionary::GetFloat32(CACFDictionary *this, const __CFString *a2, float *a3)
{
  result = this->var0;
  if (result)
  {
    result = CFDictionaryGetValue(result, a2);
    if (result)
    {
      v5 = result;
      v6 = CFGetTypeID(result);
      if (v6 == CFNumberGetTypeID())
      {
        CFNumberGetValue(v5, kCFNumberFloat32Type, a3);
        return (&dword_0 + 1);
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

const __CFDictionary *CACFDictionary::GetFloat64(CACFDictionary *this, const __CFString *a2, double *a3)
{
  result = this->var0;
  if (result)
  {
    result = CFDictionaryGetValue(result, a2);
    if (result)
    {
      v5 = result;
      v6 = CFGetTypeID(result);
      if (v6 == CFNumberGetTypeID())
      {
        CFNumberGetValue(v5, kCFNumberFloat64Type, a3);
        return (&dword_0 + 1);
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

const __CFDictionary *CACFDictionary::GetFixed32(CACFDictionary *this, const __CFString *a2, float *a3)
{
  result = this->var0;
  if (result)
  {
    result = CFDictionaryGetValue(result, a2);
    if (result)
    {
      v5 = result;
      v6 = CFGetTypeID(result);
      if (v6 == CFNumberGetTypeID())
      {
        valuePtr = 0;
        CFNumberGetValue(v5, kCFNumberSInt32Type, &valuePtr);
        v7 = 1.0;
        if (valuePtr < 0)
        {
          v7 = -1.0;
        }

        *a3 = v7 * (vcvts_n_f32_u32((valuePtr * v7), 0x10uLL) + (((valuePtr * v7) >> 16) & 0x7FFF));
        return (&dword_0 + 1);
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

const __CFDictionary *CACFDictionary::GetFixed64(CACFDictionary *this, const __CFString *a2, double *a3)
{
  result = this->var0;
  if (result)
  {
    result = CFDictionaryGetValue(result, a2);
    if (result)
    {
      v5 = result;
      v6 = CFGetTypeID(result);
      if (v6 == CFNumberGetTypeID())
      {
        valuePtr = 0;
        CFNumberGetValue(v5, kCFNumberSInt64Type, &valuePtr);
        *a3 = vcvtd_n_f64_u64(valuePtr, 0x20uLL) + (valuePtr >> 32);
        return (&dword_0 + 1);
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

const __CFDictionary *CACFDictionary::Get4CC(CACFDictionary *this, const __CFString *a2, unsigned int *a3)
{
  result = this->var0;
  if (result)
  {
    result = CFDictionaryGetValue(result, a2);
    if (result)
    {
      v5 = result;
      v6 = CFGetTypeID(result);
      if (v6 == CFNumberGetTypeID())
      {
        CFNumberGetValue(v5, kCFNumberSInt32Type, a3);
        return (&dword_0 + 1);
      }

      v7 = CFGetTypeID(v5);
      if (v7 == CFStringGetTypeID() && CFStringGetLength(v5) == 4)
      {
        CFStringGetCString(v5, buffer, 5, 0x600u);
        *a3 = bswap32(*buffer);
        return (&dword_0 + 1);
      }

      return 0;
    }
  }

  return result;
}

const __CFDictionary *CACFDictionary::GetArray(CACFDictionary *this, const __CFString *a2, const __CFArray **a3)
{
  result = this->var0;
  if (result)
  {
    result = CFDictionaryGetValue(result, a2);
    if (result)
    {
      v5 = result;
      v6 = CFGetTypeID(result);
      if (v6 == CFArrayGetTypeID())
      {
        *a3 = v5;
        return (&dword_0 + 1);
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

const __CFDictionary *CACFDictionary::GetDictionary(CACFDictionary *this, const __CFString *a2, const __CFDictionary **a3)
{
  result = this->var0;
  if (result)
  {
    result = CFDictionaryGetValue(result, a2);
    if (result)
    {
      v5 = result;
      v6 = CFGetTypeID(result);
      if (v6 == CFDictionaryGetTypeID())
      {
        *a3 = v5;
        return (&dword_0 + 1);
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

const __CFDictionary *CACFDictionary::GetData(CACFDictionary *this, const __CFString *a2, const __CFData **a3)
{
  result = this->var0;
  if (result)
  {
    result = CFDictionaryGetValue(result, a2);
    if (result)
    {
      v5 = result;
      v6 = CFGetTypeID(result);
      if (v6 == CFDataGetTypeID())
      {
        *a3 = v5;
        return (&dword_0 + 1);
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

const __CFDictionary *CACFDictionary::GetURL(CACFDictionary *this, const __CFString *a2, const __CFURL **a3)
{
  result = this->var0;
  if (result)
  {
    result = CFDictionaryGetValue(result, a2);
    if (result)
    {
      v5 = result;
      v6 = CFGetTypeID(result);
      if (v6 == CFURLGetTypeID())
      {
        *a3 = v5;
        return (&dword_0 + 1);
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

BOOL CACFDictionary::GetCFTypeWithCStringKey(CACFDictionary *this, const char *a2, const void **a3)
{
  if (!this->var0)
  {
    return 0;
  }

  v5 = CFStringCreateWithCString(0, a2, 0x600u);
  v9 = v5;
  v10 = 1;
  if (v5 && this->var0)
  {
    Value = CFDictionaryGetValue(this->var0, v5);
    *a3 = Value;
    v7 = Value != 0;
  }

  else
  {
    v7 = 0;
  }

  sub_1F78(&v9);
  return v7;
}

const __CFDictionary *CACFDictionary::GetCACFString(const __CFDictionary **a1, const void *a2, uint64_t a3)
{
  sub_5534(a3, 0);
  result = *a1;
  if (*a1)
  {
    result = CFDictionaryGetValue(result, a2);
    if (result)
    {
      v7 = result;
      v8 = CFGetTypeID(result);
      result = CFStringGetTypeID();
      if (v8 == result)
      {

        return sub_5534(a3, v7);
      }
    }
  }

  return result;
}

const __CFDictionary *CACFDictionary::GetCACFArray(CACFDictionary *this, const __CFString *key, CFTypeRef *a3)
{
  if (*(a3 + 8) == 1 && *a3)
  {
    CFRelease(*a3);
  }

  *a3 = 0;
  *(a3 + 9) = 0;
  result = this->var0;
  if (this->var0)
  {
    result = CFDictionaryGetValue(result, key);
    if (result)
    {
      v7 = result;
      v8 = CFGetTypeID(result);
      result = CFArrayGetTypeID();
      if (v8 == result)
      {

        return sub_7828(a3, v7);
      }
    }
  }

  return result;
}

uint64_t sub_7828(uint64_t a1, CFTypeRef cf)
{
  v4 = *(a1 + 8);
  if (v4 == 1)
  {
    v5 = *a1;
    if (*a1)
    {
      CFRelease(v5);
      LOBYTE(v4) = *(a1 + 8);
    }

    else
    {
      LOBYTE(v4) = 1;
    }
  }

  *a1 = cf;
  *(a1 + 9) = 0;
  if (cf && (v4 & 1) != 0)
  {
    CFRetain(cf);
  }

  return a1;
}

const __CFDictionary *CACFDictionary::GetCACFDictionary(CACFDictionary *this, const __CFString *key, CACFDictionary *a3)
{
  if (a3->var1 && a3->var0)
  {
    CFRelease(a3->var0);
  }

  a3->var0 = 0;
  a3->var2 = 0;
  result = this->var0;
  if (this->var0)
  {
    result = CFDictionaryGetValue(result, key);
    if (result)
    {
      v7 = result;
      v8 = CFGetTypeID(result);
      result = CFDictionaryGetTypeID();
      if (v8 == result)
      {

        return sub_7828(a3, v7);
      }
    }
  }

  return result;
}

uint64_t CACFDictionary::AddBool(CACFDictionary *this, const __CFString *key, int a3)
{
  v5 = &kCFBooleanTrue;
  if (!a3)
  {
    v5 = &kCFBooleanFalse;
  }

  v6 = *v5;
  v11 = v6;
  v12 = 1;
  if (v6)
  {
    CFRetain(v6);
  }

  if (!this->var2 || ((var0 = this->var0, v6) ? (v8 = var0 == 0) : (v8 = 1), v8))
  {
    v9 = 0;
  }

  else
  {
    CFDictionarySetValue(var0, key, v6);
    v9 = 1;
  }

  sub_8288(&v11);
  return v9;
}

uint64_t CACFDictionary::AddCFType(CACFDictionary *this, const __CFString *a2, const void *a3)
{
  if (!this->var2)
  {
    return 0;
  }

  result = 0;
  if (a3)
  {
    var0 = this->var0;
    if (var0)
    {
      CFDictionarySetValue(var0, a2, a3);
      return 1;
    }
  }

  return result;
}

uint64_t CACFDictionary::AddSInt32(CACFDictionary *this, const __CFString *a2, int a3)
{
  valuePtr = a3;
  v5 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v8 = v5;
  v9 = 1;
  if (this->var2)
  {
    v6 = 0;
    if (v5 && this->var0)
    {
      CFDictionarySetValue(this->var0, a2, v5);
      v6 = 1;
    }
  }

  else
  {
    v6 = 0;
  }

  sub_1870(&v8);
  return v6;
}

void sub_7ACC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1870(va);
  _Unwind_Resume(a1);
}

uint64_t CACFDictionary::AddUInt32(CACFDictionary *this, const __CFString *a2, int a3)
{
  valuePtr = a3;
  v5 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v8 = v5;
  v9 = 1;
  if (this->var2)
  {
    v6 = 0;
    if (v5 && this->var0)
    {
      CFDictionarySetValue(this->var0, a2, v5);
      v6 = 1;
    }
  }

  else
  {
    v6 = 0;
  }

  sub_1870(&v8);
  return v6;
}

void sub_7B74(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1870(va);
  _Unwind_Resume(a1);
}

uint64_t CACFDictionary::AddSInt64(CACFDictionary *this, const __CFString *a2, uint64_t a3)
{
  valuePtr = a3;
  v5 = CFNumberCreate(0, kCFNumberSInt64Type, &valuePtr);
  v8 = v5;
  v9 = 1;
  if (this->var2)
  {
    v6 = 0;
    if (v5 && this->var0)
    {
      CFDictionarySetValue(this->var0, a2, v5);
      v6 = 1;
    }
  }

  else
  {
    v6 = 0;
  }

  sub_1870(&v8);
  return v6;
}

void sub_7C1C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1870(va);
  _Unwind_Resume(a1);
}

uint64_t CACFDictionary::AddUInt64(CACFDictionary *this, const __CFString *a2, uint64_t a3)
{
  valuePtr = a3;
  v5 = CFNumberCreate(0, kCFNumberSInt64Type, &valuePtr);
  v8 = v5;
  v9 = 1;
  if (this->var2)
  {
    v6 = 0;
    if (v5 && this->var0)
    {
      CFDictionarySetValue(this->var0, a2, v5);
      v6 = 1;
    }
  }

  else
  {
    v6 = 0;
  }

  sub_1870(&v8);
  return v6;
}

void sub_7CC4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1870(va);
  _Unwind_Resume(a1);
}

uint64_t CACFDictionary::AddFloat32(CACFDictionary *this, const __CFString *a2, float a3)
{
  valuePtr = a3;
  v5 = CFNumberCreate(0, kCFNumberFloat32Type, &valuePtr);
  v8 = v5;
  v9 = 1;
  if (this->var2)
  {
    v6 = 0;
    if (v5 && this->var0)
    {
      CFDictionarySetValue(this->var0, a2, v5);
      v6 = 1;
    }
  }

  else
  {
    v6 = 0;
  }

  sub_1870(&v8);
  return v6;
}

void sub_7D6C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1870(va);
  _Unwind_Resume(a1);
}

uint64_t CACFDictionary::AddFloat64(CACFDictionary *this, const __CFString *a2, double a3)
{
  valuePtr = a3;
  v5 = CFNumberCreate(0, kCFNumberFloat64Type, &valuePtr);
  v8 = v5;
  v9 = 1;
  if (this->var2)
  {
    v6 = 0;
    if (v5 && this->var0)
    {
      CFDictionarySetValue(this->var0, a2, v5);
      v6 = 1;
    }
  }

  else
  {
    v6 = 0;
  }

  sub_1870(&v8);
  return v6;
}

void sub_7E14(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1870(va);
  _Unwind_Resume(a1);
}

uint64_t CACFDictionary::AddNumber(CACFDictionary *this, const __CFString *a2, const __CFNumber *a3)
{
  if (!this->var2)
  {
    return 0;
  }

  result = 0;
  if (a3)
  {
    var0 = this->var0;
    if (var0)
    {
      CFDictionarySetValue(var0, a2, a3);
      return 1;
    }
  }

  return result;
}

uint64_t CACFDictionary::AddArray(CACFDictionary *this, const __CFString *a2, const __CFArray *a3)
{
  if (!this->var2)
  {
    return 0;
  }

  result = 0;
  if (a3)
  {
    var0 = this->var0;
    if (var0)
    {
      CFDictionarySetValue(var0, a2, a3);
      return 1;
    }
  }

  return result;
}

uint64_t CACFDictionary::AddDictionary(CACFDictionary *this, const __CFString *a2, const __CFDictionary *a3)
{
  if (!this->var2)
  {
    return 0;
  }

  result = 0;
  if (a3)
  {
    var0 = this->var0;
    if (var0)
    {
      CFDictionarySetValue(var0, a2, a3);
      return 1;
    }
  }

  return result;
}

uint64_t CACFDictionary::AddData(CACFDictionary *this, const __CFString *a2, const __CFData *a3)
{
  if (!this->var2)
  {
    return 0;
  }

  result = 0;
  if (a3)
  {
    var0 = this->var0;
    if (var0)
    {
      CFDictionarySetValue(var0, a2, a3);
      return 1;
    }
  }

  return result;
}

uint64_t CACFDictionary::AddURL(CACFDictionary *this, const __CFString *a2, const __CFURL *a3)
{
  if (!this->var2)
  {
    return 0;
  }

  result = 0;
  if (a3)
  {
    var0 = this->var0;
    if (var0)
    {
      CFDictionarySetValue(var0, a2, a3);
      return 1;
    }
  }

  return result;
}

uint64_t CACFDictionary::AddCFTypeWithCStringKey(CACFDictionary *this, const char *a2, const void *a3)
{
  if (!a2)
  {
    return 0;
  }

  v5 = CFStringCreateWithCString(0, a2, 0x600u);
  v8 = v5;
  v9 = 1;
  if (v5 && this->var2)
  {
    v6 = 0;
    if (a3 && this->var0)
    {
      CFDictionarySetValue(this->var0, v5, a3);
      v6 = 1;
    }
  }

  else
  {
    v6 = 0;
  }

  sub_1F78(&v8);
  return v6;
}

uint64_t CACFDictionary::AddCString(CACFDictionary *this, const __CFString *a2, const char *cStr)
{
  if (!cStr)
  {
    return 0;
  }

  v5 = CFStringCreateWithCString(0, cStr, 0x600u);
  v8 = v5;
  v9 = 1;
  if (v5 && this->var2 && this->var0)
  {
    CFDictionarySetValue(this->var0, a2, v5);
    v6 = 1;
  }

  else
  {
    v6 = 0;
  }

  sub_1F78(&v8);
  return v6;
}

void CACFDictionary::PrintToLog(CACFDictionary *this, const __CFString *a2)
{
  Count = CFDictionaryGetCount(this);
  if (Count)
  {
    v5 = Count;
    sub_82C8(keys, Count);
    sub_84A0(values, v5);
    CFDictionaryGetKeysAndValues(this, keys[0], values[0]);
    for (i = 0; i != v5; ++i)
    {
      CACFString::PrintToLog(keys[0][i], a2);
      v7 = CFGetTypeID(values[0][i]);
      if (v7 == CFBooleanGetTypeID())
      {
        CACFBoolean::PrintToLog(values[0][i], (a2 + 1));
      }

      else if (v7 == CFNumberGetTypeID())
      {
        CACFNumber::PrintToLog(values[0][i], (a2 + 1));
      }

      else if (v7 == CFStringGetTypeID())
      {
        CACFString::PrintToLog(values[0][i], (a2 + 1));
      }

      else if (v7 == CFDictionaryGetTypeID())
      {
        CACFDictionary::PrintToLog(values[0][i], (a2 + 1), v8);
      }

      else if (v7 == CFArrayGetTypeID())
      {
        CACFArray::PrintToLog(values[0][i], (a2 + 1));
      }
    }

    if (values[0])
    {
      values[1] = values[0];
      operator delete(values[0]);
    }

    if (keys[0])
    {
      keys[1] = keys[0];
      operator delete(keys[0]);
    }
  }
}

void sub_824C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_8288(uint64_t a1)
{
  if (*(a1 + 8) == 1)
  {
    v2 = *a1;
    if (*a1)
    {
      CFRelease(v2);
    }
  }

  return a1;
}

void *sub_82C8(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_8340(result, a2);
  }

  return result;
}

void sub_8324(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_8340(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    sub_8394(a1, a2);
  }

  sub_837C();
}

void sub_8394(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  sub_846C();
}

void sub_83DC(const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  sub_8438(exception, a1);
}

std::logic_error *sub_8438(std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  return result;
}

void sub_846C()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
}

void *sub_84A0(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_8518(result, a2);
  }

  return result;
}

void sub_84FC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_8518(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    sub_8554(a1, a2);
  }

  sub_837C();
}

void sub_8554(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  sub_846C();
}

void sub_8BA0(uint64_t a1, FILE *a2)
{
  v3 = *(a1 + 32);
  v11 = v3;
  if (a2 && v3)
  {
    [v3 getDiagonsticData];
    if (v14 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    fputs(p_p, a2);
    if (v14 < 0)
    {
      operator delete(__p);
    }
  }

  else
  {
    sub_8C70("DumpSubsystem(%p, %p) bad argument\n", v4, v5, v6, v7, v8, v9, v10, v3);
  }
}

void sub_90B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_B96C(va);
  _Unwind_Resume(a1);
}

void sub_9360(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_B96C(va);
  _Unwind_Resume(a1);
}

void sub_96B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_B96C(va);
  _Unwind_Resume(a1);
}

void sub_9C64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_B96C(va);
  _Unwind_Resume(a1);
}

void sub_A468(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 40);
  v3 = (*(*v2 + 16))(v2);
  ControlValue = AOPAudioDeviceHWManager::HW_VoiceTriggerGetControlValue(*(*(a1 + 32) + 24), 0, v4, v5, v6, v7, v8, v9);
  if (ControlValue == 1)
  {
    AOPAudioDeviceHWManager::HW_VoiceTriggerSetControlValue(*(*(a1 + 32) + 24), 0, 0);
    sub_1224("Device::setProperty(kAOPAudioDriverVoiceTriggerConfiguration) stopping voice trigger to set model\n", v17, v18, v19, v20, v21, v22, v23, v46);
  }

  AOPAudioDeviceHWManager::HW_SetVoiceTriggerConfiguration(*(*(a1 + 32) + 24), *(a1 + 40), v10, v11, v12, v13, v14, v15);
  CFRelease(*(a1 + 40));
  if (ControlValue == 1)
  {
    AOPAudioDeviceHWManager::HW_VoiceTriggerSetControlValue(*(*(a1 + 32) + 24), 0, 1u);
    sub_1224("Device::setProperty(kAOPAudioDriverVoiceTriggerConfiguration) restarting voice trigger\n", v31, v32, v33, v34, v35, v36, v37, v46);
  }

  AOPAudioDeviceHWManager::HW_UpdateRingBufferDescription(*(*(a1 + 32) + 24), v24, v25, v26, v27, v28, v29, v30);
  [*(a1 + 32) updateStreamDescription];
  [*(a1 + 32) notifyDevicePropertiesChanged];
  [*(*(a1 + 32) + 8) notifyStreamPropertiesChanged];
  sub_1FF8("Device::setProperty(kAOPAudioDriverVoiceTriggerConfiguration) model updated\n", v38, v39, v40, v41, v42, v43, v44, v46);
  v48 = 0;
  v47 = *"ctvabolg";
  v45 = [*(a1 + 32) plugin];
  [v45 changedProperty:&v47 forObject:*(a1 + 32)];

  if (v3)
  {
    (*(*v2 + 24))(v2);
  }
}

void sub_A62C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  if (a2)
  {
    sub_47B4(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_A75C(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 40);
  v10 = (*(*v2 + 16))(v2);
  v11 = *(a1 + 32);
  if (*(v11 + 76))
  {
    sub_1FF8("Device::setProperty(kAOPAudioDriverEnabledChannelMask) HW_StopIO \n", v3, v4, v5, v6, v7, v8, v9, v28);
    AOPAudioDeviceHWManager::HW_StopIO(*(*(a1 + 32) + 24));
    v11 = *(a1 + 32);
  }

  if (*(v11 + 72))
  {
    sub_1FF8("Device::setProperty(kAOPAudioDriverEnabledChannelMask) HW_disableListening \n", v3, v4, v5, v6, v7, v8, v9, v28);
    AOPAudioDeviceHWManager::HW_DisableListening(*(*(a1 + 32) + 24));
    v11 = *(a1 + 32);
  }

  AOPAudioDeviceHWManager::HW_AudioSetControlValue(*(v11 + 24), 0, *(a1 + 40));
  sub_1FF8("Device::setProperty(kAOPAudioDriverEnabledChannelMask) new value: %d\n", v12, v13, v14, v15, v16, v17, v18, *(a1 + 40));
  v26 = *(a1 + 32);
  if (*(v26 + 76))
  {
    sub_1FF8("Device::setProperty(kAOPAudioDriverEnabledChannelMask) HW_StartIO \n", v19, v20, v21, v22, v23, v24, v25, v29);
    AOPAudioDeviceHWManager::HW_StartIO(*(*(a1 + 32) + 24));
    v26 = *(a1 + 32);
  }

  if (*(v26 + 72) == 1)
  {
    sub_1FF8("Device::setProperty(kAOPAudioDriverEnabledChannelMask) HW_enableListening\n", v19, v20, v21, v22, v23, v24, v25, v29);
    AOPAudioDeviceHWManager::HW_EnableListening(*(*(a1 + 32) + 24));
    v26 = *(a1 + 32);
  }

  AOPAudioDeviceHWManager::HW_UpdateRingBufferDescription(*(v26 + 24), v19, v20, v21, v22, v23, v24, v25);
  [*(a1 + 32) updateStreamDescription];
  [*(a1 + 32) notifyDevicePropertiesChanged];
  [*(*(a1 + 32) + 8) notifyStreamPropertiesChanged];
  v31 = 0;
  v30 = *"meoabolg";
  v27 = [*(a1 + 32) plugin];
  [v27 changedProperty:&v30 forObject:*(a1 + 32)];

  if (v10)
  {
    (*(*v2 + 24))(v2);
  }
}

void sub_A974(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  if (a2)
  {
    sub_47B4(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_AEF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_1FB8(va);
  _Unwind_Resume(a1);
}

void sub_B064(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_B96C(va);
  _Unwind_Resume(a1);
}

void sub_B60C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  std::ios::~ios();
  _Unwind_Resume(a1);
}

void (__cdecl ***sub_B67C(void (__cdecl ***a1)(std::ostringstream *__hidden this)))(std::ostringstream *__hidden this)
{
  a1[20] = 0;
  *a1 = v3;
  *(*(v3 - 3) + a1) = v2;
  v4 = (*(*a1 - 3) + a1);
  std::ios_base::init(v4, a1 + 1);
  v4[1].__vftable = 0;
  v4[1].__fmtflags_ = -1;
  sub_BF30((a1 + 1), 16);
  return a1;
}

void sub_B7C0(_Unwind_Exception *a1)
{
  std::ostream::~ostream();
  std::ios::~ios();
  _Unwind_Resume(a1);
}

void *operator<<(void *a1, unsigned int *a2)
{
  sub_C0F4(a1, "  mSizeOfAuxiliaryIOStatus:   ", 30);
  v4 = *a2;
  v5 = std::ostream::operator<<();
  sub_C0F4(v5, "\n", 1);
  sub_C0F4(a1, "  mRealtimeAvailablePastData: ", 30);
  v6 = *(a2 + 1);
  v7 = std::ostream::operator<<();
  sub_C0F4(v7, "\n", 1);
  return a1;
}

_BYTE *sub_B96C(_BYTE *a1)
{
  if (a1[8] == 1)
  {
    v2 = *a1;
    (*(**a1 + 24))();
  }

  return a1;
}

void sub_B9C8()
{
  exception = __cxa_allocate_exception(8uLL);
}

uint64_t sub_BA14(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + *(v3 - 24)) = a2[3];
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  std::locale::~locale((a1 + 16));

  return std::ostream::~ostream();
}

uint64_t sub_BB9C(uint64_t a1, unsigned int *a2)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = off_24A38;
  AOPAudioDeviceHWManager::AOPAudioDeviceHWManager((a1 + 24), *a2);
  return a1;
}

void sub_BC1C(std::__shared_weak_count *a1)
{
  a1->__vftable = off_24A38;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_BC98(std::__shared_weak_count *a1)
{
  if (!atomic_fetch_add(&a1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (a1->__on_zero_shared)(a1);

    std::__shared_weak_count::__release_weak(a1);
  }
}

void *sub_BD70(void *a1, const char *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_24A70;
  CADeprecated::CAMutex::CAMutex((a1 + 3), a2);
  return a1;
}

void sub_BDEC(std::__shared_weak_count *a1)
{
  a1->__vftable = off_24A70;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void *sub_BED4(void *a1, const char *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_24A70;
  CADeprecated::CAMutex::CAMutex((a1 + 3), a2);
  return a1;
}

uint64_t sub_BF30(uint64_t a1, int a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = a2;
  sub_BFEC(a1);
  return a1;
}

void sub_BFC4(_Unwind_Exception *a1)
{
  if (*(v1 + 87) < 0)
  {
    operator delete(*v3);
  }

  *v1 = v2;
  std::locale::~locale((v1 + 8));
  _Unwind_Resume(a1);
}

void sub_BFEC(uint64_t a1)
{
  *(a1 + 88) = 0;
  v2 = (a1 + 64);
  v3 = *(a1 + 87);
  if (v3 < 0)
  {
    v4 = *(a1 + 64);
    v5 = *(a1 + 72);
  }

  else
  {
    v4 = v2;
    v5 = *(a1 + 87);
  }

  v6 = *(a1 + 96);
  if ((v6 & 8) != 0)
  {
    *(a1 + 88) = v4 + v5;
    *(a1 + 16) = v4;
    *(a1 + 24) = v4;
    *(a1 + 32) = v4 + v5;
  }

  if ((v6 & 0x10) != 0)
  {
    *(a1 + 88) = v4 + v5;
    if ((v3 & 0x80000000) != 0)
    {
      v7 = (*(a1 + 80) & 0x7FFFFFFFFFFFFFFFLL) - 1;
    }

    else
    {
      v7 = 22;
    }

    std::string::resize(v2, v7, 0);
    v8 = *(a1 + 87);
    if (v8 < 0)
    {
      v8 = *(a1 + 72);
    }

    *(a1 + 40) = v4;
    *(a1 + 48) = v4;
    *(a1 + 56) = v4 + v8;
    if ((*(a1 + 96) & 3) != 0)
    {
      if (v5 >> 31)
      {
        v9 = ((v5 - 0x80000000) * 0x200000005uLL) >> 64;
        v10 = 0x7FFFFFFF * ((v9 + ((v5 - 0x80000000 - v9) >> 1)) >> 30);
        v4 = (v4 + v10 + 0x7FFFFFFF);
        v5 = v5 - v10 - 0x7FFFFFFF;
        *(a1 + 48) = v4;
      }

      if (v5)
      {
        *(a1 + 48) = v4 + v5;
      }
    }
  }
}

void *sub_C0F4(void *a1, uint64_t a2, uint64_t a3)
{
  std::ostream::sentry::sentry();
  if (v13 == 1)
  {
    v6 = a1 + *(*a1 - 24);
    v7 = *(v6 + 40);
    v8 = *(v6 + 8);
    v9 = *(v6 + 144);
    if (v9 == -1)
    {
      std::ios_base::getloc((a1 + *(*a1 - 24)));
      v10 = std::locale::use_facet(&v14, &std::ctype<char>::id);
      v9 = (v10->__vftable[2].~facet_0)(v10, 32);
      std::locale::~locale(&v14);
      *(v6 + 144) = v9;
    }

    if ((v8 & 0xB0) == 0x20)
    {
      v11 = a2 + a3;
    }

    else
    {
      v11 = a2;
    }

    if (!sub_C29C(v7, a2, v11, a2 + a3, v6, v9))
    {
      std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 5);
    }
  }

  std::ostream::sentry::~sentry();
  return a1;
}

void sub_C234(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, std::locale a12)
{
  std::ostream::sentry::~sentry();
  __cxa_begin_catch(a1);
  std::ios_base::__set_badbit_and_consider_rethrow((v12 + *(*v12 - 24)));
  __cxa_end_catch();
  JUMPOUT(0xC214);
}

uint64_t sub_C29C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int __c)
{
  v6 = a1;
  if (a1)
  {
    v11 = *(a5 + 24);
    if (v11 <= a4 - a2)
    {
      v12 = 0;
    }

    else
    {
      v12 = v11 - (a4 - a2);
    }

    if (a3 - a2 >= 1 && (*(*a1 + 96))(a1) != a3 - a2)
    {
      return 0;
    }

    if (v12 >= 1)
    {
      if (v12 >= 0x7FFFFFFFFFFFFFF8)
      {
        sub_C484();
      }

      if (v12 >= 0x17)
      {
        operator new();
      }

      v18 = v12;
      memset(&__b, __c, v12);
      *(&__b + v12) = 0;
      if (v18 >= 0)
      {
        p_b = &__b;
      }

      else
      {
        p_b = __b;
      }

      v14 = (*(*v6 + 96))(v6, p_b, v12);
      if (v18 < 0)
      {
        operator delete(__b);
      }

      if (v14 != v12)
      {
        return 0;
      }
    }

    v15 = a4 - a3;
    if (v15 < 1 || (*(*v6 + 96))(v6, a3, v15) == v15)
    {
      *(a5 + 24) = 0;
    }

    else
    {
      return 0;
    }
  }

  return v6;
}

void sub_C468(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_C49C(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

void sub_C60C(_Unwind_Exception *a1)
{
  v6 = v4;

  _Unwind_Resume(a1);
}

void sub_CDD4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);

  std::ios::~ios();
  _Unwind_Resume(a1);
}

const __CFString *CACFString::GetStringByteLength(const __CFString *this, const __CFString *a2)
{
  usedBufLen = 0;
  if (this)
  {
    v2 = a2;
    v3 = this;
    v5.length = CFStringGetLength(this);
    v5.location = 0;
    CFStringGetBytes(v3, v5, v2, 0, 0, 0, 0x7FFFFFFFLL, &usedBufLen);
    return usedBufLen;
  }

  return this;
}

const __CFString *CACFString::GetCString(const __CFString *theString, __CFString *a2, char *a3, unsigned int *a4)
{
  if (*a3)
  {
    v6 = theString;
    if (theString)
    {
      v7 = a4;
      usedBufLen = 0;
      v11.length = CFStringGetLength(theString);
      v11.location = 0;
      theString = CFStringGetBytes(v6, v11, v7, 0, 0, a2, (*a3 - 1), &usedBufLen);
      v8 = usedBufLen;
      *(&a2->isa + usedBufLen) = 0;
      v9 = v8 + 1;
    }

    else
    {
      LOBYTE(a2->isa) = 0;
      v9 = 1;
    }

    *a3 = v9;
  }

  return theString;
}

void CACFString::GetUnicodeString(CFStringRef theString, __CFString *a2, unsigned __int16 *a3, unsigned int *a4)
{
  if (*a3)
  {
    if (theString)
    {
      Length = CFStringGetLength(theString);
      if (*a3 >= Length)
      {
        v8 = Length;
      }

      else
      {
        v8 = *a3;
      }

      v9.location = 0;
      v9.length = v8;
      CFStringGetCharacters(theString, v9, a2);
    }

    else
    {
      LODWORD(v8) = 0;
      LOWORD(a2->isa) = 0;
    }

    *a3 = v8;
  }
}

void CACFString::PrintToLog(const __CFString *this, const __CFString *a2)
{
  LODWORD(v2) = a2;
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  *buffer = 0u;
  v9 = 0u;
  memset(__b, 0, sizeof(__b));
  if (CFStringGetCString(this, buffer, 512, 0x600u))
  {
    if (v2)
    {
      v2 = v2;
      memset(__b, 9, v2);
    }

    else
    {
      v2 = 0;
    }

    *(__b + v2) = 0;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v3 = 136315394;
      v4 = __b;
      v5 = 2080;
      v6 = buffer;
      _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, " %s%s", &v3, 0x16u);
    }
  }
}

void CACFLocalMessagePort::CACFLocalMessagePort(CACFLocalMessagePort *this, const __CFString *a2, CFDataRef (__cdecl *a3)(CFMessagePortRef, SInt32, CFDataRef, void *), void (__cdecl *a4)(CFMessagePortRef, void *), void *a5)
{
  *this = off_24AA8;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  context.version = 0;
  context.info = a5;
  memset(&context.retain, 0, 24);
  v7 = CFMessagePortCreateLocal(0, a2, a3, &context, 0);
  *(this + 1) = v7;
  if (a4)
  {
    if (v7)
    {
      CFMessagePortSetInvalidationCallBack(v7, a4);
    }
  }
}

void CACFLocalMessagePort::~CACFLocalMessagePort(CACFLocalMessagePort *this)
{
  *this = off_24AA8;
  v2 = *(this + 2);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(this + 1);
  if (v3)
  {
    CFMessagePortInvalidate(v3);
    CFRelease(*(this + 1));
  }
}

{
  CACFLocalMessagePort::~CACFLocalMessagePort(this);

  operator delete();
}

void CACFLocalMessagePort::GetRunLoopSource(CACFLocalMessagePort *this)
{
  if (*(this + 3))
  {
    v1 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v1)
    {
      sub_185E4(v1, v2, v3, v4, v5, v6, v7, v8);
    }

    __break(1u);
  }

  else if (!*(this + 2))
  {
    *(this + 2) = CFMessagePortCreateRunLoopSource(0, *(this + 1), 0);
  }
}

void CACFLocalMessagePort::SetDispatchQueue(CACFLocalMessagePort *this, NSObject *a2)
{
  if (*(this + 2))
  {
    v4 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v4)
    {
      sub_185E4(v4, v5, v6, v7, v8, v9, v10, v11);
    }

    __break(1u);
  }

  else
  {
    *(this + 3) = a2;
    v3 = *(this + 1);

    CFMessagePortSetDispatchQueue(v3, a2);
  }
}

void CACFRemoteMessagePort::CACFRemoteMessagePort(CACFRemoteMessagePort *this, const __CFString *a2, void (__cdecl *a3)(CFMessagePortRef, void *))
{
  *this = off_24AC8;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  Remote = CFMessagePortCreateRemote(0, a2);
  *(this + 1) = Remote;
  if (a3)
  {
    if (Remote)
    {
      CFMessagePortSetInvalidationCallBack(Remote, a3);
    }
  }
}

void CACFRemoteMessagePort::~CACFRemoteMessagePort(CACFRemoteMessagePort *this)
{
  *this = off_24AC8;
  v2 = *(this + 2);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(this + 1);
  if (v3)
  {
    CFRelease(v3);
  }
}

{
  CACFRemoteMessagePort::~CACFRemoteMessagePort(this);

  operator delete();
}

void CACFRemoteMessagePort::GetRunLoopSource(CACFRemoteMessagePort *this)
{
  if (*(this + 3))
  {
    v1 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v1)
    {
      sub_18620(v1, v2, v3, v4, v5, v6, v7, v8);
    }

    __break(1u);
  }

  else if (!*(this + 2))
  {
    *(this + 2) = CFMessagePortCreateRunLoopSource(0, *(this + 1), 0);
  }
}

void CACFRemoteMessagePort::SetDispatchQueue(CACFRemoteMessagePort *this, NSObject *a2)
{
  if (*(this + 2))
  {
    v4 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v4)
    {
      sub_18620(v4, v5, v6, v7, v8, v9, v10, v11);
    }

    __break(1u);
  }

  else
  {
    *(this + 3) = a2;
    v3 = *(this + 1);

    CFMessagePortSetDispatchQueue(v3, a2);
  }
}

CADeprecated::CAMutex *CADeprecated::CAMutex::CAMutex(CADeprecated::CAMutex *this, const char *a2)
{
  *this = off_24AE8;
  *(this + 1) = a2;
  *(this + 2) = 0;
  v3 = pthread_mutex_init((this + 24), 0);
  if (v3)
  {
    v5 = v3;
    v6 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v6)
    {
      sub_1865C(v6, v7, v8, v9, v10, v11, v12, v13);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_24B48;
    exception[2] = v5;
  }

  return this;
}

void CADeprecated::CAMutex::~CAMutex(CADeprecated::CAMutex *this)
{
  *this = off_24AE8;
  pthread_mutex_destroy((this + 24));
}

{
  CADeprecated::CAMutex::~CAMutex(this);

  operator delete();
}

uint64_t CADeprecated::CAMutex::Try(CADeprecated::CAMutex *this, BOOL *a2)
{
  *a2 = 0;
  v4 = pthread_self();
  if (pthread_equal(v4, atomic_load_explicit(this + 2, memory_order_acquire)))
  {
    v5 = 0;
  }

  else
  {
    v6 = pthread_mutex_trylock((this + 24));
    if (v6 == 16)
    {
      v5 = 0;
      result = 0;
      goto LABEL_7;
    }

    if (v6)
    {
      v10[0] = HIBYTE(v6);
      v10[1] = BYTE2(v6);
      v10[2] = BYTE1(v6);
      v8 = v6;
      v10[3] = v6;
      v10[4] = 0;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_18710(v10, v8);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      *exception = off_24B48;
      exception[2] = v8;
    }

    atomic_store(v4, this + 2);
    v5 = 1;
  }

  result = 1;
LABEL_7:
  *a2 = v5;
  return result;
}

void CADeprecated::CAMutex::Unlocker::Unlocker(CADeprecated::CAMutex::Unlocker *this, CADeprecated::CAMutex *a2)
{
  *this = a2;
  *(this + 8) = 0;
  if ((*(*a2 + 48))(a2))
  {
    (*(**this + 24))();
    *(this + 8) = 1;
  }

  else
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1879C(v3, v4, v5, v6, v7, v8, v9, v10);
    }

    __break(1u);
  }
}

void CADeprecated::CAMutex::Unlocker::~Unlocker(CADeprecated::CAMutex::Unlocker *this)
{
  if (*(this + 8) == 1)
  {
    v2 = *this;
    (*(**this + 16))();
  }
}

float CACFNumber::GetFixed32(const __CFNumber **this)
{
  valuePtr = 0;
  v1 = *this;
  if (v1)
  {
    CFNumberGetValue(v1, kCFNumberSInt32Type, &valuePtr);
    v2 = valuePtr;
    v3 = 1.0;
    if (valuePtr < 0)
    {
      v3 = -1.0;
    }
  }

  else
  {
    v2 = 0;
    v3 = 1.0;
  }

  return v3 * (vcvts_n_f32_u32((v2 * v3), 0x10uLL) + (((v2 * v3) >> 16) & 0x7FFF));
}

double CACFNumber::GetFixed64(const __CFNumber **this)
{
  valuePtr = 0;
  v1 = *this;
  if (v1)
  {
    CFNumberGetValue(v1, kCFNumberSInt64Type, &valuePtr);
    v2 = valuePtr;
    v3 = 1.0;
    if (valuePtr < 0)
    {
      v3 = -1.0;
    }
  }

  else
  {
    v2 = 0;
    v3 = 1.0;
  }

  return v3 * (vcvtd_n_f64_u64(v2 * v3, 0x20uLL) + (((v2 * v3) >> 32) & 0x7FFFFFFF));
}

void CACFNumber::PrintToLog(CACFNumber *this, const __CFNumber *a2)
{
  LODWORD(v2) = a2;
  Type = CFNumberGetType(this);
  if (v2)
  {
    v2 = v2;
    memset(__b, 9, v2);
  }

  else
  {
    v2 = 0;
  }

  __b[v2] = 0;
  if (Type > kCFNumberCharType)
  {
    if (Type > kCFNumberLongLongType)
    {
      if (Type == kCFNumberFloatType)
      {
        goto LABEL_26;
      }

      if (Type == kCFNumberDoubleType)
      {
        goto LABEL_30;
      }

      if (Type != kCFNumberCFIndexType)
      {
        goto LABEL_35;
      }

      valuePtr = 0.0;
      CFNumberGetValue(this, kCFNumberCFIndexType, &valuePtr);
      if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        return;
      }
    }

    else
    {
      if (Type == kCFNumberShortType)
      {
        goto LABEL_28;
      }

      if (Type != kCFNumberLongType)
      {
        if (Type == kCFNumberLongLongType)
        {
          valuePtr = 0.0;
          CFNumberGetValue(this, kCFNumberLongLongType, &valuePtr);
          if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
          {
            return;
          }

          goto LABEL_10;
        }

        goto LABEL_35;
      }

      valuePtr = 0.0;
      CFNumberGetValue(this, kCFNumberLongType, &valuePtr);
      if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        return;
      }
    }

    *buf = 136315394;
    v9 = __b;
    v10 = 2048;
    v11 = valuePtr;
    v5 = " %s%li";
    goto LABEL_34;
  }

  if (Type > kCFNumberSInt64Type)
  {
    if (Type != kCFNumberFloat32Type)
    {
      if (Type != kCFNumberFloat64Type)
      {
        goto LABEL_19;
      }

LABEL_30:
      valuePtr = 0.0;
      CFNumberGetValue(this, Type, &valuePtr);
      if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

      *buf = 136315394;
      v9 = __b;
      v10 = 2048;
      v11 = valuePtr;
      v5 = " %s%f";
      goto LABEL_34;
    }

LABEL_26:
    LODWORD(valuePtr) = 0;
    CFNumberGetValue(this, Type, &valuePtr);
    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    *buf = 136315394;
    v9 = __b;
    v10 = 2048;
    v11 = *&valuePtr;
    v5 = " %s%f";
    goto LABEL_34;
  }

  if (Type == kCFNumberSInt8Type)
  {
LABEL_19:
    LOBYTE(valuePtr) = 0;
    CFNumberGetValue(this, Type, &valuePtr);
    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    *buf = 136315394;
    v9 = __b;
    v10 = 1024;
    LODWORD(v11) = SLOBYTE(valuePtr);
    v5 = " %s%i";
LABEL_37:
    v6 = 18;
    goto LABEL_38;
  }

  if (Type == kCFNumberSInt16Type)
  {
LABEL_28:
    LOWORD(valuePtr) = 0;
    CFNumberGetValue(this, Type, &valuePtr);
    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    *buf = 136315394;
    v9 = __b;
    v10 = 1024;
    LODWORD(v11) = SLOWORD(valuePtr);
    v5 = " %s%i";
    goto LABEL_37;
  }

  if (Type != kCFNumberSInt64Type)
  {
LABEL_35:
    LODWORD(valuePtr) = 0;
    CFNumberGetValue(this, Type, &valuePtr);
    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    *buf = 136315394;
    v9 = __b;
    v10 = 1024;
    LODWORD(v11) = LODWORD(valuePtr);
    v5 = " %s%i";
    goto LABEL_37;
  }

  valuePtr = 0.0;
  CFNumberGetValue(this, kCFNumberSInt64Type, &valuePtr);
  if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    return;
  }

LABEL_10:
  *buf = 136315394;
  v9 = __b;
  v10 = 2048;
  v11 = valuePtr;
  v5 = " %s%lli";
LABEL_34:
  v6 = 22;
LABEL_38:
  _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, v5, buf, v6);
}

void CACFBoolean::PrintToLog(CACFBoolean *this, const __CFBoolean *a2)
{
  LODWORD(v2) = a2;
  Value = CFBooleanGetValue(this);
  if (v2)
  {
    v2 = v2;
    memset(__b, 9, v2);
  }

  else
  {
    v2 = 0;
  }

  __b[v2] = 0;
  v4 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT);
  if (Value)
  {
    if (!v4)
    {
      return;
    }

    v6 = 136315138;
    v7 = __b;
    v5 = " %strue";
  }

  else
  {
    if (!v4)
    {
      return;
    }

    v6 = 136315138;
    v7 = __b;
    v5 = " %sfalse";
  }

  _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, v5, &v6, 0xCu);
}

void virtual thunk toCAException::~CAException(CAException *this)
{
  std::exception::~exception((this + *(*this - 24)));
}

{
  std::exception::~exception((this + *(*this - 24)));

  operator delete();
}

void CAException::~CAException(std::exception *this)
{
  std::exception::~exception(this);

  operator delete();
}

void CAXException::~CAXException(std::exception *this)
{
  std::exception::~exception(this);

  operator delete();
}

CFPropertyListRef CACFPreferences::CopyValue(const __CFString *this, const __CFString *a2, int a3)
{
  v4 = a2;
  CACFPreferences::Synchronize(a2, a3, 0);
  v6 = &kCFPreferencesCurrentUser;
  if (!v4)
  {
    v6 = &kCFPreferencesAnyUser;
  }

  v7 = *v6;
  v8 = &kCFPreferencesCurrentHost;
  if (!a3)
  {
    v8 = &kCFPreferencesAnyHost;
  }

  v9 = *v8;

  return CFPreferencesCopyValue(this, kCFPreferencesAnyApplication, v7, v9);
}

uint64_t CACFPreferences::Synchronize(uint64_t this, int a2, char a3)
{
  v4 = this;
  v5 = this | a2;
  if (a3)
  {
    v6 = &kCFPreferencesCurrentUser;
    if (!this)
    {
      v6 = &kCFPreferencesAnyUser;
    }

    v7 = *v6;
    v8 = &kCFPreferencesCurrentHost;
    if (!a2)
    {
      v8 = &kCFPreferencesAnyHost;
    }

    this = CFPreferencesSynchronize(kCFPreferencesAnyApplication, v7, *v8);
    if (v5)
    {
      goto LABEL_31;
    }

LABEL_19:
    v12 = &CACFPreferences::sAnyUserAnyHostPrefsOutOfDate;
LABEL_39:
    *v12 = 0;
    return this;
  }

  if (!v5)
  {
    if ((CACFPreferences::sAnyUserAnyHostPrefsOutOfDate & 1) == 0)
    {
      return this;
    }

    v9 = &kCFPreferencesCurrentUser;
    if (!this)
    {
      v9 = &kCFPreferencesAnyUser;
    }

    v10 = *v9;
    v11 = &kCFPreferencesCurrentHost;
    if (!a2)
    {
      v11 = &kCFPreferencesAnyHost;
    }

    this = CFPreferencesSynchronize(kCFPreferencesAnyApplication, v10, *v11);
    goto LABEL_19;
  }

  if (((a2 ^ 1) & 1) == 0 && (this & 1) == 0)
  {
    if ((CACFPreferences::sAnyUserCurrentHostPrefsOutOfDate & 1) == 0)
    {
      return this;
    }

LABEL_26:
    v13 = &kCFPreferencesCurrentUser;
    if (!this)
    {
      v13 = &kCFPreferencesAnyUser;
    }

    v14 = *v13;
    v15 = &kCFPreferencesCurrentHost;
    if (!a2)
    {
      v15 = &kCFPreferencesAnyHost;
    }

    this = CFPreferencesSynchronize(kCFPreferencesAnyApplication, v14, *v15);
LABEL_31:
    if (((a2 ^ 1) & 1) != 0 || v4)
    {
      if (((v4 ^ 1) & 1) != 0 || a2)
      {
        if ((v4 ^ 1 | a2 ^ 1))
        {
          return this;
        }

        v12 = &CACFPreferences::sCurrentUserCurrentHostPrefsOutOfDate;
      }

      else
      {
        v12 = &CACFPreferences::sCurrentUserAnyHostPrefsOutOfDate;
      }
    }

    else
    {
      v12 = &CACFPreferences::sAnyUserCurrentHostPrefsOutOfDate;
    }

    goto LABEL_39;
  }

  if ((this ^ 1) & 1) != 0 || (a2)
  {
    if ((this ^ 1 | a2 ^ 1) & 1) == 0 && (CACFPreferences::sCurrentUserCurrentHostPrefsOutOfDate)
    {
      goto LABEL_26;
    }
  }

  else if (CACFPreferences::sCurrentUserAnyHostPrefsOutOfDate)
  {
    goto LABEL_26;
  }

  return this;
}

const void *CACFPreferences::CopyStringValue(const __CFString *this, const __CFString *a2, int a3)
{
  v3 = CACFPreferences::CopyValue(this, a2, a3);
  v4 = v3;
  if (v3)
  {
    v5 = CFGetTypeID(v3);
    if (v5 != CFStringGetTypeID())
    {
      CFRelease(v4);
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        *v7 = 0;
        _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, " CACFPreferences::CopyStringValue: not a CFString", v7, 2u);
      }

      return 0;
    }
  }

  return v4;
}

const void *CACFPreferences::CopyNumberValue(const __CFString *this, const __CFString *a2, int a3)
{
  v3 = CACFPreferences::CopyValue(this, a2, a3);
  v4 = v3;
  if (v3)
  {
    v5 = CFGetTypeID(v3);
    if (v5 != CFNumberGetTypeID())
    {
      CFRelease(v4);
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        *v7 = 0;
        _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, " CACFPreferences::CopyNumberValue: not a CFNumber", v7, 2u);
      }

      return 0;
    }
  }

  return v4;
}

const void *CACFPreferences::CopyArrayValue(const __CFString *this, const __CFString *a2, int a3)
{
  v3 = CACFPreferences::CopyValue(this, a2, a3);
  v4 = v3;
  if (v3)
  {
    v5 = CFGetTypeID(v3);
    if (v5 != CFArrayGetTypeID())
    {
      CFRelease(v4);
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        *v7 = 0;
        _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, " CACFPreferences::CopyArrayValue: not a CFArray", v7, 2u);
      }

      return 0;
    }
  }

  return v4;
}

const void *CACFPreferences::CopyDictionaryValue(const __CFString *this, const __CFString *a2, int a3)
{
  v3 = CACFPreferences::CopyValue(this, a2, a3);
  v4 = v3;
  if (v3)
  {
    v5 = CFGetTypeID(v3);
    if (v5 != CFDictionaryGetTypeID())
    {
      CFRelease(v4);
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        *v7 = 0;
        _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, " CACFPreferences::CopyDictionaryValue: not a CFDictionary", v7, 2u);
      }

      return 0;
    }
  }

  return v4;
}

CFDictionaryRef CACFPreferences::CopyMultipleValues(CACFPreferences *this, const __CFArray *a2, int a3)
{
  v4 = a2;
  CACFPreferences::Synchronize(a2, a3, 0);
  v6 = &kCFPreferencesCurrentUser;
  if (!v4)
  {
    v6 = &kCFPreferencesAnyUser;
  }

  v7 = *v6;
  v8 = &kCFPreferencesCurrentHost;
  if (!a3)
  {
    v8 = &kCFPreferencesAnyHost;
  }

  v9 = *v8;

  return CFPreferencesCopyMultiple(this, kCFPreferencesAnyApplication, v7, v9);
}

void CACFPreferences::SetValue(const __CFString *this, const __CFString *a2, uint64_t a3, int a4, int a5)
{
  v8 = &kCFPreferencesCurrentUser;
  if (!a3)
  {
    v8 = &kCFPreferencesAnyUser;
  }

  v9 = *v8;
  v10 = &kCFPreferencesCurrentHost;
  if (!a4)
  {
    v10 = &kCFPreferencesAnyHost;
  }

  CFPreferencesSetValue(this, a2, kCFPreferencesAnyApplication, v9, *v10);
  if (a5)
  {

    CACFPreferences::Synchronize(a3, a4, 1);
  }
}

void CACFPreferences::DeleteValue(const __CFString *this, const __CFString *a2, int a3, int a4)
{
  v6 = &kCFPreferencesCurrentUser;
  if (!a2)
  {
    v6 = &kCFPreferencesAnyUser;
  }

  v7 = *v6;
  v8 = &kCFPreferencesCurrentHost;
  if (!a3)
  {
    v8 = &kCFPreferencesAnyHost;
  }

  CFPreferencesSetValue(this, 0, kCFPreferencesAnyApplication, v7, *v8);
  if (a4)
  {

    CACFPreferences::Synchronize(v7 != 0, a3, 1);
  }
}

uint64_t CACFPreferences::ArePrefsOutOfDate(CACFPreferences *this, int a2)
{
  if (this & 1) != 0 || (a2)
  {
    if ((a2 ^ 1) & 1) != 0 || (this)
    {
      if ((this ^ 1) & 1) != 0 || (a2)
      {
        if ((this ^ 1 | a2 ^ 1))
        {
          v2 = 0;
        }

        else
        {
          v2 = CACFPreferences::sCurrentUserCurrentHostPrefsOutOfDate;
        }
      }

      else
      {
        v2 = CACFPreferences::sCurrentUserAnyHostPrefsOutOfDate;
      }
    }

    else
    {
      v2 = CACFPreferences::sAnyUserCurrentHostPrefsOutOfDate;
    }
  }

  else
  {
    v2 = CACFPreferences::sAnyUserAnyHostPrefsOutOfDate;
  }

  return v2 & 1;
}

uint64_t CACFPreferences::MarkPrefsClean(uint64_t this, int a2)
{
  if ((this & 1) != 0 || a2)
  {
    if (((a2 ^ 1) & 1) != 0 || this)
    {
      if (((this ^ 1) & 1) != 0 || a2)
      {
        if ((this ^ 1 | a2 ^ 1))
        {
          return this;
        }

        v2 = &CACFPreferences::sCurrentUserCurrentHostPrefsOutOfDate;
      }

      else
      {
        v2 = &CACFPreferences::sCurrentUserAnyHostPrefsOutOfDate;
      }
    }

    else
    {
      v2 = &CACFPreferences::sAnyUserCurrentHostPrefsOutOfDate;
    }
  }

  else
  {
    v2 = &CACFPreferences::sAnyUserAnyHostPrefsOutOfDate;
  }

  *v2 = 0;
  return this;
}

uint64_t CACFPreferences::MarkPrefsOutOfDate(uint64_t this, int a2)
{
  if ((this & 1) != 0 || a2)
  {
    if (((a2 ^ 1) & 1) != 0 || this)
    {
      if (((this ^ 1) & 1) != 0 || a2)
      {
        if ((this ^ 1 | a2 ^ 1))
        {
          return this;
        }

        v2 = &CACFPreferences::sCurrentUserCurrentHostPrefsOutOfDate;
      }

      else
      {
        v2 = &CACFPreferences::sCurrentUserAnyHostPrefsOutOfDate;
      }
    }

    else
    {
      v2 = &CACFPreferences::sAnyUserCurrentHostPrefsOutOfDate;
    }
  }

  else
  {
    v2 = &CACFPreferences::sAnyUserAnyHostPrefsOutOfDate;
  }

  *v2 = 1;
  return this;
}

const __CFArray *CACFArray::HasItem(CFArrayRef *this, const void *a2)
{
  result = *this;
  if (result)
  {
    v5.length = CFArrayGetCount(result);
    v5.location = 0;
    return (CFArrayContainsValue(*this, v5, a2) != 0);
  }

  return result;
}

const __CFArray *CACFArray::GetIndexOfItem(CFArrayRef *this, const void *a2, unsigned int *a3)
{
  *a3 = 0;
  result = *this;
  if (result)
  {
    v8.length = CFArrayGetCount(result);
    v8.location = 0;
    FirstIndexOfValue = CFArrayGetFirstIndexOfValue(*this, v8, a2);
    if (FirstIndexOfValue == -1)
    {
      return 0;
    }

    else
    {
      *a3 = FirstIndexOfValue;
      return (&dword_0 + 1);
    }
  }

  return result;
}

const __CFArray *CACFArray::GetBool(CFArrayRef *this, unsigned int a2, BOOL *a3)
{
  cf = 0;
  result = CACFArray::GetCFType(this, a2, &cf);
  if (!result)
  {
    return result;
  }

  v5 = cf;
  if (!cf)
  {
    return 0;
  }

  v6 = CFGetTypeID(cf);
  if (v6 != CFBooleanGetTypeID())
  {
    v8 = CFGetTypeID(v5);
    if (v8 == CFNumberGetTypeID())
    {
      valuePtr = 0;
      CFNumberGetValue(v5, kCFNumberSInt32Type, &valuePtr);
      v7 = valuePtr == 0;
      goto LABEL_7;
    }

    return 0;
  }

  v7 = CFBooleanGetValue(v5) == 0;
LABEL_7:
  v9 = !v7;
  *a3 = v9;
  return (&dword_0 + 1);
}

const __CFArray *CACFArray::GetCFType(CFArrayRef *this, unsigned int a2, const void **a3)
{
  result = *this;
  if (result)
  {
    if (CFArrayGetCount(result) <= a2)
    {
      return 0;
    }

    else
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*this, a2);
      *a3 = ValueAtIndex;
      return (ValueAtIndex != 0);
    }
  }

  return result;
}

uint64_t CACFArray::GetSInt32(CFArrayRef *this, unsigned int a2, int *a3)
{
  cf = 0;
  CFType = CACFArray::GetCFType(this, a2, &cf);
  result = 0;
  if (CFType)
  {
    v6 = cf;
    if (cf)
    {
      v7 = CFGetTypeID(cf);
      if (v7 == CFNumberGetTypeID())
      {
        CFNumberGetValue(v6, kCFNumberSInt32Type, a3);
        return 1;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t CACFArray::GetUInt32(CFArrayRef *this, unsigned int a2, unsigned int *a3)
{
  cf = 0;
  CFType = CACFArray::GetCFType(this, a2, &cf);
  result = 0;
  if (CFType)
  {
    v6 = cf;
    if (cf)
    {
      v7 = CFGetTypeID(cf);
      if (v7 == CFNumberGetTypeID())
      {
        CFNumberGetValue(v6, kCFNumberSInt32Type, a3);
        return 1;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t CACFArray::GetSInt64(CFArrayRef *this, unsigned int a2, uint64_t *a3)
{
  cf = 0;
  CFType = CACFArray::GetCFType(this, a2, &cf);
  result = 0;
  if (CFType)
  {
    v6 = cf;
    if (cf)
    {
      v7 = CFGetTypeID(cf);
      if (v7 == CFNumberGetTypeID())
      {
        CFNumberGetValue(v6, kCFNumberSInt64Type, a3);
        return 1;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t CACFArray::GetUInt64(CFArrayRef *this, unsigned int a2, unint64_t *a3)
{
  cf = 0;
  CFType = CACFArray::GetCFType(this, a2, &cf);
  result = 0;
  if (CFType)
  {
    v6 = cf;
    if (cf)
    {
      v7 = CFGetTypeID(cf);
      if (v7 == CFNumberGetTypeID())
      {
        CFNumberGetValue(v6, kCFNumberSInt64Type, a3);
        return 1;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t CACFArray::GetFloat32(CFArrayRef *this, unsigned int a2, float *a3)
{
  cf = 0;
  CFType = CACFArray::GetCFType(this, a2, &cf);
  result = 0;
  if (CFType)
  {
    v6 = cf;
    if (cf)
    {
      v7 = CFGetTypeID(cf);
      if (v7 == CFNumberGetTypeID())
      {
        CFNumberGetValue(v6, kCFNumberFloat32Type, a3);
        return 1;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t CACFArray::GetFloat64(CFArrayRef *this, unsigned int a2, double *a3)
{
  cf = 0;
  CFType = CACFArray::GetCFType(this, a2, &cf);
  result = 0;
  if (CFType)
  {
    v6 = cf;
    if (cf)
    {
      v7 = CFGetTypeID(cf);
      if (v7 == CFNumberGetTypeID())
      {
        CFNumberGetValue(v6, kCFNumberFloat64Type, a3);
        return 1;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

const __CFArray *CACFArray::Get4CC(CFArrayRef *this, unsigned int a2, unsigned int *a3)
{
  cf = 0;
  result = CACFArray::GetCFType(this, a2, &cf);
  if (result)
  {
    v5 = cf;
    if (cf)
    {
      v6 = CFGetTypeID(cf);
      if (v6 == CFNumberGetTypeID())
      {
        CFNumberGetValue(v5, kCFNumberSInt32Type, a3);
        return (&dword_0 + 1);
      }

      v7 = CFGetTypeID(v5);
      if (v7 == CFStringGetTypeID() && CFStringGetLength(v5) == 4)
      {
        CFStringGetCString(v5, &v8, 5, 0x600u);
        *a3 = bswap32(v8);
        return (&dword_0 + 1);
      }
    }

    return 0;
  }

  return result;
}

uint64_t CACFArray::GetString(CFArrayRef *this, unsigned int a2, const __CFString **a3)
{
  cf = 0;
  CFType = CACFArray::GetCFType(this, a2, &cf);
  result = 0;
  if (CFType)
  {
    v6 = cf;
    if (cf)
    {
      v7 = CFGetTypeID(cf);
      if (v7 == CFStringGetTypeID())
      {
        *a3 = v6;
        return 1;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t CACFArray::GetArray(CFArrayRef *this, unsigned int a2, const __CFArray **a3)
{
  cf = 0;
  CFType = CACFArray::GetCFType(this, a2, &cf);
  result = 0;
  if (CFType)
  {
    v6 = cf;
    if (cf)
    {
      v7 = CFGetTypeID(cf);
      if (v7 == CFArrayGetTypeID())
      {
        *a3 = v6;
        return 1;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t CACFArray::GetDictionary(CFArrayRef *this, unsigned int a2, const __CFDictionary **a3)
{
  cf = 0;
  CFType = CACFArray::GetCFType(this, a2, &cf);
  result = 0;
  if (CFType)
  {
    v6 = cf;
    if (cf)
    {
      v7 = CFGetTypeID(cf);
      if (v7 == CFDictionaryGetTypeID())
      {
        *a3 = v6;
        return 1;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t CACFArray::GetData(CFArrayRef *this, unsigned int a2, const __CFData **a3)
{
  cf = 0;
  CFType = CACFArray::GetCFType(this, a2, &cf);
  result = 0;
  if (CFType)
  {
    v6 = cf;
    if (cf)
    {
      v7 = CFGetTypeID(cf);
      if (v7 == CFDataGetTypeID())
      {
        *a3 = v6;
        return 1;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t CACFArray::GetUUID(CFArrayRef *this, unsigned int a2, const __CFUUID **a3)
{
  cf = 0;
  CFType = CACFArray::GetCFType(this, a2, &cf);
  result = 0;
  if (CFType)
  {
    v6 = cf;
    if (cf)
    {
      v7 = CFGetTypeID(cf);
      if (v7 == CFUUIDGetTypeID())
      {
        *a3 = v6;
        return 1;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t CACFArray::GetCACFString(CFArrayRef *this, unsigned int a2, CACFString *a3)
{
  sub_5534(a3, 0);
  cf = 0;
  result = CACFArray::GetCFType(this, a2, &cf);
  if (result)
  {
    v7 = cf;
    if (cf)
    {
      v8 = CFGetTypeID(cf);
      result = CFStringGetTypeID();
      if (v8 == result)
      {

        return sub_5534(a3, v7);
      }
    }
  }

  return result;
}

uint64_t CACFArray::GetCACFArray(CFArrayRef *this, unsigned int a2, CFTypeRef *a3)
{
  if (*(a3 + 8) == 1 && *a3)
  {
    CFRelease(*a3);
  }

  *a3 = 0;
  *(a3 + 9) = 0;
  cf = 0;
  result = CACFArray::GetCFType(this, a2, &cf);
  if (result)
  {
    v7 = cf;
    if (cf)
    {
      v8 = CFGetTypeID(cf);
      result = CFArrayGetTypeID();
      if (v8 == result)
      {

        return sub_7828(a3, v7);
      }
    }
  }

  return result;
}

uint64_t CACFArray::GetCACFDictionary(CFArrayRef *this, unsigned int a2, CACFDictionary *a3)
{
  if (a3->var1 && a3->var0)
  {
    CFRelease(a3->var0);
  }

  a3->var0 = 0;
  a3->var2 = 0;
  cf = 0;
  result = CACFArray::GetCFType(this, a2, &cf);
  if (result)
  {
    v7 = cf;
    if (cf)
    {
      v8 = CFGetTypeID(cf);
      result = CFDictionaryGetTypeID();
      if (v8 == result)
      {

        return sub_7828(a3, v7);
      }
    }
  }

  return result;
}

uint64_t CACFArray::AppendBool(CACFArray *this, int a2)
{
  if (!*this || *(this + 9) != 1)
  {
    return 0;
  }

  v3 = &kCFBooleanTrue;
  if (!a2)
  {
    v3 = &kCFBooleanFalse;
  }

  v4 = *v3;
  v7 = v4;
  v8 = 1;
  if (v4 && (CFRetain(v4), *this) && *(this + 9) == 1)
  {
    CFArrayAppendValue(*this, v4);
    v5 = 1;
  }

  else
  {
    v5 = 0;
  }

  sub_8288(&v7);
  return v5;
}

__CFArray *CACFArray::AppendCFType(__CFArray **this, const void *a2)
{
  result = *this;
  if (result)
  {
    if (*(this + 9) == 1)
    {
      CFArrayAppendValue(result, a2);
      return (&dword_0 + 1);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t CACFArray::AppendSInt32(CACFArray *this, int a2)
{
  if (!*this || *(this + 9) != 1)
  {
    return 0;
  }

  valuePtr = a2;
  v3 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v6 = v3;
  v7 = 1;
  if (v3 && *this && *(this + 9) == 1)
  {
    CFArrayAppendValue(*this, v3);
    v4 = 1;
  }

  else
  {
    v4 = 0;
  }

  sub_1870(&v6);
  return v4;
}

void sub_F3F4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1870(va);
  _Unwind_Resume(a1);
}

uint64_t CACFArray::AppendUInt32(CACFArray *this, int a2)
{
  if (!*this || *(this + 9) != 1)
  {
    return 0;
  }

  valuePtr = a2;
  v3 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v6 = v3;
  v7 = 1;
  if (v3 && *this && *(this + 9) == 1)
  {
    CFArrayAppendValue(*this, v3);
    v4 = 1;
  }

  else
  {
    v4 = 0;
  }

  sub_1870(&v6);
  return v4;
}

void sub_F4A4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1870(va);
  _Unwind_Resume(a1);
}

uint64_t CACFArray::AppendSInt64(CACFArray *this, uint64_t a2)
{
  if (!*this || *(this + 9) != 1)
  {
    return 0;
  }

  valuePtr = a2;
  v3 = CFNumberCreate(0, kCFNumberSInt64Type, &valuePtr);
  v6 = v3;
  v7 = 1;
  if (v3 && *this && *(this + 9) == 1)
  {
    CFArrayAppendValue(*this, v3);
    v4 = 1;
  }

  else
  {
    v4 = 0;
  }

  sub_1870(&v6);
  return v4;
}

void sub_F554(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1870(va);
  _Unwind_Resume(a1);
}

uint64_t CACFArray::AppendUInt64(CACFArray *this, uint64_t a2)
{
  if (!*this || *(this + 9) != 1)
  {
    return 0;
  }

  valuePtr = a2;
  v3 = CFNumberCreate(0, kCFNumberSInt64Type, &valuePtr);
  v6 = v3;
  v7 = 1;
  if (v3 && *this && *(this + 9) == 1)
  {
    CFArrayAppendValue(*this, v3);
    v4 = 1;
  }

  else
  {
    v4 = 0;
  }

  sub_1870(&v6);
  return v4;
}

void sub_F604(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1870(va);
  _Unwind_Resume(a1);
}

uint64_t CACFArray::AppendFloat32(CACFArray *this, float a2)
{
  if (!*this || *(this + 9) != 1)
  {
    return 0;
  }

  valuePtr = a2;
  v3 = CFNumberCreate(0, kCFNumberFloat32Type, &valuePtr);
  v6 = v3;
  v7 = 1;
  if (v3 && *this && *(this + 9) == 1)
  {
    CFArrayAppendValue(*this, v3);
    v4 = 1;
  }

  else
  {
    v4 = 0;
  }

  sub_1870(&v6);
  return v4;
}

void sub_F6B4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1870(va);
  _Unwind_Resume(a1);
}

uint64_t CACFArray::AppendFloat64(CACFArray *this, double a2)
{
  if (!*this || *(this + 9) != 1)
  {
    return 0;
  }

  valuePtr = a2;
  v3 = CFNumberCreate(0, kCFNumberFloat64Type, &valuePtr);
  v6 = v3;
  v7 = 1;
  if (v3 && *this && *(this + 9) == 1)
  {
    CFArrayAppendValue(*this, v3);
    v4 = 1;
  }

  else
  {
    v4 = 0;
  }

  sub_1870(&v6);
  return v4;
}

void sub_F764(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1870(va);
  _Unwind_Resume(a1);
}

__CFArray *CACFArray::AppendString(__CFArray **this, const __CFString *a2)
{
  result = *this;
  if (result)
  {
    if (*(this + 9) == 1)
    {
      CFArrayAppendValue(result, a2);
      return (&dword_0 + 1);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

__CFArray *CACFArray::AppendArray(__CFArray **this, const __CFArray *a2)
{
  result = *this;
  if (result)
  {
    if (*(this + 9) == 1)
    {
      CFArrayAppendValue(result, a2);
      return (&dword_0 + 1);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

__CFArray *CACFArray::AppendDictionary(__CFArray **this, const __CFDictionary *a2)
{
  result = *this;
  if (result)
  {
    if (*(this + 9) == 1)
    {
      CFArrayAppendValue(result, a2);
      return (&dword_0 + 1);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

__CFArray *CACFArray::AppendData(__CFArray **this, const __CFData *a2)
{
  result = *this;
  if (result)
  {
    if (*(this + 9) == 1)
    {
      CFArrayAppendValue(result, a2);
      return (&dword_0 + 1);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

const __CFArray *CACFArray::InsertBool(CACFArray *this, unsigned int a2, int a3)
{
  if (!*this || *(this + 9) != 1)
  {
    return 0;
  }

  v4 = &kCFBooleanTrue;
  if (!a3)
  {
    v4 = &kCFBooleanFalse;
  }

  v5 = *v4;
  v9 = v5;
  v10 = 1;
  if (v5)
  {
    CFRetain(v5);
    inserted = CACFArray::InsertCFType(this, a2, v5);
  }

  else
  {
    inserted = 0;
  }

  sub_8288(&v9);
  return inserted;
}

const __CFArray *CACFArray::InsertCFType(const __CFArray **this, unsigned int a2, const void *a3)
{
  result = *this;
  if (result)
  {
    if (*(this + 9) == 1)
    {
      Count = CFArrayGetCount(result);
      v8 = *this;
      if (Count <= a2)
      {
        CFArrayAppendValue(v8, a3);
      }

      else
      {
        CFArrayInsertValueAtIndex(v8, a2, a3);
      }

      return (&dword_0 + 1);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

const __CFArray *CACFArray::InsertSInt32(CACFArray *this, unsigned int a2, int a3)
{
  if (!*this || *(this + 9) != 1)
  {
    return 0;
  }

  valuePtr = a3;
  v5 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v8 = v5;
  v9 = 1;
  if (v5)
  {
    inserted = CACFArray::InsertCFType(this, a2, v5);
  }

  else
  {
    inserted = 0;
  }

  sub_1870(&v8);
  return inserted;
}

void sub_FA48(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1870(va);
  _Unwind_Resume(a1);
}

const __CFArray *CACFArray::InsertUInt32(CACFArray *this, unsigned int a2, int a3)
{
  if (!*this || *(this + 9) != 1)
  {
    return 0;
  }

  valuePtr = a3;
  v5 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v8 = v5;
  v9 = 1;
  if (v5)
  {
    inserted = CACFArray::InsertCFType(this, a2, v5);
  }

  else
  {
    inserted = 0;
  }

  sub_1870(&v8);
  return inserted;
}

void sub_FAF0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1870(va);
  _Unwind_Resume(a1);
}

const __CFArray *CACFArray::InsertSInt64(CACFArray *this, unsigned int a2, uint64_t a3)
{
  if (!*this || *(this + 9) != 1)
  {
    return 0;
  }

  valuePtr = a3;
  v5 = CFNumberCreate(0, kCFNumberSInt64Type, &valuePtr);
  v8 = v5;
  v9 = 1;
  if (v5)
  {
    inserted = CACFArray::InsertCFType(this, a2, v5);
  }

  else
  {
    inserted = 0;
  }

  sub_1870(&v8);
  return inserted;
}

void sub_FB98(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1870(va);
  _Unwind_Resume(a1);
}

const __CFArray *CACFArray::InsertUInt64(CACFArray *this, unsigned int a2, uint64_t a3)
{
  if (!*this || *(this + 9) != 1)
  {
    return 0;
  }

  valuePtr = a3;
  v5 = CFNumberCreate(0, kCFNumberSInt64Type, &valuePtr);
  v8 = v5;
  v9 = 1;
  if (v5)
  {
    inserted = CACFArray::InsertCFType(this, a2, v5);
  }

  else
  {
    inserted = 0;
  }

  sub_1870(&v8);
  return inserted;
}

void sub_FC40(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1870(va);
  _Unwind_Resume(a1);
}

const __CFArray *CACFArray::InsertFloat32(CACFArray *this, unsigned int a2, float a3)
{
  if (!*this || *(this + 9) != 1)
  {
    return 0;
  }

  valuePtr = a3;
  v5 = CFNumberCreate(0, kCFNumberFloat32Type, &valuePtr);
  v8 = v5;
  v9 = 1;
  if (v5)
  {
    inserted = CACFArray::InsertCFType(this, a2, v5);
  }

  else
  {
    inserted = 0;
  }

  sub_1870(&v8);
  return inserted;
}

void sub_FCE8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1870(va);
  _Unwind_Resume(a1);
}

const __CFArray *CACFArray::InsertFloat64(CACFArray *this, unsigned int a2, double a3)
{
  if (!*this || *(this + 9) != 1)
  {
    return 0;
  }

  valuePtr = a3;
  v5 = CFNumberCreate(0, kCFNumberFloat64Type, &valuePtr);
  v8 = v5;
  v9 = 1;
  if (v5)
  {
    inserted = CACFArray::InsertCFType(this, a2, v5);
  }

  else
  {
    inserted = 0;
  }

  sub_1870(&v8);
  return inserted;
}

void sub_FD90(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1870(va);
  _Unwind_Resume(a1);
}

const __CFArray *CACFArray::SetBool(const __CFArray **this, unsigned int a2, int a3)
{
  v4 = *this;
  if (!v4 || *(this + 9) != 1 || CFArrayGetCount(v4) < a2)
  {
    return 0;
  }

  v9 = &kCFBooleanTrue;
  if (!a3)
  {
    v9 = &kCFBooleanFalse;
  }

  v10 = *v9;
  v11 = v10;
  v12 = 1;
  if (v10)
  {
    CFRetain(v10);
    v7 = CACFArray::SetCFType(this, a2, v10);
  }

  else
  {
    v7 = 0;
  }

  sub_8288(&v11);
  return v7;
}

const __CFArray *CACFArray::SetCFType(CFMutableArrayRef *this, unsigned int a2, const void *a3)
{
  result = *this;
  if (result)
  {
    if (*(this + 9) == 1 && CFArrayGetCount(result) >= a2)
    {
      CFArraySetValueAtIndex(*this, a2, a3);
      return (&dword_0 + 1);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

const __CFArray *CACFArray::SetSInt32(const __CFArray **this, unsigned int a2, int a3)
{
  v4 = *this;
  if (!v4 || *(this + 9) != 1 || CFArrayGetCount(v4) < a2)
  {
    return 0;
  }

  valuePtr = a3;
  v9 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v10 = v9;
  v11 = 1;
  if (v9)
  {
    v7 = CACFArray::SetCFType(this, a2, v9);
  }

  else
  {
    v7 = 0;
  }

  sub_1870(&v10);
  return v7;
}

void sub_FF9C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1870(va);
  _Unwind_Resume(a1);
}

const __CFArray *CACFArray::SetUInt32(const __CFArray **this, unsigned int a2, int a3)
{
  v4 = *this;
  if (!v4 || *(this + 9) != 1 || CFArrayGetCount(v4) < a2)
  {
    return 0;
  }

  valuePtr = a3;
  v9 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v10 = v9;
  v11 = 1;
  if (v9)
  {
    v7 = CACFArray::SetCFType(this, a2, v9);
  }

  else
  {
    v7 = 0;
  }

  sub_1870(&v10);
  return v7;
}

void sub_1005C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1870(va);
  _Unwind_Resume(a1);
}

const __CFArray *CACFArray::SetSInt64(const __CFArray **this, unsigned int a2, uint64_t a3)
{
  v4 = *this;
  if (!v4 || *(this + 9) != 1 || CFArrayGetCount(v4) < a2)
  {
    return 0;
  }

  valuePtr = a3;
  v9 = CFNumberCreate(0, kCFNumberSInt64Type, &valuePtr);
  v10 = v9;
  v11 = 1;
  if (v9)
  {
    v7 = CACFArray::SetCFType(this, a2, v9);
  }

  else
  {
    v7 = 0;
  }

  sub_1870(&v10);
  return v7;
}

void sub_1011C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1870(va);
  _Unwind_Resume(a1);
}

const __CFArray *CACFArray::SetUInt64(const __CFArray **this, unsigned int a2, uint64_t a3)
{
  v4 = *this;
  if (!v4 || *(this + 9) != 1 || CFArrayGetCount(v4) < a2)
  {
    return 0;
  }

  valuePtr = a3;
  v9 = CFNumberCreate(0, kCFNumberSInt64Type, &valuePtr);
  v10 = v9;
  v11 = 1;
  if (v9)
  {
    v7 = CACFArray::SetCFType(this, a2, v9);
  }

  else
  {
    v7 = 0;
  }

  sub_1870(&v10);
  return v7;
}

void sub_101DC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1870(va);
  _Unwind_Resume(a1);
}

const __CFArray *CACFArray::SetFloat32(const __CFArray **this, unsigned int a2, float a3)
{
  v4 = *this;
  if (!v4 || *(this + 9) != 1 || CFArrayGetCount(v4) < a2)
  {
    return 0;
  }

  valuePtr = a3;
  v9 = CFNumberCreate(0, kCFNumberFloat32Type, &valuePtr);
  v10 = v9;
  v11 = 1;
  if (v9)
  {
    v7 = CACFArray::SetCFType(this, a2, v9);
  }

  else
  {
    v7 = 0;
  }

  sub_1870(&v10);
  return v7;
}

void sub_1029C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1870(va);
  _Unwind_Resume(a1);
}

const __CFArray *CACFArray::SetFloat64(const __CFArray **this, unsigned int a2, double a3)
{
  v4 = *this;
  if (!v4 || *(this + 9) != 1 || CFArrayGetCount(v4) < a2)
  {
    return 0;
  }

  valuePtr = a3;
  v9 = CFNumberCreate(0, kCFNumberFloat64Type, &valuePtr);
  v10 = v9;
  v11 = 1;
  if (v9)
  {
    v7 = CACFArray::SetCFType(this, a2, v9);
  }

  else
  {
    v7 = 0;
  }

  sub_1870(&v10);
  return v7;
}

void sub_1035C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1870(va);
  _Unwind_Resume(a1);
}

void CACFArray::PrintToLog(CACFArray *this, const __CFArray *a2)
{
  Count = CFArrayGetCount(this);
  if (a2)
  {
    v5 = a2;
    memset(__b, 9, a2);
  }

  else
  {
    v5 = 0;
  }

  __b[v5] = 0;
  if (Count >= 1)
  {
    for (i = 0; i != Count; ++i)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v12 = __b;
        v13 = 1024;
        v14 = i;
        _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, " %sitem %d", buf, 0x12u);
      }

      ValueAtIndex = CFArrayGetValueAtIndex(this, i);
      v8 = CFGetTypeID(ValueAtIndex);
      if (v8 == CFBooleanGetTypeID())
      {
        CACFBoolean::PrintToLog(ValueAtIndex, a2);
      }

      else if (v8 == CFNumberGetTypeID())
      {
        CACFNumber::PrintToLog(ValueAtIndex, a2);
      }

      else if (v8 == CFStringGetTypeID())
      {
        CACFString::PrintToLog(ValueAtIndex, a2);
      }

      else if (v8 == CFDictionaryGetTypeID())
      {
        CACFDictionary::PrintToLog(ValueAtIndex, (a2 + 1), v9);
      }

      else if (v8 == CFArrayGetTypeID())
      {
        CACFArray::PrintToLog(ValueAtIndex, (a2 + 1), v10);
      }
    }
  }
}

char *CAAudioChannelLayout::Create(CAAudioChannelLayout *this)
{
  v1 = this;
  v2 = sub_6D8C(this, 0x14u);
  v3 = sub_6E00(12, v2);
  v4 = malloc_type_malloc(v3, 0x2365AC71uLL);
  v5 = v4;
  if (v3 && !v4)
  {
    exception = __cxa_allocate_exception(8uLL);
    v10 = std::bad_alloc::bad_alloc(exception);
  }

  bzero(v4, v3);
  if (v5)
  {
    *v5 = 0;
    *(v5 + 2) = v1;
    if (v1)
    {
      v6 = v1;
      v7 = v5 + 16;
      do
      {
        *(v7 - 1) = -1;
        *v7 = 0;
        v7[1] = 0;
        v7 = (v7 + 20);
        --v6;
      }

      while (v6);
    }
  }

  return v5;
}

uint64_t CAAudioChannelLayout::SetAllToUnknown(uint64_t this, AudioChannelLayout *a2)
{
  *this = 0;
  *(this + 8) = a2;
  if (a2)
  {
    v2 = a2;
    v3 = (this + 16);
    do
    {
      *(v3 - 1) = -1;
      *v3 = 0;
      v3[1] = 0;
      v3 = (v3 + 20);
      --v2;
    }

    while (v2);
  }

  return this;
}

uint64_t CAAudioChannelLayout::NumberChannels(CAAudioChannelLayout *this, const AudioChannelLayout *a2)
{
  if (*this == 0x10000)
  {
    v3 = vcnt_s8(*(this + 1));
    v3.i16[0] = vaddlv_u8(v3);
    return v3.u32[0];
  }

  else if (*this)
  {
    return *this;
  }

  else
  {
    return *(this + 2);
  }
}

size_t CAShowAudioChannelLayout(FILE *__stream, _DWORD *a2)
{
  if (a2)
  {
    fprintf(__stream, "\tTag=0x%X, ", *a2);
    if (*a2 == 0x10000)
    {
      return fprintf(__stream, "Using Bitmap:0x%X\n", a2[1]);
    }

    else
    {
      result = fprintf(__stream, "Num Chan Descs=%d\n", a2[2]);
      if (a2[2])
      {
        v5 = 0;
        v6 = (a2 + 3);
        do
        {
          fprintf(__stream, "\t\tLabel=%d, Flags=0x%X, ", *v6, *(v6 + 1));
          result = fprintf(__stream, "[az=%f,el=%f,dist=%f]\n", v6[2], v6[3], v6[4]);
          ++v5;
          v6 += 5;
        }

        while (v5 < a2[2]);
      }
    }
  }

  else
  {

    return fwrite("\tNULL layout\n", 0xDuLL, 1uLL, __stream);
  }

  return result;
}

void CACFDistributedNotification::AddObserver(CACFDistributedNotification *this, void (__cdecl *a2)(CFNotificationCenterRef, void *, CFNotificationName, const void *, CFDictionaryRef), const __CFString *a3, const __CFString *a4, CFNotificationSuspensionBehavior a5)
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterAddObserver(DarwinNotifyCenter, this, a2, a3, 0, 0);
}

void CACFDistributedNotification::RemoveObserver(CACFDistributedNotification *this, const __CFString *a2, const __CFString *a3)
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, this, a2, 0);
}

void CACFDistributedNotification::PostNotification(const __CFString *this, const __CFString *a2, const __CFDictionary *a3)
{
  if (a2)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_187D8();
    }

    goto LABEL_8;
  }

  if (a3)
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

    CFNotificationCenterPostNotificationWithOptions(DarwinNotifyCenter, this, 0, 0, 0);
  }

  else
  {
    while (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
LABEL_8:
      __break(1u);
    }

    sub_18820();
    __break(1u);
  }
}

char *CAStringForOSType(unsigned int a1, char *__dst, size_t a3, int8x8_t a4)
{
  a4.i32[0] = bswap32(a1);
  v5 = vzip1_s8(a4, a4);
  v6.i64[0] = 0x1F0000001FLL;
  v6.i64[1] = 0x1F0000001FLL;
  v7.i64[0] = 0x5F0000005FLL;
  v7.i64[1] = 0x5F0000005FLL;
  v8 = vbsl_s8(vmovn_s32(vcgtq_u32(v7, vsraq_n_s32(v6, vshlq_n_s32(vmovl_u16(v5), 0x18uLL), 0x18uLL))), v5, 0x2E002E002E002ELL);
  v11 = 4;
  *__source = vuzp1_s8(v8, v8).u32[0];
  __source[4] = 0;
  strlcpy(__dst, __source, a3);
  if (v11 < 0)
  {
    operator delete(*__source);
  }

  return __dst;
}

void sub_1096C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

_DWORD *CAStreamBasicDescription::VirtualizeLinearPCMFormat(_DWORD *this, AudioStreamBasicDescription *a2)
{
  if (this[2] == 1819304813 && (this[3] & 0x40) == 0)
  {
    v2 = 4 * this[7];
    this[3] = 9;
    this[4] = v2;
    this[5] = 1;
    this[6] = v2;
    this[8] = 32;
  }

  return this;
}

uint64_t CAStreamBasicDescription::VirtualizeLinearPCMFormat(uint64_t this, _DWORD *a2, AudioStreamBasicDescription *a3)
{
  if (a2[2] == 1819304813 && (a2[3] & 0x40) == 0)
  {
    if (this)
    {
      v3 = 9;
    }

    else
    {
      v3 = 11;
    }

    v4 = 4 * a2[7];
    a2[3] = v3;
    a2[4] = v4;
    a2[5] = 1;
    a2[6] = v4;
    a2[8] = 32;
  }

  return this;
}

double CAStreamBasicDescription::ResetFormat(CAStreamBasicDescription *this, AudioStreamBasicDescription *a2)
{
  *(this + 8) = 0;
  result = 0.0;
  *this = 0u;
  *(this + 1) = 0u;
  return result;
}

uint64_t CAStreamBasicDescription::FillOutFormat(uint64_t this, AudioStreamBasicDescription *a2, const AudioStreamBasicDescription *a3)
{
  if (*this == 0.0)
  {
    *this = a2->mSampleRate;
  }

  if (!*(this + 8))
  {
    *(this + 8) = a2->mFormatID;
  }

  if (!*(this + 12))
  {
    *(this + 12) = a2->mFormatFlags;
  }

  if (!*(this + 16))
  {
    *(this + 16) = a2->mBytesPerPacket;
  }

  if (!*(this + 20))
  {
    *(this + 20) = a2->mFramesPerPacket;
  }

  if (!*(this + 24))
  {
    *(this + 24) = a2->mBytesPerFrame;
  }

  if (!*(this + 28))
  {
    *(this + 28) = a2->mChannelsPerFrame;
  }

  if (!*(this + 32))
  {
    *(this + 32) = a2->mBitsPerChannel;
  }

  return this;
}

BOOL CAStreamBasicDescription::IsEqual(CAStreamBasicDescription *this, const AudioStreamBasicDescription *a2, int a3)
{
  if (a3)
  {
    return sub_11160(this, &a2->mSampleRate, 3u);
  }

  if (*this == a2->mSampleRate && *(this + 2) == a2->mFormatID && *(this + 3) == a2->mFormatFlags && *(this + 4) == a2->mBytesPerPacket && *(this + 5) == a2->mFramesPerPacket && *(this + 6) == a2->mBytesPerFrame && *(this + 7) == a2->mChannelsPerFrame)
  {
    return *(this + 8) == a2->mBitsPerChannel;
  }

  return 0;
}

BOOL MinimalSafetyCheck(const AudioStreamBasicDescription *a1)
{
  result = 0;
  if (a1->mSampleRate >= 0.0 && a1->mSampleRate < 3000000.0)
  {
    mBytesPerPacket = a1->mBytesPerPacket;
    if (mBytesPerPacket >= 0xF4240)
    {
      return 0;
    }

    mFramesPerPacket = a1->mFramesPerPacket;
    if (mFramesPerPacket >= 0xF4240)
    {
      return 0;
    }

    mBytesPerFrame = a1->mBytesPerFrame;
    if (mBytesPerFrame >= 0xF4240)
    {
      return 0;
    }

    result = 0;
    if (a1->mChannelsPerFrame - 1 > 0x3FF || a1->mBitsPerChannel > 0x400)
    {
      return result;
    }

    mFormatID = a1->mFormatID;
    if (!mFormatID)
    {
      return 0;
    }

    v8 = mFramesPerPacket == 1 && mBytesPerPacket == mBytesPerFrame;
    return mFormatID != 1819304813 || v8;
  }

  return result;
}

uint64_t CAStreamBasicDescription::FromText(CAStreamBasicDescription *this, char *a2, AudioStreamBasicDescription *a3)
{
  if (*this == 45)
  {
    v5 = (this + 1);
  }

  else
  {
    v5 = this;
  }

  v6 = *v5;
  if (v6 == 76)
  {
    v7 = 2 * (*(v5 + 1) == 69);
    i = 12;
  }

  else
  {
    if (v6 != 66)
    {
      i = 12;
      goto LABEL_12;
    }

    v7 = 2 * (*(v5 + 1) == 69);
    if (*(v5 + 1) == 69)
    {
      i = 14;
    }

    else
    {
      i = 12;
    }
  }

  v5 = (v5 + v7);
  v6 = *v5;
LABEL_12:
  switch(v6)
  {
    case 'U':
      i &= 0xAu;
      v9 = *(v5 + 1);
      v5 = (v5 + 1);
      v6 = v9;
      break;
    case 'F':
      i = i & 0xFFFFFFFA | 1;
      goto LABEL_17;
    case 'I':
LABEL_17:
      v10 = (v5 + 1);
      if (*(v5 + 1) < 0)
      {
        v12 = 0;
      }

      else
      {
        v11 = *(v5 + 1);
        if ((_DefaultRuneLocale.__runetype[*(v5 + 1)] & 0x400) != 0)
        {
          v12 = 0;
          v10 = (v5 + 2);
          while (1)
          {
            v12 = v11 + 10 * v12 - 48;
            if (*v10 < 0)
            {
              break;
            }

            v17 = *v10;
            v11 = *v10;
            v10 = (v10 + 1);
            if ((_DefaultRuneLocale.__runetype[v17] & 0x400) == 0)
            {
              v5 = (v10 - 2);
              v10 = (v10 - 1);
              goto LABEL_33;
            }
          }
        }

        else
        {
          v12 = 0;
LABEL_33:
          if (v11 == 46)
          {
            v20 = *(v5 + 2);
            v18 = (v5 + 2);
            v19 = v20;
            if (v20 < 0 || (v21 = v19, (_DefaultRuneLocale.__runetype[v19] & 0x400) == 0))
            {
              v22 = __stderrp;
              v23 = "Expected fractional bits following '.'\n";
              v24 = 39;
LABEL_37:
              fwrite(v23, v24, 1uLL, v22);
              goto LABEL_101;
            }

            v28 = 0;
            v10 = v18;
            do
            {
              if ((_DefaultRuneLocale.__runetype[v21] & 0x400) == 0)
              {
                break;
              }

              v29 = *(v10 + 1);
              v10 = (v10 + 1);
              v28 = 10 * v28 + v21 - 48;
              v21 = v29;
            }

            while ((v29 & 0x80000000) == 0);
            v12 += v28;
            i |= v28 << 7;
          }
        }
      }

      v27 = 1819304813;
      v25 = (v12 + 7) >> 3;
      if ((v12 & 7) != 0)
      {
        i = i & 0xFFFFFFE7 | 0x10;
      }

      v26 = 1;
      goto LABEL_50;
  }

  v13 = 0;
  __c = 538976288;
  v14 = this;
  v10 = this;
  while (1)
  {
    v16 = *v10;
    v10 = (v10 + 1);
    v15 = v16;
    if (v16 == 92)
    {
      if (*v10 != 120)
      {
        return 0;
      }

      v50 = 0;
      if (sscanf(v14 + 2, "%02X", &v50) != 1)
      {
        return 0;
      }

      *(&__c + v13) = v50;
      v10 = (v14 + 4);
      goto LABEL_26;
    }

    *(&__c + v13) = v15;
    if (!v15)
    {
      break;
    }

LABEL_26:
    ++v13;
    v14 = v10;
    if (v13 == 4)
    {
      goto LABEL_40;
    }
  }

  if (v13 != 3)
  {
    return 0;
  }

  HIBYTE(__c) = 32;
  v10 = v14;
LABEL_40:
  if (memchr("-@/#", SHIBYTE(__c), 5uLL))
  {
    HIBYTE(__c) = 32;
    v10 = (v10 - 1);
  }

  i = 0;
  v25 = 0;
  v26 = 0;
  v12 = 0;
  v27 = bswap32(__c);
LABEL_50:
  v30 = *v10;
  if (v30 != 64)
  {
    v32 = 0.0;
    goto LABEL_57;
  }

  v31 = *(v10 + 1);
  v10 = (v10 + 1);
  LOBYTE(v30) = v31;
  if (v31 < 0)
  {
    goto LABEL_100;
  }

  v32 = 0.0;
  while ((_DefaultRuneLocale.__runetype[v30] & 0x400) != 0)
  {
    v32 = (v30 - 48) + v32 * 10.0;
    v33 = *(v10 + 1);
    v10 = (v10 + 1);
    LOBYTE(v30) = v33;
    if (v33 < 0)
    {
      goto LABEL_100;
    }
  }

LABEL_57:
  if (v30 == 47)
  {
    for (i = 0; ; i = (v35 + v34) | (16 * i))
    {
      v10 = (v10 + 1);
      v34 = *v10;
      if ((v34 - 48) >= 0xA)
      {
        v30 = *v10;
        if ((v30 - 65) >= 6)
        {
          if ((v30 - 97) > 5)
          {
            break;
          }

          v35 = -87;
        }

        else
        {
          v35 = -55;
        }
      }

      else
      {
        v35 = -48;
      }
    }
  }

  if (v30 != 35)
  {
    v36 = v30;
    v38 = v26;
    goto LABEL_73;
  }

  v37 = *(v10 + 1);
  v10 = (v10 + 1);
  v36 = v37;
  if (v37 < 0)
  {
    goto LABEL_100;
  }

  v38 = v26;
  while ((_DefaultRuneLocale.__runetype[v36] & 0x400) != 0)
  {
    v38 = 10 * v38 + v36 - 48;
    v39 = *(v10 + 1);
    v10 = (v10 + 1);
    v36 = v39;
    if (v39 < 0)
    {
      goto LABEL_100;
    }
  }

LABEL_73:
  if (v36 != 58)
  {
LABEL_82:
    if (v36 != 44)
    {
      goto LABEL_99;
    }

    v43 = v10 + 1;
    v44 = *(v10 + 1);
    if ((*(v10 + 1) & 0x80000000) == 0 && (_DefaultRuneLocale.__runetype[*(v10 + 1)] & 0x400) != 0)
    {
      v26 = 0;
      v45 = v10 + 2;
      do
      {
        v43 = v45;
        v26 = v44 + 10 * v26 - 48;
        v46 = *v45;
        v44 = v46;
        if (v46 < 0)
        {
          break;
        }

        v47 = _DefaultRuneLocale.__runetype[v46];
        v45 = v43 + 1;
      }

      while ((v47 & 0x400) != 0);
      v10 = (v43 - 1);
    }

    else
    {
      v26 = 0;
    }

    if (v44 == 73)
    {
      v43 = v10 + 2;
    }

    else if (v44 == 68)
    {
      if (v27 != 1819304813)
      {
        v22 = __stderrp;
        v23 = "non-interleaved flag invalid for non-PCM formats\n";
        v24 = 49;
        goto LABEL_37;
      }

      v10 = (v10 + 2);
      i |= 0x20u;
LABEL_99:
      if (*v10)
      {
        goto LABEL_100;
      }

      *a2 = v32;
      *(a2 + 2) = v27;
      *(a2 + 3) = i;
      *(a2 + 4) = v25;
      *(a2 + 5) = v38;
      *(a2 + 6) = v25;
      *(a2 + 7) = v26;
      result = 1;
      *(a2 + 8) = v12;
      *(a2 + 9) = 0;
      return result;
    }

    if (v27 == 1819304813)
    {
      v48 = v26;
    }

    else
    {
      v48 = 1;
    }

    v25 *= v48;
    v10 = v43;
    goto LABEL_99;
  }

  i &= 0xFFFFFFE7;
  v40 = *(v10 + 1);
  if (v40 == 76)
  {
    goto LABEL_77;
  }

  if (v40 == 72)
  {
    i |= 0x10u;
LABEL_77:
    v41 = *(v10 + 2);
    v10 = (v10 + 2);
    v36 = v41;
    if ((v41 & 0x80000000) == 0)
    {
      v25 = 0;
      while ((_DefaultRuneLocale.__runetype[v36] & 0x400) != 0)
      {
        v42 = *(v10 + 1);
        v10 = (v10 + 1);
        v25 = 10 * v25 + v36 - 48;
        v36 = v42;
        if (v42 < 0)
        {
          goto LABEL_100;
        }
      }

      goto LABEL_82;
    }

LABEL_100:
    fprintf(__stderrp, "extra characters at end of format string: %s\n", v10);
  }

LABEL_101:
  fprintf(__stderrp, "Invalid format string: %s\n", this);
  fwrite("Syntax of format strings is: \n", 0x1EuLL, 1uLL, __stderrp);
  return 0;
}

BOOL sub_11160(double *a1, double *a2, unsigned int a3)
{
  v4 = *a1;
  if (a3)
  {
    if (v4 == 0.0 || (*a2 != 0.0 ? (v7 = v4 == *a2) : (v7 = 1), v7))
    {
      v8 = *(a1 + 2);
      if (!v8 || (v9 = *(a2 + 2)) == 0 || v8 == v9)
      {
        v10 = *(a1 + 4);
        if (!v10 || (v11 = *(a2 + 4)) == 0 || v10 == v11)
        {
          v12 = *(a1 + 5);
          if (!v12 || (v13 = *(a2 + 5)) == 0 || v12 == v13)
          {
            v14 = *(a1 + 6);
            if (!v14 || (v15 = *(a2 + 6)) == 0 || v14 == v15)
            {
              v16 = *(a1 + 7);
              if (!v16 || (v17 = *(a2 + 7)) == 0 || v16 == v17)
              {
                v18 = *(a1 + 8);
                if (!v18 || (v19 = *(a2 + 8)) == 0 || v18 == v19)
                {
                  v20 = 1;
                  if (v8)
                  {
                    if (*(a2 + 2))
                    {
                      v21 = *(a1 + 3);
                      if (v21)
                      {
                        v22 = *(a2 + 3);
                        if (v22)
                        {
                          if (v8 == 1819304813)
                          {
                            v23 = (a3 >> 1) & 1;
                            v24 = sub_113CC(a1, v23);
                            return v24 == sub_113CC(a2, v23);
                          }

                          else
                          {
                            return v21 == v22;
                          }
                        }
                      }
                    }
                  }

                  return v20;
                }
              }
            }
          }
        }
      }
    }

    return 0;
  }

  if (v4 != *a2 || *(a1 + 2) != *(a2 + 2) || *(a1 + 4) != *(a2 + 4) || *(a1 + 5) != *(a2 + 5) || *(a1 + 7) != *(a2 + 7) || *(a1 + 8) != *(a2 + 8))
  {
    return 0;
  }

  v5 = (a3 >> 1) & 1;

  return sub_11328(a1, a2, v5, 0);
}

BOOL sub_11328(uint64_t a1, uint64_t a2, int a3, int a4)
{
  if (a4)
  {
    v6.i64[0] = *(a1 + 8);
    v6.i64[1] = *(a2 + 8);
    if (vmaxv_u16(vmovn_s32(vceqzq_s32(v6))))
    {
      return 1;
    }
  }

  if (*(a1 + 8) == 1819304813)
  {
    v8 = sub_113CC(a1, a3);
    return v8 == sub_113CC(a2, a3);
  }

  else
  {
    return *(a1 + 12) == *(a2 + 12);
  }
}

uint64_t sub_113CC(_DWORD *a1, int a2)
{
  v2 = a1[3];
  if (a1[2] != 1819304813)
  {
    return v2;
  }

  v3 = v2 & 0x7FFFFFFF;
  if ((v2 & 0x7FFFFFFF) == 0)
  {
    v3 = a1[3];
  }

  if (a2)
  {
    v4 = v3;
  }

  else
  {
    v4 = v3 & 0xFFFFFFBF;
  }

  v5 = a1[6];
  if (!v5)
  {
    v9 = v4 | 8;
    v6 = a1[7];
    v8 = a1[8];
LABEL_15:
    v10 = v8 == 0;
    goto LABEL_16;
  }

  v6 = a1[7];
  if ((v2 & 0x20) != 0)
  {
    v7 = 1;
  }

  else
  {
    v7 = a1[7];
  }

  if (!v7)
  {
    v5 = 0;
    v8 = a1[8];
    v9 = v4 | 8;
    goto LABEL_15;
  }

  v5 = 8 * (v5 / v7);
  v8 = a1[8];
  v9 = v4 | 8;
  v10 = v5 == v8;
LABEL_16:
  if (v10)
  {
    v4 = v9;
  }

  v11 = (v8 & 7) == 0 && v5 == v8;
  v12 = v4 & 0xFFFFFFEF;
  if (!v11)
  {
    v12 = v4;
  }

  if (v12)
  {
    v12 &= ~4u;
  }

  v13 = (v12 & 8) == 0 || v8 > 8;
  LODWORD(v2) = v12 & 2;
  if (v13)
  {
    LODWORD(v2) = v12;
  }

  if (v6 == 1)
  {
    LODWORD(v2) = v2 & 0xFFFFFFDF;
  }

  if (v2)
  {
    return v2;
  }

  else
  {
    return 0x80000000;
  }
}

CADeprecated::CADispatchQueue *CADeprecated::CADispatchQueue::CADispatchQueue(CADeprecated::CADispatchQueue *this, const char *a2)
{
  return CADeprecated::CADispatchQueue::CADispatchQueue(this, a2, 0);
}

{
  return CADeprecated::CADispatchQueue::CADispatchQueue(this, a2, 0);
}

CADeprecated::CADispatchQueue *CADeprecated::CADispatchQueue::CADispatchQueue(CADeprecated::CADispatchQueue *this, const char *a2, NSObject *a3)
{
  *this = off_24BA8;
  *(this + 8) = 0u;
  v6 = (this + 8);
  *(this + 24) = 0u;
  CADeprecated::CAMutex::CAMutex((this + 40), "CADispatchQueue::PortDeathListMutex");
  *(this + 16) = 0;
  *(this + 17) = 0;
  *(this + 18) = 0;
  CADeprecated::CAMutex::CAMutex((this + 152), "CADispatchQueue::PortReceiverListMutex");
  v7 = dispatch_queue_create(a2, a3);
  *v6 = v7;
  if (!v7)
  {
    v9 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v9)
    {
      sub_18868(v9, v10, v11, v12, v13, v14, v15, v16);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_24B48;
    exception[2] = 2003329396;
  }

  return this;
}

void sub_115B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  CADeprecated::CAMutex::~CAMutex((v11 + 3));
  a10 = v11;
  sub_127F4(&a10);
  CADeprecated::CAMutex::~CAMutex((v10 + 40));
  a10 = (v10 + 16);
  sub_127F4(&a10);
  _Unwind_Resume(a1);
}

CADeprecated::CADispatchQueue *CADeprecated::CADispatchQueue::CADispatchQueue(CADeprecated::CADispatchQueue *this, const __CFString *a2)
{
  return CADeprecated::CADispatchQueue::CADispatchQueue(this, a2, 0);
}

{
  return CADeprecated::CADispatchQueue::CADispatchQueue(this, a2, 0);
}

CADeprecated::CADispatchQueue *CADeprecated::CADispatchQueue::CADispatchQueue(CADeprecated::CADispatchQueue *this, const __CFString *a2, NSObject *a3)
{
  *this = off_24BA8;
  *(this + 8) = 0u;
  v6 = (this + 8);
  *(this + 24) = 0u;
  CADeprecated::CAMutex::CAMutex((this + 40), "CADispatchQueue::PortDeathListMutex");
  *(this + 16) = 0;
  *(this + 17) = 0;
  *(this + 18) = 0;
  CADeprecated::CAMutex::CAMutex((this + 152), "CADispatchQueue::PortReceiverListMutex");
  v19 = a2;
  v20 = 0;
  *v18 = 256;
  CACFString::GetCString(a2, label, v18, 0x8000100);
  v7 = dispatch_queue_create(label, a3);
  *v6 = v7;
  if (!v7)
  {
    v9 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v9)
    {
      sub_18868(v9, v10, v11, v12, v13, v14, v15, v16);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_24B48;
    exception[2] = 2003329396;
  }

  sub_1F78(&v19);
  return this;
}

void CADeprecated::CADispatchQueue::~CADispatchQueue(CADeprecated::CADispatchQueue *this)
{
  *this = off_24BA8;
  v2 = (this + 16);
  sub_118A4(this + 2);
  if (*(this + 17) == *(this + 16))
  {
    sub_118A4(this + 16);
    dispatch_release(*(this + 1));
    CADeprecated::CAMutex::~CAMutex((this + 152));
    v11 = (this + 128);
    sub_127F4(&v11);
    CADeprecated::CAMutex::~CAMutex((this + 40));
    v11 = v2;
    sub_127F4(&v11);
  }

  else
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_188A4(v3, v4, v5, v6, v7, v8, v9, v10);
    }

    __break(1u);
  }
}

{
  CADeprecated::CADispatchQueue::~CADispatchQueue(this);

  operator delete();
}

void sub_118A4(void *a1)
{
  v2 = *a1;
  v3 = a1[1];
  while (v3 != v2)
  {
    v5 = *(v3 - 2);
    v3 -= 2;
    v4 = v5;
    if (v5)
    {
      dispatch_release(v4);
      *v3 = 0;
    }
  }

  a1[1] = v2;
}

void CADeprecated::CADispatchQueue::Dispatch(uint64_t a1, int a2, dispatch_block_t block)
{
  v3 = *(a1 + 8);
  if (a2)
  {
    dispatch_sync(v3, block);
  }

  else
  {
    dispatch_async(v3, block);
  }
}

void CADeprecated::CADispatchQueue::DispatchBarrier(uint64_t a1, int a2, dispatch_block_t block)
{
  v3 = *(a1 + 8);
  if (a2)
  {
    dispatch_barrier_sync(v3, block);
  }

  else
  {
    dispatch_barrier_async(v3, block);
  }
}

void CADeprecated::CADispatchQueue::Dispatch(uint64_t a1, uint64_t a2, dispatch_block_t block)
{
  if (a2)
  {
    v5 = __udivti3();
    v6 = dispatch_time(0, v5);
    v7 = *(a1 + 8);

    dispatch_after(v6, v7, block);
  }

  else
  {
    v8 = *(a1 + 8);

    dispatch_async(v8, block);
  }
}

void CADeprecated::CADispatchQueue::Dispatch(CADeprecated::CADispatchQueue *this, int a2, void *context, dispatch_function_t work)
{
  v4 = *(this + 1);
  if (a2)
  {
    dispatch_sync_f(v4, context, work);
  }

  else
  {
    dispatch_async_f(v4, context, work);
  }
}

void CADeprecated::CADispatchQueue::DispatchBarrier(CADeprecated::CADispatchQueue *this, int a2, void *context, dispatch_function_t work)
{
  v4 = *(this + 1);
  if (a2)
  {
    dispatch_barrier_sync_f(v4, context, work);
  }

  else
  {
    dispatch_barrier_async_f(v4, context, work);
  }
}

void CADeprecated::CADispatchQueue::Dispatch(CADeprecated::CADispatchQueue *this, uint64_t a2, void *context, dispatch_function_t work)
{
  if (a2)
  {
    v7 = __udivti3();
    v8 = dispatch_time(0, v7);
    v9 = *(this + 1);

    dispatch_after_f(v8, v9, context, work);
  }

  else
  {
    v10 = *(this + 1);

    dispatch_async_f(v10, context, work);
  }
}

void CADeprecated::CADispatchQueue::Dispatch_Global(intptr_t a1, int a2, void *a3)
{
  global_queue = dispatch_get_global_queue(a1, 0);
  if (a2)
  {

    dispatch_sync(global_queue, a3);
  }

  else
  {

    dispatch_async(global_queue, a3);
  }
}

void CADeprecated::CADispatchQueue::DispatchAfter_Global(intptr_t a1, uint64_t a2, void *a3)
{
  global_queue = dispatch_get_global_queue(a1, 0);
  v6 = global_queue;
  if (a2)
  {
    v7 = __udivti3();
    v8 = dispatch_time(0, v7);

    dispatch_after(v8, v6, a3);
  }

  else
  {

    dispatch_async(global_queue, a3);
  }
}

void CADeprecated::CADispatchQueue::Dispatch_Global(CADeprecated::CADispatchQueue *this, int a2, void *a3, void (__cdecl *a4)(void *), void (*a5)(void *))
{
  global_queue = dispatch_get_global_queue(this, 0);
  if (a2)
  {

    dispatch_sync_f(global_queue, a3, a4);
  }

  else
  {

    dispatch_async_f(global_queue, a3, a4);
  }
}

void CADeprecated::CADispatchQueue::DispatchAfter_Global(CADeprecated::CADispatchQueue *this, uint64_t a2, void *a3, void (__cdecl *a4)(void *), void (*a5)(void *))
{
  global_queue = dispatch_get_global_queue(this, 0);
  v9 = global_queue;
  if (a2)
  {
    v10 = __udivti3();
    v11 = dispatch_time(0, v10);

    dispatch_after_f(v11, v9, a3, a4);
  }

  else
  {

    dispatch_async_f(global_queue, a3, a4);
  }
}

void CADeprecated::CADispatchQueue::Dispatch_Main(int a1, void *a2)
{
  if (a1)
  {
    dispatch_sync(&_dispatch_main_q, a2);
  }

  else
  {
    dispatch_async(&_dispatch_main_q, a2);
  }
}

void CADeprecated::CADispatchQueue::DispatchAfter_Main(uint64_t a1, dispatch_block_t block)
{
  if (a1)
  {
    v3 = __udivti3();
    v4 = dispatch_time(0, v3);

    dispatch_after(v4, &_dispatch_main_q, block);
  }

  else
  {

    dispatch_async(&_dispatch_main_q, block);
  }
}

void CADeprecated::CADispatchQueue::Dispatch_Main(CADeprecated::CADispatchQueue *this, void *a2, void (__cdecl *a3)(void *), void (*a4)(void *))
{
  if (this)
  {
    dispatch_sync_f(&_dispatch_main_q, a2, a3);
  }

  else
  {
    dispatch_async_f(&_dispatch_main_q, a2, a3);
  }
}

void CADeprecated::CADispatchQueue::DispatchAfter_Main(CADeprecated::CADispatchQueue *this, void *context, dispatch_function_t work, void (*a4)(void *))
{
  if (this)
  {
    v6 = __udivti3();
    v7 = dispatch_time(0, v6);

    dispatch_after_f(v7, &_dispatch_main_q, context, work);
  }

  else
  {

    dispatch_async_f(&_dispatch_main_q, context, work);
  }
}

void CADeprecated::CADispatchQueue::InstallMachPortDeathNotification(uint64_t a1, unsigned int a2, void *a3)
{
  if (!a2)
  {
    v15 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v15)
    {
      sub_1891C(v15, v16, v17, v18, v19, v20, v21, v22);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_24B48;
    exception[2] = 1852797029;
  }

  v7 = a1 + 40;
  v6 = *(a1 + 40);
  v35 = a1 + 40;
  v8 = (*(v6 + 16))(a1 + 40);
  v9 = v8;
  v36 = v8;
  v10 = *(a1 + 16);
  v11 = a1 + 16;
  while (v10 != *(a1 + 24))
  {
    v12 = *(v10 + 8);
    v10 += 16;
    if (v12 == a2)
    {
      if (!v8)
      {
        return;
      }

      goto LABEL_11;
    }
  }

  v13 = dispatch_source_create(&_dispatch_source_type_mach_send, a2, 1uLL, *(a1 + 8));
  if (!v13)
  {
    v24 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v24)
    {
      sub_188E0(v24, v25, v26, v27, v28, v29, v30, v31);
    }

    v32 = __cxa_allocate_exception(0x10uLL);
    *v32 = off_24B48;
    v32[2] = 2003329396;
  }

  v14 = v13;
  dispatch_source_set_event_handler(v13, a3);
  object = v14;
  v34 = a2;
  sub_12060(v11, &object);
  if (object)
  {
    dispatch_release(object);
  }

  dispatch_resume(v14);
  if (v9)
  {
LABEL_11:
    (*(*v7 + 24))(v7);
  }
}

void sub_12038(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, dispatch_object_t object, uint64_t a10, char a11)
{
  if (object)
  {
    dispatch_release(object);
  }

  sub_B96C(&a11);
  _Unwind_Resume(a1);
}

uint64_t sub_12060(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = sub_12848(a1, a2);
  }

  else
  {
    v4 = *a2;
    *v3 = *a2;
    *(v3 + 8) = *(a2 + 8);
    if (v4)
    {
      dispatch_retain(v4);
    }

    result = v3 + 16;
  }

  *(a1 + 8) = result;
  return result;
}

void CADeprecated::CADispatchQueue::RemoveMachPortDeathNotification(CADeprecated::CADispatchQueue *this, int a2)
{
  v4 = this + 40;
  v19 = this + 40;
  v5 = (*(*(this + 5) + 16))(this + 40);
  v20 = v5;
  v7 = *(v4 - 3);
  v6 = *(v4 - 2);
  v8 = -v7;
  do
  {
    if (v7 == v6)
    {
      if (!v5)
      {
        return;
      }

      goto LABEL_14;
    }

    v9 = *(v7 + 8);
    v8 -= 16;
    v7 += 16;
    v10 = v9 == a2;
    v11 = v9 != a2;
  }

  while (!v10);
  v12 = 16 * v11;
  v13 = *(v7 + v12 - 16);
  if (v13)
  {
    dispatch_source_cancel(v13);
    v6 = *(this + 3);
  }

  sub_12B70(&v21, v12 - v8, v6, v12 - v8 - 16);
  v15 = v14;
  v16 = *(this + 3);
  while (v16 != v15)
  {
    v18 = *(v16 - 2);
    v16 -= 2;
    v17 = v18;
    if (v18)
    {
      dispatch_release(v17);
      *v16 = 0;
    }
  }

  *(this + 3) = v15;
  if (v20)
  {
LABEL_14:
    (*(*v19 + 24))(v19);
  }
}

void sub_121D0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_B96C(va);
  _Unwind_Resume(a1);
}

void CADeprecated::CADispatchQueue::InstallMachPortReceiver(uint64_t a1, unsigned int a2, void *a3)
{
  if (!a2)
  {
    v15 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v15)
    {
      sub_18994(v15, v16, v17, v18, v19, v20, v21, v22);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_24B48;
    exception[2] = 1852797029;
  }

  v7 = a1 + 152;
  v6 = *(a1 + 152);
  v35 = a1 + 152;
  v8 = (*(v6 + 16))(a1 + 152);
  v9 = v8;
  v36 = v8;
  v10 = *(a1 + 128);
  v11 = a1 + 128;
  while (v10 != *(a1 + 136))
  {
    v12 = *(v10 + 8);
    v10 += 16;
    if (v12 == a2)
    {
      if (!v8)
      {
        return;
      }

      goto LABEL_11;
    }
  }

  v13 = dispatch_source_create(&_dispatch_source_type_mach_recv, a2, 0, *(a1 + 8));
  if (!v13)
  {
    v24 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v24)
    {
      sub_18958(v24, v25, v26, v27, v28, v29, v30, v31);
    }

    v32 = __cxa_allocate_exception(0x10uLL);
    *v32 = off_24B48;
    v32[2] = 2003329396;
  }

  v14 = v13;
  dispatch_source_set_event_handler(v13, a3);
  object = v14;
  v34 = a2;
  sub_12060(v11, &object);
  if (object)
  {
    dispatch_release(object);
  }

  dispatch_resume(v14);
  if (v9)
  {
LABEL_11:
    (*(*v7 + 24))(v7);
  }
}

void sub_123D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, dispatch_object_t object, uint64_t a10, char a11)
{
  if (object)
  {
    dispatch_release(object);
  }

  sub_B96C(&a11);
  _Unwind_Resume(a1);
}

void CADeprecated::CADispatchQueue::RemoveMachPortReceiver(uint64_t a1, int a2, void *a3)
{
  v6 = a1 + 152;
  v22 = a1 + 152;
  v7 = (*(*(a1 + 152) + 16))(a1 + 152);
  v23 = v7;
  v9 = *(v6 - 24);
  v8 = *(v6 - 16);
  v10 = -v9;
  do
  {
    if (v9 == v8)
    {
      if (!v7)
      {
        return;
      }

      goto LABEL_16;
    }

    v11 = *(v9 + 8);
    v10 -= 16;
    v9 += 16;
    v12 = v11 == a2;
    v13 = v11 != a2;
  }

  while (!v12);
  v14 = 16 * v13;
  v15 = v9 + v14;
  v16 = *(v9 + v14 - 16);
  if (v16)
  {
    if (a3)
    {
      dispatch_source_set_cancel_handler(v16, a3);
      v16 = *(v15 - 16);
    }

    dispatch_source_cancel(v16);
    v8 = *(a1 + 136);
  }

  sub_12B70(&v24, v14 - v10, v8, v14 - v10 - 16);
  v18 = v17;
  v19 = *(a1 + 136);
  while (v19 != v18)
  {
    v21 = *(v19 - 2);
    v19 -= 2;
    v20 = v21;
    if (v21)
    {
      dispatch_release(v20);
      *v19 = 0;
    }
  }

  *(a1 + 136) = v18;
  if (v23)
  {
LABEL_16:
    (*(*v22 + 24))(v22);
  }
}

void sub_12534(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_B96C(va);
  _Unwind_Resume(a1);
}

void CADeprecated::CADispatchQueue::RemoveMachPortReceiver(CADeprecated::CADispatchQueue *this, int a2, char a3, char a4)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 0x40000000;
  v4[2] = sub_125C0;
  v4[3] = &unk_24BB8;
  v6 = a3;
  v5 = a2;
  v7 = a4;
  CADeprecated::CADispatchQueue::RemoveMachPortReceiver(this, a2, v4);
}

void sub_125C0(uint64_t a1)
{
  if (*(a1 + 36) == 1)
  {
    v2 = mach_port_deallocate(mach_task_self_, *(a1 + 32));
    if (v2)
    {
      v4 = v2;
      v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
      if (v3)
      {
        sub_189D0(v4);
      }

      goto LABEL_8;
    }
  }

  if (*(a1 + 37) == 1)
  {
    v3 = mach_port_mod_refs(mach_task_self_, *(a1 + 32), 1u, -1);
    if (v3)
    {
      while (1)
      {
        v5 = v3;
        v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
        if (v3)
        {
          break;
        }

LABEL_8:
        __break(1u);
      }

      sub_18A50(v5);
      __break(1u);
    }
  }
}

uint64_t CADeprecated::CADispatchQueue::GetGlobalSerialQueue(CADeprecated::CADispatchQueue *this)
{
  if (CADeprecated::CADispatchQueue::sGlobalSerialQueueInitialized != -1)
  {
    sub_18AD0();
  }

  result = CADeprecated::CADispatchQueue::sGlobalSerialQueue;
  if (!CADeprecated::CADispatchQueue::sGlobalSerialQueue)
  {
    v2 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v2)
    {
      sub_18AF0(v2, v3, v4, v5, v6, v7, v8, v9);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_24B48;
    exception[2] = 1852797029;
  }

  return result;
}

void CADeprecated::CADispatchQueue::EventSource::Retain(NSObject **this)
{
  v1 = *this;
  if (v1)
  {
    dispatch_retain(v1);
  }
}

void CADeprecated::CADispatchQueue::EventSource::Release(NSObject **this)
{
  v2 = *this;
  if (v2)
  {
    dispatch_release(v2);
    *this = 0;
  }
}

void sub_127F4(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_118A4(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

uint64_t sub_12848(uint64_t a1, uint64_t a2)
{
  v2 = (*(a1 + 8) - *a1) >> 4;
  v3 = v2 + 1;
  if ((v2 + 1) >> 60)
  {
    sub_837C();
  }

  v6 = *(a1 + 16) - *a1;
  if (v6 >> 3 > v3)
  {
    v3 = v6 >> 3;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFF0)
  {
    v7 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v19 = a1;
  if (v7)
  {
    sub_12960(a1, v7);
  }

  v8 = 16 * v2;
  v16 = 0;
  v17 = v8;
  *(&v18 + 1) = 0;
  v9 = *a2;
  *v8 = *a2;
  *(v8 + 8) = *(a2 + 8);
  if (v9)
  {
    dispatch_retain(v9);
  }

  *&v18 = v8 + 16;
  v10 = *(a1 + 8);
  v11 = v8 + *a1 - v10;
  sub_129A8(a1, *a1, v10, v11);
  v12 = *a1;
  *a1 = v11;
  v13 = *(a1 + 16);
  v15 = v18;
  *(a1 + 8) = v18;
  *&v18 = v12;
  *(&v18 + 1) = v13;
  v16 = v12;
  v17 = v12;
  sub_12AE0(&v16);
  return v15;
}

void sub_1294C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_12AE0(va);
  _Unwind_Resume(a1);
}

void sub_12960(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  sub_846C();
}

uint64_t sub_129A8(uint64_t a1, dispatch_object_t *a2, dispatch_object_t *a3, uint64_t a4)
{
  v11 = a4;
  v12 = a4;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  if (a2 == a3)
  {
    v10 = 1;
  }

  else
  {
    v5 = a2;
    v6 = a2;
    do
    {
      v7 = *v6;
      *a4 = *v6;
      *(a4 + 8) = *(v6 + 2);
      if (v7)
      {
        dispatch_retain(v7);
        a4 = v12;
      }

      v6 += 2;
      a4 += 16;
      v12 = a4;
    }

    while (v6 != a3);
    v10 = 1;
    while (v5 != a3)
    {
      if (*v5)
      {
        dispatch_release(*v5);
        *v5 = 0;
      }

      v5 += 2;
    }
  }

  return sub_12A64(v9);
}

uint64_t sub_12A64(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_12A9C(a1);
  }

  return a1;
}

void sub_12A9C(uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v4 = *(v1 - 2);
    v1 -= 2;
    v3 = v4;
    if (v4)
    {
      dispatch_release(v3);
      *v1 = 0;
    }
  }
}

uint64_t sub_12AE0(uint64_t a1)
{
  sub_12B18(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_12B18(uint64_t a1, void *a2)
{
  v2 = *(a1 + 16);
  while (v2 != a2)
  {
    v6 = *(v2 - 2);
    v2 -= 2;
    v5 = v6;
    *(a1 + 16) = v2;
    if (v6)
    {
      dispatch_release(v5);
      *v2 = 0;
      v2 = *(a1 + 16);
    }
  }
}

uint64_t sub_12B70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      if (*a4)
      {
        dispatch_release(*a4);
        *a4 = 0;
      }

      v7 = *v5;
      *a4 = *v5;
      *(a4 + 8) = *(v5 + 8);
      if (v7)
      {
        dispatch_retain(v7);
      }

      v5 += 16;
      a4 += 16;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

void CAVolumeCurve::CAVolumeCurve(CAVolumeCurve *this)
{
  *this = 0;
  *(this + 3) = 0;
  *(this + 2) = 0;
  *(this + 1) = this + 16;
  *(this + 32) = 1;
  *(this + 9) = 5;
  *(this + 5) = 0x3F80000040000000;
}

{
  *this = 0;
  *(this + 3) = 0;
  *(this + 2) = 0;
  *(this + 1) = this + 16;
  *(this + 32) = 1;
  *(this + 9) = 5;
  *(this + 5) = 0x3F80000040000000;
}

uint64_t CAVolumeCurve::GetMinimumRaw(CAVolumeCurve *this)
{
  if (*(this + 3))
  {
    return *(*(this + 1) + 28);
  }

  else
  {
    return 0;
  }
}

uint64_t CAVolumeCurve::GetMaximumRaw(CAVolumeCurve *this)
{
  v1 = *(this + 3);
  if (!v1)
  {
    return 0;
  }

  v3 = *(this + 1);
  sub_1339C(&v3, v1 - 1);
  return *(v3 + 8);
}

double CAVolumeCurve::GetMinimumDB(CAVolumeCurve *this)
{
  if (!*(this + 3))
  {
    return 0.0;
  }

  LODWORD(result) = *(*(this + 1) + 36);
  return result;
}

double CAVolumeCurve::GetMaximumDB(CAVolumeCurve *this)
{
  v1 = *(this + 3);
  if (!v1)
  {
    return 0.0;
  }

  v3 = *(this + 1);
  sub_1339C(&v3, v1 - 1);
  LODWORD(result) = *(v3 + 10);
  return result;
}

uint64_t CAVolumeCurve::SetTransferFunction(uint64_t this, unsigned int a2)
{
  *(this + 36) = a2;
  if (a2 > 0xF)
  {
    v4 = 1.0;
    v3 = 2.0;
    v2 = 1;
  }

  else
  {
    v2 = byte_1CE70[a2];
    v3 = flt_1CE80[a2];
    v4 = flt_1CEC0[a2];
  }

  *(this + 32) = v2;
  *(this + 40) = v3;
  *(this + 44) = v4;
  return this;
}

void CAVolumeCurve::AddRange(CAVolumeCurve *this, int a2, int a3, float a4, float a5)
{
  v7 = *(this + 1);
  v5 = this + 8;
  v6 = v7;
  if (v7 == v5 + 8)
  {
    goto LABEL_25;
  }

  do
  {
    v8 = *(v6 + 7);
    v9 = *(v6 + 8) > a2 && v8 < a3;
    v10 = v9;
    if (v9 || v8 <= a2)
    {
      v12 = v6;
    }

    else
    {
      v11 = *(v6 + 1);
      if (v11)
      {
        do
        {
          v12 = v11;
          v11 = *v11;
        }

        while (v11);
      }

      else
      {
        do
        {
          v12 = *(v6 + 2);
          v13 = *v12 == v6;
          v6 = v12;
        }

        while (!v13);
      }
    }

    if (v12 == v5 + 8)
    {
      v14 = 1;
    }

    else
    {
      v14 = v10;
    }

    if (v14)
    {
      break;
    }

    v6 = v12;
  }

  while (v8 > a2);
  if ((v10 & 1) == 0)
  {
LABEL_25:
    v15[0] = a2;
    v15[1] = a3;
    *&v15[2] = a4;
    *&v15[3] = a5;
    sub_13428(v5, v15);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v15[0]) = 0;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, " CAVolumeCurve::AddRange: new point overlaps", v15, 2u);
  }
}

void CAVolumeCurve::ResetRange(CAVolumeCurve *this)
{
  v1 = (this + 16);
  sub_136EC(this + 8, *(this + 2));
  *v1 = 0;
  v1[1] = 0;
  *(v1 - 1) = v1;
}

BOOL CAVolumeCurve::CheckForContinuity(CAVolumeCurve *this)
{
  v1 = *(this + 1);
  v2 = this + 16;
  if (v1 == this + 16)
  {
    return 1;
  }

  v3 = *(v1 + 7);
  v4 = *(v1 + 9);
  do
  {
    v5 = *(v1 + 1);
    v6 = v1;
    if (v5)
    {
      do
      {
        v7 = v5;
        v5 = *v5;
      }

      while (v5);
    }

    else
    {
      do
      {
        v7 = *(v6 + 2);
        v10 = *v7 == v6;
        v6 = v7;
      }

      while (!v10);
    }

    v8 = *(v1 + 7);
    v9 = *(v1 + 9);
    v10 = v4 == v9 && v3 == v8;
    result = v10;
    if (v7 == v2)
    {
      break;
    }

    v3 = v3 - v8 + *(v1 + 8);
    v4 = v4 + (*(v1 + 10) - v9);
    v1 = v7;
  }

  while (result);
  return result;
}

uint64_t CAVolumeCurve::ConvertDBToRaw(CAVolumeCurve *this, float a2)
{
  if (*(this + 3))
  {
    v4 = *(*(this + 1) + 36);
  }

  else
  {
    v4 = 0.0;
  }

  MaximumDB = CAVolumeCurve::GetMaximumDB(this);
  if (v4 <= a2)
  {
    v6 = a2;
  }

  else
  {
    v6 = v4;
  }

  if (v6 <= *&MaximumDB)
  {
    *&MaximumDB = v6;
  }

  v7 = *(this + 1);
  result = *(v7 + 7);
  if (v7 != (this + 16))
  {
    do
    {
      v9 = *(v7 + 8) - *(v7 + 7);
      v10 = *(v7 + 10);
      if (*&MaximumDB > v10)
      {
        result = (v9 + result);
      }

      else
      {
        v11 = llroundf((*&MaximumDB - *(v7 + 9)) / ((v10 - *(v7 + 9)) / v9));
        v12 = __OFADD__(result, v11);
        v13 = result + v11;
        v14 = ((result | v11) >> 31) ^ 0x7FFFFFFF;
        if (v12)
        {
          result = v14;
        }

        else
        {
          result = v13;
        }
      }

      v15 = v7[1];
      if (v15)
      {
        do
        {
          v16 = v15;
          v15 = *v15;
        }

        while (v15);
      }

      else
      {
        do
        {
          v16 = v7[2];
          v17 = *v16 == v7;
          v7 = v16;
        }

        while (!v17);
      }

      v17 = *&MaximumDB <= v10 || v16 == (this + 16);
      v7 = v16;
    }

    while (!v17);
  }

  return result;
}

uint64_t CAVolumeCurve::ConvertRawToDB(CAVolumeCurve *this, int a2)
{
  if (*(this + 3))
  {
    v4 = *(*(this + 1) + 28);
  }

  else
  {
    v4 = 0;
  }

  result = CAVolumeCurve::GetMaximumRaw(this);
  if (v4 <= a2)
  {
    v6 = a2;
  }

  else
  {
    v6 = v4;
  }

  if (v6 >= result)
  {
    v6 = result;
  }

  v7 = v6 - v4;
  v8 = *(this + 1);
  v9 = v8[9];
  v10 = (this + 16);
  v11 = v7 < 1 || v8 == v10;
  if (!v11)
  {
    do
    {
      v12 = *(v8 + 8) - *(v8 + 7);
      if (v7 >= v12)
      {
        v13 = *(v8 + 8) - *(v8 + 7);
      }

      else
      {
        v13 = v7;
      }

      v14 = *(v8 + 1);
      v15 = v8;
      if (v14)
      {
        do
        {
          v16 = v14;
          v14 = *v14;
        }

        while (v14);
      }

      else
      {
        do
        {
          v16 = *(v15 + 2);
          v11 = *v16 == v15;
          v15 = v16;
        }

        while (!v11);
      }

      v9 = v9 + (v13 * ((v8[10] - v8[9]) / v12));
      v7 -= v13;
      if (v7 < 1)
      {
        break;
      }

      v8 = v16;
    }

    while (v16 != v10);
  }

  return result;
}

float CAVolumeCurve::ConvertRawToScalar(CAVolumeCurve *this, int a2)
{
  if (*(this + 3))
  {
    v4 = *(*(this + 1) + 28);
  }

  else
  {
    v4 = 0;
  }

  MaximumRaw = CAVolumeCurve::GetMaximumRaw(this);
  if (v4 <= a2)
  {
    v6 = a2;
  }

  else
  {
    v6 = v4;
  }

  if (v6 >= MaximumRaw)
  {
    v6 = MaximumRaw;
  }

  if (*(this + 3))
  {
    v7 = *(*(this + 1) + 36);
  }

  else
  {
    v7 = 0.0;
  }

  v8 = (v6 - v4) / (MaximumRaw - v4);
  MaximumDB = CAVolumeCurve::GetMaximumDB(this);
  if (*(this + 32) != 1 || (*&MaximumDB - v7) <= 30.0)
  {
    return v8;
  }

  v10 = *(this + 10) / *(this + 11);

  return powf(v8, v10);
}

uint64_t CAVolumeCurve::GetIsApplyingTransferFunction(CAVolumeCurve *this)
{
  if (*(this + 3))
  {
    v2 = *(*(this + 1) + 36);
  }

  else
  {
    v2 = 0.0;
  }

  MaximumDB = CAVolumeCurve::GetMaximumDB(this);
  if ((*&MaximumDB - v2) > 30.0)
  {
    return *(this + 32);
  }

  else
  {
    return 0;
  }
}

float CAVolumeCurve::ConvertDBToScalar(CAVolumeCurve *this, float a2)
{
  v3 = CAVolumeCurve::ConvertDBToRaw(this, a2);

  return CAVolumeCurve::ConvertRawToScalar(this, v3);
}

uint64_t CAVolumeCurve::ConvertScalarToRaw(CAVolumeCurve *this, float a2)
{
  v3 = 0.0;
  if (*(this + 3))
  {
    v4 = *(*(this + 1) + 28);
  }

  else
  {
    v4 = 0;
  }

  v5 = fmaxf(a2, 0.0);
  MaximumRaw = CAVolumeCurve::GetMaximumRaw(this);
  if (*(this + 3))
  {
    v3 = *(*(this + 1) + 36);
  }

  v7 = fminf(v5, 1.0);
  MaximumDB = CAVolumeCurve::GetMaximumDB(this);
  v9 = *&MaximumDB - v3;
  if (*(this + 32) == 1 && v9 > 30.0)
  {
    v7 = powf(v7, *(this + 11) / *(this + 10));
  }

  v11 = llroundf(v7 * (MaximumRaw - v4));
  v12 = __OFADD__(v4, v11);
  v13 = v4 + v11;
  v14 = ((v4 | v11) >> 31) ^ 0x7FFFFFFF;
  if (v12)
  {
    return v14;
  }

  else
  {
    return v13;
  }
}