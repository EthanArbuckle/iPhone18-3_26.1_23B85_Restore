OSMetaClass *PSVR2SenseDeviceFastPathUserClient::MetaClass::MetaClass(OSMetaClass *this)
{
  result = OSMetaClass::OSMetaClass(this, "PSVR2SenseDeviceFastPathUserClient", &IOUserClient2022::gMetaClass, 0xF0u);
  result->__vftable = off_40A20;
  return result;
}

void PSVR2SenseDeviceFastPathUserClient::MetaClass::~MetaClass(OSMetaClass *this)
{
  OSMetaClass::~OSMetaClass(this);
}

{
  OSMetaClass::~OSMetaClass(this);
}

void PSVR2SenseDeviceFastPathUserClient::PSVR2SenseDeviceFastPathUserClient(PSVR2SenseDeviceFastPathUserClient *this, const OSMetaClass *a2)
{
  IOUserClient2022::IOUserClient2022(this, a2);
  *v2 = off_40428;
  v2[28] = 0;
}

void PSVR2SenseDeviceFastPathUserClient::~PSVR2SenseDeviceFastPathUserClient(PSVR2SenseDeviceFastPathUserClient *this)
{
  *this = off_40428;
  v2 = *(this + 28);
  if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  *(this + 28) = 0;

  IOUserClient2022::~IOUserClient2022(this);
}

{
  *this = off_40428;
  v2 = *(this + 28);
  if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  *(this + 28) = 0;

  IOUserClient2022::~IOUserClient2022(this);
}

{
  PSVR2SenseDeviceFastPathUserClient::~PSVR2SenseDeviceFastPathUserClient(this);

  _OSObject_typed_operator_delete(&PSVR2SenseDeviceFastPathUserClient_ktv, this, 240);
}

IOUserClient2022 *PSVR2SenseDeviceFastPathUserClient::MetaClass::alloc(PSVR2SenseDeviceFastPathUserClient::MetaClass *this)
{
  v1 = OSObject_typed_operator_new();
  IOUserClient2022::IOUserClient2022(v1, &PSVR2SenseDeviceFastPathUserClient::gMetaClass);
  *v2 = off_40428;
  v2[28] = 0;
  OSMetaClass::instanceConstructed(&PSVR2SenseDeviceFastPathUserClient::gMetaClass);
  return v1;
}

void PSVR2SenseDeviceFastPathUserClient::PSVR2SenseDeviceFastPathUserClient(PSVR2SenseDeviceFastPathUserClient *this)
{
  IOUserClient2022::IOUserClient2022(this, &PSVR2SenseDeviceFastPathUserClient::gMetaClass);
  *v1 = off_40428;
  v1[28] = 0;
  OSMetaClass::instanceConstructed(&PSVR2SenseDeviceFastPathUserClient::gMetaClass);
}

uint64_t PSVR2SenseDeviceFastPathUserClient::_userOpen(IORegistryEntry *this, PSVR2SenseDeviceFastPathUserClient *a2, void *a3, IOExternalMethodArguments *a4)
{
  v5 = _gc_log_psvr2();
  RegistryEntryID = IORegistryEntry::getRegistryEntryID(this);
  _os_log_internal(&dword_0, v5, OS_LOG_TYPE_DEBUG, "[%#010llx] ::_userOpen()", RegistryEntryID);
  fRegistryTable = this[5].fRegistryTable;
  action[0] = _NSConcreteStackBlock;
  action[1] = 0x40000000;
  action[2] = ___ZN34PSVR2SenseDeviceFastPathUserClient9_userOpenEPS_PvP25IOExternalMethodArguments_block_invoke;
  action[3] = &__block_descriptor_tmp_30;
  action[4] = this;
  return IOCommandGate::runActionBlock(fRegistryTable, action);
}

uint64_t PSVR2SenseDeviceFastPathUserClient::_userClose(IORegistryEntry *this, PSVR2SenseDeviceFastPathUserClient *a2, void *a3, IOExternalMethodArguments *a4)
{
  v5 = _gc_log_psvr2();
  RegistryEntryID = IORegistryEntry::getRegistryEntryID(this);
  _os_log_internal(&dword_0, v5, OS_LOG_TYPE_DEBUG, "[%#010llx] ::_userClose()", RegistryEntryID);
  fRegistryTable = this[5].fRegistryTable;
  action[0] = _NSConcreteStackBlock;
  action[1] = 0x40000000;
  action[2] = ___ZN34PSVR2SenseDeviceFastPathUserClient10_userCloseEPS_PvP25IOExternalMethodArguments_block_invoke;
  action[3] = &__block_descriptor_tmp_31;
  action[4] = this;
  return IOCommandGate::runActionBlock(fRegistryTable, action);
}

uint64_t PSVR2SenseDeviceFastPathUserClient::_userCreateInputQueue(PSVR2SenseDeviceFastPathUserClient *this, PSVR2SenseDeviceFastPathUserClient *a2, IOExternalMethodArguments *a3, IOExternalMethodArguments *a4)
{
  v6 = 3758097097;
  LODWORD(v18.__vftable) = 0;
  v7 = _gc_log_psvr2();
  RegistryEntryID = IORegistryEntry::getRegistryEntryID(this);
  _os_log_internal(&dword_0, v7, OS_LOG_TYPE_DEBUG, "[%#010llx] ::_userCreateInputQueue()", RegistryEntryID);
  v9 = PSVR2SenseDeviceFastPathUserClient::unserializeInputArguments(this, a3);
  if (v9)
  {
    v10 = v9;
    v11 = *a3->scalarInput;
    v12 = 3758097090;
    if (v11)
    {
      if (v11 != 255)
      {
        goto LABEL_15;
      }

      v13 = PSVR2SenseDeviceFastPathUserClientDriverDebugTimesyncQueue::metaClass;
    }

    else
    {
      v13 = PSVR2SenseDeviceFastPathUserClientInputQueue::metaClass;
    }

    v14 = (*(**v13 + 104))();
    if (v14)
    {
      v15 = v14;
      if ((*(*v14 + 168))(v14, v10))
      {
        if (((*(*v15 + 864))(v15, this) & 1) == 0)
        {
          PSVR2SenseDeviceFastPathUserClient::_userCreateInputQueue();
          goto LABEL_12;
        }

        if ((*(*v15 + 688))(v15, this))
        {
          v6 = IOUserClient::copyPortNameForObjectInTask(*(this + 27), v15, &v18, v16);
          if (!v6)
          {
            *a3->scalarOutput = LODWORD(v18.__vftable);
LABEL_12:
            (*(*v15 + 40))(v15);
LABEL_16:
            (v10->release_0)(v10);
            return v6;
          }

          PSVR2SenseDeviceFastPathUserClient::_userCreateInputQueue();
        }

        else
        {
          PSVR2SenseDeviceFastPathUserClient::_userCreateInputQueue();
        }

        (*(*v15 + 872))(v15, this);
        goto LABEL_12;
      }

      PSVR2SenseDeviceFastPathUserClient::_userCreateInputQueue();
      v6 = 3758097090;
      goto LABEL_12;
    }

    PSVR2SenseDeviceFastPathUserClient::_userCreateInputQueue();
    v12 = 3758097085;
LABEL_15:
    v6 = v12;
    goto LABEL_16;
  }

  PSVR2SenseDeviceFastPathUserClient::_userCreateInputQueue();
  return v6;
}

uint64_t PSVR2SenseDeviceFastPathUserClient::_userCreateControlQueue(PSVR2SenseDeviceFastPathUserClient *this, PSVR2SenseDeviceFastPathUserClient *a2, IOExternalMethodArguments *a3, IOExternalMethodArguments *a4)
{
  LODWORD(v18.__vftable) = 0;
  v6 = _gc_log_psvr2();
  RegistryEntryID = IORegistryEntry::getRegistryEntryID(this);
  _os_log_internal(&dword_0, v6, OS_LOG_TYPE_DEBUG, "[%#010llx] ::_userCreateControlQueue()", RegistryEntryID);
  if ((*(this + 232) & 1) == 0 && (*(this + 233) & 1) == 0)
  {
    PSVR2SenseDeviceFastPathUserClient::_userCreateControlQueue(this, a3);
    return 3758097122;
  }

  v8 = PSVR2SenseDeviceFastPathUserClient::unserializeInputArguments(this, a3);
  if (v8)
  {
    v9 = v8;
    v10 = 3758097097;
    v11 = *a3->scalarInput;
    v12 = 3758097090;
    if (v11 == 4)
    {
      v13 = PSVR2SenseDeviceFastPathUserClientTrackingQueue::metaClass;
    }

    else
    {
      if (v11 != 5)
      {
        goto LABEL_17;
      }

      v13 = PSVR2SenseDeviceFastPathUserClientHapticsQueue::metaClass;
    }

    v14 = (*(**v13 + 104))();
    if (v14)
    {
      v15 = v14;
      if ((*(*v14 + 168))(v14, v9))
      {
        if (((*(*v15 + 864))(v15, this) & 1) == 0)
        {
          PSVR2SenseDeviceFastPathUserClient::_userCreateControlQueue();
          goto LABEL_14;
        }

        if ((*(*v15 + 688))(v15, this))
        {
          v10 = IOUserClient::copyPortNameForObjectInTask(*(this + 27), v15, &v18, v16);
          if (!v10)
          {
            *a3->scalarOutput = LODWORD(v18.__vftable);
LABEL_14:
            (*(*v15 + 40))(v15);
LABEL_18:
            (v9->release_0)(v9);
            return v10;
          }

          PSVR2SenseDeviceFastPathUserClient::_userCreateControlQueue();
        }

        else
        {
          PSVR2SenseDeviceFastPathUserClient::_userCreateControlQueue();
        }

        (*(*v15 + 872))(v15, this);
        goto LABEL_14;
      }

      PSVR2SenseDeviceFastPathUserClient::_userCreateControlQueue();
      v10 = 3758097090;
      goto LABEL_14;
    }

    PSVR2SenseDeviceFastPathUserClient::_userCreateControlQueue();
    v12 = 3758097085;
LABEL_17:
    v10 = v12;
    goto LABEL_18;
  }

  v10 = 3758097097;
  PSVR2SenseDeviceFastPathUserClient::_userCreateControlQueue();
  return v10;
}

uint64_t PSVR2SenseDeviceFastPathUserClient::_userDestroyQueue(IORegistryEntry *this, PSVR2SenseDeviceFastPathUserClient *a2, unsigned int **a3, IOExternalMethodArguments *a4)
{
  v15 = 0;
  v6 = _gc_log_psvr2();
  RegistryEntryID = IORegistryEntry::getRegistryEntryID(this);
  _os_log_internal(&dword_0, v6, OS_LOG_TYPE_DEBUG, "[%#010llx] ::_userDestroyQueue()", RegistryEntryID);
  v8 = *a3[4];
  reserved = this[5].reserved;
  v10 = IOUserClient::copyObjectForPortNameInTask();
  if (v10)
  {
    v13 = v10;
    PSVR2SenseDeviceFastPathUserClient::_userDestroyQueue(v10);
  }

  else
  {
    v11 = OSDynamicPtrCast<PSVR2SenseDeviceFastPathUserClientQueue,OSObject>(&v15);
    if (v11)
    {
      v12 = v11;
      (v11->__vftable[7].getRetainCount)(v11, 0);
      (v12->release_0)(v12);
      v13 = 0;
    }

    else
    {
      PSVR2SenseDeviceFastPathUserClient::_userDestroyQueue();
      v13 = 3758097090;
    }
  }

  if (v15)
  {
    (v15->release_0)(v15);
  }

  return v13;
}

uint64_t PSVR2SenseDeviceFastPathUserClient::_userGetQueueProperties(IORegistryEntry *this, PSVR2SenseDeviceFastPathUserClient *a2, IOExternalMethodArguments *a3, IOExternalMethodArguments *a4)
{
  v28 = 0;
  v6 = _gc_log_psvr2();
  RegistryEntryID = IORegistryEntry::getRegistryEntryID(this);
  _os_log_internal(&dword_0, v6, OS_LOG_TYPE_DEBUG, "[%#010llx] ::_userGetQueueProperties(%#x)", RegistryEntryID, *a3->scalarInput);
  v8 = *a3->scalarInput;
  reserved = this[5].reserved;
  v10 = IOUserClient::copyObjectForPortNameInTask();
  if (v10)
  {
    v25 = v10;
    PSVR2SenseDeviceFastPathUserClient::_userGetQueueProperties(v10);
  }

  else
  {
    v11 = OSDynamicPtrCast<PSVR2SenseDeviceFastPathUserClientQueue,OSObject>(&v28);
    if (v11)
    {
      v12 = v11;
      v13 = PSVR2SenseDeviceFastPathUserClient::unserializeInputArguments(this, a3);
      if (v13)
      {
        v14 = v13;
        if ((v13->__vftable[3].~OSMetaClassBase)(v13, "QueueID"))
        {
          v15 = (v12->__vftable[3].release)(v12, "QueueID");
          if (v15)
          {
            v16 = v15;
            anObject = v15;
            (v15->retain)(v15);
            OSDictionary::setObject(v14, "QueueID", &anObject);
            if (anObject)
            {
              (anObject->release_0)(anObject);
            }

            (v16->release_0)(v16);
          }

          else
          {
            (v14->removeObject_1)(v14, "QueueID");
          }
        }

        if ((v14->getObject_1)(v14, "QueueGuard"))
        {
          v17 = (v12->__vftable[3].release)(v12, "QueueGuard");
          if (v17)
          {
            v18 = v17;
            anObject = v17;
            (v17->retain)(v17);
            OSDictionary::setObject(v14, "QueueGuard", &anObject);
            if (anObject)
            {
              (anObject->release_0)(anObject);
            }

            (v18->release_0)(v18);
          }

          else
          {
            (v14->removeObject_1)(v14, "QueueGuard");
          }
        }

        if ((v14->getObject_1)(v14, "QueueMemorySize"))
        {
          v19 = (v12->__vftable[3].release)(v12, "QueueMemorySize");
          if (v19)
          {
            v20 = v19;
            anObject = v19;
            (v19->retain)(v19);
            OSDictionary::setObject(v14, "QueueMemorySize", &anObject);
            if (anObject)
            {
              (anObject->release_0)(anObject);
            }

            (v20->release_0)(v20);
          }

          else
          {
            (v14->removeObject_1)(v14, "QueueMemorySize");
          }
        }

        if ((v14->getObject_1)(v14, "QueueEntrySize"))
        {
          v21 = (v12->__vftable[3].release)(v12, "QueueEntrySize");
          if (v21)
          {
            v22 = v21;
            anObject = v21;
            (v21->retain)(v21);
            OSDictionary::setObject(v14, "QueueEntrySize", &anObject);
            if (anObject)
            {
              (anObject->release_0)(anObject);
            }

            (v22->release_0)(v22);
          }

          else
          {
            (v14->removeObject_1)(v14, "QueueEntrySize");
          }
        }

        v23 = OSSerialize::binaryWithCapacity(0x1000u, 0, 0);
        if (v23)
        {
          v24 = v23;
          if ((v14->serialize)(v14, v23))
          {
            v25 = 0;
            *a3->structureVariableOutputData = v24;
          }

          else
          {
            v25 = 3758097097;
            PSVR2SenseDeviceFastPathUserClient::_userGetQueueProperties(v24);
          }
        }

        else
        {
          PSVR2SenseDeviceFastPathUserClient::_userGetQueueProperties();
          v25 = 3758097085;
        }

        (v14->release_0)(v14);
      }

      else
      {
        v25 = 3758097097;
        PSVR2SenseDeviceFastPathUserClient::_userGetQueueProperties();
      }

      (v12->release_0)(v12);
    }

    else
    {
      PSVR2SenseDeviceFastPathUserClient::_userGetQueueProperties();
      v25 = 3758097090;
    }
  }

  if (v28)
  {
    (v28->release_0)(v28);
  }

  return v25;
}

uint64_t PSVR2SenseDeviceFastPathUserClient::initWithTask(PSVR2SenseDeviceFastPathUserClient *this, task *a2, void *a3)
{
  if (v5)
  {
    *(this + 27) = a2;
    v6 = IOUserClient::copyClientEntitlement(a2, "application-identifier");
    v7 = OSMetaClassBase::safeMetaCast(v6, OSString::metaClass);
    v8 = v7;
    if (v7)
    {
      if ((v7->__vftable[1].taggedRelease)(v7, "com.apple.arkitd") || (v8->__vftable[1].taggedRelease)(v8, "com.apple.arkitd-objecttracking"))
      {
        *(this + 232) = 1;
      }
    }

    else if (v6)
    {
      (v6->release_0)(v6);
    }

    v9 = IOUserClient::copyClientEntitlement(a2, "com.apple.iohideventsystem.server");
    v10 = OSMetaClassBase::safeMetaCast(v9, OSBoolean::metaClass);
    v11 = v10;
    if (v9 && !v10)
    {
      (v9->release_0)(v9);
    }

    if (v11 == *kOSBooleanTrue)
    {
      *(this + 233) = 1;
    }

    if (v11)
    {
      (v11->release_0)(v11);
    }

    if (v8)
    {
      (v8->release_0)(v8);
    }
  }

  else
  {
    PSVR2SenseDeviceFastPathUserClient::initWithTask();
  }

  return v5;
}

uint64_t PSVR2SenseDeviceFastPathUserClient::start(IORegistryEntry *this, IOService *a2)
{
  reserved = this[5].reserved;
  bsdtask_info = get_bsdtask_info();
  if (bsdtask_info)
  {
    v6 = proc_pid(bsdtask_info);
  }

  else
  {
    v6 = -1;
  }

  v30 = 0u;
  memset(v31, 0, sizeof(v31));
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  *buf = 0u;
  proc_name(v6, buf, 255);
  v7 = _gc_log_psvr2();
  RegistryEntryID = IORegistryEntry::getRegistryEntryID(this);
  if (a2)
  {
    v9 = IORegistryEntry::getRegistryEntryID(a2);
  }

  else
  {
    v9 = 0;
  }

  _os_log_internal(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "[%#010llx] PSVR2SenseDeviceFastPathUserClient::start(<PSVR2SenseDevice %#010llx>) for pid %i, %s", RegistryEntryID, v9, v6, buf);
  {
    PSVR2SenseDeviceFastPathUserClient::start();
LABEL_21:
    (this->__vftable[1].Dispatch)(this, a2);
    return 0;
  }

  if (!OSMetaClassBase::safeMetaCast(a2, &PSVR2SenseDevice::gMetaClass))
  {
    PSVR2SenseDeviceFastPathUserClient::start();
    goto LABEL_21;
  }

  v10 = (a2->getWorkLoop)(a2);
  if (!v10)
  {
    PSVR2SenseDeviceFastPathUserClient::start();
    goto LABEL_21;
  }

  v11 = v10;
  v12 = IOCommandGate::commandGate(this, 0);
  fRegistryTable = this[5].fRegistryTable;
  if (fRegistryTable)
  {
    (fRegistryTable->release_0)(fRegistryTable);
  }

  this[5].fRegistryTable = v12;
  if (!v12)
  {
    PSVR2SenseDeviceFastPathUserClient::start();
    goto LABEL_21;
  }

  v14 = (*(*v11 + 160))(v11, v12);
  if (v14)
  {
    PSVR2SenseDeviceFastPathUserClient::start(v14);
    goto LABEL_21;
  }

  v15 = kOSBooleanFalse;
  (this->setProperty_1)(this, "IOUserClientEntitlements", *kOSBooleanFalse);
  (this->setProperty_1)(this, "IOUserClientDefaultLocking", *kOSBooleanTrue);
  (this->setProperty_1)(this, "IOUserClientDefaultLockingSetProperties", *v15);
  (this->setProperty_1)(this, "IOUserClientDefaultLockingSingleThreadExternalMethod", *v15);
  return 1;
}

uint64_t PSVR2SenseDeviceFastPathUserClient::stop(IORegistryEntry *this, IOService *a2)
{
  v4 = _gc_log_psvr2();
  RegistryEntryID = IORegistryEntry::getRegistryEntryID(this);
  _os_log_internal(&dword_0, v4, OS_LOG_TYPE_DEBUG, "[%#010llx] PSVR2SenseDeviceFastPathUserClient::stop()", RegistryEntryID);
  fRegistryTable = this[5].fRegistryTable;
  if (fRegistryTable)
  {
    v7 = (fRegistryTable->copyCollection)(fRegistryTable);
    (*(*v7 + 168))(v7, this[5].fRegistryTable);
    v8 = this[5].fRegistryTable;
    if (v8)
    {
      (v8->release_0)(v8);
    }

    this[5].fRegistryTable = 0;
  }

  return (v9)(this, a2);
}

uint64_t PSVR2SenseDeviceFastPathUserClient::didTerminate(IORegistryEntry *this, IOService *a2, void *a3, IOExternalMethodArguments *a4)
{
  PSVR2SenseDeviceFastPathUserClient::_userClose(this, a2, a3, a4);

  return (v8)(this, a2, a3, a4);
}

uint64_t PSVR2SenseDeviceFastPathUserClient::clientClose(IORegistryEntry *this)
{
  v2 = _gc_log_psvr2();
  RegistryEntryID = IORegistryEntry::getRegistryEntryID(this);
  _os_log_internal(&dword_0, v2, OS_LOG_TYPE_DEBUG, "[%#010llx] ::clientClose()", RegistryEntryID);
  while ((BYTE2(this[5].fPropertyTable) & 1) != 0)
  {
    fRegistryTable = this[5].fRegistryTable;
    if (!fRegistryTable)
    {
      break;
    }

    (fRegistryTable->retain)(this[5].fRegistryTable);
    v5 = (this->__vftable[1].getProperty_1)(this);
    v6 = OSMetaClassBase::safeMetaCast(v5, &PSVR2SenseDevice::gMetaClass);
    if (!v6 || (SharedPage = PSVR2SenseDevice::getSharedPage(v6)) == 0)
    {
      (fRegistryTable->release_0)(fRegistryTable);
      break;
    }

    v8 = this[5].fRegistryTable;
    action[0] = _NSConcreteStackBlock;
    action[1] = 0x40000000;
    action[2] = ___ZN34PSVR2SenseDeviceFastPathUserClient11clientCloseEv_block_invoke;
    action[3] = &__block_descriptor_tmp;
    action[4] = this;
    action[5] = SharedPage;
    IOCommandGate::runActionBlock(v8, action);
    (fRegistryTable->release_0)(fRegistryTable);
  }

  (this->__vftable[1].copyChildEntry)(this, 0);
  return 0;
}

uint64_t ___ZN34PSVR2SenseDeviceFastPathUserClient11clientCloseEv_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  *(v1 + 26192) = -1;
  *(v1 + 26200) = 0;
  *(v2 + 234) = 0;
  v3 = _gc_log_psvr2();
  RegistryEntryID = IORegistryEntry::getRegistryEntryID(v2);
  _os_log_internal(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "[%#010llx] Clear 'PSVR2HeldInHand'", RegistryEntryID);
  return 0;
}

void inputDataAvailableApply(IORegistryEntry *a1, void *a2)
{
  v2 = OSMetaClassBase::safeMetaCast(a1, &PSVR2SenseDeviceFastPathUserClientInputQueue::gMetaClass);
  if (v2)
  {

    PSVR2SenseDeviceFastPathUserClientInputQueue::notifyDataAvailable(v2);
  }
}

uint64_t PSVR2SenseDeviceFastPathUserClient::clientMemoryForSharedPage(PSVR2SenseDeviceFastPathUserClient *this, unsigned int *a2, IOMemoryDescriptor **a3)
{
  v5 = (*(*this + 880))(this);
  v6 = OSMetaClassBase::safeMetaCast(v5, &PSVR2SenseDevice::gMetaClass);
  if (v6)
  {
    SharedPageMemoryDescriptor = PSVR2SenseDevice::getSharedPageMemoryDescriptor(v6);
    if (SharedPageMemoryDescriptor)
    {
      v8 = 0;
      *a2 = 4096;
      *a3 = SharedPageMemoryDescriptor;
    }

    else
    {
      v8 = 3758097097;
      PSVR2SenseDeviceFastPathUserClient::clientMemoryForSharedPage();
    }
  }

  else
  {
    PSVR2SenseDeviceFastPathUserClient::clientMemoryForSharedPage();
    return 3758097112;
  }

  return v8;
}

uint64_t PSVR2SenseDeviceFastPathUserClient::setProperties(IORegistryEntry *this, OSObject *a2)
{
  v4 = _gc_log_psvr2();
  RegistryEntryID = IORegistryEntry::getRegistryEntryID(this);
  _os_log_internal(&dword_0, v4, OS_LOG_TYPE_DEBUG, "[%#010llx] ::setProperties()", RegistryEntryID);
  v6 = OSMetaClassBase::safeMetaCast(a2, OSDictionary::metaClass);
  if (!v6)
  {
    PSVR2SenseDeviceFastPathUserClient::setProperties();
    return 3758097090;
  }

  v7 = v6;
  v8 = (this->__vftable[1].getProperty_1)(this);
  v9 = OSMetaClassBase::safeMetaCast(v8, &PSVR2SenseDevice::gMetaClass);
  if (!v9)
  {
    v15 = 3758097112;
    PSVR2SenseDeviceFastPathUserClient::setProperties();
    return v15;
  }

  SharedPage = PSVR2SenseDevice::getSharedPage(v9);
  if (!SharedPage)
  {
    v15 = 3758097112;
    PSVR2SenseDeviceFastPathUserClient::setProperties();
    return v15;
  }

  v11 = SharedPage;
  v12 = (v7->__vftable[3].~OSMetaClassBase)(v7, "PSVR2HeldInHand");
  v13 = OSMetaClassBase::safeMetaCast(v12, OSNumber::metaClass);
  if (v13)
  {
    if ((this[5].fPropertyTable & 1) == 0)
    {
      v16 = _gc_log_psvr2();
      v17 = IORegistryEntry::getRegistryEntryID(this);
      _os_log_internal(&dword_0, v16, OS_LOG_TYPE_INFO, "[%#010llx] Set 'PSVR2HeldInHand': Not permitted", v17);
      return 3758097122;
    }

    fRegistryTable = this[5].fRegistryTable;
    action[0] = _NSConcreteStackBlock;
    action[1] = 0x40000000;
    action[2] = ___ZN34PSVR2SenseDeviceFastPathUserClient13setPropertiesEP8OSObject_block_invoke;
    action[3] = &__block_descriptor_tmp_25;
    action[4] = this;
    action[5] = v11;
    action[6] = v13;
    IOCommandGate::runActionBlock(fRegistryTable, action);
  }

  return 0;
}

uint64_t ___ZN34PSVR2SenseDeviceFastPathUserClient13setPropertiesEP8OSObject_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(*(a1 + 40) + 26192);
  v4 = (*(**(a1 + 48) + 152))(*(a1 + 48));
  if (v4 != v3)
  {
    v5 = v4;
    *(v2 + 234) = 1;
    v6 = *(a1 + 40);
    *(v6 + 26192) = v4;
    v7 = v6 + 26200;
    if (((v6 ^ (v6 + 26200)) & 0xFFC0000000000000) != 0)
    {
      v7 = v7 & 0xFFFFFFFFFFFFLL | 0xC8A2000000000000;
    }

    clock_get_uptime(v7);
    v8 = _gc_log_psvr2();
    RegistryEntryID = IORegistryEntry::getRegistryEntryID(v2);
    _os_log_internal(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "[%#010llx] Set 'PSVR2HeldInHand': %hhi -> %hhi", RegistryEntryID, v3, v5);
  }

  return 0;
}

uint64_t PSVR2SenseDeviceFastPathUserClient::clientMemoryForType(IORegistryEntry *this, int a2, unsigned int *a3, IOMemoryDescriptor **a4)
{
  v16 = 0;
  v8 = _gc_log_psvr2();
  RegistryEntryID = IORegistryEntry::getRegistryEntryID(this);
  _os_log_internal(&dword_0, v8, OS_LOG_TYPE_DEBUG, "[%#010llx] ::clientMemoryForType(%#x)", RegistryEntryID, a2);
  if (a2)
  {
    reserved = this[5].reserved;
    v11 = IOUserClient::copyObjectForPortNameInTask();
    if (v11)
    {
      v14 = v11;
      PSVR2SenseDeviceFastPathUserClient::clientMemoryForType(v11);
    }

    else
    {
      v12 = OSDynamicPtrCast<PSVR2SenseDeviceFastPathUserClientQueue,OSObject>(&v16);
      if (v12)
      {
        v13 = v12;
        v14 = (v12->__vftable[12].Dispatch)(v12, a3, a4);
        (v13->release_0)(v13);
      }

      else
      {
        PSVR2SenseDeviceFastPathUserClient::clientMemoryForType();
        v14 = 3758097090;
      }
    }
  }

  else
  {
    v14 = (this->__vftable[2].getProperty_3)(this, a3, a4);
  }

  if (v16)
  {
    (v16->release_0)(v16);
  }

  return v14;
}

OSMetaClassBase *OSDynamicPtrCast<PSVR2SenseDeviceFastPathUserClientQueue,OSObject>(const OSMetaClassBase **a1)
{
  v1 = OSMetaClassBase::safeMetaCast(*a1, &PSVR2SenseDeviceFastPathUserClientQueue::gMetaClass);
  v2 = v1;
  if (v1)
  {
    (v1->retain)(v1);
  }

  return v2;
}

uint64_t PSVR2SenseDeviceFastPathUserClient::registerNotificationPort(IORegistryEntry *this, ipc_port *a2, int a3, uint64_t a4)
{
  v16 = 0;
  v8 = _gc_log_psvr2();
  RegistryEntryID = IORegistryEntry::getRegistryEntryID(this);
  _os_log_internal(&dword_0, v8, OS_LOG_TYPE_DEBUG, "[%#010llx] ::registerNotificationPort(%#x)", RegistryEntryID, a3);
  reserved = this[5].reserved;
  v11 = IOUserClient::copyObjectForPortNameInTask();
  if (v11)
  {
    v14 = v11;
    PSVR2SenseDeviceFastPathUserClient::registerNotificationPort(v11);
  }

  else
  {
    v12 = OSDynamicPtrCast<PSVR2SenseDeviceFastPathUserClientQueue,OSObject>(&v16);
    if (v12)
    {
      v13 = v12;
      v14 = (v12->__vftable[13].~OSMetaClassBase)(v12, a2, a4);
      (v13->release_0)(v13);
    }

    else
    {
      PSVR2SenseDeviceFastPathUserClient::registerNotificationPort();
      v14 = 3758097090;
    }
  }

  if (v16)
  {
    (v16->release_0)(v16);
  }

  return v14;
}

uint64_t PSVR2SenseDeviceFastPathUserClient::externalMethod(IOService *a1, uint64_t a2, uint64_t a3)
{
  v6 = _gc_log_psvr2();
  RegistryEntryID = IORegistryEntry::getRegistryEntryID(a1);
  _os_log_internal(&dword_0, v6, OS_LOG_TYPE_DEBUG, "[%#010llx] ::externalMethod(%u)", RegistryEntryID, a2);
  if (a2 != 1 && IOService::isInactive(a1))
  {
    PSVR2SenseDeviceFastPathUserClient::externalMethod();
    return 3758097111;
  }

  else
  {

    return IOUserClient2022::dispatchExternalMethod(a1, a2, a3, &PSVR2SenseDeviceFastPathUserClient::_methods, 6, a1, 0);
  }
}

uint64_t ___ZN34PSVR2SenseDeviceFastPathUserClient9_userOpenEPS_PvP25IOExternalMethodArguments_block_invoke(uint64_t a1)
{
  v2 = (*(**(a1 + 32) + 880))(*(a1 + 32));
  v3 = OSMetaClassBase::safeMetaCast(v2, &PSVR2SenseDevice::gMetaClass);
  if (v3)
  {
    v4 = (v3->__vftable[6].taggedRelease)(v3, *(a1 + 32), 0, 0);
    v5 = 0;
    if ((v4 & 1) == 0)
    {
      v5 = 3758097097;
      ___ZN34PSVR2SenseDeviceFastPathUserClient9_userOpenEPS_PvP25IOExternalMethodArguments_block_invoke_cold_1();
    }
  }

  else
  {
    ___ZN34PSVR2SenseDeviceFastPathUserClient9_userOpenEPS_PvP25IOExternalMethodArguments_block_invoke_cold_2();
    return 3758097112;
  }

  return v5;
}

uint64_t ___ZN34PSVR2SenseDeviceFastPathUserClient10_userCloseEPS_PvP25IOExternalMethodArguments_block_invoke(uint64_t a1)
{
  v2 = (*(**(a1 + 32) + 880))(*(a1 + 32));
  v3 = OSMetaClassBase::safeMetaCast(v2, &PSVR2SenseDevice::gMetaClass);
  if (v3)
  {
    (v3->__vftable[6].taggedRelease_0)(v3, *(a1 + 32), 0);
    return 0;
  }

  else
  {
    ___ZN34PSVR2SenseDeviceFastPathUserClient10_userCloseEPS_PvP25IOExternalMethodArguments_block_invoke_cold_1();
    return 3758097112;
  }
}

OSMetaClassBase *PSVR2SenseDeviceFastPathUserClient::unserializeInputArguments(PSVR2SenseDeviceFastPathUserClient *this, IOExternalMethodArguments *a2)
{
  MemoryDescriptorFromInputArguments = PSVR2SenseDeviceFastPathUserClient::createMemoryDescriptorFromInputArguments(this, a2);
  if (!MemoryDescriptorFromInputArguments)
  {
    PSVR2SenseDeviceFastPathUserClient::unserializeInputArguments();
    return 0;
  }

  v3 = MemoryDescriptorFromInputArguments;
  v4 = (MemoryDescriptorFromInputArguments->getLength)(MemoryDescriptorFromInputArguments);
  if (v4)
  {
    v5 = v4;
    v6 = IOMallocData();
    if (v6)
    {
      v7 = v6;
      v8 = (v3->prepare)(v3, 0);
      if (v8)
      {
        PSVR2SenseDeviceFastPathUserClient::unserializeInputArguments(v8);
      }

      else
      {
        (v3->readBytes)(v3, 0, v7, v5);
        (v3->complete)(v3, 0);
        if (strnlen(v7, v5) >= v5)
        {
          PSVR2SenseDeviceFastPathUserClient::unserializeInputArguments();
        }

        else
        {
          v9 = OSUnserializeXML(v7, v5, 0);
          if (v9)
          {
            v10 = v9;
            v11 = OSMetaClassBase::safeMetaCast(v9, OSDictionary::metaClass);
            v12 = v11;
            if (v11)
            {
              (v11->retain)(v11);
            }

            else
            {
              v13 = _gc_log_debug();
              _os_log_internal(&dword_0, v13, OS_LOG_TYPE_DEBUG, "AssertMacros: %s, %s file: %s, line: %d, value: %ld\n", "dictionary", "", "/Library/Caches/com.apple.xbs/Sources/CoreController_kext/GameControllerDrivers/Sony/PSVR2/Kernel/PSVR2SenseDeviceFastPathUserClient.cpp", 706, 0);
            }

            IOFreeData();
            (v10->release_0)(v10);
            goto LABEL_11;
          }

          PSVR2SenseDeviceFastPathUserClient::unserializeInputArguments();
        }
      }

      IOFreeData();
    }

    else
    {
      PSVR2SenseDeviceFastPathUserClient::unserializeInputArguments();
    }
  }

  else
  {
    PSVR2SenseDeviceFastPathUserClient::unserializeInputArguments();
  }

  v12 = 0;
LABEL_11:
  (v3->release_0)(v3);
  return v12;
}

IOBufferMemoryDescriptor *PSVR2SenseDeviceFastPathUserClient::createMemoryDescriptorFromInputArguments(PSVR2SenseDeviceFastPathUserClient *this, IOExternalMethodArguments *a2)
{
  structureInputDescriptor = a2->structureInputDescriptor;
  if (structureInputDescriptor)
  {
    v4 = (structureInputDescriptor->getLength)(structureInputDescriptor);
    v5 = IOBufferMemoryDescriptor::withCapacity(v4, 2u, 0);
    (a2->structureInputDescriptor->prepare)();
    v6 = a2->structureInputDescriptor;
    v7 = (v5->getBytesNoCopy)(v5);
    (v6->readBytes)(v6, 0, v7, v4);
    (a2->structureInputDescriptor->complete)();
    return v5;
  }

  else
  {
    structureInput = a2->structureInput;
    structureInputSize = a2->structureInputSize;

    return IOBufferMemoryDescriptor::withBytes(structureInput, structureInputSize, 2u, 0);
  }
}

OSMetaClass *_GLOBAL__sub_I_PSVR2SenseDeviceFastPathUserClient_cpp()
{
  result = OSMetaClass::OSMetaClass(&PSVR2SenseDeviceFastPathUserClient::gMetaClass, "PSVR2SenseDeviceFastPathUserClient", &IOUserClient2022::gMetaClass, 0xF0u);
  result->__vftable = off_40A20;
  return result;
}

os_log_t OUTLINED_FUNCTION_1()
{

  return _gc_log_debug();
}

os_log_t _gc_log_debug()
{
  result = _gc_log_debug_Log;
  if (!_gc_log_debug_Log)
  {
    result = os_log_create("com.apple.gamecontroller", "Debug");
    _gc_log_debug_Log = result;
  }

  return result;
}

OSMetaClass *PSVR2SenseDevice::MetaClass::MetaClass(OSMetaClass *this)
{
  result = OSMetaClass::OSMetaClass(this, "PSVR2SenseDevice", &IOHIDGCDevice::gMetaClass, 0x198u);
  result->__vftable = off_41280;
  return result;
}

void PSVR2SenseDevice::MetaClass::~MetaClass(OSMetaClass *this)
{
  OSMetaClass::~OSMetaClass(this);
}

{
  OSMetaClass::~OSMetaClass(this);
}

void PSVR2SenseDevice::PSVR2SenseDevice(PSVR2SenseDevice *this, const OSMetaClass *a2)
{
  IOHIDGCDevice::IOHIDGCDevice(this, a2);
  *v2 = &off_40C28;
  *(v2 + 192) = 0u;
  *(v2 + 208) = 0;
  *(v2 + 224) = 0;
  *(v2 + 320) = 0u;
  *(v2 + 336) = 0u;
  *(v2 + 368) = 0;
  *(v2 + 392) = 0;
}

void PSVR2SenseDevice::~PSVR2SenseDevice(IOService *this)
{
  this->__vftable = &off_40C28;
  v2 = *&this[2]._numInterruptSources;
  if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  *&this[2]._numInterruptSources = 0;
  pwrMgt = this[2].pwrMgt;
  if (pwrMgt)
  {
    (*(*pwrMgt + 40))(pwrMgt);
  }

  this[2].pwrMgt = 0;
  v4 = *this[2].__state;
  if (v4)
  {
    (*(*v4 + 40))(v4);
  }

  *this[2].__state = 0;
  owner = this[2].__owner;
  if (owner)
  {
    (owner->release_0)(owner);
  }

  this[2].__owner = 0;
  v6 = *&this[2].__providerGeneration;
  if (v6)
  {
    (*(*v6 + 40))(v6);
  }

  *&this[2].__providerGeneration = 0;
  provider = this[2].__provider;
  if (provider)
  {
    (provider->release_0)(provider);
  }

  this[2].__provider = 0;
  accumBusy = this[1].__accumBusy;
  if (accumBusy)
  {
    (*(*accumBusy + 40))(accumBusy);
  }

  this[1].__accumBusy = 0;
  v9 = *this[1].__state;
  if (v9)
  {
    (*(*v9 + 40))(v9);
  }

  *this[1].__state = 0;
  v10 = this[1].__owner;
  if (v10)
  {
    (v10->release_0)(v10);
  }

  this[1].__owner = 0;
  v11 = *&this[1].__providerGeneration;
  if (v11)
  {
    (*(*v11 + 40))(v11);
  }

  *&this[1].__providerGeneration = 0;

  IOHIDGCDevice::~IOHIDGCDevice(this);
}

{
  this->__vftable = &off_40C28;
  v2 = *&this[2]._numInterruptSources;
  if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  *&this[2]._numInterruptSources = 0;
  pwrMgt = this[2].pwrMgt;
  if (pwrMgt)
  {
    (*(*pwrMgt + 40))(pwrMgt);
  }

  this[2].pwrMgt = 0;
  v4 = *this[2].__state;
  if (v4)
  {
    (*(*v4 + 40))(v4);
  }

  *this[2].__state = 0;
  owner = this[2].__owner;
  if (owner)
  {
    (owner->release_0)(owner);
  }

  this[2].__owner = 0;
  v6 = *&this[2].__providerGeneration;
  if (v6)
  {
    (*(*v6 + 40))(v6);
  }

  *&this[2].__providerGeneration = 0;
  provider = this[2].__provider;
  if (provider)
  {
    (provider->release_0)(provider);
  }

  this[2].__provider = 0;
  accumBusy = this[1].__accumBusy;
  if (accumBusy)
  {
    (*(*accumBusy + 40))(accumBusy);
  }

  this[1].__accumBusy = 0;
  v9 = *this[1].__state;
  if (v9)
  {
    (*(*v9 + 40))(v9);
  }

  *this[1].__state = 0;
  v10 = this[1].__owner;
  if (v10)
  {
    (v10->release_0)(v10);
  }

  this[1].__owner = 0;
  v11 = *&this[1].__providerGeneration;
  if (v11)
  {
    (*(*v11 + 40))(v11);
  }

  *&this[1].__providerGeneration = 0;

  IOHIDGCDevice::~IOHIDGCDevice(this);
}

{
  PSVR2SenseDevice::~PSVR2SenseDevice(this);

  _OSObject_typed_operator_delete(&PSVR2SenseDevice_ktv, this, 408);
}

void PSVR2SenseDevice::MetaClass::alloc(PSVR2SenseDevice::MetaClass *this)
{
  v1 = OSObject_typed_operator_new();

  PSVR2SenseDevice::PSVR2SenseDevice(v1);
}

void PSVR2SenseDevice::PSVR2SenseDevice(PSVR2SenseDevice *this)
{
  PSVR2SenseDevice::PSVR2SenseDevice(this);
}

{
  IOHIDGCDevice::IOHIDGCDevice(this, &PSVR2SenseDevice::gMetaClass);
  *v1 = &off_40C28;
  *(v1 + 192) = 0u;
  *(v1 + 208) = 0;
  *(v1 + 224) = 0;
  *(v1 + 320) = 0u;
  *(v1 + 336) = 0u;
  *(v1 + 368) = 0;
  *(v1 + 392) = 0;
  OSMetaClass::instanceConstructed(&PSVR2SenseDevice::gMetaClass);
}

void PSVR2SenseDevice::free(IOService *this)
{
  v2 = _gc_log_psvr2();
  RegistryEntryID = IORegistryEntry::getRegistryEntryID(this);
  _os_log_internal(&dword_0, v2, OS_LOG_TYPE_DEBUG, "[%#010llx] PSVR2SenseDevice::free()", RegistryEntryID);

  IOService::free(this);
}

uint64_t PSVR2SenseDevice::handleStart(PSVR2SenseDevice *this, IOHIDInterface *a2)
{
  v4 = _gc_log_psvr2();
  RegistryEntryID = IORegistryEntry::getRegistryEntryID(this);
  v6 = IORegistryEntry::getRegistryEntryID(a2);
  _os_log_internal(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "[%#010llx] PSVR2SenseDevice::handleStart(<IOHIDInterface %#010llx>)", RegistryEntryID, v6);
  v7 = (a2->getWorkLoop)(a2);
  if (v7)
  {
    v8 = v7;
    (*(*v7 + 32))(v7);
    if (!*(this + 24))
    {
      v10 = IOCommandGate::commandGate(this, 0);
      v11 = *(this + 24);
      if (v11)
      {
        (*(*v11 + 40))(v11);
      }

      *(this + 24) = v10;
      if (!v10)
      {
        PSVR2SenseDevice::handleStart();
        goto LABEL_157;
      }

      v12 = (*(*v8 + 160))(v8, v10);
      if (v12)
      {
        PSVR2SenseDevice::handleStart(v12);
        goto LABEL_157;
      }
    }

    if (!*(this + 25))
    {
      v13 = IOGCCommandQueue::commandQueue(this, 0, v9);
      v14 = *(this + 25);
      if (v14)
      {
        (*(*v14 + 40))(v14);
      }

      *(this + 25) = v13;
      if (!v13)
      {
        PSVR2SenseDevice::handleStart();
        goto LABEL_157;
      }

      v15 = (*(*v8 + 160))(v8, v13);
      if (v15)
      {
        PSVR2SenseDevice::handleStart(v15);
        goto LABEL_157;
      }
    }

    if (!*(this + 26))
    {
      v16 = IOTimerEventSource::timerEventSource(1u, this, PSVR2SenseDevice::wakeForOutputReport);
      v17 = *(this + 26);
      if (v17)
      {
        (*(*v17 + 40))(v17);
      }

      *(this + 26) = v16;
      if (!v16)
      {
        PSVR2SenseDevice::handleStart();
        goto LABEL_157;
      }

      v18 = (*(*v8 + 160))(v8, v16);
      if (v18)
      {
        PSVR2SenseDevice::handleStart(v18);
        goto LABEL_157;
      }
    }

    if (!*(this + 28))
    {
      v19 = IOBufferMemoryDescriptor::withOptions(0x10000u, 0x6660uLL, 8uLL);
      v20 = *(this + 28);
      if (v20)
      {
        (*(*v20 + 40))(v20);
      }

      *(this + 28) = v19;
      if (!v19)
      {
        PSVR2SenseDevice::handleStart();
        goto LABEL_157;
      }

      v21 = (v19->getBytesNoCopy)(v19);
      *(this + 27) = v21;
      *(this + 32) = v21;
      *(this + 33) = v21 + 136;
      *(this + 36) = v21 + 52;
      *(this + 37) = v21 + 137;
    }

    if ((IOHIDGCDevice::handleStart(this, a2) & 1) == 0)
    {
      PSVR2SenseDevice::handleStart();
      goto LABEL_157;
    }

    clock_timebase_info(this + 29);
    *(*(this + 32) + 51) = 0;
    v22 = (*(*this + 328))(this, "PSVR2DeviceType");
    v23 = OSNumber::metaClass;
    v24 = OSMetaClassBase::safeMetaCast(v22, OSNumber::metaClass);
    v25 = v24;
    if (v24)
    {
      if ((v24->__vftable[1].serialize)(v24) == 1)
      {
        v26 = *(this + 32);
        v27 = 1;
      }

      else
      {
        if ((v25->__vftable[1].serialize)(v25) != 2)
        {
          goto LABEL_33;
        }

        v26 = *(this + 32);
        v27 = 2;
      }

      *(v26 + 51) = v27;
    }

    else if (v22)
    {
      (v22->release_0)(v22);
    }

LABEL_33:
    if (*(*(this + 32) + 51))
    {
      goto LABEL_51;
    }

    v30 = (a2->copyProperty_4)(a2, "VendorID");
    v31 = OSMetaClassBase::safeMetaCast(v30, v23);
    v32 = v31;
    if (v30 && !v31)
    {
      (v30->release_0)(v30);
    }

    v33 = (a2->copyProperty_4)(a2, "ProductID");
    v34 = OSMetaClassBase::safeMetaCast(v33, v23);
    if (!v34)
    {
      if (v33)
      {
        (v33->release_0)(v33);
      }

      goto LABEL_49;
    }

    v35 = v34;
    if (v32)
    {
      v36 = (v32->__vftable[1].isEqualTo)(v32);
      v37 = (v35->__vftable[1].isEqualTo)(v35);
      if (v36 == 1356 && v37 == 3653)
      {
        v38 = *(this + 32);
        v39 = 1;
      }

      else
      {
        if (v36 != 1356 || v37 != 3654)
        {
          goto LABEL_48;
        }

        v38 = *(this + 32);
        v39 = 2;
      }

      *(v38 + 51) = v39;
    }

LABEL_48:
    (v35->release_0)(v35);
LABEL_49:
    if (v32)
    {
      (v32->release_0)(v32);
    }

LABEL_51:
    v40 = *(this + 32);
    v41 = *(v40 + 51);
    if (!*(v40 + 51))
    {
      PSVR2SenseDevice::handleStart();
      if (!v25)
      {
LABEL_74:
        if (!v41)
        {
          goto LABEL_157;
        }

        v51 = (a2->copyProperty_4)(a2, "Transport");
        v52 = OSMetaClassBase::safeMetaCast(v51, OSString::metaClass);
        if (!v52)
        {
          if (v51)
          {
            (v51->release_0)(v51);
          }

          *(this + 61) = 0;
LABEL_86:
          Device = IOHIDGCDevice::getDevice(this);
          v56 = (*(*Device + 328))(Device, "InputReportElements");
          v57 = OSMetaClassBase::safeMetaCast(v56, OSArray::metaClass);
          v58 = v57;
          if (v56 && !v57)
          {
            (v56->release_0)(v56);
          }

          (*(*Device + 40))(Device);
          if (v58)
          {
            OSCollection::iterateObjects(v58, this, PSVR2SenseDevice::handleStart(IOHIDInterface *)::$_0::__invoke);
          }

          v59 = *(this + 62);
          if (v59 == 2)
          {
            (*(*this + 208))(this, "PSVR2Connection", "Bluetooth");
          }

          else
          {
            if (v59 != 1)
            {
              v66 = _gc_log_psvr2();
              v67 = IORegistryEntry::getRegistryEntryID(this);
              _os_log_internal(&dword_0, v66, OS_LOG_TYPE_ERROR, "[%#010llx] Could not determine connection type!", v67);
              v60 = 0;
              if (!v58)
              {
LABEL_97:
                if (!v60)
                {
                  goto LABEL_157;
                }

                v61 = (*(*this + 1344))(this, "HIDVirtualDevice");
                v62 = OSBoolean::metaClass;
                v63 = OSMetaClassBase::safeMetaCast(v61, OSBoolean::metaClass);
                v64 = v63;
                if (v63)
                {
                  v65 = (v63->__vftable[1].retain)(v63);
                }

                else
                {
                  if (v61)
                  {
                    (v61->release_0)(v61);
                  }

                  v65 = 0;
                }

                *(this + 241) = v65;
                *(this + 242) = *(this + 61) != *(this + 62);
                v68 = (*(*this + 1344))(this, "TimeSyncEnabled");
                v69 = OSMetaClassBase::safeMetaCast(v68, v62);
                if (v69)
                {
                  v70 = v69;
                  v71 = this + 216;
                  *(*(this + 27) + 197) = 1;
                  *(*(this + 27) + 198) = (v69->__vftable[1].retain)(v69);
                  (v70->release_0)(v70);
                  if (!v64)
                  {
                    goto LABEL_108;
                  }
                }

                else
                {
                  if (v68)
                  {
                    (v68->release_0)(v68);
                  }

                  v71 = this + 216;
                  v76 = *(this + 27);
                  *(v76 + 197) = 0;
                  *(v76 + 198) = 0;
                  if (!v64)
                  {
LABEL_108:
                    v72 = *(this + 61);
                    if (v72 == 2)
                    {
                      v77 = (*(*this + 1344))(this, "ReportInterval");
                      v78 = OSMetaClassBase::safeMetaCast(v77, v23);
                      if (v78)
                      {
                        v79 = v78;
                        if (*(this + 241) & 1) != 0 || (*(this + 242))
                        {
                          *(*v71 + 144) = (v78->__vftable[1].isEqualTo)(v78);
                        }

                        else
                        {
                          *(*v71 + 144) = 15000;
                        }

                        (v79->release_0)(v79);
LABEL_129:
                        v82 = *(this + 27);
                        *(v82 + 232) = 10;
                        if (*(v82 + 144) <= 0x1D4Cu)
                        {
                          v83 = 3000;
                        }

                        else
                        {
                          v83 = 3750;
                        }

                        *(v82 + 244) = 1000;
                        *(v82 + 248) = v83;
                        *(v82 + 252) = 1000;
                        *(v82 + 268) = 0;
                        *(v82 + 269) = 1;
                        *(v82 + 270) = 0;
                        *(v82 + 272) = 15000;
                        *(v82 + 288) = vdupq_n_s64(1uLL);
                        *(v82 + 26000) = xmmword_6E0;
                        *(v82 + 26016) = xmmword_6F0;
                        *(v82 + 26088) = -2;
                        *(v82 + 26092) = 0x4B000000000;
                        *(v82 + 26100) = 0;
                        *(v82 + 26192) = -1;
                        v84 = OSSet::withCapacity(3u);
                        v85 = *(this + 40);
                        if (v85)
                        {
                          (*(*v85 + 40))(v85);
                        }

                        *(this + 40) = v84;
                        v86 = OSCollectionIterator::withCollection(v84);
                        v87 = *(this + 41);
                        if (v87)
                        {
                          (*(*v87 + 40))(v87);
                        }

                        *(this + 41) = v86;
                        v88 = *(this + 42);
                        if (v88)
                        {
                          goto LABEL_140;
                        }

                        v88 = IOGCCircularDataQueue::withEntries(&stru_158.maxprot, 96);
                        v89 = *(this + 42);
                        if (v89)
                        {
                          (*(*v89 + 40))(v89);
                        }

                        *(this + 42) = v88;
                        if (v88)
                        {
LABEL_140:
                          (*(*v88 + 216))(v88, 0);
                          atomic_fetch_or(this + 240, 1u);
                          v90 = (*(*this + 1448))(this);
                          if (!v90)
                          {
                            v91 = _gc_log_psvr2();
                            v92 = IORegistryEntry::getRegistryEntryID(this);
                            v93 = *(*(this + 32) + 51);
                            if (v93 > 2)
                            {
                              v94 = 0;
                            }

                            else
                            {
                              v94 = off_41B48[v93];
                            }

                            _os_log_internal(&dword_0, v91, OS_LOG_TYPE_DEFAULT, "[%#010llx] Started PSVR2 %s {\n    isVirtual = %d\n    isProxied = %d\n    transport = %d\n    connection = %d\n    reportInterval = %uus\n}", v92, v94, *(this + 241) & 1, *(this + 242) & 1, *(this + 61), *(this + 62), *(*(this + 27) + 144));
                            v29 = 1;
                            goto LABEL_158;
                          }

                          PSVR2SenseDevice::handleStart(v90);
                        }

                        else
                        {
                          PSVR2SenseDevice::handleStart();
                        }

LABEL_157:
                        v29 = 0;
LABEL_158:
                        (*(*v8 + 40))(v8);
                        return v29;
                      }

                      if (v77)
                      {
                        (v77->release_0)(v77);
                      }

                      v80 = *v71;
                      v81 = 15000;
                    }

                    else
                    {
                      if (v72 != 1)
                      {
                        goto LABEL_129;
                      }

                      v73 = (*(*this + 1344))(this, "ReportInterval");
                      v74 = OSMetaClassBase::safeMetaCast(v73, v23);
                      if (v74)
                      {
                        v75 = v74;
                        *(*v71 + 144) = (v74->__vftable[1].isEqualTo)(v74);
                        (v75->release_0)(v75);
                        goto LABEL_129;
                      }

                      if (v73)
                      {
                        (v73->release_0)(v73);
                      }

                      v80 = *v71;
                      v81 = 4000;
                    }

                    *(v80 + 144) = v81;
                    goto LABEL_129;
                  }
                }

                (v64->release_0)(v64);
                goto LABEL_108;
              }

LABEL_96:
              (v58->release_0)(v58);
              goto LABEL_97;
            }

            (*(*this + 208))(this, "PSVR2Connection", "USB");
          }

          v60 = 1;
          if (!v58)
          {
            goto LABEL_97;
          }

          goto LABEL_96;
        }

        v53 = v52;
        if ((v52->__vftable[1].taggedRelease)(v52, "USB"))
        {
          v54 = 1;
        }

        else
        {
          if (!(v53->__vftable[1].taggedRelease)(v53, "Bluetooth"))
          {
            *(this + 61) = 0;
            goto LABEL_85;
          }

          v54 = 2;
        }

        *(this + 61) = v54;
LABEL_85:
        (v53->release_0)(v53);
        goto LABEL_86;
      }

LABEL_73:
      (v25->release_0)(v25);
      goto LABEL_74;
    }

    v42 = (*(*this + 328))(this, "UniformTypeIdentifiers");
    v43 = OSMetaClassBase::safeMetaCast(v42, OSArray::metaClass);
    if (v43)
    {
      goto LABEL_71;
    }

    if (v42)
    {
      (v42->release_0)(v42);
    }

    v44 = OSArray::withCapacity(2u);
    if (!v44)
    {
LABEL_72:
      if (!v25)
      {
        goto LABEL_74;
      }

      goto LABEL_73;
    }

    v43 = v44;
    v45 = *(*(this + 32) + 51);
    if (v45 == 1)
    {
      v46 = "com.sony.playstation.vr2-sense.left";
    }

    else
    {
      if (v45 != 2)
      {
LABEL_64:
        v49 = OSString::withCString("com.sony.playstation.vr2-sense");
        v50 = v49;
        anObject = v49;
        if (v49)
        {
          (v49->retain)(v49);
        }

        OSArray::setObject(v43, &anObject);
        if (anObject)
        {
          (anObject->release_0)(anObject);
        }

        if (v50)
        {
          (v50->release_0)(v50);
        }

        (*(*this + 200))(this, "UniformTypeIdentifiers", v43);
LABEL_71:
        (v43->release_0)(v43);
        goto LABEL_72;
      }

      v46 = "com.sony.playstation.vr2-sense.right";
    }

    v47 = OSString::withCString(v46);
    if (v47)
    {
      v48 = v47;
      anObject = v47;
      (v47->retain)(v47);
      OSArray::setObject(v43, &anObject);
      if (anObject)
      {
        (anObject->release_0)(anObject);
      }

      (v48->release_0)(v48);
    }

    goto LABEL_64;
  }

  v28 = _gc_log_debug();
  _os_log_internal(&dword_0, v28, OS_LOG_TYPE_DEBUG, "AssertMacros: %s, %s file: %s, line: %d, value: %ld\n", "providerWorkLoop", "", "/Library/Caches/com.apple.xbs/Sources/CoreController_kext/GameControllerDrivers/Sony/PSVR2/Kernel/PSVR2SenseDevice.cpp", 78, 0);
  return 0;
}

uint64_t PSVR2SenseDevice::wakeForOutputReport(IORegistryEntry *this, IOTimerEventSource *a2)
{
  v10 = 0u;
  *arg2 = 0u;
  *arg3 = 0u;
  clock_get_uptime(&arg3[1]);
  RegistryEntryID = IORegistryEntry::getRegistryEntryID(this);
  if ((kdebug_enable & 0xFFFFFFF7) != 0)
  {
    kernel_debug(0x31CC6505u, RegistryEntryID, *(this[5].reserved + 36), arg3[1], *(this[5].reserved + 40), 0);
  }

  v4 = this[5].__vftable;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 0x40000000;
  v8[2] = ___ZN16PSVR2SenseDevice19wakeForOutputReportEP18IOTimerEventSource_block_invoke;
  v8[3] = &__block_descriptor_tmp_208;
  v8[4] = this;
  v8[5] = arg3;
  IOGCCommandQueue::syncBlock(v4, v8);
  v5 = PSVR2SenseDevice::prepareOutputReport(this, arg3);
  v6 = IORegistryEntry::getRegistryEntryID(this);
  if ((kdebug_enable & 0xFFFFFFF7) != 0)
  {
    kernel_debug(0x31CC6506u, v6, arg2[0], v5, *(this[5].reserved + 40), 0);
  }

  return 0;
}

void PSVR2SenseDevice::handleStop(PSVR2SenseDevice *this, IOHIDInterface *a2)
{
  v4 = _gc_log_psvr2();
  RegistryEntryID = IORegistryEntry::getRegistryEntryID(this);
  v6 = IORegistryEntry::getRegistryEntryID(a2);
  _os_log_internal(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "[%#010llx] PSVR2SenseDevice::handleStop(<IOHIDInterface %#010llx>)", RegistryEntryID, v6);
  atomic_fetch_and(this + 240, 0xFEu);
  v7 = *(this + 42);
  if (v7)
  {
    (*(*v7 + 216))(v7, 0);
  }

  atomic_store(0, this + 240);
  *(this + 62) = 0;
  *(this + 61) = 0;
  **(this + 33) = 0;
  *(this + 280) &= ~1u;
  *(this + 34) = 0;
  **(this + 37) = 0;
  *(this + 312) &= ~1u;
  *(this + 38) = 0;
  v8 = *(this + 27);
  v8[37] = 0;
  v8[35] = 0;
  v8[36] = 0;

  IOHIDGCDevice::handleStop(this, a2);
}

BOOL PSVR2SenseDevice::didTerminate(IOService *this, IOService *a2, IOOptionBits a3, BOOL *a4)
{
  v8 = _gc_log_psvr2();
  RegistryEntryID = IORegistryEntry::getRegistryEntryID(this);
  v10 = IORegistryEntry::getRegistryEntryID(a2);
  _os_log_internal(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "[%#010llx] PSVR2SenseDevice::didTerminate(<IOHIDInterface %#010llx>)", RegistryEntryID, v10);
  (this->__vftable[1].free)(this);

  return IOService::didTerminate(this, a2, a3, a4);
}

uint64_t PSVR2SenseDevice::handleProviderOpened(PSVR2SenseDevice *this, unint64_t a2)
{
  v4 = _gc_log_psvr2();
  RegistryEntryID = IORegistryEntry::getRegistryEntryID(this);
  _os_log_internal(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "[%#010llx] PSVR2SenseDevice::handleProviderOpened(%llu)", RegistryEntryID, a2);
  IOHIDGCDevice::handleProviderOpened(this, a2);
  atomic_fetch_or(this + 240, 2u);
  v6 = *(this + 25);
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 0x40000000;
  aBlock[2] = ___ZN16PSVR2SenseDevice20handleProviderOpenedEy_block_invoke;
  aBlock[3] = &__block_descriptor_tmp_36;
  aBlock[4] = this;
  aBlock[5] = a2;
  return IOGCCommandQueue::asyncBlock(v6, aBlock, 0, 0);
}

uint64_t ___ZN16PSVR2SenseDevice20handleProviderOpenedEy_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 0x40000000;
  v4[2] = ___ZN16PSVR2SenseDevice20handleProviderOpenedEy_block_invoke_2;
  v4[3] = &__block_descriptor_tmp_0;
  v4[4] = v2;
  return PSVR2SenseDevice::refreshAccessoryInfo(v2, v1, 0, v4);
}

uint64_t PSVR2SenseDevice::refreshAccessoryInfo(IORegistryEntry *a1, uint64_t a2, char a3, uint64_t a4)
{
  v8 = _gc_log_psvr2();
  RegistryEntryID = IORegistryEntry::getRegistryEntryID(a1);
  _os_log_internal(&dword_0, v8, OS_LOG_TYPE_DEBUG, "[%#010llx] ::refreshAccessoryInfo(%llu)", RegistryEntryID, a2);
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 1107296256;
  v13[2] = ___ZN16PSVR2SenseDevice20refreshAccessoryInfoEybU13block_pointerFviE_block_invoke;
  v13[5] = a1;
  v13[6] = a2;
  v14 = a3;
  v13[3] = &__block_descriptor_tmp_45;
  v13[4] = a4;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 1107296256;
  v11[2] = ___ZN16PSVR2SenseDevice20refreshAccessoryInfoEybU13block_pointerFviE_block_invoke_46;
  v11[6] = a1;
  v11[7] = a2;
  v12 = a3;
  v11[3] = &__block_descriptor_tmp_55;
  v11[4] = v13;
  v11[5] = a4;
  return ___ZN16PSVR2SenseDevice20refreshAccessoryInfoEybU13block_pointerFviE_block_invoke_46(v11);
}

void ___ZN16PSVR2SenseDevice20handleProviderOpenedEy_block_invoke_2(uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    v4 = _gc_log_psvr2();
    RegistryEntryID = IORegistryEntry::getRegistryEntryID(v2);
    _os_log_internal(&dword_0, v4, OS_LOG_TYPE_ERROR, "[%#010llx] [!] Refresh accessory info failed: %#x. The service will not be registered.  Disconnect and reconnect the accessory.", RegistryEntryID, a2);
  }

  else
  {
    if ((atomic_fetch_or((v2 + 240), 4u) & 4) == 0)
    {
      v6 = _gc_log_psvr2();
      v7 = IORegistryEntry::getRegistryEntryID(v2);
      _os_log_internal(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "[%#010llx] Registering service with IOKit...", v7);
      (*(*v2 + 672))(v2, 0);
    }

    (*(**(v2 + 208) + 176))(*(v2 + 208));
    v8 = *(**(v2 + 208) + 280);

    v8();
  }
}

uint64_t PSVR2SenseDevice::handleProviderClosed(PSVR2SenseDevice *this, uint64_t a2)
{
  v4 = _gc_log_psvr2();
  RegistryEntryID = IORegistryEntry::getRegistryEntryID(this);
  _os_log_internal(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "[%#010llx] PSVR2SenseDevice::handleProviderClosed(%llu)", RegistryEntryID, a2);
  IOHIDGCDevice::handleProviderClosed(this);
  atomic_fetch_and(this + 240, 0xFDu);
  (*(**(this + 26) + 184))();
  v6 = *(*this + 1448);

  return v6(this);
}

uint64_t PSVR2SenseDevice::setProperties(IORegistryEntry *this, OSObject *anObject)
{
  if (OSMetaClassBase::safeMetaCast(anObject, OSDictionary::metaClass))
  {

    return IORegistryEntry::setProperties(this, anObject);
  }

  else
  {
    PSVR2SenseDevice::setProperties();
    return 3758097090;
  }
}

uint64_t ___ZN16PSVR2SenseDevice20refreshAccessoryInfoEybU13block_pointerFviE_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v1 = *(a1 + 48);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 1107296256;
  v5[2] = ___ZN16PSVR2SenseDevice20refreshAccessoryInfoEybU13block_pointerFviE_block_invoke_2;
  v3 = *(a1 + 32);
  v5[3] = &__block_descriptor_tmp_42;
  v5[4] = v3;
  v5[5] = v2;
  v5[6] = v1;
  return PSVR2SenseDevice::refreshMotionCorrectionData(v2, v1, *(a1 + 56) & 1, v5);
}

uint64_t PSVR2SenseDevice::refreshMotionCorrectionData(uint64_t a1, unint64_t a2, char a3, uint64_t a4)
{
  v8 = _gc_log_psvr2();
  RegistryEntryID = IORegistryEntry::getRegistryEntryID(a1);
  _os_log_internal(&dword_0, v8, OS_LOG_TYPE_DEBUG, "[%#010llx] ::refreshMotionCorrectionData(%llu)", RegistryEntryID, a2);
  if (a3 & 1) == 0 && (**(a1 + 296))
  {
    v10 = _gc_log_psvr2();
    v11 = IORegistryEntry::getRegistryEntryID(a1);
    _os_log_internal(&dword_0, v10, OS_LOG_TYPE_DEBUG, "[%#010llx] Valid motion correction has already been fetched.", v11);
    v12 = *(a1 + 200);
    v37[0] = _NSConcreteStackBlock;
    v37[1] = 1107296256;
    v37[2] = ___ZN16PSVR2SenseDevice27refreshMotionCorrectionDataEybU13block_pointerFviE_block_invoke;
    v37[3] = &__block_descriptor_tmp_113;
    v37[4] = a4;
    v13 = v37;
    return IOGCCommandQueue::asyncBlock(v12, v13, 0, 0);
  }

  if (IOService::isInactive(a1))
  {
    return PSVR2SenseDevice::refreshMotionCorrectionData(a1, &v36);
  }

  if (!(*(*a1 + 1464))(a1))
  {
    return PSVR2SenseDevice::refreshMotionCorrectionData(a1, &v35);
  }

  if ((*(*a1 + 1464))(a1) > a2)
  {
    return PSVR2SenseDevice::refreshMotionCorrectionData();
  }

  v14 = *(a1 + 304);
  if (v14 && *(v14 + 8) >= a2)
  {
    v26 = _gc_log_psvr2();
    v27 = IORegistryEntry::getRegistryEntryID(a1);
    _os_log_internal(&dword_0, v26, OS_LOG_TYPE_DEBUG, "[%#010llx] Motion correction is already being fetched.", v27);
    v12 = *(a1 + 200);
    v34[0] = _NSConcreteStackBlock;
    v34[1] = 1107296256;
    v34[2] = ___ZN16PSVR2SenseDevice27refreshMotionCorrectionDataEybU13block_pointerFviE_block_invoke_126;
    v34[3] = &__block_descriptor_tmp_129;
    v34[4] = a4;
    v13 = v34;
    return IOGCCommandQueue::asyncBlock(v12, v13, 0, 0);
  }

  v15 = IOMallocTypeImpl();
  if (!v15)
  {
    return PSVR2SenseDevice::refreshMotionCorrectionData(a1, &v33);
  }

  v16 = v15;
  v17 = OSArray::withCapacity(2u);
  v18 = OSNumber::withNumber(0, 8u);
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 0x40000000;
  aBlock[2] = ___ZN16PSVR2SenseDevice27refreshMotionCorrectionDataEybU13block_pointerFviE_block_invoke_136;
  aBlock[3] = &__block_descriptor_tmp_138;
  aBlock[4] = a1;
  v19 = _Block_copy(aBlock);
  v31[0] = _NSConcreteStackBlock;
  v31[1] = 0x40000000;
  v31[2] = ___ZN16PSVR2SenseDevice27refreshMotionCorrectionDataEybU13block_pointerFviE_block_invoke_2;
  v31[3] = &__block_descriptor_tmp_139;
  v31[4] = a1;
  v31[5] = v16;
  v20 = _Block_copy(v31);
  v30[0] = _NSConcreteStackBlock;
  v30[1] = 1107296256;
  v30[2] = ___ZN16PSVR2SenseDevice27refreshMotionCorrectionDataEybU13block_pointerFviE_block_invoke_3;
  v30[5] = a1;
  v30[6] = v16;
  v30[3] = &__block_descriptor_tmp_195;
  v30[4] = a4;
  v21 = _Block_copy(v30);
  v22 = v21;
  if (v17 && v18 && v19 && v20 && v21)
  {
    (*(*a1 + 32))(a1);
    if (*v16)
    {
      (*(**v16 + 40))(*v16);
    }

    *v16 = a1;
    v16[1] = a2;
    v23 = v16[2];
    v16[2] = v17;
    (v17->retain)(v17);
    if (v23)
    {
      (*(*v23 + 40))(v23);
    }

    v24 = v16[3];
    v16[3] = v18;
    (v18->retain)(v18);
    if (v24)
    {
      (*(*v24 + 40))(v24);
    }

    v16[11] = v19;
    v16[12] = v20;
    v16[13] = v22;
    *(a1 + 304) = v16;
    fetchNextMotionCorrectionDataPage(v16);
  }

  else
  {
    if (v19)
    {
      _Block_release(v19);
    }

    if (v20)
    {
      _Block_release(v20);
    }

    if (v22)
    {
      _Block_release(v22);
    }

    IOFreeTypeImpl();
    v28 = *(a1 + 200);
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 1107296256;
    v29[2] = ___ZN16PSVR2SenseDevice27refreshMotionCorrectionDataEybU13block_pointerFviE_block_invoke_196;
    v29[3] = &__block_descriptor_tmp_199;
    v29[4] = a4;
    result = IOGCCommandQueue::asyncBlock(v28, v29, 0, 0);
    if (!v18)
    {
      goto LABEL_23;
    }
  }

  result = (v18->release_0)(v18);
LABEL_23:
  if (v17)
  {
    return (v17->release_0)(v17);
  }

  return result;
}

uint64_t ___ZN16PSVR2SenseDevice20refreshAccessoryInfoEybU13block_pointerFviE_block_invoke_2(uint64_t a1, int a2)
{
  v4 = *(a1 + 40);
  v5 = _gc_log_psvr2();
  RegistryEntryID = IORegistryEntry::getRegistryEntryID(v4);
  if (a2)
  {
    _os_log_internal(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "[%#010llx] WARNING: Refresh accessory motion correction data failed (Attempt 1/2): %#x", RegistryEntryID, a2);
    v7 = *(a1 + 48);
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 1107296256;
    v11[2] = ___ZN16PSVR2SenseDevice20refreshAccessoryInfoEybU13block_pointerFviE_block_invoke_3;
    v8 = *(a1 + 32);
    v11[3] = &__block_descriptor_tmp_39;
    v11[4] = v8;
    v11[5] = v4;
    return PSVR2SenseDevice::refreshMotionCorrectionData(v4, v7, *(a1 + 56) & 1, v11);
  }

  else
  {
    _os_log_internal(&dword_0, v5, OS_LOG_TYPE_DEBUG, "[%#010llx] Refresh accessory motion correction data completed with status (Attempt 1/2): %#x", RegistryEntryID, 0);
    v10 = *(*(a1 + 32) + 16);

    return v10();
  }
}

uint64_t ___ZN16PSVR2SenseDevice20refreshAccessoryInfoEybU13block_pointerFviE_block_invoke_3(uint64_t a1, int a2)
{
  v4 = *(a1 + 40);
  v5 = _gc_log_psvr2();
  RegistryEntryID = IORegistryEntry::getRegistryEntryID(v4);
  if (a2)
  {
    _os_log_internal(&dword_0, v5, OS_LOG_TYPE_ERROR, "[%#010llx] ERROR: Refresh accessory motion correction data failed (Attempt 2/2): %#x", RegistryEntryID, a2);
  }

  else
  {
    _os_log_internal(&dword_0, v5, OS_LOG_TYPE_DEBUG, "[%#010llx] Refresh accessory motion correction data completed with status (Attempt 2/2): %#x", RegistryEntryID, 0);
  }

  v7 = *(*(a1 + 32) + 16);

  return v7();
}

uint64_t ___ZN16PSVR2SenseDevice20refreshAccessoryInfoEybU13block_pointerFviE_block_invoke_46(uint64_t a1)
{
  v2 = *(a1 + 48);
  v1 = *(a1 + 56);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 1107296256;
  v4[2] = ___ZN16PSVR2SenseDevice20refreshAccessoryInfoEybU13block_pointerFviE_block_invoke_2_47;
  v4[3] = &__block_descriptor_tmp_52;
  v6 = v2;
  v7 = v1;
  v8 = *(a1 + 64) & 1;
  v5 = *(a1 + 32);
  return PSVR2SenseDevice::refreshFirmwareInfo(v2, v1, v8, v4);
}

uint64_t PSVR2SenseDevice::refreshFirmwareInfo(uint64_t a1, unint64_t a2, char a3, uint64_t a4)
{
  v8 = _gc_log_psvr2();
  RegistryEntryID = IORegistryEntry::getRegistryEntryID(a1);
  _os_log_internal(&dword_0, v8, OS_LOG_TYPE_DEBUG, "[%#010llx] ::refreshFirmwareInfo(%llu)", RegistryEntryID, a2);
  if (a3 & 1) == 0 && (**(a1 + 264))
  {
    v10 = _gc_log_psvr2();
    v11 = IORegistryEntry::getRegistryEntryID(a1);
    _os_log_internal(&dword_0, v10, OS_LOG_TYPE_DEBUG, "[%#010llx] Valid firmware info has already been fetched.", v11);
    v12 = *(a1 + 200);
    v33[0] = _NSConcreteStackBlock;
    v33[1] = 1107296256;
    v33[2] = ___ZN16PSVR2SenseDevice19refreshFirmwareInfoEybU13block_pointerFviE_block_invoke;
    v33[3] = &__block_descriptor_tmp_58;
    v33[4] = a4;
    v13 = v33;
    return IOGCCommandQueue::asyncBlock(v12, v13, 0, 0);
  }

  if (IOService::isInactive(a1))
  {
    return PSVR2SenseDevice::refreshFirmwareInfo(a1, &v32);
  }

  if (!(*(*a1 + 1464))(a1))
  {
    return PSVR2SenseDevice::refreshFirmwareInfo(a1, &v31);
  }

  if ((*(*a1 + 1464))(a1) > a2)
  {
    return PSVR2SenseDevice::refreshFirmwareInfo();
  }

  v14 = *(a1 + 272);
  if (v14 && *(v14 + 72) >= a2)
  {
    v22 = _gc_log_psvr2();
    v23 = IORegistryEntry::getRegistryEntryID(a1);
    _os_log_internal(&dword_0, v22, OS_LOG_TYPE_DEBUG, "[%#010llx] Firmware info is already being fetched.", v23);
    v12 = *(a1 + 200);
    v30[0] = _NSConcreteStackBlock;
    v30[1] = 1107296256;
    v30[2] = ___ZN16PSVR2SenseDevice19refreshFirmwareInfoEybU13block_pointerFviE_block_invoke_71;
    v30[3] = &__block_descriptor_tmp_74;
    v30[4] = a4;
    v13 = v30;
    return IOGCCommandQueue::asyncBlock(v12, v13, 0, 0);
  }

  v15 = IOMallocTypeImpl();
  if (!v15)
  {
    return PSVR2SenseDevice::refreshFirmwareInfo(a1, &v29);
  }

  v16 = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 0x40000000;
  aBlock[2] = ___ZN16PSVR2SenseDevice19refreshFirmwareInfoEybU13block_pointerFviE_block_invoke_81;
  aBlock[3] = &__block_descriptor_tmp_83;
  aBlock[4] = a1;
  v17 = _Block_copy(aBlock);
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 0x40000000;
  v27[2] = ___ZN16PSVR2SenseDevice19refreshFirmwareInfoEybU13block_pointerFviE_block_invoke_2;
  v27[3] = &__block_descriptor_tmp_85;
  v27[4] = a1;
  v27[5] = v16;
  v18 = _Block_copy(v27);
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 1107296256;
  v26[2] = ___ZN16PSVR2SenseDevice19refreshFirmwareInfoEybU13block_pointerFviE_block_invoke_3;
  v26[5] = a1;
  v26[6] = v16;
  v26[3] = &__block_descriptor_tmp_106;
  v26[4] = a4;
  v19 = _Block_copy(v26);
  v20 = v19;
  if (v17 && v18 && v19)
  {
    (*(*a1 + 32))(a1);
    if (*v16)
    {
      (*(**v16 + 40))(*v16);
    }

    *v16 = a1;
    v16[9] = a2;
    v16[17] = v17;
    v16[18] = v18;
    v16[19] = v20;
    *(a1 + 272) = v16;
    return fetchFirmwareInfo(v16);
  }

  else
  {
    if (v17)
    {
      _Block_release(v17);
    }

    if (v18)
    {
      _Block_release(v18);
    }

    if (v20)
    {
      _Block_release(v20);
    }

    IOFreeTypeImpl();
    v24 = *(a1 + 200);
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 1107296256;
    v25[2] = ___ZN16PSVR2SenseDevice19refreshFirmwareInfoEybU13block_pointerFviE_block_invoke_107;
    v25[3] = &__block_descriptor_tmp_110;
    v25[4] = a4;
    return IOGCCommandQueue::asyncBlock(v24, v25, 0, 0);
  }
}

uint64_t ___ZN16PSVR2SenseDevice20refreshAccessoryInfoEybU13block_pointerFviE_block_invoke_2_47(uint64_t a1, int a2)
{
  v4 = *(a1 + 48);
  v5 = _gc_log_psvr2();
  RegistryEntryID = IORegistryEntry::getRegistryEntryID(v4);
  if (a2)
  {
    _os_log_internal(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "[%#010llx] WARNING: Refresh accessory firmware info failed (Attempt 1/2): %#x", RegistryEntryID, a2);
    v7 = *(a1 + 56);
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 1107296256;
    v10[2] = ___ZN16PSVR2SenseDevice20refreshAccessoryInfoEybU13block_pointerFviE_block_invoke_3_48;
    v10[3] = &__block_descriptor_tmp_49;
    v12 = v4;
    v11 = *(a1 + 32);
    return PSVR2SenseDevice::refreshFirmwareInfo(v4, v7, *(a1 + 64) & 1, v10);
  }

  else
  {
    _os_log_internal(&dword_0, v5, OS_LOG_TYPE_DEBUG, "[%#010llx] Refresh accessory firmware info completed with status (Attempt 1/2): %#x", RegistryEntryID, 0);
    v9 = *(*(a1 + 32) + 16);

    return v9();
  }
}

uint64_t ___ZN16PSVR2SenseDevice20refreshAccessoryInfoEybU13block_pointerFviE_block_invoke_3_48(void *a1, int a2)
{
  v4 = a1[6];
  v5 = _gc_log_psvr2();
  RegistryEntryID = IORegistryEntry::getRegistryEntryID(v4);
  if (a2)
  {
    _os_log_internal(&dword_0, v5, OS_LOG_TYPE_ERROR, "[%#010llx] ERROR: Refresh accessory firmware info failed (Attempt 2/2): %#x", RegistryEntryID, a2);
    v7 = *(a1[5] + 16);
  }

  else
  {
    _os_log_internal(&dword_0, v5, OS_LOG_TYPE_DEBUG, "[%#010llx] Refresh accessory firmware info completed with status (Attempt 2/2): %#x", RegistryEntryID, 0);
    v7 = *(a1[4] + 16);
  }

  return v7();
}

void __copy_helper_block_8_32b40b(uint64_t a1, uint64_t a2)
{
  _Block_object_assign((a1 + 32), *(a2 + 32), 7);
  v4 = *(a2 + 40);

  _Block_object_assign((a1 + 40), v4, 7);
}

void __destroy_helper_block_8_32b40b(uint64_t a1)
{
  _Block_object_dispose(*(a1 + 40), 7);
  v2 = *(a1 + 32);

  _Block_object_dispose(v2, 7);
}

uint64_t PSVR2SenseDevice::requestFirmwareInfo(IORegistryEntry *a1, uint64_t a2)
{
  v4 = _gc_log_psvr2();
  RegistryEntryID = IORegistryEntry::getRegistryEntryID(a1);
  _os_log_internal(&dword_0, v4, OS_LOG_TYPE_DEBUG, "[%#010llx] Request Firmware Info", RegistryEntryID);
  v6 = a1[6].retainCount == 2;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 1107296256;
  v8[2] = ___ZN16PSVR2SenseDevice19requestFirmwareInfoEU13block_pointerFviPK22PSVR2SenseFirmwareInfoNS_9CRCResultEE_block_invoke;
  v8[4] = a2;
  v8[5] = a1;
  v8[3] = &__block_descriptor_tmp_223;
  return PSVR2SenseDevice::getFeatureReport(a1, 32, 64, v6, v8);
}

BOOL ___ZN16PSVR2SenseDevice19refreshFirmwareInfoEybU13block_pointerFviE_block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = atomic_load((*(a1 + 40) + 80));
  if (v2)
  {
    return 0;
  }

  v3 = *(*(a1 + 40) + 72);
  return v3 >= (v1->__vftable[1].copyProperty)(*(a1 + 32)) && !IOService::isInactive(v1) && (v1->__vftable[1].copyProperty)(v1) != 0;
}

uint64_t ___ZN16PSVR2SenseDevice19refreshFirmwareInfoEybU13block_pointerFviE_block_invoke_3(void *a1, char a2)
{
  v5 = a1[5];
  v4 = a1[6];
  v6 = v4 + 8;
  v7 = *(v4 + 96) != 0;
  v19 = *(v4 + 104);
  v20 = *(v4 + 112);
  v8 = *(v4 + 120);
  if (v8)
  {
    (*(*v8 + 32))(v8);
    v4 = a1[6];
  }

  v9 = *(v5 + 200);
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 0x40000000;
  v15[2] = ___ZN16PSVR2SenseDevice19refreshFirmwareInfoEybU13block_pointerFviE_block_invoke_4;
  v15[3] = &__block_descriptor_tmp_102;
  v15[4] = v5;
  v15[5] = v4;
  v15[6] = v6;
  v17 = v7;
  v15[7] = v19;
  v16 = v20;
  v18 = a2;
  v10 = IOGCCommandQueue::syncBlock(v9, v15);
  v11 = a1[4];
  if (v11)
  {
    (*(v11 + 16))(v11, v10);
  }

  v12 = a1[6];
  if (*v12)
  {
    (*(**v12 + 40))(*v12, v10);
  }

  *v12 = 0;
  v13 = v12[15];
  if (v13)
  {
    (*(*v13 + 40))(v13, v10);
  }

  v12[15] = 0;
  _Block_release(v12[17]);
  _Block_release(v12[18]);
  _Block_release(v12[19]);
  v12[18] = 0;
  v12[17] = 0;
  v12[19] = 0;
  result = IOFreeTypeImpl();
  if (v8)
  {
    return (*(*v8 + 40))(v8);
  }

  return result;
}

uint64_t ___ZN16PSVR2SenseDevice19refreshFirmwareInfoEybU13block_pointerFviE_block_invoke_4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = atomic_load((*(a1 + 40) + 80));
  if (v2)
  {
    v4 = 3758097131;
    v45 = *(a1 + 32);
    ___ZN16PSVR2SenseDevice19refreshFirmwareInfoEybU13block_pointerFviE_block_invoke_4_cold_2();
  }

  else if (v1[6].fPropertyTable == *(a1 + 40))
  {
    v1[6].fPropertyTable = 0;
    LOBYTE(v1[7].__vftable) |= 1u;
    v7 = OSDictionary::withCapacity(0xAu);
    if (v7)
    {
      v8 = OSData::withBytes(*(a1 + 48), 0x3Bu);
      (v7->setObject_1)(v7, "_Raw", v8);
      if (v8)
      {
        (v8->release_0)(v8);
      }

      if (*(a1 + 68))
      {
        (v7->setObject_1)(v7, "_CRC_Invalid", *kOSBooleanTrue);
        v46 = OSNumber::withNumber(*(a1 + 60), 0x20u);
        v47 = v46;
        *anObject = v46;
        if (v46)
        {
          (v46->retain)(v46);
        }

        OSDictionary::setObject(v7, "_CRC_Reported", anObject);
        if (*anObject)
        {
          (*(**anObject + 40))(*anObject);
        }

        v48 = OSNumber::withNumber(*(a1 + 64), 0x20u);
        v49 = v48;
        *anObject = v48;
        if (v48)
        {
          (v48->retain)(v48);
        }

        OSDictionary::setObject(v7, "_CRC_Expected", anObject);
        if (*anObject)
        {
          (*(**anObject + 40))(*anObject);
        }

        if (v49)
        {
          (v49->release_0)(v49);
        }

        if (v47)
        {
          (v47->release_0)(v47);
        }
      }

      if (*(a1 + 69))
      {
        if (*(*(a1 + 48) + 47))
        {
          v9 = 1;
        }

        else
        {
          v9 = 2;
        }

        if (*(*(a1 + 48) + 47))
        {
          v10 = "Sense Left";
        }

        else
        {
          v10 = "Sense Right";
        }

        *(v1[6].reserved + 51) = v9;
        v11 = OSString::withCStringNoCopy(v10);
        (v1->setProperty_1)(v1, "PSVR2DeviceType", v11);
        if (v11)
        {
          (v11->release_0)(v11);
        }

        reserved = v1[6].reserved;
        v13 = *(a1 + 48);
        strnlen(v13 + 11, 8uLL);
        v14 = strnlen(v13, 0xBuLL);
        *reserved = 0;
        *(reserved + 1) = 0;
        *(reserved + 13) = 0;
        v15 = v1[6].reserved;
        v16 = *(a1 + 48);
        __strncpy_chk();
        v17 = v1[6].reserved;
        v18 = v17 + v14;
        if (v14 != v14)
        {
          v18 = ((v17 + v14) & 0xFFFFFFFFFFFFLL | 0x2BAD000000000000);
        }

        *v18 = 32;
        v19 = v1[6].reserved;
        v20 = *(a1 + 48);
        __strncpy_chk();
        v21 = *(a1 + 48);
        v22 = v1[6].reserved;
        *(v22 + 11) = *(v21 + 19);
        *(v22 + 12) = *(v21 + 21);
        *(v22 + 28) = *(v21 + 23);
        v23 = v21 + 31;
        v24 = *(v21 + 31);
        *(v22 + 11) = *(v23 + 8);
        *(v22 + 36) = v24;
        *(v1[6].reserved + 24) = *(*(a1 + 48) + 43);
        v25 = v1[6].reserved;
        *(v25 + 50) = *(*(a1 + 48) + 45);
        v27 = OSString::withCString(v25, &dword_14 + 1, v26);
        v4 = v27;
        *anObject = v27;
        if (v27)
        {
          (*(*v27 + 32))(v27);
        }

        OSDictionary::setObject(v7, "BT", anObject);
        if (*anObject)
        {
          (*(**anObject + 40))(*anObject);
        }

        memset(anObject, 0, sizeof(anObject));
        snprintf(anObject, 0x20uLL, "%#0.4x", *(v1[6].reserved + 12));
        v29 = OSString::withCString(anObject, &stru_20, v28);
        v30 = v29;
        *v54 = v29;
        if (v29)
        {
          (*(*v29 + 32))(v29);
        }

        OSDictionary::setObject(v7, "SS", v54);
        if (*v54)
        {
          (*(**v54 + 40))(*v54);
        }

        memset(v54, 0, sizeof(v54));
        snprintf(v54, 0x20uLL, "%#0.8x", *(v1[6].reserved + 7));
        v32 = OSString::withCString(v54, &stru_20, v31);
        v33 = v32;
        *v53 = v32;
        if (v32)
        {
          (*(*v32 + 32))(v32);
        }

        OSDictionary::setObject(v7, "HI", v53);
        if (*v53)
        {
          (*(**v53 + 40))(*v53);
        }

        memset(v53, 0, sizeof(v53));
        snprintf(v53, 0x20uLL, "%#0.8x", *(v1[6].reserved + 8));
        v35 = OSString::withCString(v53, &stru_20, v34);
        v36 = v35;
        *v52 = v35;
        if (v35)
        {
          (*(*v35 + 32))(v35);
        }

        OSDictionary::setObject(v7, "MV", v52);
        if (*v52)
        {
          (*(**v52 + 40))(*v52);
        }

        memset(v52, 0, sizeof(v52));
        snprintf(v52, 0x20uLL, "%#0.4x", *(v1[6].reserved + 24));
        v38 = OSString::withCString(v52, &stru_20, v37);
        v39 = v38;
        *v51 = v38;
        if (v38)
        {
          (*(*v38 + 32))(v38);
        }

        OSDictionary::setObject(v7, "UV", v51);
        if (*v51)
        {
          (*(**v51 + 40))(*v51);
        }

        memset(v51, 0, sizeof(v51));
        snprintf(v51, 0x20uLL, "%#0.2x", *(v1[6].reserved + 50));
        v41 = OSString::withCString(v51, &stru_20, v40);
        v42 = v41;
        v50 = v41;
        if (v41)
        {
          (v41->retain)(v41);
        }

        OSDictionary::setObject(v7, "UC", &v50);
        if (v50)
        {
          (v50->release_0)(v50);
        }

        LOBYTE(v1[6].fRegistryTable->__vftable) = 1;
        if (v42)
        {
          (v42->release_0)(v42);
        }

        if (v39)
        {
          (*(*v39 + 40))(v39);
        }

        if (v36)
        {
          (*(*v36 + 40))(v36);
        }

        if (v33)
        {
          (*(*v33 + 40))(v33);
        }

        if (v30)
        {
          (*(*v30 + 40))(v30);
        }

        if (v4)
        {
          (*(*v4 + 40))(v4);
          v4 = 0;
        }
      }

      else
      {
        v43 = *(a1 + 40);
        v4 = v43[32];
        if (!v4)
        {
          if (v43[22])
          {
            v4 = 3758097110;
          }

          else if (v43[24])
          {
            v4 = 3758097129;
          }

          else
          {
            v4 = 3758097084;
          }
        }
      }
    }

    else
    {
      ___ZN16PSVR2SenseDevice19refreshFirmwareInfoEybU13block_pointerFviE_block_invoke_4_cold_1(anObject);
      v4 = 3758097085;
    }

    if ((v7->getCount)(v7))
    {
      (v1->setProperty_1)(v1, "_PSVR2FirmwareInfo", v7);
    }

    (v7->release_0)(v7);
  }

  else
  {
    v4 = 3758097131;
    v5 = _gc_log_psvr2();
    RegistryEntryID = IORegistryEntry::getRegistryEntryID(v1);
    _os_log_internal(&dword_0, v5, OS_LOG_TYPE_DEBUG, "[%#010llx] Accessory firmware info fetch request was replaced.", RegistryEntryID);
  }

  return v4;
}

uint64_t fetchFirmwareInfo(uint64_t a1)
{
  v2 = _gc_log_psvr2();
  RegistryEntryID = IORegistryEntry::getRegistryEntryID(*a1);
  _os_log_internal(&dword_0, v2, OS_LOG_TYPE_DEBUG, "[%#010llx] Fetch firmware info (g: %llu a:%u)...", RegistryEntryID, *(a1 + 72), *(a1 + 84));
  v4 = *(a1 + 136);
  v6 = _NSConcreteStackBlock;
  v7 = 0x40000000;
  v8 = ___ZL17fetchFirmwareInfoP28FirmwareInfoDataFetchContext_block_invoke;
  v9 = &__block_descriptor_tmp_252;
  v10 = a1;
  return (*(v4 + 16))();
}

uint64_t PSVR2SenseDevice::requestMotionCorrectionData(IORegistryEntry *a1, uint64_t a2)
{
  v4 = _gc_log_psvr2();
  RegistryEntryID = IORegistryEntry::getRegistryEntryID(a1);
  _os_log_internal(&dword_0, v4, OS_LOG_TYPE_DEBUG, "[%#010llx] Request Motion Correction Data", RegistryEntryID);
  v6 = a1[6].retainCount == 2;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 1107296256;
  v8[2] = ___ZN16PSVR2SenseDevice27requestMotionCorrectionDataEU13block_pointerFviPK30PSVR2SenseMotionCorrectionDataNS_9CRCResultEE_block_invoke;
  v8[4] = a2;
  v8[5] = a1;
  v8[3] = &__block_descriptor_tmp_220;
  return PSVR2SenseDevice::getFeatureReport(a1, 5, 64, v6, v8);
}

BOOL ___ZN16PSVR2SenseDevice27refreshMotionCorrectionDataEybU13block_pointerFviE_block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = atomic_load((*(a1 + 40) + 32));
  if (v2)
  {
    return 0;
  }

  v3 = *(*(a1 + 40) + 8);
  return v3 >= (v1->__vftable[1].copyProperty)(*(a1 + 32)) && !IOService::isInactive(v1) && (v1->__vftable[1].copyProperty)(v1) != 0;
}

uint64_t ___ZN16PSVR2SenseDevice27refreshMotionCorrectionDataEybU13block_pointerFviE_block_invoke_3(void *a1, char a2)
{
  v5 = a1[5];
  v4 = a1[6];
  v6 = *(v4 + 16);
  if (v6)
  {
    (*(*v6 + 32))(v6);
    v4 = a1[6];
  }

  v7 = *(v4 + 48) != 0;
  v24 = *(v4 + 56);
  v25 = *(v4 + 64);
  v8 = *(v4 + 72);
  if (v8)
  {
    (*(*v8 + 32))(v8);
    v4 = a1[6];
  }

  v9 = *(v5 + 192);
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 1174405120;
  v17[2] = ___ZN16PSVR2SenseDevice27refreshMotionCorrectionDataEybU13block_pointerFviE_block_invoke_4;
  v17[3] = &__block_descriptor_tmp_192;
  v17[4] = v5;
  v17[5] = v4;
  v18 = v6;
  if (v6)
  {
    (*(*v6 + 32))(v6);
  }

  v22 = v7;
  v19 = v8;
  if (v8)
  {
    (*(*v8 + 32))(v8);
  }

  v20 = v24;
  v21 = v25;
  v23 = a2;
  v10 = IOCommandGate::runActionBlock(v9, v17);
  v11 = a1[4];
  if (v11)
  {
    (*(v11 + 16))(v11, v10);
  }

  v12 = a1[6];
  if (*v12)
  {
    (*(**v12 + 40))(*v12, v10);
  }

  *v12 = 0;
  v13 = v12[2];
  if (v13)
  {
    (*(*v13 + 40))(v13, v10);
  }

  v12[2] = 0;
  v14 = v12[3];
  if (v14)
  {
    (*(*v14 + 40))(v14, v10);
  }

  v12[3] = 0;
  v15 = v12[9];
  if (v15)
  {
    (*(*v15 + 40))(v15, v10);
  }

  v12[9] = 0;
  _Block_release(v12[11]);
  _Block_release(v12[12]);
  _Block_release(v12[13]);
  v12[12] = 0;
  v12[11] = 0;
  v12[13] = 0;
  IOFreeTypeImpl();
  if (v19)
  {
    (*(*v19 + 40))(v19);
  }

  v19 = 0;
  result = v18;
  if (v18)
  {
    result = (*(*v18 + 40))(v18);
  }

  v18 = 0;
  if (v8)
  {
    result = (*(*v8 + 40))(v8);
  }

  if (v6)
  {
    return (*(*v6 + 40))(v6);
  }

  return result;
}

uint64_t ___ZN16PSVR2SenseDevice27refreshMotionCorrectionDataEybU13block_pointerFviE_block_invoke_4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = atomic_load((*(a1 + 40) + 32));
  if (v2)
  {
    v147 = *(a1 + 32);
    ___ZN16PSVR2SenseDevice27refreshMotionCorrectionDataEybU13block_pointerFviE_block_invoke_4_cold_51();
    return 3758097131;
  }

  if (*(v1 + 304) != *(a1 + 40))
  {
    v148 = *(a1 + 32);
    ___ZN16PSVR2SenseDevice27refreshMotionCorrectionDataEybU13block_pointerFviE_block_invoke_4_cold_1();
    return 3758097131;
  }

  *(v1 + 304) = 0;
  *(v1 + 312) |= 1u;
  v4 = OSDictionary::withCapacity(0x2Au);
  v5 = v4;
  if (v4)
  {
    (v4->setObject_1)(v4, "_Raw", *(a1 + 48));
    if (*(a1 + 76))
    {
      (v5->setObject_1)(v5, "_CRC_Invalid", *kOSBooleanTrue);
      v149 = *(a1 + 56);
      anObject = v149;
      if (v149)
      {
        (v149->retain)(v149);
      }

      OSDictionary::setObject(v5, "_CRC_Payload", &anObject);
      if (anObject)
      {
        (anObject->release_0)(anObject);
      }

      v150 = OSNumber::withNumber(*(a1 + 68), 0x20u);
      v151 = v150;
      anObject = v150;
      if (v150)
      {
        (v150->retain)(v150);
      }

      OSDictionary::setObject(v5, "_CRC_Reported", &anObject);
      if (anObject)
      {
        (anObject->release_0)(anObject);
      }

      v152 = OSNumber::withNumber(*(a1 + 72), 0x20u);
      v153 = v152;
      anObject = v152;
      if (v152)
      {
        (v152->retain)(v152);
      }

      OSDictionary::setObject(v5, "_CRC_Expected", &anObject);
      if (anObject)
      {
        (anObject->release_0)(anObject);
      }

      if (v153)
      {
        (v153->release_0)(v153);
      }

      if (v151)
      {
        (v151->release_0)(v151);
      }
    }

    if ((*(a1 + 77) & 1) == 0)
    {
      v145 = *(a1 + 40);
      v144 = v145[20];
      if (!v144)
      {
        if (v145[10])
        {
          v144 = 3758097110;
        }

        else if (v145[12])
        {
          v144 = 3758097129;
        }

        else
        {
          v144 = 3758097084;
        }
      }

      goto LABEL_158;
    }

    if ((*(**(a1 + 48) + 144))(*(a1 + 48)))
    {
      if ((*(**(a1 + 48) + 144))(*(a1 + 48)))
      {
        v6 = 0;
        v7 = 0;
        v8 = 0;
        v9 = OSData::metaClass;
        do
        {
          v10 = (*(**(a1 + 48) + 280))(*(a1 + 48), v6);
          v11 = OSMetaClassBase::safeMetaCast(v10, v9);
          if (!v11)
          {
            ___ZN16PSVR2SenseDevice27refreshMotionCorrectionDataEybU13block_pointerFviE_block_invoke_4_cold_47();
            goto LABEL_157;
          }

          v12 = v11;
          v13 = (v11->__vftable[2].~OSMetaClassBase_0)(v11);
          if (v6 != (*v13 & 0x7F))
          {
            ___ZN16PSVR2SenseDevice27refreshMotionCorrectionDataEybU13block_pointerFviE_block_invoke_4_cold_2();
            goto LABEL_157;
          }

          v14 = v13;
          if (v12 == (*(**(a1 + 48) + 288))(*(a1 + 48)) && (*v14 & 0x80000000) == 0)
          {
            ___ZN16PSVR2SenseDevice27refreshMotionCorrectionDataEybU13block_pointerFviE_block_invoke_4_cold_46();
            goto LABEL_157;
          }

          if (v6 == 1)
          {
            v7 = (v12->__vftable[2].~OSMetaClassBase_0)(v12);
          }

          else if (!v6)
          {
            v8 = (v12->__vftable[2].~OSMetaClassBase_0)(v12);
          }

          v6 = (v6 + 1);
        }

        while (v6 < (*(**(a1 + 48) + 144))(*(a1 + 48)));
        if (v8 && v7)
        {
          v15 = *(v8 + 1);
          **(v1 + 288) = v15;
          v16 = OSNumber::withNumber(v15, 0x10u);
          if (v16)
          {
            v17 = v16;
            anObject = v16;
            (v16->retain)(v16);
            OSDictionary::setObject(v5, "_1", &anObject);
            if (anObject)
            {
              (anObject->release_0)(anObject);
            }

            (v17->release_0)(v17);
            v18 = *(v8 + 1);
            **(v1 + 288) = v18;
            v19 = OSNumber::withNumber(v18, 0x10u);
            if (v19)
            {
              v20 = v19;
              anObject = v19;
              (v19->retain)(v19);
              OSDictionary::setObject(v5, "_2", &anObject);
              if (anObject)
              {
                (anObject->release_0)(anObject);
              }

              (v20->release_0)(v20);
              v21 = *(v8 + 3);
              *(*(v1 + 288) + 2) = v21;
              v22 = OSNumber::withNumber(v21, 0x10u);
              if (v22)
              {
                v23 = v22;
                anObject = v22;
                (v22->retain)(v22);
                OSDictionary::setObject(v5, "_3", &anObject);
                if (anObject)
                {
                  (anObject->release_0)(anObject);
                }

                (v23->release_0)(v23);
                v24 = *(v8 + 5);
                *(*(v1 + 288) + 4) = v24;
                v25 = OSNumber::withNumber(v24, 0x10u);
                if (v25)
                {
                  v26 = v25;
                  anObject = v25;
                  (v25->retain)(v25);
                  OSDictionary::setObject(v5, "_4", &anObject);
                  if (anObject)
                  {
                    (anObject->release_0)(anObject);
                  }

                  (v26->release_0)(v26);
                  v27 = *(v8 + 7);
                  *(*(v1 + 288) + 6) = v27;
                  v28 = OSNumber::withNumber(v27, 0x10u);
                  if (v28)
                  {
                    v29 = v28;
                    anObject = v28;
                    (v28->retain)(v28);
                    OSDictionary::setObject(v5, "_5", &anObject);
                    if (anObject)
                    {
                      (anObject->release_0)(anObject);
                    }

                    (v29->release_0)(v29);
                    v30 = *(v8 + 9);
                    *(*(v1 + 288) + 8) = v30;
                    v31 = OSNumber::withNumber(v30, 0x10u);
                    if (v31)
                    {
                      v32 = v31;
                      anObject = v31;
                      (v31->retain)(v31);
                      OSDictionary::setObject(v5, "_6", &anObject);
                      if (anObject)
                      {
                        (anObject->release_0)(anObject);
                      }

                      (v32->release_0)(v32);
                      v33 = *(v8 + 11);
                      *(*(v1 + 288) + 10) = v33;
                      v34 = OSNumber::withNumber(v33, 0x10u);
                      if (v34)
                      {
                        v35 = v34;
                        anObject = v34;
                        (v34->retain)(v34);
                        OSDictionary::setObject(v5, "_7", &anObject);
                        if (anObject)
                        {
                          (anObject->release_0)(anObject);
                        }

                        (v35->release_0)(v35);
                        v36 = *(v8 + 13);
                        *(*(v1 + 288) + 12) = v36;
                        v37 = OSNumber::withNumber(v36, 0x10u);
                        if (v37)
                        {
                          v38 = v37;
                          anObject = v37;
                          (v37->retain)(v37);
                          OSDictionary::setObject(v5, "_8", &anObject);
                          if (anObject)
                          {
                            (anObject->release_0)(anObject);
                          }

                          (v38->release_0)(v38);
                          v39 = *(v8 + 15);
                          *(*(v1 + 288) + 14) = v39;
                          v40 = OSNumber::withNumber(v39, 0x10u);
                          if (v40)
                          {
                            v41 = v40;
                            anObject = v40;
                            (v40->retain)(v40);
                            OSDictionary::setObject(v5, "_9", &anObject);
                            if (anObject)
                            {
                              (anObject->release_0)(anObject);
                            }

                            (v41->release_0)(v41);
                            v42 = *(v8 + 17);
                            *(*(v1 + 288) + 16) = v42;
                            v43 = OSNumber::withNumber(v42, 0x10u);
                            if (v43)
                            {
                              v44 = v43;
                              anObject = v43;
                              (v43->retain)(v43);
                              OSDictionary::setObject(v5, "_10", &anObject);
                              if (anObject)
                              {
                                (anObject->release_0)(anObject);
                              }

                              (v44->release_0)(v44);
                              v45 = *(v8 + 19);
                              *(*(v1 + 288) + 18) = v45;
                              v46 = OSNumber::withNumber(v45, 0x10u);
                              if (v46)
                              {
                                v47 = v46;
                                anObject = v46;
                                (v46->retain)(v46);
                                OSDictionary::setObject(v5, "_11", &anObject);
                                if (anObject)
                                {
                                  (anObject->release_0)(anObject);
                                }

                                (v47->release_0)(v47);
                                v48 = *(v8 + 21);
                                *(*(v1 + 288) + 20) = v48;
                                v49 = OSNumber::withNumber(v48, 0x10u);
                                if (v49)
                                {
                                  v50 = v49;
                                  anObject = v49;
                                  (v49->retain)(v49);
                                  OSDictionary::setObject(v5, "_12", &anObject);
                                  if (anObject)
                                  {
                                    (anObject->release_0)(anObject);
                                  }

                                  (v50->release_0)(v50);
                                  v51 = *(v8 + 23);
                                  *(*(v1 + 288) + 22) = v51;
                                  v52 = OSNumber::withNumber(v51, 0x10u);
                                  if (v52)
                                  {
                                    v53 = v52;
                                    anObject = v52;
                                    (v52->retain)(v52);
                                    OSDictionary::setObject(v5, "_13", &anObject);
                                    if (anObject)
                                    {
                                      (anObject->release_0)(anObject);
                                    }

                                    (v53->release_0)(v53);
                                    v54 = *(v8 + 25);
                                    *(*(v1 + 288) + 24) = v54;
                                    v55 = OSNumber::withNumber(v54, 0x10u);
                                    if (v55)
                                    {
                                      v56 = v55;
                                      anObject = v55;
                                      (v55->retain)(v55);
                                      OSDictionary::setObject(v5, "_14", &anObject);
                                      if (anObject)
                                      {
                                        (anObject->release_0)(anObject);
                                      }

                                      (v56->release_0)(v56);
                                      v57 = *(v8 + 27);
                                      *(*(v1 + 288) + 26) = v57;
                                      v58 = OSNumber::withNumber(v57, 0x10u);
                                      if (v58)
                                      {
                                        v59 = v58;
                                        anObject = v58;
                                        (v58->retain)(v58);
                                        OSDictionary::setObject(v5, "_15", &anObject);
                                        if (anObject)
                                        {
                                          (anObject->release_0)(anObject);
                                        }

                                        (v59->release_0)(v59);
                                        v60 = *(v8 + 29);
                                        *(*(v1 + 288) + 28) = v60;
                                        v61 = OSNumber::withNumber(v60, 0x10u);
                                        if (v61)
                                        {
                                          v62 = v61;
                                          anObject = v61;
                                          (v61->retain)(v61);
                                          OSDictionary::setObject(v5, "_16", &anObject);
                                          if (anObject)
                                          {
                                            (anObject->release_0)(anObject);
                                          }

                                          (v62->release_0)(v62);
                                          v63 = *(v8 + 31);
                                          *(*(v1 + 288) + 30) = v63;
                                          v64 = OSNumber::withNumber(v63, 0x10u);
                                          if (v64)
                                          {
                                            v65 = v64;
                                            anObject = v64;
                                            (v64->retain)(v64);
                                            OSDictionary::setObject(v5, "_17", &anObject);
                                            if (anObject)
                                            {
                                              (anObject->release_0)(anObject);
                                            }

                                            (v65->release_0)(v65);
                                            v66 = *(v8 + 33);
                                            *(*(v1 + 288) + 32) = v66;
                                            v67 = OSNumber::withNumber(v66, 0x10u);
                                            if (v67)
                                            {
                                              v68 = v67;
                                              anObject = v67;
                                              (v67->retain)(v67);
                                              OSDictionary::setObject(v5, "_18", &anObject);
                                              if (anObject)
                                              {
                                                (anObject->release_0)(anObject);
                                              }

                                              (v68->release_0)(v68);
                                              v69 = *(v8 + 35);
                                              *(*(v1 + 288) + 34) = v69;
                                              v70 = OSNumber::withNumber(v69, 0x10u);
                                              if (v70)
                                              {
                                                v71 = v70;
                                                anObject = v70;
                                                (v70->retain)(v70);
                                                OSDictionary::setObject(v5, "_19", &anObject);
                                                if (anObject)
                                                {
                                                  (anObject->release_0)(anObject);
                                                }

                                                (v71->release_0)(v71);
                                                v72 = *(v8 + 37);
                                                *(*(v1 + 288) + 36) = v72;
                                                v73 = OSNumber::withNumber(v72, 0x10u);
                                                if (v73)
                                                {
                                                  v74 = v73;
                                                  anObject = v73;
                                                  (v73->retain)(v73);
                                                  OSDictionary::setObject(v5, "_20", &anObject);
                                                  if (anObject)
                                                  {
                                                    (anObject->release_0)(anObject);
                                                  }

                                                  (v74->release_0)(v74);
                                                  v75 = *(v8 + 39);
                                                  *(*(v1 + 288) + 38) = v75;
                                                  v76 = OSNumber::withNumber(v75, 0x10u);
                                                  if (v76)
                                                  {
                                                    v77 = v76;
                                                    anObject = v76;
                                                    (v76->retain)(v76);
                                                    OSDictionary::setObject(v5, "_21", &anObject);
                                                    if (anObject)
                                                    {
                                                      (anObject->release_0)(anObject);
                                                    }

                                                    (v77->release_0)(v77);
                                                    v78 = *(v8 + 41);
                                                    *(*(v1 + 288) + 40) = v78;
                                                    v79 = OSNumber::withNumber(v78, 0x10u);
                                                    if (v79)
                                                    {
                                                      v80 = v79;
                                                      anObject = v79;
                                                      (v79->retain)(v79);
                                                      OSDictionary::setObject(v5, "_22", &anObject);
                                                      if (anObject)
                                                      {
                                                        (anObject->release_0)(anObject);
                                                      }

                                                      (v80->release_0)(v80);
                                                      v81 = *(v8 + 43);
                                                      *(*(v1 + 288) + 42) = v81;
                                                      v82 = OSNumber::withNumber(v81, 0x10u);
                                                      if (v82)
                                                      {
                                                        v83 = v82;
                                                        anObject = v82;
                                                        (v82->retain)(v82);
                                                        OSDictionary::setObject(v5, "_23", &anObject);
                                                        if (anObject)
                                                        {
                                                          (anObject->release_0)(anObject);
                                                        }

                                                        (v83->release_0)(v83);
                                                        v84 = *(v8 + 45);
                                                        *(*(v1 + 288) + 44) = v84;
                                                        v85 = OSNumber::withNumber(v84, 0x10u);
                                                        if (v85)
                                                        {
                                                          v86 = v85;
                                                          anObject = v85;
                                                          (v85->retain)(v85);
                                                          OSDictionary::setObject(v5, "_24", &anObject);
                                                          if (anObject)
                                                          {
                                                            (anObject->release_0)(anObject);
                                                          }

                                                          (v86->release_0)(v86);
                                                          v87 = *(v8 + 47);
                                                          *(*(v1 + 288) + 46) = v87;
                                                          v88 = OSNumber::withNumber(v87, 0x10u);
                                                          if (v88)
                                                          {
                                                            v89 = v88;
                                                            anObject = v88;
                                                            (v88->retain)(v88);
                                                            OSDictionary::setObject(v5, "_25", &anObject);
                                                            if (anObject)
                                                            {
                                                              (anObject->release_0)(anObject);
                                                            }

                                                            (v89->release_0)(v89);
                                                            v90 = *(v8 + 49);
                                                            *(*(v1 + 288) + 48) = v90;
                                                            v91 = OSNumber::withNumber(v90, 0x10u);
                                                            if (v91)
                                                            {
                                                              v92 = v91;
                                                              anObject = v91;
                                                              (v91->retain)(v91);
                                                              OSDictionary::setObject(v5, "_26", &anObject);
                                                              if (anObject)
                                                              {
                                                                (anObject->release_0)(anObject);
                                                              }

                                                              (v92->release_0)(v92);
                                                              v93 = *(v8 + 51);
                                                              *(*(v1 + 288) + 50) = v93;
                                                              v94 = OSNumber::withNumber(v93, 0x10u);
                                                              if (v94)
                                                              {
                                                                v95 = v94;
                                                                anObject = v94;
                                                                (v94->retain)(v94);
                                                                OSDictionary::setObject(v5, "_27", &anObject);
                                                                if (anObject)
                                                                {
                                                                  (anObject->release_0)(anObject);
                                                                }

                                                                (v95->release_0)(v95);
                                                                v96 = *(v8 + 53);
                                                                *(*(v1 + 288) + 52) = v96;
                                                                v97 = OSNumber::withNumber(v96, 0x10u);
                                                                if (v97)
                                                                {
                                                                  v98 = v97;
                                                                  anObject = v97;
                                                                  (v97->retain)(v97);
                                                                  OSDictionary::setObject(v5, "_28", &anObject);
                                                                  if (anObject)
                                                                  {
                                                                    (anObject->release_0)(anObject);
                                                                  }

                                                                  (v98->release_0)(v98);
                                                                  v99 = *(v8 + 55);
                                                                  *(*(v1 + 288) + 54) = v99;
                                                                  v100 = OSNumber::withNumber(v99, 0x10u);
                                                                  if (v100)
                                                                  {
                                                                    v101 = v100;
                                                                    anObject = v100;
                                                                    (v100->retain)(v100);
                                                                    OSDictionary::setObject(v5, "_29", &anObject);
                                                                    if (anObject)
                                                                    {
                                                                      (anObject->release_0)(anObject);
                                                                    }

                                                                    (v101->release_0)(v101);
                                                                    v102 = *(v8 + 57);
                                                                    *(*(v1 + 288) + 56) = v102;
                                                                    v103 = OSNumber::withNumber(v102, 0x10u);
                                                                    if (v103)
                                                                    {
                                                                      v104 = v103;
                                                                      anObject = v103;
                                                                      (v103->retain)(v103);
                                                                      OSDictionary::setObject(v5, "_30", &anObject);
                                                                      if (anObject)
                                                                      {
                                                                        (anObject->release_0)(anObject);
                                                                      }

                                                                      (v104->release_0)(v104);
                                                                      v105 = *(v7 + 1);
                                                                      *(*(v1 + 288) + 58) = v105;
                                                                      v106 = OSNumber::withNumber(v105, 0x10u);
                                                                      if (v106)
                                                                      {
                                                                        v107 = v106;
                                                                        anObject = v106;
                                                                        (v106->retain)(v106);
                                                                        OSDictionary::setObject(v5, "_31", &anObject);
                                                                        if (anObject)
                                                                        {
                                                                          (anObject->release_0)(anObject);
                                                                        }

                                                                        (v107->release_0)(v107);
                                                                        v108 = *(v7 + 3);
                                                                        *(*(v1 + 288) + 60) = v108;
                                                                        v109 = OSNumber::withNumber(v108, 0x10u);
                                                                        if (v109)
                                                                        {
                                                                          v110 = v109;
                                                                          anObject = v109;
                                                                          (v109->retain)(v109);
                                                                          OSDictionary::setObject(v5, "_32", &anObject);
                                                                          if (anObject)
                                                                          {
                                                                            (anObject->release_0)(anObject);
                                                                          }

                                                                          (v110->release_0)(v110);
                                                                          v111 = *(v7 + 5);
                                                                          *(*(v1 + 288) + 62) = v111;
                                                                          v112 = OSNumber::withNumber(v111, 0x10u);
                                                                          if (v112)
                                                                          {
                                                                            v113 = v112;
                                                                            anObject = v112;
                                                                            (v112->retain)(v112);
                                                                            OSDictionary::setObject(v5, "_33", &anObject);
                                                                            if (anObject)
                                                                            {
                                                                              (anObject->release_0)(anObject);
                                                                            }

                                                                            (v113->release_0)(v113);
                                                                            v114 = *(v7 + 7);
                                                                            *(*(v1 + 288) + 64) = v114;
                                                                            v115 = OSNumber::withNumber(v114, 0x10u);
                                                                            if (v115)
                                                                            {
                                                                              v116 = v115;
                                                                              anObject = v115;
                                                                              (v115->retain)(v115);
                                                                              OSDictionary::setObject(v5, "_34", &anObject);
                                                                              if (anObject)
                                                                              {
                                                                                (anObject->release_0)(anObject);
                                                                              }

                                                                              (v116->release_0)(v116);
                                                                              v117 = *(v7 + 9);
                                                                              *(*(v1 + 288) + 66) = v117;
                                                                              v118 = OSNumber::withNumber(v117, 0x10u);
                                                                              if (v118)
                                                                              {
                                                                                v119 = v118;
                                                                                anObject = v118;
                                                                                (v118->retain)(v118);
                                                                                OSDictionary::setObject(v5, "_35", &anObject);
                                                                                if (anObject)
                                                                                {
                                                                                  (anObject->release_0)(anObject);
                                                                                }

                                                                                (v119->release_0)(v119);
                                                                                v120 = *(v7 + 11);
                                                                                *(*(v1 + 288) + 68) = v120;
                                                                                v121 = OSNumber::withNumber(v120, 0x10u);
                                                                                if (v121)
                                                                                {
                                                                                  v122 = v121;
                                                                                  anObject = v121;
                                                                                  (v121->retain)(v121);
                                                                                  OSDictionary::setObject(v5, "_36", &anObject);
                                                                                  if (anObject)
                                                                                  {
                                                                                    (anObject->release_0)(anObject);
                                                                                  }

                                                                                  (v122->release_0)(v122);
                                                                                  v123 = *(v7 + 13);
                                                                                  *(*(v1 + 288) + 70) = v123;
                                                                                  v124 = OSNumber::withNumber(v123, 0x10u);
                                                                                  if (v124)
                                                                                  {
                                                                                    v125 = v124;
                                                                                    anObject = v124;
                                                                                    (v124->retain)(v124);
                                                                                    OSDictionary::setObject(v5, "_37", &anObject);
                                                                                    if (anObject)
                                                                                    {
                                                                                      (anObject->release_0)(anObject);
                                                                                    }

                                                                                    (v125->release_0)(v125);
                                                                                    v126 = *(v7 + 15);
                                                                                    *(*(v1 + 288) + 72) = v126;
                                                                                    v127 = OSNumber::withNumber(v126, 0x10u);
                                                                                    if (v127)
                                                                                    {
                                                                                      v128 = v127;
                                                                                      anObject = v127;
                                                                                      (v127->retain)(v127);
                                                                                      OSDictionary::setObject(v5, "_38", &anObject);
                                                                                      if (anObject)
                                                                                      {
                                                                                        (anObject->release_0)(anObject);
                                                                                      }

                                                                                      (v128->release_0)(v128);
                                                                                      v129 = *(v7 + 17);
                                                                                      *(*(v1 + 288) + 74) = v129;
                                                                                      v130 = OSNumber::withNumber(v129, 0x10u);
                                                                                      if (v130)
                                                                                      {
                                                                                        v131 = v130;
                                                                                        anObject = v130;
                                                                                        (v130->retain)(v130);
                                                                                        OSDictionary::setObject(v5, "_39", &anObject);
                                                                                        if (anObject)
                                                                                        {
                                                                                          (anObject->release_0)(anObject);
                                                                                        }

                                                                                        (v131->release_0)(v131);
                                                                                        v132 = *(v7 + 19);
                                                                                        *(*(v1 + 288) + 76) = v132;
                                                                                        v133 = OSNumber::withNumber(v132, 0x10u);
                                                                                        if (v133)
                                                                                        {
                                                                                          v134 = v133;
                                                                                          anObject = v133;
                                                                                          (v133->retain)(v133);
                                                                                          OSDictionary::setObject(v5, "_40", &anObject);
                                                                                          if (anObject)
                                                                                          {
                                                                                            (anObject->release_0)(anObject);
                                                                                          }

                                                                                          (v134->release_0)(v134);
                                                                                          v135 = *(v7 + 21);
                                                                                          *(*(v1 + 288) + 78) = v135;
                                                                                          v136 = OSNumber::withNumber(v135, 0x10u);
                                                                                          if (v136)
                                                                                          {
                                                                                            v137 = v136;
                                                                                            anObject = v136;
                                                                                            (v136->retain)(v136);
                                                                                            OSDictionary::setObject(v5, "_41", &anObject);
                                                                                            if (anObject)
                                                                                            {
                                                                                              (anObject->release_0)(anObject);
                                                                                            }

                                                                                            (v137->release_0)(v137);
                                                                                            v138 = *(v7 + 23);
                                                                                            *(*(v1 + 288) + 80) = v138;
                                                                                            v139 = OSNumber::withNumber(v138, 0x10u);
                                                                                            if (v139)
                                                                                            {
                                                                                              v140 = v139;
                                                                                              anObject = v139;
                                                                                              (v139->retain)(v139);
                                                                                              OSDictionary::setObject(v5, "_42", &anObject);
                                                                                              if (anObject)
                                                                                              {
                                                                                                (anObject->release_0)(anObject);
                                                                                              }

                                                                                              (v140->release_0)(v140);
                                                                                              v141 = *(v7 + 25);
                                                                                              *(*(v1 + 288) + 82) = v141;
                                                                                              v142 = OSNumber::withNumber(v141, 0x10u);
                                                                                              if (v142)
                                                                                              {
                                                                                                v143 = v142;
                                                                                                anObject = v142;
                                                                                                (v142->retain)(v142);
                                                                                                OSDictionary::setObject(v5, "_43", &anObject);
                                                                                                if (anObject)
                                                                                                {
                                                                                                  (anObject->release_0)(anObject);
                                                                                                }

                                                                                                (v143->release_0)(v143);
                                                                                                v144 = 0;
                                                                                                **(v1 + 296) = 1;
                                                                                              }

                                                                                              else
                                                                                              {
                                                                                                v144 = 3758097085;
                                                                                                ___ZN16PSVR2SenseDevice27refreshMotionCorrectionDataEybU13block_pointerFviE_block_invoke_4_cold_3();
                                                                                              }
                                                                                            }

                                                                                            else
                                                                                            {
                                                                                              v144 = 3758097085;
                                                                                              ___ZN16PSVR2SenseDevice27refreshMotionCorrectionDataEybU13block_pointerFviE_block_invoke_4_cold_4();
                                                                                            }
                                                                                          }

                                                                                          else
                                                                                          {
                                                                                            v144 = 3758097085;
                                                                                            ___ZN16PSVR2SenseDevice27refreshMotionCorrectionDataEybU13block_pointerFviE_block_invoke_4_cold_5();
                                                                                          }
                                                                                        }

                                                                                        else
                                                                                        {
                                                                                          v144 = 3758097085;
                                                                                          ___ZN16PSVR2SenseDevice27refreshMotionCorrectionDataEybU13block_pointerFviE_block_invoke_4_cold_6();
                                                                                        }
                                                                                      }

                                                                                      else
                                                                                      {
                                                                                        v144 = 3758097085;
                                                                                        ___ZN16PSVR2SenseDevice27refreshMotionCorrectionDataEybU13block_pointerFviE_block_invoke_4_cold_7();
                                                                                      }
                                                                                    }

                                                                                    else
                                                                                    {
                                                                                      v144 = 3758097085;
                                                                                      ___ZN16PSVR2SenseDevice27refreshMotionCorrectionDataEybU13block_pointerFviE_block_invoke_4_cold_8();
                                                                                    }
                                                                                  }

                                                                                  else
                                                                                  {
                                                                                    v144 = 3758097085;
                                                                                    ___ZN16PSVR2SenseDevice27refreshMotionCorrectionDataEybU13block_pointerFviE_block_invoke_4_cold_9();
                                                                                  }
                                                                                }

                                                                                else
                                                                                {
                                                                                  v144 = 3758097085;
                                                                                  ___ZN16PSVR2SenseDevice27refreshMotionCorrectionDataEybU13block_pointerFviE_block_invoke_4_cold_10();
                                                                                }
                                                                              }

                                                                              else
                                                                              {
                                                                                v144 = 3758097085;
                                                                                ___ZN16PSVR2SenseDevice27refreshMotionCorrectionDataEybU13block_pointerFviE_block_invoke_4_cold_11();
                                                                              }
                                                                            }

                                                                            else
                                                                            {
                                                                              v144 = 3758097085;
                                                                              ___ZN16PSVR2SenseDevice27refreshMotionCorrectionDataEybU13block_pointerFviE_block_invoke_4_cold_12();
                                                                            }
                                                                          }

                                                                          else
                                                                          {
                                                                            v144 = 3758097085;
                                                                            ___ZN16PSVR2SenseDevice27refreshMotionCorrectionDataEybU13block_pointerFviE_block_invoke_4_cold_13();
                                                                          }
                                                                        }

                                                                        else
                                                                        {
                                                                          v144 = 3758097085;
                                                                          ___ZN16PSVR2SenseDevice27refreshMotionCorrectionDataEybU13block_pointerFviE_block_invoke_4_cold_14();
                                                                        }
                                                                      }

                                                                      else
                                                                      {
                                                                        v144 = 3758097085;
                                                                        ___ZN16PSVR2SenseDevice27refreshMotionCorrectionDataEybU13block_pointerFviE_block_invoke_4_cold_15();
                                                                      }
                                                                    }

                                                                    else
                                                                    {
                                                                      v144 = 3758097085;
                                                                      ___ZN16PSVR2SenseDevice27refreshMotionCorrectionDataEybU13block_pointerFviE_block_invoke_4_cold_16();
                                                                    }
                                                                  }

                                                                  else
                                                                  {
                                                                    v144 = 3758097085;
                                                                    ___ZN16PSVR2SenseDevice27refreshMotionCorrectionDataEybU13block_pointerFviE_block_invoke_4_cold_17();
                                                                  }
                                                                }

                                                                else
                                                                {
                                                                  v144 = 3758097085;
                                                                  ___ZN16PSVR2SenseDevice27refreshMotionCorrectionDataEybU13block_pointerFviE_block_invoke_4_cold_18();
                                                                }
                                                              }

                                                              else
                                                              {
                                                                v144 = 3758097085;
                                                                ___ZN16PSVR2SenseDevice27refreshMotionCorrectionDataEybU13block_pointerFviE_block_invoke_4_cold_19();
                                                              }
                                                            }

                                                            else
                                                            {
                                                              v144 = 3758097085;
                                                              ___ZN16PSVR2SenseDevice27refreshMotionCorrectionDataEybU13block_pointerFviE_block_invoke_4_cold_20();
                                                            }
                                                          }

                                                          else
                                                          {
                                                            v144 = 3758097085;
                                                            ___ZN16PSVR2SenseDevice27refreshMotionCorrectionDataEybU13block_pointerFviE_block_invoke_4_cold_21();
                                                          }
                                                        }

                                                        else
                                                        {
                                                          v144 = 3758097085;
                                                          ___ZN16PSVR2SenseDevice27refreshMotionCorrectionDataEybU13block_pointerFviE_block_invoke_4_cold_22();
                                                        }
                                                      }

                                                      else
                                                      {
                                                        v144 = 3758097085;
                                                        ___ZN16PSVR2SenseDevice27refreshMotionCorrectionDataEybU13block_pointerFviE_block_invoke_4_cold_23();
                                                      }
                                                    }

                                                    else
                                                    {
                                                      v144 = 3758097085;
                                                      ___ZN16PSVR2SenseDevice27refreshMotionCorrectionDataEybU13block_pointerFviE_block_invoke_4_cold_24();
                                                    }
                                                  }

                                                  else
                                                  {
                                                    v144 = 3758097085;
                                                    ___ZN16PSVR2SenseDevice27refreshMotionCorrectionDataEybU13block_pointerFviE_block_invoke_4_cold_25();
                                                  }
                                                }

                                                else
                                                {
                                                  v144 = 3758097085;
                                                  ___ZN16PSVR2SenseDevice27refreshMotionCorrectionDataEybU13block_pointerFviE_block_invoke_4_cold_26();
                                                }
                                              }

                                              else
                                              {
                                                v144 = 3758097085;
                                                ___ZN16PSVR2SenseDevice27refreshMotionCorrectionDataEybU13block_pointerFviE_block_invoke_4_cold_27();
                                              }
                                            }

                                            else
                                            {
                                              v144 = 3758097085;
                                              ___ZN16PSVR2SenseDevice27refreshMotionCorrectionDataEybU13block_pointerFviE_block_invoke_4_cold_28();
                                            }
                                          }

                                          else
                                          {
                                            v144 = 3758097085;
                                            ___ZN16PSVR2SenseDevice27refreshMotionCorrectionDataEybU13block_pointerFviE_block_invoke_4_cold_29();
                                          }
                                        }

                                        else
                                        {
                                          v144 = 3758097085;
                                          ___ZN16PSVR2SenseDevice27refreshMotionCorrectionDataEybU13block_pointerFviE_block_invoke_4_cold_30();
                                        }
                                      }

                                      else
                                      {
                                        v144 = 3758097085;
                                        ___ZN16PSVR2SenseDevice27refreshMotionCorrectionDataEybU13block_pointerFviE_block_invoke_4_cold_31();
                                      }
                                    }

                                    else
                                    {
                                      v144 = 3758097085;
                                      ___ZN16PSVR2SenseDevice27refreshMotionCorrectionDataEybU13block_pointerFviE_block_invoke_4_cold_32();
                                    }
                                  }

                                  else
                                  {
                                    v144 = 3758097085;
                                    ___ZN16PSVR2SenseDevice27refreshMotionCorrectionDataEybU13block_pointerFviE_block_invoke_4_cold_33();
                                  }
                                }

                                else
                                {
                                  v144 = 3758097085;
                                  ___ZN16PSVR2SenseDevice27refreshMotionCorrectionDataEybU13block_pointerFviE_block_invoke_4_cold_34();
                                }
                              }

                              else
                              {
                                v144 = 3758097085;
                                ___ZN16PSVR2SenseDevice27refreshMotionCorrectionDataEybU13block_pointerFviE_block_invoke_4_cold_35();
                              }
                            }

                            else
                            {
                              v144 = 3758097085;
                              ___ZN16PSVR2SenseDevice27refreshMotionCorrectionDataEybU13block_pointerFviE_block_invoke_4_cold_36();
                            }
                          }

                          else
                          {
                            v144 = 3758097085;
                            ___ZN16PSVR2SenseDevice27refreshMotionCorrectionDataEybU13block_pointerFviE_block_invoke_4_cold_37();
                          }
                        }

                        else
                        {
                          v144 = 3758097085;
                          ___ZN16PSVR2SenseDevice27refreshMotionCorrectionDataEybU13block_pointerFviE_block_invoke_4_cold_38();
                        }
                      }

                      else
                      {
                        v144 = 3758097085;
                        ___ZN16PSVR2SenseDevice27refreshMotionCorrectionDataEybU13block_pointerFviE_block_invoke_4_cold_39();
                      }
                    }

                    else
                    {
                      v144 = 3758097085;
                      ___ZN16PSVR2SenseDevice27refreshMotionCorrectionDataEybU13block_pointerFviE_block_invoke_4_cold_40();
                    }
                  }

                  else
                  {
                    v144 = 3758097085;
                    ___ZN16PSVR2SenseDevice27refreshMotionCorrectionDataEybU13block_pointerFviE_block_invoke_4_cold_41();
                  }
                }

                else
                {
                  v144 = 3758097085;
                  ___ZN16PSVR2SenseDevice27refreshMotionCorrectionDataEybU13block_pointerFviE_block_invoke_4_cold_42();
                }
              }

              else
              {
                v144 = 3758097085;
                ___ZN16PSVR2SenseDevice27refreshMotionCorrectionDataEybU13block_pointerFviE_block_invoke_4_cold_43();
              }
            }

            else
            {
              v144 = 3758097085;
              ___ZN16PSVR2SenseDevice27refreshMotionCorrectionDataEybU13block_pointerFviE_block_invoke_4_cold_44();
            }
          }

          else
          {
            v144 = 3758097085;
            ___ZN16PSVR2SenseDevice27refreshMotionCorrectionDataEybU13block_pointerFviE_block_invoke_4_cold_45();
          }

          goto LABEL_158;
        }
      }

      ___ZN16PSVR2SenseDevice27refreshMotionCorrectionDataEybU13block_pointerFviE_block_invoke_4_cold_48();
    }

    else
    {
      ___ZN16PSVR2SenseDevice27refreshMotionCorrectionDataEybU13block_pointerFviE_block_invoke_4_cold_49();
    }

LABEL_157:
    v144 = 3758097084;
  }

  else
  {
    v144 = 3758097085;
    ___ZN16PSVR2SenseDevice27refreshMotionCorrectionDataEybU13block_pointerFviE_block_invoke_4_cold_50(&anObject);
  }

LABEL_158:
  if ((v5->getCount)(v5))
  {
    (*(*v1 + 200))(v1, "_PSVR2MotionCalibrationInfo", v5);
  }

  (v5->release_0)(v5);
  return v144;
}

uint64_t __copy_helper_block_8_48c27_ZTS11OSSharedPtrI7OSArrayE56c26_ZTS11OSSharedPtrI6OSDataE(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 48);
  *(a1 + 48) = v4;
  if (v4)
  {
    (*(*v4 + 32))(v4);
  }

  result = *(a2 + 56);
  *(a1 + 56) = result;
  if (result)
  {
    v6 = *(*result + 32);

    return v6();
  }

  return result;
}

uint64_t __destroy_helper_block_8_48c27_ZTS11OSSharedPtrI7OSArrayE56c26_ZTS11OSSharedPtrI6OSDataE(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  *(a1 + 56) = 0;
  result = *(a1 + 48);
  if (result)
  {
    result = (*(*result + 40))(result);
  }

  *(a1 + 48) = 0;
  return result;
}

uint64_t fetchNextMotionCorrectionDataPage(uint64_t a1)
{
  v2 = _gc_log_psvr2();
  RegistryEntryID = IORegistryEntry::getRegistryEntryID(*a1);
  v4 = *(a1 + 8);
  v5 = *(a1 + 36);
  v6 = (*(**(a1 + 16) + 144))(*(a1 + 16));
  _os_log_internal(&dword_0, v2, OS_LOG_TYPE_DEBUG, "[%#010llx] Fetch motion correction data (g: %llu a:%u p:%u)...", RegistryEntryID, v4, v5, v6);
  return (*(*(a1 + 88) + 16))();
}

void PSVR2SenseDevice::handleSenseInputData(uint64_t a1, _OWORD *a2, uint64_t a3)
{
  v24 = 0;
  v6 = (*(**(a1 + 336) + 208))(*(a1 + 336), &v24);
  if (v6 || v24 != *(*(a3 + 48) + 96) || (v7 = *(a3 + 40), v7[12] != v24 + 1))
  {
    v16 = _gc_log_psvr2();
    RegistryEntryID = IORegistryEntry::getRegistryEntryID(a1);
    v18 = *(*(a3 + 48) + 96);
    _os_log_internal(&dword_0, v16, OS_LOG_TYPE_DEFAULT, "[%#010llx] #INPUT Queue Reset (%#x // %llu): %llu -> %llu", RegistryEntryID, v6, v24, v18, *(*(a3 + 40) + 96));
    v19 = *(*(a3 + 40) + 96);
    v20 = (*(**(a1 + 336) + 216))();
    if (v20)
    {
      v21 = v20;
      v22 = _gc_log_psvr2();
      v23 = IORegistryEntry::getRegistryEntryID(a1);
      _os_log_internal(&dword_0, v22, OS_LOG_TYPE_DEBUG, "[%#010llx] #INPUT Queue Reset failed: %x", v23, v21);
      return;
    }

    v7 = *(a3 + 40);
  }

  v28 = 0;
  *&v27[16] = 0u;
  *v27 = 0u;
  *&v26[15] = *(a2 + 47);
  v8 = a2[2];
  v25[1] = a2[1];
  *v26 = v8;
  v25[0] = *a2;
  *&v27[17] = v7[4];
  v9 = v7[2];
  v10 = v7[6];
  *&v27[1] = v9;
  *&v27[9] = v10;
  v27[25] = *(*(a1 + 216) + 26192);
  v11 = IORegistryEntry::getRegistryEntryID(a1);
  v12 = (*(**(a1 + 336) + 168))();
  if ((kdebug_enable & 0xFFFFFFF7) != 0)
  {
    kernel_debug(0x31CC010Du, v11, v12, 0, 0, 0);
  }

  v13 = (*(**(a1 + 336) + 144))(*(a1 + 336), v25, 96);
  v14 = IORegistryEntry::getRegistryEntryID(a1);
  v15 = (*(**(a1 + 336) + 168))();
  if ((kdebug_enable & 0xFFFFFFF7) != 0)
  {
    kernel_debug(0x31CC010Eu, v14, v15, v24 + 1, v13 ^ 1u, 0);
  }

  if ((v13 & 1) == 0)
  {
    PSVR2SenseDevice::handleSenseInputData();
  }
}

uint64_t PSVR2SenseDevice::prepareOutputDataForStatus(IORegistryEntry *a1, _WORD *a2)
{
  v4 = a1[5].reserved + 24576;
  if (*(a1[5].reserved + 26128) == 5)
  {
    v5 = 2;
  }

  else
  {
    v5 = 1;
  }

  v6 = *(a1[5].reserved + 26071);
  v7 = v6 & (v5 == *(a1[5].reserved + 26072));
  if (v7 != 1)
  {
    v13 = *(a1[5].reserved + 26072) != v5;
    v14 = v6 ^ 1;
    goto LABEL_12;
  }

  if ((*(a1[5].reserved + 26068) & 1) != 0 || (*(a1[5].reserved + 26069) & 1) != 0 || (*(a1[5].reserved + 26070) & 1) == 0)
  {
    v13 = 0;
    v14 = 0;
LABEL_12:
    *(a1[5].reserved + 26068) = v14 & 1;
    v4[1493] = v13;
    v4[1494] = v7;
    v12 = 1;
    v4[1495] = 1;
    v4[1496] = v5;
    if ((v4[1498] & 1) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_22;
  }

  if ((*(a1[5].reserved + 26074) & 1) == 0)
  {
    v8 = 0;
    result = 0;
    v10 = 0;
    v11 = *a2 & 0xF2FF;
    v12 = 1;
LABEL_20:
    v27 = 2048;
    goto LABEL_21;
  }

LABEL_22:
  v14 = v4[1499];
  v13 = v4[1500];
  LOBYTE(v7) = v4[1501];
  LOBYTE(v5) = v4[1503];
  v12 = v4[1502];
LABEL_13:
  v15 = _gc_log_psvr2();
  RegistryEntryID = IORegistryEntry::getRegistryEntryID(a1);
  _os_log_internal(&dword_0, v15, OS_LOG_TYPE_DEBUG, "[%#010llx] +++ SET STATUS (OUT) +++", RegistryEntryID);
  v17 = _gc_log_psvr2();
  v18 = IORegistryEntry::getRegistryEntryID(a1);
  _os_log_internal(&dword_0, v17, OS_LOG_TYPE_DEBUG, "[%#010llx] statusLEDControl = %d", v18, v14 & 1);
  v19 = _gc_log_psvr2();
  v20 = IORegistryEntry::getRegistryEntryID(a1);
  _os_log_internal(&dword_0, v19, OS_LOG_TYPE_DEBUG, "[%#010llx] statusLEDBrightnessControl = %d", v20, v13 & 1);
  v21 = _gc_log_psvr2();
  v22 = IORegistryEntry::getRegistryEntryID(a1);
  _os_log_internal(&dword_0, v21, OS_LOG_TYPE_DEBUG, "[%#010llx] statusLEDRelease = %d", v22, v7 & 1);
  v23 = _gc_log_psvr2();
  v24 = IORegistryEntry::getRegistryEntryID(a1);
  _os_log_internal(&dword_0, v23, OS_LOG_TYPE_DEBUG, "[%#010llx] on = %d", v24, v12 & 1);
  v25 = _gc_log_psvr2();
  v26 = IORegistryEntry::getRegistryEntryID(a1);
  _os_log_internal(&dword_0, v25, OS_LOG_TYPE_DEBUG, "[%#010llx] brightness = %hhu", v26, v5);
  v27 = 0;
  LOWORD(v5) = v5 & 3;
  v11 = *a2 & 0xF2FF;
  if (v13)
  {
    v10 = 256;
  }

  else
  {
    v10 = 0;
  }

  if (v14)
  {
    v8 = 1024;
  }

  else
  {
    v8 = 0;
  }

  result = 1;
  if (v7)
  {
    goto LABEL_20;
  }

LABEL_21:
  *a2 = v10 | v27 | v8 | v11;
  *(a2 + 35) = *(a2 + 35) & 0xFCFE | v12 & 1 | (v5 << 8);
  return result;
}

uint64_t PSVR2SenseDevice::prepareOutputDataForTracking(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  v102 = 0;
  v103 = &v102;
  v104 = 0x2000000000;
  v105 = 0;
  v98 = 0;
  v99 = &v98;
  v100 = 0x2000000000;
  v101 = 5;
  v94 = 0;
  v95 = &v94;
  v96 = 0x2000000000;
  v97 = 0;
  v90 = 0;
  v91 = &v90;
  v92 = 0x2000000000;
  v93 = 0;
  v86 = 0;
  v87 = &v86;
  v88 = 0x2000000000;
  v89 = 0;
  v82 = 0;
  v83 = &v82;
  v84 = 0x2000000000;
  v85 = 0;
  v78 = 0;
  v79 = &v78;
  v80 = 0x2000000000;
  v81 = 0;
  v6 = *(a1 + 216);
  v75 = *(v6 + 26088);
  v76 = *(v6 + 26092);
  v7 = *(a1 + 368);
  v74 = v7;
  if (!v7)
  {
    v25 = _gc_log_psvr2();
    RegistryEntryID = IORegistryEntry::getRegistryEntryID(a1);
    _os_log_internal(&dword_0, v25, OS_LOG_TYPE_DEBUG, "[%#010llx] > (TRACKING) No tracking control queue.", RegistryEntryID);
    v12 = a1;
    goto LABEL_29;
  }

  v8 = *(v6 + 2432);
  (*(*v7 + 32))(v7);
  v77[0] = _NSConcreteStackBlock;
  v77[1] = 1107296256;
  v77[2] = ___ZN16PSVR2SenseDevice28prepareOutputDataForTrackingEP20PSVR2SenseOutputDataR19OutputReportContext_block_invoke;
  v77[11] = a1;
  v77[12] = a3;
  v71 = a3;
  v77[3] = &__block_descriptor_tmp_201;
  v77[4] = &v98;
  v77[5] = &v94;
  v77[6] = &v90;
  v77[7] = &v86;
  v77[8] = &v82;
  v77[9] = &v78;
  v77[10] = &v102;
  v77[13] = v8;
  if ((*(*v7 + 216))(v7, 1, v77))
  {
    v12 = a1;
    PSVR2SenseDevice::prepareOutputDataForTracking();
    v4 = a2;
    goto LABEL_29;
  }

  v10 = v79;
  v11 = *(v95 + 6) + 3 * v76 + *(v79 + 6) / 0x3E8u * v75;
  *(v95 + 6) = v11;
  v4 = a2;
  v12 = a1;
  if (v103[3])
  {
    v13 = *(v91 + 6);
    if (v13 && (*(v87 + 25) & 0xF) != 0)
    {
      v14 = v91[3] & 0xF00;
      v15 = *(a1 + 216);
      v16 = *(v15 + 26144);
      v17 = 150 * *(v15 + 26144);
      v18 = *(v15 + 26148);
      v19 = v18 / 0x3E8uLL;
      v20 = *(v10 + 6);
      v21 = *(v15 + 26136);
      v22 = (v11 - v21) / v19;
      v23 = v11 + v17;
      v70 = v20;
      v68 = v18;
      v69 = v11 - v21;
      if (v14 == 256)
      {
        v24 = v23 - v13;
        goto LABEL_14;
      }

      if (v14 == 512)
      {
        v23 = v13 + v11;
        v24 = v11;
        goto LABEL_14;
      }

      v24 = v11;
      if (v14 != 768)
      {
LABEL_14:
        v65 = v23;
        v66 = v22;
        v31 = v21 + v19 * v22;
        v32 = v31 + v17;
        v33 = v21 + v19 + v19 * v22;
        v34 = v33 + v17;
        v35 = v21;
        v67 = _gc_log_psvr2();
        v36 = IORegistryEntry::getRegistryEntryID(v12);
        _os_log_internal(&dword_0, v67, OS_LOG_TYPE_DEBUG, "[%#010llx] > (TRACKING) Check should skip for compatible current parameters {\n\t currentCyclePeriod3US = %uus\n\t currentEmissionLength3US = %uus\n\t currentEmissionTime3US = %lluus\n\t newCyclePeriod3US = %uus\n\t newEmissionLength3US = %uus\n\t newEmissionTime3US = %lluus\n\t emissionTimeOffset3US = %lluus\n\t emissionTimeOffsetInCurrentCycles = %llu\n\t exposureWindowLength3US = %uus\n\t exposureWindow3US = [%lluus, %lluus)]\n\t next1PredictedEmissionTime3US = [%lluus, %lluus]\n\t next2PredictedEmissionEndTime3US = [%lluus, %lluus]\n}", v36, v68 / 0xBB8, 50 * v16, v35 / 3, v70 / 0xBB8, 50 * v16, v11 / 3uLL, v69 / 3, v66, v13 / 3, v24 / 3, ((v65 * 0x5555555555555556uLL) >> 64), v31 / 3, v32 / 3, v33 / 3, v34 / 3);
        if (*(v99 + 24) == *(*(v12 + 216) + 26128))
        {
          v4 = a2;
          if (*(v83 + 24) == *(*(v12 + 216) + 26144))
          {
            if ((v31 < v24 || v32 > v65) && (v33 < v24 || v34 > v65))
            {
              v63 = _gc_log_psvr2();
              v64 = IORegistryEntry::getRegistryEntryID(v12);
              _os_log_internal(&dword_0, v63, OS_LOG_TYPE_DEBUG, "[%#010llx] >\t PROCEED WITH UPDATE (existing pulse outside target emission window)", v64);
            }

            else
            {
              *(v103 + 24) = 0;
              v37 = _gc_log_psvr2();
              v38 = IORegistryEntry::getRegistryEntryID(v12);
              _os_log_internal(&dword_0, v37, OS_LOG_TYPE_DEBUG, "[%#010llx] >\t SKIP", v38);
            }
          }

          else
          {
            v41 = _gc_log_psvr2();
            v42 = IORegistryEntry::getRegistryEntryID(v12);
            _os_log_internal(&dword_0, v41, OS_LOG_TYPE_DEBUG, "[%#010llx] >\t PROCEED WITH UPDATE (emission length change)", v42);
          }
        }

        else
        {
          v39 = _gc_log_psvr2();
          v40 = IORegistryEntry::getRegistryEntryID(v12);
          _os_log_internal(&dword_0, v39, OS_LOG_TYPE_DEBUG, "[%#010llx] >\t PROCEED WITH UPDATE (mode change)", v40);
          v4 = a2;
        }

        goto LABEL_23;
      }
    }

    else
    {
      v27 = *(a1 + 216);
      v28 = *(v27 + 26096);
      if (!v28)
      {
        goto LABEL_23;
      }

      LODWORD(v13) = 3 * v28;
      v16 = *(v27 + 26144);
      v17 = 150 * *(v27 + 26144);
      v19 = *(v27 + 26148) / 0x3E8uLL;
      v70 = *(v10 + 6);
      v21 = *(v27 + 26136);
      v68 = *(v27 + 26148);
      v69 = v11 - v21;
      v22 = (v11 - v21) / v19;
    }

    v29 = v11 + (75 * v16);
    v30 = v13 >> 1;
    v24 = v29 - v30;
    v23 = v29 + v30;
    goto LABEL_14;
  }

LABEL_23:
  a3 = v71;
  if (v103[3])
  {
    v43 = *(v12 + 216);
    v44 = *(v43 + 26100);
    if (v44)
    {
      v45 = *(v43 + 26120) * *(v12 + 232) / *(v12 + 236);
      v46 = *(v71 + 16) * *(v12 + 232) / *(v12 + 236) / 0x3E8;
      v47 = _gc_log_psvr2();
      v48 = IORegistryEntry::getRegistryEntryID(v12);
      v49 = v46 - v45 / 0x3E8;
      _os_log_internal(&dword_0, v47, OS_LOG_TYPE_DEBUG, "[%#010llx] > (TRACKING) Check should skip Tracking update for modification interval {\n\t outputTimeUS = %lluus\n\t lastModificationTimeUS = %lluus\n\t minimumModificationIntervalUS = %uus\n\t modification delta = %lluus\n}", v48, v46, v45 / 0x3E8, v44, v49);
      if (v49 >= v44)
      {
        v52 = _gc_log_psvr2();
        v53 = IORegistryEntry::getRegistryEntryID(v12);
        _os_log_internal(&dword_0, v52, OS_LOG_TYPE_DEBUG, "[%#010llx] >\t PROCEED WITH UPDATE", v53);
      }

      else
      {
        *(v103 + 24) = 0;
        v50 = _gc_log_psvr2();
        v51 = IORegistryEntry::getRegistryEntryID(v12);
        _os_log_internal(&dword_0, v50, OS_LOG_TYPE_DEBUG, "[%#010llx] >\t SKIP", v51);
      }

      v4 = a2;
    }
  }

LABEL_29:
  v54 = v103;
  v55 = *(v12 + 216);
  if (v103[3])
  {
    *(v55 + 26112) = *(a3 + 32);
    *(v55 + 26120) = *(a3 + 16);
    *(v55 + 26128) = *(v99 + 24);
    *(v55 + 26136) = *(v95 + 6);
    *(v55 + 26144) = *(v83 + 24);
    *(v55 + 26148) = *(v79 + 6);
  }

  if (*(v55 + 26160))
  {
    *(v54 + 24) = 1;
    *(v55 + 26160) = 0;
  }

  if (*(v55 + 26161))
  {
    *(v99 + 24) = *(v55 + 26166);
    v55 = *(v12 + 216);
  }

  if (*(v55 + 26162))
  {
    *(v95 + 6) = *(v55 + 26168);
  }

  if (*(v55 + 26163))
  {
    *(v83 + 24) = *(v55 + 26172);
    v55 = *(v12 + 216);
  }

  if (*(v55 + 26164))
  {
    *(v79 + 6) = *(v55 + 26176);
  }

  if (*(v55 + 26165))
  {
    v9.i32[0] = *(v55 + 26180);
    v56 = vmovl_u8(v9).u64[0];
  }

  else
  {
    v56 = 0;
  }

  if (v54[3])
  {
    ++*(v55 + 26104);
    v72 = v56;
    v57 = _gc_log_psvr2();
    v58 = IORegistryEntry::getRegistryEntryID(v12);
    _os_log_internal(&dword_0, v57, OS_LOG_TYPE_DEBUG, "[%#010llx] > (TRACKING) +++ SET TRACKING %llu (OUT) +++ {\n\t cycleOffsetMultiplier = %i\n\t emissionTimeOffsetUS = %i\n\t emissionTime3US = %u\n\t emissionLength = %hhu (%uus)\n\t cyclePeriod3NS = %u (%lluus)\n\t mode = %hhu\n}", v58, *(*(v12 + 216) + 26104), v75, v76, *(v95 + 6), *(v83 + 24), 50 * *(v83 + 24), *(v79 + 6), *(v79 + 6) / 0xBB8uLL, *(v99 + 24));
    v56 = v72;
    v54 = v103;
  }

  v59 = v83;
  v60 = *(v83 + 24);
  if (v60 >= 0x34)
  {
    LOBYTE(v60) = 52;
  }

  *(v83 + 24) = v60;
  *(v4 + 19) = *(v99 + 24);
  *(v4 + 20) = *(*(v12 + 216) + 26104);
  *(v4 + 21) = *(v59 + 24);
  *(v4 + 22) = *(v95 + 6);
  *(v4 + 26) = *(v79 + 6);
  *(v4 + 30) = vuzp1_s8(v56, v56).u32[0];
  v61 = *(v54 + 24);
  _Block_object_dispose(&v78, 8);
  _Block_object_dispose(&v82, 8);
  _Block_object_dispose(&v86, 8);
  _Block_object_dispose(&v90, 8);
  _Block_object_dispose(&v94, 8);
  _Block_object_dispose(&v98, 8);
  _Block_object_dispose(&v102, 8);
  if (v74)
  {
    (*(*v74 + 40))(v74);
  }

  return v61 & 1;
}

uint64_t ___ZN16PSVR2SenseDevice28prepareOutputDataForTrackingEP20PSVR2SenseOutputDataR19OutputReportContext_block_invoke(void *a1, uint64_t a2, unsigned int a3, unsigned __int8 *a4)
{
  v8 = a1[11];
  v9 = *a4;
  v27 = *(a4 + 1);
  v10 = *(a4 + 1);
  v29 = *(a4 + 2);
  v11 = *(v8 + 232);
  v12 = *(v8 + 236);
  v26 = *(a4 + 3);
  v28 = *(a4 + 4);
  v13 = _gc_log_psvr2();
  RegistryEntryID = IORegistryEntry::getRegistryEntryID(v8);
  v25 = a2;
  _os_log_internal(&dword_0, v13, OS_LOG_TYPE_DEBUG, "[%#010llx] > (TRACKING) Check [%llu] (isLastApplied: %d) txHost:%llu > entryEmissionTimeHost:%llu -> %d", RegistryEntryID, a2, a3, *(a1[12] + 16), *(a4 + 1), *(a1[12] + 16) >= v10);
  if (*(a1[12] + 16) >= v10)
  {
    v15 = 1;
  }

  else
  {
    v15 = a3;
  }

  if (v15 == 1)
  {
    v16 = v10 * v11 / v12 / 0x14D;
    v17 = v29 * v11 / v12 / 0x14D;
    v18 = v9 <= 1 ? 1 : v9;
    *(*(a1[4] + 8) + 24) = v18;
    *(*(a1[5] + 8) + 24) = *(*(v8 + 216) + 2432) + v16;
    *(*(a1[6] + 8) + 24) = v17;
    *(*(a1[7] + 8) + 24) = v27;
    *(*(a1[8] + 8) + 24) = v26;
    *(*(a1[9] + 8) + 24) = v28;
    if ((a3 & 1) == 0)
    {
      *(*(a1[10] + 8) + 24) = 1;
      v19 = *(*(a1[7] + 8) + 24);
      v20 = _gc_log_psvr2();
      v21 = IORegistryEntry::getRegistryEntryID(v8);
      v22 = 60;
      if ((v19 & 0x200) != 0)
      {
        v23 = 60;
      }

      else
      {
        v23 = 32;
      }

      if ((v19 & 0x100) == 0)
      {
        v22 = 32;
      }

      _os_log_internal(&dword_0, v20, OS_LOG_TYPE_DEBUG, "[%#010llx] > (TRACKING) New parameters from queue [%llu] {\n\t entryEmissionTimeHost = %llu %c%c %llu\n\t entryEmissionTime3US = %llu %c%c %llu\n\t hostToDeviceTimestampConversion3US = %lli\n\t computed device emissionTime3US = %u\n}", v21, v25, v10, v22, v23, v29, v16, v22, v23, v17, a1[13], *(*(a1[5] + 8) + 24));
    }
  }

  return v15;
}

void __copy_helper_block_8_32r40r48r56r64r72r80r(uint64_t a1, uint64_t a2)
{
  _Block_object_assign((a1 + 32), *(a2 + 32), 8);
  _Block_object_assign((a1 + 40), *(a2 + 40), 8);
  _Block_object_assign((a1 + 48), *(a2 + 48), 8);
  _Block_object_assign((a1 + 56), *(a2 + 56), 8);
  _Block_object_assign((a1 + 64), *(a2 + 64), 8);
  _Block_object_assign((a1 + 72), *(a2 + 72), 8);
  v4 = *(a2 + 80);

  _Block_object_assign((a1 + 80), v4, 8);
}

void __destroy_helper_block_8_32r40r48r56r64r72r80r(uint64_t a1)
{
  _Block_object_dispose(*(a1 + 80), 8);
  _Block_object_dispose(*(a1 + 72), 8);
  _Block_object_dispose(*(a1 + 64), 8);
  _Block_object_dispose(*(a1 + 56), 8);
  _Block_object_dispose(*(a1 + 48), 8);
  _Block_object_dispose(*(a1 + 40), 8);
  v2 = *(a1 + 32);

  _Block_object_dispose(v2, 8);
}

uint64_t PSVR2SenseDevice::prepareOutputDataForHaptics(IORegistryEntry *a1, uint64_t a2, uint64_t a3)
{
  v42 = 0;
  v43 = &v42;
  v44 = 0x2000000000;
  v45 = 0;
  v38 = 0;
  v39 = &v38;
  v40 = 0x2000000000;
  v41 = 0;
  v36[0] = 0;
  v36[1] = v36;
  v36[2] = 0x2000000000;
  v37 = 1;
  v32 = 0;
  v33 = &v32;
  v34 = 0x2000000000;
  v35 = 0;
  v28 = 0;
  v29 = &v28;
  v30 = 0x2000000000;
  v31 = 0;
  v24 = 0;
  v25 = &v24;
  v26 = 0x2000000000;
  v27 = 0;
  fPropertyTable = a1[9].fPropertyTable;
  if (fPropertyTable)
  {
    (fPropertyTable->retain)(a1[9].fPropertyTable);
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 1107296256;
    v23[2] = ___ZN16PSVR2SenseDevice27prepareOutputDataForHapticsEP20PSVR2SenseOutputDataR19OutputReportContext_block_invoke;
    v23[10] = a1;
    v23[11] = a3;
    v23[3] = &__block_descriptor_tmp_202;
    v23[4] = &v38;
    v23[5] = v36;
    v23[6] = &v32;
    v23[7] = &v28;
    v23[8] = &v24;
    v23[9] = &v42;
    v7 = (fPropertyTable->initWithObjects)(fPropertyTable, 1, v23);
    if (v7 != -536870184)
    {
      v8 = v7;
      if (v7 != -536870160)
      {
        if (v7)
        {
          v9 = _gc_log_psvr2();
          RegistryEntryID = IORegistryEntry::getRegistryEntryID(a1);
          _os_log_internal(&dword_0, v9, OS_LOG_TYPE_DEBUG, "[%#010llx] > (HAPTICS) Queue read failed: %x", RegistryEntryID, v8);
        }
      }
    }
  }

  else
  {
    v11 = _gc_log_psvr2();
    v12 = IORegistryEntry::getRegistryEntryID(a1);
    _os_log_internal(&dword_0, v11, OS_LOG_TYPE_DEBUG, "[%#010llx] > (HAPTICS) No haptics control queue.", v12);
  }

  reserved = a1[5].reserved;
  if (*(reserved + 26184))
  {
    *(v43 + 24) = 1;
    *(reserved + 26184) = 0;
  }

  if (*(reserved + 26185))
  {
    *(v33 + 24) = *(reserved + 26188);
    reserved = a1[5].reserved;
  }

  if (*(reserved + 26186))
  {
    *(v29 + 24) = *(reserved + 26189);
    reserved = a1[5].reserved;
  }

  if (*(reserved + 26187))
  {
    v22 = *(reserved + 26190);
    if (*(v25 + 24) > v22)
    {
      *(v25 + 24) = v22;
    }
  }

  v14 = v43;
  if (v43[3])
  {
    v15 = _gc_log_psvr2();
    v16 = IORegistryEntry::getRegistryEntryID(a1);
    _os_log_internal(&dword_0, v15, OS_LOG_TYPE_DEBUG, "[%#010llx] > (HAPTICS) +++ SET RUMBLE %llu: %hhu.", v16, v39[3], *(v25 + 24));
    v14 = v43;
  }

  v17 = v33;
  v18 = *a2 & 0xFFFE;
  if (*(v33 + 24))
  {
    ++v18;
  }

  *a2 = v18;
  v19 = v18 & 0xFFCF | (32 * (*(v17 + 24) > 1u)) | 2;
  *a2 = v19;
  *(a2 + 3) &= ~0x80u;
  *a2 = v19 & 0xFFBF | ((v29[3] & 1) << 6);
  *(a2 + 2) = *(v25 + 24);
  v20 = *(v14 + 24);
  _Block_object_dispose(&v24, 8);
  _Block_object_dispose(&v28, 8);
  _Block_object_dispose(&v32, 8);
  _Block_object_dispose(v36, 8);
  _Block_object_dispose(&v38, 8);
  _Block_object_dispose(&v42, 8);
  if (fPropertyTable)
  {
    (fPropertyTable->release_0)(fPropertyTable);
  }

  return v20 & 1;
}

uint64_t ___ZN16PSVR2SenseDevice27prepareOutputDataForHapticsEP20PSVR2SenseOutputDataR19OutputReportContext_block_invoke(void *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  if (*(a1[11] + 16) >= *a4)
  {
    v4 = 1;
  }

  else
  {
    v4 = a3;
  }

  if (v4 == 1)
  {
    v6 = a1[10];
    *(*(a1[4] + 8) + 24) = a2;
    *(*(a1[5] + 8) + 24) = *(a4 + 8) & 1;
    *(*(a1[6] + 8) + 24) = *(a4 + 9);
    *(*(a1[7] + 8) + 24) = *(a4 + 10);
    *(*(a1[8] + 8) + 24) = *(a4 + 11);
    if ((a3 & 1) == 0)
    {
      *(*(a1[9] + 8) + 24) = 1;
      v7 = _gc_log_psvr2();
      RegistryEntryID = IORegistryEntry::getRegistryEntryID(v6);
      _os_log_internal(&dword_0, v7, OS_LOG_TYPE_DEBUG, "[%#010llx] > (HAPTICS) New parameters from queue [%llu] {\n\t rumbleMute = %d\n\t rumbleMode = %hhu\n\t rumbleStrength = %hhu\n\t rumbleAmplitude = %hhu\n}", RegistryEntryID, *(*(a1[4] + 8) + 24), *(*(a1[5] + 8) + 24) & 1, *(*(a1[6] + 8) + 24), *(*(a1[7] + 8) + 24), *(*(a1[8] + 8) + 24));
    }
  }

  return v4;
}

void __copy_helper_block_8_32r40r48r56r64r72r(uint64_t a1, uint64_t a2)
{
  _Block_object_assign((a1 + 32), *(a2 + 32), 8);
  _Block_object_assign((a1 + 40), *(a2 + 40), 8);
  _Block_object_assign((a1 + 48), *(a2 + 48), 8);
  _Block_object_assign((a1 + 56), *(a2 + 56), 8);
  _Block_object_assign((a1 + 64), *(a2 + 64), 8);
  v4 = *(a2 + 72);

  _Block_object_assign((a1 + 72), v4, 8);
}

void __destroy_helper_block_8_32r40r48r56r64r72r(uint64_t a1)
{
  _Block_object_dispose(*(a1 + 72), 8);
  _Block_object_dispose(*(a1 + 64), 8);
  _Block_object_dispose(*(a1 + 56), 8);
  _Block_object_dispose(*(a1 + 48), 8);
  _Block_object_dispose(*(a1 + 40), 8);
  v2 = *(a1 + 32);

  _Block_object_dispose(v2, 8);
}

void PSVR2SenseDevice::handleUSBInputReport(PSVR2SenseDevice *this, unint64_t a2, unint64_t a3, unsigned int a4, void *a5, unint64_t a6)
{
  if (a6 <= 0x3F)
  {
    PSVR2SenseDevice::handleUSBInputReport();
  }

  else
  {

    PSVR2SenseDevice::handleInputReportData(this);
  }
}

void PSVR2SenseDevice::handleBluetoothInputReport(IORegistryEntry *this, unint64_t a2, unint64_t a3, unsigned __int8 a4, unsigned __int8 *a5, unint64_t a6)
{
  if (a6 <= 0x4D)
  {
    PSVR2SenseDevice::handleBluetoothInputReport(this, a4, a6);
  }

  else
  {
    v10 = 0;
    v11 = *(a5 + 74);
    v12 = -1943239924;
    do
    {
      v12 = PSVR2SenseDevice::computeCRC(unsigned char,unsigned int,void const*,unsigned long)const::crc32_tab[(a5[v10++] ^ v12)] ^ (v12 >> 8);
    }

    while (v10 != 74);
    v13 = ~v12;
    if (v11 != ~v12)
    {
      v14 = _gc_log_psvr2();
      RegistryEntryID = IORegistryEntry::getRegistryEntryID(this);
      _os_log_internal(&dword_0, v14, OS_LOG_TYPE_INFO, "[%#010llx] Input report %#0.2x payload [%#0.2x] (%zu bytes) has invalid checksum '%#0.8x'; expected '%#0.8x'.", RegistryEntryID, a4, *a5, a6, v11, v13);
    }

    PSVR2SenseDevice::handleInputReportData(this);
  }
}

uint64_t PSVR2SenseDevice::handleInputReport(PSVR2SenseDevice *this, uint64_t a2, int a3, void *a4, uint64_t a5)
{
  result = 0;
  clock_get_uptime(&result);
  v10 = *(this + 25);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 0x40000000;
  v12[2] = ___ZN16PSVR2SenseDevice17handleInputReportEyjPvm_block_invoke;
  v12[3] = &__block_descriptor_tmp_203;
  v12[4] = this;
  v13 = a3;
  v12[5] = a2;
  v12[6] = result;
  v12[7] = a4;
  v12[8] = a5;
  return IOGCCommandQueue::syncBlock(v10, v12);
}

uint64_t ___ZN16PSVR2SenseDevice17handleInputReportEyjPvm_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 72);
  if (v3 == 49)
  {
    PSVR2SenseDevice::handleBluetoothInputReport(*(a1 + 32), *(a1 + 40), *(a1 + 48), 0x31u, *(a1 + 56), *(a1 + 64));
  }

  else if (v3 == 1)
  {
    PSVR2SenseDevice::handleUSBInputReport(*(a1 + 32), *(a1 + 40), *(a1 + 48), 1u, *(a1 + 56), *(a1 + 64));
  }

  else
  {
    v4 = _gc_log_psvr2();
    RegistryEntryID = IORegistryEntry::getRegistryEntryID(v2);
    _os_log_internal(&dword_0, v4, OS_LOG_TYPE_DEBUG, "[%#010llx] Received unknown input report: reportID = %#lx", RegistryEntryID, *(a1 + 72));
  }

  return 0;
}

uint64_t PSVR2SenseDevice::prepareOutputReport(uint64_t a1, uint64_t a2)
{
  v22 = 0u;
  memset(v21, 0, sizeof(v21));
  memset(v24, 0, sizeof(v24));
  v3 = *(a1 + 200);
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 0x40000000;
  v20[2] = ___ZN16PSVR2SenseDevice19prepareOutputReportER19OutputWakeupContext_block_invoke;
  v20[3] = &__block_descriptor_tmp_204;
  v20[4] = a1;
  v20[5] = v21;
  v20[6] = a2;
  v20[7] = v24;
  v4 = IOGCCommandQueue::syncBlock(v3, v20);
  if (v4)
  {
    v5 = v4;
    v6 = _gc_log_psvr2();
    RegistryEntryID = IORegistryEntry::getRegistryEntryID(a1);
    _os_log_internal(&dword_0, v6, OS_LOG_TYPE_DEBUG, "[%#010llx] >>>> SKIPPED OUTPUT REPORT!", RegistryEntryID);
  }

  else
  {
    v8 = *(&v22 + 1);
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 0x40000000;
    v16 = ___ZN16PSVR2SenseDevice19prepareOutputReportER19OutputWakeupContext_block_invoke_2;
    v17 = &__block_descriptor_tmp_206;
    v18 = a1;
    v19 = *(&v22 + 1);
    if (*(a1 + 248) == 1)
    {
      v23[47] = 0;
      *&v23[39] = 0;
      v23[0] = 2;
      *&v23[1] = *v24;
      *&v23[17] = *&v24[16];
      *&v23[31] = *&v24[30];
      clock_get_uptime((*(&v22 + 1) + 40));
      v9 = a1;
      v10 = 48;
      v11 = 0;
      v12 = 0;
    }

    else
    {
      memset(&v23[2], 0, 76);
      strcpy(v23, "1");
      add = atomic_fetch_add((a1 + 400), 1u);
      *&v23[3] = *v24;
      v23[1] = v23[1] & 0xF | (16 * add);
      v23[2] = 16;
      *&v23[19] = *&v24[16];
      *&v23[33] = *&v24[30];
      clock_get_uptime((v8 + 40));
      v11 = *(a1 + 248) == 2;
      v9 = a1;
      v10 = 78;
      v12 = 1;
    }

    v5 = PSVR2SenseDevice::setOutputReport(v9, v23, v10, v11, v12, v15);
    if (v5)
    {
      v16(v15, v5);
    }
  }

  return v5;
}

uint64_t ___ZN16PSVR2SenseDevice19prepareOutputReportER19OutputWakeupContext_block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = *(v2 + 216);
  v4 = *(v3 + 296);
  v5 = v3 + 816;
  v6 = 80 * (v4 % 0x14);
  v7 = v5 + v6;
  if (v6 != v6)
  {
    v7 = (v5 + v6) & 0xFFFFFFFFFFFFLL | 0x2BAD000000000000;
  }

  *(v7 + 48) = 0u;
  *(v7 + 64) = 0u;
  *(v7 + 16) = 0u;
  *(v7 + 32) = 0u;
  *v7 = 0u;
  v9 = a1[5];
  v8 = a1[6];
  *v9 = *v8;
  *(v9 + 16) = v8[1];
  *(v9 + 32) = v4;
  *(v9 + 40) = v7;
  v10 = _gc_log_psvr2();
  RegistryEntryID = IORegistryEntry::getRegistryEntryID(v2);
  _os_log_internal(&dword_0, v10, OS_LOG_TYPE_DEBUG, "[%#010llx] >>>> PREPARE OUTPUT REPORT (%llu) @ %lluus, for Tx @ %lluus", RegistryEntryID, v4, *(a1[5] + 8) * *(v2 + 232) / *(v2 + 236) / 0x3E8, *(a1[5] + 16) * *(v2 + 232) / *(v2 + 236) / 0x3E8);
  *v7 = v4;
  v12 = a1[5];
  v13 = a1[6];
  *(v7 + 8) = *v12;
  *(v7 + 24) = v12[1];
  *(v7 + 72) = *(v7 + 72) & 0xFE | *(v13 + 40) & 1;
  if (v4 == 1 || (*(a1[6] + 40) & 1) != 0 || *(*(v2 + 216) + 304) >= v4 - 1)
  {
    v17 = a1[7];
    *(v17 + 15) = *(a1[5] + 32);
    v18 = PSVR2SenseDevice::prepareOutputDataForStatus(v2, v17);
    v19 = v18;
    if (v18)
    {
      *(v7 + 72) |= 4u;
    }

    if (PSVR2SenseDevice::prepareOutputDataForTracking(v2, a1[7], a1[5]))
    {
      *(v7 + 72) |= 8u;
      v19 = 1;
    }

    if (PSVR2SenseDevice::prepareOutputDataForHaptics(v2, a1[7], a1[5]))
    {
      *(v7 + 72) |= 0x10u;
      *(a1[7] + 4) = 5;
    }

    else
    {
      *(a1[7] + 4) = 5;
      if ((v19 & 1) == 0 && (*(a1[6] + 40) & 1) == 0)
      {
        return 3758097120;
      }
    }

    v14 = 0;
    ++*(*(v2 + 216) + 296);
  }

  else
  {
    v14 = 3758097112;
    v15 = _gc_log_psvr2();
    v16 = IORegistryEntry::getRegistryEntryID(v2);
    _os_log_internal(&dword_0, v15, OS_LOG_TYPE_DEBUG, "[%#010llx] > Previous output report is still pending.", v16);
  }

  return v14;
}

uint64_t ___ZN16PSVR2SenseDevice19prepareOutputReportER19OutputWakeupContext_block_invoke_2(uint64_t a1, int a2)
{
  v4 = *(a1 + 32);
  clock_get_uptime((*(a1 + 40) + 48));
  *(*(a1 + 40) + 72) = *(*(a1 + 40) + 72) & 0xDF | (32 * (a2 == 0));
  if (a2)
  {
    v5 = _gc_log_psvr2();
    RegistryEntryID = IORegistryEntry::getRegistryEntryID(v4);
    _os_log_internal(&dword_0, v5, OS_LOG_TYPE_DEBUG, "[%#010llx] >>>> FAILED TO ENQUEUED OUTPUT REPORT (%llu) WITH PROVIDER!", RegistryEntryID, **(a1 + 40));
  }

  else
  {
    v7 = *(a1 + 40);
    v8 = *(v4 + 232);
    v9 = *(v4 + 236);
    v18 = v7[1] * v8 / v9 / 0x3E8;
    v10 = v7[2] * v8 / v9;
    v11 = v7[3] * v8 / v9 / 0x3E8;
    v12 = v7[5] * v8 / v9;
    v13 = v7[6] * v8 / v9;
    v7[7] = v13 / 0x3E8 - v12 / 0x3E8;
    v7[8] = v13 / 0x3E8 - v10 / 0x3E8;
    v14 = _gc_log_psvr2();
    v15 = IORegistryEntry::getRegistryEntryID(v4);
    _os_log_internal(&dword_0, v14, OS_LOG_TYPE_DEBUG, "[%#010llx] >>>> ENQUEUED OUTPUT REPORT (%llu) WITH PROVIDER! {\n    scheduledTimestampUS = %lluus\n    prepareTimestampHost = %lluus\n    transmissionTimestampUS = %lluus (Wake %+llius)\n    enqueueReportStartTimestampUS = %lluus (TX %+llius)\n    enqueueReportFinishTimestampUS = %lluus (TX %+llius)\n    enqueueTimeUS = %lluus\n    totalTimeUS = %lluus\n}", v15, **(a1 + 40), v18, v10 / 0x3E8, v11, v11 - v10 / 0x3E8, v12 / 0x3E8, v11 - v12 / 0x3E8, v13 / 0x3E8, v11 - v13 / 0x3E8, *(*(a1 + 40) + 56), *(*(a1 + 40) + 64));
  }

  v16 = *(v4 + 200);
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 0x40000000;
  v19[2] = ___ZN16PSVR2SenseDevice19prepareOutputReportER19OutputWakeupContext_block_invoke_3;
  v19[3] = &__block_descriptor_tmp_205;
  v19[4] = v4;
  v19[5] = *(a1 + 40);
  return IOGCCommandQueue::syncBlock(v16, v19);
}

uint64_t PSVR2SenseDevice::setOutputReport(IORegistryEntry *a1, char *a2, vm_size_t a3, int a4, int a5, uint64_t a6)
{
  if (a3)
  {
    v10 = *a2;
    if (!a4)
    {
      goto LABEL_10;
    }

    if (a3 <= 5)
    {
      v23 = 3758097090;
      PSVR2SenseDevice::setOutputReport();
      return v23;
    }

    v11 = &a2[a3 - 4];
    if (a5)
    {
      v12 = a3 - 4;
      v13 = 354800310;
      v14 = a2;
      do
      {
        v15 = *v14++;
        v13 = PSVR2SenseDevice::computeCRC(unsigned char,unsigned int,void const*,unsigned long)const::crc32_tab[(v15 ^ v13)] ^ (v13 >> 8);
        --v12;
      }

      while (v12);
      *v11 = ~v13;
    }

    if (&a2[a3] == &dword_4)
    {
LABEL_10:
      v18 = _gc_log_psvr2();
      RegistryEntryID = IORegistryEntry::getRegistryEntryID(a1);
      _os_log_internal(&dword_0, v18, OS_LOG_TYPE_DEBUG, "[%#010llx] Set output report %#0.2x (%zu bytes)", RegistryEntryID, v10, a3);
    }

    else
    {
      v16 = _gc_log_psvr2();
      v17 = IORegistryEntry::getRegistryEntryID(a1);
      _os_log_internal(&dword_0, v16, OS_LOG_TYPE_DEBUG, "[%#010llx] Set output report %#0.2x | %#0.8x (%zu bytes)", v17, v10, *v11, a3);
    }

    v20 = IOBufferMemoryDescriptor::withBytes(a2, a3, 2u, 0);
    if (v20)
    {
      v21 = v20;
      v22 = (v20->prepare)(v20, 2);
      v23 = v22;
      if (v22)
      {
        PSVR2SenseDevice::setOutputReport(v22);
      }

      else
      {
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = ___ZN16PSVR2SenseDevice15setOutputReportEPvmbbU13block_pointerFviE_block_invoke;
        aBlock[4] = a6;
        aBlock[5] = a1;
        v30 = v10;
        aBlock[3] = &__block_descriptor_tmp_216;
        v24 = IOHIDGCDevice::setReport(a1, 1, v10, v21, 0, aBlock);
        if (v24)
        {
          v26 = v24;
          v27 = _gc_log_psvr2();
          v28 = IORegistryEntry::getRegistryEntryID(a1);
          _os_log_internal(&dword_0, v27, OS_LOG_TYPE_DEBUG, "[%#010llx] Set output report %#0.2x failed: %#x", v28, v10, v26);
          (*(*v21 + 224))(v21, 2);
          v23 = v26;
        }
      }

      (*(*v21 + 40))(v21);
    }

    else
    {
      PSVR2SenseDevice::setOutputReport();
      return 3758097085;
    }
  }

  else
  {
    v23 = 3758097090;
    PSVR2SenseDevice::setOutputReport();
  }

  return v23;
}

uint64_t ___ZN16PSVR2SenseDevice15setOutputReportEPvmbbU13block_pointerFviE_block_invoke(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {
    v6 = *(a1 + 40);
    v7 = _gc_log_psvr2();
    RegistryEntryID = IORegistryEntry::getRegistryEntryID(v6);
    _os_log_internal(&dword_0, v7, OS_LOG_TYPE_INFO, "[%#010llx] Set output report %#0.2x failed: %#x", RegistryEntryID, *(a1 + 48), a3);
  }

  (*(*a2 + 224))(a2, 2);
  result = *(a1 + 32);
  if (result)
  {
    v10 = *(result + 16);

    return v10();
  }

  return result;
}

uint64_t PSVR2SenseDevice::getFeatureReport(IORegistryEntry *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  v10 = IOBufferMemoryDescriptor::withOptions(1u, 0x40uLL, 1uLL);
  if (v10)
  {
    v11 = v10;
    v12 = (v10->prepare)(v10, 1);
    v13 = v12;
    if (v12)
    {
      PSVR2SenseDevice::getFeatureReport(v12);
    }

    else
    {
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = ___ZN16PSVR2SenseDevice16getFeatureReportEhmbU13block_pointerFviPKvmNS_9CRCResultEE_block_invoke;
      v20 = a2;
      aBlock[3] = &__block_descriptor_tmp_227;
      aBlock[4] = a5;
      aBlock[5] = a1;
      aBlock[6] = a3;
      v21 = a4;
      Report = IOHIDGCDevice::getReport(a1, 2, a2, v11, 0, aBlock);
      if (Report)
      {
        v16 = Report;
        v17 = _gc_log_psvr2();
        RegistryEntryID = IORegistryEntry::getRegistryEntryID(a1);
        _os_log_internal(&dword_0, v17, OS_LOG_TYPE_DEFAULT, "[%#010llx] Get feature report %#0.2x failed: %#x", RegistryEntryID, a2, v16);
        (*(*v11 + 224))(v11, 1);
        v13 = v16;
      }
    }

    (*(*v11 + 40))(v11);
  }

  else
  {
    PSVR2SenseDevice::getFeatureReport();
    return 3758097085;
  }

  return v13;
}

uint64_t ___ZN16PSVR2SenseDevice27requestMotionCorrectionDataEU13block_pointerFviPK30PSVR2SenseMotionCorrectionDataNS_9CRCResultEE_block_invoke(uint64_t a1, int a2, uint64_t a3)
{
  v6 = *(a1 + 40);
  v7 = _gc_log_psvr2();
  RegistryEntryID = IORegistryEntry::getRegistryEntryID(v6);
  if (a3)
  {
    _os_log_internal(&dword_0, v7, OS_LOG_TYPE_DEBUG, "[%#010llx] Request Motion Correction Data completed.", RegistryEntryID);
    result = *(a1 + 32);
    if (!result)
    {
      return result;
    }

    v10 = *(result + 16);
  }

  else
  {
    _os_log_internal(&dword_0, v7, OS_LOG_TYPE_INFO, "[%#010llx] Request Motion Correction Data failed: %#x", RegistryEntryID, a2);
    result = *(a1 + 32);
    if (!result)
    {
      return result;
    }

    v10 = *(result + 16);
  }

  return v10();
}

uint64_t ___ZN16PSVR2SenseDevice19requestFirmwareInfoEU13block_pointerFviPK22PSVR2SenseFirmwareInfoNS_9CRCResultEE_block_invoke(uint64_t a1, int a2, uint64_t a3)
{
  v6 = *(a1 + 40);
  v7 = _gc_log_psvr2();
  RegistryEntryID = IORegistryEntry::getRegistryEntryID(v6);
  if (a3)
  {
    _os_log_internal(&dword_0, v7, OS_LOG_TYPE_DEBUG, "[%#010llx] Request Firmware Info completed.", RegistryEntryID);
    result = *(a1 + 32);
    if (!result)
    {
      return result;
    }

    v10 = *(result + 16);
  }

  else
  {
    _os_log_internal(&dword_0, v7, OS_LOG_TYPE_INFO, "[%#010llx] Request Firmware Info failed: %#x", RegistryEntryID, a2);
    result = *(a1 + 32);
    if (!result)
    {
      return result;
    }

    v10 = *(result + 16);
  }

  return v10();
}

uint64_t ___ZN16PSVR2SenseDevice16getFeatureReportEhmbU13block_pointerFviPKvmNS_9CRCResultEE_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 40);
  (*(*a2 + 224))(a2, 1);
  if (a3)
  {
    return ___ZN16PSVR2SenseDevice16getFeatureReportEhmbU13block_pointerFviPKvmNS_9CRCResultEE_block_invoke_cold_1(v6, a1, a3);
  }

  v7 = (*(*a2 + 232))(a2, 0);
  if (!v7)
  {
    return ___ZN16PSVR2SenseDevice16getFeatureReportEhmbU13block_pointerFviPKvmNS_9CRCResultEE_block_invoke_cold_5();
  }

  v8 = v7;
  v9 = (*(*v7 + 120))(v7);
  v10 = (*(*v8 + 136))(v8);
  v11 = v10;
  if (v10 >= 0x401)
  {
    ___ZN16PSVR2SenseDevice16getFeatureReportEhmbU13block_pointerFviPKvmNS_9CRCResultEE_block_invoke_cold_4();
  }

  else if (v10)
  {
    v12 = *v9;
    v13 = *(a1 + 48);
    if (v10 < v13)
    {
      v33 = _gc_log_psvr2();
      RegistryEntryID = IORegistryEntry::getRegistryEntryID(v6);
      _os_log_internal(&dword_0, v33, OS_LOG_TYPE_DEFAULT, "[%#010llx] Get feature report %#0.2x error: Response [%#0.2x] has length %{bytes}zu.  Expected at least %zu bytes.", RegistryEntryID, *(a1 + 56), v12, v11, *(a1 + 48));
      v35 = *(a1 + 32);
      if (v35)
      {
        (*(v35 + 16))(v35, 3758097127, 0, 0, 0, 0);
      }

      goto LABEL_29;
    }

    if (v10 != v13)
    {
      v36 = _gc_log_psvr2();
      v37 = IORegistryEntry::getRegistryEntryID(v6);
      _os_log_internal(&dword_0, v36, OS_LOG_TYPE_DEFAULT, "[%#010llx] Get feature report %#0.2x #NOTE: Response [%#0.2x] has length %{bytes}zu.  Expected %zu bytes.", v37, *(a1 + 56), v12, v11, *(a1 + 48));
    }

    if ((*(a1 + 57) & 1) == 0)
    {
      v19 = 0;
      goto LABEL_20;
    }

    v14 = v11 - 4;
    if (v11 > 4)
    {
      v15 = v9 - 4;
      v16 = 1646453280;
      v17 = v9;
      do
      {
        v18 = *v17++;
        v16 = PSVR2SenseDevice::computeCRC(unsigned char,unsigned int,void const*,unsigned long)const::crc32_tab[(v18 ^ v16)] ^ (v16 >> 8);
        --v14;
      }

      while (v14);
      v19 = ~v16;
      v20 = &v15[v11];
      if (&v15[v11])
      {
        v21 = _gc_log_psvr2();
        v22 = IORegistryEntry::getRegistryEntryID(v6);
        v23 = *v20;
        v24 = " (bad CRC)";
        if (v23 == v19)
        {
          v24 = "";
        }

        if (*(a1 + 57))
        {
          v25 = v24;
        }

        else
        {
          v25 = "";
        }

        _os_log_internal(&dword_0, v21, OS_LOG_TYPE_DEBUG, "[%#010llx] Get feature report %#0.2x: [%#0.2x] | %#0.8x%{public}s (%zu bytes)", v22, *(a1 + 56), v12, v23, v25, v11);
        v26 = 0;
        goto LABEL_21;
      }

LABEL_20:
      v27 = _gc_log_psvr2();
      v28 = IORegistryEntry::getRegistryEntryID(v6);
      _os_log_internal(&dword_0, v27, OS_LOG_TYPE_DEBUG, "[%#010llx] Get feature report %#0.2x: [%#0.2x] | (%zu bytes)", v28, *(a1 + 56), v12, v11);
      v20 = 0;
      v26 = 1;
LABEL_21:
      if ((*(a1 + 57) & 1) != 0 && *v20 != v19)
      {
        v38 = _gc_log_psvr2();
        v39 = IORegistryEntry::getRegistryEntryID(v6);
        _os_log_internal(&dword_0, v38, OS_LOG_TYPE_DEFAULT, "[%#010llx] Get feature report %#0.2x #NOTE: Response [%#0.2x] (%zu bytes) has invalid checksum '%#0.8x'; expected '%#0.8x'.", v39, *(a1 + 56), v12, v11, *v20, v19);
      }

      v29 = *(a1 + 32);
      if (v29)
      {
        if (v26)
        {
          v30 = 0;
        }

        else
        {
          v30 = *v20 << 32;
        }

        (*(v29 + 16))(v29, 0, v9, v11, v30 | *(a1 + 57) & 1, v19);
      }

      goto LABEL_29;
    }

    ___ZN16PSVR2SenseDevice16getFeatureReportEhmbU13block_pointerFviPKvmNS_9CRCResultEE_block_invoke_cold_2(v6, a1, v12, (a1 + 48));
  }

  else
  {
    ___ZN16PSVR2SenseDevice16getFeatureReportEhmbU13block_pointerFviPKvmNS_9CRCResultEE_block_invoke_cold_3();
  }

LABEL_29:
  v31 = *(*v8 + 40);

  return v31(v8);
}

uint64_t PSVR2SenseDevice::setFeatureReport(IORegistryEntry *a1, unsigned __int8 *a2, vm_size_t a3, int a4, int a5, uint64_t a6)
{
  if (a3)
  {
    v10 = *a2;
    v11 = a2 + 1;
    if (a4)
    {
      v12 = a3 - 5;
      if (a3 <= 5)
      {
        v26 = 3758097090;
        PSVR2SenseDevice::setFeatureReport();
        return v26;
      }

      v13 = &v11[v12];
      if (v12 != v12)
      {
        v13 = (&v11[v12] & 0xFFFFFFFFFFFFLL | 0x2BAD000000000000);
      }

      if (a5)
      {
        v14 = a3 - 4;
        v15 = -543223748;
        v16 = a2;
        do
        {
          v17 = *v16++;
          v15 = PSVR2SenseDevice::computeCRC(unsigned char,unsigned int,void const*,unsigned long)const::crc32_tab[(v17 ^ v15)] ^ (v15 >> 8);
          --v14;
        }

        while (v14);
        *v13 = ~v15;
        v18 = "";
      }

      else
      {
        v18 = " (skipped CRC)";
      }

      v21 = _gc_log_psvr2();
      RegistryEntryID = IORegistryEntry::getRegistryEntryID(a1);
      _os_log_internal(&dword_0, v21, OS_LOG_TYPE_DEBUG, "[%#010llx] Set feature report %#0.2x | %{private}.*P | %{public}.*P%{public}s", RegistryEntryID, v10, a3 - 5, v11, 4, v13, v18);
    }

    else
    {
      v19 = _gc_log_psvr2();
      v20 = IORegistryEntry::getRegistryEntryID(a1);
      _os_log_internal(&dword_0, v19, OS_LOG_TYPE_DEBUG, "[%#010llx] Set feature report %#0.2x | %{private}.*P", v20, v10, (a3 - 1), v11);
    }

    v23 = IOBufferMemoryDescriptor::withBytes(a2, a3, 2u, 0);
    if (v23)
    {
      v24 = v23;
      v25 = (v23->prepare)(v23, 2);
      v26 = v25;
      if (v25)
      {
        PSVR2SenseDevice::setFeatureReport(v25);
      }

      else
      {
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = ___ZN16PSVR2SenseDevice16setFeatureReportEPvmbbU13block_pointerFviE_block_invoke;
        aBlock[4] = a6;
        aBlock[5] = a1;
        v33 = v10;
        aBlock[3] = &__block_descriptor_tmp_231;
        v27 = IOHIDGCDevice::setReport(a1, 2, v10, v24, 0, aBlock);
        if (v27)
        {
          v29 = v27;
          v30 = _gc_log_psvr2();
          v31 = IORegistryEntry::getRegistryEntryID(a1);
          _os_log_internal(&dword_0, v30, OS_LOG_TYPE_DEFAULT, "[%#010llx] Set feature report %#0.2x failed: %#x", v31, v10, v29);
          (*(*v24 + 224))(v24, 2);
          v26 = v29;
        }
      }

      (*(*v24 + 40))(v24);
    }

    else
    {
      PSVR2SenseDevice::setFeatureReport();
      return 3758097085;
    }
  }

  else
  {
    v26 = 3758097090;
    PSVR2SenseDevice::setFeatureReport();
  }

  return v26;
}

uint64_t ___ZN16PSVR2SenseDevice16setFeatureReportEPvmbbU13block_pointerFviE_block_invoke(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {
    ___ZN16PSVR2SenseDevice16setFeatureReportEPvmbbU13block_pointerFviE_block_invoke_cold_1();
  }

  (*(*a2 + 224))(a2, 2);
  v5 = *(*(a1 + 32) + 16);

  return v5();
}

uint64_t PSVR2SenseDevice::getSharedPageMemoryDescriptor(PSVR2SenseDevice *this)
{
  v1 = *(this + 28);
  if (v1)
  {
    (*(*v1 + 32))(*(this + 28));
  }

  return v1;
}

uint64_t PSVR2SenseDevice::getInputReportQueue(PSVR2SenseDevice *this)
{
  v1 = *(this + 42);
  if (v1)
  {
    (*(*v1 + 32))(*(this + 42));
  }

  return v1;
}

uint64_t PSVR2SenseDevice::getDriverDebugTimeSyncQueue(PSVR2SenseDevice *this)
{
  v1 = *(this + 43);
  if (v1)
  {
    goto LABEL_2;
  }

  v1 = IOGCCircularDataQueue::withEntries(&stru_20.flags, 120);
  v4 = *(this + 43);
  if (v4)
  {
    (*(*v4 + 40))(v4);
  }

  *(this + 43) = v1;
  if (v1)
  {
    (*(*v1 + 216))(v1, 0);
    v1 = *(this + 43);
    if (v1)
    {
LABEL_2:
      (*(*v1 + 32))(v1);
    }
  }

  return v1;
}

BOOL PSVR2SenseDevice::handleOpen(IORegistryEntry *this, IOService *a2, unsigned int a3, void *a4)
{
  v6 = _gc_log_psvr2();
  RegistryEntryID = IORegistryEntry::getRegistryEntryID(this);
  v8 = IORegistryEntry::getRegistryEntryID(a2);
  _os_log_internal(&dword_0, v6, OS_LOG_TYPE_DEBUG, "[%#010llx] ::handleOpen(<IOService %#010llx>)", RegistryEntryID, v8);
  v9 = this[5].__vftable;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 0x40000000;
  v11[2] = ___ZN16PSVR2SenseDevice10handleOpenEP9IOServicejPv_block_invoke;
  v11[3] = &__block_descriptor_tmp_232;
  v11[4] = this;
  v11[5] = a2;
  return IOGCCommandQueue::syncBlock(v9, v11) == 0;
}

uint64_t ___ZN16PSVR2SenseDevice10handleOpenEP9IOServicejPv_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!OSMetaClassBase::safeMetaCast(*(a1 + 40), &PSVR2SenseDeviceFastPathUserClient::gMetaClass))
  {
    return 3758097090;
  }

  (*(**(v2 + 320) + 240))(*(v2 + 320), *(a1 + 40));
  return 0;
}

uint64_t PSVR2SenseDevice::handleClose(IORegistryEntry *this, IOService *a2)
{
  v4 = _gc_log_psvr2();
  RegistryEntryID = IORegistryEntry::getRegistryEntryID(this);
  v6 = IORegistryEntry::getRegistryEntryID(a2);
  _os_log_internal(&dword_0, v4, OS_LOG_TYPE_DEBUG, "[%#010llx] ::handleClose(<IOService %#010llx>)", RegistryEntryID, v6);
  v7 = this[5].__vftable;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 0x40000000;
  v9[2] = ___ZN16PSVR2SenseDevice11handleCloseEP9IOServicej_block_invoke;
  v9[3] = &__block_descriptor_tmp_233;
  v9[4] = this;
  v9[5] = a2;
  return IOGCCommandQueue::syncBlock(v7, v9);
}

uint64_t ___ZN16PSVR2SenseDevice11handleCloseEP9IOServicej_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!OSMetaClassBase::safeMetaCast(*(a1 + 40), &PSVR2SenseDeviceFastPathUserClient::gMetaClass))
  {
    return 3758097090;
  }

  (*(**(v2 + 320) + 264))(*(v2 + 320), *(a1 + 40));
  return 0;
}

uint64_t PSVR2SenseDevice::handleIsOpen(PSVR2SenseDevice *this, const IOService *a2)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2000000000;
  v9 = 0;
  v2 = *(this + 25);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 1107296256;
  v5[2] = ___ZNK16PSVR2SenseDevice12handleIsOpenEPK9IOService_block_invoke;
  v5[5] = this;
  v5[6] = a2;
  v5[3] = &__block_descriptor_tmp_234;
  v5[4] = &v6;
  IOGCCommandQueue::syncBlock(v2, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3 & 1;
}

uint64_t ___ZNK16PSVR2SenseDevice12handleIsOpenEPK9IOService_block_invoke(void *a1)
{
  v2 = **(a1[5] + 320);
  if (a1[6])
  {
    v3 = (*(v2 + 280))();
  }

  else
  {
    v3 = (*(v2 + 144))() != 0;
  }

  *(*(a1[4] + 8) + 24) = v3;
  return 0;
}

uint64_t PSVR2SenseDevice::openTrackingControl(IORegistryEntry *this, IOService *a2, unsigned int a3, IOGCCircularControlQueue *a4)
{
  v7 = _gc_log_psvr2();
  RegistryEntryID = IORegistryEntry::getRegistryEntryID(this);
  v9 = IORegistryEntry::getRegistryEntryID(a2);
  _os_log_internal(&dword_0, v7, OS_LOG_TYPE_INFO, "[%#010llx] PSVR2SenseDevice::openTrackingControl(<IOService %#010llx>)", RegistryEntryID, v9);
  v10 = this[5].__vftable;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 0x40000000;
  v12[2] = ___ZN16PSVR2SenseDevice19openTrackingControlEP9IOServicejP24IOGCCircularControlQueue_block_invoke;
  v12[3] = &__block_descriptor_tmp_238;
  v12[4] = this;
  v12[5] = a2;
  v12[6] = a4;
  return IOGCCommandQueue::syncBlock(v10, v12);
}

uint64_t ___ZN16PSVR2SenseDevice19openTrackingControlEP9IOServicejP24IOGCCircularControlQueue_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (IOService::isInactive(v2))
  {
    ___ZN16PSVR2SenseDevice19openTrackingControlEP9IOServicejP24IOGCCircularControlQueue_block_invoke_cold_3();
    return 3758097111;
  }

  else if (v2[2].__timeBusy)
  {
    ___ZN16PSVR2SenseDevice19openTrackingControlEP9IOServicejP24IOGCCircularControlQueue_block_invoke_cold_1();
    return 3758097109;
  }

  else
  {
    v4 = *(a1 + 48);
    if (v4)
    {
      goto LABEL_6;
    }

    if ((*(v3 + 184))(0) == 40)
    {
      v7 = 3758097090;
      ___ZN16PSVR2SenseDevice19openTrackingControlEP9IOServicejP24IOGCCircularControlQueue_block_invoke_cold_2();
      return v7;
    }

    v4 = *(a1 + 48);
    if (v4)
    {
LABEL_6:
      (*(*v4 + 32))(v4);
    }

    pwrMgt = v2[2].pwrMgt;
    if (pwrMgt)
    {
      (*(*pwrMgt + 40))(pwrMgt);
    }

    v2[2].pwrMgt = v4;
    RegistryEntryID = IORegistryEntry::getRegistryEntryID(*(a1 + 40));
    v7 = 0;
    v2[2].__timeBusy = *(a1 + 40);
    v2[2].__accumBusy = RegistryEntryID;
  }

  return v7;
}

uint64_t PSVR2SenseDevice::closeTrackingControl(IORegistryEntry *this, IOService *a2)
{
  v4 = _gc_log_psvr2();
  RegistryEntryID = IORegistryEntry::getRegistryEntryID(this);
  v6 = IORegistryEntry::getRegistryEntryID(a2);
  _os_log_internal(&dword_0, v4, OS_LOG_TYPE_INFO, "[%#010llx] PSVR2SenseDevice::closeTrackingControl(<IOService %#010llx>)", RegistryEntryID, v6);
  v7 = this[5].__vftable;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 0x40000000;
  v9[2] = ___ZN16PSVR2SenseDevice20closeTrackingControlEP9IOServicej_block_invoke;
  v9[3] = &__block_descriptor_tmp_240;
  v9[4] = this;
  v9[5] = a2;
  return IOGCCommandQueue::syncBlock(v7, v9);
}

uint64_t ___ZN16PSVR2SenseDevice20closeTrackingControlEP9IOServicej_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1[44] == *(a1 + 40))
  {
    v1[44] = 0;
    v1[45] = 0;
    v2 = v1[46];
    if (v2)
    {
      (*(*v2 + 40))(v2);
    }

    result = 0;
    v1[46] = 0;
  }

  else
  {
    ___ZN16PSVR2SenseDevice20closeTrackingControlEP9IOServicej_block_invoke_cold_1();
    return 3758097109;
  }

  return result;
}

uint64_t PSVR2SenseDevice::openHapticsControl(IORegistryEntry *this, IOService *a2, unsigned int a3, IOGCCircularControlQueue *a4)
{
  v7 = _gc_log_psvr2();
  RegistryEntryID = IORegistryEntry::getRegistryEntryID(this);
  v9 = IORegistryEntry::getRegistryEntryID(a2);
  _os_log_internal(&dword_0, v7, OS_LOG_TYPE_INFO, "[%#010llx] PSVR2SenseDevice::openHapticsControl(<IOService %#010llx>)", RegistryEntryID, v9);
  v10 = this[5].__vftable;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 0x40000000;
  v12[2] = ___ZN16PSVR2SenseDevice18openHapticsControlEP9IOServicejP24IOGCCircularControlQueue_block_invoke;
  v12[3] = &__block_descriptor_tmp_243;
  v12[4] = this;
  v12[5] = a2;
  v12[6] = a4;
  return IOGCCommandQueue::syncBlock(v10, v12);
}

uint64_t ___ZN16PSVR2SenseDevice18openHapticsControlEP9IOServicejP24IOGCCircularControlQueue_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (IOService::isInactive(v2))
  {
    ___ZN16PSVR2SenseDevice18openHapticsControlEP9IOServicejP24IOGCCircularControlQueue_block_invoke_cold_3();
    return 3758097111;
  }

  else if (*(v2 + 376))
  {
    ___ZN16PSVR2SenseDevice18openHapticsControlEP9IOServicejP24IOGCCircularControlQueue_block_invoke_cold_1();
    return 3758097109;
  }

  else
  {
    v4 = *(a1 + 48);
    if (v4)
    {
      goto LABEL_6;
    }

    if ((*(v3 + 184))(0) == 16)
    {
      v7 = 3758097090;
      ___ZN16PSVR2SenseDevice18openHapticsControlEP9IOServicejP24IOGCCircularControlQueue_block_invoke_cold_2();
      return v7;
    }

    v4 = *(a1 + 48);
    if (v4)
    {
LABEL_6:
      (*(*v4 + 32))(v4);
    }

    v5 = *(v2 + 392);
    if (v5)
    {
      (*(*v5 + 40))(v5);
    }

    *(v2 + 392) = v4;
    RegistryEntryID = IORegistryEntry::getRegistryEntryID(*(a1 + 40));
    v7 = 0;
    *(v2 + 376) = *(a1 + 40);
    *(v2 + 384) = RegistryEntryID;
  }

  return v7;
}

uint64_t PSVR2SenseDevice::closeHapticsControl(IORegistryEntry *this, IOService *a2)
{
  v4 = _gc_log_psvr2();
  RegistryEntryID = IORegistryEntry::getRegistryEntryID(this);
  v6 = IORegistryEntry::getRegistryEntryID(a2);
  _os_log_internal(&dword_0, v4, OS_LOG_TYPE_INFO, "[%#010llx] PSVR2SenseDevice::closeHapticsControl(<IOService %#010llx>)", RegistryEntryID, v6);
  v7 = this[5].__vftable;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 0x40000000;
  v9[2] = ___ZN16PSVR2SenseDevice19closeHapticsControlEP9IOServicej_block_invoke;
  v9[3] = &__block_descriptor_tmp_245;
  v9[4] = this;
  v9[5] = a2;
  return IOGCCommandQueue::syncBlock(v7, v9);
}

uint64_t ___ZN16PSVR2SenseDevice19closeHapticsControlEP9IOServicej_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1[47] == *(a1 + 40))
  {
    v1[47] = 0;
    v1[48] = 0;
    v2 = v1[49];
    if (v2)
    {
      (*(*v2 + 40))(v2);
    }

    result = 0;
    v1[49] = 0;
  }

  else
  {
    ___ZN16PSVR2SenseDevice19closeHapticsControlEP9IOServicej_block_invoke_cold_1();
    return 3758097109;
  }

  return result;
}

uint64_t PSVR2SenseDevice::newUserClient(IOService *this, task *a2, void *a3, UInt32 a4, OSDictionary *a5, IOUserClient **a6)
{
  if (IOService::isInactive(this))
  {
    *a6 = 0;
    return 3758097111;
  }

  if (a4 == 2)
  {
    v13 = PSVR2SenseDeviceHIDEventServerUserClient::operator new(&stru_B8.offset);
    PSVR2SenseDeviceHIDEventServerUserClient::PSVR2SenseDeviceHIDEventServerUserClient(v13);
    if (v16)
    {
      v15 = (*(*v13 + 1360))(v13, a2, a3, 2, a5);
LABEL_9:
      v17 = *v13;
      if ((v15 & 1) == 0)
      {
        (*(v17 + 40))(v13);
        return 3758097090;
      }

      v18 = (*(v17 + 864))(v13, this);
      v19 = *v13;
      if (v18)
      {
        if ((*(v19 + 688))(v13, this))
        {
          v12 = 0;
          *a6 = v13;
          return v12;
        }

        v12 = 3758097095;
        (*(*v13 + 872))(v13, this);
        v19 = *v13;
      }

      else
      {
        v12 = 3758097095;
      }

      (*(v19 + 40))(v13);
      return v12;
    }

    PSVR2SenseDevice::newUserClient();
    return 3758097086;
  }

  if (a4 == 1)
  {
    v13 = PSVR2SenseDeviceFastPathUserClient::operator new(&stru_B8.reloff);
    PSVR2SenseDeviceFastPathUserClient::PSVR2SenseDeviceFastPathUserClient(v13);
    if (v14)
    {
      v15 = (*(*v13 + 1360))(v13, a2, a3, 1, a5);
      goto LABEL_9;
    }

    PSVR2SenseDevice::newUserClient();
    return 3758097086;
  }

  return IOService::newUserClient(this, a2, a3, a4, a5, a6);
}

uint64_t PSVR2SenseDevice::computeCRC(PSVR2SenseDevice *this, char a2, unsigned int a3, char *a4, uint64_t a5)
{
  if (a3 > 2)
  {
    return 0;
  }

  for (i = PSVR2SenseDevice::computeCRC(unsigned char,unsigned int,void const*,unsigned long)const::crc32_tab[~(a3 + 16 * a2 + 1)] ^ 0xFFFFFF; a5; --a5)
  {
    v6 = *a4++;
    i = PSVR2SenseDevice::computeCRC(unsigned char,unsigned int,void const*,unsigned long)const::crc32_tab[(v6 ^ i)] ^ (i >> 8);
  }

  return ~i;
}

uint64_t PSVR2SenseDevice::handleStart(IOHIDInterface *)::$_0::__invoke(uint64_t a1, OSMetaClassBase *anObject)
{
  if (!anObject)
  {
    PSVR2SenseDevice::handleStart(IOHIDInterface *)::$_0::__invoke();
    return 0;
  }

  v3 = OSMetaClassBase::safeMetaCast(anObject, IOHIDElement::metaClass);
  if (!v3)
  {
    PSVR2SenseDevice::handleStart(IOHIDInterface *)::$_0::__invoke();
    return 0;
  }

  v4 = (v3->__vftable[3].release)(v3);
  if (v4 == 2)
  {
    v5 = 1;
LABEL_11:
    *(a1 + 248) = v5;
    return 0;
  }

  if (v4 == 49 && *(a1 + 248) == 0)
  {
    v5 = 2;
    goto LABEL_11;
  }

  return 0;
}

uint64_t ___ZL17fetchFirmwareInfoP28FirmwareInfoDataFetchContext_block_invoke(uint64_t a1, uint64_t a2, _OWORD *a3, IORegistryEntry *a4, int a5)
{
  v5 = (a1 + 32);
  ++*(*(a1 + 32) + 84);
  if (a2 || !a3)
  {
    result = ___ZL17fetchFirmwareInfoP28FirmwareInfoDataFetchContext_block_invoke_cold_1(a2, v5, &v24);
    if ((result & 1) == 0)
    {
      return result;
    }

    v17 = v24;
  }

  else
  {
    v9 = _gc_log_psvr2();
    RegistryEntryID = IORegistryEntry::getRegistryEntryID(**v5);
    if ((a4 & 1) == 0 || HIDWORD(a4) == a5)
    {
      _os_log_internal(&dword_0, v9, OS_LOG_TYPE_DEBUG, "[%#010llx] Fetched accessory firmware info.", RegistryEntryID);
      v11 = *v5 + 1;
      v13 = a3[1];
      v12 = a3[2];
      v14 = *(a3 + 43);
      *v11 = *a3;
      *(v11 + 43) = v14;
      v11[1] = v13;
      v11[2] = v12;
      reserved = (*v5)[19]->reserved;
LABEL_6:

      return reserved();
    }

    _os_log_internal(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "[%#010llx] Fetch accessory firmware info  (g: %llu a:%u) failed: invalid checksum", RegistryEntryID, (*v5)[9], *(*v5 + 21));
    v18 = OSData::withBytes(a3, 0x3Bu);
    v24 = v18;
    OSSharedPtr<OSData>::operator=(*v5 + 15, &v24);
    v19 = *v5;
    v19[13] = a4;
    *(v19 + 28) = a5;
    v17 = *v5;
    v20 = *(*v5 + 21);
    *(v17 + 24) = *(*v5 + 24) + 1;
    *(v17 + 25) = v20;
    if (v18)
    {
      ((*v18)[1].__vftable)(v18);
      v17 = *v5;
    }
  }

  if (((v17[18]->reserved)() & 1) == 0)
  {
    v22 = _gc_log_psvr2();
    v23 = IORegistryEntry::getRegistryEntryID(**v5);
    _os_log_internal(&dword_0, v22, OS_LOG_TYPE_DEBUG, "[%#010llx] Fetch accessory firmware info cancelled.", v23);
    reserved = (*v5)[19]->reserved;
    goto LABEL_6;
  }

  v21 = *v5;

  return fetchFirmwareInfo(v21);
}

uint64_t *OSSharedPtr<OSData>::operator=(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *a1;
  *a1 = *a2;
  if (v3)
  {
    (*(*v3 + 32))(v3);
  }

  if (v4)
  {
    (*(*v4 + 40))(v4);
  }

  return a1;
}

uint64_t ___ZL33fetchNextMotionCorrectionDataPageP32MotionCorrectionDataFetchContext_block_invoke(uint64_t a1, int a2, unsigned __int8 *a3, IORegistryEntry *a4, int a5)
{
  v5 = (a1 + 32);
  v6 = *(a1 + 32);
  ++*(v6 + 36);
  if (!a2 && a3)
  {
    if ((a4 & 1) != 0 && HIDWORD(a4) != a5)
    {
      v34 = _gc_log_psvr2();
      RegistryEntryID = IORegistryEntry::getRegistryEntryID(**v5);
      v36 = (*v5)[1];
      v37 = *(*v5 + 9);
      v38 = ((*v5)[2]->copyParentEntry)();
      _os_log_internal(&dword_0, v34, OS_LOG_TYPE_DEFAULT, "[%#010llx] Fetch motion correction data (g: %llu a:%u p:%u) failed: invalid checksum.", RegistryEntryID, v36, v37, v38);
      v39 = OSData::withBytes(a3, 0x3Bu);
      anObject = v39;
      OSSharedPtr<OSData>::operator=(*v5 + 9, &anObject);
      v40 = *v5;
      v40[7] = a4;
      *(v40 + 16) = a5;
      v41 = *v5;
      v42 = *(*v5 + 9);
      *(v41 + 12) = *(*v5 + 12) + 1;
      *(v41 + 13) = v42;
      if (v39)
      {
        (v39->release_0)(v39);
      }
    }

    else
    {
      v10 = *a3;
      v11 = (*(**(v6 + 16) + 280))(*(v6 + 16), v10 & 0x7F);
      v12 = OSData::metaClass;
      v13 = OSMetaClassBase::safeMetaCast(v11, OSData::metaClass);
      v14 = _gc_log_psvr2();
      v15 = IORegistryEntry::getRegistryEntryID(**v5);
      _os_log_internal(&dword_0, v14, OS_LOG_TYPE_DEBUG, "[%#010llx] Fetched Motion Correction Data page %u (isLast: %d) (isDuplicate: %d)", v15, v10 & 0x7F, v10 >> 7, v13 != 0);
      if (!v13)
      {
        do
        {
          if (v13 >= ((*v5)[2]->copyParentEntry)((*v5)[2]))
          {
            ___ZL33fetchNextMotionCorrectionDataPageP32MotionCorrectionDataFetchContext_block_invoke_cold_1(v5, v13);
          }

          LODWORD(v13) = v13 + 1;
        }

        while ((v10 & 0x7F) + 1 != v13);
        v16 = OSData::withBytes(a3, 0x3Bu);
        v17 = v16;
        v18 = (*v5)[2];
        anObject = v16;
        if (v16)
        {
          (v16->retain)(v16);
        }

        OSArray::replaceObject(v18, v10 & 0x7F, &anObject);
        if (anObject)
        {
          (anObject->release_0)(anObject);
        }

        if (v17)
        {
          (v17->release_0)(v17);
        }
      }

      if (v10 < 0)
      {
        if (!((*v5)[2]->copyParentEntry)((*v5)[2]))
        {
LABEL_22:
          v22 = _gc_log_psvr2();
          v23 = IORegistryEntry::getRegistryEntryID(**v5);
          v24 = ((*v5)[2]->copyParentEntry)();
          _os_log_internal(&dword_0, v22, OS_LOG_TYPE_DEBUG, "[%#010llx] Fetched all %u motion correction data pages.", v23, v24);
          reserved = (*v5)[13]->reserved;
          return reserved();
        }

        v20 = 0;
        while (1)
        {
          v21 = ((*v5)[2]->getProperty_1)((*v5)[2], v20);
          if (!OSMetaClassBase::safeMetaCast(v21, v12))
          {
            break;
          }

          v20 = (v20 + 1);
          if (v20 >= ((*v5)[2]->copyParentEntry)((*v5)[2]))
          {
            goto LABEL_22;
          }
        }

        v31 = _gc_log_psvr2();
        v32 = IORegistryEntry::getRegistryEntryID(**v5);
        v33 = ((*v5)[2]->copyParentEntry)();
        _os_log_internal(&dword_0, v31, OS_LOG_TYPE_DEBUG, "[%#010llx] Missing motion correction data page %u of %u.  Continuing to fetch...", v32, v20, v33);
      }
    }

LABEL_16:
    if (((*v5)[12]->reserved)())
    {
      return fetchNextMotionCorrectionDataPage(*v5);
    }

    v26 = _gc_log_psvr2();
    v27 = IORegistryEntry::getRegistryEntryID(**v5);
    v28 = (*v5)[1];
    v29 = *(*v5 + 9);
    v30 = ((*v5)[2]->copyParentEntry)();
    _os_log_internal(&dword_0, v26, OS_LOG_TYPE_DEBUG, "[%#010llx] Fetch motion correction data (g: %llu a:%u p:%u) cancelled.", v27, v28, v29, v30);
    reserved = (*v5)[13]->reserved;
    return reserved();
  }

  result = ___ZL33fetchNextMotionCorrectionDataPageP32MotionCorrectionDataFetchContext_block_invoke_cold_2();
  if (result)
  {
    goto LABEL_16;
  }

  return result;
}

OSMetaClass *_GLOBAL__sub_I_PSVR2SenseDevice_cpp()
{
  result = OSMetaClass::OSMetaClass(&PSVR2SenseDevice::gMetaClass, "PSVR2SenseDevice", &IOHIDGCDevice::gMetaClass, 0x198u);
  result->__vftable = off_41280;
  return result;
}

uint64_t OUTLINED_FUNCTION_0_0(uint64_t a1, void ***a2)
{
  result = *(a1 + 200);
  *a2 = _NSConcreteStackBlock;
  return result;
}

void OUTLINED_FUNCTION_3(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_internal(v4, v5, OS_LOG_TYPE_DEBUG, a4);
}

uint64_t OUTLINED_FUNCTION_5()
{
  result = *(v1 + 200);
  *v0 = _NSConcreteStackBlock;
  return result;
}

void OUTLINED_FUNCTION_7(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_internal(v5, v4, OS_LOG_TYPE_DEBUG, a4);
}

void OUTLINED_FUNCTION_8(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_internal(a1, v4, OS_LOG_TYPE_DEBUG, a4);
}

uint64_t OUTLINED_FUNCTION_10()
{

  return IORegistryEntry::getRegistryEntryID(v0);
}

uint64_t OUTLINED_FUNCTION_11()
{

  return IORegistryEntry::getRegistryEntryID(v0);
}

void OUTLINED_FUNCTION_14(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_internal(v4, v5, OS_LOG_TYPE_ERROR, a4);
}

uint64_t OUTLINED_FUNCTION_15()
{

  return IORegistryEntry::getRegistryEntryID(v0);
}

uint64_t OUTLINED_FUNCTION_20()
{

  return IORegistryEntry::getRegistryEntryID(v0);
}

void OUTLINED_FUNCTION_21(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_internal(a1, v4, OS_LOG_TYPE_DEBUG, a4);
}

uint64_t OUTLINED_FUNCTION_22()
{

  return IORegistryEntry::getRegistryEntryID(v0);
}

os_log_t OUTLINED_FUNCTION_23()
{

  return _gc_log_psvr2();
}

void OUTLINED_FUNCTION_24(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_internal(a1, v4, OS_LOG_TYPE_DEFAULT, a4);
}

uint64_t OUTLINED_FUNCTION_25()
{

  return IORegistryEntry::getRegistryEntryID(v0);
}

void OUTLINED_FUNCTION_26(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_internal(a1, v4, OS_LOG_TYPE_DEFAULT, a4);
}

os_log_t OUTLINED_FUNCTION_30()
{

  return _gc_log_psvr2();
}

void OUTLINED_FUNCTION_31(uint64_t a1, os_log_s *a2, uint64_t a3, const char *a4)
{

  _os_log_internal(v4, a2, OS_LOG_TYPE_DEBUG, a4);
}

void OUTLINED_FUNCTION_32(uint64_t a1, os_log_s *a2, uint64_t a3, const char *a4)
{

  _os_log_internal(v4, a2, OS_LOG_TYPE_DEBUG, a4);
}

OSMetaClass *PSVR2SenseDeviceHIDEventServerUserClient::MetaClass::MetaClass(OSMetaClass *this)
{
  result = OSMetaClass::OSMetaClass(this, "PSVR2SenseDeviceHIDEventServerUserClient", &IOUserClient2022::gMetaClass, 0xE8u);
  result->__vftable = off_42170;
  return result;
}

void PSVR2SenseDeviceHIDEventServerUserClient::MetaClass::~MetaClass(OSMetaClass *this)
{
  OSMetaClass::~OSMetaClass(this);
}

{
  OSMetaClass::~OSMetaClass(this);
}

void PSVR2SenseDeviceHIDEventServerUserClient::PSVR2SenseDeviceHIDEventServerUserClient(PSVR2SenseDeviceHIDEventServerUserClient *this, const OSMetaClass *a2)
{
  IOUserClient2022::IOUserClient2022(this, a2);
  *v2 = off_41B80;
  v2[28] = 0;
}

void PSVR2SenseDeviceHIDEventServerUserClient::~PSVR2SenseDeviceHIDEventServerUserClient(PSVR2SenseDeviceHIDEventServerUserClient *this)
{
  *this = off_41B80;
  v2 = *(this + 28);
  if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  *(this + 28) = 0;

  IOUserClient2022::~IOUserClient2022(this);
}

{
  *this = off_41B80;
  v2 = *(this + 28);
  if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  *(this + 28) = 0;

  IOUserClient2022::~IOUserClient2022(this);
}

{
  PSVR2SenseDeviceHIDEventServerUserClient::~PSVR2SenseDeviceHIDEventServerUserClient(this);

  _OSObject_typed_operator_delete(&PSVR2SenseDeviceHIDEventServerUserClient_ktv, this, 232);
}

IOUserClient2022 *PSVR2SenseDeviceHIDEventServerUserClient::MetaClass::alloc(PSVR2SenseDeviceHIDEventServerUserClient::MetaClass *this)
{
  v1 = OSObject_typed_operator_new();
  IOUserClient2022::IOUserClient2022(v1, &PSVR2SenseDeviceHIDEventServerUserClient::gMetaClass);
  *v2 = off_41B80;
  v2[28] = 0;
  OSMetaClass::instanceConstructed(&PSVR2SenseDeviceHIDEventServerUserClient::gMetaClass);
  return v1;
}

void PSVR2SenseDeviceHIDEventServerUserClient::PSVR2SenseDeviceHIDEventServerUserClient(PSVR2SenseDeviceHIDEventServerUserClient *this)
{
  IOUserClient2022::IOUserClient2022(this, &PSVR2SenseDeviceHIDEventServerUserClient::gMetaClass);
  *v1 = off_41B80;
  v1[28] = 0;
  OSMetaClass::instanceConstructed(&PSVR2SenseDeviceHIDEventServerUserClient::gMetaClass);
}

uint64_t PSVR2SenseDeviceHIDEventServerUserClient::_userGetProperties(IORegistryEntry *this, PSVR2SenseDeviceHIDEventServerUserClient *a2, IOExternalMethodArguments *a3, IOExternalMethodArguments *a4)
{
  v6 = _gc_log_psvr2();
  RegistryEntryID = IORegistryEntry::getRegistryEntryID(this);
  _os_log_internal(&dword_0, v6, OS_LOG_TYPE_DEBUG, "[%#010llx] ::_userGetProperties()", RegistryEntryID);
  v8 = (this->__vftable[1].getProperty_1)(this);
  if (v8)
  {
    v9 = v8;
    v10 = PSVR2SenseDeviceHIDEventServerUserClient::unserializeInputArguments(this, a3);
    if (v10)
    {
      v11 = v10;
      v12 = (v10->__vftable[1].release_0)(v10);
      v13 = OSDictionary::withCapacity(v12);
      if (v13)
      {
        v14 = v13;
        if ((v11->getObject_1)(v11, "Transport"))
        {
          anObject = (*(*v9 + 328))(v9, "Transport");
          OSDictionary::setObject(v14, "Transport", &anObject);
          if (anObject)
          {
            (anObject->release_0)(anObject);
          }
        }

        if ((v11->getObject_1)(v11, "Manufacturer"))
        {
          anObject = (*(*v9 + 328))(v9, "Manufacturer");
          OSDictionary::setObject(v14, "Manufacturer", &anObject);
          if (anObject)
          {
            (anObject->release_0)(anObject);
          }
        }

        if ((v11->getObject_1)(v11, "Product"))
        {
          anObject = (*(*v9 + 328))(v9, "Product");
          OSDictionary::setObject(v14, "Product", &anObject);
          if (anObject)
          {
            (anObject->release_0)(anObject);
          }
        }

        if ((v11->getObject_1)(v11, "VendorID"))
        {
          anObject = (*(*v9 + 328))(v9, "VendorID");
          OSDictionary::setObject(v14, "VendorID", &anObject);
          if (anObject)
          {
            (anObject->release_0)(anObject);
          }
        }

        if ((v11->getObject_1)(v11, "ProductID"))
        {
          anObject = (*(*v9 + 328))(v9, "ProductID");
          OSDictionary::setObject(v14, "ProductID", &anObject);
          if (anObject)
          {
            (anObject->release_0)(anObject);
          }
        }

        if ((v11->getObject_1)(v11, "VersionNumber"))
        {
          anObject = (*(*v9 + 328))(v9, "VersionNumber");
          OSDictionary::setObject(v14, "VersionNumber", &anObject);
          if (anObject)
          {
            (anObject->release_0)(anObject);
          }
        }

        if ((v11->getObject_1)(v11, "SerialNumber"))
        {
          anObject = (*(*v9 + 328))(v9, "SerialNumber");
          OSDictionary::setObject(v14, "SerialNumber", &anObject);
          if (anObject)
          {
            (anObject->release_0)(anObject);
          }
        }

        if ((v11->getObject_1)(v11, "PhysicalDeviceUniqueID"))
        {
          anObject = (*(*v9 + 328))(v9, "PhysicalDeviceUniqueID");
          OSDictionary::setObject(v14, "PhysicalDeviceUniqueID", &anObject);
          if (anObject)
          {
            (anObject->release_0)(anObject);
          }
        }

        if ((v11->getObject_1)(v11, "CountryCode"))
        {
          anObject = (*(*v9 + 328))(v9, "CountryCode");
          OSDictionary::setObject(v14, "CountryCode", &anObject);
          if (anObject)
          {
            (anObject->release_0)(anObject);
          }
        }

        if ((v11->getObject_1)(v11, "DeviceUsagePairs"))
        {
          anObject = (*(*v9 + 328))(v9, "DeviceUsagePairs");
          OSDictionary::setObject(v14, "DeviceUsagePairs", &anObject);
          if (anObject)
          {
            (anObject->release_0)(anObject);
          }
        }

        if ((v11->getObject_1)(v11, "DeviceUsage"))
        {
          anObject = (*(*v9 + 328))(v9, "DeviceUsage");
          OSDictionary::setObject(v14, "DeviceUsage", &anObject);
          if (anObject)
          {
            (anObject->release_0)(anObject);
          }
        }

        if ((v11->getObject_1)(v11, "DeviceUsagePage"))
        {
          anObject = (*(*v9 + 328))(v9, "DeviceUsagePage");
          OSDictionary::setObject(v14, "DeviceUsagePage", &anObject);
          if (anObject)
          {
            (anObject->release_0)(anObject);
          }
        }

        if ((v11->getObject_1)(v11, "PrimaryUsage"))
        {
          anObject = (*(*v9 + 328))(v9, "PrimaryUsage");
          OSDictionary::setObject(v14, "PrimaryUsage", &anObject);
          if (anObject)
          {
            (anObject->release_0)(anObject);
          }
        }

        if ((v11->getObject_1)(v11, "PrimaryUsagePage"))
        {
          anObject = (*(*v9 + 328))(v9, "PrimaryUsagePage");
          OSDictionary::setObject(v14, "PrimaryUsagePage", &anObject);
          if (anObject)
          {
            (anObject->release_0)(anObject);
          }
        }

        if ((v11->getObject_1)(v11, "Built-In"))
        {
          anObject = (*(*v9 + 328))(v9, "Built-In");
          OSDictionary::setObject(v14, "Built-In", &anObject);
          if (anObject)
          {
            (anObject->release_0)(anObject);
          }
        }

        if ((v11->getObject_1)(v11, "PSVR2DeviceType"))
        {
          anObject = (*(*v9 + 328))(v9, "PSVR2DeviceType");
          OSDictionary::setObject(v14, "PSVR2DeviceType", &anObject);
          if (anObject)
          {
            (anObject->release_0)(anObject);
          }
        }

        if ((v11->getObject_1)(v11, "PSVR2Connection"))
        {
          anObject = (*(*v9 + 328))(v9, "PSVR2Connection");
          OSDictionary::setObject(v14, "PSVR2Connection", &anObject);
          if (anObject)
          {
            (anObject->release_0)(anObject);
          }
        }

        if ((v11->getObject_1)(v11, "_PSVR2FirmwareInfo"))
        {
          anObject = (*(*v9 + 328))(v9, "_PSVR2FirmwareInfo");
          OSDictionary::setObject(v14, "_PSVR2FirmwareInfo", &anObject);
          if (anObject)
          {
            (anObject->release_0)(anObject);
          }
        }

        if ((v11->getObject_1)(v11, "_PSVR2MotionCalibrationInfo"))
        {
          anObject = (*(*v9 + 328))(v9, "_PSVR2MotionCalibrationInfo");
          OSDictionary::setObject(v14, "_PSVR2MotionCalibrationInfo", &anObject);
          if (anObject)
          {
            (anObject->release_0)(anObject);
          }
        }

        PSVR2SenseDeviceHIDEventServerUserClient::fetchTransportProperties(this, v11, v14);
        PSVR2SenseDeviceHIDEventServerUserClient::fetchAccessoryProperties(this, v11, v14);
        PSVR2SenseDeviceHIDEventServerUserClient::fetchDriverProperties(this, v11, v14);
        PSVR2SenseDeviceHIDEventServerUserClient::fetchTimeSyncProperties(this, v11, v14);
        PSVR2SenseDeviceHIDEventServerUserClient::fetchInputProperties(this, v11, v14);
        if ((v11->getObject_1)(v11, "LED"))
        {
          anObject = PSVR2SenseDeviceHIDEventServerUserClient::getStatusOverrideProperty(this);
          OSDictionary::setObject(v14, "LED", &anObject);
          if (anObject)
          {
            (anObject->release_0)(anObject);
          }
        }

        if ((v11->getObject_1)(v11, "LED~Override"))
        {
          anObject = PSVR2SenseDeviceHIDEventServerUserClient::getStatusOverrideProperty(this);
          OSDictionary::setObject(v14, "LED~Override", &anObject);
          if (anObject)
          {
            (anObject->release_0)(anObject);
          }
        }

        PSVR2SenseDeviceHIDEventServerUserClient::fetchPowerProperties(this, v11, v14);
        PSVR2SenseDeviceHIDEventServerUserClient::fetchTrackingProperties(this, v11, v14);
        PSVR2SenseDeviceHIDEventServerUserClient::fetchHapticsProperties(this, v11, v15);
        v16 = OSSerialize::binaryWithCapacity(0x1000u, 0, 0);
        if (v16)
        {
          v17 = v16;
          if ((v14->serialize)(v14, v16))
          {
            v18 = 0;
            *a3->structureVariableOutputData = v17;
          }

          else
          {
            PSVR2SenseDeviceHIDEventServerUserClient::_userGetProperties(v17);
            v18 = 3758097097;
          }
        }

        else
        {
          v18 = 3758097085;
          v20 = _gc_log_debug();
          _os_log_internal(&dword_0, v20, OS_LOG_TYPE_DEBUG, "AssertMacros: %s, %s file: %s, line: %d, value: %ld\n", "responseSerializer", "", "/Library/Caches/com.apple.xbs/Sources/CoreController_kext/GameControllerDrivers/Sony/PSVR2/Kernel/PSVR2SenseDeviceHIDEventServerUserClient.cpp", 282, 0);
        }

        (v14->release_0)(v14);
      }

      else
      {
        v18 = 3758097085;
        PSVR2SenseDeviceHIDEventServerUserClient::_userGetProperties();
      }

      (v11->release_0)(v11);
    }

    else
    {
      PSVR2SenseDeviceHIDEventServerUserClient::_userGetProperties();
      return 3758097097;
    }
  }

  else
  {
    PSVR2SenseDeviceHIDEventServerUserClient::_userGetProperties();
    return 3758097112;
  }

  return v18;
}

uint64_t PSVR2SenseDeviceHIDEventServerUserClient::_userSetProperties(IORegistryEntry *this, PSVR2SenseDeviceHIDEventServerUserClient *a2, IOExternalMethodArguments *a3, IOExternalMethodArguments *a4)
{
  v6 = _gc_log_psvr2();
  RegistryEntryID = IORegistryEntry::getRegistryEntryID(this);
  _os_log_internal(&dword_0, v6, OS_LOG_TYPE_DEBUG, "[%#010llx] ::_userSetProperties()", RegistryEntryID);
  if (!(this->__vftable[1].getProperty_1)(this))
  {
    PSVR2SenseDeviceHIDEventServerUserClient::_userSetProperties();
    v9 = 0;
    v11 = 0;
    v15 = 0;
    v16 = 3758097112;
    goto LABEL_11;
  }

  v8 = PSVR2SenseDeviceHIDEventServerUserClient::unserializeInputArguments(this, a3);
  v9 = v8;
  if (v8)
  {
    v10 = (v8->__vftable[1].release_0)(v8);
    v11 = OSDictionary::withCapacity(v10);
    if (!v11)
    {
      v16 = 3758097085;
      PSVR2SenseDeviceHIDEventServerUserClient::_userSetProperties();
      goto LABEL_10;
    }

    PSVR2SenseDeviceHIDEventServerUserClient::applyTransportProperties(this, v9, v11);
    PSVR2SenseDeviceHIDEventServerUserClient::applyAccessoryProperties(this, v9, v11);
    PSVR2SenseDeviceHIDEventServerUserClient::applyDriverProperties(this, v9, v11);
    PSVR2SenseDeviceHIDEventServerUserClient::applyTimeSyncProperties(this, v9, v11);
    PSVR2SenseDeviceHIDEventServerUserClient::applyInputProperties(this, v9, v11);
    v12 = (v9->getObject_1)(v9, "LED");
    v13 = OSMetaClassBase::safeMetaCast(v12, OSDictionary::metaClass);
    if (v13)
    {
      v14 = PSVR2SenseDeviceHIDEventServerUserClient::setStatusOverrideProperty(this, v13);
      anObject = OSNumber::withNumber(v14, 0x20u);
      OSDictionary::setObject(v11, "LED", &anObject);
      if (anObject)
      {
        (anObject->release_0)(anObject);
      }
    }

    PSVR2SenseDeviceHIDEventServerUserClient::applyPowerProperties(this, v9, v11);
    PSVR2SenseDeviceHIDEventServerUserClient::applyTrackingProperties(this, v9, v11);
    PSVR2SenseDeviceHIDEventServerUserClient::applyHapticsProperties(this, v9, v11);
    v15 = OSSerialize::binaryWithCapacity(0x1000u, 0, 0);
    if (!v15)
    {
      v16 = 3758097085;
      PSVR2SenseDeviceHIDEventServerUserClient::_userSetProperties();
      goto LABEL_11;
    }

    if ((v11->serialize)(v11, v15))
    {
      v16 = 0;
      *a3->structureVariableOutputData = v15;
LABEL_10:
      v15 = 0;
      goto LABEL_11;
    }

    PSVR2SenseDeviceHIDEventServerUserClient::_userSetProperties();
  }

  else
  {
    PSVR2SenseDeviceHIDEventServerUserClient::_userSetProperties();
    v11 = 0;
    v15 = 0;
  }

  v16 = 3758097097;
LABEL_11:
  v17 = _gc_log_psvr2();
  v18 = IORegistryEntry::getRegistryEntryID(this);
  _os_log_internal(&dword_0, v17, OS_LOG_TYPE_DEBUG, "[%#010llx] ::_userSetProperties() -> 0x%x", v18, v16);
  if (v15)
  {
    (v15->release_0)(v15);
  }

  if (v11)
  {
    (v11->release_0)(v11);
  }

  if (v9)
  {
    (v9->release_0)(v9);
  }

  return v16;
}

uint64_t PSVR2SenseDeviceHIDEventServerUserClient::initWithTask(PSVR2SenseDeviceHIDEventServerUserClient *this, task *a2, void *a3)
{
  if (v5)
  {
    *(this + 27) = a2;
  }

  else
  {
    PSVR2SenseDeviceHIDEventServerUserClient::initWithTask();
  }

  return v5;
}

uint64_t PSVR2SenseDeviceHIDEventServerUserClient::start(IORegistryEntry *this, IOService *a2)
{
  reserved = this[5].reserved;
  bsdtask_info = get_bsdtask_info();
  if (bsdtask_info)
  {
    v6 = proc_pid(bsdtask_info);
  }

  else
  {
    v6 = -1;
  }

  v30 = 0u;
  memset(v31, 0, sizeof(v31));
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  *buf = 0u;
  proc_name(v6, buf, 255);
  v7 = _gc_log_psvr2();
  RegistryEntryID = IORegistryEntry::getRegistryEntryID(this);
  if (a2)
  {
    v9 = IORegistryEntry::getRegistryEntryID(a2);
  }

  else
  {
    v9 = 0;
  }

  _os_log_internal(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "[%#010llx] PSVR2SenseDeviceHIDEventServerUserClient::start(<PSVR2SenseDevice %#010llx>) for pid %i, %s", RegistryEntryID, v9, v6, buf);
  {
    PSVR2SenseDeviceHIDEventServerUserClient::start();
LABEL_21:
    (this->__vftable[1].Dispatch)(this, a2);
    return 0;
  }

  if (!OSMetaClassBase::safeMetaCast(a2, &PSVR2SenseDevice::gMetaClass))
  {
    PSVR2SenseDeviceHIDEventServerUserClient::start();
    goto LABEL_21;
  }

  v10 = (a2->getWorkLoop)(a2);
  if (!v10)
  {
    PSVR2SenseDeviceHIDEventServerUserClient::start();
    goto LABEL_21;
  }

  v11 = v10;
  v12 = IOCommandGate::commandGate(this, 0);
  fRegistryTable = this[5].fRegistryTable;
  if (fRegistryTable)
  {
    (fRegistryTable->release_0)(fRegistryTable);
  }

  this[5].fRegistryTable = v12;
  if (!v12)
  {
    PSVR2SenseDeviceHIDEventServerUserClient::start();
    goto LABEL_21;
  }

  v14 = (*(*v11 + 160))(v11, v12);
  if (v14)
  {
    PSVR2SenseDeviceHIDEventServerUserClient::start(v14);
    goto LABEL_21;
  }

  (this->setProperty_2)(this, "IOUserClientEntitlements", "com.apple.iohideventsystem.server");
  (this->setProperty_1)(this, "IOUserClientDefaultLocking", *kOSBooleanTrue);
  v15 = kOSBooleanFalse;
  (this->setProperty_1)(this, "IOUserClientDefaultLockingSetProperties", *kOSBooleanFalse);
  (this->setProperty_1)(this, "IOUserClientDefaultLockingSingleThreadExternalMethod", *v15);
  return 1;
}

uint64_t PSVR2SenseDeviceHIDEventServerUserClient::stop(IORegistryEntry *this, IOService *a2)
{
  v4 = _gc_log_psvr2();
  RegistryEntryID = IORegistryEntry::getRegistryEntryID(this);
  _os_log_internal(&dword_0, v4, OS_LOG_TYPE_DEBUG, "[%#010llx] ::stop()", RegistryEntryID);
  fRegistryTable = this[5].fRegistryTable;
  if (fRegistryTable)
  {
    v7 = (fRegistryTable->copyCollection)(fRegistryTable);
    (*(*v7 + 168))(v7, this[5].fRegistryTable);
    v8 = this[5].fRegistryTable;
    if (v8)
    {
      (v8->release_0)(v8);
    }

    this[5].fRegistryTable = 0;
  }

  return (v9)(this, a2);
}

uint64_t PSVR2SenseDeviceHIDEventServerUserClient::clientClose(IORegistryEntry *this)
{
  v2 = _gc_log_psvr2();
  RegistryEntryID = IORegistryEntry::getRegistryEntryID(this);
  _os_log_internal(&dword_0, v2, OS_LOG_TYPE_DEBUG, "[%#010llx] ::clientClose()", RegistryEntryID);
  (this->__vftable[1].copyChildEntry)(this, 0);
  return 0;
}

uint64_t PSVR2SenseDeviceHIDEventServerUserClient::setProperties(IORegistryEntry *this, OSObject *a2)
{
  v4 = _gc_log_psvr2();
  RegistryEntryID = IORegistryEntry::getRegistryEntryID(this);
  _os_log_internal(&dword_0, v4, OS_LOG_TYPE_DEBUG, "[%#010llx] ::setProperties()", RegistryEntryID);
  v6 = (this->__vftable[1].getProperty_1)(this);
  v7 = OSMetaClassBase::safeMetaCast(v6, &PSVR2SenseDevice::gMetaClass);
  if (v7)
  {
    fRegistryTable = this[5].fRegistryTable;
    action[0] = _NSConcreteStackBlock;
    action[1] = 0x40000000;
    action[2] = ___ZN40PSVR2SenseDeviceHIDEventServerUserClient13setPropertiesEP8OSObject_block_invoke;
    action[3] = &__block_descriptor_tmp_1;
    action[4] = v7;
    action[5] = a2;
    return IOCommandGate::runActionBlock(fRegistryTable, action);
  }

  else
  {
    PSVR2SenseDeviceHIDEventServerUserClient::setProperties();
    return 3758097112;
  }
}

uint64_t PSVR2SenseDeviceHIDEventServerUserClient::clientMemoryForType(IORegistryEntry *this, int a2, unsigned int *a3, IOMemoryDescriptor **a4)
{
  v8 = _gc_log_psvr2();
  RegistryEntryID = IORegistryEntry::getRegistryEntryID(this);
  _os_log_internal(&dword_0, v8, OS_LOG_TYPE_DEBUG, "[%#010llx] ::clientMemoryForType(%#x)", RegistryEntryID, a2);
  if (a2)
  {
    return 3758097090;
  }

  return PSVR2SenseDeviceHIDEventServerUserClient::clientMemoryForSharedPage(this, a3, a4);
}

uint64_t PSVR2SenseDeviceHIDEventServerUserClient::clientMemoryForSharedPage(PSVR2SenseDeviceHIDEventServerUserClient *this, unsigned int *a2, IOMemoryDescriptor **a3)
{
  v5 = (*(*this + 880))(this);
  v6 = OSMetaClassBase::safeMetaCast(v5, &PSVR2SenseDevice::gMetaClass);
  if (v6)
  {
    SharedPageMemoryDescriptor = PSVR2SenseDevice::getSharedPageMemoryDescriptor(v6);
    if (SharedPageMemoryDescriptor)
    {
      v8 = 0;
      *a2 = 4096;
      *a3 = SharedPageMemoryDescriptor;
    }

    else
    {
      v8 = 3758097097;
      PSVR2SenseDeviceHIDEventServerUserClient::clientMemoryForSharedPage();
    }
  }

  else
  {
    PSVR2SenseDeviceHIDEventServerUserClient::clientMemoryForSharedPage();
    return 3758097112;
  }

  return v8;
}

uint64_t PSVR2SenseDeviceHIDEventServerUserClient::externalMethod(const IOService *a1, uint64_t a2, uint64_t a3)
{
  if (IOService::isInactive(a1))
  {
    PSVR2SenseDeviceHIDEventServerUserClient::externalMethod();
    return 3758097111;
  }

  else
  {

    return IOUserClient2022::dispatchExternalMethod(a1, a2, a3, &PSVR2SenseDeviceHIDEventServerUserClient::_methods, 2, a1, 0);
  }
}

OSMetaClassBase *PSVR2SenseDeviceHIDEventServerUserClient::unserializeInputArguments(PSVR2SenseDeviceHIDEventServerUserClient *this, IOExternalMethodArguments *a2)
{
  MemoryDescriptorFromInputArguments = PSVR2SenseDeviceFastPathUserClient::createMemoryDescriptorFromInputArguments(this, a2);
  if (!MemoryDescriptorFromInputArguments)
  {
    PSVR2SenseDeviceHIDEventServerUserClient::unserializeInputArguments();
    return 0;
  }

  v3 = MemoryDescriptorFromInputArguments;
  v4 = (MemoryDescriptorFromInputArguments->getLength)(MemoryDescriptorFromInputArguments);
  if (v4)
  {
    v5 = v4;
    v6 = IOMallocData();
    if (v6)
    {
      v7 = v6;
      v8 = (v3->prepare)(v3, 0);
      if (v8)
      {
        PSVR2SenseDeviceHIDEventServerUserClient::unserializeInputArguments(v8);
      }

      else
      {
        (v3->readBytes)(v3, 0, v7, v5);
        (v3->complete)(v3, 0);
        if (strnlen(v7, v5) >= v5)
        {
          PSVR2SenseDeviceHIDEventServerUserClient::unserializeInputArguments();
        }

        else
        {
          v9 = OSUnserializeXML(v7, v5, 0);
          if (v9)
          {
            v10 = v9;
            v11 = OSMetaClassBase::safeMetaCast(v9, OSDictionary::metaClass);
            v12 = v11;
            if (v11)
            {
              (v11->retain)(v11);
            }

            else
            {
              v13 = _gc_log_debug();
              _os_log_internal(&dword_0, v13, OS_LOG_TYPE_DEBUG, "AssertMacros: %s, %s file: %s, line: %d, value: %ld\n", "dictionary", "", "/Library/Caches/com.apple.xbs/Sources/CoreController_kext/GameControllerDrivers/Sony/PSVR2/Kernel/PSVR2SenseDeviceHIDEventServerUserClient.cpp", 1347, 0);
            }

            IOFreeData();
            (v10->release_0)(v10);
            goto LABEL_11;
          }

          PSVR2SenseDeviceHIDEventServerUserClient::unserializeInputArguments();
        }
      }

      IOFreeData();
    }

    else
    {
      PSVR2SenseDeviceHIDEventServerUserClient::unserializeInputArguments();
    }
  }

  else
  {
    PSVR2SenseDeviceHIDEventServerUserClient::unserializeInputArguments();
  }

  v12 = 0;
LABEL_11:
  (v3->release_0)(v3);
  return v12;
}

uint64_t PSVR2SenseDeviceHIDEventServerUserClient::fetchTransportProperties(PSVR2SenseDeviceHIDEventServerUserClient *this, OSDictionary *a2, OSDictionary *a3)
{
  v5 = (*(*this + 880))(this);
  v6 = OSMetaClassBase::safeMetaCast(v5, &PSVR2SenseDevice::gMetaClass);
  if (v6)
  {
    SharedPage = PSVR2SenseDevice::getSharedPage(v6);
    if (SharedPage)
    {
      v8 = SharedPage;
      if ((a2->getObject_1)(a2, "ReportInterval"))
      {
        v9 = 144;
        if (*(v8 + 148))
        {
          v9 = 152;
        }

        v10 = OSNumber::withNumber(*(v8 + v9), 0x20u);
        v11 = v10;
        anObject = v10;
        if (v10)
        {
          (v10->retain)(v10);
        }

        OSDictionary::setObject(a3, "ReportInterval", &anObject);
        if (anObject)
        {
          (anObject->release_0)(anObject);
        }

        if (v11)
        {
          (v11->release_0)(v11);
        }
      }

      if ((a2->getObject_1)(a2, "ReportInterval~Latest"))
      {
        v12 = OSNumber::withNumber(*(v8 + 144), 0x20u);
        v13 = v12;
        anObject = v12;
        if (v12)
        {
          (v12->retain)(v12);
        }

        OSDictionary::setObject(a3, "ReportInterval~Latest", &anObject);
        if (anObject)
        {
          (anObject->release_0)(anObject);
        }

        if (v13)
        {
          (v13->release_0)(v13);
        }
      }

      if (a2->getObject_1)(a2, "ReportInterval~Override") && (*(v8 + 148))
      {
        v14 = OSNumber::withNumber(*(v8 + 152), 0x20u);
        v15 = v14;
        anObject = v14;
        if (v14)
        {
          (v14->retain)(v14);
        }

        OSDictionary::setObject(a3, "ReportInterval~Override", &anObject);
        if (anObject)
        {
          (anObject->release_0)(anObject);
        }

        if (v15)
        {
          (v15->release_0)(v15);
        }
      }

      if ((a2->getObject_1)(a2, "Transport.ReportInterval"))
      {
        v16 = 144;
        if (*(v8 + 148))
        {
          v16 = 152;
        }

        v17 = OSNumber::withNumber(*(v8 + v16), 0x20u);
        v18 = v17;
        anObject = v17;
        if (v17)
        {
          (v17->retain)(v17);
        }

        OSDictionary::setObject(a3, "Transport.ReportInterval", &anObject);
        if (anObject)
        {
          (anObject->release_0)(anObject);
        }

        if (v18)
        {
          (v18->release_0)(v18);
        }
      }

      if ((a2->getObject_1)(a2, "Transport.ReportInterval~Latest"))
      {
        v19 = OSNumber::withNumber(*(v8 + 144), 0x20u);
        v20 = v19;
        anObject = v19;
        if (v19)
        {
          (v19->retain)(v19);
        }

        OSDictionary::setObject(a3, "Transport.ReportInterval~Latest", &anObject);
        if (anObject)
        {
          (anObject->release_0)(anObject);
        }

        if (v20)
        {
          (v20->release_0)(v20);
        }
      }

      if (a2->getObject_1)(a2, "Transport.ReportInterval~Override") && (*(v8 + 148))
      {
        v21 = OSNumber::withNumber(*(v8 + 152), 0x20u);
        v22 = v21;
        anObject = v21;
        if (v21)
        {
          (v21->retain)(v21);
        }

        OSDictionary::setObject(a3, "Transport.ReportInterval~Override", &anObject);
        if (anObject)
        {
          (anObject->release_0)(anObject);
        }

        if (v22)
        {
          (v22->release_0)(v22);
        }
      }

      if ((a2->getObject_1)(a2, "Transport.TimeSynchronization"))
      {
        v23 = 196;
        if (*(v8 + 199))
        {
          v23 = 200;
        }

        v24 = OSNumber::withNumber(*(v8 + v23) & 1, 8u);
        v25 = v24;
        anObject = v24;
        if (v24)
        {
          (v24->retain)(v24);
        }

        OSDictionary::setObject(a3, "Transport.TimeSynchronization", &anObject);
        if (anObject)
        {
          (anObject->release_0)(anObject);
        }

        if (v25)
        {
          (v25->release_0)(v25);
        }
      }

      if ((a2->getObject_1)(a2, "Transport.TimeSynchronization~Latest"))
      {
        v26 = OSNumber::withNumber(*(v8 + 196) & 1, 8u);
        v27 = v26;
        anObject = v26;
        if (v26)
        {
          (v26->retain)(v26);
        }

        OSDictionary::setObject(a3, "Transport.TimeSynchronization~Latest", &anObject);
        if (anObject)
        {
          (anObject->release_0)(anObject);
        }

        if (v27)
        {
          (v27->release_0)(v27);
        }
      }

      if (a2->getObject_1)(a2, "Transport.TimeSynchronization~Override") && (*(v8 + 199))
      {
        v28 = OSNumber::withNumber(*(v8 + 200) & 1, 8u);
        v29 = v28;
        anObject = v28;
        if (v28)
        {
          (v28->retain)(v28);
        }

        OSDictionary::setObject(a3, "Transport.TimeSynchronization~Override", &anObject);
        if (anObject)
        {
          (anObject->release_0)(anObject);
        }

        if (v29)
        {
          (v29->release_0)(v29);
        }
      }

      if ((a2->getObject_1)(a2, "Transport.InputDelay"))
      {
        v30 = 160;
        if (*(v8 + 164))
        {
          v30 = 172;
        }

        v31 = (v8 + v30);
        v32 = 156;
        if (*(v8 + 164))
        {
          v32 = 168;
        }

        v33 = *(v8 + v32);
        v34 = *v31;
        v35 = OSDictionary::withCapacity(2u);
        anObject = OSNumber::withNumber(v33, 0x20u);
        OSDictionary::setObject(v35, "timeIntervalUS", &anObject);
        if (anObject)
        {
          (anObject->release_0)(anObject);
        }

        anObject = OSNumber::withNumber(v34, 0x20u);
        OSDictionary::setObject(v35, "uncertaintyUS", &anObject);
        if (anObject)
        {
          (anObject->release_0)(anObject);
        }

        anObject = v35;
        if (v35)
        {
          (v35->retain)(v35);
        }

        OSDictionary::setObject(a3, "Transport.InputDelay", &anObject);
        if (anObject)
        {
          (anObject->release_0)(anObject);
        }

        if (v35)
        {
          (v35->release_0)(v35);
        }
      }

      if ((a2->getObject_1)(a2, "Transport.InputDelay~Latest"))
      {
        v37 = *(v8 + 156);
        v36 = *(v8 + 160);
        v38 = OSDictionary::withCapacity(2u);
        anObject = OSNumber::withNumber(v37, 0x20u);
        OSDictionary::setObject(v38, "timeIntervalUS", &anObject);
        if (anObject)
        {
          (anObject->release_0)(anObject);
        }

        anObject = OSNumber::withNumber(v36, 0x20u);
        OSDictionary::setObject(v38, "uncertaintyUS", &anObject);
        if (anObject)
        {
          (anObject->release_0)(anObject);
        }

        anObject = v38;
        if (v38)
        {
          (v38->retain)(v38);
        }

        OSDictionary::setObject(a3, "Transport.InputDelay~Latest", &anObject);
        if (anObject)
        {
          (anObject->release_0)(anObject);
        }

        if (v38)
        {
          (v38->release_0)(v38);
        }
      }

      if (a2->getObject_1)(a2, "Transport.InputDelay~Override") && (*(v8 + 164))
      {
        v40 = *(v8 + 168);
        v39 = *(v8 + 172);
        v41 = OSDictionary::withCapacity(2u);
        anObject = OSNumber::withNumber(v40, 0x20u);
        OSDictionary::setObject(v41, "timeIntervalUS", &anObject);
        if (anObject)
        {
          (anObject->release_0)(anObject);
        }

        anObject = OSNumber::withNumber(v39, 0x20u);
        OSDictionary::setObject(v41, "uncertaintyUS", &anObject);
        if (anObject)
        {
          (anObject->release_0)(anObject);
        }

        anObject = v41;
        if (v41)
        {
          (v41->retain)(v41);
        }

        OSDictionary::setObject(a3, "Transport.InputDelay~Override", &anObject);
        if (anObject)
        {
          (anObject->release_0)(anObject);
        }

        if (v41)
        {
          (v41->release_0)(v41);
        }
      }

      if ((a2->getObject_1)(a2, "Transport.OutputDelay"))
      {
        v42 = 176;
        if (*(v8 + 184))
        {
          v42 = 188;
        }

        v43 = (v8 + v42);
        v44 = 180;
        if (*(v8 + 184))
        {
          v44 = 192;
        }

        v45 = *(v8 + v44);
        v46 = *v43;
        v47 = OSDictionary::withCapacity(2u);
        anObject = OSNumber::withNumber(v46, 0x20u);
        OSDictionary::setObject(v47, "timeIntervalUS", &anObject);
        if (anObject)
        {
          (anObject->release_0)(anObject);
        }

        anObject = OSNumber::withNumber(v45, 0x20u);
        OSDictionary::setObject(v47, "uncertaintyUS", &anObject);
        if (anObject)
        {
          (anObject->release_0)(anObject);
        }

        anObject = v47;
        if (v47)
        {
          (v47->retain)(v47);
        }

        OSDictionary::setObject(a3, "Transport.OutputDelay", &anObject);
        if (anObject)
        {
          (anObject->release_0)(anObject);
        }

        if (v47)
        {
          (v47->release_0)(v47);
        }
      }

      if ((a2->getObject_1)(a2, "Transport.OutputDelay~Latest"))
      {
        v49 = *(v8 + 176);
        v48 = *(v8 + 180);
        v50 = OSDictionary::withCapacity(2u);
        anObject = OSNumber::withNumber(v49, 0x20u);
        OSDictionary::setObject(v50, "timeIntervalUS", &anObject);
        if (anObject)
        {
          (anObject->release_0)(anObject);
        }

        anObject = OSNumber::withNumber(v48, 0x20u);
        OSDictionary::setObject(v50, "uncertaintyUS", &anObject);
        if (anObject)
        {
          (anObject->release_0)(anObject);
        }

        anObject = v50;
        if (v50)
        {
          (v50->retain)(v50);
        }

        OSDictionary::setObject(a3, "Transport.OutputDelay~Latest", &anObject);
        if (anObject)
        {
          (anObject->release_0)(anObject);
        }

        if (v50)
        {
          (v50->release_0)(v50);
        }
      }

      if (a2->getObject_1)(a2, "Transport.OutputDelay~Override") && (*(v8 + 184))
      {
        v52 = *(v8 + 188);
        v51 = *(v8 + 192);
        v53 = OSDictionary::withCapacity(2u);
        anObject = OSNumber::withNumber(v52, 0x20u);
        OSDictionary::setObject(v53, "timeIntervalUS", &anObject);
        if (anObject)
        {
          (anObject->release_0)(anObject);
        }

        anObject = OSNumber::withNumber(v51, 0x20u);
        OSDictionary::setObject(v53, "uncertaintyUS", &anObject);
        if (anObject)
        {
          (anObject->release_0)(anObject);
        }

        anObject = v53;
        if (v53)
        {
          (v53->retain)(v53);
        }

        OSDictionary::setObject(a3, "Transport.OutputDelay~Override", &anObject);
        if (anObject)
        {
          (anObject->release_0)(anObject);
        }

        if (v53)
        {
          (v53->release_0)(v53);
        }
      }
    }

    else
    {
      PSVR2SenseDeviceHIDEventServerUserClient::fetchTransportProperties();
    }
  }

  else
  {
    PSVR2SenseDeviceHIDEventServerUserClient::fetchTransportProperties();
  }

  return 0;
}

uint64_t PSVR2SenseDeviceHIDEventServerUserClient::fetchAccessoryProperties(PSVR2SenseDeviceHIDEventServerUserClient *this, OSDictionary *a2, OSDictionary *a3)
{
  v5 = (*(*this + 880))(this);
  v6 = OSMetaClassBase::safeMetaCast(v5, &PSVR2SenseDevice::gMetaClass);
  if (v6)
  {
    SharedPage = PSVR2SenseDevice::getSharedPage(v6);
    if (SharedPage)
    {
      v8 = SharedPage;
      if ((a2->getObject_1)(a2, "Accessory.InputBTSubmissionDelay"))
      {
        v9 = 252;
        if (*(v8 + 256))
        {
          v9 = 264;
        }

        v10 = (v8 + v9);
        v11 = 248;
        if (*(v8 + 256))
        {
          v11 = 260;
        }

        v12 = *(v8 + v11);
        v13 = *v10;
        v14 = OSDictionary::withCapacity(2u);
        anObject = OSNumber::withNumber(v12, 0x20u);
        OSDictionary::setObject(v14, "timeIntervalUS", &anObject);
        if (anObject)
        {
          (anObject->release_0)(anObject);
        }

        anObject = OSNumber::withNumber(v13, 0x20u);
        OSDictionary::setObject(v14, "uncertaintyUS", &anObject);
        if (anObject)
        {
          (anObject->release_0)(anObject);
        }

        anObject = v14;
        if (v14)
        {
          (v14->retain)(v14);
        }

        OSDictionary::setObject(a3, "Accessory.InputBTSubmissionDelay", &anObject);
        if (anObject)
        {
          (anObject->release_0)(anObject);
        }

        if (v14)
        {
          (v14->release_0)(v14);
        }
      }

      if ((a2->getObject_1)(a2, "Accessory.InputBTSubmissionDelay~Latest"))
      {
        v16 = *(v8 + 248);
        v15 = *(v8 + 252);
        v17 = OSDictionary::withCapacity(2u);
        anObject = OSNumber::withNumber(v16, 0x20u);
        OSDictionary::setObject(v17, "timeIntervalUS", &anObject);
        if (anObject)
        {
          (anObject->release_0)(anObject);
        }

        anObject = OSNumber::withNumber(v15, 0x20u);
        OSDictionary::setObject(v17, "uncertaintyUS", &anObject);
        if (anObject)
        {
          (anObject->release_0)(anObject);
        }

        anObject = v17;
        if (v17)
        {
          (v17->retain)(v17);
        }

        OSDictionary::setObject(a3, "Accessory.InputBTSubmissionDelay~Latest", &anObject);
        if (anObject)
        {
          (anObject->release_0)(anObject);
        }

        if (v17)
        {
          (v17->release_0)(v17);
        }
      }

      if (a2->getObject_1)(a2, "Accessory.InputBTSubmissionDelay~Override") && (*(v8 + 256))
      {
        v18 = *(v8 + 260);
        v19 = *(v8 + 264);
        v20 = OSDictionary::withCapacity(2u);
        anObject = OSNumber::withNumber(v18, 0x20u);
        OSDictionary::setObject(v20, "timeIntervalUS", &anObject);
        if (anObject)
        {
          (anObject->release_0)(anObject);
        }

        anObject = OSNumber::withNumber(v19, 0x20u);
        OSDictionary::setObject(v20, "uncertaintyUS", &anObject);
        if (anObject)
        {
          (anObject->release_0)(anObject);
        }

        anObject = v20;
        if (v20)
        {
          (v20->retain)(v20);
        }

        OSDictionary::setObject(a3, "Accessory.InputBTSubmissionDelay~Override", &anObject);
        if (anObject)
        {
          (anObject->release_0)(anObject);
        }

        if (v20)
        {
          (v20->release_0)(v20);
        }
      }
    }

    else
    {
      PSVR2SenseDeviceHIDEventServerUserClient::fetchAccessoryProperties();
    }
  }

  else
  {
    PSVR2SenseDeviceHIDEventServerUserClient::fetchAccessoryProperties();
  }

  return 0;
}

uint64_t PSVR2SenseDeviceHIDEventServerUserClient::fetchDriverProperties(PSVR2SenseDeviceHIDEventServerUserClient *this, OSDictionary *a2, OSDictionary *a3)
{
  v5 = (*(*this + 880))(this);
  v6 = OSMetaClassBase::safeMetaCast(v5, &PSVR2SenseDevice::gMetaClass);
  if (v6)
  {
    SharedPage = PSVR2SenseDevice::getSharedPage(v6);
    if (SharedPage)
    {
      v8 = SharedPage;
      if ((a2->getObject_1)(a2, "OutputReportForced"))
      {
        v9 = OSNumber::withNumber(*(v8 + 268) & 1, 8u);
        v10 = v9;
        anObject = v9;
        if (v9)
        {
          (v9->retain)(v9);
        }

        OSDictionary::setObject(a3, "OutputReportForced", &anObject);
        if (anObject)
        {
          (anObject->release_0)(anObject);
        }

        if (v10)
        {
          (v10->release_0)(v10);
        }
      }

      if ((a2->getObject_1)(a2, "OutputReportTxTiming"))
      {
        v11 = OSNumber::withNumber(*(v8 + 269) & 1, 8u);
        v12 = v11;
        anObject = v11;
        if (v11)
        {
          (v11->retain)(v11);
        }

        OSDictionary::setObject(a3, "OutputReportTxTiming", &anObject);
        if (anObject)
        {
          (anObject->release_0)(anObject);
        }

        if (v12)
        {
          (v12->release_0)(v12);
        }
      }

      if ((a2->getObject_1)(a2, "OutputReportLateLatch"))
      {
        v13 = OSNumber::withNumber(*(v8 + 270) & 1, 8u);
        v14 = v13;
        anObject = v13;
        if (v13)
        {
          (v13->retain)(v13);
        }

        OSDictionary::setObject(a3, "OutputReportLateLatch", &anObject);
        if (anObject)
        {
          (anObject->release_0)(anObject);
        }

        if (v14)
        {
          (v14->release_0)(v14);
        }
      }

      if ((a2->getObject_1)(a2, "OutputReportInterval"))
      {
        v15 = OSNumber::withNumber(*(v8 + 272), 0x20u);
        v16 = v15;
        anObject = v15;
        if (v15)
        {
          (v15->retain)(v15);
        }

        OSDictionary::setObject(a3, "OutputReportInterval", &anObject);
        if (anObject)
        {
          (anObject->release_0)(anObject);
        }

        if (v16)
        {
          (v16->release_0)(v16);
        }
      }
    }

    else
    {
      PSVR2SenseDeviceHIDEventServerUserClient::fetchDriverProperties();
    }
  }

  else
  {
    PSVR2SenseDeviceHIDEventServerUserClient::fetchDriverProperties();
  }

  return 0;
}

uint64_t PSVR2SenseDeviceHIDEventServerUserClient::fetchTimeSyncProperties(PSVR2SenseDeviceHIDEventServerUserClient *this, OSDictionary *a2, OSDictionary *a3)
{
  v5 = (*(*this + 880))(this);
  v6 = OSMetaClassBase::safeMetaCast(v5, &PSVR2SenseDevice::gMetaClass);
  if (v6)
  {
    SharedPage = PSVR2SenseDevice::getSharedPage(v6);
    if (SharedPage)
    {
      v8 = SharedPage;
      if ((a2->getObject_1)(a2, "TimeSync.LockTimestampConversion"))
      {
        v9 = OSNumber::withNumber(*(v8 + 2416) & 1, 8u);
        v10 = v9;
        anObject = v9;
        if (v9)
        {
          (v9->retain)(v9);
        }

        OSDictionary::setObject(a3, "TimeSync.LockTimestampConversion", &anObject);
        if (anObject)
        {
          (anObject->release_0)(anObject);
        }

        if (v10)
        {
          (v10->release_0)(v10);
        }
      }

      if ((a2->getObject_1)(a2, "TimeSync.HostToDeviceTimestampConversion"))
      {
        v11 = *(v8 + 2432);
        v12 = *(v8 + 2440);
        v13 = OSDictionary::withCapacity(2u);
        anObject = OSNumber::withNumber(v11, 0x40u);
        OSDictionary::setObject(v13, "timeInterval3US", &anObject);
        if (anObject)
        {
          (anObject->release_0)(anObject);
        }

        anObject = OSNumber::withNumber(v12, 0x40u);
        OSDictionary::setObject(v13, "uncertainty3US", &anObject);
        if (anObject)
        {
          (anObject->release_0)(anObject);
        }

        anObject = v13;
        if (v13)
        {
          (v13->retain)(v13);
        }

        OSDictionary::setObject(a3, "TimeSync.HostToDeviceTimestampConversion", &anObject);
        if (anObject)
        {
          (anObject->release_0)(anObject);
        }

        if (v13)
        {
          (v13->release_0)(v13);
        }
      }

      if ((a2->getObject_1)(a2, "TimeSync.HostToDeviceTimestampConversion~Latest"))
      {
        v14 = *(v8 + 2432);
        v15 = *(v8 + 2440);
        v16 = OSDictionary::withCapacity(2u);
        anObject = OSNumber::withNumber(v14, 0x40u);
        OSDictionary::setObject(v16, "timeInterval3US", &anObject);
        if (anObject)
        {
          (anObject->release_0)(anObject);
        }

        anObject = OSNumber::withNumber(v15, 0x40u);
        OSDictionary::setObject(v16, "uncertainty3US", &anObject);
        if (anObject)
        {
          (anObject->release_0)(anObject);
        }

        anObject = v16;
        if (v16)
        {
          (v16->retain)(v16);
        }

        OSDictionary::setObject(a3, "TimeSync.HostToDeviceTimestampConversion~Latest", &anObject);
        if (anObject)
        {
          (anObject->release_0)(anObject);
        }

        if (v16)
        {
          (v16->release_0)(v16);
        }
      }

      if ((a2->getObject_1)(a2, "TimeSync.DeviceToHostTimestampConversion"))
      {
        v17 = *(v8 + 2448);
        v18 = *(v8 + 2456);
        v19 = OSDictionary::withCapacity(2u);
        anObject = OSNumber::withNumber(v17, 0x40u);
        OSDictionary::setObject(v19, "timeInterval3US", &anObject);
        if (anObject)
        {
          (anObject->release_0)(anObject);
        }

        anObject = OSNumber::withNumber(v18, 0x40u);
        OSDictionary::setObject(v19, "uncertainty3US", &anObject);
        if (anObject)
        {
          (anObject->release_0)(anObject);
        }

        anObject = v19;
        if (v19)
        {
          (v19->retain)(v19);
        }

        OSDictionary::setObject(a3, "TimeSync.DeviceToHostTimestampConversion", &anObject);
        if (anObject)
        {
          (anObject->release_0)(anObject);
        }

        if (v19)
        {
          (v19->release_0)(v19);
        }
      }

      if ((a2->getObject_1)(a2, "TimeSync.DeviceToHostTimestampConversion~Latest"))
      {
        v20 = *(v8 + 2448);
        v21 = *(v8 + 2456);
        v22 = OSDictionary::withCapacity(2u);
        anObject = OSNumber::withNumber(v20, 0x40u);
        OSDictionary::setObject(v22, "timeInterval3US", &anObject);
        if (anObject)
        {
          (anObject->release_0)(anObject);
        }

        anObject = OSNumber::withNumber(v21, 0x40u);
        OSDictionary::setObject(v22, "uncertainty3US", &anObject);
        if (anObject)
        {
          (anObject->release_0)(anObject);
        }

        anObject = v22;
        if (v22)
        {
          (v22->retain)(v22);
        }

        OSDictionary::setObject(a3, "TimeSync.DeviceToHostTimestampConversion~Latest", &anObject);
        if (anObject)
        {
          (anObject->release_0)(anObject);
        }

        if (v22)
        {
          (v22->release_0)(v22);
        }
      }
    }

    else
    {
      PSVR2SenseDeviceHIDEventServerUserClient::fetchTimeSyncProperties();
    }
  }

  else
  {
    PSVR2SenseDeviceHIDEventServerUserClient::fetchTimeSyncProperties();
  }

  return 0;
}

uint64_t PSVR2SenseDeviceHIDEventServerUserClient::fetchInputProperties(PSVR2SenseDeviceHIDEventServerUserClient *this, OSDictionary *a2, OSDictionary *a3)
{
  v5 = (*(*this + 880))(this);
  v6 = OSMetaClassBase::safeMetaCast(v5, &PSVR2SenseDevice::gMetaClass);
  if (v6)
  {
    SharedPage = PSVR2SenseDevice::getSharedPage(v6);
    if (SharedPage)
    {
      v8 = SharedPage;
      v9 = (a2->getObject_1)(a2, "Input.NormalizedThumbstickDeadzoneRadius");
      if (v9)
      {
        v10 = OSNumber::withDouble(v9, v8[3250]);
        v11 = v10;
        anObject = v10;
        if (v10)
        {
          (v10->retain)(v10);
        }

        OSDictionary::setObject(a3, "Input.NormalizedThumbstickDeadzoneRadius", &anObject);
        if (anObject)
        {
          (anObject->release_0)(anObject);
        }

        if (v11)
        {
          (v11->release_0)(v11);
        }
      }

      v12 = (a2->getObject_1)(a2, "Input.NormalizedThumbstickMaxzoneRadius");
      if (v12)
      {
        v13 = OSNumber::withDouble(v12, v8[3251]);
        v14 = v13;
        anObject = v13;
        if (v13)
        {
          (v13->retain)(v13);
        }

        OSDictionary::setObject(a3, "Input.NormalizedThumbstickMaxzoneRadius", &anObject);
        if (anObject)
        {
          (anObject->release_0)(anObject);
        }

        if (v14)
        {
          (v14->release_0)(v14);
        }
      }

      v15 = (a2->getObject_1)(a2, "Input.NormalizedThumbstickAxisSnapRadius");
      if (v15)
      {
        v16 = OSNumber::withDouble(v15, v8[3252]);
        v17 = v16;
        anObject = v16;
        if (v16)
        {
          (v16->retain)(v16);
        }

        OSDictionary::setObject(a3, "Input.NormalizedThumbstickAxisSnapRadius", &anObject);
        if (anObject)
        {
          (anObject->release_0)(anObject);
        }

        if (v17)
        {
          (v17->release_0)(v17);
        }
      }

      v18 = (a2->getObject_1)(a2, "Input.NormalizedTriggerDeadzone");
      if (v18)
      {
        v19 = OSNumber::withDouble(v18, v8[3253]);
        v20 = v19;
        anObject = v19;
        if (v19)
        {
          (v19->retain)(v19);
        }

        OSDictionary::setObject(a3, "Input.NormalizedTriggerDeadzone", &anObject);
        if (anObject)
        {
          (anObject->release_0)(anObject);
        }

        if (v20)
        {
          (v20->release_0)(v20);
        }
      }
    }

    else
    {
      PSVR2SenseDeviceHIDEventServerUserClient::fetchInputProperties();
    }
  }

  else
  {
    PSVR2SenseDeviceHIDEventServerUserClient::fetchInputProperties();
  }

  return 0;
}

OSDictionary *PSVR2SenseDeviceHIDEventServerUserClient::getStatusOverrideProperty(PSVR2SenseDeviceHIDEventServerUserClient *this)
{
  v1 = (*(*this + 880))(this);
  v2 = OSMetaClassBase::safeMetaCast(v1, &PSVR2SenseDevice::gMetaClass);
  if (!v2)
  {
    PSVR2SenseDeviceHIDEventServerUserClient::getStatusOverrideProperty();
    return 0;
  }

  SharedPage = PSVR2SenseDevice::getSharedPage(v2);
  if (!SharedPage)
  {
    PSVR2SenseDeviceHIDEventServerUserClient::getStatusOverrideProperty();
    return 0;
  }

  v4 = (SharedPage + 24576);
  v5 = OSDictionary::withCapacity(9u);
  if (v4[1498])
  {
    anObject = OSNumber::withNumber(v4[1499] & 1, 8u);
    OSDictionary::setObject(v5, "control", &anObject);
    if (anObject)
    {
      (anObject->release_0)(anObject);
    }

    anObject = OSNumber::withNumber(v4[1500] & 1, 8u);
    OSDictionary::setObject(v5, "brightnessControl", &anObject);
    if (anObject)
    {
      (anObject->release_0)(anObject);
    }

    anObject = OSNumber::withNumber(v4[1501] & 1, 8u);
    OSDictionary::setObject(v5, "release", &anObject);
    if (anObject)
    {
      (anObject->release_0)(anObject);
    }

    anObject = OSNumber::withNumber(v4[1502] & 1, 8u);
    OSDictionary::setObject(v5, "on", &anObject);
    if (anObject)
    {
      (anObject->release_0)(anObject);
    }

    anObject = OSNumber::withNumber(v4[1503], 8u);
    OSDictionary::setObject(v5, "brightness", &anObject);
    if (anObject)
    {
      (anObject->release_0)(anObject);
    }

    anObject = OSNumber::withNumber(v4[1504], 8u);
    OSDictionary::setObject(v5, "reserved", &anObject);
    if (anObject)
    {
      (anObject->release_0)(anObject);
    }

    anObject = OSNumber::withNumber(v4[1505], 8u);
    OSDictionary::setObject(v5, "reserved2", &anObject);
    if (anObject)
    {
      (anObject->release_0)(anObject);
    }
  }

  return v5;
}

uint64_t PSVR2SenseDeviceHIDEventServerUserClient::fetchPowerProperties(PSVR2SenseDeviceHIDEventServerUserClient *this, OSDictionary *a2, OSDictionary *a3)
{
  v5 = (*(*this + 880))(this);
  v6 = OSMetaClassBase::safeMetaCast(v5, &PSVR2SenseDevice::gMetaClass);
  if (v6)
  {
    SharedPage = PSVR2SenseDevice::getSharedPage(v6);
    if (SharedPage)
    {
      v8 = SharedPage + 24576;
      if ((a2->getObject_1)(a2, "Power.Disconnect.OnBattery.AtLevel"))
      {
        v9 = OSNumber::withNumber(*(v8 + 1472), 8u);
        v10 = v9;
        anObject = v9;
        if (v9)
        {
          (v9->retain)(v9);
        }

        OSDictionary::setObject(a3, "Power.Disconnect.OnBattery.AtLevel", &anObject);
        if (anObject)
        {
          (anObject->release_0)(anObject);
        }

        if (v10)
        {
          (v10->release_0)(v10);
        }
      }

      if ((a2->getObject_1)(a2, "Power.Disconnect.OnBattery.AtLowVoltage"))
      {
        v11 = OSNumber::withNumber(*(v8 + 1473) & 1, 8u);
        v12 = v11;
        anObject = v11;
        if (v11)
        {
          (v11->retain)(v11);
        }

        OSDictionary::setObject(a3, "Power.Disconnect.OnBattery.AtLowVoltage", &anObject);
        if (anObject)
        {
          (anObject->release_0)(anObject);
        }

        if (v12)
        {
          (v12->release_0)(v12);
        }
      }

      if ((a2->getObject_1)(a2, "Power.Disconnect.OnBattery.NotHeldAfterTime"))
      {
        v13 = OSNumber::withNumber(*(v8 + 1476), 0x20u);
        v14 = v13;
        anObject = v13;
        if (v13)
        {
          (v13->retain)(v13);
        }

        OSDictionary::setObject(a3, "Power.Disconnect.OnBattery.NotHeldAfterTime", &anObject);
        if (anObject)
        {
          (anObject->release_0)(anObject);
        }

        if (v14)
        {
          (v14->release_0)(v14);
        }
      }
    }

    else
    {
      PSVR2SenseDeviceHIDEventServerUserClient::fetchPowerProperties();
    }
  }

  else
  {
    PSVR2SenseDeviceHIDEventServerUserClient::fetchPowerProperties();
  }

  return 0;
}

uint64_t PSVR2SenseDeviceHIDEventServerUserClient::fetchTrackingProperties(PSVR2SenseDeviceHIDEventServerUserClient *this, OSDictionary *a2, OSDictionary *a3)
{
  v5 = (*(*this + 880))(this);
  v6 = OSMetaClassBase::safeMetaCast(v5, &PSVR2SenseDevice::gMetaClass);
  if (v6)
  {
    SharedPage = PSVR2SenseDevice::getSharedPage(v6);
    if (SharedPage)
    {
      v8 = SharedPage + 24576;
      if ((a2->getObject_1)(a2, "Tracking.EmissionTimeIntervalMultiplier"))
      {
        v9 = OSNumber::withNumber(*(v8 + 1512), 8u);
        v10 = v9;
        anObject = v9;
        if (v9)
        {
          (v9->retain)(v9);
        }

        OSDictionary::setObject(a3, "Tracking.EmissionTimeIntervalMultiplier", &anObject);
        if (anObject)
        {
          (anObject->release_0)(anObject);
        }

        if (v10)
        {
          (v10->release_0)(v10);
        }
      }

      if ((a2->getObject_1)(a2, "Tracking.EmissionTimeOffset"))
      {
        v11 = OSNumber::withNumber(*(v8 + 1516), 0x20u);
        v12 = v11;
        anObject = v11;
        if (v11)
        {
          (v11->retain)(v11);
        }

        OSDictionary::setObject(a3, "Tracking.EmissionTimeOffset", &anObject);
        if (anObject)
        {
          (anObject->release_0)(anObject);
        }

        if (v12)
        {
          (v12->release_0)(v12);
        }
      }

      if ((a2->getObject_1)(a2, "Tracking.ExposureWindow"))
      {
        v13 = OSNumber::withNumber(*(v8 + 1520), 0x20u);
        v14 = v13;
        anObject = v13;
        if (v13)
        {
          (v13->retain)(v13);
        }

        OSDictionary::setObject(a3, "Tracking.ExposureWindow", &anObject);
        if (anObject)
        {
          (anObject->release_0)(anObject);
        }

        if (v14)
        {
          (v14->release_0)(v14);
        }
      }

      if ((a2->getObject_1)(a2, "Tracking.MinimumModificationInterval"))
      {
        v15 = OSNumber::withNumber(*(v8 + 1524), 0x20u);
        v16 = v15;
        anObject = v15;
        if (v15)
        {
          (v15->retain)(v15);
        }

        OSDictionary::setObject(a3, "Tracking.MinimumModificationInterval", &anObject);
        if (anObject)
        {
          (anObject->release_0)(anObject);
        }

        if (v16)
        {
          (v16->release_0)(v16);
        }
      }

      if ((a2->getObject_1)(a2, "Tracking.Overrides"))
      {
        v17 = OSDictionary::withCapacity(9u);
        if (*(v8 + 1585))
        {
          anObject = OSNumber::withNumber(*(v8 + 1590), 8u);
          OSDictionary::setObject(v17, "mode", &anObject);
          if (anObject)
          {
            (anObject->release_0)(anObject);
          }
        }

        if (*(v8 + 1586))
        {
          anObject = OSNumber::withNumber(*(v8 + 1592), 0x20u);
          OSDictionary::setObject(v17, "start", &anObject);
          if (anObject)
          {
            (anObject->release_0)(anObject);
          }
        }

        if (*(v8 + 1587))
        {
          anObject = OSNumber::withNumber(*(v8 + 1596), 8u);
          OSDictionary::setObject(v17, "on", &anObject);
          if (anObject)
          {
            (anObject->release_0)(anObject);
          }
        }

        if (*(v8 + 1588))
        {
          anObject = OSNumber::withNumber(*(v8 + 1600), 0x20u);
          OSDictionary::setObject(v17, "period", &anObject);
          if (anObject)
          {
            (anObject->release_0)(anObject);
          }
        }

        if (*(v8 + 1589))
        {
          anObject = OSNumber::withNumber(*(v8 + 1604), 8u);
          OSDictionary::setObject(v17, "channel1", &anObject);
          if (anObject)
          {
            (anObject->release_0)(anObject);
          }

          anObject = OSNumber::withNumber(*(v8 + 1605), 8u);
          OSDictionary::setObject(v17, "channel2", &anObject);
          if (anObject)
          {
            (anObject->release_0)(anObject);
          }

          anObject = OSNumber::withNumber(*(v8 + 1606), 8u);
          OSDictionary::setObject(v17, "channel3", &anObject);
          if (anObject)
          {
            (anObject->release_0)(anObject);
          }

          anObject = OSNumber::withNumber(*(v8 + 1607), 8u);
          OSDictionary::setObject(v17, "channel4", &anObject);
          if (anObject)
          {
            (anObject->release_0)(anObject);
          }
        }

        if (v17)
        {
          (v17->release_0)(v17);
        }
      }
    }

    else
    {
      PSVR2SenseDeviceHIDEventServerUserClient::fetchTrackingProperties();
    }
  }

  else
  {
    PSVR2SenseDeviceHIDEventServerUserClient::fetchTrackingProperties();
  }

  return 0;
}

uint64_t PSVR2SenseDeviceHIDEventServerUserClient::fetchHapticsProperties(PSVR2SenseDeviceHIDEventServerUserClient *this, OSDictionary *a2, OSDictionary *a3)
{
  v4 = (*(*this + 880))(this, a2, a3);
  v5 = OSMetaClassBase::safeMetaCast(v4, &PSVR2SenseDevice::gMetaClass);
  if (v5)
  {
    SharedPage = PSVR2SenseDevice::getSharedPage(v5);
    if (SharedPage)
    {
      v7 = SharedPage;
      if ((a2->getObject_1)(a2, "Haptics.Overrides"))
      {
        v8 = (v7 + 24576);
        v9 = OSDictionary::withCapacity(9u);
        if (v8[1609])
        {
          anObject = OSNumber::withNumber(v8[1612], 8u);
          OSDictionary::setObject(v9, "rumbleMode", &anObject);
          if (anObject)
          {
            (anObject->release_0)(anObject);
          }
        }

        if (v8[1610])
        {
          anObject = OSNumber::withNumber(v8[1613], 8u);
          OSDictionary::setObject(v9, "rumbleStrength", &anObject);
          if (anObject)
          {
            (anObject->release_0)(anObject);
          }
        }

        if (v8[1611])
        {
          anObject = OSNumber::withNumber(v8[1614], 8u);
          OSDictionary::setObject(v9, "rumbleMaxAmplitude", &anObject);
          if (anObject)
          {
            (anObject->release_0)(anObject);
          }
        }

        if (v9)
        {
          (v9->release_0)(v9);
        }
      }
    }

    else
    {
      PSVR2SenseDeviceHIDEventServerUserClient::fetchHapticsProperties();
    }
  }

  else
  {
    PSVR2SenseDeviceHIDEventServerUserClient::fetchHapticsProperties();
  }

  return 0;
}

uint64_t PSVR2SenseDeviceHIDEventServerUserClient::applyTransportProperties(IOCommandGate **this, OSDictionary *a2, OSDictionary *a3)
{
  v6 = ((*this)[11].__vftable)(this);
  v7 = OSMetaClassBase::safeMetaCast(v6, &PSVR2SenseDevice::gMetaClass);
  if (v7)
  {
    SharedPage = PSVR2SenseDevice::getSharedPage(v7);
    if (SharedPage)
    {
      v9 = SharedPage;
      v10 = (a2->getObject_1)(a2, "Transport.ReportInterval");
      v11 = OSNumber::metaClass;
      v12 = OSMetaClassBase::safeMetaCast(v10, OSNumber::metaClass);
      if (v12)
      {
        v13 = this[28];
        action[0] = _NSConcreteStackBlock;
        action[1] = 0x40000000;
        action[2] = ___ZN40PSVR2SenseDeviceHIDEventServerUserClient24applyTransportPropertiesEP12OSDictionaryS1__block_invoke;
        action[3] = &__block_descriptor_tmp_64;
        action[4] = this;
        action[5] = v9;
        action[6] = v12;
        v14 = IOCommandGate::runActionBlock(v13, action);
        anObject = OSNumber::withNumber(v14, 0x20u);
        OSDictionary::setObject(a3, "Transport.ReportInterval", &anObject);
        if (anObject)
        {
          (anObject->release_0)(anObject);
        }
      }

      v15 = (a2->getObject_1)(a2, "Transport.TimeSynchronization");
      v16 = OSMetaClassBase::safeMetaCast(v15, v11);
      if (v16)
      {
        v17 = this[28];
        v41[0] = _NSConcreteStackBlock;
        v41[1] = 0x40000000;
        v41[2] = ___ZN40PSVR2SenseDeviceHIDEventServerUserClient24applyTransportPropertiesEP12OSDictionaryS1__block_invoke_2;
        v41[3] = &__block_descriptor_tmp_65;
        v41[4] = this;
        v41[5] = v9;
        v41[6] = v16;
        v18 = IOCommandGate::runActionBlock(v17, v41);
        anObject = OSNumber::withNumber(v18, 0x20u);
        OSDictionary::setObject(a3, "Transport.TimeSynchronization", &anObject);
        if (anObject)
        {
          (anObject->release_0)(anObject);
        }
      }

      v19 = (a2->getObject_1)(a2, "Transport.InputDelay");
      v20 = OSDictionary::metaClass;
      v21 = OSMetaClassBase::safeMetaCast(v19, OSDictionary::metaClass);
      if (v21)
      {
        v22 = v21;
        v23 = (v21->__vftable[3].~OSMetaClassBase)(v21, "timeIntervalUS");
        v24 = OSMetaClassBase::safeMetaCast(v23, v11);
        v25 = (v22->__vftable[3].~OSMetaClassBase)(v22, "uncertaintyUS");
        v26 = OSMetaClassBase::safeMetaCast(v25, v11);
        v27 = this[28];
        v40[0] = _NSConcreteStackBlock;
        v40[1] = 0x40000000;
        v40[2] = ___ZN40PSVR2SenseDeviceHIDEventServerUserClient24applyTransportPropertiesEP12OSDictionaryS1__block_invoke_3;
        v40[3] = &__block_descriptor_tmp_66_0;
        v40[4] = this;
        v40[5] = v24;
        v40[6] = v9;
        v40[7] = v26;
        v28 = IOCommandGate::runActionBlock(v27, v40);
        anObject = OSNumber::withNumber(v28, 0x20u);
        OSDictionary::setObject(a3, "Transport.InputDelay", &anObject);
        if (anObject)
        {
          (anObject->release_0)(anObject);
        }
      }

      v29 = (a2->getObject_1)(a2, "Transport.OutputDelay");
      v30 = OSMetaClassBase::safeMetaCast(v29, v20);
      if (v30)
      {
        v31 = v30;
        v32 = (v30->__vftable[3].~OSMetaClassBase)(v30, "timeIntervalUS");
        v33 = OSMetaClassBase::safeMetaCast(v32, v11);
        v34 = (v31->__vftable[3].~OSMetaClassBase)(v31, "uncertaintyUS");
        v35 = OSMetaClassBase::safeMetaCast(v34, v11);
        v36 = this[28];
        v39[0] = _NSConcreteStackBlock;
        v39[1] = 0x40000000;
        v39[2] = ___ZN40PSVR2SenseDeviceHIDEventServerUserClient24applyTransportPropertiesEP12OSDictionaryS1__block_invoke_4;
        v39[3] = &__block_descriptor_tmp_67;
        v39[4] = this;
        v39[5] = v33;
        v39[6] = v9;
        v39[7] = v35;
        v37 = IOCommandGate::runActionBlock(v36, v39);
        anObject = OSNumber::withNumber(v37, 0x20u);
        OSDictionary::setObject(a3, "Transport.OutputDelay", &anObject);
        if (anObject)
        {
          (anObject->release_0)(anObject);
        }
      }
    }

    else
    {
      PSVR2SenseDeviceHIDEventServerUserClient::applyTransportProperties();
    }
  }

  else
  {
    PSVR2SenseDeviceHIDEventServerUserClient::applyTransportProperties();
  }

  return 0;
}

uint64_t PSVR2SenseDeviceHIDEventServerUserClient::applyAccessoryProperties(IOCommandGate **this, OSDictionary *a2, OSDictionary *a3)
{
  v6 = ((*this)[11].__vftable)(this);
  v7 = OSMetaClassBase::safeMetaCast(v6, &PSVR2SenseDevice::gMetaClass);
  if (v7)
  {
    SharedPage = PSVR2SenseDevice::getSharedPage(v7);
    if (SharedPage)
    {
      v9 = SharedPage;
      v10 = (a2->getObject_1)(a2, "Accessory.InputBTSubmissionDelay");
      v11 = OSMetaClassBase::safeMetaCast(v10, OSDictionary::metaClass);
      if (v11)
      {
        v12 = v11;
        v13 = (v11->__vftable[3].~OSMetaClassBase)(v11, "timeIntervalUS");
        v14 = OSNumber::metaClass;
        v15 = OSMetaClassBase::safeMetaCast(v13, OSNumber::metaClass);
        v16 = (v12->__vftable[3].~OSMetaClassBase)(v12, "uncertaintyUS");
        v17 = OSMetaClassBase::safeMetaCast(v16, v14);
        v18 = this[28];
        action[0] = _NSConcreteStackBlock;
        action[1] = 0x40000000;
        action[2] = ___ZN40PSVR2SenseDeviceHIDEventServerUserClient24applyAccessoryPropertiesEP12OSDictionaryS1__block_invoke;
        action[3] = &__block_descriptor_tmp_71;
        action[4] = this;
        action[5] = v15;
        action[6] = v9;
        action[7] = v17;
        v19 = IOCommandGate::runActionBlock(v18, action);
        anObject = OSNumber::withNumber(v19, 0x20u);
        OSDictionary::setObject(a3, "Accessory.InputBTSubmissionDelay", &anObject);
        if (anObject)
        {
          (anObject->release_0)(anObject);
        }
      }
    }

    else
    {
      PSVR2SenseDeviceHIDEventServerUserClient::applyAccessoryProperties();
    }
  }

  else
  {
    PSVR2SenseDeviceHIDEventServerUserClient::applyAccessoryProperties();
  }

  return 0;
}

uint64_t PSVR2SenseDeviceHIDEventServerUserClient::applyDriverProperties(IOCommandGate **this, OSDictionary *a2, OSDictionary *a3)
{
  v6 = ((*this)[11].__vftable)(this);
  v7 = OSMetaClassBase::safeMetaCast(v6, &PSVR2SenseDevice::gMetaClass);
  if (v7)
  {
    SharedPage = PSVR2SenseDevice::getSharedPage(v7);
    if (SharedPage)
    {
      v9 = SharedPage;
      v10 = (a2->getObject_1)(a2, "OutputReportForced");
      v11 = OSNumber::metaClass;
      v12 = OSMetaClassBase::safeMetaCast(v10, OSNumber::metaClass);
      if (v12)
      {
        v13 = this[28];
        action[0] = _NSConcreteStackBlock;
        action[1] = 0x40000000;
        action[2] = ___ZN40PSVR2SenseDeviceHIDEventServerUserClient21applyDriverPropertiesEP12OSDictionaryS1__block_invoke;
        action[3] = &__block_descriptor_tmp_76;
        action[4] = this;
        action[5] = v9;
        action[6] = v12;
        v14 = IOCommandGate::runActionBlock(v13, action);
        anObject = OSNumber::withNumber(v14, 0x20u);
        OSDictionary::setObject(a3, "OutputReportForced", &anObject);
        if (anObject)
        {
          (anObject->release_0)(anObject);
        }
      }

      v15 = (a2->getObject_1)(a2, "OutputReportTxTiming");
      v16 = OSMetaClassBase::safeMetaCast(v15, v11);
      if (v16)
      {
        v17 = this[28];
        v30[0] = _NSConcreteStackBlock;
        v30[1] = 0x40000000;
        v30[2] = ___ZN40PSVR2SenseDeviceHIDEventServerUserClient21applyDriverPropertiesEP12OSDictionaryS1__block_invoke_2;
        v30[3] = &__block_descriptor_tmp_77;
        v30[4] = this;
        v30[5] = v9;
        v30[6] = v16;
        v18 = IOCommandGate::runActionBlock(v17, v30);
        anObject = OSNumber::withNumber(v18, 0x20u);
        OSDictionary::setObject(a3, "OutputReportTxTiming", &anObject);
        if (anObject)
        {
          (anObject->release_0)(anObject);
        }
      }

      v19 = (a2->getObject_1)(a2, "OutputReportLateLatch");
      v20 = OSMetaClassBase::safeMetaCast(v19, v11);
      if (v20)
      {
        v21 = this[28];
        v29[0] = _NSConcreteStackBlock;
        v29[1] = 0x40000000;
        v29[2] = ___ZN40PSVR2SenseDeviceHIDEventServerUserClient21applyDriverPropertiesEP12OSDictionaryS1__block_invoke_3;
        v29[3] = &__block_descriptor_tmp_78;
        v29[4] = this;
        v29[5] = v9;
        v29[6] = v20;
        v22 = IOCommandGate::runActionBlock(v21, v29);
        anObject = OSNumber::withNumber(v22, 0x20u);
        OSDictionary::setObject(a3, "OutputReportLateLatch", &anObject);
        if (anObject)
        {
          (anObject->release_0)(anObject);
        }
      }

      v23 = (a2->getObject_1)(a2, "OutputReportInterval");
      v24 = OSMetaClassBase::safeMetaCast(v23, v11);
      if (v24)
      {
        v25 = this[28];
        v28[0] = _NSConcreteStackBlock;
        v28[1] = 0x40000000;
        v28[2] = ___ZN40PSVR2SenseDeviceHIDEventServerUserClient21applyDriverPropertiesEP12OSDictionaryS1__block_invoke_4;
        v28[3] = &__block_descriptor_tmp_79;
        v28[4] = this;
        v28[5] = v9;
        v28[6] = v24;
        v26 = IOCommandGate::runActionBlock(v25, v28);
        anObject = OSNumber::withNumber(v26, 0x20u);
        OSDictionary::setObject(a3, "OutputReportInterval", &anObject);
        if (anObject)
        {
          (anObject->release_0)(anObject);
        }
      }
    }

    else
    {
      PSVR2SenseDeviceHIDEventServerUserClient::applyDriverProperties();
    }
  }

  else
  {
    PSVR2SenseDeviceHIDEventServerUserClient::applyDriverProperties();
  }

  return 0;
}

uint64_t PSVR2SenseDeviceHIDEventServerUserClient::applyTimeSyncProperties(IOCommandGate **this, OSDictionary *a2, OSDictionary *a3)
{
  v6 = ((*this)[11].__vftable)(this);
  v7 = OSMetaClassBase::safeMetaCast(v6, &PSVR2SenseDevice::gMetaClass);
  if (v7)
  {
    SharedPage = PSVR2SenseDevice::getSharedPage(v7);
    if (SharedPage)
    {
      v9 = SharedPage;
      v10 = (a2->getObject_1)(a2, "TimeSync.LockTimestampConversion");
      v11 = OSMetaClassBase::safeMetaCast(v10, OSNumber::metaClass);
      if (v11)
      {
        v12 = this[28];
        action[0] = _NSConcreteStackBlock;
        action[1] = 0x40000000;
        action[2] = ___ZN40PSVR2SenseDeviceHIDEventServerUserClient23applyTimeSyncPropertiesEP12OSDictionaryS1__block_invoke;
        action[3] = &__block_descriptor_tmp_87;
        action[4] = this;
        action[5] = v9;
        action[6] = v11;
        v13 = IOCommandGate::runActionBlock(v12, action);
        v15 = OSNumber::withNumber(v13, 0x20u);
        OSDictionary::setObject(a3, "TimeSync.LockTimestampConversion", &v15);
        if (v15)
        {
          (v15->release_0)(v15);
        }
      }
    }

    else
    {
      PSVR2SenseDeviceHIDEventServerUserClient::applyTimeSyncProperties();
    }
  }

  else
  {
    PSVR2SenseDeviceHIDEventServerUserClient::applyTimeSyncProperties();
  }

  return 0;
}

uint64_t PSVR2SenseDeviceHIDEventServerUserClient::applyInputProperties(IORegistryEntry *this, OSDictionary *a2, OSDictionary *a3)
{
  v6 = (this->__vftable[1].getProperty_1)(this);
  v7 = OSMetaClassBase::safeMetaCast(v6, &PSVR2SenseDevice::gMetaClass);
  if (v7)
  {
    SharedPage = PSVR2SenseDevice::getSharedPage(v7);
    if (SharedPage)
    {
      v9 = SharedPage;
      v10 = (a2->getObject_1)(a2, "Input.NormalizedThumbstickDeadzoneRadius");
      if (v10)
      {
        v11 = OSMetaClassBase::safeMetaCast(v10, OSNumber::metaClass);
        if (v11)
        {
          fRegistryTable = this[5].fRegistryTable;
          action[0] = _NSConcreteStackBlock;
          action[1] = 0x40000000;
          action[2] = ___ZN40PSVR2SenseDeviceHIDEventServerUserClient20applyInputPropertiesEP12OSDictionaryS1__block_invoke;
          action[3] = &__block_descriptor_tmp_92;
          action[4] = this;
          action[5] = v9;
          action[6] = v11;
          v13 = IOCommandGate::runActionBlock(fRegistryTable, action);
          anObject = OSNumber::withNumber(v13, 0x20u);
          OSDictionary::setObject(a3, "Input.NormalizedThumbstickDeadzoneRadius", &anObject);
          if (anObject)
          {
            (anObject->release_0)(anObject);
          }
        }

        else
        {
          v14 = _gc_log_psvr2();
          RegistryEntryID = IORegistryEntry::getRegistryEntryID(this);
          _os_log_internal(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "[%#010llx] Apply 'Input' configuration {\n\tInput.NormalizedThumbstickDeadzoneRadius = ERROR, expected number value!\n}", RegistryEntryID);
        }
      }

      v16 = (a2->getObject_1)(a2, "Input.NormalizedThumbstickAxisSnapRadius");
      if (v16)
      {
        v17 = OSMetaClassBase::safeMetaCast(v16, OSNumber::metaClass);
        if (v17)
        {
          v18 = this[5].fRegistryTable;
          v30[0] = _NSConcreteStackBlock;
          v30[1] = 0x40000000;
          v30[2] = ___ZN40PSVR2SenseDeviceHIDEventServerUserClient20applyInputPropertiesEP12OSDictionaryS1__block_invoke_2;
          v30[3] = &__block_descriptor_tmp_93;
          v30[4] = this;
          v30[5] = v9;
          v30[6] = v17;
          v19 = IOCommandGate::runActionBlock(v18, v30);
          anObject = OSNumber::withNumber(v19, 0x20u);
          OSDictionary::setObject(a3, "Input.NormalizedThumbstickAxisSnapRadius", &anObject);
          if (anObject)
          {
            (anObject->release_0)(anObject);
          }
        }

        else
        {
          v20 = _gc_log_psvr2();
          v21 = IORegistryEntry::getRegistryEntryID(this);
          _os_log_internal(&dword_0, v20, OS_LOG_TYPE_DEFAULT, "[%#010llx] Apply 'Input' configuration {\n\tInput.NormalizedThumbstickAxisSnapRadius = ERROR, expected number value!\n}", v21);
        }
      }

      v22 = (a2->getObject_1)(a2, "Input.NormalizedTriggerDeadzone");
      if (v22)
      {
        v23 = OSMetaClassBase::safeMetaCast(v22, OSNumber::metaClass);
        if (v23)
        {
          v24 = this[5].fRegistryTable;
          v29[0] = _NSConcreteStackBlock;
          v29[1] = 0x40000000;
          v29[2] = ___ZN40PSVR2SenseDeviceHIDEventServerUserClient20applyInputPropertiesEP12OSDictionaryS1__block_invoke_3;
          v29[3] = &__block_descriptor_tmp_94;
          v29[4] = this;
          v29[5] = v9;
          v29[6] = v23;
          v25 = IOCommandGate::runActionBlock(v24, v29);
          anObject = OSNumber::withNumber(v25, 0x20u);
          OSDictionary::setObject(a3, "Input.NormalizedTriggerDeadzone", &anObject);
          if (anObject)
          {
            (anObject->release_0)(anObject);
          }
        }

        else
        {
          v26 = _gc_log_psvr2();
          v27 = IORegistryEntry::getRegistryEntryID(this);
          _os_log_internal(&dword_0, v26, OS_LOG_TYPE_DEFAULT, "[%#010llx] Apply 'Input' configuration {\n\tInput.NormalizedTriggerDeadzone = ERROR, expected number value!\n}", v27);
        }
      }
    }

    else
    {
      PSVR2SenseDeviceHIDEventServerUserClient::applyInputProperties();
    }
  }

  else
  {
    PSVR2SenseDeviceHIDEventServerUserClient::applyInputProperties();
  }

  return 0;
}

uint64_t PSVR2SenseDeviceHIDEventServerUserClient::setStatusOverrideProperty(IOCommandGate **this, OSDictionary *a2)
{
  if (a2)
  {
    v4 = ((*this)[11].__vftable)(this);
    v5 = OSMetaClassBase::safeMetaCast(v4, &PSVR2SenseDevice::gMetaClass);
    if (v5)
    {
      v6 = v5;
      v7 = (a2->getObject_1)(a2, "control");
      v8 = OSBoolean::metaClass;
      v9 = OSMetaClassBase::safeMetaCast(v7, OSBoolean::metaClass);
      v10 = (a2->getObject_1)(a2, "brightnessControl");
      v11 = OSMetaClassBase::safeMetaCast(v10, v8);
      v12 = (a2->getObject_1)(a2, "release");
      v13 = OSMetaClassBase::safeMetaCast(v12, v8);
      v14 = (a2->getObject_1)(a2, "on");
      v15 = OSMetaClassBase::safeMetaCast(v14, v8);
      v16 = (a2->getObject_1)(a2, "brightness");
      v17 = OSNumber::metaClass;
      v18 = OSMetaClassBase::safeMetaCast(v16, OSNumber::metaClass);
      v19 = (a2->getObject_1)(a2, "reserved");
      v20 = OSMetaClassBase::safeMetaCast(v19, v17);
      v21 = (a2->getObject_1)(a2, "reserved2");
      v22 = OSMetaClassBase::safeMetaCast(v21, v17);
      v23 = this[28];
      action[0] = _NSConcreteStackBlock;
      action[1] = 0x40000000;
      action[2] = ___ZN40PSVR2SenseDeviceHIDEventServerUserClient25setStatusOverridePropertyEP12OSDictionary_block_invoke;
      action[3] = &__block_descriptor_tmp_103;
      action[4] = this;
      action[5] = v9;
      action[6] = v11;
      action[7] = v13;
      action[8] = v15;
      action[9] = v18;
      action[10] = v20;
      action[11] = v22;
      action[12] = v6;
      return IOCommandGate::runActionBlock(v23, action);
    }

    else
    {
      PSVR2SenseDeviceHIDEventServerUserClient::setStatusOverrideProperty();
      return 3758097112;
    }
  }

  else
  {
    v24 = 3758097090;
    PSVR2SenseDeviceHIDEventServerUserClient::setStatusOverrideProperty();
  }

  return v24;
}

uint64_t PSVR2SenseDeviceHIDEventServerUserClient::applyPowerProperties(IOCommandGate **this, OSDictionary *a2, OSDictionary *a3)
{
  v6 = ((*this)[11].__vftable)(this);
  v7 = OSMetaClassBase::safeMetaCast(v6, &PSVR2SenseDevice::gMetaClass);
  if (v7)
  {
    SharedPage = PSVR2SenseDevice::getSharedPage(v7);
    if (SharedPage)
    {
      v9 = SharedPage;
      v10 = (a2->getObject_1)(a2, "Power.Disconnect.OnBattery.AtLevel");
      v11 = OSNumber::metaClass;
      v12 = OSMetaClassBase::safeMetaCast(v10, OSNumber::metaClass);
      if (v12)
      {
        v13 = this[28];
        action[0] = _NSConcreteStackBlock;
        action[1] = 0x40000000;
        action[2] = ___ZN40PSVR2SenseDeviceHIDEventServerUserClient20applyPowerPropertiesEP12OSDictionaryS1__block_invoke;
        action[3] = &__block_descriptor_tmp_107;
        action[4] = this;
        action[5] = v9;
        action[6] = v12;
        v14 = IOCommandGate::runActionBlock(v13, action);
        anObject = OSNumber::withNumber(v14, 0x20u);
        OSDictionary::setObject(a3, "Power.Disconnect.OnBattery.AtLevel", &anObject);
        if (anObject)
        {
          (anObject->release_0)(anObject);
        }
      }

      v15 = (a2->getObject_1)(a2, "Power.Disconnect.OnBattery.AtLowVoltage");
      v16 = OSMetaClassBase::safeMetaCast(v15, OSBoolean::metaClass);
      if (v16)
      {
        v17 = this[28];
        v25[0] = _NSConcreteStackBlock;
        v25[1] = 0x40000000;
        v25[2] = ___ZN40PSVR2SenseDeviceHIDEventServerUserClient20applyPowerPropertiesEP12OSDictionaryS1__block_invoke_2;
        v25[3] = &__block_descriptor_tmp_108;
        v25[4] = this;
        v25[5] = v9;
        v25[6] = v16;
        v18 = IOCommandGate::runActionBlock(v17, v25);
        anObject = OSNumber::withNumber(v18, 0x20u);
        OSDictionary::setObject(a3, "Power.Disconnect.OnBattery.AtLowVoltage", &anObject);
        if (anObject)
        {
          (anObject->release_0)(anObject);
        }
      }

      v19 = (a2->getObject_1)(a2, "Power.Disconnect.OnBattery.NotHeldAfterTime");
      v20 = OSMetaClassBase::safeMetaCast(v19, v11);
      if (v20)
      {
        v21 = this[28];
        v24[0] = _NSConcreteStackBlock;
        v24[1] = 0x40000000;
        v24[2] = ___ZN40PSVR2SenseDeviceHIDEventServerUserClient20applyPowerPropertiesEP12OSDictionaryS1__block_invoke_3;
        v24[3] = &__block_descriptor_tmp_109;
        v24[4] = this;
        v24[5] = v9;
        v24[6] = v20;
        v22 = IOCommandGate::runActionBlock(v21, v24);
        anObject = OSNumber::withNumber(v22, 0x20u);
        OSDictionary::setObject(a3, "Power.Disconnect.OnBattery.NotHeldAfterTime", &anObject);
        if (anObject)
        {
          (anObject->release_0)(anObject);
        }
      }
    }

    else
    {
      PSVR2SenseDeviceHIDEventServerUserClient::applyPowerProperties();
    }
  }

  else
  {
    PSVR2SenseDeviceHIDEventServerUserClient::applyPowerProperties();
  }

  return 0;
}

uint64_t PSVR2SenseDeviceHIDEventServerUserClient::applyTrackingProperties(IOCommandGate **this, OSDictionary *a2, OSDictionary *a3)
{
  v6 = ((*this)[11].__vftable)(this);
  v7 = OSMetaClassBase::safeMetaCast(v6, &PSVR2SenseDevice::gMetaClass);
  if (v7)
  {
    SharedPage = PSVR2SenseDevice::getSharedPage(v7);
    if (SharedPage)
    {
      v9 = SharedPage;
      v10 = (a2->getObject_1)(a2, "Tracking.EmissionTimeIntervalMultiplier");
      v11 = OSNumber::metaClass;
      v12 = OSMetaClassBase::safeMetaCast(v10, OSNumber::metaClass);
      if (v12)
      {
        v13 = this[28];
        action[0] = _NSConcreteStackBlock;
        action[1] = 0x40000000;
        action[2] = ___ZN40PSVR2SenseDeviceHIDEventServerUserClient23applyTrackingPropertiesEP12OSDictionaryS1__block_invoke;
        action[3] = &__block_descriptor_tmp_122;
        action[4] = this;
        action[5] = v9;
        action[6] = v12;
        v14 = IOCommandGate::runActionBlock(v13, action);
        anObject = OSNumber::withNumber(v14, 0x20u);
        OSDictionary::setObject(a3, "Tracking.EmissionTimeIntervalMultiplier", &anObject);
        if (anObject)
        {
          (anObject->release_0)(anObject);
        }
      }

      v15 = (a2->getObject_1)(a2, "Tracking.EmissionTimeOffset");
      v16 = OSMetaClassBase::safeMetaCast(v15, v11);
      if (v16)
      {
        v17 = this[28];
        v53[0] = _NSConcreteStackBlock;
        v53[1] = 0x40000000;
        v53[2] = ___ZN40PSVR2SenseDeviceHIDEventServerUserClient23applyTrackingPropertiesEP12OSDictionaryS1__block_invoke_2;
        v53[3] = &__block_descriptor_tmp_123;
        v53[4] = this;
        v53[5] = v9;
        v53[6] = v16;
        v18 = IOCommandGate::runActionBlock(v17, v53);
        anObject = OSNumber::withNumber(v18, 0x20u);
        OSDictionary::setObject(a3, "Tracking.EmissionTimeOffset", &anObject);
        if (anObject)
        {
          (anObject->release_0)(anObject);
        }
      }

      v19 = (a2->getObject_1)(a2, "Tracking.ExposureWindow");
      v20 = OSMetaClassBase::safeMetaCast(v19, v11);
      if (v20)
      {
        v21 = this[28];
        v52[0] = _NSConcreteStackBlock;
        v52[1] = 0x40000000;
        v52[2] = ___ZN40PSVR2SenseDeviceHIDEventServerUserClient23applyTrackingPropertiesEP12OSDictionaryS1__block_invoke_3;
        v52[3] = &__block_descriptor_tmp_124;
        v52[4] = this;
        v52[5] = v9;
        v52[6] = v20;
        v22 = IOCommandGate::runActionBlock(v21, v52);
        anObject = OSNumber::withNumber(v22, 0x20u);
        OSDictionary::setObject(a3, "Tracking.ExposureWindow", &anObject);
        if (anObject)
        {
          (anObject->release_0)(anObject);
        }
      }

      v23 = (a2->getObject_1)(a2, "Tracking.MinimumModificationInterval");
      v24 = OSMetaClassBase::safeMetaCast(v23, v11);
      if (v24)
      {
        v25 = this[28];
        v51[0] = _NSConcreteStackBlock;
        v51[1] = 0x40000000;
        v51[2] = ___ZN40PSVR2SenseDeviceHIDEventServerUserClient23applyTrackingPropertiesEP12OSDictionaryS1__block_invoke_4;
        v51[3] = &__block_descriptor_tmp_125_0;
        v51[4] = this;
        v51[5] = v9;
        v51[6] = v24;
        v26 = IOCommandGate::runActionBlock(v25, v51);
        anObject = OSNumber::withNumber(v26, 0x20u);
        OSDictionary::setObject(a3, "Tracking.MinimumModificationInterval", &anObject);
        if (anObject)
        {
          (anObject->release_0)(anObject);
        }
      }

      v27 = (a2->getObject_1)(a2, "Tracking");
      v28 = OSMetaClassBase::safeMetaCast(v27, OSDictionary::metaClass);
      if (v28)
      {
        v29 = v28;
        v30 = (v28->__vftable[3].~OSMetaClassBase)(v28, "mode");
        v49 = OSMetaClassBase::safeMetaCast(v30, v11);
        v31 = (v29->__vftable[3].~OSMetaClassBase)(v29, "start");
        v48 = OSMetaClassBase::safeMetaCast(v31, v11);
        v32 = (v29->__vftable[3].~OSMetaClassBase)(v29, "on");
        v47 = OSMetaClassBase::safeMetaCast(v32, v11);
        v33 = (v29->__vftable[3].~OSMetaClassBase)(v29, "period");
        v34 = OSMetaClassBase::safeMetaCast(v33, v11);
        v35 = (v29->__vftable[3].~OSMetaClassBase)(v29, "channel1");
        v36 = OSMetaClassBase::safeMetaCast(v35, v11);
        v37 = (v29->__vftable[3].~OSMetaClassBase)(v29, "channel2");
        v38 = a3;
        v39 = OSMetaClassBase::safeMetaCast(v37, v11);
        v40 = (v29->__vftable[3].~OSMetaClassBase)(v29, "channel3");
        v41 = OSMetaClassBase::safeMetaCast(v40, v11);
        v42 = (v29->__vftable[3].~OSMetaClassBase)(v29, "channel4");
        v43 = OSMetaClassBase::safeMetaCast(v42, v11);
        v44 = this[28];
        v50[0] = _NSConcreteStackBlock;
        v50[1] = 0x40000000;
        v50[2] = ___ZN40PSVR2SenseDeviceHIDEventServerUserClient23applyTrackingPropertiesEP12OSDictionaryS1__block_invoke_5;
        v50[3] = &__block_descriptor_tmp_127;
        v50[4] = this;
        v50[5] = v49;
        v50[6] = v48;
        v50[7] = v47;
        v50[8] = v34;
        v50[9] = v36;
        v50[10] = v39;
        v50[11] = v41;
        v50[12] = v43;
        v50[13] = v9;
        v45 = IOCommandGate::runActionBlock(v44, v50);
        anObject = OSNumber::withNumber(v45, 0x20u);
        OSDictionary::setObject(v38, "Tracking", &anObject);
        if (anObject)
        {
          (anObject->release_0)(anObject);
        }
      }
    }

    else
    {
      PSVR2SenseDeviceHIDEventServerUserClient::applyTrackingProperties();
    }
  }

  else
  {
    PSVR2SenseDeviceHIDEventServerUserClient::applyTrackingProperties();
  }

  return 0;
}

uint64_t PSVR2SenseDeviceHIDEventServerUserClient::applyHapticsProperties(IOCommandGate **this, OSDictionary *a2, OSDictionary *a3)
{
  v6 = ((*this)[11].__vftable)(this);
  v7 = OSMetaClassBase::safeMetaCast(v6, &PSVR2SenseDevice::gMetaClass);
  if (v7)
  {
    SharedPage = PSVR2SenseDevice::getSharedPage(v7);
    if (SharedPage)
    {
      v9 = SharedPage;
      v10 = (a2->getObject_1)(a2, "Haptics");
      v11 = OSMetaClassBase::safeMetaCast(v10, OSDictionary::metaClass);
      if (v11)
      {
        v12 = v11;
        v13 = (v11->__vftable[3].~OSMetaClassBase)(v11, "rumbleMode");
        v14 = OSNumber::metaClass;
        v15 = OSMetaClassBase::safeMetaCast(v13, OSNumber::metaClass);
        v16 = (v12->__vftable[3].~OSMetaClassBase)(v12, "rumbleStrength");
        v17 = OSMetaClassBase::safeMetaCast(v16, v14);
        v18 = (v12->__vftable[3].~OSMetaClassBase)(v12, "rumbleMaxAmplitude");
        v19 = OSMetaClassBase::safeMetaCast(v18, v14);
        v20 = this[28];
        action[0] = _NSConcreteStackBlock;
        action[1] = 0x40000000;
        action[2] = ___ZN40PSVR2SenseDeviceHIDEventServerUserClient22applyHapticsPropertiesEP12OSDictionaryS1__block_invoke;
        action[3] = &__block_descriptor_tmp_133;
        action[4] = this;
        action[5] = v15;
        action[6] = v17;
        action[7] = v19;
        action[8] = v9;
        v21 = IOCommandGate::runActionBlock(v20, action);
        v23 = OSNumber::withNumber(v21, 0x20u);
        OSDictionary::setObject(a3, "Haptics", &v23);
        if (v23)
        {
          (v23->release_0)(v23);
        }
      }
    }

    else
    {
      PSVR2SenseDeviceHIDEventServerUserClient::applyHapticsProperties();
    }
  }

  else
  {
    PSVR2SenseDeviceHIDEventServerUserClient::applyHapticsProperties();
  }

  return 0;
}

uint64_t ___ZN40PSVR2SenseDeviceHIDEventServerUserClient24applyTransportPropertiesEP12OSDictionaryS1__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = (*(**(a1 + 48) + 168))(*(a1 + 48));
  v4 = *(a1 + 40);
  *(v4 + 152) = v3;
  *(v4 + 148) = 1;
  v5 = _gc_log_psvr2();
  RegistryEntryID = IORegistryEntry::getRegistryEntryID(v2);
  _os_log_internal(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "[%#010llx] Apply 'Transport.ReportInterval' override {\n\treportInterval = %u\n}", RegistryEntryID, *(*(a1 + 40) + 152));
  return 0;
}

uint64_t ___ZN40PSVR2SenseDeviceHIDEventServerUserClient24applyTransportPropertiesEP12OSDictionaryS1__block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = (*(**(a1 + 48) + 152))(*(a1 + 48)) != 0;
  v4 = *(a1 + 40);
  *(v4 + 200) = v3;
  *(v4 + 199) = 1;
  v5 = _gc_log_psvr2();
  RegistryEntryID = IORegistryEntry::getRegistryEntryID(v2);
  _os_log_internal(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "[%#010llx] Apply 'Transport.TimeSynchronization' override {\n\ttimeSynchronization = %d\n}", RegistryEntryID, *(*(a1 + 40) + 200) & 1);
  return 0;
}

uint64_t ___ZN40PSVR2SenseDeviceHIDEventServerUserClient24applyTransportPropertiesEP12OSDictionaryS1__block_invoke_3(void *a1)
{
  v3 = a1[4];
  v2 = a1[5];
  v4 = a1[6];
  if (v2)
  {
    *(v4 + 164) = 1;
    v5 = (*(*v2 + 168))(v2);
    v7 = a1[6];
    v6 = a1[7];
    *(v7 + 168) = v5;
    if (v6)
    {
      LODWORD(v6) = (*(*v6 + 168))(v6);
      v7 = a1[6];
    }

    *(v7 + 172) = v6;
    v8 = _gc_log_psvr2();
    RegistryEntryID = IORegistryEntry::getRegistryEntryID(v3);
    _os_log_internal(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "[%#010llx] Apply 'Transport.InputDelay' override {\n\t inputDelay {\n\t\t timeUS = %u\n\t\t uncertaintyUS = %u\n\t}\n}", RegistryEntryID, *(a1[6] + 168), *(a1[6] + 172));
  }

  else
  {
    *(v4 + 164) = 0;
    v10 = _gc_log_psvr2();
    v11 = IORegistryEntry::getRegistryEntryID(v3);
    _os_log_internal(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "[%#010llx] Remove 'Transport.InputDelay' override", v11);
  }

  return 0;
}