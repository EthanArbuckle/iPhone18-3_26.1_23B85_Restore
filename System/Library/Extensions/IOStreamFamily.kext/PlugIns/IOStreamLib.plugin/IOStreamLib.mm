uint64_t IOStreamLibFactory(uint64_t a1, const void *a2)
{
  v3 = CFUUIDGetConstantUUIDWithBytes(kCFAllocatorDefault, 0x57u, 0xC8u, 0x94u, 0x38u, 0xA0u, 0xA2u, 0x4Au, 0xFCu, 0x9Fu, 0xF2u, 0xDEu, 0x64u, 0xC0u, 0x2Fu, 0x81u, 0x5Cu);
  v4 = CFEqual(a2, v3);
  if (v4)
  {

    IOStreamServiceClass::alloc(v4);
  }

  return 0;
}

void IOStreamIUnknown::factoryAddRef(IOStreamIUnknown *this)
{
  if (!IOStreamIUnknown::factoryRefCount++)
  {
    v3 = CFUUIDGetConstantUUIDWithBytes(kCFAllocatorDefault, 0x1Au, 0x3Cu, 0x8Au, 0x6Au, 0xBDu, 0x6Au, 0x41u, 0xADu, 0x93u, 0xB0u, 0x47u, 0x89u, 0xA2u, 0x33u, 0x3Bu, 0xADu);
    CFRetain(v3);

    CFPlugInAddInstanceForFactory(v3);
  }
}

void IOStreamIUnknown::factoryRelease(IOStreamIUnknown *this)
{
  v2 = IOStreamIUnknown::factoryRefCount--;
  if (IOStreamIUnknown::factoryRefCount)
  {
    if (v2 <= 0)
    {
      IOStreamIUnknown::factoryRefCount = 0;
    }
  }

  else
  {
    v3 = CFUUIDGetConstantUUIDWithBytes(kCFAllocatorDefault, 0x1Au, 0x3Cu, 0x8Au, 0x6Au, 0xBDu, 0x6Au, 0x41u, 0xADu, 0x93u, 0xB0u, 0x47u, 0x89u, 0xA2u, 0x33u, 0x3Bu, 0xADu);
    CFPlugInRemoveInstanceForFactory(v3);

    CFRelease(v3);
  }
}

void IOStreamIUnknown::IOStreamIUnknown(IOStreamIUnknown *this, void *a2)
{
  *this = off_4130;
  *(this + 2) = 1;
  *(this + 2) = a2;
  *(this + 3) = this;
  IOStreamIUnknown::factoryAddRef(this);
}

uint64_t IOStreamIUnknown::addRef(IOStreamIUnknown *this)
{
  v1 = (*(this + 2) + 1);
  *(this + 2) = v1;
  return v1;
}

uint64_t IOStreamIUnknown::release(IOStreamIUnknown *this)
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

void IOStreamServiceClass::IOStreamServiceClass(IOStreamServiceClass *this)
{
  IOStreamIUnknown::IOStreamIUnknown(this, &IOStreamServiceClass::sIOCFPlugInInterfaceV1);
  *v1 = off_4178;
  *(v1 + 32) = &IOStreamServiceClass::sIOStreamInterfaceV1;
  *(v1 + 40) = v1;
  *(v1 + 48) = 0;
  *(v1 + 56) = 0u;
  *(v1 + 72) = 0u;
  *(v1 + 88) = 0u;
  *(v1 + 104) = 0u;
  *(v1 + 120) = 0u;
  *(v1 + 136) = 0u;
}

{
  IOStreamIUnknown::IOStreamIUnknown(this, &IOStreamServiceClass::sIOCFPlugInInterfaceV1);
  *v1 = off_4178;
  *(v1 + 32) = &IOStreamServiceClass::sIOStreamInterfaceV1;
  *(v1 + 40) = v1;
  *(v1 + 48) = 0;
  *(v1 + 56) = 0u;
  *(v1 + 72) = 0u;
  *(v1 + 88) = 0u;
  *(v1 + 104) = 0u;
  *(v1 + 120) = 0u;
  *(v1 + 136) = 0u;
}

void IOStreamServiceClass::~IOStreamServiceClass(IOStreamServiceClass *this)
{
  *this = off_4178;
  v2 = *(this + 12);
  if (v2)
  {
    IOObjectRelease(v2);
    *(this + 12) = 0;
  }

  v3 = *(this + 9);
  if (v3)
  {
    (*(*v3 + 24))(v3);
    *(this + 9) = 0;
  }

  v4 = *(this + 8);
  if (v4)
  {
    IODestroyPlugInInterface(v4);
    *(this + 8) = 0;
  }

  IOStreamIUnknown::~IOStreamIUnknown(this);
}

{
  IOStreamServiceClass::~IOStreamServiceClass(this);

  operator delete();
}

uint64_t IOStreamServiceClass::queryInterface(IOStreamServiceClass *this, CFUUIDBytes a2, void **a3)
{
  v5 = CFUUIDCreateFromUUIDBytes(0, a2);
  v6 = CFUUIDGetConstantUUIDWithBytes(kCFAllocatorSystemDefault, 0, 0, 0, 0, 0, 0, 0, 0, 0xC0u, 0, 0, 0, 0, 0, 0, 0x46u);
  if (CFEqual(v5, v6) || (v7 = CFUUIDGetConstantUUIDWithBytes(0, 0xC2u, 0x44u, 0xE8u, 0x58u, 0x10u, 0x9Cu, 0x11u, 0xD4u, 0x91u, 0xD4u, 0, 0x50u, 0xE4u, 0xC6u, 0x42u, 0x6Fu), CFEqual(v5, v7)))
  {
    v8 = this + 16;
    v9 = *this;
LABEL_4:
    *a3 = v8;
    (*(v9 + 24))(this);
    goto LABEL_5;
  }

  v12 = CFUUIDGetConstantUUIDWithBytes(kCFAllocatorDefault, 0xE2u, 0xDFu, 0xDFu, 0x5Fu, 0x3Fu, 0xADu, 0x44u, 0x87u, 0x9Eu, 0xEAu, 0x3Fu, 0xCFu, 0x14u, 0x7Eu, 0xBBu, 0x3Du);
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

uint64_t IOStreamServiceClass::probe(IOStreamServiceClass *this, const __CFDictionary *a2, io_object_t object, int *a4)
{
  v4 = 3758097090;
  if (object)
  {
    if (IOObjectConformsTo(object, "IOStream"))
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

uint64_t IOStreamServiceClass::start(IOStreamServiceClass *this, const __CFDictionary *a2, io_object_t object)
{
  *(this + 12) = object;
  IOObjectRetain(object);
  v5 = mach_task_self_;

  return IOServiceOpen(object, v5, 0, this + 20);
}

uint64_t IOStreamServiceClass::open(IOStreamServiceClass *this, int a2)
{
  inputStruct = a2;
  v14 = 0;
  ofSize = 0;
  v3 = *(this + 20);
  outputStructCnt = 0;
  v4 = IOConnectCallStructMethod(v3, 0, &inputStruct, 4uLL, 0, &outputStructCnt);
  if (!v4)
  {
    v4 = IOConnectMapMemory(*(this + 20), 0x10000000u, mach_task_self_, &v14, &ofSize, 1u);
    if (!v4)
    {
      *(this + 11) = v14;
      v4 = IOConnectMapMemory(*(this + 20), 0x20000000u, mach_task_self_, &v14, &ofSize, 1u);
      if (!v4)
      {
        v8 = (*(*this + 80))(this);
        *(this + 12) = v14;
        v9 = malloc_type_malloc(32 * v8, 0x1000040E0EAB150uLL);
        *(this + 18) = v9;
        if (!v9)
        {
          v5 = 0;
          goto LABEL_5;
        }

        if (!v8)
        {
          return 0;
        }

        v10 = 0;
        v11 = 0;
        v12 = 32 * v8;
        while (1)
        {
          v4 = IOConnectMapMemory(*(this + 20), v10 | 0x30000000, mach_task_self_, (*(this + 18) + v11 + 16), (*(this + 18) + v11 + 24), 1u);
          if (v4)
          {
            break;
          }

          if (IOConnectMapMemory(*(this + 20), v10 | 0x40000000, mach_task_self_, (*(this + 18) + v11), (*(this + 18) + v11 + 8), 1u))
          {
            v13 = (*(this + 18) + v11);
            *v13 = 0;
            v13[1] = 0;
          }

          v5 = 0;
          v11 += 32;
          ++v10;
          if (v12 == v11)
          {
            return v5;
          }
        }
      }
    }
  }

  v5 = v4;
LABEL_5:
  v6 = *(this + 18);
  if (v6)
  {
    free(v6);
  }

  *(this + 21) = 0;
  return v5;
}

uint64_t IOStreamServiceClass::close(IOStreamServiceClass *this)
{
  v2 = *(this + 20);
  outputStructCnt = 0;
  result = IOConnectCallStructMethod(v2, 1u, 0, 0, 0, &outputStructCnt);
  if (!result)
  {
    if ((*(*this + 80))(this))
    {
      v4 = 0;
      v5 = 0;
      do
      {
        IOConnectUnmapMemory(*(this + 20), v5 | 0x30000000, mach_task_self_, *(*(this + 18) + v4 + 16));
        v6 = *(*(this + 18) + v4);
        if (v6)
        {
          IOConnectUnmapMemory(*(this + 20), v5 | 0x40000000, mach_task_self_, v6);
        }

        ++v5;
        v4 += 32;
      }

      while (v5 < (*(*this + 80))(this));
    }

    v7 = *(this + 14);
    if (v7)
    {
      CFRelease(v7);
      *(this + 14) = 0;
    }

    v8 = *(this + 13);
    if (v8)
    {
      CFRelease(v8);
      *(this + 13) = 0;
    }

    v9 = *(this + 17);
    if (v9)
    {
      CFRelease(v9);
      *(this + 17) = 0;
    }

    v10 = *(this + 14);
    if (v10)
    {
      CFRelease(v10);
      *(this + 14) = 0;
    }

    v11 = *(this + 18);
    if (v11)
    {
      free(v11);
    }

    result = 0;
    *(this + 21) = 0;
  }

  return result;
}

uint64_t IOStreamServiceClass::getBufferCount(IOStreamServiceClass *this)
{
  result = *(this + 21);
  if (!result)
  {
    outputStruct = 0;
    outputStructCnt = 4;
    if (IOConnectCallStructMethod(*(this + 20), 7u, 0, 0, &outputStruct, &outputStructCnt))
    {
      return *(this + 21);
    }

    else
    {
      result = outputStruct;
      *(this + 21) = outputStruct;
    }
  }

  return result;
}

uint64_t IOStreamServiceClass::getBufferInfo(IOStreamServiceClass *this, unsigned int a2, void **a3, unint64_t *a4, void **a5, unint64_t *a6)
{
  if ((*(*this + 80))(this) < a2)
  {
    return 3758097090;
  }

  v13 = *(this + 18) + 32 * a2;
  if (a3)
  {
    *a3 = *(v13 + 16);
  }

  if (a4)
  {
    *a4 = *(v13 + 24);
  }

  if (a5)
  {
    *a5 = *v13;
  }

  result = 0;
  if (a6)
  {
    *a6 = *(v13 + 8);
  }

  return result;
}

uint64_t IOStreamServiceClass::_allocateNotificationPort(IOStreamServiceClass *this)
{
  name = 0;
  mach_port_allocate(mach_task_self_, 1u, &name);
  port_info_outCnt = 1;
  mach_port_get_attributes(mach_task_self_, name, 1, &port_info_out, &port_info_outCnt);
  port_info_out = 1;
  mach_port_set_attributes(mach_task_self_, name, 1, &port_info_out, 1u);
  return name;
}

uint64_t IOStreamServiceClass::_outputPortCallback(IOStreamServiceClass *this, __CFMachPort *a2, void *a3, uint64_t a4, void *a5)
{
  if (a4)
  {
    return (*(a4 + 120))(a4 + 32, *(a4 + 128));
  }

  return result;
}

uint64_t IOStreamServiceClass::getOutputPort(IOStreamServiceClass *this)
{
  result = *(this + 13);
  if (!result)
  {
    v7.version = 0;
    memset(&v7.retain, 0, 24);
    v7.info = this;
    NotificationPort = IOStreamServiceClass::_allocateNotificationPort(0);
    if (NotificationPort && (v4 = NotificationPort, (v5 = CFMachPortCreateWithPort(kCFAllocatorDefault, NotificationPort, IOStreamServiceClass::_outputPortCallback, &v7, 0)) != 0))
    {
      *(this + 13) = v5;
      v6 = IOConnectSetNotificationPort(*(this + 20), 0, v4, 0);
      result = 0;
      if (!v6)
      {
        return *(this + 13);
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t IOStreamServiceClass::setOutputCallback(IOStreamServiceClass *this, void (*a2)(IOStreamInterface_v1_t **, void *), void *a3)
{
  if (!(*(*this + 96))(this))
  {
    return 3758097112;
  }

  result = 0;
  *(this + 15) = a2;
  *(this + 16) = a3;
  return result;
}

__CFMachPort *IOStreamServiceClass::getRunLoopSource(IOStreamServiceClass *this)
{
  result = *(this + 14);
  if (!result)
  {
    result = (*(*this + 96))(this);
    if (result)
    {
      result = CFMachPortCreateRunLoopSource(kCFAllocatorDefault, result, 0);
      *(this + 14) = result;
    }
  }

  return result;
}

uint64_t IOStreamServiceClass::addToRunLoop(IOStreamServiceClass *this, __CFRunLoop *a2)
{
  v4 = 3758097084;
  if (!(*(*this + 96))(this))
  {
    return 3758097112;
  }

  v5 = (*(*this + 136))(this);
  if (v5)
  {
    CFRunLoopAddSource(a2, v5, kCFRunLoopCommonModes);
    return 0;
  }

  return v4;
}

uint64_t IOStreamServiceClass::removeFromRunLoop(IOStreamServiceClass *this, __CFRunLoop *a2)
{
  v4 = 3758097084;
  if (!(*(*this + 96))(this))
  {
    return 3758097112;
  }

  v5 = (*(*this + 136))(this);
  if (v5)
  {
    CFRunLoopRemoveSource(a2, v5, kCFRunLoopCommonModes);
    return 0;
  }

  return v4;
}

__n128 IOStreamServiceClass::dequeueOutputEntry(IOStreamServiceClass *this, IOStreamBufferQueueEntry *a2)
{
  v2 = *(this + 11);
  if (v2)
  {
    v3 = v2[1];
    if (v3 != v2[2])
    {
      if ((v3 + 1) < *v2)
      {
        v4 = v3 + 1;
      }

      else
      {
        v4 = 0;
      }

      v5 = &v2[8 * v3];
      result = v5[1];
      v7 = v5[2];
      *&a2->bufferID = result;
      *&a2->controlLength = v7;
      *(*(this + 11) + 4) = v4;
    }
  }

  return result;
}

__n128 IOStreamServiceClass::enqueueInputEntry(IOStreamServiceClass *this, IOStreamBufferQueueEntry *a2)
{
  v2 = *(this + 12);
  if (v2 && a2)
  {
    v3 = v2[2];
    if ((v3 + 1) < *v2)
    {
      v4 = v3 + 1;
    }

    else
    {
      v4 = 0;
    }

    if (v4 != v2[1])
    {
      v5 = &v2[8 * v3];
      result = *&a2->bufferID;
      v7 = *&a2->controlLength;
      *(v5 + 1) = *&a2->bufferID;
      *(v5 + 2) = v7;
      *(*(this + 12) + 8) = v4;
    }
  }

  return result;
}

uint64_t IOStreamServiceClass::enqueueInputBuffer(IOStreamServiceClass *this, int a2, int a3, int a4, int a5, int a6)
{
  v7[0] = a2;
  v7[1] = a3;
  v7[2] = a4;
  v7[3] = a5;
  v7[4] = a6;
  return (*(*this + 168))(this, v7);
}

uint64_t IOStreamServiceClass::sendInputNotification(IOStreamServiceClass *this)
{
  v1 = *(this + 20);
  if (v1)
  {
    return IOConnectTrap1(v1, 0, 0);
  }

  else
  {
    return 3758097112;
  }
}

uint64_t IOStreamServiceClass::sendInputSyncNotification(IOStreamServiceClass *this)
{
  v1 = *(this + 20);
  if (v1)
  {
    return IOConnectTrap1(v1, 1u, 0);
  }

  else
  {
    return 3758097112;
  }
}

uint64_t IOStreamServiceClass::getDataBuffer(IOStreamServiceClass *this, uint64_t a2)
{
  v3 = 0;
  if ((*(*this + 88))(this, a2, &v3, 0, 0, 0))
  {
    return 0;
  }

  else
  {
    return v3;
  }
}

uint64_t IOStreamServiceClass::getDataBufferLength(IOStreamServiceClass *this, uint64_t a2)
{
  v3 = 0;
  if ((*(*this + 88))(this, a2, 0, &v3, 0, 0))
  {
    return 0;
  }

  else
  {
    return v3;
  }
}

uint64_t IOStreamServiceClass::getControlBuffer(IOStreamServiceClass *this, uint64_t a2)
{
  v3 = 0;
  if ((*(*this + 88))(this, a2, 0, 0, &v3, 0))
  {
    return 0;
  }

  else
  {
    return v3;
  }
}

uint64_t IOStreamServiceClass::getControlBufferLength(IOStreamServiceClass *this, uint64_t a2)
{
  v3 = 0;
  if ((*(*this + 88))(this, a2, 0, 0, 0, &v3))
  {
    return 0;
  }

  else
  {
    return v3;
  }
}

uint64_t IOStreamServiceClass::startStream(IOStreamServiceClass *this)
{
  v1 = *(this + 20);
  outputStructCnt = 0;
  return IOConnectCallStructMethod(v1, 2u, 0, 0, 0, &outputStructCnt);
}

uint64_t IOStreamServiceClass::suspendStream(IOStreamServiceClass *this)
{
  v1 = *(this + 20);
  outputStructCnt = 0;
  return IOConnectCallStructMethod(v1, 4u, 0, 0, 0, &outputStructCnt);
}

uint64_t IOStreamServiceClass::getMode(IOStreamServiceClass *this)
{
  outputStruct = 1;
  v2 = 4;
  IOConnectCallStructMethod(*(this + 20), 5u, 0, 0, &outputStruct, &v2);
  return outputStruct;
}

uint64_t IOStreamServiceClass::setMode(IOStreamServiceClass *this, IOStreamMode a2)
{
  inputStruct = a2;
  v2 = *(this + 20);
  outputStructCnt = 0;
  return IOConnectCallStructMethod(v2, 6u, &inputStruct, 4uLL, 0, &outputStructCnt);
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