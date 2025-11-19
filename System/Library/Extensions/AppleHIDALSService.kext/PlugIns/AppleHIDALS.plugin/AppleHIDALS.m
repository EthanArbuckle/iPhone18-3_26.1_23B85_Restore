void HidPluginIUnknown::factoryAddRef(HidPluginIUnknown *this)
{
  if (!HidPluginIUnknown::factoryRefCount++)
  {
    v3 = CFUUIDGetConstantUUIDWithBytes(kCFAllocatorSystemDefault, 0xCAu, 0x3Au, 0x28u, 0xBDu, 0x6Au, 0x7Au, 0x40u, 0xCBu, 0x92u, 0x7Cu, 0xFAu, 0x67u, 0x17u, 0x70u, 0xD4u, 8u);

    CFPlugInAddInstanceForFactory(v3);
  }
}

void HidPluginIUnknown::factoryRelease(HidPluginIUnknown *this)
{
  v2 = HidPluginIUnknown::factoryRefCount--;
  if (HidPluginIUnknown::factoryRefCount)
  {
    if (v2 <= 0)
    {
      HidPluginIUnknown::factoryRefCount = 0;
    }
  }

  else
  {
    v3 = CFUUIDGetConstantUUIDWithBytes(kCFAllocatorSystemDefault, 0xCAu, 0x3Au, 0x28u, 0xBDu, 0x6Au, 0x7Au, 0x40u, 0xCBu, 0x92u, 0x7Cu, 0xFAu, 0x67u, 0x17u, 0x70u, 0xD4u, 8u);

    CFPlugInRemoveInstanceForFactory(v3);
  }
}

void HidPluginIUnknown::HidPluginIUnknown(HidPluginIUnknown *this, void *a2)
{
  *this = off_144F8;
  *(this + 2) = 1;
  *(this + 2) = a2;
  *(this + 3) = this;
  HidPluginIUnknown::factoryAddRef(this);
}

uint64_t HidPluginIUnknown::addRef(HidPluginIUnknown *this)
{
  v1 = (*(this + 2) + 1);
  *(this + 2) = v1;
  return v1;
}

uint64_t HidPluginIUnknown::release(HidPluginIUnknown *this)
{
  v1 = *(this + 2);
  v2 = (v1 - 1);
  if (v1 == 1)
  {
    *(this + 2) = 0;
    (*(*this + 8))(this);
  }

  else
  {
    *(this + 2) = v2;
  }

  return v2;
}

os_log_t init_default_corebrightness_log()
{
  v0 = os_log_create("com.apple.CoreBrightness", "default");
  _COREBRIGHTNESS_LOG_DEFAULT = v0;
  if (!v0)
  {
    v0 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_C0B4();
    }

    _COREBRIGHTNESS_LOG_DEFAULT = &_os_log_default;
  }

  return v0;
}

void DisplayPowerCallback(void *a1, unsigned int a2, int a3, void *a4)
{
  if (a1)
  {
    if (a4)
    {
      v5 = a4[2];
    }

    else
    {
      v5 = 0;
    }

    if (a3 == -536870352)
    {
      inited = a1[7];
      if (!inited)
      {
        inited = _COREBRIGHTNESS_LOG_DEFAULT;
        if (!_COREBRIGHTNESS_LOG_DEFAULT)
        {
          inited = init_default_corebrightness_log();
        }
      }

      if (os_log_type_enabled(inited, OS_LOG_TYPE_DEBUG))
      {
        sub_C0FC();
      }

      *(a1 + 248) = 0;
      v7 = 1;
      if (*(a1 + 251) != 1)
      {
        goto LABEL_21;
      }

      goto LABEL_20;
    }

    if (a3 == -536870384)
    {
      v6 = a1[7];
      if (!v6)
      {
        v6 = _COREBRIGHTNESS_LOG_DEFAULT;
        if (!_COREBRIGHTNESS_LOG_DEFAULT)
        {
          v6 = init_default_corebrightness_log();
        }
      }

      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        sub_C138();
      }

      if (v5 <= 2)
      {
        v7 = 0;
        *(a1 + 248) = 1;
LABEL_20:
        AppleUSBALS::displayStateUpdate(a1, v7);
LABEL_21:
        *(a1 + 250) = v7;
      }
    }
  }
}

void AppleUSBALS::displayStateUpdate(AppleUSBALS *this, int a2)
{
  inited = *(this + 7);
  if (!inited)
  {
    inited = _COREBRIGHTNESS_LOG_DEFAULT;
    if (!_COREBRIGHTNESS_LOG_DEFAULT)
    {
      inited = init_default_corebrightness_log();
    }
  }

  if (os_log_type_enabled(inited, OS_LOG_TYPE_INFO))
  {
    v5 = *(this + 249);
    v6 = *(this + 288);
    *buf = 67109632;
    *&buf[4] = a2;
    LOWORD(cf) = 1024;
    *(&cf + 2) = v5;
    HIWORD(cf) = 1024;
    v18 = v6;
    _os_log_impl(&dword_0, inited, OS_LOG_TYPE_INFO, "on=%d _currentDisp=%d _clamshellOpen=%d", buf, 0x14u);
  }

  if (*(this + 249) != a2 && (!a2 || (*(this + 288) & 1) != 0))
  {
    v7 = 0.0;
    if (a2)
    {
      v7 = 1.0;
    }

    valuePtr = v7;
    v13 = 1056964608;
    v8 = CFNumberCreate(kCFAllocatorDefault, kCFNumberFloat32Type, &valuePtr);
    v9 = CFNumberCreate(kCFAllocatorDefault, kCFNumberFloat32Type, &v13);
    *buf = v8;
    cf = v9;
    *keys = *off_14670;
    if (v8)
    {
      v10 = v9 == 0;
    }

    else
    {
      v10 = 1;
    }

    if (!v10)
    {
      v11 = CFDictionaryCreate(kCFAllocatorDefault, keys, buf, 2, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      if (v11)
      {
        v12 = v11;
        if ((*(*this + 88))(this, @"DFRDisplayFactor", v11))
        {
          *(this + 249) = a2;
        }

        CFRelease(v12);
      }
    }

    if (*buf)
    {
      CFRelease(*buf);
    }

    if (cf)
    {
      CFRelease(cf);
    }
  }
}

void clamshellStateCallback(void *a1, io_registry_entry_t a2, int a3, void *a4)
{
  inited = a1[7];
  if (!inited)
  {
    inited = _COREBRIGHTNESS_LOG_DEFAULT;
    if (!_COREBRIGHTNESS_LOG_DEFAULT)
    {
      inited = init_default_corebrightness_log();
    }
  }

  if (os_log_type_enabled(inited, OS_LOG_TYPE_DEBUG))
  {
    sub_C1A8();
  }

  if (a3 == -536657664)
  {
    CFProperty = IORegistryEntryCreateCFProperty(a2, @"AppleClamshellState", kCFAllocatorDefault, 0);
    if (CFProperty)
    {
      v9 = CFProperty;
      v10 = a1[7];
      *(a1 + 288) = CFProperty == kCFBooleanFalse;
      if (CFProperty == kCFBooleanFalse)
      {
        if (!v10)
        {
          v10 = _COREBRIGHTNESS_LOG_DEFAULT;
          if (!_COREBRIGHTNESS_LOG_DEFAULT)
          {
            v10 = init_default_corebrightness_log();
          }
        }

        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
        {
          sub_C254();
        }

        if (a1[31])
        {
          goto LABEL_21;
        }
      }

      else
      {
        if (!v10)
        {
          v10 = _COREBRIGHTNESS_LOG_DEFAULT;
          if (!_COREBRIGHTNESS_LOG_DEFAULT)
          {
            v10 = init_default_corebrightness_log();
          }
        }

        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
        {
          sub_C218();
        }
      }

      AppleUSBALS::displayStateUpdate(a1, v9 == kCFBooleanFalse);
LABEL_21:
      CFRelease(v9);
    }
  }
}

void DisplayWranglerArrival(void *a1, io_iterator_t a2)
{
  if (a1)
  {
    inited = a1[7];
    if (!inited)
    {
      inited = _COREBRIGHTNESS_LOG_DEFAULT;
      if (!_COREBRIGHTNESS_LOG_DEFAULT)
      {
        inited = init_default_corebrightness_log();
      }
    }

    if (os_log_type_enabled(inited, OS_LOG_TYPE_DEFAULT))
    {
      v5 = a1[32];
      v10 = 136315650;
      if (v5)
      {
        v6 = "valid";
      }

      else
      {
        v6 = "invalid";
      }

      v11 = v6;
      v12 = 2048;
      v13 = a1;
      v14 = 1024;
      v15 = a2;
      _os_log_impl(&dword_0, inited, OS_LOG_TYPE_DEFAULT, "display wrangler published notification (current %s, refcon=%p, iterator=0x%X)", &v10, 0x1Cu);
    }

    if (a2 && !a1[32])
    {
      v7 = IOIteratorNext(a2);
      if (v7)
      {
        v8 = v7;
        v9 = AppleUSBALS::initializeDisplayPowerMonitoring(a1, v7);
        IOObjectRelease(v8);
        *(a1 + 248) = !v9;
        *(a1 + 249) = !v9;
        AppleUSBALS::displayStateUpdate(a1, v9);
      }
    }
  }
}

BOOL AppleUSBALS::initializeDisplayPowerMonitoring(AppleUSBALS *this, io_service_t a2)
{
  v4 = IONotificationPortCreate(kIOMasterPortDefault);
  *(this + 32) = v4;
  if (v4 && !IOServiceAddInterestNotification(v4, a2, "IOGeneralInterest", DisplayPowerCallback, this, this + 63))
  {
    IONotificationPortSetDispatchQueue(*(this + 32), *(this + 8));
  }

  inited = *(this + 7);
  if (!inited)
  {
    inited = _COREBRIGHTNESS_LOG_DEFAULT;
    if (!_COREBRIGHTNESS_LOG_DEFAULT)
    {
      inited = init_default_corebrightness_log();
    }
  }

  if (os_log_type_enabled(inited, OS_LOG_TYPE_DEBUG))
  {
    sub_C290(this, this + 32);
  }

  CFProperty = IORegistryEntryCreateCFProperty(a2, @"IOPowerManagement", kCFAllocatorDefault, 0);
  if (CFProperty)
  {
    v7 = CFProperty;
    TypeID = CFDictionaryGetTypeID();
    if (TypeID == CFGetTypeID(v7) && (Value = CFDictionaryGetValue(v7, @"CurrentPowerState")) != 0)
    {
      v10 = Value;
      v11 = CFNumberGetTypeID();
      v12 = 4;
      if (v11 == CFGetTypeID(v10))
      {
        v15[0] = 0;
        if (CFNumberGetValue(v10, kCFNumberIntType, v15))
        {
          v12 = v15[0];
        }

        else
        {
          v12 = 4;
        }
      }
    }

    else
    {
      v12 = 4;
    }

    CFRelease(v7);
  }

  else
  {
    v12 = 4;
  }

  v13 = *(this + 7);
  if (!v13)
  {
    v13 = _COREBRIGHTNESS_LOG_DEFAULT;
    if (!_COREBRIGHTNESS_LOG_DEFAULT)
    {
      v13 = init_default_corebrightness_log();
    }
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v15[0] = 67109120;
    v15[1] = v12;
    _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "initial power state %d", v15, 8u);
  }

  return v12 > 2;
}

void SystemPowerStateUpdateCallback(void *a1, unsigned int a2, int a3, intptr_t notificationID)
{
  if (a1)
  {
    switch(a3)
    {
      case -536870144:
        inited = *(a1 + 7);
        if (!inited)
        {
          inited = _COREBRIGHTNESS_LOG_DEFAULT;
          if (!_COREBRIGHTNESS_LOG_DEFAULT)
          {
            inited = init_default_corebrightness_log();
          }
        }

        if (os_log_type_enabled(inited, OS_LOG_TYPE_DEFAULT))
        {
          *v10 = 0;
          _os_log_impl(&dword_0, inited, OS_LOG_TYPE_DEFAULT, "system has powered on", v10, 2u);
        }

        AppleUSBALS::systemPowerStateUpdate(a1, 1);
        break;
      case -536870272:
        v8 = *(a1 + 7);
        if (!v8)
        {
          v8 = _COREBRIGHTNESS_LOG_DEFAULT;
          if (!_COREBRIGHTNESS_LOG_DEFAULT)
          {
            v8 = init_default_corebrightness_log();
          }
        }

        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "system will go to sleep", buf, 2u);
        }

        AppleUSBALS::systemPowerStateUpdate(a1, 0);
        IOAllowPowerChange(*(a1 + 79), notificationID);
        break;
      case -536870288:
        v6 = *(a1 + 79);

        IOAllowPowerChange(v6, notificationID);
        break;
    }
  }

  else
  {
    v7 = _COREBRIGHTNESS_LOG_DEFAULT;
    if (!_COREBRIGHTNESS_LOG_DEFAULT)
    {
      v7 = init_default_corebrightness_log();
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_C318();
    }
  }
}

void AppleUSBALS::systemPowerStateUpdate(NSObject **this, int a2)
{
  if (*(this + 320) != a2)
  {
    v11 = v2;
    v12 = v3;
    v4 = a2;
    if (a2)
    {
      AppleUSBALS::turnOnDevice(this);
      inited = this[7];
      if (!inited)
      {
        inited = _COREBRIGHTNESS_LOG_DEFAULT;
        if (!_COREBRIGHTNESS_LOG_DEFAULT)
        {
          inited = init_default_corebrightness_log();
        }
      }

      if (!os_log_type_enabled(inited, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_14;
      }

      v10 = 0;
      v7 = "system wake - device turned on";
      v8 = &v10;
    }

    else
    {
      AppleUSBALS::turnOffDevice(this);
      inited = this[7];
      if (!inited)
      {
        inited = _COREBRIGHTNESS_LOG_DEFAULT;
        if (!_COREBRIGHTNESS_LOG_DEFAULT)
        {
          inited = init_default_corebrightness_log();
        }
      }

      if (!os_log_type_enabled(inited, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_14;
      }

      v9 = 0;
      v7 = "system sleep - device turned off";
      v8 = &v9;
    }

    _os_log_impl(&dword_0, inited, OS_LOG_TYPE_DEFAULT, v7, v8, 2u);
LABEL_14:
    *(this + 320) = v4;
  }
}

void handleExtHIDDeviceEventCallback(void *a1, int a2, void *a3, IOHIDValueRef value)
{
  if (a2)
  {
    return;
  }

  if (!a1)
  {
    return;
  }

  if (!value)
  {
    return;
  }

  Element = IOHIDValueGetElement(value);
  if (!Element)
  {
    return;
  }

  v7 = Element;
  UsagePage = IOHIDElementGetUsagePage(Element);
  Usage = IOHIDElementGetUsage(v7);
  inited = a1[7];
  if (!inited)
  {
    inited = _COREBRIGHTNESS_LOG_DEFAULT;
    if (!_COREBRIGHTNESS_LOG_DEFAULT)
    {
      inited = init_default_corebrightness_log();
    }
  }

  if (os_log_type_enabled(inited, OS_LOG_TYPE_DEBUG))
  {
    sub_C34C();
  }

  if (UsagePage != 65298)
  {
    if (UsagePage == 32 && Usage - 1233 <= 4 && Usage != 1235)
    {
      TimeStamp = IOHIDValueGetTimeStamp(value);
      v12 = TimeStamp;
      if (TimeStamp == a1[46])
      {
        v13 = a1[7];
        if (!v13)
        {
          v13 = _COREBRIGHTNESS_LOG_DEFAULT;
          if (!_COREBRIGHTNESS_LOG_DEFAULT)
          {
            v13 = init_default_corebrightness_log();
          }
        }

        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
        {
          sub_C3C8();
        }
      }

      else
      {
        a1[46] = TimeStamp;
        v16 = a1[8];
        if (v16)
        {
          v17[0] = _NSConcreteStackBlock;
          v17[1] = 0x40000000;
          v17[2] = sub_1798;
          v17[3] = &unk_14530;
          v17[4] = a1;
          v17[5] = v12;
          dispatch_async(v16, v17);
        }
      }
    }

    return;
  }

  if (Usage == 81)
  {
    v14 = a1[7];
    if (!v14)
    {
      v14 = _COREBRIGHTNESS_LOG_DEFAULT;
      if (!_COREBRIGHTNESS_LOG_DEFAULT)
      {
        v14 = init_default_corebrightness_log();
      }
    }

    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      IntegerValue = IOHIDValueGetIntegerValue(value);
      v15 = "burnin count update -> %ld";
      goto LABEL_34;
    }
  }

  else if (Usage == 49)
  {
    v14 = a1[7];
    if (!v14)
    {
      v14 = _COREBRIGHTNESS_LOG_DEFAULT;
      if (!_COREBRIGHTNESS_LOG_DEFAULT)
      {
        v14 = init_default_corebrightness_log();
      }
    }

    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      IntegerValue = IOHIDValueGetIntegerValue(value);
      v15 = "display state update -> %ld";
LABEL_34:
      _os_log_impl(&dword_0, v14, OS_LOG_TYPE_INFO, v15, buf, 0xCu);
    }
  }
}

void sub_1798(uint64_t a1)
{
  v25 = 0.0;
  v26 = 0.0;
  v23 = 0.0;
  v24 = 0.0;
  pValue = 0;
  Element = AppleUSBALS::getElement(*(a1 + 32), 32, 1233, kIOHIDElementTypeInput_Misc);
  if (Element)
  {
    if (!IOHIDDeviceGetValue(*(*(a1 + 32) + 144), Element, &pValue) && pValue != 0)
    {
      AppleUSBALS::retrieveScaledValue(*(a1 + 32), pValue, &v24);
    }
  }

  pValue = 0;
  v4 = *(a1 + 32);
  v5 = 0.0;
  if (*(v4 + 82) != 1)
  {
    v15 = 0.0;
LABEL_30:
    v18 = 0.0;
    goto LABEL_35;
  }

  v6 = AppleUSBALS::getElement(v4, 32, 1236, kIOHIDElementTypeInput_Misc);
  if (v6)
  {
    if (!IOHIDDeviceGetValue(*(*(a1 + 32) + 144), v6, &pValue) && pValue != 0)
    {
      AppleUSBALS::retrieveScaledValue(*(a1 + 32), pValue, &v26);
    }
  }

  pValue = 0;
  v8 = AppleUSBALS::getElement(*(a1 + 32), 32, 1237, kIOHIDElementTypeInput_Misc);
  if (v8)
  {
    if (!IOHIDDeviceGetValue(*(*(a1 + 32) + 144), v8, &pValue) && pValue != 0)
    {
      AppleUSBALS::retrieveScaledValue(*(a1 + 32), pValue, &v25);
    }
  }

  pValue = 0;
  v10 = AppleUSBALS::getElement(*(a1 + 32), 32, 1234, kIOHIDElementTypeInput_Misc);
  if (v10 && !IOHIDDeviceGetValue(*(*(a1 + 32) + 144), v10, &pValue) && pValue)
  {
    AppleUSBALS::retrieveScaledValue(*(a1 + 32), pValue, &v23);
  }

  inited = *(*(a1 + 32) + 56);
  if (!inited)
  {
    inited = _COREBRIGHTNESS_LOG_DEFAULT;
    if (!_COREBRIGHTNESS_LOG_DEFAULT)
    {
      inited = init_default_corebrightness_log();
    }
  }

  if (os_log_type_enabled(inited, OS_LOG_TYPE_INFO))
  {
    v13 = v25;
    v12 = v26;
    v14 = v24;
    *buf = 134218752;
    v28 = v26;
    v29 = 2048;
    v30 = v25;
    v31 = 2048;
    v32 = v23;
    v33 = 2048;
    v34 = v24;
    _os_log_impl(&dword_0, inited, OS_LOG_TYPE_INFO, "x=%f y=%f CCT=%f lux=%f", buf, 0x2Au);
    v15 = v14;
    v16 = v12;
    v17 = v13;
  }

  else
  {
    v15 = v24;
    v17 = v25;
    v16 = v26;
  }

  if (v16 == 0.0 || v17 == 0.0)
  {
    goto LABEL_30;
  }

  v18 = v15 * (v16 / v17);
  v5 = v15 * ((1.0 - v16 - v17) / v17);
LABEL_35:
  v19 = *(a1 + 32);
  if ((*(v19 + 408) & 1) == 0)
  {
    if (*(v19 + 82) == 1 && *(v19 + 409) == 1)
    {
      v18 = *(v19 + 416);
      v15 = *(v19 + 424);
      v5 = *(v19 + 432);
      v23 = *(v19 + 440);
    }

    v20 = &v24;
    if (*(v19 + 392))
    {
      v20 = (v19 + 400);
    }

    v21 = *(a1 + 40);
    AppleUSBALS::dispatchAmbientLightSensorEvent(v19, *v20, v18, v15, v5, v23);
  }
}

__IOHIDElement *AppleUSBALS::getElement(AppleUSBALS *this, int a2, int a3, IOHIDElementType a4)
{
  inited = *(this + 7);
  if (!inited)
  {
    inited = _COREBRIGHTNESS_LOG_DEFAULT;
    if (!_COREBRIGHTNESS_LOG_DEFAULT)
    {
      inited = init_default_corebrightness_log();
    }
  }

  if (os_log_type_enabled(inited, OS_LOG_TYPE_DEBUG))
  {
    v18 = 67109632;
    v19 = a3;
    v20 = 1024;
    v21 = a2;
    v22 = 1024;
    v23 = a4;
    _os_log_debug_impl(&dword_0, inited, OS_LOG_TYPE_DEBUG, "look up element: usage=0x%X page=0x%X type=%d", &v18, 0x14u);
  }

  v9 = *(this + 28);
  if (!v9 || CFArrayGetCount(v9) < 1)
  {
    return 0;
  }

  v10 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(*(this + 28), v10);
    if (ValueAtIndex)
    {
      v12 = ValueAtIndex;
      v13 = CFGetTypeID(ValueAtIndex);
      if (v13 == IOHIDElementGetTypeID() && IOHIDElementGetUsage(v12) == a3 && IOHIDElementGetUsagePage(v12) == a2 && IOHIDElementGetType(v12) == a4)
      {
        break;
      }
    }

    if (CFArrayGetCount(*(this + 28)) <= ++v10)
    {
      return 0;
    }
  }

  v15 = *(this + 7);
  if (!v15)
  {
    v15 = _COREBRIGHTNESS_LOG_DEFAULT;
    if (!_COREBRIGHTNESS_LOG_DEFAULT)
    {
      v15 = init_default_corebrightness_log();
    }
  }

  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    Cookie = IOHIDElementGetCookie(v12);
    Type = IOHIDElementGetType(v12);
    v18 = 67109888;
    v19 = a2;
    v20 = 1024;
    v21 = a3;
    v22 = 1024;
    v23 = Cookie;
    v24 = 1024;
    v25 = Type;
    _os_log_debug_impl(&dword_0, v15, OS_LOG_TYPE_DEBUG, "found element p=0x%X u=0x%X cookie=%u type=%d", &v18, 0x1Au);
  }

  return v12;
}

BOOL AppleUSBALS::retrieveScaledValue(AppleUSBALS *this, IOHIDValueRef value, double *a3)
{
  if (value)
  {
    Element = IOHIDValueGetElement(value);
    if (Element)
    {
      v7 = Element;
      LogicalMax = IOHIDElementGetLogicalMax(Element);
      LogicalMin = IOHIDElementGetLogicalMin(v7);
      PhysicalMax = IOHIDElementGetPhysicalMax(v7);
      PhysicalMin = IOHIDElementGetPhysicalMin(v7);
      UnitExponent = IOHIDElementGetUnitExponent(v7);
      if (PhysicalMax == PhysicalMin)
      {
        inited = *(this + 7);
        if (!inited)
        {
          inited = _COREBRIGHTNESS_LOG_DEFAULT;
          if (!_COREBRIGHTNESS_LOG_DEFAULT)
          {
            inited = init_default_corebrightness_log();
          }
        }

        result = os_log_type_enabled(inited, OS_LOG_TYPE_ERROR);
        if (result)
        {
          sub_C438();
          return 0;
        }
      }

      else
      {
        ScaledValueWithExponent = AppleUSBALS::getScaledValueWithExponent(this, (LogicalMax - LogicalMin) / (PhysicalMax - PhysicalMin), UnitExponent);
        *a3 = (IOHIDValueGetIntegerValue(value) - LogicalMin) / ScaledValueWithExponent + PhysicalMin;
        v18 = *(this + 7);
        if (!v18)
        {
          v18 = _COREBRIGHTNESS_LOG_DEFAULT;
          if (!_COREBRIGHTNESS_LOG_DEFAULT)
          {
            v18 = init_default_corebrightness_log();
          }
        }

        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
        {
          IntegerValue = IOHIDValueGetIntegerValue(value);
          v20 = *a3;
          v21 = 134219520;
          v22 = LogicalMax;
          v23 = 2048;
          v24 = LogicalMin;
          v25 = 2048;
          v26 = PhysicalMax;
          v27 = 2048;
          v28 = PhysicalMin;
          v29 = 2048;
          v30 = ScaledValueWithExponent;
          v31 = 2048;
          v32 = IntegerValue - LogicalMin;
          v33 = 2048;
          v34 = v20;
          _os_log_debug_impl(&dword_0, v18, OS_LOG_TYPE_DEBUG, "lMax=%lu lMin=%lu pMax=%lu pMin=%lu -> factor=%f | value=%lu -> scaled=%f", &v21, 0x48u);
        }

        return 1;
      }
    }

    else
    {
      v16 = *(this + 7);
      if (!v16)
      {
        v16 = _COREBRIGHTNESS_LOG_DEFAULT;
        if (!_COREBRIGHTNESS_LOG_DEFAULT)
        {
          v16 = init_default_corebrightness_log();
        }
      }

      result = os_log_type_enabled(v16, OS_LOG_TYPE_ERROR);
      if (result)
      {
        sub_C46C();
        return 0;
      }
    }
  }

  else
  {
    v15 = *(this + 7);
    if (!v15)
    {
      v15 = _COREBRIGHTNESS_LOG_DEFAULT;
      if (!_COREBRIGHTNESS_LOG_DEFAULT)
      {
        v15 = init_default_corebrightness_log();
      }
    }

    result = os_log_type_enabled(v15, OS_LOG_TYPE_ERROR);
    if (result)
    {
      sub_C4A0();
      return 0;
    }
  }

  return result;
}

void AppleUSBALS::dispatchAmbientLightSensorEvent(AppleUSBALS *this, double a2, double a3, double a4, double a5, double a6)
{
  AppleUSBALS::updateCurrentAmbient(this, a2);
  AppleUSBALS::updateCurrentColourInfo(this, a3, a4, a5, a6);
  if (*(this + 14))
  {
    AmbientLightSensorEvent = IOHIDEventCreateAmbientLightSensorEvent();
    if (AmbientLightSensorEvent)
    {
      v12 = AmbientLightSensorEvent;
      IOHIDEventSetDoubleValue();
      if (*(this + 82) == 1)
      {
        IOHIDEventSetIntegerValue();
        IOHIDEventSetDoubleValue();
        IOHIDEventSetDoubleValue();
        IOHIDEventSetDoubleValue();
        IOHIDEventSetDoubleValue();
      }

      (*(this + 14))(*(this + 15), *(this + 16), this, v12, 0);

      CFRelease(v12);
    }
  }
}

void handleExtHIDDeviceRemovalCallback(void *a1, int a2, void *a3)
{
  inited = a1[7];
  if (!inited)
  {
    inited = _COREBRIGHTNESS_LOG_DEFAULT;
    if (!_COREBRIGHTNESS_LOG_DEFAULT)
    {
      inited = init_default_corebrightness_log();
    }
  }

  if (os_log_type_enabled(inited, OS_LOG_TYPE_DEBUG))
  {
    sub_C4D4();
  }
}

uint64_t IOHIDPlugInFactory(uint64_t a1, const void *a2)
{
  v3 = CFUUIDGetConstantUUIDWithBytes(0, 5u, 0x16u, 0xB5u, 0x63u, 0xB1u, 0x5Bu, 0x11u, 0xDAu, 0x96u, 0xEBu, 0, 0x14u, 0x51u, 0x97u, 0x58u, 0xEFu);
  v4 = CFEqual(a2, v3);
  if (v4)
  {

    AppleUSBALS::alloc(v4);
  }

  return 0;
}

void AppleUSBALS::AppleUSBALS(AppleUSBALS *this)
{
  HidPluginIUnknown::HidPluginIUnknown(this, &AppleUSBALS::sIOCFPlugInInterfaceV1);
  *v2 = off_14560;
  *(v2 + 48) = 0;
  *(v2 + 84) = 0;
  *(v2 + 88) = 0;
  *(v2 + 96) = 0;
  *(v2 + 224) = 0;
  *(v2 + 64) = 0;
  *(v2 + 72) = 0;
  *(v2 + 79) = 0;
  *(v2 + 104) = 0u;
  *(v2 + 120) = 0u;
  *(v2 + 232) = 1;
  *(v2 + 248) = 16843008;
  *(v2 + 284) = 0;
  *(v2 + 252) = 0u;
  *(v2 + 268) = 0u;
  *(v2 + 288) = 1;
  *(v2 + 304) = 0;
  *(v2 + 312) = 0;
  *(v2 + 296) = 0;
  *(v2 + 320) = 1;
  *(v2 + 324) = -1;
  *(v2 + 328) = 0x4072C00000000000;
  *(v2 + 400) = 0;
  *(v2 + 408) = 0;
  *(v2 + 376) = 0;
  *(v2 + 384) = 0;
  *(v2 + 368) = 0;
  *(v2 + 392) = 0;
  *(v2 + 416) = 0u;
  *(v2 + 432) = 0u;
  *(v2 + 32) = &AppleUSBALS::sIOHIDServiceInterface;
  *(v2 + 40) = v2;
  *(v2 + 136) = 0;
  *(v2 + 144) = 0u;
  *(v2 + 160) = 0u;
  *(v2 + 176) = 0u;
  *(v2 + 192) = 0u;
  *(v2 + 208) = 0u;
  inited = os_log_create("com.apple.CoreBrightness.AppleUSBALS", "default");
  *(this + 7) = inited;
  if (inited)
  {
    goto LABEL_2;
  }

  v4 = _COREBRIGHTNESS_LOG_DEFAULT;
  if (!_COREBRIGHTNESS_LOG_DEFAULT)
  {
    inited = init_default_corebrightness_log();
LABEL_2:
    v4 = inited;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_C4D4();
  }

  notify_register_check("com.apple.DFRBrightness.displayStateUpdate", this + 81);
  *(this + 30) = CFDictionaryCreateMutable(kCFAllocatorDefault, 10, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  AppleUSBALS::setDefaultProperties(this);
}

void sub_24E4(_Unwind_Exception *a1)
{
  std::thread::~thread(v1 + 47);
  HidPluginIUnknown::~HidPluginIUnknown(v1);
  _Unwind_Resume(a1);
}

void AppleUSBALS::setDefaultProperties(NSObject **this)
{
  v2 = IOHIDPreferencesCopyMultiple();
  if (v2)
  {
    v3 = v2;
    AppleUSBALS::setKeyboardPreferences(this, v2, 0);
    AppleUSBALS::setDisplayPreferences(this, v3, 0);

    CFRelease(v3);
  }
}

void AppleUSBALS::~AppleUSBALS(AppleUSBALS *this)
{
  *this = off_14560;
  inited = *(this + 7);
  if (!inited)
  {
    inited = _COREBRIGHTNESS_LOG_DEFAULT;
    if (!_COREBRIGHTNESS_LOG_DEFAULT)
    {
      inited = init_default_corebrightness_log();
    }
  }

  if (os_log_type_enabled(inited, OS_LOG_TYPE_DEBUG))
  {
    sub_C4D4();
  }

  if (notify_is_valid_token(*(this + 81)))
  {
    notify_cancel(*(this + 81));
    *(this + 81) = -1;
  }

  v3 = *(this + 12);
  if (v3)
  {
    IOObjectRelease(v3);
    *(this + 12) = 0;
  }

  v4 = *(this + 7);
  if (v4)
  {
    os_release(v4);
    *(this + 7) = 0;
  }

  v5 = *(this + 30);
  if (v5)
  {
    CFRelease(v5);
    *(this + 30) = 0;
  }

  v6 = *(this + 48);
  if (v6)
  {
    dispatch_release(v6);
    *(this + 48) = 0;
  }

  std::thread::~thread(this + 47);
  HidPluginIUnknown::~HidPluginIUnknown(this);
}

{
  AppleUSBALS::~AppleUSBALS(this);

  operator delete();
}

uint64_t AppleUSBALS::copyEvent(AppleUSBALS *this, int a2)
{
  v2 = 0;
  if (a2 != 12 || (*(this + 84) & 1) == 0)
  {
    return v2;
  }

  if (!AppleUSBALS::updateCurrentAmbientLightValues(this))
  {
    inited = *(this + 7);
    if (!inited)
    {
      inited = _COREBRIGHTNESS_LOG_DEFAULT;
      if (!_COREBRIGHTNESS_LOG_DEFAULT)
      {
        inited = init_default_corebrightness_log();
      }
    }

    if (os_log_type_enabled(inited, OS_LOG_TYPE_ERROR))
    {
      sub_C510();
    }

    return 0;
  }

  mach_absolute_time();
  v4 = *(this + 41);
  AmbientLightSensorEvent = IOHIDEventCreateAmbientLightSensorEvent();
  if (!AmbientLightSensorEvent)
  {
    v12 = *(this + 7);
    if (!v12)
    {
      v12 = _COREBRIGHTNESS_LOG_DEFAULT;
      if (!_COREBRIGHTNESS_LOG_DEFAULT)
      {
        v12 = init_default_corebrightness_log();
      }
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_C544();
    }

    return 0;
  }

  v2 = AmbientLightSensorEvent;
  v6 = *(this + 41);
  IOHIDEventSetDoubleValue();
  if (*(this + 82) == 1)
  {
    IOHIDEventSetIntegerValue();
    v7 = *(this + 42);
    IOHIDEventSetDoubleValue();
    v8 = *(this + 43);
    IOHIDEventSetDoubleValue();
    v9 = *(this + 44);
    IOHIDEventSetDoubleValue();
    v10 = *(this + 45);
    IOHIDEventSetDoubleValue();
  }

  return v2;
}

uint64_t AppleUSBALS::queryInterface(AppleUSBALS *this, CFUUIDBytes a2, void **a3)
{
  v4 = *&a2.byte8;
  v5 = *&a2.byte0;
  inited = *(this + 7);
  if (!inited)
  {
    inited = _COREBRIGHTNESS_LOG_DEFAULT;
    if (!_COREBRIGHTNESS_LOG_DEFAULT)
    {
      inited = init_default_corebrightness_log();
    }
  }

  if (os_log_type_enabled(inited, OS_LOG_TYPE_DEBUG))
  {
    sub_C4D4();
  }

  *&v16.byte0 = v5;
  *&v16.byte8 = v4;
  v8 = CFUUIDCreateFromUUIDBytes(0, v16);
  v9 = CFUUIDGetConstantUUIDWithBytes(kCFAllocatorSystemDefault, 0, 0, 0, 0, 0, 0, 0, 0, 0xC0u, 0, 0, 0, 0, 0, 0, 0x46u);
  if (CFEqual(v8, v9) || (v10 = CFUUIDGetConstantUUIDWithBytes(0, 0xC2u, 0x44u, 0xE8u, 0x58u, 0x10u, 0x9Cu, 0x11u, 0xD4u, 0x91u, 0xD4u, 0, 0x50u, 0xE4u, 0xC6u, 0x42u, 0x6Fu), CFEqual(v8, v10)))
  {
    v11 = this + 16;
    v12 = *this;
LABEL_9:
    *a3 = v11;
    (*(v12 + 24))(this);
    goto LABEL_10;
  }

  v15 = CFUUIDGetConstantUUIDWithBytes(kCFAllocatorSystemDefault, 0x6Fu, 0xE2u, 0x2Au, 0xBFu, 0x68u, 0xB9u, 0x11u, 0xDBu, 0xA7u, 0x1Fu, 0, 0x16u, 0xCBu, 0xC1u, 0x10u, 0xF7u);
  if (CFEqual(v8, v15))
  {
    v11 = this + 32;
    v12 = *this;
    goto LABEL_9;
  }

  *a3 = 0;
LABEL_10:
  if (*a3)
  {
    v13 = 0;
  }

  else
  {
    v13 = 2147483652;
  }

  CFRelease(v8);
  return v13;
}

uint64_t AppleUSBALS::probe(AppleUSBALS *this, const __CFDictionary *a2, io_registry_entry_t entry, int *a4)
{
  if (entry)
  {
    v5 = IORegistryEntrySearchCFProperty(entry, "IOService", @"VersionNumber", kCFAllocatorDefault, 3u);
    if (v5)
    {
      v6 = v5;
      TypeID = CFNumberGetTypeID();
      if (TypeID == CFGetTypeID(v6) && CFNumberGetValue(v6, kCFNumberIntType, this + 88))
      {
        inited = *(this + 7);
        if (!inited)
        {
          inited = _COREBRIGHTNESS_LOG_DEFAULT;
          if (!_COREBRIGHTNESS_LOG_DEFAULT)
          {
            inited = init_default_corebrightness_log();
          }
        }

        if (os_log_type_enabled(inited, OS_LOG_TYPE_DEFAULT))
        {
          v9 = *(this + 22);
          v14[0] = 67109120;
          v14[1] = v9;
          _os_log_impl(&dword_0, inited, OS_LOG_TYPE_DEFAULT, "device version: 0x%X", v14, 8u);
        }

        CFRelease(v6);
        return 0;
      }

      CFRelease(v6);
    }

    else
    {
      v11 = *(this + 7);
      if (!v11)
      {
        v11 = _COREBRIGHTNESS_LOG_DEFAULT;
        if (!_COREBRIGHTNESS_LOG_DEFAULT)
        {
          v11 = init_default_corebrightness_log();
        }
      }

      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_C578();
      }
    }
  }

  v12 = *(this + 7);
  if (!v12)
  {
    v12 = _COREBRIGHTNESS_LOG_DEFAULT;
    if (!_COREBRIGHTNESS_LOG_DEFAULT)
    {
      v12 = init_default_corebrightness_log();
    }
  }

  v10 = 3758097090;
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    sub_C5AC();
  }

  return v10;
}

uint64_t AppleUSBALS::start(AppleUSBALS *this, const __CFDictionary *a2, io_object_t object)
{
  if (!object)
  {
    return 3758096385;
  }

  *(this + 12) = object;
  IOObjectRetain(object);
  entryID = 0;
  if (!IORegistryEntryGetRegistryEntryID(object, &entryID))
  {
    v5 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"0x%llX", entryID);
    if (v5)
    {
      v6 = v5;
      v7 = *(this + 7);
      if (v7)
      {
        os_release(v7);
      }

      CStringPtr = CFStringGetCStringPtr(v6, 0x600u);
      if (!CStringPtr)
      {
        if (CFStringGetCString(v6, buffer, 64, 0x600u))
        {
          CStringPtr = buffer;
        }

        else
        {
          CStringPtr = 0;
        }
      }

      *(this + 7) = os_log_create("com.apple.CoreBrightness.AppleUSBALS", CStringPtr);
      CFRelease(v6);
    }
  }

  inited = *(this + 7);
  if (!inited)
  {
    inited = _COREBRIGHTNESS_LOG_DEFAULT;
    if (!_COREBRIGHTNESS_LOG_DEFAULT)
    {
      inited = init_default_corebrightness_log();
    }
  }

  if (os_log_type_enabled(inited, OS_LOG_TYPE_DEFAULT))
  {
    *buffer = 67109376;
    *&buffer[4] = object;
    *&buffer[8] = 2048;
    *&buffer[10] = entryID;
    _os_log_impl(&dword_0, inited, OS_LOG_TYPE_DEFAULT, "service=0x%X 0x%llX", buffer, 0x12u);
  }

  v10 = IORegistryEntrySearchCFProperty(object, "IOService", @"DeviceUsagePairs", kCFAllocatorDefault, 2u);
  if (v10)
  {
    v11 = v10;
    CFDictionarySetValue(*(this + 30), @"DeviceUsagePairs", v10);
    CFRelease(v11);
  }

  v12 = IORegistryEntrySearchCFProperty(object, "IOService", @"VendorID", kCFAllocatorDefault, 2u);
  if (v12)
  {
    v13 = v12;
    CFDictionarySetValue(*(this + 30), @"VendorID", v12);
    TypeID = CFNumberGetTypeID();
    if (TypeID == CFGetTypeID(v13))
    {
      CFNumberGetValue(v13, kCFNumberIntType, this + 96);
    }

    CFRelease(v13);
  }

  v15 = IORegistryEntrySearchCFProperty(object, "IOService", @"ProductID", kCFAllocatorDefault, 2u);
  if (v15)
  {
    v16 = v15;
    CFDictionarySetValue(*(this + 30), @"ProductID", v15);
    v17 = CFNumberGetTypeID();
    if (v17 == CFGetTypeID(v16))
    {
      CFNumberGetValue(v16, kCFNumberIntType, this + 92);
    }

    CFRelease(v16);
  }

  v18 = IORegistryEntrySearchCFProperty(object, "IOService", @"VersionNumber", kCFAllocatorDefault, 2u);
  if (v18)
  {
    v19 = v18;
    CFDictionarySetValue(*(this + 30), @"VersionNumber", v18);
    v20 = CFNumberGetTypeID();
    if (v20 == CFGetTypeID(v19))
    {
      CFNumberGetValue(v19, kCFNumberIntType, this + 88);
    }

    CFRelease(v19);
  }

  v21 = IORegistryEntrySearchCFProperty(object, "IOService", @"PrimaryUsagePage", kCFAllocatorDefault, 2u);
  if (v21)
  {
    v22 = v21;
    CFDictionarySetValue(*(this + 30), @"PrimaryUsagePage", v21);
    CFRelease(v22);
  }

  v23 = IORegistryEntrySearchCFProperty(object, "IOService", @"PrimaryUsage", kCFAllocatorDefault, 2u);
  if (v23)
  {
    v24 = v23;
    CFDictionarySetValue(*(this + 30), @"PrimaryUsage", v23);
    CFRelease(v24);
  }

  v25 = IORegistryEntrySearchCFProperty(object, "IOService", @"kUSBContainerID", kCFAllocatorDefault, 3u);
  if (v25)
  {
    v26 = v25;
    v27 = *(this + 7);
    if (!v27)
    {
      v27 = _COREBRIGHTNESS_LOG_DEFAULT;
      if (!_COREBRIGHTNESS_LOG_DEFAULT)
      {
        v27 = init_default_corebrightness_log();
      }
    }

    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      *buffer = 138543362;
      *&buffer[4] = v26;
      _os_log_impl(&dword_0, v27, OS_LOG_TYPE_DEFAULT, "Found ContainerID: %{public}@", buffer, 0xCu);
    }

    CFDictionarySetValue(*(this + 30), @"kUSBContainerID", v26);
    CFRelease(v26);
  }

  valuePtr = 7;
  v28 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, &valuePtr);
  if (v28)
  {
    v29 = v28;
    CFDictionarySetValue(*(this + 30), @"als-lgp-version", v28);
    CFRelease(v29);
  }

  v139 = 2;
  v30 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, &v139);
  if (v30)
  {
    v31 = v30;
    CFDictionarySetValue(*(this + 30), @"ALSVersionKey", v30);
    CFRelease(v31);
  }

  iterator = 0;
  v32 = IORegistryEntryCreateIterator(object, "IOService", 3u, &iterator);
  v33 = 0;
  if (!v32 && iterator)
  {
    while (1)
    {
      v34 = IOIteratorNext(iterator);
      v33 = v34;
      if (!v34)
      {
        break;
      }

      if (IOObjectConformsTo(v34, "IOHIDDevice"))
      {
        v146 = 0;
        IORegistryEntryGetRegistryEntryID(v33, &v146);
        v35 = IOObjectCopyClass(v33);
        v36 = *(this + 7);
        if (!v36)
        {
          v36 = _COREBRIGHTNESS_LOG_DEFAULT;
          if (!_COREBRIGHTNESS_LOG_DEFAULT)
          {
            v36 = init_default_corebrightness_log();
          }
        }

        if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
        {
          *buffer = 138543874;
          *&buffer[4] = v35;
          *&buffer[12] = 1024;
          *&buffer[14] = v33;
          *&buffer[18] = 2048;
          *&buffer[20] = v146;
          _os_log_impl(&dword_0, v36, OS_LOG_TYPE_DEFAULT, "found %{public}@ (%u) id=%llu", buffer, 0x1Cu);
        }

        CFRelease(v35);
        IOObjectRetain(v33);
        break;
      }
    }

    IOObjectRelease(iterator);
  }

  v37 = *(this + 7);
  if (!v37)
  {
    v37 = _COREBRIGHTNESS_LOG_DEFAULT;
    if (!_COREBRIGHTNESS_LOG_DEFAULT)
    {
      v37 = init_default_corebrightness_log();
    }
  }

  if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
  {
    *buffer = 67109120;
    *&buffer[4] = v33;
    _os_log_impl(&dword_0, v37, OS_LOG_TYPE_DEFAULT, "hidDeviceService = %u", buffer, 8u);
  }

  if (v33)
  {
    *(this + 34) = v33;
    v38 = IOHIDDeviceCreate(kCFAllocatorDefault, v33);
    *(this + 18) = v38;
    if (v38)
    {
      v32 = IOHIDDeviceOpen(v38, 0);
      if (v32 || (v41 = IOHIDDeviceCopyMatchingElements(*(this + 18), 0, 0), (*(this + 28) = v41) == 0))
      {
        v39 = *(this + 7);
        if (!v39)
        {
          v39 = _COREBRIGHTNESS_LOG_DEFAULT;
          if (!_COREBRIGHTNESS_LOG_DEFAULT)
          {
            v39 = init_default_corebrightness_log();
          }
        }

        if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
        {
          sub_C738();
        }
      }

      else
      {
        if (AppleUSBALS::getElement(this, 32, 1236, kIOHIDElementTypeInput_Misc) && AppleUSBALS::getElement(this, 32, 1237, kIOHIDElementTypeInput_Misc))
        {
          v42 = *(this + 7);
          if (!v42)
          {
            v42 = _COREBRIGHTNESS_LOG_DEFAULT;
            if (!_COREBRIGHTNESS_LOG_DEFAULT)
            {
              v42 = init_default_corebrightness_log();
            }
          }

          if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
          {
            *buffer = 0;
            _os_log_impl(&dword_0, v42, OS_LOG_TYPE_DEFAULT, "colour supported", buffer, 2u);
          }

          *(this + 82) = 1;
          CFDictionaryAddValue(*(this + 30), @"ColorSupport", kCFBooleanTrue);
        }

        v137 = 0;
        if (AppleUSBALS::getConnectionType(this, &v137))
        {
          v43 = v137;
          v44 = v137 == 2096;
          *(this + 83) = v137 == 2096;
          v45 = &kCFBooleanTrue;
          if (!v44)
          {
            v45 = &kCFBooleanFalse;
          }

          CFDictionaryAddValue(*(this + 30), @"Built-In", *v45);
          v46 = *(this + 7);
          if (!v46)
          {
            v46 = _COREBRIGHTNESS_LOG_DEFAULT;
            if (!_COREBRIGHTNESS_LOG_DEFAULT)
            {
              v46 = init_default_corebrightness_log();
            }
          }

          if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
          {
            v47 = "external";
            if (*(this + 83))
            {
              v47 = "built-in";
            }

            *buffer = 134218242;
            *&buffer[4] = v43;
            *&buffer[12] = 2080;
            *&buffer[14] = v47;
            _os_log_impl(&dword_0, v46, OS_LOG_TYPE_DEFAULT, "retrieved the connection type (%lu) - %s", buffer, 0x16u);
          }
        }

        else
        {
          v48 = *(this + 7);
          if (!v48)
          {
            v48 = _COREBRIGHTNESS_LOG_DEFAULT;
            if (!_COREBRIGHTNESS_LOG_DEFAULT)
            {
              v48 = init_default_corebrightness_log();
            }
          }

          if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
          {
            *buffer = 0;
            _os_log_impl(&dword_0, v48, OS_LOG_TYPE_DEFAULT, "unable to retrieve the connection type - defaulting to external", buffer, 2u);
          }

          *(this + 83) = 0;
          CFDictionaryAddValue(*(this + 30), @"Built-In", kCFBooleanFalse);
        }

        if (*(this + 83) == 1)
        {
          *buffer = 7;
          v49 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, buffer);
          if (v49)
          {
            v50 = v49;
            if (IORegistryEntrySetCFProperty(*(this + 12), @"als-lgp-version", v49))
            {
              v51 = *(this + 7);
              if (!v51)
              {
                v51 = _COREBRIGHTNESS_LOG_DEFAULT;
                if (!_COREBRIGHTNESS_LOG_DEFAULT)
                {
                  v51 = init_default_corebrightness_log();
                }
              }

              if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
              {
                sub_C62C();
              }
            }

            CFRelease(v50);
          }

          else
          {
            v52 = *(this + 7);
            if (!v52)
            {
              v52 = _COREBRIGHTNESS_LOG_DEFAULT;
              if (!_COREBRIGHTNESS_LOG_DEFAULT)
              {
                v52 = init_default_corebrightness_log();
              }
            }

            if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
            {
              sub_C660();
            }
          }
        }

        Location = AppleUSBALS::getLocation(this);
        v54 = *(this + 7);
        if (Location)
        {
          if (!v54)
          {
            v54 = _COREBRIGHTNESS_LOG_DEFAULT;
            if (!_COREBRIGHTNESS_LOG_DEFAULT)
            {
              v54 = init_default_corebrightness_log();
            }
          }

          if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
          {
            v55 = *(this + 13);
            *buffer = 134217984;
            *&buffer[4] = v55;
            _os_log_impl(&dword_0, v54, OS_LOG_TYPE_DEFAULT, "location retrieved successfully %lu", buffer, 0xCu);
          }

          v56 = CFNumberCreate(kCFAllocatorDefault, kCFNumberCFIndexType, this + 104);
          if (v56)
          {
            v57 = v56;
            CFDictionaryAddValue(*(this + 30), @"SensorLocation", v56);
            CFRelease(v57);
          }
        }

        else
        {
          if (!v54)
          {
            v54 = _COREBRIGHTNESS_LOG_DEFAULT;
            if (!_COREBRIGHTNESS_LOG_DEFAULT)
            {
              v54 = init_default_corebrightness_log();
            }
          }

          if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
          {
            *buffer = 0;
            _os_log_impl(&dword_0, v54, OS_LOG_TYPE_DEFAULT, "unable to retrieve location - unknown", buffer, 2u);
          }
        }

        *(this + 25) = AppleUSBALS::getElement(this, 65298, 96, kIOHIDElementTypeFeature);
        *(this + 26) = AppleUSBALS::getElement(this, 65298, 97, kIOHIDElementTypeFeature);
        *(this + 27) = AppleUSBALS::getElement(this, 65298, 98, kIOHIDElementTypeFeature);
        if (*(this + 25) && *(this + 26))
        {
          v58 = *(this + 7);
          if (!v58)
          {
            v58 = _COREBRIGHTNESS_LOG_DEFAULT;
            if (!_COREBRIGHTNESS_LOG_DEFAULT)
            {
              v58 = init_default_corebrightness_log();
            }
          }

          if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
          {
            *buffer = 0;
            _os_log_impl(&dword_0, v58, OS_LOG_TYPE_DEFAULT, "WP supported", buffer, 2u);
          }

          *(this + 81) = 1;
          CFDictionaryAddValue(*(this + 30), @"DFRWhitepointSupport", kCFBooleanTrue);
        }

        Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 3, &kCFTypeArrayCallBacks);
        if (Mutable)
        {
          v60 = Mutable;
          *buffer = *off_145D8;
          LODWORD(v132) = 32;
          LODWORD(v131) = 1233;
          LODWORD(v130) = 32;
          v146 = 0;
          cf = 0;
          v146 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, &v131);
          v61 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, &v130);
          cf = v61;
          v62 = v146;
          if (v146 && v61)
          {
            v63 = CFDictionaryCreate(kCFAllocatorDefault, buffer, &v146, 2, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
            if (v63)
            {
              v64 = v63;
              CFArrayAppendValue(v60, v63);
              CFRelease(v64);
            }

            v62 = v146;
          }

          if (v62)
          {
            CFRelease(v62);
          }

          if (cf)
          {
            CFRelease(cf);
          }

          if (*(this + 82) == 1)
          {
            v136 = 1236;
            *&values = 0.0;
            v145 = 0;
            *&values = COERCE_DOUBLE(CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, &v136));
            v65 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, &v132);
            v145 = v65;
            v66 = values;
            if (*&values != 0.0 && v65)
            {
              v67 = CFDictionaryCreate(kCFAllocatorDefault, buffer, &values, 2, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
              if (v67)
              {
                v68 = v67;
                CFArrayAppendValue(v60, v67);
                CFRelease(v68);
              }

              v66 = values;
            }

            if (v66)
            {
              CFRelease(v66);
            }

            if (v145)
            {
              CFRelease(v145);
            }

            v135 = 1237;
            v142 = 0;
            v143 = 0;
            v142 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, &v135);
            v69 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, &v132);
            v143 = v69;
            v70 = v142;
            if (v142 && v69)
            {
              v71 = CFDictionaryCreate(kCFAllocatorDefault, buffer, &v142, 2, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
              if (v71)
              {
                v72 = v71;
                CFArrayAppendValue(v60, v71);
                CFRelease(v72);
              }

              v70 = v142;
            }

            if (v70)
            {
              CFRelease(v70);
            }

            if (v143)
            {
              CFRelease(v143);
            }
          }

          v135 = 49;
          v136 = 65298;
          *&values = 0.0;
          v145 = 0;
          *&values = COERCE_DOUBLE(CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, &v135));
          v73 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, &v136);
          v145 = v73;
          v74 = values;
          if (*&values != 0.0 && v73)
          {
            v75 = CFDictionaryCreate(kCFAllocatorDefault, buffer, &values, 2, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
            if (v75)
            {
              v76 = v75;
              CFArrayAppendValue(v60, v75);
              CFRelease(v76);
            }

            v74 = values;
          }

          if (v74)
          {
            CFRelease(v74);
          }

          if (v145)
          {
            CFRelease(v145);
          }

          v133 = 81;
          v134 = 65298;
          v142 = 0;
          v143 = 0;
          v142 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, &v133);
          v77 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, &v134);
          v143 = v77;
          v78 = v142;
          if (v142 && v77)
          {
            v79 = CFDictionaryCreate(kCFAllocatorDefault, buffer, &v142, 2, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
            if (v79)
            {
              v80 = v79;
              CFArrayAppendValue(v60, v79);
              CFRelease(v80);
            }

            v78 = v142;
          }

          if (v78)
          {
            CFRelease(v78);
          }

          if (v143)
          {
            CFRelease(v143);
          }

          IOHIDDeviceSetInputValueMatchingMultiple(*(this + 18), v60);
          CFRelease(v60);
        }

        IOHIDDeviceRegisterInputValueCallback(*(this + 18), handleExtHIDDeviceEventCallback, this);
        IOHIDDeviceRegisterRemovalCallback(*(this + 18), handleExtHIDDeviceRemovalCallback, this);
        v81 = *(this + 28);
        if (v81 && CFArrayGetCount(v81) >= 1)
        {
          v82 = 0;
          v83 = 0;
          v126 = 0;
          v128 = 0;
          v84 = 0;
          v85 = 0;
          v86 = 0;
          do
          {
            ValueAtIndex = CFArrayGetValueAtIndex(*(this + 28), v82);
            v88 = CFGetTypeID(ValueAtIndex);
            if (v88 == IOHIDElementGetTypeID())
            {
              if (IOHIDElementGetUsage(ValueAtIndex) == 49 && IOHIDElementGetUsagePage(ValueAtIndex) == 65298 && IOHIDElementGetType(ValueAtIndex) == kIOHIDElementTypeFeature && !*(this + 23))
              {
                *(this + 23) = ValueAtIndex;
                v89 = *(this + 7);
                if (!v89)
                {
                  v89 = _COREBRIGHTNESS_LOG_DEFAULT;
                  if (!_COREBRIGHTNESS_LOG_DEFAULT)
                  {
                    v89 = init_default_corebrightness_log();
                  }
                }

                if (os_log_type_enabled(v89, OS_LOG_TYPE_DEFAULT))
                {
                  v90 = *(this + 23);
                  UsagePage = IOHIDElementGetUsagePage(v90);
                  Usage = IOHIDElementGetUsage(*(this + 23));
                  v125 = v83;
                  v91 = v85;
                  v92 = v86;
                  v93 = v84;
                  ReportID = IOHIDElementGetReportID(*(this + 23));
                  Cookie = IOHIDElementGetCookie(*(this + 23));
                  *buffer = 134219008;
                  *&buffer[4] = v90;
                  *&buffer[12] = 1024;
                  *&buffer[14] = UsagePage;
                  *&buffer[18] = 1024;
                  *&buffer[20] = Usage;
                  *&buffer[24] = 1024;
                  *&buffer[26] = ReportID;
                  v84 = v93;
                  v86 = v92;
                  v85 = v91;
                  v83 = v125;
                  *&buffer[30] = 1024;
                  v149[0] = Cookie;
                  _os_log_impl(&dword_0, v89, OS_LOG_TYPE_DEFAULT, "_hidDFRDisplay.displayStateElement (0x%p): page=0x%X usage=0x%X ID=0x%X cookie=%u", buffer, 0x24u);
                }
              }

              else if (IOHIDElementGetUsage(ValueAtIndex) == 50 && IOHIDElementGetUsagePage(ValueAtIndex) == 65298 && IOHIDElementGetType(ValueAtIndex) == kIOHIDElementTypeFeature && !*(this + 24))
              {
                *(this + 24) = ValueAtIndex;
              }

              else if (IOHIDElementGetUsage(ValueAtIndex) == 33 && IOHIDElementGetUsagePage(ValueAtIndex) == 65298 && IOHIDElementGetType(ValueAtIndex) == kIOHIDElementTypeFeature && !*(this + 19))
              {
                *(this + 19) = ValueAtIndex;
              }

              else if (IOHIDElementGetUsage(ValueAtIndex) == 32 && IOHIDElementGetUsagePage(ValueAtIndex) == 65298 && IOHIDElementGetType(ValueAtIndex) == kIOHIDElementTypeFeature && !*(this + 21))
              {
                *(this + 21) = ValueAtIndex;
              }

              else if (IOHIDElementGetUsage(ValueAtIndex) == 34 && IOHIDElementGetUsagePage(ValueAtIndex) == 65298 && IOHIDElementGetType(ValueAtIndex) == kIOHIDElementTypeFeature && !*(this + 20))
              {
                *(this + 20) = ValueAtIndex;
              }

              else if (IOHIDElementGetUsage(ValueAtIndex) == 35 && IOHIDElementGetUsagePage(ValueAtIndex) == 65298 && IOHIDElementGetType(ValueAtIndex) == kIOHIDElementTypeFeature && !*(this + 22))
              {
                *(this + 22) = ValueAtIndex;
              }

              else if (IOHIDElementGetUsage(ValueAtIndex) == 1233 && IOHIDElementGetUsagePage(ValueAtIndex) == 32 && IOHIDElementGetType(ValueAtIndex) == kIOHIDElementTypeInput_Misc && !v83)
              {
                *(this + 84) = 1;
                v83 = ValueAtIndex;
              }

              else if (IOHIDElementGetUsage(ValueAtIndex) == 64 && IOHIDElementGetUsagePage(ValueAtIndex) == 65298 && IOHIDElementGetType(ValueAtIndex) == kIOHIDElementTypeFeature && !v128)
              {
                v128 = ValueAtIndex;
              }

              else if (IOHIDElementGetUsage(ValueAtIndex) == 1 && IOHIDElementGetUsagePage(ValueAtIndex) == 65298 && IOHIDElementGetType(ValueAtIndex) == kIOHIDElementTypeCollection && !v84)
              {
                v84 = ValueAtIndex;
              }

              else if (IOHIDElementGetUsage(ValueAtIndex) == 1236 && IOHIDElementGetUsagePage(ValueAtIndex) == 32 && IOHIDElementGetType(ValueAtIndex) == kIOHIDElementTypeInput_Misc && !v85)
              {
                v85 = ValueAtIndex;
              }

              else if (IOHIDElementGetUsage(ValueAtIndex) == 1237 && IOHIDElementGetUsagePage(ValueAtIndex) == 32 && IOHIDElementGetType(ValueAtIndex) == kIOHIDElementTypeInput_Misc && !v86)
              {
                v86 = ValueAtIndex;
              }

              else if (IOHIDElementGetUsage(ValueAtIndex) == 1234 && IOHIDElementGetUsagePage(ValueAtIndex) == 32 && IOHIDElementGetType(ValueAtIndex) == kIOHIDElementTypeInput_Misc && !v126)
              {
                v126 = ValueAtIndex;
              }
            }

            ++v82;
          }

          while (CFArrayGetCount(*(this + 28)) > v82);
        }

        else
        {
          v126 = 0;
          v128 = 0;
          v86 = 0;
          v85 = 0;
          v84 = 0;
          v83 = 0;
        }

        v96 = *(this + 7);
        if (!v96)
        {
          v96 = _COREBRIGHTNESS_LOG_DEFAULT;
          if (!_COREBRIGHTNESS_LOG_DEFAULT)
          {
            v96 = init_default_corebrightness_log();
          }
        }

        v97 = v86;
        if (os_log_type_enabled(v96, OS_LOG_TYPE_DEFAULT))
        {
          *buffer = 134218496;
          *&buffer[4] = v83;
          *&buffer[12] = 2048;
          *&buffer[14] = v128;
          *&buffer[22] = 2048;
          *&buffer[24] = v84;
          _os_log_impl(&dword_0, v96, OS_LOG_TYPE_DEFAULT, "illumunanceElement=%p protocolVersionElement=%p dfrSupportElement=%p", buffer, 0x20u);
        }

        if (v128)
        {
          v98 = v85;
          LogicalMax = IOHIDElementGetLogicalMax(v128);
          v100 = LogicalMax;
          if (LogicalMax <= 0)
          {
            *(this + 58) = LogicalMax;
          }

          v101 = *(this + 7);
          if (!v101)
          {
            v101 = _COREBRIGHTNESS_LOG_DEFAULT;
            if (!_COREBRIGHTNESS_LOG_DEFAULT)
            {
              v101 = init_default_corebrightness_log();
            }
          }

          if (os_log_type_enabled(v101, OS_LOG_TYPE_DEFAULT))
          {
            v102 = *(this + 58);
            *buffer = 67109376;
            *&buffer[4] = v100;
            *&buffer[8] = 1024;
            *&buffer[10] = v102;
            _os_log_impl(&dword_0, v101, OS_LOG_TYPE_DEFAULT, "protocol version max=%u used=%u", buffer, 0xEu);
          }

          v103 = *(this + 58);
          Element = AppleUSBALS::getElement(this, 65298, 64, kIOHIDElementTypeFeature);
          v105 = AppleUSBALS::setElementIntValue(this, Element, v103);
          v106 = *(this + 7);
          if (!v106)
          {
            v106 = _COREBRIGHTNESS_LOG_DEFAULT;
            if (!_COREBRIGHTNESS_LOG_DEFAULT)
            {
              v106 = init_default_corebrightness_log();
            }
          }

          v85 = v98;
          if (os_log_type_enabled(v106, OS_LOG_TYPE_DEFAULT))
          {
            v107 = "failed";
            if (!v105)
            {
              v107 = "success";
            }

            *buffer = 136315394;
            *&buffer[4] = v107;
            *&buffer[12] = 1024;
            *&buffer[14] = v105;
            _os_log_impl(&dword_0, v106, OS_LOG_TYPE_DEFAULT, "protocol version handshake: %s (0x%X)", buffer, 0x12u);
          }
        }

        if (v83)
        {
          v146 = 0;
          values = *(this + 41);
          ValueWithOptions = IOHIDDeviceGetValueWithOptions(*(this + 18), v83, &v146, 0x20000u);
          if (!ValueWithOptions && v146)
          {
            AppleUSBALS::retrieveScaledValue(this, v146, &values);
          }

          v109 = *(this + 7);
          if (!v109)
          {
            v109 = _COREBRIGHTNESS_LOG_DEFAULT;
            if (!_COREBRIGHTNESS_LOG_DEFAULT)
            {
              v109 = init_default_corebrightness_log();
            }
          }

          v110 = os_log_type_enabled(v109, OS_LOG_TYPE_DEFAULT);
          v111 = values;
          if (v110)
          {
            *buffer = 134218496;
            *&buffer[4] = v146;
            *&buffer[12] = 1024;
            *&buffer[14] = *&values;
            *&buffer[18] = 1024;
            *&buffer[20] = ValueWithOptions;
            _os_log_impl(&dword_0, v109, OS_LOG_TYPE_DEFAULT, "illuminance hid value = %p, initial lux = %u, result = 0x%X", buffer, 0x18u);
          }

          AppleUSBALS::updateCurrentAmbient(this, *&v111);
        }

        if (v85 && v97 && v126)
        {
          v146 = 0;
          *&values = 0.0;
          v142 = 0;
          if (IOHIDDeviceGetValue(*(this + 18), v85, &v146) || IOHIDDeviceGetValue(*(this + 18), v97, &values) || IOHIDDeviceGetValue(*(this + 18), v126, &v142))
          {
            v112 = *(this + 7);
            if (!v112)
            {
              v112 = _COREBRIGHTNESS_LOG_DEFAULT;
              if (!_COREBRIGHTNESS_LOG_DEFAULT)
              {
                v112 = init_default_corebrightness_log();
              }
            }

            if (os_log_type_enabled(v112, OS_LOG_TYPE_ERROR))
            {
              sub_C694();
            }
          }

          else
          {
            v131 = 0.0;
            v132 = 0.0;
            v130 = 0.0;
            if (AppleUSBALS::retrieveScaledValue(this, v146, &v132) && AppleUSBALS::retrieveScaledValue(this, values, &v131) && AppleUSBALS::retrieveScaledValue(this, v142, &v130))
            {
              v116 = 0.0;
              if (v132 == 0.0)
              {
                v117 = 0.0;
                v118 = 0.0;
              }

              else
              {
                v117 = 0.0;
                v118 = 0.0;
                if (v131 != 0.0)
                {
                  v117 = *(this + 41);
                  v116 = v132 / v131 * v117;
                  v118 = (1.0 - v132 - v131) / v131 * v117;
                }
              }

              v120 = v116;
              v127 = v117;
              v129 = v118;
              AppleUSBALS::updateCurrentColourInfo(this, v116, v117, v118, v130);
              v121 = *(this + 7);
              if (!v121)
              {
                v121 = _COREBRIGHTNESS_LOG_DEFAULT;
                if (!_COREBRIGHTNESS_LOG_DEFAULT)
                {
                  v121 = init_default_corebrightness_log();
                }
              }

              if (os_log_type_enabled(v121, OS_LOG_TYPE_DEFAULT))
              {
                v122 = *(this + 41);
                *buffer = 134218752;
                *&buffer[4] = v120;
                *&buffer[12] = 2048;
                *&buffer[14] = v127;
                *&buffer[22] = 2048;
                *&buffer[24] = v129;
                LOWORD(v149[0]) = 2048;
                *(v149 + 2) = v122;
                _os_log_impl(&dword_0, v121, OS_LOG_TYPE_DEFAULT, "initial color: [X=%f,Y=%f,Z=%f] (in %f lux)", buffer, 0x2Au);
              }
            }

            else
            {
              v119 = *(this + 7);
              if (!v119)
              {
                v119 = _COREBRIGHTNESS_LOG_DEFAULT;
                if (!_COREBRIGHTNESS_LOG_DEFAULT)
                {
                  v119 = init_default_corebrightness_log();
                }
              }

              if (os_log_type_enabled(v119, OS_LOG_TYPE_ERROR))
              {
                sub_C704();
              }
            }
          }
        }

        if (v84)
        {
          v113 = *(this + 7);
          if (!v113)
          {
            v113 = _COREBRIGHTNESS_LOG_DEFAULT;
            if (!_COREBRIGHTNESS_LOG_DEFAULT)
            {
              v113 = init_default_corebrightness_log();
            }
          }

          if (os_log_type_enabled(v113, OS_LOG_TYPE_DEFAULT))
          {
            *buffer = 0;
            _os_log_impl(&dword_0, v113, OS_LOG_TYPE_DEFAULT, "dfr supported", buffer, 2u);
          }

          *buffer = 1;
          v114 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, buffer);
          if (v114)
          {
            v115 = v114;
            CFDictionarySetValue(*(this + 30), @"DFRSupport", v114);
            CFRelease(v115);
          }

          *(this + 80) = 1;
        }

        return 0;
      }
    }
  }

  return v32;
}

BOOL AppleUSBALS::getConnectionType(AppleUSBALS *this, uint64_t *a2)
{
  v5 = (this + 144);
  v4 = *(this + 18);
  if (v4 && (v6 = IOHIDTransactionCreate(kCFAllocatorDefault, v4, kIOHIDTransactionDirectionTypeInput, 0)) != 0)
  {
    v7 = v6;
    Element = AppleUSBALS::getElement(this, 32, 2096, kIOHIDElementTypeFeature);
    if (Element)
    {
      IOHIDTransactionAddElement(v7, Element);
    }

    v9 = AppleUSBALS::getElement(this, 32, 2097, kIOHIDElementTypeFeature);
    if (v9)
    {
      IOHIDTransactionAddElement(v7, v9);
    }

    v10 = AppleUSBALS::getElement(this, 32, 2098, kIOHIDElementTypeFeature);
    if (v10)
    {
      IOHIDTransactionAddElement(v7, v10);
    }

    v11 = IOHIDTransactionCommit(v7);
    v12 = v11 == 0;
    if (v11)
    {
      inited = *(this + 7);
      if (!inited)
      {
        inited = _COREBRIGHTNESS_LOG_DEFAULT;
        if (!_COREBRIGHTNESS_LOG_DEFAULT)
        {
          inited = init_default_corebrightness_log();
        }
      }

      if (os_log_type_enabled(inited, OS_LOG_TYPE_ERROR))
      {
        sub_C7A8();
      }
    }

    else
    {
      if (Element)
      {
        Value = IOHIDTransactionGetValue(v7, Element, 0);
        if (Value)
        {
          if (IOHIDValueGetIntegerValue(Value))
          {
            *a2 = 2096;
          }
        }
      }

      if (v9)
      {
        v17 = IOHIDTransactionGetValue(v7, v9, 0);
        if (v17)
        {
          if (IOHIDValueGetIntegerValue(v17))
          {
            *a2 = 2097;
          }
        }
      }

      if (v10)
      {
        v18 = IOHIDTransactionGetValue(v7, v10, 0);
        if (v18)
        {
          if (IOHIDValueGetIntegerValue(v18))
          {
            *a2 = 2098;
          }
        }
      }
    }

    CFRelease(v7);
  }

  else
  {
    v14 = *(this + 7);
    if (!v14)
    {
      v14 = _COREBRIGHTNESS_LOG_DEFAULT;
      if (!_COREBRIGHTNESS_LOG_DEFAULT)
      {
        v14 = init_default_corebrightness_log();
      }
    }

    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_C818(v5);
    }

    return 0;
  }

  return v12;
}

uint64_t AppleUSBALS::getLocation(AppleUSBALS *this)
{
  v3 = (this + 144);
  v2 = *(this + 18);
  if (v2)
  {
    v4 = IOHIDTransactionCreate(kCFAllocatorDefault, v2, kIOHIDTransactionDirectionTypeInput, 0);
    if (v4)
    {
      v5 = v4;
      Element = AppleUSBALS::getElement(this, 65301, 257, kIOHIDElementTypeFeature);
      if (Element)
      {
        IOHIDTransactionAddElement(v5, Element);
      }

      v7 = AppleUSBALS::getElement(this, 65301, 258, kIOHIDElementTypeFeature);
      if (v7)
      {
        IOHIDTransactionAddElement(v5, v7);
      }

      if (IOHIDTransactionCommit(v5))
      {
        inited = *(this + 7);
        if (!inited)
        {
          inited = _COREBRIGHTNESS_LOG_DEFAULT;
          if (!_COREBRIGHTNESS_LOG_DEFAULT)
          {
            inited = init_default_corebrightness_log();
          }
        }

        if (os_log_type_enabled(inited, OS_LOG_TYPE_ERROR))
        {
          sub_C7A8();
        }
      }

      else
      {
        if (Element)
        {
          Value = IOHIDTransactionGetValue(v5, Element, 0);
          if (Value)
          {
            if (IOHIDValueGetIntegerValue(Value))
            {
              *(this + 13) = 257;
            }
          }
        }

        if (v7)
        {
          v12 = IOHIDTransactionGetValue(v5, v7, 0);
          if (v12)
          {
            if (IOHIDValueGetIntegerValue(v12))
            {
              *(this + 13) = 258;
            }
          }
        }

        v13 = *(this + 7);
        if (*(this + 13))
        {
          if (!v13)
          {
            v13 = _COREBRIGHTNESS_LOG_DEFAULT;
            if (!_COREBRIGHTNESS_LOG_DEFAULT)
            {
              v13 = init_default_corebrightness_log();
            }
          }

          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            v14 = *(this + 13);
            v16 = 134217984;
            v17 = v14;
            _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "sensor location %lu", &v16, 0xCu);
          }

          v9 = 1;
          goto LABEL_35;
        }

        if (!v13)
        {
          v13 = _COREBRIGHTNESS_LOG_DEFAULT;
          if (!_COREBRIGHTNESS_LOG_DEFAULT)
          {
            v13 = init_default_corebrightness_log();
          }
        }

        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v16) = 0;
          _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "location is not available", &v16, 2u);
        }
      }

      v9 = 0;
LABEL_35:
      CFRelease(v5);
      return v9;
    }
  }

  v10 = *(this + 7);
  if (!v10)
  {
    v10 = _COREBRIGHTNESS_LOG_DEFAULT;
    if (!_COREBRIGHTNESS_LOG_DEFAULT)
    {
      v10 = init_default_corebrightness_log();
    }
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    sub_C818(v3);
  }

  return 0;
}

uint64_t AppleUSBALS::setIntValueForUsage(AppleUSBALS *this, int a2, int a3, CFIndex a4)
{
  Element = AppleUSBALS::getElement(this, a2, a3, kIOHIDElementTypeFeature);

  return AppleUSBALS::setElementIntValue(this, Element, a4);
}

void AppleUSBALS::updateCurrentAmbient(AppleUSBALS *this, double a2)
{
  inited = *(this + 7);
  if (!inited)
  {
    inited = _COREBRIGHTNESS_LOG_DEFAULT;
    if (!_COREBRIGHTNESS_LOG_DEFAULT)
    {
      inited = init_default_corebrightness_log();
    }
  }

  if (os_log_type_enabled(inited, OS_LOG_TYPE_DEBUG))
  {
    sub_C888();
  }

  *(this + 41) = a2;
  v5 = a2;
  valuePtr = v5;
  v6 = CFNumberCreate(kCFAllocatorDefault, kCFNumberFloatType, &valuePtr);
  if (v6)
  {
    v7 = v6;
    v8 = *(this + 30);
    if (v8)
    {
      CFDictionarySetValue(v8, @"CurrentLuxValue", v7);
    }

    CFRelease(v7);
  }
}

void AppleUSBALS::updateCurrentColourInfo(AppleUSBALS *this, double a2, double a3, double a4, double a5)
{
  inited = *(this + 7);
  if (!inited)
  {
    inited = _COREBRIGHTNESS_LOG_DEFAULT;
    if (!_COREBRIGHTNESS_LOG_DEFAULT)
    {
      inited = init_default_corebrightness_log();
    }
  }

  if (os_log_type_enabled(inited, OS_LOG_TYPE_DEBUG))
  {
    v11 = 134218752;
    v12 = a2;
    v13 = 2048;
    v14 = a3;
    v15 = 2048;
    v16 = a4;
    v17 = 2048;
    v18 = a5;
    _os_log_debug_impl(&dword_0, inited, OS_LOG_TYPE_DEBUG, "X=%f Y=%f Z=%f CCT=%f", &v11, 0x2Au);
  }

  *(this + 42) = a2;
  *(this + 43) = a3;
  *(this + 44) = a4;
  *(this + 45) = a5;
}

uint64_t AppleUSBALS::stop(AppleUSBALS *this)
{
  inited = *(this + 7);
  if (!inited)
  {
    inited = _COREBRIGHTNESS_LOG_DEFAULT;
    if (!_COREBRIGHTNESS_LOG_DEFAULT)
    {
      inited = init_default_corebrightness_log();
    }
  }

  if (os_log_type_enabled(inited, OS_LOG_TYPE_DEBUG))
  {
    sub_C4D4();
  }

  v3 = *(this + 28);
  if (v3)
  {
    if (CFArrayGetCount(v3) >= 1)
    {
      v4 = 0;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(this + 28), v4);
        if (ValueAtIndex)
        {
          v6 = ValueAtIndex;
          TypeID = IOHIDElementGetTypeID();
          if (TypeID == CFGetTypeID(v6))
          {
            _IOHIDElementSetValue();
          }
        }

        ++v4;
      }

      while (CFArrayGetCount(*(this + 28)) > v4);
    }

    *(this + 184) = 0u;
    *(this + 168) = 0u;
    *(this + 152) = 0u;
    CFRelease(*(this + 28));
    *(this + 28) = 0;
  }

  v8 = *(this + 18);
  if (v8)
  {
    IOHIDDeviceClose(v8, 0);
    CFRelease(*(this + 18));
    *(this + 18) = 0;
  }

  v9 = *(this + 34);
  if (v9)
  {
    IOObjectRelease(v9);
    *(this + 34) = 0;
  }

  return 0;
}

uint64_t AppleUSBALS::open(AppleUSBALS *this)
{
  inited = *(this + 7);
  if (!inited)
  {
    inited = _COREBRIGHTNESS_LOG_DEFAULT;
    if (!_COREBRIGHTNESS_LOG_DEFAULT)
    {
      inited = init_default_corebrightness_log();
    }
  }

  if (os_log_type_enabled(inited, OS_LOG_TYPE_DEBUG))
  {
    sub_C4D4();
  }

  return 1;
}

void AppleUSBALS::close(AppleUSBALS *this)
{
  inited = *(this + 7);
  if (!inited)
  {
    inited = _COREBRIGHTNESS_LOG_DEFAULT;
    if (!_COREBRIGHTNESS_LOG_DEFAULT)
    {
      inited = init_default_corebrightness_log();
    }
  }

  if (os_log_type_enabled(inited, OS_LOG_TYPE_DEBUG))
  {
    sub_C4D4();
  }
}

const void *AppleUSBALS::copyProperty(AppleUSBALS *this, const __CFString *a2)
{
  if (!a2)
  {
    return 0;
  }

  inited = *(this + 7);
  if (!inited)
  {
    inited = _COREBRIGHTNESS_LOG_DEFAULT;
    if (!_COREBRIGHTNESS_LOG_DEFAULT)
    {
      inited = init_default_corebrightness_log();
    }
  }

  if (os_log_type_enabled(inited, OS_LOG_TYPE_DEBUG))
  {
    sub_C8FC();
  }

  if (CFEqual(a2, @"FilterProperties"))
  {
    v5 = CFRetain(*(this + 30));
LABEL_92:
    v45 = v5;
    goto LABEL_93;
  }

  if (CFEqual(a2, @"SensorConnectionType"))
  {
    *&valuePtr = 2096;
    v6 = *(this + 18);
    v7 = kCFAllocatorDefault;
    if (v6)
    {
      v8 = IOHIDTransactionCreate(kCFAllocatorDefault, v6, kIOHIDTransactionDirectionTypeInput, 0);
      if (v8)
      {
        v9 = v8;
        Element = AppleUSBALS::getElement(this, 32, 2096, kIOHIDElementTypeFeature);
        if (Element)
        {
          IOHIDTransactionAddElement(v9, Element);
        }

        v11 = AppleUSBALS::getElement(this, 32, 2097, kIOHIDElementTypeFeature);
        if (v11)
        {
          IOHIDTransactionAddElement(v9, v11);
        }

        v12 = AppleUSBALS::getElement(this, 32, 2098, kIOHIDElementTypeFeature);
        if (v12)
        {
          IOHIDTransactionAddElement(v9, v12);
        }

        if (IOHIDTransactionCommit(v9))
        {
          goto LABEL_174;
        }

        if (Element)
        {
          Value = IOHIDTransactionGetValue(v9, Element, 0);
          if (Value)
          {
            if (IOHIDValueGetIntegerValue(Value))
            {
              *&valuePtr = 2096;
            }
          }
        }

        if (v11)
        {
          v14 = IOHIDTransactionGetValue(v9, v11, 0);
          if (v14)
          {
            if (IOHIDValueGetIntegerValue(v14))
            {
              *&valuePtr = 2097;
            }
          }
        }

        if (!v12)
        {
          goto LABEL_174;
        }

        v15 = IOHIDTransactionGetValue(v9, v12, 0);
        if (!v15 || !IOHIDValueGetIntegerValue(v15))
        {
          goto LABEL_174;
        }

        v16 = 2098;
LABEL_173:
        *&valuePtr = v16;
LABEL_174:
        v45 = CFNumberCreate(v7, kCFNumberCFIndexType, &valuePtr);
        v68 = v9;
LABEL_175:
        CFRelease(v68);
        goto LABEL_93;
      }
    }

    goto LABEL_90;
  }

  if (CFEqual(a2, @"SensorState"))
  {
    *&valuePtr = 2048;
    v17 = *(this + 18);
    v7 = kCFAllocatorDefault;
    if (v17)
    {
      v18 = IOHIDTransactionCreate(kCFAllocatorDefault, v17, kIOHIDTransactionDirectionTypeInput, 0);
      if (v18)
      {
        v9 = v18;
        v19 = AppleUSBALS::getElement(this, 32, 2048, kIOHIDElementTypeFeature);
        if (v19)
        {
          IOHIDTransactionAddElement(v9, v19);
        }

        v20 = AppleUSBALS::getElement(this, 32, 2054, kIOHIDElementTypeFeature);
        if (v20)
        {
          IOHIDTransactionAddElement(v9, v20);
        }

        v21 = AppleUSBALS::getElement(this, 32, 2049, kIOHIDElementTypeFeature);
        if (v21)
        {
          IOHIDTransactionAddElement(v9, v21);
        }

        v22 = AppleUSBALS::getElement(this, 32, 2051, kIOHIDElementTypeFeature);
        if (v22)
        {
          IOHIDTransactionAddElement(v9, v22);
        }

        v23 = AppleUSBALS::getElement(this, 32, 2053, kIOHIDElementTypeFeature);
        if (v23)
        {
          IOHIDTransactionAddElement(v9, v23);
        }

        v144 = v23;
        v24 = AppleUSBALS::getElement(this, 32, 2052, kIOHIDElementTypeFeature);
        if (v24)
        {
          IOHIDTransactionAddElement(v9, v24);
        }

        v25 = AppleUSBALS::getElement(this, 32, 2050, kIOHIDElementTypeFeature);
        if (v25)
        {
          IOHIDTransactionAddElement(v9, v25);
        }

        if (IOHIDTransactionCommit(v9))
        {
          v26 = *(this + 7);
          if (!v26)
          {
            v26 = _COREBRIGHTNESS_LOG_DEFAULT;
            if (!_COREBRIGHTNESS_LOG_DEFAULT)
            {
              v26 = init_default_corebrightness_log();
            }
          }

          v7 = kCFAllocatorDefault;
          if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
          {
            sub_C96C();
          }

          goto LABEL_174;
        }

        if (v19)
        {
          v49 = IOHIDTransactionGetValue(v9, v19, 0);
          if (v49)
          {
            if (IOHIDValueGetIntegerValue(v49))
            {
              *&valuePtr = 2048;
            }
          }
        }

        if (v20)
        {
          v50 = IOHIDTransactionGetValue(v9, v20, 0);
          if (v50)
          {
            if (IOHIDValueGetIntegerValue(v50))
            {
              *&valuePtr = 2054;
            }
          }
        }

        v7 = kCFAllocatorDefault;
        if (v21)
        {
          v51 = IOHIDTransactionGetValue(v9, v21, 0);
          if (v51)
          {
            if (IOHIDValueGetIntegerValue(v51))
            {
              *&valuePtr = 2049;
            }
          }
        }

        if (v22)
        {
          v52 = IOHIDTransactionGetValue(v9, v22, 0);
          if (v52)
          {
            if (IOHIDValueGetIntegerValue(v52))
            {
              *&valuePtr = 2051;
            }
          }
        }

        if (v144)
        {
          v53 = IOHIDTransactionGetValue(v9, v144, 0);
          if (v53)
          {
            if (IOHIDValueGetIntegerValue(v53))
            {
              *&valuePtr = 2053;
            }
          }
        }

        if (v24)
        {
          v54 = IOHIDTransactionGetValue(v9, v24, 0);
          if (v54)
          {
            if (IOHIDValueGetIntegerValue(v54))
            {
              *&valuePtr = 2052;
            }
          }
        }

        if (!v25)
        {
          goto LABEL_174;
        }

        v55 = IOHIDTransactionGetValue(v9, v25, 0);
        if (!v55 || !IOHIDValueGetIntegerValue(v55))
        {
          goto LABEL_174;
        }

        v16 = 2050;
        goto LABEL_173;
      }
    }

LABEL_90:
    p_valuePtr = &valuePtr;
    v43 = v7;
    v44 = kCFNumberCFIndexType;
LABEL_91:
    v5 = CFNumberCreate(v43, v44, p_valuePtr);
    goto LABEL_92;
  }

  if (CFEqual(a2, @"SensorPowerState"))
  {
    *&valuePtr = 2128;
    v27 = *(this + 18);
    v7 = kCFAllocatorDefault;
    if (v27)
    {
      v28 = IOHIDTransactionCreate(kCFAllocatorDefault, v27, kIOHIDTransactionDirectionTypeInput, 0);
      if (v28)
      {
        v9 = v28;
        v29 = AppleUSBALS::getElement(this, 32, 2128, kIOHIDElementTypeFeature);
        if (v29)
        {
          IOHIDTransactionAddElement(v9, v29);
        }

        v30 = AppleUSBALS::getElement(this, 32, 2129, kIOHIDElementTypeFeature);
        if (v30)
        {
          IOHIDTransactionAddElement(v9, v30);
        }

        v31 = AppleUSBALS::getElement(this, 32, 2130, kIOHIDElementTypeFeature);
        if (v31)
        {
          IOHIDTransactionAddElement(v9, v31);
        }

        v32 = AppleUSBALS::getElement(this, 32, 2131, kIOHIDElementTypeFeature);
        if (v32)
        {
          IOHIDTransactionAddElement(v9, v32);
        }

        v33 = AppleUSBALS::getElement(this, 32, 2132, kIOHIDElementTypeFeature);
        if (v33)
        {
          IOHIDTransactionAddElement(v9, v33);
        }

        v34 = AppleUSBALS::getElement(this, 32, 2133, kIOHIDElementTypeFeature);
        if (v34)
        {
          IOHIDTransactionAddElement(v9, v34);
        }

        if (IOHIDTransactionCommit(v9))
        {
          v35 = *(this + 7);
          if (!v35)
          {
            v35 = _COREBRIGHTNESS_LOG_DEFAULT;
            if (!_COREBRIGHTNESS_LOG_DEFAULT)
            {
              v35 = init_default_corebrightness_log();
            }
          }

          v7 = kCFAllocatorDefault;
          if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
          {
            sub_C9DC();
          }

          goto LABEL_174;
        }

        if (v29)
        {
          v58 = IOHIDTransactionGetValue(v9, v29, 0);
          if (v58)
          {
            if (IOHIDValueGetIntegerValue(v58))
            {
              *&valuePtr = 2128;
            }
          }
        }

        v59 = v34;
        if (v30)
        {
          v60 = IOHIDTransactionGetValue(v9, v30, 0);
          if (v60)
          {
            if (IOHIDValueGetIntegerValue(v60))
            {
              *&valuePtr = 2129;
            }
          }
        }

        v7 = kCFAllocatorDefault;
        if (v31)
        {
          v61 = IOHIDTransactionGetValue(v9, v31, 0);
          if (v61)
          {
            if (IOHIDValueGetIntegerValue(v61))
            {
              *&valuePtr = 2130;
            }
          }
        }

        if (v32)
        {
          v62 = IOHIDTransactionGetValue(v9, v32, 0);
          if (v62)
          {
            if (IOHIDValueGetIntegerValue(v62))
            {
              *&valuePtr = 2131;
            }
          }
        }

        if (v33)
        {
          v63 = IOHIDTransactionGetValue(v9, v33, 0);
          if (v63)
          {
            if (IOHIDValueGetIntegerValue(v63))
            {
              *&valuePtr = 2132;
            }
          }
        }

        if (!v59)
        {
          goto LABEL_174;
        }

        v64 = IOHIDTransactionGetValue(v9, v59, 0);
        if (!v64 || !IOHIDValueGetIntegerValue(v64))
        {
          goto LABEL_174;
        }

        v16 = 2133;
        goto LABEL_173;
      }
    }

    goto LABEL_90;
  }

  if (CFEqual(a2, @"SensorReportingState"))
  {
    *&valuePtr = 2112;
    v36 = *(this + 18);
    v7 = kCFAllocatorDefault;
    if (v36)
    {
      v37 = IOHIDTransactionCreate(kCFAllocatorDefault, v36, kIOHIDTransactionDirectionTypeInput, 0);
      if (v37)
      {
        v9 = v37;
        v38 = AppleUSBALS::getElement(this, 32, 2112, kIOHIDElementTypeFeature);
        if (v38)
        {
          IOHIDTransactionAddElement(v9, v38);
        }

        v39 = AppleUSBALS::getElement(this, 32, 2113, kIOHIDElementTypeFeature);
        if (v39)
        {
          IOHIDTransactionAddElement(v9, v39);
        }

        v40 = AppleUSBALS::getElement(this, 32, 2114, kIOHIDElementTypeFeature);
        if (v40)
        {
          IOHIDTransactionAddElement(v9, v40);
        }

        if (IOHIDTransactionCommit(v9))
        {
          v41 = *(this + 7);
          if (!v41)
          {
            v41 = _COREBRIGHTNESS_LOG_DEFAULT;
            if (!_COREBRIGHTNESS_LOG_DEFAULT)
            {
              v41 = init_default_corebrightness_log();
            }
          }

          if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
          {
            sub_CA4C();
          }

          goto LABEL_174;
        }

        if (v38)
        {
          v65 = IOHIDTransactionGetValue(v9, v38, 0);
          if (v65)
          {
            if (IOHIDValueGetIntegerValue(v65))
            {
              *&valuePtr = 2112;
            }
          }
        }

        if (v39)
        {
          v66 = IOHIDTransactionGetValue(v9, v39, 0);
          if (v66)
          {
            if (IOHIDValueGetIntegerValue(v66))
            {
              *&valuePtr = 2113;
            }
          }
        }

        if (!v40)
        {
          goto LABEL_174;
        }

        v67 = IOHIDTransactionGetValue(v9, v40, 0);
        if (!v67 || !IOHIDValueGetIntegerValue(v67))
        {
          goto LABEL_174;
        }

        v16 = 2114;
        goto LABEL_173;
      }
    }

    goto LABEL_90;
  }

  if (CFEqual(a2, @"SensorRelativeSensitivity"))
  {
    v56 = this;
    v57 = 58577;
LABEL_178:
    v69 = AppleUSBALS::getElement(v56, 32, v57, kIOHIDElementTypeFeature);
    if (!v69)
    {
      goto LABEL_94;
    }

    *&valuePtr = 0;
    v45 = 0;
    if (IOHIDDeviceGetValue(*(this + 18), v69, &valuePtr))
    {
      goto LABEL_93;
    }

    if (!valuePtr)
    {
      goto LABEL_93;
    }

    values[0] = 0;
    v45 = 0;
    if (!AppleUSBALS::retrieveScaledValue(this, valuePtr, values))
    {
      goto LABEL_93;
    }

    v43 = kCFAllocatorDefault;
    p_valuePtr = values;
    v44 = kCFNumberDoubleType;
    goto LABEL_91;
  }

  if (CFEqual(a2, @"SensorAbsoluteSensitivity"))
  {
    v56 = this;
    v57 = 5329;
    goto LABEL_178;
  }

  if (CFEqual(a2, @"SensorAbsoluteColorSensitivity"))
  {
    v56 = this;
    v57 = 5331;
    goto LABEL_178;
  }

  if (*(this + 80) != 1)
  {
    goto LABEL_94;
  }

  if (CFEqual(a2, @"DFRDisplayBrightnessMin"))
  {
    LODWORD(valuePtr) = 0;
    v70 = this;
    v71 = 66;
    goto LABEL_190;
  }

  if (CFEqual(a2, @"DFRDisplayBrightnessMax"))
  {
    LODWORD(valuePtr) = 0;
    v70 = this;
    v71 = 67;
    goto LABEL_190;
  }

  if (CFEqual(a2, @"DFRBrightness"))
  {
    LODWORD(valuePtr) = 0;
    v70 = this;
    v71 = 18;
    goto LABEL_190;
  }

  if (CFEqual(a2, @"DFRAutoBrightness"))
  {
    *&valuePtr = 0;
    v45 = 0;
    if (!AppleUSBALS::getIntValueForUsage(this, 65298, 65, &valuePtr))
    {
      LODWORD(values[0]) = valuePtr != 1;
      v43 = kCFAllocatorDefault;
      p_valuePtr = values;
      v44 = kCFNumberIntType;
      goto LABEL_91;
    }

    goto LABEL_93;
  }

  if (CFEqual(a2, @"DFRTrustedLux"))
  {
    *&valuePtr = 0;
    v72 = AppleUSBALS::getElement(this, 32, 1233, kIOHIDElementTypeInput_Misc);
    goto LABEL_197;
  }

  if (CFEqual(a2, @"DFRNits"))
  {
    LODWORD(valuePtr) = 0;
    v70 = this;
    v71 = 17;
LABEL_190:
    if (AppleUSBALS::getFloatValueForUsage(v70, 65298, v71, &valuePtr))
    {
LABEL_191:
      v45 = 0;
      goto LABEL_93;
    }

    goto LABEL_210;
  }

  if (!CFEqual(a2, @"DFRDisplayFactor"))
  {
    if (CFEqual(a2, @"DFRDisplayState"))
    {
      *&valuePtr = 0;
      v72 = *(this + 23);
      goto LABEL_197;
    }

    if (CFEqual(a2, @"DFRDimmingFactor"))
    {
      LODWORD(valuePtr) = 0;
      if (AppleUSBALS::getElementFloatValue(this, *(this + 22), &valuePtr))
      {
        goto LABEL_191;
      }

LABEL_210:
      v43 = kCFAllocatorDefault;
      p_valuePtr = &valuePtr;
LABEL_211:
      v44 = kCFNumberFloatType;
      goto LABEL_91;
    }

    if (CFEqual(a2, @"DFRDimmingStep"))
    {
      *&valuePtr = 0;
      v72 = *(this + 19);
LABEL_197:
      v45 = 0;
      if (!AppleUSBALS::getElementIntValue(this, v72, &valuePtr))
      {
        v43 = kCFAllocatorDefault;
        p_valuePtr = &valuePtr;
        v44 = kCFNumberLongType;
        goto LABEL_91;
      }

      goto LABEL_93;
    }

    if (CFEqual(a2, @"DFRBurninCounter"))
    {
      *&valuePtr = 0;
      v74 = AppleUSBALS::copyDataForUsage(this, 65298, 81);
      if (v74)
      {
        v75 = v74;
        if (CFDataGetLength(v74) == 8)
        {
          *&valuePtr = *CFDataGetBytePtr(v75);
          v76 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt64Type, &valuePtr);
        }

        else
        {
          v76 = 0;
        }

        CFRelease(v75);
      }

      else
      {
        v76 = 0;
      }

      v45 = v76;
      goto LABEL_93;
    }

    if (CFEqual(a2, @"DFRCurve"))
    {
      v77 = *(this + 18);
      if (!v77)
      {
        goto LABEL_94;
      }

      if (!*(this + 28))
      {
        goto LABEL_94;
      }

      v78 = IOHIDTransactionCreate(kCFAllocatorDefault, v77, kIOHIDTransactionDirectionTypeInput, 0);
      if (!v78)
      {
        goto LABEL_94;
      }

      v79 = v78;
      if (CFArrayGetCount(*(this + 28)) < 1)
      {
        v82 = 0;
        v81 = 0;
      }

      else
      {
        v80 = 0;
        v81 = 0;
        v82 = 0;
        do
        {
          ValueAtIndex = CFArrayGetValueAtIndex(*(this + 28), v80);
          TypeID = IOHIDElementGetTypeID();
          if (TypeID == CFGetTypeID(ValueAtIndex))
          {
            if (IOHIDElementGetUsage(ValueAtIndex) == 72 && IOHIDElementGetUsagePage(ValueAtIndex) == 65298 && IOHIDElementGetType(ValueAtIndex) == kIOHIDElementTypeFeature)
            {
              ReportCount = IOHIDElementGetReportCount(ValueAtIndex);
              if (!v81 && ReportCount >= 2)
              {
                v81 = ValueAtIndex;
              }
            }

            if (IOHIDElementGetUsage(ValueAtIndex) == 71 && IOHIDElementGetUsagePage(ValueAtIndex) == 65298 && IOHIDElementGetType(ValueAtIndex) == kIOHIDElementTypeFeature)
            {
              v87 = IOHIDElementGetReportCount(ValueAtIndex);
              if (!v82 && v87 >= 2)
              {
                v82 = ValueAtIndex;
              }
            }
          }

          ++v80;
        }

        while (CFArrayGetCount(*(this + 28)) > v80);
      }

      if (AppleUSBALS::addElementToTransaction(this, v79, v81) || AppleUSBALS::addElementToTransaction(this, v79, v82) || (v104 = AppleUSBALS::getElement(this, 65298, 68, kIOHIDElementTypeFeature), AppleUSBALS::addElementToTransaction(this, v79, v104)) || (v105 = AppleUSBALS::getElement(this, 65298, 69, kIOHIDElementTypeFeature), AppleUSBALS::addElementToTransaction(this, v79, v105)) || IOHIDTransactionCommit(v79) || (v117 = CFDictionaryCreateMutable(kCFAllocatorDefault, 5, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks)) == 0)
      {
        v106 = 0;
      }

      else
      {
        v118 = v117;
        LogicalMin = 0;
        capacity = 0;
        v119 = AppleUSBALS::getElement(this, 65298, 69, kIOHIDElementTypeFeature);
        if (AppleUSBALS::getElementIntValueFromTransaction(v119, v79, v119, &capacity) || (v120 = AppleUSBALS::getElement(this, 65298, 68, kIOHIDElementTypeFeature), AppleUSBALS::getElementIntValueFromTransaction(v120, v79, v120, &LogicalMin)))
        {
          v106 = 0;
        }

        else
        {
          v106 = 0;
          if (capacity && capacity <= 12)
          {
            v121 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt64Type, &capacity);
            if (v121)
            {
              v122 = v121;
              CFDictionarySetValue(v118, @"Count", v121);
              CFRelease(v122);
            }

            v123 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt64Type, &LogicalMin);
            if (v123)
            {
              v124 = v123;
              CFDictionarySetValue(v118, @"Type", v123);
              CFRelease(v124);
            }

            Mutable = CFArrayCreateMutable(kCFAllocatorDefault, capacity, &kCFTypeArrayCallBacks);
            v126 = CFArrayCreateMutable(kCFAllocatorDefault, capacity, &kCFTypeArrayCallBacks);
            v127 = v126;
            v106 = 0;
            if (Mutable && v126)
            {
              valuePtr = 0u;
              v152 = 0u;
              v153 = 0u;
              *values = 0u;
              v149 = 0u;
              v150 = 0u;
              v128 = IOHIDTransactionGetValue(v79, v82, 0);
              if (v128)
              {
                v129 = v128;
                Length = IOHIDValueGetLength(v128);
                if (capacity <= Length >> 2)
                {
                  if (IOHIDValueGetBytePtr(v129))
                  {
                    BytePtr = IOHIDValueGetBytePtr(v129);
                    v132 = capacity;
                    memcpy(values, BytePtr, 4 * capacity);
                    if (v132 >= 1)
                    {
                      v133 = 0;
                      do
                      {
                        *&v145 = *(values + v133) / 1000.0;
                        v134 = CFNumberCreate(kCFAllocatorDefault, kCFNumberFloatType, &v145);
                        if (v134)
                        {
                          v135 = v134;
                          CFArraySetValueAtIndex(v127, v133, v134);
                          CFRelease(v135);
                        }

                        ++v133;
                      }

                      while (capacity > v133);
                    }
                  }
                }
              }

              v136 = IOHIDTransactionGetValue(v79, v81, 0);
              if (v136)
              {
                v137 = v136;
                v138 = IOHIDValueGetLength(v136);
                if (capacity <= v138 >> 2)
                {
                  if (IOHIDValueGetBytePtr(v137))
                  {
                    v139 = IOHIDValueGetBytePtr(v137);
                    v140 = capacity;
                    memcpy(&valuePtr, v139, 4 * capacity);
                    if (v140 >= 1)
                    {
                      v141 = 0;
                      do
                      {
                        *&v145 = *(&valuePtr + v141) / 1000.0;
                        v142 = CFNumberCreate(kCFAllocatorDefault, kCFNumberFloatType, &v145);
                        if (v142)
                        {
                          v143 = v142;
                          CFArraySetValueAtIndex(Mutable, v141, v142);
                          CFRelease(v143);
                        }

                        ++v141;
                      }

                      while (capacity > v141);
                    }
                  }
                }
              }

              CFDictionarySetValue(v118, @"L", Mutable);
              CFDictionarySetValue(v118, @"E", v127);
              v106 = CFRetain(v118);
            }

            if (Mutable)
            {
              CFRelease(Mutable);
            }

            if (v127)
            {
              CFRelease(v127);
            }
          }
        }

        CFRelease(v118);
      }

      CFRelease(v79);
      v45 = v106;
      goto LABEL_93;
    }

    if (!CFEqual(a2, @"DFRWhitepoint"))
    {
      if (!CFEqual(a2, @"DFRProtocolVersion"))
      {
        goto LABEL_94;
      }

      v96 = AppleUSBALS::getElement(this, 65298, 64, kIOHIDElementTypeFeature);
      if (!v96)
      {
        goto LABEL_94;
      }

      v97 = v96;
      v98 = AppleUSBALS::getElement(this, 65298, 64, kIOHIDElementTypeFeature);
      capacity = IOHIDElementGetLogicalMax(v98);
      v99 = AppleUSBALS::getElement(this, 65298, 64, kIOHIDElementTypeFeature);
      v145 = 0;
      LogicalMin = IOHIDElementGetLogicalMin(v99);
      ElementIntValue = AppleUSBALS::getElementIntValue(this, v97, &v145);
      v45 = 0;
      if (!ElementIntValue)
      {
        valuePtr = *off_145E8;
        *&v152 = @"value";
        v101 = CFNumberCreate(kCFAllocatorDefault, kCFNumberCFIndexType, &capacity);
        values[0] = v101;
        v102 = CFNumberCreate(kCFAllocatorDefault, kCFNumberCFIndexType, &LogicalMin);
        values[1] = v102;
        v103 = CFNumberCreate(kCFAllocatorDefault, kCFNumberCFIndexType, &v145);
        v45 = 0;
        *&v149 = v103;
        if (v101 && v102 && v103)
        {
          v45 = CFDictionaryCreate(kCFAllocatorDefault, &valuePtr, values, 3, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
          v101 = values[0];
        }

        if (v101)
        {
          CFRelease(v101);
        }

        if (values[1])
        {
          CFRelease(values[1]);
        }

        v68 = v149;
        if (v149)
        {
          goto LABEL_175;
        }
      }

      goto LABEL_93;
    }

    v89 = *(this + 18);
    if (!v89)
    {
      goto LABEL_94;
    }

    if (!*(this + 28))
    {
      goto LABEL_94;
    }

    v90 = IOHIDTransactionCreate(kCFAllocatorDefault, v89, kIOHIDTransactionDirectionTypeInput, 0);
    if (!v90)
    {
      goto LABEL_94;
    }

    v91 = v90;
    v92 = AppleUSBALS::getElement(this, 65298, 96, kIOHIDElementTypeFeature);
    v93 = AppleUSBALS::getElement(this, 65298, 97, kIOHIDElementTypeFeature);
    if (!v92 || (v94 = v93) == 0)
    {
      v107 = *(this + 7);
      if (!v107)
      {
        v107 = _COREBRIGHTNESS_LOG_DEFAULT;
        if (!_COREBRIGHTNESS_LOG_DEFAULT)
        {
          v107 = init_default_corebrightness_log();
        }
      }

      if (os_log_type_enabled(v107, OS_LOG_TYPE_ERROR))
      {
        sub_CABC();
      }

      goto LABEL_298;
    }

    IOHIDTransactionAddElement(v91, v92);
    IOHIDTransactionAddElement(v91, v94);
    if (IOHIDTransactionCommit(v91))
    {
      v95 = *(this + 7);
      if (!v95)
      {
        v95 = _COREBRIGHTNESS_LOG_DEFAULT;
        if (!_COREBRIGHTNESS_LOG_DEFAULT)
        {
          v95 = init_default_corebrightness_log();
        }
      }

      if (os_log_type_enabled(v95, OS_LOG_TYPE_ERROR))
      {
        sub_CAF0();
      }

LABEL_298:
      v116 = 0;
LABEL_299:
      CFRelease(v91);
      v45 = v116;
      goto LABEL_93;
    }

    *&valuePtr = 0;
    values[0] = 0;
    v108 = IOHIDTransactionGetValue(v91, v92, 0);
    if (!AppleUSBALS::retrieveScaledValue(this, v108, &valuePtr) || (v109 = IOHIDTransactionGetValue(v91, v94, 0), !AppleUSBALS::retrieveScaledValue(this, v109, values)))
    {
      v115 = *(this + 7);
      if (!v115)
      {
        v115 = _COREBRIGHTNESS_LOG_DEFAULT;
        if (!_COREBRIGHTNESS_LOG_DEFAULT)
        {
          v115 = init_default_corebrightness_log();
        }
      }

      if (os_log_type_enabled(v115, OS_LOG_TYPE_ERROR))
      {
        sub_CB60();
      }

      goto LABEL_298;
    }

    v110 = CFNumberCreate(kCFAllocatorDefault, kCFNumberDoubleType, &valuePtr);
    v111 = CFNumberCreate(kCFAllocatorDefault, kCFNumberDoubleType, values);
    v112 = v111;
    if (v110 && v111)
    {
      v113 = CFDictionaryCreateMutable(kCFAllocatorDefault, 2, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      v114 = v113;
      if (v113)
      {
        CFDictionarySetValue(v113, @"Target_x", v110);
        CFDictionarySetValue(v114, @"Target_y", v112);
      }
    }

    else
    {
      v114 = 0;
      v116 = 0;
      if (!v110)
      {
        goto LABEL_302;
      }
    }

    CFRelease(v110);
    v116 = v114;
LABEL_302:
    if (v112)
    {
      CFRelease(v112);
    }

    goto LABEL_299;
  }

  *&valuePtr = 0;
  v45 = 0;
  if (!AppleUSBALS::getElementIntValue(this, *(this + 23), &valuePtr))
  {
    v73 = 0.0;
    if (valuePtr == 2)
    {
      v73 = 1.0;
    }

    *values = v73;
    v43 = kCFAllocatorDefault;
    p_valuePtr = values;
    goto LABEL_211;
  }

LABEL_93:
  if (v45)
  {
    return v45;
  }

LABEL_94:
  v46 = *(this + 30);
  if (!v46)
  {
    return 0;
  }

  v45 = CFDictionaryGetValue(v46, a2);
  v47 = *(this + 7);
  if (!v47)
  {
    v47 = _COREBRIGHTNESS_LOG_DEFAULT;
    if (!_COREBRIGHTNESS_LOG_DEFAULT)
    {
      v47 = init_default_corebrightness_log();
    }
  }

  if (os_log_type_enabled(v47, OS_LOG_TYPE_DEBUG))
  {
    sub_CB94();
    if (!v45)
    {
      return v45;
    }

    goto LABEL_100;
  }

  if (v45)
  {
LABEL_100:
    CFRetain(v45);
  }

  return v45;
}

uint64_t AppleUSBALS::getFloatValueForUsage(AppleUSBALS *this, int a2, int a3, float *a4)
{
  Element = AppleUSBALS::getElement(this, a2, a3, kIOHIDElementTypeFeature);
  if (!Element)
  {
    return 3758097095;
  }

  return AppleUSBALS::getElementFloatValue(this, Element, a4);
}

uint64_t AppleUSBALS::getIntValueForUsage(AppleUSBALS *this, int a2, int a3, uint64_t *a4)
{
  Element = AppleUSBALS::getElement(this, a2, a3, kIOHIDElementTypeFeature);
  if (!Element)
  {
    return 3758097095;
  }

  return AppleUSBALS::getElementIntValue(this, Element, a4);
}

uint64_t AppleUSBALS::getElementIntValue(AppleUSBALS *this, __IOHIDElement *a2, uint64_t *a3)
{
  Value = 3758097095;
  if (a2)
  {
    v5 = *(this + 18);
    if (v5)
    {
      pValue = 0;
      Value = IOHIDDeviceGetValue(v5, a2, &pValue);
      if (Value)
      {
        v7 = 1;
      }

      else
      {
        v7 = pValue == 0;
      }

      if (v7)
      {
        inited = *(this + 7);
        if (!inited)
        {
          inited = _COREBRIGHTNESS_LOG_DEFAULT;
          if (!_COREBRIGHTNESS_LOG_DEFAULT)
          {
            inited = init_default_corebrightness_log();
          }
        }

        if (os_log_type_enabled(inited, OS_LOG_TYPE_ERROR))
        {
          sub_CC04(&pValue);
        }
      }

      else
      {
        *a3 = IOHIDValueGetIntegerValue(pValue);
        v9 = *(this + 7);
        if (!v9)
        {
          v9 = _COREBRIGHTNESS_LOG_DEFAULT;
          if (!_COREBRIGHTNESS_LOG_DEFAULT)
          {
            v9 = init_default_corebrightness_log();
          }
        }

        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
        {
          sub_CC80(&pValue);
        }
      }
    }
  }

  return Value;
}

uint64_t AppleUSBALS::getElementFloatValue(AppleUSBALS *this, __IOHIDElement *a2, float *a3)
{
  Value = 3758097095;
  if (a2)
  {
    v5 = *(this + 18);
    if (v5)
    {
      pValue = 0;
      Value = IOHIDDeviceGetValue(v5, a2, &pValue);
      if (Value)
      {
        v8 = 1;
      }

      else
      {
        v8 = pValue == 0;
      }

      if (!v8)
      {
        inited = *(this + 7);
        if (!inited)
        {
          inited = _COREBRIGHTNESS_LOG_DEFAULT;
          if (!_COREBRIGHTNESS_LOG_DEFAULT)
          {
            inited = init_default_corebrightness_log();
          }
        }

        if (os_log_type_enabled(inited, OS_LOG_TYPE_DEBUG))
        {
          sub_CD00(a2, inited);
        }

        if (IOHIDElementGetUnitExponent(a2))
        {
          IntegerValue = IOHIDValueGetIntegerValue(pValue);
          UnitExponent = IOHIDElementGetUnitExponent(a2);
          UnscaledValueWithExponent = AppleUSBALS::getUnscaledValueWithExponent(this, IntegerValue, UnitExponent);
        }

        else
        {
          UnscaledValueWithExponent = IOHIDValueGetScaledValue(pValue, 1u);
        }

        v13 = UnscaledValueWithExponent;
        *a3 = v13;
      }

      v14 = *(this + 7);
      if (!v14)
      {
        v14 = _COREBRIGHTNESS_LOG_DEFAULT;
        if (!_COREBRIGHTNESS_LOG_DEFAULT)
        {
          v14 = init_default_corebrightness_log();
        }
      }

      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        v16 = *a3;
        *buf = 134218496;
        v19 = pValue;
        v20 = 2048;
        v21 = v16;
        v22 = 1024;
        v23 = Value == 0;
        _os_log_debug_impl(&dword_0, v14, OS_LOG_TYPE_DEBUG, "value=%p ret=%f success=%d", buf, 0x1Cu);
      }
    }
  }

  return Value;
}

__IOHIDDevice *AppleUSBALS::copyDataForUsage(__IOHIDDevice **this, int a2, int a3)
{
  result = AppleUSBALS::getElement(this, a2, a3, kIOHIDElementTypeFeature);
  if (result)
  {
    v5 = result;
    result = this[18];
    if (result)
    {
      pValue = 0;
      Value = IOHIDDeviceGetValue(result, v5, &pValue);
      result = 0;
      if (Value)
      {
        v7 = 1;
      }

      else
      {
        v7 = pValue == 0;
      }

      if (!v7)
      {
        BytePtr = IOHIDValueGetBytePtr(pValue);
        Length = IOHIDValueGetLength(pValue);
        return CFDataCreate(kCFAllocatorDefault, BytePtr, Length);
      }
    }
  }

  return result;
}

uint64_t AppleUSBALS::addElementToTransaction(AppleUSBALS *this, __IOHIDTransaction *a2, __IOHIDElement *a3)
{
  inited = *(this + 7);
  if (!inited)
  {
    inited = _COREBRIGHTNESS_LOG_DEFAULT;
    if (!_COREBRIGHTNESS_LOG_DEFAULT)
    {
      inited = init_default_corebrightness_log();
    }
  }

  if (os_log_type_enabled(inited, OS_LOG_TYPE_DEBUG))
  {
    sub_CD88();
  }

  result = 3758097090;
  if (a2)
  {
    if (a3)
    {
      IOHIDTransactionAddElement(a2, a3);
      return 0;
    }
  }

  return result;
}

uint64_t AppleUSBALS::getElementIntValueFromTransaction(AppleUSBALS *this, IOHIDTransactionRef transaction, IOHIDElementRef element, uint64_t *a4)
{
  result = 3758097090;
  if (transaction && element && a4)
  {
    Value = IOHIDTransactionGetValue(transaction, element, 0);
    if (Value)
    {
      IntegerValue = IOHIDValueGetIntegerValue(Value);
      result = 0;
      *a4 = IntegerValue;
    }

    else
    {
      return 3758097084;
    }
  }

  return result;
}

BOOL AppleUSBALS::setProperty(AppleUSBALS *this, const __CFString *a2, const void *a3)
{
  v3 = 0;
  if (!a2 || !a3)
  {
    return v3;
  }

  inited = *(this + 7);
  if (!inited)
  {
    inited = _COREBRIGHTNESS_LOG_DEFAULT;
    if (!_COREBRIGHTNESS_LOG_DEFAULT)
    {
      inited = init_default_corebrightness_log();
    }
  }

  if (os_log_type_enabled(inited, OS_LOG_TYPE_DEBUG))
  {
    sub_CE04();
  }

  if (CFStringCompare(a2, @"AmbientLightControlPreferences", 0) == kCFCompareEqualTo)
  {
    v8 = CFGetTypeID(a3);
    if (v8 == CFDictionaryGetTypeID())
    {
      AppleUSBALS::setKeyboardPreferences(this, a3, 1);
      AppleUSBALS::setDisplayPreferences(this, a3, 1);
      return 1;
    }
  }

  if (CFEqual(a2, @"ReportInterval"))
  {
    valuePtr[0] = 0;
    v9 = CFGetTypeID(a3);
    if (v9 == CFNumberGetTypeID() && CFNumberGetValue(a3, kCFNumberIntType, valuePtr))
    {
      v10 = valuePtr[0] / 0x3E8;
      valuePtr[0] /= 0x3E8u;
      v11 = *(this + 7);
      if (!v11)
      {
        v11 = _COREBRIGHTNESS_LOG_DEFAULT;
        if (!_COREBRIGHTNESS_LOG_DEFAULT)
        {
          v11 = init_default_corebrightness_log();
          v10 = valuePtr[0];
        }
      }

      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        buf[0] = 67109120;
        buf[1] = v10;
        _os_log_impl(&dword_0, v11, OS_LOG_TYPE_INFO, "Setting %u ms report interval", buf, 8u);
        v10 = valuePtr[0];
      }

      Element = AppleUSBALS::getElement(this, 32, 782, kIOHIDElementTypeFeature);
      if (!AppleUSBALS::setElementIntValue(this, Element, v10))
      {
        return 1;
      }

      v13 = *(this + 7);
      if (!v13)
      {
        v13 = _COREBRIGHTNESS_LOG_DEFAULT;
        if (!_COREBRIGHTNESS_LOG_DEFAULT)
        {
          v13 = init_default_corebrightness_log();
        }
      }

      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_CE80();
      }
    }

    return 0;
  }

  if (CFEqual(a2, @"BatchInterval"))
  {
    return 1;
  }

  if (CFEqual(a2, @"SensorPowerState"))
  {
    if (*(this + 22) == 257)
    {
      v14 = *(this + 7);
      if (!v14)
      {
        v14 = _COREBRIGHTNESS_LOG_DEFAULT;
        if (!_COREBRIGHTNESS_LOG_DEFAULT)
        {
          v14 = init_default_corebrightness_log();
        }
      }

      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_CF2C();
      }

      return 0;
    }

    v16 = mach_absolute_time();
    v17 = CFGetTypeID(a3);
    if (v17 == CFNumberGetTypeID())
    {
      buf[0] = 0;
      if (CFNumberGetValue(a3, kCFNumberSInt32Type, buf))
      {
        if ((buf[0] - 2129) <= 4)
        {
          v18 = IOHIDTransactionCreate(kCFAllocatorDefault, *(this + 18), kIOHIDTransactionDirectionTypeOutput, 0);
          if (v18)
          {
            for (i = 2128; i != 2134; ++i)
            {
              v20 = AppleUSBALS::getElement(this, 32, i, kIOHIDElementTypeFeature);
              if (v20)
              {
                v21 = IOHIDValueCreateWithIntegerValue(kCFAllocatorDefault, v20, v16, i == buf[0]);
                if (v21)
                {
                  IOHIDTransactionAddElement(v18, v20);
                  IOHIDTransactionSetValue(v18, v20, v21, 0);
                  CFRelease(v21);
                }
              }
            }

            v3 = IOHIDTransactionCommit(v18) == 0;
            CFRelease(v18);
          }

          else
          {
            v3 = 0;
          }

          v37 = *(this + 7);
          if (!v37)
          {
            v37 = _COREBRIGHTNESS_LOG_DEFAULT;
            if (!_COREBRIGHTNESS_LOG_DEFAULT)
            {
              v37 = init_default_corebrightness_log();
            }
          }

          if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
          {
            sub_CEB4(buf);
          }

          return v3;
        }
      }
    }

    return 0;
  }

  if (!CFEqual(a2, @"SensorReportingState"))
  {
    if (CFEqual(a2, @"SensorRelativeSensitivity"))
    {
      v22 = CFGetTypeID(a3);
      if (v22 != CFNumberGetTypeID())
      {
        return 0;
      }

      buf[0] = 0;
      if (!CFNumberGetValue(a3, kCFNumberFloatType, buf))
      {
        v38 = *(this + 7);
        if (!v38)
        {
          v38 = _COREBRIGHTNESS_LOG_DEFAULT;
          if (!_COREBRIGHTNESS_LOG_DEFAULT)
          {
            v38 = init_default_corebrightness_log();
          }
        }

        if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
        {
          sub_D07C();
        }

        return 0;
      }

      v23 = AppleUSBALS::getElement(this, 32, 58577, kIOHIDElementTypeFeature);
      if (!v23)
      {
        return 0;
      }

      v24 = *(this + 7);
      if (!v24)
      {
        v24 = _COREBRIGHTNESS_LOG_DEFAULT;
        if (!_COREBRIGHTNESS_LOG_DEFAULT)
        {
          v24 = init_default_corebrightness_log();
        }
      }

      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
      {
        sub_D00C(buf);
      }

      ScaledValue = AppleUSBALS::createScaledValue(this, v23, *buf);
      if (!ScaledValue)
      {
        return 0;
      }

      v26 = *(this + 18);
      if (!v26)
      {
        v3 = 0;
        goto LABEL_529;
      }

      goto LABEL_96;
    }

    if (CFEqual(a2, @"SensorAbsoluteSensitivity"))
    {
      v33 = CFGetTypeID(a3);
      if (v33 != CFNumberGetTypeID())
      {
        return 0;
      }

      buf[0] = 0;
      if (!CFNumberGetValue(a3, kCFNumberFloatType, buf))
      {
        return 0;
      }

      v23 = AppleUSBALS::getElement(this, 32, 5329, kIOHIDElementTypeFeature);
      if (!v23)
      {
        return 0;
      }

      v34 = *(this + 7);
      if (!v34)
      {
        v34 = _COREBRIGHTNESS_LOG_DEFAULT;
        if (!_COREBRIGHTNESS_LOG_DEFAULT)
        {
          v34 = init_default_corebrightness_log();
        }
      }

      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
      {
        sub_D0B0(buf);
      }

      ScaledValue = AppleUSBALS::createScaledValue(this, v23, *buf);
      if (!ScaledValue)
      {
        return 0;
      }

      v26 = *(this + 18);
      if (!v26)
      {
        v3 = 0;
        goto LABEL_529;
      }

      goto LABEL_96;
    }

    if (CFEqual(a2, @"SensorAbsoluteColorSensitivity"))
    {
      v35 = CFGetTypeID(a3);
      if (v35 != CFNumberGetTypeID())
      {
        return 0;
      }

      buf[0] = 0;
      if (!CFNumberGetValue(a3, kCFNumberFloatType, buf))
      {
        return 0;
      }

      v23 = AppleUSBALS::getElement(this, 32, 5331, kIOHIDElementTypeFeature);
      if (!v23)
      {
        return 0;
      }

      v36 = *(this + 7);
      if (!v36)
      {
        v36 = _COREBRIGHTNESS_LOG_DEFAULT;
        if (!_COREBRIGHTNESS_LOG_DEFAULT)
        {
          v36 = init_default_corebrightness_log();
        }
      }

      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
      {
        sub_D120(buf);
      }

      ScaledValue = AppleUSBALS::createScaledValue(this, v23, *buf);
      if (!ScaledValue)
      {
        return 0;
      }

      v26 = *(this + 18);
      if (!v26)
      {
        v3 = 0;
        goto LABEL_529;
      }

LABEL_96:
      v3 = IOHIDDeviceSetValue(v26, v23, ScaledValue) == 0;
      goto LABEL_529;
    }

    if (CFEqual(a2, @"ColorOverride"))
    {
      v39 = CFGetTypeID(a3);
      if (v39 != CFDictionaryGetTypeID())
      {
        return 0;
      }

      Value = CFDictionaryGetValue(a3, @"OverrideValueCCT");
      v41 = Value;
      if (Value)
      {
        v42 = CFGetTypeID(Value);
        if (v42 == CFNumberGetTypeID())
        {
          CFNumberGetValue(v41, kCFNumberDoubleType, this + 440);
        }
      }

      v43 = CFDictionaryGetValue(a3, @"OverrideValueX");
      v44 = v43;
      if (v43)
      {
        v45 = CFGetTypeID(v43);
        if (v45 == CFNumberGetTypeID())
        {
          CFNumberGetValue(v44, kCFNumberDoubleType, this + 416);
        }
      }

      v46 = CFDictionaryGetValue(a3, @"OverrideValueY");
      v47 = v46;
      if (v46)
      {
        v48 = CFGetTypeID(v46);
        if (v48 == CFNumberGetTypeID())
        {
          CFNumberGetValue(v47, kCFNumberDoubleType, this + 424);
        }
      }

      v49 = CFDictionaryGetValue(a3, @"OverrideValueZ");
      v50 = v49;
      if (v49)
      {
        v51 = CFGetTypeID(v49);
        if (v51 == CFNumberGetTypeID())
        {
          CFNumberGetValue(v50, kCFNumberDoubleType, this + 432);
        }
      }

      v52 = CFDictionaryGetValue(a3, @"Override");
      v53 = v52;
      if (v52)
      {
        v54 = CFGetTypeID(v52);
        if (v54 == CFNumberGetTypeID())
        {
          CFNumberGetValue(v53, kCFNumberIntType, this + 409);
        }

        else
        {
          v71 = CFGetTypeID(v53);
          if (v71 == CFBooleanGetTypeID())
          {
            *(this + 409) = CFBooleanGetValue(v53) != 0;
          }
        }
      }

      else
      {
        *(this + 409) = 0;
      }

      v72 = CFDictionaryGetValue(a3, @"IgnoreEvents");
      v73 = v72;
      if (v72)
      {
        v74 = CFGetTypeID(v72);
        if (v74 == CFNumberGetTypeID())
        {
          CFNumberGetValue(v73, kCFNumberIntType, this + 408);
        }

        else
        {
          v75 = CFGetTypeID(v73);
          if (v75 == CFBooleanGetTypeID())
          {
            *(this + 408) = CFBooleanGetValue(v73) != 0;
          }
        }
      }

      else
      {
        *(this + 408) = 0;
      }

      v76 = *(this + 7);
      if (!v76)
      {
        v76 = _COREBRIGHTNESS_LOG_DEFAULT;
        if (!_COREBRIGHTNESS_LOG_DEFAULT)
        {
          v76 = init_default_corebrightness_log();
        }
      }

      if (os_log_type_enabled(v76, OS_LOG_TYPE_DEFAULT))
      {
        v77 = *(this + 392);
        v78 = *(this + 52);
        v79 = *(this + 53);
        v80 = *(this + 54);
        v81 = *(this + 55);
        v82 = *(this + 408);
        buf[0] = 67110400;
        buf[1] = v77;
        LOWORD(buf[2]) = 2048;
        *(&buf[2] + 2) = v78;
        HIWORD(buf[4]) = 2048;
        *&buf[5] = v79;
        LOWORD(buf[7]) = 2048;
        *(&buf[7] + 2) = v80;
        HIWORD(buf[9]) = 2048;
        *&buf[10] = v81;
        v257 = 1024;
        v258 = v82;
        _os_log_impl(&dword_0, v76, OS_LOG_TYPE_DEFAULT, "override: %d; override values: X=%f Y=%f Z=%f CCT=%f; ignoreEvents: %d", buf, 0x36u);
      }

      v83 = *(this + 30);
      if (v83)
      {
        CFDictionarySetValue(v83, a2, a3);
      }

LABEL_171:
      (*(*this + 88))(this, @"InjectEvent", kCFBooleanTrue);
      return 1;
    }

    if (CFEqual(a2, @"LuxOverride"))
    {
      v56 = CFGetTypeID(a3);
      if (v56 != CFDictionaryGetTypeID())
      {
        return 0;
      }

      v57 = CFDictionaryGetValue(a3, @"Value");
      v58 = v57;
      if (v57)
      {
        v59 = CFGetTypeID(v57);
        if (v59 == CFNumberGetTypeID())
        {
          CFNumberGetValue(v58, kCFNumberDoubleType, this + 400);
        }
      }

      v60 = CFDictionaryGetValue(a3, @"Override");
      v61 = v60;
      if (v60)
      {
        v62 = CFGetTypeID(v60);
        if (v62 == CFNumberGetTypeID())
        {
          CFNumberGetValue(v61, kCFNumberIntType, this + 392);
        }

        else
        {
          v86 = CFGetTypeID(v61);
          if (v86 == CFBooleanGetTypeID())
          {
            *(this + 392) = CFBooleanGetValue(v61) != 0;
          }
        }
      }

      else
      {
        *(this + 392) = 0;
      }

      v87 = CFDictionaryGetValue(a3, @"IgnoreEvents");
      v88 = v87;
      if (v87)
      {
        v89 = CFGetTypeID(v87);
        if (v89 == CFNumberGetTypeID())
        {
          CFNumberGetValue(v88, kCFNumberIntType, this + 408);
        }

        else
        {
          v90 = CFGetTypeID(v88);
          if (v90 == CFBooleanGetTypeID())
          {
            *(this + 408) = CFBooleanGetValue(v88) != 0;
          }
        }
      }

      else
      {
        *(this + 408) = 0;
      }

      v91 = *(this + 7);
      if (!v91)
      {
        v91 = _COREBRIGHTNESS_LOG_DEFAULT;
        if (!_COREBRIGHTNESS_LOG_DEFAULT)
        {
          v91 = init_default_corebrightness_log();
        }
      }

      if (os_log_type_enabled(v91, OS_LOG_TYPE_DEFAULT))
      {
        v92 = *(this + 392);
        v93 = *(this + 50);
        v94 = *(this + 408);
        buf[0] = 67109632;
        buf[1] = v92;
        LOWORD(buf[2]) = 1024;
        *(&buf[2] + 2) = v93;
        HIWORD(buf[3]) = 1024;
        buf[4] = v94;
        _os_log_impl(&dword_0, v91, OS_LOG_TYPE_DEFAULT, "override: %d; override with value: %u; ignoreEvents: %d", buf, 0x14u);
      }

      v95 = *(this + 30);
      if (v95)
      {
        CFDictionarySetValue(v95, a2, a3);
      }

      goto LABEL_171;
    }

    if (CFEqual(a2, @"InjectEvent"))
    {
      v63 = 328;
      if (*(this + 392))
      {
        v63 = 400;
      }

      *buf = *(this + v63);
      v64 = CFGetTypeID(a3);
      if (v64 == CFNumberGetTypeID())
      {
        CFNumberGetValue(a3, kCFNumberDoubleType, buf);
      }

      v65 = *(this + 409);
      v66 = *buf;
      mach_absolute_time();
      v67 = 336;
      if (v65)
      {
        v67 = 416;
      }

      v68 = 344;
      if (v65)
      {
        v68 = 424;
      }

      v69 = 352;
      if (v65)
      {
        v69 = 432;
      }

      v70 = 360;
      if (v65)
      {
        v70 = 440;
      }

      AppleUSBALS::dispatchAmbientLightSensorEvent(this, v66, *(this + v67), *(this + v68), *(this + v69), *(this + v70));
      return 1;
    }

    if (CFEqual(a2, @"kUSBContainerID"))
    {
      v84 = CFGetTypeID(a3);
      if (v84 == CFStringGetTypeID())
      {
        CFDictionarySetValue(*(this + 30), @"kUSBContainerID", a3);
        v85 = *(this + 7);
        if (!v85)
        {
          v85 = _COREBRIGHTNESS_LOG_DEFAULT;
          if (!_COREBRIGHTNESS_LOG_DEFAULT)
          {
            v85 = init_default_corebrightness_log();
          }
        }

        if (os_log_type_enabled(v85, OS_LOG_TYPE_DEFAULT))
        {
          buf[0] = 138543362;
          *&buf[1] = a3;
          _os_log_impl(&dword_0, v85, OS_LOG_TYPE_DEFAULT, "override container ID: %{public}@", buf, 0xCu);
        }
      }

      return 0;
    }

    if (*(this + 80) != 1)
    {
      return 0;
    }

    if (CFEqual(a2, @"DFRNits"))
    {
      v96 = *(this + 18);
      if (!v96)
      {
        return 0;
      }

      v97 = IOHIDTransactionCreate(kCFAllocatorDefault, v96, kIOHIDTransactionDirectionTypeOutput, 0);
      if (!v97)
      {
        return 0;
      }

      v98 = AppleUSBALS::getElement(this, 65298, 16, kIOHIDElementTypeFeature);
      AppleUSBALS::addElementValueToTransaction(this, v97, v98, 2);
      TypeID = CFNumberGetTypeID();
      if (TypeID == CFGetTypeID(a3))
      {
        buf[0] = 0;
        if (CFNumberGetValue(a3, kCFNumberFloat32Type, buf))
        {
          v100 = AppleUSBALS::getElement(this, 65298, 17, kIOHIDElementTypeFeature);
          AppleUSBALS::addElementValueToTransaction(this, v97, v100, (*buf * 1000.0));
        }
      }

      else
      {
        v110 = CFDictionaryGetTypeID();
        if (v110 == CFGetTypeID(a3))
        {
          buf[0] = 0;
          valuePtr[0] = 0;
          v111 = CFDictionaryGetValue(a3, @"Brightness");
          if (v111)
          {
            v112 = CFNumberGetTypeID();
            if (v112 == CFGetTypeID(v111))
            {
              CFNumberGetValue(v111, kCFNumberFloat32Type, buf);
              v113 = AppleUSBALS::getElement(this, 65298, 17, kIOHIDElementTypeFeature);
              AppleUSBALS::addElementValueToTransaction(this, v97, v113, (*buf * 1000.0));
            }
          }

          v114 = CFDictionaryGetValue(a3, @"Period");
          if (v114)
          {
            v115 = CFNumberGetTypeID();
            if (v115 == CFGetTypeID(v114))
            {
              CFNumberGetValue(v114, kCFNumberFloat32Type, valuePtr);
              v116 = AppleUSBALS::getElement(this, 65298, 19, kIOHIDElementTypeFeature);
              AppleUSBALS::addElementValueToTransaction(this, v97, v116, (*valuePtr * 1000.0));
            }
          }
        }
      }

      goto LABEL_238;
    }

    if (CFEqual(a2, @"DFRDisplayState"))
    {
      v101 = *(this + 18);
      if (!v101)
      {
        return 0;
      }

      if (!*(this + 23))
      {
        return 0;
      }

      v102 = IOHIDTransactionCreate(kCFAllocatorDefault, v101, kIOHIDTransactionDirectionTypeOutput, 0);
      if (!v102)
      {
        return 0;
      }

      v103 = *(this + 7);
      if (!v103)
      {
        v103 = _COREBRIGHTNESS_LOG_DEFAULT;
        if (!_COREBRIGHTNESS_LOG_DEFAULT)
        {
          v103 = init_default_corebrightness_log();
        }
      }

      if (os_log_type_enabled(v103, OS_LOG_TYPE_DEFAULT))
      {
        buf[0] = 138543362;
        *&buf[1] = a3;
        _os_log_impl(&dword_0, v103, OS_LOG_TYPE_DEFAULT, "display state input: %{public}@", buf, 0xCu);
      }

      *buf = 0;
      *&buf[2] = buf;
      *&buf[4] = 0x2000000000;
      *&buf[6] = 0;
      v104 = CFNumberGetTypeID();
      if (v104 == CFGetTypeID(a3))
      {
        if (CFNumberGetValue(a3, kCFNumberLongType, (*&buf[2] + 24)))
        {
          AppleUSBALS::addElementValueToTransaction(this, v102, *(this + 23), *(*&buf[2] + 24));
        }
      }

      else
      {
        v121 = CFDictionaryGetTypeID();
        if (v121 == CFGetTypeID(a3))
        {
          valuePtr[0] = 0;
          v122 = CFDictionaryGetValue(a3, @"State");
          if (v122)
          {
            v123 = CFNumberGetTypeID();
            if (v123 == CFGetTypeID(v122))
            {
              if (CFNumberGetValue(v122, kCFNumberLongType, (*&buf[2] + 24)))
              {
                AppleUSBALS::addElementValueToTransaction(this, v102, *(this + 23), *(*&buf[2] + 24));
                v124 = *(this + 7);
                if (!v124)
                {
                  v124 = _COREBRIGHTNESS_LOG_DEFAULT;
                  if (!_COREBRIGHTNESS_LOG_DEFAULT)
                  {
                    v124 = init_default_corebrightness_log();
                  }
                }

                if (os_log_type_enabled(v124, OS_LOG_TYPE_DEBUG))
                {
                  ReportID = IOHIDElementGetReportID(*(this + 23));
                  sub_D1C4(v254, ReportID, v124);
                }
              }
            }
          }

          v126 = CFDictionaryGetValue(a3, @"Period");
          if (v126)
          {
            v127 = CFNumberGetTypeID();
            if (v127 == CFGetTypeID(v126))
            {
              CFNumberGetValue(v126, kCFNumberFloat32Type, valuePtr);
              AppleUSBALS::addElementValueToTransaction(this, v102, *(this + 24), (*valuePtr * 1000.0));
              v128 = *(this + 7);
              if (!v128)
              {
                v128 = _COREBRIGHTNESS_LOG_DEFAULT;
                if (!_COREBRIGHTNESS_LOG_DEFAULT)
                {
                  v128 = init_default_corebrightness_log();
                }
              }

              if (os_log_type_enabled(v128, OS_LOG_TYPE_DEBUG))
              {
                v129 = IOHIDElementGetReportID(*(this + 24));
                sub_D20C(v253, v129, v128);
              }
            }
          }
        }

        else
        {
          v134 = *(this + 7);
          if (!v134)
          {
            v134 = _COREBRIGHTNESS_LOG_DEFAULT;
            if (!_COREBRIGHTNESS_LOG_DEFAULT)
            {
              v134 = init_default_corebrightness_log();
            }
          }

          if (os_log_type_enabled(v134, OS_LOG_TYPE_ERROR))
          {
            sub_D190();
          }
        }
      }

      if (*(*&buf[2] + 24) == 2)
      {
        if (notify_is_valid_token(*(this + 81)))
        {
          notify_set_state(*(this + 81), 2uLL);
          notify_post("com.apple.DFRBrightness.displayStateUpdate");
        }

        else
        {
          v135 = *(this + 7);
          if (!v135)
          {
            v135 = _COREBRIGHTNESS_LOG_DEFAULT;
            if (!_COREBRIGHTNESS_LOG_DEFAULT)
            {
              v135 = init_default_corebrightness_log();
            }
          }

          if (os_log_type_enabled(v135, OS_LOG_TYPE_ERROR))
          {
            sub_D254();
          }
        }
      }

      v136 = *(this + 7);
      if (!v136)
      {
        v136 = _COREBRIGHTNESS_LOG_DEFAULT;
        if (!_COREBRIGHTNESS_LOG_DEFAULT)
        {
          v136 = init_default_corebrightness_log();
        }
      }

      if (os_log_type_enabled(v136, OS_LOG_TYPE_DEFAULT))
      {
        v137 = *(*&buf[2] + 24);
        valuePtr[0] = 134217984;
        *&valuePtr[1] = v137;
        _os_log_impl(&dword_0, v136, OS_LOG_TYPE_DEFAULT, "setting DFR state = %lu", valuePtr, 0xCu);
      }

      if (*(this + 8))
      {
        CFRetain(v102);
        v138 = *(this + 8);
        block[0] = _NSConcreteStackBlock;
        block[1] = 0x40000000;
        block[2] = sub_9F50;
        block[3] = &unk_14608;
        block[4] = buf;
        block[5] = this;
        block[6] = v102;
        dispatch_async(v138, block);
        v3 = 1;
      }

      else
      {
        v139 = *(this + 7);
        if (!v139)
        {
          v139 = _COREBRIGHTNESS_LOG_DEFAULT;
          if (!_COREBRIGHTNESS_LOG_DEFAULT)
          {
            v139 = init_default_corebrightness_log();
          }
        }

        if (os_log_type_enabled(v139, OS_LOG_TYPE_DEBUG))
        {
          sub_D288();
        }

        v140 = *(*&buf[2] + 24);
        kdebug_trace();
        v141 = IOHIDTransactionCommit(v102);
        if (v141)
        {
          v142 = *(this + 7);
          if (!v142)
          {
            v142 = _COREBRIGHTNESS_LOG_DEFAULT;
            if (!_COREBRIGHTNESS_LOG_DEFAULT)
            {
              v142 = init_default_corebrightness_log();
            }
          }

          if (os_log_type_enabled(v142, OS_LOG_TYPE_ERROR))
          {
            sub_D2FC();
          }

          v3 = 0;
        }

        else
        {
          v3 = 1;
        }

        v149 = *(this + 7);
        if (!v149)
        {
          v149 = _COREBRIGHTNESS_LOG_DEFAULT;
          if (!_COREBRIGHTNESS_LOG_DEFAULT)
          {
            v149 = init_default_corebrightness_log();
          }
        }

        if (os_log_type_enabled(v149, OS_LOG_TYPE_DEBUG))
        {
          sub_D36C();
        }

        v150 = *(*&buf[2] + 24);
        kdebug_trace();
        if (!v141 && *(*&buf[2] + 24) == 1)
        {
          if (notify_is_valid_token(*(this + 81)))
          {
            notify_set_state(*(this + 81), 1uLL);
            notify_post("com.apple.DFRBrightness.displayStateUpdate");
          }

          else
          {
            v208 = *(this + 7);
            if (!v208)
            {
              v208 = _COREBRIGHTNESS_LOG_DEFAULT;
              if (!_COREBRIGHTNESS_LOG_DEFAULT)
              {
                v208 = init_default_corebrightness_log();
              }
            }

            if (os_log_type_enabled(v208, OS_LOG_TYPE_ERROR))
            {
              sub_D254();
            }
          }
        }
      }

      _Block_object_dispose(buf, 8);
      CFRelease(v102);
      return v3;
    }

    if (CFEqual(a2, @"DFRDisplayFactor"))
    {
      v105 = *(this + 18);
      if (!v105)
      {
        return 0;
      }

      if (!*(this + 23))
      {
        return 0;
      }

      v106 = IOHIDTransactionCreate(kCFAllocatorDefault, v105, kIOHIDTransactionDirectionTypeOutput, 0);
      if (!v106)
      {
        return 0;
      }

      v107 = *(this + 7);
      if (!v107)
      {
        v107 = _COREBRIGHTNESS_LOG_DEFAULT;
        if (!_COREBRIGHTNESS_LOG_DEFAULT)
        {
          v107 = init_default_corebrightness_log();
        }
      }

      if (os_log_type_enabled(v107, OS_LOG_TYPE_DEFAULT))
      {
        buf[0] = 138543362;
        *&buf[1] = a3;
        _os_log_impl(&dword_0, v107, OS_LOG_TYPE_DEFAULT, "display factor input: %{public}@", buf, 0xCu);
      }

      *buf = 0;
      *&buf[2] = buf;
      *&buf[4] = 0x2000000000;
      *&buf[6] = 0;
      v108 = CFNumberGetTypeID();
      if (v108 == CFGetTypeID(a3))
      {
        valuePtr[0] = 0;
        if (CFNumberGetValue(a3, kCFNumberFloat32Type, valuePtr))
        {
          if (*valuePtr <= 0.0)
          {
            v109 = 1;
          }

          else
          {
            v109 = 2;
          }

          *(*&buf[2] + 24) = v109;
          AppleUSBALS::addElementValueToTransaction(this, v106, *(this + 23), v109);
        }
      }

      else
      {
        v143 = CFDictionaryGetTypeID();
        if (v143 == CFGetTypeID(a3))
        {
          valuePtr[0] = 0;
          v144 = CFDictionaryGetValue(a3, @"Factor");
          if (v144)
          {
            v145 = CFNumberGetTypeID();
            if (v145 == CFGetTypeID(v144))
            {
              *v254 = 0.0;
              if (CFNumberGetValue(v144, kCFNumberFloat32Type, v254))
              {
                if (*v254 <= 0.0)
                {
                  v146 = 1;
                }

                else
                {
                  v146 = 2;
                }

                *(*&buf[2] + 24) = v146;
                AppleUSBALS::addElementValueToTransaction(this, v106, *(this + 23), v146);
              }
            }
          }

          v147 = CFDictionaryGetValue(a3, @"Period");
          if (v147)
          {
            v148 = CFNumberGetTypeID();
            if (v148 == CFGetTypeID(v147))
            {
              CFNumberGetValue(v147, kCFNumberFloat32Type, valuePtr);
              AppleUSBALS::addElementValueToTransaction(this, v106, *(this + 24), (*valuePtr * 1000.0));
            }
          }
        }

        else
        {
          v178 = *(this + 7);
          if (!v178)
          {
            v178 = _COREBRIGHTNESS_LOG_DEFAULT;
            if (!_COREBRIGHTNESS_LOG_DEFAULT)
            {
              v178 = init_default_corebrightness_log();
            }
          }

          if (os_log_type_enabled(v178, OS_LOG_TYPE_ERROR))
          {
            sub_D190();
          }
        }
      }

      v179 = *(this + 7);
      if (!v179)
      {
        v179 = _COREBRIGHTNESS_LOG_DEFAULT;
        if (!_COREBRIGHTNESS_LOG_DEFAULT)
        {
          v179 = init_default_corebrightness_log();
        }
      }

      if (os_log_type_enabled(v179, OS_LOG_TYPE_DEFAULT))
      {
        v180 = *(*&buf[2] + 24);
        valuePtr[0] = 134217984;
        *&valuePtr[1] = v180;
        _os_log_impl(&dword_0, v179, OS_LOG_TYPE_DEFAULT, "setting DFR state = %lu", valuePtr, 0xCu);
      }

      if (*(*&buf[2] + 24) == 2)
      {
        if (notify_is_valid_token(*(this + 81)))
        {
          notify_set_state(*(this + 81), 2uLL);
          notify_post("com.apple.DFRBrightness.displayStateUpdate");
        }

        else
        {
          v181 = *(this + 7);
          if (!v181)
          {
            v181 = _COREBRIGHTNESS_LOG_DEFAULT;
            if (!_COREBRIGHTNESS_LOG_DEFAULT)
            {
              v181 = init_default_corebrightness_log();
            }
          }

          if (os_log_type_enabled(v181, OS_LOG_TYPE_ERROR))
          {
            sub_D254();
          }
        }
      }

      if (*(this + 8))
      {
        CFRetain(v106);
        v182 = *(this + 8);
        v250[0] = _NSConcreteStackBlock;
        v250[1] = 0x40000000;
        v250[2] = sub_A114;
        v250[3] = &unk_14630;
        v250[4] = buf;
        v250[5] = this;
        v250[6] = v106;
        dispatch_async(v182, v250);
        v3 = 1;
      }

      else
      {
        v183 = *(this + 7);
        if (!v183)
        {
          v183 = _COREBRIGHTNESS_LOG_DEFAULT;
          if (!_COREBRIGHTNESS_LOG_DEFAULT)
          {
            v183 = init_default_corebrightness_log();
          }
        }

        if (os_log_type_enabled(v183, OS_LOG_TYPE_DEBUG))
        {
          sub_D288();
        }

        v184 = *(*&buf[2] + 24);
        kdebug_trace();
        v185 = IOHIDTransactionCommit(v106);
        if (v185)
        {
          v186 = *(this + 7);
          if (!v186)
          {
            v186 = _COREBRIGHTNESS_LOG_DEFAULT;
            if (!_COREBRIGHTNESS_LOG_DEFAULT)
            {
              v186 = init_default_corebrightness_log();
            }
          }

          if (os_log_type_enabled(v186, OS_LOG_TYPE_ERROR))
          {
            sub_D2FC();
          }

          v3 = 0;
        }

        else
        {
          v3 = 1;
        }

        v187 = *(this + 7);
        if (!v187)
        {
          v187 = _COREBRIGHTNESS_LOG_DEFAULT;
          if (!_COREBRIGHTNESS_LOG_DEFAULT)
          {
            v187 = init_default_corebrightness_log();
          }
        }

        if (os_log_type_enabled(v187, OS_LOG_TYPE_DEBUG))
        {
          sub_D36C();
        }

        v188 = *(*&buf[2] + 24);
        kdebug_trace();
        if (!v185 && *(*&buf[2] + 24) == 1)
        {
          if (notify_is_valid_token(*(this + 81)))
          {
            notify_set_state(*(this + 81), 1uLL);
            notify_post("com.apple.DFRBrightness.displayStateUpdate");
          }

          else
          {
            v213 = *(this + 7);
            if (!v213)
            {
              v213 = _COREBRIGHTNESS_LOG_DEFAULT;
              if (!_COREBRIGHTNESS_LOG_DEFAULT)
              {
                v213 = init_default_corebrightness_log();
              }
            }

            if (os_log_type_enabled(v213, OS_LOG_TYPE_ERROR))
            {
              sub_D254();
            }
          }
        }
      }

      _Block_object_dispose(buf, 8);
      CFRelease(v106);
      return v3;
    }

    if (CFEqual(a2, @"DFRAutoBrightness"))
    {
      v117 = CFNumberGetTypeID();
      if (v117 != CFGetTypeID(a3))
      {
        return 0;
      }

      buf[0] = 0;
      if (!CFNumberGetValue(a3, kCFNumberIntType, buf))
      {
        return 0;
      }

      v118 = IOHIDTransactionCreate(kCFAllocatorDefault, *(this + 18), kIOHIDTransactionDirectionTypeOutput, 0);
      if (!v118)
      {
        return 0;
      }

      v119 = AppleUSBALS::getElement(this, 65298, 65, kIOHIDElementTypeFeature);
      if (buf[0])
      {
        v120 = 2;
      }

      else
      {
        v120 = 1;
      }

      AppleUSBALS::addElementValueToTransaction(this, v118, v119, v120);
      v3 = IOHIDTransactionCommit(v118) == 0;
      CFRelease(v118);
      return v3;
    }

    if (CFEqual(a2, @"DFRDimmingStep"))
    {
      v130 = CFNumberGetTypeID();
      if (v130 == CFGetTypeID(a3))
      {
        v131 = *(this + 18);
        if (!v131)
        {
          return 0;
        }

        if (!*(this + 19))
        {
          return 0;
        }

        v132 = IOHIDTransactionCreate(kCFAllocatorDefault, v131, kIOHIDTransactionDirectionTypeOutput, 0);
        if (!v132)
        {
          return 0;
        }

        valuePtr[0] = 0;
        v3 = 0;
        if (CFNumberGetValue(a3, kCFNumberIntType, valuePtr) && valuePtr[0])
        {
          AppleUSBALS::addElementValueToTransaction(this, v132, *(this + 21), 1);
          AppleUSBALS::addElementValueToTransaction(this, v132, *(this + 19), valuePtr[0]);
          v133 = *(this + 7);
          if (!v133)
          {
            v133 = _COREBRIGHTNESS_LOG_DEFAULT;
            if (!_COREBRIGHTNESS_LOG_DEFAULT)
            {
              v133 = init_default_corebrightness_log();
            }
          }

          if (os_log_type_enabled(v133, OS_LOG_TYPE_DEBUG))
          {
            sub_D3E0();
          }

          kdebug_trace();
          if (IOHIDTransactionCommit(v132))
          {
            v3 = 0;
          }

          else
          {
            v224 = *(this + 7);
            if (!v224)
            {
              v224 = _COREBRIGHTNESS_LOG_DEFAULT;
              if (!_COREBRIGHTNESS_LOG_DEFAULT)
              {
                v224 = init_default_corebrightness_log();
              }
            }

            if (os_log_type_enabled(v224, OS_LOG_TYPE_DEFAULT))
            {
              buf[0] = 67109120;
              buf[1] = valuePtr[0];
              _os_log_impl(&dword_0, v224, OS_LOG_TYPE_DEFAULT, "setting dimming step %u", buf, 8u);
            }

            v3 = 1;
          }

          v225 = *(this + 7);
          if (!v225)
          {
            v225 = _COREBRIGHTNESS_LOG_DEFAULT;
            if (!_COREBRIGHTNESS_LOG_DEFAULT)
            {
              v225 = init_default_corebrightness_log();
            }
          }

          if (os_log_type_enabled(v225, OS_LOG_TYPE_DEBUG))
          {
            sub_D45C();
          }

          kdebug_trace();
        }
      }

      else
      {
        v173 = CFDictionaryGetTypeID();
        if (v173 != CFGetTypeID(a3))
        {
          return 0;
        }

        v174 = *(this + 18);
        if (!v174)
        {
          return 0;
        }

        v132 = IOHIDTransactionCreate(kCFAllocatorDefault, v174, kIOHIDTransactionDirectionTypeOutput, 0);
        if (!v132)
        {
          return 0;
        }

        valuePtr[0] = 0;
        *v254 = 0.5;
        *v253 = -1.0;
        v175 = CFDictionaryGetValue(a3, @"Step");
        if (v175)
        {
          v176 = CFNumberGetTypeID();
          if (v176 == CFGetTypeID(v175))
          {
            v177 = CFNumberGetValue(v175, kCFNumberIntType, valuePtr);
            v175 = 0;
            if (v177 && valuePtr[0])
            {
              AppleUSBALS::addElementValueToTransaction(this, v132, *(this + 19), valuePtr[0]);
              v175 = 1;
            }
          }

          else
          {
            v175 = 0;
          }
        }

        v219 = CFDictionaryGetValue(a3, @"Factor");
        if (v219)
        {
          v220 = CFNumberGetTypeID();
          if (v220 == CFGetTypeID(v219))
          {
            CFNumberGetValue(v219, kCFNumberFloat32Type, v253);
            AppleUSBALS::addElementValueToTransaction(this, v132, *(this + 22), (*v253 * 1000.0));
            v175 |= 4uLL;
          }
        }

        v221 = CFDictionaryGetValue(a3, @"Period");
        if (v221)
        {
          v222 = CFNumberGetTypeID();
          if (v222 == CFGetTypeID(v221))
          {
            CFNumberGetValue(v221, kCFNumberFloat32Type, v254);
            AppleUSBALS::addElementValueToTransaction(this, v132, *(this + 20), (*v254 * 1000.0));
            v175 |= 2uLL;
          }
        }

        if (v175)
        {
          AppleUSBALS::addElementValueToTransaction(this, v132, *(this + 21), v175);
          v223 = *(this + 7);
          if (!v223)
          {
            v223 = _COREBRIGHTNESS_LOG_DEFAULT;
            if (!_COREBRIGHTNESS_LOG_DEFAULT)
            {
              v223 = init_default_corebrightness_log();
            }
          }

          if (os_log_type_enabled(v223, OS_LOG_TYPE_DEBUG))
          {
            sub_D3E0();
          }

          kdebug_trace();
          if (IOHIDTransactionCommit(v132))
          {
            v3 = 0;
          }

          else
          {
            v226 = *(this + 7);
            if (!v226)
            {
              v226 = _COREBRIGHTNESS_LOG_DEFAULT;
              if (!_COREBRIGHTNESS_LOG_DEFAULT)
              {
                v226 = init_default_corebrightness_log();
              }
            }

            if (os_log_type_enabled(v226, OS_LOG_TYPE_DEFAULT))
            {
              buf[0] = 67109120;
              buf[1] = valuePtr[0];
              _os_log_impl(&dword_0, v226, OS_LOG_TYPE_DEFAULT, "setting dimming step %u", buf, 8u);
            }

            v3 = 1;
          }

          v227 = *(this + 7);
          if (!v227)
          {
            v227 = _COREBRIGHTNESS_LOG_DEFAULT;
            if (!_COREBRIGHTNESS_LOG_DEFAULT)
            {
              v227 = init_default_corebrightness_log();
            }
          }

          if (os_log_type_enabled(v227, OS_LOG_TYPE_DEBUG))
          {
            sub_D45C();
          }

          kdebug_trace();
        }

        else
        {
          v3 = 0;
        }
      }

LABEL_511:
      CFRelease(v132);
      return v3;
    }

    if (CFEqual(a2, @"DFRCurve"))
    {
      v151 = *(this + 18);
      if (!v151)
      {
        return 0;
      }

      v152 = IOHIDTransactionCreate(kCFAllocatorDefault, v151, kIOHIDTransactionDirectionTypeOutput, 0);
      if (!v152)
      {
        return 0;
      }

      v153 = CFDictionaryGetTypeID();
      if (v153 != CFGetTypeID(a3))
      {
        goto LABEL_358;
      }

      *v253 = 0.0;
      v154 = CFDictionaryGetValue(a3, @"Period");
      if (v154)
      {
        v155 = CFNumberGetTypeID();
        if (v155 == CFGetTypeID(v154))
        {
          CFNumberGetValue(v154, kCFNumberFloat32Type, v253);
        }
      }

      v156 = CFDictionaryGetValue(a3, @"L");
      v157 = CFDictionaryGetValue(a3, @"E");
      if (!v156)
      {
        goto LABEL_358;
      }

      v158 = v157;
      v159 = CFArrayGetTypeID();
      if (v159 != CFGetTypeID(v156))
      {
        goto LABEL_358;
      }

      if (!v158)
      {
        goto LABEL_358;
      }

      v160 = CFArrayGetTypeID();
      if (v160 != CFGetTypeID(v158) || CFArrayGetCount(v156) > 12)
      {
        goto LABEL_358;
      }

      Count = CFArrayGetCount(v156);
      memset(buf, 0, sizeof(buf));
      memset(valuePtr, 0, sizeof(valuePtr));
      v161 = *(this + 7);
      if (!v161)
      {
        v161 = _COREBRIGHTNESS_LOG_DEFAULT;
        if (!_COREBRIGHTNESS_LOG_DEFAULT)
        {
          v161 = init_default_corebrightness_log();
        }
      }

      if (os_log_type_enabled(v161, OS_LOG_TYPE_DEBUG))
      {
        v162 = Count;
        *v254 = 1.5047e-36;
        v255 = Count;
        _os_log_debug_impl(&dword_0, v161, OS_LOG_TYPE_DEBUG, "set DFR curve with size = %d\n", v254, 8u);
        if (!Count)
        {
          goto LABEL_355;
        }
      }

      else
      {
        v162 = Count;
        if (!Count)
        {
          goto LABEL_355;
        }
      }

      v163 = 0;
      do
      {
        *v254 = 0.0;
        v249 = 0.0;
        ValueAtIndex = CFArrayGetValueAtIndex(v156, v163);
        v165 = ValueAtIndex;
        if (ValueAtIndex)
        {
          v166 = CFGetTypeID(ValueAtIndex);
          if (v166 == CFNumberGetTypeID())
          {
            CFNumberGetValue(v165, kCFNumberFloatType, v254);
            buf[v163] = (*v254 * 1000.0);
          }
        }

        v167 = CFArrayGetValueAtIndex(v158, v163);
        v168 = v167;
        if (v167)
        {
          v169 = CFGetTypeID(v167);
          if (v169 == CFNumberGetTypeID())
          {
            CFNumberGetValue(v168, kCFNumberFloatType, &v249);
            valuePtr[v163] = (v249 * 1000.0);
          }
        }

        ++v163;
      }

      while (v162 != v163);
LABEL_355:
      v170 = AppleUSBALS::getElement(this, 65298, 68, kIOHIDElementTypeFeature);
      if (AppleUSBALS::addElementValueToTransaction(this, v152, v170, 1))
      {
        goto LABEL_358;
      }

      v171 = AppleUSBALS::getElement(this, 65298, 69, kIOHIDElementTypeFeature);
      if (AppleUSBALS::addElementValueToTransaction(this, v152, v171, Count))
      {
        goto LABEL_358;
      }

      v172 = AppleUSBALS::getElement(this, 65298, 70, kIOHIDElementTypeFeature);
      if (AppleUSBALS::addElementValueToTransaction(this, v152, v172, (*v253 * 1000.0)))
      {
        goto LABEL_358;
      }

      v240 = AppleUSBALS::getElement(this, 65298, 71, kIOHIDElementTypeFeature);
      if (v240)
      {
        v241 = mach_absolute_time();
        v242 = IOHIDValueCreateWithBytes(kCFAllocatorDefault, v240, v241, valuePtr, 48);
        v243 = AppleUSBALS::getElement(this, 65298, 72, kIOHIDElementTypeFeature);
        if (!v243)
        {
          goto LABEL_557;
        }

        v244 = v242;
      }

      else
      {
        v243 = AppleUSBALS::getElement(this, 65298, 72, kIOHIDElementTypeFeature);
        if (!v243)
        {
LABEL_358:
          v3 = 0;
LABEL_359:
          CFRelease(v152);
          return v3;
        }

        v244 = 0;
      }

      v245 = mach_absolute_time();
      v246 = IOHIDValueCreateWithBytes(kCFAllocatorDefault, v243, v245, buf, 48);
      v242 = v246;
      if (v244 && v246)
      {
        IOHIDTransactionAddElement(v152, v240);
        IOHIDTransactionAddElement(v152, v243);
        IOHIDTransactionSetValue(v152, v240, v244, 0);
        IOHIDTransactionSetValue(v152, v243, v242, 0);
        v3 = IOHIDTransactionCommit(v152) == 0;
        CFRelease(v244);
        goto LABEL_558;
      }

      if (v244)
      {
        v247 = v246 != 0;
        CFRelease(v244);
        v3 = 0;
        if (!v247)
        {
          goto LABEL_359;
        }

        goto LABEL_558;
      }

LABEL_557:
      v3 = 0;
      if (!v242)
      {
        goto LABEL_359;
      }

LABEL_558:
      CFRelease(v242);
      goto LABEL_359;
    }

    if (!CFEqual(a2, @"DFRWhitepoint"))
    {
      if (!CFEqual(a2, @"DFRBrightness"))
      {
        if (!CFEqual(a2, @"DFRBurninCounter"))
        {
          if (!CFEqual(a2, @"DFRProtocolVersion"))
          {
            return 0;
          }

          v228 = CFNumberGetTypeID();
          if (v228 != CFGetTypeID(a3))
          {
            return 0;
          }

          v229 = *(this + 7);
          if (!v229)
          {
            v229 = _COREBRIGHTNESS_LOG_DEFAULT;
            if (!_COREBRIGHTNESS_LOG_DEFAULT)
            {
              v229 = init_default_corebrightness_log();
            }
          }

          if (os_log_type_enabled(v229, OS_LOG_TYPE_ERROR))
          {
            sub_D50C();
          }

          buf[0] = 0;
          if (!CFNumberGetValue(a3, kCFNumberIntType, buf))
          {
            return 0;
          }

          v230 = AppleUSBALS::setIntValueForUsage(this, 65298, 64, buf[0]);
          v231 = *(this + 7);
          if (!v231)
          {
            v231 = _COREBRIGHTNESS_LOG_DEFAULT;
            if (!_COREBRIGHTNESS_LOG_DEFAULT)
            {
              v231 = init_default_corebrightness_log();
            }
          }

          if (os_log_type_enabled(v231, OS_LOG_TYPE_ERROR))
          {
            sub_D540();
          }

          return v230 == 0;
        }

        ScaledValue = IOHIDTransactionCreate(kCFAllocatorDefault, *(this + 18), kIOHIDTransactionDirectionTypeOutput, 0);
        if (!ScaledValue)
        {
          return 0;
        }

        v214 = AppleUSBALS::getElement(this, 65298, 80, kIOHIDElementTypeFeature);
        if (!AppleUSBALS::addElementValueToTransaction(this, ScaledValue, v214, 1) && (v215 = CFNumberGetTypeID(), v215 == CFGetTypeID(a3)) && (*buf = 0, CFNumberGetValue(a3, kCFNumberLongLongType, buf)) && (v216 = AppleUSBALS::getElement(this, 65298, 81, kIOHIDElementTypeFeature)) != 0 && (v217 = mach_absolute_time(), (v218 = IOHIDValueCreateWithBytes(kCFAllocatorDefault, v216, v217, buf, 8)) != 0))
        {
          IOHIDTransactionAddElement(ScaledValue, v216);
          IOHIDTransactionSetValue(ScaledValue, v216, v218, 0);
          v3 = IOHIDTransactionCommit(ScaledValue) == 0;
          CFRelease(v218);
        }

        else
        {
          v3 = 0;
        }

LABEL_529:
        CFRelease(ScaledValue);
        return v3;
      }

      v209 = *(this + 18);
      if (!v209)
      {
        return 0;
      }

      v97 = IOHIDTransactionCreate(kCFAllocatorDefault, v209, kIOHIDTransactionDirectionTypeOutput, 0);
      if (!v97)
      {
        return 0;
      }

      v210 = AppleUSBALS::getElement(this, 65298, 16, kIOHIDElementTypeFeature);
      AppleUSBALS::addElementValueToTransaction(this, v97, v210, 1);
      v211 = CFNumberGetTypeID();
      if (v211 == CFGetTypeID(a3))
      {
        buf[0] = 0;
        if (CFNumberGetValue(a3, kCFNumberFloat32Type, buf))
        {
          v212 = AppleUSBALS::getElement(this, 65298, 18, kIOHIDElementTypeFeature);
          AppleUSBALS::addElementValueToTransaction(this, v97, v212, (*buf * 1000.0));
        }
      }

      else
      {
        v233 = CFDictionaryGetTypeID();
        if (v233 == CFGetTypeID(a3))
        {
          buf[0] = 0;
          valuePtr[0] = 0;
          v234 = CFDictionaryGetValue(a3, @"Brightness");
          if (v234)
          {
            v235 = CFNumberGetTypeID();
            if (v235 == CFGetTypeID(v234))
            {
              CFNumberGetValue(v234, kCFNumberFloat32Type, buf);
              v236 = AppleUSBALS::getElement(this, 65298, 18, kIOHIDElementTypeFeature);
              AppleUSBALS::addElementValueToTransaction(this, v97, v236, (*buf * 1000.0));
            }
          }

          v237 = CFDictionaryGetValue(a3, @"Period");
          if (v237)
          {
            v238 = CFNumberGetTypeID();
            if (v238 == CFGetTypeID(v237))
            {
              CFNumberGetValue(v237, kCFNumberFloat32Type, valuePtr);
              v239 = AppleUSBALS::getElement(this, 65298, 19, kIOHIDElementTypeFeature);
              AppleUSBALS::addElementValueToTransaction(this, v97, v239, (*valuePtr * 1000.0));
            }
          }
        }
      }

LABEL_238:
      v3 = IOHIDTransactionCommit(v97) == 0;
      CFRelease(v97);
      return v3;
    }

    v189 = *(this + 18);
    if (!v189)
    {
      return 0;
    }

    v132 = IOHIDTransactionCreate(kCFAllocatorDefault, v189, kIOHIDTransactionDirectionTypeOutput, 0);
    if (!v132)
    {
      return 0;
    }

    v190 = CFDictionaryGetTypeID();
    if (v190 != CFGetTypeID(a3))
    {
      goto LABEL_460;
    }

    v191 = *(this + 7);
    if (!v191)
    {
      v191 = _COREBRIGHTNESS_LOG_DEFAULT;
      if (!_COREBRIGHTNESS_LOG_DEFAULT)
      {
        v191 = init_default_corebrightness_log();
      }
    }

    if (os_log_type_enabled(v191, OS_LOG_TYPE_DEFAULT))
    {
      buf[0] = 138543362;
      *&buf[1] = a3;
      _os_log_impl(&dword_0, v191, OS_LOG_TYPE_DEFAULT, "whitepoint: %{public}@", buf, 0xCu);
    }

    buf[0] = 0;
    valuePtr[0] = 0;
    *v254 = 0.0;
    v192 = CFDictionaryGetValue(a3, @"Period");
    if (v192)
    {
      v193 = CFNumberGetTypeID();
      if (v193 == CFGetTypeID(v192))
      {
        CFNumberGetValue(v192, kCFNumberFloat32Type, buf);
      }
    }

    v194 = CFDictionaryGetValue(a3, @"Target_x");
    v195 = CFDictionaryGetValue(a3, @"Target_y");
    if (!v194)
    {
      goto LABEL_460;
    }

    v196 = v195;
    v197 = CFNumberGetTypeID();
    v3 = 0;
    if (v197 != CFGetTypeID(v194) || !v196)
    {
      goto LABEL_511;
    }

    v198 = CFNumberGetTypeID();
    if (v198 != CFGetTypeID(v196) || !CFNumberGetValue(v194, kCFNumberFloat32Type, valuePtr) || !CFNumberGetValue(v196, kCFNumberFloat32Type, v254))
    {
LABEL_460:
      v3 = 0;
      goto LABEL_511;
    }

    v199 = AppleUSBALS::getElement(this, 65298, 98, kIOHIDElementTypeFeature);
    if (v199)
    {
      v200 = AppleUSBALS::createScaledValue(this, v199, *buf);
      if (v200)
      {
        IOHIDTransactionAddElement(v132, v199);
        IOHIDTransactionSetValue(v132, v199, v200, 0);
        CFRelease(v200);
      }
    }

    v201 = AppleUSBALS::getElement(this, 65298, 96, kIOHIDElementTypeFeature);
    v202 = AppleUSBALS::getElement(this, 65298, 97, kIOHIDElementTypeFeature);
    v3 = 0;
    if (!v201)
    {
      goto LABEL_511;
    }

    v203 = v202;
    if (!v202)
    {
      goto LABEL_511;
    }

    v204 = AppleUSBALS::createScaledValue(this, v201, *valuePtr);
    v205 = AppleUSBALS::createScaledValue(this, v203, *v254);
    v206 = v205;
    if (v204 && v205)
    {
      IOHIDTransactionAddElement(v132, v201);
      IOHIDTransactionSetValue(v132, v201, v204, 0);
      IOHIDTransactionAddElement(v132, v203);
      IOHIDTransactionSetValue(v132, v203, v206, 0);
      if (IOHIDTransactionCommit(v132))
      {
        v207 = *(this + 7);
        if (!v207)
        {
          v207 = _COREBRIGHTNESS_LOG_DEFAULT;
          if (!_COREBRIGHTNESS_LOG_DEFAULT)
          {
            v207 = init_default_corebrightness_log();
          }
        }

        if (os_log_type_enabled(v207, OS_LOG_TYPE_ERROR))
        {
          sub_D4D8();
        }

        v3 = 0;
      }

      else
      {
        v3 = 1;
      }
    }

    else
    {
      v3 = 0;
      if (!v204)
      {
LABEL_547:
        if (v206)
        {
          CFRelease(v206);
        }

        goto LABEL_511;
      }
    }

    CFRelease(v204);
    goto LABEL_547;
  }

  if (*(this + 22) == 257)
  {
    v15 = *(this + 7);
    if (!v15)
    {
      v15 = _COREBRIGHTNESS_LOG_DEFAULT;
      if (!_COREBRIGHTNESS_LOG_DEFAULT)
      {
        v15 = init_default_corebrightness_log();
      }
    }

    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_CFD8();
    }

    return 0;
  }

  v27 = mach_absolute_time();
  v28 = CFGetTypeID(a3);
  if (v28 != CFNumberGetTypeID())
  {
    return 0;
  }

  buf[0] = 0;
  if (!CFNumberGetValue(a3, kCFNumberSInt32Type, buf) || (buf[0] - 2112) > 5)
  {
    return 0;
  }

  v29 = IOHIDTransactionCreate(kCFAllocatorDefault, *(this + 18), kIOHIDTransactionDirectionTypeOutput, 0);
  if (v29)
  {
    for (j = 2112; j != 2118; ++j)
    {
      v31 = AppleUSBALS::getElement(this, 32, j, kIOHIDElementTypeFeature);
      if (v31)
      {
        v32 = IOHIDValueCreateWithIntegerValue(kCFAllocatorDefault, v31, v27, j == buf[0]);
        if (v32)
        {
          IOHIDTransactionAddElement(v29, v31);
          IOHIDTransactionSetValue(v29, v31, v32, 0);
          CFRelease(v32);
        }
      }
    }

    v3 = IOHIDTransactionCommit(v29) == 0;
    CFRelease(v29);
  }

  else
  {
    v3 = 0;
  }

  v55 = *(this + 7);
  if (!v55)
  {
    v55 = _COREBRIGHTNESS_LOG_DEFAULT;
    if (!_COREBRIGHTNESS_LOG_DEFAULT)
    {
      v55 = init_default_corebrightness_log();
    }
  }

  if (os_log_type_enabled(v55, OS_LOG_TYPE_DEBUG))
  {
    sub_CF60(buf);
  }

  return v3;
}

void AppleUSBALS::setKeyboardPreferences(NSObject **this, CFDictionaryRef theDict, int a3)
{
  Value = CFDictionaryGetValue(theDict, @"Automatic Keyboard Enabled");
  v7 = AppleUSBALS::setPropertyInternal(this, @"Automatic Keyboard Enabled", Value, a3);
  v8 = CFDictionaryGetValue(theDict, @"Keyboard Dim Time");
  v9 = v7 | AppleUSBALS::setPropertyInternal(this, @"Keyboard Dim Time", v8, a3);
  v10 = CFDictionaryGetValue(theDict, @"Keyboard Muted");
  v11 = AppleUSBALS::setPropertyInternal(this, @"Keyboard Muted", v10, a3);
  v12 = CFDictionaryGetValue(theDict, @"Keyboard User Offset");
  v13 = v9 | v11 | AppleUSBALS::setPropertyInternal(this, @"Keyboard User Offset", v12, a3);
  v14 = CFDictionaryGetValue(theDict, @"Keyboard Manual Brightness");
  v15 = AppleUSBALS::setPropertyInternal(this, @"Keyboard Manual Brightness", v14, a3);
  v16 = CFDictionaryGetValue(theDict, @"Keyboard Version");
  v17 = v15 | AppleUSBALS::setPropertyInternal(this, @"Keyboard Version", v16, a3);
  v18 = CFDictionaryGetValue(theDict, @"IncreasedKeyboardBrightness");
  v19 = v13 | v17 | AppleUSBALS::setPropertyInternal(this, @"IncreasedKeyboardBrightness", v18, a3);
  v20 = CFDictionaryGetValue(theDict, @"KeyboardAdjustedBrightnessCurve");
  LOBYTE(v15) = AppleUSBALS::setPropertyInternal(this, @"KeyboardAdjustedBrightnessCurve", v20, a3);
  v21 = CFDictionaryGetValue(theDict, @"KeyboardBacklightMaxUser");
  v22 = v19 | v15 | AppleUSBALS::setPropertyInternal(this, @"KeyboardBacklightMaxUser", v21, a3);
  inited = this[7];
  if (!inited)
  {
    inited = _COREBRIGHTNESS_LOG_DEFAULT;
    if (!_COREBRIGHTNESS_LOG_DEFAULT)
    {
      inited = init_default_corebrightness_log();
    }
  }

  if (os_log_type_enabled(inited, OS_LOG_TYPE_DEBUG))
  {
    sub_D5CC();
    if ((v22 & 1) == 0)
    {
      return;
    }
  }

  else if ((v22 & 1) == 0)
  {
    return;
  }

  IOHIDPreferencesSynchronize();
}

void AppleUSBALS::setDisplayPreferences(NSObject **this, CFDictionaryRef theDict, int a3)
{
  Value = CFDictionaryGetValue(theDict, @"Backlight 1");
  v7 = AppleUSBALS::setPropertyInternal(this, @"Backlight 1", Value, a3);
  v8 = CFDictionaryGetValue(theDict, @"Backlight 2");
  v9 = v7 | AppleUSBALS::setPropertyInternal(this, @"Backlight 2", v8, a3);
  v10 = CFDictionaryGetValue(theDict, @"Lux 1");
  v11 = AppleUSBALS::setPropertyInternal(this, @"Lux 1", v10, a3);
  v12 = CFDictionaryGetValue(theDict, @"Lux 2");
  v13 = v9 | v11 | AppleUSBALS::setPropertyInternal(this, @"Lux 2", v12, a3);
  v14 = CFDictionaryGetValue(theDict, @"LuxSensor 1");
  v15 = AppleUSBALS::setPropertyInternal(this, @"LuxSensor 1", v14, a3);
  v16 = CFDictionaryGetValue(theDict, @"LuxSensor 2");
  v17 = v15 | AppleUSBALS::setPropertyInternal(this, @"LuxSensor 2", v16, a3);
  v18 = CFDictionaryGetValue(theDict, @"Lux Threshold");
  v19 = v13 | v17 | AppleUSBALS::setPropertyInternal(this, @"Lux Threshold", v18, a3);
  v20 = CFDictionaryGetValue(theDict, @"Automatic Display Enabled");
  LOBYTE(v15) = AppleUSBALS::setPropertyInternal(this, @"Automatic Display Enabled", v20, a3);
  v21 = CFDictionaryGetValue(theDict, @"Ambient User Offset");
  v22 = v19 | v15 | AppleUSBALS::setPropertyInternal(this, @"Ambient User Offset", v21, a3);
  inited = this[7];
  if (!inited)
  {
    inited = _COREBRIGHTNESS_LOG_DEFAULT;
    if (!_COREBRIGHTNESS_LOG_DEFAULT)
    {
      inited = init_default_corebrightness_log();
    }
  }

  if (os_log_type_enabled(inited, OS_LOG_TYPE_DEBUG))
  {
    sub_D5CC();
    if ((v22 & 1) == 0)
    {
      return;
    }
  }

  else if ((v22 & 1) == 0)
  {
    return;
  }

  IOHIDPreferencesSynchronize();
}

IOHIDValueRef AppleUSBALS::createScaledValue(AppleUSBALS *this, IOHIDElementRef element, double a3)
{
  if (!element)
  {
    inited = *(this + 7);
    if (!inited)
    {
      inited = _COREBRIGHTNESS_LOG_DEFAULT;
      if (!_COREBRIGHTNESS_LOG_DEFAULT)
      {
        inited = init_default_corebrightness_log();
      }
    }

    if (os_log_type_enabled(inited, OS_LOG_TYPE_ERROR))
    {
      sub_D6C8();
    }

    return 0;
  }

  LogicalMax = IOHIDElementGetLogicalMax(element);
  LogicalMin = IOHIDElementGetLogicalMin(element);
  PhysicalMax = IOHIDElementGetPhysicalMax(element);
  PhysicalMin = IOHIDElementGetPhysicalMin(element);
  UnitExponent = IOHIDElementGetUnitExponent(element);
  UnscaledValueWithExponent = AppleUSBALS::getUnscaledValueWithExponent(this, PhysicalMax, UnitExponent);
  if (AppleUSBALS::getUnscaledValueWithExponent(this, PhysicalMin, UnitExponent) > a3 || UnscaledValueWithExponent < a3)
  {
    v13 = *(this + 7);
    if (!v13)
    {
      v13 = _COREBRIGHTNESS_LOG_DEFAULT;
      if (!_COREBRIGHTNESS_LOG_DEFAULT)
      {
        v13 = init_default_corebrightness_log();
      }
    }

    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_D654();
    }

    return 0;
  }

  if (PhysicalMax == PhysicalMin)
  {
    v15 = *(this + 7);
    if (!v15)
    {
      v15 = _COREBRIGHTNESS_LOG_DEFAULT;
      if (!_COREBRIGHTNESS_LOG_DEFAULT)
      {
        v15 = init_default_corebrightness_log();
      }
    }

    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_C438();
    }

    return 0;
  }

  ScaledValueWithExponent = AppleUSBALS::getScaledValueWithExponent(this, (LogicalMax - LogicalMin) / (PhysicalMax - PhysicalMin), UnitExponent);
  v19 = *(this + 7);
  if (!v19)
  {
    v19 = _COREBRIGHTNESS_LOG_DEFAULT;
    if (!_COREBRIGHTNESS_LOG_DEFAULT)
    {
      v19 = init_default_corebrightness_log();
    }
  }

  v18 = LogicalMin + ScaledValueWithExponent * a3;
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
  {
    v21 = 134219520;
    v22 = LogicalMax;
    v23 = 2048;
    v24 = LogicalMin;
    v25 = 2048;
    v26 = PhysicalMax;
    v27 = 2048;
    v28 = PhysicalMin;
    v29 = 2048;
    v30 = ScaledValueWithExponent;
    v31 = 2048;
    v32 = a3;
    v33 = 2048;
    v34 = v18;
    _os_log_debug_impl(&dword_0, v19, OS_LOG_TYPE_DEBUG, "lMax=%lu lMin=%lu pMax=%lu pMin=%lu -> factor=%f | value=%f -> scaled=%lu", &v21, 0x48u);
  }

  v20 = mach_absolute_time();
  return IOHIDValueCreateWithIntegerValue(kCFAllocatorDefault, element, v20, v18);
}

__CFDictionary *AppleUSBALS::setPropertyInternal(AppleUSBALS *this, const __CFString *a2, const void *value, int a4)
{
  result = 0;
  if (a2)
  {
    if (value)
    {
      result = *(this + 30);
      if (result)
      {
        CFDictionarySetValue(result, a2, value);
        if (a4)
        {
          IOHIDPreferencesSet();
        }

        return (&dword_0 + 1);
      }
    }
  }

  return result;
}

uint64_t AppleUSBALS::addElementValueToTransaction(AppleUSBALS *this, __IOHIDTransaction *a2, __IOHIDElement *a3, CFIndex a4)
{
  inited = *(this + 7);
  if (!inited)
  {
    inited = _COREBRIGHTNESS_LOG_DEFAULT;
    if (!_COREBRIGHTNESS_LOG_DEFAULT)
    {
      inited = init_default_corebrightness_log();
    }
  }

  if (os_log_type_enabled(inited, OS_LOG_TYPE_DEBUG))
  {
    v14 = 134218496;
    v15 = a3;
    v16 = 2048;
    v17 = a2;
    v18 = 2048;
    v19 = a4;
    _os_log_debug_impl(&dword_0, inited, OS_LOG_TYPE_DEBUG, "element=%p transaction=%p value=%ld", &v14, 0x20u);
  }

  result = 3758097090;
  if (a2 && a3)
  {
    v10 = mach_absolute_time();
    v11 = IOHIDValueCreateWithIntegerValue(kCFAllocatorDefault, a3, v10, a4);
    if (v11)
    {
      v12 = v11;
      v13 = *(this + 7);
      if (!v13)
      {
        v13 = _COREBRIGHTNESS_LOG_DEFAULT;
        if (!_COREBRIGHTNESS_LOG_DEFAULT)
        {
          v13 = init_default_corebrightness_log();
        }
      }

      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        sub_D6FC();
      }

      IOHIDTransactionAddElement(a2, a3);
      IOHIDTransactionSetValue(a2, a3, v12, 0);
      CFRelease(v12);
      return 0;
    }

    else
    {
      return 3758097084;
    }
  }

  return result;
}

void sub_9F50(uint64_t a1)
{
  v2 = *(a1 + 40);
  inited = *(v2 + 56);
  if (!inited)
  {
    inited = _COREBRIGHTNESS_LOG_DEFAULT;
    if (!_COREBRIGHTNESS_LOG_DEFAULT)
    {
      inited = init_default_corebrightness_log();
    }
  }

  if (os_log_type_enabled(inited, OS_LOG_TYPE_DEBUG))
  {
    sub_D76C();
  }

  v4 = *(*(*(a1 + 32) + 8) + 24);
  kdebug_trace();
  v5 = IOHIDTransactionCommit(*(a1 + 48));
  v6 = *(v2 + 56);
  if (v5)
  {
    if (!v6)
    {
      v6 = _COREBRIGHTNESS_LOG_DEFAULT;
      if (!_COREBRIGHTNESS_LOG_DEFAULT)
      {
        v6 = init_default_corebrightness_log();
      }
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_D2FC();
    }
  }

  else
  {
    if (!v6)
    {
      v6 = _COREBRIGHTNESS_LOG_DEFAULT;
      if (!_COREBRIGHTNESS_LOG_DEFAULT)
      {
        v6 = init_default_corebrightness_log();
      }
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      sub_D7E0();
    }

    v7 = *(*(*(a1 + 32) + 8) + 24);
    kdebug_trace();
    if (*(*(*(a1 + 32) + 8) + 24) == 1)
    {
      if (notify_is_valid_token(*(v2 + 324)))
      {
        notify_set_state(*(v2 + 324), 1uLL);
        notify_post("com.apple.DFRBrightness.displayStateUpdate");
      }

      else
      {
        v8 = *(v2 + 56);
        if (!v8)
        {
          v8 = _COREBRIGHTNESS_LOG_DEFAULT;
          if (!_COREBRIGHTNESS_LOG_DEFAULT)
          {
            v8 = init_default_corebrightness_log();
          }
        }

        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          sub_D254();
        }
      }
    }
  }

  CFRelease(*(a1 + 48));
}

void sub_A114(uint64_t a1)
{
  v2 = *(a1 + 40);
  inited = *(v2 + 56);
  if (!inited)
  {
    inited = _COREBRIGHTNESS_LOG_DEFAULT;
    if (!_COREBRIGHTNESS_LOG_DEFAULT)
    {
      inited = init_default_corebrightness_log();
    }
  }

  if (os_log_type_enabled(inited, OS_LOG_TYPE_DEBUG))
  {
    sub_D76C();
  }

  v4 = *(*(*(a1 + 32) + 8) + 24);
  kdebug_trace();
  v5 = IOHIDTransactionCommit(*(a1 + 48));
  v6 = *(v2 + 56);
  if (v5)
  {
    if (!v6)
    {
      v6 = _COREBRIGHTNESS_LOG_DEFAULT;
      if (!_COREBRIGHTNESS_LOG_DEFAULT)
      {
        v6 = init_default_corebrightness_log();
      }
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_D2FC();
    }
  }

  else
  {
    if (!v6)
    {
      v6 = _COREBRIGHTNESS_LOG_DEFAULT;
      if (!_COREBRIGHTNESS_LOG_DEFAULT)
      {
        v6 = init_default_corebrightness_log();
      }
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      sub_D7E0();
    }

    v7 = *(*(*(a1 + 32) + 8) + 24);
    kdebug_trace();
    if (*(*(*(a1 + 32) + 8) + 24) == 1)
    {
      if (notify_is_valid_token(*(v2 + 324)))
      {
        notify_set_state(*(v2 + 324), 1uLL);
        notify_post("com.apple.DFRBrightness.displayStateUpdate");
      }

      else
      {
        v8 = *(v2 + 56);
        if (!v8)
        {
          v8 = _COREBRIGHTNESS_LOG_DEFAULT;
          if (!_COREBRIGHTNESS_LOG_DEFAULT)
          {
            v8 = init_default_corebrightness_log();
          }
        }

        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          sub_D254();
        }
      }
    }
  }

  CFRelease(*(a1 + 48));
}

void AppleUSBALS::scheduleWithDispatchQueue(AppleUSBALS *this, NSObject *a2)
{
  inited = *(this + 7);
  if (!inited)
  {
    inited = _COREBRIGHTNESS_LOG_DEFAULT;
    if (!_COREBRIGHTNESS_LOG_DEFAULT)
    {
      inited = init_default_corebrightness_log();
    }
  }

  if (os_log_type_enabled(inited, OS_LOG_TYPE_DEBUG))
  {
    sub_C4D4();
    if (!a2)
    {
      return;
    }
  }

  else if (!a2)
  {
    return;
  }

  *(this + 8) = a2;
  dispatch_retain(a2);
  if (*(this + 22) == 257)
  {
    v5 = *(this + 7);
    if (!v5)
    {
      v5 = _COREBRIGHTNESS_LOG_DEFAULT;
      if (!_COREBRIGHTNESS_LOG_DEFAULT)
      {
        v5 = init_default_corebrightness_log();
      }
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "system power monitoring not required on this platform", buf, 2u);
    }
  }

  else
  {
    *buf = 2113;
    v6 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt32Type, buf);
    if (v6)
    {
      v7 = v6;
      (*(*this + 88))(this, @"SensorReportingState", v6);
      v8 = *(this + 7);
      if (!v8)
      {
        v8 = _COREBRIGHTNESS_LOG_DEFAULT;
        if (!_COREBRIGHTNESS_LOG_DEFAULT)
        {
          v8 = init_default_corebrightness_log();
        }
      }

      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        sub_D854();
      }

      CFRelease(v7);
    }

    LODWORD(valuePtr) = 1097859072;
    v9 = CFNumberCreate(kCFAllocatorDefault, kCFNumberFloatType, &valuePtr);
    if (v9)
    {
      v10 = v9;
      (*(*this + 88))(this, @"SensorRelativeSensitivity", v9);
      v11 = *(this + 7);
      if (!v11)
      {
        v11 = _COREBRIGHTNESS_LOG_DEFAULT;
        if (!_COREBRIGHTNESS_LOG_DEFAULT)
        {
          v11 = init_default_corebrightness_log();
        }
      }

      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        sub_D8DC();
      }

      CFRelease(v10);
    }

    LODWORD(v27) = 0x40000000;
    v12 = CFNumberCreate(kCFAllocatorDefault, kCFNumberFloatType, &v27);
    if (v12)
    {
      v13 = v12;
      (*(*this + 88))(this, @"SensorAbsoluteSensitivity", v12);
      v14 = *(this + 7);
      if (!v14)
      {
        v14 = _COREBRIGHTNESS_LOG_DEFAULT;
        if (!_COREBRIGHTNESS_LOG_DEFAULT)
        {
          v14 = init_default_corebrightness_log();
        }
      }

      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        sub_D964();
      }

      CFRelease(v13);
    }

    if (*(this + 18))
    {
      Element = AppleUSBALS::getElement(this, 32, 782, kIOHIDElementTypeFeature);
      if (Element)
      {
        v16 = Element;
        v17 = mach_absolute_time();
        v18 = IOHIDValueCreateWithIntegerValue(kCFAllocatorDefault, v16, v17, 200);
        if (v18)
        {
          v19 = v18;
          v20 = IOHIDDeviceSetValue(*(this + 18), v16, v18);
          CFRelease(v19);
          v21 = *(this + 7);
          if (v20)
          {
            if (!v21)
            {
              v21 = _COREBRIGHTNESS_LOG_DEFAULT;
              if (!_COREBRIGHTNESS_LOG_DEFAULT)
              {
                v21 = init_default_corebrightness_log();
              }
            }

            if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
            {
              sub_D9EC();
            }
          }

          else
          {
            if (!v21)
            {
              v21 = _COREBRIGHTNESS_LOG_DEFAULT;
              if (!_COREBRIGHTNESS_LOG_DEFAULT)
              {
                v21 = init_default_corebrightness_log();
              }
            }

            if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
            {
              sub_DA20();
            }
          }
        }

        else
        {
          v24 = *(this + 7);
          if (!v24)
          {
            v24 = _COREBRIGHTNESS_LOG_DEFAULT;
            if (!_COREBRIGHTNESS_LOG_DEFAULT)
            {
              v24 = init_default_corebrightness_log();
            }
          }

          if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
          {
            sub_DA5C();
          }
        }
      }

      else
      {
        v23 = *(this + 7);
        if (!v23)
        {
          v23 = _COREBRIGHTNESS_LOG_DEFAULT;
          if (!_COREBRIGHTNESS_LOG_DEFAULT)
          {
            v23 = init_default_corebrightness_log();
          }
        }

        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          sub_DA90();
        }
      }
    }

    else
    {
      v22 = *(this + 7);
      if (!v22)
      {
        v22 = _COREBRIGHTNESS_LOG_DEFAULT;
        if (!_COREBRIGHTNESS_LOG_DEFAULT)
        {
          v22 = init_default_corebrightness_log();
        }
      }

      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        sub_DAC4();
      }
    }

    AppleUSBALS::startSystemPowerStateMonitoring(this);
  }

  if (*(this + 23))
  {
    AppleUSBALS::startClamshellStateMonitoring(this);
    AppleUSBALS::startDisplayPowerMonitoring(this);
  }

  v25 = dispatch_semaphore_create(0);
  *(this + 48) = v25;
  if (v25)
  {
    operator new();
  }

  v26 = *(this + 7);
  if (!v26)
  {
    v26 = _COREBRIGHTNESS_LOG_DEFAULT;
    if (!_COREBRIGHTNESS_LOG_DEFAULT)
    {
      v26 = init_default_corebrightness_log();
    }
  }

  if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
  {
    sub_DB2C();
  }
}

void sub_A8CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_BF58(va);
  _Unwind_Resume(a1);
}

void AppleUSBALS::startSystemPowerStateMonitoring(AppleUSBALS *this)
{
  v2 = IORegisterForSystemPower(this, this + 38, SystemPowerStateUpdateCallback, this + 78);
  *(this + 79) = v2;
  if (v2)
  {
    IONotificationPortSetDispatchQueue(*(this + 38), *(this + 8));
  }

  else
  {
    inited = *(this + 7);
    if (!inited)
    {
      inited = _COREBRIGHTNESS_LOG_DEFAULT;
      if (!_COREBRIGHTNESS_LOG_DEFAULT)
      {
        inited = init_default_corebrightness_log();
      }
    }

    if (os_log_type_enabled(inited, OS_LOG_TYPE_ERROR))
    {
      sub_DB60();
    }
  }

  AppleUSBALS::turnOnDevice(this);
}

void AppleUSBALS::startClamshellStateMonitoring(AppleUSBALS *this)
{
  *(this + 35) = 0;
  v2 = (this + 276);
  *(this + 69) = 0;
  *(this + 288) = 1;
  v3 = IONotificationPortCreate(kIOMasterPortDefault);
  *(this + 35) = v3;
  if (v3)
  {
    v4 = IOServiceMatching("IOPMrootDomain");
    MatchingService = IOServiceGetMatchingService(kIOMasterPortDefault, v4);
    if (MatchingService)
    {
      v6 = MatchingService;
      v7 = *(this + 8);
      active = IOPMScheduleUserActiveChangedNotification();
      *(this + 37) = active;
      if (active)
      {
        if (!IOServiceAddInterestNotification(*(this + 35), v6, "IOGeneralInterest", clamshellStateCallback, this, v2))
        {
          IONotificationPortSetDispatchQueue(*(this + 35), *(this + 8));
          return;
        }

        inited = *(this + 7);
        if (!inited)
        {
          inited = _COREBRIGHTNESS_LOG_DEFAULT;
          if (!_COREBRIGHTNESS_LOG_DEFAULT)
          {
            inited = init_default_corebrightness_log();
          }
        }

        if (os_log_type_enabled(inited, OS_LOG_TYPE_ERROR))
        {
          sub_DB94();
        }
      }

      else
      {
        v12 = *(this + 7);
        if (!v12)
        {
          v12 = _COREBRIGHTNESS_LOG_DEFAULT;
          if (!_COREBRIGHTNESS_LOG_DEFAULT)
          {
            v12 = init_default_corebrightness_log();
          }
        }

        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          sub_DBC8();
        }
      }
    }

    else
    {
      v11 = *(this + 7);
      if (!v11)
      {
        v11 = _COREBRIGHTNESS_LOG_DEFAULT;
        if (!_COREBRIGHTNESS_LOG_DEFAULT)
        {
          v11 = init_default_corebrightness_log();
        }
      }

      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_DBFC();
      }
    }
  }

  else
  {
    v10 = *(this + 7);
    if (!v10)
    {
      v10 = _COREBRIGHTNESS_LOG_DEFAULT;
      if (!_COREBRIGHTNESS_LOG_DEFAULT)
      {
        v10 = init_default_corebrightness_log();
      }
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_DC30();
    }
  }

  v13 = *(this + 35);
  if (v13)
  {
    IONotificationPortDestroy(v13);
    *(this + 35) = 0;
  }

  if (*v2)
  {
    IOObjectRelease(*v2);
    *v2 = 0;
  }

  if (*(this + 37))
  {
    IOPMUnregisterNotification();
    *(this + 37) = 0;
  }
}

void AppleUSBALS::startDisplayPowerMonitoring(AppleUSBALS *this)
{
  v2 = IONotificationPortCreate(kIOMasterPortDefault);
  *(this + 33) = v2;
  if (!v2)
  {
    goto LABEL_8;
  }

  v3 = v2;
  v4 = IOServiceMatching("IODisplayWrangler");
  if (IOServiceAddMatchingNotification(v3, "IOServiceFirstMatch", v4, DisplayWranglerArrival, this, this + 68))
  {
    inited = *(this + 7);
    if (!inited)
    {
      inited = _COREBRIGHTNESS_LOG_DEFAULT;
      if (!_COREBRIGHTNESS_LOG_DEFAULT)
      {
        inited = init_default_corebrightness_log();
      }
    }

    if (os_log_type_enabled(inited, OS_LOG_TYPE_ERROR))
    {
      sub_DC64();
    }

    goto LABEL_8;
  }

  IONotificationPortSetDispatchQueue(*(this + 33), *(this + 8));
  v7 = *(this + 68);
  if (!v7)
  {
LABEL_8:
    v6 = 1;
    goto LABEL_9;
  }

  v8 = IOIteratorNext(v7);
  v9 = *(this + 7);
  if (!v8)
  {
    if (!v9)
    {
      v9 = _COREBRIGHTNESS_LOG_DEFAULT;
      if (!_COREBRIGHTNESS_LOG_DEFAULT)
      {
        v9 = init_default_corebrightness_log();
      }
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_DCD4();
    }

    goto LABEL_8;
  }

  v10 = v8;
  if (!v9)
  {
    v9 = _COREBRIGHTNESS_LOG_DEFAULT;
    if (!_COREBRIGHTNESS_LOG_DEFAULT)
    {
      v9 = init_default_corebrightness_log();
    }
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v11[0] = 67109120;
    v11[1] = v10;
    _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "display wrangler found (0x%X)", v11, 8u);
  }

  v6 = AppleUSBALS::initializeDisplayPowerMonitoring(this, v10);
  IOObjectRelease(v10);
LABEL_9:
  *(this + 248) = !v6;
  *(this + 249) = !v6;
  AppleUSBALS::displayStateUpdate(this, v6);
}

void AppleUSBALS::unscheduleFromDispatchQueue(AppleUSBALS *this, dispatch_queue_s *a2)
{
  inited = *(this + 7);
  if (!inited)
  {
    inited = _COREBRIGHTNESS_LOG_DEFAULT;
    if (!_COREBRIGHTNESS_LOG_DEFAULT)
    {
      inited = init_default_corebrightness_log();
    }
  }

  if (os_log_type_enabled(inited, OS_LOG_TYPE_DEBUG))
  {
    sub_C4D4();
  }

  if (*(this + 8) == a2)
  {
    v5 = *(this + 9);
    if (v5)
    {
      block[0] = _NSConcreteStackBlock;
      block[1] = 0x40000000;
      block[2] = sub_AF20;
      block[3] = &unk_14650;
      block[4] = this;
      CFRunLoopPerformBlock(v5, kCFRunLoopDefaultMode, block);
      CFRunLoopWakeUp(*(this + 9));
      std::thread::join(this + 47);
      v6 = *(this + 7);
      if (!v6)
      {
        v6 = _COREBRIGHTNESS_LOG_DEFAULT;
        if (!_COREBRIGHTNESS_LOG_DEFAULT)
        {
          v6 = init_default_corebrightness_log();
        }
      }

      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        sub_DD08();
      }

      CFRelease(*(this + 9));
      *(this + 9) = 0;
    }

    AppleUSBALS::stopDisplayPowerMonitoring(this);
    AppleUSBALS::stopClamshellStateMonitoring(this);
    AppleUSBALS::stopSystemPowerStateMonitoring(this);
    dispatch_release(*(this + 8));
    *(this + 8) = 0;
  }
}

void sub_AF20(uint64_t a1)
{
  v1 = *(a1 + 32);
  CFRunLoopStop(*(v1 + 72));
  inited = *(v1 + 56);
  if (!inited)
  {
    inited = _COREBRIGHTNESS_LOG_DEFAULT;
    if (!_COREBRIGHTNESS_LOG_DEFAULT)
    {
      inited = init_default_corebrightness_log();
    }
  }

  if (os_log_type_enabled(inited, OS_LOG_TYPE_DEBUG))
  {
    sub_DD44();
  }
}

uint64_t AppleUSBALS::stopDisplayPowerMonitoring(AppleUSBALS *this)
{
  inited = *(this + 7);
  if (!inited)
  {
    inited = _COREBRIGHTNESS_LOG_DEFAULT;
    if (!_COREBRIGHTNESS_LOG_DEFAULT)
    {
      inited = init_default_corebrightness_log();
    }
  }

  if (os_log_type_enabled(inited, OS_LOG_TYPE_DEBUG))
  {
    sub_DD80(this);
  }

  v3 = *(this + 33);
  if (v3)
  {
    IONotificationPortDestroy(v3);
    *(this + 33) = 0;
  }

  v4 = *(this + 68);
  if (v4)
  {
    IOObjectRelease(v4);
    *(this + 68) = 0;
  }

  v5 = *(this + 32);
  if (v5)
  {
    IONotificationPortDestroy(v5);
    *(this + 32) = 0;
  }

  result = *(this + 63);
  if (result)
  {
    result = IOObjectRelease(result);
    *(this + 63) = 0;
  }

  return result;
}

uint64_t AppleUSBALS::stopClamshellStateMonitoring(AppleUSBALS *this)
{
  inited = *(this + 7);
  if (!inited)
  {
    inited = _COREBRIGHTNESS_LOG_DEFAULT;
    if (!_COREBRIGHTNESS_LOG_DEFAULT)
    {
      inited = init_default_corebrightness_log();
    }
  }

  if (os_log_type_enabled(inited, OS_LOG_TYPE_DEBUG))
  {
    sub_DDFC(this);
  }

  v3 = *(this + 35);
  if (v3)
  {
    IONotificationPortDestroy(v3);
    *(this + 35) = 0;
  }

  v4 = *(this + 69);
  if (v4)
  {
    IOObjectRelease(v4);
    *(this + 69) = 0;
  }

  v5 = *(this + 7);
  if (!v5)
  {
    v5 = _COREBRIGHTNESS_LOG_DEFAULT;
    if (!_COREBRIGHTNESS_LOG_DEFAULT)
    {
      v5 = init_default_corebrightness_log();
    }
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_DE78(this);
  }

  result = *(this + 37);
  if (result)
  {
    result = IOPMUnregisterNotification();
    *(this + 37) = 0;
  }

  return result;
}

uint64_t AppleUSBALS::stopSystemPowerStateMonitoring(io_object_t *this)
{
  if (this[78])
  {
    IODeregisterForSystemPower(this + 78);
    this[78] = 0;
  }

  v2 = *(this + 38);
  if (v2)
  {
    IONotificationPortDestroy(v2);
    *(this + 38) = 0;
  }

  result = this[79];
  if (result)
  {
    result = IOServiceClose(result);
    this[79] = 0;
  }

  return result;
}

void AppleUSBALS::setEventCallback(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  inited = a1[7];
  if (!inited)
  {
    inited = _COREBRIGHTNESS_LOG_DEFAULT;
    if (!_COREBRIGHTNESS_LOG_DEFAULT)
    {
      inited = init_default_corebrightness_log();
    }
  }

  if (os_log_type_enabled(inited, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 134218496;
    v10 = a2;
    v11 = 2048;
    v12 = a4;
    v13 = 2048;
    v14 = a3;
    _os_log_impl(&dword_0, inited, OS_LOG_TYPE_DEFAULT, "callback=%p refcon=%p target=%p", &v9, 0x20u);
  }

  a1[15] = a3;
  a1[16] = a4;
  a1[14] = a2;
}

__IOHIDElement *AppleUSBALS::updateCurrentAmbientLightValues(IOHIDDeviceRef *this)
{
  Element = AppleUSBALS::getElement(this, 32, 1233, kIOHIDElementTypeInput_Misc);
  v3 = AppleUSBALS::getElement(this, 32, 1236, kIOHIDElementTypeInput_Misc);
  v4 = AppleUSBALS::getElement(this, 32, 1237, kIOHIDElementTypeInput_Misc);
  v5 = AppleUSBALS::getElement(this, 32, 1234, kIOHIDElementTypeInput_Misc);
  if (!Element)
  {
LABEL_9:
    if (!v3)
    {
      return Element;
    }

    goto LABEL_10;
  }

  pValue = 0;
  value = this[41];
  if (IOHIDDeviceGetValueWithOptions(this[18], Element, &pValue, 0x20000u))
  {
    inited = this[7];
    if (!inited)
    {
      inited = _COREBRIGHTNESS_LOG_DEFAULT;
      if (!_COREBRIGHTNESS_LOG_DEFAULT)
      {
        inited = init_default_corebrightness_log();
      }
    }

    if (os_log_type_enabled(inited, OS_LOG_TYPE_ERROR))
    {
      sub_DEEC();
    }

    goto LABEL_8;
  }

  if (!pValue)
  {
LABEL_8:
    Element = 0;
    goto LABEL_9;
  }

  AppleUSBALS::retrieveScaledValue(this, pValue, &value);
  v9 = this[7];
  if (!v9)
  {
    v9 = _COREBRIGHTNESS_LOG_DEFAULT;
    if (!_COREBRIGHTNESS_LOG_DEFAULT)
    {
      v9 = init_default_corebrightness_log();
    }
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = value;
    *buf = 134217984;
    v25 = value;
    _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "current lux = %f", buf, 0xCu);
    v11 = v10;
  }

  else
  {
    v11 = value;
  }

  AppleUSBALS::updateCurrentAmbient(this, *&v11);
  Element = (&dword_0 + 1);
  if (v3)
  {
LABEL_10:
    if (v4 && v5)
    {
      value = 0;
      pValue = 0;
      v21 = 0;
      if (IOHIDDeviceGetValueWithOptions(this[18], v3, &pValue, 0x20000u) || IOHIDDeviceGetValueWithOptions(this[18], v4, &value, 0x20000u) || IOHIDDeviceGetValueWithOptions(this[18], v5, &v21, 0x20000u))
      {
        v7 = this[7];
        if (!v7)
        {
          v7 = _COREBRIGHTNESS_LOG_DEFAULT;
          if (!_COREBRIGHTNESS_LOG_DEFAULT)
          {
            v7 = init_default_corebrightness_log();
          }
        }

        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          sub_C694();
        }
      }

      else
      {
        v19 = 0.0;
        v20 = 0.0;
        v18 = 0.0;
        if (AppleUSBALS::retrieveScaledValue(this, pValue, &v20) && AppleUSBALS::retrieveScaledValue(this, value, &v19) && AppleUSBALS::retrieveScaledValue(this, v21, &v18))
        {
          v12 = 0.0;
          if (v20 == 0.0)
          {
            v13 = 0.0;
            v14 = 0.0;
          }

          else
          {
            v13 = 0.0;
            v14 = 0.0;
            if (v19 != 0.0)
            {
              v13 = *(this + 41);
              v14 = v20 / v19 * v13;
              v12 = (1.0 - v20 - v19) / v19 * v13;
            }
          }

          v16 = this[7];
          if (!v16)
          {
            v16 = _COREBRIGHTNESS_LOG_DEFAULT;
            if (!_COREBRIGHTNESS_LOG_DEFAULT)
            {
              v16 = init_default_corebrightness_log();
            }
          }

          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            v17 = this[41];
            *buf = 134218752;
            v25 = *&v14;
            v26 = 2048;
            v27 = v13;
            v28 = 2048;
            v29 = v12;
            v30 = 2048;
            v31 = v17;
            _os_log_impl(&dword_0, v16, OS_LOG_TYPE_DEFAULT, "current color: [X=%f,Y=%f,Z=%f] (in %f lux)", buf, 0x2Au);
          }

          AppleUSBALS::updateCurrentColourInfo(this, v14, v13, v12, v18);
          return (&dword_0 + 1);
        }

        else
        {
          v15 = this[7];
          if (!v15)
          {
            v15 = _COREBRIGHTNESS_LOG_DEFAULT;
            if (!_COREBRIGHTNESS_LOG_DEFAULT)
            {
              v15 = init_default_corebrightness_log();
            }
          }

          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            sub_C704();
          }
        }
      }
    }
  }

  return Element;
}

void sub_B654(uint64_t a1, int a2)
{
  v3 = *(a1 + 32);
  inited = *(v3 + 56);
  if (!inited)
  {
    inited = _COREBRIGHTNESS_LOG_DEFAULT;
    if (!_COREBRIGHTNESS_LOG_DEFAULT)
    {
      inited = init_default_corebrightness_log();
    }
  }

  if (os_log_type_enabled(inited, OS_LOG_TYPE_INFO))
  {
    v5 = *(v3 + 251);
    v6[0] = 67109376;
    v6[1] = a2;
    v7 = 1024;
    v8 = v5;
    _os_log_impl(&dword_0, inited, OS_LOG_TYPE_INFO, "user active = %d (current=%d)", v6, 0xEu);
  }

  if (*(v3 + 251) != a2)
  {
    if (a2)
    {
      if (*(v3 + 250) == 1)
      {
        AppleUSBALS::displayStateUpdate(v3, 1);
      }
    }

    *(v3 + 251) = a2;
  }
}

void AppleUSBALS::turnOnDevice(NSObject **this)
{
  valuePtr = 2129;
  v2 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt32Type, &valuePtr);
  if (v2)
  {
    v3 = v2;
    ((*this)[11].isa)(this, @"SensorPowerState", v2);
    inited = this[7];
    if (!inited)
    {
      inited = _COREBRIGHTNESS_LOG_DEFAULT;
      if (!_COREBRIGHTNESS_LOG_DEFAULT)
      {
        inited = init_default_corebrightness_log();
      }
    }

    if (os_log_type_enabled(inited, OS_LOG_TYPE_DEBUG))
    {
      sub_DF5C();
    }

    CFRelease(v3);
  }
}

void AppleUSBALS::turnOffDevice(NSObject **this)
{
  valuePtr = 2133;
  v2 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt32Type, &valuePtr);
  if (v2)
  {
    v3 = v2;
    ((*this)[11].isa)(this, @"SensorPowerState", v2);
    inited = this[7];
    if (!inited)
    {
      inited = _COREBRIGHTNESS_LOG_DEFAULT;
      if (!_COREBRIGHTNESS_LOG_DEFAULT)
      {
        inited = init_default_corebrightness_log();
      }
    }

    if (os_log_type_enabled(inited, OS_LOG_TYPE_DEBUG))
    {
      sub_DFE4();
    }

    CFRelease(v3);
  }
}

double AppleUSBALS::getUnscaledValueWithExponent(AppleUSBALS *this, double a2, unsigned int a3)
{
  if (a3 > 7)
  {
    v4 = a2;
    if (a3 <= 0xF)
    {
      v4 = a2 / __exp10((16 - a3));
    }
  }

  else
  {
    v4 = __exp10(a3) * a2;
  }

  inited = *(this + 7);
  if (!inited)
  {
    inited = _COREBRIGHTNESS_LOG_DEFAULT;
    if (!_COREBRIGHTNESS_LOG_DEFAULT)
    {
      inited = init_default_corebrightness_log();
    }
  }

  if (os_log_type_enabled(inited, OS_LOG_TYPE_DEBUG))
  {
    sub_E06C();
  }

  return v4;
}

uint64_t AppleUSBALS::setElementIntValue(IOHIDDeviceRef *this, __IOHIDElement *a2, CFIndex a3)
{
  result = 3758097090;
  if (a2 && this[18])
  {
    v7 = mach_absolute_time();
    v8 = IOHIDValueCreateWithIntegerValue(kCFAllocatorDefault, a2, v7, a3);
    if (v8)
    {
      v9 = v8;
      v10 = IOHIDDeviceSetValue(this[18], a2, v8);
      CFRelease(v9);
      return v10;
    }

    else
    {
      inited = this[7];
      if (!inited)
      {
        inited = _COREBRIGHTNESS_LOG_DEFAULT;
        if (!_COREBRIGHTNESS_LOG_DEFAULT)
        {
          inited = init_default_corebrightness_log();
        }
      }

      if (os_log_type_enabled(inited, OS_LOG_TYPE_ERROR))
      {
        sub_E0E0();
      }

      return 3758097084;
    }
  }

  return result;
}

uint64_t AppleUSBALS::setElementFloatValue(IOHIDDeviceRef *this, __IOHIDElement *a2, double a3)
{
  result = 3758097090;
  if (a2 && this[18])
  {
    v7 = mach_absolute_time();
    ScaledValue = AppleUSBALS::getScaledValue(this, a3, a2);
    v9 = IOHIDValueCreateWithIntegerValue(kCFAllocatorDefault, a2, v7, ScaledValue);
    if (v9)
    {
      v10 = v9;
      v11 = IOHIDDeviceSetValue(this[18], a2, v9);
      CFRelease(v10);
      return v11;
    }

    else
    {
      inited = this[7];
      if (!inited)
      {
        inited = _COREBRIGHTNESS_LOG_DEFAULT;
        if (!_COREBRIGHTNESS_LOG_DEFAULT)
        {
          inited = init_default_corebrightness_log();
        }
      }

      if (os_log_type_enabled(inited, OS_LOG_TYPE_ERROR))
      {
        sub_E0E0();
      }

      return 3758097084;
    }
  }

  return result;
}

double AppleUSBALS::getScaledValue(AppleUSBALS *this, double a2, __IOHIDElement *a3)
{
  if (IOHIDElementGetUnitExponent(a3))
  {
    UnitExponent = IOHIDElementGetUnitExponent(a3);

    return AppleUSBALS::getScaledValueWithExponent(this, a2, UnitExponent);
  }

  else
  {
    LogicalMax = IOHIDElementGetLogicalMax(a3);
    v9 = LogicalMax - IOHIDElementGetLogicalMin(a3);
    PhysicalMax = IOHIDElementGetPhysicalMax(a3);
    return (v9 / (PhysicalMax - IOHIDElementGetPhysicalMin(a3))) * a2;
  }
}

uint64_t AppleUSBALS::setFloatValueForUsage(AppleUSBALS *this, int a2, int a3, double a4)
{
  Element = AppleUSBALS::getElement(this, a2, a3, kIOHIDElementTypeFeature);

  return AppleUSBALS::setElementFloatValue(this, Element, a4);
}

uint64_t AppleUSBALS::getElementFloatValueFromTransaction(AppleUSBALS *this, IOHIDTransactionRef transaction, IOHIDElementRef element, float *a4)
{
  result = 3758097090;
  if (transaction && element && a4)
  {
    Value = IOHIDTransactionGetValue(transaction, element, 0);
    if (Value)
    {
      ScaledValue = IOHIDValueGetScaledValue(Value, 1u);
      result = 0;
      *&ScaledValue = ScaledValue;
      *a4 = *&ScaledValue;
    }

    else
    {
      return 3758097084;
    }
  }

  return result;
}

double AppleUSBALS::getScaledValueWithExponent(AppleUSBALS *this, double a2, unsigned int a3)
{
  if (a3 > 7)
  {
    v4 = a2;
    if (a3 <= 0xF)
    {
      v4 = __exp10((16 - a3)) * a2;
    }
  }

  else
  {
    v4 = a2 / __exp10(a3);
  }

  inited = *(this + 7);
  if (!inited)
  {
    inited = _COREBRIGHTNESS_LOG_DEFAULT;
    if (!_COREBRIGHTNESS_LOG_DEFAULT)
    {
      inited = init_default_corebrightness_log();
    }
  }

  if (os_log_type_enabled(inited, OS_LOG_TYPE_DEBUG))
  {
    sub_E06C();
  }

  return v4;
}

uint64_t sub_BDB8(std::__thread_struct **a1)
{
  v11 = a1;
  v2 = std::__thread_local_data();
  v3 = *a1;
  *a1 = 0;
  pthread_setspecific(v2->__key_, v3);
  v4 = v11[1];
  Current = CFRunLoopGetCurrent();
  v4[9].__p_ = Current;
  if (Current)
  {
    CFRetain(Current);
    p = v4[18].__p_;
    if (p)
    {
      IOHIDDeviceScheduleWithRunLoop(p, v4[9].__p_, kCFRunLoopDefaultMode);
    }

    else
    {
      inited = v4[7].__p_;
      if (!inited)
      {
        inited = _COREBRIGHTNESS_LOG_DEFAULT;
        if (!_COREBRIGHTNESS_LOG_DEFAULT)
        {
          inited = init_default_corebrightness_log();
        }
      }

      if (os_log_type_enabled(inited, OS_LOG_TYPE_ERROR))
      {
        sub_E114();
      }
    }

    v8 = v4[7].__p_;
    if (!v8)
    {
      v8 = _COREBRIGHTNESS_LOG_DEFAULT;
      if (!_COREBRIGHTNESS_LOG_DEFAULT)
      {
        v8 = init_default_corebrightness_log();
      }
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      sub_E148();
    }

    dispatch_semaphore_signal(v4[48].__p_);
    CFRunLoopRun();
    v9 = v4[18].__p_;
    if (v9)
    {
      IOHIDDeviceUnscheduleFromRunLoop(v9, v4[9].__p_, kCFRunLoopDefaultMode);
      IOHIDDeviceRegisterInputValueCallback(v4[18].__p_, 0, v4);
      IOHIDDeviceRegisterRemovalCallback(v4[18].__p_, 0, v4);
    }
  }

  sub_BF10(&v11);
  return 0;
}

void sub_BEFC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_BF10(va);
  _Unwind_Resume(a1);
}

std::__thread_struct ***sub_BF10(std::__thread_struct ***a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    sub_BF58(v2);
    operator delete();
  }

  return a1;
}

std::__thread_struct **sub_BF58(std::__thread_struct **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    std::__thread_struct::~__thread_struct(v2);
    operator delete();
  }

  return a1;
}

void sub_BFA0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

uint64_t *sub_C0A8@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 8) = a2;
  v3 = *result;
  return result;
}

void sub_C0FC()
{
  sub_BFC8();
  sub_BFD4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_C138()
{
  sub_C050();
  sub_BFD4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_C1A8()
{
  sub_C01C();
  sub_BFD4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_C218()
{
  sub_BFC8();
  sub_BFD4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_C254()
{
  sub_BFC8();
  sub_BFD4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_C290(uint64_t a1, uint64_t *a2)
{
  v7 = *(a1 + 252);
  v8 = *a2;
  sub_C028();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x12u);
}

void sub_C34C()
{
  sub_C01C();
  sub_C028();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xEu);
}

void sub_C3C8()
{
  sub_C050();
  sub_BFD4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_C4D4()
{
  sub_BFC8();
  sub_BFD4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_C694()
{
  sub_C01C();
  sub_BFBC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_C738()
{
  sub_C01C();
  sub_BFBC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_C7A8()
{
  sub_C01C();
  sub_BFBC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_C818(uint64_t *a1)
{
  sub_C0A8(a1, __stack_chk_guard);
  sub_C090();
  sub_BFBC();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_C888()
{
  sub_C06C();
  sub_BFD4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_C8FC()
{
  sub_C050();
  sub_BFD4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_C96C()
{
  sub_C01C();
  sub_BFBC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_C9DC()
{
  sub_C01C();
  sub_BFBC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_CA4C()
{
  sub_C01C();
  sub_BFBC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_CAF0()
{
  sub_C01C();
  sub_BFBC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_CB94()
{
  sub_C050();
  sub_BFD4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_CC04(uint64_t *a1)
{
  sub_C0A8(a1, __stack_chk_guard);
  sub_BFF4();
  v4 = v1;
  _os_log_error_impl(&dword_0, v2, OS_LOG_TYPE_ERROR, "value=%p result=%d", v3, 0x12u);
}

void sub_CC80(uint64_t *a1)
{
  sub_C0A8(a1, __stack_chk_guard);
  v2 = *v1;
  sub_C038();
  sub_C028();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_CD00(__IOHIDElement *a1, NSObject *a2)
{
  IOHIDElementGetUnitExponent(a1);
  sub_C01C();
  _os_log_debug_impl(&dword_0, a2, OS_LOG_TYPE_DEBUG, "exponent=0x%X", v3, 8u);
}

void sub_CD88()
{
  sub_C050();
  sub_C028();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_CE04()
{
  sub_C050();
  sub_C028();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_CEB4(int *a1)
{
  v6 = *a1;
  sub_BFD4();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 8u);
}

void sub_CF60(int *a1)
{
  v6 = *a1;
  sub_BFD4();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 8u);
}

void sub_D00C(uint64_t a1)
{
  sub_C05C(a1, __stack_chk_guard);
  sub_C06C();
  sub_BFD4();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_D0B0(uint64_t a1)
{
  sub_C05C(a1, __stack_chk_guard);
  sub_C06C();
  sub_BFD4();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_D120(uint64_t a1)
{
  sub_C05C(a1, __stack_chk_guard);
  sub_C06C();
  sub_BFD4();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_D1C4(uint8_t *buf, int a2, os_log_t log)
{
  *buf = 67109120;
  *(buf + 1) = a2;
  _os_log_debug_impl(&dword_0, log, OS_LOG_TYPE_DEBUG, "displayState reportID=0x%X", buf, 8u);
}

void sub_D20C(uint8_t *buf, int a2, os_log_t log)
{
  *buf = 67109120;
  *(buf + 1) = a2;
  _os_log_debug_impl(&dword_0, log, OS_LOG_TYPE_DEBUG, "displayStatePeriod reportID=0x%X", buf, 8u);
}

void sub_D288()
{
  sub_BFE0();
  sub_BFD4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_D2FC()
{
  sub_C01C();
  sub_BFBC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_D36C()
{
  sub_C008();
  sub_BFD4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_D3E0()
{
  sub_C044();
  sub_BFD4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_D45C()
{
  sub_C044();
  sub_BFD4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_D540()
{
  sub_BFF4();
  sub_BFBC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_D5CC()
{
  sub_C038();
  sub_BFD4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_D654()
{
  sub_C06C();
  sub_BFBC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_D6FC()
{
  sub_C050();
  sub_BFD4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_D76C()
{
  sub_BFE0();
  sub_BFD4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_D7E0()
{
  sub_C008();
  sub_BFD4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_D854()
{
  sub_C038();
  sub_BFD4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_D8DC()
{
  sub_C038();
  sub_BFD4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_D964()
{
  sub_C038();
  sub_BFD4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_DA20()
{
  sub_BFC8();
  sub_BFD4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_DC64()
{
  sub_C01C();
  sub_BFBC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_DD08()
{
  sub_BFC8();
  sub_BFD4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_DD44()
{
  sub_BFC8();
  sub_BFD4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_DD80(uint64_t a1)
{
  v1 = *(a1 + 256);
  v2 = *(a1 + 252);
  sub_BFF4();
  sub_BFD4();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x12u);
}

void sub_DDFC(uint64_t a1)
{
  v1 = *(a1 + 280);
  v2 = *(a1 + 276);
  sub_BFF4();
  sub_BFD4();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x12u);
}

void sub_DE78(uint64_t a1)
{
  v1 = *(a1 + 296);
  sub_C038();
  sub_BFD4();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_DEEC()
{
  sub_C01C();
  sub_BFBC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_DF5C()
{
  sub_C038();
  sub_BFD4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_DFE4()
{
  sub_C038();
  sub_BFD4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_E06C()
{
  sub_C078();
  sub_BFD4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_E148()
{
  sub_BFC8();
  sub_BFD4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void operator delete()
{
    ;
  }
}

void operator new()
{
    ;
  }
}