OSMetaClass *AppleDeviceManagementHIDEventService::MetaClass::MetaClass(OSMetaClass *this)
{
  result = OSMetaClass::OSMetaClass(this, "AppleDeviceManagementHIDEventService", &IOHIDEventService::gMetaClass, 0x190u);
  result->__vftable = off_14A08;
  return result;
}

{
  result = OSMetaClass::OSMetaClass(this, "AppleDeviceManagementHIDEventService", &IOHIDEventService::gMetaClass, 0x190u);
  result->__vftable = off_14A08;
  return result;
}

void AppleDeviceManagementHIDEventService::MetaClass::~MetaClass(OSMetaClass *this)
{
  OSMetaClass::~OSMetaClass(this);
}

{
  OSMetaClass::~OSMetaClass(this);
}

void AppleDeviceManagementHIDEventService::AppleDeviceManagementHIDEventService(AppleDeviceManagementHIDEventService *this, const OSMetaClass *a2)
{
  v2 = IOHIDEventService::IOHIDEventService(this, a2);
  v2->__vftable = &off_14258;
  v2[1].OSObject = 0u;
  *&v2[1].IOService::IORegistryEntry::reserved = 0u;
  *&v2[1].fPropertyTable = 0u;
  *&v2[1].__provider = 0u;
  v2[1].__timeBusy = 0;
  *&v2[1].__accumBusy = 0u;
  *&v2[1].initialized = 0;
  *&v2[1]._numInterruptSources = 0;
  *&v2[1]._keyboardNub = 0u;
  v2[1]._consumerNub = 0;
  v2[1]._reserved = 0;
}

{
  AppleDeviceManagementHIDEventService::AppleDeviceManagementHIDEventService(this, a2);
}

void AppleDeviceManagementHIDEventService::~AppleDeviceManagementHIDEventService(IOHIDEventService *this)
{
  this->__vftable = &off_14258;
  reserved = this[1]._reserved;
  if (reserved)
  {
    (reserved->provider->reserved)(reserved);
  }

  this[1]._reserved = 0;
  consumerNub = this[1]._consumerNub;
  if (consumerNub)
  {
    (*(*consumerNub + 40))(consumerNub);
  }

  this[1]._consumerNub = 0;
  pointingNub = this[1]._pointingNub;
  if (pointingNub)
  {
    (*(*pointingNub + 40))(pointingNub);
  }

  this[1]._pointingNub = 0;
  keyboardNub = this[1]._keyboardNub;
  if (keyboardNub)
  {
    (*(*keyboardNub + 40))(keyboardNub);
  }

  this[1]._keyboardNub = 0;
  v6 = *&this[1]._numInterruptSources;
  if (v6)
  {
    (*(*v6 + 40))(v6);
  }

  *&this[1]._numInterruptSources = 0;
  v7 = *&this[1].initialized;
  if (v7)
  {
    (*(*v7 + 40))(v7);
  }

  *&this[1].initialized = 0;
  pwrMgt = this[1].pwrMgt;
  if (pwrMgt)
  {
    (*(*pwrMgt + 40))(pwrMgt);
  }

  this[1].pwrMgt = 0;
  accumBusy = this[1].__accumBusy;
  if (accumBusy)
  {
    (*(*accumBusy + 40))(accumBusy);
  }

  this[1].__accumBusy = 0;
  timeBusy = this[1].__timeBusy;
  if (timeBusy)
  {
    (*(*timeBusy + 40))(timeBusy);
  }

  this[1].__timeBusy = 0;
  v11 = *&this[1].__providerGeneration;
  if (v11)
  {
    (*(*v11 + 40))(v11);
  }

  *&this[1].__providerGeneration = 0;
  provider = this[1].__provider;
  if (provider)
  {
    (provider->release_0)(provider);
  }

  this[1].__provider = 0;
  v13 = this[1].IOService::reserved;
  if (v13)
  {
    (*(v13->authorizationID + 40))(v13);
  }

  this[1].IOService::reserved = 0;
  fPropertyTable = this[1].fPropertyTable;
  if (fPropertyTable)
  {
    (fPropertyTable->release_0)(fPropertyTable);
  }

  this[1].fPropertyTable = 0;
  fRegistryTable = this[1].fRegistryTable;
  if (fRegistryTable)
  {
    (fRegistryTable->release_0)(fRegistryTable);
  }

  this[1].fRegistryTable = 0;
  v16 = this[1].IOService::IORegistryEntry::reserved;
  if (v16)
  {
    (*(*v16 + 40))(v16);
  }

  this[1].IOService::IORegistryEntry::reserved = 0;
  v17 = *&this[1].retainCount;
  if (v17)
  {
    (*(*v17 + 40))(v17);
  }

  *&this[1].retainCount = 0;
  v18 = this[1].__vftable;
  if (v18)
  {
    (*(v18->~IOHIDEventService + 5))(v18);
  }

  this[1].__vftable = 0;

  IOHIDEventService::~IOHIDEventService(this);
}

{
  this->__vftable = &off_14258;
  reserved = this[1]._reserved;
  if (reserved)
  {
    (reserved->provider->reserved)(reserved);
  }

  this[1]._reserved = 0;
  consumerNub = this[1]._consumerNub;
  if (consumerNub)
  {
    (*(*consumerNub + 40))(consumerNub);
  }

  this[1]._consumerNub = 0;
  pointingNub = this[1]._pointingNub;
  if (pointingNub)
  {
    (*(*pointingNub + 40))(pointingNub);
  }

  this[1]._pointingNub = 0;
  keyboardNub = this[1]._keyboardNub;
  if (keyboardNub)
  {
    (*(*keyboardNub + 40))(keyboardNub);
  }

  this[1]._keyboardNub = 0;
  v6 = *&this[1]._numInterruptSources;
  if (v6)
  {
    (*(*v6 + 40))(v6);
  }

  *&this[1]._numInterruptSources = 0;
  v7 = *&this[1].initialized;
  if (v7)
  {
    (*(*v7 + 40))(v7);
  }

  *&this[1].initialized = 0;
  pwrMgt = this[1].pwrMgt;
  if (pwrMgt)
  {
    (*(*pwrMgt + 40))(pwrMgt);
  }

  this[1].pwrMgt = 0;
  accumBusy = this[1].__accumBusy;
  if (accumBusy)
  {
    (*(*accumBusy + 40))(accumBusy);
  }

  this[1].__accumBusy = 0;
  timeBusy = this[1].__timeBusy;
  if (timeBusy)
  {
    (*(*timeBusy + 40))(timeBusy);
  }

  this[1].__timeBusy = 0;
  v11 = *&this[1].__providerGeneration;
  if (v11)
  {
    (*(*v11 + 40))(v11);
  }

  *&this[1].__providerGeneration = 0;
  provider = this[1].__provider;
  if (provider)
  {
    (provider->release_0)(provider);
  }

  this[1].__provider = 0;
  v13 = this[1].IOService::reserved;
  if (v13)
  {
    (*(v13->authorizationID + 40))(v13);
  }

  this[1].IOService::reserved = 0;
  fPropertyTable = this[1].fPropertyTable;
  if (fPropertyTable)
  {
    (fPropertyTable->release_0)(fPropertyTable);
  }

  this[1].fPropertyTable = 0;
  fRegistryTable = this[1].fRegistryTable;
  if (fRegistryTable)
  {
    (fRegistryTable->release_0)(fRegistryTable);
  }

  this[1].fRegistryTable = 0;
  v16 = this[1].IOService::IORegistryEntry::reserved;
  if (v16)
  {
    (*(*v16 + 40))(v16);
  }

  this[1].IOService::IORegistryEntry::reserved = 0;
  v17 = *&this[1].retainCount;
  if (v17)
  {
    (*(*v17 + 40))(v17);
  }

  *&this[1].retainCount = 0;
  v18 = this[1].__vftable;
  if (v18)
  {
    (*(v18->~IOHIDEventService + 5))(v18);
  }

  this[1].__vftable = 0;

  IOHIDEventService::~IOHIDEventService(this);
}

{
  AppleDeviceManagementHIDEventService::~AppleDeviceManagementHIDEventService(this);

  _OSObject_typed_operator_delete(&AppleDeviceManagementHIDEventService_ktv, this, 400);
}

void AppleDeviceManagementHIDEventService::MetaClass::alloc(AppleDeviceManagementHIDEventService::MetaClass *this)
{
  v1 = OSObject_typed_operator_new();

  AppleDeviceManagementHIDEventService::AppleDeviceManagementHIDEventService(v1);
}

void AppleDeviceManagementHIDEventService::AppleDeviceManagementHIDEventService(AppleDeviceManagementHIDEventService *this)
{
  AppleDeviceManagementHIDEventService::AppleDeviceManagementHIDEventService(this);
}

{
  v1 = IOHIDEventService::IOHIDEventService(this, &AppleDeviceManagementHIDEventService::gMetaClass);
  v1->__vftable = &off_14258;
  v1[1].OSObject = 0u;
  *&v1[1].IOService::IORegistryEntry::reserved = 0u;
  *&v1[1].fPropertyTable = 0u;
  *&v1[1].__provider = 0u;
  v1[1].__timeBusy = 0;
  *&v1[1].__accumBusy = 0u;
  *&v1[1].initialized = 0;
  *&v1[1]._numInterruptSources = 0;
  *&v1[1]._keyboardNub = 0u;
  v1[1]._consumerNub = 0;
  v1[1]._reserved = 0;
  OSMetaClass::instanceConstructed(&AppleDeviceManagementHIDEventService::gMetaClass);
}

uint64_t AppleDeviceManagementHIDEventService::init(AppleDeviceManagementHIDEventService *this, OSDictionary *a2)
{
  if (result)
  {
    v4 = IOBufferMemoryDescriptor::withCapacity(0x1000uLL, 3u, 0);
    v5 = *(this + 35);
    if (v5)
    {
      (*(*v5 + 40))(v5);
    }

    *(this + 35) = v4;
    if (v4)
    {
      (v4->prepare)(v4, 0);
      *(this + 376) = 0;
      *(this + 384) = 0;
      *(this + 377) = -1;
      *(this + 378) = -1;
      *(this + 95) = 0;
      *(this + 34) = 0;
      *(this + 33) = 0;
      *(this + 45) = thread_call_allocate(AppleDeviceManagementHIDEventService::resumeFromSleepThreadEnter, this);
      *(this + 156) = 0;
      *(this + 164) = 0;
      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void AppleDeviceManagementHIDEventService::resumeFromSleepThreadEnter(const OSMetaClassBase *this, OSObject *a2)
{
  v2 = OSMetaClassBase::safeMetaCast(this, &AppleDeviceManagementHIDEventService::gMetaClass);
  if (v2)
  {
    v3 = v2;
    v4 = v2[40].__vftable;
    if (v4)
    {
      v5 = v2->__vftable[18].~OSMetaClassBase_0;
      if (!v5)
      {
        v8.ptr = AppleDeviceManagementHIDEventService::_resumeFromSleepGated;
        v8.adj = 0;
        v6 = OSMetaClassBase::_ptmf2ptf(v2, v8);
        if (v6)
        {
          v5 = v6;
        }

        else
        {
          v5 = 0;
        }
      }

      (*(v4->~OSMetaClassBase + 32))(v4, v5, v3, 0, 0, 0, 0);
    }

    v7 = v3[49].__vftable;
    if (v7)
    {
      (*(v7->~OSMetaClassBase + 5))(v7);
    }

    v3[49].__vftable = 0;
  }

  else
  {
    _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[HID] [%s] [Error] %s::%s Failed to cast target to AppleDeviceManagementHIDEventService\n", "ATC", "AppleDeviceManagementHIDEventService", "resumeFromSleepThreadEnter");
  }
}

uint64_t AppleDeviceManagementHIDEventService::free(AppleDeviceManagementHIDEventService *this)
{
  v2 = *(this + 45);
  if (v2)
  {
    thread_call_free(v2);
    *(this + 45) = 0;
  }

  return (free)(this);
}

uint64_t AppleDeviceManagementHIDEventService::start(IOService *this, IOService *a2)
{
  if (v3)
  {
    getPathComponent = this->__vftable[1].getPathComponent;
    if (!getPathComponent)
    {
      v11.ptr = AppleDeviceManagementHIDEventService::systemPowerChangeHandler;
      v11.adj = 0;
      v5 = OSMetaClassBase::_ptmf2ptf(this, v11);
      if (v5)
      {
        getPathComponent = v5;
      }

      else
      {
        getPathComponent = 0;
      }
    }

    v6 = registerPrioritySleepWakeInterest(getPathComponent, this, 0);
    timeBusy = this[2].__timeBusy;
    this[2].__timeBusy = v6;
    if (v6)
    {
      (v6->retain)(v6);
    }

    if (timeBusy)
    {
      (*(*timeBusy + 40))(timeBusy);
    }

    PMRootDomain = IOService::getPMRootDomain();
    this[2].pwrMgt = PMRootDomain;
    if (PMRootDomain)
    {
      IOService::registerInterestedDriver(PMRootDomain, this);
    }

    if (this[2].reserved)
    {
      (this->__vftable[1].init_1)(this);
    }
  }

  RegistryEntryID = IORegistryEntry::getRegistryEntryID(this);
  _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[HID] [%s] %s::%s [0x%llX] Successfully started\n", "ATC", "AppleDeviceManagementHIDEventService", "start", RegistryEntryID);
  return v3;
}

uint64_t AppleDeviceManagementHIDEventService::stop(IOService *this, IOService *a2)
{
  RegistryEntryID = IORegistryEntry::getRegistryEntryID(this);
  _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[HID] [%s] %s::%s [0x%llX] Entered\n", "ATC", "AppleDeviceManagementHIDEventService", "stop", RegistryEntryID);
  reserved = this[2].IORegistryEntry::reserved;
  if (reserved)
  {
    (*(*reserved + 312))(reserved);
    provider = this[2].__provider;
    if (provider)
    {
      (provider->init_0)(provider, this[2].IORegistryEntry::reserved);
    }
  }

  fRegistryTable = this[2].fRegistryTable;
  if (fRegistryTable)
  {
    (fRegistryTable->getObject_1)(fRegistryTable);
    v8 = this[2].__provider;
    if (v8)
    {
      (v8->init_0)(v8, this[2].fRegistryTable);
    }
  }

  fPropertyTable = this[2].fPropertyTable;
  if (fPropertyTable)
  {
    (fPropertyTable->getObject_1)(fPropertyTable);
    v10 = this[2].__provider;
    if (v10)
    {
      (v10->init_0)(v10, this[2].fPropertyTable);
    }
  }

  timeBusy = this[2].__timeBusy;
  if (timeBusy)
  {
    (*(*timeBusy + 120))(timeBusy);
    v12 = this[2].__timeBusy;
    if (v12)
    {
      (*(*v12 + 40))(v12);
    }

    this[2].__timeBusy = 0;
  }

  pwrMgt = this[2].pwrMgt;
  if (pwrMgt)
  {
    IOService::deRegisterInterestedDriver(pwrMgt, this);
    this[2].pwrMgt = 0;
  }

  return (stop)(this, a2);
}

uint64_t AppleDeviceManagementHIDEventService::didTerminate(AppleDeviceManagementHIDEventService *this, IOService *a2, uint64_t a3, BOOL *a4)
{
  v8 = *(this + 43);
  if (v8)
  {
    (*(*v8 + 712))(v8, this, 0);
  }

  return (didTerminate)(this, a2, a3, a4);
}

uint64_t AppleDeviceManagementHIDEventService::handleStart(AppleDeviceManagementHIDEventService *this, IOService *a2)
{
  if (result)
  {
    v5 = (*(*this + 888))(this);
    v6 = *(this + 40);
    *(this + 40) = v5;
    if (v5)
    {
      (*(*v5 + 32))(v5);
    }

    if (v6)
    {
      (*(*v6 + 40))(v6);
    }

    if (!*(this + 40))
    {
      _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[HID] [%s] [Error] %s::%s failed to get work loop\n", "ATC", "AppleDeviceManagementHIDEventService", "handleStart");
      return 0;
    }

    v7 = *(*this + 1888);
    if (!v7)
    {
      v57.ptr = AppleDeviceManagementHIDEventService::handleDeviceInitDone;
      v57.adj = 0;
      v8 = OSMetaClassBase::_ptmf2ptf(this, v57);
      if (v8)
      {
        v7 = v8;
      }

      else
      {
        v7 = 0;
      }
    }

    v9 = IOTimerEventSource::timerEventSource(this, v7);
    v10 = *(this + 38);
    if (v10)
    {
      (*(*v10 + 40))(v10);
    }

    *(this + 38) = v9;
    if (v9)
    {
      (*(**(this + 40) + 160))(*(this + 40), v9);
    }

    v11 = OSMetaClassBase::safeMetaCast(a2, IOHIDInterface::metaClass);
    v12 = *(this + 43);
    *(this + 43) = v11;
    if (v11)
    {
      (v11->retain)(v11);
    }

    if (v12)
    {
      (*(*v12 + 40))(v12);
    }

    v13 = *(this + 43);
    if (!v13)
    {
      return 0;
    }

    v14 = *(*this + 1896);
    if (!v14)
    {
      v58.ptr = AppleDeviceManagementHIDEventService::handleInterruptReport;
      v58.adj = 0;
      v15 = OSMetaClassBase::_ptmf2ptf(this, v58);
      if (v15)
      {
        v14 = v15;
      }

      else
      {
        v14 = 0;
      }
    }

    result = (*(*v13 + 1344))(v13, this, 0, v14, 0);
    if (result)
    {
      v16 = this;
      while (1)
      {
        v17 = (*(*v16 + 376))(v16, gIOServicePlane);
        if (!v17)
        {
          break;
        }

        v16 = v17;
        v18 = (*(*v17 + 56))(v17);
        ClassName = OSMetaClass::getClassName(v18);
        v20 = strlen("AppleUSBVHCIPort");
        v21 = strncmp(ClassName, "AppleUSBVHCIPort", v20);
        if (!v21)
        {
          goto LABEL_32;
        }
      }

      v22 = (*(*this + 1360))(this);
      LOBYTE(v21) = (*(*v22 + 184))(v22, "USB");
LABEL_32:
      *(this + 312) = v21;
      v23 = *(*(*this + 1360))(this);
      *(this + 313) = (*(v23 + 184))();
      v24 = (*(*this + 328))(this, "Built-In");
      v25 = OSBoolean::metaClass;
      v26 = OSMetaClassBase::safeMetaCast(v24, OSBoolean::metaClass);
      v27 = v26;
      if (v24)
      {
        v28 = v26 == 0;
      }

      else
      {
        v28 = 0;
      }

      if (v28)
      {
        (v24->release_0)(v24);
      }

      v29 = (*(*this + 328))(this, "CurrentBatteryPercentNotificationType");
      v56 = v29;
      v30 = OSDynamicPtrCast<OSString,OSObject>(&v56);
      if (v29)
      {
        (v29->release_0)(v29);
      }

      if (v30)
      {
        libkern::intrusive_shared_ptr<OSString,intrusive_osobject_retainer>::reset(this + 25, v30);
      }

      v31 = kOSBooleanFalse;
      if (v27 == *kOSBooleanFalse)
      {
        v32 = (*(*this + 328))(this, "ConnectionNotificationType");
        v56 = v32;
        v33 = OSDynamicPtrCast<OSString,OSObject>(&v56);
        if (v30)
        {
          (v30->release_0)(v30);
        }

        if (v32)
        {
          (v32->release_0)(v32);
        }

        if (v33)
        {
          libkern::intrusive_shared_ptr<OSString,intrusive_osobject_retainer>::reset(this + 27, v33);
        }

        else
        {
          _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[HID] [%s] [Error] %s::%s Property %s not found\n", "ATC", "AppleDeviceManagementHIDEventService", "handleStart", "ConnectionNotificationType");
        }

        v34 = (*(*this + 328))(this, "PoweredOffNotificationType");
        v56 = v34;
        v30 = OSDynamicPtrCast<OSString,OSObject>(&v56);
        if (v33)
        {
          (v33->release_0)(v33);
        }

        if (v34)
        {
          (v34->release_0)(v34);
        }

        if (v30)
        {
          libkern::intrusive_shared_ptr<OSString,intrusive_osobject_retainer>::reset(this + 29, v30);
        }

        else
        {
          _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[HID] [%s] [Error] %s::%s Property %s not found\n", "ATC", "AppleDeviceManagementHIDEventService", "handleStart", "PoweredOffNotificationType");
        }

        if (*(this + 313))
        {
          v35 = (*(*this + 328))(this, "BatteryLowNotificationType");
          v56 = v35;
          v36 = OSDynamicPtrCast<OSString,OSObject>(&v56);
          if (v30)
          {
            (v30->release_0)(v30);
          }

          if (v35)
          {
            (v35->release_0)(v35);
          }

          if (v36)
          {
            libkern::intrusive_shared_ptr<OSString,intrusive_osobject_retainer>::reset(this + 26, v36);
          }

          else
          {
            _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[HID] [%s] [Error] %s::%s Property %s not found\n", "ATC", "AppleDeviceManagementHIDEventService", "handleStart", "BatteryLowNotificationType");
          }

          v37 = (*(*this + 328))(this, "LowBatteryNotificationPercentage");
          v56 = v37;
          v38 = OSDynamicPtrCast<OSNumber,OSObject>(&v56);
          if (v37)
          {
            (v37->release_0)(v37);
          }

          if (v38)
          {
            *(this + 384) = (v38->__vftable[1].serialize)(v38);
          }

          else
          {
            _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[HID] [%s] [Error] %s::%s Property %s not found\n", "ATC", "AppleDeviceManagementHIDEventService", "handleStart", "LowBatteryNotificationPercentage");
          }

          v39 = (*(*this + 328))(this, "DisconnectionNotificationType");
          v56 = v39;
          v40 = OSDynamicPtrCast<OSString,OSObject>(&v56);
          if (v36)
          {
            (v36->release_0)(v36);
          }

          if (v39)
          {
            (v39->release_0)(v39);
          }

          if (v40)
          {
            libkern::intrusive_shared_ptr<OSString,intrusive_osobject_retainer>::reset(this + 28, v40);
          }

          else
          {
            _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[HID] [%s] [Error] %s::%s Property %s not found\n", "ATC", "AppleDeviceManagementHIDEventService", "handleStart", "DisconnectionNotificationType");
          }

          v41 = (*(*this + 328))(this, "HostTransportSwitchNotificationType");
          v56 = v41;
          v42 = OSDynamicPtrCast<OSString,OSObject>(&v56);
          if (v40)
          {
            (v40->release_0)(v40);
          }

          if (v41)
          {
            (v41->release_0)(v41);
          }

          if (v42)
          {
            libkern::intrusive_shared_ptr<OSString,intrusive_osobject_retainer>::reset(this + 30, v42);
          }

          else
          {
            _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[HID] [%s] [Error] %s::%s Property %s not found\n", "ATC", "AppleDeviceManagementHIDEventService", "handleStart", "HostTransportSwitchNotificationType");
          }

          v43 = (*(*this + 328))(this, "BatteryLowPowerDisconnectionNotificationType");
          v56 = v43;
          v30 = OSDynamicPtrCast<OSString,OSObject>(&v56);
          if (v42)
          {
            (v42->release_0)(v42);
          }

          if (v43)
          {
            (v43->release_0)(v43);
          }

          if (v30)
          {
            libkern::intrusive_shared_ptr<OSString,intrusive_osobject_retainer>::reset(this + 31, v30);
          }

          else
          {
            _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[HID] [%s] [Error] %s::%s Property %s not found\n", "ATC", "AppleDeviceManagementHIDEventService", "handleStart", "BatteryLowPowerDisconnectionNotificationType");
          }

          if (v38)
          {
            (v38->release_0)(v38);
          }
        }
      }

      (*(*this + 1792))(this);
      (*(*this + 1808))(this);
      if (v27 == *v31)
      {
        v44 = (*(*this + 328))(this, "BluetoothDevice");
        v45 = OSMetaClassBase::safeMetaCast(v44, v25);
        v46 = v45;
        if (v44 && !v45)
        {
          (v44->release_0)(v44);
        }

        v47 = kOSBooleanTrue;
        if (v46 == *kOSBooleanTrue)
        {
          (*(*this + 1784))(this);
        }

        v48 = (*(*this + 328))(this, "HasBattery");
        v49 = OSMetaClassBase::safeMetaCast(v48, v25);
        v50 = v49;
        if (v48 && !v49)
        {
          (v48->release_0)(v48);
        }

        if (v50 == *v47)
        {
          (*(*this + 1752))(this);
          v51 = (*(*this + 328))(this, "SupportsExtendedBatteryState");
          v52 = OSMetaClassBase::safeMetaCast(v51, v25);
          v53 = v52;
          if (v51 && !v52)
          {
            (v51->release_0)(v51);
          }

          if (v53 == *v47)
          {
            (*(*this + 1760))(this);
          }

          if (v53)
          {
            (v53->release_0)(v53);
          }
        }

        if (v50)
        {
          (v50->release_0)(v50);
        }

        if (v46)
        {
          (v46->release_0)(v46);
        }
      }

      (*(*this + 1888))(this);
      (*(*this + 1856))(this);
      v54 = (*(*this + 328))(this, "LogPowerStateBeforeSleep");
      v55 = OSMetaClassBase::safeMetaCast(v54, v25);
      if (v55)
      {
        *(this + 328) = v55 == *kOSBooleanTrue;
        (v55->release_0)(v55);
        if (!v30)
        {
LABEL_117:
          if (v27)
          {
            (v27->release_0)(v27);
          }

          return 1;
        }
      }

      else
      {
        if (v54)
        {
          (v54->release_0)(v54);
        }

        *(this + 328) = *kOSBooleanTrue == 0;
        if (!v30)
        {
          goto LABEL_117;
        }
      }

      (v30->release_0)(v30);
      goto LABEL_117;
    }
  }

  return result;
}

OSMetaClassBase *OSDynamicPtrCast<OSString,OSObject>(const OSMetaClassBase **a1)
{
  v1 = OSMetaClassBase::safeMetaCast(*a1, OSString::metaClass);
  v2 = v1;
  if (v1)
  {
    (v1->retain)(v1);
  }

  return v2;
}

OSMetaClassBase *OSDynamicPtrCast<OSNumber,OSObject>(const OSMetaClassBase **a1)
{
  v1 = OSMetaClassBase::safeMetaCast(*a1, OSNumber::metaClass);
  v2 = v1;
  if (v1)
  {
    (v1->retain)(v1);
  }

  return v2;
}

void AppleDeviceManagementHIDEventService::handleInterruptReport(IOHIDEventService *this, unint64_t a2, IOMemoryDescriptor *a3, IOHIDReportType a4, int a5, void *a6)
{
  if (!IOHIDEventService::readyForReports(this) || IOService::isInactive(this) || !a3 || !this[1].__timeBusy || !(a3->getLength)(a3))
  {
    return;
  }

  v9 = (a3->getLength)(a3);
  if (v9 > (*(*this[1].__timeBusy + 320))())
  {
    _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[HID] [%s] [Error] %s::%s Input report length (%llu bytes) > capacity. Dropping report.\n", "ATC", "AppleDeviceManagementHIDEventService", "handleInterruptReport", v9);
    return;
  }

  v10 = (*(*this[1].__timeBusy + 328))(this[1].__timeBusy);
  v11 = v9 - 1;
  (a3->readBytes)(a3, 1, v10, v11);
  if (a5 > 154)
  {
    if (a5 == 155)
    {
      isEqualTo = this->__vftable[1].isEqualTo;
      v14 = this;
      v15 = v10;
      v16 = v11;
    }

    else
    {
      if (a5 != 224)
      {
        goto LABEL_20;
      }

      isEqualTo = this->__vftable[1].free;
      v14 = this;
      v15 = v10;
      v16 = v11;
    }

    isEqualTo(v14, v15, v16);
    return;
  }

  if (a5 != 96)
  {
    if (a5 == 144)
    {
      getMetaClass = this->__vftable[1].getMetaClass;

      (getMetaClass)(this, v10, v11, 0);
      return;
    }

LABEL_20:
    _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[HID] [%s] %s::%s Ignoring interrupt report id = 0x%08x, length = %llu\n", "ATC", "AppleDeviceManagementHIDEventService", "handleInterruptReport", a5, v11);
    return;
  }

  if (v11 == 1 && *v10 == 2)
  {
    v17 = *&this[1].initialized;
    if (v17)
    {
      v18 = *(*v17 + 248);

      v18();
    }
  }
}

void AppleDeviceManagementHIDEventService::getBatteryState(AppleDeviceManagementHIDEventService *this)
{
  memset(v7, 0, sizeof(v7));
  v2 = 5;
  v6 = 512;
  do
  {
    v3 = (*(*this + 1904))(this, 144, v7, &v6, 0);
    v4 = v2--;
    if (v3)
    {
      v5 = v4 == 0;
    }

    else
    {
      v5 = 1;
    }
  }

  while (!v5);
  if (v3)
  {
    _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[HID] [%s] [Error] %s::%s Could not get battery status (reportID = 0x%02x, Return Value = 0x%08x)\n", "ATC", "AppleDeviceManagementHIDEventService", "getBatteryState", 144, v3);
  }

  else
  {
    (*(*this + 1768))(this, v7, v6, 0);
  }
}

void AppleDeviceManagementHIDEventService::getBatteryStateExtended(AppleDeviceManagementHIDEventService *this)
{
  memset(v7, 0, sizeof(v7));
  v2 = 5;
  v6 = 512;
  do
  {
    v3 = (*(*this + 1904))(this, 155, v7, &v6, 0);
    v4 = v2--;
    if (v3)
    {
      v5 = v4 == 0;
    }

    else
    {
      v5 = 1;
    }
  }

  while (!v5);
  if (v3)
  {
    _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[HID] [%s] [Error] %s::%s Could not get battery status (reportID = 0x%02x, Return Value = 0x%08x)\n", "ATC", "AppleDeviceManagementHIDEventService", "getBatteryStateExtended", 155, v3);
  }

  else
  {
    (*(*this + 1776))(this, v7, v6);
  }
}

void AppleDeviceManagementHIDEventService::processBatteryState(AppleDeviceManagementHIDEventService *this, unint64_t a2, unint64_t a3)
{
  if (a3 > 1)
  {
    if (HIDWORD(a3))
    {
      AppleDeviceManagementHIDEventService::processBatteryState();
    }

    v3 = a2 + a3;
    if (((a2 ^ (a2 + a3)) & 0xFFC0000000000000) != 0)
    {
      v3 = v3 & 0xFFFFFFFFFFFFLL | 0xC8A2000000000000;
    }

    v4 = v3 >= a2;
    v5 = v3 - a2;
    if (!v4 || HIDWORD(v5))
    {
      AppleDeviceManagementHIDEventService::processBatteryState();
    }

    if (!v5)
    {
      AppleDeviceManagementHIDEventService::processBatteryState();
    }

    if (v5 == 1)
    {
      AppleDeviceManagementHIDEventService::processBatteryState();
    }

    if (((a2 == -1) << 63) >> 63 != (a2 == -1))
    {
      AppleDeviceManagementHIDEventService::processBatteryState();
    }

    v7 = *a2;
    v8 = *(a2 + 1);
    (*(*this + 224))(this, "BatteryStatusFlags", v7, 8);
    (*(*this + 224))(this, "BatteryPercent", v8, 8);
    *(this + 376) = v7;
    *(this + 377) = v8;
  }

  else
  {
    _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[HID] [%s] [Error] %s::%s Report ID 0x%02X payload has invalid size %llu\n", "ATC", "AppleDeviceManagementHIDEventService", "processBatteryState", 144, a3);
  }
}

void AppleDeviceManagementHIDEventService::processBatteryStateExtended(AppleDeviceManagementHIDEventService *this, unint64_t a2, unint64_t a3)
{
  if (a3 > 0x1A)
  {
    if (HIDWORD(a3))
    {
      AppleDeviceManagementHIDEventService::processBatteryState();
    }

    v4 = a2 + a3;
    if (((a2 ^ (a2 + a3)) & 0xFFC0000000000000) != 0)
    {
      v4 = v4 & 0xFFFFFFFFFFFFLL | 0xC8A2000000000000;
    }

    v5 = v4 - a2;
    if (v4 < a2 || HIDWORD(v5))
    {
      AppleDeviceManagementHIDEventService::processBatteryState();
    }

    if (v5 <= 2)
    {
      AppleDeviceManagementHIDEventService::processBatteryState();
    }

    if (((a2 >= 0xFFFFFFFFFFFFFFFELL) << 63) >> 63 != a2 >= 0xFFFFFFFFFFFFFFFELL)
    {
      AppleDeviceManagementHIDEventService::processBatteryState();
    }

    v7 = OSNumber::withNumber(*(a2 + 2), 8u);
    if (v5 == 3)
    {
      AppleDeviceManagementHIDEventService::processBatteryState();
    }

    if (((a2 >= 0xFFFFFFFFFFFFFFFDLL) << 63) >> 63 != a2 >= 0xFFFFFFFFFFFFFFFDLL)
    {
      AppleDeviceManagementHIDEventService::processBatteryState();
    }

    v8 = v7;
    v9 = OSNumber::withNumber(*(a2 + 3), 8u);
    if (v5 <= 4)
    {
      AppleDeviceManagementHIDEventService::processBatteryState();
    }

    if (((a2 >= 0xFFFFFFFFFFFFFFFCLL) << 63) >> 63 != a2 >= 0xFFFFFFFFFFFFFFFCLL)
    {
      AppleDeviceManagementHIDEventService::processBatteryState();
    }

    v10 = v9;
    v11 = OSNumber::withNumber(*(a2 + 4), 8u);
    if (v5 == 5)
    {
      AppleDeviceManagementHIDEventService::processBatteryState();
    }

    if (((a2 >= 0xFFFFFFFFFFFFFFFBLL) << 63) >> 63 != a2 >= 0xFFFFFFFFFFFFFFFBLL)
    {
      AppleDeviceManagementHIDEventService::processBatteryState();
    }

    v12 = v11;
    v13 = OSNumber::withNumber(*(a2 + 5), 8u);
    v14 = OSNumber::withNumber(*(a2 + 6), 0x20u);
    v15 = OSNumber::withNumber(*(a2 + 10), 0x20u);
    if (v5 <= 0xE)
    {
      AppleDeviceManagementHIDEventService::processBatteryState();
    }

    if (((a2 >= 0xFFFFFFFFFFFFFFF2) << 63) >> 63 != a2 >= 0xFFFFFFFFFFFFFFF2)
    {
      AppleDeviceManagementHIDEventService::processBatteryState();
    }

    v16 = v15;
    v22 = v14;
    v23 = v13;
    v24 = v10;
    v17 = OSNumber::withNumber(*(a2 + 14), 8u);
    v18 = OSNumber::withNumber(*(a2 + 15), 0x20u);
    v19 = OSNumber::withNumber(*(a2 + 19), 0x20u);
    v20 = OSNumber::withNumber(*(a2 + 23), 0x20u);
    v21 = OSDictionary::withCapacity(0xAu);
    anObject = v8;
    if (v8)
    {
      (v8->retain)(v8);
    }

    OSDictionary::setObject(v21, "Version", &anObject);
    if (anObject)
    {
      (anObject->release_0)(anObject);
    }

    anObject = v24;
    if (v24)
    {
      (v24->retain)(v24);
    }

    OSDictionary::setObject(v21, "EventType", &anObject);
    if (anObject)
    {
      (anObject->release_0)(anObject);
    }

    anObject = v12;
    if (v12)
    {
      (v12->retain)(v12);
    }

    OSDictionary::setObject(v21, "BatteryPercentTrue", &anObject);
    if (anObject)
    {
      (anObject->release_0)(anObject);
    }

    anObject = v23;
    if (v23)
    {
      (v23->retain)(v23);
    }

    OSDictionary::setObject(v21, "ChargeState", &anObject);
    if (anObject)
    {
      (anObject->release_0)(anObject);
    }

    anObject = v22;
    if (v22)
    {
      (v22->retain)(v22);
    }

    OSDictionary::setObject(v21, "OnChargerDuration", &anObject);
    if (anObject)
    {
      (anObject->release_0)(anObject);
    }

    anObject = v16;
    if (v16)
    {
      (v16->retain)(v16);
    }

    OSDictionary::setObject(v21, "OnBatteryDuration", &anObject);
    if (anObject)
    {
      (anObject->release_0)(anObject);
    }

    anObject = v17;
    if (v17)
    {
      (v17->retain)(v17);
    }

    OSDictionary::setObject(v21, "KioskModeState", &anObject);
    if (anObject)
    {
      (anObject->release_0)(anObject);
    }

    anObject = v18;
    if (v18)
    {
      (v18->retain)(v18);
    }

    OSDictionary::setObject(v21, "KMSNormalDuration", &anObject);
    if (anObject)
    {
      (anObject->release_0)(anObject);
    }

    anObject = v19;
    if (v19)
    {
      (v19->retain)(v19);
    }

    OSDictionary::setObject(v21, "KMSDischargeDuration", &anObject);
    if (anObject)
    {
      (anObject->release_0)(anObject);
    }

    anObject = v20;
    if (v20)
    {
      (v20->retain)(v20);
    }

    OSDictionary::setObject(v21, "KMSActiveDuration", &anObject);
    if (anObject)
    {
      (anObject->release_0)(anObject);
    }

    (*(*this + 200))(this, "BatteryState", v21);
    *(this + 378) = (v12->__vftable[1].serialize)(v12);
    (*(*this + 1768))(this, a2, 2, 1);
    if (v21)
    {
      (v21->release_0)(v21);
    }

    if (v20)
    {
      (v20->release_0)(v20);
    }

    if (v19)
    {
      (v19->release_0)(v19);
    }

    if (v18)
    {
      (v18->release_0)(v18);
    }

    if (v17)
    {
      (v17->release_0)(v17);
    }

    if (v16)
    {
      (v16->release_0)(v16);
    }

    if (v22)
    {
      (v22->release_0)(v22);
    }

    if (v23)
    {
      (v23->release_0)(v23);
    }

    (v12->release_0)(v12);
    if (v24)
    {
      (v24->release_0)(v24);
    }

    if (v8)
    {
      (v8->release_0)(v8);
    }
  }

  else
  {
    _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[HID] [%s] [Error] %s::%s Report ID 0x%02X payload has invalid size %llu\n", "ATC", "AppleDeviceManagementHIDEventService", "processBatteryStateExtended", 155, a3);
  }
}

unint64_t libkern::bounded_array_ref<unsigned char,os_detail::panic_trapping_policy>::slice(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  if ((a3 + a2) >> 32)
  {
    libkern::bounded_array_ref<unsigned char,os_detail::panic_trapping_policy>::slice();
  }

  if (a3 + a2 > *(a1 + 2))
  {
    libkern::bounded_array_ref<unsigned char,os_detail::panic_trapping_policy>::slice();
  }

  if (HIDWORD(a3))
  {
    AppleDeviceManagementHIDEventService::processBatteryState();
  }

  v3 = *a1;
  result = *a1 + a2;
  if (((v3 ^ result) & 0xFFC0000000000000) != 0)
  {
    return result & 0xFFFFFFFFFFFFLL | 0xC8A2000000000000;
  }

  return result;
}

void AppleDeviceManagementHIDEventService::getBluetoothInfo(AppleDeviceManagementHIDEventService *this)
{
  if ((*(this + 329) & 1) == 0)
  {
    v2 = (*(*this + 280))(this, "BluetoothDevice");
    if (OSMetaClassBase::safeMetaCast(v2, OSBoolean::metaClass) == *kOSBooleanTrue)
    {
      memset(v10, 0, sizeof(v10));
      v6 = 512;
      *__str = 0;
      v8 = 0;
      v9 = 0;
      v3 = (*(*this + 1904))(this, 52, v10, &v6, 2);
      if (v3)
      {
        _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[HID] [%s] [Error] %s::%s simpleGetReport for reportID 0x%02x returned 0x%08X\n", "ATC", "AppleDeviceManagementHIDEventService", "getBluetoothInfo", 52, v3);
      }

      else if (v6 == 76)
      {
        if (LOBYTE(v10[0]) == 3)
        {
          snprintf(__str, 0x14uLL, "%02x-%02x-%02x-%02x-%02x-%02x", BYTE3(v10[0]), BYTE4(v10[0]), BYTE5(v10[0]), BYTE6(v10[0]), BYTE7(v10[0]), BYTE8(v10[0]));
          v4 = OSData::withBytes(v10 + 3, 6u);
          if (v4)
          {
            (*(*this + 200))(this, "BD_ADDR", v4);
          }

          (*(*this + 208))(this, "DeviceAddress", __str);
          v5 = OSNumber::withNumber(*(v10 + 1), 0x10u);
          if (v5)
          {
            (*(*this + 200))(this, "BTFW Version", v5);
          }

          *(this + 329) = 1;
          if (v4)
          {
            (v4->release_0)(v4);
          }

          if (v5)
          {
            (v5->release_0)(v5);
          }
        }

        else
        {
          _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[HID] [%s] [Error] %s::%s reportVersion mismatch: bluetoothInfo->reportVersion = %u, BT_INFO_STRUCT_VERSION = %u\n", "ATC", "AppleDeviceManagementHIDEventService", "getBluetoothInfo", LOBYTE(v10[0]), 3);
        }
      }

      else
      {
        _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[HID] [%s] [Error] %s::%s getReport result size (%d) does not match BTInfo struct size (%lu)\n", "ATC", "AppleDeviceManagementHIDEventService", "getBluetoothInfo", v6, 76);
      }
    }

    else
    {
      *(this + 329) = 1;
    }
  }
}

uint64_t AppleDeviceManagementHIDEventService::getFirmwareVersions(AppleDeviceManagementHIDEventService *this)
{
  memset(v16, 0, sizeof(v16));
  if (!(*(*this + 1904))())
  {
    v3 = 0;
    for (i = 0; ; v3 = i)
    {
      v5 = *(v16 + i);
      v6 = OSNumber::withNumber(*(v16 + v3 + 2), 0x10u);
      if (v6)
      {
        v7 = v6;
        if (v5 <= 111)
        {
          v8 = "AccelAlgsFW Version";
          if (v5 != 96)
          {
            v8 = "UnknownFW Version";
          }

          if (v5 == 88)
          {
            v8 = "PowerFW Version";
          }

          if (v5 == 80)
          {
            v8 = "ChargerFW Version";
          }

          if (v5 == 65)
          {
            v13 = "AudioCalFW Version";
          }

          else
          {
            v13 = "UnknownFW Version";
          }

          if (v5 == 64)
          {
            v13 = "AudioFW Version";
          }

          if (v5 <= 79)
          {
            v8 = v13;
          }

          v10 = "RadioDiagsFW Version";
          if (v5 != 49)
          {
            v10 = "UnknownFW Version";
          }

          if (v5 == 48)
          {
            v10 = "RadioFW Version";
          }

          v14 = "MTFW Version";
          if (v5 != 32)
          {
            v14 = "UnknownFW Version";
          }

          if (v5 == 1)
          {
            v14 = "STFW Version";
          }

          if (v5 <= 47)
          {
            v10 = v14;
          }

          v12 = v5 <= 63;
        }

        else
        {
          v8 = "TestFW Version";
          if (v5 != 223)
          {
            v8 = "UnknownFW Version";
          }

          if (v5 == 197)
          {
            v8 = "AudioCalFW Version";
          }

          if (v5 == 196)
          {
            v8 = "AccelCalFW Version";
          }

          v9 = "ActCalFW Version";
          if (v5 != 195)
          {
            v9 = "UnknownFW Version";
          }

          if (v5 == 194)
          {
            v9 = "ForceCalFW Version";
          }

          if (v5 <= 195)
          {
            v8 = v9;
          }

          if (v5 == 193)
          {
            v10 = "MTCalFW Version";
          }

          else
          {
            v10 = "UnknownFW Version";
          }

          if (v5 == 192)
          {
            v10 = "KeyCalFW Version";
          }

          if (v5 == 176)
          {
            v10 = "BootLoaderFW Version";
          }

          if (v5 == 160)
          {
            v11 = "VibeWaveformFW Version";
          }

          else
          {
            v11 = "UnknownFW Version";
          }

          if (v5 == 112)
          {
            v11 = "TrustedAccessoryFW Version";
          }

          if (v5 <= 175)
          {
            v10 = v11;
          }

          v12 = v5 <= 193;
        }

        if (v12)
        {
          v15 = v10;
        }

        else
        {
          v15 = v8;
        }

        (*(*this + 200))(this, v15, v6);
        (v7->release_0)(v7);
      }

      i += 4;
    }
  }

  return (*(*this + 1800))(this);
}

void AppleDeviceManagementHIDEventService::getSTFirmwareVersion(AppleDeviceManagementHIDEventService *this)
{
  v1 = (*(*this + 1904))();
  if (v1)
  {
    _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[HID] [%s] [Error] %s::%s simpleGetReport for reportID 0x%02x returned 0x%08x\n", "ATC", "AppleDeviceManagementHIDEventService", "getSTFirmwareVersion", 180, v1);
  }

  else
  {
    _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[HID] [%s] [Error] %s::%s getReport result size (%u) does not match expected size (%lu)\n", "ATC", "AppleDeviceManagementHIDEventService", "getSTFirmwareVersion", 512, 2);
  }
}

void AppleDeviceManagementHIDEventService::getHardwareId(AppleDeviceManagementHIDEventService *this)
{
  v1 = (*(*this + 1904))();
  if (v1)
  {
    _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[HID] [%s] [Error] %s::%s simpleGetReport for reportID 0x%02x returned 0x%08x\n", "ATC", "AppleDeviceManagementHIDEventService", "getHardwareId", 188, v1);
  }

  else
  {
    _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[HID] [%s] [Error] %s::%s getReport result size (%u) does not match expected size (%lu)\n", "ATC", "AppleDeviceManagementHIDEventService", "getHardwareId", 512, 2);
  }
}

void AppleDeviceManagementHIDEventService::getCriticalError(AppleDeviceManagementHIDEventService *this)
{
  memset(v3, 0, sizeof(v3));
  v2 = (*(*this + 1904))();
  if (v2)
  {
    _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[HID] [%s] [Error] %s::%s Could not get critical error (reportID = 0x%02x, Return Value = 0x%08x)\n", "ATC", "AppleDeviceManagementHIDEventService", "getCriticalError", 224, v2);
  }

  else
  {
    (*(*this + 1824))(this, v3, 512);
  }
}

BOOL AppleDeviceManagementHIDEventService::processCriticalError(AppleDeviceManagementHIDEventService *this, unsigned __int8 *a2, uint64_t a3)
{
  if (a3 == 4)
  {
    if (a2 + 4 < a2)
    {
      AppleDeviceManagementHIDEventService::processBatteryState();
    }

    v5 = *a2;
    if (v5 && v5 != *(this + 95))
    {
      _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[HID] [%s] [Error] %s::%s Received Critical Error: 0x%08x\n", "ATC", "AppleDeviceManagementHIDEventService", "processCriticalError", v5);
      (*(*this + 224))(this, "LastCriticalError", v5, 32);
    }

    *(this + 95) = v5;
  }

  return a3 == 4;
}

void AppleDeviceManagementHIDEventService::getWakeReason(AppleDeviceManagementHIDEventService *this)
{
  memset(v3, 0, sizeof(v3));
  v2 = (*(*this + 1904))();
  if (v2)
  {
    _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[HID] [%s] [Error] %s::%s Could not get wake reason (reportID = 0x%02x, Return Value = 0x%08x)\n", "ATC", "AppleDeviceManagementHIDEventService", "getWakeReason", 197, v2);
  }

  else if (((*(*this + 1840))(this, v3, 512) & 1) == 0)
  {
    _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[HID] [%s] [Error] %s::%s Could not process wake reason\n", "ATC", "AppleDeviceManagementHIDEventService", "getWakeReason");
  }
}

BOOL AppleDeviceManagementHIDEventService::processWakeReason(AppleDeviceManagementHIDEventService *this, unsigned __int8 *a2, unint64_t a3)
{
  if (HIDWORD(a3))
  {
    AppleDeviceManagementHIDEventService::processBatteryState();
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  *__str = 0u;
  v9 = 0u;
  if (a3 == 1)
  {
    if (a2 + 1 < a2)
    {
      AppleDeviceManagementHIDEventService::processBatteryState();
    }

    v5 = *a2;
    if (v5 > 5)
    {
      if (*a2 > 0x20u)
      {
        switch(v5)
        {
          case 0x21u:
            v6 = "AutoInputReport";
            goto LABEL_31;
          case 0x40u:
            v6 = "ControlData";
            goto LABEL_31;
          case 0xE0u:
            v6 = "CriticalErrors";
            goto LABEL_31;
        }
      }

      else
      {
        switch(v5)
        {
          case 6u:
            v6 = "Battery";
            goto LABEL_31;
          case 7u:
            v6 = "PowerSwitch";
            goto LABEL_31;
          case 0x20u:
            v6 = "Message";
LABEL_31:
            snprintf(__str, 0x100uLL, "%s (0x%02X)", v6, v5);
            _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[HID] [%s] %s::%s Wake reason: %s\n", "ATC", "AppleDeviceManagementHIDEventService", "processWakeReason", __str);
            (*(*this + 208))(this, "WakeReason", __str);
            return a3 == 1;
        }
      }
    }

    else
    {
      if (*a2 <= 2u)
      {
        if (*a2)
        {
          if (v5 == 1)
          {
            v6 = "Host";
          }

          else
          {
            v6 = "Keyboard";
          }
        }

        else
        {
          v6 = "Unknown";
        }

        goto LABEL_31;
      }

      switch(v5)
      {
        case 3u:
          v6 = "Button";
          goto LABEL_31;
        case 4u:
          v6 = "Trackpad";
          goto LABEL_31;
        case 5u:
          v6 = "Accel";
          goto LABEL_31;
      }
    }

    v6 = "Invalid";
    goto LABEL_31;
  }

  return a3 == 1;
}

uint64_t AppleDeviceManagementHIDEventService::setWakeReason(AppleDeviceManagementHIDEventService *this, char a2)
{
  v5 = a2;
  v2 = (*(*this + 1912))(this, 197, &v5, 1);
  v3 = v2;
  if (v2)
  {
    _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[HID] [%s] [Error] %s::%s Error setting wake reason (reportID = 0x%02x, Return Value = 0x%08x)\n", "ATC", "AppleDeviceManagementHIDEventService", "setWakeReason", 197, v2);
  }

  return v3;
}

void AppleDeviceManagementHIDEventService::getDevicePowerState(AppleDeviceManagementHIDEventService *this)
{
  v1 = (*(*this + 1904))();
  if (v1)
  {
    _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[HID] [%s] [Error] %s::%s Could not get system power state (reportID = 0x%02x, Return Value = 0x%08x)\n", "ATC", "AppleDeviceManagementHIDEventService", "getDevicePowerState", 205, v1);
  }
}

uint64_t AppleDeviceManagementHIDEventService::getSerialNumber(AppleDeviceManagementHIDEventService *this)
{
  result = *(this + 42);
  if (!result)
  {
    v3 = (this + 336);
    libkern::intrusive_shared_ptr<OSString,intrusive_osobject_retainer>::reset(this + 42, v4);
    v5 = *(this + 42);
    if (!v5 || (v6 = (*(*v5 + 168))(v5), _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[HID] [%s] %s::%s Serial number fetched from super: %s\n", "ATC", "AppleDeviceManagementHIDEventService", "getSerialNumber", v6), (result = *v3) == 0))
    {
      v7 = (*(*this + 120))(this, "SerialNumber", gIOServicePlane, 3);
      *&v14[4] = v7;
      v8 = OSDynamicPtrCast<OSString,OSObject>(&v14[4]);
      v9 = *(this + 42);
      if (v9)
      {
        (*(*v9 + 40))(v9);
      }

      *v3 = v8;
      if (v8)
      {
        v10 = (v8->__vftable[1].isEqualTo)(v8);
        _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[HID] [%s] %s::%s Serial number fetched from parents: %s\n", "ATC", "AppleDeviceManagementHIDEventService", "getSerialNumber", v10);
      }

      if (v7)
      {
        (*(*v7 + 40))(v7);
      }

      result = *v3;
      if (!*v3)
      {
        memset(&v14[4], 0, 512);
        *v14 = 512;
        if (!(*(*this + 1904))(this, 17, &v14[4], v14, 2) && *v14)
        {
          v12 = OSString::withCString(&v14[4], *v14, v11);
          if (*v3)
          {
            (*(**v3 + 40))(*v3);
          }

          *v3 = v12;
          v13 = (*(*v12 + 168))(v12);
          _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[HID] [%s] %s::%s Serial number fetched from feature report: %s\n", "ATC", "AppleDeviceManagementHIDEventService", "getSerialNumber", v13);
        }

        return *v3;
      }
    }
  }

  return result;
}

uint64_t *libkern::intrusive_shared_ptr<OSString,intrusive_osobject_retainer>::reset(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  *a1 = a2;
  if (a2)
  {
    (*(*a2 + 32))(a2);
  }

  if (v3)
  {
    (*(*v3 + 40))(v3);
  }

  return a1;
}

uint64_t AppleDeviceManagementHIDEventService::getProductID(AppleDeviceManagementHIDEventService *this)
{
  if (!result)
  {
    memset(v6, 0, sizeof(v6));
    v5 = 512;
    v3 = (*(*this + 1904))(this, 21, v6, &v5, 2);
    if (v5 == 2 && v3 == 0)
    {
      return LOWORD(v6[0]);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t AppleDeviceManagementHIDEventService::simpleGetReport(const IOService *this, uint64_t a2, unsigned __int8 *a3, unsigned int *a4, uint64_t a5)
{
  v10 = 3758097111;
  if (!IOService::isInactive(this))
  {
    if (*this[2].__state)
    {
      v10 = 3758097090;
      if (a3)
      {
        if (a4)
        {
          v11 = *a4;
          if (v11 <= 0x200)
          {
            v12 = IOBufferMemoryDescriptor::withCapacity(v11, 3u, 0);
            if (v12)
            {
              v13 = v12;
              v10 = (*(**this[2].__state + 1464))(*this[2].__state, v12, a5, a2, 0);
              if (!v10 && (v13->getLength)(v13) >= 2)
              {
                *a4 = (v13->getLength)(v13) - 1;
                v14 = (v13->getBytesNoCopy)(v13);
                v19 = 0;
                v15 = (v13->getLength)(v13);
                v18 = v14;
                LODWORD(v19) = v15;
                if (HIDWORD(v15))
                {
                  AppleDeviceManagementHIDEventService::processBatteryState();
                }

                v16 = libkern::bounded_array_ref<unsigned char,os_detail::panic_trapping_policy>::slice(&v18, 1, *a4);
                memmove(a3, v16, *a4);
              }

              (v13->release_0)(v13);
            }

            else
            {
              return 3758097086;
            }
          }

          else
          {
            return 3758097128;
          }
        }
      }
    }
  }

  return v10;
}

uint64_t AppleDeviceManagementHIDEventService::simpleSetReport(const IOService *this, char a2, unsigned __int8 *a3, unsigned int a4)
{
  v8 = 3758097111;
  if (IOService::isInactive(this))
  {
    return v8;
  }

  if (!*this[2].__state)
  {
    return v8;
  }

  v8 = 3758097090;
  if (!a3 || !a4)
  {
    return v8;
  }

  v9 = a4 + 1;
  if (v9 > 0x200)
  {
    return 3758097128;
  }

  v10 = IOBufferMemoryDescriptor::withCapacity(v9, 3u, 0);
  if (!v10)
  {
    return 3758097086;
  }

  v11 = v10;
  v12 = (v10->getBytesNoCopy)(v10);
  v21 = 0;
  v13 = (v11->getLength)(v11);
  v20 = v12;
  LODWORD(v21) = v13;
  if (HIDWORD(v13))
  {
    AppleDeviceManagementHIDEventService::processBatteryState();
  }

  v14 = v12 + v13;
  if (((v12 ^ (v12 + v13)) & 0xFFC0000000000000) != 0)
  {
    v14 = v14 & 0xFFFFFFFFFFFFLL | 0xC8A2000000000000;
  }

  v15 = v14 >= v12;
  v16 = v14 - v12;
  if (!v15 || HIDWORD(v16))
  {
    AppleDeviceManagementHIDEventService::processBatteryState();
  }

  if (!v16)
  {
    AppleDeviceManagementHIDEventService::processBatteryState();
  }

  *v12 = a2;
  v17 = libkern::bounded_array_ref<unsigned char,os_detail::panic_trapping_policy>::slice(&v20, 1, a4);
  memmove(v17, a3, a4);
  v18 = (*(**this[2].__state + 1456))(*this[2].__state, v11);
  (v11->release_0)(v11);
  return v18;
}

uint64_t AppleDeviceManagementHIDEventService::systemPowerChangeHandler(AppleDeviceManagementHIDEventService *this, void *a2, int a3, IOService *a4, _DWORD *a5)
{
  if (a3 == -536870080)
  {
    v6 = a5[4];
    v5 = a5[5];
    v7 = a5[2];
    if (v7 == 1)
    {
      if (v6 & 1) != 0 && (v5 & 1) == 0 && (*(this + 328))
      {
        AppleDeviceManagementHIDEventService::getDevicePowerState(this);
      }
    }

    else if (v7 == 2 && (v6 & 1) == 0 && (v5 & 1) != 0)
    {
      (*(*this + 1872))(this, a2);
    }
  }

  return 0;
}

void AppleDeviceManagementHIDEventService::scheduleResumeFromSleep(AppleDeviceManagementHIDEventService *this)
{
  if (*(this + 45))
  {
    v2 = *(this + 49);
    *(this + 49) = this;
    (*(*this + 32))(this);
    if (v2)
    {
      (*(*v2 + 40))(v2);
    }

    if (thread_call_enter(*(this + 45)) == 1)
    {
      _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[HID] [%s] %s::%s Resume from sleep thread call is already pending\n", "ATC", "AppleDeviceManagementHIDEventService", "scheduleResumeFromSleep");
      v3 = *(this + 49);
      if (v3)
      {
        (*(*v3 + 40))(v3);
      }

      *(this + 49) = 0;
    }
  }

  else
  {
    _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[HID] [%s] [Error] %s::%s _resumeFromSleepThread is NULL\n", "ATC", "AppleDeviceManagementHIDEventService", "scheduleResumeFromSleep");
  }
}

uint64_t AppleDeviceManagementHIDEventService::_resumeFromSleepGated(const IOService *this)
{
  result = IOService::isInactive(this);
  if ((result & 1) == 0)
  {
    if (this[2].reserved)
    {
      (this->__vftable[1].init_1)(this);
    }

    v3 = (this->copyProperty_4)(this, "Built-In");
    v4 = OSBoolean::metaClass;
    v5 = OSMetaClassBase::safeMetaCast(v3, OSBoolean::metaClass);
    v6 = v5;
    if (v3)
    {
      v7 = v5 == 0;
    }

    else
    {
      v7 = 0;
    }

    if (v7)
    {
      (v3->release_0)(v3);
    }

    v8 = (this->copyProperty_4)(this, "HasBattery");
    v9 = OSMetaClassBase::safeMetaCast(v8, v4);
    v10 = v9;
    if (v8)
    {
      v11 = v9 == 0;
    }

    else
    {
      v11 = 0;
    }

    if (v11)
    {
      (v8->release_0)(v8);
    }

    if (v6 == *kOSBooleanFalse && v10 == *kOSBooleanTrue)
    {
      (this->__vftable[1].isChild)(this);
    }

    result = (this->__vftable[1].detachAbove)(this);
    if (v10)
    {
      result = (v10->release_0)(v10);
    }

    if (v6)
    {
      release_0 = v6->release_0;

      return (release_0)(v6);
    }
  }

  return result;
}

uint64_t AppleDeviceManagementHIDEventService::powerStateWillChangeTo(IOService **this, char a2, unint64_t a3, IOService *a4)
{
  if (a2 & 0x84) != 0 && this[46] == a4 && (this[39])
  {
    ((*this)[14].fRegistryTable)(this);
  }

  return v7;
}

uint64_t AppleDeviceManagementHIDEventService::setUSBSleepOnSuspend(AppleDeviceManagementHIDEventService *this, char a2)
{
  v5 = a2;
  v2 = (*(*this + 1912))(this, 195, &v5, 1);
  v3 = v2;
  if (v2)
  {
    _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[HID] [%s] [Error] %s::%s Could not set USB sleep on suspend (reportID = 0x%02x, Return Value = 0x%08x\n", "ATC", "AppleDeviceManagementHIDEventService", "setUSBSleepOnSuspend", 195, v2);
  }

  return v3;
}

OSMetaClass *_GLOBAL__sub_I_AppleDeviceManagementHIDEventService_cpp()
{
  result = OSMetaClass::OSMetaClass(&AppleDeviceManagementHIDEventService::gMetaClass, "AppleDeviceManagementHIDEventService", &IOHIDEventService::gMetaClass, 0x190u);
  result->__vftable = off_14A08;
  return result;
}

uint64_t _atc_extractTrackingAndButtonState(_BYTE *a1, _BYTE *a2, unsigned int a3, int a4)
{
  switch(a4)
  {
    case 117:
      return _atc_extractButtonStateFromBinaryV4Header(a1, a2, a3);
    case 49:
      return _atc_extractButtonStateFromV7Header(a1, a2, a3);
    case 2:
      return _atc_parseSimpleMouseV2Packet(a1, a2, a3);
  }

  return 0;
}

uint64_t _atc_parseSimpleMouseV2Packet(_BYTE *a1, _BYTE *a2, int a3)
{
  if (a1)
  {
    v3 = a2 == 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = !v3 && a3 == 8;
  v5 = v4;
  if (v4)
  {
    if (a2 + 8 < a2)
    {
      AppleDeviceManagementHIDEventService::processBatteryState();
    }

    *a1 = *a2;
    if (((a2 == -1) << 63) >> 63 != (a2 == -1))
    {
      AppleDeviceManagementHIDEventService::processBatteryState();
    }

    a1[1] = a2[1];
    if (((a2 >= 0xFFFFFFFFFFFFFFFELL) << 63) >> 63 != a2 >= 0xFFFFFFFFFFFFFFFELL)
    {
      AppleDeviceManagementHIDEventService::processBatteryState();
    }

    a1[2] = a2[2];
    if (((a2 >= 0xFFFFFFFFFFFFFFFDLL) << 63) >> 63 != a2 >= 0xFFFFFFFFFFFFFFFDLL)
    {
      AppleDeviceManagementHIDEventService::processBatteryState();
    }

    a1[3] = a2[3];
    if (((a2 >= 0xFFFFFFFFFFFFFFFCLL) << 63) >> 63 != a2 >= 0xFFFFFFFFFFFFFFFCLL)
    {
      AppleDeviceManagementHIDEventService::processBatteryState();
    }

    a1[4] = a2[4];
    if (((a2 >= 0xFFFFFFFFFFFFFFFBLL) << 63) >> 63 != a2 >= 0xFFFFFFFFFFFFFFFBLL)
    {
      AppleDeviceManagementHIDEventService::processBatteryState();
    }

    a1[5] = a2[5];
    if (((a2 >= 0xFFFFFFFFFFFFFFFALL) << 63) >> 63 != a2 >= 0xFFFFFFFFFFFFFFFALL)
    {
      AppleDeviceManagementHIDEventService::processBatteryState();
    }

    a1[7] = a2[6];
    if (((a2 >= 0xFFFFFFFFFFFFFFF9) << 63) >> 63 != a2 >= 0xFFFFFFFFFFFFFFF9)
    {
      AppleDeviceManagementHIDEventService::processBatteryState();
    }

    a1[6] = a2[7];
  }

  return v5;
}

uint64_t _atc_extractButtonStateFromBinaryV4Header(uint64_t a1, unint64_t a2, unsigned int a3)
{
  *a1 = 0;
  if (!a2)
  {
    return 0;
  }

  v5 = 0u;
  v6 = 0u;
  result = MTBinaryV4HeaderUnpack(&v5, a2, a3);
  if (result)
  {
    *(a1 + 1) = BYTE7(v6);
    *(a1 + 6) = *(a1 + 6) & 0xFD | (2 * (BYTE12(v5) & 1));
    return 1;
  }

  return result;
}

uint64_t _atc_extractButtonStateFromV7Header(uint64_t a1, _BYTE *a2, unsigned int a3)
{
  *a1 = 0;
  if (!a2)
  {
    return 0;
  }

  v5 = 0;
  result = MTCompactV7HeaderUnpack(&v5, a2, a3);
  if (result)
  {
    *(a1 + 1) = BYTE1(v5);
    *(a1 + 6) = *(a1 + 6) & 0xFD | (2 * (BYTE3(v5) != 0));
    return 1;
  }

  return result;
}

uint64_t _atc_parseSimpleMouseV3Packet(uint64_t a1, unint64_t a2, int a3)
{
  if (a1)
  {
    v3 = a2 == 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = !v3 && a3 == 8;
  v5 = v4;
  if (v4)
  {
    if (a2 + 8 < a2)
    {
      AppleDeviceManagementHIDEventService::processBatteryState();
    }

    *a1 = *a2;
    if (((a2 == -1) << 63) >> 63 != (a2 == -1))
    {
      AppleDeviceManagementHIDEventService::processBatteryState();
    }

    *(a1 + 1) = *(a2 + 1);
    *(a1 + 2) = *(a2 + 2);
    *(a1 + 4) = *(a2 + 4);
    if (((a2 >= 0xFFFFFFFFFFFFFFFALL) << 63) >> 63 != a2 >= 0xFFFFFFFFFFFFFFFALL)
    {
      AppleDeviceManagementHIDEventService::processBatteryState();
    }

    *(a1 + 6) = *(a2 + 6);
    if (((a2 >= 0xFFFFFFFFFFFFFFF9) << 63) >> 63 != a2 >= 0xFFFFFFFFFFFFFFF9)
    {
      AppleDeviceManagementHIDEventService::processBatteryState();
    }

    *(a1 + 7) = *(a2 + 7);
  }

  return v5;
}

uint64_t MTCompactV7HeaderUnpack(uint64_t a1, _BYTE *a2, unsigned int a3)
{
  v3 = 0;
  if (a1 && a2 && a3 >= 4)
  {
    if (&a2[a3] < a2)
    {
      AppleDeviceManagementHIDEventService::processBatteryState();
    }

    *a1 = *a2;
    if (a3 == 1)
    {
      AppleDeviceManagementHIDEventService::processBatteryState();
    }

    v4 = a2 + 1;
    if (((a2 == -1) << 63) >> 63 != (a2 == -1))
    {
      AppleDeviceManagementHIDEventService::processBatteryState();
    }

    *(a1 + 1) = *v4 & 1;
    *(a1 + 2) = (*v4 & 2) != 0;
    *(a1 + 3) = (*v4 & 4) != 0;
    if (a3 <= 2uLL)
    {
      AppleDeviceManagementHIDEventService::processBatteryState();
    }

    if (((a2 >= 0xFFFFFFFFFFFFFFFELL) << 63) >> 63 != a2 >= 0xFFFFFFFFFFFFFFFELL)
    {
      AppleDeviceManagementHIDEventService::processBatteryState();
    }

    if (a3 == 3)
    {
      AppleDeviceManagementHIDEventService::processBatteryState();
    }

    if (((a2 >= 0xFFFFFFFFFFFFFFFDLL) << 63) >> 63 != a2 >= 0xFFFFFFFFFFFFFFFDLL)
    {
      AppleDeviceManagementHIDEventService::processBatteryState();
    }

    *(a1 + 4) = (*v4 >> 3) | (32 * a2[2]) | (a2[3] << 13);
    return 8;
  }

  return v3;
}

uint64_t MTBinaryV4HeaderUnpack(uint64_t a1, unint64_t a2, unsigned int a3)
{
  v3 = 0;
  if (a1 && a2 && a3 >= 0x20)
  {
    *a1 = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 12) = *(a2 + 12);
    if (a2 + a3 < a2)
    {
      AppleDeviceManagementHIDEventService::processBatteryState();
    }

    if (a3 <= 0x17uLL)
    {
      AppleDeviceManagementHIDEventService::processBatteryState();
    }

    if (((a2 >= 0xFFFFFFFFFFFFFFE9) << 63) >> 63 != a2 >= 0xFFFFFFFFFFFFFFE9)
    {
      AppleDeviceManagementHIDEventService::processBatteryState();
    }

    *(a1 + 23) = *(a2 + 23);
    return 32;
  }

  return v3;
}

OSMetaClass *AppleMultitouchInputHIDEventDriver::MetaClass::MetaClass(OSMetaClass *this)
{
  result = OSMetaClass::OSMetaClass(this, "AppleMultitouchInputHIDEventDriver", &AppleMultitouchHIDEventDriverV2::gMetaClass, 0x190u);
  result->__vftable = off_15228;
  return result;
}

{
  result = OSMetaClass::OSMetaClass(this, "AppleMultitouchInputHIDEventDriver", &AppleMultitouchHIDEventDriverV2::gMetaClass, 0x190u);
  result->__vftable = off_15228;
  return result;
}

void AppleMultitouchInputHIDEventDriver::MetaClass::~MetaClass(OSMetaClass *this)
{
  OSMetaClass::~OSMetaClass(this);
}

{
  OSMetaClass::~OSMetaClass(this);
}

void AppleMultitouchInputHIDEventDriver::AppleMultitouchInputHIDEventDriver(AppleMultitouchInputHIDEventDriver *this, const OSMetaClass *a2)
{
  AppleMultitouchHIDEventDriverV2::AppleMultitouchHIDEventDriverV2(this, a2);
  *v2 = off_14AA0;
  v2[41] = 0;
  v2[43] = 0;
  v2[45] = 0;
  v2[47] = 0;
  v2[48] = 0;
}

{
  AppleMultitouchHIDEventDriverV2::AppleMultitouchHIDEventDriverV2(this, a2);
  *v2 = off_14AA0;
  v2[41] = 0;
  v2[43] = 0;
  v2[45] = 0;
  v2[47] = 0;
  v2[48] = 0;
}

void AppleMultitouchInputHIDEventDriver::~AppleMultitouchInputHIDEventDriver(AppleMultitouchInputHIDEventDriver *this)
{
  *this = off_14AA0;
  v2 = *(this + 48);
  if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  *(this + 48) = 0;
  v3 = *(this + 47);
  if (v3)
  {
    (*(*v3 + 40))(v3);
  }

  *(this + 47) = 0;
  v4 = *(this + 45);
  if (v4)
  {
    (*(*v4 + 40))(v4);
  }

  *(this + 45) = 0;
  v5 = *(this + 43);
  if (v5)
  {
    (*(*v5 + 40))(v5);
  }

  *(this + 43) = 0;
  v6 = *(this + 41);
  if (v6)
  {
    (*(*v6 + 40))(v6);
  }

  *(this + 41) = 0;

  AppleMultitouchHIDEventDriverV2::~AppleMultitouchHIDEventDriverV2(this);
}

{
  *this = off_14AA0;
  v2 = *(this + 48);
  if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  *(this + 48) = 0;
  v3 = *(this + 47);
  if (v3)
  {
    (*(*v3 + 40))(v3);
  }

  *(this + 47) = 0;
  v4 = *(this + 45);
  if (v4)
  {
    (*(*v4 + 40))(v4);
  }

  *(this + 45) = 0;
  v5 = *(this + 43);
  if (v5)
  {
    (*(*v5 + 40))(v5);
  }

  *(this + 43) = 0;
  v6 = *(this + 41);
  if (v6)
  {
    (*(*v6 + 40))(v6);
  }

  *(this + 41) = 0;

  AppleMultitouchHIDEventDriverV2::~AppleMultitouchHIDEventDriverV2(this);
}

{
  AppleMultitouchInputHIDEventDriver::~AppleMultitouchInputHIDEventDriver(this);

  _OSObject_typed_operator_delete(&AppleMultitouchInputHIDEventDriver_ktv, this, 400);
}

void AppleMultitouchInputHIDEventDriver::MetaClass::alloc(AppleMultitouchInputHIDEventDriver::MetaClass *this)
{
  v1 = OSObject_typed_operator_new();

  AppleMultitouchInputHIDEventDriver::AppleMultitouchInputHIDEventDriver(v1);
}

void AppleMultitouchInputHIDEventDriver::AppleMultitouchInputHIDEventDriver(AppleMultitouchInputHIDEventDriver *this)
{
  AppleMultitouchInputHIDEventDriver::AppleMultitouchInputHIDEventDriver(this);
}

{
  AppleMultitouchHIDEventDriverV2::AppleMultitouchHIDEventDriverV2(this, &AppleMultitouchInputHIDEventDriver::gMetaClass);
  *v1 = off_14AA0;
  v1[41] = 0;
  v1[43] = 0;
  v1[45] = 0;
  v1[47] = 0;
  v1[48] = 0;
  OSMetaClass::instanceConstructed(&AppleMultitouchInputHIDEventDriver::gMetaClass);
}

uint64_t AppleMultitouchInputHIDEventDriver::init(OSMetaClassBase *this, OSDictionary *a2)
{
  {
    v3 = IOBufferMemoryDescriptor::withCapacity(0x1000uLL, 3u, 0);
    v4 = this[41].__vftable;
    if (v4)
    {
      (*(v4->~OSMetaClassBase + 5))(v4);
    }

    this[41].__vftable = v3;
    if (v3)
    {
      v5 = OSDictionary::withCapacity(1u);
      v6 = this[43].__vftable;
      if (v6)
      {
        (*(v6->~OSMetaClassBase + 5))(v6);
      }

      this[43].__vftable = v5;
      if (v5)
      {
        v7 = IORecursiveLockAlloc();
        this[44].__vftable = v7;
        if (v7)
        {
          release = this->__vftable[18].release;
          if (!release)
          {
            v12.ptr = AppleMultitouchInputHIDEventDriver::unleashThreadEnter;
            v12.adj = 0;
            v9 = OSMetaClassBase::_ptmf2ptf(this, v12);
            if (v9)
            {
              release = v9;
            }

            else
            {
              release = 0;
            }
          }

          v11 = thread_call_allocate(release, this);
          this[46].__vftable = v11;
          if (v11)
          {
            return 1;
          }

          else
          {
            _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[HID] [%s] [Error] %s::%s Failed to allocate _unleashThread\n", "ATC", "AppleMultitouchInputHIDEventDriver", "init");
            return 0;
          }
        }

        else
        {
          _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[HID] [%s] [Error] %s::%s Failed to allocate _mtPrefsLock\n", "ATC", "AppleMultitouchInputHIDEventDriver", "init");
          return 0;
        }
      }

      else
      {
        _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[HID] [%s] [Error] %s::%s Failed to allocate _mtPreferences\n", "ATC", "AppleMultitouchInputHIDEventDriver", "init");
        return 0;
      }
    }

    else
    {
      _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[HID] [%s] [Error] %s::%s Failed to allocate _inputReportBuffer\n", "ATC", "AppleMultitouchInputHIDEventDriver", "init");
      return 0;
    }
  }

  else
  {
    _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[HID] [%s] [Error] %s::%s super::init() failed\n", "ATC", "AppleMultitouchInputHIDEventDriver", "init");
    return 0;
  }
}

uint64_t AppleMultitouchInputHIDEventDriver::free(AppleMultitouchInputHIDEventDriver *this)
{
  v2 = *(this + 46);
  if (v2)
  {
    thread_call_free(v2);
    *(this + 46) = 0;
  }

  v3 = *(this + 44);
  if (v3)
  {
    IORecursiveLockFree(v3);
    *(this + 44) = 0;
  }

  return v4(this);
}

void AppleMultitouchInputHIDEventDriver::handleInterfaceNotification(IORegistryEntry *this, OSNumber *a2)
{
  if (a2)
  {
    if ((a2->unsigned32BitValue)(a2) == 2)
    {
      RegistryEntryID = IORegistryEntry::getRegistryEntryID(this);
      _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[HID] [%s] %s::%s Device ready notification for registry ID 0x%08llX\n", "ATC", "AppleMultitouchInputHIDEventDriver", "handleInterfaceNotification", RegistryEntryID);
      taggedRelease = this->__vftable[3].taggedRelease;

      (taggedRelease)(this);
    }
  }

  else
  {
    _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[HID] [%s] [Error] %s::%s NULL notification received\n", "ATC", "AppleMultitouchInputHIDEventDriver", "handleInterfaceNotification");
  }
}

uint64_t AppleMultitouchInputHIDEventDriver::stop(AppleMultitouchInputHIDEventDriver *this, IOService *a2)
{
  v4 = *(this + 45);
  if (v4)
  {
    (*(*v4 + 120))(v4);
    v5 = *(this + 45);
    if (v5)
    {
      (*(*v5 + 40))(v5);
    }

    *(this + 45) = 0;
  }

  return v6(this, a2);
}

uint64_t AppleMultitouchInputHIDEventDriver::setProperties(const OSMetaClassBase *this, OSObject *anObject)
{
  v4 = OSMetaClassBase::safeMetaCast(anObject, OSDictionary::metaClass);
  if (v4)
  {
    v5 = v4;
    v6 = (v4->__vftable[3].~OSMetaClassBase)(v4, "UserPreferences");
    v7 = OSMetaClassBase::safeMetaCast(v6, OSBoolean::metaClass);
    if (v7)
    {
      v8 = v7 == *kOSBooleanTrue;
    }

    else
    {
      v8 = 0;
    }

    v9 = (v5->__vftable[3].~OSMetaClassBase)(v5, "UserPreferences");
    v10 = OSMetaClassBase::safeMetaCast(v9, OSNumber::metaClass);
    if (v10)
    {
      if ((v10->__vftable[1].isEqualTo)(v10))
      {
LABEL_7:
        v11 = this[48].__vftable;
        taggedRelease = this->__vftable[17].taggedRelease;
        if (!taggedRelease)
        {
          v17.ptr = AppleMultitouchInputHIDEventDriver::setMultitouchPreferences;
          v17.adj = 0;
          v13 = OSMetaClassBase::_ptmf2ptf(this, v17);
          if (v13)
          {
            taggedRelease = v13;
          }

          else
          {
            taggedRelease = 0;
          }
        }

        (*(v11->~OSMetaClassBase + 32))(v11, taggedRelease, this, v5, 0, 0, 0);
        return 0;
      }
    }

    else if (v8)
    {
      goto LABEL_7;
    }
  }

  return v14(this, anObject);
}

uint64_t AppleMultitouchInputHIDEventDriver::multitouchDeviceDidStart(IORecursiveLock **this)
{
  v2 = (*(*this + 220))(this);
  if (!v2)
  {
    return 3758097088;
  }

  v3 = v2;
  IORecursiveLockLock(this[44]);
  (*(*v3 + 1536))(v3, this[43]);
  (*(*this[43] + 184))();
  IORecursiveLockUnlock(this[44]);
  result = (*(*this + 41))(this, "HIDPointerResolution");
  if (result)
  {
    v5 = result;
    (*(*v3 + 200))(v3, "HIDPointerResolution", result);
    (*(*v5 + 40))(v5);
    return 0;
  }

  return result;
}

uint64_t AppleMultitouchInputHIDEventDriver::setMultitouchPreferences(AppleMultitouchInputHIDEventDriver *this, OSDictionary *a2)
{
  v4 = 3758097090;
  if (IOService::isInactive(this))
  {
    return 3758097111;
  }

  if (a2)
  {
    IORecursiveLockLock(*(this + 44));
    if ((*(*this + 1760))(this))
    {
      v5 = (*(*this + 1760))(this);
      (*(*v5 + 1536))(v5, a2);
    }

    else
    {
      (*(**(this + 43) + 288))(*(this + 43), a2);
    }

    IORecursiveLockUnlock(*(this + 44));
    return 0;
  }

  return v4;
}

uint64_t AppleMultitouchInputHIDEventDriver::enableMultitouchEvents(OSMetaClassBase *self, unsigned int a2)
{
  v4 = self[48].__vftable;
  taggedRelease_0 = self->__vftable[17].taggedRelease_0;
  if (!taggedRelease_0)
  {
    v10.ptr = AppleMultitouchInputHIDEventDriver::enableMultitouchEventsGated;
    v10.adj = 0;
    v6 = OSMetaClassBase::_ptmf2ptf(self, v10);
    if (v6)
    {
      taggedRelease_0 = v6;
    }

    else
    {
      taggedRelease_0 = 0;
    }
  }

  v7 = *(v4->~OSMetaClassBase + 32);

  return v7(v4, taggedRelease_0, self, a2, 0, 0, 0);
}

uint64_t AppleMultitouchInputHIDEventDriver::enableMultitouchEventsGated(const IOService *this, int a2)
{
  if (IOService::isInactive(this))
  {
    return 3758097112;
  }

  if ((this[2].__owner & 1) != a2)
  {
    LOBYTE(this[2].__owner) = a2;
    if ((this->__vftable[1].isParent)(this))
    {
      v5 = (this->__vftable[1].isParent)(this);
      if (this[2].__owner)
      {
        v6 = "true";
      }

      else
      {
        v6 = "false";
      }

      (*(*v5 + 1504))(v5, this, "AppleMultitouchInputHIDEventDriver::enableMultitouchEvents(%s)", v6);
    }

    if ((this[2]._numInterruptSources & 0x100) != 0)
    {
      v7 = (this->__vftable[1].copyName)(this, this[2].__owner & 1);
      if (v7)
      {
        _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[HID] [%s] [Error] %s::%s Failed to set device leash state. Result = 0x%08x\n", "ATC", "AppleMultitouchInputHIDEventDriver", "enableMultitouchEventsGated", v7);
      }
    }

    if (this[2].__owner)
    {
      (this->__vftable[1].setName)(this);
    }
  }

  return 0;
}

uint64_t AppleMultitouchInputHIDEventDriver::systemPowerChangeHandler(IORegistryEntry *this, void *a2, int a3, IOService *a4, _DWORD *a5)
{
  if (a3 == -536870080 && a5[2] == 2 && (a5[4] & 1) == 0 && (a5[5] & 1) != 0)
  {
    RegistryEntryID = IORegistryEntry::getRegistryEntryID(this);
    _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[HID] [%s] %s::%s Priority wake notification for registry ID 0x%08llX\n", "ATC", "AppleMultitouchInputHIDEventDriver", "systemPowerChangeHandler", RegistryEntryID);
    (this->__vftable[3].taggedRelease)(this);
  }

  return 0;
}

void AppleMultitouchInputHIDEventDriver::scheduleUnleash(AppleMultitouchInputHIDEventDriver *this)
{
  RegistryEntryID = IORegistryEntry::getRegistryEntryID(this);
  _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[HID] [%s] %s::%s schedule unleash for registry ID 0x%08llX\n", "ATC", "AppleMultitouchInputHIDEventDriver", "scheduleUnleash", RegistryEntryID);
  if (*(this + 46))
  {
    v3 = *(this + 47);
    *(this + 47) = this;
    (*(*this + 32))(this);
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    if (thread_call_enter(*(this + 46)) == 1)
    {
      _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[HID] [%s] %s::%s Schedule unleash thread call is already pending\n", "ATC", "AppleMultitouchInputHIDEventDriver", "scheduleUnleash");
      v4 = *(this + 47);
      if (v4)
      {
        (*(*v4 + 40))(v4);
      }

      *(this + 47) = 0;
    }
  }

  else
  {
    _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[HID] [%s] [Error] %s::%s _unleashThread is NULL\n", "ATC", "AppleMultitouchInputHIDEventDriver", "scheduleUnleash");
  }
}

OSMetaClassBase_vtbl *AppleMultitouchInputHIDEventDriver::unleashThreadEnter(OSMetaClassBase *self)
{
  v2 = self[48].__vftable;
  getRetainCount = self->__vftable[18].getRetainCount;
  if (!getRetainCount)
  {
    v6.ptr = AppleMultitouchInputHIDEventDriver::unleashDeviceGated;
    v6.adj = 0;
    v4 = OSMetaClassBase::_ptmf2ptf(self, v6);
    if (v4)
    {
      getRetainCount = v4;
    }

    else
    {
      getRetainCount = 0;
    }
  }

  (*(v2->~OSMetaClassBase + 32))(v2, getRetainCount, self, 0, 0, 0, 0);
  result = self[47].__vftable;
  if (result)
  {
    result = (*(result->~OSMetaClassBase + 5))(result);
  }

  self[47].__vftable = 0;
  return result;
}

void AppleMultitouchInputHIDEventDriver::unleashDeviceGated(const IOService *this)
{
  v7 = 0;
  v6 = 1;
  if ((this->__vftable[1].isParent)(this) && !IOService::isInactive(this))
  {
    v2 = (this->__vftable[1].getDepth)(this, 2, &v7, &v6, 3);
    if (v2)
    {
      _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[HID] [%s] [Error] %s::%s Failed to get device leash state. Error = 0x%08x\n", "ATC", "AppleMultitouchInputHIDEventDriver", "unleashDeviceGated", v2);
    }

    else if (!v7)
    {
      if ((this->__vftable[1].isParent)(this))
      {
        v3 = (this->__vftable[1].isParent)(this);
        if ((*(*v3 + 1400))(v3))
        {
          v5 = 1;
          v4 = (this->__vftable[1].attachToParent)(this, 0, &v5, v6, 3);
          if (v4)
          {
            _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[HID] [%s] [Error] %s::%s Failed to set device leash state. Error = 0x%08x\n", "ATC", "AppleMultitouchInputHIDEventDriver", "unleashDeviceGated", v4);
          }
        }
      }
    }
  }
}

void AppleMultitouchInputHIDEventDriver::clearButtonStateForUnleash(AppleMultitouchInputHIDEventDriver *this)
{
  if ((*(*this + 1760))(this))
  {
    v2 = *(*(*(*this + 1760))(this) + 1488);

    v2();
  }

  else
  {
    _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[HID] [%s] [Error] %s::%s Could not clear button state because AMD is not available!\n", "ATC", "AppleMultitouchInputHIDEventDriver", "clearButtonStateForUnleash");
  }
}

OSMetaClass *_GLOBAL__sub_I_AppleMultitouchInputHIDEventDriver_cpp()
{
  result = OSMetaClass::OSMetaClass(&AppleMultitouchInputHIDEventDriver::gMetaClass, "AppleMultitouchInputHIDEventDriver", &AppleMultitouchHIDEventDriverV2::gMetaClass, 0x190u);
  result->__vftable = off_15228;
  return result;
}

OSMetaClass *AppleMultitouchTrackpadHIDEventDriver::MetaClass::MetaClass(OSMetaClass *this)
{
  result = OSMetaClass::OSMetaClass(this, "AppleMultitouchTrackpadHIDEventDriver", &AppleMultitouchInputHIDEventDriver::gMetaClass, 0x1A8u);
  result->__vftable = off_15A68;
  return result;
}

{
  result = OSMetaClass::OSMetaClass(this, "AppleMultitouchTrackpadHIDEventDriver", &AppleMultitouchInputHIDEventDriver::gMetaClass, 0x1A8u);
  result->__vftable = off_15A68;
  return result;
}

void AppleMultitouchTrackpadHIDEventDriver::MetaClass::~MetaClass(OSMetaClass *this)
{
  OSMetaClass::~OSMetaClass(this);
}

{
  OSMetaClass::~OSMetaClass(this);
}

void AppleMultitouchTrackpadHIDEventDriver::AppleMultitouchTrackpadHIDEventDriver(AppleMultitouchTrackpadHIDEventDriver *this, const OSMetaClass *a2)
{
  AppleMultitouchInputHIDEventDriver::AppleMultitouchInputHIDEventDriver(this, a2);
  *v2 = off_152C0;
  v2[51] = 0;
  v2[50] = 0;
}

{
  AppleMultitouchInputHIDEventDriver::AppleMultitouchInputHIDEventDriver(this, a2);
  *v2 = off_152C0;
  v2[51] = 0;
  v2[50] = 0;
}

void AppleMultitouchTrackpadHIDEventDriver::~AppleMultitouchTrackpadHIDEventDriver(AppleMultitouchTrackpadHIDEventDriver *this)
{
  *this = off_152C0;
  v2 = *(this + 51);
  if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  *(this + 51) = 0;
  v3 = *(this + 50);
  if (v3)
  {
    (*(*v3 + 40))(v3);
  }

  *(this + 50) = 0;

  AppleMultitouchInputHIDEventDriver::~AppleMultitouchInputHIDEventDriver(this);
}

{
  *this = off_152C0;
  v2 = *(this + 51);
  if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  *(this + 51) = 0;
  v3 = *(this + 50);
  if (v3)
  {
    (*(*v3 + 40))(v3);
  }

  *(this + 50) = 0;

  AppleMultitouchInputHIDEventDriver::~AppleMultitouchInputHIDEventDriver(this);
}

{
  AppleMultitouchTrackpadHIDEventDriver::~AppleMultitouchTrackpadHIDEventDriver(this);

  _OSObject_typed_operator_delete(&AppleMultitouchTrackpadHIDEventDriver_ktv, this, 424);
}

AppleMultitouchInputHIDEventDriver *AppleMultitouchTrackpadHIDEventDriver::MetaClass::alloc(AppleMultitouchTrackpadHIDEventDriver::MetaClass *this)
{
  v1 = OSObject_typed_operator_new();
  AppleMultitouchInputHIDEventDriver::AppleMultitouchInputHIDEventDriver(v1, &AppleMultitouchTrackpadHIDEventDriver::gMetaClass);
  *v2 = off_152C0;
  v2[51] = 0;
  v2[50] = 0;
  OSMetaClass::instanceConstructed(&AppleMultitouchTrackpadHIDEventDriver::gMetaClass);
  return v1;
}

void AppleMultitouchTrackpadHIDEventDriver::AppleMultitouchTrackpadHIDEventDriver(AppleMultitouchTrackpadHIDEventDriver *this)
{
  AppleMultitouchInputHIDEventDriver::AppleMultitouchInputHIDEventDriver(this, &AppleMultitouchTrackpadHIDEventDriver::gMetaClass);
  *v1 = off_152C0;
  v1[51] = 0;
  v1[50] = 0;
  OSMetaClass::instanceConstructed(&AppleMultitouchTrackpadHIDEventDriver::gMetaClass);
}

{
  AppleMultitouchInputHIDEventDriver::AppleMultitouchInputHIDEventDriver(this, &AppleMultitouchTrackpadHIDEventDriver::gMetaClass);
  *v1 = off_152C0;
  v1[51] = 0;
  v1[50] = 0;
  OSMetaClass::instanceConstructed(&AppleMultitouchTrackpadHIDEventDriver::gMetaClass);
}

uint64_t AppleMultitouchTrackpadHIDEventDriver::init(AppleMultitouchTrackpadHIDEventDriver *this, OSDictionary *a2)
{
  v3 = AppleMultitouchInputHIDEventDriver::init(this, a2);
  if (v3)
  {
    *(this + 394) = 0;
    *(this + 417) = 0;
  }

  else
  {
    _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[HID] [%s] [Error] %s::%s super::init() failed\n", "ATC", "AppleMultitouchTrackpadHIDEventDriver", "init");
  }

  return v3;
}

uint64_t AppleMultitouchTrackpadHIDEventDriver::free(AppleMultitouchTrackpadHIDEventDriver *this)
{
  v2 = *(this + 50);
  if (v2)
  {
    (*(*v2 + 128))(v2);
  }

  v3 = *(this + 51);
  if (v3)
  {
    (*(*v3 + 128))(v3);
  }

  return AppleMultitouchInputHIDEventDriver::free(this);
}

uint64_t AppleMultitouchTrackpadHIDEventDriver::start(AppleMultitouchTrackpadHIDEventDriver *this, IOService *a2)
{
  v4 = AppleMultitouchHIDEventDriverV2::start(this, a2);
  if ((v4 & 1) == 0)
  {
    _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[HID] [%s] [Error] %s::%s super::start failed\n", "ATC", "AppleMultitouchTrackpadHIDEventDriver", "start");
    (*(*this + 696))(this, a2);
  }

  return v4;
}

uint64_t AppleMultitouchTrackpadHIDEventDriver::stop(AppleMultitouchTrackpadHIDEventDriver *this, IOService *a2)
{
  v4 = *(this + 50);
  if (v4)
  {
    (*(*v4 + 128))(v4);
  }

  v5 = *(this + 51);
  if (v5)
  {
    (*(*v5 + 128))(v5);
  }

  return AppleMultitouchInputHIDEventDriver::stop(this, a2);
}

uint64_t AppleMultitouchTrackpadHIDEventDriver::CheckOtherMouseEntry(AppleMultitouchTrackpadHIDEventDriver *this, OSObject *a2, void *a3, IOService *a4, IONotifier *a5)
{
  if (this)
  {
    (*(*this + 1912))(this, a2, a3, a4, a5);
  }

  return 1;
}

BOOL AppleMultitouchTrackpadHIDEventDriver::isValidPointingDevice(IORegistryEntry *this, IOHIDDevice *a2)
{
  v3 = this;
  v4 = (this->copyProperty_4)(this, "HIDVirtualDevice");
  v5 = OSMetaClassBase::safeMetaCast(v4, OSBoolean::metaClass);
  v6 = v5;
  if (v4)
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 0;
  }

  if (v7)
  {
    (v4->release_0)(v4);
  }

  if (v6 == *kOSBooleanTrue)
  {
    v14 = 0;
    goto LABEL_25;
  }

  v8 = (a2->newPrimaryUsageNumber)(a2);
  v9 = (a2->newPrimaryUsagePageNumber)(a2);
  v10 = v9;
  if (!v8)
  {
    v14 = 0;
    goto LABEL_21;
  }

  if (v9)
  {
    v11 = (*(*v9 + 168))(v9);
    v12 = (*(*v8 + 168))(v8) - 1;
    if (v11 != 1 || v12 > 1)
    {
      v14 = 0;
LABEL_22:
      (*(*v10 + 40))(v10);
LABEL_23:
      if (!v8)
      {
        goto LABEL_25;
      }

      goto LABEL_24;
    }

    do
    {
      RegistryEntryID = IORegistryEntry::getRegistryEntryID(a2);
      v16 = IORegistryEntry::getRegistryEntryID(v3);
      v7 = RegistryEntryID == v16;
      v14 = RegistryEntryID != v16;
      if (v7)
      {
        break;
      }

      v3 = (v3->getParentEntry)(v3, gIOServicePlane);
    }

    while (v3);
LABEL_21:
    if (!v10)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  v14 = 0;
LABEL_24:
  (*(*v8 + 40))(v8);
LABEL_25:
  if (v6)
  {
    (v6->release_0)(v6);
  }

  return v14;
}

OSDictionary *AppleMultitouchTrackpadHIDEventDriver::checkOtherMouse(AppleMultitouchTrackpadHIDEventDriver *this)
{
  v2 = (*(*this + 328))(this, "TrackpadEmbedded");
  result = OSMetaClassBase::safeMetaCast(v2, OSBoolean::metaClass);
  v4 = result;
  if (v2)
  {
    v5 = result == 0;
  }

  else
  {
    v5 = 0;
  }

  if (v5)
  {
    result = (v2->release_0)(v2);
  }

  if (v4 != *kOSBooleanTrue)
  {
    v6 = 0;
LABEL_9:
    v7 = 0;
    goto LABEL_10;
  }

  result = IOService::serviceMatching("IOHIDDevice", 0);
  v6 = result;
  if (!result)
  {
    goto LABEL_9;
  }

  result = IOService::getMatchingServices(result);
  v7 = result;
  if (result)
  {
    result = (result->getNextObjectForIterator)(result);
    if (!result)
    {
      goto LABEL_27;
    }

    v9 = result;
    v10 = 0;
    do
    {
      v10 += (*(*this + 1904))(this, v9);
      result = (v7->getNextObjectForIterator)(v7);
      v9 = result;
    }

    while (result);
    if (v10)
    {
      if (*(this + 394))
      {
        goto LABEL_10;
      }

      v11 = 1;
    }

    else
    {
LABEL_27:
      if ((*(this + 394) & 1) == 0)
      {
        goto LABEL_10;
      }

      v11 = 0;
    }

    result = (*(*this + 1920))(this, v11);
  }

LABEL_10:
  if (v4)
  {
    result = (v4->release_0)(v4);
  }

  if (v7)
  {
    result = (v7->release_0)(v7);
  }

  if (v6)
  {
    release_0 = v6->release_0;

    return (release_0)(v6);
  }

  return result;
}

uint64_t AppleMultitouchTrackpadHIDEventDriver::setSystemProperties(AppleMultitouchTrackpadHIDEventDriver *this, OSDictionary *a2)
{
  v4 = (*(*this + 328))(this, "TrackpadEmbedded");
  v5 = OSMetaClassBase::safeMetaCast(v4, OSBoolean::metaClass);
  v6 = v5;
  if (v4)
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 0;
  }

  if (v7)
  {
    (v4->release_0)(v4);
  }

  if (v6 == *kOSBooleanTrue)
  {
    v8 = (a2->getObject_1)(a2, "TrackpadUserPreferences");
    v9 = OSMetaClassBase::safeMetaCast(v8, OSDictionary::metaClass);
    if (v9)
    {
      v10 = v9;
      v11 = (v9->__vftable[3].~OSMetaClassBase)(v9, "USBMouseStopsTrackpad");
      v12 = OSNumber::metaClass;
      v13 = OSMetaClassBase::safeMetaCast(v11, OSNumber::metaClass);
      if (v13)
      {
        v14 = (v13->__vftable[1].isEqualTo)(v13);
        if ((v14 != 0) != (*(this + 416) & 1))
        {
          *(this + 416) = v14 != 0;
          if (!v14)
          {
            (*(*this + 1920))(this, 0);
            v15 = *(this + 50);
            if (v15)
            {
              (*(*v15 + 128))(v15);
              v16 = *(this + 50);
              if (v16)
              {
                (*(*v16 + 40))(v16);
              }

              *(this + 50) = 0;
            }

            v17 = *(this + 51);
            if (v17)
            {
              (*(*v17 + 128))(v17);
              v18 = *(this + 51);
              if (v18)
              {
                (*(*v18 + 40))(v18);
              }

              *(this + 51) = 0;
            }
          }
        }
      }

      v19 = (v10->__vftable[3].~OSMetaClassBase)(v10, "MouseKeysStopsTrackpad");
      v20 = OSMetaClassBase::safeMetaCast(v19, v12);
      if (v20)
      {
        *(this + 397) = (v20->__vftable[1].isEqualTo)(v20) != 0;
      }

      v21 = (v10->__vftable[3].~OSMetaClassBase)(v10, "HIDMouseKeysOn");
      v22 = OSMetaClassBase::safeMetaCast(v21, v12);
      if (v22)
      {
        v23 = (v22->__vftable[1].isEqualTo)(v22);
        *(this + 396) = v23 != 0;
        if (v23)
        {
LABEL_24:
          v24 = *(this + 397);
LABEL_27:
          (*(*this + 1928))(this, v24 & 1);
          goto LABEL_28;
        }
      }

      else if (*(this + 396))
      {
        goto LABEL_24;
      }

      v24 = 0;
      goto LABEL_27;
    }
  }

LABEL_28:
  v25 = IOHIDEventService::setSystemProperties(this, a2);
  if (v6)
  {
    (v6->release_0)(v6);
  }

  return v25;
}

void AppleMultitouchTrackpadHIDEventDriver::handleInterruptReport(AppleMultitouchTrackpadHIDEventDriver *this, unint64_t a2, IOMemoryDescriptor *a3, IOHIDReportType a4, int a5)
{
  if (a3 && *(this + 41) && (a3->getLength)(a3))
  {
    v10 = (a3->getLength)(a3);
    v11 = v10;
    if (v10 > (*(**(this + 41) + 320))())
    {
      _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[HID] [%s] [Error] %s::%s Input report length (%u bytes) > capacity. Dropping report.\n", "ATC", "AppleMultitouchTrackpadHIDEventDriver", "handleInterruptReport", v10);
      return;
    }

    v12 = (*(**(this + 41) + 328))(*(this + 41));
    (a3->readBytes)(a3, 0, v12, v10);
    v31 = 0;
    if (*(this + 416))
    {
      v13 = IOService::serviceMatching("IOHIDDevice", 0);
      if (!*(this + 50))
      {
        v14 = IOService::addMatchingNotification(gIOFirstMatchNotification, v13, AppleMultitouchTrackpadHIDEventDriver::CheckOtherMouseEntry, this, 0, 0);
        v15 = *(this + 50);
        if (v15)
        {
          (*(*v15 + 40))(v15);
        }

        *(this + 50) = v14;
      }

      if (!*(this + 51))
      {
        v16 = IOService::addMatchingNotification(gIOTerminatedNotification, v13, AppleMultitouchTrackpadHIDEventDriver::CheckOtherMouseEntry, this, 0, 0);
        v17 = *(this + 51);
        if (v17)
        {
          (*(*v17 + 40))(v17);
        }

        *(this + 51) = v16;
      }

      if (v13)
      {
        (v13->release_0)(v13);
      }
    }

    (*(**(this + 41) + 304))(*(this + 41), v10);
    if (a5 == 2)
    {
      if (v10 <= 7)
      {
        a5 = 2;
LABEL_60:
        AppleMultitouchHIDEventDriverV2::handleInterruptReport(this, a2, *(this + 41), a4, a5);
        return;
      }
    }

    else if (a5 != 117 && a5 != 49)
    {
      goto LABEL_60;
    }

    if ((*(*this + 1760))(this))
    {
      v18 = a5 == 2 ? 8 : v10;
      if (_atc_extractTrackingAndButtonState(&v31, v12, v18, a5))
      {
        if ((*(this + 336) & 1) != 0 && v10 >= 9)
        {
          WORD1(v31) = 0;
        }

        v19 = (*(*this + 1760))(this);
        v20 = (*(*v19 + 328))(v19, "HSTouchHIDService");
        v21 = OSMetaClassBase::safeMetaCast(v20, OSBoolean::metaClass);
        v22 = v21;
        if (v20)
        {
          v23 = v21 == 0;
        }

        else
        {
          v23 = 0;
        }

        if (v23)
        {
          (v20->release_0)(v20);
        }

        v24 = BYTE6(v31);
        v26 = (a5 & 0xFFFFFFEF) != 2 && v22 == *kOSBooleanTrue;
        if ((v31 & 0x2000000000000) == 0 && !v26 && (*(this + 394) & 1) == 0 && (*(this + 395) & 1) == 0)
        {
          v27 = (*(*this + 1760))(this);
          (*(*v27 + 1488))(v27, SBYTE2(v31), SBYTE3(v31), BYTE1(v31), 0);
          v24 = BYTE6(v31);
        }

        if ((*(this + 417) & 1) == 0 && (v24 & 2) != 0)
        {
          v28 = (*(*this + 1760))(this);
          (*(*v28 + 1488))(v28, 0, 0, 0, 0);
          v24 = BYTE6(v31);
        }

        *(this + 417) = (v24 & 2) != 0;
        if (v22)
        {
          (v22->release_0)(v22);
        }
      }
    }

    if (v10 != 8)
    {
      if (a5 == 2)
      {
        if (&v12[v10] < v12)
        {
          AppleDeviceManagementHIDEventService::processBatteryState();
        }

        if (v10 <= 8uLL)
        {
          AppleDeviceManagementHIDEventService::processBatteryState();
        }

        v29 = v12 + 8;
        if (((v12 >= 0xFFFFFFFFFFFFFFF8) << 63) >> 63 != v12 >= 0xFFFFFFFFFFFFFFF8)
        {
          AppleDeviceManagementHIDEventService::processBatteryState();
        }

        v30 = v10 - 8;
        if (v30 >= 0xFFFFFFF8)
        {
          libkern::bounded_array_ref<unsigned char,os_detail::panic_trapping_policy>::slice();
        }

        if (v30 + 8 > v11)
        {
          libkern::bounded_array_ref<unsigned char,os_detail::panic_trapping_policy>::slice();
        }

        a5 = *v29;
        memmove(v12, v29, v30);
        (*(**(this + 41) + 304))();
      }

      goto LABEL_60;
    }
  }
}

uint64_t AppleMultitouchTrackpadHIDEventDriver::multitouchDeviceDidStart(IORecursiveLock **this)
{
  v2 = AppleMultitouchInputHIDEventDriver::multitouchDeviceDidStart(this);
  if (v2)
  {
    v3 = v2;
    _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[HID] [%s] [Error] %s::%s super::multitouchDeviceDidStart returned 0x%08x\n", "ATC", "AppleMultitouchTrackpadHIDEventDriver", "multitouchDeviceDidStart", v2);
  }

  else if ((*(*this + 220))(this))
  {
    v4 = (*(*this + 220))(this);
    if (*(this + 394))
    {
      v5 = 1;
    }

    else
    {
      v5 = *(this + 395);
    }

    (*(*v4 + 1776))(v4, v5 & 1);
    return 0;
  }

  else
  {
    return 3758097084;
  }

  return v3;
}

_BYTE *AppleMultitouchTrackpadHIDEventDriver::setBuiltinTrackpadDisablingMouseAttached(_BYTE *this, char a2)
{
  v2 = this;
  if (this[394])
  {
    v3 = 1;
  }

  else
  {
    v3 = this[395] & 1;
  }

  this[394] = a2;
  if (a2)
  {
    v4 = 1;
  }

  else
  {
    v4 = this[395];
  }

  if (v3 != (v4 & 1))
  {
    this = (*(*this + 1760))(this);
    if (this)
    {
      v5 = *(*(*(*v2 + 1760))(v2) + 1776);

      return v5();
    }
  }

  return this;
}

_BYTE *AppleMultitouchTrackpadHIDEventDriver::setBuiltinTrackpadDisablingMouseKeysEnabled(_BYTE *this, unsigned __int8 a2)
{
  v2 = this;
  v3 = this[394];
  if (v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = this[395] & 1;
  }

  this[395] = a2;
  if (v4 != ((v3 | a2) & 1))
  {
    this = (*(*this + 1760))(this);
    if (this)
    {
      v5 = *(*(*(*v2 + 1760))(v2) + 1776);

      return v5();
    }
  }

  return this;
}

OSMetaClass *_GLOBAL__sub_I_AppleMultitouchTrackpadHIDEventDriver_cpp()
{
  result = OSMetaClass::OSMetaClass(&AppleMultitouchTrackpadHIDEventDriver::gMetaClass, "AppleMultitouchTrackpadHIDEventDriver", &AppleMultitouchInputHIDEventDriver::gMetaClass, 0x1A8u);
  result->__vftable = off_15A68;
  return result;
}

OSMetaClass *AppleMultitouchMouseHIDEventDriver::MetaClass::MetaClass(OSMetaClass *this)
{
  result = OSMetaClass::OSMetaClass(this, "AppleMultitouchMouseHIDEventDriver", &AppleMultitouchInputHIDEventDriver::gMetaClass, 0x190u);
  result->__vftable = off_162A0;
  return result;
}

{
  result = OSMetaClass::OSMetaClass(this, "AppleMultitouchMouseHIDEventDriver", &AppleMultitouchInputHIDEventDriver::gMetaClass, 0x190u);
  result->__vftable = off_162A0;
  return result;
}

void AppleMultitouchMouseHIDEventDriver::MetaClass::~MetaClass(OSMetaClass *this)
{
  OSMetaClass::~OSMetaClass(this);
}

{
  OSMetaClass::~OSMetaClass(this);
}

void AppleMultitouchMouseHIDEventDriver::AppleMultitouchMouseHIDEventDriver(AppleMultitouchMouseHIDEventDriver *this, const OSMetaClass *a2)
{
  AppleMultitouchInputHIDEventDriver::AppleMultitouchInputHIDEventDriver(this, a2);
  *v2 = off_15B00;
}

{
  AppleMultitouchInputHIDEventDriver::AppleMultitouchInputHIDEventDriver(this, a2);
  *v2 = off_15B00;
}

void AppleMultitouchMouseHIDEventDriver::~AppleMultitouchMouseHIDEventDriver(AppleMultitouchMouseHIDEventDriver *this)
{
  AppleMultitouchInputHIDEventDriver::~AppleMultitouchInputHIDEventDriver(this);
}

{
  AppleMultitouchInputHIDEventDriver::~AppleMultitouchInputHIDEventDriver(this);
}

{
  AppleMultitouchInputHIDEventDriver::~AppleMultitouchInputHIDEventDriver(this);

  _OSObject_typed_operator_delete(&AppleMultitouchMouseHIDEventDriver_ktv, this, 400);
}

AppleMultitouchInputHIDEventDriver *AppleMultitouchMouseHIDEventDriver::MetaClass::alloc(AppleMultitouchMouseHIDEventDriver::MetaClass *this)
{
  v1 = OSObject_typed_operator_new();
  AppleMultitouchInputHIDEventDriver::AppleMultitouchInputHIDEventDriver(v1, &AppleMultitouchMouseHIDEventDriver::gMetaClass);
  *v2 = off_15B00;
  OSMetaClass::instanceConstructed(&AppleMultitouchMouseHIDEventDriver::gMetaClass);
  return v1;
}

void AppleMultitouchMouseHIDEventDriver::AppleMultitouchMouseHIDEventDriver(AppleMultitouchMouseHIDEventDriver *this)
{
  AppleMultitouchInputHIDEventDriver::AppleMultitouchInputHIDEventDriver(this, &AppleMultitouchMouseHIDEventDriver::gMetaClass);
  *v1 = off_15B00;
  OSMetaClass::instanceConstructed(&AppleMultitouchMouseHIDEventDriver::gMetaClass);
}

{
  AppleMultitouchInputHIDEventDriver::AppleMultitouchInputHIDEventDriver(this, &AppleMultitouchMouseHIDEventDriver::gMetaClass);
  *v1 = off_15B00;
  OSMetaClass::instanceConstructed(&AppleMultitouchMouseHIDEventDriver::gMetaClass);
}

uint64_t AppleMultitouchMouseHIDEventDriver::init(OSMetaClassBase *this, OSDictionary *a2)
{
  v3 = AppleMultitouchInputHIDEventDriver::init(this, a2);
  if (v3)
  {
    BYTE3(this[49].__vftable) = 3;
    BYTE4(this[49].__vftable) = 55;
  }

  else
  {
    _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[HID] [%s] [Error] %s::%s super::init() failed\n", "ATC", "AppleMultitouchMouseHIDEventDriver", "init");
  }

  return v3;
}

uint64_t AppleMultitouchMouseHIDEventDriver::start(AppleMultitouchMouseHIDEventDriver *this, IOService *a2)
{
  v4 = AppleMultitouchHIDEventDriverV2::start(this, a2);
  if (v4)
  {
    if ((*(this + 397) & 1) == 0)
    {
      (*(*this + 1912))(this);
    }
  }

  else
  {
    _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[HID] [%s] [Error] %s::%s super::start failed\n", "ATC", "AppleMultitouchMouseHIDEventDriver", "start");
    (*(*this + 696))(this, a2);
  }

  return v4;
}

void AppleMultitouchMouseHIDEventDriver::handleInterruptReport(AppleMultitouchMouseHIDEventDriver *this, unint64_t a2, IOMemoryDescriptor *a3, IOHIDReportType a4, unsigned int a5)
{
  v18 = 0;
  v10 = (a3->getLength)(a3);
  v11 = v10;
  if (v10 <= (*(**(this + 41) + 320))())
  {
    v12 = (*(**(this + 41) + 328))(*(this + 41));
    (a3->readBytes)(a3, 0, v12, v10);
    (*(**(this + 41) + 304))();
    if (a5 == 18)
    {
      if (v10 == 8 || ((v10 + 2) & 7) == 0)
      {
        (*(**(this + 41) + 304))(*(this + 41), v10);
        if ((*(*this + 1760))(this))
        {
          if (_atc_parseSimpleMouseV3Packet(&v18, v12, 8))
          {
            v14 = (*(*this + 1760))(this);
            (*(*v14 + 1488))(v14, SWORD1(v18), SWORD2(v18), BYTE1(v18) & 3, 1600);
            if ((*(this + 394) & 1) != BYTE1(v18) >> 7)
            {
              *(this + 394) = BYTE1(v18) >> 7;
              v15 = (*(*this + 1760))(this);
              v16 = -(*(this + 394) & 1);
              (*(*v15 + 1496))();
            }
          }

          if (v10 >= 9uLL)
          {
            v17 = v10 - 8;
            if (v17 >= 0xFFFFFFF8)
            {
              libkern::bounded_array_ref<unsigned char,os_detail::panic_trapping_policy>::slice();
            }

            if (v17 + 8 > v11)
            {
              libkern::bounded_array_ref<unsigned char,os_detail::panic_trapping_policy>::slice();
            }

            memmove(v12, v12 + 8, v17);
            (*(**(this + 41) + 304))();
            if (&v12[v11] < v12 || HIDWORD(v11))
            {
              AppleDeviceManagementHIDEventService::processBatteryState();
            }

            AppleMultitouchHIDEventDriverV2::handleInterruptReport(this, a2, *(this + 41), a4, *v12);
          }
        }
      }

      else
      {
        _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[HID] [%s] [Error] %s::%s Received 0x%02X report of incorrect size!\n", "ATC", "AppleMultitouchMouseHIDEventDriver", "handleInterruptReport", 18);
      }
    }

    else
    {

      AppleMultitouchHIDEventDriverV2::handleInterruptReport(this, a2, a3, a4, a5);
    }
  }

  else
  {
    _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[HID] [%s] [Error] %s::%s Input report length (%u bytes) > capacity. Dropping report.\n", "ATC", "AppleMultitouchMouseHIDEventDriver", "handleInterruptReport", v10);
  }
}

uint64_t AppleMultitouchMouseHIDEventDriver::setSystemProperties(IOHIDEventService *this, OSDictionary *a2)
{
  v4 = (a2->getObject_1)(a2, "MouseUserPreferences");
  v5 = OSMetaClassBase::safeMetaCast(v4, OSDictionary::metaClass);
  if (v5)
  {
    setProperty_0 = this->__vftable[1].setProperty_0;

    return (setProperty_0)(this, v5);
  }

  else
  {

    return IOHIDEventService::setSystemProperties(this, a2);
  }
}

uint64_t AppleMultitouchMouseHIDEventDriver::setMultitouchPreferences(AppleMultitouchMouseHIDEventDriver *this, OSDictionary *a2)
{
  result = AppleMultitouchInputHIDEventDriver::setMultitouchPreferences(this, a2);
  if (!result)
  {
    v5 = *(*this + 1904);

    return v5(this, a2);
  }

  return result;
}

uint64_t AppleMultitouchMouseHIDEventDriver::setMousePreferences(AppleMultitouchMouseHIDEventDriver *this, OSDictionary *a2)
{
  v4 = (a2->getObject_1)(a2, "MouseButtonMode");
  v5 = OSMetaClassBase::safeMetaCast(v4, OSString::metaClass);
  v6 = v5;
  if (v5)
  {
    if ((v5->__vftable[1].taggedRelease)(v5, "TwoButton"))
    {
      v7 = 1;
    }

    else if ((v6->__vftable[1].taggedRelease)(v6, "TwoButtonSwapped"))
    {
      v7 = 2;
    }

    else
    {
      if (!(v6->__vftable[1].taggedRelease)(v6, "OneButton"))
      {
LABEL_9:
        LODWORD(v6) = 0;
        goto LABEL_11;
      }

      v7 = 3;
    }

    if (v7 != *(this + 395))
    {
      *(this + 395) = v7;
      LODWORD(v6) = 1;
      goto LABEL_11;
    }

    goto LABEL_9;
  }

LABEL_11:
  v8 = (a2->getObject_1)(a2, "MouseButtonDivision");
  v9 = OSMetaClassBase::safeMetaCast(v8, OSNumber::metaClass);
  if (v9 && (v10 = (v9->__vftable[1].serialize)(v9), v10 <= 0x64) && v10 != *(this + 396))
  {
    *(this + 396) = v10;
  }

  else if (!v6)
  {
    return 0;
  }

  *(this + 397) = 1;
  v12 = *(*this + 1912);

  return v12(this);
}

uint64_t AppleMultitouchMouseHIDEventDriver::syncMousePreferences(const OSMetaClassBase *this)
{
  if (!(this->__vftable[8].getMetaClass)(this))
  {
    return 3758097112;
  }

  v2 = (this->__vftable[8].getMetaClass)(this);
  serialize = this->__vftable[18].serialize;
  if (!serialize)
  {
    v8.ptr = AppleMultitouchMouseHIDEventDriver::syncMousePreferencesGated;
    v8.adj = 0;
    v4 = OSMetaClassBase::_ptmf2ptf(this, v8);
    if (v4)
    {
      serialize = v4;
    }

    else
    {
      serialize = 0;
    }
  }

  v6 = *(*v2 + 256);

  return v6(v2, serialize, this, 0, 0, 0, 0);
}

uint64_t AppleMultitouchMouseHIDEventDriver::syncMousePreferencesGated(AppleMultitouchMouseHIDEventDriver *this)
{
  v2[0] = *(this + 395);
  v2[1] = *(this + 396);
  return (*(*this + 1784))(this, 6, v2, 2, 3);
}

OSMetaClass *_GLOBAL__sub_I_AppleMultitouchMouseHIDEventDriver_cpp()
{
  result = OSMetaClass::OSMetaClass(&AppleMultitouchMouseHIDEventDriver::gMetaClass, "AppleMultitouchMouseHIDEventDriver", &AppleMultitouchInputHIDEventDriver::gMetaClass, 0x190u);
  result->__vftable = off_162A0;
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

uint64_t AppleDeviceManagementHIDEventService::getDeviceColor(AppleDeviceManagementHIDEventService *this)
{
  bzero(v26, 0x200uLL);
  v25 = 512;
  _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[HID] [%s] %s::%s Getting device color, legacy devices may not support this.\n", "ATC", "AppleDeviceManagementHIDEventService", "getDeviceColor");
  v2 = 0;
  if ((*(*this + 1904))(this, 20, v26, &v25, 2))
  {
    v3 = 0;
  }

  else
  {
    v3 = v25 == 1;
  }

  if (v3)
  {
    v2 = v26[0];
    _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[HID] [%s] %s::%s Device Color ID = [%u]\n", "ATC", "AppleDeviceManagementHIDEventService", "getDeviceColor", v26[0]);
  }

  v4 = (*(*this + 120))(this, "ColorIDMapping", gIOServicePlane, 0);
  v5 = OSMetaClassBase::safeMetaCast(v4, OSArray::metaClass);
  v6 = v5;
  if (v5)
  {
    v7 = OSCollectionIterator::withCollection(v5);
    if (!v7)
    {
      goto LABEL_27;
    }

    v4 = v7;
    v23 = v6;
    v24 = this;
    v8 = 0;
    v9 = OSDictionary::metaClass;
    v10 = OSNumber::metaClass;
LABEL_10:
    v11 = v8;
    while (1)
    {
      v12 = (v4->__vftable[1].retain)(v4);
      if (v12)
      {
        OUTLINED_FUNCTION_0();
        (*(v13 + 32))(v12);
      }

      v8 = OSMetaClassBase::safeMetaCast(v12, v9);
      if (v8)
      {
        v12 = 0;
      }

      if (v11)
      {
        (v11->release_0)(v11);
      }

      if (v12)
      {
        OUTLINED_FUNCTION_0();
        (*(v14 + 40))(v12);
      }

      if (!v8)
      {
        break;
      }

      v15 = (v8->__vftable[3].~OSMetaClassBase)(v8, "From");
      v16 = OSMetaClassBase::safeMetaCast(v15, v10);
      v17 = (v8->__vftable[3].~OSMetaClassBase)(v8, "To");
      v18 = OSMetaClassBase::safeMetaCast(v17, v10);
      v11 = v8;
      if (v16)
      {
        v19 = v18;
        v11 = v8;
        if (v18)
        {
          v11 = v8;
          if ((v16->__vftable[1].serialize)(v16) == v2)
          {
            OUTLINED_FUNCTION_0();
            v2 = (*(v20 + 152))(v19);
            goto LABEL_10;
          }
        }
      }
    }

    v6 = v23;
    this = v24;
  }

  else if (!v4)
  {
    goto LABEL_27;
  }

  (v4->release_0)(v4);
LABEL_27:
  result = (*(*this + 224))(this, "ColorID", v2, 8);
  if (v6)
  {
    OUTLINED_FUNCTION_0();
    return (*(v22 + 40))(v6);
  }

  return result;
}

void AppleDeviceManagementHIDEventService::processBatteryState()
{
  os_detail::panic_trapping_policy::trap("This bounded_ptr is pointing to memory outside of what can be represented by a native pointer.");
}

{
  os_detail::panic_trapping_policy::trap("bounded_ptr<T>::operator*: Dereferencing this pointer would access memory outside of the bounds set originally");
}

{
  os_detail::panic_trapping_policy::trap("The range of valid memory is too large to be represented by this type, or [begin, end) is not a well-formed range");
}

{
  os_detail::panic_trapping_policy::trap("bounded_array_ref: Can't construct from a size greater than UINT32_MAX");
}

void libkern::bounded_array_ref<unsigned char,os_detail::panic_trapping_policy>::slice()
{
  os_detail::panic_trapping_policy::trap("bounded_array_ref: invalid slice provided, the indices are of bounds for the bounded_array_ref");
}

{
  os_detail::panic_trapping_policy::trap("bounded_array_ref: n + m is larger than the size of any bounded_array_ref");
}

uint64_t AppleMultitouchInputHIDEventDriver::handleStart(OSMetaClassBase *this, IOService *a2)
{
  {
    _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[HID] [%s] [Error] %s::%s super::handleStart failed\n", "ATC", "AppleMultitouchInputHIDEventDriver", "handleStart");
    return 0;
  }

  v4 = (this->__vftable[8].getMetaClass)(this);
  v5 = this[48].__vftable;
  this[48].__vftable = v4;
  if (v4)
  {
    (*(*v4 + 32))(v4);
  }

  if (v5)
  {
    (*(v5->~OSMetaClassBase + 5))(v5);
  }

  if (!this[48].__vftable)
  {
    _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[HID] [%s] [Error] %s::%s failed to get work loop\n", "ATC", "AppleMultitouchInputHIDEventDriver", "handleStart");
    return 0;
  }

  v6 = (this->__vftable[3].release)(this, "InterfaceAvailableOnDeviceReadyNotification");
  v7 = OSBoolean::metaClass;
  v8 = OSMetaClassBase::safeMetaCast(v6, OSBoolean::metaClass);
  v9 = kOSBooleanTrue;
  if (v8)
  {
    v10 = this + 49;
    LOBYTE(this[49].__vftable) = v8 == *kOSBooleanTrue;
    v6 = v8;
  }

  else
  {
    v10 = this + 49;
    LOBYTE(this[49].__vftable) = *kOSBooleanTrue == 0;
    if (!v6)
    {
      goto LABEL_13;
    }
  }

  (v6->release_0)(v6);
LABEL_13:
  v12 = (this->__vftable[3].release)(this, "UnleashUnsupported");
  v13 = OSMetaClassBase::safeMetaCast(v12, v7);
  if (v13)
  {
    v14 = &this[49].__vftable + 1;
    BYTE1(this[49].__vftable) = v13 != *v9;
    v12 = v13;
  }

  else
  {
    v14 = &this[49].__vftable + 1;
    BYTE1(this[49].__vftable) = *v9 != 0;
    if (!v12)
    {
      goto LABEL_17;
    }
  }

  (v12->release_0)(v12);
LABEL_17:
  v15 = *v14;
  if (v10->__vftable)
  {
    if (*v14)
    {
      v16 = AIDInterface::metaClass;
      while (1)
      {
        v17 = OSMetaClassBase::safeMetaCast(a2, v16);
        if (v17)
        {
          break;
        }

        a2 = (a2->getParentEntry)(a2, gIOServicePlane);
        if (!a2)
        {
          return 1;
        }
      }

      v20 = v17;
      RegistryEntryID = IORegistryEntry::getRegistryEntryID(a2);
      _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[HID] [%s] %s::%s Transport interface 0x%08llX\n", "ATC", "AppleMultitouchInputHIDEventDriver", "handleStart", RegistryEntryID);
      v22 = (v20->__vftable[13].retain)(v20, this, AppleMultitouchInputHIDEventDriver::handleInterfaceNotification);
      if (v22)
      {
        _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[HID] [%s] [Error] %s::%s setNotifyHandler error 0x%08X\n", "ATC", "AppleMultitouchInputHIDEventDriver", "handleStart", v22);
        return 0;
      }

      return 1;
    }

    return 0;
  }

  else
  {
    if ((*v14 & 1) == 0)
    {
      return 1;
    }

    v18 = this->__vftable[18].~OSMetaClassBase;
    if (!v18)
    {
      v25.ptr = AppleMultitouchInputHIDEventDriver::systemPowerChangeHandler;
      v25.adj = 0;
      v19 = OSMetaClassBase::_ptmf2ptf(this, v25);
      if (v19)
      {
        v18 = v19;
      }

      else
      {
        v18 = 0;
      }
    }

    v23 = registerPrioritySleepWakeInterest(v18, this, 0);
    v24 = this[45].__vftable;
    this[45].__vftable = v23;
    if (v23)
    {
      (v23->retain)(v23);
    }

    if (v24)
    {
      (*(v24->~OSMetaClassBase + 5))(v24);
    }

    if (this[45].__vftable)
    {
      return 1;
    }

    _os_log_internal(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[HID] [%s] [Error] %s::%s registerPrioritySleepWakeInterest failed\n", "ATC", "AppleMultitouchInputHIDEventDriver", "handleStart");
    return 0;
  }
}