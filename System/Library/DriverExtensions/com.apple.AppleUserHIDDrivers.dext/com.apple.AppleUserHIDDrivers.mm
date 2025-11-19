BOOL AppleUserUSBHostHIDDevice::init(IOUserUSBHostHIDDevice *this)
{
  v2 = IOUserUSBHostHIDDevice::init(this);
  if (v2)
  {
    if (!this->ivars)
    {
      sub_1000021DC();
    }
  }

  else
  {
    sub_100002128();
  }

  return v2;
}

uint64_t AppleUserUSBHostHIDDevice::Start_Impl(IOService *this, IOService *a2)
{
  v4 = 3758097095;
  v22 = 0;
  properties = 0;
  IOParseBootArgNumber("AppleUserUSBHostHIDDevice-debug", &v22, 4);
  if (v22)
  {
    return v4;
  }

  v5 = IOService::Start(this, a2, &IOUserUSBHostHIDDevice::_Dispatch);
  if (v5)
  {
    sub_100002208(v5, __str);
    v4 = *__str;
    goto LABEL_21;
  }

  if (!IOService::CopyProperties(this, &properties, &IOUserUSBHostHIDDevice::_Dispatch))
  {
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v31 = 0u;
    memset(__str, 0, sizeof(__str));
    if (IOParseBootArgString("AppleUserUSBHostHIDDevice-blacklist", __str, 256))
    {
      __endptr = __str;
      UInt64Value = OSDictionaryGetUInt64Value(properties, "VendorID");
      v7 = UInt64Value | (OSDictionaryGetUInt64Value(properties, "ProductID") << 16);
      while (strtoull(__str, &__endptr, 0) != v7)
      {
        if (__endptr <= __str || !*__endptr)
        {
          goto LABEL_9;
        }
      }

      v8 = 3758097095;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        *registryEntryID = 0;
        IOService::GetRegistryEntryID(this, registryEntryID, 0);
        v18 = *registryEntryID;
        *registryEntryID = 136446978;
        *&registryEntryID[4] = "AppleUserUSBHostHIDDevice.cpp";
        v24 = 1024;
        v25 = 97;
        v26 = 2048;
        v27 = v18;
        v28 = 2048;
        v29 = v7;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[%{public}s:%d][0x%llx] Device blacklisted:0x%llx\n\n\n", registryEntryID, 0x26u);
      }
    }

    else
    {
LABEL_9:
      v8 = 0;
    }

    v9 = OSDictionaryGetUInt64Value(properties, "AppleUserUSBHostHIDDevice-debug");
    if ((v9 & ~v22) != 0)
    {
      v12 = v9;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        *registryEntryID = 0;
        IOService::GetRegistryEntryID(this, registryEntryID, 0);
        v13 = *registryEntryID;
        *registryEntryID = 136446978;
        *&registryEntryID[4] = "AppleUserUSBHostHIDDevice.cpp";
        v24 = 1024;
        v25 = 105;
        v26 = 2048;
        v27 = v13;
        v28 = 2048;
        v29 = v12;
        v14 = "[%{public}s:%d][0x%llx] Device support require AppleUserUSBHostHIDDevice-debug:0x%llx\n\n\n";
        v15 = registryEntryID;
        v16 = 38;
LABEL_20:
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v14, v15, v16);
      }
    }

    else
    {
      v4 = v8;
      if (!v8)
      {
        goto LABEL_12;
      }
    }

LABEL_21:
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *__str = 0;
      IOService::GetRegistryEntryID(this, __str, 0);
      v17 = *__str;
      *__str = 136446978;
      *&__str[4] = "AppleUserUSBHostHIDDevice.cpp";
      *&__str[12] = 1024;
      *&__str[14] = 119;
      *&__str[18] = 2048;
      *&__str[20] = v17;
      *&__str[28] = 1024;
      *&__str[30] = v4;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[%{public}s:%d][0x%llx] Start failed: 0x%x\n\n", __str, 0x22u);
    }

    IOService::Stop(this, a2, 0);
    goto LABEL_13;
  }

LABEL_12:
  v4 = IOService::RegisterService(this, 0);
  if (v4)
  {
    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_21;
    }

    *__str = 0;
    IOService::GetRegistryEntryID(this, __str, 0);
    v19 = *__str;
    *__str = 136446978;
    *&__str[4] = "AppleUserUSBHostHIDDevice.cpp";
    *&__str[12] = 1024;
    *&__str[14] = 114;
    *&__str[18] = 2048;
    *&__str[20] = v19;
    *&__str[28] = 1024;
    *&__str[30] = v4;
    v14 = "[%{public}s:%d][0x%llx] RegisterService:0x%x\n\n\n";
    v15 = __str;
    v16 = 34;
    goto LABEL_20;
  }

LABEL_13:
  if (properties)
  {
    (properties->release)(properties);
    properties = 0;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *__str = 0;
    IOService::GetRegistryEntryID(this, __str, 0);
    v10 = *__str;
    *__str = 136446978;
    *&__str[4] = "AppleUserUSBHostHIDDevice.cpp";
    *&__str[12] = 1024;
    *&__str[14] = 126;
    *&__str[18] = 2048;
    *&__str[20] = v10;
    *&__str[28] = 1024;
    *&__str[30] = v4;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[%{public}s:%d][0x%llx] Start ret: 0x%x\n\n", __str, 0x22u);
  }

  return v4;
}

uint64_t sub_100000E60(uint64_t a1)
{
  v1 = *(a1 + 32);
  registryEntryID = 0;
  IOService::GetRegistryEntryID(v1, &registryEntryID, 0);
  return registryEntryID;
}

uint64_t sub_100000E94(uint64_t a1)
{
  v1 = *(a1 + 32);
  registryEntryID = 0;
  IOService::GetRegistryEntryID(v1, &registryEntryID, 0);
  return registryEntryID;
}

uint64_t sub_100000EC8(uint64_t a1)
{
  v1 = *(a1 + 32);
  registryEntryID = 0;
  IOService::GetRegistryEntryID(v1, &registryEntryID, 0);
  return registryEntryID;
}

uint64_t sub_100000EFC(uint64_t a1)
{
  v1 = *(a1 + 32);
  registryEntryID = 0;
  IOService::GetRegistryEntryID(v1, &registryEntryID, 0);
  return registryEntryID;
}

uint64_t sub_100000F30(uint64_t a1)
{
  v1 = *(a1 + 32);
  registryEntryID = 0;
  IOService::GetRegistryEntryID(v1, &registryEntryID, 0);
  return registryEntryID;
}

uint64_t AppleUserUSBHostHIDDevice::Stop_Impl(IOService *this, IOService *a2)
{
  v3 = IOService::Stop(this, a2, &IOUserUSBHostHIDDevice::_Dispatch);
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *registryEntryID = 0;
    IOService::GetRegistryEntryID(this, registryEntryID, 0);
    v4 = *registryEntryID;
    *registryEntryID = 136446978;
    *&registryEntryID[4] = "AppleUserUSBHostHIDDevice.cpp";
    v7 = 1024;
    v8 = 137;
    v9 = 2048;
    v10 = v4;
    v11 = 1024;
    v12 = v3;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[%{public}s:%d][0x%llx] Stop: 0x%x\n\n", registryEntryID, 0x22u);
  }

  return v3;
}

uint64_t sub_1000010C0(uint64_t a1)
{
  v1 = *(a1 + 32);
  registryEntryID = 0;
  IOService::GetRegistryEntryID(v1, &registryEntryID, 0);
  return registryEntryID;
}

uint64_t AppleUserHIDEventDriver::init(AppleUserHIDEventDriver *this)
{
  v2 = AppleUserHIDEventService::init(this);
  if (v2)
  {
    *(this + 14) = IOMallocZeroTyped();
  }

  else
  {
    sub_100002FCC();
  }

  return v2;
}

uint64_t AppleUserHIDEventDriver::free(AppleUserHIDEventDriver *this)
{
  v2 = *(this + 14);
  if (v2)
  {
    if (*v2)
    {
      (*(**v2 + 16))(*v2);
      **(this + 14) = 0;
      v2 = *(this + 14);
    }

    v3 = v2[1];
    if (!v3 || ((*(*v3 + 16))(v2[1]), *(*(this + 14) + 8) = 0, (v2 = *(this + 14)) != 0))
    {
      IOFree(v2, 0x18uLL);
      *(this + 14) = 0;
    }
  }

  return AppleUserHIDEventService::free(this);
}

uint64_t sub_10000121C(uint64_t a1)
{
  v1 = *(a1 + 32);
  registryEntryID = 0;
  IOService::GetRegistryEntryID(v1, &registryEntryID, 0);
  return registryEntryID;
}

uint64_t AppleUserHIDEventDriver::postProcessElements(AppleUserHIDEventDriver *this, OSDictionary *a2)
{
  AppleUserHIDEventDriver::setLEDProperties(this, a2);
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *registryEntryID = 0;
    IOService::GetRegistryEntryID(this, registryEntryID, 0);
    v4 = *registryEntryID;
    v5 = *(*(this + 14) + 8);
    if (v5)
    {
      LODWORD(v5) = (*(*v5 + 72))(v5);
    }

    *registryEntryID = 136446978;
    *&registryEntryID[4] = "AppleUserHIDEventDriver.cpp";
    v8 = 1024;
    v9 = 211;
    v10 = 2048;
    v11 = v4;
    v12 = 1024;
    v13 = v5;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[%{public}s:%d][0x%llx] parseElements: led: %d\n\n", registryEntryID, 0x22u);
  }

  return AppleUserHIDEventService::postProcessElements(this, a2);
}

uint64_t sub_1000013E4(uint64_t a1)
{
  v1 = *(a1 + 32);
  registryEntryID = 0;
  IOService::GetRegistryEntryID(v1, &registryEntryID, 0);
  return registryEntryID;
}

uint64_t sub_100001420(uint64_t a1)
{
  v1 = *(a1 + 32);
  registryEntryID = 0;
  IOService::GetRegistryEntryID(v1, &registryEntryID, 0);
  return registryEntryID;
}

uint64_t sub_100001454(uint64_t a1)
{
  v1 = *(a1 + 32);
  registryEntryID = 0;
  IOService::GetRegistryEntryID(v1, &registryEntryID, 0);
  return registryEntryID;
}

uint64_t AppleUserHIDEventDriver::Start_Impl(OSDictionary ***this, IOService *a2)
{
  v4 = 3758097084;
  v12 = 0;
  IOParseBootArgNumber("AppleUserHIDEventDriver-debug", &v12, 4);
  if (v12)
  {
    return 3758097095;
  }

  IOService::CopyProperties(a2, this[14], 0);
  if (*this[14])
  {
    v5 = IOService::Start(this, a2, &AppleUserHIDEventService::_Dispatch);
    if (v5)
    {
      v4 = v5;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        *registryEntryID = 0;
        IOService::GetRegistryEntryID(this, registryEntryID, 0);
        v8 = *registryEntryID;
        *registryEntryID = 136446978;
        *&registryEntryID[4] = "AppleUserHIDEventDriver.cpp";
        v14 = 1024;
        v15 = 311;
        v16 = 2048;
        v17 = v8;
        v18 = 1024;
        v19 = v4;
        v9 = "[%{public}s:%d][0x%llx] Start: 0x%x\n\n";
LABEL_14:
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v9, registryEntryID, 0x22u);
      }
    }

    else
    {
      v4 = IOService::RegisterService(this, 0);
      if (!v4)
      {
LABEL_5:
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          *registryEntryID = 0;
          IOService::GetRegistryEntryID(this, registryEntryID, 0);
          v6 = *registryEntryID;
          *registryEntryID = 136446978;
          *&registryEntryID[4] = "AppleUserHIDEventDriver.cpp";
          v14 = 1024;
          v15 = 322;
          v16 = 2048;
          v17 = v6;
          v18 = 1024;
          v19 = v4;
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[%{public}s:%d][0x%llx] Start ret: 0x%x\n\n", registryEntryID, 0x22u);
        }

        AppleUserHIDEventDriver::printDescription(this);
        return v4;
      }

      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        *registryEntryID = 0;
        IOService::GetRegistryEntryID(this, registryEntryID, 0);
        v10 = *registryEntryID;
        *registryEntryID = 136446978;
        *&registryEntryID[4] = "AppleUserHIDEventDriver.cpp";
        v14 = 1024;
        v15 = 314;
        v16 = 2048;
        v17 = v10;
        v18 = 1024;
        v19 = v4;
        v9 = "[%{public}s:%d][0x%llx] RegisterService: 0x%x\n\n";
        goto LABEL_14;
      }
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *registryEntryID = 0;
      IOService::GetRegistryEntryID(this, registryEntryID, 0);
      v11 = *registryEntryID;
      *registryEntryID = 136446978;
      *&registryEntryID[4] = "AppleUserHIDEventDriver.cpp";
      v14 = 1024;
      v15 = 318;
      v16 = 2048;
      v17 = v11;
      v18 = 1024;
      v19 = v4;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[%{public}s:%d][0x%llx] Start failed: 0x%x\n\n", registryEntryID, 0x22u);
    }

    IOService::Stop(this, a2, 0);
    goto LABEL_5;
  }

  return v4;
}

uint64_t sub_100001930(uint64_t a1)
{
  v1 = *(a1 + 32);
  registryEntryID = 0;
  IOService::GetRegistryEntryID(v1, &registryEntryID, 0);
  return registryEntryID;
}

uint64_t sub_100001964(uint64_t a1)
{
  v1 = *(a1 + 32);
  registryEntryID = 0;
  IOService::GetRegistryEntryID(v1, &registryEntryID, 0);
  return registryEntryID;
}

uint64_t sub_100001998(uint64_t a1)
{
  v1 = *(a1 + 32);
  registryEntryID = 0;
  IOService::GetRegistryEntryID(v1, &registryEntryID, 0);
  return registryEntryID;
}

uint64_t sub_1000019CC(uint64_t a1)
{
  v1 = *(a1 + 32);
  registryEntryID = 0;
  IOService::GetRegistryEntryID(v1, &registryEntryID, 0);
  return registryEntryID;
}

uint64_t AppleUserHIDEventDriver::Stop_Impl(IOService *this, IOService *a2)
{
  v3 = IOService::Stop(this, a2, &AppleUserHIDEventService::_Dispatch);
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *registryEntryID = 0;
    IOService::GetRegistryEntryID(this, registryEntryID, 0);
    v4 = *registryEntryID;
    *registryEntryID = 136446978;
    *&registryEntryID[4] = "AppleUserHIDEventDriver.cpp";
    v7 = 1024;
    v8 = 333;
    v9 = 2048;
    v10 = v4;
    v11 = 1024;
    v12 = v3;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[%{public}s:%d][0x%llx] Stop: 0x%x\n\n", registryEntryID, 0x22u);
  }

  return v3;
}

uint64_t sub_100001B5C(uint64_t a1)
{
  v1 = *(a1 + 32);
  registryEntryID = 0;
  IOService::GetRegistryEntryID(v1, &registryEntryID, 0);
  return registryEntryID;
}

uint64_t sub_100001B90(uint64_t a1)
{
  v1 = *(a1 + 32);
  registryEntryID = 0;
  IOService::GetRegistryEntryID(v1, &registryEntryID, 0);
  return registryEntryID;
}

void sub_100001BFC(uint64_t a1@<X8>)
{
  *(v2 - 66) = v1;
  *(v2 - 62) = 2048;
  *(v2 - 60) = a1;
}

uint64_t sub_100001C1C()
{
  *(v1 - 80) = 0;

  return IOService::GetRegistryEntryID(v0, (v1 - 80), 0);
}

uint64_t AppleUserUSBHostHIDDeviceMetaClass::New(AppleUserUSBHostHIDDeviceMetaClass *this, OSObject *a2)
{
  a2->OSMetaClassBase::__vftable = &off_100004478;
  a2->OSObjectInterface::__vftable = &off_100004530;
  *&a2[1].refcount = &off_100004550;
  a2[1].OSObjectInterface::__vftable = &off_100004580;
  a2[2].OSMetaClassBase::__vftable = &off_1000045A8;
  return 0;
}

uint64_t AppleUserUSBHostHIDDevice::_Dispatch(IOUserUSBHostHIDDevice *a1, IORPCMessageMach **a2)
{
  msgid = IORPCMessageFromMach(*a2, 0)->msgid;
  if (msgid == 0x98E715041C459FA5)
  {
    v6 = *a2;
    return IOService::Stop_Invoke(&v6, a1, AppleUserUSBHostHIDDevice::Stop_Impl);
  }

  else
  {
    v6 = *a2;
    if (msgid == 0xAB6F76DDE6D693F2)
    {
      return IOService::Start_Invoke(&v6, a1, AppleUserUSBHostHIDDevice::Start_Impl);
    }

    else
    {
      return IOUserUSBHostHIDDevice::_Dispatch(a1, &v6);
    }
  }
}

uint64_t AppleUserUSBHostHIDDeviceMetaClass::Dispatch(OSMetaClassBase *this, IORPC *a2)
{
  IORPCMessageFromMach(a2->message, 0);
  v5 = *a2;
  return OSMetaClassBase::Dispatch(this, &v5);
}

uint64_t AppleUserHIDEventDriverMetaClass::New(AppleUserHIDEventDriverMetaClass *this, OSObject *a2)
{
  a2->OSMetaClassBase::__vftable = &off_1000046D0;
  a2->OSObjectInterface::__vftable = off_1000048A0;
  *&a2[1].refcount = &off_1000048C0;
  a2[1].OSObjectInterface::__vftable = &off_100004908;
  a2[2].OSMetaClassBase::__vftable = &off_100004938;
  a2[2].meta = off_1000049D8;
  return 0;
}

uint64_t AppleUserHIDEventDriver::_Dispatch(OSMetaClassBase *this, AppleUserHIDEventDriver *a2, IORPC *a3)
{
  msgid = IORPCMessageFromMach(*a2, 0)->msgid;
  if (msgid == 0x98E715041C459FA5)
  {
    *&var30.IOService::OSObject::OSMetaClassBase::__vftable = *a2;
    var30.meta = *(a2 + 2);
    return IOService::Stop_Invoke(&var30, this, AppleUserHIDEventDriver::Stop_Impl);
  }

  else if (msgid == 0xA871AA31861269BALL)
  {
    *&var30.IOService::OSObject::OSMetaClassBase::__vftable = *a2;
    var30.meta = *(a2 + 2);
    return IOHIDEventService::SetLEDState_Invoke(&var30, this, AppleUserHIDEventDriver::SetLEDState_Impl, v6);
  }

  else
  {
    *&var30.IOService::OSObject::OSMetaClassBase::__vftable = *a2;
    var30.meta = *(a2 + 2);
    if (msgid == 0xAB6F76DDE6D693F2)
    {
      return IOService::Start_Invoke(&var30, this, AppleUserHIDEventDriver::Start_Impl);
    }

    else
    {
      return AppleUserHIDEventService::_Dispatch(this, &var30, v5);
    }
  }
}

uint64_t AppleUserHIDEventDriverMetaClass::Dispatch(OSMetaClassBase *this, IORPC *a2)
{
  IORPCMessageFromMach(a2->message, 0);
  v5 = *a2;
  return OSMetaClassBase::Dispatch(this, &v5);
}

void sub_100002128()
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v0 = 136446722;
    v1 = "AppleUserUSBHostHIDDevice.cpp";
    v2 = 1024;
    v3 = 54;
    v4 = 1024;
    v5 = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[%{public}s:%d]init:%x\n", &v0, 0x18u);
  }
}

void sub_100002208(int a1, _DWORD *a2)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136446722;
    v5 = "AppleUserUSBHostHIDDevice.cpp";
    v6 = 1024;
    v7 = 77;
    v8 = 1024;
    v9 = a1;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[%{public}s:%d]Start:0x%x\n", &v4, 0x18u);
  }

  *a2 = a1;
}

void AppleUserHIDEventDriver::printDescription(IOService *this)
{
  v2 = this[2].meta->OSObject::OSMetaClassBase::__vftable;
  if (!v2)
  {
    return;
  }

  Value = OSDictionaryGetValue(v2, "Product");
  v4 = OSMetaClassBase::safeMetaCast(Value, gOSStringMetaClass);
  v5 = sub_100001BE4();
  v6 = OSDictionaryGetValue(v5, "PrimaryUsagePage");
  v7 = OSMetaClassBase::safeMetaCast(v6, gOSNumberMetaClass);
  v8 = sub_100001BE4();
  v9 = OSDictionaryGetValue(v8, "PrimaryUsage");
  v10 = OSMetaClassBase::safeMetaCast(v9, gOSNumberMetaClass);
  v11 = sub_100001BE4();
  v12 = OSDictionaryGetValue(v11, "VendorID");
  v13 = OSMetaClassBase::safeMetaCast(v12, gOSNumberMetaClass);
  v14 = sub_100001BE4();
  v15 = OSDictionaryGetValue(v14, "ProductID");
  v16 = OSMetaClassBase::safeMetaCast(v15, gOSNumberMetaClass);
  if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    return;
  }

  sub_100001BC4();
  *registryEntryID = 0;
  IOService::GetRegistryEntryID(this, registryEntryID, 0);
  v17 = *registryEntryID;
  if (v4)
  {
    CStringNoCopy = OSString::getCStringNoCopy(v4);
    if (v7)
    {
      goto LABEL_5;
    }

LABEL_12:
    v19 = 0;
    if (!v10)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  CStringNoCopy = "";
  if (!v7)
  {
    goto LABEL_12;
  }

LABEL_5:
  v19 = OSNumber::unsigned32BitValue(v7);
  if (v10)
  {
LABEL_6:
    LODWORD(v10) = OSNumber::unsigned32BitValue(v10);
  }

LABEL_7:
  if (v13)
  {
    LODWORD(v13) = OSNumber::unsigned32BitValue(v13);
  }

  if (v16)
  {
    v20 = OSNumber::unsigned32BitValue(v16);
  }

  else
  {
    v20 = 0;
  }

  *registryEntryID = 136448002;
  *&registryEntryID[4] = "AppleUserHIDEventDriver.cpp";
  v22 = 1024;
  v23 = 116;
  v24 = 2048;
  v25 = v17;
  v26 = 2082;
  v27 = CStringNoCopy;
  v28 = 1024;
  v29 = v19;
  v30 = 1024;
  v31 = v10;
  v32 = 1024;
  v33 = v13;
  v34 = 1024;
  v35 = v20;
  _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[%{public}s:%d][0x%llx] %{public}s usagePage: %d usage: %d vid: %d pid: %d\n\n", registryEntryID, 0x3Eu);
}

uint64_t AppleUserHIDEventDriver::parseGameControllerElement(IOUserHIDEventDriver *this, IOHIDElement *a2)
{
  if (LOBYTE(this[1].meta->IOUserHIDEventService::IOHIDEventService::IOService::OSObject::meta) == 1)
  {
    return IOUserHIDEventDriver::parseGameControllerElement(this, a2);
  }

  else
  {
    return 0;
  }
}

uint64_t non-virtual thunk toAppleUserHIDEventDriver::parseGameControllerElement(AppleUserHIDEventDriver *this, IOHIDElement *a2)
{
  if (*(*(this + 4) + 16) == 1)
  {
    return IOUserHIDEventDriver::parseGameControllerElement((this - 80), a2);
  }

  else
  {
    return 0;
  }
}

uint64_t AppleUserHIDEventDriver::parseLEDElement(AppleUserHIDEventDriver *this, IOHIDElement *a2)
{
  v4 = &a2->IOHIDElementInterface;
  v5 = (a2->getUsagePage)(&a2->IOHIDElementInterface);
  v6 = (v4->getUsage)(v4) < 0x10000 && v5 == 8;
  v7 = v6;
  if (v6)
  {
    v8 = *(*(this + 14) + 8);
    if (v8 || (*(*(this + 14) + 8) = OSArray::withCapacity(4u), (v8 = *(*(this + 14) + 8)) != 0))
    {
      OSArray::setObject(v8, a2);
    }
  }

  return v7;
}

OSDictionaryPtr AppleUserHIDEventDriver::setLEDProperties(AppleUserHIDEventDriver *this, OSDictionary *a2)
{
  result = OSDictionary::withCapacity(1u);
  if (result)
  {
    v5 = result;
    v6 = *(*(this + 14) + 8);
    if (v6)
    {
      v7 = sub_100001C10(v6);
      v9 = (*(v8 + 72))(v7);
      v10 = OSArray::withCapacity(v9);
      if (v10)
      {
        v11 = v10;
        v12 = sub_100001C10(*(*(this + 14) + 8));
        v14 = (*(v13 + 72))(v12);
        if (v14)
        {
          v15 = v14;
          for (i = 0; i != v15; ++i)
          {
            v17 = *&OSArray::getObject(*(*(this + 14) + 8), i)[1].refcount;
            v18 = (*v17)();
            v19 = OSNumber::withNumber(v18, 0x20uLL);
            OSArray::setObject(v11, v19);
            if (v19)
            {
              sub_100001BF0();
              (*(v20 + 16))(v19);
            }
          }
        }

        OSDictionary::setObject(v5, "Elements", v11);
        OSDictionary::setObject(a2, "LED", v5);
        (v11->release)(v11);
      }
    }

    release = v5->release;

    return (release)(v5);
  }

  return result;
}

uint64_t AppleUserHIDEventDriver::deviceSupported(AppleUserHIDEventDriver *this)
{
  v27 = 0;
  v2 = **(this + 14);
  if (!v2)
  {
    return 0;
  }

  Value = OSDictionaryGetValue(v2, "VendorID");
  v4 = OSMetaClassBase::safeMetaCast(Value, gOSNumberMetaClass);
  v5 = sub_100001BE4();
  v6 = OSDictionaryGetValue(v5, "ProductID");
  v7 = OSMetaClassBase::safeMetaCast(v6, gOSNumberMetaClass);
  v8 = sub_100001BE4();
  v9 = OSDictionaryGetValue(v8, "Product");
  v10 = OSMetaClassBase::safeMetaCast(v9, gOSStringMetaClass);
  if (v10 && OSString::isEqualTo(v10, "KernelOnlyTestHIDUserDevice"))
  {
    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      return 0;
    }

    *buf = 136446466;
    *&buf[4] = "AppleUserHIDEventDriver.cpp";
    v29 = 1024;
    v30 = 233;
    v24 = "[%{public}s:%d]Device has property to force kernel driver matching\n";
    v25 = 18;
    goto LABEL_30;
  }

  if (!v4 || !v7)
  {
    goto LABEL_37;
  }

  if (OSNumber::unsigned32BitValue(v4) == 1452 && (OSNumber::unsigned32BitValue(v7) == 33538 || OSNumber::unsigned32BitValue(v7) == 34304))
  {
    return 1;
  }

  if (OSNumber::unsigned32BitValue(v4) != 1452 || (v11 = sub_100001BE4(), v12 = OSDictionaryGetValue(v11, "PrimaryUsagePage"), v13 = OSMetaClassBase::safeMetaCast(v12, gOSNumberMetaClass), v14 = sub_100001BE4(), v15 = OSDictionaryGetValue(v14, "PrimaryUsage"), v16 = OSMetaClassBase::safeMetaCast(v15, gOSNumberMetaClass), v17 = 0, v13) && v16)
  {
LABEL_37:
    IOParseBootArgNumber("AppleUserHIDEventDriver-debug", &v27, 4);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      sub_100001C1C();
      v18 = *buf;
      *buf = 136446722;
      *&buf[4] = "AppleUserHIDEventDriver.cpp";
      v29 = 1024;
      sub_100001BFC(v18);
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[%{public}s:%d][0x%llx] Target embedded OS\n\n", buf, 0x1Cu);
    }

    v19 = *(this + 14);
    if ((v27 & 8) != 0)
    {
      *(v19 + 16) = 1;
    }

    else
    {
      v20 = OSDictionaryGetValue(*v19, "Authenticated");
      v21 = OSMetaClassBase::safeMetaCast(v20, gOSBooleanMetaClass) && v20 == kOSBooleanTrue;
      v22 = v21;
      *(*(this + 14) + 16) = v22;
      if (v20)
      {
        (v20->release)(v20);
      }
    }

    if (((*(*this + 112))(this, 1, 5) & 1) != 0 || (v17 = 1, (*(*this + 112))(this, 1, 4)))
    {
      if (*(*(this + 14) + 16))
      {
        return 1;
      }

      if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        return 0;
      }

      sub_100001BC4();
      sub_100001C1C();
      v23 = *buf;
      *buf = 136446722;
      *&buf[4] = "AppleUserHIDEventDriver.cpp";
      v29 = 1024;
      sub_100001BFC(v23);
      v24 = "[%{public}s:%d][0x%llx] Un-authenticated game controller device attached\n\n";
      v25 = 28;
LABEL_30:
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v24, buf, v25);
      return 0;
    }
  }

  return v17;
}

uint64_t AppleUserHIDEventDriver::handleStart(AppleUserHIDEventDriver *this, IOService *a2)
{
  result = AppleUserHIDEventDriver::deviceSupported(this);
  if (result)
  {

    return IOUserHIDEventService::handleStart(this, a2);
  }

  return result;
}

uint64_t non-virtual thunk toAppleUserHIDEventDriver::handleStart(AppleUserHIDEventDriver *this, IOService *a2)
{
  v3 = (this - 64);
  result = AppleUserHIDEventDriver::deviceSupported((this - 64));
  if (result)
  {

    return IOUserHIDEventService::handleStart(v3, a2);
  }

  return result;
}

uint64_t AppleUserHIDEventDriver::SetLEDState_Impl(IOService *this, int a2, int a3, uint64_t a4)
{
  v5 = 3758097095;
  v6 = *&this[2].meta->OSObject::OSObjectInterface::refcount;
  if (v6)
  {
    v10 = sub_100001C10(v6);
    if ((*(v11 + 72))(v10))
    {
      v12 = 0;
      while (1)
      {
        p_refcount = &OSArray::getObject(*&this[2].meta->OSObject::OSObjectInterface::refcount, v12)[1].refcount;
        if ((*(*p_refcount + 40))(p_refcount) == a2)
        {
          sub_100001BF0();
          if ((*(v14 + 48))(p_refcount) == a3)
          {
            break;
          }
        }

        ++v12;
        v15 = sub_100001C10(*&this[2].meta->OSObject::OSObjectInterface::refcount);
        if (v12 >= (*(v16 + 72))(v15))
        {
          return v5;
        }
      }

      sub_100001BF0();
      (*(v17 + 144))(p_refcount, a4);
      sub_100001BF0();
      v5 = (*(v18 + 192))(p_refcount, 1);
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        sub_100001BC4();
        *registryEntryID = 0;
        IOService::GetRegistryEntryID(this, registryEntryID, 0);
        v19 = *registryEntryID;
        *registryEntryID = 136447490;
        *&registryEntryID[4] = "AppleUserHIDEventDriver.cpp";
        v22 = 1024;
        v23 = 351;
        v24 = 2048;
        v25 = v19;
        v26 = 1024;
        v27 = a3;
        v28 = 1024;
        v29 = a4;
        v30 = 1024;
        v31 = v5;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[%{public}s:%d][0x%llx] Set LED 0x%x: %d 0x%x\n\n", registryEntryID, 0x2Eu);
      }
    }
  }

  return v5;
}

void sub_100002FCC()
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v0 = 136446722;
    v1 = "AppleUserHIDEventDriver.cpp";
    v2 = 1024;
    v3 = 78;
    v4 = 1024;
    v5 = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[%{public}s:%d]Init:%x\n", &v0, 0x18u);
  }
}