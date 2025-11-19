OSMetaClass *AppleGCHIDEventDummyService::MetaClass::MetaClass(OSMetaClass *this)
{
  result = OSMetaClass::OSMetaClass(this, "AppleGCHIDEventDummyService", &IOHIDEventService::gMetaClass, 0xD0u);
  result->__vftable = off_C7A8;
  return result;
}

void AppleGCHIDEventDummyService::MetaClass::~MetaClass(OSMetaClass *this)
{
  OSMetaClass::~OSMetaClass(this);
}

{
  OSMetaClass::~OSMetaClass(this);
}

void AppleGCHIDEventDummyService::~AppleGCHIDEventDummyService(IOHIDEventService *this)
{
  IOHIDEventService::~IOHIDEventService(this);
}

{
  IOHIDEventService::~IOHIDEventService(this);
}

{
  IOHIDEventService::~IOHIDEventService(this);

  _OSObject_typed_operator_delete(&AppleGCHIDEventDummyService_ktv, this, 208);
}

IOHIDEventService *AppleGCHIDEventDummyService::MetaClass::alloc(AppleGCHIDEventDummyService::MetaClass *this)
{
  v1 = OSObject_typed_operator_new();
  IOHIDEventService::IOHIDEventService(v1, &AppleGCHIDEventDummyService::gMetaClass)->__vftable = off_C0B8;
  OSMetaClass::instanceConstructed(&AppleGCHIDEventDummyService::gMetaClass);
  return v1;
}

uint64_t AppleGCHIDEventDummyService::didTerminate(AppleGCHIDEventDummyService *this, IOService *a2, uint64_t a3, BOOL *a4)
{
  v8 = *(this + 25);
  if (v8)
  {
    (*(*v8 + 712))(v8, this, 0);
  }

  *(this + 25) = 0;

  return (didTerminate)(this, a2, a3, a4);
}

uint64_t AppleGCHIDEventDummyService::setProperty(AppleGCHIDEventDummyService *this, const OSSymbol *a2, OSObject *a3)
{
  if (!a2 || (v6 = (a2->getCStringNoCopy)(a2)) == 0 || (result = strcmp("IOCFPlugInTypes", v6), result))
  {

    return (setProperty)(this, a2, a3);
  }

  return result;
}

OSMetaClass *_GLOBAL__sub_I_AppleGCHIDEventDummyService_cpp()
{
  result = OSMetaClass::OSMetaClass(&AppleGCHIDEventDummyService::gMetaClass, "AppleGCHIDEventDummyService", &IOHIDEventService::gMetaClass, 0xD0u);
  result->__vftable = off_C7A8;
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

AppleGCHIDEventDummyService *AppleGCHIDEventDummyService::probe(AppleGCHIDEventDummyService *this, IOService *a2, int *a3)
{
  v5 = Log(void)::log;
  if (!Log(void)::log)
  {
    v5 = os_log_create("com.apple.GameController", "Kernel");
    Log(void)::log = v5;
  }

  _os_log_internal(&dword_0, v5, OS_LOG_TYPE_DEBUG, "AppleGCHIDEventDummyService::probe()");
  v6 = OSMetaClassBase::safeMetaCast(a2, IOHIDInterface::metaClass);
  if (!v6)
  {
    return 0;
  }

  v7 = (v6->__vftable[8].serialize)(v6);
  v8 = OSMetaClassBase::safeMetaCast(v7, IOHIDDevice::metaClass);
  if (!v8)
  {
    return 0;
  }

  v9 = (v8->__vftable[3].release)(v8, "GameControllerSupportedHIDDevice");
  if (!v9)
  {
    return 0;
  }

  v10 = v9;
  v11 = OSMetaClassBase::safeMetaCast(v9, OSBoolean::metaClass);
  if (v11 && (v11->__vftable[1].release_0)(v11, *kOSBooleanTrue))
  {
    v12 = Log(void)::log;
    if (!Log(void)::log)
    {
      v12 = os_log_create("com.apple.GameController", "Kernel");
      Log(void)::log = v12;
    }

    _os_log_internal(&dword_0, v12, OS_LOG_TYPE_DEBUG, "AppleGCHIDEventDummyService::probe() matched!");
  }

  else
  {
    this = 0;
  }

  (v10->release_0)(v10);
  return this;
}

OSMetaClassBase *AppleGCHIDEventDummyService::handleStart(AppleGCHIDEventDummyService *this, IOService *anObject)
{
  result = OSMetaClassBase::safeMetaCast(anObject, IOHIDInterface::metaClass);
  *(this + 25) = result;
  if (result)
  {
    v5 = kOSBooleanTrue;
    (setProperty_1)(this, "GamepadHIDServiceSupport", *kOSBooleanTrue);
    (setProperty_1)(this, "HIDServiceSupport", *v5);
    v6 = *(**(this + 25) + 1344);

    return v6();
  }

  return result;
}