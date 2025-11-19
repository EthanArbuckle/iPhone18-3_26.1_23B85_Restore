uint64_t sub_29D40797C(uint64_t a1)
{
  v1 = (*(a1 + 16) + 1);
  *(a1 + 16) = v1;
  return v1;
}

void AppleSPUAccCompassPlugin::alloc(AppleSPUAccCompassPlugin *this, const __CFAllocator *a2)
{
  v3 = MEMORY[0x29ED56270](this, 48, 0x106004050E6E8B7, 0);

  AppleSPUAccCompassPlugin::AppleSPUAccCompassPlugin(v3, this);
}

void AppleSPUAccCompassPlugin::AppleSPUAccCompassPlugin(AppleSPUAccCompassPlugin *this, const __CFAllocator *a2)
{
  *this = &AppleSPUAccCompassPlugin::vtbl;
  *(this + 1) = a2;
  *(this + 4) = 1;
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 3) = 0;
  v2 = CFUUIDGetConstantUUIDWithBytes(*MEMORY[0x29EDB8EF0], 0xEu, 0xB5u, 0xD7u, 0x69u, 0x3Du, 0x30u, 0x4Fu, 0x50u, 0x90u, 0xBBu, 0xCDu, 0xF5u, 0x27u, 0xA9u, 0xADu, 0xF3u);
  CFPlugInAddInstanceForFactory(v2);
}

void AppleSPUAccCompassPlugin::~AppleSPUAccCompassPlugin(AppleSPUAccCompassPlugin *this)
{
  os_release(qword_2A1A130A8);
  v1 = CFUUIDGetConstantUUIDWithBytes(*MEMORY[0x29EDB8EF0], 0xEu, 0xB5u, 0xD7u, 0x69u, 0x3Du, 0x30u, 0x4Fu, 0x50u, 0x90u, 0xBBu, 0xCDu, 0xF5u, 0x27u, 0xA9u, 0xADu, 0xF3u);
  CFPlugInRemoveInstanceForFactory(v1);
}

uint64_t AppleSPUAccCompassPlugin::QueryInterface(AppleSPUAccCompassPlugin *this, CFUUIDBytes a2, void **a3)
{
  v5 = CFUUIDCreateFromUUIDBytes(0, a2);
  v6 = *MEMORY[0x29EDB8EF0];
  v7 = CFUUIDGetConstantUUIDWithBytes(*MEMORY[0x29EDB8EF0], 5u, 5u, 0xD7u, 0x8Du, 0x4Fu, 0x4Eu, 0x4Cu, 0x41u, 0xA3u, 0xA6u, 0xC7u, 0xA7u, 0x7Bu, 0x41u, 0xBDu, 0xACu);
  if (CFEqual(v5, v7) || (v8 = CFUUIDGetConstantUUIDWithBytes(v6, 0xC7u, 0x10u, 0x95u, 0x1Du, 0x18u, 0x40u, 0x45u, 0x6Eu, 0x82u, 0xE7u, 0xFCu, 0xA1u, 0xA0u, 0xFAu, 0x7Fu, 0xE4u), CFEqual(v5, v8)) || (v9 = CFUUIDGetConstantUUIDWithBytes(v6, 0, 0, 0, 0, 0, 0, 0, 0, 0xC0u, 0, 0, 0, 0, 0, 0, 0x46u), CFEqual(v5, v9)))
  {
    v10 = 0;
    ++*(this + 4);
  }

  else
  {
    this = 0;
    v10 = 2147483652;
  }

  *a3 = this;
  CFRelease(v5);
  return v10;
}

uint64_t AppleSPUAccCompassPlugin::AddRef(AppleSPUAccCompassPlugin *this)
{
  v1 = (*(this + 4) + 1);
  *(this + 4) = v1;
  return v1;
}

uint64_t AppleSPUAccCompassPlugin::Release(AppleSPUAccCompassPlugin *this)
{
  v1 = *(this + 4);
  v2 = (v1 - 1);
  *(this + 4) = v2;
  if (v1 == 1)
  {
    AppleSPUAccCompassPlugin::~AppleSPUAccCompassPlugin(this);
    AppleSPUAccCompassPlugin::operator delete(v3);
  }

  return v2;
}

void AppleSPUAccCompassPlugin::open()
{
  if (qword_2A1A130B0 != -1)
  {
    sub_29D408E30();
  }

  operator new();
}

os_log_t sub_29D407E28()
{
  result = os_log_create("AOP", "AppleSPUAccCompassPlugin");
  qword_2A1A130A8 = result;
  return result;
}

uint64_t AppleSPUAccCompassPlugin::addAccMatchingNotification(AppleSPUAccCompassPlugin *this)
{
  v2 = 3758097115;
  v21 = 11;
  valuePtr = 65280;
  v19 = 1452;
  v20 = 5016;
  v3 = *MEMORY[0x29EDB8ED8];
  *(this + 4) = IOHIDManagerCreate(*MEMORY[0x29EDB8ED8], 0);
  Mutable = CFDictionaryCreateMutable(v3, 4, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  if (!Mutable)
  {
LABEL_15:
    v17 = *(this + 4);
    if (v17)
    {
      CFRelease(v17);
    }

    return v2;
  }

  v5 = Mutable;
  v6 = CFNumberCreate(v3, kCFNumberIntType, &valuePtr);
  if (!v6)
  {
LABEL_19:
    CFRelease(v5);
    goto LABEL_15;
  }

  v7 = v6;
  v8 = CFNumberCreate(v3, kCFNumberIntType, &v21);
  if (!v8)
  {
    CFRelease(v7);
    goto LABEL_19;
  }

  v9 = v8;
  v10 = CFNumberCreate(v3, kCFNumberIntType, &v20);
  if (!v10)
  {
    v11 = 0;
    goto LABEL_21;
  }

  v11 = CFNumberCreate(v3, kCFNumberIntType, &v19);
  if (!v11)
  {
LABEL_21:
    v13 = 0;
    goto LABEL_22;
  }

  v12 = CFDictionaryCreateMutable(v3, 2, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  v13 = v12;
  if (v12)
  {
    CFDictionarySetValue(v12, @"DeviceUsagePage", v7);
    CFDictionarySetValue(v13, @"DeviceUsage", v9);
    CFDictionarySetValue(v5, @"DeviceUsagePairs", v13);
    CFDictionarySetValue(v5, @"ProductID", v10);
    CFDictionarySetValue(v5, @"VendorID", v11);
    IOHIDManagerSetDeviceMatching(*(this + 4), v5);
    IOHIDManagerRegisterDeviceMatchingCallback(*(this + 4), AppleSPUAccCompassPlugin::accAddedNotification, this);
    IOHIDManagerRegisterDeviceRemovalCallback(*(this + 4), AppleSPUAccCompassPlugin::accRemovalNotification, this);
    v14 = *(this + 4);
    Main = CFRunLoopGetMain();
    IOHIDManagerScheduleWithRunLoop(v14, Main, *MEMORY[0x29EDB8FC0]);
    v2 = 0;
    v16 = 1;
    goto LABEL_8;
  }

LABEL_22:
  v16 = 0;
LABEL_8:
  CFRelease(v7);
  CFRelease(v9);
  if (v10)
  {
    CFRelease(v10);
  }

  if (v11)
  {
    CFRelease(v11);
  }

  if (v13)
  {
    CFRelease(v13);
  }

  CFRelease(v5);
  if ((v16 & 1) == 0)
  {
    goto LABEL_15;
  }

  return v2;
}

uint64_t AppleSPUAccCompassPlugin::close(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    CFRelease(v2);
  }

  result = *(a1 + 24);
  if (result)
  {
    result = MEMORY[0x29ED564A0](result, 0x10B0C4017A8DECDLL);
    *(a1 + 24) = 0;
  }

  return result;
}

__CFDictionary *AppleSPUAccCompassPlugin::copyPropertyForClient(AppleSPUAccCompassPlugin *this, CFTypeRef cf1, const void *a3)
{
  if (!CFEqual(cf1, @"ServiceFilterDebug"))
  {
    return 0;
  }

  Mutable = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  CFDictionarySetValue(Mutable, @"Class", @"AppleSPUAccCompassPlugin");
  return Mutable;
}

void AppleSPUAccCompassPlugin::accRemovalNotification(AppleSPUAccCompassPlugin *this, void *a2, int a3, void *a4, __IOHIDDevice *a5)
{
  v22 = *MEMORY[0x29EDCA608];
  if (this)
  {
    v7 = *(this + 5);
    v8 = qword_2A1A130A8;
    v9 = os_log_type_enabled(qword_2A1A130A8, OS_LOG_TYPE_DEFAULT);
    if (v7 == a4)
    {
      if (v9)
      {
        v20 = 134217984;
        v21 = a4;
        _os_log_impl(&dword_29D407000, v8, OS_LOG_TYPE_DEFAULT, "Accessory detached %p\n", &v20, 0xCu);
      }

      v10 = 0;
      *(this + 5) = 0;
      v11 = 1;
      do
      {
        v12 = v11;
        v13 = *(this + 3);
        v20 = *(&AppleSPUAccCompassPlugin::accCompassCompensationTable + 4 * v10 + 3);
        LOBYTE(v21) = 0;
        v14 = *(v13 + 8);
        if (!v14 || (*(*v14 + 80))(v14, 4, &v20, 5, 0, 0))
        {
          sub_29D408EE4();
          goto LABEL_12;
        }

        v11 = 0;
        v10 = 1;
      }

      while ((v12 & 1) != 0);
      v15 = qword_2A1A130A8;
      if (!os_log_type_enabled(qword_2A1A130A8, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_12;
      }

      LOWORD(v20) = 0;
      v16 = "Accessory Compass compensation Disabled \n";
      v17 = v15;
      v18 = 2;
    }

    else
    {
      if (!v9)
      {
        goto LABEL_12;
      }

      v20 = 134217984;
      v21 = a4;
      v16 = "Unexpected Accessory removed %p\n";
      v17 = v8;
      v18 = 12;
    }

    _os_log_impl(&dword_29D407000, v17, OS_LOG_TYPE_DEFAULT, v16, &v20, v18);
  }

LABEL_12:
  v19 = *MEMORY[0x29EDCA608];
}

void AppleSPUAccCompassServicePluginFactory(const __CFAllocator *a1, const void *a2)
{
  v4 = CFUUIDGetConstantUUIDWithBytes(*MEMORY[0x29EDB8EF0], 0x6Bu, 3u, 0x40u, 0xD3u, 0x57u, 0x98u, 0x40u, 0x64u, 0xAAu, 0x17u, 0x92u, 4u, 0xC7u, 0xB0u, 0x6Fu, 0xFDu);
  if (CFEqual(a2, v4))
  {
    v5 = MEMORY[0x29ED56270](a1, 48, 0x106004050E6E8B7, 0);
    AppleSPUAccCompassPlugin::AppleSPUAccCompassPlugin(v5, a1);
  }
}

void sub_29D408400(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

BOOL sub_29D408420()
{

  return os_log_type_enabled(v0, OS_LOG_TYPE_ERROR);
}

uint64_t AppleSPUAccCompassPlugin::openInterface(uint64_t a1, uint64_t a2)
{
  theInterface = 0;
  IOHIDServiceRegistryID = AppleSPUAccCompassPlugin::getIOHIDServiceRegistryID();
  v4 = *MEMORY[0x29EDBB110];
  v5 = IORegistryEntryIDMatching(IOHIDServiceRegistryID);
  MatchingService = IOServiceGetMatchingService(v4, v5);
  if (!a2)
  {
    return 3758097090;
  }

  v7 = MatchingService;
  *a2 = MatchingService;
  if (!MatchingService)
  {
    return 3758097136;
  }

  theScore = 0;
  v8 = *MEMORY[0x29EDB8EF0];
  v9 = CFUUIDGetConstantUUIDWithBytes(*MEMORY[0x29EDB8EF0], 0x3Bu, 0xC5u, 0xCCu, 0x87u, 0x84u, 0x5Eu, 0x48u, 0xABu, 0xA9u, 0xC2u, 0x94u, 0x36u, 0, 0x1Bu, 0xA6u, 0x8Au);
  v10 = CFUUIDGetConstantUUIDWithBytes(0, 0xC2u, 0x44u, 0xE8u, 0x58u, 0x10u, 0x9Cu, 0x11u, 0xD4u, 0x91u, 0xD4u, 0, 0x50u, 0xE4u, 0xC6u, 0x42u, 0x6Fu);
  v11 = IOCreatePlugInInterfaceForService(v7, v9, v10, &theInterface, &theScore);
  v12 = 0;
  v13 = theInterface;
  if (!v11 && theInterface)
  {
    QueryInterface = (*theInterface)->QueryInterface;
    v15 = CFUUIDGetConstantUUIDWithBytes(v8, 0x59u, 0x79u, 0x99u, 0x3Cu, 0x85u, 0xF5u, 0x4Du, 0x59u, 0x85u, 0x93u, 0xFFu, 0x92u, 0x15u, 0xDAu, 0x47u, 0xADu);
    v16 = CFUUIDGetUUIDBytes(v15);
    (QueryInterface)(v13, *&v16.byte0, *&v16.byte8, a2 + 8);
    v17 = *(a2 + 8);
    if (v17)
    {
      v18 = (*(*v17 + 64))(v17, 0);
      v13 = theInterface;
      if (v18)
      {
        v12 = 3758097101;
        if (!theInterface)
        {
          return v12;
        }
      }

      else
      {
        v12 = 0;
      }

      goto LABEL_10;
    }

    v12 = 0;
    v13 = theInterface;
  }

  if (v13)
  {
LABEL_10:
    ((*v13)->Release)(v13);
  }

  return v12;
}

uint64_t AppleSPUAccCompassPlugin::setProperty(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14[1] = *MEMORY[0x29EDCA608];
  MEMORY[0x2A1C7C4A8]();
  v8 = (v14 - ((v7 + 19) & 0xFFFFFFFFFFFFFFF0));
  *v8 = v9;
  memcpy(v8 + 1, v10, v7);
  v11 = *(a2 + 8);
  if (v11)
  {
    result = (*(*v11 + 80))(v11, 4, v8, a5 + 4, 0, 0);
  }

  else
  {
    result = 3758097112;
  }

  v13 = *MEMORY[0x29EDCA608];
  return result;
}

const __CFNumber *AppleSPUAccCompassPlugin::getIOHIDServiceRegistryID()
{
  result = IOHIDServiceGetRegistryID();
  if (result)
  {
    valuePtr = 0;
    if (CFNumberGetValue(result, kCFNumberSInt64Type, &valuePtr))
    {
      return valuePtr;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void AppleSPUAccCompassPlugin::accAddedNotification(AppleSPUAccCompassPlugin *this, void *a2, int a3, __IOHIDDevice *a4, __IOHIDDevice *a5)
{
  v24 = *MEMORY[0x29EDCA608];
  v19 = 0;
  if (this)
  {
    v8 = qword_2A1A130A8;
    if (os_log_type_enabled(qword_2A1A130A8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v23 = a4;
      _os_log_impl(&dword_29D407000, v8, OS_LOG_TYPE_DEFAULT, "Accessory added %p\n", buf, 0xCu);
    }

    v9 = AppleSPUAccCompassPlugin::verifyAccMatchedDevice(this, a4);
    if (!v9)
    {
      v10 = 0;
      v11 = 1;
      while (1)
      {
        v12 = v11;
        v13 = (&AppleSPUAccCompassPlugin::accCompassCompensationTable + 16 * v10);
        AccCompassCompensationElementData = AppleSPUAccCompassPlugin::getAccCompassCompensationElementData(v9, a4, 65302, v13[1], buf, &v19);
        if (AccCompassCompensationElementData)
        {
          goto LABEL_2;
        }

        if (AppleSPUAccCompassPlugin::setProperty(AccCompassCompensationElementData, *(this + 3), v13[2], buf, v19))
        {
          break;
        }

        buf[0] = 1;
        v19 = 1;
        v15 = *(this + 3);
        *v20 = v13[3];
        v21 = 1;
        v16 = *(v15 + 8);
        if (!v16 || (*(*v16 + 80))(v16, 4, v20, 5, 0, 0))
        {
          v18 = qword_2A1A130A8;
          if (!sub_29D408420())
          {
            goto LABEL_2;
          }

          *v20 = 0;
          goto LABEL_19;
        }

        v17 = qword_2A1A130A8;
        v9 = os_log_type_enabled(qword_2A1A130A8, OS_LOG_TYPE_DEFAULT);
        if (v9)
        {
          *v20 = 0;
          _os_log_impl(&dword_29D407000, v17, OS_LOG_TYPE_DEFAULT, "Accessory Compass Compensation enabled \n", v20, 2u);
        }

        v11 = 0;
        v10 = 1;
        if ((v12 & 1) == 0)
        {
          goto LABEL_2;
        }
      }

      v18 = qword_2A1A130A8;
      if (!sub_29D408420())
      {
        goto LABEL_2;
      }

      *v20 = 0;
LABEL_19:
      _os_log_error_impl(&dword_29D407000, v18, OS_LOG_TYPE_ERROR, "Error enabling compass compensation!", v20, 2u);
    }
  }

LABEL_2:
  v5 = *MEMORY[0x29EDCA608];
}

uint64_t AppleSPUAccCompassPlugin::verifyAccMatchedDevice(AppleSPUAccCompassPlugin *this, IOHIDDeviceRef device)
{
  v3 = this;
  v15 = *MEMORY[0x29EDCA608];
  v4 = 3758097109;
  if (!*(this + 5) || (v5 = qword_2A1A130A8, os_log_type_enabled(qword_2A1A130A8, OS_LOG_TYPE_DEFAULT)) && (v13 = 134217984, v14 = device, _os_log_impl(&dword_29D407000, v5, OS_LOG_TYPE_DEFAULT, "Unexpected Second Accessory Verified %p", &v13, 0xCu), !*(v3 + 5)))
  {
    v6 = 0;
    v7 = 1;
    v8 = 1;
    do
    {
      v9 = v7;
      this = AppleSPUAccCompassPlugin::checkForAccCompassCompensationElements(this, device, 65302, *(&AppleSPUAccCompassPlugin::accCompassCompensationTable + 4 * v6 + 1));
      v7 = 0;
      v8 &= this == 0;
      v6 = 1;
    }

    while ((v9 & 1) != 0);
    if (v8)
    {
      *(v3 + 5) = device;
      v10 = qword_2A1A130A8;
      v4 = 0;
      if (os_log_type_enabled(qword_2A1A130A8, OS_LOG_TYPE_DEFAULT))
      {
        v13 = 134217984;
        v14 = device;
        _os_log_impl(&dword_29D407000, v10, OS_LOG_TYPE_DEFAULT, "Accessory verified and attached %p\n", &v13, 0xCu);
        v4 = 0;
      }
    }

    else
    {
      v4 = 3758097136;
    }
  }

  v11 = *MEMORY[0x29EDCA608];
  return v4;
}

uint64_t AppleSPUAccCompassPlugin::checkForAccCompassCompensationElements(AppleSPUAccCompassPlugin *this, IOHIDDeviceRef device, int a3, int a4)
{
  v7 = 3758097136;
  if (IOHIDDeviceOpen(device, 0))
  {
    return 3758097101;
  }

  v8 = IOHIDDeviceCopyMatchingElements(device, 0, 0);
  if (v8)
  {
    v9 = v8;
    if (CFArrayGetCount(v8) >= 1)
    {
      v10 = 0;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v9, v10);
        if (ValueAtIndex)
        {
          v12 = ValueAtIndex;
          if (IOHIDElementGetUsage(ValueAtIndex) == a4 && IOHIDElementGetUsagePage(v12) == a3 && IOHIDElementGetType(v12) == kIOHIDElementTypeFeature)
          {
            break;
          }
        }

        if (CFArrayGetCount(v9) <= ++v10)
        {
          goto LABEL_10;
        }
      }

      v7 = 0;
    }

LABEL_10:
    CFRelease(v9);
  }

  else
  {
    v7 = 0;
  }

  IOHIDDeviceClose(device, 0);
  return v7;
}

uint64_t AppleSPUAccCompassPlugin::getAccCompassCompensationElementData(AppleSPUAccCompassPlugin *this, IOHIDDeviceRef device, int a3, int a4, unsigned __int8 *a5, unint64_t *a6)
{
  pValue = 0;
  if (IOHIDDeviceOpen(device, 0))
  {
    return 3758097101;
  }

  v11 = IOHIDDeviceCopyMatchingElements(device, 0, 0);
  if (v11)
  {
    v12 = v11;
    if (CFArrayGetCount(v11) >= 1)
    {
      v13 = 0;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v12, v13);
        if (ValueAtIndex)
        {
          v15 = ValueAtIndex;
          if (IOHIDElementGetUsage(ValueAtIndex) == a4 && IOHIDElementGetUsagePage(v15) == a3 && IOHIDElementGetType(v15) == kIOHIDElementTypeFeature)
          {
            break;
          }
        }

        if (CFArrayGetCount(v12) <= ++v13)
        {
          goto LABEL_10;
        }
      }

      IOHIDDeviceGetValue(device, v15, &pValue);
      if (pValue)
      {
        Length = IOHIDValueGetLength(pValue);
        BytePtr = IOHIDValueGetBytePtr(pValue);
      }

      else
      {
        BytePtr = 0;
        Length = 0;
      }

      *a6 = Length;
      memcpy(a5, BytePtr, Length);
    }

LABEL_10:
    CFRelease(v12);
  }

  IOHIDDeviceClose(device, 0);
  return 0;
}

uint64_t AppleSPUAccCompassPlugin::performCommand(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v7 = *(a2 + 8);
  if (!v7)
  {
    return 3758097112;
  }

  result = (*(*v7 + 80))(v7, a3, a4, a5, a6, a7);
  if (result)
  {
    *a7 = 0;
  }

  return result;
}

uint64_t AppleSPUAccCompassPlugin::getProperty(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, void *a6)
{
  result = 3758097090;
  v11 = a3;
  v10 = a5;
  if (a6)
  {
    v7 = *(a2 + 8);
    if (v7)
    {
      result = (*(*v7 + 80))(*(a2 + 8), 10, &v11, 4, a4, &v10);
      v9 = v10;
      if (result)
      {
        v9 = 0;
      }

      *a6 = v9;
    }

    else
    {
      return 3758097112;
    }
  }

  return result;
}

void sub_29D408E44()
{
  if (sub_29D408420())
  {
    sub_29D408400(&dword_29D407000, v0, v1, "Error connecting to compass service!", v2, v3, v4, v5, 0);
  }
}

void sub_29D408E94()
{
  if (sub_29D408420())
  {
    sub_29D408400(&dword_29D407000, v0, v1, "Error adding match notification!", v2, v3, v4, v5, 0);
  }
}

void sub_29D408EE4()
{
  if (sub_29D408420())
  {
    sub_29D408400(&dword_29D407000, v0, v1, "Error disabling compass compensation!", v2, v3, v4, v5, 0);
  }
}

CFUUIDBytes CFUUIDGetUUIDBytes(CFUUIDRef uuid)
{
  v1 = MEMORY[0x2A1C59700](uuid);
  result.byte8 = v2;
  result.byte9 = BYTE1(v2);
  result.byte10 = BYTE2(v2);
  result.byte11 = BYTE3(v2);
  result.byte12 = BYTE4(v2);
  result.byte13 = BYTE5(v2);
  result.byte14 = BYTE6(v2);
  result.byte15 = HIBYTE(v2);
  result.byte0 = v1;
  result.byte1 = BYTE1(v1);
  result.byte2 = BYTE2(v1);
  result.byte3 = BYTE3(v1);
  result.byte4 = BYTE4(v1);
  result.byte5 = BYTE5(v1);
  result.byte6 = BYTE6(v1);
  result.byte7 = HIBYTE(v1);
  return result;
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