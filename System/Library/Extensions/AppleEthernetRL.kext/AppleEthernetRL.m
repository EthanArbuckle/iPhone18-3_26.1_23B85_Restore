OSMetaClass *AppleEthernetRLIPC::MetaClass::MetaClass(OSMetaClass *this)
{
  result = OSMetaClass::OSMetaClass(this, "AppleEthernetRLIPC", &IOService::gMetaClass, 0xB8u);
  result->__vftable = off_50998;
  return result;
}

{
  result = OSMetaClass::OSMetaClass(this, "AppleEthernetRLIPC", &IOService::gMetaClass, 0xB8u);
  result->__vftable = off_50998;
  return result;
}

void AppleEthernetRLIPC::MetaClass::~MetaClass(OSMetaClass *this)
{
  OSMetaClass::~OSMetaClass(this);
}

{
  OSMetaClass::~OSMetaClass(this);
}

void AppleEthernetRLIPC::AppleEthernetRLIPC(AppleEthernetRLIPC *this, const OSMetaClass *a2)
{
  IOService::IOService(this, a2)->__vftable = off_50440;
}

{
  IOService::IOService(this, a2)->__vftable = off_50440;
}

void AppleEthernetRLIPC::~AppleEthernetRLIPC(IOService *this)
{
  IOService::~IOService(this);
}

{
  IOService::~IOService(this);
}

{
  IOService::~IOService(this);

  _OSObject_typed_operator_delete(&AppleEthernetRLIPC_ktv, this, 184);
}

IOService *AppleEthernetRLIPC::MetaClass::alloc(AppleEthernetRLIPC::MetaClass *this)
{
  v1 = OSObject_typed_operator_new();
  IOService::IOService(v1, &AppleEthernetRLIPC::gMetaClass)->__vftable = off_50440;
  OSMetaClass::instanceConstructed(&AppleEthernetRLIPC::gMetaClass);
  return v1;
}

void AppleEthernetRLIPC::AppleEthernetRLIPC(AppleEthernetRLIPC *this)
{
  IOService::IOService(this, &AppleEthernetRLIPC::gMetaClass)->__vftable = off_50440;
  OSMetaClass::instanceConstructed(&AppleEthernetRLIPC::gMetaClass);
}

{
  IOService::IOService(this, &AppleEthernetRLIPC::gMetaClass)->__vftable = off_50440;
  OSMetaClass::instanceConstructed(&AppleEthernetRLIPC::gMetaClass);
}

uint64_t AppleEthernetRLIPC::withParams(__int128 *a1, uint64_t a2)
{
  v4 = OSObject_typed_operator_new();
  IOService::IOService(v4, &AppleEthernetRLIPC::gMetaClass)->__vftable = off_50440;
  OSMetaClass::instanceConstructed(&AppleEthernetRLIPC::gMetaClass);
  v5 = *a1;
  v6 = *(a1 + 2);
  *(v4 + 160) = *(a1 + 6);
  *(v4 + 152) = v6;
  *(v4 + 136) = v5;
  *(v4 + 168) = a2;
  return v4;
}

int64x2_t AppleEthernetRLIPC::mmioClear(AppleEthernetRLIPC *this, unsigned int a2, unsigned int a3, int64x2_t result)
{
  if (a3)
  {
    v4 = *(this + 21);
    v5 = (a3 + 3) & 0x1FFFFFFFCLL;
    result = xmmword_770;
    v6 = xmmword_780;
    v7 = vdupq_n_s64(a3 - 1);
    v8 = vdupq_n_s64(4uLL);
    do
    {
      v9 = vmovn_s64(vcgeq_u64(v7, v6));
      if (vuzp1_s16(v9, *result.i8).u8[0])
      {
        *(v4 + a2) = 0;
      }

      if (vuzp1_s16(v9, *&result).i8[2])
      {
        *(v4 + a2 + 4) = 0;
      }

      if (vuzp1_s16(*&result, vmovn_s64(vcgeq_u64(v7, *&result))).i32[1])
      {
        *(v4 + a2 + 8) = 0;
        *(v4 + a2 + 12) = 0;
      }

      result = vaddq_s64(result, v8);
      v6 = vaddq_s64(v6, v8);
      a2 += 16;
      v5 -= 4;
    }

    while (v5);
  }

  return result;
}

unsigned __int8 *AppleEthernetRLIPC::mappedMemCpy(AppleEthernetRLIPC *this, unsigned __int8 *a2, unsigned __int8 *a3, uint64_t a4)
{
  result = a2;
  if (a4)
  {
    v5 = a2;
    do
    {
      v6 = *a3++;
      *v5++ = v6;
      --a4;
    }

    while (a4);
  }

  return result;
}

uint64_t AppleEthernetRLIPC::acquireMailboxSlot(AppleEthernetRLIPC *this)
{
  v1 = *(this + 44);
  if (!v1)
  {
    return 255;
  }

  v3 = ml_io_read32(*(this + 21) + v1);
  if (!v3)
  {
    AppleEthernetRLIPC::acquireMailboxSlot();
  }

  v4 = v3;
  v5 = __clz(v3);
  result = v5 ^ 0x1F;
  *(*(this + 21) + *(this + 44)) = v4 & ~(1 << (v5 ^ 0x1F));
  return result;
}

uint64_t AppleEthernetRLIPC::mailboxClientCall(AppleEthernetRLIPC *this, int a2, __int128 *a3, unsigned int *a4)
{
  v6 = -2147483640;
  v7 = *(this + 44);
  if (!v7)
  {
    v9 = 0;
    v10 = 2147483655;
    goto LABEL_21;
  }

  v9 = 0;
  v10 = 2147483650;
  if (!a3 || !a4)
  {
LABEL_21:
    if (a4)
    {
      if (!v10)
      {
        v6 = ml_io_read32(*(this + 21) + v9);
        v10 = 0;
      }

      goto LABEL_24;
    }

    return v10;
  }

  v12 = *(this + 21);
  v13 = AppleEthernetRLIPC::acquireMailboxSlot(this);
  if (v13 > 0x1F)
  {
    v10 = 2147483649;
LABEL_24:
    *a4 = v6;
    return v10;
  }

  v14 = 0;
  v15 = 116 * v13 + 12;
  *(*(this + 21) + (v15 + *(this + 44))) = a2;
  v16 = *(this + 38);
  v17 = a3[1];
  v31 = *a3;
  v32 = v17;
  v18 = a3[3];
  v33 = a3[2];
  v34 = v18;
  v19 = a3[5];
  v35 = a3[4];
  v36 = v19;
  DWORD2(v31) = v16 + 116 * v13 + 40;
  LODWORD(v32) = v16 + 116 * v13 + 88;
  do
  {
    *(v12 + v7 + 116 * v13 + 16 + v14) = *(&v31 + v14);
    ++v14;
  }

  while (v14 != 96);
  v10 = 0;
  v20 = v15 + *(this + 44);
  v21 = *(this + 21);
  *(v21 + (v20 + 104)) = 0;
  *(v21 + (v20 + 108)) = 0;
  *(v21 + (v20 + 112)) = 0;
  *(v21 + *(this + 34)) = 1 << v13;
  if (*a3 != 2)
  {
    v9 = v20 + 100;
    v22 = 34;
    do
    {
      if (*(this + 44) && ml_io_read32(*(this + 21) + (*(this + 34) + 8)))
      {
        v10 = AppleEthernetRLIPC::wakeMailboxReplyOwner(this);
        goto LABEL_21;
      }

      IOSleep(0x64u);
      --v22;
    }

    while (v22);
    IOLog("error: kTimeoutSirenCmd for callType 0x%x, handle 0x%x\n", a2, v31);
    v23 = *(this + 21);
    v24 = xmmword_770;
    v25 = xmmword_780;
    v26 = *(this + 44);
    v27 = 932;
    v28 = vdupq_n_s64(0x3A3uLL);
    v29 = vdupq_n_s64(4uLL);
    do
    {
      if (vuzp1_s16(vmovn_s64(vcgtq_u64(v28, v25)), *v24.i8).u8[0])
      {
        *(v23 + v26) = 0;
      }

      if (vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x3A3uLL), *&v25)), *&v24).i8[2])
      {
        *(v23 + v26 + 4) = 0;
      }

      if (vuzp1_s16(*&v24, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x3A3uLL), *&v24))).i32[1])
      {
        *(v23 + v26 + 8) = 0;
        *(v23 + v26 + 12) = 0;
      }

      v24 = vaddq_s64(v24, v29);
      v25 = vaddq_s64(v25, v29);
      v26 += 16;
      v27 -= 4;
    }

    while (v27);
    *(v23 + *(this + 44)) = -1;
    v10 = 2147483656;
    goto LABEL_21;
  }

  return v10;
}

uint64_t AppleEthernetRLIPC::initializeMailbox(uint64_t this, int a2, int a3)
{
  v3 = this;
  if (a3)
  {
    v4 = *(this + 168);
  }

  else
  {
    this = ml_io_read32(*(this + 168) + (*(this + 136) + 32));
    if (this != 195)
    {
      v6 = -4;
      do
      {
        IOSleep(0x64u);
        this = ml_io_read32(*(v3 + 168) + (*(v3 + 136) + 32));
      }

      while (this != 195 && v6++ != 0);
    }

    *(v3 + 176) = a2;
    v4 = *(v3 + 168);
    *(v4 + (*(v3 + 136) + 12)) = 1;
    *(v4 + (*(v3 + 136) + 32)) = 199;
  }

  v8 = xmmword_770;
  v9 = xmmword_780;
  v10 = *(v3 + 176);
  v11 = 932;
  v12 = vdupq_n_s64(0x3A3uLL);
  v13 = vdupq_n_s64(4uLL);
  do
  {
    if (vuzp1_s16(vmovn_s64(vcgtq_u64(v12, v9)), *v8.i8).u8[0])
    {
      *(v4 + v10) = 0;
    }

    if (vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x3A3uLL), *&v9)), *&v8).i8[2])
    {
      *(v4 + v10 + 4) = 0;
    }

    if (vuzp1_s16(*&v8, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x3A3uLL), *&v8))).i32[1])
    {
      *(v4 + v10 + 8) = 0;
      *(v4 + v10 + 12) = 0;
    }

    v8 = vaddq_s64(v8, v13);
    v9 = vaddq_s64(v9, v13);
    v10 += 16;
    v11 -= 4;
  }

  while (v11);
  *(v4 + *(v3 + 176)) = -1;
  return this;
}

uint64_t AppleEthernetRLIPC::psaCall(AppleEthernetRLIPC *a1, unsigned int a2, unsigned int a3, uint64_t a4, unint64_t a5, uint64_t a6, unint64_t a7)
{
  v15 = 0;
  v14 = 0u;
  memset(v13, 0, sizeof(v13));
  v11 = __PAIR64__(a3, a2);
  v12 = 0;
  if (a5)
  {
    v7 = 0;
    do
    {
      *(v13 + v7) = *(a4 + 8 * v7);
      ++v7;
    }

    while (a5 > v7);
  }

  if (a7)
  {
    v8 = 0;
    do
    {
      *(&v14 + v8) = *(a6 + 8 * v8);
      ++v8;
    }

    while (a7 > v8);
  }

  v10 = 0;
  LODWORD(result) = AppleEthernetRLIPC::mailboxClientCall(a1, 4, &v11, &v10);
  if (result)
  {
    return result;
  }

  else
  {
    return v10;
  }
}

BOOL AppleEthernetRLIPC::waitKR4TxIdle(AppleEthernetRLIPC *this, int a2)
{
  do
  {
    IOSleep(1u);
    v4 = ml_io_read32(*(this + 21) + (*(this + 34) + 4));
  }

  while (v4 == 1 && a2-- != 0);
  return v4 != 1;
}

uint64_t AppleEthernetRLIPC::waitKR4RxAck(AppleEthernetRLIPC *this, int a2)
{
  do
  {
    v3 = a2;
    IOSleep(1u);
    v4 = ml_io_read32(*(this + 21) + (*(this + 34) + 8));
    if ((v4 & 0x100) != 0)
    {
      break;
    }

    a2 = v3 - 1;
  }

  while (v3);
  return (v4 >> 8) & 1;
}

uint64_t AppleEthernetRLIPC::waitKR4RxAvailable(AppleEthernetRLIPC *this, int a2)
{
  do
  {
    v3 = a2;
    IOSleep(1u);
    v4 = ml_io_read32(*(this + 21) + (*(this + 34) + 8));
    if (v4)
    {
      break;
    }

    a2 = v3 - 1;
  }

  while (v3);
  return v4 & 1;
}

OSMetaClass *_GLOBAL__sub_I_AppleEthernetRLIPC_cpp()
{
  result = OSMetaClass::OSMetaClass(&AppleEthernetRLIPC::gMetaClass, "AppleEthernetRLIPC", &IOService::gMetaClass, 0xB8u);
  result->__vftable = off_50998;
  return result;
}

OSMetaClass *AppleEthernetRL::MetaClass::MetaClass(OSMetaClass *this)
{
  result = OSMetaClass::OSMetaClass(this, "AppleEthernetRL", &AppleSkywalkAVBEthernetInterface::gMetaClass, 0x6C8u);
  result->__vftable = off_51280;
  return result;
}

{
  result = OSMetaClass::OSMetaClass(this, "AppleEthernetRL", &AppleSkywalkAVBEthernetInterface::gMetaClass, 0x6C8u);
  result->__vftable = off_51280;
  return result;
}

void AppleEthernetRL::MetaClass::~MetaClass(OSMetaClass *this)
{
  OSMetaClass::~OSMetaClass(this);
}

{
  OSMetaClass::~OSMetaClass(this);
}

void AppleEthernetRL::AppleEthernetRL(AppleEthernetRL *this, const OSMetaClass *a2)
{
  AppleSkywalkAVBEthernetInterface::AppleSkywalkAVBEthernetInterface(this, a2);
  *v2 = off_50A30;
}

{
  AppleSkywalkAVBEthernetInterface::AppleSkywalkAVBEthernetInterface(this, a2);
  *v2 = off_50A30;
}

void AppleEthernetRL::~AppleEthernetRL(AppleEthernetRL *this)
{
  AppleSkywalkAVBEthernetInterface::~AppleSkywalkAVBEthernetInterface(this);
}

{
  AppleSkywalkAVBEthernetInterface::~AppleSkywalkAVBEthernetInterface(this);
}

{
  AppleSkywalkAVBEthernetInterface::~AppleSkywalkAVBEthernetInterface(this);

  _OSObject_typed_operator_delete(&AppleEthernetRL_ktv, this, 1736);
}

AppleSkywalkAVBEthernetInterface *AppleEthernetRL::MetaClass::alloc(AppleEthernetRL::MetaClass *this)
{
  v1 = OSObject_typed_operator_new();
  AppleSkywalkAVBEthernetInterface::AppleSkywalkAVBEthernetInterface(v1, &AppleEthernetRL::gMetaClass);
  *v2 = off_50A30;
  OSMetaClass::instanceConstructed(&AppleEthernetRL::gMetaClass);
  return v1;
}

void AppleEthernetRL::AppleEthernetRL(AppleEthernetRL *this)
{
  AppleSkywalkAVBEthernetInterface::AppleSkywalkAVBEthernetInterface(this, &AppleEthernetRL::gMetaClass);
  *v1 = off_50A30;
  OSMetaClass::instanceConstructed(&AppleEthernetRL::gMetaClass);
}

{
  AppleSkywalkAVBEthernetInterface::AppleSkywalkAVBEthernetInterface(this, &AppleEthernetRL::gMetaClass);
  *v1 = off_50A30;
  OSMetaClass::instanceConstructed(&AppleEthernetRL::gMetaClass);
}

AppleEthernetRL *AppleEthernetRL::probe(AppleEthernetRL *this, IOService *anObject, int *a3)
{
  v5 = this;
  v27 = 1;
  *(this + 69) = OSMetaClassBase::safeMetaCast(anObject, IOPCIDevice::metaClass);
  PE_parse_boot_argn("rl", &v27, 4);
  v6 = v5 + 600;
  PE_parse_boot_argn("rl.log_level", v5 + 600, 4);
  PE_parse_boot_argn("rl.fakeaddr", v5 + 624, 4);
  PE_parse_boot_argn("rl.pop", v5 + 1540, 4);
  *(v5 + 76) = IORegistryEntry::getRegistryEntryID(v5);
  if (!v27)
  {
    return 0;
  }

  {
    return 0;
  }

  v7 = (*(**(v5 + 69) + 336))(*(v5 + 69));
  if (!v7)
  {
    return 0;
  }

  v8 = v7;
  v9 = (*(**(v5 + 69) + 280))(*(v5 + 69), "local-mac-address");
  v10 = OSData::metaClass;
  v11 = OSMetaClassBase::safeMetaCast(v9, OSData::metaClass);
  if (v11)
  {
    v12 = v11;
    if ((v11->__vftable[1].getMetaClass)(v11) == 6)
    {
      v13 = (v12->__vftable[2].~OSMetaClassBase_0)(v12);
      v14 = *(v13 + 4);
      *(v5 + 154) = *v13;
      *(v5 + 310) = v14;
    }
  }

  v15 = (*(*v8 + 312))(v8, "device-id");
  v16 = OSMetaClassBase::safeMetaCast(v15, v10)->__vftable;
  v17 = *(v16[2].~OSMetaClassBase_0)();
  v18 = &off_51300;
  v19 = 4;
  while (v17 != *(v18 - 3))
  {
    v18 += 2;
    if (!--v19)
    {
      if (*v6)
      {
        IOLog("[0x%llx] rl::%s(%d): not handling dev_id 0x%x\n", *(v5 + 76), "probe", 94, v17);
      }

      (*(*v8 + 40))(v8);
      return 0;
    }
  }

  if (*v6)
  {
    IOLog("[0x%llx] rl::%s(%d): %s\n", *(v5 + 76), "probe", 66, *v18);
  }

  *(v5 + 46) = *(v5 + 69);
  *(v5 + 41) = v5;
  *(v5 + 178) = 4332;
  *(v5 + 179) = v17;
  v21 = (*(*v8 + 312))(v8, "subsystem-vendor-id");
  v22 = OSMetaClassBase::safeMetaCast(v21, v10);
  if (v22)
  {
    *(v5 + 180) = *(v22->__vftable[2].~OSMetaClassBase_0)(v22);
  }

  v23 = (*(*v8 + 312))(v8, "subsystem-id");
  v24 = OSMetaClassBase::safeMetaCast(v23, v10);
  if (v24)
  {
    *(v5 + 181) = *(v24->__vftable[2].~OSMetaClassBase_0)(v24);
  }

  v25 = (*(*v8 + 312))(v8, "revision-id");
  v26 = OSMetaClassBase::safeMetaCast(v25, v10)->__vftable;
  *(v5 + 354) = *(v26[2].~OSMetaClassBase_0)();
  (*(*v8 + 40))(v8);
  *(v5 + 104) |= 0x40000001u;
  *(v5 + 68) = re_hw_start_unlock_8125;
  *(v5 + 67) = re_ifmedia_upd_8125;
  return v5;
}

uint64_t AppleEthernetRL::start(AppleEthernetRL *this, IOService *a2)
{
  {
    return 0;
  }

  if (*(this + 600))
  {
    IOLog("[0x%llx] rl::%s(%d): pciDev %p, provider %p\n", *(this + 76), "start", 105, *(this + 69), a2);
  }

  IOPCIDevice::setBusLeadEnable(*(this + 69), 1);
  (*(**(this + 69) + 1416))(*(this + 69), 1);
  if ((*(**(this + 69) + 1544))())
  {
    (*(**(this + 69) + 1552))(*(this + 69), 3);
  }

  v4 = (*(**(this + 69) + 1480))(*(this + 69), 24, 0);
  *(this + 74) = v4;
  if (!v4)
  {
    return 0;
  }

  *(this + 70) = IOMapper::copyMapperForDevice(*(this + 69));
  if (*(this + 600))
  {
    AppleEthernetRL::start(this, this + 74);
  }

  *(this + 42) = (*(**(this + 74) + 120))(*(this + 74));
  v14[0] = 0;
  v14[1] = 0;
  AppleEthernetRL::initializeIPC(this);
  AppleEthernetRL::readIPCVersion(this);
  (*(*this + 2008))(this, 0x8000);
  if (!(*(*this + 2024))(this, v14))
  {
    (*(*this + 2000))(this, v14);
  }

  v5 = AppleEthernetRL::initializePowerStateHandling(this);
  if (v5)
  {
    v6 = v5;
    *(this + 76) |= 8u;
    *(this + 157) = 201392128;
  }

  else
  {
    v6 = -536870212;
    *(this + 309) = 12;
    *(this + 1220) = xmmword_790;
    AppleEthernetRL::resolveEnabledFeatures(this);
    AppleEthernetRL::configureRings(this);
    *(this + 76) |= 8u;
    *(this + 157) = 201392128;
    if (!re_check_mac_version(this + 296))
    {
      if (*(this + 312) && *(this + 314))
      {
        re_configure_global_rx(this + 296, 2);
      }

      started = AppleEthernetRL::initializeIrqMapping(this);
      if (started)
      {
        goto LABEL_23;
      }

      (*(*this + 2088))(this);
      started = AppleEthernetRL::initializeAVB(this);
      if (started)
      {
        goto LABEL_23;
      }

      re_init_software_variable(this + 296);
      LODWORD(v14[0]) = 0;
      PE_parse_boot_argn("rl.fi0", v14, 4);
      if (LODWORD(v14[0]) != 2)
      {
        (*(**(this + 69) + 1568))(*(this + 69), 0x10000, 1, 1, 0);
      }

      (*(**(this + 69) + 1568))(*(this + 69), 1, 1, 1, 0);
      v10 = IOMallocTypeVarImpl();
      *(this + 71) = v10;
      if (!v10)
      {
        v6 = -536870211;
        goto LABEL_13;
      }

      v11 = 0;
      v12 = 0;
      v15 = 0;
      do
      {
        if ((*(**(this + 69) + 1016))(*(this + 69), v11, &v15))
        {
          break;
        }

        if ((v15 & 0x10000) != 0)
        {
          if ((v15 & 0x20000) != 0)
          {
            v13 = 2048;
          }

          else
          {
            v13 = 1;
          }

          *(this + 104) |= v13;
          if (*(this + 600))
          {
            IOLog("[0x%llx] rl::%s(%d): irq=%d line=%d\n", *(this + 76), "detectMSI", 275, v12, v11);
          }

          *(*(this + 71) + 16 * v12++) = v11;
        }

        if (LODWORD(v14[0]))
        {
          break;
        }

        v11 = (v11 + 1);
      }

      while (v12 < 35);
      if (*(this + 600))
      {
        IOLog("[0x%llx] rl::%s(%d): num queues: mbuf %d, avb %d\n", *(this + 76), "detectMSI", 285, *(this + 311), *(this + 314));
      }

      re_exit_oob(this + 296);
      re_hw_init(this + 296);
      re_reset(this + 296);
      re_get_hw_mac_address(this + 296, this + 148);
      *(this + 151) = 1500;
      started = AppleEthernetRL::startEQs(this);
      if (started)
      {
LABEL_23:
        v6 = started;
      }

      else
      {
        v6 = AppleEthernetRL::startInterface(this);
        if (!v6)
        {
          (*(*this + 672))(this, 0);
          v7 = 1;
          goto LABEL_14;
        }
      }
    }
  }

LABEL_13:
  (*(*this + 696))(this, a2);
  v7 = 0;
LABEL_14:
  AppleEthernetRL::initializeTallyInfo(this);
  AppleEthernetRL::initializeDebugger(this);
  IOLog("[0x%llx] rl::%s(%d): err 0x%x\n", *(this + 76), "start", 215, v6);
  return v7;
}

double AppleEthernetRL::getHWSupportedFeatures(AppleEthernetRL *this)
{
  *(this + 309) = 12;
  *&result = 0x1000000008;
  *(this + 1220) = xmmword_790;
  return result;
}

uint64_t AppleEthernetRL::startEQs(AppleEthernetRL *this)
{
  v2 = 3758097084;
  v3 = IOTimerEventSource::timerEventSource(this, AppleEthernetRL::startEQs(void)::$_0::__invoke);
  *(this + 47) = v3;
  if (!v3)
  {
    return v2;
  }

  v4 = (*(*this + 888))(this);
  (*(*v4 + 160))(v4, *(this + 47));
  if ((*(this + 417) & 8) != 0)
  {
    v8 = 0;
    v9 = 0;
    while (1)
    {
      v10 = (*(*this + 888))(this);
      v11 = AppleEthernetRL::startEQs(void)::$_2::__invoke;
      if (v9 != 29)
      {
        if (v9 == 8)
        {
          v11 = AppleEthernetRL::startEQs(void)::$_4::__invoke;
        }

        else
        {
          if (v9)
          {
            goto LABEL_15;
          }

          v11 = AppleEthernetRL::startEQs(void)::$_3::__invoke;
        }
      }

      v12 = IOInterruptEventSource::interruptEventSource(this, v11, *(this + 69), *(*(this + 71) + v8));
      if (!v12)
      {
        if (*(this + 600))
        {
          IOLog("[0x%llx] rl::%s(%d): ERROR on irq %d\n", *(this + 76), "startEQs", 368, v9);
        }

        return v2;
      }

      v13 = v12;
      (*(*v10 + 160))(v10, v12);
      (v13->enable)(v13);
      if (*(this + 600))
      {
        IOLog("[0x%llx] rl::%s(%d): added irq %d\n", *(this + 76), "startEQs", 373, v9);
      }

LABEL_15:
      ++v9;
      v8 += 16;
      if (v9 == 64)
      {
        return 0;
      }
    }
  }

  v5 = IOInterruptEventSource::interruptEventSource(this, AppleEthernetRL::startEQs(void)::$_1::__invoke, *(this + 69), **(this + 71));
  if (v5)
  {
    v6 = v5;
    v7 = (*(*this + 888))(this);
    *(*(this + 71) + 8) = v6;
    (*(*v7 + 160))();
    (v6->enable)(v6);
    return 0;
  }

  return v2;
}

void AppleEthernetRL::initializeTallyInfo(AppleEthernetRL *this)
{
  v2 = -536870211;
  v8[0] = 0;
  v8[1] = 0;
  v7 = 0;
  v6 = 1;
  if (*(this + 165))
  {
    v2 = -536870187;
LABEL_7:
    IOLog("[0x%llx] rl::%s(%d): failed to initialize tally info 0x%x\n", *(this + 76), "initializeTallyInfo", 783, v2);
    return;
  }

  v3 = IOBufferMemoryDescriptor::inTaskWithPhysicalMask(kernel_task, 3u, 0xC0uLL, 0x3FFFuLL);
  if (!v3)
  {
    goto LABEL_7;
  }

  v4 = v3;
  v5 = IODMACommand::withSpecification(&IODMACommand::OutputHost64, 0x40u, 0, kMapped, 0, 0x4000u, *(this + 70), 0);
  *(this + 165) = v5;
  if (v5)
  {
    v2 = (v5->setMemoryDescriptor)(v5, v4, 1);
    if (!v2)
    {
      (*(**(this + 165) + 184))(*(this + 165), &v7, v8, &v6);
      *(this + 166) = v8[0];
      *(this + 167) = (v4->getBytesNoCopy)(v4);
    }
  }

  (v4->release_0)(v4);
  if (v2)
  {
    goto LABEL_7;
  }
}

uint64_t AppleEthernetRL::stop(AppleEthernetRL *this, IOService *a2)
{
  AppleEthernetRL::stopInterface(this);
  AppleEthernetRL::stopEQs(this);
  v4 = *(this + 71);
  *(this + 71) = 0;
  IOFreeTypeVarImpl();
  AppleEthernetRL::freeTallyInfo(this);
  AppleEthernetRL::freeAVB(this);
  AppleEthernetRL::freeIPC(this);
  v5 = *(this + 177);
  if (v5)
  {
    v6 = *v5;
    IOFreeData();
    *(this + 177) = 0;
  }

  if (*(this + 175))
  {
    IOFreeData();
    *(this + 175) = 0;
  }

  AppleEthernetRL::freePowerStateHandling(this);
  AppleEthernetRL::freeDebuggerResources(this);

  return v7(this, a2);
}

void *AppleEthernetRL::stopEQs(void *this)
{
  if (this[71])
  {
    v1 = this;
    for (i = 8; i != 1032; i += 16)
    {
      v3 = v1[71];
      if (*(v3 + i))
      {
        v4 = v1[72];
        if (v4)
        {
          (*(*v4 + 168))(v4);
        }

        v5 = (*(*v1 + 888))(v1);
        v6 = (v3 + i);
        (*(*v5 + 168))(v5, *v6);
        if (*v6)
        {
          (*(**v6 + 40))(*v6);
        }

        *v6 = 0;
      }
    }

    if (v1[47])
    {
      v7 = (*(*v1 + 888))(v1);
      (*(*v7 + 168))(v7, v1[47]);
      v8 = v1[47];
      if (v8)
      {
        (*(*v8 + 40))(v8);
      }

      v1[47] = 0;
    }

    this = v1[72];
    if (this)
    {
      this = (*(*this + 40))(this);
    }

    v1[72] = 0;
  }

  return this;
}

uint64_t AppleEthernetRL::freeTallyInfo(AppleEthernetRL *this)
{
  *(this + 166) = 0;
  *(this + 167) = 0;
  result = *(this + 165);
  if (result)
  {
    (*(*result + 144))(result, 1);
    result = *(this + 165);
    if (result)
    {
      result = (*(*result + 40))(result);
    }
  }

  *(this + 165) = 0;
  return result;
}

uint64_t AppleEthernetRL::free(AppleEthernetRL *this)
{
  v2 = *(this + 161);
  if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  *(this + 161) = 0;
  (*(*this + 2096))(this);

  return v3(this);
}

uint64_t AppleEthernetRL::initReceiveUnit(AppleEthernetRL *this)
{
  v1 = (this + 1244);
  if (*(this + 311) != 1)
  {
    AppleEthernetRL::initReceiveUnit(this + 311);
  }

  v3 = *(this + 314);
  if (v3)
  {
    v4 = v3 + 1;
  }

  else
  {
    v4 = 0;
  }

  if (v4 != -1)
  {
    v5 = 0;
    v6 = (this + 1032);
    do
    {
      v7 = dword_7A8[v5];
      v8 = *(v6 - 5);
      v9 = *(v6 - 1);
      v10 = *v6;
      bzero(v9, (*(v6 - 4) << 8));
      v11 = 4080;
      if (v8 == 2)
      {
        v11 = 8184;
      }

      v12 = 0x40000000;
      if (v8 == 2)
      {
        v12 = 0x2000000000000000;
      }

      *&v9[v11] |= v12;
      if (!*(this + 463))
      {
        __dmb(2u);
        *(*(this + 42) + v7) = v10;
        if (!*(this + 463))
        {
          __dmb(2u);
          *(*(this + 42) + (v7 + 4)) = HIDWORD(v10);
        }
      }

      v6 += 9;
      ++v5;
    }

    while (v5 < (*v1 + v4));
  }

  return 0;
}

uint64_t AppleEthernetRL::initTransmitUnit(AppleEthernetRL *this)
{
  v1 = (this + 1240);
  v2 = *(this + 310);
  if (v2 >= 2)
  {
    AppleEthernetRL::initTransmitUnit(this + 310);
  }

  v4 = *(this + 313);
  if (v4)
  {
    v5 = v4 + 1;
  }

  else
  {
    v5 = 0;
  }

  if (v2 + v5)
  {
    v6 = 0;
    v7 = (this + 816);
    do
    {
      v8 = dword_7B4[v6];
      v9 = *(v7 - 5);
      v10 = *(v7 - 1);
      v11 = *v7;
      bzero(v10, (*(v7 - 4) << 8));
      v12 = 4080;
      if (v9 == 2)
      {
        v12 = 8160;
      }

      *&v10[v12] |= 0x40000000uLL;
      if (!*(this + 463))
      {
        __dmb(2u);
        *(*(this + 42) + v8) = v11;
        if (!*(this + 463))
        {
          __dmb(2u);
          *(*(this + 42) + (v8 + 4)) = HIDWORD(v11);
        }
      }

      v7 += 9;
      ++v6;
    }

    while (v6 < (*v1 + v5));
  }

  return 0;
}

void AppleEthernetRL::enableIntrs(AppleEthernetRL *this)
{
  if (*(this + 600))
  {
    IOLog("[0x%llx] rl::%s(%d): <==\n", *(this + 76), "enableIntrs", 475);
  }

  re_hw_start_unlock_8125(this + 296);
  *(this + 1208) = 1;
  IOLog("[0x%llx] rl::%s(%d): Enabling Link change Interrupt\n", *(this + 76), "enableIntrs", 479);
  v2 = *(this + 463);
  if (*(this + 535))
  {
    if (*(this + 463))
    {
      goto LABEL_10;
    }

    __dmb(2u);
    *(*(this + 42) + 3340) = *(this + 386);
    if (*(this + 463))
    {
      goto LABEL_10;
    }

    v3 = (this + 336);
    __dmb(2u);
    v4 = 127;
    v5 = 10240;
  }

  else
  {
    if (*(this + 463))
    {
      goto LABEL_10;
    }

    __dmb(2u);
    v3 = (this + 336);
    v4 = 32;
    v5 = 56;
  }

  *(*v3 + v5) = v4;
LABEL_10:
  if (*(this + 600))
  {
    IOLog("[0x%llx] rl::%s(%d): ==>\n", *(this + 76), "enableIntrs", 488);
  }
}

uint64_t AppleEthernetRL::up(AppleEthernetRL *this)
{
  if (*(this + 600))
  {
    IOLog("[0x%llx] rl::%s(%d): <==\n", *(this + 76), "up", 501);
  }

  if (*(this + 312) && *(this + 314))
  {
    re_configure_global_rx(this + 296, 2);
  }

  re_exit_oob(this + 296);
  re_hw_init(this + 296);
  re_reset(this + 296);
  AppleEthernetRL::selMed(this, *(this + 86));
  re_phy_power_up(this + 296);
  re_hw_phy_config(this + 296);
  re_clrwol(this + 296);
  set_rxbufsize(this + 296);
  *(this + 462) = 0;
  AppleEthernetRL::enableIntrs(this);
  re_check_link_status(this + 296);
  AppleEthernetRL::updateCarrier(this);
  re_configure_tally(this + 296, *(this + 166));
  if (*(this + 600))
  {
    IOLog("[0x%llx] rl::%s(%d): ==> 0x%08x\n", *(this + 76), "up", 529, 0);
  }

  return 0;
}

uint64_t re_var_init(uint64_t a1)
{
  v1 = (a1 - 296);
  AppleEthernetRL::initReceiveUnit((a1 - 296));
  AppleEthernetRL::initTransmitUnit(v1);
  return 0;
}

uint64_t re_get_platform_mac_address(uint64_t a1, _WORD *a2)
{
  v4 = (a1 - 296);
  v5 = (*(**(a1 + 256) + 280))(*(a1 + 256), "built-in");
  if (OSMetaClassBase::safeMetaCast(v5, OSData::metaClass))
  {
    v6 = (a1 + 320);
    result = bcmp(&_sZeroMac, v6, 6uLL);
    if (!result)
    {
      result = AppleEthernetRL::generateFakeMACAddress(v4, v6, 1);
    }

    v8 = *v6;
    a2[2] = v6[2];
    *a2 = v8;
  }

  else
  {
    result = bcmp(&_sZeroMac, a2, 6uLL);
    if (!result)
    {
      v9 = *(a1 + 328);
      if (v9)
      {

        return AppleEthernetRL::generateFakeMACAddress(v4, a2, v9);
      }
    }
  }

  return result;
}

uint64_t re_get_platform_forced_link_state(uint64_t a1, _BYTE *a2)
{
  v2 = *(a1 + 1193);
  if (v2)
  {
    *a2 = 0;
  }

  return v2 & 1;
}

uint64_t AppleEthernetRL::readTallyInfo(const void **this, void *__dst, int a3, int a4)
{
  if (a3)
  {
    re_reset_tally((this + 37));
  }

  if (a4)
  {
    re_trigger_tally((this + 37));
  }

  memmove(__dst, this[167], 0xC0uLL);
  return 0;
}

OSString *AppleEthernetRL::newVendorString(AppleEthernetRL *this)
{
  if (*(this + 180) == 4203)
  {
    return OSString::withCString("Apple");
  }

  else
  {
    return OSString::withCString("Realtek");
  }
}

OSString *AppleEthernetRL::newModelString(AppleEthernetRL *this)
{
  v2 = 0;
  v3 = *(this + 181);
  if (v3 > 0x8126)
  {
    if (v3 == 33063)
    {
      v4 = "8127 (10 GbE)";
    }

    else
    {
      if (v3 != 34952)
      {
        goto LABEL_11;
      }

      v4 = "8127APA (10 GbE)";
    }
  }

  else if (v3 == 30583)
  {
    v4 = "8125CPA (2.5 GbE)";
  }

  else
  {
    if (v3 != 33061)
    {
      goto LABEL_11;
    }

    v4 = "8125 (2.5 GbE)";
  }

  v2 = OSString::withCString(v4);
LABEL_11:
  v17 = 0;
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  *__str = 0u;
  v12 = 0u;
  v5 = (*(*this + 1896))(this);
  v6 = v5;
  if (v5)
  {
    v7 = v2 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    v8 = (*(*v5 + 168))(v5);
    v9 = (v2->getCStringNoCopy)(v2);
    snprintf(__str, 0x64uLL, "%s %s", v8, v9);
    (*(**(this + 69) + 208))();
LABEL_17:
    (*(*v6 + 40))(v6);
    return v2;
  }

  if (v5)
  {
    goto LABEL_17;
  }

  return v2;
}

OSString *AppleEthernetRL::newRevisionString(AppleEthernetRL *this)
{
  v8 = 0;
  v6 = 0u;
  v7 = 0u;
  v4 = 0u;
  v5 = 0u;
  *__str = 0u;
  v3 = 0u;
  snprintf(__str, 0x64uLL, "%d", *(this + 354));
  return OSString::withCString(__str);
}

void AppleEthernetRL::startEQs(void)::$_0::__invoke(uint64_t a1)
{
  re_check_link_status(a1 + 296);
  if (*(a1 + 462) == 1)
  {

    AppleEthernetRL::updateCarrier(a1);
  }

  else
  {
    v2 = *(**(a1 + 376) + 240);

    v2();
  }
}

OSMetaClass *_GLOBAL__sub_I_AppleEthernetRL_cpp()
{
  result = OSMetaClass::OSMetaClass(&AppleEthernetRL::gMetaClass, "AppleEthernetRL", &AppleSkywalkAVBEthernetInterface::gMetaClass, 0x6C8u);
  result->__vftable = off_51280;
  return result;
}

OSMetaClass *AppleEthernetRLUserClient::MetaClass::MetaClass(OSMetaClass *this)
{
  result = OSMetaClass::OSMetaClass(this, "AppleEthernetRLUserClient", &IOUserClient2022::gMetaClass, 0xD8u);
  result->__vftable = off_51948;
  return result;
}

{
  result = OSMetaClass::OSMetaClass(this, "AppleEthernetRLUserClient", &IOUserClient2022::gMetaClass, 0xD8u);
  result->__vftable = off_51948;
  return result;
}

void AppleEthernetRLUserClient::MetaClass::~MetaClass(OSMetaClass *this)
{
  OSMetaClass::~OSMetaClass(this);
}

{
  OSMetaClass::~OSMetaClass(this);
}

void AppleEthernetRLUserClient::AppleEthernetRLUserClient(AppleEthernetRLUserClient *this, const OSMetaClass *a2)
{
  IOUserClient2022::IOUserClient2022(this, a2);
  *v2 = off_51358;
}

{
  IOUserClient2022::IOUserClient2022(this, a2);
  *v2 = off_51358;
}

void AppleEthernetRLUserClient::~AppleEthernetRLUserClient(AppleEthernetRLUserClient *this)
{
  IOUserClient2022::~IOUserClient2022(this);
}

{
  IOUserClient2022::~IOUserClient2022(this);
}

{
  IOUserClient2022::~IOUserClient2022(this);

  _OSObject_typed_operator_delete(&AppleEthernetRLUserClient_ktv, this, 216);
}

IOUserClient2022 *AppleEthernetRLUserClient::MetaClass::alloc(AppleEthernetRLUserClient::MetaClass *this)
{
  v1 = OSObject_typed_operator_new();
  IOUserClient2022::IOUserClient2022(v1, &AppleEthernetRLUserClient::gMetaClass);
  *v2 = off_51358;
  OSMetaClass::instanceConstructed(&AppleEthernetRLUserClient::gMetaClass);
  return v1;
}

void AppleEthernetRLUserClient::AppleEthernetRLUserClient(AppleEthernetRLUserClient *this)
{
  IOUserClient2022::IOUserClient2022(this, &AppleEthernetRLUserClient::gMetaClass);
  *v1 = off_51358;
  OSMetaClass::instanceConstructed(&AppleEthernetRLUserClient::gMetaClass);
}

{
  IOUserClient2022::IOUserClient2022(this, &AppleEthernetRLUserClient::gMetaClass);
  *v1 = off_51358;
  OSMetaClass::instanceConstructed(&AppleEthernetRLUserClient::gMetaClass);
}

uint64_t AppleEthernetRLUserClient::start(AppleEthernetRLUserClient *this, IOService *a2)
{
  v4 = kOSBooleanTrue;
  (*(*this + 200))(this, "IOUserClientDefaultLocking", *kOSBooleanTrue);
  (*(*this + 200))(this, "IOUserClientDefaultLockingSetProperties", *v4);
  (*(*this + 200))(this, "IOUserClientDefaultLockingSingleThreadExternalMethod", *v4);
  (*(*this + 208))(this, "IOUserClientEntitlements", "com.apple.driver.aerl.user-access");
  return v3;
}

uint64_t AppleEthernetRLUserClient::initWithTask(AppleEthernetRLUserClient *this, task *a2, void *a3, uint64_t a4, OSDictionary *a5)
{
  if (result)
  {
    return IOUserClient::clientHasPrivilege(a3, "root") == 0;
  }

  return result;
}

uint64_t AppleEthernetRLUserClient::clientClose(const IOService *this)
{
  if (!IOService::isInactive(this))
  {
    (this->terminate)(this, 0);
  }

  return 0;
}

OSMetaClass *_GLOBAL__sub_I_AppleEthernetRLUserClient_cpp()
{
  result = OSMetaClass::OSMetaClass(&AppleEthernetRLUserClient::gMetaClass, "AppleEthernetRLUserClient", &IOUserClient2022::gMetaClass, 0xD8u);
  result->__vftable = off_51948;
  return result;
}

void *OUTLINED_FUNCTION_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  result = a12;
  v13 = *a12;
  return result;
}

OSMetaClass *OSValueObject<IOEthernetController::IOEthernetAVBIngressFilterElement>::MetaClass::MetaClass(OSMetaClass *a1)
{
  result = OSMetaClass::OSMetaClass(a1, "OSValueObject<IOEthernetController::IOEthernetAVBIngressFilterElement>", &OSObject::gMetaClass, 0x18u);
  result->__vftable = off_51DE0;
  return result;
}

{
  result = OSMetaClass::OSMetaClass(a1, "OSValueObject<IOEthernetController::IOEthernetAVBIngressFilterElement>", &OSObject::gMetaClass, 0x18u);
  result->__vftable = off_51DE0;
  return result;
}

void AppleEthernetRL::updateTimestampAdjustments(AppleEthernetRL *this, unint64_t a2)
{
  if (*(this + 312))
  {
    v4 = 5;
    v5 = 4;
    v6 = 3;
    v7 = 2;
    if (a2 <= 0x3B9AC9FF)
    {
      v7 = a2 > 0x5F5E0FF;
    }

    if (a2 <= 0x9502F8FF)
    {
      v6 = v7;
    }

    if (a2 <= 0x12A05F1FFLL)
    {
      v5 = v6;
    }

    if (a2 <= 0x2540BE3FFLL)
    {
      v4 = v5;
    }

    *(this + 162) = *(this + v4 + 205);
    *(this + 163) = *(this + v4 + 211);
    if (PE_i_can_has_debugger(0))
    {
      v11 = 0;
      v9 = 0;
      v10 = 0;
      if (PE_parse_boot_argn("aerl_override_ptp", &v9, 8))
      {
        if (PE_parse_boot_argn("override_ptp_ingress", &v11, 8))
        {
          if (PE_parse_boot_argn("override_ptp_egress", &v10, 8))
          {
            *(this + 162) = v11;
            *(this + 163) = v10;
            _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "overriding PTP offsets from boot-args\n");
          }
        }
      }
    }

    (*(*this + 1968))(this, *(this + 162), *(this + 163));
    v8 = *(this + 162);
    _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "updateTimestampAdjustments speed %llu ingress offset %lld egress offset %lld\n", a2, v8, *(this + 163));
  }
}

uint64_t AppleEthernetRL::getTransmitQueuePrefetchDelay(AppleEthernetRL *this, unsigned __int8 a2)
{
  if (*(this + 312))
  {
    return re_read_prefetch_delay(this + 296, a2) << 12;
  }

  else
  {
    return 0;
  }
}

uint64_t AppleEthernetRL::getRealtimeAVBPacketPoolSize(uint64_t this)
{
  v1 = *(this + 1256);
  if (!v1)
  {
    return 0;
  }

  v2 = this;
  LODWORD(this) = *(this + 1076) + (*(this + 1076) >> 1);
  v3 = v2 + 992;
  v4 = -v1;
  v5 = 2;
  do
  {
    v6 = 72 * v5;
    v7 = v3 + v6;
    if (((v3 ^ (v3 + v6)) & 0xFFC0000000000000) != 0)
    {
      v7 = v7 & 0xFFFFFFFFFFFFLL | 0xC8A2000000000000;
    }

    this = (*(v7 + 12) + this);
    ++v5;
  }

  while (v4 + v5 != 2);
  return this;
}

unint64_t AppleEthernetRL::readFRC(AppleEthernetRL *this, unint64_t *a2, unint64_t *a3)
{
  if (a2)
  {
    *a2 = _IOTimeSyncTime();
  }

  v5 = this + 296;
  ptp_frc_lo = re_read_ptp_frc_lo(v5);
  if (a3)
  {
    *a3 = _IOTimeSyncTime();
  }

  return ptp_frc_lo | (re_read_ptp_frc_hi(v5) << 32);
}

uint64_t OSValueObject<IOEthernetController::IOEthernetAVBIngressFilterElement>::create()
{
  v0 = (*(OSValueObject<IOEthernetController::IOEthernetAVBIngressFilterElement>::gMetaClass + 104))();
  v1 = v0;
  if (v0 && ((*(*v0 + 104))(v0) & 1) == 0)
  {
    (*(*v1 + 40))(v1);
    return 0;
  }

  return v1;
}

uint64_t AppleEthernetRL::configureAVBFilterSlots(AppleEthernetRL *this)
{
  if (*(this + 314))
  {
    v2 = 0;
    v3 = this + 1264;
    v4 = this + 296;
    do
    {
      if ((*(**&v3[8 * v2] + 144))(*&v3[8 * v2]))
      {
        v5 = 0;
        v6 = 4 * v2;
        do
        {
          v7 = (*(**&v3[8 * v2] + 280))(*&v3[8 * v2], v5);
          v8 = OSMetaClassBase::safeMetaCast(v7, &OSValueObject<IOEthernetController::IOEthernetAVBIngressFilterElement>::gMetaClass)[2].__vftable;
          if (LODWORD(v8->~OSMetaClassBase) == 1)
          {
            v9 = v8;
            re_program_valid_slot(v4, v6 + 196, LOWORD(v8->~OSMetaClassBase_0), WORD1(v8->~OSMetaClassBase_0) ^ 0xFFFF);
            re_program_valid_slot(v4, v6 + 256, WORD2(v9->~OSMetaClassBase_0), HIWORD(v9->~OSMetaClassBase_0) ^ 0xFFFF);
          }

          else if ((*(this + 600) & 2) != 0)
          {
            IOLog("[0x%llx] rl::%s(%d): unhandled filter type 0x%x for qi %d, idx %d\n", *(this + 76), "configureAVBFilterSlots", 844, LODWORD(v8->~OSMetaClassBase), v2, v5);
          }

          v5 = (v5 + 1);
        }

        while (v5 < (*(**&v3[8 * v2] + 144))(*&v3[8 * v2]));
      }

      ++v2;
    }

    while (v2 < *(this + 314));
  }

  return 0;
}

uint64_t AppleEthernetRL::activateAVBFilter(AppleEthernetRL *this)
{
  v1 = this + 296;
  re_program_avb_filter_entry(this + 296, 8u, 0, 2, 0, 0, 1, 0, 0x11u);
  re_configure_avb_filter_entry(v1, 8u, 1);
  return 0;
}

uint64_t AppleEthernetRL::transmitTimeSyncPacket(AppleEthernetRL *this, IOEthernetController::IOEthernetAVBPacket *a2)
{
  if (!*(this + 312))
  {
    return 3758096385;
  }

  v2 = 3758097090;
  if (a2)
  {
    if (*(this + 1216))
    {
      numberOfEntries = a2->numberOfEntries;
      if (numberOfEntries != 1)
      {
        panic("unsupported, numFragments %d\\n @%s:%d", numberOfEntries, "AppleEthernetRL_AVB.cpp", 266);
      }

      v4 = *(this + 213);
      v5 = v4 + 1;
      v6 = *(this + 216);
      if ((v6 & (v4 + 1)) == *(this + 212))
      {
        return 3758097115;
      }

      else
      {
        v7 = *(this + 110);
        v8 = v7 + 16 * v4;
        if (16 * v4 != 16 * v4)
        {
          v8 = (v7 + 16 * v4) & 0xFFFFFFFFFFFFLL | 0x2BAD000000000000;
        }

        v9 = *(this + 114);
        v10 = (v9 + 8 * v4);
        if (8 * v4 != 8 * v4)
        {
          v10 = ((v9 + 8 * v4) & 0xFFFFFFFFFFFFLL | 0x2BAD000000000000);
        }

        length_low = LOWORD(a2->physicalRanges[0].length);
        address = a2->physicalRanges[0].address;
        *v10 = a2;
        if (v4 == v6)
        {
          v13 = 1879048192;
        }

        else
        {
          v13 = 805306368;
        }

        *(v8 + 4) = 0;
        *(v8 + 8) = address;
        *v8 = length_low | v13 | 0x80000000;
        v14 = *(this + 216) & v5;
        if (v14 == *(this + 213))
        {
          return 0;
        }

        *(this + 213) = v14;
        v2 = *(this + 463);
        if (*(this + 463))
        {
          return 0;
        }

        else
        {
          __dmb(2u);
          *(*(this + 42) + 144) = 256;
        }
      }
    }

    else
    {
      return 3758097124;
    }
  }

  return v2;
}

uint64_t AppleEthernetRL::handleTxPTPPacketsCompleted(void *a1, unsigned int *a2)
{
  v3 = *a2;
  v4 = a2[2];
  if (*a2 != v4)
  {
    v6 = IOTimeSyncInvalidTime;
    do
    {
      v7 = *(a2 + 8);
      v8 = 8 * v3;
      v9 = (v7 + (8 * v3));
      if (v8 != 8 * v3)
      {
        v9 = ((v7 + v8) & 0xFFFFFFFFFFFFLL | 0x2BAD000000000000);
      }

      v10 = *(a2 + 4);
      v11 = v3;
      v12 = *v9;
      *v9 = 0;
      v13 = a1[161];
      v14 = v6;
      if (v13)
      {
        v14 = (*(*v13 + 1408))(v13, a1[163] + *(v10 + 16 * v11 + 8));
      }

      *(v12 + 136) = v14;
      *(v12 + 144) = v14 != v6;
      (*(*a1 + 1960))(a1, v12, 0);
      v3 = a2[4] & (v11 + 1);
    }

    while (v3 != v4);
    v3 = v4;
  }

  *a2 = v3;
  return 0;
}

uint64_t AppleEthernetRL::handleTxAVBPacketsCompleted(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  if (*a2 != v4)
  {
    do
    {
      v6 = *(a2 + 64);
      v7 = 8 * v3;
      v8 = (v6 + (8 * v3));
      if (v7 != 8 * v3)
      {
        v8 = ((v6 + v7) & 0xFFFFFFFFFFFFLL | 0x2BAD000000000000);
      }

      v9 = *v8;
      *v8 = 0;
      if (v9)
      {
        (*(*a1 + 1984))(a1);
      }

      v3 = *(a2 + 16) & (v3 + 1);
    }

    while (v3 != v4);
    v3 = v4;
  }

  *a2 = v3;
  return 0;
}

uint64_t AppleEthernetRL::handleRxPTPPacketsAvailable(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 4);
  v5 = *(a2 + 8);
  explicit = atomic_load_explicit((a1 + 748), memory_order_acquire);
  if (v3 != v5)
  {
    v8 = 0;
    v9 = *(a1 + 752);
    v43 = IOTimeSyncInvalidTime;
    v42 = v9;
    do
    {
      v4 = v3;
      v10 = *(a2 + 32);
      v11 = 32 * v4;
      v12 = v10 + (32 * v4);
      if (v11 != 32 * v4)
      {
        v12 = (v10 + v11) & 0xFFFFFFFFFFFFLL | 0x2BAD000000000000;
      }

      v13 = *(a2 + 64);
      v14 = 8 * v4;
      v15 = (v13 + (8 * v4));
      if (v14 != 8 * v4)
      {
        v15 = ((v13 + v14) & 0xFFFFFFFFFFFFLL | 0x2BAD000000000000);
      }

      v16 = *(v12 + 28);
      v17 = *v15;
      if ((v16 & 0x3100000) != 0x3000000 || ((v18 = v16 & 0x3FFF, (*(v12 + 28) & 0x3FFFu) - 60 <= 0x5AE) ? (v19 = v17 == 0) : (v19 = 1), v19))
      {
        if ((*(a1 + 600) & 2) != 0)
        {
          IOLog("[0x%llx] rl::%s(%d): ! unexpected descriptor opts1 0x%08lx, ptpPkt %p\n", *(a1 + 608), "handleRxPTPPacketsAvailable", 554, *(v12 + 28), v17);
        }
      }

      else
      {
        v20 = *(a1 + 1288);
        v21 = v43;
        if (v20)
        {
          v21 = (*(*v20 + 1408))(v20, *(a1 + 1296) + *v12);
        }

        *(v17 + 136) = v21;
        *(v17 + 144) = v21 != v43;
        *(v17 + 152) = 0;
        *(v17 + 16) = v18;
        *(v17 + 4) = 1;
        v42 = (v9 + 1);
        if (v9 == explicit)
        {
          v9 = explicit;
          if ((*(a1 + 600) & 2) != 0)
          {
            IOLog("[0x%llx] rl::%s(%d): no space for PTP copy\n", *(a1 + 608), "handleRxPTPPacketsAvailable", 544);
            v9 = explicit;
          }
        }

        else
        {
          v22 = *(a1 + 728);
          v23 = 8 * v9;
          v24 = (v22 + (8 * v9));
          if (v23 != 8 * v9)
          {
            v24 = ((v22 + v23) & 0xFFFFFFFFFFFFLL | 0x2BAD000000000000);
          }

          v25 = *v24;
          v44 = 0;
          (*(*v25 + 128))(v25, &v44, 1);
          v41 = (*(*v25 + 176))(v25);
          v26 = v8;
          v27 = v5;
          v28 = explicit;
          MemorySegmentOffset = IOSkywalkPacketBuffer::getMemorySegmentOffset(v44);
          MemorySegment = IOSkywalkPacketBuffer::getMemorySegment(v44);
          VirtualAddress = IOSkywalkMemorySegment::getVirtualAddress(MemorySegment);
          v32 = MemorySegmentOffset + v41;
          explicit = v28;
          v5 = v27;
          v8 = v26;
          v33 = *(v17 + 16);
          memmove((v32 + VirtualAddress), *(v17 + 8), v33);
          (*(*v25 + 152))(v25, v33);
          IOSkywalkNetworkPacket::setLinkHeaderLength(v25, 0xEu);
          IOSkywalkNetworkPacket::setVlanTag(v25, *(v17 + 152));
          v9 = v42;
        }

        (*(*a1 + 1944))(a1, v17);
        ++v8;
        v34 = (*(*a1 + 1976))(a1);
        v17 = v34;
        v35 = *(a2 + 64);
        v36 = (v35 + (8 * v4));
        if (8 * v4 != 8 * v4)
        {
          v36 = ((v35 + 8 * v4) & 0xFFFFFFFFFFFFLL | 0x2BAD000000000000);
        }

        *v36 = v34;
      }

      if (!v17)
      {
        AppleEthernetRL::handleRxPTPPacketsAvailable();
      }

      v37 = *(v17 + 72);
      v38 = *(v17 + 80);
      *v12 = 0;
      *(v12 + 8) = 0;
      *(v12 + 16) = v37;
      *(v12 + 24) = 0;
      if (v4 == *(a2 + 12) - 1)
      {
        v39 = -1073741824;
      }

      else
      {
        v39 = 0x80000000;
      }

      __dmb(0xEu);
      *(v12 + 28) = v39 | v38;
      v3 = *(a2 + 16) & (v4 + 1);
    }

    while (v3 != v5);
    if (v8)
    {
      atomic_store(v42, (a1 + 752));
      (*(**(a1 + 768) + 352))(*(a1 + 768), 0, 1);
    }

    v3 = v5;
  }

  *a2 = v3;
  *(a2 + 4) = v4;
  return 0;
}

uint64_t AppleEthernetRL::handleRxAVBPacketsAvailable(void *a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  if (*a2 == v4)
  {
    v5 = *(a2 + 4);
  }

  else
  {
    v33 = a1 + 160;
    v34 = a1 + 159;
    v7 = IOTimeSyncInvalidTime;
    do
    {
      v5 = v3;
      v8 = *(a2 + 32);
      v9 = 32 * v5;
      v10 = v8 + (32 * v5);
      if (v9 != 32 * v5)
      {
        v10 = (v8 + v9) & 0xFFFFFFFFFFFFLL | 0x2BAD000000000000;
      }

      v11 = *(a2 + 64);
      v12 = 8 * v5;
      v13 = (v11 + (8 * v5));
      if (v12 != 8 * v5)
      {
        v13 = ((v11 + v12) & 0xFFFFFFFFFFFFLL | 0x2BAD000000000000);
      }

      v14 = *(v10 + 28);
      v15 = *v13;
      if ((v14 & 0x3100000) == 0x3000000)
      {
        v16 = v14 & 0x3FFF;
        if ((*(v10 + 28) & 0x3FFFu) - 64 <= 0x5AE)
        {
          v17 = a1[161];
          v18 = v7;
          if (v17)
          {
            v18 = (*(*v17 + 1408))(a1[161], a1[162] + *v10);
          }

          v19 = *(v10 + 24);
          v20 = (v19 & 0x10000) == 0;
          v21 = bswap32(v19) >> 16;
          if (v20)
          {
            LOWORD(v21) = 0;
          }

          *(v15 + 136) = v18;
          *(v15 + 144) = v18 != v7;
          *(v15 + 152) = v21;
          *(v15 + 16) = v16;
          *(v15 + 4) = 1;
          v22 = 8 * *(a2 + 56);
          v23 = (v34 + v22);
          if (v22 != v22)
          {
            v23 = (&v34[v22 / 8] & 0xFFFFFFFFFFFFLL | 0x2BAD000000000000);
          }

          v24 = *v23;
          v25 = (v33 + v22);
          if (v22 != v22)
          {
            v25 = (&v33[v22 / 8] & 0xFFFFFFFFFFFFLL | 0x2BAD000000000000);
          }

          (*(*a1 + 1952))(a1, v15, v24, *v25);
          v26 = (*(*a1 + 1976))(a1);
          v15 = v26;
          v27 = *(a2 + 64);
          v28 = (v27 + (8 * v5));
          if (8 * v5 != 8 * v5)
          {
            v28 = ((v27 + 8 * v5) & 0xFFFFFFFFFFFFLL | 0x2BAD000000000000);
          }

          *v28 = v26;
        }
      }

      v29 = *(v15 + 72);
      v30 = *(v15 + 80);
      *v10 = 0;
      *(v10 + 8) = 0;
      *(v10 + 16) = v29;
      *(v10 + 24) = 0;
      if (v5 == *(a2 + 12) - 1)
      {
        v31 = -1073741824;
      }

      else
      {
        v31 = 0x80000000;
      }

      __dmb(0xEu);
      *(v10 + 28) = v31 | v30;
      v3 = *(a2 + 16) & (v5 + 1);
    }

    while (v3 != v4);
    v3 = v4;
  }

  *a2 = v3;
  *(a2 + 4) = v5;
  return 0;
}

uint64_t AppleEthernetRL::fillRxPTPAVBRings(uint64_t this)
{
  if (*(this + 1248))
  {
    v1 = this;
    if (*(this + 1256) != -1)
    {
      v2 = 0;
      v3 = this + 992;
      do
      {
        v4 = 72 * (v1[311] + v2);
        v5 = v3 + v4;
        if (v4 != v4)
        {
          v5 = (v3 + v4) & 0xFFFFFFFFFFFFLL | 0x2BAD000000000000;
        }

        if (*v5 && *(v5 + 4) && *(v5 + 8))
        {
          AppleEthernetRL::fillRxPTPAVBRings(v5, v2);
        }

        if (*(v5 + 12))
        {
          v6 = 0;
          v7 = 0;
          do
          {
            v8 = *(v5 + 32);
            this = (*(*v1 + 1976))(v1);
            if (!this)
            {
              AppleEthernetRL::fillRxPTPAVBRings();
            }

            v9 = v8 + v6;
            *(*(v5 + 64) + 8 * v7) = this;
            *(this + 4) = 1;
            v10 = *(this + 72);
            v11 = *(this + 80);
            *v9 = 0;
            *(v9 + 8) = 0;
            *(v9 + 16) = v10;
            *(v9 + 24) = 0;
            if (v7 == *(v5 + 12) - 1)
            {
              v12 = -1073741824;
            }

            else
            {
              v12 = 0x80000000;
            }

            __dmb(0xEu);
            *(v9 + 28) = v12 | v11;
            ++v7;
            v13 = *(v5 + 12);
            v6 += 32;
          }

          while (v7 < v13);
          v14 = v13 - 1;
        }

        else
        {
          v14 = -1;
        }

        *(v5 + 4) = v14;
        __dmb(2u);
        ++v2;
      }

      while (v2 < v1[314] + 1);
    }
  }

  return this;
}

uint64_t AppleEthernetRL::configurePTPFilterSlots(AppleEthernetRL *this)
{
  v1 = this + 296;
  re_program_valid_slot(this + 296, 192, 35063, 0);
  re_program_valid_slot(v1, 320, 319, 0);
  re_program_valid_slot(v1, 321, 320, 0);
  return 0;
}

uint64_t AppleEthernetRL::activatePTPFilter(AppleEthernetRL *this)
{
  v1 = this + 296;
  re_program_avb_filter_entry(this + 296, 0, 0, 1, 0, 0, 0, 0, 0x10u);
  re_configure_avb_filter_entry(v1, 0, 1);
  re_program_avb_filter_entry(v1, 1u, 0, 0, 1, 0, 0, 1u, 0x10u);
  re_configure_avb_filter_entry(v1, 1u, 1);
  return 0;
}

uint64_t AppleEthernetRL::initializeAVB(AppleEthernetRL *this)
{
  v2 = OSValueObject<IOEthernetController::IOEthernetAVBIngressFilterElement>::create();
  memcpy(v2[2], &AppleEthernetRL::initializeAVB(void)::defaultAVBFilter, 0x110uLL);
  v3 = OSArray::withCapacity(1u);
  *(this + 158) = v3;
  (v3->setObject)();
  (*(*v2 + 5))(v2);
  if (*(this + 313))
  {
    v4 = 0;
    do
    {
      re_write_prefetch_delay(this + 296, v4++, 31);
    }

    while (*(this + 313) > v4);
  }

  AppleEthernetRL::initializePtpOffsetMapping(this);
  return 0;
}

uint64_t AppleEthernetRL::initializePtpOffsetMapping(AppleEthernetRL *this)
{
  v2 = *(this + 353);
  if ((v2 - 100) < 2)
  {
    result = 0;
    v4 = &kRealtekPtpMapping8127;
LABEL_5:
    v5 = v4[3];
    v6 = (this + 1640);
    v6[2] = v4[2];
    v6[3] = v5;
    v7 = v4[5];
    v6[4] = v4[4];
    v6[5] = v7;
    v8 = v4[1];
    *v6 = *v4;
    v6[1] = v8;
    return result;
  }

  if (v2 == 88)
  {
    result = 0;
    v4 = &kRealtekPtpMapping8125;
    goto LABEL_5;
  }

  IOLog("[0x%llx] rl::%s(%d): sc.re_type 0x%x not supported\n", *(this + 76), "initializePtpOffsetMapping", 1073, v2);
  return 3758097095;
}

uint64_t AppleEthernetRL::freeAVB(AppleEthernetRL *this)
{
  result = *(this + 158);
  if (result)
  {
    result = (*(*result + 40))(result);
  }

  *(this + 158) = 0;
  return result;
}

unint64_t AppleEthernetRL::enqueueRxPTPPackets(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5)
{
  v5 = *(a5 + 16);
  explicit = atomic_load_explicit((a5 + 24), memory_order_acquire);
  if (!a4 || v5 == explicit)
  {
    v7 = 0;
    *(a5 + 16) = v5;
  }

  else
  {
    v7 = 0;
    do
    {
      v8 = 8 * v5;
      v9 = (*a5 + (8 * v5));
      if (v8 != 8 * v5)
      {
        v9 = ((*a5 + v8) & 0xFFFFFFFFFFFFLL | 0x2BAD000000000000);
      }

      v10 = (a3 + 8 * v7++);
      *v10 = *v9;
      v5 = (v5 + 1);
    }

    while (v7 < a4 && v5 != explicit);
    *(a5 + 16) = v5;
    (*(**(a5 + 32) + 352))(*(a5 + 32), 0, 1);
  }

  return v7;
}

uint64_t AppleEthernetRL::dequeueRxPTPPackets(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a5 + 20);
  if (a4)
  {
    v6 = *(a5 + 16);
    v7 = a4;
    do
    {
      v8 = 8 * v5;
      v9 = (*a5 + (8 * v5));
      if (v8 != 8 * v5)
      {
        v9 = ((*a5 + v8) & 0xFFFFFFFFFFFFLL | 0x2BAD000000000000);
      }

      *v9 = *a3;
      v5 = (v5 + 1);
      if (v5 == v6)
      {
        AppleEthernetRL::dequeueRxPTPPackets();
      }

      ++a3;
      --v7;
    }

    while (v7);
  }

  atomic_store(v5, (a5 + 20));
  return a4;
}

OSMetaClass *__cxx_global_var_init()
{
  result = OSMetaClass::OSMetaClass(&OSValueObject<IOEthernetController::IOEthernetAVBIngressFilterElement>::gMetaClass, "OSValueObject<IOEthernetController::IOEthernetAVBIngressFilterElement>", &OSObject::gMetaClass, 0x18u);
  result->__vftable = off_51DE0;
  return result;
}

void OSValueObject<IOEthernetController::IOEthernetAVBIngressFilterElement>::MetaClass::~MetaClass(OSMetaClass *this)
{
  OSMetaClass::~OSMetaClass(this);
}

{
  OSMetaClass::~OSMetaClass(this);
}

OSObject *OSValueObject<IOEthernetController::IOEthernetAVBIngressFilterElement>::MetaClass::alloc(os_detail *a1)
{
  os_detail::GetOSValueObjectKTV(a1);
  v1 = OSObject_typed_operator_new();
  v2 = OSObject::OSObject(v1, &OSValueObject<IOEthernetController::IOEthernetAVBIngressFilterElement>::gMetaClass);
  v2->__vftable = off_51E88;
  v2[1].__vftable = 0;
  OSMetaClass::instanceConstructed(&OSValueObject<IOEthernetController::IOEthernetAVBIngressFilterElement>::gMetaClass);
  return v1;
}

uint64_t OSValueObject<IOEthernetController::IOEthernetAVBIngressFilterElement>::~OSValueObject(OSObject *a1)
{
  OSObject::~OSObject(a1);
  OSValueObjectKTV = os_detail::GetOSValueObjectKTV(v2);

  return _OSObject_typed_operator_delete(OSValueObjectKTV, a1, 24);
}

OSMetaClassBase *OSValueObject<IOEthernetController::IOEthernetAVBIngressFilterElement>::isEqualTo(uint64_t a1, OSMetaClassBase *anObject)
{
  result = OSMetaClassBase::safeMetaCast(anObject, &OSValueObject<IOEthernetController::IOEthernetAVBIngressFilterElement>::gMetaClass);
  if (result)
  {
    v4 = *(*a1 + 120);

    return v4(a1, result);
  }

  return result;
}

uint64_t OSValueObject<IOEthernetController::IOEthernetAVBIngressFilterElement>::init(uint64_t a1)
{
  if (result)
  {
    v3 = (a1 + 16);
    v4 = *(a1 + 16);
    if (v4)
    {
      v5 = *(a1 + 16);
      v4[15] = 0u;
      v4[16] = 0u;
      v4[13] = 0u;
      v4[14] = 0u;
      v4[11] = 0u;
      v4[12] = 0u;
      v4[9] = 0u;
      v4[10] = 0u;
      v4[7] = 0u;
      v4[8] = 0u;
      v4[5] = 0u;
      v4[6] = 0u;
      v4[3] = 0u;
      v4[4] = 0u;
      v4[1] = 0u;
      v4[2] = 0u;
      *v4 = 0u;
      v6 = *v3;
LABEL_6:
      v6[15] = 0u;
      v6[16] = 0u;
      v6[13] = 0u;
      v6[14] = 0u;
      v6[11] = 0u;
      v6[12] = 0u;
      v6[9] = 0u;
      v6[10] = 0u;
      v6[7] = 0u;
      v6[8] = 0u;
      v6[5] = 0u;
      v6[6] = 0u;
      v6[3] = 0u;
      v6[4] = 0u;
      v6[1] = 0u;
      v6[2] = 0u;
      result = 1;
      *v6 = 0u;
      return result;
    }

    result = IOMallocTypeImpl();
    if (result)
    {
      *v3 = result;
      v6 = result;
      goto LABEL_6;
    }

    *v3 = 0;
  }

  return result;
}

uint64_t OSValueObject<IOEthernetController::IOEthernetAVBIngressFilterElement>::free(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v2 = *(a1 + 16);
  }

  *(a1 + 16) = 0;
  IOFreeTypeImpl();
  *(a1 + 16) = 0;

  return (free)(a1);
}

uint64_t OSValueObject<IOEthernetController::IOEthernetAVBIngressFilterElement>::isEqualTo(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return (*(*a1 + 128))(a1, *(a2 + 16));
  }

  else
  {
    return 0;
  }
}

BOOL OSValueObject<IOEthernetController::IOEthernetAVBIngressFilterElement>::isEqualTo(uint64_t a1, const void *a2)
{
  if (*(a1 + 16))
  {
    v2 = *(a1 + 16);
  }

  else
  {
    v2 = 0;
  }

  return memcmp(v2, a2, 0x110uLL) == 0;
}

void OUTLINED_FUNCTION_1_1()
{
  v2 = (*(v0 + 64) + 8 * v1);
  v3 = *v2;
  *v2 = 0;
}

uint64_t AppleEthernetRL::initializeIPC(AppleEthernetRL *this)
{
  v9 = xmmword_9A0;
  v10 = 2684616704;
  v11 = -1610612736;
  v2 = (*(**(this + 74) + 120))(*(this + 74));
  v3 = AppleEthernetRLIPC::withParams(&v9, v2);
  *(this + 171) = v3;
  AppleEthernetRLIPC::initializeMailbox(v3, 196608, 0);
  v9 = xmmword_9B0;
  v10 = 0xA0045000A0044000;
  v11 = 0;
  v7 = (*(**(this + 74) + 120))(*(this + 74), v4, v5, v6);
  result = AppleEthernetRLIPC::withParams(&v9, v7);
  *(this + 172) = result;
  return result;
}

uint64_t AppleEthernetRL::freeIPC(AppleEthernetRL *this)
{
  v2 = *(this + 171);
  if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  *(this + 171) = 0;
  result = *(this + 172);
  if (result)
  {
    result = (*(*result + 40))(result);
  }

  *(this + 172) = 0;
  return result;
}

uint64_t AppleEthernetRL::setResetRisc(AppleEthernetRL *this, __int16 a2, __int16 a3, __int16 a4, __int16 a5, __int16 a6)
{
  v7 = (a2 | (2 * a3) | (4 * a4) | (8 * a5) | (16 * a6) | AppleEthernetRL::readMacReg16(this, 57540) & 0xFFE0);

  return AppleEthernetRL::writeMacReg16(this, 0xE0C4u, v7);
}

uint64_t AppleEthernetRL::readIPCVersion(AppleEthernetRL *this)
{
  result = *(this + 346);
  if (!result)
  {
    *(this + 346) = AppleEthernetRL::readMacReg16(this, 58896);
    v3 = (*(this + 346) | (AppleEthernetRL::readMacReg16(this, 58898) << 16)) & 0x7CF00000;
    *(this + 346) = v3;
    if (v3 == 1820327936 || v3 == 1887436800 || v3 == 1821376512)
    {
      *(this + 1388) = 1;
    }

    AppleEthernetRL::initializeIpcCmdMapping(this);
    return *(this + 346);
  }

  return result;
}

uint64_t AppleEthernetRL::initializeIpcCmdMapping(AppleEthernetRL *this)
{
  v1 = *(this + 346);
  if (v1 == 1820327936)
  {
    v3 = xmmword_9C0;
    v4 = xmmword_9D0;
    goto LABEL_9;
  }

  if (v1 == 1887436800 || v1 == 1821376512)
  {
    v3 = xmmword_9E0;
    v4 = xmmword_9F0;
LABEL_9:
    *(this + 99) = xmmword_A00;
    *(this + 200) = 0x500000004;
    *(this + 1608) = v4;
    *(this + 1624) = v3;
  }

  return 0;
}

uint64_t AppleEthernetRL::fetchIPC_SysInfo(AppleEthernetRL *this, unsigned __int8 *a2, unint64_t a3)
{
  v4 = 3758097090;
  v8 = 0x34A0040F00;
  if (!a2)
  {
    goto LABEL_9;
  }

  if (a3 < 0x34)
  {
    v4 = 3758097115;
LABEL_9:
    v6 = 0x7FFFFFFF;
    goto LABEL_11;
  }

  if ((*(this + 1388) & 1) == 0)
  {
    v4 = 3758097105;
    goto LABEL_9;
  }

  v6 = AppleEthernetRLIPC::psaCall(*(this + 171), *(this + 397), 0, 0, 0, &v8, 1uLL);
  if (!v6)
  {
    AppleEthernetRLIPC::copyFromSRAM(*(this + 171), 0xF00u, a2, 0x34u);
    return 0;
  }

  v4 = 3758097098;
LABEL_11:
  if ((*(this + 600) & 2) != 0)
  {
    IOLog("[0x%llx] rl::%s(%d): status 0x%x, callReturn 0x%x\n", *(this + 76), "fetchIPC_SysInfo", 168, v4, v6);
  }

  return v4;
}

uint64_t AppleEthernetRL::fetchIPC_ReadROTPK(AppleEthernetRL *this, int a2, unsigned __int8 *a3, unint64_t a4)
{
  v5 = 3758097090;
  v12 = 0x4A0040F00;
  v11 = 0x4A0040F04;
  if (!a3)
  {
    goto LABEL_11;
  }

  if (a4 < 0x20)
  {
    v5 = 3758097115;
LABEL_11:
    v9 = 0x7FFFFFFF;
    goto LABEL_13;
  }

  if ((*(this + 1388) & 1) == 0)
  {
    v5 = 3758097105;
    goto LABEL_11;
  }

  v7 = 1620;
  if (a2)
  {
    v7 = 1616;
  }

  v8 = *(this + v7);
  AppleEthernetRLIPC::writeToSRAM(*(this + 171), 3840, 32);
  AppleEthernetRLIPC::writeToSRAM(*(this + 171), 3844, -1610346496);
  v9 = AppleEthernetRLIPC::psaCall(*(this + 171), v8, 0, &v12, 1uLL, &v11, 1uLL);
  if (!v9)
  {
    AppleEthernetRLIPC::copyFromSRAM(*(this + 171), 0x1000u, a3, 0x20u);
    return 0;
  }

  v5 = 3758097098;
LABEL_13:
  if ((*(this + 600) & 2) != 0)
  {
    IOLog("[0x%llx] rl::%s(%d): status 0x%x, callReturn 0x%x\n", *(this + 76), "fetchIPC_ReadROTPK", 212, v5, v9);
  }

  return v5;
}

uint64_t AppleEthernetRL::fetchIPC_Connect(AppleEthernetRL *this, int a2)
{
  v6 = 0x4A0040F00;
  AppleEthernetRLIPC::writeToSRAM(*(this + 171), 3840, a2);
  v3 = AppleEthernetRLIPC::psaCall(*(this + 171), *(this + 396), 0, &v6, 1uLL, 0, 0);
  if (!v3)
  {
    return 0;
  }

  v4 = 3758097084;
  if ((*(this + 600) & 2) != 0)
  {
    IOLog("[0x%llx] rl::%s(%d): status 0x%x, callReturn 0x%x\n", *(this + 76), "fetchIPC_Connect", 306, -536870212, v3);
  }

  return v4;
}

uint64_t AppleEthernetRL::fetchIPC_Lifecycle(AppleEthernetRL *this, unsigned __int8 *a2, unint64_t a3)
{
  v4 = 3758097090;
  v8 = 0x4A0040F00;
  if (!a2)
  {
    goto LABEL_9;
  }

  if (a3 < 4)
  {
    v4 = 3758097115;
LABEL_9:
    v6 = 0x7FFFFFFF;
    goto LABEL_11;
  }

  if ((*(this + 1388) & 1) == 0)
  {
    v4 = 3758097105;
    goto LABEL_9;
  }

  v6 = AppleEthernetRLIPC::psaCall(*(this + 171), *(this + 407), 0, 0, 0, &v8, 1uLL);
  if (!v6)
  {
    AppleEthernetRLIPC::copyFromSRAM(*(this + 171), 0xF00u, a2, 4u);
    return 0;
  }

  v4 = 3758097098;
LABEL_11:
  if ((*(this + 600) & 2) != 0)
  {
    IOLog("[0x%llx] rl::%s(%d): status 0x%x, callReturn 0x%x\n", *(this + 76), "fetchIPC_Lifecycle", 282, v4, v6);
  }

  return v4;
}

uint64_t AppleEthernetRL::fetchIPC_ReadNVRAM(AppleEthernetRL *this, unsigned int a2, unsigned __int8 *a3, unint64_t a4, unsigned int a5)
{
  IPC_Connect = 3758097090;
  v14[0] = xmmword_A50;
  v14[1] = unk_A60;
  v7 = 0x7FFFFFFF;
  if (a2 <= 3)
  {
    if (a3)
    {
      v9 = a4;
      if (a4 <= 0x20000 && (a4 & 3) == 0 && (a5 & 3) == 0)
      {
        if (*(this + 1388))
        {
          v11 = a4 + a5;
          v7 = 0x7FFFFFFF;
          if (!HIDWORD(v11) && v11 <= 0x20000)
          {
            v12 = a2;
            if (*(this + 346) == 1820327936)
            {
              if (a2 != 3)
              {
                IOLog("[0x%llx] rl::%s(%d): $$$ NOT SUPPORTED\n", *(this + 76), "fetchIPC_ReadNVRAM", 344);
                return 3758097095;
              }

              v12 = 0;
            }

            AppleEthernetRLIPC::writeToSRAM(*(this + 171), 3840, v12);
            AppleEthernetRLIPC::writeToSRAM(*(this + 171), 3844, -1610612736);
            AppleEthernetRLIPC::writeToSRAM(*(this + 171), 3848, a5);
            AppleEthernetRLIPC::writeToSRAM(*(this + 171), 3852, v9);
            v7 = AppleEthernetRLIPC::psaCall(*(this + 171), *(this + 399), 0, v14, 4uLL, 0, 0);
            if (v7)
            {
              IPC_Connect = 3758097084;
            }

            else
            {
              IPC_Connect = AppleEthernetRL::fetchIPC_Connect(this, 0);
              if (!IPC_Connect)
              {
                AppleEthernetRLIPC::copyFromSharedSRAM(*(this + 171), 0, a3, v9);
                return IPC_Connect;
              }

              v7 = 0;
            }
          }
        }

        else
        {
          IPC_Connect = 3758097105;
          v7 = 0x7FFFFFFF;
        }
      }
    }
  }

  if ((*(this + 600) & 2) != 0)
  {
    IOLog("[0x%llx] rl::%s(%d): status 0x%x, callReturn 0x%x\n", *(this + 76), "fetchIPC_ReadNVRAM", 373, IPC_Connect, v7);
  }

  return IPC_Connect;
}

uint64_t AppleEthernetRL::fetchIPC_EraseNVRAM(AppleEthernetRL *this, unsigned int a2, int a3, int a4)
{
  v5 = 3758097090;
  v12 = xmmword_A38;
  v13 = 0x4A0040F08;
  v6 = 0x7FFFFFFF;
  if (a2 <= 3 && ((a4 | a3) & 3) == 0)
  {
    if (*(this + 1388))
    {
      v9 = __CFADD__(a3, a4);
      v6 = 0x7FFFFFFF;
      if (a2 == 3 && !v9 && (a3 + a4) <= 0x20000)
      {
        if (*(this + 346) == 1820327936)
        {
          v10 = 0;
        }

        else
        {
          v10 = 3;
        }

        AppleEthernetRLIPC::writeToSRAM(*(this + 171), 3840, v10);
        AppleEthernetRLIPC::writeToSRAM(*(this + 171), 3844, a3);
        AppleEthernetRLIPC::writeToSRAM(*(this + 171), 3848, a4);
        v6 = AppleEthernetRLIPC::psaCall(*(this + 171), *(this + 401), 0, &v12, 3uLL, 0, 0);
        if (!v6)
        {
          return 0;
        }

        v5 = 3758097084;
      }
    }

    else
    {
      v5 = 3758097105;
      v6 = 0x7FFFFFFF;
    }
  }

  if ((*(this + 600) & 2) != 0)
  {
    IOLog("[0x%llx] rl::%s(%d): status 0x%x, callReturn 0x%x\n", *(this + 76), "fetchIPC_EraseNVRAM", 423, v5, v6);
  }

  return v5;
}

uint64_t AppleEthernetRL::fetchIPC_WriteNVRAM(AppleEthernetRL *this, unsigned int a2, char *a3, unint64_t a4, unsigned int a5)
{
  v6 = 3758097090;
  v18[0] = xmmword_A50;
  v18[1] = unk_A60;
  v7 = 0x7FFFFFFF;
  if (a2 <= 3)
  {
    if (a3)
    {
      v9 = a4;
      if (a4 <= 0x20000 && (a4 & 3) == 0 && (a5 & 3) == 0)
      {
        if (*(this + 1388))
        {
          v7 = 0x7FFFFFFF;
          if (a2 == 3)
          {
            v11 = a4 + a5;
            if (!HIDWORD(v11) && v11 <= 0x20000)
            {
              v12 = *(this + 346);
              IPC_Connect = AppleEthernetRL::fetchIPC_Connect(this, 0);
              if (IPC_Connect)
              {
                v17 = IPC_Connect;
                v7 = 0x7FFFFFFF;
                v6 = v17;
              }

              else
              {
                if (v12 == 1820327936)
                {
                  v14 = 0;
                }

                else
                {
                  v14 = 3;
                }

                AppleEthernetRLIPC::writeToSRAM(*(this + 171), 3840, v14);
                AppleEthernetRLIPC::writeToSRAM(*(this + 171), 3844, -1610612736);
                AppleEthernetRLIPC::writeToSRAM(*(this + 171), 3848, a5);
                AppleEthernetRLIPC::writeToSRAM(*(this + 171), 3852, v9);
                AppleEthernetRLIPC::copyToSharedSRAM(*(this + 171), 0, a3, v9);
                v7 = AppleEthernetRLIPC::psaCall(*(this + 171), *(this + 400), 0, v18, 4uLL, 0, 0);
                v15 = 0;
                if (!v7)
                {
                  return v15;
                }

                v6 = 3758097084;
              }
            }
          }
        }

        else
        {
          v6 = 3758097105;
          v7 = 0x7FFFFFFF;
        }
      }
    }
  }

  if ((*(this + 600) & 2) != 0)
  {
    IOLog("[0x%llx] rl::%s(%d): status 0x%x, callReturn 0x%x\n", *(this + 76), "fetchIPC_WriteNVRAM", 482, v6, v7);
  }

  return v6;
}

uint64_t AppleEthernetRL::fetchIPC_WriteFw(AppleEthernetRL *this, unsigned int a2, char *a3, uint64_t a4)
{
  v11 = xmmword_A10;
  result = 3758097090;
  v7 = 0x7FFFFFFF;
  if (!a3 || a4 != 0x20000)
  {
    goto LABEL_10;
  }

  if ((*(this + 1388) & 1) == 0)
  {
    result = 3758097105;
    goto LABEL_8;
  }

  result = AppleEthernetRL::fetchIPC_Connect(this, 0);
  if (result)
  {
LABEL_8:
    v7 = 0x7FFFFFFF;
    goto LABEL_10;
  }

  AppleEthernetRLIPC::writeToSRAM(*(this + 171), 3840, -1610612736);
  AppleEthernetRLIPC::writeToSRAM(*(this + 171), 3844, 0x20000);
  AppleEthernetRLIPC::copyToSharedSRAM(*(this + 171), 0, a3, 0x20000u);
  v7 = AppleEthernetRLIPC::psaCall(*(this + 171), a2, 0, &v11, 2uLL, 0, 0);
  result = 0;
  if (!v7)
  {
    return result;
  }

  result = 3758097084;
LABEL_10:
  if ((*(this + 600) & 2) != 0)
  {
    v10 = a2;
    v9 = result;
    IOLog("[0x%llx] rl::%s(%d): apiCode 0x%x, status 0x%x, callReturn 0x%x\n", *(this + 76), "fetchIPC_WriteFw", 519, v10, result, v7);
    return v9;
  }

  return result;
}

uint64_t AppleEthernetRL::fetchIPC_CompleteWriteFw(AppleEthernetRL *this)
{
  v2 = AppleEthernetRLIPC::psaCall(*(this + 171), *(this + 398), 0, 0, 0, 0, 0);
  if (v2)
  {
    v4 = v2;
    result = 3758097084;
    if ((*(this + 600) & 2) != 0)
    {
      IOLog("[0x%llx] rl::%s(%d): status 0x%x, callReturn 0x%x\n", *(this + 76), "fetchIPC_CompleteWriteFw", 554, -536870212, v4);
      return 3758097084;
    }
  }

  else
  {
    AppleEthernetRLIPC::initializeMailbox(*(this + 171), 196608, 0);
    return 0;
  }

  return result;
}

void AppleEthernetRL::handleMiscIrq(AppleEthernetRL *this)
{
  if (*(this + 463))
  {
    v1 = -1;
    if (*(this + 385))
    {
      goto LABEL_18;
    }

LABEL_8:
    v2 = 0;
    do
    {
      v3 = v1;
      if (v1)
      {
        ++*(this + v2 + 378);
      }

      v1 >>= 1;
      if (v3 < 2)
      {
        break;
      }
    }

    while (v2++ < 6);
    if (v3 >= 2 && (*(this + 602) & 0x10) != 0)
    {
      IOLog("[0x%llx] rl::%s(%d): handled perr (0x%x) after RE_PERR_NUM_CAUSES\n", *(this + 76), "handleMiscIrq", 598, v1);
    }

    return;
  }

  v1 = *(*(this + 42) + 10244);
  __dmb(1u);
  if (!*(this + 463))
  {
    __dmb(2u);
    *(*(this + 42) + 10244) = v1;
  }

  if ((*(this + 385) & v1) != 0)
  {
LABEL_18:
    panic("panic on parity error detected 0x%x\\n @%s:%d", v1, "AppleEthernetRL_Firmware.cpp", 586);
  }

  if (v1)
  {
    goto LABEL_8;
  }
}

uint64_t AppleEthernetRL::allocDebuggerResources(AppleEthernetRL *this)
{
  v2 = 3758097085;
  v13[0] = 0;
  v13[1] = 0;
  v12 = 0;
  v11 = 1;
  if (!*(this + 185))
  {
    v4 = 0;
    v2 = 3758097112;
    goto LABEL_17;
  }

  v3 = *(this + 251);
  if (!v3)
  {
    v4 = 0;
    v2 = 3758097111;
    goto LABEL_17;
  }

  v4 = IOBufferMemoryDescriptor::withOptions(1u, (v3 << 11), 0x4000uLL);
  if (v4)
  {
    v5 = IODMACommand::withSpecification(&IODMACommand::OutputHost64, 0x40u, 0, kMapped, 0, 0x4000u, *(this + 70), 0);
    *(this + 179) = v5;
    if (v5)
    {
      v6 = (v5->setMemoryDescriptor)(v5, v4, 1);
      if (v6)
      {
        goto LABEL_14;
      }

      v6 = (*(**(this + 179) + 184))(*(this + 179), &v12, v13, &v11);
      if (v6)
      {
        goto LABEL_14;
      }

      *(this + 180) = v13[0];
      *(this + 181) = (v4->getBytesNoCopy)(v4);
      (v4->release_0)(v4);
      v4 = IOBufferMemoryDescriptor::withOptions(2u, (*(this + 197) << 11), 0x4000uLL);
      if (!v4)
      {
        goto LABEL_17;
      }

      v7 = IODMACommand::withSpecification(&IODMACommand::OutputHost64, 0x40u, 0, kMapped, 0, 0x4000u, *(this + 70), 0);
      *(this + 182) = v7;
      if (!v7)
      {
        goto LABEL_17;
      }

      v6 = (v7->setMemoryDescriptor)(v7, v4, 1);
      if (v6)
      {
LABEL_14:
        v2 = v6;
        goto LABEL_17;
      }

      v12 = 0;
      v11 = 1;
      v2 = (*(**(this + 182) + 184))(*(this + 182), &v12, v13, &v11);
      if (!v2)
      {
        *(this + 183) = v13[0];
        *(this + 184) = (v4->getBytesNoCopy)(v4);
LABEL_12:
        (v4->release_0)(v4);
        goto LABEL_13;
      }
    }
  }

LABEL_17:
  v9 = *(this + 179);
  if (v9)
  {
    (*(*v9 + 40))(v9);
  }

  *(this + 179) = 0;
  v10 = *(this + 182);
  if (v10)
  {
    (*(*v10 + 40))(v10);
  }

  *(this + 182) = 0;
  if (v4)
  {
    goto LABEL_12;
  }

LABEL_13:
  IOLog("[0x%llx] rl::%s(%d): return 0x%x\n", *(this + 76), "allocDebuggerResources", 114, v2);
  return v2;
}

uint64_t AppleEthernetRL::freeDebuggerResources(AppleEthernetRL *this)
{
  v2 = *(this + 179);
  if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  *(this + 179) = 0;
  v3 = *(this + 182);
  if (v3)
  {
    (*(*v3 + 40))(v3);
  }

  *(this + 182) = 0;
  result = *(this + 185);
  if (result)
  {
    (*(*result + 184))(result, this);
    result = *(this + 185);
    if (result)
    {
      result = (*(*result + 40))(result);
    }
  }

  *(this + 185) = 0;
  return result;
}

uint64_t AppleEthernetRL::enableDebuggerPolling(AppleEthernetRL *this)
{
  *(this + 1488) = 1;
  *(this + 1489) = 1;
  re_check_link_status(this + 296);
  IODelay(0xF4240u);
  *(this + 1489) = 0;
  return 0;
}

uint64_t AppleEthernetRL::getDebuggerLinkStatus(AppleEthernetRL *this, unsigned int *a2)
{
  v5 = 0x2000000001;
  v3 = this + 296;
  re_check_link_status(this + 296);
  re_ifmedia_sts_8125(v3, &v5);
  *a2 = v5 & 2 | 1;
  return 0;
}

uint64_t AppleEthernetRL::handleLinkStateChangeForKDP(AppleEthernetRL *this, int a2)
{
  if (a2)
  {
    if (*(this + 251))
    {
      v2 = 0;
      v3 = 0;
      v4 = 0;
      do
      {
        v5 = *(this + 128) + v2;
        v6 = *(this + 180) + (v3 & 0xFFFFF800);
        *v5 = 0;
        *(v5 + 8) = 0;
        *(v5 + 16) = v6;
        *(v5 + 24) = 0;
        if (v4 == *(this + 251) - 1)
        {
          v7 = -1073739776;
        }

        else
        {
          v7 = -2147481600;
        }

        __dmb(0xEu);
        *(v5 + 28) = v7;
        ++v4;
        v8 = *(this + 251);
        v3 += 2048;
        v2 += 32;
      }

      while (v4 < v8);
      v9 = v8 - 1;
    }

    else
    {
      v9 = -1;
    }

    *(this + 249) = v9;
  }

  else
  {
    *(this + 124) = 0;
    *(this + 250) = 0;
    *(this + 97) = 0;
    *(this + 196) = 0;
  }

  return 0;
}

double AppleEthernetRL::configureRings(AppleEthernetRL *this)
{
  if (*(this + 312) && (v1 = AppleEthernetRL::checkForRX8DW, *(this + 314)))
  {
    v2 = 0x2000000002;
  }

  else
  {
    v2 = 0x1000000000;
    v1 = AppleEthernetRL::checkForRX4DWLegacy;
  }

  *(this + 169) = v1;
  *(this + 1004) = 0xFF00000100;
  *(this + 1012) = v2;
  *(this + 1076) = 0xFF00000100;
  *(this + 1084) = v2;
  *(this + 1148) = 0xFF00000100;
  *(this + 1156) = v2;
  *(this + 170) = AppleEthernetRL::checkForTX4DWLegacy;
  *&result = 0xFF00000100;
  *(this + 788) = xmmword_A90;
  *(this + 860) = xmmword_A90;
  *(this + 932) = xmmword_A90;
  *(this + 218) = 16;
  *(this + 217) = 1;
  *(this + 236) = 32;
  *(this + 235) = 2;
  return result;
}

uint64_t AppleEthernetRL::allocateRings(AppleEthernetRL *this)
{
  if (*(this + 600))
  {
    IOLog("[0x%llx] rl::%s(%d): <==\n", *(this + 76), "allocateRings", 48);
  }

  if (*(this + 312) + *(this + 311) + *(this + 314))
  {
    v2 = 0;
    v3 = this + 992;
    while (1)
    {
      v4 = AppleEthernetRL::allocRing(this, v3);
      if (v4)
      {
        break;
      }

      *(v3 + 14) = -1;
      *(v3 + 8) = 0;
      v5 = *(this + 311);
      if (v2 >= v5)
      {
        if (v2 > v5)
        {
          *(v3 + 14) = ~v5 + v2;
        }

        v6 = *(v3 + 3);
        *(v3 + 8) = IOMallocTypeVarImpl();
        LODWORD(v5) = *(this + 311);
      }

      ++v2;
      v3 += 72;
      if (v2 >= (*(this + 312) + v5 + *(this + 314)))
      {
        goto LABEL_11;
      }
    }

    v9 = v4;
  }

  else
  {
LABEL_11:
    if (*(this + 312) + *(this + 310) + *(this + 313))
    {
      v7 = 0;
      v8 = this + 776;
      while (1)
      {
        v9 = AppleEthernetRL::allocRing(this, v8);
        *(v8 + 14) = -1;
        *(v8 + 8) = 0;
        if (v7 >= *(this + 310))
        {
          v10 = *(v8 + 3);
          *(v8 + 8) = IOMallocTypeVarImpl();
        }

        if (v9)
        {
          break;
        }

        ++v7;
        v8 += 72;
        if (v7 >= (*(this + 312) + *(this + 310) + *(this + 313)))
        {
          goto LABEL_17;
        }
      }
    }

    else
    {
LABEL_17:
      *(this + 165) = 0;
      v11 = *(this + 197);
      v12 = IOMallocTypeVarImpl();
      *(this + 79) = v12;
      if (!v12)
      {
        AppleEthernetRL::allocateRings();
      }

      v13 = *(this + 197);
      v14 = IOMallocData();
      *(this + 80) = v14;
      if (!v14)
      {
        AppleEthernetRL::allocateRings();
      }

      v15 = 0;
      v16 = 1;
      do
      {
        v17 = v16;
        if (v16)
        {
          *(this + 177) = 0;
        }

        else
        {
          *(this + 189) = -1;
        }

        v18 = *(this + 18 * v15 + 251);
        v19 = IOMallocTypeVarImpl();
        *(this + 6 * v15 + 85) = v19;
        if (!v19)
        {
          AppleEthernetRL::allocateRings();
        }

        v16 = 0;
        v15 = 1;
      }

      while ((v17 & 1) != 0);
      v9 = 0;
    }
  }

  if (*(this + 600))
  {
    IOLog("[0x%llx] rl::%s(%d): ==> 0x%08x\n", *(this + 76), "allocateRings", 97, v9);
  }

  return v9;
}

uint64_t AppleEthernetRL::allocRing(uint64_t a1, uint64_t a2)
{
  v14 = 0;
  v13 = 1;
  if (*(a1 + 600))
  {
    IOLog("[0x%llx] rl::%s(%d): <== ring_size=%d, desc_size=%d\n", *(a1 + 608), "allocRing", 148, *(a2 + 12), *(a2 + 24));
  }

  v15[0] = 0;
  v15[1] = 0;
  v4 = IOBufferMemoryDescriptor::inTaskWithPhysicalMask(kernel_task, 3u, (*(a2 + 24) * *(a2 + 12) + 0x3FFF) & 0xFFFFC000, 0x3FFFuLL);
  if (v4)
  {
    v5 = v4;
    v6 = IODMACommand::withSpecification(&IODMACommand::OutputHost64, 0x40u, 0, kMapped, 0, 0x4000u, *(a1 + 560), 0);
    *(a2 + 48) = v6;
    if (v6)
    {
      v7 = (v6->setMemoryDescriptor)(v6, v5, 1);
      if (v7)
      {
        v8 = v7;
        if ((*(a1 + 600) & 2) != 0)
        {
          v9 = *(a1 + 608);
          IOLog("[0x%llx] rl::%s(%d): setMemoryDescriptor failed\n");
        }
      }

      else
      {
        v8 = (*(**(a2 + 48) + 184))(*(a2 + 48), &v14, v15, &v13);
        if (v8)
        {
          if ((*(a1 + 600) & 2) != 0)
          {
            v11 = *(a1 + 608);
            IOLog("[0x%llx] rl::%s(%d): gen64IOVMSegments failed\n");
          }
        }

        else
        {
          *(a2 + 40) = v15[0];
          *(a2 + 32) = (v5->getBytesNoCopy)(v5);
        }
      }
    }

    else
    {
      v8 = 3758097085;
      if ((*(a1 + 600) & 2) != 0)
      {
        v10 = *(a1 + 608);
        IOLog("[0x%llx] rl::%s(%d): can't alloc IODMACommand failed\n");
      }
    }

    (v5->release_0)(v5);
  }

  else
  {
    v8 = 3758097085;
    if ((*(a1 + 600) & 2) != 0)
    {
      IOLog("[0x%llx] rl::%s(%d): can't alloc IOBufferMemoryDescriptor\n", *(a1 + 608), "allocRing", 158);
    }
  }

  if (*(a1 + 600))
  {
    IOLog("[0x%llx] rl::%s(%d): ==> 0x%08x\n", *(a1 + 608), "allocRing", 193, v8);
  }

  return v8;
}

uint64_t AppleEthernetRL::freeRings(AppleEthernetRL *this)
{
  v2 = *(this + 197);
  v3 = *(this + 79);
  *(this + 79) = 0;
  IOFreeTypeVarImpl();
  v4 = *(this + 80);
  v5 = *(this + 197);
  IOFreeData();
  *(this + 80) = 0;
  v6 = *(this + 251);
  v7 = *(this + 85);
  *(this + 85) = 0;
  IOFreeTypeVarImpl();
  v8 = *(this + 269);
  v9 = *(this + 91);
  *(this + 91) = 0;
  result = IOFreeTypeVarImpl();
  v11 = *(this + 312);
  if (v11 + *(this + 311) + *(this + 314))
  {
    v12 = 0;
    v13 = this + 992;
    do
    {
      AppleEthernetRL::freeRing(result, v13);
      v14 = *(v13 + 3);
      v15 = *(v13 + 8);
      *(v13 + 8) = 0;
      result = IOFreeTypeVarImpl();
      ++v12;
      v11 = *(this + 312);
      v13 += 72;
    }

    while (v12 < (v11 + *(this + 311) + *(this + 314)));
  }

  if (v11 + *(this + 310) + *(this + 313))
  {
    v16 = 0;
    v17 = this + 776;
    do
    {
      result = AppleEthernetRL::freeRing(result, v17);
      v18 = *(this + 310);
      if (v16 >= v18)
      {
        v19 = *(v17 + 3);
        v20 = *(v17 + 8);
        *(v17 + 8) = 0;
        result = IOFreeTypeVarImpl();
        LODWORD(v18) = *(this + 310);
      }

      ++v16;
      v17 += 72;
    }

    while (v16 < (*(this + 312) + v18 + *(this + 313)));
  }

  return result;
}

uint64_t AppleEthernetRL::freeRing(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 48);
  if (result)
  {
    if ((*(*result + 152))(result))
    {
      (*(**(a2 + 48) + 144))(*(a2 + 48), 1);
    }

    result = *(a2 + 48);
    if (result)
    {
      result = (*(*result + 40))(result);
    }

    *(a2 + 40) = 0;
    *(a2 + 48) = 0;
    *(a2 + 32) = 0;
  }

  *(a2 + 8) = 0;
  *a2 = 0;
  return result;
}

uint64_t AppleEthernetRL::startInterface(AppleEthernetRL *this)
{
  v2 = IOMallocTypeImpl();
  if (!v2)
  {
    IOLog("rl: alloc RegistrationInfo failed\n");
    return 3758097084;
  }

  v3 = v2;
  IOSkywalkEthernetInterface::initRegistrationInfo();
  *(v3 + 72) = *(this + 101);
  *(v3 + 20) = 26;
  *(v3 + 40) = 32;
  *(this + 86) = 32;
  v4 = *(this + 74);
  *(v3 + 268) = *(this + 150);
  *(v3 + 264) = v4;
  IOLog("[0x%llx] rl::%s(%d): Assigned MAC address: %6D\n", *(this + 76), "startInterface", 230, v3 + 264, ":");
  v27 = *(this + 70);
  IOSkywalkTxSubmissionQueue::getEffectiveCapacity(&stru_B8.reserved2, v5);
  IOSkywalkTxCompletionQueue::getEffectiveCapacity(&stru_B8.reserved2, v6);
  *__str = 0u;
  v32 = 0u;
  v7 = *(*(**(this + 69) + 280))();
  v8 = (*(v7 + 168))();
  snprintf(__str, 0x20uLL, "rl:%s:%d:%s", v8, 0, "tx");
  v9 = IOSkywalkPacketBufferPool::withName();
  IOSkywalkRxSubmissionQueue::getEffectiveCapacity(&stru_B8.reserved2, v10);
  IOSkywalkRxCompletionQueue::getEffectiveCapacity(&stru_B8.reserved2, v11);
  snprintf(__str, 0x20uLL, "rl:%s:%d:%s", v8, 0, "rx");
  v12 = IOSkywalkPacketBufferPool::withName();
  v13 = v12;
  if (v9 && v12)
  {
    v14 = IOSkywalkTxSubmissionQueue::withPool();
    *(this + 83) = v14;
    if (!v14)
    {
      AppleEthernetRL::startInterface();
    }

    v15 = IOSkywalkTxCompletionQueue::withPool();
    *(this + 84) = v15;
    if (!v15)
    {
      AppleEthernetRL::startInterface();
    }

    v16 = 0;
    v17 = 1;
    do
    {
      v18 = v17;
      if ((v17 & 1) != 0 && *(this + 312))
      {
        *(this + 314);
      }

      v19 = this + 48 * v16 + 680;
      v20 = IOSkywalkRxSubmissionQueue::withPool();
      *(v19 + 4) = v20;
      if (!v20)
      {
        AppleEthernetRL::startInterface();
      }

      v21 = IOSkywalkRxCompletionQueue::withPool();
      *(v19 + 5) = v21;
      if (!v21)
      {
        AppleEthernetRL::startInterface();
      }

      v17 = 0;
      v16 = 1;
    }

    while ((v18 & 1) != 0);
    v22 = (*(*this + 888))(this);
    v23 = (this + 768);
    for (i = 3; i > 1; --i)
    {
      (*(*v22 + 160))(v22, *v23);
      (*(*v22 + 160))(v22, *(v23 - 1));
      v23 -= 6;
    }

    (*(*v22 + 160))(v22, *(this + 84));
    (*(*v22 + 160))(v22, *(this + 83));
    v28 = *(this + 664);
    v29 = *(this + 712);
    v30 = *(this + 760);
    v25 = IOSkywalkEthernetInterface::registerEthernetInterface();
    if (v25)
    {
      IOLog("rl: registerEthernetInterface failed\n");
    }

    goto LABEL_20;
  }

  IOLog("alloc pool failed\n");
  v25 = 0;
  if (v9)
  {
LABEL_20:
    (*(*v9 + 40))(v9);
  }

  if (v13)
  {
    (*(*v13 + 40))(v13);
  }

  if (*(this + 600))
  {
    IOLog("[0x%llx] rl::%s(%d): ==> 0x%08x\n", *(this + 76), "startInterface", 380, v25);
  }

  IOFreeTypeImpl();
  return v25;
}

uint64_t AppleEthernetRL::stopInterface(AppleEthernetRL *this)
{
  if (*(this + 584))
  {
    AppleEthernetRL::disable(this);
  }

  v2 = (*(*this + 888))(this);
  v3 = v2;
  if (*(this + 83))
  {
    (*(*v2 + 168))(v2);
    v4 = *(this + 83);
    if (v4)
    {
      (*(*v4 + 40))(v4);
    }

    *(this + 83) = 0;
  }

  if (*(this + 84))
  {
    (*(*v3 + 168))(v3);
    v5 = *(this + 84);
    if (v5)
    {
      (*(*v5 + 40))(v5);
    }

    *(this + 84) = 0;
  }

  for (i = 760; i != 664; i -= 48)
  {
    v7 = (this + i);
    if (*(this + i))
    {
      (*(*v3 + 160))(v3);
      if (*v7)
      {
        (*(**v7 + 40))(*v7);
      }

      *(this + i) = 0;
    }
  }

  for (j = 768; j != 672; j -= 48)
  {
    v9 = (this + j);
    if (*(this + j))
    {
      (*(*v3 + 160))(v3);
      if (*v9)
      {
        (*(**v9 + 40))(*v9);
      }

      *(this + j) = 0;
    }
  }

  return IOSkywalkEthernetInterface::deregisterEthernetInterface(this, 0);
}

void AppleEthernetRL::disable(AppleEthernetRL *this)
{
  AppleEthernetRL::down(this);
  if (*(this + 584))
  {
    AppleEthernetRL::linkStateChange(this, 0);
  }

  AppleEthernetRL::freeRings(this);
  *(this + 584) = 0;
  IOLog("[0x%llx] rl::%s(%d): ==>\n", *(this + 76), "disable", 432);
}

void AppleEthernetRL::linkStateChange(AppleEthernetRL *this, int a2)
{
  if (*(this + 1488))
  {

    AppleEthernetRL::handleLinkStateChangeForKDP(this, a2);
  }

  else if (a2)
  {
    (*(**(this + 84) + 176))(*(this + 84));
    (*(**(this + 83) + 176))();
    v3 = 0;
    v4 = 1;
    do
    {
      v5 = v4;
      v6 = this + 48 * v3 + 680;
      (*(**(v6 + 5) + 176))(*(v6 + 5));
      (*(**(v6 + 4) + 176))();
      (*(**(v6 + 4) + 352))();
      v4 = 0;
      v3 = 1;
    }

    while ((v5 & 1) != 0);
    AppleEthernetRL::publishWakePacket(this);
    if (*(this + 314))
    {
      AppleEthernetRL::fillRxPTPAVBRings(this);
      AppleEthernetRL::configurePTPFilterSlots(this);
      AppleEthernetRL::activatePTPFilter(this);
      AppleEthernetRL::configureAVBFilterSlots(this);
      AppleEthernetRL::activateAVBFilter(this);
      if (!re_apply_avb_filter(this + 296, 1000) && (*(this + 600) & 2) != 0)
      {
        IOLog("[0x%llx] rl::%s(%d): re_apply_avb_filter failed timeout %d\n", *(this + 76), "linkStateChange", 478, 1000);
      }
    }
  }

  else
  {
    re_stop(this + 296);
    v7 = 0;
    v8 = 1;
    do
    {
      v9 = v8;
      v10 = this + 48 * v7 + 680;
      (*(**(v10 + 4) + 184))(*(v10 + 4));
      AppleEthernetRL::drain(this, v10);
      (*(**(v10 + 5) + 184))();
      v8 = 0;
      v7 = 1;
    }

    while ((v9 & 1) != 0);
    (*(**(this + 83) + 184))(*(this + 83));
    v11.n128_f64[0] = AppleEthernetRL::drain(this, this + 632);
    (*(**(this + 84) + 184))(v11);
    if (*(this + 314))
    {
      (*(*this + 1992))(this, 0);
      AppleEthernetRL::drainRxPTPAVBRings(this);
    }

    if (*(this + 313))
    {

      AppleEthernetRL::drainTxPTPAVBRings(this);
    }
  }
}

uint64_t AppleEthernetRL::setInterfaceEnable(AppleEthernetRL *this, int a2)
{
  v4 = "disable";
  if (a2)
  {
    v4 = "enable";
  }

  IOLog("[0x%llx] rl::%s(%d): %s <==\n", *(this + 76), "setInterfaceEnable", 437, v4);
  v5 = *(this + 72);
  if (v5)
  {
    IORecursiveLockLock(*(v5 + 16));
  }

  if (!a2)
  {
    v6 = -536870185;
LABEL_7:
    AppleEthernetRL::disable(this);
    goto LABEL_8;
  }

  v6 = AppleEthernetRL::enable(this);
  if (v6)
  {
    goto LABEL_7;
  }

LABEL_8:
  v7 = *(this + 72);
  if (v7)
  {
    IORecursiveLockUnlock(*(v7 + 16));
  }

  if (a2)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0;
  }

  IOLog("[0x%llx] rl::%s(%d): ==>0x%x\n", *(this + 76), "setInterfaceEnable", 446, v8);
  return v8;
}

void re_link_state_change(uint64_t a1, int a2)
{
  v3 = a2 == 1;
  v4 = "down";
  if (a2 == 1)
  {
    v4 = "up";
  }

  IOLog("rl::%s(%d): <== link state %s\n", "re_link_state_change", 504, v4);
  AppleEthernetRL::linkStateChange((a1 - 296), v3);
  IOLog("rl::%s(%d): ==>\n", "re_link_state_change", 506);
}

uint64_t AppleEthernetRL::setMTU(AppleEthernetRL *this, unsigned int a2)
{
  if (*(this + 101) < a2)
  {
    return 3758097090;
  }

  v5 = *((*(*this + 888))(this) + 16);
  IORecursiveLockLock(v5);
  if (*(this + 151) != a2 && (*(this + 151) = a2, (*(this + 584) & 1) != 0))
  {
    AppleEthernetRL::disable(this);
    v2 = AppleEthernetRL::enable(this);
  }

  else
  {
    v2 = 0;
  }

  IORecursiveLockUnlock(v5);
  return v2;
}

void AppleEthernetRL::updateCarrier(AppleEthernetRL *this)
{
  if ((*(this + 600) & 4) != 0)
  {
    IOLog("[0x%llx] rl::%s(%d): <==\n", *(this + 76), "updateCarrier", 52);
  }

  v14 = 0x2000000001;
  re_ifmedia_sts_8125(this + 296, &v14);
  if ((v14 & 2) != 0)
  {
    *(this + 1216) = 1;
    v4 = HIDWORD(v14) & 0xF001F;
    v5 = 5000000000;
    v6 = 2500000000;
    v7 = 10000000000;
    if ((HIDWORD(v14) & 0xF001F) != 0x15)
    {
      v7 = 0;
    }

    if (v4 != 22)
    {
      v6 = v7;
    }

    if (v4 != 23)
    {
      v5 = v6;
    }

    v8 = 10000000;
    v9 = 100000000;
    v10 = 1000000000;
    if (v4 != 16)
    {
      v10 = 0;
    }

    if (v4 != 6)
    {
      v9 = v10;
    }

    if (v4 != 3)
    {
      v8 = v9;
    }

    if ((HIDWORD(v14) & 0xF001Fu) <= 0x14)
    {
      v11 = v8;
    }

    else
    {
      v11 = v5;
    }

    if ((*(this + 600) & 4) != 0)
    {
      IOLog("[0x%llx] rl::%s(%d): setting Link mode=0%08x, baud=%lld\n", *(this + 76), "updateCarrier", 103, HIDWORD(v14), v11);
    }

    AppleEthernetRL::updateTimestampAdjustments(this, v11);
    (*(*this + 1936))(this, HIDWORD(v14));
    IOSkywalkNetworkInterface::reportLinkStatus(this, v14, HIDWORD(v14));
    IOSkywalkNetworkInterface::reportLinkQuality(this, 0x64u);
    v12 = *(this + 161);
    if (v12)
    {
      (*(*v12 + 1480))(v12);
    }

    if ((*(this + 600) & 4) != 0)
    {
      v13 = *(this + 76);
      IOLog("[0x%llx] rl::%s(%d): ==>(up)\n");
    }
  }

  else
  {
    *(this + 1216) = 0;
    HIDWORD(v14) |= 2u;
    (*(*this + 1936))(this);
    IOSkywalkNetworkInterface::reportLinkStatus(this, v14, HIDWORD(v14));
    IOSkywalkNetworkInterface::reportLinkQuality(this, 0xFFFFFFFE);
    v2 = *(this + 161);
    if (v2)
    {
      (*(*v2 + 1488))(v2);
    }

    if ((*(this + 600) & 4) != 0)
    {
      v3 = *(this + 76);
      IOLog("[0x%llx] rl::%s(%d): ==>(down)\n");
    }
  }
}

uint64_t AppleEthernetRL::getSupportedMediaArray(AppleEthernetRL *this, unsigned int *a2, unsigned int *a3)
{
  v6 = this + 600;
  if ((*(this + 601) & 0x10) != 0)
  {
    IOLog("[0x%llx] rl::%s(%d): <==\n", *(this + 76), "getSupportedMediaArray", 121);
  }

  v7 = (*(this + 179) + 32475);
  if (v7 >= 3)
  {
    LODWORD(v8) = 14;
  }

  else
  {
    LODWORD(v8) = 4 * v7 + 18;
  }

  v9 = *a3;
  if (*a3 >= v8)
  {
    v8 = v8;
  }

  else
  {
    v8 = v9;
  }

  *a3 = v8;
  if (v9)
  {
    v10 = &mode_table;
    do
    {
      v11 = *v10;
      v10 += 4;
      *a2++ = v11;
      --v8;
    }

    while (v8);
  }

  if ((v6[1] & 0x10) != 0)
  {
    IOLog("[0x%llx] rl::%s(%d): ==>\n", *(this + 76), "getSupportedMediaArray", 133);
  }

  return 0;
}

void AppleEthernetRL::selMed(AppleEthernetRL *this, unsigned int a2)
{
  (*(*this + 1928))(this);
  *(this + 86) = a2;
  v4 = (a2 >> 23) & 1;
  if ((a2 & 0xF001F) == 0)
  {
    v4 = 1;
  }

  *(this + 320) = v4;
  v5 = this + 296;
  if (v4)
  {
    re_enable_eee(v5);
  }

  else
  {
    re_disable_eee(v5);
  }

  re_ifmedia_upd_8125(this + 296);
  if ((*(this + 600) & 4) != 0)
  {
    IOLog("[0x%llx] rl::%s(%d): ==>\n", *(this + 76), "selMed", 176);
  }
}

uint64_t AppleEthernetRL::handleChosenMedia(AppleEthernetRL *this, unsigned int a2)
{
  if ((*(this + 600) & 4) != 0)
  {
    IOLog("[0x%llx] rl::%s(%d): <== (%x)\n", *(this + 76), "handleChosenMedia", 182, a2);
  }

  AppleEthernetRL::selMed(this, a2);
  AppleEthernetRL::updateCarrier(this);
  if ((*(this + 600) & 4) != 0)
  {
    IOLog("[0x%llx] rl::%s(%d): ==>\n", *(this + 76), "handleChosenMedia", 187);
  }

  return 0;
}

unint64_t AppleEthernetRL::enqueueRx4DWLegacyPackets(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5)
{
  v8 = a1;
  v9 = *(a5 + 28);
  v10 = a1 + 992 + 72 * v9;
  if (72 * v9 != 72 * v9)
  {
    v10 = (a1 + 992 + 72 * v9) & 0xFFFFFFFFFFFFLL | 0x2BAD000000000000;
  }

  v12 = *v10;
  v11 = *(v10 + 4);
  v13 = *(v10 + 8);
  v14 = a1 + 600;
  if ((*(a1 + 601) & 4) != 0)
  {
    IOLog("[0x%llx] rl::%s(%d): ridx %u, head %03x, tail %03x, done %03x\n", *(a1 + 608), "enqueueRx4DWLegacyPackets", 13, v9, v12, *(v10 + 4), v13);
  }

  if (v12 == v13)
  {
    v15 = 0;
  }

  else
  {
    v28 = v14;
    v29 = v8;
    v30 = v11;
    v16 = 0;
    __dmb(1u);
    v17 = *(a5 + 16);
    v18 = a4;
    v19 = *(v10 + 16);
    do
    {
      LODWORD(v20) = 0;
      v21 = 8 * v17;
      v22 = (*a5 + (8 * v17));
      if (v21 != 8 * v17)
      {
        v22 = ((*a5 + v21) & 0xFFFFFFFFFFFFLL | 0x2BAD000000000000);
      }

      v23 = *v22;
      v24 = *(v10 + 32);
      do
      {
        v25 = 16 * v12;
        v26 = (v24 + (16 * v12));
        if (v25 != 16 * v12)
        {
          v26 = ((v24 + v25) & 0xFFFFFFFFFFFFLL | 0x2BAD000000000000);
        }

        v20 = (*v26 & 0x3FFF) + v20;
        v12 = v19 & (v12 + 1);
      }

      while ((*v26 & 0x10000000) == 0);
      if ((*v26 & 0x200000) == 0)
      {
        (*(*v23 + 152))(v23, v20);
        IOSkywalkNetworkPacket::setLinkHeaderLength(v23, 0xEu);
        v19 = *(v10 + 16);
      }

      v15 = v16 + 1;
      *(a3 + 8 * v16) = v23;
      v17 = v19 & (v17 + 1);
      if (v12 == v13)
      {
        break;
      }

      ++v16;
    }

    while (v15 < v18);
    *v10 = v12;
    *(a5 + 16) = v17;
    (*(**(a5 + 32) + 352))(*(a5 + 32), 0, 1);
    v8 = v29;
    v11 = v30;
    v14 = v28;
  }

  if ((*(v14 + 1) & 4) != 0)
  {
    IOLog("[0x%llx] rl::%s(%d): ridx %u, head %03x, tail %03x, done %03x :: %u\n", *(v8 + 608), "enqueueRx4DWLegacyPackets", 41, *(a5 + 28), v12, v11, v13, v15);
  }

  return v15;
}

unint64_t AppleEthernetRL::enqueueRx8DWPackets(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5)
{
  v8 = a1;
  v9 = *(a5 + 28);
  v10 = a1 + 992 + 72 * v9;
  if (72 * v9 != 72 * v9)
  {
    v10 = (a1 + 992 + 72 * v9) & 0xFFFFFFFFFFFFLL | 0x2BAD000000000000;
  }

  v12 = *v10;
  v11 = *(v10 + 4);
  v13 = *(v10 + 8);
  v14 = a1 + 600;
  if ((*(a1 + 601) & 4) != 0)
  {
    IOLog("[0x%llx] rl::%s(%d): ridx %u, head %03x, tail %03x, done %03x\n", *(a1 + 608), "enqueueRx8DWPackets", 54, v9, v12, *(v10 + 4), v13);
  }

  if (v12 == v13)
  {
    v15 = 0;
  }

  else
  {
    v32 = v14;
    v33 = v8;
    v34 = v11;
    v16 = 0;
    __dmb(1u);
    v17 = *(a5 + 16);
    v18 = a4;
    v19 = *(v10 + 16);
    do
    {
      LODWORD(v20) = 0;
      v21 = 0;
      v22 = 8 * v17;
      v23 = (*a5 + (8 * v17));
      if (v22 != 8 * v17)
      {
        v23 = ((*a5 + v22) & 0xFFFFFFFFFFFFLL | 0x2BAD000000000000);
      }

      v24 = *v23;
      v25 = *(v10 + 32);
      do
      {
        v26 = 32 * v12 + 24;
        v27 = v25 + (32 * v12 + 24);
        if (v26 != 32 * v12 + 24)
        {
          v27 = (v25 + v26) & 0xFFFFFFFFFFFFLL | 0x2BAD000000000000;
        }

        v28 = *(v27 + 4);
        v20 = (v28 & 0x3FFF) + v20;
        v12 = v19 & (v12 + 1);
        v29 = *v27;
        v30 = bswap32(v29) >> 16;
        if ((v29 & 0x10000) != 0)
        {
          v21 = v30;
        }
      }

      while ((v28 & 0x1000000) == 0);
      if ((v28 & 0x100000) == 0)
      {
        (*(*v24 + 152))(v24, v20);
        IOSkywalkNetworkPacket::setLinkHeaderLength(v24, 0xEu);
        if (v21)
        {
          IOSkywalkNetworkPacket::setVlanTag(v24, v21);
        }
      }

      v15 = v16 + 1;
      *(a3 + 8 * v16) = v24;
      v19 = *(v10 + 16);
      v17 = v19 & (v17 + 1);
      if (v12 == v13)
      {
        break;
      }

      ++v16;
    }

    while (v15 < v18);
    *v10 = v12;
    *(a5 + 16) = v17;
    (*(**(a5 + 32) + 352))(*(a5 + 32), 0, 1);
    v8 = v33;
    v11 = v34;
    v14 = v32;
  }

  if ((*(v14 + 1) & 4) != 0)
  {
    IOLog("[0x%llx] rl::%s(%d): ridx %u, head %03x, tail %03x, done %03x :: %u\n", *(v8 + 608), "enqueueRx8DWPackets", 91, *(a5 + 28), v12, v11, v13, v15);
  }

  return v15;
}

uint64_t AppleEthernetRL::dequeueRx4DWLegacyPackets(uint64_t a1, uint64_t a2, uint64_t *a3, int a4, uint64_t a5)
{
  LODWORD(v6) = a4;
  v9 = *(a5 + 28);
  v30 = a1 + 992;
  v10 = a1 + 992 + 72 * v9;
  if (72 * v9 != 72 * v9)
  {
    v10 = (a1 + 992 + 72 * v9) & 0xFFFFFFFFFFFFLL | 0x2BAD000000000000;
  }

  v11 = *(v10 + 4);
  v12 = *(a5 + 20);
  v32 = a1 + 600;
  if ((*(a1 + 601) & 4) != 0)
  {
    IOLog("[0x%llx] rl::%s(%d): ridx %u, rq_head %03x, rq_tail %03x\n", *(a1 + 608), "dequeueRx4DWLegacyPackets", 102, v9, *(a5 + 16), v12);
  }

  if (v6 <= 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = v6;
  }

  __dmb(2u);
  v31 = v6;
  do
  {
    v13 = 8 * v12;
    v14 = (*a5 + (8 * v12));
    if (v13 != 8 * v12)
    {
      v14 = ((*a5 + v13) & 0xFFFFFFFFFFFFLL | 0x2BAD000000000000);
    }

    v15 = *a3++;
    *v14 = v15;
    v33 = 0;
    (*(*v15 + 128))(v15, &v33, 1);
    v16 = (*(*v15 + 176))(v15);
    MemorySegmentOffset = IOSkywalkPacketBuffer::getMemorySegmentOffset(v33);
    v18 = *IOSkywalkPacketBuffer::getMemorySegment(v33);
    v19 = (*(v18 + 176))();
    v20 = *(v10 + 32);
    v21 = 16 * v11;
    v22 = v20 + (16 * v11);
    if (v21 != 16 * v11)
    {
      v22 = (v20 + v21) & 0xFFFFFFFFFFFFLL | 0x2BAD000000000000;
    }

    *(v22 + 4) = 0;
    *(v22 + 8) = MemorySegmentOffset + v16 + v19;
    v23 = *(a1 + 412);
    v24 = *(v10 + 12);
    v25 = v11 + 1 == v24;
    if (v11 + 1 == v24)
    {
      v11 = 0;
    }

    else
    {
      ++v11;
    }

    if (v25)
    {
      v26 = -1073741824;
    }

    else
    {
      v26 = 0x80000000;
    }

    __dmb(0xEu);
    *v22 = v26 | v23;
    v12 = *(v10 + 16) & (v12 + 1);
    --v6;
  }

  while (v6);
  v27 = 72 * *(a5 + 28) + 4;
  v28 = (v30 + v27);
  if (v27 != v27)
  {
    v28 = ((v30 + v27) & 0xFFFFFFFFFFFFLL | 0x2BAD000000000000);
  }

  if (*v28 != v11)
  {
    *v28 = v11;
    *(a5 + 20) = v12;
    __dmb(2u);
  }

  if ((*(v32 + 1) & 4) != 0)
  {
    IOLog("[0x%llx] rl::%s(%d): ridx %u, rq_head %03x, rq_tail %03x: %u\n", *(a1 + 608), "dequeueRx4DWLegacyPackets", 144, *(a5 + 28), *(a5 + 16), *(a5 + 20), v31);
  }

  return v31;
}

uint64_t AppleEthernetRL::dequeueRx8DWPackets(uint64_t a1, uint64_t a2, uint64_t *a3, int a4, uint64_t a5)
{
  LODWORD(v6) = a4;
  v9 = *(a5 + 28);
  v30 = a1 + 992;
  v10 = a1 + 992 + 72 * v9;
  if (72 * v9 != 72 * v9)
  {
    v10 = (a1 + 992 + 72 * v9) & 0xFFFFFFFFFFFFLL | 0x2BAD000000000000;
  }

  v11 = *(v10 + 4);
  v12 = *(a5 + 20);
  v32 = a1 + 600;
  if ((*(a1 + 601) & 4) != 0)
  {
    IOLog("[0x%llx] rl::%s(%d): ridx %u, rq_head %03x, rq_tail %03x\n", *(a1 + 608), "dequeueRx8DWPackets", 155, v9, *(a5 + 16), v12);
  }

  if (v6 <= 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = v6;
  }

  __dmb(2u);
  v31 = v6;
  do
  {
    v13 = 8 * v12;
    v14 = (*a5 + (8 * v12));
    if (v13 != 8 * v12)
    {
      v14 = ((*a5 + v13) & 0xFFFFFFFFFFFFLL | 0x2BAD000000000000);
    }

    v15 = *a3++;
    *v14 = v15;
    v33 = 0;
    (*(*v15 + 128))(v15, &v33, 1);
    v16 = (*(*v15 + 176))(v15);
    MemorySegmentOffset = IOSkywalkPacketBuffer::getMemorySegmentOffset(v33);
    v18 = *IOSkywalkPacketBuffer::getMemorySegment(v33);
    v19 = (*(v18 + 176))();
    v20 = *(v10 + 32);
    v21 = 32 * v11;
    v22 = v20 + (32 * v11);
    if (v21 != 32 * v11)
    {
      v22 = (v20 + v21) & 0xFFFFFFFFFFFFLL | 0x2BAD000000000000;
    }

    *v22 = 0;
    *(v22 + 8) = 0;
    *(v22 + 16) = MemorySegmentOffset + v16 + v19;
    *(v22 + 24) = 0;
    v23 = *(a1 + 412);
    v24 = *(v10 + 12);
    v25 = v11 + 1 == v24;
    if (v11 + 1 == v24)
    {
      v11 = 0;
    }

    else
    {
      ++v11;
    }

    if (v25)
    {
      v26 = -1073741824;
    }

    else
    {
      v26 = 0x80000000;
    }

    __dmb(0xEu);
    *(v22 + 28) = v26 | v23;
    v12 = *(v10 + 16) & (v12 + 1);
    --v6;
  }

  while (v6);
  v27 = 72 * *(a5 + 28) + 4;
  v28 = (v30 + v27);
  if (v27 != v27)
  {
    v28 = ((v30 + v27) & 0xFFFFFFFFFFFFLL | 0x2BAD000000000000);
  }

  if (*v28 != v11)
  {
    *v28 = v11;
    *(a5 + 20) = v12;
    __dmb(2u);
  }

  if ((*(v32 + 1) & 4) != 0)
  {
    IOLog("[0x%llx] rl::%s(%d): ridx %u, rq_head %03x, rq_tail %03x: %u\n", *(a1 + 608), "dequeueRx8DWPackets", 202, *(a5 + 28), *(a5 + 16), *(a5 + 20), v31);
  }

  return v31;
}

uint64_t AppleEthernetRL::pollRx8DWPacket(AppleEthernetRL *this, char *__dst, unsigned int a3, unsigned int a4)
{
  v4 = 72 * a4;
  v5 = this + v4 + 992;
  if (v4 != v4)
  {
    v5 = ((this + v4 + 992) & 0xFFFFFFFFFFFFLL | 0x2BAD000000000000);
  }

  v6 = *v5;
  if (*v5 == *(v5 + 2))
  {
    v26 = 0;
    v7 = *(v5 + 1);
  }

  else
  {
    v26 = 0;
    v11 = this + 600;
    v25 = this;
    do
    {
      v7 = v6;
      v12 = *(v5 + 4);
      v13 = 32 * v7;
      v14 = v12 + (32 * v7);
      if (v13 != 32 * v7)
      {
        v14 = (v12 + v13) & 0xFFFFFFFFFFFFLL | 0x2BAD000000000000;
      }

      v15 = *(v14 + 28);
      v16 = v15 & 0x3FFF;
      v17 = v7 << 11;
      v18 = *(this + 180);
      v19 = a3 - (v15 & 0x3FFF);
      if (a3 >= (v15 & 0x3FFFu))
      {
        v21 = v11;
        memmove(__dst, (*(this + 181) + v17), v15 & 0x3FFF);
        v11 = v21;
        __dst += v16;
        v26 += v16;
        a3 = v19;
      }

      else if ((v11[2] & 0x10) != 0)
      {
        v20 = v11;
        IOLog("[0x%llx] rl::%s(%d): unable to copy packet to buffer\n", *(this + 76), "pollRx8DWPacket", 237);
        v11 = v20;
      }

      if ((v15 & 0x100000) != 0 && (v11[2] & 0x10) != 0)
      {
        v23 = v11;
        IOLog("[0x%llx] rl::%s(%d): unexpected opts1 0x%x\n", *(v25 + 76), "pollRx8DWPacket", 241, v15);
        v11 = v23;
      }

      *v14 = 0;
      *(v14 + 8) = 0;
      *(v14 + 16) = v18 + v17;
      *(v14 + 24) = 0;
      if (v7 == *(v5 + 3) - 1)
      {
        v22 = -1073739776;
      }

      else
      {
        v22 = -2147481600;
      }

      __dmb(0xEu);
      *(v14 + 28) = v22;
      v6 = *(v5 + 4) & (v7 + 1);
      this = v25;
    }

    while ((v15 & 0x1000000) == 0);
  }

  *v5 = v6;
  *(v5 + 1) = v7;
  __dmb(2u);
  AppleEthernetRL::checkForRX8DW(this, a4, *(v5 + 4));
  return v26;
}

uint64_t AppleEthernetRL::dequeueTx4DWLegacyPackets(uint64_t a1, uint64_t a2, IOSkywalkNetworkPacket **a3, unsigned int a4, uint64_t *a5)
{
  v9 = 72 * *(a5 + 7);
  v10 = a1 + 776 + v9;
  if (v9 != v9)
  {
    v10 = (a1 + 776 + v9) & 0xFFFFFFFFFFFFLL | 0x2BAD000000000000;
  }

  v11 = *(v10 + 4);
  v39 = *(v10 + 8);
  v40 = *v10;
  v12 = *(a5 + 5);
  v42 = a1 + 600;
  if (*(a1 + 601))
  {
    IOLog("[0x%llx] rl::%s(%d): head %x, tail %03x, done %03x\n", *(a1 + 608), "dequeueTx4DWLegacyPackets", 137, v40, v11, v39);
  }

  v43 = a1;
  if (a4 <= 1)
  {
    v13 = 1;
  }

  else
  {
    v13 = a4;
  }

  __dmb(2u);
  v41 = v13;
  v14 = v11;
  do
  {
    v16 = *a3++;
    v15 = v16;
    v17 = (*(*v16 + 160))(v16);
    v45 = 0;
    (*(*v16 + 128))(v16, &v45, 1);
    v18 = (*(*v16 + 176))(v16);
    MemorySegmentOffset = IOSkywalkPacketBuffer::getMemorySegmentOffset(v45);
    v20 = *IOSkywalkPacketBuffer::getMemorySegment(v45);
    v21 = MemorySegmentOffset + v18 + (*(v20 + 176))();
    v44 = 0;
    VlanTag = IOSkywalkNetworkPacket::getVlanTag(v16, &v44);
    v23 = (bswap32(v44) >> 16) | 0x20000;
    if (VlanTag)
    {
      v24 = v23;
    }

    else
    {
      v24 = 0;
    }

    v25 = *(v10 + 16);
    v26 = *(v10 + 32);
    v27 = 16 * v14;
    v28 = v26 + (16 * v14);
    if (v27 != 16 * v14)
    {
      v28 = (v26 + v27) & 0xFFFFFFFFFFFFLL | 0x2BAD000000000000;
    }

    *(v28 + 4) = v24;
    *(v28 + 8) = v21;
    __dmb(0xEu);
    if (v14 == v25)
    {
      v29 = -536870912;
    }

    else
    {
      v29 = -1610612736;
    }

    *v28 = v17 | v29 | 0x10000000;
    v30 = v14 + 1;
    v31 = 2 * v12;
    v33 = *a5;
    v32 = a5[1];
    v34 = (v32 + (2 * v12));
    if (v31 != 2 * v12)
    {
      v34 = ((v32 + v31) & 0xFFFFFFFFFFFFLL | 0x2BAD000000000000);
    }

    v35 = 8 * v12;
    v36 = *(v10 + 16);
    v37 = (v33 + (8 * v12));
    if (v35 != 8 * v12)
    {
      v37 = ((v33 + v35) & 0xFFFFFFFFFFFFLL | 0x2BAD000000000000);
    }

    v14 = v36 & v30;
    *v34 = v36 & v30;
    *v37 = v15;
    v12 = v36 & (v12 + 1);
    --v13;
  }

  while (v13);
  *(v10 + 4) = v14;
  *(a5 + 5) = v12;
  if (!*(v43 + 463))
  {
    __dmb(2u);
    *(*(v43 + 336) + 144) = 1;
  }

  if (*(v42 + 1))
  {
    IOLog("[0x%llx] rl::%s(%d): head %03x, tail %03x, done %03x :: %u\n", *(v43 + 608), "dequeueTx4DWLegacyPackets", 225, v40, v14, v39, v41);
  }

  return v41;
}

uint64_t AppleEthernetRL::enqueueTx4DWLegacyPackets(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = 72 * *(a5 + 28);
  v9 = (a1 + 776 + v8);
  if (v8 != v8)
  {
    v9 = ((a1 + 776 + v8) & 0xFFFFFFFFFFFFLL | 0x2BAD000000000000);
  }

  v11 = *v9;
  v10 = v9[1];
  v12 = v9[2];
  v13 = *(a5 + 16);
  v14 = a1 + 600;
  if (*(a1 + 601))
  {
    IOLog("[0x%llx] rl::%s(%d): head %03x, tail %03x, done %03x\n", *(a1 + 608), "enqueueTx4DWLegacyPackets", 240, v11, v9[1], v12);
  }

  v15 = 0;
  v16 = v9[4];
  do
  {
    v17 = 8 * v13;
    v18 = (*a5 + (8 * v13));
    if (v17 != 8 * v13)
    {
      v18 = ((*a5 + v17) & 0xFFFFFFFFFFFFLL | 0x2BAD000000000000);
    }

    v19 = v11;
    *(a3 + 8 * v15) = *v18;
    v20 = *(a5 + 8);
    v21 = 2 * v13;
    v22 = (v20 + (2 * v13));
    if (v21 != 2 * v13)
    {
      v22 = ((v20 + v21) & 0xFFFFFFFFFFFFLL | 0x2BAD000000000000);
    }

    v11 = *v22;
    while (1)
    {
      v19 = (v19 + 1) & v16;
      if (v19 == v11)
      {
        break;
      }

      if (v19 == v12)
      {
        goto LABEL_15;
      }
    }

    v13 = v16 & (v13 + 1);
    v15 = (v15 + 1);
  }

  while (v12 != v11);
LABEL_15:
  *v9 = v12;
  *(a5 + 16) = v13;
  (*(**(a5 + 32) + 352))(*(a5 + 32), 0, 1);
  if (*(v14 + 1))
  {
    IOLog("[0x%llx] rl::%s(%d): head %03x, tail %03x, done %03x :: %u\n", *(a1 + 608), "enqueueTx4DWLegacyPackets", 260, v12, v10, v12, v15);
  }

  return v15;
}

uint64_t AppleEthernetRL::sendTx4DWLegacyPacketBuffer(AppleEthernetRL *this, char *__src, unsigned int a3, unsigned int a4)
{
  v4 = a3;
  v7 = 72 * a4;
  v8 = this + v7 + 776;
  if (v7 != v7)
  {
    v8 = ((this + v7 + 776) & 0xFFFFFFFFFFFFLL | 0x2BAD000000000000);
  }

  v9 = *(v8 + 1);
  v10 = v9;
  if (*(v8 + 2) != v9)
  {
    v11 = *(v8 + 4);
    v10 = *(v8 + 2);
    while (1)
    {
      v12 = 16 * v10;
      v13 = (v11 + (16 * v10));
      if (v12 != 16 * v10)
      {
        v13 = ((v11 + v12) & 0xFFFFFFFFFFFFLL | 0x2BAD000000000000);
      }

      if ((*v13 & 0x80000000) != 0)
      {
        break;
      }

      v10 = *(v8 + 4) & (v10 + 1);
      if (v10 == v9)
      {
        v10 = *(v8 + 1);
        break;
      }
    }
  }

  *(v8 + 2) = v10;
  __dmb(2u);
  if (!a3)
  {
    return 0;
  }

  v14 = 0;
  v15 = 0x20000000;
  do
  {
    if (v9 == *(v8 + 4))
    {
      v16 = -1073741824;
    }

    else
    {
      v16 = 0x80000000;
    }

    if (v4 >= 0x801)
    {
      v17 = 2048;
    }

    else
    {
      v17 = v4;
    }

    v18 = v9 << 11;
    v19 = v16 | v15;
    if (v4 < 0x801)
    {
      v19 |= 0x10000000u;
    }

    v20 = v19 | v17;
    v21 = *(this + 183) + v18;
    v22 = *(v8 + 4);
    v23 = 16 * v9;
    v24 = v22 + (16 * v9);
    if (v23 != 16 * v9)
    {
      v24 = (v22 + v23) & 0xFFFFFFFFFFFFLL | 0x2BAD000000000000;
    }

    memmove((*(this + 184) + v18), __src, v17);
    v15 = 0;
    __src += v17;
    *(v24 + 4) = 0;
    *(v24 + 8) = v21;
    __dmb(0xEu);
    *v24 = v20;
    v9 = *(v8 + 4) & (v9 + 1);
    --v14;
    v4 -= v17;
  }

  while (v4);
  if (!v14)
  {
    return 0;
  }

  result = -v14;
  *(v8 + 1) = v9;
  if (!*(this + 463))
  {
    __dmb(2u);
    *(*(this + 42) + 144) = 1;
  }

  return result;
}

uint64_t AppleEthernetRL::checkForRX4DWLegacy(AppleEthernetRL *this, unsigned int a2, int a3)
{
  v6 = 72 * a2;
  v7 = this + v6 + 992;
  if (v6 != v6)
  {
    v7 = ((this + v6 + 992) & 0xFFFFFFFFFFFFLL | 0x2BAD000000000000);
  }

  v8 = *(v7 + 1);
  v9 = *(v7 + 2);
  v10 = this + 600;
  v11 = v9;
  do
  {
    if (v9 == v8)
    {
      break;
    }

    v12 = *(v7 + 4);
    v13 = 16 * v9;
    v14 = v12 + (16 * v9);
    if (v13 != 16 * v9)
    {
      v14 = (v12 + v13) & 0xFFFFFFFFFFFFLL | 0x2BAD000000000000;
    }

    v15 = *v14;
    if ((v10[1] & 4) != 0)
    {
      IOLog("[0x%llx] rl::%s(%d): i %03x, desc:(%08x:%08x addr %016llx)\n", *(this + 76), "checkForRX4DWLegacy", 15, v9, v15, *(v14 + 4), *(v14 + 8));
      if (v15 < 0)
      {
        break;
      }
    }

    else if (v15 < 0)
    {
      break;
    }

    v9 = *(v7 + 4) & (v9 + 1);
    if ((v15 & 0x10000000) != 0)
    {
      v11 = v9;
    }

    --a3;
  }

  while (a3);
  v16 = *v7;
  v17 = v11 - *v7;
  if (v11 != *v7)
  {
    *(v7 + 2) = v11;
  }

  if ((v10[1] & 4) != 0)
  {
    IOLog("[0x%llx] rl::%s(%d): ridx %u, head %03x, tail %03x, done %03x :: %u\n", *(this + 76), "checkForRX4DWLegacy", 25, a2, v16, v8, v11, *(v7 + 4) & v17);
  }

  return v17;
}

uint64_t AppleEthernetRL::checkForRX8DW(AppleEthernetRL *this, unsigned int a2, int a3)
{
  v6 = 72 * a2;
  v7 = this + v6 + 992;
  if (v6 != v6)
  {
    v7 = ((this + v6 + 992) & 0xFFFFFFFFFFFFLL | 0x2BAD000000000000);
  }

  v8 = *(v7 + 1);
  v9 = *(v7 + 2);
  v10 = this + 600;
  v11 = v9;
  do
  {
    if (v9 == v8)
    {
      break;
    }

    v12 = *(v7 + 4);
    v13 = 32 * v9;
    v14 = (v12 + (32 * v9));
    if (v13 != 32 * v9)
    {
      v14 = ((v12 + v13) & 0xFFFFFFFFFFFFLL | 0x2BAD000000000000);
    }

    v15 = v14[7];
    if ((v10[1] & 4) != 0)
    {
      IOLog("[0x%llx] rl::%s(%d): i %03x, desc %08x %08x %08x %08x %08x %08x %08x %08x\n", *(this + 76), "checkForRX8DW", 43, v9, *v14, v14[1], v14[2], v14[3], v14[4], v14[5], v14[6], v15);
      if (v15 < 0)
      {
        break;
      }
    }

    else if (v15 < 0)
    {
      break;
    }

    v9 = *(v7 + 4) & (v9 + 1);
    if ((v15 & 0x1000000) != 0)
    {
      v11 = v9;
    }

    --a3;
  }

  while (a3);
  v16 = *v7;
  v17 = v11 - *v7;
  if (v11 != *v7)
  {
    *(v7 + 2) = v11;
  }

  if ((v10[1] & 4) != 0)
  {
    IOLog("[0x%llx] rl::%s(%d): ridx %u, head %03x, tail %03x, done %03x :: %u\n", *(this + 76), "checkForRX8DW", 53, a2, v16, v8, v11, *(v7 + 4) & v17);
  }

  return v17;
}

uint64_t AppleEthernetRL::checkForTX4DWLegacy(AppleEthernetRL *this, unsigned int a2)
{
  v2 = 72 * a2;
  v3 = this + v2 + 776;
  if (v2 != v2)
  {
    v3 = ((this + v2 + 776) & 0xFFFFFFFFFFFFLL | 0x2BAD000000000000);
  }

  v4 = *(v3 + 1);
  v5 = *(v3 + 2);
  if (v5 == v4)
  {
    v5 = *(v3 + 1);
  }

  else
  {
    v6 = *(v3 + 4);
    v7 = *(v3 + 2);
    while (1)
    {
      v8 = 16 * v7;
      v9 = (v6 + (16 * v7));
      if (v8 != 16 * v7)
      {
        v9 = ((v6 + v8) & 0xFFFFFFFFFFFFLL | 0x2BAD000000000000);
      }

      if ((*v9 & 0x80000000) != 0)
      {
        break;
      }

      v7 = *(v3 + 4) & (v7 + 1);
      if (v7 == v4)
      {
        v7 = *(v3 + 1);
        break;
      }
    }

    if (v5 != v7)
    {
      *(v3 + 2) = v7;
      v5 = v7;
    }
  }

  v10 = v5 - *v3;
  if (*(this + 601))
  {
    IOLog("[0x%llx] rl::%s(%d): ridx %u, head %03x, tail %03x, done %03x :: %u\n", *(this + 76), "checkForTX4DWLegacy", 77, a2, *v3, v4, v5, *(v3 + 4) & v10);
  }

  return v10;
}

uint64_t AppleEthernetRL::checkForTX8DW(AppleEthernetRL *this, unsigned int a2)
{
  v2 = 72 * a2;
  v3 = this + v2 + 776;
  if (v2 != v2)
  {
    v3 = ((this + v2 + 776) & 0xFFFFFFFFFFFFLL | 0x2BAD000000000000);
  }

  v4 = *(v3 + 1);
  v5 = *(v3 + 2);
  if (v5 == v4)
  {
    v5 = *(v3 + 1);
  }

  else
  {
    v6 = *(v3 + 4);
    v7 = *(v3 + 2);
    while (1)
    {
      v8 = 32 * v7;
      v9 = (v6 + (32 * v7));
      if (v8 != 32 * v7)
      {
        v9 = ((v6 + v8) & 0xFFFFFFFFFFFFLL | 0x2BAD000000000000);
      }

      if ((*v9 & 0x80000000) != 0)
      {
        break;
      }

      v7 = *(v3 + 4) & (v7 + 1);
      if (v7 == v4)
      {
        v7 = *(v3 + 1);
        break;
      }
    }

    if (v5 != v7)
    {
      *(v3 + 2) = v7;
      v5 = v7;
    }
  }

  v10 = v5 - *v3;
  if (*(this + 601))
  {
    IOLog("[0x%llx] rl::%s(%d): ridx %u, head %03x, tail %03x, done %03x :: %u\n", *(this + 76), "checkForTX8DW", 101, a2, *v3, v4, v5, *(v3 + 4) & v10);
  }

  return v10;
}

uint64_t AppleEthernetRL::drain(uint64_t result, uint64_t a2)
{
  v3 = *(a2 + 28);
  if (v3 == -1)
  {
    v5 = 0;
    v6 = 255;
  }

  else
  {
    v4 = 72 * v3;
    v5 = result + 992 + v4;
    if (v4 != v4)
    {
      v5 = (result + 992 + v4) & 0xFFFFFFFFFFFFLL | 0x2BAD000000000000;
    }

    v6 = *(v5 + 16);
  }

  v7 = *(a2 + 16);
  v8 = *(a2 + 20);
  while (v7 != v8)
  {
    v9 = 8 * v7;
    v10 = (*a2 + v9);
    if (v9 != v9)
    {
      v10 = ((*a2 + v9) & 0xFFFFFFFFFFFFLL | 0x2BAD000000000000);
    }

    v11 = *IOSkywalkPacket::getPacketBufferPool(*v10);
    result = (*(v11 + 160))();
    v8 = *(a2 + 20);
    v7 = (*(a2 + 16) + 1) & v6;
    *(a2 + 16) = v7;
  }

  *(a2 + 24) = 0;
  *(a2 + 16) = 0;
  *(a2 + 20) = 0;
  if (v5)
  {
    *(v5 + 8) = 0;
    *v5 = 0;
  }

  return result;
}

double AppleEthernetRL::drain(uint64_t a1, uint64_t a2)
{
  v3 = 72 * *(a2 + 28);
  v4 = a1 + 776 + v3;
  if (v3 != v3)
  {
    v4 = (a1 + 776 + v3) & 0xFFFFFFFFFFFFLL | 0x2BAD000000000000;
  }

  v5 = *(a2 + 16);
  v6 = *(a2 + 20);
  while (v5 != v6)
  {
    v7 = 8 * v5;
    v8 = (*a2 + v7);
    if (v7 != v7)
    {
      v8 = ((*a2 + v7) & 0xFFFFFFFFFFFFLL | 0x2BAD000000000000);
    }

    v9 = *IOSkywalkPacket::getPacketBufferPool(*v8);
    (*(v9 + 160))();
    v6 = *(a2 + 20);
    v5 = (*(a2 + 16) + 1) & *(v4 + 16);
    *(a2 + 16) = v5;
  }

  *(v4 + 8) = 0;
  result = 0.0;
  *v4 = 0;
  *(a2 + 24) = 0;
  *(a2 + 16) = 0;
  return result;
}

uint64_t AppleEthernetRL::initializeIrqMapping(AppleEthernetRL *this)
{
  v2 = (this + 1544);
  v3 = *(this + 353);
  if ((v3 - 100) >= 2)
  {
    if (v3 != 88)
    {
      IOLog("[0x%llx] rl::%s(%d): sc.re_type 0x%x not supported\n", *(this + 76), "initializeIrqMapping", 38, v3);
      v13 = *(this + 387);
      v7 = *(this + 388);
      v12 = *(this + 389);
      v8 = *(this + 391);
      v9 = *(this + 392);
      v10 = *(this + 390);
      result = 3758097095;
      v11 = *(this + 393);
      goto LABEL_7;
    }

    result = 0;
    v5 = xmmword_C60;
    v6 = xmmword_C50;
    v7 = 0x8000000;
  }

  else
  {
    result = 0;
    v5 = xmmword_C40;
    v6 = xmmword_C50;
    v7 = 256;
  }

  v8 = 0x20000;
  v9 = 2;
  *v2 = v5;
  v2[1] = v6;
  v10 = 1;
  v11 = 0x10000;
  v12 = 0x10000;
  v13 = 1;
LABEL_7:
  *(this + 394) = v13 | v7 | v12 | v8 | 0x80000000;
  *(this + 395) = v10 | v9 | v11;
  return result;
}

void AppleEthernetRL::intrHandler(AppleEthernetRL *this)
{
  if (*(this + 1208))
  {
    v2 = this + 296;
    v3 = *(this + 463);
    if (*(this + 535))
    {
      if (!*(this + 463))
      {
        __dmb(2u);
        *(*(this + 42) + 3328) = -1;
        if (!*(this + 463))
        {
          __dmb(2u);
          *(*(this + 42) + 3344) = -1;
          if (!*(this + 463))
          {
            v4 = this + 336;
            v11 = (this + 848);
            do
            {
              v5 = *(*v4 + 3332);
              __dmb(1u);
              if (v5 == -1)
              {
                break;
              }

              if (*(this + 463))
              {
                break;
              }

              v6 = *(*v4 + 3348);
              __dmb(1u);
              if (v6 == -1)
              {
                break;
              }

              if ((*(this + 600) & 0x10) != 0)
              {
                IOLog("[0x%llx] rl::%s(%d): isr 0x%08x, l2 isr 0x%08x\n", *(this + 76), "intrHandler", 73, v5, v6);
              }

              if (!*(this + 463))
              {
                __dmb(2u);
                *(*(this + 42) + 3332) = v5;
                if (!*(this + 463))
                {
                  __dmb(2u);
                  *(*v4 + 3348) = v6;
                }
              }

              v7 = *(this + 386);
              if (((v7 | *(this + 394)) & v5) == 0 && (*(this + 395) & v6) == 0)
              {
LABEL_65:
                if (!*(this + 463))
                {
                  __dmb(2u);
                  *(*(this + 42) + 3340) = *(this + 386) | *(this + 394);
                  if (!*(this + 463))
                  {
                    __dmb(2u);
                    v9 = *(this + 395);
                    v10 = 3352;
                    goto LABEL_64;
                  }
                }

                return;
              }

              if ((v7 & v5) != 0)
              {
                re_check_link_status(v2);
                AppleEthernetRL::updateCarrier(this);
              }

              __dmb(1u);
              if ((*(this + 390) & v6) != 0 && AppleEthernetRL::checkForTX4DWLegacy(this, 1u))
              {
                AppleEthernetRL::handleTxPTPPacketsCompleted(this, v11);
              }

              if ((*(this + 392) & v6) != 0 && AppleEthernetRL::checkForTX8DW(this, 2u))
              {
                AppleEthernetRL::handleTxAVBPacketsCompleted(this, this + 920);
              }

              if ((*(this + 389) & v5) != 0 && (*(this + 169))(this, 1, *(this + 270)))
              {
                AppleEthernetRL::handleRxPTPPacketsAvailable(this, this + 1064);
              }

              if ((*(this + 391) & v5) != 0 && (*(this + 169))(this, 2, *(this + 288)))
              {
                AppleEthernetRL::handleRxAVBPacketsAvailable(this, this + 1136);
              }

              if ((*(this + 388) & v5) != 0 && (*(this + 170))(this, 0))
              {
                (*(**(this + 84) + 352))(*(this + 84), this + 632, 0);
              }

              if ((*(this + 387) & v5) != 0)
              {
                if (!(*(this + 169))(this, 0, *(this + 252)))
                {
                  goto LABEL_65;
                }

                (*(**(this + 90) + 352))(*(this + 90), this + 680, 0);
              }

              if ((*(this + 393) & v6) != 0)
              {
                AppleEthernetRL::handleMiscIrq(this);
              }
            }

            while (!*(this + 463));
          }
        }
      }
    }

    else if (!*(this + 463))
    {
      __dmb(2u);
      *(*(this + 42) + 56) = 0;
      if (!*(this + 463))
      {
        v4 = this + 336;
        do
        {
          v8 = *(*v4 + 60);
          __dmb(1u);
          if (v8 == -1)
          {
            break;
          }

          if ((*(this + 600) & 0x10) != 0)
          {
            IOLog("[0x%llx] rl::%s(%d): isr 0x%08x\n", *(this + 76), "intrHandler", 138, v8);
          }

          if (!*(this + 463))
          {
            __dmb(2u);
            *(*v4 + 60) = v8 & 0xFFFFFFBF;
          }

          if ((v8 & 0x8000) != 0)
          {
            AppleEthernetRL::intrHandler(v2);
          }

          if ((v8 & 0x40BF) == 0)
          {
            if (!*(this + 463))
            {
              __dmb(2u);
              v9 = 49343;
              v10 = 56;
LABEL_64:
              *(*v4 + v10) = v9;
            }

            return;
          }

          if ((v8 & 0x20) != 0)
          {
            re_check_link_status(v2);
            AppleEthernetRL::updateCarrier(this);
          }

          __dmb(1u);
          if ((v8 & 4) != 0 && (*(this + 170))(this, 0))
          {
            (*(**(this + 84) + 352))(*(this + 84), this + 632, 0);
          }

          if ((v8 & 1) != 0 && (*(this + 169))(this, 0, *(this + 252)))
          {
            (*(**(this + 90) + 352))(*(this + 90), this + 680, 0);
          }
        }

        while (!*(this + 463));
      }
    }
  }
}

void AppleEthernetRL::otherIntrHandler(AppleEthernetRL *this)
{
  if (*(this + 1208))
  {
    v2 = this + 296;
    if (!*(this + 463))
    {
      __dmb(2u);
      *(*(this + 42) + 3332) = *(this + 386);
    }

    re_check_link_status(v2);
    AppleEthernetRL::updateCarrier(this);
    if (!*(this + 463))
    {
      __dmb(2u);
      *(*(this + 42) + 3340) = *(this + 386);
    }
  }
}

OSMetaClass *AppleEthernetRLClock::MetaClass::MetaClass(OSMetaClass *this)
{
  result = OSMetaClass::OSMetaClass(this, "AppleEthernetRLClock", &IOTimeSyncNanosecondSnapshotService::gMetaClass, 0x180u);
  result->__vftable = off_52568;
  return result;
}

{
  result = OSMetaClass::OSMetaClass(this, "AppleEthernetRLClock", &IOTimeSyncNanosecondSnapshotService::gMetaClass, 0x180u);
  result->__vftable = off_52568;
  return result;
}

void AppleEthernetRLClock::MetaClass::~MetaClass(OSMetaClass *this)
{
  OSMetaClass::~OSMetaClass(this);
}

{
  OSMetaClass::~OSMetaClass(this);
}

void AppleEthernetRLClock::AppleEthernetRLClock(AppleEthernetRLClock *this, const OSMetaClass *a2)
{
  IOTimeSyncNanosecondSnapshotService::IOTimeSyncNanosecondSnapshotService(this, a2);
  *v2 = off_51F38;
}

{
  IOTimeSyncNanosecondSnapshotService::IOTimeSyncNanosecondSnapshotService(this, a2);
  *v2 = off_51F38;
}

void AppleEthernetRLClock::~AppleEthernetRLClock(AppleEthernetRLClock *this)
{
  IOTimeSyncNanosecondSnapshotService::~IOTimeSyncNanosecondSnapshotService(this);
}

{
  IOTimeSyncNanosecondSnapshotService::~IOTimeSyncNanosecondSnapshotService(this);
}

{
  IOTimeSyncNanosecondSnapshotService::~IOTimeSyncNanosecondSnapshotService(this);

  _OSObject_typed_operator_delete(&AppleEthernetRLClock_ktv, this, 384);
}

IOTimeSyncNanosecondSnapshotService *AppleEthernetRLClock::MetaClass::alloc(AppleEthernetRLClock::MetaClass *this)
{
  v1 = OSObject_typed_operator_new();
  IOTimeSyncNanosecondSnapshotService::IOTimeSyncNanosecondSnapshotService(v1, &AppleEthernetRLClock::gMetaClass);
  *v2 = off_51F38;
  OSMetaClass::instanceConstructed(&AppleEthernetRLClock::gMetaClass);
  return v1;
}

void AppleEthernetRLClock::AppleEthernetRLClock(AppleEthernetRLClock *this)
{
  IOTimeSyncNanosecondSnapshotService::IOTimeSyncNanosecondSnapshotService(this, &AppleEthernetRLClock::gMetaClass);
  *v1 = off_51F38;
  OSMetaClass::instanceConstructed(&AppleEthernetRLClock::gMetaClass);
}

{
  IOTimeSyncNanosecondSnapshotService::IOTimeSyncNanosecondSnapshotService(this, &AppleEthernetRLClock::gMetaClass);
  *v1 = off_51F38;
  OSMetaClass::instanceConstructed(&AppleEthernetRLClock::gMetaClass);
}

unint64_t AppleEthernetRLClock::takeCrossTimestamp(AppleEthernetRLClock *this, unint64_t *a2, unint64_t *a3, unint64_t *a4)
{
  v5 = *(this + 47);
  if (v5)
  {
    result = (*(*v5 + 1880))(v5, a3, a4);
  }

  else
  {
    result = IOTimeSyncInvalidTime;
  }

  *a2 = result;
  return result;
}

OSMetaClass *_GLOBAL__sub_I_AppleEthernetRLClock_cpp()
{
  result = OSMetaClass::OSMetaClass(&AppleEthernetRLClock::gMetaClass, "AppleEthernetRLClock", &IOTimeSyncNanosecondSnapshotService::gMetaClass, 0x180u);
  result->__vftable = off_52568;
  return result;
}

OSMetaClass *AppleEthernetRLKDPPoller::MetaClass::MetaClass(OSMetaClass *this)
{
  result = OSMetaClass::OSMetaClass(this, "AppleEthernetRLKDPPoller", &IOSkywalkNetworkKDPPoller::gMetaClass, 0x20u);
  result->__vftable = off_526D8;
  return result;
}

{
  result = OSMetaClass::OSMetaClass(this, "AppleEthernetRLKDPPoller", &IOSkywalkNetworkKDPPoller::gMetaClass, 0x20u);
  result->__vftable = off_526D8;
  return result;
}

void AppleEthernetRLKDPPoller::MetaClass::~MetaClass(OSMetaClass *this)
{
  OSMetaClass::~OSMetaClass(this);
}

{
  OSMetaClass::~OSMetaClass(this);
}

void AppleEthernetRLKDPPoller::AppleEthernetRLKDPPoller(AppleEthernetRLKDPPoller *this, const OSMetaClass *a2)
{
  IOSkywalkNetworkKDPPoller::IOSkywalkNetworkKDPPoller(this, a2);
  *v2 = off_52600;
}

{
  IOSkywalkNetworkKDPPoller::IOSkywalkNetworkKDPPoller(this, a2);
  *v2 = off_52600;
}

void AppleEthernetRLKDPPoller::~AppleEthernetRLKDPPoller(AppleEthernetRLKDPPoller *this)
{
  IOSkywalkNetworkKDPPoller::~IOSkywalkNetworkKDPPoller(this);
}

{
  IOSkywalkNetworkKDPPoller::~IOSkywalkNetworkKDPPoller(this);
}

{
  IOSkywalkNetworkKDPPoller::~IOSkywalkNetworkKDPPoller(this);

  _OSObject_typed_operator_delete(&AppleEthernetRLKDPPoller_ktv, this, 32);
}

IOSkywalkNetworkKDPPoller *AppleEthernetRLKDPPoller::MetaClass::alloc(AppleEthernetRLKDPPoller::MetaClass *this)
{
  v1 = OSObject_typed_operator_new();
  IOSkywalkNetworkKDPPoller::IOSkywalkNetworkKDPPoller(v1, &AppleEthernetRLKDPPoller::gMetaClass);
  *v2 = off_52600;
  OSMetaClass::instanceConstructed(&AppleEthernetRLKDPPoller::gMetaClass);
  return v1;
}

void AppleEthernetRLKDPPoller::AppleEthernetRLKDPPoller(AppleEthernetRLKDPPoller *this)
{
  IOSkywalkNetworkKDPPoller::IOSkywalkNetworkKDPPoller(this, &AppleEthernetRLKDPPoller::gMetaClass);
  *v1 = off_52600;
  OSMetaClass::instanceConstructed(&AppleEthernetRLKDPPoller::gMetaClass);
}

{
  IOSkywalkNetworkKDPPoller::IOSkywalkNetworkKDPPoller(this, &AppleEthernetRLKDPPoller::gMetaClass);
  *v1 = off_52600;
  OSMetaClass::instanceConstructed(&AppleEthernetRLKDPPoller::gMetaClass);
}

OSMetaClass *_GLOBAL__sub_I_AppleEthernetRLKDPPoller_cpp()
{
  result = OSMetaClass::OSMetaClass(&AppleEthernetRLKDPPoller::gMetaClass, "AppleEthernetRLKDPPoller", &IOSkywalkNetworkKDPPoller::gMetaClass, 0x20u);
  result->__vftable = off_526D8;
  return result;
}

void re_clear_eth_ocp_phy_bit(uint64_t a1, int a2, int a3)
{
  v3 = a2;
  v5 = re_real_ocp_phy_read(a1, a2) & ~a3;

  re_real_ocp_phy_write(a1, v3, v5);
}

void re_set_eth_ocp_phy_bit(uint64_t a1, int a2, int a3)
{
  v3 = a2;
  v5 = re_real_ocp_phy_read(a1, a2) | a3;

  re_real_ocp_phy_write(a1, v3, v5);
}

void re_phy_power_up(uint64_t a1)
{
  if ((*(a1 + 120) & 4) != 0 && !*(a1 + 167))
  {
    __dmb(2u);
    if (*(a1 + 167))
    {
      v2 = -1;
    }

    else
    {
      v3 = *(*(a1 + 40) + 111);
      __dmb(1u);
      v2 = v3 | 0xC0;
    }

    *(*(a1 + 40) + 111) = v2;
  }

  *(a1 + 160) = 0;
  re_real_ocp_phy_write(a1, 0xA400u, 4096);

  re_wait_phy_ups_resume(a1, 3);
}

void re_mdio_write(uint64_t a1, unsigned int a2, __int16 a3)
{
  if (a2 == 31)
  {
    *(a1 + 160) = a3;
    return;
  }

  LOWORD(v3) = *(a1 + 160);
  if (!v3)
  {
    v3 = (a2 >> 3) | 0xA40;
    v5 = a2 & 7 | 0x10;
LABEL_8:
    v4 = ((2 * v5 - 32) & 0xFE) + 16 * v3;
    goto LABEL_9;
  }

  if (a2 >= 0x10)
  {
    v5 = a2;
    goto LABEL_8;
  }

  v4 = 0;
LABEL_9:
  re_real_ocp_phy_write(a1, v4, a3);
}

void re_wait_phy_ups_resume(uint64_t a1, int a2)
{
  v4 = 100;
  do
  {
    if ((re_real_ocp_phy_read(a1, 42016) & 7) == a2)
    {
      break;
    }

    IOSleep(1u);
    --v4;
  }

  while (v4);
}

void re_phy_power_down(uint64_t a1)
{
  if (*(a1 + 171))
  {

    re_set_wol_linkspeed(a1);
  }

  else
  {
    *(a1 + 160) = 0;
    re_real_ocp_phy_write(a1, 0xA400u, 6144);
    if ((*(a1 + 120) & 4) != 0 && !*(a1 + 167))
    {
      __dmb(2u);
      if (*(a1 + 167))
      {
        v2 = 63;
      }

      else
      {
        v3 = *(*(a1 + 40) + 111);
        __dmb(1u);
        v2 = v3 & 0x3F;
      }

      *(*(a1 + 40) + 111) = v2;
    }
  }
}

BOOL re_set_wol_linkspeed(uint64_t a1)
{
  *(a1 + 160) = 0;
  if (*(a1 + 171))
  {
    v2 = 1;
  }

  else
  {
    v2 = (*(a1 + 162) & 0x60) == 0;
  }

  v3 = *(a1 + 62);
  if (v3 != 33061)
  {
    if (v3 != 33062)
    {
      if (v3 != 33063)
      {
        v10 = 0;
        if (v2)
        {
          goto LABEL_23;
        }

        goto LABEL_16;
      }

      v4 = re_real_ocp_phy_read(a1, 42452);
      re_real_ocp_phy_write(a1, 0xA5D4u, v4 & 0xFFFFEFFF);
    }

    v5 = re_real_ocp_phy_read(a1, 42452);
    re_real_ocp_phy_write(a1, 0xA5D4u, v5 & 0xFFFFFEFF);
  }

  v6 = re_real_ocp_phy_read(a1, 42452);
  re_real_ocp_phy_write(a1, 0xA5D4u, v6 & 0xFFFFFF7F);
  if (*(a1 + 160))
  {
    v7 = 0;
  }

  else
  {
    v7 = 42002;
  }

  v8 = re_real_ocp_phy_read(a1, v7);
  if (*(a1 + 160))
  {
    v9 = 0;
  }

  else
  {
    v9 = -23534;
  }

  re_real_ocp_phy_write(a1, v9, v8 & 0xFFFFFCFF);
  v10 = *(a1 + 160);
  if (!v2)
  {
LABEL_16:
    if (v10)
    {
      v11 = 0;
    }

    else
    {
      v11 = 41992;
    }

    v12 = re_real_ocp_phy_read(a1, v11);
    if (*(a1 + 160))
    {
      v13 = 0;
    }

    else
    {
      v13 = -23544;
    }

    re_real_ocp_phy_write(a1, v13, v12 & 0xFFFFFE7F);
    v10 = *(a1 + 160);
  }

LABEL_23:
  if (v10)
  {
    v14 = 0;
  }

  else
  {
    v14 = -23552;
  }

  re_real_ocp_phy_write(a1, v14, 37376);
  return v2;
}

uint64_t re_eri_read_with_oob_base_address(uint64_t a1, int a2, int a3, int a4, int a5)
{
  if ((a3 - 5) < 0xFFFFFFFC)
  {
    return 0xFFFFFFFFLL;
  }

  v7 = a3;
  v5 = 0;
  v9 = 0;
  v10 = a5 & 0xFFF | (a4 << 16) | (a5 << 6) & 0x3FFC0000;
  v24 = v10;
LABEL_5:
  v11 = 8 * v9;
  v12 = a2 & 0xFFFFFFFC;
  v13 = v10 | a2 & 0xFFFFFFFC | 0xF000;
  while (v7 >= 1)
  {
    if (a2 <= 0)
    {
      v14 = -(-a2 & 3);
    }

    else
    {
      v14 = a2 & 3;
    }

    if (!*(a1 + 167))
    {
      __dmb(2u);
      *(*(a1 + 40) + 116) = v13;
    }

    v15 = 0;
    do
    {
      IODelay(0x64u);
      if (*(a1 + 167))
      {
        break;
      }

      v16 = *(*(a1 + 40) + 116);
      __dmb(1u);
      if (v16 < 0)
      {
        break;
      }
    }

    while (v15++ < 9);
    if (v7 > 3)
    {
      v20 = -1;
    }

    else
    {
      v18 = 4 * v7 - 4;
      v19 = (&unk_225B8 + v18);
      if (v18 != v18)
      {
        v19 = ((&unk_225B8 + v18) & 0xFFFFFFFFFFFFLL | 0x2BAD000000000000);
      }

      v20 = *v19;
    }

    if (*(a1 + 167))
    {
      v21 = -1;
    }

    else
    {
      v21 = *(*(a1 + 40) + 112);
      __dmb(1u);
    }

    v5 = ((v21 & (v20 << (8 * v14))) >> (8 * v14) << v11) | v5;
    v9 = 4 - v14;
    a2 = v12;
    v23 = v7 - (4 - v14);
    v22 = v7 <= 4 - v14;
    v7 = 0;
    if (!v22)
    {
      a2 = v12 + 4;
      v7 = v23;
      v10 = v24;
      goto LABEL_5;
    }
  }

  return v5;
}

uint64_t re_eri_write_with_oob_base_address(uint64_t a1, int a2, int a3, int a4, int a5, int a6)
{
  if ((a3 - 5) < 0xFFFFFFFC)
  {
    return 0xFFFFFFFFLL;
  }

  v10 = a3;
  v12 = 0;
  v13 = a6 & 0xFFF | (a5 << 16) | (a6 << 6) & 0x3FFC0000;
  v25 = v13;
LABEL_4:
  v14 = 8 * v12;
  v15 = a2 & 0xFFFFFFFC;
  v26 = v13 | a2 & 0xFFFFFFFC | 0x8000F000;
LABEL_5:
  if (v10 >= 1)
  {
    if (a2 <= 0)
    {
      v16 = -(-a2 & 3);
    }

    else
    {
      v16 = a2 & 3;
    }

    if (v10 > 3)
    {
      v19 = -1;
    }

    else
    {
      v17 = 4 * v10 - 4;
      v18 = (&unk_225B8 + v17);
      if (v17 != v17)
      {
        v18 = ((&unk_225B8 + v17) & 0xFFFFFFFFFFFFLL | 0x2BAD000000000000);
      }

      v19 = *v18;
    }

    v20 = re_eri_read_with_oob_base_address(a1, v15, 4, a5, a6);
    if (!*(a1 + 167))
    {
      __dmb(2u);
      *(*(a1 + 40) + 112) = v20 & ~(v19 << (8 * v16)) | ((a4 << (8 * v16)) >> v14);
      if (!*(a1 + 167))
      {
        __dmb(2u);
        *(*(a1 + 40) + 116) = v26;
      }
    }

    for (i = 0; ; ++i)
    {
      IODelay(0x64u);
      if (*(a1 + 167))
      {
        if (i > 8)
        {
          goto LABEL_24;
        }
      }

      else
      {
        v22 = *(*(a1 + 40) + 116);
        __dmb(1u);
        if ((v22 & 0x80000000) == 0 || i >= 9)
        {
LABEL_24:
          v12 = 4 - v16;
          a2 = v15;
          v24 = v10 - (4 - v16);
          v23 = v10 <= 4 - v16;
          v10 = 0;
          if (!v23)
          {
            a2 = v15 + 4;
            v10 = v24;
            v13 = v25;
            goto LABEL_4;
          }

          goto LABEL_5;
        }
      }
    }
  }

  return 0;
}

uint64_t set_rxbufsize(uint64_t result)
{
  v1 = *(result + 6);
  if (v1 <= 0x5DC)
  {
    v2 = 1522;
  }

  else
  {
    v2 = v1 + 22;
  }

  *(result + 116) = v2;
  v3 = *(result + 57) - 84;
  v4 = v3 > 0x11;
  v5 = (1 << v3) & 0x301DF;
  v6 = v4 || v5 == 0;
  v7 = v2 | 0x8000;
  v8 = v2 & 0x7FFF;
  if (!v6)
  {
    v8 = v7;
  }

  if (!*(result + 167))
  {
    __dmb(2u);
    *(*(result + 40) + 218) = v8;
  }

  return result;
}

void re_exit_oob(uint64_t a1)
{
  if (!*(a1 + 167))
  {
    __dmb(2u);
    if (*(a1 + 167))
    {
      v2 = 63;
    }

    else
    {
      v3 = *(*(a1 + 40) + 80);
      __dmb(1u);
      v2 = v3 & 0x3F;
    }

    *(*(a1 + 40) + 80) = v2;
  }

  if ((*(a1 + 57) & 0xFE) == 0x50 && (*(a1 + 170) & 0xFE) == 2)
  {
    if (!*(a1 + 167))
    {
      __dmb(2u);
      if (*(a1 + 167))
      {
        v4 = -2;
      }

      else
      {
        v5 = *(*(a1 + 208) + 249);
        __dmb(1u);
        v4 = v5 & 0xFE;
      }

      *(*(a1 + 208) + 249) = v4;
    }

    v6 = 0;
    while (!*(a1 + 167))
    {
      v7 = *(*(a1 + 208) + 251);
      __dmb(1u);
      if ((v7 & 0x20) == 0)
      {
        IODelay(0x32u);
        if (v6++ < 0x7CF)
        {
          continue;
        }
      }

      if (!*(a1 + 167))
      {
        __dmb(2u);
        if (*(a1 + 167))
        {
          v9 = -1;
        }

        else
        {
          v10 = *(*(a1 + 208) + 251);
          __dmb(1u);
          v9 = v10 | 0x20;
        }

        *(*(a1 + 208) + 251) = v9;
      }

      break;
    }

    if ((*(a1 + 170) & 0xFE) == 2 && !*(a1 + 167))
    {
      __dmb(2u);
      if (*(a1 + 167))
      {
        v11 = -2;
      }

      else
      {
        v12 = *(*(a1 + 208) + 248);
        __dmb(1u);
        v11 = v12 & 0xFE;
      }

      *(*(a1 + 208) + 248) = v11;
    }
  }

  v13 = *(a1 + 170);
  if (!*(a1 + 170) || !*(a1 + 172))
  {
    goto LABEL_49;
  }

  if ((v13 - 2) < 2)
  {
    re_ocp_write(a1, 384, 1u, 5);
    v17 = re_ocp_read(a1, 48, 1u) | 1;
    v14 = a1;
    v15 = 48;
    v16 = 1;
LABEL_38:
    re_ocp_write(v14, v15, v16, v17);
    goto LABEL_39;
  }

  if (v13 == 4)
  {
    re_ocp_write(a1, 20, 4u, 5);
    re_ocp_write(a1, 24, 4u, 0);
    v14 = a1;
    v15 = 16;
    v16 = 4;
    goto LABEL_37;
  }

  if (v13 == 1)
  {
    re_eri_write_with_oob_base_address(a1, 232, 1, 5, 0, 0);
    v14 = a1;
    v15 = 48;
    v16 = 1;
LABEL_37:
    v17 = 1;
    goto LABEL_38;
  }

LABEL_39:
  if (*(a1 + 170) && *(a1 + 171))
  {
    if (*(a1 + 170) - 2 >= 3)
    {
      v20 = 9;
      do
      {
        v21 = v20;
        IOSleep(0xAu);
        if ((re_ocp_read(a1, 16, 2u) & 0x800) != 0)
        {
          break;
        }

        v20 = v21 - 1;
      }

      while (v21);
    }

    else
    {
      v18 = 9;
      do
      {
        v19 = v18;
        IOSleep(0xAu);
        if (re_ocp_read(a1, 292, 1u))
        {
          break;
        }

        v18 = v19 - 1;
      }

      while (v19);
    }
  }

LABEL_49:
  v22 = *(a1 + 57) - 80;
  if (v22 > 0x15)
  {
    goto LABEL_86;
  }

  v23 = 1 << v22;
  if ((v23 & 0x301DFC) != 0)
  {
    if (!*(a1 + 167))
    {
      __dmb(2u);
      if (*(a1 + 167))
      {
        v24 = -1;
      }

      else
      {
        v26 = *(*(a1 + 40) + 242);
        __dmb(1u);
        v24 = v26 | 8;
      }

      *(*(a1 + 40) + 242) = v24;
    }

    IOSleep(2u);
    if (*(a1 + 167) || (v27 = *(*(a1 + 40) + 55), __dmb(1u), (v27 & 0xC) != 0))
    {
      IODelay(0x64u);
      if (*(a1 + 167))
      {
        goto LABEL_72;
      }

      __dmb(2u);
      if (*(a1 + 167))
      {
        v28 = -13;
      }

      else
      {
        v29 = *(*(a1 + 40) + 55);
        __dmb(1u);
        v28 = v29 & 0xF3;
      }

      *(*(a1 + 40) + 55) = v28;
    }

    if (!*(a1 + 167))
    {
      __dmb(2u);
      if (*(a1 + 167))
      {
        v30 = -1;
      }

      else
      {
        v31 = *(*(a1 + 40) + 55);
        __dmb(1u);
        v30 = v31 | 0x80;
      }

      *(*(a1 + 40) + 55) = v30;
    }

LABEL_72:
    v32 = 2999;
    do
    {
      IODelay(0x32u);
      if (*(a1 + 167))
      {
        break;
      }

      v33 = *(*(a1 + 40) + 211);
      __dmb(1u);
    }

    while ((~v33 & 0x30) != 0 && v32-- != 0);
    v35 = 2999;
    while (1)
    {
      IODelay(0x32u);
      v36 = *(a1 + 167);
      if (*(a1 + 167))
      {
        goto LABEL_87;
      }

      v37 = *(*(a1 + 40) + 226);
      __dmb(1u);
      if ((~v37 & 0x103) == 0 || v35-- == 0)
      {
        goto LABEL_86;
      }
    }
  }

  if ((v23 & 3) == 0)
  {
LABEL_86:
    v36 = *(a1 + 167);
    goto LABEL_87;
  }

  if (!*(a1 + 167))
  {
    __dmb(2u);
    if (*(a1 + 167))
    {
      v25 = -1;
    }

    else
    {
      v60 = *(*(a1 + 40) + 242);
      __dmb(1u);
      v25 = v60 | 8;
    }

    *(*(a1 + 40) + 242) = v25;
  }

  IOSleep(2u);
  if (*(a1 + 167) || (v61 = *(*(a1 + 40) + 55), __dmb(1u), (v61 & 0xC) != 0))
  {
    IODelay(0x64u);
    if (!*(a1 + 167))
    {
      __dmb(2u);
      if (*(a1 + 167))
      {
        v62 = -13;
      }

      else
      {
        v63 = *(*(a1 + 40) + 55);
        __dmb(1u);
        v62 = v63 & 0xF3;
      }

      *(*(a1 + 40) + 55) = v62;
    }
  }

  v64 = 2999;
  while (1)
  {
    IODelay(0x32u);
    v36 = *(a1 + 167);
    if (*(a1 + 167))
    {
      break;
    }

    v65 = *(*(a1 + 40) + 211);
    __dmb(1u);
    if ((~v65 & 0x30) == 0 || v64-- == 0)
    {
      goto LABEL_86;
    }
  }

LABEL_87:
  if (*(a1 + 168) != 1)
  {
    goto LABEL_93;
  }

  if (!v36)
  {
    __dmb(2u);
    if (*(a1 + 167))
    {
      v39 = 127;
    }

    else
    {
      v40 = *(*(a1 + 40) + 211);
      __dmb(1u);
      v39 = v40 & 0x7F;
    }

    *(*(a1 + 40) + 211) = v39;
    v36 = *(a1 + 167);
LABEL_93:
    if (!v36)
    {
      __dmb(2u);
      v41 = *(a1 + 40);
      *(v41 + 176) = 1953431552;
      if (!*(a1 + 167))
      {
        v42 = *(v41 + 176);
        __dmb(1u);
        if (!*(a1 + 167))
        {
          __dmb(2u);
          *(*(a1 + 40) + 176) = v42 & 0xBFFF | 0xF46F0000;
        }
      }
    }
  }

  v43 = 9;
  while (1)
  {
    v44 = v43;
    IODelay(0x64u);
    if (*(a1 + 167))
    {
      break;
    }

    v45 = *(*(a1 + 40) + 210);
    __dmb(1u);
    if ((v45 & 0x200) == 0)
    {
      v43 = v44 - 1;
      if (v44)
      {
        continue;
      }
    }

    if (!*(a1 + 167))
    {
      __dmb(2u);
      *(*(a1 + 40) + 176) = -531298352;
      if (!*(a1 + 167))
      {
        __dmb(2u);
        *(*(a1 + 40) + 176) = -531430987;
        if (!*(a1 + 167))
        {
          __dmb(2u);
          *(*(a1 + 40) + 176) = -535866027;
        }
      }
    }

    break;
  }

  v46 = 9;
  do
  {
    v47 = v46;
    IODelay(0x64u);
    if (*(a1 + 167))
    {
      goto LABEL_112;
    }

    v48 = *(*(a1 + 40) + 210);
    __dmb(1u);
    if ((v48 & 0x200) != 0)
    {
      break;
    }

    v46 = v47 - 1;
  }

  while (v47);
  if (!*(a1 + 167))
  {
    __dmb(2u);
    v49 = *(a1 + 40);
    *(v49 + 176) = 1779826688;
    if (!*(a1 + 167))
    {
      v50 = *(v49 + 176);
      __dmb(1u);
      if ((v50 & 0x100) == 0)
      {
LABEL_120:
        v53 = *(a1 + 57);
        goto LABEL_121;
      }
    }
  }

LABEL_112:
  re_wait_phy_ups_resume(a1, 2);
  if (!*(a1 + 167))
  {
    __dmb(2u);
    v51 = *(a1 + 40);
    *(v51 + 176) = 1779826688;
    if (!*(a1 + 167))
    {
      v52 = *(v51 + 176);
      __dmb(1u);
      if (!*(a1 + 167))
      {
        __dmb(2u);
        *(*(a1 + 40) + 176) = v52 & 0xFEFF | 0xEA160000;
      }
    }
  }

  v53 = *(a1 + 57);
  if ((v53 - 80) <= 0x15)
  {
    v54 = 1 << (v53 - 80);
    if ((v54 & 0x301DFC) != 0)
    {
      v55 = re_real_ocp_phy_read(a1, 42086);
      re_real_ocp_phy_write(a1, 0xA466u, v55 & 0xFFFE);
LABEL_119:
      v56 = re_real_ocp_phy_read(a1, 42088);
      re_real_ocp_phy_write(a1, 0xA468u, v56 & 0xFFF5);
      goto LABEL_120;
    }

    if ((v54 & 3) != 0)
    {
      goto LABEL_119;
    }
  }

LABEL_121:
  v57 = (v53 - 80);
  if (v57 <= 0x15)
  {
    __asm { BR              X16 }
  }

  __asm { BTI             j }
}

uint64_t re_mac_ocp_read(uint64_t a1, int a2)
{
  if (*(a1 + 167) || (__dmb(2u), v2 = *(a1 + 40), *(v2 + 176) = (a2 << 15) & 0x7FFF0000, *(a1 + 167)))
  {
    LOWORD(v3) = -1;
  }

  else
  {
    v3 = *(v2 + 176);
    __dmb(1u);
  }

  return v3;
}

uint64_t re_mac_ocp_write(uint64_t result, unsigned __int16 a2, int a3)
{
  if (!*(result + 167))
  {
    __dmb(2u);
    *(*(result + 40) + 176) = a3 & 0x8000FFFF | (a2 >> 1 << 16) | 0x80000000;
  }

  return result;
}

void re_hw_init(uint64_t a1)
{
  if (!*(a1 + 167))
  {
    __dmb(2u);
    if (*(a1 + 167))
    {
      v2 = -1;
    }

    else
    {
      v3 = *(*(a1 + 40) + 80);
      __dmb(1u);
      v2 = v3 | 0xC0;
    }

    *(*(a1 + 40) + 80) = v2;
  }

  re_disable_magic_packet(a1);
  if (!*(a1 + 167))
  {
    __dmb(2u);
    if (*(a1 + 167))
    {
      v4 = 63;
    }

    else
    {
      v5 = *(*(a1 + 40) + 80);
      __dmb(1u);
      v4 = v5 & 0x3F;
    }

    *(*(a1 + 40) + 80) = v4;
    if (!*(a1 + 167))
    {
      __dmb(2u);
      if (*(a1 + 167))
      {
        v6 = 127;
      }

      else
      {
        v7 = *(*(a1 + 40) + 241);
        __dmb(1u);
        v6 = v7 & 0x7F;
      }

      *(*(a1 + 40) + 241) = v6;
      if (!*(a1 + 167))
      {
        __dmb(2u);
        if (*(a1 + 167))
        {
          v8 = -1;
        }

        else
        {
          v9 = *(*(a1 + 40) + 80);
          __dmb(1u);
          v8 = v9 | 0xC0;
        }

        *(*(a1 + 40) + 80) = v8;
      }
    }
  }

  _re_enable_aspm_clkreq_lock(a1, 0);
  if (!*(a1 + 167))
  {
    __dmb(2u);
    if (*(a1 + 167))
    {
      v10 = 63;
    }

    else
    {
      v11 = *(*(a1 + 40) + 80);
      __dmb(1u);
      v10 = v11 & 0x3F;
    }

    *(*(a1 + 40) + 80) = v10;
    if (!*(a1 + 167))
    {
      __dmb(2u);
      if (*(a1 + 167))
      {
        v12 = -1;
      }

      else
      {
        v13 = *(*(a1 + 40) + 80);
        __dmb(1u);
        v12 = v13 | 0xC0;
      }

      *(*(a1 + 40) + 80) = v12;
      if (!*(a1 + 167))
      {
        __dmb(2u);
        if (*(a1 + 167))
        {
          v14 = -1;
        }

        else
        {
          v15 = *(*(a1 + 40) + 83);
          __dmb(1u);
          v14 = v15 | 0x20;
        }

        *(*(a1 + 40) + 83) = v14;
        if (!*(a1 + 167))
        {
          __dmb(2u);
          if (*(a1 + 167))
          {
            v16 = 63;
          }

          else
          {
            v17 = *(*(a1 + 40) + 80);
            __dmb(1u);
            v16 = v17 & 0x3F;
          }

          *(*(a1 + 40) + 80) = v16;
        }
      }
    }
  }

  if ((*(a1 + 123) & 0x40) != 0)
  {
    v18 = re_csi_other_fun_read(a1, 61704);
    re_csi_write(a1, 61704, v18 | 0x100000);
  }

  v19 = -58720256;
  _re_stop(a1);
  if (!*(a1 + 167))
  {
    v20 = *(*(a1 + 40) + 64);
    __dmb(1u);
    v19 = v20 & 0xFC800000;
  }

  if ((v19 == 1820327936 || v19 == 1887436800 || (v19 & 0xFC000000) == 0x64000000 || (v19 & 0xFC000000) == 0x68000000) && !*(a1 + 167))
  {
    v21 = *(*(a1 + 40) + 52);
    __dmb(1u);
    if (!*(a1 + 167))
    {
      v22 = v21 & 0xFE;
      if (*(a1 + 239))
      {
        ++v22;
      }

      __dmb(2u);
      *(*(a1 + 40) + 52) = v22;
    }
  }
}

uint64_t re_disable_magic_packet(uint64_t result)
{
  v1 = result;
  v2 = *(result + 120);
  if (v2 < 0)
  {

    return re_clear_set_mac_ocp_bit(result, 49334, 1, 0);
  }

  else if ((v2 & 0x20000000) != 0)
  {
    v4 = re_eri_read_with_oob_base_address(result, 220, 4, 0, 0) & 0xFFFEFFFF;

    return re_eri_write_with_oob_base_address(v1, 220, 4, v4, 0, 0);
  }

  else if (!*(result + 167))
  {
    __dmb(2u);
    if (*(result + 167))
    {
      v3 = -33;
    }

    else
    {
      v5 = *(*(result + 40) + 84);
      __dmb(1u);
      v3 = v5 & 0xDF;
    }

    *(*(result + 40) + 84) = v3;
  }

  return result;
}

void re_csi_write(uint64_t a1, int a2, int a3)
{
  if (!*(a1 + 167))
  {
    __dmb(2u);
    *(*(a1 + 40) + 100) = a3;
    if (!*(a1 + 167))
    {
      __dmb(2u);
      *(*(a1 + 40) + 104) = a2 | 0x80000000;
    }
  }

  v4 = 0;
  do
  {
    IODelay(0x64u);
    if (!*(a1 + 167))
    {
      v5 = *(*(a1 + 40) + 104);
      __dmb(1u);
      if (v5 >= 0)
      {
        break;
      }
    }
  }

  while (v4++ < 9);

  IODelay(0x32u);
}

void _re_stop(uint64_t a1)
{
  if (!*(a1 + 167))
  {
    __dmb(2u);
    if (*(a1 + 167))
    {
      v2 = -64;
    }

    else
    {
      v3 = *(*(a1 + 40) + 68);
      __dmb(1u);
      v2 = v3 & 0xFFFFFFC0;
    }

    *(*(a1 + 40) + 68) = v2;
  }

  IOLog("rl::%s(%d): Here the non Apple path would have Disabled Interrupts\n", "_re_stop", 5831);
  re_reset(a1);
  if (!*(a1 + 239))
  {
    if (*(a1 + 167))
    {
      v4 = -1;
    }

    else
    {
      v4 = *(*(a1 + 40) + 56);
      __dmb(1u);
    }

    IOLog("rl::%s(%d): RE_IMR0_8125 is 0x%08x\n", "_re_stop", 5875, v4);
  }
}

uint64_t re_get_hw_mac_address(uint64_t a1, _WORD *a2)
{
  for (i = 0; i != 6; ++i)
  {
    if (*(a1 + 167))
    {
      v5 = -1;
    }

    else
    {
      v5 = *(*(a1 + 40) + i);
      __dmb(1u);
    }

    *(a2 + i) = v5;
  }

  if (*(a1 + 167))
  {
    *a2 = -1;
LABEL_9:
    v8 = -1;
    goto LABEL_10;
  }

  v6 = *(*(a1 + 40) + 6624);
  __dmb(1u);
  v7 = *(a1 + 167);
  *a2 = v6;
  if (v7)
  {
    goto LABEL_9;
  }

  v8 = *(*(a1 + 40) + 6628);
  __dmb(1u);
LABEL_10:
  a2[2] = v8;
  re_get_platform_mac_address(a1, a2);

  return re_rar_set(a1, a2);
}

uint64_t re_rar_set(uint64_t result, _DWORD *a2)
{
  if (!*(result + 167))
  {
    __dmb(2u);
    if (*(result + 167))
    {
      v2 = -1;
    }

    else
    {
      v3 = *(*(result + 40) + 80);
      __dmb(1u);
      v2 = v3 | 0xC0;
    }

    *(*(result + 40) + 80) = v2;
    if (!*(result + 167))
    {
      __dmb(2u);
      **(result + 40) = *a2;
      if (!*(result + 167))
      {
        __dmb(2u);
        *(*(result + 40) + 4) = a2[1];
        if (!*(result + 167))
        {
          __dmb(2u);
          if (*(result + 167))
          {
            v4 = 63;
          }

          else
          {
            v5 = *(*(result + 40) + 80);
            __dmb(1u);
            v4 = v5 & 0x3F;
          }

          *(*(result + 40) + 80) = v4;
        }
      }
    }
  }

  return result;
}

uint64_t re_check_mac_version(uint64_t a1)
{
  if (*(a1 + 167))
  {
    v2 = -1;
  }

  else
  {
    v2 = *(*(a1 + 40) + 64);
    __dmb(1u);
  }

  IOLog("rl::%s(%d): txcfg 0x%x\n", "re_check_mac_version", 2546, v2);
  if (*(a1 + 167))
  {
    goto LABEL_5;
  }

  v4 = *(*(a1 + 40) + 64);
  __dmb(1u);
  v5 = v4 & 0xFCF00000;
  if (v5 > 1744830463)
  {
    if (v5 > 1754267647)
    {
      if (v5 > 1821376511)
      {
        if (v5 == 1821376512)
        {
          result = 0;
          v8 = 101;
        }

        else
        {
          if (v5 != 1887436800)
          {
            goto LABEL_5;
          }

          result = 0;
          v8 = 88;
        }
      }

      else
      {
        if (v5 == 1754267648)
        {
          *(a1 + 57) = 87;
          *(a1 + 108) = 9194;
          *(a1 + 120) |= 0x80040044;
          if (*(a1 + 167))
          {
            return 0;
          }

          goto LABEL_51;
        }

        if (v5 != 1820327936)
        {
          goto LABEL_5;
        }

        result = 0;
        v8 = 100;
      }

      *(a1 + 57) = v8;
      *(a1 + 108) = 9194;
      *(a1 + 120) |= 0x80040044;
      return result;
    }

    switch(v5)
    {
      case 1744830464:
        *(a1 + 57) = 84;
        *(a1 + 108) = 9194;
        *(a1 + 120) |= 0x80040044;
        if (*(a1 + 167))
        {
          return 0;
        }

        break;
      case 1745879040:
        *(a1 + 57) = 85;
        *(a1 + 108) = 9194;
        *(a1 + 120) |= 0x80040044;
        if (*(a1 + 167))
        {
          return 0;
        }

        break;
      case 1753219072:
        *(a1 + 57) = 86;
        *(a1 + 108) = 9194;
        *(a1 + 120) |= 0x80040044;
        if (*(a1 + 167))
        {
          return 0;
        }

        break;
      default:
        goto LABEL_5;
    }

LABEL_51:
    result = 0;
    __dmb(2u);
    v6 = *(a1 + 40);
    v7 = 1086327808;
    goto LABEL_52;
  }

  if (v5 <= 1678770175)
  {
    switch(v5)
    {
      case 1619001344:
        *(a1 + 57) = 80;
        *(a1 + 108) = 9194;
        *(a1 + 120) |= 0x80040044;
        if (*(a1 + 167))
        {
          return 0;
        }

        break;
      case 1620049920:
        *(a1 + 57) = 81;
        *(a1 + 108) = 9194;
        *(a1 + 120) |= 0x80040044;
        if (*(a1 + 167))
        {
          return 0;
        }

        break;
      case 1677721600:
        *(a1 + 57) = 82;
        *(a1 + 108) = 9194;
        *(a1 + 120) |= 0x80040044;
        if (*(a1 + 167))
        {
          return 0;
        }

        goto LABEL_51;
      default:
        goto LABEL_5;
    }

    result = 0;
    __dmb(2u);
    v6 = *(a1 + 40);
    v7 = 1086325760;
    goto LABEL_52;
  }

  if (v5 > 1687158783)
  {
    if (v5 == 1687158784)
    {
      *(a1 + 57) = 91;
      *(a1 + 108) = 9194;
      *(a1 + 120) |= 0x80040044;
      if (*(a1 + 167))
      {
        return 0;
      }
    }

    else
    {
      if (v5 != 1688207360)
      {
        goto LABEL_5;
      }

      *(a1 + 57) = 92;
      *(a1 + 108) = 9194;
      *(a1 + 120) |= 0x80040044;
      if (*(a1 + 167))
      {
        return 0;
      }
    }

    result = 0;
    __dmb(2u);
    v6 = *(a1 + 40);
    v7 = 1086328064;
    goto LABEL_52;
  }

  if (v5 == 1678770176)
  {
    *(a1 + 57) = 83;
    *(a1 + 108) = 9194;
    *(a1 + 120) |= 0x80040044;
    if (*(a1 + 167))
    {
      return 0;
    }

    goto LABEL_51;
  }

  if (v5 != 1686110208)
  {
LABEL_5:
    IOLog("rl::%s(%d): unknown device\n", "re_check_mac_version", 2672);
    *(a1 + 57) = -1;
    return 6;
  }

  *(a1 + 57) = 90;
  *(a1 + 108) = 9194;
  *(a1 + 120) |= 0x80040044;
  if (*(a1 + 167))
  {
    return 0;
  }

  result = 0;
  __dmb(2u);
  v6 = *(a1 + 40);
  v7 = 1086328576;
LABEL_52:
  *(v6 + 68) = v7;
  return result;
}

void re_init_software_variable(uint64_t a1)
{
  *(a1 + 120) |= 0x40000000u;
  v2 = *(a1 + 108);
  *(a1 + 112) = v2 + 31;
  if (v2 >= 9186)
  {
    *(a1 + 108) = 0x2400000023E1;
  }

  v3 = *(a1 + 57);
  if ((v3 - 84) < 2)
  {
    v7 = 4;
    goto LABEL_14;
  }

  if ((v3 - 80) <= 1)
  {
    if (*(a1 + 167))
    {
      goto LABEL_15;
    }

    __dmb(2u);
    v4 = *(a1 + 40);
    *(v4 + 176) = 1745027072;
    if (*(a1 + 167))
    {
      goto LABEL_15;
    }

    v5 = *(v4 + 176);
    __dmb(1u);
    if (v5 != 2 && v5 != 4)
    {
      goto LABEL_15;
    }

    v7 = 2;
LABEL_14:
    *(a1 + 170) = v7;
LABEL_15:
    v3 = *(a1 + 57);
    goto LABEL_16;
  }

  *(a1 + 170) = 0;
LABEL_16:
  v8 = v3 - 80;
  if ((v3 - 80) > 8)
  {
    goto LABEL_34;
  }

  if (((1 << v8) & 0x130) == 0)
  {
    if (((1 << v8) & 3) != 0)
    {
      if (!*(a1 + 170))
      {
        goto LABEL_22;
      }

      goto LABEL_20;
    }

LABEL_34:
    v9 = 0;
    goto LABEL_21;
  }

LABEL_20:
  v9 = 2;
LABEL_21:
  *(a1 + 169) = v9;
LABEL_22:
  if (!*(a1 + 170))
  {
    if (!*(a1 + 171))
    {
      goto LABEL_47;
    }

    goto LABEL_44;
  }

  if (!*(a1 + 169))
  {
    goto LABEL_41;
  }

  if ((v3 - 84) < 2)
  {
    if (*(a1 + 167))
    {
      goto LABEL_41;
    }

    __dmb(2u);
    v12 = *(a1 + 40);
    *(v12 + 176) = 1784676352;
    if (*(a1 + 167))
    {
      goto LABEL_41;
    }

    v13 = *(v12 + 176);
    __dmb(1u);
    if ((v13 & 8) != 0)
    {
      goto LABEL_41;
    }
  }

  else if (v8 <= 1)
  {
    if (*(a1 + 167) || (__dmb(2u), v10 = *(a1 + 40), *(v10 + 176) = 1781530624, *(a1 + 167)) || (v11 = *(v10 + 176), __dmb(1u), v11 == 0xFFFF) || (v11 & 1) == 0)
    {
LABEL_41:
      *(a1 + 172) = 0;
      goto LABEL_42;
    }
  }

  *(a1 + 172) = 1;
  v14 = *(a1 + 170);
  if ((v14 - 2) >= 3)
  {
    if (v14 != 1 || ((re_ocp_read(a1, 16, 2u) >> 15) & 1) == 0)
    {
      goto LABEL_42;
    }
  }

  else if ((re_ocp_read(a1, 296, 1u) & 1) == 0)
  {
    goto LABEL_42;
  }

  if (*(a1 + 170) - 2 >= 3)
  {
    *(a1 + 176) = -1;
    goto LABEL_42;
  }

  v27 = re_ocp_read(a1, 288, 4u);
  *(a1 + 176) = v27;
  if ((v27 + 1) <= 1)
  {
LABEL_42:
    v15 = 0;
    goto LABEL_43;
  }

  v15 = 1;
LABEL_43:
  *(a1 + 171) = v15;
  if (!v15)
  {
    goto LABEL_47;
  }

LABEL_44:
  IOLog("rl::%s(%d): DASH support detected.\n", "re_init_software_variable", 2797);
  if (*(a1 + 170) == 3 && (re_csi_other_fun_read(a1, 61464) & 5) == 4)
  {
    re_csi_other_fun_read(a1, 61468);
  }

LABEL_47:
  v16 = *(a1 + 57);
  if (v16 <= 0x57)
  {
    if (*(a1 + 57) > 0x53u)
    {
      if (v16 - 84 < 2)
      {
        v17 = 1;
        v18 = 4;
        goto LABEL_67;
      }

      if (v16 - 86 < 2)
      {
        v17 = 1;
        v18 = 5;
        goto LABEL_67;
      }

      goto LABEL_66;
    }

    if (v16 - 80 < 2)
    {
      v17 = 0;
      v18 = 1;
      goto LABEL_67;
    }

    if (v16 - 82 >= 2)
    {
      goto LABEL_66;
    }

LABEL_56:
    v17 = 1;
    v18 = 2;
    goto LABEL_67;
  }

  if (*(a1 + 57) > 0x63u)
  {
    if (v16 - 100 < 2)
    {
      v17 = 1;
      v18 = 6;
      goto LABEL_67;
    }

    goto LABEL_66;
  }

  if (v16 - 91 < 2)
  {
    v17 = 1;
    v18 = 3;
    goto LABEL_67;
  }

  if (v16 == 88)
  {
    *(a1 + 238) = 7;
    *(a1 + 239) = 1;
    *(a1 + 154) = 4;
    *(a1 + 164) = 1;
    *(a1 + 168) = 1;
    __asm { BTI             j }

    *(a1 + 156) = 2;
    goto LABEL_69;
  }

  if (v16 == 90)
  {
    goto LABEL_56;
  }

LABEL_66:
  v18 = 0;
  v17 = 0;
LABEL_67:
  *(a1 + 238) = v18;
  *(a1 + 239) = v17;
  *(a1 + 154) = 4;
  *(a1 + 164) = 1;
  v19 = v16 - 80;
  *(a1 + 168) = 1;
  if (v19 <= 0x15)
  {
    __asm { BR              X16 }
  }

LABEL_69:
  __asm { BTI             j }

  *(a1 + 233) = 1;
  *(a1 + 234) = 2;
  *(a1 + 236) = 256;
  if ((*(a1 + 57) & 0xFE) == 0x56)
  {
    *(a1 + 152) = 1;
  }

  if (*(a1 + 167))
  {
    LOBYTE(v23) = 1;
    LOBYTE(v24) = 62;
  }

  else
  {
    v25 = *(*(a1 + 40) + 64);
    __dmb(1u);
    v24 = (v25 >> 25) & 0x3E;
    v26 = *(a1 + 167);
    *(a1 + 52) = v24;
    if (v26)
    {
      LOBYTE(v23) = 1;
    }

    else
    {
      v24 = *(*(a1 + 40) + 64);
      __dmb(1u);
      v23 = (v24 >> 23) & 1;
      LOBYTE(v24) = *(a1 + 52);
    }
  }

  *(a1 + 52) = v24 | v23;
  *(a1 + 166) = 0;
}

uint64_t re_csi_other_fun_read(uint64_t a1, int a2)
{
  if (!*(a1 + 167))
  {
    __dmb(2u);
    *(*(a1 + 40) + 104) = a2;
  }

  v3 = 0;
  do
  {
    IODelay(0x64u);
    if (*(a1 + 167))
    {
      goto LABEL_9;
    }

    v4 = *(*(a1 + 40) + 104);
    __dmb(1u);
    if (v4 < 0)
    {
      break;
    }
  }

  while (v3++ < 9);
  if (*(a1 + 167))
  {
LABEL_9:
    v6 = 0xFFFFFFFFLL;
    goto LABEL_10;
  }

  v6 = *(*(a1 + 40) + 100);
  __dmb(1u);
LABEL_10:
  IODelay(0x32u);
  return v6;
}

uint64_t re_real_ocp_phy_read(uint64_t a1, int a2)
{
  if (!*(a1 + 167))
  {
    __dmb(2u);
    *(*(a1 + 40) + 184) = (a2 << 15) & 0x7FFF0000;
  }

  v3 = 0;
  while (1)
  {
    IODelay(1u);
    if (*(a1 + 167))
    {
      break;
    }

    v4 = *(*(a1 + 40) + 184);
    __dmb(1u);
    if ((v4 & 0x80000000) == 0 && v3++ < 0x63)
    {
      continue;
    }

    return v4;
  }

  LOWORD(v4) = -1;
  return v4;
}

void re_hw_start_unlock_8125(uint64_t a1)
{
  re_var_init(a1);
  if (!*(a1 + 167))
  {
    __dmb(2u);
    if (*(a1 + 167))
    {
      v2 = -1;
    }

    else
    {
      v3 = *(*(a1 + 40) + 80);
      __dmb(1u);
      v2 = v3 | 0xC0;
    }

    *(*(a1 + 40) + 80) = v2;
  }

  v4 = -58720256;
  _re_enable_aspm_clkreq_lock(a1, 0);
  if (!*(a1 + 167))
  {
    __dmb(2u);
    if (*(a1 + 167))
    {
      v5 = 127;
    }

    else
    {
      v6 = *(*(a1 + 40) + 241);
      __dmb(1u);
      v5 = v6 & 0x7F;
    }

    *(*(a1 + 40) + 241) = v5;
    if (!*(a1 + 167))
    {
      __dmb(2u);
      *(*(a1 + 40) + 24648) = *(a1 + 6) + 46;
      if (!*(a1 + 167))
      {
        __dmb(2u);
        *(*(a1 + 40) + 224) = 8288;
        if (!*(a1 + 167))
        {
          __dmb(2u);
          v7 = *(a1 + 40);
          *(v7 + 64) = 50333568;
          if (!*(a1 + 167))
          {
            v8 = *(v7 + 64);
            __dmb(1u);
            v4 = v8 & 0xFC800000;
            if ((v8 & 0xFC800000) <= 1744830463)
            {
              if (v4 == 1619001344 || v4 == 1677721600)
              {
                goto LABEL_24;
              }

              v9 = 1686110208;
            }

            else if (v4 > 1820327935)
            {
              if (v4 == 1887436800)
              {
                goto LABEL_24;
              }

              v9 = 1820327936;
            }

            else
            {
              if (v4 == 1744830464)
              {
                goto LABEL_24;
              }

              v9 = 1753219072;
            }

            if (v4 != v9)
            {
              goto LABEL_226;
            }

LABEL_24:
            if (!*(a1 + 167))
            {
              __dmb(2u);
              if (*(a1 + 167))
              {
                v10 = -1;
              }

              else
              {
                v11 = *(*(a1 + 40) + 83);
                __dmb(1u);
                v10 = v11 | 0x20;
              }

              *(*(a1 + 40) + 83) = v10;
              if (!*(a1 + 167))
              {
                __dmb(2u);
                *(*(a1 + 40) + 176) = -263404798;
              }
            }

            v12 = re_csi_other_fun_read(a1, 34572);
            re_csi_write(a1, 34572, v12 & 0xC0FFFFFF | 0x27000000);
            v13 = IOPCIDevice::extendedConfigRead8(*(a1 + 72), 0x79uLL);
            IOPCIDevice::extendedConfigWrite8(*(a1 + 72), 0x79uLL, v13 & 0x8F | 0x40);
            if (v4 == 1619001344 || v4 == 1677721600)
            {
              if (*(a1 + 167))
              {
                goto LABEL_48;
              }

              __dmb(2u);
              *(*(a1 + 40) + 898) = 8731;
            }

            else if (v4 == 1686110208)
            {
              v14 = re_csi_other_fun_read(a1, 2192);
              re_csi_write(a1, 2192, v14 & 0xFFFFFFFE);
            }

            if (!*(a1 + 167))
            {
              __dmb(2u);
              *(*(a1 + 40) + 17664) = 0;
              if (!*(a1 + 167))
              {
                __dmb(2u);
                *(*(a1 + 40) + 18432) = 0;
                if (!*(a1 + 167))
                {
                  __dmb(2u);
                  if (*(a1 + 167))
                  {
                    v15 = -17;
                  }

                  else
                  {
                    v16 = *(*(a1 + 40) + 82);
                    __dmb(1u);
                    v15 = v16 & 0xEF;
                  }

                  *(*(a1 + 40) + 82) = v15;
                  if (!*(a1 + 167))
                  {
                    __dmb(2u);
                    if (*(a1 + 167))
                    {
                      v17 = -9;
                    }

                    else
                    {
                      v18 = *(*(a1 + 40) + 242);
                      __dmb(1u);
                      v17 = v18 & 0xF7;
                    }

                    *(*(a1 + 40) + 242) = v17;
                    if (!*(a1 + 167))
                    {
                      __dmb(2u);
                      *(*(a1 + 40) + 87) = 16;
                    }
                  }
                }
              }
            }

LABEL_48:
            v19 = *(a1 + 57);
            if (v19 <= 0x51)
            {
              if (v19 == 80)
              {
                re_ephy_write(a1, 1u, 43026);
                re_ephy_write(a1, 9u, 21004);
                re_ephy_write(a1, 4u, 53248);
                re_ephy_write(a1, 0xDu, 63234);
                re_ephy_write(a1, 0xAu, 34387);
                re_ephy_write(a1, 6u, 30);
                re_ephy_write(a1, 8u, 13717);
                re_ephy_write(a1, 0x20u, 37973);
                re_ephy_write(a1, 0x21u, 39423);
                re_ephy_write(a1, 2u, 24646);
                re_ephy_write(a1, 0x29u, 65024);
                re_ephy_write(a1, 0x23u, 43874);
                re_clear_set_ephy_bit(a1, 0x24u, 2048, 0);
                re_ephy_write(a1, 0x41u, 43020);
                re_ephy_write(a1, 0x49u, 21004);
                re_ephy_write(a1, 0x44u, 53248);
                re_ephy_write(a1, 0x4Du, 63234);
                re_ephy_write(a1, 0x4Au, 34387);
                re_ephy_write(a1, 0x46u, 30);
                re_ephy_write(a1, 0x48u, 13717);
                re_ephy_write(a1, 0x60u, 37973);
                re_ephy_write(a1, 0x61u, 39423);
                re_ephy_write(a1, 0x42u, 24646);
                re_ephy_write(a1, 0x69u, 65024);
                re_ephy_write(a1, 0x63u, 43874);
                re_clear_set_ephy_bit(a1, 0x64u, 2048, 0);
                goto LABEL_61;
              }

              if (v19 != 81)
              {
LABEL_61:
                if (*(a1 + 167) || (__dmb(2u), *(*(a1 + 40) + 176) = -526319617, *(a1 + 167)) || (__dmb(2u), *(*(a1 + 40) + 176) = -526254081, *(a1 + 167)) || (__dmb(2u), v23 = *(a1 + 40), *(v23 + 176) = 1974206464, *(a1 + 167)))
                {
                  LOWORD(v24) = -1;
                }

                else
                {
                  v24 = *(v23 + 176);
                  __dmb(1u);
                }

                v25 = *(a1 + 57);
                if ((v25 - 91) >= 2)
                {
                  if ((v25 - 100) > 1)
                  {
                    v26 = v24 & 0xFFFE;
LABEL_72:
                    if (!*(a1 + 167))
                    {
                      __dmb(2u);
                      *(*(a1 + 40) + 176) = v26 | 0xF5AC0000;
                      v25 = *(a1 + 57);
                    }

                    if ((v25 - 84) <= 0x11 && ((1 << (v25 - 84)) & 0x3019F) != 0 && !*(a1 + 167))
                    {
                      __dmb(2u);
                      if (*(a1 + 167))
                      {
                        v27 = -3;
                      }

                      else
                      {
                        v28 = *(*(a1 + 40) + 216);
                        __dmb(1u);
                        v27 = v28 & 0xFD;
                      }

                      *(*(a1 + 40) + 216) = v27;
                      v25 = *(a1 + 57);
                    }

                    if ((v25 & 0xFE) == 0x64 && !*(a1 + 167))
                    {
                      __dmb(2u);
                      if (*(a1 + 167))
                      {
                        v29 = -5;
                      }

                      else
                      {
                        v30 = *(*(a1 + 40) + 8420);
                        __dmb(1u);
                        v29 = v30 & 0xFB;
                      }

                      *(*(a1 + 40) + 8420) = v29;
                      v25 = *(a1 + 57);
                    }

                    if (v25 == 101 || v25 == 88)
                    {
                      re_clear_set_mac_ocp_bit(a1, 57356, 4096, 0);
                      re_clear_set_mac_ocp_bit(a1, 49346, 64, 0);
                    }

                    if (*(a1 + 167) || (__dmb(2u), v31 = *(a1 + 40), *(v31 + 176) = 1930035200, *(a1 + 167)))
                    {
                      LOWORD(v32) = -1;
                    }

                    else
                    {
                      v32 = *(v31 + 176);
                      __dmb(1u);
                    }

                    v33 = *(a1 + 57);
                    if ((v33 & 0xFE) == 0x64)
                    {
                      v34 = v32 | 0xF00;
                    }

                    else
                    {
                      v35 = v32 & 0xF8FF;
                      if ((v33 - 90) >= 3)
                      {
                        if ((v33 - 82) > 1)
                        {
                          v34 = v35 | 0x300;
                        }

                        else
                        {
                          v34 = v35 | 0x200;
                        }
                      }

                      else
                      {
                        v34 = v35 | 0x400;
                      }
                    }

                    if (!*(a1 + 167))
                    {
                      __dmb(2u);
                      *(*(a1 + 40) + 176) = v34 | 0xF30A0000;
                      if (!*(a1 + 167))
                      {
                        __dmb(2u);
                        v36 = *(a1 + 40);
                        *(v36 + 176) = 1931411456;
                        if (!*(a1 + 167))
                        {
                          v37 = *(v36 + 176);
                          __dmb(1u);
                          if (!*(a1 + 167))
                          {
                            v38 = v37 & 0xF3FF;
                            v39 = *(a1 + 25) ? 3072 : 0;
                            __dmb(2u);
                            *(*(a1 + 40) + 176) = (v38 | v39) - 216072192;
                            if (!*(a1 + 167))
                            {
                              __dmb(2u);
                              v40 = *(a1 + 40);
                              *(v40 + 176) = 1931411456;
                              if (!*(a1 + 167))
                              {
                                v41 = *(v40 + 176);
                                __dmb(1u);
                                if (!*(a1 + 167))
                                {
                                  __dmb(2u);
                                  *(*(a1 + 40) + 176) = v41 & 0xFFCF | 0xF31F0020;
                                  if (!*(a1 + 167))
                                  {
                                    __dmb(2u);
                                    v42 = *(a1 + 40);
                                    *(v42 + 176) = 1616510976;
                                    if (!*(a1 + 167))
                                    {
                                      v43 = *(v42 + 176);
                                      __dmb(1u);
                                      if (!*(a1 + 167))
                                      {
                                        __dmb(2u);
                                        *(*(a1 + 40) + 176) = v43 | 0xE05A000C;
                                        if (!*(a1 + 167))
                                        {
                                          __dmb(2u);
                                          v44 = *(a1 + 40);
                                          *(v44 + 176) = 1974796288;
                                          if (!*(a1 + 167))
                                          {
                                            v45 = *(v44 + 176);
                                            __dmb(1u);
                                            if (!*(a1 + 167))
                                            {
                                              __dmb(2u);
                                              *(*(a1 + 40) + 176) = v45 & 0xFF00 | 0xF5B50033;
                                              if (!*(a1 + 167))
                                              {
                                                __dmb(2u);
                                                v46 = *(a1 + 40);
                                                *(v46 + 176) = 1973944320;
                                                if (!*(a1 + 167))
                                                {
                                                  v47 = *(v46 + 176);
                                                  __dmb(1u);
                                                  if (!*(a1 + 167))
                                                  {
                                                    __dmb(2u);
                                                    *(*(a1 + 40) + 176) = v47 & 0xFC1F | 0xF5A80040;
                                                    if (!*(a1 + 167))
                                                    {
                                                      __dmb(2u);
                                                      v48 = *(a1 + 40);
                                                      *(v48 + 176) = 1881866240;
                                                      if (!*(a1 + 167))
                                                      {
                                                        v49 = *(v48 + 176);
                                                        __dmb(1u);
                                                        if (!*(a1 + 167))
                                                        {
                                                          __dmb(2u);
                                                          *(*(a1 + 40) + 176) = v49 & 0xFF0F | 0xF02B0000;
                                                          if (!*(a1 + 167))
                                                          {
                                                            __dmb(2u);
                                                            if (*(a1 + 167))
                                                            {
                                                              v50 = -1;
                                                            }

                                                            else
                                                            {
                                                              v51 = *(*(a1 + 40) + 208);
                                                              __dmb(1u);
                                                              v50 = v51 | 0x80;
                                                            }

                                                            *(*(a1 + 40) + 208) = v50;
                                                            if (!*(a1 + 167))
                                                            {
                                                              __dmb(2u);
                                                              v52 = *(a1 + 40);
                                                              *(v52 + 176) = 1881145344;
                                                              if (!*(a1 + 167))
                                                              {
                                                                v53 = *(v52 + 176);
                                                                __dmb(1u);
                                                                if (!*(a1 + 167))
                                                                {
                                                                  __dmb(2u);
                                                                  *(*(a1 + 40) + 176) = v53 & 0xEFFF | 0xF0200000;
                                                                  if (!*(a1 + 167))
                                                                  {
                                                                    __dmb(2u);
                                                                    v54 = *(a1 + 40);
                                                                    *(v54 + 176) = 1963851776;
                                                                    if (!*(a1 + 167))
                                                                    {
                                                                      v55 = *(v54 + 176);
                                                                      __dmb(1u);
                                                                      if (!*(a1 + 167))
                                                                      {
                                                                        __dmb(2u);
                                                                        *(*(a1 + 40) + 176) = v55 & 0xFFFC | 0xF50E0001;
                                                                      }
                                                                    }
                                                                  }
                                                                }
                                                              }
                                                            }
                                                          }
                                                        }
                                                      }
                                                    }
                                                  }
                                                }
                                              }
                                            }
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }

                    if (*(a1 + 170))
                    {
                      OOB_mutex_lock(a1);
                    }

                    v56 = *(a1 + 167);
                    if ((*(a1 + 57) & 0xFE) == 0x56)
                    {
                      if (*(a1 + 167))
                      {
                        goto LABEL_143;
                      }

                      __dmb(2u);
                      v57 = -262126589;
                    }

                    else
                    {
                      if (*(a1 + 167))
                      {
                        goto LABEL_143;
                      }

                      v57 = -262127616;
                      __dmb(2u);
                    }

                    *(*(a1 + 40) + 176) = v57;
LABEL_143:
                    re_clear_set_mac_ocp_bit(a1, 57426, 0, 96);
                    re_clear_set_mac_ocp_bit(a1, 57426, 136, 0);
                    if (*(a1 + 170))
                    {
                      OOB_mutex_unlock(a1);
                    }

                    v58 = *(a1 + 167);
                    if (!*(a1 + 167))
                    {
                      __dmb(2u);
                      v59 = *(a1 + 40);
                      *(v59 + 176) = 1616248832;
                      v58 = *(a1 + 167);
                      if (!*(a1 + 167))
                      {
                        v60 = *(v59 + 176);
                        __dmb(1u);
                        v58 = *(a1 + 167);
                        if (!*(a1 + 167))
                        {
                          v61 = v60 | 0x1F80;
                          v62 = v60 & 0xE07F | 0x1F00;
                          if (v4 == 1619001344)
                          {
                            v61 = v62;
                          }

                          __dmb(2u);
                          *(*(a1 + 40) + 176) = v61 | 0xE0560000;
                          v58 = *(a1 + 167);
                          if (!*(a1 + 167))
                          {
                            __dmb(2u);
                            v63 = *(a1 + 40);
                            *(v63 + 176) = 1779957760;
                            v58 = *(a1 + 167);
                            if (!*(a1 + 167))
                            {
                              v64 = *(v63 + 176);
                              __dmb(1u);
                              v58 = *(a1 + 167);
                              if (!*(a1 + 167))
                              {
                                __dmb(2u);
                                *(*(a1 + 40) + 176) = v64 & 0xF000 | 0xEA18045F;
                                v58 = *(a1 + 167);
                                if (!*(a1 + 167))
                                {
                                  __dmb(2u);
                                  if (*(a1 + 167))
                                  {
                                    v65 = -1;
                                  }

                                  else
                                  {
                                    v66 = *(*(a1 + 40) + 208);
                                    __dmb(1u);
                                    v65 = v66 | 0xC0;
                                  }

                                  *(*(a1 + 40) + 208) = v65;
                                  v58 = *(a1 + 167);
                                }
                              }
                            }
                          }
                        }
                      }
                    }

                    v67 = *(a1 + 57);
                    v68 = v67 & 0xFE;
                    if (v68 == 80)
                    {
                      if (v58)
                      {
                        LOWORD(v69) = -1;
LABEL_175:
                        v75 = v69 & 0xFFFB;
                        v76 = v67 - 91;
                        if (v76 <= 0xA && ((1 << v76) & 0x603) != 0)
                        {
                          v75 = v69 & 0xFCFB;
                        }

                        if (!*(a1 + 167))
                        {
                          __dmb(2u);
                          *(*(a1 + 40) + 176) = v75 | 0xF50E0000;
                        }

                        re_clear_set_mac_ocp_bit(a1, 60244, 0, 1);
                        IODelay(1u);
                        re_clear_set_mac_ocp_bit(a1, 60244, 1, 0);
                        if (!*(a1 + 167))
                        {
                          __dmb(2u);
                          if (*(a1 + 167))
                          {
                            v77 = -49;
                          }

                          else
                          {
                            v78 = *(*(a1 + 40) + 6272);
                            __dmb(1u);
                            v77 = v78 & 0xFFCF;
                          }

                          *(*(a1 + 40) + 6272) = v77;
                        }

                        if (v4 <= 1753219071)
                        {
                          if (v4 == 1619001344)
                          {
                            goto LABEL_192;
                          }

                          v79 = 1744830464;
                        }

                        else
                        {
                          if (v4 == 1753219072 || v4 == 1887436800)
                          {
                            goto LABEL_192;
                          }

                          v79 = 1820327936;
                        }

                        if (v4 != v79)
                        {
                          for (i = 2556; i < 0xA7C; i += 4)
                          {
                            if (!*(a1 + 167))
                            {
                              __dmb(2u);
                              *(*(a1 + 40) + i + 4) = 0;
                            }
                          }

LABEL_196:
                          if (v4 == 1619001344)
                          {
                            goto LABEL_222;
                          }

                          if (*(a1 + 167))
                          {
                            v81 = -7;
                          }

                          else
                          {
                            v82 = *(*(a1 + 40) + 52);
                            __dmb(1u);
                            v81 = v82 & 0xF9;
                          }

                          v83 = *(a1 + 57);
                          if ((v83 - 91) <= 0xA && ((1 << (v83 - 91)) & 0x603) != 0)
                          {
                            v81 &= 0xE9u;
                          }

                          if (!*(a1 + 167))
                          {
                            v85 = *(a1 + 239) != 0;
                            if ((v83 - 84) < 5)
                            {
                              v81 &= ~0x20u;
                            }

                            if ((v83 & 0xFE) == 0x64)
                            {
                              v81 &= 0x9Fu;
                            }

                            __dmb(2u);
                            *(*(a1 + 40) + 52) = v81 | v85;
                            if (!*(a1 + 167))
                            {
                              __dmb(2u);
                              *(*(a1 + 40) + 122) = 0;
                            }
                          }

                          if (v4 <= 1753219071)
                          {
                            if (v4 != 1686110208)
                            {
                              v86 = 1744830464;
LABEL_218:
                              if (v4 == v86)
                              {
                                goto LABEL_219;
                              }

LABEL_222:
                              if (*(a1 + 124))
                              {
                                *(a1 + 8) |= 2u;
                              }

                              if (*(a1 + 128))
                              {
                                *(a1 + 8) |= 1u;
                              }

                              goto LABEL_226;
                            }
                          }

                          else if (v4 != 1753219072 && v4 != 1887436800)
                          {
                            v86 = 1820327936;
                            goto LABEL_218;
                          }

LABEL_219:
                          if (!*(a1 + 167))
                          {
                            v87 = *(*(a1 + 40) + 4096);
                            __dmb(1u);
                            if (!*(a1 + 167))
                            {
                              __dmb(2u);
                              *(*(a1 + 40) + 4096) = v87 & 0xFFFD;
                            }
                          }

                          goto LABEL_222;
                        }

LABEL_192:
                        for (j = 2556; j < 0xAFC; j += 4)
                        {
                          if (!*(a1 + 167))
                          {
                            __dmb(2u);
                            *(*(a1 + 40) + j + 4) = 0;
                          }
                        }

                        goto LABEL_196;
                      }

                      __dmb(2u);
                      if (*(a1 + 167))
                      {
                        v70 = -1;
                      }

                      else
                      {
                        v71 = *(*(a1 + 40) + 211);
                        __dmb(1u);
                        v70 = v71 | 1;
                      }

                      *(*(a1 + 40) + 211) = v70;
                      v58 = *(a1 + 167);
                      v68 = *(a1 + 57) & 0xFE;
                    }

                    if (v68 == 86)
                    {
                      if (v58)
                      {
                        goto LABEL_173;
                      }
                    }

                    else
                    {
                      if (v58)
                      {
                        goto LABEL_173;
                      }

                      __dmb(2u);
                      v73 = *(a1 + 40);
                      *(v73 + 176) = 1883242496;
                      if (*(a1 + 167))
                      {
                        goto LABEL_173;
                      }

                      v74 = *(v73 + 176);
                      __dmb(1u);
                      if (*(a1 + 167))
                      {
                        goto LABEL_173;
                      }

                      __dmb(2u);
                      *(*(a1 + 40) + 176) = (v74 & 0xFFFD | 0xF0200000) + 0x200000;
                      if (*(a1 + 167))
                      {
                        goto LABEL_173;
                      }
                    }

                    __dmb(2u);
                    v72 = *(a1 + 40);
                    *(v72 + 176) = 1963851776;
                    if (!*(a1 + 167))
                    {
                      v69 = *(v72 + 176);
                      __dmb(1u);
LABEL_174:
                      v67 = *(a1 + 57);
                      goto LABEL_175;
                    }

LABEL_173:
                    LOWORD(v69) = -1;
                    goto LABEL_174;
                  }

                  if (*(a1 + 25))
                  {
                    v26 = v24 | 3;
                    goto LABEL_72;
                  }
                }

                v26 = v24 & 0xFFFC;
                goto LABEL_72;
              }

              re_ephy_write(a1, 4u, 53248);
              re_ephy_write(a1, 0xAu, 34387);
              re_ephy_write(a1, 0x23u, 43878);
              re_ephy_write(a1, 0x20u, 37973);
              re_ephy_write(a1, 0x21u, 39423);
              re_ephy_write(a1, 0x29u, 65028);
              re_ephy_write(a1, 0x44u, 53248);
              re_ephy_write(a1, 0x4Au, 34387);
              re_ephy_write(a1, 0x63u, 43878);
              re_ephy_write(a1, 0x60u, 37973);
              re_ephy_write(a1, 0x61u, 39423);
              re_ephy_write(a1, 0x69u, 65028);
              re_clear_set_ephy_bit(a1, 0x2Au, 28672, 0x3000u);
              re_clear_set_ephy_bit(a1, 0x19u, 64, 0);
              re_clear_set_ephy_bit(a1, 0x1Bu, 0, 0xE00u);
              re_clear_set_ephy_bit(a1, 0x1Bu, 28672, 0);
              re_ephy_write(a1, 2u, 24642);
              re_ephy_write(a1, 6u, 20);
              re_clear_set_ephy_bit(a1, 0x6Au, 28672, 0x3000u);
              re_clear_set_ephy_bit(a1, 0x59u, 64, 0);
              re_clear_set_ephy_bit(a1, 0x5Bu, 0, 0xE00u);
              re_clear_set_ephy_bit(a1, 0x5Bu, 28672, 0);
              re_ephy_write(a1, 0x42u, 24642);
              v20 = a1;
              v21 = 70;
              v22 = 20;
            }

            else if (v19 == 82)
            {
              re_ephy_write(a1, 6u, 31);
              re_ephy_write(a1, 0xAu, 46699);
              re_ephy_write(a1, 1u, 43090);
              re_ephy_write(a1, 0x24u, 8);
              re_ephy_write(a1, 0x2Fu, 24658);
              re_ephy_write(a1, 0xDu, 63254);
              re_ephy_write(a1, 0x20u, 54391);
              re_ephy_write(a1, 0x21u, 17527);
              re_ephy_write(a1, 0x22u, 19);
              re_ephy_write(a1, 0x23u, 47974);
              re_ephy_write(a1, 0xBu, 43273);
              re_ephy_write(a1, 0x29u, 65284);
              re_ephy_write(a1, 0x1Bu, 7840);
              re_ephy_write(a1, 0x46u, 31);
              re_ephy_write(a1, 0x4Au, 46699);
              re_ephy_write(a1, 0x41u, 43082);
              re_ephy_write(a1, 0x64u, 12);
              re_ephy_write(a1, 0x6Fu, 24650);
              re_ephy_write(a1, 0x4Du, 63254);
              re_ephy_write(a1, 0x60u, 54391);
              re_ephy_write(a1, 0x61u, 17527);
              re_ephy_write(a1, 0x62u, 19);
              re_ephy_write(a1, 0x63u, 47974);
              re_ephy_write(a1, 0x4Bu, 43273);
              re_ephy_write(a1, 0x69u, 65284);
              v20 = a1;
              v21 = 91;
              v22 = 7840;
            }

            else
            {
              if (v19 != 83)
              {
                if (v19 == 101)
                {
                  re_ephy_write(a1, 0x8088u, 100);
                  re_ephy_write(a1, 0x8488u, 100);
                  re_ephy_write(a1, 0x8888u, 100);
                  re_ephy_write(a1, 0x8C88u, 100);
                  re_ephy_write(a1, 0x8188u, 100);
                  re_ephy_write(a1, 0x8588u, 100);
                  re_ephy_write(a1, 0x8988u, 100);
                  re_ephy_write(a1, 0x8D88u, 100);
                  re_ephy_write(a1, 0x808Cu, 2480);
                  re_ephy_write(a1, 0x848Cu, 2480);
                  re_ephy_write(a1, 0x888Cu, 3984);
                  re_ephy_write(a1, 0x8C8Cu, 3984);
                  re_ephy_write(a1, 0x818Cu, 2480);
                  re_ephy_write(a1, 0x858Cu, 2480);
                  re_ephy_write(a1, 0x898Cu, 3984);
                  re_ephy_write(a1, 0x8D8Cu, 3984);
                  re_ephy_write(a1, 0x808Au, 2488);
                  re_ephy_write(a1, 0x848Au, 2488);
                  re_ephy_write(a1, 0x888Au, 3992);
                  re_ephy_write(a1, 0x8C8Au, 3992);
                  re_ephy_write(a1, 0x818Au, 2488);
                  re_ephy_write(a1, 0x858Au, 2488);
                  re_ephy_write(a1, 0x898Au, 3992);
                  re_ephy_write(a1, 0x8D8Au, 3992);
                  re_ephy_write(a1, 0x9020u, 128);
                  re_ephy_write(a1, 0x9420u, 128);
                  re_ephy_write(a1, 0x9820u, 128);
                  re_ephy_write(a1, 0x9C20u, 128);
                  re_ephy_write(a1, 0x901Eu, 400);
                  re_ephy_write(a1, 0x941Eu, 400);
                  re_ephy_write(a1, 0x981Eu, 320);
                  re_ephy_write(a1, 0x9C1Eu, 320);
                  re_ephy_write(a1, 0x901Cu, 400);
                  re_ephy_write(a1, 0x941Cu, 400);
                  re_ephy_write(a1, 0x981Cu, 320);
                  re_ephy_write(a1, 0x9C1Cu, 320);
                  if ((*(a1 + 57) & 0xFE) == 0x64)
                  {
                    _re_ephy_write(a1, 4094, 0);
                  }
                }

                goto LABEL_61;
              }

              re_ephy_write(a1, 0xBu, 43272);
              re_ephy_write(a1, 0x1Eu, 8427);
              re_ephy_write(a1, 0x22u, 35);
              re_ephy_write(a1, 2u, 24770);
              re_ephy_write(a1, 0x29u, 65280);
              re_ephy_write(a1, 0x4Bu, 43272);
              re_ephy_write(a1, 0x5Eu, 10475);
              re_ephy_write(a1, 0x62u, 35);
              re_ephy_write(a1, 0x42u, 24770);
              v20 = a1;
              v21 = 105;
              v22 = 65280;
            }

            re_ephy_write(v20, v21, v22);
            goto LABEL_61;
          }
        }
      }
    }
  }

LABEL_226:
  if (*(a1 + 152))
  {
    re_set_pfm_patch(a1, 0);
  }

  _re_enable_aspm_clkreq_lock(a1, 1);
  if (!*(a1 + 167))
  {
    __dmb(2u);
    if (*(a1 + 167))
    {
      v88 = 127;
    }

    else
    {
      v89 = *(*(a1 + 40) + 241);
      __dmb(1u);
      v88 = v89 & 0x7F;
    }

    *(*(a1 + 40) + 241) = v88;
  }

  re_clrwol(a1);
  if (v4 <= 1820327935)
  {
    if (v4 != 1744830464)
    {
      v90 = 1753219072;
      goto LABEL_238;
    }

LABEL_239:
    if (*(a1 + 167))
    {
      goto LABEL_243;
    }

    __dmb(2u);
    v91 = 1310740;
    goto LABEL_241;
  }

  if (v4 == 1887436800)
  {
    goto LABEL_239;
  }

  v90 = 1820327936;
LABEL_238:
  if (v4 == v90)
  {
    goto LABEL_239;
  }

  if (!*(a1 + 167))
  {
    __dmb(2u);
    v91 = 6488163;
LABEL_241:
    *(*(a1 + 40) + 2560) = v91;
  }

LABEL_243:
  v92 = *(a1 + 167);
  if ((*(a1 + 8) & 8) == 0)
  {
    if (!*(a1 + 167))
    {
      __dmb(2u);
      if (*(a1 + 167))
      {
        v93 = -12582913;
      }

      else
      {
        v94 = *(*(a1 + 40) + 68);
        __dmb(1u);
        v93 = v94 & 0xFF3FFFFF;
      }

      goto LABEL_253;
    }

LABEL_256:
    v99 = a1 + 20;
    *(a1 + 20) |= 0x8302u;
LABEL_257:
    v100 = -1;
    goto LABEL_258;
  }

  if (*(a1 + 167))
  {
    goto LABEL_256;
  }

  __dmb(2u);
  if (*(a1 + 167))
  {
    v93 = -1;
  }

  else
  {
    v95 = *(*(a1 + 40) + 68);
    __dmb(1u);
    v93 = v95 | 0x400000;
  }

LABEL_253:
  v96 = *(a1 + 40);
  *(v96 + 68) = v93;
  if (*(a1 + 167))
  {
    goto LABEL_256;
  }

  v97 = *(v96 + 224);
  __dmb(1u);
  if (*(a1 + 167))
  {
    goto LABEL_256;
  }

  v98 = (32 * (*(a1 + 8) & 1)) | v97 & 0xFFDF;
  __dmb(2u);
  *(*(a1 + 40) + 224) = v98;
  if (*(a1 + 167))
  {
    goto LABEL_256;
  }

  __dmb(2u);
  if (*(a1 + 167))
  {
    v119 = 63;
  }

  else
  {
    v121 = *(*(a1 + 40) + 80);
    __dmb(1u);
    v119 = v121 & 0x3F;
  }

  *(*(a1 + 40) + 80) = v119;
  v122 = *(a1 + 167);
  v99 = a1 + 20;
  *(a1 + 20) |= 0x8302u;
  if (v122)
  {
    goto LABEL_257;
  }

  v123 = *(*(a1 + 40) + 68);
  __dmb(1u);
  if (*(a1 + 167))
  {
    goto LABEL_257;
  }

  v124 = v123 & 0xFFFFFFC0 | 2;
  v125 = v123 | 6;
  if ((*(a1 + 20) & 0x8300) == 0)
  {
    v125 = v124;
  }

  v126 = ((*(a1 + 20) << 23) >> 31) & 0x31 | (8 * ((*(a1 + 20) & 0x102) != 0)) | v125 & 0xFFFFFFC6;
  __dmb(2u);
  v127 = *(a1 + 40);
  *(v127 + 68) = v126;
  if (*(a1 + 167))
  {
    goto LABEL_257;
  }

  v128 = *(v127 + 68);
  __dmb(1u);
  v100 = v128 | 4;
LABEL_258:
  if ((*(v99 + 1) & 3) != 0)
  {
    if (*(a1 + 167))
    {
      goto LABEL_268;
    }

    __dmb(2u);
    *(*(a1 + 40) + 68) = v100;
    if (*(a1 + 167))
    {
      goto LABEL_268;
    }

    __dmb(2u);
    *(*(a1 + 40) + 8) = -1;
    if (*(a1 + 167))
    {
      goto LABEL_268;
    }

    __dmb(2u);
    v101 = -1;
  }

  else
  {
    if (*(a1 + 167))
    {
      goto LABEL_268;
    }

    v102 = *(a1 + 120);
    __dmb(2u);
    *(*(a1 + 40) + 68) = v100;
    if (*(a1 + 167))
    {
      goto LABEL_268;
    }

    __dmb(2u);
    *(*(a1 + 40) + 8) = (v102 & 0x40000000) == 0;
    if (*(a1 + 167))
    {
      goto LABEL_268;
    }

    v101 = (v102 & 0x40000000u) >> 6;
    __dmb(2u);
  }

  v103 = *(a1 + 40);
  *(v103 + 12) = v101;
  if (!*(a1 + 167))
  {
    v120 = *(v103 + 5650);
    __dmb(1u);
    v104 = v120 & 0xFFF1;
    goto LABEL_269;
  }

LABEL_268:
  v104 = -15;
LABEL_269:
  platform_avb_enabled = re_get_platform_avb_enabled(a1);
  if (*(a1 + 167) || (!platform_avb_enabled ? (v106 = v104) : (v106 = v104 | 2), __dmb(2u), v107 = *(a1 + 40), *(v107 + 5650) = v106, *(a1 + 167)))
  {
    v108 = -2;
  }

  else
  {
    v117 = *(v107 + 4096);
    __dmb(1u);
    v108 = v117 & 0xFFFE;
  }

  v109 = re_get_platform_avb_enabled(a1);
  if (!*(a1 + 167))
  {
    __dmb(2u);
    *(*(a1 + 40) + 4096) = v108 | v109;
  }

  v110 = re_get_platform_avb_enabled(a1);
  if (!*(a1 + 167))
  {
    if (v110)
    {
      v111 = 45;
    }

    else
    {
      v111 = 12;
    }

    __dmb(2u);
    *(*(a1 + 40) + 55) = v111;
  }

  *(a1 + 16) = *(a1 + 16) & 0xFFFFFFFC | 1;
  IOLog("rl::%s(%d): Enabling Interrupts\n", "re_hw_start_unlock_8125", 5500);
  v112 = *(a1 + 167);
  if (!*(a1 + 239))
  {
    if (*(a1 + 167))
    {
      return;
    }

    __dmb(2u);
    v115 = 49343;
    v116 = 56;
    goto LABEL_300;
  }

  if (!*(a1 + 167))
  {
    __dmb(2u);
    if (*(a1 + 239))
    {
      v113 = *(a1 + 238) - 2;
      if (v113 >= 6)
      {
        IOLog("rl::%s(%d): invalid isr version \n", "re_get_default_imr_8125", 4906);
        v114 = 0;
      }

      else
      {
        v114 = dword_22588[v113];
      }
    }

    else
    {
      v114 = 49343;
    }

    *(*(a1 + 40) + 3340) = v114;
  }

  v118 = *(a1 + 57);
  if ((v118 - 100) < 2)
  {
    if (*(a1 + 167))
    {
      return;
    }

    __dmb(2u);
    v115 = 3;
    goto LABEL_299;
  }

  if (v118 == 88 && !*(a1 + 167))
  {
    __dmb(2u);
    v115 = 2;
LABEL_299:
    v116 = 3352;
LABEL_300:
    *(*(a1 + 40) + v116) = v115;
  }
}

uint64_t _re_enable_aspm_clkreq_lock(uint64_t result, int a2)
{
  v2 = *(result + 57) - 91;
  v3 = v2 > 0xA;
  v4 = (1 << v2) & 0x603;
  if (v3 || v4 == 0)
  {
    v9 = *(result + 167);
    if (a2)
    {
      if (*(result + 167))
      {
        return result;
      }

      __dmb(2u);
      if (*(result + 167))
      {
        v10 = -1;
      }

      else
      {
        v19 = *(*(result + 40) + 86);
        __dmb(1u);
        v10 = v19 | 1;
      }

      *(*(result + 40) + 86) = v10;
      if (*(result + 167))
      {
        return result;
      }

      v13 = result + 40;
      __dmb(2u);
      if (*(result + 167))
      {
        v14 = -1;
      }

      else
      {
        v21 = *(*v13 + 83);
        __dmb(1u);
        v14 = v21 | 0x80;
      }
    }

    else
    {
      if (*(result + 167))
      {
        return result;
      }

      __dmb(2u);
      if (*(result + 167))
      {
        v11 = -2;
      }

      else
      {
        v20 = *(*(result + 40) + 86);
        __dmb(1u);
        v11 = v20 & 0xFE;
      }

      *(*(result + 40) + 86) = v11;
      if (*(result + 167))
      {
        return result;
      }

      v13 = result + 40;
      __dmb(2u);
      if (*(result + 167))
      {
        v14 = 127;
      }

      else
      {
        v22 = *(*v13 + 83);
        __dmb(1u);
        v14 = v22 & 0x7F;
      }
    }

    v18 = 83;
    goto LABEL_31;
  }

  v6 = *(result + 167);
  if (a2)
  {
    if (!*(result + 167))
    {
      __dmb(2u);
      if (*(result + 167))
      {
        v7 = -1;
      }

      else
      {
        v12 = *(*(result + 40) + 52);
        __dmb(1u);
        v7 = v12 | 8;
      }

      *(*(result + 40) + 52) = v7;
      if (!*(result + 167))
      {
        v13 = result + 40;
        __dmb(2u);
        if (*(result + 167))
        {
          v14 = -1;
        }

        else
        {
          v16 = *(*v13 + 86);
          __dmb(1u);
          v14 = v16 | 1;
        }

LABEL_30:
        v18 = 86;
LABEL_31:
        *(*v13 + v18) = v14;
      }
    }
  }

  else if (!*(result + 167))
  {
    __dmb(2u);
    if (*(result + 167))
    {
      v8 = -9;
    }

    else
    {
      v15 = *(*(result + 40) + 52);
      __dmb(1u);
      v8 = v15 & 0xF7;
    }

    *(*(result + 40) + 52) = v8;
    if (!*(result + 167))
    {
      v13 = result + 40;
      __dmb(2u);
      if (*(result + 167))
      {
        v14 = -2;
      }

      else
      {
        v17 = *(*v13 + 86);
        __dmb(1u);
        v14 = v17 & 0xFE;
      }

      goto LABEL_30;
    }
  }

  return result;
}

void re_ephy_write(uint64_t a1, unsigned int a2, int a3)
{
  v4 = a2;
  if ((*(a1 + 57) & 0xFE) == 0x64)
  {
    _re_ephy_write(a1, 4094, a2 >> 12);
    v4 &= 0xFFFu;
  }

  _re_ephy_write(a1, v4, a3);
}

void re_clear_set_ephy_bit(uint64_t a1, unsigned int a2, __int16 a3, unsigned __int16 a4)
{
  if ((*(a1 + 57) & 0xFE) == 0x64)
  {
    _re_ephy_write(a1, 4094, 0);
  }

  if (!*(a1 + 167))
  {
    __dmb(2u);
    *(*(a1 + 40) + 128) = a2 << 16;
  }

  v8 = 4;
  while (1)
  {
    v9 = v8;
    IOSleep(1u);
    if (*(a1 + 167))
    {
      break;
    }

    v10 = *(*(a1 + 40) + 128);
    __dmb(1u);
    if ((v10 & 0x80000000) == 0)
    {
      v8 = v9 - 1;
      if (v9)
      {
        continue;
      }
    }

    goto LABEL_11;
  }

  LOWORD(v10) = -1;
LABEL_11:

  re_ephy_write(a1, a2, (v10 & ~a3) | a4);
}

uint64_t OOB_mutex_lock(uint64_t result)
{
  if (*(result + 171))
  {
    v1 = result;
    v2 = *(result + 57) - 80;
    v3 = v2 > 8;
    v4 = (1 << v2) & 0x133;
    if (!v3 && v4 != 0)
    {
      re_ocp_write(result, 276, 1u, 1);
      result = re_ocp_read(v1, 272, 1u);
      if (result)
      {
        v6 = 0;
        do
        {
          if (re_ocp_read(v1, 284, 1u))
          {
            re_ocp_write(v1, 276, 1u, 0);
            if (re_ocp_read(v1, 284, 1u))
            {
              v7 = 0;
              do
              {
                v8 = re_ocp_read(v1, 284, 1u);
                if (v7 > 0x7CF)
                {
                  break;
                }

                ++v7;
              }

              while (v8);
            }

            re_ocp_write(v1, 276, 1u, 1);
          }

          result = re_ocp_read(v1, 272, 1u);
          if (v6 > 0x7CF)
          {
            break;
          }

          ++v6;
        }

        while (result);
      }
    }
  }

  return result;
}

void OOB_mutex_unlock(uint64_t a1)
{
  if (*(a1 + 171))
  {
    v2 = *(a1 + 57) - 80;
    v3 = v2 > 8;
    v4 = (1 << v2) & 0x133;
    if (!v3 && v4 != 0)
    {
      re_ocp_write(a1, 284, 1u, 1);

      re_ocp_write(a1, 276, 1u, 0);
    }
  }
}

uint64_t re_set_pfm_patch(uint64_t result, int a2)
{
  if (*(result + 152))
  {
    v2 = result;
    if (a2)
    {
      re_clear_set_mac_ocp_bit(result, 54256, 0, 1);
      re_clear_set_mac_ocp_bit(v2, 54258, 0, 1);
      v3 = v2;
      v4 = 0;
      v5 = 64;
    }

    else
    {
      re_clear_set_mac_ocp_bit(result, 54256, 1, 0);
      re_clear_set_mac_ocp_bit(v2, 54258, 1, 0);
      v3 = v2;
      v4 = 64;
      v5 = 0;
    }

    return re_clear_set_mac_ocp_bit(v3, 59482, v4, v5);
  }

  return result;
}

uint64_t re_clrwol(uint64_t a1)
{
  v9 = 0;
  result = (*(**(a1 + 72) + 1440))(*(a1 + 72), 1, &v9);
  if (result)
  {
    if (!*(a1 + 167))
    {
      __dmb(2u);
      if (*(a1 + 167))
      {
        v3 = -1;
      }

      else
      {
        v4 = *(*(a1 + 40) + 80);
        __dmb(1u);
        v3 = v4 | 0xC0;
      }

      *(*(a1 + 40) + 80) = v3;
      if (!*(a1 + 167))
      {
        v5 = *(*(a1 + 40) + 84);
        __dmb(1u);
        if (!*(a1 + 167))
        {
          __dmb(2u);
          *(*(a1 + 40) + 84) = v5 & 0xEF;
        }
      }
    }

    result = re_disable_magic_packet(a1);
    if (!*(a1 + 167))
    {
      v6 = *(*(a1 + 40) + 86);
      __dmb(1u);
      if (!*(a1 + 167))
      {
        __dmb(2u);
        *(*(a1 + 40) + 86) = v6 & 0x8D;
        if (!*(a1 + 167))
        {
          __dmb(2u);
          if (*(a1 + 167))
          {
            v7 = 63;
          }

          else
          {
            v8 = *(*(a1 + 40) + 80);
            __dmb(1u);
            v7 = v8 & 0x3F;
          }

          *(*(a1 + 40) + 80) = v7;
        }
      }
    }
  }

  return result;
}

void re_reset(uint64_t a1)
{
  if (!*(a1 + 167))
  {
    __dmb(2u);
    if (*(a1 + 167))
    {
      v2 = -64;
    }

    else
    {
      v3 = *(*(a1 + 40) + 68);
      __dmb(1u);
      v2 = v3 & 0xFFFFFFC0;
    }

    *(*(a1 + 40) + 68) = v2;
  }

  IOSleep(2u);
  if (!*(a1 + 167))
  {
    __dmb(2u);
    *(*(a1 + 40) + 55) = 16;
  }

  v4 = 1000;
  while (1)
  {
    IODelay(0xAu);
    if (!*(a1 + 167))
    {
      v5 = *(*(a1 + 40) + 55);
      __dmb(1u);
      if ((v5 & 0x10) == 0)
      {
        break;
      }
    }

    if (!--v4)
    {
      IOLog("rl::%s(%d): reset never completed!\n", "re_reset", 5617);
      return;
    }
  }
}

void re_setwol(uint64_t a1)
{
  v2 = a1 + 8;
  if ((*(a1 + 11) & 4) == 0)
  {

    re_phy_power_down(a1);
    return;
  }

  v15 = 0;
  if (!(*(**(a1 + 72) + 1440))(*(a1 + 72), 1, &v15))
  {
    return;
  }

  if (!*(a1 + 167))
  {
    __dmb(2u);
    if (*(a1 + 167))
    {
      v3 = -1;
    }

    else
    {
      v4 = *(*(a1 + 40) + 80);
      __dmb(1u);
      v3 = v4 | 0xC0;
    }

    *(*(a1 + 40) + 80) = v3;
  }

  if ((*(v2 + 3) & 4) == 0)
  {
    re_disable_magic_packet(a1);
    goto LABEL_22;
  }

  v5 = *(a1 + 120);
  if (v5 < 0)
  {
    re_clear_set_mac_ocp_bit(a1, 49334, 0, 1);
    goto LABEL_22;
  }

  if ((v5 & 0x20000000) != 0)
  {
    v7 = re_eri_read_with_oob_base_address(a1, 220, 4, 0, 0);
    re_eri_write_with_oob_base_address(a1, 220, 4, v7 | 0x10000, 0, 0);
    goto LABEL_22;
  }

  if (!*(a1 + 167))
  {
    __dmb(2u);
    if (*(a1 + 167))
    {
      v6 = -1;
    }

    else
    {
      v8 = *(*(a1 + 40) + 84);
      __dmb(1u);
      v6 = v8 | 0x20;
    }

    *(*(a1 + 40) + 84) = v6;
LABEL_22:
    if (!*(a1 + 167))
    {
      v9 = *(*(a1 + 40) + 86);
      __dmb(1u);
      if (!*(a1 + 167))
      {
        v10 = (*(a1 + 8) >> 25) & 2 | v9 & 0x8D;
        __dmb(2u);
        *(*(a1 + 40) + 86) = v10;
        if (!*(a1 + 167))
        {
          __dmb(2u);
          if (*(a1 + 167))
          {
            v11 = 63;
          }

          else
          {
            v12 = *(*(a1 + 40) + 80);
            __dmb(1u);
            v11 = v12 & 0x3F;
          }

          *(*(a1 + 40) + 80) = v11;
        }
      }
    }
  }

  if ((*(v2 + 3) & 4) != 0)
  {
    if (!*(a1 + 167))
    {
      v13 = *(*(a1 + 40) + 68);
      __dmb(1u);
      if (!*(a1 + 167))
      {
        __dmb(2u);
        *(*(a1 + 40) + 68) = v13 & 0xFFFFFFC0 | 0xE;
        if (!*(a1 + 167))
        {
          __dmb(2u);
          *(*(a1 + 40) + 8) = -1;
          if (!*(a1 + 167))
          {
            __dmb(2u);
            *(*(a1 + 40) + 12) = -1;
          }
        }
      }
    }

    v14 = re_set_wol_linkspeed(a1);
    if (*(a1 + 152))
    {
      re_set_pfm_patch(a1, !v14);
    }
  }
}