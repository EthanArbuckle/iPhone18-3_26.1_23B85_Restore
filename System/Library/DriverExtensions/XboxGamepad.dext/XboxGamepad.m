BOOL XboxUSBDevice::init(IOService *this)
{
  v2 = IOService::init(this);
  if (v2)
  {
    if (!this->ivars)
    {
      XboxUSBDevice::init();
    }

    this[1].OSObject::OSMetaClassBase::__vftable = IOMallocZeroTyped();
  }

  return v2;
}

void XboxUSBDevice::free(IOService *this)
{
  this[1].getMetaClass = 0;
  v2 = this[1].OSObject::OSMetaClassBase::__vftable;
  if (v2)
  {
    IOFree(v2, 8uLL);
    this[1].OSObject::OSMetaClassBase::__vftable = 0;
  }

  IOService::free(this);
}

uint64_t ___ZN13XboxUSBDevice10Start_ImplEP9IOService_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  registryEntryID = 0;
  IOService::GetRegistryEntryID(v1, &registryEntryID, 0);
  return registryEntryID;
}

uint64_t ___ZN13XboxUSBDevice10Start_ImplEP9IOService_block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 32);
  registryEntryID = 0;
  IOService::GetRegistryEntryID(v1, &registryEntryID, 0);
  return registryEntryID;
}

uint64_t ___ZN13XboxUSBDevice10Start_ImplEP9IOService_block_invoke_5(uint64_t a1)
{
  v1 = *(a1 + 32);
  registryEntryID = 0;
  IOService::GetRegistryEntryID(v1, &registryEntryID, 0);
  return registryEntryID;
}

uint64_t ___ZN13XboxUSBDevice10Start_ImplEP9IOService_block_invoke_7(uint64_t a1)
{
  v1 = *(a1 + 32);
  registryEntryID = 0;
  IOService::GetRegistryEntryID(v1, &registryEntryID, 0);
  return registryEntryID;
}

uint64_t ___ZN13XboxUSBDevice10Start_ImplEP9IOService_block_invoke_9(uint64_t a1)
{
  v1 = *(a1 + 32);
  registryEntryID = 0;
  IOService::GetRegistryEntryID(v1, &registryEntryID, 0);
  return registryEntryID;
}

uint64_t ___ZN13XboxUSBDevice10Start_ImplEP9IOService_block_invoke_21(uint64_t a1)
{
  v1 = *(a1 + 32);
  registryEntryID = 0;
  IOService::GetRegistryEntryID(v1, &registryEntryID, 0);
  return registryEntryID;
}

uint64_t ___ZN13XboxUSBDevice10Start_ImplEP9IOService_block_invoke_23(uint64_t a1)
{
  v1 = *(a1 + 32);
  registryEntryID = 0;
  IOService::GetRegistryEntryID(v1, &registryEntryID, 0);
  return registryEntryID;
}

uint64_t ___ZN13XboxUSBDevice10Start_ImplEP9IOService_block_invoke_25(uint64_t a1)
{
  v1 = *(a1 + 32);
  registryEntryID = 0;
  IOService::GetRegistryEntryID(v1, &registryEntryID, 0);
  return registryEntryID;
}

uint64_t XboxUSBDevice::Stop_Impl(IOService *this, IOService *a2)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    ClassName = OSMetaClassBase::GetClassName(this);
    *registryEntryID = 0;
    IOService::GetRegistryEntryID(this, registryEntryID, 0);
    v5 = *registryEntryID;
    *registryEntryID = 136315394;
    *&registryEntryID[4] = ClassName;
    v12 = 2048;
    v13 = v5;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[%s 0x%llx] Stop\n", registryEntryID, 0x16u);
  }

  getMetaClass = this[1].getMetaClass;
  if (getMetaClass)
  {
    v7 = IOUSBHostDevice::Close(getMetaClass, this, 0, 0);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v8 = OSMetaClassBase::GetClassName(this);
      *registryEntryID = 0;
      IOService::GetRegistryEntryID(this, registryEntryID, 0);
      v9 = *registryEntryID;
      *registryEntryID = 136315650;
      *&registryEntryID[4] = v8;
      v12 = 2048;
      v13 = v9;
      v14 = 1024;
      v15 = v7;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[%s 0x%llx] Close provider interface: %{mach.errno}d\n", registryEntryID, 0x1Cu);
    }
  }

  return IOService::Stop(this, a2, &IOService::_Dispatch);
}

uint64_t ___ZN13XboxUSBDevice9Stop_ImplEP9IOService_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  registryEntryID = 0;
  IOService::GetRegistryEntryID(v1, &registryEntryID, 0);
  return registryEntryID;
}

uint64_t ___ZN13XboxUSBDevice9Stop_ImplEP9IOService_block_invoke_28(uint64_t a1)
{
  v1 = *(a1 + 32);
  registryEntryID = 0;
  IOService::GetRegistryEntryID(v1, &registryEntryID, 0);
  return registryEntryID;
}

void OUTLINED_FUNCTION_0(uint64_t a1@<X8>, float a2@<S0>)
{
  *(v4 - 144) = a2;
  *(v3 + 4) = v2;
  *(v4 - 132) = 2048;
  *(v3 + 14) = a1;
}

uint64_t OUTLINED_FUNCTION_1()
{
  *(v1 - 144) = 0;

  return IOService::GetRegistryEntryID(v0, (v1 - 144), 0);
}

uint64_t *OUTLINED_FUNCTION_4@<X0>(uint64_t **a1@<X8>)
{
  result = *a1;
  v2 = **a1;
  return result;
}

BOOL XboxHIDDevice::init(IOService *this)
{
  v2 = IOService::init(this);
  if (v2)
  {
    if (!this->ivars)
    {
      XboxHIDDevice::init();
    }

    this[1].ivars = IOMallocZeroTyped();
  }

  return v2;
}

void XboxHIDDevice::free(IOService *this)
{
  ivars = this[1].ivars;
  v3 = *(ivars + 19);
  if (v3)
  {
    (*(*v3 + 16))(v3);
    *(this[1].ivars + 19) = 0;
    ivars = this[1].ivars;
  }

  v4 = *(ivars + 20);
  if (v4)
  {
    (*(*v4 + 16))(v4);
    *(this[1].ivars + 20) = 0;
    ivars = this[1].ivars;
  }

  v5 = *(ivars + 18);
  if (v5)
  {
    (*(*v5 + 16))(v5);
    *(this[1].ivars + 18) = 0;
    ivars = this[1].ivars;
  }

  v6 = *(ivars + 17);
  if (v6)
  {
    (*(*v6 + 16))(v6);
    *(this[1].ivars + 17) = 0;
    ivars = this[1].ivars;
  }

  v7 = *(ivars + 16);
  if (v7)
  {
    (*(*v7 + 16))(v7);
    *(this[1].ivars + 16) = 0;
    ivars = this[1].ivars;
  }

  v8 = *(ivars + 14);
  if (v8)
  {
    (*(*v8 + 16))(v8);
    *(this[1].ivars + 14) = 0;
    ivars = this[1].ivars;
  }

  *(ivars + 13) = 0;
  v9 = this[1].ivars;
  v10 = *(v9 + 12);
  if (v10)
  {
    (*(*v10 + 16))(v10);
    *(this[1].ivars + 12) = 0;
    v9 = this[1].ivars;
  }

  v11 = *(v9 + 6);
  if (v11)
  {
    (*(*v11 + 16))(v11);
    *(this[1].ivars + 6) = 0;
    v9 = this[1].ivars;
  }

  *(v9 + 5) = 0;
  v12 = this[1].ivars;
  v13 = *(v12 + 2);
  if (v13)
  {
    IOUSBHostFreeDescriptor(v13);
    *(this[1].ivars + 2) = 0;
    v12 = this[1].ivars;
  }

  *(v12 + 3) = 0;
  v14 = this[1].ivars;
  if (*(v14 + 2))
  {
    IOUSBHostFreeDescriptor(*(v14 + 2));
    *(this[1].ivars + 2) = 0;
    v14 = this[1].ivars;
  }

  if (*v14)
  {
    (*(**v14 + 16))(*v14);
    *this[1].ivars = 0;
    v14 = this[1].ivars;
  }

  v15 = *(v14 + 1);
  if (!v15 || ((*(*v15 + 16))(*(v14 + 1)), *(this[1].ivars + 1) = 0, (v14 = this[1].ivars) != 0))
  {
    IOFree(v14, 0xB0uLL);
    this[1].ivars = 0;
  }

  IOService::free(this);
}

uint64_t XboxHIDDevice::Start_Impl(XboxHIDDevice *this, IOService *a2)
{
  properties = 0;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    ClassName = OSMetaClassBase::GetClassName(this);
    v103 = _NSConcreteStackBlock;
    v104 = 0x40000000;
    v105 = ___ZN13XboxHIDDevice10Start_ImplEP9IOService_block_invoke;
    v106 = &__block_descriptor_tmp_0;
    v107 = this;
    *registryEntryID = 0;
    IOService::GetRegistryEntryID(this, registryEntryID, 0);
    v5 = *registryEntryID;
    *registryEntryID = 136315394;
    *&registryEntryID[4] = ClassName;
    v110 = 2048;
    v111 = v5;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[%s 0x%llx] Start\n", registryEntryID, 0x16u);
  }

  v6 = OSObject::CopyDispatchQueue(this, "Default", (*(this + 11) + 144), 0);
  if (v6)
  {
    v37 = v6;
    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_33;
    }

    v39 = OSMetaClassBase::GetClassName(this);
    v98 = _NSConcreteStackBlock;
    v99 = 0x40000000;
    v100 = ___ZN13XboxHIDDevice10Start_ImplEP9IOService_block_invoke_4;
    v101 = &__block_descriptor_tmp_5;
    v102 = this;
    *registryEntryID = 0;
    IOService::GetRegistryEntryID(this, registryEntryID, 0);
    v40 = *registryEntryID;
    *registryEntryID = 136315650;
    *&registryEntryID[4] = v39;
    v110 = 2048;
    v111 = v40;
    v112 = 1024;
    v113 = v37;
    v41 = "[%s 0x%llx] Failed to obtain 'Default' queue. CopyDispatchQueue() returned %{mach.errno}x\n";
LABEL_62:
    v64 = 28;
LABEL_66:
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v41, registryEntryID, v64);
    goto LABEL_33;
  }

  *(*(this + 11) + 8) = OSMetaClassBase::safeMetaCast(a2, gIOUSBHostInterfaceMetaClass);
  v7 = *(*(this + 11) + 8);
  if (!v7)
  {
    v37 = 3758097084;
    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_33;
    }

    v42 = OSMetaClassBase::GetClassName(this);
    v93 = _NSConcreteStackBlock;
    v94 = 0x40000000;
    v95 = ___ZN13XboxHIDDevice10Start_ImplEP9IOService_block_invoke_6;
    v96 = &__block_descriptor_tmp_7;
    v97 = this;
    *registryEntryID = 0;
    IOService::GetRegistryEntryID(this, registryEntryID, 0);
    v43 = *registryEntryID;
    *registryEntryID = 136315394;
    *&registryEntryID[4] = v42;
    v110 = 2048;
    v111 = v43;
    v41 = "[%s 0x%llx] Provider is not a 'IOUSBHostInterface'.\n";
LABEL_65:
    v64 = 22;
    goto LABEL_66;
  }

  (*(*v7 + 8))(v7);
  v8 = IOUSBHostInterface::CopyDevice(*(*(this + 11) + 8), *(this + 11), 0);
  if (v8)
  {
    v37 = v8;
    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_33;
    }

    v44 = OSMetaClassBase::GetClassName(this);
    v88 = _NSConcreteStackBlock;
    v89 = 0x40000000;
    v90 = ___ZN13XboxHIDDevice10Start_ImplEP9IOService_block_invoke_8;
    v91 = &__block_descriptor_tmp_9;
    v92 = this;
    *registryEntryID = 0;
    IOService::GetRegistryEntryID(this, registryEntryID, 0);
    v45 = *registryEntryID;
    *registryEntryID = 136315650;
    *&registryEntryID[4] = v44;
    v110 = 2048;
    v111 = v45;
    v112 = 1024;
    v113 = v37;
    v41 = "[%s 0x%llx] Failed to obtain USBHostDevice.  CopyDevice() returned %x\n";
    goto LABEL_62;
  }

  *(*(this + 11) + 16) = (*(***(this + 11) + 64))(**(this + 11));
  v9 = *(this + 11);
  if (!*(v9 + 16))
  {
    v37 = 3758097086;
    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_33;
    }

    v46 = OSMetaClassBase::GetClassName(this);
    v83 = _NSConcreteStackBlock;
    v84 = 0x40000000;
    v85 = ___ZN13XboxHIDDevice10Start_ImplEP9IOService_block_invoke_10;
    v86 = &__block_descriptor_tmp_11;
    v87 = this;
    *registryEntryID = 0;
    IOService::GetRegistryEntryID(this, registryEntryID, 0);
    v47 = *registryEntryID;
    *registryEntryID = 136315394;
    *&registryEntryID[4] = v46;
    v110 = 2048;
    v111 = v47;
    v41 = "[%s 0x%llx] Failed to obtain USB device descriptor.\n";
    goto LABEL_65;
  }

  *(*(this + 11) + 24) = (*(**(v9 + 8) + 56))(*(v9 + 8));
  v10 = *(this + 11);
  if (!*(v10 + 24))
  {
    v37 = 3758097086;
    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_33;
    }

    v48 = OSMetaClassBase::GetClassName(this);
    v78 = _NSConcreteStackBlock;
    v79 = 0x40000000;
    v80 = ___ZN13XboxHIDDevice10Start_ImplEP9IOService_block_invoke_12;
    v81 = &__block_descriptor_tmp_13;
    v82 = this;
    *registryEntryID = 0;
    IOService::GetRegistryEntryID(this, registryEntryID, 0);
    v49 = *registryEntryID;
    *registryEntryID = 136315394;
    *&registryEntryID[4] = v48;
    v110 = 2048;
    v111 = v49;
    v41 = "[%s 0x%llx] Failed to obtain the current USB configuration descriptor.\n";
    goto LABEL_65;
  }

  *(*(this + 11) + 32) = (*(**(v10 + 8) + 64))(*(v10 + 8));
  if (!*(*(this + 11) + 32))
  {
    v37 = 3758097086;
    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_33;
    }

    v50 = OSMetaClassBase::GetClassName(this);
    v73 = _NSConcreteStackBlock;
    v74 = 0x40000000;
    v75 = ___ZN13XboxHIDDevice10Start_ImplEP9IOService_block_invoke_14;
    v76 = &__block_descriptor_tmp_15;
    v77 = this;
    *registryEntryID = 0;
    IOService::GetRegistryEntryID(this, registryEntryID, 0);
    v51 = *registryEntryID;
    *registryEntryID = 136315394;
    *&registryEntryID[4] = v50;
    v110 = 2048;
    v111 = v51;
    v41 = "[%s 0x%llx] Failed to obtain the USB interface descriptor.\n";
    goto LABEL_65;
  }

  v11 = IOService::Start(this, a2, &IOUserHIDDevice::_Dispatch);
  if (v11)
  {
    v37 = v11;
    goto LABEL_33;
  }

  v12 = IOService::CopyProperties(this, &properties, &IOUserHIDDevice::_Dispatch);
  if (v12)
  {
    v37 = v12;
    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_33;
    }

    v52 = OSMetaClassBase::GetClassName(this);
    v68 = _NSConcreteStackBlock;
    v69 = 0x40000000;
    v70 = ___ZN13XboxHIDDevice10Start_ImplEP9IOService_block_invoke_16;
    v71 = &__block_descriptor_tmp_17;
    v72 = this;
    *registryEntryID = 0;
    IOService::GetRegistryEntryID(this, registryEntryID, 0);
    v53 = *registryEntryID;
    *registryEntryID = 136315650;
    *&registryEntryID[4] = v52;
    v110 = 2048;
    v111 = v53;
    v112 = 1024;
    v113 = v37;
    v41 = "[%s 0x%llx] Failed to obtain HIDDevice properties. CopyProperties() returned %{mach.errno}x\n";
    goto LABEL_62;
  }

  speed = 0;
  v13 = IOUSBHostPipe::GetSpeed(*(*(this + 11) + 48), &speed, 0);
  if (v13)
  {
    v37 = v13;
    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_33;
    }

    v54 = OSMetaClassBase::GetClassName(this);
    *registryEntryID = 0;
    IOService::GetRegistryEntryID(this, registryEntryID, 0);
    v55 = *registryEntryID;
    *registryEntryID = 136315650;
    *&registryEntryID[4] = v54;
    v110 = 2048;
    v111 = v55;
    v112 = 1024;
    v113 = v37;
    v41 = "[%s 0x%llx] Failed to get inPipe speed. GetSpeed() returned %{mach.errno}x\n";
    goto LABEL_62;
  }

  *(*(this + 11) + 80) = IOUSBGetEndpointIntervalMicroframes(speed, *(*(this + 11) + 40));
  *(*(this + 11) + 84) = 125 * *(*(this + 11) + 80);
  *(*(this + 11) + 56) = IOUSBGetEndpointMaxPacketSize(speed, *(*(this + 11) + 40));
  v14 = (*(*this + 120))(this);
  if (v14)
  {
    v15 = v14;
    v16 = OSNumber::unsigned64BitValue(v14);
    (v15->release)(v15);
    if (v16)
    {
      v17 = *(this + 11);
      v18 = *(v17 + 56);
      goto LABEL_17;
    }
  }

  v17 = *(this + 11);
  v18 = *(v17 + 56);
  if (!v18)
  {
    v37 = 3758097084;
    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_33;
    }

    v56 = OSMetaClassBase::GetClassName(this);
    *registryEntryID = 0;
    IOService::GetRegistryEntryID(this, registryEntryID, 0);
    v57 = *registryEntryID;
    *registryEntryID = 136315394;
    *&registryEntryID[4] = v56;
    v110 = 2048;
    v111 = v57;
    v41 = "[%s 0x%llx] Invalid inboundMaxTransferSize.\n";
    goto LABEL_65;
  }

  v16 = *(v17 + 56);
LABEL_17:
  *(v17 + 72) = (v16 + (v18 - 1)) / v18 * v18;
  if ((*(*(this + 11) + 80) - 1) > 6)
  {
    v19 = 1;
  }

  else
  {
    v19 = 8u / *(*(this + 11) + 80);
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v20 = OSMetaClassBase::GetClassName(this);
    *registryEntryID = 0;
    IOService::GetRegistryEntryID(this, registryEntryID, 0);
    v21 = *registryEntryID;
    v22 = *(this + 11);
    v23 = *(v22 + 48) != 0;
    v24 = *(v22 + 56);
    v25 = *(v22 + 72);
    v26 = *(v22 + 80);
    LODWORD(v22) = *(v22 + 84);
    *registryEntryID = 136317186;
    *&registryEntryID[4] = v20;
    v110 = 2048;
    v111 = v21;
    v112 = 1024;
    v113 = v23;
    v114 = 1024;
    v115 = v16;
    v116 = 1024;
    v117 = v24;
    v118 = 1024;
    v119 = v25;
    v120 = 1024;
    v121 = v26;
    v122 = 1024;
    v123 = v22;
    v124 = 1024;
    v125 = v19;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[%s 0x%llx] inPipe:%d inboundMaxTransferSize:%d inMaxPacketSize:%d inBufferSize:%d endpointIntervalMicroframes:%d(%d us) numInBuffs:%d\n", registryEntryID, 0x40u);
  }

  *(*(this + 11) + 96) = OSArray::withCapacity(v19);
  if (!*(*(this + 11) + 96))
  {
    v37 = 3758097085;
    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_33;
    }

    v58 = OSMetaClassBase::GetClassName(this);
    *registryEntryID = 0;
    IOService::GetRegistryEntryID(this, registryEntryID, 0);
    v59 = *registryEntryID;
    *registryEntryID = 136315394;
    *&registryEntryID[4] = v58;
    v110 = 2048;
    v111 = v59;
    v41 = "[%s 0x%llx] inputRequestActions\n";
    goto LABEL_65;
  }

  v27 = (*(*this + 136))(this);
  if (v27)
  {
    v37 = v27;
    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_33;
    }

    v60 = OSMetaClassBase::GetClassName(this);
    *registryEntryID = 0;
    IOService::GetRegistryEntryID(this, registryEntryID, 0);
    v61 = *registryEntryID;
    *registryEntryID = 136315650;
    *&registryEntryID[4] = v60;
    v110 = 2048;
    v111 = v61;
    v112 = 1024;
    v113 = v37;
    v41 = "[%s 0x%llx] setupAsyncReceive:%{mach.errno}x\n";
    goto LABEL_62;
  }

  speed = 0;
  v28 = IOUSBHostPipe::GetSpeed(*(*(this + 11) + 112), &speed, 0);
  if (v28)
  {
    v37 = v28;
    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_33;
    }

    v62 = OSMetaClassBase::GetClassName(this);
    *registryEntryID = 0;
    IOService::GetRegistryEntryID(this, registryEntryID, 0);
    v63 = *registryEntryID;
    *registryEntryID = 136315650;
    *&registryEntryID[4] = v62;
    v110 = 2048;
    v111 = v63;
    v112 = 1024;
    v113 = v37;
    v41 = "[%s 0x%llx] Failed to get outPipe speed. GetSpeed() returned %{mach.errno}x\n";
    goto LABEL_62;
  }

  *(*(this + 11) + 120) = IOUSBGetEndpointMaxPacketSize(speed, *(*(this + 11) + 104));
  v29 = (*(*this + 128))(this);
  if (v29 && (v30 = v29, v31 = OSNumber::unsigned64BitValue(v29), (v30->release)(v30), v31))
  {
    v32 = *(this + 11);
  }

  else
  {
    v32 = *(this + 11);
    LODWORD(v31) = *(v32 + 120);
  }

  *(v32 + 124) = v31;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v33 = OSMetaClassBase::GetClassName(this);
    *registryEntryID = 0;
    IOService::GetRegistryEntryID(this, registryEntryID, 0);
    v34 = *registryEntryID;
    v35 = *(this + 11);
    v36 = *(v35 + 112) != 0;
    LODWORD(v35) = *(v35 + 120);
    *registryEntryID = 136316162;
    *&registryEntryID[4] = v33;
    v110 = 2048;
    v111 = v34;
    v112 = 1024;
    v113 = v36;
    v114 = 1024;
    v115 = v31;
    v116 = 1024;
    v117 = v35;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[%s 0x%llx] outPipe:%d outboundMaxTransferSize:%d outMaxPacketSize:%d\n", registryEntryID, 0x28u);
  }

  *(*(this + 11) + 128) = OSArray::withCapacity(2u);
  if (*(*(this + 11) + 128))
  {
    v37 = (*(*this + 144))(this);
    if (!v37)
    {
      goto LABEL_34;
    }

    goto LABEL_33;
  }

  v37 = 3758097086;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v65 = OSMetaClassBase::GetClassName(this);
    *registryEntryID = 0;
    IOService::GetRegistryEntryID(this, registryEntryID, 0);
    v66 = *registryEntryID;
    *registryEntryID = 136315394;
    *&registryEntryID[4] = v65;
    v110 = 2048;
    v111 = v66;
    v41 = "[%s 0x%llx] outputReportActions\n";
    goto LABEL_65;
  }

LABEL_33:
  IOService::Stop(this, a2, 0);
LABEL_34:
  if (properties)
  {
    (properties->release)(properties);
  }

  return v37;
}

uint64_t ___ZN13XboxHIDDevice10Start_ImplEP9IOService_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  registryEntryID = 0;
  IOService::GetRegistryEntryID(v1, &registryEntryID, 0);
  return registryEntryID;
}

uint64_t ___ZN13XboxHIDDevice10Start_ImplEP9IOService_block_invoke_4(uint64_t a1)
{
  v1 = *(a1 + 32);
  registryEntryID = 0;
  IOService::GetRegistryEntryID(v1, &registryEntryID, 0);
  return registryEntryID;
}

uint64_t ___ZN13XboxHIDDevice10Start_ImplEP9IOService_block_invoke_6(uint64_t a1)
{
  v1 = *(a1 + 32);
  registryEntryID = 0;
  IOService::GetRegistryEntryID(v1, &registryEntryID, 0);
  return registryEntryID;
}

uint64_t ___ZN13XboxHIDDevice10Start_ImplEP9IOService_block_invoke_8(uint64_t a1)
{
  v1 = *(a1 + 32);
  registryEntryID = 0;
  IOService::GetRegistryEntryID(v1, &registryEntryID, 0);
  return registryEntryID;
}

uint64_t ___ZN13XboxHIDDevice10Start_ImplEP9IOService_block_invoke_10(uint64_t a1)
{
  v1 = *(a1 + 32);
  registryEntryID = 0;
  IOService::GetRegistryEntryID(v1, &registryEntryID, 0);
  return registryEntryID;
}

uint64_t ___ZN13XboxHIDDevice10Start_ImplEP9IOService_block_invoke_12(uint64_t a1)
{
  v1 = *(a1 + 32);
  registryEntryID = 0;
  IOService::GetRegistryEntryID(v1, &registryEntryID, 0);
  return registryEntryID;
}

uint64_t ___ZN13XboxHIDDevice10Start_ImplEP9IOService_block_invoke_14(uint64_t a1)
{
  v1 = *(a1 + 32);
  registryEntryID = 0;
  IOService::GetRegistryEntryID(v1, &registryEntryID, 0);
  return registryEntryID;
}

uint64_t ___ZN13XboxHIDDevice10Start_ImplEP9IOService_block_invoke_16(uint64_t a1)
{
  v1 = *(a1 + 32);
  registryEntryID = 0;
  IOService::GetRegistryEntryID(v1, &registryEntryID, 0);
  return registryEntryID;
}

uint64_t ___ZN13XboxHIDDevice10Start_ImplEP9IOService_block_invoke_18(uint64_t a1)
{
  v1 = *(a1 + 32);
  registryEntryID = 0;
  IOService::GetRegistryEntryID(v1, &registryEntryID, 0);
  return registryEntryID;
}

uint64_t ___ZN13XboxHIDDevice10Start_ImplEP9IOService_block_invoke_20(uint64_t a1)
{
  v1 = *(a1 + 32);
  registryEntryID = 0;
  IOService::GetRegistryEntryID(v1, &registryEntryID, 0);
  return registryEntryID;
}

uint64_t ___ZN13XboxHIDDevice10Start_ImplEP9IOService_block_invoke_22(uint64_t a1)
{
  v1 = *(a1 + 32);
  registryEntryID = 0;
  IOService::GetRegistryEntryID(v1, &registryEntryID, 0);
  return registryEntryID;
}

uint64_t ___ZN13XboxHIDDevice10Start_ImplEP9IOService_block_invoke_24(uint64_t a1)
{
  v1 = *(a1 + 32);
  registryEntryID = 0;
  IOService::GetRegistryEntryID(v1, &registryEntryID, 0);
  return registryEntryID;
}

uint64_t ___ZN13XboxHIDDevice10Start_ImplEP9IOService_block_invoke_26(uint64_t a1)
{
  v1 = *(a1 + 32);
  registryEntryID = 0;
  IOService::GetRegistryEntryID(v1, &registryEntryID, 0);
  return registryEntryID;
}

uint64_t ___ZN13XboxHIDDevice10Start_ImplEP9IOService_block_invoke_28(uint64_t a1)
{
  v1 = *(a1 + 32);
  registryEntryID = 0;
  IOService::GetRegistryEntryID(v1, &registryEntryID, 0);
  return registryEntryID;
}

uint64_t ___ZN13XboxHIDDevice10Start_ImplEP9IOService_block_invoke_30(uint64_t a1)
{
  v1 = *(a1 + 32);
  registryEntryID = 0;
  IOService::GetRegistryEntryID(v1, &registryEntryID, 0);
  return registryEntryID;
}

uint64_t ___ZN13XboxHIDDevice10Start_ImplEP9IOService_block_invoke_32(uint64_t a1)
{
  v1 = *(a1 + 32);
  registryEntryID = 0;
  IOService::GetRegistryEntryID(v1, &registryEntryID, 0);
  return registryEntryID;
}

uint64_t XboxHIDDevice::Stop_Impl(IOService *this, IOService *a2)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    ClassName = OSMetaClassBase::GetClassName(this);
    handler[12] = _NSConcreteStackBlock;
    handler[13] = 0x40000000;
    handler[14] = ___ZN13XboxHIDDevice9Stop_ImplEP9IOService_block_invoke;
    handler[15] = &__block_descriptor_tmp_34;
    handler[16] = this;
    *registryEntryID = 0;
    IOService::GetRegistryEntryID(this, registryEntryID, 0);
    v5 = *registryEntryID;
    *registryEntryID = 136315394;
    *&registryEntryID[4] = ClassName;
    *&registryEntryID[12] = 2048;
    *&registryEntryID[14] = v5;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[%s 0x%llx] Stop\n", registryEntryID, 0x16u);
  }

  *(this[1].ivars + 168) = 1;
  v6 = *(this[1].ivars + 1);
  if (v6)
  {
    v7 = IOUSBHostInterface::Close(v6, this, 0, 0);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v8 = OSMetaClassBase::GetClassName(this);
      handler[7] = _NSConcreteStackBlock;
      handler[8] = 0x40000000;
      handler[9] = ___ZN13XboxHIDDevice9Stop_ImplEP9IOService_block_invoke_35;
      handler[10] = &__block_descriptor_tmp_36;
      handler[11] = this;
      *registryEntryID = 0;
      IOService::GetRegistryEntryID(this, registryEntryID, 0);
      v9 = *registryEntryID;
      *registryEntryID = 136315650;
      *&registryEntryID[4] = v8;
      *&registryEntryID[12] = 2048;
      *&registryEntryID[14] = v9;
      *&registryEntryID[22] = 1024;
      v28 = v7;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[%s 0x%llx] Close interface: 0x%x\n", registryEntryID, 0x1Cu);
    }
  }

  *registryEntryID = 0;
  *&registryEntryID[8] = registryEntryID;
  *&registryEntryID[16] = 0x2000000000;
  v28 = 0;
  ivars = this[1].ivars;
  v11 = *(ivars + 16);
  if (v11)
  {
    v12 = (*(*v11 + 72))(v11);
    atomic_fetch_add((*&registryEntryID[8] + 24), v12);
    ivars = this[1].ivars;
  }

  v13 = *(ivars + 12);
  if (v13)
  {
    v14 = (*(*v13 + 72))(v13);
    atomic_fetch_add((*&registryEntryID[8] + 24), v14);
    ivars = this[1].ivars;
  }

  v15 = *(ivars + 19);
  v16 = *&registryEntryID[8];
  if (v15)
  {
    atomic_fetch_add((*&registryEntryID[8] + 24), 1u);
    v16 = *&registryEntryID[8];
  }

  handler[0] = _NSConcreteStackBlock;
  handler[1] = 1107296256;
  handler[2] = ___ZN13XboxHIDDevice9Stop_ImplEP9IOService_block_invoke_37;
  handler[3] = &__block_descriptor_tmp_39;
  handler[4] = registryEntryID;
  handler[5] = this;
  handler[6] = a2;
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 1107296256;
  v23 = ___ZN13XboxHIDDevice9Stop_ImplEP9IOService_block_invoke_40;
  v24 = &__block_descriptor_tmp_43;
  v25 = handler;
  if (atomic_load((v16 + 24)))
  {
    v18 = this[1].ivars;
    if (*(v18 + 16))
    {
      (v23)(v22);
      v18 = this[1].ivars;
    }

    if (*(v18 + 12))
    {
      (v23)(v22);
      v18 = this[1].ivars;
    }

    v19 = *(v18 + 19);
    if (v19)
    {
      IODispatchSource::Cancel(v19, handler, 0);
    }

    v20 = 0;
  }

  else
  {
    v20 = IOService::Stop(this, a2, &IOUserHIDDevice::_Dispatch);
  }

  _Block_object_dispose(registryEntryID, 8);
  return v20;
}

uint64_t ___ZN13XboxHIDDevice9Stop_ImplEP9IOService_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  registryEntryID = 0;
  IOService::GetRegistryEntryID(v1, &registryEntryID, 0);
  return registryEntryID;
}

uint64_t ___ZN13XboxHIDDevice9Stop_ImplEP9IOService_block_invoke_35(uint64_t a1)
{
  v1 = *(a1 + 32);
  registryEntryID = 0;
  IOService::GetRegistryEntryID(v1, &registryEntryID, 0);
  return registryEntryID;
}

IOService *___ZN13XboxHIDDevice9Stop_ImplEP9IOService_block_invoke_37(uint64_t a1)
{
  result = *(a1 + 40);
  if (atomic_fetch_add_explicit((*(*(a1 + 32) + 8) + 24), 0xFFFFFFFF, memory_order_relaxed) <= 1)
  {
    return IOService::Stop(result, *(a1 + 48), &IOUserHIDDevice::_Dispatch);
  }

  return result;
}

uint64_t ___ZN13XboxHIDDevice9Stop_ImplEP9IOService_block_invoke_40(uint64_t a1, const OSArray *a2)
{
  result = (a2->getCount)(a2);
  if (result)
  {
    v5 = 0;
    do
    {
      Object = OSArray::getObject(a2, v5);
      v9[0] = 0;
      v9[1] = v9;
      v9[2] = 0x2000000000;
      v9[3] = OSAction::GetReference(Object);
      if (Object)
      {
        v8[0] = _NSConcreteStackBlock;
        v8[1] = 1107296256;
        v8[2] = ___ZN13XboxHIDDevice9Stop_ImplEP9IOService_block_invoke_2;
        v7 = *(a1 + 32);
        v8[3] = &__block_descriptor_tmp_41;
        v8[4] = v7;
        v8[5] = v9;
        OSAction::Cancel(Object, v8);
      }

      _Block_object_dispose(v9, 8);
      ++v5;
      result = (a2->getCount)(a2);
    }

    while (v5 < result);
  }

  return result;
}

uint64_t ___ZN13XboxHIDDevice9Stop_ImplEP9IOService_block_invoke_2(uint64_t a1)
{
  v2 = *(*(*(a1 + 40) + 8) + 24);
  if (*v2)
  {
    (*(**v2 + 16))(*v2);
    **(*(*(a1 + 40) + 8) + 24) = 0;
    v2 = *(*(*(a1 + 40) + 8) + 24);
  }

  v3 = v2[1];
  if (v3)
  {
    (*(*v3 + 16))(v3);
    *(*(*(*(a1 + 40) + 8) + 24) + 8) = 0;
  }

  v4 = *(*(a1 + 32) + 16);

  return v4();
}

void __copy_helper_block_8_32b40r(uint64_t a1, uint64_t a2)
{
  _Block_object_assign((a1 + 32), *(a2 + 32), 7);
  v4 = *(a2 + 40);

  _Block_object_assign((a1 + 40), v4, 8);
}

void __destroy_helper_block_8_32b40r(uint64_t a1)
{
  _Block_object_dispose(*(a1 + 40), 8);
  v2 = *(a1 + 32);

  _Block_object_dispose(v2, 7);
}

uint64_t XboxHIDDevice::SetPowerState_Impl(IOService *this, uint32_t a2)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    ClassName = OSMetaClassBase::GetClassName(this);
    *registryEntryID = 0;
    IOService::GetRegistryEntryID(this, registryEntryID, 0);
    v5 = *registryEntryID;
    *registryEntryID = 136315650;
    *&registryEntryID[4] = ClassName;
    v8 = 2048;
    v9 = v5;
    v10 = 1024;
    v11 = a2;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[%s 0x%llx] Set power state: %x\n", registryEntryID, 0x1Cu);
  }

  return IOService::SetPowerState(this, a2, &IOUserHIDDevice::_Dispatch);
}

uint64_t ___ZN13XboxHIDDevice18SetPowerState_ImplEj_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  registryEntryID = 0;
  IOService::GetRegistryEntryID(v1, &registryEntryID, 0);
  return registryEntryID;
}

uint64_t XboxHIDDevice::handleStart(IOUserHIDDevice *this, IOService *a2)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    ClassName = OSMetaClassBase::GetClassName(this);
    v92 = _NSConcreteStackBlock;
    v93 = 0x40000000;
    v94 = ___ZN13XboxHIDDevice11handleStartEP9IOService_block_invoke;
    v95 = &__block_descriptor_tmp_45;
    v96 = this;
    *registryEntryID = 0;
    IOService::GetRegistryEntryID(this, registryEntryID, 0);
    v5 = *registryEntryID;
    *registryEntryID = 136315394;
    *&registryEntryID[4] = ClassName;
    v98 = 2048;
    v99 = v5;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[%s 0x%llx] ::handleStart()\n", registryEntryID, 0x16u);
  }

  if (!IOUserHIDDevice::handleStart(this, a2))
  {
    goto LABEL_51;
  }

  v6 = IOUSBHostInterface::Open(*(*&this[1].refcount + 8), this, 0, 0, 0);
  if (v6)
  {
    v48 = v6;
    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_51;
    }

    v49 = OSMetaClassBase::GetClassName(this);
    v87 = _NSConcreteStackBlock;
    v88 = 0x40000000;
    v89 = ___ZN13XboxHIDDevice11handleStartEP9IOService_block_invoke_46;
    v90 = &__block_descriptor_tmp_47;
    v91 = this;
    *registryEntryID = 0;
    IOService::GetRegistryEntryID(this, registryEntryID, 0);
    v50 = *registryEntryID;
    *registryEntryID = 136315650;
    *&registryEntryID[4] = v49;
    v98 = 2048;
    v99 = v50;
    v100 = 1024;
    v101 = v48;
    v43 = "[%s 0x%llx] Failed to open interface: %{mach.errno}x\n";
    goto LABEL_50;
  }

  EndpointDescriptor = IOUSBGetNextEndpointDescriptor(*(*&this[1].refcount + 24), *(*&this[1].refcount + 32), 0);
  if (!EndpointDescriptor)
  {
    v27 = 0;
    v10 = 0;
    v28 = 0;
    v63 = 0;
LABEL_34:
    v29 = *&this[1].refcount;
    if (*(v29 + 48) && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v30 = OSMetaClassBase::GetClassName(this);
      v72 = _NSConcreteStackBlock;
      v73 = 0x40000000;
      v74 = ___ZN13XboxHIDDevice11handleStartEP9IOService_block_invoke_52;
      v75 = &__block_descriptor_tmp_53;
      v76 = this;
      *registryEntryID = 0;
      IOService::GetRegistryEntryID(this, registryEntryID, 0);
      v31 = *registryEntryID;
      *registryEntryID = 136315906;
      *&registryEntryID[4] = v30;
      v98 = 2048;
      v99 = v31;
      v100 = 1024;
      v101 = v27;
      v102 = 1024;
      v103 = v10;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[%s 0x%llx] found in pipe (addr:%d, type:%d)\n", registryEntryID, 0x22u);
      v29 = *&this[1].refcount;
    }

    if (*(v29 + 112) && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v32 = OSMetaClassBase::GetClassName(this);
      v67 = _NSConcreteStackBlock;
      v68 = 0x40000000;
      v69 = ___ZN13XboxHIDDevice11handleStartEP9IOService_block_invoke_54;
      v70 = &__block_descriptor_tmp_55;
      v71 = this;
      *registryEntryID = 0;
      IOService::GetRegistryEntryID(this, registryEntryID, 0);
      v33 = *registryEntryID;
      *registryEntryID = 136315906;
      *&registryEntryID[4] = v32;
      v98 = 2048;
      v99 = v33;
      v100 = 1024;
      v101 = v28;
      v102 = 1024;
      v103 = v63;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[%s 0x%llx] found out pipe (addr:%d, type:%d)\n", registryEntryID, 0x22u);
      v29 = *&this[1].refcount;
    }

    v34 = *(v29 + 48);
    if (!v34)
    {
      XboxHIDDevice::handleStart(this, v66);
      goto LABEL_51;
    }

    if (!*(v29 + 112))
    {
      XboxHIDDevice::handleStart(this, v65);
      goto LABEL_51;
    }

    speed = 0;
    v35 = IOUSBHostPipe::GetSpeed(v34, &speed, 0);
    if (v35)
    {
      v51 = v35;
      if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_51;
      }

      v52 = OSMetaClassBase::GetClassName(this);
      *registryEntryID = 0;
      IOService::GetRegistryEntryID(this, registryEntryID, 0);
      v53 = *registryEntryID;
      *registryEntryID = 136315650;
      *&registryEntryID[4] = v52;
      v98 = 2048;
      v99 = v53;
      v100 = 1024;
      v101 = v51;
      v43 = "[%s 0x%llx] Failed to get inPipe speed. GetSpeed() returned %{mach.errno}x\n";
    }

    else
    {
      *(*&this[1].refcount + 84) = 125 * IOUSBGetEndpointIntervalMicroframes(speed, *(*&this[1].refcount + 40));
      v36 = IOTimerDispatchSource::Create(*(*&this[1].refcount + 144), (*&this[1].refcount + 152));
      if (v36)
      {
        v54 = v36;
        if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_51;
        }

        v55 = OSMetaClassBase::GetClassName(this);
        *registryEntryID = 0;
        IOService::GetRegistryEntryID(this, registryEntryID, 0);
        v56 = *registryEntryID;
        *registryEntryID = 136315650;
        *&registryEntryID[4] = v55;
        v98 = 2048;
        v99 = v56;
        v100 = 1024;
        v101 = v54;
        v43 = "[%s 0x%llx] IOTimerDispatchSource::Create:%x\n";
      }

      else
      {
        TimeoutOccurred = XboxHIDDevice::CreateActionAsyncReadTimeoutOccurred(this, 8uLL, (*&this[1].refcount + 160));
        if (TimeoutOccurred)
        {
          v57 = TimeoutOccurred;
          if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_51;
          }

          v58 = OSMetaClassBase::GetClassName(this);
          *registryEntryID = 0;
          IOService::GetRegistryEntryID(this, registryEntryID, 0);
          v59 = *registryEntryID;
          *registryEntryID = 136315650;
          *&registryEntryID[4] = v58;
          v98 = 2048;
          v99 = v59;
          v100 = 1024;
          v101 = v57;
          v43 = "[%s 0x%llx] CreateActionTimerOccurred:%x\n";
        }

        else
        {
          v38 = IOTimerDispatchSource::SetHandler(*(*&this[1].refcount + 152), *(*&this[1].refcount + 160), 0);
          if (!v38)
          {
            return 1;
          }

          v60 = v38;
          if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_51;
          }

          v61 = OSMetaClassBase::GetClassName(this);
          *registryEntryID = 0;
          IOService::GetRegistryEntryID(this, registryEntryID, 0);
          v62 = *registryEntryID;
          *registryEntryID = 136315650;
          *&registryEntryID[4] = v61;
          v98 = 2048;
          v99 = v62;
          v100 = 1024;
          v101 = v60;
          v43 = "[%s 0x%llx] IOTimerDispatchSource::SetHandler:%x\n";
        }
      }
    }

LABEL_50:
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v43, registryEntryID, 0x1Cu);
    goto LABEL_51;
  }

  v8 = EndpointDescriptor;
  v63 = 0;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  while (1)
  {
    v12 = IOUSBGetEndpointType(v8);
    if (v12 != 3)
    {
      if (v12 == 2 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        v13 = OSMetaClassBase::GetClassName(this);
        v82 = _NSConcreteStackBlock;
        v83 = 0x40000000;
        v84 = ___ZN13XboxHIDDevice11handleStartEP9IOService_block_invoke_48;
        v85 = &__block_descriptor_tmp_49;
        v86 = this;
        *registryEntryID = 0;
        IOService::GetRegistryEntryID(this, registryEntryID, 0);
        v14 = *registryEntryID;
        *registryEntryID = 136315394;
        *&registryEntryID[4] = v13;
        v98 = 2048;
        v99 = v14;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[%s 0x%llx] Unexpected Bulk pipe found but ignored.\n", registryEntryID, 0x16u);
      }

      goto LABEL_31;
    }

    v15 = IOUSBGetEndpointDirection(v8);
    v16 = v15;
    v17 = this;
    v18 = *&this[1].refcount;
    if (v15 == 1)
    {
      v19 = 48;
    }

    else
    {
      v19 = 112;
    }

    if (v15 == 1)
    {
      v20 = 40;
    }

    else
    {
      v20 = 104;
    }

    v21 = *(v18 + v19);
    if (v21)
    {
      v22 = v63;
      if (v16 == 1)
      {
        v22 = v10;
      }

      if (v22 == 3)
      {
        this = v17;
        goto LABEL_31;
      }

      (*(*v21 + 16))(v21);
      *(v18 + v19) = 0;
    }

    v23 = IOUSBGetEndpointAddress(v8);
    v24 = v63;
    if (v16 != 1)
    {
      v24 = 3;
    }

    v63 = v24;
    if (v16 == 1)
    {
      v10 = 3;
      v11 = v23;
    }

    else
    {
      v9 = v23;
    }

    *(v18 + v20) = v8;
    v25 = IOUSBHostInterface::CopyPipe(*(*&v17[1].refcount + 8), v23, (v18 + v19), 0);
    if (v25)
    {
      break;
    }

    v26 = *&v17[1].refcount;
    this = v17;
    if (*(v26 + 48) && *(v26 + 112))
    {
LABEL_32:
      v27 = v11;
      v28 = v9;
      goto LABEL_34;
    }

LABEL_31:
    v8 = IOUSBGetNextEndpointDescriptor(*(*&this[1].refcount + 24), *(*&this[1].refcount + 32), v8);
    if (!v8)
    {
      goto LABEL_32;
    }
  }

  v40 = v25;
  this = v17;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v41 = OSMetaClassBase::GetClassName(v17);
    v77 = _NSConcreteStackBlock;
    v78 = 0x40000000;
    v79 = ___ZN13XboxHIDDevice11handleStartEP9IOService_block_invoke_50;
    v80 = &__block_descriptor_tmp_51;
    v81 = v17;
    *registryEntryID = 0;
    IOService::GetRegistryEntryID(v17, registryEntryID, 0);
    v42 = *registryEntryID;
    *registryEntryID = 136315650;
    *&registryEntryID[4] = v41;
    v98 = 2048;
    v99 = v42;
    v100 = 1024;
    v101 = v40;
    v43 = "[%s 0x%llx] CopyPipe:%x\n";
    goto LABEL_50;
  }

LABEL_51:
  v44 = IOUSBHostInterface::Close(*(*&this[1].refcount + 8), this, 0, 0);
  v45 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT);
  result = 0;
  if (v45)
  {
    v46 = OSMetaClassBase::GetClassName(this);
    *registryEntryID = 0;
    IOService::GetRegistryEntryID(this, registryEntryID, 0);
    v47 = *registryEntryID;
    *registryEntryID = 136315650;
    *&registryEntryID[4] = v46;
    v98 = 2048;
    v99 = v47;
    v100 = 1024;
    v101 = v44;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[%s 0x%llx] Close interface: 0x%x\n", registryEntryID, 0x1Cu);
    return 0;
  }

  return result;
}

uint64_t ___ZN13XboxHIDDevice11handleStartEP9IOService_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  registryEntryID = 0;
  IOService::GetRegistryEntryID(v1, &registryEntryID, 0);
  return registryEntryID;
}

uint64_t ___ZN13XboxHIDDevice11handleStartEP9IOService_block_invoke_46(uint64_t a1)
{
  v1 = *(a1 + 32);
  registryEntryID = 0;
  IOService::GetRegistryEntryID(v1, &registryEntryID, 0);
  return registryEntryID;
}

uint64_t ___ZN13XboxHIDDevice11handleStartEP9IOService_block_invoke_48(uint64_t a1)
{
  v1 = *(a1 + 32);
  registryEntryID = 0;
  IOService::GetRegistryEntryID(v1, &registryEntryID, 0);
  return registryEntryID;
}

uint64_t ___ZN13XboxHIDDevice11handleStartEP9IOService_block_invoke_50(uint64_t a1)
{
  v1 = *(a1 + 32);
  registryEntryID = 0;
  IOService::GetRegistryEntryID(v1, &registryEntryID, 0);
  return registryEntryID;
}

uint64_t ___ZN13XboxHIDDevice11handleStartEP9IOService_block_invoke_52(uint64_t a1)
{
  v1 = *(a1 + 32);
  registryEntryID = 0;
  IOService::GetRegistryEntryID(v1, &registryEntryID, 0);
  return registryEntryID;
}

uint64_t ___ZN13XboxHIDDevice11handleStartEP9IOService_block_invoke_54(uint64_t a1)
{
  v1 = *(a1 + 32);
  registryEntryID = 0;
  IOService::GetRegistryEntryID(v1, &registryEntryID, 0);
  return registryEntryID;
}

uint64_t ___ZN13XboxHIDDevice11handleStartEP9IOService_block_invoke_56(uint64_t a1)
{
  v1 = *(a1 + 32);
  registryEntryID = 0;
  IOService::GetRegistryEntryID(v1, &registryEntryID, 0);
  return registryEntryID;
}

uint64_t ___ZN13XboxHIDDevice11handleStartEP9IOService_block_invoke_58(uint64_t a1)
{
  v1 = *(a1 + 32);
  registryEntryID = 0;
  IOService::GetRegistryEntryID(v1, &registryEntryID, 0);
  return registryEntryID;
}

uint64_t ___ZN13XboxHIDDevice11handleStartEP9IOService_block_invoke_60(uint64_t a1)
{
  v1 = *(a1 + 32);
  registryEntryID = 0;
  IOService::GetRegistryEntryID(v1, &registryEntryID, 0);
  return registryEntryID;
}

uint64_t ___ZN13XboxHIDDevice11handleStartEP9IOService_block_invoke_62(uint64_t a1)
{
  v1 = *(a1 + 32);
  registryEntryID = 0;
  IOService::GetRegistryEntryID(v1, &registryEntryID, 0);
  return registryEntryID;
}

uint64_t ___ZN13XboxHIDDevice11handleStartEP9IOService_block_invoke_64(uint64_t a1)
{
  v1 = *(a1 + 32);
  registryEntryID = 0;
  IOService::GetRegistryEntryID(v1, &registryEntryID, 0);
  return registryEntryID;
}

uint64_t ___ZN13XboxHIDDevice11handleStartEP9IOService_block_invoke_66(uint64_t a1)
{
  v1 = *(a1 + 32);
  registryEntryID = 0;
  IOService::GetRegistryEntryID(v1, &registryEntryID, 0);
  return registryEntryID;
}

uint64_t ___ZN13XboxHIDDevice11handleStartEP9IOService_block_invoke_68(uint64_t a1)
{
  v1 = *(a1 + 32);
  registryEntryID = 0;
  IOService::GetRegistryEntryID(v1, &registryEntryID, 0);
  return registryEntryID;
}

OSDictionary *XboxHIDDevice::newDeviceDescription(XboxHIDDevice *this)
{
  properties = 0;
  v2 = (*(***(this + 11) + 64))(**(this + 11));
  if (!v2)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      ClassName = OSMetaClassBase::GetClassName(this);
      *registryEntryID = 0;
      IOService::GetRegistryEntryID(this, registryEntryID, 0);
      v15 = *registryEntryID;
      *registryEntryID = 136315394;
      *&registryEntryID[4] = ClassName;
      v24 = 2048;
      v25 = v15;
      v16 = "[%s 0x%llx] CopyDeviceDescriptor\n";
LABEL_21:
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v16, registryEntryID, 0x16u);
    }

LABEL_22:
    v4 = 0;
    goto LABEL_12;
  }

  v3 = OSDictionary::withCapacity(0xAu);
  if (!v3)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v17 = OSMetaClassBase::GetClassName(this);
      *registryEntryID = 0;
      IOService::GetRegistryEntryID(this, registryEntryID, 0);
      v18 = *registryEntryID;
      *registryEntryID = 136315394;
      *&registryEntryID[4] = v17;
      v24 = 2048;
      v25 = v18;
      v16 = "[%s 0x%llx] OSDictionaryCreate\n";
      goto LABEL_21;
    }

    goto LABEL_22;
  }

  v4 = v3;
  v5 = IOService::CopyProperties(*(*(this + 11) + 8), &properties, 0);
  if (v5)
  {
    v19 = v5;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v20 = OSMetaClassBase::GetClassName(this);
      *registryEntryID = 0;
      IOService::GetRegistryEntryID(this, registryEntryID, 0);
      v21 = *registryEntryID;
      *registryEntryID = 136315650;
      *&registryEntryID[4] = v20;
      v24 = 2048;
      v25 = v21;
      v26 = 1024;
      v27 = v19;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[%s 0x%llx] CopyProperties:%x\n", registryEntryID, 0x1Cu);
    }
  }

  else
  {
    OSDictionarySetUInt64Value(v4, "ReportInterval", *(*(this + 11) + 84));
    OSDictionarySetUInt64Value(v4, "VendorID", v2->idVendor);
    OSDictionarySetUInt64Value(v4, "ProductID", v2->idProduct);
    OSDictionarySetStringValue(v4, "Transport", "USB");
    OSDictionarySetUInt64Value(v4, "VersionNumber", v2->bcdDevice);
    OSDictionarySetUInt64Value(v4, "CountryCode", 0);
    Value = OSDictionaryGetValue(properties, "locationID");
    if (Value)
    {
      OSDictionarySetValue(v4, "LocationID", Value);
    }

    v7 = XboxHIDDevice::copyStringAtIndex(this, v2->iManufacturer, 1033);
    if (v7)
    {
      v8 = v7;
      OSDictionarySetValue(v4, "Manufacturer", v7);
      (v8->release)(v8);
    }

    v9 = XboxHIDDevice::copyStringAtIndex(this, v2->iProduct, 1033);
    if (v9)
    {
      v10 = v9;
      OSDictionarySetValue(v4, "Product", v9);
      (v10->release)(v10);
    }

    v11 = XboxHIDDevice::copyStringAtIndex(this, v2->iSerialNumber, 1033);
    if (v11)
    {
      v12 = v11;
      OSDictionarySetValue(v4, "SerialNumber", v11);
      (v12->release)(v12);
    }
  }

LABEL_12:
  if (properties)
  {
    (properties->release)(properties);
    properties = 0;
  }

  if (v2)
  {
    IOUSBHostFreeDescriptor(v2);
  }

  return v4;
}

uint64_t ___ZN13XboxHIDDevice20newDeviceDescriptionEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  registryEntryID = 0;
  IOService::GetRegistryEntryID(v1, &registryEntryID, 0);
  return registryEntryID;
}

uint64_t ___ZN13XboxHIDDevice20newDeviceDescriptionEv_block_invoke_71(uint64_t a1)
{
  v1 = *(a1 + 32);
  registryEntryID = 0;
  IOService::GetRegistryEntryID(v1, &registryEntryID, 0);
  return registryEntryID;
}

uint64_t ___ZN13XboxHIDDevice20newDeviceDescriptionEv_block_invoke_73(uint64_t a1)
{
  v1 = *(a1 + 32);
  registryEntryID = 0;
  IOService::GetRegistryEntryID(v1, &registryEntryID, 0);
  return registryEntryID;
}

OSStringPtr XboxHIDDevice::copyStringAtIndex(IOService *this, int a2, int a3)
{
  if (!a2)
  {
    return 0;
  }

  v6 = (*(**(this[1].ivars + 1) + 72))(*(this[1].ivars + 1));
  if (!v6)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      ClassName = OSMetaClassBase::GetClassName(this);
      *cstring = 0;
      IOService::GetRegistryEntryID(this, cstring, 0);
      v17 = *cstring;
      *cstring = 136315906;
      *&cstring[4] = ClassName;
      v20 = 2048;
      v21 = v17;
      v22 = 1024;
      v23 = a2;
      v24 = 1024;
      v25 = a3;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[%s 0x%llx] CopyStringDescriptor(%d,%d)\n", cstring, 0x22u);
    }

    return 0;
  }

  v7 = v6;
  bLength = v6->bLength;
  if ((bLength & 0xFE) == 2)
  {
    v9 = 0;
  }

  else
  {
    v10 = 0;
    v9 = 0;
    v11 = (bLength - 2) >> 1;
    v12 = 1;
    do
    {
      v13 = *&v6->bString[v10];
      if (!v13)
      {
        break;
      }

      cstring[v9] = v13;
      v9 = v12;
      v14 = v11 > v12++;
      v10 += 2;
    }

    while (v14);
  }

  cstring[v9] = 0;
  v15 = OSStringCreate(cstring, v9);
  IOUSBHostFreeDescriptor(v7);
  return v15;
}

uint64_t ___ZN13XboxHIDDevice25newMaxInboundTransferSizeEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  registryEntryID = 0;
  IOService::GetRegistryEntryID(v1, &registryEntryID, 0);
  return registryEntryID;
}

OSMetaClassBase *XboxHIDDevice::newMaxOutboundTransferSize(IOService *this)
{
  properties = 0;
  v2 = IOService::CopyProperties(this, &properties, &IOUserHIDDevice::_Dispatch);
  if (v2)
  {
    v11 = v2;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      ClassName = OSMetaClassBase::GetClassName(this);
      *registryEntryID = 0;
      IOService::GetRegistryEntryID(this, registryEntryID, 0);
      v13 = *registryEntryID;
      *registryEntryID = 136315650;
      *&registryEntryID[4] = ClassName;
      v16 = 2048;
      v17 = v13;
      v18 = 1024;
      v19 = v11;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[%s 0x%llx] Failed to obtain HIDDevice properties. CopyProperties() returned %{mach.errno}x\n", registryEntryID, 0x1Cu);
    }

    v4 = 0;
  }

  else
  {
    Value = OSDictionaryGetValue(properties, "MaxOutputReportSize");
    v4 = OSMetaClassBase::safeMetaCast(Value, gOSNumberMetaClass);
    v5 = OSDictionaryGetValue(properties, "MaxFeatureReportSize");
    v6 = OSMetaClassBase::safeMetaCast(v5, gOSNumberMetaClass);
    if (v4)
    {
      v7 = v6 == 0;
    }

    else
    {
      v7 = 0;
    }

    if (v7 || ((v8 = v6, !v4) ? (v9 = v6 == 0) : (v9 = 1), v9))
    {
      (v4->retain)(v4);
    }

    else
    {
      (v6->retain)(v6);
      v4 = v8;
    }
  }

  if (properties)
  {
    (properties->release)(properties);
  }

  return v4;
}

uint64_t ___ZN13XboxHIDDevice26newMaxOutboundTransferSizeEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  registryEntryID = 0;
  IOService::GetRegistryEntryID(v1, &registryEntryID, 0);
  return registryEntryID;
}

uint64_t XboxHIDDevice::setupAsyncReceive(IOService *this)
{
  v22 = 0;
  v21 = 0;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    ClassName = OSMetaClassBase::GetClassName(this);
    *registryEntryID = 0;
    IOService::GetRegistryEntryID(this, registryEntryID, 0);
    v3 = *registryEntryID;
    *registryEntryID = 136315394;
    *&registryEntryID[4] = ClassName;
    v24 = 2048;
    v25 = v3;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[%s 0x%llx] ::setupAsyncReceive()\n", registryEntryID, 0x16u);
  }

  while (1)
  {
    v4 = (*(**(this[1].ivars + 12) + 72))(*(this[1].ivars + 12));
    if (v4 >= (*(**(this[1].ivars + 12) + 80))(*(this[1].ivars + 12)) && (*(**(this[1].ivars + 12) + 72))(*(this[1].ivars + 12)))
    {
      return 0;
    }

    v5 = (*(**(this[1].ivars + 1) + 88))(*(this[1].ivars + 1), 1, *(this[1].ivars + 9), &v22);
    if (v5)
    {
      v12 = v5;
      if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        return v12;
      }

      v14 = OSMetaClassBase::GetClassName(this);
      *registryEntryID = 0;
      IOService::GetRegistryEntryID(this, registryEntryID, 0);
      v15 = *registryEntryID;
      v16 = *(this[1].ivars + 9);
      *registryEntryID = 136315906;
      *&registryEntryID[4] = v14;
      v24 = 2048;
      v25 = v15;
      v26 = 2048;
      v27 = v16;
      v28 = 1024;
      v29 = v12;
      v17 = "[%s 0x%llx] Could not create input buffer. CreateIOBuffer(%{bytes}llu) failed: %{mach.errno}d\n";
      v18 = 38;
      goto LABEL_17;
    }

    v6 = XboxHIDDevice::CreateActionCompleteAsyncReceive(this, 0x18uLL, &v21);
    if (v6)
    {
      break;
    }

    v7 = v22;
    *(OSAction::GetReference(v21) + 1) = v7;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v8 = OSMetaClassBase::GetClassName(this);
      *registryEntryID = 0;
      IOService::GetRegistryEntryID(this, registryEntryID, 0);
      v9 = *registryEntryID;
      v10 = v21;
      v11 = (*(**(this[1].ivars + 12) + 72))(*(this[1].ivars + 12));
      *registryEntryID = 136315906;
      *&registryEntryID[4] = v8;
      v24 = 2048;
      v25 = v9;
      v26 = 2048;
      v27 = v10;
      v28 = 1024;
      v29 = v11;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[%s 0x%llx] Add element %p to input action array: %u\n", registryEntryID, 0x26u);
    }

    OSArray::setObject(*(this[1].ivars + 12), v21);
    if (v21)
    {
      (v21->release)(v21);
      v21 = 0;
    }
  }

  v12 = v6;
  if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    return v12;
  }

  v19 = OSMetaClassBase::GetClassName(this);
  *registryEntryID = 0;
  IOService::GetRegistryEntryID(this, registryEntryID, 0);
  v20 = *registryEntryID;
  *registryEntryID = 136315650;
  *&registryEntryID[4] = v19;
  v24 = 2048;
  v25 = v20;
  v26 = 1024;
  LODWORD(v27) = v12;
  v17 = "[%s 0x%llx] CreateActionCompleteInputReport:%x\n";
  v18 = 28;
LABEL_17:
  _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v17, registryEntryID, v18);
  return v12;
}

uint64_t ___ZN13XboxHIDDevice17setupAsyncReceiveEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  registryEntryID = 0;
  IOService::GetRegistryEntryID(v1, &registryEntryID, 0);
  return registryEntryID;
}

uint64_t ___ZN13XboxHIDDevice17setupAsyncReceiveEv_block_invoke_93(uint64_t a1)
{
  v1 = *(a1 + 32);
  registryEntryID = 0;
  IOService::GetRegistryEntryID(v1, &registryEntryID, 0);
  return registryEntryID;
}

uint64_t ___ZN13XboxHIDDevice17setupAsyncReceiveEv_block_invoke_95(uint64_t a1)
{
  v1 = *(a1 + 32);
  registryEntryID = 0;
  IOService::GetRegistryEntryID(v1, &registryEntryID, 0);
  return registryEntryID;
}

uint64_t ___ZN13XboxHIDDevice17setupAsyncReceiveEv_block_invoke_97(uint64_t a1)
{
  v1 = *(a1 + 32);
  registryEntryID = 0;
  IOService::GetRegistryEntryID(v1, &registryEntryID, 0);
  return registryEntryID;
}

uint64_t ___ZN13XboxHIDDevice20scheduleAsyncReceiveEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  registryEntryID = 0;
  IOService::GetRegistryEntryID(v1, &registryEntryID, 0);
  return registryEntryID;
}

uint64_t ___ZN13XboxHIDDevice20scheduleAsyncReceiveEv_block_invoke_100(uint64_t a1)
{
  v1 = *(a1 + 32);
  registryEntryID = 0;
  IOService::GetRegistryEntryID(v1, &registryEntryID, 0);
  return registryEntryID;
}

uint64_t ___ZN13XboxHIDDevice25scheduleAsyncRecieveRetryEi_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  registryEntryID = 0;
  IOService::GetRegistryEntryID(v1, &registryEntryID, 0);
  return registryEntryID;
}

uint64_t ___ZN13XboxHIDDevice25scheduleAsyncRecieveRetryEi_block_invoke_103(uint64_t a1)
{
  v1 = *(a1 + 32);
  registryEntryID = 0;
  IOService::GetRegistryEntryID(v1, &registryEntryID, 0);
  return registryEntryID;
}

void XboxHIDDevice::reset(XboxHIDDevice *this)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    ClassName = OSMetaClassBase::GetClassName(this);
    *registryEntryID = 0;
    IOService::GetRegistryEntryID(this, registryEntryID, 0);
    v3 = *registryEntryID;
    *registryEntryID = 136315394;
    *&registryEntryID[4] = ClassName;
    v9 = 2048;
    v10 = v3;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[%s 0x%llx] USB Device Reset\n", registryEntryID, 0x16u);
  }

  v4 = IOUSBHostDevice::Reset(**(this + 11), 0);
  if (v4)
  {
    v5 = v4;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v6 = OSMetaClassBase::GetClassName(this);
      *registryEntryID = 0;
      IOService::GetRegistryEntryID(this, registryEntryID, 0);
      v7 = *registryEntryID;
      *registryEntryID = 136315650;
      *&registryEntryID[4] = v6;
      v9 = 2048;
      v10 = v7;
      v11 = 1024;
      v12 = v5;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[%s 0x%llx] Reset:0x%x\n", registryEntryID, 0x1Cu);
    }
  }
}

uint64_t ___ZN13XboxHIDDevice25scheduleAsyncRecieveRetryEi_block_invoke_105(uint64_t a1)
{
  v1 = *(a1 + 32);
  registryEntryID = 0;
  IOService::GetRegistryEntryID(v1, &registryEntryID, 0);
  return registryEntryID;
}

uint64_t ___ZN13XboxHIDDevice25scheduleAsyncRecieveRetryEi_block_invoke_107(uint64_t a1)
{
  v1 = *(a1 + 32);
  registryEntryID = 0;
  IOService::GetRegistryEntryID(v1, &registryEntryID, 0);
  return registryEntryID;
}

void XboxHIDDevice::cancelAsyncRecieveRetry(IOService *this)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    ClassName = OSMetaClassBase::GetClassName(this);
    *registryEntryID = 0;
    IOService::GetRegistryEntryID(this, registryEntryID, 0);
    v3 = *registryEntryID;
    *registryEntryID = 136315394;
    *&registryEntryID[4] = ClassName;
    v9 = 2048;
    v10 = v3;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[%s 0x%llx] ::cancelAsyncRecieveRetry()\n", registryEntryID, 0x16u);
  }

  v4 = IOTimerDispatchSource::WakeAtTime(*(this[1].ivars + 19), 0, 0xFFFFFFFFFFFFFFFFLL, 0, 0);
  if (v4)
  {
    v5 = v4;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v6 = OSMetaClassBase::GetClassName(this);
      *registryEntryID = 0;
      IOService::GetRegistryEntryID(this, registryEntryID, 0);
      v7 = *registryEntryID;
      *registryEntryID = 136315650;
      *&registryEntryID[4] = v6;
      v9 = 2048;
      v10 = v7;
      v11 = 1024;
      v12 = v5;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[%s 0x%llx] WakeAtTime:0x%x\n", registryEntryID, 0x1Cu);
    }
  }

  *(this[1].ivars + 22) = 10;
}

uint64_t ___ZN13XboxHIDDevice23cancelAsyncRecieveRetryEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  registryEntryID = 0;
  IOService::GetRegistryEntryID(v1, &registryEntryID, 0);
  return registryEntryID;
}

uint64_t ___ZN13XboxHIDDevice23cancelAsyncRecieveRetryEv_block_invoke_110(uint64_t a1)
{
  v1 = *(a1 + 32);
  registryEntryID = 0;
  IOService::GetRegistryEntryID(v1, &registryEntryID, 0);
  return registryEntryID;
}

uint64_t XboxHIDDevice::AsyncReadTimeoutOccurred_Impl(IOService *this, OSAction *a2)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    ClassName = OSMetaClassBase::GetClassName(this);
    *registryEntryID = 0;
    IOService::GetRegistryEntryID(this, registryEntryID, 0);
    v4 = *registryEntryID;
    v5 = *(this[1].ivars + 22);
    *registryEntryID = 136315650;
    *&registryEntryID[4] = ClassName;
    v8 = 2048;
    v9 = v4;
    v10 = 1024;
    v11 = v5;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[%s 0x%llx] TimerOccurred retry:%d\n", registryEntryID, 0x1Cu);
  }

  IOTimerDispatchSource::WakeAtTime(*(this[1].ivars + 19), 0, 0xFFFFFFFFFFFFFFFFLL, 0, 0);
  result = (this->OSObject::OSMetaClassBase::__vftable[2].Dispatch)(this);
  if (result)
  {
    return (this->OSObject::OSMetaClassBase::__vftable[2].init)(this, result);
  }

  return result;
}

uint64_t ___ZN13XboxHIDDevice29AsyncReadTimeoutOccurred_ImplEP8OSActiony_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  registryEntryID = 0;
  IOService::GetRegistryEntryID(v1, &registryEntryID, 0);
  return registryEntryID;
}

uint64_t ___ZN13XboxHIDDevice25CompleteAsyncReceive_ImplEP8OSActionijy_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  registryEntryID = 0;
  IOService::GetRegistryEntryID(v1, &registryEntryID, 0);
  return registryEntryID;
}

uint64_t ___ZN13XboxHIDDevice25CompleteAsyncReceive_ImplEP8OSActionijy_block_invoke_114(uint64_t a1)
{
  v1 = *(a1 + 32);
  registryEntryID = 0;
  IOService::GetRegistryEntryID(v1, &registryEntryID, 0);
  return registryEntryID;
}

uint64_t ___ZN13XboxHIDDevice25CompleteAsyncReceive_ImplEP8OSActionijy_block_invoke_116(uint64_t a1)
{
  v1 = *(a1 + 32);
  registryEntryID = 0;
  IOService::GetRegistryEntryID(v1, &registryEntryID, 0);
  return registryEntryID;
}

void XboxHIDDevice::CompleteAsyncSend_Impl(IOHIDDevice *this, OSAction *a2, IOReturn a3, uint32_t a4)
{
  Reference = OSAction::GetReference(a2);
  v9 = *Reference;
  v10 = *(Reference + 1);
  returnLength = 0;
  bytesTransferred = 0;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    ClassName = OSMetaClassBase::GetClassName(this);
    v25 = _NSConcreteStackBlock;
    v26 = 0x40000000;
    v27 = ___ZN13XboxHIDDevice22CompleteAsyncSend_ImplEP8OSActionijy_block_invoke;
    v28 = &__block_descriptor_tmp_118;
    v29 = this;
    *registryEntryID = 0;
    IOService::GetRegistryEntryID(this, registryEntryID, 0);
    v12 = *registryEntryID;
    *registryEntryID = 136315650;
    *&registryEntryID[4] = ClassName;
    v33 = 2048;
    v34 = v12;
    v35 = 1024;
    v36 = a3;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[%s 0x%llx] ::CompleteAsyncSend(%x)\n", registryEntryID, 0x1Cu);
  }

  if (v10)
  {
    v13 = v9 == 0;
  }

  else
  {
    v13 = 1;
  }

  if (v13)
  {
    XboxHIDDevice::CompleteAsyncSend_Impl(this, v24);
  }

  else
  {
    if (a3 == -536850432)
    {
      v14 = IOUSBHostPipe::ClearStall(this[1].IOService::OSObject::OSObjectInterface::__vftable[7].init, 1, 0);
      if (v14)
      {
        v15 = v14;
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          v16 = OSMetaClassBase::GetClassName(this);
          *registryEntryID = 0;
          IOService::GetRegistryEntryID(this, registryEntryID, 0);
          v17 = *registryEntryID;
          *registryEntryID = 136315650;
          *&registryEntryID[4] = v16;
          v33 = 2048;
          v34 = v17;
          v35 = 1024;
          v36 = v15;
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[%s 0x%llx] Could not clear stall: 0x%x\n", registryEntryID, 0x1Cu);
        }
      }
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v18 = OSMetaClassBase::GetClassName(this);
      *registryEntryID = 0;
      IOService::GetRegistryEntryID(this, registryEntryID, 0);
      v19 = *registryEntryID;
      *registryEntryID = 136315906;
      *&registryEntryID[4] = v18;
      v33 = 2048;
      v34 = v19;
      v35 = 1024;
      v36 = a3;
      v37 = 2048;
      v38 = a2;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[%s 0x%llx] CompleteAsyncSend:0x%x %p\n", registryEntryID, 0x26u);
    }

    if (a3)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        v22 = OSMetaClassBase::GetClassName(this);
        *registryEntryID = 0;
        IOService::GetRegistryEntryID(this, registryEntryID, 0);
        v23 = *registryEntryID;
        *registryEntryID = 136315650;
        *&registryEntryID[4] = v22;
        v33 = 2048;
        v34 = v23;
        v35 = 1024;
        v36 = a3;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[%s 0x%llx] CompleteAsyncSend:0x%x\n", registryEntryID, 0x1Cu);
      }
    }

    else
    {
      IOMemoryDescriptor::GetLength(v10, &returnLength);
      v20 = this[1].IOService::OSObject::OSObjectInterface::__vftable;
      free_low = LODWORD(v20[7].free);
      if (returnLength != free_low && !(returnLength % free_low) && returnLength != HIDWORD(v20[7].free))
      {
        IOUSBHostPipe::IO(v20[7].init, v20[8].free, 0, &bytesTransferred, 0, 0);
      }
    }

    IOHIDDevice::CompleteReport(this, v9, a3, a4, 0);
  }

  XboxHIDDevice::returnAction(this, a2);
}

uint64_t ___ZN13XboxHIDDevice22CompleteAsyncSend_ImplEP8OSActionijy_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  registryEntryID = 0;
  IOService::GetRegistryEntryID(v1, &registryEntryID, 0);
  return registryEntryID;
}

uint64_t ___ZN13XboxHIDDevice22CompleteAsyncSend_ImplEP8OSActionijy_block_invoke_119(uint64_t a1)
{
  v1 = *(a1 + 32);
  registryEntryID = 0;
  IOService::GetRegistryEntryID(v1, &registryEntryID, 0);
  return registryEntryID;
}

uint64_t ___ZN13XboxHIDDevice22CompleteAsyncSend_ImplEP8OSActionijy_block_invoke_121(uint64_t a1)
{
  v1 = *(a1 + 32);
  registryEntryID = 0;
  IOService::GetRegistryEntryID(v1, &registryEntryID, 0);
  return registryEntryID;
}

uint64_t ___ZN13XboxHIDDevice22CompleteAsyncSend_ImplEP8OSActionijy_block_invoke_123(uint64_t a1)
{
  v1 = *(a1 + 32);
  registryEntryID = 0;
  IOService::GetRegistryEntryID(v1, &registryEntryID, 0);
  return registryEntryID;
}

uint64_t ___ZN13XboxHIDDevice22CompleteAsyncSend_ImplEP8OSActionijy_block_invoke_125(uint64_t a1)
{
  v1 = *(a1 + 32);
  registryEntryID = 0;
  IOService::GetRegistryEntryID(v1, &registryEntryID, 0);
  return registryEntryID;
}

void XboxHIDDevice::returnAction(IOService *this, OSAction *a2)
{
  if (a2)
  {
    Reference = OSAction::GetReference(a2);
    if (*Reference)
    {
      (*(**Reference + 16))(*Reference);
      *Reference = 0;
    }

    v5 = Reference[1];
    if (v5)
    {
      (*(*v5 + 16))(v5);
      Reference[1] = 0;
    }

    *(Reference + 16) = 0;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      ClassName = OSMetaClassBase::GetClassName(this);
      *registryEntryID = 0;
      IOService::GetRegistryEntryID(this, registryEntryID, 0);
      v7 = *registryEntryID;
      *registryEntryID = 136315650;
      *&registryEntryID[4] = ClassName;
      v9 = 2048;
      v10 = v7;
      v11 = 2048;
      v12 = a2;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[%s 0x%llx] Return action: %p\n", registryEntryID, 0x20u);
    }
  }
}

OSAction *XboxHIDDevice::getAsyncSendAction(IOService *this)
{
  v2 = *(this[1].ivars + 16);
  if (!v2)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      ClassName = OSMetaClassBase::GetClassName(this);
      *registryEntryID = 0;
      IOService::GetRegistryEntryID(this, registryEntryID, 0);
      v16 = *registryEntryID;
      *registryEntryID = 136315394;
      *&registryEntryID[4] = ClassName;
      v26 = 2048;
      v27 = v16;
      v17 = "[%s 0x%llx] getAsyncSendAction\n";
      v18 = 22;
LABEL_22:
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v17, registryEntryID, v18);
      return 0;
    }

    return 0;
  }

  if (!(*(*v2 + 72))(v2))
  {
LABEL_6:
    v24 = 0;
    goto LABEL_7;
  }

  v3 = 0;
  while (1)
  {
    Object = OSArray::getObject(*(this[1].ivars + 16), v3);
    Reference = OSAction::GetReference(Object);
    if ((Reference[16] & 1) == 0)
    {
      break;
    }

    if (++v3 >= (*(**(this[1].ivars + 16) + 72))(*(this[1].ivars + 16)))
    {
      goto LABEL_6;
    }
  }

  v24 = Object;
  Reference[16] = 1;
  if (!Object)
  {
LABEL_7:
    v6 = XboxHIDDevice::CreateActionCompleteAsyncSend(this, 0x18uLL, &v24);
    if (v6)
    {
      v19 = v6;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        v20 = OSMetaClassBase::GetClassName(this);
        *registryEntryID = 0;
        IOService::GetRegistryEntryID(this, registryEntryID, 0);
        v21 = *registryEntryID;
        *registryEntryID = 136315650;
        *&registryEntryID[4] = v20;
        v26 = 2048;
        v27 = v21;
        v28 = 1024;
        LODWORD(v29) = v19;
        v17 = "[%s 0x%llx] CreateActionCompleteAsyncSend:%x\n";
LABEL_21:
        v18 = 28;
        goto LABEL_22;
      }
    }

    else
    {
      v7 = OSAction::GetReference(v24);
      *v7 = 0;
      v7[1] = 0;
      *(v7 + 16) = 1;
      v8 = OSArray::setObject(*(this[1].ivars + 16), v24);
      v9 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT);
      if (v8)
      {
        if (v9)
        {
          v10 = OSMetaClassBase::GetClassName(this);
          *registryEntryID = 0;
          IOService::GetRegistryEntryID(this, registryEntryID, 0);
          v12 = v24;
          v11 = *registryEntryID;
          v13 = (*(**(this[1].ivars + 16) + 72))(*(this[1].ivars + 16));
          *registryEntryID = 136315906;
          *&registryEntryID[4] = v10;
          v26 = 2048;
          v27 = v11;
          v28 = 2048;
          v29 = v12;
          v30 = 1024;
          v31 = v13;
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[%s 0x%llx] Add element %p to output action array: %u\n", registryEntryID, 0x26u);
        }

        (v24->release)(v24);
        return v24;
      }

      if (v9)
      {
        v22 = OSMetaClassBase::GetClassName(this);
        *registryEntryID = 0;
        IOService::GetRegistryEntryID(this, registryEntryID, 0);
        v23 = *registryEntryID;
        *registryEntryID = 136315650;
        *&registryEntryID[4] = v22;
        v26 = 2048;
        v27 = v23;
        v28 = 1024;
        LODWORD(v29) = -536870211;
        v17 = "[%s 0x%llx] Out actions array setObject:%x\n";
        goto LABEL_21;
      }
    }

    return 0;
  }

  return Object;
}

uint64_t ___ZN13XboxHIDDevice18getAsyncSendActionEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  registryEntryID = 0;
  IOService::GetRegistryEntryID(v1, &registryEntryID, 0);
  return registryEntryID;
}

uint64_t ___ZN13XboxHIDDevice18getAsyncSendActionEv_block_invoke_128(uint64_t a1)
{
  v1 = *(a1 + 32);
  registryEntryID = 0;
  IOService::GetRegistryEntryID(v1, &registryEntryID, 0);
  return registryEntryID;
}

uint64_t ___ZN13XboxHIDDevice18getAsyncSendActionEv_block_invoke_130(uint64_t a1)
{
  v1 = *(a1 + 32);
  registryEntryID = 0;
  IOService::GetRegistryEntryID(v1, &registryEntryID, 0);
  return registryEntryID;
}

uint64_t ___ZN13XboxHIDDevice18getAsyncSendActionEv_block_invoke_132(uint64_t a1)
{
  v1 = *(a1 + 32);
  registryEntryID = 0;
  IOService::GetRegistryEntryID(v1, &registryEntryID, 0);
  return registryEntryID;
}

uint64_t ___ZN13XboxHIDDevice12returnActionEP8OSAction_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  registryEntryID = 0;
  IOService::GetRegistryEntryID(v1, &registryEntryID, 0);
  return registryEntryID;
}

uint64_t ___ZN13XboxHIDDevice5resetEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  registryEntryID = 0;
  IOService::GetRegistryEntryID(v1, &registryEntryID, 0);
  return registryEntryID;
}

uint64_t ___ZN13XboxHIDDevice5resetEv_block_invoke_136(uint64_t a1)
{
  v1 = *(a1 + 32);
  registryEntryID = 0;
  IOService::GetRegistryEntryID(v1, &registryEntryID, 0);
  return registryEntryID;
}

uint64_t XboxHIDDevice::setReport(IOHIDDevice *this, IOMemoryDescriptor *a2, IOHIDReportType a3, unsigned int a4, unsigned int a5, OSAction *a6)
{
  v8 = 3758097086;
  returnLength = 0;
  if (this[1].IOService::OSObject::OSObjectInterface::__vftable[10].free)
  {
    v8 = 3758097111;
    goto LABEL_15;
  }

  if (!a6)
  {
    v8 = 3758097090;
    goto LABEL_15;
  }

  IOMemoryDescriptor::GetLength(a2, &returnLength);
  v10 = this[1].IOService::OSObject::OSObjectInterface::__vftable;
  if (!v10[7].init || !LODWORD(v10[7].free))
  {
    v8 = 3758097112;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      ClassName = OSMetaClassBase::GetClassName(this);
      *registryEntryID = 0;
      IOService::GetRegistryEntryID(this, registryEntryID, 0);
      v17 = *registryEntryID;
      *registryEntryID = 136315394;
      *&registryEntryID[4] = ClassName;
      v26 = 2048;
      v27 = v17;
      v18 = "[%s 0x%llx] Pipes not ready\n";
LABEL_14:
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v18, registryEntryID, 0x16u);
    }

LABEL_15:
    IOHIDDevice::CompleteReport(this, a6, v8, 0, 0);
    return v8;
  }

  AsyncSendAction = XboxHIDDevice::getAsyncSendAction(this);
  if (!AsyncSendAction)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v19 = OSMetaClassBase::GetClassName(this);
      *registryEntryID = 0;
      IOService::GetRegistryEntryID(this, registryEntryID, 0);
      v20 = *registryEntryID;
      *registryEntryID = 136315394;
      *&registryEntryID[4] = v19;
      v26 = 2048;
      v27 = v20;
      v18 = "[%s 0x%llx] No available action\n";
      goto LABEL_14;
    }

    goto LABEL_15;
  }

  v12 = AsyncSendAction;
  Reference = OSAction::GetReference(AsyncSendAction);
  *Reference = a6;
  Reference[1] = a2;
  (a2->retain)(a2);
  (a6->retain)(a6);
  v14 = IOUSBHostPipe::AsyncIO(this[1].IOService::OSObject::OSObjectInterface::__vftable[7].init, a2, returnLength, v12, 0, 0);
  v8 = 0;
  if (v14)
  {
    v21 = v14;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v22 = OSMetaClassBase::GetClassName(this);
      *registryEntryID = 0;
      IOService::GetRegistryEntryID(this, registryEntryID, 0);
      v23 = *registryEntryID;
      *registryEntryID = 136315906;
      *&registryEntryID[4] = v22;
      v26 = 2048;
      v27 = v23;
      v28 = 1024;
      v29 = returnLength;
      v30 = 1024;
      v31 = v21;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[%s 0x%llx] _outPipe->AsyncIO(%d):0x%x\n", registryEntryID, 0x22u);
    }

    IOHIDDevice::CompleteReport(this, a6, v21, 0, 0);
    XboxHIDDevice::returnAction(this, v12);
    return v21;
  }

  return v8;
}

uint64_t ___ZN13XboxHIDDevice9setReportEP18IOMemoryDescriptor15IOHIDReportTypejjP8OSAction_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  registryEntryID = 0;
  IOService::GetRegistryEntryID(v1, &registryEntryID, 0);
  return registryEntryID;
}

uint64_t ___ZN13XboxHIDDevice9setReportEP18IOMemoryDescriptor15IOHIDReportTypejjP8OSAction_block_invoke_139(uint64_t a1)
{
  v1 = *(a1 + 32);
  registryEntryID = 0;
  IOService::GetRegistryEntryID(v1, &registryEntryID, 0);
  return registryEntryID;
}

uint64_t ___ZN13XboxHIDDevice9setReportEP18IOMemoryDescriptor15IOHIDReportTypejjP8OSAction_block_invoke_141(uint64_t a1)
{
  v1 = *(a1 + 32);
  registryEntryID = 0;
  IOService::GetRegistryEntryID(v1, &registryEntryID, 0);
  return registryEntryID;
}

uint64_t ___ZN13XboxHIDDevice17copyStringAtIndexEht_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  registryEntryID = 0;
  IOService::GetRegistryEntryID(v1, &registryEntryID, 0);
  return registryEntryID;
}

void OUTLINED_FUNCTION_1_0(uint64_t a1@<X8>, float a2@<S0>)
{
  *(v5 - 144) = a2;
  *(v4 + 4) = v3;
  *(v5 - 132) = 2048;
  *(v4 + 14) = a1;
  *(v5 - 122) = 1024;
  *(v5 - 120) = v2;
}

uint64_t OUTLINED_FUNCTION_4_0()
{
  *(v1 - 144) = 0;

  return IOService::GetRegistryEntryID(v0, (v1 - 144), 0);
}

uint64_t OUTLINED_FUNCTION_5_0(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  *(v11 + 24) = v9;
  *(v11 + 32) = v10;
  a9 = 0;

  return IOService::GetRegistryEntryID(v10, &a9, 0);
}

uint64_t OUTLINED_FUNCTION_6(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t registryEntryID)
{
  registryEntryID = 0;

  return IOService::GetRegistryEntryID(v25, &registryEntryID, 0);
}

uint64_t OUTLINED_FUNCTION_8()
{
  v4 = *(v0 + 88);
  v5 = *(v4 + 48);
  v6 = *(v1 + 8);
  v7 = *(v4 + 72);

  return IOUSBHostPipe::AsyncIO(v5, v6, v7, v2, 0, 0);
}

void OUTLINED_FUNCTION_9(void *a1, os_log_s *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_impl(a1, a2, OS_LOG_TYPE_DEFAULT, a4, &a9, 0x16u);
}

void OUTLINED_FUNCTION_10(void *a1, os_log_s *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_impl(a1, a2, OS_LOG_TYPE_DEFAULT, a4, a5, 0x1Cu);
}

uint64_t OUTLINED_FUNCTION_12(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t registryEntryID)
{
  registryEntryID = 0;

  return IOService::GetRegistryEntryID(v21, &registryEntryID, 0);
}

BOOL Xbox360Gamepad::init(IOService *this)
{
  result = XboxHIDDevice::init(this);
  if (result && !this->ivars)
  {
    Xbox360Gamepad::init();
  }

  return result;
}

void Xbox360Gamepad::free(IOService *this)
{
  v2 = this[2].OSObject::OSMetaClassBase::__vftable;
  if (v2)
  {
    IOFree(v2, 1uLL);
    this[2].OSObject::OSMetaClassBase::__vftable = 0;
  }

  XboxHIDDevice::free(this);
}

uint64_t ___ZN14Xbox360Gamepad10Start_ImplEP9IOService_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  registryEntryID = 0;
  IOService::GetRegistryEntryID(v1, &registryEntryID, 0);
  return registryEntryID;
}

BOOL XboxOneSGamepad::init(IOService *this)
{
  result = XboxWirelessGamepad::init(this);
  if (result && !this->ivars)
  {
    XboxOneSGamepad::init();
  }

  return result;
}

BOOL XboxSeriesXGamepad::init(IOService *this)
{
  result = XboxWirelessGamepad::init(this);
  if (result && !this->ivars)
  {
    XboxSeriesXGamepad::init();
  }

  return result;
}

BOOL XboxEliteV2Gamepad::init(IOService *this)
{
  result = XboxWirelessGamepad::init(this);
  if (result && !this->ivars)
  {
    XboxEliteV2Gamepad::init();
  }

  return result;
}

BOOL XboxWirelessGamepad::init(IOService *this)
{
  result = XboxHIDDevice::init(this);
  if (result && !this->ivars)
  {
    XboxWirelessGamepad::init();
  }

  return result;
}

void XboxWirelessGamepad::free(IOService *this)
{
  v2 = this[2].OSObject::OSMetaClassBase::__vftable;
  if (v2)
  {
    IOFree(v2, 1uLL);
    this[2].OSObject::OSMetaClassBase::__vftable = 0;
  }

  XboxHIDDevice::free(this);
}

uint64_t ___ZN19XboxWirelessGamepad10Start_ImplEP9IOService_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  registryEntryID = 0;
  IOService::GetRegistryEntryID(v1, &registryEntryID, 0);
  return registryEntryID;
}

uint64_t ___ZN19XboxWirelessGamepad9setReportEP18IOMemoryDescriptor15IOHIDReportTypejjP8OSAction_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  registryEntryID = 0;
  IOService::GetRegistryEntryID(v1, &registryEntryID, 0);
  return registryEntryID;
}

uint64_t ___ZN19XboxWirelessGamepad9setReportEP18IOMemoryDescriptor15IOHIDReportTypejjP8OSAction_block_invoke_4(uint64_t a1)
{
  v1 = *(a1 + 32);
  registryEntryID = 0;
  IOService::GetRegistryEntryID(v1, &registryEntryID, 0);
  return registryEntryID;
}

uint64_t OUTLINED_FUNCTION_0_1(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t registryEntryID)
{
  registryEntryID = 0;

  return IOService::GetRegistryEntryID(v21, &registryEntryID, 0);
}

uint64_t XboxHIDDeviceMetaClass::New(XboxHIDDeviceMetaClass *this, OSObject *a2)
{
  a2->OSMetaClassBase::__vftable = &off_100011088;
  a2->OSObjectInterface::__vftable = off_100011140;
  *&a2[1].refcount = &off_100011160;
  a2[1].OSObjectInterface::__vftable = &off_100011190;
  a2[2].OSMetaClassBase::__vftable = &off_1000111B8;
  return 0;
}

uint64_t XboxHIDDevice::_Dispatch(IOUserHIDDevice *this, IORPCMessageMach **a2, IORPC *a3)
{
  msgid = IORPCMessageFromMach(*a2, 0)->msgid;
  if (msgid > 0xE5C9619006DC5EFLL)
  {
    switch(msgid)
    {
      case 0xE5C9619006DC5F0:
        if (!OSMetaClassBase::IsRemote(this))
        {
          v9 = *a2;
          v7 = gOSAction_XboxHIDDevice_CompleteAsyncSendMetaClass;
          v8 = XboxHIDDevice::CompleteAsyncSend_Impl;
          return IOUSBHostPipe::CompleteAsyncIO_Invoke(&v9, this, v8, v7);
        }

        break;
      case 0x4DC93D20F2BBA29ELL:
        if (!OSMetaClassBase::IsRemote(this))
        {
          v9 = *a2;
          return IOTimerDispatchSource::TimerOccurred_Invoke(&v9, this, XboxHIDDevice::AsyncReadTimeoutOccurred_Impl, gOSAction_XboxHIDDevice_AsyncReadTimeoutOccurredMetaClass);
        }

        break;
      case 0x60CC679B9C025AFELL:
        if (!OSMetaClassBase::IsRemote(this))
        {
          v9 = *a2;
          v7 = gOSAction_XboxHIDDevice_CompleteAsyncReceiveMetaClass;
          v8 = XboxHIDDevice::CompleteAsyncReceive_Impl;
          return IOUSBHostPipe::CompleteAsyncIO_Invoke(&v9, this, v8, v7);
        }

        break;
      default:
LABEL_15:
        v9 = *a2;
        return IOUserHIDDevice::_Dispatch(this, &v9);
    }

    v9 = *a2;
    return OSMetaClassBase::Dispatch(this, &v9);
  }

  if (msgid == 0x98E715041C459FA5)
  {
    v9 = *a2;
    return IOService::Stop_Invoke(&v9, this, XboxHIDDevice::Stop_Impl);
  }

  if (msgid != 0xAB6F76DDE6D693F2)
  {
    if (msgid == 0xD200FDE7D57ECCA6)
    {
      v9 = *a2;
      return IOService::SetPowerState_Invoke(&v9, this, XboxHIDDevice::SetPowerState_Impl);
    }

    goto LABEL_15;
  }

  v9 = *a2;
  return IOService::Start_Invoke(&v9, this, XboxHIDDevice::Start_Impl);
}

uint64_t XboxHIDDeviceMetaClass::Dispatch(OSMetaClassBase *this, IORPC *a2)
{
  IORPCMessageFromMach(a2->message, 0);
  v5 = *a2;
  return OSMetaClassBase::Dispatch(this, &v5);
}

uint64_t XboxHIDDevice::CreateActionAsyncReadTimeoutOccurred(OSObject *this, size_t a2, OSAction **a3)
{
  v6 = OSString::withCString("OSAction_XboxHIDDevice_AsyncReadTimeoutOccurred");
  if (!v6)
  {
    return 3758097085;
  }

  v7 = v6;
  v8 = OSAction::CreateWithTypeName(this, 0x4DC93D20F2BBA29EuLL, 0xF4AB1C3CBB5AE47uLL, a2, v6, a3);
  (v7->release)(v7);
  return v8;
}

uint64_t XboxHIDDevice::CreateActionCompleteAsyncReceive(OSObject *this, size_t a2, OSAction **a3)
{
  v6 = OSString::withCString("OSAction_XboxHIDDevice_CompleteAsyncReceive");
  if (!v6)
  {
    return 3758097085;
  }

  v7 = v6;
  v8 = OSAction::CreateWithTypeName(this, 0x60CC679B9C025AFEuLL, 0xC320A3EEA932C04ALL, a2, v6, a3);
  (v7->release)(v7);
  return v8;
}

uint64_t XboxHIDDevice::CreateActionCompleteAsyncSend(OSObject *this, size_t a2, OSAction **a3)
{
  v6 = OSString::withCString("OSAction_XboxHIDDevice_CompleteAsyncSend");
  if (!v6)
  {
    return 3758097085;
  }

  v7 = v6;
  v8 = OSAction::CreateWithTypeName(this, 0xE5C9619006DC5F0uLL, 0xC320A3EEA932C04ALL, a2, v6, a3);
  (v7->release)(v7);
  return v8;
}

uint64_t OSAction_XboxHIDDevice_AsyncReadTimeoutOccurredMetaClass::New(OSAction_XboxHIDDevice_AsyncReadTimeoutOccurredMetaClass *this, OSObject *a2)
{
  a2->OSMetaClassBase::__vftable = &off_100011240;
  a2->OSObjectInterface::__vftable = &off_100011288;
  return 0;
}

uint64_t OSAction_XboxHIDDevice_AsyncReadTimeoutOccurred::Dispatch(OSAction *this, IORPC *a2)
{
  message = a2->message;
  *&rpc.reply = *&a2->reply;
  IORPCMessageFromMach(message, 0);
  rpc.message = message;
  return OSAction::_Dispatch(this, &rpc);
}

uint64_t OSAction_XboxHIDDevice_AsyncReadTimeoutOccurred::_Dispatch(OSAction *this, IORPCMessageMach **a2, IORPC *a3)
{
  IORPCMessageFromMach(*a2, 0);
  v6 = *a2;
  return OSAction::_Dispatch(this, &v6);
}

uint64_t OSAction_XboxHIDDevice_AsyncReadTimeoutOccurredMetaClass::Dispatch(OSMetaClassBase *this, IORPC *a2)
{
  IORPCMessageFromMach(a2->message, 0);
  v5 = *a2;
  return OSMetaClassBase::Dispatch(this, &v5);
}

uint64_t OSAction_XboxHIDDevice_CompleteAsyncReceiveMetaClass::New(OSAction_XboxHIDDevice_CompleteAsyncReceiveMetaClass *this, OSObject *a2)
{
  a2->OSMetaClassBase::__vftable = &off_1000112E8;
  a2->OSObjectInterface::__vftable = &off_100011330;
  return 0;
}

uint64_t OSAction_XboxHIDDevice_CompleteAsyncReceive::Dispatch(OSAction *this, IORPC *a2)
{
  message = a2->message;
  *&rpc.reply = *&a2->reply;
  IORPCMessageFromMach(message, 0);
  rpc.message = message;
  return OSAction::_Dispatch(this, &rpc);
}

uint64_t OSAction_XboxHIDDevice_CompleteAsyncReceiveMetaClass::Dispatch(OSMetaClassBase *this, IORPC *a2)
{
  IORPCMessageFromMach(a2->message, 0);
  v5 = *a2;
  return OSMetaClassBase::Dispatch(this, &v5);
}

uint64_t OSAction_XboxHIDDevice_CompleteAsyncSendMetaClass::New(OSAction_XboxHIDDevice_CompleteAsyncSendMetaClass *this, OSObject *a2)
{
  a2->OSMetaClassBase::__vftable = &off_100011390;
  a2->OSObjectInterface::__vftable = &off_1000113D8;
  return 0;
}

uint64_t OSAction_XboxHIDDevice_CompleteAsyncSend::Dispatch(OSAction *this, IORPC *a2)
{
  message = a2->message;
  *&rpc.reply = *&a2->reply;
  IORPCMessageFromMach(message, 0);
  rpc.message = message;
  return OSAction::_Dispatch(this, &rpc);
}

uint64_t OSAction_XboxHIDDevice_CompleteAsyncSendMetaClass::Dispatch(OSMetaClassBase *this, IORPC *a2)
{
  IORPCMessageFromMach(a2->message, 0);
  v5 = *a2;
  return OSMetaClassBase::Dispatch(this, &v5);
}

uint64_t XboxUSBDeviceMetaClass::New(XboxUSBDeviceMetaClass *this, OSObject *a2)
{
  a2->OSMetaClassBase::__vftable = &off_1000114D8;
  a2->OSObjectInterface::__vftable = off_100011520;
  return 0;
}

uint64_t XboxUSBDevice::_Dispatch(IOService *this, IORPCMessageMach **a2, IORPC *a3)
{
  msgid = IORPCMessageFromMach(*a2, 0)->msgid;
  if (msgid == 0x98E715041C459FA5)
  {
    v7 = *a2;
    return IOService::Stop_Invoke(&v7, this, XboxUSBDevice::Stop_Impl);
  }

  else
  {
    v7 = *a2;
    if (msgid == 0xAB6F76DDE6D693F2)
    {
      return IOService::Start_Invoke(&v7, this, XboxUSBDevice::Start_Impl);
    }

    else
    {
      return IOService::_Dispatch(this, &v7);
    }
  }
}

uint64_t XboxUSBDeviceMetaClass::Dispatch(OSMetaClassBase *this, IORPC *a2)
{
  IORPCMessageFromMach(a2->message, 0);
  v5 = *a2;
  return OSMetaClassBase::Dispatch(this, &v5);
}

uint64_t Xbox360GamepadMetaClass::New(Xbox360GamepadMetaClass *this, OSObject *a2)
{
  a2->OSMetaClassBase::__vftable = &off_100011620;
  a2->OSObjectInterface::__vftable = off_1000116D8;
  *&a2[1].refcount = &off_1000116F8;
  a2[1].OSObjectInterface::__vftable = &off_100011728;
  a2[2].OSMetaClassBase::__vftable = &off_100011750;
  return 0;
}

uint64_t Xbox360Gamepad::_Dispatch(IOUserHIDDevice *this, IORPCMessageMach **a2, IORPC *a3)
{
  msgid = IORPCMessageFromMach(*a2, 0)->msgid;
  if (msgid == 0x98E715041C459FA5)
  {
    v8 = *a2;
    return IOService::Stop_Invoke(&v8, this, Xbox360Gamepad::Stop_Impl);
  }

  else
  {
    v8 = *a2;
    if (msgid == 0xAB6F76DDE6D693F2)
    {
      return IOService::Start_Invoke(&v8, this, Xbox360Gamepad::Start_Impl);
    }

    else
    {
      return XboxHIDDevice::_Dispatch(this, &v8.message, v5);
    }
  }
}

uint64_t Xbox360GamepadMetaClass::Dispatch(OSMetaClassBase *this, IORPC *a2)
{
  IORPCMessageFromMach(a2->message, 0);
  v5 = *a2;
  return OSMetaClassBase::Dispatch(this, &v5);
}

uint64_t XboxWirelessGamepadMetaClass::New(XboxWirelessGamepadMetaClass *this, OSObject *a2)
{
  a2->OSMetaClassBase::__vftable = &off_100011878;
  a2->OSObjectInterface::__vftable = off_100011930;
  *&a2[1].refcount = &off_100011950;
  a2[1].OSObjectInterface::__vftable = &off_100011980;
  a2[2].OSMetaClassBase::__vftable = &off_1000119A8;
  return 0;
}

uint64_t XboxWirelessGamepad::_Dispatch(IOUserHIDDevice *this, IORPCMessageMach **a2, IORPC *a3)
{
  msgid = IORPCMessageFromMach(*a2, 0)->msgid;
  if (msgid == 0x98E715041C459FA5)
  {
    v8 = *a2;
    return IOService::Stop_Invoke(&v8, this, XboxWirelessGamepad::Stop_Impl);
  }

  else
  {
    v8 = *a2;
    if (msgid == 0xAB6F76DDE6D693F2)
    {
      return IOService::Start_Invoke(&v8, this, XboxWirelessGamepad::Start_Impl);
    }

    else
    {
      return XboxHIDDevice::_Dispatch(this, &v8.message, v5);
    }
  }
}

uint64_t XboxWirelessGamepadMetaClass::Dispatch(OSMetaClassBase *this, IORPC *a2)
{
  IORPCMessageFromMach(a2->message, 0);
  v5 = *a2;
  return OSMetaClassBase::Dispatch(this, &v5);
}

uint64_t XboxSeriesXGamepadMetaClass::New(XboxSeriesXGamepadMetaClass *this, OSObject *a2)
{
  a2->OSMetaClassBase::__vftable = &off_100011AD0;
  a2->OSObjectInterface::__vftable = off_100011B88;
  *&a2[1].refcount = &off_100011BA8;
  a2[1].OSObjectInterface::__vftable = &off_100011BD8;
  a2[2].OSMetaClassBase::__vftable = &off_100011C00;
  return 0;
}

uint64_t XboxSeriesXGamepad::_Dispatch(IOUserHIDDevice *this, IORPCMessageMach **a2, IORPC *a3)
{
  msgid = IORPCMessageFromMach(*a2, 0)->msgid;
  if (msgid == 0x98E715041C459FA5)
  {
    v8 = *a2;
    return IOService::Stop_Invoke(&v8, this, XboxSeriesXGamepad::Stop_Impl);
  }

  else
  {
    v8 = *a2;
    if (msgid == 0xAB6F76DDE6D693F2)
    {
      return IOService::Start_Invoke(&v8, this, XboxSeriesXGamepad::Start_Impl);
    }

    else
    {
      return XboxWirelessGamepad::_Dispatch(this, &v8.message, v5);
    }
  }
}

uint64_t XboxSeriesXGamepadMetaClass::Dispatch(OSMetaClassBase *this, IORPC *a2)
{
  IORPCMessageFromMach(a2->message, 0);
  v5 = *a2;
  return OSMetaClassBase::Dispatch(this, &v5);
}

uint64_t XboxEliteV2GamepadMetaClass::New(XboxEliteV2GamepadMetaClass *this, OSObject *a2)
{
  a2->OSMetaClassBase::__vftable = &off_100011D28;
  a2->OSObjectInterface::__vftable = off_100011DE0;
  *&a2[1].refcount = &off_100011E00;
  a2[1].OSObjectInterface::__vftable = &off_100011E30;
  a2[2].OSMetaClassBase::__vftable = &off_100011E58;
  return 0;
}

uint64_t XboxEliteV2Gamepad::_Dispatch(IOUserHIDDevice *this, IORPCMessageMach **a2, IORPC *a3)
{
  msgid = IORPCMessageFromMach(*a2, 0)->msgid;
  if (msgid == 0x98E715041C459FA5)
  {
    v8 = *a2;
    return IOService::Stop_Invoke(&v8, this, XboxEliteV2Gamepad::Stop_Impl);
  }

  else
  {
    v8 = *a2;
    if (msgid == 0xAB6F76DDE6D693F2)
    {
      return IOService::Start_Invoke(&v8, this, XboxEliteV2Gamepad::Start_Impl);
    }

    else
    {
      return XboxWirelessGamepad::_Dispatch(this, &v8.message, v5);
    }
  }
}

uint64_t XboxEliteV2GamepadMetaClass::Dispatch(OSMetaClassBase *this, IORPC *a2)
{
  IORPCMessageFromMach(a2->message, 0);
  v5 = *a2;
  return OSMetaClassBase::Dispatch(this, &v5);
}

uint64_t XboxOneSGamepadMetaClass::New(XboxOneSGamepadMetaClass *this, OSObject *a2)
{
  a2->OSMetaClassBase::__vftable = &off_100011F80;
  a2->OSObjectInterface::__vftable = off_100012038;
  *&a2[1].refcount = &off_100012058;
  a2[1].OSObjectInterface::__vftable = &off_100012088;
  a2[2].OSMetaClassBase::__vftable = &off_1000120B0;
  return 0;
}

uint64_t XboxOneSGamepad::_Dispatch(IOUserHIDDevice *this, IORPCMessageMach **a2, IORPC *a3)
{
  msgid = IORPCMessageFromMach(*a2, 0)->msgid;
  if (msgid == 0x98E715041C459FA5)
  {
    v8 = *a2;
    return IOService::Stop_Invoke(&v8, this, XboxOneSGamepad::Stop_Impl);
  }

  else
  {
    v8 = *a2;
    if (msgid == 0xAB6F76DDE6D693F2)
    {
      return IOService::Start_Invoke(&v8, this, XboxOneSGamepad::Start_Impl);
    }

    else
    {
      return XboxWirelessGamepad::_Dispatch(this, &v8.message, v5);
    }
  }
}

uint64_t XboxOneSGamepadMetaClass::Dispatch(OSMetaClassBase *this, IORPC *a2)
{
  IORPCMessageFromMach(a2->message, 0);
  v5 = *a2;
  return OSMetaClassBase::Dispatch(this, &v5);
}

uint64_t XboxUSBDevice::Start_Impl(XboxUSBDevice *this, IOService *anObject)
{
  v3 = this;
  properties = 0;
  **(this + 6) = OSMetaClassBase::safeMetaCast(anObject, gIOUSBHostDeviceMetaClass);
  if (!**(v3 + 6))
  {
    v38 = 3758097084;
    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      return v38;
    }

    OSMetaClassBase::GetClassName(v3);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0(*registryEntryID, 4.8151e-34);
LABEL_40:
    OUTLINED_FUNCTION_3();
    _os_log_impl(v47, v48, v49, v50, v51, 0x16u);
    return v38;
  }

  OUTLINED_FUNCTION_2();
  v5 = IOService::Start(v3, anObject, v4);
  if (v5)
  {
    return v5;
  }

  OUTLINED_FUNCTION_2();
  v7 = IOService::CopyProperties(v3, &properties, v6);
  if (v7 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    OSMetaClassBase::GetClassName(v3);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0(*registryEntryID, 4.8152e-34);
    OUTLINED_FUNCTION_5();
    v71 = v7;
    OUTLINED_FUNCTION_3();
    _os_log_impl(v8, v9, v10, v11, v12, 0x1Cu);
  }

  v13 = OUTLINED_FUNCTION_4(*(v3 + 6));
  v15 = (*(v14 + 64))(v13);
  if (!v15)
  {
    v38 = 3758097086;
    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      return v38;
    }

    OSMetaClassBase::GetClassName(v3);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0(*registryEntryID, 4.8151e-34);
    goto LABEL_40;
  }

  v16 = v15;
  v17 = *(v15 + 17);
  if (v17)
  {
    v18 = OSArray::withCapacity(v17);
    if (v18)
    {
      v19 = v18;
      v20 = v3;
      v66 = v7;
      if (v16->bNumConfigurations)
      {
        v21 = 0;
        while (1)
        {
          v22 = OUTLINED_FUNCTION_4(*(v20 + 6));
          v24 = (*(v23 + 72))(v22, v21);
          if (!v24)
          {
            break;
          }

          v25 = v24;
          v26 = OSDictionaryCreate();
          if (v26)
          {
            v27 = v26;
            OSDictionarySetUInt64Value(v26, "bLength", v25->bLength);
            OSDictionarySetUInt64Value(v27, "bDescriptorType", v25->bDescriptorType);
            OSDictionarySetUInt64Value(v27, "wTotalLength", v25->wTotalLength);
            OSDictionarySetUInt64Value(v27, "bNumInterfaces", v25->bNumInterfaces);
            OSDictionarySetUInt64Value(v27, "bConfigurationValue", v25->bConfigurationValue);
            OSDictionarySetUInt64Value(v27, "iConfiguration", v25->iConfiguration);
            OSDictionarySetUInt64Value(v27, "bmAttributes", v25->bmAttributes);
            OSDictionarySetUInt64Value(v27, "MaxPower", v25->MaxPower);
            OSArray::setObject(v19, v27);
            (v27->release)(v27);
          }

          IOUSBHostFreeDescriptor(v25);
          if (v16->bNumConfigurations <= ++v21)
          {
            goto LABEL_15;
          }
        }

        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          ClassName = OSMetaClassBase::GetClassName(v20);
          *registryEntryID = 0;
          IOService::GetRegistryEntryID(v20, registryEntryID, 0);
          v41 = *registryEntryID;
          *registryEntryID = 136315650;
          *&registryEntryID[4] = ClassName;
          v69 = 2048;
          v70 = v41;
          OUTLINED_FUNCTION_5();
          v71 = v21;
          OUTLINED_FUNCTION_3();
          _os_log_impl(v42, v43, v44, v45, v46, 0x1Cu);
        }

        v38 = v66;
        goto LABEL_30;
      }

LABEL_15:
      v28 = OSDictionaryCreate();
      v3 = v20;
      if (v28)
      {
        v29 = v28;
        OSDictionarySetValue(v28, "Configurations", v19);
        IOService::SetProperties(v20, v29, 0);
        (v29->release)(v29);
      }

      (v19->release)(v19);
    }

    if (properties && (Value = OSDictionaryGetValue(properties, "kUSBPreferredConfiguration"), (v31 = OSMetaClassBase::safeMetaCast(Value, gOSNumberMetaClass)) != 0))
    {
      v32 = OSNumber::unsigned8BitValue(v31);
    }

    else
    {
      v32 = 0;
    }

    v33 = IOUSBHostDevice::Open(**(v3 + 6), v3, 0, 0, 0);
    if (v33)
    {
      v38 = v33;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        OSMetaClassBase::GetClassName(v3);
        OUTLINED_FUNCTION_1();
        OUTLINED_FUNCTION_0(*registryEntryID, 4.8152e-34);
        OUTLINED_FUNCTION_5();
        v71 = v38;
        OUTLINED_FUNCTION_3();
        v57 = 28;
LABEL_49:
        _os_log_impl(v52, v53, v54, v55, v56, v57);
      }
    }

    else
    {
      if (v32)
      {
        v34 = 0;
        goto LABEL_27;
      }

      v35 = OUTLINED_FUNCTION_4(*(v3 + 6));
      v37 = (*(v36 + 72))(v35, 0);
      if (v37)
      {
        v34 = v37;
        v32 = *(v37 + 5);
LABEL_27:
        v38 = IOUSBHostDevice::SetConfiguration(**(v3 + 6), v32, 1, 0);
        if (v38 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          v58 = OSMetaClassBase::GetClassName(v3);
          OUTLINED_FUNCTION_1();
          v59 = *registryEntryID;
          *registryEntryID = 136315906;
          *&registryEntryID[4] = v58;
          v69 = 2048;
          v70 = v59;
          OUTLINED_FUNCTION_5();
          v71 = v32;
          v72 = v60;
          v73 = v38;
          OUTLINED_FUNCTION_3();
          _os_log_impl(v61, v62, v63, v64, v65, 0x22u);
        }

        if (v34)
        {
          IOUSBHostFreeDescriptor(v34);
        }

        goto LABEL_30;
      }

      v38 = 3758097086;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_48;
      }
    }
  }

  else
  {
    v38 = 3758097129;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
LABEL_48:
      OSMetaClassBase::GetClassName(v3);
      OUTLINED_FUNCTION_1();
      OUTLINED_FUNCTION_0(*registryEntryID, 4.8151e-34);
      OUTLINED_FUNCTION_3();
      v57 = 22;
      goto LABEL_49;
    }
  }

LABEL_30:
  IOUSBHostFreeDescriptor(v16);
  return v38;
}

OSMetaClassBase *XboxHIDDevice::newMaxInboundTransferSize(IOService *this)
{
  properties = 0;
  v3 = IOService::CopyProperties(this, &properties, &IOUserHIDDevice::_Dispatch);
  if (v3)
  {
    v8 = v3;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      OSMetaClassBase::GetClassName(this);
      OUTLINED_FUNCTION_3_0();
      *registryEntryID = 0;
      IOService::GetRegistryEntryID(this, registryEntryID, 0);
      v9 = *registryEntryID;
      *registryEntryID = 136315650;
      *&registryEntryID[4] = v1;
      v13 = 2048;
      v14 = v9;
      v15 = 1024;
      v16 = v8;
      OUTLINED_FUNCTION_10(&_mh_execute_header, &_os_log_default, v10, "[%s 0x%llx] Failed to obtain HIDDevice properties. CopyProperties() returned %{mach.errno}x\n", registryEntryID);
    }

    v5 = 0;
  }

  else
  {
    Value = OSDictionaryGetValue(properties, "MaxInputReportSize");
    v5 = OSMetaClassBase::safeMetaCast(Value, gOSNumberMetaClass);
    if (v5)
    {
      OUTLINED_FUNCTION_11();
      (*(v6 + 8))(v5);
    }
  }

  if (properties)
  {
    (properties->release)(properties);
  }

  return v5;
}

uint64_t XboxHIDDevice::scheduleAsyncReceive(OSMetaClassBase *this)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    ClassName = OSMetaClassBase::GetClassName(this);
    OUTLINED_FUNCTION_12(ClassName, v3, v4, v5, v6, v7, v8, v9, v33, v34, v35, v36, v37, v38, v39, _NSConcreteStackBlock, 0x40000000, ___ZN13XboxHIDDevice20scheduleAsyncReceiveEv_block_invoke, &__block_descriptor_tmp_99, this, *buf);
    v10 = *buf;
    *buf = 136315394;
    *&buf[4] = ClassName;
    v46 = 2048;
    v47 = v10;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[%s 0x%llx] ::scheduleAsyncReceive()\n", buf, 0x16u);
  }

  meta = this[3].meta;
  if ((meta[5].refcount & 1) == 0)
  {
    v12 = meta[3].__vftable;
    if (v12)
    {
      v13 = 0;
      if (!(*(v12->getMetaClass + 9))(v12))
      {
        v15 = 1;
        goto LABEL_19;
      }

      v14 = 0;
      HIDWORD(v34) = -536870206;
      v15 = 1;
      while (1)
      {
        Object = OSArray::getObject(this[3].meta[3].__vftable, v14);
        v17 = OSMetaClassBase::safeMetaCast(Object, gOSActionMetaClass);
        if (!v17)
        {
          v13 = -536870206;
          goto LABEL_19;
        }

        Reference = OSAction::GetReference(v17);
        if ((Reference[16] & 1) == 0)
        {
          break;
        }

LABEL_16:
        if (++v14 >= (*(this[3].meta[3].getMetaClass + 9))(this[3].meta[3].__vftable))
        {
          goto LABEL_19;
        }
      }

      v19 = Reference;
      v13 = OUTLINED_FUNCTION_8();
      if (v13 == -536850432)
      {
        v20 = IOUSBHostPipe::ClearStall(this[3].meta[1].meta, 0, 0);
        if (v20)
        {
          v13 = v20;
LABEL_14:
          v15 = 0;
          goto LABEL_16;
        }

        v13 = OUTLINED_FUNCTION_8();
      }

      if (!v13)
      {
        v19[16] = 1;
        goto LABEL_16;
      }

      goto LABEL_14;
    }
  }

  v15 = 1;
  v13 = -536870185;
LABEL_19:
  if ((v13 != 0) | v15 & 1)
  {
    v21 = v13;
  }

  else
  {
    v21 = 3758097084;
  }

  if (v21 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v22 = OSMetaClassBase::GetClassName(this);
    OUTLINED_FUNCTION_12(v22, v23, v24, v25, v26, v27, v28, v29, v33, v34, _NSConcreteStackBlock, 0x40000000, ___ZN13XboxHIDDevice20scheduleAsyncReceiveEv_block_invoke_100, &__block_descriptor_tmp_101, this, v40, v41, v42, v43, v44, *buf);
    v30 = *buf;
    *buf = 136315650;
    *&buf[4] = v22;
    v46 = 2048;
    v47 = v30;
    v48 = 1024;
    v49 = v21;
    OUTLINED_FUNCTION_10(&_mh_execute_header, &_os_log_default, v31, "[%s 0x%llx] scheduleAsyncReceive:0x%x\n", buf);
  }

  return v21;
}

void XboxHIDDevice::scheduleAsyncRecieveRetry(OSMetaClassBase *this, int a2)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    OSMetaClassBase::GetClassName(this);
    OUTLINED_FUNCTION_4_0();
    OUTLINED_FUNCTION_1_0(*buf, 4.8152e-34);
    OUTLINED_FUNCTION_10(&_mh_execute_header, &_os_log_default, v4, "[%s 0x%llx] ::scheduleAsyncRecieveRetry(%x)\n", buf);
  }

  meta = this[3].meta;
  if ((meta[5].refcount & 1) == 0)
  {
    metaClassPrivate = meta[2].metaClassPrivate;
    if (metaClassPrivate)
    {
      if (a2 == -536870165)
      {
        v7 = (1000 * HIDWORD(meta[2].meta));
LABEL_12:
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          ClassName = OSMetaClassBase::GetClassName(this);
          OUTLINED_FUNCTION_4_0();
          v10 = *buf;
          v11 = this[3].meta[2].metaClassPrivate;
          *buf = 136316162;
          *&buf[4] = ClassName;
          v15 = 2048;
          v16 = v10;
          v17 = 1024;
          v18 = a2;
          v19 = 1024;
          v20 = v11;
          v21 = 2048;
          v22 = v7 / 0xF4240;
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[%s 0x%llx] Schedule retry reason:0x%x count:%d deadline:%llums\n", buf, 0x2Cu);
        }

        v12 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
        if (IOTimerDispatchSource::WakeAtTime(this[3].meta[4].metaClassPrivate, 0x88uLL, v12 + v7, 0, 0))
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
          {
            OSMetaClassBase::GetClassName(this);
            OUTLINED_FUNCTION_3_0();
            OUTLINED_FUNCTION_4_0();
            OUTLINED_FUNCTION_1_0(*buf, 4.8152e-34);
            OUTLINED_FUNCTION_10(&_mh_execute_header, &_os_log_default, v13, "[%s 0x%llx] WakeAtTime:0x%x\n", buf);
          }
        }

        return;
      }

LABEL_11:
      LODWORD(meta[2].metaClassPrivate) = metaClassPrivate - 1;
      v7 = 50000000;
      goto LABEL_12;
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      OSMetaClassBase::GetClassName(this);
      OUTLINED_FUNCTION_4_0();
      OUTLINED_FUNCTION_1_0(*buf, 4.8153e-34);
      v19 = v8;
      v20 = a2 != -536870165;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[%s 0x%llx] Retries exhausted, reason:0x%x, wantsReset:%d\n\n", buf, 0x22u);
    }

    if (a2 != -536870165)
    {
      XboxHIDDevice::reset(this);
      LODWORD(this[3].meta[2].metaClassPrivate) = 10;
      meta = this[3].meta;
      metaClassPrivate = meta[2].metaClassPrivate;
      goto LABEL_11;
    }
  }
}

void XboxHIDDevice::CompleteAsyncReceive_Impl(OSMetaClassBase *this, OSAction *a2, uint64_t a3, unsigned int a4, uint64_t a5)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    ClassName = OSMetaClassBase::GetClassName(this);
    OUTLINED_FUNCTION_6(ClassName, v11, v12, v13, v14, v15, v16, v17, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, _NSConcreteStackBlock, 0x40000000, ___ZN13XboxHIDDevice25CompleteAsyncReceive_ImplEP8OSActionijy_block_invoke, &__block_descriptor_tmp_113, this, *buf);
    v18 = *buf;
    *buf = 136315650;
    *&buf[4] = ClassName;
    OUTLINED_FUNCTION_7(v18);
    OUTLINED_FUNCTION_10(&_mh_execute_header, &_os_log_default, v19, "[%s 0x%llx] ::CompleteAsyncReceive(%x)\n", buf);
  }

  Reference = OSAction::GetReference(a2);
  Reference[16] = 0;
  if (a3)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v21 = OSMetaClassBase::GetClassName(this);
      OUTLINED_FUNCTION_6(v21, v22, v23, v24, v25, v26, v27, v28, v47, v48, v49, v50, v51, v52, _NSConcreteStackBlock, 0x40000000, ___ZN13XboxHIDDevice25CompleteAsyncReceive_ImplEP8OSActionijy_block_invoke_114, &__block_descriptor_tmp_115, this, v58, v59, v60, v61, v62, *buf);
      v29 = *buf;
      *buf = 136315650;
      *&buf[4] = v21;
      OUTLINED_FUNCTION_7(v29);
      OUTLINED_FUNCTION_10(&_mh_execute_header, &_os_log_default, v30, "[%s 0x%llx] CompleteInReport:0x%x\n", buf);
    }

    if (this[3].meta[5].refcount)
    {
      return;
    }

LABEL_15:
    (this->__vftable[3].Dispatch)(this, a3);
    return;
  }

  if ((this[3].meta[5].refcount & 1) == 0)
  {
    v31 = Reference;
    OUTLINED_FUNCTION_11();
    (*(v32 + 160))(this);
    if (*&this[3].meta[2].refcount >= a4)
    {
      v43 = *(v31 + 1);
      OUTLINED_FUNCTION_11();
      (*(v44 + 112))(this, a5);
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v33 = OSMetaClassBase::GetClassName(this);
      OUTLINED_FUNCTION_6(v33, v34, v35, v36, v37, v38, v39, v40, v47, _NSConcreteStackBlock, 0x40000000, ___ZN13XboxHIDDevice25CompleteAsyncReceive_ImplEP8OSActionijy_block_invoke_116, &__block_descriptor_tmp_117, this, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, *buf);
      v41 = *buf;
      v42 = *&this[3].meta[2].refcount;
      *buf = 136315906;
      *&buf[4] = v33;
      v64 = 2048;
      v65 = v41;
      v66 = 1024;
      v67 = a4;
      v68 = 1024;
      v69 = v42;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[%s 0x%llx] CompleteAsyncReceive actualByteCount:%d inBufferSize:%d\n", buf, 0x22u);
    }

    OUTLINED_FUNCTION_11();
    v46 = (*(v45 + 144))(this);
    if (v46)
    {
      a3 = v46;
      goto LABEL_15;
    }
  }
}

void XboxHIDDevice::handleStart(OSMetaClassBase *a1, uint64_t a2)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    OSMetaClassBase::GetClassName(a1);
    OUTLINED_FUNCTION_0_0();
    *(a2 + 8) = 0x40000000;
    *(a2 + 16) = ___ZN13XboxHIDDevice11handleStartEP9IOService_block_invoke_58;
    OUTLINED_FUNCTION_5_0(v4, v5, v6, v7, v8, v9, v10, v11, v17);
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_9(&_mh_execute_header, &_os_log_default, v12, "[%s 0x%llx] missing outPipe\n", v13, v14, v15, v16, v18);
  }
}

{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    OSMetaClassBase::GetClassName(a1);
    OUTLINED_FUNCTION_0_0();
    *(a2 + 8) = 0x40000000;
    *(a2 + 16) = ___ZN13XboxHIDDevice11handleStartEP9IOService_block_invoke_56;
    OUTLINED_FUNCTION_5_0(v4, v5, v6, v7, v8, v9, v10, v11, v17);
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_9(&_mh_execute_header, &_os_log_default, v12, "[%s 0x%llx] missing inPipe\n", v13, v14, v15, v16, v18);
  }
}

void XboxHIDDevice::CompleteAsyncSend_Impl(OSMetaClassBase *a1, uint64_t a2)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    OSMetaClassBase::GetClassName(a1);
    OUTLINED_FUNCTION_0_0();
    *(a2 + 8) = 0x40000000;
    *(a2 + 16) = ___ZN13XboxHIDDevice22CompleteAsyncSend_ImplEP8OSActionijy_block_invoke_119;
    OUTLINED_FUNCTION_5_0(v4, v5, v6, v7, v8, v9, v10, v11, v17);
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_9(&_mh_execute_header, &_os_log_default, v12, "[%s 0x%llx] ComleteOutputReport: Missing completion info, cannot complete callback.\n", v13, v14, v15, v16, v18);
  }
}

uint64_t Xbox360Gamepad::Start_Impl(IOService *this, IOService *a2)
{
  v3 = IOService::Start(this, a2, XboxHIDDevice::_Dispatch);
  if (v3)
  {
    return v3;
  }

  v4 = IOService::RegisterService(this, 0);
  if (v4 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    ClassName = OSMetaClassBase::GetClassName(this);
    *registryEntryID = 0;
    IOService::GetRegistryEntryID(this, registryEntryID, 0);
    v7 = *registryEntryID;
    *registryEntryID = 136315650;
    *&registryEntryID[4] = ClassName;
    v9 = 2048;
    v10 = v7;
    v11 = 1024;
    v12 = v4;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[%s 0x%llx] Could not register service: %{mach.errno}d\n", registryEntryID, 0x1Cu);
  }

  return v4;
}

uint64_t Xbox360Gamepad::setReport(IOHIDDevice *this, IOMemoryDescriptor *a2, IOHIDReportType a3, unsigned int a4, unsigned int a5, OSAction *a6)
{
  v6 = 3758097090;
  returnLength = 0;
  if (a3 != kIOHIDReportTypeOutput)
  {
    return 3758097095;
  }

  IOMemoryDescriptor::GetLength(a2, &returnLength);
  if (a4 == 1)
  {
    if (returnLength != 3)
    {
      return v6;
    }

    return XboxHIDDevice::setReport(this, a2, kIOHIDReportTypeOutput, a4, a5, a6);
  }

  if (!a4 && returnLength == 8)
  {
    return XboxHIDDevice::setReport(this, a2, kIOHIDReportTypeOutput, a4, a5, a6);
  }

  return v6;
}

uint64_t XboxWirelessGamepad::Start_Impl(IOService *this, IOService *a2)
{
  v3 = IOService::Start(this, a2, XboxHIDDevice::_Dispatch);
  if (v3)
  {
    return v3;
  }

  v4 = IOService::RegisterService(this, 0);
  if (v4 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    ClassName = OSMetaClassBase::GetClassName(this);
    *registryEntryID = 0;
    IOService::GetRegistryEntryID(this, registryEntryID, 0);
    v7 = *registryEntryID;
    *registryEntryID = 136315650;
    *&registryEntryID[4] = ClassName;
    v9 = 2048;
    v10 = v7;
    v11 = 1024;
    v12 = v4;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[%s 0x%llx] RegisterService:0x%x\n\n", registryEntryID, 0x1Cu);
  }

  return v4;
}

uint64_t XboxWirelessGamepad::setReport(IOHIDDevice *this, IOMemoryDescriptor *a2, IOHIDReportType a3, unsigned int a4, unsigned int a5, OSAction *a6)
{
  v6 = 3758097090;
  map = 0;
  returnLength = 0;
  if (a3 != kIOHIDReportTypeOutput)
  {
    return 3758097095;
  }

  v12 = IOMemoryDescriptor::CreateMapping(a2, 2uLL, 0, 0, 0, 0, &map, 0);
  v13 = map;
  v14 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT);
  if (v12 || !v13)
  {
    if (v14)
    {
      ClassName = OSMetaClassBase::GetClassName(this);
      OUTLINED_FUNCTION_0_1(ClassName, v28, v29, v30, v31, v32, v33, v34, _NSConcreteStackBlock, 0x40000000, ___ZN19XboxWirelessGamepad9setReportEP18IOMemoryDescriptor15IOHIDReportTypejjP8OSAction_block_invoke_4, &__block_descriptor_tmp_5_0, this, v42, v43, v44, v45, v46, map, returnLength, *buf);
      v35 = *buf;
      *buf = 136315650;
      *&buf[4] = ClassName;
      v50 = 2048;
      v51 = v35;
      v52 = 1024;
      v53 = v12;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[%s 0x%llx] CreateMapping:0x%x\n\n", buf, 0x1Cu);
    }
  }

  else
  {
    if (v14)
    {
      v15 = OSMetaClassBase::GetClassName(this);
      OUTLINED_FUNCTION_0_1(v15, v16, v17, v18, v19, v20, v21, v22, v37, v38, v39, v40, v41, _NSConcreteStackBlock, 0x40000000, ___ZN19XboxWirelessGamepad9setReportEP18IOMemoryDescriptor15IOHIDReportTypejjP8OSAction_block_invoke, &__block_descriptor_tmp_3, this, map, returnLength, *buf);
      v23 = *buf;
      Length = IOMemoryMap::GetLength(map);
      Address = IOMemoryMap::GetAddress(map);
      v26 = IOMemoryMap::GetLength(map);
      *buf = 136316163;
      *&buf[4] = v15;
      v50 = 2048;
      v51 = v23;
      v52 = 1040;
      v53 = Length;
      v54 = 2097;
      v55 = Address;
      v56 = 2048;
      v57 = v26;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[%s 0x%llx] %{private}.*P (%{bytes}llu)\n", buf, 0x30u);
      v13 = map;
    }

    (v13->free)(v13);
  }

  IOMemoryDescriptor::GetLength(a2, &returnLength);
  if (a4 == 5)
  {
    if (returnLength != 5)
    {
      return v6;
    }

    return XboxHIDDevice::setReport(this, a2, kIOHIDReportTypeOutput, a4, a5, a6);
  }

  if (a4 == 1 && returnLength == 13)
  {
    return XboxHIDDevice::setReport(this, a2, kIOHIDReportTypeOutput, a4, a5, a6);
  }

  return v6;
}