uint64_t DriverKit_AppleEthernetIXGBE::init(IOUserNetworkEthernet *this)
{
  IOParseBootArgNumber("ixgbe.log_level", &pcindkll, 4);
  result = IOMallocZeroTyped();
  if (result)
  {
    this[1].IOService::OSObject::OSMetaClassBase::__vftable = result;
    if (IOUserNetworkEthernet::init(this))
    {
      return 1;
    }

    else
    {
      result = this[1].IOService::OSObject::OSMetaClassBase::__vftable;
      if (result)
      {
        IOFree(result, 0xAE0uLL);
        result = 0;
        this[1].IOService::OSObject::OSMetaClassBase::__vftable = 0;
      }
    }
  }

  return result;
}

void DriverKit_AppleEthernetIXGBE::free(IOUserNetworkEthernet *this)
{
  v2 = this[1].IOService::OSObject::OSMetaClassBase::__vftable;
  if (v2)
  {
    IOFree(v2, 0xAE0uLL);
    this[1].IOService::OSObject::OSMetaClassBase::__vftable = 0;
  }

  IOUserNetworkEthernet::free(this);
}

uint64_t DriverKit_AppleEthernetIXGBE::Start_Impl(DriverKit_AppleEthernetIXGBE *this, IOService *anObject)
{
  if ((pcindkll & 0x40) != 0)
  {
    DriverKit_AppleEthernetIXGBE::Start_Impl();
  }

  v4 = OSMetaClassBase::safeMetaCast(anObject, gIOPCIDeviceMetaClass);
  if (!v4)
  {
    DriverKit_AppleEthernetIXGBE::Start_Impl();
  }

  v5 = v4;
  *(*(this + 8) + 1960) = this;
  *(*(this + 8) + 1968) = v4;
  v6 = DriverKit_AppleEthernetIXGBE_IVars::probe(*(this + 8), v4);
  if (!v6)
  {
    if (IOService::Start(this, anObject, &IOUserNetworkEthernet::_Dispatch))
    {
      DriverKit_AppleEthernetIXGBE::Start_Impl();
    }

    if (OSObject::CopyDispatchQueue(this, "Default", (*(this + 8) + 1976), 0))
    {
      DriverKit_AppleEthernetIXGBE::Start_Impl();
    }

    if (IODispatchQueue::Create("interrupt", 0, 0, (*(this + 8) + 1984)))
    {
      DriverKit_AppleEthernetIXGBE::Start_Impl();
    }

    if (OSObject::SetDispatchQueue(this, "interrupt", *(*(this + 8) + 1984), 0))
    {
      DriverKit_AppleEthernetIXGBE::Start_Impl();
    }

    v7 = *(this + 8);
    v8 = *(v7 + 1984);
    __dq = *(v7 + 1976);
    qword_10003C008 = v8;
    action = 0;
    interruptType = 0;
    if (IOTimerDispatchSource::Create(v8, (v7 + 2016)))
    {
      DriverKit_AppleEthernetIXGBE::Start_Impl();
    }

    if (DriverKit_AppleEthernetIXGBE::CreateActionWatchdogTimerOccurred(this, 8uLL, &action))
    {
      DriverKit_AppleEthernetIXGBE::Start_Impl();
    }

    if (IOTimerDispatchSource::SetHandler(*(*(this + 8) + 2016), action, 0))
    {
      DriverKit_AppleEthernetIXGBE::Start_Impl();
    }

    IOPCIDevice::ConfigureInterrupts(v5, 0x20000u, 2u, 2u, 0, 0);
    if (IOInterruptDispatchSource::GetInterruptType(v5, 0, &interruptType))
    {
      DriverKit_AppleEthernetIXGBE::Start_Impl();
    }

    v9 = interruptType & 0x30000;
    if (IOInterruptDispatchSource::Create(v5, (interruptType & 0x30000) == 0, *(*(this + 8) + 1984), (*(this + 8) + 1992)))
    {
      DriverKit_AppleEthernetIXGBE::Start_Impl();
    }

    if (DriverKit_AppleEthernetIXGBE::CreateActionOtherInterrupt(this, 8uLL, &action))
    {
      DriverKit_AppleEthernetIXGBE::Start_Impl();
    }

    if (IOInterruptDispatchSource::SetHandler(*(*(this + 8) + 1992), action, 0))
    {
      DriverKit_AppleEthernetIXGBE::Start_Impl();
    }

    if (IODispatchSource::SetEnable(*(*(this + 8) + 1992), 1, 0))
    {
      DriverKit_AppleEthernetIXGBE::Start_Impl();
    }

    if (v9)
    {
      v10 = 1;
    }

    else
    {
      v10 = 2;
    }

    if (IOInterruptDispatchSource::Create(v5, v10, *(*(this + 8) + 1984), (*(this + 8) + 2000)))
    {
      DriverKit_AppleEthernetIXGBE::Start_Impl();
    }

    if (DriverKit_AppleEthernetIXGBE::CreateActionQueueInterrupt(this, 8uLL, &action))
    {
      DriverKit_AppleEthernetIXGBE::Start_Impl();
    }

    if (IOInterruptDispatchSource::SetHandler(*(*(this + 8) + 2000), action, 0))
    {
      DriverKit_AppleEthernetIXGBE::Start_Impl();
    }

    if (IODispatchSource::SetEnable(*(*(this + 8) + 2000), 1, 0))
    {
      DriverKit_AppleEthernetIXGBE::Start_Impl();
    }

    if (IOPCIDevice::Open(v5, this, 0))
    {
      DriverKit_AppleEthernetIXGBE::Start_Impl();
    }

    readData = 0;
    IOPCIDevice::ConfigurationRead8(v5, 4uLL, &readData);
    IOPCIDevice::ConfigurationWrite8(v5, 4uLL, readData | 2);
    started = DriverKit_AppleEthernetIXGBE_IVars::start(*(this + 8));
    if (started || (started = DriverKit_AppleEthernetIXGBE_IVars::startInterface(*(this + 8)), started))
    {
      v6 = started;
    }

    else
    {
      v6 = IOService::RegisterService(this, 0);
      if (!v6)
      {
        return v6;
      }
    }

    IOService::Stop(this, v5, 0);
  }

  return v6;
}

uint64_t DriverKit_AppleEthernetIXGBE::Stop_Impl(DriverKit_AppleEthernetIXGBE *this, IOService *a2)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    if (__dq)
    {
      v4 = IODispatchQueue::OnQueue(__dq);
    }

    else
    {
      v4 = 0;
    }

    if (qword_10003C008)
    {
      if (IODispatchQueue::OnQueue(qword_10003C008))
      {
        v5 = 2;
      }

      else
      {
        v5 = 0;
      }
    }

    else
    {
      v5 = 0;
    }

    v6 = v4 | v5;
    if (qword_10003C010)
    {
      if (IODispatchQueue::OnQueue(qword_10003C010))
      {
        v7 = 4;
      }

      else
      {
        v7 = 0;
      }
    }

    else
    {
      v7 = 0;
    }

    v8 = v6 | v7;
    if (qword_10003C018)
    {
      if (IODispatchQueue::OnQueue(qword_10003C018))
      {
        v9 = 8;
      }

      else
      {
        v9 = 0;
      }
    }

    else
    {
      v9 = 0;
    }

    v10 = v8 | v9;
    if (qword_10003C020)
    {
      if (IODispatchQueue::OnQueue(qword_10003C020))
      {
        v11 = 16;
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 0;
    }

    v12 = v10 | v11;
    if (qword_10003C028)
    {
      if (IODispatchQueue::OnQueue(qword_10003C028))
      {
        v13 = 32;
      }

      else
      {
        v13 = 0;
      }
    }

    else
    {
      v13 = 0;
    }

    v14 = v13 | v12;
    if (qword_10003C030)
    {
      if (IODispatchQueue::OnQueue(qword_10003C030))
      {
        v15 = 64;
      }

      else
      {
        v15 = 0;
      }
    }

    else
    {
      v15 = 0;
    }

    v16 = v14 + v15;
    if (qword_10003C038)
    {
      if (IODispatchQueue::OnQueue(qword_10003C038))
      {
        v17 = 128;
      }

      else
      {
        v17 = 0;
      }
    }

    else
    {
      v17 = 0;
    }

    v18 = *(*(this + 8) + 2748);
    *buf = 67110146;
    *&buf[4] = v16 + v17;
    LOWORD(v23) = 2080;
    *(&v23 + 2) = "Stop_Impl";
    WORD5(v23) = 1024;
    HIDWORD(v23) = 83;
    *v24 = 2048;
    *&v24[2] = this;
    v25 = 1024;
    v26 = v18;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "ixgbe: [%x] %s(%d): %p ivars->intrsEnabled=%d\n", buf, 0x28u);
  }

  v19 = *(this + 8);
  if (*(v19 + 2748) == 1)
  {
    DriverKit_AppleEthernetIXGBE::Stop_Impl();
  }

  if ((*(v19 + 2776) & 1) == 0)
  {
    *buf = 0;
    *&v23 = buf;
    *(&v23 + 1) = 0x2000000000;
    *v24 = 3;
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 1107296256;
    handler[2] = ___ZN28DriverKit_AppleEthernetIXGBE9Stop_ImplEP9IOService_block_invoke;
    handler[3] = &__block_descriptor_tmp;
    handler[4] = buf;
    handler[5] = this;
    handler[6] = a2;
    IODispatchSource::Cancel(*(v19 + 2016), handler, 0);
    IODispatchSource::Cancel(*(*(this + 8) + 1992), handler, 0);
    IODispatchSource::Cancel(*(*(this + 8) + 2000), handler, 0);
    *(*(this + 8) + 2776) = 1;
    _Block_object_dispose(buf, 8);
  }

  return 0;
}

uint64_t ___ZN28DriverKit_AppleEthernetIXGBE9Stop_ImplEP9IOService_block_invoke(uint64_t result)
{
  v1 = *(result + 40);
  if (atomic_fetch_add_explicit((*(*(result + 32) + 8) + 24), 0xFFFFFFFF, memory_order_relaxed) <= 1)
  {
    v2 = result;
    (*(v1[1].meta[63].getMetaClass + 2))(v1[1].meta[63].__vftable);
    (*(**&v1[1].meta[62].refcount + 16))(*&v1[1].meta[62].refcount);
    (v1[1].meta[62].meta->release)(v1[1].meta[62].meta);
    (*(v1[1].meta[62].getMetaClass + 2))(v1[1].meta[62].__vftable);
    IOPCIDevice::Close(v1[1].meta[61].meta, v1, 0);
    v3 = *(v2 + 48);

    return IOService::Stop(v1, v3, &IOUserNetworkEthernet::_Dispatch);
  }

  return result;
}

void DriverKit_AppleEthernetIXGBE::OtherInterrupt_Impl(IOPCIDevice ***this, OSAction *a2)
{
  DriverKit_AppleEthernetIXGBE_IVars::otherIntrHandler(this[8]);
  v3 = this[8];
  if (*(v3 + 2766) != 1)
  {
LABEL_86:
    v34 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
    IOTimerDispatchSource::WakeAtTime(this[8][252], 0x88uLL, v34 + 4000000000u, 0, 0);
    return;
  }

  if (*(v3 + 404) != 12 || *(v3 + 407) != 65534 || (v3[178])(this[8]))
  {
    return;
  }

  v4 = (v3[180])(v3);
  *(v3 + 2766) = 0;
  v5 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT);
  if (v4 != -19)
  {
    if (v5)
    {
      if (__dq)
      {
        v7 = IODispatchQueue::OnQueue(__dq);
      }

      else
      {
        v7 = 0;
      }

      if (qword_10003C008)
      {
        if (IODispatchQueue::OnQueue(qword_10003C008))
        {
          v9 = 2;
        }

        else
        {
          v9 = 0;
        }
      }

      else
      {
        v9 = 0;
      }

      v12 = v7 | v9;
      if (qword_10003C010)
      {
        if (IODispatchQueue::OnQueue(qword_10003C010))
        {
          v13 = 4;
        }

        else
        {
          v13 = 0;
        }
      }

      else
      {
        v13 = 0;
      }

      v16 = v12 | v13;
      if (qword_10003C018)
      {
        if (IODispatchQueue::OnQueue(qword_10003C018))
        {
          v17 = 8;
        }

        else
        {
          v17 = 0;
        }
      }

      else
      {
        v17 = 0;
      }

      v20 = v16 | v17;
      if (qword_10003C020)
      {
        if (IODispatchQueue::OnQueue(qword_10003C020))
        {
          v21 = 16;
        }

        else
        {
          v21 = 0;
        }
      }

      else
      {
        v21 = 0;
      }

      v24 = v20 | v21;
      if (qword_10003C028)
      {
        if (IODispatchQueue::OnQueue(qword_10003C028))
        {
          v25 = 32;
        }

        else
        {
          v25 = 0;
        }
      }

      else
      {
        v25 = 0;
      }

      v28 = v25 | v24;
      if (qword_10003C030)
      {
        if (IODispatchQueue::OnQueue(qword_10003C030))
        {
          v29 = 64;
        }

        else
        {
          v29 = 0;
        }
      }

      else
      {
        v29 = 0;
      }

      v32 = v28 + v29;
      if (qword_10003C038)
      {
        if (IODispatchQueue::OnQueue(qword_10003C038))
        {
          v33 = 128;
        }

        else
        {
          v33 = 0;
        }
      }

      else
      {
        v33 = 0;
      }

      v35 = 67109634;
      v36 = v32 + v33;
      v37 = 2080;
      v38 = "sfpProbe";
      v39 = 1024;
      v40 = 215;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "ixgbe: [%x] %s(%d): SFP+ module detected!\n", &v35, 0x18u);
    }

    goto LABEL_86;
  }

  if (v5)
  {
    if (__dq)
    {
      v6 = IODispatchQueue::OnQueue(__dq);
    }

    else
    {
      v6 = 0;
    }

    if (qword_10003C008)
    {
      if (IODispatchQueue::OnQueue(qword_10003C008))
      {
        v8 = 2;
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      v8 = 0;
    }

    v10 = v6 | v8;
    if (qword_10003C010)
    {
      if (IODispatchQueue::OnQueue(qword_10003C010))
      {
        v11 = 4;
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 0;
    }

    v14 = v10 | v11;
    if (qword_10003C018)
    {
      if (IODispatchQueue::OnQueue(qword_10003C018))
      {
        v15 = 8;
      }

      else
      {
        v15 = 0;
      }
    }

    else
    {
      v15 = 0;
    }

    v18 = v14 | v15;
    if (qword_10003C020)
    {
      if (IODispatchQueue::OnQueue(qword_10003C020))
      {
        v19 = 16;
      }

      else
      {
        v19 = 0;
      }
    }

    else
    {
      v19 = 0;
    }

    v22 = v18 | v19;
    if (qword_10003C028)
    {
      if (IODispatchQueue::OnQueue(qword_10003C028))
      {
        v23 = 32;
      }

      else
      {
        v23 = 0;
      }
    }

    else
    {
      v23 = 0;
    }

    v26 = v23 | v22;
    if (qword_10003C030)
    {
      if (IODispatchQueue::OnQueue(qword_10003C030))
      {
        v27 = 64;
      }

      else
      {
        v27 = 0;
      }
    }

    else
    {
      v27 = 0;
    }

    v30 = v26 + v27;
    if (qword_10003C038)
    {
      if (IODispatchQueue::OnQueue(qword_10003C038))
      {
        v31 = 128;
      }

      else
      {
        v31 = 0;
      }
    }

    else
    {
      v31 = 0;
    }

    v35 = 67109634;
    v36 = v30 + v31;
    v37 = 2080;
    v38 = "sfpProbe";
    v39 = 1024;
    v40 = 212;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "ixgbe: [%x] %s(%d): Unsupported SFP+ module detected!", &v35, 0x18u);
  }
}

void DriverKit_AppleEthernetIXGBE::WatchdogTimerOccurred_Impl(DriverKit_AppleEthernetIXGBE *this, OSAction *a2)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    if (__dq)
    {
      v3 = IODispatchQueue::OnQueue(__dq);
    }

    else
    {
      v3 = 0;
    }

    if (qword_10003C008)
    {
      if (IODispatchQueue::OnQueue(qword_10003C008))
      {
        v4 = 2;
      }

      else
      {
        v4 = 0;
      }
    }

    else
    {
      v4 = 0;
    }

    v5 = v3 | v4;
    if (qword_10003C010)
    {
      if (IODispatchQueue::OnQueue(qword_10003C010))
      {
        v6 = 4;
      }

      else
      {
        v6 = 0;
      }
    }

    else
    {
      v6 = 0;
    }

    v7 = v5 | v6;
    if (qword_10003C018)
    {
      if (IODispatchQueue::OnQueue(qword_10003C018))
      {
        v8 = 8;
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      v8 = 0;
    }

    v9 = v7 | v8;
    if (qword_10003C020)
    {
      if (IODispatchQueue::OnQueue(qword_10003C020))
      {
        v10 = 16;
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = 0;
    }

    v11 = v9 | v10;
    if (qword_10003C028)
    {
      if (IODispatchQueue::OnQueue(qword_10003C028))
      {
        v12 = 32;
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      v12 = 0;
    }

    v13 = v12 | v11;
    if (qword_10003C030)
    {
      if (IODispatchQueue::OnQueue(qword_10003C030))
      {
        v14 = 64;
      }

      else
      {
        v14 = 0;
      }
    }

    else
    {
      v14 = 0;
    }

    v15 = v13 + v14;
    if (qword_10003C038)
    {
      if (IODispatchQueue::OnQueue(qword_10003C038))
      {
        v16 = 128;
      }

      else
      {
        v16 = 0;
      }
    }

    else
    {
      v16 = 0;
    }

    v18[0] = 67109890;
    v18[1] = v15 + v16;
    v19 = 2080;
    v20 = "WatchdogTimerOccurred_Impl";
    v21 = 1024;
    v22 = 134;
    v23 = 2048;
    v24 = this;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "ixgbe: [%x] %s(%d): %p\n", v18, 0x22u);
  }

  v17 = *(this + 8);
  if (*(v17 + 2748) == 1)
  {
    ixgbe_check_link(v17);
    DriverKit_AppleEthernetIXGBE_IVars::updateAdminStatus(*(this + 8));
  }
}

uint64_t DriverKit_AppleEthernetIXGBE::SetInterfaceEnable_Impl(DriverKit_AppleEthernetIXGBE *this, int a2)
{
  if ((pcindkll & 0x40) != 0)
  {
    DriverKit_AppleEthernetIXGBE::SetInterfaceEnable_Impl();
  }

  readData = 0;
  IOPCIDevice::ConfigurationRead8(*(*(this + 8) + 1968), 4uLL, &readData);
  if (a2)
  {
    IOPCIDevice::ConfigurationWrite8(*(*(this + 8) + 1968), 4uLL, readData | 4);
  }

  v9 = 0;
  v10[0] = &v9;
  v10[1] = 0x2000000000;
  v11 = -1;
  v4 = *(*(this + 8) + 1984);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 1107296256;
  v7[2] = ___ZN28DriverKit_AppleEthernetIXGBE23SetInterfaceEnable_ImplEb_block_invoke;
  v7[4] = &v9;
  v7[5] = this;
  v8 = a2;
  v7[3] = &__block_descriptor_tmp_27;
  IODispatchQueue::DispatchSync(v4, v7);
  if (!a2 || *(v10[0] + 24))
  {
    IOPCIDevice::ConfigurationWrite8(*(*(this + 8) + 1968), 4uLL, readData & 0xFB);
  }

  if ((pcindkll & 0x40) != 0)
  {
    DriverKit_AppleEthernetIXGBE::SetInterfaceEnable_Impl(v10);
  }

  v5 = *(v10[0] + 24);
  _Block_object_dispose(&v9, 8);
  return v5;
}

uint64_t ___ZN28DriverKit_AppleEthernetIXGBE23SetInterfaceEnable_ImplEb_block_invoke(uint64_t result)
{
  v1 = result;
  v2 = *(result + 40);
  if (*(result + 48) == 1)
  {
    result = DriverKit_AppleEthernetIXGBE_IVars::enable(*(v2 + 64));
    *(*(*(v1 + 32) + 8) + 24) = result;
  }

  if (*(*(*(v1 + 32) + 8) + 24))
  {
    result = DriverKit_AppleEthernetIXGBE_IVars::disable(*(v2 + 64));
  }

  if ((*(v1 + 48) & 1) == 0)
  {
    *(*(*(v1 + 32) + 8) + 24) = 0;
  }

  return result;
}

uint64_t DriverKit_AppleEthernetIXGBE::SetAllMulticastModeEnable_Impl(IOPCIDevice ***this, int a2)
{
  if ((pcindkll & 0x40) != 0)
  {
    DriverKit_AppleEthernetIXGBE::SetAllMulticastModeEnable_Impl();
  }

  return DriverKit_AppleEthernetIXGBE_IVars::setAllMulticastModeEnable(this[8], a2);
}

uint64_t DriverKit_AppleEthernetIXGBE::SelectMediaType_Impl(DriverKit_AppleEthernetIXGBE *this, int a2)
{
  if ((pcindkll & 0x40) != 0)
  {
    DriverKit_AppleEthernetIXGBE::SelectMediaType_Impl();
  }

  v9 = 0;
  v10 = &v9;
  v11 = 0x2000000000;
  v12 = 0;
  v4 = *(*(this + 8) + 1984);
  block[0] = _NSConcreteStackBlock;
  block[1] = 1107296256;
  block[2] = ___ZN28DriverKit_AppleEthernetIXGBE20SelectMediaType_ImplEj_block_invoke;
  block[4] = &v9;
  block[5] = this;
  block[3] = &__block_descriptor_tmp_30;
  v8 = a2;
  IODispatchQueue::DispatchSync(v4, block);
  v5 = *(v10 + 6);
  _Block_object_dispose(&v9, 8);
  return v5;
}

uint64_t ___ZN28DriverKit_AppleEthernetIXGBE20SelectMediaType_ImplEj_block_invoke(uint64_t a1)
{
  result = DriverKit_AppleEthernetIXGBE_IVars::handleChosenMedia(*(*(a1 + 40) + 64), *(a1 + 48));
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

void DriverKit_AppleEthernetIXGBE::TxSubmit_Impl(DriverKit_AppleEthernetIXGBE *this, OSAction *a2)
{
  v3 = *(this + 8);
  if ((*(v3 + 2748) & 1) == 0)
  {
    DriverKit_AppleEthernetIXGBE::TxSubmit_Impl();
  }

  DriverKit_AppleEthernetIXGBE_IVars::txSubmit(v3, 0);
}

void DriverKit_AppleEthernetIXGBE::RxSubmit_Impl(DriverKit_AppleEthernetIXGBE *this, OSAction *a2)
{
  v3 = *(this + 8);
  if (*(v3 + 2748))
  {
    if (DriverKit_AppleEthernetIXGBE_IVars::rxSync(v3, 0) >= 0x10000)
    {
      v4 = *(*(this + 8) + 2720);

      IODataQueueDispatchSource::SendDataAvailable(v4);
    }
  }

  else if ((pcindkll & 0x40) != 0)
  {
    DriverKit_AppleEthernetIXGBE::RxSubmit_Impl();
  }
}

uint64_t DriverKit_AppleEthernetIXGBE::GetHardwareAssists_Impl(DriverKit_AppleEthernetIXGBE *this, unsigned int *a2)
{
  if (*(*(this + 8) + 2765))
  {
    v2 = 67239936;
  }

  else
  {
    v2 = 0x20000;
  }

  *a2 = v2;
  return 0;
}

uint64_t DriverKit_AppleEthernetIXGBE::SetWakeOnMagicPacketEnable_Impl(DriverKit_AppleEthernetIXGBE *this, char a2)
{
  if ((pcindkll & 0x40) != 0)
  {
    DriverKit_AppleEthernetIXGBE::SetWakeOnMagicPacketEnable_Impl();
  }

  *(*(this + 8) + 1954) = a2;
  return 0;
}

uint64_t DriverKit_AppleEthernetIXGBE::SetMTU_Impl(IOUserNetworkEthernet *this, uint32_t mtu)
{
  if ((mtu & 0xFFFFFFFE) == 0x682)
  {
    DriverKit_AppleEthernetIXGBE_IVars::logState(this[1].IOService::OSObject::OSMetaClassBase::__vftable);
  }

  return IOUserNetworkEthernet::SetMTU(this, mtu, &IOUserNetworkEthernet::_Dispatch);
}

uint64_t ixgbe_init_ops_X550(uint64_t a1)
{
  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixgbe:%s(%d): %s\n", "ixgbe_init_ops_X550", 26, "ixgbe_init_ops_X550");
  }

  result = ixgbe_init_ops_X540(a1);
  *(a1 + 632) = ixgbe_dmac_config_X550;
  *(a1 + 624) = ixgbe_dmac_config_tcs_X550;
  *(a1 + 616) = ixgbe_dmac_update_tcs_X550;
  *(a1 + 640) = 0;
  *(a1 + 600) = ixgbe_set_source_address_pruning_X550;
  *(a1 + 608) = ixgbe_set_ethertype_anti_spoofing_X550;
  *(a1 + 576) = ixgbe_dcb_get_rtrup2tc_generic;
  *(a1 + 1720) = ixgbe_init_eeprom_params_X550;
  *(a1 + 1776) = ixgbe_calc_eeprom_checksum_X550;
  *(a1 + 1728) = ixgbe_read_ee_hostif_X550;
  *(a1 + 1736) = ixgbe_read_ee_hostif_buffer_X550;
  *(a1 + 1744) = ixgbe_write_ee_hostif_X550;
  *(a1 + 1752) = ixgbe_write_ee_hostif_buffer_X550;
  *(a1 + 1768) = ixgbe_update_eeprom_checksum_X550;
  *(a1 + 1760) = ixgbe_validate_eeprom_checksum_X550;
  *(a1 + 664) = ixgbe_disable_mdd_X550;
  *(a1 + 672) = ixgbe_enable_mdd_X550;
  *(a1 + 680) = ixgbe_mdd_event_X550;
  *(a1 + 688) = ixgbe_restore_mdd_vf_X550;
  *(a1 + 584) = ixgbe_disable_rx_x550;
  *(a1 + 536) = ixgbe_set_fw_drv_ver_x550;
  v3 = *(a1 + 1936);
  if (v3 == 5549 || v3 == 5576)
  {
    *(a1 + 312) = ixgbe_led_on_t_X550em;
    *(a1 + 320) = ixgbe_led_off_t_X550em;
  }

  else if (v3 == 5550)
  {
    *(a1 + 312) = 0;
    *(a1 + 320) = 0;
  }

  return result;
}

uint64_t ixgbe_dmac_config_X550(uint64_t a1)
{
  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixgbe:%s(%d): %s\n", "ixgbe_dmac_config_X550", 854, "ixgbe_dmac_config_X550");
  }

  readData = 0;
  IOPCIDevice::MemoryRead32(*a1, 0, 0x2400uLL, &readData);
  __dmb(1u);
  v2 = readData;
  __dmb(2u);
  IOPCIDevice::MemoryWrite32(*a1, 0, 0x2400uLL, v2 & 0x7FFFFFFF);
  if (*(a1 + 1288))
  {
    ixgbe_dmac_config_tcs_X550(a1);
    v5 = 0;
    IOPCIDevice::MemoryRead32(*a1, 0, 0x2400uLL, &v5);
    __dmb(1u);
    v3 = ((100 * *(a1 + 1288)) >> 12) | (HIBYTE(v5) << 24);
    if (*(a1 + 1290) == 1)
    {
      v3 |= (0x10000 << *(a1 + 1296)) & 0xFF0000;
    }

    __dmb(2u);
    IOPCIDevice::MemoryWrite32(*a1, 0, 0x2400uLL, v3 | 0x90000000);
  }

  return 0;
}

uint64_t ixgbe_dmac_config_tcs_X550(uint64_t a1)
{
  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixgbe:%s(%d): %s\n", "ixgbe_dmac_config_tcs_X550", 902, "ixgbe_dmac_config_tcs_X550");
  }

  v2 = *(a1 + 1292);
  if (v2 == 32)
  {
    v3 = 9;
  }

  else
  {
    v3 = 85;
  }

  if (v2 == 2 || v2 == 8)
  {
    v5 = 1;
  }

  else
  {
    v5 = v3;
  }

  readData = 0;
  IOPCIDevice::MemoryRead32(*a1, 0, 0x4268uLL, &readData);
  v6 = 0;
  __dmb(1u);
  v7 = readData >> 26;
  v8 = 15360;
  do
  {
    v15 = 0;
    IOPCIDevice::MemoryRead32(*a1, 0, v8 - 2304, &v15);
    __dmb(1u);
    v9 = v15 & 0xFFFFFE00;
    if (v6 < *(a1 + 1297))
    {
      v14 = 0;
      IOPCIDevice::MemoryRead32(*a1, 0, v8, &v14);
      __dmb(1u);
      v10 = (v14 >> 10) & 0x3FF;
      v11 = v10 >= v5;
      v12 = v10 - v5;
      if (!v11)
      {
        v12 = 0;
      }

      if (v12 <= v7)
      {
        v12 = v7;
      }

      v9 |= v12;
    }

    __dmb(2u);
    IOPCIDevice::MemoryWrite32(*a1, 0, v8 - 2304, v9);
    ++v6;
    v8 += 4;
  }

  while (v6 != 8);
  return 0;
}

uint64_t ixgbe_dmac_update_tcs_X550(IOPCIDevice **a1)
{
  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixgbe:%s(%d): %s\n", "ixgbe_dmac_update_tcs_X550", 957, "ixgbe_dmac_update_tcs_X550");
  }

  readData = 0;
  IOPCIDevice::MemoryRead32(*a1, 0, 0x2400uLL, &readData);
  __dmb(1u);
  v2 = readData;
  __dmb(2u);
  IOPCIDevice::MemoryWrite32(*a1, 0, 0x2400uLL, v2 & 0x7FFFFFFF);
  ixgbe_dmac_config_tcs_X550(a1);
  v5 = 0;
  IOPCIDevice::MemoryRead32(*a1, 0, 0x2400uLL, &v5);
  __dmb(1u);
  v3 = v5;
  __dmb(2u);
  IOPCIDevice::MemoryWrite32(*a1, 0, 0x2400uLL, v3 | 0x80000000);
  return 0;
}

void ixgbe_set_source_address_pruning_X550(IOPCIDevice **a1, int a2, unsigned int a3)
{
  if (a3 <= 0x3F)
  {
    v15 = v3;
    v16 = v4;
    v5 = a3;
    readData = 0;
    IOPCIDevice::MemoryRead32(*a1, 0, 0x50B0uLL, &readData);
    __dmb(1u);
    v8 = readData;
    v13 = 0;
    IOPCIDevice::MemoryRead32(*a1, 0, 0x50B4uLL, &v13);
    __dmb(1u);
    v9 = v8 | (v13 << 32);
    v10 = v9 | (1 << v5);
    v11 = v9 & ~(1 << v5);
    if (a2)
    {
      v12 = v10;
    }

    else
    {
      v12 = v11;
    }

    __dmb(2u);
    IOPCIDevice::MemoryWrite32(*a1, 0, 0x50B0uLL, v12);
    __dmb(2u);
    IOPCIDevice::MemoryWrite32(*a1, 0, 0x50B4uLL, HIDWORD(v12));
  }
}

void ixgbe_set_ethertype_anti_spoofing_X550(IOPCIDevice **a1, int a2, int a3)
{
  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixgbe:%s(%d): %s\n", "ixgbe_set_ethertype_anti_spoofing_X550", 1047, "ixgbe_set_ethertype_anti_spoofing_X550");
  }

  if (a3 <= 0)
  {
    v6 = -(-a3 & 7);
  }

  else
  {
    LOBYTE(v6) = a3 & 7;
  }

  v7 = v6 + 16;
  readData = 0;
  v8 = 4 * (a3 >> 3) + 33280;
  IOPCIDevice::MemoryRead32(*a1, 0, v8, &readData);
  __dmb(1u);
  if (a2)
  {
    v9 = readData | (1 << v7);
  }

  else
  {
    v9 = readData & ~(1 << v7);
  }

  __dmb(2u);
  IOPCIDevice::MemoryWrite32(*a1, 0, v8, v9);
}

uint64_t ixgbe_init_eeprom_params_X550(uint64_t a1)
{
  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixgbe:%s(%d): %s\n", "ixgbe_init_eeprom_params_X550", 987, "ixgbe_init_eeprom_params_X550");
  }

  if (!*(a1 + 1784))
  {
    *(a1 + 1784) = 0xA00000002;
    readData = 0;
    IOPCIDevice::MemoryRead32(*a1, 0, 0x10010uLL, &readData);
    __dmb(1u);
    v2 = 64 << ((readData >> 11) & 0xF);
    *(a1 + 1792) = v2;
    if ((pcindkll & 0x100000) != 0)
    {
      IOLog("ixgbe:%s(%d): Eeprom params: type = %d, size = %d\n\n", "ixgbe_init_eeprom_params_X550", 1000, *(a1 + 1784), v2 & 0xFFC0);
    }
  }

  return 0;
}

uint64_t ixgbe_read_ee_hostif_X550(uint64_t a1, int a2, _WORD *a3)
{
  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixgbe:%s(%d): %s\n", "ixgbe_read_ee_hostif_X550", 3089, "ixgbe_read_ee_hostif_X550");
  }

  v9[0] = -16383951;
  v9[1] = bswap32(2 * a2);
  v9[2] = 512;
  v10 = 0;
  v6 = (*(a1 + 200))(a1, 1025);
  if (!v6)
  {
    v6 = ixgbe_hic_unlocked(a1, v9, 0x10u, 500);
    if (!v6)
    {
      readData = 0;
      IOPCIDevice::MemoryRead32(*a1, 0, 0x1580CuLL, &readData);
      __dmb(1u);
      *a3 = readData;
    }

    (*(a1 + 208))(a1, 1025);
  }

  return v6;
}

uint64_t ixgbe_read_ee_hostif_buffer_X550(uint64_t a1, int a2, int a3, uint64_t a4)
{
  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixgbe:%s(%d): %s\n", "ixgbe_read_ee_hostif_buffer_X550", 3136, "ixgbe_read_ee_hostif_buffer_X550");
  }

  v8 = (*(a1 + 200))(a1, 1025);
  if (v8)
  {
    v9 = v8;
    if ((pcindkll & 0x100000) != 0)
    {
      IOLog("ixgbe:%s(%d): %s\n", "ixgbe_read_ee_hostif_buffer_X550", 3141, "EEPROM read buffer - semaphore failed\n");
    }
  }

  else
  {
    if (a3)
    {
      v10 = 0;
      while (1)
      {
        v11 = (a3 & 0xFE00) != 0 ? 512 : a3;
        v19[0] = -16383951;
        v19[1] = bswap32(2 * (v10 + a2));
        v20 = bswap32(2 * v11) >> 16;
        v21 = 0;
        v22 = 0;
        v12 = ixgbe_hic_unlocked(a1, v19, 0x10u, 500);
        if (v12)
        {
          break;
        }

        v13 = 1;
        v14 = 88076;
        do
        {
          readData = 0;
          IOPCIDevice::MemoryRead32(*a1, 0, v14, &readData);
          __dmb(1u);
          v15 = HIWORD(readData);
          *(a4 + 2 * v10) = readData;
          if (v13 >= v11)
          {
            ++v10;
          }

          else
          {
            *(a4 + 2 * (v10 + 1)) = v15;
            v10 += 2;
          }

          v14 += 4;
          v16 = v13 + 1;
          v13 += 2;
        }

        while (v16 < v11);
        LOWORD(a3) = a3 - v11;
        if (!a3)
        {
          goto LABEL_18;
        }
      }

      v9 = v12;
      if ((pcindkll & 0x100000) != 0)
      {
        IOLog("ixgbe:%s(%d): %s\n", "ixgbe_read_ee_hostif_buffer_X550", 3166, "Host interface command failed\n");
      }
    }

    else
    {
LABEL_18:
      v9 = 0;
    }

    (*(a1 + 208))(a1, 1025);
  }

  return v9;
}

uint64_t ixgbe_write_ee_hostif_X550(uint64_t a1, int a2, __int16 a3)
{
  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixgbe:%s(%d): %s\n", "ixgbe_write_ee_hostif_X550", 3238, "ixgbe_write_ee_hostif_X550");
  }

  if ((*(a1 + 200))(a1, 1))
  {
    if ((pcindkll & 0x100000) != 0)
    {
      IOLog("ixgbe:%s(%d): %s\n", "ixgbe_write_ee_hostif_X550", 3245, "write ee hostif failed to get semaphore");
    }

    return 4294967280;
  }

  else
  {
    v7 = ixgbe_write_ee_hostif_data_X550(a1, a2, a3);
    (*(a1 + 208))(a1, 1);
    return v7;
  }
}

uint64_t ixgbe_write_ee_hostif_buffer_X550(uint64_t a1, __int16 a2, int a3, uint64_t a4)
{
  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixgbe:%s(%d): %s\n", "ixgbe_write_ee_hostif_buffer_X550", 3267, "ixgbe_write_ee_hostif_buffer_X550");
  }

  v8 = (*(a1 + 200))(a1, 1);
  if (v8)
  {
    v9 = v8;
    if ((pcindkll & 0x100000) != 0)
    {
      IOLog("ixgbe:%s(%d): %s\n", "ixgbe_write_ee_hostif_buffer_X550", 3272, "EEPROM write buffer - semaphore failed\n");
    }
  }

  else
  {
    if (a3)
    {
      v10 = 0;
      while (1)
      {
        v11 = ixgbe_write_ee_hostif_data_X550(a1, (v10 + a2), *(a4 + 2 * v10));
        if (v11)
        {
          break;
        }

        if (a3 == ++v10)
        {
          goto LABEL_10;
        }
      }

      v9 = v11;
      if ((pcindkll & 0x100000) != 0)
      {
        IOLog("ixgbe:%s(%d): %s\n", "ixgbe_write_ee_hostif_buffer_X550", 3281, "Eeprom buffered write failed\n");
      }
    }

    else
    {
LABEL_10:
      v9 = 0;
    }

    (*(a1 + 208))(a1, 1);
  }

  return v9;
}

uint64_t ixgbe_update_eeprom_checksum_X550(uint64_t a1)
{
  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixgbe:%s(%d): %s\n", "ixgbe_update_eeprom_checksum_X550", 3524, "ixgbe_update_eeprom_checksum_X550");
  }

  v2 = ixgbe_read_ee_hostif_X550(a1, 0, &v7);
  if (v2)
  {
    v3 = v2;
    if ((pcindkll & 0x100000) != 0)
    {
      IOLog("ixgbe:%s(%d): %s\n", "ixgbe_update_eeprom_checksum_X550", 3532, "EEPROM read failed\n");
    }

    return v3;
  }

  v4 = ixgbe_calc_checksum_X550(a1, 0, 0);
  v3 = v4;
  if ((v4 & 0x80000000) != 0)
  {
    return v3;
  }

  v5 = ixgbe_write_ee_hostif_X550(a1, 63, v4);
  if (v5)
  {
    return v5;
  }

  return ixgbe_update_flash_X550(a1);
}

uint64_t ixgbe_validate_eeprom_checksum_X550(uint64_t a1, _WORD *a2)
{
  v8 = 0;
  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixgbe:%s(%d): %s\n", "ixgbe_validate_eeprom_checksum_X550", 3472, "ixgbe_validate_eeprom_checksum_X550");
  }

  v9 = 0;
  v4 = (*(a1 + 1728))(a1, 0, &v9);
  if (v4)
  {
    v5 = v4;
    if ((pcindkll & 0x100000) != 0)
    {
      IOLog("ixgbe:%s(%d): %s\n", "ixgbe_validate_eeprom_checksum_X550", 3480, "EEPROM read failed\n");
    }
  }

  else
  {
    v6 = (*(a1 + 1776))(a1);
    v5 = v6;
    if ((v6 & 0x80000000) == 0)
    {
      v9 = v6;
      v5 = ixgbe_read_ee_hostif_X550(a1, 63, &v8);
      if (!v5)
      {
        if (v8 == v9)
        {
          v5 = 0;
        }

        else
        {
          if ((pcindkll & 0x100000) != 0)
          {
            IOLog("ixgbe:%s(%d): Invalid EEPROM checksum\n", "ixgbe_validate_eeprom_checksum_X550", 3501);
          }

          v5 = 4294967294;
        }

        if (a2)
        {
          *a2 = v9;
        }
      }
    }
  }

  return v5;
}

void ixgbe_disable_mdd_X550(IOPCIDevice **a1)
{
  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixgbe:%s(%d): %s\n", "ixgbe_disable_mdd_X550", 1328, "ixgbe_disable_mdd_X550");
  }

  readData = 0;
  IOPCIDevice::MemoryRead32(*a1, 0, 0x4A80uLL, &readData);
  __dmb(1u);
  v2 = readData;
  __dmb(2u);
  IOPCIDevice::MemoryWrite32(*a1, 0, 0x4A80uLL, v2 & 0xFFFFFF9F);
  v4 = 0;
  IOPCIDevice::MemoryRead32(*a1, 0, 0x2F00uLL, &v4);
  __dmb(1u);
  v3 = v4;
  __dmb(2u);
  IOPCIDevice::MemoryWrite32(*a1, 0, 0x2F00uLL, v3 & 0xCFFFFFFF);
}

void ixgbe_enable_mdd_X550(IOPCIDevice **a1)
{
  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixgbe:%s(%d): %s\n", "ixgbe_enable_mdd_X550", 1351, "ixgbe_enable_mdd_X550");
  }

  readData = 0;
  IOPCIDevice::MemoryRead32(*a1, 0, 0x4A80uLL, &readData);
  __dmb(1u);
  v2 = readData;
  __dmb(2u);
  IOPCIDevice::MemoryWrite32(*a1, 0, 0x4A80uLL, v2 | 0x60);
  v4 = 0;
  IOPCIDevice::MemoryRead32(*a1, 0, 0x2F00uLL, &v4);
  __dmb(1u);
  v3 = v4;
  __dmb(2u);
  IOPCIDevice::MemoryWrite32(*a1, 0, 0x2F00uLL, v3 | 0x30000000);
}

void ixgbe_mdd_event_X550(IOPCIDevice **a1, uint64_t a2)
{
  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixgbe:%s(%d): %s\n", "ixgbe_mdd_event_X550", 1416, "ixgbe_mdd_event_X550");
  }

  readData = 0;
  IOPCIDevice::MemoryRead32(*a1, 0, 0x5818uLL, &readData);
  __dmb(1u);
  v4 = (readData & 0xF) - 10;
  LOBYTE(v5) = 1;
  if (v4 <= 3)
  {
    v5 = dword_10002FEF0[v4];
  }

  v6 = 0;
  for (i = 0; i != 4; ++i)
  {
    v12 = 0;
    IOPCIDevice::MemoryRead32(*a1, 0, (4 * i) | 0x8130, &v12);
    __dmb(1u);
    v8 = v12;
    v11 = 0;
    IOPCIDevice::MemoryRead32(*a1, 0, (4 * i) | 0x2FB0, &v11);
    __dmb(1u);
    v9 = v11 | v8;
    if (v11 | v8)
    {
      v10 = 0;
      do
      {
        if ((v9 & (1 << v10)) != 0)
        {
          *(a2 + 4 * ((v6 + v10) >> v5 >> 5)) |= 1 << ((v6 + v10) >> v5);
          v9 &= ~(1 << v10);
        }

        if (v10 > 0x1E)
        {
          break;
        }

        ++v10;
      }

      while (v9);
    }

    v6 += 32;
  }
}

void ixgbe_restore_mdd_vf_X550(IOPCIDevice **a1, int a2)
{
  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixgbe:%s(%d): %s\n", "ixgbe_restore_mdd_vf_X550", 1375, "ixgbe_restore_mdd_vf_X550");
  }

  readData = 0;
  IOPCIDevice::MemoryRead32(*a1, 0, 0x5818uLL, &readData);
  __dmb(1u);
  v4 = (readData & 0xF) - 10;
  if (v4 > 3)
  {
    v6 = 2;
    v5 = 3;
  }

  else
  {
    v5 = dword_10002FF00[v4];
    v6 = dword_10002FF10[v4];
  }

  v7 = v6 * a2;
  v8 = v5 << (v7 & 0x1E);
  __dmb(2u);
  v9 = (v7 >> 3) & 0x1FFFFFFC;
  IOPCIDevice::MemoryWrite32(*a1, 0, (v9 + 33072), v8);
  __dmb(2u);
  IOPCIDevice::MemoryWrite32(*a1, 0, (v9 + 12208), v8);
}

void ixgbe_disable_rx_x550(uint64_t a1)
{
  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixgbe:%s(%d): %s\n", "ixgbe_disable_rx_x550", 3681, "ixgbe_enable_rx_dma_x550");
  }

  readData = 0;
  IOPCIDevice::MemoryRead32(*a1, 0, 0x3000uLL, &readData);
  __dmb(1u);
  if (readData)
  {
    readData = 0;
    IOPCIDevice::MemoryRead32(*a1, 0, 0x8220uLL, &readData);
    v2 = 0;
    __dmb(1u);
    v3 = readData;
    if (readData)
    {
      __dmb(2u);
      IOPCIDevice::MemoryWrite32(*a1, 0, 0x8220uLL, v3 & 0xFFFFFFFE);
      v2 = 1;
    }

    *(a1 + 1300) = v2;
    LOWORD(readData) = 478;
    HIBYTE(readData) = -1;
    v7 = *(a1 + 1814);
    if (ixgbe_host_interface_command(a1, &readData, 8u, 500, 1))
    {
      v5 = 0;
      IOPCIDevice::MemoryRead32(*a1, 0, 0x3000uLL, &v5);
      __dmb(1u);
      v4 = v5;
      if (v5)
      {
        __dmb(2u);
        IOPCIDevice::MemoryWrite32(*a1, 0, 0x3000uLL, v4 & 0xFFFFFFFE);
      }
    }
  }
}

uint64_t ixgbe_set_fw_drv_ver_x550(uint64_t a1, char a2, char a3, char a4, char a5, size_t __n, void *__src)
{
  v8 = __n;
  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixgbe:%s(%d): %s\n", "ixgbe_set_fw_drv_ver_x550", 4573, "ixgbe_set_fw_drv_ver_x550");
  }

  result = 4294967264;
  if (v8 - 40 >= 0xFFFFFFD9 && __src)
  {
    v16[0] = -35;
    v16[1] = v8 + 5;
    v17 = 0;
    v18 = *(a1 + 1812);
    v22 = a2;
    v21 = a3;
    v20 = a4;
    v19 = a5;
    memcpy(v23, __src, v8);
    HIBYTE(v17) = ixgbe_calculate_checksum(v16, v8 + 9);
    v15 = 4;
    while (1)
    {
      result = ixgbe_host_interface_command(a1, v16, 0x30u, 500, 1);
      if (!result)
      {
        break;
      }

      if (!--v15)
      {
        return result;
      }
    }

    if (v17 == 1)
    {
      return 0;
    }

    else
    {
      return 4294967263;
    }
  }

  return result;
}

uint64_t ixgbe_led_on_t_X550em(IOPCIDevice **a1, unsigned int a2)
{
  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixgbe:%s(%d): %s\n", "ixgbe_led_on_t_X550em", 4510, "ixgbe_led_on_t_X550em");
  }

  if (a2 > 2)
  {
    return 4294967291;
  }

  v6 = 0;
  ixgbe_read_phy_reg(a1, a2 | 0xC430, 30, &v6);
  v5 = v6 | 0x100u;
  v6 |= 0x100u;
  ixgbe_write_phy_reg(a1, a2 | 0xC430, 30, v5);
  return ixgbe_led_on_generic(a1, a2);
}

uint64_t ixgbe_led_off_t_X550em(IOPCIDevice **a1, unsigned int a2)
{
  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixgbe:%s(%d): %s\n", "ixgbe_led_off_t_X550em", 4535, "ixgbe_led_off_t_X550em");
  }

  if (a2 > 2)
  {
    return 4294967291;
  }

  v5 = 0;
  ixgbe_read_phy_reg(a1, a2 | 0xC430, 30, &v5);
  v5 &= ~0x100u;
  ixgbe_write_phy_reg(a1, a2 | 0xC430, 30, v5);
  return ixgbe_led_off_generic(a1, a2);
}

int8x16_t ixgbe_fw_phy_activity(uint64_t a1, __int16 a2, int8x16_t *a3)
{
  for (i = 50; i; --i)
  {
    *v9 = 0xFF00uLL;
    *&v9[14] = 0;
    v8 = 5125;
    v9[2] = *(a1 + 1814);
    *&v9[4] = a2;
    *&v9[6] = vrev32q_s8(*a3);
    if (ixgbe_host_interface_command(a1, &v8, 0x18u, 500, 1))
    {
      break;
    }

    if (v9[0] == 1)
    {
      result = vrev32q_s8(*&v9[2]);
      *a3 = result;
      return result;
    }

    IODelay(0x14uLL);
  }

  return result;
}

double ixgbe_shutdown_fw_phy(uint64_t a1)
{
  v2.i32[3] = 0;
  *(v2.i64 + 4) = 0;
  v2.i32[0] = 1;
  *&result = ixgbe_fw_phy_activity(a1, 4, &v2).u64[0];
  return result;
}

uint64_t ixgbe_init_ops_X550EM(uint64_t a1)
{
  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixgbe:%s(%d): %s\n", "ixgbe_init_ops_X550EM", 577, "ixgbe_init_ops_X550EM");
  }

  inited = ixgbe_init_ops_X550(a1);
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  *(a1 + 224) = 0;
  *(a1 + 232) = 0;
  *(a1 + 544) = 0u;
  *(a1 + 560) = 0u;
  *(a1 + 1808) = 4;
  *(a1 + 128) = ixgbe_get_bus_info_X550em;
  *(a1 + 56) = ixgbe_get_media_type_X550em;
  *(a1 + 168) = ixgbe_setup_sfp_modules_X550em;
  *(a1 + 288) = ixgbe_get_link_capabilities_X550em;
  *(a1 + 24) = ixgbe_reset_hw_X550em;
  *(a1 + 64) = ixgbe_get_supported_physical_layer_X550em;
  media_type_X550em = ixgbe_get_media_type_X550em(a1);
  v4 = ixgbe_setup_fc_X550em;
  if (media_type_X550em == 4)
  {
    v4 = ixgbe_setup_fc_generic;
  }

  *(a1 + 520) = v4;
  *(a1 + 1432) = ixgbe_init_phy_ops_X550em;
  v5 = *(a1 + 1936);
  if ((v5 - 5604) >= 2)
  {
    if (v5 == 5550)
    {
      *(a1 + 520) = 0;
      *(a1 + 1416) = ixgbe_identify_phy_x550em;
      *(a1 + 1576) = 0;
    }

    else
    {
      *(a1 + 1416) = ixgbe_identify_phy_x550em;
    }
  }

  else
  {
    *(a1 + 520) = 0;
    *(a1 + 1416) = ixgbe_identify_phy_fw;
    *(a1 + 1576) = 0;
    *(a1 + 1512) = 0;
  }

  if ((*(a1 + 56))(a1) != 4)
  {
    *(a1 + 1576) = 0;
  }

  *(a1 + 1720) = ixgbe_init_eeprom_params_X540;
  *(a1 + 1728) = ixgbe_read_ee_hostif_X550;
  *(a1 + 1736) = ixgbe_read_ee_hostif_buffer_X550;
  *(a1 + 1744) = ixgbe_write_ee_hostif_X550;
  *(a1 + 1752) = ixgbe_write_ee_hostif_buffer_X550;
  *(a1 + 1768) = ixgbe_update_eeprom_checksum_X550;
  *(a1 + 1760) = ixgbe_validate_eeprom_checksum_X550;
  *(a1 + 1776) = ixgbe_calc_eeprom_checksum_X550;
  return inited;
}

uint64_t ixgbe_get_bus_info_X550em(uint64_t a1)
{
  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixgbe:%s(%d): %s\n", "ixgbe_get_bus_info_X550em", 3659, "ixgbe_get_bus_info_x550em");
  }

  *(a1 + 1800) = 0;
  (*(a1 + 144))(a1);
  return 0;
}

uint64_t ixgbe_get_media_type_X550em(uint64_t a1)
{
  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixgbe:%s(%d): %s\n", "ixgbe_get_media_type_X550em", 1471, "ixgbe_get_media_type_X550em");
  }

  v2 = *(a1 + 1936);
  if (v2 > 0x15C3)
  {
    v4 = v2 + 56;
    if (v2 - 5576 <= 0x1D)
    {
      if (((1 << v4) & 0x54) != 0)
      {
        return 1;
      }

      if (((1 << v4) & 0x30000000) != 0 || v2 == 5576)
      {
        return 4;
      }
    }

    if (v2 - 5574 < 2)
    {
      *(a1 + 1616) = 26;
      return 5;
    }

    v5 = 5572;
    return v2 == v5;
  }

  result = 5;
  if (*(a1 + 1936) <= 0x15ACu)
  {
    if (v2 - 5546 < 2)
    {
      return result;
    }

    v5 = 5548;
    return v2 == v5;
  }

  if (v2 - 5549 < 2)
  {
    return 4;
  }

  if (v2 - 5570 >= 2 && v2 != 5552)
  {
    return 0;
  }

  return result;
}

uint64_t ixgbe_setup_sfp_modules_X550em(uint64_t a1)
{
  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixgbe:%s(%d): %s\n", "ixgbe_setup_sfp_modules_X550em", 1579, "ixgbe_setup_sfp_modules_X550em");
  }

  v2 = ixgbe_supported_sfp_modules_X550em(a1, &v4);
  if (!v2)
  {
    ixgbe_init_mac_link_ops_X550em(a1);
    *(a1 + 1440) = 0;
  }

  return v2;
}

uint64_t ixgbe_get_link_capabilities_X550em(uint64_t a1, int *a2, _BYTE *a3)
{
  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixgbe:%s(%d): %s\n", "ixgbe_get_link_capabilities_X550em", 1850, "ixgbe_get_link_capabilities_X550em");
  }

  v6 = *(a1 + 1616);
  if (v6 != 27)
  {
    if (*(a1 + 1640) == 1)
    {
      *a3 = 0;
      if ((*(a1 + 1628) - 11) > 3)
      {
        if (*(a1 + 1673) == 1)
        {
          v7 = 160;
        }

        else
        {
          v7 = 128;
        }
      }

      else
      {
        v7 = 32;
      }

      goto LABEL_5;
    }

    if (v6 == 26 || v6 == 8)
    {
      goto LABEL_14;
    }

    if (v6 != 4 || *(a1 + 696) != 8)
    {
      goto LABEL_21;
    }

    if ((*(a1 + 1678) & 0x10) != 0)
    {
      v9 = 1024;
      goto LABEL_22;
    }

    if (*(a1 + 1936) == 5571)
    {
LABEL_14:
      v9 = 32;
    }

    else
    {
LABEL_21:
      v9 = 160;
    }

LABEL_22:
    *a2 = v9;
    *a3 = 1;
    return 0;
  }

  *a3 = 1;
  v7 = *(a1 + 1656);
LABEL_5:
  *a2 = v7;
  return 0;
}

uint64_t ixgbe_reset_hw_X550em(uint64_t a1)
{
  v15 = 0;
  v2 = *(a1 + 1644);
  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixgbe:%s(%d): %s\n", "ixgbe_reset_hw_X550em", 2399, "ixgbe_reset_hw_X550em");
  }

  v3 = (*(a1 + 120))(a1);
  if (v3)
  {
    inited = v3;
    if ((pcindkll & 0x100000) != 0)
    {
      IOLog("ixgbe:%s(%d): Failed to stop adapter, STATUS = %d\n\n");
    }
  }

  else
  {
    ixgbe_clear_tx_pending(a1);
    ixgbe_set_mdio_speed(a1);
    v6 = (*(a1 + 1432))(a1);
    inited = v6;
    if (!v6)
    {
      goto LABEL_55;
    }

    if ((pcindkll & 0x100000) != 0)
    {
      IOLog("ixgbe:%s(%d): Failed to initialize PHY ops, STATUS = %d\n\n", "ixgbe_reset_hw_X550em", 2417, v6);
    }

    if ((inited & 0xFFFFFFFD) == 0xFFFFFFED)
    {
      if ((pcindkll & 0x100000) != 0)
      {
        IOLog("ixgbe:%s(%d): %s\n");
      }
    }

    else
    {
LABEL_55:
      if (*(a1 + 1616) == 7 && (inited = ixgbe_init_ext_t_x550em(a1), inited))
      {
        if ((pcindkll & 0x100000) != 0)
        {
          IOLog("ixgbe:%s(%d): Failed to start the external PHY, STATUS = %d\n\n");
        }
      }

      else
      {
        if (*(a1 + 1632) == 1)
        {
          LODWORD(inited) = (*(a1 + 168))(a1);
          *(a1 + 1632) = 0;
        }

        if (inited == -19)
        {
          return 4294967277;
        }

        else if ((*(a1 + 1648) & 1) == 0 && (v7 = *(a1 + 1440)) != 0 && v7(a1) == -26)
        {
          return 4294967270;
        }

        else
        {
          v16 = 0;
          while (1)
          {
            if (*(a1 + 1952))
            {
              v8 = 8;
            }

            else
            {
              (*(a1 + 280))(a1, &v16, &v15, 0);
              v8 = v15 ? 0x4000000 : 8;
            }

            v9 = (*(a1 + 200))(a1, v2);
            if (v9)
            {
              break;
            }

            readData = 0;
            IOPCIDevice::MemoryRead32(*a1, 0, 0, &readData);
            __dmb(1u);
            v10 = readData;
            __dmb(2u);
            IOPCIDevice::MemoryWrite32(*a1, 0, 0, v10 | v8);
            readData = 0;
            IOPCIDevice::MemoryRead32(*a1, 0, 8uLL, &readData);
            __dmb(1u);
            (*(a1 + 208))(a1, v2);
            v11 = 0;
            do
            {
              IODelay(1uLL);
              readData = 0;
              IOPCIDevice::MemoryRead32(*a1, 0, 0, &readData);
              __dmb(1u);
              v12 = readData & 0x4000008;
            }

            while ((readData & 0x4000008) != 0 && v11++ < 9);
            if (v12)
            {
              if ((pcindkll & 0x100000) != 0)
              {
                IOLog("ixgbe:%s(%d): %s\n", "ixgbe_reset_hw_X550em", 2484, "Reset polling failed to complete.\n");
              }

              inited = 4294967281;
            }

            else
            {
              inited = 0;
            }

            IODelay(0xC350uLL);
            if ((*(a1 + 1285) & 1) == 0)
            {
              (*(a1 + 72))(a1, a1 + 706);
              *(a1 + 1248) = 128;
              (*(a1 + 408))(a1);
              ixgbe_set_mdio_speed(a1);
              if (*(a1 + 1936) == 5548)
              {
                ixgbe_setup_mux_ctl(a1);
              }

              if (v12 && (pcindkll & 0x100000) != 0)
              {
                IOLog("ixgbe:%s(%d): Reset HW failed, STATUS = %d\n\n");
              }

              return inited;
            }

            *(a1 + 1285) &= ~1u;
          }

          if ((pcindkll & 0x100000) != 0)
          {
            IOLog("ixgbe:%s(%d): semaphore failed with %d\n", "ixgbe_reset_hw_X550em", 2466, v9);
          }

          return 4294967280;
        }
      }
    }
  }

  return inited;
}

uint64_t ixgbe_get_supported_physical_layer_X550em(uint64_t a1)
{
  v5 = 0;
  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixgbe:%s(%d): %s\n", "ixgbe_get_supported_physical_layer_X550em", 3588, "ixgbe_get_supported_physical_layer_X550em");
  }

  (*(a1 + 1416))(a1);
  v2 = *(a1 + 1616);
  if (v2 > 6)
  {
    if (v2 <= 25)
    {
      if (v2 == 7)
      {
        (*(a1 + 1448))(a1, 11, 1, &v5);
        v3 = (v5 >> 4) & 2 | (v5 >> 2) & 1;
      }

      else if (v2 == 8)
      {
        v3 = 2;
      }

      else
      {
        v3 = 0;
      }

      goto LABEL_24;
    }

    if (v2 != 26)
    {
      v3 = 0;
      if (v2 == 27)
      {
        v3 = (*(a1 + 1656) >> 4) & 2 | (*(a1 + 1656) >> 1) & 4 | (((*(a1 + 1656) >> 1) & 1u) << 15);
      }

      goto LABEL_24;
    }

LABEL_19:
    v3 = 512;
    goto LABEL_24;
  }

  if (v2 == 4)
  {
    if (*(a1 + 696) == 8)
    {
      if ((*(a1 + 1678) & 0x10) != 0)
      {
        v3 = 0x10000;
        goto LABEL_24;
      }

      if (*(a1 + 1936) == 5571)
      {
        goto LABEL_19;
      }
    }

LABEL_20:
    v3 = 2560;
    goto LABEL_24;
  }

  if (v2 == 5)
  {
    v3 = 640;
    goto LABEL_24;
  }

  v3 = 0;
  if (v2 == 6)
  {
    goto LABEL_20;
  }

LABEL_24:
  if ((*(a1 + 56))(a1) == 1)
  {
    return ixgbe_get_supported_phy_sfp_layer_generic(a1);
  }

  return v3;
}

uint64_t ixgbe_setup_fc_X550em(uint64_t a1)
{
  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixgbe:%s(%d): %s\n", "ixgbe_setup_fc_X550em", 3871, "ixgbe_setup_fc_X550em");
  }

  v2 = *(a1 + 1408);
  if (*(a1 + 1399) == 1 && v2 == 1)
  {
    if ((pcindkll & 0x100000) != 0)
    {
      IOLog("ixgbe:%s(%d): ixgbe_fc_rx_pause not valid in strict IEEE mode\n\n", "ixgbe_setup_fc_X550em", 3876);
    }

    return 4294967283;
  }

  if (v2 <= 1)
  {
    if (!v2)
    {
      v5 = 1;
      v6 = 1;
      goto LABEL_20;
    }

    if (v2 == 1)
    {
      goto LABEL_17;
    }

    goto LABEL_38;
  }

  if (v2 == 2)
  {
    v6 = 0;
    v5 = 1;
    goto LABEL_20;
  }

  if (v2 != 3)
  {
    if (v2 == 4)
    {
      *(a1 + 1408) = 3;
      goto LABEL_17;
    }

LABEL_38:
    if ((pcindkll & 0x100000) != 0)
    {
      IOLog("ixgbe:%s(%d): Flow control param set incorrectly\n\n", "ixgbe_setup_fc_X550em", 3912);
    }

    return 4294967292;
  }

LABEL_17:
  v5 = 0;
  v6 = 0;
LABEL_20:
  v7 = *(a1 + 1936);
  if ((v7 - 5570) < 2)
  {
    goto LABEL_23;
  }

  if (v7 == 5552)
  {
    result = 0;
LABEL_37:
    *(a1 + 1400) = 1;
    return result;
  }

  if (v7 != 5547)
  {
    return 0;
  }

LABEL_23:
  v12 = 0;
  if (*(a1 + 1814))
  {
    v8 = 33324;
  }

  else
  {
    v8 = 16940;
  }

  result = (*(a1 + 648))(a1, v8, 0, &v12);
  if (!result)
  {
    v9 = v12 & 0xCFFFFFFF;
    if (!v5)
    {
      v9 = v12 & 0xCFFFFFFF | 0x10000000;
    }

    if (v6)
    {
      v10 = v9;
    }

    else
    {
      v10 = v9 | 0x20000000;
    }

    v12 = v10;
    if (*(a1 + 1814))
    {
      v11 = 33324;
    }

    else
    {
      v11 = 16940;
    }

    result = (*(a1 + 656))(a1, v11, 0);
    goto LABEL_37;
  }

  return result;
}

uint64_t ixgbe_init_phy_ops_X550em(uint64_t a1)
{
  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixgbe:%s(%d): %s\n", "ixgbe_init_phy_ops_X550em", 2242, "ixgbe_init_phy_ops_X550em");
  }

  (*(a1 + 144))(a1);
  ixgbe_read_mng_if_sel_x550em(a1);
  if ((*(a1 + 56))(a1) == 1)
  {
    *(a1 + 1644) = 6150;
    ixgbe_setup_mux_ctl(a1);
    *(a1 + 1424) = ixgbe_identify_sfp_module_X550em;
  }

  v2 = *(a1 + 1936);
  if (v2 > 0x15CD)
  {
    if (v2 - 5604 < 2)
    {
      *(a1 + 1448) = 0u;
      *(a1 + 1464) = 0u;
      *(a1 + 1568) = ixgbe_check_overtemp_fw;
LABEL_14:
      v4 = *(a1 + 1644);
      if (*(a1 + 1814))
      {
        v5 = v4 | 4;
      }

      else
      {
        v5 = v4 | 2;
      }

      goto LABEL_18;
    }

    v3 = 5582;
LABEL_12:
    if (v2 != v3)
    {
      goto LABEL_19;
    }

    *(a1 + 1448) = ixgbe_read_phy_reg_x550a;
    *(a1 + 1456) = ixgbe_write_phy_reg_x550a;
    goto LABEL_14;
  }

  if (v2 == 5548)
  {
    v5 = 6150;
LABEL_18:
    *(a1 + 1644) = v5;
    goto LABEL_19;
  }

  if (v2 != 5550)
  {
    v3 = 5576;
    goto LABEL_12;
  }

  *(a1 + 1464) = 0u;
LABEL_19:
  v6 = (*(a1 + 1416))(a1);
  if ((v6 & 0xFFFFFFFD) == 0xFFFFFFED)
  {
    return v6;
  }

  ixgbe_init_mac_link_ops_X550em(a1);
  if (*(a1 + 1628) != 0xFFFF)
  {
    *(a1 + 1440) = 0;
  }

  v7 = *(a1 + 1616);
  if (v7 <= 6)
  {
    if (v7 == 4)
    {
      *(a1 + 1480) = ixgbe_setup_kr_x550em;
    }

    else
    {
      if (v7 != 5 && v7 != 6)
      {
        return v6;
      }

      *(a1 + 1480) = 0;
    }

    v11 = ixgbe_write_phy_reg_x550em;
    v8 = ixgbe_read_phy_reg_x550em;
    v10 = 1456;
    v9 = 1448;
    goto LABEL_41;
  }

  v8 = 0;
  v9 = 1480;
  if (v7 > 25)
  {
    if (v7 == 26)
    {
LABEL_42:
      *(a1 + v9) = v8;
      return v6;
    }

    if (v7 == 27)
    {
      v11 = ixgbe_reset_phy_fw;
      v8 = ixgbe_setup_fw_link;
      v10 = 1440;
      v9 = 1480;
      goto LABEL_41;
    }
  }

  else
  {
    if (v7 == 7)
    {
      *(a1 + 1488) = ixgbe_setup_internal_phy_t_x550em;
      v11 = ixgbe_reset_phy_t_X550em;
      v8 = ixgbe_handle_lasi_ext_t_x550em;
      if (*(a1 + 696) == 7)
      {
        readData = 0;
        IOPCIDevice::MemoryRead32(*a1, 0, 0x11158uLL, &readData);
        __dmb(1u);
        v11 = ixgbe_reset_phy_t_X550em;
        v8 = ixgbe_handle_lasi_ext_t_x550em;
        if ((readData & 0xC0) == 0)
        {
          *(a1 + 1584) = ixgbe_enter_lplu_t_x550em;
          v11 = ixgbe_reset_phy_t_X550em;
          v8 = ixgbe_handle_lasi_ext_t_x550em;
        }
      }

      v10 = 1440;
      v9 = 1592;
      goto LABEL_41;
    }

    if (v7 == 8)
    {
      v10 = 1440;
      v11 = 0;
LABEL_41:
      *(a1 + v9) = v8;
      v9 = v10;
      v8 = v11;
      goto LABEL_42;
    }
  }

  return v6;
}

void ixgbe_identify_phy_fw(uint64_t a1)
{
  if (*(a1 + 1814))
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  *(a1 + 1644) = v2;
  *(a1 + 1616) = 27;
  *(a1 + 1448) = 0u;
  v11 = 0uLL;
  ixgbe_fw_phy_activity(a1, 7, &v11);
  if (!v3)
  {
    v4 = 0;
    *(a1 + 1656) = 0;
    v5 = v11.i32[0];
    v6 = v11.i16[0] & 0xFFF;
    v7 = &dword_10002FEB4;
    v8 = 6;
    do
    {
      if ((v6 & *(v7 - 1)) != 0)
      {
        v4 |= *v7;
        *(a1 + 1656) = v4;
      }

      v7 += 2;
      --v8;
    }

    while (v8);
    if (!*(a1 + 1652))
    {
      *(a1 + 1652) = v4;
    }

    v9 = v5 & 0xFFFF0000;
    v10 = v11.i8[4];
    *(a1 + 1624) = v11.i16[2] & 0xFFF0 | v9;
    *(a1 + 1636) = v10 & 0xF;
  }
}

uint64_t ixgbe_identify_phy_x550em(uint64_t a1)
{
  (*(a1 + 144))();
  ixgbe_read_mng_if_sel_x550em(a1);
  result = 0;
  v3 = *(a1 + 1936);
  if (v3 <= 0x15C1)
  {
    if (*(a1 + 1936) > 0x15ACu)
    {
      switch(v3)
      {
        case 0x15ADu:
          goto LABEL_41;
        case 0x15AEu:
          result = 0;
          v12 = 8;
          break;
        case 0x15B0u:
          result = 0;
          v12 = 6;
          break;
        default:
          return result;
      }

LABEL_48:
      *(a1 + 1616) = v12;
      return result;
    }

    if (v3 == 5546)
    {
      result = 0;
      v12 = 5;
      goto LABEL_48;
    }

    if (v3 == 5547)
    {
LABEL_34:
      result = 0;
      v12 = 4;
      goto LABEL_48;
    }

    if (v3 != 5548)
    {
      return result;
    }

    ixgbe_setup_mux_ctl(a1);
    v4 = 0;
    v5 = *(a1 + 1644);
    v19 = 0;
    do
    {
      v6 = (*(a1 + 200))(a1, v5);
      if (v6)
      {
        if ((pcindkll & 0x100000) != 0)
        {
          IOLog("ixgbe:%s(%d): semaphore failed with %d\n", "ixgbe_check_cs4227", 226, v6);
        }
      }

      else
      {
        v7 = (*(a1 + 1688))(a1, *(a1 + 1712), 2, &v19);
        if (v7)
        {
          v8 = 0;
        }

        else
        {
          v8 = v19 == 23205;
        }

        if (v8)
        {
          goto LABEL_74;
        }

        if (v7)
        {
          v9 = 0;
        }

        else
        {
          v9 = v19 == 4951;
        }

        if (!v9)
        {
          goto LABEL_51;
        }

        (*(a1 + 208))(a1, v5);
      }

      IODelay(0x7530uLL);
    }

    while (v4++ < 0xE);
    v11 = (*(a1 + 200))(a1, v5);
    if (!v11)
    {
LABEL_51:
      v21 = 0;
      v20 = 0;
      pe = ixgbe_read_pe(a1);
      if (pe)
      {
        goto LABEL_72;
      }

      v20 |= 2u;
      pe = ixgbe_write_pe(a1);
      if (pe)
      {
        goto LABEL_72;
      }

      pe = ixgbe_read_pe(a1);
      if (pe)
      {
        goto LABEL_72;
      }

      v20 &= ~2u;
      pe = ixgbe_write_pe(a1);
      if (pe || (pe = ixgbe_read_pe(a1)) != 0 || (v20 &= ~2u, (pe = ixgbe_write_pe(a1)) != 0) || (IODelay(0x1F4uLL), (pe = ixgbe_read_pe(a1)) != 0) || (v20 |= 2u, (pe = ixgbe_write_pe(a1)) != 0))
      {
LABEL_72:
        if ((pcindkll & 0x100000) != 0)
        {
          IOLog("ixgbe:%s(%d): CS4227 reset failed: %d\n", "ixgbe_check_cs4227", 261, pe);
        }
      }

      else
      {
        IODelay(0x6DDD0uLL);
        v16 = 15;
        while ((*(a1 + 1688))(a1, *(a1 + 1712), 385, &v21) || v21 != 1)
        {
          IODelay(0x7530uLL);
          if (!--v16)
          {
            if ((pcindkll & 0x100000) != 0)
            {
              IOLog("ixgbe:%s(%d): CS4227 reset did not complete.\n");
            }

LABEL_71:
            pe = -3;
            goto LABEL_72;
          }
        }

        if ((*(a1 + 1688))(a1, *(a1 + 1712), 20481, &v21) || (v21 & 1) == 0)
        {
          if ((pcindkll & 0x100000) != 0)
          {
            IOLog("ixgbe:%s(%d): CS4227 EEPROM did not load successfully.\n");
          }

          goto LABEL_71;
        }

        (*(a1 + 1704))(a1, *(a1 + 1712), 2, 4951);
        (*(a1 + 208))(a1, v5);
        IODelay(0x2710uLL);
        v18 = (*(a1 + 200))(a1, v5);
        if (v18)
        {
          if ((pcindkll & 0x100000) != 0)
          {
            IOLog("ixgbe:%s(%d): semaphore failed with %d\n", "ixgbe_check_cs4227", 275, v18);
          }

          return ixgbe_identify_module_generic(a1);
        }

        (*(a1 + 1704))(a1, *(a1 + 1712), 2, 23205);
      }

LABEL_74:
      (*(a1 + 208))(a1, v5);
      IODelay((1000 * *(a1 + 1788)));
      return ixgbe_identify_module_generic(a1);
    }

    if ((pcindkll & 0x100000) != 0)
    {
      IOLog("ixgbe:%s(%d): semaphore failed with %d\n", "ixgbe_check_cs4227", 252, v11);
    }

    return ixgbe_identify_module_generic(a1);
  }

  if (*(a1 + 1936) <= 0x15C7u)
  {
    if (v3 - 5570 < 2)
    {
      goto LABEL_34;
    }

    if (v3 != 5572)
    {
      return result;
    }

    return ixgbe_identify_module_generic(a1);
  }

  if (v3 - 5604 < 2)
  {
    *(a1 + 1616) = 27;
    v13 = *(a1 + 1644);
    result = 0;
    if (*(a1 + 1814))
    {
      v14 = v13 | 4;
    }

    else
    {
      v14 = v13 | 2;
    }

    *(a1 + 1644) = v14;
    return result;
  }

  if (v3 != 5576)
  {
    if (v3 == 5582)
    {

      return ixgbe_identify_module_generic(a1);
    }

    return result;
  }

LABEL_41:

  return ixgbe_identify_phy_generic(a1);
}

uint64_t ixgbe_init_ops_X550EM_a(uint64_t a1)
{
  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixgbe:%s(%d): %s\n", "ixgbe_init_ops_X550EM_a", 759, "ixgbe_init_ops_X550EM_a");
  }

  inited = ixgbe_init_ops_X550EM(a1);
  v3 = *(a1 + 1936) & 0xFFFE;
  v4 = v3 == 5574;
  if (v3 == 5574)
  {
    v5 = ixgbe_read_iosf_sb_reg_x550;
  }

  else
  {
    v5 = ixgbe_read_iosf_sb_reg_x550a;
  }

  v6 = ixgbe_write_iosf_sb_reg_x550a;
  if (v4)
  {
    v6 = ixgbe_write_iosf_sb_reg_x550;
  }

  *(a1 + 648) = v5;
  *(a1 + 656) = v6;
  *(a1 + 200) = ixgbe_acquire_swfw_sync_X550a;
  *(a1 + 208) = ixgbe_release_swfw_sync_X550a;
  v7 = (*(a1 + 56))(a1);
  if (v7 == 1)
  {
    v8 = ixgbe_fc_autoneg_fiber_x550em_a;
    v9 = 0;
    v10 = 528;
    v11 = 520;
  }

  else
  {
    if (v7 != 5)
    {
      goto LABEL_13;
    }

    v8 = ixgbe_setup_fc_backplane_x550em_a;
    v9 = ixgbe_fc_autoneg_backplane_x550em_a;
    v10 = 520;
    v11 = 528;
  }

  *(a1 + v11) = v9;
  *(a1 + v10) = v8;
LABEL_13:
  if ((*(a1 + 1936) & 0xFFFE) == 0x15E4)
  {
    *(a1 + 528) = ixgbe_fc_autoneg_sgmii_x550em_a;
    *(a1 + 520) = ixgbe_fc_autoneg_fw;
    *(a1 + 640) = ixgbe_setup_eee_fw;
    *(a1 + 1660) = 0x2800000028;
  }

  return inited;
}

uint64_t ixgbe_read_iosf_sb_reg_x550(IOPCIDevice **a1, int a2, int a3, uint32_t *a4)
{
  v8 = ixgbe_acquire_swfw_semaphore(a1);
  if (!v8)
  {
    v12 = 0;
    v8 = ixgbe_iosf_wait(a1, 0);
    if (!v8)
    {
      v12 = a2 | (a3 << 28);
      __dmb(2u);
      IOPCIDevice::MemoryWrite32(*a1, 0, 0x11144uLL, v12);
      v9 = ixgbe_iosf_wait(a1, &v12);
      if ((v12 & 0xC0000) != 0)
      {
        if ((pcindkll & 0x100000) != 0)
        {
          IOLog("ixgbe:%s(%d): Failed to read, error %x\n\n", "ixgbe_read_iosf_sb_reg_x550", 1172, (v12 >> 20));
        }

        v8 = 4294967293;
      }

      else
      {
        v8 = v9;
        if (!v9)
        {
          readData = 0;
          IOPCIDevice::MemoryRead32(*a1, 0, 0x11148uLL, &readData);
          __dmb(1u);
          *a4 = readData;
        }
      }
    }

    ixgbe_release_swfw_semaphore(a1);
  }

  return v8;
}

uint64_t ixgbe_write_iosf_sb_reg_x550(IOPCIDevice **a1, int a2, int a3, uint32_t a4)
{
  v8 = ixgbe_acquire_swfw_semaphore(a1);
  if (!v8)
  {
    v11 = 0;
    v9 = ixgbe_iosf_wait(a1, 0);
    if (v9 || (v11 = a2 | (a3 << 28), __dmb(2u), IOPCIDevice::MemoryWrite32(*a1, 0, 0x11144uLL, v11), __dmb(2u), IOPCIDevice::MemoryWrite32(*a1, 0, 0x11148uLL, a4), v9 = ixgbe_iosf_wait(a1, &v11), (v11 & 0xC0000) == 0))
    {
      v8 = v9;
    }

    else
    {
      if ((pcindkll & 0x100000) != 0)
      {
        IOLog("ixgbe:%s(%d): Failed to write, error %x\n\n", "ixgbe_write_iosf_sb_reg_x550", 1129, (v11 >> 20));
      }

      v8 = 4294967293;
    }

    ixgbe_release_swfw_semaphore(a1);
  }

  return v8;
}

uint64_t ixgbe_read_iosf_sb_reg_x550a(uint64_t a1, unsigned int a2, uint64_t a3, _DWORD *a4)
{
  *v7 = 65280;
  *&v7[6] = 0;
  v6 = 2571;
  v7[2] = *(a1 + 1814);
  *&v7[4] = bswap32(a2) >> 16;
  result = ixgbe_host_interface_command(a1, &v6, 0x10u, 500, 1);
  *a4 = bswap32(*&v7[2]);
  return result;
}

uint64_t ixgbe_write_iosf_sb_reg_x550a(uint64_t a1, unsigned int a2, uint64_t a3, unsigned int a4)
{
  *v6 = 65280;
  *&v6[6] = 0;
  v5 = 2571;
  v6[2] = *(a1 + 1814);
  v6[3] = 1;
  *&v6[4] = bswap32(a2) >> 16;
  *&v6[8] = bswap32(a4);
  return ixgbe_host_interface_command(a1, &v5, 0x10u, 500, 0);
}

uint64_t ixgbe_acquire_swfw_sync_X550a(uint64_t a1, int a2)
{
  v4 = a2 & 0xBFFFFFFF;
  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixgbe:%s(%d): %s\n", "ixgbe_acquire_swfw_sync_X550a", 4255, "ixgbe_acquire_swfw_sync_X550a");
  }

  v5 = -999;
  while (1)
  {
    if (v4)
    {
      v6 = ixgbe_acquire_swfw_sync_X540(a1, v4);
      if (v6)
      {
        break;
      }
    }

    if ((a2 & 0x40000000) == 0)
    {
      return 0;
    }

    phy_token = ixgbe_get_phy_token(a1);
    v8 = phy_token;
    if (phy_token == -40)
    {
      if ((pcindkll & 0x100000) != 0)
      {
        IOLog("ixgbe:%s(%d): Could not acquire PHY token, Status = %d\n\n", "ixgbe_acquire_swfw_sync_X550a", 4272, -40);
      }
    }

    else if (!phy_token)
    {
      return v8;
    }

    if (v4)
    {
      ixgbe_release_swfw_sync_X540(a1, v4);
    }

    if (v8 != -40)
    {
      if ((pcindkll & 0x100000) != 0)
      {
        IOLog("ixgbe:%s(%d): Unable to retry acquiring the PHY token, Status = %d\n\n");
      }

      return v8;
    }

    if (__CFADD__(v5++, 1))
    {
      if ((pcindkll & 0x100000) != 0)
      {
        IOLog("ixgbe:%s(%d): Semaphore acquisition retries failed!: PHY ID = 0x%08X\n\n", "ixgbe_acquire_swfw_sync_X550a", 4288, *(a1 + 1624));
      }

      return 4294967256;
    }
  }

  v8 = v6;
  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixgbe:%s(%d): Could not acquire SWFW semaphore, Status = %d\n\n");
  }

  return v8;
}

void ixgbe_release_swfw_sync_X550a(uint64_t a1, int a2)
{
  v4 = a2 & 0xBFFFFFFF;
  if ((pcindkll & 0x100000) == 0)
  {
    if ((a2 & 0x40000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_8:
    ixgbe_put_phy_token(a1);
    if (!v4)
    {
      return;
    }

    goto LABEL_4;
  }

  IOLog("ixgbe:%s(%d): %s\n", "ixgbe_release_swfw_sync_X550a", 4303, "ixgbe_release_swfw_sync_X550a");
  if ((a2 & 0x40000000) != 0)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (!v4)
  {
    return;
  }

LABEL_4:

  ixgbe_release_swfw_sync_X540(a1, v4);
}

uint64_t ixgbe_fc_autoneg_fiber_x550em_a(uint64_t result)
{
  *(result + 1401) = 0;
  *(result + 1404) = *(result + 1408);
  return result;
}

uint64_t ixgbe_fc_autoneg_backplane_x550em_a(uint64_t result)
{
  v1 = result;
  if (*(result + 1400) == 1)
  {
    if ((pcindkll & 0x100000) != 0)
    {
      result = IOLog("ixgbe:%s(%d): Flow control autoneg is disabled\n");
    }

    goto LABEL_14;
  }

  v8 = 0;
  v7 = 0;
  v6 = 0;
  v5 = 0;
  result = (*(result + 280))(result, &v6, &v5, 0);
  if ((v5 & 1) == 0)
  {
    if ((pcindkll & 0x100000) != 0)
    {
      result = IOLog("ixgbe:%s(%d): The link is down\n");
    }

    goto LABEL_14;
  }

  if (*(v1 + 1814))
  {
    v2 = 33280;
  }

  else
  {
    v2 = 16896;
  }

  result = (*(v1 + 648))(v1, v2, 0, &v8 + 4);
  if (result || (v8 & 0x1000000000000000) == 0)
  {
    if ((pcindkll & 0x100000) == 0)
    {
LABEL_14:
      *(v1 + 1401) = 0;
      *(v1 + 1404) = *(v1 + 1408);
      return result;
    }

LABEL_11:
    result = IOLog("ixgbe:%s(%d): %s\n");
    goto LABEL_14;
  }

  if (*(v1 + 1814))
  {
    v3 = 33324;
  }

  else
  {
    v3 = 16940;
  }

  result = (*(v1 + 648))(v1, v3, 0, &v7);
  if (result)
  {
    if ((pcindkll & 0x100000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_11;
  }

  if (*(v1 + 1814))
  {
    v4 = 33644;
  }

  else
  {
    v4 = 17260;
  }

  result = (*(v1 + 648))(v1, v4, 0, &v8);
  if (result)
  {
    if ((pcindkll & 0x100000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_11;
  }

  result = ixgbe_negotiate_fc(v1, v7, v8, 0x10000000, 0x20000000, 1024, 2048);
  if (result)
  {
    goto LABEL_14;
  }

  *(v1 + 1401) = 1;
  return result;
}

uint64_t ixgbe_setup_fc_backplane_x550em_a(uint64_t a1)
{
  v11 = 0;
  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixgbe:%s(%d): %s\n", "ixgbe_setup_fc_backplane_x550em_a", 4105, "ixgbe_setup_fc_backplane_x550em_a");
  }

  v2 = *(a1 + 1408);
  if (*(a1 + 1399) != 1 || v2 != 1)
  {
    if (v2 == 4)
    {
      *(a1 + 1408) = 3;
    }

    if (*(a1 + 1814))
    {
      v4 = 33324;
    }

    else
    {
      v4 = 16940;
    }

    v5 = (*(a1 + 648))(a1, v4, 0, &v11);
    if (v5)
    {
      v6 = v5;
      if ((pcindkll & 0x100000) != 0)
      {
        IOLog("ixgbe:%s(%d): %s\n", "ixgbe_setup_fc_backplane_x550em_a", 4126, "Auto-Negotiation did not complete\n");
      }

      return v6;
    }

    v7 = *(a1 + 1408);
    if (v7 > 1)
    {
      if (v7 == 2)
      {
        v8 = v11 & 0xCFFFFFFF | 0x20000000;
        goto LABEL_29;
      }

      if (v7 != 3)
      {
        goto LABEL_21;
      }
    }

    else
    {
      if (!v7)
      {
        v8 = v11 & 0xCFFFFFFF;
        goto LABEL_29;
      }

      if (v7 != 1)
      {
LABEL_21:
        if ((pcindkll & 0x100000) != 0)
        {
          IOLog("ixgbe:%s(%d): Flow control param set incorrectly\n\n", "ixgbe_setup_fc_backplane_x550em_a", 4168);
        }

        return 4294967292;
      }
    }

    v8 = v11 | 0x30000000;
LABEL_29:
    v11 = v8;
    if (*(a1 + 1814))
    {
      v9 = 33324;
    }

    else
    {
      v9 = 16940;
    }

    (*(a1 + 656))(a1, v9, 0);
    return ixgbe_restart_an_internal_phy_x550em(a1);
  }

  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixgbe:%s(%d): ixgbe_fc_rx_pause not valid in strict IEEE mode\n\n", "ixgbe_setup_fc_backplane_x550em_a", 4110);
  }

  return 4294967283;
}

void ixgbe_fc_autoneg_sgmii_x550em_a(uint64_t a1)
{
  v5 = 0uLL;
  if (*(a1 + 1400) == 1)
  {
    if ((pcindkll & 0x100000) != 0)
    {
      IOLog("ixgbe:%s(%d): Flow control autoneg is disabled\n");
    }
  }

  else
  {
    v4 = 0;
    v3 = 0;
    (*(a1 + 280))(a1, &v4, &v3, 0);
    if (v3)
    {
      ixgbe_fw_phy_activity(a1, 3, &v5);
      if (!v2 && (v5.i32[0] & 0x1000000) != 0)
      {
        if (!ixgbe_negotiate_fc(a1, v5.i32[0], v5.i32[0], 0x200000, 0x100000, 0x20000000, 0x10000000))
        {
          *(a1 + 1401) = 1;
          return;
        }
      }

      else if ((pcindkll & 0x100000) != 0)
      {
        IOLog("ixgbe:%s(%d): %s\n");
      }
    }

    else if ((pcindkll & 0x100000) != 0)
    {
      IOLog("ixgbe:%s(%d): The link is down\n");
    }
  }

  *(a1 + 1401) = 0;
  *(a1 + 1404) = *(a1 + 1408);
}

void ixgbe_fc_autoneg_fw(uint64_t a1)
{
  if (*(a1 + 1408) == 4)
  {
    *(a1 + 1408) = 3;
  }

  ixgbe_setup_fw_link(a1);
}

uint64_t ixgbe_setup_eee_fw(uint64_t a1, int a2)
{
  if (((*(a1 + 1664) == 0) ^ a2))
  {
    return 0;
  }

  if (a2)
  {
    v3 = *(a1 + 1660);
  }

  else
  {
    v3 = 0;
  }

  *(a1 + 1664) = v3;
  return (*(a1 + 1480))();
}

uint64_t ixgbe_init_ops_X550EM_x(uint64_t a1)
{
  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixgbe:%s(%d): %s\n", "ixgbe_init_ops_X550EM_x", 818, "ixgbe_init_ops_X550EM_x");
  }

  result = ixgbe_init_ops_X550EM(a1);
  *(a1 + 648) = ixgbe_read_iosf_sb_reg_x550;
  *(a1 + 656) = ixgbe_write_iosf_sb_reg_x550;
  *(a1 + 200) = ixgbe_acquire_swfw_sync_X550em;
  *(a1 + 208) = ixgbe_release_swfw_sync_X550em;
  *(a1 + 1680) = ixgbe_read_i2c_combined_generic;
  *(a1 + 1688) = ixgbe_read_i2c_combined_generic_unlocked;
  *(a1 + 1696) = ixgbe_write_i2c_combined_generic;
  *(a1 + 1704) = ixgbe_write_i2c_combined_generic_unlocked;
  *(a1 + 1712) = -66;
  if (*(a1 + 1936) == 5550)
  {
    *(a1 + 520) = 0;
    *(a1 + 640) = 0;
    *(a1 + 344) = 0;
  }

  return result;
}

uint64_t ixgbe_acquire_swfw_sync_X550em(uint64_t a1, __int16 a2)
{
  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixgbe:%s(%d): %s\n", "ixgbe_acquire_swfw_sync_X550em", 4213, "ixgbe_acquire_swfw_sync_X550em");
  }

  v4 = ixgbe_acquire_swfw_sync_X540(a1, a2);
  v5 = v4;
  if ((a2 & 0x1800) != 0 && !v4)
  {
    ixgbe_set_mux(a1, 1);
  }

  return v5;
}

void ixgbe_release_swfw_sync_X550em(uint64_t a1, int a2)
{
  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixgbe:%s(%d): %s\n", "ixgbe_release_swfw_sync_X550em", 4234, "ixgbe_release_swfw_sync_X550em");
  }

  if ((a2 & 0x1800) != 0)
  {
    ixgbe_set_mux(a1, 0);
  }

  ixgbe_release_swfw_sync_X540(a1, a2);
}

uint64_t ixgbe_iosf_wait(IOPCIDevice **a1, uint32_t *a2)
{
  for (i = 0; i != 100; ++i)
  {
    readData = 0;
    IOPCIDevice::MemoryRead32(*a1, 0, 0x11144uLL, &readData);
    __dmb(1u);
    v5 = readData;
    if ((readData & 0x80000000) == 0)
    {
      break;
    }

    IODelay(0xAuLL);
  }

  if (a2)
  {
    *a2 = v5;
  }

  if (i != 100)
  {
    return 0;
  }

  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixgbe:%s(%d): Wait timed out\n\n", "ixgbe_iosf_wait", 1084);
  }

  return 4294967293;
}

uint64_t ixgbe_get_phy_token(uint64_t a1)
{
  v4 = -16776694;
  v5 = *(a1 + 1814);
  v6 = 0;
  v7 = 0;
  v1 = ixgbe_host_interface_command(a1, &v4, 8u, 500, 1);
  if (v1)
  {
    v2 = v1;
    if ((pcindkll & 0x100000) != 0)
    {
      IOLog("ixgbe:%s(%d): Issuing host interface command failed with Status = %d\n\n", "ixgbe_get_phy_token", 1207, v1);
    }
  }

  else if (BYTE2(v4) == 1)
  {
    return 0;
  }

  else if (BYTE2(v4) == 128)
  {
    if ((pcindkll & 0x100000) != 0)
    {
      IOLog("ixgbe:%s(%d): %s\n", "ixgbe_get_phy_token", 1218, "Returning  IXGBE_ERR_TOKEN_RETRY\n");
    }

    return 4294967256;
  }

  else
  {
    if ((pcindkll & 0x100000) != 0)
    {
      IOLog("ixgbe:%s(%d): Host interface command returned 0x%08x , returning IXGBE_ERR_FW_RESP_INVALID\n\n", "ixgbe_get_phy_token", 1214, BYTE2(v4));
    }

    return 4294967257;
  }

  return v2;
}

uint64_t ixgbe_put_phy_token(uint64_t a1)
{
  v2 = -16776694;
  v3 = *(a1 + 1814);
  v4 = 1;
  v5 = 0;
  result = ixgbe_host_interface_command(a1, &v2, 8u, 500, 1);
  if (!result)
  {
    if (BYTE2(v2) == 1)
    {
      return 0;
    }

    else
    {
      if ((pcindkll & 0x100000) != 0)
      {
        IOLog("ixgbe:%s(%d): %s\n", "ixgbe_put_phy_token", 1248, "Put PHY Token host interface command failed");
      }

      return 4294967257;
    }
  }

  return result;
}

uint64_t ixgbe_identify_sfp_module_X550em(uint64_t a1)
{
  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixgbe:%s(%d): %s\n", "ixgbe_identify_sfp_module_X550em", 1557, "ixgbe_identify_sfp_module_X550em");
  }

  result = ixgbe_identify_module_generic(a1);
  if (!result)
  {
    return ixgbe_supported_sfp_modules_X550em(a1, &v3);
  }

  return result;
}

uint64_t ixgbe_supported_sfp_modules_X550em(uint64_t a1, char *a2)
{
  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixgbe:%s(%d): %s\n", "ixgbe_supported_sfp_modules_X550em", 1517, "ixgbe_supported_sfp_modules_X550em");
  }

  v4 = *(a1 + 1628);
  if (v4 <= 0xE)
  {
    v5 = 1;
    if (((1 << v4) & 0x79E0) != 0)
    {
      v5 = 0;
LABEL_6:
      result = 0;
      *a2 = v5;
      return result;
    }

    if (((1 << v4) & 0x18) != 0)
    {
      goto LABEL_6;
    }
  }

  if (v4 == 65534)
  {
    return 4294967276;
  }

  else
  {
    return 4294967277;
  }
}

uint64_t ixgbe_init_mac_link_ops_X550em(uint64_t a1)
{
  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixgbe:%s(%d): %s\n", "ixgbe_init_mac_link_ops_X550em", 1790, "ixgbe_init_mac_link_ops_X550em");
  }

  result = (*(a1 + 56))(a1);
  switch(result)
  {
    case 5:
      if ((*(a1 + 1936) & 0xFFFE) != 0x15C6)
      {
        return result;
      }

      v7 = ixgbe_setup_sgmii;
      goto LABEL_15;
    case 4:
      v5 = *(a1 + 1936);
      if (v5 == 5550)
      {
        return result;
      }

      if (*(a1 + 696) != 8)
      {
        *(a1 + 264) = ixgbe_setup_mac_link_t_X550em;
        v6 = ixgbe_check_link_t_X550em;
        goto LABEL_19;
      }

      if ((v5 & 0xFFFE) == 0x15E4)
      {
        *(a1 + 264) = ixgbe_setup_sgmii_fw;
        v6 = ixgbe_check_mac_link_generic;
LABEL_19:
        *(a1 + 280) = v6;
        return result;
      }

      v7 = ixgbe_setup_mac_link_t_X550em;
LABEL_15:
      *(a1 + 264) = v7;
      return result;
    case 1:
      *(a1 + 240) = 0;
      *(a1 + 248) = 0;
      *(a1 + 256) = 0;
      *(a1 + 264) = ixgbe_setup_mac_link_multispeed_fiber;
      *(a1 + 296) = ixgbe_set_soft_rate_select_speed;
      v3 = *(a1 + 1936);
      if (v3 == 5582 || v3 == 5572)
      {
        v4 = ixgbe_setup_mac_link_sfp_x550a;
      }

      else
      {
        v4 = ixgbe_setup_mac_link_sfp_x550em;
      }

      *(a1 + 272) = v4;
      break;
  }

  return result;
}

uint64_t ixgbe_setup_mac_link_sfp_x550a(uint64_t a1, unsigned int a2)
{
  v17 = 0;
  v16 = 0;
  v15 = 0;
  result = ixgbe_supported_sfp_modules_X550em(a1, &v16);
  if (result == -20)
  {
    return 0;
  }

  if (result)
  {
    return result;
  }

  if (*(a1 + 1936) == 5572)
  {
    if (*(a1 + 1814))
    {
      v5 = 36948;
    }

    else
    {
      v5 = 20564;
    }

    result = (*(a1 + 648))(a1, v5, 0, &v15);
    if (!result)
    {
      v6 = v15 & 0xFFCFFFFF;
      v15 &= 0xFFCFFFFF;
      if ((v16 & 1) == 0)
      {
        v15 = v6 | 0x100000;
      }

      v7 = *(a1 + 1814) ? 36948 : 20564;
      result = (*(a1 + 656))(a1, v7, 0);
      if (!result)
      {
        v18 = 0;
        v8 = *(a1 + 1814) ? 36948 : 20564;
        result = (*(a1 + 648))(a1, v8, 0, &v18);
        if (!result)
        {
          if (a2 == 128)
          {
            v9 = 805306368;
          }

          else
          {
            if (a2 != 32)
            {
              return 4294967288;
            }

            v9 = 0x20000000;
          }

          v18 = v9 | v18 & 0x81FFFFFF;
          if (*(a1 + 1814))
          {
            v14 = 36948;
          }

          else
          {
            v14 = 20564;
          }

          (*(a1 + 656))(a1, v14, 0);
          return ixgbe_restart_an_internal_phy_x550em(a1);
        }
      }
    }
  }

  else
  {
    ixgbe_setup_kr_speed_x550em(a1, a2);
    v10 = *(a1 + 1620);
    if (v10 != 0xFFFF && v10)
    {
      result = (*(a1 + 1448))(a1, 415, 0, &v17);
      if (!result)
      {
        v11 = *(a1 + 1814);
        v12 = v17 == 16 ? (*(a1 + 1816) << 13) + (v11 << 12) : v11 << 12;
        result = (*(a1 + 1448))(a1, (v12 + 4784), 0, &v17);
        if (!result)
        {
          if (v16)
          {
            v13 = 5;
          }

          else
          {
            v13 = 9;
          }

          v17 = v13;
          (*(a1 + 1456))(a1, (v12 + 4784), 0);
          return (*(a1 + 1448))(a1, (v12 + 4784), 0, &v17);
        }
      }
    }

    else
    {
      if ((pcindkll & 0x100000) != 0)
      {
        IOLog("ixgbe:%s(%d): %s\n", "ixgbe_setup_mac_link_sfp_x550a", 2731, "Invalid NW_MNG_IF_SEL.MDIO_PHY_ADD value\n");
      }

      return 4294967279;
    }
  }

  return result;
}

uint64_t ixgbe_setup_mac_link_sfp_x550em(uint64_t a1, unsigned int a2)
{
  v9 = 0;
  result = ixgbe_supported_sfp_modules_X550em(a1, &v9);
  if (result == -20)
  {
    return 0;
  }

  if (!result)
  {
    ixgbe_setup_kr_speed_x550em(a1, a2);
    v5 = (*(a1 + 1814) << 12) + 4784;
    v6 = *(a1 + 1696);
    v7 = *(a1 + 1712);
    if (v9)
    {
      v8 = 5;
    }

    else
    {
      v8 = 9;
    }

    return v6(a1, v7, v5 & 0xFFF0, v8);
  }

  return result;
}

uint64_t ixgbe_setup_sgmii_fw(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v15 = 0;
  v14 = 0;
  if (*(a1 + 1814))
  {
    v6 = 33292;
  }

  else
  {
    v6 = 16908;
  }

  result = (*(a1 + 648))(a1, v6, 0, &v15 + 4);
  if (!result)
  {
    HIDWORD(v15) = HIDWORD(v15) & 0xDFFFC8FF | 0x3000;
    v8 = *(a1 + 1814) ? 33292 : 16908;
    result = (*(a1 + 656))(a1, v8, 0);
    if (!result)
    {
      v9 = *(a1 + 1814) ? 33440 : 17056;
      result = (*(a1 + 648))(a1, v9, 0, &v15);
      if (!result)
      {
        LODWORD(v15) = v15 & 0xFFF7EFFF;
        v10 = *(a1 + 1814) ? 33440 : 17056;
        result = (*(a1 + 656))(a1, v10, 0);
        if (!result)
        {
          v11 = *(a1 + 1814) ? 33292 : 16908;
          result = (*(a1 + 656))(a1, v11, 0, HIDWORD(v15));
          if (!result)
          {
            v12 = *(a1 + 1814) ? 36948 : 20564;
            result = (*(a1 + 648))(a1, v12, 0, &v14);
            if (!result)
            {
              v14 = v14 & 0x81FFFFFF | 0x46000000;
              if (*(a1 + 1814))
              {
                v13 = 36948;
              }

              else
              {
                v13 = 20564;
              }

              result = (*(a1 + 656))(a1, v13, 0);
              if (!result)
              {
                ixgbe_restart_an_internal_phy_x550em(a1);
                return (*(a1 + 1496))(a1, a2, a3);
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t ixgbe_setup_mac_link_t_X550em(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixgbe:%s(%d): %s\n", "ixgbe_setup_mac_link_t_X550em", 4415, "ixgbe_setup_mac_link_t_X550em");
  }

  if ((a2 & 0x80) != 0)
  {
    v6 = 128;
  }

  else
  {
    v6 = 32;
  }

  v9 = v6;
  if (*(a1 + 696) != 7 || (*(a1 + 1679) & 1) != 0 || (result = ixgbe_setup_ixfi_x550em(a1, &v9), !result))
  {
    v8 = *(a1 + 1496);

    return v8(a1, a2, a3);
  }

  return result;
}

uint64_t ixgbe_check_link_t_X550em(uint64_t a1, int *a2, _BYTE *a3, int a4)
{
  v11 = 0;
  if ((*(a1 + 56))() != 4)
  {
    return 4294967292;
  }

  result = ixgbe_check_mac_link_generic(a1, a2, a3, a4);
  if (!result)
  {
    v9 = *a3;
    if (v9 == 1)
    {
      while (1)
      {
        v10 = v9;
        result = (*(a1 + 1448))(a1, 1, 7, &v11);
        if (result)
        {
          break;
        }

        LOBYTE(v9) = 0;
        if ((v10 & 1) == 0)
        {
          if ((v11 & 4) != 0)
          {
            return 0;
          }

          result = 0;
          *a3 = 0;
          return result;
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

uint64_t ixgbe_setup_sgmii(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v14 = 0;
  v13 = 0;
  if (*(a1 + 1814))
  {
    v6 = 33292;
  }

  else
  {
    v6 = 16908;
  }

  result = (*(a1 + 648))(a1, v6, 0, &v14 + 4);
  if (!result)
  {
    HIDWORD(v14) = HIDWORD(v14) & 0xDFFFC8FF | 0x3200;
    v8 = *(a1 + 1814) ? 33292 : 16908;
    result = (*(a1 + 656))(a1, v8, 0);
    if (!result)
    {
      v9 = *(a1 + 1814) ? 33440 : 17056;
      result = (*(a1 + 648))(a1, v9, 0, &v14);
      if (!result)
      {
        LODWORD(v14) = v14 | 0x81000;
        v10 = *(a1 + 1814) ? 33440 : 17056;
        result = (*(a1 + 656))(a1, v10, 0);
        if (!result)
        {
          v11 = *(a1 + 1814) ? 36948 : 20564;
          result = (*(a1 + 648))(a1, v11, 0, &v13);
          if (!result)
          {
            v13 = v13 & 0x81FFFFFF | 0x26000000;
            if (*(a1 + 1814))
            {
              v12 = 36948;
            }

            else
            {
              v12 = 20564;
            }

            result = (*(a1 + 656))(a1, v12, 0);
            if (!result)
            {
              result = ixgbe_restart_an_internal_phy_x550em(a1);
              if (!result)
              {
                return (*(a1 + 1496))(a1, a2, a3);
              }
            }
          }
        }
      }
    }
  }

  return result;
}

void ixgbe_read_mng_if_sel_x550em(uint64_t a1)
{
  readData = 0;
  IOPCIDevice::MemoryRead32(*a1, 0, 0x11178uLL, &readData);
  __dmb(1u);
  v2 = readData;
  *(a1 + 1676) = readData;
  if (*(a1 + 696) == 8 && (v2 & 2) != 0)
  {
    *(a1 + 1620) = v2 >> 3;
  }
}

void ixgbe_setup_mux_ctl(uint64_t a1)
{
  readData = 0;
  IOPCIDevice::MemoryRead32(*a1, 0, 0x20uLL, &readData);
  __dmb(1u);
  v2 = readData;
  if (*(a1 + 1814))
  {
    v2 = readData & 0xFFFCFCFD | 0x200;
  }

  __dmb(2u);
  IOPCIDevice::MemoryWrite32(*a1, 0, 0x20uLL, v2 & 0xFFFEFEFF);
  v3 = 0;
  IOPCIDevice::MemoryRead32(*a1, 0, 8uLL, &v3);
  __dmb(1u);
}

void ixgbe_check_overtemp_fw(uint64_t a1)
{
  v3 = 0uLL;
  ixgbe_fw_phy_activity(a1, 3, &v3);
  if (!v2 && (v3.i8[3] & 2) != 0)
  {
    v4.i32[3] = 0;
    *(v4.i64 + 4) = 0;
    v4.i32[0] = 1;
    ixgbe_fw_phy_activity(a1, 4, &v4);
  }
}

uint64_t ixgbe_read_phy_reg_x550a(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a1 + 1644);
  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixgbe:%s(%d): %s\n", "ixgbe_read_phy_reg_x550a", 4329, "ixgbe_read_phy_reg_x550a");
  }

  if ((*(a1 + 200))(a1, v8 | 0x40000000u))
  {
    return 4294967280;
  }

  v10 = (*(a1 + 1464))(a1, a2, a3, a4);
  (*(a1 + 208))(a1, v8 | 0x40000000u);
  return v10;
}

uint64_t ixgbe_write_phy_reg_x550a(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a1 + 1644);
  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixgbe:%s(%d): %s\n", "ixgbe_write_phy_reg_x550a", 4357, "ixgbe_write_phy_reg_x550a");
  }

  if ((*(a1 + 200))(a1, v8 | 0x40000000u))
  {
    return 4294967280;
  }

  v10 = (*(a1 + 1472))(a1, a2, a3, a4);
  (*(a1 + 208))(a1, v8 | 0x40000000u);
  return v10;
}

uint64_t ixgbe_setup_kr_x550em(uint64_t a1)
{
  if ((*(a1 + 1653) & 4) != 0 || ixgbe_check_reset_blocked(a1))
  {
    return 0;
  }

  v3 = *(a1 + 1652);

  return ixgbe_setup_kr_speed_x550em(a1, v3);
}

uint64_t ixgbe_setup_internal_phy_t_x550em(uint64_t a1)
{
  if ((*(a1 + 56))() != 4)
  {
    return 4294967292;
  }

  if (*(a1 + 696) != 7 || (*(a1 + 1679) & 1) != 0)
  {

    return ixgbe_setup_kr_speed_x550em(a1, 0xA0u);
  }

  else
  {
    v6 = 0;
    v5 = 0;
    result = ixgbe_ext_phy_t_x550em_get_link(a1, &v6);
    if (result)
    {
      return result;
    }

    if (!v6)
    {
      return 0;
    }

    result = (*(a1 + 1448))(a1, 51200, 7, &v5);
    if (result)
    {
      return result;
    }

    result = ixgbe_ext_phy_t_x550em_get_link(a1, &v6);
    if (result)
    {
      return result;
    }

    if (!v6)
    {
      return 0;
    }

    v3 = v5 & 7;
    v5 &= 7u;
    if (v3 == 7)
    {
      v4 = 128;
      goto LABEL_19;
    }

    if (v3 == 5)
    {
      v4 = 32;
LABEL_19:
      v7 = v4;
      return ixgbe_setup_ixfi_x550em(a1, &v7);
    }

    return 4294967283;
  }
}

uint64_t ixgbe_enter_lplu_t_x550em(uint64_t a1)
{
  v10 = 0;
  v9 = 0;
  if (*(a1 + 696) == 7)
  {
    readData = 0;
    IOPCIDevice::MemoryRead32(*a1, 0, 0x11158uLL, &readData);
    __dmb(1u);
    if ((readData & 0xC0) != 0)
    {
      return 0;
    }
  }

  if (ixgbe_check_reset_blocked(a1))
  {
    return 0;
  }

  v7 = 0;
  result = ixgbe_ext_phy_t_x550em_get_link(a1, &v7);
  if (!result)
  {
    result = ixgbe_read_eeprom(a1);
    if (!result)
    {
      if (!v7 || (*(a1 + 1798) & 8) == 0 || (*(a1 + 1954) & 1) == 0 && (ixgbe_mng_present(a1) & 1) == 0)
      {
        return ixgbe_set_copper_phy_power(a1, 0);
      }

      v8 = 0;
      result = ixgbe_get_lcd_t_x550em(a1, &v8);
      if (result)
      {
        return result;
      }

      v3 = v8;
      if (!v8)
      {
        return ixgbe_set_copper_phy_power(a1, 0);
      }

      result = (*(a1 + 1448))(a1, 51200, 7, &v9);
      if (result)
      {
        return result;
      }

      if (ixgbe_ext_phy_t_x550em_get_link(a1, &v7))
      {
        return ixgbe_set_copper_phy_power(a1, 0);
      }

      v4 = v9 & 6;
      v9 &= 6u;
      if (v3 == 32 && v4 == 4 || v3 == 128 && v4 == 6)
      {
        return 0;
      }

      result = (*(a1 + 1448))(a1, 52224, 7, &v10);
      if (!result)
      {
        result = (*(a1 + 1448))(a1, 32, 7, &v10 + 2);
        if (!result)
        {
          result = (*(a1 + 1448))(a1, 50176, 7, &v10);
          if (!result)
          {
            v5 = *(a1 + 1652);
            result = (*(a1 + 264))(a1, v3, 0);
            *(a1 + 1652) = v5;
          }
        }
      }
    }
  }

  return result;
}

uint64_t ixgbe_handle_lasi_ext_t_x550em(uint64_t a1)
{
  v3 = 0;
  result = ixgbe_get_lasi_ext_t_x550em(a1, &v3);
  if (!result)
  {
    if (v3 == 1)
    {

      return ixgbe_setup_internal_phy(a1);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t ixgbe_reset_phy_t_X550em(uint64_t a1)
{
  result = ixgbe_reset_phy_generic(a1);
  if (!result)
  {
    v4 = 0;
    ixgbe_get_lasi_ext_t_x550em(a1, &v3);
    if (*(a1 + 696) == 8 || (result = (*(a1 + 1448))(a1, 54273, 7, &v4), !result) && (v4 |= 1u, result = (*(a1 + 1456))(a1, 54273, 7), !result))
    {
      result = (*(a1 + 1448))(a1, 54272, 30, &v4);
      if (!result)
      {
        v4 |= 0x4010u;
        result = (*(a1 + 1456))(a1, 54272, 30);
        if (!result)
        {
          result = (*(a1 + 1448))(a1, 65281, 30, &v4);
          if (!result)
          {
            v4 |= 0x1004u;
            result = (*(a1 + 1456))(a1, 65281, 30);
            if (!result)
            {
              result = (*(a1 + 1448))(a1, 65280, 30, &v4);
              if (!result)
              {
                v4 |= 1u;
                return (*(a1 + 1456))(a1, 65280, 30);
              }
            }
          }
        }
      }
    }
  }

  return result;
}

void ixgbe_setup_fw_link(uint64_t a1)
{
  v10.i32[3] = 0;
  *(v10.i64 + 4) = 0;
  if ((*(a1 + 1648) & 1) == 0 && !ixgbe_check_reset_blocked(a1))
  {
    v2 = *(a1 + 1408);
    if (*(a1 + 1399) == 1 && v2 == 1)
    {
      if ((pcindkll & 0x100000) != 0)
      {
        IOLog("ixgbe:%s(%d): ixgbe_fc_rx_pause not valid in strict IEEE mode\n\n", "ixgbe_setup_fw_link", 676);
      }
    }

    else
    {
      v4 = v2 - 1;
      if (v4 > 2)
      {
        v5 = 0;
      }

      else
      {
        v5 = dword_10002FEE0[v4];
      }

      v6 = &dword_10002FEB4;
      v7 = 6;
      v8 = &dword_10002FEB4;
      do
      {
        v9 = *v8;
        v8 += 2;
        if ((v9 & *(a1 + 1652)) != 0)
        {
          v5 |= *(v6 - 2);
        }

        v6 = v8;
        --v7;
      }

      while (v7);
      v10.i32[0] = v5 | 0x480000;
      if (*(a1 + 1664))
      {
        v10.i32[0] = v5 | 0x580000;
      }

      ixgbe_fw_phy_activity(a1, 2, &v10);
    }
  }
}

void ixgbe_reset_phy_fw(uint64_t a1)
{
  v4 = 0uLL;
  if ((*(a1 + 1648) & 1) == 0 && !ixgbe_check_reset_blocked(a1))
  {
    ixgbe_fw_phy_activity(a1, 5, &v4);
    if (!v2)
    {
      v4 = 0uLL;
      ixgbe_fw_phy_activity(a1, 1, &v4);
      if (!v3)
      {

        ixgbe_setup_fw_link(a1);
      }
    }
  }
}

void ixgbe_set_mdio_speed(uint64_t a1)
{
  v3 = *(a1 + 1936) - 5549;
  if (v3 <= 0x38)
  {
    v8 = v1;
    v9 = v2;
    if (((1 << v3) & 0x22E000001) != 0)
    {
      readData = 0;
      IOPCIDevice::MemoryRead32(*a1, 0, 0x4240uLL, &readData);
      __dmb(1u);
      v5 = readData & 0xFFFEFFFF;
      __dmb(2u);
    }

    else
    {
      if (((1 << v3) & 0x180000000000000) == 0)
      {
        return;
      }

      v6 = 0;
      IOPCIDevice::MemoryRead32(*a1, 0, 0x4240uLL, &v6);
      __dmb(1u);
      v5 = v6 | 0x10000;
      __dmb(2u);
    }

    IOPCIDevice::MemoryWrite32(*a1, 0, 0x4240uLL, v5);
  }
}

uint64_t ixgbe_init_ext_t_x550em(uint64_t a1)
{
  v3 = 0;
  result = (*(a1 + 1448))(a1, 52226, 1, &v3);
  if (!result)
  {
    if ((v3 & 3) == 0)
    {
      return 0;
    }

    result = (*(a1 + 1448))(a1, 50297, 30, &v3);
    if (!result)
    {
      v3 &= ~0x8000u;
      result = (*(a1 + 1456))(a1, 50297, 30);
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t ixgbe_setup_kr_speed_x550em(uint64_t a1, unsigned int a2)
{
  v10 = 0;
  if (*(a1 + 1814))
  {
    v4 = 33292;
  }

  else
  {
    v4 = 16908;
  }

  result = (*(a1 + 648))(a1, v4, 0, &v10);
  if (!result)
  {
    if ((a2 & 0x80) != 0)
    {
      v6 = 537133056;
    }

    else
    {
      v6 = 0x20000000;
    }

    v10 = v10 & 0xDFFAFFFF | v6 & 0xFFFEFFFF | (((a2 >> 5) & 1) << 16);
    if (*(a1 + 1814))
    {
      v7 = 33292;
    }

    else
    {
      v7 = 16908;
    }

    (*(a1 + 656))(a1, v7, 0);
    if (*(a1 + 696) != 8)
    {
      return ixgbe_restart_an_internal_phy_x550em(a1);
    }

    if (*(a1 + 1814))
    {
      v8 = 36948;
    }

    else
    {
      v8 = 20564;
    }

    result = (*(a1 + 648))(a1, v8, 0, &v10);
    if (!result)
    {
      v10 = v10 & 0x81FFFFFF | 0x48000000;
      if (*(a1 + 1814))
      {
        v9 = 36948;
      }

      else
      {
        v9 = 20564;
      }

      (*(a1 + 656))(a1, v9, 0);
      return ixgbe_restart_an_internal_phy_x550em(a1);
    }
  }

  return result;
}

uint64_t ixgbe_ext_phy_t_x550em_get_link(uint64_t a1, BOOL *a2)
{
  v5 = 0;
  *a2 = 0;
  result = (*(a1 + 1448))(a1, 1, 7, &v5);
  if (!result)
  {
    result = (*(a1 + 1448))(a1, 1, 7, &v5);
    if (!result)
    {
      *a2 = (v5 & 4) != 0;
    }
  }

  return result;
}

uint64_t ixgbe_setup_ixfi_x550em(uint64_t a1, _DWORD *a2)
{
  if (*(a1 + 696) != 7)
  {
    return 4294967288;
  }

  v20 = v2;
  v21 = v3;
  v18 = 0;
  if (*(a1 + 1814))
  {
    v6 = 33292;
  }

  else
  {
    v6 = 16908;
  }

  result = (*(a1 + 648))(a1, v6, 0, &v18);
  if (!result)
  {
    if (*a2 == 128)
    {
      v8 = 1024;
    }

    else
    {
      if (*a2 != 32)
      {
        return 4294967288;
      }

      v8 = 512;
    }

    v18 = v18 & 0xDFFFF8FF | v8;
    if (*(a1 + 1814))
    {
      v9 = 33292;
    }

    else
    {
      v9 = 16908;
    }

    result = (*(a1 + 656))(a1, v9, 0);
    if (!result)
    {
      if (*(a1 + 696) != 7)
      {
        return ixgbe_restart_an_internal_phy_x550em(a1);
      }

      v19 = 0;
      v10 = *(a1 + 1814) ? 35584 : 19200;
      result = (*(a1 + 648))(a1, v10, 0, &v19);
      if (!result)
      {
        v19 |= 0x10u;
        v11 = *(a1 + 1814) ? 35584 : 19200;
        result = (*(a1 + 656))(a1, v11, 0);
        if (!result)
        {
          v12 = *(a1 + 1814) ? 34356 : 17972;
          result = (*(a1 + 648))(a1, v12, 0, &v19);
          if (!result)
          {
            v19 &= 0xFFFE7FBF;
            v13 = *(a1 + 1814) ? 34356 : 17972;
            result = (*(a1 + 656))(a1, v13, 0);
            if (!result)
            {
              v14 = *(a1 + 1814) ? 34360 : 17976;
              result = (*(a1 + 648))(a1, v14, 0, &v19);
              if (!result)
              {
                v19 &= 0xFFFE7FBF;
                v15 = *(a1 + 1814) ? 34360 : 17976;
                result = (*(a1 + 656))(a1, v15, 0);
                if (!result)
                {
                  v16 = *(a1 + 1814) ? 38176 : 21792;
                  result = (*(a1 + 648))(a1, v16, 0, &v19);
                  if (!result)
                  {
                    v19 |= 0x8000000E;
                    v17 = *(a1 + 1814) ? 38176 : 21792;
                    result = (*(a1 + 656))(a1, v17, 0);
                    if (!result)
                    {
                      return ixgbe_restart_an_internal_phy_x550em(a1);
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

  return result;
}

uint64_t ixgbe_setup_phy_loopback_x550em(uint64_t a1)
{
  v11 = 0;
  if (*(a1 + 1814))
  {
    v2 = 33292;
  }

  else
  {
    v2 = 16908;
  }

  result = (*(a1 + 648))(a1, v2, 0, &v11);
  if (!result)
  {
    v11 = v11 & 0xDFFFF8FF | 0x400;
    v4 = *(a1 + 1814) ? 33292 : 16908;
    result = (*(a1 + 656))(a1, v4, 0);
    if (!result)
    {
      v5 = *(a1 + 1814) ? 32784 : 16400;
      result = (*(a1 + 648))(a1, v5, 0, &v11);
      if (!result)
      {
        v11 |= 0xA00u;
        v6 = *(a1 + 1814) ? 32784 : 16400;
        result = (*(a1 + 656))(a1, v6, 0);
        if (!result)
        {
          v7 = *(a1 + 1814) ? 36352 : 19968;
          result = (*(a1 + 648))(a1, v7, 0, &v11);
          if (!result)
          {
            v11 |= 0x30000u;
            v8 = *(a1 + 1814) ? 36352 : 19968;
            result = (*(a1 + 656))(a1, v8, 0);
            if (!result)
            {
              v9 = *(a1 + 1814) ? 35584 : 19200;
              result = (*(a1 + 648))(a1, v9, 0, &v11);
              if (!result)
              {
                v11 |= 4u;
                if (*(a1 + 1814))
                {
                  v10 = 35584;
                }

                else
                {
                  v10 = 19200;
                }

                return (*(a1 + 656))(a1, v10, 0);
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t ixgbe_write_ee_hostif_data_X550(uint64_t a1, int a2, __int16 a3)
{
  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixgbe:%s(%d): %s\n", "ixgbe_write_ee_hostif_data_X550", 3206, "ixgbe_write_ee_hostif_data_X550");
  }

  v7[0] = -16121805;
  v8 = 512;
  v9 = a3;
  v7[1] = bswap32(2 * a2);
  return ixgbe_host_interface_command(a1, v7, 0x10u, 500, 0);
}

uint64_t ixgbe_calc_checksum_X550(uint64_t a1, _BYTE *a2, unsigned int a3)
{
  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixgbe:%s(%d): %s\n", "ixgbe_calc_checksum_X550", 3380, "ixgbe_calc_eeprom_checksum_X550");
  }

  (*(a1 + 1720))(a1);
  if (a2)
  {
    v6 = a2;
    if (a3 < 0x41)
    {
      return 4294967291;
    }
  }

  else
  {
    v6 = v22;
    ee_hostif_buffer_X550 = ixgbe_read_ee_hostif_buffer_X550(a1, 0, 66, v22);
    if (ee_hostif_buffer_X550)
    {
      v7 = ee_hostif_buffer_X550;
      if ((pcindkll & 0x100000) != 0)
      {
        IOLog("ixgbe:%s(%d): %s\n", "ixgbe_calc_checksum_X550", 3390, "Failed to read EEPROM image\n");
      }

      return v7;
    }
  }

  v21 = a3;
  v9 = 0;
  v10 = 0;
  do
  {
    if (v9 != 126)
    {
      v10 += *&v6[v9];
    }

    v9 += 2;
  }

  while (v9 != 132);
  v11 = 2;
  while (1)
  {
    if ((v11 & 0xE) == 4)
    {
      goto LABEL_40;
    }

    v12 = *&v6[2 * v11];
    if ((v12 + 1) < 2u || v12 >= *(a1 + 1792))
    {
      goto LABEL_40;
    }

    LOWORD(v13) = (v11 - 6) <= 2u ? 0x800080024uLL >> (16 * (v11 - 6)) : 0;
    if (!a2)
    {
      break;
    }

    if (v12 > v21)
    {
      return 4294967291;
    }

    v14 = &a2[2 * v12];
LABEL_24:
    if ((v11 - 6) < 3u)
    {
      v16 = 0;
      if (a2)
      {
        goto LABEL_30;
      }

      goto LABEL_31;
    }

    v13 = *v14;
    if ((v13 + 1) >= 2u && v13 + v12 < *(a1 + 1792))
    {
      v16 = 1;
      if (!a2)
      {
        goto LABEL_31;
      }

LABEL_30:
      if (v16 + v13 <= v21)
      {
LABEL_31:
        LOWORD(v17) = 256;
        while (1)
        {
          if (!a2 && v16 == v17)
          {
            LOWORD(v12) = v12 + v16;
            if (v13 >= v16)
            {
              v17 = v16;
            }

            else
            {
              v17 = v13;
            }

            v18 = ixgbe_read_ee_hostif_buffer_X550(a1, v12, v17, v23);
            if (v18)
            {
              v7 = v18;
              if ((pcindkll & 0x100000) != 0)
              {
                v19 = 3355;
                goto LABEL_44;
              }

              return v7;
            }

            LOWORD(v16) = 0;
          }

          v10 += v14[v16];
          LOWORD(v16) = v16 + 1;
          LOWORD(v13) = v13 - 1;
          if (!v13)
          {
            goto LABEL_40;
          }
        }
      }

      return 4294967291;
    }

LABEL_40:
    if (++v11 == 15)
    {
      return (-17734 - v10);
    }
  }

  v14 = v23;
  v15 = ixgbe_read_ee_hostif_buffer_X550(a1, *&v6[2 * v11], 256, v23);
  if (!v15)
  {
    goto LABEL_24;
  }

  v7 = v15;
  if ((pcindkll & 0x100000) != 0)
  {
    v19 = 3318;
LABEL_44:
    IOLog("ixgbe:%s(%d): %s\n", "ixgbe_checksum_ptr_x550", v19, "Failed to read EEPROM image\n");
  }

  return v7;
}

uint64_t ixgbe_update_flash_X550(uint64_t a1)
{
  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixgbe:%s(%d): %s\n", "ixgbe_update_flash_X550", 3563, "ixgbe_update_flash_X550");
  }

  v3 = -16777162;
  return ixgbe_host_interface_command(a1, &v3, 4u, 500, 0);
}

uint64_t ixgbe_get_lcd_t_x550em(uint64_t a1, int *a2)
{
  v9 = 0;
  v4 = *(a1 + 1798);
  *a2 = 0;
  result = (*(a1 + 1448))(a1, 59424, 7, &v9);
  if (result)
  {
    return result;
  }

  if (v9 < 0)
  {
    v8 = 32;
    goto LABEL_13;
  }

  if (((v4 & 0x100) == 0 || *(a1 + 1814) == 0) && (v4 & 0x40) == 0)
  {
    v8 = 128;
LABEL_13:
    *a2 = v8;
  }

  return result;
}

uint64_t ixgbe_restart_an_internal_phy_x550em(uint64_t a1)
{
  v12 = 0;
  if (*(a1 + 1814))
  {
    v2 = 33292;
  }

  else
  {
    v2 = 16908;
  }

  v3 = (*(a1 + 648))(a1, v2, 0, &v12);
  if (v3)
  {
    v4 = v3;
    if ((pcindkll & 0x100000) != 0)
    {
      IOLog("ixgbe:%s(%d): %s\n", "ixgbe_restart_an_internal_phy_x550em", 1609, "Auto-negotiation did not complete\n");
    }

    return v4;
  }

  v12 |= 0x80000000;
  if (*(a1 + 1814))
  {
    v5 = 33292;
  }

  else
  {
    v5 = 16908;
  }

  v6 = (*(a1 + 656))(a1, v5, 0);
  if (*(a1 + 696) != 8)
  {
    return v6;
  }

  v11 = 0;
  if (*(a1 + 1814))
  {
    v7 = 36948;
  }

  else
  {
    v7 = 20564;
  }

  v8 = (*(a1 + 648))(a1, v7, 0, &v11);
  if (!v8)
  {
    v11 |= 0x80000000;
    if (*(a1 + 1814))
    {
      v9 = 36948;
    }

    else
    {
      v9 = 20564;
    }

    return (*(a1 + 656))(a1, v9, 0);
  }

  v4 = v8;
  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixgbe:%s(%d): %s\n", "ixgbe_restart_an_internal_phy_x550em", 1627, "Auto-negotiation did not complete\n");
  }

  return v4;
}

void ixgbe_set_mux(uint64_t a1, int a2)
{
  if (*(a1 + 1814))
  {
    readData = 0;
    IOPCIDevice::MemoryRead32(*a1, 0, 0x20uLL, &readData);
    __dmb(1u);
    v4 = readData;
    __dmb(2u);
    IOPCIDevice::MemoryWrite32(*a1, 0, 0x20uLL, v4 & 0xFFFFFFFD | (2 * (a2 != 0)));
    v5 = 0;
    IOPCIDevice::MemoryRead32(*a1, 0, 8uLL, &v5);
    __dmb(1u);
  }
}

uint64_t ixgbe_get_lasi_ext_t_x550em(uint64_t a1, _BYTE *a2)
{
  v5 = 0;
  *a2 = 0;
  result = (*(a1 + 1448))(a1, 64512, 30, &v5);
  if (!result)
  {
    if ((v5 & 1) == 0)
    {
      return 0;
    }

    result = (*(a1 + 1448))(a1, 64513, 30, &v5);
    if (!result)
    {
      if ((v5 & 0x1004) == 0)
      {
        return 0;
      }

      result = (*(a1 + 1448))(a1, 52224, 30, &v5);
      if (!result)
      {
        if ((v5 & 0x4000) != 0)
        {
          goto LABEL_17;
        }

        if ((v5 & 0x10) != 0)
        {
          result = (*(a1 + 1448))(a1, 51280, 30, &v5);
          if (result)
          {
            return result;
          }

          if (v5 == 32775)
          {
LABEL_17:
            ixgbe_set_copper_phy_power(a1, 0);
            return 4294967270;
          }
        }

        result = (*(a1 + 1448))(a1, 64512, 7, &v5);
        if (!result)
        {
          if ((v5 & 0x200) == 0)
          {
            return 0;
          }

          result = (*(a1 + 1448))(a1, 52225, 7, &v5);
          if (!result)
          {
            if ((v5 & 1) == 0)
            {
              return 0;
            }

            result = 0;
            *a2 = 1;
          }
        }
      }
    }
  }

  return result;
}

uint64_t ixgbe_read_pe(uint64_t a1)
{
  i2c_byte_unlocked = ixgbe_read_i2c_byte_unlocked(a1);
  v2 = i2c_byte_unlocked;
  if (i2c_byte_unlocked && (pcindkll & 0x100000) != 0)
  {
    IOLog("ixgbe:%s(%d): port expander access failed with %d\n\n", "ixgbe_read_pe", 112, i2c_byte_unlocked);
  }

  return v2;
}

uint64_t ixgbe_write_pe(uint64_t a1)
{
  v1 = ixgbe_write_i2c_byte_unlocked(a1);
  v2 = v1;
  if (v1 && (pcindkll & 0x100000) != 0)
  {
    IOLog("ixgbe:%s(%d): port expander access failed with %d\n\n", "ixgbe_write_pe", 131, v1);
  }

  return v2;
}

uint64_t ixgbe_dcb_get_rtrup2tc(uint64_t result)
{
  v1 = *(result + 576);
  if (v1)
  {
    return v1();
  }

  return result;
}

uint64_t ixgbe_init_shared_code(uint64_t a1)
{
  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixgbe:%s(%d): %s\n", "ixgbe_init_shared_code", 55, "ixgbe_init_shared_code");
  }

  ixgbe_set_mac_type(a1);
  v2 = *(a1 + 696);
  result = 4294967285;
  if (v2 > 5)
  {
    switch(v2)
    {
      case 6:
        result = ixgbe_init_ops_X550(a1);
        break;
      case 7:
        result = ixgbe_init_ops_X550EM_x(a1);
        break;
      case 8:
        result = ixgbe_init_ops_X550EM_a(a1);
        break;
    }
  }

  else
  {
    switch(v2)
    {
      case 1:
        result = ixgbe_init_ops_82598(a1);
        break;
      case 2:
        result = ixgbe_init_ops_82599(a1);
        break;
      case 4:
        result = ixgbe_init_ops_X540(a1);
        break;
    }
  }

  *(a1 + 1304) = 90;
  return result;
}

uint64_t ixgbe_set_mac_type(uint64_t a1)
{
  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixgbe:%s(%d): %s\n", "ixgbe_set_mac_type", 101, "ixgbe_set_mac_type\n");
  }

  if (*(a1 + 1938) == 32902)
  {
    *(a1 + 1928) = &ixgbe_mvals_base;
    v2 = *(a1 + 1936);
    if (v2 > 0x1549)
    {
      v3 = v2 - 5546;
      if (v3 <= 0x3B)
      {
        if (((1 << (v2 + 86)) & 0xC00001577000000) != 0)
        {
          v4 = 0;
          *(a1 + 696) = 8;
          v5 = &ixgbe_mvals_X550EM_a;
LABEL_32:
          *(a1 + 1928) = v5;
LABEL_33:
          if ((pcindkll & 0x100000) != 0)
          {
            IOLog("ixgbe:%s(%d): ixgbe_set_mac_type found mac: %d, returns: %d\n\n", "ixgbe_set_mac_type", 187, *(a1 + 696), v4);
          }

          return v4;
        }

        if (((1 << (v2 + 86)) & 0x5F) != 0)
        {
          v4 = 0;
          *(a1 + 696) = 7;
          v5 = &ixgbe_mvals_X550EM_x;
          goto LABEL_32;
        }

        if (v3 == 39)
        {
          goto LABEL_31;
        }
      }

      v9 = v2 - 74;
      if (v2 - 5450 <= 0x19)
      {
        if (((1 << v9) & 0x86009) != 0)
        {
          goto LABEL_26;
        }

        if (((1 << v9) & 0x440000) != 0)
        {
LABEL_29:
          v4 = 0;
          *(a1 + 696) = 4;
          v5 = &ixgbe_mvals_X540;
          goto LABEL_32;
        }

        if (v2 == 5475)
        {
LABEL_31:
          v4 = 0;
          *(a1 + 696) = 6;
          v5 = &ixgbe_mvals_X550;
          goto LABEL_32;
        }
      }

LABEL_36:
      if ((pcindkll & 0x100000) != 0)
      {
        IOLog("ixgbe:%s(%d): Unsupported device id: %x\n", "ixgbe_set_mac_type", 182, *(a1 + 1936));
      }

      v4 = 4294967285;
      goto LABEL_33;
    }

    v6 = v2 + 58;
    if (v2 - 4294 > 0x36)
    {
      goto LABEL_17;
    }

    if (((1 << v6) & 0x484008A00007) != 0)
    {
      goto LABEL_13;
    }

    if (((1 << v6) & 0x6E000000000000) == 0)
    {
LABEL_17:
      v8 = v2 - 5383;
      if (v8 > 0x23)
      {
LABEL_21:
        if (v2 != 4278)
        {
          goto LABEL_36;
        }

LABEL_13:
        v4 = 0;
        v7 = 1;
LABEL_27:
        *(a1 + 696) = v7;
        goto LABEL_33;
      }

      if (((1 << (v2 - 7)) & 0xC00212001) == 0)
      {
        if (((1 << (v2 - 7)) & 0x12) != 0)
        {
          goto LABEL_13;
        }

        if (v8 == 33)
        {
          goto LABEL_29;
        }

        goto LABEL_21;
      }
    }

LABEL_26:
    v4 = 0;
    v7 = 2;
    goto LABEL_27;
  }

  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixgbe:%s(%d): Unsupported vendor id: %x\n", "ixgbe_set_mac_type", 105, *(a1 + 1938));
  }

  return 4294967285;
}

uint64_t ixgbe_init_hw(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    return v1();
  }

  else
  {
    return 0x7FFFFFFFLL;
  }
}

uint64_t ixgbe_reset_hw(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    return v1();
  }

  else
  {
    return 0x7FFFFFFFLL;
  }
}

uint64_t ixgbe_start_hw(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    return v1();
  }

  else
  {
    return 0x7FFFFFFFLL;
  }
}

uint64_t ixgbe_enable_relaxed_ordering(uint64_t result)
{
  v1 = *(result + 48);
  if (v1)
  {
    return v1();
  }

  return result;
}

uint64_t ixgbe_clear_hw_cntrs(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    return v1();
  }

  else
  {
    return 0x7FFFFFFFLL;
  }
}

uint64_t ixgbe_get_media_type(uint64_t a1)
{
  v1 = *(a1 + 56);
  if (v1)
  {
    return v1();
  }

  else
  {
    return 0;
  }
}

uint64_t ixgbe_get_mac_addr(uint64_t a1)
{
  v1 = *(a1 + 72);
  if (v1)
  {
    return v1();
  }

  else
  {
    return 0x7FFFFFFFLL;
  }
}

uint64_t ixgbe_get_san_mac_addr(uint64_t a1)
{
  v1 = *(a1 + 80);
  if (v1)
  {
    return v1();
  }

  else
  {
    return 0x7FFFFFFFLL;
  }
}

uint64_t ixgbe_set_san_mac_addr(uint64_t a1)
{
  v1 = *(a1 + 88);
  if (v1)
  {
    return v1();
  }

  else
  {
    return 0x7FFFFFFFLL;
  }
}

uint64_t ixgbe_get_device_caps(uint64_t a1)
{
  v1 = *(a1 + 96);
  if (v1)
  {
    return v1();
  }

  else
  {
    return 0x7FFFFFFFLL;
  }
}

uint64_t ixgbe_get_wwn_prefix(uint64_t a1)
{
  v1 = *(a1 + 104);
  if (v1)
  {
    return v1();
  }

  else
  {
    return 0x7FFFFFFFLL;
  }
}

uint64_t ixgbe_get_fcoe_boot_status(uint64_t a1)
{
  v1 = *(a1 + 112);
  if (v1)
  {
    return v1();
  }

  else
  {
    return 0x7FFFFFFFLL;
  }
}

uint64_t ixgbe_get_bus_info(uint64_t a1)
{
  v1 = *(a1 + 128);
  if (v1)
  {
    return v1();
  }

  else
  {
    return 0x7FFFFFFFLL;
  }
}

uint64_t ixgbe_stop_adapter(uint64_t a1)
{
  v1 = *(a1 + 120);
  if (v1)
  {
    return v1();
  }

  else
  {
    return 0x7FFFFFFFLL;
  }
}

uint64_t ixgbe_identify_phy(uint64_t a1)
{
  if (*(a1 + 1616))
  {
    return 0;
  }

  v2 = *(a1 + 1416);
  if (v2)
  {
    return v2();
  }

  else
  {
    return 0x7FFFFFFFLL;
  }
}

uint64_t ixgbe_reset_phy(uint64_t a1)
{
  if (!*(a1 + 1616))
  {
    v4 = *(a1 + 1416);
    if (!v4 || v4(a1))
    {
      return 4294967293;
    }
  }

  v2 = *(a1 + 1440);
  if (!v2)
  {
    return 0x7FFFFFFFLL;
  }

  return v2(a1);
}

uint64_t ixgbe_get_phy_firmware_version(uint64_t a1)
{
  v1 = *(a1 + 1512);
  if (v1)
  {
    return v1();
  }

  else
  {
    return 0x7FFFFFFFLL;
  }
}

uint64_t ixgbe_read_phy_reg(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!*(a1 + 1624) && !*(a1 + 1616))
  {
    v8 = *(a1 + 1416);
    if (v8)
    {
      v8(a1);
    }
  }

  v9 = *(a1 + 1448);
  if (!v9)
  {
    return 0x7FFFFFFFLL;
  }

  return v9(a1, a2, a3, a4);
}

uint64_t ixgbe_write_phy_reg(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!*(a1 + 1624) && !*(a1 + 1616))
  {
    v8 = *(a1 + 1416);
    if (v8)
    {
      v8(a1);
    }
  }

  v9 = *(a1 + 1456);
  if (!v9)
  {
    return 0x7FFFFFFFLL;
  }

  return v9(a1, a2, a3, a4);
}

uint64_t ixgbe_setup_phy_link(uint64_t a1)
{
  v1 = *(a1 + 1480);
  if (v1)
  {
    return v1();
  }

  else
  {
    return 0x7FFFFFFFLL;
  }
}

uint64_t ixgbe_setup_internal_phy(uint64_t a1)
{
  v1 = *(a1 + 1488);
  if (v1)
  {
    return v1();
  }

  else
  {
    return 0;
  }
}

uint64_t ixgbe_check_phy_link(uint64_t a1)
{
  v1 = *(a1 + 1504);
  if (v1)
  {
    return v1();
  }

  else
  {
    return 0x7FFFFFFFLL;
  }
}

uint64_t ixgbe_setup_phy_link_speed(uint64_t a1)
{
  v1 = *(a1 + 1496);
  if (v1)
  {
    return v1();
  }

  else
  {
    return 0x7FFFFFFFLL;
  }
}

uint64_t ixgbe_set_phy_power(uint64_t a1)
{
  v1 = *(a1 + 1576);
  if (v1)
  {
    return v1();
  }

  else
  {
    return 0x7FFFFFFFLL;
  }
}

uint64_t ixgbe_check_link(uint64_t a1)
{
  v1 = *(a1 + 280);
  if (v1)
  {
    return v1();
  }

  else
  {
    return 0x7FFFFFFFLL;
  }
}

uint64_t ixgbe_disable_tx_laser(uint64_t result)
{
  v1 = *(result + 240);
  if (v1)
  {
    return v1();
  }

  return result;
}

uint64_t ixgbe_enable_tx_laser(uint64_t result)
{
  v1 = *(result + 248);
  if (v1)
  {
    return v1();
  }

  return result;
}

uint64_t ixgbe_flap_tx_laser(uint64_t result)
{
  v1 = *(result + 256);
  if (v1)
  {
    return v1();
  }

  return result;
}

uint64_t ixgbe_setup_link(uint64_t a1)
{
  v1 = *(a1 + 264);
  if (v1)
  {
    return v1();
  }

  else
  {
    return 0x7FFFFFFFLL;
  }
}

uint64_t ixgbe_setup_mac_link(uint64_t a1)
{
  v1 = *(a1 + 272);
  if (v1)
  {
    return v1();
  }

  else
  {
    return 0x7FFFFFFFLL;
  }
}

uint64_t ixgbe_get_link_capabilities(uint64_t a1)
{
  v1 = *(a1 + 288);
  if (v1)
  {
    return v1();
  }

  else
  {
    return 0x7FFFFFFFLL;
  }
}

uint64_t ixgbe_led_on(uint64_t a1)
{
  v1 = *(a1 + 312);
  if (v1)
  {
    return v1();
  }

  else
  {
    return 0x7FFFFFFFLL;
  }
}

uint64_t ixgbe_led_off(uint64_t a1)
{
  v1 = *(a1 + 320);
  if (v1)
  {
    return v1();
  }

  else
  {
    return 0x7FFFFFFFLL;
  }
}

uint64_t ixgbe_blink_led_start(uint64_t a1)
{
  v1 = *(a1 + 328);
  if (v1)
  {
    return v1();
  }

  else
  {
    return 0x7FFFFFFFLL;
  }
}

uint64_t ixgbe_blink_led_stop(uint64_t a1)
{
  v1 = *(a1 + 336);
  if (v1)
  {
    return v1();
  }

  else
  {
    return 0x7FFFFFFFLL;
  }
}

uint64_t ixgbe_init_eeprom_params(uint64_t a1)
{
  v1 = *(a1 + 1720);
  if (v1)
  {
    return v1();
  }

  else
  {
    return 0x7FFFFFFFLL;
  }
}

uint64_t ixgbe_write_eeprom(uint64_t a1)
{
  v1 = *(a1 + 1744);
  if (v1)
  {
    return v1();
  }

  else
  {
    return 0x7FFFFFFFLL;
  }
}

uint64_t ixgbe_write_eeprom_buffer(uint64_t a1)
{
  v1 = *(a1 + 1752);
  if (v1)
  {
    return v1();
  }

  else
  {
    return 0x7FFFFFFFLL;
  }
}

uint64_t ixgbe_read_eeprom(uint64_t a1)
{
  v1 = *(a1 + 1728);
  if (v1)
  {
    return v1();
  }

  else
  {
    return 0x7FFFFFFFLL;
  }
}

uint64_t ixgbe_read_eeprom_buffer(uint64_t a1)
{
  v1 = *(a1 + 1736);
  if (v1)
  {
    return v1();
  }

  else
  {
    return 0x7FFFFFFFLL;
  }
}

uint64_t ixgbe_validate_eeprom_checksum(uint64_t a1)
{
  v1 = *(a1 + 1760);
  if (v1)
  {
    return v1();
  }

  else
  {
    return 0x7FFFFFFFLL;
  }
}

uint64_t ixgbe_update_eeprom_checksum(uint64_t a1)
{
  v1 = *(a1 + 1768);
  if (v1)
  {
    return v1();
  }

  else
  {
    return 0x7FFFFFFFLL;
  }
}

uint64_t ixgbe_insert_mac_addr(uint64_t a1)
{
  v1 = *(a1 + 376);
  if (v1)
  {
    return v1();
  }

  else
  {
    return 0x7FFFFFFFLL;
  }
}

uint64_t ixgbe_set_rar(uint64_t a1)
{
  v1 = *(a1 + 352);
  if (v1)
  {
    return v1();
  }

  else
  {
    return 0x7FFFFFFFLL;
  }
}

uint64_t ixgbe_clear_rar(uint64_t a1)
{
  v1 = *(a1 + 368);
  if (v1)
  {
    return v1();
  }

  else
  {
    return 0x7FFFFFFFLL;
  }
}

uint64_t ixgbe_set_vmdq(uint64_t a1)
{
  v1 = *(a1 + 384);
  if (v1)
  {
    return v1();
  }

  else
  {
    return 0x7FFFFFFFLL;
  }
}

uint64_t ixgbe_set_vmdq_san_mac(uint64_t a1)
{
  v1 = *(a1 + 392);
  if (v1)
  {
    return v1();
  }

  else
  {
    return 0x7FFFFFFFLL;
  }
}

uint64_t ixgbe_clear_vmdq(uint64_t a1)
{
  v1 = *(a1 + 400);
  if (v1)
  {
    return v1();
  }

  else
  {
    return 0x7FFFFFFFLL;
  }
}

uint64_t ixgbe_init_rx_addrs(uint64_t a1)
{
  v1 = *(a1 + 408);
  if (v1)
  {
    return v1();
  }

  else
  {
    return 0x7FFFFFFFLL;
  }
}

uint64_t ixgbe_update_uc_addr_list(uint64_t a1)
{
  v1 = *(a1 + 416);
  if (v1)
  {
    return v1();
  }

  else
  {
    return 0x7FFFFFFFLL;
  }
}

uint64_t ixgbe_update_mc_addr_list(uint64_t a1)
{
  v1 = *(a1 + 424);
  if (v1)
  {
    return v1();
  }

  else
  {
    return 0x7FFFFFFFLL;
  }
}

uint64_t ixgbe_enable_mc(uint64_t a1)
{
  v1 = *(a1 + 440);
  if (v1)
  {
    return v1();
  }

  else
  {
    return 0x7FFFFFFFLL;
  }
}

uint64_t ixgbe_disable_mc(uint64_t a1)
{
  v1 = *(a1 + 448);
  if (v1)
  {
    return v1();
  }

  else
  {
    return 0x7FFFFFFFLL;
  }
}

uint64_t ixgbe_clear_vfta(uint64_t a1)
{
  v1 = *(a1 + 456);
  if (v1)
  {
    return v1();
  }

  else
  {
    return 0x7FFFFFFFLL;
  }
}

uint64_t ixgbe_set_vfta(uint64_t a1)
{
  v1 = *(a1 + 464);
  if (v1)
  {
    return v1();
  }

  else
  {
    return 0x7FFFFFFFLL;
  }
}

uint64_t ixgbe_set_vlvf(uint64_t a1)
{
  v1 = *(a1 + 472);
  if (v1)
  {
    return v1();
  }

  else
  {
    return 0x7FFFFFFFLL;
  }
}

uint64_t ixgbe_fc_enable(uint64_t a1)
{
  v1 = *(a1 + 512);
  if (v1)
  {
    return v1();
  }

  else
  {
    return 0x7FFFFFFFLL;
  }
}

uint64_t ixgbe_setup_fc(uint64_t a1)
{
  v1 = *(a1 + 520);
  if (v1)
  {
    return v1();
  }

  else
  {
    return 0x7FFFFFFFLL;
  }
}

uint64_t ixgbe_set_fw_drv_ver(uint64_t a1)
{
  v1 = *(a1 + 536);
  if (v1)
  {
    return v1();
  }

  else
  {
    return 0x7FFFFFFFLL;
  }
}

uint64_t ixgbe_dmac_config(uint64_t a1)
{
  v1 = *(a1 + 632);
  if (v1)
  {
    return v1();
  }

  else
  {
    return 0x7FFFFFFFLL;
  }
}

uint64_t ixgbe_dmac_update_tcs(uint64_t a1)
{
  v1 = *(a1 + 616);
  if (v1)
  {
    return v1();
  }

  else
  {
    return 0x7FFFFFFFLL;
  }
}

uint64_t ixgbe_dmac_config_tcs(uint64_t a1)
{
  v1 = *(a1 + 624);
  if (v1)
  {
    return v1();
  }

  else
  {
    return 0x7FFFFFFFLL;
  }
}

uint64_t ixgbe_setup_eee(uint64_t a1)
{
  v1 = *(a1 + 640);
  if (v1)
  {
    return v1();
  }

  else
  {
    return 0x7FFFFFFFLL;
  }
}

uint64_t ixgbe_set_source_address_pruning(uint64_t result)
{
  v1 = *(result + 600);
  if (v1)
  {
    return v1();
  }

  return result;
}

uint64_t ixgbe_set_ethertype_anti_spoofing(uint64_t result)
{
  v1 = *(result + 608);
  if (v1)
  {
    return v1();
  }

  return result;
}

uint64_t ixgbe_read_iosf_sb_reg(uint64_t a1)
{
  v1 = *(a1 + 648);
  if (v1)
  {
    return v1();
  }

  else
  {
    return 0x7FFFFFFFLL;
  }
}

uint64_t ixgbe_write_iosf_sb_reg(uint64_t a1)
{
  v1 = *(a1 + 656);
  if (v1)
  {
    return v1();
  }

  else
  {
    return 0x7FFFFFFFLL;
  }
}

uint64_t ixgbe_disable_mdd(uint64_t result)
{
  v1 = *(result + 664);
  if (v1)
  {
    return v1();
  }

  return result;
}

uint64_t ixgbe_enable_mdd(uint64_t result)
{
  v1 = *(result + 672);
  if (v1)
  {
    return v1();
  }

  return result;
}

uint64_t ixgbe_mdd_event(uint64_t result)
{
  v1 = *(result + 680);
  if (v1)
  {
    return v1();
  }

  return result;
}

uint64_t ixgbe_restore_mdd_vf(uint64_t result)
{
  v1 = *(result + 688);
  if (v1)
  {
    return v1();
  }

  return result;
}

uint64_t ixgbe_enter_lplu(uint64_t a1)
{
  v1 = *(a1 + 1584);
  if (v1)
  {
    return v1();
  }

  else
  {
    return 0x7FFFFFFFLL;
  }
}

uint64_t ixgbe_handle_lasi(uint64_t a1)
{
  v1 = *(a1 + 1592);
  if (v1)
  {
    return v1();
  }

  else
  {
    return 0x7FFFFFFFLL;
  }
}

uint64_t ixgbe_bypass_rw(uint64_t a1)
{
  v1 = *(a1 + 544);
  if (v1)
  {
    return v1();
  }

  else
  {
    return 0x7FFFFFFFLL;
  }
}

uint64_t ixgbe_bypass_valid_rd(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 552);
  if (v3)
  {
    return v3(a2, a3);
  }

  else
  {
    return 1;
  }
}

uint64_t ixgbe_bypass_set(uint64_t a1)
{
  v1 = *(a1 + 560);
  if (v1)
  {
    return v1();
  }

  else
  {
    return 0x7FFFFFFFLL;
  }
}

uint64_t ixgbe_bypass_rd_eep(uint64_t a1)
{
  v1 = *(a1 + 568);
  if (v1)
  {
    return v1();
  }

  else
  {
    return 0x7FFFFFFFLL;
  }
}

uint64_t ixgbe_read_analog_reg8(uint64_t a1)
{
  v1 = *(a1 + 152);
  if (v1)
  {
    return v1();
  }

  else
  {
    return 0x7FFFFFFFLL;
  }
}

uint64_t ixgbe_write_analog_reg8(uint64_t a1)
{
  v1 = *(a1 + 160);
  if (v1)
  {
    return v1();
  }

  else
  {
    return 0x7FFFFFFFLL;
  }
}

uint64_t ixgbe_init_uta_tables(uint64_t a1)
{
  v1 = *(a1 + 488);
  if (v1)
  {
    return v1();
  }

  else
  {
    return 0x7FFFFFFFLL;
  }
}

uint64_t ixgbe_read_i2c_byte(uint64_t a1)
{
  v1 = *(a1 + 1520);
  if (v1)
  {
    return v1();
  }

  else
  {
    return 0x7FFFFFFFLL;
  }
}

uint64_t ixgbe_read_i2c_byte_unlocked(uint64_t a1)
{
  v1 = *(a1 + 1600);
  if (v1)
  {
    return v1();
  }

  else
  {
    return 0x7FFFFFFFLL;
  }
}

uint64_t ixgbe_read_link(uint64_t a1)
{
  v1 = *(a1 + 1680);
  if (v1)
  {
    return v1();
  }

  else
  {
    return 0x7FFFFFFFLL;
  }
}

uint64_t ixgbe_read_link_unlocked(uint64_t a1)
{
  v1 = *(a1 + 1688);
  if (v1)
  {
    return v1();
  }

  else
  {
    return 0x7FFFFFFFLL;
  }
}

uint64_t ixgbe_write_i2c_byte(uint64_t a1)
{
  v1 = *(a1 + 1528);
  if (v1)
  {
    return v1();
  }

  else
  {
    return 0x7FFFFFFFLL;
  }
}

uint64_t ixgbe_write_i2c_byte_unlocked(uint64_t a1)
{
  v1 = *(a1 + 1608);
  if (v1)
  {
    return v1();
  }

  else
  {
    return 0x7FFFFFFFLL;
  }
}

uint64_t ixgbe_write_link(uint64_t a1)
{
  v1 = *(a1 + 1696);
  if (v1)
  {
    return v1();
  }

  else
  {
    return 0x7FFFFFFFLL;
  }
}

uint64_t ixgbe_write_link_unlocked(uint64_t a1)
{
  v1 = *(a1 + 1704);
  if (v1)
  {
    return v1();
  }

  else
  {
    return 0x7FFFFFFFLL;
  }
}

uint64_t ixgbe_write_i2c_eeprom(uint64_t a1)
{
  v1 = *(a1 + 1552);
  if (v1)
  {
    return v1();
  }

  else
  {
    return 0x7FFFFFFFLL;
  }
}

uint64_t ixgbe_read_i2c_eeprom(uint64_t a1)
{
  v1 = *(a1 + 1544);
  if (v1)
  {
    return v1();
  }

  else
  {
    return 0x7FFFFFFFLL;
  }
}

uint64_t ixgbe_get_supported_physical_layer(uint64_t a1)
{
  v1 = *(a1 + 64);
  if (v1)
  {
    return v1();
  }

  else
  {
    return 0;
  }
}

uint64_t ixgbe_enable_rx_dma(uint64_t a1)
{
  v1 = *(a1 + 176);
  if (v1)
  {
    return v1();
  }

  else
  {
    return 0x7FFFFFFFLL;
  }
}

uint64_t ixgbe_disable_sec_rx_path(uint64_t a1)
{
  v1 = *(a1 + 184);
  if (v1)
  {
    return v1();
  }

  else
  {
    return 0x7FFFFFFFLL;
  }
}

uint64_t ixgbe_enable_sec_rx_path(uint64_t a1)
{
  v1 = *(a1 + 192);
  if (v1)
  {
    return v1();
  }

  else
  {
    return 0x7FFFFFFFLL;
  }
}

uint64_t ixgbe_acquire_swfw_semaphore(uint64_t a1)
{
  v1 = *(a1 + 200);
  if (v1)
  {
    return v1();
  }

  else
  {
    return 0x7FFFFFFFLL;
  }
}

uint64_t ixgbe_release_swfw_semaphore(uint64_t result)
{
  v1 = *(result + 208);
  if (v1)
  {
    return v1();
  }

  return result;
}

uint64_t ixgbe_init_swfw_semaphore(uint64_t result)
{
  v1 = *(result + 216);
  if (v1)
  {
    return v1();
  }

  return result;
}

uint64_t ixgbe_disable_rx(uint64_t result)
{
  v1 = *(result + 584);
  if (v1)
  {
    return v1();
  }

  return result;
}

uint64_t ixgbe_enable_rx(uint64_t result)
{
  v1 = *(result + 592);
  if (v1)
  {
    return v1();
  }

  return result;
}

uint64_t ixgbe_set_rate_select_speed(uint64_t result)
{
  v1 = *(result + 296);
  if (v1)
  {
    return v1();
  }

  return result;
}

uint64_t ixgbe_read_i2c_combined_generic_int(uint64_t a1, unsigned int a2, unsigned int a3, _WORD *a4, int a5)
{
  v8 = *(a1 + 1644);
  v16 = 0;
  v15 = 0;
  v13 = a3;
  v14 = (a3 >> 7) | 1;
  v12 = ~(v14 + a3 + ((v14 + a3) >> 8));
  v9 = 2;
  if (a5)
  {
LABEL_2:
    if (!(*(a1 + 200))(a1, v8))
    {
      goto LABEL_3;
    }

    return 4294967280;
  }

  else
  {
LABEL_3:
    while (1)
    {
      ixgbe_i2c_start(a1);
      if (!ixgbe_clock_out_i2c_byte(a1, a2) && !ixgbe_get_i2c_ack(a1) && !ixgbe_clock_out_i2c_byte(a1, v14) && !ixgbe_get_i2c_ack(a1) && !ixgbe_clock_out_i2c_byte(a1, v13) && !ixgbe_get_i2c_ack(a1) && !ixgbe_clock_out_i2c_byte(a1, v12) && !ixgbe_get_i2c_ack(a1))
      {
        ixgbe_i2c_start(a1);
        if (!ixgbe_clock_out_i2c_byte(a1, a2 | 1) && !ixgbe_get_i2c_ack(a1))
        {
          ixgbe_clock_in_i2c_byte(a1, &v16);
          if (!ixgbe_clock_out_i2c_bit(a1, 0))
          {
            ixgbe_clock_in_i2c_byte(a1, &v15);
            if (!ixgbe_clock_out_i2c_bit(a1, 0))
            {
              ixgbe_clock_in_i2c_byte(a1, &v16 + 1);
              if (!ixgbe_clock_out_i2c_bit(a1, 0))
              {
                break;
              }
            }
          }
        }
      }

      ixgbe_i2c_bus_clear(a1);
      if (a5)
      {
        (*(a1 + 208))(a1, v8);
      }

      if (!v9)
      {
        if ((pcindkll & 0x100000) != 0)
        {
          IOLog("ixgbe:%s(%d): %s\n", "ixgbe_read_i2c_combined_generic_int", 141, "I2C byte read combined error.\n");
        }

        return 4294967278;
      }

      if ((pcindkll & 0x100000) != 0)
      {
        IOLog("ixgbe:%s(%d): %s\n", "ixgbe_read_i2c_combined_generic_int", 139, "I2C byte read combined error - Retrying.\n");
      }

      --v9;
      if (a5)
      {
        goto LABEL_2;
      }
    }

    ixgbe_i2c_stop(a1);
    if (a5)
    {
      (*(a1 + 208))(a1, v8);
    }

    result = 0;
    *a4 = v15 | (v16 << 8);
  }

  return result;
}

void ixgbe_i2c_start(uint64_t a1)
{
  readData = 0;
  IOPCIDevice::MemoryRead32(*a1, 0, *(*(a1 + 1928) + 92), &readData);
  __dmb(1u);
  v2 = readData;
  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixgbe:%s(%d): %s\n", "ixgbe_i2c_start", 2196, "ixgbe_i2c_start");
  }

  v4 = *(*(a1 + 1928) + 84) | v2;
  ixgbe_set_i2c_data(a1, &v4, 1);
  ixgbe_raise_i2c_clk(a1, &v4);
  IODelay(5uLL);
  ixgbe_set_i2c_data(a1, &v4, 0);
  IODelay(4uLL);
  ixgbe_lower_i2c_clk(a1, &v4);
  IODelay(5uLL);
}

uint64_t ixgbe_out_i2c_byte_ack(uint64_t a1, unsigned int a2)
{
  result = ixgbe_clock_out_i2c_byte(a1, a2);
  if (!result)
  {

    return ixgbe_get_i2c_ack(a1);
  }

  return result;
}

void ixgbe_clock_in_i2c_byte(uint64_t a1, _BYTE *a2)
{
  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixgbe:%s(%d): %s\n", "ixgbe_clock_in_i2c_byte", 2268, "ixgbe_clock_in_i2c_byte");
  }

  *a2 = 0;
  for (i = 7; i != -1; --i)
  {
    readData = 0;
    IOPCIDevice::MemoryRead32(*a1, 0, *(*(a1 + 1928) + 92), &readData);
    __dmb(1u);
    v5 = readData;
    v6 = *(*(a1 + 1928) + 80);
    if ((pcindkll & 0x100000) != 0)
    {
      IOLog("ixgbe:%s(%d): %s\n", "ixgbe_clock_in_i2c_bit", 2377, "ixgbe_clock_in_i2c_bit");
    }

    if (v6)
    {
      v7 = v5 | *(*(a1 + 1928) + 76) | v6;
      readData = v7;
      __dmb(2u);
      IOPCIDevice::MemoryWrite32(*a1, 0, *(*(a1 + 1928) + 92), v7);
      v9 = 0;
      IOPCIDevice::MemoryRead32(*a1, 0, 8uLL, &v9);
      __dmb(1u);
    }

    ixgbe_raise_i2c_clk(a1, &readData);
    IODelay(4uLL);
    v9 = 0;
    IOPCIDevice::MemoryRead32(*a1, 0, *(*(a1 + 1928) + 92), &v9);
    __dmb(1u);
    readData = v9;
    i2c_data = ixgbe_get_i2c_data(a1, &readData);
    ixgbe_lower_i2c_clk(a1, &readData);
    IODelay(5uLL);
    *a2 |= i2c_data << i;
  }
}

uint64_t ixgbe_clock_out_i2c_bit(uint64_t a1, int a2)
{
  readData = 0;
  IOPCIDevice::MemoryRead32(*a1, 0, *(*(a1 + 1928) + 92), &readData);
  __dmb(1u);
  v6 = readData;
  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixgbe:%s(%d): %s\n", "ixgbe_clock_out_i2c_bit", 2413, "ixgbe_clock_out_i2c_bit");
  }

  if (ixgbe_set_i2c_data(a1, &v6, a2))
  {
    if ((pcindkll & 0x100000) != 0)
    {
      IOLog("ixgbe:%s(%d): I2C data was not set to %X\n\n", "ixgbe_clock_out_i2c_bit", 2431, a2);
    }

    return 4294967278;
  }

  else
  {
    ixgbe_raise_i2c_clk(a1, &v6);
    IODelay(4uLL);
    ixgbe_lower_i2c_clk(a1, &v6);
    IODelay(5uLL);
    return 0;
  }
}

void ixgbe_i2c_stop(uint64_t a1)
{
  readData = 0;
  IOPCIDevice::MemoryRead32(*a1, 0, *(*(a1 + 1928) + 92), &readData);
  __dmb(1u);
  v11 = readData;
  v2 = *(a1 + 1928);
  v4 = v2[21];
  v3 = v2[22];
  v5 = v2[20];
  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixgbe:%s(%d): %s\n", "ixgbe_i2c_stop", 2234, "ixgbe_i2c_stop");
  }

  ixgbe_set_i2c_data(a1, &v11, 0);
  ixgbe_raise_i2c_clk(a1, &v11);
  IODelay(4uLL);
  ixgbe_set_i2c_data(a1, &v11, 1);
  IODelay(5uLL);
  if (v4)
  {
    v6 = 0;
  }

  else
  {
    v6 = v5 == 0;
  }

  if (!v6 || v3 != 0)
  {
    v8 = v11 & ~v4;
    __dmb(2u);
    IOPCIDevice::MemoryWrite32(*a1, 0, *(*(a1 + 1928) + 92), v5 | v3 | v8);
    v9 = 0;
    IOPCIDevice::MemoryRead32(*a1, 0, 8uLL, &v9);
    __dmb(1u);
  }
}

void ixgbe_i2c_bus_clear(uint64_t a1)
{
  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixgbe:%s(%d): %s\n", "ixgbe_i2c_bus_clear", 2586, "ixgbe_i2c_bus_clear");
  }

  ixgbe_i2c_start(a1);
  readData = 0;
  IOPCIDevice::MemoryRead32(*a1, 0, *(*(a1 + 1928) + 92), &readData);
  __dmb(1u);
  v4 = readData;
  ixgbe_set_i2c_data(a1, &v4, 1);
  v2 = 9;
  do
  {
    ixgbe_raise_i2c_clk(a1, &v4);
    IODelay(4uLL);
    ixgbe_lower_i2c_clk(a1, &v4);
    IODelay(5uLL);
    --v2;
  }

  while (v2);
  ixgbe_i2c_start(a1);
  ixgbe_i2c_stop(a1);
}

uint64_t ixgbe_write_i2c_combined_generic_int(uint64_t a1, unsigned int a2, unsigned int a3, unsigned int a4, int a5)
{
  v10 = *(a1 + 1644);
  if (a5 && (*(a1 + 200))(a1, *(a1 + 1644)))
  {
    return 4294967280;
  }

  ixgbe_i2c_start(a1);
  if (ixgbe_clock_out_i2c_byte(a1, a2) || ixgbe_get_i2c_ack(a1) || ixgbe_clock_out_i2c_byte(a1, (a3 >> 7) & 0xFE) || ixgbe_get_i2c_ack(a1) || ixgbe_clock_out_i2c_byte(a1, a3) || ixgbe_get_i2c_ack(a1) || ixgbe_clock_out_i2c_byte(a1, a4 >> 8) || ixgbe_get_i2c_ack(a1) || ixgbe_out_i2c_byte_ack(a1, a4) || (v12 = (a4 >> 8) + (((a3 >> 7) & 0xFE) + a3 + ((((a3 >> 7) & 0xFE) + a3) >> 8)), ixgbe_out_i2c_byte_ack(a1, ~(v12 + HIBYTE(v12) + a4 + (((v12 + HIBYTE(v12)) + a4) >> 8)))))
  {
    ixgbe_i2c_bus_clear(a1);
    if (a5)
    {
      (*(a1 + 208))(a1, v10);
    }

    if ((pcindkll & 0x100000) != 0)
    {
      IOLog("ixgbe:%s(%d): %s\n", "ixgbe_write_i2c_combined_generic_int", 206, "I2C byte write combined error.\n");
    }

    return 4294967278;
  }

  else
  {
    ixgbe_i2c_stop(a1);
    if (a5)
    {
      (*(a1 + 208))(a1, v10);
    }

    return 0;
  }
}

uint64_t ixgbe_init_phy_ops_generic(uint64_t a1)
{
  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixgbe:%s(%d): %s\n", "ixgbe_init_phy_ops_generic", 222, "ixgbe_init_phy_ops_generic");
  }

  *(a1 + 1416) = ixgbe_identify_phy_generic;
  *(a1 + 1440) = ixgbe_reset_phy_generic;
  *(a1 + 1448) = ixgbe_read_phy_reg_generic;
  *(a1 + 1456) = ixgbe_write_phy_reg_generic;
  *(a1 + 1464) = ixgbe_read_phy_reg_mdi;
  *(a1 + 1472) = ixgbe_write_phy_reg_mdi;
  *(a1 + 1480) = ixgbe_setup_phy_link_generic;
  *(a1 + 1496) = ixgbe_setup_phy_link_speed_generic;
  *(a1 + 1504) = 0;
  *(a1 + 1512) = ixgbe_get_phy_firmware_version_generic;
  *(a1 + 1520) = ixgbe_read_i2c_byte_generic;
  *(a1 + 1528) = ixgbe_write_i2c_byte_generic;
  *(a1 + 1536) = ixgbe_read_i2c_sff8472_generic;
  *(a1 + 1544) = ixgbe_read_i2c_eeprom_generic;
  *(a1 + 1552) = ixgbe_write_i2c_eeprom_generic;
  *(a1 + 1560) = ixgbe_i2c_bus_clear;
  *(a1 + 1424) = ixgbe_identify_module_generic;
  *(a1 + 1628) = 0xFFFF;
  *(a1 + 1600) = ixgbe_read_i2c_byte_generic_unlocked;
  *(a1 + 1608) = ixgbe_write_i2c_byte_generic_unlocked;
  *(a1 + 1568) = ixgbe_tn_check_overtemp;
  return 0;
}

uint64_t ixgbe_identify_phy_generic(uint64_t a1)
{
  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixgbe:%s(%d): %s\n", "ixgbe_identify_phy_generic", 297, "ixgbe_identify_phy_generic");
  }

  if (!*(a1 + 1644))
  {
    if (*(a1 + 1814))
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    *(a1 + 1644) = v2;
  }

  if (*(a1 + 1616))
  {
    return 0;
  }

  v4 = *(a1 + 1676);
  if (!v4)
  {
    for (i = 0; ; ++i)
    {
      v6 = i;
      if (ixgbe_probe_phy(a1, i))
      {
        break;
      }

      if (v6 > 0x1E)
      {
        *(a1 + 1620) = 0;
        return 4294967279;
      }
    }

    return 0;
  }

  if (ixgbe_probe_phy(a1, v4 >> 3))
  {
    return 0;
  }

  else
  {
    return 4294967279;
  }
}

uint64_t ixgbe_reset_phy_generic(uint64_t a1)
{
  v6 = 0;
  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixgbe:%s(%d): %s\n", "ixgbe_reset_phy_generic", 472, "ixgbe_reset_phy_generic");
  }

  v2 = *(a1 + 1616);
  if (!v2)
  {
    result = ixgbe_identify_phy_generic(a1);
    if (result)
    {
      return result;
    }

    v2 = *(a1 + 1616);
  }

  if (v2 == 1 || (*(a1 + 1674) & 1) == 0 && (*(a1 + 1568))(a1) == -26 || ixgbe_check_reset_blocked(a1))
  {
    return 0;
  }

  (*(a1 + 1456))(a1, 0, 4, 0x8000);
  v4 = 30;
  while (1)
  {
    IODelay(0x186A0uLL);
    v5 = *(a1 + 1448);
    if (*(a1 + 1616) != 7)
    {
      break;
    }

    result = v5(a1, 52226, 1, &v6);
    if (result)
    {
      return result;
    }

    if ((v6 & 3) != 0)
    {
      goto LABEL_21;
    }

LABEL_19:
    if (!--v4)
    {
      goto LABEL_22;
    }
  }

  result = v5(a1, 0, 4, &v6);
  if (result)
  {
    return result;
  }

  if (v6 < 0)
  {
    goto LABEL_19;
  }

LABEL_21:
  IODelay(2uLL);
LABEL_22:
  if ((v6 & 0x80000000) == 0)
  {
    return 0;
  }

  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixgbe:%s(%d): PHY reset polling failed to complete.\n\n", "ixgbe_reset_phy_generic", 534);
  }

  return 4294967281;
}

uint64_t ixgbe_read_phy_reg_generic(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a1 + 1644);
  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixgbe:%s(%d): %s\n", "ixgbe_read_phy_reg_generic", 637, "ixgbe_read_phy_reg_generic");
  }

  if ((*(a1 + 200))(a1, v8))
  {
    return 4294967280;
  }

  v10 = (*(a1 + 1464))(a1, a2, a3, a4);
  (*(a1 + 208))(a1, v8);
  return v10;
}

uint64_t ixgbe_write_phy_reg_generic(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a1 + 1644);
  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixgbe:%s(%d): %s\n", "ixgbe_write_phy_reg_generic", 737, "ixgbe_write_phy_reg_generic");
  }

  if ((*(a1 + 200))(a1, v8))
  {
    return 4294967280;
  }

  v10 = (*(a1 + 1472))(a1, a2, a3, a4);
  (*(a1 + 208))(a1, v8);
  return v10;
}

uint64_t ixgbe_read_phy_reg_mdi(uint64_t a1, int a2, int a3, _WORD *a4)
{
  v6 = a2 | (a3 << 16);
  v7 = v6 | (*(a1 + 1620) << 21);
  __dmb(2u);
  IOPCIDevice::MemoryWrite32(*a1, 0, 0x425CuLL, v7 | 0x40000000);
  v8 = 100;
  while (1)
  {
    IODelay(0xAuLL);
    readData = 0;
    IOPCIDevice::MemoryRead32(*a1, 0, 0x425CuLL, &readData);
    __dmb(1u);
    if ((readData & 0x40000000) == 0)
    {
      break;
    }

    if (!--v8)
    {
      if ((pcindkll & 0x100000) != 0)
      {
        IOLog("ixgbe:%s(%d): PHY address command did not complete.\n\n", "ixgbe_read_phy_reg_mdi", 577);
        if ((pcindkll & 0x100000) != 0)
        {
          IOLog("ixgbe:%s(%d): %s\n", "ixgbe_read_phy_reg_mdi", 578, "PHY address command did not complete, returning IXGBE_ERR_PHY\n");
        }
      }

      return 4294967293;
    }
  }

  v9 = v6 | (*(a1 + 1620) << 21);
  __dmb(2u);
  IOPCIDevice::MemoryWrite32(*a1, 0, 0x425CuLL, v9 | 0x4C000000);
  v10 = 100;
  do
  {
    IODelay(0xAuLL);
    v13 = 0;
    IOPCIDevice::MemoryRead32(*a1, 0, 0x425CuLL, &v13);
    __dmb(1u);
    if ((v13 & 0x40000000) == 0)
    {
      v12 = 0;
      IOPCIDevice::MemoryRead32(*a1, 0, 0x4260uLL, &v12);
      result = 0;
      __dmb(1u);
      *a4 = HIWORD(v12);
      return result;
    }

    --v10;
  }

  while (v10);
  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixgbe:%s(%d): PHY read command didn't complete\n\n", "ixgbe_read_phy_reg_mdi", 607);
    if ((pcindkll & 0x100000) != 0)
    {
      IOLog("ixgbe:%s(%d): %s\n", "ixgbe_read_phy_reg_mdi", 608, "PHY read command didn't complete, returning IXGBE_ERR_PHY\n");
    }
  }

  return 4294967293;
}

uint64_t ixgbe_write_phy_reg_mdi(uint64_t a1, int a2, int a3, uint32_t a4)
{
  __dmb(2u);
  IOPCIDevice::MemoryWrite32(*a1, 0, 0x4260uLL, a4);
  v7 = a2 | (a3 << 16);
  v8 = v7 | (*(a1 + 1620) << 21);
  __dmb(2u);
  IOPCIDevice::MemoryWrite32(*a1, 0, 0x425CuLL, v8 | 0x40000000);
  v9 = 100;
  while (1)
  {
    IODelay(0xAuLL);
    readData = 0;
    IOPCIDevice::MemoryRead32(*a1, 0, 0x425CuLL, &readData);
    __dmb(1u);
    if ((readData & 0x40000000) == 0)
    {
      break;
    }

    if (!--v9)
    {
      if ((pcindkll & 0x100000) != 0)
      {
        IOLog("ixgbe:%s(%d): PHY address cmd didn't complete\n\n");
      }

      return 4294967293;
    }
  }

  v10 = v7 | (*(a1 + 1620) << 21);
  __dmb(2u);
  IOPCIDevice::MemoryWrite32(*a1, 0, 0x425CuLL, v10 | 0x44000000);
  v11 = 100;
  do
  {
    IODelay(0xAuLL);
    v13 = 0;
    IOPCIDevice::MemoryRead32(*a1, 0, 0x425CuLL, &v13);
    __dmb(1u);
    if ((v13 & 0x40000000) == 0)
    {
      return 0;
    }

    --v11;
  }

  while (v11);
  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixgbe:%s(%d): PHY write cmd didn't complete\n\n");
  }

  return 4294967293;
}

uint64_t ixgbe_setup_phy_link_generic(uint64_t a1)
{
  v11 = 0;
  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixgbe:%s(%d): %s\n", "ixgbe_setup_phy_link_generic", 763, "ixgbe_setup_phy_link_generic");
  }

  v9 = 0;
  ixgbe_get_copper_link_capabilities_generic(a1, &v9, &v10);
  (*(a1 + 1448))(a1, 32, 7, &v11);
  v2 = v11;
  v3 = v11 & 0xEFFF;
  v11 &= ~0x1000u;
  if ((*(a1 + 1652) & 0x80) != 0 && (v9 & 0x80) != 0)
  {
    v3 = v2 | 0x1000;
    v11 = v2 | 0x1000;
  }

  (*(a1 + 1456))(a1, 32, 7, v3);
  (*(a1 + 1448))(a1, 50176, 7, &v11);
  v4 = v11;
  v5 = *(a1 + 1652);
  if (*(a1 + 696) == 6)
  {
    v4 = v11 & 0xF3FF | v9 & v5 & 0x800;
    if ((v5 & 0x400) != 0)
    {
      v4 |= v9 & 0x400;
    }
  }

  v6 = v4 & 0x7FFF;
  v11 = v4 & 0x7FFF;
  if ((v5 & 0x20) != 0 && (v9 & 0x20) != 0)
  {
    v6 = v4 | 0x8000;
    v11 = v4 | 0x8000;
  }

  (*(a1 + 1456))(a1, 50176, 7, v6);
  (*(a1 + 1448))(a1, 16, 7, &v11);
  v7 = v11 & 0xFE7F;
  v11 &= 0xFE7Fu;
  if ((*(a1 + 1652) & 8) != 0 && (v9 & 8) != 0)
  {
    v7 |= 0x100u;
    v11 = v7;
  }

  (*(a1 + 1456))(a1, 16, 7, v7);
  if (!ixgbe_check_reset_blocked(a1))
  {
    (*(a1 + 1448))(a1, 0, 7, &v11);
    v11 |= 0x200u;
    (*(a1 + 1456))(a1, 0, 7);
  }

  return 0;
}

uint64_t ixgbe_setup_phy_link_speed_generic(uint64_t a1, __int16 a2)
{
  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixgbe:%s(%d): %s\n", "ixgbe_setup_phy_link_speed_generic", 853, "ixgbe_setup_phy_link_speed_generic");
  }

  *(a1 + 1652) = a2 & 0xCAA;
  ixgbe_setup_phy_link(a1);
  return 0;
}

uint64_t ixgbe_get_phy_firmware_version_generic(uint64_t a1, uint64_t a2)
{
  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixgbe:%s(%d): %s\n", "ixgbe_get_phy_firmware_version_generic", 1106, "ixgbe_get_phy_firmware_version_generic");
  }

  v4 = *(a1 + 1448);

  return v4(a1, 32, 30, a2);
}

uint64_t ixgbe_read_i2c_eeprom_generic(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixgbe:%s(%d): %s\n", "ixgbe_read_i2c_eeprom_generic", 1897, "ixgbe_read_i2c_eeprom_generic");
  }

  v6 = *(a1 + 1520);

  return v6(a1, a2, 160, a3);
}

uint64_t ixgbe_write_i2c_eeprom_generic(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixgbe:%s(%d): %s\n", "ixgbe_write_i2c_eeprom_generic", 1931, "ixgbe_write_i2c_eeprom_generic");
  }

  v6 = *(a1 + 1528);

  return v6(a1, a2, 160, a3);
}

uint64_t ixgbe_identify_module_generic(uint64_t a1)
{
  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixgbe:%s(%d): %s\n", "ixgbe_identify_module_generic", 1241, "ixgbe_identify_module_generic");
  }

  v2 = (*(a1 + 56))(a1);
  if (v2 == 3)
  {

    return ixgbe_identify_qsfp_module_generic(a1);
  }

  else if (v2 == 1)
  {

    return ixgbe_identify_sfp_module_generic(a1);
  }

  else
  {
    *(a1 + 1628) = 65534;
    return 4294967276;
  }
}

uint64_t ixgbe_tn_check_overtemp(uint64_t a1)
{
  v3 = 0;
  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixgbe:%s(%d): %s\n", "ixgbe_tn_check_overtemp", 2622, "ixgbe_tn_check_overtemp");
  }

  if (*(a1 + 1936) != 5404)
  {
    return 0;
  }

  (*(a1 + 1448))(a1, 36869, 1, &v3);
  if ((v3 & 8) == 0)
  {
    return 0;
  }

  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixgbe:%s(%d): Device over temperature\n", "ixgbe_tn_check_overtemp", 2635);
  }

  return 4294967270;
}

uint64_t ixgbe_probe_phy(uint64_t a1, int a2)
{
  v7 = 0;
  if (!ixgbe_validate_phy_addr(a1, a2))
  {
    if ((pcindkll & 0x100000) != 0)
    {
      IOLog("ixgbe:%s(%d): Unable to validate PHY address 0x%04X\n\n", "ixgbe_probe_phy", 263, a2);
    }

    return 0;
  }

  if (ixgbe_get_phy_id(a1))
  {
    return 0;
  }

  phy_type_from_id = ixgbe_get_phy_type_from_id(*(a1 + 1624));
  *(a1 + 1616) = phy_type_from_id;
  if (!phy_type_from_id)
  {
    (*(a1 + 1448))(a1, 11, 1, &v7);
    if ((v7 & 0x24) != 0)
    {
      v5 = 9;
    }

    else
    {
      v5 = 28;
    }

    *(a1 + 1616) = v5;
  }

  return 1;
}

uint64_t ixgbe_check_reset_blocked(uint64_t a1)
{
  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixgbe:%s(%d): %s\n", "ixgbe_check_reset_blocked", 349, "ixgbe_check_reset_blocked");
  }

  if (*(a1 + 696) == 1)
  {
    return 0;
  }

  readData = 0;
  IOPCIDevice::MemoryRead32(*a1, 0, 0x42D0uLL, &readData);
  __dmb(1u);
  if ((readData & 1) == 0)
  {
    return 0;
  }

  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixgbe:%s(%d): MNG_VETO bit detected.\n\n", "ixgbe_check_reset_blocked", 358);
  }

  return 1;
}

BOOL ixgbe_validate_phy_addr(uint64_t a1, int a2)
{
  v6 = 0;
  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixgbe:%s(%d): %s\n", "ixgbe_validate_phy_addr", 376, "ixgbe_validate_phy_addr");
  }

  *(a1 + 1620) = a2;
  (*(a1 + 1448))(a1, 2, 1, &v6);
  v4 = v6;
  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixgbe:%s(%d): PHY ID HIGH is 0x%04X\n\n", "ixgbe_validate_phy_addr", 385, v6);
  }

  return (v4 - 1) < 0xFFFE;
}

uint64_t ixgbe_get_phy_id(uint64_t a1)
{
  v6 = 0;
  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixgbe:%s(%d): %s\n", "ixgbe_get_phy_id", 401, "ixgbe_get_phy_id");
  }

  v2 = (*(a1 + 1448))(a1, 2, 1, &v6 + 2);
  if (v2)
  {
    v3 = v2;
    v4 = 0;
  }

  else
  {
    *(a1 + 1624) = HIWORD(v6) << 16;
    v3 = (*(a1 + 1448))(a1, 3, 1, &v6);
    v4 = v6;
    *(a1 + 1624) |= v6 & 0xFFF0;
    *(a1 + 1636) = v4 & 0xF;
  }

  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixgbe:%s(%d): PHY_ID_HIGH 0x%04X, PHY_ID_LOW 0x%04X\n\n", "ixgbe_get_phy_id", 416, HIWORD(v6), v4);
  }

  return v3;
}

uint64_t ixgbe_get_phy_type_from_id(int a1)
{
  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixgbe:%s(%d): %s\n", "ixgbe_get_phy_type_from_id", 430, "ixgbe_get_phy_type_from_id");
  }

  if (a1 > 22282784)
  {
    if (a1 > 22282815)
    {
      if (a1 == 22282816 || a1 == 22282832)
      {
        return 7;
      }

      if (a1 == 54693968)
      {
        return 12;
      }

      return 0;
    }

    if (a1 == 22282785)
    {
      return 3;
    }

    v2 = 547;
    goto LABEL_18;
  }

  if (a1 > 21040591)
  {
    if (a1 == 21040592 || a1 == 21040800)
    {
      return 8;
    }

    v2 = 512;
LABEL_18:
    if (a1 == (v2 | 0x1540000))
    {
      return 3;
    }

    return 0;
  }

  if (a1 == 4432896)
  {
    return 10;
  }

  if (a1 == 10589200)
  {
    return 2;
  }

  return 0;
}

uint64_t ixgbe_get_copper_link_capabilities_generic(uint64_t a1, _DWORD *a2, _BYTE *a3)
{
  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixgbe:%s(%d): %s\n", "ixgbe_get_copper_link_capabilities_generic", 938, "ixgbe_get_copper_link_capabilities_generic");
  }

  *a3 = 1;
  v6 = *(a1 + 1656);
  if (!v6)
  {
    v11 = 0;
    result = (*(a1 + 1448))(a1, 4, 1, &v11);
    if (result)
    {
      goto LABEL_18;
    }

    v8 = v11;
    if (v11)
    {
      *(a1 + 1656) |= 0x80u;
      if ((v8 & 0x10) == 0)
      {
LABEL_8:
        if ((v8 & 0x20) == 0)
        {
LABEL_10:
          v9 = *(a1 + 696);
          if ((v9 - 7) < 2)
          {
            v10 = *(a1 + 1656) & 0xFFFFFFF7;
LABEL_17:
            *(a1 + 1656) = v10;
            goto LABEL_18;
          }

          if (v9 == 6)
          {
            v10 = *(a1 + 1656) | 0xC00;
            goto LABEL_17;
          }

LABEL_18:
          v6 = *(a1 + 1656);
          goto LABEL_19;
        }

LABEL_9:
        *(a1 + 1656) |= 8u;
        goto LABEL_10;
      }
    }

    else if ((v11 & 0x10) == 0)
    {
      goto LABEL_8;
    }

    *(a1 + 1656) |= 0x20u;
    if ((v8 & 0x20) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  result = 0;
LABEL_19:
  *a2 = v6;
  return result;
}

uint64_t ixgbe_check_phy_link_tnx(uint64_t a1, _DWORD *a2, _BYTE *a3)
{
  v9 = 0;
  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixgbe:%s(%d): %s\n", "ixgbe_check_phy_link_tnx", 967, "ixgbe_check_phy_link_tnx");
  }

  *a3 = 0;
  *a2 = 128;
  v6 = 10;
  while (1)
  {
    IODelay(0xAuLL);
    result = (*(a1 + 1448))(a1, 1, 30, &v9);
    v8 = v9;
    if ((v9 & 8) != 0)
    {
      break;
    }

    if (!--v6)
    {
      return result;
    }
  }

  *a3 = 1;
  if ((v8 & 0x10) != 0)
  {
    *a2 = 32;
  }

  return result;
}

uint64_t ixgbe_setup_phy_link_tnx(uint64_t a1)
{
  v12 = 0;
  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixgbe:%s(%d): %s\n", "ixgbe_setup_phy_link_tnx", 1012, "ixgbe_setup_phy_link_tnx");
  }

  v10 = 0;
  ixgbe_get_copper_link_capabilities_generic(a1, &v10, &v11);
  v2 = v10;
  if ((v10 & 0x80) != 0)
  {
    (*(a1 + 1448))(a1, 32, 7, &v12);
    v3 = v12;
    v4 = v12 & 0xEFFF;
    v12 &= ~0x1000u;
    if ((*(a1 + 1652) & 0x80) != 0)
    {
      v4 = v3 | 0x1000;
      v12 = v3 | 0x1000;
    }

    (*(a1 + 1456))(a1, 32, 7, v4);
    if ((v2 & 0x20) == 0)
    {
LABEL_5:
      if ((v2 & 8) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_13;
    }
  }

  else if ((v10 & 0x20) == 0)
  {
    goto LABEL_5;
  }

  (*(a1 + 1448))(a1, 23, 7, &v12);
  v5 = v12;
  v6 = v12 & 0xBFFF;
  v12 &= ~0x4000u;
  if ((*(a1 + 1652) & 0x20) != 0)
  {
    v6 = v5 | 0x4000;
    v12 = v5 | 0x4000;
  }

  (*(a1 + 1456))(a1, 23, 7, v6);
  if ((v2 & 8) != 0)
  {
LABEL_13:
    (*(a1 + 1448))(a1, 16, 7, &v12);
    v7 = v12;
    v8 = v12 & 0xFEFF;
    v12 &= ~0x100u;
    if ((*(a1 + 1652) & 8) != 0)
    {
      v8 = v7 | 0x100;
      v12 = v7 | 0x100;
    }

    (*(a1 + 1456))(a1, 16, 7, v8);
  }

LABEL_16:
  if (!ixgbe_check_reset_blocked(a1))
  {
    (*(a1 + 1448))(a1, 0, 7, &v12);
    v12 |= 0x200u;
    (*(a1 + 1456))(a1, 0, 7);
  }

  return 0;
}

uint64_t ixgbe_get_phy_firmware_version_tnx(uint64_t a1, uint64_t a2)
{
  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixgbe:%s(%d): %s\n", "ixgbe_get_phy_firmware_version_tnx", 1087, "ixgbe_get_phy_firmware_version_tnx");
  }

  v4 = *(a1 + 1448);

  return v4(a1, 11, 30, a2);
}

uint64_t ixgbe_reset_phy_nl(uint64_t a1)
{
  v7 = 0;
  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixgbe:%s(%d): %s\n", "ixgbe_reset_phy_nl", 1128, "ixgbe_reset_phy_nl");
  }

  if (ixgbe_check_reset_blocked(a1))
  {
    return 0;
  }

  v9 = 0;
  v10 = 0;
  v8 = 0;
  (*(a1 + 1448))(a1, 0, 4, &v7);
  (*(a1 + 1456))(a1, 0, 4, v7 | 0x8000u);
  v3 = 100;
  while (1)
  {
    (*(a1 + 1448))(a1, 0, 4, &v7);
    if ((v7 & 0x80000000) == 0)
    {
      break;
    }

    IODelay(0x2710uLL);
    if (!--v3)
    {
      if (v7 < 0)
      {
        if ((pcindkll & 0x100000) != 0)
        {
          goto LABEL_14;
        }

        return 4294967293;
      }

      break;
    }
  }

  result = ixgbe_get_sfp_init_sequence_offsets(a1, &v9, &v8);
  if (result)
  {
    return result;
  }

  (*(a1 + 1728))(a1, v8++, &v9 + 2);
  if ((*(a1 + 1728))(a1, v8, &v10))
  {
LABEL_11:
    if ((pcindkll & 0x100000) != 0)
    {
      IOLog("ixgbe:%s(%d): eeprom read at offset %d failed\n");
    }

    return 4294967293;
  }

  while (1)
  {
    v4 = v10 >> 12;
    v5 = v10 & 0xFFF;
    if (v4 == 15)
    {
      break;
    }

    if (v4 == 1)
    {
      if ((pcindkll & 0x100000) != 0)
      {
        IOLog("ixgbe:%s(%d): %s\n", "ixgbe_reset_phy_nl", 1181, "DATA:\n");
      }

      if ((*(a1 + 1728))(a1, ++v8, &v10 + 2))
      {
        goto LABEL_11;
      }

      v6 = ++v8;
      if (v5)
      {
        while (!(*(a1 + 1728))(a1, v6, &v10))
        {
          (*(a1 + 1456))(a1, HIWORD(v10), 1, v10);
          if ((pcindkll & 0x100000) != 0)
          {
            IOLog("ixgbe:%s(%d): Wrote %4.4x to %4.4x\n\n", "ixgbe_reset_phy_nl", 1196, v10, HIWORD(v10));
          }

          v6 = ++v8;
          ++HIWORD(v10);
          if (!--v5)
          {
            goto LABEL_37;
          }
        }

        goto LABEL_11;
      }
    }

    else
    {
      if (v4)
      {
        if ((pcindkll & 0x100000) == 0)
        {
          return 4294967293;
        }

        goto LABEL_14;
      }

      ++v8;
      if ((pcindkll & 0x100000) != 0)
      {
        IOLog("ixgbe:%s(%d): DELAY: %d MS\n\n", "ixgbe_reset_phy_nl", 1177, v10 & 0xFFF);
      }

      IODelay(1000 * v5);
    }

LABEL_37:
    if ((*(a1 + 1728))(a1, v8, &v10))
    {
      goto LABEL_11;
    }
  }

  ++v8;
  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixgbe:%s(%d): %s\n", "ixgbe_reset_phy_nl", 1203, "CONTROL:\n");
  }

  if (!v5)
  {
    if ((pcindkll & 0x100000) != 0)
    {
      IOLog("ixgbe:%s(%d): %s\n", "ixgbe_reset_phy_nl", 1208, "SOL\n");
    }

    goto LABEL_37;
  }

  if (v5 == 4095)
  {
    if ((pcindkll & 0x100000) != 0)
    {
      IOLog("ixgbe:%s(%d): %s\n", "ixgbe_reset_phy_nl", 1205, "EOL\n");
    }

    return 0;
  }

  if ((pcindkll & 0x100000) == 0)
  {
    return 4294967293;
  }

LABEL_14:
  IOLog("ixgbe:%s(%d): %s\n");
  return 4294967293;
}

uint64_t ixgbe_get_sfp_init_sequence_offsets(uint64_t a1, unsigned __int16 *a2, unsigned __int16 *a3)
{
  v6 = *(a1 + 1628);
  v7 = v6;
  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixgbe:%s(%d): %s\n", "ixgbe_get_sfp_init_sequence_offsets", 1807, "ixgbe_get_sfp_init_sequence_offsets");
    v7 = *(a1 + 1628);
  }

  if (v7 == 0xFFFF)
  {
    return 4294967277;
  }

  if (v7 == 65534)
  {
    return 4294967276;
  }

  if (!v7 && *(a1 + 1936) == 4321)
  {
    return 4294967277;
  }

  if ((v6 & 0xFFF9) == 8)
  {
    v9 = 6;
  }

  else
  {
    v9 = v6;
  }

  if (v6 == 11)
  {
    v9 = 5;
  }

  if (v6 == 7)
  {
    v10 = 5;
  }

  else
  {
    v10 = v9;
  }

  if ((v6 & 0xFFFB) == 9)
  {
    v11 = 5;
  }

  else
  {
    v11 = v10;
  }

  if ((*(a1 + 1728))(a1, 43, a2))
  {
    if ((pcindkll & 0x100000) != 0)
    {
      IOLog("ixgbe:%s(%d): eeprom read at offset %d failed\n", "ixgbe_get_sfp_init_sequence_offsets", 1838, 43);
    }

    return 4294967275;
  }

  else
  {
    v12 = *a2;
    result = 4294967275;
    if (*a2 && v12 != 0xFFFF)
    {
      v19 = 0;
      v13 = v12 + 1;
      *a2 = v13;
      if (!(*(a1 + 1728))(a1, v13, &v19))
      {
        while (1)
        {
          if (v19 == 0xFFFF)
          {
            goto LABEL_45;
          }

          v14 = *a2;
          if (v11 == v19)
          {
            break;
          }

          v15 = v14 + 2;
          *a2 = v15;
          if ((*(a1 + 1728))(a1, v15, &v19))
          {
            goto LABEL_28;
          }
        }

        v16 = v14 + 1;
        *a2 = v16;
        if ((*(a1 + 1728))(a1, v16, a3))
        {
          goto LABEL_28;
        }

        v17 = *a3;
        if (v17 != 0xFFFF && v17 != 0)
        {
          if (v19 != -1)
          {
            return 0;
          }

LABEL_45:
          if ((pcindkll & 0x100000) != 0)
          {
            IOLog("ixgbe:%s(%d): %s\n", "ixgbe_get_sfp_init_sequence_offsets", 1874, "No matching SFP+ module found\n");
          }

          return 4294967277;
        }

        if ((pcindkll & 0x100000) != 0)
        {
          IOLog("ixgbe:%s(%d): %s\n", "ixgbe_get_sfp_init_sequence_offsets", 1861, "SFP+ module not supported\n");
        }

        return 4294967277;
      }

LABEL_28:
      if ((pcindkll & 0x100000) != 0)
      {
        IOLog("ixgbe:%s(%d): eeprom read at offset %d failed\n", "ixgbe_get_sfp_init_sequence_offsets", 1882, *a2);
      }

      return 4294967293;
    }
  }

  return result;
}

uint64_t ixgbe_identify_sfp_module_generic(uint64_t a1)
{
  v2 = *(a1 + 1628);
  v13 = 0;
  v12 = 0;
  v11 = 0;
  v10 = 0;
  v9 = 0;
  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixgbe:%s(%d): %s\n", "ixgbe_identify_sfp_module_generic", 1280, "ixgbe_identify_sfp_module_generic");
  }

  if ((*(a1 + 56))(a1) == 1)
  {
    (*(a1 + 144))(a1);
    if ((*(a1 + 1544))(a1, 0, &v13 + 1))
    {
LABEL_5:
      *(a1 + 1628) = 65534;
      if (*(a1 + 1616) != 12)
      {
        *(a1 + 1624) = 0;
        *(a1 + 1616) = 0;
      }

      return 4294967276;
    }

    if (HIBYTE(v13) != 3)
    {
      goto LABEL_82;
    }

    if ((*(a1 + 1544))(a1, 6, &v13) || (*(a1 + 1544))(a1, 3, &v12 + 1) || (*(a1 + 1544))(a1, 8, &v10))
    {
      goto LABEL_5;
    }

    if (*(a1 + 696) == 1)
    {
      if ((v10 & 4) != 0)
      {
        v4 = 0;
      }

      else if ((v12 & 0x1000) != 0)
      {
        v4 = 1;
      }

      else if ((v12 & 0x2000) != 0)
      {
        v4 = 2;
      }

      else
      {
        v4 = 0xFFFF;
      }

      goto LABEL_32;
    }

    if ((v10 & 4) != 0)
    {
      v5 = *(a1 + 1814) == 0;
      v4 = 3;
      goto LABEL_26;
    }

    if ((v10 & 8) == 0)
    {
      if ((v12 & 0x3000) != 0)
      {
        v5 = *(a1 + 1814) == 0;
        v4 = 5;
        goto LABEL_26;
      }

      if ((v13 & 8) != 0)
      {
        v5 = *(a1 + 1814) == 0;
        v4 = 9;
      }

      else
      {
        if ((v13 & 1) == 0)
        {
          if ((v13 & 2) != 0)
          {
            v5 = *(a1 + 1814) == 0;
            v4 = 13;
            goto LABEL_26;
          }

LABEL_31:
          v4 = 0xFFFF;
          goto LABEL_32;
        }

        v5 = *(a1 + 1814) == 0;
        v4 = 11;
      }

LABEL_26:
      if (!v5)
      {
        ++v4;
      }

LABEL_32:
      *(a1 + 1628) = v4;
      if (v4 != v2)
      {
        *(a1 + 1632) = 1;
      }

      *(a1 + 1673) = 0;
      if ((v13 & 1) != 0 && (v12 & 0x1000) != 0 || (v13 & 2) != 0 && (v12 & 0x2000) != 0)
      {
        *(a1 + 1673) = 1;
      }

      if (*(a1 + 1616) == 12)
      {
        goto LABEL_40;
      }

      *(a1 + 1624) = HIBYTE(v13);
      if ((*(a1 + 1544))(a1, 37, &v11) || (*(a1 + 1544))(a1, 38, &v11 + 1) || (*(a1 + 1544))(a1, 39, &v12))
      {
        goto LABEL_5;
      }

      v7 = (v11 << 24) | (HIBYTE(v11) << 16) | (v12 << 8);
      if (v7 > 4224511)
      {
        if (v7 == 9463040)
        {
          if ((v10 & 8) != 0)
          {
            v8 = 18;
          }

          else
          {
            v8 = 17;
          }

          goto LABEL_79;
        }

        if (v7 == 4224512)
        {
          if ((v10 & 4) == 0)
          {
LABEL_40:
            if ((v10 & 0xC) != 0)
            {
              if ((v10 & 4) != 0)
              {
                result = 0;
                v6 = 14;
                goto LABEL_59;
              }

              if ((v10 & 8) != 0)
              {
                result = 0;
                v6 = 15;
LABEL_59:
                *(a1 + 1616) = v6;
                return result;
              }

              return 0;
            }

            if (HIBYTE(v12) || (*(a1 + 1628) - 9) < 6)
            {
              if (*(a1 + 696) == 1)
              {
                return 0;
              }

              ixgbe_get_device_caps(a1);
              if ((*(a1 + 1628) - 9) < 6 || *(a1 + 1616) == 20)
              {
                return 0;
              }

              if (*(a1 + 1953) == 1)
              {
                if ((pcindkll & 0x100000) != 0)
                {
                  IOLog("ixgbe:%s(%d): %s\n", "ixgbe_identify_sfp_module_generic", 1513, "WARNING: Intel (R) Network Connections are quality tested using Intel (R) Ethernet Optics. Using untested modules is not supported and may cause unstable operation or damage to the module or the adapter. Intel Corporation is not responsible for any harm caused by using untested modules.\n");
                }

                return 0;
              }

              if ((pcindkll & 0x100000) != 0)
              {
                IOLog("ixgbe:%s(%d): %s\n", "ixgbe_identify_sfp_module_generic", 1516, "SFP+ module not supported\n");
              }
            }

LABEL_82:
            *(a1 + 1616) = 25;
            return 4294967277;
          }

          v8 = 13;
LABEL_79:
          *(a1 + 1616) = v8;
          goto LABEL_40;
        }
      }

      else
      {
        if (v7 == 1534464)
        {
          v8 = 16;
          goto LABEL_79;
        }

        if (v7 == 1777920)
        {
          v8 = 20;
          goto LABEL_79;
        }
      }

      v8 = 19;
      goto LABEL_79;
    }

    (*(a1 + 1544))(a1, 60, &v9);
    if ((v9 & 4) != 0)
    {
      v5 = *(a1 + 1814) == 0;
      v4 = 7;
      goto LABEL_26;
    }

    goto LABEL_31;
  }

  *(a1 + 1628) = 65534;
  return 4294967276;
}

uint64_t ixgbe_identify_qsfp_module_generic(uint64_t a1)
{
  v2 = *(a1 + 1628);
  v13 = 0;
  v12 = 0;
  v11 = 0;
  v10 = 0;
  v9 = 0;
  v8 = 0;
  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixgbe:%s(%d): %s\n", "ixgbe_identify_qsfp_module_generic", 1622, "ixgbe_identify_qsfp_module_generic");
  }

  if ((*(a1 + 56))(a1) != 3)
  {
    *(a1 + 1628) = 65534;
    return 4294967276;
  }

  (*(a1 + 144))(a1);
  if (!(*(a1 + 1544))(a1, 0, &v13 + 1))
  {
    if (HIBYTE(v13) == 13)
    {
      *(a1 + 1624) = 13;
      if ((*(a1 + 1544))(a1, 131, &v12 + 1) || (*(a1 + 1544))(a1, 134, &v13))
      {
        goto LABEL_5;
      }

      if ((v12 & 0x800) != 0)
      {
        *(a1 + 1616) = 21;
        v4 = *(a1 + 1814) == 0;
        v5 = 3;
      }

      else if ((v12 & 0x3000) != 0)
      {
        v4 = *(a1 + 1814) == 0;
        v5 = 5;
      }

      else
      {
        if ((v12 & 0x100) == 0)
        {
          (*(a1 + 1544))(a1, 130, &v9 + 1);
          (*(a1 + 1544))(a1, 146, &v9);
          (*(a1 + 1544))(a1, 147, &v8);
          if (HIBYTE(v9) != 35 || !v9 || v8 > 0xFu)
          {
            goto LABEL_45;
          }
        }

        *(a1 + 1616) = 22;
        v4 = *(a1 + 1814) == 0;
        v5 = 7;
      }

      if (!v4)
      {
        ++v5;
      }

      *(a1 + 1628) = v5;
      if (v5 != v2)
      {
        *(a1 + 1632) = 1;
      }

      *(a1 + 1673) = 0;
      v6 = HIBYTE(v12);
      if ((v13 & 1) != 0 && (v12 & 0x1000) != 0 || (v13 & 2) != 0 && (v12 & 0x2000) != 0)
      {
        *(a1 + 1673) = 1;
      }

      if ((v6 & 0x30) == 0)
      {
        return 0;
      }

      if ((*(a1 + 1544))(a1, 165, &v11) || (*(a1 + 1544))(a1, 166, &v11 + 1) || (*(a1 + 1544))(a1, 167, &v12))
      {
        goto LABEL_5;
      }

      v7 = ((v11 << 24) | (HIBYTE(v11) << 16) | (v12 << 8)) == 0x1B2100 ? 23 : 24;
      *(a1 + 1616) = v7;
      ixgbe_get_device_caps(a1);
      if ((v10 & 1) != 0 || *(a1 + 1616) == 23)
      {
        return 0;
      }

      if (*(a1 + 1953) == 1)
      {
        if ((pcindkll & 0x100000) != 0)
        {
          IOLog("ixgbe:%s(%d): %s\n", "ixgbe_identify_qsfp_module_generic", 1766, "WARNING: Intel (R) Network Connections are quality tested using Intel (R) Ethernet Optics. Using untested modules is not supported and may cause unstable operation or damage to the module or the adapter. Intel Corporation is not responsible for any harm caused by using untested modules.\n");
        }

        return 0;
      }

      if ((pcindkll & 0x100000) != 0)
      {
        IOLog("ixgbe:%s(%d): %s\n", "ixgbe_identify_qsfp_module_generic", 1769, "QSFP module not supported\n");
      }
    }

LABEL_45:
    *(a1 + 1616) = 25;
    return 4294967277;
  }

LABEL_5:
  *(a1 + 1624) = 0xFFFE00000000;
  *(a1 + 1616) = 0;
  return 4294967276;
}

uint64_t ixgbe_get_supported_phy_sfp_layer_generic(uint64_t a1)
{
  v8 = 0;
  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixgbe:%s(%d): %s\n", "ixgbe_get_supported_phy_sfp_layer_generic", 1551, "ixgbe_get_supported_phy_sfp_layer_generic");
  }

  (*(a1 + 1424))(a1);
  if (*(a1 + 1628) == 65534)
  {
    return 0;
  }

  v2 = 0;
  v4 = *(a1 + 1616);
  if (v4 <= 18)
  {
    if (v4 <= 15)
    {
      if ((v4 - 13) >= 2)
      {
        if (v4 != 15)
        {
          return v2;
        }

        return 0x2000;
      }

      return 8;
    }

    if ((v4 - 16) < 2)
    {
LABEL_16:
      (*(a1 + 1544))(a1, 6, &v8);
      (*(a1 + 1544))(a1, 3, &v8 + 1);
      if ((v8 & 0x1000) != 0)
      {
        return 64;
      }

      if ((v8 & 0x2000) != 0)
      {
        return 16;
      }

      v5 = 2;
      v6 = (v8 & 1) << 14;
      v7 = (v8 & 8) == 0;
      goto LABEL_21;
    }

    if (v4 != 18)
    {
      return v2;
    }

    return 0x2000;
  }

  if (v4 <= 21)
  {
    if ((v4 - 19) >= 2)
    {
      if (v4 != 21)
      {
        return v2;
      }

      return 8;
    }

    goto LABEL_16;
  }

  if ((v4 - 23) >= 2)
  {
    if (v4 != 22)
    {
      return v2;
    }

    return 0x2000;
  }

  (*(a1 + 1544))(a1, 131, &v8 + 1);
  v5 = 64;
  v6 = (HIBYTE(v8) >> 1) & 0x10;
  v7 = (v8 & 0x1000) == 0;
LABEL_21:
  if (v7)
  {
    return v6;
  }

  else
  {
    return v5;
  }
}

uint64_t ixgbe_read_i2c_byte_generic_int(uint64_t a1, unsigned int a2, unsigned int a3, _BYTE *a4, int a5)
{
  v8 = *(a1 + 1644);
  *a4 = 0;
  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixgbe:%s(%d): %s\n", "ixgbe_read_i2c_byte_generic_int", 1974, "ixgbe_read_i2c_byte_generic");
  }

  if (*(a1 + 696) <= 5)
  {
    v9 = 10;
  }

  else
  {
    v9 = 3;
  }

  if (!a2 && a3 == 160 && *(a1 + 1628) == 65534)
  {
    v9 = 10;
  }

  v10 = v9 - 1;
  if (a5)
  {
LABEL_11:
    if (!(*(a1 + 200))(a1, v8))
    {
      goto LABEL_12;
    }

    return 4294967280;
  }

  else
  {
LABEL_12:
    while (1)
    {
      ixgbe_i2c_start(a1);
      i2c_ack = ixgbe_clock_out_i2c_byte(a1, a3);
      if (!i2c_ack)
      {
        i2c_ack = ixgbe_get_i2c_ack(a1);
        if (!i2c_ack)
        {
          i2c_ack = ixgbe_clock_out_i2c_byte(a1, a2);
          if (!i2c_ack)
          {
            i2c_ack = ixgbe_get_i2c_ack(a1);
            if (!i2c_ack)
            {
              ixgbe_i2c_start(a1);
              i2c_ack = ixgbe_clock_out_i2c_byte(a1, a3 | 1);
              if (!i2c_ack)
              {
                i2c_ack = ixgbe_get_i2c_ack(a1);
                if (!i2c_ack)
                {
                  ixgbe_clock_in_i2c_byte(a1, a4);
                  i2c_ack = ixgbe_clock_out_i2c_bit(a1, 1);
                  if (!i2c_ack)
                  {
                    break;
                  }
                }
              }
            }
          }
        }
      }

      v12 = i2c_ack;
      ixgbe_i2c_bus_clear(a1);
      if (a5)
      {
        (*(a1 + 208))(a1, v8);
        IODelay(0x186A0uLL);
      }

      if (!v10)
      {
        if ((pcindkll & 0x100000) != 0)
        {
          IOLog("ixgbe:%s(%d): %s\n", "ixgbe_read_i2c_byte_generic_int", 2038, "I2C byte read error.\n");
        }

        return v12;
      }

      if ((pcindkll & 0x100000) != 0)
      {
        IOLog("ixgbe:%s(%d): %s\n", "ixgbe_read_i2c_byte_generic_int", 2036, "I2C byte read error - Retrying.\n");
      }

      --v10;
      if (a5)
      {
        goto LABEL_11;
      }
    }

    ixgbe_i2c_stop(a1);
    if (a5)
    {
      (*(a1 + 208))(a1, v8);
    }

    return 0;
  }
}

uint64_t ixgbe_write_i2c_byte_generic_int(uint64_t a1, unsigned int a2, unsigned int a3, unsigned int a4, int a5)
{
  v10 = *(a1 + 1644);
  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixgbe:%s(%d): %s\n", "ixgbe_write_i2c_byte_generic_int", 2098, "ixgbe_write_i2c_byte_generic");
  }

  if (a5 && (*(a1 + 200))(a1, v10))
  {
    return 4294967280;
  }

  ixgbe_i2c_start(a1);
  v12 = ixgbe_clock_out_i2c_byte(a1, a3);
  if (v12 || (v12 = ixgbe_get_i2c_ack(a1), v12) || (v12 = ixgbe_clock_out_i2c_byte(a1, a2), v12) || (v12 = ixgbe_get_i2c_ack(a1), v12) || (v12 = ixgbe_clock_out_i2c_byte(a1, a4), v12))
  {
    i2c_ack = v12;
  }

  else
  {
    i2c_ack = ixgbe_get_i2c_ack(a1);
    if (!i2c_ack)
    {
      ixgbe_i2c_stop(a1);
      if ((a5 & 1) == 0)
      {
        return i2c_ack;
      }

      goto LABEL_15;
    }
  }

  ixgbe_i2c_bus_clear(a1);
  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixgbe:%s(%d): %s\n", "ixgbe_write_i2c_byte_generic_int", 2142, "I2C byte write error.\n");
  }

  if (a5)
  {
LABEL_15:
    (*(a1 + 208))(a1, v10);
  }

  return i2c_ack;
}

uint64_t ixgbe_set_i2c_data(uint64_t a1, uint32_t *a2, int a3)
{
  v6 = *(*(a1 + 1928) + 80);
  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixgbe:%s(%d): %s\n", "ixgbe_set_i2c_data", 2509, "ixgbe_set_i2c_data");
  }

  v7 = *(*(a1 + 1928) + 76);
  if (a3)
  {
    v8 = *a2 | v7;
  }

  else
  {
    v8 = *a2 & ~v7;
  }

  *a2 = v8 & ~v6;
  __dmb(2u);
  IOPCIDevice::MemoryWrite32(*a1, 0, *(*(a1 + 1928) + 92), *a2);
  readData = 0;
  IOPCIDevice::MemoryRead32(*a1, 0, 8uLL, &readData);
  __dmb(1u);
  IODelay(3uLL);
  if (!a3)
  {
    return 0;
  }

  if (v6)
  {
    *a2 |= v6;
    __dmb(2u);
    IOPCIDevice::MemoryWrite32(*a1, 0, *(*(a1 + 1928) + 92), *a2);
    v11 = 0;
    IOPCIDevice::MemoryRead32(*a1, 0, 8uLL, &v11);
    __dmb(1u);
  }

  v10 = 0;
  IOPCIDevice::MemoryRead32(*a1, 0, *(*(a1 + 1928) + 92), &v10);
  __dmb(1u);
  *a2 = v10;
  if (ixgbe_get_i2c_data(a1, a2))
  {
    return 0;
  }

  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixgbe:%s(%d): Error - I2C data was not set to %X.\n\n", "ixgbe_set_i2c_data", 2537, 1);
  }

  return 4294967278;
}

void ixgbe_raise_i2c_clk(uint64_t a1, uint32_t *a2)
{
  v4 = *(*(a1 + 1928) + 88);
  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixgbe:%s(%d): %s\n", "ixgbe_raise_i2c_clk", 2452, "ixgbe_raise_i2c_clk");
  }

  if (v4)
  {
    *a2 |= v4;
    __dmb(2u);
    IOPCIDevice::MemoryWrite32(*a1, 0, *(*(a1 + 1928) + 92), *a2);
  }

  v5 = *(a1 + 1928);
  v6 = 499;
  do
  {
    *a2 |= *(v5 + 68);
    __dmb(2u);
    IOPCIDevice::MemoryWrite32(*a1, 0, *(*(a1 + 1928) + 92), *a2);
    readData = 0;
    IOPCIDevice::MemoryRead32(*a1, 0, 8uLL, &readData);
    __dmb(1u);
    IODelay(1uLL);
    v8 = 0;
    IOPCIDevice::MemoryRead32(*a1, 0, *(*(a1 + 1928) + 92), &v8);
    __dmb(1u);
    v5 = *(a1 + 1928);
  }

  while ((*(v5 + 64) & v8) == 0 && v6-- != 0);
}

void ixgbe_lower_i2c_clk(uint64_t a1, uint32_t *a2)
{
  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixgbe:%s(%d): %s\n", "ixgbe_lower_i2c_clk", 2483, "ixgbe_lower_i2c_clk");
  }

  v4 = *(a1 + 1928);
  v5 = *a2 & ~*(v4 + 68);
  *a2 = v5;
  *a2 = v5 & ~*(v4 + 88);
  __dmb(2u);
  IOPCIDevice::MemoryWrite32(*a1, 0, *(*(a1 + 1928) + 92), *a2);
  readData = 0;
  IOPCIDevice::MemoryRead32(*a1, 0, 8uLL, &readData);
  __dmb(1u);
  IODelay(1uLL);
}

uint64_t ixgbe_set_copper_phy_power(uint64_t a1, char a2)
{
  v5 = 0;
  if ((a2 & 1) == 0)
  {
    if ((ixgbe_mng_present(a1) & 1) == 0)
    {
      result = (*(a1 + 1448))(a1, 0, 30, &v5);
      if (result)
      {
        return result;
      }

      if (!ixgbe_check_reset_blocked(a1))
      {
        v4 = v5 | 0x800;
        goto LABEL_4;
      }
    }

    return 0;
  }

  result = (*(a1 + 1448))(a1, 0, 30, &v5);
  if (!result)
  {
    v4 = v5 & 0xF7FF;
LABEL_4:
    v5 = v4;
    return (*(a1 + 1456))(a1, 0, 30, v4);
  }

  return result;
}

uint64_t ixgbe_clock_out_i2c_byte(uint64_t a1, unsigned int a2)
{
  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixgbe:%s(%d): %s\n", "ixgbe_clock_out_i2c_byte", 2293, "ixgbe_clock_out_i2c_byte");
  }

  v4 = 7;
  do
  {
    v5 = ixgbe_clock_out_i2c_bit(a1, (a2 >> v4) & 1);
    if (v5)
    {
      v6 = 1;
    }

    else
    {
      v6 = v4 == 0;
    }

    --v4;
  }

  while (!v6);
  v7 = v5;
  readData = 0;
  IOPCIDevice::MemoryRead32(*a1, 0, *(*(a1 + 1928) + 92), &readData);
  __dmb(1u);
  v8 = *(a1 + 1928);
  v9 = *(v8 + 76);
  LODWORD(v8) = *(v8 + 80);
  v10 = v9 | readData;
  __dmb(2u);
  IOPCIDevice::MemoryWrite32(*a1, 0, *(*(a1 + 1928) + 92), v10 | v8);
  v12 = 0;
  IOPCIDevice::MemoryRead32(*a1, 0, 8uLL, &v12);
  __dmb(1u);
  return v7;
}

uint64_t ixgbe_get_i2c_ack(uint64_t a1)
{
  v2 = *(a1 + 1928);
  v3 = *(v2 + 80);
  readData = 0;
  IOPCIDevice::MemoryRead32(*a1, 0, *(v2 + 92), &readData);
  __dmb(1u);
  v4 = readData;
  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixgbe:%s(%d): %s\n", "ixgbe_get_i2c_ack", 2328, "ixgbe_get_i2c_ack");
  }

  if (v3)
  {
    v5 = v3 | *(*(a1 + 1928) + 76) | v4;
    readData = v5;
    __dmb(2u);
    IOPCIDevice::MemoryWrite32(*a1, 0, *(*(a1 + 1928) + 92), v5);
    v10 = 0;
    IOPCIDevice::MemoryRead32(*a1, 0, 8uLL, &v10);
    __dmb(1u);
  }

  ixgbe_raise_i2c_clk(a1, &readData);
  IODelay(4uLL);
  v6 = 10;
  do
  {
    v10 = 0;
    IOPCIDevice::MemoryRead32(*a1, 0, *(*(a1 + 1928) + 92), &v10);
    __dmb(1u);
    readData = v10;
    i2c_data = ixgbe_get_i2c_data(a1, &readData);
    IODelay(1uLL);
    if (!i2c_data)
    {
      v8 = 0;
      goto LABEL_12;
    }

    --v6;
  }

  while (v6);
  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixgbe:%s(%d): %s\n", "ixgbe_get_i2c_ack", 2353, "I2C ack was not received.\n");
  }

  v8 = 4294967278;
LABEL_12:
  ixgbe_lower_i2c_clk(a1, &readData);
  IODelay(5uLL);
  return v8;
}

BOOL ixgbe_get_i2c_data(uint64_t a1, uint32_t *a2)
{
  v4 = *(*(a1 + 1928) + 80);
  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixgbe:%s(%d): %s\n", "ixgbe_get_i2c_data", 2557, "ixgbe_get_i2c_data");
  }

  if (v4)
  {
    *a2 |= v4;
    __dmb(2u);
    IOPCIDevice::MemoryWrite32(*a1, 0, *(*(a1 + 1928) + 92), *a2);
    readData = 0;
    IOPCIDevice::MemoryRead32(*a1, 0, 8uLL, &readData);
    __dmb(1u);
    IODelay(1uLL);
  }

  return (*(*(a1 + 1928) + 72) & *a2) != 0;
}

void DriverKit_AppleEthernetIXGBE_IVars::otherIntrHandler(IOPCIDevice **this)
{
  if (*(this + 2748) == 1)
  {
    v11 = v1;
    v12 = v2;
    readData = 0;
    IOPCIDevice::MemoryRead32(*this, 0, 0x808uLL, &readData);
    __dmb(1u);
    v4 = readData;
    v5 = readData & 0xFFFF0000;
    __dmb(2u);
    IOPCIDevice::MemoryWrite32(*this, 0, 0x800uLL, v5);
    if ((pcindkll & 0x10) != 0)
    {
      DriverKit_AppleEthernetIXGBE_IVars::otherIntrHandler(v5);
      if ((v4 & 0x100000) == 0)
      {
LABEL_5:
        v6 = *(this + 174);
        if (v6 != 1)
        {
          if ((v4 & 0x10000000) != 0)
          {
            if ((pcindkll & 0x10) != 0)
            {
              DriverKit_AppleEthernetIXGBE_IVars::otherIntrHandler();
            }

            __dmb(2u);
            IOPCIDevice::MemoryWrite32(*this, 0, 0x800uLL, 0x10000000u);
            *(this + 693) |= 0x80u;
            v6 = *(this + 174);
          }

          if (v6 == 8)
          {
            if ((v4 & 0x2000000) != 0)
            {
              __dmb(2u);
              IOPCIDevice::MemoryWrite32(*this, 0, 0x888uLL, 0x2000000u);
              __dmb(2u);
              IOPCIDevice::MemoryWrite32(*this, 0, 0x800uLL, 0x2000000u);
              if ((this[196])(this) == -26 && (pcindkll & 0x10) != 0)
              {
                DriverKit_AppleEthernetIXGBE_IVars::otherIntrHandler();
              }
            }
          }

          else if ((v4 & 0x800000) != 0 && (this[196])(this) == -26)
          {
            if ((pcindkll & 0x10) != 0)
            {
              DriverKit_AppleEthernetIXGBE_IVars::otherIntrHandler();
            }

            __dmb(2u);
            IOPCIDevice::MemoryWrite32(*this, 0, 0x800uLL, 0x800000u);
          }

          v7 = *(this + 174);
          if ((v7 - 7) < 2)
          {
            if ((this[7])(this) != 1)
            {
              goto LABEL_37;
            }

LABEL_29:
            v8 = *(this + 174);
            if (v8 <= 3)
            {
              lvars_high = HIDWORD(this[241]->lvars);
            }

            else
            {
              lvars_high = 0x2000000;
            }

            if ((lvars_high & v5) != 0)
            {
              __dmb(2u);
              IOPCIDevice::MemoryWrite32(*this, 0, 0x800uLL, lvars_high);
              *(this + 693) |= 1u;
              v8 = *(this + 174);
            }

            if (v8 == 2 && (this[241]->ivars & v5) != 0)
            {
              __dmb(2u);
              IOPCIDevice::MemoryWrite32(*this, 0, 0x800uLL, this[241]->ivars);
              *(this + 693) |= 2u;
            }

LABEL_37:
            if (*(this + 404) == 7 && (v4 & 0x2000000) != 0)
            {
              __dmb(2u);
              IOPCIDevice::MemoryWrite32(*this, 0, 0x800uLL, 0x2000000u);
              *(this + 693) |= 0x10u;
            }

            else if (!*(this + 693))
            {
LABEL_42:
              DriverKit_AppleEthernetIXGBE_IVars::enableIntrs(this, 1, 0);
              return;
            }

            DriverKit_AppleEthernetIXGBE_IVars::updateAdminStatus(this);
            goto LABEL_42;
          }

          if (v7 == 2)
          {
            if ((((this[7])(this) - 1) & 0xFFFFFFFD) != 0)
            {
              goto LABEL_37;
            }

            goto LABEL_29;
          }

          if (v7 != 1)
          {
            goto LABEL_37;
          }
        }

        if (*(this + 404) != 12)
        {
          goto LABEL_37;
        }

        goto LABEL_29;
      }
    }

    else if ((v4 & 0x100000) == 0)
    {
      goto LABEL_5;
    }

    __dmb(2u);
    IOPCIDevice::MemoryWrite32(*this, 0, 0x888uLL, 0x100000u);
    *(this + 693) |= 0x20u;
    goto LABEL_5;
  }
}

void DriverKit_AppleEthernetIXGBE_IVars::queueIntrHandler(IODataQueueDispatchSource **this)
{
  if (*(this + 2748) == 1)
  {
    v3 = 0;
    __dmb(1u);
    do
    {
      v4 = v3;
      v5 = DriverKit_AppleEthernetIXGBE_IVars::txComplete(this, 0);
      v6 = DriverKit_AppleEthernetIXGBE_IVars::rxSync(this, 0);
      v3 = HIWORD(v6);
      if (!v6)
      {
        v3 = v4;
      }
    }

    while (v6 | v5);
    if (v4)
    {
      IODataQueueDispatchSource::SendDataAvailable(this[340]);
    }

    DriverKit_AppleEthernetIXGBE_IVars::enableQueues(this, 0xFFFFFFFFFFFFFFFFLL);
  }
}

void OUTLINED_FUNCTION_3_0(void *a1, os_log_s *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_impl(a1, a2, OS_LOG_TYPE_DEFAULT, a4, &a9, 0x18u);
}

uint64_t DriverKit_AppleEthernetIXGBE_IVars::txComplete(DriverKit_AppleEthernetIXGBE_IVars *this, unsigned int a2)
{
  v2 = this + 352 * a2;
  v3 = *(v2 + 542);
  if (v3 == atomic_load_explicit((v2 + 2172), memory_order_acquire))
  {
    return 0;
  }

  v4 = v2 + 2040;
  v5 = *(*(v2 + 288) + 4096);
  if (v3 == v5)
  {
    return 0;
  }

  v6 = 0;
  do
  {
    v8 = *(*(v4 + 38) + 8 * v3);
    if (v8)
    {
      v9 = *(v4 + 41);
      LODWORD(v6) = v6 + 1;
      sendDataAvailable = 0;
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 0x40000000;
      v10[2] = ___ZN6pcindk15enqueueTxPacketEP25IODataQueueDispatchSourceP24IOUserNetworkPacketStateRj_block_invoke;
      v10[3] = &__block_descriptor_tmp_0;
      v10[4] = v8;
      if (IODataQueueDispatchSource::EnqueueWithCoalesce(v9, 0x68u, &sendDataAvailable, v10))
      {
        IODataQueueDispatchSource::SendDataAvailable(v9);
        v6 = v6;
      }

      else
      {
        v6 = v6 | 0x10000;
      }
    }

    v3 = (v3 + 1);
  }

  while (v3 != v5);
  *(v4 + 32) = v5;
  if (v6 >= 0x10000)
  {
    IODataQueueDispatchSource::SendDataAvailable(*(v4 + 41));
  }

  return v6;
}

void DriverKit_AppleEthernetIXGBE_IVars::txSubmit(IOPCIDevice **this, unsigned int a2)
{
  v2 = &this[44 * a2];
  v3 = *(v2 + 543);
  memset(v18, 0, 512);
  v4 = *(v2 + 542);
  if (v4 + ~v3)
  {
    v7 = (v2 + 255);
    v8 = (v2[297]->IOService::OSObject::OSMetaClassBase::__vftable[1].free)(v2[297], v18, (v4 + ~v3));
    if (v8)
    {
      v9 = v8 - 1;
      v10 = v18;
      v11 = v8;
      do
      {
        v12 = *v10++;
        v13 = *(v12 + 48);
        *(*(v7 + 38) + 8 * v3) = v13 + 8;
        v14 = *(v13 + 72);
        v15 = *(v13 + 24) + *(v13 + 76);
        if (v9)
        {
          v16 = 590348288;
        }

        else
        {
          v16 = 724566016;
        }

        v17 = *(v7 + 33) + 16 * v3;
        *v17 = v15;
        *(v17 + 8) = v14 | v16;
        *(v17 + 12) = v14 << 14;
        v3 = (v3 + 1);
        --v9;
        --v11;
      }

      while (v11);
      atomic_store(v3, v7 + 33);
      __dmb(2u);
      IOPCIDevice::MemoryWrite32(*this, 0, (a2 << 6) + 24600, v3);
    }
  }
}

uint64_t ixgbe_dcb_get_tc_stats_82599(IOPCIDevice **a1, uint64_t a2, unsigned int a3)
{
  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixgbe:%s(%d): %s\n", "ixgbe_dcb_get_tc_stats_82599", 19, "dcb_get_tc_stats");
  }

  if (a3 > 8)
  {
    return 4294967291;
  }

  if (a3)
  {
    v7 = 0;
    v8 = (a2 + 728);
    v9 = a3 << 6;
    v10 = 34564;
    do
    {
      readData = 0;
      IOPCIDevice::MemoryRead32(*a1, 0, v7 + 24624, &readData);
      __dmb(1u);
      v8[16] += readData;
      readData = 0;
      IOPCIDevice::MemoryRead32(*a1, 0, v10 - 4, &readData);
      __dmb(1u);
      v8[48] += readData;
      readData = 0;
      IOPCIDevice::MemoryRead32(*a1, 0, v10, &readData);
      __dmb(1u);
      v8[48] += readData << 32;
      readData = 0;
      IOPCIDevice::MemoryRead32(*a1, 0, v7 + 4144, &readData);
      __dmb(1u);
      *v8 += readData;
      readData = 0;
      IOPCIDevice::MemoryRead32(*a1, 0, v7 + 4148, &readData);
      __dmb(1u);
      v8[32] += readData;
      readData = 0;
      IOPCIDevice::MemoryRead32(*a1, 0, v7 + 4152, &readData);
      __dmb(1u);
      v8[32] += readData << 32;
      readData = 0;
      IOPCIDevice::MemoryRead32(*a1, 0, v7 + 5168, &readData);
      __dmb(1u);
      v8[64] += readData;
      v7 += 64;
      v10 += 8;
      ++v8;
    }

    while (v9 != v7);
  }

  return 0;
}

uint64_t ixgbe_dcb_get_pfc_stats_82599(IOPCIDevice **a1, uint64_t a2, unsigned int a3)
{
  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixgbe:%s(%d): %s\n", "ixgbe_dcb_get_pfc_stats_82599", 60, "dcb_get_pfc_stats");
  }

  if (a3 > 8)
  {
    return 4294967291;
  }

  if (a3)
  {
    v7 = (a2 + 352);
    v8 = a3;
    v9 = 16160;
    do
    {
      readData = 0;
      IOPCIDevice::MemoryRead32(*a1, 0, v9, &readData);
      __dmb(1u);
      *(v7 - 8) += readData;
      v10 = 0;
      IOPCIDevice::MemoryRead32(*a1, 0, v9 + 576, &v10);
      __dmb(1u);
      *v7++ += v10;
      v9 += 4;
      --v8;
    }

    while (v8);
  }

  return 0;
}