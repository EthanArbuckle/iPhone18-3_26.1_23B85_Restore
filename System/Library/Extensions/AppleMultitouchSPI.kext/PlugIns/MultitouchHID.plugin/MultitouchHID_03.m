uint64_t MTSimpleHIDManager::deviceDidBootload(MTSimpleHIDManager *this)
{
  v14 = *MEMORY[0x29EDCA608];
  (*(*this + 80))(this);
  MTDeviceGetDeviceID();
  v2 = MTLoggingPlugin();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v9 = 0;
    _os_log_impl(&dword_29D381000, v2, OS_LOG_TYPE_DEFAULT, "device bootloaded (deviceID 0x%llX)", buf, 0xCu);
  }

  (*(*this + 488))(this);
  (*(*this + 592))(this, 1);
  *(this + 18) = 0;
  *(this + 152) = 0;
  MTAbsoluteTimeGetCurrent();
  *(this + 8) = v3;
  (*(*this + 304))(this);
  v4 = *(this + 14);
  if (v4)
  {
    (*(*v4 + 32))(v4);
  }

  else if (*(this + 80) == 1)
  {
    (*(*this + 408))(this, *(this + 21), 0);
  }

  (*(*this + 80))(this);
  if ((MTDeviceDriverIsReady() & 1) == 0)
  {
    v5 = MTLoggingPlugin();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v9 = "";
      v10 = 2080;
      v11 = "MTSimpleHIDManager::";
      v12 = 2080;
      v13 = "deviceDidBootload";
      _os_log_impl(&dword_29D381000, v5, OS_LOG_TYPE_DEFAULT, "[HID] [MT] %s%s%s Driver is still not ready", buf, 0x20u);
    }
  }

  result = (*(*this + 328))(this);
  if ((result & 1) == 0)
  {
    (*(*this + 80))(this);
    result = MTDeviceDriverIsReady();
    if (result)
    {
      result = (*(*this + 320))(this);
    }
  }

  v7 = *MEMORY[0x29EDCA608];
  return result;
}

void MTSimpleHIDManager::issueWakeEvent(MTSimpleHIDManager *this)
{
  v2 = *MEMORY[0x29EDB8ED8];
  mach_absolute_time();
  KeyboardEvent = IOHIDEventCreateKeyboardEvent();
  (*(*this + 136))(this, KeyboardEvent, 0);
  CFRelease(KeyboardEvent);
  mach_absolute_time();
  v4 = IOHIDEventCreateKeyboardEvent();
  (*(*this + 136))(this, v4, 0);

  CFRelease(v4);
}

uint64_t MTSimpleHIDManager::setPluginDefaultProperties(MTSimpleHIDManager *this)
{
  (*(*this + 312))(this);
  v2 = *MEMORY[0x29EDB8EF8];
  if (_printHIDEvents)
  {
    v3 = *MEMORY[0x29EDB8F00];
  }

  else
  {
    v3 = *MEMORY[0x29EDB8EF8];
  }

  (*(*this + 568))(this, @"PrintHIDEvents", v3);
  v4 = *(*this + 568);

  return v4(this, @"MotionActivityInterested", v2);
}

void MTSimpleHIDManager::setDeviceDefaultProperties(MTSimpleHIDManager *this)
{
  if (*(this + 122) == 1)
  {
    valuePtr = 0;
    v2 = *MEMORY[0x29EDB8ED8];
    v3 = CFNumberCreate(*MEMORY[0x29EDB8ED8], kCFNumberSInt16Type, &valuePtr);
    if (!v3)
    {
      goto LABEL_7;
    }

    v4 = v3;
    (*(*this + 568))(this, @"InputDetectionMode", v3);
  }

  else
  {
    v12 = 0;
    v2 = *MEMORY[0x29EDB8ED8];
    v5 = CFNumberCreate(*MEMORY[0x29EDB8ED8], kCFNumberSInt16Type, &v12);
    if (!v5)
    {
      goto LABEL_7;
    }

    v4 = v5;
    (*(*this + 568))(this, @"TouchDetectionMode", v5);
  }

  CFRelease(v4);
LABEL_7:
  v11 = 1;
  v6 = CFNumberCreate(v2, kCFNumberSInt16Type, &v11);
  if (v6)
  {
    v7 = v6;
    (*(*this + 568))(this, @"GraphicsOrientation", v6);
    CFRelease(v7);
  }

  v10 = 0;
  v8 = CFNumberCreate(v2, kCFNumberSInt8Type, &v10);
  if (v8)
  {
    v9 = v8;
    (*(*this + 568))(this, @"WristState", v8);
    CFRelease(v9);
  }

  if ((*(this + 160) & 0x20) != 0)
  {
    (*(*this + 352))(this);
  }

  *(this + 126) = 1;
}

uint64_t MTSimpleHIDManager::devicePropertiesBecameAvailable(MTSimpleHIDManager *this)
{
  v2 = (*(*this + 560))(this, @"InputDetectionMode");
  if (*(this + 122) != 1 || v2 != 0)
  {
    if (!v2)
    {
      return (*(*this + 336))(this, 1);
    }

    goto LABEL_9;
  }

  valuePtr = 0;
  v4 = CFNumberCreate(*MEMORY[0x29EDB8ED8], kCFNumberSInt16Type, &valuePtr);
  if (v4)
  {
    v5 = v4;
    (*(*this + 568))(this, @"InputDetectionMode", v4);
    v2 = v5;
LABEL_9:
    CFRelease(v2);
  }

  return (*(*this + 336))(this, 1);
}

uint64_t MTSimpleHIDManager::restoreDevicePropertiesToDevice(MTSimpleHIDManager *this)
{
  v2 = *this + 560;
  if (*(this + 122) == 1)
  {
    v3 = @"InputDetectionMode";
  }

  else
  {
    v3 = @"TouchDetectionMode";
  }

  v4 = (*(*this + 560))(this, v3);
  (*(*this + 392))(this, v3, v4, 1);
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = (*(*this + 560))(this, @"GraphicsOrientation");
  (*(*this + 392))(this, @"GraphicsOrientation", v5, 1);
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = (*(*this + 560))(this, @"WristState");
  (*(*this + 392))(this, @"WristState", v6, 1);
  if (v6)
  {
    CFRelease(v6);
  }

  result = (*(*this + 368))(this);
  if ((*(this + 160) & 0x20) != 0)
  {
    v8 = *(*this + 352);

    return v8(this);
  }

  return result;
}

uint64_t MTSimpleHIDManager::setDeviceUsages(MTSimpleHIDManager *this)
{
  v2 = *(this + 39);
  v4 = v2 < 0x3E8 || v2 - 3000 < 0x3E8;
  (*(*this + 80))(this);
  IsBuiltIn = MTDeviceIsBuiltIn();
  valuePtr = 13;
  v6 = *MEMORY[0x29EDB8ED8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 2, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  v8 = CFNumberCreate(v6, kCFNumberSInt32Type, &valuePtr);
  if (v8)
  {
    v9 = v8;
    (*(*this + 568))(this, @"PrimaryUsagePage", v8);
    if (Mutable)
    {
      CFDictionaryAddValue(Mutable, @"DeviceUsagePage", v9);
    }

    CFRelease(v9);
  }

  valuePtr = 12;
  v10 = CFNumberCreate(v6, kCFNumberSInt32Type, &valuePtr);
  if (v10)
  {
    v11 = v10;
    (*(*this + 568))(this, @"PrimaryUsage", v10);
    if (Mutable)
    {
      CFDictionaryAddValue(Mutable, @"DeviceUsage", v11);
    }

    CFRelease(v11);
  }

  if (v4)
  {
    v12 = CFDictionaryCreateMutable(v6, 2, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
    valuePtr = 13;
    v13 = CFNumberCreate(v6, kCFNumberSInt32Type, &valuePtr);
    if (v13)
    {
      v14 = v13;
      if (v12)
      {
        CFDictionaryAddValue(v12, @"DeviceUsagePage", v13);
      }

      CFRelease(v14);
    }

    if (IsBuiltIn)
    {
      v15 = 4;
    }

    else
    {
      v15 = 5;
    }

    valuePtr = v15;
    v16 = CFNumberCreate(v6, kCFNumberSInt32Type, &valuePtr);
    if (v16)
    {
      v17 = v16;
      if (v12)
      {
        CFDictionaryAddValue(v12, @"DeviceUsage", v16);
      }

      (*(*this + 568))(this, @"PrimaryUsage", v17);
      CFRelease(v17);
    }
  }

  else
  {
    v12 = 0;
  }

  (*(*this + 80))(this);
  if (MTDeviceGetSensorRegionOfType())
  {
    v18 = 0;
  }

  else
  {
    *(this + 122) = 1;
    v18 = CFDictionaryCreateMutable(v6, 2, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
    if (v18)
    {
      valuePtr = 65280;
      v32 = CFNumberCreate(v6, kCFNumberSInt32Type, &valuePtr);
      if (v32)
      {
        v33 = v32;
        CFDictionaryAddValue(v18, @"DeviceUsagePage", v32);
        CFRelease(v33);
      }

      valuePtr = 8;
      v34 = CFNumberCreate(v6, kCFNumberSInt32Type, &valuePtr);
      if (v34)
      {
        v35 = v34;
        CFDictionaryAddValue(v18, @"DeviceUsage", v34);
        CFRelease(v35);
      }
    }
  }

  (*(*this + 80))(this);
  if (MTDeviceSupportsForce())
  {
    v19 = CFDictionaryCreateMutable(v6, 2, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
    if (v19)
    {
      valuePtr = 65280;
      v20 = CFNumberCreate(v6, kCFNumberSInt32Type, &valuePtr);
      if (v20)
      {
        v21 = v20;
        CFDictionaryAddValue(v19, @"DeviceUsagePage", v20);
        CFRelease(v21);
      }

      valuePtr = 19;
      v22 = CFNumberCreate(v6, kCFNumberSInt32Type, &valuePtr);
      if (v22)
      {
        v23 = v22;
        CFDictionaryAddValue(v19, @"DeviceUsage", v22);
        CFRelease(v23);
      }
    }
  }

  else
  {
    v19 = 0;
  }

  (*(*this + 80))(this);
  MTDeviceGetFamilyID();
  v24 = CFArrayCreateMutable(v6, 2, MEMORY[0x29EDB9000]);
  if (v24)
  {
    v25 = v24;
    if (Mutable)
    {
      CFArrayAppendValue(v24, Mutable);
    }

    if (v12)
    {
      CFArrayAppendValue(v25, v12);
    }

    if (v18)
    {
      CFArrayAppendValue(v25, v18);
    }

    if (v19)
    {
      CFArrayAppendValue(v25, v19);
    }

    (*(*this + 568))(this, @"DeviceUsagePairs", v25);
    CFRelease(v25);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v12)
  {
    CFRelease(v12);
  }

  if (v18)
  {
    CFRelease(v18);
  }

  if (v19)
  {
    CFRelease(v19);
  }

  (*(*this + 80))(this);
  v26 = MTDeviceIsBuiltIn();
  v27 = *MEMORY[0x29EDB8F00];
  v28 = *MEMORY[0x29EDB8EF8];
  if (v26)
  {
    v29 = *MEMORY[0x29EDB8F00];
  }

  else
  {
    v29 = *MEMORY[0x29EDB8EF8];
  }

  (*(*this + 568))(this, @"Built-In", v29);
  if ((v4 & IsBuiltIn) != 0)
  {
    v30 = v27;
  }

  else
  {
    v30 = v28;
  }

  return (*(*this + 568))(this, @"DisplayIntegrated", v30);
}

void MTSimpleHIDManager::enableReportingOfAllInputs(dispatch_object_t *this)
{
  dispatch_retain(this[22]);
  dispatch_retain(this[23]);
  v3 = this[22];
  v2 = this[23];
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 0x40000000;
  block[2] = ___ZN18MTSimpleHIDManager26enableReportingOfAllInputsEv_block_invoke;
  block[3] = &__block_descriptor_tmp_0;
  block[4] = this;
  dispatch_group_async(v2, v3, block);
}

void ___ZN18MTSimpleHIDManager26enableReportingOfAllInputsEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  ((*v1)[45].isa)(v1);
  dispatch_release(v1[23]);
  v2 = v1[22];

  dispatch_release(v2);
}

void MTSimpleHIDManager::_enableReportingOfAllInputs(MTSimpleHIDManager *this)
{
  v22 = *MEMORY[0x29EDCA608];
  (*(*this + 80))(this);
  Report = MTDeviceGetReport();
  if (Report)
  {
    v3 = Report;
    v4 = MTLoggingPlugin();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v13 = "[Error] ";
      v14 = 2080;
      v15 = "MTSimpleHIDManager::";
      v16 = 2080;
      v17 = "_enableReportingOfAllInputs";
      v18 = 1024;
      v19 = v3;
      v5 = "[HID] [MT] %s%s%s Error 0x%08X getting detection options";
      v6 = v4;
      v7 = 38;
LABEL_7:
      _os_log_impl(&dword_29D381000, v6, OS_LOG_TYPE_ERROR, v5, buf, v7);
    }
  }

  else
  {
    (*(*this + 80))(this);
    v8 = MTDeviceSetReport();
    if (v8)
    {
      v9 = v8;
      v10 = MTLoggingPlugin();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 136316162;
        v13 = "[Error] ";
        v14 = 2080;
        v15 = "MTSimpleHIDManager::";
        v16 = 2080;
        v17 = "_enableReportingOfAllInputs";
        v18 = 1024;
        v19 = v9;
        v20 = 1024;
        v21 = 9;
        v5 = "[HID] [MT] %s%s%s Error 0x%08X setting detection options to 0x%02X";
        v6 = v10;
        v7 = 44;
        goto LABEL_7;
      }
    }
  }

  v11 = *MEMORY[0x29EDCA608];
}

void MTSimpleHIDManager::setFieldDetectionStatus(dispatch_object_t *this)
{
  if (*(this + 41))
  {
    dispatch_retain(this[22]);
    dispatch_retain(this[23]);
    v3 = this[22];
    v2 = this[23];
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 0x40000000;
    block[2] = ___ZN18MTSimpleHIDManager23setFieldDetectionStatusEv_block_invoke;
    block[3] = &__block_descriptor_tmp_272;
    block[4] = this;
    dispatch_group_async(v2, v3, block);
  }
}

void ___ZN18MTSimpleHIDManager23setFieldDetectionStatusEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  ((*v1)[47].isa)(v1);
  dispatch_release(v1[23]);
  v2 = v1[22];

  dispatch_release(v2);
}

uint64_t MTSimpleHIDManager::_setFieldDetectionStatus(MTSimpleHIDManager *this)
{
  *(this + 41);
  (*(*this + 80))(this);
  return MTDeviceSetReport();
}

uint64_t MTSimpleHIDManager::setDeviceIsReady(MTSimpleHIDManager *this, int a2)
{
  *(this + 120) = a2;
  v2 = MEMORY[0x29EDB8F00];
  v3 = *this + 568;
  if (!a2)
  {
    v2 = MEMORY[0x29EDB8EF8];
  }

  return (*(*this + 568))(this, @"DeviceIsReady", *v2);
}

BOOL MTSimpleHIDManager::checkForParserDisabled(MTSimpleHIDManager *this)
{
  (*(*this + 80))(this);
  if (!MTDeviceGetService())
  {
    return 0;
  }

  (*(*this + 80))(this);
  Service = MTDeviceGetService();
  CFProperty = IORegistryEntryCreateCFProperty(Service, @"ParserDisabled", *MEMORY[0x29EDB8ED8], 0);
  v4 = CFProperty == *MEMORY[0x29EDB8F00];
  if (CFProperty)
  {
    CFRelease(CFProperty);
  }

  return v4;
}

CFDictionaryRef MTSimpleHIDManager::copyProperty(CFDictionaryRef *this, const __CFString *a2)
{
  v4 = MTSimpleHIDManager::propertyTypeFromString(a2, a2);
  v5 = v4;
  if (v4 <= 25)
  {
    if (v4 == 13)
    {
      (*(*this + 21))(v36, this);
      v15 = v37;
    }

    else
    {
      if (v4 != 14)
      {
        if (v4 == 24)
        {
          LODWORD(v36[0]) = 0;
          (*(*this + 10))(this);
          if (!MTDeviceGetCriticalErrors())
          {
            v6 = *MEMORY[0x29EDB8ED8];
            v7 = kCFNumberSInt32Type;
            goto LABEL_18;
          }
        }

LABEL_29:
        v29 = *MEMORY[0x29EDB8ED8];
        Copy = CFDictionaryCreateCopy(*MEMORY[0x29EDB8ED8], this[5]);
        Value = CFDictionaryGetValue(Copy, a2);
        if (Value)
        {
          CFProperty = Value;
          CFRetain(Value);
        }

        else
        {
          (*(*this + 10))(this);
          Service = MTDeviceGetService();
          CFProperty = IORegistryEntryCreateCFProperty(Service, a2, v29, 0);
          if (CFProperty)
          {
            if ((*(*this + 48))(this, v5))
            {
              (*(*this + 49))(this, a2, 0, 1);
            }
          }
        }

        v28 = Copy;
        goto LABEL_32;
      }

      (*(*this + 21))(v36, this);
      v15 = v38;
    }

    v36[0] = v15;
    v6 = *MEMORY[0x29EDB8ED8];
    v7 = kCFNumberDoubleType;
LABEL_18:
    v19 = CFNumberCreate(v6, v7, v36);
    if (v19)
    {
      v20 = v19;
      CFDictionarySetValue(this[5], a2, v19);
      CFRelease(v20);
    }

    goto LABEL_29;
  }

  if (v4 != 26)
  {
    if (v4 == 73)
    {
      v21 = *MEMORY[0x29EDB8ED8];
      Mutable = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 3, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
      if (!Mutable)
      {
        goto LABEL_29;
      }

      CFProperty = Mutable;
      CFDictionarySetValue(Mutable, @"Service properties", this[5]);
      v23 = CFArrayCreateCopy(v21, this[6]);
      if (v23)
      {
        v24 = v23;
        CFDictionarySetValue(CFProperty, @"Recent set properties", v23);
        CFRelease(v24);
      }

      v25 = (*(*this[4] + 104))(this[4]);
      if (v25)
      {
        v26 = v25;
        CFDictionarySetValue(CFProperty, @"Event dispatch", v25);
        CFRelease(v26);
      }

      LODWORD(v36[0]) = 0;
      (*(*this + 10))(this);
      if (MTDeviceGetCriticalErrors())
      {
        return CFProperty;
      }

      v27 = CFNumberCreate(v21, kCFNumberSInt32Type, v36);
      if (!v27)
      {
        return CFProperty;
      }

      v13 = v27;
      v14 = @"Critical errors";
    }

    else
    {
      if (v4 != 77)
      {
        goto LABEL_29;
      }

      v35 = 0;
      LODWORD(v36[0]) = 0;
      (*(*this + 10))(this);
      if (MTDeviceGetSensorSurfaceDimensions())
      {
        goto LABEL_29;
      }

      v8 = *MEMORY[0x29EDB8ED8];
      CFProperty = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
      LODWORD(v10) = LODWORD(v36[0]);
      valuePtr = vcvtd_n_s64_f64(v10 / 100.0, 0x10uLL);
      v11 = CFNumberCreate(v8, kCFNumberSInt32Type, &valuePtr);
      CFDictionarySetValue(CFProperty, @"Width", v11);
      CFRelease(v11);
      LODWORD(v12) = v35;
      v33 = vcvtd_n_s64_f64(v12 / 100.0, 0x10uLL);
      v13 = CFNumberCreate(v8, kCFNumberSInt32Type, &v33);
      v14 = @"Height";
    }

    CFDictionarySetValue(CFProperty, v14, v13);
    v28 = v13;
LABEL_32:
    CFRelease(v28);
    return CFProperty;
  }

  v16 = *MEMORY[0x29EDB8ED8];
  v17 = this[5];

  return CFDictionaryCreateCopy(v16, v17);
}

uint64_t MTSimpleHIDManager::setProperty(CFDateFormatterRef *this, const __CFString *a2, const void *a3)
{
  if ((*(*this + 59))(this))
  {
    v6 = *MEMORY[0x29EDB8ED8];
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 3, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
    if (Mutable)
    {
      v8 = Mutable;
      if (this[9])
      {
        v9 = CFTimeZoneCopySystem();
        if (v9)
        {
          v10 = v9;
          CFDateFormatterSetProperty(this[9], *MEMORY[0x29EDB8F30], v9);
          CFRelease(v10);
        }

        v11 = this[9];
        Current = CFAbsoluteTimeGetCurrent();
        StringWithAbsoluteTime = CFDateFormatterCreateStringWithAbsoluteTime(v6, v11, Current);
        if (StringWithAbsoluteTime)
        {
          v14 = StringWithAbsoluteTime;
          CFDictionarySetValue(v8, @"set time", StringWithAbsoluteTime);
          CFDictionarySetValue(v8, @"key", a2);
          CFDictionarySetValue(v8, @"value", a3);
          CFArrayAppendValue(this[6], v8);
          while (CFArrayGetCount(this[6]) > *(this + 28))
          {
            CFArrayRemoveValueAtIndex(this[6], 0);
          }

          CFRelease(v14);
        }
      }

      CFRelease(v8);
    }
  }

  v15 = *(*this + 49);

  return v15(this, a2, a3, 0);
}

uint64_t MTSimpleHIDManager::setProperty(CFMutableDictionaryRef *this, const __CFString *a2, const void *a3, uint64_t a4)
{
  v32 = *MEMORY[0x29EDCA608];
  if (MTSimpleHIDManager::propertyTypeFromString(a2, a2) != 18 || (*(this + 122) & 1) != 0 || (valuePtr = -21846, !a3) || (v9 = CFGetTypeID(a3), v9 != CFNumberGetTypeID()) || (v10 = CFNumberGetValue(a3, kCFNumberSInt16Type, &valuePtr), !v10))
  {
    if (!a3 || !a2 || a4 || (Value = CFDictionaryGetValue(this[5], a2)) == 0 || !CFEqual(Value, a3))
    {
      v17 = MTSimpleHIDManager::propertyTypeFromString(a2, v8);
      if ((*(*this + 50))(this, v17, a3, a4))
      {
        CFDictionarySetValue(this[5], a2, a3);
        v15 = 1;
        goto LABEL_18;
      }
    }

LABEL_17:
    v15 = 0;
    goto LABEL_18;
  }

  v11 = MTSimpleHIDManager::translateInputDetectionMode(v10, valuePtr);
  v20 = v11;
  v12 = MTLoggingPlugin();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136316162;
    v23 = "";
    v24 = 2080;
    v25 = "MTSimpleHIDManager::";
    v26 = 2080;
    v27 = "setProperty";
    v28 = 1024;
    v29 = valuePtr;
    v30 = 1024;
    v31 = v11;
    _os_log_impl(&dword_29D381000, v12, OS_LOG_TYPE_DEFAULT, "[HID] [MT] %s%s%s Converting input detection mode (%d) to touch mode (%d) because prox is absent", buf, 0x2Cu);
  }

  v13 = CFNumberCreate(*MEMORY[0x29EDB8ED8], kCFNumberSInt16Type, &v20);
  if (!v13)
  {
    goto LABEL_17;
  }

  v14 = v13;
  v15 = (*(*this + 49))(this, @"TouchDetectionMode", v13, a4);
  CFRelease(v14);
LABEL_18:
  v18 = *MEMORY[0x29EDCA608];
  return v15;
}

uint64_t MTSimpleHIDManager::translateInputDetectionMode(uint64_t a1, unsigned int a2)
{
  if (a2 <= 6)
  {
    if (((1 << a2) & 9) != 0)
    {
      return 0;
    }

    if (((1 << a2) & 0x12) != 0)
    {
      return 2;
    }

    if (((1 << a2) & 0x60) != 0)
    {
      return 1;
    }
  }

  if (a2 == 254)
  {
    v3 = 254;
  }

  else
  {
    v3 = 255;
  }

  if (a2 == 253)
  {
    return 253;
  }

  else
  {
    return v3;
  }
}

uint64_t MTSimpleHIDManager::setPropertyInternal(uint64_t *a1, int a2, CFTypeRef cf, int a4)
{
  v84 = *MEMORY[0x29EDCA608];
  if (cf)
  {
    v8 = CFGetTypeID(cf);
    v9 = v8 == CFBooleanGetTypeID();
    v10 = CFGetTypeID(cf);
    v11 = v10 == CFNumberGetTypeID();
    v12 = CFGetTypeID(cf);
    v13 = v12 == CFDataGetTypeID();
    v14 = CFGetTypeID(cf);
    v15 = v14 == CFStringGetTypeID();
    v16 = CFGetTypeID(cf);
    v17 = v16 == CFArrayGetTypeID();
    v18 = CFGetTypeID(cf);
    v19 = v18 == CFDictionaryGetTypeID();
  }

  else
  {
    v17 = 0;
    v13 = 0;
    v9 = 0;
    v11 = 0;
    v15 = 0;
    v19 = 0;
  }

  v20 = 0;
  switch(a2)
  {
    case 1:
    case 2:
      v20 = 0;
      *valuePtr = 0;
      if (v11)
      {
        v20 = CFNumberGetValue(cf, kCFNumberSInt32Type, valuePtr) != 0;
      }

      goto LABEL_129;
    case 3:
      v40 = CFGetTypeID(cf);
      v20 = v40 == CFArrayGetTypeID() && CFArrayGetCount(cf) > 0;
      goto LABEL_86;
    case 4:
LABEL_86:
      v20 |= v9;
      goto LABEL_129;
    case 5:
    case 25:
    case 70:
    case 74:
      v20 = v9;
      goto LABEL_129;
    case 6:
      v32 = CFGetTypeID(cf);
      v20 = v32 == CFStringGetTypeID();
      goto LABEL_129;
    case 7:
      if (!v9)
      {
        goto LABEL_92;
      }

      _printHIDEvents = CFBooleanGetValue(cf) != 0;
      goto LABEL_128;
    case 9:
      LOWORD(v80) = 0;
      if (!v11 || !CFNumberGetValue(cf, kCFNumberSInt16Type, &v80))
      {
        goto LABEL_92;
      }

      *(a1 + 33) = LOWORD(v80);
      v33 = a1[14];
      if (v33)
      {
        (*(*v33 + 24))(v33);
      }

      else
      {
        v58 = 24;
        if (*(a1 + 122))
        {
          v58 = 16;
        }

        if (LODWORD(a1[v58]) != 255 && (a1[10] & 1) == 0)
        {
          (*(*a1 + 440))(a1);
          v59 = *a1;
          if (*(a1 + 122) == 1)
          {
            (*(v59 + 432))(a1, *(a1 + 64), LOWORD(v80));
          }

          else
          {
            (*(v59 + 464))(a1, *(a1 + 96), LOWORD(v80));
          }
        }
      }

      *valuePtr = 0xAAAAAAAAAAAAAAAALL;
      *&v74 = -1;
      *(&v74 + 1) = -1;
      *&valuePtr[8] = v74;
      *v82 = v74;
      *&v82[16] = 0xAAAAAAAAAAAAAAAALL;
      *&v82[24] = 0xAAAAAAAAFFFFFFFFLL;
      v83 = -1;
      (*(*a1 + 168))(valuePtr, a1);
      *valuePtr = LOWORD(v80);
      goto LABEL_127;
    case 10:
      LOWORD(v80) = 0;
      if (!v11 || !CFNumberGetValue(cf, kCFNumberSInt16Type, &v80))
      {
        goto LABEL_92;
      }

      *valuePtr = 0xAAAAAAAAAAAAAAAALL;
      *&v41 = -1;
      *(&v41 + 1) = -1;
      *&valuePtr[8] = v41;
      *v82 = v41;
      *&v82[16] = 0xAAAAAAAAAAAAAAAALL;
      *&v82[24] = 0xAAAAAAAAFFFFFFFFLL;
      v83 = -1;
      (*(*a1 + 168))(valuePtr, a1);
      *&valuePtr[4] = LOWORD(v80);
      goto LABEL_127;
    case 11:
      valuePtr[0] = 0;
      if (!v11 || !CFNumberGetValue(cf, kCFNumberSInt8Type, valuePtr))
      {
        goto LABEL_92;
      }

      *(a1 + 136) = valuePtr[0];
      v34 = 24;
      if (*(a1 + 122))
      {
        v34 = 16;
      }

      if (LODWORD(a1[v34]) != 255)
      {
        (*(*a1 + 448))(a1);
      }

      goto LABEL_128;
    case 12:
      v80 = 0.0;
      if (!v11 || !CFNumberGetValue(cf, kCFNumberDoubleType, &v80))
      {
        goto LABEL_92;
      }

      *valuePtr = 0xAAAAAAAAAAAAAAAALL;
      *&v30 = -1;
      *(&v30 + 1) = -1;
      *&valuePtr[8] = v30;
      *v82 = v30;
      *&v82[16] = 0xAAAAAAAAAAAAAAAALL;
      *&v82[24] = 0xAAAAAAAAFFFFFFFFLL;
      v83 = -1;
      (*(*a1 + 168))(valuePtr, a1);
      v31 = v80;
      *&valuePtr[12] = v31;
      goto LABEL_127;
    case 13:
      v80 = 0.0;
      if (!v11 || !CFNumberGetValue(cf, kCFNumberDoubleType, &v80))
      {
        goto LABEL_92;
      }

      *valuePtr = 0xAAAAAAAAAAAAAAAALL;
      *&v42 = -1;
      *(&v42 + 1) = -1;
      *&valuePtr[8] = v42;
      *v82 = v42;
      *&v82[16] = 0xAAAAAAAAAAAAAAAALL;
      *&v82[24] = 0xAAAAAAAAFFFFFFFFLL;
      v83 = -1;
      (*(*a1 + 168))(valuePtr, a1);
      v43 = v80;
      *&valuePtr[16] = v43;
      goto LABEL_127;
    case 14:
      v80 = 0.0;
      if (!v11 || !CFNumberGetValue(cf, kCFNumberDoubleType, &v80))
      {
        goto LABEL_92;
      }

      *valuePtr = 0xAAAAAAAAAAAAAAAALL;
      *&v44 = -1;
      *(&v44 + 1) = -1;
      *&valuePtr[8] = v44;
      *v82 = v44;
      *&v82[16] = 0xAAAAAAAAAAAAAAAALL;
      *&v82[24] = 0xAAAAAAAAFFFFFFFFLL;
      v83 = -1;
      (*(*a1 + 168))(valuePtr, a1);
      v45 = v80;
      *&valuePtr[20] = v45;
LABEL_127:
      (*(*a1 + 176))(a1, valuePtr);
      goto LABEL_128;
    case 18:
      LOWORD(v80) = 0;
      if (!v11 || !CFNumberGetValue(cf, kCFNumberSInt16Type, &v80))
      {
        goto LABEL_92;
      }

      v50 = *(a1 + 32);
      v51 = LOWORD(v80);
      *(a1 + 32) = LOWORD(v80);
      if (v50 == 255 || v51 != 255)
      {
        if (v50 != 255 || v51 == 255)
        {
          v60 = *(a1 + 66);
          (*(*a1 + 432))(a1);
        }

        else
        {
          (*(*a1 + 408))(a1, 2, 0);
        }
      }

      else
      {
        (*(*a1 + 408))(a1, 0, 0);
      }

      v61 = MTLoggingPlugin();
      if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
      {
        v62 = *(a1 + 32);
        *valuePtr = 136316162;
        *&valuePtr[4] = "";
        *&valuePtr[12] = 2080;
        *&valuePtr[14] = "MTSimpleHIDManager::";
        *&valuePtr[22] = 2080;
        *v82 = "setPropertyInternal";
        *&v82[8] = 1024;
        *&v82[10] = v50;
        *&v82[14] = 1024;
        *&v82[16] = v62;
        _os_log_impl(&dword_29D381000, v61, OS_LOG_TYPE_DEFAULT, "[HID] [MT] %s%s%s detection mode: %d->%d\n", valuePtr, 0x2Cu);
      }

      goto LABEL_128;
    case 20:
      v46 = *MEMORY[0x29EDB8F00] == cf && v9;
      if (!v46 || *(a1 + 32) == 255)
      {
        goto LABEL_92;
      }

      v47 = MTLoggingPlugin();
      if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
      {
        *valuePtr = 136315650;
        *&valuePtr[4] = "";
        *&valuePtr[12] = 2080;
        *&valuePtr[14] = "MTSimpleHIDManager::";
        *&valuePtr[22] = 2080;
        *v82 = "setPropertyInternal";
        _os_log_impl(&dword_29D381000, v47, OS_LOG_TYPE_DEFAULT, "[HID] [MT] %s%s%s Resetting prox", valuePtr, 0x20u);
      }

      (*(*a1 + 80))(a1);
      LODWORD(v80) = MTSwapInt32HostToDevice();
      (*(*a1 + 80))(a1);
      v48 = MTDeviceSetReport();
      if (!v48)
      {
        goto LABEL_92;
      }

      v49 = v48;
      v28 = MTLoggingPlugin();
      if (!os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_92;
      }

      *valuePtr = 136315906;
      *&valuePtr[4] = "[Error] ";
      *&valuePtr[12] = 2080;
      *&valuePtr[14] = "MTSimpleHIDManager::";
      *&valuePtr[22] = 2080;
      *v82 = "setPropertyInternal";
      *&v82[8] = 1024;
      *&v82[10] = v49;
      v29 = "[HID] [MT] %s%s%s Error 0x%08X resetting prox";
      goto LABEL_90;
    case 21:
      if (!v9)
      {
        goto LABEL_92;
      }

      v25 = *MEMORY[0x29EDB8F00] == cf ? 8 : 9;
      LOBYTE(v80) = v25;
      (*(*a1 + 80))(a1);
      v26 = MTDeviceSetReport();
      if (!v26)
      {
        goto LABEL_92;
      }

      v27 = v26;
      v28 = MTLoggingPlugin();
      if (!os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_92;
      }

      *valuePtr = 136315906;
      *&valuePtr[4] = "[Error] ";
      *&valuePtr[12] = 2080;
      *&valuePtr[14] = "MTSimpleHIDManager::";
      *&valuePtr[22] = 2080;
      *v82 = "setPropertyInternal";
      *&v82[8] = 1024;
      *&v82[10] = v27;
      v29 = "[HID] [MT] %s%s%s Error 0x%08x setting rHOST_EVENT_NOTIFICATION";
      goto LABEL_90;
    case 37:
      if (!v13)
      {
        goto LABEL_92;
      }

      BytePtr = CFDataGetBytePtr(cf);
      Length = CFDataGetLength(cf);
      if (Length <= 1)
      {
        v37 = MTLoggingPlugin();
        if (!os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_92;
        }

        *valuePtr = 136316162;
        *&valuePtr[4] = "[Error] ";
        *&valuePtr[12] = 2080;
        *&valuePtr[14] = "MTSimpleHIDManager::";
        *&valuePtr[22] = 2080;
        *v82 = "setPropertyInternal";
        *&v82[8] = 2048;
        *&v82[10] = Length;
        *&v82[18] = 2048;
        *&v82[20] = 2;
        v29 = "[HID] [MT] %s%s%s Message length (%ld) is smaller than message type size (%lu)";
        v38 = v37;
        v39 = 52;
        goto LABEL_91;
      }

      v55 = *BytePtr;
      (*(*a1 + 80))(a1);
      v56 = MTDeviceSendExternalMessage();
      if (v56)
      {
        v57 = v56;
        v28 = MTLoggingPlugin();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          *valuePtr = 136315906;
          *&valuePtr[4] = "[Error] ";
          *&valuePtr[12] = 2080;
          *&valuePtr[14] = "MTSimpleHIDManager::";
          *&valuePtr[22] = 2080;
          *v82 = "setPropertyInternal";
          *&v82[8] = 1024;
          *&v82[10] = v57;
          v29 = "[HID] [MT] %s%s%s Error 0x%08X sending external message";
LABEL_90:
          v38 = v28;
          v39 = 38;
LABEL_91:
          _os_log_impl(&dword_29D381000, v38, OS_LOG_TYPE_ERROR, v29, valuePtr, v39);
        }
      }

LABEL_92:
      v20 = 0;
LABEL_129:
      v75 = *MEMORY[0x29EDCA608];
      return v20 & 1;
    case 38:
    case 39:
    case 40:
    case 41:
    case 42:
    case 46:
    case 47:
    case 49:
    case 51:
    case 54:
    case 55:
    case 56:
    case 57:
    case 60:
    case 61:
    case 62:
    case 63:
    case 66:
    case 67:
    case 69:
    case 81:
    case 84:
    case 85:
      v20 = v11;
      goto LABEL_129;
    case 43:
      LOWORD(v80) = 0;
      if (!v11 || !CFNumberGetValue(cf, kCFNumberSInt16Type, &v80))
      {
        goto LABEL_92;
      }

      v21 = *(a1 + 48);
      v22 = LOBYTE(v80);
      *(a1 + 48) = LOBYTE(v80);
      if (v21 == v22 && !a4)
      {
        goto LABEL_128;
      }

      (*(*a1 + 80))(a1);
      if (MTDeviceSupportsTapToWake() && ((*(*a1 + 80))(a1), (MTDeviceUseContextualPower() & 1) == 0))
      {
        v23 = *(a1 + 48);
        if (v23 == 255)
        {
          v24 = 254;
          goto LABEL_108;
        }
      }

      else
      {
        v23 = *(a1 + 48);
      }

      if (v23 != 252)
      {
        goto LABEL_109;
      }

      v24 = 255;
LABEL_108:
      *(a1 + 48) = v24;
LABEL_109:
      (*(*a1 + 80))(a1);
      if (MTDeviceNeedsFirstPowerOffSuppressed() && (*(a1 + 48) - 253) <= 2)
      {
        (*(*a1 + 80))(a1);
        PowerOffSuppressed = MTDeviceNotifyFirstPowerOffSuppressed();
        v64 = MTLoggingPlugin();
        if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
        {
          *valuePtr = 136315906;
          *&valuePtr[4] = "";
          *&valuePtr[12] = 2080;
          *&valuePtr[14] = "MTSimpleHIDManager::";
          *&valuePtr[22] = 2080;
          *v82 = "setPropertyInternal";
          *&v82[8] = 1024;
          *&v82[10] = PowerOffSuppressed;
          _os_log_impl(&dword_29D381000, v64, OS_LOG_TYPE_DEFAULT, "[HID] [MT] %s%s%s Suppressed first power off on boot - driver notified: 0x%x\n", valuePtr, 0x26u);
        }

        v20 = 0;
        *(a1 + 48) = v21;
      }

      else
      {
        v65 = LOWORD(v80) & 0x100;
        v66 = a1[14];
        if (v66)
        {
          (*(*v66 + 16))(v66, *(a1 + 48), v65 != 0);
        }

        else
        {
          (*(*a1 + 80))(a1);
          v67 = MTDevicePowerControlSupported();
          v68 = *(a1 + 48);
          if (v67)
          {
            if ((v68 - 253) >= 2)
            {
              if (v68 == 255)
              {
                (*(*a1 + 408))(a1, 0, 0);
              }

              else
              {
                (*(*a1 + 416))(a1, 2, v65 != 0);
                if (v21 == 255 || (a1[10] & 1) != 0)
                {
                  v77 = MTLoggingPlugin();
                  if (os_log_type_enabled(v77, OS_LOG_TYPE_DEFAULT))
                  {
                    v78 = *(a1 + 48);
                    v79 = *(a1 + 33);
                    *valuePtr = 136316162;
                    *&valuePtr[4] = "";
                    *&valuePtr[12] = 2080;
                    *&valuePtr[14] = "MTSimpleHIDManager::";
                    *&valuePtr[22] = 2080;
                    *v82 = "setPropertyInternal";
                    *&v82[8] = 1024;
                    *&v82[10] = v78;
                    *&v82[14] = 1024;
                    *&v82[16] = v79;
                    _os_log_impl(&dword_29D381000, v77, OS_LOG_TYPE_DEFAULT, "[HID] [MT] %s%s%s Skip sending touch mode %d, orientation %d. Device not on", valuePtr, 0x2Cu);
                  }
                }

                else
                {
                  (*(*a1 + 464))(a1, *(a1 + 96), *(a1 + 66));
                }
              }
            }

            else
            {
              (*(*a1 + 464))(a1, *(a1 + 48), *(a1 + 66));
              (*(*a1 + 416))(a1, 1, v65 != 0);
            }
          }

          else
          {
            (*(*a1 + 464))(a1, *(a1 + 48), *(a1 + 66));
          }

          v69 = MTLoggingPlugin();
          if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
          {
            v70 = *(a1 + 48);
            *valuePtr = 136316418;
            *&valuePtr[4] = "";
            *&valuePtr[12] = 2080;
            *&valuePtr[14] = "MTSimpleHIDManager::";
            *&valuePtr[22] = 2080;
            *v82 = "setPropertyInternal";
            *&v82[8] = 1024;
            *&v82[10] = v21;
            *&v82[14] = 1024;
            *&v82[16] = v70;
            *&v82[20] = 1024;
            *&v82[22] = v65 >> 8;
            _os_log_impl(&dword_29D381000, v69, OS_LOG_TYPE_DEFAULT, "[HID] [MT] %s%s%s touch mode: %d->%d fromButton=%d\n", valuePtr, 0x32u);
          }
        }

        if (*(a1 + 39) == 4)
        {
          valuePtr[0] = *(a1 + 48);
          v71 = *MEMORY[0x29EDB8ED8];
          mach_absolute_time();
          VendorDefinedEvent = IOHIDEventCreateVendorDefinedEvent();
          if (VendorDefinedEvent)
          {
            v73 = VendorDefinedEvent;
            (*(*a1 + 136))(a1, VendorDefinedEvent, 0);
            CFRelease(v73);
          }
        }

LABEL_128:
        v20 = 1;
      }

      goto LABEL_129;
    case 44:
    case 45:
    case 59:
    case 64:
    case 65:
    case 68:
    case 78:
      v20 = v15;
      goto LABEL_129;
    case 48:
    case 50:
    case 76:
      v20 = v17;
      goto LABEL_129;
    case 52:
    case 53:
      v20 = v13;
      goto LABEL_129;
    case 58:
      v20 = v9;
      goto LABEL_77;
    case 71:
LABEL_77:
      v20 |= v19;
      goto LABEL_129;
    case 72:
      if (!v9)
      {
        goto LABEL_92;
      }

      v52 = CFBooleanGetValue(cf) != 0;
      (*(*a1[4] + 72))(a1[4], v52);
      goto LABEL_128;
    case 75:
      v20 = 0;
      *valuePtr = 0;
      if (!v11)
      {
        goto LABEL_129;
      }

      Value = CFNumberGetValue(cf, kCFNumberSInt32Type, valuePtr);
      v20 = 0;
      if (!Value || *valuePtr > 1u)
      {
        goto LABEL_129;
      }

      v54 = a1[14];
      if (v54)
      {
        *(v54 + 32) = *valuePtr;
      }

      goto LABEL_128;
    case 86:
      if (!v9)
      {
        goto LABEL_92;
      }

      (*(*a1 + 80))(a1);
      MTDeviceSetBinaryFiltersProperty();
      goto LABEL_128;
    default:
      goto LABEL_129;
  }
}

BOOL MTSimpleHIDManager::touchPowered(MTSimpleHIDManager *this)
{
  v1 = 192;
  if (*(this + 122))
  {
    v1 = 128;
  }

  return *(this + v1) != 255;
}

const char *MTSimpleHIDManager::powerStateToStr(unsigned int a1)
{
  if (a1 > 2)
  {
    return "<UNKNOWN>";
  }

  else
  {
    return off_29F34C688[a1];
  }
}

uint64_t MTSimpleHIDManager::setPowerState(uint64_t a1, unsigned int a2, int a3)
{
  v24 = *MEMORY[0x29EDCA608];
  if (*(a1 + 112))
  {
    MTSimpleHIDManager::setPowerState();
  }

  v6 = MTLoggingPlugin();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    if (a2 > 2)
    {
      v7 = "<UNKNOWN>";
    }

    else
    {
      v7 = off_29F34C688[a2];
    }

    v12 = 136316418;
    v13 = "";
    v14 = 2080;
    v15 = "MTSimpleHIDManager::";
    v16 = 2080;
    v17 = "setPowerState";
    v18 = 1024;
    v19 = a2;
    v20 = 2082;
    v21 = v7;
    v22 = 1024;
    v23 = a3;
    _os_log_impl(&dword_29D381000, v6, OS_LOG_TYPE_DEFAULT, "[HID] [MT] %s%s%s [powerState:%d(%{public}s), deferUntilBootload:%d]", &v12, 0x36u);
  }

  if (a3)
  {
    v8 = 0;
    *(a1 + 80) = 1;
    *(a1 + 84) = a2;
  }

  else
  {
    *(a1 + 80) = 0;
    (*(*a1 + 80))(a1);
    v8 = MTDevicePowerSetState();
    v9 = MTLoggingPlugin();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 136315906;
      v13 = "";
      v14 = 2080;
      v15 = "MTSimpleHIDManager::";
      v16 = 2080;
      v17 = "setPowerState";
      v18 = 1024;
      v19 = v8;
      _os_log_impl(&dword_29D381000, v9, OS_LOG_TYPE_DEFAULT, "[HID] [MT] %s%s%s MTDevicePowerSetState result: 0x%x", &v12, 0x26u);
    }
  }

  v10 = *MEMORY[0x29EDCA608];
  return v8;
}

uint64_t MTSimpleHIDManager::setPowerStateWithReset(uint64_t a1, uint64_t a2, int a3)
{
  v33 = *MEMORY[0x29EDCA608];
  if (*(a1 + 112))
  {
    MTSimpleHIDManager::setPowerStateWithReset();
  }

  v6 = MTLoggingPlugin();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    if (a2 > 2)
    {
      v7 = "<UNKNOWN>";
    }

    else
    {
      v7 = off_29F34C688[a2];
    }

    *buf = 136316418;
    v24 = "";
    v25 = 2080;
    v26 = "MTSimpleHIDManager::";
    v27 = 2080;
    v28 = "setPowerStateWithReset";
    v29 = 1024;
    *v30 = a2;
    *&v30[4] = 2082;
    *&v30[6] = v7;
    v31 = 1024;
    v32 = a3;
    _os_log_impl(&dword_29D381000, v6, OS_LOG_TYPE_DEFAULT, "[HID] [MT] %s%s%s [powerState:%d(%{public}s), triggeredFromButton:%d]", buf, 0x36u);
  }

  if (a2 != 1 || ((*(*a1 + 80))(a1), MTDevicePowerGetState() | 0xAAAAAAAA))
  {
    (*(*a1 + 80))(a1);
    v10 = *(a1 + 64);
    if (MTDeviceShouldResetOnButton())
    {
      v11 = a3 == 0;
    }

    else
    {
      v11 = 0;
    }

    if (v11 || (a2 != 2 ? (ResetOnLockMs = MTDeviceGetResetOnLockMs()) : (ResetOnLockMs = MTDeviceGetResetOnUnlockMs()), (v13 = ResetOnLockMs / 1000.0, MTAbsoluteTimeGetCurrent(), v15 = v14 - v10, v13 > 0.0) ? (v16 = v15 <= v13) : (v16 = 1), v16))
    {
      v17 = MTLoggingPlugin();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v24 = "";
        v25 = 2080;
        v26 = "MTSimpleHIDManager::";
        v27 = 2080;
        v28 = "setPowerStateWithReset";
        _os_log_impl(&dword_29D381000, v17, OS_LOG_TYPE_DEFAULT, "[HID] [MT] %s%s%s Setting device power without reset", buf, 0x20u);
      }

      result = (*(*a1 + 408))(a1, a2, 0);
    }

    else
    {
      v19 = MTLoggingPlugin();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        if (a2 > 2)
        {
          v21 = "<UNKNOWN>";
        }

        else
        {
          v21 = off_29F34C688[a2];
        }

        *buf = 136315906;
        v24 = "";
        v25 = 2080;
        v26 = "MTSimpleHIDManager::";
        v27 = 2080;
        v28 = "setPowerStateWithReset";
        v29 = 2082;
        *v30 = v21;
        _os_log_impl(&dword_29D381000, v19, OS_LOG_TYPE_DEFAULT, "[HID] [MT] %s%s%s Resetting device before setting power state to %{public}s", buf, 0x2Au);
      }

      (*(*a1 + 480))(a1, 30);
      MTAbsoluteTimeGetCurrent();
      *(a1 + 64) = v22;
      (*(*a1 + 408))(a1, a2, 1);
      result = (*(*a1 + 424))(a1);
    }
  }

  else
  {
    v8 = MTLoggingPlugin();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v24 = "";
      v25 = 2080;
      v26 = "MTSimpleHIDManager::";
      v27 = 2080;
      v28 = "setPowerStateWithReset";
      _os_log_impl(&dword_29D381000, v8, OS_LOG_TYPE_DEFAULT, "[HID] [MT] %s%s%s Turning on and waiting for the device to be ready before going to sleep.", buf, 0x20u);
    }

    result = (*(*a1 + 408))(a1, 2, 0);
  }

  v18 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t MTSimpleHIDManager::setupBootloadPowerAssertion(MTSimpleHIDManager *this, uint64_t a2)
{
  v17 = *MEMORY[0x29EDCA608];
  v4 = MTLoggingPlugin();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315650;
    v10 = "";
    v11 = 2080;
    v12 = "MTSimpleHIDManager::";
    v13 = 2080;
    v14 = "setupBootloadPowerAssertion";
    _os_log_impl(&dword_29D381000, v4, OS_LOG_TYPE_DEFAULT, "[HID] [MT] %s%s%s ", &v9, 0x20u);
  }

  (*(*this + 488))(this);
  v5 = MTLoggingPlugin();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(this + 13) + 1;
    *(this + 13) = v6;
    v9 = 136315906;
    v10 = "";
    v11 = 2080;
    v12 = "MTSimpleHIDManager::";
    v13 = 2080;
    v14 = "setupBootloadPowerAssertion";
    v15 = 2048;
    v16 = v6;
    _os_log_impl(&dword_29D381000, v5, OS_LOG_TYPE_DEFAULT, "[HID] [MT] %s%s%s [generation: %llu]", &v9, 0x2Au);
  }

  (*(*this + 496))(this);
  result = (*(*this + 512))(this, a2, *(this + 13));
  v8 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t MTSimpleHIDManager::cleanupBootloadPowerAssertion(MTSimpleHIDManager *this)
{
  v14 = *MEMORY[0x29EDCA608];
  v2 = MTLoggingPlugin();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(this + 13);
    v6 = 136315906;
    v7 = "";
    v8 = 2080;
    v9 = "MTSimpleHIDManager::";
    v10 = 2080;
    v11 = "cleanupBootloadPowerAssertion";
    v12 = 2048;
    v13 = v3;
    _os_log_impl(&dword_29D381000, v2, OS_LOG_TYPE_DEFAULT, "[HID] [MT] %s%s%s [generation: %llu]", &v6, 0x2Au);
  }

  (*(*this + 520))(this);
  result = (*(*this + 504))(this);
  v5 = *MEMORY[0x29EDCA608];
  return result;
}

void MTSimpleHIDManager::takeBootloadPowerAssertion(IOPMAssertionID *this)
{
  v22 = *MEMORY[0x29EDCA608];
  v2 = IOPMAssertionCreateWithName(@"PreventUserIdleSystemSleep", 0xFFu, @"MT.bootload", this + 22);
  v3 = MTLoggingPlugin();
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v5 = this[22];
      v12 = 136316162;
      v13 = "[Error] ";
      v14 = 2080;
      v15 = "MTSimpleHIDManager::";
      v16 = 2080;
      v17 = "takeBootloadPowerAssertion";
      v18 = 1024;
      v19 = v5;
      v20 = 1024;
      v21 = v2;
      v6 = "[HID] [MT] %s%s%s Failed to take power assertion %u: 0x%08x";
      v7 = v4;
      v8 = OS_LOG_TYPE_ERROR;
      v9 = 44;
LABEL_6:
      _os_log_impl(&dword_29D381000, v7, v8, v6, &v12, v9);
    }
  }

  else if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v10 = this[22];
    v12 = 136315906;
    v13 = "";
    v14 = 2080;
    v15 = "MTSimpleHIDManager::";
    v16 = 2080;
    v17 = "takeBootloadPowerAssertion";
    v18 = 1024;
    v19 = v10;
    v6 = "[HID] [MT] %s%s%s Took power assertion %u";
    v7 = v4;
    v8 = OS_LOG_TYPE_DEFAULT;
    v9 = 38;
    goto LABEL_6;
  }

  v11 = *MEMORY[0x29EDCA608];
}

void MTSimpleHIDManager::releaseBootloadPowerAssertion(MTSimpleHIDManager *this)
{
  v17 = *MEMORY[0x29EDCA608];
  v2 = *(this + 22);
  if (v2)
  {
    v3 = IOPMAssertionRelease(v2);
    v4 = MTLoggingPlugin();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(this + 22);
      v7 = 136316162;
      v8 = "";
      v9 = 2080;
      v10 = "MTSimpleHIDManager::";
      v11 = 2080;
      v12 = "releaseBootloadPowerAssertion";
      v13 = 1024;
      v14 = v5;
      v15 = 1024;
      v16 = v3;
      _os_log_impl(&dword_29D381000, v4, OS_LOG_TYPE_DEFAULT, "[HID] [MT] %s%s%s Released power assertion %u: 0x%08x", &v7, 0x2Cu);
    }

    *(this + 22) = 0;
  }

  v6 = *MEMORY[0x29EDCA608];
}

void MTSimpleHIDManager::startBootloadPowerAssertionTimer(dispatch_queue_t *this, unsigned int a2, uint64_t a3)
{
  v21 = *MEMORY[0x29EDCA608];
  v6 = dispatch_source_create(MEMORY[0x29EDCA5D0], 0, 0, this[21]);
  this[12] = v6;
  if (v6)
  {
    v7 = v6;
    v8 = dispatch_time(0, (a2 * 1000000000.0));
    dispatch_source_set_timer(v7, v8, 0xFFFFFFFFFFFFFFFFLL, 0);
    v9 = this[12];
    v12[0] = MEMORY[0x29EDCA5F8];
    v12[1] = 0x40000000;
    v12[2] = ___ZN18MTSimpleHIDManager32startBootloadPowerAssertionTimerEjy_block_invoke;
    v12[3] = &__block_descriptor_tmp_314;
    v12[4] = this;
    v12[5] = a3;
    dispatch_source_set_event_handler(v9, v12);
    dispatch_resume(this[12]);
    v10 = MTLoggingPlugin();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v14 = "";
      v15 = 2080;
      v16 = "MTSimpleHIDManager::";
      v17 = 2080;
      v18 = "startBootloadPowerAssertionTimer";
      v19 = 1024;
      v20 = a2;
      _os_log_impl(&dword_29D381000, v10, OS_LOG_TYPE_DEFAULT, "[HID] [MT] %s%s%s Started bootload power assertion timer (%us)", buf, 0x26u);
    }
  }

  v11 = *MEMORY[0x29EDCA608];
}

void ___ZN18MTSimpleHIDManager32startBootloadPowerAssertionTimerEjy_block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 32);
  v3 = MTLoggingPlugin();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = *(a1 + 40);
    v5 = v2[13];
    v8 = 136316162;
    v9 = "[Error] ";
    v10 = 2080;
    v11 = "MTSimpleHIDManager::";
    v12 = 2080;
    v13 = "startBootloadPowerAssertionTimer_block_invoke";
    v14 = 2048;
    v15 = v4;
    v16 = 2048;
    v17 = v5;
    _os_log_impl(&dword_29D381000, v3, OS_LOG_TYPE_ERROR, "[HID] [MT] %s%s%s Bootload timer expired [generation = %llu, _bootloadPowerAssertion.generation = %llu]", &v8, 0x34u);
  }

  if (*(a1 + 40) == v2[13])
  {
    (*(*v2 + 488))(v2);
    v6 = v2[14];
    if (v6)
    {
      (*(*v6 + 40))(v6);
    }
  }

  v7 = *MEMORY[0x29EDCA608];
}

void MTSimpleHIDManager::cancelBootloadPowerAssertionTimer(dispatch_source_t *this)
{
  v10 = *MEMORY[0x29EDCA608];
  if (this[12])
  {
    v2 = MTLoggingPlugin();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v4 = 136315650;
      v5 = "";
      v6 = 2080;
      v7 = "MTSimpleHIDManager::";
      v8 = 2080;
      v9 = "cancelBootloadPowerAssertionTimer";
      _os_log_impl(&dword_29D381000, v2, OS_LOG_TYPE_DEFAULT, "[HID] [MT] %s%s%s Cancelling bootload power assertion timer", &v4, 0x20u);
    }

    dispatch_source_cancel(this[12]);
    dispatch_release(this[12]);
    this[12] = 0;
  }

  v3 = *MEMORY[0x29EDCA608];
}

_DWORD *MTSimpleHIDManager::updateFieldDetectStatus(_DWORD *result, int a2)
{
  if (result[41] != a2)
  {
    result[41] = a2;
    return (*(*result + 368))();
  }

  return result;
}

uint64_t MTSimpleHIDManager::setInputDetectionModeForOrientation(MTSimpleHIDManager *this, uint64_t a2, uint64_t a3)
{
  v5 = (*(*this + 80))(this);

  return MEMORY[0x2A1C68640](v5, a2, a3);
}

uint64_t MTSimpleHIDManager::setTouchMode(MTSimpleHIDManager *this, int a2, int a3)
{
  v23 = *MEMORY[0x29EDCA608];
  (*(*this + 80))(this);
  v6 = MTDeviceSetTouchMode();
  v7 = v6;
  if (v6 != -536870201 && v6 != 0)
  {
    (*(*this + 80))(this);
    MTDeviceGetDeviceID();
    v11 = MTLoggingPlugin();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 67110146;
      v14 = a2;
      v15 = 1024;
      v16 = a3;
      v17 = 2082;
      v18 = mach_error_string(v7);
      v19 = 1024;
      v20 = v7;
      v21 = 2048;
      v22 = 0;
      _os_log_impl(&dword_29D381000, v11, OS_LOG_TYPE_ERROR, "Error trying to set mode to 0x%x and orientation to 0x%x: %{public}s (0x%x) (deviceID 0x%llX)", buf, 0x28u);
    }
  }

  v9 = *MEMORY[0x29EDCA608];
  return v7;
}

void *MTSimpleHIDManager::setEventCallback(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = *(a1 + 32);
  if (result)
  {
    return MTSimpleEventDispatcher::setEventCallback(result, a2, a3, a4);
  }

  return result;
}

double MTSimpleHIDManager::getSurfacePixelDimensions(MTSimpleHIDManager *this)
{
  v10 = *MEMORY[0x29EDCA608];
  v1 = MTLoggingPlugin();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    v4 = 136315650;
    v5 = "[Error] ";
    v6 = 2080;
    v7 = "MTSimpleHIDManager::";
    v8 = 2080;
    v9 = "getSurfacePixelDimensions";
    _os_log_impl(&dword_29D381000, v1, OS_LOG_TYPE_ERROR, "[HID] [MT] %s%s%s using getSurfacePixelDimensions()", &v4, 0x20u);
  }

  v2 = *MEMORY[0x29EDCA608];
  return 320.0;
}

double MTSimpleHIDManager::getSurfaceBounds_mm(MTSimpleHIDManager *this)
{
  (*(*this + 80))(this);
  MTDeviceGetSensorSurfaceDimensions();
  return 0.0;
}

uint64_t MTSimpleHIDManager::handleFullFrame(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(result + 124) == 1)
  {
    return MEMORY[0x2A1C685D0](a2, a3, a4);
  }

  return result;
}

uint64_t MTSimpleHIDManager::handleContactFrameEntry(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, double a7)
{
  kdebug_trace();
  v14 = *(*a1 + 192);
  v15.n128_f64[0] = a7;

  return v14(a1, a2, a3, a4, a5, a6, v15);
}

uint64_t MTSimpleHIDManager::handleInputDetectionState(_BYTE *a1, uint64_t a2, unsigned int a3, int a4, int a5)
{
  v30 = *MEMORY[0x29EDCA608];
  if (a1[122] == 1)
  {
    v9 = a3 & 0x41 | (((a3 >> 5) & 1) << 8) | (a3 >> 2) & 0x200;
    v10 = *MEMORY[0x29EDB8ED8];
    mach_absolute_time();
    ProximtyEvent = IOHIDEventCreateProximtyEvent();
    if (ProximtyEvent)
    {
      v12 = ProximtyEvent;
      (*(*a1 + 136))(a1, ProximtyEvent, 0);
      v13 = MTLoggingPlugin();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v16 = 136316674;
        v17 = "";
        v18 = 2080;
        v19 = "MTSimpleHIDManager::";
        v20 = 2080;
        v21 = "handleInputDetectionState";
        v22 = 1024;
        v23 = v9;
        v24 = 1024;
        v25 = a3;
        v26 = 1024;
        v27 = a4;
        v28 = 1024;
        v29 = a5;
        _os_log_impl(&dword_29D381000, v13, OS_LOG_TYPE_DEFAULT, "[HID] [MT] %s%s%s Dispatching proximity event [0x%X] - detected inputs %u, receiver value %d, farfield value %d", &v16, 0x38u);
      }

      CFRelease(v12);
    }
  }

  v14 = *MEMORY[0x29EDCA608];
  return 1;
}

uint64_t MTSimpleHIDManager::handleNotificationEvent(_BYTE *a1, uint64_t a2, int a3)
{
  v4 = 0;
  v40 = *MEMORY[0x29EDCA608];
  if (a3 > 32)
  {
    if (a3 <= 103)
    {
      switch(a3)
      {
        case '!':
          if (a1[123] == 1)
          {
            v4 = 1;
            v10 = MEMORY[0x29EDB8F00];
            a1[124] = 1;
            (*(*a1 + 568))(a1, @"FilteredClientsAvailable", *v10);
            if ((a1[125] & 1) == 0)
            {
              a1[125] = 1;
              (*(*a1 + 80))(a1);
              MTRegisterFullFrameCallback();
            }

            goto LABEL_62;
          }

          break;
        case '""':
          if (a1[123] == 1)
          {
            v31 = MEMORY[0x29EDB8EF8];
            a1[124] = 0;
            (*(*a1 + 568))(a1, @"FilteredClientsAvailable", *v31);
            if (a1[125] == 1)
            {
              a1[125] = 0;
              (*(*a1 + 80))(a1);
              MTUnregisterFullFrameCallback();
            }

            goto LABEL_61;
          }

          break;
        case 'g':
          (*(*a1 + 592))(a1, 1);
          a1[127] = 0;
          v6 = MTLoggingPlugin();
          if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315650;
            *&buf[4] = "";
            v36 = 2080;
            v37 = "MTSimpleHIDManager::";
            v38 = 2080;
            v39 = "handleNotificationEvent";
            v7 = "[HID] [MT] %s%s%s Touch System Ready = false";
LABEL_36:
            _os_log_impl(&dword_29D381000, v6, OS_LOG_TYPE_DEFAULT, v7, buf, 0x20u);
            goto LABEL_37;
          }

          goto LABEL_37;
        default:
          goto LABEL_62;
      }

      v4 = 0;
      goto LABEL_62;
    }

    switch(a3)
    {
      case 104:
        v4 = 1;
        (*(*a1 + 592))(a1, 1);
        (*(*a1 + 80))(a1);
        if (MTDeviceSupportsTouchReadyNotification())
        {
          goto LABEL_62;
        }

        a1[127] = 1;
        v6 = MTLoggingPlugin();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          *&buf[4] = "";
          v36 = 2080;
          v37 = "MTSimpleHIDManager::";
          v38 = 2080;
          v39 = "handleNotificationEvent";
          v7 = "[HID] [MT] %s%s%s Sending Touch System Ready notification on UI Unlock";
          goto LABEL_36;
        }

        break;
      case 332:
        (*(*a1 + 272))(a1);
        goto LABEL_61;
      case 333:
        a1[127] = 1;
        v6 = MTLoggingPlugin();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          *&buf[4] = "";
          v36 = 2080;
          v37 = "MTSimpleHIDManager::";
          v38 = 2080;
          v39 = "handleNotificationEvent";
          v7 = "[HID] [MT] %s%s%s Sending Touch System Ready notification";
          goto LABEL_36;
        }

        break;
      default:
        goto LABEL_62;
    }

LABEL_37:
    v16 = *MEMORY[0x29EDB8ED8];
    mach_absolute_time();
    VendorDefinedEvent = IOHIDEventCreateVendorDefinedEvent();
    if (VendorDefinedEvent)
    {
LABEL_38:
      v17 = VendorDefinedEvent;
      (*(*a1 + 136))(a1, VendorDefinedEvent, 0);
      v15 = v17;
LABEL_39:
      CFRelease(v15);
    }

LABEL_61:
    v4 = 1;
    goto LABEL_62;
  }

  if (a3 > 7)
  {
    if (a3 == 8)
    {
      v11 = 192;
      if (a1[122])
      {
        v11 = 128;
      }

      if (*&a1[v11] != 255)
      {
        (*(*a1 + 592))(a1, 1);
      }

      v12 = *MEMORY[0x29EDB8ED8];
      mach_absolute_time();
      v4 = 1;
      v13 = IOHIDEventCreateVendorDefinedEvent();
      if (!v13)
      {
        goto LABEL_62;
      }

      v14 = v13;
      (*(*a1 + 136))(a1, v13, 0);
      v15 = v14;
      goto LABEL_39;
    }

    if (a3 != 26)
    {
      if (a3 != 32)
      {
        goto LABEL_62;
      }

      v8 = *MEMORY[0x29EDB8ED8];
      mach_absolute_time();
      VendorDefinedEvent = IOHIDEventCreateVendorDefinedEvent();
      if (!VendorDefinedEvent)
      {
        v4 = 1;
        goto LABEL_62;
      }

      goto LABEL_38;
    }

    v32 = (*(*a1 + 344))(a1);
    if (a1[121] != v32)
    {
      a1[121] = v32;
      if (v32)
      {
        goto LABEL_59;
      }
    }

    goto LABEL_61;
  }

  switch(a3)
  {
    case 2:
LABEL_59:
      v4 = 1;
      (*(*a1 + 592))(a1, 1);
      break;
    case 5:
      (*(*a1 + 264))(a1);
      v18 = *MEMORY[0x29EDB8ED8];
      mach_absolute_time();
      v19 = IOHIDEventCreateVendorDefinedEvent();
      if (v19)
      {
        v20 = v19;
        (*(*a1 + 136))(a1, v19, 0);
        CFRelease(v20);
      }

      (*(*a1 + 80))(a1);
      Service = MTDeviceGetService();
      *buf = 0;
      CFProperty = IORegistryEntryCreateCFProperty(Service, @"QueryIOReporterOnBoot", v18, 0);
      if (CFProperty)
      {
        v23 = CFProperty;
        v24 = CFGetTypeID(CFProperty);
        TypeID = CFBooleanGetTypeID();
        v26 = *MEMORY[0x29EDB8F00];
        CFRelease(v23);
        if (v24 == TypeID && v23 == v26)
        {
          v28 = IOReportCopyChannelsForDriver();
          if (v28)
          {
            v29 = v28;
            if (IOReportGetChannelCount() && (IOReportPrune() & 1) == 0 && IOReportGetChannelCount())
            {
              Subscription = IOReportCreateSubscription();
            }

            else
            {
              Subscription = 0;
            }

            CFRelease(v29);
            if (Subscription)
            {
              CFRelease(Subscription);
            }
          }
        }
      }

      goto LABEL_61;
    case 6:
      v5 = MTLoggingPlugin();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        *&buf[4] = "";
        v36 = 2080;
        v37 = "MTSimpleHIDManager::";
        v38 = 2080;
        v39 = "handleNotificationEvent";
        _os_log_impl(&dword_29D381000, v5, OS_LOG_TYPE_DEFAULT, "[HID] [MT] %s%s%s device killed", buf, 0x20u);
      }

      goto LABEL_61;
  }

LABEL_62:
  v33 = *MEMORY[0x29EDCA608];
  return v4;
}

uint64_t MTSimpleHIDManager::handleExternalMessage(uint64_t a1, CFTypeRef cf, const void *a3, __int16 a4, unsigned int a5)
{
  if ((a4 & 0xFFFE) == 0x1000)
  {
    CFRetain(cf);
    global_queue = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 0x40000000;
    block[2] = ___ZN18MTSimpleHIDManager21handleExternalMessageEP10__MTDevicePhtj_block_invoke;
    block[3] = &__block_descriptor_tmp_316;
    block[4] = cf;
    dispatch_async(global_queue, block);
    return 0;
  }

  else
  {
    result = malloc_type_malloc(a5 + 2, 0x100004077774924uLL);
    if (result)
    {
      v12 = result;
      *result = a4;
      memcpy((result + 2), a3, a5);
      v13 = *MEMORY[0x29EDB8ED8];
      mach_absolute_time();
      VendorDefinedEvent = IOHIDEventCreateVendorDefinedEvent();
      if (VendorDefinedEvent)
      {
        v15 = VendorDefinedEvent;
        (*(*a1 + 136))(a1, VendorDefinedEvent, 0);
        CFRelease(v15);
      }

      free(v12);
      return 1;
    }
  }

  return result;
}

void ___ZN18MTSimpleHIDManager21handleExternalMessageEP10__MTDevicePhtj_block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 32);
  updated = MTDeviceUpdateDynamicCalibration();
  if (updated)
  {
    v4 = updated;
    v5 = MTLoggingPlugin();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136315906;
      v8 = "";
      v9 = 2080;
      v10 = "MTSimpleHIDManager::";
      v11 = 2080;
      v12 = "handleExternalMessage_block_invoke";
      v13 = 1024;
      v14 = v4;
      _os_log_impl(&dword_29D381000, v5, OS_LOG_TYPE_DEFAULT, "[HID] [MT] %s%s%s MTDeviceUpdateDynamicCalibration failed with error code 0x%X", &v7, 0x26u);
    }
  }

  CFRelease(*(a1 + 32));
  v6 = *MEMORY[0x29EDCA608];
}

uint64_t MTSimpleHIDManager::copyEvent(uint64_t a1, int a2, uint64_t a3)
{
  result = 0;
  v21 = *MEMORY[0x29EDCA608];
  if (a2 == 1 && a3)
  {
    IntegerValue = IOHIDEventGetIntegerValue();
    v6 = IOHIDEventGetIntegerValue();
    if (IntegerValue != 65376)
    {
      goto LABEL_8;
    }

    v7 = v6;
    v8 = MTLoggingPlugin();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 136316162;
      v12 = "";
      v13 = 2080;
      v14 = "MTSimpleHIDManager::";
      v15 = 2080;
      v16 = "copyEvent";
      v17 = 1024;
      v18 = 65376;
      v19 = 1024;
      v20 = v7;
      _os_log_impl(&dword_29D381000, v8, OS_LOG_TYPE_DEFAULT, "[HID] [MT] %s%s%s copyEvent requested for usagePage: %u, usage: %u", &v11, 0x2Cu);
    }

    if (v7 == 9)
    {
      LOBYTE(v11) = *(a1 + 127);
      v9 = *MEMORY[0x29EDB8ED8];
      mach_absolute_time();
      result = IOHIDEventCreateVendorDefinedEvent();
    }

    else
    {
LABEL_8:
      result = 0;
    }
  }

  v10 = *MEMORY[0x29EDCA608];
  return result;
}

BOOL MTSimpleHIDManager::touchFramesAllowed(MTSimpleHIDManager *this)
{
  v1 = 192;
  if (*(this + 122))
  {
    v1 = 128;
  }

  return (*(this + v1) - 256) < 0xFFFFFFFD;
}

uint64_t MTTrackpadHIDManager::initialize(MTModeSwitcher *a1, uint64_t a2, CFTypeRef cf, int a4, int a5)
{
  *(a1 + 42) = 0;
  *(a1 + 104) = 0;
  *(a1 + 210) = 0;
  *(a1 + 35) = 0;
  if ((a4 - 1000) <= 0x3E7)
  {
    v10 = (*(*a1 + 848))(a1);
    (*(*a1 + 856))(a1, cf, v10);
  }

  *(a1 + 72) = 0;
  *(a1 + 37) = 0;
  *(a1 + 76) = 0;
  *(a1 + 39) = 0;
  *(a1 + 40) = 0;
  if (a4 == 2001 || a4 == 1001)
  {
    operator new();
  }

  return MTSimpleHIDManager::initialize(a1, a2, cf, a4, a5);
}

void MTTrackpadHIDManager::finalize(MTTrackpadHIDManager *this)
{
  v2 = *(this + 41);
  if (v2)
  {
    (*(*v2 + 8))(v2);
    *(this + 41) = 0;
  }

  MTSimpleHIDManager::finalize(this);
}

void MTTrackpadHIDManager::setDeviceUsages(MTTrackpadHIDManager *this)
{
  MTSimpleHIDManager::setDeviceUsages(this);
  v2 = (*(*this + 560))(this, @"DeviceUsagePairs");
  if (v2)
  {
    v3 = v2;
    MTTrackpadHIDManager::appendDeviceUsagePairs(v2, 0xFF00, 1);
    MTTrackpadHIDManager::appendDeviceUsagePairs(v3, 0xFF00, 12);
    MTTrackpadHIDManager::appendDeviceUsagePairs(v3, 1, 1);
    MTTrackpadHIDManager::appendDeviceUsagePairs(v3, 1, 2);
    MTTrackpadHIDManager::appendDeviceUsagePairs(v3, 0xD, 5);
    MTSimpleHIDManager::setProperty(this, @"DeviceUsagePairs", v3, 1);

    CFRelease(v3);
  }
}

void MTTrackpadHIDManager::appendDeviceUsagePairs(MTTrackpadHIDManager *this, __CFArray *a2, int a3)
{
  v11 = a3;
  valuePtr = a2;
  if (this)
  {
    v4 = *MEMORY[0x29EDB8ED8];
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 2, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
    v6 = CFNumberCreate(v4, kCFNumberSInt32Type, &valuePtr);
    v7 = CFNumberCreate(v4, kCFNumberSInt32Type, &v11);
    v8 = v7;
    if (v6)
    {
      v9 = v7 == 0;
    }

    else
    {
      v9 = 1;
    }

    if (v9 || Mutable == 0)
    {
      if (!v6)
      {
        if (!v7)
        {
          goto LABEL_13;
        }

        goto LABEL_12;
      }
    }

    else
    {
      CFDictionaryAddValue(Mutable, @"DeviceUsagePage", v6);
      CFDictionaryAddValue(Mutable, @"DeviceUsage", v8);
      CFArrayAppendValue(this, Mutable);
    }

    CFRelease(v6);
    if (!v8)
    {
LABEL_13:
      if (Mutable)
      {
        CFRelease(Mutable);
      }

      return;
    }

LABEL_12:
    CFRelease(v8);
    goto LABEL_13;
  }
}

uint64_t MTTrackpadHIDManager::stop(MTTrackpadHIDManager *this)
{
  v2 = *(this + 43);
  if (v2)
  {
    CFRelease(v2);
    *(this + 43) = 0;
  }

  MTTrackpadHIDManager::unregisterForPowerNotifications(this);
  (*(*this + 816))(this);

  return MTSimpleHIDManager::stop(this);
}

uint64_t MTTrackpadHIDManager::unregisterForPowerNotifications(io_object_t *this)
{
  result = MTSimpleHIDManager::getHIDDispatchQueue(this);
  if (result)
  {
    if (this[76])
    {
      IODeregisterForSystemPower(this + 76);
      this[76] = 0;
    }

    v3 = *(this + 37);
    if (v3)
    {
      IONotificationPortDestroy(v3);
      *(this + 37) = 0;
    }

    result = this[72];
    if (result)
    {
      result = IOServiceClose(result);
      this[72] = 0;
    }
  }

  return result;
}

uint64_t MTTrackpadHIDManager::dispatchRelativePointerEvent(uint64_t a1)
{
  result = (*(*a1 + 120))(a1);
  if (result)
  {
    v2 = *(*result + 152);

    return v2();
  }

  return result;
}

uint64_t MTTrackpadHIDManager::registerDeviceDataCallbacks(MTTrackpadHIDManager *this)
{
  MTSimpleHIDManager::registerDeviceDataCallbacks(this);
  (*(*this + 80))(this);
  MTRegisterRelativePointerCallback();
  v2 = (*(*this + 80))(this);

  return MEMORY[0x2A1C686F0](v2, MTTrackpadHIDManager::forwardButtonState, this);
}

uint64_t MTTrackpadHIDManager::unregisterDeviceDataCallbacks(MTTrackpadHIDManager *this)
{
  (*(*this + 80))(this);
  MTUnregisterButtonStateCallback();

  return MTSimpleHIDManager::unregisterDeviceDataCallbacks(this);
}

void MTTrackpadHIDManager::createGestureParser(MTTrackpadHIDManager *this)
{
  v2 = (*(*this + 80))(this);
  v3 = *(this + 40);
  MTParser::createParserForMTDevice(v2, *(this + 39));
}

uint64_t MTTrackpadHIDManager::initializeGestureParser(MTTrackpadHIDManager *this)
{
  *(this + 208) = (*(*this + 648))(this);
  v2 = *(*this + 672);

  return v2(this);
}

unsigned int *MTTrackpadHIDManager::destroyGestureParser(unsigned int **this)
{
  MTTrackpadHIDManager::cancelOutstandingTapAndAHalfCallbackTimer(this);
  (*(*this + 10))(this);
  MTDeviceSetPickButtonShouldSendSecondaryClick();
  result = this[42];
  if (result)
  {
    result = MTParser::release(result);
    this[42] = 0;
  }

  return result;
}

void MTTrackpadHIDManager::cancelOutstandingTapAndAHalfCallbackTimer(MTTrackpadHIDManager *this)
{
  v1 = *(this + 35);
  if (v1)
  {
    context = dispatch_get_context(*(this + 35));
    if (context)
    {
      free(context);
      v1 = *(this + 35);
    }

    dispatch_source_cancel(v1);
    dispatch_release(*(this + 35));
    *(this + 35) = 0;
  }
}

__n128 MTTrackpadHIDManager::copyTipOffsetParameters@<Q0>(MTTrackpadHIDManager *this@<X0>, uint64_t a2@<X8>)
{
  v2 = *(*(this + 42) + 64);
  v3 = *(v2 + 196);
  *a2 = *(v2 + 180);
  *(a2 + 16) = v3;
  result = *(v2 + 212);
  v5 = *(v2 + 228);
  *(a2 + 32) = result;
  *(a2 + 48) = v5;
  return result;
}

__n128 MTTrackpadHIDManager::setTipOffsetParameters(uint64_t a1, uint64_t a2)
{
  v2 = *(*(a1 + 336) + 64);
  result = *a2;
  v4 = *(a2 + 16);
  v5 = *(a2 + 32);
  *(v2 + 228) = *(a2 + 48);
  *(v2 + 212) = v5;
  *(v2 + 196) = v4;
  *(v2 + 180) = result;
  return result;
}

MTParser *MTTrackpadHIDManager::resetGestureParser(MTTrackpadHIDManager *this, int a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v11 = 0;
    cf = 0;
    v5 = *(this + 42);
    if (v5)
    {
      v7 = (**(v5 + 80))();
      v8 = *(this + 42);
      if (v7)
      {
        *(v8 + 89) = 1;
      }

      MTParser::clear(v8, &cf, &v11, v6);
      if (cf)
      {
        (*(*this + 136))(this, cf, 0);
        CFRelease(cf);
      }

      if (v11)
      {
        (*(*this + 136))(this, v11, 0);
        CFRelease(v11);
      }
    }
  }

  else
  {
    v9 = *(this + 42);
    if (v9)
    {
      MTParser::clear(v9, 0, 0, a4);
    }
  }

  result = *(this + 42);
  if (result)
  {
    if ((*(this + 160) & 2) != 0)
    {
      return MTParser::setDivingButtonState(result, 0);
    }
  }

  return result;
}

uint64_t MTTrackpadHIDManager::cancelCurrentTapAndAHalfDrag(MTTrackpadHIDManager *this)
{
  result = *(this + 42);
  if (result)
  {
    result = (**(result + 80))();
    if (result)
    {
      *(*(this + 42) + 89) = 1;
    }
  }

  return result;
}

uint64_t MTTrackpadHIDManager::startNotificationCenterMonitoring(dispatch_object_t *this, int a2)
{
  ((*this)[102].isa)(this);
  HIDDispatchQueue = MTSimpleHIDManager::getHIDDispatchQueue(this);
  v5 = dispatch_source_create(MEMORY[0x29EDCA5B0], a2, 0x80000000uLL, HIDDispatchQueue);
  this[39] = v5;
  if (v5)
  {
    MTSimpleHIDManager::retain(this);
    v6 = this[39];
    handler[0] = MEMORY[0x29EDCA5F8];
    handler[1] = 0x40000000;
    handler[2] = ___ZN20MTTrackpadHIDManager33startNotificationCenterMonitoringEi_block_invoke;
    handler[3] = &__block_descriptor_tmp_1;
    handler[4] = this;
    dispatch_source_set_event_handler(v6, handler);
    v7 = this[39];
    v10[0] = MEMORY[0x29EDCA5F8];
    v10[1] = 0x40000000;
    v10[2] = ___ZN20MTTrackpadHIDManager33startNotificationCenterMonitoringEi_block_invoke_4;
    v10[3] = &__block_descriptor_tmp_5;
    v10[4] = this;
    dispatch_source_set_cancel_handler(v7, v10);
    dispatch_resume(this[39]);
  }

  result = ((*this)[108].isa)(this);
  if (result)
  {
    v9 = ((*this)[108].isa)(this);
    return MTParser::alwaysGenerateNotificationCenterGestures(v9, *(this + 242));
  }

  return result;
}

uint64_t ___ZN20MTTrackpadHIDManager33startNotificationCenterMonitoringEi_block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x29EDCA608];
  v1 = *(a1 + 32);
  v2 = MTLoggingPlugin();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315650;
    v6 = "";
    v7 = 2080;
    v8 = "MTTrackpadHIDManager::";
    v9 = 2080;
    v10 = "startNotificationCenterMonitoring_block_invoke";
    _os_log_impl(&dword_29D381000, v2, OS_LOG_TYPE_DEFAULT, "[HID] [MT] %s%s%s NotificationCenter process died.", &v5, 0x20u);
  }

  result = (*(*v1 + 800))(v1);
  v4 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t MTTrackpadHIDManager::startNotificationCenterAltMonitoring(dispatch_object_t *this, int a2)
{
  ((*this)[103].isa)(this);
  HIDDispatchQueue = MTSimpleHIDManager::getHIDDispatchQueue(this);
  v5 = dispatch_source_create(MEMORY[0x29EDCA5B0], a2, 0x80000000uLL, HIDDispatchQueue);
  this[40] = v5;
  if (v5)
  {
    MTSimpleHIDManager::retain(this);
    v6 = this[40];
    handler[0] = MEMORY[0x29EDCA5F8];
    handler[1] = 0x40000000;
    handler[2] = ___ZN20MTTrackpadHIDManager36startNotificationCenterAltMonitoringEi_block_invoke;
    handler[3] = &__block_descriptor_tmp_6;
    handler[4] = this;
    dispatch_source_set_event_handler(v6, handler);
    v7 = this[40];
    v10[0] = MEMORY[0x29EDCA5F8];
    v10[1] = 0x40000000;
    v10[2] = ___ZN20MTTrackpadHIDManager36startNotificationCenterAltMonitoringEi_block_invoke_7;
    v10[3] = &__block_descriptor_tmp_8;
    v10[4] = this;
    dispatch_source_set_cancel_handler(v7, v10);
    dispatch_resume(this[40]);
  }

  result = ((*this)[108].isa)(this);
  if (result)
  {
    v9 = ((*this)[108].isa)(this);
    return MTParser::alwaysGenerateNotificationCenterAltGestures(v9, *(this + 242));
  }

  return result;
}

uint64_t ___ZN20MTTrackpadHIDManager36startNotificationCenterAltMonitoringEi_block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x29EDCA608];
  v1 = *(a1 + 32);
  v2 = MTLoggingPlugin();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315650;
    v6 = "";
    v7 = 2080;
    v8 = "MTTrackpadHIDManager::";
    v9 = 2080;
    v10 = "startNotificationCenterAltMonitoring_block_invoke";
    _os_log_impl(&dword_29D381000, v2, OS_LOG_TYPE_DEFAULT, "[HID] [MT] %s%s%s NotificationCenterAlt process died.", &v5, 0x20u);
  }

  result = (*(*v1 + 808))(v1);
  v4 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t MTTrackpadHIDManager::stopNotificationCenterMonitoring(MTTrackpadHIDManager *this)
{
  (*(*this + 816))(this);
  result = (*(*this + 864))(this);
  if (result)
  {
    v3 = (*(*this + 864))(this);

    return MTParser::alwaysGenerateNotificationCenterGestures(v3, 0);
  }

  return result;
}

uint64_t MTTrackpadHIDManager::stopNotificationCenterAltMonitoring(MTTrackpadHIDManager *this)
{
  (*(*this + 824))(this);
  result = (*(*this + 864))(this);
  if (result)
  {
    v3 = (*(*this + 864))(this);

    return MTParser::alwaysGenerateNotificationCenterGestures(v3, 0);
  }

  return result;
}

void MTTrackpadHIDManager::cancelNotificationCenterSource(MTTrackpadHIDManager *this)
{
  v2 = *(this + 39);
  if (v2)
  {
    dispatch_source_cancel(v2);
    dispatch_release(*(this + 39));
    *(this + 39) = 0;
  }
}

void MTTrackpadHIDManager::cancelNotificationCenterAltSource(MTTrackpadHIDManager *this)
{
  v2 = *(this + 40);
  if (v2)
  {
    dispatch_source_cancel(v2);
    dispatch_release(*(this + 40));
    *(this + 40) = 0;
  }
}

uint64_t MTTrackpadHIDManager::getForceSourceForBehavior(MTTrackpadHIDManager *this, unsigned int a2)
{
  v3 = (*(*this + 848))(this);
  if (a2 > 0x11)
  {
    return 0;
  }

  if (((1 << a2) & 0x31C22) != 0)
  {
    return 34;
  }

  if (a2 != 2)
  {
    return 0;
  }

  if (*(v3 + 6))
  {
    return 134;
  }

  return 0;
}

unint64_t MTTrackpadHIDManager::isUserPref(MTTrackpadHIDManager *this, const __CFString *a2, BOOL *a3)
{
  if (a3)
  {
    *a3 = 0;
  }

  if (!a2)
  {
    return 0;
  }

  v10 = 0;
  result = (*(*this + 840))(this, &v10);
  if (!result)
  {
    return result;
  }

  v6 = result;
  v7 = 0;
  if (CFStringCompare(a2, *v10, 0))
  {
    v8 = 2;
    while (v6 - 1 != v7)
    {
      v9 = CFStringCompare(a2, v10[v8], 0);
      v8 += 2;
      ++v7;
      if (v9 == kCFCompareEqualTo)
      {
        result = v6 > v7;
        if (a3)
        {
          goto LABEL_13;
        }

        return result;
      }
    }

    return 0;
  }

  result = 1;
  if (a3)
  {
LABEL_13:
    *a3 = v10[2 * v7 + 1];
  }

  return result;
}

uint64_t MTTrackpadHIDManager::setProperty(CFTypeRef *this, const __CFString *a2, const void *a3)
{
  v17 = *MEMORY[0x29EDCA608];
  v12 = 0;
  if (MTTrackpadHIDManager::isUserPref(this, a2, &v12))
  {
    (*(*this + 85))(this, a2, a3);
    (*(*this + 84))(this);
    if (v12)
    {
      (*(*this + 10))(this);
      Service = MTDeviceGetService();
      v7 = IORegistryEntrySetCFProperty(Service, @"TrackpadUserPreferences", this[43]);
      if (v7)
      {
        v8 = v7;
        (*(*this + 10))(this);
        MTDeviceGetDeviceID();
        v9 = MTLoggingPlugin();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109376;
          v14 = v8;
          v15 = 2048;
          v16 = 0;
          _os_log_impl(&dword_29D381000, v9, OS_LOG_TYPE_ERROR, "Could not set trackpad user preferences on the driver 0x%08X (deviceID 0x%llX)", buf, 0x12u);
        }
      }
    }
  }

  result = MTSimpleHIDManager::setProperty(this, a2, a3);
  v11 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t MTTrackpadHIDManager::setPropertyInternal(MTSimpleHIDManager *a1, int a2, CFTypeRef cf, int a4)
{
  v81 = *MEMORY[0x29EDCA608];
  if (cf)
  {
    v8 = CFGetTypeID(cf);
    v9 = v8 == CFDictionaryGetTypeID();
  }

  else
  {
    v9 = 0;
  }

  HIDDispatchQueue = MTSimpleHIDManager::getHIDDispatchQueue(a1);
  if (a2 > 26)
  {
    if (a2 == 27)
    {
      if (cf)
      {
        v46 = CFGetTypeID(cf);
        *valuePtr = 0;
        if (v46 == CFNumberGetTypeID())
        {
          if ((*(*a1 + 864))(a1))
          {
            if (CFNumberGetValue(cf, kCFNumberSInt32Type, valuePtr))
            {
              v47 = *((*(*a1 + 864))(a1) + 208);
              if (v47)
              {
                v48 = *((*(*a1 + 848))(a1) + 60);
                v49 = *((*(*a1 + 848))(a1) + 64);
                if (*((*(*a1 + 864))(a1) + 48))
                {
                  v50 = v48 == 0;
                  v51 = !*(*((*(*a1 + 864))(a1) + 48) + 186) || v50;
                  if (((v51 | v49) & 1) == 0)
                  {
                    MTActuatorManagement::actuateWaveformID(v47, *valuePtr, 1.0, 1.0);
                  }
                }
              }
            }
          }
        }
      }

      goto LABEL_94;
    }

    if (a2 == 30)
    {
      result = *((*(*a1 + 864))(a1) + 208);
      if (!result)
      {
LABEL_95:
        v55 = *MEMORY[0x29EDCA608];
        return result;
      }

      MTActuatorManagement::reloadActuations(result);
      goto LABEL_94;
    }

    goto LABEL_19;
  }

  v11 = HIDDispatchQueue;
  if (a2 != 22)
  {
    if (a2 == 23)
    {
      if (v9)
      {
        Value = CFDictionaryGetValue(cf, @"AlwaysGenerateNotificationCenterAltGesture");
        v13 = CFDictionaryGetValue(cf, @"ClientPID");
        if (Value)
        {
          v14 = v13;
          v15 = CFGetTypeID(Value);
          if (v15 == CFBooleanGetTypeID() && Value == *MEMORY[0x29EDB8F00])
          {
            if (v14)
            {
              v16 = CFGetTypeID(v14);
              if (v16 == CFNumberGetTypeID())
              {
                *valuePtr = -1431655766;
                CFNumberGetValue(v14, kCFNumberSInt32Type, valuePtr);
                if (v11)
                {
                  MTSimpleHIDManager::retain(a1);
                  v68[0] = MEMORY[0x29EDCA5F8];
                  v68[1] = 0x40000000;
                  v68[2] = ___ZN20MTTrackpadHIDManager19setPropertyInternalE18_MTHIDPropertyTypePKvb_block_invoke_3;
                  v68[3] = &__block_descriptor_tmp_119;
                  v68[4] = a1;
                  v69 = *valuePtr;
                  v17 = v68;
LABEL_93:
                  dispatch_async(v11, v17);
                  goto LABEL_94;
                }

                goto LABEL_94;
              }
            }
          }

          v53 = CFGetTypeID(Value);
          if (v53 == CFBooleanGetTypeID() && Value == *MEMORY[0x29EDB8EF8])
          {
            if (v11)
            {
              MTSimpleHIDManager::retain(a1);
              v67[0] = MEMORY[0x29EDCA5F8];
              v67[1] = 0x40000000;
              v67[2] = ___ZN20MTTrackpadHIDManager19setPropertyInternalE18_MTHIDPropertyTypePKvb_block_invoke_4;
              v67[3] = &__block_descriptor_tmp_120;
              v67[4] = a1;
              v17 = v67;
              goto LABEL_93;
            }

            goto LABEL_94;
          }
        }
      }

      goto LABEL_100;
    }

LABEL_19:
    if ((a2 & 0xFFFFFFFE) == 0x1C)
    {
      (*(*a1 + 80))(a1);
      v19 = MTDeviceSupportsForce();
      result = 0;
      if (!cf)
      {
        goto LABEL_95;
      }

      if (!v19)
      {
        goto LABEL_95;
      }

      result = (*(*a1 + 864))(a1);
      if (!result)
      {
        goto LABEL_95;
      }

      if (*((*(*a1 + 848))(a1) + 64))
      {
        goto LABEL_94;
      }

      v20 = CFGetTypeID(cf);
      if (v20 != CFDictionaryGetTypeID())
      {
        goto LABEL_94;
      }

      v21 = *((*(*a1 + 864))(a1) + 200);
      v66 = 0.0;
      v22 = CFDictionaryGetValue(cf, @"Version");
      if (!v22)
      {
        goto LABEL_94;
      }

      v23 = v22;
      v24 = CFGetTypeID(v22);
      if (v24 != CFNumberGetTypeID())
      {
        goto LABEL_94;
      }

      if (!CFNumberGetValue(v23, kCFNumberSInt32Type, &v66))
      {
        goto LABEL_94;
      }

      if (LODWORD(v66) != 1)
      {
        goto LABEL_94;
      }

      v25 = CFDictionaryGetValue(cf, @"Behaviors");
      v26 = v25;
      if (!v25)
      {
        goto LABEL_94;
      }

      v27 = CFGetTypeID(v25);
      if (v27 != CFArrayGetTypeID())
      {
        goto LABEL_94;
      }

      Count = CFArrayGetCount(v26);
      if (a2 == 28)
      {
        MTForceBehaviorConfiguration::clearNonDefaultBehaviors((v21 + 264));
      }

      if (Count < 1)
      {
        goto LABEL_94;
      }

      v29 = 0;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v26, v29);
        v31 = ValueAtIndex;
        if (!ValueAtIndex)
        {
          goto LABEL_49;
        }

        v32 = CFGetTypeID(ValueAtIndex);
        if (v32 != CFDictionaryGetTypeID())
        {
          goto LABEL_49;
        }

        v33 = CFDictionaryGetValue(v31, @"BehaviorID");
        v34 = v33;
        v65 = -1431655766;
        if (!v33)
        {
          goto LABEL_49;
        }

        v35 = CFGetTypeID(v33);
        if (v35 != CFNumberGetTypeID() || !CFNumberGetValue(v34, kCFNumberSInt32Type, &v65))
        {
          goto LABEL_49;
        }

        v36 = MTForceConfigCreate(v65, 0);
        Behavior = MTForceConfigGetBehavior(v36);
        v38 = (*(*a1 + 848))(a1);
        if (Behavior > 0x11)
        {
          goto LABEL_57;
        }

        if (((1 << Behavior) & 0x31C22) == 0)
        {
          break;
        }

        v39 = 34;
        if (v36)
        {
          goto LABEL_43;
        }

LABEL_49:
        if (Count == ++v29)
        {
          goto LABEL_94;
        }
      }

      if (Behavior == 2)
      {
        if (*(v38 + 6))
        {
          v39 = 134;
        }

        else
        {
          v39 = 0;
        }

        if (!v36)
        {
          goto LABEL_49;
        }

LABEL_43:
        if (v39)
        {
          *&v40 = 0xAAAAAAAAAAAAAAAALL;
          *(&v40 + 1) = 0xAAAAAAAAAAAAAAAALL;
          v79 = v40;
          v80 = v40;
          v77 = v40;
          v78 = v40;
          v75 = v40;
          v76 = v40;
          *&valuePtr[16] = v40;
          v74 = v40;
          *valuePtr = v40;
          forceBehaviorFromForceConfig(v36, v39, valuePtr);
          if (a2 == 28)
          {
            MTForceBehaviorConfiguration::pushBehavior((v21 + 264), valuePtr);
          }

          else
          {
            MTForceManagement::setOverrideBehavior(v21, valuePtr);
          }

          MTForceBehavior::~MTForceBehavior(valuePtr);
        }
      }

      else
      {
LABEL_57:
        if (!v36)
        {
          goto LABEL_49;
        }
      }

      CFRelease(v36);
      goto LABEL_49;
    }

    if (a2 <= 31)
    {
      if (a2 == 17)
      {
        if (cf)
        {
          v62 = CFGetTypeID(cf);
          v66 = 0.0;
          if (v62 == CFNumberGetTypeID() && CFNumberGetValue(cf, kCFNumberFloatType, &v66) && (*(*a1 + 120))(a1))
          {
            v63 = (*(*a1 + 120))(a1);
            MTTrackpadEventDispatcher::setScrollMomentumDispatchRate(v63, v66);
            goto LABEL_107;
          }
        }

        else
        {
          v66 = 0.0;
        }

        v64 = MTLoggingPlugin();
        result = os_log_type_enabled(v64, OS_LOG_TYPE_ERROR);
        if (!result)
        {
          goto LABEL_95;
        }

        *valuePtr = 136315650;
        *&valuePtr[4] = "[Error] ";
        *&valuePtr[12] = 2080;
        *&valuePtr[14] = "MTTrackpadHIDManager::";
        *&valuePtr[22] = 2080;
        *&valuePtr[24] = "setPropertyInternal";
        _os_log_impl(&dword_29D381000, v64, OS_LOG_TYPE_ERROR, "[HID] [MT] %s%s%s Could not perform set property on Scroll Momentum Dispatch Rate", valuePtr, 0x20u);
        goto LABEL_94;
      }

      if (a2 != 31)
      {
        goto LABEL_100;
      }

      (*(*a1 + 80))(a1);
      result = MTDeviceSupportsForce();
      if (!result)
      {
        goto LABEL_95;
      }

      v56 = *((*(*a1 + 864))(a1) + 200);
      *(v56 + 216) = CFBooleanGetValue(cf) != 0;
    }

    else
    {
      switch(a2)
      {
        case ' ':
          (*(*a1 + 80))(a1);
          result = MTDeviceSupportsForce();
          if (!result)
          {
            goto LABEL_95;
          }

          v58 = *((*(*a1 + 864))(a1) + 200);
          v59 = CFBooleanGetValue(cf) != 0;
          MTForceManagement::setDisableClickWaveformAdaptation(v58, v59);
          break;
        case '!':
          (*(*a1 + 80))(a1);
          result = MTDeviceSupportsForce();
          if (!result)
          {
            goto LABEL_95;
          }

          v60 = *((*(*a1 + 864))(a1) + 200);
          v61 = CFBooleanGetValue(cf) != 0;
          MTForceManagement::setDisableForceThresholdAdaptation(v60, v61);
          break;
        case '""':
          if (cf)
          {
            v52 = CFGetTypeID(cf);
            if (v52 == CFBooleanGetTypeID())
            {
              *(a1 + 209) = *MEMORY[0x29EDB8F00] == cf;
              (*(*a1 + 672))(a1);
            }
          }

          goto LABEL_94;
        default:
          goto LABEL_100;
      }
    }

LABEL_107:
    result = 1;
    goto LABEL_95;
  }

  if (v9)
  {
    v41 = CFDictionaryGetValue(cf, @"AlwaysGenerateNotificationCenterGesture");
    v42 = CFDictionaryGetValue(cf, @"ClientPID");
    if (v41)
    {
      v43 = v42;
      v44 = CFGetTypeID(v41);
      if (v44 == CFBooleanGetTypeID() && v41 == *MEMORY[0x29EDB8F00])
      {
        if (v43)
        {
          v45 = CFGetTypeID(v43);
          if (v45 == CFNumberGetTypeID())
          {
            *valuePtr = -1431655766;
            CFNumberGetValue(v43, kCFNumberSInt32Type, valuePtr);
            if (v11)
            {
              MTSimpleHIDManager::retain(a1);
              v71[0] = MEMORY[0x29EDCA5F8];
              v71[1] = 0x40000000;
              v71[2] = ___ZN20MTTrackpadHIDManager19setPropertyInternalE18_MTHIDPropertyTypePKvb_block_invoke;
              v71[3] = &__block_descriptor_tmp_114;
              v71[4] = a1;
              v72 = *valuePtr;
              v17 = v71;
              goto LABEL_93;
            }

LABEL_94:
            result = 0;
            goto LABEL_95;
          }
        }
      }

      v54 = CFGetTypeID(v41);
      if (v54 == CFBooleanGetTypeID() && v41 == *MEMORY[0x29EDB8EF8])
      {
        if (v11)
        {
          MTSimpleHIDManager::retain(a1);
          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 0x40000000;
          block[2] = ___ZN20MTTrackpadHIDManager19setPropertyInternalE18_MTHIDPropertyTypePKvb_block_invoke_2;
          block[3] = &__block_descriptor_tmp_115;
          block[4] = a1;
          v17 = block;
          goto LABEL_93;
        }

        goto LABEL_94;
      }
    }
  }

LABEL_100:
  v57 = *MEMORY[0x29EDCA608];

  return MTSimpleHIDManager::setPropertyInternal(a1, a2, cf, a4);
}

unsigned int *___ZN20MTTrackpadHIDManager19setPropertyInternalE18_MTHIDPropertyTypePKvb_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  (*(*v1 + 784))(v1, *(a1 + 40));

  return MTSimpleHIDManager::release(v1);
}

unsigned int *___ZN20MTTrackpadHIDManager19setPropertyInternalE18_MTHIDPropertyTypePKvb_block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  (*(*v1 + 800))(v1);

  return MTSimpleHIDManager::release(v1);
}

unsigned int *___ZN20MTTrackpadHIDManager19setPropertyInternalE18_MTHIDPropertyTypePKvb_block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 32);
  (*(*v1 + 792))(v1, *(a1 + 40));

  return MTSimpleHIDManager::release(v1);
}

unsigned int *___ZN20MTTrackpadHIDManager19setPropertyInternalE18_MTHIDPropertyTypePKvb_block_invoke_4(uint64_t a1)
{
  v1 = *(a1 + 32);
  (*(*v1 + 808))(v1);

  return MTSimpleHIDManager::release(v1);
}

void forceBehaviorFromForceConfig(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  Behavior = MTForceConfigGetBehavior(a1);
  NumStages = MTForceConfigGetNumStages(a1);
  *&v8 = 0xAAAAAAAAAAAAAAAALL;
  *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *a3 = v8;
  *(a3 + 16) = v8;
  *(a3 + 32) = v8;
  *(a3 + 48) = v8;
  *(a3 + 64) = v8;
  *(a3 + 80) = v8;
  *(a3 + 96) = v8;
  *(a3 + 112) = v8;
  *(a3 + 128) = v8;
  MTForceBehavior::MTForceBehavior(a3);
  *(a3 + 12) = MTForceConfigIsContinuous(a1);
  *a3 = Behavior;
  *(a3 + 4) = a2;
  if (NumStages)
  {
    for (i = 0; i != NumStages; ++i)
    {
      ThresholdsForStage = MTForceConfigGetThresholdsForStage(a1, i);
      v12 = v11;
      ActuationsForStage = MTForceConfigGetActuationsForStage(a1, i);
      MTForceBehavior::addStage(a3, i, ActuationsForStage, ThresholdsForStage, v12);
      if (MTForceConfigShouldSkipActivationForStage(a1, i))
      {
        v14 = i;
        std::vector<int>::push_back[abi:ne200100]((a3 + 48), &v14);
      }

      if (MTForceConfigShouldSkipReleaseForStage(a1, i))
      {
        v15 = i;
        std::vector<int>::push_back[abi:ne200100]((a3 + 72), &v15);
      }
    }
  }
}

void MTForceBehavior::~MTForceBehavior(MTForceBehavior *this)
{
  v2 = *(this + 15);
  if (v2)
  {
    *(this + 16) = v2;
    operator delete(v2);
  }

  v3 = *(this + 12);
  if (v3)
  {
    *(this + 13) = v3;
    operator delete(v3);
  }

  v4 = *(this + 9);
  if (v4)
  {
    *(this + 10) = v4;
    operator delete(v4);
  }

  v5 = *(this + 6);
  if (v5)
  {
    *(this + 7) = v5;
    operator delete(v5);
  }

  v6 = *(this + 3);
  if (v6)
  {
    *(this + 4) = v6;
    operator delete(v6);
  }
}

uint64_t MTTrackpadHIDManager::handleContactFrame(MTTrackpadHIDManager *this, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (*(this + 18) == a2 && *(this + 152) == a6)
  {
    printf("%s: ignoring duplicate frame #%qu @ %f\n", "MTTrackpadHIDManager", a6, a2);
    return 0;
  }

  if (*(this + 121))
  {
    return 0;
  }

  *(this + 18) = a2;
  *(this + 152) = a6;
  MTTrackpadHIDManager::cancelOutstandingTapAndAHalfCallbackTimer(this);
  v14 = 0;
  cf = 0;
  v13 = 0.0;
  kdebug_trace();
  v12 = *(this + 42);
  if (v12 && (*(this + 208) & 1) == 0)
  {
    MTParser::handleContactFrame(v12, a4, a5, a2, a6, &cf, &v14, &v13);
  }

  (*(*this + 656))(this);
  if (v13 > 0.0)
  {
    MTTrackpadHIDManager::scheduleTapAndAHalfCallbackTimer(this, a2, v13);
  }

  if (cf)
  {
    (*(*this + 136))(this, cf, 0);
    CFRelease(cf);
  }

  if (v14)
  {
    (*(*this + 136))(this, v14, 0);
    CFRelease(v14);
  }

  kdebug_trace();
  return 1;
}

void MTTrackpadHIDManager::scheduleTapAndAHalfCallbackTimer(dispatch_object_t *this, double a2, double a3)
{
  MTTrackpadHIDManager::cancelOutstandingTapAndAHalfCallbackTimer(this);
  v6 = malloc_type_malloc(0x18uLL, 0x10200403ED2C137uLL);
  *v6 = a2;
  v6[1] = a3;
  *(v6 + 2) = this;
  HIDDispatchQueue = MTSimpleHIDManager::getHIDDispatchQueue(this);
  v8 = dispatch_source_create(MEMORY[0x29EDCA5D0], 0, 0, HIDDispatchQueue);
  this[35] = v8;
  if (v8)
  {
    v9 = v8;
    v10 = dispatch_time(0, (v6[1] * 1000000000.0));
    dispatch_source_set_timer(v9, v10, 0xFFFFFFFFFFFFFFFFLL, 0);
    dispatch_set_context(this[35], v6);
    v11 = this[35];
    handler[0] = MEMORY[0x29EDCA5F8];
    handler[1] = 0x40000000;
    handler[2] = ___ZN20MTTrackpadHIDManager32scheduleTapAndAHalfCallbackTimerEdd_block_invoke;
    handler[3] = &__block_descriptor_tmp_134;
    handler[4] = this;
    dispatch_source_set_event_handler(v11, handler);
    dispatch_resume(this[35]);
  }
}

uint64_t MTTrackpadHIDManager::handleNotificationEvent(void *a1, uint64_t a2, int a3)
{
  if (a3 <= 25)
  {
    if (a3 > 15)
    {
      if (a3 <= 17)
      {
        if (a3 == 16)
        {
          v15 = a1[42];
          if (v15)
          {
            v16 = *(v15 + 48);
            if (v16)
            {
              MTAbsoluteTimeGetCurrent();
              *(v16 + 48) = v17;
              v15 = a1[42];
            }

            if (*(v15 + 104) >= 2 && (**(v15 + 80))())
            {
              *(a1[42] + 89) = 1;
            }
          }

          if ((*(*a1 + 120))(a1))
          {
            v18 = (*(*a1 + 120))(a1);
            if (*(v18 + 57))
            {
              v11 = 1;
              MTTrackpadEventDispatcher::cancelOutstandingMomentumTimer(v18, 1);
              goto LABEL_34;
            }
          }
        }

        else
        {
          v4 = a1[42];
          if (v4)
          {
            v5 = *(v4 + 48);
            if (v5)
            {
              MTAbsoluteTimeGetCurrent();
              *(v5 + 48) = v6;
            }
          }
        }

        goto LABEL_33;
      }

      if (a3 != 18)
      {
        if (a3 != 19)
        {
          goto LABEL_27;
        }

        goto LABEL_30;
      }

      goto LABEL_31;
    }

    switch(a3)
    {
      case 5:
        (*(*a1 + 264))(a1);
        v20 = *((*(*a1 + 864))(a1) + 208);
        if (v20)
        {
          MTActuatorManagement::reclaimHostClickControl(v20);
        }

        goto LABEL_33;
      case 12:
LABEL_33:
        v11 = 1;
        goto LABEL_34;
      case 13:
        v8 = (*(*a1 + 648))(a1);
        if (*(a1 + 208) != v8)
        {
          *(a1 + 208) = v8;
          (*(*a1 + 672))(a1);
          if (*(a1 + 208) == 1)
          {
            v9 = (*(*a1 + 120))(a1);
            if (v9)
            {
              (*(*v9 + 184))(v9);
            }
          }
        }

        goto LABEL_33;
    }

    goto LABEL_27;
  }

  if (a3 > 28)
  {
    if (a3 > 117)
    {
      if (a3 != 118)
      {
        if (a3 != 119)
        {
          goto LABEL_27;
        }

LABEL_30:
        *((*(*a1 + 848))(a1) + 40) = 2;
LABEL_32:
        (*(*a1 + 712))(a1);
        v12 = (*(*a1 + 80))(a1);
        v13 = (*(*a1 + 848))(a1);
        SaveSurfaceOrientationForDevice(v12, *(v13 + 40), 0);
        goto LABEL_33;
      }

LABEL_31:
      *((*(*a1 + 848))(a1) + 40) = 0;
      goto LABEL_32;
    }

    if (a3 == 29)
    {
      v19 = a1[42];
      if (v19)
      {
        v11 = 1;
        MTParser::setHostClickControlEnabled(v19, 1);
        goto LABEL_34;
      }

      goto LABEL_33;
    }

    if (a3 == 30)
    {
      v7 = a1[42];
      if (v7)
      {
        MTParser::setHostClickControlEnabled(v7, 0);
      }

      goto LABEL_33;
    }

LABEL_27:
    v11 = MTSimpleHIDManager::handleNotificationEvent(a1, a2, a3);
    goto LABEL_34;
  }

  if (a3 != 26)
  {
    if (a3 == 27)
    {
      v23 = a1[42];
      if (v23)
      {
        v24 = *(v23 + 208);
        if (v24)
        {
          MTActuatorManagement::systemActuationsEnabledChanged(v24);
        }
      }
    }

    else
    {
      v10 = a1[42];
      if (v10)
      {
        MTParser::systemForceResponseEnabledChanged(v10);
      }
    }

    goto LABEL_33;
  }

  v21 = *(a1 + 121);
  v11 = MTSimpleHIDManager::handleNotificationEvent(a1, a2, 26);
  if (*(a1 + 121) != v21)
  {
    if (*(a1 + 121))
    {
      v22 = (*(*a1 + 120))(a1);
      if (v22)
      {
        (*(*v22 + 184))(v22);
      }
    }
  }

LABEL_34:
  (*(*a1 + 656))(a1);
  return v11;
}

void SaveSurfaceOrientationForDevice(uint64_t a1, int a2, int a3)
{
  if (!a1)
  {
    return;
  }

  v5 = *MEMORY[0x29EDB8F98];
  v6 = *MEMORY[0x29EDB8FA8];
  IOHIDPreferencesSynchronize();
  valuePtr = a2;
  v7 = *MEMORY[0x29EDB8ED8];
  v8 = CFNumberCreate(*MEMORY[0x29EDB8ED8], kCFNumberSInt32Type, &valuePtr);
  SavedNameForDevice = mt_CreateSavedNameForDevice();
  v10 = IOHIDPreferencesCopy();
  if (v10)
  {
    v11 = v10;
    MutableCopy = CFDictionaryCreateMutableCopy(v7, 0, v10);
    CFRelease(v11);
LABEL_7:
    v13 = v8 != 0;
    if (v8)
    {
      v14 = SavedNameForDevice == 0;
    }

    else
    {
      v14 = 1;
    }

    if (!v14 && MutableCopy != 0)
    {
      v16 = CFGetTypeID(MutableCopy);
      if (v16 == CFDictionaryGetTypeID())
      {
        if (a3)
        {
          CFDictionaryRemoveValue(MutableCopy, SavedNameForDevice);
        }

        else
        {
          CFDictionarySetValue(MutableCopy, SavedNameForDevice, v8);
        }

        IOHIDPreferencesSet();
        IOHIDPreferencesSynchronize();
      }

      CFRelease(MutableCopy);
      CFRelease(SavedNameForDevice);
LABEL_27:
      CFRelease(v8);
      return;
    }

    if (MutableCopy)
    {
      CFRelease(MutableCopy);
    }

    goto LABEL_17;
  }

  if (!a3)
  {
    MutableCopy = CFDictionaryCreateMutable(v7, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
    goto LABEL_7;
  }

  v13 = v8 != 0;
LABEL_17:
  if (SavedNameForDevice)
  {
    CFRelease(SavedNameForDevice);
  }

  if (v13)
  {
    goto LABEL_27;
  }
}

void MTTrackpadHIDManager::wasScheduledOnDispatchQueue(MTInputDeviceManagement **this, NSObject *a2)
{
  v4 = *((*(*this + 108))(this) + 208);
  if (v4)
  {
    MTActuatorManagement::scheduleOnDispatchQueue(v4, a2);
  }

  v5 = this[41];
  if (v5)
  {
    MTInputDeviceManagement::scheduleOnDispatchQueue(v5, a2);
  }

  MTSimpleHIDManager::wasScheduledOnDispatchQueue(this, a2);

  MTTrackpadHIDManager::registerForPowerNotifications(this);
}

void MTTrackpadHIDManager::registerForPowerNotifications(MTTrackpadHIDManager *this)
{
  if (MTSimpleHIDManager::getHIDDispatchQueue(this))
  {
    v2 = IORegisterForSystemPower(this, this + 37, MTTrackpadHIDManager::handlePowerNotification, this + 76);
    *(this + 72) = v2;
    if (v2)
    {
      v3 = *(this + 37);
      HIDDispatchQueue = MTSimpleHIDManager::getHIDDispatchQueue(this);

      IONotificationPortSetDispatchQueue(v3, HIDDispatchQueue);
    }

    else
    {

      puts("MultitouchHID::registerForSleepWakeNotifications() - IORegisterForSystemPower failed");
    }
  }
}

void MTTrackpadHIDManager::wasUnscheduledFromDispatchQueue(io_object_t *this, dispatch_queue_s *a2)
{
  MTTrackpadHIDManager::unregisterForPowerNotifications(this);
  MTSimpleHIDManager::wasUnscheduledFromDispatchQueue(this, a2);
  v4 = *(this + 41);
  if (v4)
  {
    MTInputDeviceManagement::unscheduleFromDispatchQueue(v4, a2);
  }

  v5 = *((*(*this + 864))(this) + 208);
  if (v5)
  {

    MTActuatorManagement::unscheduleFromDispatchQueue(v5, a2);
  }
}

void MTTrackpadHIDManager::handlePowerNotification(MTTrackpadHIDManager *this, void *a2, int a3, intptr_t notificationID, void *a5)
{
  v20 = *MEMORY[0x29EDCA608];
  if (this)
  {
    if (a3 != -536870288)
    {
      if (a3 != -536870272)
      {
        goto LABEL_10;
      }

      v7 = *(this + 42);
      if (v7 && (**(v7 + 80))())
      {
        *(*(this + 42) + 89) = 1;
      }
    }

    v8 = IOAllowPowerChange(*(this + 72), notificationID);
    if (v8)
    {
      v9 = v8;
      v10 = MTLoggingPlugin();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v12 = 136315906;
        v13 = "[Error] ";
        v14 = 2080;
        v15 = "MTTrackpadHIDManager::";
        v16 = 2080;
        v17 = "handlePowerNotification";
        v18 = 2082;
        v19 = mach_error_string(v9);
        _os_log_impl(&dword_29D381000, v10, OS_LOG_TYPE_ERROR, "[HID] [MT] %s%s%s IOAllowPowerChange failed with return %{public}s", &v12, 0x2Au);
      }
    }
  }

LABEL_10:
  v11 = *MEMORY[0x29EDCA608];
}

void MTTrackpadHIDManager::_tapAndAHalfTimerCallbackFunction(NSObject *this, dispatch_source_s *a2)
{
  context = dispatch_get_context(this);
  if (context)
  {
    v3 = *(context + 2);
    if (v3)
    {
      v5 = *context;
      v4 = *(context + 1);
      MTTrackpadHIDManager::cancelOutstandingTapAndAHalfCallbackTimer(*(context + 2));
      cf = 0;
      v6 = v4 + v5;
      v7 = MTParser::autoReleaseTapAndAHalfDrag(v3[42], &cf, v6);
      if (cf)
      {
        (*(*v3 + 17))(v3, cf, 0);
        CFRelease(cf);
      }

      if (v7 > 0.0)
      {
        MTTrackpadHIDManager::scheduleTapAndAHalfCallbackTimer(v3, v6, v7);
      }
    }
  }
}

uint64_t MTTrackpadHIDManager::checkForDisablers(MTTrackpadHIDManager *this)
{
  (*(*this + 80))(this);
  if (!MTDeviceGetService())
  {
    return 0;
  }

  (*(*this + 80))(this);
  Service = MTDeviceGetService();
  v3 = *MEMORY[0x29EDB8ED8];
  CFProperty = IORegistryEntryCreateCFProperty(Service, @"DisablingMouseAttached", *MEMORY[0x29EDB8ED8], 0);
  (*(*this + 80))(this);
  v5 = MTDeviceGetService();
  v6 = IORegistryEntryCreateCFProperty(v5, @"DisablingMouseKeysEnabled", v3, 0);
  (*(*this + 80))(this);
  v7 = MTDeviceGetService();
  v8 = IORegistryEntryCreateCFProperty(v7, @"DisablerPresent", v3, 0);
  if (CFProperty && (v9 = CFGetTypeID(CFProperty), v9 == CFBooleanGetTypeID()) && CFBooleanGetValue(CFProperty) || v6 && (v10 = CFGetTypeID(v6), v10 == CFBooleanGetTypeID()) && CFBooleanGetValue(v6) || v8 && (v11 = CFGetTypeID(v8), v11 == CFBooleanGetTypeID()) && CFBooleanGetValue(v8))
  {
    v12 = 1;
    if (!CFProperty)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  v12 = 0;
  if (CFProperty)
  {
LABEL_15:
    CFRelease(CFProperty);
  }

LABEL_16:
  if (v6)
  {
    CFRelease(v6);
  }

  if (v8)
  {
    CFRelease(v8);
  }

  return v12;
}

BOOL mthid_CFGetBoolValueWithDefault(const void *a1, uint64_t a2)
{
  valuePtr = 0;
  if (a1)
  {
    v3 = CFGetTypeID(a1);
    if (v3 == CFBooleanGetTypeID() && CFBooleanGetValue(a1))
    {
      return 1;
    }

    else
    {
      v4 = CFGetTypeID(a1);
      return v4 == CFNumberGetTypeID() && CFNumberGetValue(a1, kCFNumberSInt32Type, &valuePtr) && valuePtr != 0;
    }
  }

  return a2;
}

uint64_t mthid_CFGetUInt32ValueWithDefault(const void *a1, uint64_t a2)
{
  valuePtr = 0;
  if (a1)
  {
    v4 = CFGetTypeID(a1);
    if (v4 == CFNumberGetTypeID())
    {
      if (CFNumberGetValue(a1, kCFNumberSInt32Type, &valuePtr) == 1)
      {
        return valuePtr;
      }

      else
      {
        return a2;
      }
    }
  }

  return a2;
}

BOOL mthid_CFDictionaryGetBoolValueWithDefault(const __CFDictionary *a1, const __CFString *a2, uint64_t a3)
{
  if (!a1 || !a2)
  {
    return a3;
  }

  Value = CFDictionaryGetValue(a1, a2);

  return mthid_CFGetBoolValueWithDefault(Value, a3);
}

uint64_t mthid_CFDictionaryGetInt32PropertyWithDefault(const __CFDictionary *a1, const __CFString *a2, uint64_t a3)
{
  if (!a1 || !a2)
  {
    return a3;
  }

  Value = CFDictionaryGetValue(a1, a2);

  return mthid_CFGetUInt32ValueWithDefault(Value, a3);
}

_BYTE *MTTrackpadHIDManager::handlePendingConfigUpdate(_BYTE *this)
{
  if (this[210] == 1)
  {
    v1 = this;
    this = (*(*this + 664))(this);
    if (this)
    {
      v2 = *(*v1 + 672);

      return v2(v1);
    }
  }

  return this;
}

void MTTrackpadHIDManager::updateHIDManagerConfig(MTTrackpadHIDManager *this)
{
  v8 = *MEMORY[0x29EDCA608];
  if ((*(*this + 664))(this))
  {
    (*(*this + 80))(this);
    if (MTDeviceGetService())
    {
      v2 = *(this + 42);
      if (v2)
      {
        if (*(v2 + 72))
        {
          *(this + 210) = 0;
          (*(*this + 80))(this);
          MTDeviceGetDeviceID();
          v3 = MTLoggingPlugin();
          if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
          {
            *buf = 134217984;
            v7 = 0;
            _os_log_impl(&dword_29D381000, v3, OS_LOG_TYPE_DEBUG, "HID Manager updating config (deviceID 0x%llX)", buf, 0xCu);
          }

          (*(*this + 696))(this);
          (*(*this + 704))(this);
          (*(*this + 712))(this);
          (*(*this + 800))(this);
        }
      }
    }
  }

  else
  {
    (*(*this + 80))(this);
    MTDeviceGetDeviceID();
    v4 = MTLoggingPlugin();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134217984;
      v7 = 0;
      _os_log_impl(&dword_29D381000, v4, OS_LOG_TYPE_DEBUG, "HID Manager has pending config update (deviceID 0x%llX)", buf, 0xCu);
    }

    *(this + 210) = 1;
  }

  v5 = *MEMORY[0x29EDCA608];
}

void MTTrackpadHIDManager::determineSurfaceOrientationSettings(MTTrackpadHIDManager *this)
{
  if ((*(this + 160) & 8) != 0)
  {
    v2 = (*(*this + 848))(this);
    v3 = (*(*this + 80))(this);
    v4 = MEMORY[0x29EDB8F98];
    v5 = MEMORY[0x29EDB8FA8];
    if (!v3)
    {
      *(v2 + 44) = 0;
      goto LABEL_19;
    }

    v6 = *MEMORY[0x29EDB8F98];
    v7 = *MEMORY[0x29EDB8FA8];
    IOHIDPreferencesSynchronize();
    v8 = IOHIDPreferencesCopy();
    valuePtr = 0;
    AppBooleanValue = MTPreferencesGetAppBooleanValue(@"ForceAutoOrientation", @"com.apple.MultitouchSupport", 0);
    if (v8 && (v10 = CFGetTypeID(v8), v10 == CFNumberGetTypeID()))
    {
      Value = CFNumberGetValue(v8, kCFNumberSInt32Type, &valuePtr);
      if (valuePtr == 1 && Value != 0 || AppBooleanValue)
      {
        v14 = 1;
        goto LABEL_15;
      }
    }

    else if (AppBooleanValue)
    {
      v14 = 1;
      if (!v8)
      {
        goto LABEL_16;
      }

      goto LABEL_15;
    }

    v14 = 0;
    if (!v8)
    {
LABEL_16:
      *(v2 + 44) = v14;
      if (v14)
      {
LABEL_20:
        if (!(*(*this + 80))(this))
        {
          LODWORD(v22) = 0;
          goto LABEL_42;
        }

        v16 = *v4;
        v17 = *v5;
        IOHIDPreferencesSynchronize();
        SavedNameForDevice = mt_CreateSavedNameForDevice();
        v19 = IOHIDPreferencesCopy();
        v20 = v19;
        if (SavedNameForDevice)
        {
          v21 = v19 == 0;
        }

        else
        {
          v21 = 1;
        }

        if (v21)
        {
          LODWORD(v22) = 0;
          if (!v19)
          {
            if (!SavedNameForDevice)
            {
              goto LABEL_42;
            }

            goto LABEL_41;
          }

          goto LABEL_40;
        }

        v23 = CFGetTypeID(v19);
        if (v23 != CFDictionaryGetTypeID())
        {
          goto LABEL_39;
        }

        v24 = CFDictionaryGetValue(v20, SavedNameForDevice);
        v22 = v24;
        v27 = 0;
        if (!v24)
        {
          goto LABEL_40;
        }

        v25 = CFGetTypeID(v24);
        if (v25 == CFNumberGetTypeID() && CFNumberGetValue(v22, kCFNumberSInt32Type, &v27))
        {
          if ((v27 & 0xFFFFFFFD) != 0)
          {
            LODWORD(v22) = 0;
          }

          else
          {
            LODWORD(v22) = v27;
          }
        }

        else
        {
LABEL_39:
          LODWORD(v22) = 0;
        }

LABEL_40:
        CFRelease(v20);
        if (SavedNameForDevice)
        {
LABEL_41:
          CFRelease(SavedNameForDevice);
        }

LABEL_42:
        *(v2 + 40) = v22;
        return;
      }

LABEL_19:
      v15 = (*(*this + 80))(this);
      SaveSurfaceOrientationForDevice(v15, 0, 1);
      goto LABEL_20;
    }

LABEL_15:
    CFRelease(v8);
    goto LABEL_16;
  }
}

const __CFDictionary *MTTrackpadHIDManager::setPreferenceDefaults(const __CFDictionary *result, uint64_t a2)
{
  if (a2)
  {
    v2 = result;
    properties = 0xAAAAAAAAAAAAAAAALL;
    Service = MTDeviceGetService();
    v4 = *MEMORY[0x29EDB8ED8];
    if (IORegistryEntryCreateCFProperties(Service, &properties, *MEMORY[0x29EDB8ED8], 0))
    {
      v5 = 1;
    }

    else
    {
      v5 = properties == 0;
    }

    if (!v5)
    {
      Value = CFDictionaryGetValue(properties, @"TrackpadUserPreferences");
      if (Value || (Value = CFDictionaryGetValue(properties, @"MultitouchPreferences")) != 0)
      {
        v7 = Value;
        v8 = CFGetTypeID(Value);
        if (v8 == CFDictionaryGetTypeID())
        {
          v9 = *(v2 + 43);
          if (v9)
          {
            CFRelease(v9);
          }

          *(v2 + 43) = CFDictionaryCreateMutableCopy(v4, 0, v7);
        }
      }

      CFRelease(properties);
    }

    result = *(v2 + 43);
    if (result)
    {
      v10 = CFDictionaryGetValue(result, @"USBMouseStopsTrackpad");
      v11 = mthid_CFGetBoolValueWithDefault(v10, 0);
      result = *(v2 + 43);
      if (result)
      {
        v12 = CFDictionaryGetValue(result, @"MouseKeysStopsTrackpad");
        result = mthid_CFGetBoolValueWithDefault(v12, 0);
      }

      if ((v11 | result))
      {
        v13 = MTDeviceGetService();
        return IORegistryEntrySetCFProperty(v13, @"TrackpadUserPreferences", *(v2 + 43));
      }
    }
  }

  return result;
}

void MTTrackpadHIDManager::updatePreferences(MTTrackpadHIDManager *this, const __CFString *a2, const void *a3)
{
  if (a3 && a2)
  {
    v3 = *(this + 43);
    if (v3)
    {
      CFDictionarySetValue(v3, a2, a3);
    }
  }
}

BOOL MTTrackpadHIDManager::determineHIDManagerSettings(MTTrackpadHIDManager *this)
{
  v2 = (*(*this + 848))(this);
  v3 = *(this + 43);
  if (v3)
  {
    Value = CFDictionaryGetValue(*(this + 43), @"TrackpadBasicMode");
    v5 = mthid_CFGetBoolValueWithDefault(Value, 0);
    *v2 = 0u;
    *(v2 + 16) = 0u;
    *(v2 + 32) = 0u;
    *(v2 + 48) = 0u;
    *(v2 + 64) = 0;
    *v2 = 1;
    if (v5)
    {
      *(v2 + 12) = 257;
      v6 = CFDictionaryGetValue(v3, @"TrackpadScroll");
      v7 = mthid_CFGetBoolValueWithDefault(v6, 0);
      v8 = 0;
      if (v7)
      {
        v9 = CFDictionaryGetValue(v3, @"TrackpadHorizScroll");
        v8 = mthid_CFGetBoolValueWithDefault(v9, 0);
      }

      *(v2 + 14) = v8;
      *(v2 + 34) = v8;
    }

    else
    {
      v11 = CFDictionaryGetValue(v3, @"Clicking");
      v12 = mthid_CFGetBoolValueWithDefault(v11, 0);
      v13 = 0;
      *(v2 + 1) = v12;
      *(v2 + 37) = v12;
      if (v12)
      {
        v14 = CFDictionaryGetValue(v3, @"Dragging");
        v13 = mthid_CFGetBoolValueWithDefault(v14, 0);
      }

      *(v2 + 2) = v13;
      v15 = (*(*this + 720))(this);
      if (v15)
      {
        v16 = CFDictionaryGetValue(v3, @"TrackpadThreeFingerDrag");
        LOBYTE(v15) = mthid_CFGetBoolValueWithDefault(v16, 0);
      }

      *(v2 + 5) = v15;
      v17 = CFDictionaryGetValue(v3, @"DragLock");
      v18 = mthid_CFGetBoolValueWithDefault(v17, 0);
      v19 = 0;
      if (v18)
      {
        if (*(v2 + 2))
        {
          v19 = 1;
        }

        else
        {
          v19 = *(v2 + 5);
        }
      }

      *(v2 + 3) = v19 & 1;
      v20 = CFDictionaryGetValue(v3, @"TrackpadTwoFingerFromRightEdgeSwipeGesture");
      *(v2 + 30) = mthid_CFGetUInt32ValueWithDefault(v20, 3) == 3;
      v21 = CFDictionaryGetValue(v3, @"TrackpadRightClick");
      *(v2 + 6) = mthid_CFGetBoolValueWithDefault(v21, 0);
      *(v2 + 31) = *(this + 209);
      v22 = (*(*this + 728))(this);
      v23 = 0;
      if (v22)
      {
        v24 = CFDictionaryGetValue(v3, @"TrackpadCornerSecondaryClick");
        v23 = mthid_CFGetUInt32ValueWithDefault(v24, 0);
      }

      *(v2 + 8) = v23;
      *(v2 + 12) = 257;
      v25 = CFDictionaryGetValue(v3, @"TrackpadScroll");
      v26 = mthid_CFGetBoolValueWithDefault(v25, 0);
      v27 = 0;
      if (v26)
      {
        v28 = CFDictionaryGetValue(v3, @"TrackpadHorizScroll");
        v27 = mthid_CFGetBoolValueWithDefault(v28, 0);
      }

      *(v2 + 14) = v27;
      v29 = CFDictionaryGetValue(v3, @"TrackpadMomentumScroll");
      *(v2 + 32) = mthid_CFGetBoolValueWithDefault(v29, 0);
      v30 = CFDictionaryGetValue(v3, @"TrackpadPinch");
      *(v2 + 16) = mthid_CFGetBoolValueWithDefault(v30, 0);
      v31 = CFDictionaryGetValue(v3, @"TrackpadRotate");
      *(v2 + 17) = mthid_CFGetBoolValueWithDefault(v31, 0);
      v32 = CFDictionaryGetValue(v3, @"TrackpadTwoFingerDoubleTapGesture");
      *(v2 + 18) = mthid_CFGetUInt32ValueWithDefault(v32, 0) == 1;
      v33 = CFDictionaryGetValue(v3, @"TrackpadThreeFingerTapGesture");
      *(v2 + 19) = mthid_CFGetUInt32ValueWithDefault(v33, 2) == 2;
      v34 = CFDictionaryGetValue(v3, @"HIDScrollZoomModifierMask");
      *(v2 + 35) = mthid_CFGetUInt32ValueWithDefault(v34, 0) != 0;
      (*(*this + 736))(this);
      v35 = CFDictionaryGetValue(v3, @"TrackpadThreeFingerHorizSwipeGesture");
      *(v2 + 21) = mthid_CFGetUInt32ValueWithDefault(v35, 0) == 1;
      v36 = CFDictionaryGetValue(v3, @"TrackpadThreeFingerVertSwipeGesture");
      *(v2 + 20) = mthid_CFGetUInt32ValueWithDefault(v36, 0) == 1;
      v37 = CFDictionaryGetValue(v3, @"TrackpadThreeFingerHorizSwipeGesture");
      *(v2 + 25) = mthid_CFGetUInt32ValueWithDefault(v37, 0) == 2;
      v38 = CFDictionaryGetValue(v3, @"TrackpadThreeFingerVertSwipeGesture");
      *(v2 + 24) = mthid_CFGetUInt32ValueWithDefault(v38, 0) == 2;
      v39 = CFDictionaryGetValue(v3, @"TrackpadFourFingerHorizSwipeGesture");
      *(v2 + 23) = mthid_CFGetUInt32ValueWithDefault(v39, 0) == 1;
      v40 = CFDictionaryGetValue(v3, @"TrackpadFourFingerVertSwipeGesture");
      *(v2 + 22) = mthid_CFGetUInt32ValueWithDefault(v40, 0) == 1;
      v41 = CFDictionaryGetValue(v3, @"TrackpadFourFingerHorizSwipeGesture");
      *(v2 + 27) = mthid_CFGetUInt32ValueWithDefault(v41, 0) == 2;
      v42 = CFDictionaryGetValue(v3, @"TrackpadFourFingerVertSwipeGesture");
      *(v2 + 26) = mthid_CFGetUInt32ValueWithDefault(v42, 0) == 2;
      v43 = CFDictionaryGetValue(v3, @"TrackpadFourFingerPinchGesture");
      *(v2 + 28) = mthid_CFGetUInt32ValueWithDefault(v43, 0) == 2;
      v44 = CFDictionaryGetValue(v3, @"TrackpadFiveFingerPinchGesture");
      v45 = mthid_CFGetUInt32ValueWithDefault(v44, 0);
      v46 = 0;
      *(v2 + 29) = v45 == 2;
      if (*(this + 39) != 1001)
      {
        v46 = *(v2 + 14);
      }

      *(v2 + 34) = v46;
      v47 = CFDictionaryGetValue(v3, @"FirstClickThreshold");
      *(v2 + 48) = mthid_CFGetUInt32ValueWithDefault(v47, 1);
      v48 = CFDictionaryGetValue(v3, @"SecondClickThreshold");
      *(v2 + 52) = mthid_CFGetUInt32ValueWithDefault(v48, 1);
      v49 = CFDictionaryGetValue(v3, @"ActuationStrength");
      *(v2 + 56) = mthid_CFGetUInt32ValueWithDefault(v49, 1);
      v50 = CFDictionaryGetValue(v3, @"ActuateDetents");
      *(v2 + 60) = mthid_CFGetUInt32ValueWithDefault(v50, 1);
      v51 = CFDictionaryGetValue(v3, @"ForceSuppressed");
      *(v2 + 64) = mthid_CFGetBoolValueWithDefault(v51, 0);
    }
  }

  else
  {
    v10 = (*(*this + 80))(this);
    (*(*this + 856))(this, v10, v2);
  }

  AppBooleanValue = 1;
  if ((*(this + 160) & 4) == 0)
  {
    AppBooleanValue = MTPreferencesGetAppBooleanValue(@"ScrollMomentum", @"com.apple.MultitouchSupport", 0);
  }

  *(v2 + 33) = AppBooleanValue;
  *(v2 + 15) = 1;
  *(v2 + 4) = MTPreferencesGetAppBooleanValue(@"PointerInertia", @"com.apple.MultitouchSupport", 0);
  result = MTPreferencesGetAppBooleanValue(@"SymmetricZoom", @"com.apple.MultitouchSupport", 0);
  *(v2 + 36) = result;
  return result;
}

void MTTrackpadHIDManager::createPointClickTapDragCombo(MTTrackpadHIDManager *this, __CFDictionary *a2, const __CFString *a3, int a4, int a5, int a6, int a7, int a8)
{
  v16 = *MEMORY[0x29EDB8ED8];
  Mutable = CFArrayCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9000]);
  v18 = CFDictionaryCreateMutable(v16, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  if (Mutable)
  {
    v19 = v18 == 0;
  }

  else
  {
    v19 = 1;
  }

  if (v19)
  {
    return;
  }

  v20 = v18;
  if (*((*(*this + 848))(this) + 4))
  {
    v21 = @"Momentum AccelOnlyIfSomeResting";
  }

  else
  {
    v21 = @"AccelOnlyIfSomeResting";
  }

  if (a6)
  {
    MTPListGestureConfig::addGestureToArray(Mutable, @"Point", @"Translate", @"Resting Accel Tracking", v21, 0, 0, 0, v26);
    v22 = @"Primary Down";
LABEL_14:
    v23 = @"Tap";
    v24 = Mutable;
    v25 = 0;
    v21 = 0;
LABEL_15:
    MTPListGestureConfig::addGestureToArray(v24, v22, v23, v25, v21, 0, 0, 0, v26);
    goto LABEL_16;
  }

  if (a5)
  {
    MTPListGestureConfig::addGestureToArray(Mutable, @"Point", @"Translate", @"Resting Accel Tracking", v21, 0, 0, 0, v26);
    v22 = @"Click";
    goto LABEL_14;
  }

  if (a4)
  {
    v22 = @"Point";
    v23 = @"Translate";
    v25 = @"Resting Accel Tracking";
    v24 = Mutable;
    goto LABEL_15;
  }

LABEL_16:
  if (a7)
  {
    MTPListGestureConfig::addGestureToArray(Mutable, @"Click", @"DroppedFingerTap", 0, 0, 0, 0, 0, v26);
    if (!a8)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  if (a8)
  {
LABEL_18:
    MTPListGestureConfig::addGestureToArray(Mutable, @"Zoom Toggle", @"DoubleTap", 0, 0, 0, 0, 0, v26);
  }

LABEL_19:
  CFDictionaryAddValue(v20, @"Gestures", Mutable);
  CFDictionaryAddValue(v20, @"Transitions", @"ToMoreIfPause FromRestingPoint FromMoreFingers FromMoreWithSlightIntegrationDelay");
  CFDictionaryAddValue(a2, a3, v20);
  CFRelease(Mutable);

  CFRelease(v20);
}

void MTTrackpadHIDManager::createScrollZoomCombo(MTTrackpadHIDManager *this, __CFDictionary *a2, const __CFString *a3)
{
  v6 = (*(*this + 848))(this);
  v7 = *MEMORY[0x29EDB8ED8];
  Mutable = CFArrayCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9000]);
  v9 = CFDictionaryCreateMutable(v7, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  if (Mutable)
  {
    v10 = v9 == 0;
  }

  else
  {
    v10 = 1;
  }

  if (v10)
  {
    return;
  }

  v11 = v9;
  if (v6[15] == 1 && (v6[14] & 1) != 0 || (v6[35] & 1) != 0)
  {
    v12 = @"IfWidelySeparatedFingers AccelOnlyIfSomeResting";
  }

  else
  {
    v12 = @"IfWidelySeparatedFingers AccelOnlyIfSomeResting";
    if ((v6[16] & 1) == 0 && !v6[17])
    {
      v12 = @"AccelOnlyIfSomeResting";
    }
  }

  MTPListGestureConfig::addGestureToArray(Mutable, @"Point", @"Translate", @"Resting Accel Tracking", v12, @"LockOnFirst", 0, 0, v20);
  v13 = v6[12];
  if (v6[13] == 1)
  {
    if (*((*(*this + 848))(this) + 33))
    {
      v14 = @"Momentum";
    }

    else
    {
      v14 = @"Repetitive";
    }

    if (v13)
    {
      v15 = @"Translate";
    }

    else
    {
      v15 = @"Horizontal";
    }

LABEL_26:
    MTPListGestureConfig::addGestureToArray(Mutable, @"Scroll", v15, @"Scrolling", v14, @"LockOnFirst", @"Category", @"TwoFingerScroll", v21);
    goto LABEL_27;
  }

  if (v6[12])
  {
    if (*((*(*this + 848))(this) + 33))
    {
      v14 = @"Momentum";
    }

    else
    {
      v14 = @"Repetitive";
    }

    v15 = @"Vertical";
    goto LABEL_26;
  }

LABEL_27:
  if ((v6[13] & 1) != 0 || v6[12] == 1)
  {
    MTPListGestureConfig::addGestureToArray(Mutable, @"Scroll", @"Hold", 0, @"MayBegin", 0, @"Category", @"TwoFingerScroll", v21);
  }

  if (*((*(*this + 848))(this) + 30) == 1)
  {
    if (v6[31])
    {
      v16 = @"Right";
    }

    else
    {
      v16 = @"Left";
    }

    MTPListGestureConfig::addGestureToArray(Mutable, @"Fluid Notification", v16, @"Edge Swipe", @"OnlyIfAllMoving OnlyFromEdge", @"LockOnFirstUntilPause", @"Category", @"TwoFingerScroll", v21);
    MTPListGestureConfig::addGestureToArray(Mutable, @"Fluid Notification", @"Horizontal", @"Edge Swipe", @"OnlyIfAllMoving", @"LockOnFirstUntilPause", @"Category", @"TwoFingerNotificationCenter", v22);
    if (*((*(*this + 848))(this) + 33))
    {
      v17 = @"Momentum";
    }

    else
    {
      v17 = @"Repetitive";
    }

    MTPListGestureConfig::addGestureToArray(Mutable, @"Scroll", @"Vertical", @"Scrolling", v17, @"LockOnFirst", @"Category", @"TwoFingerNotificationCenter", v23);
  }

  if (v6[1] == 1 && v6[6] == 1)
  {
    MTPListGestureConfig::addGestureToArray(Mutable, @"Secondary Click", @"Tap", 0, 0, 0, 0, 0, v21);
  }

  (*(*this + 80))(this);
  MTDeviceSetPickButtonShouldSendSecondaryClick();
  v18 = v6[17];
  if (v6[16] == 1)
  {
    if (v6[17])
    {
      v19 = @"Scale+Rotate";
    }

    else
    {
      v19 = @"Scale";
    }

    goto LABEL_47;
  }

  if (v6[17])
  {
    v19 = @"Rotate";
LABEL_47:
    MTPListGestureConfig::addGestureToArray(Mutable, @"Orientation", v19, @"Zooming", @"Repetitive", @"LockOnFirst", 0, 0, v21);
  }

  if (v6[18] == 1)
  {
    MTPListGestureConfig::addGestureToArray(Mutable, @"Zoom Toggle", @"DoubleTap", 0, 0, 0, 0, 0, v21);
  }

  if (v6[37] == 1)
  {
    MTPListGestureConfig::addGestureToArray(Mutable, @"Click", @"DroppedFingerTap", 0, 0, 0, 0, 0, v21);
  }

  CFDictionaryAddValue(v11, @"Gestures", Mutable);
  CFDictionaryAddValue(v11, @"Transitions", @"ToMoreIfPause ToFewerAfterSlightDelay FromRestingPoint FromFewerFingers FromMoreFingers FromMoreWithSlightIntegrationDelay");
  CFDictionarySetValue(a2, a3, v11);
  CFRelease(Mutable);

  CFRelease(v11);
}

void MTTrackpadHIDManager::createRestingSwipeOrDockCombo(_DWORD *a1, __CFDictionary *a2, const void *a3, int a4, int a5, int a6, int a7, int a8, unsigned __int8 a9, unsigned __int8 a10, unsigned __int8 a11, char a12, char a13, char a14)
{
  v18 = *MEMORY[0x29EDB8ED8];
  Mutable = CFArrayCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9000]);
  v20 = CFDictionaryCreateMutable(v18, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  if (Mutable)
  {
    v21 = v20 == 0;
  }

  else
  {
    v21 = 1;
  }

  if (v21)
  {
    return;
  }

  v22 = v20;
  if (a5)
  {
    MTPListGestureConfig::addGestureToArray(Mutable, @"Click", @"DroppedFingerTap", 0, 0, 0, 0, 0, v33);
  }

  if (a1[39] != 1001)
  {
    if (*((*(*a1 + 848))(a1) + 4))
    {
      v23 = @"Momentum OnlyIfOneMoving AccelOnlyIfSomeResting";
    }

    else
    {
      v23 = @"OnlyIfOneMoving AccelOnlyIfSomeResting";
    }

    MutableCopy = CFStringCreateMutableCopy(v18, 256, v23);
    v25 = MutableCopy;
    if ((a8 & 1) == 0 && (a9 & 1) == 0 && (a10 & 1) == 0 && (a11 & 1) == 0 && (a12 & 1) == 0 && (a6 & 1) == 0)
    {
      CFStringAppend(MutableCopy, @" OnlyIfAllMoving");
    }

    MTPListGestureConfig::addGestureToArray(Mutable, @"Point", @"Translate", @"Resting Accel Tracking", v25, @"LockOnFirst", 0, 0, v33);
    CFRelease(v25);
  }

  if ((a6 & 1) != 0 || a7)
  {
    if (*((*(*a1 + 848))(a1) + 33))
    {
      v26 = @"Momentum";
    }

    else
    {
      v26 = @"Repetitive";
    }

    v27 = CFStringCreateMutableCopy(v18, 256, v26);
    v28 = v27;
    v29 = a10 | a11 | a9;
    if (a7)
    {
      CFStringAppend(v27, @" OnlyIfTwoMoving");
      if (((v29 | a6 ^ 1) & 1) == 0)
      {
        if (a4 == 5)
        {
          v30 = @" OnlyIfFourMoving";
        }

        else
        {
          v30 = @" OnlyIfAllMoving";
        }

        goto LABEL_33;
      }
    }

    else if (v29)
    {
      v30 = @" OnlyIfSomeMoving";
LABEL_33:
      CFStringAppend(v28, v30);
    }

    MTPListGestureConfig::addGestureToArray(Mutable, @"Scroll", @"Translate", @"Scrolling", v28, @"LockOnFirst", 0, 0, v33);
    CFRelease(v28);
  }

  if (a4 == 5)
  {
    v31 = @" OnlyIfFourMoving";
  }

  else
  {
    v31 = @" OnlyIfAllMoving";
  }

  if (!a8 || a10)
  {
    if (!a9 || (a11 & 1) != 0)
    {
      goto LABEL_47;
    }
  }

  else
  {
    MTPListGestureConfig::addGestureToArray(Mutable, @"Fluid Navigation", @"Horizontal", @"Swipe", v31, @"LockOnFirstUntilPause", 0, 0, v33);
    if (!a9 || (a11 & 1) != 0)
    {
      goto LABEL_46;
    }
  }

  MTPListGestureConfig::addGestureToArray(Mutable, @"Fluid Navigation", @"Vertical", @"Swipe", v31, @"LockOnFirstUntilPause", 0, 0, v33);
LABEL_46:
  MTPListGestureConfig::addGestureToArray(Mutable, @"Fluid Navigation", @"Tap", 0, 0, 0, 0, 0, v33);
LABEL_47:
  if (a10)
  {
    MTPListGestureConfig::addGestureToArray(Mutable, @"Fluid Dock", @"Horizontal", @"Swipe", v31, @"LockOnFirstUntilPause", 0, 0, v33);
  }

  if (a11)
  {
    MTPListGestureConfig::addGestureToArray(Mutable, @"Fluid Dock", @"Vertical", @"Swipe", v31, @"LockOnFirstUntilPause", 0, 0, v33);
  }

  if (a12)
  {
    MTPListGestureConfig::addGestureToArray(Mutable, @"Fluid Dock", @"Scale", @"Polar Swipe", @" OnlyIfAllMoving", @"LockOnFirstUntilPause", 0, 0, v33);
    MTPListGestureConfig::addGestureToArray(Mutable, @"Fluid Dock", @"Rotate", @"Polar Swipe", @" OnlyIfAllMoving", @"LockOnFirstUntilPause", 0, 0, v34);
  }

  if ((a10 & 1) != 0 || a11)
  {
    MTPListGestureConfig::addGestureToArray(Mutable, @"Fluid Dock", @"Tap", 0, 0, 0, 0, 0, v33);
  }

  if (a13)
  {
    MTPListGestureConfig::addGestureToArray(Mutable, @"Zoom Toggle", @"DoubleTap", 0, 0, 0, 0, 0, v33);
  }

  if (a14)
  {
    MTPListGestureConfig::addGestureToArray(Mutable, @"Show Definition", @"Tap", 0, 0, 0, 0, 0, v33);
  }

  if (a4 == 5)
  {
    v32 = @"IsRestingPoint";
  }

  else if ((a4 - 1) > 3)
  {
    v32 = @"ToMoreFingers FromFewerFingers ToFewerFingers FromMoreFingers FromMoreWithSlightIntegrationDelay";
  }

  else
  {
    v32 = off_29F34C9E8[a4 - 1];
  }

  CFDictionaryAddValue(v22, @"Transitions", v32);
  CFDictionaryAddValue(v22, @"Gestures", Mutable);
  CFDictionaryAddValue(a2, a3, v22);
  CFRelease(Mutable);

  CFRelease(v22);
}

void MTTrackpadHIDManager::activateHIDManagerSettings(MTTrackpadHIDManager *this)
{
  v2 = (*(*this + 624))(this);
  v3 = (*(*this + 632))(this);
  cf = (*(*this + 640))(this);
  v4 = *MEMORY[0x29EDB8ED8];
  v5 = MEMORY[0x29EDB9010];
  v6 = MEMORY[0x29EDB9020];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  v8 = CFDictionaryCreateMutable(v4, 2, v5, v6);
  v9 = CFArrayCreateMutable(v4, 0, MEMORY[0x29EDB9000]);
  v10 = (*(*this + 848))(this);
  MTTrackpadHIDManager::createPointClickTapDragCombo(this, v3, @"1F Point, Click & Drag", *v10, v10[1], v10[2], v10[37], v10[16]);
  MTPListGestureConfig::addChordMappingToArray(v9, @"1 Finger", @"1F Point, Click & Drag", v11);
  if ((v10[13] & 1) != 0 || (v10[12] & 1) != 0 || (v10[16] & 1) != 0 || (v10[17] & 1) != 0 || v10[15] == 1 && (v10[14] & 1) != 0 || v10[1] == 1 && v10[6] == 1)
  {
    v12 = @"Scroll, Zoom & Rotate, Secondary Click";
    MTTrackpadHIDManager::createScrollZoomCombo(this, v3, @"Scroll, Zoom & Rotate, Secondary Click");
  }

  else
  {
    v12 = @"Resting 2F Point";
    MTTrackpadHIDManager::createRestingSwipeOrDockCombo(this, v3, @"Resting 2F Point", 1, v10[37], 0, 0, 0, 0, 0, 0, 0, v10[18], 0);
  }

  MTPListGestureConfig::addChordMappingToArray(v9, @"2 Fingers", v12, v13);
  if (v10[5])
  {
    v15 = @"Drag & Click";
  }

  else
  {
    v16 = v10[24];
    v17 = 3;
    if ((v16 & 1) == 0)
    {
      if (v10[25])
      {
        v17 = 3;
      }

      else
      {
        v17 = 0;
      }
    }

    v18 = 0;
    v19 = v10[34];
    v20 = v19 | v10[20];
    if (v19 == 1)
    {
      v21 = 0;
      if ((v10[20] & 1) == 0)
      {
        if ((v10[21] | v16))
        {
          v18 = 0;
        }

        else
        {
          v18 = v10[25] ^ 1;
        }

        v20 = 0;
        if ((v10[21] | v16))
        {
          v21 = 0;
        }

        else
        {
          v21 = v10[25] ^ 1;
        }
      }
    }

    else
    {
      v21 = 0;
    }

    v15 = @"Resting 3F Swipe";
    MTTrackpadHIDManager::createRestingSwipeOrDockCombo(this, v3, @"Resting 3F Swipe", v17, v10[37], v18 & 1, v21 & 1, v10[21], v20 & 1, v10[25], v16, 0, 0, v10[19]);
  }

  MTPListGestureConfig::addChordMappingToArray(v9, @"3 Fingers", v15, v14);
  v22 = v10[26];
  v23 = v10[27];
  if ((v22 | v23))
  {
    v24 = 3;
  }

  else
  {
    v24 = 1;
  }

  MTTrackpadHIDManager::createRestingSwipeOrDockCombo(this, v3, @"Resting 4F Dock Operations", v24, v10[37], v10[34], v10[34], v10[23], v10[22], v23 & 1, v22, v10[28], 0, 0);
  MTPListGestureConfig::addChordMappingToArray(v9, @"4 Fingers", @"Resting 4F Dock Operations", v25);
  MTTrackpadHIDManager::createRestingSwipeOrDockCombo(this, v3, @"Resting T4F Dock Operations", v24, v10[37], v10[34], v10[34], v10[23], v10[22], v10[27], v10[26], v10[29], 0, 0);
  MTPListGestureConfig::addChordMappingToArray(v9, @"4 Fingers + Thumb", @"Resting T4F Dock Operations", v26);
  (*(*this + 744))(this);
  CFDictionaryAddValue(v8, @"Chords", v9);
  CFDictionaryAddValue(Mutable, @"Right", v8);
  v64 = 0;
  (*(*this + 80))(this);
  if (MTDeviceSupportsForce())
  {
    *(*(*(this + 42) + 200) + 597) = 1;
  }

  (*(*this + 592))(this, 1);
  MTParser::clear(*(this + 42), 0, 0, v27);
  MTGestureConfig::clearAllChords(*(*(this + 42) + 72));
  MTPListGestureConfig::setMotionSensitivitiesDictionary(*(*(this + 42) + 72), v2);
  MTPListGestureConfig::setGestureSetsDictionary(*(*(this + 42) + 72), v3);
  MTPListGestureConfig::setActionEventsDictionary(*(*(this + 42) + 72), cf);
  MTPListGestureConfig::setChordMappingsDictionary(*(*(this + 42) + 72), Mutable);
  MTPListGestureConfig::parseCreateGestureConfig(*(*(this + 42) + 72), &v64);
  v28 = *(this + 42);
  v29 = *(v28 + 56);
  if (v10[30] == 1)
  {
    v30 = v10[31];
    v31 = (v30 & 1) == 0;
  }

  else
  {
    v31 = 0;
    v30 = 0;
  }

  v29[136] = v31;
  v29[137] = v30 & 1;
  v29[138] = 0;
  v29[139] = v10[36];
  v32 = (*(*this + 848))(this);
  v33 = 0;
  if (*(v32 + 2) == 1)
  {
    v33 = *((*(*this + 848))(this) + 3);
  }

  *(v28 + 88) = v33 & 1;
  (*(*this + 80))(this);
  if (MTDeviceSupportsForce())
  {
    v52 = Mutable;
    v53 = v2;
    if (*(v10 + 12) >= 3u)
    {
      v34 = 1;
    }

    else
    {
      v34 = *(v10 + 12);
    }

    if (*(v10 + 13) >= 3u)
    {
      v35 = 1;
    }

    else
    {
      v35 = *(v10 + 13);
    }

    MTForceBehaviorConfiguration::clearBehaviors((*(*(this + 42) + 200) + 264));
    if (v10[64])
    {
      v36 = 1;
    }

    else
    {
      v36 = 5;
    }

    v37 = MTForceConfigCreate(v36, 0);
    if (v37)
    {
      v38 = v37;
      *&v39 = 0xAAAAAAAAAAAAAAAALL;
      *(&v39 + 1) = 0xAAAAAAAAAAAAAAAALL;
      *__p = v39;
      v63 = v39;
      v60 = v39;
      *v61 = v39;
      *v58 = v39;
      *v59 = v39;
      *v56 = v39;
      v57 = v39;
      v55 = v39;
      forceBehaviorFromForceConfig(v37, 34, &v55);
      MTForceBehaviorConfiguration::addDefaultBehavior((*(*(this + 42) + 200) + 264), &v55);
      CFRelease(v38);
      if (__p[1])
      {
        *&v63 = __p[1];
        operator delete(__p[1]);
      }

      if (v61[0])
      {
        v61[1] = v61[0];
        operator delete(v61[0]);
      }

      if (v59[1])
      {
        *&v60 = v59[1];
        operator delete(v59[1]);
      }

      if (v58[0])
      {
        v58[1] = v58[0];
        operator delete(v58[0]);
      }

      if (v56[1])
      {
        *&v57 = v56[1];
        operator delete(v56[1]);
      }
    }

    v40 = *((*(*this + 848))(this) + 6);
    v41 = MTForceConfigCreate(2, 0);
    if (v41)
    {
      v42 = v41;
      if (v40)
      {
        *&v43 = 0xAAAAAAAAAAAAAAAALL;
        *(&v43 + 1) = 0xAAAAAAAAAAAAAAAALL;
        *__p = v43;
        v63 = v43;
        v60 = v43;
        *v61 = v43;
        *v58 = v43;
        *v59 = v43;
        *v56 = v43;
        v57 = v43;
        v55 = v43;
        forceBehaviorFromForceConfig(v41, 134, &v55);
        MTForceBehaviorConfiguration::addDefaultBehavior((*(*(this + 42) + 200) + 264), &v55);
        if (__p[1])
        {
          *&v63 = __p[1];
          operator delete(__p[1]);
        }

        if (v61[0])
        {
          v61[1] = v61[0];
          operator delete(v61[0]);
        }

        if (v59[1])
        {
          *&v60 = v59[1];
          operator delete(v59[1]);
        }

        if (v58[0])
        {
          v58[1] = v58[0];
          operator delete(v58[0]);
        }

        if (v56[1])
        {
          *&v57 = v56[1];
          operator delete(v56[1]);
        }
      }

      CFRelease(v42);
    }

    LOBYTE(v55) = -86;
    (*(*this + 80))(this);
    v44 = (MTDeviceSupportsSilentClick() || v55 == 1) && *(v10 + 14) == 0;
    v45 = (*(*this + 864))(this);
    MTForceManagement::setFirstStageClickPreference(*(v45 + 200), v34);
    v46 = (*(*this + 864))(this);
    MTForceManagement::setSecondStageClickPreference(*(v46 + 200), v35);
    *(*((*(*this + 864))(this) + 200) + 593) = v44;
    *(*((*(*this + 864))(this) + 200) + 596) = v10[64];
    *(*(*(this + 42) + 200) + 597) = 0;
    v47 = *((*(*this + 864))(this) + 208);
    v48 = (*(*this + 864))(this);
    MTActuatorManagement::setFirmwareClicks(v47, v34, *(*(v48 + 200) + 593));
    Mutable = v52;
    v2 = v53;
  }

  if (v10[15])
  {
    v49 = MEMORY[0x29EDB8F00];
  }

  else
  {
    v49 = MEMORY[0x29EDB8EF8];
  }

  (*(*this + 568))(this, @"SupportsGestureScrolling", *v49);
  (*(*this + 568))(this, @"DeviceTypeHint", @"Trackpad");
  v50 = CFArrayCreateMutable(v4, 0, MEMORY[0x29EDB9000]);
  v51 = v50;
  if (v10[15] == 1)
  {
    CFArrayAppendValue(v50, @"Scroll");
  }

  if (v10[16] == 1)
  {
    CFArrayAppendValue(v51, @"Scale");
  }

  if (v10[17] == 1)
  {
    CFArrayAppendValue(v51, @"Rotate");
  }

  CFArrayAppendValue(v51, @"Translate");
  CFArrayAppendValue(v51, @"TapToClick");
  CFArrayAppendValue(v51, @"TwoFingersSecondaryClick");
  CFArrayAppendValue(v51, @"DragLock");
  CFArrayAppendValue(v51, @"DoubleTapToDrag");
  (*(*this + 568))(this, @"SupportedGestures", v51);
  CFRelease(v51);
  if (v64)
  {
    CFShow(v64);
    CFRelease(v64);
    v64 = 0;
  }

  CFRelease(v2);
  CFRelease(v3);
  CFRelease(cf);
  CFRelease(v9);
  CFRelease(v8);
  CFRelease(Mutable);
}

void sub_29D3B6F08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  MTForceBehavior::~MTForceBehavior(va);
  _Unwind_Resume(a1);
}

uint64_t MTTrackpadHIDManager::updateEventDispatcherSettings(MTTrackpadHIDManager *this)
{
  result = (*(*this + 120))(this);
  if (result)
  {
    v3 = *((*(*this + 848))(this) + 8);
    v4 = *((*(*this + 848))(this) + 40);
    v5 = v3 & 0xFFFFFFFA | 4;
    if ((v3 & 1) == 0)
    {
      v5 = v3;
    }

    if ((v3 & 2) != 0)
    {
      v5 = v5 & 0xFFFFFFF4 | 8;
    }

    if (v4 == 2)
    {
      v6 = v5;
    }

    else
    {
      v6 = v3;
    }

    v7 = (*(*this + 120))(this);
    *(v7 + 440) = *((*(*this + 848))(this) + 6);
    *((*(*this + 120))(this) + 444) = v6;
    v8 = (*(*this + 120))(this);
    if (*((*(*this + 848))(this) + 33) == 1)
    {
      v9 = *((*(*this + 848))(this) + 32);
    }

    else
    {
      v9 = 0;
    }

    *(v8 + 540) = v9 & 1;
    v10 = (*(*this + 120))(this);
    result = (*(*this + 848))(this);
    if (*(result + 15) == 1)
    {
      result = (*(*this + 848))(this);
      v11 = *(result + 14);
    }

    else
    {
      v11 = 0;
    }

    *(v10 + 548) = v11 & 1;
  }

  return result;
}

BOOL MTTrackpadHIDManager::hwSupports3FDrag(MTTrackpadHIDManager *this)
{
  if ((*(this + 160) & 2) != 0)
  {
    return 1;
  }

  (*(*this + 80))(this);
  Service = MTDeviceGetService();
  CFProperty = IORegistryEntryCreateCFProperty(Service, @"TrackpadThreeFingerDrag", *MEMORY[0x29EDB8ED8], 0);
  if (!CFProperty)
  {
    return 0;
  }

  v3 = CFProperty;
  v4 = CFGetTypeID(CFProperty);
  v5 = v4 == CFBooleanGetTypeID() && CFBooleanGetValue(v3) != 0;
  CFRelease(v3);
  return v5;
}

BOOL MTTrackpadHIDManager::hwSupportsSecondaryClickCorners(MTTrackpadHIDManager *this)
{
  if ((*(this + 160) & 2) != 0)
  {
    return 1;
  }

  (*(*this + 80))(this);
  Service = MTDeviceGetService();
  CFProperty = IORegistryEntryCreateCFProperty(Service, @"TrackpadSecondaryClickCorners", *MEMORY[0x29EDB8ED8], 0);
  if (!CFProperty)
  {
    return 0;
  }

  v3 = CFProperty;
  v4 = CFGetTypeID(CFProperty);
  v5 = v4 == CFBooleanGetTypeID() && CFBooleanGetValue(v3) != 0;
  CFRelease(v3);
  return v5;
}

uint64_t MTTrackpadHIDManager::initDefaultTrackpadSettings(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    *(a3 + 64) = 0;
    *(a3 + 32) = 0u;
    *(a3 + 48) = 0u;
    *a3 = 0u;
    *(a3 + 16) = 0u;
    result = (*(*result + 688))(result);
    *a3 = 1;
    *(a3 + 12) = 0x101010101010101;
    *(a3 + 24) = 16843009;
    *(a3 + 27) = 16843009;
    *(a3 + 31) = 256;
  }

  return result;
}

uint64_t MTTrackpadHIDManager::setPluginDefaultProperties(MTTrackpadHIDManager *this)
{
  MTSimpleHIDManager::setPluginDefaultProperties(this);
  if ((*(*this + 80))(this))
  {
    Service = MTDeviceGetService();
    if (Service)
    {
      properties = 0;
      if (IORegistryEntryCreateCFProperties(Service, &properties, *MEMORY[0x29EDB8ED8], 0))
      {
        v3 = 1;
      }

      else
      {
        v3 = properties == 0;
      }

      if (!v3)
      {
        (*(*this + 832))(this);
        CFRelease(properties);
      }
    }
  }

  return (*(*this + 568))(this, @"MTEventSource", *MEMORY[0x29EDB8F00]);
}

const void *MTTrackpadHIDManager::setDeviceAccelerationData(MTTrackpadHIDManager *this, CFDictionaryRef theDict)
{
  Value = CFDictionaryGetValue(theDict, @"HIDScrollAccelerationType");
  if (Value)
  {
    (*(*this + 568))(this, @"HIDScrollAccelerationType", Value);
  }

  v5 = CFDictionaryGetValue(theDict, @"HIDPointerAccelerationType");
  if (v5)
  {
    (*(*this + 568))(this, @"HIDPointerAccelerationType", v5);
  }

  v6 = CFDictionaryGetValue(theDict, @"HIDAccelCurves");
  if (v6)
  {
    (*(*this + 568))(this, @"HIDAccelCurves", v6);
  }

  v7 = CFDictionaryGetValue(theDict, @"HIDScrollAccelCurves");
  if (v7)
  {
    (*(*this + 568))(this, @"HIDScrollAccelCurves", v7);
  }

  v8 = CFDictionaryGetValue(theDict, @"HIDPointerReportRate");
  if (v8)
  {
    v9 = v8;
    valuePtr = 0xAAAAAAAAAAAAAAAALL;
    CFNumberGetValue(v8, kCFNumberSInt64Type, &valuePtr);
    (*(*this + 568))(this, @"HIDPointerReportRate", v9);
  }

  v10 = CFDictionaryGetValue(theDict, @"HIDScrollResolution");
  if (v10)
  {
    (*(*this + 568))(this, @"HIDScrollResolution", v10);
  }

  v11 = CFDictionaryGetValue(theDict, @"HIDScrollAccelerationTable");
  if (v11)
  {
    (*(*this + 568))(this, @"HIDScrollAccelerationTable", v11);
  }

  v12 = CFDictionaryGetValue(theDict, @"HIDPointerAccelerationTable");
  if (v12)
  {
    (*(*this + 568))(this, @"HIDPointerAccelerationTable", v12);
  }

  v13 = CFDictionaryGetValue(theDict, @"HIDDisallowRemappingOfPrimaryClick");
  if (v13)
  {
    (*(*this + 568))(this, @"HIDDisallowRemappingOfPrimaryClick", v13);
  }

  result = CFDictionaryGetValue(theDict, @"HIDPointerResolution");
  if (result)
  {
    return (*(*this + 568))(this, @"HIDPointerResolution", result);
  }

  return result;
}

uint64_t MTTrackpadHIDManager::setDeviceDefaultProperties(MTTrackpadHIDManager *this)
{
  MTSimpleHIDManager::setDeviceDefaultProperties(this);
  v2 = *(*this + 744);

  return v2(this);
}

uint64_t MTTrackpadHIDManager::restoreDevicePropertiesToDevice(MTTrackpadHIDManager *this)
{
  MTSimpleHIDManager::restoreDevicePropertiesToDevice(this);
  v2 = *(*this + 744);

  return v2(this);
}

void MTTrackpadHIDManager::activateDeviceSurfaceOrientation(dispatch_object_t *this)
{
  if ((this[20] & 8) != 0)
  {
    v7[0] = 0;
    v7[1] = v7;
    v7[2] = 0x2000000000;
    v8 = *(((*this)[106].isa)(this) + 40);
    v5[0] = 0;
    v5[1] = v5;
    v5[2] = 0x2000000000;
    v6 = *(((*this)[106].isa)(this) + 44);
    dispatch_retain(this[22]);
    dispatch_retain(this[23]);
    v3 = this[22];
    v2 = this[23];
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 0x40000000;
    block[2] = ___ZN20MTTrackpadHIDManager32activateDeviceSurfaceOrientationEv_block_invoke;
    block[3] = &unk_29F34C9C8;
    block[5] = v5;
    block[6] = this;
    block[4] = v7;
    dispatch_group_async(v2, v3, block);
    _Block_object_dispose(v5, 8);
    _Block_object_dispose(v7, 8);
  }
}

void ___ZN20MTTrackpadHIDManager32activateDeviceSurfaceOrientationEv_block_invoke(void *a1)
{
  v1 = a1[6];
  ((*v1)[94].isa)(v1, *(*(a1[4] + 8) + 24), *(*(a1[5] + 8) + 24));
  dispatch_release(v1[23]);
  v2 = v1[22];

  dispatch_release(v2);
}

void MTTrackpadHIDManager::_activateDeviceSurfaceOrientation(uint64_t a1, int a2, int a3)
{
  v23 = *MEMORY[0x29EDCA608];
  (*(*a1 + 80))(a1);
  v6 = MTDeviceSetSurfaceOrientation();
  if (v6)
  {
    v7 = v6;
    v8 = MTLoggingPlugin();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v13 = 136316162;
      v14 = "[Error] ";
      v15 = 2080;
      v16 = "MTTrackpadHIDManager::";
      v17 = 2080;
      v18 = "_activateDeviceSurfaceOrientation";
      v19 = 1024;
      v20 = a2;
      v21 = 1024;
      v22 = v7;
      _os_log_impl(&dword_29D381000, v8, OS_LOG_TYPE_ERROR, "[HID] [MT] %s%s%s setting surface orientation to %d returned 0x%08X", &v13, 0x2Cu);
    }
  }

  (*(*a1 + 80))(a1);
  v9 = MTDeviceSetSurfaceOrientationMode();
  if (v9)
  {
    v10 = v9;
    v11 = MTLoggingPlugin();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v13 = 136316162;
      v14 = "[Error] ";
      v15 = 2080;
      v16 = "MTTrackpadHIDManager::";
      v17 = 2080;
      v18 = "_activateDeviceSurfaceOrientation";
      v19 = 1024;
      v20 = a3;
      v21 = 1024;
      v22 = v10;
      _os_log_impl(&dword_29D381000, v11, OS_LOG_TYPE_ERROR, "[HID] [MT] %s%s%s setting surface orientation mode to %d returned 0x%08X", &v13, 0x2Cu);
    }
  }

  v12 = *MEMORY[0x29EDCA608];
}

uint64_t MTTrackpadHIDManager::handleButtonState(uint64_t a1, uint64_t a2, int a3)
{
  v4 = *(a1 + 336);
  if (v4 && (*(a1 + 160) & 2) != 0)
  {
    MTParser::setDivingButtonState(v4, a3 != 0);
  }

  return 1;
}

uint64_t MTTrackpadHIDManager::handleScreenSaverLaunchedNotification(MTTrackpadHIDManager *this, __CFNotificationCenter *a2, void *a3, const __CFString *a4, const void *a5, const __CFDictionary *a6)
{
  v7 = *(this + 42);
  if (v7 && (**(v7 + 80))())
  {
    *(*(this + 42) + 89) = 1;
  }

  return 1;
}

uint64_t MTTrackpadHIDManager::handleSurfaceOrientationChangedNotification(MTTrackpadHIDManager *this, __CFNotificationCenter *a2, void *a3, const __CFString *a4, const void *a5, const __CFDictionary *a6)
{
  (*(*this + 736))(this, a2, a3, a4, a5, a6);
  (*(*this + 744))(this);
  (*(*this + 712))(this);
  return 1;
}

__CFDictionary *MTTrackpadHIDManager::createDefaultMotionSensitivitiesDictionary(MTTrackpadHIDManager *this)
{
  v1 = *MEMORY[0x29EDB8ED8];
  v2 = MEMORY[0x29EDB9010];
  v3 = MEMORY[0x29EDB9020];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  v72 = 1094713344;
  valuePtr = 1137180672;
  v71 = 1031127695;
  v5 = CFNumberCreate(v1, kCFNumberFloat32Type, &valuePtr);
  v6 = CFNumberCreate(v1, kCFNumberFloat32Type, &v72);
  v7 = CFNumberCreate(v1, kCFNumberFloat32Type, &v71);
  v8 = CFDictionaryCreateMutable(v1, 0, v2, v3);
  v9 = v8;
  if (v5)
  {
    v10 = v8 == 0;
  }

  else
  {
    v10 = 1;
  }

  if (v10)
  {
    if (!v5)
    {
      if (!v6)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }
  }

  else
  {
    CFDictionaryRemoveAllValues(v8);
    CFDictionaryAddValue(v9, @"Resolution_dpi", v5);
    CFDictionaryAddValue(v9, @"AccelThresh", v6);
    CFDictionaryAddValue(v9, @"AccelPower", v7);
    CFDictionaryAddValue(Mutable, @"Resting Accel Tracking", v9);
  }

  CFRelease(v5);
  if (v6)
  {
LABEL_8:
    CFRelease(v6);
  }

LABEL_9:
  if (v7)
  {
    CFRelease(v7);
  }

  if (v9)
  {
    CFRelease(v9);
  }

  v71 = 0;
  v11 = CFNumberCreate(v1, kCFNumberFloat32Type, &valuePtr);
  v12 = CFNumberCreate(v1, kCFNumberFloat32Type, &v72);
  v13 = CFNumberCreate(v1, kCFNumberFloat32Type, &v71);
  v14 = CFDictionaryCreateMutable(v1, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  v15 = v14;
  if (v11 && v14)
  {
    CFDictionaryRemoveAllValues(v14);
    CFDictionaryAddValue(v15, @"Resolution_dpi", v11);
    CFDictionaryAddValue(v15, @"AccelThresh", v12);
    CFDictionaryAddValue(v15, @"AccelPower", v13);
    CFDictionaryAddValue(Mutable, @"Tracking", v15);
  }

  else if (!v11)
  {
    goto LABEL_18;
  }

  CFRelease(v11);
LABEL_18:
  if (v12)
  {
    CFRelease(v12);
  }

  if (v13)
  {
    CFRelease(v13);
  }

  if (v15)
  {
    CFRelease(v15);
  }

  v70 = valuePtr;
  v69 = 1045220557;
  v16 = CFNumberCreate(v1, kCFNumberFloat32Type, &v70);
  v17 = CFNumberCreate(v1, kCFNumberFloat32Type, &v72);
  v18 = CFNumberCreate(v1, kCFNumberFloat32Type, &v71);
  v19 = CFNumberCreate(v1, kCFNumberFloat32Type, &v69);
  v20 = CFDictionaryCreateMutable(v1, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  v21 = v20;
  if (v16 && v20)
  {
    CFDictionaryRemoveAllValues(v20);
    CFDictionaryAddValue(v21, @"Resolution_dpi", v16);
    CFDictionaryAddValue(v21, @"AccelThresh", v17);
    CFDictionaryAddValue(v21, @"AccelPower", v18);
    CFDictionaryAddValue(v21, @"CommitMultiplier", v19);
    CFDictionaryAddValue(Mutable, @"Scrolling", v21);
  }

  else if (!v16)
  {
    goto LABEL_29;
  }

  CFRelease(v16);
LABEL_29:
  if (v17)
  {
    CFRelease(v17);
  }

  if (v18)
  {
    CFRelease(v18);
  }

  if (v19)
  {
    CFRelease(v19);
  }

  if (v21)
  {
    CFRelease(v21);
  }

  v68 = v70;
  v69 = 1032268546;
  v22 = CFNumberCreate(v1, kCFNumberFloat32Type, &v68);
  v23 = CFNumberCreate(v1, kCFNumberFloat32Type, &v69);
  v24 = CFDictionaryCreateMutable(v1, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  v25 = v24;
  if (v22 && v24)
  {
    CFDictionaryRemoveAllValues(v24);
    CFDictionaryAddValue(v25, @"Resolution_dpi", v22);
    CFDictionaryAddValue(v25, @"CommitMultiplier", v23);
    CFDictionaryAddValue(v25, @"Acceleration", @"System");
    CFDictionaryAddValue(Mutable, @"Zooming", v25);
  }

  else if (!v22)
  {
    goto LABEL_42;
  }

  CFRelease(v22);
LABEL_42:
  if (v23)
  {
    CFRelease(v23);
  }

  if (v25)
  {
    CFRelease(v25);
  }

  v67 = 1077936128;
  v71 = 1036831949;
  v72 = 1097859072;
  v26 = CFNumberCreate(v1, kCFNumberFloat32Type, &v67);
  v27 = CFNumberCreate(v1, kCFNumberFloat32Type, &v72);
  v28 = CFNumberCreate(v1, kCFNumberFloat32Type, &v71);
  v29 = CFDictionaryCreateMutable(v1, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  v30 = v29;
  if (v26 && v27 && v28 && v29)
  {
    CFDictionaryRemoveAllValues(v29);
    CFDictionaryAddValue(v30, @"Resolution_mm", v26);
    CFDictionaryAddValue(v30, @"AccelThresh", v27);
    CFDictionaryAddValue(v30, @"AccelPower", v28);
    CFDictionaryAddValue(Mutable, @"Command", v30);
  }

  else if (!v26)
  {
    goto LABEL_53;
  }

  CFRelease(v26);
LABEL_53:
  if (v27)
  {
    CFRelease(v27);
  }

  if (v28)
  {
    CFRelease(v28);
  }

  if (v30)
  {
    CFRelease(v30);
  }

  v71 = 1045220557;
  v72 = 1097859072;
  v66 = 0x40000000;
  v67 = 1086324736;
  v64 = 1056964608;
  v65 = 1115815936;
  v31 = CFNumberCreate(v1, kCFNumberFloat32Type, &v67);
  v32 = CFNumberCreate(v1, kCFNumberFloat32Type, &v72);
  v33 = CFNumberCreate(v1, kCFNumberFloat32Type, &v71);
  v34 = CFNumberCreate(v1, kCFNumberFloat32Type, &v66);
  v35 = CFNumberCreate(v1, kCFNumberFloat32Type, &v65);
  v36 = CFNumberCreate(v1, kCFNumberFloat32Type, &v64);
  v37 = CFDictionaryCreateMutable(v1, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  v38 = v37;
  if (v31 && v32 && v33 && v34 && v35 && v36)
  {
    CFDictionaryRemoveAllValues(v37);
    CFDictionaryAddValue(v38, @"Resolution_mm", v31);
    CFDictionaryAddValue(v38, @"AccelThresh", v32);
    CFDictionaryAddValue(v38, @"AccelPower", v33);
    CFDictionaryAddValue(v38, @"FluidAnimationStartThreshold_mm", v34);
    CFDictionaryAddValue(v38, @"FluidSwipeCompleteThreshold_mm", v35);
    CFDictionaryAddValue(v38, @"FluidSwipeInertiaTime_s", v36);
    CFDictionaryAddValue(Mutable, @"Swipe", v38);
  }

  else if (!v31)
  {
    goto LABEL_68;
  }

  CFRelease(v31);
LABEL_68:
  if (v32)
  {
    CFRelease(v32);
  }

  if (v33)
  {
    CFRelease(v33);
  }

  if (v34)
  {
    CFRelease(v34);
  }

  if (v35)
  {
    CFRelease(v35);
  }

  if (v36)
  {
    CFRelease(v36);
  }

  if (v38)
  {
    CFRelease(v38);
  }

  v71 = 1045220557;
  v72 = 1097859072;
  v66 = 1077936128;
  v67 = 1090519040;
  v64 = 1056964608;
  v65 = 1107296256;
  v39 = CFNumberCreate(v1, kCFNumberFloat32Type, &v67);
  v40 = CFNumberCreate(v1, kCFNumberFloat32Type, &v72);
  v41 = CFNumberCreate(v1, kCFNumberFloat32Type, &v71);
  v42 = CFNumberCreate(v1, kCFNumberFloat32Type, &v66);
  v43 = CFNumberCreate(v1, kCFNumberFloat32Type, &v65);
  v44 = CFNumberCreate(v1, kCFNumberFloat32Type, &v64);
  v45 = CFDictionaryCreateMutable(v1, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  v46 = v45;
  if (v39 && v40 && v41 && v42 && v43 && v44)
  {
    CFDictionaryRemoveAllValues(v45);
    CFDictionaryAddValue(v46, @"Resolution_mm", v39);
    CFDictionaryAddValue(v46, @"AccelThresh", v40);
    CFDictionaryAddValue(v46, @"AccelPower", v41);
    CFDictionaryAddValue(v46, @"FluidAnimationStartThreshold_mm", v42);
    CFDictionaryAddValue(v46, @"FluidSwipeCompleteThreshold_mm", v43);
    CFDictionaryAddValue(v46, @"FluidSwipeInertiaTime_s", v44);
    CFDictionaryAddValue(Mutable, @"Polar Swipe", v46);
  }

  else if (!v39)
  {
    goto LABEL_89;
  }

  CFRelease(v39);
LABEL_89:
  if (v40)
  {
    CFRelease(v40);
  }

  if (v41)
  {
    CFRelease(v41);
  }

  if (v42)
  {
    CFRelease(v42);
  }

  if (v43)
  {
    CFRelease(v43);
  }

  if (v44)
  {
    CFRelease(v44);
  }

  if (v46)
  {
    CFRelease(v46);
  }

  v71 = 1045220557;
  v72 = 1097859072;
  v66 = 0x40000000;
  v67 = 1077936128;
  v64 = 1050253722;
  v65 = 1106247680;
  v47 = CFNumberCreate(v1, kCFNumberFloat32Type, &v67);
  v48 = CFNumberCreate(v1, kCFNumberFloat32Type, &v72);
  v49 = CFNumberCreate(v1, kCFNumberFloat32Type, &v71);
  v50 = CFNumberCreate(v1, kCFNumberFloat32Type, &v66);
  v51 = CFNumberCreate(v1, kCFNumberFloat32Type, &v65);
  v52 = CFNumberCreate(v1, kCFNumberFloat32Type, &v64);
  v53 = CFDictionaryCreateMutable(v1, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  v54 = v53;
  if (v47 && v48 && v49 && v50 && v51 && v52)
  {
    CFDictionaryRemoveAllValues(v53);
    CFDictionaryAddValue(v54, @"Resolution_mm", v47);
    CFDictionaryAddValue(v54, @"AccelThresh", v48);
    CFDictionaryAddValue(v54, @"AccelPower", v49);
    CFDictionaryAddValue(v54, @"FluidAnimationStartThreshold_mm", v50);
    CFDictionaryAddValue(v54, @"FluidSwipeCompleteThreshold_mm", v51);
    CFDictionaryAddValue(v54, @"FluidSwipeInertiaTime_s", v52);
    CFDictionaryAddValue(Mutable, @"Edge Swipe", v54);
  }

  else if (!v47)
  {
    goto LABEL_110;
  }

  CFRelease(v47);
LABEL_110:
  if (v48)
  {
    CFRelease(v48);
  }

  if (v49)
  {
    CFRelease(v49);
  }

  if (v50)
  {
    CFRelease(v50);
  }

  if (v51)
  {
    CFRelease(v51);
  }

  if (v52)
  {
    CFRelease(v52);
  }

  if (v54)
  {
    CFRelease(v54);
  }

  v66 = 1077936128;
  v67 = 1077936128;
  v71 = 1045220557;
  v72 = 1097859072;
  v64 = 1050253722;
  v65 = 1106247680;
  v55 = CFNumberCreate(v1, kCFNumberFloat32Type, &v67);
  v56 = CFNumberCreate(v1, kCFNumberFloat32Type, &v72);
  v57 = CFNumberCreate(v1, kCFNumberFloat32Type, &v71);
  v58 = CFNumberCreate(v1, kCFNumberFloat32Type, &v66);
  v59 = CFNumberCreate(v1, kCFNumberFloat32Type, &v65);
  v60 = CFNumberCreate(v1, kCFNumberFloat32Type, &v64);
  v61 = CFDictionaryCreateMutable(v1, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  v62 = v61;
  if (v55 && v56 && v57 && v58 && v59 && v60)
  {
    CFDictionaryRemoveAllValues(v61);
    CFDictionaryAddValue(v62, @"Resolution_mm", v55);
    CFDictionaryAddValue(v62, @"AccelThresh", v56);
    CFDictionaryAddValue(v62, @"AccelPower", v57);
    CFDictionaryAddValue(v62, @"FluidAnimationStartThreshold_mm", v58);
    CFDictionaryAddValue(v62, @"FluidSwipeCompleteThreshold_mm", v59);
    CFDictionaryAddValue(v62, @"FluidSwipeInertiaTime_s", v60);
    CFDictionaryAddValue(Mutable, @"Edge Scroll", v62);
  }

  else if (!v55)
  {
    goto LABEL_131;
  }

  CFRelease(v55);
LABEL_131:
  if (v56)
  {
    CFRelease(v56);
  }

  if (v57)
  {
    CFRelease(v57);
  }

  if (v58)
  {
    CFRelease(v58);
  }

  if (v59)
  {
    CFRelease(v59);
  }

  if (v60)
  {
    CFRelease(v60);
  }

  if (v62)
  {
    CFRelease(v62);
  }

  return Mutable;
}

CFDictionaryRef MTTrackpadHIDManager::copyProperty(MTTrackpadHIDManager *this, const __CFString *a2)
{
  v4 = MTSimpleHIDManager::propertyTypeFromString(a2, a2);
  if (v4 == 17)
  {
    v14 = (*(*this + 120))(this);
    if (v14)
    {
      v19 = *(v14 + 544);
      return CFNumberCreate(*MEMORY[0x29EDB8ED8], kCFNumberFloatType, &v19);
    }
  }

  else if (v4 == 73)
  {
    v5 = MTSimpleHIDManager::copyProperty(this, a2);
    if (!v5)
    {
      return 0;
    }

    v6 = v5;
    v7 = CFGetTypeID(v5);
    if (v7 != CFDictionaryGetTypeID())
    {
      return v6;
    }

    v8 = *MEMORY[0x29EDB8ED8];
    Count = CFDictionaryGetCount(v6);
    MutableCopy = CFDictionaryCreateMutableCopy(v8, Count + 1, v6);
    CFDictionarySetValue(MutableCopy, @"Trackpad HID pref", *(this + 43));
    if (*(this + 42))
    {
      Mutable = CFDictionaryCreateMutable(v8, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
      HostClickControlEnabled = MTParser::getHostClickControlEnabled(*(this + 42));
      v13 = MEMORY[0x29EDB8F00];
      if (!HostClickControlEnabled)
      {
        v13 = MEMORY[0x29EDB8EF8];
      }

      CFDictionarySetValue(Mutable, @"Parser", *v13);
      valuePtr = -86;
      v20[1] = -1431655766;
      (*(*this + 80))(this);
      MTDeviceGetMTActuator();
      MTActuatorGetReport();
      CFDictionarySetValue(MutableCopy, @"Host Click Mode", Mutable);
      CFRelease(Mutable);
    }

    v16 = (*(*this + 120))(this);
    if (v16)
    {
      v20[0] = *(v16 + 544);
      v17 = CFNumberCreate(v8, kCFNumberFloatType, v20);
      if (v17)
      {
        v18 = v17;
        CFDictionarySetValue(MutableCopy, @"Scroll Momentum Dispatch Rate", v17);
        CFRelease(v18);
      }
    }

    CFRelease(v6);
    return MutableCopy;
  }

  return MTSimpleHIDManager::copyProperty(this, a2);
}

MTPListGestureConfig *MTTrackpadHIDManager::createDefaultActionEventsDictionary(MTTrackpadHIDManager *this)
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  MTPListGestureConfig::addActionEventToDictionary(Mutable, @"Point", @"Mouse Point", 0, 0, v2);
  MTPListGestureConfig::addActionEventToDictionary(Mutable, @"Drag", @"Mouse Drag", @"Button1", 0, v3);
  MTPListGestureConfig::addActionEventToDictionary(Mutable, @"Click", @"Mouse Click", @"Button1", 0, v4);
  MTPListGestureConfig::addActionEventToDictionary(Mutable, @"Double Click", @"Mouse Double Click", @"Button1", 0, v5);
  MTPListGestureConfig::addActionEventToDictionary(Mutable, @"Primary Down", @"Mouse Down", @"Button1", 0, v6);
  MTPListGestureConfig::addActionEventToDictionary(Mutable, @"Primary Up", @"Mouse Up", @"Button1", 0, v7);
  MTPListGestureConfig::addActionEventToDictionary(Mutable, @"Secondary Click", @"Mouse Click", @"Button2", 0, v8);
  MTPListGestureConfig::addActionEventToDictionary(Mutable, @"Scroll", @"Scroll", 0, 0, v9);
  MTPListGestureConfig::addActionEventToDictionary(Mutable, @"Scroll To Edge", @"Scroll To Edge", 0, 0, v10);
  MTPListGestureConfig::addActionEventToDictionary(Mutable, @"Orientation", @"Orientation", 0, 0, v11);
  MTPListGestureConfig::addActionEventToDictionary(Mutable, @"Zoom Toggle", @"Zoom Toggle", 0, 0, v12);
  MTPListGestureConfig::addActionEventToDictionary(Mutable, @"Gesture Started", @"Gesture Started", 0, 0, v13);
  MTPListGestureConfig::addActionEventToDictionary(Mutable, @"Gesture Ended", @"Gesture Ended", 0, 0, v14);
  MTPListGestureConfig::addActionEventToDictionary(Mutable, @"Fluid Navigation", @"Fluid Navigation", 0, 0, v15);
  MTPListGestureConfig::addActionEventToDictionary(Mutable, @"Fluid Notification", @"Fluid Notification", 0, 0, v16);
  MTPListGestureConfig::addActionEventToDictionary(Mutable, @"Fluid Notification Alt", @"Fluid Notification Alt", 0, 0, v17);
  MTPListGestureConfig::addActionEventToDictionary(Mutable, @"Fluid Dock", @"Fluid Dock", 0, 0, v18);
  MTPListGestureConfig::addActionEventToDictionary(Mutable, @"Show Definition", @"Show Definition", 0, 0, v19);
  MTPListGestureConfig::addActionEventToDictionary(Mutable, @"Swipe Left", @"Swipe", 0, 0, v20);
  MTPListGestureConfig::addActionEventToDictionary(Mutable, @"Swipe Right", @"Swipe", 0, 0, v21);
  MTPListGestureConfig::addActionEventToDictionary(Mutable, @"Swipe Up", @"Swipe", 0, 0, v22);
  MTPListGestureConfig::addActionEventToDictionary(Mutable, @"Swipe Down", @"Swipe", 0, 0, v23);
  return Mutable;
}

__CFDictionary *MTTrackpadHIDManager::createDefaultGestureSetsDictionary(MTTrackpadHIDManager *this)
{
  v2 = *MEMORY[0x29EDB8ED8];
  v3 = MEMORY[0x29EDB9010];
  v4 = MEMORY[0x29EDB9020];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  v6 = CFArrayCreateMutable(v2, 0, MEMORY[0x29EDB9000]);
  v7 = CFDictionaryCreateMutable(v2, 0, v3, v4);
  if (v6)
  {
    v8 = v7 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (!v8)
  {
    v9 = v7;
    CFDictionaryAddValue(v7, @"Gestures", v6);
    CFDictionaryAddValue(v9, @"Transitions", @"ToMoreFingers FromFewerFingers FromMoreFingers");
    CFDictionaryAddValue(Mutable, @"None", v9);
    CFRelease(v6);
    CFRelease(v9);
  }

  v10 = CFArrayCreateMutable(v2, 0, MEMORY[0x29EDB9000]);
  v11 = CFDictionaryCreateMutable(v2, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  if (v10)
  {
    v12 = v11 == 0;
  }

  else
  {
    v12 = 1;
  }

  if (!v12)
  {
    v13 = v11;
    MTPListGestureConfig::addGestureToArray(v10, @"Point", @"Translate", @"Tracking", @"Repetitive", 0, 0, 0, v42);
    CFDictionaryAddValue(v13, @"Gestures", v10);
    CFDictionaryAddValue(v13, @"Transitions", @"ToMoreFingers FromMoreFingers FromMoreWithSlightIntegrationDelay AccelOnlyIfSomeResting");
    CFDictionaryAddValue(Mutable, @"Point", v13);
    CFRelease(v10);
    CFRelease(v13);
  }

  v14 = CFArrayCreateMutable(v2, 0, MEMORY[0x29EDB9000]);
  v15 = CFDictionaryCreateMutable(v2, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  if (v14)
  {
    v16 = v15 == 0;
  }

  else
  {
    v16 = 1;
  }

  if (!v16)
  {
    v17 = v15;
    MTPListGestureConfig::addGestureToArray(v14, @"Point", @"Translate", @"Tracking", @"Repetitive", 0, 0, 0, v42);
    MTPListGestureConfig::addGestureToArray(v14, @"Click", @"Tap", 0, 0, 0, 0, 0, v43);
    CFDictionaryAddValue(v17, @"Gestures", v14);
    CFDictionaryAddValue(v17, @"Transitions", @"ToMoreFingers FromMoreFingers FromMoreWithSlightIntegrationDelay AccelOnlyIfSomeResting");
    CFDictionaryAddValue(Mutable, @"Point & Click", v17);
    CFRelease(v14);
    CFRelease(v17);
  }

  v18 = CFArrayCreateMutable(v2, 0, MEMORY[0x29EDB9000]);
  v19 = CFDictionaryCreateMutable(v2, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  if (v18)
  {
    v20 = v19 == 0;
  }

  else
  {
    v20 = 1;
  }

  if (!v20)
  {
    v21 = v19;
    MTPListGestureConfig::addGestureToArray(v18, @"Point", @"Translate", @"Tracking", @"Repetitive", 0, 0, 0, v42);
    MTPListGestureConfig::addGestureToArray(v18, @"Primary Down", @"Tap", 0, 0, 0, 0, 0, v44);
    CFDictionaryAddValue(v21, @"Gestures", v18);
    CFDictionaryAddValue(v21, @"Transitions", @"ToMoreFingers FromMoreFingers FromMoreWithSlightIntegrationDelay");
    CFDictionaryAddValue(Mutable, @"Point, Click & Drag", v21);
    CFRelease(v18);
    CFRelease(v21);
  }

  v22 = CFArrayCreateMutable(v2, 0, MEMORY[0x29EDB9000]);
  v23 = CFDictionaryCreateMutable(v2, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  if (v22)
  {
    v24 = v23;
    if (v23)
    {
      if (*((*(*this + 848))(this) + 1) == 1)
      {
        if ((*((*(*this + 848))(this) + 19) & 1) == 0)
        {
          MTPListGestureConfig::addGestureToArray(v22, @"Click", @"Tap", 0, 0, 0, 0, 0, v42);
        }

        MTPListGestureConfig::addGestureToArray(v22, @"Click", @"DroppedFingerTap", 0, 0, 0, 0, 0, v42);
      }

      if (*((*(*this + 848))(this) + 19) == 1)
      {
        MTPListGestureConfig::addGestureToArray(v22, @"Show Definition", @"Tap", 0, 0, 0, 0, 0, v42);
      }

      valuePtr = 1138819072;
      v25 = CFNumberCreate(v2, kCFNumberFloat32Type, &valuePtr);
      MTPListGestureConfig::addGestureToArray(v22, @"Primary Down", @"Hold", 0, @"TimeHeld BeginSlide", 0, @"HoldTime", v25, v42);
      CFRelease(v25);
      MTPListGestureConfig::addGestureToArray(v22, @"Drag", @"Translate", @"Scrolling", @"Momentum", 0, 0, 0, v45);
      MTPListGestureConfig::addGestureToArray(v22, @"Primary Up", @"Lift", 0, 0, 0, 0, 0, v46);
      CFDictionaryAddValue(v24, @"Gestures", v22);
      CFDictionaryAddValue(v24, @"Transitions", @"ToFewerFingers FromFewerIfPause MultiFingerDrag ");
      CFDictionaryAddValue(Mutable, @"Drag & Click", v24);
      CFRelease(v22);
      CFRelease(v24);
    }
  }

  v26 = CFArrayCreateMutable(v2, 0, MEMORY[0x29EDB9000]);
  v27 = CFDictionaryCreateMutable(v2, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  if (v26)
  {
    v28 = v27;
    if (v27)
    {
      MTPListGestureConfig::addGestureToArray(v26, @"Scroll", @"Translate", @"Scrolling", @"Repetitive", 0, 0, 0, v42);
      CFDictionaryAddValue(v28, @"Gestures", v26);
      CFDictionaryAddValue(v28, @"Transitions", @"ToFewerFingers FromFewerIfPause");
      CFDictionaryAddValue(Mutable, @"Scroll", v28);
      CFRelease(v26);
      CFRelease(v28);
    }
  }

  v29 = CFArrayCreateMutable(v2, 0, MEMORY[0x29EDB9000]);
  v30 = CFDictionaryCreateMutable(v2, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  if (v29)
  {
    v31 = v30;
    if (v30)
    {
      MTPListGestureConfig::addGestureToArray(v29, @"Scroll", @"Translate", @"Scrolling", @"Repetitive", 0, 0, 0, v42);
      MTPListGestureConfig::addGestureToArray(v29, @"Secondary Click", @"Tap", 0, 0, 0, 0, 0, v47);
      CFDictionaryAddValue(v31, @"Gestures", v29);
      CFDictionaryAddValue(v31, @"Transitions", @"ToFewerFingers FromFewerIfPause");
      CFDictionaryAddValue(Mutable, @"Scroll & Secondary Click", v31);
      CFRelease(v29);
      CFRelease(v31);
    }
  }

  v32 = CFArrayCreateMutable(v2, 0, MEMORY[0x29EDB9000]);
  v33 = CFDictionaryCreateMutable(v2, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  if (v32)
  {
    v34 = v33;
    if (v33)
    {
      MTPListGestureConfig::addGestureToArray(v32, @"Scroll", @"Translate", @"Scrolling", @"Repetitive", @"LockOnFirst", 0, 0, v42);
      MTPListGestureConfig::addGestureToArray(v32, @"Orientation", @"Scale+Rotate", @"Zooming", @"Repetitive", @"LockOnFirst", 0, 0, v48);
      CFDictionaryAddValue(v34, @"Gestures", v32);
      CFDictionaryAddValue(v34, @"Transitions", @"ToFewerFingers FromFewerIfPause");
      CFDictionaryAddValue(Mutable, @"Scroll, Zoom & Rotate", v34);
      CFRelease(v32);
      CFRelease(v34);
    }
  }

  v35 = CFArrayCreateMutable(v2, 0, MEMORY[0x29EDB9000]);
  v36 = CFDictionaryCreateMutable(v2, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  if (v35)
  {
    v37 = v36;
    if (v36)
    {
      MTPListGestureConfig::addGestureToArray(v35, @"Orientation", @"Scale+Rotate", @"Zooming", @"Repetitive", 0, 0, 0, v42);
      CFDictionaryAddValue(v37, @"Gestures", v35);
      CFDictionaryAddValue(v37, @"Transitions", @"ToFewerFingers FromFewerFingers");
      CFDictionaryAddValue(Mutable, @"Zoom & Rotate", v37);
      CFRelease(v35);
      CFRelease(v37);
    }
  }

  v38 = CFArrayCreateMutable(v2, 0, MEMORY[0x29EDB9000]);
  v39 = CFDictionaryCreateMutable(v2, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  if (v38)
  {
    v40 = v39;
    if (v39)
    {
      MTPListGestureConfig::addGestureToArray(v38, @"Swipe Left", @"Left", @"Swipe", @"OncePerDirection OnlyIfAllMoving", 0, 0, 0, v42);
      MTPListGestureConfig::addGestureToArray(v38, @"Swipe Right", @"Right", @"Swipe", @"OncePerDirection OnlyIfAllMoving", 0, 0, 0, v49);
      MTPListGestureConfig::addGestureToArray(v38, @"Swipe Up", @"Up", @"Swipe", @"OncePerDirection OnlyIfAllMoving", 0, 0, 0, v50);
      MTPListGestureConfig::addGestureToArray(v38, @"Swipe Down", @"Down", @"Swipe", @"OncePerDirection OnlyIfAllMoving", 0, 0, 0, v51);
      CFDictionaryAddValue(v40, @"Transitions", @"FromMoreFingers ToMoreFingers ToFewerAfterSlightDelay FromFewerFingers FromMoreWithSlightIntegrationDelay");
      CFDictionaryAddValue(v40, @"Gestures", v38);
      CFDictionaryAddValue(Mutable, @"Swipes", v40);
      CFRelease(v38);
      CFRelease(v40);
    }
  }

  return Mutable;
}

void MTTrackpadHIDManager::~MTTrackpadHIDManager(MTTrackpadHIDManager *this)
{
  MTSimpleHIDManager::~MTSimpleHIDManager(this);

  JUMPOUT(0x29ED547D0);
}

void MTMouseEmbeddedEventDispatcher::dispatchPointingEvent(MTMouseEmbeddedEventDispatcher *this, int a2, int a3, int a4, unint64_t a5, char a6, int a7)
{
  v25 = *MEMORY[0x29EDCA608];
  if (a6)
  {
    if (a4 & *(this + 520))
    {
      v13 = a4 & 0xFFFFFFFC | 2;
    }

    else
    {
      v13 = a4;
    }

    if (v13 != *(this + 131))
    {
      v14 = MTLoggingPlugin();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v17 = 136315906;
        v18 = "";
        v19 = 2080;
        v20 = "MTMouseEmbeddedEventDispatcher::";
        v21 = 2080;
        v22 = "dispatchPointingEvent";
        v23 = 1024;
        v24 = v13;
        _os_log_impl(&dword_29D381000, v14, OS_LOG_TYPE_DEFAULT, "[HID] [MT] %s%s%s Dispatching Pointer event from FW with button 0x%08x", &v17, 0x26u);
      }
    }

    MTTrackpadEventDispatcher::dispatchPointingEvent(this, a2, a3, a4, a5, 1, a7);
  }

  else
  {
    v15 = MTLoggingPlugin();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v17 = 136315650;
      v18 = "[Error] ";
      v19 = 2080;
      v20 = "MTMouseEmbeddedEventDispatcher::";
      v21 = 2080;
      v22 = "dispatchPointingEvent";
      _os_log_impl(&dword_29D381000, v15, OS_LOG_TYPE_ERROR, "[HID] [MT] %s%s%s Unexpected request to dispatch a Pointer event. Ignoring.", &v17, 0x20u);
    }
  }

  v16 = *MEMORY[0x29EDCA608];
}

uint64_t MTMouseEmbeddedEventDispatcher::shouldDispatchPointerEvent(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = *MEMORY[0x29EDCA608];
  Children = IOHIDEventGetChildren();
  if (Children)
  {
    Count = CFArrayGetCount(Children);
  }

  else
  {
    Count = 0;
  }

  if ((IOHIDEventGetIntegerValue() & 2) != 0 || (IOHIDEventGetIntegerValue() & 0x80) != 0 || a4 && (IOHIDEventGetPhase() & 0xD) != 0)
  {
    v8 = MTLoggingPlugin();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = (IOHIDEventGetIntegerValue() >> 7) & 1;
      v10 = IOHIDEventGetIntegerValue() == 1;
      v16 = 136316930;
      v17 = "";
      v11 = IOHIDEventGetIntegerValue() == 1;
      v18 = 2080;
      v19 = "MTMouseEmbeddedEventDispatcher::";
      v20 = 2080;
      v21 = "shouldDispatchPointerEvent";
      v22 = 2048;
      v12 = "no";
      v23 = Count;
      if (a4)
      {
        v12 = "yes";
      }

      v24 = 1024;
      v25 = v9;
      v26 = 1024;
      v27 = v10;
      v28 = 1024;
      v29 = v11;
      v30 = 2082;
      v31 = v12;
      _os_log_impl(&dword_29D381000, v8, OS_LOG_TYPE_DEFAULT, "[HID] [MT] %s%s%s Dispatching Pointer event with digitizer (%lu contacts, cancel=%d, touching=%d, inrange=%d), scroll? %{public}s", &v16, 0x46u);
    }
  }

  v13 = IOHIDEventGetIntegerValue() || (IOHIDEventGetIntegerValue() & 2) != 0 || (a4 | IOHIDEventGetIntegerValue() & 1) != 0;
  v14 = *MEMORY[0x29EDCA608];
  return (v13 | *(a1 + 432)) & 1;
}

void MTMouseEmbeddedEventDispatcher::~MTMouseEmbeddedEventDispatcher(MTMouseEmbeddedEventDispatcher *this)
{
  *this = &unk_2A24124F8;
  std::__list_imp<double>::clear(this + 62);
  std::__tree<std::__value_type<unsigned int,std::list<double>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::list<double>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::list<double>>>>::destroy(this + 472, *(this + 60));

  MTSimpleEventDispatcher::~MTSimpleEventDispatcher(this);
}

{
  *this = &unk_2A24124F8;
  std::__list_imp<double>::clear(this + 62);
  std::__tree<std::__value_type<unsigned int,std::list<double>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::list<double>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::list<double>>>>::destroy(this + 472, *(this + 60));
  MTSimpleEventDispatcher::~MTSimpleEventDispatcher(this);

  JUMPOUT(0x29ED547D0);
}

void MTTelemetryAnalyticsReporter::MTTelemetryAnalyticsReporter(MTTelemetryAnalyticsReporter *this)
{
  *this = 0;
  *(this + 8) = 0;
}

{
  *this = 0;
  *(this + 8) = 0;
}

void MTTelemetryAnalyticsReporter::~MTTelemetryAnalyticsReporter(MTTelemetryAnalyticsReporter *this)
{
  MTTelemetryAnalyticsReporter::stop(this);
}

{
  MTTelemetryAnalyticsReporter::stop(this);
}

uint64_t MTTelemetryAnalyticsReporter::stop(MTTelemetryAnalyticsReporter *this)
{
  v2 = *this;
  if (v2)
  {
    if (*(this + 8) == 1)
    {
      if (MTUnregisterFullFrameCallback())
      {
        v3 = 0;
      }

      else
      {
        v3 = 3758097084;
      }

      v2 = *this;
    }

    else
    {
      v3 = 0;
    }

    CFRelease(v2);
    *this = 0;
  }

  else
  {
    v3 = 0;
  }

  *(this + 8) = 0;
  return v3;
}

uint64_t MTTelemetryAnalyticsReporter::processTelemetryReport(uint64_t result, unsigned __int8 *a2, int a3)
{
  v14[2] = *MEMORY[0x29EDCA608];
  if (result)
  {
    if (a2)
    {
      v5 = *a2;
      result = MTDeviceGetSATelemetryReportID();
      if (a3 == 17 && v5 == result && a2[15] == 1)
      {
        if (a2[12] == 1)
        {
          [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@.%@", @"com.apple.multitouch", @"baseline.inversion"];
          v13[0] = @"Lockscreen_Status";
          v6 = [MEMORY[0x29EDBA070] numberWithBool:a2[11]];
          v13[1] = @"Touch_Frequency";
          v14[0] = v6;
          v14[1] = [MEMORY[0x29EDBA070] numberWithUnsignedChar:a2[9]];
          [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v14 forKeys:v13 count:2];
          result = AnalyticsSendEventLazy();
        }

        if (a2[13] == 1)
        {
          [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@.%@", @"com.apple.multitouch", @"baseline.adaptation"];
          v11[0] = @"AdaptationInterval";
          v12[0] = [MEMORY[0x29EDBA070] numberWithInt:*(a2 + 1)];
          v11[1] = @"FreqDuringAdaptation";
          v12[1] = [MEMORY[0x29EDBA070] numberWithUnsignedChar:a2[9]];
          v11[2] = @"Lockscreen_Status";
          v12[2] = [MEMORY[0x29EDBA070] numberWithBool:a2[11]];
          v11[3] = @"TimeSinceLastAdapt";
          v12[3] = [MEMORY[0x29EDBA070] numberWithInt:*(a2 + 5)];
          v11[4] = @"Touching";
          v12[4] = [MEMORY[0x29EDBA070] numberWithBool:a2[10]];
          [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v12 forKeys:v11 count:5];
          result = AnalyticsSendEventLazy();
        }

        if (a2[14] == 1)
        {
          [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@.%@", @"com.apple.multitouch", @"dtn.allcolumnscovered"];
          v9[0] = @"Lockscreen_Status";
          v7 = [MEMORY[0x29EDBA070] numberWithBool:a2[11]];
          v9[1] = @"Touch_Frequency";
          v10[0] = v7;
          v10[1] = [MEMORY[0x29EDBA070] numberWithUnsignedChar:a2[9]];
          [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v10 forKeys:v9 count:2];
          result = AnalyticsSendEventLazy();
        }
      }
    }
  }

  v8 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t MTMouseHIDManager::initialize(MTModeSwitcher *a1, uint64_t a2, const void *a3, int a4, int a5)
{
  *(a1 + 364) = 0;
  MTAbsoluteTimeGetCurrent();
  *(a1 + 47) = v10;
  *(a1 + 96) = 0;
  MTAbsoluteTimeGetCurrent();
  *(a1 + 49) = v11;
  v12 = (*(*a1 + 880))(a1);
  (*(*a1 + 888))(a1, a3, v12);

  return MTTrackpadHIDManager::initialize(a1, a2, a3, a4, a5);
}

uint64_t MTMouseHIDManager::registerDeviceDataCallbacks(MTMouseHIDManager *this)
{
  MTTrackpadHIDManager::registerDeviceDataCallbacks(this);
  (*(*this + 80))(this);
  MTRegisterTrackingCallback();
  v2 = (*(*this + 80))(this);

  return MEMORY[0x2A1C68710](v2, MTMouseHIDManager::forwardFrameProcessingEntryExit, this);
}

uint64_t MTMouseHIDManager::unregisterDeviceDataCallbacks(MTMouseHIDManager *this)
{
  (*(*this + 80))(this);
  MTUnregisterFrameProcessingEntryExitCallback();
  (*(*this + 80))(this);
  MTUnregisterTrackingCallback();

  return MTTrackpadHIDManager::unregisterDeviceDataCallbacks(this);
}

void MTMouseHIDManager::setDeviceUsages(MTMouseHIDManager *this)
{
  MTTrackpadHIDManager::setDeviceUsages(this);
  v2 = (*(*this + 560))(this, @"DeviceUsagePairs");
  if (v2)
  {
    v3 = v2;
    if (CFArrayGetCount(v2) >= 1)
    {
      v4 = 0;
      v5 = -1;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v3, v4);
        if (ValueAtIndex)
        {
          v7 = ValueAtIndex;
          v12 = -1431655766;
          valuePtr = -1431655766;
          Value = CFDictionaryGetValue(ValueAtIndex, @"DeviceUsagePage");
          v9 = CFDictionaryGetValue(v7, @"DeviceUsage");
          if (Value)
          {
            v10 = v9;
            if (v9)
            {
              CFNumberGetValue(Value, kCFNumberSInt32Type, &valuePtr);
              CFNumberGetValue(v10, kCFNumberSInt32Type, &v12);
              if (v12 == 12 && valuePtr == 65280)
              {
                v5 = v4;
              }
            }
          }
        }

        ++v4;
      }

      while (v4 < CFArrayGetCount(v3));
      if ((v5 & 0x8000000000000000) == 0)
      {
        CFArrayRemoveValueAtIndex(v3, v5);
      }
    }

    MTTrackpadHIDManager::setProperty(this, @"DeviceUsagePairs", v3, 1);
    CFRelease(v3);
  }
}

uint64_t MTMouseHIDManager::determineHIDManagerSettings(MTMouseHIDManager *this)
{
  v2 = (*(*this + 880))(this);
  v3 = *(this + 43);
  if (v3 && (v4 = CFGetTypeID(*(this + 43)), v4 == CFDictionaryGetTypeID()))
  {
    *(v2 + 8) = 0;
    *v2 = 0;
    *v2 = mthid_CFDictionaryGetBoolValue(v3, @"MouseHorizontalScroll");
    *(v2 + 1) = mthid_CFDictionaryGetBoolValue(v3, @"MouseVerticalScroll");
    *(v2 + 3) = mthid_CFDictionaryGetInt32Property(v3, @"MouseTwoFingerHorizSwipeGesture") == 1;
    *(v2 + 4) = mthid_CFDictionaryGetInt32Property(v3, @"MouseTwoFingerHorizSwipeGesture") == 2;
    *(v2 + 5) = mthid_CFDictionaryGetInt32Property(v3, @"MouseOneFingerDoubleTapGesture") == 1;
    *(v2 + 7) = mthid_CFDictionaryGetInt32Property(v3, @"MouseTwoFingerDoubleTapGesture") == 3;
    result = mthid_CFDictionaryGetBoolValue(v3, @"MouseMomentumScroll");
    *(v2 + 9) = result;
    if (*(v2 + 4) == 1)
    {
      result = MTPreferencesGetAppBooleanValue(@"EnableMouseNavSwipes", @"com.apple.MultitouchSupport", 0);
      if (result)
      {
        *(v2 + 3) = 1;
      }
    }
  }

  else
  {
    v6 = (*(*this + 80))(this);
    result = (*(*this + 888))(this, v6, v2);
  }

  v7 = 1;
  if ((*(this + 160) & 4) == 0)
  {
    result = MTPreferencesGetAppBooleanValue(@"ScrollMomentum", @"com.apple.MultitouchSupport", 0);
    v7 = result == 1;
  }

  *(v2 + 8) = v7;
  *(v2 + 2) = 1;
  return result;
}

void MTMouseHIDManager::activateHIDManagerSettings(MTMouseHIDManager *this)
{
  v21 = (*(*this + 624))(this);
  v2 = (*(*this + 632))(this);
  v20 = (*(*this + 640))(this);
  v3 = *MEMORY[0x29EDB8ED8];
  v4 = MEMORY[0x29EDB9010];
  v5 = MEMORY[0x29EDB9020];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  v7 = CFDictionaryCreateMutable(v3, 2, v4, v5);
  v8 = CFArrayCreateMutable(v3, 0, MEMORY[0x29EDB9000]);
  v9 = (*(*this + 880))(this);
  v17 = 0;
  (*(*this + 872))(this, v2, @"One Finger", *v9, v9[1], v9[5], 0, 0, v17);
  LOWORD(v18) = *(v9 + 3);
  (*(*this + 872))(this, v2, @"Two Fingers", *v9, v9[1], 0, 0, v9[7], v18);
  LOWORD(v19) = 0;
  (*(*this + 872))(this, v2, @"Three Fingers", *v9, v9[1], 0, v9[6], 0, v19);
  CFDictionaryAddValue(v7, @"LookupBySubset", @"TouchingFingers");
  MTPListGestureConfig::addChordMappingToArray(v8, @"1 Finger", @"One Finger", v10);
  MTPListGestureConfig::addChordMappingToArray(v8, @"2 Fingers", @"Two Fingers", v11);
  MTPListGestureConfig::addChordMappingToArray(v8, @"3 Fingers", @"Three Fingers", v12);
  CFDictionaryAddValue(v7, @"Chords", v8);
  CFDictionaryAddValue(Mutable, @"Right", v7);
  obj = 0;
  (*(*this + 592))(this, 1);
  MTParser::clear(*(this + 42), 0, 0, v13);
  MTGestureConfig::clearAllChords(*(*(this + 42) + 72));
  MTPListGestureConfig::setMotionSensitivitiesDictionary(*(*(this + 42) + 72), v21);
  MTPListGestureConfig::setGestureSetsDictionary(*(*(this + 42) + 72), v2);
  MTPListGestureConfig::setActionEventsDictionary(*(*(this + 42) + 72), v20);
  MTPListGestureConfig::setChordMappingsDictionary(*(*(this + 42) + 72), Mutable);
  MTPListGestureConfig::parseCreateGestureConfig(*(*(this + 42) + 72), &obj);
  *(*(*(this + 42) + 56) + 138) = 1;
  if (obj)
  {
    CFShow(obj);
    CFRelease(obj);
    obj = 0;
  }

  if (v9[2])
  {
    v14 = MEMORY[0x29EDB8F00];
  }

  else
  {
    v14 = MEMORY[0x29EDB8EF8];
  }

  (*(*this + 568))(this, @"SupportsGestureScrolling", *v14);
  (*(*this + 568))(this, @"DeviceTypeHint", @"Mouse");
  v15 = CFArrayCreateMutable(v3, 0, MEMORY[0x29EDB9000]);
  v16 = v15;
  if (v9[2] == 1)
  {
    CFArrayAppendValue(v15, @"Scroll");
  }

  (*(*this + 568))(this, @"SupportedGestures", v16);
  CFRelease(v16);
  CFRelease(v21);
  CFRelease(v2);
  CFRelease(v20);
  CFRelease(v8);
  CFRelease(v7);
  CFRelease(Mutable);
}

uint64_t MTMouseHIDManager::updateEventDispatcherSettings(MTMouseHIDManager *this)
{
  result = (*(*this + 120))(this);
  if (result)
  {
    *((*(*this + 120))(this) + 440) = 0;
    *((*(*this + 120))(this) + 444) = 0;
    v3 = (*(*this + 120))(this);
    result = (*(*this + 880))(this);
    v4 = 0;
    if (*(result + 8) == 1)
    {
      result = (*(*this + 880))(this);
      v4 = *(result + 9);
    }

    *(v3 + 540) = v4 & 1;
  }

  return result;
}

void MTMouseHIDManager::getTrackpadSettings(MTMouseHIDManager *this)
{
  v12 = *MEMORY[0x29EDCA608];
  v2 = MTLoggingPlugin();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v4 = 136315906;
    v5 = "[Error] ";
    v6 = 2080;
    v7 = "MTMouseHIDManager::";
    v8 = 2080;
    v9 = "getTrackpadSettings";
    v10 = 2048;
    v11 = this;
    _os_log_impl(&dword_29D381000, v2, OS_LOG_TYPE_ERROR, "[HID] [MT] %s%s%s (%p): Error: invalid use of getTrackpadSettings()", &v4, 0x2Au);
  }

  exception = __cxa_allocate_exception(8uLL);
  *exception = this;
}

double MTMouseHIDManager::initDefaultMouseSettings(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    *(a3 + 8) = 0;
    *a3 = 0;
    (*(*a1 + 688))(a1);
    *&result = 65793;
    *a3 = 65793;
    *(a3 + 4) = 16843009;
    *(a3 + 8) = 257;
  }

  return result;
}

__CFDictionary *MTMouseHIDManager::createDefaultMotionSensitivitiesDictionary(MTMouseHIDManager *this)
{
  v1 = *MEMORY[0x29EDB8ED8];
  v2 = MEMORY[0x29EDB9010];
  v3 = MEMORY[0x29EDB9020];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  v37 = 1035489772;
  valuePtr = 1140457472;
  v36 = 971419597;
  v34 = 0;
  v35 = 1097859072;
  v5 = CFNumberCreate(v1, kCFNumberFloat32Type, &valuePtr);
  v6 = CFNumberCreate(v1, kCFNumberFloat32Type, &v35);
  v7 = CFNumberCreate(v1, kCFNumberFloat32Type, &v34);
  v8 = CFNumberCreate(v1, kCFNumberFloat32Type, &v36);
  v9 = CFNumberCreate(v1, kCFNumberFloat32Type, &v37);
  v10 = CFDictionaryCreateMutable(v1, 0, v2, v3);
  v11 = v10;
  if (v5)
  {
    v12 = v10 == 0;
  }

  else
  {
    v12 = 1;
  }

  if (v12)
  {
    if (!v5)
    {
      if (!v6)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }
  }

  else
  {
    CFDictionaryRemoveAllValues(v10);
    CFDictionaryAddValue(v11, @"Resolution_dpi", v5);
    CFDictionaryAddValue(v11, @"AccelThresh", v6);
    CFDictionaryAddValue(v11, @"AccelPower", v7);
    CFDictionaryAddValue(v11, @"FrameDecay_mm", v8);
    CFDictionaryAddValue(v11, @"CommitMultiplier", v9);
    CFDictionaryAddValue(Mutable, @"Mouse Scrolling", v11);
  }

  CFRelease(v5);
  if (v6)
  {
LABEL_8:
    CFRelease(v6);
  }

LABEL_9:
  if (v7)
  {
    CFRelease(v7);
  }

  if (v8)
  {
    CFRelease(v8);
  }

  if (v9)
  {
    CFRelease(v9);
  }

  if (v11)
  {
    CFRelease(v11);
  }

  v35 = 1097859072;
  v33 = 1087373312;
  v34 = 1039516303;
  v32 = 1079194419;
  v30 = 1056964608;
  v31 = 1106247680;
  v13 = CFNumberCreate(v1, kCFNumberFloat32Type, &v33);
  v14 = CFNumberCreate(v1, kCFNumberFloat32Type, &v35);
  v15 = CFNumberCreate(v1, kCFNumberFloat32Type, &v34);
  v16 = CFNumberCreate(v1, kCFNumberFloat32Type, &v32);
  v17 = CFNumberCreate(v1, kCFNumberFloat32Type, &v31);
  v18 = CFNumberCreate(v1, kCFNumberFloat32Type, &v30);
  v19 = CFDictionaryCreateMutable(v1, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  v20 = v19;
  if (v13 && v14 && v15)
  {
    CFDictionaryRemoveAllValues(v19);
    CFDictionaryAddValue(v20, @"Resolution_mm", v13);
    CFDictionaryAddValue(v20, @"AccelThresh", v14);
    CFDictionaryAddValue(v20, @"AccelPower", v15);
    CFDictionaryAddValue(v20, @"FluidAnimationStartThreshold_mm", v16);
    CFDictionaryAddValue(v20, @"FluidSwipeCompleteThreshold_mm", v17);
    CFDictionaryAddValue(v20, @"FluidSwipeInertiaTime_s", v18);
    CFDictionaryAddValue(Mutable, @"Mouse Vertical Swipe", v20);
  }

  else if (!v13)
  {
    goto LABEL_23;
  }

  CFRelease(v13);
LABEL_23:
  if (v14)
  {
    CFRelease(v14);
  }

  if (v15)
  {
    CFRelease(v15);
  }

  if (v16)
  {
    CFRelease(v16);
  }

  if (v17)
  {
    CFRelease(v17);
  }

  if (v18)
  {
    CFRelease(v18);
  }

  if (v20)
  {
    CFRelease(v20);
  }

  v35 = 1097859072;
  v33 = 1083179008;
  v34 = 1041865114;
  v21 = CFNumberCreate(v1, kCFNumberFloat32Type, &v33);
  v22 = CFNumberCreate(v1, kCFNumberFloat32Type, &v35);
  v23 = CFNumberCreate(v1, kCFNumberFloat32Type, &v34);
  v24 = CFNumberCreate(v1, kCFNumberFloat32Type, &v32);
  v25 = CFNumberCreate(v1, kCFNumberFloat32Type, &v31);
  v26 = CFNumberCreate(v1, kCFNumberFloat32Type, &v30);
  v27 = CFDictionaryCreateMutable(v1, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  v28 = v27;
  if (v21 && v22 && v23 && v24 && v25 && v26)
  {
    CFDictionaryRemoveAllValues(v27);
    CFDictionaryAddValue(v28, @"Resolution_mm", v21);
    CFDictionaryAddValue(v28, @"AccelThresh", v22);
    CFDictionaryAddValue(v28, @"AccelPower", v23);
    CFDictionaryAddValue(v28, @"FluidAnimationStartThreshold_mm", v24);
    CFDictionaryAddValue(v28, @"FluidSwipeCompleteThreshold_mm", v25);
    CFDictionaryAddValue(v28, @"FluidSwipeInertiaTime_s", v26);
    CFDictionaryAddValue(Mutable, @"Mouse Horizontal Swipe", v28);
  }

  else if (!v21)
  {
    goto LABEL_44;
  }

  CFRelease(v21);
LABEL_44:
  if (v22)
  {
    CFRelease(v22);
  }

  if (v23)
  {
    CFRelease(v23);
  }

  if (v24)
  {
    CFRelease(v24);
  }

  if (v25)
  {
    CFRelease(v25);
  }

  if (v26)
  {
    CFRelease(v26);
  }

  if (v28)
  {
    CFRelease(v28);
  }

  return Mutable;
}

MTPListGestureConfig *MTMouseHIDManager::createDefaultActionEventsDictionary(MTMouseHIDManager *this)
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  MTPListGestureConfig::addActionEventToDictionary(Mutable, @"Secondary Click", @"Mouse Click", @"Button2", 0, v2);
  MTPListGestureConfig::addActionEventToDictionary(Mutable, @"Scroll", @"Scroll", 0, 0, v3);
  MTPListGestureConfig::addActionEventToDictionary(Mutable, @"Scroll To Edge", @"Scroll To Edge", 0, 0, v4);
  MTPListGestureConfig::addActionEventToDictionary(Mutable, @"Orientation", @"Orientation", 0, 0, v5);
  MTPListGestureConfig::addActionEventToDictionary(Mutable, @"Zoom Toggle", @"Zoom Toggle", 0, 0, v6);
  MTPListGestureConfig::addActionEventToDictionary(Mutable, @"Show Definition", @"Show Definition", 0, 0, v7);
  MTPListGestureConfig::addActionEventToDictionary(Mutable, @"Fluid Navigation", @"Fluid Navigation", 0, 0, v8);
  MTPListGestureConfig::addActionEventToDictionary(Mutable, @"Fluid Dock", @"Fluid Dock", 0, 0, v9);
  MTPListGestureConfig::addActionEventToDictionary(Mutable, @"Fluid Notification", @"Fluid Notification", 0, 0, v10);
  MTPListGestureConfig::addActionEventToDictionary(Mutable, @"Fluid Notification Alt", @"Fluid Notification Alt", 0, 0, v11);
  MTPListGestureConfig::addActionEventToDictionary(Mutable, @"Swipe Left", @"Swipe", 0, 0, v12);
  MTPListGestureConfig::addActionEventToDictionary(Mutable, @"Swipe Right", @"Swipe", 0, 0, v13);
  MTPListGestureConfig::addActionEventToDictionary(Mutable, @"Swipe Up", @"Swipe", 0, 0, v14);
  MTPListGestureConfig::addActionEventToDictionary(Mutable, @"Swipe Down", @"Swipe", 0, 0, v15);
  return Mutable;
}

void MTMouseHIDManager::createMouseScrollSwipeTapCombo(MTMouseHIDManager *this, __CFDictionary *a2, const __CFString *a3, int a4, int a5, int a6, int a7, int a8, BOOL a9, BOOL a10)
{
  v16 = *MEMORY[0x29EDB8ED8];
  Mutable = CFArrayCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9000]);
  v18 = CFDictionaryCreateMutable(v16, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  v19 = v18;
  if (Mutable)
  {
    v20 = v18 == 0;
  }

  else
  {
    v20 = 1;
  }

  if (!v20)
  {
    v30 = a3;
    v21 = a4 | a5;
    v22 = a9 || a10;
    if (v22)
    {
      v23 = @"WaitForQuick Momentum";
    }

    else
    {
      v23 = @"Momentum";
    }

    v24 = @"OncePerDirection";
    if (v21)
    {
      v24 = @"OncePerDirection OnlyIfAllMoving";
    }

    v28 = v23;
    v29 = v24;
    if (a6)
    {
      MTPListGestureConfig::addGestureToArray(Mutable, @"Zoom Toggle", @"DoubleTap", 0, 0, 0, 0, 0, v23);
      if (!a7)
      {
LABEL_18:
        if (!a8)
        {
          goto LABEL_19;
        }

        goto LABEL_33;
      }
    }

    else if (!a7)
    {
      goto LABEL_18;
    }

    MTPListGestureConfig::addGestureToArray(Mutable, @"Show Definition", @"DoubleTap", 0, 0, 0, 0, 0, v28);
    if (!a8)
    {
LABEL_19:
      if (!a5)
      {
        goto LABEL_20;
      }

      goto LABEL_34;
    }

LABEL_33:
    MTPListGestureConfig::addGestureToArray(Mutable, @"Fluid Dock", @"DoubleTap", 0, 0, 0, 0, 0, v28);
    if (!a5)
    {
LABEL_20:
      if (!v22)
      {
LABEL_25:
        if (v21 | !v22)
        {
          v26 = @"ToMoreFingers ToFewerFingers FromFewerFingers FromMoreFingers";
        }

        else
        {
          v26 = @"ToMoreFingers";
        }

        CFDictionaryAddValue(v19, @"Transitions", v26);
        CFDictionaryAddValue(v19, @"Gestures", Mutable);
        CFDictionaryAddValue(a2, v30, v19);
LABEL_29:
        CFRelease(Mutable);
        if (!v19)
        {
          return;
        }

        goto LABEL_8;
      }

LABEL_21:
      if (a10)
      {
        v25 = @"Fluid Dock";
      }

      else
      {
        v25 = @"Fluid Navigation";
      }

      MTPListGestureConfig::addGestureToArray(Mutable, v25, @"Horizontal", @"Mouse Horizontal Swipe", v29, 0, 0, 0, v28);
      goto LABEL_25;
    }

LABEL_34:
    if (a4)
    {
      v27 = @"Translate";
    }

    else
    {
      v27 = @"Vertical";
    }

    MTPListGestureConfig::addGestureToArray(Mutable, @"Scroll", v27, @"Mouse Scrolling", v28, @"LockOnFirst", 0, 0, v28);
    if (!v22)
    {
      goto LABEL_25;
    }

    goto LABEL_21;
  }

  if (Mutable)
  {
    goto LABEL_29;
  }

  if (!v18)
  {
    return;
  }

LABEL_8:

  CFRelease(v19);
}

uint64_t MTMouseHIDManager::updateMouseMotionFilter(MTMouseHIDManager *this, float a2, float a3, int a4)
{
  result = MTAbsoluteTimeGetCurrent();
  v8 = v7 - *(this + 47);
  if (!a4 || v8 >= 0.0329999998)
  {
    v9 = vabs_f32(__PAIR64__(LODWORD(a3), LODWORD(a2)));
    v25 = *(this + 364);
    v10 = v8 / 0.00800000038;
    if (vaddv_f32(v25) <= 5.0)
    {
      v11 = 0.870000005;
    }

    else
    {
      v11 = 0.699999988;
    }

    v12 = pow(v11, v10);
    *&v12 = v12;
    v23 = *&v12;
    v13 = pow(0.200000003, v10);
    *&v13 = v13;
    v14 = vbsl_s8(vcgt_f32(v9, v25), vdup_lane_s32(*&v13, 0), vdup_lane_s32(v23, 0));
    __asm { FMOV            V1.2S, #1.0 }

    *(this + 364) = vmla_f32(vmul_f32(v9, vsub_f32(_D1, v14)), v25, v14);
    if ((*(*this + 864))(this))
    {
      if (*((*(*this + 864))(this) + 56))
      {
        v20 = (*(*this + 864))(this);
        MTHandMotion::storeFeedbackFromMouse(*(v20 + 56), *(this + 91), *(this + 92));
      }
    }

    result = MTAbsoluteTimeGetCurrent();
    *(this + 47) = v21;
  }

  return result;
}

uint64_t MTMouseHIDManager::tickleMouseMotionFilter(MTMouseHIDManager *this)
{
  MTMouseHIDManager::updateMouseMotionFilter(this, 0.0, 0.0, 1);

  return MTMouseHIDManager::updateButtonMotionFilter(this, 0.0, 0);
}

uint64_t MTMouseHIDManager::updateButtonMotionFilter(MTMouseHIDManager *this, float a2, int a3)
{
  MTAbsoluteTimeGetCurrent();
  if (a3)
  {
    *(this + 96) = a2;
  }

  else
  {
    v7 = pow(0.699999988, (v6 - *(this + 49)) / 0.0112500004);
    *(this + 96) = ((1.0 - v7) * a2) + (v7 * *(this + 96));
  }

  if ((*(*this + 864))(this) && *((*(*this + 864))(this) + 56))
  {
    v8 = (*(*this + 864))(this);
    MTHandMotion::storeFeedbackFromButton(*(v8 + 56), *(this + 96));
  }

  result = MTAbsoluteTimeGetCurrent();
  *(this + 49) = v10;
  return result;
}

uint64_t MTMouseHIDManager::handleTrackingDataForMotionFilter(uint64_t a1, uint64_t a2, int a3, int a4, unsigned int a5)
{
  if (a5 && a5 != 400)
  {
    v5 = 400.0 / a5;
    a3 = (a3 * v5);
    a4 = (a4 * v5);
  }

  (*(*a1 + 912))(a1, 0, a3, a4);
  return 1;
}

uint64_t MTMouseHIDManager::handleButtonState(uint64_t a1, uint64_t a2, int a3, int a4)
{
  if (a3 != a4)
  {
    (*(*a1 + 920))(a1, 1, 1.0);
  }

  return 1;
}

uint64_t MTMouseHIDManager::handleFrameProcessingEntryExit(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  if (a5)
  {
    (*(*a1 + 928))(a1);
  }

  return 1;
}

void MTMouseHIDManager::~MTMouseHIDManager(MTMouseHIDManager *this)
{
  MTSimpleHIDManager::~MTSimpleHIDManager(this);

  JUMPOUT(0x29ED547D0);
}

uint64_t MTParameterFactory::initFingerTipOffsetParams(uint64_t result, int a2, char a3, int a4)
{
  *(result + 32) = 0u;
  *(result + 48) = 0u;
  *result = 0u;
  *(result + 16) = 0u;
  if ((a2 - 2000) > 0x3E7)
  {
    if ((a2 - 1000) <= 0x3E7)
    {
      *result = 1;
      *(result + 8) = 1077936128;
      if (a3 < 0 || a4)
      {
        *(result + 12) = xmmword_29D3D71D0;
        *(result + 28) = 0x4108000041200000;
        *(result + 36) = 0;
        *(result + 39) = 0;
        *(result + 43) = 257;
        v4 = 1053609165;
      }

      else
      {
        *(result + 12) = xmmword_29D3D71C0;
        *(result + 28) = 0x40E0000041F00000;
        *(result + 36) = 0;
        *(result + 39) = 0;
        *(result + 43) = 257;
        v4 = 1057132380;
      }

      *(result + 48) = v4;
      goto LABEL_16;
    }

    *result = 1;
    *(result + 8) = 1077936128;
    if (a2 == 4)
    {
      v5 = xmmword_29D3D71A0;
    }

    else
    {
      if (a2 == 2)
      {
        *(result + 16) = xmmword_29D3D71A0;
        *(result + 32) = 1090519040;
        *(result + 40) = 65793;
        *(result + 44) = 0;
        *(result + 52) = 1;
        return result;
      }

      v5 = xmmword_29D3D71B0;
    }

    *(result + 16) = v5;
    *(result + 32) = 1090519040;
  }

  else
  {
    *result = 1;
    *(result + 8) = xmmword_29D3D71E0;
    *(result + 24) = xmmword_29D3D71F0;
  }

  *(result + 40) = 65793;
  *(result + 44) = 0;
LABEL_16:
  *(result + 52) = 0;
  return result;
}

double MTParameterFactory::initForceFilterParams(_OWORD *a1)
{
  result = 0.125000028;
  *a1 = xmmword_29D3D7200;
  return result;
}

double MTParameterFactory::initForceThresholdQualifiers(uint64_t a1)
{
  *a1 = 0x3F4000003F000000;
  *(a1 + 12) = xmmword_29D3D7210;
  *(a1 + 28) = xmmword_29D3D7220;
  *(a1 + 44) = xmmword_29D3D7230;
  *(a1 + 60) = xmmword_29D3D7240;
  *(a1 + 76) = xmmword_29D3D7250;
  *(a1 + 92) = xmmword_29D3D7260;
  *(a1 + 108) = xmmword_29D3D7270;
  result = 2.85924567e20;
  *(a1 + 124) = 0x442F00003E19999ALL;
  *(a1 + 132) = 1148846080;
  return result;
}

double MTParameterFactory::initForceActuationQualifiers(uint64_t a1)
{
  *(a1 + 28) = 1;
  *a1 = xmmword_29D3D7280;
  result = 5.23869072e-11;
  *(a1 + 16) = 0x3DCCCCCD3F333333;
  *(a1 + 24) = 1065353216;
  return result;
}

double MTParameterFactory::initBasicForceActuationQualifiers(uint64_t a1)
{
  *(a1 + 28) = 0;
  *a1 = xmmword_29D3D7290;
  *&result = 1065353216;
  *(a1 + 16) = 1065353216;
  *(a1 + 24) = 1065353216;
  return result;
}

void MTParameterFactory::initPathFilterParams(uint64_t a1, unsigned int a2, __int16 a3, int a4, float32x2_t *a5, unsigned int a6)
{
  v6 = a6;
  v8 = a3;
  v32 = *MEMORY[0x29EDCA608];
  *(a1 + 96) = 0;
  *(a1 + 80) = 1;
  *(a1 + 102) = 0;
  *(a1 + 112) = xmmword_29D3D72A0;
  *(a1 + 64) = xmmword_29D3D72B0;
  if (a2 <= 0x3E7)
  {
    v10 = 0.8;
    if ((a3 & 0x100) != 0)
    {
      v10 = 0.5;
    }

    *(a1 + 4) = v10;
    *(a1 + 56) = 0x3EA28F5C40000000;
    *(a1 + 96) = 1;
    *(a1 + 80) = 256;
    *(a1 + 102) = 1;
    *(a1 + 112) = xmmword_29D3D72F0;
    if (a2 == 4)
    {
      *(a1 + 56) = xmmword_29D3D7300;
      *(a1 + 4) = 0;
    }

    goto LABEL_8;
  }

  *(a1 + 81) = 1;
  *(a1 + 4) = 1061997773;
  if (a2 - 3000 <= 0x3E7)
  {
    *(a1 + 56) = 0x3EA28F5C40000000;
    *(a1 + 96) = 1;
    *(a1 + 80) = 0;
    *(a1 + 102) = 1;
LABEL_8:
    v11 = a2 - 3000 < 0xFFFFFC18;
    v12 = a2 - 2000;
    goto LABEL_9;
  }

  v14 = 2.66;
  if (!a4)
  {
    v14 = 2.0;
  }

  v15 = 0.127;
  if (a4)
  {
    v15 = 0.16891;
  }

  *(a1 + 56) = v14;
  *(a1 + 60) = v15;
  v12 = a2 - 2000;
  if (a2 - 2000 < 0x3E8)
  {
    v13 = 0;
    *(a1 + 60) = 1045435305;
    *(a1 + 72) = 0x40000000;
    *(a1 + 4) = xmmword_29D3D72C0;
    *(a1 + 20) = xmmword_29D3D72D0;
    *(a1 + 36) = xmmword_29D3D72E0;
    *(a1 + 52) = 0x4080000040266666;
    *(a1 + 92) = 1032000111;
    *(a1 + 97) = 257;
    *(a1 + 84) = 0x3D75C2903CA3D70BLL;
    goto LABEL_20;
  }

  v11 = 1;
LABEL_9:
  *(a1 + 8) = xmmword_29D3D7310;
  *(a1 + 24) = xmmword_29D3D7320;
  *(a1 + 40) = xmmword_29D3D7330;
  *(a1 + 84) = 0x3E9FBE773D449BA6;
  *(a1 + 92) = 1032000111;
  *(a1 + 98) = 0;
  if (v12 > 0xFFFFFC17)
  {
    *(a1 + 76) = 1036831949;
    *(a1 + 97) = v11 & a4 ^ 1;
    v13 = 1;
  }

  else if (v11)
  {
    v13 = 0;
    *(a1 + 97) = 0;
  }

  else
  {
    v13 = 0;
    *(a1 + 97) = 1;
  }

LABEL_20:
  *(a1 + 99) = v13;
  *(a1 + 100) = v13;
  *(a1 + 101) = v13;
  v30[0] = xmmword_29D3D7340;
  v30[1] = xmmword_29D3D7350;
  v31 = 0xC07000003FA66666;
  if (a6 >= 5)
  {
    v16 = MTLoggingPlugin();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v22 = 136315906;
      v23 = "[Error] ";
      v24 = 2080;
      v25 = "MTParameterFactory::";
      v26 = 2080;
      v27 = "_InitRadiusCorrectionParams";
      v28 = 1024;
      v29 = v6;
      _os_log_impl(&dword_29D381000, v16, OS_LOG_TYPE_ERROR, "[HID] [MT] %s%s%s invalid size ID (%u)", &v22, 0x26u);
    }

    v6 = 0;
  }

  v17 = *(v30 + 8 * v6);
  *(a1 + 104) = v17;
  v17.i32[0] = 1.0;
  v18 = fabsf(MTSurfaceDimensions::convertMillimetersToPixels(a5, v17, 1.0).f32[0]);
  *a1 = v18;
  if (*(a1 + 81) == 1)
  {
    v19 = v18 * *(a1 + 60);
    v20 = 56;
  }

  else
  {
    v20 = 60;
    v19 = *(a1 + 56) / v18;
  }

  *(a1 + v20) = v19;
  *(a1 + 128) = (v8 & 0x40) != 0;
  v21 = *MEMORY[0x29EDCA608];
}

void MTParameterFactory::updatePathFilterParamsWithNewSurfaceDimensions(uint64_t a1, float32x2_t *a2, float32x2_t a3)
{
  a3.i32[0] = 1.0;
  v4 = fabsf(MTSurfaceDimensions::convertMillimetersToPixels(a2, a3, 1.0).f32[0]);
  *a1 = v4;
  if (*(a1 + 81) == 1)
  {
    v5 = v4 * *(a1 + 60);
    v6 = 56;
  }

  else
  {
    v6 = 60;
    v5 = *(a1 + 56) / v4;
  }

  *(a1 + v6) = v5;
}

double MTParameterFactory::initRestZoneBalanceParameters(uint64_t a1)
{
  *a1 = xmmword_29D3D7360;
  *(a1 + 16) = xmmword_29D3D7370;
  result = 5.23869071e-11;
  *(a1 + 32) = xmmword_29D3D7380;
  *(a1 + 48) = -1082130432;
  return result;
}

double MTParameterFactory::initMotionExtractionParams(uint64_t a1)
{
  result = 512.000116;
  *a1 = 0x408000003CF5C290;
  *(a1 + 8) = 257;
  return result;
}

uint64_t MTParameterFactory::initChordCyclingParams(uint64_t result, int a2)
{
  *result = 0x3CCCCCCD3F19999ALL;
  v2 = (a2 - 2000) < 0x3E8;
  v3 = 10.0;
  *(result + 8) = v2;
  if ((a2 - 2000) < 0x3E8)
  {
    v3 = 4.0;
  }

  *(result + 16) = v2;
  *(result + 12) = v3;
  return result;
}

double MTParameterFactory::initTouchZoneParams(uint64_t a1, int a2, uint64_t a3, int a4)
{
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  if ((a2 - 1000) <= 0x3E7)
  {
    *a1 = 1;
    v5 = 3.0;
    if (a4)
    {
      v5 = 0.5;
    }

    v6 = 18.0;
    if (a4)
    {
      v6 = 6.0;
    }

    *(a1 + 20) = v5;
    *(a1 + 28) = v6;
    result = 375809602.0;
    *(a1 + 4) = xmmword_29D3D7390;
    *(a1 + 24) = 1094713344;
  }

  return result;
}

void MTTrackpadEmbeddedEventDispatcher::initialize(uint64_t a1, MTSimpleHIDManager *a2, const void *a3)
{
  *(a1 + 560) = MTABCLogger::createLogger();

  MTTrackpadEventDispatcher::initialize(a1, a2, a3);
}

MTABCLogger *MTTrackpadEmbeddedEventDispatcher::finalize(MTTrackpadEmbeddedEventDispatcher *this)
{
  MTTrackpadEventDispatcher::finalize(this);
  v2 = *(this + 71);
  if (v2)
  {
    MTABCLogger::endSession(*(this + 70), v2, 0);
    *(this + 71) = 0;
  }

  result = *(this + 70);
  if (result)
  {
    MTABCLogger::~MTABCLogger(result);
    result = MEMORY[0x29ED547D0]();
  }

  *(this + 70) = 0;
  return result;
}

void MTTrackpadEmbeddedEventDispatcher::dispatchScrollEvent(MTTrackpadEmbeddedEventDispatcher *this, float a2)
{
  v10 = *MEMORY[0x29EDCA608];
  v2 = MTLoggingPlugin();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v4 = 136315650;
    v5 = "[Error] ";
    v6 = 2080;
    v7 = "MTTrackpadEmbeddedEventDispatcher::";
    v8 = 2080;
    v9 = "dispatchScrollEvent";
    _os_log_impl(&dword_29D381000, v2, OS_LOG_TYPE_ERROR, "[HID] [MT] %s%s%s Unexpected request to dispatch a Scroll event. Ignoring.", &v4, 0x20u);
  }

  v3 = *MEMORY[0x29EDCA608];
}

void MTTrackpadEmbeddedEventDispatcher::dispatchPointingEvent(MTTrackpadEmbeddedEventDispatcher *this, int a2, int a3, int a4, unint64_t a5, char a6)
{
  v36 = *MEMORY[0x29EDCA608];
  if (a6)
  {
    v7 = a3 | a2;
    if (a3 | a2 || *(this + 133) != a4)
    {
      *(this + 133) = a4;
      v14 = *(this + 132) | a4;
      *(this + 138) = v14;
      if (*(this + 520) == 1 && (v14 & 1) != 0)
      {
        *(this + 138) = v14 & 0xFFFFFFFC | 2;
      }

      v16 = *MEMORY[0x29EDB8ED8];
      v17 = *(this + 131);
      RelativePointerEvent = IOHIDEventCreateRelativePointerEvent();
      if (RelativePointerEvent)
      {
        v19 = RelativePointerEvent;
        memset(__str, 170, 11);
        if (*(this + 138) == *(this + 131))
        {
          strcpy(__str, "no");
        }

        else
        {
          snprintf(__str, 0xBuLL, "0x%08x", *(this + 138));
        }

        v23 = MTLoggingPlugin();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          v27 = "";
          v24 = "yes";
          *buf = 136316162;
          v29 = "MTTrackpadEmbeddedEventDispatcher::";
          v28 = 2080;
          v30 = 2080;
          v31 = "dispatchPointingEvent";
          if (!v7)
          {
            v24 = "no";
          }

          v32 = 2082;
          *v33 = v24;
          *&v33[8] = 2082;
          v34 = __str;
          _os_log_impl(&dword_29D381000, v23, OS_LOG_TYPE_DEFAULT, "[HID] [MT] %s%s%s Dispatching Pointer event (displacement? %{public}s) from FW (button? %{public}s)", buf, 0x34u);
        }

        (*(*this + 40))(this, v19, 0);
        CFRelease(v19);
      }

      else
      {
        v20 = MTLoggingPlugin();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          v21 = *(this + 138);
          v22 = *(this + 131);
          *buf = 136316162;
          v27 = "[Error] ";
          v28 = 2080;
          v29 = "MTTrackpadEmbeddedEventDispatcher::";
          v30 = 2080;
          v31 = "dispatchPointingEvent";
          v32 = 1024;
          *v33 = v21;
          *&v33[4] = 1024;
          *&v33[6] = v22;
          _os_log_impl(&dword_29D381000, v20, OS_LOG_TYPE_ERROR, "[HID] [MT] %s%s%s Failed to create relative pointer event with combined button state(%u) and previous button state(%u)", buf, 0x2Cu);
        }
      }

      *(this + 131) = *(this + 138);
    }

    else
    {
      v8 = MTLoggingPlugin();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v9 = *(this + 133);
        *buf = 136315906;
        v27 = "[Error] ";
        v28 = 2080;
        v29 = "MTTrackpadEmbeddedEventDispatcher::";
        v30 = 2080;
        v31 = "dispatchPointingEvent";
        v32 = 1024;
        *v33 = v9;
        v10 = "[HID] [MT] %s%s%s No change in device button state(%u). Ignoring.";
        v11 = v8;
        v12 = 38;
LABEL_8:
        _os_log_impl(&dword_29D381000, v11, OS_LOG_TYPE_ERROR, v10, buf, v12);
      }
    }
  }

  else
  {
    v13 = MTLoggingPlugin();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v27 = "[Error] ";
      v28 = 2080;
      v29 = "MTTrackpadEmbeddedEventDispatcher::";
      v30 = 2080;
      v31 = "dispatchPointingEvent";
      v10 = "[HID] [MT] %s%s%s Unexpected request to dispatch a Pointer event. Ignoring.";
      v11 = v13;
      v12 = 32;
      goto LABEL_8;
    }
  }

  v25 = *MEMORY[0x29EDCA608];
}

uint64_t MTTrackpadEmbeddedEventDispatcher::shouldDispatchPointerEvent(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v63 = *MEMORY[0x29EDCA608];
  IOHIDEventGetFloatValue();
  v15 = v14;
  IOHIDEventGetFloatValue();
  *&v16 = v16;
  v17 = *&v16 != 0.0 || v15 != 0.0;
  Children = IOHIDEventGetChildren();
  if (Children)
  {
    Count = CFArrayGetCount(Children);
  }

  else
  {
    Count = 0;
  }

  if ((IOHIDEventGetIntegerValue() & 2) != 0 || (v20 = IOHIDEventGetIntegerValue(), a4) || v20 < 0 || a5 && (IOHIDEventGetPhase() & 0xD) != 0 || a6 && (IOHIDEventGetPhase() & 0xD) != 0 || a7 && (IOHIDEventGetPhase() & 0xD) != 0 || a8 && (IOHIDEventGetPhase() & 0xD) != 0)
  {
    memset(__str, 170, 11);
    if (a4)
    {
      IntegerValue = IOHIDEventGetIntegerValue();
      snprintf(__str, 0xBuLL, "0x%08x", IntegerValue);
    }

    else
    {
      strcpy(__str, "no");
    }

    v22 = MTLoggingPlugin();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      if (v17)
      {
        v23 = "yes";
      }

      else
      {
        v23 = "no";
      }

      v33 = v23;
      v34 = (IOHIDEventGetIntegerValue() >> 7) & 1;
      v24 = IOHIDEventGetIntegerValue() == 1;
      *buf = 136318210;
      v37 = "";
      v25 = IOHIDEventGetIntegerValue() == 1;
      v38 = 2080;
      v39 = "MTTrackpadEmbeddedEventDispatcher::";
      if (a5)
      {
        v26 = "yes";
      }

      else
      {
        v26 = "no";
      }

      v40 = 2080;
      v41 = "shouldDispatchPointerEvent";
      v42 = 2082;
      if (a6)
      {
        v27 = "yes";
      }

      else
      {
        v27 = "no";
      }

      v43 = v33;
      if (a7)
      {
        v28 = "yes";
      }

      else
      {
        v28 = "no";
      }

      v44 = 2048;
      if (a8)
      {
        v29 = "yes";
      }

      else
      {
        v29 = "no";
      }

      v45 = Count;
      v46 = 1024;
      v47 = v34;
      v48 = 1024;
      v49 = v24;
      v50 = 1024;
      v51 = v25;
      v52 = 2082;
      v53 = __str;
      v54 = 2082;
      v55 = v26;
      v56 = 2082;
      v57 = v27;
      v58 = 2082;
      v59 = v28;
      v60 = 2082;
      v61 = v29;
      _os_log_impl(&dword_29D381000, v22, OS_LOG_TYPE_DEFAULT, "[HID] [MT] %s%s%s Dispatching Pointer event (displacement? %{public}s) with digitizer (%lu contacts, cancel=%d, touching=%d, inrange=%d), button? %{public}s, scroll? %{public}s, scale? %{public}s, rotate? %{public}s, translate? %{public}s", buf, 0x78u);
    }
  }

  if (IOHIDEventGetIntegerValue() || (IOHIDEventGetIntegerValue() & 2) != 0 || (IOHIDEventGetIntegerValue() & 1) != 0)
  {
    v30 = 1;
  }

  else if (a4 | a5 | a6 | a7 | a8)
  {
    v30 = 1;
  }

  else
  {
    v30 = v17;
  }

  if (*(a1 + 560))
  {
    MTTrackpadEmbeddedEventDispatcher::sanityCheck(a1, a3, a5, a6, a7, a8, v17);
  }

  v31 = *MEMORY[0x29EDCA608];
  return (v30 | *(a1 + 432)) & 1;
}

void MTTrackpadEmbeddedEventDispatcher::sanityCheck(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v62 = *MEMORY[0x29EDCA608];
  v12 = *(a1 + 577);
  if (a3)
  {
    Phase = IOHIDEventGetPhase();
    if ((Phase & 0xC) != 0)
    {
      v14 = 0;
    }

    else
    {
      v14 = v12;
    }

    if (Phase)
    {
      v12 = 1;
    }

    else
    {
      v12 = v14;
    }
  }

  *(a1 + 577) = v12;
  v15 = *(a1 + 578);
  if (a4)
  {
    v16 = IOHIDEventGetPhase();
    if ((v16 & 0xC) != 0)
    {
      v17 = 0;
    }

    else
    {
      v17 = v15;
    }

    if (v16)
    {
      v15 = 1;
    }

    else
    {
      v15 = v17;
    }
  }

  *(a1 + 578) = v15;
  v18 = *(a1 + 579);
  if (a5)
  {
    v19 = IOHIDEventGetPhase();
    if ((v19 & 0xC) != 0)
    {
      v20 = 0;
    }

    else
    {
      v20 = v18;
    }

    if (v19)
    {
      v18 = 1;
    }

    else
    {
      v18 = v20;
    }
  }

  *(a1 + 579) = v18;
  v21 = *(a1 + 580);
  if (a6)
  {
    v22 = IOHIDEventGetPhase();
    if ((v22 & 0xC) != 0)
    {
      v23 = 0;
    }

    else
    {
      v23 = v21;
    }

    if (v22)
    {
      v21 = 1;
    }

    else
    {
      v21 = v23;
    }
  }

  *(a1 + 580) = v21;
  if (*(a1 + 578))
  {
    v24 = 1;
  }

  else
  {
    v24 = *(a1 + 579) | v21;
  }

  Children = IOHIDEventGetChildren();
  if (Children && (v26 = Children, CFArrayGetCount(Children) >= 1))
  {
    v27 = 0;
    v28 = 0;
    do
    {
      CFArrayGetValueAtIndex(v26, v28);
      if (IOHIDEventGetIntegerValue() == 1)
      {
        ++v27;
      }

      ++v28;
    }

    while (v28 < CFArrayGetCount(v26));
    if (v27 >= 2)
    {
      if (!*(a1 + 568))
      {
        MTABCLogger::startSession(*(a1 + 560), "ipados_trackpad_orientation_gesture", 60.0);
      }

      v27 = 1;
    }
  }

  else
  {
    v27 = 0;
  }

  if (*(a1 + 577) & v24)
  {
    v29 = MTLoggingPlugin();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v30 = "no";
      if (*(a1 + 578))
      {
        v31 = "yes";
      }

      else
      {
        v31 = "no";
      }

      v32 = *(a1 + 579);
      v51 = "[Error] ";
      v53 = "MTTrackpadEmbeddedEventDispatcher::";
      v33 = *(a1 + 580);
      if (v32)
      {
        v34 = "yes";
      }

      else
      {
        v34 = "no";
      }

      v50 = 136316418;
      v52 = 2080;
      if (v33)
      {
        v30 = "yes";
      }

      v54 = 2080;
      v55 = "sanityCheck";
      v56 = 2082;
      v57 = v31;
      v58 = 2082;
      v59 = v34;
      v60 = 2082;
      v61 = v30;
      _os_log_impl(&dword_29D381000, v29, OS_LOG_TYPE_ERROR, "[HID] [MT] %s%s%s Attempting to scroll at the same time we scale %{public}s / rotate %{public}s / translate %{public}s", &v50, 0x3Eu);
    }

    *(a1 + 576) = 1;
  }

  if ((a7 & v24) == 1)
  {
    v35 = MTLoggingPlugin();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      v36 = "no";
      if (*(a1 + 578))
      {
        v37 = "yes";
      }

      else
      {
        v37 = "no";
      }

      v38 = *(a1 + 579);
      v51 = "[Error] ";
      v53 = "MTTrackpadEmbeddedEventDispatcher::";
      v39 = *(a1 + 580);
      if (v38)
      {
        v40 = "yes";
      }

      else
      {
        v40 = "no";
      }

      v50 = 136316418;
      v52 = 2080;
      if (v39)
      {
        v36 = "yes";
      }

      v54 = 2080;
      v55 = "sanityCheck";
      v56 = 2082;
      v57 = v37;
      v58 = 2082;
      v59 = v40;
      v60 = 2082;
      v61 = v36;
      _os_log_impl(&dword_29D381000, v35, OS_LOG_TYPE_ERROR, "[HID] [MT] %s%s%s Active pointer at the same time we scale %{public}s / rotate %{public}s / translate %{public}s (stuck orientation gesture?)", &v50, 0x3Eu);
    }

    *(a1 + 576) = 1;
  }

  if (!v27)
  {
    v41 = *(a1 + 568);
    if (v41)
    {
      if (v24)
      {
        v42 = MTLoggingPlugin();
        if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
        {
          v43 = "no";
          if (*(a1 + 578))
          {
            v44 = "yes";
          }

          else
          {
            v44 = "no";
          }

          v45 = *(a1 + 579);
          v51 = "[Error] ";
          v53 = "MTTrackpadEmbeddedEventDispatcher::";
          v46 = *(a1 + 580);
          if (v45)
          {
            v47 = "yes";
          }

          else
          {
            v47 = "no";
          }

          v50 = 136316418;
          v52 = 2080;
          if (v46)
          {
            v43 = "yes";
          }

          v54 = 2080;
          v55 = "sanityCheck";
          v56 = 2082;
          v57 = v44;
          v58 = 2082;
          v59 = v47;
          v60 = 2082;
          v61 = v43;
          _os_log_impl(&dword_29D381000, v42, OS_LOG_TYPE_ERROR, "[HID] [MT] %s%s%s No contacts but we are still trying to scale %{public}s / rotate %{public}s / translate %{public}s (stuck orientation gesture?)", &v50, 0x3Eu);
        }

        v48 = 1;
        *(a1 + 576) = 1;
        v41 = *(a1 + 568);
      }

      else
      {
        v48 = *(a1 + 576);
      }

      MTABCLogger::endSession(*(a1 + 560), v41, v48 & 1);
      *(a1 + 568) = 0;
      *(a1 + 576) = 0;
    }
  }

  v49 = *MEMORY[0x29EDCA608];
}

void MTTrackpadEmbeddedEventDispatcher::dispatchEvent(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v15 = *MEMORY[0x29EDCA608];
  if (IOHIDEventGetType() == 17)
  {
    Children = IOHIDEventGetChildren();
    if (!Children || !CFArrayGetCount(Children))
    {
      v7 = MTLoggingPlugin();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v9 = 136315650;
        v10 = "";
        v11 = 2080;
        v12 = "MTTrackpadEmbeddedEventDispatcher::";
        v13 = 2080;
        v14 = "dispatchEvent";
        _os_log_impl(&dword_29D381000, v7, OS_LOG_TYPE_DEFAULT, "[HID] [MT] %s%s%s Dispatching standalone Pointer event", &v9, 0x20u);
      }
    }

    MTSimpleEventDispatcher::dispatchEvent(a1, a2, a3);
  }

  else
  {
    MTTrackpadEmbeddedEventDispatcher::dispatchEvent();
  }

  v8 = *MEMORY[0x29EDCA608];
}

void MTTrackpadEmbeddedEventDispatcher::~MTTrackpadEmbeddedEventDispatcher(MTTrackpadEmbeddedEventDispatcher *this)
{
  *this = &unk_2A24124F8;
  std::__list_imp<double>::clear(this + 62);
  std::__tree<std::__value_type<unsigned int,std::list<double>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::list<double>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::list<double>>>>::destroy(this + 472, *(this + 60));

  MTSimpleEventDispatcher::~MTSimpleEventDispatcher(this);
}

{
  *this = &unk_2A24124F8;
  std::__list_imp<double>::clear(this + 62);
  std::__tree<std::__value_type<unsigned int,std::list<double>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::list<double>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::list<double>>>>::destroy(this + 472, *(this + 60));
  MTSimpleEventDispatcher::~MTSimpleEventDispatcher(this);

  JUMPOUT(0x29ED547D0);
}

uint64_t OUTLINED_FUNCTION_3()
{

  return IOHIDEventGetEventFlags();
}

uint64_t OUTLINED_FUNCTION_10()
{

  return mach_absolute_time();
}

BOOL OUTLINED_FUNCTION_15(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_ERROR);
}

uint64_t MTModeSwitcher::createModeSwitcher(MTModeSwitcher *this, MTSimpleHIDManager *a2)
{
  v2 = (*(*this + 80))(this, a2);
  if (v2)
  {
    if (MTDeviceGetMultipleFirmwaresConfig())
    {
      if (MTDeviceGetParserType() == 4)
      {
        operator new();
      }

      operator new();
    }

    return 0;
  }

  return v2;
}

void MTNoOpModeSwitcher::MTNoOpModeSwitcher(MTNoOpModeSwitcher *this, MTSimpleHIDManager *a2)
{
  *(this + 2) = 255;
  *(this + 24) = 0;
  *(this + 28) = 255;
  *this = &unk_2A2413300;
  *(this + 1) = a2;
}

{
  *(this + 2) = 255;
  *(this + 24) = 0;
  *(this + 28) = 255;
  *this = &unk_2A2413300;
  *(this + 1) = a2;
}

void MTMultipleFirmwaresModeSwitcher::MTMultipleFirmwaresModeSwitcher(MTMultipleFirmwaresModeSwitcher *this, MTSimpleHIDManager *a2)
{
  *(this + 2) = 255;
  *(this + 24) = 0;
  *(this + 28) = 255;
  *this = &unk_2A2413340;
  *(this + 1) = a2;
  operator new();
}

{
  *(this + 2) = 255;
  *(this + 24) = 0;
  *(this + 28) = 255;
  *this = &unk_2A2413340;
  *(this + 1) = a2;
  operator new();
}

uint64_t MTMultipleFirmwaresModeSwitcher::init(MTMultipleFirmwaresModeSwitcher *this, const __CFDictionary *a2)
{
  v36 = *MEMORY[0x29EDCA608];
  (*(**(this + 1) + 80))(*(this + 1));
  *(*(this + 5) + 8) = [(__CFDictionary *)a2 objectForKeyedSubscript:@"BootloaderProperty"];
  *(*(this + 5) + 16) = [(__CFDictionary *)a2 objectForKeyedSubscript:@"ActivePayload"];
  v4 = [(__CFDictionary *)a2 objectForKeyedSubscript:@"TTWPayload"];
  v5 = *(this + 5);
  v5[3] = v4;
  if (v5[1])
  {
    if (v5[2] && v4 != 0)
    {
      v9 = MTDevicePowerControlSupported();
      if (v9)
      {
        *(&v27 + 3) = -1431655766;
        LODWORD(v27) = -1431655766;
        if (MTDeviceGetSensorRegionOfType())
        {
          v10 = [MEMORY[0x29EDC5DC8] getDeviceInServiceTree:{MTDeviceGetService(), v27}];
          if (v10)
          {
            v11 = [v10 getBootLoader];
            v12 = *(this + 5);
            *v12 = v11;
            if (v11)
            {
              v13 = *(v12 + 8);
              v14 = *(*(this + 5) + 16);
              v15 = *(*(this + 5) + 24);
              v16 = **(this + 5);
              MTDeviceGetDeviceID();
              v17 = MTLoggingPlugin();
              if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
              {
                v18 = *(this + 5);
                v19 = v18[1];
                v20 = v18[2];
                v21 = v18[3];
                *buf = 138544130;
                v29 = v19;
                v30 = 2114;
                v31 = v20;
                v32 = 2114;
                v33 = v21;
                v34 = 2048;
                v35 = 0;
                _os_log_impl(&dword_29D381000, v17, OS_LOG_TYPE_DEFAULT, "Device using a FW binary switcher %{public}@ (active: %{public}@, ttw: %{public}@) (deviceID 0x%llX)", buf, 0x2Au);
              }

              result = 0;
              goto LABEL_29;
            }

            MTDeviceGetDeviceID();
            v24 = MTLoggingPlugin();
            if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
            {
              *buf = 134217984;
              v29 = 0;
              v25 = "Device doesn't have an AHTBootloader (deviceID 0x%llX)";
              goto LABEL_27;
            }
          }

          else
          {
            MTDeviceGetDeviceID();
            v24 = MTLoggingPlugin();
            if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
            {
              *buf = 134217984;
              v29 = 0;
              v25 = "Device doesn't have AHTDevice (deviceID 0x%llX)";
LABEL_27:
              _os_log_impl(&dword_29D381000, v24, OS_LOG_TYPE_ERROR, v25, buf, 0xCu);
            }
          }

          result = 3758097136;
          goto LABEL_29;
        }

        MTDeviceGetDeviceID();
        v22 = MTLoggingPlugin();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          *buf = 134217984;
          v29 = 0;
          v23 = "We don't support multiple firmwares in prox integrated devices (deviceID 0x%llX)";
          goto LABEL_21;
        }
      }

      else
      {
        MTDeviceGetDeviceID();
        v22 = MTLoggingPlugin();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          *buf = 134217984;
          v29 = 0;
          v23 = "We don't support multiple firmwares in non-power-controlled devices (deviceID 0x%llX)";
LABEL_21:
          _os_log_impl(&dword_29D381000, v22, OS_LOG_TYPE_ERROR, v23, buf, 0xCu);
        }
      }

      result = 3758097095;
      goto LABEL_29;
    }
  }

  MTDeviceGetDeviceID();
  v7 = MTLoggingPlugin();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543618;
    v29 = a2;
    v30 = 2048;
    v31 = 0;
    _os_log_impl(&dword_29D381000, v7, OS_LOG_TYPE_ERROR, "Missing parts of the config: %{public}@ (deviceID 0x%llX)", buf, 0x16u);
  }

  result = 3758097090;
LABEL_29:
  v26 = *MEMORY[0x29EDCA608];
  return result;
}

void MTModeSwitcher::MTModeSwitcher(MTModeSwitcher *this, MTSimpleHIDManager *a2)
{
  *this = &unk_2A24132C0;
  *(this + 1) = a2;
  *(this + 2) = 255;
  *(this + 24) = 0;
  *(this + 28) = 255;
}

void MTModeSwitcher::transitionGraphicsOrientationTo(uint64_t a1, unsigned int a2)
{
  v19 = *MEMORY[0x29EDCA608];
  if ((*(a1 + 24) & 1) != 0 || *(a1 + 16) == 255)
  {
    (*(**(a1 + 8) + 80))(*(a1 + 8));
    MTDeviceGetDeviceID();
    v4 = MTLoggingPlugin();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      if (a2 > 4)
      {
        v5 = "Unknown";
      }

      else
      {
        v5 = off_29F34CA90[a2];
      }

      v9 = "off";
      if (*(a1 + 24))
      {
        v9 = "booting";
      }

      *buf = 136446722;
      v14 = v5;
      v15 = 2082;
      v16 = v9;
      v17 = 2048;
      v18 = 0;
      _os_log_impl(&dword_29D381000, v4, OS_LOG_TYPE_DEFAULT, "Setting orientation to %{public}s deferred (device %{public}s) (deviceID 0x%llX)", buf, 0x20u);
    }

    goto LABEL_22;
  }

  (*(**(a1 + 8) + 80))(*(a1 + 8));
  MTDeviceGetDeviceID();
  v6 = MTLoggingPlugin();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 20);
    if (v7 > 4)
    {
      v8 = "Unknown";
    }

    else
    {
      v8 = off_29F34CA90[v7];
    }

    if (a2 > 4)
    {
      v10 = "Unknown";
    }

    else
    {
      v10 = off_29F34CA90[a2];
    }

    *buf = 136446722;
    v14 = v8;
    v15 = 2082;
    v16 = v10;
    v17 = 2048;
    v18 = 0;
    _os_log_impl(&dword_29D381000, v6, OS_LOG_TYPE_DEFAULT, "Graphics orientation transitioning from %{public}s to %{public}s (deviceID 0x%llX)", buf, 0x20u);
  }

  if (*(a1 + 20) != a2)
  {
    MTModeSwitcher::setGraphicsOrientation(a1, a2);
    MTModeSwitcher::setTouchDetectionMode(a1, *(a1 + 16), a2);
LABEL_22:
    *(a1 + 20) = a2;
    goto LABEL_23;
  }

  (*(**(a1 + 8) + 80))(*(a1 + 8));
  MTDeviceGetDeviceID();
  v11 = MTLoggingPlugin();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    *buf = 134217984;
    v14 = 0;
    _os_log_impl(&dword_29D381000, v11, OS_LOG_TYPE_ERROR, "Unexpected: new orientation == old orientation (rebooting firmware?) (deviceID 0x%llX)", buf, 0xCu);
  }

LABEL_23:
  v12 = *MEMORY[0x29EDCA608];
}

const char *MTModeSwitcher::orientationToText(uint64_t a1, unsigned int a2)
{
  if (a2 > 4)
  {
    return "Unknown";
  }

  else
  {
    return off_29F34CA90[a2];
  }
}

void MTModeSwitcher::setGraphicsOrientation(uint64_t a1, unsigned int a2)
{
  v18 = *MEMORY[0x29EDCA608];
  (*(**(a1 + 8) + 80))(*(a1 + 8));
  MTDeviceGetDeviceID();
  v4 = MTLoggingPlugin();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    if (a2 > 4)
    {
      v5 = "Unknown";
    }

    else
    {
      v5 = off_29F34CA90[a2];
    }

    *buf = 136446466;
    v13 = v5;
    v14 = 2048;
    v15 = 0;
    _os_log_impl(&dword_29D381000, v4, OS_LOG_TYPE_DEFAULT, "Setting graphics orientation %{public}s (deviceID 0x%llX)", buf, 0x16u);
  }

  (*(**(a1 + 8) + 80))(*(a1 + 8));
  v6 = MTDeviceSetReport();
  if (v6)
  {
    v7 = v6;
    (*(**(a1 + 8) + 80))(*(a1 + 8));
    MTDeviceGetDeviceID();
    v8 = MTLoggingPlugin();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      if (a2 > 4)
      {
        v9 = "Unknown";
      }

      else
      {
        v9 = off_29F34CA90[a2];
      }

      v10 = mach_error_string(v7);
      *buf = 136446722;
      v13 = v9;
      v14 = 2082;
      v15 = v10;
      v16 = 2048;
      v17 = 0;
      _os_log_impl(&dword_29D381000, v8, OS_LOG_TYPE_ERROR, "Error trying to set graphics orientation %{public}s: %{public}s (deviceID 0x%llX)", buf, 0x20u);
    }
  }

  v11 = *MEMORY[0x29EDCA608];
}

void MTModeSwitcher::setTouchDetectionMode(uint64_t a1, int a2, unsigned int a3)
{
  v28 = *MEMORY[0x29EDCA608];
  (*(**(a1 + 8) + 80))(*(a1 + 8));
  MTDeviceGetDeviceID();
  v6 = MTLoggingPlugin();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (v7)
  {
    v8 = MTModeSwitcher::modeToText(v7, a2);
    if (a3 > 4)
    {
      v9 = "Unknown";
    }

    else
    {
      v9 = off_29F34CA90[a3];
    }

    *buf = 136446978;
    v19 = v8;
    v20 = 1024;
    v21 = a2;
    v22 = 2082;
    v23 = v9;
    v24 = 2048;
    v25 = 0;
    _os_log_impl(&dword_29D381000, v6, OS_LOG_TYPE_DEFAULT, "Setting touch detection mode to %{public}s (0x%x) and orientation to %{public}s (deviceID 0x%llX)", buf, 0x26u);
  }

  (*(**(a1 + 8) + 80))(*(a1 + 8));
  v10 = MTDeviceSetTouchMode();
  if (v10)
  {
    v11 = v10;
    (*(**(a1 + 8) + 80))(*(a1 + 8));
    MTDeviceGetDeviceID();
    v12 = MTLoggingPlugin();
    v13 = os_log_type_enabled(v12, OS_LOG_TYPE_ERROR);
    if (v13)
    {
      v14 = MTModeSwitcher::modeToText(v13, a2);
      if (a3 > 4)
      {
        v15 = "Unknown";
      }

      else
      {
        v15 = off_29F34CA90[a3];
      }

      v16 = mach_error_string(v11);
      *buf = 136447234;
      v19 = v14;
      v20 = 1024;
      v21 = a2;
      v22 = 2082;
      v23 = v15;
      v24 = 2082;
      v25 = v16;
      v26 = 2048;
      v27 = 0;
      _os_log_impl(&dword_29D381000, v12, OS_LOG_TYPE_ERROR, "Error trying to set mode to %{public}s (0x%x) and orientation to %{public}s: %{public}s (deviceID 0x%llX)", buf, 0x30u);
    }
  }

  v17 = *MEMORY[0x29EDCA608];
}

void MTModeSwitcher::deviceDidBootload(MTModeSwitcher *this)
{
  *&v15[13] = *MEMORY[0x29EDCA608];
  (*(**(this + 1) + 80))(*(this + 1));
  MTDeviceGetDeviceID();
  v2 = MTLoggingPlugin();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    if (*(this + 24))
    {
      v3 = "expected";
    }

    else
    {
      v3 = "unexpected";
    }

    *buf = 136446466;
    v13 = v3;
    v14 = 2048;
    *v15 = 0;
    _os_log_impl(&dword_29D381000, v2, OS_LOG_TYPE_DEFAULT, "Device booted (%{public}s): setting touch detection mode, orientation and power (deviceID 0x%llX)", buf, 0x16u);
  }

  if (*(this + 8) == 1)
  {
    (*(**(this + 1) + 80))(*(this + 1));
    MTDeviceGetDeviceID();
    v4 = MTLoggingPlugin();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v13 = 0;
      _os_log_impl(&dword_29D381000, v4, OS_LOG_TYPE_DEFAULT, "Debug mode forced to Always ON (deviceID 0x%llX)", buf, 0xCu);
    }

    *(this + 7) = 0;
  }

  v5 = *(this + 4);
  if ((*(this + 24) & 1) == 0)
  {
    *(this + 7) = v5;
  }

  *(this + 24) = 0;
  if (v5 == 254)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2 * (v5 != 255);
  }

  MTModeSwitcher::setGraphicsOrientation(this, *(this + 5));
  MTModeSwitcher::setTouchDetectionMode(this, *(this + 4), *(this + 5));
  MTModeSwitcher::setDevicePowerState(this, v6);
  if (*(this + 7) != *(this + 4))
  {
    (*(**(this + 1) + 80))(*(this + 1));
    MTDeviceGetDeviceID();
    v7 = MTLoggingPlugin();
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
    if (v8)
    {
      v9 = *(this + 7);
      v10 = MTModeSwitcher::modeToText(v8, v9);
      *buf = 136446722;
      v13 = v10;
      v14 = 1024;
      *v15 = v9;
      v15[2] = 2048;
      *&v15[3] = 0;
      _os_log_impl(&dword_29D381000, v7, OS_LOG_TYPE_DEFAULT, "Pending transition after boot. Going to %{public}s (0x%x) (deviceID 0x%llX)", buf, 0x1Cu);
    }

    (*(*this + 16))(this, *(this + 7), 0);
  }

  v11 = *MEMORY[0x29EDCA608];
}

void MTModeSwitcher::setDevicePowerState(uint64_t a1, unsigned int a2)
{
  v18 = *MEMORY[0x29EDCA608];
  (*(**(a1 + 8) + 80))(*(a1 + 8));
  MTDeviceGetDeviceID();
  v4 = MTLoggingPlugin();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    if (a2 > 2)
    {
      v5 = "Unknown";
    }

    else
    {
      v5 = off_29F34CAB8[a2];
    }

    *buf = 136446466;
    v13 = v5;
    v14 = 2048;
    v15 = 0;
    _os_log_impl(&dword_29D381000, v4, OS_LOG_TYPE_DEFAULT, "Setting power state to %{public}s (deviceID 0x%llX)", buf, 0x16u);
  }

  (*(**(a1 + 8) + 80))(*(a1 + 8));
  v6 = MTDevicePowerSetState();
  if (v6)
  {
    v7 = v6;
    (*(**(a1 + 8) + 80))(*(a1 + 8));
    MTDeviceGetDeviceID();
    v8 = MTLoggingPlugin();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      if (a2 > 2)
      {
        v9 = "Unknown";
      }

      else
      {
        v9 = off_29F34CAB8[a2];
      }

      v10 = mach_error_string(v7);
      *buf = 136446722;
      v13 = v9;
      v14 = 2082;
      v15 = v10;
      v16 = 2048;
      v17 = 0;
      _os_log_impl(&dword_29D381000, v8, OS_LOG_TYPE_ERROR, "Error trying to set power state to %{public}s: %{public}s (deviceID 0x%llX)", buf, 0x20u);
    }
  }

  v11 = *MEMORY[0x29EDCA608];
}

const char *MTModeSwitcher::modeToText(uint64_t a1, int a2)
{
  if (a2 <= 251)
  {
    switch(a2)
    {
      case 0:
        return "On";
      case 1:
        return "PocketTouchesExpected";
      case 2:
        return "FaceExpected";
    }

    return "Unknown";
  }

  if (a2 > 253)
  {
    if (a2 == 254)
    {
      return "WakeOnTouchAndCoverGesture";
    }

    if (a2 == 255)
    {
      return "Off";
    }

    return "Unknown";
  }

  if (a2 == 252)
  {
    return "LowPersistence";
  }

  else
  {
    return "WakeOnTouch";
  }
}

uint64_t MTModeSwitcher::bootloadTimerExpired(MTModeSwitcher *this)
{
  v13 = *MEMORY[0x29EDCA608];
  *(this + 24) = 0;
  (*(**(this + 1) + 80))(*(this + 1));
  MTDeviceGetDeviceID();
  v2 = MTLoggingPlugin();
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    v4 = *(this + 7);
    *buf = 136446722;
    v8 = MTModeSwitcher::modeToText(v3, v4);
    v9 = 1024;
    v10 = v4;
    v11 = 2048;
    v12 = 0;
    _os_log_impl(&dword_29D381000, v2, OS_LOG_TYPE_DEFAULT, "Device never bootloaded. Try to recover by going to %{public}s (0x%x) (deviceID 0x%llX)", buf, 0x1Cu);
  }

  result = (*(*this + 16))(this, *(this + 7), 0);
  v6 = *MEMORY[0x29EDCA608];
  return result;
}

void MTModeSwitcher::resetFirmware(uint64_t a1, int a2)
{
  v12 = *MEMORY[0x29EDCA608];
  (*(**(a1 + 8) + 480))(*(a1 + 8), 30);
  v4 = (*(**(a1 + 8) + 424))();
  if (v4)
  {
    v5 = v4;
    (*(**(a1 + 8) + 80))(*(a1 + 8));
    MTDeviceGetDeviceID();
    v6 = MTLoggingPlugin();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v9 = mach_error_string(v5);
      v10 = 2048;
      v11 = 0;
      _os_log_impl(&dword_29D381000, v6, OS_LOG_TYPE_ERROR, "Error trying to reset device: %{public}s (deviceID 0x%llX)", buf, 0x16u);
    }
  }

  *(a1 + 24) = 1;
  *(a1 + 28) = a2;
  v7 = *MEMORY[0x29EDCA608];
}

void MTModeSwitcher::bootFirmware(uint64_t a1, int a2)
{
  v8 = *MEMORY[0x29EDCA608];
  (*(**(a1 + 8) + 80))(*(a1 + 8));
  if (MTDevicePowerGetState() | 0xAAAAAAAA)
  {
    (*(**(a1 + 8) + 80))(*(a1 + 8));
    MTDeviceGetDeviceID();
    v4 = MTLoggingPlugin();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      v7 = 0;
      _os_log_impl(&dword_29D381000, v4, OS_LOG_TYPE_ERROR, "Trying to boot a device in an unknown/unexpected state (deviceID 0x%llX)", buf, 0xCu);
    }

    MTModeSwitcher::resetFirmware(a1, a2);
  }

  (*(**(a1 + 8) + 480))(*(a1 + 8), 30);
  MTModeSwitcher::setDevicePowerState(a1, 2u);
  *(a1 + 24) = 1;
  *(a1 + 28) = a2;
  v5 = *MEMORY[0x29EDCA608];
}

const char *MTModeSwitcher::powerStateToText(uint64_t a1, unsigned int a2)
{
  if (a2 > 2)
  {
    return "Unknown";
  }

  else
  {
    return off_29F34CAB8[a2];
  }
}

void MTMultipleFirmwaresModeSwitcher::~MTMultipleFirmwaresModeSwitcher(MTMultipleFirmwaresModeSwitcher *this)
{
  *this = &unk_2A2413340;
  v2 = *(this + 5);
  if (v2)
  {

    v3 = *(this + 5);
    if (v3)
    {
      MEMORY[0x29ED547D0](v3, 0x80C4018A671A6);
    }

    *(this + 5) = 0;
  }
}

{
  MTMultipleFirmwaresModeSwitcher::~MTMultipleFirmwaresModeSwitcher(this);

  JUMPOUT(0x29ED547D0);
}

void MTMultipleFirmwaresModeSwitcher::transitionTouchDetectionModeTo(uint64_t a1, int a2)
{
  v36 = *MEMORY[0x29EDCA608];
  if (*(a1 + 32) == 1)
  {
    (*(**(a1 + 8) + 80))(*(a1 + 8));
    MTDeviceGetDeviceID();
    v4 = MTLoggingPlugin();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v27 = 0;
      _os_log_impl(&dword_29D381000, v4, OS_LOG_TYPE_DEFAULT, "Debug mode forced to Always ON (deviceID 0x%llX)", buf, 0xCu);
    }

    a2 = 0;
  }

  if (*(a1 + 24) == 1)
  {
    (*(**(a1 + 8) + 80))(*(a1 + 8));
    MTDeviceGetDeviceID();
    v5 = MTLoggingPlugin();
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
    if (v6)
    {
      v7 = MTModeSwitcher::modeToText(v6, a2);
      *buf = 136446722;
      v27 = v7;
      v28 = 1024;
      v29 = a2;
      v30 = 2048;
      v31 = 0;
      _os_log_impl(&dword_29D381000, v5, OS_LOG_TYPE_DEFAULT, "Touch detection mode to %{public}s (0x%x) deferred (device booting) (deviceID 0x%llX)", buf, 0x1Cu);
    }

    *(a1 + 28) = a2;
    goto LABEL_9;
  }

  (*(**(a1 + 8) + 80))(*(a1 + 8));
  MTDeviceGetDeviceID();
  v9 = MTLoggingPlugin();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if (v10)
  {
    v11 = *(a1 + 16);
    v12 = MTModeSwitcher::modeToText(v10, v11);
    v13 = MTModeSwitcher::modeToText(v12, a2);
    *buf = 136447234;
    v27 = v12;
    v28 = 1024;
    v29 = v11;
    v30 = 2082;
    v31 = v13;
    v32 = 1024;
    v33 = a2;
    v34 = 2048;
    v35 = 0;
    _os_log_impl(&dword_29D381000, v9, OS_LOG_TYPE_DEFAULT, "Touch detection mode transitioning from %{public}s (0x%x) to %{public}s (0x%x) (deviceID 0x%llX)", buf, 0x2Cu);
  }

  v14 = *(a1 + 16);
  if (a2 == v14)
  {
    (*(**(a1 + 8) + 80))(*(a1 + 8));
    MTDeviceGetDeviceID();
    v15 = MTLoggingPlugin();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      v27 = 0;
      _os_log_impl(&dword_29D381000, v15, OS_LOG_TYPE_ERROR, "Unexpected: new mode == old mode (rebooting firmware?) (deviceID 0x%llX)", buf, 0xCu);
    }

    goto LABEL_9;
  }

  if (*(a1 + 48) != 1)
  {
    if (a2 > 253)
    {
      if (a2 != 254)
      {
        if (a2 == 255)
        {
          if (v14 < 2 || v14 == 254)
          {
            MTModeSwitcher::setDevicePowerState(a1, 0);
          }

          a2 = 255;
          goto LABEL_50;
        }

        goto LABEL_35;
      }

      if (v14 < 2)
      {
        a2 = 254;
        v17 = a1;
        v18 = 1;
        v19 = 254;
LABEL_41:
        MTMultipleFirmwaresModeSwitcher::switchFirmware(v17, v18, v19);
LABEL_50:
        *(a1 + 16) = a2;
        goto LABEL_9;
      }

      if (v14 != 255)
      {
        a2 = 254;
        goto LABEL_50;
      }

      v24 = a1;
      v25 = 254;
    }

    else
    {
      if (a2)
      {
        if (a2 == 1)
        {
          if (v14 - 254 >= 2)
          {
            a2 = 1;
            if (!v14)
            {
              MTModeSwitcher::setTouchDetectionMode(a1, 1, *(a1 + 20));
            }

            goto LABEL_50;
          }

          a2 = 1;
          v17 = a1;
          v18 = 0;
          v19 = 1;
          goto LABEL_41;
        }

LABEL_35:
        (*(**(a1 + 8) + 80))(*(a1 + 8));
        MTDeviceGetDeviceID();
        v21 = MTLoggingPlugin();
        v22 = os_log_type_enabled(v21, OS_LOG_TYPE_ERROR);
        if (v22)
        {
          v23 = MTModeSwitcher::modeToText(v22, a2);
          *buf = 136446722;
          v27 = v23;
          v28 = 1024;
          v29 = a2;
          v30 = 2048;
          v31 = 0;
          _os_log_impl(&dword_29D381000, v21, OS_LOG_TYPE_ERROR, "Unexpected transition to %{public}s (0x%x) (deviceID 0x%llX)", buf, 0x1Cu);
        }

        goto LABEL_50;
      }

      if (v14 - 254 >= 2)
      {
        if (v14 == 1)
        {
          MTModeSwitcher::setTouchDetectionMode(a1, 0, *(a1 + 20));
        }

        goto LABEL_49;
      }

      v24 = a1;
      v25 = 0;
    }

    MTMultipleFirmwaresModeSwitcher::switchFirmware(v24, 0, v25);
LABEL_49:
    a2 = 0;
    goto LABEL_50;
  }

  if (a2 || v14 != 255)
  {
    (*(**(a1 + 8) + 80))(*(a1 + 8));
    MTDeviceGetDeviceID();
    v20 = MTLoggingPlugin();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      v27 = 0;
      _os_log_impl(&dword_29D381000, v20, OS_LOG_TYPE_ERROR, "Unexpected first boot (deviceID 0x%llX)", buf, 0xCu);
    }
  }

  else
  {
    (*(**(a1 + 8) + 80))(*(a1 + 8));
    MTDeviceGetDeviceID();
    v16 = MTLoggingPlugin();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v27 = 0;
      _os_log_impl(&dword_29D381000, v16, OS_LOG_TYPE_DEFAULT, "First boot: setting power to On (deviceID 0x%llX)", buf, 0xCu);
    }

    MTModeSwitcher::setDevicePowerState(a1, 2u);
    *(a1 + 16) = 0;
  }

  *(a1 + 48) = 0;
LABEL_9:
  v8 = *MEMORY[0x29EDCA608];
}