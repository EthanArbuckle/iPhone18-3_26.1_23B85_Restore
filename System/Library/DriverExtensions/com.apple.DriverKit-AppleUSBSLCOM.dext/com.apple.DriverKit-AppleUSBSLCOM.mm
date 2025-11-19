uint64_t AppleUSBSLCOM::init(AppleUSBSLCOM *this)
{
  result = IOUserUSBSerial::init(this);
  if (result)
  {
    v3 = IOMallocZeroTyped();
    *(this + 10) = v3;
    return v3 != 0;
  }

  return result;
}

uint64_t AppleUSBSLCOM::free(AppleUSBSLCOM *this)
{
  v2 = *(this + 10);
  if (v2)
  {
    IOFree(v2, 0x10uLL);
    *(this + 10) = 0;
  }

  return IOUserUSBSerial::free(this);
}

uint64_t AppleUSBSLCOM::Start_Impl(IOService *this, IOService *a2)
{
  v4 = IOService::Start(this, a2, &IOUserUSBSerial::_Dispatch);
  if (v4)
  {
    return v4;
  }

  v4 = 3758097084;
  *this[1].ivars = a2;
  v6 = (*(**this[1].ivars + 56))(*this[1].ivars);
  if (!v6)
  {
    return v4;
  }

  v7 = v6;
  v8 = (*(**this[1].ivars + 64))(*this[1].ivars, v6);
  if (!v8)
  {
    IOUSBHostFreeDescriptor(v7);
    return v4;
  }

  *(this[1].ivars + 8) = *(v8 + 2);
  IOUSBHostFreeDescriptor(v7);

  return IOService::RegisterService(this, 0);
}

uint64_t AppleUSBSLCOM::HwActivate_Impl(AppleUSBSLCOM *this)
{
  v2 = *(this + 10);
  v3 = v2[8];
  v5 = 0;
  result = (*(**v2 + 104))(*v2, 65, 0, 1, v3, 0, 0, &v5, 5000);
  if (!result)
  {
    return IOUserSerial::HwActivate(this, &IOUserUSBSerial::_Dispatch);
  }

  return result;
}

uint64_t AppleUSBSLCOM::HwDeactivate_Impl(unsigned __int8 **this)
{
  IOUserSerial::HwDeactivate(this, &IOUserUSBSerial::_Dispatch);
  v2 = this[10];
  v3 = v2[8];
  v5 = 0;
  (*(**v2 + 104))(*v2, 65, 0, 0, v3, 0, 0, &v5, 5000);
  return 0;
}

uint64_t AppleUSBSLCOM::HwResetFIFO_Impl(AppleUSBSLCOM *this, int a2, int a3)
{
  if (a2)
  {
    v3 = 3;
  }

  else
  {
    v3 = 0;
  }

  if (a3)
  {
    v4 = v3 | 0xA;
  }

  else
  {
    v4 = v3;
  }

  v5 = *(this + 10);
  v6 = v5[8];
  v8 = 0;
  return (*(**v5 + 104))(*v5, 65, 18, v4, v6, 0, 0, &v8, 5000);
}

uint64_t AppleUSBSLCOM::HwSendBreak_Impl(AppleUSBSLCOM *this, uint64_t a2)
{
  v2 = *(this + 10);
  v3 = v2[8];
  v5 = 0;
  return (*(**v2 + 104))(*v2, 65, 5, a2, v3, 0, 0, &v5, 5000);
}

uint64_t AppleUSBSLCOM::HwProgramUART_Impl(unsigned __int8 **this, unsigned int a2, __int16 a3, __int16 a4, char a5)
{
  result = IOUserSerial::HwProgramBaudRate(this, a2, 0);
  if (!result)
  {
    if (((a5 - 2) & 0xFC) != 0)
    {
      v10 = 0;
    }

    else
    {
      v10 = 16 * (a5 - 2) + 16;
    }

    v11 = (a4 - 2) | (a3 << 8) | v10;
    v12 = this[10];
    v13 = v12[8];
    v14 = 0;
    return (*(**v12 + 104))(*v12, 65, 3, v11, v13, 0, 0, &v14, 5000);
  }

  return result;
}

uint64_t AppleUSBSLCOM::HwProgramBaudRate_Impl(AppleUSBSLCOM *this, int a2)
{
  v9 = 0;
  AddressRange = (*(***(this + 10) + 88))(**(this + 10), 3, 4, &v9);
  if (!AddressRange)
  {
    AddressRange = IOBufferMemoryDescriptor::GetAddressRange(v9, &range);
    if (!AddressRange)
    {
      *range.address = a2;
      v5 = *(this + 10);
      v6 = v5[8];
      v10 = 0;
      AddressRange = (*(**v5 + 104))(*v5, 65, 30, 0, v6, 4, v9, &v10, 5000);
      (v9->release)(v9);
    }
  }

  return AddressRange;
}

uint64_t AppleUSBSLCOM::HwProgramMCR_Impl(AppleUSBSLCOM *this, int a2, int a3)
{
  if (a2)
  {
    v3 = 769;
  }

  else
  {
    v3 = 768;
  }

  if (a3)
  {
    v4 = v3 | 2;
  }

  else
  {
    v4 = v3;
  }

  v5 = *(this + 10);
  v6 = v5[8];
  v8 = 0;
  return (*(**v5 + 104))(*v5, 65, 7, v4, v6, 0, 0, &v8, 5000);
}

uint64_t AppleUSBSLCOM::HwGetModemStatus_Impl(AppleUSBSLCOM *this, BOOL *a2, BOOL *a3, BOOL *a4, BOOL *a5)
{
  v24 = 0;
  AddressRange = (*(***(this + 10) + 88))(**(this + 10), 1, 1, &v24);
  if (!AddressRange)
  {
    v11 = *(this + 10);
    v12 = v11[8];
    *buf = 0;
    v13 = (*(**v11 + 104))(*v11, 193, 8, 0, v12, 1, v24, buf, 5000);
    if (v13)
    {
      AddressRange = v13;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v18 = "HwGetModemStatus_Impl";
        v19 = 1024;
        v20 = 300;
        v14 = "IOUserSerial::AppleSLCOM::%s: %d Failed to get modem status.";
LABEL_8:
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v14, buf, 0x12u);
        goto LABEL_9;
      }

      goto LABEL_9;
    }

    AddressRange = IOBufferMemoryDescriptor::GetAddressRange(v24, &range);
    if (AddressRange)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v18 = "HwGetModemStatus_Impl";
        v19 = 1024;
        v20 = 307;
        v14 = "IOUserSerial::AppleSLCOM::%s: %d Failed to get address for Modem status.";
        goto LABEL_8;
      }

LABEL_9:
      (v24->release)(v24);
      return AddressRange;
    }

    v16 = *range.address;
    (v24->release)(v24);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v18 = "HwGetModemStatus_Impl";
      v19 = 1024;
      v20 = 314;
      v21 = 1024;
      v22 = v16;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "IOUserSerial::AppleSLCOM::%s: %d Modem mask: %d", buf, 0x18u);
    }

    *a2 = (v16 & 0x10) != 0;
    *a3 = (v16 & 0x20) != 0;
    *a4 = (v16 & 0x40) != 0;
    *a5 = v16 >> 7;
  }

  return AddressRange;
}

uint64_t AppleUSBSLCOM::HwProgramFlowControl_Impl(AppleUSBSLCOM *this, unsigned int a2, int a3, int a4)
{
  v27 = 0;
  v8 = (*(***(this + 10) + 88))(**(this + 10), 3, 16, &v27);
  if (!v8)
  {
    AddressRange = IOBufferMemoryDescriptor::GetAddressRange(v27, &range);
    if (AddressRange)
    {
      v8 = AddressRange;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v23 = "HwProgramFlowControl_Impl";
        v24 = 1024;
        v25 = 335;
        v10 = "IOUserSerial::AppleSLCOM::%s: %d Failed to get flow control buffer address";
LABEL_8:
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v10, buf, 0x12u);
      }
    }

    else
    {
      address = range.address;
      v12 = *(this + 10);
      v13 = v12[8];
      *buf = 0;
      v14 = (*(**v12 + 104))(*v12, 193, 20, 0, v13, 16, v27, buf, 5000);
      if (!v14)
      {
        if ((a2 & 0x18) != 0)
        {
          v15 = *(this + 10);
          v16 = v15[8];
          *buf = 0;
          if ((*(**v15 + 104))(*v15, 65, 13, (a3 << 8) | 4u, v16, 0, 0, buf, 5000) && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315394;
            v23 = "HwProgramFlowControl_Impl";
            v24 = 1024;
            v25 = 362;
            _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "IOUserSerial::AppleSLCOM::%s: %d Unable to set XON character", buf, 0x12u);
          }

          v17 = *(this + 10);
          v18 = v17[8];
          *buf = 0;
          if ((*(**v17 + 104))(*v17, 65, 13, (a4 << 8) | 5u, v18, 0, 0, buf, 5000) && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315394;
            v23 = "HwProgramFlowControl_Impl";
            v24 = 1024;
            v25 = 371;
            _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "IOUserSerial::AppleSLCOM::%s: %d Unable to set XOFF character", buf, 0x12u);
          }
        }

        *address = (a2 >> 2) & 8 | a2 & 2 | (a2 >> 4) & 0x10 | (a2 >> 1) & 0x20;
        address[1] = (32 * a2) & 0x80 | (a2 >> 3) & 3;
        v19 = *(this + 10);
        v20 = v19[8];
        *buf = 0;
        (*(**v19 + 104))(*v19, 65, 19, 0, v20, 16, v27, buf, 5000);
        v8 = 0;
        goto LABEL_17;
      }

      v8 = v14;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v23 = "HwProgramFlowControl_Impl";
        v24 = 1024;
        v25 = 346;
        v10 = "IOUserSerial::AppleSLCOM::%s: %d Failed to get current flow control settings";
        goto LABEL_8;
      }
    }

LABEL_17:
    (v27->release)(v27);
  }

  return v8;
}

uint64_t AppleUSBSLCOMMetaClass::New(AppleUSBSLCOMMetaClass *this, OSObject *a2)
{
  a2->OSMetaClassBase::__vftable = &off_1000041D0;
  a2->OSObjectInterface::__vftable = off_100004230;
  *&a2[1].refcount = &off_100004250;
  a2[1].OSObjectInterface::__vftable = &off_100004268;
  return 0;
}

uint64_t AppleUSBSLCOM::_Dispatch(IORPC *this, IORPCMessageMach **a2, IORPC *a3)
{
  msgid = IORPCMessageFromMach(*a2, 0)->msgid;
  if (msgid > 0xB7AA6E57CA295018)
  {
    if (msgid <= 0xEBA1AB4EDDD623ECLL)
    {
      if (msgid == 0xB7AA6E57CA295019)
      {
        v9 = *a2;
        return IOUserSerial::HwProgramMCR_Invoke(&v9, this, AppleUSBSLCOM::HwProgramMCR_Impl, v6);
      }

      if (msgid == 0xC7971C55833FBB0BLL)
      {
        v9 = *a2;
        return IOUserSerial::HwResetFIFO_Invoke(&v9, this, AppleUSBSLCOM::HwResetFIFO_Impl, v6);
      }
    }

    else
    {
      switch(msgid)
      {
        case 0xEBA1AB4EDDD623EDLL:
          v9 = *a2;
          return IOUserSerial::HwProgramFlowControl_Invoke(&v9, this, AppleUSBSLCOM::HwProgramFlowControl_Impl, v6);
        case 0xF0FD7D516830B885:
          v9 = *a2;
          return IOUserSerial::HwGetModemStatus_Invoke(&v9, this, AppleUSBSLCOM::HwGetModemStatus_Impl, v6);
        case 0xF3AD02F78DC96D04:
          v9 = *a2;
          return IOUserSerial::HwProgramUART_Invoke(&v9, this, AppleUSBSLCOM::HwProgramUART_Impl, v6);
      }
    }
  }

  else if (msgid <= 0xAB6F76DDE6D693F1)
  {
    if (msgid == 0x8EB7D95D31DA2679)
    {
      v9 = *a2;
      return IOUserSerial::HwSendBreak_Invoke(&v9, this, AppleUSBSLCOM::HwSendBreak_Impl, v6);
    }

    if (msgid == 0x908A8A97324B09CDLL)
    {
      v9 = *a2;
      return IOUserSerial::HwProgramBaudRate_Invoke(&v9, this, AppleUSBSLCOM::HwProgramBaudRate_Impl, v6);
    }
  }

  else
  {
    switch(msgid)
    {
      case 0xAB6F76DDE6D693F2:
        v9 = *a2;
        return IOService::Start_Invoke(&v9, this, AppleUSBSLCOM::Start_Impl);
      case 0xAE696285403CB7ACLL:
        v9 = *a2;
        return IOUserSerial::HwActivate_Invoke(&v9, this, AppleUSBSLCOM::HwActivate_Impl, v6);
      case 0xB4382FF781B52C69:
        v9 = *a2;
        return IOUserSerial::HwDeactivate_Invoke(&v9, this, AppleUSBSLCOM::HwDeactivate_Impl, v6);
    }
  }

  v9 = *a2;
  return IOUserUSBSerial::_Dispatch(this, &v9, v5);
}

uint64_t AppleUSBSLCOMMetaClass::Dispatch(OSMetaClassBase *this, IORPC *a2)
{
  IORPCMessageFromMach(a2->message, 0);
  v5 = *a2;
  return OSMetaClassBase::Dispatch(this, &v5);
}