uint64_t AppleUSBFTDI::init(AppleUSBFTDI *this)
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

uint64_t AppleUSBFTDI::free(AppleUSBFTDI *this)
{
  v2 = *(this + 10);
  if (v2)
  {
    IOFree(v2, 0x20uLL);
    *(this + 10) = 0;
  }

  return IOUserUSBSerial::free(this);
}

uint64_t AppleUSBFTDI::Start_Impl(IOService *this, IOService *a2)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v20 = "Start_Impl";
    v21 = 1024;
    v22 = 191;
    v23 = 2048;
    v24 = this;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "IOUserSerial::AppleUSBFTDI::%s: %d %p\n", buf, 0x1Cu);
  }

  v4 = IOService::Start(this, a2, &IOUserUSBSerial::_Dispatch);
  if (!v4)
  {
    v4 = 3758097084;
    *this[1].ivars = a2;
    ivars = this[1].ivars;
    v7 = ((*ivars)->CopyConfigurationDescriptor)();
    if (v7)
    {
      v8 = v7;
      v9 = ((*ivars)->GetInterfaceDescriptor)(*ivars, v7);
      if (v9)
      {
        v10 = this[1].ivars;
        *(v10 + 22) = *(v9 + 2);
        IOUSBHostFreeDescriptor(v8);
        device = 0;
        v4 = IOUSBHostInterface::CopyDevice(*ivars, &device, 0);
        if (!v4)
        {
          v11 = (device->CopyDeviceDescriptor)(device);
          if (device)
          {
            (device->release)(device);
            device = 0;
          }

          v4 = 3758097084;
          if (v11)
          {
            v12 = this[1].ivars;
            bcdDevice = v11->bcdDevice;
            HIDWORD(v15) = bcdDevice - 512;
            LODWORD(v15) = bcdDevice - 512;
            v14 = v15 >> 8;
            if (v14 <= 3)
            {
              switch(v14)
              {
                case 0:
                  v17 = v11->iSerialNumber == 0;
                  goto LABEL_31;
                case 2:
                  v17 = 1;
                  goto LABEL_31;
                case 3:
                  v16 = 2;
                  goto LABEL_29;
              }
            }

            else
            {
              if (v14 <= 5)
              {
                if (v14 != 4)
                {
                  v16 = 4;
LABEL_29:
                  *(v12 + 23) = v16;
                  ++*(v10 + 22);
LABEL_32:
                  IOUSBHostFreeDescriptor(v11);
                  IOService::RegisterService(this, 0);
                  return 0;
                }

                v17 = 3;
LABEL_31:
                *(v12 + 23) = v17;
                goto LABEL_32;
              }

              if (v14 == 6)
              {
                v16 = 5;
                goto LABEL_29;
              }

              if (v14 == 7)
              {
                v17 = 6;
                goto LABEL_31;
              }
            }

            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315650;
              v20 = "Start_Impl";
              v21 = 1024;
              v22 = 254;
              v23 = 1024;
              LODWORD(v24) = bcdDevice;
              _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "IOUserSerial::AppleUSBFTDI::%s: %d idChip - Invalid chip ID (%x), assuming F1232AM", buf, 0x18u);
            }

            *(v12 + 23) = 0;
            goto LABEL_32;
          }
        }
      }

      else
      {
        IOUSBHostFreeDescriptor(v8);
      }
    }
  }

  return v4;
}

IOUserSerial *AppleUSBFTDI::handleRxPacket(IOUserSerial *this, unsigned __int8 **a2, unsigned int *a3)
{
  v5 = this;
  v6 = *a2;
  v7 = **a2;
  v8 = *(this + 10);
  if ((v7 & 0xF0) != *(v8 + 24))
  {
    *(v8 + 24) = v7 & 0xF0;
    this = IOUserSerial::SetModemStatus(this, (v7 & 0x10) != 0, (v7 & 0x20) != 0, (v7 & 0x40) != 0, v7 >> 7, 0);
    v6 = *a2;
  }

  v9 = *a3;
  if (*a3 >= 3 && (*(v6 + 1) & 0x1E) != 0)
  {
    this = IOUserSerial::RxError(v5, (*(v6 + 1) & 2) != 0, (*(v6 + 1) & 0x10) != 0, (*(v6 + 1) & 8) != 0, (*(v6 + 1) & 4) != 0, 0);
    v9 = *a3;
    v6 = *a2;
  }

  v10 = (v6 + 2);
  *a2 = v10;
  v11 = v9 - 2;
  *a3 = v11;
  if (v11)
  {
    v12 = *(v5 + 10);
    if ((v12[16] & 0x18) != 0)
    {
      v13 = v12[20];
      v14 = v12[21];
      v15 = v10;
      do
      {
        v16 = *v10;
        if (v16 == v13 || v16 == v14)
        {
          --*a3;
        }

        else
        {
          if (v10 != v15)
          {
            *v15 = v16;
          }

          ++v15;
        }

        ++v10;
        --v11;
      }

      while (v11);
    }
  }

  return this;
}

uint64_t AppleUSBFTDI_IVars::calculateDeviceBaud(AppleUSBFTDI_IVars *this, unsigned __int16 *a2, unsigned __int16 *a3)
{
  *v29 = 0;
  v30 = -1;
  BaudDiv = findBaudDiv(*(this + 2), 0x2DC6C0uLL, &v29[1], v29, &v30);
  if (BaudDiv || *(this + 23))
  {
    goto LABEL_9;
  }

  if (v29[0] - 6 < 2)
  {
    v29[0] = 0;
    v7 = ++v29[1];
    v8 = 0;
  }

  else
  {
    if (v29[0] != 5 && v29[0] != 3)
    {
      goto LABEL_9;
    }

    v29[0] = 4;
    v7 = v29[1];
    v8 = 4;
  }

  v30 = calculateActualBaudRate(3000000, v7, v8);
LABEL_9:
  v9 = 0;
  *v27 = 0;
  v28 = -1;
  v10 = v30;
  v11 = *(this + 2);
  if (v30 <= v11)
  {
    v12 = v11 - v30;
  }

  else
  {
    v12 = v30 - v11;
  }

  if (*(this + 23) - 4 <= 2)
  {
    v9 = findBaudDiv(v11, 0xB71B00uLL, &v27[1], v27, &v28) == 0;
  }

  if (BaudDiv)
  {
    v13 = !v9;
  }

  else
  {
    v13 = 0;
  }

  if (v13)
  {
    return 0;
  }

  v14 = *(this + 2);
  v15 = v14 - v28;
  v16 = v28 >= v14;
  v17 = v28 - v14;
  if (v17 == 0 || !v16)
  {
    v17 = v15;
  }

  v18 = v17 < v12 && v9;
  if (v18)
  {
    result = v28;
  }

  else
  {
    result = v10;
  }

  v20 = &v29[1];
  if (v18)
  {
    v20 = &v27[1];
  }

  v21 = *v20;
  v22 = v29;
  if (v18)
  {
    v22 = v27;
  }

  v23 = AppleUSBFTDI_IVars::calculateDeviceBaud(unsigned short *,unsigned short *)const::_bh76RemainderRemap[*v22];
  *a2 = v21 | (v23 << 14);
  v24 = *(this + 22);
  *a3 = v24;
  v25 = *(this + 23);
  if (v25 > 3)
  {
    if (v25 - 4 >= 3)
    {
      return result;
    }

    if (v18)
    {
      v26 = 512;
    }

    else
    {
      v26 = 0;
    }

    LOWORD(v24) = (v23 << 6) & 0x3F00 | v26 | v24;
  }

  else
  {
    if (v25 != 1)
    {
      if (v25 == 2)
      {
        LOWORD(v24) = v24 & 0xC0FF | (v23 >> 2 << 8);
        goto LABEL_39;
      }

      if (v25 != 3)
      {
        return result;
      }
    }

    v24 |= v23 >> 2;
  }

LABEL_39:
  *a3 = v24;
  return result;
}

uint64_t findBaudDiv(unsigned int a1, unint64_t a2, unsigned __int16 *a3, unsigned __int16 *a4, unsigned int *a5)
{
  *a4 = 0;
  *a3 = 2;
  if (a1 - 1 >= a2)
  {
    return 3758097090;
  }

  v6 = (8 * a2 + (a1 >> 1)) / a1;
  *a4 = v6 & 7;
  *a3 = v6 >> 3;
  v7 = *a4;
  if ((v6 & 0x7FFF8) == 8)
  {
    if (v7 > 1)
    {
      if (v7 > 5)
      {
        *a3 = 2;
        LODWORD(a2) = a2 >> 1;
      }

      else
      {
        *a3 = 1;
        a2 = (1431655766 * (2 * a2)) >> 32;
      }
    }

    else
    {
      *a3 = 0;
    }

    *a5 = a2;
    *a4 = 0;
  }

  else
  {
    *a5 = calculateActualBaudRate(a2, (v6 >> 3), v7);
  }

  if (*a3 <= 0x3FFEu)
  {
    return 0;
  }

  else
  {
    return 3758096385;
  }
}

uint64_t calculateActualBaudRate(int a1, int a2, int a3)
{
  v5 = a3 | (8 * a2);
  if (v5)
  {
    return ((v5 >> 1) + 8 * a1) / v5;
  }

  v12 = v3;
  v13 = v4;
  v7 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT);
  result = 0;
  if (v7)
  {
    v8 = 136315394;
    v9 = "calculateActualBaudRate";
    v10 = 1024;
    v11 = 322;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "IOUserSerial::AppleUSBFTDI::%s: %d Division by zero\n", &v8, 0x12u);
    return 0;
  }

  return result;
}

uint64_t AppleUSBFTDI::HwResetFIFO_Impl(AppleUSBFTDI *this, int a2, int a3)
{
  if (a3)
  {
    v5 = *(this + 10);
    v6 = v5[22];
    v10 = 0;
    result = (*(**v5 + 104))(*v5, 64, 0, 1, v6, 0, 0, &v10, 5000);
    if (result)
    {
      return result;
    }
  }

  else
  {
    result = 0;
  }

  if (a2)
  {
    v8 = *(this + 10);
    v9 = v8[22];
    v11 = 0;
    return (*(**v8 + 104))(*v8, 64, 0, 2, v9, 0, 0, &v11, 5000);
  }

  return result;
}

uint64_t AppleUSBFTDI::HwSendBreak_Impl(AppleUSBFTDI *this, int a2)
{
  v2 = *(this + 10);
  v3 = v2[12];
  v4 = (v2[14] - 1) | (16 * (v2[13] == 4));
  if (a2)
  {
    v4 |= 0x40u;
  }

  v5 = v2[22];
  v7 = 0;
  return (*(**v2 + 104))(*v2, 64, 4, (v3 | (v4 << 8)), v5, 0, 0, &v7, 5000);
}

uint64_t AppleUSBFTDI::HwActivate_Impl(unsigned __int8 **this)
{
  result = IOUserSerial::HwActivate(this, &IOUserUSBSerial::_Dispatch);
  if (!result)
  {
    this[10][24] = 0;
    v3 = this[10];
    v4 = v3[22];
    v7 = 0;
    result = (*(**v3 + 104))(*v3, 64, 0, 0, v4, 0, 0, &v7, 5000);
    if (!result)
    {
      v5 = this[10];
      v6 = v5[22];
      v8 = 0;
      return (*(**v5 + 104))(*v5, 64, 2, 0, v6, 0, 0, &v8, 5000);
    }
  }

  return result;
}

uint64_t AppleUSBFTDI::HwProgramUART_Impl(AppleUSBFTDI *this, int a2, char a3, char a4, char a5)
{
  v5 = *(this + 10);
  *(v5 + 12) = a3;
  *(v5 + 13) = a4;
  *(v5 + 14) = a5;
  *(v5 + 8) = a2;
  return AppleUSBFTDI::HwSendBreak_Impl(this, 0);
}

uint64_t AppleUSBFTDI::HwProgramBaudRate_Impl(AppleUSBFTDI *this, int a2)
{
  *(*(this + 10) + 8) = a2;
  v6 = 0;
  v5 = 0;
  if (!AppleUSBFTDI_IVars::calculateDeviceBaud(*(this + 10), &v6, &v5))
  {
    return 3758097090;
  }

  v3 = *(this + 10);
  v7 = 0;
  return (*(**v3 + 104))(*v3, 64, 3, v6, v5, 0, 0, &v7, 5000);
}

uint64_t AppleUSBFTDI::HwProgramMCR_Impl(AppleUSBFTDI *this, int a2, int a3)
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  v4 = *(this + 10);
  v5 = v4[22];
  v7 = 0;
  return (*(**v4 + 104))(*v4, 64, 1, v3 | a2 | 0x300u, v5, 0, 0, &v7, 5000);
}

uint64_t AppleUSBFTDI::HwGetModemStatus_Impl(AppleUSBFTDI *this, BOOL *a2, BOOL *a3, BOOL *a4, BOOL *a5)
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

  v13 = *(this + 10);
  v14 = v13[22];
  v18 = 0;
  v11 = (*(**v13 + 104))(*v13, 192, 5, 0, v14, LOWORD(range.length), v17, &v18, 5000);
  v15 = *range.address;
  (v17->release)(v17);
  *a2 = (v15 & 0x10) != 0;
  *a3 = (v15 & 0x20) != 0;
  *a4 = (v15 & 0x40) != 0;
  *a5 = v15 >> 7;
  return v11;
}

uint64_t AppleUSBFTDI::HwProgramLatencyTimer_Impl(AppleUSBFTDI *this, unsigned __int16 a2)
{
  v2 = *(this + 10);
  v3 = v2[22];
  v5 = 0;
  return (*(**v2 + 104))(*v2, 64, 9, a2, v3, 0, 0, &v5, 5000);
}

uint64_t AppleUSBFTDI::HwProgramFlowControl_Impl(AppleUSBFTDI *this, int a2, int a3, int a4)
{
  v4 = *(this + 10);
  if (((*(v4 + 4) ^ a2) & 0x16) == 0)
  {
    return 0;
  }

  v5 = a4;
  v6 = a3;
  v7 = a2;
  v9 = 4 * ((a2 & 0x18) != 0);
  if ((a2 & 0x24) != 0)
  {
    v9 = 1;
  }

  v10 = *(v4 + 22) | (v9 << 8);
  if (v9 == 4)
  {
    v11 = a3 | (a4 << 8);
  }

  else
  {
    v11 = 0;
  }

  v13 = 0;
  result = (*(**v4 + 104))(*v4, 64, 2, v11, v10, 0, 0, &v13, 5000);
  if (!result)
  {
    *(*(this + 10) + 16) = v7 & 0x17E;
    *(*(this + 10) + 20) = v6;
    *(*(this + 10) + 21) = v5;
  }

  return result;
}

uint64_t AppleUSBFTDIMetaClass::New(AppleUSBFTDIMetaClass *this, OSObject *a2)
{
  a2->OSMetaClassBase::__vftable = &off_1000041E0;
  a2->OSObjectInterface::__vftable = off_100004240;
  *&a2[1].refcount = &off_100004260;
  a2[1].OSObjectInterface::__vftable = &off_100004278;
  return 0;
}

uint64_t AppleUSBFTDI::_Dispatch(IORPC *this, IORPCMessageMach **a2, IORPC *a3)
{
  msgid = IORPCMessageFromMach(*a2, 0)->msgid;
  if (msgid > 0xB7AA6E57CA295018)
  {
    if (msgid <= 0xEBA1AB4EDDD623ECLL)
    {
      if (msgid == 0xB7AA6E57CA295019)
      {
        v9 = *a2;
        return IOUserSerial::HwProgramMCR_Invoke(&v9, this, AppleUSBFTDI::HwProgramMCR_Impl, v6);
      }

      if (msgid == 0xC7971C55833FBB0BLL)
      {
        v9 = *a2;
        return IOUserSerial::HwResetFIFO_Invoke(&v9, this, AppleUSBFTDI::HwResetFIFO_Impl, v6);
      }
    }

    else
    {
      switch(msgid)
      {
        case 0xEBA1AB4EDDD623EDLL:
          v9 = *a2;
          return IOUserSerial::HwProgramFlowControl_Invoke(&v9, this, AppleUSBFTDI::HwProgramFlowControl_Impl, v6);
        case 0xF0FD7D516830B885:
          v9 = *a2;
          return IOUserSerial::HwGetModemStatus_Invoke(&v9, this, AppleUSBFTDI::HwGetModemStatus_Impl, v6);
        case 0xF3AD02F78DC96D04:
          v9 = *a2;
          return IOUserSerial::HwProgramUART_Invoke(&v9, this, AppleUSBFTDI::HwProgramUART_Impl, v6);
      }
    }
  }

  else if (msgid <= 0x908A8A97324B09CCLL)
  {
    if (msgid == 0x80AF88560BAF3C48)
    {
      v9 = *a2;
      return IOUserSerial::HwProgramLatencyTimer_Invoke(&v9, this, AppleUSBFTDI::HwProgramLatencyTimer_Impl, v6);
    }

    if (msgid == 0x8EB7D95D31DA2679)
    {
      v9 = *a2;
      return IOUserSerial::HwSendBreak_Invoke(&v9, this, AppleUSBFTDI::HwSendBreak_Impl, v6);
    }
  }

  else
  {
    switch(msgid)
    {
      case 0x908A8A97324B09CDLL:
        v9 = *a2;
        return IOUserSerial::HwProgramBaudRate_Invoke(&v9, this, AppleUSBFTDI::HwProgramBaudRate_Impl, v6);
      case 0xAB6F76DDE6D693F2:
        v9 = *a2;
        return IOService::Start_Invoke(&v9, this, AppleUSBFTDI::Start_Impl);
      case 0xAE696285403CB7ACLL:
        v9 = *a2;
        return IOUserSerial::HwActivate_Invoke(&v9, this, AppleUSBFTDI::HwActivate_Impl, v6);
    }
  }

  v9 = *a2;
  return IOUserUSBSerial::_Dispatch(this, &v9, v5);
}

uint64_t AppleUSBFTDIMetaClass::Dispatch(OSMetaClassBase *this, IORPC *a2)
{
  IORPCMessageFromMach(a2->message, 0);
  v5 = *a2;
  return OSMetaClassBase::Dispatch(this, &v5);
}