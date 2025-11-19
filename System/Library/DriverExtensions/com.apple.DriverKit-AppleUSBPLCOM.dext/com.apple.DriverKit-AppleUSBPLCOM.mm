uint64_t AppleUSBPLCOM::init(AppleUSBPLCOM *this)
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

uint64_t AppleUSBPLCOM::free(AppleUSBPLCOM *this)
{
  v2 = *(this + 10);
  if (v2)
  {
    IOFree(v2, 0x10uLL);
    *(this + 10) = 0;
  }

  return IOUserUSBSerial::free(this);
}

uint64_t AppleUSBPLCOM::Start_Impl(AppleUSBPLCOM *this, IOService *a2)
{
  result = IOService::Start(this, a2, &IOUserUSBSerial::_Dispatch);
  if (!result)
  {
    **(this + 10) = a2;
    device = 0;
    result = IOUSBHostInterface::CopyDevice(**(this + 10), &device, 0);
    if (!result)
    {
      v5 = (device->CopyDeviceDescriptor)(device);
      if (device)
      {
        (device->release)(device);
        device = 0;
      }

      if (v5)
      {
        v6 = v5->bDeviceClass != 2 && v5->bMaxPacketSize0 == 64;
        *(*(this + 10) + 15) = *(*(this + 10) + 15) & 0xFE | v6;
        IOUSBHostFreeDescriptor(v5);
        return IOService::RegisterService(this, 0);
      }

      else
      {
        return 3758097084;
      }
    }
  }

  return result;
}

uint64_t AppleUSBPLCOM::HwActivate_Impl(AppleUSBPLCOM_IVars **this)
{
  result = AppleUSBPLCOM_IVars::readVendorReq(this[10], 33924, &v9 + 5);
  if (!result)
  {
    v3 = this[10];
    HIWORD(v9) = 0;
    LODWORD(v9) = 5000;
    result = (*(**v3 + 104))(*v3, 64, 1, 1028, 0, 0, 0, &v9 + 6, v9);
    if (!result)
    {
      result = AppleUSBPLCOM_IVars::readVendorReq(this[10], 33924, &v9 + 5);
      if (!result)
      {
        result = AppleUSBPLCOM_IVars::readVendorReq(this[10], 33667, &v9 + 5);
        if (!result)
        {
          result = AppleUSBPLCOM_IVars::readVendorReq(this[10], 33924, &v9 + 5);
          if (!result)
          {
            v4 = this[10];
            v10 = 0;
            result = (*(**v4 + 104))(*v4, 64, 1, 1028, 1, 0, 0, &v10, 5000, HIDWORD(v9));
            if (!result)
            {
              result = AppleUSBPLCOM_IVars::readVendorReq(this[10], 33924, &v9 + 5);
              if (!result)
              {
                result = AppleUSBPLCOM_IVars::readVendorReq(this[10], 33667, &v9 + 5);
                if (!result)
                {
                  v5 = this[10];
                  v11 = 0;
                  result = (*(**v5 + 104))(*v5, 64, 1, 0, 1, 0, 0, &v11, 5000);
                  if (!result)
                  {
                    v6 = this[10];
                    v12[0] = 0;
                    result = (*(**v6 + 104))(*v6, 64, 1, 1, 0, 0, 0, v12, 5000);
                    if (!result)
                    {
                      v7 = this[10];
                      v8 = *(v7 + 15);
                      v12[1] = 0;
                      result = (*(**v7 + 104))(*v7);
                      if (!result)
                      {
                        return IOUserSerial::HwActivate(this, &IOUserUSBSerial::_Dispatch);
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

  return result;
}

uint64_t AppleUSBPLCOM_IVars::readVendorReq(AppleUSBPLCOM_IVars *this, uint64_t a2, unsigned __int8 *a3)
{
  v10 = 0;
  AddressRange = (*(**this + 88))(*this, 1, 1, &v10);
  if (AddressRange)
  {
    return AddressRange;
  }

  AddressRange = IOBufferMemoryDescriptor::GetAddressRange(v10, &range);
  if (AddressRange)
  {
    return AddressRange;
  }

  v11 = 0;
  v7 = (*(**this + 104))(*this, 192, 1, a2, 0, 1, v10, &v11, 5000);
  *a3 = *range.address;
  (v10->release)(v10);
  return v7;
}

uint64_t AppleUSBPLCOM::HwSendBreak_Impl(AppleUSBPLCOM *this, __int16 a2)
{
  v2 = *(this + 10);
  v4 = 0;
  return (*(**v2 + 104))(*v2, 33, 35, ((a2 << 15) >> 15), 0, 0, 0, &v4, 5000);
}

uint64_t AppleUSBPLCOM::HwProgramUART_Impl(AppleUSBPLCOM *this, int a2, char a3, int a4, unsigned int a5)
{
  v10 = *(this + 10);
  *(v10 + 12) = a3;
  *(v10 + 13) = a4;
  *(v10 + 14) = a5;
  *(v10 + 8) = a2;
  v18 = 0;
  AddressRange = (*(***(this + 10) + 88))(**(this + 10), 3, 7, &v18);
  if (!AddressRange)
  {
    AddressRange = IOBufferMemoryDescriptor::GetAddressRange(v18, &range);
    if (!AddressRange)
    {
      address = range.address;
      *range.address = a2;
      v13 = a4 == 3;
      if (a4 == 4)
      {
        v13 = 2;
      }

      address[4] = v13;
      v14 = 0x40302010000uLL >> (8 * a5);
      if (a5 >= 6)
      {
        LOBYTE(v14) = 0;
      }

      address[5] = v14;
      address[6] = a3;
      v15 = *(this + 10);
      v19 = 0;
      AddressRange = (*(**v15 + 104))(*v15, 33, 32, 0, 0, 7, v18, &v19, 5000);
    }

    (v18->release)(v18);
  }

  return AddressRange;
}

uint64_t AppleUSBPLCOM::HwProgramMCR_Impl(AppleUSBPLCOM *this, unsigned int a2, int a3)
{
  if (a3)
  {
    v3 = a2 | 2;
  }

  else
  {
    v3 = a2;
  }

  v4 = *(this + 10);
  v6 = 0;
  return (*(**v4 + 104))(*v4, 33, 34, v3, 0, 0, 0, &v6, 5000);
}

uint64_t AppleUSBPLCOMMetaClass::New(AppleUSBPLCOMMetaClass *this, OSObject *a2)
{
  a2->OSMetaClassBase::__vftable = &off_100004190;
  a2->OSObjectInterface::__vftable = off_1000041F0;
  *&a2[1].refcount = &off_100004210;
  a2[1].OSObjectInterface::__vftable = &off_100004228;
  return 0;
}

uint64_t AppleUSBPLCOM::_Dispatch(IORPC *this, IORPCMessageMach **a2, IORPC *a3)
{
  msgid = IORPCMessageFromMach(*a2, 0)->msgid;
  if (msgid > 0xAE696285403CB7ABLL)
  {
    if (msgid == 0xAE696285403CB7ACLL)
    {
      v9 = *a2;
      return IOUserSerial::HwActivate_Invoke(&v9, this, AppleUSBPLCOM::HwActivate_Impl, v6);
    }

    if (msgid != 0xB7AA6E57CA295019)
    {
      if (msgid == 0xF3AD02F78DC96D04)
      {
        v9 = *a2;
        return IOUserSerial::HwProgramUART_Invoke(&v9, this, AppleUSBPLCOM::HwProgramUART_Impl, v6);
      }

      goto LABEL_12;
    }

    v9 = *a2;
    return IOUserSerial::HwProgramMCR_Invoke(&v9, this, AppleUSBPLCOM::HwProgramMCR_Impl, v6);
  }

  else
  {
    if (msgid == 0x8EB7D95D31DA2679)
    {
      v9 = *a2;
      return IOUserSerial::HwSendBreak_Invoke(&v9, this, AppleUSBPLCOM::HwSendBreak_Impl, v6);
    }

    if (msgid != 0x908A8A97324B09CDLL)
    {
      if (msgid == 0xAB6F76DDE6D693F2)
      {
        v9 = *a2;
        return IOService::Start_Invoke(&v9, this, AppleUSBPLCOM::Start_Impl);
      }

LABEL_12:
      v9 = *a2;
      return IOUserUSBSerial::_Dispatch(this, &v9, v5);
    }

    v9 = *a2;
    return IOUserSerial::HwProgramBaudRate_Invoke(&v9, this, AppleUSBPLCOM::HwProgramBaudRate_Impl, v6);
  }
}

uint64_t AppleUSBPLCOMMetaClass::Dispatch(OSMetaClassBase *this, IORPC *a2)
{
  IORPCMessageFromMach(a2->message, 0);
  v5 = *a2;
  return OSMetaClassBase::Dispatch(this, &v5);
}