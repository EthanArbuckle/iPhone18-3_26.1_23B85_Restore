uint64_t AppleUserECMData::Start_Impl(IOService *this, IOService *a2)
{
  v15 = 0;
  IOParseBootArgNumber("AppleUserECM-debug", &v15, 4);
  if (v15)
  {
    sub_100004804();
    return v16;
  }

  v4 = OSMetaClassBase::safeMetaCast(a2, gIOUSBHostInterfaceMetaClass);
  if (!v4)
  {
    sub_100004A14();
    return v16;
  }

  v5 = v4;
  v6 = (v4->__vftable[1].release)(v4);
  if (!v6)
  {
    sub_100004964();
    return v16;
  }

  v7 = v6;
  v8 = (v5->__vftable[1].isEqualTo)(v5, v6);
  if (v8)
  {
    v9 = v8;
    matched = AppleUserECMData::matchControlInterfaceWithUnionFunctionalDescriptor(v8, v7, v8);
    v11 = matched;
    v12 = AppleUserECMData::matchControlInterfaceWithInterfaceAssociationDescriptor(matched, v7, v9);
    if (v11 || v12)
    {
      v13 = IOService::Start(this, a2, &IOService::_Dispatch);
    }

    else
    {
      v13 = 3758097084;
    }
  }

  else
  {
    sub_1000048B4();
    v13 = v16;
  }

  IOUSBHostFreeDescriptor(v7);
  return v13;
}

BOOL AppleUserECMData::matchControlInterfaceWithUnionFunctionalDescriptor(AppleUserECMData *this, const IOUSBConfigurationDescriptor *configurationDescriptor, const IOUSBInterfaceDescriptor *a3)
{
  InterfaceDescriptor = IOUSBGetNextInterfaceDescriptor(configurationDescriptor, 0);
  v6 = InterfaceDescriptor != 0;
  if (InterfaceDescriptor)
  {
    v7 = InterfaceDescriptor;
    do
    {
      if (v7[2].bDescriptorType == 2 && v7[3].bLength == 6)
      {
        v8 = configurationDescriptor;
        v9 = v7;
        v10 = 0;
        while (1)
        {
          AssociatedDescriptorWithType = IOUSBGetNextAssociatedDescriptorWithType(v8, v9, v10, 0x24u);
          v10 = AssociatedDescriptorWithType;
          if (!AssociatedDescriptorWithType)
          {
            break;
          }

          if (AssociatedDescriptorWithType->bLength >= 4u && AssociatedDescriptorWithType[1].bLength == 6)
          {
            bLength = AssociatedDescriptorWithType[2].bLength;
            if (bLength == a3->bInterfaceNumber)
            {
              if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
              {
                v13 = v7[1].bLength;
                v15[0] = 67109376;
                v15[1] = bLength;
                v16 = 1024;
                v17 = v13;
                _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "AppleUserECMData interface %d belongs to ECM, matched with UNF (%d)\n", v15, 0xEu);
              }

              return v6;
            }
          }

          v8 = configurationDescriptor;
          v9 = v7;
        }
      }

      v7 = IOUSBGetNextInterfaceDescriptor(configurationDescriptor, v7);
      v6 = v7 != 0;
    }

    while (v7);
  }

  return v6;
}

BOOL AppleUserECMData::matchControlInterfaceWithInterfaceAssociationDescriptor(AppleUserECMData *this, const IOUSBConfigurationDescriptor *configurationDescriptor, const IOUSBInterfaceDescriptor *a3)
{
  InterfaceAssociationDescriptor = IOUSBGetNextInterfaceAssociationDescriptor(configurationDescriptor, 0);
  v6 = InterfaceAssociationDescriptor != 0;
  if (InterfaceAssociationDescriptor)
  {
    v7 = InterfaceAssociationDescriptor;
    while (1)
    {
      if (v7[2].bLength == 2 && v7[2].bDescriptorType == 6)
      {
        bInterfaceNumber = a3->bInterfaceNumber;
        if (bInterfaceNumber - 1 == v7[1].bLength && v7[1].bDescriptorType == 2)
        {
          break;
        }
      }

      v7 = IOUSBGetNextInterfaceAssociationDescriptor(configurationDescriptor, v7);
      v6 = v7 != 0;
      if (!v7)
      {
        return v6;
      }
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v10[0] = 67109120;
      v10[1] = bInterfaceNumber;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "AppleUserECMData interface %d belongs to ECM, matched with IAD\n", v10, 8u);
    }
  }

  return v6;
}

void sub_100000BF8(void *a1, os_log_s *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_impl(a1, a2, OS_LOG_TYPE_DEFAULT, a4, &a9, 0x1Cu);
}

void AppleUserECM::free(IOUserNetworkEthernet *this)
{
  v2 = *&this[1].refcount;
  if (v2)
  {
    if ((*v2 & 8) == 0 || !os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT) || (v3 = 136315394, v4 = "AppleUserECM", v5 = 2080, v6 = "free", _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%s::%s: \n", &v3, 0x16u), (v2 = *&this[1].refcount) != 0))
    {
      IOFree(v2, 0x158uLL);
      *&this[1].refcount = 0;
    }
  }

  IOUserNetworkEthernet::free(this);
}

uint64_t AppleUserECM::Start_Impl(IOService *this, IOService *provider)
{
  v25 = 0;
  v38 = 0u;
  v39 = 0u;
  memset(&v24, 0, sizeof(v24));
  v4 = &this[1].OSObjectInterface;
  v5 = this[1].OSObject::OSObjectInterface::__vftable;
  if ((v5->init & 8) != 0 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "AppleUserECM";
    *&buf[12] = 2080;
    *&buf[14] = "Start_Impl";
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%s::%s: \n", buf, 0x16u);
    v5 = v4->__vftable;
  }

  init = v5->init;
  if (v5->init)
  {
    v9 = 3758097131;
    if ((init & 2) != 0 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *&buf[4] = "AppleUserECM";
      *&buf[12] = 2080;
      *&buf[14] = "Start_Impl";
      v10 = "%s::%s: driver disabled via boot-arg; aborting\n";
      v11 = 22;
LABEL_53:
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v10, buf, v11);
      return v9;
    }

    return v9;
  }

  v7 = IOService::Start(this, provider, &IOUserNetworkEthernet::_Dispatch);
  v8 = this[1].OSObject::OSObjectInterface::__vftable;
  if (v7)
  {
    v9 = v7;
    if (v8 && (v8->init & 2) != 0 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      *&buf[4] = "AppleUserECM";
      *&buf[12] = 2080;
      *&buf[14] = "Start_Impl";
      *&buf[22] = 1024;
      v27 = v9;
      v10 = "%s::%s: Start(provider, SUPERDISPATCH) returned 0x%08x\n";
LABEL_52:
      v11 = 28;
      goto LABEL_53;
    }

    return v9;
  }

  ActionTxPacketsAvailable = OSObject::CopyDispatchQueue(this, "Default", &v8->free, 0);
  if (ActionTxPacketsAvailable)
  {
    goto LABEL_55;
  }

  ActionTxPacketsAvailable = IODispatchQueue::Create("AppleUserECMRxDispatchQueue", 0, 0, &v4->__vftable[1]);
  if (ActionTxPacketsAvailable)
  {
    goto LABEL_55;
  }

  ActionTxPacketsAvailable = OSObject::SetDispatchQueue(this, "rxDispatchQueue", this[1].OSObject::OSObjectInterface::__vftable[1].init, 0);
  if (ActionTxPacketsAvailable)
  {
    goto LABEL_55;
  }

  v4->__vftable[1].free = OSMetaClassBase::safeMetaCast(provider, gIOUSBHostInterfaceMetaClass);
  free = v4->__vftable[1].free;
  if (!free)
  {
    sub_1000078C8(buf);
    v9 = *buf;
    goto LABEL_48;
  }

  (*(*free + 8))(free);
  if (AppleUserECM::findDataInterface(this, this[1].OSObject::OSObjectInterface::__vftable[1].free, &this[1].OSObject::OSObjectInterface::__vftable[2]))
  {
    sub_1000070D0();
LABEL_68:
    v9 = *buf;
    goto LABEL_47;
  }

  if (IOUSBHostInterface::Open(this[1].OSObject::OSObjectInterface::__vftable[1].free, this, 0, 0, 0))
  {
    sub_100007184();
    goto LABEL_68;
  }

  if (IOUSBHostInterface::Open(this[1].OSObject::OSObjectInterface::__vftable[2].init, this, 0, 0, 0))
  {
    sub_100007238();
    goto LABEL_68;
  }

  if (IOUSBHostInterface::SelectAlternateSetting(v4->__vftable[2].init, 0, 0))
  {
    sub_1000072EC();
    goto LABEL_68;
  }

  v14 = IOUSBHostInterface::SelectAlternateSetting(v4->__vftable[2].init, v4->__vftable[4].init, 0);
  if (v14)
  {
    sub_1000073A0(v4, v14, buf);
    goto LABEL_68;
  }

  ActionTxPacketsAvailable = AppleUserECM::activate(this);
  if (ActionTxPacketsAvailable)
  {
LABEL_55:
    v9 = ActionTxPacketsAvailable;
    goto LABEL_47;
  }

  AppleUserECM::updateEthernetPacketFilter(this);
  if (AppleUserECM::getFunctionalDescriptors(this))
  {
    sub_100007490();
    goto LABEL_68;
  }

  v15 = v4->__vftable;
  if ((v4->init & 8) != 0 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v16 = BYTE4(v15[19].init);
    v17 = BYTE5(v15[19].init);
    v18 = BYTE6(v15[19].init);
    init_high = HIBYTE(v15[19].init);
    free_low = LOBYTE(v15[19].free);
    v21 = BYTE1(v15[19].free);
    *buf = 136316930;
    *&buf[4] = "AppleUserECM";
    *&buf[12] = 2080;
    *&buf[14] = "Start_Impl";
    *&buf[22] = 1024;
    v27 = v16;
    v28 = 1024;
    v29 = v17;
    v30 = 1024;
    v31 = v18;
    v32 = 1024;
    v33 = init_high;
    v34 = 1024;
    v35 = free_low;
    v36 = 1024;
    v37 = v21;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%s::%s: Calling RegisterEthernetInterface(MAC address = %02x:%02x:%02x:%02x:%02x:%02x\n", buf, 0x3Au);
    v15 = v4->__vftable;
  }

  v24.packetCount = v15[21].init;
  v24.bufferCount = v24.packetCount;
  *&v24.bufferSize = 0x100000800;
  v24.poolFlags = 0x10000000;
  if (IOUserNetworkPacketBufferPool::CreateWithOptions(0, "AppleUserECM", &v24, &v15[15]))
  {
    sub_100007544();
    goto LABEL_68;
  }

  if (IOUserNetworkTxCompletionQueue::Create(this[1].OSObject::OSObjectInterface::__vftable[15].init, this, this[1].OSObject::OSObjectInterface::__vftable[20].free, 0, this[1].free, &this[1].OSObject::OSObjectInterface::__vftable[16]))
  {
    sub_1000075F8();
    goto LABEL_68;
  }

  if (IOUserNetworkTxSubmissionQueue::Create(this[1].OSObject::OSObjectInterface::__vftable[15].init, this, this[1].OSObject::OSObjectInterface::__vftable[20].free, 0, this[1].free, &this[1].OSObject::OSObjectInterface::__vftable[15].free))
  {
    sub_1000076AC();
    goto LABEL_68;
  }

  ActionTxPacketsAvailable = AppleUserECM::CreateActionTxPacketsAvailable(this, 8uLL, &this[1].OSObject::OSObjectInterface::__vftable[17].free);
  if (ActionTxPacketsAvailable)
  {
    goto LABEL_55;
  }

  ActionTxPacketsAvailable = (*(*v4->__vftable[15].free + 72))(v4->__vftable[15].free, &v25);
  if (ActionTxPacketsAvailable)
  {
    goto LABEL_55;
  }

  v9 = IODataQueueDispatchSource::SetDataAvailableHandler(v25, v4->__vftable[17].free, 0);
  if (v25)
  {
    (v25->release)(v25);
    v25 = 0;
  }

  if (v9)
  {
    goto LABEL_47;
  }

  if (IOUserNetworkRxSubmissionQueue::Create(this[1].OSObject::OSObjectInterface::__vftable[15].init, this, HIDWORD(this[1].OSObject::OSObjectInterface::__vftable[20].free), 0, this[1].free, &this[1].OSObject::OSObjectInterface::__vftable[16].free))
  {
    sub_100007760();
    goto LABEL_68;
  }

  if (IOUserNetworkRxCompletionQueue::Create(this[1].OSObject::OSObjectInterface::__vftable[15].init, this, HIDWORD(this[1].OSObject::OSObjectInterface::__vftable[20].free), 0, this[1].free, &this[1].OSObject::OSObjectInterface::__vftable[17]))
  {
    sub_100007814();
    goto LABEL_68;
  }

  ActionTxPacketsAvailable = AppleUserECM::CreateActionRxPacketsAvailable(this, 8uLL, &this[1].OSObject::OSObjectInterface::__vftable[18]);
  if (ActionTxPacketsAvailable)
  {
    goto LABEL_55;
  }

  ActionTxPacketsAvailable = (*(*v4->__vftable[16].free + 72))(v4->__vftable[16].free, &v25);
  if (ActionTxPacketsAvailable)
  {
    goto LABEL_55;
  }

  v9 = IODataQueueDispatchSource::SetDataAvailableHandler(v25, v4->__vftable[18].init, 0);
  if (v25)
  {
    (v25->release)(v25);
    v25 = 0;
  }

  if (v9)
  {
    goto LABEL_47;
  }

  *buf = xmmword_100007F30;
  *&buf[16] = 0x10003600100030;
  v27 = 1048631;
  ActionTxPacketsAvailable = (this->OSObject::OSMetaClassBase::__vftable[1].release)(this, buf, 7);
  if (ActionTxPacketsAvailable)
  {
    goto LABEL_55;
  }

  ActionTxPacketsAvailable = IOUserNetworkEthernet::SelectMediaType(this, 0x22u, 0);
  if (ActionTxPacketsAvailable)
  {
    goto LABEL_55;
  }

  ActionTxPacketsAvailable = IOUserNetworkEthernet::SetSoftwareVlanSupport(this, 1);
  if (ActionTxPacketsAvailable)
  {
    goto LABEL_55;
  }

  v22 = this[1].OSObject::OSObjectInterface::__vftable;
  v38 = *&v22[15].free;
  v39 = *&v22[16].free;
  ActionTxPacketsAvailable = (this->OSObject::OSMetaClassBase::__vftable[1].getMetaClass)(this, HIDWORD(v22[19].init) | (LOWORD(v22[19].free) << 32), v22[15].init, &v38, 4);
  if (ActionTxPacketsAvailable)
  {
    goto LABEL_55;
  }

  v9 = IOService::RegisterService(this, 0);
  if (v9)
  {
LABEL_47:
    IOService::Stop(this, provider, 0);
  }

LABEL_48:
  if (v4->__vftable && (v4->init & 8) != 0 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    *&buf[4] = "AppleUserECM";
    *&buf[12] = 2080;
    *&buf[14] = "Start_Impl";
    *&buf[22] = 1024;
    v27 = v9;
    v10 = "%s::%s: 0x%08x\n";
    goto LABEL_52;
  }

  return v9;
}

uint64_t AppleUserECM::updateEthernetPacketFilter(AppleUserECM *this)
{
  v2 = *(this + 9);
  if (*(v2 + 296) == 1)
  {
    v3 = *(v2 + 324);
  }

  else
  {
    v3 = 0;
  }

  if ((*v2 & 8) != 0 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(v2 + 324);
    *buf = 136315906;
    v9 = "AppleUserECM";
    v10 = 2080;
    v11 = "updateEthernetPacketFilter";
    v12 = 1024;
    v13 = v4;
    v14 = 1024;
    v15 = v3;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%s::%s: filter = 0x%04x / 0x%04x\n", buf, 0x22u);
    v2 = *(this + 9);
  }

  v5 = (*(**(v2 + 24) + 104))(*(v2 + 24), 33, 67, v3, *(v2 + 65), 0, 0, 0, 5000);
  if (v5)
  {
    v6 = *(this + 9);
    if (v6)
    {
      if ((*v6 & 2) != 0 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        v9 = "AppleUserECM";
        v10 = 2080;
        v11 = "updateEthernetPacketFilter";
        v12 = 1024;
        v13 = v3;
        v14 = 1024;
        v15 = v5;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%s::%s: updateEthernetPacketFilter() for 0x%x failed with 0x%x\n", buf, 0x22u);
      }
    }
  }

  return v5;
}

uint64_t AppleUserECM::reportMediaCapabilities(AppleUserECM *this)
{
  v2 = xmmword_100007F30;
  v3 = 0x10003600100030;
  v4 = 1048631;
  return (*(*this + 72))(this, &v2, 7);
}

uint64_t AppleUserECM::Stop_Impl(IOService *this, IOService *provider)
{
  v4 = this[1].OSObject::OSObjectInterface::__vftable;
  if ((v4->init & 8) != 0 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v22 = "AppleUserECM";
    v23 = 2080;
    v24 = "Stop_Impl";
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%s::%s: \n", buf, 0x16u);
    v4 = this[1].OSObject::OSObjectInterface::__vftable;
  }

  if (LOBYTE(v4[18].free) == 1)
  {
    sub_100007980();
  }

  init = v4[2].init;
  if (init)
  {
    IOUSBHostInterface::Close(init, this, 0, 0);
    v4 = this[1].OSObject::OSObjectInterface::__vftable;
  }

  free = v4[1].free;
  if (free)
  {
    IOUSBHostInterface::Close(free, this, 0, 0);
    v4 = this[1].OSObject::OSObjectInterface::__vftable;
  }

  v7 = v4[1].init;
  if (v7)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 0x40000000;
    block[2] = sub_100001C00;
    block[3] = &unk_10000C298;
    block[4] = this;
    IODispatchQueue::DispatchSync(v7, block);
    v4 = this[1].OSObject::OSObjectInterface::__vftable;
  }

  v8 = v4[17].init;
  if (v8)
  {
    (*(*v8 + 16))(v8);
    this[1].OSObject::OSObjectInterface::__vftable[17].init = 0;
    v4 = this[1].OSObject::OSObjectInterface::__vftable;
  }

  v9 = v4[16].free;
  if (v9)
  {
    (*(*v9 + 16))(v9);
    this[1].OSObject::OSObjectInterface::__vftable[16].free = 0;
    v4 = this[1].OSObject::OSObjectInterface::__vftable;
  }

  v10 = v4[16].init;
  if (v10)
  {
    (*(*v10 + 16))(v10);
    this[1].OSObject::OSObjectInterface::__vftable[16].init = 0;
    v4 = this[1].OSObject::OSObjectInterface::__vftable;
  }

  v11 = v4[15].free;
  if (v11)
  {
    (*(*v11 + 16))(v11);
    this[1].OSObject::OSObjectInterface::__vftable[15].free = 0;
    v4 = this[1].OSObject::OSObjectInterface::__vftable;
  }

  v12 = v4[18].init;
  if (v12)
  {
    (*(*v12 + 16))(v12);
    this[1].OSObject::OSObjectInterface::__vftable[18].init = 0;
    v4 = this[1].OSObject::OSObjectInterface::__vftable;
  }

  v13 = v4[17].free;
  if (v13)
  {
    (*(*v13 + 16))(v13);
    this[1].OSObject::OSObjectInterface::__vftable[17].free = 0;
    v4 = this[1].OSObject::OSObjectInterface::__vftable;
  }

  v14 = v4[15].init;
  if (v14)
  {
    (*(*v14 + 16))(v14);
    this[1].OSObject::OSObjectInterface::__vftable[15].init = 0;
    v4 = this[1].OSObject::OSObjectInterface::__vftable;
  }

  v15 = v4[1].free;
  if (v15)
  {
    (*(*v15 + 16))(v15);
    this[1].OSObject::OSObjectInterface::__vftable[1].free = 0;
    v4 = this[1].OSObject::OSObjectInterface::__vftable;
  }

  v16 = v4[2].init;
  if (v16)
  {
    (*(*v16 + 16))(v16);
    this[1].OSObject::OSObjectInterface::__vftable[2].init = 0;
    v4 = this[1].OSObject::OSObjectInterface::__vftable;
  }

  v17 = v4[1].init;
  if (v17)
  {
    (*(*v17 + 16))(v17);
    this[1].OSObject::OSObjectInterface::__vftable[1].init = 0;
    v4 = this[1].OSObject::OSObjectInterface::__vftable;
  }

  v18 = v4->free;
  if (v18)
  {
    (*(*v18 + 16))(v18);
    this[1].free = 0;
  }

  return IOService::Stop(this, provider, &IOUserNetworkEthernet::_Dispatch);
}

uint64_t AppleUserECM::deactivate(AppleUserECM *this)
{
  v2 = *(this + 9);
  v3 = *(v2 + 128);
  if (v3)
  {
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 0x40000000;
    handler[2] = sub_100002E2C;
    handler[3] = &unk_10000C378;
    handler[4] = this;
    IODispatchSource::Cancel(v3, handler, 0);
    v2 = *(this + 9);
  }

  v4 = *(v2 + 136);
  if (v4)
  {
    (*(*v4 + 16))(v4);
    *(*(this + 9) + 136) = 0;
    v2 = *(this + 9);
  }

  v5 = *(v2 + 72);
  if (v5)
  {
    (*(*v5 + 16))(v5);
    *(*(this + 9) + 72) = 0;
    v2 = *(this + 9);
  }

  v6 = *(v2 + 112);
  if (v6)
  {
    (*(*v6 + 16))(v6);
    *(*(this + 9) + 112) = 0;
    v2 = *(this + 9);
  }

  v7 = *(v2 + 80);
  if (v7)
  {
    (*(*v7 + 16))(v7);
    *(*(this + 9) + 80) = 0;
    v2 = *(this + 9);
  }

  *(v2 + 120) = 0;
  v8 = *(this + 9);
  v9 = *(v8 + 192);
  if (v9)
  {
    (*(*v9 + 16))(v9);
    *(*(this + 9) + 192) = 0;
    v8 = *(this + 9);
  }

  v10 = *(v8 + 224);
  if (v10)
  {
    (*(*v10 + 16))(v10);
    *(*(this + 9) + 224) = 0;
    v8 = *(this + 9);
  }

  AppleUserECM::freeUSBPackets(this, *(v8 + 200), *(v8 + 232));
  *(*(this + 9) + 200) = 0;
  *(*(this + 9) + 212) = 0;
  *(*(this + 9) + 208) = 0;
  v11 = *(this + 9);
  v12 = *(v11 + 144);
  if (v12)
  {
    (*(*v12 + 16))(v12);
    *(*(this + 9) + 144) = 0;
    v11 = *(this + 9);
  }

  v13 = *(v11 + 176);
  if (v13)
  {
    (*(*v13 + 16))(v13);
    *(*(this + 9) + 176) = 0;
    v11 = *(this + 9);
  }

  AppleUserECM::freeUSBPackets(this, *(v11 + 160), *(v11 + 184));
  *(*(this + 9) + 160) = 0;
  *(*(this + 9) + 172) = 0;
  result = *(*(this + 9) + 40);
  if (result)
  {
    result = (*(*result + 16))(result);
    *(*(this + 9) + 40) = 0;
  }

  return result;
}

uint64_t AppleUserECM::SetInterfaceEnable_Impl(AppleUserECM *this, uint64_t a2)
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2000000000;
  v14 = 0;
  v4 = *(this + 9);
  if ((*v4 & 8) != 0 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v16 = "AppleUserECM";
    v17 = 2080;
    v18 = "SetInterfaceEnable_Impl";
    v19 = 1024;
    v20 = a2;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%s::%s: isEnable %d\n", buf, 0x1Cu);
    v4 = *(this + 9);
  }

  v5 = *(v4 + 16);
  block[0] = _NSConcreteStackBlock;
  block[1] = 1107296256;
  block[2] = sub_100002118;
  block[4] = &v11;
  block[5] = this;
  v10 = a2;
  block[3] = &unk_10000C2B8;
  IODispatchQueue::DispatchSync(v5, block);
  v6 = *(this + 9);
  if (v6 && (*v6 & 8) != 0 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(v12 + 6);
    *buf = 136315650;
    v16 = "AppleUserECM";
    v17 = 2080;
    v18 = "SetInterfaceEnable_Impl";
    v19 = 1024;
    v20 = v7;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%s::%s: 0x%08x\n", buf, 0x1Cu);
  }

  if (a2)
  {
    a2 = *(v12 + 6);
  }

  else
  {
    *(v12 + 6) = 0;
  }

  ++qword_100010000;
  _Block_object_dispose(&v11, 8);
  return a2;
}

uint64_t sub_100002118(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (*(a1 + 48) != 1)
  {
    return sub_1000079AC(v1);
  }

  *(*(v1 + 9) + 296) = 1;
  *(*(*(a1 + 32) + 8) + 24) = AppleUserECM::updateEthernetPacketFilter(v1);
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    return sub_1000079AC(v1);
  }

  *(*(*(a1 + 32) + 8) + 24) = IOUserNetworkPacketQueue::SetEnable(*(*(v1 + 9) + 248), 1, 0);
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    return sub_1000079AC(v1);
  }

  *(*(*(a1 + 32) + 8) + 24) = IOUserNetworkPacketQueue::SetEnable(*(*(v1 + 9) + 256), 1, 0);
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    return sub_1000079AC(v1);
  }

  *(*(*(a1 + 32) + 8) + 24) = IOUserNetworkPacketQueue::SetEnable(*(*(v1 + 9) + 264), 1, 0);
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    return sub_1000079AC(v1);
  }

  v3 = *(v1 + 9);
  if ((*v3 & 8) != 0 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 48);
    v6 = 136315650;
    v7 = "AppleUserECM";
    v8 = 2080;
    v9 = "SetInterfaceEnable_Impl_block_invoke";
    v10 = 1024;
    v11 = v4;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%s::%s: rxCompletionQueue isEnable %d\n", &v6, 0x1Cu);
    v3 = *(v1 + 9);
  }

  *(*(*(a1 + 32) + 8) + 24) = IOUserNetworkPacketQueue::SetEnable(*(v3 + 272), 1, 0);
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    return sub_1000079AC(v1);
  }

  *(*(*(a1 + 32) + 8) + 24) = IOUserNetworkEthernet::SelectMediaType(v1, 0x20u, 0);
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    return sub_1000079AC(v1);
  }

  result = AppleUserECM::readInterruptPipe(v1);
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    return sub_1000079AC(v1);
  }

  return result;
}

uint64_t AppleUserECM::SetPromiscuousModeEnable_Impl(AppleUserECM *this, __int16 a2)
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2000000000;
  v12 = -536870198;
  v4 = *(this + 9);
  if (v4 && (*v4 & 8) != 0 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v14 = "AppleUserECM";
    v15 = 2080;
    v16 = "SetPromiscuousModeEnable_Impl";
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%s::%s: \n", buf, 0x16u);
  }

  *(*(this + 9) + 324) = *(*(this + 9) + 324) & 0xFFFE | a2;
  v5 = *(*(this + 9) + 16);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 1107296256;
  v8[2] = sub_1000024FC;
  v8[4] = &v9;
  v8[5] = this;
  v8[3] = &unk_10000C2E8;
  IODispatchQueue::DispatchSync(v5, v8);
  v6 = *(v10 + 6);
  _Block_object_dispose(&v9, 8);
  return v6;
}

uint64_t sub_1000024FC(uint64_t a1)
{
  result = AppleUserECM::updateEthernetPacketFilter(*(a1 + 40));
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t AppleUserECM::SetAllMulticastModeEnable_Impl(AppleUserECM *this, int a2)
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2000000000;
  v13 = -536870198;
  v4 = *(this + 9);
  if (v4 && (*v4 & 8) != 0 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v15 = "AppleUserECM";
    v16 = 2080;
    v17 = "SetAllMulticastModeEnable_Impl";
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%s::%s: \n", buf, 0x16u);
  }

  if (a2)
  {
    v5 = 2;
  }

  else
  {
    v5 = 0;
  }

  *(*(this + 9) + 324) = *(*(this + 9) + 324) & 0xFFFD | v5;
  v6 = *(*(this + 9) + 16);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_1000026CC;
  v9[4] = &v10;
  v9[5] = this;
  v9[3] = &unk_10000C318;
  IODispatchQueue::DispatchSync(v6, v9);
  v7 = *(v11 + 6);
  _Block_object_dispose(&v10, 8);
  return v7;
}

uint64_t sub_1000026CC(uint64_t a1)
{
  result = AppleUserECM::updateEthernetPacketFilter(*(a1 + 40));
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t sub_100002700(uint64_t a1)
{
  result = AppleUserECM::updateEthernetPacketFilter(*(a1 + 40));
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t AppleUserECM::SelectMediaType_Impl(AppleUserECM *this, int a2)
{
  v4 = *(this + 9);
  if ((*v4 & 8) != 0 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315394;
    v8 = "AppleUserECM";
    v9 = 2080;
    v10 = "SelectMediaType_Impl";
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%s::%s: \n", &v7, 0x16u);
    v4 = *(this + 9);
  }

  *(v4 + 304) = a2;
  *(*(this + 9) + 300) = 1;
  *(*(this + 9) + 297) = 0;
  v5 = *(this + 9);
  if ((*(v5 + 304) | 2) != 0x22)
  {
    return 3758097095;
  }

  (*(*this + 128))(this, *(v5 + 300));
  return 0;
}

uint64_t AppleUserECM::TxPacketsAvailable_Impl(AppleUserECM *this, OSAction *a2)
{
  v3 = *(this + 9);
  if ((*v3 & 8) != 0 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v6 = "AppleUserECM";
    v7 = 2080;
    v8 = "TxPacketsAvailable_Impl";
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%s::%s: \n", buf, 0x16u);
    v3 = *(this + 9);
  }

  if (v3[296])
  {
    return AppleUserECM::handleTxPacketsAvailable(this);
  }

  else
  {
    return IOLog("AppleUserECM::TxPacketsAvailable() called with isEnabledCounter=%lld and isEnabled=false\n", qword_100010000);
  }
}

void AppleUserECM::handleRxPacketsAvailable(AppleUserECM *this)
{
  v2 = *(this + 9);
  v3 = *(v2 + 216);
  if ((*v2 & 8) != 0 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v13 = "AppleUserECM";
    v14 = 2080;
    v15 = "handleRxPacketsAvailable";
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%s::%s: \n", buf, 0x16u);
  }

  if (v3)
  {
    do
    {
      if (v3 >= 16)
      {
        v4 = 16;
      }

      else
      {
        v4 = v3;
      }

      *buf = 0;
      v5 = IOUSBHostPipe::AsyncIOBundled(*(*(this + 9) + 192), *(*(this + 9) + 208), v4, buf, dword_100007F90, v4, *(*(this + 9) + 224), 0, 0);
      v6 = *buf;
      *(*(this + 9) + 216) -= *buf;
      *(*(this + 9) + 208) += v6;
      v7 = *(this + 9);
      v8 = *(v7 + 208);
      v9 = *(v7 + 232);
      v10 = v8 >= v9;
      v11 = v8 - v9;
      if (v10)
      {
        *(v7 + 208) = v11;
      }

      v3 -= v4;
    }

    while (v3 && !v5);
  }
}

void AppleUserECM::RxComplete_Impl(AppleUserECM *this, OSAction *a2, unsigned int a3, unsigned int a4, const unsigned int *a5, int a6, const int *a7)
{
  memset(v34, 0, sizeof(v34));
  v11 = *(this + 9);
  v12 = *(v11 + 212);
  if ((*v11 & 8) != 0 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v31 = "AppleUserECM";
    v32 = 2080;
    v33 = "RxComplete_Impl";
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%s::%s: \n", buf, 0x16u);
    v11 = *(this + 9);
  }

  if (*(v11 + 296) == 1)
  {
    v13 = 0;
    if (a4)
    {
      v14 = a7;
      v15 = a5;
      v16 = a4;
      do
      {
        if (!*v14++)
        {
          if (*v15)
          {
            v13 = (v13 + 1);
          }

          else
          {
            v13 = v13;
          }
        }

        ++v15;
        --v16;
      }

      while (v16);
    }

    v18 = (*(**(v11 + 264) + 104))(*(v11 + 264), v34, v13);
    if (a4)
    {
      v19 = 0;
      v29 = a4;
      v20 = a4;
      do
      {
        if (*a5)
        {
          v21 = *a7 || v19 >= v18;
          if (!v21)
          {
            (*(**(v34 + v19) + 232))(*(v34 + v19), 0);
            (*(**(v34 + v19) + 216))(*(v34 + v19), *a5);
            v22 = (*(**(v34 + v19) + 184))(*(v34 + v19));
            ++v19;
            v23 = *(*(this + 9) + 200) + 24 * v12;
            memcpy(v22, *(v23 + 8), *a5);
            (*(*this + 384))(this, *(v23 + 8), *a5);
          }
        }

        v24 = *(this + 9);
        if (v12 + 1 == *(v24 + 232))
        {
          v12 = 0;
        }

        else
        {
          ++v12;
        }

        ++a7;
        ++a5;
        --v20;
      }

      while (v20);
      a4 = v29;
    }

    else
    {
      v24 = *(this + 9);
    }

    *(v24 + 212) = v12;
    *(*(this + 9) + 216) += a4;
    (*(**(*(this + 9) + 272) + 88))(*(*(this + 9) + 272), v34, v18);
    if (v18 >= v13)
    {
      AppleUserECM::handleRxPacketsAvailable(this);
    }
  }

  else
  {
    *(v11 + 216) += a4;
    *(*(this + 9) + 212) += a4;
    v25 = *(this + 9);
    v26 = *(v25 + 212);
    v27 = *(v25 + 232);
    v21 = v26 >= v27;
    v28 = v26 - v27;
    if (v21)
    {
      *(v25 + 212) = v28;
    }
  }
}

uint64_t sub_100002E2C(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = *(*(v1 + 72) + 128);
  if (result)
  {
    result = (*(*result + 16))(result);
    *(*(v1 + 72) + 128) = 0;
  }

  return result;
}

BOOL AppleUserECM::findDataInterfaceWithUnionFunctionalDescriptor(AppleUserECM *this, const IOUSBConfigurationDescriptor *configurationDescriptor, const IOUSBDescriptorHeader *parentDescriptor, unsigned __int8 *a4)
{
  AssociatedDescriptorWithType = IOUSBGetNextAssociatedDescriptorWithType(configurationDescriptor, parentDescriptor, 0, 0x24u);
  v9 = AssociatedDescriptorWithType != 0;
  if (AssociatedDescriptorWithType)
  {
    v10 = AssociatedDescriptorWithType;
    while (v10->bLength < 4u || v10[1].bLength != 6)
    {
      v10 = IOUSBGetNextAssociatedDescriptorWithType(configurationDescriptor, parentDescriptor, v10, 0x24u);
      v9 = v10 != 0;
      if (!v10)
      {
        return v9;
      }
    }

    bLength = v10[2].bLength;
    *a4 = bLength;
    v13 = *(this + 9);
    if (v13 && (*v13 & 2) != 0 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v14 = parentDescriptor[1].bLength;
      v15 = 136315906;
      v16 = "AppleUserECM";
      v17 = 2080;
      v18 = "findDataInterfaceWithUnionFunctionalDescriptor";
      v19 = 1024;
      v20 = v14;
      v21 = 1024;
      v22 = bLength;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%s::%s: AppleUserECM interface %d found suitable UNF (%d)\n", &v15, 0x22u);
    }
  }

  return v9;
}

BOOL AppleUserECM::findDataInterfaceWithInterfaceAssociationDescriptor(AppleUserECM *this, const IOUSBConfigurationDescriptor *configurationDescriptor, const IOUSBInterfaceDescriptor *a3, unsigned __int8 *a4)
{
  InterfaceAssociationDescriptor = IOUSBGetNextInterfaceAssociationDescriptor(configurationDescriptor, 0);
  v9 = InterfaceAssociationDescriptor != 0;
  if (InterfaceAssociationDescriptor)
  {
    v10 = InterfaceAssociationDescriptor;
    while (1)
    {
      if (v10[2].bLength == 2 && v10[2].bDescriptorType == 6)
      {
        bLength = v10[1].bLength;
        if (bLength == a3->bInterfaceNumber && v10[1].bDescriptorType == 2)
        {
          break;
        }
      }

      v10 = IOUSBGetNextInterfaceAssociationDescriptor(configurationDescriptor, v10);
      v9 = v10 != 0;
      if (!v10)
      {
        return v9;
      }
    }

    *a4 = bLength + 1;
    v13 = *(this + 9);
    if (v13 && (*v13 & 2) != 0 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      bInterfaceNumber = a3->bInterfaceNumber;
      v15 = 136315650;
      v16 = "AppleUserECM";
      v17 = 2080;
      v18 = "findDataInterfaceWithInterfaceAssociationDescriptor";
      v19 = 1024;
      v20 = bInterfaceNumber;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%s::%s: AppleUserECM interface %d found suitable IAD\n", &v15, 0x1Cu);
    }
  }

  return v9;
}

void AppleUserECM::printPacket(AppleUserECM *this, unsigned __int8 *a2, int a3)
{
  if ((**(this + 9) & 4) != 0)
  {
    IOLogBuffer("AppleUserECM::printPacket", a2, a3);
  }
}

void non-virtual thunk toAppleUserECM::printPacket(AppleUserECM *this, unsigned __int8 *a2, int a3)
{
  if ((**(this + 1) & 4) != 0)
  {
    IOLogBuffer("AppleUserECM::printPacket", a2, a3);
  }
}

BOOL sub_1000032BC()
{

  return os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT);
}

uint64_t sub_1000032F4()
{
  v2 = *(v0 + 72);
  v3 = *(v2 + 72);
  v4 = *(v2 + 80);
  v5 = *(v2 + 104);
  v6 = *(v2 + 112);

  return IOUSBHostPipe::AsyncIO(v3, v4, v5, v6, 0, 0);
}

uint64_t sub_100003334(IOMemoryDescriptor *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t *a7)
{

  return IOMemoryDescriptor::Map(a1, 0, 0, 0, a5, a6, a7);
}

uint64_t sub_100003370(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uintptr_t ref, IOUSBHostInterface *interface, IOUSBHostDevice *a18)
{
  v19 = a18;

  return IOUSBHostDevice::CopyInterface(v19, ref, &interface, 0);
}

uint64_t sub_100003390(IOUserNetworkPacketQueue *a1)
{

  return IOUserNetworkPacketQueue::SetEnable(a1, 0, 0);
}

uint64_t AppleUserECMDataMetaClass::New(AppleUserECMDataMetaClass *this, OSObject *a2)
{
  a2->OSMetaClassBase::__vftable = &off_10000C488;
  a2->OSObjectInterface::__vftable = off_10000C4D0;
  return 0;
}

uint64_t AppleUserECMData::_Dispatch(IOService *a1, IORPCMessageMach **a2)
{
  if (IORPCMessageFromMach(*a2, 0)->msgid == 0xAB6F76DDE6D693F2)
  {
    v5 = *a2;
    return IOService::Start_Invoke(&v5, a1, AppleUserECMData::Start_Impl);
  }

  else
  {
    v5 = *a2;
    return IOService::_Dispatch(a1, &v5);
  }
}

uint64_t AppleUserECMDataMetaClass::Dispatch(OSMetaClassBase *this, IORPC *a2)
{
  IORPCMessageFromMach(a2->message, 0);
  v5 = *a2;
  return OSMetaClassBase::Dispatch(this, &v5);
}

uint64_t AppleUserECMMetaClass::New(AppleUserECMMetaClass *this, OSObject *a2)
{
  a2->OSMetaClassBase::__vftable = &off_10000C990;
  a2->OSObjectInterface::__vftable = off_10000CB28;
  *&a2[1].refcount = &off_10000CB48;
  a2[1].OSObjectInterface::__vftable = &off_10000CCA0;
  return 0;
}

uint64_t AppleUserECM::_Dispatch(IOUserNetworkEthernet *this, IORPCMessageMach **a2, IORPC *a3)
{
  msgid = IORPCMessageFromMach(*a2, 0)->msgid;
  if (msgid <= 0x18F06319DAB994C1)
  {
    if (msgid > 0xE042A87972611224)
    {
      switch(msgid)
      {
        case 0xE042A87972611225:
          if (!OSMetaClassBase::IsRemote(this))
          {
            v11 = *a2;
            return IOUserNetworkEthernet::SetAllMulticastModeEnable_Invoke(&v11, this, AppleUserECM::SetAllMulticastModeEnable_Impl);
          }

          goto LABEL_39;
        case 0xE072FCC26CF639ACLL:
          if (!OSMetaClassBase::IsRemote(this))
          {
            v11 = *a2;
            return IOUserNetworkEthernet::SetPromiscuousModeEnable_Invoke(&v11, this, AppleUserECM::SetPromiscuousModeEnable_Impl);
          }

          goto LABEL_39;
        case 0xF421A9D80F9A1FDALL:
          if (!OSMetaClassBase::IsRemote(this))
          {
            v11 = *a2;
            return IOUserNetworkEthernet::SetInterfaceEnable_Invoke(&v11, this, AppleUserECM::SetInterfaceEnable_Impl);
          }

          goto LABEL_39;
      }
    }

    else
    {
      switch(msgid)
      {
        case 0x98E715041C459FA5:
          v11 = *a2;
          return IOService::Stop_Invoke(&v11, this, AppleUserECM::Stop_Impl);
        case 0xAB6F76DDE6D693F2:
          v11 = *a2;
          return IOService::Start_Invoke(&v11, this, AppleUserECM::Start_Impl);
        case 0xC3E63AC546EBD1FELL:
          if (!OSMetaClassBase::IsRemote(this))
          {
            v11 = *a2;
            return IOUserNetworkEthernet::SelectMediaType_Invoke(&v11, this, AppleUserECM::SelectMediaType_Impl);
          }

          goto LABEL_39;
      }
    }

LABEL_41:
    v11 = *a2;
    return IOUserNetworkEthernet::_Dispatch(this, &v11);
  }

  if (msgid <= 0x49B96B1A38AA6597)
  {
    if (msgid == 0x18F06319DAB994C2)
    {
      if (!OSMetaClassBase::IsRemote(this))
      {
        v11 = *a2;
        return IOTimerDispatchSource::TimerOccurred_Invoke(&v11, this, AppleUserECM::InterruptReadTimerOccurred_Impl, gOSAction_AppleUserECM_InterruptReadTimerOccurredMetaClass);
      }

      goto LABEL_39;
    }

    if (msgid != 0x1A87CDD6BE193E74)
    {
      if (msgid != 0x39F9B9387C35AD11)
      {
        goto LABEL_41;
      }

      if (!OSMetaClassBase::IsRemote(this))
      {
        v11 = *a2;
        v7 = gOSAction_AppleUserECM_RxCompleteMetaClass;
        v8 = AppleUserECM::RxComplete_Impl;
        return IOUSBHostPipe::CompleteAsyncIOBundled_Invoke(&v11, this, v8, v7);
      }

      goto LABEL_39;
    }

    if (OSMetaClassBase::IsRemote(this))
    {
      goto LABEL_39;
    }

    v11 = *a2;
    v9 = gOSAction_AppleUserECM_RxPacketsAvailableMetaClass;
    v10 = AppleUserECM::RxPacketsAvailable_Impl;
    return IODataQueueDispatchSource::DataAvailable_Invoke(&v11, this, v10, v9);
  }

  switch(msgid)
  {
    case 0x49B96B1A38AA6598:
      if (!OSMetaClassBase::IsRemote(this))
      {
        v11 = *a2;
        v7 = gOSAction_AppleUserECM_TxCompleteMetaClass;
        v8 = AppleUserECM::TxComplete_Impl;
        return IOUSBHostPipe::CompleteAsyncIOBundled_Invoke(&v11, this, v8, v7);
      }

      break;
    case 0x6D29AF5C0FF1913ALL:
      if (!OSMetaClassBase::IsRemote(this))
      {
        v11 = *a2;
        return IOUSBHostPipe::CompleteAsyncIO_Invoke(&v11, this, AppleUserECM::InterruptReadComplete_Impl, gOSAction_AppleUserECM_InterruptReadCompleteMetaClass);
      }

      break;
    case 0x720B4D3E4DAE28B5:
      if (!OSMetaClassBase::IsRemote(this))
      {
        v11 = *a2;
        v9 = gOSAction_AppleUserECM_TxPacketsAvailableMetaClass;
        v10 = AppleUserECM::TxPacketsAvailable_Impl;
        return IODataQueueDispatchSource::DataAvailable_Invoke(&v11, this, v10, v9);
      }

      break;
    default:
      goto LABEL_41;
  }

LABEL_39:
  v11 = *a2;
  return OSMetaClassBase::Dispatch(this, &v11);
}

uint64_t AppleUserECMMetaClass::Dispatch(OSMetaClassBase *this, IORPC *a2)
{
  IORPCMessageFromMach(a2->message, 0);
  v5 = *a2;
  return OSMetaClassBase::Dispatch(this, &v5);
}

uint64_t AppleUserECM::CreateActionTxPacketsAvailable(OSObject *this, size_t a2, OSAction **a3)
{
  v6 = OSString::withCString("OSAction_AppleUserECM_TxPacketsAvailable");
  if (!v6)
  {
    return 3758097085;
  }

  v7 = v6;
  v8 = OSAction::CreateWithTypeName(this, 0x720B4D3E4DAE28B5uLL, 0xF799C876BAF566F3, a2, v6, a3);
  (v7->release)(v7);
  return v8;
}

uint64_t AppleUserECM::CreateActionRxPacketsAvailable(OSObject *this, size_t a2, OSAction **a3)
{
  v6 = OSString::withCString("OSAction_AppleUserECM_RxPacketsAvailable");
  if (!v6)
  {
    return 3758097085;
  }

  v7 = v6;
  v8 = OSAction::CreateWithTypeName(this, 0x1A87CDD6BE193E74uLL, 0xF799C876BAF566F3, a2, v6, a3);
  (v7->release)(v7);
  return v8;
}

uint64_t AppleUserECM::CreateActionTxComplete(OSObject *this, size_t a2, OSAction **a3)
{
  v6 = OSString::withCString("OSAction_AppleUserECM_TxComplete");
  if (!v6)
  {
    return 3758097085;
  }

  v7 = v6;
  v8 = OSAction::CreateWithTypeName(this, 0x49B96B1A38AA6598uLL, 0xDD0623CAA00A3C04, a2, v6, a3);
  (v7->release)(v7);
  return v8;
}

uint64_t AppleUserECM::CreateActionRxComplete(OSObject *this, size_t a2, OSAction **a3)
{
  v6 = OSString::withCString("OSAction_AppleUserECM_RxComplete");
  if (!v6)
  {
    return 3758097085;
  }

  v7 = v6;
  v8 = OSAction::CreateWithTypeName(this, 0x39F9B9387C35AD11uLL, 0xDD0623CAA00A3C04, a2, v6, a3);
  (v7->release)(v7);
  return v8;
}

uint64_t AppleUserECM::CreateActionInterruptReadComplete(OSObject *this, size_t a2, OSAction **a3)
{
  v6 = OSString::withCString("OSAction_AppleUserECM_InterruptReadComplete");
  if (!v6)
  {
    return 3758097085;
  }

  v7 = v6;
  v8 = OSAction::CreateWithTypeName(this, 0x6D29AF5C0FF1913AuLL, 0xC320A3EEA932C04ALL, a2, v6, a3);
  (v7->release)(v7);
  return v8;
}

uint64_t AppleUserECM::CreateActionInterruptReadTimerOccurred(OSObject *this, size_t a2, OSAction **a3)
{
  v6 = OSString::withCString("OSAction_AppleUserECM_InterruptReadTimerOccurred");
  if (!v6)
  {
    return 3758097085;
  }

  v7 = v6;
  v8 = OSAction::CreateWithTypeName(this, 0x18F06319DAB994C2uLL, 0xF4AB1C3CBB5AE47uLL, a2, v6, a3);
  (v7->release)(v7);
  return v8;
}

uint64_t OSAction_AppleUserECM_TxPacketsAvailableMetaClass::New(OSAction_AppleUserECM_TxPacketsAvailableMetaClass *this, OSObject *a2)
{
  a2->OSMetaClassBase::__vftable = &off_10000CCF8;
  a2->OSObjectInterface::__vftable = &off_10000CD40;
  return 0;
}

uint64_t OSAction_AppleUserECM_TxPacketsAvailable::Dispatch(OSAction *this, IORPC *a2)
{
  message = a2->message;
  *&rpc.reply = *&a2->reply;
  IORPCMessageFromMach(message, 0);
  rpc.message = message;
  return OSAction::_Dispatch(this, &rpc);
}

uint64_t OSAction_AppleUserECM_TxPacketsAvailable::_Dispatch(OSAction *this, IORPCMessageMach **a2, IORPC *a3)
{
  IORPCMessageFromMach(*a2, 0);
  v6 = *a2;
  return OSAction::_Dispatch(this, &v6);
}

uint64_t OSAction_AppleUserECM_TxPacketsAvailableMetaClass::Dispatch(OSMetaClassBase *this, IORPC *a2)
{
  IORPCMessageFromMach(a2->message, 0);
  v5 = *a2;
  return OSMetaClassBase::Dispatch(this, &v5);
}

uint64_t OSAction_AppleUserECM_RxPacketsAvailableMetaClass::New(OSAction_AppleUserECM_RxPacketsAvailableMetaClass *this, OSObject *a2)
{
  a2->OSMetaClassBase::__vftable = &off_10000CDA0;
  a2->OSObjectInterface::__vftable = &off_10000CDE8;
  return 0;
}

uint64_t OSAction_AppleUserECM_RxPacketsAvailable::Dispatch(OSAction *this, IORPC *a2)
{
  message = a2->message;
  *&rpc.reply = *&a2->reply;
  IORPCMessageFromMach(message, 0);
  rpc.message = message;
  return OSAction::_Dispatch(this, &rpc);
}

uint64_t OSAction_AppleUserECM_RxPacketsAvailable::_Dispatch(OSAction *this, IORPCMessageMach **a2, IORPC *a3)
{
  IORPCMessageFromMach(*a2, 0);
  v6 = *a2;
  return OSAction::_Dispatch(this, &v6);
}

uint64_t OSAction_AppleUserECM_RxPacketsAvailableMetaClass::Dispatch(OSMetaClassBase *this, IORPC *a2)
{
  IORPCMessageFromMach(a2->message, 0);
  v5 = *a2;
  return OSMetaClassBase::Dispatch(this, &v5);
}

uint64_t OSAction_AppleUserECM_TxCompleteMetaClass::New(OSAction_AppleUserECM_TxCompleteMetaClass *this, OSObject *a2)
{
  a2->OSMetaClassBase::__vftable = &off_10000CE48;
  a2->OSObjectInterface::__vftable = &off_10000CE90;
  return 0;
}

uint64_t OSAction_AppleUserECM_TxComplete::Dispatch(OSAction *this, IORPC *a2)
{
  message = a2->message;
  *&rpc.reply = *&a2->reply;
  IORPCMessageFromMach(message, 0);
  rpc.message = message;
  return OSAction::_Dispatch(this, &rpc);
}

uint64_t OSAction_AppleUserECM_TxComplete::_Dispatch(OSAction *this, IORPCMessageMach **a2, IORPC *a3)
{
  IORPCMessageFromMach(*a2, 0);
  v6 = *a2;
  return OSAction::_Dispatch(this, &v6);
}

uint64_t OSAction_AppleUserECM_TxCompleteMetaClass::Dispatch(OSMetaClassBase *this, IORPC *a2)
{
  IORPCMessageFromMach(a2->message, 0);
  v5 = *a2;
  return OSMetaClassBase::Dispatch(this, &v5);
}

uint64_t OSAction_AppleUserECM_RxCompleteMetaClass::New(OSAction_AppleUserECM_RxCompleteMetaClass *this, OSObject *a2)
{
  a2->OSMetaClassBase::__vftable = &off_10000CEF0;
  a2->OSObjectInterface::__vftable = &off_10000CF38;
  return 0;
}

uint64_t OSAction_AppleUserECM_RxComplete::Dispatch(OSAction *this, IORPC *a2)
{
  message = a2->message;
  *&rpc.reply = *&a2->reply;
  IORPCMessageFromMach(message, 0);
  rpc.message = message;
  return OSAction::_Dispatch(this, &rpc);
}

uint64_t OSAction_AppleUserECM_RxComplete::_Dispatch(OSAction *this, IORPCMessageMach **a2, IORPC *a3)
{
  IORPCMessageFromMach(*a2, 0);
  v6 = *a2;
  return OSAction::_Dispatch(this, &v6);
}

uint64_t OSAction_AppleUserECM_RxCompleteMetaClass::Dispatch(OSMetaClassBase *this, IORPC *a2)
{
  IORPCMessageFromMach(a2->message, 0);
  v5 = *a2;
  return OSMetaClassBase::Dispatch(this, &v5);
}

uint64_t OSAction_AppleUserECM_InterruptReadCompleteMetaClass::New(OSAction_AppleUserECM_InterruptReadCompleteMetaClass *this, OSObject *a2)
{
  a2->OSMetaClassBase::__vftable = &off_10000CF98;
  a2->OSObjectInterface::__vftable = &off_10000CFE0;
  return 0;
}

uint64_t OSAction_AppleUserECM_InterruptReadComplete::Dispatch(OSAction *this, IORPC *a2)
{
  message = a2->message;
  *&rpc.reply = *&a2->reply;
  IORPCMessageFromMach(message, 0);
  rpc.message = message;
  return OSAction::_Dispatch(this, &rpc);
}

uint64_t OSAction_AppleUserECM_InterruptReadComplete::_Dispatch(OSAction *this, IORPCMessageMach **a2, IORPC *a3)
{
  IORPCMessageFromMach(*a2, 0);
  v6 = *a2;
  return OSAction::_Dispatch(this, &v6);
}

uint64_t OSAction_AppleUserECM_InterruptReadCompleteMetaClass::Dispatch(OSMetaClassBase *this, IORPC *a2)
{
  IORPCMessageFromMach(a2->message, 0);
  v5 = *a2;
  return OSMetaClassBase::Dispatch(this, &v5);
}

uint64_t OSAction_AppleUserECM_InterruptReadTimerOccurredMetaClass::New(OSAction_AppleUserECM_InterruptReadTimerOccurredMetaClass *this, OSObject *a2)
{
  a2->OSMetaClassBase::__vftable = &off_10000D040;
  a2->OSObjectInterface::__vftable = &off_10000D088;
  return 0;
}

uint64_t OSAction_AppleUserECM_InterruptReadTimerOccurred::Dispatch(OSAction *this, IORPC *a2)
{
  message = a2->message;
  *&rpc.reply = *&a2->reply;
  IORPCMessageFromMach(message, 0);
  rpc.message = message;
  return OSAction::_Dispatch(this, &rpc);
}

uint64_t OSAction_AppleUserECM_InterruptReadTimerOccurred::_Dispatch(OSAction *this, IORPCMessageMach **a2, IORPC *a3)
{
  IORPCMessageFromMach(*a2, 0);
  v6 = *a2;
  return OSAction::_Dispatch(this, &v6);
}

uint64_t OSAction_AppleUserECM_InterruptReadTimerOccurredMetaClass::Dispatch(OSMetaClassBase *this, IORPC *a2)
{
  IORPCMessageFromMach(a2->message, 0);
  v5 = *a2;
  return OSMetaClassBase::Dispatch(this, &v5);
}

void sub_100004804()
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    sub_100000BE8();
    sub_100000BD8();
    sub_100000BF8(&_mh_execute_header, &_os_log_default, v0, "[%s:%d] Assertion failed: %s.  driver disabled via boot-arg; aborting\n\n", v1, v2, v3, v4, 2u);
  }

  sub_100000BC4();
}

void sub_1000048B4()
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    sub_100000BE8();
    sub_100000BD8();
    sub_100000BF8(&_mh_execute_header, &_os_log_default, v0, "[%s:%d] Assertion failed: %s.  AppleUserECMData failed start. myInterfaceDescriptor == NULL\n\n", v1, v2, v3, v4, 2u);
  }

  sub_100000BC4();
}

void sub_100004964()
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    sub_100000BE8();
    sub_100000BD8();
    sub_100000BF8(&_mh_execute_header, &_os_log_default, v0, "[%s:%d] Assertion failed: %s.  AppleUserECMData failed start. configurationDescriptor == NULL\n\n", v1, v2, v3, v4, 2u);
  }

  sub_100000BC4();
}

void sub_100004A14()
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    sub_100000BE8();
    sub_100000BD8();
    sub_100000BF8(&_mh_execute_header, &_os_log_default, v0, "[%s:%d] Assertion failed: %s.  AppleUserECMData failed start. interface == NULL\n\n", v1, v2, v3, v4, 2u);
  }

  sub_100000BC4();
}

uint64_t AppleUserECM::init(AppleUserECM *this)
{
  result = IOMallocZeroTyped();
  *(this + 9) = result;
  if (result)
  {
    result = IOUserNetworkEthernet::init(this);
    if (result)
    {
      IOParseBootArgNumber("AppleUserECM-debug", *(this + 9), 4);
      **(this + 9) |= 2u;
      *(*(this + 9) + 316) = 1518;
      *(*(this + 9) + 324) = 12;
      return 1;
    }
  }

  return result;
}

uint64_t AppleUserECM::findDataInterface(AppleUserECM *this, IOUSBHostInterface *a2, IOUSBHostInterface **a3)
{
  interface = 0;
  device = 0;
  ref = 0;
  HIBYTE(v116) = -1;
  v6 = *(this + 9);
  if (v6 && (*v6 & 8) != 0 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    sub_10000331C();
    sub_100003274();
    _os_log_impl(v7, v8, v9, v10, v11, v12);
  }

  v13 = 3758097136;
  if (a3)
  {
    v14 = (a2->CopyConfigurationDescriptor)(a2);
    if (v14)
    {
      v15 = (a2->GetInterfaceDescriptor)(a2, v14);
      if (v15)
      {
        *(*(this + 9) + 65) = *(v15 + 2);
        v16 = IOUSBHostInterface::CopyDevice(a2, &device, 0);
        if (v16 || (v16 = IOUSBHostDevice::CreateInterfaceIterator(device, &ref, 0), v16))
        {
          v13 = v16;
        }

        else
        {
          v17 = sub_10000335C();
          DataInterfaceWithUnionFunctionalDescriptor = AppleUserECM::findDataInterfaceWithUnionFunctionalDescriptor(v17, v18, v19, v20);
          v22 = sub_10000335C();
          DataInterfaceWithInterfaceAssociationDescriptor = AppleUserECM::findDataInterfaceWithInterfaceAssociationDescriptor(v22, v23, v24, v25);
          if (DataInterfaceWithUnionFunctionalDescriptor || DataInterfaceWithInterfaceAssociationDescriptor)
          {
            v13 = sub_100003370(DataInterfaceWithInterfaceAssociationDescriptor, v27, v28, v29, v30, v31, v32, v33, v106, v108, v110, v112, v113, v115, v116, ref, interface, device);
            if (!v13)
            {
              v109 = a3;
              v35 = interface;
              if (interface)
              {
                *&v34 = 136315650;
                *v114 = v34;
                *&v34 = 136315394;
                *v111 = v34;
                while (1)
                {
                  v36 = sub_100003258(v35);
                  v38 = (*(v37 + 64))(v36, v14);
                  if (v38)
                  {
                    InterfaceDescriptor = v38;
                    v47 = *(this + 9);
                    if (v47)
                    {
                      if ((*v47 & 8) == 0 || !sub_1000032BC() || (*buf = v111[0], v122 = "AppleUserECM", v123 = 2080, v124 = "findDataInterface", _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%s::%s: ----------------------\n", buf, 0x16u), (v47 = *(this + 9)) != 0))
                      {
                        if ((*v47 & 8) == 0 || !sub_1000032BC() || (v48 = InterfaceDescriptor->bLength, v49 = sub_1000031A0(), _os_log_impl(v49, v50, v51, "%s::%s: bLength = 0x%x", v52, 0x1Cu), (v47 = *(this + 9)) != 0))
                        {
                          if ((*v47 & 8) == 0 || !sub_1000032BC() || (v53 = InterfaceDescriptor->bDescriptorType, v54 = sub_1000031A0(), _os_log_impl(v54, v55, v56, "%s::%s: bDescriptorType = 0x%x", v57, 0x1Cu), (v47 = *(this + 9)) != 0))
                          {
                            if ((*v47 & 8) == 0 || !sub_1000032BC() || (v58 = InterfaceDescriptor[1].bLength, v59 = sub_1000031A0(), _os_log_impl(v59, v60, v61, "%s::%s: bInterfaceNumber = 0x%x", v62, 0x1Cu), (v47 = *(this + 9)) != 0))
                            {
                              if ((*v47 & 8) == 0 || !sub_1000032BC() || (v63 = InterfaceDescriptor[1].bDescriptorType, v64 = sub_1000031A0(), _os_log_impl(v64, v65, v66, "%s::%s: bAlternateSetting = 0x%x", v67, 0x1Cu), (v47 = *(this + 9)) != 0))
                              {
                                if ((*v47 & 8) == 0 || !sub_1000032BC() || (v68 = InterfaceDescriptor[2].bLength, v69 = sub_1000031A0(), _os_log_impl(v69, v70, v71, "%s::%s: bNumEndpoints = 0x%x", v72, 0x1Cu), (v47 = *(this + 9)) != 0))
                                {
                                  if ((*v47 & 8) == 0 || !sub_1000032BC() || (v73 = InterfaceDescriptor[2].bDescriptorType, v74 = sub_1000031A0(), _os_log_impl(v74, v75, v76, "%s::%s: bInterfaceClass = 0x%x", v77, 0x1Cu), (v47 = *(this + 9)) != 0))
                                  {
                                    if ((*v47 & 8) == 0 || !sub_1000032BC() || (v78 = InterfaceDescriptor[3].bLength, v79 = sub_1000031A0(), _os_log_impl(v79, v80, v81, "%s::%s: bInterfaceSubClass = 0x%x", v82, 0x1Cu), (v47 = *(this + 9)) != 0))
                                    {
                                      if ((*v47 & 8) == 0 || !sub_1000032BC() || (bDescriptorType = InterfaceDescriptor[3].bDescriptorType, v84 = sub_1000031A0(), _os_log_impl(v84, v85, v86, "%s::%s: bInterfaceProtocol = 0x%x", v87, 0x1Cu), (v47 = *(this + 9)) != 0))
                                      {
                                        if ((*v47 & 8) != 0 && sub_1000032BC())
                                        {
                                          bLength = InterfaceDescriptor[4].bLength;
                                          v89 = sub_1000031A0();
                                          _os_log_impl(v89, v90, v91, "%s::%s: iInterface = 0x%x", v92, 0x1Cu);
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

                    if (InterfaceDescriptor[2].bDescriptorType == 10 && !InterfaceDescriptor[3].bLength && !InterfaceDescriptor[3].bDescriptorType && InterfaceDescriptor[1].bLength == HIBYTE(v117))
                    {
                      break;
                    }
                  }

                  v93 = interface;
                  if (interface)
                  {
                    v94 = sub_100003258(interface);
                    v93 = (*(v95 + 16))(v94);
                    interface = 0;
                  }

                  v13 = sub_100003370(v93, v39, v40, v41, v42, v43, v44, v45, v107, v109, v111[0], v111[1], v114[0], v114[1], v117, ref, interface, device);
                  if (!v13)
                  {
                    v35 = interface;
                    if (interface)
                    {
                      continue;
                    }
                  }

                  goto LABEL_55;
                }

                *v109 = interface;
                while (InterfaceDescriptor[2].bLength != 2)
                {
                  InterfaceDescriptor = IOUSBGetNextInterfaceDescriptor(v14, InterfaceDescriptor);
                  if (!InterfaceDescriptor)
                  {
                    v13 = 3758097136;
                    goto LABEL_55;
                  }
                }

                v99 = *(this + 9);
                if ((*v99 & 8) != 0 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
                {
                  sub_10000331C();
                  sub_100003274();
                  _os_log_impl(v100, v101, v102, v103, v104, v105);
                  v99 = *(this + 9);
                }

                v13 = 0;
                v99[64] = InterfaceDescriptor[1].bDescriptorType;
              }
            }

LABEL_55:
            IOUSBHostDevice::DestroyInterfaceIterator(device, ref, 0);
          }

          else
          {
            v13 = 0;
          }
        }
      }
    }
  }

  else
  {
    v14 = 0;
  }

  if (device)
  {
    v96 = sub_100003258(device);
    (*(v97 + 16))(v96);
    device = 0;
  }

  if (v14)
  {
    IOUSBHostFreeDescriptor(v14);
  }

  return v13;
}

uint64_t AppleUserECM::activate(AppleUserECM *this)
{
  speed = 0;
  USBPipe = AppleUserECM::findUSBPipe(this, *(*(this + 9) + 32), 0, 2, (*(this + 9) + 144), (*(this + 9) + 152));
  if (USBPipe)
  {
    v44 = USBPipe;
    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      return v44;
    }

    v59 = 136315650;
    sub_10000321C();
    sub_10000320C();
    v60 = "status == kIOReturnSuccess";
LABEL_46:
    sub_10000324C();
    _os_log_impl(v52, v53, v54, v55, v56, v57);
    return v44;
  }

  v3 = IOUSBHostPipe::GetSpeed(*(*(this + 9) + 144), &speed, 0);
  if (v3)
  {
    v44 = v3;
    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      return v44;
    }

    goto LABEL_45;
  }

  v4 = speed;
  if (!speed)
  {
    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      return 0;
    }

    v59 = 136315650;
    sub_10000321C();
    sub_10000320C();
    v60 = "speed > kIOUSBHostConnectionSpeedNone";
LABEL_34:
    sub_10000324C();
    _os_log_impl(v46, v47, v48, v49, v50, v51);
    return 0;
  }

  if (speed >= 4u)
  {
    v4 = 4;
    speed = 4;
  }

  v5 = (&unk_100007F40 + 16 * v4);
  *(*(this + 9) + 184) = *v5;
  *(*(this + 9) + 232) = v5[1];
  *(*(this + 9) + 328) = v5[2];
  *(*(this + 9) + 332) = v5[3];
  *(*(this + 9) + 336) = *(*(this + 9) + 332) + *(*(this + 9) + 328);
  *(*(this + 9) + 160) = AppleUserECM::allocateUSBPackets(this, *(*(this + 9) + 144), *(*(this + 9) + 184), 2048);
  v6 = *(this + 9);
  if (!*(v6 + 160))
  {
    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      return 0;
    }

    v59 = 136315650;
    sub_10000321C();
    sub_10000320C();
    v60 = "ivars->usbTxPackets != NULL";
    goto LABEL_34;
  }

  *(v6 + 168) = *(v6 + 184);
  v7 = *(this + 9);
  v8 = sub_100003350();
  ActionTxComplete = AppleUserECM::CreateActionTxComplete(v8, v9, v10);
  if (ActionTxComplete)
  {
    return ActionTxComplete;
  }

  v12 = AppleUserECM::findUSBPipe(this, *(*(this + 9) + 32), 1, 2, (*(this + 9) + 192), 0);
  if (v12)
  {
    v44 = v12;
    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      return v44;
    }

LABEL_45:
    v59 = 136315650;
    sub_10000321C();
    sub_10000320C();
    v60 = "status == kIOReturnSuccess";
    goto LABEL_46;
  }

  *(*(this + 9) + 200) = AppleUserECM::allocateUSBPackets(this, *(*(this + 9) + 192), *(*(this + 9) + 232), 2048);
  v13 = *(this + 9);
  if (!*(v13 + 200))
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v59 = 136315650;
      sub_10000321C();
      sub_10000320C();
      v60 = "ivars->usbRxPackets != NULL";
      goto LABEL_34;
    }

    return 0;
  }

  *(v13 + 216) = *(v13 + 232);
  v14 = *(this + 9);
  v15 = sub_100003350();
  ActionTxComplete = AppleUserECM::CreateActionRxComplete(v15, v16, v17);
  if (!ActionTxComplete)
  {
    v18 = AppleUserECM::findUSBPipe(this, *(*(this + 9) + 24), 1, 3, (*(this + 9) + 72), (*(this + 9) + 88));
    if (v18)
    {
      v44 = v18;
      if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        return v44;
      }
    }

    else
    {
      v19 = IOTimerDispatchSource::Create(*(*(this + 9) + 8), (*(this + 9) + 128));
      if (v19)
      {
        v44 = v19;
        if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          return v44;
        }
      }

      else
      {
        v20 = *(this + 9);
        v21 = sub_100003350();
        TimerOccurred = AppleUserECM::CreateActionInterruptReadTimerOccurred(v21, v22, v23);
        if (TimerOccurred)
        {
          v44 = TimerOccurred;
          if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
          {
            return v44;
          }
        }

        else
        {
          v25 = IOTimerDispatchSource::SetHandler(*(*(this + 9) + 128), *(*(this + 9) + 136), 0);
          if (v25)
          {
            v44 = v25;
            if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
            {
              return v44;
            }
          }

          else
          {
            v26 = *(this + 9);
            v27 = *(v26 + 88);
            v28 = sub_100003258(*(v26 + 24));
            ActionTxComplete = (*(v29 + 88))(v28, 1);
            if (ActionTxComplete)
            {
              return ActionTxComplete;
            }

            ActionTxComplete = sub_100003334(*(*(this + 9) + 80), v30, v31, v32, IOVMPageSize, (*(this + 9) + 96), (*(this + 9) + 104));
            if (ActionTxComplete)
            {
              return ActionTxComplete;
            }

            v33 = *(this + 9);
            v34 = sub_100003350();
            ActionTxComplete = AppleUserECM::CreateActionInterruptReadComplete(v34, v35, v36);
            if (ActionTxComplete)
            {
              return ActionTxComplete;
            }

            v37 = sub_100003258(*(*(this + 9) + 24));
            v40 = (*(v38 + 88))(v37, 3, 1024, v39 + 40);
            if (!v40)
            {
              return sub_100003334(*(*(this + 9) + 40), v41, v42, v43, IOVMPageSize, (*(this + 9) + 48), (*(this + 9) + 56));
            }

            v44 = v40;
            if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
            {
              return v44;
            }
          }
        }
      }
    }

    goto LABEL_45;
  }

  return ActionTxComplete;
}

uint64_t AppleUserECM::getFunctionalDescriptors(AppleUserECM *this)
{
  sub_1000032D4(this);
  if ((v3 & 8) != 0 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    sub_100003264();
    sub_10000323C();
    _os_log_impl(v4, v5, v6, v7, v8, v9);
    v1 = *(this + 9);
  }

  v10 = 3758097136;
  v11 = *(v1 + 24);
  if (v11)
  {
    v12 = sub_100003258(v11);
    v14 = (*(v13 + 56))(v12);
    if (v14)
    {
      v15 = v14;
      v16 = sub_100003258(*(*(this + 9) + 24));
      v18 = (*(v17 + 64))(v16, v15);
      if (v18)
      {
        v19 = v18;
        *(*(this + 9) + 320) = 0;
        AssociatedDescriptorWithType = IOUSBGetNextAssociatedDescriptorWithType(v15, v18, 0, 0x24u);
        if (AssociatedDescriptorWithType)
        {
          v21 = AssociatedDescriptorWithType;
          while (v21->bLength <= 0xCu || v21[1].bLength != 15)
          {
            v21 = IOUSBGetNextAssociatedDescriptorWithType(v15, v19, v21, 0x24u);
            if (!v21)
            {
              goto LABEL_29;
            }
          }

          v22 = v21[4];
          v23 = *(this + 9);
          if (*(v23 + 316) > v22)
          {
            *(v23 + 316) = v22;
            v23 = *(this + 9);
          }

          *(v23 + 320) = v21[5];
          bDescriptorType = v21[1].bDescriptorType;
          v25 = sub_100003258(*(*(this + 9) + 24));
          v27 = (*(v26 + 80))(v25);
          if (v27)
          {
            if (v27->bLength < 3u)
            {
LABEL_27:
              v10 = 0;
              goto LABEL_28;
            }

            v28 = 0;
            v29 = 0;
            while (1)
            {
              v30 = v27->bString[v28];
              v31 = v30 - 48;
              if ((v30 - 48) >= 0xA)
              {
                if ((v30 - 97) > 5)
                {
                  if ((v30 - 65) > 5)
                  {
                    v10 = 3758096385;
LABEL_28:
                    IOUSBHostFreeDescriptor(v27);
                    break;
                  }

                  v31 = v30 - 55;
                }

                else
                {
                  v31 = v30 - 87;
                }
              }

              if ((v28 & 2) != 0)
              {
                v33 = *(this + 9) + v29++;
                v32 = *(v33 + 308) | v31;
              }

              else
              {
                v32 = 16 * v31;
                v33 = *(this + 9) + v29;
              }

              *(v33 + 308) = v32;
              v28 += 2;
              if (v28 >= v27->bLength - 2)
              {
                goto LABEL_27;
              }
            }
          }
        }
      }

LABEL_29:
      IOUSBHostFreeDescriptor(v15);
    }
  }

  return v10;
}

uint64_t AppleUserECM::readInterruptPipe(AppleUserECM *this)
{
  sub_1000032D4(this);
  if ((v3 & 8) != 0 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    sub_100003264();
    sub_10000323C();
    _os_log_impl(v4, v5, v6, v7, v8, v9);
    v1 = *(this + 9);
  }

  if (*(v1 + 120))
  {
    return 0;
  }

  bzero(*(v1 + 96), *(v1 + 104));
  result = sub_1000032F4();
  if (result == -536850432)
  {
    IOUSBHostPipe::ClearStall(*(*(this + 9) + 72), 1, 0);
    result = sub_1000032F4();
  }

  *(*(this + 9) + 120) = result == 0;
  return result;
}

uint64_t AppleUserECM::setMulticastAddresses(AppleUserECM *this, const ether_addr *__src, unsigned int a3)
{
  v26 = 0;
  v27 = &v26;
  v28 = 0x2000000000;
  v29 = -536870201;
  v25 = 0;
  v6 = *(this + 9);
  if ((*v6 & 8) != 0 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v30 = 136315394;
    v31 = "AppleUserECM";
    v32 = 2080;
    v33 = "setMulticastAddresses";
    sub_100003274();
    _os_log_impl(v7, v8, v9, v10, v11, v12);
    v6 = *(this + 9);
  }

  if ((*(v6 + 320) & 0x8000) == 0 && (*(v6 + 320) & 0x7FFFu) >= a3)
  {
    if (!a3)
    {
      *(v6 + 324) &= ~0x10u;
      goto LABEL_12;
    }

    v13 = 2 * ((3 * a3) & 0x7FFF);
    if (*(v6 + 56) >= v13)
    {
      memcpy(*(v6 + 48), __src, 2 * ((3 * a3) & 0x7FFF));
      v14 = *(this + 9);
      v15 = *(v14 + 65);
      v16 = *(v14 + 40);
      v17 = sub_100003258(*(v14 + 24));
      v19 = (*(v18 + 104))(v17, 33, 64, a3);
      v20 = v27;
      *(v27 + 6) = v19;
      if (v25 != v13)
      {
        *(v20 + 6) = -536870198;
        goto LABEL_14;
      }

      if (!v19)
      {
        *(*(this + 9) + 324) |= 0x10u;
LABEL_12:
        v21 = *(*(this + 9) + 16);
        block[0] = _NSConcreteStackBlock;
        block[1] = 1107296256;
        block[2] = sub_100002700;
        block[3] = &unk_10000C348;
        block[4] = &v26;
        block[5] = this;
        IODispatchQueue::DispatchSync(v21, block);
      }
    }
  }

LABEL_14:
  v22 = *(v27 + 6);
  _Block_object_dispose(&v26, 8);
  return v22;
}

uint64_t AppleUserECM::handleTxPacketsAvailable(AppleUserECM *this)
{
  bzero(v55, 0x200uLL);
  v2 = *(this + 9);
  v3 = *(v2 + 160);
  v4 = *(v2 + 172);
  ioTransferAcceptedCount[0] = 0;
  if ((*v2 & 8) != 0 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    dataBufferLengthArray = 136315394;
    v52 = "AppleUserECM";
    v53 = 2080;
    v54 = "handleTxPacketsAvailable";
    sub_100003274();
    _os_log_impl(v5, v6, v7, v8, v9, v10);
    v2 = *(this + 9);
  }

  v11 = *(v2 + 168);
  v12 = sub_100003258(*(v2 + 248));
  result = (*(v13 + 104))(v12, v55);
  if (!result)
  {
    return result;
  }

  v15 = 0;
  v16 = 0;
  v46 = result;
  v17 = result - 1;
  while (1)
  {
    v18 = sub_100003258(v55[v15]);
    v20 = (*(v19 + 224))(v18);
    v21 = sub_100003258(v55[v15]);
    v23 = (*(v22 + 184))(v21);
    v24 = sub_100003258(v55[v15]);
    v26 = (*(v25 + 240))(v24);
    memcpy(*(v3 + 24 * v4 + 8), (v23 + v26), v20);
    *(&dataBufferLengthArray + v16) = v20;
    v27 = *(this + 9);
    if (!(v20 % *(v27 + 152)))
    {
      ++v16;
      ++v4;
      *(&dataBufferLengthArray + v16) = 0;
    }

    v28 = v17 == v15 || ++v16 >= 0xF;
    if (!v28)
    {
      v36 = *(v27 + 184);
      if (v4 + 1 < v36)
      {
        v36 = 0;
      }

      v4 = v4 + 1 - v36;
      goto LABEL_22;
    }

    ioTransferAcceptedCount[0] = 0;
    v29 = IOUSBHostPipe::AsyncIOBundled(*(v27 + 144), *(v27 + 172), v16, ioTransferAcceptedCount, &dataBufferLengthArray, v16, *(v27 + 176), 0, 0);
    v30 = v29;
    v31 = ioTransferAcceptedCount[0];
    *(*(this + 9) + 168) -= ioTransferAcceptedCount[0];
    *(*(this + 9) + 172) += v31;
    v32 = *(this + 9);
    v33 = *(v32 + 172);
    v34 = *(v32 + 184);
    v28 = v33 >= v34;
    v35 = v33 - v34;
    if (v28)
    {
      *(v32 + 172) = v35;
    }

    if (v29)
    {
      break;
    }

    if (v17 == v15)
    {
      goto LABEL_27;
    }

    v16 = 0;
    v4 = *(*(this + 9) + 172);
LABEL_22:
    ++v15;
  }

  v37 = *(this + 9);
  if (v37 && (*v37 & 2) != 0 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    ioTransferAcceptedCount[1] = 136315650;
    sub_1000032E4();
    v48 = "handleTxPacketsAvailable";
    v49 = 1024;
    v50 = v30;
    sub_10000324C();
    _os_log_impl(v38, v39, v40, v41, v42, v43);
  }

LABEL_27:
  v44 = sub_100003258(*(*(this + 9) + 256));
  return (*(v45 + 88))(v44, v55, v46);
}

void AppleUserECM::RxPacketsAvailable_Impl(AppleUserECM *this, OSAction *a2)
{
  sub_1000032D4(this);
  if ((v4 & 8) != 0 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    sub_100003264();
    sub_10000323C();
    _os_log_impl(v5, v6, v7, v8, v9, v10);
    v2 = *(this + 9);
  }

  if (*(v2 + 296) == 1)
  {
    AppleUserECM::handleRxPacketsAvailable(this);
  }
}

void AppleUserECM::TxComplete_Impl(AppleUserECM *this, OSAction *a2, unsigned int a3, int a4, const unsigned int *a5, int a6, const int *a7)
{
  v9 = *(this + 9);
  if ((*v9 & 8) != 0 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v16 = *(v9 + 168);
    sub_1000031E4();
    _os_log_impl(v10, v11, v12, v13, v14, v15);
    v9 = *(this + 9);
  }

  *(v9 + 168) += a4;
  if (*(*(this + 9) + 296) == 1)
  {
    AppleUserECM::handleTxPacketsAvailable(this);
  }
}

void AppleUserECM::InterruptReadComplete_Impl(AppleUserECM *this, OSAction *a2, kern_return_t a3, unsigned int a4)
{
  v7 = *(this + 9);
  if ((*v7 & 8) != 0 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v8 = v7[296];
    sub_100003298();
    v65 = v9;
    v66 = a3;
    v67 = v9;
    v68 = a4;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%s::%s: isEnabled %d, status 0x%x, actualByteCount %d\n", v62, 0x28u);
    v7 = *(this + 9);
  }

  v7[120] = 0;
  v10 = *(this + 9);
  if (*(v10 + 296) == 1)
  {
    if (a3 == -536870186 || a3 == -536870165)
    {
      if ((*v10 & 8) != 0 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        sub_1000031F4();
        sub_10000323C();
LABEL_34:
        _os_log_impl(v12, v13, v14, v15, v16, v17);
      }
    }

    else
    {
      if (!a3)
      {
        if (a4 >= 8)
        {
          v18 = *(v10 + 96);
          if (*(v18 + 1) == 42)
          {
            if ((*v10 & 8) != 0 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
            {
              sub_1000031F4();
              sub_10000323C();
              _os_log_impl(v46, v47, v48, v49, v50, v51);
            }

            if (a4 >= 0x10 && *(v18 + 6) >= 8u)
            {
              v53 = *(v18 + 12);
              if (*(v18 + 8) > v53)
              {
                v53 = *(v18 + 8);
              }

              v54 = 1048630;
              v55 = 1048624;
              v56 = 1048614;
              if (v53 <= 0x98967F)
              {
                v57 = 34;
              }

              else
              {
                v57 = 1048611;
              }

              if (v53 <= 0x5F5E0FF)
              {
                v56 = v57;
              }

              if (v53 <= 0x3B9AC9FF)
              {
                v55 = v56;
              }

              if (v53 <= 0x9502F8FF)
              {
                v54 = v55;
              }

              if (v53 == 705032704)
              {
                v58 = 1048631;
              }

              else
              {
                v58 = v54;
              }

              v59 = *(this + 9);
              if (v58 != *(v59 + 304))
              {
                v60 = *(v59 + 300);
                if (v60 == 1 || (v58 != 34 ? (v61 = v60 == 3) : (v61 = 0), v61))
                {
                  (*(*this + 128))(this);
                  v59 = *(this + 9);
                }

                *(v59 + 304) = v58;
              }
            }
          }

          else if (!*(v18 + 1))
          {
            if ((*v10 & 8) != 0 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
            {
              v19 = *(v18 + 2);
              sub_100003298();
              sub_1000031E4();
              _os_log_impl(v20, v21, v22, v23, v24, v25);
              v10 = *(this + 9);
            }

            v26 = *(v18 + 2);
            v27 = *(v18 + 2) != 0;
            if (*(v10 + 297) != v27)
            {
              if ((*v10 & 8) != 0 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
              {
                sub_1000031F4();
                v63 = 1024;
                v64 = v27;
                sub_1000031E4();
                _os_log_impl(v28, v29, v30, v31, v32, v33);
                v10 = *(this + 9);
              }

              if (v26)
              {
                v34 = 3;
              }

              else
              {
                v34 = 1;
              }

              v35 = *(v10 + 304);
              if (!v26 || v35 != 34)
              {
                (*(*this + 128))(this, v34, v35);
                v10 = *(this + 9);
              }

              *(v10 + 300) = v34;
              *(*(this + 9) + 297) = v27;
            }
          }
        }

        goto LABEL_35;
      }

      if ((*v10 & 8) != 0 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        sub_1000031F4();
        v63 = 1024;
        v64 = a3;
        sub_1000031E4();
        goto LABEL_34;
      }
    }

LABEL_35:
    v36 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
    v37 = IOTimerDispatchSource::WakeAtTime(*(*(this + 9) + 128), 0x88uLL, v36 + 100000000, 0, 0);
    if (v37)
    {
      v38 = *(this + 9);
      if (v38)
      {
        if ((*v38 & 2) != 0)
        {
          v39 = v37;
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
          {
            sub_1000031F4();
            v63 = 1024;
            v64 = v39;
            sub_1000031E4();
            _os_log_impl(v40, v41, v42, v43, v44, v45);
          }
        }
      }
    }
  }
}

uint64_t AppleUserECM::findUSBPipe(AppleUserECM *this, IOUSBHostInterface *a2, int a3, int a4, IOUSBHostPipe **a5, unsigned __int16 *a6)
{
  v12 = *(this + 9);
  if (v12 && (*v12 & 8) != 0 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000032E4();
    sub_100003274();
    _os_log_impl(v13, v14, v15, v16, v17, v18);
  }

  v19 = 3758097136;
  v20 = (a2->CopyConfigurationDescriptor)(a2);
  if (v20)
  {
    v21 = v20;
    pipe = a5;
    v22 = (a2->GetInterfaceDescriptor)(a2, v20);
    if (v22)
    {
      v23 = v22;
      v24 = *(this + 9);
      if (v24)
      {
        if ((*v24 & 8) == 0 || !os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT) || (sub_1000032E4(), sub_100003274(), _os_log_impl(v25, v26, v27, v28, v29, v30), (v24 = *(this + 9)) != 0))
        {
          if ((*v24 & 8) == 0 || !os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT) || (bLength = v23->bLength, sub_10000322C(), sub_1000031D0(), sub_10000324C(), _os_log_impl(v32, v33, v34, v35, v36, v37), (v24 = *(this + 9)) != 0))
          {
            if ((*v24 & 8) == 0 || !os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT) || (bDescriptorType = v23->bDescriptorType, sub_10000322C(), sub_1000031D0(), sub_10000324C(), _os_log_impl(v39, v40, v41, v42, v43, v44), (v24 = *(this + 9)) != 0))
            {
              if ((*v24 & 8) == 0 || !os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT) || (bInterfaceNumber = v23->bInterfaceNumber, sub_10000322C(), sub_1000031D0(), sub_10000324C(), _os_log_impl(v46, v47, v48, v49, v50, v51), (v24 = *(this + 9)) != 0))
              {
                if ((*v24 & 8) == 0 || !os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT) || (bAlternateSetting = v23->bAlternateSetting, sub_10000322C(), sub_1000031D0(), sub_10000324C(), _os_log_impl(v53, v54, v55, v56, v57, v58), (v24 = *(this + 9)) != 0))
                {
                  if ((*v24 & 8) == 0 || !os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT) || (bNumEndpoints = v23->bNumEndpoints, sub_10000322C(), sub_1000031D0(), sub_10000324C(), _os_log_impl(v60, v61, v62, v63, v64, v65), (v24 = *(this + 9)) != 0))
                  {
                    if ((*v24 & 8) == 0 || !os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT) || (bInterfaceClass = v23->bInterfaceClass, sub_10000322C(), sub_1000031D0(), sub_10000324C(), _os_log_impl(v67, v68, v69, v70, v71, v72), (v24 = *(this + 9)) != 0))
                    {
                      if ((*v24 & 8) == 0 || !os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT) || (bInterfaceSubClass = v23->bInterfaceSubClass, sub_10000322C(), sub_1000031D0(), sub_10000324C(), _os_log_impl(v74, v75, v76, v77, v78, v79), (v24 = *(this + 9)) != 0))
                      {
                        if ((*v24 & 8) == 0 || !os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT) || (bInterfaceProtocol = v23->bInterfaceProtocol, sub_10000322C(), sub_1000031D0(), sub_10000324C(), _os_log_impl(v81, v82, v83, v84, v85, v86), (v24 = *(this + 9)) != 0))
                        {
                          if ((*v24 & 8) != 0 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
                          {
                            iInterface = v23->iInterface;
                            sub_10000322C();
                            sub_1000031D0();
                            sub_10000324C();
                            _os_log_impl(v88, v89, v90, v91, v92, v93);
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

      EndpointDescriptor = IOUSBGetNextEndpointDescriptor(v21, v23, 0);
      if (EndpointDescriptor)
      {
        v95 = EndpointDescriptor;
        while (1)
        {
          if ((v95->bmAttributes & 3) == a4)
          {
            bEndpointAddress = v95->bEndpointAddress;
            if (a3 << 7 == (bEndpointAddress & 0x80))
            {
              break;
            }
          }

          v95 = IOUSBGetNextEndpointDescriptor(v21, v23, v95);
          if (!v95)
          {
            goto LABEL_47;
          }
        }

        if (a6)
        {
          *a6 = v95->wMaxPacketSize;
        }

        v19 = IOUSBHostInterface::CopyPipe(a2, bEndpointAddress, pipe, 0);
      }
    }

LABEL_47:
    IOUSBHostFreeDescriptor(v21);
  }

  return v19;
}

uint64_t **AppleUserECM::allocateUSBPackets(AppleUserECM *this, IOUSBHostPipe *a2, unsigned int a3, uint64_t a4)
{
  v8 = *(this + 9);
  if (v8 && (*v8 & 8) != 0 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    sub_100003264();
    sub_10000323C();
    _os_log_impl(v9, v10, v11, v12, v13, v14);
  }

  v15 = IOMallocZeroTyped();
  if (!v15 || IOUSBHostPipe::CreateMemoryDescriptorRing(a2, a3, 0))
  {
LABEL_15:
    AppleUserECM::freeUSBPackets(this, v15, a3);
    return 0;
  }

  if (a3)
  {
    v16 = 0;
    for (i = v15; ; i += 3)
    {
      v18 = sub_100003258(*(*(this + 9) + 32));
      if ((*(v19 + 88))(v18, 3, a4, i))
      {
        break;
      }

      if (!*i)
      {
        return v15;
      }

      if (sub_100003334(*i, v20, v21, v22, IOVMPageSize, i + 1, i + 2) || IOUSBHostPipe::SetMemoryDescriptor(a2, *i, v16, 0))
      {
        break;
      }

      if (a3 == ++v16)
      {
        return v15;
      }
    }

    goto LABEL_15;
  }

  return v15;
}

void AppleUserECM::freeUSBPackets(AppleUserECM *this, uint64_t **address, unsigned int a3)
{
  v5 = *(this + 9);
  if (v5 && (*v5 & 8) != 0 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    sub_100003264();
    sub_10000323C();
    _os_log_impl(v6, v7, v8, v9, v10, v11);
  }

  if (address)
  {
    if (a3)
    {
      v12 = a3;
      v13 = address;
      do
      {
        if (*v13)
        {
          v14 = sub_100003258(*v13);
          (*(v15 + 16))(v14);
          *v13 = 0;
        }

        v13 += 3;
        --v12;
      }

      while (v12);
      v16 = 24 * a3;
    }

    else
    {
      v16 = 0;
    }

    IOFree(address, v16);
  }
}

void sub_1000070D0()
{
  sub_10000328C();
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    sub_100000BE8();
    sub_100000BD8();
    sub_1000031E4();
    _os_log_impl(v0, v1, v2, v3, v4, v5);
  }

  sub_100003280();
}

void sub_100007184()
{
  sub_10000328C();
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    sub_100000BE8();
    sub_100000BD8();
    sub_1000031E4();
    _os_log_impl(v0, v1, v2, v3, v4, v5);
  }

  sub_100003280();
}

void sub_100007238()
{
  sub_10000328C();
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    sub_100000BE8();
    sub_100000BD8();
    sub_1000031E4();
    _os_log_impl(v0, v1, v2, v3, v4, v5);
  }

  sub_100003280();
}

void sub_1000072EC()
{
  sub_10000328C();
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    sub_100000BE8();
    sub_100000BD8();
    sub_1000031E4();
    _os_log_impl(v0, v1, v2, v3, v4, v5);
  }

  sub_100003280();
}

void sub_1000073A0(uint64_t a1, int a2, _DWORD *a3)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(*a1 + 64);
    v7 = 136315906;
    v8 = "AppleUserECM.cpp";
    v9 = 1024;
    v10 = 263;
    v11 = 2080;
    v12 = "status == kIOReturnSuccess";
    v13 = 1024;
    v14 = v6;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[%s:%d] Assertion failed: %s.  failed to select alt setting %d\n\n", &v7, 0x22u);
  }

  *a3 = a2;
}

void sub_100007490()
{
  sub_10000328C();
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    sub_100000BE8();
    sub_100000BD8();
    sub_1000031E4();
    _os_log_impl(v0, v1, v2, v3, v4, v5);
  }

  sub_100003280();
}

void sub_100007544()
{
  sub_10000328C();
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    sub_100000BE8();
    sub_100000BD8();
    sub_1000031E4();
    _os_log_impl(v0, v1, v2, v3, v4, v5);
  }

  sub_100003280();
}

void sub_1000075F8()
{
  sub_10000328C();
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    sub_100000BE8();
    sub_100000BD8();
    sub_1000031E4();
    _os_log_impl(v0, v1, v2, v3, v4, v5);
  }

  sub_100003280();
}

void sub_1000076AC()
{
  sub_10000328C();
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    sub_100000BE8();
    sub_100000BD8();
    sub_1000031E4();
    _os_log_impl(v0, v1, v2, v3, v4, v5);
  }

  sub_100003280();
}

void sub_100007760()
{
  sub_10000328C();
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    sub_100000BE8();
    sub_100000BD8();
    sub_1000031E4();
    _os_log_impl(v0, v1, v2, v3, v4, v5);
  }

  sub_100003280();
}

void sub_100007814()
{
  sub_10000328C();
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    sub_100000BE8();
    sub_100000BD8();
    sub_1000031E4();
    _os_log_impl(v0, v1, v2, v3, v4, v5);
  }

  sub_100003280();
}

void sub_1000078C8(_DWORD *a1)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    sub_100000BE8();
    sub_100000BD8();
    sub_1000031E4();
    _os_log_impl(v2, v3, v4, v5, v6, v7);
  }

  *a1 = 0;
}

uint64_t sub_1000079AC(AppleUserECM *a1)
{
  *(*(a1 + 9) + 296) = 0;
  AppleUserECM::updateEthernetPacketFilter(a1);
  sub_100003390(*(*(a1 + 9) + 248));
  sub_100003390(*(*(a1 + 9) + 256));
  sub_100003390(*(*(a1 + 9) + 264));
  return sub_100003390(*(*(a1 + 9) + 272));
}