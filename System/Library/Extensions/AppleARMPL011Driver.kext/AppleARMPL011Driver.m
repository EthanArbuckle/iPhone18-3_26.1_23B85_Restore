OSMetaClass *AppleARMPL011Driver::MetaClass::MetaClass(OSMetaClass *this)
{
  result = OSMetaClass::OSMetaClass(this, "AppleARMPL011Driver", &AppleMMIOSerial::gMetaClass, 0xD0u);
  result->__vftable = off_C6D8;
  return result;
}

{
  result = OSMetaClass::OSMetaClass(this, "AppleARMPL011Driver", &AppleMMIOSerial::gMetaClass, 0xD0u);
  result->__vftable = off_C6D8;
  return result;
}

void AppleARMPL011Driver::MetaClass::~MetaClass(OSMetaClass *this)
{
  OSMetaClass::~OSMetaClass(this);
}

{
  OSMetaClass::~OSMetaClass(this);
}

void AppleARMPL011Driver::AppleARMPL011Driver(AppleARMPL011Driver *this, const OSMetaClass *a2)
{
  AppleMMIOSerial::AppleMMIOSerial(this, a2);
  *v2 = off_C0A8;
  v2[22] = 0;
}

{
  AppleMMIOSerial::AppleMMIOSerial(this, a2);
  *v2 = off_C0A8;
  v2[22] = 0;
}

void AppleARMPL011Driver::~AppleARMPL011Driver(AppleARMPL011Driver *this)
{
  v2 = *(this + 22);
  if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  *(this + 22) = 0;

  AppleMMIOSerial::~AppleMMIOSerial(this);
}

{
  v2 = *(this + 22);
  if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  *(this + 22) = 0;

  AppleMMIOSerial::~AppleMMIOSerial(this);
}

{
  AppleARMPL011Driver::~AppleARMPL011Driver(this);

  _OSObject_typed_operator_delete(&AppleARMPL011Driver_ktv, this, 208);
}

AppleMMIOSerial *AppleARMPL011Driver::MetaClass::alloc(AppleARMPL011Driver::MetaClass *this)
{
  v1 = OSObject_typed_operator_new();
  AppleMMIOSerial::AppleMMIOSerial(v1, &AppleARMPL011Driver::gMetaClass);
  *v2 = off_C0A8;
  v2[22] = 0;
  OSMetaClass::instanceConstructed(&AppleARMPL011Driver::gMetaClass);
  return v1;
}

void AppleARMPL011Driver::AppleARMPL011Driver(AppleARMPL011Driver *this)
{
  AppleMMIOSerial::AppleMMIOSerial(this, &AppleARMPL011Driver::gMetaClass);
  *v1 = off_C0A8;
  v1[22] = 0;
  OSMetaClass::instanceConstructed(&AppleARMPL011Driver::gMetaClass);
}

{
  AppleMMIOSerial::AppleMMIOSerial(this, &AppleARMPL011Driver::gMetaClass);
  *v1 = off_C0A8;
  v1[22] = 0;
  OSMetaClass::instanceConstructed(&AppleARMPL011Driver::gMetaClass);
}

OSMetaClassBase *AppleARMPL011Driver::start(OSObject *this, IOService *anObject)
{
  result = OSMetaClassBase::safeMetaCast(anObject, AppleARMIODevice::metaClass);
  *&this[11].retainCount = result;
  if (result)
  {
    if (!this[9].__vftable)
    {
      this[9].__vftable = IOWorkLoop::workLoop();
    }

    WORD2(this[12].__vftable) = 0;
    v5 = IOInterruptEventSource::interruptEventSource(this, AppleARMPL011Driver::interruptAction, anObject, 0);
    v6 = this[11].__vftable;
    if (v6)
    {
      (*(v6->~OSObject + 5))(v6);
    }

    this[11].__vftable = v5;
    v7 = (this->__vftable[7].serialize)(this);
    v8 = this[11].__vftable;
    (*(*v7 + 160))();
    if (result)
    {
      v9 = this[10].__vftable;
      *&this[12].retainCount = v9;
      if (!v9)
      {
        AppleARMPL011Driver::start();
      }

      LODWORD(v9->serialize) = 768;
      HIDWORD(v9->release_0) = 112;
      HIDWORD(v9->isEqualTo) = 127;
      HIDWORD(v9->serialize) = 0;
      result = (&dword_0 + 1);
      LODWORD(v9->serialize) = 769;
    }
  }

  return result;
}

uint64_t AppleARMPL011Driver::interruptAction(AppleARMPL011Driver *this, IOInterruptEventSource *a2)
{
  if (*(this + 197))
  {
    v3 = *(*(this + 25) + 64);
    if ((v3 & 0x20) != 0)
    {
      AppleSimpleUARTSync::txDataInterrupt(*(this + 17));
    }

    if ((v3 & 0x50) != 0)
    {
      AppleSimpleUARTSync::rxDataInterrupt(*(this + 17), 0);
    }
  }

  return 0;
}

uint64_t AppleARMPL011Driver::hwGetModemStatus(uint64_t this, BOOL *a2, BOOL *a3, BOOL *a4, BOOL *a5)
{
  if (*(this + 197))
  {
    v5 = *(*(this + 200) + 24);
    *a2 = v5 & 1;
    *a3 = (v5 & 2) != 0;
    *a5 = (v5 & 4) != 0;
    *a4 = BYTE1(v5) & 1;
  }

  return this;
}

uint64_t AppleARMPL011Driver::hwEnableInterrupts(uint64_t this, int a2, int a3, int a4)
{
  if (*(this + 197))
  {
    v4 = this;
    if (a3)
    {
      v5 = 32;
    }

    else
    {
      v5 = 0;
    }

    if (a2)
    {
      v5 |= 0x50u;
    }

    if (a4)
    {
      v6 = v5 | 4;
    }

    else
    {
      v6 = v5;
    }

    if (*(this + 192) != v6)
    {
      *(*(this + 200) + 56) = v6;
      v7 = **(this + 176);
      if (v6)
      {
        this = (*(v7 + 176))();
      }

      else
      {
        this = (*(v7 + 184))();
      }
    }

    *(v4 + 192) = v6;
  }

  return this;
}

uint64_t AppleARMPL011Driver::hwGetRxData(AppleARMPL011Driver *this)
{
  if (*(this + 197))
  {
    return **(this + 25);
  }

  else
  {
    LOBYTE(v1) = 0;
  }

  return v1;
}

uint64_t AppleARMPL011Driver::hwGetRxFIFOLevel(AppleARMPL011Driver *this)
{
  if ((*(this + 197) & 1) == 0 || (*(*(this + 25) + 24) & 0x10) != 0)
  {
    return 0;
  }

  else
  {
    return (*(*this + 1344))(this);
  }
}

uint64_t AppleARMPL011Driver::hwGetTxFIFOLevel(AppleARMPL011Driver *this)
{
  if ((*(this + 197) & 1) != 0 && (*(*(this + 25) + 24) & 0x20) != 0)
  {
    return (*(*this + 1344))(this);
  }

  else
  {
    return 0;
  }
}

uint64_t AppleARMPL011Driver::hwSendTxData(uint64_t this, int a2)
{
  if (*(this + 197))
  {
    **(this + 200) = a2;
  }

  return this;
}

uint64_t AppleARMPL011Driver::deferredAction(uint64_t this, IOInterruptEventSource *a2)
{
  if (*(this + 197))
  {
    return AppleSimpleUARTSync::txDataInterrupt(*(this + 136));
  }

  return this;
}

uint64_t AppleARMPL011Driver::hwResetUART(uint64_t this)
{
  if (*(this + 197))
  {
    v1 = *(this + 200);
    v1[12] = 768;
    v1[11] = 112;
    v1[17] = 127;
    v1[13] = 0;
    v1[12] = 769;
  }

  return this;
}

uint64_t AppleARMPL011Driver::hwProgramMCR(uint64_t this, BOOL a2, int a3)
{
  if (*(this + 197))
  {
    *(this + 196) = a3;
    v3 = *(this + 200);
    v4 = *(v3 + 48);
    v5 = v4 & 0xF7FF;
    if (a3)
    {
      v5 = v4 & 0xF7FF | 0x800;
    }

    v6 = v5 | v4 & 0xFFFF0000;
    if (v4 != v6)
    {
      *(v3 + 48) = v6;
    }
  }

  return this;
}

uint64_t AppleARMPL011Driver::programRTS(uint64_t this)
{
  v1 = *(this + 200);
  v2 = *(v1 + 48);
  if (*(this + 196))
  {
    v3 = *(v1 + 48) & 0xF7FF | 0x800;
  }

  else
  {
    v3 = *(v1 + 48) & 0xF7FF;
  }

  v4 = v3 | v2 & 0xFFFF0000;
  if (v2 != v4)
  {
    *(v1 + 48) = v4;
  }

  return this;
}

uint64_t AppleARMPL011Driver::hwEnableUART(AppleARMPL011Driver *this, uint64_t a2)
{
  v2 = a2;
  (*(**(this + 23) + 1384))(*(this + 23), a2, 0);
  (*(**(this + 23) + 1392))();
  *(this + 197) = v2;
  return 0;
}

uint64_t AppleARMPL011Driver::hwSetDMAMode(AppleARMPL011Driver *this)
{
  if (*(this + 197))
  {
    return 3758097095;
  }

  else
  {
    return 3758097088;
  }
}

OSMetaClass *_GLOBAL__sub_I_AppleARMPL011Driver_cpp()
{
  result = OSMetaClass::OSMetaClass(&AppleARMPL011Driver::gMetaClass, "AppleARMPL011Driver", &AppleMMIOSerial::gMetaClass, 0xD0u);
  result->__vftable = off_C6D8;
  return result;
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