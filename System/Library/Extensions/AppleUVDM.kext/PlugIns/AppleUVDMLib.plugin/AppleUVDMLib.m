uint64_t AppleUVDMLibPriv::addRefStatic(AppleUVDMLibPriv *this, void *a2)
{
  v2 = *(this + 1);
  result = (*(v2 + 48) + 1);
  *(v2 + 48) = result;
  return result;
}

uint64_t AppleUVDMLibPriv::releaseStatic(AppleUVDMLibPriv *this, void *a2)
{
  v2 = *(this + 1);
  v3 = v2[12];
  v2[12] = v3 - 1;
  if (v2)
  {
    v4 = v3 == 1;
  }

  else
  {
    v4 = 0;
  }

  if (v4)
  {
    (*(*v2 + 8))(v2, a2);
  }

  return v3;
}

uint64_t AppleUVDMLibPriv::probeStatic(AppleUVDMLibPriv *this, void *a2, io_object_t object, unsigned int a4, int *a5)
{
  if (object && IOObjectConformsTo(object, "AppleUVDMEndpoint"))
  {
    return 0;
  }

  else
  {
    return 3758097090;
  }
}

uint64_t AppleUVDMLibPriv::startStatic(AppleUVDMLibPriv *this, void *a2, io_service_t service)
{
  v3 = *(this + 1);
  *(v3 + 52) = service;
  LODWORD(result) = IOServiceOpen(service, mach_task_self_, 0, (v3 + 56));
  if (*(v3 + 56))
  {
    return result;
  }

  else
  {
    return 3758097088;
  }
}

uint64_t AppleUVDMLibPriv::stopStatic(AppleUVDMLibPriv *this, void *a2)
{
  v2 = *(this + 1);
  v3 = *(v2 + 56);
  if (v3)
  {
    IOServiceClose(v3);
    *(v2 + 56) = 0;
  }

  return 0;
}

uint64_t AppleUVDMLibPriv::openEndpoint(AppleUVDMLibPriv *this, void *a2)
{
  result = *(*(this + 1) + 56);
  if (result)
  {
    outputCnt = 0;
    return IOConnectCallScalarMethod(result, 0, 0, 0, 0, &outputCnt) == 0;
  }

  return result;
}

uint64_t AppleUVDMLibPriv::closeEndpoint(AppleUVDMLibPriv *this, void *a2)
{
  result = *(*(this + 1) + 56);
  if (result)
  {
    outputCnt = 0;
    return IOConnectCallScalarMethod(result, 1u, 0, 0, 0, &outputCnt) == 0;
  }

  return result;
}

uint64_t AppleUVDMLibPriv::readAccess(AppleUVDMLibPriv *this, void *a2, vm_size_t size, _BYTE *a4, unsigned __int8 *a5, _BYTE *a6, unsigned __int8 *a7)
{
  v8 = a5;
  v10 = size;
  v19 = a2;
  v11 = 3758097084;
  v12 = *(this + 1);
  v13 = *(v12 + 56);
  address = 0;
  if (v13)
  {
    v14 = size;
    this = vm_allocate(mach_task_self_, &address, size, 1);
    if (address)
    {
      v11 = 0;
    }

    else
    {
      v11 = 3758097086;
    }
  }

  else
  {
    v14 = 0;
  }

  outputCnt = 2;
  __chkstk_darwin(this);
  v17 = 0;
  v18 = 0;
  if (!v11)
  {
    input[0] = address;
    input[1] = v10;
    input[2] = v8;
    v11 = IOConnectCallScalarMethod(*(v12 + 56), 2u, input, 3u, &v17, &outputCnt);
  }

  if (a4)
  {
    *a4 = v17;
  }

  v15 = v18;
  if (a6)
  {
    *a6 = v18;
  }

  if (!v11 && !v15 && v17)
  {
    memmove(v19, address, v14);
  }

  if (address)
  {
    vm_deallocate(mach_task_self_, address, v14);
    address = 0;
  }

  return v11;
}

uint64_t AppleUVDMLibPriv::writeAccess(AppleUVDMLibPriv *this, void *a2, vm_size_t size, unsigned int a4, _BYTE *a5, unsigned __int8 *a6)
{
  v7 = 3758097084;
  v8 = *(this + 1);
  v9 = *(v8 + 56);
  address = 0;
  if (!v9)
  {
    v12 = 0;
    goto LABEL_7;
  }

  v12 = size;
  vm_allocate(mach_task_self_, &address, size, 1);
  this = address;
  if (!address)
  {
    v7 = 3758097086;
LABEL_7:
    outputCnt = 1;
    __chkstk_darwin(this);
    v15 = 0;
    if (!a5)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v13 = memmove(address, a2, v12);
  outputCnt = 1;
  __chkstk_darwin(v13);
  v15 = 0;
  input[0] = address;
  input[1] = v12;
  input[2] = a4;
  v7 = IOConnectCallScalarMethod(*(v8 + 56), 4u, input, 3u, &v15, &outputCnt);
  if (a5)
  {
LABEL_8:
    *a5 = v15;
  }

LABEL_9:
  if (address)
  {
    vm_deallocate(mach_task_self_, address, v12);
    address = 0;
  }

  return v7;
}

uint64_t AppleUVDMLibPriv::readStream(vm_address_t this, void *a2, vm_size_t size, _WORD *a4, unsigned __int16 *a5, unsigned __int8 *a6, int a7)
{
  v10 = 3758097086;
  v11 = *(this + 8);
  v12 = *(v11 + 56);
  address = 0;
  if (!v12)
  {
    v15 = 0;
    v13 = 0;
    v22 = 0;
    v10 = 3758097084;
    goto LABEL_8;
  }

  LODWORD(v13) = a7;
  v15 = size;
  this = vm_allocate(mach_task_self_, &address, size, 1);
  v22 = 0;
  if (!address)
  {
    v13 = 0;
    goto LABEL_8;
  }

  if (v13)
  {
    v13 = v13;
    vm_allocate(mach_task_self_, &v22, v13, 1);
    this = v22;
    if (!v22)
    {
LABEL_8:
      outputCnt = 2;
      __chkstk_darwin(this);
      v19 = 0;
      v20 = 0;
      if (!a4)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }
  }

  else
  {
    this = 0;
    v13 = 0;
  }

  v18 = memmove(this, a6, v13);
  outputCnt = 2;
  __chkstk_darwin(v18);
  v19 = 0;
  v20 = 0;
  input[0] = address;
  input[1] = v15;
  input[2] = v22;
  input[3] = v13;
  v10 = IOConnectCallScalarMethod(*(v11 + 56), 3u, input, 4u, &v19, &outputCnt);
  if (a4)
  {
LABEL_9:
    *a4 = v19;
  }

LABEL_10:
  v16 = v20;
  if (a5)
  {
    *a5 = v20;
  }

  if (!v10 && !v16 && v19)
  {
    memmove(a2, address, v15);
  }

  if (address)
  {
    vm_deallocate(mach_task_self_, address, v15);
    vm_deallocate(mach_task_self_, v22, v13);
    address = 0;
  }

  return v10;
}

uint64_t AppleUVDMLibPriv::writeStream(AppleUVDMLibPriv *this, void *a2, vm_size_t size, unsigned int a4, _BYTE *a5, unsigned __int8 *a6)
{
  v7 = 3758097084;
  v8 = *(this + 1);
  v9 = *(v8 + 56);
  address = 0;
  if (!v9)
  {
    v12 = 0;
    goto LABEL_7;
  }

  v12 = size;
  vm_allocate(mach_task_self_, &address, size, 1);
  this = address;
  if (!address)
  {
    v7 = 3758097086;
LABEL_7:
    outputCnt = 1;
    __chkstk_darwin(this);
    v15 = 0;
    if (!a5)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v13 = memmove(address, a2, v12);
  outputCnt = 1;
  __chkstk_darwin(v13);
  v15 = 0;
  input[0] = address;
  input[1] = v12;
  input[2] = a4;
  v7 = IOConnectCallScalarMethod(*(v8 + 56), 5u, input, 3u, &v15, &outputCnt);
  if (a5)
  {
LABEL_8:
    *a5 = v15;
  }

LABEL_9:
  if (address)
  {
    vm_deallocate(mach_task_self_, address, v12);
    address = 0;
  }

  return v7;
}

uint64_t AppleUVDMLibPriv::getTransportParameters(uint64_t a1, void *outputStruct)
{
  if (!outputStruct)
  {
    return 3758097090;
  }

  v2 = *(a1 + 8);
  outputStructCnt = 4;
  return IOConnectCallStructMethod(*(v2 + 56), 6u, 0, 0, outputStruct, &outputStructCnt);
}

uint64_t AppleUVDMLibPriv::lockBus(AppleUVDMLibPriv *this, uint64_t a2)
{
  input = a2;
  v2 = *(*(this + 1) + 56);
  if (v2)
  {
    return IOConnectCallScalarMethod(v2, 7u, &input, 1u, 0, 0);
  }

  else
  {
    return 3758097084;
  }
}

uint64_t AppleUVDMLibPriv::unlockBus(AppleUVDMLibPriv *this, void *a2)
{
  v2 = *(*(this + 1) + 56);
  if (v2)
  {
    return IOConnectCallScalarMethod(v2, 7u, 0, 0, 0, 0);
  }

  else
  {
    return 3758097084;
  }
}

uint64_t AppleUVDMLibFactory(uint64_t a1, const void *a2)
{
  v3 = CFUUIDGetConstantUUIDWithBytes(kCFAllocatorSystemDefault, 0x10u, 0x90u, 0x3Au, 0x4Fu, 0x57u, 0x90u, 0x45u, 0xD3u, 0xB1u, 0xFAu, 0xABu, 0x3Eu, 0x75u, 0x85u, 0xC8u, 0x63u);
  v4 = CFEqual(a2, v3);
  if (v4)
  {

    AppleUVDMLibPriv::alloc(v4);
  }

  return 0;
}

void AppleUVDMLibPriv::AppleUVDMLibPriv(AppleUVDMLibPriv *this)
{
  *(this + 12) = 0;
  *this = off_40E0;
  *(this + 1) = &AppleUVDMLibPriv::sIOCFPlugInVTable;
  *(this + 2) = this;
  *(this + 3) = &AppleUVDMLibPriv::sAppleUVDMLibVTable;
  *(this + 4) = this;
  v2 = CFUUIDGetConstantUUIDWithBytes(kCFAllocatorSystemDefault, 0xC9u, 0x26u, 0x95u, 0x29u, 0xEEu, 0x32u, 0x48u, 0x43u, 0x89u, 0, 0x3Fu, 0x36u, 0xA1u, 0x55u, 0xFBu, 0xBCu);
  *(this + 5) = v2;
  CFRetain(v2);
  CFPlugInAddInstanceForFactory(*(this + 5));
}

void AppleUVDMLibPriv::~AppleUVDMLibPriv(CFUUIDRef *this)
{
  *this = off_40E0;
  CFPlugInRemoveInstanceForFactory(this[5]);
  CFRelease(this[5]);
}

{
  AppleUVDMLibPriv::~AppleUVDMLibPriv(this);

  operator delete();
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