OSMetaClass *AppleH15IO::MetaClass::MetaClass(OSMetaClass *this)
{
  result = OSMetaClass::OSMetaClass(this, "AppleH15IO", &AppleARMIO::gMetaClass, 0x120u);
  result->__vftable = off_208E8;
  return result;
}

{
  result = OSMetaClass::OSMetaClass(this, "AppleH15IO", &AppleARMIO::gMetaClass, 0x120u);
  result->__vftable = off_208E8;
  return result;
}

void AppleH15IO::MetaClass::~MetaClass(OSMetaClass *this)
{
  OSMetaClass::~OSMetaClass(this);
}

{
  OSMetaClass::~OSMetaClass(this);
}

void AppleH15IO::AppleH15IO(AppleH15IO *this, const OSMetaClass *a2)
{
  AppleARMIO::AppleARMIO(this, a2);
  *v2 = off_202E8;
}

{
  AppleARMIO::AppleARMIO(this, a2);
  *v2 = off_202E8;
}

void AppleH15IO::~AppleH15IO(AppleH15IO *this)
{
  AppleARMIO::~AppleARMIO(this);
}

{
  AppleARMIO::~AppleARMIO(this);
}

{
  AppleARMIO::~AppleARMIO(this);

  _OSObject_typed_operator_delete(&AppleH15IO_ktv, this, 288);
}

AppleARMIO *AppleH15IO::MetaClass::alloc(AppleH15IO::MetaClass *this)
{
  v1 = OSObject_typed_operator_new();
  AppleARMIO::AppleARMIO(v1, &AppleH15IO::gMetaClass);
  *v2 = off_202E8;
  OSMetaClass::instanceConstructed(&AppleH15IO::gMetaClass);
  return v1;
}

void AppleH15IO::AppleH15IO(AppleH15IO *this)
{
  AppleARMIO::AppleARMIO(this, &AppleH15IO::gMetaClass);
  *v1 = off_202E8;
  OSMetaClass::instanceConstructed(&AppleH15IO::gMetaClass);
}

{
  AppleARMIO::AppleARMIO(this, &AppleH15IO::gMetaClass);
  *v1 = off_202E8;
  OSMetaClass::instanceConstructed(&AppleH15IO::gMetaClass);
}

IOCommandGate *AppleH15IO::start(AppleH15IO *this, IOService *a2)
{
  if (result)
  {
    v5 = (a2->getProperty_1)(a2, "chip-revision");
    v6 = OSMetaClassBase::safeMetaCast(v5, OSData::metaClass);
    if (v6)
    {
      v7 = *(v6->__vftable[2].~OSMetaClassBase_0)(v6);
      *(this + 58) = v7;
    }

    else
    {
      v7 = *(this + 58);
    }

    kprintf("start: chip-revision: %c%c\n", (((v7 << 20) + 1090519040) >> 24), v7 & 0xF | 0x30u);
    v8 = IOService::getPMRootDomain()->__vftable;
    (v8->setProperty_4)();
    if (!(*(*this + 1504))(this, 0, 1, 256))
    {
      kprintf("start: clock frequencies not published in device tree\n");
    }

    *(this + 28) = AppleH15IO::_waitGate;
    result = IOCommandGate::commandGate(this, 0);
    *(this + 27) = result;
    if (result)
    {
      v9 = (*(*this + 888))(this);
      (*(*v9 + 160))(v9, *(this + 27));
      if ((*(**(this + 18) + 280))())
      {
        *(this + 236) = 1;
      }

      if ((*(**(this + 18) + 280))(*(this + 18), "no-power-gate"))
      {
        *(this + 237) = 1;
      }

      v10 = (a2->mapDeviceMemoryWithIndex)(a2, 0, 0);
      *(this + 32) = v10;
      if (v10)
      {
        *(this + 33) = (*(*v10 + 120))(v10);
        v11 = (a2->mapDeviceMemoryWithIndex)(a2, 1, 0);
        *(this + 34) = v11;
        if (v11)
        {
          *(this + 35) = (*(*v11 + 120))(v11);
          v12 = *(this + 33);
          PhysicalAddress = IOMemoryMap::getPhysicalAddress(*(this + 32));
          kprintf("start: this: %#lx, ACCE virt addr: %#lx, phys addr: %#lx\n", this, v12, PhysicalAddress);
          v14 = *(this + 35);
          v15 = IOMemoryMap::getPhysicalAddress(*(this + 34));
          kprintf("start: this: %#lx, ACCP virt addr: %#lx, phys addr: %#lx\n", this, v14, v15);
          AppleARMFunction::registerFunctionParent(a2, this, v16);
          (*(*this + 1448))(this, a2);
          if ((*(this + 236) & 1) == 0)
          {
            v18 = AppleARMFunction::withProvider(*(this + 18), "function-clock_gate", v17);
            *(this + 30) = v18;
            if (!v18)
            {
              AppleH15IO::start();
            }

            (*(**(this + 27) + 232))(*(this + 27), *(this + 28), 0, this + 240, 0, 0);
          }

          if ((*(this + 237) & 1) == 0)
          {
            v19 = AppleARMFunction::withProvider(*(this + 18), "function-power_gate", v17);
            *(this + 31) = v19;
            if (!v19)
            {
              AppleH15IO::start();
            }

            (*(**(this + 27) + 232))(*(this + 27), *(this + 28), 0, this + 248, 0, 0);
          }

          v20 = AppleARM64ErrorHandler::operator new(&stru_20.vmaddr);
          AppleARM64ErrorHandler::AppleARM64ErrorHandler(v20);
          *(this + 23) = v21;
          if (!v21)
          {
            AppleH15IO::start();
          }

          (*(*this + 672))(this, 0);
          return (&dword_0 + 1);
        }

        kprintf("start: failed to get accp_impl register map\n");
      }

      else
      {
        kprintf("start: failed to get acce_impl register map\n");
      }

      return 0;
    }
  }

  return result;
}

uint64_t AppleH15IO::_waitGate(uint64_t a1, void *a2, uint64_t a3)
{
  if (a2)
  {
    while (!*a2)
    {
      (*(**(a1 + 216) + 256))(*(a1 + 216), a2, 0);
    }

    return 0;
  }

  if (a3)
  {
    (*(**(a1 + 216) + 264))(*(a1 + 216), a3, 0);
    return 0;
  }

  return 3758097090;
}

uint64_t AppleH15IO::callPlatformFunction(AppleH15IO *this, const OSSymbol *a2, uint64_t a3, void *a4, void *a5, OSMetaClassBase *anObject, void *a7)
{
  if (gAppleARMFunctionNew == a2)
  {
    v15 = OSMetaClassBase::safeMetaCast(anObject, OSData::metaClass);
    if (!v15)
    {
      return 3758097090;
    }

    if (*((v15->__vftable[2].~OSMetaClassBase_0)(v15) + 4) == 1165128264)
    {
      result = 0;
      *a7 = *(this + 23);
      return result;
    }
  }

  else if (gIOPlatformActiveActionKey == a2)
  {
    return 0;
  }

  return (v16)(this, a2, a3, a4, a5, anObject, a7);
}

uint64_t AppleH15IO::enableDeviceClock(AppleH15IO *this)
{
  if (*(this + 236))
  {
    return 3758097095;
  }

  v4 = *(this + 30);
  if (!v4)
  {
    (*(**(this + 27) + 232))(*(this + 27), *(this + 28), this + 240, 0, 0, 0);
    v4 = *(this + 30);
  }

  v5 = *(*v4 + 128);

  return v5();
}

uint64_t AppleH15IO::enableDevicePower(AppleH15IO *this, unsigned int a2, unsigned int a3, unsigned int *a4)
{
  if (*(this + 237))
  {
    return 3758097095;
  }

  v7 = *(this + 31);
  if (!v7)
  {
    (*(**(this + 27) + 232))(*(this + 27), *(this + 28), this + 248, 0, 0, 0);
    v7 = *(this + 31);
  }

  v8 = *(*v7 + 128);

  return v8();
}

OSMetaClass *_GLOBAL__sub_I_AppleH15IO_cpp()
{
  result = OSMetaClass::OSMetaClass(&AppleH15IO::gMetaClass, "AppleH15IO", &AppleARMIO::gMetaClass, 0x120u);
  result->__vftable = off_208E8;
  return result;
}

void AppleH15PlatformErrorHandler::_amccNonPlaneDecodeACTT(uint64_t a1, uint64_t a2, int a3, unsigned int *a4, uint64_t a5)
{
  v9 = *a4;
  v21 = off_227E0;
  v22 = *algn_227F0;
  v23 = 0;
  if (v9)
  {
    DWORD2(v21) = 0;
    v10 = a1 + 8232;
    if (((a1 ^ (a1 + 8232)) & 0xFFC0000000000000) != 0)
    {
      v10 = v10 & 0xFFFFFFFFFFFFLL | 0xC8A2000000000000;
    }

    Register32 = AppleH15PlatformErrorHandler::_readRegister32(a1, v10, a2, 0x100448u);
    HIDWORD(v21) = Register32;
    v12 = AppleH15PlatformErrorHandler::_readRegister32(Register32, v10, a2, 0x10044Cu);
    LODWORD(v22) = v12;
    v13 = AppleH15PlatformErrorHandler::_readRegister32(v12, v10, a2, 0x100450u);
    DWORD1(v22) = v13;
    v14 = AppleH15PlatformErrorHandler::_readRegister32(v13, v10, a2, 0x100454u);
    DWORD2(v22) = v14;
    v15 = AppleH15PlatformErrorHandler::_readRegister32(v14, v10, a2, 0x100458u);
    HIDWORD(v22) = v15;
    v16 = AppleH15PlatformErrorHandler::_readRegister32(v15, v10, a2, 0x10045Cu);
    LODWORD(v23) = v16;
  }

  else
  {
    if ((v9 & 0x10) == 0)
    {
      if ((v9 & 0x400) == 0)
      {
        panic("AMCC%u Non-Plane %s %s error: INTSTS%u 0x%08x @%s:%d", a2, "*UNKNOWN*", "ACTT", a3, *a4, "AppleH15PlatformErrorHandler.cpp", 1651);
      }

      panic("AMCC%u Non-Plane %s %s error: INTSTS%u 0x%08x @%s:%d", a2, *(a5 + 8), "ACTT", a3, *a4, "AppleH15PlatformErrorHandler.cpp", 1647);
    }

    DWORD2(v21) = 1;
    v17 = a1 + 8232;
    if (((a1 ^ (a1 + 8232)) & 0xFFC0000000000000) != 0)
    {
      v17 = v17 & 0xFFFFFFFFFFFFLL | 0xC8A2000000000000;
    }

    v18 = AppleH15PlatformErrorHandler::_readRegister32(a1, v17, a2, 0x100438u);
    HIDWORD(v21) = v18;
    v19 = AppleH15PlatformErrorHandler::_readRegister32(v18, v17, a2, 0x10043Cu);
    LODWORD(v22) = v19;
    v20 = AppleH15PlatformErrorHandler::_readRegister32(v19, v17, a2, 0x100440u);
    DWORD1(v22) = v20;
    v16 = AppleH15PlatformErrorHandler::_readRegister32(v20, v17, a2, 0x100444u);
    DWORD2(v22) = v16;
  }

  AppleH15PlatformErrorHandler::_amccNonPlaneDecodeXCTT(v16, a2, a3, a4, a5, &v21);
}

void AppleH15PlatformErrorHandler::_amccNonPlaneDecodeSCTT(uint64_t a1, uint64_t a2, int a3, unsigned int *a4, uint64_t a5)
{
  v9 = *a4;
  v21 = off_22858;
  v22 = unk_22868;
  v23 = 0;
  if ((v9 & 2) != 0)
  {
    DWORD2(v21) = 0;
    v10 = a1 + 8232;
    if (((a1 ^ (a1 + 8232)) & 0xFFC0000000000000) != 0)
    {
      v10 = v10 & 0xFFFFFFFFFFFFLL | 0xC8A2000000000000;
    }

    Register32 = AppleH15PlatformErrorHandler::_readRegister32(a1, v10, a2, 0x100C78u);
    HIDWORD(v21) = Register32;
    v12 = AppleH15PlatformErrorHandler::_readRegister32(Register32, v10, a2, 0x100C7Cu);
    LODWORD(v22) = v12;
    v13 = AppleH15PlatformErrorHandler::_readRegister32(v12, v10, a2, 0x100C80u);
    DWORD1(v22) = v13;
    v14 = AppleH15PlatformErrorHandler::_readRegister32(v13, v10, a2, 0x100C84u);
    DWORD2(v22) = v14;
    v15 = AppleH15PlatformErrorHandler::_readRegister32(v14, v10, a2, 0x100C88u);
    HIDWORD(v22) = v15;
    v16 = AppleH15PlatformErrorHandler::_readRegister32(v15, v10, a2, 0x100C8Cu);
    LODWORD(v23) = v16;
  }

  else
  {
    if ((v9 & 0x20) == 0)
    {
      if ((v9 & 0x200) == 0)
      {
        panic("AMCC%u Non-Plane %s %s error: INTSTS%u 0x%08x @%s:%d", a2, "*UNKNOWN*", "SCTT", a3, *a4, "AppleH15PlatformErrorHandler.cpp", 1792);
      }

      panic("AMCC%u Non-Plane %s %s error: INTSTS%u 0x%08x @%s:%d", a2, *(a5 + 8), "SCTT", a3, *a4, "AppleH15PlatformErrorHandler.cpp", 1788);
    }

    DWORD2(v21) = 1;
    v17 = a1 + 8232;
    if (((a1 ^ (a1 + 8232)) & 0xFFC0000000000000) != 0)
    {
      v17 = v17 & 0xFFFFFFFFFFFFLL | 0xC8A2000000000000;
    }

    v18 = AppleH15PlatformErrorHandler::_readRegister32(a1, v17, a2, 0x100C68u);
    HIDWORD(v21) = v18;
    v19 = AppleH15PlatformErrorHandler::_readRegister32(v18, v17, a2, 0x100C6Cu);
    LODWORD(v22) = v19;
    v20 = AppleH15PlatformErrorHandler::_readRegister32(v19, v17, a2, 0x100C70u);
    DWORD1(v22) = v20;
    v16 = AppleH15PlatformErrorHandler::_readRegister32(v20, v17, a2, 0x100C74u);
    DWORD2(v22) = v16;
  }

  AppleH15PlatformErrorHandler::_amccNonPlaneDecodeXCTT(v16, a2, a3, a4, a5, &v21);
}

void AppleH15PlatformErrorHandler::_amccNonPlaneDecodeGCTT0(uint64_t a1, uint64_t a2, int a3, unsigned int *a4, uint64_t a5)
{
  v19 = off_22808;
  v20 = unk_22818;
  v21 = 0;
  if (!a3)
  {
    if ((*a4 & 0x1004) != 0)
    {
      DWORD2(v19) = 0;
      v8 = a1 + 8232;
      if (((a1 ^ (a1 + 8232)) & 0xFFC0000000000000) != 0)
      {
        v8 = v8 & 0xFFFFFFFFFFFFLL | 0xC8A2000000000000;
      }

      Register32 = AppleH15PlatformErrorHandler::_readRegister32(a1, v8, a2, 0x140848u);
      HIDWORD(v19) = Register32;
      v10 = AppleH15PlatformErrorHandler::_readRegister32(Register32, v8, a2, 0x14084Cu);
      LODWORD(v20) = v10;
      v11 = AppleH15PlatformErrorHandler::_readRegister32(v10, v8, a2, 0x140850u);
      DWORD1(v20) = v11;
      v12 = AppleH15PlatformErrorHandler::_readRegister32(v11, v8, a2, 0x140854u);
      DWORD2(v20) = v12;
      v13 = AppleH15PlatformErrorHandler::_readRegister32(v12, v8, a2, 0x140858u);
      HIDWORD(v20) = v13;
      v14 = AppleH15PlatformErrorHandler::_readRegister32(v13, v8, a2, 0x14085Cu);
      LODWORD(v21) = v14;
    }

    else
    {
      if ((*a4 & 0x40) == 0)
      {
        goto LABEL_4;
      }

      DWORD2(v19) = 1;
      v15 = a1 + 8232;
      if (((a1 ^ (a1 + 8232)) & 0xFFC0000000000000) != 0)
      {
        v15 = v15 & 0xFFFFFFFFFFFFLL | 0xC8A2000000000000;
      }

      v16 = AppleH15PlatformErrorHandler::_readRegister32(a1, v15, a2, 0x140838u);
      HIDWORD(v19) = v16;
      v17 = AppleH15PlatformErrorHandler::_readRegister32(v16, v15, a2, 0x14083Cu);
      LODWORD(v20) = v17;
      v18 = AppleH15PlatformErrorHandler::_readRegister32(v17, v15, a2, 0x140840u);
      DWORD1(v20) = v18;
      v14 = AppleH15PlatformErrorHandler::_readRegister32(v18, v15, a2, 0x140844u);
      DWORD2(v20) = v14;
    }

    AppleH15PlatformErrorHandler::_amccNonPlaneDecodeXCTT(v14, a2, 0, a4, a5, &v19);
  }

LABEL_4:
  panic("AMCC%u Non-Plane %s %s error: INTSTS%u 0x%08x @%s:%d", a2, "*UNKNOWN*", "GCTT-0", a3, *a4, "AppleH15PlatformErrorHandler.cpp", 1687);
}

void AppleH15PlatformErrorHandler::_amccNonPlaneDecodeGCTT1(uint64_t a1, uint64_t a2, int a3, unsigned int *a4, uint64_t a5)
{
  v19 = off_22830;
  v20 = unk_22840;
  v21 = 0;
  if (!a3)
  {
    if ((*a4 & 0x2008) != 0)
    {
      DWORD2(v19) = 0;
      v8 = a1 + 8232;
      if (((a1 ^ (a1 + 8232)) & 0xFFC0000000000000) != 0)
      {
        v8 = v8 & 0xFFFFFFFFFFFFLL | 0xC8A2000000000000;
      }

      Register32 = AppleH15PlatformErrorHandler::_readRegister32(a1, v8, a2, 0x140C48u);
      HIDWORD(v19) = Register32;
      v10 = AppleH15PlatformErrorHandler::_readRegister32(Register32, v8, a2, 0x140C4Cu);
      LODWORD(v20) = v10;
      v11 = AppleH15PlatformErrorHandler::_readRegister32(v10, v8, a2, 0x140C50u);
      DWORD1(v20) = v11;
      v12 = AppleH15PlatformErrorHandler::_readRegister32(v11, v8, a2, 0x140C54u);
      DWORD2(v20) = v12;
      v13 = AppleH15PlatformErrorHandler::_readRegister32(v12, v8, a2, 0x140C58u);
      HIDWORD(v20) = v13;
      v14 = AppleH15PlatformErrorHandler::_readRegister32(v13, v8, a2, 0x140C5Cu);
      LODWORD(v21) = v14;
    }

    else
    {
      if ((*a4 & 0x80) == 0)
      {
        goto LABEL_4;
      }

      DWORD2(v19) = 1;
      v15 = a1 + 8232;
      if (((a1 ^ (a1 + 8232)) & 0xFFC0000000000000) != 0)
      {
        v15 = v15 & 0xFFFFFFFFFFFFLL | 0xC8A2000000000000;
      }

      v16 = AppleH15PlatformErrorHandler::_readRegister32(a1, v15, a2, 0x140C38u);
      HIDWORD(v19) = v16;
      v17 = AppleH15PlatformErrorHandler::_readRegister32(v16, v15, a2, 0x140C3Cu);
      LODWORD(v20) = v17;
      v18 = AppleH15PlatformErrorHandler::_readRegister32(v17, v15, a2, 0x140C40u);
      DWORD1(v20) = v18;
      v14 = AppleH15PlatformErrorHandler::_readRegister32(v18, v15, a2, 0x140C44u);
      DWORD2(v20) = v14;
    }

    AppleH15PlatformErrorHandler::_amccNonPlaneDecodeXCTT(v14, a2, 0, a4, a5, &v19);
  }

LABEL_4:
  panic("AMCC%u Non-Plane %s %s error: INTSTS%u 0x%08x @%s:%d", a2, "*UNKNOWN*", "GCTT-1", a3, *a4, "AppleH15PlatformErrorHandler.cpp", 1723);
}

OSMetaClass *AppleH15PlatformErrorHandler::MetaClass::MetaClass(OSMetaClass *this)
{
  result = OSMetaClass::OSMetaClass(this, "AppleH15PlatformErrorHandler", &IOService::gMetaClass, 0x3960u);
  result->__vftable = off_22358;
  return result;
}

{
  result = OSMetaClass::OSMetaClass(this, "AppleH15PlatformErrorHandler", &IOService::gMetaClass, 0x3960u);
  result->__vftable = off_22358;
  return result;
}

void AppleH15PlatformErrorHandler::MetaClass::~MetaClass(OSMetaClass *this)
{
  OSMetaClass::~OSMetaClass(this);
}

{
  OSMetaClass::~OSMetaClass(this);
}

void AppleH15PlatformErrorHandler::AppleH15PlatformErrorHandler(AppleH15PlatformErrorHandler *this, const OSMetaClass *a2)
{
  v2 = IOService::IOService(this, a2);
  v2->__vftable = off_21E00;
  LODWORD(v2[1].__vftable) = 0;
  LODWORD(v2[1].IORegistryEntry::reserved) = 0;
}

{
  v2 = IOService::IOService(this, a2);
  v2->__vftable = off_21E00;
  LODWORD(v2[1].__vftable) = 0;
  LODWORD(v2[1].IORegistryEntry::reserved) = 0;
}

void AppleH15PlatformErrorHandler::~AppleH15PlatformErrorHandler(IOService *this)
{
  IOService::~IOService(this);
}

{
  IOService::~IOService(this);
}

{
  IOService::~IOService(this);

  _OSObject_typed_operator_delete(&AppleH15PlatformErrorHandler_ktv, this, 14688);
}

IOService *AppleH15PlatformErrorHandler::MetaClass::alloc(AppleH15PlatformErrorHandler::MetaClass *this)
{
  v1 = OSObject_typed_operator_new();
  v2 = IOService::IOService(v1, &AppleH15PlatformErrorHandler::gMetaClass);
  v2->__vftable = off_21E00;
  LODWORD(v2[1].__vftable) = 0;
  LODWORD(v2[1].IORegistryEntry::reserved) = 0;
  OSMetaClass::instanceConstructed(&AppleH15PlatformErrorHandler::gMetaClass);
  return v1;
}

void AppleH15PlatformErrorHandler::AppleH15PlatformErrorHandler(AppleH15PlatformErrorHandler *this)
{
  v1 = IOService::IOService(this, &AppleH15PlatformErrorHandler::gMetaClass);
  v1->__vftable = off_21E00;
  LODWORD(v1[1].__vftable) = 0;
  LODWORD(v1[1].IORegistryEntry::reserved) = 0;
  OSMetaClass::instanceConstructed(&AppleH15PlatformErrorHandler::gMetaClass);
}

{
  v1 = IOService::IOService(this, &AppleH15PlatformErrorHandler::gMetaClass);
  v1->__vftable = off_21E00;
  LODWORD(v1[1].__vftable) = 0;
  LODWORD(v1[1].IORegistryEntry::reserved) = 0;
  OSMetaClass::instanceConstructed(&AppleH15PlatformErrorHandler::gMetaClass);
}

BOOL AppleH15PlatformErrorHandler::start(uint64_t this, IOService *a2)
{
  *(this + 160) = a2;
  {
    AppleH15PlatformErrorHandler::start();
  }

  v4 = OSMetaClassBase::safeMetaCast(a2, AppleARMIODevice::metaClass);
  *(this + 168) = v4;
  if (v4)
  {
    *(this + 141) = PE_i_can_has_debugger(0) != 0;
    v139[0] = 4;
    if (sysctlbyname("kern.development", (this + 152), v139, 0, 0))
    {
      *(this + 152) = 0;
      kprintf("%s::%s: Could not read sysctl kern.development!\n", "AppleH15PlatformErrorHandler", "start");
    }

    *(this + 176) = 0;
    v5 = (a2->getProperty_1)(a2, "error-reflector");
    v6 = OSData::metaClass;
    v7 = OSMetaClassBase::safeMetaCast(v5, OSData::metaClass);
    if (v7)
    {
      v8 = v7;
      if ((v7->__vftable[1].getMetaClass)(v7) == 8)
      {
        *(this + 176) = *(v8->__vftable[2].~OSMetaClassBase_0)(v8);
      }
    }

    *(this + 142) = 1;
    v9 = (a2->getProperty_1)(a2, "no-panic-on-corr-ecc-err");
    v10 = OSMetaClassBase::safeMetaCast(v9, v6);
    *(this + 144) = 0;
    PE_parse_boot_argn("no_panic_on_corr_ecc_err", (this + 144), 1);
    if (v10 || (*(this + 144) & 1) != 0)
    {
      *(this + 142) = 0;
    }

    *(this + 143) = 1;
    PE_parse_boot_argn("trueuc-irq-enable", (this + 143), 1);
    if (*(this + 143))
    {
      kprintf("%s::%s: Enabling panics on True-UC violations\n", "AppleH15PlatformErrorHandler", "start");
    }

    *(this + 145) = 0;
    v11 = (a2->getProperty_1)(a2, "disable-spll-interrupt");
    if (OSMetaClassBase::safeMetaCast(v11, v6))
    {
      *(this + 145) = 1;
      kprintf("%s::%s: Disabling SPLL interrupts\n", "AppleH15PlatformErrorHandler", "start");
    }

    *(this + 146) = 0;
    v12 = (a2->getProperty_1)(a2, "disable-inband-dsid-drop");
    if (OSMetaClassBase::safeMetaCast(v12, v6))
    {
      *(this + 146) = 1;
      kprintf("%s::%s: Disabling Illegal DSID drop interrupt\n", "AppleH15PlatformErrorHandler", "start");
    }

    *(this + 147) = 0;
    PE_parse_boot_argn("disable-sram-parity-error-panic", (this + 147), 1);
    service = this;
    PropertyCount = AppleH15PlatformErrorHandler::_getPropertyCount(this, "reg", 0x10uLL);
    *(this + 184) = PropertyCount;
    if (!PropertyCount)
    {
      AppleH15PlatformErrorHandler::start();
    }

    v88 = v6;
    v89 = a2;
    v90 = v4;
    v14 = AppleH15PlatformErrorHandler::_getPropertyCount(this, "interrupts", 4uLL);
    *(this + 188) = v14;
    if (!v14)
    {
      AppleH15PlatformErrorHandler::start();
    }

    *(this + 192) = 0;
    *(this + 824) = 0u;
    *(this + 840) = 0u;
    *(this + 856) = 0u;
    *(this + 872) = 0u;
    *(this + 888) = 0u;
    *(this + 904) = 0u;
    *(this + 920) = 0u;
    *(this + 936) = 0u;
    *(this + 952) = 0u;
    *(this + 968) = 0u;
    *(this + 984) = 0u;
    *(this + 1000) = 0u;
    *(this + 1016) = 0u;
    (*(**(this + 168) + 1384))();
    v135 = (this + 532);
    Metadata = AppleH15PlatformErrorHandler::_getMetadata(this, this + 532, "amcc-metadata", 0x10u, 0);
    v123 = AppleH15PlatformErrorHandler::_getMetadata(this, this + 700, "dcs-metadata", 0, 0);
    v136 = (this + 724);
    v121 = AppleH15PlatformErrorHandler::_getMetadata(this, this + 724, "ioa-metadata", 0x10u, 0);
    v119 = AppleH15PlatformErrorHandler::_getMetadata(this, this + 748, "pmgr-metadata", 4u, 0);
    v133 = (this + 772);
    v117 = AppleH15PlatformErrorHandler::_getMetadata(this, this + 772, "sep-metadata", 2u, 0);
    v127 = (this + 796);
    v115 = AppleH15PlatformErrorHandler::_getMetadata(this, this + 796, "sram-metadata", 5u, 1);
    v137 = (this + 268);
    v113 = AppleH15PlatformErrorHandler::_getMetadata(this, this + 268, "ni0-metadata", 0x10u, 0);
    v111 = AppleH15PlatformErrorHandler::_getMetadata(this, this + 292, "ni1-metadata", 6u, 1);
    v134 = (this + 316);
    v109 = AppleH15PlatformErrorHandler::_getMetadata(this, this + 316, "ni2-metadata", 6u, 0);
    v107 = AppleH15PlatformErrorHandler::_getMetadata(this, this + 340, "ni3-metadata", 4u, 1);
    v105 = AppleH15PlatformErrorHandler::_getMetadata(this, this + 364, "ni4-metadata", 8u, 1);
    v103 = AppleH15PlatformErrorHandler::_getMetadata(this, this + 388, "ni5-metadata", 0x10u, 1);
    v101 = AppleH15PlatformErrorHandler::_getMetadata(this, this + 412, "ni6-metadata", 0x10u, 1);
    v132 = (this + 436);
    v99 = AppleH15PlatformErrorHandler::_getMetadata(this, this + 436, "ni7-metadata", 0x10u, 0);
    v131 = (this + 460);
    v97 = AppleH15PlatformErrorHandler::_getMetadata(this, this + 460, "ni8-metadata", 0x10u, 0);
    v95 = AppleH15PlatformErrorHandler::_getMetadata(this, this + 484, "ni9-metadata", 4u, 1);
    v94 = AppleH15PlatformErrorHandler::_getMetadata(this, this + 508, "ni10-metadata", 4u, 1);
    v130 = (this + 196);
    v15 = AppleH15PlatformErrorHandler::_getMetadata(this, this + 196, "nsc-metadata", 0xCu, 0);
    v129 = (this + 220);
    v16 = AppleH15PlatformErrorHandler::_getMetadata(this, this + 220, "nsi-metadata", 0x24u, 0);
    v128 = (this + 244);
    v17 = AppleH15PlatformErrorHandler::_getMetadata(this, this + 244, "nsr-metadata", 0x14u, 1);
    v18 = AppleH15PlatformErrorHandler::_getMetadata(this, this + 556, "d2dc-metadata", 4u, 1);
    v19 = AppleH15PlatformErrorHandler::_getMetadata(this, this + 580, "d2di-metadata", 4u, 1);
    v20 = AppleH15PlatformErrorHandler::_getMetadata(this, this + 604, "d2dr-metadata", 4u, 1);
    v21 = AppleH15PlatformErrorHandler::_getMetadata(this, this + 652, "giba-metadata", 0x20u, 1);
    v22 = AppleH15PlatformErrorHandler::_getMetadata(this, this + 628, "gibm-metadata", 4u, 1);
    v23 = AppleH15PlatformErrorHandler::_getMetadata(this, this + 676, "gibd-metadata", 8u, 1);
    if (Metadata || v123 || v121 || v119 || v117 || v115 || v113 || v111 || v109 || v107 || v105 || v103 || v101 || v99 || v97 || v95 || v94 || v15 || v16 || v17 || v18 || v19 || v20 || v21 || v22 || v23)
    {
      AppleH15PlatformErrorHandler::start();
    }

    v24 = this + 13312;
    if (((this ^ (this + 13312)) & 0xFFC0000000000000) != 0)
    {
      v24 = v24 & 0xFFFFFFFFFFFFLL | 0xC8A2000000000000;
    }

    NsApertureNames = AppleH15PlatformErrorHandler::_getNsApertureNames(this, "afc", v24, 0xCu, 0);
    v26 = this + 13360;
    if (((this ^ (this + 13360)) & 0xFFC0000000000000) != 0)
    {
      v26 = v26 & 0xFFFFFFFFFFFFLL | 0xC8A2000000000000;
    }

    v27 = AppleH15PlatformErrorHandler::_getNsApertureNames(this, "afi", v26, 0x24u, 0);
    v28 = this + 13504;
    if (((this ^ (this + 13504)) & 0xFFC0000000000000) != 0)
    {
      v28 = v28 & 0xFFFFFFFFFFFFLL | 0xC8A2000000000000;
    }

    v29 = AppleH15PlatformErrorHandler::_getNsApertureNames(this, "afr", v28, 0x14u, 1);
    if ((NsApertureNames & 1) != 0 || (v27 & 1) != 0 || v29)
    {
      AppleH15PlatformErrorHandler::start();
    }

    v30 = this + 8232;
    if (((this ^ (this + 8232)) & 0xFFC0000000000000) != 0)
    {
      v30 = v30 & 0xFFFFFFFFFFFFLL | 0xC8A2000000000000;
    }

    v126 = AppleH15PlatformErrorHandler::_mapApertures(this, v135, v30, 0x10u);
    v31 = this + 12232;
    if (((this ^ (this + 12232)) & 0xFFC0000000000000) != 0)
    {
      v31 = v31 & 0xFFFFFFFFFFFFLL | 0xC8A2000000000000;
    }

    v124 = AppleH15PlatformErrorHandler::_mapApertures(this, v136, v31, 0x10u);
    v32 = this + 12872;
    if (((this ^ (this + 12872)) & 0xFFC0000000000000) != 0)
    {
      v32 = v32 & 0xFFFFFFFFFFFFLL | 0xC8A2000000000000;
    }

    v122 = AppleH15PlatformErrorHandler::_mapApertures(this, (this + 748), v32, 4u);
    v33 = this + 13032;
    if (((this ^ (this + 13032)) & 0xFFC0000000000000) != 0)
    {
      v33 = v33 & 0xFFFFFFFFFFFFLL | 0xC8A2000000000000;
    }

    v120 = AppleH15PlatformErrorHandler::_mapApertures(this, v133, v33, 2u);
    v34 = this + 13112;
    if (((this ^ (this + 13112)) & 0xFFC0000000000000) != 0)
    {
      v34 = v34 & 0xFFFFFFFFFFFFLL | 0xC8A2000000000000;
    }

    v118 = AppleH15PlatformErrorHandler::_mapApertures(this, v127, v34, 5u);
    v116 = AppleH15PlatformErrorHandler::_mapApertures(this, v137, this + 3752, 0x10u);
    v35 = this + 4392;
    if (((this ^ (this + 4392)) & 0xFFC0000000000000) != 0)
    {
      v35 = v35 & 0xFFFFFFFFFFFFLL | 0xC8A2000000000000;
    }

    v114 = AppleH15PlatformErrorHandler::_mapApertures(this, (this + 292), v35, 6u);
    v36 = this + 4632;
    if (((this ^ (this + 4632)) & 0xFFC0000000000000) != 0)
    {
      v36 = v36 & 0xFFFFFFFFFFFFLL | 0xC8A2000000000000;
    }

    v93 = v36;
    v112 = AppleH15PlatformErrorHandler::_mapApertures(this, v134, v36, 6u);
    v37 = this + 4872;
    if (((this ^ (this + 4872)) & 0xFFC0000000000000) != 0)
    {
      v37 = v37 & 0xFFFFFFFFFFFFLL | 0xC8A2000000000000;
    }

    v110 = AppleH15PlatformErrorHandler::_mapApertures(this, (this + 340), v37, 4u);
    v38 = this + 5032;
    if (((this ^ (this + 5032)) & 0xFFC0000000000000) != 0)
    {
      v38 = v38 & 0xFFFFFFFFFFFFLL | 0xC8A2000000000000;
    }

    v108 = AppleH15PlatformErrorHandler::_mapApertures(this, (this + 364), v38, 8u);
    v39 = this + 5352;
    if (((this ^ (this + 5352)) & 0xFFC0000000000000) != 0)
    {
      v39 = v39 & 0xFFFFFFFFFFFFLL | 0xC8A2000000000000;
    }

    v106 = AppleH15PlatformErrorHandler::_mapApertures(this, (this + 388), v39, 0x10u);
    v40 = this + 5992;
    if (((this ^ (this + 5992)) & 0xFFC0000000000000) != 0)
    {
      v40 = v40 & 0xFFFFFFFFFFFFLL | 0xC8A2000000000000;
    }

    v104 = AppleH15PlatformErrorHandler::_mapApertures(this, (this + 412), v40, 0x10u);
    v41 = this + 6632;
    if (((this ^ (this + 6632)) & 0xFFC0000000000000) != 0)
    {
      v41 = v41 & 0xFFFFFFFFFFFFLL | 0xC8A2000000000000;
    }

    v92 = v41;
    v102 = AppleH15PlatformErrorHandler::_mapApertures(this, v132, v41, 0x10u);
    v42 = this + 7272;
    if (((this ^ (this + 7272)) & 0xFFC0000000000000) != 0)
    {
      v42 = v42 & 0xFFFFFFFFFFFFLL | 0xC8A2000000000000;
    }

    v91 = v42;
    v100 = AppleH15PlatformErrorHandler::_mapApertures(this, v131, v42, 0x10u);
    v43 = this + 7912;
    if (((this ^ (this + 7912)) & 0xFFC0000000000000) != 0)
    {
      v43 = v43 & 0xFFFFFFFFFFFFLL | 0xC8A2000000000000;
    }

    v98 = AppleH15PlatformErrorHandler::_mapApertures(this, (this + 484), v43, 4u);
    v44 = this + 8072;
    if (((this ^ (this + 8072)) & 0xFFC0000000000000) != 0)
    {
      v44 = v44 & 0xFFFFFFFFFFFFLL | 0xC8A2000000000000;
    }

    v96 = AppleH15PlatformErrorHandler::_mapApertures(this, (this + 508), v44, 4u);
    v45 = AppleH15PlatformErrorHandler::_mapApertures(this, v130, this + 1032, 0xCu);
    v46 = AppleH15PlatformErrorHandler::_mapApertures(this, v129, this + 1512, 0x24u);
    v47 = AppleH15PlatformErrorHandler::_mapApertures(this, v128, this + 2952, 0x14u);
    v48 = this + 8872;
    if (((this ^ (this + 8872)) & 0xFFC0000000000000) != 0)
    {
      v48 = v48 & 0xFFFFFFFFFFFFLL | 0xC8A2000000000000;
    }

    v49 = AppleH15PlatformErrorHandler::_mapApertures(this, (this + 556), v48, 4u);
    v50 = this + 9032;
    if (((this ^ (this + 9032)) & 0xFFC0000000000000) != 0)
    {
      v50 = v50 & 0xFFFFFFFFFFFFLL | 0xC8A2000000000000;
    }

    v51 = AppleH15PlatformErrorHandler::_mapApertures(this, (this + 580), v50, 4u);
    v52 = this + 9192;
    if (((this ^ (this + 9192)) & 0xFFC0000000000000) != 0)
    {
      v52 = v52 & 0xFFFFFFFFFFFFLL | 0xC8A2000000000000;
    }

    v53 = AppleH15PlatformErrorHandler::_mapApertures(this, (this + 604), v52, 4u);
    v54 = this + 10632;
    if (((this ^ (this + 10632)) & 0xFFC0000000000000) != 0)
    {
      v54 = v54 & 0xFFFFFFFFFFFFLL | 0xC8A2000000000000;
    }

    v55 = AppleH15PlatformErrorHandler::_mapApertures(this, (this + 652), v54, 0x20u);
    v56 = this + 9352;
    if (((this ^ (this + 9352)) & 0xFFC0000000000000) != 0)
    {
      v56 = v56 & 0xFFFFFFFFFFFFLL | 0xC8A2000000000000;
    }

    v57 = AppleH15PlatformErrorHandler::_mapApertures(this, (this + 628), v56, 4u);
    v58 = this + 11912;
    if (((this ^ (this + 11912)) & 0xFFC0000000000000) != 0)
    {
      v58 = v58 & 0xFFFFFFFFFFFFLL | 0xC8A2000000000000;
    }

    v59 = AppleH15PlatformErrorHandler::_mapApertures(this, (this + 676), v58, 8u);
    if ((v126 & 1) != 0 || (v124 & 1) != 0 || (v122 & 1) != 0 || (v120 & 1) != 0 || (v118 & 1) != 0 || (v116 & 1) != 0 || (v114 & 1) != 0 || (v112 & 1) != 0 || (v110 & 1) != 0 || (v108 & 1) != 0 || (v106 & 1) != 0 || (v104 & 1) != 0 || (v102 & 1) != 0 || (v100 & 1) != 0 || (v98 & 1) != 0 || (v96 & 1) != 0 || (v45 & 1) != 0 || (v46 & 1) != 0 || (v47 & 1) != 0 || (v49 & 1) != 0 || (v51 & 1) != 0 || (v53 & 1) != 0 || (v55 & 1) != 0 || (v57 & 1) != 0 || v59)
    {
      AppleH15PlatformErrorHandler::start();
    }

    *(this + 13600) = this + 3752;
    *(this + 13608) = *(this + 276);
    *(this + 13632) = v93;
    *(this + 13640) = *(this + 324);
    *(this + 13712) = v92;
    *(this + 13720) = *(this + 444);
    *(this + 13728) = v91;
    *(this + 13736) = *(this + 468);
    v60 = AppleH15PlatformErrorHandler::_registerInterrupts(this, v135, AppleH15PlatformErrorHandler::_amccHandleInterrupt, 0);
    v61 = v60 | AppleH15PlatformErrorHandler::_registerInterrupts(this, (this + 700), AppleH15PlatformErrorHandler::_dcsHandleInterrupt, 0);
    v62 = AppleH15PlatformErrorHandler::_registerInterrupts(this, v136, AppleH15PlatformErrorHandler::_ioaHandleInterrupt, 0);
    v63 = v61 | v62 | AppleH15PlatformErrorHandler::_registerInterrupts(this, v133, AppleH15PlatformErrorHandler::_sepHandleInterrupt, 0);
    if ((*(this + 147) & 1) == 0)
    {
      LOBYTE(v63) = v63 | AppleH15PlatformErrorHandler::_registerInterrupts(this, v127, AppleH15PlatformErrorHandler::_sramHandleInterrupt, 0);
    }

    v138 = AppleH15PlatformErrorHandler::_registerInterrupts(this, v137, AppleH15PlatformErrorHandler::_afxNiHandleInterrupt, &AppleH15PlatformErrorHandler::_afxNi0Decoder);
    v64 = AppleH15PlatformErrorHandler::_registerInterrupts(this, v134, AppleH15PlatformErrorHandler::_afxNiHandleInterrupt, &AppleH15PlatformErrorHandler::_afxNi2Decoder);
    v65 = AppleH15PlatformErrorHandler::_registerInterrupts(this, v132, AppleH15PlatformErrorHandler::_afxNiHandleInterrupt, &AppleH15PlatformErrorHandler::_afxNi7Decoder);
    v66 = AppleH15PlatformErrorHandler::_registerInterrupts(this, v131, AppleH15PlatformErrorHandler::_afxNiHandleInterrupt, &AppleH15PlatformErrorHandler::_afxNi8Decoder);
    v67 = AppleH15PlatformErrorHandler::_registerInterrupts(this, v130, AppleH15PlatformErrorHandler::_afxNsHandleInterrupt, AppleH15PlatformErrorHandler::_afcNsDecoder);
    v68 = AppleH15PlatformErrorHandler::_registerInterrupts(this, v129, AppleH15PlatformErrorHandler::_afxNsHandleInterrupt, AppleH15PlatformErrorHandler::_afiNsDecoder);
    v69 = AppleH15PlatformErrorHandler::_registerInterrupts(this, v128, AppleH15PlatformErrorHandler::_afxNsHandleInterrupt, &AppleH15PlatformErrorHandler::_afrNsDecoder);
    if ((v63 & 1) != 0 || (v138 & 1) != 0 || (v64 & 1) != 0 || (v65 & 1) != 0 || (v66 & 1) != 0 || (v67 & 1) != 0 || (v68 & 1) != 0 || v69)
    {
      AppleH15PlatformErrorHandler::start();
    }

    AppleH15PlatformErrorHandler::_amccGenerateEnableMask(this);
    AppleH15PlatformErrorHandler::_dcsGenerateEnableMask(this);
    v70 = 0;
    *(this + 14256) = 523775;
    v71 = this + 13584;
    if (((this ^ (this + 13584)) & 0xFFC0000000000000) != 0)
    {
      v71 = v71 & 0xFFFFFFFFFFFFLL | 0xC8A2000000000000;
    }

    v72 = 1;
    v4 = v90;
    do
    {
      v73 = v72;
      v74 = *(&AppleH15PlatformErrorHandler::_afxNi0Decoder + 5 * v70 + 4);
      v75 = *(v74 + 8);
      if (v75)
      {
        LODWORD(v75) = 0;
        v76 = 1;
        v77 = *(&AppleH15PlatformErrorHandler::_afxNi0Decoder + 5 * v70 + 4);
        do
        {
          LODWORD(v75) = *v77 | v75;
          v77 = v74 + 16 * v76++;
        }

        while (*(v77 + 8));
      }

      v72 = 0;
      *(v71 + 4 * v70) = v75;
      v70 = 1;
    }

    while ((v73 & 1) != 0);
    AppleH15PlatformErrorHandler::_amccEnableErrors(this, 1);
    AppleH15PlatformErrorHandler::_dcsEnableErrors(this, 1);
    AppleH15PlatformErrorHandler::_ioaEnableErrors(this, 1);
    AppleH15PlatformErrorHandler::_afxNiEnableErrors(this, 1);
    AppleH15PlatformErrorHandler::_afcNsDisableErrors(this, 1);
    AppleH15PlatformErrorHandler::_afiNsDisableErrors(this, 1);
    v78 = *(this + 192);
    if (v78)
    {
      for (i = 0; i < v78; ++i)
      {
        v80 = *(this + 824 + 8 * i);
        if (*(v80 + 16))
        {
          v81 = 0;
          do
          {
            (*(**(this + 160) + 1024))(*(this + 160), v81 + *(v80 + 12));
            ++v81;
          }

          while (v81 < *(v80 + 16));
          v78 = *(this + 192);
        }
      }
    }

    (*(**(this + 168) + 1384))(*(this + 168), 0, 0);
    AppleARMFunction::registerFunctionParent(v89, this, v82);
    (*(*this + 672))(this, 2);
    *(this + 14048) = 0;
    v83 = IOService::getPMRootDomain()->__vftable;
    v84 = (v83->getProperty_1)();
    v85 = OSMetaClassBase::safeMetaCast(v84, v88);
    if (v85)
    {
      v86 = v85;
      if ((v85->__vftable[1].getMetaClass)(v85) == 4)
      {
        *(this + 14048) = (v86->__vftable[2].~OSMetaClassBase_0)(v86);
      }
    }
  }

  return v4 != 0;
}

uint64_t AppleH15PlatformErrorHandler::_getPropertyCount(AppleH15PlatformErrorHandler *this, const char *a2, unint64_t a3)
{
  v4 = (*(**(this + 20) + 280))(*(this + 20), a2);
  result = OSMetaClassBase::safeMetaCast(v4, OSData::metaClass);
  if (result)
  {
    v6 = (*(*result + 160))(result);
    result = v6 / a3;
    if (result * a3 != v6)
    {
      AppleH15PlatformErrorHandler::_getPropertyCount();
    }
  }

  return result;
}

BOOL AppleH15PlatformErrorHandler::_getMetadata(uint64_t a1, uint64_t a2, const char *a3, unsigned int a4, char a5)
{
  v9 = a1;
  v10 = (*(**(a1 + 160) + 280))(*(a1 + 160), a3);
  v11 = OSMetaClassBase::safeMetaCast(v10, OSData::metaClass);
  if (v11)
  {
    v12 = v11;
    v13 = (v11->__vftable[1].getMetaClass)(v11);
    v14 = v12->__vftable;
    if (v13 != 24)
    {
      (v14[1].getMetaClass)(v12);
      kprintf("%s::%s: '%s' property length is %d expected %lu\n");
      return 1;
    }

    v39 = a2;
    v15 = (v14[2].~OSMetaClassBase_0)(v12);
    v16 = *(v15 + 4);
    v42 = *v15;
    v17 = *(v15 + 8);
    v40 = v17;
    v18 = v17;
    v19 = v17 > a4;
    if (v17 > a4)
    {
      kprintf("%s::%s: %16s: 'reg' property count (%u) exceeds max %u\n", "AppleH15PlatformErrorHandler", "_getMetadata", a3, v17, a4);
    }

    v20 = v9[46];
    v44 = v18 + v16;
    if (v16 >= v20 || v18 + v16 > v20)
    {
      kprintf("%s::%s: %s: regIndex(%u) regCount(%u) exceeds _regCount(%u)\n", "AppleH15PlatformErrorHandler", "_getMetadata", a3, v16, v18, v20);
      v19 = 1;
    }

    if (!strcmp(a3, "amcc-metadata"))
    {
      v9[34] = v18;
    }

    v22 = v9[47];
    v23 = DWORD2(v40) + DWORD1(v40);
    if (DWORD1(v40) >= v22 || v23 > v22)
    {
      kprintf("%s::%s: %s: irqIndex(%u) irqCount(%u) exceeds _irqCount(%u)\n", "AppleH15PlatformErrorHandler", "_getMetadata", a3, DWORD1(v40), DWORD2(v40), v22);
      v19 = 1;
    }

    if (v9[48])
    {
      v25 = 0;
      v41 = v9 + 206;
      v43 = HIBYTE(v42);
      v26 = v44;
      do
      {
        v27 = v9;
        v28 = &v41[2 * v25];
        v29 = *v28;
        if (v42 == **v28)
        {
          kprintf("%s::%s: Duplicate metadata type: %c%c%c%c\n", "AppleH15PlatformErrorHandler", "_getMetadata", v43, BYTE2(v42), BYTE1(v42), v42);
          v26 = v44;
          v29 = *v28;
          v19 = 1;
        }

        v30 = v29[1];
        if (v16 >= v30 && (v31 = v29[2] + v30, v16 < v31) || v26 > v30 && (v31 = v29[2] + v30, v26 <= v31))
        {
          kprintf("%s::%s: %c%c%c%c reg range[%u,%u) overlaps %c%c%c%c reg range [%u,%u)\n", "AppleH15PlatformErrorHandler", "_getMetadata", v43, BYTE2(v42), BYTE1(v42), v42, v16, v26, HIBYTE(*v29), BYTE2(*v29), BYTE1(*v29), *v29, v30, v31);
          v26 = v44;
          v29 = *v28;
          v19 = 1;
        }

        v32 = v29[3];
        v9 = v27;
        if (DWORD1(v40) >= v32 && (v33 = v29[4] + v32, DWORD1(v40) < v33) || v23 > v32 && (v33 = v29[4] + v32, v23 <= v33))
        {
          kprintf("%s::%s: %c%c%c%c irq range[%u,%u) overlaps %c%c%c%c irq range [%u,%u)\n", "AppleH15PlatformErrorHandler", "_getMetadata", v43, BYTE2(v42), BYTE1(v42), v42, DWORD1(v40), v23, HIBYTE(*v29), BYTE2(*v29), BYTE1(*v29), *v29, v32, v33);
          v26 = v44;
          v19 = 1;
        }

        ++v25;
        v34 = v27[48];
      }

      while (v25 < v34);
      if (v34 > 0x19)
      {
        kprintf("%s::%s: Too many metadata instances (MAX=%d): %c%c%c%c\n");
        return 1;
      }
    }

    *v39 = v42;
    *(v39 + 4) = v16;
    *(v39 + 8) = v40;
    v35 = v9[48];
    v9[48] = v35 + 1;
    v36 = 8 * v35;
    v37 = (v9 + v36 + 824);
    if (v36 != v36)
    {
      v37 = (&v9[v36 / 4 + 206] & 0xFFFFFFFFFFFFLL | 0x2BAD000000000000);
    }

    *v37 = v39;
  }

  else
  {
    if ((a5 & 1) == 0)
    {
      kprintf("%s::%s: '%s' property not present\n");
      return 1;
    }

    return 0;
  }

  return v19;
}

uint64_t AppleH15PlatformErrorHandler::_getNsApertureNames(AppleH15PlatformErrorHandler *this, const char *a2, unsigned int *a3, unsigned int a4, int a5)
{
  *__str = 0;
  v20 = 0;
  v5 = a4 >> 1;
  if (a4 != 2 * v5)
  {
    AppleH15PlatformErrorHandler::_getNsApertureNames();
  }

  snprintf(__str, 0x10uLL, "%s-ns-names", a2);
  v9 = (*(**(this + 20) + 280))();
  v10 = OSMetaClassBase::safeMetaCast(v9, OSData::metaClass);
  if (v10)
  {
    v11 = v10;
    v12 = (v10->__vftable[1].getMetaClass)(v10);
    v13 = v12;
    if (4 * v5 >= v12)
    {
      v15 = (v11->__vftable[2].~OSMetaClassBase_0)(v11);
      if (v13 >= 4)
      {
        v16 = 0;
        v17 = 4 * (v13 >> 2);
        do
        {
          v18 = *(v15 + v16);
          *a3 = v18;
          a3[v17 / 4] = v18;
          ++a3;
          v16 += 4;
        }

        while (v17 != v16);
      }

      return 0;
    }

    else
    {
      kprintf("%s::%s: Unexpected %s property length: expected %u actual %u\n", "AppleH15PlatformErrorHandler", "_getNsApertureNames", __str, 4 * v5, v12);
      return 1;
    }
  }

  else
  {
    kprintf("%s::%s: Missing %s property\n", "AppleH15PlatformErrorHandler", "_getNsApertureNames", __str);
    return a5 ^ 1u;
  }
}

uint64_t AppleH15PlatformErrorHandler::_mapApertures(uint64_t a1, _DWORD *a2, uint64_t a3, unsigned int a4)
{
  v4 = a2[2];
  if (v4 > a4)
  {
    AppleH15PlatformErrorHandler::_mapApertures();
  }

  if (v4)
  {
    v7 = 0;
    v8 = 0;
    v9 = (a3 + 16);
    do
    {
      v10 = (*(**(a1 + 160) + 976))(*(a1 + 160), (v7 + a2[1]), 0);
      *(v9 - 1) = v10;
      if (v10)
      {
        *v9 = (*(*v10 + 120))(v10);
        v9[1] = IOMemoryMap::getPhysicalAddress(*(v9 - 1));
        v9[2] = (*(**(v9 - 1) + 136))();
        *(v9 - 2) = a2;
      }

      else
      {
        kprintf("%s::%s: Failed to map %c%c%c%c aperture %u\n", "AppleH15PlatformErrorHandler", "_mapApertures", HIBYTE(*a2), BYTE2(*a2), BYTE1(*a2), *a2, v7);
        v8 = 1;
      }

      ++v7;
      v9 += 5;
    }

    while (v7 < a2[2]);
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

uint64_t AppleH15PlatformErrorHandler::_registerInterrupts(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4)
{
  if (a2[4])
  {
    v8 = 0;
    v9 = 0;
    do
    {
      if ((*(**(a1 + 160) + 1000))(*(a1 + 160), v9 + a2[3], a1, a3, a4))
      {
        kprintf("%s::%s: Failed to register %c%c%c%c interrupt %u\n", "AppleH15PlatformErrorHandler", "_registerInterrupts", HIBYTE(*a2), BYTE2(*a2), BYTE1(*a2), *a2, v9 + a2[3]);
        v8 = 1;
      }

      ++v9;
    }

    while (v9 < a2[4]);
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

void AppleH15PlatformErrorHandler::_amccHandleInterrupt(const OSMetaClassBase *this, OSObject *a2, void *a3, IOService *a4)
{
  v4 = a4;
  v5 = OSMetaClassBase::safeMetaCast(this, &AppleH15PlatformErrorHandler::gMetaClass);
  if (!v5)
  {
    AppleH15PlatformErrorHandler::_amccHandleInterrupt();
  }

  AppleH15PlatformErrorHandler::_amccDecodeInterrupts(v5, v4, v6);
}

uint64_t AppleH15PlatformErrorHandler::_dcsHandleInterrupt(const OSMetaClassBase *this, OSObject *a2, void *a3, IOService *a4)
{
  v4 = a4;
  v5 = OSMetaClassBase::safeMetaCast(this, &AppleH15PlatformErrorHandler::gMetaClass);
  if (!v5)
  {
    AppleH15PlatformErrorHandler::_dcsHandleInterrupt();
  }

  return AppleH15PlatformErrorHandler::_dcsDecodeInterrupts(v5, v4, v6);
}

uint64_t AppleH15PlatformErrorHandler::_ioaHandleInterrupt(const OSMetaClassBase *this, OSObject *a2, void *a3, IOService *a4)
{
  v4 = a4;
  v5 = OSMetaClassBase::safeMetaCast(this, &AppleH15PlatformErrorHandler::gMetaClass);
  if (!v5)
  {
    AppleH15PlatformErrorHandler::_ioaHandleInterrupt();
  }

  return AppleH15PlatformErrorHandler::_ioaDecodeInterrupts(v5, v4, v6);
}

void AppleH15PlatformErrorHandler::_sepHandleInterrupt(const OSMetaClassBase *this, OSObject *a2, void *a3, IOService *a4)
{
  v4 = a4;
  v6 = OSMetaClassBase::safeMetaCast(this, &AppleH15PlatformErrorHandler::gMetaClass);
  if (!v6)
  {
    panic("%s::%s: REQUIRE failed @%s:%d", "AppleH15PlatformErrorHandler", "_sepHandleInterrupt", "AppleH15PlatformErrorHandler.cpp", 4680);
  }

  AppleH15PlatformErrorHandler::_sepDecodeInterrupts(v6, v4, a2);
}

OSMetaClassBase *AppleH15PlatformErrorHandler::_sramHandleInterrupt(const OSMetaClassBase *this, OSObject *a2, void *a3, IOService *a4)
{
  result = OSMetaClassBase::safeMetaCast(this, &AppleH15PlatformErrorHandler::gMetaClass);
  if (!result)
  {
    AppleH15PlatformErrorHandler::_sramHandleInterrupt();
  }

  return result;
}

uint64_t AppleH15PlatformErrorHandler::_afxNiHandleInterrupt(const OSMetaClassBase *this, OSObject *a2, void *a3, IOService *a4)
{
  v4 = a4;
  v6 = OSMetaClassBase::safeMetaCast(this, &AppleH15PlatformErrorHandler::gMetaClass);
  if (!v6)
  {
    AppleH15PlatformErrorHandler::_afxNiHandleInterrupt();
  }

  return AppleH15PlatformErrorHandler::_afxNiDecodeInterrupts(v6, v4, a2);
}

uint64_t AppleH15PlatformErrorHandler::_afxNsHandleInterrupt(const OSMetaClassBase *this, OSObject *a2, void *a3, IOService *a4)
{
  v4 = a4;
  v6 = OSMetaClassBase::safeMetaCast(this, &AppleH15PlatformErrorHandler::gMetaClass);
  if (!v6)
  {
    AppleH15PlatformErrorHandler::_afxNsHandleInterrupt();
  }

  return AppleH15PlatformErrorHandler::_afxNsDecodeInterrupts(v6, v4, a2);
}

void AppleH15PlatformErrorHandler::_amccGenerateEnableMask(AppleH15PlatformErrorHandler *this)
{
  *(this + 1757) = 0;
  v2 = &AppleH15PlatformErrorHandler::_amccNonPlaneDecoders;
  v3 = 4;
  do
  {
    AppleH15PlatformErrorHandler::_amccGenerateEnableMaskforInputTable(this, v2);
    v2 += 32;
    --v3;
  }

  while (v3);
  AppleH15PlatformErrorHandler::_amccGenerateEnableMaskforInputTable(this, AppleH15PlatformErrorHandler::_amccNonPlaneDecoders_EFL);
  AppleH15PlatformErrorHandler::_amccGenerateEnableMaskforInputTable(v4, dword_181C0);
  v5 = 0;
  v6 = *(this + 146);
  do
  {
    v7 = &AppleH15PlatformErrorHandler::_amccPlaneDecoders + 24 * v5;
    v8 = *(v7 + 2);
    if (v8)
    {
      v9 = 0;
      v10 = 0;
      v11 = *(v7 + 2);
      do
      {
        v12 = *(v11 + 4);
        v13 = *(v11 + 16);
        if (*(v11 + 24))
        {
          v14 = (*(v11 + 24) & 1 | v13) == 0;
        }

        else
        {
          v14 = 1;
        }

        v16 = !v14 || v13 != 0;
        if (v5 == 1 && v12 == 256)
        {
          *(this + 1757) = v11;
          v16 = *(this + 143);
        }

        v11 += 32;
        v17 = (v16 & 1) == 0;
        if (v16)
        {
          v18 = v12;
        }

        else
        {
          v18 = 0;
        }

        v10 |= v18;
        if (!v17)
        {
          v12 = 0;
        }

        v9 |= v12;
        --v8;
      }

      while (v8);
    }

    else
    {
      v10 = 0;
      v9 = 0;
    }

    *v7 = v10;
    *(v7 + 1) = v9;
    if (v6)
    {
      *v7 = v10 & 0xFFFFFF7F;
      *(v7 + 1) = v9 | 0x80;
    }

    ++v5;
  }

  while (v5 != 3);
}

uint64_t AppleH15PlatformErrorHandler::_dcsGenerateEnableMask(uint64_t this)
{
  v1 = this;
  for (i = 0; i != 15; ++i)
  {
    v3 = &AppleH15PlatformErrorHandler::_dcsDecoders[6 * i];
    v4 = v3[2];
    if (v4)
    {
      v5 = 0;
      v6 = 0;
      v7 = *(v3 + 2);
      v8 = (v7 + 48);
      do
      {
        v9 = *(v8 - 1);
        v10 = v9 == 0;
        v11 = *v8 & 1 | v9;
        if (*v8)
        {
          v12 = v11 == 0;
        }

        else
        {
          v12 = 1;
        }

        v13 = v12;
        v14 = *(v8 - 11);
        v15 = (v10 & v13) == 0;
        if ((v10 & v13) != 0)
        {
          v16 = 0;
        }

        else
        {
          v16 = *(v8 - 11);
        }

        v6 |= v16;
        if (v15)
        {
          v17 = 0;
        }

        else
        {
          v17 = *(v8 - 11);
        }

        v5 |= v17;
        v8 += 7;
        --v4;
      }

      while (v4);
      if (*(v1 + 145))
      {
        v18 = *(v7 + 24);
        v19 = strlen("spll");
        this = strncmp(v18, "spll", v19);
        if (!this)
        {
          v6 = 0;
        }
      }

      *v3 = v6;
      v3[1] = v5;
    }
  }

  return this;
}

double AppleH15PlatformErrorHandler::_ioaGenerateEnableMask(AppleH15PlatformErrorHandler *this)
{
  *&result = 523775;
  *(this + 1782) = 523775;
  return result;
}

uint64_t AppleH15PlatformErrorHandler::_afxNiGenerateEnableMask(uint64_t this)
{
  v1 = 0;
  v2 = this + 13584;
  if (((this ^ (this + 13584)) & 0xFFC0000000000000) != 0)
  {
    v2 = v2 & 0xFFFFFFFFFFFFLL | 0xC8A2000000000000;
  }

  v3 = 1;
  do
  {
    v4 = v3;
    v5 = *(&AppleH15PlatformErrorHandler::_afxNi0Decoder + 5 * v1 + 4);
    v6 = *(v5 + 8);
    if (v6)
    {
      LODWORD(v6) = 0;
      v7 = 1;
      v8 = *(&AppleH15PlatformErrorHandler::_afxNi0Decoder + 5 * v1 + 4);
      do
      {
        LODWORD(v6) = *v8 | v6;
        v8 = v5 + 16 * v7++;
      }

      while (*(v8 + 8));
    }

    v3 = 0;
    *(v2 + 4 * v1) = v6;
    v1 = 1;
  }

  while ((v4 & 1) != 0);
  return this;
}

void AppleH15PlatformErrorHandler::_amccEnableErrors(uint64_t this, int a2)
{
  if (*(this + 540))
  {
    v4 = 0;
    v5 = this + 8232;
    if (((this ^ (this + 8232)) & 0xFFC0000000000000) != 0)
    {
      v5 = v5 & 0xFFFFFFFFFFFFLL | 0xC8A2000000000000;
    }

    do
    {
      v6 = 4;
      v7 = &AppleH15PlatformErrorHandler::_amccNonPlaneDecoders;
      do
      {
        AppleH15PlatformErrorHandler::_amccEnableErrorsForInputTable(this, v7, v4, a2);
        v7 += 8;
        --v6;
      }

      while (v6);
      v9 = 0;
      v10 = 1;
      do
      {
        v11 = v10;
        v12 = 3;
        v13 = &dword_18494;
        do
        {
          Register32 = AppleH15PlatformErrorHandler::_readRegister32(v8, v5, v4, v9 | 0x21000u);
          v15 = *(v13 - 1);
          v16 = v15 | Register32;
          v17 = Register32 & ~v15;
          if (a2)
          {
            v17 = v16;
          }

          v18 = *v13;
          v13 += 6;
          AppleH15PlatformErrorHandler::_writeRegister32(Register32, v5, v4, v9 | 0x21000, v17 & ~v18);
          AppleH15PlatformErrorHandler::_writeRegister32(v19, v5, v4, v9 | 0x22000, 0);
          v9 += 8;
          --v12;
        }

        while (v12);
        v10 = 0;
        v9 = 0x40000;
      }

      while ((v11 & 1) != 0);
      ++v4;
    }

    while (v4 < *(this + 540));
  }
}

void AppleH15PlatformErrorHandler::_dcsEnableErrors(uint64_t this, int a2)
{
  if (*(this + 540))
  {
    v3 = 0;
    v4 = this + 8232;
    if (((this ^ (this + 8232)) & 0xFFC0000000000000) != 0)
    {
      v4 = v4 & 0xFFFFFFFFFFFFLL | 0xC8A2000000000000;
    }

    do
    {
      for (i = 0; i != 4; ++i)
      {
        v6 = 15;
        v7 = &dword_184E0;
        do
        {
          if (*v7)
          {
            v8 = *(v7 + 1);
            v9 = *(v8 + 12);
            v10 = *(v8 + 8) + (i << 21);
            Register32 = AppleH15PlatformErrorHandler::_readRegister32(this, v4, v3, v10 + v9);
            v12 = *(v7 - 2);
            v13 = v12 | Register32;
            v14 = Register32 & ~v12;
            if (a2)
            {
              v14 = v13;
            }

            AppleH15PlatformErrorHandler::_writeRegister32(Register32, v4, v3, v10 + v9, v14 & ~*(v7 - 1));
          }

          v7 += 6;
          --v6;
        }

        while (v6);
      }

      ++v3;
    }

    while (v3 < *(this + 540));
  }
}

void AppleH15PlatformErrorHandler::_ioaEnableErrors(uint64_t this, int a2)
{
  if (*(this + 732))
  {
    v4 = 0;
    v5 = this + 12872;
    if (((this ^ (this + 12872)) & 0xFFC0000000000000) != 0)
    {
      v5 = v5 & 0xFFFFFFFFFFFFLL | 0xC8A2000000000000;
    }

    v6 = this + 12232;
    if (((this ^ (this + 12232)) & 0xFFC0000000000000) != 0)
    {
      v6 = v6 & 0xFFFFFFFFFFFFLL | 0xC8A2000000000000;
    }

    do
    {
      if (v4 < 8)
      {
        v7 = 2;
      }

      else
      {
        v7 = 3;
      }

      Register32 = AppleH15PlatformErrorHandler::_readRegister32(this, v5, v7, 0x80Cu);
      if (Register32 >> 28)
      {
        v13 = AppleH15PlatformErrorHandler::_readRegister32(Register32, v5, v7, 0x810u);
        AppleH15PlatformErrorHandler::_readRegister32(v13, v5, v7, 0x814u);
        kprintf("%s::%s: IOA%d does not exist\n", "AppleH15PlatformErrorHandler", "_ioaEnableErrors", v4 & 7);
      }

      else
      {
        v9 = AppleH15PlatformErrorHandler::_readRegister32(Register32, v6, v4, 0xA00u);
        v10 = *(this + 14256);
        v11 = v10 | v9;
        v12 = v9 & ~v10;
        if (a2)
        {
          v12 = v11;
        }

        AppleH15PlatformErrorHandler::_writeRegister32(v9, v6, v4, 0xA00u, v12 & ~*(this + 14260));
      }

      ++v4;
    }

    while (v4 < *(this + 732));
  }
}

void AppleH15PlatformErrorHandler::_afxNiEnableErrors(uint64_t this, int a2)
{
  v3 = 0;
  v4 = this + 13600;
  if (((this ^ (this + 13600)) & 0xFFC0000000000000) != 0)
  {
    v4 = v4 & 0xFFFFFFFFFFFFLL | 0xC8A2000000000000;
  }

  v18 = v4;
  v5 = this + 13584;
  if (((this ^ (this + 13584)) & 0xFFC0000000000000) != 0)
  {
    v5 = v5 & 0xFFFFFFFFFFFFLL | 0xC8A2000000000000;
  }

  do
  {
    v6 = *(&AppleH15PlatformErrorHandler::_afxNiAllDecoders + v3);
    if (v6)
    {
      v7 = v18 + 16 * v3;
      if (*(v7 + 8))
      {
        v8 = 0;
        do
        {
          v9 = 0;
          v10 = 1;
          do
          {
            v11 = v10;
            v12 = *(v6 + 40 * v9 + 4);
            Register32 = AppleH15PlatformErrorHandler::_readRegister32(this, *v7, v8, v12);
            v14 = *(v5 + 4 * v9);
            v15 = v14 | Register32;
            v16 = Register32 & ~v14;
            if (a2)
            {
              v17 = v15;
            }

            else
            {
              v17 = v16;
            }

            AppleH15PlatformErrorHandler::_writeRegister32(Register32, *v7, v8, v12, v17);
            v10 = 0;
            v9 = 1;
          }

          while ((v11 & 1) != 0);
          ++v8;
        }

        while (v8 < *(v7 + 8));
      }
    }

    else
    {
      IOLog("NI%d doesn't exist, skip\n", v3);
    }

    ++v3;
  }

  while (v3 != 11);
}

void AppleH15PlatformErrorHandler::_afcNsDisableErrors(AppleH15PlatformErrorHandler *this, int a2)
{
  if (*(this + 51))
  {
    v4 = 0;
    v5 = this + 13776;
    v6 = this + 1032;
    do
    {
      if (a2)
      {
        v7 = *&v5[4 * v4];
      }

      else
      {
        v7 = -1;
      }

      AppleH15PlatformErrorHandler::_writeRegister32(this, v6, v4++, 0x104u, v7);
    }

    while (v4 < *(this + 51));
  }
}

void AppleH15PlatformErrorHandler::_afiNsDisableErrors(AppleH15PlatformErrorHandler *this, int a2)
{
  if (*(this + 57))
  {
    v4 = 0;
    v5 = this + 13824;
    v6 = this + 1512;
    do
    {
      if (a2)
      {
        v7 = *&v5[4 * v4];
      }

      else
      {
        v7 = -1;
      }

      AppleH15PlatformErrorHandler::_writeRegister32(this, v6, v4++, 0x104u, v7);
    }

    while (v4 < *(this + 57));
  }
}

uint64_t AppleH15PlatformErrorHandler::_enableInterrupts(uint64_t this, char a2)
{
  if (*(this + 192))
  {
    v3 = this;
    v4 = 103;
    do
    {
      this = AppleH15PlatformErrorHandler::_enableInterrupts(v3, *(v3 + 8 * v4), a2);
      v5 = v4 - 102;
      ++v4;
    }

    while (v5 < *(v3 + 192));
  }

  return this;
}

uint64_t AppleH15PlatformErrorHandler::callPlatformFunction(AppleH15PlatformErrorHandler *this, const OSSymbol *a2, BOOL a3, void *a4, void *a5, void *a6, void *a7)
{
  if (gIOPlatformActiveActionKey == a2)
  {
    AppleH15PlatformErrorHandler::_amccPostHibernateClean(this);
    AppleH15PlatformErrorHandler::_amccEnableErrors(this, 1);
    AppleH15PlatformErrorHandler::_dcsEnableErrors(this, 1);
    AppleH15PlatformErrorHandler::_ioaEnableErrors(this, 1);
    (*(**(this + 21) + 1384))();
    AppleH15PlatformErrorHandler::_afxNiEnableErrors(this, 1);
    AppleH15PlatformErrorHandler::_afcNsDisableErrors(this, 1);
    AppleH15PlatformErrorHandler::_afiNsDisableErrors(this, 1);
    (*(**(this + 21) + 1384))();
    v10 = *(this + 48);
    if (v10)
    {
      for (i = 0; i < v10; ++i)
      {
        v12 = *(this + i + 103);
        if (*(v12 + 16))
        {
          v13 = 0;
          do
          {
            (*(**(this + 20) + 1024))(*(this + 20), v13 + *(v12 + 12));
            ++v13;
          }

          while (v13 < *(v12 + 16));
          v10 = *(this + 48);
        }
      }
    }

    return 0;
  }

  if (gIOPlatformQuiesceActionKey == a2)
  {
    AppleH15PlatformErrorHandler::_amccEnableErrors(this, 0);
    AppleH15PlatformErrorHandler::_dcsEnableErrors(this, 0);
    AppleH15PlatformErrorHandler::_ioaEnableErrors(this, 0);
    v14 = *(this + 48);
    if (v14)
    {
      for (j = 0; j < v14; ++j)
      {
        v16 = *(this + j + 103);
        if (*(v16 + 16))
        {
          v17 = 0;
          do
          {
            (*(**(this + 20) + 1032))(*(this + 20), v17 + *(v16 + 12));
            ++v17;
          }

          while (v17 < *(v16 + 16));
          v14 = *(this + 48);
        }
      }
    }

    return 0;
  }

  return callPlatformFunction();
}

void AppleH15PlatformErrorHandler::_amccPostHibernateClean(uint64_t this)
{
  v1 = *(this + 14048);
  if (v1 && *v1 == 2 && *(this + 14056) && *(this + 540))
  {
    v3 = 0;
    v4 = this + 8232;
    if (((this ^ (this + 8232)) & 0xFFC0000000000000) != 0)
    {
      v4 = v4 & 0xFFFFFFFFFFFFLL | 0xC8A2000000000000;
    }

    do
    {
      AppleH15PlatformErrorHandler::_writeRegister32(this, v4, v3, 8 * **(this + 14056) + 135172, *(*(this + 14056) + 4));
      AppleH15PlatformErrorHandler::_writeRegister32(v5, v4, v3++, 8 * **(this + 14056) + 397316, *(*(this + 14056) + 4));
    }

    while (v3 < *(this + 540));
  }
}

uint64_t AppleH15PlatformErrorHandler::_getHibernateState(AppleH15PlatformErrorHandler *this)
{
  v1 = *(this + 1756);
  if (v1)
  {
    return *v1;
  }

  else
  {
    return 0;
  }
}

uint64_t AppleH15PlatformErrorHandler::_enableInterrupts(uint64_t result, uint64_t a2, char a3)
{
  v4 = result;
  v5 = *(a2 + 16);
  if (a3)
  {
    if (v5)
    {
      v6 = 0;
      do
      {
        result = (*(**(v4 + 160) + 1024))(*(v4 + 160), v6 + *(a2 + 12));
        ++v6;
      }

      while (v6 < *(a2 + 16));
    }
  }

  else if (v5)
  {
    v7 = 0;
    do
    {
      result = (*(**(v4 + 160) + 1032))(*(v4 + 160), v7 + *(a2 + 12));
      ++v7;
    }

    while (v7 < *(a2 + 16));
  }

  return result;
}

uint64_t AppleH15PlatformErrorHandler::_readRegister32(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4)
{
  if (*(*a2 + 8) <= a3)
  {
    goto LABEL_6;
  }

  v4 = 40 * a3;
  v5 = a2 + v4;
  if (v4 != v4)
  {
    v5 = (a2 + v4) & 0xFFFFFFFFFFFFLL | 0x2BAD000000000000;
  }

  if (*(v5 + 32) <= a4)
  {
LABEL_6:
    AppleH15PlatformErrorHandler::_readRegister32();
  }

  return *(*(v5 + 16) + a4);
}

void AppleH15PlatformErrorHandler::_writeRegister32(uint64_t a1, unint64_t a2, unsigned int a3, unsigned int a4, int a5)
{
  if (*(*a2 + 8) <= a3 || *(a2 + 32) <= a4)
  {
    AppleH15PlatformErrorHandler::_writeRegister32();
  }

  v5 = 40 * a3;
  v6 = a2 + v5;
  if (((a2 ^ (a2 + v5)) & 0xFFC0000000000000) != 0)
  {
    v6 = v6 & 0xFFFFFFFFFFFFLL | 0xC8A2000000000000;
  }

  *(*(v6 + 16) + a4) = a5;
}

const char *AppleH15PlatformErrorHandler::_fabricCommand(AppleH15PlatformErrorHandler *this)
{
  v1 = this;
  result = "???";
  if (v1 <= 0x3F)
  {
    v3 = 8 * v1;
    v4 = AppleH15PlatformErrorHandler::_fabricCommands + v3;
    if (v3 != v3)
    {
      v4 = (&AppleH15PlatformErrorHandler::_fabricCommands[v3 / 8] & 0xFFFFFFFFFFFFLL | 0x2BAD000000000000);
    }

    if (*v4)
    {
      return *v4;
    }
  }

  return result;
}

void AppleH15PlatformErrorHandler::amccNoPlaneFetchCeflLog(uint64_t this, unsigned int a2, unint64_t *a3, unsigned int *a4)
{
  v8 = this + 8232;
  if (((this ^ (this + 8232)) & 0xFFC0000000000000) != 0)
  {
    v8 = v8 & 0xFFFFFFFFFFFFLL | 0xC8A2000000000000;
  }

  Register32 = AppleH15PlatformErrorHandler::_readRegister32(this, v8, a2, 0x156304u);
  v24 = this;
  v10 = *(this + 14264);
  enable = ml_set_interrupts_enabled(0);
  IOSimpleLockLock(v10);
  if (Register32)
  {
    v12 = Register32;
    v13 = 0;
    v14 = 0;
    do
    {
      if (v12)
      {
        v15 = AppleH15PlatformErrorHandler::_readRegister32(v11, v8, a2, 12 * v14 + 1401608);
        v16 = v15;
        v11 = AppleH15PlatformErrorHandler::_readRegister32(v15, v8, a2, 12 * v14 + 1401612);
        v17 = BYTE1(v11);
        if (BYTE1(v11))
        {
          v18 = v13 + BYTE1(v11);
          do
          {
            v19 = 8 * (v13 + *a4);
            v20 = (a3 + v19);
            if (v19 != v19)
            {
              v20 = (&a3[v19 / 8] & 0xFFFFFFFFFFFFLL | 0x2BAD000000000000);
            }

            *v20 = v16 & 0xFFFFFF80 | (v11 << 32) | 0x10000000000;
            ++v13;
            --v17;
          }

          while (v17);
          v13 = v18;
        }
      }

      ++v14;
      v21 = v12 > 1;
      v12 >>= 1;
    }

    while (v21);
  }

  else
  {
    v13 = 0;
  }

  *a4 += v13;
  IOSimpleLockUnlock(*(v24 + 14264));
  v22 = ml_set_interrupts_enabled(enable);

  AppleH15PlatformErrorHandler::_writeRegister32(v22, v8, a2, 0x156304u, Register32);
}

uint64_t AppleH15PlatformErrorHandler::_afxNiDecodeInterrupts(uint64_t this, int a2, unsigned int *a3)
{
  if (!a3)
  {
    AppleH15PlatformErrorHandler::_afxNiDecodeInterrupts();
  }

  v4 = a3[3];
  if (v4 >= 0xB)
  {
    AppleH15PlatformErrorHandler::_afxNiDecodeInterrupts();
  }

  v5 = this + 13600;
  if (((this ^ (this + 13600)) & 0xFFC0000000000000) != 0)
  {
    v5 = v5 & 0xFFFFFFFFFFFFLL | 0xC8A2000000000000;
  }

  v6 = (v5 + 16 * v4);
  if (16 * v4 != 16 * v4)
  {
    v6 = ((v5 + 16 * v4) & 0xFFFFFFFFFFFFLL | 0x2BAD000000000000);
  }

  v7 = *v6;
  if (!*v6)
  {
    AppleH15PlatformErrorHandler::_afxNiDecodeInterrupts();
  }

  v8 = *v7;
  if (!*v7)
  {
    AppleH15PlatformErrorHandler::_afxNiDecodeInterrupts();
  }

  v9 = v8[4];
  v10 = a2 - v8[3];
  if (v10 >= v9)
  {
    AppleH15PlatformErrorHandler::_afxNiDecodeInterrupts();
  }

  v11 = v8[2];
  if (v10 >= v11)
  {
    AppleH15PlatformErrorHandler::_afxNiDecodeInterrupts();
  }

  if (v9 != v11)
  {
    AppleH15PlatformErrorHandler::_afxNiDecodeInterrupts();
  }

  v12 = 0;
  v13 = 1;
  do
  {
    v14 = v13;
    v15 = &a3[10 * v12];
    this = AppleH15PlatformErrorHandler::_readRegister32(this, v7, v10, *v15);
    if (this)
    {
      v27 = v4;
      v28 = this;
      v16 = *(v15 + 4);
      v17 = *(v16 + 8);
      if (v17)
      {
        if ((*v16 & this) == 0)
        {
          v18 = 1;
          v17 = "*UNKNOWN*";
          do
          {
            v19 = v16 + 16 * v18;
            if (!*(v19 + 8))
            {
              goto LABEL_23;
            }

            ++v18;
          }

          while ((*v19 & this) == 0);
          v17 = *(v19 + 8);
        }
      }

      else
      {
        v17 = "*UNKNOWN*";
      }

LABEL_23:
      Register32 = AppleH15PlatformErrorHandler::_readRegister32(this, v7, v10, v15[2]);
      v21 = Register32;
      v22 = AppleH15PlatformErrorHandler::_readRegister32(Register32, v7, v10, v15[2] + 4);
      v23 = v22;
      v24 = AppleH15PlatformErrorHandler::_readRegister32(v22, v7, v10, v15[2] + 8);
      v25 = v24;
      AppleH15PlatformErrorHandler::_readRegister32(v24, v7, v10, v15[2] + 12);
      v26 = AppleH15PlatformErrorHandler::_fabricCommands[(v23 >> 11) & 0x3F];
      if (!v26)
      {
        v26 = "???";
      }

      snprintf(AppleH15PlatformErrorHandler::_afxNiDecodeInterrupts(int,void *)::msg, 0x100uLL, "%s NI%d %s %d %s error (0x%08x) cmd/st:0x%x(%s)/0x%x src/dst/tid:%x/%x/%x vc/sc/tz/crh:0x%x/0x%x/0x%x/0x%x user:0x%x", *(v15 + 2), v27, *(v15 + 3), v10, v17, v28, (v23 >> 11) & 0x3F, v26, (v23 >> 22) & 7, 0, (v21 >> 7) & 0xFFFFF, v23 & 0x7FF, v21 & 0xF, (v21 >> 4) & 7, (v23 >> 17) & 0x1F, v21 >> 30, v25 & 0xFFFFF);
      panic("%s @%s:%d", AppleH15PlatformErrorHandler::_afxNiDecodeInterrupts(int,void *)::msg, "AppleH15PlatformErrorHandler.cpp", 1383);
    }

    v13 = 0;
    v12 = 1;
  }

  while ((v14 & 1) != 0);
  return this;
}

void AppleH15PlatformErrorHandler::_afxNsDecodeStatus(uint64_t Register32, unsigned int a2, int a3, const char **a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  if (*a7)
  {
    v13 = 1;
    v14 = a7;
    do
    {
      Register32 = AppleH15PlatformErrorHandler::_readRegister32(Register32, a5, a2, *(v14 + 8));
      if (Register32)
      {
        v18 = Register32;
        v19 = __clz(__rbit32(Register32));
        v20 = "RX";
        if (*(v14 + 16))
        {
          v20 = "TX";
        }

        v28 = v20;
        v29 = *v14;
        v21 = AppleH15PlatformErrorHandler::_readRegister32(Register32, a5, a2, *(v14 + 12));
        v22 = AppleH15PlatformErrorHandler::_readRegister32(v21, a5, a2, *(v14 + 12) + 4);
        v23 = AppleH15PlatformErrorHandler::_readRegister32(v22, a5, a2, *(v14 + 12) + 8);
        v24 = 4 * a2;
        v25 = v24 == 4 * a2;
        v26 = (a6 + (4 * a2));
        v27 = (a6 + v24) & 0xFFFFFFFFFFFFLL | 0x2BAD000000000000;
        if (!v25)
        {
          v26 = v27;
        }

        panic("Die %u %s %c%c%c%c (index %u) %s %s%s error (0x%08x/0x%08x/0x%08x/0x%08x) on port %u->%u srcId/dstNi/tid:0x%x/0x%x/0x%x vc/vn/subnet:0x%x/0x%x/0x%x pktSize:0x%x @%s:%d", a3, *a4, HIBYTE(*v26), BYTE2(*v26), BYTE1(*v26), *v26, a2, a4[1], v28, v29, v18, v21, v22, v23, v19, v22 & 7, v23, WORD1(v22), HIWORD(v23), (v22 >> 4) & 3, (v22 >> 6) & 1, (v21 >> 4) & 7, (v22 >> 8) & 0x7F, "AppleH15PlatformErrorHandler.cpp", 1529);
      }

      v15 = 24 * v13;
      v14 = a7 + v15;
      if (((a7 ^ (a7 + v15)) & 0xFFC0000000000000) != 0)
      {
        v14 = v14 & 0xFFFFFFFFFFFFLL | 0xC8A2000000000000;
      }

      ++v13;
    }

    while (*v14);
  }

  v16 = 4 * a2;
  v17 = (a6 + (4 * a2));
  if (v16 != 4 * a2)
  {
    v17 = ((a6 + v16) & 0xFFFFFFFFFFFFLL | 0x2BAD000000000000);
  }

  panic("%s %c%c%c%c (index %u) unknown error @%s:%d", *a4, HIBYTE(*v17), BYTE2(*v17), BYTE1(*v17), *v17, a2, "AppleH15PlatformErrorHandler.cpp", 1534);
}

uint64_t AppleH15PlatformErrorHandler::_afxNsDecodeInterrupts(AppleH15PlatformErrorHandler *this, int a2, _DWORD *a3)
{
  if (!a3)
  {
    AppleH15PlatformErrorHandler::_afxNsDecodeInterrupts();
  }

  v3 = a3[10];
  if (v3 >= 3)
  {
    panic("Invalid AFx NS decoder %p aperture index: %u @%s:%d", a3, a3[10], "AppleH15PlatformErrorHandler.cpp", 1467);
  }

  v4 = 8 * v3;
  v5 = (&unk_64C0 + 8 * v3);
  if (8 * v3 != 8 * v3)
  {
    v5 = ((&unk_64C0 + 8 * v3) & 0xFFFFFFFFFFFFLL | 0x2BAD000000000000);
  }

  v6 = (this + *v5);
  if (*v5 != *v5)
  {
    v6 = ((this + *v5) & 0xFFFFFFFFFFFFLL | 0x2BAD000000000000);
  }

  v7 = *v6;
  if (!*v6)
  {
    AppleH15PlatformErrorHandler::_afxNsDecodeInterrupts();
  }

  if (!*(a3 + 2))
  {
    AppleH15PlatformErrorHandler::_afxNsDecodeInterrupts();
  }

  v8 = v7[4];
  v9 = (a2 - v7[3]);
  if (v9 >= v8)
  {
    AppleH15PlatformErrorHandler::_afxNsDecodeInterrupts();
  }

  v10 = v7[2];
  if (v9 >= v10)
  {
    AppleH15PlatformErrorHandler::_afxNsDecodeInterrupts();
  }

  if (v8 != v10)
  {
    AppleH15PlatformErrorHandler::_afxNsDecodeInterrupts();
  }

  v11 = *(a3 + 3);
  v12 = *(a3 + 4);
  if (v12)
  {
    v13 = (*(a3 + 4) & 1 | v11) == 0;
  }

  else
  {
    v13 = 1;
  }

  v14 = v13;
  if (v11 != AppleH15PlatformErrorHandler::_afxNsDecodeStatus || (v14 & 1) == 0)
  {
    AppleH15PlatformErrorHandler::_afxNsDecodeInterrupts();
  }

  v15 = (&off_64D8 + v4);
  if (v4 != v4)
  {
    v15 = ((&off_64D8 + v4) & 0xFFFFFFFFFFFFLL | 0x2BAD000000000000);
  }

  v16 = *v15;
  v17 = 4 * v3;
  v18 = (&unk_64F0 + v17);
  if (v17 != v17)
  {
    v18 = ((&unk_64F0 + v17) & 0xFFFFFFFFFFFFLL | 0x2BAD000000000000);
  }

  v19 = *v18;
  v20 = (this + (v12 >> 1));
  if (v12 >> 1 != (v12 >> 1))
  {
    v20 = ((this + (v12 >> 1)) & 0xFFFFFFFFFFFFLL | 0x2BAD000000000000);
  }

  if (v12)
  {
    v21 = *(*v20 + AppleH15PlatformErrorHandler::_afxNsDecodeStatus);
  }

  else
  {
    v21 = AppleH15PlatformErrorHandler::_afxNsDecodeStatus;
  }

  return (v21)(v20, v9, v9 / v19, a3);
}

void AppleH15PlatformErrorHandler::_afrNsDisableErrors(AppleH15PlatformErrorHandler *this, int a2)
{
  if (*(this + 63))
  {
    v4 = 0;
    v5 = this + 13968;
    v6 = this + 2952;
    do
    {
      if (a2)
      {
        v7 = *&v5[4 * v4];
      }

      else
      {
        v7 = -1;
      }

      AppleH15PlatformErrorHandler::_writeRegister32(this, v6, v4++, 0x104u, v7);
    }

    while (v4 < *(this + 63));
  }
}

void AppleH15PlatformErrorHandler::_amccNonPlaneDecodeXCTT(uint64_t a1, uint64_t a2, int a3, unsigned int *a4, uint64_t a5, const char **a6)
{
  if (!a3)
  {
    v6 = *(a6 + 2);
    if (v6 == 1)
    {
      v10 = *(a6 + 5) | ((a6[3] & 0x3FF) << 32);
      v11 = *(a6 + 4);
      AppleH15PlatformErrorHandler::_fabricCommands[*(a6 + 3) & 0x3FLL];
      panic("AMCC%u Non-Plane %s %s error TYPE %#x: INTSTS%u 0x%08x ADDR %#llx CMD/SRC/TID/SIZ %#x(%s)/%#x/%#x/%#x @%s:%d", a2, *(a5 + 8), *a6, 0, *(a6 + 7), *a4);
    }

    if (!v6)
    {
      v7 = *(a6 + 3) & 0x3FLL;
      v8 = *(a6 + 9) >> 5;
      v9 = AppleH15PlatformErrorHandler::_fabricCommands[v7];
      if (!v9)
      {
        v9 = "???";
      }

      v17 = *(a6 + 8);
      v15 = *(a6 + 6);
      v16 = *(a6 + 7);
      v13 = *(a6 + 4);
      v14 = *(a6 + 5);
      v12 = *(a6 + 3);
      panic("AMCC%u Non-Plane %s %s error: INTSTS%u 0x%08x ADDR %#llx CMD/SRC/TID/SIZ %#x(%s)/%#x/%#x/%#x INFO 0x%08x/0x%08x/0x%08x/0x%08x/0x%08x/0x%08x @%s:%d", a2, *(a5 + 8), *a6, 0, *a4, (v13 >> 9) & 0xFFFFFC00007FFFFFLL | ((*(a6 + 5) & 0x7FFFF) << 23), v7, v9);
    }
  }

  panic("AMCC%u Non-Plane %s %s error: INTSTS%u 0x%08x @%s:%d", a2, "*UNKNOWN*", *a6, a3, *a4, "AppleH15PlatformErrorHandler.cpp", 1826);
}

void AppleH15PlatformErrorHandler::_amccPlaneDecodeTagPipeParity(uint64_t a1, unsigned int a2, int a3, int a4, _DWORD *a5, uint64_t a6)
{
  v11 = a1 + 8232;
  if (((a1 ^ (a1 + 8232)) & 0xFFC0000000000000) != 0)
  {
    v11 = v11 & 0xFFFFFFFFFFFFLL | 0xC8A2000000000000;
  }

  Register32 = AppleH15PlatformErrorHandler::_readRegister32(a1, v11, a2, (a3 << 18) | 0x740u);
  v13 = AppleH15PlatformErrorHandler::_readRegister32(Register32, v11, a2, (a3 << 18) | 0x744u);
  v14 = AppleH15PlatformErrorHandler::_readRegister32(v13, v11, a2, (a3 << 18) | 0x748u);
  panic("AMCC%u PLANE%u %s error: INTSTS%u 0x%08x TAG_PAR_ERR_LOG0/1/2=%#x/%#x/%#x @%s:%d", a2, a3, *(a6 + 8), a4, *a5, Register32, v13, v14, "AppleH15PlatformErrorHandler.cpp", 2489);
}

void AppleH15PlatformErrorHandler::_amccPlaneDecodeDataPipeSBE(uint64_t a1, unsigned int a2, int a3, int a4, _DWORD *a5, uint64_t a6)
{
  v12 = a1 + 8232;
  if (((a1 ^ (a1 + 8232)) & 0xFFC0000000000000) != 0)
  {
    v12 = v12 & 0xFFFFFFFFFFFFLL | 0xC8A2000000000000;
  }

  Register32 = AppleH15PlatformErrorHandler::_readRegister32(a1, v12, a2, (a3 << 18) | 0xC14u);
  v14 = AppleH15PlatformErrorHandler::_readRegister32(Register32, v12, a2, (a3 << 18) | 0xC1Cu);
  v17 = *a5;
  v16 = vandq_s8(vshlq_u32(vdupq_n_s32(v14), xmmword_6480), xmmword_6490);
  v15 = mcc_log_memory_error();
  if (*(a1 + 152) && (*(a1 + 142) & 1) != 0)
  {
    panic("AMCC%u PLANE%u %s error: INTSTS%u 0x%08x ECCONEBITERRLOG(Bank/Way/Index/BitOffCL/BitOffHCL) %#x(%#x/%#x/%#x/%#x/%#x) ERRBITCNT %#x @%s:%d", a2, a3, *(a6 + 8), a4, *a5, v14, v16.i32[0], v16.i32[1], v16.i32[2], v16.i32[3], v14 & 0x3FF, Register32, "AppleH15PlatformErrorHandler.cpp", 2254);
  }

  AppleH15PlatformErrorHandler::_writeRegister32(v15, v12, a2, (a3 << 18) + 8 * a4 + 135172, *(a6 + 4));
}

void AppleH15PlatformErrorHandler::_amccPlaneDecodeDataPipeMBE(uint64_t a1, unsigned int a2, int a3, int a4, _DWORD *a5, uint64_t a6)
{
  v11 = a1 + 8232;
  if (((a1 ^ (a1 + 8232)) & 0xFFC0000000000000) != 0)
  {
    v11 = v11 & 0xFFFFFFFFFFFFLL | 0xC8A2000000000000;
  }

  Register32 = AppleH15PlatformErrorHandler::_readRegister32(a1, v11, a2, (a3 << 18) | 0xC20u);
  panic("AMCC%u PLANE%u %s error: INTSTS%u 0x%08x ECCMULTIBITSERRLOG(Bank/Way/Entry) %#x(%#x/%#x/%#x) @%s:%d", a2, a3, *(a6 + 8), a4, *a5, Register32, 0, 0, Register32, "AppleH15PlatformErrorHandler.cpp", 2217);
}

void AppleH15PlatformErrorHandler::_amccPlaneDecodeDirectoryParity(uint64_t a1, unsigned int a2, int a3, int a4, _DWORD *a5, uint64_t a6)
{
  v10 = a1 + 8232;
  if (((a1 ^ (a1 + 8232)) & 0xFFC0000000000000) != 0)
  {
    v10 = v10 & 0xFFFFFFFFFFFFLL | 0xC8A2000000000000;
  }

  Register32 = AppleH15PlatformErrorHandler::_readRegister32(a1, v10, a2, (a3 << 18) | 0xA00u);
  v12 = AppleH15PlatformErrorHandler::_readRegister32(Register32, v10, a2, (a3 << 18) | 0xA04u);
  v13 = AppleH15PlatformErrorHandler::_readRegister32(v12, v10, a2, (a3 << 18) | 0xA08u);
  v14 = AppleH15PlatformErrorHandler::_readRegister32(v13, v10, a2, (a3 << 18) | 0xA0Cu);
  v15 = AppleH15PlatformErrorHandler::_readRegister32(v14, v10, a2, (a3 << 18) | 0xA14u);
  v16 = AppleH15PlatformErrorHandler::_readRegister32(v15, v10, a2, (a3 << 18) | 0xA18u) & 0x3FF | v15;
  v17 = AppleH15PlatformErrorHandler::_fabricCommands[v14 & 0x3F];
  if (!v17)
  {
    v17 = "???";
  }

  panic("AMCC%u PLANE%u %s error: INTSTS%u 0x%08x FLAG/STATE %#x/%#x INFO %#x/%#x/%#x ADDR %#llx CMD/AID/TID %#x(%s)/%#x/%#x WAY/TAG/PARITY %#x/%#x/%#x @%s:%d", a2, a3, *(a6 + 8), a4, *a5, Register32, (v12 >> 5), v12, v13, v14, v16, v14 & 0x3F, v17, v14 & 0xFFFFF, (v14 >> 6) & 0x7FF, v12 & 0x1F, v13, v13 >> 31, "AppleH15PlatformErrorHandler.cpp", 2355);
}

void AppleH15PlatformErrorHandler::_amccPlaneDecodeDirectoryMultiHit(uint64_t a1, unsigned int a2, int a3, int a4, _DWORD *a5, uint64_t a6)
{
  v10 = a1 + 8232;
  if (((a1 ^ (a1 + 8232)) & 0xFFC0000000000000) != 0)
  {
    v10 = v10 & 0xFFFFFFFFFFFFLL | 0xC8A2000000000000;
  }

  Register32 = AppleH15PlatformErrorHandler::_readRegister32(a1, v10, a2, (a3 << 18) | 0xA1Cu);
  v12 = AppleH15PlatformErrorHandler::_readRegister32(Register32, v10, a2, (a3 << 18) | 0xA20u);
  v13 = AppleH15PlatformErrorHandler::_readRegister32(v12, v10, a2, (a3 << 18) | 0xA24u);
  v14 = AppleH15PlatformErrorHandler::_readRegister32(v13, v10, a2, (a3 << 18) | 0xA28u);
  v15 = AppleH15PlatformErrorHandler::_readRegister32(v14, v10, a2, (a3 << 18) | 0xA30u);
  v16 = v15;
  v17 = AppleH15PlatformErrorHandler::_readRegister32(v15, v10, a2, (a3 << 18) | 0xA34u);
  v18 = AppleH15PlatformErrorHandler::_fabricCommands[v14 & 0x3F];
  if (!v18)
  {
    v18 = "???";
  }

  panic("AMCC%u PLANE%u %s error: INTSTS%u 0x%08x FLAG/STATE %#x/%#x INFO %#x/%#x/%#x ADDR %#llx CMD/AID/TID %#x(%s)/%#x/%#x WAYS %#x @%s:%d", a2, a3, *(a6 + 8), a4, *a5, Register32, v12, v12, v13, v14, v17 & 0x3FF | v16, v14 & 0x3F, v18, v14 & 0xFFFFF, (v14 >> 6) & 0x7FF, v13, "AppleH15PlatformErrorHandler.cpp", 2323);
}

void AppleH15PlatformErrorHandler::_amccPlaneDecodeTagPipeAFError(uint64_t a1, unsigned int a2, int a3, unsigned int a4, _DWORD *a5, uint64_t a6)
{
  v10 = a1 + 8232;
  if (((a1 ^ (a1 + 8232)) & 0xFFC0000000000000) != 0)
  {
    v10 = v10 & 0xFFFFFFFFFFFFLL | 0xC8A2000000000000;
  }

  Register32 = AppleH15PlatformErrorHandler::_readRegister32(a1, v10, a2, (a3 << 18) | 0x74Cu);
  v12 = AppleH15PlatformErrorHandler::_readRegister32(Register32, v10, a2, (a3 << 18) | 0x750u);
  v13 = AppleH15PlatformErrorHandler::_readRegister32(v12, v10, a2, (a3 << 18) | 0x754u);
  v22 = AppleH15PlatformErrorHandler::_readRegister32(v13, v10, a2, (a3 << 18) | 0x758u);
  v14 = AppleH15PlatformErrorHandler::_readRegister32(v22, v10, a2, (a3 << 18) | 0x75Cu);
  v15 = AppleH15PlatformErrorHandler::_readRegister32(v14, v10, a2, (a3 << 18) | 0x760u);
  v16 = AppleH15PlatformErrorHandler::_readRegister32(v15, v10, a2, (a3 << 18) | 0x774u);
  v17 = AppleH15PlatformErrorHandler::_fabricCommands[(v12 >> 11) & 0x3F];
  if (!v17)
  {
    v17 = "???";
  }

  v18 = snprintf(AppleH15PlatformErrorHandler::_amccPlaneDecodeTagPipeAFError(unsigned int,unsigned int,unsigned int,unsigned int &,AppleH15PlatformErrorHandler::AMCCPlaneDecoder_t const*)::msg, 0x100uLL, "AMCC%u PLANE%d %s error: INTSTS%u 0x%08x AFERRLOG0/1/2/3/4/5 %#x/%#x/%#x/%#x/%#x/%#x ADDR %#llx CMD/SIZE %#x(%s)/%#x AID/TID/DSID %#x/%#x/%#x", a2, a3, *(a6 + 8), a4, *a5, Register32, v12, v13, v22, v14, v15, Register32 | ((v12 & 0x3FF) << 32), (v12 >> 11) & 0x3F, v17, (v12 >> 17) & 0x7F, v13 & 0x3FFFF, (v13 >> 20) & 0x7FF, HIBYTE(v16));
  v19 = 4 * a4;
  v20 = (&AppleH15PlatformErrorHandler::_amccPlaneDecodeTagPipeAFError(unsigned int,unsigned int,unsigned int,unsigned int &,AppleH15PlatformErrorHandler::AMCCPlaneDecoder_t const*)::dap_whitelist + (4 * a4));
  if (v19 != 4 * a4)
  {
    v20 = ((&AppleH15PlatformErrorHandler::_amccPlaneDecodeTagPipeAFError(unsigned int,unsigned int,unsigned int,unsigned int &,AppleH15PlatformErrorHandler::AMCCPlaneDecoder_t const*)::dap_whitelist + v19) & 0xFFFFFFFFFFFFLL | 0x2BAD000000000000);
  }

  v21 = *v20 & *a5;
  if (!v21 || (v13 & 0x3FFFE) != 0x10630)
  {
    AppleH15PlatformErrorHandler::_amccPlaneDecodeTagPipeAFError();
  }

  AppleH15PlatformErrorHandler::_writeRegister32(v18, v10, a2, (a3 << 18) + 8 * a4 + 135172, v21);
}

void AppleH15PlatformErrorHandler::_amccPlaneDecodeDirectoryInconsistent(uint64_t a1, unsigned int a2, int a3, int a4, _DWORD *a5, uint64_t a6)
{
  v10 = a1 + 8232;
  if (((a1 ^ (a1 + 8232)) & 0xFFC0000000000000) != 0)
  {
    v10 = v10 & 0xFFFFFFFFFFFFLL | 0xC8A2000000000000;
  }

  Register32 = AppleH15PlatformErrorHandler::_readRegister32(a1, v10, a2, (a3 << 18) | 0xA38u);
  v12 = AppleH15PlatformErrorHandler::_readRegister32(Register32, v10, a2, (a3 << 18) | 0xA3Cu);
  v13 = AppleH15PlatformErrorHandler::_readRegister32(v12, v10, a2, (a3 << 18) | 0xA40u);
  v14 = AppleH15PlatformErrorHandler::_readRegister32(v13, v10, a2, (a3 << 18) | 0xA44u);
  v15 = AppleH15PlatformErrorHandler::_readRegister32(v14, v10, a2, (a3 << 18) | 0xA48u);
  v16 = v15;
  v17 = AppleH15PlatformErrorHandler::_readRegister32(v15, v10, a2, (a3 << 18) | 0xA4Cu);
  v18 = AppleH15PlatformErrorHandler::_fabricCommands[v13 & 0x3F];
  if (!v18)
  {
    v18 = "???";
  }

  panic("AMCC%u PLANE%u %s error: INTSTS%u 0x%08x FLAG/STATE %#x/%#x INFO %#x/%#x/%#x ADDR %#llx CMD/AID/TID %#x(%s)/%#x/%#x WAY/SIZE %#x/%#x @%s:%d", a2, a3, *(a6 + 8), a4, *a5, Register32, (v12 >> 5), v12, v13, v14, v17 & 0x3FF | v16, v13 & 0x3F, v18, (v13 >> 7) & 0xFFFFF, (v13 >> 6) & 0x7FF, v12 & 0x1F, v14 & 0x7F, "AppleH15PlatformErrorHandler.cpp", 2292);
}

uint64_t AppleH15PlatformErrorHandler::_amccPlaneDsidAgeOut(uint64_t a1, unsigned int a2, int a3, int a4)
{
  v6 = a3 << 18;
  v7 = (a3 << 18) + 8 * a4;
  v8 = a1 + 8232;
  if (((a1 ^ (a1 + 8232)) & 0xFFC0000000000000) != 0)
  {
    v8 = v8 & 0xFFFFFFFFFFFFLL | 0xC8A2000000000000;
  }

  v9 = 10;
  while (1)
  {
    result = AppleH15PlatformErrorHandler::_readRegister32(a1, v8, a2, v7 + 135172);
    if ((result & 0x4000000) == 0)
    {
      break;
    }

    v11 = result;
    AppleH15PlatformErrorHandler::_writeRegister32(result, v8, a2, v7 + 135172, 0x4000000);
    if (!--v9)
    {
      Register32 = AppleH15PlatformErrorHandler::_readRegister32(a1, v8, a2, v6 | 0x74Cu);
      v24 = AppleH15PlatformErrorHandler::_readRegister32(Register32, v8, a2, v6 | 0x750u);
      v23 = AppleH15PlatformErrorHandler::_readRegister32(v24, v8, a2, v6 | 0x754u);
      v22 = AppleH15PlatformErrorHandler::_readRegister32(v23, v8, a2, v6 | 0x758u);
      v21 = AppleH15PlatformErrorHandler::_readRegister32(v22, v8, a2, v6 | 0x75Cu);
      v20 = AppleH15PlatformErrorHandler::_readRegister32(v21, v8, a2, v6 | 0x760u);
      v19 = AppleH15PlatformErrorHandler::_readRegister32(v20, v8, a2, v6 | 0x774u);
      v12 = AppleH15PlatformErrorHandler::_readRegister32(v19, v8, a2, v6 | 0x15000u);
      v13 = v6 + 86016;
      v14 = AppleH15PlatformErrorHandler::_readRegister32(v12, v8, a2, v6 + 86020);
      v15 = AppleH15PlatformErrorHandler::_readRegister32(v14, v8, a2, v13 + 8);
      v16 = AppleH15PlatformErrorHandler::_readRegister32(v15, v8, a2, v13 + 12);
      v17 = AppleH15PlatformErrorHandler::_readRegister32(v16, v8, a2, v13 + 16);
      v18 = AppleH15PlatformErrorHandler::_readRegister32(v17, v8, a2, v13 + 20);
      panic("AMCC%u PLANE%u error: Too many vDSID Ageout interrupts. INTSTS 0x%08x AFERRLOG0/1/2/3/4/5 %#x/%#x/%#x/%#x/%#x/%#x ErrDsid:%#x TimeoutSts0/1/2/3/4/5  %#x/%#x/%#x/%#x/%#x/%#x @%s:%d", a2, a3, v11, Register32, v24, v23, v22, v21, v20, v19, v12, v14, v15, v16, v17, v18, "AppleH15PlatformErrorHandler.cpp", 2406);
    }
  }

  return result;
}

void AppleH15PlatformErrorHandler::_amccPlaneDecodeDirectoryUnexpectedVictim(uint64_t a1, unsigned int a2, int a3, int a4, _DWORD *a5, uint64_t a6)
{
  v11 = a1 + 8232;
  if (((a1 ^ (a1 + 8232)) & 0xFFC0000000000000) != 0)
  {
    v11 = v11 & 0xFFFFFFFFFFFFLL | 0xC8A2000000000000;
  }

  Register32 = AppleH15PlatformErrorHandler::_readRegister32(a1, v11, a2, (a3 << 18) | 0xA50u);
  v13 = AppleH15PlatformErrorHandler::_readRegister32(Register32, v11, a2, (a3 << 18) | 0xA54u);
  panic("AMCC%u PLANE%u %s error: INTSTS%u 0x%08x FLAG %#x INFO %#x @%s:%d", a2, a3, *(a6 + 8), a4, *a5, Register32, v13, "AppleH15PlatformErrorHandler.cpp", 2368);
}

void AppleH15PlatformErrorHandler::_amccGenerateEnableMaskforInputTable(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 20);
  if (v2)
  {
    v3 = 0;
    v4 = 0;
    v5 = (*(a2 + 24) + 24);
    do
    {
      v6 = *(v5 - 1);
      v7 = v6 == 0;
      v8 = *v5 & 1 | v6;
      if (*v5)
      {
        v9 = v8 == 0;
      }

      else
      {
        v9 = 1;
      }

      v10 = v9;
      v11 = *(v5 - 5);
      v12 = (v7 & v10) == 0;
      if ((v7 & v10) != 0)
      {
        v13 = 0;
      }

      else
      {
        v13 = *(v5 - 5);
      }

      v4 |= v13;
      if (v12)
      {
        v14 = 0;
      }

      else
      {
        v14 = *(v5 - 5);
      }

      v3 |= v14;
      v5 += 4;
      --v2;
    }

    while (v2);
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  *a2 = v4;
  *(a2 + 4) = v3;
}

void AppleH15PlatformErrorHandler::_amccEnableErrorsForInputTable(uint64_t a1, _DWORD *a2, unsigned int a3, int a4)
{
  v7 = a2[2];
  v8 = a2[3];
  v9 = a1 + 8232;
  if (((a1 ^ (a1 + 8232)) & 0xFFC0000000000000) != 0)
  {
    v9 = v9 & 0xFFFFFFFFFFFFLL | 0xC8A2000000000000;
  }

  Register32 = AppleH15PlatformErrorHandler::_readRegister32(a1, v9, a3, v7 + 1376256);
  v11 = Register32 & ~*a2;
  if (a4)
  {
    v11 = *a2 | Register32;
  }

  AppleH15PlatformErrorHandler::_writeRegister32(Register32, v9, a3, v7 + 1376256, v11 & ~a2[1]);

  AppleH15PlatformErrorHandler::_writeRegister32(v12, v9, a3, v8 + 1376256, 0);
}

uint64_t AppleH15PlatformErrorHandler::_amccDumpRegsForInputTable(uint64_t a1, _DWORD *a2, unsigned int a3, char *a4, uint64_t a5)
{
  v9 = a1 + 8232;
  if (((a1 ^ (a1 + 8232)) & 0xFFC0000000000000) != 0)
  {
    v9 = v9 & 0xFFFFFFFFFFFFLL | 0xC8A2000000000000;
  }

  Register32 = AppleH15PlatformErrorHandler::_readRegister32(a1, v9, a3, a2[2] + 1376256);
  v11 = Register32;
  v12 = AppleH15PlatformErrorHandler::_readRegister32(Register32, v9, a3, a2[4] + 1376256);
  return snprintf(a4, a5 - a4, "intsts: %x\tinten: %x\tblock enable: %x\n", v12, v11, *a2);
}

void AppleH15PlatformErrorHandler::_amccDumpRegs(uint64_t this, unsigned int a2)
{
  bzero(__str, 0x7D0uLL);
  v4 = snprintf(__str, 0x7CFuLL, "Unhandled AMCC%u Interrupt\n", a2);
  v5 = &__str[v4 + snprintf(&__str[v4], 1999 - v4, "NON PLANE REGISTERS\n")];
  v6 = &AppleH15PlatformErrorHandler::_amccNonPlaneDecoders;
  v7 = 4;
  do
  {
    AppleH15PlatformErrorHandler::_amccDumpRegsForInputTable(this, v6, a2, v5, &v18);
    v6 += 8;
    --v7;
  }

  while (v7);
  AppleH15PlatformErrorHandler::_amccDumpRegsForInputTable(this, AppleH15PlatformErrorHandler::_amccNonPlaneDecoders_EFL, a2, v5, &v18);
  AppleH15PlatformErrorHandler::_amccDumpRegsForInputTable(this, dword_181C0, a2, v5, &v18);
  v8 = snprintf(v5, &v18 - v5, "PLANE REGISTERS\n");
  v9 = 0;
  v10 = this + 8232;
  if (((this ^ (this + 8232)) & 0xFFC0000000000000) != 0)
  {
    v10 = v10 & 0xFFFFFFFFFFFFLL | 0xC8A2000000000000;
  }

  v11 = 1;
  v12 = &v5[v8];
  do
  {
    v13 = 0;
    v16 = v11;
    do
    {
      Register32 = AppleH15PlatformErrorHandler::_readRegister32(v8, v10, a2, v9 | 0x21000u);
      v15 = AppleH15PlatformErrorHandler::_readRegister32(Register32, v10, a2, v9 | 0x21004u);
      v8 = snprintf(v12, &v18 - v12, "intsts: %x\tinten: %x\tblock enable: %x\n", v15, Register32, *(&AppleH15PlatformErrorHandler::_amccPlaneDecoders + v13));
      v12 += v8;
      v13 += 24;
      v9 += 8;
    }

    while (v13 != 72);
    v11 = 0;
    v9 = 0x40000;
  }

  while ((v16 & 1) != 0);
  kprintf("%s::%s: %s\n", "AppleH15PlatformErrorHandler", "_amccDumpRegs", __str);
}

void AppleH15PlatformErrorHandler::_amccDecodeInterrupts(uint64_t this, int a2, void *a3)
{
  v29 = 0;
  v3 = (a2 - *(this + 544));
  if (v3 >= *(this + 548))
  {
    AppleH15PlatformErrorHandler::_amccDecodeInterrupts();
  }

  if (v3 >= *(this + 540))
  {
    AppleH15PlatformErrorHandler::_amccDecodeInterrupts();
  }

  v5 = &AppleH15PlatformErrorHandler::_amccNonPlaneDecoders;
  v6 = 4;
  do
  {
    AppleH15PlatformErrorHandler::_amccDecodeInterruptsForInputTable(this, v5, v3, &v29);
    v5 += 8;
    --v6;
  }

  while (v6);
  AppleH15PlatformErrorHandler::_amccDecodeInterruptsForInputTable(this, AppleH15PlatformErrorHandler::_amccNonPlaneDecoders_EFL, v3, &v29);
  Register32 = AppleH15PlatformErrorHandler::_amccDecodeInterruptsForInputTable(this, dword_181C0, v3, &v29);
  v8 = this + 8232;
  if (((this ^ (this + 8232)) & 0xFFC0000000000000) != 0)
  {
    v8 = v8 & 0xFFFFFFFFFFFFLL | 0xC8A2000000000000;
  }

  v9 = 1;
  v10 = v29;
  do
  {
    v11 = 0;
    v27 = v9;
    do
    {
      Register32 = AppleH15PlatformErrorHandler::_readRegister32(Register32, v8, v3, (v6 << 18) + 8 * v11 + 135172);
      v28 = Register32;
      v12 = &AppleH15PlatformErrorHandler::_amccPlaneDecoders + 24 * v11;
      v13 = *v12;
      if ((*v12 & Register32) != 0)
      {
        v14 = *(v12 + 2);
        if (v14)
        {
          v15 = v8;
          v16 = 0;
          v17 = 0;
          v18 = *(v12 + 2);
          do
          {
            v19 = *(v18 + 4);
            if ((*v12 & v19) != 0 && (v28 & v19) != 0)
            {
              v20 = *(v18 + 16);
              v21 = *(v18 + 24);
              v22 = !v21 || (*(v18 + 24) & 1 | v20) == 0;
              v23 = !v22;
              if (v20 || v23)
              {
                v25 = (this + (v21 >> 1));
                if (v21 >> 1 != (v21 >> 1))
                {
                  v25 = ((this + (v21 >> 1)) & 0xFFFFFFFFFFFFLL | 0x2BAD000000000000);
                }

                if (v21)
                {
                  v20 = *(*v25 + v20);
                }

                (v20)(v25, v3, v6, v11, &v28, v18);
                v17 |= *(v18 + 4);
                v14 = *(v12 + 2);
                v10 = 1;
              }
            }

            ++v16;
            v18 += 32;
          }

          while (v16 < v14);
          v13 = *v12;
          Register32 = v28;
          v26 = ~v17;
          v8 = v15;
        }

        else
        {
          v26 = -1;
        }

        if ((v13 & v26 & Register32) != 0)
        {
          AppleH15PlatformErrorHandler::_amccDecodeInterrupts();
        }
      }

      ++v11;
    }

    while (v11 != 3);
    v9 = 0;
    v6 = 1;
  }

  while ((v27 & 1) != 0);
  if ((v10 & 1) == 0)
  {
    AppleH15PlatformErrorHandler::_amccDumpRegs(this, v3);
  }
}

uint64_t AppleH15PlatformErrorHandler::_amccDecodeInterruptsForInputTable(uint64_t a1, int *a2, uint64_t a3, _BYTE *a4)
{
  v8 = a2[4];
  v9 = a1 + 8232;
  if (((a1 ^ (a1 + 8232)) & 0xFFC0000000000000) != 0)
  {
    v9 = v9 & 0xFFFFFFFFFFFFLL | 0xC8A2000000000000;
  }

  result = AppleH15PlatformErrorHandler::_readRegister32(a1, v9, a3, v8 + 1376256);
  v23 = result;
  v11 = *a2;
  if ((*a2 & result) != 0)
  {
    v12 = a2[5];
    if (v12)
    {
      v13 = 0;
      v14 = 0;
      v15 = *(a2 + 3);
      do
      {
        if ((v15[1] & v23) != 0)
        {
          v16 = *(v15 + 2);
          v17 = *(v15 + 3);
          v18 = !v17 || (*(v15 + 3) & 1 | v16) == 0;
          v19 = !v18;
          if (v16 || v19)
          {
            v21 = (a1 + (v17 >> 1));
            if (v17 >> 1 != (v17 >> 1))
            {
              v21 = ((a1 + (v17 >> 1)) & 0xFFFFFFFFFFFFLL | 0x2BAD000000000000);
            }

            if (v17)
            {
              v16 = *(*v21 + v16);
            }

            (v16)(v21, a3, *v15, &v23, v15);
            v14 |= v15[1];
            *a4 = 1;
            v12 = a2[5];
          }
        }

        ++v13;
        v15 += 8;
      }

      while (v13 < v12);
      v11 = *a2;
      result = v23;
      v22 = ~v14;
    }

    else
    {
      v22 = -1;
    }

    if ((v11 & v22 & result) != 0)
    {
      AppleH15PlatformErrorHandler::_amccDecodeInterruptsForInputTable();
    }
  }

  return result;
}

void AppleH15PlatformErrorHandler::_dcsDecodeMCUError(uint64_t a1, unsigned int a2, int a3, int a4, _DWORD *a5, uint64_t a6)
{
  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  *__str = 0u;
  v31 = 0u;
  v11 = snprintf(__str, 0x200uLL, "AMCC%u DCS GROUP %u CHANNEL %u %s error: INTSTS 0x%08x", a2, a3, a4, *(a6 + 32), *a5);
  v12 = *(a6 + 24);
  v13 = strcmp(v12, "mcu");
  if (v13)
  {
    v15 = strcmp(v12, "evt");
    if (v15 && (v15 = strcmp(v12, "spll_evt"), v15))
    {
      v23 = strcmp(*(a6 + 32), "M3_AIC_IRQ_EN_FLD");
      if (!v23)
      {
        v24 = a1 + 12872;
        if (((a1 ^ (a1 + 12872)) & 0xFFC0000000000000) != 0)
        {
          v24 = v24 & 0xFFFFFFFFFFFFLL | 0xC8A2000000000000;
        }

        v25 = &dword_181E8;
        v26 = 11;
        do
        {
          v27 = *(v25 - 1);
          v28 = *v25;
          v25 += 4;
          Register32 = AppleH15PlatformErrorHandler::_readRegister32(v23, v24, 1u, v28);
          v23 = snprintf(&__str[v11], 512 - v11, " %s:0x%x", v27, Register32);
          v11 += v23;
          --v26;
        }

        while (v26);
      }
    }

    else
    {
      v16 = (*(a6 + 8) + (a3 << 21));
      v17 = a1 + 8232;
      if (((a1 ^ (a1 + 8232)) & 0xFFC0000000000000) != 0)
      {
        v17 = v17 & 0xFFFFFFFFFFFFLL | 0xC8A2000000000000;
      }

      v18 = AppleH15PlatformErrorHandler::_readRegister32(v15, v17, a2, *(a6 + 16) + v16 + 4);
      AppleH15PlatformErrorHandler::_readRegister32(v18, v17, a2, v16 + *(a6 + 16) + 8);
      v19 = 40 * a2 + 24;
      v20 = (v17 + v19);
      if (v19 != v19)
      {
        v20 = ((v17 + v19) & 0xFFFFFFFFFFFFLL | 0x2BAD000000000000);
      }

      v21 = *v20 + v16 + *(a6 + 16);
      snprintf(&__str[v11], 512 - v11, " DATA0 @ 0x%012lx 0x%08x, DATA1 @ 0x%012lx 0x%08x");
    }
  }

  else if ((*a5 & 0x400000) != 0)
  {
    v22 = a1 + 8232;
    if (((a1 ^ (a1 + 8232)) & 0xFFC0000000000000) != 0)
    {
      v22 = v22 & 0xFFFFFFFFFFFFLL | 0xC8A2000000000000;
    }

    AppleH15PlatformErrorHandler::_readRegister32(v13, v22, a2, *(a6 + 8) + (a3 << 21) + 2032);
    snprintf(&__str[v11], 512 - v11, " UFDI_ERR_STS: 0x%08x");
  }

  else if ((*a5 & 0x240000) != 0)
  {
    v14 = a1 + 8232;
    if (((a1 ^ (a1 + 8232)) & 0xFFC0000000000000) != 0)
    {
      v14 = v14 & 0xFFFFFFFFFFFFLL | 0xC8A2000000000000;
    }

    AppleH15PlatformErrorHandler::_readRegister32(v13, v14, a2, *(a6 + 8) + (a3 << 21) + 1052);
    snprintf(&__str[v11], 512 - v11, " CS0Odts: 0x%x CS1Odts: 0x%x");
  }

  panic("%s @%s:%d", __str, "AppleH15PlatformErrorHandler.cpp", 3331);
}

uint64_t AppleH15PlatformErrorHandler::_dcsDecodeInterrupts(uint64_t this, int a2, void *a3)
{
  memset(v33, 0, 60);
  v3 = a2 - *(this + 712);
  if (v3 >= *(this + 716))
  {
    AppleH15PlatformErrorHandler::_dcsDecodeInterrupts();
  }

  v4 = this;
  v5 = *(this + 540);
  v6 = 4 * v5;
  if (v3 < 4 * v5)
  {
    v6 = 0;
  }

  v7 = (v3 - v6) >> 2;
  if (v7 >= v5)
  {
    AppleH15PlatformErrorHandler::_dcsDecodeInterrupts();
  }

  v8 = 0;
  v9 = 0;
  v10 = v3 & 3;
  v11 = v10 << 21;
  v12 = this + 8232;
  if (((this ^ (this + 8232)) & 0xFFC0000000000000) != 0)
  {
    v12 = v12 & 0xFFFFFFFFFFFFLL | 0xC8A2000000000000;
  }

  v31 = v12;
  do
  {
    v13 = &AppleH15PlatformErrorHandler::_dcsDecoders[6 * v8];
    if (v13[2])
    {
      this = AppleH15PlatformErrorHandler::_readRegister32(this, v12, v7, *(*(v13 + 2) + 8) + v11 + *(*(v13 + 2) + 16));
      *v32 = this;
      v14 = *v13 & this;
      if (v14)
      {
        v15 = v13[2];
        v16 = v33 + v8;
        if (v15)
        {
          v17 = 0;
          v18 = *(v13 + 2);
          do
          {
            if ((*(v18 + 4) & *v32) != 0)
            {
              v19 = *(v18 + 40);
              v20 = *(v18 + 48);
              v21 = !v20 || (*(v18 + 48) & 1 | v19) == 0;
              v22 = !v21;
              if (v19 || v22)
              {
                v24 = (v4 + (v20 >> 1));
                if (v20 >> 1 != (v20 >> 1))
                {
                  v24 = ((v4 + (v20 >> 1)) & 0xFFFFFFFFFFFFLL | 0x2BAD000000000000);
                }

                if (v20)
                {
                  v19 = *(*v24 + v19);
                }

                this = (v19)(v24, v7, v10, 0, v32, v18);
                *v16 |= *(v18 + 4);
                v15 = v13[2];
                v9 = 1;
              }
            }

            ++v17;
            v18 += 56;
          }

          while (v17 < v15);
          v14 = *v32 & *v13;
          v12 = v31;
        }

        if ((v14 & ~*v16) != 0)
        {
          AppleH15PlatformErrorHandler::_dcsDecodeInterrupts();
        }
      }
    }

    ++v8;
  }

  while (v8 != 15);
  if ((v9 & 1) == 0)
  {
    bzero(v32, 0x7D0uLL);
    v26 = 0;
    v27 = 0;
    v28 = 0;
    v29 = &off_184E8;
    while (1)
    {
      if (*(v29 - 2))
      {
        Register32 = AppleH15PlatformErrorHandler::_readRegister32(v25, v12, v7, *(*v29 + 2) + v11 + *(*v29 + 4));
        v25 = snprintf(&v32[v27], 2000 - v27, "%d:%08x/%08x ", v26, Register32, *(v33 + v26));
        v28 += v25;
      }

      if (v26 <= 0xD)
      {
        ++v26;
        v27 = v28;
        v29 += 3;
        if (v28 < 0x7D0)
        {
          continue;
        }
      }

      panic("Unhandled DCS interrupt: AMCC%u DCS Group %u Channel %u: %s @%s:%d", v7, v10, 0, v32, "AppleH15PlatformErrorHandler.cpp", 3277);
    }
  }

  return this;
}

uint64_t AppleH15PlatformErrorHandler::_d2dAfxDecodeInterrupts(uint64_t result, uint64_t a2, int a3, uint64_t a4, _DWORD *a5, uint64_t a6, uint64_t a7, unint64_t a8)
{
  v28 = 0;
  v8 = a5[4];
  v9 = (a3 - a5[3]);
  if (v9 >= v8)
  {
    AppleH15PlatformErrorHandler::_d2dAfxDecodeInterrupts();
  }

  v10 = a5[2];
  if (v9 >= v10)
  {
    AppleH15PlatformErrorHandler::_d2dAfxDecodeInterrupts();
  }

  if (v10 != v8)
  {
    AppleH15PlatformErrorHandler::_d2dAfxDecodeInterrupts();
  }

  if (a8)
  {
    v15 = result;
    v16 = 0;
    v17 = 1;
    do
    {
      v18 = 56 * v16;
      v19 = a7 + v18;
      if (((a7 ^ (a7 + v18)) & 0xFFC0000000000000) != 0)
      {
        v19 = v19 & 0xFFFFFFFFFFFFLL | 0xC8A2000000000000;
      }

      v20 = *(v19 + 8);
      if (v20 == -1)
      {
        result = v28;
      }

      else
      {
        result = AppleH15PlatformErrorHandler::_readRegister32(result, a6, v9, v20);
        v28 = result;
      }

      if ((*(v19 + 12) & result) != 0)
      {
        v21 = *(v19 + 40);
        v22 = *(v19 + 48);
        v23 = !v22 || (*(v19 + 48) & 1 | v21) == 0;
        v24 = !v23;
        if (v21 || v24)
        {
          v26 = v22 >> 1;
          v27 = (v15 + v26);
          if (v26 != v26)
          {
            v27 = ((v15 + v26) & 0xFFFFFFFFFFFFLL | 0x2BAD000000000000);
          }

          if (*(v19 + 48))
          {
            v21 = *(*v27 + v21);
          }

          result = (v21)(v27, a2, v9, &v28, a6, v19);
        }
      }

      v16 = v17++;
    }

    while (v16 < a8);
  }

  return result;
}

void AppleH15PlatformErrorHandler::_d2dAfxErrorNoData(uint64_t a1, uint64_t a2, unsigned int a3, _DWORD *a4, uint64_t a5, uint64_t a6)
{
  if (a3 < 4)
  {
    v6 = "right";
    if ((a3 & 1) == 0)
    {
      v6 = "left";
    }

    panic("Die %u %s D2D %s %s error: 0x%08x @%s:%d", a3 >> 1, v6, *(a6 + 24), *(a6 + 32), *a4, "AppleH15PlatformErrorHandler.cpp", 3817);
  }

  panic("%s::%s: VERIFY failed @%s:%d", "AppleH15PlatformErrorHandler", "_d2dAfxErrorNoData", "AppleH15PlatformErrorHandler.cpp", 3814);
}

void AppleH15PlatformErrorHandler::_d2dAfxErrorWithData(uint64_t a1, uint64_t a2, unsigned int a3, _DWORD *a4, uint64_t a5, uint64_t a6)
{
  if (a3 < 4)
  {
    v8 = a3;
    v9 = a3 >> 1;
    Register32 = AppleH15PlatformErrorHandler::_readRegister32(a1, a5, a3, *(a6 + 16));
    v11 = "right";
    if ((v8 & 1) == 0)
    {
      v11 = "left";
    }

    panic("Die %u %s D2D %s %s error: 0x%08x data 0x%08x @%s:%d", v9, v11, *(a6 + 24), *(a6 + 32), *a4, Register32, "AppleH15PlatformErrorHandler.cpp", 3835);
  }

  panic("%s::%s: VERIFY failed @%s:%d", "AppleH15PlatformErrorHandler", "_d2dAfxErrorWithData", "AppleH15PlatformErrorHandler.cpp", 3830);
}

void AppleH15PlatformErrorHandler::_ioaPanic(uint64_t a1, unsigned int a2, _DWORD *a3, uint64_t a4)
{
  v7 = *(a4 + 4);
  v8 = a1 + 12232;
  if (((a1 ^ (a1 + 12232)) & 0xFFC0000000000000) != 0)
  {
    v8 = v8 & 0xFFFFFFFFFFFFLL | 0xC8A2000000000000;
  }

  Register32 = AppleH15PlatformErrorHandler::_readRegister32(a1, v8, a2, v7 + 4);
  v10 = Register32;
  v11 = AppleH15PlatformErrorHandler::_readRegister32(Register32, v8, a2, v7 + 8);
  v12 = v11;
  v13 = AppleH15PlatformErrorHandler::_readRegister32(v11, v8, a2, v7 + 12);
  v14 = v13;
  v15 = AppleH15PlatformErrorHandler::_readRegister32(v13, v8, a2, v7 + 16);
  v16 = v15;
  v17 = AppleH15PlatformErrorHandler::_readRegister32(v15, v8, a2, v7 + 20);
  v18 = AppleH15PlatformErrorHandler::_fabricCommands[v10 & 0x3F];
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v19 = v12 | (((v14 >> 20) & 0x3FF) << 32);
  v31 = 0u;
  v32 = 0u;
  v20 = (v17 >> 25) & 3;
  v21 = v17 & 0x1FFFFFF;
  if (!v18)
  {
    v18 = "???";
  }

  v29 = 0uLL;
  v30 = 0uLL;
  v27 = 0uLL;
  v28 = 0uLL;
  *__str = 0uLL;
  v26 = 0uLL;
  v22 = snprintf(__str, 0x100uLL, "IOA%u Die %d %s Error: intsts0 0x%08x ADDR/SIZE 0x%016llx/%#x CMD/AFID/TID/STAT %#x(%s)/%#x/%#x/%#x VC/SubCH %#x/%#x USR/EXT/TZ/CRH %#x/%#x/%#x/%#x", a2, (v14 >> 11) & 3, *(a4 + 8), *a3, v12 | (((v14 >> 20) & 0x3FF) << 32), v16 & 0x7F, v10 & 0x3F, v18, (v10 >> 9) & 0x3FFFF, v14 & 0x7FF, (v10 >> 6) & 7, (v14 >> 13) & 0xF, (v14 >> 17) & 7, v16 >> 12, v21, (v16 >> 7) & 0x1F, v20);
  v23 = *a4 & *a3;
  if ((!v23 || (v10 & 0x7FFFC00) != 0x20C6000) && (!v23 || (v19 & 0x3FFFFFFC000) != 0x27F000000 || (*a4 & 0x2000) == 0))
  {
    panic("%s @%s:%d", __str, "AppleH15PlatformErrorHandler.cpp", 4609);
  }

  AppleH15PlatformErrorHandler::_writeRegister32(v22, v8, a2, 0xA0Cu, v23);
  AppleH15PlatformErrorHandler::_writeRegister32(v24, v8, a2, 0xA6Cu, v23);
  *a3 &= ~*a4;
}

uint64_t AppleH15PlatformErrorHandler::_ioaDecodeInterrupts(uint64_t this, int a2, void *a3)
{
  v3 = a2 - *(this + 736);
  if (v3 >= *(this + 740))
  {
    AppleH15PlatformErrorHandler::_ioaDecodeInterrupts();
  }

  if (v3 >= *(this + 732))
  {
    AppleH15PlatformErrorHandler::_ioaDecodeInterrupts();
  }

  v5 = this + 12232;
  if (((this ^ (this + 12232)) & 0xFFC0000000000000) != 0)
  {
    v5 = v5 & 0xFFFFFFFFFFFFLL | 0xC8A2000000000000;
  }

  result = AppleH15PlatformErrorHandler::_readRegister32(this, v5, v3, 0xA0Cu);
  v10 = result;
  if (result)
  {
    v7 = 0;
    v8 = &AppleH15PlatformErrorHandler::_ioaDecoder;
    do
    {
      if ((*v8 & result) != 0)
      {
        AppleH15PlatformErrorHandler::_ioaPanic(this, v3, &v10, v8);
        result = v10;
      }

      if (!result)
      {
        break;
      }

      v8 += 8;
    }

    while (v7++ < 0x11);
    if (result)
    {
      panic("Unhandled IOA interrupt: IOA%u status 0x%08x @%s:%d", v3, result, "AppleH15PlatformErrorHandler.cpp", 4553);
    }
  }

  return result;
}

void AppleH15PlatformErrorHandler::_sepDecodeInterrupts(AppleH15PlatformErrorHandler *this, int a2, void *a3)
{
  v3 = a2 - *(this + 196);
  if (v3 < *(this + 197))
  {
    if (v3 < *(this + 195))
    {
      AppleH15PlatformErrorHandler::_sepDecodeMonInterrupts(this, a2, a3);
    }

    v4 = 16 * (a2 - *(this + 196)) + 8;
    v5 = (&AppleH15PlatformErrorHandler::_sepIRQDecoder + v4);
    if (v4 != v4)
    {
      v5 = ((&AppleH15PlatformErrorHandler::_sepIRQDecoder + v4) & 0xFFFFFFFFFFFFLL | 0x2BAD000000000000);
    }

    panic("SEP IRQ: %s @%s:%d", *v5, "AppleH15PlatformErrorHandler.cpp", 4758);
  }

  panic("%s::%s: VERIFY failed @%s:%d", "AppleH15PlatformErrorHandler", "_sepDecodeInterrupts", "AppleH15PlatformErrorHandler.cpp", 4753);
}

void AppleH15PlatformErrorHandler::_sepDecodeMonInterrupts(uint64_t this, int a2, void *a3)
{
  if ((*(this + 141) & 1) == 0)
  {
    panic("SEP monitor error @%s:%d", "AppleH15PlatformErrorHandler.cpp", 4703);
  }

  v4 = this + 13032;
  if (((this ^ (this + 13032)) & 0xFFC0000000000000) != 0)
  {
    v4 = v4 & 0xFFFFFFFFFFFFLL | 0xC8A2000000000000;
  }

  Register32 = AppleH15PlatformErrorHandler::_readRegister32(this, v4, 0, 0x14000u);
  v6 = AppleH15PlatformErrorHandler::_readRegister32(Register32, v4, 0, 0x14008u);
  v7 = AppleH15PlatformErrorHandler::_readRegister32(v6, v4, 0, 0x14400u);
  v8 = AppleH15PlatformErrorHandler::_readRegister32(v7, v4, 0, 0x14408u);
  v9 = AppleH15PlatformErrorHandler::_readRegister32(v8, v4, 0, 0x15400u);
  v10 = AppleH15PlatformErrorHandler::_readRegister32(v9, v4, 0, 0x14C00u);
  v11 = v10;
  v12 = this + 12872;
  if (((this ^ (this + 12872)) & 0xFFC0000000000000) != 0)
  {
    v12 = v12 & 0xFFFFFFFFFFFFLL | 0xC8A2000000000000;
  }

  v13 = AppleH15PlatformErrorHandler::_readRegister32(v10, v12, 0, 0x58000u);
  v14 = AppleH15PlatformErrorHandler::_readRegister32(v13, v12, 1u, 0x30u);
  if (!Register32)
  {
    v15 = &unk_3FD9;
    if (!v6)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v16 = &off_236F8;
  v17 = 11;
  v15 = "*UNKNOWN*";
  while ((*(v16 - 1) & Register32) == 0)
  {
    v16 += 2;
    if (!--v17)
    {
      if (!v6)
      {
        goto LABEL_14;
      }

LABEL_16:
      v19 = &off_237A8;
      v20 = 9;
      v18 = "*UNKNOWN*";
      while ((*(v19 - 1) & v6) == 0)
      {
        v19 += 2;
        if (!--v20)
        {
          goto LABEL_21;
        }
      }

      v18 = *v19;
LABEL_21:
      panic("SEP monitor error: MON_ERROR_STATUS 0x%08x(%s) MON_CPM_STATUS 0x%08x(%s) SEPCLK_DFREQ_MON_MEAS 0x%08x NCLK_DFREQ_MON_MEAS 0x%08x BOOT_NUMBER 0x%08x THERMAL_TEMP 0x%08x SOC_PERF_STATE_CTL 0x%08x VOLMAN_SOC_VOLTAGE 0x%08x @%s:%d", Register32, v15, v6, v18, v7, v8, v9, v11, v13, v14, "AppleH15PlatformErrorHandler.cpp", 4743);
    }
  }

  v15 = *v16;
  if (v6)
  {
    goto LABEL_16;
  }

LABEL_14:
  v18 = &unk_3FD9;
  goto LABEL_21;
}

OSMetaClass *_GLOBAL__sub_I_AppleH15PlatformErrorHandler_cpp()
{
  result = OSMetaClass::OSMetaClass(&AppleH15PlatformErrorHandler::gMetaClass, "AppleH15PlatformErrorHandler", &IOService::gMetaClass, 0x3960u);
  result->__vftable = off_22358;
  return result;
}

OSMetaClass *AppleH15MemCacheController::MetaClass::MetaClass(OSMetaClass *this)
{
  result = OSMetaClass::OSMetaClass(this, "AppleH15MemCacheController", &AppleMemCacheController::gMetaClass, 0x8B0u);
  result->__vftable = off_23F40;
  return result;
}

{
  result = OSMetaClass::OSMetaClass(this, "AppleH15MemCacheController", &AppleMemCacheController::gMetaClass, 0x8B0u);
  result->__vftable = off_23F40;
  return result;
}

void AppleH15MemCacheController::MetaClass::~MetaClass(OSMetaClass *this)
{
  OSMetaClass::~OSMetaClass(this);
}

{
  OSMetaClass::~OSMetaClass(this);
}

void AppleH15MemCacheController::AppleH15MemCacheController(AppleH15MemCacheController *this, const OSMetaClass *a2)
{
  AppleMemCacheController::AppleMemCacheController(this, a2);
  *v2 = off_238D0;
}

{
  AppleMemCacheController::AppleMemCacheController(this, a2);
  *v2 = off_238D0;
}

void AppleH15MemCacheController::~AppleH15MemCacheController(AppleH15MemCacheController *this)
{
  AppleMemCacheController::~AppleMemCacheController(this);
}

{
  AppleMemCacheController::~AppleMemCacheController(this);
}

{
  AppleMemCacheController::~AppleMemCacheController(this);

  _OSObject_typed_operator_delete(&AppleH15MemCacheController_ktv, this, 2224);
}

AppleMemCacheController *AppleH15MemCacheController::MetaClass::alloc(AppleH15MemCacheController::MetaClass *this)
{
  v1 = OSObject_typed_operator_new();
  AppleMemCacheController::AppleMemCacheController(v1, &AppleH15MemCacheController::gMetaClass);
  *v2 = off_238D0;
  OSMetaClass::instanceConstructed(&AppleH15MemCacheController::gMetaClass);
  return v1;
}

void AppleH15MemCacheController::AppleH15MemCacheController(AppleH15MemCacheController *this)
{
  AppleMemCacheController::AppleMemCacheController(this, &AppleH15MemCacheController::gMetaClass);
  *v1 = off_238D0;
  OSMetaClass::instanceConstructed(&AppleH15MemCacheController::gMetaClass);
}

{
  AppleMemCacheController::AppleMemCacheController(this, &AppleH15MemCacheController::gMetaClass);
  *v1 = off_238D0;
  OSMetaClass::instanceConstructed(&AppleH15MemCacheController::gMetaClass);
}

void AppleH15MemCacheController::_mccFlush(AppleH15MemCacheController *this)
{
  if (*(this + 36))
  {
    if ((gMccDebug & 0xFC) != 0)
    {
      _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Flushing Mem Cache ...");
      if (*(&gMccDebug + 1))
      {
        kprintf("%s:%d: Flushing Mem Cache ...\n", "_mccFlush", 1232);
      }
    }

    OSSynchronizeIO();
    if (*(this + 517))
    {
      v2 = 0;
      do
      {
        AppleH15MemCacheController::_mccProtectedWriteReg32(this, this + 1016, v2++, 0x1C1C00u, 0);
      }

      while (v2 < *(this + 517));
    }

    AppleH15MemCacheController::_mccWaitForWaysPwrOn(this, 0);
    if (*(this + 517))
    {
      v3 = 0;
      do
      {
        AppleH15MemCacheController::_mccProtectedWriteReg32(this, this + 1016, v3++, 0x1C1C00u, 1u);
      }

      while (v3 < *(this + 517));
    }

    OSSynchronizeIO();
  }
}

uint64_t AppleH15MemCacheController::_bitsSetCount(AppleH15MemCacheController *this, unsigned int a2)
{
  result = 0;
  if (a2)
  {
    do
    {
      result = result + (a2 & 1);
      v3 = a2 > 1;
      a2 >>= 1;
    }

    while (v3);
  }

  return result;
}

uint64_t AppleH15MemCacheController::start(AppleH15MemCacheController *this, OSDictionary *a2)
{
  *(this + 254) = a2;
  v4 = IORegistryEntry::fromPath("IODeviceTree:/chosen", 0, 0, 0, 0);
  if (v4)
  {
    v5 = v4;
    v6 = (v4->getProperty_1)(v4, "chip-id");
    v7 = OSMetaClassBase::safeMetaCast(v6, OSData::metaClass);
    if (v7)
    {
      v8 = v7;
      if ((v7->__vftable[1].getMetaClass)(v7) == 4)
      {
        *(this + 510) = *(v8->__vftable[2].~OSMetaClassBase_0)(v8);
      }
    }

    (v5->release_0)(v5);
  }

  if (gMccDebug >= 3u)
  {
    _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "start: _chipId = 0x%x", *(this + 510));
    if (*(&gMccDebug + 1))
    {
      kprintf("%s:%d: start: _chipId = 0x%x\n", "start", 466, *(this + 510));
    }
  }

  if (*(this + 510) == 24626)
  {
    v9 = 2;
  }

  else
  {
    v9 = 1;
  }

  if (*(this + 510) == 24626)
  {
    v10 = 4;
  }

  else
  {
    v10 = 3;
  }

  *(this + 513) = v9;
  *(this + 518) = v10;
  v11 = *(a2->__vftable[2].initWithCapacity)(a2);
  v12 = *(*(v11 + 880))();
  v13 = (*(v12 + 280))();
  v14 = OSData::metaClass;
  v15 = OSMetaClassBase::safeMetaCast(v13, OSData::metaClass);
  if (v15)
  {
    v16 = *(v15->__vftable[2].~OSMetaClassBase_0)(v15);
  }

  else
  {
    v16 = 0;
  }

  *(this + 511) = v16;
  v17 = gMccDebug;
  if (gMccDebug >= 3u)
  {
    _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "start: _chipRevision = 0x%x", v16);
    v17 = gMccDebug;
    if ((gMccDebug & 0xFF00) != 0)
    {
      kprintf("%s:%d: start: _chipRevision = 0x%x\n", "start", 484, *(this + 511));
      v17 = gMccDebug;
    }
  }

  if (v17 >= 3u)
  {
    _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "start: AMCCPlaneStride = %x", 0x40000);
    v17 = gMccDebug;
    if ((gMccDebug & 0xFF00) != 0)
    {
      kprintf("%s:%d: start: AMCCPlaneStride = %x\n", "start", 485, 0x40000);
      v17 = gMccDebug;
    }
  }

  if (v17 >= 3u)
  {
    _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "start: AMCCPlaneOffset = %x", 0);
    v17 = gMccDebug;
    if ((gMccDebug & 0xFF00) != 0)
    {
      kprintf("%s:%d: start: AMCCPlaneOffset = %x\n", "start", 486, 0);
      v17 = gMccDebug;
    }
  }

  if (v17 >= 3u)
  {
    _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "start: AMCNonPlaneOffset = %x", 0x100000);
    v17 = gMccDebug;
    if ((gMccDebug & 0xFF00) != 0)
    {
      kprintf("%s:%d: start: AMCNonPlaneOffset = %x\n", "start", 487, 0x100000);
      v17 = gMccDebug;
    }
  }

  if (v17 >= 3u)
  {
    _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "start: AMCCDCSStride = %x", 0x200000);
    v17 = gMccDebug;
    if ((gMccDebug & 0xFF00) != 0)
    {
      kprintf("%s:%d: start: AMCCDCSStride = %x\n", "start", 488, 0x200000);
      v17 = gMccDebug;
    }
  }

  if (v17 >= 3u)
  {
    _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "start: AMCCDCSOffset = %x", 0x400000);
    if (*(&gMccDebug + 1))
    {
      kprintf("%s:%d: start: AMCCDCSOffset = %x\n", "start", 489, 0x400000);
    }
  }

  PropertyCount = AppleH15MemCacheController::_getPropertyCount(this, "reg", 0x10uLL);
  if (!PropertyCount)
  {
    AppleH15MemCacheController::start();
  }

  *(this + 517) = PropertyCount - *(this + 518);
  v19 = (a2->removeObject_1)(a2, "plane-count-per-amcc");
  v20 = OSMetaClassBase::safeMetaCast(v19, v14);
  if (!v20)
  {
    AppleH15MemCacheController::start();
  }

  *(this + 515) = *(v20->__vftable[2].~OSMetaClassBase_0)(v20);
  v21 = (a2->removeObject_1)(a2, "dcs-count-per-amcc");
  v22 = OSMetaClassBase::safeMetaCast(v21, v14);
  if (!v22)
  {
    AppleH15MemCacheController::start();
  }

  v23 = (v22->__vftable[2].~OSMetaClassBase_0)(v22);
  v24 = *v23;
  *(this + 516) = *v23;
  v25 = *(this + 517);
  *(this + 514) = v25 * v24;
  v26 = gMccDebug;
  if (gMccDebug >= 3u)
  {
    _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "start: _amccNum = %d", v25);
    v26 = gMccDebug;
    if ((gMccDebug & 0xFF00) != 0)
    {
      kprintf("%s:%d: start: _amccNum = %d\n", "start", 510, *(this + 517));
      v26 = gMccDebug;
    }
  }

  if (v26 >= 3u)
  {
    _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "start: _planeNumPerAMCC = %d", *(this + 515));
    v26 = gMccDebug;
    if ((gMccDebug & 0xFF00) != 0)
    {
      kprintf("%s:%d: start: _planeNumPerAMCC = %d\n", "start", 511, *(this + 515));
      v26 = gMccDebug;
    }
  }

  v27 = (this + 2056);
  if (v26 >= 3u)
  {
    _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "start: _dcsNumChannelsPerAMCC = %d", *(this + 516));
    v26 = gMccDebug;
    if ((gMccDebug & 0xFF00) != 0)
    {
      kprintf("%s:%d: start: _dcsNumChannelsPerAMCC = %d\n", "start", 512, *(this + 516));
      v26 = gMccDebug;
    }
  }

  if (v26 >= 3u)
  {
    _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "start: _dcsNumChannels = %d", *v27);
    if (*(&gMccDebug + 1))
    {
      kprintf("%s:%d: start: _dcsNumChannels = %d\n", "start", 513, *v27);
    }
  }

  if (!*(this + 517))
  {
    AppleH15MemCacheController::start();
  }

  if (gMccDebug >= 3u)
  {
    _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "start: Number of AMCCs Defined %d", *(this + 517));
    if (*(&gMccDebug + 1))
    {
      kprintf("%s:%d: start: Number of AMCCs Defined %d\n", "start", 519, *(this + 517));
    }
  }

  if (AppleH15MemCacheController::_mapApertures(this, this + 1016, 0x10u))
  {
    AppleH15MemCacheController::start();
  }

  (*(*this + 1464))(this, this + 2048);
  *(this + 2176) = 0;
  if (!(*(**(this + 254) + 280))())
  {
    AppleH15MemCacheController::start();
  }

  *(this + 2176) = 1;
  if (*(this + 513))
  {
    v28 = 0;
    do
    {
      v29 = (a2->__vftable[2].getObject_0)(a2, (v28 + 2), 0);
      *(this + 273) = v29;
      if (!v29)
      {
        AppleH15MemCacheController::start();
      }

      *(this + v28++ + 274) = (*(*v29 + 120))(v29);
    }

    while (*(this + 513) > v28);
  }

  v30 = (*(**(this + 254) + 976))(*(this + 254), 1, 0);
  *(this + 175) = v30;
  if (!v30)
  {
    AppleH15MemCacheController::start();
  }

  v31 = (*(*v30 + 120))(v30);
  *(this + 176) = v31;
  if ((gMccDebug & 0xFC) != 0)
  {
    v32 = v31;
    v33 = *(this + 175);
    v34 = (*(*v33 + 136))(v33);
    PhysicalAddress = IOMemoryMap::getPhysicalAddress(*(this + 175));
    _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "MCW map %p base %llu length %llu physical address %llu", v33, v32, v34, PhysicalAddress);
    if (*(&gMccDebug + 1))
    {
      v36 = *(this + 175);
      v37 = *(this + 176);
      v38 = (*(*v36 + 136))(v36);
      v39 = IOMemoryMap::getPhysicalAddress(*(this + 175));
      kprintf("%s:%d: MCW map %p base %llu length %llu physical address %llu\n", "start", 550, v36, v37, v38, v39);
    }
  }

  v40 = (a2->removeObject_1)(a2, "dramcfg-data");
  v41 = OSMetaClassBase::safeMetaCast(v40, v14);
  if (v41 && (v42 = v41, (v41->__vftable[1].getMetaClass)(v41) >= 4))
  {
    *(this + 354) = (v42->__vftable[1].getMetaClass)(v42) >> 2;
    v43 = (v42->__vftable[2].~OSMetaClassBase_0)(v42);
  }

  else
  {
    v43 = 0;
    *(this + 354) = 0;
  }

  *(this + 179) = v43;
  if (gMccDebug >= 3u)
  {
    _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "start: found %u DRAMCFGMode entries\n", *(this + 354));
    if (*(&gMccDebug + 1))
    {
      kprintf("%s:%d: start: found %u DRAMCFGMode entries\n\n", "start", 562, *(this + 354));
    }
  }

  v44 = *(this + 514);
  v45 = IOMallocData();
  *(this + 178) = v45;
  if (!v45)
  {
    AppleH15MemCacheController::start(this + 514);
  }

  if (*v27)
  {
    v46 = 0;
    do
    {
      *(*(this + 178) + 4 * v46) = AppleH15MemCacheController::_mccReadReg32(this, this + 1016, v46 / *(this + 516), ((v46 % *(this + 516)) << 21) + 4199368);
      ++v46;
    }

    while (v46 < *(this + 514));
  }

  v47 = (a2->removeObject_1)(a2, "dcs-true-mr4-read-support");
  if (OSMetaClassBase::safeMetaCast(v47, v14))
  {
    *(this + 2213) = 1;
    *(this + 2212) = 13;
  }

  {
    if (gMccDebug)
    {
      _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "super start failed");
      if (*(&gMccDebug + 1))
      {
        kprintf("%s:%d: super start failed\n");
      }
    }

    return 0;
  }

  MCPolicyMgrFactory = AppleMemCacheController::getMCPolicyMgrFactory(this);
  *(this + 271) = MCPolicyMgrFactory;
  if (!MCPolicyMgrFactory)
  {
    AppleH15MemCacheController::start();
  }

  v49 = IOCommandGate::commandGate(this, 0);
  *(this + 260) = v49;
  if (!v49)
  {
    if (gMccDebug)
    {
      _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "start:failed to create commandgate");
      if (*(&gMccDebug + 1))
      {
        kprintf("%s:%d: start:failed to create commandgate\n");
      }
    }

    return 0;
  }

  v50 = (*(*this + 888))(this);
  if ((*(*v50 + 160))(v50, *(this + 260)))
  {
    if (gMccDebug)
    {
      _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "start:failed to add commandgate to workloop event source");
      if (*(&gMccDebug + 1))
      {
        kprintf("%s:%d: start:failed to add commandgate to workloop event source\n");
      }
    }

    return 0;
  }

  v52 = IOService::nameMatching("pram", 0);
  if (v52)
  {
    v53 = v52;
    v54 = IOService::waitForMatchingService(v52, 0xFFFFFFFFFFFFFFFFLL);
    if (!v54)
    {
      AppleH15MemCacheController::start();
    }

    v55 = v54;
    v56 = (v54->getProperty_1)(v54, "reg");
    v57 = OSMetaClassBase::safeMetaCast(v56, v14);
    if (!v57)
    {
      AppleH15MemCacheController::start();
    }

    v58 = v57;
    if ((v57->__vftable[1].getMetaClass)(v57) != 16)
    {
      AppleH15MemCacheController::start(v58);
    }

    v59 = (*(*v58 + 216))(v58);
    v60 = *v59;
    *(this + 265) = v59[1];
    (v55->release_0)(v55);
    (v53->release_0)(v53);
    v61 = gMccDebug;
    if ((gMccDebug & 0xFC) != 0)
    {
      _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "panicPhys=0x%llx", v60);
      v61 = gMccDebug;
      if ((gMccDebug & 0xFF00) != 0)
      {
        kprintf("%s:%d: panicPhys=0x%llx\n", "start", 640, v60);
        v61 = gMccDebug;
      }
    }

    if ((v61 & 0xFC) != 0)
    {
      _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "_mccPanicSize=0x%llx", *(this + 265));
      if (*(&gMccDebug + 1))
      {
        kprintf("%s:%d: _mccPanicSize=0x%llx\n", "start", 641, *(this + 265));
      }
    }

    v62 = (a2->removeObject_1)(a2, "panic-max-size");
    v63 = OSMetaClassBase::safeMetaCast(v62, v14);
    if (!v63)
    {
      AppleH15MemCacheController::start();
    }

    v64 = (v63->__vftable[2].~OSMetaClassBase_0)(v63);
    v65 = *v64;
    if ((gMccDebug & 0xFC) != 0)
    {
      _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "panicMaxSize=0x%llx", *v64);
      if (*(&gMccDebug + 1))
      {
        kprintf("%s:%d: panicMaxSize=0x%llx\n", "start", 648, v65);
      }
    }

    v66 = (a2->removeObject_1)(a2, "dram-base");
    v67 = OSMetaClassBase::safeMetaCast(v66, v14);
    if (!v67)
    {
      AppleH15MemCacheController::start();
    }

    v68 = (v67->__vftable[2].~OSMetaClassBase_0)(v67);
    v69 = *v68;
    if ((gMccDebug & 0xFC) != 0)
    {
      _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "dramBasePhy=0x%llx", *v68);
      if (*(&gMccDebug + 1))
      {
        kprintf("%s:%d: dramBasePhy=0x%llx\n", "start", 655, v69);
      }
    }

    v70 = (a2->removeObject_1)(a2, "dram-limit");
    v71 = OSMetaClassBase::safeMetaCast(v70, v14);
    if (!v71)
    {
      AppleH15MemCacheController::start();
    }

    v72 = (v71->__vftable[2].~OSMetaClassBase_0)(v71);
    v73 = *v72;
    if ((gMccDebug & 0xFC) != 0)
    {
      _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "dramLimit=0x%llx", *v72);
      if (*(&gMccDebug + 1))
      {
        kprintf("%s:%d: dramLimit=0x%llx\n", "start", 662, v73);
      }
    }

    v74 = *(this + 265);
    if (((v74 | v60) & 0x3F) != 0 || v74 > v65 || v60 >= v73 - v74)
    {
      panic("STR_CLASS ::%s:%d:  start:illegal pram range: base=%llx bytes=%llx @%s:%d", "start", 669, v60, *(this + 265), "AppleH15MemCacheController.cpp", 669);
    }

    *(this + 264) = v60 - v69;
    if ((gMccDebug & 0xFC) != 0)
    {
      _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "_mccPanicOffset=0x%llx", v60 - v69);
      if (*(&gMccDebug + 1))
      {
        kprintf("%s:%d: _mccPanicOffset=0x%llx\n", "start", 674, *(this + 264));
      }
    }
  }

  else
  {
    if ((gMccDebug & 0xFC) != 0)
    {
      _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "start:Unable to locate panic memory");
      if (*(&gMccDebug + 1))
      {
        kprintf("%s:%d: start:Unable to locate panic memory\n", "start", 676);
      }
    }

    *(this + 265) = 0;
  }

  v75 = 1776;
  *&v76 = -1;
  *(&v76 + 1) = -1;
  do
  {
    *(this + v75) = v76;
    v75 += 16;
  }

  while (v75 != 2032);
  AppleH15MemCacheController::_mccInitPerfCounters(this);
  AppleH15MemCacheController::_enableDsidProfileCounters(this);
  *(this + 526) = 0;
  if (*(this + 36))
  {
    (*(*this + 1376))(this, 1);
  }

  AppleARMFunction::registerFunctionParent(a2, this, v77);
  (*(*this + 672))(this, 2);
  AppleH15MemCacheController::_getRankCfgByteMode(this);
  ml_mcache_flush_callback_register();
  if (gMccDebug >= 3u)
  {
    _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "start: finished");
    if (*(&gMccDebug + 1))
    {
      kprintf("%s:%d: start: finished\n", "start", 708);
    }
  }

  return 1;
}

uint64_t AppleH15MemCacheController::_getPropertyCount(AppleH15MemCacheController *this, const char *a2, unint64_t a3)
{
  v4 = (*(**(this + 254) + 280))(*(this + 254), a2);
  result = OSMetaClassBase::safeMetaCast(v4, OSData::metaClass);
  if (result)
  {
    v6 = (*(*result + 160))(result);
    result = v6 / a3;
    if (result * a3 != v6)
    {
      AppleH15MemCacheController::_getPropertyCount();
    }
  }

  return result;
}

uint64_t AppleH15MemCacheController::_mapApertures(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v3 = *(a1 + 2068);
  if (v3 > a3)
  {
    AppleH15MemCacheController::_mapApertures();
  }

  if (v3)
  {
    v5 = 0;
    v6 = 0;
    v7 = (a2 + 8);
    do
    {
      v8 = (*(**(a1 + 2032) + 976))(*(a1 + 2032), (v5 + *(a1 + 2072)), 0);
      *(v7 - 1) = v8;
      if (v8)
      {
        *v7 = (*(*v8 + 120))(v8);
        v9 = (*(**(v7 - 1) + 136))();
        v7[1] = v9;
        if ((gMccDebug & 0xFC) != 0)
        {
          v10 = v9;
          v12 = *(v7 - 1);
          v11 = *v7;
          PhysicalAddress = IOMemoryMap::getPhysicalAddress(v12);
          _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "amcc aperture %u map %p base %p length %p physical address %p", v5, v12, v11, v10, PhysicalAddress);
          if (*(&gMccDebug + 1))
          {
            v15 = *(v7 - 1);
            v14 = *v7;
            v16 = v7[1];
            v17 = IOMemoryMap::getPhysicalAddress(v15);
            kprintf("%s:%d: amcc aperture %u map %p base %p length %p physical address %p\n", "_mapApertures", 901, v5, v15, v14, v16, v17);
          }
        }
      }

      else
      {
        if ((gMccDebug & 0xFC) != 0)
        {
          _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Failed to map amcc aperture %u", v5);
          if (*(&gMccDebug + 1))
          {
            kprintf("%s:%d: Failed to map amcc aperture %u\n", "_mapApertures", 890, v5);
          }
        }

        v6 = 1;
      }

      ++v5;
      v7 += 3;
    }

    while (v5 < *(a1 + 2068));
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t AppleH15MemCacheController::_mccReadReg32(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4)
{
  if (!a2 || *(a1 + 2068) <= a3 || *(a2 + 16) <= a4)
  {
    AppleH15MemCacheController::_mccReadReg32();
  }

  v6 = 24 * a3;
  v7 = a2 + v6;
  if (((a2 ^ (a2 + v6)) & 0xFFC0000000000000) != 0)
  {
    v7 = v7 & 0xFFFFFFFFFFFFLL | 0xC8A2000000000000;
  }

  v8 = (*(v7 + 8) + a4);
  v9 = *v8;
  if (gMccDebug >= 5u)
  {
    _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "amcc %u offset %#x @ %p -> %#x", a3, a4, v8, v9);
    if (*(&gMccDebug + 1))
    {
      kprintf("%s:%d: amcc %u offset %#x @ %p -> %#x\n", "_mccReadReg32", 2059, a3, a4, v8, v9);
    }
  }

  return v9;
}

void AppleH15MemCacheController::_mccInitPerfCounters(AppleH15MemCacheController *this)
{
  v2 = OSSet::withCapacity(3u);
  *(this + 270) = v2;
  if (v2)
  {
    v3 = IOSimpleLockAlloc();
    *(this + 266) = v3;
    if (v3)
    {
      *(this + 267) = IOSimpleReporter::with(this, (&dword_0 + 2), 0, v4);
      *(this + 268) = IOSimpleReporter::with(this, (&dword_0 + 2), 0, v5);
      v7 = IOSimpleReporter::with(this, &stru_B8.reserved2, 0, v6);
      *(this + 269) = v7;
      if (!*(this + 267) || !*(this + 268) || !v7)
      {
        AppleH15MemCacheController::_mccInitPerfCounters();
      }

      v8 = 0;
      while (1)
      {
        v9 = &AppleH15MemCacheController::_kCounterTypes + 2 * v8;
        if (*(v9 + 2))
        {
          break;
        }

LABEL_26:
        if (++v8 == 4)
        {
          AppleH15MemCacheController::_mccRestoreAMCPerfCounterConfig(this);
          IOReportLegend::addReporterLegend(this, *(this + 267), "AMC Stats", "Perf Counters", v17);
          v18 = *(this + 267);
          (*(**(this + 270) + 240))();
          IOReportLegend::addReporterLegend(this, *(this + 268), "AMC Stats", "Perf Counters", v19);
          v20 = *(this + 268);
          (*(**(this + 270) + 240))();
          IOReportLegend::addReporterLegend(this, *(this + 269), "AMC Stats", "DSID Group Stats", v21);
          v22 = *(this + 269);
          v23 = *(**(this + 270) + 240);

          v23();
          return;
        }
      }

      v10 = 0;
      v11 = 0;
      v12 = *v9;
      while (1)
      {
        if (*(v12 + v10 + 16) >= *(this + 517))
        {
          goto LABEL_26;
        }

        AppleH15MemCacheController::_setCntrCtrlParmeters(this, v12, v11);
        v13 = *(v12 + v10 + 4);
        if (v13 <= 8)
        {
          if (v13 >= 8)
          {
            if (v13 != 8)
            {
LABEL_37:
              AppleH15MemCacheController::_mccInitPerfCounters(v12 + v10);
            }

LABEL_22:
            v14 = *(this + 268);
LABEL_23:
            v16 = *(v12 + v10 + 120);
            v15 = *(v12 + v10 + 128);
LABEL_24:
            IOReporter::addChannel(v14, v16, v15);
            goto LABEL_25;
          }
        }

        else
        {
          if (v13 <= 0x13)
          {
            if (((1 << v13) & 0xEE000) != 0)
            {
              goto LABEL_25;
            }

            if (v13 == 11)
            {
              goto LABEL_22;
            }

            if (v13 == 12)
            {
              v14 = *(this + 269);
              goto LABEL_23;
            }
          }

          if ((v13 - 9) >= 2)
          {
            goto LABEL_37;
          }
        }

        v15 = *(v12 + v10 + 128);
        if (v15)
        {
          v14 = *(this + 267);
          v16 = *(v12 + v10 + 120);
          goto LABEL_24;
        }

LABEL_25:
        *(v12 + v10) |= 1u;
        ++v11;
        v10 += 160;
        if (v11 >= *(v9 + 2))
        {
          goto LABEL_26;
        }
      }
    }

    if (gMccDebug)
    {
      _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Could not alloc _mccPerfCountersLock");
      if (*(&gMccDebug + 1))
      {
        kprintf("%s:%d: Could not alloc _mccPerfCountersLock\n");
      }
    }
  }

  else if (gMccDebug)
  {
    _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Could not allocation reporter set");
    if (*(&gMccDebug + 1))
    {
      kprintf("%s:%d: Could not allocation reporter set\n");
    }
  }
}

void AppleH15MemCacheController::_enableDsidProfileCounters(AppleH15MemCacheController *this)
{
  v2 = this + 1016;
  AppleH15MemCacheController::_mccWriteReg64(this, this + 1016, 0, 0x27018u, 0x10000000);
  if (*(this + 517))
  {
    v3 = 0;
    v4 = 0;
    do
    {
      if ((gMccDebug & 0xFC) != 0)
      {
        _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "AMCC %d NonPlane vDSID Profile counter(offset: 0x%x) sampling interval set to 0x%x\n", v4, 1433600, 256);
        if (*(&gMccDebug + 1))
        {
          kprintf("%s:%d: AMCC %d NonPlane vDSID Profile counter(offset: 0x%x) sampling interval set to 0x%x\n\n", "_enableDsidProfileCounters", 1568, v4, 1433600, 256);
        }
      }

      AppleH15MemCacheController::_mccWriteReg32(this, v2, v4, 0x15E000u, 256);
      if (*(this + 515))
      {
        v5 = 1;
        v6 = 159752;
        v7 = v3;
        do
        {
          AppleH15MemCacheController::_mccWriteReg64(this, v2, v4, v6, v7 + 1792);
          if ((gMccDebug & 0xFC) != 0)
          {
            _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "AMCC %d Plane %d vDSID Profile counter(offset: 0x%x) set to 0x%llx\n", v4, v5 - 1, v6, v7 + 1792);
            if (*(&gMccDebug + 1))
            {
              kprintf("%s:%d: AMCC %d Plane %d vDSID Profile counter(offset: 0x%x) set to 0x%llx\n\n", "_enableDsidProfileCounters", 1580, v4, v5 - 1, v6, v7 + 1792);
            }
          }

          if ((v5 - 1) | v4)
          {
            v8 = 1;
          }

          else
          {
            v8 = 17;
          }

          AppleH15MemCacheController::_mccWriteReg64(this, v2, v4, v6 - 8, v8);
          if ((gMccDebug & 0xFC) != 0)
          {
            _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "AMCC %d Plane %d vDSID Profile counter Enable(offset: 0x%x) set to 0x%llx\n", v4, v5 - 1, v6 - 8, v8);
            if (*(&gMccDebug + 1))
            {
              kprintf("%s:%d: AMCC %d Plane %d vDSID Profile counter Enable(offset: 0x%x) set to 0x%llx\n\n", "_enableDsidProfileCounters", 1588, v4, v5 - 1, v6 - 8, v8);
            }
          }

          v3 = (v7 + 8);
          if (v5 >= *(this + 515))
          {
            break;
          }

          ++v5;
          v6 += 0x40000;
          v9 = v7 >= 0x18;
          v7 += 8;
        }

        while (!v9);
      }

      ++v4;
    }

    while (v4 < *(this + 517) && v3 < 0x20);
  }
}

uint64_t AppleH15MemCacheController::_getRankCfgByteMode(AppleH15MemCacheController *this)
{
  v2 = (*(**(this + 254) + 280))(*(this + 254), "byte-mode");
  v3 = OSMetaClassBase::safeMetaCast(v2, OSData::metaClass);
  if (!v3 || (v4 = v3, (v3->__vftable[1].getMetaClass)(v3) != 4))
  {
    AppleH15MemCacheController::_getRankCfgByteMode();
  }

  v5 = *(v4->__vftable[2].~OSMetaClassBase_0)(v4);
  *(this + 554) = v5;
  if ((gMccDebug & 0xFC) != 0)
  {
    _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Byte Mode is %d", v5);
    if (*(&gMccDebug + 1))
    {
      kprintf("%s:%d: Byte Mode is %d\n", "_getRankCfgByteMode", 2699, *(this + 554));
    }
  }

  return 0;
}

uint64_t AppleH15MemCacheController::readCacheSize(AppleH15MemCacheController *this, unsigned int *a2)
{
  Reg32 = AppleH15MemCacheController::_mccReadReg32(this, this + 1016, 0, 0x100020u);
  *a2 = (Reg32 << 12) & 0xFF00000;
  if ((gMccDebug & 0xFC) != 0)
  {
    _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "AMCC cache size: %d bytes\n", (Reg32 << 12) & 0xFF00000);
    if (*(&gMccDebug + 1))
    {
      kprintf("%s:%d: AMCC cache size: %d bytes\n\n", "readCacheSize", 723, *a2);
    }
  }

  return 0;
}

uint64_t AppleH15MemCacheController::callPlatformFunction(AppleH15MemCacheController *this, const OSSymbol *a2, uint64_t a3, void *a4, void *a5, OSMetaClassBase *anObject, AppleARMFunction **a7)
{
  v14 = 3758097084;
  if (gAppleARMFunctionNew == a2)
  {
    v15 = OSMetaClassBase::safeMetaCast(anObject, OSData::metaClass);
    if (v15)
    {
      v16 = *((v15->__vftable[2].~OSMetaClassBase_0)(v15) + 4);
      switch(v16)
      {
        case 1298492705:
          v17 = OSObject_typed_operator_new();
          v18 = &AppleMemCachePanicFunction::gMetaClass;
          AppleARMFunction::AppleARMFunction(v17, &AppleMemCachePanicFunction::gMetaClass);
          v19 = off_24130;
          break;
        case 1298492736:
          v17 = OSObject_typed_operator_new();
          v18 = &AppleMemCacheFlushFunction::gMetaClass;
          AppleARMFunction::AppleARMFunction(v17, &AppleMemCacheFlushFunction::gMetaClass);
          v19 = off_24268;
          break;
        case 1298492708:
          v17 = OSObject_typed_operator_new();
          v18 = &AppleMemCacheModeFunction::gMetaClass;
          AppleARMFunction::AppleARMFunction(v17, &AppleMemCacheModeFunction::gMetaClass);
          v19 = off_23FF8;
          break;
        default:
      }

      *v17 = v19;
      OSMetaClass::instanceConstructed(v18);
      v14 = 0;
      *a7 = v17;
      return v14;
    }

    return 3758097090;
  }

  else if (gAppleARMFunctionCall != a2)
  {
    if (gIOPlatformActiveActionKey == a2)
    {
      if ((gMccDebug & 0xFC) != 0)
      {
        _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "gIOPlatformActiveActionKey");
        if (*(&gMccDebug + 1))
        {
          kprintf("%s:%d: gIOPlatformActiveActionKey\n", "callPlatformFunction", 780);
        }
      }

      if (*(this + 36))
      {
        (*(*this + 1376))(this, 1);
      }

      AppleH15MemCacheController::_mccRestoreAMCPerfCounterConfig(this);
      AppleH15MemCacheController::_enableDsidProfileCounters(this);
      return 0;
    }

    if (gIOPlatformWakeActionKey == a2)
    {
      if ((gMccDebug & 0xFC) != 0)
      {
        _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "gIOPlatformWakeActionKey");
        if (*(&gMccDebug + 1))
        {
          kprintf("%s:%d: gIOPlatformWakeActionKey\n", "callPlatformFunction", 793);
        }
      }

      v20 = (*(*this + 888))(this);
      action[0] = _NSConcreteStackBlock;
      action[1] = 0x40000000;
      action[2] = ___ZN26AppleH15MemCacheController20callPlatformFunctionEPK8OSSymbolbPvS3_S3_S3__block_invoke;
      action[3] = &__block_descriptor_tmp;
      action[4] = this;
      IOWorkLoop::runActionBlock(v20, action);
    }

    else
    {
      if (gIOPlatformQuiesceActionKey == a2)
      {
        if (*(this + 36))
        {
          (*(*this + 1376))(this, 0);
        }

        if ((*(this + 2213) & 1) != 0 && !AppleH15MemCacheController::_mccReadReg32(this, this + 1016, 0, 0x1000u))
        {
          AppleH15MemCacheController::callPlatformFunction();
        }

        AppleH15MemCacheController::_mccSampleAllPerfCounters(this, 1);
        return 0;
      }

      if (gIOPlatformPanicActionKey == a2)
      {
        if (*(this + 36))
        {
          (*(*this + 1376))(this, 0);
        }

        return 0;
      }
    }
  }

  return v14;
}

void AppleMemCacheModeFunction::AppleMemCacheModeFunction(AppleMemCacheModeFunction *this)
{
  AppleARMFunction::AppleARMFunction(this, &AppleMemCacheModeFunction::gMetaClass);
  *v1 = off_23FF8;
  OSMetaClass::instanceConstructed(&AppleMemCacheModeFunction::gMetaClass);
}

{
  AppleARMFunction::AppleARMFunction(this, &AppleMemCacheModeFunction::gMetaClass);
  *v1 = off_23FF8;
  OSMetaClass::instanceConstructed(&AppleMemCacheModeFunction::gMetaClass);
}

void AppleMemCachePanicFunction::AppleMemCachePanicFunction(AppleMemCachePanicFunction *this)
{
  AppleARMFunction::AppleARMFunction(this, &AppleMemCachePanicFunction::gMetaClass);
  *v1 = off_24130;
  OSMetaClass::instanceConstructed(&AppleMemCachePanicFunction::gMetaClass);
}

{
  AppleARMFunction::AppleARMFunction(this, &AppleMemCachePanicFunction::gMetaClass);
  *v1 = off_24130;
  OSMetaClass::instanceConstructed(&AppleMemCachePanicFunction::gMetaClass);
}

void AppleMemCacheFlushFunction::AppleMemCacheFlushFunction(AppleMemCacheFlushFunction *this)
{
  AppleARMFunction::AppleARMFunction(this, &AppleMemCacheFlushFunction::gMetaClass);
  *v1 = off_24268;
  OSMetaClass::instanceConstructed(&AppleMemCacheFlushFunction::gMetaClass);
}

{
  AppleARMFunction::AppleARMFunction(this, &AppleMemCacheFlushFunction::gMetaClass);
  *v1 = off_24268;
  OSMetaClass::instanceConstructed(&AppleMemCacheFlushFunction::gMetaClass);
}

void AppleH15MemCacheController::_mccRestoreAMCPerfCounterConfig(AppleH15MemCacheController *this)
{
  for (i = 0; i != 4; ++i)
  {
    v3 = (&AppleH15MemCacheController::_kCounterTypes + 2 * i);
    v4 = *(v3 + 2);
    if (v4)
    {
      v5 = 0;
      v6 = *v3;
      do
      {
        v7 = v6 + 160 * v5;
        if (((v6 ^ v7) & 0xFFC0000000000000) != 0)
        {
          v7 = v7 & 0xFFFFFFFFFFFFLL | 0xC8A2000000000000;
        }

        if (*v7)
        {
          for (j = 0; j != 6; ++j)
          {
            if (j >= *(v7 + 64))
            {
              break;
            }

            AppleH15MemCacheController::_writePerfCtrl(this, v6, v5, j);
          }

          AppleH15MemCacheController::_enablePerfCtrl(this, v6, v5, 1);
          v4 = *(v3 + 2);
        }

        ++v5;
      }

      while (v5 < v4);
    }
  }
}

uint64_t ___ZN26AppleH15MemCacheController20callPlatformFunctionEPK8OSSymbolbPvS3_S3_S3__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = 222;
  *&v3 = -1;
  *(&v3 + 1) = -1;
  do
  {
    *&v1[v2] = v3;
    v2 += 2;
  }

  while (v2 != 254);
  ((*v1)[171])(v1);
  (*(*v1[271] + 88))();
  return 0;
}

void AppleH15MemCacheController::_mccSampleAllPerfCounters(AppleH15MemCacheController *this, int a2)
{
  for (i = 0; i != 4; ++i)
  {
    v5 = (&AppleH15MemCacheController::_kCounterTypes + 2 * i);
    if (*(v5 + 2))
    {
      v6 = 0;
      v7 = *v5;
      v8 = *v5;
      do
      {
        v9 = *v8;
        v8 += 160;
        if (v9)
        {
          AppleH15MemCacheController::_mccSamplePerfCounter(this, v7, v6, 0);
          if (a2)
          {
            AppleH15MemCacheController::_enablePerfCtrl(this, v7, v6, 0);
          }
        }

        ++v6;
      }

      while (v6 < *(v5 + 2));
    }
  }
}

void AppleH15MemCacheController::_mccWaitForWaysPwrOn(AppleH15MemCacheController *this, int a2)
{
  if ((gMccDebug & 0xFC) != 0)
  {
    _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "_mccWaitForWaysPwrOn() called with tgt_way_cnt = %d", a2);
    if (*(&gMccDebug + 1))
    {
      kprintf("%s:%d: _mccWaitForWaysPwrOn() called with tgt_way_cnt = %d\n", "_mccWaitForWaysPwrOn", 913, a2);
    }
  }

  v4 = *(this + 517);
  if (v4)
  {
    v5 = 0;
    v6 = *(this + 515);
    do
    {
      if (v6)
      {
        for (i = 0; i < v6; ++i)
        {
          v8 = gMccDebug;
          if ((gMccDebug & 0xFC) != 0)
          {
            _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "amcc %d plane %d", v5, i);
            v8 = gMccDebug;
            if ((gMccDebug & 0xFF00) != 0)
            {
              kprintf("%s:%d: amcc %d plane %d\n", "_mccWaitForWaysPwrOn", 917, v5, i);
              v8 = gMccDebug;
            }
          }

          if (v8 >= 5u)
          {
            _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "plane_id = %d", i);
            if (*(&gMccDebug + 1))
            {
              kprintf("%s:%d: plane_id = %d\n", "_mccWaitForWaysPwrOn", 919, i);
            }
          }

          do
          {
            Reg32 = AppleH15MemCacheController::_mccReadReg32(this, this + 1016, v5, (i << 18) | 0x1C04);
            v13 = Reg32;
            v10 = (Reg32 >> 9) & 0x1F;
            if (gMccDebug >= 5u)
            {
              _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Waiting for Data Ways:   target = %d cur_data_way_count = %d     reg = %x", a2, (Reg32 >> 9) & 0x1F, Reg32);
              if (*(&gMccDebug + 1))
              {
                kprintf("%s:%d: Waiting for Data Ways:   target = %d cur_data_way_count = %d     reg = %x\n", "_mccWaitForWaysPwrOn", 926, a2, v10, v13);
              }
            }
          }

          while (v10 != a2);
          do
          {
            v11 = AppleH15MemCacheController::_mccReadReg32(this, this + 1016, v5, (i << 18) | 0x1C04);
            v12 = (v11 >> 4) & 0x1F;
            if (gMccDebug >= 5u)
            {
              _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Waiting for Tag Ways:  cur_tag_way_count = %d", (v11 >> 4) & 0x1F);
              if (*(&gMccDebug + 1))
              {
                kprintf("%s:%d: Waiting for Tag Ways:  cur_tag_way_count = %d\n", "_mccWaitForWaysPwrOn", 932, v12);
              }
            }
          }

          while (v12 != a2);
          v6 = *(this + 515);
        }

        v4 = *(this + 517);
      }

      ++v5;
    }

    while (v5 < v4);
  }
}

uint64_t AppleH15MemCacheController::setWayMask(AppleH15MemCacheController *this)
{
  if (*(this + 36) >= 0x11u)
  {
    *(this + 36) = 16;
  }

  Reg32 = AppleH15MemCacheController::_mccReadReg32(this, this + 1016, 0, 0x1C08u);
  v3 = *(this + 36);
  if (v3)
  {
    v4 = (v3 + 3) & 0xFFFFFFFC;
    v5 = xmmword_6520;
    v6 = xmmword_6530;
    v7 = vdupq_n_s32(v3 - 1);
    v8.i64[0] = 0x100000001;
    v8.i64[1] = 0x100000001;
    v9.i64[0] = 0x400000004;
    v9.i64[1] = 0x400000004;
    do
    {
      v10 = v5;
      v11 = v6;
      v5 = vbicq_s8(v5, vshlq_u32(v8, v6));
      v6 = vaddq_s32(v6, v9);
      v4 -= 4;
    }

    while (v4);
    v12 = vbslq_s8(vcgtq_u32(v11, v7), v10, v5);
    *v12.i8 = vand_s8(*v12.i8, *&vextq_s8(v12, v12, 8uLL));
    v13 = v12.i32[0] & v12.i32[1];
  }

  else
  {
    v13 = 0xFFFF;
  }

  if (Reg32 == v13)
  {
    v14 = *(this + 517);
    goto LABEL_10;
  }

  if ((gMccDebug & 0xFC) != 0)
  {
    _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Setting WayMask to 0x%x\n", v13);
    if (*(&gMccDebug + 1))
    {
      kprintf("%s:%d: Setting WayMask to 0x%x\n\n", "setWayMask", 965, v13);
    }
  }

  if (*(this + 517))
  {
    v16 = 0;
    do
    {
      AppleH15MemCacheController::_mccProtectedWriteReg32(this, this + 1016, v16++, 0x1C1C00u, 0);
    }

    while (v16 < *(this + 517));
  }

  AppleH15MemCacheController::_mccWaitForWaysPwrOn(this, 0);
  if (*(this + 517))
  {
    v17 = 0;
    do
    {
      AppleH15MemCacheController::_mccProtectedWriteReg32(this, this + 1016, v17++, 0x1C071Cu, 0);
      v18 = *(this + 517);
    }

    while (v17 < v18);
    if (v18)
    {
      for (i = 0; i < v20; ++i)
      {
        AppleH15MemCacheController::_mccProtectedWriteReg32(this, this + 1016, i, 0x1C1C08u, v13);
        v20 = *(this + 517);
      }

      if (v20)
      {
        for (j = 0; j < v14; ++j)
        {
          AppleH15MemCacheController::_mccProtectedWriteReg32(this, this + 1016, j, 0x1C071Cu, 1u);
          v14 = *(this + 517);
        }

LABEL_10:
        if (v14)
        {
          v15 = 0;
          do
          {
            AppleH15MemCacheController::_mccProtectedWriteReg32(this, this + 1016, v15++, 0x1C1C00u, 1u);
          }

          while (v15 < *(this + 517));
        }
      }
    }
  }

  AppleH15MemCacheController::_mccWaitForWaysPwrOn(this, 16);
  return 0;
}

uint64_t AppleH15MemCacheController::_mccProtectedWriteReg32(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4, unsigned int a5)
{
  if (!a2 || *(a1 + 2068) <= a3 || *(a2 + 16) <= a4)
  {
    AppleH15MemCacheController::_mccProtectedWriteReg32();
  }

  v8 = 24 * a3 + 8;
  v9 = (a2 + v8);
  if (v8 != v8)
  {
    v9 = ((a2 + v8) & 0xFFFFFFFFFFFFLL | 0x2BAD000000000000);
  }

  v10 = (*v9 + a4);
  if (gMccDebug >= 5u)
  {
    _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "amcc %u offset %#x @ %p <- %#x", a3, a4, (*v9 + a4), a5);
    if (*(&gMccDebug + 1))
    {
      kprintf("%s:%d: amcc %u offset %#x @ %p <- %#x\n", "_mccProtectedWriteReg32", 2102, a3, a4, v10, a5);
    }
  }

  return _pmap_iofilter_protected_write(v10, a5, 4);
}

uint64_t AppleH15MemCacheController::mccEnableCacheMode(AppleH15MemCacheController *this, int a2)
{
  v4 = AppleH15MemCacheController::mccEnableCacheMode(BOOL)::amcp_nolock;
  if (AppleH15MemCacheController::mccEnableCacheMode(BOOL)::amcp_nolock == -1)
  {
    if (!PE_parse_boot_argn("amcp_nolock", &AppleH15MemCacheController::mccEnableCacheMode(BOOL)::amcp_nolock, 4))
    {
      AppleH15MemCacheController::mccEnableCacheMode(BOOL)::amcp_nolock = 0;
      goto LABEL_7;
    }

    v4 = AppleH15MemCacheController::mccEnableCacheMode(BOOL)::amcp_nolock;
  }

  if (v4 == 1)
  {
    AppleH15MemCacheController::setWayMask(this);
    return 0;
  }

LABEL_7:
  if (*(this + 36))
  {
    v5 = a2 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    if (gMccDebug >= 3u)
    {
      _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Disabling Mem Cache start...");
      if (*(&gMccDebug + 1))
      {
        kprintf("%s:%d: Disabling Mem Cache start...\n", "mccEnableCacheMode", 1044);
      }
    }

    *(this + 526) = 0;
    if (*(this + 517))
    {
      v6 = 0;
      do
      {
        AppleH15MemCacheController::_mccProtectedWriteReg32(this, this + 1016, v6++, 0x1C1C00u, 0);
      }

      while (v6 < *(this + 517));
    }

    AppleH15MemCacheController::_mccWaitForWaysPwrOn(this, 0);
    if (gMccDebug > 2u)
    {
      _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Disabling Mem Cache finish...");
      if (*(&gMccDebug + 1))
      {
        kprintf("%s:%d: Disabling Mem Cache finish...\n");
      }
    }
  }

  else
  {
    if (gMccDebug >= 3u)
    {
      _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Enabling Mem Cache start...");
      if (*(&gMccDebug + 1))
      {
        kprintf("%s:%d: Enabling Mem Cache start...\n", "mccEnableCacheMode", 1033);
      }
    }

    if (*(this + 517))
    {
      v7 = 0;
      do
      {
        AppleH15MemCacheController::_mccProtectedWriteReg32(this, this + 1016, v7++, 0x1C1C00u, 1u);
      }

      while (v7 < *(this + 517));
    }

    AppleH15MemCacheController::_mccWaitForWaysPwrOn(this, 16);
    *(this + 524) = 0;
    *(this + 526) = 1;
    if (gMccDebug > 2u)
    {
      _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Enabling Mem Cache finish...");
      if (*(&gMccDebug + 1))
      {
        kprintf("%s:%d: Enabling Mem Cache finish...\n");
      }
    }
  }

  return 0;
}

uint64_t AppleH15MemCacheController::_mccSelectDynamicDRAMCFGMode(AppleH15MemCacheController *this, unsigned int a2)
{
  if (gMccDebug >= 5u)
  {
    _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "_mccSelectDynamicDRAMCFGMode() called with mode=%d\n", a2);
    if (*(&gMccDebug + 1))
    {
      kprintf("%s:%d: _mccSelectDynamicDRAMCFGMode() called with mode=%d\n\n", "_mccSelectDynamicDRAMCFGMode", 1064, a2);
    }
  }

  if (a2 < 2)
  {
    if (*(this + 354))
    {
      v5 = *(this + 514);
      if (a2)
      {
        if (v5)
        {
          v6 = 0;
          v7 = 4 * (a2 - 1);
          do
          {
            v8 = *(this + 516);
            v9 = v6 / v8;
            v10 = ((v6 % v8) << 21) + 4199368;
            v11 = *(this + 179);
            v12 = (v11 + v7);
            if (v7 != v7)
            {
              v12 = ((v11 + v7) & 0xFFFFFFFFFFFFLL | 0x2BAD000000000000);
            }

            AppleH15MemCacheController::_mccWriteReg32(this, this + 1016, v9, v10, *v12);
            ++v6;
          }

          while (v6 < *(this + 514));
        }
      }

      else if (v5)
      {
        v13 = 0;
        do
        {
          AppleH15MemCacheController::_mccWriteReg32(this, this + 1016, v13 / *(this + 516), ((v13 % *(this + 516)) << 21) + 4199368, *(*(this + 178) + 4 * v13));
          ++v13;
        }

        while (v13 < *(this + 514));
      }
    }

    return 0;
  }

  else
  {
    v4 = 3758097090;
    if (gMccDebug)
    {
      _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "_mccSelectDynamicDRAMCFGMode requested mode %u\n", a2);
      if (*(&gMccDebug + 1))
      {
        kprintf("%s:%d: _mccSelectDynamicDRAMCFGMode requested mode %u\n\n", "_mccSelectDynamicDRAMCFGMode", 1067, a2);
      }
    }
  }

  return v4;
}

void AppleH15MemCacheController::_mccWriteReg32(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4, int a5)
{
  if (!a2 || *(a1 + 2068) <= a3 || *(a2 + 16) <= a4)
  {
    AppleH15MemCacheController::_mccWriteReg32();
  }

  v8 = 24 * a3;
  v9 = a2 + v8;
  if (((a2 ^ (a2 + v8)) & 0xFFC0000000000000) != 0)
  {
    v9 = v9 & 0xFFFFFFFFFFFFLL | 0xC8A2000000000000;
  }

  v10 = (*(v9 + 8) + a4);
  if (gMccDebug >= 5u)
  {
    _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "amcc %u offset %#x @ %p <- %#x", a3, a4, v10, a5);
    if (*(&gMccDebug + 1))
    {
      kprintf("%s:%d: amcc %u offset %#x @ %p <- %#x\n", "_mccWriteReg32", 2087, a3, a4, v10, a5);
    }
  }

  *v10 = a5;
}

uint64_t AppleH15MemCacheController::_mccSelectDCSDynamicClockGateMode(AppleH15MemCacheController *this, unsigned int a2)
{
  if (a2 < 2)
  {
    if (gMccDebug >= 3u)
    {
      _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Setting DCS clock gate mode to %d\n", a2);
      if (*(&gMccDebug + 1))
      {
        kprintf("%s:%d: Setting DCS clock gate mode to %d\n\n", "_mccSelectDCSDynamicClockGateMode", 1108, a2);
      }
    }

    if (*(this + 514))
    {
      v5 = 0;
      v6 = 4352 * a2;
      do
      {
        v7 = *(this + 516);
        v8 = v5 / v7;
        v9 = ((v5 % v7) << 21) + 4194328;
        Reg32 = AppleH15MemCacheController::_mccReadReg32(this, this + 1016, v5 / v7, v9);
        AppleH15MemCacheController::_mccWriteReg32(this, this + 1016, v8, v9, (Reg32 & 0xFFFFEEFF) + v6);
        ++v5;
      }

      while (v5 < *(this + 514));
    }

    return 0;
  }

  else
  {
    v3 = 3758097090;
    if (gMccDebug)
    {
      _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "_mccSelectDCSDynamicClockGateMode: requested mode %u\n", a2);
      if (*(&gMccDebug + 1))
      {
        kprintf("%s:%d: _mccSelectDCSDynamicClockGateMode: requested mode %u\n\n", "_mccSelectDCSDynamicClockGateMode", 1104, a2);
      }
    }
  }

  return v3;
}

void AppleH15MemCacheController::_mccMaskedRMWReg32(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4, int a5, int a6)
{
  v10 = AppleH15MemCacheController::_mccReadReg32(a1, a2, a3, a4) & ~a5 | a6 & a5;

  AppleH15MemCacheController::_mccWriteReg32(a1, a2, a3, a4, v10);
}

uint64_t AppleH15MemCacheController::_mccSelectMCCDynamicClockGateMode(AppleH15MemCacheController *this, unsigned int a2)
{
  if (a2 < 2)
  {
    if (gMccDebug >= 3u)
    {
      _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Setting MCC clock gate mode to %d\n", a2);
      if (*(&gMccDebug + 1))
      {
        kprintf("%s:%d: Setting MCC clock gate mode to %d\n\n", "_mccSelectMCCDynamicClockGateMode", 1129, a2);
      }
    }

    if (*(this + 517))
    {
      v5 = 0;
      v6 = 805306368 * a2;
      do
      {
        Reg32 = AppleH15MemCacheController::_mccReadReg32(this, this + 1016, v5, 0x100004u);
        AppleH15MemCacheController::_mccWriteReg32(this, this + 1016, v5++, 0x100004u, Reg32 & 0xCFFFFFFF | v6);
      }

      while (v5 < *(this + 517));
    }

    return 0;
  }

  else
  {
    v3 = 3758097090;
    if (gMccDebug)
    {
      _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "_mccSelectMCCDynamicClockGateMode: unsupported mode %u\n", a2);
      if (*(&gMccDebug + 1))
      {
        kprintf("%s:%d: _mccSelectMCCDynamicClockGateMode: unsupported mode %u\n\n", "_mccSelectMCCDynamicClockGateMode", 1125, a2);
      }
    }
  }

  return v3;
}

uint64_t AppleH15MemCacheController::_mccSelectMCCDynamicPowerGateMode(AppleH15MemCacheController *this, unsigned int a2)
{
  if (a2 < 2)
  {
    if (gMccDebug >= 3u)
    {
      _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Setting MCC power gate mode to %d\n", a2);
      if (*(&gMccDebug + 1))
      {
        kprintf("%s:%d: Setting MCC power gate mode to %d\n\n", "_mccSelectMCCDynamicPowerGateMode", 1148, a2);
      }
    }

    if (*(this + 517))
    {
      v5 = 0;
      v6 = (a2 << 29) | 0x10000000;
      do
      {
        Reg32 = AppleH15MemCacheController::_mccReadReg32(this, this + 1016, v5, 0x100004u);
        AppleH15MemCacheController::_mccWriteReg32(this, this + 1016, v5++, 0x100004u, Reg32 & 0xCFFFFFFF | v6);
      }

      while (v5 < *(this + 517));
    }

    return 0;
  }

  else
  {
    v3 = 3758097090;
    if (gMccDebug)
    {
      _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "_mccSelectMCCDynamicPowerGateMode: unsupported mode %u\n", a2);
      if (*(&gMccDebug + 1))
      {
        kprintf("%s:%d: _mccSelectMCCDynamicPowerGateMode: unsupported mode %u\n\n", "_mccSelectMCCDynamicPowerGateMode", 1144, a2);
      }
    }
  }

  return v3;
}

uint64_t AppleH15MemCacheController::_mccSelectDCSDynamicPowerGateMode(AppleH15MemCacheController *this, unsigned int a2)
{
  if (a2 < 2)
  {
    if (gMccDebug >= 3u)
    {
      _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Setting DCS power gate mode to %d\n", a2);
      if (*(&gMccDebug + 1))
      {
        kprintf("%s:%d: Setting DCS power gate mode to %d\n\n", "_mccSelectDCSDynamicPowerGateMode", 1171, a2);
      }
    }

    if (*(this + 514))
    {
      v5 = 0;
      v6 = (a2 << 12) | 0x100;
      do
      {
        v7 = *(this + 516);
        v8 = v5 / v7;
        v9 = ((v5 % v7) << 21) + 4194328;
        Reg32 = AppleH15MemCacheController::_mccReadReg32(this, this + 1016, v5 / v7, v9);
        AppleH15MemCacheController::_mccWriteReg32(this, this + 1016, v8, v9, Reg32 & 0xFFFFEEFF | v6);
        ++v5;
      }

      while (v5 < *(this + 514));
    }

    return 0;
  }

  else
  {
    v3 = 3758097090;
    if (gMccDebug)
    {
      _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "requested mode %u", a2);
      if (*(&gMccDebug + 1))
      {
        kprintf("%s:%d: requested mode %u\n", "_mccSelectDCSDynamicPowerGateMode", 1167, a2);
      }
    }
  }

  return v3;
}

void AppleH15MemCacheController::_dcsWriteQueueFlush(AppleH15MemCacheController *this)
{
  OSSynchronizeIO();
  if (*(this + 514))
  {
    v2 = 0;
    do
    {
      v3 = *(this + 516);
      v4 = v2 / v3;
      v5 = ((v2 % v3) << 21) + 4196928;
      v6 = AppleH15MemCacheController::_mccReadReg32(this, this + 1016, v2 / v3, v5) & 0xFFFF0000;
      AppleH15MemCacheController::_mccWriteReg32(this, this + 1016, v4, v5, v6);
      ++v2;
    }

    while (v2 < *(this + 514));
  }

  IODelay(0x14Au);

  OSSynchronizeIO();
}

void AppleH15MemCacheController::_mccDramAccessDisable(AppleH15MemCacheController *this)
{
  if ((gMccDebug & 0xFC) != 0)
  {
    _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Disabling DRAM access...\n");
    if (*(&gMccDebug + 1))
    {
      kprintf("%s:%d: Disabling DRAM access...\n\n", "_mccDramAccessDisable", 1252);
    }
  }

  OSSynchronizeIO();
  if (*(this + 513))
  {
    v2 = 0;
    do
    {
      *(*(this + v2++ + 274) + 12) = 1;
    }

    while (*(this + 513) > v2);
  }

  OSSynchronizeIO();
}

void AppleH15MemCacheController::setMuiSsbCtrl(AppleH15MemCacheController *this, int a2)
{
  if (a2)
  {
    if (a2 != 1)
    {
      AppleH15MemCacheController::setMuiSsbCtrl();
    }

    v3 = *(this + 1105) << 16;
  }

  else
  {
    v3 = *(this + 552);
  }

  if (*(this + 517))
  {
    v4 = 0;
    do
    {
      AppleH15MemCacheController::_mccProtectedWriteReg32(this, this + 1016, v4++, 0x1C1000u, v3);
      v5 = *(this + 517);
    }

    while (v4 < v5);
    if (v5)
    {
      v6 = 0;
      v7 = *(this + 515);
      do
      {
        if (v7)
        {
          v8 = 0;
          v9 = 4096;
          do
          {
            if (v3 != AppleH15MemCacheController::_mccReadReg32(this, this + 1016, v6, v9))
            {
              AppleH15MemCacheController::setMuiSsbCtrl();
            }

            ++v8;
            v7 = *(this + 515);
            v9 += 0x40000;
          }

          while (v8 < v7);
          v5 = *(this + 517);
        }

        ++v6;
      }

      while (v6 < v5);
    }
  }

  if ((gMccDebug & 0xFC) != 0)
  {
    _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%s: Wrote DIE_0.amcc0.plane_x.AmccMui.AmccMui.MuiSsbCtrl reg_val = 0x%x\n", "setMuiSsbCtrl", v3);
    if (*(&gMccDebug + 1))
    {
      kprintf("%s:%d: %s: Wrote DIE_0.amcc0.plane_x.AmccMui.AmccMui.MuiSsbCtrl reg_val = 0x%x\n\n", "setMuiSsbCtrl", 1309, "setMuiSsbCtrl", v3);
    }
  }
}

void AppleH15MemCacheController::dcsODTSReadWorkaround(AppleH15MemCacheController *this, int a2)
{
  if (a2 == 1)
  {

    AppleH15MemCacheController::setMuiSsbCtrl(this, 0);
  }

  else
  {
    if (a2)
    {
      AppleH15MemCacheController::dcsODTSReadWorkaround();
    }

    *(this + 552) = AppleH15MemCacheController::_mccReadReg32(this, this + 1016, 0, 0x1000u);
    AppleH15MemCacheController::setMuiSsbCtrl(this, 1);
    if (*(this + 514))
    {
      v3 = 0;
      do
      {
        Reg32 = AppleH15MemCacheController::_mccReadReg32(this, this + 1016, v3 / *(this + 516), ((v3 % *(this + 516)) << 21) + 4195388);
        ++v3;
      }

      while (v3 < *(this + 514));
      v5 = (429496730 * (1536 * (Reg32 & 0x3FFu))) >> 32;
    }

    else
    {
      LODWORD(v5) = 0;
    }

    IODelay(v5);
    if ((gMccDebug & 0xFC) != 0)
    {
      _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%s: Waited for odts_read_interval_us = %d us\n", "dcsODTSReadWorkaround", v5);
      if (*(&gMccDebug + 1))
      {
        kprintf("%s:%d: %s: Waited for odts_read_interval_us = %d us\n\n", "dcsODTSReadWorkaround", 1350, "dcsODTSReadWorkaround", v5);
      }
    }
  }
}

uint64_t AppleH15MemCacheController::getMaxOfDCSODTSReadings(AppleH15MemCacheController *this, BOOL *a2)
{
  memset(v13, 0, 30);
  if (*(this + 2213))
  {
    AppleH15MemCacheController::dcsODTSReadWorkaround(this, 0);
  }

  if (!*(this + 514))
  {
    if ((*(this + 2213) & 1) == 0)
    {
      LOBYTE(a2) = 0;
      return a2;
    }

    AppleH15MemCacheController::setMuiSsbCtrl(this, 0);
    LOBYTE(a2) = 0;
    goto LABEL_36;
  }

  v11 = a2;
  v4 = 0;
  LOBYTE(a2) = 0;
  LOBYTE(v5) = 0;
  while (1)
  {
    v6 = *(this + 516);
    v7 = v4 / v6;
    v8 = ((v4 % v6) << 21) + 4195356;
    Reg32 = AppleH15MemCacheController::_mccReadReg32(this, this + 1016, v4 / v6, v8);
    if ((*(this + 2213) & 1) == 0 && (Reg32 & 0x1F) == 0xD)
    {
      IODelay(2u);
      Reg32 = AppleH15MemCacheController::_mccReadReg32(this, this + 1016, v7, v8);
      if ((Reg32 & 0x1F) == 0xD)
      {
        IODelay(0xFu);
        Reg32 = AppleH15MemCacheController::_mccReadReg32(this, this + 1016, v7, v8);
      }
    }

    v9 = Reg32 & 0x1F;
    if (v9 > a2)
    {
      LOBYTE(a2) = Reg32 & 0x1F;
    }

    if (*(this + 554))
    {
      v5 = (Reg32 >> 5) & 0x1F;
      if (v5 > a2)
      {
        LODWORD(a2) = (Reg32 >> 5) & 0x1F;
      }
    }

    if (a2 != 13)
    {
      if ((gMccDebug & 0xFC) != 0)
      {
        _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "getMaxOfDCSODTSReadings is %d with ODTS register 0x%#x and individual readings: [dcs=%d, cs0=%d, cs1=%d%s]", a2, Reg32, v4, Reg32 & 0x1F, v5, v13);
        if (*(&gMccDebug + 1))
        {
          kprintf("%s:%d: getMaxOfDCSODTSReadings is %d with ODTS register 0x%#x and individual readings: [dcs=%d, cs0=%d, cs1=%d%s]\n", "getMaxOfDCSODTSReadings", 1505, a2, Reg32, v4, v9, v5, v13);
        }
      }

      goto LABEL_23;
    }

    if (gMccDebug)
    {
      _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "getMaxOfDCSODTSReadings is %d with ODTS register 0x%#x and individual readings: [dcs=%d, cs0=%d, cs1=%d%s]", 13, Reg32, v4, Reg32 & 0x1F, v5, v13);
      if (*(&gMccDebug + 1))
      {
        kprintf("%s:%d: getMaxOfDCSODTSReadings is %d with ODTS register 0x%#x and individual readings: [dcs=%d, cs0=%d, cs1=%d%s]\n", "getMaxOfDCSODTSReadings", 1503, 13, Reg32, v4, v9, v5, v13);
      }
    }

    if ((*(this + 2213) & 1) == 0)
    {
      break;
    }

LABEL_23:
    if (++v4 >= *(this + 514))
    {
      goto LABEL_27;
    }
  }

  *v11 = 0;
LABEL_27:
  if (*(this + 2213))
  {
    AppleH15MemCacheController::setMuiSsbCtrl(this, 0);
    if (a2 == 13)
    {
      if (*(this + 2212) <= 0xBu)
      {
        if (gMccDebug)
        {
          _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Detected a jump in ODTS to 0xd\n");
          if (*(&gMccDebug + 1))
          {
            kprintf("%s:%d: Detected a jump in ODTS to 0xd\n\n", "getMaxOfDCSODTSReadings", 1521);
          }
        }

        LOBYTE(a2) = *(this + 2212);
        *(this + 2212) = 13;
        return a2;
      }

      LOBYTE(a2) = 13;
    }

LABEL_36:
    *(this + 2212) = a2;
  }

  return a2;
}

void AppleH15MemCacheController::_mccWriteReg64(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4, uint64_t a5)
{
  if (!a2 || *(a1 + 2068) <= a3 || *(a2 + 16) <= a4)
  {
    AppleH15MemCacheController::_mccWriteReg64();
  }

  v8 = 24 * a3;
  v9 = a2 + v8;
  if (((a2 ^ (a2 + v8)) & 0xFFC0000000000000) != 0)
  {
    v9 = v9 & 0xFFFFFFFFFFFFLL | 0xC8A2000000000000;
  }

  v10 = (*(v9 + 8) + a4);
  if (gMccDebug >= 5u)
  {
    _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "amcc %u offset %#x @ %p <- %#llx", a3, a4, v10, a5);
    if (*(&gMccDebug + 1))
    {
      kprintf("%s:%d: amcc %u offset %#x @ %p <- %#llx\n", "_mccWriteReg64", 2116, a3, a4, v10, a5);
    }
  }

  *v10 = a5;
}

_DWORD *AppleH15MemCacheController::_setCntrCtrlParmeters(_DWORD *a1, uint64_t a2, unsigned int a3)
{
  v4 = 160 * a3;
  v5 = a2 + v4;
  if (v4 != v4)
  {
    v5 = (a2 + v4) & 0xFFFFFFFFFFFFLL | 0x2BAD000000000000;
  }

  *(v5 + 120) = ++AppleH15MemCacheController::_setCntrCtrlParmeters(AppleH15MemCacheController::AMCCCounterConfig *,unsigned int)::channelId;
  result = (v5 + 4);
  v7 = *(v5 + 4);
  if (v7 <= 8)
  {
    if (v7 > 6)
    {
      if (v7 == 7)
      {
        *v5 = *v5 & 0xF9 | 2;
        *(v5 + 52) = 32 * a1[514];
        *(v5 + 64) = 5;
        v31 = *(v5 + 24);
        *(v5 + 32) = 1 << v31;
        *(v5 + 44) = 20 * v31 + 1420;
        *(v5 + 48) = 8 * v31;
        return result;
      }

      *v5 = *v5 & 0xF9 | 4;
      *(v5 + 52) = 1;
      *(v5 + 64) = 5;
      v20 = *(v5 + 24);
      *(v5 + 32) = 1 << v20;
      v21 = 20 * v20 + 1420;
      v19 = 8 * v20;
      goto LABEL_48;
    }

    if ((v7 - 1) >= 6)
    {
      if (!v7)
      {
        *v5 = *v5 & 0xF9 | 2;
        v22 = a1[514];
        v23 = *(v5 + 52);
        v24 = *(v5 + 56);
        if (v23 <= 1)
        {
          v23 = 1;
        }

        *(v5 + 52) = v22 * v23;
        *(v5 + 64) = 2;
        v25 = *&v24 & 0xFFFFFLL | ((*(v5 + 60) & 0xFFFFF) << 20);
        *(v5 + 72) = v25 | 0x10000000000000;
        *(v5 + 80) = 0xFF000000000;
        v26 = *(v5 + 8);
        if (v26 >= 3)
        {
          panic("Counter type %d is not supported on counter index %d\\n @%s:%d", *(v5 + 8), a3, "AppleH15MemCacheController.cpp", 1689);
        }

        *(v5 + 72) = (v25 | (v26 << 56)) + 0x110000000000000;
        v27 = *(v5 + 24);
        *(v5 + 32) = 1 << v27;
        *(v5 + 28) = 0x8000;
        *(v5 + 44) = vadd_s32(vshl_u32(vdup_n_s32(v27), 0x300000004), 0x900000008010);
      }

      return result;
    }

    *v5 = *v5 & 0xF9 | 2;
    v11 = a1[517];
    v12 = *(v5 + 52);
    v13 = *(v5 + 56);
    if (v12 <= 1)
    {
      v12 = 1;
    }

    *(v5 + 52) = v11 * v12;
    *(v5 + 64) = 2;
    v14 = *(v5 + 24);
    *(v5 + 32) = 1 << v14;
    v15 = *(v5 + 8);
    *(v5 + 72) = *&v13 & 0xFFFFFLL | ((*(v5 + 60) & 0xFFFFF) << 20) | ((*(v5 + 12) & 0x7FFFF) << 40) | 0x1000000000000000;
    *(v5 + 80) = 0xFF000000000;
    if (v15 >= 3)
    {
      panic("Unsupported counter config type %d on counter index %d\\n @%s:%d", *(v5 + 8), a3, "AppleH15MemCacheController.cpp", 1636);
    }

    v16 = (v15 << 48) + 0x10FF000000000;
    *(v5 + 80) = v16;
    *(v5 + 44) = vadd_s32(vshl_u32(vdup_n_s32(v14), 0x300000004), 0x900000008008);
    if (v7 > 4)
    {
      if ((v7 - 5) < 2)
      {
        v17 = v16 | 0x10000000000000;
        goto LABEL_42;
      }
    }

    else
    {
      switch(v7)
      {
        case 1:
          return result;
        case 2:
          v17 = v16 | 0x20000000000000;
          goto LABEL_42;
        case 3:
          v17 = v16 | 0x30000000000000;
LABEL_42:
          *(v5 + 80) = v17;
          return result;
      }
    }

    panic("Unsupported amcx type %d on counter index %d\\n @%s:%d", *result, a3, "AppleH15MemCacheController.cpp", 1660);
  }

  if (v7 <= 12)
  {
    if ((v7 - 9) < 2)
    {
      *v5 = *v5 & 0xF9 | 2;
      *(v5 + 52) = 1;
      return result;
    }

    if (v7 != 11)
    {
      if (v7 != 12)
      {
        return result;
      }

      *v5 = *v5 & 0xF9 | 2;
      v18 = (a1[515] * a1[517]) << 6;
      *(v5 + 64) = 0;
      v19 = 8 * *(v5 + 24) + 45160;
      *(v5 + 52) = v18;
      goto LABEL_49;
    }

    *v5 = *v5 & 0xF9 | 4;
    *(v5 + 52) = 1;
    *(v5 + 64) = 1;
    v21 = 1416;
    v19 = 8 * *(v5 + 24) + 80;
LABEL_48:
    *(v5 + 44) = v21;
LABEL_49:
    *(v5 + 48) = v19;
    return result;
  }

  if ((v7 - 13) < 6)
  {
    *v5 &= 0xF9u;
    *(v5 + 52) = 1;
    *(v5 + 64) = 2;
    v8 = *(v5 + 24);
    *(v5 + 32) = 1 << v8;
    *(v5 + 28) = 34816;
    v9 = *(v5 + 8);
    if (v9 >= 3)
    {
      AppleH15MemCacheController::_setCntrCtrlParmeters((v5 + 8));
    }

    v10 = (v9 << 48) + 0x1000000000000;
    *(v5 + 80) = v10;
    if (v7 > 16)
    {
      if ((v7 - 17) < 2)
      {
        v10 |= 0x10000000000000uLL;
        goto LABEL_44;
      }
    }

    else
    {
      switch(v7)
      {
        case 13:
LABEL_44:
          v29 = *(v5 + 56) & 0xFFFFFLL | ((*(v5 + 60) & 0xFFFFF) << 20) | *(v5 + 72);
          v30 = v10 | 0xFF000000000;
LABEL_45:
          *(v5 + 72) = v29;
          *(v5 + 80) = v30;
          *(v5 + 44) = 16 * v8 + 34904;
          return result;
        case 14:
          v10 |= 0x20000000000000uLL;
          goto LABEL_44;
        case 15:
          v10 |= 0x30000000000000uLL;
          goto LABEL_44;
      }
    }

    AppleH15MemCacheController::_setCntrCtrlParmeters(result);
  }

  if (v7 == 19)
  {
    *v5 &= 0xF9u;
    *(v5 + 52) = 1;
    *(v5 + 64) = 2;
    v8 = *(v5 + 24);
    *(v5 + 32) = 1 << v8;
    *(v5 + 28) = 34816;
    v28 = *(v5 + 8);
    if (v28 >= 3)
    {
      AppleH15MemCacheController::_setCntrCtrlParmeters((v5 + 8));
    }

    v29 = (*(v5 + 56) & 0xFFFFFLL | ((*(v5 + 60) & 0xFFFFF) << 20) | (v28 << 56)) + 0x100000000000000;
    v30 = 0xFF000000000;
    goto LABEL_45;
  }

  return result;
}

void AppleH15MemCacheController::_writePerfCtrl(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4)
{
  v5 = a1;
  v6 = 160 * a3;
  v7 = (a2 + v6);
  if (v6 != v6)
  {
    v7 = ((a2 + v6) & 0xFFFFFFFFFFFFLL | 0x2BAD000000000000);
  }

  v8 = v7[1];
  if (v8 <= 10)
  {
    if ((v8 - 1) >= 6)
    {
      if ((v8 - 7) < 2)
      {
        v11 = v7[4];
        v14 = a1 + 1016;
        v25 = 2 * a4;
        v26 = (v7 + (8 * a4) + 72);
        if (v25 != 2 * a4)
        {
          v26 = (&v7[v25 + 18] & 0xFFFFFFFFFFFFLL | 0x2BAD000000000000);
        }

        v13 = *v26;
        v12 = (v7[5] << 21) + 4 * a4 + v7[11] + 0x400000;
LABEL_26:

        AppleH15MemCacheController::_mccWriteReg32(a1, v14, v11, v12, v13);
        return;
      }

      if (v8)
      {
        return;
      }

      v16 = v7[4];
      v15 = a1 + 1016;
      v27 = 2 * a4;
      v28 = (v7 + (8 * a4) + 72);
      if (v27 != 2 * a4)
      {
        v28 = (&v7[v27 + 18] & 0xFFFFFFFFFFFFLL | 0x2BAD000000000000);
      }

      v19 = *v28;
      v20 = (v7[5] << 18) + 8 * a4 + v7[11] + 114688;
    }

    else
    {
      v15 = a1 + 1016;
      v16 = v7[4];
      v17 = 2 * a4;
      v18 = (v7 + (8 * a4) + 72);
      if (v17 != 2 * a4)
      {
        v18 = (&v7[v17 + 18] & 0xFFFFFFFFFFFFLL | 0x2BAD000000000000);
      }

      v19 = *v18;
      v20 = v7[11] + 8 * a4 + 1376256;
    }

    goto LABEL_31;
  }

  if (v8 <= 16)
  {
    if ((v8 - 13) >= 3)
    {
      if (v8 != 11)
      {
        return;
      }

      v9 = v7[11] + (v7[5] << 21);
      Reg32 = AppleH15MemCacheController::_mccReadReg32(a1, a1 + 1016, v7[4], v9 + 0x400000);
      v11 = v7[4];
      v12 = v9 + 0x400000;
      v13 = v7[10] | Reg32;
      a1 = v5;
      v14 = v5 + 1016;
      goto LABEL_26;
    }

    goto LABEL_18;
  }

  if (v8 == 17)
  {
LABEL_18:
    v23 = 2 * a4;
    v24 = (v7 + (8 * a4) + 72);
    if (v23 != 2 * a4)
    {
      v24 = (&v7[v23 + 18] & 0xFFFFFFFFFFFFLL | 0x2BAD000000000000);
    }

    AppleH15MemCacheController::_mccWriteReg64(a1, a1 + 1016, v7[4], v7[11] + 8 * a4 + 1376256, *v24);
    if (v7[6] | a4)
    {
      return;
    }

    v16 = v7[4];
    a1 = v5;
    v15 = v5 + 1016;
    v20 = 1411096;
    goto LABEL_30;
  }

  if (v8 == 19)
  {
    v21 = 8 * a4;
    v22 = (v7 + v21 + 72);
    if (v21 != v21)
    {
      v22 = (&v7[v21 / 4 + 18] & 0xFFFFFFFFFFFFLL | 0x2BAD000000000000);
    }

    AppleH15MemCacheController::_mccWriteReg64(a1, a1 + 1016, v7[4], (v7[5] << 18) + 8 * a4 + v7[11] + 114688, *v22);
    if (!(v7[6] | a4))
    {
      v16 = v7[4];
      v20 = (v7[5] << 18) | 0x24810;
      a1 = v5;
      v15 = v5 + 1016;
LABEL_30:
      v19 = 0x103FFF00000000;
LABEL_31:

      AppleH15MemCacheController::_mccWriteReg64(a1, v15, v16, v20, v19);
    }
  }
}

void AppleH15MemCacheController::_enablePerfCtrl(uint64_t a1, uint64_t a2, unsigned int a3, int a4)
{
  v8 = 160 * a3;
  v9 = a2 + v8;
  if (v8 != v8)
  {
    v9 = (a2 + v8) & 0xFFFFFFFFFFFFLL | 0x2BAD000000000000;
  }

  if ((gMccDebug & 0xFC) != 0)
  {
    _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "_enablePerfCtrl counter:%d enable:%d\n", a3, a4);
    if (*(&gMccDebug + 1))
    {
      kprintf("%s:%d: _enablePerfCtrl counter:%d enable:%d\n\n", "_enablePerfCtrl", 2286, a3, a4);
    }
  }

  if (a4)
  {
    v10 = *(v9 + 144);
    if (v10 > AppleH15MemCacheController::_readPerfValue(a1, a2, a3))
    {
      *(v9 + 136) = *(v9 + 144);
    }
  }

  v11 = *(v9 + 4);
  if (v11 <= 8)
  {
    if ((v11 - 1) < 6)
    {
      Reg64 = AppleH15MemCacheController::_mccReadReg64(a1, a1 + 1016, *(v9 + 16), 0x158000u);
      v13 = *(v9 + 32);
      v14 = Reg64 & ~v13;
      if (!a4)
      {
        v13 = 0;
      }

      v15 = *(v9 + 16);
      v16 = v14 | v13;
      v17 = a1;
      v18 = a1 + 1016;
      v19 = 1409024;
      goto LABEL_52;
    }

    if ((v11 - 7) < 2)
    {
      v25 = *(v9 + 20) << 21;
      if (a4)
      {
        AppleH15MemCacheController::_mccWriteReg32(a1, a1 + 1016, *(v9 + 16), v25 + 4195712, 113);
      }

      v26 = a1 + 1016;
      Reg32 = AppleH15MemCacheController::_mccReadReg32(a1, a1 + 1016, *(v9 + 16), v25 + 4195716);
      v28 = *(v9 + 32);
      v29 = Reg32 & ~v28;
      if (!a4)
      {
        v28 = 0;
      }

      v30 = *(v9 + 16);
      v31 = v25 + 4195716;
      v32 = v29 | v28;
LABEL_46:
      AppleH15MemCacheController::_mccWriteReg32(a1, v26, v30, v31, v32);
      goto LABEL_53;
    }

    if (v11)
    {
      goto LABEL_53;
    }

    goto LABEL_48;
  }

  if (v11 > 12)
  {
    if ((v11 - 13) < 3 || v11 == 17)
    {
      v21 = a1 + 1016;
      v22 = AppleH15MemCacheController::_mccReadReg64(a1, a1 + 1016, *(v9 + 16), 0x158800u);
      v23 = *(v9 + 32);
      v24 = v22 & ~v23;
      if (!a4)
      {
        v23 = 0;
      }

      v15 = *(v9 + 16);
      v19 = 1411072;
      goto LABEL_51;
    }

    if (v11 != 19)
    {
      goto LABEL_53;
    }

LABEL_48:
    v41 = *(v9 + 28) + (*(v9 + 20) << 18);
    v21 = a1 + 1016;
    v42 = AppleH15MemCacheController::_mccReadReg64(a1, a1 + 1016, *(v9 + 16), v41 + 114688);
    v23 = *(v9 + 32);
    v24 = v42 & ~v23;
    if (!a4)
    {
      v23 = 0;
    }

    v15 = *(v9 + 16);
    v19 = v41 + 114688;
LABEL_51:
    v16 = v24 | v23;
    v17 = a1;
    v18 = v21;
LABEL_52:
    AppleH15MemCacheController::_mccWriteReg64(v17, v18, v15, v19, v16);
    goto LABEL_53;
  }

  if ((v11 - 9) >= 2)
  {
    if (v11 != 11)
    {
      goto LABEL_53;
    }

    v35 = *(v9 + 44) + (*(v9 + 20) << 21);
    v26 = a1 + 1016;
    v36 = AppleH15MemCacheController::_mccReadReg32(a1, a1 + 1016, *(v9 + 16), v35 + 0x400000);
    v37 = 10;
    while (1)
    {
      v38 = *(v9 + 40);
      if ((v38 & v36) == 0)
      {
        break;
      }

      v36 = AppleH15MemCacheController::_mccReadReg32(a1, a1 + 1016, *(v9 + 16), v35 + 0x400000);
      IODelay(2u);
      if (!--v37)
      {
        v38 = *(v9 + 40);
        break;
      }
    }

    if ((v38 & v36) != 0)
    {
      AppleH15MemCacheController::_enablePerfCtrl(v9);
    }

    v39 = *(v9 + 32);
    v40 = v36 & ~v39;
    if (!a4)
    {
      v39 = 0;
    }

    v30 = *(v9 + 16);
    v31 = v35 + 0x400000;
    v32 = v39 | v40;
    goto LABEL_46;
  }

  for (i = 0; i != 6; ++i)
  {
    v34 = *(v9 + 72 + 8 * i);
    if (v34 == -1)
    {
      break;
    }

    if (v34 >= a3)
    {
      panic("Unexpected perfcntrctl value at index %d for counter %d\\n @%s:%d", i, a3, "AppleH15MemCacheController.cpp", 2384);
    }
  }

LABEL_53:
  if ((a4 & 1) == 0)
  {
    *(v9 + 144) = AppleH15MemCacheController::_readPerfValue(a1, a2, a3);
  }
}

unint64_t AppleH15MemCacheController::_mccSamplePerfCounter(uint64_t a1, uint64_t a2, unsigned int a3, unint64_t *a4)
{
  v6 = 160 * a3;
  v7 = a2 + v6;
  if (v6 != v6)
  {
    v7 = (a2 + v6) & 0xFFFFFFFFFFFFLL | 0x2BAD000000000000;
  }

  result = AppleH15MemCacheController::_readPerfValue(a1, a2, a3);
  v9 = result * *(v7 + 52);
  *(v7 + 152) = v9;
  if (*(v7 + 4) == 12)
  {
    v10 = 2152;
  }

  else if ((*v7 & 2) != 0)
  {
    v10 = 2136;
  }

  else
  {
    if ((*v7 & 4) == 0)
    {
      return result;
    }

    v10 = 2144;
  }

  v11 = (a1 + v10);
  v12 = *v11;
  if (*v11)
  {
    result = IOSimpleReporter::setValue(*v11, *(v7 + 120), v9);
    if (a4)
    {
      result = IOSimpleReporter::getValue(v12, *(v7 + 120));
      *a4 = result;
    }
  }

  return result;
}

unint64_t AppleH15MemCacheController::_readPerfValue(uint64_t a1, uint64_t a2, unsigned int a3)
{
  Reg64 = 0;
  v5 = 160 * a3;
  v6 = a2 + v5;
  if (v5 != v5)
  {
    v6 = (a2 + v5) & 0xFFFFFFFFFFFFLL | 0x2BAD000000000000;
  }

  v7 = *(v6 + 4);
  if (v7 > 6)
  {
    if (v7 > 10)
    {
      if (v7 == 11)
      {
        Reg64 = AppleH15MemCacheController::_mccReadReg64(a1, a1 + 1016, *(v6 + 16), *(v6 + 48) + (*(v6 + 20) << 21) + 4210688) / 0x18uLL;
        return *(v6 + 136) + Reg64;
      }

      if (v7 != 12)
      {
        return *(v6 + 136) + Reg64;
      }

      goto LABEL_20;
    }

    if ((v7 - 7) < 2)
    {
      v9 = *(v6 + 16);
      v8 = a1 + 1016;
      v10 = *(v6 + 48) + (*(v6 + 20) << 21) + 4210688;
      goto LABEL_21;
    }

    if ((v7 - 9) < 2)
    {
      v11 = 0;
      Reg64 = 0;
      do
      {
        v12 = *(v6 + 72 + v11);
        if (v12 == -1)
        {
          break;
        }

        v13 = 160 * v12 + 152;
        v14 = (a2 + v13);
        if (v13 != v13)
        {
          v14 = ((a2 + v13) & 0xFFFFFFFFFFFFLL | 0x2BAD000000000000);
        }

        v11 += 8;
        Reg64 += *v14;
      }

      while (v11 != 48);
    }
  }

  else
  {
    if ((v7 - 1) < 6)
    {
      v8 = a1 + 1016;
      v9 = *(v6 + 16);
      v10 = *(v6 + 48) + 1376256;
LABEL_21:
      Reg64 = AppleH15MemCacheController::_mccReadReg64(a1, v8, v9, v10);
      return *(v6 + 136) + Reg64;
    }

    if (!v7)
    {
LABEL_20:
      v9 = *(v6 + 16);
      v8 = a1 + 1016;
      v10 = *(v6 + 48) + (*(v6 + 20) << 18) + 114688;
      goto LABEL_21;
    }
  }

  return *(v6 + 136) + Reg64;
}

uint64_t AppleH15MemCacheController::configureReport(IOReporter **this, OSSet *a2, IOReportChannelList *a3, void *a4, void *a5)
{
  current_task();
  if (!IOTaskHasEntitlement() || (result = IOReporter::configureAllReports(this[270], a2, a3, a4, a5, v10), !result))
  {

    return (v12)(this, a2, a3, a4, a5);
  }

  return result;
}

uint64_t AppleH15MemCacheController::updateReport(IOReporter **this, OSSet *a2, IOReportChannelList *a3, void *a4, void *a5)
{
  current_task();
  if (!IOTaskHasEntitlement() || (AppleH15MemCacheController::_mccSampleAllPerfCounters(this, 0), result = IOReporter::updateAllReports(this[270], a2, a3, a4, a5, v10), !result))
  {

    return (v12)(this, a2, a3, a4, a5);
  }

  return result;
}

uint64_t AppleH15MemCacheController::_mccReadReg64(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4)
{
  if (!a2 || *(a1 + 2068) <= a3 || *(a2 + 16) <= a4)
  {
    AppleH15MemCacheController::_mccReadReg64();
  }

  v6 = 24 * a3;
  v7 = a2 + v6;
  if (((a2 ^ (a2 + v6)) & 0xFFC0000000000000) != 0)
  {
    v7 = v7 & 0xFFFFFFFFFFFFLL | 0xC8A2000000000000;
  }

  v8 = (*(v7 + 8) + a4);
  v9 = *v8;
  if (gMccDebug >= 5u)
  {
    _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "amcc %u offset %#x @ %p -> %#llx", a3, a4, v8, v9);
    if (*(&gMccDebug + 1))
    {
      kprintf("%s:%d: amcc %u offset %#x @ %p -> %#llx\n", "_mccReadReg64", 2074, a3, a4, v8, v9);
    }
  }

  return v9;
}

uint64_t AppleH15MemCacheController::getDSIDGroupQuota(AppleH15MemCacheController *this, unsigned int a2, unint64_t *a3)
{
  if (a2 <= 0x1F && a3)
  {
    v5 = (4 * a2) | 0xA000;
    v6 = ((AppleH15MemCacheController::_mccReadReg32(this, this + 1016, 0, v5) & 0x1F) << 17) * *(this + 517) * *(this + 515);
    *a3 = v6;
    if (gMccDebug >= 5u)
    {
      _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "DSID group %d(offset:0x%x) quota is 0x%llx\n", a2, v5, v6);
      if (*(&gMccDebug + 1))
      {
        kprintf("%s:%d: DSID group %d(offset:0x%x) quota is 0x%llx\n\n", "getDSIDGroupQuota", 2432, a2, v5, *a3);
      }
    }

    return 0;
  }

  else
  {
    v7 = 3758097090;
    if (gMccDebug)
    {
      _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Error in arguments to getAllDSIDQuota\n");
      if (*(&gMccDebug + 1))
      {
        kprintf("%s:%d: Error in arguments to getAllDSIDQuota\n\n", "getDSIDGroupQuota", 2419);
      }
    }
  }

  return v7;
}

uint64_t AppleH15MemCacheController::getAllDSIDQuota(AppleH15MemCacheController *this, unsigned int *a2, unint64_t *a3)
{
  if (a2 && (v3 = a3) != 0 && *a2)
  {
    if (*a2 >= 0x21)
    {
      *a2 = 32;
    }

    v6 = 0;
    while (1)
    {
      v7 = (*(*this + 1424))(this, v6, v3);
      if (v7)
      {
        break;
      }

      ++v6;
      ++v3;
      if (v6 >= *a2)
      {
        return 0;
      }
    }

    v8 = v7;
    if (gMccDebug)
    {
      _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Failed to get quota for group %d. rc:0x%x\n", v6, v7);
      if (*(&gMccDebug + 1))
      {
        kprintf("%s:%d: Failed to get quota for group %d. rc:0x%x\n\n");
      }
    }
  }

  else
  {
    v8 = 3758097090;
    if (gMccDebug)
    {
      _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Unexpected arguments\n");
      if (*(&gMccDebug + 1))
      {
        kprintf("%s:%d: Unexpected arguments\n\n");
      }
    }
  }

  return v8;
}

uint64_t AppleH15MemCacheController::getDSIDQuotaUseCount(AppleH15MemCacheController *this, unsigned int a2, unint64_t *a3)
{
  if (a2 <= 0xBF && a3)
  {
    v5 = (4 * a2) | 0xC000;
    v6 = *(this + 515) * (AppleH15MemCacheController::_mccReadReg32(this, this + 1016, 0, v5) << 7) * *(this + 517);
    *a3 = v6;
    if (gMccDebug >= 5u)
    {
      _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Quota usage for DSID group %d(offset:0x%x) is 0x%llx\n", a2, v5, v6);
      if (*(&gMccDebug + 1))
      {
        kprintf("%s:%d: Quota usage for DSID group %d(offset:0x%x) is 0x%llx\n\n", "getDSIDQuotaUseCount", 2474, a2, v5, *a3);
      }
    }

    return 0;
  }

  else
  {
    v7 = 3758097090;
    if (gMccDebug)
    {
      _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Unexpected arguments\n");
      if (*(&gMccDebug + 1))
      {
        kprintf("%s:%d: Unexpected arguments\n\n", "getDSIDQuotaUseCount", 2463);
      }
    }
  }

  return v7;
}

uint64_t AppleH15MemCacheController::getAllDSIDQuotaUseCount(AppleH15MemCacheController *this, unsigned int *a2, unint64_t *a3)
{
  if (a2 && (v3 = a3) != 0 && *a2)
  {
    if (*a2 >= 0xC1)
    {
      *a2 = 192;
    }

    v6 = 0;
    while (1)
    {
      v7 = (*(*this + 1432))(this, v6, v3);
      if (gMccDebug >= 5u)
      {
        _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Quota usage for DSID group %d is 0x%llx\n", v6, *v3);
        if (*(&gMccDebug + 1))
        {
          kprintf("%s:%d: Quota usage for DSID group %d is 0x%llx\n\n", "getAllDSIDQuotaUseCount", 2495, v6, *v3);
        }
      }

      if (v7)
      {
        break;
      }

      ++v6;
      ++v3;
      if (v6 >= *a2)
      {
        return 0;
      }
    }

    if (gMccDebug)
    {
      _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Failed to usage count for DSID group %d\n", v6);
      if (*(&gMccDebug + 1))
      {
        kprintf("%s:%d: Failed to usage count for DSID group %d\n\n");
      }
    }
  }

  else
  {
    v7 = 3758097090;
    if (gMccDebug)
    {
      _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Unexpected arguments\n");
      if (*(&gMccDebug + 1))
      {
        kprintf("%s:%d: Unexpected arguments\n\n");
      }
    }
  }

  return v7;
}

uint64_t AppleH15MemCacheController::setPersistenceLevel(uint64_t a1, unsigned int a2, uintptr_t arg2, int a4)
{
  v4 = arg2;
  if (a2 > arg2)
  {
    v5 = 3758097090;
    if (gMccDebug)
    {
      _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "StaringDSIDGroup(%d) is greater than EndingDSIDGroup(%d)\n", a2, arg2);
      if (*(&gMccDebug + 1))
      {
        kprintf("%s:%d: StaringDSIDGroup(%d) is greater than EndingDSIDGroup(%d)\n\n");
      }
    }

    return v5;
  }

  if (arg2 >= 0x20)
  {
    v5 = 3758097090;
    if (gMccDebug)
    {
      _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "EndingDSIDGroup value %d are invalid\n", arg2);
      if (*(&gMccDebug + 1))
      {
        kprintf("%s:%d: EndingDSIDGroup value %d are invalid\n\n");
      }
    }

    return v5;
  }

  if (a4 == 4)
  {
    v7 = 0;
LABEL_13:
    v8 = a2;
    do
    {
      if (gMccDebug >= 5u)
      {
        _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Setting persistence level of DSID Group %d(Offset:0x%x) to %d\n", v8, 4 * v8 + 1875964, v7);
        if (*(&gMccDebug + 1))
        {
          kprintf("%s:%d: Setting persistence level of DSID Group %d(Offset:0x%x) to %d\n\n", "setPersistenceLevel", 2542, v8, 4 * v8 + 1875964, v7);
        }
      }

      if (*(a1 + 2068))
      {
        v9 = 0;
        do
        {
          AppleH15MemCacheController::_mccWriteReg32(a1, a1 + 1016, v9++, 4 * v8 + 1875964, v7 << 30);
        }

        while (v9 < *(a1 + 2068));
      }
    }

    while (v8++ != v4);
    if ((kdebug_enable & 0xFFFFFFF7) != 0)
    {
      kernel_debug(0x61D0008u, a2, v4, v7, 0, 0);
    }

    return 0;
  }

  if (a4 == 5)
  {
    v7 = 1;
    goto LABEL_13;
  }

  v5 = 3758097090;
  if (gMccDebug)
  {
    _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Invalid persistence value %d. Only 'Replaceable' and 'NonReplaceable' are supported\n", a4);
    if (*(&gMccDebug + 1))
    {
      kprintf("%s:%d: Invalid persistence value %d. Only 'Replaceable' and 'NonReplaceable' are supported\n\n");
    }
  }

  return v5;
}

uint64_t AppleH15MemCacheController::setDSIDGroupQuota(AppleH15MemCacheController *this, uintptr_t arg1, unint64_t a3)
{
  v3 = arg1;
  if (arg1 < 0x20)
  {
    v6 = *(this + 512);
    if (v6 >= a3)
    {
      v6 = a3;
    }

    v7 = this + 1776;
    v8 = 8 * arg1;
    v9 = (this + v8 + 1776);
    if (v8 != v8)
    {
      v9 = ((this + v8 + 1776) & 0xFFFFFFFFFFFFLL | 0x2BAD000000000000);
    }

    if (*v9 != v6)
    {
      v10 = arg1;
      v11 = 8 * arg1;
      v12 = &v7[v11];
      if (v11 != v11)
      {
        v12 = (&v7[v11] & 0xFFFFFFFFFFFFLL | 0x2BAD000000000000);
      }

      *v12 = v6;
      v13 = (4 * arg1) | 0x1CA000u;
      v14 = (v6 + *(this + 515) - 1) / *(this + 515) + 0x1FFFF;
      v15 = v14 >> 17;
      if ((gMccDebug & 0xFC) != 0)
      {
        _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Setting quota for DSID group %d(offset:0x%x) to 0x%llx\n", arg1, (4 * arg1) | 0x1CA000, v14 >> 17);
        if (*(&gMccDebug + 1))
        {
          kprintf("%s:%d: Setting quota for DSID group %d(offset:0x%x) to 0x%llx\n\n", "setDSIDGroupQuota", 2585, v3, (4 * v3) | 0x1CA000, v14 >> 17);
        }
      }

      if (*(this + 517))
      {
        v16 = 0;
        v17 = (v14 >> 17) & 0x1F;
        do
        {
          AppleH15MemCacheController::_mccWriteReg32(this, this + 1016, v16++, v13, v17);
        }

        while (v16 < *(this + 517));
      }

      if ((kdebug_enable & 0xFFFFFFF7) != 0)
      {
        kernel_debug(0x61D0004u, v10, v13, v15, 0, 0);
      }
    }

    return 0;
  }

  else
  {
    v4 = 3758097090;
    if (gMccDebug)
    {
      _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Invalid DSID group %d\n", arg1);
      if (*(&gMccDebug + 1))
      {
        kprintf("%s:%d: Invalid DSID group %d\n\n", "setDSIDGroupQuota", 2560, v3);
      }
    }
  }

  return v4;
}

uint64_t AppleH15MemCacheController::deprioritizeDSID(AppleH15MemCacheController *this, uintptr_t arg1)
{
  v2 = arg1;
  if ((arg1 - 192) > 0xFFFFFF40)
  {
    v4 = (*(this + 176) + ((4 * arg1) | 0x400));
    v5 = *v4;
    if ((*v4 & 0xD00) != 0)
    {
      if (gMccDebug)
      {
        _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Previous deprioritize request on dsid %d failed. status:0x%x\n", arg1, v5);
        if (*(&gMccDebug + 1))
        {
          kprintf("%s:%d: Previous deprioritize request on dsid %d failed. status:0x%x\n\n", "deprioritizeDSID", 2613, v2, v5);
        }
      }
    }

    *v4 = 3853;
    if ((kdebug_enable & 0xFFFFFFF7) != 0)
    {
      kernel_debug(0x61D000Cu, v2, 0, 0, 0, 0);
    }

    if (gMccDebug >= 3u)
    {
      _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Deprioritize on dsid %u. Offset(0x%x) <-- Value(0x%x)", v2, (4 * v2) | 0x400, 3853);
      if (*(&gMccDebug + 1))
      {
        kprintf("%s:%d: Deprioritize on dsid %u. Offset(0x%x) <-- Value(0x%x)\n", "deprioritizeDSID", 2627, v2, (4 * v2) | 0x400, 3853);
      }
    }

    return 0;
  }

  else
  {
    v3 = 3758097090;
    if (gMccDebug)
    {
      _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "De-prioritize request on dsid %u is invalid", arg1);
      if (*(&gMccDebug + 1))
      {
        kprintf("%s:%d: De-prioritize request on dsid %u is invalid\n", "deprioritizeDSID", 2603, v2);
      }
    }
  }

  return v3;
}

uint64_t AppleH15MemCacheController::updateQuota(AppleH15MemCacheController *this, MCDataStream *a2, unsigned int a3)
{
  if (a2)
  {
    MCDataStream::getAssignedSize(a2);
    v6 = *((*(**(this + 271) + 144))(*(this + 271), a2) + 12);
    (*(*this + 1400))(this, v6, a3);
    return 0;
  }

  else
  {
    v7 = 3758097090;
    if (gMccDebug)
    {
      _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Unexpected data stream argument\n");
      if (*(&gMccDebug + 1))
      {
        kprintf("%s:%d: Unexpected data stream argument\n\n", "updateQuota", 2636);
      }
    }
  }

  return v7;
}

uint64_t AppleH15MemCacheController::getDataStreamCacheUsage(AppleH15MemCacheController *this, MCDataStream *a2, unint64_t *a3)
{
  v25 = 0;
  if (a2 && a3)
  {
    v6 = (*(**(this + 271) + 144))(*(this + 271));
    if (v6)
    {
      v7 = v6;
      v8 = *(v6 + 12);
      if (v8 == 0xFFFF)
      {
        *a3 = 0;
        for (i = *(v6 + 16); ; i = (i + 1))
        {
          v10 = v7[5];
          if (i > v10)
          {
            break;
          }

          v25 = 0;
          (*(*this + 1432))(this, i, &v25);
          *a3 += v25;
        }

        if (gMccDebug > 4u)
        {
          v18 = v7[4];
          StreamName = MCDataStream::getStreamName(a2);
          _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Cache usage by DSIDs in range %d-%d(stream: %s) is 0x%llx\n", v18, v10, StreamName, *a3);
          if (*(&gMccDebug + 1))
          {
            v21 = v7[4];
            v20 = v7[5];
            MCDataStream::getStreamName(a2);
            v24 = *a3;
            kprintf("%s:%d: Cache usage by DSIDs in range %d-%d(stream: %s) is 0x%llx\n\n");
          }
        }
      }

      else
      {
        if (v8 >= 0x20)
        {
          AppleH15MemCacheController::getDataStreamCacheUsage();
        }

        v14 = (4 * v8) | 0xA400;
        *a3 = *(this + 515) * (AppleH15MemCacheController::_mccReadReg32(this, this + 1016, 0, v14) << 7) * *(this + 517);
        if (gMccDebug >= 5u)
        {
          v15 = v7[3];
          v16 = MCDataStream::getStreamName(a2);
          _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Quota Group usage for DSID group %d(stream: %s) at offset:0x%x is 0x%llx\n", v15, v16, v14, *a3);
          if (*(&gMccDebug + 1))
          {
            v17 = v7[3];
            MCDataStream::getStreamName(a2);
            v23 = *a3;
            kprintf("%s:%d: Quota Group usage for DSID group %d(stream: %s) at offset:0x%x is 0x%llx\n\n");
          }
        }
      }

      return 0;
    }

    else
    {
      v11 = 3758097097;
      if (gMccDebug)
      {
        v12 = MCDataStream::getStreamName(a2);
        _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Failed to config entry for stream %s\n", v12);
        if (*(&gMccDebug + 1))
        {
          v13 = MCDataStream::getStreamName(a2);
          kprintf("%s:%d: Failed to config entry for stream %s\n\n", "getDataStreamCacheUsage", 2659, v13);
          return 3758097097;
        }
      }
    }
  }

  else
  {
    v11 = 3758097090;
    if (gMccDebug)
    {
      _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Unexpected argument\n");
      if (*(&gMccDebug + 1))
      {
        kprintf("%s:%d: Unexpected argument\n\n", "getDataStreamCacheUsage", 2653);
      }
    }
  }

  return v11;
}

OSMetaClass *AppleMemCacheModeFunction::MetaClass::MetaClass(OSMetaClass *this)
{
  result = OSMetaClass::OSMetaClass(this, "AppleMemCacheModeFunction", &AppleARMFunction::gMetaClass, 0x30u);
  result->__vftable = off_24098;
  return result;
}

{
  result = OSMetaClass::OSMetaClass(this, "AppleMemCacheModeFunction", &AppleARMFunction::gMetaClass, 0x30u);
  result->__vftable = off_24098;
  return result;
}

void AppleMemCacheModeFunction::MetaClass::~MetaClass(OSMetaClass *this)
{
  OSMetaClass::~OSMetaClass(this);
}

{
  OSMetaClass::~OSMetaClass(this);
}

void AppleMemCacheModeFunction::AppleMemCacheModeFunction(AppleMemCacheModeFunction *this, const OSMetaClass *a2)
{
  AppleARMFunction::AppleARMFunction(this, a2);
  *v2 = off_23FF8;
}

{
  AppleARMFunction::AppleARMFunction(this, a2);
  *v2 = off_23FF8;
}

void AppleMemCacheModeFunction::~AppleMemCacheModeFunction(AppleMemCacheModeFunction *this)
{
  AppleARMFunction::~AppleARMFunction(this);
}

{
  AppleARMFunction::~AppleARMFunction(this);
}

{
  AppleARMFunction::~AppleARMFunction(this);

  _OSObject_typed_operator_delete(&AppleMemCacheModeFunction_ktv, this, 48);
}

AppleARMFunction *AppleMemCacheModeFunction::MetaClass::alloc(AppleMemCacheModeFunction::MetaClass *this)
{
  v1 = OSObject_typed_operator_new();
  AppleARMFunction::AppleARMFunction(v1, &AppleMemCacheModeFunction::gMetaClass);
  *v2 = off_23FF8;
  OSMetaClass::instanceConstructed(&AppleMemCacheModeFunction::gMetaClass);
  return v1;
}

uint64_t AppleMemCacheModeFunction::callFunction(AppleMemCacheModeFunction *this, int *a2, unsigned int *a3, void *a4)
{
  result = 3758097090;
  v6 = *a2;
  v7 = *a3;
  if (v6 <= 4)
  {
    switch(v6)
    {
      case 1:
        return 3758097095;
      case 2:
        return (*(**(this + 5) + 1536))(*(this + 5), v7);
      case 3:
        return 0;
    }
  }

  else if (v6 > 6)
  {
    if (v6 == 7)
    {
      return (*(**(this + 5) + 1560))(*(this + 5), v7);
    }

    else if (v6 == 8)
    {
      return (*(**(this + 5) + 1568))(*(this + 5), v7);
    }
  }

  else if (v6 == 5)
  {
    return (*(**(this + 5) + 1552))(*(this + 5), v7);
  }

  else
  {
    return (*(**(this + 5) + 1544))(*(this + 5), v7);
  }

  return result;
}

uint64_t AppleMemCacheModeFunction::initWithTargetDataAndSymbol(const OSMetaClassBase **this, IOService *a2, const OSData *a3, const OSSymbol *a4)
{
  if (v5)
  {
    this[5] = OSMetaClassBase::safeMetaCast(this[2], &AppleH15MemCacheController::gMetaClass);
  }

  return v5;
}

OSMetaClass *AppleMemCachePanicFunction::MetaClass::MetaClass(OSMetaClass *this)
{
  result = OSMetaClass::OSMetaClass(this, "AppleMemCachePanicFunction", &AppleARMFunction::gMetaClass, 0x30u);
  result->__vftable = off_241D0;
  return result;
}

{
  result = OSMetaClass::OSMetaClass(this, "AppleMemCachePanicFunction", &AppleARMFunction::gMetaClass, 0x30u);
  result->__vftable = off_241D0;
  return result;
}

void AppleMemCachePanicFunction::MetaClass::~MetaClass(OSMetaClass *this)
{
  OSMetaClass::~OSMetaClass(this);
}

{
  OSMetaClass::~OSMetaClass(this);
}

void AppleMemCachePanicFunction::AppleMemCachePanicFunction(AppleMemCachePanicFunction *this, const OSMetaClass *a2)
{
  AppleARMFunction::AppleARMFunction(this, a2);
  *v2 = off_24130;
}

{
  AppleARMFunction::AppleARMFunction(this, a2);
  *v2 = off_24130;
}

void AppleMemCachePanicFunction::~AppleMemCachePanicFunction(AppleMemCachePanicFunction *this)
{
  AppleARMFunction::~AppleARMFunction(this);
}

{
  AppleARMFunction::~AppleARMFunction(this);
}

{
  AppleARMFunction::~AppleARMFunction(this);

  _OSObject_typed_operator_delete(&AppleMemCachePanicFunction_ktv, this, 48);
}

AppleARMFunction *AppleMemCachePanicFunction::MetaClass::alloc(AppleMemCachePanicFunction::MetaClass *this)
{
  v1 = OSObject_typed_operator_new();
  AppleARMFunction::AppleARMFunction(v1, &AppleMemCachePanicFunction::gMetaClass);
  *v2 = off_24130;
  OSMetaClass::instanceConstructed(&AppleMemCachePanicFunction::gMetaClass);
  return v1;
}

uint64_t AppleMemCachePanicFunction::initWithTargetDataAndSymbol(const OSMetaClassBase **this, IOService *a2, const OSData *a3, const OSSymbol *a4)
{
  if (v5)
  {
    this[5] = OSMetaClassBase::safeMetaCast(this[2], &AppleH15MemCacheController::gMetaClass);
  }

  return v5;
}

OSMetaClass *AppleMemCacheFlushFunction::MetaClass::MetaClass(OSMetaClass *this)
{
  result = OSMetaClass::OSMetaClass(this, "AppleMemCacheFlushFunction", &AppleARMFunction::gMetaClass, 0x30u);
  result->__vftable = off_24308;
  return result;
}

{
  result = OSMetaClass::OSMetaClass(this, "AppleMemCacheFlushFunction", &AppleARMFunction::gMetaClass, 0x30u);
  result->__vftable = off_24308;
  return result;
}

void AppleMemCacheFlushFunction::MetaClass::~MetaClass(OSMetaClass *this)
{
  OSMetaClass::~OSMetaClass(this);
}

{
  OSMetaClass::~OSMetaClass(this);
}

void AppleMemCacheFlushFunction::AppleMemCacheFlushFunction(AppleMemCacheFlushFunction *this, const OSMetaClass *a2)
{
  AppleARMFunction::AppleARMFunction(this, a2);
  *v2 = off_24268;
}

{
  AppleARMFunction::AppleARMFunction(this, a2);
  *v2 = off_24268;
}

void AppleMemCacheFlushFunction::~AppleMemCacheFlushFunction(AppleMemCacheFlushFunction *this)
{
  AppleARMFunction::~AppleARMFunction(this);
}

{
  AppleARMFunction::~AppleARMFunction(this);
}

{
  AppleARMFunction::~AppleARMFunction(this);

  _OSObject_typed_operator_delete(&AppleMemCacheFlushFunction_ktv, this, 48);
}

AppleARMFunction *AppleMemCacheFlushFunction::MetaClass::alloc(AppleMemCacheFlushFunction::MetaClass *this)
{
  v1 = OSObject_typed_operator_new();
  AppleARMFunction::AppleARMFunction(v1, &AppleMemCacheFlushFunction::gMetaClass);
  *v2 = off_24268;
  OSMetaClass::instanceConstructed(&AppleMemCacheFlushFunction::gMetaClass);
  return v1;
}

uint64_t AppleMemCacheFlushFunction::callFunction(AppleH15MemCacheController **this, void *a2, void *a3, void *a4)
{
  AppleH15MemCacheController::_mccFlush(this[5]);
  AppleH15MemCacheController::_dcsWriteQueueFlush(this[5]);
  return 0;
}

uint64_t AppleMemCacheFlushFunction::initWithTargetDataAndSymbol(const OSMetaClassBase **this, IOService *a2, const OSData *a3, const OSSymbol *a4)
{
  if (v5)
  {
    this[5] = OSMetaClassBase::safeMetaCast(this[2], &AppleH15MemCacheController::gMetaClass);
  }

  return v5;
}

OSMetaClass *_GLOBAL__sub_I_AppleH15MemCacheController_cpp()
{
  OSMetaClass::OSMetaClass(&AppleH15MemCacheController::gMetaClass, "AppleH15MemCacheController", &AppleMemCacheController::gMetaClass, 0x8B0u)->__vftable = off_23F40;
  OSMetaClass::OSMetaClass(&AppleMemCacheModeFunction::gMetaClass, "AppleMemCacheModeFunction", &AppleARMFunction::gMetaClass, 0x30u)->__vftable = off_24098;
  OSMetaClass::OSMetaClass(&AppleMemCachePanicFunction::gMetaClass, "AppleMemCachePanicFunction", &AppleARMFunction::gMetaClass, 0x30u)->__vftable = off_241D0;
  result = OSMetaClass::OSMetaClass(&AppleMemCacheFlushFunction::gMetaClass, "AppleMemCacheFlushFunction", &AppleARMFunction::gMetaClass, 0x30u);
  result->__vftable = off_24308;
  return result;
}

void global destructor keyed to_a_1()
{
  OSMetaClass::~OSMetaClass(&AppleMemCacheFlushFunction::gMetaClass);
  OSMetaClass::~OSMetaClass(&AppleMemCachePanicFunction::gMetaClass);
  OSMetaClass::~OSMetaClass(&AppleMemCacheModeFunction::gMetaClass);

  OSMetaClass::~OSMetaClass(&AppleH15MemCacheController::gMetaClass);
}

uint64_t _start()
{
  if (_realmain)
  {
    return _realmain();
  }

  else
  {
    return 0;
  }
}

uint64_t _stop()
{
  if (_antimain)
  {
    return _antimain();
  }

  else
  {
    return 0;
  }
}

void AppleH15IO::start()
{
  panic("start: can't find 'function-clock_gate', update Device Tree @%s:%d", "AppleH15IO.cpp", 94);
}

{
  panic("start: can't find 'function-power_gate', update Device Tree @%s:%d", "AppleH15IO.cpp", 100);
}

{
  panic("start: can't create AppleARM64ErrorHandler @%s:%d", "AppleH15IO.cpp", 105);
}

void AppleH15PlatformErrorHandler::start()
{
  panic("super start failed @%s:%d", "AppleH15PlatformErrorHandler.cpp", 162);
}

{
  panic("Failed to register all interrupts @%s:%d", "AppleH15PlatformErrorHandler.cpp", 419);
}

{
  panic("Failed to map all apertures @%s:%d", "AppleH15PlatformErrorHandler.cpp", 344);
}

{
  panic("Invalid %s configuration @%s:%d", "NS aperture name", "AppleH15PlatformErrorHandler.cpp", 310);
}

{
  panic("Invalid %s configuration @%s:%d", "metadata", "AppleH15PlatformErrorHandler.cpp", 298);
}

{
  panic("%s::%s: REQUIRE failed @%s:%d", "AppleH15PlatformErrorHandler", "start", "AppleH15PlatformErrorHandler.cpp", 239);
}

{
  panic("%s::%s: REQUIRE failed @%s:%d", "AppleH15PlatformErrorHandler", "start", "AppleH15PlatformErrorHandler.cpp", 237);
}

void AppleH15PlatformErrorHandler::_afxNiDecodeInterrupts()
{
  panic("%s::%s: REQUIRE failed @%s:%d", "AppleH15PlatformErrorHandler", "_afxNiDecodeInterrupts", "AppleH15PlatformErrorHandler.cpp", 1238);
}

{
  panic("%s::%s: VERIFY failed @%s:%d", "AppleH15PlatformErrorHandler", "_afxNiDecodeInterrupts", "AppleH15PlatformErrorHandler.cpp", 1248);
}

{
  panic("%s::%s: VERIFY failed @%s:%d", "AppleH15PlatformErrorHandler", "_afxNiDecodeInterrupts", "AppleH15PlatformErrorHandler.cpp", 1249);
}

{
  panic("%s::%s: VERIFY failed @%s:%d", "AppleH15PlatformErrorHandler", "_afxNiDecodeInterrupts", "AppleH15PlatformErrorHandler.cpp", 1251);
}

{
  panic("%s::%s: REQUIRE failed @%s:%d", "AppleH15PlatformErrorHandler", "_afxNiDecodeInterrupts", "AppleH15PlatformErrorHandler.cpp", 1244);
}

{
  panic("%s::%s: REQUIRE failed @%s:%d", "AppleH15PlatformErrorHandler", "_afxNiDecodeInterrupts", "AppleH15PlatformErrorHandler.cpp", 1241);
}

{
  panic("%s::%s: REQUIRE failed @%s:%d", "AppleH15PlatformErrorHandler", "_afxNiDecodeInterrupts", "AppleH15PlatformErrorHandler.cpp", 1235);
}

void AppleH15PlatformErrorHandler::_afxNsDecodeInterrupts()
{
  panic("%s::%s: VERIFY failed @%s:%d", "AppleH15PlatformErrorHandler", "_afxNsDecodeInterrupts", "AppleH15PlatformErrorHandler.cpp", 1481);
}

{
  panic("%s::%s: VERIFY failed @%s:%d", "AppleH15PlatformErrorHandler", "_afxNsDecodeInterrupts", "AppleH15PlatformErrorHandler.cpp", 1482);
}

{
  panic("%s::%s: VERIFY failed @%s:%d", "AppleH15PlatformErrorHandler", "_afxNsDecodeInterrupts", "AppleH15PlatformErrorHandler.cpp", 1484);
}

{
  panic("%s::%s: REQUIRE failed @%s:%d", "AppleH15PlatformErrorHandler", "_afxNsDecodeInterrupts", "AppleH15PlatformErrorHandler.cpp", 1489);
}

{
  panic("%s::%s: REQUIRE failed @%s:%d", "AppleH15PlatformErrorHandler", "_afxNsDecodeInterrupts", "AppleH15PlatformErrorHandler.cpp", 1476);
}

{
  panic("%s::%s: REQUIRE failed @%s:%d", "AppleH15PlatformErrorHandler", "_afxNsDecodeInterrupts", "AppleH15PlatformErrorHandler.cpp", 1473);
}

{
  panic("%s::%s: REQUIRE failed @%s:%d", "AppleH15PlatformErrorHandler", "_afxNsDecodeInterrupts", "AppleH15PlatformErrorHandler.cpp", 1444);
}

void AppleH15PlatformErrorHandler::_amccDecodeInterrupts()
{
  panic("%s::%s: VERIFY failed @%s:%d", "AppleH15PlatformErrorHandler", "_amccDecodeInterrupts", "AppleH15PlatformErrorHandler.cpp", 2737);
}

{
  panic("%s::%s: VERIFY failed @%s:%d", "AppleH15PlatformErrorHandler", "_amccDecodeInterrupts", "AppleH15PlatformErrorHandler.cpp", 2738);
}

{
  panic("%s::%s: REQUIRE failed @%s:%d", "AppleH15PlatformErrorHandler", "_amccDecodeInterrupts", "AppleH15PlatformErrorHandler.cpp", 2772);
}

void AppleH15PlatformErrorHandler::_dcsDecodeInterrupts()
{
  panic("%s::%s: VERIFY failed @%s:%d", "AppleH15PlatformErrorHandler", "_dcsDecodeInterrupts", "AppleH15PlatformErrorHandler.cpp", 3222);
}

{
  panic("%s::%s: VERIFY failed @%s:%d", "AppleH15PlatformErrorHandler", "_dcsDecodeInterrupts", "AppleH15PlatformErrorHandler.cpp", 3230);
}

{
  panic("%s::%s: REQUIRE failed @%s:%d", "AppleH15PlatformErrorHandler", "_dcsDecodeInterrupts", "AppleH15PlatformErrorHandler.cpp", 3259);
}

void AppleH15PlatformErrorHandler::_d2dAfxDecodeInterrupts()
{
  panic("%s::%s: VERIFY failed @%s:%d", "AppleH15PlatformErrorHandler", "_d2dAfxDecodeInterrupts", "AppleH15PlatformErrorHandler.cpp", 3771);
}

{
  panic("%s::%s: VERIFY failed @%s:%d", "AppleH15PlatformErrorHandler", "_d2dAfxDecodeInterrupts", "AppleH15PlatformErrorHandler.cpp", 3772);
}

{
  panic("%s::%s: VERIFY failed @%s:%d", "AppleH15PlatformErrorHandler", "_d2dAfxDecodeInterrupts", "AppleH15PlatformErrorHandler.cpp", 3777);
}

void AppleH15PlatformErrorHandler::_ioaDecodeInterrupts()
{
  panic("%s::%s: VERIFY failed @%s:%d", "AppleH15PlatformErrorHandler", "_ioaDecodeInterrupts", "AppleH15PlatformErrorHandler.cpp", 4532);
}

{
  panic("%s::%s: VERIFY failed @%s:%d", "AppleH15PlatformErrorHandler", "_ioaDecodeInterrupts", "AppleH15PlatformErrorHandler.cpp", 4533);
}

void AppleH15MemCacheController::start()
{
  panic("STR_CLASS ::%s:%d:  Failed to get PMGR SOC CLUSTER register map @%s:%d", "start", 540, "AppleH15MemCacheController.cpp", 540);
}

{
  panic("STR_CLASS ::%s:%d:  dram-limit is missing in mcc node in EDT @%s:%d", "start", 659, "AppleH15MemCacheController.cpp", 659);
}

{
  panic("STR_CLASS ::%s:%d:  dram-base is missing in mcc node in EDT @%s:%d", "start", 652, "AppleH15MemCacheController.cpp", 652);
}

{
  panic("STR_CLASS ::%s:%d:  panic-max-size is missing in mcc node in EDT @%s:%d", "start", 645, "AppleH15MemCacheController.cpp", 645);
}

{
  panic("STR_CLASS ::%s:%d:  start:no pram range @%s:%d", "start", 624, "AppleH15MemCacheController.cpp", 624);
}

{
  panic("STR_CLASS ::%s:%d:  start:no pram service @%s:%d", "start", 618, "AppleH15MemCacheController.cpp", 618);
}

{
  panic("STR_CLASS ::%s:%d:  Cache Policy Manager is missing!\\n @%s:%d", "start", 598, "AppleH15MemCacheController.cpp", 598);
}

{
  panic("MEMCachePolicyManager: %s:%u REQUIRE failed: %s @%s:%d", "virtual BOOL AppleH15MemCacheController::start(IOService *)", 548, "_mcwMap != NULL", "AppleH15MemCacheController.cpp", 548);
}

{
  panic("DRAM access disable supported only through GP CE @%s:%d", "AppleH15MemCacheController.cpp", 533);
}

{
  panic("STR_CLASS ::%s:%d:  Failed to map all apertures @%s:%d", "start", 524, "AppleH15MemCacheController.cpp", 524);
}

{
  panic("STR_CLASS ::%s:%d:  Not possible to have zero amccs @%s:%d", "start", 516, "AppleH15MemCacheController.cpp", 516);
}

{
  panic("STR_CLASS ::%s:%d:  dcs-count-per-amcc is missing in mcc node in EDT @%s:%d", "start", 505, "AppleH15MemCacheController.cpp", 505);
}

{
  panic("STR_CLASS ::%s:%d:  plane-count-per-amcc is missing in mcc node in EDT @%s:%d", "start", 499, "AppleH15MemCacheController.cpp", 499);
}

{
  panic("MEMCachePolicyManager: %s:%u REQUIRE failed: %s @%s:%d", "virtual BOOL AppleH15MemCacheController::start(IOService *)", 493, "regCount != 0", "AppleH15MemCacheController.cpp", 493);
}

void AppleH15MemCacheController::setMuiSsbCtrl()
{
  panic("Assert failed: %s @%s:%d", "reg_val == readback_val", "AppleH15MemCacheController.cpp", 1306);
}

{
  panic("Invalid op in setMuiSsbCtrl() @%s:%d", "AppleH15MemCacheController.cpp", 1289);
}

void AppleH15MemCacheController::_setCntrCtrlParmeters(_DWORD *a1)
{
  panic("Counter type %d is not supported\\n @%s:%d", *a1, "AppleH15MemCacheController.cpp", 1825);
}

{
  panic("Counter type %d is not supported\\n @%s:%d", *a1, "AppleH15MemCacheController.cpp", 1766);
}

{
  panic("Camcxounter AMCX channel %d is not supported \\n @%s:%d", *a1, "AppleH15MemCacheController.cpp", 1790);
}