OSMetaClass *ASIOKitUserClient::MetaClass::MetaClass(OSMetaClass *this)
{
  result = OSMetaClass::OSMetaClass(this, "ASIOKitUserClient", &IOUserClient::gMetaClass, 0xF0u);
  result->__vftable = off_507C0;
  return result;
}

{
  result = OSMetaClass::OSMetaClass(this, "ASIOKitUserClient", &IOUserClient::gMetaClass, 0xF0u);
  result->__vftable = off_507C0;
  return result;
}

void ASIOKitUserClient::MetaClass::~MetaClass(OSMetaClass *this)
{
  OSMetaClass::~OSMetaClass(this);
}

{
  OSMetaClass::~OSMetaClass(this);
}

void ASIOKitUserClient::ASIOKitUserClient(ASIOKitUserClient *this, const OSMetaClass *a2)
{
  IOUserClient::IOUserClient(this, a2)->__vftable = off_501A0;
}

{
  IOUserClient::IOUserClient(this, a2)->__vftable = off_501A0;
}

void ASIOKitUserClient::~ASIOKitUserClient(IOUserClient *this)
{
  IOUserClient::~IOUserClient(this);
}

{
  IOUserClient::~IOUserClient(this);
}

{
  IOUserClient::~IOUserClient(this);

  _OSObject_typed_operator_delete(&ASIOKitUserClient_ktv, this, 240);
}

IOUserClient *ASIOKitUserClient::MetaClass::alloc(ASIOKitUserClient::MetaClass *this)
{
  v1 = OSObject_typed_operator_new();
  IOUserClient::IOUserClient(v1, &ASIOKitUserClient::gMetaClass)->__vftable = off_501A0;
  OSMetaClass::instanceConstructed(&ASIOKitUserClient::gMetaClass);
  return v1;
}

void ASIOKitUserClient::ASIOKitUserClient(ASIOKitUserClient *this)
{
  IOUserClient::IOUserClient(this, &ASIOKitUserClient::gMetaClass)->__vftable = off_501A0;
  OSMetaClass::instanceConstructed(&ASIOKitUserClient::gMetaClass);
}

{
  IOUserClient::IOUserClient(this, &ASIOKitUserClient::gMetaClass)->__vftable = off_501A0;
  OSMetaClass::instanceConstructed(&ASIOKitUserClient::gMetaClass);
}

uint64_t ASIOKitUserClient::vvzNvdGIueJcRdKd(const OSMetaClassBase *this, OSObject *a2, _DWORD *a3, IOExternalMethodArguments *a4)
{
  v27 = 0u;
  v28 = 0u;
  v26 = 0;
  v24 = 0;
  v25 = 0;
  v23 = 0;
  v5 = OSMetaClassBase::safeMetaCast(this, &ASIOKitUserClient::gMetaClass);
  if (!v5)
  {
    v6 = 3758097084;
    goto LABEL_12;
  }

  if (!a3 || a3[20] != 5 || a3[10] != 11 || !*(a3 + 6))
  {
    v6 = 3758097090;
    goto LABEL_12;
  }

  v6 = 3758097090;
  if (!*(a3 + 11))
  {
    goto LABEL_12;
  }

  *&v27 = *(a3 + 6);
  DWORD2(v27) = a3[14];
  *&v28 = *(a3 + 4);
  DWORD2(v28) = 11;
  v7 = (v5->__vftable[14].retain)(v5, &v25, &v24, &v23, &v27);
  v6 = v7;
  if (v7 == -31013)
  {
    v8 = v25;
    if (!v25)
    {
      v6 = 4294940290;
      goto LABEL_14;
    }
  }

  else
  {
    if (v7)
    {
      goto LABEL_12;
    }

    v8 = v25;
  }

  v26 = 0;
  v10 = (*(*v8 + 160))(v8);
  if (v10 > a3[24])
  {
    goto LABEL_21;
  }

  v11 = v10;
  v12 = *(a3 + 11);
  v13 = (*(*v25 + 216))(v25);
  v14 = v11;
  v15 = memmove(v12, v13, v11);
  v26 = v11;
  v16 = *(a3 + 9);
  *v16 = v11;
  if (v6 == -31013)
  {
    v16[1] = 0;
    v17 = -31013;
  }

  else
  {
    v18 = (*(*v24 + 160))(v24);
    v19 = v11 + v18;
    if (v19 > a3[24])
    {
LABEL_21:
      v6 = 3758097115;
      goto LABEL_12;
    }

    v20 = v18;
    v21 = *(a3 + 11);
    v22 = (*(*v24 + 216))(v24);
    v15 = memmove((v21 + v14), v22, v20);
    v17 = 0;
    v16 = *(a3 + 9);
    v16[1] = v20;
    v26 = v19;
  }

  v16[4] = v17;
  v6 = ASIOKitUserClient::serializeBAACertificate(v15, v23, v16 + 2, *(a3 + 11), &v26, a3[24]);
LABEL_12:
  if (v25)
  {
    (*(*v25 + 40))(v25);
  }

LABEL_14:
  v25 = 0;
  if (v24)
  {
    (*(*v24 + 40))(v24);
  }

  v24 = 0;
  if (v23)
  {
    (v23->release_0)(v23);
  }

  return v6;
}

uint64_t ASIOKitUserClient::IbN2f3LUJbYHz0fZ(const OSMetaClassBase *this, OSObject *a2, _DWORD *a3, IOExternalMethodArguments *a4)
{
  v4 = 3758097090;
  if (!a3 || a3[24] != 44)
  {
    return v4;
  }

  v5 = *(a3 + 11);
  v6 = OSMetaClassBase::safeMetaCast(this, &ASIOKitUserClient::gMetaClass);
  if (!v6)
  {
    return 3758097084;
  }

  serialize = v6->__vftable[14].serialize;

  return serialize();
}

uint64_t ASIOKitUserClient::NNW6204XjGxsj6oV(const OSMetaClassBase *this, OSObject *a2, void *a3, IOExternalMethodArguments *a4)
{
  v4 = OSMetaClassBase::safeMetaCast(this, &ASIOKitUserClient::gMetaClass);
  if (!v4)
  {
    return 3758097084;
  }

  getMetaClass = v4->__vftable[14].getMetaClass;

  return getMetaClass();
}

uint64_t ASIOKitUserClient::SyUDm5uomtfMytmv(const OSMetaClassBase *this, OSObject *a2, _DWORD *a3, IOExternalMethodArguments *a4)
{
  v25 = 0u;
  v26 = 0u;
  v24 = 0;
  v22 = 0;
  v23 = 0;
  v21 = 0;
  v5 = OSMetaClassBase::safeMetaCast(this, &ASIOKitUserClient::gMetaClass);
  if (!v5)
  {
    v6 = 3758097084;
    goto LABEL_15;
  }

  if (!a3 || a3[20] != 5 || a3[10] != 11 || !*(a3 + 6))
  {
    v6 = 3758097090;
LABEL_15:
    v7 = v23;
    goto LABEL_16;
  }

  v6 = 3758097090;
  if (!*(a3 + 11))
  {
    goto LABEL_15;
  }

  *&v25 = *(a3 + 6);
  DWORD2(v25) = a3[14];
  *&v26 = *(a3 + 4);
  DWORD2(v26) = 11;
  v6 = (v5->__vftable[14].release_0)(v5, &v23, &v22, &v21, &v25);
  if (v6)
  {
    goto LABEL_15;
  }

  v7 = v23;
  v6 = 4294940290;
  if (v23 && v22)
  {
    v24 = 0;
    v8 = (*(*v23 + 160))();
    v6 = 3758097115;
    if (v8 <= a3[24])
    {
      v9 = v8;
      v10 = *(a3 + 11);
      v11 = (*(*v23 + 216))(v23);
      v12 = v9;
      memmove(v10, v11, v9);
      v24 = v9;
      **(a3 + 9) = v9;
      v13 = (*(*v22 + 160))();
      v14 = v9 + v13;
      if (v14 <= a3[24])
      {
        v15 = v13;
        v16 = *(a3 + 11);
        v17 = (*(*v22 + 216))(v22);
        v18 = memmove((v16 + v12), v17, v15);
        v19 = *(a3 + 9);
        v19[1] = v15;
        v24 = v14;
        v19[4] = 0;
        v6 = ASIOKitUserClient::serializeBAACertificate(v18, v21, v19 + 2, *(a3 + 11), &v24, a3[24]);
      }
    }

    goto LABEL_15;
  }

LABEL_16:
  if (v7)
  {
    (*(*v7 + 40))(v7);
  }

  v23 = 0;
  if (v22)
  {
    (*(*v22 + 40))(v22);
  }

  v22 = 0;
  if (v21)
  {
    (v21->release_0)(v21);
  }

  return v6;
}

uint64_t ASIOKitUserClient::vimqO0tP8rpjnboq(const OSMetaClassBase *this, OSObject *a2, _DWORD *a3, IOExternalMethodArguments *a4)
{
  v4 = 3758097090;
  if (!a3 || a3[24] != 2)
  {
    return v4;
  }

  v6 = *(a3 + 11);
  v7 = OSMetaClassBase::safeMetaCast(this, &ASIOKitUserClient::gMetaClass);
  if (!v7)
  {
    return 3758097084;
  }

  v8 = *(a3 + 4);
  isEqualTo = v7->__vftable[14].isEqualTo;

  return isEqualTo();
}

uint64_t ASIOKitUserClient::vPTazxKbiEZl6jPE(const OSMetaClassBase *this, OSObject *a2, void *a3, IOExternalMethodArguments *a4)
{
  v4 = 3758097090;
  v10 = 0;
  v9 = 0;
  if (a3 && *(a3 + 11) && *(a3 + 20) == 3)
  {
    v6 = OSMetaClassBase::safeMetaCast(this, &ASIOKitUserClient::gMetaClass);
    if (v6)
    {
      v7 = (v6->__vftable[14].taggedRetain)(v6, &v10);
      v4 = v7;
      if (!v7)
      {
        return ASIOKitUserClient::serializeBAACertificate(v7, v10, *(a3 + 9), *(a3 + 11), &v9, *(a3 + 24));
      }
    }

    else
    {
      return 3758097084;
    }
  }

  return v4;
}

uint64_t ASIOKitUserClient::sGetKernelInfoSignals(const OSMetaClassBase *this, OSObject *a2, _DWORD *a3, IOExternalMethodArguments *a4)
{
  v4 = 3758097090;
  if (!a3 || a3[24] != 40)
  {
    return v4;
  }

  v6 = OSMetaClassBase::safeMetaCast(this, &ASIOKitUserClient::gMetaClass);
  if (!v6)
  {
    return 3758097084;
  }

  v7 = *(a3 + 6);
  v8 = *(a3 + 11);
  taggedRelease = v6->__vftable[14].taggedRelease;

  return taggedRelease();
}

uint64_t ASIOKitUserClient::externalMethod(ASIOKitUserClient *this, unsigned int a2, IOExternalMethodArguments *a3, IOExternalMethodDispatch *a4, OSObject *a5, void *a6)
{
  if (a2 <= 6)
  {
  }

  else
  {
    return 3758097095;
  }
}

uint64_t ASIOKitUserClient::serializeBAACertificate(ASIOKitUserClient *this, OSArray *a2, unint64_t *a3, _BYTE *a4, unsigned int *a5, unsigned int a6)
{
  v7 = 0;
  result = 3758097097;
  if (!a3 || !a4 || !a5)
  {
LABEL_14:
    if (!a5)
    {
      return result;
    }

    goto LABEL_15;
  }

  v7 = *a5;
  if (!a2)
  {
    result = 0;
    *a3 = 0;
    a3[1] = 0;
    goto LABEL_15;
  }

  *a3 = (a2->getCount)(a2);
  a3[1] = 0;
  result = (a2->getCount)(a2);
  if (!result)
  {
LABEL_15:
    *a5 = v7;
    return result;
  }

  v13 = 0;
  v14 = OSData::metaClass;
  v15 = a6;
  while (1)
  {
    v16 = (a2->getObject)(a2, v13);
    v17 = OSMetaClassBase::safeMetaCast(v16, v14);
    if (!v17)
    {
      result = 3758097084;
      goto LABEL_14;
    }

    v18 = v17;
    v19 = (v17->__vftable[1].getMetaClass)(v17);
    if ((v19 + v7) + 4 > v15)
    {
      break;
    }

    v20 = v19;
    a4[v7] = v19;
    a4[v7 + 1] = BYTE1(v19);
    a4[v7 + 2] = BYTE2(v19);
    a4[v7 + 3] = HIBYTE(v19);
    v21 = (v18->__vftable[2].~OSMetaClassBase_0)(v18);
    v22 = v7 + 4;
    memmove(&a4[v22], v21, v20);
    v7 = v20 + v22;
    a3[1] += v20 + 4;
    v13 = (v13 + 1);
    if (v13 >= (a2->getCount)(a2))
    {
      result = 0;
      if (a5)
      {
        goto LABEL_15;
      }

      return result;
    }
  }

  result = 4294936277;
  if (a5)
  {
    goto LABEL_15;
  }

  return result;
}

uint64_t ASIOKitUserClient::AoOapHZis11ZWGBt(const IOService *a1, uint64_t a2)
{
  if (!a1[1].__timeBusy || IOService::isInactive(a1))
  {
    return 3758097113;
  }

  timeBusy = a1[1].__timeBusy;

  return ASIOKit::viqFL3262Ase9MTj(timeBusy, a2);
}

uint64_t ASIOKitUserClient::TaWOjBSsmF3GGaLj(const IOService *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a1[1].__timeBusy || IOService::isInactive(a1))
  {
    return 3758097113;
  }

  timeBusy = a1[1].__timeBusy;

  return ASIOKit::kkUx5VJz08bbuV(timeBusy, a2, a3, a4, a5);
}

uint64_t ASIOKitUserClient::LBYbjzNs8jyCVGMA(const IOService *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a1[1].__timeBusy || IOService::isInactive(a1))
  {
    return 3758097113;
  }

  timeBusy = a1[1].__timeBusy;

  return ASIOKit::zLzyTpirXonhRZpa(timeBusy, a2, a3, a4, a5);
}

uint64_t ASIOKitUserClient::DCFQ04HMpOkfuaSe(const IOService *this, OSData *a2)
{
  if (!this[1].__timeBusy || IOService::isInactive(this))
  {
    return 3758097113;
  }

  timeBusy = this[1].__timeBusy;

  return ASIOKit::xGSTqgIsVVUQ7g1X(timeBusy, a2);
}

uint64_t ASIOKitUserClient::jX9XqRGElMRa94yW(const IOService *a1, uint64_t a2, uint64_t a3)
{
  if (!a1[1].__timeBusy || IOService::isInactive(a1))
  {
    return 3758097113;
  }

  timeBusy = a1[1].__timeBusy;

  return ASIOKit::gWpFuEx4xk9dHYIu(timeBusy, a2, a3);
}

uint64_t ASIOKitUserClient::XsdG5NObDHMsWkui(const IOService *this, OSArray **a2)
{
  if (!this[1].__timeBusy || IOService::isInactive(this))
  {
    return 3758097113;
  }

  timeBusy = this[1].__timeBusy;

  return ASIOKit::j0GEgZ4eFeXtkbQ1(timeBusy, a2);
}

uint64_t ASIOKitUserClient::getKernelInfoSignals(const IOService *a1, uint64_t a2, uint64_t a3)
{
  if (!a1[1].__timeBusy || IOService::isInactive(a1))
  {
    return 3758097113;
  }

  timeBusy = a1[1].__timeBusy;

  return ASIOKit::asiokitGetKernelInfoSignals(timeBusy, a2, a3);
}

uint64_t ASIOKitUserClient::start(ASIOKitUserClient *this, IOService *a2)
{
  if (result)
  {
    v5 = OSMetaClassBase::safeMetaCast(a2, &ASIOKit::gMetaClass);
    *(this + 27) = v5;
    return v5 != 0;
  }

  return result;
}

OSObject *ASIOKitUserClient::initWithTask(ASIOKitUserClient *this, task_t task, void *a3, uint64_t a4)
{
  result = IOUserClient::copyClientEntitlement(task, "com.apple.private.asiokit.allow");
  if (result)
  {
    v9 = result;
    v10 = *kOSBooleanTrue;
    (result->release_0)(result);
    if (v9 == v10)
    {
      result = 0;
      if (task)
      {
        if (v11)
        {
          *(this + 27) = 0;
          *(this + 28) = task;
          result = (&dword_0 + 1);
          *(this + 232) = 0;
        }
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

OSMetaClass *_GLOBAL__sub_I_ASIOKitUserClient_cpp()
{
  result = OSMetaClass::OSMetaClass(&ASIOKitUserClient::gMetaClass, "ASIOKitUserClient", &IOUserClient::gMetaClass, 0xF0u);
  result->__vftable = off_507C0;
  return result;
}

OSMetaClass *ASIOKit::MetaClass::MetaClass(OSMetaClass *this)
{
  result = OSMetaClass::OSMetaClass(this, "ASIOKit", &IOService::gMetaClass, 0x90u);
  result->__vftable = off_50E58;
  return result;
}

{
  result = OSMetaClass::OSMetaClass(this, "ASIOKit", &IOService::gMetaClass, 0x90u);
  result->__vftable = off_50E58;
  return result;
}

void ASIOKit::MetaClass::~MetaClass(OSMetaClass *this)
{
  OSMetaClass::~OSMetaClass(this);
}

{
  OSMetaClass::~OSMetaClass(this);
}

void ASIOKit::ASIOKit(ASIOKit *this, const OSMetaClass *a2)
{
  IOService::IOService(this, a2)->__vftable = off_50900;
}

{
  IOService::IOService(this, a2)->__vftable = off_50900;
}

void ASIOKit::~ASIOKit(IOService *this)
{
  IOService::~IOService(this);
}

{
  IOService::~IOService(this);
}

{
  IOService::~IOService(this);

  _OSObject_typed_operator_delete(&ASIOKit_ktv, this, 144);
}

IOService *ASIOKit::MetaClass::alloc(ASIOKit::MetaClass *this)
{
  v1 = OSObject_typed_operator_new();
  IOService::IOService(v1, &ASIOKit::gMetaClass)->__vftable = off_50900;
  OSMetaClass::instanceConstructed(&ASIOKit::gMetaClass);
  return v1;
}

void ASIOKit::ASIOKit(ASIOKit *this)
{
  IOService::IOService(this, &ASIOKit::gMetaClass)->__vftable = off_50900;
  OSMetaClass::instanceConstructed(&ASIOKit::gMetaClass);
}

{
  IOService::IOService(this, &ASIOKit::gMetaClass)->__vftable = off_50900;
  OSMetaClass::instanceConstructed(&ASIOKit::gMetaClass);
}

IOCommandGate *ASIOKit::start(OSObject *this, IOService *a2)
{
  if (result)
  {
    result = IOCommandGate::commandGate(this, 0);
    *&this[8].retainCount = result;
    if (result)
    {
      v4 = (this->__vftable[7].serialize)(this);
      if ((*(*v4 + 160))(v4, *&this[8].retainCount))
      {
        if (*&this[8].retainCount)
        {
          v5 = (this->__vftable[7].serialize)(this);
          (*(*v5 + 168))(v5, *&this[8].retainCount);
          v6 = *&this[8].retainCount;
          if (v6)
          {
            (*(*v6 + 40))(v6);
          }

          result = 0;
          *&this[8].retainCount = 0;
        }

        else
        {
          return 0;
        }
      }

      else
      {
        (this->__vftable[5].taggedRetain)(this, 0);
        return (&dword_0 + 1);
      }
    }
  }

  return result;
}

uint64_t ASIOKit::stop(ASIOKit *this, IOService *a2)
{
  if (*(this + 17))
  {
    v4 = (*(*this + 888))(this);
    (*(*v4 + 168))(v4, *(this + 17));
    v5 = *(this + 17);
    if (v5)
    {
      (*(*v5 + 40))(v5);
    }

    *(this + 17) = 0;
  }

  return (stop)(this, a2);
}

uint64_t mapAppleSSEError(int a1)
{
  if (a1 <= -536870182)
  {
    if (a1 == -536870184)
    {
      v3 = -31013;
    }

    else
    {
      v3 = -31004;
    }

    if (a1 == -536870186)
    {
      v4 = -31205;
    }

    else
    {
      v4 = v3;
    }

    if (a1 == -536870199)
    {
      v5 = -31204;
    }

    else
    {
      v5 = v4;
    }

    if (a1 == -536870206)
    {
      v6 = -31201;
    }

    else
    {
      v6 = -31004;
    }

    if (a1 == -536870211)
    {
      v7 = -31202;
    }

    else
    {
      v7 = v6;
    }

    if (a1 == -536870212)
    {
      v8 = -31207;
    }

    else
    {
      v8 = v7;
    }

    if (a1 <= -536870200)
    {
      return v8;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = (a1 + 20);
    if (v1 > 0x13)
    {
      if (a1 == -536870165)
      {
        v9 = -31206;
      }

      else
      {
        v9 = -31004;
      }

      if (a1 == -536870181)
      {
        return 4294936093;
      }

      else
      {
        return v9;
      }
    }

    else
    {
      return ((&loc_D994 + *(qword_DB40 + v1)))(4294936292);
    }
  }
}

uint64_t sub_DA68()
{
  __asm { BTI             j }

  return 4294936088;
}

uint64_t sub_DA74()
{
  __asm { BTI             j }

  return 4294936094;
}

uint64_t sub_DA80()
{
  __asm { BTI             j }

  return 4294936087;
}

uint64_t sub_DA8C()
{
  __asm { BTI             j }

  return 4294936081;
}

uint64_t sub_DA98()
{
  __asm { BTI             j }

  return 4294936084;
}

uint64_t sub_DAA4()
{
  __asm { BTI             j }

  return 4294936076;
}

uint64_t sub_DAB0()
{
  __asm { BTI             j }

  return 4294936092;
}

uint64_t sub_DABC()
{
  __asm { BTI             j }

  return 4294936074;
}

uint64_t sub_DAC8()
{
  __asm { BTI             j }

  return 4294936079;
}

uint64_t sub_DAD4()
{
  __asm { BTI             j }

  return 4294936077;
}

uint64_t sub_DAE0()
{
  __asm { BTI             j }

  return 4294936075;
}

uint64_t sub_DAEC()
{
  __asm { BTI             j }

  return 4294936078;
}

uint64_t sub_DAF8()
{
  __asm { BTI             j }

  return 4294936080;
}

uint64_t sub_DB04()
{
  __asm { BTI             j }

  return 4294936073;
}

uint64_t sub_DB10()
{
  __asm { BTI             j }

  return 4294936085;
}

uint64_t sub_DB1C()
{
  __asm { BTI             j }

  return 4294936086;
}

uint64_t sub_DB28()
{
  __asm { BTI             j }

  return 4294936083;
}

uint64_t sub_DB34()
{
  __asm { BTI             j }

  return 4294936082;
}

uint64_t ASIOKit::gCTqHYqK053YVV7f(uint64_t a1, OSData **a2, uint64_t a3, void *a4, unsigned int *a5)
{
  v75 = 0u;
  v76 = 0u;
  v95 = 0;
  v93 = 0u;
  memset(v94, 0, sizeof(v94));
  v92 = 0;
  v90 = 0u;
  memset(v91, 0, sizeof(v91));
  memset(v89, 0, 72);
  v74 = 0;
  v87 = 0u;
  v88 = 0u;
  v85 = 0u;
  v86 = 0u;
  v83 = 0u;
  v84 = 0u;
  v81 = 0u;
  v82 = 0u;
  v5 = 4294940294;
  v80 = 0u;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    goto LABEL_5;
  }

  if (!a4)
  {
    goto LABEL_5;
  }

  LODWORD(v71) = 0;
  vchs9e72gvima(108, a5, &v80, &v93, &v71);
  v5 = v71;
  if (v71)
  {
    goto LABEL_5;
  }

  LODWORD(v12) = v81;
  v5 = 4294940286;
  if (v81 > 3 || DWORD1(v81) > 3)
  {
    goto LABEL_5;
  }

  if (v82 != 16 && v82 != 8)
  {
    v5 = 4294936274;
    goto LABEL_5;
  }

  v13 = 0;
  isCharging = 0;
  v15 = BYTE8(v88);
  if (DWORD1(v86) == 1)
  {
    v16 = 0;
    v17 = 0;
    if ((BYTE8(v88) & 2) == 0)
    {
      v17 = IOService::serviceMatching("IOPMPowerSource", 0);
      v13 = IOService::copyMatchingService(v17);
      v18 = OSMetaClassBase::safeMetaCast(v13, IOPMPowerSource::metaClass);
      v19 = v18;
      if (!v18)
      {
        v24 = 0;
        goto LABEL_41;
      }

      isCharging = IOPMPowerSource::isCharging(v18);
      v16 = (IOPMPowerSource::capacityPercentRemaining(v19) / 0xA) & 0x1FFFFFFE;
      LODWORD(v12) = v81;
    }
  }

  else
  {
    v16 = 0;
    v17 = 0;
  }

  if (v12)
  {
    v12 = v12;
    v20 = v94;
    v21 = v91;
    v22 = v89;
    while (1)
    {
      *v22 = 0;
      *(v21 - 2) = *(v20 - 2);
      v23 = *(v20 - 2);
      *(v21 - 2) = v23;
      *v21 = *v20;
      if (!v23)
      {
        break;
      }

      *(v21 - 1) = *(v20 - 1);
      v22 += 3;
      v20 += 6;
      v21 += 6;
      if (!--v12)
      {
        goto LABEL_26;
      }
    }

    v24 = 0;
    v19 = 0;
    v5 = 4294940295;
    goto LABEL_111;
  }

LABEL_26:
  if (DWORD1(v86) != 1 || (BYTE8(v88) & 2) != 0 || (*&v75 = 0xD300000001, DWORD2(v75) = 0, LODWORD(v76) = 0, DWORD1(v76) = v16 | isCharging, *(&v76 + 1) = 0, LODWORD(v71) = 0, vchs9e72gvima(101, &v75, &v90, 0, &v71), !v71))
  {
    if (v86 == 65 && *(&v85 + 1))
    {
      if (DWORD1(v81))
      {
        v25 = 0;
        v26 = &v90;
        v27 = v89;
        while (1)
        {
          LODWORD(v71) = 0;
          vchs9e72gvima(104, &v80, v26, v27, &v71);
          if (v71)
          {
            goto LABEL_91;
          }

          ++v25;
          v26 = (v26 + 24);
          v27 += 3;
          if (v25 >= DWORD1(v81))
          {
            v28 = DWORD1(v81) == 0;
            goto LABEL_44;
          }
        }
      }

      v28 = 1;
LABEL_44:
      if (DWORD1(v86) > 2)
      {
        bytes = 0;
        memset(v79, 0, sizeof(v79));
        v78 = 0;
        v77 = 0;
        v40 = v81;
        v71 = v81;
        v72 = v79;
        v73 = &v77;
        if (v28)
        {
          v41 = 0;
        }

        else
        {
          v49 = 0;
          v50 = &v89[1];
          do
          {
            v72[v49] = *(v50 - 1);
            v51 = *v50;
            v50 += 6;
            *(v73 + v49++) = v51;
            v41 = DWORD1(v81);
          }

          while (v49 < DWORD1(v81));
          v40 = v81;
        }

        if (v41 < v40)
        {
          v52 = v41;
          v53 = &v91[24 * v41 - 8];
          do
          {
            v72[v52] = *(v53 - 1);
            v54 = *v53;
            v53 += 6;
            *(v73 + v52++) = v54;
          }

          while (v52 < v81);
        }

        v69 = 0;
        vchs9e72gvima(105, &v71, &bytes, 0, &v69);
        if (v69)
        {
LABEL_91:
          v5 = 0;
          v24 = 0;
          v19 = 0;
          goto LABEL_111;
        }

        v31 = OSData::withBytes(bytes, (32 * v81) | 1);
        if (bytes)
        {
          vchs9e72gvima(103, bytes, 0, 0, 0);
        }

        v67 = v17;
LABEL_47:
        v66 = v82;
        v24 = IOService::serviceMatching("AppleSSE", 0);
        v19 = IOService::copyMatchingService(v24);
        v32 = OSMetaClassBase::safeMetaCast(v19, AppleSSEInterface::metaClass);
        if (!v32)
        {
          v5 = 4294966587;
          v17 = v67;
          if (!v31)
          {
            goto LABEL_111;
          }

          goto LABEL_110;
        }

        v33 = v32;
        v65 = v13;
        v61 = v15;
        v68 = v31;
        v34 = OSData::withBytesNoCopy(*(&v81 + 1), v82);
        v62 = OSData::withBytesNoCopy(&v82 + 4, 0x18u);
        v35 = OSData::withBytesNoCopy(&v83 + 12, 8u);
        v36 = OSData::withBytesNoCopy(&v84 + 4, 8u);
        v37 = OSData::withBytesNoCopy(&v84 + 12, 8u);
        v63 = v35;
        v64 = v36;
        if (v66 == 8)
        {
          v71 = 0;
          v38 = v62;
          v39 = (v33->__vftable[13].retain)(v33, 2, v34);
          if (v71)
          {
            (*(*v71 + 40))(v71);
          }

          v17 = v67;
        }

        else
        {
          v38 = v62;
          v39 = (v33->__vftable[12].Dispatch)(v33, v61 & 1 | 4u, v34);
          v17 = v67;
        }

        if (v34)
        {
          (v34->release_0)(v34);
        }

        v13 = v65;
        if (v38)
        {
          (v38->release_0)(v38);
        }

        v31 = v68;
        if (v63)
        {
          (v63->release_0)(v63);
        }

        if (v64)
        {
          (v64->release_0)(v64);
        }

        if (v37)
        {
          (v37->release_0)(v37);
        }

        if (v39)
        {
          v42 = 1;
        }

        else
        {
          v42 = v74 == 0;
        }

        v43 = v42;
        if (v42)
        {
          if (v39 != -536870184)
          {
            v5 = mapAppleSSEError(v39);
            if (!v68)
            {
              goto LABEL_111;
            }

            goto LABEL_110;
          }

          v5 = 4294936283;
        }

        else
        {
          v5 = 0;
        }

        if (DWORD1(v86) != 3)
        {
          *a2 = v74;
          if (!v68)
          {
            goto LABEL_111;
          }

          goto LABEL_110;
        }

        v44 = DWORD1(v81);
        if (DWORD1(v81))
        {
          v45 = 0;
          v46 = &v89[1];
          do
          {
            v47 = *v46;
            v46 += 6;
            v45 += v47 + 4;
            --v44;
          }

          while (v44);
          v48 = v45 + 4;
        }

        else
        {
          v48 = 4;
        }

        if (v43)
        {
          v55 = v68;
        }

        else
        {
          v55 = v74;
        }

        v56 = (v55->getLength)(v55);
        v57 = OSData::withCapacity(v48 + v56);
        *a2 = v57;
        if ((v57->appendByte)() && ((*a2)->appendByte)(*a2, BYTE1(v56), 1) && ((*a2)->appendByte)(*a2, BYTE2(v56), 1) && ((*a2)->appendByte)(*a2, HIBYTE(v56), 1))
        {
          v58 = *a2;
          v31 = v68;
          if (v43)
          {
            if (((v58->appendBytes_0)(v58, v68) & 1) == 0)
            {
              goto LABEL_107;
            }
          }

          else if (!(v58->appendBytes_0)(v58, v74))
          {
LABEL_107:
            v5 = 4294936290;
            if (!v68)
            {
              goto LABEL_111;
            }

            goto LABEL_110;
          }

          if (DWORD1(v81))
          {
            v59 = 0;
            v60 = &v89[1];
            while (((*a2)->appendByte)(*a2, *v60, 1) && ((*a2)->appendByte)(*a2, v60[1], 1) && ((*a2)->appendByte)(*a2, v60[2], 1) && ((*a2)->appendByte)(*a2, v60[3], 1) && (((*a2)->appendBytes)(*a2, *(v60 - 1), *v60) & 1) != 0)
            {
              ++v59;
              v60 += 24;
              if (v59 >= DWORD1(v81))
              {
                goto LABEL_128;
              }
            }

            v5 = 4294936290;
          }

          else
          {
LABEL_128:
            if (*a4 && (*(**a4 + 144))(*a4) >= 2)
            {
              (*(**a4 + 264))(*a4, 1);
            }

            if (v74)
            {
              (v74->release_0)(v74);
            }

            v74 = 0;
          }

          v31 = v68;
          v13 = v65;
          if (!v68)
          {
            goto LABEL_111;
          }
        }

        else
        {
          v5 = 4294936290;
          v31 = v68;
          if (!v68)
          {
            goto LABEL_111;
          }
        }

LABEL_110:
        (v31->release_0)(v31);
        goto LABEL_111;
      }

      v67 = v17;
      v29 = v89[0];
      v30 = v89[1];
    }

    else
    {
      if (DWORD1(v86) != 1)
      {
        v24 = 0;
        v19 = 0;
        v5 = 4294940290;
        goto LABEL_111;
      }

      v67 = v17;
      v29 = v90;
      v30 = DWORD2(v90);
    }

    v31 = OSData::withBytesNoCopy(v29, v30);
    goto LABEL_47;
  }

  v24 = 0;
  v19 = 0;
LABEL_41:
  v5 = 3758097084;
LABEL_111:
  if (v17)
  {
    (v17->release_0)(v17);
  }

  if (v13)
  {
    (v13->release_0)(v13);
  }

  if (v24)
  {
    (v24->release_0)(v24);
  }

  if (v19)
  {
    (v19->release_0)(v19);
  }

LABEL_5:
  for (i = 0; i != 9; i += 3)
  {
    v9 = *&v91[i * 8 - 16];
    if (v9)
    {
      vchs9e72gvima(103, v9, 0, 0, 0);
    }

    v10 = v89[i];
    if (v10)
    {
      vchs9e72gvima(103, v10, 0, 0, 0);
    }
  }

  return v5;
}

uint64_t ASIOKit::XYyzPN8jt1XoYiqP(uint64_t a1, void *a2, uint64_t a3, void *a4, unsigned int *a5)
{
  memset(v40, 0, sizeof(v40));
  v34 = 0;
  v39 = 0u;
  *numBytes = 0u;
  memset(v38, 0, sizeof(v38));
  v5 = 4294940294;
  v35 = 0u;
  *bytes = 0u;
  if (a2)
  {
    if (a3)
    {
      if (a4)
      {
        v33 = 0;
        vchs9e72gvima(108, a5, &v35, v40, &v33);
        v5 = v33;
        if (!v33)
        {
          if (numBytes[0] == 16)
          {
            if (BYTE8(v39))
            {
              v9 = 5;
            }

            else
            {
              v9 = 4;
            }

            if (LODWORD(bytes[0]) <= 1)
            {
              if (LODWORD(v40[1]) && *v40[0] && (((LODWORD(v40[1]) - 1) & 0x1F) != 0 || (LODWORD(v40[1]) - 1) / *v40[0] != 32))
              {
                v5 = 4294936276;
              }

              else
              {
                v11 = OSData::withBytesNoCopy(v40[0], v40[1]);
                v12 = IOService::serviceMatching("AppleSSE", 0);
                v13 = IOService::copyMatchingService(v12);
                v14 = OSMetaClassBase::safeMetaCast(v13, AppleSSEInterface::metaClass);
                if (v14)
                {
                  v15 = v14;
                  v31 = v12;
                  v32 = v13;
                  v16 = OSData::withBytesNoCopy(bytes[1], numBytes[0]);
                  v30 = v9;
                  v17 = OSData::withBytesNoCopy(&numBytes[1], 0x18u);
                  v29 = v11;
                  v18 = OSData::withBytesNoCopy(v38 + 12, 8u);
                  v19 = OSData::withBytesNoCopy(&v38[1] + 4, 8u);
                  v20 = OSData::withBytesNoCopy(&v38[1] + 12, 8u);
                  v21 = v15->__vftable;
                  v28 = a3;
                  v22 = v15;
                  v23 = v19;
                  v24 = v29;
                  v25 = (v21[12].Dispatch)(v22, v30, v16, v17, v18, v19, v20, v29, &v34, v28, a4);
                  if (v16)
                  {
                    (v16->release_0)(v16);
                  }

                  if (v17)
                  {
                    (v17->release_0)(v17);
                  }

                  v13 = v32;
                  if (v18)
                  {
                    (v18->release_0)(v18);
                  }

                  if (v23)
                  {
                    (v23->release_0)(v23);
                  }

                  if (v20)
                  {
                    (v20->release_0)(v20);
                  }

                  if (v25)
                  {
                    v26 = 1;
                  }

                  else
                  {
                    v26 = v34 == 0;
                  }

                  v27 = v25;
                  v12 = v31;
                  if (v26)
                  {
                    v5 = mapAppleSSEError(v27);
                  }

                  else
                  {
                    *a2 = v34;
                    if (*a4 && (*(**a4 + 144))(*a4) >= 2)
                    {
                      (*(**a4 + 264))(*a4, 1);
                    }

                    v5 = 0;
                  }
                }

                else
                {
                  v5 = 4294966587;
                  v24 = v11;
                }

                if (v24)
                {
                  (v24->release_0)(v24);
                }

                if (v12)
                {
                  (v12->release_0)(v12);
                }

                if (v13)
                {
                  (v13->release_0)(v13);
                }
              }
            }

            else
            {
              v5 = 4294940286;
            }
          }

          else
          {
            v5 = 4294936274;
          }
        }
      }
    }
  }

  if (v40[0])
  {
    vchs9e72gvima(103, v40[0], 0, 0, 0);
  }

  return v5;
}

uint64_t ASIOKit::FJ6UnG2J0DlyL43A(uint64_t a1, uint64_t a2)
{
  tv.tv_sec = 0;
  *&tv.tv_usec = 0;
  v3 = IOService::serviceMatching("IOPMPowerSource", 0);
  v4 = IOService::copyMatchingService(v3);
  v5 = OSMetaClassBase::safeMetaCast(v4, IOPMPowerSource::metaClass);
  if (v5)
  {
    v6 = v5;
    *(a2 + 8) = IOPMPowerSource::isCharging(v5);
    *(a2 + 4) = IOPMPowerSource::capacityPercentRemaining(v6);
    v11 = 0;
    vchs9e72gvima(100, 0, 0, 0, &v11);
    *a2 = v11;
    microtime(&tv);
    read_random((a2 + 9), 0x20u);
    v7 = 0;
    v8 = tv.tv_usec + 1000000 * tv.tv_sec;
    *(a2 + 9) = xmmword_8A0;
    v9 = vdupq_n_s64(v8);
    *(a2 + 25) = xmmword_8B0;
    *(a2 + 9) = vmovn_s16(vuzp1q_s16(vuzp1q_s32(vshlq_u64(v9, xmmword_8D0), vshlq_u64(v9, xmmword_8C0)), vuzp1q_s32(vshlq_u64(v9, xmmword_8F0), vshlq_u64(v9, xmmword_8E0))));
    if (!v3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v7 = 3758097084;
  if (v3)
  {
LABEL_3:
    (v3->release_0)(v3);
  }

LABEL_4:
  if (v4)
  {
    (v4->release_0)(v4);
  }

  return v7;
}

uint64_t ASIOKit::DqycVGt64ff4YTON(uint64_t a1, uint64_t a2)
{
  *a2 = xmmword_900;
  *(a2 + 16) = OSArray::withCapacity(6u);
  v3 = OSString::withCString("1.2.840.113635.100.10.1");
  v4 = (*(**(a2 + 16) + 232))();
  if (v3)
  {
    (v3->release_0)(v3);
  }

  if (v4)
  {
    v5 = OSString::withCString("1.2.840.113635.100.8.3");
    v6 = (*(**(a2 + 16) + 232))(*(a2 + 16), v5);
    if (v5)
    {
      (v5->release_0)(v5);
    }

    if (v6)
    {
      v7 = OSString::withCString("1.2.840.113635.100.8.4");
      v8 = (*(**(a2 + 16) + 232))(*(a2 + 16), v7);
      if (v7)
      {
        (v7->release_0)(v7);
      }

      if (v8)
      {
        v9 = OSString::withCString("1.2.840.113635.100.8.5");
        v10 = (*(**(a2 + 16) + 232))(*(a2 + 16), v9);
        if (v9)
        {
          (v9->release_0)(v9);
        }

        if (v10)
        {
          v11 = OSString::withCString("1.2.840.113635.100.8.6");
          v12 = (*(**(a2 + 16) + 232))(*(a2 + 16), v11);
          if (v11)
          {
            (v11->release_0)(v11);
          }

          if (v12)
          {
            v13 = OSString::withCString("1.2.840.113635.100.8.7");
            v14 = (*(**(a2 + 16) + 232))(*(a2 + 16), v13);
            if (v13)
            {
              (v13->release_0)(v13);
            }

            if (v14)
            {
              *(a2 + 24) = OSString::withCString("{kMAOptionsBAAValidity: 525600, kMAOptionsBAAOIDSToInclude: [1.2.840.113635.100.10.1, 1.2.840.113635.100.8.3, 1.2.840.113635.100.8.4, 1.2.840.113635.100.8.5, 1.2.840.113635.100.8.6, 1.2.840.113635.100.8.7], kMAOptionsBAASCRTAttestation: true}");
            }
          }
        }
      }
    }
  }

  return 0;
}

uint64_t ASIOKit::mzk5nw1OBhhZhoIc(ASIOKit *this, OSData *a2)
{
  v2 = IOService::serviceMatching("AppleSSE", 0);
  v3 = IOService::copyMatchingService(v2);
  v4 = OSMetaClassBase::safeMetaCast(v3, AppleSSEInterface::metaClass);
  if (v4)
  {
    v5 = (v4->__vftable[13].getRetainCount)(v4, 1);
    if (!v2)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v5 = 3758097095;
  if (v2)
  {
LABEL_3:
    (v2->release_0)(v2);
  }

LABEL_4:
  if (v3)
  {
    (v3->release_0)(v3);
  }

  return v5;
}

uint64_t ASIOKit::iNf2g36QrGHJ5jTQ(uint64_t a1, uint64_t *a2, BOOL *a3)
{
  result = 4294940294;
  if (a2 && a3)
  {
    v5 = *a2;
    if (*a2)
    {
      if (PE_i_can_has_debugger(0))
      {
        is_development = 1;
      }

      else
      {
        is_development = kern_config_is_development();
      }

      *a3 = is_development;
    }

    if ((v5 & 2) != 0)
    {
      v7 = developer_mode_state();
      result = 0;
      a3[1] = v7;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t ASIOKit::rjHaa7EHR0CWHw8F(ASIOKit *this, OSArray **a2)
{
  v3 = IOService::serviceMatching("AppleSSE", 0);
  v4 = IOService::copyMatchingService(v3);
  v5 = OSMetaClassBase::safeMetaCast(v4, AppleSSEInterface::metaClass);
  if (v5)
  {
    v6 = (v5->__vftable[13].release)(v5, 1, a2);
    if (!v3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v6 = 3758097095;
  if (v3)
  {
LABEL_3:
    (v3->release_0)(v3);
  }

LABEL_4:
  if (v4)
  {
    (v4->release_0)(v4);
  }

  return v6;
}

uint64_t ASIOKit::asiokitGetKernelInfoSignalsGated(uint64_t a1, void *a2, void *a3)
{
  if (*a2 == 1)
  {
    return ASIOKit::asiokitGetKernelInfoIOPortSignals(a1, a2, a3);
  }

  else
  {
    return 3758096385;
  }
}

uint64_t ASIOKit::asiokitGetKernelInfoIOPortSignals(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = IOService::serviceMatching("IOPortTransportState", 0);
  v5 = IOService::copyMatchingService(v4);
  v6 = OSMetaClassBase::safeMetaCast(v5, IOPortTransportState::metaClass);
  v7 = IOService::serviceMatching("IOAccessoryManager", 0);
  v8 = IOService::copyMatchingService(v7);
  v9 = OSMetaClassBase::safeMetaCast(v8, IOAccessoryManager::metaClass);
  if (v6)
  {
    v10 = v9 == 0;
  }

  else
  {
    v10 = 1;
  }

  if (v10)
  {
    v11 = 3758097084;
    if (v4)
    {
LABEL_11:
      (v4->release_0)(v4);
    }
  }

  else
  {
    v12 = v9;
    v13 = v6[19];
    if (v13)
    {
      PortType = IOPort::getPortType(v6[19]);
      v15 = *(v13 + 249) & 1;
      *a3 = PortType;
      a3[1] = v15;
      a3[2] = IOPort::getConnectionActiveDurationS(v13);
    }

    a3[3] = IOPortTransportState::getTransportType(v6);
    v11 = 0;
    a3[4] = IOAccessoryManager::getUSBConnectType(v12);
    if (v4)
    {
      goto LABEL_11;
    }
  }

  if (v5)
  {
    (v5->release_0)(v5);
  }

  if (v7)
  {
    (v7->release_0)(v7);
  }

  if (v8)
  {
    (v8->release_0)(v8);
  }

  return v11;
}

OSMetaClass *_GLOBAL__sub_I_ASIOKit_cpp()
{
  result = OSMetaClass::OSMetaClass(&ASIOKit::gMetaClass, "ASIOKit", &IOService::gMetaClass, 0x90u);
  result->__vftable = off_50E58;
  return result;
}

void sub_F8FC(uint64_t a1)
{
  v1 = *a1 ^ (1666337839 * ((-954485509 - (a1 | 0xC71BB4FB) + (a1 | 0x38E44B04)) ^ 0xB25EC803));
  v2 = *(a1 + 8);
  v3 = *(v2 + 88);
  v5 = *(v2 + 40);
  v4 = *(v2 + 48);
  v6 = *(v2 + 56);
  v7 = *(v2 + 24);
  v8 = *(v2 + 32);
  v9 = *(v2 + 72);
  v10 = *(&off_538D0 + (v1 ^ 0x80CF95F2)) - 4;
  v11 = *(&off_538D0 + (v1 ^ 0x80CF95EC));
  v12 = *(&off_538D0 + (v1 ^ 0x80CF95EA));
  v13 = *(&off_538D0 + v1 + 2133879375);
  v14 = *(v2 + 8);
  __asm { BRAA            X10, X17 }
}

uint64_t sub_FA08()
{
  __asm { BTI             j }

  return (*(v1 + 8 * v0))();
}

uint64_t sub_FA20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, int a8)
{
  __asm { BTI             j }

  *(v11 + 48) = v10;
  *(v11 + 56) = v8;
  *(v11 + 116) = 2;
  if (a4)
  {
    _ZF = a3 == 0;
  }

  else
  {
    _ZF = 1;
  }

  v18 = _ZF || v12 == 0;
  *(v11 + 64) = v9;
  v21 = v18 || v9 == 0 || a1 == 0;
  *(v11 + 668) = 631900890;
  return (*(v13 + 8 * ((101 * ((v21 ^ (a5 + a8 - 1)) & 1)) ^ (a5 + a8 + 969))))();
}

uint64_t sub_FA8C@<X0>(uint64_t a1@<X1>, int a2@<W6>, int a3@<W8>)
{
  __asm { BTI             j }

  v11 = *v5;
  *(a1 + 456) = *v5;
  *(v4 + 716) = v11;
  *(v4 + 668) = a3 + 2;
  return (*(v6 + 8 * (((v11 > v3 - 235) * ((a2 + v3 + 566 - 446) ^ (a2 + 314))) ^ (v3 + 566))))();
}

uint64_t sub_FAD8()
{
  __asm { BTI             j }

  v7 = *(v1 + 716) == ((v0 - 254) ^ 0x226);
  *(v1 + 723) = v7;
  *(v1 + 284) = 0;
  return (*(v2 + 8 * ((v7 * (v0 - 701)) ^ (v0 - 254))))();
}

uint64_t sub_FB18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  __asm { BTI             j }

  *(v7 + 88) = a3;
  *(v7 + 72) = a6;
  v14 = v6 ^ 0x261;
  *(v7 + 36) = v9;
  *(v7 + 724) = v9 + 1579576720;
  *(v7 + 731) = (v9 + 1579576720) < 0x672BA5FA;
  v15 = *(v7 + 716) << ((v14 ^ 0xC) - 73);
  *(v7 + 16) = v15;
  *(v7 + 732) = v15;
  v16 = *(a2 + 456) & 3;
  *(a2 + 488) = v16;
  v17 = *(v8 + 8 * v14);
  *(v7 + 24) = a1;
  *(v7 + 288) = 0;
  *(v7 + 296) = 0;
  return v17(-4, a1 + 8, v16 - 1, a4, 4294967087, 202);
}

uint64_t sub_FBC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, int a6)
{
  __asm { BTI             j }

  return (*(v7 + 8 * (((a1 + 4 != (((v6 - 522) | 0x92u) ^ a5)) * a6) ^ v6)))();
}

uint64_t sub_FBFC(int a1)
{
  __asm { BTI             j }

  v10 = a1 + (v4 ^ 0x20C ^ (v1 - 144) ^ (v4 + 1911197356) & 0x8E156FDB) + 4;
  v11 = v3 ^ (v10 < v1);
  v12 = v10 < v2;
  if (v11)
  {
    v12 = v3;
  }

  return (*(v5 + 8 * ((398 * v12) ^ v4)))();
}

uint64_t sub_FC70(uint64_t a1, int *a2, uint64_t a3, uint64_t a4)
{
  __asm { BTI             j }

  v18 = (v4 + v5 + 506) ^ v4;
  v19 = *(v12 + (v11 & 0xC)) ^ *(a4 + a1 + 4) ^ *(v8 + (v11 & 0xC)) ^ *((v11 & 0xC) + v9 + 7) ^ (((v4 + v5 - 6) & 0x5B ^ 0x1A) * (v11 & 0xC)) & 0xFC | ((*(v12 + ((v18 - 564) & (a1 + 5))) ^ *(a4 + a1 + 5) ^ (((v18 - 52) & (a1 + 5)) * v13) ^ *(v8 + ((v18 - 564) & (a1 + 5))) ^ *(((v18 - 564) & (a1 + 5)) + v9 + 7)) << 8) | ((*(a4 + a1 + 6) ^ (((a1 + 6) & 0xE) * v13) & 0xFE ^ *(v12 + ((a1 + 6) & 0xE)) ^ *(v8 + ((a1 + 6) & 0xE)) ^ *(((a1 + 6) & 0xE) + v9 + 7)) << 16);
  v20 = *(a4 + a1 + 7) ^ (((a1 + 7) & 0xF) * v13) ^ *(v12 + ((a1 + 7) & 0xF)) ^ *(v8 + ((a1 + 7) & 0xF)) ^ *(((a1 + 7) & 0xF) + v9 + 7);
  v21 = *(v7 + 96);
  *a2 = v19 | (v20 << 24);
  return (*(v10 + 8 * (v5 ^ (226 * (a3 == v6)))))(a1 + 4, a2 + 6);
}

uint64_t sub_FDCC@<X0>(uint64_t a1@<X0>, int a2@<W8>)
{
  __asm { BTI             j }

  *(v2 + 976) = a1;
  *(v2 + 288) = v5;
  *(v2 + 296) = a1 + 4;
  *(v2 + 984) = v5 - 1;
  *(v2 + 992) = a1 + 4;
  *(v2 + 668) = a2;
  *(v2 + 284) = *(v2 + 16);
  v10 = *(v3 + 8 * v4);
  v11 = *(v2 + 72);
  v12 = *(v2 + 84);
  v13 = *(v2 + 36);
  v14 = *(v2 + 88);
  return v10(*(v2 + 24));
}

uint64_t sub_FE30(uint64_t a1, void *a2)
{
  __asm { BTI             j }

  *(v3 + 748) = *(v3 + 284);
  *(v3 + 752) = v6 + 489726373;
  *(v3 + 759) = (v6 + 489726373) < 0x2635DA0F;
  a2[64] = v4 + 8;
  v11 = *(v3 + 64);
  a2[65] = v11 + 32;
  a2[66] = v4 + 48;
  a2[67] = v11 + 84;
  a2[68] = v11;
  a2[69] = v11 + 16;
  a2[70] = v4 + 56;
  a2[71] = v11 + 20;
  a2[72] = v4 + 64;
  a2[73] = v11 + 96;
  a2[74] = v4 + 72;
  a2[75] = v11 + 100;
  a2[76] = v4 + 80;
  a2[77] = v11 + 136;
  *(v3 + 872) = v6 - 1416455201;
  *(v3 + 879) = (v6 - 1416455201) < 0xB497D449;
  *(v3 + 880) = v6 - 222755614;
  *(v3 + 887) = (v6 - 222755614) < 0xFBBE3D4C;
  v12 = (((v2 + 173) | 0x109) ^ 0x542AD9FE) + v6;
  *(v3 + 888) = v12;
  *(v3 + 895) = v12 < 0x5D30132D;
  a2[81] = v4 + 40;
  *(v3 + 904) = v6 - 1015609049;
  *(v3 + 911) = (v6 - 1015609049) < 0xCC7C4191;
  a2[83] = v4 + 32;
  *(v3 + 920) = v6 - 437688026;
  *(v3 + 927) = (v6 - 437688026) < 0xEEEEA190;
  a2[85] = v11 + 24;
  a2[86] = v4 + 16;
  *(v3 + 944) = v6 + 570734936;
  *(v3 + 951) = (v6 + 570734936) < 0x2B09F1C2;
  a2[88] = v11 + 36;
  a2[89] = v4 + 24;
  *(v3 + 968) = v6 - 955725845;
  *(v3 + 975) = (v6 - 955725845) < 0xD00E0055;
  *(v3 + 384) = 0;
  v13 = *(v3 + 748);
  return (*(v5 + 8 * v2))();
}

uint64_t sub_10020(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, int a7, int a8)
{
  __asm { BTI             j }

  *(v8 + 116) = 3;
  *(v8 + 1604) = 373483406;
  return (*(v9 + 8 * ((((a8 ^ (a7 + 85)) - 249) * (a4 != 0)) ^ (a5 + a8 + 203))))();
}

uint64_t sub_1006C@<X0>(unsigned int *a1@<X3>, int a2@<W4>, int a3@<W8>)
{
  __asm { BTI             j }

  v11 = v3 ^ v4;
  v12 = *a1;
  *(v5 + 1608) = *a1;
  *(v5 + 1604) = a3 - 100;
  return (*(v6 + 8 * (((v12 <= a2 + v11 + 17) * ((v3 + 559) ^ 0x340)) ^ v3)))();
}

uint64_t sub_100B4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X3>, int a3@<W4>, int a4@<W8>)
{
  __asm { BTI             j }

  *(v5 + 1615) = *(v5 + 1608);
  v10 = *(a2 + 8);
  v11 = *(a2 + 16);
  *(a1 + 1368) = v10;
  *(a1 + 1376) = v11;
  if (v10)
  {
    _ZF = v11 == 0;
  }

  else
  {
    _ZF = 1;
  }

  v13 = _ZF;
  *(v5 + 1604) = a4;
  return (*(v6 + 8 * ((v13 * (((v4 - 1755487139) & 0x68A29ADF ^ (a3 - 584)) + ((v4 - 1828718027) & 0xEDCF97EE))) | v4)))();
}

uint64_t sub_1012C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  __asm { BTI             j }

  v14 = *(v8 + 1608);
  v15 = ((v7 + 12845605) | 0x800B90C2) ^ (a7 + 358);
  _ZF = v14 == v15;
  v16 = v14 != v15;
  v17 = _ZF;
  *(v8 + 975) = v17;
  return (*(v9 + 8 * ((v16 * ((a7 + v7 - 377) ^ (a7 + 394))) ^ v7)))();
}

uint64_t sub_10184(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  __asm { BTI             j }

  *(v6 + 1420) = 0;
  v12 = *(a2 + 1368);
  v13 = *(v6 + 1608);
  return (*(v7 + 8 * (a5 + v5 + 122)))();
}

uint64_t sub_101B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, int a7)
{
  __asm { BTI             j }

  return (*(v10 + 8 * (((*(v7 + 8 * v9) != 0) * ((v8 ^ (a7 + 78)) - 322)) ^ (a5 + v8 + 294))))();
}

uint64_t sub_101EC@<X0>(int a1@<W4>, int a2@<W8>)
{
  __asm { BTI             j }

  return (*(v6 + 8 * ((((v5 ^ a2) + v3 + ((v5 - a1 - 122) ^ 0xFFFFFFFD) == v2) * v4) ^ v5)))();
}

uint64_t sub_10224@<X0>(int a1@<W4>, int a2@<W8>)
{
  __asm { BTI             j }

  *(v4 + 1420) = v3;
  *(v4 + 1636) = v2;
  return (*(v5 + 8 * (a1 + a2 + 497)))();
}

uint64_t sub_10244@<X0>(int a1@<W4>, uint64_t a2@<X5>, int a3@<W6>, int a4@<W8>)
{
  __asm { BTI             j }

  *(v4 + 72) = a2;
  v10 = a1 + a4 + 841;
  v11 = 32 * *(v4 + 1608) + 0x6AA21C01602052E3;
  *(v4 + 232) = ((((v11 ^ 0x8B16D8DC11641360) + 0x1E4B3B228EBBBE45) ^ v11 ^ ((v11 ^ 0xF7B702456E37A914) + ((a1 + a4 - 128) ^ 0x62EAE1BBF1E8045FLL)) ^ ((v11 ^ 0xE94E3875A1CCF9DALL) + 0x7C13DB8B3E1354FFLL) ^ ((v11 ^ 0xFF4DFEEDBEBF1174) + 0x6A101D132160BC52)) & 0xFFFFFFFFFFFFFFF8 ^ 0x6AA21C01602052D8) + 16;
  v12 = (*(v5 + 8 * (a4 ^ (a3 - 833))))();
  *(v4 + 1640) = v12;
  *(v4 + 1424) = 0;
  return (*(v5 + 8 * (((2 * (v12 != 0)) | (8 * (v12 != 0))) ^ v10)))();
}

uint64_t sub_10388(uint64_t a1, uint64_t a2)
{
  __asm { BTI             j }

  v9 = *(a2 + 1392);
  v10 = *(v2 + 232);
  *v9 = 0;
  v9[1] = v10;
  *(a2 + 1176) = v9 + 2;
  return (*(v4 + 8 * v3))();
}

uint64_t sub_103AC(uint64_t a1, uint64_t a2)
{
  __asm { BTI             j }

  v10 = *(a2 + 1176);
  *(a2 + 1400) = v10;
  *v4 = v10;
  *v10 = *(v2 + 1615);
  *(v2 + 1604) = 373510408;
  v11 = *(v2 + 72);
  return (*(v5 + 8 * ((*(v2 + 975) * (((v3 + 570) | 0x42) ^ 0x25B)) ^ v3)))();
}

uint64_t sub_1041C@<X0>(void *a1@<X1>, int a2@<W8>)
{
  __asm { BTI             j }

  a1[176] = v2 + 2480;
  a1[177] = v2 + 2560;
  a1[178] = v2 + 2525;
  a1[179] = v2 + 2482;
  a1[180] = v2 + 2513;
  a1[181] = v2 + 2544;
  a1[182] = v2 + 2792;
  a1[183] = v2 + 2676;
  a1[184] = v2 + 2600;
  a1[185] = v2 + 3048;
  a1[186] = v2 + 2972;
  a1[187] = v2 + 3036;
  a1[188] = v2 + 2920;
  a1[189] = v2 + 2612;
  a1[190] = v2 + 2740;
  a1[191] = v2 + 2908;
  a1[192] = v2 + 2560;
  a1[193] = v2 + 2664;
  a1[194] = v2 + 2856;
  a1[195] = v2 + 2692;
  a1[196] = v2 + 2768;
  a1[197] = v2 + 2844;
  a1[198] = v2 + 2804;
  a1[199] = v2 + 2728;
  a1[200] = v2 + 2984;
  a1[201] = v2 + 2588;
  a1[202] = v2 + 2960;
  *(v2 + 1872) = v2 + 2896;
  *(v2 + 1880) = v2 + 2780;
  *(v2 + 1888) = v2 + 3100;
  *(v2 + 1896) = v2 + 3000;
  *(v2 + 1904) = v2 + 3076;
  *(v2 + 1912) = v2 + 3012;
  *(v2 + 1920) = v2 + 2652;
  *(v2 + 1928) = v2 + 3088;
  *(v2 + 1936) = v2 + 2936;
  *(v2 + 1944) = v2 + 2832;
  *(v2 + 1952) = v2 + 2704;
  *(v2 + 1960) = v2 + 3052;
  *(v2 + 1968) = v2 + 3024;
  *(v2 + 1976) = v2 + 2716;
  *(v2 + 1984) = v2 + 2576;
  *(v2 + 1992) = v2 + 2640;
  *(v2 + 2000) = v2 + 2628;
  *(v2 + 2008) = v2 + 2820;
  *(v2 + 2016) = v2 + 2756;
  *(v2 + 2024) = v2 + 2924;
  *(v2 + 2032) = v2 + 2884;
  *(v2 + 2040) = v2 + 2616;
  *(v2 + 2048) = v2 + 2860;
  *(v2 + 2056) = v2 + 2680;
  *(v2 + 2064) = v2 + 2796;
  *(v2 + 2072) = v2 + 2564;
  *(v2 + 2080) = v2 + 2872;
  *(v2 + 2088) = v2 + 2988;
  *(v2 + 2096) = v2 + 2948;
  *(v2 + 2104) = v2 + 2668;
  *(v2 + 2112) = v2 + 3064;
  *(v2 + 2120) = v2 + 3040;
  *(v2 + 2128) = v2 + 2744;
  *(v2 + 2136) = v2 + 2808;
  *(v2 + 2144) = v2 + 2604;
  *(v2 + 2152) = v2 + 2912;
  *(v2 + 2160) = v2 + 2732;
  *(v2 + 2168) = v2 + 2784;
  *(v2 + 2176) = v2 + 2976;
  *(v2 + 2184) = v2 + 3092;
  *(v2 + 2192) = v2 + 3028;
  *(v2 + 2200) = v2 + 3104;
  *(v2 + 2208) = v2 + 2848;
  *(v2 + 2216) = v2 + 2540;
  *(v2 + 2224) = v2 + 2545;
  *(v2 + 2232) = v2 + 2504;
  *(v2 + 2240) = *(v2 + 1656);
  *(v2 + 2248) = v2 + 2509;
  *(v2 + 2256) = v2 + 2535;
  *(v2 + 2264) = v2 + 2550;
  *(v2 + 2272) = v2 + 2492;
  *(v2 + 2280) = v2 + 2528;
  *(v2 + 2288) = v2 + 2495;
  *(v2 + 2296) = v2 + 2533;
  *(v2 + 2304) = v2 + 2547;
  *(v2 + 2312) = v2 + 2538;
  *(v2 + 2320) = v2 + 2507;
  *(v2 + 2328) = v2 + 2523;
  *(v2 + 2336) = v2 + 2514;
  *(v2 + 2344) = v2 + 2524;
  *(v2 + 2352) = v2 + 2521;
  *(v2 + 2360) = v2 + 2483;
  *(v2 + 2368) = v2 + 2485;
  *(v2 + 2376) = v2 + 2516;
  *(v2 + 2384) = v2 + 2500;
  *(v2 + 2392) = v2 + 2552;
  *(v2 + 344) = v2 + 2497;
  *(v2 + 392) = v2 + 2488;
  *(v2 + 440) = v2 + 2531;
  *(v2 + 456) = v2 + 2502;
  *(v2 + 512) = v2 + 2522;
  *(v2 + 560) = v2 + 2543;
  *(v2 + 608) = v2 + 2526;
  *(v2 + 648) = v2 + 2481;
  *(v2 + 680) = v2 + 2510;
  *(v2 + 760) = v2 + 2505;
  *(v2 + 768) = v2 + 2512;
  *(v2 + 776) = v2 + 2517;
  *(v2 + 784) = v2 + 2490;
  *(v2 + 792) = v2 + 2541;
  *(v2 + 800) = v2 + 2529;
  *(v2 + 808) = v2 + 2491;
  *(v2 + 816) = v2 + 2486;
  *(v2 + 824) = v2 + 2503;
  *(v2 + 832) = v2 + 2536;
  *(v2 + 840) = v2 + 2548;
  *(v2 + 848) = v2 + 2496;
  *(v2 + 856) = v2 + 2553;
  *(v2 + 864) = v2 + 2519;
  *(v2 + 896) = v2 + 2546;
  *(v2 + 912) = v2 + 2539;
  *(v2 + 928) = v2 + 2498;
  *(v2 + 936) = v2 + 2493;
  *(v2 + 952) = v2 + 2515;
  *(v2 + 960) = v2 + 2489;
  *(v2 + 168) = v2 + 2527;
  *(v2 + 176) = v2 + 2520;
  *(v2 + 184) = v2 + 2551;
  *(v2 + 200) = v2 + 2532;
  *(v2 + 208) = v2 + 2484;
  *(v2 + 216) = v2 + 2508;
  *(v2 + 224) = v2 + 2534;
  *(v2 + 240) = v2 + 2501;
  *(v2 + 248) = *(v2 + 1608);
  v8 = *(v3 + 8 * a2);
  *(v2 + 1408) = 0;
  *(v2 + 104) = v3;
  return v8();
}

uint64_t sub_10874(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  __asm { BTI             j }

  v12 = v7[145];
  v13 = *(v7[171] + 8 * v12);
  v7[1] = v13;
  v7[2] = v12;
  v14 = *(v7[172] + 4 * v12);
  v15 = (v12 << (v5 + 102)) + v7[175] + 1;
  v7[3] = v15;
  *(v6 + 2404) = v5 - a5 - 1553598223 + v14;
  if (v13)
  {
    _ZF = v15 == 0;
  }

  else
  {
    _ZF = 1;
  }

  v17 = _ZF;
  *(v6 + 1600) = 373467508;
  return (*(v8 + 8 * ((53 * v17) ^ v5)))();
}

uint64_t sub_10900(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  __asm { BTI             j }

  *(v6 + 1504) = 0;
  return (*(v8 + 8 * (a5 + v5 + 381)))(*(v7 + 1408), a2, 322782292, *(v7 + 1416));
}

uint64_t sub_10950@<X0>(uint64_t a1@<X0>, int a2@<W1>, int a3@<W2>, uint64_t a4@<X3>, __int16 a5@<W5>, __int16 a6@<W7>, __int16 a7@<W8>)
{
  __asm { BTI             j }

  *(a1 + (v10 * v8 - ((((v10 * v8) * a2) >> 16) >> 3) * a6)) = v11;
  *(a4 + 4 * (a5 + v10 * v9 - (((((a5 + v10 * v9) >> 1) * v12) >> 16) >> 4) * a7)) = a3;
  v18 = 2 * (v10 & 1) + (v10 ^ 1u) > 0x3F;
  return (*(v13 + 8 * ((v18 | (2 * v18)) ^ (v7 + 675))))();
}

uint64_t sub_109B8()
{
  __asm { BTI             j }

  *(v2 + 1504) = v1;
  v8 = *(v2 + 2404);
  *(v2 + 1556) = 1261935322;
  *(v2 + 1560) = -672432465;
  *(v2 + 1564) = (8 * (((v8 ^ 0xBA9FD3F3) + 22396517) ^ v8 ^ ((v8 ^ 0x469638C) + 530779676) ^ ((v8 ^ 0x58C8DF8) + 507961456) ^ ((v8 ^ 0x1F4FAFEF) + (v0 ^ 0x485C32D)))) ^ 0xEAB301DC;
  *(v2 + 1568) = -509495911;
  *(v2 + 1572) = 1626697784;
  *(v2 + 1576) = -1449403976;
  *(v2 + 1580) = -1185668936;
  *(v2 + 1584) = 315737032;
  *(v2 + 1588) = -1924557736;
  *(v2 + 1592) = 0;
  *(v2 + 1599) = 0;
  return (*(v3 + 8 * v0))();
}

uint64_t sub_10ACC(int a1)
{
  __asm { BTI             j }

  *(v2 + 968) = a1;
  *(v2 + 2431) = *(v2 + 1599);
  *(v2 + 1004) = *(v2 + 1592);
  *(v2 + 1008) = *(v2 + 1588);
  *(v2 + 1012) = *(v2 + 1584);
  *(v2 + 1044) = *(v2 + 1580);
  *(v2 + 1084) = *(v2 + 1576);
  *(v2 + 1104) = *(v2 + 1572);
  *(v2 + 1108) = *(v2 + 1568);
  *(v2 + 1148) = *(v2 + 1564);
  *(v2 + 1204) = *(v2 + 1560);
  *(v2 + 164) = *(v2 + 1556);
  return (*(v3 + 8 * ((75 * (*(v2 + 968) + ((v1 + 855) ^ 0xDBCA6E87) >= v1 - 200)) ^ v1)))();
}

uint64_t sub_10B6C()
{
  __asm { BTI             j }

  v7 = v0 + 675;
  v8 = 7 * ((v0 + 675) ^ 0x3B2);
  v9 = v0 + 407;
  v10 = *(v1 + 968);
  *(v1 + 196) = v10 + v9 + (v8 ^ 0x81668407);
  return (*(v2 + 8 * ((28 * (v10 > 0x24359268)) ^ v7)))();
}

uint64_t sub_10BCC(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  __asm { BTI             j }

  v5[379] = v5[251];
  v5[380] = 1150109528;
  v12 = *(v6 + 8);
  return (*(v7 + 8 * a1))((a1 - 4) ^ 0x408u, a2, a3, *(v6 + 1408), a5, v5[49]);
}

uint64_t sub_10C4C(int a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, unsigned int a6, int a7, int a8)
{
  __asm { BTI             j }

  v26 = (((a7 ^ 0xCC17ECF1) + 870847247) ^ ((a7 ^ v19) + v20) ^ ((a1 ^ a7 ^ 0xD140A41B) + v18)) * v9 - 2084897848;
  *(a4 + v26 - ((((v26 >> 1) * v11) >> 32) >> 5) * a8) = *(v10 + v12) - ((2 * *(v10 + v12)) & 0xA4) - 46;
  v27 = (((a7 ^ v15) - 900368115) ^ ((a7 ^ 0xE0D6710E) + v14) ^ ((a7 ^ 0xF1DDDFC7) + 1846431580)) + ((((2 * (a7 & 1)) ^ 0xCEFD201E) + v21) ^ ((2 * (a7 & 1)) | 0x12102F00) ^ (((2 * (a7 & 1)) ^ v16) - 606734666)) - 1579556194;
  v28 = (v27 ^ 0x50E7A41E) & (2 * (v27 & 0x98F7B69C)) ^ v27 & 0x98F7B69C;
  v29 = ((2 * (v27 ^ 0x6183C106)) ^ 0xF2E8EF34) & (v27 ^ 0x6183C106) ^ (2 * (v27 ^ 0x6183C106)) & a5;
  v30 = v29 ^ 0x914108A;
  v31 = (v29 ^ 0xE0606610) & (4 * v28) ^ v28;
  v32 = ((4 * v30) ^ 0xE5D1DE68) & v30 ^ (4 * v30) & (a5 - 2);
  v33 = (v32 ^ 0xE1505600) & (16 * v31) ^ v31;
  v34 = ((16 * (v32 ^ 0x18242192)) ^ 0x974779A0) & (v32 ^ 0x18242192) ^ (16 * (v32 ^ 0x18242192)) & (a5 - 10);
  v35 = v33 ^ a5 ^ (v34 ^ 0x91447100) & (v33 << 8);
  v36 = v27 ^ (2 * ((v35 << 16) & v13 ^ v35 ^ ((v35 << 16) ^ 0x779A0000) & (((v34 ^ 0x6830061A) << 8) & v13 ^ 0x9000000 ^ (((v34 ^ 0x6830061A) << 8) ^ 0x74770000) & (v34 ^ 0x6830061A))));
  v37 = (((v36 ^ 0x86840F00) - 1245057520) ^ ((v36 ^ 0x51D8EA0F) + 1653934849) ^ ((v36 ^ 0x5F63BCA7) + 1814977961)) - 366388217;
  v39 = v37 > 0xA59C14AE && a6 > v37;
  return (*(v17 + 8 * (v8 | (4 * v39))))();
}

uint64_t sub_10F28(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, int a8)
{
  __asm { BTI             j }

  *(v10 + 1520) = a7;
  *(v10 + 1516) = v9;
  *(v10 + 724) = v9;
  v16 = *(v10 + 968);
  *(*(v10 + 1656) + v16 * (((a1 + 254) | 0x25A) ^ 0x350) - 352294776 - (((((v16 * (((a1 + 254) | 0x25A) ^ 0x350u) - 352294776) >> 1) * v8) >> 32) >> 5) * a8) = 82;
  *(v10 + 1448) = *(v10 + 1148);
  *(v10 + 1452) = v9;
  *(v10 + 1459) = 2;
  *(v10 + 1460) = v16;
  *(v10 + 1512) = v9;
  return (*(v11 + 8 * ((1252 * (v16 - 607490664 < 288 * (a1 ^ 0x20u) - 801)) ^ a1)))();
}

uint64_t sub_10FE0(uint64_t a1, uint64_t a2)
{
  __asm { BTI             j }

  *(v3 + 1440) = *(v3 + 1004) + ((v2 - 589) | 0x241u) + 1161930354;
  return (*(v5 + 8 * v2))(0, a2, 3133035963, *(v4 + 8), 164, *(v4 + 1408));
}

uint64_t sub_11038(int a1, int a2, int a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, __int16 a8)
{
  __asm { BTI             j }

  *(a6 + ((a1 & v11) * v9 - (((((a1 & v11) * v9) * a2) >> 16) >> 3) * a8)) = *(a4 + (v8 + a3)) - (a5 & (2 * *(a4 + (v8 + a3)))) - 46;
  return (*(v12 + 8 * (((4 * (((a1 + 257) & 0xC0) == 0)) | (8 * (((a1 + 257) & 0xC0) == 0))) ^ v10)))();
}

uint64_t sub_11098(int a1, uint64_t a2, int a3)
{
  __asm { BTI             j }

  *(v5 + 1444) = a1;
  v11 = *(v5 + 968);
  v12 = (2 * (((v11 ^ 0xC4E1B26E) + 522969082) ^ v11 ^ ((v11 ^ 0x5C535575) + 127482083) ^ ((v11 ^ 0x4368868E) + 413330202) ^ ((v11 ^ 0x7FEFF3FD) + (((v4 ^ 0x3F0) + 1166855004) & 0xBA7337FB ^ 0x24259D10)))) & 0xFFFFFF80;
  v13 = ((v11 ^ 0xC5112E85) + 517686035) ^ v11 ^ ((v11 ^ 0x8C6660E3) + 1470893429) ^ ((v11 ^ 0x12FF7371) - 919265561) ^ ((v11 ^ 0x7FBDAF7F) - 1535655191);
  v14 = (v12 ^ 0x7A123D01) & (v13 ^ 0x5BCA6DEC) ^ v13 & 0x32791981;
  *(v5 + 1448) = *(v5 + 1148);
  *(v5 + 1440) = v3;
  v15 = v3 - 1;
  *(v5 + 2420) = v15;
  *(v5 + 1452) = a3 + v15 + 1;
  *(v5 + 1459) = *(v5 + 2431);
  *(v5 + 1460) = (((v12 ^ v13 ^ 0x842D02CB) + 738932172) ^ ((v12 ^ v13 ^ 0x1D06D2F) - 1443472848) ^ ((v12 ^ v13 ^ 0x165C26CC) - 1099296307)) - 305820277 + ((((2 * v14) ^ 0xCB6E00DC) + 353801584) ^ (((2 * v14) ^ 0xD3E62BFA) + 228507210) ^ (((2 * v14) ^ 0x3C183826) - 496980586));
  return (*(v6 + 8 * (v4 ^ 0x3F0)))();
}

uint64_t sub_112D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __asm { BTI             j }

  *(*(v6 + 1408) + ((v4 ^ 0x17Fu) - 821) * v5[242] - 352294776) = 82;
  v5[378] = v5[251];
  return (*(v7 + 8 * v4))(a1, a2, a3, a4, 5902779);
}

uint64_t sub_11318()
{
  __asm { BTI             j }

  v1[179] = v1[378];
  v1[377] = v1[242];
  v8 = *(v2 + 1408);
  return (*(v3 + 8 * v0))();
}

uint64_t sub_11370(int a1, int a2, uint64_t a3, unsigned int a4, uint64_t a5, int a6, uint64_t a7, __int16 a8)
{
  __asm { BTI             j }

  *(v10 + (v11 + a1 * v9 - ((((v11 + a1 * v9) * a2) >> 16) >> 3) * a8)) = v12;
  return (*(v13 + 8 * (((a4 > 0x3E) * a6) ^ v8)))((a1 + 1));
}

uint64_t sub_113B4(int a1)
{
  __asm { BTI             j }

  *(v2 + 1508) = a1;
  v8 = *(v2 + 968);
  *(v2 + 1448) = *(v2 + 1148);
  *(v2 + 1452) = *(v2 + 716);
  *(v2 + 1459) = 2;
  *(v2 + 1460) = v8;
  return (*(v3 + 8 * ((164 * (((v1 + 88) ^ ((v8 - 607490720) < 0xFFFFFFC8)) & 1)) ^ v1)))();
}

uint64_t sub_11414()
{
  __asm { BTI             j }

  v9 = *(v2 + 1148);
  *v3[178] = v9 ^ 0x4E;
  *v3[179] = (v9 >> (v0 ^ 0x73)) ^ 0x40;
  *v3[180] = BYTE2(v9) ^ 0xCD;
  *v3[181] = HIBYTE(v9) ^ 0x19;
  *(v2 + 1448) = HIBYTE(v9) ^ 0xCB1F9257;
  *(v2 + 1452) = *(v2 + 716);
  *(v2 + 1459) = 1;
  *(v2 + 1460) = *(v2 + 968);
  return (*(v4 + 8 * v1))();
}

uint64_t sub_114A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __asm { BTI             j }

  *(v4 + 2424) = *(v4 + 1460);
  v10 = *(v4 + 1459);
  *(v4 + 284) = *(v4 + 1452);
  v11 = *(v4 + 1448);
  *(v4 + 1524) = *(v4 + 164);
  *(v4 + 1528) = *(v4 + 1204);
  *(v4 + 1532) = v11;
  *(v4 + 1536) = *(v4 + 1108);
  *(v4 + 1540) = *(v4 + 1104);
  *(v4 + 1544) = *(v4 + 1084);
  *(v4 + 1548) = *(v4 + 1044);
  *(v4 + 1552) = *(v4 + 1012);
  return (*(v5 + 8 * v3))(*(v4 + 1008), a2, a3, (v3 - 501) | 0x40u);
}

uint64_t sub_11514(int a1, uint64_t a2, uint64_t a3, int a4)
{
  __asm { BTI             j }

  *(v5 + 2430) = v4;
  *(v5 + 732) = a1;
  *(v5 + 748) = *(v5 + 1552);
  *(v5 + 752) = *(v5 + 1548);
  *(v5 + 872) = *(v5 + 1544);
  *(v5 + 880) = *(v5 + 1540);
  *(v5 + 888) = *(v5 + 1536);
  *(v5 + 904) = *(v5 + 1532);
  *(v5 + 920) = *(v5 + 1528);
  *(v5 + 944) = *(v5 + 1524);
  *(v5 + 1500) = 0;
  v12 = *(v6 + 1408);
  *(v5 + 88) = ((a4 - 197) | 0x258) ^ 0x90;
  v13 = *(v6 + 1416);
  return (*(v7 + 8 * a4))(v12, 3931333455);
}

uint64_t sub_115F0@<X0>(uint64_t a1@<X0>, int a2@<W1>, int a3@<W4>, unsigned int a4@<W5>, uint64_t a5@<X6>, int a6@<W7>, __int16 a7@<W8>)
{
  __asm { BTI             j }

  v26 = *(a1 + (v7 * v12 + 129 - ((((v7 * v12 + 129) * a6) >> 16) >> 3) * v8));
  v27 = *(a1 + (v7 * v12 + 43 - ((((v7 * v12 + 43) * a6) >> 16) >> 3) * v8)) << 8;
  v28 = *(a1 + ((v7 * v12 + 86) & 0xFFFEu) % a4);
  v29 = (v11 ^ (((((v27 | 0xFFFF01FF) & ((*(a1 + ((v7 * v12 - (((((v7 * v12) & 0xFFFCu) * a6) >> 16) >> 3) * v8) & 0xFFFE)) << 16) ^ 0xC102C3) | v27 & 0xFFFFFDFF) ^ a3) & (v28 ^ v14) | v28 & 0xFFFFFF87) << 8)) & (v26 ^ v13) | v26 & v20;
  *(a5 + 4 * (v7 * v19 + 3965 - (((((v7 * v19 + 3965) >> 1) * v10) >> 16) >> 4) * a7)) = (((v29 ^ v21) + a2) ^ ((v29 ^ 0x27B92A93) - 214446555) ^ ((v29 ^ v15) + v16)) + v18;
  return (*(v17 + 8 * ((224 * (2 * (v7 & 1) + (v7 ^ 1u) > 0xF)) ^ v9)))();
}

uint64_t sub_11730(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  __asm { BTI             j }

  v12 = *(v6 + 88);
  *(v6 + 96) = v12 ^ 0x57;
  *(v6 + 1500) = v5;
  *(v6 + 1436) = 16;
  return (*(v7 + 8 * v12))(a1, 843157246, a3, a4, a5, *(v6 + 1664));
}

uint64_t sub_1177C@<X0>(int a1@<W1>, uint64_t a2@<X5>, int a3@<W8>)
{
  __asm { BTI             j }

  v12 = *(v3 + 96);
  v13 = 61 * v7;
  v14 = v7 - 2;
  v16 = (v7 - 2) & 0x88A6ADC1 ^ 0x88A6AD80;
  if (((v7 - 15) & v5) == 0)
  {
    v16 = v5;
  }

  v17 = v16 & v14;
  v18 = v17 & (v14 ^ v5);
  v19 = v14 ^ 0xF0AD77F ^ (v17 + 252368702 - ((2 * v17) & 0x10050A00));
  v15 = 61 * (((v7 - 15) ^ v5) + 2 * ((v7 - 15) & v5));
  v21 = *(a2 + 4 * (v15 - v15 / 0x8A * a3));
  v22 = 4 * (61 * v7 + 3050 - (((((61 * v7 + 3050) >> 1) * v6) >> 16) >> 4) * a3);
  v23 = a2 + v22;
  if (((a2 ^ (a2 + v22)) & 0xFFC0000000000000) != 0)
  {
    v23 = v23 & 0xFFFFFFFFFFFFLL | 0x80000000000000;
  }

  v24 = *v23;
  v25 = v17 + 2 * v18 + v19;
  v26 = a2 + v22;
  if (((a2 ^ (a2 + v22)) & 0xFFC0000000000000) != 0)
  {
    v26 = v26 & 0xFFFFFFFFFFFFLL | 0x80000000000000;
  }

  v27 = ((60 * (v7 + 63)) ^ (v7 + 63)) + 2 * ((60 * (v7 + 63)) & (v7 + 63));
  v28 = *v26;
  v29 = *(a2 + 4 * (v13 + 3843 - (((((v13 + 3843) >> 1) * v6) >> 16) >> 4) * a3));
  v30 = *(a2 + 4 * (v27 - ((((v27 >> 1) * v6) >> 16) >> 4) * a3));
  v31 = (v21 ^ 0xCC883B8E) & (2 * (v21 & v4)) ^ v21 & v4;
  v32 = ((2 * (v21 ^ 0x4C0C09D6)) ^ 0x419D64F4) & (v21 ^ 0x4C0C09D6) ^ (2 * (v21 ^ 0x4C0C09D6)) & 0xA0CEB27A;
  v33 = 61 * v25;
  HIDWORD(v35) = ((v24 ^ 0xF4B2847E) + 16342) ^ v24 ^ ((v24 ^ 0x1426B) + 260545) ^ ((v24 ^ 0x13DBE) + 230934) ^ ((v24 ^ 0xFFFFBFFF) + 66645);
  LODWORD(v35) = ((v28 ^ 0x585F6A92) - 1264725702) ^ v28 ^ ((v28 ^ 0x71B0F14A) - 1653454110) ^ ((v28 ^ 0x451D2473) - 1444962343) ^ ((v28 ^ 0x7FCFFBFF) - 1827848107);
  v34 = v35 >> 18;
  v36 = ((v24 ^ 0x1105B5CA) - 37286302) ^ v24 ^ ((v24 ^ 0xD32A36E4) + 1072205136) ^ ((v24 ^ 0x3CED3985) - 802192849) ^ ((v24 ^ 0xEDFFFEFF) + 20792661);
  v37 = *(a2 + 4 * (v33 - v33 / 0x8A * a3));
  HIDWORD(v35) = ((v29 ^ 0x55850EC0) + 111980) ^ v29 ^ ((v29 ^ 0xE1B5) + 23071) ^ ((v29 ^ 0x5D5E) + 59126) ^ ((v29 ^ 0xF67F) + 19925);
  LODWORD(v35) = ((v30 ^ 0xAAD4B1C7) + 1175849581) ^ v30 ^ ((v30 ^ 0x85C2D7DA) + 1761635442) ^ ((v30 ^ 0x52D4DDB6) - 1105828322) ^ ((v30 ^ 0x6EFFFFFF) - 2109914027);
  v38 = v35 >> 17;
  v39 = (16 * (v31 ^ 0xA0CEB27A ^ (v32 ^ 0x4C2078) & (4 * v31))) ^ v31 ^ 0xA0CEB27A ^ (v32 ^ 0x4C2078) & (4 * v31) ^ ((16 * (v31 ^ 0xA0CEB27A ^ (v32 ^ 0x4C2078) & (4 * v31))) ^ 0x20) & ((4 * (v32 ^ 0xA042920A)) & 0xA0CEB270 ^ ((4 * (v32 ^ 0xA042920A)) ^ 0x20) & (v32 ^ 0xA042920A) ^ 0x10);
  v40 = (v37 ^ 0xCE82330A) & (2 * (v37 & v4)) ^ v37 & v4;
  v41 = ((2 * (v37 ^ 0xDE833552)) ^ 0x64831DFC) & (v37 ^ 0xDE833552) ^ (2 * (v37 ^ 0xDE833552)) & a1;
  v42 = (v39 << 26) ^ (v21 << 25);
  v43 = v41 ^ 0x12408202;
  v44 = (v41 ^ 0x20410CF0) & (4 * v40) ^ v40;
  v45 = ((4 * v43) ^ 0xC9063BF8) & v43 ^ (4 * v43) & (a1 - 2);
  v46 = v45 ^ (a1 - 2808);
  v47 = v44 ^ a1 ^ (v45 ^ 0xAE0) & (16 * v44);
  v48 = (16 * v46) & (a1 - 14) ^ 0x1241001E ^ ((16 * v46) ^ 0x2418EFE0) & v46;
  v49 = (v47 << 8) & (a1 - 254) ^ v47 ^ ((v47 << 8) ^ 0x418EFE00) & v48;
  v50 = (v29 ^ 0xC8F0330B) & (2 * (v29 & v4)) ^ v29 & v4;
  v51 = ((2 * (v29 ^ 0x11F13313)) ^ 0xFA67117E) & (v29 ^ 0x11F13313) ^ (2 * (v29 ^ 0x11F13313)) & 0xFD3388BE;
  v52 = ((4 * (v51 ^ 0x5108881)) ^ 0xF4CE22FC) & (v51 ^ 0x5108881) ^ (4 * (v51 ^ 0x5108881)) & 0xFD3388BC;
  v53 = (v49 << 16) & 0x32400000 ^ v49 ^ ((v49 << 16) ^ 0xFC0000) & ((v48 << 8) & 0x32410000 ^ 0x32400000 ^ ((v48 << 8) ^ 0x418E0000) & v48);
  v54 = (v52 ^ 0xF40200A0) & (16 * ((v51 ^ 0xF0030030) & (4 * v50) ^ v50)) ^ (v51 ^ 0xF0030030) & (4 * v50) ^ v50;
  v55 = v37 ^ (2 * v53);
  v56 = ((16 * (v52 ^ 0x9318803)) ^ 0xD3388BF0) & (v52 ^ 0x9318803) ^ (16 * (v52 ^ 0x9318803)) & 0xFD3388B0;
  v57 = v56 ^ 0x2C03000F;
  HIDWORD(v35) = ((v29 ^ 0x6A7D2892) + 496442) ^ v29 ^ ((v29 ^ 0x1ED37) + 218781) ^ ((v29 ^ 0x65E0E) + 320934) ^ ((v29 ^ 0xFFFFDFFF) + 353365);
  LODWORD(v35) = v55;
  v58 = v54 ^ 0xFD3388BF ^ (v56 ^ 0xD1308800) & (v54 << 8);
  v20 = *(a2 + 4 * (((4 * v12) ^ 0x518) + 61 * v7 - (((((((4 * v12) ^ 0x518) + 61 * v7) >> 1) * v6) >> 16) >> 4) * a3));
  v59 = v34 ^ (v36 >> 3) ^ 0xFA21D6CB ^ (v42 & 0xFE000000 | ((((v20 ^ 0x4295E6D9) - 1370006157) ^ v20 ^ ((v20 ^ 0xE144A5BD) + 226893335) ^ ((v20 ^ 0xDB1BF8CD) + 936985447) ^ ((v20 ^ 0x6BF7FFFD) - 2026552233)) >> 7));
  v60 = (v35 >> 19) ^ v38 ^ ((v29 ^ (2 * ((v58 << 16) & 0x7D330000 ^ v58 ^ ((v58 << 16) ^ 0x8BF0000) & ((v57 << 8) & 0x7D330000 ^ 0x4C330000 ^ ((v57 << 8) ^ 0x33880000) & v57)))) >> 10);
  v61 = v60 ^ v59 ^ 0x93D4286A;
  v62 = v60 ^ v59 ^ 0xF55ED793;
  if (!v7)
  {
    v62 = v59;
  }

  v63 = (v62 ^ 0xCB66BAEA) & (v60 ^ 0xAA1286C) ^ v60 & 0x5213BAEC;
  v64 = (v63 ^ 0x201286C) + v61;
  v65 = (((v64 ^ v63 ^ 0xF47B0889) - 1155823261) ^ ((v64 ^ v63 ^ 0x796BEE40) + 906719148) ^ ((v64 ^ v63 ^ 0x8F11CEA5) - 1066315953)) + 959343368 + ((((2 * (v64 & (v63 ^ 0x201286C))) ^ 0x87B8D6FA) + 185989434) ^ (((2 * (v64 & (v63 ^ 0x201286C))) ^ 0xC5489735) + 1239791863) ^ (((2 * (v64 & (v63 ^ 0x201286C))) ^ 0x42F041CF) - 832737779));
  v66 = 4 * (v13 + 3965 - (((((v13 + 3965) >> 1) * v6) >> 16) >> 4) * a3);
  v67 = a2 + v66;
  if (((a2 ^ (a2 + v66)) & 0xFFC0000000000000) != 0)
  {
    v67 = v67 & 0xFFFFFFFFFFFFLL | 0x80000000000000;
  }

  *v67 = v65;
  v68 = *(a2 + 4 * (v13 + 3538 - (((((v13 + 3538) >> 1) * v6) >> 16) >> 4) * a3)) + v4 + v65;
  v69 = a2 + v66;
  if (((a2 ^ (a2 + v66)) & 0xFFC0000000000000) != 0)
  {
    v69 = v69 & 0xFFFFFFFFFFFFLL | 0x80000000000000;
  }

  *v69 = v68;
  *v69 = *(a2 + 4 * (v13 + 2989 - (((((v13 + 2989) >> 1) * v6) >> 16) >> 4) * a3)) + v4 + v68;
  return (*(*(v3 + 104) + 8 * ((87 * (2 * (v7 & 1) + (v7 ^ 1u) < 0x40)) ^ v12)))();
}

uint64_t sub_120D8(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  __asm { BTI             j }

  *(v4 + 1436) = v5;
  v10 = *(v4 + 752) + 34835917;
  *(v4 + 2408) = *(v4 + 872) - 1485670201;
  v11 = *(v4 + 888) + 2050955136;
  **(v4 + 1704) = -1072200428;
  *(v4 + 2412) = *(v4 + 748) + ((((a4 ^ 0xF40) - 275) | 0x108) ^ 0x299D2E87);
  v12 = *(v4 + 920) - 1021711907;
  v13 = *(v4 + 880) - 1097963149;
  v14 = *(v4 + 732) - 591375857;
  **(v4 + 1712) = -170454713;
  **(v4 + 1720) = -2139002601;
  **(v4 + 1728) = 1369897765;
  **(v4 + 1736) = 482652500;
  **(v4 + 1744) = -252543719;
  **(v4 + 1752) = 774210042;
  **(v4 + 1760) = 1191337515;
  **(v4 + 1768) = -2053383429;
  **(v4 + 1776) = 1568796874;
  **(v4 + 1784) = -563073298;
  **(v4 + 1792) = 935462397;
  **(v4 + 1800) = 1944955374;
  **(v4 + 1808) = 777530331;
  **(v4 + 1816) = 1657146185;
  **(v4 + 1824) = -1952168228;
  *(v4 + 2416) = *(v4 + 944) + 1511545440;
  **(v4 + 1832) = 220021735;
  **(v4 + 1840) = 245652682;
  **(v4 + 1848) = -717438543;
  **(v4 + 1856) = 1142408643;
  **(v4 + 1864) = -124344014;
  **(v4 + 1872) = 874795176;
  **(v4 + 1880) = -1074618078;
  **(v4 + 1888) = -1368827305;
  **(v4 + 1896) = 497600644;
  **(v4 + 1904) = 1530887965;
  **(v4 + 1912) = 1905103005;
  **(v4 + 1920) = 316639280;
  **(v4 + 1928) = -1415078628;
  **(v4 + 1936) = 1051060215;
  **(v4 + 1944) = 1273571102;
  **(v4 + 1952) = -1565498713;
  **(v4 + 1960) = 1920927098;
  **(v4 + 1968) = -909169723;
  **(v4 + 1976) = -430275584;
  **(v4 + 1984) = -384668334;
  **(v4 + 1992) = -1013118501;
  **(v4 + 2000) = 1140876705;
  **(v4 + 2008) = -283243415;
  **(v4 + 2016) = 307235345;
  **(v4 + 2024) = -1172477090;
  **(v4 + 2032) = -905895794;
  **(v4 + 2040) = -1020365150;
  **(v4 + 2048) = -795427829;
  **(v4 + 2056) = -1249197972;
  **(v4 + 2064) = -356603488;
  **(v4 + 2072) = 1666339065;
  **(v4 + 2080) = 1580305094;
  **(v4 + 2088) = -1404002362;
  **(v4 + 2096) = -1341183811;
  **(v4 + 2104) = 344679109;
  **(v4 + 2112) = 15757994;
  **(v4 + 2120) = -142423643;
  **(v4 + 2128) = -1879821093;
  **(v4 + 2136) = 1836640111;
  **(v4 + 2144) = 682426718;
  **(v4 + 2152) = 548304746;
  **(v4 + 2160) = 68448073;
  **(v4 + 2168) = 1524605773;
  **(v4 + 2176) = 276136516;
  **(v4 + 2184) = 1077308481;
  **(v4 + 2192) = 1649899592;
  **(v4 + 2200) = -721286135;
  **(v4 + 2208) = 749010768;
  *(v4 + 1464) = 0;
  *(v4 + 1468) = v10;
  *(v4 + 1472) = *(v4 + 2408);
  *(v4 + 1476) = v11;
  *(v4 + 1480) = *(v4 + 2412);
  *(v4 + 1484) = v14;
  *(v4 + 1488) = *(v4 + 2416);
  *(v4 + 1492) = v13;
  *(v4 + 1496) = v12;
  v15 = *(v4 + 1664);
  return (*(*(v4 + 104) + 8 * (a4 ^ 0xF40)))(a1, 138, 2133879592);
}

uint64_t sub_12610@<X0>(__int16 a1@<W1>, int a2@<W3>, int a3@<W4>, int a4@<W7>, int a5@<W8>)
{
  __asm { BTI             j }

  HIDWORD(v18) = v13;
  LODWORD(v18) = v13;
  v19 = v10 + (__ROR4__(v9 ^ __ROR4__((v18 >> 25) ^ __ROR4__(v13, 6) ^ __ROR4__(v13, 11), 10), 22) ^ 0x63D5B34D) + *(v5 + 4 * (61 * a4 - (((((61 * a4) >> 1) * a5) >> 16) >> 4) * a1)) + *(v5 + 4 * (61 * a4 + 3965 - (((((61 * a4 + 3965) >> 1) * a5) >> 16) >> 4) * a1)) + ((v12 & v13 & 0x960627CF | (v8 & ~v13 ^ v7) & ~(v12 & v13)) ^ v7) + v6 + a3;
  return (*(v11 + 8 * ((21 * (a4 != 63)) ^ a2)))(v8);
}

uint64_t sub_12774(int a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, int a8)
{
  __asm { BTI             j }

  *(v10 + 1496) = v14;
  *(v10 + 340) = v9;
  *(v10 + 1492) = v9;
  *(v10 + 380) = a1;
  *(v10 + 1488) = v8;
  *(v10 + 1484) = a7;
  *(v10 + 384) = v13;
  *(v10 + 1480) = v12;
  *(v10 + 388) = v8;
  *(v10 + 1476) = a1;
  *(v10 + 1472) = v15;
  *(v10 + 416) = v14;
  *(v10 + 1468) = v13;
  *(v10 + 1464) = a8;
  *(v10 + 420) = v15;
  *(v10 + 436) = a7;
  *(v10 + 484) = v12;
  v20 = *(v10 + 920) - 1897243322;
  v21 = *(v10 + 2416);
  v22 = *(v10 + 2408);
  v23 = (*(v10 + 732) ^ 0x233FADF1) + ((2 * *(v10 + 732)) & 0x467F5BE2) - 1182751714 + a7;
  *(v10 + 508) = v23;
  *(v10 + 532) = v23 + 591375857;
  v24 = (v20 ^ 0x7115A2BA) - 1021711907 + ((2 * v20) & 0xE22B4574) + v14;
  v25 = (v15 ^ v22) + 2 * ((v15 | v22) ^ v15 ^ v22) + 1002027372;
  *(v10 + 556) = *(v10 + 888) + *(v10 + 380);
  *(v10 + 580) = *(v10 + 748) + v12;
  v26 = (*(v10 + 388) ^ v21) + 2 * (v8 & v21);
  *(v10 + 604) = v26;
  *(v10 + 628) = ((2 * v25) & 0x39A79B9A) + (v25 ^ 0x1CD3CDCD);
  *(v10 + 644) = ((2 * v24) & 0x79CC2C46) + (v24 ^ 0x3CE61623);
  *(v10 + 664) = v26 - 1511545440;
  *(v10 + 668) = *(v10 + 880) + *(v10 + 340);
  *(v10 + 672) = *(v10 + 752) + *(v10 + 384);
  v27 = *(v10 + 2430);
  if (v27 == 2)
  {
    v28 = *(v10 + 84);
    v29 = 27 * (v28 ^ 0xDB);
    v30 = a3 + v28 + 548;
    v31 = *(v10 + 904);
    **(v10 + 1672) = v31 ^ 0x4E;
    **(v10 + 1688) = (v29 - 66) ^ BYTE2(v31);
    v32 = v31 >> 8;
    v31 >>= 24;
    *(v10 + 676) = v31;
    **(v10 + 1680) = v32 ^ 0x40;
    **(v10 + 1696) = v31 ^ 0x19;
    *(v10 + 1432) = 0;
    return (*(v11 + 8 * v30))(*(v10 + 1656), 74, 29, a4, 5902779);
  }

  else
  {
    v34 = *(v10 + 84);
    if (v27 == 1)
    {
      v35 = (a3 + v34 + 106) | 0x87;
      v36 = a3 + v34 + 922;
      v37 = *(v10 + 484) + *(v10 + 2412);
      **(v10 + 2216) = -46;
      **(v10 + 2224) = -46;
      **(v10 + 2232) = -46;
      **(v10 + 2240) = -46;
      **(v10 + 2248) = -46;
      **(v10 + 2256) = -46;
      **(v10 + 2264) = -46;
      **(v10 + 2272) = -46;
      **(v10 + 2280) = -46;
      **(v10 + 2288) = -46;
      **(v10 + 2296) = -46;
      **(v10 + 2304) = -46;
      **(v10 + 2312) = -46;
      **(v10 + 2320) = -46;
      **(v10 + 2328) = -46;
      **(v10 + 2336) = -46;
      **(v10 + 2344) = -46;
      **(v10 + 2352) = -46;
      **(v10 + 2360) = -46;
      **(v10 + 2368) = -46;
      **(v10 + 2376) = -46;
      **(v10 + 2384) = -46;
      **(v10 + 2392) = -46;
      **(v10 + 344) = -46;
      **(v10 + 392) = -46;
      **(v10 + 440) = -46;
      **(v10 + 456) = -46;
      **(v10 + 512) = -46;
      **(v10 + 560) = -46;
      **(v10 + 608) = -46;
      **(v10 + 648) = -46;
      **(v10 + 680) = -46;
      **(v10 + 760) = -46;
      **(v10 + 768) = -46;
      **(v10 + 776) = -46;
      **(v10 + 784) = -46;
      **(v10 + 792) = -46;
      **(v10 + 800) = -46;
      **(v10 + 808) = -46;
      **(v10 + 816) = -46;
      **(v10 + 824) = -46;
      **(v10 + 832) = -46;
      **(v10 + 840) = -46;
      **(v10 + 848) = -46;
      **(v10 + 856) = -46;
      **(v10 + 864) = -46;
      **(v10 + 896) = -46;
      **(v10 + 912) = -46;
      **(v10 + 928) = -46;
      **(v10 + 936) = -46;
      **(v10 + 952) = -46;
      **(v10 + 960) = -46;
      v38 = *(v10 + 176);
      **(v10 + 168) = -46;
      *v38 = -46;
      **(v10 + 184) = -46;
      **(v10 + 200) = -46;
      **(v10 + 1688) = -46;
      v39 = *(v10 + 216);
      **(v10 + 208) = -46;
      *v39 = -46;
      **(v10 + 224) = -46;
      LODWORD(v39) = *(v10 + 672) + 34835917;
      **(v10 + 240) = -46;
      **(v10 + 1696) = -46;
      v40 = v39 >> 24;
      **(v10 + 1680) = -46;
      v41 = *(v10 + 508);
      **(v10 + 1672) = -46;
      v42 = *(v10 + 272);
      *(v42 + 1) = BYTE2(v41);
      *(v42 + 2) = BYTE1(v41);
      v43 = *(v10 + 272);
      v43[3] = v41;
      *v43 = HIBYTE(v41);
      v44 = v39 >> 16;
      v43[6] = BYTE1(v39);
      *(*(v10 + 272) + 7) = v39;
      LODWORD(v39) = *(v10 + 628) - 1485670201;
      v45 = *(v10 + 272);
      *(v45 + 9) = v37 >> (v35 ^ 0xCF);
      *(v45 + 5) = v44;
      v46 = *(v10 + 644) - 1021711907;
      v47 = *(v10 + 272);
      *(v47 + 8) = HIBYTE(v37);
      *(v47 + 11) = v37;
      *(*(v10 + 272) + 4) = v40;
      v48 = *(v10 + 604);
      LODWORD(v47) = v39 >> 24;
      v49 = *(v10 + 272);
      *(v49 + 13) = BYTE2(v48);
      *(v49 + 18) = BYTE1(v39);
      *(*(v10 + 272) + 10) = BYTE1(v37);
      v50 = v39 >> 16;
      v51 = *(v10 + 668) - 1097963149;
      v52 = *(v10 + 272);
      *(v52 + 15) = v48;
      *(v52 + 19) = v39;
      LOBYTE(v39) = *(v10 + 607);
      v53 = *(v10 + 272);
      *(v53 + 14) = BYTE1(v48);
      *(v53 + 12) = v39;
      v54 = *(v10 + 272);
      *(v54 + 17) = v50;
      *(v54 + 21) = BYTE2(v46);
      v55 = *(v10 + 272);
      *(v55 + 16) = v47;
      *(v55 + 23) = v46;
      v56 = *(v10 + 556);
      v57 = *(v10 + 272);
      *(v57 + 26) = BYTE1(v51);
      *(v57 + 27) = v51;
      v58 = *(v10 + 272);
      *(v58 + 22) = BYTE1(v46);
      *(v58 + 20) = HIBYTE(v46);
      LODWORD(v58) = (v56 ^ 0x7A3F1780) + ((2 * v56) & 0xF47E2F00);
      v59 = *(v10 + 272);
      v59[25] = BYTE2(v51);
      v59[24] = HIBYTE(v51);
      v59[31] = v56 ^ 0x80;
      v60 = *(v10 + 272);
      *(v60 + 28) = BYTE3(v58);
      *(v60 + 30) = BYTE1(v58);
      *(*(v10 + 272) + 29) = BYTE2(v58);
      *(v10 + 1600) = 373510408;
      return (*(v11 + 8 * v36))();
    }

    else
    {
      *(v10 + 1556) = *(v10 + 664);
      *(v10 + 1560) = *(v10 + 644);
      *(v10 + 1564) = *(v10 + 904);
      *(v10 + 1568) = *(v10 + 556);
      *(v10 + 1572) = *(v10 + 668);
      *(v10 + 1576) = *(v10 + 628);
      *(v10 + 1580) = *(v10 + 672);
      *(v10 + 1584) = *(v10 + 580);
      *(v10 + 1588) = *(v10 + 532);
      *(v10 + 1592) = *(v10 + 284);
      *(v10 + 1599) = *(v10 + 2430);
      return (*(v11 + 8 * (a3 + v34 + 102)))(*(v10 + 2424), 7085);
    }
  }
}

uint64_t sub_12F30(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  __asm { BTI             j }

  v11 = *(v5 + 1600);
  *(v5 + 1604) = v11;
  v12 = *(v5 + 72);
  return (*(v6 + 8 * ((987 * (v11 == (((a4 + 513) | 0xA) ^ (v4 + 730)))) ^ a4)))();
}

uint64_t sub_12F7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  __asm { BTI             j }

  v16 = v10[2] + (a7 + v7 - 388) - 2161089124 + 13 * (v7 ^ 0x2B1u);
  v17 = v16 == *v10;
  v10[145] = v16;
  *(v9 + 1604) = v8;
  return (*(v11 + 8 * ((1710 * v17) ^ v7)))();
}

uint64_t sub_12FDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, int a3@<W4>, uint64_t a4@<X5>, int a5@<W7>, void *a6@<X8>, uint64_t a7)
{
  __asm { BTI             j }

  *(v10 + 56) = v7;
  *(v10 + 64) = v8;
  *(v10 + 40) = v11;
  *(v10 + 48) = v9;
  *(v10 + 36) = v13;
  *(v10 + 88) = a2;
  *(v10 + 72) = a4;
  *(v10 + 16) = a6[2];
  *(v10 + 24) = a1;
  v19 = a6[8];
  *v10 = a6[10];
  *(v10 + 8) = v19;
  v20 = (a5 + 2136809961) & 0xFFD349F6;
  v21 = a3 + a5;
  *(v10 + 116) = 1;
  *(v10 + 164) = -31001;
  v23 = (*(v12 + 8 * (a3 + a5 + 1078)))();
  *(v10 + 200) = v23;
  *(v10 + 3120) = v23;
  *(v14 - 120) = a5 - 1421288831 * ((((v14 - 128) | 0x748A1589) + (~(v14 - 128) | 0x8B75EA76)) ^ 0xE83AFF40) - 500696007;
  v24 = (*(v12 + 8 * (v21 + 993)))(v14 - 128);
  *(v10 + 208) = &a7 - ((3 * (((*(v10 + 3136) ^ 0x8DAEA8889C8775D8) + 0x7251577763788A28) ^ ((*(v10 + 3136) ^ 0x94178BDED88EBB73) + 0x6BE874212771448DLL) ^ ((*(v10 + 3136) ^ 0x49F1D7E8CE97BD7) + (v20 ^ 0xFB60E2817316858FLL))) + 0x5772BA7A5AA22093) & 0xFFFFFFFFFFFFFFF0);
  *(v10 + 216) = (*(v12 + 8 * (v21 + 1080)))(v24);
  *(v10 + 224) = (*(v12 + 8 * (a5 ^ 0x80CF90E7)))(v10 + 164);
  return (*(v12 + 8 * (((4 * (*(v10 + 164) == 0)) | (8 * (*(v10 + 164) == 0))) ^ (v21 + 184))))();
}

uint64_t sub_131D4()
{
  __asm { BTI             j }

  v8 = (*(v2 + 8 * (v3 + 882)))(*(v0 + 200), *(v0 + 16) ^ 0x61BA8FC526A0820DLL, *(v0 + 96), *(v0 + 208));
  *(v0 + 164) = v8;
  return (*(v2 + 8 * ((1294 * (v8 == ((v3 - 1929388975) & 0xF3CFB7CE ^ (v1 + (v3 ^ 0x553) - 911)))) ^ v3)))();
}

uint64_t sub_13260()
{
  __asm { BTI             j }

  v7 = (*(v1 + 8 * (v2 ^ 0x1F3)))();
  (*(v1 + 8 * (v2 + 6)))(v0 + 120, *(v0 + 216), *(v0 + 224), v7, 32, 16, 3);
  v8 = *(v0 + 56);
  **(v0 + 64) = v8;
  v9 = (((v8 ^ 0x155422C8DF035A1FLL) - 0x155422C8DF035F2ALL + ((v2 - 244) | 0x10Au)) ^ ((v8 ^ 0xD3DF8E9DD592BE50) + 0x2C2071622A6D41B0) ^ (((v2 + 1770476158) & 0x9678ABBE ^ 0xCA509B55FC31E23CLL) + (v8 ^ 0x35AF64AA03CE1EF2))) - 0x2FF09773F17C8BBLL;
  *(v0 + 232) = ((((v9 ^ 0x7CB3717D97AF34AALL) - 0x756F5CF42027082BLL) ^ v9 ^ ((v9 ^ 0x71C57B4217265F57) - 0x781956CBA0AE63D6) ^ ((v9 ^ 0xD34D9C4D88FD9CCALL) + 0x256E4E3BC08A5FB6) ^ ((v9 ^ 0xD7E7BBFBBFFCCBB6) + 0x21C4698DF78B08CALL)) & 0xFFFFFFFFFFFFFFF8 ^ 0x9DC2D89B7883C80) + 16;
  v10 = (*(v1 + 8 * (v2 ^ 0x2C)))();
  *(v0 + 240) = v10;
  *(v0 + 168) = 0;
  return (*(v1 + 8 * ((510 * (v10 == 0)) ^ v2)))();
}

uint64_t sub_13478()
{
  __asm { BTI             j }

  v8 = v0[29];
  v7 = v0[30];
  *v7 = 0;
  v7[1] = v8;
  v0[21] = v7 + 2;
  return (*(v2 + 8 * v1))();
}

uint64_t sub_134A4()
{
  __asm { BTI             j }

  **(v0 + 40) = *(v0 + 168);
  v7 = *(v0 + 148);
  **v0 = v7;
  *(v0 + 248) = (((((v7 + 0x294235231F988874) ^ 0x5CC8CF6D3ED3E84ELL) - 0x758AFA4E214B6023) ^ (v7 + 0x294235231F988874) ^ (((v7 + 0x294235231F988874) ^ 0xC3E020B607FDF506) + 0x155DEA6AE79A8296) ^ (((v7 + 0x294235231F988874) ^ 0xF9F7AFFFA5E87FE6) + 0x2F4A6523458F0876) ^ (((v2 - 1672889142) & 0x63B641B7u) - 348 + ((v7 + 0x294235231F988874) ^ 0x4F9D7507835EEAC3) - 0x66DF40249CC66306)) & 0xFFFFFFFFFFFFFFF8 ^ 0x294235231F988868) + 16;
  v8 = (*(v1 + 8 * (v2 ^ 0x7EB)))();
  *(v0 + 256) = v8;
  *(v0 + 176) = 0;
  v9 = *(v0 + 48);
  return (*(v1 + 8 * (((v8 == 0) | (8 * (v8 == 0))) ^ v2)))();
}

uint64_t sub_13600()
{
  __asm { BTI             j }

  v10 = v0;
  v9 = *v0;
  v8 = v10[1];
  *v8 = 0;
  v8[1] = v9;
  *(v1 + 176) = v8 + 2;
  return (*(v3 + 8 * v2))();
}

uint64_t sub_13628()
{
  __asm { BTI             j }

  *v0 = *(v1 + 176);
  v8 = (*(v2 + 8 * (v3 ^ 0x499)))(*(v1 + 208), v1 + 120);
  **(v1 + 8) = v8;
  v9 = ((v3 - 1260397005) & 0xCBEFB5DE) + ((2 * v3) ^ 0x2CEu) + 0x3165A53B2089C152 + v8;
  v10 = (v9 ^ 0xEC9A12A51E168620) & (2 * (v9 & 0xCE9A5AC45EA6A749)) ^ v9 & 0xCE9A5AC45EA6A749;
  v11 = ((2 * (v9 ^ 0x79BA962D361F8220)) ^ 0x6E4199D2D1724AD2) & (v9 ^ 0x79BA962D361F8220) ^ (2 * (v9 ^ 0x79BA962D361F8220)) & 0xB720CCE968B92568;
  v12 = v11 ^ 0x9120442928892529;
  v13 = (v11 ^ 0x2600880040300040) & (4 * v10) ^ v10;
  v14 = ((4 * v12) ^ 0xDC8333A5A2E495A4) & v12 ^ (4 * v12) & 0xB720CCE968B92568;
  v15 = (v14 ^ 0x940000A120A00520) & (16 * v13) ^ v13;
  v16 = ((16 * (v14 ^ 0x2320CC4848192049)) ^ 0x720CCE968B925690) & (v14 ^ 0x2320CC4848192049) ^ (16 * (v14 ^ 0x2320CC4848192049)) & 0xB720CCE968B92560;
  v17 = (v16 ^ 0x3200CC8008900400) & (v15 << 8) ^ v15;
  v18 = (((v16 ^ 0x8520006960292169) << 8) ^ 0x20CCE968B9256900) & (v16 ^ 0x8520006960292169) ^ ((v16 ^ 0x8520006960292169) << 8) & 0xB720CCE968B92500;
  v19 = v17 ^ 0xB720CCE968B92569 ^ (v18 ^ 0x2000C86828210000) & (v17 << 16);
  *(v1 + 264) = ((v9 ^ (2 * ((v19 << 32) & 0x3720CCE900000000 ^ v19 ^ ((v19 << 32) ^ 0x68B9256900000000) & (((v18 ^ 0x9720048140980469) << 16) & 0x3720CCE900000000 ^ 0x3300844000000000 ^ (((v18 ^ 0x9720048140980469) << 16) ^ 0x4CE968B900000000) & (v18 ^ 0x9720048140980469))))) & 0xFFFFFFFFFFFFFFF8 ^ 0xE09BCBC48FD4ED98) + 16;
  v20 = (*(v2 + 8 * (v3 + 805)))();
  *(v1 + 272) = v20;
  *(v1 + 184) = 0;
  v21 = *(v2 + 8 * ((2 * (v20 == 0)) | (8 * (v20 == 0)) | v3));
  v22 = *(v1 + 72);
  v23 = *(v1 + 84);
  v24 = *(v1 + 36);
  v25 = *(v1 + 96);
  return v21(*(v1 + 24));
}

uint64_t sub_13924(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  __asm { BTI             j }

  *(v7 + 72) = a6;
  v15 = v10;
  v16 = v9 ^ a7;
  *a1 = *(v7 + 184);
  v17 = *v8;
  v18 = **(v7 + 48);
  v19 = *(v7 + 56) ^ 0xF324C8FF89906F7BLL;
  v20 = *(v7 + 88);
  v21 = (*(v15 + 8 * (v9 ^ 0x492)))(*(v7 + 208), v7 + 120) == 0;
  return (*(v15 + 8 * ((v21 * (v16 ^ 0x80CF90FE)) ^ v9)))();
}

uint64_t sub_139C8()
{
  __asm { BTI             j }

  return (*(v1 + 8 * (v0 + v2 + 309)))();
}

uint64_t sub_139E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  __asm { BTI             j }

  return (*(v7 + 8 * (v8 + v5)))(a1, a2, a3, a4, a5, *(v6 + 72));
}

uint64_t sub_13A24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  __asm { BTI             j }

  *(v7 + 668) = a7;
  return (*(v8 + 8 * v9))(a1, a2, a3, a4, 2133879592, *(v7 + 72));
}

uint64_t sub_13A58()
{
  __asm { BTI             j }

  return (*(v1 + 8 * (v0 + 133)))();
}

uint64_t sub_13A6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  __asm { BTI             j }

  v12 = *(v6 + 1604);
  return (*(v7 + 8 * (v5 + a5)))();
}

uint64_t sub_13A84@<X0>(uint64_t a1@<X1>, int a2@<W8>)
{
  __asm { BTI             j }

  *v2 = 0;
  v9 = *(a1 + 24);
  *(v9 + 8) = *(a1 + 16);
  *(v3 + 184) = v9 + 16;
  return (*(v4 + 8 * a2))();
}

uint64_t sub_13AAC@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X5>, int a5@<W8>)
{
  __asm { BTI             j }

  *(v6 + 388) = a5;
  *(v6 + 1004) = a5;
  *(v6 + 1008) = *(v6 + 384);
  *(v6 + 1012) = *(v6 + 380);
  v14 = a2[14];
  a2[96] = a2[15];
  a2[97] = v14;
  v15 = a2[12];
  a2[98] = a2[13];
  *(v6 + 168) = v15;
  *(v6 + 1044) = *(v6 + 340);
  v16 = a2[9];
  a2[100] = a2[10];
  a2[101] = v16;
  v17 = a2[7];
  a2[102] = a2[8];
  a2[103] = v17;
  v18 = *(v8 + 8 * ((103 * (((v5 + 22) ^ (*(v6 + 1008) < *(v6 + 716))) & 1)) ^ v5));
  *(v6 + 88) = a3;
  *(v6 + 72) = a4;
  *(v6 + 36) = v9;
  *(v6 + 40) = v7;
  *(v6 + 24) = a1;
  return v18();
}

uint64_t sub_13B50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __asm { BTI             j }

  *(v4 + 416) = *(v4 + 1004);
  return (*(v5 + 8 * ((*(v4 + 723) * ((((((v3 + 277) | 8) ^ 0x45F) + 764) ^ 0xFFFFFC83) + 37 * (((v3 + 277) | 8) ^ 0x45F))) ^ ((v3 + 277) | 8))))(a1, a2, a3, 3029849161);
}

uint64_t sub_13BD4@<X0>(void *a1@<X1>, int a2@<W8>)
{
  __asm { BTI             j }

  v8 = *(v2 + 1004);
  v9 = *(v2 + 748) + v8;
  *(v2 + 16) = v9;
  *(v2 + 1084) = v9;
  a1[105] = a1[57] & (((a2 - 171) | 0x2C0u) - 715);
  a1[19] = 0;
  a1[20] = v8;
  v10 = *(v2 + 759);
  v11 = *(v2 + 752);
  v12 = *(v2 + 96);
  return (*(v3 + 8 * a2))(641063439);
}

uint64_t sub_13C54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6, uint64_t a7, uint64_t a8)
{
  __asm { BTI             j }

  return (*(v10 + 8 * ((v9 > ((v8 - 197) | a6) + 4294966572u) ^ v8)))(a1, a8);
}

uint64_t sub_13C94(uint64_t a1, uint64_t a2, BOOL a3)
{
  __asm { BTI             j }

  v12 = a1 + v3 + v4 - 625 - 90;
  v13 = a3 ^ (v12 < a1);
  v14 = v12 < v7;
  if (v13)
  {
    v14 = a3;
  }

  return (*(v5 + 8 * ((v14 * (((v4 - 583) | 0x31) ^ v6)) ^ v4)))(a1, 631896880);
}

uint64_t sub_13CF0@<X0>(int *a1@<X3>, uint64_t a2@<X4>, int a3@<W8>)
{
  __asm { BTI             j }

  v16 = ((a3 - 1477114075) & 0x580AFAEFu) + 22;
  v17 = (v5 + 3) & 0xF;
  *a1 = *(v11 + ((v16 ^ 0x2EB) & v5)) ^ *(v9 + v5) ^ *(v7 + ((v16 ^ 0x2EB) & v5)) ^ *(((v16 ^ 0x2EB) & v5) + v8 + 7) ^ (((v16 ^ 0xEB) & v5) * v3) | ((*(v9 + v5 + 1) ^ (((v5 + 1) & 0xF) * v3) ^ *(v11 + ((v5 + 1) & 0xF)) ^ *(v7 + ((v5 + 1) & 0xF)) ^ *(((v5 + 1) & 0xF) + v8 + 7)) << 8) | ((*(v9 + v5 + 2) ^ (((v5 + 2) & 0xF) * v3) ^ *(v11 + ((v5 + 2) & 0xF)) ^ *(v7 + ((v5 + 2) & 0xF)) ^ *(((v5 + 2) & 0xF) + v8 + 7)) << 16) | ((*(v9 + v5 + 3) ^ (v17 * v3) ^ *(v11 + v17) ^ *(v7 + v17) ^ *(v17 + v8 + 7)) << 24);
  return (*(v10 + 8 * (a3 ^ ((a2 == v6) * v4))))();
}

uint64_t sub_13E54(uint64_t a1, uint64_t a2)
{
  __asm { BTI             j }

  *(v5 + 1120) = v3;
  *(v5 + 400) = a2;
  *(v5 + 408) = v4;
  *(v5 + 1128) = a2 - 1;
  *(v5 + 1136) = v4;
  *(v5 + 668) = 631896880;
  *(v5 + 416) = *(v5 + 16);
  v11 = *(v5 + 72);
  v12 = *(v5 + 84);
  v13 = *(v5 + 36);
  v14 = *(v5 + 88);
  return (*(v6 + 8 * v2))(*(v5 + 24));
}

uint64_t sub_13EF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  __asm { BTI             j }

  v9[287] = v9[104];
  **(a2 + 520) = **(a2 + 512);
  **(a2 + 536) = **(a2 + 528);
  **(a2 + 544) = 0;
  v18 = v9[179];
  **(a2 + 552) = v18;
  v19 = **(a2 + 560);
  **(a2 + 568) = v19;
  **(a2 + 584) = (v8 + **(a2 + 576) + (~(2 * **(a2 + 576)) | 0xA7DB123B) + 1) ^ v8;
  **(a2 + 600) = (**(a2 + 592) + v13 - ((**(a2 + 592) << ((v7 - 90) ^ (a7 + 1) ^ (a7 + 103))) & 0x725DC0A0)) ^ v13;
  **(a2 + 616) = (**(a2 + 608) + v12 - ((2 * **(a2 + 608)) & 0xB1AC779C)) ^ v12;
  v9[167] = v10 + 1;
  return (*(v11 + 8 * ((49 * (v18 >= v19)) ^ v7)))();
}

uint64_t sub_14004(uint64_t a1, uint64_t a2)
{
  __asm { BTI             j }

  v11 = **(a2 + 512);
  *(a2 + 904) = v11;
  v12 = *(v3 + 1148);
  *(a2 + 912) = v12;
  _CF = __CFADD__(v12, v11);
  v13 = v12 + v11;
  v14 = _CF;
  *(a2 + 920) = v13;
  *(a2 + 928) = v13 & ((v2 - 404751528) & 0x98EF97C6 ^ v4);
  if (HIDWORD(v13))
  {
    v15 = 1;
  }

  else
  {
    v15 = v14;
  }

  *(v3 + 668) = v5 - 2;
  return (*(v6 + 8 * ((v15 * ((v2 - 334) ^ 0x150)) ^ v2)))();
}

uint64_t sub_14080@<X0>(unsigned int a1@<W3>, int a2@<W6>, int a3@<W8>)
{
  __asm { BTI             j }

  v10 = ((a2 + a3 - 2139049018) & 0xFEAFB6B6 ^ 0x59370681) + *(v3 + 1168) - ((2 * *(v3 + 1168)) & 0xB26E0D6E);
  v11 = (((v10 ^ 0x95776955) + 1787336363) ^ ((v10 ^ 0xC01BD9F6) + 1071916554) ^ ((v10 ^ 0xC5BB614) - 207336980)) + 231660288;
  v12 = *(v3 + 879) ^ (v11 < a1);
  v13 = v11 < *(v3 + 872);
  if (v12)
  {
    v13 = *(v3 + 879);
  }

  *(v3 + 668) = v4;
  return (*(v5 + 8 * ((178 * (v13 & 1)) ^ a3)))();
}

uint64_t sub_14168(uint64_t a1, void *a2)
{
  __asm { BTI             j }

  v10 = a2[114];
  v11 = a2[113] - 0x6B3CED25F527BE43 - (v3 & (2 * a2[113]));
  v4[105] = v2;
  a2[22] = a2[100];
  v4[109] = v4[261];
  a2[24] = a2[72];
  a2[25] = v10;
  v12 = a2[116];
  return (*(v5 + 8 * (v2 + 231)))();
}

uint64_t sub_1424C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  __asm { BTI             j }

  v15 = *(v8 + 1008);
  *(a2 + 848) = v15;
  v16 = a1 + 24 * v15;
  v17 = *(v16 + 8);
  *(v8 + 176) = v16 + 8;
  *(v8 + 1104) = v17;
  LODWORD(v16) = *(v8 + 1004);
  _CF = __CFADD__(v16, v17);
  v18 = v16 + v17;
  v19 = !_CF;
  *(v8 + 1108) = v18;
  *(v8 + 668) = v9 - 2;
  return (*(v10 + 8 * ((v19 * ((a7 + v7 - 484 - 1911905242) & 0xF125C67E ^ 0x89)) ^ (v7 - 484))))();
}

uint64_t sub_142C4@<X0>(int a1@<W4>, int a2@<W8>)
{
  __asm { BTI             j }

  v9 = *(v2 + 1108);
  v10 = v9 - 71418548 < *(v2 + 880);
  if ((*(v2 + 887) ^ (v9 > ((a2 - a1 + 1103446719) & 0x3D6B2B7Eu) + 71417663)))
  {
    v10 = *(v2 + 887);
  }

  *(v2 + 668) = v3;
  return (*(v4 + 8 * ((389 * (v10 & 1)) ^ a2)))();
}

uint64_t sub_14348(uint64_t a1, uint64_t a2)
{
  __asm { BTI             j }

  v9 = *(v2 + 1104) + 0x5BCFCAE2617CBE28;
  v10 = (v9 ^ 0xB29D74ED1E6379DFLL) & (2 * (v9 & 0x19E8341DFLL)) ^ v9 & 0x19E8341DFLL;
  v11 = ((((v3 - 116) | 0xBB) - 924) ^ (2 * (v9 ^ 0xB29D74EE2367F865)) ^ 0x295282057BC9736BLL) & (v9 ^ 0xB29D74EE2367F865) ^ (2 * (v9 ^ 0xB29D74EE2367F865)) & 0x3BDE4B9BALL;
  v12 = v11 ^ 0x8424888A;
  v13 = (v11 ^ 0x238000130) & (4 * v10) ^ v10;
  v14 = ((4 * v12) ^ 0x5AB507CEF792E6E8) & v12 ^ (4 * v12) & 0x16AD41F3BDE4B9B8;
  v15 = (v14 ^ 0x12A501C2B580A0A0) & (16 * v13) ^ v13;
  v16 = ((16 * (v14 ^ 0x408403108641912)) ^ 0x6AD41F3BDE4B9BA0) & (v14 ^ 0x408403108641912) ^ (16 * (v14 ^ 0x408403108641912)) & 0x16AD41F3BDE4B9B0;
  v17 = (v16 ^ 0x28401339C409900) & (v15 << 8) ^ v15;
  v18 = (((v16 ^ 0x142940C021A4201ALL) << 8) ^ 0xAD41F3BDE4B9BA00) & (v16 ^ 0x142940C021A4201ALL) ^ ((v16 ^ 0x142940C021A4201ALL) << 8) & 0x16AD41F3BDE4B900;
  v19 = v17 ^ 0x16AD41F3BDE4B9BALL ^ (v18 ^ 0x40141B1A4A00000) & (v17 << 16);
  *(a2 + 864) = ((v9 ^ (2 * ((v19 << 32) & 0x16AD41F300000000 ^ v19 ^ ((v19 << 32) ^ 0x3DE4B9BA00000000) & (((v18 ^ 0x12AC0042194401BALL) << 16) & 0x16AD41F300000000 ^ 0x160C401300000000 ^ (((v18 ^ 0x12AC0042194401BALL) << 16) ^ 0x41F3BDE400000000) & (v18 ^ 0x12AC0042194401BALL))))) & 0xFFFFFFFFFFFFFFF8 ^ 0xA022B59EE54A32A8) + 16;
  v20 = (*(v4 + 8 * (v3 + 357)))();
  *(v2 + 184) = v20;
  *(v2 + 392) = 0;
  return (*(v4 + 8 * ((207 * (v20 == 0)) ^ v3)))();
}

uint64_t sub_145F0(uint64_t a1, uint64_t a2)
{
  __asm { BTI             j }

  v9 = *(v2 + 184);
  v10 = *(a2 + 864);
  *v9 = 0;
  v9[1] = v10;
  *(a2 + 144) = v9 + 2;
  return (*(v3 + 8 * v4))();
}

uint64_t sub_14610(uint64_t a1, void *a2)
{
  __asm { BTI             j }

  v10 = a2[106];
  *(v3 + 24 * v10) = a2[18];
  v11 = ((v5 + 2) | 0x2C0u) + (*(v2 + 1004) ^ 0x6F5DDBF8DB4E47EBLL) + ((2 * *(v2 + 1004)) & 0x1B69C8FD6) - 0x2E4191700A484A8BLL;
  v12 = **(v2 + 176) - 0x6B3CED25F527BE43 - ((2 * **(v2 + 176)) & 0x15B0837A);
  *(v2 + 420) = v5;
  a2[22] = v10;
  *(v2 + 436) = *(v2 + 1108);
  v13 = a2[98];
  a2[24] = *(v2 + 168);
  a2[25] = v13;
  v14 = a2[97];
  v15 = *(v4 + 8 * (v5 + 254));
  v16 = *(v2 + 72);
  v17 = *(v2 + 84);
  v18 = *(v2 + 36);
  v19 = *(v2 + 88);
  return v15(v3);
}

uint64_t sub_146F0(uint64_t a1, void *a2, uint64_t a3)
{
  __asm { BTI             j }

  a2[117] = v5;
  v13 = a2[24];
  v12 = a2[25];
  a2[118] = v12;
  *(v6 + 200) = v13;
  *(v6 + 1204) = *(v6 + 436);
  a2[120] = a2[22];
  LODWORD(v13) = *(v6 + 420);
  *(v6 + 208) = a3 + v12;
  a2[121] = (v5 ^ 0x61DDEADDD936A95DLL) + ((2 * v5) & 0xC3BBD5BBB26D52BALL) + (v4 ^ 0xDF3E5FAAF7CF5405);
  v14 = a2[103];
  a2[26] = v3;
  a2[27] = v14;
  a2[28] = a2[102];
  *(v6 + 484) = v13;
  v15 = a2[96];
  a2[30] = a2[101];
  a2[31] = v15;
  v16 = *(v6 + 1012);
  return (*(v7 + 8 * v4))();
}

uint64_t sub_147A4(uint64_t a1, void *a2, uint64_t a3)
{
  __asm { BTI             j }

  *(v6 + 508) = v5;
  v14 = a2[30];
  v13 = a2[31];
  v15 = *(v6 + 484);
  v16 = a2[27];
  v17 = a2[28];
  a2[127] = v16;
  *(v6 + 216) = a3 + v16;
  v18 = v16 << ((7 * (v4 ^ 0xCB)) ^ 0x39u);
  *(v6 + 1272) = (v16 ^ 0x2F6FB9FD3BE77FF5) - 0x2C188510402200 + (v18 & 0x5EDF73FA77CEFFEALL);
  *(v6 + 1280) = (v18 & 0xAE7BB517FF1E14DALL) + (v16 ^ 0xD73DDA8BFF8F0A6DLL) + 0x69DE6FFCD176F5D4;
  *(v6 + 512) = v3;
  *(v6 + 520) = v17;
  *(v6 + 532) = v15;
  *(v6 + 536) = v14;
  *(v6 + 544) = v13;
  *(v6 + 556) = v5;
  *(v6 + 560) = v3;
  *(v6 + 568) = v8;
  v19 = *(v6 + 40);
  return (*(v7 + 8 * v4))();
}

uint64_t sub_148A8(uint64_t a1, void *a2, uint64_t a3)
{
  __asm { BTI             j }

  v11 = a2[39];
  v10 = a2[40];
  v12 = *(v4 + 556);
  v14 = a2[36];
  v13 = a2[37];
  v15 = *(v4 + 532);
  v16 = a2[34];
  a2[130] = v16;
  *(v4 + 224) = a3 + v16;
  *(v4 + 580) = v15;
  a2[42] = v14;
  a2[43] = v13;
  *(v4 + 604) = v12;
  a2[45] = v11;
  a2[46] = v10;
  return (*(v5 + 8 * v3))();
}

uint64_t sub_148EC(uint64_t a1, void *a2, uint64_t a3)
{
  __asm { BTI             j }

  v11 = a2[45];
  v10 = a2[46];
  v12 = *(v4 + 604);
  v14 = a2[42];
  v13 = a2[43];
  a2[134] = v14;
  v15 = *(v4 + 580);
  *(v4 + 88) = a3;
  *(v4 + 240) = a3 + v14;
  *(v4 + 1328) = ((5 * (v3 ^ 0x22Au)) ^ v14 ^ 0x6FE3B9F9FFA7DE92) + ((2 * v14) & 0xDFC773F3FF4FBFFELL) - 0x40A01881D400820ALL;
  *(v4 + 1336) = ((2 * v14) & 0x86FDBF5DA22E0DE2) + (v14 ^ 0x437EDFAED11706F1) - 0x2629526001106B0;
  *(v4 + 628) = v15;
  *(v4 + 632) = v13;
  *(v4 + 644) = v12;
  *(v4 + 648) = v11;
  *(v4 + 656) = v10;
  v16 = *(v4 + 96);
  return (*(v5 + 8 * v3))();
}

uint64_t sub_149D4(uint64_t a1, void *a2)
{
  __asm { BTI             j }

  v11 = a2[50];
  v10 = a2[51];
  v12 = *(v3 + 644);
  v13 = a2[48];
  a2[140] = v13;
  v14 = *(v3 + 628);
  *(v3 + 1376) = (v13 ^ 0xEF57BDF8ABF7FFF5) + 0x3FEBE37F7FAF5E00 + ((2 * v13) & 0xDEAF7BF157EFFFEALL);
  *(v3 + 1384) = ((2 * v13) & 0xF67F9F55F39F0EDALL) - 0x3A23852228C9872CLL + ((v2 + 1599339374) & 0xA0AC07F7 ^ v13 ^ 0x7B3FCFAAF9CF83BELL);
  *(v3 + 672) = v14;
  *(v3 + 676) = v12;
  *(v3 + 680) = v11;
  *(v3 + 688) = v10;
  return (*(v4 + 8 * v2))(v5);
}

uint64_t sub_14AB4@<X0>(void *a1@<X1>, int a2@<W6>, uint64_t a3@<X8>)
{
  __asm { BTI             j }

  a1[144] = v3;
  v11 = a1[54];
  a1[145] = a1[55];
  a1[1] = v11;
  *(v5 + 196) = *(v5 + 676);
  a1[3] = *(v6 + 8 * *(v5 + 672));
  v12 = ((a2 + v4 - 877) ^ 0x7F306E33 ^ (47 * (v4 ^ 0x4C5u))) & a3;
  *(v5 + 232) = v12;
  return (*(v6 + 8 * ((467 * (v12 == 181944765)) ^ v4)))();
}

uint64_t sub_14B3C(uint64_t a1, void *a2)
{
  __asm { BTI             j }

  *a2 = a2[144] - 0x411C4A88D1060041;
  v10 = a2[145] - 0x2F43A1782BA75DF5;
  a2[2] = v10;
  v11 = v3 ^ 0xFu ^ (v2 + 1019) ^ *(v4 + 232);
  a2[56] = v11;
  v12 = v10 + a2[1] + v11 - 1;
  return (*(v5 + 8 * v3))();
}

uint64_t sub_14BD0@<X0>(uint64_t a1@<X3>, int a2@<W8>)
{
  __asm { BTI             j }

  *v4 = *(v9 + (v3 & 0xF)) ^ *(a1 + v3) ^ *(v6 + (v3 & 0xF)) ^ *((v3 & 0xF) + v7 + 7) ^ ((v3 & 0xF) * v5);
  return (*(v8 + 8 * ((15 * (v2 != -1)) ^ a2)))();
}

uint64_t sub_14C34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  __asm { BTI             j }

  *(a2 + 448) = -v5;
  return (*(v6 + 8 * (a5 + v7 + 198)))();
}

uint64_t sub_14C54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, int a7)
{
  __asm { BTI             j }

  v14 = *(a2 + 24);
  return (*(v8 + 8 * (((*(v7 + 116) != 2) * (3 * (v9 ^ (a7 + 291)) - 169)) ^ (a5 + v9 + 42))))();
}

uint64_t sub_14C94()
{
  __asm { BTI             j }

  return v0();
}

uint64_t sub_14CA0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, int a7, int a8)
{
  __asm { BTI             j }

  v14 = a2[120];
  *(a1 + 24 * v14 + 16) = 1;
  v15 = a8 - a7 + 471 + *(v8 + 1008) - 828;
  v16 = a2[130];
  a2[7] = a2[127];
  a2[8] = v16;
  a2[9] = a2[134];
  a2[10] = v14;
  v17 = *(v8 + 1204);
  *(v8 + 340) = *(v8 + 1204);
  v18 = a2[118];
  a2[12] = *(v8 + 200);
  a2[13] = v18;
  v19 = a2[140];
  a2[14] = a2[117];
  a2[15] = v19;
  *(v8 + 380) = *(v8 + 196);
  *(v8 + 384) = v15;
  v20 = *(v8 + 88);
  return (*(v9 + 8 * (a5 + a8 + 153)))();
}

uint64_t sub_14D28(uint64_t a1, int a2)
{
  __asm { BTI             j }

  *(v3 + 668) = a2;
  v9 = *(v3 + 72);
  return (*(v4 + 8 * v2))();
}

uint64_t sub_14D58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  __asm { BTI             j }

  v12 = *(v6 + 668);
  return (*(v7 + 8 * (v5 + a5)))();
}

void sub_14D70(uint64_t a1@<X5>, int a2@<W8>)
{
  __asm { BTI             j }

  *(a1 + 4) = a2;
  v7 = *(v2 - 104);
}

void sub_15A38(uint64_t a1)
{
  v1 = 722281787 * ((-2 - ((~a1 | 0xDBF5428B3809CDE6) + (a1 | 0x240ABD74C7F63219))) ^ 0xE51F0F36F879F314);
  v2 = *(a1 + 32);
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = *(&off_538D0 + ((*a1 + v1) ^ 0x86686955));
  __asm { BRAA            X8, X17 }
}

uint64_t sub_15B08(uint64_t a1, uint64_t a2)
{
  __asm { BTI             j }

  if (v8)
  {
    _ZF = v5 == 0;
  }

  else
  {
    _ZF = 1;
  }

  v14 = _ZF || v4 == 0;
  return (*(v3 + 8 * (((388 * (v6 ^ (v7 + 902)) - 1132) * v14) ^ (v2 + v6 + 694))))(a1, a2);
}

uint64_t sub_15B58()
{
  __asm { BTI             j }

  v7 = *(v2 + 8) + 0x476E1A0E0A2313A8;
  v13 = (*(v0 + 8 * (v1 + 77)))();
  return (*(v0 + 8 * ((28 * (v13 != 0)) ^ v1)))(v13, v8, v9, v10, v11);
}

uint64_t sub_15C94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13)
{
  __asm { BTI             j }

  a13[1] = a12;
  *a13 = 0;
  return (*(v14 + 8 * (((a13 + 2 == 0) * ((((v15 - 2107105285) | 0x4004800) ^ (v13 - 1407)) + ((v15 + 859) | 0x56))) ^ v15)))(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_15CFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, int a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  __asm { BTI             j }

  v26 = *v20;
  v27 = 413959067 * ((v21 - 128) ^ 0xD8E0E9E2);
  *(v18 + 200) = a17;
  *(v21 - 116) = v27 + ((2 * a12) & 0xF9F3FF22) + 2146397424 + ((2 * (v19 ^ 0x45F)) ^ a12 ^ 0xFCF9FEC3);
  *(v21 - 104) = v19 - v27 - 747;
  *(v18 + 184) = v26;
  v28 = (*(v17 + 8 * (v19 ^ 0x1E8)))(v21 - 128);
  return (*(v17 + 8 * (((*(v21 - 120) != 631927892) * (((v19 ^ 0x45F) - 126) ^ 0x25)) ^ v19)))(v28);
}

uint64_t sub_15DD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, int a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t *a18, int a19, int a20)
{
  __asm { BTI             j }

  v31 = *a18;
  v32 = *(v25 + 16);
  v21[11] = *(v20 + 8 * v24);
  v21[12] = a17;
  v21[14] = v31;
  *(v26 - 136) = (a12 ^ 0xF3F3F6E) - 104466180 + (a20 & (v24 + 511606449));
  v21[16] = v32;
  v21[17] = v23;
  v21[18] = v22;
  *(v26 - 128) = (v24 - 2133879397) ^ (1666337839 * ((((v26 - 128) | 0xC5DB9ED9) - ((v26 - 128) & 0xC5DB9ED9)) ^ 0x4F611DDE));
  v21[24] = v26 - 224;
  v33 = (*(v20 + 8 * (v24 + 1274)))(v26 - 128);
  v35 = *(v26 - 124);
  return (*(v20 + 8 * (v24 + 1229)))(v33);
}

uint64_t sub_15EBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15)
{
  __asm { BTI             j }

  v21 = (*(v15 + 8 * (v16 + 961)))(a14, *a15 & ((v16 - 2039978002) + 2039977663));
  return (*(v15 + 8 * v16))(v21);
}

uint64_t sub_15F14()
{
  __asm { BTI             j }

  return (*(v1 + 8 * (v0 + v2 + 341)))();
}

uint64_t sub_15F30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  __asm { BTI             j }

  v27[2] = &a23;
  v27[3] = &a25;
  a23 = 0;
  a25 = 0;
  v27[4] = &a21;
  v27[5] = &a19;
  a21 = 0;
  a19 = 0;
  if (v31)
  {
    _ZF = v29 == 0;
  }

  else
  {
    _ZF = 1;
  }

  v37 = _ZF || v28 == 0;
  HIDWORD(a10) = 1353711198;
  return (*(v26 + 8 * (((((v30 - 1417763169) & 0xCE18F12B) + ((v25 + v30 + 404) ^ 0xFFFFFD40)) * v37) ^ (v25 + v30 + 604))))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17);
}

uint64_t sub_15FBC@<X0>(int a1@<W8>)
{
  __asm { BTI             j }

  *(v2 + 48) = v3 + 88;
  return (*(v1 + 8 * (((*(v3 + 88) != 0) * ((a1 ^ 0x16F) - 74)) ^ a1)))();
}

uint64_t sub_16008(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  __asm { BTI             j }

  v26 = *(v21 + 96);
  if (((((3 * (v20 ^ 4) - 218) | 0x21) ^ 0xFFFFFF99) & *(v21 + 100)) != 2)
  {
    v27 = *(v21 + 100);
  }

  v28 = ((v26 + 0x31A12260A3A614F6) ^ 0x53D686CE5A15EB94) & (2 * ((v26 + 0x31A12260A3A614F6) & 0x15C59EB11)) ^ (v26 + 0x31A12260A3A614F6) & 0x15C59EB11;
  v29 = ((2 * ((v26 + 0x31A12260A3A614F6) ^ 0x53D686CE7AA4FD96)) ^ 0x2210A4A24DFA2D0ELL) & ((v26 + 0x31A12260A3A614F6) ^ 0x53D686CE7AA4FD96) ^ (2 * ((v26 + 0x31A12260A3A614F6) ^ 0x53D686CE7AA4FD96)) & 0x126FD1686;
  v30 = v29 ^ 0x122051281;
  v31 = (v29 ^ 0xE80404) & (4 * v28) ^ v28;
  v32 = ((4 * v30) ^ 0x76216D449BF45A1CLL) & v30 ^ (4 * v30) & 0x9D885B5126FD1684;
  v33 = (v32 ^ 0x1400494002F41200) & (16 * v31) ^ v31;
  v34 = ((16 * (v32 ^ 0x8988121124090483)) ^ 0xD885B5126FD16870) & (v32 ^ 0x8988121124090483) ^ (16 * (v32 ^ 0x8988121124090483)) & 0x9D885B5126FD1680;
  v35 = (v34 ^ 0x9880111026D10000) & (v33 << 8) ^ v33;
  v36 = (((v34 ^ 0x5084A41002C1687) << 8) ^ 0x885B5126FD168700) & (v34 ^ 0x5084A41002C1687) ^ ((v34 ^ 0x5084A41002C1687) << 8) & 0x9D885B5126FD1600;
  v37 = v35 ^ 0x9D885B5126FD1687 ^ (v36 ^ 0x8808510024140000) & (v35 << 16);
  v47 = *(v21 + 96);
  v19[7] = v26;
  v19[8] = (((v26 + 0x31A12260A3A614F6) ^ (2 * ((v37 << 32) & 0x1D885B5100000000 ^ v37 ^ ((v37 << 32) ^ 0x26FD168700000000) & (((v36 ^ 0x15800A5102E91087) << 16) & 0x1D885B5100000000 ^ 0x488590000000000 ^ (((v36 ^ 0x15800A5102E91087) << 16) ^ 0x5B5126FD00000000) & (v36 ^ 0x15800A5102E91087))))) & 0xFFFFFFFFFFFFFFF8 ^ 0xFC5E4F3F11A3C618) + 16;
  v38 = (*(v18 + 8 * (v20 + 1141)))();
  v19[9] = v38;
  *v19 = 0;
  return (*(v18 + 8 * (((v38 == 0) | (2 * (v38 == 0))) ^ v20)))(v38, v39, v40, v41, v42, v43, v44, v45, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_162B0()
{
  __asm { BTI             j }

  v8 = v1[8];
  v7 = v1[9];
  *v7 = 0;
  v7[1] = v8;
  *v1 = v7 + 2;
  return (*(v0 + 8 * v2))();
}

uint64_t sub_162D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  __asm { BTI             j }

  v12 = *v6;
  v6[10] = *v6;
  v13 = v6[6];
  *v6[5] = v12;
  v15 = *v13;
  LODWORD(v12) = v6[7] - ((2 * v6[7]) & ((v7 - 18846030) & 0x11F91FD ^ 0x953168A)) + 78220205 != ((v7 - 2039977952) ^ 0x82C1E2ED);
  return (*(v5 + 8 * (v12 | (16 * v12) | v7)))(2039977952, a2, a3, a4, a5);
}

uint64_t sub_16370(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, unsigned int a12)
{
  __asm { BTI             j }

  *(v14 + 8) = a12 ^ 0x4A98BADLL;
  v19 = *(v14 + 80);
  return (*(v13 + 8 * v12))();
}

uint64_t sub_163C0@<X0>(uint64_t a1@<X8>)
{
  __asm { BTI             j }

  v12 = v2 + v5 + a1;
  *(v4 + v12) = *(v3 + v12);
  return (*(v7 + 8 * (((v12 == 0) * v6) ^ v1)))();
}

uint64_t sub_163F4@<X0>(int a1@<W0>, int a2@<W8>)
{
  __asm { BTI             j }

  return (*(v2 + 8 * (a2 + a1)))();
}

uint64_t sub_16408@<X0>(int a1@<W0>, int a2@<W8>, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  __asm { BTI             j }

  v29 = a2 ^ (v23 + 55);
  v30 = a2 - v23;
  v31 = a1 + a2;
  v32 = a1 + a2 - 260;
  v33 = *v22;
  v34 = *(v22 + 2);
  v35 = v21[7] - (a6 & 0x4D41041A) + 0x61BA8FC526A0820DLL;
  v36 = v21[2];
  v37 = v21[3];
  v38 = v21[4];
  v39 = v21[10];
  v21[11] = *(v20 + 8 * v32);
  v21[12] = v39;
  v21[13] = v35;
  v21[14] = v33;
  v21[15] = v34 - ((v34 << (v29 ^ 0xB5u)) & 0x12BFF57A) - 0xCDB3700F6A00543;
  v21[16] = v37;
  v21[17] = &a20;
  v21[18] = v38;
  v21[19] = &a16;
  v21[20] = v36;
  v21[21] = &a18;
  *(v24 - 128) = (a2 - 93901690) ^ (1666337839 * ((-1323883554 - ((v24 - 128) | 0xB11723DE) + ((v24 - 128) | 0x4EE8DC21)) ^ 0xC4525F26));
  v21[24] = v24 - 224;
  v40 = (*(v20 + 8 * (v31 + 1029)))(v24 - 128);
  return (*(v20 + 8 * (v32 ^ 0x39F ^ ((*(v24 - 124) == 1353738298) * (v30 ^ 0x453)))))(v40);
}

uint64_t sub_1656C()
{
  __asm { BTI             j }

  *(v1 + 200) = v3;
  *(v5 - 116) = (v4 - 702) ^ (1746690161 * (((v5 - 128) & 0xDD62554B | ~((v5 - 128) | 0xDD62554B)) ^ 0xF75439B5));
  *(v1 + 184) = v2;
  v10 = (*(v0 + 8 * (v4 ^ 0x699)))(v5 - 128);
  return (*(v0 + 8 * (((*(v5 - 120) == 1353738298) * (((v4 - 899) | 0x2B4) ^ 0x2BA)) ^ v4)))(v10);
}

uint64_t sub_16618(uint64_t a1, uint64_t a2)
{
  __asm { BTI             j }

  return (*(v2 + 8 * v3))(a1, a2);
}

uint64_t sub_16644(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  __asm { BTI             j }

  return (*(v10 + 8 * (((**(v11 + 16) == 0) * (v12 - 549 + v12 + 459 - 1292)) | v12)))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10);
}

uint64_t sub_1668C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  __asm { BTI             j }

  v21 = (*(v14 + 8 * (v16 + 1156)))(a14 - 16, ((v16 ^ 0x4F0u) + v15) & *(a14 - 8));
  return (*(v14 + 8 * v16))(v21);
}

uint64_t sub_166C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  __asm { BTI             j }

  return (*(v7 + 8 * (((**(v8 + 24) == 0) * ((v9 ^ 0x528) + ((v9 - 1134) | 0x246) - 724)) ^ v9)))(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t sub_16710(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  __asm { BTI             j }

  v22 = (*(v15 + 8 * (v17 ^ 0x744)))(a15 - 16, (((v17 - 512) | 0x100u) ^ (v16 + 808)) & *(a15 - 8));
  return (*(v15 + 8 * v17))(v22);
}

uint64_t sub_16754(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  __asm { BTI             j }

  return (*(v8 + 8 * (((**(v9 + 32) != 0) * (((9 * (v10 ^ 0x142)) ^ 0xFFFFFE1A) + v10 + 44)) ^ v10)))(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_1679C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  __asm { BTI             j }

  v23 = (*(v16 + 8 * (v18 + 912)))(a16 - 16, ((v18 - 198) ^ (v17 + 962)) & *(a16 - 8));
  return (*(v16 + 8 * v18))(v23);
}

uint64_t sub_167D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  __asm { BTI             j }

  return (*(v9 + 8 * (((v11 ^ (**(v10 + 40) == 0)) & 1 | (2 * ((v11 ^ (**(v10 + 40) == 0)) & 1))) ^ v11)))(a1, a2, a3, a4, a5, a6, a7, a8, a9);
}

uint64_t sub_16814(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  __asm { BTI             j }

  v24 = (*(v17 + 8 * (v19 + 1110)))(a17 - 16, ((17 * (v19 ^ 0x98u)) ^ (v18 + 522)) & *(a17 - 8));
  return (*(v17 + 8 * v19))(v24);
}

uint64_t sub_16858()
{
  __asm { BTI             j }

  return (*(v0 + 8 * v1))();
}

void sub_1686C(int a1@<W8>)
{
  __asm { BTI             j }

  *(v1 + 4) = a1;
  v7 = *(v2 - 96);
}

void sub_168F0(uint64_t a1)
{
  v4 = *a1;
  if (*(a1 + 16))
  {
    v2 = *a1 == 0;
  }

  else
  {
    v2 = 1;
  }

  v3 = v2;
  v1 = *(a1 + 12) ^ (1746690161 * ((a1 + 808004989 - 2 * (a1 & 0x30292D7D)) ^ 0xE5E0BE7C));
  __asm { BRAA            X8, X17 }
}

uint64_t sub_169F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  __asm { BTI             j }

  v14 = *(v9 + 64);
  return (*(a8 + 8 * ((v8 + 57) ^ (v8 - 178))))(3965088463, 211, 519, 1109);
}

uint64_t sub_16A60@<X0>(int a1@<W3>, uint64_t a2@<X7>, int a3@<W8>)
{
  __asm { BTI             j }

  return (*(a2 + 8 * (a3 + (a3 ^ a1) - 952)))();
}

uint64_t sub_16A80@<X0>(uint64_t a1@<X7>, int a2@<W8>)
{
  __asm { BTI             j }

  v11 = *(a1 + 8 * a2);
  return (*(a1 + 8 * (((v4 & ~((v5 + v2 + v3 + 578) ^ (v6 == 0))) * ((v2 + v3) & v5 ^ 0x1C)) ^ v2)))();
}

uint64_t sub_16AC0(int a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  __asm { BTI             j }

  return (*(a8 + 8 * (((((((v8 | v9) + v10) & a1) - 9) ^ a2) * (*v11 == 0)) ^ (v8 | v9))))();
}

uint64_t sub_16AF8@<X0>(uint64_t a1@<X7>, uint64_t a2@<X8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
{
  __asm { BTI             j }

  (*(a1 + 8 * (v33 + 1093)))(v31 - 16, (a2 ^ 0xFFFFFF3ALL) & *(v31 - 8));
  *v32 = 0;
  return (*(a30 + 8 * v33))(3965088463, 211, 519, 1109, a31);
}

uint64_t sub_16B60()
{
  __asm { BTI             j }

  return v0();
}

uint64_t sub_16B6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  __asm { BTI             j }

  return (*(a8 + 8 * (a5 + 721)))();
}

uint64_t sub_16B84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  __asm { BTI             j }

  return (*(a8 + 8 * (a5 + 320)))();
}

uint64_t sub_16BA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  __asm { BTI             j }

  return (*(a8 + 8 * (((v8 >= v9) * (9 * (a5 ^ 0xC0) - 32)) ^ (a5 + 608))))();
}

uint64_t sub_16BD4()
{
  __asm { BTI             j }

  return v0();
}

uint64_t sub_16BE0(uint64_t a1, uint64_t a2, int a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  __asm { BTI             j }

  return (*(a8 + 8 * ((a5 - 195) ^ a3)))();
}

uint64_t sub_16C00@<X0>(int a1@<W4>, uint64_t a2@<X7>, int a3@<W8>)
{
  __asm { BTI             j }

  v7 = *(a2 + 8 * a3);
  return (*(a2 + 8 * (a1 + 721)))();
}

void sub_16C1C()
{
  __asm { BTI             j }

  *(v7 + 8) = v0;
  v6 = *(v1 - 120);
}

uint64_t vchs9e72gvima(uint64_t result, unsigned int *a2, void *a3, uint64_t a4, _DWORD *a5)
{
  v6 = qword_4C0D0 ^ &v29 ^ qword_4C0C8;
  qword_4C0D0 = 1051532281 * v6 - 0x5BBA474086A1BB5DLL;
  qword_4C0C8 = 1051532281 * (v6 ^ 0xA445B8BF795E44A3);
  v7 = *(&off_538D0 + ((-7 * (qword_4C0D0 ^ 0xA3 ^ qword_4C0C8)) ^ byte_7EE0[byte_54B0[(-7 * (qword_4C0D0 ^ 0xA3 ^ qword_4C0C8))] ^ 0x48]) + 20);
  if (result <= 102)
  {
    if (result == 100)
    {
      v28[0] = *(v7 + 56);
      v31 = v28;
      LODWORD(v30) = (1666337839 * ((&v30 + 920163373 - 2 * (&v30 & 0x36D8942D)) ^ 0xBC62172A)) ^ 0x80CF95C6;
      (*(v7 + 10536))(&v30);
      *a5 = 219938816;
      __asm { BRAA            X8, X17 }
    }

    if (result == 101)
    {
      HIDWORD(v32) = 653 - 2093051651 * ((((2 * &v30) | 0xA9BF3870) - &v30 - 1423940664) ^ 0xCAAECFDC);
      v30 = a3;
      v31 = a2;
      (*(v7 + 10496))(&v30);
      *a5 = v32 - 1063503683;
      __asm { BRAA            X8, X17 }
    }

    if (result == 102)
    {
      v10 = *a2 + 0x457BEC0ADB6AE548;
      v11 = (v10 ^ 0x16C4977004845ABELL) & (2 * (v10 & 0x124951ABFLL)) ^ v10 & 0x124951ABFLL;
      v12 = ((2 * (v10 ^ 0x16C4977205AE6E86)) ^ 0x508109084276E872) & (v10 ^ 0x16C4977205AE6E86) ^ (2 * (v10 ^ 0x16C4977205AE6E86)) & 0x3213B7438;
      v13 = v12 ^ 0x121091409;
      v14 = (v12 ^ 0x401316030) & (4 * v11) ^ v11;
      v15 = ((4 * v13) ^ 0xB102121C84EDD0E4) & v13 ^ (4 * v13) & 0xAC408487213B7438;
      v16 = (v15 ^ 0xA000000400295020) & (16 * v14) ^ v14;
      v17 = ((16 * (v15 ^ 0xC40848321122419)) ^ 0xC408487213B74390) & (v15 ^ 0xC40848321122419) ^ (16 * (v15 ^ 0xC40848321122419)) & 0xAC408487213B7430;
      v18 = (v17 ^ 0x8400000201334000) & (v16 << 8) ^ v16;
      v19 = (((v17 ^ 0x2840848520083429) << 8) ^ 0x408487213B743900) & (v17 ^ 0x2840848520083429) ^ ((v17 ^ 0x2840848520083429) << 8) & 0xAC408487213B7400;
      v20 = v18 ^ 0xAC408487213B7439 ^ (v19 ^ 0x840121300000) & (v18 << 16);
      v21 = *(v7 + 8 * ((7 * ((*(v7 + 9928))(((v10 ^ (2 * ((v20 << 32) & 0x2C40848700000000 ^ v20 ^ ((v20 << 32) ^ 0x213B743900000000) & (((v19 ^ 0xAC400086000B4439) << 16) & 0x2C40848700000000 ^ 0x2840848400000000 ^ (((v19 ^ 0xAC400086000B4439) << 16) ^ 0x487213B00000000) & (v19 ^ 0xAC400086000B4439))))) & 0xFFFFFFFFFFFFFFF8 ^ 0xA20512F966E3F2C8) + 16, 8) == 0)) ^ 0x3E1));
      __asm { BRAA            X9, X17 }
    }
  }

  else
  {
    if (result <= 104)
    {
      if (result != 103)
      {
        v8 = *(v7 + 464);
        v9 = 722281787 * (((&v30 | 0xBE7E66540068385DLL) - (&v30 | 0x418199ABFF97C7A2) + 0x418199ABFF97C7A2) ^ 0x80942BE9C01806AFLL);
        LODWORD(v30) = -2039977664 - v9;
        v31 = a3;
        v32 = a4;
        v33 = v8 - v9;
        v34 = a2;
        (*(v7 + 9640))(&v30);
        *a5 = HIDWORD(v30) - 1353738298;
        __asm { BRAA            X8, X17 }
      }

      __asm { BRAA            X8, X17 }
    }

    if (result == 105)
    {
      v28[0] = *(v7 + 24);
      v28[1] = a2;
      v28[3] = a3;
      LODWORD(v30) = (1666337839 * (&v30 ^ 0x8ABA8307)) ^ 0x80CF95C6;
      v31 = v28;
      (*(v7 + 10536))(&v30);
      *a5 = HIDWORD(v30) - 373510408;
      __asm { BRAA            X8, X17 }
    }

    if (result == 108)
    {
      v22 = *(v7 + 144);
      v23 = 722281787 * (((&v30 | 0xA2CD62DA47F54961) - (&v30 & 0xA2CD62DA47F54961)) ^ 0x9C272F6787857793);
      LODWORD(v30) = -2039977664 - v23;
      v31 = a3;
      v32 = a4;
      v33 = v22 - v23;
      v34 = a2;
      (*(v7 + 9640))(&v30);
      *a5 = HIDWORD(v30) - 631927892;
      __asm { BRAA            X8, X17 }
    }
  }

  __asm { BTI             j }

  return result;
}

void sub_1E504(uint64_t a1)
{
  v4 = *a1;
  if (*(a1 + 8))
  {
    v2 = *a1 == 0;
  }

  else
  {
    v2 = 1;
  }

  v3 = v2;
  v1 = *(a1 + 20) + 2093051651 * ((((2 * a1) | 0x73B9D0B0) - a1 + 1176704936) ^ 0x27ADBBBC);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1E5EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36)
{
  __asm { BTI             j }

  *(a8 + 24) = 0;
  v43 = *(v36 + 8 * (a7 - 619));
  v41 = *(a36 + 4);
  return (*(v36 + 8 * (a7 + 344)))(a1, a2, a3, a4, a5, &STACK[0x250]);
}

uint64_t sub_1E7F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48)
{
  __asm { BTI             j }

  v53 = **(a8 + 112);
  v55 = *(v48 + 8 * a25);
  return (*(v48 + 8 * (a25 ^ 0x3BD ^ (a25 + 944))))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a48 + 16, a39, a40, a41, a42, a43);
}

uint64_t sub_1E83C()
{
  __asm { BTI             j }

  return (*(v1 + 8 * v0))();
}

uint64_t sub_1E85C()
{
  __asm { BTI             j }

  return (*(v2 + 8 * ((19 * (((v1 == 0) ^ v0) & 1)) ^ v0)))();
}

uint64_t sub_1E88C@<X0>(unint64_t a1@<X8>)
{
  __asm { BTI             j }

  v7 = (v1 + 667903216) & 0xD8309B67;
  v8 = ((v1 - 16) & 0x67) - 10;
  v9 = ((v1 - 16) & 0x67) - 127;
  if (a1 >> 24)
  {
    v10 = -9;
  }

  else
  {
    v10 = -16;
  }

  if (a1 >= 0x100)
  {
    v11 = -15;
  }

  else
  {
    v11 = -14;
  }

  if (a1 < 0x10000)
  {
    v10 = v11;
  }

  return (*(v2 + 8 * ((26 * ((a1 >> (((((((v10 & 0xF7) << (v8 ^ 0x5Au)) ^ 0xB1) + (v9 ^ 0xF6)) ^ ((((v10 & 0xF7) << (v8 ^ 0x5Au)) ^ 0x95) + 54)) ^ ((((v10 & 0xF7) << (v8 ^ 0x5Au)) ^ 0xBC) + 29)) - 58)) & 1)) ^ v7)))();
}

uint64_t sub_1E96C()
{
  __asm { BTI             j }

  return (*(v1 + 8 * v0))();
}

uint64_t sub_1EA14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  __asm { BTI             j }

  return (*(v65 + 8 * ((210 * (((((v63 ^ 0xC5) + 59) ^ ((v63 ^ 0x4E) - 78) ^ ((v63 ^ 0x56 ^ v64 ^ 0x77) + ((v64 + 52) ^ 5))) - 28) > 0xF0u)) ^ v64)))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, a58, a59, a60, a61, a62, a63);
}

uint64_t sub_1EA98()
{
  __asm { BTI             j }

  *v1 = -15;
  v1[1] = v0;
  return (*(v3 + 8 * (v2 + ((v2 + 512) | 1) + 385)))();
}

uint64_t sub_1EACC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  __asm { BTI             j }

  *(a8 + 48) = *(v12 + 8 * v10);
  *(a8 + 56) = v9;
  return (*(v12 + 8 * ((82 * (((((v8 ^ 0xE) + ((v11 - 49) & 0x73) + 0x80) ^ ((v8 ^ 0x96) + 106) ^ (((v11 + 18) ^ v8 ^ 0x2A) - 107)) - 22) > 0xF6u)) ^ v11)))();
}

uint64_t sub_1EB50(uint64_t a1, unsigned int a2)
{
  __asm { BTI             j }

  v10 = (v2 + 1424075640) < 0x9ED458EF || ((a2 - 427856769) & 0x1980934F ^ 0x9ED458B1 | v3) <= v2 + 1424075640;
  return (*(v4 + 8 * ((943 * v10) ^ a2)))();
}

uint64_t sub_1EBC0(int a1)
{
  __asm { BTI             j }

  return (*(v2 + 8 * ((13 * (((((v1 ^ 0xF4) + 12) ^ ((v1 ^ 0x92) + 110) ^ ((((a1 - 127) | 0x3D) ^ 0x94) + (v1 ^ 0x95))) - 21) >= ((a1 - 71) & 0x77 ^ 0x8Au))) ^ a1)))();
}

uint64_t sub_1EC4C()
{
  __asm { BTI             j }

  v9 = ((v3 - 291634693) & 0x1161FDDE ^ 0x5A330328) + v0;
  v11 = v9 < 0xA425B0DB || v1 - 1541033765 + v2 + v3 - 113 <= v9;
  return (*(v4 + 8 * ((717 * v11) ^ v3)))();
}

uint64_t sub_1ECC0@<X0>(unsigned int a1@<W0>, unint64_t a2@<X8>)
{
  __asm { BTI             j }

  *(v2 + v4 + v3) = (a2 >> (a1 - 20)) ^ 0xF3;
  return (*(v5 + 8 * a1))();
}

uint64_t sub_1ECF4()
{
  __asm { BTI             j }

  return (*(v2 + 8 * ((859 * (((((v0 ^ 0x20) - 32) ^ ((v0 ^ 0x3A) - 58) ^ (((v1 + 68) | 0xC) + ((((v1 + 41) | 7) - 70) ^ v0) - 56)) - 20) < 0xF9u)) ^ v1)))();
}

uint64_t sub_1ED5C()
{
  __asm { BTI             j }

  v10 = v0 - 225279281 < ((v1 - 455) | 0x205u) + 1015360953 || v3 + 1 + v2 + (((v1 - 151) | 0x47) ^ 0x3C8531B9u) <= v0 - 225279281;
  return (*(v4 + 8 * ((371 * v10) ^ v1)))();
}

uint64_t sub_1EDD4@<X0>(int a1@<W1>, uint64_t a2@<X7>, unint64_t a3@<X8>)
{
  __asm { BTI             j }

  *(*(a2 + 56) + v4 + v3) = (a3 >> (((a1 - 64) & 0x6Fu) + 1)) ^ 0xF3;
  return (*(v5 + 8 * a1))();
}

uint64_t sub_1EE20()
{
  __asm { BTI             j }

  return (*(v2 + 8 * ((221 * (((v1 ^ 0xC2) + (((v0 ^ 0x90) + 112) ^ ((v0 ^ 0x31) - 49) ^ ((v0 ^ 0x52) - 82))) >= (((v1 - 98) | 0x10) + 29))) ^ v1)))();
}

uint64_t sub_1EE8C()
{
  __asm { BTI             j }

  v10 = (v0 + 1339381489) < 0x99C80468 || v1 - 1714945162 + v2 + 1 + (((v3 ^ 0x5D) - 702265723) & 0x29DBB9FAu) <= v0 + 1339381489;
  return (*(v4 + 8 * ((184 * v10) ^ v3 ^ 0x5D)))();
}

uint64_t sub_1EF08@<X0>(unsigned int a1@<W0>, uint64_t a2@<X7>, uint64_t a3@<X8>)
{
  __asm { BTI             j }

  *(*(a2 + 56) + v4 + v3) = (((a1 + 13) & 0xDD) + 22) ^ BYTE5(a3);
  return (*(v5 + 8 * a1))();
}

uint64_t sub_1EF54()
{
  __asm { BTI             j }

  return (*(v3 + 8 * ((52 * (((v1 ^ ((v0 ^ 0x23) - 35) ^ (((v2 + 39) | 0x41) + (v0 ^ 0xBB))) - 18) < (((v2 + 35) | 0x72) ^ 0x89u))) ^ v2)))();
}

uint64_t sub_1EFBC(uint64_t a1, int a2)
{
  __asm { BTI             j }

  v10 = v2 - 280013741 + (a2 ^ 0x2FF);
  v12 = v10 < 0x39420457 || v3 + 960627799 + v4 + 1 <= v10;
  return (*(v5 + 8 * ((v12 * ((a2 + 107) ^ 0x47F)) ^ a2)))();
}

uint64_t sub_1F024@<X0>(int a1@<W0>, uint64_t a2@<X7>, unint64_t a3@<X8>)
{
  __asm { BTI             j }

  *(*(a2 + 56) + v4 + v3) = (a3 >> (((a1 - 120) & 0xDFu) - 37)) ^ 0xF3;
  return (*(v5 + 8 * a1))();
}

uint64_t sub_1F070()
{
  __asm { BTI             j }

  return (*(v2 + 8 * ((11 * (((((v0 ^ 0xAC) + 84) ^ ((v0 ^ 0x1B) - 27) ^ ((v0 ^ 0x44) - 68)) + (v1 ^ 0x14) - 98) < ((v1 + 45) ^ 0x8Eu))) ^ v1)))();
}

uint64_t sub_1F0DC()
{
  __asm { BTI             j }

  v9 = (((v3 ^ 0x237) + 72) ^ 0x68D415D2) + v0;
  v11 = v9 < 0xB2C6C4D6 || v1 + v2 + 1 - 1295596330 <= v9;
  return (*(v4 + 8 * ((595 * v11) ^ v3)))();
}

uint64_t sub_1F140@<X0>(uint64_t a1@<X7>, int a2@<W8>)
{
  __asm { BTI             j }

  *(*(a1 + 56) + v3 + v2) = v4 ^ 0x14 ^ HIBYTE(a2) ^ 0xA2;
  return (*(v5 + 8 * v4))();
}

uint64_t sub_1F17C()
{
  __asm { BTI             j }

  return (*(v3 + 8 * ((881 * (((v1 ^ ((v0 ^ 0x75) - 117) ^ ((v0 ^ (13 * (((v2 - 80) | 0xAC) ^ 0xAA)) ^ 0x8F) + 44)) - 16) < 0xFDu)) ^ v2)))();
}

uint64_t sub_1F1E4(int a1)
{
  __asm { BTI             j }

  v9 = v1 - 468057666 + ((a1 + 245) | 1);
  v11 = v9 >= 0x2E0CB086 && v2 + v3 + 1 + 772583558 > v9;
  return (*(v4 + 8 * ((v11 * (((a1 + 426) | 0x88) - 612)) ^ a1)))();
}

uint64_t sub_1F250@<X0>(uint64_t a1@<X7>, unint64_t a2@<X8>)
{
  __asm { BTI             j }

  *(*(a1 + 56) + v4 + v3) = (a2 >> (((v2 - 98) & 0xBDu) + 99)) ^ 0xF3;
  return (*(v5 + 8 * v2))();
}

uint64_t sub_1F29C()
{
  __asm { BTI             j }

  return (*(v2 + 8 * ((21 * (((((v0 ^ 0x4E) - 78) ^ ((v0 ^ 0x72) - 114) ^ ((v0 ^ 0xCF) + 49)) + 3 * (v1 ^ 0x68) - 94) >= (v1 ^ 0x53u))) ^ v1)))();
}

uint64_t sub_1F30C()
{
  __asm { BTI             j }

  v10 = v0 - 1387476587 < (v3 ^ 0xC2u) - 146836353 || v1 + v2 + 1 - 146835700 <= (v0 - 1387476587);
  return (*(v4 + 8 * ((252 * v10) ^ v3)))();
}

uint64_t sub_1F374@<X0>(int a1@<W0>, uint64_t a2@<X7>, unint64_t a3@<X8>)
{
  __asm { BTI             j }

  *(*(a2 + 56) + v4 + v3) = (a3 >> (a1 + 80)) ^ 0xF3;
  return (*(v5 + 8 * a1))();
}

uint64_t sub_1F3AC()
{
  __asm { BTI             j }

  return (*(v2 + 8 * (v1 | (2 * (v0 == (((v1 - 112) & 0xAF) + ((v1 + 37) ^ 0x14)))))))();
}

uint64_t sub_1F3F4()
{
  __asm { BTI             j }

  v9 = v0 - 1716785709;
  v11 = v9 < v3 - 476144936 || v1 + v2 - 476144821 <= v9;
  return (*(v4 + 8 * ((353 * v11) ^ v3)))();
}

uint64_t sub_1F44C@<X0>(uint64_t a1@<X7>, char a2@<W8>)
{
  __asm { BTI             j }

  *(*(a1 + 56) + v3 + v2) = a2 - (((v4 + 27) ^ 0x6A) & (2 * a2)) - 13;
  return (*(v5 + 8 * v4))();
}

uint64_t sub_1F494(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  __asm { BTI             j }

  return (*(a8 + 48))();
}

uint64_t sub_1F4A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54)
{
  __asm { BTI             j }

  return (*(v55 + 8 * (((((a7 - 653) | 0x59) + 139) * v54) ^ (a7 + 126))))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54);
}

uint64_t sub_1F4D4@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, _DWORD *a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  __asm { BTI             j }

  *a31 = a65;
  return (*(v65 + 8 * a1))();
}

uint64_t sub_1F4F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t (*a51)(void))
{
  __asm { BTI             j }

  return a51();
}

uint64_t sub_1F504(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, unsigned __int8 a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, int a30)
{
  __asm { BTI             j }

  return (*(v30 + 8 * ((58 * ((a24 ^ (v32 == (a30 ^ (v31 + 26)))) & 1)) ^ (a7 - 376))))();
}

uint64_t sub_1F550(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, unsigned int *a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43)
{
  __asm { BTI             j }

  v48 = *a36;
  v50 = *(v43 + 8 * a30);
  return (*(v43 + 8 * ((((a30 + 898) | 0x45) ^ 0x3AA) + a30)))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a43, a39, a40, a41, a42, a43);
}

uint64_t sub_1F59C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8)
{
  __asm { BTI             j }

  v13 = *(a8 + 64);
  v14 = LODWORD(STACK[0x20C]);
  return (*(v8 + 8 * (a7 - 530)))();
}

uint64_t sub_1F5BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, int a27, int a28)
{
  __asm { BTI             j }

  return (*(v29 + 8 * ((((a28 & 0x85B2D5F7) + 1337) * v28) ^ (a7 + 76))))();
}

uint64_t sub_1F5EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, int a57, int a58)
{
  __asm { BTI             j }

  **(a8 + 152) = a58;
  return (*(v59 + 8 * (v58 + 191)))();
}

uint64_t sub_1F610(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, int a25)
{
  __asm { BTI             j }

  return (*(v25 + 8 * ((601 * (v27 == (a25 ^ (v26 + 128)))) ^ (a7 - 214))))();
}

uint64_t sub_1F648(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, int a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49)
{
  __asm { BTI             j }

  v54 = *(*(a8 + 112) + 8);
  *(a8 + 152) = a49 + 56;
  v55 = 0xFF4089D7250E727 - v54;
  if (v54 >= 0)
  {
    v55 = ((2 * v54) & 0x9FEA39FFF6BDDF7ELL) + (v54 ^ (a25 - 694405505) & 0x2963CBDE ^ 0xCFF51CFFFB5EED61) + 0x3FFEEB9D76F1F768;
  }

  return (*(v49 + 8 * (a25 | ((v55 - 0xFF4089D7250E727 < (((a25 + 400) | 0x103u) ^ 0x313uLL)) << 6))))();
}

uint64_t sub_1F724()
{
  __asm { BTI             j }

  return (*(v2 + 8 * (((((v1 - 1752960871) & 0x687C0EFC) + ((v1 - 622) | 0x204) - 778) * (v0 < 0x10000)) ^ v1)))();
}

uint64_t sub_1F774()
{
  __asm { BTI             j }

  return (*(v1 + 8 * v0))();
}

uint64_t sub_1F7AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  __asm { BTI             j }

  return (*(v7 + 8 * (((((a7 - 327) | 0x21) ^ 0x754) * (v9 == v8)) ^ a7)))();
}

uint64_t sub_1F7E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56)
{
  __asm { BTI             j }

  a8[14] = a21;
  a8[5] = a41;
  v61 = a6 + a56;
  *a8 = a6 + a56;
  *v61 = 0;
  *(v61 + 64) = 0xF3F3F3F3F3F3F3F3;
  *(v61 + 72) = 0xF3F3F3F3F3F3F3F3;
  *(v61 + 44) = 0xF3F3F3F3F3F3F3F3;
  *(v61 + 52) = 0xF3F3F3F3F3F3F3F3;
  *(v61 + 32) = 0xF3F3F3F3F3F3F3F3;
  *(v61 + 24) = 0xF3F3F3F3F3F3F3F3;
  *(v61 + 8) = 0;
  v62 = *(a21 + 4);
  v64 = *(v56 + 8 * (a7 - 620));
  return (*(v56 + 8 * (a7 - 544)))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a6 + a56 + 60, a39, a40, a41, a42, a43, a44, a45, a46, a47, a6 + a56 + 24);
}

uint64_t sub_1F880(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, int a26, int a27)
{
  __asm { BTI             j }

  return (*(v27 + 8 * (((v29 == (a27 ^ (v28 - 287))) * (a7 - 466)) ^ (a7 - 350))))();
}

uint64_t sub_1F8B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43)
{
  __asm { BTI             j }

  v48 = *(a36 + 8);
  v50 = *(v43 + 8 * (a7 - 612));
  return (*(v43 + 872))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a42, a39, a40, a41, a42, a43);
}

uint64_t sub_1F8F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, int a25)
{
  __asm { BTI             j }

  return (*(v25 + 8 * ((1403 * (v27 == v26 + a25 - 53)) ^ (a7 - 214))))();
}

uint64_t sub_1F928()
{
  __asm { BTI             j }

  return (*(v2 + 8 * (((v0 < ((v1 - 243) ^ 0x54u) + 0xFFFFFFFFFD8CLL) * (((v1 - 243) | 0x54) ^ 0x270)) | v1)))();
}

uint64_t sub_1F96C()
{
  __asm { BTI             j }

  return (*(v1 + 8 * v0))();
}

uint64_t sub_1F99C()
{
  __asm { BTI             j }

  return (*(v1 + 8 * v0))();
}

uint64_t sub_1F9D0()
{
  __asm { BTI             j }

  return (*(v1 + 8 * v0))();
}

uint64_t sub_1FA00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  __asm { BTI             j }

  v28 = (v21 ^ 0xFB4BE74A8D8E1EDCLL) & (2 * (v21 & 0xF00BF7628DAF18D9)) ^ v21 & 0xF00BF7628DAF18D9;
  v29 = ((2 * (v21 ^ 0x7B4C278E96D63EEELL)) ^ 0x168FA1D836F24C6ELL) & (v21 ^ 0x7B4C278E96D63EEELL) ^ (2 * (v21 ^ 0x7B4C278E96D63EEELL)) & a20;
  v30 = v29 ^ 0x8940502409092211;
  v31 = (v29 ^ 0x90780A812710434) & (4 * v28) ^ v28;
  v32 = ((4 * v30) ^ 0x2D1F43B06DE498DCLL) & v30 ^ (4 * v30) & 0x8B47D0EC1B792634;
  v33 = (v32 ^ 0x90740A009600010) & (16 * v31) ^ v31;
  v34 = ((16 * (v32 ^ 0x8240904C12192623)) ^ 0xB47D0EC1B7926370) & (v32 ^ 0x8240904C12192623) ^ (16 * (v32 ^ 0x8240904C12192623)) & 0x8B47D0EC1B792630;
  v35 = (v34 ^ 0x804500C013102200) & (v33 << 8) ^ v33;
  v36 = (((v34 ^ 0xB02D02C08690407) << 8) ^ 0x47D0EC1B79263700) & (v34 ^ 0xB02D02C08690407) ^ ((v34 ^ 0xB02D02C08690407) << 8) & 0x8B47D0EC1B792600;
  v37 = v35 ^ a19 ^ (v36 ^ 0x340C00819200000) & (v35 << 16);
  return (*(v23 + 8 * ((81 * (((((v22 + 565) ^ 0x251) << (((8 * v20) ^ 0x98u) - 8)) & (v21 ^ (2 * ((v37 << 32) & 0xB47D0EC00000000 ^ v37 ^ ((v37 << 32) ^ 0x1B79263700000000) & (((v36 ^ 0x880710E402590037) << 16) & 0xB47D0EC00000000 ^ 0xB03C08400000000 ^ (((v36 ^ 0x880710E402590037) << 16) ^ 0x50EC1B7900000000) & (v36 ^ 0x880710E402590037)))) ^ 0x8000008080000080)) != 0)) ^ v22)))();
}

uint64_t sub_1FC5C()
{
  __asm { BTI             j }

  return (*(v1 + 8 * v0))();
}

uint64_t sub_1FD10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49)
{
  __asm { BTI             j }

  return (*(v51 + 8 * (v50 | (8 * (((((v49 ^ 0x19) - 25) ^ ((v49 ^ 0xC4) + 60) ^ (((v50 - 26) ^ 0x65) + (v49 ^ 0x2E))) - 28) < 0xF1u)))))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49);
}

uint64_t sub_1FD80()
{
  __asm { BTI             j }

  return (*(v1 + 8 * ((961 * (v3 == v2 + ((v0 - 439) | 0x28D) - 653)) ^ v0)))();
}

uint64_t sub_1FDBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56)
{
  __asm { BTI             j }

  v62 = *a8;
  a8[18] = *a8;
  a8[13] = a6 + a56 + 16;
  HIDWORD(a44) = v57;
  if (a48)
  {
    _ZF = v62 == 0;
  }

  else
  {
    _ZF = 1;
  }

  v64 = !_ZF;
  return (*(v58 + 8 * ((v64 * (((v56 + 72) ^ 0xFFFFFD86) + v56 - 491)) ^ v56)))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a6 + a56, a51, a52, a53);
}

uint64_t sub_1FE2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45)
{
  __asm { BTI             j }

  *a9 = 0;
  a9[1] = 0;
  v53 = v46[14] + 573044635 + v46[9] + v46[4];
  v54 = *(v47 + 8 * v45);
  return (*(v47 + 8 * (v45 + ((v45 - 37) | 0xDA) + 207)))(a1, a2, a3, a4, a5, a6, a7, a8, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a9 + 1);
}

uint64_t sub_1FE8C()
{
  __asm { BTI             j }

  *v1 = -15;
  *(v2 + 41) = v0;
  return (*(v4 + 8 * ((((v3 ^ 0x1BC) + 548) ^ 0x1FC) + (v3 ^ 0x1BC))))();
}

uint64_t sub_1FEC0@<X0>(int a1@<W8>)
{
  __asm { BTI             j }

  return (*(v1 + 8 * (((v3 == ((6 * (a1 ^ 0x285)) ^ (v2 + 48))) * (((a1 ^ 0x285) + 351) ^ 0xA4)) ^ a1)))();
}

uint64_t sub_1FF04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56)
{
  __asm { BTI             j }

  *(a8 + 88) = a39;
  LODWORD(a52) = *(v58 - 184) + 573044635 + *(v58 - 164) + *(v58 - 144) + *(v58 - 128);
  return (*(v57 + 8 * (v56 ^ 0x1FE)))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a56 + a6 - 96, a47, a48, a49, a50, a51, a52, *(v57 + 8 * v56), a42, a55);
}

uint64_t sub_1FF94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  __asm { BTI             j }

  *(a8 + 64) = v9;
  return (*(v11 + 8 * (((16 * (((v8 + 65) ^ (v10 == 0)) & 1)) & 0xDF | (32 * (((v8 + 65) ^ (v10 == 0)) & 1))) ^ v8)))();
}

uint64_t sub_1FFCC@<X0>(unsigned int a1@<W8>)
{
  __asm { BTI             j }

  return (*(v2 + 8 * ((((v1 + 594) ^ (v1 - 160) ^ 0x32F) * (a1 > 0x7F)) ^ v1)))();
}

uint64_t sub_20000@<X0>(uint64_t a1@<X8>)
{
  __asm { BTI             j }

  v8 = ((2 * a1) & 0x1FD96DF9ALL) - 0x2FFEFFFFFECB6FCDLL + (a1 ^ (v1 - 224) ^ 0x2FFEFFFFFECB6D40);
  if (v8 < (v1 ^ 0x100036DuLL))
  {
    v9 = 3;
  }

  else
  {
    v9 = 4;
  }

  if (v8 < 0x100)
  {
    v10 = 1;
  }

  else
  {
    v10 = 2;
  }

  if (v8 < 0x10000)
  {
    v9 = v10;
  }

  LODWORD(STACK[0x20C]) = v2 + v9 + 1;
  return (*(v3 + 8 * ((239 * ((v9 - 4) > 0xFFFFFFFA)) ^ v1)))();
}

uint64_t sub_200B0()
{
  __asm { BTI             j }

  *v1 = (v0 - 120) ^ 0x73;
  return (*(v3 + 8 * (v2 ^ 0x3DB)))();
}

uint64_t sub_20138@<X0>(char a1@<W8>)
{
  __asm { BTI             j }

  LODWORD(STACK[0x20C]) = v3 + 1;
  *v1 = a1 - ((((v2 + 13) | 0x52) + 12) & (2 * a1)) - 13;
  return (*(v4 + 8 * v2))();
}

uint64_t sub_20178()
{
  __asm { BTI             j }

  *v1 = v2;
  return (*(v3 + 8 * v0))();
}

uint64_t sub_20190()
{
  __asm { BTI             j }

  return v0();
}

uint64_t sub_2019C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, int a32, int a33)
{
  __asm { BTI             j }

  return (*(v33 + 8 * ((25 * (v35 == v34 + a33 - 521)) ^ (a7 - 490))))();
}

uint64_t sub_201D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, int a63)
{
  __asm { BTI             j }

  v71 = (((v64 - 441) | 0x22C) ^ (a64 + v66 + a52) ^ 0xF7F63DF3E7CF9CC3) + (((v64 + 688) ^ 0x1CF9F39C7) & (2 * (a64 + v66 + a52))) - 0x2A69C42C64B09172;
  v72 = v64;
  v73 = (*(v65 + 8 * (v64 + 720)))(((((v71 ^ 0x97FF7577BD535740) - 0x5A730CB03E4C5A06) ^ v71 ^ ((v71 ^ 0x70336FFE7AB7B151) + 0x4240E9C6065743E9) ^ ((v71 ^ 0xE58FB491F32E17A4) - 0x2803CD5670311AE2) ^ ((v71 ^ 0xCFCFD7DFB7D5FCF3) - 0x243AE1834CAF1B5)) & 0xFFFFFFFFFFFFFFF8 ^ 0xCD8C79C7831F0D40) + 16, 8);
  return (*(v65 + 8 * ((117 * (v73 == 0)) ^ v72)))(v73, v74, v75, v76, v77, v78, v79, v80, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57);
}

uint64_t sub_20350(void *a1)
{
  __asm { BTI             j }

  *a1 = 0;
  a1[1] = v1;
  return (*(v2 + 8 * v3))();
}

uint64_t sub_20378(uint64_t a1, uint64_t a2, uint64_t a3, __n128 a4, __n128 a5, uint64_t a6, uint64_t a7)
{
  __asm { BTI             j }

  v15.n128_u64[0] = 0xF3F3F3F3F3F3F3F3;
  v15.n128_u64[1] = 0xF3F3F3F3F3F3F3F3;
  return (*(v10 + 8 * (v8 | (2 * (((v9 > v7) ^ (v8 + 62)) & 1)))))(a1, a2, a3, 1063476680, a7, &STACK[0x250], a4, a5, v15);
}

uint64_t sub_203DC@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, int a56, int a57)
{
  __asm { BTI             j }

  v63 = (((a1 & 0x2F0C032B) + 225) | 0x89) + 598;
  *v58 = 48;
  v64 = ((((v63 + a57 - 1833447059) ^ 0x120FFF90) + 828015529) ^ (v63 + a57 - 1833447059) ^ (((v63 + a57 - 1833447059) ^ 0xBDABAAE) + 680511127) ^ (((v63 + a57 - 1833447059) ^ 0x3E147B02) + 490800955) ^ (((v63 + a57 - 1833447059) ^ 0xFB6BBDFB) - 666975804)) != 3702162375;
  return (*(v57 + 8 * (((32 * v64) | (v64 << 6)) ^ a1 & 0x2F0C032Bu)))();
}

uint64_t sub_204E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46)
{
  __asm { BTI             j }

  v55 = ((v47 - 1081 + 3702162205) ^ v46) < (v47 ^ 0x4EBuLL) || (v49 - a46) > 0xFFFFFFFFFFFFFFDFLL;
  return (*(v48 + 8 * (((4 * v55) | (16 * v55)) ^ v47)))();
}

uint64_t sub_20544()
{
  __asm { BTI             j }

  return (*(v2 + 8 * ((((v1 + 1187182355) & 0xB93D0ACF ^ ((v1 ^ 0x250) - 112)) * (v0 > 0x1F)) ^ v1)))();
}

uint64_t sub_20590()
{
  __asm { BTI             j }

  return (*(v1 + 8 * (v0 - 482)))();
}

uint64_t sub_205B8(double a1, double a2, int8x16_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10)
{
  __asm { BTI             j }

  v20 = veorq_s8(*(a5 + v10), a3);
  v21 = (v14 + v10);
  v21[-1] = veorq_s8(*(a5 + v10 - 16), a3);
  *v21 = v20;
  return (*(v15 + 8 * (((v13 == 0) * (((v11 - 285) | a10) - 986)) ^ v12)))();
}

uint64_t sub_20608(int a1)
{
  __asm { BTI             j }

  return (*(v3 + 8 * (((((v1 == v2) ^ a1) & 1) * (((a1 - 969) | 0x82) ^ 0x753)) ^ a1)))();
}

uint64_t sub_2064C()
{
  __asm { BTI             j }

  return (*(v2 + 8 * ((((v0 & 0x18) == ((v1 + 354) | 0x81u) - 653) * (((v1 + 382) | 0xD2) - 279)) ^ v1)))();
}

uint64_t sub_20694()
{
  __asm { BTI             j }

  return (*(v3 + 8 * v2))(v0 - v1 - 8);
}

uint64_t sub_206DC(uint64_t a1)
{
  __asm { BTI             j }

  *(v5 + v1) = veor_s8(*(a1 + v1), v7);
  return (*(v6 + 8 * (((v2 == 0) * (v3 + 158)) ^ v4)))(a1 - 8);
}

uint64_t sub_20720()
{
  __asm { BTI             j }

  return (*(v3 + 8 * ((((v2 + 186) ^ (v2 + 324)) * (v0 == v1)) ^ v2)))();
}

uint64_t sub_2074C()
{
  __asm { BTI             j }

  return (*(v1 + 8 * (v0 - 498)))();
}

uint64_t sub_20760()
{
  __asm { BTI             j }

  v10 = (v5 + v2);
  v11 = v2 - 1;
  *v10 = *(v0 + v11) ^ 0xF3;
  return (*(v4 + 8 * (((v11 == 0) * v3) ^ v1)))();
}

uint64_t sub_20794()
{
  __asm { BTI             j }

  return (*(v1 + 8 * (v0 - 413)))();
}

uint64_t sub_207AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  __asm { BTI             j }

  return (*(v8 + 8 * (((v6 == v7) * a5) ^ (v5 + 275))))();
}

uint64_t sub_207D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  __asm { BTI             j }

  return (*(v11 + 8 * ((59 * (v9 + (((v8 ^ 0x214) - 1048082592) & 0x3E7879FFu) + 148 + 1813684870 + **(a8 + 88) > v10)) ^ v8 ^ 0x214)))();
}

uint64_t sub_20844()
{
  __asm { BTI             j }

  return (*(v2 + 8 * ((1004 * (((((v0 - 1051917557) ^ (((v1 - 372) | 0x208) - 2044125133)) + 1927900606) ^ (v0 - 1051917557) ^ (((v0 - 1051917557) ^ 0x8886C1F4) + 2084998794) ^ (((v0 - 1051917557) ^ 0xF25DEC69) + 110994197) ^ (((v0 - 1051917557) ^ 0xF7CDBFDF) + 51245219)) == 188723330)) ^ v1)))();
}

uint64_t sub_20954(int a1, uint64_t a2)
{
  __asm { BTI             j }

  return (*(v2 + 8 * (a1 ^ (47 * ((a2 ^ 0xB3FB082uLL) < 8)))))();
}

uint64_t sub_209C8@<X0>(int a1@<W0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  __asm { BTI             j }

  return (*(v5 + 8 * ((107 * (v4 + a3 - v3 - (a2 << 32) + 1651802489 < (4 * ((a1 + 831483881) & 0xCE708FCD ^ 0x2AE)) - 108)) ^ (a1 + 344))))();
}

uint64_t sub_20A38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  __asm { BTI             j }

  return (*(v6 + 8 * ((v5 < ((9 * (a5 ^ 0xED) - 360) | 0x8C) - 621) ^ a5)))(a1, 0);
}

uint64_t sub_20A74(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  __asm { BTI             j }

  return (*(v5 + 8 * a4))(((436 * (a4 ^ 0x36B) - 880) & v4) - a2 - 8);
}

uint64_t sub_20AD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __asm { BTI             j }

  *(v6 + v5) = veor_s8(*(a4 + v5), v8);
  return (*(v7 + 8 * (((v4 - 111) ^ (a1 == 0)) & 1 ^ v4)))(a1 - 8);
}

uint64_t sub_20B1C(uint64_t a1, int a2)
{
  __asm { BTI             j }

  return (*(v4 + 8 * ((((a2 - 1181060922) & 0x46658ECD ^ 0x448) * (v2 == v3)) ^ a2)))();
}

uint64_t sub_20B5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47)
{
  __asm { BTI             j }

  return (*(v47 + 8 * (((((3 * a32) ^ 0x19C) + (HIDWORD(a31) & 0x3B3FFBDB)) * (v49 == v48)) ^ (a7 - 125))))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47);
}

uint64_t sub_20BA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, int a44, int a45, _DWORD *a46)
{
  __asm { BTI             j }

  v53 = (a45 + v48 + LODWORD(STACK[0x234]));
  *a46 = v53;
  v54 = (v46 ^ 0x253u) + 413 + (v53 ^ 0xFFBEFB2DB5F7FE77) + ((2 * v53) & 0x16BEFFCEELL) + 103 * (v46 ^ 0x253u) - 0x30860724528945D9;
  v55 = (*(v47 + 8 * (v46 + 644)))(((((v54 ^ 0xE889CE0A0A272A71) - 0x27B13A03694996D5) ^ v54 ^ ((v54 ^ 0x2087CED82D63641ELL) + 0x1040C52EB1F22746) ^ ((v54 ^ 0x6048422CB9D52FB8) + 0x508F49DA25446CE8) ^ ((v54 ^ 0x677EB6F7FDFFDD77) + 0x57B9BD01616E9E2DLL)) & 0xFFFFFFFFFFFFFFF8 ^ 0xCF38F409636EBCA0) + 16, 8) == 0;
  return (*(v47 + 8 * ((63 * v55) ^ v46)))();
}

uint64_t sub_20D20(void *a1)
{
  __asm { BTI             j }

  *a1 = 0;
  a1[1] = v1;
  return (*(v2 + 8 * v3))();
}

uint64_t sub_20D40()
{
  __asm { BTI             j }

  *STACK[0x238] = v0;
  return (*(v2 + 8 * ((((*v3 ^ 0x5677EEE6FBF7B2BFLL) - 0x5677EEE641081802 + ((2 * *v3) & 0x1F7EF657ELL) == 3136264893) * (((v1 - 518292164) & 0x1EE483AD) + 86)) ^ v1)))(643, 243, -3136264894);
}

uint64_t sub_20DEC(int a1, char a2, unint64_t a3)
{
  __asm { BTI             j }

  v13 = v5 < v6;
  *(v3 + v4) = a2;
  v14 = v4 + 1;
  if (v13 == v14 > a3)
  {
    v13 = v14 + v6 < v5;
  }

  return (*(v8 + 8 * ((!v13 * ((v7 + 234) ^ a1)) ^ v7)))();
}

uint64_t sub_20E44@<X0>(uint64_t *a1@<X8>)
{
  __asm { BTI             j }

  v7 = *a1;
  return (*(v2 + 8 * (v1 + 179)))();
}

uint64_t sub_20E5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37)
{
  __asm { BTI             j }

  return (*(v39 + 8 * (((v37 == 0) ^ (v38 - 53 + v38 + 1 + 1)) & 1 | (v38 + 647))))(a1, a2, a3, a4, a5, &STACK[0x250], a37);
}

uint64_t sub_20EB8()
{
  __asm { BTI             j }

  v8 = *v3 > ((v0 - 1216725169) & 0x4885C27A ^ 0x147649DFu);
  if ((v1 - 1583937790) < 0xEB89B478 == v8)
  {
    v8 = v1 - 1583937790 <= *v3 - 343296904;
  }

  return (*(v2 + 8 * ((v8 * ((v0 - 1216725169) ^ 0xB77A3D2D)) ^ v0)))();
}

uint64_t sub_20F4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, int a44, int a45)
{
  __asm { BTI             j }

  *v45 = -62;
  v53 = ((a45 + 414236859) ^ 0x5D5C558E) & (2 * ((a45 + 414236859) & 0x9D5C91CE)) ^ (a45 + 414236859) & 0x9D5C91CE;
  v54 = ((2 * ((a45 + 414236859) ^ 0x77FC5516)) ^ (((v46 + 458) | 0x8E) - 717126398)) & ((a45 + 414236859) ^ 0x77FC5516) ^ (2 * ((a45 + 414236859) ^ 0x77FC5516)) & 0xEAA0C4D8;
  v55 = (v54 ^ 0xC0008010) & (4 * v53) ^ v53;
  v56 = ((4 * (v54 ^ 0x2AA04448)) ^ 0xAA831360) & (v54 ^ 0x2AA04448) ^ (4 * (v54 ^ 0x2AA04448)) & 0xEAA0C4D8;
  v57 = (v56 ^ 0xAA800040) & (16 * v55) ^ v55;
  v58 = ((16 * (v56 ^ 0x4020C498)) ^ 0xAA0C4D80) & (v56 ^ 0x4020C498) ^ (16 * (v56 ^ 0x4020C498)) & 0xEAA0C4D0;
  return (*(v47 + 8 * ((39 * (((a45 + 414236859) ^ (2 * ((((v58 ^ 0x40A08058) << 8) & 0x6AA00000 ^ 0x20800000 ^ (((v58 ^ 0x40A08058) << 8) ^ 0xA0C40000) & (v58 ^ 0x40A08058)) & (((v58 ^ 0xAA004400) & (v57 << 8) ^ v57) << 16) ^ (v58 ^ 0xAA004400) & (v57 << 8) ^ v57))) != -1654877746)) ^ v46)))(2640089550);
}

uint64_t sub_210F0@<X0>(unint64_t a1@<X0>, uint64_t a2@<X7>, void *a3@<X8>)
{
  __asm { BTI             j }

  v11 = (v4 ^ a1) < 8 || *a3 - *(a2 + 104) > 0xFFFFFFFFFFFFFFDFLL;
  return (*(v5 + 8 * (((((58 * (v3 ^ 0x4A3) - 233) | 0x84) ^ 0x2C3) * v11) ^ v3)))();
}

uint64_t sub_21154()
{
  __asm { BTI             j }

  return (*(v2 + 8 * ((472 * (v0 >= ((v1 + 607551675) & 0xDBC97EDF ^ ((v1 + 79) | 4) ^ 0x1E8uLL))) ^ v1)))();
}

uint64_t sub_211AC()
{
  __asm { BTI             j }

  return (*(v1 + 8 * (v0 - 95)))(471);
}

uint64_t sub_211CC@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  __asm { BTI             j }

  v12 = v3 - v6 + v2;
  v13 = *(v12 - 32);
  v14 = a2 + v3 - v6;
  *(v14 - 15) = *(v12 - 16);
  *(v14 - 31) = v13;
  LODWORD(v14) = ((v4 - 150) ^ a1) + v6 != v5;
  return (*(v7 + 8 * (((2 * v14) | (4 * v14)) ^ (v4 - 101))))();
}

uint64_t sub_21218()
{
  __asm { BTI             j }

  return (*(v3 + 8 * ((((((v2 + 1310546171) & 0xB1E2A7FF) - 101) ^ 0x16D) * (v0 == v1)) ^ v2)))();
}

uint64_t sub_2125C()
{
  __asm { BTI             j }

  return (*(v3 + 8 * (((((v1 ^ 0x295) & v0) == 0) * (((v2 - 686) | 0x301) ^ 0x50A)) ^ v2)))();
}

uint64_t sub_212A0()
{
  __asm { BTI             j }

  return (*(v1 + 8 * v0))();
}

uint64_t sub_212F8(uint64_t a1, uint64_t a2, int a3, uint64_t a4, unsigned int a5)
{
  __asm { BTI             j }

  *v7 = *(v8 + (((v5 - 667) | a5) ^ v9));
  return (*(v10 + 8 * (((v6 != 0) * a3) ^ v5)))();
}

uint64_t sub_21338(int a1)
{
  __asm { BTI             j }

  return (*(v3 + 8 * (((v1 != v2) * (((a1 - 655) | 0x81) - 615)) ^ a1)))();
}

uint64_t sub_21374()
{
  __asm { BTI             j }

  return (*(v1 + 8 * (v0 - 427)))();
}

uint64_t sub_2138C@<X0>(int a1@<W3>, uint64_t a2@<X8>)
{
  __asm { BTI             j }

  v10 = (a2 + v4);
  v11 = v4 - 1;
  *v10 = *(v2 + v11);
  return (*(v5 + 8 * (((v11 == 0) * a1) ^ v3)))();
}

uint64_t sub_213BC()
{
  __asm { BTI             j }

  return (*(v1 + 8 * (v0 - 151)))();
}

uint64_t sub_213D4()
{
  __asm { BTI             j }

  return (*(v3 + 8 * (((((v1 + 1191668972) & 0xB8F892DE) - 512) * (v0 == v2)) | (v1 + 374))))();
}

uint64_t sub_2141C()
{
  __asm { BTI             j }

  return (*(v2 + 8 * ((((LODWORD(STACK[0x208]) + v1) > *v3) * ((v0 - 391) ^ 0x3A7 ^ (24 * ((v0 - 534) ^ 0x6E)))) ^ (v0 - 534))))();
}

uint64_t sub_21474(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, int a61, int a62)
{
  __asm { BTI             j }

  *(**(a8 + 144) + v63) = -61;
  v69 = (((v62 - 226) | 0x483) ^ 0xA8D5F4E0 ^ (a62 - 1993121486)) & (2 * ((a62 - 1993121486) & 0x2CD9F157)) ^ (a62 - 1993121486) & 0x2CD9F157;
  v70 = ((2 * ((a62 - 1993121486) ^ (v62 - 1328279107))) ^ 0x381BC728) & ((a62 - 1993121486) ^ (v62 - 1328279107)) ^ (2 * ((a62 - 1993121486) ^ (v62 - 1328279107))) & 0x9C0DE394;
  v71 = (v70 ^ 0x1009C300) & (4 * v69) ^ v69;
  v72 = ((4 * (v70 ^ 0x84042094)) ^ 0x70378E50) & (v70 ^ 0x84042094) ^ (4 * (v70 ^ 0x84042094)) & 0x9C0DE394;
  v73 = (v72 ^ 0x10058210) & (16 * v71) ^ v71;
  v74 = ((16 * (v72 ^ 0x8C086184)) ^ 0xC0DE3940) & (v72 ^ 0x8C086184) ^ (16 * (v72 ^ 0x8C086184)) & 0x9C0DE390;
  return (*(v64 + 8 * ((15 * (((a62 - 1993121486) ^ (2 * ((((v74 ^ 0x1C01C294) << 8) & 0x1C0D0000 ^ 0xC010000 ^ (((v74 ^ 0x1C01C294) << 8) ^ 0xDE30000) & (v74 ^ 0x1C01C294)) & (((v74 ^ 0x800C2100) & (v73 << 8) ^ v73) << 16) ^ (v74 ^ 0x800C2100) & (v73 << 8) ^ v73))) != 752480599)) ^ v62)))();
}

uint64_t sub_2162C(int a1)
{
  __asm { BTI             j }

  v8 = *v1;
  return (*(v3 + 8 * ((27 * ((((a1 - 15) + 752479423) ^ v2) < 8)) ^ a1)))();
}

uint64_t sub_216B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __asm { BTI             j }

  return (*(v8 + 8 * ((81 * ((((v7 + 1800843620) ^ ((v6 - ((a4 << 32) + v4) - v5 + 538432615) < 0x20)) & 1) == 0)) ^ v7)))();
}

uint64_t sub_21714(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  __asm { BTI             j }

  return (*(v6 + 8 * (((((((a4 & 0x94A94BF7) - 436) | 0x226) + 39) ^ v5) * (v4 > 0x1F)) ^ a4 & 0x94A94BF7)))(0);
}

uint64_t sub_21758()
{
  __asm { BTI             j }

  return (*(v2 + 8 * (v1 + 259)))(v0 & 0xFFFFFFE0, 0);
}

uint64_t sub_2177C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  __asm { BTI             j }

  v17 = ~a2 + v9;
  v18 = *(v7 + v17 - 15);
  v19 = *(v7 + v17 - 31);
  v20 = v6 + v17 + v8;
  *(v20 - 15) = v18;
  *(v20 - 31) = v19;
  return (*(v12 + 8 * (((((v10 - 568) ^ a6) + a2 != a1) * v11) ^ (v10 + 217))))();
}

uint64_t sub_217D0(uint64_t a1, uint64_t a2, int a3)
{
  __asm { BTI             j }

  return (*(v4 + 8 * ((((a3 + 415) ^ 0x1F6) * (v3 == a1)) | a3)))();
}

uint64_t sub_21804(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  __asm { BTI             j }

  return (*(v6 + 8 * ((((a5 ^ 0x392) + 779) * ((v5 & 0x18) == 0)) ^ a5)))(a1, v5 & 0x1F, (a5 ^ 0x392u) + 39);
}

uint64_t sub_21838(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  __asm { BTI             j }

  return (*(v6 + 8 * a4))(a1, ((a4 - 8) ^ 0x259) & v5, v4 - 7);
}

uint64_t sub_21868(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  __asm { BTI             j }

  v15 = (((v9 - 393) - 214) ^ a1) + v8;
  *(a6 + v15 + v7) = *(a3 + v15);
  _ZF = a7 == a1;
  v16 = a1 + 8;
  v17 = !_ZF;
  return (*(v10 + 8 * ((56 * v17) ^ v9)))(v16);
}

uint64_t sub_218B4(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  __asm { BTI             j }

  return (*(v6 + 8 * (((((v5 == a5) ^ (a4 - 72)) & 1) * ((a4 + 200414904) & 0xF40DEAFF ^ 0x3FA)) ^ a4)))();
}

uint64_t sub_2190C(uint64_t a1, uint64_t a2, int a3)
{
  __asm { BTI             j }

  return (*(v3 + 8 * (a3 - 333)))();
}

uint64_t sub_21924(uint64_t a1, uint64_t a2)
{
  __asm { BTI             j }

  v12 = a2 - 1;
  *(v2 + v12 + v4) = *(v3 + v12);
  return (*(v7 + 8 * (((v12 == 0) * v6) ^ v5)))();
}

uint64_t sub_21958()
{
  __asm { BTI             j }

  return (*(v1 + 8 * (v0 - 391)))();
}

uint64_t sub_21970()
{
  __asm { BTI             j }

  return (*(v5 + 8 * (((v2 + v1 - (v0 + v4) - 1412828331 == v3 - 874396368) * ((v3 - 53) ^ 0x198)) ^ (v3 - 638))))();
}

uint64_t sub_219C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60)
{
  __asm { BTI             j }

  return (*(v62 + 8 * ((1968 * (v60 + ((v61 + 294) ^ 0x1EBu) - 212 + 1275252519 + *(a60 + 36) > *v63)) ^ (v61 + 294))))();
}

uint64_t sub_21A24(int a1)
{
  __asm { BTI             j }

  v7 = ((((v1 + 1269285814) ^ 0x996F670D) - 217388576) ^ (v1 + 1269285814) ^ (((v1 + 1269285814) ^ 0xA7B3F20F) - 841581346) ^ (((v1 + 1269285814) ^ 0xFDB7DE3F) - 1747824402) ^ (((((a1 - 563166117) & 0x21913EFE) - 425) ^ 0x3C94B7F6) + ((v1 + 1269285814) ^ 0x56F13A10))) == -1785040595;
  return (*(v2 + 8 * (((4 * v7) | (16 * v7)) ^ a1)))();
}

uint64_t sub_21AEC(uint64_t a1, uint64_t a2)
{
  __asm { BTI             j }

  v9 = *v2;
  return (*(v4 + 8 * ((11 * ((a2 ^ 0x959A712DuLL) > 7)) ^ v3)))((v3 - 301) | 0x85u, a2 ^ 0x959A712DLL);
}

uint64_t sub_21B80(int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __asm { BTI             j }

  return (*(v7 + 8 * ((((639 * (a1 ^ 0x28F) - 625) ^ 0x37E) * ((0x3D3EF97DD7CDFDFBLL - a4 - a3 + v4 - v5 + 20) < 0x20)) ^ (639 * (a1 ^ 0x28F)))))(639 * (a1 ^ 0x28Fu) - 625, v6);
}

uint64_t sub_21BE4(int a1)
{
  __asm { BTI             j }

  return (*(v2 + 8 * ((221 * (v1 >= (((a1 ^ 0x6DA) - 1298619530) & 0x4D675ABF ^ 0x2ADuLL))) ^ a1 ^ 0x6DA)))();
}

uint64_t sub_21C40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __asm { BTI             j }

  return (*(v5 + 8 * (a1 - 194)))(a1, a1 ^ 0x16E, v4 - 0x3D3EF97DD7CDFE1BLL + a4 + a3);
}

uint64_t sub_21C84(int a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  __asm { BTI             j }

  v12 = *(a5 + v6);
  v13 = (a3 + v6);
  *v13 = *(a5 + v6 - 16);
  v13[1] = v12;
  return (*(v7 + 8 * (((a6 != 0) * (a2 - 888)) ^ (a1 - 237))))();
}

uint64_t sub_21CC8(uint64_t a1, unsigned int a2)
{
  __asm { BTI             j }

  return (*(v4 + 8 * ((2001 * (((v2 == v3) ^ (a2 + 67 + a2 + 13 + 1)) & 1)) ^ a2)))();
}

uint64_t sub_21D20(int a1)
{
  __asm { BTI             j }

  return (*(v2 + 8 * ((500 * ((((((a1 | 0xD0) - 77904247) & 0x4A4B8FF) - 103) & v1) == 0)) ^ (a1 | 0xD0))))((a1 | 0xD0u) + 407, v1 & 0x1F);
}

uint64_t sub_21D70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  __asm { BTI             j }

  return (*(v5 + 8 * a5))();
}

uint64_t sub_21DB4(unsigned int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  __asm { BTI             j }

  v15 = ((a1 + 143 - 259) ^ v9) + v8;
  *(a6 + v15 + v7) = *(a3 + v15);
  return (*(v10 + 8 * ((4 * (a7 != v9)) | (8 * (a7 != v9)) | a1)))();
}

uint64_t sub_21E00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  __asm { BTI             j }

  return (*(v6 + 8 * ((((a5 + 395) ^ ((a5 + 126) | 0x10) ^ 0x100) * (v5 == a4)) ^ a5)))();
}

uint64_t sub_21E40(int a1)
{
  __asm { BTI             j }

  return (*(v1 + 8 * (a1 - 545)))();
}

uint64_t sub_21E54(int a1, uint64_t a2)
{
  __asm { BTI             j }

  v12 = a2 - 1;
  *(v2 + v12 + v4) = *(v3 + v12);
  return (*(v7 + 8 * (((v12 == 0) * ((a1 - 253) ^ v6)) ^ v5)))();
}

uint64_t sub_21E90(uint64_t a1, uint64_t a2, int a3)
{
  __asm { BTI             j }

  v10 = *(v3 + 36);
  v11 = *v5;
  return (*(v4 + 8 * a3))();
}

uint64_t sub_21EC0()
{
  __asm { BTI             j }

  return (*(v5 + 8 * (((((v4 + 728428060) & 0x54950F5D) + *(v0 + 16) + v3 + v1 + 34611420 <= v2) * (v4 ^ 0x4ED)) ^ v4)))();
}

uint64_t sub_21F24()
{
  __asm { BTI             j }

  v7 = (((((v1 ^ 0x64F) - 641) | 0x342) - 799) ^ 0x2E4032E8) + v0;
  v8 = (((v7 ^ 0x25B7EF47) - 1569001237) ^ v7 ^ ((v7 ^ 0x9C36602D) + 469467009) ^ ((v7 ^ 0x3E589CCE) - 1181383836) ^ ((v7 ^ 0xFFEBF3F6) + 2015816796)) == 2016600146;
  return (*(v2 + 8 * ((v8 | (8 * v8)) ^ v1 ^ 0x64Fu)))();
}

uint64_t sub_21FE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  __asm { BTI             j }

  v12 = *v5;
  return (*(v7 + 8 * (v6 ^ (8 * ((a5 ^ 0x7832E052uLL) >= (((v6 - 1845580948) & 0x6E0157E9u) - 252) - 645)))))();
}

uint64_t sub_2208C(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  __asm { BTI             j }

  return (*(v6 + 8 * ((((a2 + 109820726) & 0xF97443CD ^ 0x28E) * ((v4 - 0x402A009824E12247 - a4 - a3 - v5) > 0x1F)) ^ a2)))();
}

uint64_t sub_220F0(uint64_t a1, int a2)
{
  __asm { BTI             j }

  return (*(v3 + 8 * ((((((a2 + 353) ^ 0x667) - 412) ^ 0x102) * (v2 < 0x20)) ^ (a2 + 353))))();
}

uint64_t sub_2212C(uint64_t a1, int a2)
{
  __asm { BTI             j }

  return (*(v3 + 8 * a2))(v2 - 7);
}

uint64_t sub_22154(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  __asm { BTI             j }

  v15 = (((a2 + 676) - 918) ^ v8) + v7;
  *(a5 + v15 + v6) = *(a1 + v15);
  return (*(v10 + 8 * (((a6 == v8) * v9) ^ a2)))();
}

uint64_t sub_2219C(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  __asm { BTI             j }

  return (*(v5 + 8 * ((((((a4 - 397) | 0x85) ^ 0x616) + a4 - 253) * (v4 == a3)) ^ a4)))();
}

uint64_t sub_221E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, int a35)
{
  __asm { BTI             j }

  return (*(v35 + 8 * (((a35 + 50) * (v37 == v36)) ^ (a7 - 638))))();
}

uint64_t sub_22210(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, int a52, int a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, int a62, int a63)
{
  __asm { BTI             j }

  v69 = v64 + (a35 ^ 0xCF) + a63 - 218;
  LODWORD(STACK[0x208]) = v69;
  LODWORD(STACK[0x234]) = a53 + v69;
  v70 = *(a8 + 104);
  v72 = *(v63 + 8 * a35);
  return (*(v63 + 8 * (a35 + 441)))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45);
}

uint64_t sub_22264(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8)
{
  __asm { BTI             j }

  v13 = *(a8 + 16);
  return (*(v8 + 8 * (a7 + 275)))();
}

uint64_t sub_22280()
{
  __asm { BTI             j }

  v8 = v0 + 111;
  v10 = v4 == (v0 ^ 0x3AB ^ (v2 + 52) ^ v0 ^ 0x39F) || v3 == 0;
  return (*(v1 + 8 * (v10 | v8)))();
}

uint64_t sub_222C0@<X0>(int a1@<W8>)
{
  __asm { BTI             j }

  return (*(v2 + 8 * (((v3 != v1) * ((a1 - 1774616887) & 0x69C683BD ^ 0x3A4)) | a1)))();
}

uint64_t sub_2230C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  __asm { BTI             j }

  *(a56 + a6 - 16) = 0;
  v71 = (a65 + 1907606345 + *(a40 + 8) - *(a40 + 12));
  *(a56 + a6 - 8) = a65 + *(a40 + 8) - *(a40 + 12);
  v72 = (v71 | ((v71 < ((18 * ((v66 + 611042082) & 0xDB943BBD ^ 0x2B1)) ^ 0x71B3C771)) << 32)) - 0x78DC67FC7ACD2E9CLL;
  v73 = (v72 ^ 0xAEEC179E2C50421ALL) & (2 * (v72 & 0x409196B5ALL)) ^ v72 & 0x409196B5ALL;
  v74 = ((2 * (v72 ^ 0xAEEC17863C60503ELL)) ^ 0x284080846AF276C8) & (v72 ^ 0xAEEC17863C60503ELL) ^ (2 * (v72 ^ 0xAEEC17863C60503ELL)) & 0x5210101A35793B64;
  v75 = v74 ^ 0x5210100A15090924;
  v76 = (v74 ^ 0x3020603240) & (4 * v73) ^ v73;
  v77 = ((4 * v75) ^ 0x58C1C1E8D5E4ED90) & v75 ^ (4 * v75) & 0xD630707A35793B64;
  v78 = (v77 ^ 0x5000406815602900) & (16 * v76) ^ v76;
  v79 = ((16 * (v77 ^ 0x8630301220191264)) ^ 0x630707A35793B640) & (v77 ^ 0x8630301220191264) ^ (16 * (v77 ^ 0x8630301220191264)) & 0xD630707A35793B60;
  v80 = (v79 ^ 0x4200002215113200) & (v78 << 8) ^ v78;
  v81 = (((v79 ^ 0x9430705820680924) << 8) ^ 0x30707A35793B6400) & (v79 ^ 0x9430705820680924) ^ ((v79 ^ 0x9430705820680924) << 8) & 0xD630707A35793B00;
  v82 = v80 ^ 0xD630707A35793B64 ^ (v81 ^ 0x1030703031390000) & (v80 << 16);
  *(a8 + 120) = a56 + a6 - 16;
  *(a8 + 160) = a28;
  v83 = (*(v65 + 8 * (v66 ^ 0x774)))(((v72 ^ (2 * ((v82 << 32) & 0x5630707A00000000 ^ v82 ^ ((v82 << 32) ^ 0x35793B6400000000) & (((v81 ^ 0xC600004A04401B64) << 16) & 0x5630707A00000000 ^ 0x600400200000000 ^ (((v81 ^ 0xC600004A04401B64) << 16) ^ 0x707A357900000000) & (v81 ^ 0xC600004A04401B64))))) & 0xFFFFFFFFFFFFFFF8 ^ 0xFCDCE7C863EB1D90) + 16, 8);
  return (*(v65 + 8 * ((1981 * (v83 == 0)) ^ v66)))(v83, v84, v85, v86, v87, v88, v89, v90, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a56 + 16, a56, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48);
}

uint64_t sub_22620(void *a1)
{
  __asm { BTI             j }

  *a1 = 0;
  a1[1] = v1;
  *v2 = a1 + 2;
  return (*(v4 + 8 * (((((a1 == -16) ^ (v3 + 85)) & 1) * (v3 - 926)) ^ v3)))();
}

uint64_t sub_22674(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40)
{
  __asm { BTI             j }

  return (*(v41 + 8 * (((((*(a40 + 8) < *(a40 + 12)) ^ (v40 - 107)) & 1) * (((v40 - 552146249) & 0x20E9115E) - 73)) ^ (v40 - 215))))();
}

uint64_t sub_226E0()
{
  __asm { BTI             j }

  return (*(v3 + 8 * (((v2 - v1 != ((v0 + 2134478665) & 0x80C673FF) - 919) * ((v0 + 1069) ^ 0x4B4)) ^ v0)))();
}

uint64_t sub_22730(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, void *a40)
{
  __asm { BTI             j }

  return (*(v41 + 8 * (((*a40 != 0) * (((v40 + 125) ^ 0x6F) + 864)) ^ v40)))();
}

uint64_t sub_2276C()
{
  __asm { BTI             j }

  return (*(v2 + 8 * (((v0 > *v3) * ((v1 - 391) ^ v1 ^ 0x717 ^ 0x183)) ^ v1)))();
}

uint64_t sub_227B0()
{
  __asm { BTI             j }

  v7 = (v0 ^ 0xC7F12EEF) - 118489318 + ((v0 << (((-17 * v1 + 46) & 0x7Fu) - 122)) & 0x8FE25DDE);
  return (*(v2 + 8 * ((166 * ((((v7 ^ 0x48127F50) + 1997319847) ^ v7 ^ ((v7 ^ 0x858417E1) - 1164261864) ^ ((v7 ^ 0xF2A99A75) - 843625596) ^ ((v7 ^ 0xFFDEDCCD) - 1061155524)) == -1058984439)) ^ v1)))();
}

uint64_t sub_228A4()
{
  __asm { BTI             j }

  return (*(v2 + 8 * (v1 ^ (30 * ((v0 ^ 0xC0E12E09uLL) < 8)))))();
}

uint64_t sub_22934(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __asm { BTI             j }

  return (*(v6 + 8 * ((154 * (0xA40448058D60125BLL - a1 + a3 + v4 + a4 + (v5 ^ 0x68Du) - 215 > 0x1F)) ^ v5)))();
}

uint64_t sub_2298C(uint64_t a1, unsigned int a2)
{
  __asm { BTI             j }

  return (*(v3 + 8 * (((v2 < (a2 ^ 0x196uLL)) * ((a2 + 215) ^ 0x2EF)) ^ a2)))();
}

uint64_t sub_229CC()
{
  __asm { BTI             j }

  return (*(v1 + 8 * v0))();
}

uint64_t sub_229FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __asm { BTI             j }

  v17 = (v7 ^ v11 ^ ((v6 - 655) | v9)) + v5;
  *(a3 + v17) = *(v8 + v17 + v4);
  return (*(v10 + 8 * (((a4 == v7) * v12) ^ v6)))();
}

uint64_t sub_22A48(uint64_t a1, int a2)
{
  __asm { BTI             j }

  return (*(v3 + 8 * ((((a2 + 1518342293) & 0xA57FEF8F ^ ((a2 ^ 0x613) - 499)) * (v2 == a1)) | a2)))();
}

uint64_t sub_22A90()
{
  __asm { BTI             j }

  return (*(v1 + 8 * (v0 + 136)))(0);
}

uint64_t sub_22ACC(uint64_t a1, uint64_t a2, int a3)
{
  __asm { BTI             j }

  v15 = ((v8 - 700) ^ a1) + v6;
  v16 = v4 + v15 + v5;
  v17 = *(v16 - 31);
  v18 = v3 + v15;
  *(v18 - 15) = *(v16 - 15);
  *(v18 - 31) = v17;
  _ZF = v9 == a1;
  v19 = a1 + 32;
  v20 = _ZF;
  return (*(v10 + 8 * ((v20 * a3) ^ v7)))(v19);
}

uint64_t sub_22B18()
{
  __asm { BTI             j }

  return (*(v3 + 8 * (((((v2 + 448) ^ 0x5AF) - 353) * (v0 == v1)) ^ v2)))();
}

uint64_t sub_22B48(int a1)
{
  __asm { BTI             j }

  return (*(v3 + 8 * (((((a1 - 464) | v2) + ((a1 + 1837648635) & 0x9277B7BF) - 351) * ((v1 & 0x18) == 0)) ^ a1)))();
}

uint64_t sub_22B94()
{
  __asm { BTI             j }

  return (*(v1 + 8 * (v0 - 426)))();
}

uint64_t sub_22BB0()
{
  __asm { BTI             j }

  v11 = v5 - 1;
  *(v0 + v11) = *(v1 + v11 + v2);
  return (*(v6 + 8 * (((4 * (((v11 == 0) ^ (31 * v3)) & 1)) & 0xDF | (32 * (((v11 == 0) ^ (31 * v3)) & 1))) ^ (v4 - 454))))();
}

uint64_t sub_22BFC()
{
  __asm { BTI             j }

  v8 = v1 != ((v0 - 1689441663) & 0x64B2D117 ^ 0x14) && v2 != 0;
  return (*(v3 + 8 * ((v8 * (((v0 - 1051) | 1) - 92)) ^ v0)))();
}

uint64_t sub_22C4C@<X0>(int a1@<W8>)
{
  __asm { BTI             j }

  return (*(v3 + 8 * ((((a1 + v2) > *v4) * (((v1 + 899) ^ 0xFFFFFE60) + v1 + 556)) ^ v1)))();
}

uint64_t sub_22C90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __asm { BTI             j }

  return (*(v5 + 8 * (((v4 - 2107848590 - ((2 * v4) & 0x4B990E4) + v3 - 845 == -2107848439) * ((v3 ^ 0x3F0) - 8)) ^ v3)))(a1, a2, a3, -21, 2029);
}

uint64_t sub_22CF0()
{
  __asm { BTI             j }

  v9 = *v3;
  return (*(v4 + 8 * ((13 * ((v0 ^ v2) < ((v1 - 135) | 0xA2u) - 170)) ^ v1)))();
}

uint64_t sub_22D74()
{
  __asm { BTI             j }

  return (*(v5 + 8 * (((((v1 + 475) ^ 0x26A) - 222) * ((v4 - 0x13400588B0ACFALL - v3 - v2 - v0) > 0x1F)) ^ v1)))();
}

uint64_t sub_22DC8(uint64_t a1, int a2)
{
  __asm { BTI             j }

  return (*(v3 + 8 * (((v2 < a2 - 199) * ((a2 - 924964074) & 0x3721D68F ^ 0x297)) ^ a2)))();
}

uint64_t sub_22E14()
{
  __asm { BTI             j }

  return (*(v3 + 8 * v2))(v0 - 7, (v1 & 0xFFFFFFF8) - 8);
}

uint64_t sub_22E3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  __asm { BTI             j }

  v13 = (v4 ^ (v6 - 148) ^ 0xFFFFFFFFFFFFFFC1) + v3;
  *(a1 + v13 + a3) = *(v5 + v13);
  return (*(v8 + 8 * (((a2 == v4) * v7) ^ v6)))();
}

uint64_t sub_22E84()
{
  __asm { BTI             j }

  return (*(v3 + 8 * (((((((4 * v2) ^ 0xEC) - 12) | 0x285) - 562) * (v1 == v0)) ^ v2)))();
}

uint64_t sub_22EBC()
{
  __asm { BTI             j }

  return (*(v1 + 8 * (v0 + 341)))();
}

uint64_t sub_22EFC(uint64_t a1, __int128 *a2)
{
  __asm { BTI             j }

  v11 = *a2;
  *(v5 - 1) = *(a2 - 1);
  *v5 = v11;
  return (*(v6 + 8 * (((v4 != 0) * (v3 - 418)) ^ (v2 + 218))))();
}

uint64_t sub_22F38()
{
  __asm { BTI             j }

  return (*(v3 + 8 * (((((v1 == v0) ^ (5 * (v2 ^ 0x23) + 1)) & 1) * ((v2 ^ 0x2DA) - 228)) ^ v2)))();
}

uint64_t sub_22F7C()
{
  __asm { BTI             j }

  return (*(v2 + 8 * (v1 ^ (432 * ((v0 & 0x18) == 0)))))();
}

uint64_t sub_22FC4()
{
  __asm { BTI             j }

  return (*(v1 + 8 * (v0 + 188)))();
}

uint64_t sub_22FD8@<X0>(unint64_t a1@<X3>, int a2@<W4>, uint64_t a3@<X8>)
{
  __asm { BTI             j }

  v14 = ((5 * (v5 ^ v8)) ^ a1) + v6;
  *(v3 + v14 + a3) = *(v7 + v14);
  return (*(v9 + 8 * (((v14 == 0) * a2) ^ v4)))();
}

uint64_t sub_23018(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48)
{
  __asm { BTI             j }

  *(a8 + 80) = a6 + a33;
  HIDWORD(a47) = 1240640887;
  *(a8 + 128) = v50;
  v55 = *v50;
  v57 = *(v49 + 8 * v48);
  return (*(v49 + 8 * (v48 ^ (v48 + 198) ^ 0x100)))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48);
}

uint64_t sub_23078(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  __asm { BTI             j }

  v33 = *(v28 + 8 * (v26 + 45));
  return v33(a1, v27 & 0xFFFFFFE0, v33, (v27 & 0xFFFFFFE0) - 32, 0, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
}

uint64_t sub_230A8@<X0>(uint64_t a1@<X3>, uint64_t a2@<X4>, uint64_t a3@<X8>, int8x16_t a4@<Q2>)
{
  __asm { BTI             j }

  v16 = (a2 ^ a3 ^ ((v4 - 653) | v9)) + v6;
  v17 = *(v7 + v16 - 15);
  v18 = *(v7 + v16 - 31);
  v19 = v11 + v5 + v16;
  *(v19 - 15) = veorq_s8(v17, a4);
  *(v19 - 31) = veorq_s8(v18, a4);
  return (*(v10 + 8 * (((a1 != a2) * v8) ^ (v4 + 36))))();
}

uint64_t sub_23108(uint64_t a1, uint64_t a2, int a3)
{
  __asm { BTI             j }

  return (*(v4 + 8 * ((496 * (((v3 == a2) ^ (a3 - 109)) & 1)) ^ a3)))();
}

uint64_t sub_23140(uint64_t a1, uint64_t a2)
{
  __asm { BTI             j }

  return (*(v5 + 8 * ((((v2 ^ 0x200) + 947) * ((v4 & 0x18) == 0)) | v2 ^ 0x200)))(a1, a2, ((v2 ^ 0x200) - 110) & v3, (v2 ^ 0x200u) + 732);
}

uint64_t sub_23178()
{
  __asm { BTI             j }

  return (*(v1 + 8 * (v0 - 67)))();
}

uint64_t sub_2318C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __asm { BTI             j }

  v13 = a3 - 1;
  *(v7 + v3 + v13) = *(v5 + v13) ^ 0xF3;
  return (*(v6 + 8 * (((v13 == 0) * v8) ^ v4)))();
}

uint64_t sub_231C4()
{
  __asm { BTI             j }

  v7 = *v0;
  return (*(v2 + 8 * (v1 - 120)))();
}

uint64_t sub_231DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, _DWORD *a59)
{
  __asm { BTI             j }

  return (*(v63 + 8 * ((504 * ((((v59 + 407) ^ (v61 + v60 + 161883033 + *a59 > v62)) & 1) == 0)) ^ (v59 + 623))))();
}

uint64_t sub_23238(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18)
{
  __asm { BTI             j }

  v25 = v19 + 793256513;
  v26 = (v25 ^ 0x4491A32C) & (2 * (v25 & 0x86C53048)) ^ v25 & 0x86C53048;
  v27 = ((v18 + 887659463) & 0xCB1763B7 ^ 0x95ADE54B ^ (2 * (v25 ^ 0x4C13C33C))) & (v25 ^ 0x4C13C33C) ^ (2 * (v25 ^ 0x4C13C33C)) & 0xCAD6F374;
  v28 = (v27 ^ 0x4C260) & (4 * v26) ^ v26;
  v29 = ((4 * (v27 ^ 0x4A521114)) ^ 0x2B5BCDD0) & (v27 ^ 0x4A521114) ^ (4 * (v27 ^ 0x4A521114)) & a18;
  v30 = (v29 ^ 0xA52C140) & (16 * v28) ^ v28;
  v31 = ((16 * (v29 ^ 0xC0843224)) ^ 0xAD6F3740) & (v29 ^ 0xC0843224) ^ (16 * (v29 ^ 0xC0843224)) & 0xCAD6F370;
  return (*(v20 + 8 * ((111 * ((v25 ^ (2 * ((((v31 ^ 0x4290C034) << 8) & 0xCAD6F300 ^ 0x42D20000 ^ (((v31 ^ 0x4290C034) << 8) ^ 0xD6F30000) & (v31 ^ 0x4290C034)) & (((v31 ^ 0x88463300) & (v30 << 8) ^ v30) << 16) ^ (v31 ^ 0x88463300) & (v30 << 8) ^ v30))) == 2261069896)) ^ v18)))();
}

uint64_t sub_23450(uint64_t a1, int a2, unint64_t a3)
{
  __asm { BTI             j }

  return (*(v3 + 8 * ((97 * (((7 * (a2 ^ 0x398u) + 2261069483) ^ a3) >= ((a2 - 278) ^ 0x285uLL))) ^ a2)))((7 * (a2 ^ 0x398u) + 2261069483) ^ a3);
}

uint64_t sub_234D4@<X0>(uint64_t a1@<X2>, uint64_t a2@<X4>, uint64_t a3@<X8>)
{
  __asm { BTI             j }

  return (*(v6 + 8 * ((93 * (((21 * (v4 ^ 0x8E)) ^ (a1 + a3 - v5 - (a2 << 32) + 2892443396 < (v4 + 240) - 621)) & 1)) ^ v4)))(v3);
}

uint64_t sub_23538(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  __asm { BTI             j }

  return (*(v6 + 8 * ((22 * (((a5 - 110) ^ (v5 < (a5 ^ 0x302u) - 621)) & 1)) ^ a5)))();
}

uint64_t sub_2357C(int a1)
{
  __asm { BTI             j }

  return (*(v1 + 8 * (a1 - 11)))();
}

uint64_t sub_235B4(int a1, double a2, double a3, int8x16_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  __asm { BTI             j }

  v15 = veorq_s8(*(a7 + v7), a4);
  v16 = (v8 + v7);
  v16[-1] = veorq_s8(*(a7 + v7 - 16), a4);
  *v16 = v15;
  return (*(v10 + 8 * (((a6 != 0) * ((a1 - 503) ^ v9)) ^ (a1 - 38))))();
}

uint64_t sub_23604(uint64_t a1, int a2)
{
  __asm { BTI             j }

  return (*(v4 + 8 * (((57 * ((a2 + 1382021733) & 0xADA005F7 ^ 0xF4) - 285) * (v2 == v3)) ^ a2)))();
}

uint64_t sub_23654(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  __asm { BTI             j }

  return (*(v6 + 8 * (a4 ^ (((v4 & 0x18) == 0) * v5))))((((a4 - 112415828) & 0x6B356E4u) - 403 - 622) & v4);
}

uint64_t sub_2369C(uint64_t a1, uint64_t a2, int a3)
{
  __asm { BTI             j }

  return (*(v3 + 8 * a3))();
}

uint64_t sub_236D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  __asm { BTI             j }

  v18 = (v7 ^ v9 ^ ((v8 - 873) | v11)) + v6;
  *(a2 + v18 + v5) = veor_s8(*(a5 + v18), v13);
  return (*(v12 + 8 * (((a3 != v7) * v10) ^ v8)))();
}

uint64_t sub_23724(uint64_t a1)
{
  __asm { BTI             j }

  return (*(v2 + 8 * (((a1 == ((v1 + 240) ^ 0x28DLL)) * (((v1 - 253) | 0x53) ^ 0x3FC)) ^ v1)))();
}

uint64_t sub_23760(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  __asm { BTI             j }

  return (*(v4 + 8 * (a4 - 596)))();
}

uint64_t sub_23784(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  __asm { BTI             j }

  v16 = a1 - 1;
  *(v11 + v16 + v7) = *(a7 + v16) ^ 0xF3;
  return (*(v10 + 8 * (((v16 == 0) * (v9 - 138)) ^ v8)))();
}

uint64_t sub_237C0()
{
  __asm { BTI             j }

  v8 = (*v0 + v1);
  return (*(v3 + 8 * v2))((v2 + 146));
}

uint64_t sub_237DC(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, _DWORD *a54)
{
  __asm { BTI             j }

  return (*(v56 + 8 * (((*a54 + v57 + v54 - 1 > v55) * (7 * (a1 ^ 0x1AC) + ((a1 + 264) ^ 0xFFFFFC67))) ^ a1)))();
}

uint64_t sub_23838(uint64_t a1, int a2, int a3)
{
  __asm { BTI             j }

  v8 = ((a3 + 1865659315) ^ 0x44DDDE87) & (2 * ((a3 + 1865659315) & 0x46D99ED6)) ^ (a3 + 1865659315) & 0x46D99ED6;
  v9 = ((2 * ((a3 + 1865659315) ^ 0xCDCFD323)) ^ 0x162C9BEA) & ((a3 + 1865659315) ^ 0xCDCFD323) ^ (2 * ((a3 + 1865659315) ^ 0xCDCFD323)) & 0x8B164DF4;
  v10 = (v9 ^ 0x20409E0) & (4 * v8) ^ v8;
  v11 = ((4 * (v9 ^ 0x89124415)) ^ 0x2C5937D4) & (v9 ^ 0x89124415) ^ (4 * (v9 ^ 0x89124415)) & 0x8B164DF4;
  v12 = (v11 ^ 0x81005C0) & (16 * v10) ^ v10;
  v13 = ((16 * (v11 ^ 0x83064821)) ^ 0xB164DF50) & (v11 ^ 0x83064821) ^ (16 * (v11 ^ 0x83064821)) & 0x8B164DF0;
  return (*(v3 + 8 * (a2 ^ ((((a3 + 1865659315) ^ (2 * ((((v13 ^ 0xA1200A5) << 8) & 0xB160000 ^ 0x2040000 ^ (((v13 ^ 0xA1200A5) << 8) ^ 0x164D0000) & (v13 ^ 0xA1200A5)) & (((v13 ^ 0x81044D00) & (v12 << 8) ^ v12) << 16) ^ (v13 ^ 0x81044D00) & (v12 << 8) ^ v12))) != 1188667094) << 6))))();
}

uint64_t sub_239C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  __asm { BTI             j }

  return (*(v7 + 8 * ((248 * ((v5 ^ a5) >= (((v6 - 352) | 0x4C9u) ^ 0x4D3uLL))) ^ v6)))((v6 + 283));
}

uint64_t sub_23A48@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, int a3@<W3>, uint64_t a4@<X8>, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  __asm { BTI             j }

  return (*(v11 + 8 * ((50 * (a11 + a4 - a2 - a1 < ((a3 - 1235) | 0x285u) - 621)) ^ a3)))();
}

uint64_t sub_23A90(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  __asm { BTI             j }

  return (*(v5 + 8 * (((((v4 < 0x20) ^ (a4 - 64)) & 1) * ((a4 - 799) ^ 0x1C4)) ^ (a4 - 799))))();
}

uint64_t sub_23ACC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  __asm { BTI             j }

  return (*(v11 + 8 * ((v10 ^ 0x331) + 296)))(((v10 ^ 0x331) + 59794658) & 0xFC6F9AFF, v12 - 0x749E36EE1F17BF87 + a3 + a2, ((v10 ^ 0x331) + 59794658) & 0xFC6F9AFF ^ 0x20E, a10);
}

uint64_t sub_23B30(uint64_t a1, uint64_t a2, int a3, uint64_t a4, double a5, double a6, int8x16_t a7)
{
  __asm { BTI             j }

  v15 = veorq_s8(*(a4 + v7), a7);
  v16 = (a2 + v7);
  *v16 = veorq_s8(*(a4 + v7 - 16), a7);
  v16[1] = v15;
  return (*(v10 + 8 * (((v9 == 0) * a3) ^ v8)))(a1, a2 - 32);
}

uint64_t sub_23B74(int a1)
{
  __asm { BTI             j }

  return (*(v3 + 8 * (((((2 * a1) ^ 0xFFFFFA26) + ((a1 - 346) | 0xA)) * (v1 == v2)) ^ a1)))();
}

uint64_t sub_23BB0()
{
  __asm { BTI             j }

  return (*(v2 + 8 * ((((((v1 ^ 0x562) - 33) ^ 0x2A0) + (v1 ^ 0x562) + 209) * ((v0 & 0x18) == 0)) ^ v1 ^ 0x562)))();
}

uint64_t sub_23BF0()
{
  __asm { BTI             j }

  return (*(v1 + 8 * v0))(v2 - 7);
}

uint64_t sub_23C1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  __asm { BTI             j }

  v19 = (v9 ^ v12 ^ (v10 - 41)) + v8;
  *(a1 + v19 + v7) = veor_s8(*(a7 + v19), v14);
  return (*(v13 + 8 * (((a4 == v9) * v11) ^ v10)))();
}

uint64_t sub_23C68(uint64_t a1, uint64_t a2, int a3)
{
  __asm { BTI             j }

  return (*(v4 + 8 * ((((a3 - 1) ^ (a3 + 283)) * (v3 == a2)) ^ a3)))();
}

uint64_t sub_23C98(int a1)
{
  __asm { BTI             j }

  return (*(v1 + 8 * (a1 - 496)))();
}

uint64_t sub_23CB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  __asm { BTI             j }

  v18 = ((7 * v8) ^ v10) + v9;
  *(v13 + v18 + v6) = *(a6 + v18) ^ 0xF3;
  return (*(v12 + 8 * (((v18 == 0) * v11) ^ v7)))();
}

uint64_t sub_23CF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  __asm { BTI             j }

  v13 = (*v5 + v6);
  return (*(v8 + 8 * v7))(a1, a2, a3, a4, a5, &STACK[0x250]);
}

uint64_t sub_23D20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, _DWORD *a58)
{
  __asm { BTI             j }

  return (*(v61 + 8 * (((*a58 + v58 > v60) * ((44 * (v59 ^ 0x396)) ^ 0x207)) ^ v59)))();
}

uint64_t sub_23D74(int a1)
{
  __asm { BTI             j }

  v7 = (a1 ^ 0xEFCD63FC) - 1716003360 + ((((v1 - 461216321) ^ 0xE4826759) - 543504554) & (2 * a1));
  v8 = (v7 ^ 0x7572BE37) & (2 * (v7 & 0x767ABE24)) ^ v7 & 0x767ABE24;
  v9 = ((2 * ((v1 - 461216321) & 0x1B7D9AD6 ^ 0xF17788A5 ^ v7)) ^ 0xE1A68A6) & ((v1 - 461216321) & 0x1B7D9AD6 ^ 0xF17788A5 ^ v7) ^ (2 * ((v1 - 461216321) & 0x1B7D9AD6 ^ 0xF17788A5 ^ v7)) & 0x870D3452;
  v10 = v9 ^ 0x81051451;
  v11 = (v9 ^ 0x2082000) & (4 * v8) ^ v8;
  v12 = ((4 * v10) ^ 0x1C34D14C) & v10 ^ (4 * v10) & 0x870D3450;
  v13 = (v12 ^ 0x4041040) & (16 * v11) ^ v11;
  v14 = ((16 * (v12 ^ 0x83092413)) ^ 0x70D34530) & (v12 ^ 0x83092413) ^ (16 * (v12 ^ 0x83092413)) & 0x870D3450;
  return (*(v2 + 8 * ((124 * ((v7 ^ (2 * ((((v14 ^ 0x870C3043) << 8) & 0x870D3400 ^ 0x5040000 ^ (((v14 ^ 0x870C3043) << 8) ^ 0xD340000) & (v14 ^ 0x870C3043)) & (((v14 ^ 0x10400) & (v13 << 8) ^ v13) << 16) ^ (v14 ^ 0x10400) & (v13 << 8) ^ v13))) == 1987755556)) ^ v1)))();
}

uint64_t sub_23F88(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  __asm { BTI             j }

  v13 = *(a8 + 416);
  return (*(v8 + 8 * (a2 ^ (15 * ((a5 ^ 0x767ABE24uLL) < 8)))))();
}

uint64_t sub_24020@<X0>(uint64_t a1@<X0>, int a2@<W2>, uint64_t a3@<X8>)
{
  __asm { BTI             j }

  return (*(v5 + 8 * (((a2 + 402 + ((a2 - 553) | 0x28C) - 1579) * ((a3 + 0x7BDFFF5FADEFFFF7 - a1 + v3 - v4) < 0x20)) ^ a2)))();
}

uint64_t sub_2407C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  __asm { BTI             j }

  return (*(v6 + 8 * (((v5 >= ((a5 - 1834788350) & 0x6D5CA3D3) - 370) * ((a5 - 932683997) & 0x37979FAD ^ 0x2F5)) ^ a5)))();
}

uint64_t sub_240DC(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  __asm { BTI             j }

  return (*(v4 + 8 * (a4 - 93)))(a1);
}

uint64_t sub_24108(double a1, double a2, int8x16_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9)
{
  __asm { BTI             j }

  v19 = (a8 ^ v12 ^ (5 * a9)) + v11;
  v20 = *(v9 + v19 - 15);
  v21 = *(v9 + v19 - 31);
  v22 = v14 + v10 + v19;
  *(v22 - 15) = veorq_s8(v20, a3);
  *(v22 - 31) = veorq_s8(v21, a3);
  return (*(v13 + 8 * ((a6 == a8) | (2 * (a6 == a8)) | a5)))();
}

uint64_t sub_24160@<X0>(int a1@<W3>, uint64_t a2@<X8>)
{
  __asm { BTI             j }

  return (*(v3 + 8 * ((185 * ((((a1 - 75) ^ (v2 == a2)) & 1) == 0)) ^ a1)))();
}

uint64_t sub_241B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  __asm { BTI             j }

  return (*(v7 + 8 * (((2 * ((((v6 & 0x18) == 0) ^ a5 ^ 0x67) & 1)) & 0xEF | (16 * ((((v6 & 0x18) == 0) ^ a5 ^ 0x67) & 1))) ^ a5)))(a1, ((a5 + 1342017960) & 0xB0026DFF ^ 0x18D) & v5);
}

uint64_t sub_24208@<X0>(int a1@<W2>, uint64_t a2@<X8>)
{
  __asm { BTI             j }

  return (*(v3 + 8 * a1))(a2 - (v2 & 0xFFFFFFF8) + 8, v2 & 7);
}

uint64_t sub_24254(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  __asm { BTI             j }

  *(v8 + v7) = veor_s8(*(a4 + v7), v10);
  return (*(v9 + 8 * (((a1 == 0) * (((a3 - 306) | 0x180) ^ a7)) ^ a3)))(a1 + 8);
}

uint64_t sub_242A0@<X0>(int a1@<W8>)
{
  __asm { BTI             j }

  return (*(v3 + 8 * ((((((a1 + 32) ^ (v1 == v2)) & 1) == 0) * (((a1 + 41) | 0x84) + 339)) ^ a1)))();
}

uint64_t sub_242E4(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  __asm { BTI             j }

  return (*(v4 + 8 * (a4 - 57)))();
}

uint64_t sub_24304@<X0>(uint64_t a1@<X1>, int a2@<W8>)
{
  __asm { BTI             j }

  v14 = a1 - 1;
  *(v9 + v3 + v14) = *(v2 + v14) ^ v4 & v7 ^ v5;
  return (*(v8 + 8 * (((v14 == 0) * v6) ^ a2)))();
}

uint64_t sub_24344(uint64_t a1, uint64_t a2, int a3)
{
  __asm { BTI             j }

  v10 = (*v4 + v3);
  return (*(v5 + 8 * a3))();
}

uint64_t sub_24360()
{
  __asm { BTI             j }

  return (*(v1 + 8 * v0))();
}

uint64_t sub_2437C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __asm { BTI             j }

  return (*(v7 + 8 * (v6 - 284)))(4 * (v6 ^ 0x276u), v4 - 16, v5 + 0x402A009824E12237 + a4 + a3);
}

uint64_t sub_243C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  __asm { BTI             j }

  v12 = *(a2 + v5);
  v13 = (a3 + v5);
  *(v13 - 1) = *(a2 + v5 - 16);
  *v13 = v12;
  return (*(v7 + 8 * (((4 * (a5 != 0)) | (16 * (a5 != 0))) ^ (v6 - 296))))(a1, a2 - 32, a3 - 32);
}

uint64_t sub_24408(int a1)
{
  __asm { BTI             j }

  return (*(v4 + 8 * ((((a1 - 1860413741) & 0x6EE3A7D8 ^ (a1 + 562848723) & 0xDE739BD4 ^ v3) * (v1 == v2)) ^ a1)))();
}

uint64_t sub_24464(uint64_t a1, uint64_t a2, int a3)
{
  __asm { BTI             j }

  return (*(v4 + 8 * ((((((a3 - 907) | 0x284) ^ 0x295) & v3) == (a3 - 675) - 241) ^ a3)))();
}

uint64_t sub_244A4(int a1)
{
  __asm { BTI             j }

  return (*(v1 + 8 * (a1 - 98)))();
}

uint64_t sub_244B8(int a1)
{
  __asm { BTI             j }

  v12 = v4 - 1;
  *(v2 + v12 + v3) = *(v1 + v12);
  return (*(v7 + 8 * (((v12 != 0) * (((a1 - 525) | v5) ^ v6)) ^ (a1 - 115))))();
}

uint64_t sub_244FC(uint64_t a1, int a2)
{
  __asm { BTI             j }

  v9 = *(v2 + 16);
  v10 = *v4;
  return (*(v3 + 8 * a2))();
}

uint64_t sub_24520()
{
  __asm { BTI             j }

  return (*(v5 + 8 * (v4 | (4 * (((v4 + 354) ^ 0x6ECu) + *(v0 + 56) + v3 + v1 - 1206029467 <= v2)))))();
}

uint64_t sub_2456C(int a1)
{
  __asm { BTI             j }

  return (*(v2 + 8 * ((112 * (((((v1 - 858473068) ^ 0x1EF62064) - 137448303) ^ (v1 - 858473068) ^ (((v1 - 858473068) ^ 0x99D0B9A) - 526016657) ^ (((v1 - 858473068) ^ 0x7FFF3FBD) - 1765299382) ^ (((v1 - 858473068) ^ a1 ^ 0x71B ^ (a1 - 531447830) & 0x1FAD3BEF ^ 0x7E537C69) - 1754534979)) == 382167819)) ^ a1)))();
}

uint64_t sub_2463C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __asm { BTI             j }

  v11 = *v4;
  return (*(v6 + 8 * (((((v5 + 60824272) & 0xFC5FE5DC) - 1006) * ((a4 ^ 0x16C76B0BuLL) < 8)) ^ v5)))();
}

uint64_t sub_246E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __asm { BTI             j }

  return (*(v6 + 8 * ((42 * (v4 - a3 - v3 - a2 + ((v5 - 408) ^ 0x3EBFFD4FD6C85D21uLL) < (v5 ^ 0x6D1u) - 621)) ^ v5)))();
}

uint64_t sub_24744(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  __asm { BTI             j }

  return (*(v6 + 8 * ((((a5 - 55) ^ 0x2B2) * (v5 < 0x20)) ^ a5)))();
}

uint64_t sub_2477C(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  __asm { BTI             j }

  return (*(v4 + 8 * a4))();
}

uint64_t sub_247B8(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  __asm { BTI             j }

  v16 = (v8 ^ v11 ^ (a1 - 824)) + v7;
  *(a5 + v16 + v6) = *(a2 + v16);
  return (*(v10 + 8 * (((a6 != v8) * v9) ^ a1)))();
}

uint64_t sub_24800(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  __asm { BTI             j }

  return (*(v5 + 8 * ((58 * (v4 != a3)) ^ a4)))((a4 + 310) | 0x81u, (a4 + 1828581919) & 0x93020FEA);
}

uint64_t sub_24850(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __asm { BTI             j }

  return (*(v5 + 8 * (v4 + 182)))(v4 ^ 0x655u, v3 - 0x3EBFFD4FD6C85FCDLL + a3 + a2);
}

uint64_t sub_24894(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  __asm { BTI             j }

  v12 = *(a4 + v5);
  v13 = (a2 + v5);
  *(v13 - 1) = *(a4 + v5 - 16);
  *v13 = v12;
  return (*(v7 + 8 * (((a5 != 0) * (a1 - 1142)) ^ (v6 + 148))))();
}

uint64_t sub_248D8(int a1)
{
  __asm { BTI             j }

  return (*(v3 + 8 * (((((v1 == v2) ^ (a1 + 35)) & 1) * (((a1 - 568) | 0x40) ^ 0x336)) ^ a1)))();
}

uint64_t sub_24920()
{
  __asm { BTI             j }

  return (*(v2 + 8 * ((2026 * ((((v1 & 0x92F2FEFF ^ 0x6CE) - 1053) & v0) == 0)) ^ v1 & 0x92F2FEFF)))((v1 & 0x92F2FEFF) - 110);
}

uint64_t sub_24968(int a1)
{
  __asm { BTI             j }

  return (*(v1 + 8 * (a1 + 28)))();
}

uint64_t sub_2497C(int a1)
{
  __asm { BTI             j }

  v14 = v5 - 1;
  *(v1 + v14 + v3) = *(v2 + v14);
  return (*(v9 + 8 * (((v14 == (a1 ^ v8 ^ v6)) * v7) ^ v4)))();
}

uint64_t sub_249BC(uint64_t a1, int a2)
{
  __asm { BTI             j }

  v9 = *(v2 + 56);
  v10 = *v4;
  return (*(v3 + 8 * a2))();
}

uint64_t sub_249E0()
{
  __asm { BTI             j }

  return (*(v1 + 8 * v0))();
}

uint64_t sub_24A28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  __asm { BTI             j }

  v16 = v11 != v10 + ((v8 - 452) | 0x123) - 439 && *(a8 + 144) != 0;
  return (*(v9 + 8 * ((42 * v16) ^ v8)))();
}

uint64_t sub_24A68@<X0>(void *a1@<X8>)
{
  __asm { BTI             j }

  return (*(v2 + 8 * (((*a1 != 0) * (v1 - 555)) ^ (v1 - 454))))();
}

uint64_t sub_24A98@<X0>(uint64_t a1@<X8>)
{
  __asm { BTI             j }

  v7 = (v1 - 264101015) & 0xFBDDE5C;
  v8 = (*(v2 + 8 * (v7 + 699)))(a1 - 16, (((v7 - 323) | 0xA2) + 4294966856) & *(a1 - 8));
  return (*(v2 + 8 * v7))(v8);
}

uint64_t sub_24B10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48)
{
  __asm { BTI             j }

  return (*(v50 + 8 * (v48 ^ (1488 * (v51 == v49)))))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48);
}

uint64_t sub_24B50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, _DWORD *a49)
{
  __asm { BTI             j }

  *(a8 + 416) = **a8;
  **(a8 + 40) = *a49;
  return (*(v50 + 8 * v49))();
}

uint64_t sub_24B9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, int a47, int a48)
{
  __asm { BTI             j }

  v54 = a7 + 6;
  v55 = (a48 + v49 + **(a8 + 128));
  v56 = ((a7 + 167) ^ v55 ^ 0xBDFBDCFDDDFFB9C3) + ((2 * v55) & 0x1BBFF75EELL) - 0x4C04A30A448075C4;
  v57 = (v56 ^ 0x67214BD56D232C5) & (2 * (v56 & 0x46680BAD4)) ^ v56 & 0x46680BAD4;
  v58 = ((2 * (v56 ^ 0x67214B5DFD3464DLL)) ^ 0x1085254372A7F932) & (v56 ^ 0x67214B5DFD3464DLL) ^ (2 * (v56 ^ 0x67214B5DFD3464DLL)) & 0x887AD2B9B953FC98;
  v59 = v58 ^ 0x880A528889500489;
  v60 = (v58 ^ 0x313003F810) & (4 * v57) ^ v57;
  v61 = ((4 * v59) ^ 0x21EB4AE6E54FF264) & v59 ^ (4 * v59) & 0x887AD2B9B953FC98;
  v62 = (v61 ^ 0x6A42A0A143F000) & (16 * v60) ^ v60;
  v63 = ((16 * (v61 ^ 0x8810901918100C99)) ^ 0x87AD2B9B953FC990) & (v61 ^ 0x8810901918100C99) ^ (16 * (v61 ^ 0x8810901918100C99)) & 0x887AD2B9B953FC90;
  v64 = (v63 ^ 0x802802999113C800) & (v62 << 8) ^ v62;
  v65 = (((v63 ^ 0x852D02028403409) << 8) ^ 0x7AD2B9B953FC9900) & (v63 ^ 0x852D02028403409) ^ ((v63 ^ 0x852D02028403409) << 8) & 0x887AD2B9B953FC00;
  v66 = v64 ^ 0x887AD2B9B953FC99 ^ (v65 ^ 0x85290B911500000) & (v64 << 16);
  v67 = (*(v48 + 8 * (a7 ^ 0x654)))(((v56 ^ (2 * ((v66 << 32) & 0x87AD2B900000000 ^ v66 ^ ((v66 << 32) ^ 0x3953FC9900000000) & (((v65 ^ 0x80284200A8036499) << 16) & 0x87AD2B900000000 ^ 0x84242A800000000 ^ (((v65 ^ 0x80284200A8036499) << 16) ^ 0x52B9B95300000000) & (v65 ^ 0x80284200A8036499))))) & 0xFFFFFFFFFFFFFFF8 ^ 0x8E58C24D142743E0) + 16, 8) != 0;
  return (*(v48 + 8 * ((v67 | (8 * v67)) ^ v54)))();
}

uint64_t sub_24E68(void *a1)
{
  __asm { BTI             j }

  *a1 = 0;
  a1[1] = v2;
  return (*(v3 + 8 * (((((v1 - 628) | 0x400) - 1109) * (a1 == -16)) ^ v1)))();
}

uint64_t sub_24E9C()
{
  __asm { BTI             j }

  return (*(v1 + 8 * ((((((v0 - 1214) | 0x360) ^ 0xFFFFFEEE) + ((v0 + 1039533783) & 0xC209F6FB)) * (v2 != 0)) ^ v0)))();
}

uint64_t sub_24EEC@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, int a40, int a41)
{
  __asm { BTI             j }

  *v41 = 49;
  return (*(v42 + 8 * (((a41 - 1240640886 + (a1 ^ 0x3FDu) - 159 <= v43) * ((a1 ^ 0x64) - 540)) ^ a1)))();
}

uint64_t sub_24F40()
{
  __asm { BTI             j }

  v7 = v1 + 542024526;
  v8 = (v7 ^ 0xC53C2F32) & (2 * (v7 & 0x95BEAF3B)) ^ v7 & 0x95BEAF3B;
  v9 = ((2 * (v7 ^ 0xE50D3532)) ^ 0xE1673412) & (v7 ^ 0xE50D3532) ^ (2 * (v7 ^ 0xE50D3532)) & 0x70B39A08;
  v10 = (v9 ^ 0x60231000) & (4 * v8) ^ v8;
  v11 = ((4 * (v9 ^ 0x10908A09)) ^ 0xC2CE6824) & (v9 ^ 0x10908A09) ^ (4 * (v9 ^ 0x10908A09)) & 0x70B39A08;
  v12 = (v11 ^ 0x40820800) & (16 * v10) ^ v10;
  v13 = ((16 * (v11 ^ 0x30319209)) ^ 0xB39A090) & (v11 ^ 0x30319209) ^ (16 * (v11 ^ 0x30319209)) & 0x70B39A00;
  v14 = (v7 ^ (2 * ((((v13 ^ 0x70821A09) << 8) & 0x70B39A00 ^ 0x30920000 ^ (((v13 ^ 0x70821A09) << 8) ^ 0xB39A0000) & (v13 ^ 0x70821A09)) & (((v13 ^ 0x318000) & (v12 << 8) ^ v12) << 16) ^ (v13 ^ 0x318000) & (v12 << 8) ^ v12))) == -1782665413;
  return (*(v2 + 8 * (((8 * v14) | (v14 << 6)) ^ v0)))();
}

uint64_t sub_250C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  __asm { BTI             j }

  v16 = *(a8 + 80);
  return (*(v11 + 8 * ((49 * ((((v10 ^ v9) < 8) ^ (((v8 - 76) ^ 0x95) + 1)) & 1)) ^ v8)))();
}

uint64_t sub_25110@<X0>(uint64_t a1@<X8>)
{
  __asm { BTI             j }

  return (*(v3 + 8 * (((((v2 + 1799024309) & 0x94C50FBF ^ 0xFFFFFC80) + ((v2 - 1031) | 0x240)) * ((a1 + v1 - 17) < 0x20)) ^ v2)))();
}

uint64_t sub_2516C()
{
  __asm { BTI             j }

  return (*(v2 + 8 * ((((v1 - 412) ^ 0xBD) * (v0 < 0x20)) ^ v1)))();
}

uint64_t sub_2519C(__n128 a1)
{
  __asm { BTI             j }

  a1.n128_u16[0] = -3085;
  a1.n128_u8[2] = -13;
  a1.n128_u8[3] = -13;
  a1.n128_u8[4] = -13;
  a1.n128_u8[5] = -13;
  a1.n128_u8[6] = -13;
  a1.n128_u8[7] = -13;
  return (*(v2 + 8 * v1))(a1);
}

uint64_t sub_251E4(int8x8_t a1, uint64_t a2, uint64_t a3, int a4)
{
  __asm { BTI             j }

  *(v8 + v4) = veor_s8(*(v5 + v4), a1);
  return (*(v9 + 8 * (((((v6 - 33) ^ (v7 == 0)) & 1) * a4) ^ v6)))();
}

uint64_t sub_25230(uint64_t a1, int a2)
{
  __asm { BTI             j }

  return (*(v4 + 8 * (((((a2 - 574) | 0x96) + 43) * (v2 == v3)) ^ a2)))();
}

uint64_t sub_25264(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  __asm { BTI             j }

  v71 = (*(v65 + 8 * (v64 ^ 0x401)))(v66 - 16, ((v64 + 85) + 4294966936) & *(v66 - 8));
  a64 = 0;
  return (*(v65 + 8 * v64))(v71);
}

uint64_t sub_252AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, char a62)
{
  __asm { BTI             j }

  *v62 = 0;
  return (*(v63 + 8 * (v64 - 541)))(a1, a2, a3, a4, a5, a6, a7, &a62);
}

uint64_t sub_252CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  __asm { BTI             j }

  return (*(v8 + 8 * (((**(a8 + 120) == 0) * ((v9 ^ 0x3A2) + 132)) ^ (v9 - 492))))();
}

uint64_t sub_2530C@<X0>(uint64_t a1@<X8>)
{
  __asm { BTI             j }

  v7 = (*(v2 + 8 * (v1 ^ 0x43C)))(a1 - 16, (v1 ^ 0xFFFFFED0) & *(a1 - 8));
  return (*(v2 + 8 * v1))(v7);
}

uint64_t sub_25358(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  __asm { BTI             j }

  return (*(v9 + 8 * (((*(a8 + 416) == 0) * ((73 * (v8 ^ 0x164) + 88) ^ (4 * v8) ^ 0x4B4)) ^ v8)))();
}

uint64_t sub_2539C@<X0>(uint64_t a1@<X8>)
{
  __asm { BTI             j }

  v7 = (*(v2 + 8 * (v1 + 1080)))(a1 - 16, ((v1 ^ 0x1F3u) + 4294966999) & *(a1 - 8));
  return (*(v2 + 8 * v1))(v7);
}

uint64_t sub_253E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  __asm { BTI             j }

  return (*(v9 + 8 * (((*(a8 + 16) != 0) * (v8 - 265)) ^ v8)))();
}

uint64_t sub_25408@<X0>(uint64_t a1@<X8>)
{
  __asm { BTI             j }

  v7 = (*(v2 + 8 * (v1 + 1003)))(a1 - 16, ((v1 + 357) + 4294966642) & *(a1 - 8));
  return (*(v2 + 8 * v1))(v7);
}

void sub_25440()
{
  __asm { BTI             j }

  *(v7 + 16) = v0;
  v6 = *(v1 - 120);
}

void sub_2625C(uint64_t a1)
{
  v1 = *(a1 + 24) + 413959067 * ((((2 * a1) | 0x8566F460) - a1 - 1119058480) ^ 0x9A5393D2);
  v2 = *(a1 + 16);
  v3 = *(&off_538D0 + v1 - 502);
  (*(v3 + 8 * (v1 ^ 0x6CE)))(*(&off_538D0 + v1 - 500) - 4, v4, 16);
  (*(v3 + 8 * (v1 + 698)))(*(&off_538D0 + v1 - 475) - 4, v5, 16);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_26378()
{
  __asm { BTI             j }

  v8 = (*(v3 + 12) - v0 - 2095672449) < 0x20;
  return (*(v2 + 8 * (((8 * v8) | (16 * v8)) ^ (v1 - 319))))();
}

uint64_t sub_263C4()
{
  __asm { BTI             j }

  v9 = v2 ^ 0x57;
  v10 = v2 - 221;
  v11 = (*v4 + (v0 + v1 + 32));
  v12 = (*(v3 + 8 * (v2 ^ 0x721)))(&STACK[0x310]);
  v13 = (*v11 | (v11[1] << 8) | (v11[2] << 16) | (v11[3] << 24) | (v11[4] << 32) | (v11[5] << 40)) ^ (v11[6] << 48) ^ (v11[7] << (v9 - 36));
  v14 = SLODWORD(STACK[0x318]) + 1000000 * STACK[0x310];
  _CF = v14 >= v13;
  v15 = v14 - v13;
  v16 = v15 == 0 || !_CF || v15 > 0x50775D800;
  v17 = v16;
  return (*(v3 + 8 * ((111 * v17) ^ v10)))(v12);
}

uint64_t sub_26494()
{
  __asm { BTI             j }

  return (*(v2 + 8 * (((*(v1 + 8) == (((v0 - 89) | 8) ^ 6)) * (263 * (v0 ^ 0x5E) - 326)) ^ v0)))();
}

uint64_t sub_264E4@<X0>(int a1@<W8>)
{
  __asm { BTI             j }

  return (*(v2 + 8 * ((470 * (*(v1 + 9) == ((a1 - 11) ^ 0xD7 ^ ((a1 - 11) | 8) ^ 0xC3))) ^ a1)))();
}

uint64_t sub_2652C()
{
  __asm { BTI             j }

  return (*(v2 + 8 * (((*(v1 + 10) == 0) * (v0 ^ 0x2DF ^ ((v0 ^ 0x445) + 583))) ^ v0)))();
}

uint64_t sub_26568()
{
  __asm { BTI             j }

  STACK[0x320] = 112;
  return (*(v2 + 8 * ((((2 * v0) ^ 0x921) * (v1 == 0)) ^ v0)))(1966766332);
}

uint64_t sub_26698@<X0>(int a1@<W2>, int a2@<W3>, int a3@<W5>, int a4@<W7>, unsigned __int8 a5@<W8>, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  __asm { BTI             j }

  LODWORD(STACK[0x25C]) = v73;
  LODWORD(STACK[0x268]) = v72;
  v78 = v71[11];
  v79 = (v71[24] << 16) | (v71[25] << 8);
  v80 = v71[27] | ((v79 | v71[26]) << 8);
  v81 = v71[12];
  v82 = v71[13];
  v83 = v71[16];
  v84 = v71[17];
  v85 = v71[18];
  HIDWORD(v86) = v71[27];
  LODWORD(v86) = v80;
  LODWORD(STACK[0x258]) = v80;
  v87 = (v86 >> 7) ^ 0x9F73BCC5 ^ ((v79 >> v72) + (v80 << 14)) ^ ((v80 >> 3) - 1619804987 - ((v72 ^ 0x3EE77AE0) & (2 * (v80 >> 3))));
  v88 = (v83 << 16) | (v84 << 8);
  v89 = v71[19] | ((v88 | v85) << 8);
  v90 = v71[14];
  HIDWORD(v86) = v71[19];
  LODWORD(v86) = v89;
  LODWORD(STACK[0x244]) = v89;
  v91 = (v86 >> 7) ^ 0xEFA14EA4 ^ ((v88 >> 10) | (v89 << 14));
  v92 = v71[15];
  v93 = v91 ^ ((v89 >> 3) - 274641244 - ((v89 >> 2) & 0x1F429D48));
  v94 = (v66 << 16) | (v65 << 8);
  v95 = v78 | ((v94 & 0xFFFFFF00 | a5) << 8);
  v96 = v71[20];
  v97 = v71[21];
  v98 = (__PAIR64__(v78, v95) >> 7) ^ 0xF514A26B ^ ((v95 << 14) + (v94 >> 10)) ^ ((v95 >> 3) - 183197077 - ((v95 >> 2) & 0x2A2944D6));
  v99 = (a1 << 16) + (a4 << 8);
  v100 = v69 + ((v99 + v70) << 8);
  v101 = v100 + 31457280 + v98;
  v102 = v71[22];
  v103 = (v81 << 16) | (v82 << 8);
  v104 = v92 | ((v103 | v90) << 8);
  v105 = (__ROR4__(v101, 17) ^ 0x1A598FA7 ^ __ROR4__(v101, 19) ^ ((v101 >> 10) + 442077095 - ((v101 >> 9) & 0x331F4E))) + v104 + v93;
  LODWORD(STACK[0x234]) = v105;
  v106 = v71[23];
  v107 = (v96 << 16) | (v97 << 8);
  v108 = v106 | ((v107 | v102) << 8);
  v109 = (__ROR4__(v105, 19) ^ 0x224DD478 ^ __ROR4__(v105, 17) ^ ((v105 >> 10) + 575526008 - ((v105 >> 9) & 0x1BA8F0))) + v108 + v87;
  v110 = (v109 >> 10) - 417328704 - (STACK[0x210] & (2 * (v109 >> 10)));
  v111 = __PAIR64__(v69, __ROR4__(v109, 17));
  LODWORD(STACK[0x238]) = v109;
  v112 = __ROR4__(v109, 19) ^ 0xE72011C0 ^ v111 ^ v110;
  v113 = v68 + (((a2 << 16) + (a3 << 8) + v67) << 8);
  v114 = v71[31];
  LODWORD(v111) = v100;
  v115 = ((v111 >> 7) ^ 0x68E6DBB1 ^ ((v100 << 14) + (v99 >> 10)) ^ ((v100 >> 3) + 1759959985 - ((v100 >> 2) & 0x11CDB762))) + v113;
  v116 = (v71[28] << 16) | (v71[29] << 8);
  v117 = v114 | ((v116 | v71[30]) << 8);
  v118 = v115 + v117 + 285220864 + v112;
  HIDWORD(v111) = v101;
  LODWORD(v111) = v101;
  v119 = v101;
  LODWORD(STACK[0x230]) = v101;
  v120 = ((v101 >> 18) - ((v101 >> 17) & 0x6300) - 1335168640) ^ (v101 >> 3) ^ 0xC693C774 ^ (((v111 >> 7) & 0x17F491A5 ^ (v101 << 14) & 0x17F48000 ^ 0x76F936F4) & ((v111 >> 7) & 0xE80B6E5A ^ (v101 << 14) & 0xE80B4000 ^ 0xF7FFB7F5) | ((v111 >> 7) & 0xE80B6E5A ^ (v101 << 14) & 0xE80B4000) & 0x8802480A);
  v121 = v115;
  v122 = __PAIR64__(v92, __ROR4__(v115, 19));
  v123 = __ROR4__(v115, 17) ^ 0x5EBC7DBD ^ v122 ^ ((v115 >> 10) + 1589411261 - ((v115 >> 9) & 0x78FB7A));
  LODWORD(v122) = v104;
  v124 = v123 + v95 + ((v122 >> 7) ^ 0x4DBE3937 ^ ((v103 >> 10) | (v104 << 14)) ^ ((v104 >> 3) + 1304312119 - ((v104 >> 2) & 0x1B7C726E)));
  v125 = __PAIR64__(v106, __ROR4__(v124, 17));
  v126 = (v124 >> 19) ^ 0x26ACDB11 ^ v125 ^ (v124 << 13) ^ ((v124 >> 10) + 648862481 - ((v124 >> 9) & 0x59B622));
  LODWORD(STACK[0x270]) = v108;
  LODWORD(v125) = v108;
  v127 = v126 + v89 + ((v125 >> 7) ^ 0xEFDDFF8D ^ ((v107 >> 10) | (v108 << 14)) ^ ((v108 >> 3) - 270663795 - ((v108 >> 2) & 0x1FBBFF1A)));
  v128 = __PAIR64__(v114, __ROR4__(v127, 17));
  v129 = __ROR4__(v127, 19) ^ 0xE127F491 ^ v128 ^ ((v127 >> 10) - 517475183 - ((v127 >> 9) & 0x4FE922));
  LODWORD(STACK[0x298]) = v117;
  LODWORD(v128) = v117;
  v130 = v80 + ((v128 >> 7) ^ 0xC9079942 ^ ((v116 >> 10) | (v117 << 14)) ^ ((v117 >> 3) - 922248894 - ((v117 >> 2) & 0x120F3284))) + v129 + 768;
  v131 = (__ROR4__(v130, 19) ^ 0x1CE189B ^ __ROR4__(v130, 17) ^ ((v130 >> 10) + 30283931 - ((v130 >> 9) & 0x1C3136))) + v119;
  LODWORD(STACK[0x254]) = v131;
  v132 = (__ROR4__(v131 ^ 0x80000000, 17) ^ 0xC4631545 ^ __ROR4__(v131 ^ 0x80000000, 19) ^ (((v131 ^ 0x80000000) >> 10) - 1000139451 - (((v131 ^ 0x80000000) >> 9) & 0x462A8A))) + v105;
  LODWORD(STACK[0x2D0]) = v132;
  LODWORD(v128) = v132;
  HIDWORD(v128) = v132;
  v133 = (__ROR4__(v132, 17) ^ 0xFAAA6D7A ^ (v132 >> 10) ^ ((v128 >> 19) - 89494150 - ((2 * (v128 >> 19)) & 0xF554DAF4))) + v109;
  LODWORD(STACK[0x2D8]) = v133;
  v134 = v118 + 12583014 + (__ROR4__(v133, 19) ^ 0xE4E3ECD9 ^ __ROR4__(v133, 17) ^ ((v133 >> 10) - 454824743 - ((v133 >> 9) & 0x47D9B2)));
  LODWORD(STACK[0x2F4]) = v134;
  v135 = __ROR4__(v134, 17) ^ 0xBC69E8F7 ^ __ROR4__(v134, 19) ^ ((v134 >> 10) - 1133909769 - ((v134 >> 9) & 0x53D1EE));
  v136 = STACK[0x2FC];
  v137 = STACK[0x2F8];
  HIDWORD(v128) = STACK[0x2F8];
  LODWORD(v128) = STACK[0x2F8];
  v138 = STACK[0x2F8];
  v139 = LODWORD(STACK[0x2EC]) + v113 + (__ROR4__(STACK[0x2F8], 6) ^ 0x3EF74DED ^ __ROR4__(STACK[0x2F8], 25) ^ ((v128 >> 11) + 1056394733 - ((2 * (v128 >> 11)) & 0x7CEA935A))) + ((LODWORD(STACK[0x2FC]) ^ v73 ^ 0x8000) & STACK[0x2F8] ^ 0x74184903 ^ (v73 + 1947748611 - ((2 * v73) & 0xE0311200) + 0x8000));
  v140 = LODWORD(STACK[0x2FC]) + 733284092 - ((2 * LODWORD(STACK[0x2FC])) & 0x57620DF0);
  LODWORD(STACK[0x228]) = v139 + 1116352408;
  v141 = v139 + 1116352408 + LODWORD(STACK[0x2F0]);
  LODWORD(STACK[0x2FC]) = v136;
  HIDWORD(v128) = v141;
  LODWORD(v128) = v141;
  v142 = v100 + v73 + (v140 ^ 0x2BB506FC ^ v141 & (v137 ^ v136)) + 1899447441 + (__ROR4__(v141, 11) ^ 0xAC74E3A0 ^ __ROR4__(v141, 6) ^ ((v128 >> 25) - 1401625696 - ((2 * (v128 >> 25)) & 0x58E9C740)));
  LODWORD(STACK[0x220]) = v142;
  v143 = STACK[0x2E8];
  v144 = v142 + LODWORD(STACK[0x2E8]);
  HIDWORD(v128) = v144;
  LODWORD(v128) = v144;
  v145 = ((v128 >> 6) << 17) ^ __ROR4__(v144, 26) ^ ((v128 >> 6) >> 15) ^ 0x2003E1AB;
  HIDWORD(v128) = v144;
  LODWORD(v128) = v144;
  v146 = (__ROR4__(v118, 19) ^ 0x8F547AA2 ^ __ROR4__(v118, 17) ^ ((v118 >> 10) - 1890288990 - ((v118 >> 9) & 0x28F544))) + v124;
  v147 = v120 + v115 + v146 + v135;
  LODWORD(STACK[0x240]) = v147;
  v148 = v131 ^ 0x80000000;
  LODWORD(STACK[0x2A8]) = v131 ^ 0x80000000;
  v149 = __ROR4__(v131 ^ 0x80000000, 7) ^ 0x48D71DAE ^ __ROR4__(v131 ^ 0x80000000, 18) ^ (((v131 ^ 0x80000000) >> 3) + 1222057390 - ((v131 >> 2) & 0x11AE3B5C));
  LODWORD(STACK[0x2F8]) = v137;
  v150 = v136 + v95 + ((v137 + 1297795008 - ((2 * v137) & 0x18B18F80)) ^ 0x4D5AC7C0 ^ v144 & (v141 ^ v137)) - 1245643825 + ((v128 >> 25) ^ __ROR4__(v145, 17) ^ 0xF0D59001);
  v151 = STACK[0x2E0];
  v152 = v150 + LODWORD(STACK[0x2E0]);
  LODWORD(STACK[0x218]) = v152 - 1675143427 - 2 * (v152 & 0x1C2756FF ^ v150 & 2);
  v153 = __PAIR64__(v152, __ROR4__(v130, 18));
  LODWORD(STACK[0x288]) = v130;
  v154 = __ROR4__(v130, 7) ^ 0x93CA9659 ^ v153 ^ ((v130 >> 3) - 1815439783 - ((v130 >> 2) & 0x27952CB2));
  LODWORD(v153) = v152;
  v155 = v138 + v104 + ((v141 + 288362415 - ((2 * v141) & 0x22601F5E)) ^ 0x11300FAF ^ v152 & (v144 ^ v141)) - 373957723 + (__ROR4__(v152, 6) ^ 0xC12BDCF4 ^ (v152 >> 11) ^ (v152 << 21) ^ ((v153 >> 25) - 1054089996 - ((2 * (v153 >> 25)) & 0x8257B9E8)));
  v156 = STACK[0x300];
  v157 = v155 + LODWORD(STACK[0x300]);
  v158 = (__ROR4__(v146, 17) ^ 0x48176484 ^ __ROR4__(v146, 19) ^ ((v146 >> 10) + 1209492612 - ((v146 >> 9) & 0x2EC908))) + v127;
  v159 = (__ROR4__(v158, 17) ^ 0x6F3E8379 ^ __ROR4__(v158, 19) ^ ((v158 >> 10) + 1866367865 - ((v158 >> 9) & 0x7D06F2))) + v130;
  LODWORD(STACK[0x24C]) = v159;
  v160 = v121;
  v161 = v148 + (__ROR4__(v121, 7) ^ 0xA8499B6B ^ __ROR4__(v121, 18) ^ ((v121 >> 3) - 1471571093 - ((v121 >> 2) & 0x109336D6))) + (__ROR4__(v159, 19) ^ 0x7FAE3339 ^ __ROR4__(v159, 17) ^ ((v159 >> 10) + 2142122809 - ((v159 >> 9) & 0x5C6672)));
  LODWORD(STACK[0x2B8]) = v161;
  v162 = v161 + 768;
  v163 = STACK[0x230];
  v164 = (__ROR4__(v124, 7) ^ 0xCAE8BC27 ^ __ROR4__(v124, 18) ^ ((v124 >> 3) - 890717145 + (~(v124 >> 2) | 0xEA2E87B1) + 1)) + LODWORD(STACK[0x230]) + LODWORD(STACK[0x2D0]) + (__ROR4__(v161 + 768, 19) ^ 0x3A4037E2 ^ __ROR4__(v161 + 768, 17) ^ (((v161 + 768) >> 10) + 977287138 - (((v161 + 768) >> 9) & 0x6FC4)));
  LODWORD(STACK[0x2C0]) = v164;
  LODWORD(STACK[0x22C]) = v127;
  v165 = STACK[0x234];
  v166 = (__ROR4__(v127, 18) ^ 0xCED26BC4 ^ __ROR4__(v127, 7) ^ ((v127 >> 3) - 825070652 - ((v127 >> 2) & 0x1DA4D788))) + LODWORD(STACK[0x234]) + LODWORD(STACK[0x2D8]) + (__ROR4__(v164, 17) ^ 0xD02BA29D ^ __ROR4__(v164, 19) ^ ((v164 >> 10) - 802446691 - ((v164 >> 9) & 0x57453A)));
  LODWORD(STACK[0x2C8]) = v166;
  v167 = STACK[0x238];
  v168 = v154 + LODWORD(STACK[0x238]) + LODWORD(STACK[0x2F4]) + (__ROR4__(v166, 19) ^ 0x47C6113C ^ __ROR4__(v166, 17) ^ ((v166 >> 10) + 1204162876 - ((v166 >> 9) & 0xC2278)));
  LODWORD(STACK[0x2B0]) = v168;
  LODWORD(STACK[0x2A0]) = v149 + v118 + v147 + (__ROR4__(v168, 19) ^ 0xCAD3D7AD ^ __ROR4__(v168, 17) ^ ((v168 >> 10) - 892086355 - ((v168 >> 9) & 0x27AF5A)));
  LODWORD(STACK[0x294]) = ((v161 + 768) >> 3) - 686122137 - (((v161 + 768) >> 2) & 0x2E3536CE);
  LODWORD(STACK[0x280]) = __ROR4__(v158, 7) ^ 0xD0956FC1 ^ __ROR4__(v158, 18) ^ ((v158 >> 3) - 795512895 - ((v158 >> 2) & 0x212ADF82));
  LODWORD(STACK[0x250]) = v146;
  LODWORD(STACK[0x278]) = __ROR4__(v146, 7) ^ 0x403B391C ^ __ROR4__(v146, 18) ^ ((v146 >> 3) + 1077623068 - ((v146 >> 2) & 0x767238));
  LODWORD(STACK[0x23C]) = v118;
  LODWORD(STACK[0x248]) = (v118 >> 18) ^ 0x520F54B7 ^ __ROR4__(v118, 7) ^ (v118 << 14) ^ ((v118 >> 3) + 1376736439 - ((v118 >> 2) & 0x241EA96E));
  v169 = v165;
  v171 = __PAIR64__(v156, __ROR4__(v165, 18));
  v170 = __ROR4__(v165, 7) ^ 0x55E3BFA3 ^ v171;
  LODWORD(v171) = v156;
  v172 = v170 ^ ((v165 >> 3) + 1440989091 - ((v165 >> 2) & 0x2BC77F46));
  v173 = v156;
  v174 = ((v143 | v151) & v156 | v143 & v151) + (__ROR4__(v156, 13) ^ 0x10ADF5CE ^ ((v156 | 0x2A35C1800000000uLL) >> 2) ^ ((v171 >> 22) + 279836110 - ((2 * (v171 >> 22)) & 0x143E394))) + LODWORD(STACK[0x228]);
  HIDWORD(v171) = v174;
  LODWORD(v171) = v174;
  v175 = (v171 >> 22) + 2087233585 - ((2 * (v171 >> 22)) & 0xF8D15062);
  v176 = __PAIR64__(v157, __ROR4__(v174, 2));
  v177 = (v176 ^ 0x7C68A831 ^ (v174 << 19) ^ (v174 >> 13) ^ v175) + (v174 & (v151 | v156) | v151 & v156) + LODWORD(STACK[0x220]);
  LODWORD(v176) = v157;
  v178 = v141 + LODWORD(STACK[0x244]) + ((v144 + 18473644 - ((2 * v144) & 0x233C558)) ^ 0x119E2AC ^ v157 & (v152 ^ v144)) + 961987163 + ((v157 >> 6) ^ 0xAE3B7871 ^ __ROR4__(v157, 11) ^ (v157 << 26) ^ ((v176 >> 25) - 1371834255 - ((2 * (v176 >> 25)) & 0x5C76F0E2)));
  v179 = v178 + v174;
  HIDWORD(v176) = v178 + v174;
  LODWORD(v176) = v178 + v174;
  v180 = v144 + LODWORD(STACK[0x270]) + (LODWORD(STACK[0x218]) ^ 0x9C2756FD ^ (v178 + v174) & (v157 ^ v152)) + 1508970993 + (__ROR4__(v178 + v174, 6) ^ 0xF0EC03B2 ^ __ROR4__(v178 + v174, 11) ^ ((v176 >> 25) - 252968014 - ((2 * (v176 >> 25)) & 0xE1D80764)));
  v181 = v180 + v177;
  HIDWORD(v176) = v180 + v177;
  LODWORD(v176) = v180 + v177;
  v182 = (v176 >> 25) - 1248042847 - ((2 * (v176 >> 25)) & 0x6B38C142);
  v183 = __PAIR64__(v177, __ROR4__(v180 + v177, 6));
  v184 = v152 + LODWORD(STACK[0x258]) + ((v157 + 833932060 - 2 * (v157 & 0x31B4CB1D ^ v155 & 1)) ^ 0x31B4CB1C ^ (v180 + v177) & ((v178 + v174) ^ v157)) + (v183 ^ 0xB59C60A1 ^ ((v180 + v177) >> 11) ^ ((v180 + v177) << 21) ^ v182);
  LODWORD(v183) = v177;
  v185 = (v183 >> 22) - 380632903 - (LODWORD(STACK[0x208]) & (2 * (v183 >> 22)));
  LODWORD(STACK[0x300]) = v173;
  v186 = (__ROR4__(v177, 2) ^ 0xE95000B9 ^ __ROR4__(v177, 13) ^ v185) + (v177 & (v174 | v173) | v174 & v173) + v150;
  v187 = v186 - 1367228070 + v184;
  HIDWORD(v183) = v187 - 474103478;
  LODWORD(v183) = v187 - 474103478;
  v188 = (v183 >> 25) + 1222120260 - ((2 * (v183 >> 25)) & 0x91B02688);
  v189 = __PAIR64__(v186, __ROR4__(v187 - 474103478, 11));
  v190 = LODWORD(STACK[0x298]) + v157 + ((v178 + v174 - 706050888 - ((2 * (v178 + v174)) & 0xABD50970)) ^ 0xD5EA84B8 ^ (v187 - 474103478) & ((v180 + v177) ^ (v178 + v174))) - 1424204075 + (__ROR4__(v187 - 474103478, 6) ^ 0x48D81344 ^ v189 ^ v188);
  LODWORD(v189) = v186;
  v191 = (__ROR4__(v186, 2) ^ 0xB4FA21FB ^ __ROR4__(v186, 13) ^ ((v189 >> 22) - 1258675717 - ((2 * (v189 >> 22)) & 0x69F443F6))) + (v186 & (v177 | v174) | v177 & v174) + v155;
  v192 = v190 + v191;
  HIDWORD(v189) = v190 + v191;
  LODWORD(v189) = v190 + v191;
  v193 = (v189 >> 25) - 298790063 - ((2 * (v189 >> 25)) & 0xDC61A6A2);
  v194 = __PAIR64__(v191, __ROR4__(v190 + v191, 11));
  v195 = v179 + ((v180 + v177 - 2053725908 - ((2 * (v180 + v177)) & 0xB2D4258)) ^ 0x8596A12C ^ (v190 + v191) & ((v187 - 474103478) ^ (v180 + v177))) + 1476897432 + (((v190 + v191) << 26) ^ 0xEE30D351 ^ v194 ^ ((v190 + v191) >> 6) ^ v193);
  LODWORD(v194) = v191;
  v196 = (__ROR4__(v191, 2) ^ 0xDBE20F94 ^ __ROR4__(v191, 13) ^ ((v194 >> 22) - 605941868 - ((2 * (v194 >> 22)) & 0xB7C41F28))) + (v191 & (v186 | v177) | v186 & v177) + v178;
  HIDWORD(v194) = v196;
  LODWORD(v194) = v196;
  v197 = (__ROR4__(v196, 13) ^ 0x11DE54A ^ __ROR4__(v196, 2) ^ ((v194 >> 22) + 18736458 - ((2 * (v194 >> 22)) & 0x23BCA94))) + (v196 & (v191 | v186) | v191 & v186) + v180;
  HIDWORD(v194) = v197;
  LODWORD(v194) = v197;
  v198 = (__ROR4__(v197, 2) ^ 0x8C9CB62B ^ __ROR4__(v197, 22) ^ ((v194 >> 13) - 1935886805 - ((2 * (v194 >> 13)) & 0x19396C56))) + ((v197 | v196) & v191 | v197 & v196) + v184;
  v199 = v198 - 1841331548;
  HIDWORD(v194) = v198 - 1841331548;
  LODWORD(v194) = v198 - 1841331548;
  v200 = (((v198 << 30) | 0x3A0174B8) ^ __ROR4__(v198 - 1841331548, 13) ^ ((v198 - 1841331548) >> 2) ^ ((v194 >> 22) + 973173944 - ((2 * (v194 >> 22)) & 0x7402E970))) + ((v198 - 1841331548) & (v197 | v196) | v197 & v196) + v190;
  HIDWORD(v194) = v200;
  LODWORD(v194) = v200;
  v201 = (__ROR4__(v200, 13) ^ 0xA06425D1 ^ __ROR4__(v200, 2) ^ ((v194 >> 22) - 1604049455 - ((2 * (v194 >> 22)) & 0x40C84BA2))) + (v200 & (v199 | v197) | v199 & v197) + v195;
  HIDWORD(v194) = v201;
  LODWORD(v194) = v201;
  v202 = (__ROR4__(v201, 2) ^ 0xBB827AB6 ^ __ROR4__(v201, 13) ^ ((v194 >> 22) - 1149076810 - ((2 * (v194 >> 22)) & 0x7704F56C))) + (v201 & (v200 | v199) | v200 & v199);
  v203 = v195 + v196;
  HIDWORD(v194) = v203;
  LODWORD(v194) = v203;
  v204 = v181 + ((v187 - ((2 * (v187 - 474103478)) & 0x624CE9C) + 1724917912) ^ 0x8312674E ^ v203 & (v192 ^ (v187 - 474103478))) + 310598401 + ((v203 >> 6) ^ 0xF1DD9ADA ^ __ROR4__(v203, 11) ^ (v203 << 26) ^ ((v194 >> 25) - 237135142 - ((2 * (v194 >> 25)) & 0xE3BB35B4)));
  v205 = v202 + v204;
  v206 = v204 + v197;
  HIDWORD(v194) = v206;
  LODWORD(v194) = v204 + v197;
  v207 = v187 + ((v192 - 88798200 - ((2 * v192) & 0xF56A1810)) ^ 0xFAB50C08 ^ v206 & (v203 ^ v192)) + 133121800 + (__ROR4__(v206, 11) ^ 0x2F1CACC1 ^ __ROR4__(v206, 6) ^ ((v194 >> 25) + 790408385 - ((2 * (v194 >> 25)) & 0x5E395982)));
  v208 = v207 + v199;
  HIDWORD(v194) = v207 + v199;
  LODWORD(v194) = v207 + v199;
  v209 = v192 + ((v203 + 895399613 - ((2 * v203) & 0x6ABD6D7A)) ^ 0x355EB6BD ^ (v207 + v199) & (v206 ^ v203)) + 1426881987 + (__ROR4__(v207 + v199, 11) ^ 0xEB82EE17 ^ __ROR4__(v207 + v199, 6) ^ ((v194 >> 25) - 343740905 + (~(2 * (v194 >> 25)) | 0x28FA23D1) + 1));
  v210 = v209 + v200;
  HIDWORD(v194) = v209 + v200;
  LODWORD(v194) = v209 + v200;
  v211 = v203 + ((v206 + 1247203460 - ((2 * v206) & 0x94ADA108)) ^ 0x4A56D084 ^ (v209 + v200) & ((v207 + v199) ^ v206)) + 1925078388 + (__ROR4__(v209 + v200, 6) ^ 0x6B372281 ^ __ROR4__(v209 + v200, 11) ^ ((v194 >> 25) + 1798775425 - ((2 * (v194 >> 25)) & 0xD66E4502)));
  v212 = v207 + v199 - 1247726397 - ((2 * (v207 + v199)) & 0x6B426986);
  v213 = v211 + v201;
  HIDWORD(v194) = v211 + v201;
  LODWORD(v194) = v211 + v201;
  v214 = v206 + (v212 ^ 0xB5A134C3 ^ (v211 + v201) & ((v209 + v200) ^ v208)) - 2132889090 + (((v211 + v201) << 21) ^ 0xCC67B96 ^ __ROR4__(v211 + v201, 6) ^ ((v211 + v201) >> 11) ^ ((v194 >> 25) + 214334358 - ((2 * (v194 >> 25)) & 0x198CF72C)));
  v215 = v214 + v205;
  HIDWORD(v194) = v214 + v205;
  LODWORD(v194) = v214 + v205;
  v216 = (v194 >> 25) - 1238250612 - ((2 * (v194 >> 25)) & 0x6C639718);
  v217 = __PAIR64__(v205, __ROR4__(v214 + v205, 6));
  v218 = v208 + ((v209 + v200 - 2113390633 - ((2 * (v209 + v200)) & 0x4106FAE)) ^ 0x820837D7 ^ (v214 + v205) & ((v211 + v201) ^ (v209 + v200))) - 1680079193 + (v217 ^ 0xB631CB8C ^ ((v214 + v205) << 21) ^ ((v214 + v205) >> 11) ^ v216);
  LODWORD(v217) = v205;
  v219 = (__ROR4__(v205, 2) ^ 0x508ED77E ^ __ROR4__(v205, 13) ^ ((v217 >> 22) + 1351538558 - ((2 * (v217 >> 22)) & 0xA11DAEFC))) + (((v205 & (v201 ^ v200) ^ 0x463157EA) & ~(v201 & v200) | v201 & v200 & 0xB9CEA815) ^ 0x463157EA) + v207;
  v220 = v218 + v219;
  v221 = (v211 + v201 - 1834329164 - ((2 * (v211 + v201)) & 0x2554B768)) ^ 0x92AA5BB4 ^ (v218 + v219) & ((v214 + v205) ^ (v211 + v201));
  HIDWORD(v217) = v218 + v219;
  LODWORD(v217) = v218 + v219;
  v222 = (v217 >> 25) - 1237860680 - ((2 * (v217 >> 25)) & 0x6C6F7D70);
  v223 = __PAIR64__(v219, __ROR4__(v218 + v219, 6));
  v224 = __ROR4__(v218 + v219, 11) ^ 0xB637BEB8 ^ v223 ^ v222;
  LODWORD(v223) = v219;
  v225 = (__ROR4__(v219, 13) ^ 0x2EA11EDA ^ __ROR4__(v219, 2) ^ ((v223 >> 22) + 782311130 - ((2 * (v223 >> 22)) & 0x5D423DB4))) + (v219 & (v205 | v201) | v205 & v201) + v209;
  HIDWORD(v223) = v225;
  LODWORD(v223) = v225;
  v226 = v225 & v219;
  v227 = v225 | v219;
  v228 = v211 + (v227 & v205 | v226) + (__ROR4__(v225, 13) ^ 0xAF98AE8D ^ __ROR4__(v225, 2) ^ ((v223 >> 22) - 1348948339 - ((2 * (v223 >> 22)) & 0x5F315D1A)));
  HIDWORD(v223) = v228;
  LODWORD(v223) = v228;
  v229 = v214 + (v228 & v227 | v226) + (__ROR4__(v228, 13) ^ 0xB89DFAA3 ^ __ROR4__(v228, 22) ^ ((v223 >> 2) - 1197606237 - ((2 * (v223 >> 2)) & 0x713BF546)));
  HIDWORD(v223) = v229;
  LODWORD(v223) = v229;
  v230 = (__ROR4__(v229, 2) ^ 0x6FF51109 ^ __ROR4__(v229, 13) ^ ((v223 >> 22) + 1878331657 - ((2 * (v223 >> 22)) & 0xDFEA2212))) + (v229 & (v228 | v225) | v228 & v225) + v218;
  HIDWORD(v223) = v230;
  LODWORD(v223) = v230;
  v231 = v210 + v221 - 1046743948 + v224;
  v232 = v230 & v229;
  v233 = v230 | v229;
  v234 = v231 + ((v230 | v229) & v228 | v230 & v229) + (__ROR4__(v230, 13) ^ 0x97615A83 ^ __ROR4__(v230, 2) ^ ((v223 >> 22) - 1755227517 - ((2 * (v223 >> 22)) & 0x2EC2B506)));
  v235 = v231 + v225;
  HIDWORD(v223) = v231 + v225;
  LODWORD(v223) = v231 + v225;
  v236 = v160 + v213 + ((v215 + 1975465964 - ((2 * v215) & 0xEB7E6FD8)) ^ 0x75BF37EC ^ (v231 + v225) & (v220 ^ v215)) - 459576895 + (__ROR4__(v231 + v225, 6) ^ 0x1E49C2AD ^ __ROR4__(v231 + v225, 11) ^ ((v223 >> 25) + 508150445 - ((2 * (v223 >> 25)) & 0x3C93855A)));
  v237 = v236 + v228;
  HIDWORD(v223) = v237;
  LODWORD(v223) = v236 + v228;
  v238 = v163 + v215 + ((v220 + 2120612301 - ((2 * v220) & 0xFCCBF39A)) ^ 0x7E65F9CD ^ (v236 + v228) & ((v231 + v225) ^ v220)) - 272742522 + (__ROR4__(v237, 25) ^ 0xC1349935 ^ __ROR4__(v237, 11) ^ ((v223 >> 6) - 1053517515 - ((2 * (v223 >> 6)) & 0x8269326A)));
  v239 = v238 + v229;
  HIDWORD(v223) = v239;
  LODWORD(v223) = v239;
  v240 = v172 + v124;
  v241 = v220 + v124 + ((v235 + 877052957 - ((2 * v235) & 0x688D883A)) ^ 0x3446C41D ^ v239 & ((v236 + v228) ^ v235)) + (__ROR4__(v239, 11) ^ 0x7B646CC2 ^ __ROR4__(v239, 6) ^ ((v223 >> 25) + 2070179010 - ((2 * (v223 >> 25)) & 0xF6C8D984)));
  v242 = v241 + v230;
  v243 = v241 + v230 + 264347078;
  HIDWORD(v223) = v243;
  LODWORD(v223) = v243;
  v244 = v169 + v235 + ((v237 + 1576682229 - ((2 * v237) & 0xBBF485EA)) ^ 0x5DFA42F5 ^ v243 & (v239 ^ v237)) + 604807628 + (__ROR4__(v243, 6) ^ 0x4E02D6ED ^ __ROR4__(v243, 11) ^ ((v223 >> 25) + 1308808941 - ((2 * (v223 >> 25)) & 0x9C05ADDA)));
  v245 = v244 + v234;
  HIDWORD(v223) = v244 + v234;
  LODWORD(v223) = v244 + v234;
  v246 = (v223 >> 25) - 924523529 - ((2 * (v223 >> 25)) & 0x91C9C7EE);
  v247 = __PAIR64__(v234, __ROR4__(v244 + v234, 11));
  v248 = STACK[0x22C];
  v249 = LODWORD(STACK[0x22C]) + 770255983 + v236 + v228 + ((v239 + 1181089068 - ((2 * v239) & 0x8CCBFA58)) ^ 0x4665FD2C ^ (v244 + v234) & (v243 ^ v239)) + (__ROR4__(v244 + v234, 6) ^ 0xC8E4E3F7 ^ v247 ^ v246);
  LODWORD(v247) = v234;
  v250 = (__ROR4__(v234, 13) ^ 0x6C789EE0 ^ __ROR4__(v234, 2) ^ ((v247 >> 22) + 1819844320 - ((2 * (v247 >> 22)) & 0xD8F13DC0))) + (v234 & v233 | v232) + v236;
  HIDWORD(v247) = v250;
  LODWORD(v247) = v250;
  v251 = (v247 >> 22) - ((2 * (v247 >> 22)) & 0xCC1B8680);
  HIDWORD(v247) = v250;
  LODWORD(v247) = v250;
  v252 = (v247 >> 13) - ((2 * (v247 >> 13)) & 0xF4913C20);
  HIDWORD(v247) = v250;
  LODWORD(v247) = v250;
  v253 = v238 + (v250 & (v234 | v230) | v234 & v230) + ((v252 + 2051579408) ^ ((v247 >> 2) - ((2 * (v247 >> 2)) & 0x1E5B4C14) + 254649866) ^ (v251 + 1712177984) ^ 0x1368FB5A);
  HIDWORD(v247) = v253;
  LODWORD(v247) = v253;
  v254 = (v253 & (v250 | v234) | v250 & v234) + 264347078 + v241 + (__ROR4__(v253, 2) ^ 0xDADC6CAE ^ __ROR4__(v253, 13) ^ ((v247 >> 22) - 623088466 - ((2 * (v247 >> 22)) & 0xB5B8D95C)));
  HIDWORD(v247) = v254;
  LODWORD(v247) = v254;
  v255 = v244 + (v254 & (v253 | v250) | v253 & v250) + (__ROR4__(v254, 2) ^ 0x91E060FC ^ __ROR4__(v254, 13) ^ ((v247 >> 22) - 1847566084 - ((2 * (v247 >> 22)) & 0x23C0C1F8)));
  v256 = v249 + v250;
  v257 = v167;
  v258 = v167 + 1249150122 + v239 + (((v243 & ~v256 ^ 0xA5F3F7A0) & ~(v256 & v245) | v256 & v245 & 0x5A0C085F) ^ 0xA5F3F7A0) + (__ROR4__(v256, 6) ^ 0x99599C72 ^ __ROR4__(v256, 11) ^ (v256 << 7) ^ ((v256 >> 25) - 1722180494 + (~HIBYTE(v256) | 0xFFFFFF1B) + 1));
  v259 = v258 + v253;
  HIDWORD(v247) = v258 + v253;
  LODWORD(v247) = v258 + v253;
  v260 = STACK[0x288];
  v261 = LODWORD(STACK[0x288]) + v242 + ((v245 + 1155986727 - ((2 * v245) & 0x89CDEA4E)) ^ 0x44E6F527 ^ (v258 + v253) & (v256 ^ v245)) + 1819428770 + (__ROR4__(v258 + v253, 25) ^ 0xD5463759 ^ ((v258 + v253) << 21) ^ ((v258 + v253) >> 11) ^ ((v247 >> 6) - 716818599 - ((2 * (v247 >> 6)) & 0xAA8C6EB2)));
  v262 = v261 + v254;
  HIDWORD(v247) = v261 + v254;
  LODWORD(v247) = v261 + v254;
  v263 = LODWORD(STACK[0x23C]) + v244 + v234 + ((v256 + 1859138857 - ((2 * v256) & 0xDDA06A52)) ^ 0x6ED03529 ^ (v261 + v254) & ((v258 + v253) ^ v256)) + 1996064986 + (__ROR4__(v261 + v254, 6) ^ 0x8C4B9069 ^ __ROR4__(v261 + v254, 11) ^ ((v247 >> 25) - 1941204887 - ((2 * (v247 >> 25)) & 0x189720D2)));
  LODWORD(STACK[0x230]) = v263;
  v264 = STACK[0x240];
  v265 = v263 + v255;
  HIDWORD(v247) = v265;
  LODWORD(v247) = v263 + v255;
  v266 = v240 + v158 + ((v264 << 13) ^ __ROR4__(v264, 17) ^ (v264 >> 10) ^ (v264 >> 19));
  v267 = (v247 >> 25) ^ __ROR4__(v265, 6) ^ __ROR4__(__ROR4__(v265, 24) ^ 0xC67F1455, 19);
  v268 = STACK[0x24C];
  v269 = ((v257 << 14) ^ 0xCC039BC4 ^ __ROR4__(v257, 7) ^ (v257 >> 18) ^ ((v257 >> 3) - 872178748 - ((v257 >> 2) & 0x18073788))) + v248 + LODWORD(STACK[0x24C]) + (__ROR4__(v266, 17) ^ 0xEECA932 ^ __ROR4__(v266, 19) ^ ((v266 >> 10) + 250390834 - ((2 * (v266 >> 10)) & 0x595264)));
  v270 = LODWORD(STACK[0x248]) + v260 + LODWORD(STACK[0x2B8]) + (__ROR4__(v269, 17) ^ 0xBF63B61F ^ __ROR4__(v269, 19) ^ ((v269 >> 10) - 1083984353 - ((v269 >> 9) & 0x476C3E)));
  LODWORD(STACK[0x248]) = v270;
  v271 = v270 + 768;
  v272 = LODWORD(STACK[0x278]) + LODWORD(STACK[0x2A8]) + LODWORD(STACK[0x2C0]) + (__ROR4__(v270 + 768, 17) ^ 0xBFA6938B ^ __ROR4__(v270 + 768, 19) ^ (((v270 + 768) >> 10) - 1079602293 - (((v270 + 768) >> 9) & 0x4D2716)));
  LODWORD(STACK[0x288]) = v272;
  v273 = STACK[0x2D0];
  v274 = LODWORD(STACK[0x280]) + LODWORD(STACK[0x2D0]) + LODWORD(STACK[0x2C8]) + (__ROR4__(v272, 17) ^ 0x8E450C29 ^ (v272 << 13) ^ (v272 >> 19) ^ ((v272 >> 10) - 1908077527 - ((v272 >> 9) & 0xA1852)));
  LODWORD(STACK[0x280]) = v274;
  v276 = __PAIR64__(v274, __ROR4__(v162, 7));
  v275 = __ROR4__(v162, 18) ^ 0xD71A9B67 ^ v276;
  LODWORD(v276) = v274;
  v277 = v275 ^ LODWORD(STACK[0x294]);
  v278 = (v274 >> 10) ^ 0xF0278155 ^ __ROR4__(v274, 17) ^ ((v276 >> 19) - 265846443 - ((2 * (v276 >> 19)) & 0xE04F02AA));
  v279 = v268;
  v280 = STACK[0x2D8];
  v281 = (__ROR4__(v268, 7) ^ 0xEC78537D ^ __ROR4__(v268, 18) ^ ((v268 >> 3) - 327658627 - ((v268 >> 2) & 0x18F0A6FA))) + LODWORD(STACK[0x2D8]) + LODWORD(STACK[0x2B0]) + v278;
  LODWORD(STACK[0x278]) = v281;
  v282 = STACK[0x2F4];
  v283 = STACK[0x2A0];
  LODWORD(STACK[0x294]) = v277 + LODWORD(STACK[0x2F4]) + LODWORD(STACK[0x2A0]) + (__ROR4__(v281, 17) ^ 0xBB3DBC82 ^ __ROR4__(v281, 19) ^ ((v281 >> 10) - 1153581950 - ((v281 >> 9) & 0x7B7904)));
  LODWORD(STACK[0x258]) = v271;
  LODWORD(STACK[0x23C]) = (v271 >> 18) ^ 0xDC5EB539 ^ __ROR4__(v271, 7) ^ (v271 << 14) ^ ((v271 >> 3) - 597772999 - ((v271 >> 2) & 0x38BD6A72));
  LODWORD(STACK[0x238]) = __ROR4__(v269, 7) ^ 0xA15C194C ^ __ROR4__(v269, 18) ^ ((v269 >> 3) - 1587799732 - ((v269 >> 2) & 0x2B83298));
  v284 = __ROR4__(v282, 7) ^ 0x261FA59C ^ __ROR4__(v282, 18) ^ ((v282 >> 3) + 639608220 - ((v282 >> 2) & 0xC3F4B38));
  v285 = __ROR4__(v283, 19) ^ 0x53E14BD ^ (v283 >> 17) ^ (v283 << 15) ^ ((v283 >> 10) + 87954621 - ((v283 >> 9) & 0x7C297A));
  v286 = v273;
  v287 = STACK[0x250];
  v288 = (__ROR4__(v273, 18) ^ 0x97725E9E ^ __ROR4__(v273, 7) ^ ((v273 >> 3) - 1754112354 - ((v273 >> 2) & 0x2EE4BD3C))) + LODWORD(STACK[0x250]) + v266 + v285;
  LODWORD(STACK[0x270]) = v288;
  v289 = __ROR4__(v288, 17) ^ 0x70E028A8 ^ __ROR4__(v288, 19) ^ ((v288 >> 10) + 1893738664 - ((v288 >> 9) & 0x405150));
  v290 = v269;
  LODWORD(STACK[0x244]) = v269;
  v291 = (__ROR4__(v280, 7) ^ 0x2E9932D2 ^ __ROR4__(v280, 18) ^ ((v280 >> 3) + 781791954 - ((v280 >> 2) & 0x1D3265A4))) + v158 + v269 + v289;
  LODWORD(STACK[0x298]) = v291;
  v292 = v284 + v279 + v271 + (__ROR4__(v291, 19) ^ 0x594D64EA ^ __ROR4__(v291, 17) ^ ((v291 >> 10) + 1498244330 - ((v291 >> 9) & 0x1AC9D4)));
  LODWORD(STACK[0x2A8]) = v292;
  v293 = __PAIR64__(v255, __ROR4__(v292, 17));
  v294 = (__ROR4__(v264, 7) ^ 0x5BC1878C ^ __ROR4__(v264, 18) ^ ((v264 >> 3) + 1539409804 - ((v264 >> 2) & 0x37830F18))) + v162 + v272 + (__ROR4__(v292, 19) ^ 0xBAE5E5A3 ^ v293 ^ ((v292 >> 10) - 1159338589 - ((v292 >> 9) & 0x4BCB46)));
  LODWORD(v293) = v255;
  v295 = v249 + (v255 & (v254 | v253) | v254 & v253) + (__ROR4__(v255, 2) ^ 0xF183D3AB ^ __ROR4__(v255, 13) ^ ((v293 >> 22) - 243018837 - ((2 * (v293 >> 22)) & 0xE307A756)));
  HIDWORD(v293) = v295;
  LODWORD(v293) = v295;
  v296 = LODWORD(STACK[0x254]) + v256 + ((v258 + v253 - 324984367 - ((2 * (v258 + v253)) & 0xD94243A2)) ^ 0xECA121D1 ^ v265 & ((v261 + v254) ^ (v258 + v253))) + 406737234 + (v267 ^ 0xE28AB8CF);
  v297 = v258 + (v295 & (v255 | v254) | v255 & v254) + (__ROR4__(v295, 2) ^ 0x276B551A ^ __ROR4__(v295, 13) ^ ((v293 >> 22) + 661345562 - ((2 * (v293 >> 22)) & 0x4ED6AA34)));
  v298 = v261 + v254 - 386645269 - ((2 * (v261 + v254)) & 0xD1E885D6);
  v299 = v296 + v295;
  HIDWORD(v293) = v296 + v295;
  LODWORD(v293) = v296 + v295;
  v300 = (v293 >> 25) - (LODWORD(STACK[0x204]) & (2 * (v293 >> 25)));
  HIDWORD(v293) = v296 + v295;
  LODWORD(v293) = v296 + v295;
  v301 = v287 + v259 + (v298 ^ 0xE8F442EB ^ v299 & (v265 ^ v262)) - 1473132947 + ((v300 - 583429058) ^ __ROR4__(v299, 11) ^ ((v293 >> 6) - ((2 * (v293 >> 6)) & 0xCABD1386) - 446789181) ^ 0x38671DFD);
  v302 = v301 + v297;
  v303 = ((v302 & v299) - ((2 * (v302 & v299)) & 0x364E2510) - 1691938168) ^ v302 & v265;
  HIDWORD(v293) = v301 + v297;
  LODWORD(v293) = v301 + v297;
  v304 = (v293 >> 25) - 122148657 - ((2 * (v293 >> 25)) & 0xF170519E);
  v305 = __PAIR64__(v297, __ROR4__(v301 + v297, 6));
  v306 = v286 + v262 + (__ROR4__(v301 + v297, 11) ^ 0xF8B828CF ^ v305 ^ v304) - 1341970488 + ((v265 - ((2 * v265) & 0xE6215304) - 217011838) ^ 0xE4F67B2B ^ ((v303 & 0xA8A9E96E ^ 0x9DC3D021) & (v303 & 0x57561691 ^ 0xEEE9EBEF) | v303 & STACK[0x200]));
  LODWORD(v305) = v297;
  v307 = v261 + (v297 & (v295 | v255) | v295 & v255) + (__ROR4__(v297, 13) ^ 0x52CD499B ^ __ROR4__(v297, 2) ^ ((v305 >> 22) + 1389185435 - ((2 * (v305 >> 22)) & 0xA59A9336)));
  v308 = v296 + v295 + 1502512234;
  if (v296 + v295 < 0xA6717B96)
  {
    v308 = v296 + v295;
  }

  if (v299 >= 0xA6717B96)
  {
    v309 = -1502512234;
  }

  else
  {
    v309 = 0;
  }

  if (v308)
  {
    v310 = v296 + v295;
  }

  else
  {
    v310 = v309;
  }

  v311 = v306 + v307;
  HIDWORD(v312) = v306 + v307;
  LODWORD(v312) = v306 + v307;
  v313 = (v312 >> 25) + 1935992514 - ((2 * (v312 >> 25)) & 0xE6C9CD84);
  v314 = __PAIR64__(v307, __ROR4__(v306 + v307, 11));
  v315 = v158 + v265 + ((v310 - 1477061332 - ((2 * v310) & 0x4FEBAA58)) ^ 0xA7F5D52C ^ v311 & (v302 ^ v310)) - 1084653625 + (__ROR4__(v311, 6) ^ 0x7364E6C2 ^ v314 ^ v313);
  LODWORD(v314) = v307;
  v316 = LODWORD(STACK[0x230]) + (v307 & (v297 | v295) | v297 & v295) + (__ROR4__(v307, 13) ^ 0xA2781295 ^ __ROR4__(v307, 2) ^ ((v314 >> 22) - 1569189227 - ((2 * (v314 >> 22)) & 0x44F0252A)));
  v317 = v315 + v316;
  v318 = __PAIR64__(v316, __ROR4__(v315 + v316, 11));
  v319 = __ROR4__(v317, 6) ^ 0x1AD40918 ^ v318 ^ (v317 >> 25) ^ ((v317 << 7) + 450103576 - ((v317 << 8) & 0x35A81200));
  LODWORD(v318) = v316;
  v320 = v296 + (v316 & (v307 | v297) | v307 & v297) + (__ROR4__(v316, 2) ^ 0xF42EC735 ^ __ROR4__(v316, 13) ^ ((v318 >> 22) - 198260939 - ((2 * (v318 >> 22)) & 0xE85D8E6A)));
  HIDWORD(v318) = v320;
  LODWORD(v318) = v320;
  v321 = (__ROR4__(v320, 2) ^ 0x804A010E ^ (v320 >> 13) ^ (v320 << 19) ^ ((v318 >> 22) - 2142633714 - ((2 * (v318 >> 22)) & 0x94021C))) + (v320 & (v316 | v307) | v316 & v307) + v301;
  HIDWORD(v318) = v321;
  LODWORD(v318) = v321;
  v322 = (__ROR4__(v321, 13) ^ 0x4E1780DB ^ __ROR4__(v321, 2) ^ ((v318 >> 22) + 1310163163 - ((2 * (v318 >> 22)) & 0x9C2F01B6))) + ((v321 | v316) & v320 | v321 & v316) + v306;
  HIDWORD(v318) = v322;
  LODWORD(v318) = v322;
  v323 = v280 + v310 + ((v302 + 947676958 - ((2 * v302) & 0x70F8CE3C)) ^ 0x387C671E ^ v317 & ((v306 + v307) ^ v302)) - 958395405 + v319;
  v324 = (__ROR4__(v322, 2) ^ 0xBE1B7EDF ^ __ROR4__(v322, 13) ^ ((v318 >> 22) - 1105494305 - ((2 * (v318 >> 22)) & 0x7C36FDBE))) + (v322 & (v321 | v320) | v321 & v320) + v315;
  HIDWORD(v318) = v324;
  LODWORD(v318) = v324;
  v325 = ((v324 >> 2) ^ __ROR4__(v324, 13) ^ ((v324 << 30) | 0x26C738BC) ^ ((v318 >> 22) + 650590396 - ((2 * (v318 >> 22)) & 0x4D8E7178))) + (v324 & (v322 | v321) | v322 & v321) + v323;
  v326 = v323 + v320;
  HIDWORD(v318) = v326;
  LODWORD(v318) = v323 + v320;
  v327 = v279 + v302 + ((v311 + 1559352218 - ((2 * v311) & 0xB9E3A734)) ^ 0x5CF1D39A ^ v326 & (v317 ^ v311)) - 710438585 + (__ROR4__(v326, 6) ^ 0x9E036AC0 ^ __ROR4__(v326, 11) ^ ((v318 >> 25) - 1643943232 - ((2 * (v318 >> 25)) & 0x3C06D580)));
  if ((v317 & 8) != 0)
  {
    v328 = -8;
  }

  else
  {
    v328 = 8;
  }

  v329 = v327 + v321;
  HIDWORD(v330) = v329;
  LODWORD(v330) = v327 + v321;
  v331 = LODWORD(STACK[0x2F4]) + v311 + ((v317 + 1969783017 - ((2 * v317) & 0xEAD101D2)) ^ 0x756880E9 ^ (v327 + v321) & (v326 ^ v317)) + 113926993 + (__ROR4__(v329, 6) ^ 0x735DA60D ^ __ROR4__(v329, 11) ^ ((v330 >> 25) + 1935517197 - ((2 * (v330 >> 25)) & 0xE6BB4C1A)));
  v332 = v331 + v322;
  v333 = LODWORD(STACK[0x2B8]) + ((v328 + v317) ^ 8) + ((v326 - 1087567304 - ((2 * v326) & 0x7E5A1470)) ^ 0xBF2D0A38 ^ (v331 + v322) & (v329 ^ v326)) + 338242663 + (__ROR4__(v331 + v322, 11) ^ 0x9818F879 ^ __ROR4__(v331 + v322, 6) ^ ((v331 + v322) << 7) ^ (((v331 + v322) >> 25) - 1743193991 - (((v331 + v322) >> 24) & 0xF2)));
  v334 = v333 + v324;
  HIDWORD(v330) = v333 + v324;
  LODWORD(v330) = v333 + v324;
  v335 = v264 + v326 + ((v329 + 552424662 - ((2 * v329) & 0x41DAA9AC)) ^ 0x20ED54D6 ^ (v333 + v324) & ((v331 + v322) ^ v329)) + 666307205 + (__ROR4__(v333 + v324, 6) ^ 0x7664357C ^ __ROR4__(v333 + v324, 11) ^ ((v330 >> 25) + 1986278780 - ((2 * (v330 >> 25)) & 0xECC86AF8)));
  v336 = v335 + v325;
  HIDWORD(v330) = v335 + v325;
  LODWORD(v330) = v335 + v325;
  v337 = (v330 >> 25) - 207710148 - ((2 * (v330 >> 25)) & 0xE73D3078);
  v338 = __PAIR64__(v325, __ROR4__(v335 + v325, 11));
  v339 = STACK[0x2C0];
  v340 = LODWORD(STACK[0x2C0]) + v329 + ((v331 + v322 + 1604947600 + (~(2 * (v331 + v322)) | 0x40ACE2DF) + 1) ^ 0x5FA98E90 ^ (v335 + v325) & ((v333 + v324) ^ (v331 + v322))) + 773529912 + (__ROR4__(v335 + v325, 6) ^ 0xF39E983C ^ v338 ^ v337);
  LODWORD(v338) = v325;
  v341 = ((v325 << 19) ^ 0xABFA47A4 ^ __ROR4__(v325, 2) ^ (v325 >> 13) ^ ((v338 >> 22) - 1409661020 - ((2 * (v338 >> 22)) & 0x57F48F48))) + (v325 & (v324 | v322) | v324 & v322) + v327;
  HIDWORD(v338) = v341;
  LODWORD(v338) = v341;
  v342 = (__ROR4__(v341, 2) ^ 0xDAFF8C5E ^ __ROR4__(v341, 13) ^ ((v338 >> 22) - 620786594 - ((2 * (v338 >> 22)) & 0xB5FF18BC))) + (v341 & (v325 | v324) | v325 & v324) + v331;
  HIDWORD(v338) = v342;
  LODWORD(v338) = v342;
  v343 = (__ROR4__(v342, 2) ^ 0x82FCEA65 ^ __ROR4__(v342, 22) ^ ((v338 >> 13) - 2097354139 - ((2 * (v338 >> 13)) & 0x5F9D4CA))) + (v342 & (v341 | v325) | v341 & v325) + v333;
  HIDWORD(v338) = v343;
  LODWORD(v338) = v343;
  v344 = (__ROR4__(v343, 13) ^ 0xED6E185 ^ __ROR4__(v343, 2) ^ ((v338 >> 22) + 248963461 - ((2 * (v338 >> 22)) & 0x1DADC30A))) + (v343 & (v342 | v341) | v342 & v341) + v335;
  HIDWORD(v338) = v344;
  LODWORD(v338) = v344;
  v345 = (__ROR4__(v344, 13) ^ 0x12A7FD47 ^ __ROR4__(v344, 2) ^ ((v338 >> 22) + 312999239 - ((2 * (v338 >> 22)) & 0x254FFA8E))) + (v344 & (v343 | v342) | v343 & v342) + v340;
  v346 = v340 + v341;
  HIDWORD(v338) = v346;
  LODWORD(v338) = v340 + v341;
  v347 = v266 + v332 + ((v334 + 2103034517 - ((2 * v334) & 0xFAB3852A)) ^ 0x7D59C295 ^ (v340 + v341) & (v336 ^ v334)) + 1294757372 + (__ROR4__(v346, 6) ^ 0x958C14AC ^ __ROR4__(v346, 11) ^ ((v338 >> 25) - 1785981780 - ((2 * (v338 >> 25)) & 0x2B182958)));
  v348 = (v347 ^ 0x1C423EB6) - 474103478 + ((2 * v347) & 0x38847D6C);
  v349 = v348 + v342;
  HIDWORD(v338) = v348 + v342;
  LODWORD(v338) = v348 + v342;
  v350 = STACK[0x2C8];
  v351 = LODWORD(STACK[0x2C8]) + 1396182291 + v334 + ((v336 - 432372807 - ((2 * v336) & 0xCC750772)) ^ 0xE63A83B9 ^ (v348 + v342) & (v346 ^ v336)) + (__ROR4__(v348 + v342, 11) ^ 0x88B25D99 ^ __ROR4__(v348 + v342, 6) ^ ((v338 >> 25) - 2001576551 - ((2 * (v338 >> 25)) & 0x1164BB32)));
  v352 = v351 + v343;
  HIDWORD(v338) = v351 + v343;
  LODWORD(v338) = v351 + v343;
  v353 = v290 + v336 + ((v346 + 803163319 - ((2 * v346) & 0x5FBE996E)) ^ 0x2FDF4CB7 ^ (v351 + v343) & ((v348 + v342) ^ v346)) + 1695183700 + (__ROR4__(v351 + v343, 11) ^ 0x48CA6DC1 ^ __ROR4__(v351 + v343, 6) ^ ((v338 >> 25) + 1221225921 + (~(2 * (v338 >> 25)) | 0x6E6B247D) + 1));
  v354 = v353 + v344;
  HIDWORD(v338) = v353 + v344;
  LODWORD(v338) = v353 + v344;
  v355 = STACK[0x2B0];
  v356 = LODWORD(STACK[0x2B0]) + v346 + ((v348 + v342 + 356914597 - ((2 * (v348 + v342)) & 0x2A8C2B4A)) ^ 0x154615A5 ^ (v353 + v344) & ((v351 + v343) ^ (v348 + v342))) + 1986661051 + (__ROR4__(v353 + v344, 6) ^ 0x4295702C ^ ((v353 + v344) << 21) ^ ((v353 + v344) >> 11) ^ ((v338 >> 25) + 1117089836 - ((2 * (v338 >> 25)) & 0x852AE058)));
  v357 = (v356 ^ v345) + 2 * (v356 & v345);
  v358 = v294;
  v359 = STACK[0x280];
  v360 = (__ROR4__(v266, 18) ^ 0xC89DE4C2 ^ __ROR4__(v266, 7) ^ ((v266 >> 3) - 929176382 - ((v266 >> 2) & 0x113BC984))) + LODWORD(STACK[0x2C0]) + LODWORD(STACK[0x280]) + (__ROR4__(v294, 19) ^ 0x8CEC37FA ^ __ROR4__(v294, 17) ^ ((v294 >> 10) - 1930676230 - ((v294 >> 9) & 0x586FF4)));
  v361 = STACK[0x278];
  v362 = LODWORD(STACK[0x238]) + LODWORD(STACK[0x2C8]) + LODWORD(STACK[0x278]) + (__ROR4__(v360, 19) ^ 0x5C2F4AFB ^ __ROR4__(v360, 17) ^ ((v360 >> 10) + 1546603259 - ((v360 >> 9) & 0x5E95F6)));
  v363 = STACK[0x294];
  LODWORD(STACK[0x2F4]) = LODWORD(STACK[0x23C]) + LODWORD(STACK[0x2B0]) + LODWORD(STACK[0x294]) + (__ROR4__(v362, 19) ^ 0x50EA6C0F ^ __ROR4__(v362, 17) ^ ((v362 >> 10) + 1357540367 - ((2 * (v362 >> 10)) & 0x54D81E)));
  v364 = (__ROR4__(v339, 7) ^ 0x9ABFB87C ^ __ROR4__(v339, 18) ^ ((v339 >> 3) - 1698711428 - ((v339 >> 2) & 0x357F70F8))) + v264 + LODWORD(STACK[0x270]) + (__ROR4__(v363, 19) ^ 0x7AACBF5C ^ __ROR4__(v363, 17) ^ ((v363 >> 10) + 2058141532 - ((v363 >> 9) & 0x597EB8)));
  HIDWORD(v338) = v357;
  LODWORD(v338) = v357;
  v365 = (v338 >> 6) + 1568379450 - ((2 * (v338 >> 6)) & 0xBAF72474);
  v366 = __PAIR64__(v345, __ROR4__(v357, 25));
  v367 = LODWORD(STACK[0x248]) + v349 + ((v351 + v343 - 942963065 - ((2 * (v351 + v343)) & 0x8F970D0E)) ^ 0xC7CB8687 ^ v357 & ((v353 + v344) ^ (v351 + v343))) - 2117940178 + (__ROR4__(v357, 11) ^ 0x5D7B923A ^ v366 ^ v365);
  LODWORD(v366) = v345;
  v368 = (__ROR4__(v345, 13) ^ 0xC6046BEB ^ __ROR4__(v345, 22) ^ ((v366 >> 2) - 972788757 - ((2 * (v366 >> 2)) & 0x8C08D7D6))) + (v345 & (v344 | v343) | v344 & v343) + v348;
  v369 = v367 + v368;
  HIDWORD(v366) = v367 + v368;
  LODWORD(v366) = v367 + v368;
  v370 = (v366 >> 25) - 1887725254 - ((2 * (v366 >> 25)) & 0x1EF73274);
  v371 = __PAIR64__(v368, __ROR4__(v367 + v368, 6));
  v372 = __ROR4__(v367 + v368, 11) ^ 0x8F7B993A ^ v371 ^ v370;
  v373 = STACK[0x2A0];
  LODWORD(v371) = v368;
  v374 = LODWORD(STACK[0x2A0]) + v352 + ((v353 + v344 - 1085459853 - ((2 * (v353 + v344)) & 0x7E9A64E6)) ^ 0xBF4D3273 ^ (v367 + v368) & (v357 ^ (v353 + v344))) - 1838011259 + v372;
  v375 = (__ROR4__(v368, 13) ^ 0xFCDCA955 ^ __ROR4__(v368, 2) ^ ((v371 >> 22) - 52647595 - ((2 * (v371 >> 22)) & 0xF9B952AA))) + ((v368 | v344) & v345 | v368 & v344) + v351;
  v376 = v374 + v375;
  v377 = __PAIR64__(v375, __ROR4__(v374 + v375, 11));
  v378 = __ROR4__(v374 + v375, 6) ^ 0xC515821 ^ v377 ^ ((v374 + v375) << 7) ^ (((v374 + v375) >> 25) + 206657569 - (((v374 + v375) >> 24) & 0x42));
  v379 = LODWORD(STACK[0x288]) + v354 + ((v357 + 1006287303 - ((2 * v357) & 0x77F5738E)) ^ 0x3BFAB9C7 ^ (v374 + v375) & ((v367 + v368) ^ v357));
  LODWORD(v377) = v375;
  v380 = v375 & v368;
  v381 = v375 | v368;
  v382 = (__ROR4__(v375, 13) ^ 0xDA252969 ^ __ROR4__(v375, 2) ^ ((v377 >> 22) - 635098775 - ((2 * (v377 >> 22)) & 0xB44A52D2))) + (v381 & v345 | v380) + v353;
  HIDWORD(v377) = v382;
  LODWORD(v377) = v382;
  v383 = ((v382 << 19) ^ 0xA14F4611 ^ __ROR4__(v382, 2) ^ (v382 >> 13) ^ ((v377 >> 22) - 1588640239 - ((2 * (v377 >> 22)) & 0x429E8C22))) + (v382 & v381 | v380) + v356;
  HIDWORD(v377) = v383;
  LODWORD(v377) = v383;
  v384 = v379 - 1564481375 + v378;
  v385 = (__ROR4__(v383, 2) ^ 0x2E69F7D2 ^ __ROR4__(v383, 13) ^ ((v377 >> 22) + 778696658 - ((2 * (v377 >> 22)) & 0x5CD3EFA4))) + ((v383 | v382) & v375 | v383 & v382) + v367;
  HIDWORD(v377) = v385;
  LODWORD(v377) = v385;
  v386 = ((v385 >> 2) ^ __ROR4__(v385, 13) ^ ((v385 << 30) | 0x25F0FDCE) ^ 0x6D38FED7 ^ ((v377 >> 22) - ((2 * (v377 >> 22)) & 0x91900632) + 1221067545)) + (v385 & (v383 | v382) | v383 & v382) + v374;
  HIDWORD(v377) = v386;
  LODWORD(v377) = v386;
  v387 = (__ROR4__(v386, 2) ^ 0x24E21E3B ^ __ROR4__(v386, 13) ^ ((v377 >> 22) + 618798651 - ((2 * (v377 >> 22)) & 0x49C43C76))) + (v386 & (v385 | v383) | v385 & v383) + v384;
  v388 = v384 + v382;
  HIDWORD(v377) = v384 + v382;
  LODWORD(v377) = v384 + v382;
  v389 = LODWORD(STACK[0x270]) + v357 + ((v369 - 1562204378 - ((2 * v369) & 0x45C54E4C)) ^ 0xA2E2A726 ^ (v384 + v382) & ((v374 + v375) ^ v369)) - 1474664885 + (__ROR4__(v384 + v382, 11) ^ 0x6681B4BF ^ __ROR4__(v384 + v382, 6) ^ ((v377 >> 25) + 1719776447 - ((2 * (v377 >> 25)) & 0xCD03697E)));
  v390 = v389 + v383;
  HIDWORD(v377) = v389 + v383;
  LODWORD(v377) = v389 + v383;
  v391 = v359 + v369 + ((v376 - 784649426 - ((2 * v376) & 0xA276665C)) ^ 0xD13B332E ^ (v389 + v383) & (v388 ^ v376)) - 1035236496 + (__ROR4__(v389 + v383, 11) ^ 0x1B9B62FB ^ __ROR4__(v389 + v383, 6) ^ ((v377 >> 25) + 463168251 - ((2 * (v377 >> 25)) & 0x3736C5F6)));
  v392 = v391 + v385;
  HIDWORD(v377) = v391 + v385;
  LODWORD(v377) = v391 + v385;
  v393 = STACK[0x298];
  v394 = LODWORD(STACK[0x298]) + v376 + ((v388 - 703179172 - ((2 * v388) & 0xAC2CACB8)) ^ 0xD616565C ^ (v391 + v385) & ((v389 + v383) ^ v388)) - 949202525 + (__ROR4__(v391 + v385, 6) ^ 0x3FC5B855 ^ __ROR4__(v391 + v385, 11) ^ ((v377 >> 25) + 1069922389 - ((2 * (v377 >> 25)) & 0x7F8B70AA)));
  v395 = v394 + v386;
  HIDWORD(v377) = v394 + v386;
  LODWORD(v377) = v394 + v386;
  v396 = (__ROR4__(v394 + v386, 6) ^ 0x95DCACD2 ^ __ROR4__(v394 + v386, 11) ^ ((v377 >> 25) - 1780699950 - ((2 * (v377 >> 25)) & 0x2BB959A4))) + v388;
  v397 = (v391 + v385) & (v394 + v386) | (v389 + v383) & ~(v394 + v386);
  v398 = v361 + 2 * (v396 & v397) - 778901479 + (v397 ^ 0xDF4E7097 ^ (v396 - 548507497 - ((2 * v396) & 0xBE9CE12E)));
  v399 = v398 + v387;
  HIDWORD(v377) = v398 + v387;
  LODWORD(v377) = v398 + v387;
  v400 = (v377 >> 25) + 565919158 - ((2 * (v377 >> 25)) & 0x43767B6C);
  v401 = __PAIR64__(v387, __ROR4__(v398 + v387, 11));
  v402 = STACK[0x2A8];
  v403 = LODWORD(STACK[0x2A8]) + v390 + ((v391 + v385 + 1057561160 - ((2 * (v391 + v385)) & 0x7E123490)) ^ 0x3F091A48 ^ v399 & ((v394 + v386) ^ (v391 + v385))) - 694614492 + (__ROR4__(v399, 6) ^ 0x21BB3DB6 ^ v401 ^ v400);
  LODWORD(v401) = v387;
  v404 = (__ROR4__(v387, 13) ^ 0xE3011BC7 ^ __ROR4__(v387, 2) ^ ((v401 >> 22) - 486466617 - ((2 * (v401 >> 22)) & 0xC602378E))) + (v387 & (v386 | v385) | v386 & v385) + v389;
  v405 = v403 + v404;
  HIDWORD(v401) = v403 + v404;
  LODWORD(v401) = v403 + v404;
  v406 = v363 + v392 + ((v394 + v386 - 2088490323 - ((2 * (v394 + v386)) & 0x708555A)) ^ 0x83842AAD ^ v405 & ((v398 + v387) ^ (v394 + v386))) - 200395387 + (__ROR4__(v405, 6) ^ 0x10647255 ^ __ROR4__(v405, 11) ^ ((v401 >> 25) + 275018325 - ((2 * (v401 >> 25)) & 0x20C8E4AA)));
  v407 = (__ROR4__(v404, 2) ^ 0xF3C2EB9E ^ __ROR4__(v404, 13) ^ (v404 >> 22) ^ ((v404 << 10) - 205329506 - ((v404 << 11) & 0xE785D000))) + (v404 & (v387 | v386) | v387 & v386) + v391;
  v408 = v406 + v407;
  HIDWORD(v401) = v406 + v407;
  LODWORD(v401) = v406 + v407;
  v409 = (v401 >> 25) + 1884456166 - ((2 * (v401 >> 25)) & 0xE0A509CC);
  v410 = __PAIR64__(v407, __ROR4__(v406 + v407, 6));
  v411 = v358;
  LODWORD(STACK[0x234]) = v358;
  v412 = v358 + v395 + ((v399 + 1373698782 - ((2 * v399) & 0xA3C1F5BC)) ^ 0x51E0FADE ^ v408 & ((v403 + v404) ^ v399)) + 275423344 + (__ROR4__(v408, 11) ^ 0x705284E6 ^ v410 ^ v409);
  LODWORD(v410) = v407;
  v413 = ((v407 >> 2) ^ 0xA89BD3B0 ^ __ROR4__(v407, 13) ^ (v407 << 30) ^ ((v410 >> 22) - 1466182736 - ((2 * (v410 >> 22)) & 0x5137A760))) + ((v407 | v387) & v404 | v407 & v387) + v394;
  if ((v413 & 0x80) != 0)
  {
    v414 = -128;
  }

  else
  {
    v414 = 128;
  }

  v415 = (v414 + v413) ^ 0x80;
  v416 = v412 + v415;
  v417 = (v405 + 1177282961 - ((2 * v405) & 0x8C57D322)) ^ 0x462BE991 ^ (v412 + v415) & (v408 ^ v405);
  HIDWORD(v418) = v413;
  LODWORD(v418) = v413;
  v419 = (__ROR4__(v413, 2) ^ 0x7ABC8783 ^ __ROR4__(v413, 13) ^ ((v418 >> 22) + 2059175811 - ((2 * (v418 >> 22)) & 0xF5790F06))) + ((v413 | v404) & v407 | v413 & v404) + v398;
  HIDWORD(v418) = v419;
  LODWORD(v418) = v419;
  v420 = (__ROR4__(v419, 2) ^ 0xC907D509 ^ __ROR4__(v419, 13) ^ ((v418 >> 22) - 922233591 - ((2 * (v418 >> 22)) & 0x920FAA12))) + (v419 & (v415 | v407) | v415 & v407) + v403;
  HIDWORD(v418) = v420;
  LODWORD(v418) = v420;
  v421 = (__ROR4__(v420, 2) ^ 0xDD871BE2 ^ __ROR4__(v420, 13) ^ ((v418 >> 22) - 578348062 - ((2 * (v418 >> 22)) & 0xBB0E37C4))) + (v420 & (v419 | v415) | v419 & v415) + v406;
  HIDWORD(v418) = v421;
  LODWORD(v418) = v421;
  v422 = (v418 >> 22) + 925456662 - ((2 * (v418 >> 22)) & 0x6E52B22C);
  v423 = __PAIR64__(v412 + v415, __ROR4__(v421, 13));
  v424 = v412 + (__ROR4__(v421, 2) ^ 0x37295916 ^ v423 ^ v422) + (((v421 & v419 ^ 0x765AA7BB ^ (v421 & v419 ^ v421) & v420) & ~(v420 & v419) | v420 & v419 & 0x89A55844) ^ 0x765AA7BB);
  LODWORD(v423) = v412 + v415;
  v425 = (v423 >> 25) ^ __ROR4__(v412 + v415, 6);
  v427 = __PAIR64__(v424, __ROR4__(v416, 23));
  v426 = v427 ^ 0x6628FFFC;
  LODWORD(v427) = v424;
  v428 = v364 + v399 + v417 + 430227734 + (v425 ^ __ROR4__(v426, 20) ^ 0x8FFFC662);
  v429 = v424 | v421;
  v430 = v424 & v421;
  v431 = (__ROR4__(v350, 18) ^ 0xC89FC7DF ^ __ROR4__(v350, 7) ^ ((v350 >> 3) - 929052705 - ((v350 >> 2) & 0x113F8FBE))) + v266 + v393 + (__ROR4__(v364, 17) ^ 0x25FC4749 ^ __ROR4__(v364, 19) ^ ((v364 >> 10) + 637290313 - ((v364 >> 9) & 0x788E92)));
  v432 = v428 + ((v424 | v421) & v420 | v424 & v421) + (__ROR4__(v424, 22) ^ 0xC2ADC6C1 ^ __ROR4__(v424, 13) ^ ((v427 >> 2) - 1028798783 - ((2 * (v427 >> 2)) & 0x855B8D82)));
  v433 = v428 + v419;
  HIDWORD(v427) = v433;
  LODWORD(v427) = v433;
  v434 = v360 + v405 + ((v408 - 1916724313 - ((2 * v408) & 0x1B82374E)) ^ 0x8DC11BA7 ^ v433 & (v416 ^ v408)) + 506948616 + (__ROR4__(v433, 6) ^ 0xFB2B2BE9 ^ __ROR4__(v433, 11) ^ ((v427 >> 25) - 81056791 - ((2 * (v427 >> 25)) & 0xF65657D2)));
  v435 = v434 + v420;
  HIDWORD(v427) = v434 + v420;
  LODWORD(v427) = v434 + v420;
  v436 = v408 + v431 + ((v416 + 504020273 - ((2 * v416) & 0x3C157A62)) ^ 0x1E0ABD31 ^ (v434 + v420) & (v433 ^ v416)) + (__ROR4__(v434 + v420, 6) ^ 0x149687E1 ^ ((v434 + v420) >> 11) ^ ((v434 + v420) << (v433 & v408 & 0x15) << (~(v433 & v408) & 0x14) << ((v433 & v408 & 1) == 0)) ^ ((v427 >> 25) + 345409505 - ((2 * (v427 >> 25)) & 0x292D0FC2)));
  v437 = v436 + v421;
  v438 = v436 + v421 + 659060556;
  _ZF = v438 == 0;
  HIDWORD(v427) = v438;
  LODWORD(v427) = v438;
  v439 = v362 + 883997877 + v416 + ((v433 + 1533684320 - ((2 * v433) & 0xB6D454C0)) ^ 0x5B6A2A60 ^ v438 & ((v434 + v420) ^ v433)) + (__ROR4__(v438, 11) ^ 0xFAD4D6F7 ^ __ROR4__(v438, 6) ^ ((v427 >> 25) - 86714633 - ((2 * (v427 >> 25)) & 0xF5A9ADEE)));
  v440 = v439 + v424;
  HIDWORD(v427) = v439 + v424;
  LODWORD(v427) = v439 + v424;
  v441 = ((v355 >> 3) ^ 0xCECE0F7A ^ (v355 >> 7) ^ __ROR4__(v355, 18) ^ ((v355 << 25) - 825356422 - ((v355 << 26) & 0x9FFFFFFF))) + LODWORD(STACK[0x244]) + v402 + ((v431 >> 10) ^ __ROR4__(v431, 19) ^ __ROR4__(__ROR4__(v431, 15) ^ 0xAD69C632, 2) ^ 0xAB5A718C);
  v442 = v441 + v433 + ((v435 + 1406634049 - ((2 * v435) & 0xA7AF1082)) ^ 0x53D78841 ^ (v439 + v424) & (v438 ^ v435)) + 958139571 + (__ROR4__(v439 + v424, 6) ^ 0x56B8E8ED ^ __ROR4__(v439 + v424, 11) ^ ((v427 >> 25) + 1454958829 - ((2 * (v427 >> 25)) & 0xAD71D1DA)));
  v443 = v442 + v432;
  v444 = (v439 + v424) & (v442 + v432) | v438 & ~(v442 + v432);
  v445 = __PAIR64__(v432, __ROR4__(v442 + v432, 6));
  v446 = (__ROR4__(v442 + v432, 11) ^ 0x3D32401C ^ v445 ^ ((v442 + v432) >> 25) ^ (((v442 + v432) << 7) + 1026703388 - (((v442 + v432) << 8) & 0x7A648000))) + v435;
  v447 = LODWORD(STACK[0x2F4]) + 2 * (v446 & v444) + 1322822218 + (v444 ^ 0xC36BDAB8 ^ (v446 - 1016341832 - ((2 * v446) & 0x86D7B570)));
  LODWORD(v445) = v432;
  v448 = v434 + (v432 & v429 | v430) + (__ROR4__(v432, 2) ^ 0x78866F6D ^ __ROR4__(v432, 13) ^ ((v445 >> 22) + 2022076269 - ((2 * (v445 >> 22)) & 0xF10CDEDA)));
  v449 = v447 + v448;
  HIDWORD(v445) = v447 + v448;
  LODWORD(v445) = v447 + v448;
  v450 = __ROR4__(v449, 6) ^ 0xC9A33CF ^ __ROR4__(v449, 25) ^ ((v445 >> 11) + 211432399 - ((2 * (v445 >> 11)) & 0x1934679E));
  v451 = __PAIR64__(v448, __ROR4__(v441, 19));
  v452 = (__ROR4__(v373, 18) ^ 0x437D28D ^ __ROR4__(v373, 7) ^ ((v373 >> 3) + 70767245 - ((v373 >> 2) & 0x86FA51A))) + LODWORD(STACK[0x258]) + v411 + (__ROR4__(v441, 17) ^ 0x1611D03C ^ v451 ^ ((v441 >> 10) + 370266172 - ((v441 >> 9) & 0x23A078)));
  v453 = v452 + v437 + ((v439 + v424 + 2055083848 - ((2 * (v439 + v424)) & 0xF4FC2E90)) ^ 0x7A7E1748 ^ (v447 + v448) & ((v442 + v432) ^ (v439 + v424))) - 2098904677 + v450;
  LODWORD(v451) = v448;
  v454 = (v448 & (v432 | v424) | v432 & v424) + 659060556 + (__ROR4__(v448, 2) ^ 0x450F85BF ^ (v448 >> 13) ^ (v448 << 19) ^ ((v451 >> 22) + 1158645183 - ((2 * (v451 >> 22)) & 0x8A1F0B7E))) + v436;
  v455 = 2 * (v442 + v432);
  v456 = v453 + v454;
  HIDWORD(v451) = v453 + v454;
  LODWORD(v451) = v453 + v454;
  v457 = __ROR4__(v456, 11) ^ 0x105645AE ^ __ROR4__(v456, 6) ^ ((v451 >> 25) + 274089390 - ((2 * (v451 >> 25)) & 0x20AC8B5C));
  v458 = __PAIR64__(v454, __ROR4__(STACK[0x288], 18));
  v459 = (__ROR4__(STACK[0x288], 7) ^ 0xD2A6A87C ^ v458 ^ ((LODWORD(STACK[0x288]) >> 3) - 760829828 - ((LODWORD(STACK[0x288]) >> 2) & 0x254D50F8))) + v373 + v364 + (__ROR4__(STACK[0x2F4], 17) ^ 0x43D8921C ^ __ROR4__(STACK[0x2F4], 19) ^ ((LODWORD(STACK[0x2F4]) >> 10) + 1138266652 - ((LODWORD(STACK[0x2F4]) >> 9) & 0x312438)));
  v460 = v459 + v440 + ((v442 + v432 + 1821896920 - (v455 & 0xD92FE1B0)) ^ 0x6C97F0D8 ^ (v453 + v454) & ((v447 + v448) ^ (v442 + v432))) + 1747873779 + v457;
  LODWORD(v458) = v454;
  v461 = (__ROR4__(v454, 13) ^ 0x4ACFDA4 ^ __ROR4__(v454, 2) ^ ((v458 >> 22) + 78445988 - ((2 * (v458 >> 22)) & 0x959FB48))) + (v454 & (v448 | v432) | v448 & v432) + v439;
  v462 = v460 + v461;
  HIDWORD(v458) = v460 + v461;
  LODWORD(v458) = v460 + v461;
  v463 = (v458 >> 25) - ((2 * (v458 >> 25)) & 0x552A72DE);
  HIDWORD(v458) = v460 + v461;
  LODWORD(v458) = v460 + v461;
  v464 = v458 >> 11;
  HIDWORD(v458) = v460 + v461;
  LODWORD(v458) = v460 + v461;
  v465 = (v464 - ((2 * v464) & 0xCE3F2160) + 1730121904) ^ ((v458 >> 6) - ((2 * (v458 >> 6)) & 0x58AF1878) + 743935036) ^ (v463 + 714422639);
  v466 = STACK[0x270];
  v467 = __PAIR64__(v461, __ROR4__(STACK[0x270], 7));
  v468 = (__ROR4__(v466, 18) ^ 0x53517423 ^ v467 ^ ((v466 >> 3) + 1397847075 - ((v466 >> 2) & 0x26A2E846))) + LODWORD(STACK[0x288]) + v360 + (__ROR4__(v452, 19) ^ 0x809CC70E ^ __ROR4__(v452, 17) ^ ((v452 >> 10) - 2137209074 - ((v452 >> 9) & 0x398E1C)));
  v469 = v468 + ((v449 - 1819460462 - ((2 * v449) & 0x271A7924)) ^ 0x938D3C92 ^ (v460 + v461) & ((v453 + v454) ^ v449)) + (v465 ^ (v443 + 1641883107 - (v455 & 0xC3BA4BC6))) + 2 * ((v465 ^ 0x61DD25E3) & v443);
  LODWORD(v467) = v461;
  v470 = (__ROR4__(v461, 13) ^ 0xC36F5406 ^ __ROR4__(v461, 2) ^ ((v467 >> 22) - 1016114170 - ((2 * (v467 >> 22)) & 0x86DEA80C))) + (v461 & (v454 | v448) | v454 & v448) + v442;
  HIDWORD(v467) = v470;
  LODWORD(v467) = v470;
  v471 = (__ROR4__(v470, 13) ^ 0xE96DDD88 ^ __ROR4__(v470, 2) ^ ((v467 >> 22) - 378675832 - ((2 * (v467 >> 22)) & 0xD2DBBB10))) + (v470 & (v461 | v454) | v461 & v454) + v447;
  v472 = (__ROR4__(v471, 13) ^ 0x870A7D7B ^ __ROR4__(v471, 2) ^ (v471 >> 22) ^ ((v471 << 10) - 2029355653 - ((v471 << 11) & 0xE14F800))) + (v471 & (v470 | v461) | v470 & v461) + v453;
  HIDWORD(v467) = v472;
  LODWORD(v467) = v472;
  v473 = (__ROR4__(v472, 13) ^ 0x2F7F9DE8 ^ __ROR4__(v472, 2) ^ ((v467 >> 22) + 796892648 + (~(2 * (v467 >> 22)) | 0xA100C42F) + 1)) + ((v472 | v470) & v471 | v472 & v470) + v460;
  HIDWORD(v467) = v473;
  LODWORD(v467) = v473;
  v474 = STACK[0x2A8];
  v475 = STACK[0x298];
  v477 = (__ROR4__(v475, 18) ^ 0x7F9AF552 ^ __ROR4__(v475, 7) ^ ((v475 >> 3) + 2140861778 - ((v475 >> 2) & 0x3F35EAA4))) + LODWORD(STACK[0x280]) + v362 + (__ROR4__(v468, 17) ^ 0x4AE489C1 ^ __ROR4__(v468, 19) ^ ((v468 >> 10) + 1256491457 - ((v468 >> 9) & 0x491382)));
  v479 = (__ROR4__(v474, 7) ^ 0xDCC4517C ^ __ROR4__(v474, 18) ^ ((v474 >> 3) - 591113860 - ((v474 >> 2) & 0x3988A2F8))) + LODWORD(STACK[0x278]) + LODWORD(STACK[0x2F4]) + (__ROR4__(v477, 19) ^ 0xCCE618FB ^ __ROR4__(v477, 17) ^ ((v477 >> 10) - 857335557 - ((v477 >> 9) & 0x4C31F6)));
  v469 += 1955562222;
  v480 = (__ROR4__(v473, 2) ^ 0x45A25A10 ^ __ROR4__(v473, 13) ^ ((v467 >> 22) + 1168267792 - ((2 * (v467 >> 22)) & 0x8B44B420))) + (v473 & (v472 | v471) | v472 & v471) + v469;
  v481 = v469 + v470;
  if (_ZF)
  {
    v482 = v460 + v461;
  }

  else
  {
    v482 = ~(v462 ^ v481);
  }

  HIDWORD(v483) = v481;
  LODWORD(v483) = v481;
  v476 = STACK[0x280];
  v484 = ((v476 << 14) ^ 0xE64B0023 ^ __ROR4__(v476, 7) ^ (v476 >> 18) ^ ((v476 >> 3) - 431292381 - ((v476 >> 2) & 0xC960046))) + v466 + v431 + (__ROR4__(v459, 19) ^ 0x8D499608 ^ __ROR4__(v459, 17) ^ ((v459 >> 10) - 1924557304 - ((2 * (v459 >> 10)) & 0x132C10)));
  v485 = v484 + 2024104815 + v449 + ((v456 - 2050933763 - ((2 * v456) & 0xB8277FA)) ^ 0x85C13BFD ^ (v482 ^ v456) & v481) + ((v481 << 21) ^ 0x399EFB70 ^ __ROR4__(v481, 6) ^ (v481 >> 11) ^ ((v483 >> 25) + 966720368 - ((2 * (v483 >> 25)) & 0x733DF6E0)));
  v486 = v485 + v471;
  HIDWORD(v483) = v486;
  LODWORD(v483) = v485 + v471;
  v487 = v477 + v456 + (((v462 & ~(v485 + v471) ^ 0x6578E5DB) & ~(v486 & v481) | v486 & v481 & 0x9A871A24) ^ 0x6578E5DB) + (__ROR4__(v485 + v471, 6) ^ 0x18E4792D ^ __ROR4__(v485 + v471, 11) ^ ((v483 >> 25) + 417626413 - ((2 * (v483 >> 25)) & 0x31C8F25A))) - 2067236844;
  v488 = v487 + v472;
  v489 = (v481 - 269603938 - ((2 * v481) & 0xDFDC573C)) ^ 0xEFEE2B9E ^ (v487 + v472) & ((v485 + v471) ^ v481);
  HIDWORD(v483) = v487 + v472;
  LODWORD(v483) = v487 + v472;
  v478 = STACK[0x278];
  v490 = ((v478 >> 7) ^ 0x259A3F5F ^ __ROR4__(v478, 18) ^ (v478 << 25) ^ ((v478 >> 3) + 630865759 - ((v478 >> 2) & 0xB347EBE))) + v475 + v441 + (__ROR4__(v484, 19) ^ 0x4AE3F8D4 ^ __ROR4__(v484, 17) ^ ((v484 >> 10) + 1256454356 - ((v484 >> 9) & 0x47F1A8)));
  v491 = v490 + v462 + v489 - 1933114872 + (__ROR4__(v487 + v472, 11) ^ 0x3BAB740E ^ __ROR4__(v487 + v472, 6) ^ ((v483 >> 25) + 1001092110 - ((2 * (v483 >> 25)) & 0x7756E81C)));
  v492 = (v491 ^ v473) + 2 * (v491 & v473);
  HIDWORD(v483) = v492;
  LODWORD(v483) = v492;
  v493 = (v483 >> 25) + 1435909915 - ((2 * (v483 >> 25)) & 0xAB2C7E36);
  v494 = __PAIR64__(v480, __ROR4__(v492, 6));
  v495 = v479 - 1866530822 + v481 + ((v486 + 2976760 - ((2 * v486) & 0x5AD7F0)) ^ 0x2D6BF8 ^ v492 & ((v487 + v472) ^ v486)) + (__ROR4__(v492, 11) ^ 0x55963F1B ^ v494 ^ v493);
  LODWORD(v494) = v480;
  v496 = (__ROR4__(v480, 2) ^ 0xDE0F5944 ^ __ROR4__(v480, 13) ^ ((v494 >> 22) - 569419452 - ((2 * (v494 >> 22)) & 0xBC1EB288))) + (v480 & (v473 | v472) | v473 & v472) + v485;
  v497 = (__ROR4__(v496, 2) ^ 0xD0F3BDE2 ^ (v496 << 19) ^ __ROR4__(v496, 22) ^ ((v496 >> 13) - 789332510 - ((v496 >> 12) & 0x77BC4))) + (v496 & (v480 | v473) | v480 & v473) + v487;
  HIDWORD(v494) = v497;
  LODWORD(v494) = v497;
  v498 = __ROR4__(v497, 13) ^ 0xB85C0BC5 ^ __ROR4__(v497, 2) ^ ((v494 >> 22) - 1201927227 - ((2 * (v494 >> 22)) & 0x70B8178A));
  v499 = __ROR4__(v479, 17) ^ 0xD716B40;
  LODWORD(v494) = __ROR4__(v479, 19);
  v500 = v498 + (v497 & (v496 | v480) | v496 & v480);
  v501 = v479 >> 10;
  v502 = a65 & (2 * (v479 >> 10));
  v503 = v500 + v491;
  v504 = v499 ^ v494 ^ (v501 + 225536832 - v502);
  v505 = v495 + v480;
  HIDWORD(v494) = v505;
  LODWORD(v494) = v495 + v480;
  v506 = (__ROR4__(STACK[0x294], 7) ^ 0x9D75E38 ^ __ROR4__(STACK[0x294], 18) ^ ((LODWORD(STACK[0x294]) >> 3) + 165109304 - ((LODWORD(STACK[0x294]) >> 2) & 0x13AEBC70))) + v474 + v452 + (__ROR4__(v490, 19) ^ 0xD1AD5438 ^ __ROR4__(v490, 17) ^ ((v490 >> 10) - 777169864 - ((v490 >> 9) & 0x5AA870)));
  v507 = v506 + v486 + ((v488 - 1607112844 - ((2 * v488) & 0x406ACEE8)) ^ 0xA0356774 ^ v505 & (v492 ^ v488)) - 1538233109 + (__ROR4__(v505, 6) ^ 0x7F3061D ^ __ROR4__(v505, 11) ^ ((v494 >> 25) + 133367325 - ((2 * (v494 >> 25)) & 0xFE60C3A)));
  v508 = v507 + v496;
  HIDWORD(v494) = v507 + v496;
  LODWORD(v494) = v507 + v496;
  v509 = (v505 + LODWORD(STACK[0x2EC]));
  v510 = LODWORD(STACK[0x294]) + (__ROR4__(STACK[0x234], 7) ^ 0xF8B0702 ^ __ROR4__(STACK[0x234], 18) ^ ((LODWORD(STACK[0x234]) >> 3) + 260769538 - ((LODWORD(STACK[0x234]) >> 2) & 0x1F160E04))) + v459 + v504 + v488 + ((v492 - 759246868 - ((2 * v492) & 0xA57D9FD8)) ^ 0xD2BECFEC ^ (v507 + v496) & (v505 ^ v492)) - 1090935817 + (__ROR4__(v507 + v496, 6) ^ 0xCAA65703 ^ __ROR4__(v507 + v496, 11) ^ ((v494 >> 25) - 895068413 - ((2 * (v494 >> 25)) & 0x954CAE06)));
  v511 = (v505 - 1527589706 - ((2 * v505) & 0x49E5A96C)) ^ 0xA4F2D4B6 ^ (v510 + v497) & ((v507 + v496) ^ v505);
  HIDWORD(v494) = v510 + v497;
  LODWORD(v494) = v510 + v497;
  v512 = __ROR4__(v510 + v497, 11) ^ 0xBD6893E ^ __ROR4__(v510 + v497, 6) ^ ((v494 >> 25) + 198609214 - ((2 * (v494 >> 25)) & 0x17AD127C));
  v513 = __PAIR64__(v503, __ROR4__(v506, 17));
  v514 = LODWORD(STACK[0x234]) + (__ROR4__(v364, 18) ^ 0xB9F407F8 ^ __ROR4__(v364, 7) ^ ((v364 >> 3) - 1175189512 - ((v364 >> 2) & 0x33E80FF0))) + v468 + (__ROR4__(v506, 19) ^ 0x36CAA2A ^ v513 ^ ((v506 >> 10) + 57453098 - ((2 * (v506 >> 10)) & 0x595454))) + v492 + v511 - 965641998 + v512;
  v515 = v514 + LODWORD(STACK[0x2F8]) + v503;
  LODWORD(v513) = v503;
  v516 = (__ROR4__(v503, 2) ^ 0x947C8BA8 ^ __ROR4__(v503, 13) ^ ((v513 >> 22) - 1803777112 - ((2 * (v513 >> 22)) & 0x28F91750))) + (v503 & (v497 | v496) | v497 & v496) + v495;
  HIDWORD(v513) = v516;
  LODWORD(v513) = v516;
  v517 = (__ROR4__(v516, 2) ^ 0xB20DC7EB ^ __ROR4__(v516, 13) ^ ((v513 >> 22) - 1307719701 - ((2 * (v513 >> 22)) & 0x641B8FD6))) + ((v516 | v497) & v503 | v516 & v497) + v507;
  HIDWORD(v513) = v517;
  LODWORD(v513) = v517;
  LODWORD(v513) = (__ROR4__(v517, 13) ^ 0xF3BF9D8 ^ __ROR4__(v517, 2) ^ ((v513 >> 22) + 255588824 - ((2 * (v513 >> 22)) & 0x1E77F3B0))) + (v517 & (v516 | v503) | v516 & v503) + v510;
  HIDWORD(v513) = v513;
  v518 = v514 + LODWORD(STACK[0x300]) + (v513 & (v517 | v516) | v517 & v516) + (__ROR4__(v513, 2) ^ 0x59D1EE97 ^ __ROR4__(v513, 13) ^ ((v513 >> 22) + 1506930327 - ((2 * (v513 >> 22)) & 0xB3A3DD2E)));
  v519 = (v517 + LODWORD(STACK[0x2E8]));
  v520 = (v510 + v497 + LODWORD(STACK[0x2FC])) >> 24;
  return (*(a28 + 8 * ((27 * (STACK[0x260] & 1)) ^ LODWORD(STACK[0x268]))))((v508 + LODWORD(STACK[0x25C])), (v516 + LODWORD(STACK[0x2F0])), (v513 + LODWORD(STACK[0x2E0])) >> 24, HIBYTE(v518), (v508 + LODWORD(STACK[0x25C])) >> 16, BYTE2(v518), (v508 + LODWORD(STACK[0x25C])) >> 24, ((v513 + LODWORD(STACK[0x2E0])) >> 16));
}

uint64_t sub_2AB7C@<X0>(char a1@<W0>, int a2@<W1>, char a3@<W2>, char a4@<W3>, char a5@<W4>, char a6@<W5>, char a7@<W6>, char a8@<W7>, char a9@<W8>)
{
  __asm { BTI             j }

  LODWORD(STACK[0x260]) = 0;
  *(v23 - 228) = HIBYTE(a2);
  *(v23 - 224) = HIBYTE(v11);
  *(v23 - 227) = BYTE2(a2);
  *(v23 - 229) = v19;
  *(v23 - 225) = a2;
  *(v23 - 226) = BYTE1(a2);
  *(v23 - 222) = BYTE1(v11);
  *(v23 - 219) = BYTE2(v16);
  *(v23 - 223) = BYTE2(v11);
  *(v23 - 212) = HIBYTE(v9);
  *(v23 - 221) = v11;
  *(v23 - 218) = BYTE1(v16);
  *(v23 - 214) = v20;
  *(v23 - 239) = a6;
  *(v23 - 240) = a4;
  *(v23 - 236) = a3;
  *(v23 - 238) = v13;
  *(v23 - 233) = v15;
  *(v23 - 234) = v17;
  *(v23 - 237) = v14;
  *(v23 - 231) = v10;
  *(v23 - 235) = a8;
  *(v23 - 232) = v12;
  *(v23 - 220) = v18;
  *(v23 - 217) = v16;
  *(v23 - 213) = a1;
  *(v23 - 215) = a5;
  *(v23 - 209) = v9;
  *(v23 - 216) = a7;
  LODWORD(STACK[0x2E8]) = -818353852;
  *(v23 - 210) = BYTE1(v9);
  LODWORD(STACK[0x2E0]) = -716505640;
  LODWORD(STACK[0x2F0]) = 1031859437;
  *(v23 - 211) = BYTE2(v9);
  LODWORD(STACK[0x2F8]) = -1373855528;
  LODWORD(STACK[0x300]) = 1520663644;
  LODWORD(STACK[0x2EC]) = -493821622;
  LODWORD(STACK[0x2FC]) = -1922483591;
  *(v23 - 230) = a9;
  return (*(v21 + 8 * (v22 ^ 0x3C5)))();
}

uint64_t sub_2ACB0@<X0>(char a1@<W0>, int a2@<W1>, char a3@<W2>, char a4@<W3>, char a5@<W4>, char a6@<W5>, char a7@<W6>, char a8@<W7>, char a9@<W8>)
{
  __asm { BTI             j }

  LOBYTE(STACK[0x821]) = a6 ^ 0xD6;
  LOBYTE(STACK[0x820]) = a4 ^ 0xAA;
  LOBYTE(STACK[0x826]) = v17 ^ 0xE8;
  LOBYTE(STACK[0x822]) = v13 ^ 0x74;
  LOBYTE(STACK[0x823]) = v14 ^ 0x1C;
  LOBYTE(STACK[0x825]) = a8 ^ 0xB3;
  LOBYTE(STACK[0x82B]) = v19 ^ 0x67;
  LOBYTE(STACK[0x827]) = v15 ^ 0x96;
  LOBYTE(STACK[0x824]) = a3 ^ 0xE7;
  LOBYTE(STACK[0x82A]) = a9 ^ 0xFB;
  LOBYTE(STACK[0x833]) = v11 ^ 0x1C;
  LOBYTE(STACK[0x828]) = v12 ^ 0x38;
  LOBYTE(STACK[0x829]) = v10 ^ 0x40;
  LOBYTE(STACK[0x82F]) = a2 ^ 0x66;
  LOBYTE(STACK[0x82E]) = BYTE1(a2) ^ 0xA0;
  LOBYTE(STACK[0x832]) = BYTE1(v11) ^ 0x74;
  LOBYTE(STACK[0x831]) = BYTE2(v11) ^ 0xD6;
  LOBYTE(STACK[0x837]) = v16 ^ 0x96;
  LOBYTE(STACK[0x834]) = v18 ^ 0xE7;
  LOBYTE(STACK[0x82D]) = BYTE2(a2) ^ 0xD1;
  LOBYTE(STACK[0x82C]) = HIBYTE(a2) ^ 0xBA;
  LOBYTE(STACK[0x83B]) = a1 ^ 0x67;
  LOBYTE(STACK[0x830]) = HIBYTE(v11) ^ 0xAA;
  LOBYTE(STACK[0x835]) = BYTE2(v16) ^ 0xB3;
  LOBYTE(STACK[0x839]) = a5 ^ 0x40;
  LOBYTE(STACK[0x836]) = BYTE1(v16) ^ 0xE8;
  LOBYTE(STACK[0x83A]) = v20 ^ 0xFB;
  LOBYTE(STACK[0x838]) = a7 ^ 0x38;
  LOBYTE(STACK[0x83E]) = BYTE1(v9) ^ 0xA0;
  LOBYTE(STACK[0x83C]) = HIBYTE(v9) ^ 0xBA;
  LOBYTE(STACK[0x83F]) = v9 ^ 0x66;
  LOBYTE(STACK[0x83D]) = BYTE2(v9) ^ 0xD1;
  v27 = STACK[0x320];
  return (*(v21 + 8 * (v22 - 676)))();
}

uint64_t sub_2AE30@<X0>(int a1@<W0>, int a2@<W8>)
{
  __asm { BTI             j }

  return (*(v3 + 8 * ((248 * (v2 == ((a2 - 647104609) & 0x26920CF4) + a1)) ^ a2)))();
}

uint64_t sub_2AE74()
{
  __asm { BTI             j }

  v9 = (v1 ^ 0x4AC) + 465;
  v10 = v2;
  v11 = (&STACK[0x360] + STACK[0x308]);
  STACK[0x308] += 1072;
  STACK[0x300] = v9;
  v12 = (v9 ^ 0xFFFFFFFFFFFFFD8DLL) + v0;
  v13 = (*(v10 + 8 * (v1 - 43)))(*(v3 + 8 * (v1 ^ 0x4EB)), v0 + v4 - 240 - 112, 16);
  *v11 = xmmword_7FE0;
  v11[1] = xmmword_7FF0;
  v11[2] = xmmword_8000;
  v11[3] = xmmword_8010;
  v11[4] = xmmword_8020;
  v11[5] = xmmword_8030;
  v11[6] = xmmword_8040;
  v11[7] = xmmword_8050;
  v11[8] = xmmword_8060;
  v11[9] = xmmword_8070;
  v11[10] = xmmword_8080;
  v11[11] = xmmword_8090;
  v11[12] = 0u;
  v11[13] = 0u;
  v11[14] = 0u;
  v11[15] = 0u;
  v11[16] = 0u;
  v11[17] = 0u;
  v11[18] = 0u;
  v11[19] = 0u;
  v11[20] = 0u;
  v11[21] = 0u;
  v11[22] = 0u;
  v11[23] = 0u;
  v11[24] = 0u;
  v11[25] = 0u;
  v11[26] = 0u;
  v11[27] = 0u;
  v11[28] = 0u;
  v11[29] = 0u;
  v11[30] = 0u;
  v11[31] = 0u;
  v11[32] = 0u;
  v11[33] = 0u;
  STACK[0x328] = &STACK[0x820];
  v11[34] = 0u;
  STACK[0x320] = v12;
  STACK[0x330] = &STACK[0x810];
  return (*(v10 + 8 * ((2 * (v11 == 0)) | (8 * (v11 == 0)) | v1)))(v13);
}

uint64_t sub_30280(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, unsigned int a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, int a30, unsigned int a31)
{
  __asm { BTI             j }

  STACK[0x308] = v34;
  return (*(v32 + 8 * ((38 * ((v31 ^ ((v33 ^ 0x257) - 671467165)) + ((2 * v31) & 0xAFF430D8) == -671466642)) ^ v33)))(a1, a2, a3, a4, a16, a31);
}

uint64_t sub_302E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  __asm { BTI             j }

  return (*(v5 + 8 * ((937 * ((((1 - a5) ^ a5 ^ ((a5 ^ 5) + 12) ^ ((a5 ^ 3) + 14) ^ ((((v6 ^ 0x59) + 518) ^ 0x20C) + (a5 ^ 0x4F996668))) & (177 * (v6 ^ 0x59) - 870)) == 1)) ^ v6)))();
}

uint64_t sub_30374@<X0>(unint64_t a1@<X6>, int a2@<W8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  __asm { BTI             j }

  STACK[0x320] = a1;
  STACK[0x348] = a64;
  STACK[0x338] = v65;
  STACK[0x340] = &STACK[0x810];
  return (*(v64 + 8 * (a2 ^ (232 * (a64 != 0)))))();
}

uint64_t sub_303B8@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  __asm { BTI             j }

  v69 = (a1 - 435) | 0x231;
  v70 = (a64 ^ 0x52926FDE) - 1050625 + ((2 * a64) & 0xA524DFBC) + 759;
  v71 = (((v64 ^ 0xAD7D9727) & v70) << (v69 ^ 0xF2)) & (v70 ^ 0x979D409) ^ (v64 ^ 0xAD7D9727) & v70;
  v72 = ((2 * (v70 ^ 0x43C0F411)) ^ 0xDD7AC27A) & (v70 ^ 0x43C0F411) ^ (2 * (v70 ^ 0x43C0F411)) & 0xEEBD613C;
  v73 = v72 ^ 0x22852105;
  v74 = (v72 ^ 0xCC394035) & (4 * v71) ^ v71;
  v75 = ((4 * v73) ^ 0xBAF584F4) & v73 ^ (4 * v73) & 0xEEBD613C;
  v76 = (v75 ^ 0xAAB50029) & (16 * v74) ^ v74;
  v77 = ((16 * (v75 ^ 0x44086109)) ^ 0xEBD613D0) & (v75 ^ 0x44086109) ^ (16 * (v75 ^ 0x44086109)) & 0xEEBD6130;
  v78 = v76 ^ 0xEEBD613D ^ (v77 ^ 0xEA94012D) & (v76 << 8);
  v80 = (v70 ^ (2 * ((v78 << 16) & 0x6EBD0000 ^ v78 ^ ((v78 << 16) ^ 0x613D0000) & (((v77 ^ 0x429602D) << 8) & 0x6EBD0000 ^ 0x429C0000 ^ (((v77 ^ 0x429602D) << 8) ^ 0x3D610000) & (v77 ^ 0x429602D))))) == 0xB07D5756 || ((((a64 ^ 0xDE) - 1 + ((2 * a64) & 0xBC) - 9) ^ (2 * v78)) & 0xF) != ((v69 + 76) ^ 0x439);
  return (*(v65 + 8 * ((2021 * v80) ^ v69)))();
}

uint64_t sub_342BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, int a46, unsigned int a47, int a48, int a49, int a50, int a51, int a52, int a53, int a54, int a55, int a56, int a57, int a58, int a59, int a60, int a61, int a62, int a63)
{
  __asm { BTI             j }

  LODWORD(STACK[0x2E8]) = LODWORD(STACK[0x2FC]) < 0xEF952285;
  v101 = v95 & 0xFFFFFFFE ^ 0xBE5EE06B;
  STACK[0x2D0] = v101;
  v102 = *(a45 + v101) ^ 0xE2;
  v103 = v95 & 0xFFFFFFF5 ^ 0xBE5EE06B;
  STACK[0x278] = v103;
  v104 = STACK[0x210];
  v105 = STACK[0x210] + v102;
  if (((STACK[0x210] ^ v105) & 0xFFC0000000000000) != 0)
  {
    v105 = v105 & 0xFFFFFFFFFFFFLL | 0x80000000000000;
  }

  v106 = v95;
  v107 = *v105 ^ 0x3D;
  v108 = STACK[0x208];
  v109 = STACK[0x208] + (*(a45 + v103) ^ 0xC7);
  if (((STACK[0x208] ^ v109) & 0xFFC0000000000000) != 0)
  {
    v109 = v109 & 0xFFFFFFFFFFFFLL | 0x80000000000000;
  }

  v110 = v106 & 0xFFFFFFFC ^ 0xBE5EE06B;
  STACK[0x2D8] = v110;
  v111 = *(a45 + v110);
  v112 = (*v109 ^ 0x11) << 8;
  v113 = v106 & 0xFFFFFFF1 ^ 0xBE5EE06F;
  STACK[0x2E0] = v113;
  v114 = STACK[0x220];
  v115 = STACK[0x220] + (v111 ^ 0xA3);
  if (((STACK[0x220] ^ v115) & 0xFFC0000000000000) != 0)
  {
    v115 = v115 & 0xFFFFFFFFFFFFLL | 0x80000000000000;
  }

  v116 = *(a45 + v113) ^ 0x91;
  v117 = *v115 ^ 0x84;
  v118 = v117 | (v107 << 16);
  v119 = v108 + v116;
  if (((v108 ^ (v108 + v116)) & 0xFFC0000000000000) != 0)
  {
    v119 = v119 & 0xFFFFFFFFFFFFLL | 0x80000000000000;
  }

  v120 = *v119;
  v121 = v106;
  v122 = v106 & 0xFFFFFFF7 ^ 0xBE5EE06B;
  STACK[0x2A0] = v122;
  v123 = v120 ^ 0xA7;
  v124 = v121;
  v125 = STACK[0x218];
  v126 = STACK[0x218] + (*(a45 + v122) ^ 0xF8);
  if (((STACK[0x218] ^ v126) & 0xFFC0000000000000) != 0)
  {
    v126 = v126 & 0xFFFFFFFFFFFFLL | 0x80000000000000;
  }

  v127 = v121 & 0xFFFFFFF8 ^ 0xBE5EE06F;
  STACK[0x270] = v127;
  v128 = *(a45 + v127);
  v129 = v112 | ((*v126 ^ 0xA2) << 24);
  v130 = v124 & 0xFFFFFFFB ^ 0xBE5EE06F;
  STACK[0x2C0] = v130;
  v131 = v114 + (v128 ^ 0xA);
  if (((v114 ^ v131) & 0xFFC0000000000000) != 0)
  {
    v131 = v131 & 0xFFFFFFFFFFFFLL | 0x80000000000000;
  }

  v132 = *v131;
  v133 = *(a45 + v130) ^ 0x81;
  v134 = v125 + v133;
  if (((v125 ^ (v125 + v133)) & 0xFFC0000000000000) != 0)
  {
    v134 = v134 & 0xFFFFFFFFFFFFLL | 0x80000000000000;
  }

  v135 = *v134;
  v136 = v124 ^ 0xBE5EE06B;
  STACK[0x2B0] = v136;
  v137 = v125 + (*(a45 + v136) ^ 0xBDLL);
  if (((v125 ^ v137) & 0xFFC0000000000000) != 0)
  {
    v137 = v137 & 0xFFFFFFFFFFFFLL | 0x80000000000000;
  }

  v138 = *v137 ^ 0xE5;
  v139 = v132 ^ 0x84;
  v140 = v139 | ((v135 ^ 0x71) << 24);
  v141 = v124 & 0xFFFFFFF0 ^ 0xBE5EE06F;
  STACK[0x2C8] = v141;
  v142 = *(a45 + v141) ^ 0x42;
  v143 = v114 + v142;
  if (((v114 ^ (v114 + v142)) & 0xFFC0000000000000) != 0)
  {
    v143 = v143 & 0xFFFFFFFFFFFFLL | 0x80000000000000;
  }

  v144 = v138 << 24;
  v145 = *v143 ^ 0xC5;
  v146 = v145 | (v123 << 8);
  v147 = v124 & 0xFFFFFFF6 ^ 0xBE5EE06B;
  STACK[0x280] = v147;
  v148 = v104 + (*(a45 + v147) ^ 0x76);
  if (((v104 ^ v148) & 0xFFC0000000000000) != 0)
  {
    v148 = v148 & 0xFFFFFFFFFFFFLL | 0x80000000000000;
  }

  v149 = v129 | ((*v148 ^ 0xE4) << 16);
  v150 = v124 & 0xFFFFFFF4 ^ 0xBE5EE06B;
  STACK[0x288] = v150;
  v151 = v114 + (*(a45 + v150) ^ 0x90);
  if (((v114 ^ v151) & 0xFFC0000000000000) != 0)
  {
    v151 = v151 & 0xFFFFFFFFFFFFLL | 0x80000000000000;
  }

  v152 = *v151 ^ 0xA7;
  v153 = v124 & 0xFFFFFFFA ^ 0xBE5EE06F;
  STACK[0x268] = v153;
  v154 = v104 + (*(a45 + v153) ^ 0xAELL);
  if (((v104 ^ v154) & 0xFFC0000000000000) != 0)
  {
    v154 = v154 & 0xFFFFFFFFFFFFLL | 0x80000000000000;
  }

  v155 = v149 | v152;
  v156 = (*v154 ^ 0xBC) << 16;
  v157 = v124 & 0xFFFFFFFD ^ 0xBE5EE06B;
  STACK[0x298] = v157;
  v158 = v108 + (*(a45 + v157) ^ 0x20);
  if (((v108 ^ v158) & 0xFFC0000000000000) != 0)
  {
    v158 = v158 & 0xFFFFFFFFFFFFLL | 0x80000000000000;
  }

  v159 = v144 | ((*v158 ^ 0x67) << 8) | v118;
  v160 = v124 & 0xFFFFFFF9 ^ 0xBE5EE06F;
  STACK[0x2A8] = v160;
  v161 = *(a45 + v160) ^ 0xB2;
  v162 = v108 + v161;
  if (((v108 ^ (v108 + v161)) & 0xFFC0000000000000) != 0)
  {
    v162 = v162 & 0xFFFFFFFFFFFFLL | 0x80000000000000;
  }

  v163 = *v162;
  LODWORD(STACK[0x294]) = v124;
  v164 = v124 & 0xFFFFFFF2 ^ 0xBE5EE06F;
  STACK[0x260] = v164;
  v165 = v156 | ((v163 ^ 0xF7) << 8) | v140;
  v166 = *(a45 + v164) ^ 0x88;
  v167 = v104 + v166;
  if (((v104 ^ (v104 + v166)) & 0xFFC0000000000000) != 0)
  {
    v167 = v167 & 0xFFFFFFFFFFFFLL | 0x80000000000000;
  }

  v168 = *v167 ^ 0x56;
  v169 = v124 & 0xFFFFFFF3 ^ 0xBE5EE06F;
  STACK[0x2B8] = v169;
  v170 = *(a45 + v169) ^ 0xFALL;
  v171 = v125 + v170;
  if (((v125 ^ (v125 + v170)) & 0xFFC0000000000000) != 0)
  {
    v171 = v171 & 0xFFFFFFFFFFFFLL | 0x80000000000000;
  }

  v172 = (v168 << 16) | ((*v171 ^ 0x10) << 24) | v146;
  LODWORD(STACK[0x24C]) = v172;
  LODWORD(STACK[0x258]) = v155;
  LODWORD(STACK[0x250]) = v165;
  v173 = v165 + 340239740 - 2 * (v165 & 0x1447A57D ^ v139 & 1);
  v174 = v159 & 0x378A061F ^ v117 & 9;
  v175 = a89 ^ (v155 - 1454876796 - ((2 * v155) & 0x5290AF08));
  v176 = a91 ^ 0x3860CBD1 ^ v173;
  v177 = *(a6 + 8 * (v96 - 511)) - 8;
  v178 = *(a6 + 8 * (v96 - 497)) - 12;
  v179 = *(v178 + 4 * HIBYTE(v176)) ^ 0xC4A1D6D7 ^ *(v177 + 4 * (a89 ^ (v155 - 124 - ((2 * v155) & 8))));
  v180 = *(a6 + 8 * (v96 - 513)) - 4;
  v181 = (BYTE1(v176) - 746212604 - ((v176 >> 7) & 8)) ^ *(v180 + 4 * (BYTE1(v176) ^ 0xCEu));
  v182 = a90 ^ (v172 + 1780094459 - 2 * (v172 & 0x6A1A15FF ^ v145 & 4));
  v183 = (v181 + 1521071784 - ((2 * v181) & 0xB5536D50)) ^ *(v178 + 4 * ((v182 ^ 0x4FB04A8A) >> 24));
  v184 = *(v177 + 4 * (v182 ^ 0x8Au)) ^ 0xC4A1D6D7 ^ *(v178 + 4 * HIBYTE(v175));
  v185 = ((a89 ^ (v155 + 22404 - ((2 * v155) & 0xAF08))) >> 8);
  v186 = *(v180 + 4 * (v185 ^ 0xCEu)) ^ (v185 - 746212604 - ((v175 >> 7) & 8));
  v187 = *(a6 + 8 * a49) - 4;
  v188 = (v186 - 1294120266 - ((2 * v186) & 0x65BA956C)) ^ *(v187 + 4 * ((v182 ^ 0x4FB04A8A) >> 16));
  LODWORD(STACK[0x254]) = v159;
  v189 = a50 ^ (v159 - 2 * v174 - 1215691242);
  v190 = *(v187 + 4 * BYTE2(v189)) ^ *(v180 + 4 * (((v182 ^ 0x4A8A) >> 8) ^ 0xCEu)) ^ (((v182 ^ 0x4A8A) >> 8) - 746212604 - ((v182 >> 7) & 8)) ^ (v179 - 1294120266 - ((2 * v179) & 0x65BA956C));
  v191 = (v183 - 1294120266 - ((2 * v183) & 0x65BA956C)) ^ *(v187 + 4 * BYTE2(v175));
  v192 = *(v187 + 4 * BYTE2(v176)) ^ (BYTE1(v189) - 746212604 - ((v189 >> 7) & 8)) ^ *(v180 + 4 * (BYTE1(v189) ^ 0xCEu)) ^ (v184 - 1294120266 - ((2 * v184) & 0x65BA956C));
  v193 = *(v177 + 4 * v176) ^ (v188 - 1643618177 - ((2 * v188) & 0x3C10C0FE));
  v194 = (v191 - 1643618177 - ((2 * v191) & 0x3C10C0FE)) ^ *(v177 + 4 * v189);
  v195 = a88 ^ (v190 - ((2 * v190) & 0x8A48B050) + 1160009768);
  v196 = a87 ^ (v194 - ((2 * v194) & 0x3D58838) - 2115320804);
  v197 = (v196 ^ 0x2DEFA368) + 738473974 - 2 * ((v196 ^ 0x2DEFA368) & 0x2C0437F7 ^ v196 & 1);
  v198 = a86 ^ *(v178 + 4 * HIBYTE(v189)) ^ 0xB4215CC5 ^ (v193 + 1521071784 - ((2 * v193) & 0xB5536D50));
  v199 = a84 ^ (v192 - ((2 * v192) & 0xB87E97F0) - 599831560);
  v200 = ((a84 ^ (v192 - ((2 * v192) & 0x97F0) + 19448)) >> 8);
  v201 = (v200 - 746212604 - ((v199 >> 7) & 8)) ^ *(v180 + 4 * (v200 ^ 0xCEu));
  v202 = (v201 + 1521071784 - ((2 * v201) & 0xB5536D50)) ^ *(v178 + 4 * HIBYTE(v198));
  v203 = a83 ^ v197;
  v204 = (((a83 ^ v197) >> 8) - 746212604 - ((v197 >> 7) & 8)) ^ *(v180 + 4 * (((a83 ^ v197) >> 8) ^ 0xCEu));
  v205 = (v204 - 1643618177 - ((2 * v204) & 0x3C10C0FE)) ^ *(v177 + 4 * v199);
  v206 = *(v177 + 4 * v198) ^ 0xC4A1D6D7 ^ *(v178 + 4 * HIBYTE(v203));
  v207 = (v202 - 1294120266 - ((2 * v202) & 0x65BA956C)) ^ *(v187 + 4 * BYTE2(v203));
  v208 = a85 ^ (v195 - ((2 * v195) & 0x2804614E) + 335687847);
  v209 = *(v178 + 4 * HIBYTE(v199)) ^ (BYTE1(v198) - 746212604 - ((v198 >> 7) & 8)) ^ *(v187 + 4 * BYTE2(v208)) ^ *(v180 + 4 * (BYTE1(v198) ^ 0xCEu)) ^ 0xE874FC1E;
  v210 = (v205 - 1294120266 - ((2 * v205) & 0x65BA956C)) ^ *(v187 + 4 * BYTE2(v198));
  v211 = a82 ^ (v209 - 1643618177 - ((2 * v209) & 0x3C10C0FE)) ^ 0x9983DD80 ^ *(v177 + 4 * v203);
  v212 = a81 ^ *(v178 + 4 * HIBYTE(v208)) ^ 0x255AF9F ^ (v210 + 1521071784 - ((2 * v210) & 0xB5536D50));
  v213 = a80 ^ *(v177 + 4 * v208) ^ 0xDDD9D699 ^ (v207 - 1643618177 - ((2 * v207) & 0x3C10C0FE));
  v214 = a79 ^ *(v187 + 4 * BYTE2(v199)) ^ (BYTE1(v208) - 746212604 - ((v208 >> 7) & 8)) ^ *(v180 + 4 * (BYTE1(v208) ^ 0xCEu)) ^ (v206 - 1294120266 - ((2 * v206) & 0x65BA956C));
  v215 = v214 ^ 0xB93F298A;
  v216 = (((v214 ^ 0x298A) >> 8) - 746212604 - ((v214 >> 7) & 8)) ^ *(v180 + 4 * (((v214 ^ 0x298A) >> 8) ^ 0xCEu));
  v217 = (BYTE1(v211) - 746212604 - ((v211 >> 7) & 8)) ^ *(v180 + 4 * (BYTE1(v211) ^ 0xCEu));
  v218 = (v217 - 1643618177 - ((2 * v217) & 0x3C10C0FE)) ^ *(v177 + 4 * v212);
  v219 = (BYTE1(v212) - 746212604 - ((v212 >> 7) & 8)) ^ *(v180 + 4 * (BYTE1(v212) ^ 0xCEu));
  v220 = (v219 - 1643618177 - ((2 * v219) & 0x3C10C0FE)) ^ *(v177 + 4 * ((a80 ^ *(v177 + 4 * v208)) ^ 0x99u ^ (v207 + 127 - 2 * v207)));
  v221 = (v220 - 1294120266 - ((2 * v220) & 0x65BA956C)) ^ *(v187 + 4 * BYTE2(v211));
  v222 = (v218 - 1294120266 - ((2 * v218) & 0x65BA956C)) ^ *(v187 + 4 * BYTE2(v215));
  v223 = *(v178 + 4 * HIBYTE(v211)) ^ 0xC4A1D6D7 ^ *(v177 + 4 * v215) ^ *(v180 + 4 * (BYTE1(v213) ^ 0xCEu)) ^ (BYTE1(v213) - 746212604 - ((v213 >> 7) & 8));
  v224 = v222 + 1521071784 - ((2 * v222) & 0xB5536D50);
  v225 = *(v177 + 4 * v211) ^ (v216 - 1643618177 - ((2 * v216) & 0x3C10C0FE));
  v226 = (v225 - 1294120266 - ((2 * v225) & 0x65BA956C)) ^ *(v187 + 4 * BYTE2(v213));
  v227 = a78 ^ *(v178 + 4 * HIBYTE(v215)) ^ 0x5E28ED4A ^ (v221 + 1521071784 - ((2 * v221) & 0xB5536D50));
  v228 = a77 ^ *(v178 + 4 * HIBYTE(v213)) ^ v224;
  v229 = a76 ^ *(v178 + 4 * HIBYTE(v212)) ^ (v226 + 1521071784 - ((2 * v226) & 0xB5536D50));
  v230 = a75 ^ (v223 - 1294120266 - ((2 * v223) & 0x65BA956C)) ^ 0x3F6C9CF2 ^ *(v187 + 4 * BYTE2(v212));
  v231 = *(v178 + 4 * HIBYTE(v227)) ^ *(v177 + 4 * (v228 ^ 0x7Bu)) ^ 0xC4A1D6D7;
  v232 = *(v187 + 4 * BYTE2(v227)) ^ *(v180 + 4 * (BYTE1(v230) ^ 0xCEu)) ^ BYTE1(v230) ^ 0x6158F9B2;
  v233 = (v232 + 1521071784 - ((2 * v232) & 0xB5536D50)) ^ *(v178 + 4 * ((v228 ^ 0xB2AE607B) >> 24));
  v234 = (BYTE1(v227) - 746212604 - ((v227 >> 7) & 8)) ^ *(v180 + 4 * (BYTE1(v227) ^ 0xCEu));
  v235 = *(v178 + 4 * HIBYTE(v230)) ^ 0xC4A1D6D7 ^ *(v177 + 4 * v227);
  v236 = (v234 - 1643618177 - ((2 * v234) & 0x3C10C0FE)) ^ *(v177 + 4 * v230);
  v237 = (v236 - 1294120266 - ((2 * v236) & 0x65BA956C)) ^ *(v187 + 4 * ((v228 ^ 0xB2AE607B) >> 16));
  v238 = LODWORD(STACK[0x204]) ^ *(v187 + 4 * BYTE2(v230)) ^ *(v180 + 4 * (((v229 ^ 0x49C9) >> 8) ^ 0xCEu)) ^ (((v229 ^ 0x49C9) >> 8) - 746212604 - ((v229 >> 7) & 8)) ^ (v231 - 1294120266 - ((2 * v231) & 0x65BA956C));
  v239 = v238 - 1104894121 + (~(2 * v238) | 0x83B6B153);
  v240 = *(v178 + 4 * ((v229 ^ 0xFA6849C9) >> 24)) ^ LODWORD(STACK[0x22C]) ^ (v237 + 1521071784 - ((2 * v237) & 0xB5536D50));
  v241 = a74 ^ *(v187 + 4 * ((v229 ^ 0xFA6849C9) >> 16)) ^ (((v228 ^ 0x607B) >> 8) - 746212604 - ((v228 >> 7) & 8)) ^ *(v180 + 4 * (((v228 ^ 0x607B) >> 8) ^ 0xCEu)) ^ 0xAF371CD0 ^ (v235 - 1294120266 - ((2 * v235) & 0x65BA956C));
  v242 = a72 ^ *(v177 + 4 * (v229 ^ 0xC9u)) ^ (v233 - 1643618177 - ((2 * v233) & 0x3C10C0FE));
  v243 = v242 ^ 0x32EFA98E;
  v244 = (((v242 ^ 0xA98E) >> 8) - 746212604 - ((v242 >> 7) & 8)) ^ *(v180 + 4 * (((v242 ^ 0xA98E) >> 8) ^ 0xCEu));
  v245 = (v244 + 1521071784 - ((2 * v244) & 0xB5536D50)) ^ *(v178 + 4 * HIBYTE(v241));
  v246 = a73 ^ v239;
  v247 = *(v177 + 4 * v243) ^ *(v178 + 4 * ((a73 ^ v239) >> 24)) ^ 0xC4A1D6D7 ^ ((BYTE1(v240) ^ 0xAF) - 746212604 - ((2 * ((v240 >> 8) ^ 0x820FAF)) & 8)) ^ *(v180 + 4 * (BYTE1(v240) ^ 0x61u));
  v248 = (v245 - 1643618177 - ((2 * v245) & 0x3C10C0FE)) ^ *(v177 + 4 * v246);
  v240 ^= 0x24FEAF0Bu;
  v249 = (BYTE1(v241) - 746212604 - ((v241 >> 7) & 8)) ^ *(v187 + 4 * BYTE2(v246)) ^ *(v180 + 4 * (BYTE1(v241) ^ 0xCEu)) ^ *(v177 + 4 * v240);
  v250 = (BYTE1(v246) - 746212604 - ((v246 >> 7) & 8)) ^ *(v177 + 4 * v241) ^ *(v187 + 4 * BYTE2(v243)) ^ *(v180 + 4 * (BYTE1(v246) ^ 0xCEu));
  v251 = v248 - 1294120266 - ((2 * v248) & 0x65BA956C);
  v252 = a71 ^ *(v178 + 4 * HIBYTE(v243)) ^ ((v249 ^ 0x2CD52AC9) + 1521071784 - 2 * ((v249 ^ 0x2CD52AC9) & 0x5AA9B6AA ^ v249 & 2));
  v253 = LODWORD(STACK[0x200]) ^ *(v187 + 4 * BYTE2(v241)) ^ (v247 - 1294120266 - ((2 * v247) & 0x65BA956C));
  v254 = a68 ^ *(v178 + 4 * HIBYTE(v240)) ^ ((v250 ^ 0x2CD52AC9) + 1521071784 - 2 * ((v250 ^ 0x2CD52AC9) & 0x5AA9B6BE ^ v250 & 0x16));
  v255 = v253 - ((2 * v253) & 0xDE35D592) - 283448631;
  v256 = v254 ^ 0x2C7C0B4B;
  BYTE2(v243) = BYTE2(a69) ^ BYTE2(v255);
  v257 = a70 ^ *(v187 + 4 * BYTE2(v240)) ^ 0x3DE5BF33 ^ v251;
  v258 = v252 ^ 0xBA3844DF;
  v259 = *(v177 + 4 * (v254 ^ 0x4Bu)) ^ 0xC4A1D6D7 ^ *(v178 + 4 * ((v252 ^ 0xBA3844DF) >> 24));
  v260 = *(v177 + 4 * (a69 ^ v255)) ^ *(v178 + 4 * HIBYTE(v257)) ^ 0xC4A1D6D7;
  v261 = (((v254 ^ 0xB4B) >> 8) - 746212604 - ((v254 >> 7) & 8)) ^ *(v180 + 4 * (((v254 ^ 0xB4B) >> 8) ^ 0xCEu));
  v262 = (v261 + 1521071784 - ((2 * v261) & 0xB5536D50)) ^ *(v178 + 4 * ((a69 ^ v255) >> 24));
  v263 = (v262 - 1643618177 - ((2 * v262) & 0x3C10C0FE)) ^ *(v177 + 4 * (v252 ^ 0x43u));
  v264 = (((a69 ^ v255) >> 8) - 746212604 - ((v255 >> 7) & 8)) ^ *(v180 + 4 * (((a69 ^ v255) >> 8) ^ 0xCEu));
  v265 = (v264 - 1294120266 - ((2 * v264) & 0x65BA956C)) ^ *(v187 + 4 * BYTE2(v258));
  v266 = BYTE1(v257) ^ *(v180 + 4 * (BYTE1(v257) ^ 0xCEu)) ^ (v259 - 746212604 - ((2 * v259) & 0xA70B6608));
  v267 = a95 ^ *(v177 + 4 * v257) ^ (v265 - 1643618177 - ((2 * v265) & 0x3C10C0FE));
  v268 = a94 ^ *(v187 + 4 * BYTE2(v257)) ^ (v263 - 1294120266 - ((2 * v263) & 0x65BA956C));
  v269 = a67 ^ *(v187 + 4 * BYTE2(v243)) ^ 0x3A5AB61D ^ (v266 - 1294120266 - ((2 * v266) & 0x65BA956C));
  v270 = LODWORD(STACK[0x234]) ^ *(v178 + 4 * HIBYTE(v256)) ^ (v267 + 1521071784 - ((2 * v267) & 0xB5536D50));
  v271 = a65 ^ (BYTE1(v258) - 746212604 - ((v258 >> 7) & 8)) ^ *(v187 + 4 * BYTE2(v256)) ^ *(v180 + 4 * (BYTE1(v258) ^ 0xCEu)) ^ (v260 - 1294120266 - ((2 * v260) & 0x65BA956C));
  v272 = (BYTE1(v269) - 746212604 - ((v269 >> 7) & 8)) ^ *(v180 + 4 * (BYTE1(v269) ^ 0xCEu));
  v273 = v272 + 1521071784 - ((2 * v272) & 0xB5536D50);
  v274 = v271 ^ 0xB9502B29;
  v275 = v273 ^ *(v178 + 4 * ((v271 ^ 0xB9502B29) >> 24));
  v276 = a66 ^ (v268 - ((2 * v268) & 0xF248AF42) + 2032424865);
  v277 = (v275 - 1643618177 - ((2 * v275) & 0x3C10C0FE)) ^ *(v177 + 4 * (a66 ^ (v268 - ((2 * v268) & 0x42) - 95)));
  v278 = v270 ^ 0x5DAB5147;
  v279 = (((v271 ^ 0x2B29) >> 8) - 746212604 - ((v271 >> 7) & 8)) ^ 0xC4A1D6D7 ^ *(v178 + 4 * HIBYTE(v269)) ^ *(v180 + 4 * (((v271 ^ 0x2B29) >> 8) ^ 0xCEu)) ^ *(v177 + 4 * (v270 ^ 0x47u));
  v280 = (v277 - 1294120266 - ((2 * v277) & 0x65BA956C)) ^ *(v187 + 4 * ((v270 ^ 0x5DAB5147) >> 16));
  v281 = *(v177 + 4 * v269) ^ 0xC4A1D6D7 ^ *(v178 + 4 * HIBYTE(v276)) ^ (((v270 ^ 0x5147) >> 8) - 746212604 - ((v270 >> 7) & 8)) ^ *(v180 + 4 * (((v270 ^ 0x5147) >> 8) ^ 0xCEu));
  v282 = (v279 - 1294120266 - ((2 * v279) & 0x65BA956C)) ^ *(v187 + 4 * BYTE2(v276));
  v283 = *(v177 + 4 * v274) ^ *(v187 + 4 * BYTE2(v269)) ^ 0x2CD52AC9;
  v284 = *(v180 + 4 * (BYTE1(v276) ^ 0xCEu)) ^ *(v178 + 4 * HIBYTE(v278)) ^ (BYTE1(v276) - 746212604 - ((v276 >> 7) & 8)) ^ (v283 + 1521071784 - ((2 * v283) & 0xB5536D50));
  v285 = a64 ^ (v282 - ((2 * v282) & 0xE464D6) + 7484011);
  v286 = v285 - ((2 * v285) & 0x703830C6);
  v287 = (v281 - 1294120266 - ((2 * v281) & 0x65BA956C)) ^ *(v187 + 4 * BYTE2(v274));
  v288 = a63 ^ (v287 - ((2 * v287) & 0x310FEB06) + 411563395);
  v289 = v288 - ((2 * v288) & 0xDC7F2E62);
  v290 = a62 ^ (v284 - ((2 * v284) & 0x97EB7A8E) - 873087673);
  v291 = a60 ^ (v280 - 533467851 + (~(2 * v280) | 0x3F982597));
  v292 = a61 ^ (v290 - ((2 * v290) & 0xC31D25C2) - 510749983);
  v293 = (BYTE1(v292) - 746212604 - ((v292 >> 7) & 8)) ^ *(v180 + 4 * (BYTE1(v292) ^ 0xCEu));
  v294 = v291 - ((2 * v291) & 0x58085B0C) - 1409012346;
  v295 = v294 ^ LODWORD(STACK[0x230]);
  BYTE1(v281) = BYTE1(v295) ^ 0x11;
  v296 = (v293 - 1294120266 - ((2 * v293) & 0x65BA956C)) ^ *(v187 + 4 * ((v295 ^ 0xD5F91196) >> 16));
  v297 = v289 + 1849661233;
  v298 = (v289 + 1849661233) ^ LODWORD(STACK[0x248]);
  v299 = v298 ^ 0xE80772DB;
  v300 = (v296 + 1521071784 - ((2 * v296) & 0xB5536D50)) ^ *(v178 + 4 * ((v298 ^ 0xE80772DB) >> 24));
  v301 = a59 ^ (v286 - 1206118301);
  v302 = *(v178 + 4 * ((v295 ^ 0xD5F91196) >> 24)) ^ *(v180 + 4 * (BYTE1(v301) ^ 0xCEu)) ^ *(v177 + 4 * (v298 ^ 0x47u)) ^ (BYTE1(v301) - 746212604 - ((v301 >> 7) & 8));
  v303 = *(v177 + 4 * ((v294 ^ LOBYTE(STACK[0x230])) ^ 0xAu)) ^ *(v178 + 4 * HIBYTE(v292)) ^ 0xC4A1D6D7;
  v304 = *(v178 + 4 * HIBYTE(v301)) ^ *(v177 + 4 * v292) ^ *(v180 + 4 * (BYTE1(v281) ^ 0xCEu)) ^ (BYTE1(v281) - 746212604 - ((v294 >> 7) & 8));
  v305 = a58 ^ *(v187 + 4 * BYTE2(v301)) ^ (v303 - 1294120266 - ((2 * v303) & 0x65BA956C)) ^ *(v180 + 4 * (BYTE1(v299) ^ 0xCEu)) ^ ((~(v297 >> 7) | 0xFFFFFFF7) - 746212604 + BYTE1(v299) + 1);
  v306 = a57 ^ *(v187 + 4 * BYTE2(v299)) ^ 0xF1E5B324 ^ ((v304 ^ 0xC4A1D6D7) - 1294120266 - 2 * ((v304 ^ 0xC4A1D6D7) & 0x32DD4ABE ^ v304 & 8));
  v307 = a93 ^ *(v177 + 4 * v301) ^ (v300 - 1643618177 - ((2 * v300) & 0x3C10C0FE));
  v308 = a56 ^ *(v187 + 4 * BYTE2(v292)) ^ 0x6E8C769B;
  v309 = a55 ^ (v307 - ((2 * v307) & 0x7C16F9E6) - 1106543373);
  v310 = *(v177 + 4 * (a55 ^ (v307 - ((2 * v307) & 0xE6) - 13)));
  v311 = v308 ^ ((v302 ^ 0xC4A1D6D7) - 1294120266 - 2 * ((v302 ^ 0xC4A1D6D7) & 0x32DD4ABE ^ v302 & 8));
  v312 = v310 ^ *(v180 + 4 * (BYTE1(v306) ^ 0xCEu)) ^ 0x4D8DD37B;
  v313 = (BYTE1(v309) - 746212604 - ((v309 >> 7) & 8)) ^ *(v180 + 4 * (BYTE1(v309) ^ 0xCEu));
  v314 = *(v187 + 4 * BYTE2(v311)) ^ *(v177 + 4 * v306) ^ 0x2CD52AC9;
  v315 = (v313 + 1521071784 - ((2 * v313) & 0xB5536D50)) ^ *(v178 + 4 * ((v305 ^ 0xFC1A9820) >> 24));
  v316 = (v315 - 1294120266 - ((2 * v315) & 0x65BA956C)) ^ *(v187 + 4 * BYTE2(v306));
  v317 = *(v177 + 4 * (v305 ^ 0x20u));
  LODWORD(v177) = *(v177 + 4 * v311);
  v318 = *(v187 + 4 * ((v305 ^ 0xFC1A9820) >> 16)) ^ (v312 - 1294120266 - ((2 * v312) & 0x65BA956C));
  v319 = *(v178 + 4 * HIBYTE(v306)) ^ v317 ^ (BYTE1(v311) - 746212604 - ((v311 >> 7) & 8)) ^ *(v180 + 4 * (BYTE1(v311) ^ 0xCEu));
  v320 = *(v178 + 4 * HIBYTE(v311));
  v321 = a92 ^ (v314 + 1521071784 - ((2 * v314) & 0xB5536D50)) ^ *(v180 + 4 * (((v305 ^ 0x9820) >> 8) ^ 0xCEu)) ^ *(v178 + 4 * HIBYTE(v309)) ^ (((v305 ^ 0x9820) >> 8) - 746212604 - ((v305 >> 7) & 8));
  LODWORD(v178) = v321 - ((2 * v321) & 0x373471C);
  v322 = a53 ^ v320 ^ 0xB455BE30 ^ (v318 + 1521071784 - ((2 * v318) & 0xB5536D50));
  v323 = LODWORD(STACK[0x244]) ^ v177 ^ 0x2CF66D8F ^ (v316 - 1643618177 - ((2 * v316) & 0x3C10C0FE));
  LODWORD(v187) = a52 ^ *(v187 + 4 * BYTE2(v309)) ^ ((v319 ^ 0xC4A1D6D7) - 1294120266 - 2 * ((v319 ^ 0xC4A1D6D7) & 0x32DD4ABE ^ v319 & 8));
  v324 = a54 ^ (v178 + 28943246);
  v326 = *(a6 + 8 * a47) - 4;
  LODWORD(v178) = *(v326 + 4 * (a54 ^ (v178 - 114)));
  HIDWORD(v327) = v178 ^ 0x3A9C7;
  LODWORD(v327) = v178 ^ 0x59800000;
  LODWORD(v178) = v187 ^ 0x4C669013;
  v328 = *(a6 + 8 * (LODWORD(STACK[0x300]) - 484)) - 12;
  LODWORD(v187) = *(v328 + 4 * ((v187 ^ 0x9013) >> 8));
  v329 = *(a6 + 8 * a48) - 4;
  v330 = (v187 - ((2 * v187 - 1295514446) & 0xD21EB708) + 1114856925) ^ (v327 >> 19) ^ *(v329 + 4 * BYTE2(v323));
  v331 = *(v328 + 4 * BYTE1(v322));
  v332 = *(v328 + 4 * BYTE1(v324));
  v333 = *(v328 + 4 * BYTE1(v323));
  v334 = *(v329 + 4 * BYTE2(v322));
  LODWORD(STACK[0x25C]) = *(v329 + 4 * BYTE2(v324));
  v335 = *(v329 + 4 * BYTE2(v178));
  v336 = HIBYTE(v324);
  v337 = *(a6 + 8 * (LODWORD(STACK[0x300]) - 477)) - 4;
  v338 = *(v337 + 4 * (v336 ^ 0x7F));
  v339 = HIBYTE(v323);
  v340 = *(v337 + 4 * (HIBYTE(v323) ^ 0x7F));
  v341 = BYTE3(v178);
  v342 = *(v337 + 4 * (BYTE3(v178) ^ 0x7F));
  v343 = *(v337 + 4 * (HIBYTE(v322) ^ 0x7F));
  v344 = v330 - 861846491 - ((2 * v330) & 0x9942884A);
  v345 = *(v326 + 4 * v178);
  v346 = *(v326 + 4 * (v322 ^ BYTE1(v306)));
  v347 = *(v326 + 4 * v323);
  v348 = ((HIBYTE(v322) ^ LODWORD(STACK[0x2EC]) ^ v343 ^ v344) - ((2 * (HIBYTE(v322) ^ LODWORD(STACK[0x2EC]) ^ v343 ^ v344)) & 0xB0E288FE) + 1483818111) ^ LODWORD(STACK[0x23C]);
  v349 = BYTE1(v348) ^ 0x8ELL;
  v350 = *(a6 + 8 * (LODWORD(STACK[0x300]) - 504));
  v351 = v350 + v349;
  if (((v350 ^ (v350 + v349)) & 0xFFC0000000000000) != 0)
  {
    v351 = v351 & 0xFFFFFFFFFFFFLL | 0x80000000000000;
  }

  *(a44 + STACK[0x278]) = *v351 ^ ((BYTE1(v348) ^ 0xA1) - ((v348 >> 7) & 0x1C) - 114) ^ 0x7D;
  v352 = (v332 + 637879934 - ((2 * v332 - 1295514446) & 0x9942884A)) ^ v340;
  v353 = v335 ^ LODWORD(STACK[0x2F0]) ^ (__PAIR64__(v346 ^ 0x3A9C7u, v346 ^ 0x59800000u) >> 19) ^ v339 ^ (v352 - 384869500 - ((2 * v352) & 0xD21EB708));
  v354 = (v353 - ((2 * v353) & 0xA6C1F8B0) - 748618664) ^ LODWORD(STACK[0x240]);
  v355 = *(a6 + 8 * (LODWORD(STACK[0x300]) - 506)) - 12;
  v356 = v355 + (((v353 - ((2 * v353) & 0xB0) + 88) ^ LOBYTE(STACK[0x240])) ^ 0x6ELL);
  if (((v355 ^ v356) & 0xFFC0000000000000) != 0)
  {
    v356 = v356 & 0xFFFFFFFFFFFFLL | 0x80000000000000;
  }

  *(a44 + STACK[0x270]) = *v356 ^ 4;
  v357 = v354 ^ 0x4F344CC5;
  v358 = *(a6 + 8 * a46) - 8;
  v359 = v358 + (((v354 ^ 0x4F344CC5) >> 16) ^ 0xA6);
  if (((v358 ^ v359) & 0xFFC0000000000000) != 0)
  {
    v359 = v359 & 0xFFFFFFFFFFFFLL | 0x80000000000000;
  }

  *(a44 + STACK[0x268]) = (*v359 + ~BYTE2(v357) - 78) ^ 0xB9;
  v360 = v334 ^ (v345 >> 19) ^ (((v345 << 13) ^ 0x7538E000) - 384869500 - ((2 * ((v345 << 13) ^ 0x7538E000)) & 0xD21E8000)) ^ 0xB30;
  v361 = a51 ^ LODWORD(STACK[0x228]) ^ LODWORD(STACK[0x2F4]) ^ v338 ^ (v360 - 861846491 - ((2 * v360) & 0x9942884A)) ^ (v333 + 1499726425);
  v362 = v361 ^ v336;
  v363 = v362 ^ 0x605F09CC;
  v364 = v358 + (((v362 ^ 0x605F09CCu) >> 16) ^ 0xB5);
  if (((v358 ^ v364) & 0xFFC0000000000000) != 0)
  {
    v364 = v364 & 0xFFFFFFFFFFFFLL | 0x80000000000000;
  }

  *(a44 + STACK[0x260]) = ((BYTE2(v363) ^ 0xEC) + *v364 - 78) ^ 0xF6;
  v365 = *(a6 + 8 * (LODWORD(STACK[0x300]) - 518));
  v366 = STACK[0x300];
  v367 = v365 - 12;
  v368 = v367 + (HIBYTE(v348) ^ 0x6BLL);
  if (((v367 ^ v368) & 0xFFC0000000000000) != 0)
  {
    v368 = v368 & 0xFFFFFFFFFFFFLL | 0x80000000000000;
  }

  *(a44 + STACK[0x2A0]) = *v368 ^ 0x6E;
  v369 = v358 + (BYTE2(v348) ^ 0xF1);
  if (((v358 ^ v369) & 0xFFC0000000000000) != 0)
  {
    v369 = v369 & 0xFFFFFFFFFFFFLL | 0x80000000000000;
  }

  *(a44 + STACK[0x280]) = ((BYTE2(v348) ^ 0xA8) + *v369 - 78) ^ 0x91;
  v370 = (v331 + 637879934 - ((2 * v331 - 1295514446) & 0x9942884A)) ^ v342;
  HIDWORD(v371) = v347 ^ 0x3A9C7;
  LODWORD(v371) = v347 ^ 0x59800000;
  v372 = v341 ^ LODWORD(STACK[0x2F8]) ^ LODWORD(STACK[0x25C]) ^ (v370 - 384869500 - ((2 * v370) & 0xD21EB708)) ^ (v371 >> 19);
  v373 = (v372 - ((2 * v372) & 0x6ED8506E) - 1217648585) ^ LODWORD(STACK[0x238]);
  v374 = v348 ^ 0xBELL;
  v375 = v355 + v374;
  if (((v355 ^ (v355 + v374)) & 0xFFC0000000000000) != 0)
  {
    v375 = v375 & 0xFFFFFFFFFFFFLL | 0x80000000000000;
  }

  *(a44 + STACK[0x288]) = *v375 ^ 0xEA;
  v376 = v373 ^ 0x9D26236B;
  v377 = ((v373 ^ 0x9D26236B) >> 16) ^ 0x63;
  v378 = v358 + v377;
  if (((v358 ^ (v358 + v377)) & 0xFFC0000000000000) != 0)
  {
    v378 = v378 & 0xFFFFFFFFFFFFLL | 0x80000000000000;
  }

  *(a44 + STACK[0x2D0]) = ((BYTE2(v376) ^ 0x3A) + *v378 - 78) ^ 0xDC;
  v379 = HIBYTE(v373) ^ 0x1FLL;
  v380 = v367 + v379;
  if (((v367 ^ (v367 + v379)) & 0xFFC0000000000000) != 0)
  {
    v380 = v380 & 0xFFFFFFFFFFFFLL | 0x80000000000000;
  }

  *(a44 + STACK[0x2B0]) = *v380 ^ 0x51;
  v381 = HIBYTE(v354) ^ 0xA7;
  v382 = v367 + v381;
  if (((v367 ^ (v367 + v381)) & 0xFFC0000000000000) != 0)
  {
    v382 = v382 & 0xFFFFFFFFFFFFLL | 0x80000000000000;
  }

  *(a44 + STACK[0x2C0]) = *v382 ^ 0xAB;
  v383 = v373 ^ 0x72;
  v384 = v355 + v383;
  if (((v355 ^ (v355 + v383)) & 0xFFC0000000000000) != 0)
  {
    v384 = v384 & 0xFFFFFFFFFFFFLL | 0x80000000000000;
  }

  *(a44 + STACK[0x2D8]) = *v384 ^ 0xF5;
  v385 = BYTE1(v376) ^ 0x9FLL;
  v386 = (v376 >> 8) - ((v376 >> 7) & 0x1C);
  v387 = v350 + v385;
  if (((v350 ^ (v350 + v385)) & 0xFFC0000000000000) != 0)
  {
    v387 = v387 & 0xFFFFFFFFFFFFLL | 0x80000000000000;
  }

  *(a44 + STACK[0x298]) = (v386 - 114) ^ 0x6C ^ *v387;
  v388 = BYTE1(v357) ^ 0x67;
  v389 = (v357 >> 8) - ((v357 >> 7) & 0x1C);
  v390 = v350 + v388;
  if (((v350 ^ (v350 + v388)) & 0xFFC0000000000000) != 0)
  {
    v390 = v390 & 0xFFFFFFFFFFFFLL | 0x80000000000000;
  }

  *(a44 + STACK[0x2A8]) = (v389 - 114) ^ 0x29 ^ *v390;
  v391 = v362 ^ 0x4ALL;
  v392 = v355 + v391;
  if (((v355 ^ (v355 + v391)) & 0xFFC0000000000000) != 0)
  {
    v392 = v392 & 0xFFFFFFFFFFFFLL | 0x80000000000000;
  }

  *(a44 + STACK[0x2C8]) = *v392 ^ 0xDF;
  v393 = BYTE1(v363) ^ 0x6ALL;
  v394 = v350 + v393;
  if (((v350 ^ (v350 + v393)) & 0xFFC0000000000000) != 0)
  {
    v394 = v394 & 0xFFFFFFFFFFFFLL | 0x80000000000000;
  }

  v395 = (((LODWORD(STACK[0x294]) ^ 0x7CF042A0) - 2096120480) ^ ((LODWORD(STACK[0x294]) ^ 0x79FE67B4) - 2046715828) ^ ((LODWORD(STACK[0x294]) ^ 0xBB50C57F) + 1152334465)) + 796129659;
  *(a44 + STACK[0x2E0]) = (BYTE1(v363) - ((v363 >> 7) & 0x1C) - 114) ^ 0xA3 ^ *v394;
  v396 = ((v395 ^ 0x5FA12B2) - 1961823154) ^ v395 ^ ((v395 ^ 0x709626FF) - 25378815) ^ ((v395 ^ 0x7B86C2FB) - 177462267) ^ ((v395 ^ 0x7FFFEFB6) - 250279606);
  v397 = HIBYTE(v361) ^ 0x97;
  v398 = v367 + v397;
  if (((v367 ^ (v367 + v397)) & 0xFFC0000000000000) != 0)
  {
    v398 = v398 & 0xFFFFFFFFFFFFLL | 0x80000000000000;
  }

  *(a44 + STACK[0x2B8]) = *v398 ^ 0x65;
  v399 = (((v396 ^ 0x6DAEB779) + 1562030574) ^ ((v396 ^ 0xD1C17225) - 512396110) ^ ((v396 ^ 0xCD7ADC5C) - 36775223)) - 1376517392;
  v400 = LODWORD(STACK[0x2E8]) ^ (v399 < 0xEF952285);
  v401 = v399 < LODWORD(STACK[0x2FC]);
  if (v400)
  {
    v401 = STACK[0x2E8];
  }

  return (*(a31 + 8 * ((v401 | (4 * v401)) ^ (v366 + 152))))();
}

uint64_t sub_36344(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  __asm { BTI             j }

  LODWORD(STACK[0x2F0]) = LODWORD(STACK[0x250]) ^ 0x849FBCC4;
  LODWORD(STACK[0x2F8]) = LODWORD(STACK[0x254]) ^ 0x119CF9E7;
  LODWORD(STACK[0x2EC]) = LODWORD(STACK[0x258]) ^ 0x8DBFCC73;
  LODWORD(STACK[0x2F4]) = LODWORD(STACK[0x24C]) ^ 0xA2918E5F;
  return (*(v6 + 8 * (v5 + 564)))(a1, a2, a3, a4, a5, &off_538D0);
}

uint64_t sub_363BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, unsigned int a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, int a30, unsigned int a31)
{
  __asm { BTI             j }

  return (*(v32 + 8 * (v31 - 433)))(a1, a2, a3, a4, a16, a31, STACK[0x320]);
}

uint64_t sub_363EC()
{
  __asm { BTI             j }

  return (*(v2 + 8 * ((1240 * ((v0 ^ 0x6FBBF7D5) + ((2 * v0) & 0xDF76A08A) == 1874589653)) ^ (v1 - 311))))();
}

uint64_t sub_36434(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  __asm { BTI             j }

  return (*(v72 + 8 * ((v71 + 594) ^ (50 * (a71 < 0x20)))))();
}

uint64_t sub_36468(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  __asm { BTI             j }

  STACK[0x320] = a7 + 96;
  v13 = *(v8 + 8 * (v7 - 147));
  LODWORD(STACK[0x300]) = 1265428991;
  LODWORD(STACK[0x230]) = 636785286;
  LODWORD(STACK[0x2EC]) = -450271443;
  LODWORD(STACK[0x22C]) = -758592328;
  LODWORD(STACK[0x2E8]) = 1848878484;
  LODWORD(STACK[0x228]) = 1028092233;
  return v13(1707428280, 3161602013);
}

uint64_t sub_36740(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48)
{
  __asm { BTI             j }

  return (*(v48 + 8 * ((84 * ((((LODWORD(STACK[0x2F4]) - 523) ^ ((a3 - 1707428343) < 0xFFFFFFC0)) & 1) == 0)) ^ (LODWORD(STACK[0x2F4]) + 404))))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48);
}

uint64_t sub_36790(int a1, uint64_t a2, int a3)
{
  __asm { BTI             j }

  LODWORD(STACK[0x24C]) = v3;
  return (*(v4 + 8 * ((LODWORD(STACK[0x2F4]) + 379) ^ (21 * (a3 == a1 - 1)))))();
}

uint64_t sub_367CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, int a16)
{
  __asm { BTI             j }

  v23 = *(v18 + 8 * (LODWORD(STACK[0x2F4]) - 421));
  LODWORD(STACK[0x2F0]) = v17 - 1;
  LODWORD(STACK[0x2D0]) = 128;
  LODWORD(STACK[0x2D8]) = v16;
  LODWORD(STACK[0x2E0]) = a16;
  return v23();
}

uint64_t sub_36D98(int a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, unsigned int a16)
{
  __asm { BTI             j }

  LODWORD(STACK[0x248]) = v22;
  LODWORD(STACK[0x244]) = v21;
  LODWORD(STACK[0x240]) = v18;
  LODWORD(STACK[0x23C]) = v17;
  LODWORD(STACK[0x238]) = v16;
  v27 = LODWORD(STACK[0x2F4]) - 155;
  v28 = LODWORD(STACK[0x2F4]) + 714;
  LODWORD(STACK[0x2D0]) = *(v19 + a16) ^ 1;
  LODWORD(STACK[0x2E0]) = a16 + 1;
  v29 = *(v20 + 8 * (((v27 ^ 0x173) * (a3 == a1)) ^ v28));
  LODWORD(STACK[0x2D8]) = 1707428280;
  LODWORD(STACK[0x2F0]) = -724256534;
  return v29();
}

uint64_t sub_36E30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  __asm { BTI             j }

  return (*(v22 + 8 * (v21 + 215)))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21);
}

uint64_t sub_36E6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, int a29, unsigned int a30)
{
  __asm { BTI             j }

  LODWORD(STACK[0x2F8]) = 0;
  return (*(v31 + 8 * (v30 - 76)))(a1, a2, a3, a30);
}

uint64_t sub_36E88()
{
  __asm { BTI             j }

  return (*(v1 + 8 * (v0 - 98)))();
}

uint64_t sub_36EA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  __asm { BTI             j }

  return (*(v7 + 8 * (v6 + 589)))(a1, a2, a3, a4, a5, a6, 0);
}

uint64_t sub_36EBC(uint64_t a1, uint64_t a2)
{
  __asm { BTI             j }

  return (*(v3 + 8 * (v2 - 115)))(a1, a2, 0);
}

uint64_t sub_36ED4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  __asm { BTI             j }

  return (*(v8 + 8 * (v7 + 145)))(a1, a2, a3, a4, a5, a6, a7, 0);
}

uint64_t sub_36EEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  __asm { BTI             j }

  return (*(v19 + 8 * (v18 + 478)))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_36F04()
{
  __asm { BTI             j }

  return (*(v1 + 8 * (v0 - 293)))(0);
}

uint64_t sub_36F1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __asm { BTI             j }

  LODWORD(STACK[0x2F4]) = v4;
  return (*(v5 + 8 * (v4 - 403)))(a1, a2, a3, a4, 0);
}

uint64_t sub_36F5C()
{
  __asm { BTI             j }

  return (*(v1 + 8 * (v0 - 9)))();
}

uint64_t sub_36F74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  __asm { BTI             j }

  return (*(v22 + 8 * (v21 - 47)))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21);
}

uint64_t sub_36F8C()
{
  __asm { BTI             j }

  return (*(v1 + 8 * (v0 + 151)))();
}

uint64_t sub_36FA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  __asm { BTI             j }

  return (*(v20 + 8 * (v19 + 614)))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19);
}

uint64_t sub_36FC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  __asm { BTI             j }

  return (*(v20 + 8 * (v19 + 220)))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19);
}

uint64_t sub_36FDC()
{
  __asm { BTI             j }

  return (*(v1 + 8 * (v0 + 532)))();
}

uint64_t sub_36FF4()
{
  __asm { BTI             j }

  return (*(v1 + 8 * (v0 - 271)))();
}

uint64_t sub_3700C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59)
{
  __asm { BTI             j }

  return (*(v60 + 8 * (v59 + 193)))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, a58, a59);
}

uint64_t sub_37028(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50)
{
  __asm { BTI             j }

  HIDWORD(a28) = v50;
  LODWORD(STACK[0x238]) = 0;
  return (*(v52 + 8 * (v51 - 167)))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50);
}

uint64_t sub_37058(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __asm { BTI             j }

  LODWORD(STACK[0x23C]) = 0;
  LODWORD(STACK[0x2F4]) = v4;
  return (*(v5 + 8 * (v4 - 116)))(a1, a2, a3, a4, 0);
}

uint64_t sub_37094()
{
  __asm { BTI             j }

  return (*(v0 + 8 * (v1 + 125)))();
}

uint64_t sub_370AC()
{
  __asm { BTI             j }

  return (*(v0 + 8 * (v1 - 73)))();
}

uint64_t sub_370C4()
{
  __asm { BTI             j }

  return (*(v0 + 8 * (v1 - 57)))();
}

uint64_t sub_370DC()
{
  __asm { BTI             j }

  return (*(v0 + 8 * (v1 + 371)))();
}

uint64_t sub_370F4()
{
  __asm { BTI             j }

  return (*(v0 + 8 * (v1 + 16)))();
}

uint64_t sub_3710C()
{
  __asm { BTI             j }

  return (*(v0 + 8 * (v1 - 31)))();
}

uint64_t sub_37124()
{
  __asm { BTI             j }

  return (*(v0 + 8 * (v1 + 17)))();
}

uint64_t sub_3713C()
{
  __asm { BTI             j }

  return (*(v0 + 8 * (v1 + 543)))();
}

uint64_t sub_37154(uint64_t a1)
{
  __asm { BTI             j }

  return (*(v1 + 8 * (v2 + 84)))(a1, 0);
}

uint64_t sub_37170()
{
  __asm { BTI             j }

  return (*(v0 + 8 * (v1 + 500)))();
}

uint64_t sub_37188(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __asm { BTI             j }

  return (*(v4 + 8 * (v5 - 63)))(a1, a2, a3, a4, 0);
}

uint64_t sub_371A0()
{
  __asm { BTI             j }

  LODWORD(STACK[0x240]) = 0;
  return (*(v0 + 8 * (v1 + 582)))();
}

uint64_t sub_371B8()
{
  __asm { BTI             j }

  LODWORD(STACK[0x244]) = 0;
  return (*(v0 + 8 * (v1 + 740)))();
}

uint64_t sub_371D0()
{
  __asm { BTI             j }

  LODWORD(STACK[0x248]) = 0;
  return (*(v0 + 8 * (v1 + 428)))();
}

uint64_t sub_371E8()
{
  __asm { BTI             j }

  LODWORD(STACK[0x24C]) = 0;
  return (*(v0 + 8 * (v1 + 72)))();
}

uint64_t sub_37200(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51)
{
  __asm { BTI             j }

  return (*(v51 + 8 * (v52 - 126)))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51);
}

uint64_t sub_37218(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51)
{
  __asm { BTI             j }

  return (*(v51 + 8 * (v52 + 301)))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51);
}

uint64_t sub_37230(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52)
{
  __asm { BTI             j }

  return (*(v52 + 8 * (v53 + 364)))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52);
}

uint64_t sub_37248(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52)
{
  __asm { BTI             j }

  return (*(v52 + 8 * (v53 + 727)))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52);
}

uint64_t sub_37260(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  __asm { BTI             j }

  return (*(v5 + 8 * (v6 + 654)))(a1, a2, a3, a4, a5, 0);
}

uint64_t sub_37278(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53)
{
  __asm { BTI             j }

  return (*(v53 + 8 * (v54 + 18)))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53);
}

uint64_t sub_37290(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53)
{
  __asm { BTI             j }

  return (*(v53 + 8 * (v54 - 145)))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53);
}

uint64_t sub_372A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54)
{
  __asm { BTI             j }

  LODWORD(a29) = a6;
  return (*(v54 + 8 * (v55 + 148)))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54);
}

uint64_t sub_372C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54)
{
  __asm { BTI             j }

  return (*(v54 + 8 * (v55 - 237)))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54);
}

uint64_t sub_372DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55)
{
  __asm { BTI             j }

  return (*(v55 + 8 * (v56 + 52)))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55);
}

uint64_t sub_372F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55)
{
  __asm { BTI             j }

  return (*(v55 + 8 * (v56 + 321)))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55);
}

uint64_t sub_3730C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56)
{
  __asm { BTI             j }

  return (*(v56 + 8 * (v57 + 672)))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56);
}

uint64_t sub_37324(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62)
{
  __asm { BTI             j }

  return (*(v62 + 8 * (v63 - 188)))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, a58, a59, a60, a61, a62);
}

uint64_t sub_37344(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  __asm { BTI             j }

  return (*(v5 + 8 * (v6 + 568)))(a1, a2, a3, a4, a5, 0);
}

uint64_t sub_3735C()
{
  __asm { BTI             j }

  return (*(v0 + 8 * (v1 + 496)))();
}

uint64_t sub_37374(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57)
{
  __asm { BTI             j }

  return (*(v57 + 8 * (v58 + 204)))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57);
}

uint64_t sub_373DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __asm { BTI             j }

  return (*(v4 + 8 * (LODWORD(STACK[0x2F4]) - 410)))(a1, a2, a3, a4, 0);
}

uint64_t sub_3744C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, int a28, unsigned int a29, uint64_t a30, unsigned int a31, uint64_t a32, int a33, unsigned int a34)
{
  __asm { BTI             j }

  LODWORD(STACK[0x2F0]) = a34 ^ 0xC6;
  LODWORD(STACK[0x220]) = BYTE2(a34) ^ 0xC1;
  LODWORD(STACK[0x2F4]) = v34 + 391;
  LODWORD(STACK[0x234]) = (a34 >> ((v34 - 121) ^ 0x13)) ^ 0x46;
  v40 = LODWORD(STACK[0x2F8]) ^ 0xFFFFFFA0;
  v41 = LODWORD(STACK[0x2D8]);
  v44 = STACK[0x2D8];
  v45 = STACK[0x2E0];
  v42 = LODWORD(STACK[0x2D0]);
  return (*(v35 + 8 * v34))(a1, a31, a3, a4, BYTE1(a34) ^ 0xB0u, a29);
}

uint64_t sub_37504(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, int a28, unsigned int a29, uint64_t a30, unsigned int a31)
{
  __asm { BTI             j }

  LODWORD(STACK[0x2F0]) = v32;
  LODWORD(STACK[0x220]) = v34;
  LODWORD(STACK[0x234]) = v31;
  v39 = LODWORD(STACK[0x2F8]) ^ 0xFFFFFFA0;
  v40 = LODWORD(STACK[0x2D8]);
  v43 = STACK[0x2D8];
  v44 = STACK[0x2E0];
  v41 = LODWORD(STACK[0x2D0]);
  return (*(v33 + 8 * (LODWORD(STACK[0x2F4]) - 391)))(a1, a31, a3, a4, a5, a29);
}

uint64_t sub_3756C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58)
{
  __asm { BTI             j }

  LODWORD(STACK[0x2F8]) = v59;
  return (*(v58 + 8 * (LODWORD(STACK[0x2F4]) + 464)))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, a58);
}

uint64_t sub_49248@<X0>(int a1@<W0>, __int16 a2@<W1>, int a3@<W7>, int a4@<W8>, uint64_t a5, _BYTE *a6)
{
  __asm { BTI             j }

  a6[1] = v9 ^ 0xBE;
  a6[4] = HIBYTE(a4) ^ 0xB3;
  a6[2] = HIBYTE(a2) ^ 0x30;
  a6[6] = ((v10 ^ 0xC2) + 93) ^ BYTE1(a1);
  v17 = STACK[0x228];
  v18 = HIBYTE(LODWORD(STACK[0x228]));
  *a6 = v8 ^ 1;
  a6[3] = a2 ^ 0x5B;
  v19 = STACK[0x2EC];
  a6[12] = HIBYTE(LODWORD(STACK[0x2EC])) ^ 0xA2;
  a6[7] = a1 ^ 0x2D;
  a6[8] = v18 ^ 0xFE;
  a6[10] = BYTE1(v17) ^ 0x22;
  a6[20] = HIBYTE(v6) ^ 0xB3;
  a6[9] = BYTE2(v17) ^ 0xFA;
  a6[5] = BYTE2(a1) ^ 0x2C;
  a6[11] = v17 ^ 0x74;
  a6[13] = BYTE2(v19) ^ 0xAB;
  a6[14] = BYTE1(v19) ^ 0x26;
  a6[16] = v7 ^ 1;
  a6[17] = BYTE2(v11) ^ 0xBE;
  a6[19] = v11 ^ 0x5B;
  v20 = STACK[0x300];
  a6[24] = HIBYTE(LODWORD(STACK[0x300])) ^ 0xFE;
  a6[15] = v19 ^ 0x85;
  a6[22] = BYTE1(a3) ^ 0x17;
  a6[23] = a3 ^ 0x2D;
  a6[18] = BYTE1(v11) ^ 0x30;
  v21 = STACK[0x2E8];
  LOBYTE(v18) = LODWORD(STACK[0x2E8]) ^ 0x85;
  a6[28] = HIBYTE(LODWORD(STACK[0x2E8])) ^ 0xA2;
  a6[26] = BYTE1(v20) ^ 0x22;
  a6[29] = BYTE2(v21) ^ 0xAB;
  a6[21] = BYTE2(a3) ^ 0x2C;
  a6[30] = BYTE1(v21) ^ 0x26;
  a6[27] = v20 ^ 0x74;
  a6[31] = v18;
  a6[25] = BYTE2(v20) ^ 0xFA;
  LODWORD(STACK[0x300]) = 1625455248;
  LODWORD(STACK[0x230]) = 387137163;
  LODWORD(STACK[0x2EC]) = 426872139;
  LODWORD(STACK[0x228]) = 1290795790;
  LODWORD(STACK[0x22C]) = 974818951;
  LODWORD(STACK[0x2E8]) = -148844586;
  return (*(v12 + 8 * v10))(1707428280, 710541609);
}

uint64_t sub_49430@<X0>(int a1@<W0>, __int16 a2@<W1>, int a3@<W7>, int a4@<W8>)
{
  __asm { BTI             j }

  LOBYTE(STACK[0x7F2]) = HIBYTE(a2) ^ 5;
  LOBYTE(STACK[0x7F3]) = a2 ^ 0xF3;
  v15 = STACK[0x228];
  LOBYTE(STACK[0x7FB]) = LODWORD(STACK[0x228]) ^ 0x81;
  LOBYTE(STACK[0x7F5]) = BYTE2(a1) ^ 0x51;
  LOBYTE(STACK[0x7F4]) = HIBYTE(a4);
  v16 = STACK[0x2EC];
  v17 = HIBYTE(LODWORD(STACK[0x2EC])) ^ 0x8A;
  LOBYTE(STACK[0x7F0]) = v7;
  LOBYTE(STACK[0x7F7]) = a1 ^ 0x3E;
  LOBYTE(STACK[0x7FC]) = v17;
  LOBYTE(STACK[0x7F1]) = v8 ^ 0x16;
  LOBYTE(STACK[0x7F9]) = BYTE2(v15) ^ 0x79;
  LOBYTE(STACK[0x7FD]) = BYTE2(v16) ^ 0xB3;
  LOBYTE(STACK[0x805]) = BYTE2(a3) ^ 0x51;
  LOBYTE(STACK[0x7FE]) = BYTE1(v16) ^ 0x6D;
  LOBYTE(STACK[0x7FF]) = v16 ^ 0x2B;
  v18 = STACK[0x300];
  v19 = STACK[0x2E8];
  LOBYTE(STACK[0x80B]) = LODWORD(STACK[0x300]) ^ (v6 - 3) ^ 0x8A;
  LOBYTE(STACK[0x7F6]) = BYTE1(a1) ^ 0xD1;
  LOBYTE(STACK[0x800]) = v5;
  LOBYTE(STACK[0x7F8]) = HIBYTE(v15) ^ 0x98;
  LOBYTE(STACK[0x7FA]) = BYTE1(v15) ^ 0x2C;
  LOBYTE(STACK[0x803]) = v9 ^ 0xF3;
  LOBYTE(STACK[0x802]) = BYTE1(v9) ^ 5;
  LOBYTE(STACK[0x807]) = a3 ^ 0x3E;
  LOBYTE(STACK[0x80F]) = v19 ^ 0x2B;
  LOBYTE(STACK[0x806]) = BYTE1(a3) ^ 0xD1;
  LOBYTE(STACK[0x801]) = BYTE2(v9) ^ 0x16;
  LOBYTE(STACK[0x808]) = HIBYTE(v18) ^ 0x98;
  LOBYTE(STACK[0x809]) = BYTE2(v18) ^ 0x79;
  LOBYTE(STACK[0x80A]) = BYTE1(v18) ^ 0x2C;
  LOBYTE(STACK[0x80D]) = (v6 - 3) ^ BYTE2(v19) ^ 0xB8;
  LOBYTE(STACK[0x804]) = HIBYTE(v4);
  LOBYTE(STACK[0x80C]) = HIBYTE(v19) ^ 0x8A;
  LOBYTE(STACK[0x80E]) = BYTE1(v19) ^ 0x6D;
  return (*(v10 + 8 * (v6 ^ 0x6A2)))();
}

uint64_t sub_495A0@<X0>(int a1@<W8>)
{
  __asm { BTI             j }

  return (*(v1 + 8 * (a1 - 427)))(3384970265, 4243205029, 840172180, 4225142411, 891856830, 545, 575, 4294967185);
}

uint64_t sub_4962C@<X0>(int a1@<W0>, int a2@<W1>, int a3@<W2>, int a4@<W3>, int a5@<W4>, int a6@<W5>, int a7@<W6>, char a8@<W7>, int a9@<W8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  __asm { BTI             j }

  v48 = (((a9 + v43) & v34) - 77) & v32;
  v49 = *(*(v42 + 8 * (a9 ^ v36)) + v48 - 8) ^ *(v35 + v32) ^ *(v48 + *(v42 + 8 * (a9 ^ v37)) + 2) ^ (-5 * v48) ^ *(*(&off_538D0 + a9 - 483) + v48 + 1);
  v50 = (v32 + v33) & 0xF;
  return (*(a32 + 8 * ((((((v49 ^ v38) + a1) ^ ((v49 ^ a2) + a3) ^ ((v49 ^ a4) + a5)) - (*(a14 + v32 + v33) ^ (v50 * a8) ^ *(*(&off_538D0 + a9 - 479) + v50) ^ *(*(&off_538D0 + (a9 ^ a6)) + v50) ^ *(*(&off_538D0 + (a9 ^ a7)) + v50 + 3)) + v39 == v40) * v41) ^ (a9 + 3))))();
}

uint64_t sub_49758()
{
  __asm { BTI             j }

  return (*(v1 + 8 * ((60 * (((v0 == 31) ^ (v2 - 81)) & 1)) ^ v2)))();
}

void sub_49790()
{
  __asm { BTI             j }

  *(v1 + 8) = v0;
  v7 = *(v2 - 96);
}

uint64_t sub_498C8(uint64_t a1)
{
  v2 = *(a1 + 8) + 1421288831 * (a1 ^ 0x9CB0EAC8);
  v3 = *a1;
  v5 = v2 - 1733818607 * (&v5 ^ 0x29E6E08E) - 281503857;
  v6 = v3;
  result = (*(*(&off_538D0 + (v2 & 0xA15)) + v2 - 1660390606))(&v5);
  *(a1 + 16) = (8 * v7) ^ 0x5049EDD5DD5A3404;
  return result;
}

char *sub_499B8(char *result, char *a2, unint64_t a3)
{
  if (((a2 ^ result) & 7) == 0)
  {
    v5 = -result & 7;
    if ((-result & 7u) <= 3)
    {
      if ((-result & 7u) <= 1)
      {
        if (!v5)
        {
LABEL_27:
          v13 = a3 >= v5;
          v14 = a3 - v5;
          if (!v13)
          {
            v14 = 0;
          }

          if (v14 >= 8)
          {
            v15 = ((v14 >> 3) + 7) >> 3;
            v16 = (v14 >> 3) & 7;
            if (v16 > 3)
            {
              if (((v14 >> 3) & 7) <= 5)
              {
                if (v16 == 4)
                {
                  goto LABEL_58;
                }

                goto LABEL_57;
              }

              if (v16 == 6)
              {
                goto LABEL_56;
              }

              goto LABEL_55;
            }

            if (((v14 >> 3) & 7) > 1)
            {
              if (v16 == 2)
              {
                goto LABEL_60;
              }

              goto LABEL_59;
            }

            if (!v16)
            {
              goto LABEL_54;
            }

            while (1)
            {
              v32 = *result;
              result += 8;
              *a2 = v32;
              a2 += 8;
              if (!--v15)
              {
                break;
              }

LABEL_54:
              v25 = *result;
              result += 8;
              *a2 = v25;
              a2 += 8;
LABEL_55:
              v26 = *result;
              result += 8;
              *a2 = v26;
              a2 += 8;
LABEL_56:
              v27 = *result;
              result += 8;
              *a2 = v27;
              a2 += 8;
LABEL_57:
              v28 = *result;
              result += 8;
              *a2 = v28;
              a2 += 8;
LABEL_58:
              v29 = *result;
              result += 8;
              *a2 = v29;
              a2 += 8;
LABEL_59:
              v30 = *result;
              result += 8;
              *a2 = v30;
              a2 += 8;
LABEL_60:
              v31 = *result;
              result += 8;
              *a2 = v31;
              a2 += 8;
            }
          }

          v33 = v14 & 7;
          if (v33 <= 3)
          {
            if (v33 <= 1)
            {
              if (!v33)
              {
                return result;
              }

LABEL_78:
              *a2 = *result;
              return result;
            }

            if (v33 == 2)
            {
LABEL_77:
              v39 = *result++;
              *a2++ = v39;
              goto LABEL_78;
            }

LABEL_76:
            v38 = *result++;
            *a2++ = v38;
            goto LABEL_77;
          }

          if (v33 > 5)
          {
            if (v33 != 6)
            {
              v34 = *result++;
              *a2++ = v34;
            }

            v35 = *result++;
            *a2++ = v35;
          }

          else if (v33 == 4)
          {
            goto LABEL_75;
          }

          v36 = *result++;
          *a2++ = v36;
LABEL_75:
          v37 = *result++;
          *a2++ = v37;
          goto LABEL_76;
        }

LABEL_26:
        v12 = *result++;
        *a2++ = v12;
        goto LABEL_27;
      }

      if (v5 == 2)
      {
LABEL_25:
        v11 = *result++;
        *a2++ = v11;
        goto LABEL_26;
      }

LABEL_24:
      v10 = *result++;
      *a2++ = v10;
      goto LABEL_25;
    }

    if ((-result & 7u) > 5)
    {
      if (v5 != 6)
      {
        v6 = *result++;
        *a2++ = v6;
      }

      v7 = *result++;
      *a2++ = v7;
    }

    else if (v5 == 4)
    {
      goto LABEL_23;
    }

    v8 = *result++;
    *a2++ = v8;
LABEL_23:
    v9 = *result++;
    *a2++ = v9;
    goto LABEL_24;
  }

  if ((a3 + 7) >= 8)
  {
    v3 = (a3 + 7) >> 3;
    v4 = a3 & 7;
    if (v4 > 3)
    {
      if ((a3 & 7) <= 5)
      {
        if (v4 == 4)
        {
          goto LABEL_49;
        }

        goto LABEL_48;
      }

      if (v4 == 6)
      {
        goto LABEL_47;
      }

      goto LABEL_46;
    }

    if ((a3 & 7) > 1)
    {
      if (v4 == 2)
      {
        goto LABEL_51;
      }

      goto LABEL_50;
    }

    if ((a3 & 7) == 0)
    {
      goto LABEL_45;
    }

    while (1)
    {
      v24 = *result++;
      *a2++ = v24;
      if (!--v3)
      {
        break;
      }

LABEL_45:
      v17 = *result++;
      *a2++ = v17;
LABEL_46:
      v18 = *result++;
      *a2++ = v18;
LABEL_47:
      v19 = *result++;
      *a2++ = v19;
LABEL_48:
      v20 = *result++;
      *a2++ = v20;
LABEL_49:
      v21 = *result++;
      *a2++ = v21;
LABEL_50:
      v22 = *result++;
      *a2++ = v22;
LABEL_51:
      v23 = *result++;
      *a2++ = v23;
    }
  }

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