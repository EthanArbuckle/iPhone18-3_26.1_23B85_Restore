OSMetaClass *ApplePMUFirmwareDriverUserClient::MetaClass::MetaClass(OSMetaClass *this)
{
  result = OSMetaClass::OSMetaClass(this, "ApplePMUFirmwareDriverUserClient", &IOUserClient2022::gMetaClass, 0xE0u);
  result->__vftable = off_C750;
  return result;
}

{
  result = OSMetaClass::OSMetaClass(this, "ApplePMUFirmwareDriverUserClient", &IOUserClient2022::gMetaClass, 0xE0u);
  result->__vftable = off_C750;
  return result;
}

void ApplePMUFirmwareDriverUserClient::MetaClass::~MetaClass(OSMetaClass *this)
{
  OSMetaClass::~OSMetaClass(this);
}

{
  OSMetaClass::~OSMetaClass(this);
}

void ApplePMUFirmwareDriverUserClient::ApplePMUFirmwareDriverUserClient(ApplePMUFirmwareDriverUserClient *this, const OSMetaClass *a2)
{
  IOUserClient2022::IOUserClient2022(this, a2);
  *v2 = off_C160;
}

{
  IOUserClient2022::IOUserClient2022(this, a2);
  *v2 = off_C160;
}

void ApplePMUFirmwareDriverUserClient::~ApplePMUFirmwareDriverUserClient(ApplePMUFirmwareDriverUserClient *this)
{
  IOUserClient2022::~IOUserClient2022(this);
}

{
  IOUserClient2022::~IOUserClient2022(this);
}

{
  IOUserClient2022::~IOUserClient2022(this);

  _OSObject_typed_operator_delete(&ApplePMUFirmwareDriverUserClient_ktv, this, 224);
}

IOUserClient2022 *ApplePMUFirmwareDriverUserClient::MetaClass::alloc(ApplePMUFirmwareDriverUserClient::MetaClass *this)
{
  v1 = OSObject_typed_operator_new();
  IOUserClient2022::IOUserClient2022(v1, &ApplePMUFirmwareDriverUserClient::gMetaClass);
  *v2 = off_C160;
  OSMetaClass::instanceConstructed(&ApplePMUFirmwareDriverUserClient::gMetaClass);
  return v1;
}

void ApplePMUFirmwareDriverUserClient::ApplePMUFirmwareDriverUserClient(ApplePMUFirmwareDriverUserClient *this)
{
  IOUserClient2022::IOUserClient2022(this, &ApplePMUFirmwareDriverUserClient::gMetaClass);
  *v1 = off_C160;
  OSMetaClass::instanceConstructed(&ApplePMUFirmwareDriverUserClient::gMetaClass);
}

{
  IOUserClient2022::IOUserClient2022(this, &ApplePMUFirmwareDriverUserClient::gMetaClass);
  *v1 = off_C160;
  OSMetaClass::instanceConstructed(&ApplePMUFirmwareDriverUserClient::gMetaClass);
}

uint64_t ApplePMUFirmwareDriverUserClient::mailboxTransaction(ApplePMUFirmwareDriverUserClient *this, void *a2, IOExternalMethodArguments *a3)
{
  v11 = 0;
  v10 = 0;
  scalarInput = a3->scalarInput;
  v6 = *scalarInput;
  v5 = scalarInput[1];
  v12 = v6;
  v13 = v5;
  result = ApplePMUFirmwareDriver::mailboxTransaction(*(this + 27), &v12, &v10);
  scalarOutput = a3->scalarOutput;
  v9 = v11;
  *scalarOutput = v10;
  scalarOutput[1] = v9;
  return result;
}

OSMetaClass *_GLOBAL__sub_I_ApplePMUFirmwareDriverUserClient_cpp()
{
  result = OSMetaClass::OSMetaClass(&ApplePMUFirmwareDriverUserClient::gMetaClass, "ApplePMUFirmwareDriverUserClient", &IOUserClient2022::gMetaClass, 0xE0u);
  result->__vftable = off_C750;
  return result;
}

OSMetaClass *ApplePMUFirmwareDriver::MetaClass::MetaClass(OSMetaClass *this)
{
  result = OSMetaClass::OSMetaClass(this, "ApplePMUFirmwareDriver", &IOService::gMetaClass, 0xD0u);
  result->__vftable = off_CD40;
  return result;
}

{
  result = OSMetaClass::OSMetaClass(this, "ApplePMUFirmwareDriver", &IOService::gMetaClass, 0xD0u);
  result->__vftable = off_CD40;
  return result;
}

void ApplePMUFirmwareDriver::MetaClass::~MetaClass(OSMetaClass *this)
{
  OSMetaClass::~OSMetaClass(this);
}

{
  OSMetaClass::~OSMetaClass(this);
}

void ApplePMUFirmwareDriver::ApplePMUFirmwareDriver(ApplePMUFirmwareDriver *this, const OSMetaClass *a2)
{
  IOService::IOService(this, a2)->__vftable = off_C7E8;
}

{
  IOService::IOService(this, a2)->__vftable = off_C7E8;
}

void ApplePMUFirmwareDriver::~ApplePMUFirmwareDriver(IOService *this)
{
  IOService::~IOService(this);
}

{
  IOService::~IOService(this);
}

{
  IOService::~IOService(this);

  _OSObject_typed_operator_delete(&ApplePMUFirmwareDriver_ktv, this, 208);
}

IOService *ApplePMUFirmwareDriver::MetaClass::alloc(ApplePMUFirmwareDriver::MetaClass *this)
{
  v1 = OSObject_typed_operator_new();
  IOService::IOService(v1, &ApplePMUFirmwareDriver::gMetaClass)->__vftable = off_C7E8;
  OSMetaClass::instanceConstructed(&ApplePMUFirmwareDriver::gMetaClass);
  return v1;
}

void ApplePMUFirmwareDriver::ApplePMUFirmwareDriver(ApplePMUFirmwareDriver *this)
{
  IOService::IOService(this, &ApplePMUFirmwareDriver::gMetaClass)->__vftable = off_C7E8;
  OSMetaClass::instanceConstructed(&ApplePMUFirmwareDriver::gMetaClass);
}

{
  IOService::IOService(this, &ApplePMUFirmwareDriver::gMetaClass)->__vftable = off_C7E8;
  OSMetaClass::instanceConstructed(&ApplePMUFirmwareDriver::gMetaClass);
}

uint64_t ApplePMUFirmwareDriver::start(uint64_t this, IOService *a2)
{
  v4 = (a2->getName)(a2, 0);
  *(this + 144) = OSString::withCString(v4);
  v5 = (this + 136);
  *(this + 136) = 3;
  PE_parse_boot_argn("pmu-fw-debug", (this + 136), 4);
  v6 = OSMetaClassBase::safeMetaCast(a2, AppleARMSPMIDevice::metaClass);
  *(this + 152) = v6;
  if (!v6)
  {
    ApplePMUFirmwareDriver::start((this + 136), (this + 144), this, &v40);
    return v40;
  }

  {
    ApplePMUFirmwareDriver::start((this + 136), (this + 144), this, &v38);
    return v38;
  }

  v7 = (a2->getProperty_1)(a2, "has-fw");
  v8 = OSData::metaClass;
  v9 = OSMetaClassBase::safeMetaCast(v7, OSData::metaClass);
  if (!v9)
  {
    if ((*v5 & 0x80) != 0)
    {
      v32 = "(%s) %s::%s: failed to find property with key %s\n";
LABEL_34:
      ApplePMUFirmwareDriver::start((this + 144), this, v32);
    }

LABEL_35:
    ApplePMUFirmwareDriver::start((this + 136), (this + 144), this, &v39);
    return v39;
  }

  v10 = (v9->__vftable[2].release)(v9, 0, 4);
  if (!v10)
  {
    if ((*v5 & 0x80) != 0)
    {
      v32 = "(%s) %s::%s: failed to get data from key %s\n";
      goto LABEL_34;
    }

    goto LABEL_35;
  }

  v11 = *v10;
  if ((*v5 & 0x80) != 0)
  {
    v12 = (*(**(this + 144) + 168))(*(this + 144));
    v13 = (*(*this + 56))(this);
    ClassName = OSMetaClass::getClassName(v13);
    IOLog("(%s) %s::%s: [%s] = 0x%x\n", v12, ClassName, "getDTProperty", "has-fw", v11);
  }

  if (!v11)
  {
    goto LABEL_35;
  }

  v15 = (a2->getName)(a2, 0);
  if (((*(*this + 208))(this, "PMUName", v15) & 1) == 0)
  {
    if ((*v5 & 2) != 0)
    {
      (*(**(this + 144) + 168))(*(this + 144));
      v33 = (*(*this + 56))(this);
      OSMetaClass::getClassName(v33);
      IOLog("(%s) %s::%s: setProperty failed\n");
    }

    return 0;
  }

  v16 = IOWorkLoop::workLoop();
  *(this + 160) = v16;
  if (!v16)
  {
    if ((*v5 & 2) != 0)
    {
      (*(**(this + 144) + 168))(*(this + 144));
      v34 = (*(*this + 56))(this);
      OSMetaClass::getClassName(v34);
      IOLog("(%s) %s::%s: failed to create IOWorkLoop\n");
    }

    return 0;
  }

  v17 = IOCommandGate::commandGate(this, 0);
  *(this + 168) = v17;
  if (!v17)
  {
    if ((*v5 & 2) != 0)
    {
      (*(**(this + 144) + 168))(*(this + 144));
      v35 = (*(*this + 56))(this);
      OSMetaClass::getClassName(v35);
      IOLog("(%s) %s::%s: failed to create IOCommandGate\n");
    }

    return 0;
  }

  if ((*(**(this + 160) + 160))(*(this + 160), v17))
  {
    if ((*v5 & 2) != 0)
    {
LABEL_45:
      (*(**(this + 144) + 168))(*(this + 144));
      v36 = (*(*this + 56))(this);
      OSMetaClass::getClassName(v36);
      IOLog("(%s) %s::%s: failed to add event source to work loop, rc = 0x%x\n");
    }

    return 0;
  }

  if ((ApplePMUFirmwareDriver::getDTProperty<unsigned short>(this, a2, "fw-host-irq-address", (this + 176)) & 1) == 0)
  {
LABEL_27:
    if ((*v5 & 2) != 0)
    {
      (*(**(this + 144) + 168))(*(this + 144));
      v31 = (*(*this + 56))(this);
      OSMetaClass::getClassName(v31);
      IOLog("(%s) %s::%s: failed to find property %s\n");
    }

    return 0;
  }

  if (ApplePMUFirmwareDriver::getDTProperty<unsigned short>(this, a2, "fw-mcom-address", (this + 180)))
  {
    *(this + 178) = 1;
    *(this + 179) = 0;
    *(this + 184) = IOLockAlloc();
    v18 = (a2->getProperty_1)(a2, "fw-mcom-int-index");
    v19 = OSMetaClassBase::safeMetaCast(v18, v8);
    if (v19)
    {
      v20 = (v19->__vftable[2].release)(v19, 0, 4);
      if (v20)
      {
        v21 = *v20;
        *(this + 192) = *v20;
        if ((*(this + 136) & 0x80) != 0)
        {
          v22 = (*(**(this + 144) + 168))(*(this + 144));
          v23 = (*(*this + 56))(this);
          v24 = OSMetaClass::getClassName(v23);
          IOLog("(%s) %s::%s: [%s] = 0x%x\n", v22, v24, "getDTProperty", "fw-mcom-int-index", *(this + 192));
          v21 = *(this + 192);
        }

        v25 = IOInterruptEventSource::interruptEventSource(this, ApplePMUFirmwareDriver::handleMailboxInterrupt, a2, v21);
        *(this + 200) = v25;
        if (!v25)
        {
          if ((*v5 & 2) != 0)
          {
            (*(**(this + 144) + 168))(*(this + 144));
            v37 = (*(*this + 56))(this);
            OSMetaClass::getClassName(v37);
            IOLog("(%s) %s::%s: failed to create IOInterruptEventSource\n");
          }

          return 0;
        }

        if (!(*(**(this + 160) + 160))(*(this + 160), v25))
        {
          (*(**(this + 200) + 176))(*(this + 200));
          goto LABEL_21;
        }

        if ((*v5 & 2) != 0)
        {
          goto LABEL_45;
        }

        return 0;
      }

      if ((*v5 & 0x80) == 0)
      {
        goto LABEL_27;
      }

      v30 = "(%s) %s::%s: failed to get data from key %s\n";
    }

    else
    {
      if ((*v5 & 0x80) == 0)
      {
        goto LABEL_27;
      }

      v30 = "(%s) %s::%s: failed to find property with key %s\n";
    }

    ApplePMUFirmwareDriver::start((this + 144), this, this & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000, v30);
    goto LABEL_27;
  }

LABEL_21:
  (*(*this + 672))(this, 0);
  if ((*(this + 136) & 8) != 0)
  {
    v26 = (*(**(this + 144) + 168))(*(this + 144));
    v27 = (*(*this + 56))(this);
    v28 = OSMetaClass::getClassName(v27);
    IOLog("(%s) %s::%s: started\n", v26, v28, "start");
  }

  return 1;
}

uint64_t ApplePMUFirmwareDriver::getDTProperty<unsigned short>(uint64_t a1, uint64_t a2, const char *a3, unsigned __int16 *a4)
{
  v7 = (*(*a2 + 280))(a2, a3);
  v8 = OSMetaClassBase::safeMetaCast(v7, OSData::metaClass);
  if (!v8)
  {
    if ((*(a1 + 136) & 0x80) != 0)
    {
      (*(**(a1 + 144) + 168))(*(a1 + 144));
      v14 = (*(*a1 + 56))(a1);
      OSMetaClass::getClassName(v14);
      IOLog("(%s) %s::%s: failed to find property with key %s\n");
    }

    return 0;
  }

  v9 = (v8->__vftable[2].release)(v8, 0, 2);
  if (!v9)
  {
    if ((*(a1 + 136) & 0x80) != 0)
    {
      (*(**(a1 + 144) + 168))(*(a1 + 144));
      v15 = (*(*a1 + 56))(a1);
      OSMetaClass::getClassName(v15);
      IOLog("(%s) %s::%s: failed to get data from key %s\n");
    }

    return 0;
  }

  *a4 = *v9;
  if ((*(a1 + 136) & 0x80) != 0)
  {
    v10 = (*(**(a1 + 144) + 168))(*(a1 + 144));
    v11 = (*(*a1 + 56))(a1);
    ClassName = OSMetaClass::getClassName(v11);
    IOLog("(%s) %s::%s: [%s] = 0x%x\n", v10, ClassName, "getDTProperty", a3, *a4);
  }

  return 1;
}

void ApplePMUFirmwareDriver::handleMailboxInterrupt(ApplePMUFirmwareDriver *this, IOInterruptEventSource *a2, int a3)
{
  if ((*(this + 136) & 0x80) != 0)
  {
    v6 = (*(**(this + 18) + 168))(*(this + 18));
    v7 = (*(*this + 56))(this);
    ClassName = OSMetaClass::getClassName(v7);
    IOLog("(%s) %s::%s: source=%p, index=%d, _mailboxSleeping=%d\n", v6, ClassName, "handleMailboxInterrupt", a2, a3, *(this + 179) & 1);
  }

  if (*(this + 179))
  {
    v9 = *(**(this + 21) + 264);

    v9();
  }
}

uint64_t ApplePMUFirmwareDriver::free(ApplePMUFirmwareDriver *this)
{
  v2 = *(this + 23);
  if (v2)
  {
    IOLockFree(v2);
    *(this + 23) = 0;
  }

  v3 = *(this + 25);
  if (v3)
  {
    (*(*v3 + 40))(v3);
  }

  *(this + 25) = 0;
  v4 = *(this + 21);
  if (v4)
  {
    (*(*v4 + 40))(v4);
  }

  *(this + 21) = 0;
  v5 = *(this + 20);
  if (v5)
  {
    (*(*v5 + 40))(v5);
  }

  *(this + 20) = 0;

  return (free)(this);
}

uint64_t ApplePMUFirmwareDriver::mailboxTransaction(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 178);
  v5 = *(a1 + 136);
  if (v4)
  {
    if ((v5 & 0x80) != 0)
    {
      v8 = (*(**(a1 + 144) + 168))(*(a1 + 144));
      v9 = (*(*a1 + 56))(a1);
      ClassName = OSMetaClass::getClassName(v9);
      IOLog("(%s) %s::%s: transmit event=%d, data=0x%x\n", v8, ClassName, "mailboxTransaction", *(a2 + 4), *a2);
    }

    IOLockLock(*(a1 + 184));
    v11 = *(a1 + 168);
    action[0] = _NSConcreteStackBlock;
    action[1] = 0x40000000;
    action[2] = ___ZN22ApplePMUFirmwareDriver18mailboxTransactionEP20PMUFWDMailboxMessageS1__block_invoke;
    action[3] = &__block_descriptor_tmp;
    action[4] = a1;
    action[5] = a2;
    action[6] = a3;
    v12 = IOCommandGate::runActionBlock(v11, action);
    IOLockUnlock(*(a1 + 184));
    if ((*(a1 + 136) & 0x80) != 0)
    {
      v13 = (*(**(a1 + 144) + 168))(*(a1 + 144));
      v14 = (*(*a1 + 56))(a1);
      v15 = OSMetaClass::getClassName(v14);
      IOLog("(%s) %s::%s: rc=0x%x, receive event=%d, data=0x%x\n", v13, v15, "mailboxTransaction", v12, *(a3 + 4), *a3);
    }
  }

  else
  {
    ApplePMUFirmwareDriver::mailboxTransaction(v5, a1, &v18);
    return v18;
  }

  return v12;
}

uint64_t ApplePMUFirmwareDriver::mailboxTransactionGated(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a2 + 4) - 16 <= 0xFFFFFFF0)
  {
    ApplePMUFirmwareDriver::mailboxTransactionGated(a1, (a2 + 4), &v22);
    return v22;
  }

  v21 = 15;
  if ((*(**(a1 + 152) + 1424))(*(a1 + 152), (*(a1 + 180) + 10), &v21, 1, 0))
  {
    ApplePMUFirmwareDriver::mailboxTransactionGated(a1);
    return v22;
  }

  if ((*(**(a1 + 152) + 1424))(*(a1 + 152), *(a1 + 180), a2, 5, 0))
  {
    ApplePMUFirmwareDriver::mailboxTransactionGated(a1);
    return v22;
  }

  v21 = 1;
  if ((*(**(a1 + 152) + 1424))(*(a1 + 152), (*(a1 + 180) + 5), &v21, 1, 0))
  {
    ApplePMUFirmwareDriver::mailboxTransactionGated(a1);
    return v22;
  }

  result = 0;
  clock_interval_to_deadline(1u, 0x3B9ACA00u, &result);
  if ((*(a1 + 136) & 0x80) != 0)
  {
    v6 = (*(**(a1 + 144) + 168))(*(a1 + 144));
    v7 = (*(*a1 + 56))(a1);
    ClassName = OSMetaClass::getClassName(v7);
    IOLog("(%s) %s::%s: going to sleep\n", v6, ClassName, "mailboxTransactionGated");
  }

  v9 = (a1 + 136);
  *(a1 + 179) = 1;
  v10 = (*(**(a1 + 168) + 272))(*(a1 + 168), a1 + 179, result, 2);
  *(a1 + 179) = 0;
  if ((*(a1 + 136) & 0x80) != 0)
  {
    v11 = (*(**(a1 + 144) + 168))(*(a1 + 144));
    v12 = (*(*a1 + 56))(a1);
    v13 = OSMetaClass::getClassName(v12);
    IOLog("(%s) %s::%s: after sleep\n", v11, v13, "mailboxTransactionGated");
  }

  if (v10 == 1)
  {
    v14 = 3758097110;
    if ((*v9 & 2) != 0)
    {
      (*(**(a1 + 144) + 168))(*(a1 + 144));
      v15 = (*(*a1 + 56))(a1);
      OSMetaClass::getClassName(v15);
      IOLog("(%s) %s::%s: timed out waiting for response\n");
    }

    return v14;
  }

  if ((v10 & 0xFFFFFFFE) != 2)
  {
    v17 = (*(**(a1 + 152) + 1432))(*(a1 + 152), (*(a1 + 180) + 6), a3, 5, 0);
    if (v17)
    {
      ApplePMUFirmwareDriver::mailboxTransactionGated((a1 + 136), a1, v17, &v22);
    }

    else
    {
      v21 = 15;
      v18 = (*(**(a1 + 152) + 1432))(*(a1 + 152), (*(a1 + 180) + 10), &v21, 1, 0);
      v14 = 0;
      if (!v18)
      {
        return v14;
      }

      ApplePMUFirmwareDriver::mailboxTransactionGated((a1 + 136), a1, v18, &v22);
    }

    return v22;
  }

  v14 = 3758097131;
  if ((*v9 & 2) != 0)
  {
    (*(**(a1 + 144) + 168))(*(a1 + 144));
    v16 = (*(*a1 + 56))(a1);
    OSMetaClass::getClassName(v16);
    IOLog("(%s) %s::%s: interrupted while waiting for response\n");
  }

  return v14;
}

uint64_t ApplePMUFirmwareDriver::writeHostIRQ(ApplePMUFirmwareDriver *this, int a2)
{
  if ((*(this + 136) & 0x80) != 0)
  {
    v4 = (*(**(this + 18) + 168))(*(this + 18));
    v5 = (*(*this + 56))(this);
    ClassName = OSMetaClass::getClassName(v5);
    IOLog("(%s) %s::%s: trigger_id=%d\n", v4, ClassName, "writeHostIRQ", a2);
  }

  v7 = *(this + 21);
  action[0] = _NSConcreteStackBlock;
  action[1] = 0x40000000;
  action[2] = ___ZN22ApplePMUFirmwareDriver12writeHostIRQEh_block_invoke;
  action[3] = &__block_descriptor_tmp_34;
  action[4] = this;
  v10 = a2;
  return IOCommandGate::runActionBlock(v7, action);
}

uint64_t ApplePMUFirmwareDriver::writeHostIRQGated(ApplePMUFirmwareDriver *this, char a2)
{
  v5 = a2;
  v3 = (*(**(this + 19) + 1424))(*(this + 19), *(this + 88), &v5, 1, 0);
  if (v3)
  {
    ApplePMUFirmwareDriver::writeHostIRQGated(this, this + 88, v3);
  }

  return v3;
}

uint64_t ApplePMUFirmwareDriver::setCPMSRate(ApplePMUFirmwareDriver *this, int a2)
{
  if ((*(this + 136) & 0x80) != 0)
  {
    v4 = (*(**(this + 18) + 168))(*(this + 18));
    v5 = (*(*this + 56))(this);
    ClassName = OSMetaClass::getClassName(v5);
    IOLog("(%s) %s::%s: milliseconds=%d\n", v4, ClassName, "setCPMSRate", a2);
  }

  v10 = 0;
  v9 = 0;
  v12 = 4;
  v11 = a2;
  LODWORD(result) = ApplePMUFirmwareDriver::mailboxTransaction(this, &v11, &v9);
  if (v10 != 6 && result == 0)
  {
    return 3758097129;
  }

  else
  {
    return result;
  }
}

uint64_t ApplePMUFirmwareDriver::setCPMSVDDDroopThreshold(ApplePMUFirmwareDriver *this, unsigned int a2)
{
  if ((*(this + 136) & 0x80) != 0)
  {
    v4 = (*(**(this + 18) + 168))(*(this + 18));
    v5 = (*(*this + 56))(this);
    ClassName = OSMetaClass::getClassName(v5);
    IOLog("(%s) %s::%s: millivolts=%d.%06d\n", v4, ClassName, "setCPMSVDDDroopThreshold", HIWORD(a2), (1000000 * a2) >> 16);
  }

  v10 = 0;
  v9 = 0;
  v12 = 5;
  v11 = a2;
  LODWORD(result) = ApplePMUFirmwareDriver::mailboxTransaction(this, &v11, &v9);
  if (v10 != 7 && result == 0)
  {
    return 3758097129;
  }

  else
  {
    return result;
  }
}

uint64_t ApplePMUFirmwareDriver::callPlatformFunction(ApplePMUFirmwareDriver *this, const OSSymbol *a2, BOOL a3, unsigned int *a4, uint64_t a5, void *a6, void *a7)
{
  if (gApplePMUFWDMailboxTransactionKey == a2)
  {
    if (a4 && a5)
    {
      return ApplePMUFirmwareDriver::mailboxTransaction(this, a4, a5);
    }
  }

  else if (gApplePMUFWDHostIRQKey == a2)
  {
    if (a4)
    {
      return ApplePMUFirmwareDriver::writeHostIRQ(this, *a4);
    }
  }

  else if (gApplePMUFWDSetCPMSRateKey == a2)
  {
    if (a4)
    {
      return ApplePMUFirmwareDriver::setCPMSRate(this, *a4);
    }
  }

  else
  {
    if (gApplePMUFWDSetCPMSVDDDroopThresholdKey != a2)
    {
    }

    if (a4)
    {
      return ApplePMUFirmwareDriver::setCPMSVDDDroopThreshold(this, *a4);
    }
  }

  return 3758097090;
}

const OSSymbol *_GLOBAL__sub_I_ApplePMUFirmwareDriver_cpp()
{
  OSMetaClass::OSMetaClass(&ApplePMUFirmwareDriver::gMetaClass, "ApplePMUFirmwareDriver", &IOService::gMetaClass, 0xD0u)->__vftable = off_CD40;
  gApplePMUFWDMailboxTransactionKey = OSSymbol::withCStringNoCopy("ApplePMUFWDMailboxTransaction");
  gApplePMUFWDHostIRQKey = OSSymbol::withCStringNoCopy("ApplePMUFWDUCHostIRQ");
  gApplePMUFWDSetCPMSRateKey = OSSymbol::withCStringNoCopy("ApplePMUFWDSetCPMSRate");
  result = OSSymbol::withCStringNoCopy("ApplePMUFWDSetCPMSVDDDroopThreshold");
  gApplePMUFWDSetCPMSVDDDroopThresholdKey = result;
  return result;
}

uint64_t *OUTLINED_FUNCTION_0(uint64_t a1)
{
  result = *(a1 + 144);
  v2 = *result;
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

uint64_t ApplePMUFirmwareDriverUserClient::initWithTask(ApplePMUFirmwareDriverUserClient *this, task *a2, void *a3, uint64_t a4, OSDictionary *a5)
{
  if (result)
  {
    return IOUserClient::clientHasPrivilege(a3, "root") == 0;
  }

  return result;
}

OSMetaClassBase *ApplePMUFirmwareDriverUserClient::start(ApplePMUFirmwareDriverUserClient *this, IOService *anObject)
{
  result = OSMetaClassBase::safeMetaCast(anObject, &ApplePMUFirmwareDriver::gMetaClass);
  *(this + 27) = result;
  if (result)
  {
    if (result)
    {
      v5 = kOSBooleanTrue;
      (*(*this + 200))(this, "IOUserClientDefaultLocking", *kOSBooleanTrue);
      (*(*this + 200))(this, "IOUserClientDefaultLockingSetProperties", *v5);
      (*(*this + 200))(this, "IOUserClientDefaultLockingSingleThreadExternalMethod", *v5);
      (*(*this + 208))(this, "IOUserClientEntitlements", "com.apple.driver.ApplePMUFirmwareDriver.user-access");
      return (&dword_0 + 1);
    }
  }

  return result;
}

void ApplePMUFirmwareDriver::start(_BYTE *a1, uint64_t **a2, uint64_t a3, _BYTE *a4)
{
  if ((*a1 & 2) != 0)
  {
    v6 = OUTLINED_FUNCTION_3(*a2);
    (*(v7 + 168))(v6);
    OUTLINED_FUNCTION_2();
    v9 = (*(v8 + 56))(a3);
    OSMetaClass::getClassName(v9);
    OUTLINED_FUNCTION_6();
    IOLog("(%s) %s::%s: super::start() failed\n", v10, v11, v12);
  }

  *a4 = 0;
}

{
  if ((*a1 & 2) != 0)
  {
    v6 = OUTLINED_FUNCTION_3(*a2);
    (*(v7 + 168))(v6);
    OUTLINED_FUNCTION_2();
    v9 = (*(v8 + 56))(a3);
    OSMetaClass::getClassName(v9);
    OUTLINED_FUNCTION_6();
    IOLog("(%s) %s::%s: expected to find has_fw property\n", v10, v11, v12);
  }

  *a4 = 0;
}

{
  if ((*a1 & 2) != 0)
  {
    v6 = OUTLINED_FUNCTION_3(*a2);
    (*(v7 + 168))(v6);
    OUTLINED_FUNCTION_2();
    v9 = (*(v8 + 56))(a3);
    OSMetaClass::getClassName(v9);
    OUTLINED_FUNCTION_6();
    IOLog("(%s) %s::%s: failed to cast provider\n", v10, v11, v12);
  }

  *a4 = 0;
}

void ApplePMUFirmwareDriver::start(uint64_t **a1, uint64_t a2, uint64_t a3, const char *a4)
{
  v6 = OUTLINED_FUNCTION_3(*a1);
  v8 = (*(v7 + 168))(v6);
  v9 = (*(*a2 + 56))(a2);
  ClassName = OSMetaClass::getClassName(v9);
  IOLog(a4, v8, ClassName, "getDTProperty", "fw-mcom-int-index");
}

void ApplePMUFirmwareDriver::start(uint64_t **a1, uint64_t a2, const char *a3)
{
  v6 = OUTLINED_FUNCTION_3(*a1);
  (*(v7 + 168))(v6);
  OUTLINED_FUNCTION_2();
  v9 = (*(v8 + 56))(a2);
  ClassName = OSMetaClass::getClassName(v9);
  IOLog(a3, v3, ClassName, "getDTProperty", "has-fw");
}

void ApplePMUFirmwareDriver::mailboxTransaction(char a1, uint64_t a2, _DWORD *a3)
{
  if ((a1 & 2) != 0)
  {
    v5 = OUTLINED_FUNCTION_3(*(a2 + 144));
    (*(v6 + 168))(v5);
    OUTLINED_FUNCTION_2();
    v8 = (*(v7 + 56))(a2);
    OSMetaClass::getClassName(v8);
    OUTLINED_FUNCTION_6();
    IOLog("(%s) %s::%s: mailbox is not supported\n", v9, v10, v11);
  }

  *a3 = -536870201;
}

void ApplePMUFirmwareDriver::mailboxTransactionGated(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_4(a1);
  if ((v5 & 2) != 0)
  {
    v6 = OUTLINED_FUNCTION_0(v4);
    (*(v7 + 168))(v6);
    OUTLINED_FUNCTION_1();
    v9 = (*(v8 + 56))(v3);
    OSMetaClass::getClassName(v9);
    OUTLINED_FUNCTION_5();
    IOLog("(%s) %s::%s: extRegisterWriteLong(RECEIVE_EVENT) failed, rc=0x%x\n", v10, v11, v12, v13);
  }

  *v1 = v2;
}

{
  v4 = OUTLINED_FUNCTION_4(a1);
  if ((v5 & 2) != 0)
  {
    v6 = OUTLINED_FUNCTION_0(v4);
    (*(v7 + 168))(v6);
    OUTLINED_FUNCTION_1();
    v9 = (*(v8 + 56))(v3);
    OSMetaClass::getClassName(v9);
    OUTLINED_FUNCTION_5();
    IOLog("(%s) %s::%s: extRegisterWriteLong(TRANSMIT0) failed, rc=0x%x\n", v10, v11, v12, v13);
  }

  *v1 = v2;
}

{
  v4 = OUTLINED_FUNCTION_4(a1);
  if ((v5 & 2) != 0)
  {
    v6 = OUTLINED_FUNCTION_0(v4);
    (*(v7 + 168))(v6);
    OUTLINED_FUNCTION_1();
    v9 = (*(v8 + 56))(v3);
    OSMetaClass::getClassName(v9);
    OUTLINED_FUNCTION_5();
    IOLog("(%s) %s::%s: extRegisterWriteLong(TRANSMIT_INTR) failed, rc=0x%x\n", v10, v11, v12, v13);
  }

  *v1 = v2;
}

void ApplePMUFirmwareDriver::mailboxTransactionGated(_BYTE *a1, uint64_t a2, int a3, _DWORD *a4)
{
  if ((*a1 & 2) != 0)
  {
    v7 = OUTLINED_FUNCTION_3(*(a2 + 144));
    (*(v8 + 168))(v7);
    OUTLINED_FUNCTION_1();
    v10 = (*(v9 + 56))(a2);
    OSMetaClass::getClassName(v10);
    OUTLINED_FUNCTION_5();
    IOLog("(%s) %s::%s: extRegisterReadLong(RECEIVE0) failed, rc=0x%x\n", v11, v12, v13, v14);
  }

  *a4 = a3;
}

{
  if ((*a1 & 2) != 0)
  {
    v7 = OUTLINED_FUNCTION_3(*(a2 + 144));
    (*(v8 + 168))(v7);
    OUTLINED_FUNCTION_1();
    v10 = (*(v9 + 56))(a2);
    OSMetaClass::getClassName(v10);
    OUTLINED_FUNCTION_5();
    IOLog("(%s) %s::%s: extRegisterReadLong(RECEIVE_EVENT) failed, rc=0x%x\n", v11, v12, v13, v14);
  }

  *a4 = a3;
}

void ApplePMUFirmwareDriver::mailboxTransactionGated(uint64_t a1, unsigned __int8 *a2, _DWORD *a3)
{
  if ((*(a1 + 136) & 2) != 0)
  {
    v7 = OUTLINED_FUNCTION_0(a1);
    (*(v8 + 168))(v7);
    OUTLINED_FUNCTION_1();
    v10 = (*(v9 + 56))(v3);
    ClassName = OSMetaClass::getClassName(v10);
    IOLog("(%s) %s::%s: invalid event %d\n", v4, ClassName, "mailboxTransactionGated", *a2);
  }

  *a3 = -536870206;
}

void ApplePMUFirmwareDriver::writeHostIRQGated(uint64_t a1, unsigned __int16 *a2, int a3)
{
  if ((*(a1 + 136) & 2) != 0)
  {
    v7 = OUTLINED_FUNCTION_0(a1);
    (*(v8 + 168))(v7);
    OUTLINED_FUNCTION_1();
    v10 = (*(v9 + 56))(v3);
    ClassName = OSMetaClass::getClassName(v10);
    IOLog("(%s) %s::%s: extRegisterReadLong(HOST_IRQ) failed, address=0x%x, rc=0x%x\n", v4, ClassName, "writeHostIRQGated", *a2, a3);
  }
}