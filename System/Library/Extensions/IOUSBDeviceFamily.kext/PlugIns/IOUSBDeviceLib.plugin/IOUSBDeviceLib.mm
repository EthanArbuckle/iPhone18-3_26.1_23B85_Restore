void *IOUSBDeviceInterfaceClass::_interestCallback(void *this, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v5 = this[28];
  if (v5)
  {
    return v5(this[29], a3, a4, this[30]);
  }

  return this;
}

uint64_t IOUSBDeviceInterfaceClass::_releaseDataCallback(uint64_t this, uint64_t a2, void *a3)
{
  input = this;
  if (a2)
  {
    return IOConnectCallScalarMethod(*(a2 + 52), 0x13u, &input, 1u, 0, 0);
  }

  return this;
}

void IOUSBDeviceInterfaceClass::_handleAsyncCallback(IOUSBDeviceInterfaceClass *this, __CFMachPort *a2, void *a3, uint64_t a4, void *a5)
{
  if (*(a2 + 5) == 53)
  {
    JUMPOUT(0x29ED56110);
  }
}

uint64_t IOUSBDeviceLibFactory(uint64_t a1, const void *a2)
{
  v3 = CFUUIDGetConstantUUIDWithBytes(0, 0x9Eu, 0x72u, 0x21u, 0x7Eu, 0x8Au, 0x60u, 0x11u, 0xDBu, 0xBFu, 0x57u, 0, 0xDu, 0x93u, 0x6Du, 6u, 0xD2u);
  v4 = CFEqual(a2, v3);
  if (v4)
  {

    IOUSBDeviceInterfaceClass::alloc(v4);
  }

  return 0;
}

void IOUSBDeviceIUnknown::factoryAddRef(IOUSBDeviceIUnknown *this)
{
  if (!IOUSBDeviceIUnknown::factoryRefCount++)
  {
    v3 = CFUUIDGetConstantUUIDWithBytes(0, 0xD9u, 0x5Cu, 0xE1u, 0xD0u, 0x8Bu, 0xCCu, 0x11u, 0xDBu, 0xADu, 0, 0, 0xDu, 0x93u, 0x6Du, 6u, 0xD2u);
    CFRetain(v3);

    CFPlugInAddInstanceForFactory(v3);
  }
}

void IOUSBDeviceIUnknown::factoryRelease(IOUSBDeviceIUnknown *this)
{
  v2 = IOUSBDeviceIUnknown::factoryRefCount--;
  if (IOUSBDeviceIUnknown::factoryRefCount)
  {
    if (v2 <= 0)
    {
      IOUSBDeviceIUnknown::factoryRefCount = 0;
    }
  }

  else
  {
    v3 = CFUUIDGetConstantUUIDWithBytes(0, 0xD9u, 0x5Cu, 0xE1u, 0xD0u, 0x8Bu, 0xCCu, 0x11u, 0xDBu, 0xADu, 0, 0, 0xDu, 0x93u, 0x6Du, 6u, 0xD2u);
    CFPlugInRemoveInstanceForFactory(v3);

    CFRelease(v3);
  }
}

void IOUSBDeviceIUnknown::IOUSBDeviceIUnknown(IOUSBDeviceIUnknown *this, void *a2)
{
  *this = &unk_2A241CC70;
  *(this + 2) = 1;
  *(this + 2) = a2;
  *(this + 3) = this;
  IOUSBDeviceIUnknown::factoryAddRef(this);
}

uint64_t IOUSBDeviceIUnknown::addRef(IOUSBDeviceIUnknown *this)
{
  v1 = (*(this + 2) + 1);
  *(this + 2) = v1;
  return v1;
}

uint64_t IOUSBDeviceIUnknown::release(IOUSBDeviceIUnknown *this)
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

void IOUSBDeviceInterfaceClass::IOUSBDeviceInterfaceClass(IOUSBDeviceInterfaceClass *this)
{
  IOUSBDeviceIUnknown::IOUSBDeviceIUnknown(this, &IOUSBDeviceInterfaceClass::sIOCFPlugInInterfaceV1);
  *v1 = &unk_2A241CCB8;
  *(v1 + 32) = &IOUSBDeviceInterfaceClass::sIOUSBDeviceInterfaceInterface;
  *(v1 + 40) = v1;
  *(v1 + 48) = 0;
  *(v1 + 56) = 0;
  *(v1 + 64) = 0;
  *(v1 + 72) = 0;
  *(v1 + 80) = 0;
  *(v1 + 88) = 0;
  *(v1 + 96) = 0;
  *(v1 + 104) = 0u;
  *(v1 + 120) = 0u;
  *(v1 + 136) = 0;
  *(v1 + 144) = 0u;
  *(v1 + 160) = 0u;
  *(v1 + 176) = 0u;
  *(v1 + 192) = 0u;
  *(v1 + 208) = 0u;
  *(v1 + 224) = 0u;
  *(v1 + 240) = 0;
}

{
  IOUSBDeviceIUnknown::IOUSBDeviceIUnknown(this, &IOUSBDeviceInterfaceClass::sIOCFPlugInInterfaceV1);
  *v1 = &unk_2A241CCB8;
  *(v1 + 32) = &IOUSBDeviceInterfaceClass::sIOUSBDeviceInterfaceInterface;
  *(v1 + 40) = v1;
  *(v1 + 48) = 0;
  *(v1 + 56) = 0;
  *(v1 + 64) = 0;
  *(v1 + 72) = 0;
  *(v1 + 80) = 0;
  *(v1 + 88) = 0;
  *(v1 + 96) = 0;
  *(v1 + 104) = 0u;
  *(v1 + 120) = 0u;
  *(v1 + 136) = 0;
  *(v1 + 144) = 0u;
  *(v1 + 160) = 0u;
  *(v1 + 176) = 0u;
  *(v1 + 192) = 0u;
  *(v1 + 208) = 0u;
  *(v1 + 224) = 0u;
  *(v1 + 240) = 0;
}

void IOUSBDeviceInterfaceClass::~IOUSBDeviceInterfaceClass(IOUSBDeviceInterfaceClass *this)
{
  *this = &unk_2A241CCB8;
  v2 = *(this + 13);
  if (v2)
  {
    IOServiceClose(v2);
    *(this + 13) = 0;
  }

  v3 = *(this + 12);
  if (v3)
  {
    IOObjectRelease(v3);
    *(this + 12) = 0;
  }

  v4 = *(this + 15);
  if (v4)
  {
    (*(*this + 88))(this, v4, *(this + 16));
  }

  v5 = *(this + 10);
  if (v5)
  {
    CFMachPortInvalidate(v5);
    CFRelease(*(this + 10));
    *(this + 10) = 0;
  }

  v6 = *(this + 11);
  if (v6)
  {
    CFRunLoopSourceInvalidate(v6);
    CFRelease(*(this + 11));
    *(this + 11) = 0;
  }

  v7 = *(this + 18);
  v8 = MEMORY[0x29EDCA6B0];
  if (v7)
  {
    mach_port_mod_refs(*MEMORY[0x29EDCA6B0], v7, 1u, -1);
    *(this + 18) = 0;
  }

  v9 = *(this + 13);
  if (v9)
  {
    CFMachPortInvalidate(v9);
    CFRelease(*(this + 13));
    *(this + 13) = 0;
  }

  v10 = *(this + 14);
  if (v10)
  {
    CFRunLoopSourceInvalidate(v10);
    CFRelease(*(this + 14));
    *(this + 14) = 0;
  }

  v11 = *(this + 24);
  if (v11)
  {
    mach_port_mod_refs(*v8, v11, 1u, -1);
    *(this + 24) = 0;
  }

  v12 = *(this + 20);
  if (v12)
  {
    (*(*this + 88))(this, v12, *(this + 21));
  }

  v13 = *(this + 18);
  if (v13)
  {
    CFMachPortInvalidate(v13);
    CFRelease(*(this + 18));
    *(this + 18) = 0;
  }

  v14 = *(this + 19);
  if (v14)
  {
    CFRunLoopSourceInvalidate(v14);
    CFRelease(*(this + 19));
    *(this + 19) = 0;
  }

  v15 = *(this + 34);
  if (v15)
  {
    mach_port_mod_refs(*v8, v15, 1u, -1);
    *(this + 34) = 0;
  }

  v16 = *(this + 14);
  if (v16)
  {
    IOObjectRelease(v16);
    *(this + 14) = 0;
  }

  v17 = *(this + 8);
  if (v17)
  {
    IONotificationPortDestroy(v17);
    *(this + 8) = 0;
  }

  IOUSBDeviceIUnknown::~IOUSBDeviceIUnknown(this);
}

{
  IOUSBDeviceInterfaceClass::~IOUSBDeviceInterfaceClass(this);

  JUMPOUT(0x29ED561F0);
}

uint64_t IOUSBDeviceInterfaceClass::queryInterface(IOUSBDeviceInterfaceClass *this, CFUUIDBytes a2, void **a3)
{
  v5 = CFUUIDCreateFromUUIDBytes(0, a2);
  v6 = CFUUIDGetConstantUUIDWithBytes(*MEMORY[0x29EDB8EF0], 0, 0, 0, 0, 0, 0, 0, 0, 0xC0u, 0, 0, 0, 0, 0, 0, 0x46u);
  if (CFEqual(v5, v6) || (v7 = CFUUIDGetConstantUUIDWithBytes(0, 0xC2u, 0x44u, 0xE8u, 0x58u, 0x10u, 0x9Cu, 0x11u, 0xD4u, 0x91u, 0xD4u, 0, 0x50u, 0xE4u, 0xC6u, 0x42u, 0x6Fu), CFEqual(v5, v7)))
  {
    v8 = this + 16;
    v9 = *this;
LABEL_4:
    *a3 = v8;
    (*(v9 + 24))(this);
    goto LABEL_5;
  }

  v12 = CFUUIDGetConstantUUIDWithBytes(0, 0xEAu, 0x33u, 0xBAu, 0x4Fu, 0x8Au, 0x60u, 0x11u, 0xDBu, 0x84u, 0xDBu, 0, 0xDu, 0x93u, 0x6Du, 6u, 0xD2u);
  if (CFEqual(v5, v12))
  {
    v8 = this + 32;
    v9 = *this;
    goto LABEL_4;
  }

  *a3 = 0;
LABEL_5:
  if (*a3)
  {
    v10 = 0;
  }

  else
  {
    v10 = 2147483652;
  }

  CFRelease(v5);
  return v10;
}

uint64_t IOUSBDeviceInterfaceClass::probe(IOUSBDeviceInterfaceClass *this, const __CFDictionary *a2, io_object_t object, int *a4)
{
  v4 = 3758097090;
  if (object)
  {
    if (IOObjectConformsTo(object, "IOUSBDeviceInterface"))
    {
      return 0;
    }

    else
    {
      return 3758097090;
    }
  }

  return v4;
}

uint64_t IOUSBDeviceInterfaceClass::start(IOUSBDeviceInterfaceClass *this, const __CFDictionary *a2, io_object_t object)
{
  *(this + 12) = object;
  IOObjectRetain(object);
  v4 = IOServiceOpen(*(this + 12), *MEMORY[0x29EDCA6B0], 0, this + 13);
  if (!v4)
  {
    v4 = 3758097084;
    if (*(this + 13))
    {
      v6 = IONotificationPortCreate(*MEMORY[0x29EDBB110]);
      *(this + 8) = v6;
      if (v6)
      {
        return 0;
      }

      v4 = 3758097085;
    }
  }

  v5 = *(this + 12);
  if (v5)
  {
    IOObjectRelease(v5);
    *(this + 12) = 0;
  }

  return v4;
}

uint64_t IOUSBDeviceInterfaceClass::open(IOUSBDeviceInterfaceClass *this, unsigned int a2)
{
  outputCnt = 0;
  v4 = a2;
  result = IOConnectCallScalarMethod(*(this + 13), 0, &v4, 1u, 0, &outputCnt);
  if (!result)
  {
    return IOServiceAddInterestNotification(*(this + 8), *(this + 12), "IOGeneralInterest", IOUSBDeviceInterfaceClass::_interestCallback, this, this + 14);
  }

  return result;
}

uint64_t IOUSBDeviceInterfaceClass::close(IOUSBDeviceInterfaceClass *this, unsigned int a2)
{
  outputCnt = 0;
  v5 = a2;
  v3 = *(this + 14);
  if (v3)
  {
    IOObjectRelease(v3);
    *(this + 14) = 0;
  }

  return IOConnectCallScalarMethod(*(this + 13), 1u, &v5, 1u, 0, &outputCnt);
}

uint64_t IOUSBDeviceInterfaceClass::scheduleWithRunLoop(mach_port_t *recvPort, CFRunLoopRef rl, CFRunLoopMode mode)
{
  RunLoopSource = *(recvPort + 11);
  if (RunLoopSource)
  {
    goto LABEL_21;
  }

  context.version = 0;
  context.info = 0;
  shouldFreeInfo = -86;
  v10 = recvPort + 18;
  v9 = recvPort[18];
  if (!v9)
  {
    v11 = IOCreateReceivePort(0x35u, recvPort + 18);
    if (v11)
    {
      return v11;
    }

    v9 = *v10;
    if (!*v10)
    {
      return 3758097085;
    }
  }

  v11 = 3758097085;
  context.version = 1;
  context.info = recvPort;
  memset(&context.retain, 0, 24);
  v12 = CFMachPortCreateWithPort(0, v9, IOUSBDeviceInterfaceClass::_handleAsyncCallback, &context, &shouldFreeInfo);
  *(recvPort + 10) = v12;
  if (v12)
  {
    RunLoopSource = CFMachPortCreateRunLoopSource(0, v12, 0);
    *(recvPort + 11) = RunLoopSource;
    if (RunLoopSource)
    {
LABEL_21:
      if (*(recvPort + 15))
      {
        (*(*recvPort + 88))(recvPort, *(recvPort + 15), *(recvPort + 16));
        RunLoopSource = *(recvPort + 11);
      }

      CFRunLoopAddSource(rl, RunLoopSource, mode);
      v7 = IONotificationPortGetRunLoopSource(*(recvPort + 8));
      CFRunLoopAddSource(rl, v7, mode);
      if (rl)
      {
        v8 = CFRetain(rl);
      }

      else
      {
        v8 = 0;
      }

      *(recvPort + 15) = v8;
      if (mode)
      {
        v13 = CFRetain(mode);
      }

      else
      {
        v13 = 0;
      }

      v11 = 0;
      *(recvPort + 16) = v13;
    }
  }

  return v11;
}

uint64_t IOUSBDeviceInterfaceClass::unscheduleFromRunLoop(IOUSBDeviceInterfaceClass *this, __CFRunLoop *a2, const __CFString *a3)
{
  v4 = *(this + 15);
  if (v4 == a2)
  {
    v6 = (this + 128);
    CFRunLoopRemoveSource(v4, *(this + 11), *(this + 16));
    v8 = *(this + 15);
    RunLoopSource = IONotificationPortGetRunLoopSource(*(this + 8));
    CFRunLoopRemoveSource(v8, RunLoopSource, *(this + 16));
    v10 = *(this + 15);
    if (v10)
    {
      CFRelease(v10);
      *(this + 15) = 0;
    }
  }

  else
  {
    v5 = *(this + 20);
    if (v5 != a2)
    {
      return 0;
    }

    v6 = (this + 168);
    CFRunLoopRemoveSource(v5, *(this + 19), *(this + 21));
    v7 = *(this + 20);
    if (v7)
    {
      CFRelease(v7);
      *(this + 20) = 0;
    }
  }

  if (*v6)
  {
    CFRelease(*v6);
    *v6 = 0;
  }

  return 0;
}

uint64_t IOUSBDeviceInterfaceClass::setDescription(IOUSBDeviceInterfaceClass *this, CFStringRef theString)
{
  v8 = *MEMORY[0x29EDCA608];
  *&v3 = 0xAAAAAAAAAAAAAAAALL;
  *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v7[14] = v3;
  v7[15] = v3;
  v7[12] = v3;
  v7[13] = v3;
  v7[10] = v3;
  v7[11] = v3;
  v7[8] = v3;
  v7[9] = v3;
  v7[6] = v3;
  v7[7] = v3;
  v7[4] = v3;
  v7[5] = v3;
  v7[2] = v3;
  v7[3] = v3;
  v7[0] = v3;
  v7[1] = v3;
  if (theString)
  {
    if (!CFStringGetCString(theString, v7, 256, 0x8000100u))
    {
      result = 3758096385;
      goto LABEL_7;
    }

    v4 = strlen(v7);
  }

  else
  {
    v4 = 0;
  }

  result = IOConnectCallStructMethod(*(this + 13), 2u, v7, v4, 0, 0);
LABEL_7:
  v6 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t IOUSBDeviceInterfaceClass::setClassForAlternateSetting(IOUSBDeviceInterfaceClass *this, unsigned int a2, unsigned int a3)
{
  input[2] = *MEMORY[0x29EDCA608];
  input[0] = a2;
  input[1] = a3;
  result = IOConnectCallScalarMethod(*(this + 13), 3u, input, 2u, 0, 0);
  v4 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t IOUSBDeviceInterfaceClass::setSubClassForAlternateSetting(IOUSBDeviceInterfaceClass *this, unsigned int a2, unsigned int a3)
{
  input[2] = *MEMORY[0x29EDCA608];
  input[0] = a2;
  input[1] = a3;
  result = IOConnectCallScalarMethod(*(this + 13), 4u, input, 2u, 0, 0);
  v4 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t IOUSBDeviceInterfaceClass::setProtocolForAlternateSetting(IOUSBDeviceInterfaceClass *this, unsigned int a2, unsigned int a3)
{
  input[2] = *MEMORY[0x29EDCA608];
  input[0] = a2;
  input[1] = a3;
  result = IOConnectCallScalarMethod(*(this + 13), 5u, input, 2u, 0, 0);
  v4 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t IOUSBDeviceInterfaceClass::appendStandardClassOrVendorDescriptor(IOUSBDeviceInterfaceClass *this, unsigned int a2, unsigned __int8 *inputStruct, size_t inputStructCnt, unsigned int a5)
{
  input[2] = *MEMORY[0x29EDCA608];
  input[0] = a2;
  input[1] = a5;
  result = IOConnectCallMethod(*(this + 13), 6u, input, 2u, inputStruct, inputStructCnt, 0, 0, 0, 0);
  v6 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t IOUSBDeviceInterfaceClass::appendNonStandardClassOrVendorDescriptor(IOUSBDeviceInterfaceClass *this, unsigned int a2, unsigned __int8 *inputStruct, size_t inputStructCnt, unsigned int a5)
{
  input[2] = *MEMORY[0x29EDCA608];
  input[0] = a2;
  input[1] = a5;
  result = IOConnectCallMethod(*(this + 13), 7u, input, 2u, inputStruct, inputStructCnt, 0, 0, 0, 0);
  v6 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t IOUSBDeviceInterfaceClass::unlockConfiguration(IOUSBDeviceInterfaceClass *this, unsigned int a2)
{
  v4[1] = *MEMORY[0x29EDCA608];
  v4[0] = a2;
  result = IOConnectCallScalarMethod(*(this + 13), 0x17u, v4, 1u, 0, 0);
  v3 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t IOUSBDeviceInterfaceClass::createPipe(IOUSBDeviceInterfaceClass *this, int a2, int a3, int a4, int a5, int a6, int a7, unint64_t *a8)
{
  input[6] = *MEMORY[0x29EDCA608];
  input[0] = a2;
  input[1] = a3;
  input[2] = a4;
  input[3] = a5;
  input[4] = a6;
  input[5] = a7;
  output = 0;
  outputCnt = 1;
  if (a8)
  {
    result = IOConnectCallScalarMethod(*(this + 13), 0xAu, input, 6u, &output, &outputCnt);
    if (!result)
    {
      *a8 = output;
    }
  }

  else
  {
    result = 3758097090;
  }

  v10 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t IOUSBDeviceInterfaceClass::findPipe(IOUSBDeviceInterfaceClass *this, int a2, int a3, int a4, unint64_t *a5)
{
  input[3] = *MEMORY[0x29EDCA608];
  input[0] = a2;
  input[1] = a3;
  input[2] = a4;
  output = 0;
  outputCnt = 1;
  if (a5)
  {
    result = IOConnectCallScalarMethod(*(this + 13), 0x19u, input, 3u, &output, &outputCnt);
    if (!result)
    {
      *a5 = output;
    }
  }

  else
  {
    result = 3758097090;
  }

  v7 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t IOUSBDeviceInterfaceClass::setClassCommandCallbacks(mach_port_t *recvPort, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CFRunLoopRef rl, CFRunLoopMode mode)
{
  v31 = *MEMORY[0x29EDCA608];
  v16 = recvPort[18];
  v17 = *(recvPort + 20);
  if (v17)
  {
    (*(*recvPort + 88))(recvPort, v17, *(recvPort + 21));
  }

  if (!rl)
  {
    goto LABEL_13;
  }

  RunLoopSource = *(recvPort + 19);
  if (RunLoopSource)
  {
    goto LABEL_5;
  }

  *context = 0;
  *&context[8] = 0;
  shouldFreeInfo[0] = -86;
  v21 = recvPort + 34;
  v20 = recvPort[34];
  if (!v20)
  {
    v22 = IOCreateReceivePort(0x35u, recvPort + 34);
    if (v22)
    {
      goto LABEL_14;
    }

    v20 = *v21;
    if (!*v21)
    {
      v22 = 3758097085;
      goto LABEL_14;
    }
  }

  v22 = 3758097085;
  *context = 1;
  *&context[8] = recvPort;
  memset(&context[16], 0, 24);
  v23 = CFMachPortCreateWithPort(0, v20, IOUSBDeviceInterfaceClass::_handleAsyncCallback, context, shouldFreeInfo);
  *(recvPort + 18) = v23;
  if (v23)
  {
    RunLoopSource = CFMachPortCreateRunLoopSource(0, v23, 0);
    *(recvPort + 19) = RunLoopSource;
    if (RunLoopSource)
    {
LABEL_5:
      CFRunLoopAddSource(rl, RunLoopSource, mode);
      *(recvPort + 20) = CFRetain(rl);
      if (mode)
      {
        v19 = CFRetain(mode);
      }

      else
      {
        v19 = 0;
      }

      *(recvPort + 21) = v19;
      v16 = recvPort[34];
LABEL_13:
      *(recvPort + 25) = a4;
      *(recvPort + 26) = a6;
      *(recvPort + 22) = a5;
      *(recvPort + 23) = a2;
      *(recvPort + 24) = a3;
      *context = 0;
      memset(&context[24], 0, 24);
      v30 = 0u;
      *&context[8] = IOUSBDeviceInterfaceClass::_classCommandCallbacksHandler;
      *&context[16] = recvPort;
      *shouldFreeInfo = a2 != 0;
      v27 = a3 != 0;
      v28 = a4 != 0;
      v22 = IOConnectCallAsyncMethod(recvPort[13], 8u, v16, context, 3u, shouldFreeInfo, 3u, 0, 0, 0, 0, 0, 0);
    }
  }

LABEL_14:
  v24 = *MEMORY[0x29EDCA608];
  return v22;
}

void IOUSBDeviceInterfaceClass::_classCommandCallbacksHandler(IOUSBDeviceInterfaceClass *this, void *a2, uint64_t *a3, unint64_t *a4)
{
  v35 = *MEMORY[0x29EDCA608];
  v5 = *(a3 + 6);
  v28 = v5;
  v27 = 0;
  v34 = 0xAAAAAAAAAAAAAAAALL;
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *input = v6;
  v33 = v6;
  v7 = *a3;
  v8 = a3[1];
  v29[0] = BYTE3(v8);
  v29[1] = BYTE2(v8);
  v9 = *(a3 + 4);
  HIDWORD(v10) = v9;
  LODWORD(v10) = v9;
  v31 = v10 >> 16;
  v11 = a3[4];
  v30 = v8;
  if (v7 == 2)
  {
    if ((v8 & 0x80000000) != 0)
    {
      sub_29D406404();
    }

    v18 = *(this + 25);
    if (v18)
    {
      v18 = (v18)(*(this + 22), *(this + 26), v29, *(a3 + 10), v5, *(this + 27));
    }

    input[0] = v18;
    input[1] = v11;
    IOConnectCallScalarMethod(*(this + 13), 9u, input, 2u, 0, 0);
  }

  else
  {
    if (v7 != 1)
    {
      if (!v7)
      {
        v13 = (this + 216);
        v12 = *(this + 27);
        if (v12)
        {
          CFRelease(v12);
          *v13 = 0;
        }

        v14 = *(this + 23);
        if (v14)
        {
          v15 = v14(*(this + 22), *(this + 26), v29, &v28, this + 216, &v27) != 0;
          v16 = HIWORD(v31);
          v5 = v28;
        }

        else
        {
          v15 = 0;
          v16 = v9;
        }

        MapToken = 0;
        if (v15 && v16 != 0)
        {
          v23 = v5;
        }

        else
        {
          v23 = 0;
        }

        input[0] = v15;
        input[1] = v23;
        if (v15)
        {
          if (v5)
          {
            MapToken = *v13;
            if (*v13)
            {
              MapToken = IOUSBDeviceDataGetMapToken();
            }
          }
        }

        v24 = v27;
        if (!v15)
        {
          v24 = 0;
        }

        *&v33 = MapToken;
        *(&v33 + 1) = v24;
        v34 = v11;
        IOConnectCallScalarMethod(*(this + 13), 9u, input, 5u, 0, 0);
        v19 = *(this + 27);
        if (v19)
        {
          if (!v28 || !v15)
          {
            goto LABEL_34;
          }

          if ((v8 & 0x80000000) != 0)
          {
            if (*(this + 24))
            {
              goto LABEL_35;
            }

            goto LABEL_34;
          }

          if (!*(this + 25))
          {
LABEL_34:
            CFRelease(v19);
            *v13 = 0;
            goto LABEL_35;
          }
        }
      }

      goto LABEL_35;
    }

    if ((v8 & 0x80000000) == 0)
    {
      sub_29D406430();
    }

    v17 = *(this + 24);
    if (v17)
    {
      v17(*(this + 22), *(this + 26), v29, *(a3 + 10), v5, *(this + 27));
    }
  }

  v21 = *(this + 27);
  v20 = (this + 216);
  v19 = v21;
  if (v21)
  {
    v13 = v20;
    goto LABEL_34;
  }

LABEL_35:
  v26 = *MEMORY[0x29EDCA608];
}

uint64_t IOUSBDeviceInterfaceClass::setMessageCallback(IOUSBDeviceInterfaceClass *this, void (*a2)(void *, unsigned int, void *, void *), void *a3, void *a4)
{
  *(this + 28) = a2;
  *(this + 29) = a3;
  *(this + 30) = a4;
  return 0;
}

uint64_t IOUSBDeviceInterfaceClass::readPipe(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  input[4] = *MEMORY[0x29EDCA608];
  output = 0;
  input[0] = a2;
  outputCnt = 1;
  MapToken = IOUSBDeviceDataGetMapToken();
  v7 = *a4;
  input[1] = MapToken;
  input[2] = v7;
  input[3] = 0;
  result = IOConnectCallMethod(*(a1 + 52), 0xDu, input, 4u, 0, 0, &output, &outputCnt, 0, 0);
  *a4 = output;
  v9 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t IOUSBDeviceInterfaceClass::readPipeAsync(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  input[4] = *MEMORY[0x29EDCA608];
  v16 = 0u;
  v17 = 0u;
  reference[0] = 0;
  v15 = 0u;
  v13 = 0;
  outputCnt = 1;
  input[0] = a2;
  input[1] = IOUSBDeviceDataGetMapToken();
  input[2] = a4;
  input[3] = 0;
  reference[1] = a5;
  *&v15 = a6;
  result = IOConnectCallAsyncMethod(*(a1 + 52), 0xDu, *(a1 + 72), reference, 3u, input, 4u, 0, 0, &v13, &outputCnt, 0, 0);
  v11 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t IOUSBDeviceInterfaceClass::readIsochPipeAsync(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v26 = *MEMORY[0x29EDCA608];
  v24 = 0u;
  v25 = 0u;
  *reference = 0u;
  v23 = 0u;
  v17 = 0;
  outputCnt = 1;
  if (*(a1 + 72))
  {
    input[0] = a2;
    input[1] = IOUSBDeviceDataGetMapToken();
    v19 = a4;
    v20 = a5;
    v21 = a6;
    reference[1] = a7;
    *&v23 = a8;
    result = IOConnectCallAsyncMethod(*(a1 + 52), 0x15u, *(a1 + 72), reference, 3u, input, 5u, 0, 0, &v17, &outputCnt, 0, 0);
  }

  else
  {
    result = 3758096385;
  }

  v15 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t IOUSBDeviceInterfaceClass::writePipe(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  input[4] = *MEMORY[0x29EDCA608];
  output = 0;
  input[0] = a2;
  outputCnt = 1;
  MapToken = IOUSBDeviceDataGetMapToken();
  v7 = *a4;
  input[1] = MapToken;
  input[2] = v7;
  input[3] = 0;
  result = IOConnectCallMethod(*(a1 + 52), 0xEu, input, 4u, 0, 0, &output, &outputCnt, 0, 0);
  *a4 = output;
  v9 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t IOUSBDeviceInterfaceClass::writePipeAsync(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v19 = *MEMORY[0x29EDCA608];
  v17 = 0u;
  v18 = 0u;
  reference[0] = 0;
  v16 = 0u;
  v13 = 0;
  input[0] = a2;
  outputCnt = 1;
  input[1] = IOUSBDeviceDataGetMapToken();
  input[2] = a4;
  input[3] = 0;
  reference[1] = a5;
  *&v16 = a6;
  result = IOConnectCallAsyncMethod(*(a1 + 52), 0xEu, *(a1 + 72), reference, 3u, input, 4u, 0, 0, &v13, &outputCnt, 0, 0);
  v11 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t IOUSBDeviceInterfaceClass::writeIsochPipeAsync(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v26 = *MEMORY[0x29EDCA608];
  v24 = 0u;
  v25 = 0u;
  *reference = 0u;
  v23 = 0u;
  v17 = 0;
  outputCnt = 1;
  if (*(a1 + 72))
  {
    input[0] = a2;
    input[1] = IOUSBDeviceDataGetMapToken();
    v19 = a4;
    v20 = a5;
    v21 = a6;
    reference[1] = a7;
    *&v23 = a8;
    result = IOConnectCallAsyncMethod(*(a1 + 52), 0x16u, *(a1 + 72), reference, 3u, input, 5u, 0, 0, &v17, &outputCnt, 0, 0);
  }

  else
  {
    result = 3758096385;
  }

  v15 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t IOUSBDeviceInterfaceClass::getPipeCurrentMaxPacketSize(IOUSBDeviceInterfaceClass *this, uint64_t a2, int *a3)
{
  output = 0;
  input = a2;
  outputCnt = 1;
  result = IOConnectCallScalarMethod(*(this + 13), 0x11u, &input, 1u, &output, &outputCnt);
  *a3 = output;
  return result;
}

uint64_t IOUSBDeviceInterfaceClass::createData(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  output[3] = *MEMORY[0x29EDCA608];
  if (a3)
  {
    input = a2;
    memset(output, 0, 24);
    outputCnt = 3;
    v4 = IOConnectCallScalarMethod(*(a1 + 52), 0x12u, &input, 1u, output, &outputCnt);
    if (!v4)
    {
      v5 = *MEMORY[0x29EDB8ED8];
      *a3 = IOUSBDeviceDataCreate();
    }
  }

  else
  {
    v4 = 3758097090;
  }

  v6 = *MEMORY[0x29EDCA608];
  return v4;
}

uint64_t IOUSBDeviceInterfaceClass::mapIOBuffer(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  input[2] = *MEMORY[0x29EDCA608];
  if (a4)
  {
    input[0] = a3;
    input[1] = a2;
    memset(output, 170, sizeof(output));
    outputCnt = 3;
    v5 = IOConnectCallScalarMethod(*(a1 + 52), 0x1Au, input, 2u, output, &outputCnt);
    if (!v5)
    {
      v6 = *MEMORY[0x29EDB8ED8];
      *a4 = IOUSBDeviceDataCreate();
    }
  }

  else
  {
    v5 = 3758097090;
  }

  v7 = *MEMORY[0x29EDCA608];
  return v5;
}

uint64_t IOUSBDeviceInterfaceClass::setPipeProperty(uint64_t a1, uint64_t a2, unsigned int a3)
{
  input[2] = *MEMORY[0x29EDCA608];
  input[0] = a2;
  input[1] = a3;
  result = IOConnectCallScalarMethod(*(a1 + 52), 0x1Bu, input, 2u, 0, 0);
  v4 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t IOUSBDeviceInterfaceClass::reportTimeout(IOUSBDeviceInterfaceClass *this, uint64_t a2)
{
  v4[1] = *MEMORY[0x29EDCA608];
  v4[0] = a2;
  result = IOConnectCallScalarMethod(*(this + 13), 0x1Cu, v4, 1u, 0, 0);
  v3 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t IOUSBDeviceInterfaceClass::isActivated(IOUSBDeviceInterfaceClass *this, int *a2, int *a3)
{
  v10 = *MEMORY[0x29EDCA608];
  if (a2)
  {
    output = 0xAAAAAAAAAAAAAAAALL;
    v9 = 0xAAAAAAAAAAAAAAAALL;
    outputCnt = 2;
    result = IOConnectCallScalarMethod(*(this + 13), 0x14u, 0, 0, &output, &outputCnt);
    if (!result)
    {
      *a2 = output;
      if (*a3)
      {
        *a3 = v9;
      }
    }
  }

  else
  {
    result = 3758097090;
  }

  v6 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t IOUSBDeviceInterfaceClass::registerForDemandLaunch(IOUSBDeviceInterfaceClass *this, CFStringRef theString)
{
  v19 = *MEMORY[0x29EDCA608];
  v2 = (this + 96);
  if (*(this + 24))
  {
    v3 = 0;
  }

  else
  {
    context.version = 0;
    context.info = 0;
    *&v7 = 0xAAAAAAAAAAAAAAAALL;
    *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *buffer = v7;
    v12 = v7;
    v13 = v7;
    v14 = v7;
    v15 = v7;
    v16 = v7;
    v17 = v7;
    v18 = v7;
    if (CFStringGetCString(theString, buffer, 128, 0x600u))
    {
      v3 = bootstrap_check_in(*MEMORY[0x29EDCA6A0], buffer, v2);
      if (!v3)
      {
        v3 = 3758097085;
        context.version = 1;
        context.info = this;
        memset(&context.retain, 0, 24);
        v8 = CFMachPortCreateWithPort(0, *(this + 24), IOUSBDeviceInterfaceClass::_handleLodCallback, &context, 0);
        *(this + 13) = v8;
        if (v8)
        {
          RunLoopSource = CFMachPortCreateRunLoopSource(0, v8, 0);
          *(this + 14) = RunLoopSource;
          if (RunLoopSource)
          {
            CFRunLoopAddSource(*(this + 15), RunLoopSource, *(this + 16));
            v3 = MEMORY[0x29ED560F0](*(this + 13), 74565, *(this + 24), 3735932941);
          }
        }
      }
    }

    else
    {
      v3 = 3758096385;
    }
  }

  v4 = *MEMORY[0x29EDCA608];
  return v3;
}

uint64_t IOUSBDeviceInterfaceClass::readPipeTO(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, unsigned int a5)
{
  input[4] = *MEMORY[0x29EDCA608];
  output = 0;
  input[0] = a2;
  outputCnt = 1;
  MapToken = IOUSBDeviceDataGetMapToken();
  v9 = *a4;
  input[1] = MapToken;
  input[2] = v9;
  input[3] = a5;
  result = IOConnectCallMethod(*(a1 + 52), 0xDu, input, 4u, 0, 0, &output, &outputCnt, 0, 0);
  *a4 = output;
  v11 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t IOUSBDeviceInterfaceClass::readPipeAsyncTO(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6, uint64_t a7)
{
  input[4] = *MEMORY[0x29EDCA608];
  v18 = 0u;
  v19 = 0u;
  reference[0] = 0;
  v17 = 0u;
  v15 = 0;
  outputCnt = 1;
  input[0] = a2;
  input[1] = IOUSBDeviceDataGetMapToken();
  input[2] = a4;
  input[3] = a5;
  reference[1] = a6;
  *&v17 = a7;
  result = IOConnectCallAsyncMethod(*(a1 + 52), 0xDu, *(a1 + 72), reference, 3u, input, 4u, 0, 0, &v15, &outputCnt, 0, 0);
  v13 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t IOUSBDeviceInterfaceClass::writePipeTO(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, unsigned int a5)
{
  input[4] = *MEMORY[0x29EDCA608];
  output = 0;
  input[0] = a2;
  outputCnt = 1;
  MapToken = IOUSBDeviceDataGetMapToken();
  v9 = *a4;
  input[1] = MapToken;
  input[2] = v9;
  input[3] = a5;
  result = IOConnectCallMethod(*(a1 + 52), 0xEu, input, 4u, 0, 0, &output, &outputCnt, 0, 0);
  *a4 = output;
  v11 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t IOUSBDeviceInterfaceClass::writePipeAsyncTO(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6, uint64_t a7)
{
  v21 = *MEMORY[0x29EDCA608];
  v19 = 0u;
  v20 = 0u;
  reference[0] = 0;
  v18 = 0u;
  v15 = 0;
  input[0] = a2;
  outputCnt = 1;
  input[1] = IOUSBDeviceDataGetMapToken();
  input[2] = a4;
  input[3] = a5;
  reference[1] = a6;
  *&v18 = a7;
  result = IOConnectCallAsyncMethod(*(a1 + 52), 0xEu, *(a1 + 72), reference, 3u, input, 4u, 0, 0, &v15, &outputCnt, 0, 0);
  v13 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t IOUSBDeviceInterfaceClass::isActive(IOUSBDeviceInterfaceClass *this, int *a2, int *a3)
{
  v10 = *MEMORY[0x29EDCA608];
  if (a2)
  {
    output = 0xAAAAAAAAAAAAAAAALL;
    v9 = 0xAAAAAAAAAAAAAAAALL;
    outputCnt = 2;
    result = IOConnectCallScalarMethod(*(this + 13), 0x18u, 0, 0, &output, &outputCnt);
    if (!result)
    {
      *a2 = output;
      if (a3)
      {
        *a3 = v9;
      }
    }
  }

  else
  {
    result = 3758097090;
  }

  v6 = *MEMORY[0x29EDCA608];
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