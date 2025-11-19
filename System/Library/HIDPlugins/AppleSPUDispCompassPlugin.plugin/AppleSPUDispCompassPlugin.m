uint64_t sub_29D40A8DC(uint64_t a1)
{
  v1 = (*(a1 + 16) + 1);
  *(a1 + 16) = v1;
  return v1;
}

void AppleSPUDispCompassPlugin::alloc(AppleSPUDispCompassPlugin *this, const __CFAllocator *a2)
{
  v3 = MEMORY[0x29ED56550](this, 32, 0x1060040762C8C71, 0);

  AppleSPUDispCompassPlugin::AppleSPUDispCompassPlugin(v3, this);
}

void AppleSPUDispCompassPlugin::AppleSPUDispCompassPlugin(AppleSPUDispCompassPlugin *this, const __CFAllocator *a2)
{
  *this = &AppleSPUDispCompassPlugin::vtbl;
  *(this + 1) = a2;
  *(this + 4) = 1;
  *(this + 3) = 0;
  v2 = CFUUIDGetConstantUUIDWithBytes(*MEMORY[0x29EDB8EF0], 0xAu, 0x5Fu, 0x53u, 0x71u, 0xC1u, 0x3Eu, 0x48u, 0xC6u, 0x8Eu, 0xBu, 0, 0xCu, 0x56u, 0xE8u, 0x35u, 0xF2u);
  CFPlugInAddInstanceForFactory(v2);
}

void AppleSPUDispCompassPlugin::~AppleSPUDispCompassPlugin(AppleSPUDispCompassPlugin *this)
{
  os_release(qword_2A17A2840);
  v1 = CFUUIDGetConstantUUIDWithBytes(*MEMORY[0x29EDB8EF0], 0xAu, 0x5Fu, 0x53u, 0x71u, 0xC1u, 0x3Eu, 0x48u, 0xC6u, 0x8Eu, 0xBu, 0, 0xCu, 0x56u, 0xE8u, 0x35u, 0xF2u);
  CFPlugInRemoveInstanceForFactory(v1);
}

uint64_t AppleSPUDispCompassPlugin::QueryInterface(AppleSPUDispCompassPlugin *this, CFUUIDBytes a2, void **a3)
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

uint64_t AppleSPUDispCompassPlugin::AddRef(AppleSPUDispCompassPlugin *this)
{
  v1 = (*(this + 4) + 1);
  *(this + 4) = v1;
  return v1;
}

uint64_t AppleSPUDispCompassPlugin::Release(AppleSPUDispCompassPlugin *this)
{
  v1 = *(this + 4);
  v2 = (v1 - 1);
  *(this + 4) = v2;
  if (v1 == 1)
  {
    AppleSPUDispCompassPlugin::~AppleSPUDispCompassPlugin(this);
    AppleSPUDispCompassPlugin::operator delete(v3);
  }

  return v2;
}

void AppleSPUDispCompassPlugin::open()
{
  dispatch_get_global_queue(0, 0);
  if (qword_2A17A2848 != -1)
  {
    sub_29D40B370();
  }

  operator new();
}

os_log_t sub_29D40AD6C()
{
  result = os_log_create("AOP", "AppleSPUDispCompassPlugin");
  qword_2A17A2840 = result;
  return result;
}

uint64_t AppleSPUDispCompassPlugin::close(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    MEMORY[0x29ED56640](v2, 0x10B0C4017A8DECDLL);
    *(a1 + 24) = 0;
  }

  v3 = dword_2A17A2850;

  return notify_cancel(v3);
}

void AppleSPUDispCompassServicePluginFactory(const __CFAllocator *a1, const void *a2)
{
  v4 = CFUUIDGetConstantUUIDWithBytes(*MEMORY[0x29EDB8EF0], 0x6Bu, 3u, 0x40u, 0xD3u, 0x57u, 0x98u, 0x40u, 0x64u, 0xAAu, 0x17u, 0x92u, 4u, 0xC7u, 0xB0u, 0x6Fu, 0xFDu);
  if (CFEqual(a2, v4))
  {
    v5 = MEMORY[0x29ED56550](a1, 32, 0x1060040762C8C71, 0);
    AppleSPUDispCompassPlugin::AppleSPUDispCompassPlugin(v5, a1);
  }
}

uint64_t AppleSPUDispCompassPlugin::openInterface(uint64_t a1, uint64_t a2)
{
  theInterface = 0;
  IOHIDServiceRegistryID = AppleSPUDispCompassPlugin::getIOHIDServiceRegistryID();
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

void sub_29D40B0DC(uint64_t a1, int token)
{
  v10[1] = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 32);
  v10[0] = 0;
  notify_get_state(token, v10);
  if (v10[0])
  {
    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  v4 = *(v2 + 24);
  LODWORD(v10[0]) = 89;
  HIDWORD(v10[0]) = v3;
  v5 = *(v4 + 8);
  if (v5)
  {
    v6 = sub_29D40AEB8(v5);
    v7(v6);
  }

  v8 = qword_2A17A2840;
  if (os_log_type_enabled(qword_2A17A2840, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(v10[0]) = 67109120;
    HIDWORD(v10[0]) = v3;
    _os_log_impl(&dword_29D40A000, v8, OS_LOG_TYPE_DEFAULT, "Forced compass power mode %d", v10, 8u);
  }

  v9 = *MEMORY[0x29EDCA608];
}

uint64_t AppleSPUDispCompassPlugin::setProperty(int a1, uint64_t a2, int a3, void *__src, size_t __n)
{
  *&v11[4] = *MEMORY[0x29EDCA608];
  memcpy(v11, __src, __n);
  v6 = *(a2 + 8);
  if (v6)
  {
    v7 = sub_29D40AEB8(v6);
    result = v8(v7);
  }

  else
  {
    result = 3758097112;
  }

  v10 = *MEMORY[0x29EDCA608];
  return result;
}

const __CFNumber *AppleSPUDispCompassPlugin::getIOHIDServiceRegistryID()
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

uint64_t AppleSPUDispCompassPlugin::performCommand(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
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

uint64_t AppleSPUDispCompassPlugin::getProperty(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, void *a6)
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

void sub_29D40B384()
{
  v0 = qword_2A17A2840;
  if (os_log_type_enabled(qword_2A17A2840, OS_LOG_TYPE_ERROR))
  {
    *v1 = 0;
    _os_log_error_impl(&dword_29D40A000, v0, OS_LOG_TYPE_ERROR, "Error connecting to compass service!", v1, 2u);
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