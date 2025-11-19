uint64_t AppleUSBCHCOM::init(AppleUSBCHCOM *this)
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

uint64_t AppleUSBCHCOM::free(AppleUSBCHCOM *this)
{
  v2 = *(this + 10);
  if (v2)
  {
    IOFree(v2, 0x10uLL);
    *(this + 10) = 0;
  }

  return IOUserUSBSerial::free(this);
}

uint64_t AppleUSBCHCOM::Start_Impl(IOService *this, IOService *a2)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315650;
    v7 = "Start_Impl";
    v8 = 1024;
    v9 = 129;
    v10 = 2048;
    v11 = this;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "IOUserSerial::AppleUSBCHCOM::%s: %d %p\n", &v6, 0x1Cu);
  }

  v4 = IOService::Start(this, a2, &IOUserUSBSerial::_Dispatch);
  if (!v4)
  {
    *this[1].ivars = a2;
    IOService::RegisterService(this, 0);
  }

  return v4;
}

void AppleUSBCHCOM::handleInterruptPacket(AppleUSBCHCOM *this, const unsigned __int8 *a2, int a3)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315906;
    v6 = "handleInterruptPacket";
    v7 = 1024;
    v8 = 139;
    v9 = 2048;
    v10 = this;
    v11 = 1024;
    v12 = a3;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "IOUserSerial::AppleUSBCHCOM::%s: %d %p size=%d\n", &v5, 0x22u);
  }
}

uint64_t AppleUSBCHCOM::HwSendBreak_Impl(AppleUSBCHCOM_IVars **this, int a2)
{
  *v9 = 0;
  result = AppleUSBCHCOM_IVars::readReg(this[10], 5, &v9[1], 24, v9);
  if (!result)
  {
    v5 = v9[1] & 0xFE | a2 ^ 1;
    if (a2)
    {
      v6 = 0;
    }

    else
    {
      v6 = 64;
    }

    v7 = v9[0] & 0xBF | v6;
    v9[1] = v9[1] & 0xFE | a2 ^ 1;
    v9[0] = v9[0] & 0xBF | v6;
    v8 = this[10];
    v10 = 0;
    return (*(**v8 + 104))(*v8, 64, 154, 6149, (v5 | (v7 << 8)), 0, 0, &v10, 5000);
  }

  return result;
}

uint64_t AppleUSBCHCOM_IVars::readReg(AppleUSBCHCOM_IVars *this, int a2, unsigned __int8 *a3, int a4, unsigned __int8 *a5)
{
  v15 = 0;
  AddressRange = (*(**this + 88))(*this, 1, 2, &v15);
  if (AddressRange)
  {
    return AddressRange;
  }

  AddressRange = IOBufferMemoryDescriptor::GetAddressRange(v15, &range);
  if (AddressRange)
  {
    return AddressRange;
  }

  v16 = 0;
  v11 = (*(**this + 104))(*this, 192, 149, a2 | (a4 << 8), 0, 2, v15, &v16, 5000);
  address = range.address;
  *a3 = *range.address;
  *a5 = *(address + 1);
  (v15->release)(v15);
  return v11;
}

uint64_t AppleUSBCHCOM::HwActivate_Impl(AppleUSBCHCOM *this)
{
  v2 = IOUserSerial::HwActivate(this, &IOUserUSBSerial::_Dispatch);
  if (!v2)
  {
    v17 = 0;
    AddressRange = (*(***(this + 10) + 88))(**(this + 10), 1, 2, &v17);
    if (AddressRange)
    {
      return AddressRange;
    }

    AddressRange = IOBufferMemoryDescriptor::GetAddressRange(v17, &range);
    if (AddressRange)
    {
      return AddressRange;
    }

    v5 = *(this + 10);
    *buf = 0;
    v2 = (*(**v5 + 104))(*v5, 192, 95, 0, 0, 2, v17, buf, 5000);
    *(*(this + 10) + 8) = *range.address;
    (v17->release)(v17);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(*(this + 10) + 8);
      *buf = 136315906;
      v9 = "HwActivate_Impl";
      v10 = 1024;
      v11 = 187;
      v12 = 1024;
      v13 = v6;
      v14 = 1024;
      v15 = v2;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "IOUserSerial::AppleUSBCHCOM::%s: %d chip version: 0x%02x, 0x%08x\n", buf, 0x1Eu);
    }

    if (!v2)
    {
      v7 = *(this + 10);
      *buf = 0;
      return (*(**v7 + 104))(*v7, 64, 161, 0, 0, 0, 0, buf, 5000);
    }
  }

  return v2;
}

uint64_t AppleUSBCHCOM::HwProgramUART_Impl(AppleUSBCHCOM *this, unsigned int a2, unsigned int a3, int a4, int a5)
{
  result = IOUserSerial::HwProgramBaudRate(this, a2, 0);
  if (!result)
  {
    v10 = 0xC2C1C0C3C3C3C3C3 >> (8 * a3);
    if (a3 >= 8)
    {
      LOBYTE(v10) = -61;
    }

    if (a4)
    {
      LOBYTE(v10) = v10 | 4;
    }

    if (a5 == 2)
    {
      v11 = 8;
    }

    else
    {
      v11 = 24;
    }

    if (a5 == 1)
    {
      v11 = 0;
    }

    v12 = v10 | v11;
    v13 = *(this + 10);
    v14 = 0;
    return (*(**v13 + 104))(*v13, 64, 154, 9496, v12, 0, 0, &v14, 5000);
  }

  return result;
}

uint64_t AppleUSBCHCOM::HwProgramBaudRate_Impl(AppleUSBCHCOM *this, unsigned int a2)
{
  v4 = 0x5B59F000 / a2;
  if (a2 >> 5 > 0x2DA)
  {
    v5 = 3;
  }

  else
  {
    v5 = 3;
    do
    {
      v6 = v4;
      v4 >>= 3;
      --v5;
    }

    while (v6 >= 0x7FF88 && v5);
    if (v6 > 0x7FF87)
    {
      return 3758096385;
    }
  }

  v10 = v2;
  v11 = v3;
  v8 = *(this + 10);
  v9 = 0;
  return (*(**v8 + 104))(*v8, 64, 154, 4882, (v5 | -v4) & 0xFF00 | v5 | 0x80u, 0, 0, &v9, 5000);
}

uint64_t AppleUSBCHCOM::HwProgramMCR_Impl(AppleUSBCHCOM *this, int a2, int a3)
{
  if (a2)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  if (a3)
  {
    v3 |= 0x40u;
  }

  v4 = *(this + 10);
  v5 = ~v3;
  if (v4[8] > 0x1Fu)
  {
    v8 = 0;
    return (*(**v4 + 104))(*v4, 64, 164, v5, 0, 0, 0, &v8, 5000);
  }

  else
  {
    v7 = 0;
    return (*(**v4 + 104))(*v4, 64, 154, 1542, v5 | (v5 << 8), 0, 0, &v7, 5000);
  }
}

uint64_t AppleUSBCHCOMMetaClass::New(AppleUSBCHCOMMetaClass *this, OSObject *a2)
{
  a2->OSMetaClassBase::__vftable = &off_1000041A0;
  a2->OSObjectInterface::__vftable = off_100004200;
  *&a2[1].refcount = &off_100004220;
  a2[1].OSObjectInterface::__vftable = &off_100004238;
  return 0;
}

uint64_t AppleUSBCHCOM::_Dispatch(IORPC *this, IORPCMessageMach **a2, IORPC *a3)
{
  msgid = IORPCMessageFromMach(*a2, 0)->msgid;
  if (msgid > 0xAE696285403CB7ABLL)
  {
    if (msgid == 0xAE696285403CB7ACLL)
    {
      v9 = *a2;
      return IOUserSerial::HwActivate_Invoke(&v9, this, AppleUSBCHCOM::HwActivate_Impl, v6);
    }

    if (msgid != 0xB7AA6E57CA295019)
    {
      if (msgid == 0xF3AD02F78DC96D04)
      {
        v9 = *a2;
        return IOUserSerial::HwProgramUART_Invoke(&v9, this, AppleUSBCHCOM::HwProgramUART_Impl, v6);
      }

      goto LABEL_12;
    }

    v9 = *a2;
    return IOUserSerial::HwProgramMCR_Invoke(&v9, this, AppleUSBCHCOM::HwProgramMCR_Impl, v6);
  }

  else
  {
    if (msgid == 0x8EB7D95D31DA2679)
    {
      v9 = *a2;
      return IOUserSerial::HwSendBreak_Invoke(&v9, this, AppleUSBCHCOM::HwSendBreak_Impl, v6);
    }

    if (msgid != 0x908A8A97324B09CDLL)
    {
      if (msgid == 0xAB6F76DDE6D693F2)
      {
        v9 = *a2;
        return IOService::Start_Invoke(&v9, this, AppleUSBCHCOM::Start_Impl);
      }

LABEL_12:
      v9 = *a2;
      return IOUserUSBSerial::_Dispatch(this, &v9, v5);
    }

    v9 = *a2;
    return IOUserSerial::HwProgramBaudRate_Invoke(&v9, this, AppleUSBCHCOM::HwProgramBaudRate_Impl, v6);
  }
}

uint64_t AppleUSBCHCOMMetaClass::Dispatch(OSMetaClassBase *this, IORPC *a2)
{
  IORPCMessageFromMach(a2->message, 0);
  v5 = *a2;
  return OSMetaClassBase::Dispatch(this, &v5);
}