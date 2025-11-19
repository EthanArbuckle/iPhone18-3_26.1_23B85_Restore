OSMetaClass *AppleH15IO::MetaClass::MetaClass(OSMetaClass *this)
{
  result = OSMetaClass::OSMetaClass(this, "AppleH15IO", &AppleARMIO::gMetaClass, 0x120u);
  result->__vftable = off_38940;
  return result;
}

{
  result = OSMetaClass::OSMetaClass(this, "AppleH15IO", &AppleARMIO::gMetaClass, 0x120u);
  result->__vftable = off_38940;
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
  *v2 = off_38340;
}

{
  AppleARMIO::AppleARMIO(this, a2);
  *v2 = off_38340;
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
  *v2 = off_38340;
  OSMetaClass::instanceConstructed(&AppleH15IO::gMetaClass);
  return v1;
}

void AppleH15IO::AppleH15IO(AppleH15IO *this)
{
  AppleARMIO::AppleARMIO(this, &AppleH15IO::gMetaClass);
  *v1 = off_38340;
  OSMetaClass::instanceConstructed(&AppleH15IO::gMetaClass);
}

{
  AppleARMIO::AppleARMIO(this, &AppleH15IO::gMetaClass);
  *v1 = off_38340;
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
  result->__vftable = off_38940;
  return result;
}

void AppleH15PlatformErrorHandler::_amccNonPlaneDecodeACTT(uint64_t a1, uint64_t a2, int a3, unsigned int *a4, uint64_t a5)
{
  v9 = *a4;
  v21 = off_3B390;
  v22 = unk_3B3A0;
  v23 = 0;
  if (v9)
  {
    DWORD2(v21) = 0;
    v10 = a1 + 8232;
    if (((a1 ^ (a1 + 8232)) & 0xFFC0000000000000) != 0)
    {
      v10 = v10 & 0xFFFFFFFFFFFFLL | 0xC8A2000000000000;
    }

    Register32 = AppleH15PlatformErrorHandler::_readRegister32(a1, v10, a2, 0x100444u);
    HIDWORD(v21) = Register32;
    v12 = AppleH15PlatformErrorHandler::_readRegister32(Register32, v10, a2, 0x100448u);
    LODWORD(v22) = v12;
    v13 = AppleH15PlatformErrorHandler::_readRegister32(v12, v10, a2, 0x10044Cu);
    DWORD1(v22) = v13;
    v14 = AppleH15PlatformErrorHandler::_readRegister32(v13, v10, a2, 0x100450u);
    DWORD2(v22) = v14;
    v15 = AppleH15PlatformErrorHandler::_readRegister32(v14, v10, a2, 0x100454u);
    HIDWORD(v22) = v15;
    v16 = AppleH15PlatformErrorHandler::_readRegister32(v15, v10, a2, 0x100458u);
    LODWORD(v23) = v16;
  }

  else
  {
    if ((v9 & 0x10) == 0)
    {
      if ((v9 & 0x200) == 0)
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

    v18 = AppleH15PlatformErrorHandler::_readRegister32(a1, v17, a2, 0x100434u);
    HIDWORD(v21) = v18;
    v19 = AppleH15PlatformErrorHandler::_readRegister32(v18, v17, a2, 0x100438u);
    LODWORD(v22) = v19;
    v20 = AppleH15PlatformErrorHandler::_readRegister32(v19, v17, a2, 0x10043Cu);
    DWORD1(v22) = v20;
    v16 = AppleH15PlatformErrorHandler::_readRegister32(v20, v17, a2, 0x100440u);
    DWORD2(v22) = v16;
  }

  AppleH15PlatformErrorHandler::_amccNonPlaneDecodeXCTT(v16, a2, a3, a4, a5, &v21);
}

void AppleH15PlatformErrorHandler::_amccNonPlaneDecodeSCTT(uint64_t a1, uint64_t a2, int a3, unsigned int *a4, uint64_t a5)
{
  v9 = *a4;
  v21 = off_3B408;
  v22 = unk_3B418;
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
      if ((v9 & 0x100) == 0)
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
  v19 = off_3B3B8;
  v20 = unk_3B3C8;
  v21 = 0;
  if (!a3)
  {
    if ((*a4 & 0x404) != 0)
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
  v19 = off_3B3E0;
  v20 = *algn_3B3F0;
  v21 = 0;
  if (!a3)
  {
    if ((*a4 & 0x808) != 0)
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

void AppleH15PlatformErrorHandler::_amccNoPlaneDecodeUeflOverflow(uint64_t a1, unsigned int a2, int a3, _DWORD *a4, uint64_t a5)
{
  v10 = a1 + 8232;
  if (((a1 ^ (a1 + 8232)) & 0xFFC0000000000000) != 0)
  {
    v10 = v10 & 0xFFFFFFFFFFFFLL | 0xC8A2000000000000;
  }

  Register32 = AppleH15PlatformErrorHandler::_readRegister32(a1, v10, a2, 0x155024u);
  v12 = AppleH15PlatformErrorHandler::_readRegister32(Register32, v10, a2, 0x15500Cu);
  v13 = v12;
  AppleH15PlatformErrorHandler::_amccNoPlaneDecodeOverflowGetEFL(a1, (v12 >> 7) & 1, a2, 0x156204u, Register32);
  v14 = 14680;
  if (*(a1 + 140))
  {
    v14 = 14672;
  }

  v15 = (*(**(a1 + v14) + 248))();
  AppleH15PlatformErrorHandler::_writeRegister32(v15, v10, a2, 0x155024u, Register32);
  if (v13 < 0)
  {
    panic("UEFL overflow: AMCC%u Plane %s Error: intsts%d 0x%08x and valid array is 0x%08x @%s:%d", a2, *(a5 + 8), a3, *a4, Register32, "AppleH15PlatformErrorHandler.cpp", 1860);
  }
}

void AppleH15PlatformErrorHandler::_amccNoPlaneDecodeCeflOverflow(uint64_t a1, unsigned int a2, int a3)
{
  v6 = a1 + 8232;
  if (((a1 ^ (a1 + 8232)) & 0xFFC0000000000000) != 0)
  {
    v6 = v6 & 0xFFFFFFFFFFFFLL | 0xC8A2000000000000;
  }

  Register32 = AppleH15PlatformErrorHandler::_readRegister32(a1, v6, a2, 0x156304u);
  AppleH15PlatformErrorHandler::_amccNoPlaneDecodeCeflReportLog(a1, a2, 2u);
  AppleH15PlatformErrorHandler::_writeRegister32(v8, v6, a2, 0x15500Cu, 256);
  if (*(a1 + 152))
  {
    v9 = Register32 == -1;
  }

  else
  {
    v9 = 0;
  }

  if (v9 && (*(a1 + 142) & 1) != 0)
  {
    panic("CEFL overflow of AMCC %d and group %d and valid array is 0x%08x\\n @%s:%d", a2, a3, -1, "AppleH15PlatformErrorHandler.cpp", 1880);
  }
}

void AppleH15PlatformErrorHandler::_amccNoPlaneDecodeCeflErrCountExceeded(uint64_t a1, unsigned int a2)
{
  AppleH15PlatformErrorHandler::_amccNoPlaneDecodeCeflReportLog(a1, a2, 3u);
  v5 = a1 + 8232;
  if (((a1 ^ (a1 + 8232)) & 0xFFC0000000000000) != 0)
  {
    v5 = v5 & 0xFFFFFFFFFFFFLL | 0xC8A2000000000000;
  }

  AppleH15PlatformErrorHandler::_writeRegister32(v4, v5, a2, 0x15500Cu, 512);
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

OSMetaClass *AppleH15PlatformErrorHandler::MetaClass::MetaClass(OSMetaClass *this)
{
  result = OSMetaClass::OSMetaClass(this, "AppleH15PlatformErrorHandler", &IOService::gMetaClass, 0x3960u);
  result->__vftable = off_3AF08;
  return result;
}

{
  result = OSMetaClass::OSMetaClass(this, "AppleH15PlatformErrorHandler", &IOService::gMetaClass, 0x3960u);
  result->__vftable = off_3AF08;
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
  v2->__vftable = off_3A9B0;
  LODWORD(v2[1].__vftable) = 0;
  LODWORD(v2[1].IORegistryEntry::reserved) = 0;
}

{
  v2 = IOService::IOService(this, a2);
  v2->__vftable = off_3A9B0;
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
  v2->__vftable = off_3A9B0;
  LODWORD(v2[1].__vftable) = 0;
  LODWORD(v2[1].IORegistryEntry::reserved) = 0;
  OSMetaClass::instanceConstructed(&AppleH15PlatformErrorHandler::gMetaClass);
  return v1;
}

void AppleH15PlatformErrorHandler::AppleH15PlatformErrorHandler(AppleH15PlatformErrorHandler *this)
{
  v1 = IOService::IOService(this, &AppleH15PlatformErrorHandler::gMetaClass);
  v1->__vftable = off_3A9B0;
  LODWORD(v1[1].__vftable) = 0;
  LODWORD(v1[1].IORegistryEntry::reserved) = 0;
  OSMetaClass::instanceConstructed(&AppleH15PlatformErrorHandler::gMetaClass);
}

{
  v1 = IOService::IOService(this, &AppleH15PlatformErrorHandler::gMetaClass);
  v1->__vftable = off_3A9B0;
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
    v177[0] = 4;
    if (sysctlbyname("kern.development", (this + 152), v177, 0, 0))
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
    *(this + 148) = 0;
    *(this + 140) = 0;
    if (PE_parse_boot_argn("enable_cefl_errcount_interrupts", (this + 148), 1))
    {
      kprintf("%s::%s: Enabling CEFL ErrCount interrupts\n", "AppleH15PlatformErrorHandler", "start");
    }

    if (PE_parse_boot_argn("enable_cefl_overflow_interrupts", (this + 149), 1))
    {
      kprintf("%s::%s: Enabling CEFL OverFlow interrupts\n", "AppleH15PlatformErrorHandler", "start");
    }

    PropertyCount = AppleH15PlatformErrorHandler::_getPropertyCount(this, "reg", 0x10uLL);
    *(this + 184) = PropertyCount;
    if (!PropertyCount)
    {
      AppleH15PlatformErrorHandler::start();
    }

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
    v15 = IOSimpleLockAlloc();
    *(this + 14264) = v15;
    if (!v15)
    {
      AppleH15PlatformErrorHandler::start();
    }

    IOSimpleLockInit(v15);
    v16 = IOInterruptEventSource::interruptEventSource(this, AppleH15PlatformErrorHandler::eccEventHandler, 0, 0);
    *(this + 14672) = v16;
    if (v16)
    {
      v17 = (*(*this + 888))(this);
      if ((*(*v17 + 160))(v17, *(this + 14672)))
      {
        kprintf("%s::%s: failed to add ecc event handler to workloop event source\n", "AppleH15PlatformErrorHandler", "start");
      }
    }

    v103 = v6;
    v104 = a2;
    v105 = v4;
    v18 = IOInterruptEventSource::interruptEventSource(this, AppleH15PlatformErrorHandler::amccNoPlaneDelayedFetchUeflLog, 0, 0);
    *(this + 14680) = v18;
    if (v18)
    {
      v19 = (*(*this + 888))(this);
      if ((*(*v19 + 160))(v19, *(this + 14680)))
      {
        kprintf("%s::%s: failed to add delayed ecc event handler to workloop event source\n", "AppleH15PlatformErrorHandler", "start");
      }
    }

    v163 = (this + 532);
    Metadata = AppleH15PlatformErrorHandler::_getMetadata(this, this + 532, "amcc-metadata", 0x10u, 0);
    v136 = AppleH15PlatformErrorHandler::_getMetadata(this, this + 700, "dcs-metadata", 0, 0);
    v161 = (this + 724);
    v134 = AppleH15PlatformErrorHandler::_getMetadata(this, this + 724, "ioa-metadata", 0x10u, 0);
    v132 = AppleH15PlatformErrorHandler::_getMetadata(this, this + 748, "pmgr-metadata", 4u, 0);
    v157 = (this + 772);
    v130 = AppleH15PlatformErrorHandler::_getMetadata(this, this + 772, "sep-metadata", 2u, 0);
    v140 = (this + 796);
    v128 = AppleH15PlatformErrorHandler::_getMetadata(this, this + 796, "sram-metadata", 5u, 1);
    v165 = (this + 268);
    v126 = AppleH15PlatformErrorHandler::_getMetadata(this, this + 268, "ni0-metadata", 0x10u, 0);
    v176 = (this + 292);
    v124 = AppleH15PlatformErrorHandler::_getMetadata(this, this + 292, "ni1-metadata", 6u, 1);
    v159 = (this + 316);
    v122 = AppleH15PlatformErrorHandler::_getMetadata(this, this + 316, "ni2-metadata", 6u, 0);
    v175 = (this + 340);
    v120 = AppleH15PlatformErrorHandler::_getMetadata(this, this + 340, "ni3-metadata", 4u, 1);
    v171 = (this + 364);
    v118 = AppleH15PlatformErrorHandler::_getMetadata(this, this + 364, "ni4-metadata", 8u, 1);
    v169 = (this + 388);
    v116 = AppleH15PlatformErrorHandler::_getMetadata(this, this + 388, "ni5-metadata", 0x10u, 1);
    v167 = (this + 412);
    v114 = AppleH15PlatformErrorHandler::_getMetadata(this, this + 412, "ni6-metadata", 0x10u, 1);
    v146 = (this + 436);
    v112 = AppleH15PlatformErrorHandler::_getMetadata(this, this + 436, "ni7-metadata", 0x10u, 0);
    v144 = (this + 460);
    v110 = AppleH15PlatformErrorHandler::_getMetadata(this, this + 460, "ni8-metadata", 0x10u, 0);
    v174 = (this + 484);
    v108 = AppleH15PlatformErrorHandler::_getMetadata(this, this + 484, "ni9-metadata", 4u, 1);
    v173 = (this + 508);
    v107 = AppleH15PlatformErrorHandler::_getMetadata(this, this + 508, "ni10-metadata", 4u, 1);
    v143 = (this + 196);
    v20 = AppleH15PlatformErrorHandler::_getMetadata(this, this + 196, "nsc-metadata", 0xCu, 0);
    v142 = (this + 220);
    v21 = AppleH15PlatformErrorHandler::_getMetadata(this, this + 220, "nsi-metadata", 0x24u, 0);
    v141 = (this + 244);
    v22 = AppleH15PlatformErrorHandler::_getMetadata(this, this + 244, "nsr-metadata", 0x14u, 1);
    v155 = (this + 556);
    v23 = AppleH15PlatformErrorHandler::_getMetadata(this, this + 556, "d2dc-metadata", 4u, 1);
    v153 = (this + 580);
    v24 = AppleH15PlatformErrorHandler::_getMetadata(this, this + 580, "d2di-metadata", 4u, 1);
    v151 = (this + 604);
    v25 = AppleH15PlatformErrorHandler::_getMetadata(this, this + 604, "d2dr-metadata", 4u, 1);
    v150 = (this + 652);
    v26 = AppleH15PlatformErrorHandler::_getMetadata(this, this + 652, "giba-metadata", 0x20u, 1);
    v149 = (this + 628);
    v27 = AppleH15PlatformErrorHandler::_getMetadata(this, this + 628, "gibm-metadata", 4u, 1);
    v148 = (this + 676);
    v28 = AppleH15PlatformErrorHandler::_getMetadata(this, this + 676, "gibd-metadata", 8u, 1);
    if (Metadata || v136 || v134 || v132 || v130 || v128 || v126 || v124 || v122 || v120 || v118 || v116 || v114 || v112 || v110 || v108 || v107 || v20 || v21 || v22 || v23 || v24 || v25 || v26 || v27 || v28)
    {
      AppleH15PlatformErrorHandler::start();
    }

    v29 = this + 13312;
    if (((this ^ (this + 13312)) & 0xFFC0000000000000) != 0)
    {
      v29 = v29 & 0xFFFFFFFFFFFFLL | 0xC8A2000000000000;
    }

    NsApertureNames = AppleH15PlatformErrorHandler::_getNsApertureNames(this, "afc", v29, 0xCu, 0);
    v31 = this + 13360;
    if (((this ^ (this + 13360)) & 0xFFC0000000000000) != 0)
    {
      v31 = v31 & 0xFFFFFFFFFFFFLL | 0xC8A2000000000000;
    }

    v32 = AppleH15PlatformErrorHandler::_getNsApertureNames(this, "afi", v31, 0x24u, 0);
    v33 = this + 13504;
    if (((this ^ (this + 13504)) & 0xFFC0000000000000) != 0)
    {
      v33 = v33 & 0xFFFFFFFFFFFFLL | 0xC8A2000000000000;
    }

    v34 = AppleH15PlatformErrorHandler::_getNsApertureNames(this, "afr", v33, 0x14u, 1);
    if ((NsApertureNames & 1) != 0 || (v32 & 1) != 0 || v34)
    {
      AppleH15PlatformErrorHandler::start();
    }

    v35 = this + 8232;
    if (((this ^ (this + 8232)) & 0xFFC0000000000000) != 0)
    {
      v35 = v35 & 0xFFFFFFFFFFFFLL | 0xC8A2000000000000;
    }

    v139 = AppleH15PlatformErrorHandler::_mapApertures(this, v163, v35, 0x10u);
    v36 = this + 12232;
    if (((this ^ (this + 12232)) & 0xFFC0000000000000) != 0)
    {
      v36 = v36 & 0xFFFFFFFFFFFFLL | 0xC8A2000000000000;
    }

    v137 = AppleH15PlatformErrorHandler::_mapApertures(this, v161, v36, 0x10u);
    v37 = this + 12872;
    if (((this ^ (this + 12872)) & 0xFFC0000000000000) != 0)
    {
      v37 = v37 & 0xFFFFFFFFFFFFLL | 0xC8A2000000000000;
    }

    v135 = AppleH15PlatformErrorHandler::_mapApertures(this, (this + 748), v37, 4u);
    v38 = this + 13032;
    if (((this ^ (this + 13032)) & 0xFFC0000000000000) != 0)
    {
      v38 = v38 & 0xFFFFFFFFFFFFLL | 0xC8A2000000000000;
    }

    v133 = AppleH15PlatformErrorHandler::_mapApertures(this, v157, v38, 2u);
    v39 = this + 13112;
    if (((this ^ (this + 13112)) & 0xFFC0000000000000) != 0)
    {
      v39 = v39 & 0xFFFFFFFFFFFFLL | 0xC8A2000000000000;
    }

    v131 = AppleH15PlatformErrorHandler::_mapApertures(this, v140, v39, 5u);
    v129 = AppleH15PlatformErrorHandler::_mapApertures(this, v165, this + 3752, 0x10u);
    v40 = this + 4392;
    if (((this ^ (this + 4392)) & 0xFFC0000000000000) != 0)
    {
      v40 = v40 & 0xFFFFFFFFFFFFLL | 0xC8A2000000000000;
    }

    v100 = v40;
    v127 = AppleH15PlatformErrorHandler::_mapApertures(this, v176, v40, 6u);
    v41 = this + 4632;
    if (((this ^ (this + 4632)) & 0xFFC0000000000000) != 0)
    {
      v41 = v41 & 0xFFFFFFFFFFFFLL | 0xC8A2000000000000;
    }

    v106 = v41;
    v125 = AppleH15PlatformErrorHandler::_mapApertures(this, v159, v41, 6u);
    v42 = this + 4872;
    if (((this ^ (this + 4872)) & 0xFFC0000000000000) != 0)
    {
      v42 = v42 & 0xFFFFFFFFFFFFLL | 0xC8A2000000000000;
    }

    v99 = v42;
    v123 = AppleH15PlatformErrorHandler::_mapApertures(this, v175, v42, 4u);
    v43 = this + 5032;
    if (((this ^ (this + 5032)) & 0xFFC0000000000000) != 0)
    {
      v43 = v43 & 0xFFFFFFFFFFFFLL | 0xC8A2000000000000;
    }

    v96 = v43;
    v121 = AppleH15PlatformErrorHandler::_mapApertures(this, v171, v43, 8u);
    v44 = this + 5352;
    if (((this ^ (this + 5352)) & 0xFFC0000000000000) != 0)
    {
      v44 = v44 & 0xFFFFFFFFFFFFLL | 0xC8A2000000000000;
    }

    v95 = v44;
    v119 = AppleH15PlatformErrorHandler::_mapApertures(this, v169, v44, 0x10u);
    v45 = this + 5992;
    if (((this ^ (this + 5992)) & 0xFFC0000000000000) != 0)
    {
      v45 = v45 & 0xFFFFFFFFFFFFLL | 0xC8A2000000000000;
    }

    v94 = v45;
    v117 = AppleH15PlatformErrorHandler::_mapApertures(this, v167, v45, 0x10u);
    v46 = this + 6632;
    if (((this ^ (this + 6632)) & 0xFFC0000000000000) != 0)
    {
      v46 = v46 & 0xFFFFFFFFFFFFLL | 0xC8A2000000000000;
    }

    v102 = v46;
    v115 = AppleH15PlatformErrorHandler::_mapApertures(this, v146, v46, 0x10u);
    v47 = this + 7272;
    if (((this ^ (this + 7272)) & 0xFFC0000000000000) != 0)
    {
      v47 = v47 & 0xFFFFFFFFFFFFLL | 0xC8A2000000000000;
    }

    v101 = v47;
    v113 = AppleH15PlatformErrorHandler::_mapApertures(this, v144, v47, 0x10u);
    v48 = this + 7912;
    if (((this ^ (this + 7912)) & 0xFFC0000000000000) != 0)
    {
      v48 = v48 & 0xFFFFFFFFFFFFLL | 0xC8A2000000000000;
    }

    v98 = v48;
    v111 = AppleH15PlatformErrorHandler::_mapApertures(this, v174, v48, 4u);
    v49 = this + 8072;
    if (((this ^ (this + 8072)) & 0xFFC0000000000000) != 0)
    {
      v49 = v49 & 0xFFFFFFFFFFFFLL | 0xC8A2000000000000;
    }

    v97 = v49;
    v109 = AppleH15PlatformErrorHandler::_mapApertures(this, v173, v49, 4u);
    v50 = AppleH15PlatformErrorHandler::_mapApertures(this, v143, this + 1032, 0xCu);
    v51 = AppleH15PlatformErrorHandler::_mapApertures(this, v142, this + 1512, 0x24u);
    v52 = AppleH15PlatformErrorHandler::_mapApertures(this, v141, this + 2952, 0x14u);
    v53 = this + 8872;
    if (((this ^ (this + 8872)) & 0xFFC0000000000000) != 0)
    {
      v53 = v53 & 0xFFFFFFFFFFFFLL | 0xC8A2000000000000;
    }

    v54 = AppleH15PlatformErrorHandler::_mapApertures(this, v155, v53, 4u);
    v55 = this + 9032;
    if (((this ^ (this + 9032)) & 0xFFC0000000000000) != 0)
    {
      v55 = v55 & 0xFFFFFFFFFFFFLL | 0xC8A2000000000000;
    }

    v56 = AppleH15PlatformErrorHandler::_mapApertures(this, v153, v55, 4u);
    v57 = this + 9192;
    if (((this ^ (this + 9192)) & 0xFFC0000000000000) != 0)
    {
      v57 = v57 & 0xFFFFFFFFFFFFLL | 0xC8A2000000000000;
    }

    v58 = AppleH15PlatformErrorHandler::_mapApertures(this, v151, v57, 4u);
    v59 = this + 10632;
    if (((this ^ (this + 10632)) & 0xFFC0000000000000) != 0)
    {
      v59 = v59 & 0xFFFFFFFFFFFFLL | 0xC8A2000000000000;
    }

    v60 = AppleH15PlatformErrorHandler::_mapApertures(this, v150, v59, 0x20u);
    v61 = this + 9352;
    if (((this ^ (this + 9352)) & 0xFFC0000000000000) != 0)
    {
      v61 = v61 & 0xFFFFFFFFFFFFLL | 0xC8A2000000000000;
    }

    v62 = AppleH15PlatformErrorHandler::_mapApertures(this, v149, v61, 4u);
    v63 = this + 11912;
    if (((this ^ (this + 11912)) & 0xFFC0000000000000) != 0)
    {
      v63 = v63 & 0xFFFFFFFFFFFFLL | 0xC8A2000000000000;
    }

    v64 = AppleH15PlatformErrorHandler::_mapApertures(this, v148, v63, 8u);
    if ((v139 & 1) != 0 || (v137 & 1) != 0 || (v135 & 1) != 0 || (v133 & 1) != 0 || (v131 & 1) != 0 || (v129 & 1) != 0 || (v127 & 1) != 0 || (v125 & 1) != 0 || (v123 & 1) != 0 || (v121 & 1) != 0 || (v119 & 1) != 0 || (v117 & 1) != 0 || (v115 & 1) != 0 || (v113 & 1) != 0 || (v111 & 1) != 0 || (v109 & 1) != 0 || (v50 & 1) != 0 || (v51 & 1) != 0 || (v52 & 1) != 0 || (v54 & 1) != 0 || (v56 & 1) != 0 || (v58 & 1) != 0 || (v60 & 1) != 0 || (v62 & 1) != 0 || v64)
    {
      AppleH15PlatformErrorHandler::start();
    }

    *(this + 13600) = this + 3752;
    *(this + 13608) = *(this + 276);
    *(this + 13632) = v106;
    *(this + 13640) = *(this + 324);
    *(this + 13712) = v102;
    *(this + 13720) = *(this + 444);
    *(this + 13728) = v101;
    *(this + 13736) = *(this + 468);
    if (!*(this + 136))
    {
      AppleH15PlatformErrorHandler::start();
    }

    kern_ecc_poll_register();
    v65 = AppleH15PlatformErrorHandler::_registerInterrupts(this, v163, AppleH15PlatformErrorHandler::_amccHandleInterrupt, 0);
    v66 = v65 | AppleH15PlatformErrorHandler::_registerInterrupts(this, (this + 700), AppleH15PlatformErrorHandler::_dcsHandleInterrupt, 0);
    v67 = AppleH15PlatformErrorHandler::_registerInterrupts(this, v161, AppleH15PlatformErrorHandler::_ioaHandleInterrupt, 0);
    v68 = v66 | v67 | AppleH15PlatformErrorHandler::_registerInterrupts(this, v157, AppleH15PlatformErrorHandler::_sepHandleInterrupt, 0);
    if ((*(this + 147) & 1) == 0)
    {
      v68 |= AppleH15PlatformErrorHandler::_registerInterrupts(this, v140, AppleH15PlatformErrorHandler::_sramHandleInterrupt, 0);
    }

    v166 = AppleH15PlatformErrorHandler::_registerInterrupts(this, v165, AppleH15PlatformErrorHandler::_afxNiHandleInterrupt, &AppleH15PlatformErrorHandler::_afxNi0Decoder);
    v164 = AppleH15PlatformErrorHandler::_registerInterrupts(this, v159, AppleH15PlatformErrorHandler::_afxNiHandleInterrupt, &AppleH15PlatformErrorHandler::_afxNi2Decoder);
    v162 = AppleH15PlatformErrorHandler::_registerInterrupts(this, v146, AppleH15PlatformErrorHandler::_afxNiHandleInterrupt, &AppleH15PlatformErrorHandler::_afxNi7Decoder);
    v160 = AppleH15PlatformErrorHandler::_registerInterrupts(this, v144, AppleH15PlatformErrorHandler::_afxNiHandleInterrupt, &AppleH15PlatformErrorHandler::_afxNi8Decoder);
    v158 = AppleH15PlatformErrorHandler::_registerInterrupts(this, v143, AppleH15PlatformErrorHandler::_afxNsHandleInterrupt, AppleH15PlatformErrorHandler::_afcNsDecoder);
    v147 = AppleH15PlatformErrorHandler::_registerInterrupts(this, v142, AppleH15PlatformErrorHandler::_afxNsHandleInterrupt, AppleH15PlatformErrorHandler::_afiNsDecoder);
    v145 = AppleH15PlatformErrorHandler::_registerInterrupts(this, v141, AppleH15PlatformErrorHandler::_afxNsHandleInterrupt, AppleH15PlatformErrorHandler::_afrNsDecoder);
    *(this + 13664) = v96;
    *(this + 13672) = *(this + 372);
    *(this + 13680) = v95;
    *(this + 13688) = *(this + 396);
    *(this + 13696) = v94;
    *(this + 13704) = *(this + 420);
    v172 = AppleH15PlatformErrorHandler::_registerInterrupts(this, v171, AppleH15PlatformErrorHandler::_afxNiHandleInterrupt, &AppleH15PlatformErrorHandler::_afxNi4Decoder);
    v170 = AppleH15PlatformErrorHandler::_registerInterrupts(this, v169, AppleH15PlatformErrorHandler::_afxNiHandleInterrupt, &AppleH15PlatformErrorHandler::_afxNi5Decoder);
    v168 = AppleH15PlatformErrorHandler::_registerInterrupts(this, v167, AppleH15PlatformErrorHandler::_afxNiHandleInterrupt, &AppleH15PlatformErrorHandler::_afxNi6Decoder);
    v156 = AppleH15PlatformErrorHandler::_registerInterrupts(this, v155, AppleH15PlatformErrorHandler::_d2dAfcHandleInterrupt, 0);
    v154 = AppleH15PlatformErrorHandler::_registerInterrupts(this, v153, AppleH15PlatformErrorHandler::_d2dAfiHandleInterrupt, 0);
    v152 = AppleH15PlatformErrorHandler::_registerInterrupts(this, v151, AppleH15PlatformErrorHandler::_d2dAfrHandleInterrupt, 0);
    v69 = AppleH15PlatformErrorHandler::_registerInterrupts(this, v150, AppleH15PlatformErrorHandler::_gibAmccHandleInterrupt, 0);
    v70 = AppleH15PlatformErrorHandler::_registerInterrupts(this, v149, AppleH15PlatformErrorHandler::_gibIoaHandleInterrupt, 0);
    v71 = AppleH15PlatformErrorHandler::_registerInterrupts(this, v148, AppleH15PlatformErrorHandler::_gibD2dHandleInterrupt, 0);
    *(this + 13616) = v100;
    *(this + 13624) = *(this + 300);
    *(this + 13648) = v99;
    *(this + 13656) = *(this + 348);
    *(this + 13744) = v98;
    *(this + 13752) = *(this + 492);
    *(this + 13760) = v97;
    *(this + 13768) = *(this + 516);
    v72 = AppleH15PlatformErrorHandler::_registerInterrupts(this, v176, AppleH15PlatformErrorHandler::_afxNiHandleInterrupt, &AppleH15PlatformErrorHandler::_afxNi1Decoder);
    v73 = AppleH15PlatformErrorHandler::_registerInterrupts(this, v175, AppleH15PlatformErrorHandler::_afxNiHandleInterrupt, &AppleH15PlatformErrorHandler::_afxNi3Decoder);
    v74 = AppleH15PlatformErrorHandler::_registerInterrupts(this, v174, AppleH15PlatformErrorHandler::_afxNiHandleInterrupt, &AppleH15PlatformErrorHandler::_afxNi9Decoder);
    v75 = AppleH15PlatformErrorHandler::_registerInterrupts(this, v173, AppleH15PlatformErrorHandler::_afxNiHandleInterrupt, &AppleH15PlatformErrorHandler::_afxNi10Decoder);
    if ((v68 & 1) != 0 || (v166 & 1) != 0 || (v164 & 1) != 0 || (v162 & 1) != 0 || (v160 & 1) != 0 || (v158 & 1) != 0 || (v147 & 1) != 0 || (v145 & 1) != 0 || (v172 & 1) != 0 || (v170 & 1) != 0 || (v168 & 1) != 0 || (v156 & 1) != 0 || (v154 & 1) != 0 || (v152 & 1) != 0 || (v69 & 1) != 0 || (v70 & 1) != 0 || (v71 & 1) != 0 || (v72 & 1) != 0 || (v73 & 1) != 0 || (v74 & 1) != 0 || v75)
    {
      AppleH15PlatformErrorHandler::start();
    }

    AppleH15PlatformErrorHandler::_amccGenerateEnableMask(this);
    ml_mem_fault_report_enable_register();
    AppleH15PlatformErrorHandler::_dcsGenerateEnableMask(this);
    v76 = 0;
    *(this + 14256) = 523775;
    v77 = this + 13584;
    if (((this ^ (this + 13584)) & 0xFFC0000000000000) != 0)
    {
      v77 = v77 & 0xFFFFFFFFFFFFLL | 0xC8A2000000000000;
    }

    v78 = 1;
    v4 = v105;
    do
    {
      v79 = v78;
      v80 = *(&AppleH15PlatformErrorHandler::_afxNi4Decoder + 5 * v76 + 4);
      v81 = *(v80 + 8);
      if (v81)
      {
        LODWORD(v81) = 0;
        v82 = 1;
        v83 = *(&AppleH15PlatformErrorHandler::_afxNi4Decoder + 5 * v76 + 4);
        do
        {
          LODWORD(v81) = *v83 | v81;
          v83 = v80 + 16 * v82++;
        }

        while (*(v83 + 8));
      }

      v78 = 0;
      *(v77 + 4 * v76) = v81;
      v76 = 1;
    }

    while ((v79 & 1) != 0);
    AppleH15PlatformErrorHandler::_d2dAfcGenerateDisableMask(this);
    AppleH15PlatformErrorHandler::_d2dAfiGenerateDisableMask(this);
    AppleH15PlatformErrorHandler::_d2dAfrGenerateDisableMask(this);
    AppleH15PlatformErrorHandler::_amccEnableErrors(this, 1);
    AppleH15PlatformErrorHandler::_dcsEnableErrors(this, 1);
    AppleH15PlatformErrorHandler::_ioaEnableErrors(this, 1);
    AppleH15PlatformErrorHandler::_afxNiEnableErrors(this, 1);
    AppleH15PlatformErrorHandler::_afcNsDisableErrors(this, 1);
    AppleH15PlatformErrorHandler::_afiNsDisableErrors(this, 1);
    AppleH15PlatformErrorHandler::_d2dAfcDisableErrors(this);
    AppleH15PlatformErrorHandler::_d2dAfiDisableErrors(this);
    AppleH15PlatformErrorHandler::_d2dAfrDisableErrors(this);
    v84 = *(this + 192);
    if (v84)
    {
      for (i = 0; i < v84; ++i)
      {
        v86 = *(this + 824 + 8 * i);
        if (*(v86 + 16))
        {
          v87 = 0;
          do
          {
            (*(**(this + 160) + 1024))(*(this + 160), v87 + *(v86 + 12));
            ++v87;
          }

          while (v87 < *(v86 + 16));
          v84 = *(this + 192);
        }
      }
    }

    (*(**(this + 168) + 1384))(*(this + 168), 0, 0);
    AppleARMFunction::registerFunctionParent(v104, this, v88);
    (*(*this + 672))(this, 2);
    *(this + 14048) = 0;
    v89 = IOService::getPMRootDomain()->__vftable;
    v90 = (v89->getProperty_1)();
    v91 = OSMetaClassBase::safeMetaCast(v90, v103);
    if (v91)
    {
      v92 = v91;
      if ((v91->__vftable[1].getMetaClass)(v91) == 4)
      {
        *(this + 14048) = (v92->__vftable[2].~OSMetaClassBase_0)(v92);
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

void AppleH15PlatformErrorHandler::eccEventHandler(unint64_t this, OSObject *a2, IOInterruptEventSource *a3)
{
  v4 = *(this + 14264);
  v5 = ml_set_interrupts_enabled(0);
  IOSimpleLockLock(v4);
  v6 = *(this + 14664);
  if (v6)
  {
    if (v6 < 0x21)
    {
      memset(__dst, 0, sizeof(__dst));
      memset(v34, 0, sizeof(v34));
      memset(v33, 0, sizeof(v33));
      v7 = this + 14280;
      if (((this ^ (this + 14280)) & 0xFFC0000000000000) != 0)
      {
        v7 = v7 & 0xFFFFFFFFFFFFLL | 0xC8A2000000000000;
      }

      memcpy(__dst, v7, 4 * v6);
      v8 = this + 14408;
      if (((this ^ (this + 14408)) & 0xFFC0000000000000) != 0)
      {
        v8 = v8 & 0xFFFFFFFFFFFFLL | 0xC8A2000000000000;
      }

      memcpy(v34, v8, 4 * v6);
      v9 = this + 14536;
      if (((this ^ (this + 14536)) & 0xFFC0000000000000) != 0)
      {
        v9 = v9 & 0xFFFFFFFFFFFFLL | 0xC8A2000000000000;
      }

      memcpy(v33, v9, 4 * v6);
      v10 = *(this + 14276);
      v11 = *(this + 14272);
      IOSimpleLockUnlock(*(this + 14264));
      ml_set_interrupts_enabled(v5);
      if (*(this + 152) && v11 >= 2)
      {
        if (v6 == 24)
        {
          kprintf("%s::%s: CEFL occupancy threshold interrupt for AMCC %d cefl_log[0][0] is 0x%08x cefl_log[0][1] is 0x%08x cefl_log[0][2] is 0x%08x cefl_log[23][0] is 0x%08x cefl_log[23][1] is 0x%08x cefl_log[23][2] is 0x%08x\n", "AppleH15PlatformErrorHandler");
        }

        else if (v6 == 32 && (*(this + 142) & 1) == 0)
        {
          kprintf("%s::%s: CEFL overflow interrupt for AMCC %d cefl_log[0][0] is 0x%08x cefl_log[0][1] is 0x%08x cefl_log[0][2] is 0x%08xcefl_log[31][0] is 0x%08x cefl_log[31][1] is 0x%08x cefl_log[31][2] is 0x%08x\n", "AppleH15PlatformErrorHandler");
        }
      }

      v12 = 0;
      v30 = 0;
      toMeta = OSData::metaClass;
      v13 = __dst;
      v14 = v34;
      v15 = v33;
      while (1)
      {
        v17 = *v13++;
        v16 = v17;
        v18 = *v14;
        v19 = *v15;
        v31 = v15 + 1;
        v32 = v14 + 1;
        kprintf("%s::%s: log0 = 0x%08x, log1 = 0x%08x, log2= 0x%08x\n", "AppleH15PlatformErrorHandler", "eccEventHandler", v17, *v14, *v15);
        v20 = v17 & 0xFFFFFF80 | (v18 << 32) | 0x10000000000;
        if (v11 >= 2)
        {
          if ((v11 & 0xFFFFFFFE) == 2)
          {
            v12 = v19 & 0xFFFFF;
          }

          kprintf("%s::%s: ecc_log_memory_error, CE exceeded\n", "AppleH15PlatformErrorHandler", "eccEventHandler");
          if (v11 == 3 && !(v18 | v16))
          {
            goto LABEL_43;
          }

          if ((v12 & 0x3F00u) < 0x300 && (v12 & 0xFC) == 0)
          {
            v22 = 8;
          }

          else
          {
            v22 = 0;
          }

          v26 = BYTE1(v18);
          v25 = ecc_log_memory_error_ce();
        }

        else
        {
          if ((v18 & 0x3F00000) < 0x300000 && (v18 & 0xFC000) == 0)
          {
            v22 = 8;
          }

          else
          {
            v22 = 0;
          }

          kprintf("%s::%s: ecc_log_memory_error, UE\n", "AppleH15PlatformErrorHandler", "eccEventHandler");
          v23 = (*(**(this + 160) + 280))();
          v24 = OSMetaClassBase::safeMetaCast(v23, toMeta);
          if (v24)
          {
            (v24->__vftable[2].~OSMetaClassBase_0)(v24);
          }

          v12 = v18 >> 12;
          v25 = ecc_log_memory_error();
          v26 = 0;
        }

        if (v30)
        {
          v28 = v30;
        }

        else
        {
          v28 = v25;
        }

        v30 = v28;
        kprintf("%s::%s: eccEventHandler: Logging pa 0x%llx ce_count 0x%u ecc_flags 0x%x: AFID 0x%x Status=%u\n\n", "AppleH15PlatformErrorHandler", "eccEventHandler", v20, v26, v22, v12, v25);
LABEL_43:
        --v6;
        v15 = v31;
        v14 = v32;
        if (!v6)
        {
          return;
        }
      }
    }

    __break(0xBFFEu);
  }

  else
  {
    IOSimpleLockUnlock(*(this + 14264));
    ml_set_interrupts_enabled(v5);
    kprintf("%s::%s: no errors\n", "AppleH15PlatformErrorHandler", "eccEventHandler");
  }
}

void AppleH15PlatformErrorHandler::amccNoPlaneDelayedFetchUeflLog(unint64_t this, OSObject *a2, IOInterruptEventSource *a3)
{
  v4 = *(this + 14264);
  v5 = ml_set_interrupts_enabled(0);
  IOSimpleLockLock(v4);
  v6 = *(this + 14664);
  if (v6)
  {
    if (v6 >= 0x21)
    {
      __break(0xBFFEu);
    }

    else
    {
      memset(__dst, 0, sizeof(__dst));
      memset(v15, 0, sizeof(v15));
      v7 = this + 14280;
      if (((this ^ (this + 14280)) & 0xFFC0000000000000) != 0)
      {
        v7 = v7 & 0xFFFFFFFFFFFFLL | 0xC8A2000000000000;
      }

      v8 = __dst;
      memcpy(__dst, v7, 4 * v6);
      v9 = this + 14408;
      if (((this ^ (this + 14408)) & 0xFFC0000000000000) != 0)
      {
        v9 = v9 & 0xFFFFFFFFFFFFLL | 0xC8A2000000000000;
      }

      v10 = v15;
      memcpy(v15, v9, 4 * v6);
      IOSimpleLockUnlock(*(this + 14264));
      ml_set_interrupts_enabled(v5);
      v11 = 0;
      do
      {
        v12 = *v8++;
        v13 = *v10++;
        v14 = ecc_log_memory_error_delayed();
        if (!v11)
        {
          v11 = v14;
        }

        --v6;
      }

      while (v6);
    }
  }

  else
  {
    IOSimpleLockUnlock(*(this + 14264));
    ml_set_interrupts_enabled(v5);
    kprintf("%s::%s: no errors\n", "AppleH15PlatformErrorHandler", "amccNoPlaneDelayedFetchUeflLog");
  }
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

uint64_t fetchCorrectableErrors(unint64_t *a1, unsigned int *a2)
{
  *a2 = 0;
  v3 = service;
  if (*(service + 136) >= 1)
  {
    v5 = 0;
    do
    {
      AppleH15PlatformErrorHandler::amccNoPlaneFetchCeflLog(v3, v5++, a1, a2);
      v3 = service;
    }

    while (v5 < *(service + 136));
  }

  return 0;
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

uint64_t AppleH15PlatformErrorHandler::_sramHandleInterrupt(const OSMetaClassBase *this, OSObject *a2, void *a3, IOService *a4)
{
  v4 = OSMetaClassBase::safeMetaCast(this, &AppleH15PlatformErrorHandler::gMetaClass);
  if (!v4)
  {
    AppleH15PlatformErrorHandler::_sramHandleInterrupt();
  }

  return AppleH15PlatformErrorHandler::_sramDecodeInterrupts(v4, v5, v6);
}

void AppleH15PlatformErrorHandler::_afxNiHandleInterrupt(const OSMetaClassBase *this, OSObject *a2, void *a3, IOService *a4)
{
  v4 = a4;
  v6 = OSMetaClassBase::safeMetaCast(this, &AppleH15PlatformErrorHandler::gMetaClass);
  if (!v6)
  {
    AppleH15PlatformErrorHandler::_afxNiHandleInterrupt();
  }

  AppleH15PlatformErrorHandler::_afxNiDecodeInterrupts(v6, v4, a2);
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

uint64_t AppleH15PlatformErrorHandler::_d2dAfcHandleInterrupt(const OSMetaClassBase *this, OSObject *a2, void *a3, IOService *a4)
{
  v4 = a4;
  v5 = OSMetaClassBase::safeMetaCast(this, &AppleH15PlatformErrorHandler::gMetaClass);
  if (!v5)
  {
    AppleH15PlatformErrorHandler::_d2dAfcHandleInterrupt();
  }

  v7 = v5 + 8872;
  if (((v5 ^ (v5 + 8872)) & 0xFFC0000000000000) != 0)
  {
    v7 = v7 & 0xFFFFFFFFFFFFLL | 0xC8A2000000000000;
  }

  return AppleH15PlatformErrorHandler::_d2dAfxDecodeInterrupts(v5, "AFC", v4, v6, (v5 + 556), v7, &AppleH15PlatformErrorHandler::_d2dAfcDecoder, 0x10uLL);
}

uint64_t AppleH15PlatformErrorHandler::_d2dAfiHandleInterrupt(const OSMetaClassBase *this, OSObject *a2, void *a3, IOService *a4)
{
  v4 = a4;
  v5 = OSMetaClassBase::safeMetaCast(this, &AppleH15PlatformErrorHandler::gMetaClass);
  if (!v5)
  {
    AppleH15PlatformErrorHandler::_d2dAfiHandleInterrupt();
  }

  v7 = v5 + 9032;
  if (((v5 ^ (v5 + 9032)) & 0xFFC0000000000000) != 0)
  {
    v7 = v7 & 0xFFFFFFFFFFFFLL | 0xC8A2000000000000;
  }

  return AppleH15PlatformErrorHandler::_d2dAfxDecodeInterrupts(v5, "AFI", v4, v6, (v5 + 580), v7, &AppleH15PlatformErrorHandler::_d2dAfiDecoder, 0x27uLL);
}

uint64_t AppleH15PlatformErrorHandler::_d2dAfrHandleInterrupt(const OSMetaClassBase *this, OSObject *a2, void *a3, IOService *a4)
{
  v4 = a4;
  v5 = OSMetaClassBase::safeMetaCast(this, &AppleH15PlatformErrorHandler::gMetaClass);
  if (!v5)
  {
    AppleH15PlatformErrorHandler::_d2dAfrHandleInterrupt();
  }

  v7 = v5 + 9192;
  if (((v5 ^ (v5 + 9192)) & 0xFFC0000000000000) != 0)
  {
    v7 = v7 & 0xFFFFFFFFFFFFLL | 0xC8A2000000000000;
  }

  return AppleH15PlatformErrorHandler::_d2dAfrDecodeInterrupts(v5, "AFR", v4, v6, (v5 + 604), v7, &AppleH15PlatformErrorHandler::_d2dAfrDecoder, 0x19uLL);
}

void AppleH15PlatformErrorHandler::_gibAmccHandleInterrupt(const OSMetaClassBase *this, OSObject *a2, void *a3, IOService *a4)
{
  v4 = a4;
  v5 = OSMetaClassBase::safeMetaCast(this, &AppleH15PlatformErrorHandler::gMetaClass);
  if (!v5)
  {
    panic("%s::%s: REQUIRE failed @%s:%d", "AppleH15PlatformErrorHandler", "_gibAmccHandleInterrupt", "AppleH15PlatformErrorHandler.cpp", 3742);
  }

  AppleH15PlatformErrorHandler::_gibAmccDecodeInterrupts(v5, v4, v6);
}

void AppleH15PlatformErrorHandler::_gibIoaHandleInterrupt(const OSMetaClassBase *this, OSObject *a2, void *a3, IOService *a4)
{
  v4 = a4;
  v5 = OSMetaClassBase::safeMetaCast(this, &AppleH15PlatformErrorHandler::gMetaClass);
  if (!v5)
  {
    panic("%s::%s: REQUIRE failed @%s:%d", "AppleH15PlatformErrorHandler", "_gibIoaHandleInterrupt", "AppleH15PlatformErrorHandler.cpp", 3407);
  }

  AppleH15PlatformErrorHandler::_gibIoaDecodeInterrupts(v5, v4, v6);
}

void AppleH15PlatformErrorHandler::_gibD2dHandleInterrupt(const OSMetaClassBase *this, OSObject *a2, void *a3, IOService *a4)
{
  v4 = a4;
  v5 = OSMetaClassBase::safeMetaCast(this, &AppleH15PlatformErrorHandler::gMetaClass);
  if (!v5)
  {
    panic("%s::%s: REQUIRE failed @%s:%d", "AppleH15PlatformErrorHandler", "_gibD2dHandleInterrupt", "AppleH15PlatformErrorHandler.cpp", 3613);
  }

  AppleH15PlatformErrorHandler::_gibD2dDecodeInterrupts(v5, v4, v6);
}

uint64_t AppleH15PlatformErrorHandler::_amccGenerateEnableMask(AppleH15PlatformErrorHandler *this)
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
  result = AppleH15PlatformErrorHandler::_amccGenerateEnableMaskforInputTable(this, dword_241C0);
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
          result = v12;
        }

        else
        {
          result = 0;
        }

        v10 |= result;
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
  return result;
}

uint64_t setAFCRespPoisonEnable(AppleH15PlatformErrorHandler *this, int a2)
{
  if (!this)
  {
    return 5;
  }

  *(this + 140) = 0;
  if (a2)
  {
    AppleH15PlatformErrorHandler::amccEnableEFLErrors(this, 0);
    AppleH15PlatformErrorHandler::decodePendingInterrupts(this);
  }

  v4 = a2 != 0;
  AppleH15PlatformErrorHandler::amccEnableEFLErrors(this, v4);
  AppleH15PlatformErrorHandler::writePoisonEnable(this, v4);
  result = 0;
  *(this + 140) = 1;
  return result;
}

uint64_t AppleH15PlatformErrorHandler::_dcsGenerateEnableMask(uint64_t this)
{
  v1 = this;
  for (i = 0; i != 15; ++i)
  {
    v3 = &AppleH15PlatformErrorHandler::_dcsDecoders + 24 * i;
    v4 = *(v3 + 2);
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
      *(v3 + 1) = v5;
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
    v5 = *(&AppleH15PlatformErrorHandler::_afxNi4Decoder + 5 * v1 + 4);
    v6 = *(v5 + 8);
    if (v6)
    {
      LODWORD(v6) = 0;
      v7 = 1;
      v8 = *(&AppleH15PlatformErrorHandler::_afxNi4Decoder + 5 * v1 + 4);
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

uint64_t AppleH15PlatformErrorHandler::_d2dAfcGenerateDisableMask(uint64_t this)
{
  if (*(this + 556))
  {
    v1 = this + 14064;
    if (((this ^ (this + 14064)) & 0xFFC0000000000000) != 0)
    {
      v1 = v1 & 0xFFFFFFFFFFFFLL | 0xC8A2000000000000;
    }

    *(this + 14064) = xmmword_8FD0;
    v2 = &AppleH15PlatformErrorHandler::_d2dAfcDecoder;
    v3 = 16;
    do
    {
      v4 = v2[1];
      if (v4 >= 2)
      {
        AppleH15PlatformErrorHandler::_d2dAfcGenerateDisableMask();
      }

      if (!*(v2 + 5))
      {
        v5 = 8 * v4 + 4;
        v6 = (v1 + v5);
        if (v5 != v5)
        {
          v6 = ((v1 + v5) & 0xFFFFFFFFFFFFLL | 0x2BAD000000000000);
        }

        *v6 |= *v2;
      }

      v2 += 14;
      --v3;
    }

    while (v3);
  }

  return this;
}

uint64_t AppleH15PlatformErrorHandler::_d2dAfiGenerateDisableMask(uint64_t this)
{
  if (*(this + 580))
  {
    v1 = this + 14080;
    if (((this ^ (this + 14080)) & 0xFFC0000000000000) != 0)
    {
      v1 = v1 & 0xFFFFFFFFFFFFLL | 0xC8A2000000000000;
    }

    *(this + 14080) = xmmword_8FE0;
    *(this + 14096) = 236;
    v2 = &AppleH15PlatformErrorHandler::_d2dAfiDecoder;
    v3 = 39;
    do
    {
      v4 = v2[1];
      if (v4 >= 3)
      {
        AppleH15PlatformErrorHandler::_d2dAfiGenerateDisableMask();
      }

      if (!*(v2 + 5))
      {
        v5 = 8 * v4 + 4;
        v6 = (v1 + v5);
        if (v5 != v5)
        {
          v6 = ((v1 + v5) & 0xFFFFFFFFFFFFLL | 0x2BAD000000000000);
        }

        *v6 |= *v2;
      }

      v2 += 14;
      --v3;
    }

    while (v3);
  }

  return this;
}

uint64_t AppleH15PlatformErrorHandler::_d2dAfrGenerateDisableMask(uint64_t this)
{
  if (*(this + 604))
  {
    v1 = 0;
    v2 = this + 14120;
    if (((this ^ (this + 14120)) & 0xFFC0000000000000) != 0)
    {
      v2 = v2 & 0xFFFFFFFFFFFFLL | 0xC8A2000000000000;
    }

    do
    {
      v3 = (v2 + 32 * v1);
      *v3 = xmmword_8FF0;
      v3[1] = xmmword_9000;
      v4 = 25;
      v5 = &AppleH15PlatformErrorHandler::_d2dAfrDecoder;
      do
      {
        v6 = v5[1];
        if (v6 >= 4)
        {
          AppleH15PlatformErrorHandler::_d2dAfrGenerateDisableMask();
        }

        if (!*(v5 + 5))
        {
          v7 = 32 * v1 + 8 * v6 + 4;
          v8 = (v2 + v7);
          if (v7 != v7)
          {
            v8 = ((v2 + v7) & 0xFFFFFFFFFFFFLL | 0x2BAD000000000000);
          }

          *v8 |= *v5;
        }

        v5 += 14;
        --v4;
      }

      while (v4);
      ++v1;
    }

    while (v1 != 4);
  }

  return this;
}

void AppleH15PlatformErrorHandler::_amccEnableErrors(unint64_t this, int a2)
{
  if (*(this + 540))
  {
    v3 = this;
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
        AppleH15PlatformErrorHandler::_amccEnableErrorsForInputTable(v3, v7, v4, a2);
        v7 += 8;
        --v6;
      }

      while (v6);
      for (i = 0; i != 4; ++i)
      {
        v10 = 3;
        v11 = v6;
        v12 = &dword_244D4;
        do
        {
          Register32 = AppleH15PlatformErrorHandler::_readRegister32(v8, v5, v4, v11 | 0x21000u);
          v14 = *(v12 - 1);
          v15 = v14 | Register32;
          v16 = Register32 & ~v14;
          if (a2)
          {
            v16 = v15;
          }

          v17 = *v12;
          v12 += 6;
          AppleH15PlatformErrorHandler::_writeRegister32(Register32, v5, v4, v11 | 0x21000, v16 & ~v17);
          AppleH15PlatformErrorHandler::_writeRegister32(v18, v5, v4, v11 | 0x22000, 0);
          v11 += 8;
          --v10;
        }

        while (v10);
        LODWORD(v6) = v6 + 0x40000;
      }

      ++v4;
      v3 = this;
    }

    while (v4 < *(this + 540));
  }
}

void AppleH15PlatformErrorHandler::_dcsEnableErrors(unint64_t this, int a2)
{
  if (*(this + 540))
  {
    v2 = 0;
    v3 = this + 8232;
    if (((this ^ (this + 8232)) & 0xFFC0000000000000) != 0)
    {
      v3 = v3 & 0xFFFFFFFFFFFFLL | 0xC8A2000000000000;
    }

    do
    {
      v24 = 0;
      v4 = 1;
      do
      {
        v5 = 0;
        v23 = v4;
        v6 = 1;
        do
        {
          v7 = 0;
          v8 = v6;
          v9 = 4 * v5;
          v10 = v24 | (v5 << 21);
          do
          {
            while (1)
            {
              v11 = &AppleH15PlatformErrorHandler::_dcsDecoders + 24 * v7;
              if (((&AppleH15PlatformErrorHandler::_dcsDecoders ^ v11) & 0xFFC0000000000000) != 0)
              {
                v11 = v11 & 0xFFFFFFFFFFFFLL | 0xC8A2000000000000;
              }

              if (!*(v11 + 8))
              {
                break;
              }

              if ((v8 & 1) != 0 || (v12 = strlen("spll"), strncmp(*(*(v11 + 16) + 24), "spll", v12)))
              {
                v13 = *(v11 + 16);
                v14 = *(v13 + 8);
                v15 = strcmp(*(v13 + 24), "mcu");
                v16 = *(v13 + 12);
                if (v15)
                {
                  v17 = 0;
                }

                else
                {
                  v17 = v9;
                }

                v18 = v16 + v17;
                v19 = v10 + v14;
                Register32 = AppleH15PlatformErrorHandler::_readRegister32(v15, v3, v2, v19 + v16 + v17);
                v21 = Register32 & ~*v11;
                if (a2)
                {
                  v21 = *v11 | Register32;
                }

                AppleH15PlatformErrorHandler::_writeRegister32(Register32, v3, v2, v19 + v18, v21 & ~*(v11 + 4));
                break;
              }

              if (++v7 == 15)
              {
                goto LABEL_23;
              }
            }

            ++v7;
          }

          while (v7 != 15);
          v6 = 0;
          v5 = 1;
        }

        while ((v8 & 1) != 0);
LABEL_23:
        v4 = 0;
        v24 = 0x400000;
      }

      while ((v23 & 1) != 0);
      ++v2;
    }

    while (v2 < *(this + 540));
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

    while (1)
    {
      v7 = v4 < 8 ? 2 : 3;
      Register32 = AppleH15PlatformErrorHandler::_readRegister32(this, v5, v7, 0x100Cu);
      if (!(Register32 >> 28))
      {
        break;
      }

      v9 = v4 & 7;
      v10 = AppleH15PlatformErrorHandler::_readRegister32(Register32, v5, v7, 0x1010u);
      v11 = v10;
      Register32 = AppleH15PlatformErrorHandler::_readRegister32(v10, v5, v7, 0x1014u);
      if (v9 > 4)
      {
        if (v9 == 5)
        {
          if (*(this + 732) <= 7u && ~Register32 & 0x33000000 | ~v11 & 0x30)
          {
            break;
          }
        }

        else if (v9 == 6)
        {
          if ((~v11 & 0x30030) != 0 && *(this + 732) < 8u)
          {
            break;
          }
        }

        else if (*(this + 732) <= 7u && (Register32 & 0xFF00) != 0xFF00)
        {
          break;
        }
      }

      else if (v9 - 2 < 3 || (v4 & 7) == 0 || v11 >> 30 != 3 || (v11 & 0xC00) != 0xC00 || (Register32 & 0xC) != 0xC)
      {
        break;
      }

      kprintf("%s::%s: IOA%d does not exist\n", "AppleH15PlatformErrorHandler", "_ioaEnableErrors", v4 & 7);
LABEL_30:
      if (++v4 >= *(this + 732))
      {
        return;
      }
    }

    v12 = AppleH15PlatformErrorHandler::_readRegister32(Register32, v6, v4, 0xA00u);
    v13 = *(this + 14256);
    v14 = v13 | v12;
    v15 = v12 & ~v13;
    if (a2)
    {
      v15 = v14;
    }

    AppleH15PlatformErrorHandler::_writeRegister32(v12, v6, v4, 0xA00u, v15 & ~*(this + 14260));
    AppleH15PlatformErrorHandler::_writeRegister32(v16, v6, v4, 0xA04u, 255);
    goto LABEL_30;
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

  v21 = v4;
  v5 = (this + 13584);
  do
  {
    v6 = *(&AppleH15PlatformErrorHandler::_afxNiAllDecoders + v3);
    v22 = v3;
    if (v6)
    {
      v7 = v21 + 16 * v3;
      if ((v3 - 4) >= 3)
      {
        v8 = 2;
      }

      else
      {
        v8 = 3;
      }

      if (*(v7 + 8))
      {
        v9 = 0;
        v10 = (v6 + 4);
        do
        {
          v11 = v8;
          v12 = v10;
          v13 = v5;
          do
          {
            v15 = *v12;
            v12 += 10;
            v14 = v15;
            Register32 = AppleH15PlatformErrorHandler::_readRegister32(this, *v7, v9, v15);
            v17 = *v13++;
            v18 = v17 | Register32;
            v19 = Register32 & ~v17;
            if (a2)
            {
              v20 = v18;
            }

            else
            {
              v20 = v19;
            }

            AppleH15PlatformErrorHandler::_writeRegister32(Register32, *v7, v9, v14, v20);
            --v11;
          }

          while (v11);
          ++v9;
        }

        while (v9 < *(v7 + 8));
      }
    }

    else
    {
      IOLog("NI%d doesn't exist, skip\n", v3);
    }

    v3 = v22 + 1;
  }

  while (v22 != 10);
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

void AppleH15PlatformErrorHandler::_d2dAfcDisableErrors(uint64_t this)
{
  if (*(this + 556))
  {
    v2 = 0;
    v3 = this + 14064;
    if (((this ^ (this + 14064)) & 0xFFC0000000000000) != 0)
    {
      v3 = v3 & 0xFFFFFFFFFFFFLL | 0xC8A2000000000000;
    }

    v4 = this + 8872;
    if (((this ^ (this + 8872)) & 0xFFC0000000000000) != 0)
    {
      v4 = v4 & 0xFFFFFFFFFFFFLL | 0xC8A2000000000000;
    }

    v5 = 1;
    do
    {
      v6 = v5;
      if (!*v3)
      {
        AppleH15PlatformErrorHandler::_d2dAfcDisableErrors();
      }

      if (*(this + 14068))
      {
        v7 = 0;
        v8 = v3 + 8 * v2;
        do
        {
          AppleH15PlatformErrorHandler::_writeRegister32(this, v4, v7++, *v8, *(v8 + 4));
        }

        while (v7 != 4);
      }

      v5 = 0;
      v2 = 1;
    }

    while ((v6 & 1) != 0);
  }
}

void AppleH15PlatformErrorHandler::_d2dAfiDisableErrors(uint64_t this)
{
  if (*(this + 580))
  {
    v2 = 0;
    v3 = this + 14080;
    if (((this ^ (this + 14080)) & 0xFFC0000000000000) != 0)
    {
      v3 = v3 & 0xFFFFFFFFFFFFLL | 0xC8A2000000000000;
    }

    v4 = this + 9032;
    if (((this ^ (this + 9032)) & 0xFFC0000000000000) != 0)
    {
      v4 = v4 & 0xFFFFFFFFFFFFLL | 0xC8A2000000000000;
    }

    do
    {
      if (!*v3)
      {
        AppleH15PlatformErrorHandler::_d2dAfiDisableErrors();
      }

      if (*(this + 14084))
      {
        for (i = 0; i != 4; ++i)
        {
          AppleH15PlatformErrorHandler::_writeRegister32(this, v4, i, *(v3 + 8 * v2), *(v3 + 8 * v2 + 4));
        }
      }

      ++v2;
    }

    while (v2 != 3);
  }
}

void AppleH15PlatformErrorHandler::_d2dAfrDisableErrors(uint64_t this)
{
  if (*(this + 604))
  {
    v1 = 0;
    v2 = this + 14120;
    if (((this ^ (this + 14120)) & 0xFFC0000000000000) != 0)
    {
      v2 = v2 & 0xFFFFFFFFFFFFLL | 0xC8A2000000000000;
    }

    v3 = this + 9192;
    if (((this ^ (this + 9192)) & 0xFFC0000000000000) != 0)
    {
      v3 = v3 & 0xFFFFFFFFFFFFLL | 0xC8A2000000000000;
    }

    do
    {
      v4 = 0;
      v5 = v2 + 32 * v1;
      do
      {
        v6 = (v5 + 8 * v4);
        if (!*v6)
        {
          AppleH15PlatformErrorHandler::_d2dAfrDisableErrors();
        }

        if (*(v5 + 4))
        {
          for (i = 0; i != 4; ++i)
          {
            AppleH15PlatformErrorHandler::_writeRegister32(this, v3, i, *v6 + (v1 << 8), v6[1]);
          }
        }

        ++v4;
      }

      while (v4 != 4);
      ++v1;
    }

    while (v1 != 4);
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

uint64_t AppleH15PlatformErrorHandler::callPlatformFunction(AppleH15PlatformErrorHandler *this, const OSSymbol *a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7)
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
    AppleH15PlatformErrorHandler::_d2dAfcDisableErrors(this);
    AppleH15PlatformErrorHandler::_d2dAfiDisableErrors(this);
    AppleH15PlatformErrorHandler::_d2dAfrDisableErrors(this);
    v16 = *(this + 48);
    if (v16)
    {
      for (i = 0; i < v16; ++i)
      {
        v18 = *(this + i + 103);
        if (*(v18 + 16))
        {
          v19 = 0;
          do
          {
            (*(**(this + 20) + 1024))(*(this + 20), v19 + *(v18 + 12));
            ++v19;
          }

          while (v19 < *(v18 + 16));
          v16 = *(this + 48);
        }
      }
    }

    return 0;
  }

  if (gIOPlatformQuiesceActionKey == a2)
  {
    AppleH15PlatformErrorHandler::_amccEnableErrors(this, 0);
    AppleH15PlatformErrorHandler::amccEnableEFLErrors(this, 0);
    AppleH15PlatformErrorHandler::_dcsEnableErrors(this, 0);
    AppleH15PlatformErrorHandler::_ioaEnableErrors(this, 0);
    v20 = *(this + 48);
    if (v20)
    {
      for (j = 0; j < v20; ++j)
      {
        v22 = *(this + j + 103);
        if (*(v22 + 16))
        {
          v23 = 0;
          do
          {
            (*(**(this + 20) + 1032))(*(this + 20), v23 + *(v22 + 12));
            ++v23;
          }

          while (v23 < *(v22 + 16));
          v20 = *(this + 48);
        }
      }
    }

    return 0;
  }

  if (gIOPlatformPanicActionKey == a2)
  {
    AppleH15PlatformErrorHandler::amccEnableEFLErrors(this, 0);
  }

  return (callPlatformFunction)(this, a2, a3, a4, a5, a6, a7);
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
      v5 = 4;
      v6 = 135172;
      do
      {
        AppleH15PlatformErrorHandler::_writeRegister32(this, v4, v3, v6 + 8 * **(this + 14056), *(*(this + 14056) + 4));
        v6 += 0x40000;
        --v5;
      }

      while (v5);
      ++v3;
    }

    while (v3 < *(this + 540));
  }
}

void AppleH15PlatformErrorHandler::amccEnableEFLErrors(AppleH15PlatformErrorHandler *this, int a2)
{
  if (*(this + 135))
  {
    v4 = 0;
    do
    {
      AppleH15PlatformErrorHandler::_amccEnableErrorsForInputTable(this, AppleH15PlatformErrorHandler::_amccNonPlaneDecoders_EFL, v4, a2);
      AppleH15PlatformErrorHandler::_amccEnableErrorsForInputTable(this, dword_241C0, v4++, a2);
    }

    while (v4 < *(this + 135));
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

void AppleH15PlatformErrorHandler::_afxNiDecodeInterrupts(unint64_t this, int a2, void *a3)
{
  if (!a3)
  {
    AppleH15PlatformErrorHandler::_afxNiDecodeInterrupts();
  }

  v3 = a3;
  v4 = *(a3 + 3);
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

  v12 = a3[2];
  Register32 = strcmp(v12, "NI4");
  if (Register32 && (Register32 = strcmp(v12, "NI5"), Register32) && (Register32 = strcmp(v12, "NI6"), Register32))
  {
    v49 = 0;
    v48 = 1;
    v14 = 2;
  }

  else
  {
    v48 = 0;
    v49 = 1;
    v14 = 3;
  }

  v51 = v14;
  v15 = 0;
  v16 = "*UNKNOWN*";
  v47 = v3;
  v50 = v4;
  do
  {
    v17 = &v3[5 * v15];
    Register32 = AppleH15PlatformErrorHandler::_readRegister32(Register32, v7, v10, *v17);
    if (!Register32)
    {
      goto LABEL_37;
    }

    v18 = Register32;
    v19 = v17[4];
    v20 = *(v19 + 8);
    if (!v20)
    {
      goto LABEL_25;
    }

    if ((*v19 & Register32) == 0)
    {
      v21 = 1;
      while (1)
      {
        v22 = v19 + 16 * v21;
        v20 = *(v22 + 8);
        if (!v20)
        {
          break;
        }

        ++v21;
        if ((*v22 & Register32) != 0)
        {
          goto LABEL_26;
        }
      }

LABEL_25:
      v20 = v16;
    }

LABEL_26:
    if (v48)
    {
      v23 = AppleH15PlatformErrorHandler::_readRegister32(Register32, v7, v10, *(v17 + 2));
      v60 = v23 & 0xF;
      v58 = (v23 >> 4) & 7;
      v57 = (v23 >> 7) & 0xFFFFF;
      v56 = v23 >> 30;
      v24 = AppleH15PlatformErrorHandler::_readRegister32(v23, v7, v10, *(v17 + 2) + 4);
      v55 = v24 & 0x7FF;
      v25 = (v24 >> 11) & 0x3F;
      v26 = (v24 >> 17) & 0x1F;
      v27 = (v24 >> 22) & 7;
      v28 = AppleH15PlatformErrorHandler::_readRegister32(v24, v7, v10, *(v17 + 2) + 8);
      v29 = v28 & 0xFFFFF;
      Register32 = AppleH15PlatformErrorHandler::_readRegister32(v28, v7, v10, *(v17 + 2) + 12);
      v31 = v58;
      v30 = v60;
    }

    else
    {
      v30 = 0;
      v31 = 0;
      v56 = 0;
      v57 = 0;
      v55 = 0;
      v25 = 0;
      v26 = 0;
      v27 = 0;
      v29 = 0;
    }

    if (v49)
    {
      v32 = AppleH15PlatformErrorHandler::_readRegister32(Register32, v7, v10, 0x10004u);
      v61 = v32 & 0xF;
      v33 = AppleH15PlatformErrorHandler::_readRegister32(v32, v7, v10, 0x10008u);
      v59 = v33 & 7;
      v34 = AppleH15PlatformErrorHandler::_readRegister32(v33, v7, v10, 0x1000Cu);
      v54 = v34 & 0x3FFFF;
      v35 = AppleH15PlatformErrorHandler::_readRegister32(v34, v7, v10, 0x10010u);
      v57 = v35 & 0xFFFFF;
      v36 = AppleH15PlatformErrorHandler::_readRegister32(v35, v7, v10, 0x10014u);
      v55 = v36 & 0x7FF;
      v37 = AppleH15PlatformErrorHandler::_readRegister32(v36, v7, v10, 0x10018u);
      v25 = v37 & 0x3F;
      v38 = AppleH15PlatformErrorHandler::_readRegister32(v37, v7, v10, 0x1001Cu);
      v53 = v38 & 7;
      v39 = AppleH15PlatformErrorHandler::_readRegister32(v38, v7, v10, 0x10028u);
      v56 = v39 & 3;
      v40 = AppleH15PlatformErrorHandler::_readRegister32(v39, v7, v10, 0x1002Cu);
      v52 = v40 & 0x1F;
      Register32 = AppleH15PlatformErrorHandler::_readRegister32(v40, v7, v10, 0x10030u);
      v29 = Register32 & 0xFFFFF;
    }

    else
    {
      v53 = v27;
      v54 = 0;
      v59 = v31;
      v61 = v30;
      v52 = v26;
    }

    v41 = AppleH15PlatformErrorHandler::_readRegister32(Register32, v7, v10, *(v17 + 2) + 16);
    v42 = AppleH15PlatformErrorHandler::_readRegister32(v41, v7, v10, *(v17 + 2) + 20);
    v43 = v42 & 0x3FF;
    v44 = AppleH15PlatformErrorHandler::_readRegister32(v42, v7, v10, *(v17 + 2) + 28);
    v45 = AppleH15PlatformErrorHandler::_fabricCommands[v25];
    if (!v45)
    {
      v45 = "???";
    }

    v46 = snprintf(AppleH15PlatformErrorHandler::_afxNiDecodeInterrupts(int,void *)::msg, 0x100uLL, "%s NI%d %s %d %s error (0x%08x) cmd/st:0x%x(%s)/0x%x src/dst/tid:%x/%x/%x vc/sc/tz/crh:0x%x/0x%x/0x%x/0x%x user:0x%x addrl:0x%x addrh:0x%x errorvec 0x%x", v17[2], v50, v17[3], v10, v20, v18, v25, v45, v53, v54, v57, v55, v61, v59, v52, v56, v29, v41, v43, v44);
    if ((v18 & 4) == 0 || (v54 & 0x3FFFE) != 0x10630)
    {
      AppleH15PlatformErrorHandler::_afxNiDecodeInterrupts();
    }

    AppleH15PlatformErrorHandler::_writeRegister32(v46, v7, v10, *v17, 4);
    v16 = v20;
    v3 = v47;
LABEL_37:
    ++v15;
  }

  while (v15 != v51);
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
  v5 = (&unk_9060 + 8 * v3);
  if (8 * v3 != 8 * v3)
  {
    v5 = ((&unk_9060 + 8 * v3) & 0xFFFFFFFFFFFFLL | 0x2BAD000000000000);
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

  v15 = (&off_9078 + v4);
  if (v4 != v4)
  {
    v15 = ((&off_9078 + v4) & 0xFFFFFFFFFFFFLL | 0x2BAD000000000000);
  }

  v16 = *v15;
  v17 = 4 * v3;
  v18 = (&unk_9090 + v17);
  if (v17 != v17)
  {
    v18 = ((&unk_9090 + v17) & 0xFFFFFFFFFFFFLL | 0x2BAD000000000000);
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

uint64_t AppleH15PlatformErrorHandler::_amccNoPlaneDecodeOverflowGetEFL(uint64_t a1, unsigned int a2, unsigned int a3, unsigned int a4, unsigned int a5)
{
  v10 = *(a1 + 14264);
  enable = ml_set_interrupts_enabled(0);
  IOSimpleLockLock(v10);
  *(a1 + 14272) = a2;
  *(a1 + 14664) = 0;
  if (a5)
  {
    v12 = a2 & 0xFFFFFFFE;
    if ((a2 & 0xFFFFFFFE) == 2)
    {
      v13 = 12;
    }

    else
    {
      v13 = 0;
    }

    if (a2 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 8;
    }

    v15 = a1 + 8232;
    if (((a1 ^ (a1 + 8232)) & 0xFFC0000000000000) != 0)
    {
      v15 = v15 & 0xFFFFFFFFFFFFLL | 0xC8A2000000000000;
    }

    v16 = a1 + 14280;
    if (((a1 ^ (a1 + 14280)) & 0xFFC0000000000000) != 0)
    {
      v16 = v16 & 0xFFFFFFFFFFFFLL | 0xC8A2000000000000;
    }

    v17 = a1 + 14408;
    if (((a1 ^ (a1 + 14408)) & 0xFFC0000000000000) != 0)
    {
      v17 = v17 & 0xFFFFFFFFFFFFLL | 0xC8A2000000000000;
    }

    v18 = a1 + 14536;
    if (((a1 ^ (a1 + 14536)) & 0xFFC0000000000000) != 0)
    {
      v18 = v18 & 0xFFFFFFFFFFFFLL | 0xC8A2000000000000;
    }

    do
    {
      if (a5)
      {
        Register32 = AppleH15PlatformErrorHandler::_readRegister32(v11, v15, a3, a4);
        v20 = 4 * *(a1 + 14664);
        v21 = (v16 + v20);
        if (v20 != v20)
        {
          v21 = ((v16 + v20) & 0xFFFFFFFFFFFFLL | 0x2BAD000000000000);
        }

        *v21 = Register32;
        v11 = AppleH15PlatformErrorHandler::_readRegister32(Register32, v15, a3, a4 + 4);
        v22 = 4 * *(a1 + 14664);
        v23 = (v17 + v22);
        if (v22 != v22)
        {
          v23 = ((v17 + v22) & 0xFFFFFFFFFFFFLL | 0x2BAD000000000000);
        }

        *v23 = v11;
        if (v12 == 2)
        {
          v11 = AppleH15PlatformErrorHandler::_readRegister32(v11, v15, a3, a4 + 8);
          v24 = 4 * *(a1 + 14664);
          v25 = (v18 + v24);
          if (v24 != v24)
          {
            v25 = ((v18 + v24) & 0xFFFFFFFFFFFFLL | 0x2BAD000000000000);
          }

          *v25 = v11;
        }

        ++*(a1 + 14664);
      }

      a4 += v14;
      v26 = a5 > 1;
      a5 >>= 1;
    }

    while (v26);
  }

  *(a1 + 14276) = a3;
  IOSimpleLockUnlock(*(a1 + 14264));

  return ml_set_interrupts_enabled(enable);
}

void AppleH15PlatformErrorHandler::_amccNoPlaneDecodeCeflReportLog(uint64_t a1, unsigned int a2, unsigned int a3)
{
  v6 = a1 + 8232;
  if (((a1 ^ (a1 + 8232)) & 0xFFC0000000000000) != 0)
  {
    v6 = v6 & 0xFFFFFFFFFFFFLL | 0xC8A2000000000000;
  }

  Register32 = AppleH15PlatformErrorHandler::_readRegister32(a1, v6, a2, 0x156304u);
  AppleH15PlatformErrorHandler::_amccNoPlaneDecodeOverflowGetEFL(a1, a3, a2, 0x156308u, Register32);
  v8 = (*(**(a1 + 14672) + 248))();

  AppleH15PlatformErrorHandler::_writeRegister32(v8, v6, a2, 0x156304u, Register32);
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
  v16 = vandq_s8(vshlq_u32(vdupq_n_s32(v14), xmmword_9010), xmmword_9020);
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

  panic("AMCC%u PLANE%u %s error: INTSTS%u 0x%08x FLAG/STATE %#x/%#x INFO %#x/%#x/%#x ADDR %#llx CMD/AID/TID %#x(%s)/%#x/%#x WAY/TAG/PARITY %#x/%#x/%#x @%s:%d", a2, a3, *(a6 + 8), a4, *a5, Register32, (v12 >> 5) & 0x3FFF, v12, v13, v14, v16, v14 & 0x3F, v17, v14 & 0xFFFFF, (v14 >> 6) & 0x7FF, v12 & 0x1F, v13 & 0x7FFFF, v13 >> 31, "AppleH15PlatformErrorHandler.cpp", 2355);
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
  v14 = AppleH15PlatformErrorHandler::_readRegister32(v13, v10, a2, (a3 << 18) | 0xA2Cu);
  v15 = AppleH15PlatformErrorHandler::_readRegister32(v14, v10, a2, (a3 << 18) | 0xA34u);
  v16 = v15;
  v17 = AppleH15PlatformErrorHandler::_readRegister32(v15, v10, a2, (a3 << 18) | 0xA38u);
  v18 = AppleH15PlatformErrorHandler::_fabricCommands[v14 & 0x3F];
  if (!v18)
  {
    v18 = "???";
  }

  panic("AMCC%u PLANE%u %s error: INTSTS%u 0x%08x FLAG/STATE %#x/%#x INFO %#x/%#x/%#x ADDR %#llx CMD/AID/TID %#x(%s)/%#x/%#x WAYS %#x @%s:%d", a2, a3, *(a6 + 8), a4, *a5, Register32, v12 & 0x3FFF, v12, v13, v14, v17 & 0x3FF | v16, v14 & 0x3F, v18, v14 & 0xFFFFF, (v14 >> 6) & 0x7FF, v13 & 0xFFFFFF, "AppleH15PlatformErrorHandler.cpp", 2323);
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

  Register32 = AppleH15PlatformErrorHandler::_readRegister32(a1, v10, a2, (a3 << 18) | 0xA3Cu);
  v12 = AppleH15PlatformErrorHandler::_readRegister32(Register32, v10, a2, (a3 << 18) | 0xA40u);
  v13 = AppleH15PlatformErrorHandler::_readRegister32(v12, v10, a2, (a3 << 18) | 0xA44u);
  v14 = AppleH15PlatformErrorHandler::_readRegister32(v13, v10, a2, (a3 << 18) | 0xA48u);
  v15 = AppleH15PlatformErrorHandler::_readRegister32(v14, v10, a2, (a3 << 18) | 0xA4Cu);
  v16 = v15;
  v17 = AppleH15PlatformErrorHandler::_readRegister32(v15, v10, a2, (a3 << 18) | 0xA50u);
  v18 = AppleH15PlatformErrorHandler::_fabricCommands[v13 & 0x3F];
  if (!v18)
  {
    v18 = "???";
  }

  panic("AMCC%u PLANE%u %s error: INTSTS%u 0x%08x FLAG/STATE %#x/%#x INFO %#x/%#x/%#x ADDR %#llx CMD/AID/TID %#x(%s)/%#x/%#x WAY/SIZE %#x/%#x @%s:%d", a2, a3, *(a6 + 8), a4, *a5, Register32, (v12 >> 5) & 0x3FFF, v12, v13, v14, v17 & 0x3FF | v16, v13 & 0x3F, v18, (v13 >> 7) & 0xFFFFF, (v13 >> 6) & 0x7FF, v12 & 0x1F, v14 & 0x7F, "AppleH15PlatformErrorHandler.cpp", 2292);
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

  Register32 = AppleH15PlatformErrorHandler::_readRegister32(a1, v11, a2, (a3 << 18) | 0xA54u);
  v13 = AppleH15PlatformErrorHandler::_readRegister32(Register32, v11, a2, (a3 << 18) | 0xA58u);
  panic("AMCC%u PLANE%u %s error: INTSTS%u 0x%08x FLAG %#x INFO %#x @%s:%d", a2, a3, *(a6 + 8), a4, *a5, Register32, v13, "AppleH15PlatformErrorHandler.cpp", 2368);
}

uint64_t AppleH15PlatformErrorHandler::_amccGenerateEnableMaskforInputTable(uint64_t result, uint64_t a2)
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
  if ((*(result + 148) & 1) == 0)
  {
    v3 |= 0x200u;
    v4 &= ~0x200u;
    *a2 = v4;
    *(a2 + 4) = v3;
  }

  if ((*(result + 149) & 1) == 0)
  {
    *a2 = v4 & 0xFFFFFEFF;
    *(a2 + 4) = v3 | 0x100;
  }

  return result;
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
    AppleH15PlatformErrorHandler::_amccDumpRegsForInputTable(this, v6, a2, v5, &v19);
    v6 += 8;
    --v7;
  }

  while (v7);
  AppleH15PlatformErrorHandler::_amccDumpRegsForInputTable(this, AppleH15PlatformErrorHandler::_amccNonPlaneDecoders_EFL, a2, v5, &v19);
  AppleH15PlatformErrorHandler::_amccDumpRegsForInputTable(this, dword_241C0, a2, v5, &v19);
  v8 = snprintf(v5, &v19 - v5, "PLANE REGISTERS\n");
  v9 = 0;
  v10 = 0;
  v11 = this + 8232;
  if (((this ^ (this + 8232)) & 0xFFC0000000000000) != 0)
  {
    v11 = v11 & 0xFFFFFFFFFFFFLL | 0xC8A2000000000000;
  }

  v12 = &v5[v8];
  do
  {
    v16 = v10;
    v13 = 0;
    v17 = v9;
    do
    {
      Register32 = AppleH15PlatformErrorHandler::_readRegister32(v8, v11, a2, v9 | 0x21000u);
      v15 = AppleH15PlatformErrorHandler::_readRegister32(Register32, v11, a2, v9 | 0x21004u);
      v8 = snprintf(v12, &v19 - v12, "intsts: %x\tinten: %x\tblock enable: %x\n", v15, Register32, *(&AppleH15PlatformErrorHandler::_amccPlaneDecoders + v13));
      v12 += v8;
      v13 += 24;
      v9 += 8;
    }

    while (v13 != 72);
    v10 = v16 + 1;
    v9 = v17 + 0x40000;
  }

  while (v16 != 3);
  kprintf("%s::%s: %s\n", "AppleH15PlatformErrorHandler", "_amccDumpRegs", __str);
}

void AppleH15PlatformErrorHandler::_amccDecodeInterrupts(uint64_t this, int a2, void *a3)
{
  v28 = 0;
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
    AppleH15PlatformErrorHandler::_amccDecodeInterruptsForInputTable(this, v5, v3, &v28);
    v5 += 8;
    --v6;
  }

  while (v6);
  AppleH15PlatformErrorHandler::_amccDecodeInterruptsForInputTable(this, AppleH15PlatformErrorHandler::_amccNonPlaneDecoders_EFL, v3, &v28);
  Register32 = AppleH15PlatformErrorHandler::_amccDecodeInterruptsForInputTable(this, dword_241C0, v3, &v28);
  v8 = 0;
  v9 = this + 8232;
  if (((this ^ (this + 8232)) & 0xFFC0000000000000) != 0)
  {
    v9 = v9 & 0xFFFFFFFFFFFFLL | 0xC8A2000000000000;
  }

  v10 = v28;
  do
  {
    for (i = 0; i != 3; ++i)
    {
      Register32 = AppleH15PlatformErrorHandler::_readRegister32(Register32, v9, v3, (v8 << 18) + 8 * i + 135172);
      v27 = Register32;
      v12 = &AppleH15PlatformErrorHandler::_amccPlaneDecoders + 24 * i;
      v13 = *v12;
      if ((*v12 & Register32) != 0)
      {
        v14 = *(v12 + 2);
        if (v14)
        {
          v15 = v9;
          v16 = 0;
          v17 = 0;
          v18 = *(v12 + 2);
          do
          {
            v19 = *(v18 + 4);
            if ((*v12 & v19) != 0 && (v27 & v19) != 0)
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

                (v20)(v25, v3, v8, i, &v27, v18);
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
          Register32 = v27;
          v26 = ~v17;
          v9 = v15;
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
    }

    ++v8;
  }

  while (v8 != 4);
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

uint64_t AppleH15PlatformErrorHandler::writePoisonEnable(uint64_t this, int a2)
{
  if (*(this + 540))
  {
    v3 = this;
    v4 = 0;
    v5 = this + 8232;
    if (((this ^ (this + 8232)) & 0xFFC0000000000000) != 0)
    {
      v5 = v5 & 0xFFFFFFFFFFFFLL | 0xC8A2000000000000;
    }

    do
    {
      AppleH15PlatformErrorHandler::_writeRegister32(this, v5, v4, 0x100344u, a2);
      this = AppleH15PlatformErrorHandler::_readRegister32(v6, v5, v4++, 0x100344u);
    }

    while (v4 < *(v3 + 540));
  }

  return 0;
}

uint64_t AppleH15PlatformErrorHandler::decodePendingInterrupts(AppleH15PlatformErrorHandler *this)
{
  if (*(this + 135))
  {
    v2 = 0;
    do
    {
      AppleH15PlatformErrorHandler::_amccDecodeInterruptsForInputTable(this, AppleH15PlatformErrorHandler::_amccNonPlaneDecoders_EFL, v2, &v4);
      AppleH15PlatformErrorHandler::_amccDecodeInterruptsForInputTable(this, dword_241C0, v2, &v4);
      v2 = (v2 + 1);
    }

    while (v2 < *(this + 135));
  }

  return 0;
}

void AppleH15PlatformErrorHandler::_dcsDecodeMCUError(uint64_t a1, unsigned int a2, int a3, int a4, _DWORD *a5, uint64_t a6)
{
  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  *__str = 0u;
  v32 = 0u;
  v12 = snprintf(__str, 0x200uLL, "AMCC%u DCS GROUP %u CHANNEL %u %s error: INTSTS 0x%08x", a2, a3, a4, *(a6 + 32), *a5);
  v13 = *(a6 + 24);
  v14 = strcmp(v13, "mcu");
  if (v14)
  {
    v16 = strcmp(v13, "evt");
    if (v16 && (v16 = strcmp(v13, "spll_evt"), v16))
    {
      v24 = strcmp(*(a6 + 32), "M3_AIC_IRQ_EN_FLD");
      if (!v24)
      {
        v25 = a1 + 12872;
        if (((a1 ^ (a1 + 12872)) & 0xFFC0000000000000) != 0)
        {
          v25 = v25 & 0xFFFFFFFFFFFFLL | 0xC8A2000000000000;
        }

        v26 = &dword_241E8;
        v27 = 15;
        do
        {
          v28 = *(v26 - 1);
          v29 = *v26;
          v26 += 4;
          Register32 = AppleH15PlatformErrorHandler::_readRegister32(v24, v25, 1u, v29);
          v24 = snprintf(&__str[v12], 512 - v12, " %s:0x%x", v28, Register32);
          v12 += v24;
          --v27;
        }

        while (v27);
      }
    }

    else
    {
      v17 = ((a4 << 21) + (a3 << 22) + *(a6 + 8));
      v18 = a1 + 8232;
      if (((a1 ^ (a1 + 8232)) & 0xFFC0000000000000) != 0)
      {
        v18 = v18 & 0xFFFFFFFFFFFFLL | 0xC8A2000000000000;
      }

      v19 = AppleH15PlatformErrorHandler::_readRegister32(v16, v18, a2, *(a6 + 16) + v17 + 4);
      AppleH15PlatformErrorHandler::_readRegister32(v19, v18, a2, v17 + *(a6 + 16) + 8);
      v20 = 40 * a2 + 24;
      v21 = (v18 + v20);
      if (v20 != v20)
      {
        v21 = ((v18 + v20) & 0xFFFFFFFFFFFFLL | 0x2BAD000000000000);
      }

      v22 = *v21 + v17 + *(a6 + 16);
      snprintf(&__str[v12], 512 - v12, " DATA0 @ 0x%012lx 0x%08x, DATA1 @ 0x%012lx 0x%08x");
    }
  }

  else if ((*a5 & 0x400000) != 0)
  {
    v23 = a1 + 8232;
    if (((a1 ^ (a1 + 8232)) & 0xFFC0000000000000) != 0)
    {
      v23 = v23 & 0xFFFFFFFFFFFFLL | 0xC8A2000000000000;
    }

    AppleH15PlatformErrorHandler::_readRegister32(v14, v23, a2, *(a6 + 8) + (a4 << 21) + (a3 << 22) + 2176);
    snprintf(&__str[v12], 512 - v12, " UFDI_ERR_STS: 0x%08x");
  }

  else if ((*a5 & 0x240000) != 0)
  {
    v15 = a1 + 8232;
    if (((a1 ^ (a1 + 8232)) & 0xFFC0000000000000) != 0)
    {
      v15 = v15 & 0xFFFFFFFFFFFFLL | 0xC8A2000000000000;
    }

    AppleH15PlatformErrorHandler::_readRegister32(v14, v15, a2, *(a6 + 8) + (a4 << 21) + (a3 << 22) + 1052);
    snprintf(&__str[v12], 512 - v12, " CS0Odts: 0x%x CS1Odts: 0x%x");
  }

  panic("%s @%s:%d", __str, "AppleH15PlatformErrorHandler.cpp", 3331);
}

uint64_t AppleH15PlatformErrorHandler::_dcsDecodeInterrupts(uint64_t this, int a2, void *a3)
{
  memset(v36, 0, 60);
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
  v10 = (v3 >> 1) & 1;
  v11 = v3 & 1;
  v12 = this + 8232;
  if (((this ^ (this + 8232)) & 0xFFC0000000000000) != 0)
  {
    v12 = v12 & 0xFFFFFFFFFFFFLL | 0xC8A2000000000000;
  }

  v13 = (v11 << 21) & 0xFFBFFFFF | (((v3 >> 1) & 1) << 22);
  v34 = v13;
  v33 = v12;
  do
  {
    v14 = &AppleH15PlatformErrorHandler::_dcsDecoders + 24 * v8;
    if (*(v14 + 2))
    {
      if (!v11 || (this = strcmp(*(*(v14 + 2) + 24), "spll"), this))
      {
        this = AppleH15PlatformErrorHandler::_readRegister32(this, v12, v7, v13 + *(*(v14 + 2) + 8) + *(*(v14 + 2) + 16));
        *v35 = this;
        v15 = *v14 & this;
        if (v15)
        {
          v16 = *(v14 + 2);
          v17 = v36 + v8;
          if (v16)
          {
            v18 = 0;
            v19 = *(v14 + 2);
            do
            {
              if ((*(v19 + 4) & *v35) != 0)
              {
                v20 = *(v19 + 40);
                v21 = *(v19 + 48);
                v22 = !v21 || (*(v19 + 48) & 1 | v20) == 0;
                v23 = !v22;
                if (v20 || v23)
                {
                  v25 = (v4 + (v21 >> 1));
                  if (v21 >> 1 != (v21 >> 1))
                  {
                    v25 = ((v4 + (v21 >> 1)) & 0xFFFFFFFFFFFFLL | 0x2BAD000000000000);
                  }

                  if (v21)
                  {
                    v20 = *(*v25 + v20);
                  }

                  this = (v20)(v25, v7, v10, v11, v35, v19);
                  *v17 |= *(v19 + 4);
                  v16 = *(v14 + 2);
                  v9 = 1;
                }
              }

              ++v18;
              v19 += 56;
            }

            while (v18 < v16);
            v13 = v34;
            v15 = *v35 & *v14;
            v12 = v33;
          }

          if ((v15 & ~*v17) != 0)
          {
            AppleH15PlatformErrorHandler::_dcsDecodeInterrupts();
          }
        }
      }
    }

    ++v8;
  }

  while (v8 != 15);
  if ((v9 & 1) == 0)
  {
    v26 = v12;
    bzero(v35, 0x7D0uLL);
    v28 = 0;
    v29 = 0;
    v30 = 0;
    v31 = &off_24528;
    while (1)
    {
      if (*(v31 - 2))
      {
        Register32 = AppleH15PlatformErrorHandler::_readRegister32(v27, v26, v7, v13 + *(*v31 + 2) + *(*v31 + 4));
        v27 = snprintf(&v35[v29], 2000 - v29, "%d:%08x/%08x ", v28, Register32, *(v36 + v28));
        v30 += v27;
      }

      if (v28 <= 0xD)
      {
        ++v28;
        v29 = v30;
        v31 += 3;
        if (v30 < 0x7D0)
        {
          continue;
        }
      }

      panic("Unhandled DCS interrupt: AMCC%u DCS Group %u Channel %u: %s @%s:%d", v7, v10, v11, v35, "AppleH15PlatformErrorHandler.cpp", 3277);
    }
  }

  return this;
}

void AppleH15PlatformErrorHandler::_gibIoaDecodeInterrupts(uint64_t this, int a2, void *a3)
{
  v3 = a2 - *(this + 640);
  if (v3 >= *(this + 644))
  {
    v7 = 3384;
  }

  else
  {
    if (v3 < *(this + 636))
    {
      v4 = this + 9352;
      if (((this ^ (this + 9352)) & 0xFFC0000000000000) != 0)
      {
        v4 = v4 & 0xFFFFFFFFFFFFLL | 0xC8A2000000000000;
      }

      Register32 = AppleH15PlatformErrorHandler::_readRegister32(this, v4, v3, 0x88u);
      if (Register32)
      {
        v8 = &off_3C180;
        v9 = -1;
        v6 = "*UNKNOWN*";
        while ((*(v8 - 1) & Register32) == 0)
        {
          ++v9;
          v8 += 2;
          if (v9 > 0x10)
          {
            goto LABEL_15;
          }
        }

        v6 = *v8;
      }

      else
      {
        v6 = "*UNKNOWN*";
      }

LABEL_15:
      panic("GIB IOA error: IRQ%d %s status 0x%08x @%s:%d", v3, v6, Register32, "AppleH15PlatformErrorHandler.cpp", 3399);
    }

    v7 = 3385;
  }

  panic("%s::%s: VERIFY failed @%s:%d", "AppleH15PlatformErrorHandler", "_gibIoaDecodeInterrupts", "AppleH15PlatformErrorHandler.cpp", v7);
}

void AppleH15PlatformErrorHandler::_gibD2dDecodeInterrupts(uint64_t this, int a2, void *a3)
{
  v3 = a2 - *(this + 688);
  if (v3 >= *(this + 692))
  {
    v8 = 3592;
  }

  else
  {
    if (v3 < *(this + 684))
    {
      v4 = this + 11912;
      if (((this ^ (this + 11912)) & 0xFFC0000000000000) != 0)
      {
        v4 = v4 & 0xFFFFFFFFFFFFLL | 0xC8A2000000000000;
      }

      v5 = &off_3C2A0;
      v6 = 144;
      v7 = "*UNKNOWN*";
      while (1)
      {
        this = AppleH15PlatformErrorHandler::_readRegister32(this, v4, v3, *(v5 - 2));
        if ((*(v5 - 1) & this) != 0)
        {
          break;
        }

        v5 += 2;
        if (!--v6)
        {
          goto LABEL_13;
        }
      }

      v7 = *v5;
LABEL_13:
      panic("GIB D2D error: IRQ%d %s status 0x%08x @%s:%d", v3, v7, this, "AppleH15PlatformErrorHandler.cpp", 3605);
    }

    v8 = 3593;
  }

  panic("%s::%s: VERIFY failed @%s:%d", "AppleH15PlatformErrorHandler", "_gibD2dDecodeInterrupts", "AppleH15PlatformErrorHandler.cpp", v8);
}

void AppleH15PlatformErrorHandler::_gibAmccDecodeInterrupts(uint64_t this, int a2, void *a3)
{
  v3 = a2 - *(this + 664);
  if (v3 >= *(this + 668))
  {
    v8 = 3722;
  }

  else
  {
    if (v3 < *(this + 660))
    {
      v4 = this + 10632;
      if (((this ^ (this + 10632)) & 0xFFC0000000000000) != 0)
      {
        v4 = v4 & 0xFFFFFFFFFFFFLL | 0xC8A2000000000000;
      }

      v5 = &off_3CBA0;
      v6 = 72;
      v7 = "*UNKNOWN*";
      while (1)
      {
        this = AppleH15PlatformErrorHandler::_readRegister32(this, v4, v3, *(v5 - 2));
        if ((*(v5 - 1) & this) != 0)
        {
          break;
        }

        v5 += 2;
        if (!--v6)
        {
          goto LABEL_13;
        }
      }

      v7 = *v5;
LABEL_13:
      panic("GIB AMCC error: IRQ%d %s status 0x%08x @%s:%d", v3, v7, this, "AppleH15PlatformErrorHandler.cpp", 3734);
    }

    v8 = 3723;
  }

  panic("%s::%s: VERIFY failed @%s:%d", "AppleH15PlatformErrorHandler", "_gibAmccDecodeInterrupts", "AppleH15PlatformErrorHandler.cpp", v8);
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

void AppleH15PlatformErrorHandler::_d2dAfiTxCdcError(uint64_t a1, uint64_t a2, unsigned int a3, _DWORD *a4, uint64_t a5, uint64_t a6)
{
  if (a3 < 4)
  {
    v10 = a3 >> 1;
    Register32 = AppleH15PlatformErrorHandler::_readRegister32(a1, a5, a3, *(a6 + 16));
    v12 = AppleH15PlatformErrorHandler::_readRegister32(Register32, a5, a3, *(a6 + 16) + 4);
    v13 = AppleH15PlatformErrorHandler::_readRegister32(v12, a5, a3, *(a6 + 16) + 8);
    v14 = "right";
    if ((a3 & 1) == 0)
    {
      v14 = "left";
    }

    panic("Die %u %s D2D %s %s error: 0x%08x status 0x%08x/0x%08x/0x%08x @%s:%d", v10, v14, *(a6 + 24), *(a6 + 32), *a4, Register32, v12, v13, "AppleH15PlatformErrorHandler.cpp", 4102);
  }

  panic("%s::%s: VERIFY failed @%s:%d", "AppleH15PlatformErrorHandler", "_d2dAfiTxCdcError", "AppleH15PlatformErrorHandler.cpp", 4095);
}

void AppleH15PlatformErrorHandler::_d2dAfrErrorWithData(uint64_t a1, uint64_t a2, unsigned int a3, _DWORD *a4, uint64_t a5, uint64_t a6)
{
  if (a3 < 4)
  {
    v8 = a3 >> 1;
    Register32 = AppleH15PlatformErrorHandler::_readRegister32(a1, a5, a3, *(a6 + 16));
    panic("Die %u D2D %s %s error: 0x%08x data 0x%08x @%s:%d", v8, *(a6 + 24), *(a6 + 32), *a4, Register32, "AppleH15PlatformErrorHandler.cpp", 4301);
  }

  panic("%s::%s: VERIFY failed @%s:%d", "AppleH15PlatformErrorHandler", "_d2dAfrErrorWithData", "AppleH15PlatformErrorHandler.cpp", 4297);
}

uint64_t AppleH15PlatformErrorHandler::_d2dAfrDecodeInterrupts(uint64_t result, const char *a2, int a3, uint64_t a4, _DWORD *a5, uint64_t a6, uint64_t a7, unint64_t a8)
{
  v29 = 0;
  v8 = a5[4];
  v9 = (a3 - a5[3]);
  if (v9 >= v8)
  {
    AppleH15PlatformErrorHandler::_d2dAfrDecodeInterrupts();
  }

  v10 = a5[2];
  if (v9 >= v10)
  {
    AppleH15PlatformErrorHandler::_d2dAfrDecodeInterrupts();
  }

  if (v10 != v8)
  {
    AppleH15PlatformErrorHandler::_d2dAfrDecodeInterrupts();
  }

  v14 = result;
  v15 = 0;
  v16 = "*UNKNOWN*";
  do
  {
    if (a8)
    {
      v17 = 0;
      v18 = 1;
      do
      {
        v19 = 56 * v17;
        v20 = a7 + v19;
        if (((a7 ^ (a7 + v19)) & 0xFFC0000000000000) != 0)
        {
          v20 = v20 & 0xFFFFFFFFFFFFLL | 0xC8A2000000000000;
        }

        result = AppleH15PlatformErrorHandler::_readRegister32(result, a6, v9, *(v20 + 8) + (v15 << 8));
        v29 = result;
        v16 = *(v20 + 32);
        if ((*(v20 + 12) & result) != 0)
        {
          v21 = *(v20 + 40);
          v22 = *(v20 + 48);
          v23 = !v22 || (*(v20 + 48) & 1 | v21) == 0;
          v24 = !v23;
          if (v21 || v24)
          {
            v26 = v22 >> 1;
            v27 = (v14 + v26);
            if (v26 != v26)
            {
              v27 = ((v14 + v26) & 0xFFFFFFFFFFFFLL | 0x2BAD000000000000);
            }

            if (*(v20 + 48))
            {
              v21 = *(*v27 + v21);
            }

            result = (v21)(v27, a2, v9, &v29, a6, v20);
          }
        }

        v17 = v18++;
      }

      while (v17 < a8);
    }

    ++v15;
  }

  while (v15 != 4);
  if (v29)
  {
    panic("Unhandled die %u D2D %s %s interrupt: status 0x%08x @%s:%d", v9, a2, v16, v29, "AppleH15PlatformErrorHandler.cpp", 4267);
  }

  return result;
}

void AppleH15PlatformErrorHandler::_d2dAfrErrorNoData(uint64_t a1, uint64_t a2, unsigned int a3, _DWORD *a4, uint64_t a5, uint64_t a6)
{
  if (a3 < 4)
  {
    panic("Die %u D2D %s %s error: 0x%08x @%s:%d", a3 >> 1, *(a6 + 24), *(a6 + 32), *a4, "AppleH15PlatformErrorHandler.cpp", 4284);
  }

  panic("%s::%s: VERIFY failed @%s:%d", "AppleH15PlatformErrorHandler", "_d2dAfrErrorNoData", "AppleH15PlatformErrorHandler.cpp", 4282);
}

void AppleH15PlatformErrorHandler::_d2dAfrTxCdcError(uint64_t a1, uint64_t a2, unsigned int a3, _DWORD *a4, uint64_t a5, uint64_t a6)
{
  if (a3 < 4)
  {
    v10 = a3 >> 1;
    Register32 = AppleH15PlatformErrorHandler::_readRegister32(a1, a5, a3, *(a6 + 16));
    v12 = AppleH15PlatformErrorHandler::_readRegister32(Register32, a5, a3, *(a6 + 16) + 4);
    v13 = AppleH15PlatformErrorHandler::_readRegister32(v12, a5, a3, *(a6 + 16) + 8);
    v14 = AppleH15PlatformErrorHandler::_readRegister32(v13, a5, a3, *(a6 + 16) + 12);
    panic("Die %u D2D %s %s error: 0x%08x status 0x%08x/0x%08x/0x%08x/0x%08x @%s:%d", v10, *(a6 + 24), *(a6 + 32), *a4, Register32, v12, v13, v14, "AppleH15PlatformErrorHandler.cpp", 4323);
  }

  panic("%s::%s: VERIFY failed @%s:%d", "AppleH15PlatformErrorHandler", "_d2dAfrTxCdcError", "AppleH15PlatformErrorHandler.cpp", 4314);
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

  AppleH15PlatformErrorHandler::_writeRegister32(v22, v8, a2, 0xA10u, v23);
  AppleH15PlatformErrorHandler::_writeRegister32(v24, v8, a2, 0xA70u, v23);
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

  Register32 = AppleH15PlatformErrorHandler::_readRegister32(this, v5, v3, 0xA10u);
  v12 = Register32;
  if (!Register32)
  {
    result = AppleH15PlatformErrorHandler::_readRegister32(Register32, v5, v3, 0xA14u);
    if (!result)
    {
      return result;
    }

LABEL_19:
    panic("IOA SRAM Parity error interrupt: IOA%u status 0x%08x @%s:%d", v3, result, "AppleH15PlatformErrorHandler.cpp", 4547);
  }

  v7 = Register32;
  v8 = 0;
  v9 = &AppleH15PlatformErrorHandler::_ioaDecoder;
  do
  {
    if ((*v9 & v7) != 0)
    {
      AppleH15PlatformErrorHandler::_ioaPanic(this, v3, &v12, v9);
      v7 = v12;
    }

    if (!v7)
    {
      break;
    }

    v9 += 8;
  }

  while (v8++ < 0x11);
  result = AppleH15PlatformErrorHandler::_readRegister32(Register32, v5, v3, 0xA14u);
  if (result)
  {
    goto LABEL_19;
  }

  if (v7)
  {
    panic("Unhandled IOA interrupt: IOA%u status 0x%08x @%s:%d", v3, v7, "AppleH15PlatformErrorHandler.cpp", 4553);
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

  v13 = AppleH15PlatformErrorHandler::_readRegister32(v10, v12, 0, 0x50000u);
  v14 = AppleH15PlatformErrorHandler::_readRegister32(v13, v12, 1u, 0x7Cu);
  if (!Register32)
  {
    v15 = &unk_567A;
    if (!v6)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v16 = &off_3E3E0;
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
      v19 = &off_3E490;
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
  v18 = &unk_567A;
  goto LABEL_21;
}

uint64_t AppleH15PlatformErrorHandler::_sramDecodeInterrupts(uint64_t this, int a2, void *a3)
{
  v9 = 0x534D500042554ELL;
  v10 = 4410707;
  if (*(this + 804))
  {
    v3 = this;
    v4 = 0;
    v5 = 0;
    v6 = this + 13112;
    if (((this ^ (this + 13112)) & 0xFFC0000000000000) != 0)
    {
      v6 = v6 & 0xFFFFFFFFFFFFLL | 0xC8A2000000000000;
    }

    v7 = &v9;
    do
    {
      this = AppleH15PlatformErrorHandler::_readRegister32(this, v6, v5, dword_903C[v4 - 6 * (v5 / 3)]);
      if (this)
      {
        Register32 = AppleH15PlatformErrorHandler::_readRegister32(this, v6, v5, dword_903C[v4 - 6 * (v5 / 3) + 1]);
        panic("%s SRAM Parity Error at Address: 0x%08x @%s:%d", v7 - 12 * (v5 / 3), Register32, "AppleH15PlatformErrorHandler.cpp", 4785);
      }

      ++v5;
      v7 = (v7 + 4);
      v4 += 2;
    }

    while (v5 < *(v3 + 804));
  }

  return this;
}

OSMetaClass *_GLOBAL__sub_I_AppleH15PlatformErrorHandler_cpp()
{
  result = OSMetaClass::OSMetaClass(&AppleH15PlatformErrorHandler::gMetaClass, "AppleH15PlatformErrorHandler", &IOService::gMetaClass, 0x3960u);
  result->__vftable = off_3AF08;
  return result;
}

OSMetaClass *AppleH15MemCacheController::MetaClass::MetaClass(OSMetaClass *this)
{
  result = OSMetaClass::OSMetaClass(this, "AppleH15MemCacheController", &AppleMemCacheController::gMetaClass, 0x8C0u);
  result->__vftable = off_3EC28;
  return result;
}

{
  result = OSMetaClass::OSMetaClass(this, "AppleH15MemCacheController", &AppleMemCacheController::gMetaClass, 0x8C0u);
  result->__vftable = off_3EC28;
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
  *v2 = off_3E5B8;
}

{
  AppleMemCacheController::AppleMemCacheController(this, a2);
  *v2 = off_3E5B8;
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

  _OSObject_typed_operator_delete(&AppleH15MemCacheController_ktv, this, 2240);
}

AppleMemCacheController *AppleH15MemCacheController::MetaClass::alloc(AppleH15MemCacheController::MetaClass *this)
{
  v1 = OSObject_typed_operator_new();
  AppleMemCacheController::AppleMemCacheController(v1, &AppleH15MemCacheController::gMetaClass);
  *v2 = off_3E5B8;
  OSMetaClass::instanceConstructed(&AppleH15MemCacheController::gMetaClass);
  return v1;
}

void AppleH15MemCacheController::AppleH15MemCacheController(AppleH15MemCacheController *this)
{
  AppleMemCacheController::AppleMemCacheController(this, &AppleH15MemCacheController::gMetaClass);
  *v1 = off_3E5B8;
  OSMetaClass::instanceConstructed(&AppleH15MemCacheController::gMetaClass);
}

{
  AppleMemCacheController::AppleMemCacheController(this, &AppleH15MemCacheController::gMetaClass);
  *v1 = off_3E5B8;
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
    _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "start: AMCCDCSOffset = %x", 0x200000);
    if (*(&gMccDebug + 1))
    {
      kprintf("%s:%d: start: AMCCDCSOffset = %x\n", "start", 489, 0x200000);
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
      *(*(this + 178) + 4 * v46) = AppleH15MemCacheController::_mccReadReg32(this, this + 1016, v46 / *(this + 516), ((v46 % *(this + 516)) << 21) + 2102216);
      ++v46;
    }

    while (v46 < *(this + 514));
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

  v48 = IOCommandGate::commandGate(this, 0);
  *(this + 260) = v48;
  if (!v48)
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

  v49 = (*(*this + 888))(this);
  if ((*(*v49 + 160))(v49, *(this + 260)))
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

  v51 = IOService::nameMatching("pram", 0);
  if (v51)
  {
    v52 = v51;
    v53 = IOService::waitForMatchingService(v51, 0xFFFFFFFFFFFFFFFFLL);
    if (!v53)
    {
      AppleH15MemCacheController::start();
    }

    v54 = v53;
    v55 = (v53->getProperty_1)(v53, "reg");
    v56 = OSMetaClassBase::safeMetaCast(v55, v14);
    if (!v56)
    {
      AppleH15MemCacheController::start();
    }

    v57 = v56;
    if ((v56->__vftable[1].getMetaClass)(v56) != 16)
    {
      AppleH15MemCacheController::start(v57);
    }

    v58 = (*(*v57 + 216))(v57);
    v59 = *v58;
    *(this + 265) = v58[1];
    (v54->release_0)(v54);
    (v52->release_0)(v52);
    v60 = gMccDebug;
    if ((gMccDebug & 0xFC) != 0)
    {
      _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "panicPhys=0x%llx", v59);
      v60 = gMccDebug;
      if ((gMccDebug & 0xFF00) != 0)
      {
        kprintf("%s:%d: panicPhys=0x%llx\n", "start", 640, v59);
        v60 = gMccDebug;
      }
    }

    if ((v60 & 0xFC) != 0)
    {
      _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "_mccPanicSize=0x%llx", *(this + 265));
      if (*(&gMccDebug + 1))
      {
        kprintf("%s:%d: _mccPanicSize=0x%llx\n", "start", 641, *(this + 265));
      }
    }

    v61 = (a2->removeObject_1)(a2, "panic-max-size");
    v62 = OSMetaClassBase::safeMetaCast(v61, v14);
    if (!v62)
    {
      AppleH15MemCacheController::start();
    }

    v63 = (v62->__vftable[2].~OSMetaClassBase_0)(v62);
    v64 = *v63;
    if ((gMccDebug & 0xFC) != 0)
    {
      _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "panicMaxSize=0x%llx", *v63);
      if (*(&gMccDebug + 1))
      {
        kprintf("%s:%d: panicMaxSize=0x%llx\n", "start", 648, v64);
      }
    }

    v65 = (a2->removeObject_1)(a2, "dram-base");
    v66 = OSMetaClassBase::safeMetaCast(v65, v14);
    if (!v66)
    {
      AppleH15MemCacheController::start();
    }

    v67 = (v66->__vftable[2].~OSMetaClassBase_0)(v66);
    v68 = *v67;
    if ((gMccDebug & 0xFC) != 0)
    {
      _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "dramBasePhy=0x%llx", *v67);
      if (*(&gMccDebug + 1))
      {
        kprintf("%s:%d: dramBasePhy=0x%llx\n", "start", 655, v68);
      }
    }

    v69 = (a2->removeObject_1)(a2, "dram-limit");
    v70 = OSMetaClassBase::safeMetaCast(v69, v14);
    if (!v70)
    {
      AppleH15MemCacheController::start();
    }

    v71 = (v70->__vftable[2].~OSMetaClassBase_0)(v70);
    v72 = *v71;
    if ((gMccDebug & 0xFC) != 0)
    {
      _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "dramLimit=0x%llx", *v71);
      if (*(&gMccDebug + 1))
      {
        kprintf("%s:%d: dramLimit=0x%llx\n", "start", 662, v72);
      }
    }

    v73 = *(this + 265);
    if (((v73 | v59) & 0x3F) != 0 || v73 > v64 || v59 >= v72 - v73)
    {
      panic("STR_CLASS ::%s:%d:  start:illegal pram range: base=%llx bytes=%llx @%s:%d", "start", 669, v59, *(this + 265), "AppleH15MemCacheController.cpp", 669);
    }

    *(this + 264) = v59 - v68;
    if ((gMccDebug & 0xFC) != 0)
    {
      _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "_mccPanicOffset=0x%llx", v59 - v68);
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

  v74 = 1776;
  *&v75 = -1;
  *(&v75 + 1) = -1;
  do
  {
    *(this + v74) = v75;
    v74 += 16;
  }

  while (v74 != 2032);
  AppleH15MemCacheController::_mccInitPerfCounters(this);
  AppleH15MemCacheController::_enableDsidProfileCounters(this);
  *(this + 526) = 0;
  if (*(this + 36))
  {
    (*(*this + 1376))(this, 1);
  }

  AppleARMFunction::registerFunctionParent(a2, this, v76);
  (*(*this + 672))(this, 2);
  AppleH15MemCacheController::_getRankCfgByteMode(this);
  ml_amcc_error_inject_register();
  ml_dcs_error_inject_register();
  AppleH15MemCacheController::_initMemHashParam(this, a2);
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
          AppleH15MemCacheController::_mccWriteReg64(this, v2, v4, v6, v7 + 256);
          if ((gMccDebug & 0xFC) != 0)
          {
            _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "AMCC %d Plane %d vDSID Profile counter(offset: 0x%x) set to 0x%llx\n", v4, v5 - 1, v6, v7 + 256);
            if (*(&gMccDebug + 1))
            {
              kprintf("%s:%d: AMCC %d Plane %d vDSID Profile counter(offset: 0x%x) set to 0x%llx\n\n", "_enableDsidProfileCounters", 1580, v4, v5 - 1, v6, v7 + 256);
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

          v3 = (v7 + 2);
          if (v5 >= *(this + 515))
          {
            break;
          }

          ++v5;
          v6 += 0x40000;
          v9 = v7 >= 0x1E;
          v7 += 2;
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
  v3 = OSData::metaClass;
  v4 = OSMetaClassBase::safeMetaCast(v2, OSData::metaClass);
  if (!v4 || (v5 = v4, (v4->__vftable[1].getMetaClass)(v4) != 4))
  {
    AppleH15MemCacheController::_getRankCfgByteMode();
  }

  v6 = *(v5->__vftable[2].~OSMetaClassBase_0)(v5);
  *(this + 554) = v6;
  if ((gMccDebug & 0xFC) != 0)
  {
    _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Byte Mode is %d", v6);
    if (*(&gMccDebug + 1))
    {
      kprintf("%s:%d: Byte Mode is %d\n", "_getRankCfgByteMode", 2699, *(this + 554));
    }
  }

  v7 = (*(**(this + 254) + 280))(*(this + 254), "rank-cfg");
  v8 = OSMetaClassBase::safeMetaCast(v7, v3);
  if (!v8 || (v9 = v8, (v8->__vftable[1].getMetaClass)(v8) != 4))
  {
    AppleH15MemCacheController::_getRankCfgByteMode();
  }

  v10 = *(v9->__vftable[2].~OSMetaClassBase_0)(v9);
  *(this + 555) = v10;
  if ((gMccDebug & 0xFC) != 0)
  {
    _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Rank config is %d", v10);
    if (*(&gMccDebug + 1))
    {
      kprintf("%s:%d: Rank config is %d\n", "_getRankCfgByteMode", 2706, *(this + 555));
    }
  }

  return 0;
}

uint64_t amcc_error_inject(AppleH15MemCacheController *a1, uint64_t a2, uint64_t a3, unsigned int a4, int a5, int a6, int a7, int a8)
{
  v9[0] = a8;
  v9[1] = a7;
  v9[2] = a6;
  v9[3] = a5;
  v11 = a3;
  v10 = a4;
  v12 = a2;
  if (!a1)
  {
    return 5;
  }

  AppleH15MemCacheController::setErrorInjection(a1, v9);
  return 0;
}

uint64_t dcs_error_inject(AppleH15MemCacheController *a1, uint64_t a2, uint64_t a3, int a4)
{
  v5[0] = 0;
  v6 = 0;
  v5[1] = a4;
  v7 = 0;
  v8 = a3;
  v9 = a2;
  if (a1)
  {
    return AppleH15MemCacheController::setErrorInjectionDCS(a1, v5);
  }

  else
  {
    return 5;
  }
}

uint64_t AppleH15MemCacheController::_initMemHashParam(AppleH15MemCacheController *this, IOService *a2)
{
  v4 = (*(**(this + 254) + 280))(*(this + 254), "ecs-nub-sram-base-0");
  v5 = OSData::metaClass;
  v6 = OSMetaClassBase::safeMetaCast(v4, OSData::metaClass);
  if (!v6 || (v7 = v6, (v6->__vftable[1].getMetaClass)(v6) != 8))
  {
    AppleH15MemCacheController::_initMemHashParam();
  }

  *(this + 180) = *(v7->__vftable[2].~OSMetaClassBase_0)(v7);
  v8 = (*(**(this + 254) + 280))();
  v9 = OSMetaClassBase::safeMetaCast(v8, v5);
  if (!v9 || (v10 = v9, (v9->__vftable[1].getMetaClass)(v9) != 8))
  {
    AppleH15MemCacheController::_initMemHashParam();
  }

  *(this + 181) = *(v10->__vftable[2].~OSMetaClassBase_0)(v10);
  v11 = (*(**(this + 254) + 280))();
  v12 = OSMetaClassBase::safeMetaCast(v11, v5);
  if (!v12 || (v13 = v12, (v12->__vftable[1].getMetaClass)(v12) != 8))
  {
    AppleH15MemCacheController::_initMemHashParam();
  }

  v14 = (v13->__vftable[2].~OSMetaClassBase_0)(v13);
  v15 = *v14;
  *(this + 182) = *v14;
  if (v15 == 192)
  {
    AppleH15MemCacheController::_initMemHashParam();
  }

  v16 = 0;
  v17 = 1;
  do
  {
    v18 = IODeviceMemory::withRange(*(this + v16 + 180), *(this + 182));
    *(this + v16 + 183) = v18;
    if (!v18)
    {
      AppleH15MemCacheController::_initMemHashParam();
    }

    v19 = (v18->map)(v18, 0);
    *(this + v16 + 185) = v19;
    if (!v19)
    {
      AppleH15MemCacheController::_initMemHashParam();
    }

    *(this + v16 + 187) = (*(*v19 + 120))(v19);
    v20 = (*(this + 514) > 0x20u) & v17;
    v16 = 1;
    v17 = 0;
  }

  while ((v20 & 1) != 0);
  HashingTable = AppleH15MemCacheController::getHashingTable(this, &AppleH15MemCacheController::memHashReg, this + 1512, 6u);
  if (HashingTable)
  {
    v22 = HashingTable;
    if (gMccDebug)
    {
      _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Invalid register table for memory hashing\n");
      if (*(&gMccDebug + 1))
      {
        v23 = 2755;
LABEL_20:
        kprintf("%s:%d: Invalid register table for memory hashing\n\n", "_initMemHashParam", v23);
      }
    }
  }

  else
  {
    v24 = AppleH15MemCacheController::getHashingTable(this, &AppleH15MemCacheController::bankHashReg, this + 1656, 5u);
    if (v24)
    {
      v22 = v24;
      if (gMccDebug)
      {
        _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Invalid register table for memory hashing\n");
        if (*(&gMccDebug + 1))
        {
          v23 = 2761;
          goto LABEL_20;
        }
      }
    }

    else
    {
      *(this + 556) = 0;
      *(this + 558) = 0;
      v25 = (a2->getProperty_1)(a2, "bank-group-drop-mask0");
      v26 = OSMetaClassBase::safeMetaCast(v25, v5);
      if (v26)
      {
        *(this + 208) = *(v26->__vftable[2].~OSMetaClassBase_0)(v26);
      }

      else if (gMccDebug >= 3u)
      {
        _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "bank-group-drop-mask0 is missing in mcc node in EDT\n");
        if (*(&gMccDebug + 1))
        {
          kprintf("%s:%d: bank-group-drop-mask0 is missing in mcc node in EDT\n\n", "_initMemHashParam", 2773);
        }
      }

      v27 = (a2->getProperty_1)(a2, "bank-group-drop-mask1");
      v28 = OSMetaClassBase::safeMetaCast(v27, v5);
      if (v28)
      {
        *(this + 211) = *(v28->__vftable[2].~OSMetaClassBase_0)(v28);
      }

      else if (gMccDebug >= 3u)
      {
        _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "bank-group-drop-mask1 is missing in mcc node in EDT\n");
        if (*(&gMccDebug + 1))
        {
          kprintf("%s:%d: bank-group-drop-mask1 is missing in mcc node in EDT\n\n", "_initMemHashParam", 2780);
        }
      }

      v29 = (a2->getProperty_1)(a2, "bank-drop-mask0");
      v30 = OSMetaClassBase::safeMetaCast(v29, v5);
      if (v30)
      {
        *(this + 214) = *(v30->__vftable[2].~OSMetaClassBase_0)(v30);
      }

      else if (gMccDebug >= 3u)
      {
        _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "bank-drop-mask0 is missing in mcc node in EDT\n");
        if (*(&gMccDebug + 1))
        {
          kprintf("%s:%d: bank-drop-mask0 is missing in mcc node in EDT\n\n", "_initMemHashParam", 2787);
        }
      }

      v31 = (a2->getProperty_1)(a2, "bank-drop-mask1");
      v32 = OSMetaClassBase::safeMetaCast(v31, v5);
      if (v32)
      {
        *(this + 217) = *(v32->__vftable[2].~OSMetaClassBase_0)(v32);
      }

      else if (gMccDebug >= 3u)
      {
        _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "bank-drop-mask1 is missing in mcc node in EDT\n");
        if (*(&gMccDebug + 1))
        {
          kprintf("%s:%d: bank-drop-mask1 is missing in mcc node in EDT\n\n", "_initMemHashParam", 2794);
        }
      }

      v33 = (a2->getProperty_1)(a2, "rank-drop-mask");
      v34 = OSMetaClassBase::safeMetaCast(v33, v5);
      v35 = *(this + 555);
      if (v34)
      {
        if (v35)
        {
          *(this + 220) = *(v34->__vftable[2].~OSMetaClassBase_0)(v34);
        }
      }

      else if (v35)
      {
        if (gMccDebug >= 3u)
        {
          _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "rank-drop-mask is missing in mcc node in EDT with dual-rank enabled\n");
          if (*(&gMccDebug + 1))
          {
            kprintf("%s:%d: rank-drop-mask is missing in mcc node in EDT with dual-rank enabled\n\n", "_initMemHashParam", 2801);
          }
        }
      }

      v36 = (a2->getProperty_1)(a2, "row-drop-mask");
      v37 = OSMetaClassBase::safeMetaCast(v36, v5);
      if (v37)
      {
        v38 = *(v37->__vftable[2].~OSMetaClassBase_0)(v37);
        *(this + 559) = v38;
        v39 = 0;
        if (v38)
        {
          v40 = v38;
          do
          {
            v39 += v40 & 1;
            v41 = v40 > 1;
            v40 >>= 1;
          }

          while (v41);
        }

        v42 = *(this + 558) + v39;
        *(this + 558) = v42;
        *(this + 556) += v42;
      }

      else
      {
        if (gMccDebug >= 3u)
        {
          _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "row-drop-mask is missing in mcc node in EDT\n");
          if (*(&gMccDebug + 1))
          {
            kprintf("%s:%d: row-drop-mask is missing in mcc node in EDT\n\n", "_initMemHashParam", 2808);
          }
        }

        v38 = 0;
        *(this + 559) = 0;
      }

      v43 = 0;
      v44 = 0;
      *(this + 557) = 0;
      do
      {
        v45 = *(this + v43 + 1520);
        if (v45)
        {
          ++*(this + 556);
          if ((v45 & (v45 - 1)) != 0)
          {
            return 3758097090;
          }

          v44 |= v45;
          *(this + 557) = v44;
        }

        v43 += 24;
      }

      while (v43 != 144);
      for (i = 0; i != 120; i += 24)
      {
        v47 = *(this + i + 1664);
        if (v47)
        {
          ++*(this + 556);
          if ((v47 & (v47 - 1)) != 0)
          {
            return 3758097090;
          }

          v44 |= v47;
          *(this + 557) = v44;
        }
      }

      v48 = v44 | v38;
      *(this + 557) = v48;
      if ((gMccDebug & 0xFC) != 0)
      {
        _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "dropBitsCounter is %d and dropbits mask is 0x%x\n", *(this + 556), v48);
        if (*(&gMccDebug + 1))
        {
          kprintf("%s:%d: dropBitsCounter is %d and dropbits mask is 0x%x\n\n", "_initMemHashParam", 2842, *(this + 556), *(this + 557));
        }
      }

      return 0;
    }
  }

  return v22;
}

uint64_t AppleH15MemCacheController::readCacheSize(AppleH15MemCacheController *this, unsigned int *a2)
{
  Reg32 = AppleH15MemCacheController::_mccReadReg32(this, this + 1016, 0, 0x100028u);
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
          v19 = off_3EE18;
          break;
        case 1298492736:
          v17 = OSObject_typed_operator_new();
          v18 = &AppleMemCacheFlushFunction::gMetaClass;
          AppleARMFunction::AppleARMFunction(v17, &AppleMemCacheFlushFunction::gMetaClass);
          v19 = off_3EF50;
          break;
        case 1298492708:
          v17 = OSObject_typed_operator_new();
          v18 = &AppleMemCacheModeFunction::gMetaClass;
          AppleARMFunction::AppleARMFunction(v17, &AppleMemCacheModeFunction::gMetaClass);
          v19 = off_3ECE0;
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
  *v1 = off_3ECE0;
  OSMetaClass::instanceConstructed(&AppleMemCacheModeFunction::gMetaClass);
}

{
  AppleARMFunction::AppleARMFunction(this, &AppleMemCacheModeFunction::gMetaClass);
  *v1 = off_3ECE0;
  OSMetaClass::instanceConstructed(&AppleMemCacheModeFunction::gMetaClass);
}

void AppleMemCachePanicFunction::AppleMemCachePanicFunction(AppleMemCachePanicFunction *this)
{
  AppleARMFunction::AppleARMFunction(this, &AppleMemCachePanicFunction::gMetaClass);
  *v1 = off_3EE18;
  OSMetaClass::instanceConstructed(&AppleMemCachePanicFunction::gMetaClass);
}

{
  AppleARMFunction::AppleARMFunction(this, &AppleMemCachePanicFunction::gMetaClass);
  *v1 = off_3EE18;
  OSMetaClass::instanceConstructed(&AppleMemCachePanicFunction::gMetaClass);
}

void AppleMemCacheFlushFunction::AppleMemCacheFlushFunction(AppleMemCacheFlushFunction *this)
{
  AppleARMFunction::AppleARMFunction(this, &AppleMemCacheFlushFunction::gMetaClass);
  *v1 = off_3EF50;
  OSMetaClass::instanceConstructed(&AppleMemCacheFlushFunction::gMetaClass);
}

{
  AppleARMFunction::AppleARMFunction(this, &AppleMemCacheFlushFunction::gMetaClass);
  *v1 = off_3EF50;
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
  if (*(this + 36) >= 0xDu)
  {
    *(this + 36) = 12;
  }

  Reg32 = AppleH15MemCacheController::_mccReadReg32(this, this + 1016, 0, 0x1C08u);
  v3 = *(this + 36);
  if (v3)
  {
    v4 = (v3 + 3) & 0xFFFFFFFC;
    v5 = xmmword_90D0;
    v6 = xmmword_90E0;
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
      AppleH15MemCacheController::_mccProtectedWriteReg32(this, this + 1016, v17++, 0x1C0728u, 0);
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
          AppleH15MemCacheController::_mccProtectedWriteReg32(this, this + 1016, j, 0x1C0728u, 1u);
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

  AppleH15MemCacheController::_mccWaitForWaysPwrOn(this, 12);
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

    AppleH15MemCacheController::_mccWaitForWaysPwrOn(this, 12);
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
            v10 = ((v6 % v8) << 21) + 2102216;
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
          AppleH15MemCacheController::_mccWriteReg32(this, this + 1016, v13 / *(this + 516), ((v13 % *(this + 516)) << 21) + 2102216, *(*(this + 178) + 4 * v13));
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
        v9 = ((v5 % v7) << 21) + 2097184;
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
        v9 = ((v5 % v7) << 21) + 2097184;
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
      v5 = (v2 % v3) << 21;
      if (*(this + 555))
      {
        AppleH15MemCacheController::_mccWriteReg32(this, this + 1016, v4, v5 + 2099788, 0);
      }

      v6 = v5 + 2099780;
      AppleH15MemCacheController::_mccWriteReg32(this, this + 1016, v4, v6 + 4, 0);
      AppleH15MemCacheController::_mccWriteReg32(this, this + 1016, v4, v6, 0);
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
      *(*(this + v2++ + 274) + 8240) = 1;
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
        Reg32 = AppleH15MemCacheController::_mccReadReg32(this, this + 1016, v3 / *(this + 516), ((v3 % *(this + 516)) << 21) + 2098240);
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

uint64_t AppleH15MemCacheController::handleDCSOdtsEvent(AppleH15MemCacheController *this, IOTimerEventSource *a2)
{
  if (*(this + 513) == 1)
  {
    v7 = 1;
    v3 = (*(*this + 1616))(this, &v7);
    if (v7)
    {
      (*(*this + 1384))(this, *(this + 40), v3);
    }
  }

  else
  {
    v4 = *(this + 40);
    DCSODTSReadingsMR4 = AppleH15MemCacheController::getDCSODTSReadingsMR4(this);
    (*(*this + 1384))(this, v4, DCSODTSReadingsMR4);
  }

  return (*(**(this + 19) + 256))(*(this + 19), *(this + 41), 1000000);
}

uint64_t AppleH15MemCacheController::getDCSODTSReadingsMR4(AppleH15MemCacheController *this)
{
  v29 = 0;
  if (*(this + 514))
  {
    v2 = 0;
    v3 = this + 1016;
    do
    {
      v4 = *(this + 516);
      v5 = v2 / v4;
      v6 = v2 % v4;
      Reg32 = AppleH15MemCacheController::_mccReadReg32(this, v3, v2 / v4, ((v2 % v4) << 21) + 2098456);
      v8 = AppleH15MemCacheController::getDCSODTSReadingsMR4(void)::amcc_to_dram_stack[v5];
      if (*(this + 555))
      {
        v9 = HIWORD(Reg32) & 0x1F;
        v10 = &v29 + v8;
        v11 = v29.u8[v8];
        if (v9 > v11)
        {
          v11 = HIWORD(Reg32) & 0x1F;
        }

        *v10 = v11;
        if (*(this + 554))
        {
          v12 = 0;
          v13 = HIBYTE(Reg32) & 0x1F;
          if (v13 > v11)
          {
            v11 = HIBYTE(Reg32) & 0x1F;
          }

          *v10 = v11;
        }

        else
        {
          v13 = 0;
          v12 = 1;
        }
      }

      else
      {
        v9 = 0;
        v13 = 0;
        v12 = *(this + 554) == 0;
        v11 = v29.u8[v8];
      }

      v14 = Reg32 & 0x1F;
      if (v14 > v11)
      {
        v29.i8[v8] = Reg32 & 0x1F;
        v11 = Reg32 & 0x1F;
      }

      if (v12)
      {
        v15 = 0;
      }

      else
      {
        v15 = (Reg32 >> 8) & 0x1F;
        if (v15 > v11)
        {
          LOBYTE(v11) = BYTE1(Reg32) & 0x1F;
        }

        v29.i8[v8] = v11;
      }

      if (gMccDebug >= 5u)
      {
        _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[AMCC/DCS=%u/%u, b0r0=%u, b1r0=%u b1r0=%u b1r1=%u]", v5, v6, Reg32 & 0x1F, v15, v9, v13);
        if (*(&gMccDebug + 1))
        {
          kprintf("%s:%d: [AMCC/DCS=%u/%u, b0r0=%u, b1r0=%u b1r0=%u b1r1=%u]\n", "getDCSODTSReadingsMR4", 1433, v5, v6, v14, v15, v9, v13);
        }
      }

      ++v2;
    }

    while (v2 < *(this + 514));
  }

  v16 = v29.i32[0];
  v17 = vmovl_u8(v29);
  v18 = vmovl_u16(*v17.i8);
  v19.i64[0] = v18.u32[2];
  v19.i64[1] = v18.u32[3];
  v20 = v19;
  v21 = vmovl_high_u16(v17);
  v19.i64[0] = v21.u32[2];
  v19.i64[1] = v21.u32[3];
  v22 = v19;
  v19.i64[0] = v18.u32[0];
  v19.i64[1] = v18.u32[1];
  v23 = v19;
  v19.i64[0] = v21.u32[0];
  v19.i64[1] = v21.u32[1];
  v24 = vorrq_s8(vorrq_s8(vshlq_u64(v23, xmmword_9100), vshlq_u64(v19, xmmword_90F0)), vorrq_s8(vshlq_u64(v20, xmmword_9120), vshlq_u64(v22, xmmword_9110)));
  v25 = vorr_s8(*v24.i8, *&vextq_s8(v24, v24, 8uLL));
  v26 = v25;
  if (gMccDebug > 4u)
  {
    LOBYTE(v16) = vmaxv_u8(v29);
    v28 = v16;
    _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "max=%u packed_mr4=%#llx", v16, *&v25);
    if (*(&gMccDebug + 1))
    {
      kprintf("%s:%d: max=%u packed_mr4=%#llx\n", "getDCSODTSReadingsMR4", 1444, v28, *&v26);
    }
  }

  return v26;
}

uint64_t AppleH15MemCacheController::getMaxOfDCSODTSReadings(AppleH15MemCacheController *this, BOOL *a2)
{
  *__str = 0;
  v12 = 0;
  memset(v13, 0, sizeof(v13));
  if (*(this + 2213))
  {
    AppleH15MemCacheController::dcsODTSReadWorkaround(this, 0);
  }

  if (!*(this + 514))
  {
    if ((*(this + 2213) & 1) == 0)
    {
      LOBYTE(v4) = 0;
      return v4;
    }

    AppleH15MemCacheController::setMuiSsbCtrl(this, 0);
    LOBYTE(v4) = 0;
    goto LABEL_35;
  }

  v3 = 0;
  LOBYTE(v4) = 0;
  LOBYTE(v5) = 0;
  LOBYTE(v6) = 0;
  LOBYTE(v7) = 0;
  do
  {
    Reg32 = AppleH15MemCacheController::_mccReadReg32(this, this + 1016, v3 / *(this + 516), ((v3 % *(this + 516)) << 21) + 2098456);
    if (*(this + 555))
    {
      v6 = HIWORD(Reg32) & 0x1F;
      if (v6 > v4)
      {
        v4 = HIWORD(Reg32) & 0x1F;
      }

      if (*(this + 554))
      {
        v5 = HIBYTE(Reg32) & 0x1F;
        if (v5 > v4)
        {
          v4 = HIBYTE(Reg32) & 0x1F;
        }
      }
    }

    snprintf(__str, 0x1EuLL, ", rank1_cs0=%d, rank1_cs1=%d", v6, v5);
    v8 = Reg32 & 0x1F;
    if (v8 > v4)
    {
      LOBYTE(v4) = Reg32 & 0x1F;
    }

    if (*(this + 554))
    {
      v7 = (Reg32 >> 8) & 0x1F;
      if (v7 > v4)
      {
        v4 = (Reg32 >> 8) & 0x1F;
      }
    }

    if (v4 == 13)
    {
      if (gMccDebug)
      {
        _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "getMaxOfDCSODTSReadings is %d with ODTS register 0x%#x and individual readings: [dcs=%d, cs0=%d, cs1=%d%s]", 13, Reg32, v3, Reg32 & 0x1F, v7, __str);
        if (*(&gMccDebug + 1))
        {
          kprintf("%s:%d: getMaxOfDCSODTSReadings is %d with ODTS register 0x%#x and individual readings: [dcs=%d, cs0=%d, cs1=%d%s]\n", "getMaxOfDCSODTSReadings", 1503, 13, Reg32, v3, v8, v7, __str);
        }
      }
    }

    else if ((gMccDebug & 0xFC) != 0)
    {
      _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "getMaxOfDCSODTSReadings is %d with ODTS register 0x%#x and individual readings: [dcs=%d, cs0=%d, cs1=%d%s]", v4, Reg32, v3, Reg32 & 0x1F, v7, __str);
      if (*(&gMccDebug + 1))
      {
        kprintf("%s:%d: getMaxOfDCSODTSReadings is %d with ODTS register 0x%#x and individual readings: [dcs=%d, cs0=%d, cs1=%d%s]\n", "getMaxOfDCSODTSReadings", 1505, v4, Reg32, v3, v8, v7, __str);
      }
    }

    ++v3;
  }

  while (v3 < *(this + 514));
  if (*(this + 2213))
  {
    AppleH15MemCacheController::setMuiSsbCtrl(this, 0);
    if (v4 == 13)
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

        LOBYTE(v4) = *(this + 2212);
        *(this + 2212) = 13;
        return v4;
      }

      LOBYTE(v4) = 13;
    }

LABEL_35:
    *(this + 2212) = v4;
  }

  return v4;
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
          *(v5 + 72) |= *(v5 + 56) & 0xFFFFFLL | ((*(v5 + 60) & 0xFFFFF) << 20);
          *(v5 + 80) = v10 | 0xFF000000000;
          v30 = 16 * v8 + 34904;
LABEL_45:
          *(v5 + 44) = v30;
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
    v28 = *(v5 + 24);
    *(v5 + 32) = 1 << v28;
    *(v5 + 28) = 34816;
    v29 = *(v5 + 8);
    if (v29 >= 3)
    {
      AppleH15MemCacheController::_setCntrCtrlParmeters((v5 + 8));
    }

    *(v5 + 72) = (*(v5 + 56) & 0xFFFFFLL | ((*(v5 + 60) & 0xFFFFF) << 20) | (v29 << 56)) + 0x100000000000000;
    *(v5 + 80) = 0xFF000000000;
    v30 = 8 * v28 + 34904;
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
        v12 = (v7[5] << 21) + 4 * a4 + v7[11] + 0x200000;
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
      Reg32 = AppleH15MemCacheController::_mccReadReg32(a1, a1 + 1016, v7[4], v9 + 0x200000);
      v11 = v7[4];
      v12 = v9 + 0x200000;
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
        AppleH15MemCacheController::_mccWriteReg32(a1, a1 + 1016, *(v9 + 16), v25 + 2098560, 113);
      }

      v26 = a1 + 1016;
      Reg32 = AppleH15MemCacheController::_mccReadReg32(a1, a1 + 1016, *(v9 + 16), v25 + 2098564);
      v28 = *(v9 + 32);
      v29 = Reg32 & ~v28;
      if (!a4)
      {
        v28 = 0;
      }

      v30 = *(v9 + 16);
      v31 = v25 + 2098564;
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
    v36 = AppleH15MemCacheController::_mccReadReg32(a1, a1 + 1016, *(v9 + 16), v35 + 0x200000);
    v37 = 10;
    while (1)
    {
      v38 = *(v9 + 40);
      if ((v38 & v36) == 0)
      {
        break;
      }

      v36 = AppleH15MemCacheController::_mccReadReg32(a1, a1 + 1016, *(v9 + 16), v35 + 0x200000);
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
    v31 = v35 + 0x200000;
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
        Reg64 = AppleH15MemCacheController::_mccReadReg64(a1, a1 + 1016, *(v6 + 16), *(v6 + 48) + (*(v6 + 20) << 21) + 2113536) / 0x18uLL;
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
      v10 = *(v6 + 48) + (*(v6 + 20) << 21) + 2113536;
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
    v6 = ((AppleH15MemCacheController::_mccReadReg32(this, this + 1016, 0, v5) & 0xF) << 17) * *(this + 517) * *(this + 515);
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
        v17 = (v14 >> 17) & 0xF;
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

uint64_t AppleH15MemCacheController::getHashingTable(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  result = 3758097090;
  if (a2 && a3)
  {
    if (a4)
    {
      v6 = a3 + 8;
      v7 = (a2 + 28);
      v8 = a4;
      do
      {
        v9 = *(v7 - 7);
        if (v9)
        {
          *(v6 - 8) = *(v7 - 6) & AppleH15MemCacheController::_mccReadReg32(a1, a1 + 1016, 0, v9);
          v10 = *(v7 - 4);
          if (v10)
          {
            *(v6 - 8) |= (*(v7 - 3) & AppleH15MemCacheController::_mccReadReg32(a1, a1 + 1016, 0, v10)) << 32;
          }

          v11 = *(v7 - 1);
          if (v11)
          {
            *v6 = *v7 & AppleH15MemCacheController::_mccReadReg32(a1, a1 + 1016, 0, v11);
            v12 = v7[2];
            if (v12)
            {
              *v6 |= (v7[3] & AppleH15MemCacheController::_mccReadReg32(a1, a1 + 1016, 0, v12)) << 32;
            }

            *(v6 + 8) = 0;
            v13 = v7[5];
            if (v13)
            {
              *(v6 + 8) = (v7[6] & AppleH15MemCacheController::_mccReadReg32(a1, a1 + 1016, 0, v13)) >> v7[7] != 0;
            }
          }
        }

        v6 += 24;
        v7 += 15;
        --v8;
      }

      while (v8);
    }

    return 0;
  }

  return result;
}

uint64_t AppleH15MemCacheController::getBitLocation(AppleH15MemCacheController *this, unint64_t a2, unsigned int *a3)
{
  result = 3758097090;
  if (!a2)
  {
    return 3758097086;
  }

  if (a3)
  {
    v4 = __clz(__rbit64(a2));
    *a3 = v4;
    if (1 << v4 == a2)
    {
      return 0;
    }

    else
    {
      return 3758097090;
    }
  }

  return result;
}

AppleH15MemCacheController *AppleH15MemCacheController::_dcsReadECSdata(AppleH15MemCacheController *this)
{
  if (*(this + 514))
  {
    v1 = this;
    v2 = 0;
    v3 = (this + 1496);
    do
    {
      v4 = 0;
      v5 = 1;
      do
      {
        v6 = 0;
        v7 = v5;
        v10 = 0;
        *v9 = 0;
        v8 = (24 * (v2 & 0x1F) + *&v3[2 * (v2 > 0x1F)] + 4 * v4);
        do
        {
          if ((v4 & 1) == 0)
          {
            v9[v6] = HIBYTE(*v8);
          }

          ++v6;
          v8 += 2;
        }

        while (v6 != 3);
        this = AppleH15MemCacheController::_dcsDecodeMRReg(v1, v2, v4, v9);
        v5 = 0;
        v4 = 1;
      }

      while ((v7 & 1) != 0);
      ++v2;
    }

    while (v2 < *(v1 + 514));
  }

  return this;
}

uint64_t AppleH15MemCacheController::_dcsDecodeMRReg(AppleH15MemCacheController *this, char a2, int a3, unsigned __int8 *a4)
{
  *(&v9 + 4) = 0;
  v12 = 0u;
  v13 = 0u;
  *v10 = 0u;
  v11 = 0u;
  v4 = a4[2];
  v5 = *a4 | (a4[1] << 8);
  v8 = *&vshl_u32(vdup_n_s32(v4), 0xFFFFFFFEFFFFFFFFLL) & 0xFFFFFF01FFFFFF01;
  v9 = (v4 >> 3) & 1;
  v7 = v4 & 1;
  return AppleH15MemCacheController::getPhysicalAddrFromECS(this, a2 & 3, a3, v5, &v7, v10);
}

uint64_t AppleH15MemCacheController::getPhysicalAddrFromECS(AppleH15MemCacheController *this, unsigned int a2, int a3, int a4, unsigned int *a5, unint64_t *a6)
{
  v7 = 0;
  v8 = (a4 << 11);
  v9 = this + 1656;
  v10 = (a2 >> 1) & 1;
  v11 = a2 & 1;
  v12 = this + 1512;
  v13.i64[0] = 0x100000001;
  v13.i64[1] = 0x100000001;
  v25 = vandq_s8(vshlq_u32(vdupq_n_s32(a2), xmmword_9130), v13);
  v14 = a4 << 11;
  while (1)
  {
    v26 = v8;
    v15 = AppleH15MemCacheController::restoreDropBits(this, &v26, v9, a5, 5u);
    if (v15)
    {
      break;
    }

    v27 = v25;
    v28 = v10;
    v29 = v11;
    this = AppleH15MemCacheController::restoreDropBits(v15, &v26, v12, &v27, 6u);
    if (this)
    {
      break;
    }

    v16 = v26;
    v17 = &a6[v7];
    *v17 = v26;
    if (gMccDebug >= 3u)
    {
      v18 = (*a5 | (2 * *(a5 + 4)) | (4 * *(a5 + 8)) | (8 * a5[3]));
      _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "ECS to PA: DCS = %d, CS = %d, DRAM Row Addr = %x, column num = 0x%02x, Bank = 0x%02x, Physical Addr = 0x%010llx\n", a2, a3, v14, v7, v18, v16);
      if (*(&gMccDebug + 1))
      {
        kprintf("%s:%d: ECS to PA: DCS = %d, CS = %d, DRAM Row Addr = %x, column num = 0x%02x, Bank = 0x%02x, Physical Addr = 0x%010llx\n\n", "getPhysicalAddrFromECS", 3168, a2, a3, v14, v7, v18, *v17);
      }
    }

    ++v7;
    v8 += 256;
    if (v7 == 8)
    {
      return 0;
    }
  }

  return 3758097084;
}

void AppleH15MemCacheController::writeErrorInjectionReg(AppleH15MemCacheController *this, unsigned int a2, int a3, unsigned int *a4)
{
  v7 = this + 1016;
  v8 = a3 + 16;
  for (i = 4; i != -1; --i)
  {
    AppleH15MemCacheController::_mccWriteReg32(this, v7, a2, v8, a4[i]);
    v8 -= 4;
  }
}

unint64_t AppleH15MemCacheController::xorMaskUInt64(AppleH15MemCacheController *this, uint64_t a2, uint64_t a3)
{
  result = a3 & a2;
  v4 = 32;
  do
  {
    result = (((~(-1 << v4) << v4) & result) >> v4) ^ result & ~(-1 << v4);
    v5 = v4 >= 2;
    v4 >>= 1;
  }

  while (v5);
  return result;
}

uint64_t AppleH15MemCacheController::getHashBitValues(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  result = 3758097084;
  if (a2 && a4)
  {
    if (a5)
    {
      for (i = 0; i != a5; *(a2 + 4 * i++) = *(v7 + 16) & 1 ^ v8)
      {
        v7 = a4 + 24 * i;
        if (((a4 ^ v7) & 0xFFC0000000000000) != 0)
        {
          v7 = v7 & 0xFFFFFFFFFFFFLL | 0xC8A2000000000000;
        }

        v8 = *v7 & a3;
        v9 = 32;
        do
        {
          v8 = (((~(-1 << v9) << v9) & v8) >> v9) ^ v8 & ~(-1 << v9);
          v10 = v9 > 1;
          v9 >>= 1;
        }

        while (v10);
      }
    }

    return 0;
  }

  return result;
}

uint64_t AppleH15MemCacheController::restoreDropBitsLocation(AppleH15MemCacheController *this, uint64_t a2, unint64_t a3)
{
  result = a2;
  for (i = 0; i != 64; ++i)
  {
    if ((a3 >> i))
    {
      result = result & ~(-1 << i) | (2 * ((-1 << i) & result));
    }
  }

  return result;
}

uint64_t AppleH15MemCacheController::dropBits(AppleH15MemCacheController *this, unint64_t a2, unint64_t a3)
{
  v3 = 0;
  LODWORD(result) = 0;
  v5 = 0;
  do
  {
    v6 = result | (((a2 >> v3) & 1) << v5);
    if ((a3 >> v3))
    {
      result = result;
    }

    else
    {
      ++v5;
      result = v6;
    }

    ++v3;
  }

  while (v3 != 64);
  return result;
}

uint64_t AppleH15MemCacheController::restoreDropBits(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  v5 = 0;
  if (a5)
  {
    v6 = a5;
    v7 = (a3 + 8);
    do
    {
      v9 = *v7;
      v7 += 3;
      v8 = v9;
      if (v9)
      {
        if ((v8 & (v8 - 1)) != 0)
        {
          return 3758097090;
        }

        v5 |= v8;
      }

      --v6;
    }

    while (v6);
  }

  v10 = 0;
  v11 = *a2;
  do
  {
    if ((v5 >> v10))
    {
      v11 = v11 & ~(-1 << v10) | (2 * ((-1 << v10) & v11));
    }

    ++v10;
  }

  while (v10 != 64);
  *a2 = v11;
  if (a5)
  {
    v12 = 0;
    result = 3758097090;
    do
    {
      v14 = a3 + 24 * v12;
      if (((a3 ^ v14) & 0xFFC0000000000000) != 0)
      {
        v14 = v14 & 0xFFFFFFFFFFFFLL | 0xC8A2000000000000;
      }

      v15 = *(v14 + 8);
      if (v15)
      {
        v16 = __clz(__rbit64(v15));
        if (1 << v16 != v15)
        {
          return result;
        }

        v17 = *v14 & v11;
        v18 = 32;
        do
        {
          v17 = (((~(-1 << v18) << v18) & v17) >> v18) ^ v17 & ~(-1 << v18);
          v19 = v18 != 0;
          v20 = v18 == 1;
          v18 >>= 1;
        }

        while (!v20 && v19);
        v11 |= (v17 ^ *(a4 + 4 * v12) ^ *(v14 + 16) & 1u) << v16;
        *a2 = v11;
      }

      ++v12;
    }

    while (v12 != a5);
  }

  return 0;
}

uint64_t AppleH15MemCacheController::setErrorInjection(AppleH15MemCacheController *a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  v3 = *(a2 + 32);
  v5 = *(a2 + 12);
  v6 = (*a2 << 30) | ((*(a2 + 4) & 3) << 28) | ((*(a2 + 8) & 3) << 26) | WORD2(v4) & 0x3FF;
  v11 = 0;
  v12 = 0;
  v13[0] = v6 | 0x80000000;
  v13[1] = v4;
  v13[2] = WORD2(v3) & 0x3FF | ((*(a2 + 16) & 0xFFFFF) << 10);
  v13[3] = v3;
  v13[4] = v5 & 0xFFFFF;
  AppleH15MemCacheController::getAmccInstance(a1, v3, &v12, &v11);
  v7 = v12;
  v8 = 1048720;
  for (i = 4; i != -1; --i)
  {
    AppleH15MemCacheController::_mccWriteReg32(a1, a1 + 1016, v7, v8, v13[i]);
    v8 -= 4;
  }

  return 0;
}

uint64_t AppleH15MemCacheController::getAmccInstance(AppleH15MemCacheController *this, uint64_t a2, unsigned int *a3, unsigned int *a4)
{
  v14 = 0;
  v15 = 0;
  v16 = 0;
  HashBitValues = AppleH15MemCacheController::getHashBitValues(this, &v14, a2, this + 1512, 6);
  if (HashBitValues)
  {
    if (gMccDebug)
    {
      _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Not able to get dcs hashing result. Aborting error injection\n");
      if (*(&gMccDebug + 1))
      {
        kprintf("%s:%d: Not able to get dcs hashing result. Aborting error injection\n\n");
      }
    }
  }

  else
  {
    if (*(this + 559))
    {
      v9 = HIDWORD(v15) + 2 * ((*(this + 390) & a2) - (2 * ((*(this + 195) & a2) / 3) + ((((*(this + 195) & a2) * 0xAAAAAAAAAAAAAAABLL) >> 64) >> 1)));
    }

    else
    {
      v9 = 2 * v15 + 4 * HIDWORD(v14) + HIDWORD(v15);
    }

    *a3 = v9;
    if (v14 == 1)
    {
      v9 += *(this + 517) >> 1;
      *a3 = v9;
    }

    v10 = (2 * v16) | (4 * v9) | HIDWORD(v16);
    *a4 = v10;
    if ((gMccDebug & 0xFC) != 0)
    {
      _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "amccInstance %u dcsNumber %u\n", *a3, v10);
      if (*(&gMccDebug + 1))
      {
        v12 = *a3;
        v13 = *a4;
        kprintf("%s:%d: amccInstance %u dcsNumber %u\n\n");
      }
    }
  }

  return HashBitValues;
}

uint64_t AppleH15MemCacheController::getBankVal(AppleH15MemCacheController *this, uint64_t a2, unsigned int *a3, unsigned int *a4, unsigned int *a5)
{
  v12 = 0;
  v13 = 0;
  v14 = 0;
  HashBitValues = AppleH15MemCacheController::getHashBitValues(this, &v12, a2, this + 1656, 5);
  if (HashBitValues)
  {
    if (gMccDebug)
    {
      _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Not able to get dcs hashing result. Aborting error injection\n");
      if (*(&gMccDebug + 1))
      {
        kprintf("%s:%d: Not able to get dcs hashing result. Aborting error injection\n\n");
      }
    }
  }

  else
  {
    *a4 = v12 | (2 * HIDWORD(v12));
    *a3 = v13 | (2 * HIDWORD(v13));
    *a5 = v14;
    if ((gMccDebug & 0xFC) != 0)
    {
      _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "bank %u bankgroup %u\n", *a3, *a4);
      if (*(&gMccDebug + 1))
      {
        v10 = *a3;
        v11 = *a4;
        kprintf("%s:%d: bank %u bankgroup %u\n\n");
      }
    }
  }

  return HashBitValues;
}

uint64_t AppleH15MemCacheController::setErrorInjectionDCS(AppleH15MemCacheController *a1, uint64_t a2)
{
  *v34 = 0;
  v4 = *(a2 + 32) & 0xFFFFFFFFFFLL;
  *(a2 + 32) = v4;
  if (AppleH15MemCacheController::getAmccInstance(a1, v4, &v34[1], v34))
  {
    if (gMccDebug)
    {
      _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "getAmccInstance failed\n");
      if (*(&gMccDebug + 1))
      {
        kprintf("%s:%d: getAmccInstance failed\n\n", "setErrorInjectionDCS", 3287);
      }
    }
  }

  *v33 = 0;
  v32 = 0;
  if (AppleH15MemCacheController::getBankVal(a1, *(a2 + 32), &v33[1], v33, &v32))
  {
    if (gMccDebug)
    {
      _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "getBankVal failed\n");
      if (*(&gMccDebug + 1))
      {
        kprintf("%s:%d: getBankVal failed\n\n", "setErrorInjectionDCS", 3291);
      }
    }
  }

  v5 = v34[1];
  v6 = (v34[0] & 3) << 21;
  if (AppleH15MemCacheController::_mccReadReg32(a1, a1 + 1016, v34[1], v6 + 2097156))
  {
    return 3758097095;
  }

  v7 = v6 + 0x200000;
  v8 = *(a2 + 4);
  Reg32 = AppleH15MemCacheController::_mccReadReg32(a1, a1 + 1016, v5, v7);
  v10 = Reg32;
  if (v8)
  {
    AppleH15MemCacheController::_mccWriteReg32(a1, a1 + 1016, v5, v7, Reg32 & 0xFFBFFFFF);
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = *(a2 + 32);
    do
    {
      v15 = v12 | (((v14 >> v11) & 1) << v13);
      if (((*(a1 + 557) >> v11) & 1) == 0)
      {
        ++v13;
        v12 = v15;
      }

      ++v11;
    }

    while (v11 != 64);
    v16 = *(a1 + 556) + 11;
    v17 = *(a1 + 559);
    if (v17)
    {
      v18 = 0;
      v19 = 0;
      v20 = 0;
      v21 = v17 ^ ~(-1 << v16);
      do
      {
        v22 = v19 | (((v14 >> v18) & 1) << v20);
        if (((v21 >> v18) & 1) == 0)
        {
          ++v20;
          v19 = v22;
        }

        ++v18;
      }

      while (v18 != 64);
      LODWORD(v23) = v19 / 3;
    }

    else
    {
      v23 = v14 >> v16;
    }

    v30 = v23 & 0x1FFFF;
    v31 = (v12 >> 5) & 0x3F;
    if ((gMccDebug & 0xFC) != 0)
    {
      _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "column 0x%x row 0x%x\n", v31, v23 & 0x1FFFF);
      if (*(&gMccDebug + 1))
      {
        kprintf("%s:%d: column 0x%x row 0x%x\n\n", "setErrorInjectionDCS", 3355, v31, v30);
      }
    }

    AppleH15MemCacheController::_mccWriteReg32(a1, a1 + 1016, v5, v7 | 0x17B4, ((v33[0] << 8) | (v30 << 10) | (v33[1] << 6) | (v32 << 27)) & 0xFFFFFC0 | v31);
    AppleH15MemCacheController::_mccWriteReg32(a1, a1 + 1016, v5, v7 | 0x17B8, 0);
    v25 = ((*(a2 + 4) & 3) << 7) | 1;
    v29 = v7 | 0x17B0;
    v26 = a1;
    v27 = a1 + 1016;
    v28 = v5;
  }

  else
  {
    AppleH15MemCacheController::_mccWriteReg32(a1, a1 + 1016, v5, v7 | 0x17B0, 0);
    v25 = v10 | 0x400000;
    v26 = a1;
    v27 = a1 + 1016;
    v28 = v5;
    v29 = v7;
  }

  AppleH15MemCacheController::_mccWriteReg32(v26, v27, v28, v29, v25);
  return 0;
}