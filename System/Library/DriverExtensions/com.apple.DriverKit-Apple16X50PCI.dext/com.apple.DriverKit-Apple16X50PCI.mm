IOService_vtbl *Apple16X50PCI::init(IOService *this)
{
  result = IOMallocZeroTyped();
  if (result)
  {
    this[1].OSObject::OSMetaClassBase::__vftable = result;
    result->getMetaClass = this;

    return IOService::init(this);
  }

  return result;
}

void Apple16X50PCI::free(IOService *this)
{
  v2 = this[1].OSObject::OSMetaClassBase::__vftable;
  if (v2)
  {
    IOFree(v2, 0x48uLL);
    this[1].OSObject::OSMetaClassBase::__vftable = 0;
  }

  IOService::free(this);
}

uint64_t Apple16X50PCI::Start_Impl(Apple16X50PCI_IVars **this, IOService *a2)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v19 = 136315650;
    v20 = "Start_Impl";
    v21 = 1024;
    v22 = 1306;
    v23 = 2048;
    v24 = this;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "IOUserSerial::Apple16X50::%s: %d %p <==\n", &v19, 0x1Cu);
  }

  v4 = 3758097088;
  v5 = OSMetaClassBase::safeMetaCast(a2, gIOPCIDeviceMetaClass);
  if (!v5)
  {
    return 3758097084;
  }

  v6 = v5;
  v7 = Apple16X50PCI_IVars::probe(this[6], v5);
  if (v7)
  {
    return v7;
  }

  v7 = IOService::Start(this, a2, &IOService::_Dispatch);
  if (v7)
  {
    return v7;
  }

  v7 = IOPCIDevice::Open(v6, this, 0);
  if (v7)
  {
    return v7;
  }

  v9 = 0;
  Apple16X50_IVars::pciDev = v6;
  *(this[6] + 69) = -1;
  do
  {
    if (v9)
    {
      v10 = 1;
    }

    else
    {
      v10 = 8;
    }

    Apple16X50PCI_IVars::setupBAR(this[6], v9++, v10);
  }

  while (v9 != 4);
  if (!*(this[6] + 69))
  {
    readData = 0;
    IOPCIDevice::ConfigurationRead8(v6, 4uLL, &readData);
    readData |= 6u;
    IOPCIDevice::ConfigurationWrite8(v6, 4uLL, readData);
    v11 = 0;
    do
    {
      v12 = Apple16X50PCI_IVars::scanBARforUARTs(this[6], v11) != 1 || v11 == 3;
      v11 = (v11 + 1);
    }

    while (!v12);
    v13 = this[6];
    if (*(v13 + 16))
    {
      interruptType = 0;
      v14 = OSObject::CopyDispatchQueue(this, "Default", v13 + 1, 0);
      if (!v14)
      {
        v14 = IOInterruptDispatchSource::GetInterruptType(a2, 0, &interruptType);
        if (!v14)
        {
          v17 = (interruptType & 1) != 0 && (*(this[6] + 24) & 1) == 0 && !IOInterruptDispatchSource::GetInterruptType(a2, 1u, &interruptType) && (interruptType & 1) == 0;
          v18 = IOInterruptDispatchSource::Create(a2, v17, *(this[6] + 1), this[6] + 2);
          action = 0;
          if (!v18)
          {
            v18 = Apple16X50PCI::CreateActionInterruptOccurred(this, 8uLL, &action);
            if (!v18)
            {
              v18 = IOInterruptDispatchSource::SetHandler(*(this[6] + 2), action, 0);
              if (!v18)
              {
                v18 = IODispatchSource::SetEnable(*(this[6] + 2), 1, 0);
              }
            }
          }

          v4 = v18;
          goto LABEL_30;
        }
      }

      v4 = v14;
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        v19 = 136315650;
        v20 = "Start_Impl";
        v21 = 1024;
        v22 = 1333;
        v23 = 2048;
        v24 = this;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "IOUserSerial::Apple16X50::%s: %d %p no UARTs found\n", &v19, 0x1Cu);
      }

      interruptType = 0;
    }

    action = 0;
LABEL_30:
    if (Apple16X50_IVars::UART_Type == 11 && *(this[6] + 16))
    {
      v15 = 0;
      do
      {
        v16 = Apple16X50PCI_IVars::UART[v15];
        if (IOTimerDispatchSource::Create(*(v16 + 8), (v16 + 16)))
        {
          Apple16X50PCI::Start_Impl();
        }

        if (Apple16X50::CreateActionTimerOccurred(*v16, 8uLL, &action))
        {
          Apple16X50PCI::Start_Impl();
        }

        if (IOTimerDispatchSource::SetHandler(*(v16 + 16), action, 0))
        {
          Apple16X50PCI::Start_Impl();
        }

        ++v15;
      }

      while (v15 < *(this[6] + 16));
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 136315906;
      v20 = "Start_Impl";
      v21 = 1024;
      v22 = 1362;
      v23 = 2048;
      v24 = this;
      v25 = 1024;
      v26 = v4;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "IOUserSerial::Apple16X50::%s: %d %p ==>%x\n", &v19, 0x22u);
    }

    if (v4)
    {
      IOService::Stop(this, v6, 0);
    }
  }

  return v4;
}

uint64_t Apple16X50PCI_IVars::probe(Apple16X50PCI_IVars *this, IOPCIDevice *a2)
{
  v35 = 1;
  IOParseBootArgNumber("dk.16x50", &v35, 4);
  properties = 0;
  v4 = IOService::CopyProperties(a2, &properties, 0);
  if (v4)
  {
    return v4;
  }

  Object = OSDictionary::getObject(properties, "device-id");
  v6 = OSMetaClassBase::safeMetaCast(Object, gOSDataMetaClass);
  if (!v6 || (v7 = v6, OSData::getLength(v6) < 4))
  {
    v4 = 3758097088;
    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_24;
    }

    v28 = 136315650;
    v29 = "probe";
    v30 = 1024;
    v31 = 1276;
    v32 = 2048;
    v33 = a2;
    v15 = "IOUserSerial::Apple16X50::%s: %d %p, no device-id property\n";
LABEL_23:
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v15, &v28, 0x1Cu);
    goto LABEL_24;
  }

  v8 = *OSData::getBytesNoCopy(v7);
  v9 = OSDictionary::getObject(properties, "vendor-id");
  v10 = OSMetaClassBase::safeMetaCast(v9, gOSDataMetaClass);
  if (!v10 || (v11 = v10, OSData::getLength(v10) < 4))
  {
    v4 = 3758097088;
    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_24;
    }

    v28 = 136315650;
    v29 = "probe";
    v30 = 1024;
    v31 = 1272;
    v32 = 2048;
    v33 = a2;
    v15 = "IOUserSerial::Apple16X50::%s: %d %p, no vendor-id property\n";
    goto LABEL_23;
  }

  v12 = *OSData::getBytesNoCopy(v11);
  if (v12 == 5032)
  {
    if (((v8 - 850) > 6 || ((1 << (v8 - 82)) & 0x45) == 0) && v8 != 33624 && v8 != 17240)
    {
      goto LABEL_77;
    }

    Apple16X50_IVars::UART_Type = 11;
    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_77;
    }

    v28 = 136315650;
    v29 = "probe";
    v30 = 1024;
    v31 = 1259;
    v32 = 2048;
    v33 = a2;
    v20 = "IOUserSerial::Apple16X50::%s: %d %p, Exar PCIe UART\n";
LABEL_76:
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v20, &v28, 0x1Cu);
LABEL_77:
    v4 = 0;
    goto LABEL_24;
  }

  if (v12 != 5141)
  {
    if (v12 == 7439 && v8 == 33360)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        v28 = 136315650;
        v29 = "probe";
        v30 = 1024;
        v31 = 1261;
        v32 = 2048;
        v33 = a2;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "IOUserSerial::Apple16X50::%s: %d %p, Amazon SW UART\n", &v28, 0x1Cu);
      }

      v4 = 0;
      *(this + 24) = 1;
      goto LABEL_24;
    }

    goto LABEL_77;
  }

  v4 = 0;
  if (v8 > 50250)
  {
    if (v8 <= 50314)
    {
      if ((v8 - 50251) > 0x34 || ((1 << (v8 - 75)) & 0x11001100110011) == 0)
      {
        goto LABEL_24;
      }

      goto LABEL_72;
    }

    v23 = (v8 - 50315) <= 0x34 && ((1 << (v8 + 117)) & 0x11001100110011) != 0 || v8 == 50383;
    v24 = 50379;
LABEL_63:
    if (!v23 && v8 != v24)
    {
      goto LABEL_24;
    }

    goto LABEL_72;
  }

  if (v8 > 49927)
  {
    v23 = (v8 - 50187) <= 0x34 && ((1 << (v8 - 11)) & 0x11001100110011) != 0 || v8 == 49928;
    v24 = 49933;
    goto LABEL_63;
  }

  if (v8 <= 49671)
  {
    if (((v8 - 49439) > 0x3E || ((1 << (v8 - 31)) & 0x4200000042000001) == 0) && v8 != 49435)
    {
      goto LABEL_24;
    }

    goto LABEL_72;
  }

  if (v8 == 49672 || v8 == 49677)
  {
LABEL_72:
    if (v35 == 1)
    {
      Apple16X50_IVars::dmaMode = 1;
    }

    Apple16X50_IVars::UART_Type = 10;
    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_77;
    }

    v28 = 136315650;
    v29 = "probe";
    v30 = 1024;
    v31 = 1253;
    v32 = 2048;
    v33 = a2;
    v20 = "IOUserSerial::Apple16X50::%s: %d %p, Oxford PLX 16C950 series UART\n";
    goto LABEL_76;
  }

LABEL_24:
  if (properties)
  {
    (properties->release)(properties);
  }

  return v4;
}

BOOL Apple16X50PCI_IVars::setupBAR(Apple16X50PCI_IVars *this, unsigned int a2, int a3)
{
  *v22 = 0;
  v21 = 0;
  if (IOPCIDevice::GetBARInfo(Apple16X50_IVars::pciDev, a2, &v22[1], &v21, v22, 0))
  {
    goto LABEL_2;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v8 = "MEM";
    if (v22[0] == 1)
    {
      v8 = "I/O";
    }

    v11 = 136316162;
    v12 = "setupBAR";
    v13 = 1024;
    v14 = 1037;
    v15 = 1024;
    v16 = a2;
    v17 = 2080;
    v18 = v8;
    v19 = 2048;
    v20 = v21;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "IOUserSerial::Apple16X50::%s: %d BAR[%d] type=%s (len=%llu bytes)\n", &v11, 0x2Cu);
  }

  v6 = *(this + 69);
  if (!*(this + 69))
  {
    goto LABEL_3;
  }

  if (v6 == 1)
  {
    if (v22[0] != 1)
    {
LABEL_2:
      v6 = 0;
LABEL_3:
      result = 0;
      goto LABEL_4;
    }
  }

  else
  {
    v9 = v22[0] == 1;
    *(this + 69) = v9;
    if (!v9)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        v11 = 136315394;
        v12 = "setupBAR";
        v13 = 1024;
        v14 = 1065;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "IOUserSerial::Apple16X50::%s: %d Mapping type of the PCI BAR is MemoryMapped\n", &v11, 0x12u);
      }

      result = 1;
      v6 = v21;
      goto LABEL_4;
    }
  }

  result = 0;
  v6 = 0;
  if (v21 <= (8 * a3) && v21 >= 8)
  {
    result = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT);
    if (!result)
    {
      v6 = 0;
      goto LABEL_4;
    }

    v11 = 136315394;
    v12 = "setupBAR";
    v13 = 1024;
    v14 = 1062;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "IOUserSerial::Apple16X50::%s: %d Mapping type of the PCI BAR is IOMapped\n", &v11, 0x12u);
    goto LABEL_2;
  }

LABEL_4:
  *(this + a2 + 4) = v6;
  return result;
}

uint64_t Apple16X50PCI_IVars::scanBARforUARTs(Apple16X50PCI_IVars *this, Apple16X50PCI_IVars *a2)
{
  v2 = this + 32;
  v3 = *(this + a2 + 4);
  if (v3)
  {
    if (v3 >= 8)
    {
      v6 = 520;
      do
      {
        readData = 0;
        IOPCIDevice::MemoryRead8(Apple16X50_IVars::pciDev, a2, v6 - 516, &readData);
        if ((readData & 0x10) != 0)
        {
          IOPCIDevice::MemoryWrite8(Apple16X50_IVars::pciDev, a2, v6 - 516, readData & 0xEF);
        }

        v7 = *&v2[8 * a2] >= v6;
        v6 += 512;
      }

      while (v7);
    }

    if (Apple16X50PCI_IVars::probeUART(this, a2, 0))
    {
      v8 = 512;
    }

    else
    {
      if (*&v2[8 * a2] >> 3 < 0x201uLL || !Apple16X50PCI_IVars::probeUART(this, a2, 0x1000u))
      {
        goto LABEL_26;
      }

      v8 = 4608;
    }

    if (*&v2[8 * a2] < (v8 | 8))
    {
      goto LABEL_20;
    }

    v9 = 1;
    while (Apple16X50PCI_IVars::probeUART(this, a2, v8))
    {
      v9 = (v9 + 1);
      v10 = v8 + 512;
      v11 = v8 + 520;
      v8 += 512;
      if (*&v2[8 * a2] < v11)
      {
        goto LABEL_19;
      }
    }

    v10 = v8;
LABEL_19:
    v8 = v10;
    if (v9 == 1)
    {
LABEL_20:
      if (*&v2[8 * a2] < (v8 + 520))
      {
        return 1;
      }

      v12 = v8 + 1544;
      v9 = 1;
      do
      {
        if (!Apple16X50PCI_IVars::probeUART(this, a2, v12 - 1032))
        {
          break;
        }

        v9 = (v9 + 1);
        v7 = *&v2[8 * a2] >= v12;
        v12 += 1024;
      }

      while (v7);
    }

    if (v9)
    {
      return v9;
    }

LABEL_26:
    v9 = 0;
    *&v2[8 * a2] = 0;
    return v9;
  }

  return 0;
}

uint64_t Apple16X50PCI::SetPowerState_Impl(IOService *this, uint32_t a2)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136315906;
    v12 = "SetPowerState_Impl";
    v13 = 1024;
    v14 = 1369;
    v15 = 2048;
    v16 = this;
    v17 = 1024;
    v18 = a2;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "IOUserSerial::Apple16X50::%s: %d %p powerFlags=%x\n", &v11, 0x22u);
  }

  LOBYTE(v11) = 0;
  IOPCIDevice::ConfigurationRead8(Apple16X50_IVars::pciDev, 4uLL, &v11);
  if (a2)
  {
    BYTE4(this[1].OSObject::OSMetaClassBase::__vftable[1].retain) = 0;
    LOBYTE(v11) = v11 | 4;
    IOPCIDevice::ConfigurationWrite8(Apple16X50_IVars::pciDev, 4uLL, v11);
    v4 = this[1].OSObject::OSMetaClassBase::__vftable;
    if (LODWORD(v4[1].retain))
    {
      v5 = 0;
      do
      {
        v6 = Apple16X50PCI_IVars::UART[v5];
        if (*(v6 + 100) == 1)
        {
          Apple16X50_IVars::reset(Apple16X50PCI_IVars::UART[v5]);
          Apple16X50_IVars::hwProgramUART(v6);
          Apple16X50_IVars::hwProgramFlowControl(v6);
          Apple16X50_IVars::hwProgramMCR(v6);
          Apple16X50_IVars::activate(v6);
          v4 = this[1].OSObject::OSMetaClassBase::__vftable;
        }

        ++v5;
      }

      while (v5 < LODWORD(v4[1].retain));
    }
  }

  else
  {
    LOBYTE(v11) = v11 & 0xFB;
    IOPCIDevice::ConfigurationWrite8(Apple16X50_IVars::pciDev, 4uLL, v11);
    v7 = this[1].OSObject::OSMetaClassBase::__vftable;
    if (LODWORD(v7[1].retain))
    {
      v8 = 0;
      do
      {
        v9 = Apple16X50PCI_IVars::UART[v8];
        if (*(v9 + 100) == 1)
        {
          Apple16X50_IVars::reset(Apple16X50PCI_IVars::UART[v8]);
          Apple16X50_IVars::deactivate(v9);
          v7 = this[1].OSObject::OSMetaClassBase::__vftable;
        }

        ++v8;
      }

      while (v8 < LODWORD(v7[1].retain));
    }

    BYTE4(v7[1].retain) = 1;
  }

  return IOService::SetPowerState(this, a2, &IOService::_Dispatch);
}

void Apple16X50_IVars::reset(Apple16X50_IVars *this)
{
  if (Apple16X50_IVars::UART_Type == 10)
  {
    v2 = 146;
  }

  else
  {
    if (Apple16X50_IVars::UART_Type != 11)
    {
      goto LABEL_6;
    }

    v2 = 9;
  }

  IOPCIDevice::MemoryWrite8(Apple16X50_IVars::pciDev, *(this + 28), (*(this + 8) + v2), 0x10u);
LABEL_6:
  IOPCIDevice::MemoryWrite8(Apple16X50_IVars::pciDev, *(this + 28), (*(this + 8) + 1), 0);
  IOPCIDevice::MemoryWrite8(Apple16X50_IVars::pciDev, *(this + 28), (*(this + 8) + 7), 0);
  IOPCIDevice::MemoryWrite8(Apple16X50_IVars::pciDev, *(this + 28), (*(this + 8) + 3), 0);
  IOPCIDevice::MemoryWrite8(Apple16X50_IVars::pciDev, *(this + 28), (*(this + 8) + 1), 0);
  IOPCIDevice::MemoryWrite8(Apple16X50_IVars::pciDev, *(this + 28), (*(this + 8) + 2), 6u);
  v3 = *(this + 28);
  v4 = Apple16X50_IVars::pciDev;
  v5 = (*(this + 8) + 4);

  IOPCIDevice::MemoryWrite8(v4, v3, v5, 0);
}

uint64_t Apple16X50_IVars::hwProgramUART(Apple16X50_IVars *this)
{
  if (*(this + 88) - 6 < 3)
  {
    v2 = *(this + 88) - 5;
  }

  else
  {
    v2 = 0;
  }

  if (*(this + 89) - 3 < 2)
  {
    v2 |= 4u;
  }

  v3 = *(this + 90);
  v4 = v2 | 0x28;
  v5 = v2 | 0x38;
  if (v3 != 5)
  {
    v5 = v2;
  }

  if (v3 != 4)
  {
    v4 = v5;
  }

  v6 = v2 | 8;
  if (v3 == 3)
  {
    v2 |= 0x18u;
  }

  if (v3 == 2)
  {
    v2 = v6;
  }

  if (*(this + 90) <= 3u)
  {
    v7 = v2;
  }

  else
  {
    v7 = v4;
  }

  Apple16X50_IVars::hwProgramBaudRate(this);
  IOPCIDevice::MemoryWrite8(Apple16X50_IVars::pciDev, *(this + 28), (*(this + 8) + 3), v7);
  return 0;
}

uint64_t Apple16X50_IVars::hwProgramFlowControl(Apple16X50_IVars *this)
{
  if (Apple16X50_IVars::UART_Type == 11)
  {
    v4 = *(this + 23);
    if ((v4 & 0x24) != 0)
    {
      IOPCIDevice::MemoryWrite8(Apple16X50_IVars::pciDev, *(this + 28), (*(this + 8) + 9), 0xD0u);
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        v8 = 136315394;
        v9 = "hwProgramFlowControl";
        v10 = 1024;
        v11 = 303;
        v3 = "IOUserSerial::Apple16X50::%s: %d auto rts/cts FC\n";
        goto LABEL_20;
      }
    }

    else if ((v4 & 0x18) != 0)
    {
      IOPCIDevice::MemoryWrite8(Apple16X50_IVars::pciDev, *(this + 28), (*(this + 8) + 14), *(this + 96));
      IOPCIDevice::MemoryWrite8(Apple16X50_IVars::pciDev, *(this + 28), (*(this + 8) + 12), *(this + 97));
      IOPCIDevice::MemoryWrite8(Apple16X50_IVars::pciDev, *(this + 28), (*(this + 8) + 9), 0x1Au);
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        v8 = 136315394;
        v9 = "hwProgramFlowControl";
        v10 = 1024;
        v11 = 308;
        v3 = "IOUserSerial::Apple16X50::%s: %d in-band FC\n";
        goto LABEL_20;
      }
    }

    else
    {
      IOPCIDevice::MemoryWrite8(Apple16X50_IVars::pciDev, *(this + 28), (*(this + 8) + 9), 0x10u);
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        v8 = 136315394;
        v9 = "hwProgramFlowControl";
        v10 = 1024;
        v11 = 311;
        v3 = "IOUserSerial::Apple16X50::%s: %d no FC\n";
        goto LABEL_20;
      }
    }
  }

  else if (Apple16X50_IVars::UART_Type == 10)
  {
    v2 = *(this + 23);
    if ((v2 & 0x24) != 0)
    {
      IOPCIDevice::MemoryWrite8(Apple16X50_IVars::pciDev, *(this + 28), (*(this + 8) + 146), 0xD0u);
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        v8 = 136315394;
        v9 = "hwProgramFlowControl";
        v10 = 1024;
        v11 = 290;
        v3 = "IOUserSerial::Apple16X50::%s: %d auto rts/cts FC\n";
LABEL_20:
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v3, &v8, 0x12u);
      }
    }

    else if ((v2 & 0x18) != 0)
    {
      IOPCIDevice::MemoryWrite8(Apple16X50_IVars::pciDev, *(this + 28), (*(this + 8) + 148), *(this + 96));
      IOPCIDevice::MemoryWrite8(Apple16X50_IVars::pciDev, *(this + 28), (*(this + 8) + 150), *(this + 97));
      IOPCIDevice::MemoryWrite8(Apple16X50_IVars::pciDev, *(this + 28), (*(this + 8) + 146), 0x1Au);
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        v8 = 136315394;
        v9 = "hwProgramFlowControl";
        v10 = 1024;
        v11 = 295;
        v3 = "IOUserSerial::Apple16X50::%s: %d in-band FC\n";
        goto LABEL_20;
      }
    }

    else
    {
      IOPCIDevice::MemoryWrite8(Apple16X50_IVars::pciDev, *(this + 28), (*(this + 8) + 146), 0x10u);
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        v8 = 136315394;
        v9 = "hwProgramFlowControl";
        v10 = 1024;
        v11 = 298;
        v3 = "IOUserSerial::Apple16X50::%s: %d no FC\n";
        goto LABEL_20;
      }
    }
  }

  else
  {
    v5 = *(this + 28);
    v6 = *(this + 8);
    LOBYTE(v8) = 0;
    IOPCIDevice::MemoryRead8(Apple16X50_IVars::pciDev, v5, (v6 + 4), &v8);
    IOPCIDevice::MemoryWrite8(Apple16X50_IVars::pciDev, *(this + 28), (*(this + 8) + 4), v8 & 0xDF | (32 * ((*(this + 23) & 0x24) != 0)));
  }

  return 0;
}

uint64_t Apple16X50_IVars::hwProgramMCR(Apple16X50_IVars *this)
{
  v2 = *(this + 28);
  v3 = *(this + 8);
  readData = 0;
  IOPCIDevice::MemoryRead8(Apple16X50_IVars::pciDev, v2, (v3 + 4), &readData);
  v4 = readData & 0xF4 | 8;
  if (*(this + 98))
  {
    v4 = readData | 9;
  }

  v5 = v4 & 0xFD;
  if (*(this + 99))
  {
    v6 = 2;
  }

  else
  {
    v6 = 0;
  }

  IOPCIDevice::MemoryWrite8(Apple16X50_IVars::pciDev, *(this + 28), (*(this + 8) + 4), v5 | v6);
  return 0;
}

uint64_t Apple16X50_IVars::activate(Apple16X50_IVars *this)
{
  if (Apple16X50_IVars::dmaMode == 1)
  {
    segmentsCount = 1;
    flags = 0;
    memset(specification._resv, 0, sizeof(specification._resv));
    specification.options = 0;
    specification.maxAddressBits = 64;
    result = IODMACommand::Create(Apple16X50_IVars::pciDev, 0, &specification, this + 5);
    if (result)
    {
      return result;
    }

    result = IODMACommand::Create(Apple16X50_IVars::pciDev, 0, &specification, this + 6);
    if (result)
    {
      return result;
    }

    result = IODMACommand::PrepareForDMA(*(this + 5), 0, *(*(*this + 56) + 400), 0, 0, &flags, &segmentsCount, &segments, 0);
    if (result)
    {
      return result;
    }

    *(this + 7) = segments.address;
    result = IODMACommand::PrepareForDMA(*(this + 6), 0, *(*(*this + 56) + 408), 0, 0, &flags, &segmentsCount, &segments, 0);
    if (result)
    {
      return result;
    }

    *(this + 8) = segments.address;
    *(this + 101) = 0;
  }

  if (Apple16X50_IVars::UART_Type == 11)
  {
    IOPCIDevice::MemoryWrite8(Apple16X50_IVars::pciDev, *(this + 28), (*(this + 8) + 136), 0);
    IOPCIDevice::MemoryWrite8(Apple16X50_IVars::pciDev, *(this + 28), (*(this + 8) + 8), 0xC0u);
    IOPCIDevice::MemoryWrite8(Apple16X50_IVars::pciDev, *(this + 28), (*(this + 8) + 10), 0x20u);
    IOPCIDevice::MemoryWrite8(Apple16X50_IVars::pciDev, *(this + 28), (*(this + 8) + 11), 0x80u);
  }

  *(this + 51) = 0;
  IOPCIDevice::MemoryWrite8(Apple16X50_IVars::pciDev, *(this + 28), (*(this + 8) + 1), 0xDu);
  return 0;
}

uint64_t Apple16X50_IVars::deactivate(Apple16X50_IVars *this)
{
  if ((*(this + 24) & 1) == 0)
  {
    IOPCIDevice::MemoryWrite8(Apple16X50_IVars::pciDev, *(this + 28), (*(this + 8) + 1), 0);
  }

  if (Apple16X50_IVars::dmaMode == 1)
  {
    v2 = *(this + 5);
    if (v2)
    {
      IODMACommand::CompleteDMA(v2, 0, 0);
      v3 = *(this + 5);
      if (v3)
      {
        (*(*v3 + 16))(v3);
        *(this + 5) = 0;
      }
    }

    v4 = *(this + 6);
    if (v4)
    {
      IODMACommand::CompleteDMA(v4, 0, 0);
      v5 = *(this + 6);
      if (v5)
      {
        (*(*v5 + 16))(v5);
        *(this + 6) = 0;
      }
    }
  }

  return 0;
}

uint64_t Apple16X50PCI::Stop_Impl(IOService *this, IOService *a2)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136315906;
    v11 = "Stop_Impl";
    v12 = 1024;
    v13 = 1408;
    v14 = 2048;
    v15 = this;
    v16 = 2048;
    v17 = a2;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "IOUserSerial::Apple16X50::%s: %d %p %p\n", &v10, 0x26u);
  }

  v4 = this[1].OSObject::OSMetaClassBase::__vftable;
  if (LODWORD(v4[1].retain))
  {
    v5 = 0;
    do
    {
      v6 = Apple16X50PCI_IVars::UART[v5];
      *(v6 + 24) = 1;
      IOService::Terminate(*v6, 0, 0);
      (*(**v6 + 16))();
      ++v5;
      v4 = this[1].OSObject::OSMetaClassBase::__vftable;
    }

    while (v5 < LODWORD(v4[1].retain));
  }

  release = v4->release;
  if (release)
  {
    (*(*release + 16))(release);
    this[1].release = 0;
    v4 = this[1].OSObject::OSMetaClassBase::__vftable;
  }

  retain = v4->retain;
  if (retain)
  {
    (*(*retain + 16))(retain);
    this[1].retain = 0;
  }

  if (Apple16X50_IVars::pciDev)
  {
    IOPCIDevice::Close(Apple16X50_IVars::pciDev, this, 0);
  }

  return IOService::Stop(this, a2, &IOService::_Dispatch);
}

void Apple16X50PCI::InterruptOccurred_Impl(Apple16X50PCI *this, OSAction *a2)
{
  v2 = *(this + 6);
  if ((*(v2 + 68) & 1) == 0)
  {
    if (Apple16X50_IVars::UART_Type == 11)
    {
      readData = 0;
      IOPCIDevice::MemoryRead32(Apple16X50_IVars::pciDev, 0, 0x80uLL, &readData);
      v4 = readData;
      v2 = *(this + 6);
    }

    else
    {
      v4 = -1;
    }

    if (*(v2 + 64))
    {
      v5 = 0;
      do
      {
        v6 = Apple16X50PCI_IVars::UART[v5];
        if (v6 && *(v6 + 100) == 1 && ((v4 >> v5) & 1) != 0)
        {
          v7 = *(v6 + 8);
          block[0] = _NSConcreteStackBlock;
          block[1] = 0x40000000;
          block[2] = ___ZN13Apple16X50PCI22InterruptOccurred_ImplEP8OSActionyy_block_invoke;
          block[3] = &__block_descriptor_tmp;
          block[4] = v6;
          v9 = v4;
          v10 = v5;
          IODispatchQueue::DispatchSync(v7, block);
          v2 = *(this + 6);
        }

        ++v5;
      }

      while (v5 < *(v2 + 64));
    }
  }
}

void ___ZN13Apple16X50PCI22InterruptOccurred_ImplEP8OSActionyy_block_invoke(uint64_t a1)
{
  if (Apple16X50_IVars::dmaMode == 1)
  {
    Apple16X50_IVars::interruptOXPCIe95X(*(a1 + 32));
  }

  else if (Apple16X50_IVars::UART_Type == 11)
  {
    v1 = (3 * *(a1 + 44) + 8);
    Apple16X50_IVars::interruptExar(*(a1 + 32), (*(a1 + 40) >> (3 * *(a1 + 44) + 8)) & 7);
  }

  else
  {
    Apple16X50_IVars::interrupt(*(a1 + 32));
  }
}

void Apple16X50_IVars::interruptOXPCIe95X(Apple16X50_IVars *this)
{
  while (1)
  {
    v2 = *(this + 28);
    v3 = *(this + 8);
    readData = 0;
    IOPCIDevice::MemoryRead32(Apple16X50_IVars::pciDev, v2, (v3 + 132), &readData);
    v4 = readData;
    if ((readData & 0x100) != 0)
    {
      return;
    }

    v5 = (readData >> 9) & 7;
    if (v5 != 3)
    {
      break;
    }

    if ((readData & 0x1E) != 0 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      readData = 136315650;
      v14 = "interruptOXPCIe95X";
      v15 = 1024;
      v16 = 395;
      v17 = 1024;
      v18 = v4;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "IOUserSerial::Apple16X50::%s: %d error interrupt lsr=%x\n", &readData, 0x18u);
    }

    if (v4)
    {
      if (*(this + 101) >= 1)
      {
        while (1)
        {
          v6 = *(this + 28);
          v7 = *(this + 8);
          LOBYTE(readData) = 0;
          IOPCIDevice::MemoryRead8(Apple16X50_IVars::pciDev, v6, (v7 + 268), &readData);
          if ((readData & 1) == 0)
          {
            break;
          }

          IODelay(1uLL);
        }
      }

LABEL_21:
      v8 = BYTE2(v4);
      v9 = this;
      v10 = 1;
      goto LABEL_22;
    }
  }

  if (((readData >> 9) & 7) > 1)
  {
    if (v5 == 6)
    {
      goto LABEL_21;
    }

    if (v5 != 2)
    {
      return;
    }

    v8 = BYTE2(readData);
    v9 = this;
    v10 = 0;
LABEL_22:
    Apple16X50_IVars::rxDataInterruptOXPCIe95X(v9, v10, v8);
    return;
  }

  if (v5)
  {
    if ((readData & 1) != 0 && !*(this + 101))
    {
      Apple16X50_IVars::rxDataInterruptOXPCIe95X(this, 0, BYTE2(readData));
    }

    Apple16X50_IVars::txInterruptOXPCIe95X(this, HIBYTE(v4));
  }

  else
  {
    v11 = *(this + 28);
    v12 = *(this + 8);
    LOBYTE(readData) = 0;
    IOPCIDevice::MemoryRead8(Apple16X50_IVars::pciDev, v11, (v12 + 6), &readData);
  }
}

void Apple16X50_IVars::interruptExar(Apple16X50_IVars *this, int a2)
{
  if (a2 <= 1)
  {
    if (!a2)
    {
      goto LABEL_12;
    }

    if (a2 == 1)
    {
      v3 = *(this + 28);
      v4 = *(this + 8);
      LOBYTE(v17) = 0;
      IOPCIDevice::MemoryRead8(Apple16X50_IVars::pciDev, v3, (v4 + 5), &v17);
      v5 = v17;
      if ((v17 & 0x1E) != 0 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        v17 = 136315650;
        v18 = "interruptExar";
        v19 = 1024;
        v20 = 422;
        v21 = 1024;
        v22 = v5;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "IOUserSerial::Apple16X50::%s: %d error interrupt lsr=%x\n", &v17, 0x18u);
      }

      goto LABEL_10;
    }

    goto LABEL_9;
  }

  if (a2 == 2)
  {
LABEL_10:
    Apple16X50_IVars::rxDataInterruptExar(this);
    goto LABEL_11;
  }

  if (a2 != 3)
  {
LABEL_9:
    v6 = *(this + 28);
    v7 = *(this + 8);
    LOBYTE(v17) = 0;
    IOPCIDevice::MemoryRead8(Apple16X50_IVars::pciDev, v6, (v7 + 6), &v17);
    goto LABEL_12;
  }

LABEL_11:
  Apple16X50_IVars::txInterruptExar(this);
LABEL_12:
  while (1)
  {
    v8 = *(this + 28);
    v9 = *(this + 8);
    LOBYTE(v17) = 0;
    IOPCIDevice::MemoryRead8(Apple16X50_IVars::pciDev, v8, (v9 + 2), &v17);
    v10 = v17;
    if (v17)
    {
      break;
    }

    v11 = *(this + 28);
    v12 = *(this + 8);
    LOBYTE(v17) = 0;
    IOPCIDevice::MemoryRead8(Apple16X50_IVars::pciDev, v11, (v12 + 5), &v17);
    v13 = v17;
    v14 = v10 & 0xE;
    if (v14 != 4)
    {
      if (!v14)
      {
        v15 = *(this + 28);
        v16 = *(this + 8);
        LOBYTE(v17) = 0;
        IOPCIDevice::MemoryRead8(Apple16X50_IVars::pciDev, v15, (v16 + 6), &v17);
        goto LABEL_19;
      }

      if (v14 != 12 && (v17 & 1) == 0)
      {
        goto LABEL_19;
      }
    }

    Apple16X50_IVars::rxDataInterruptExar(this);
LABEL_19:
    if (v14 == 2 || (v13 & 0x60) != 0)
    {
      goto LABEL_11;
    }
  }
}

void Apple16X50_IVars::interrupt(uint64_t a1)
{
  v2 = *(a1 + 28);
  v3 = *(a1 + 32);
  for (readData = 0; ; readData = 0)
  {
    IOPCIDevice::MemoryRead8(Apple16X50_IVars::pciDev, v2, (v3 + 2), &readData);
    v4 = readData;
    if (readData)
    {
      break;
    }

    v5 = *(a1 + 28);
    v6 = *(a1 + 32);
    v11 = 0;
    IOPCIDevice::MemoryRead8(Apple16X50_IVars::pciDev, v5, (v6 + 5), &v11);
    v7 = v4 & 0xE;
    if (v7 == 4)
    {
      Apple16X50_IVars::rxDataInterrupt(a1, 0);
    }

    else if (v7)
    {
      if (v7 == 12 || (v11 & 1) != 0)
      {
        Apple16X50_IVars::rxDataInterrupt(a1, 1);
      }

      if (v7 == 2)
      {
        Apple16X50_IVars::txInterrupt(a1);
      }
    }

    else
    {
      v8 = *(a1 + 28);
      v9 = *(a1 + 32);
      v12 = 0;
      IOPCIDevice::MemoryRead8(Apple16X50_IVars::pciDev, v8, (v9 + 6), &v12);
    }

    v2 = *(a1 + 28);
    v3 = *(a1 + 32);
  }
}

uint64_t Apple16X50::free(Apple16X50 *this)
{
  v2 = *(this + 8);
  if (v2)
  {
    IOFree(v2, 0x68uLL);
    *(this + 8) = 0;
  }

  return IOUserSerial::free(this);
}

uint64_t Apple16X50::Start_Impl(IOService *this, IOService *a2)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315650;
    v7 = "Start_Impl";
    v8 = 1024;
    v9 = 1459;
    v10 = 2048;
    v11 = this;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "IOUserSerial::Apple16X50::%s: %d %p <==\n", &v6, 0x1Cu);
  }

  v4 = IOService::Start(this, a2, &IOUserSerial::_Dispatch);
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315906;
    v7 = "Start_Impl";
    v8 = 1024;
    v9 = 1461;
    v10 = 2048;
    v11 = this;
    v12 = 1024;
    v13 = v4;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "IOUserSerial::Apple16X50::%s: %d %p ==>0x%08x\n", &v6, 0x22u);
  }

  if (v4)
  {
    IOService::Stop(this, this, 0);
  }

  return v4;
}

uint64_t Apple16X50::Stop_Impl(IOService *this, IOService *a2)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315906;
    v9 = "Stop_Impl";
    v10 = 1024;
    v11 = 1468;
    v12 = 2048;
    v13 = this;
    v14 = 2048;
    v15 = a2;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "IOUserSerial::Apple16X50::%s: %d %p %p\n", &v8, 0x26u);
  }

  LOBYTE(this[1].meta->metaClassPrivate) = 1;
  meta = this[1].meta;
  v5 = meta->meta;
  if (v5)
  {
    (v5->release)(v5);
    this[1].meta->OSObject::meta = 0;
    meta = this[1].meta;
  }

  v6 = *&meta->refcount;
  if (v6)
  {
    (*(*v6 + 16))(v6);
    *&this[1].meta->OSObject::OSObjectInterface::refcount = 0;
  }

  return IOService::Stop(this, a2, &IOUserSerial::_Dispatch);
}

void Apple16X50::TimerOccurred_Impl(Apple16X50 *this, OSAction *a2)
{
  v2 = *(this + 8);
  if ((*(v2 + 24) & 1) == 0 && *(v2 + 100) == 1)
  {
    if (Apple16X50_IVars::UART_Type == 11)
    {
      Apple16X50_IVars::txInterruptExar(v2);
    }

    else
    {
      Apple16X50_IVars::interrupt(v2);
    }
  }
}

void Apple16X50_IVars::txInterruptExar(Apple16X50_IVars *this)
{
  v2 = *(*this + 56);
  v3 = *(v2 + 128);
  v4 = *(v2 + 132);
  v5 = v3 - v4;
  if (v3 != v4)
  {
    v6 = 1 << *(v2 + 265);
    v7 = (v6 - 1);
    if (v5 == v7)
    {
      *(this + 103) = 1;
    }

    v8 = v6 - (v7 & v4);
    if (v8 >= v5)
    {
      v9 = v5;
    }

    else
    {
      v9 = v8;
    }

    v10 = *(this + 19);
    v11 = v10 - Apple16X50_IVars::hwGetTxFIFOLevel(this);
    if (v11 == 1)
    {
      v11 = 0;
    }

    if (v9 < v11)
    {
      v11 = v9;
    }

    if (v5 != v11 && (*(this + 102) & 1) == 0)
    {
      *(this + 102) = 1;
    }

    v12 = 0;
    v13 = *(v2 + 424);
    for (i = v11 & 3; ; v11 = i)
    {
      if (v11 <= 1)
      {
        if (!v11)
        {
          goto LABEL_25;
        }

        if (v11 == 1)
        {
          goto LABEL_29;
        }
      }

      else
      {
        switch(v11)
        {
          case 2:
            goto LABEL_28;
          case 3:
            IOPCIDevice::MemoryWrite8(Apple16X50_IVars::pciDev, *(this + 28), (*(this + 8) + 256), *(v13 + (v4 & v7)));
            ++v12;
            v4 = (v4 + 1);
LABEL_28:
            IOPCIDevice::MemoryWrite8(Apple16X50_IVars::pciDev, *(this + 28), (*(this + 8) + 256), *(v13 + (v4 & v7)));
            ++v12;
            v4 = (v4 + 1);
LABEL_29:
            IOPCIDevice::MemoryWrite8(Apple16X50_IVars::pciDev, *(this + 28), (*(this + 8) + 256), *(v13 + (v4 & v7)));
            if (++v12)
            {
LABEL_30:
              *(v2 + 132) += v12;
              if (*(this + 103) == 1)
              {
                *(this + 103) = 0;
                IOUserSerial::TxFreeSpaceAvailable(*this, 0);
              }

              if (v12 == v5)
              {
                goto LABEL_33;
              }
            }

LABEL_36:
            v16 = *(this + 2);
            v17 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW) + 50000000;

            IOTimerDispatchSource::WakeAtTime(v16, 0x88uLL, v17, 0, 0);
            return;
          case 4:
            IOPCIDevice::MemoryWrite32(Apple16X50_IVars::pciDev, *(this + 28), (*(this + 8) + 256), *(v13 + (v4 & v7)));
            v12 += 4;
LABEL_25:
            if (v12)
            {
              goto LABEL_30;
            }

            goto LABEL_36;
        }
      }

      v15 = v11 & 0xFFFFFFFC;
      do
      {
        IOPCIDevice::MemoryWrite32(Apple16X50_IVars::pciDev, *(this + 28), (*(this + 8) + 256), *(v13 + (v4 & v7)));
        v4 = (v4 + 4);
        v12 += 4;
      }

      while (v12 < v15);
    }
  }

LABEL_33:
  if (*(this + 102) == 1)
  {
    *(this + 102) = 0;
  }
}

void Apple16X50_IVars::txSubmit(uint8_t *this)
{
  if (Apple16X50_IVars::UART_Type == 11)
  {

    Apple16X50_IVars::txInterruptExar(this);
  }

  else
  {
    if (Apple16X50_IVars::UART_Type != 10)
    {
      goto LABEL_7;
    }

    if (this[102])
    {
      return;
    }

    if (Apple16X50_IVars::dmaMode == 1)
    {
      v2 = this[28];
      v3 = *(this + 8);
      readData = 0;
      IOPCIDevice::MemoryRead8(Apple16X50_IVars::pciDev, v2, (v3 + 135), &readData);
      Apple16X50_IVars::txInterruptOXPCIe95X(this, readData);
    }

    else
    {
LABEL_7:

      Apple16X50_IVars::txInterrupt(this);
    }
  }
}

uint64_t Apple16X50::HwActivate_Impl(Apple16X50_IVars **this)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v3 = 136315650;
    v4 = "HwActivate_Impl";
    v5 = 1024;
    v6 = 1495;
    v7 = 2048;
    v8 = this;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "IOUserSerial::Apple16X50::%s: %d %p\n", &v3, 0x1Cu);
  }

  result = Apple16X50_IVars::activate(this[8]);
  if (!result)
  {
    result = IOUserSerial::HwActivate(this, &IOUserSerial::_Dispatch);
  }

  *(this[8] + 100) = result == 0;
  return result;
}

uint64_t Apple16X50::HwDeactivate_Impl(Apple16X50_IVars **this)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v3 = 136315650;
    v4 = "HwDeactivate_Impl";
    v5 = 1024;
    v6 = 1505;
    v7 = 2048;
    v8 = this;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "IOUserSerial::Apple16X50::%s: %d %p\n", &v3, 0x1Cu);
  }

  *(this[8] + 100) = 0;
  Apple16X50_IVars::deactivate(this[8]);
  return IOUserSerial::HwDeactivate(this, &IOUserSerial::_Dispatch);
}

void Apple16X50_IVars::hwSendBreak(Apple16X50_IVars *this, int a2)
{
  v4 = *(this + 28);
  v5 = *(this + 8);
  readData = 0;
  IOPCIDevice::MemoryRead8(Apple16X50_IVars::pciDev, v4, (v5 + 3), &readData);
  if (a2)
  {
    v6 = 64;
  }

  else
  {
    v6 = 0;
  }

  IOPCIDevice::MemoryWrite8(Apple16X50_IVars::pciDev, *(this + 28), (*(this + 8) + 3), readData | v6);
}

uint64_t Apple16X50::HwProgramUART_Impl(Apple16X50 *this, int a2, char a3, char a4, char a5)
{
  *(*(this + 8) + 84) = a2;
  *(*(this + 8) + 88) = a3;
  *(*(this + 8) + 89) = a4;
  *(*(this + 8) + 90) = a5;
  return Apple16X50_IVars::hwProgramUART(*(this + 8));
}

uint64_t Apple16X50_IVars::hwProgramBaudRate(Apple16X50_IVars *this)
{
  v2 = *(this + 28);
  v3 = *(this + 8);
  readData = 0;
  IOPCIDevice::MemoryRead8(Apple16X50_IVars::pciDev, v2, (v3 + 3), &readData);
  v4 = readData;
  Apple16X50_IVars::setPrescaler(this);
  v6 = *(this + 20);
  v5 = *(this + 21);
  if (!(16 * v5))
  {
    v8 = 16;
    v7 = 1;
    v9 = 2;
    v10 = 32;
LABEL_11:
    if ((v6 / v8 - v5) <= (v5 - v6 / v10))
    {
      v12 = v7;
    }

    else
    {
      v12 = v9;
    }

    goto LABEL_14;
  }

  v7 = v6 / (16 * v5);
  v8 = 16 * v7;
  v9 = v7 + 1;
  v10 = 16 * (v7 + 1);
  if (16 * v7)
  {
    v11 = v10 == 0;
  }

  else
  {
    v11 = 1;
  }

  if (!v11)
  {
    goto LABEL_11;
  }

  if (v7 <= 1)
  {
    v12 = 1;
  }

  else
  {
    v12 = v6 / (16 * v5);
  }

LABEL_14:
  Apple16X50_IVars::setDivisor(this, v12);
  if (Apple16X50_IVars::UART_Type > 0xB)
  {
    goto LABEL_22;
  }

  v13 = -127;
  if (((1 << Apple16X50_IVars::UART_Type) & 0x870) == 0)
  {
    if (((1 << Apple16X50_IVars::UART_Type) & 0x180) != 0)
    {
LABEL_21:
      IOPCIDevice::MemoryWrite8(Apple16X50_IVars::pciDev, *(this + 28), (*(this + 8) + 2), v13);
      IOPCIDevice::MemoryWrite8(Apple16X50_IVars::pciDev, *(this + 28), (*(this + 8) + 3), v4);
      IOPCIDevice::MemoryWrite8(Apple16X50_IVars::pciDev, *(this + 28), (*(this + 8) + 3), 0xBFu);
      IOPCIDevice::MemoryWrite8(Apple16X50_IVars::pciDev, *(this + 28), (*(this + 8) + 2), 0x10u);
      IOPCIDevice::MemoryWrite8(Apple16X50_IVars::pciDev, *(this + 28), (*(this + 8) + 3), v4);
      goto LABEL_23;
    }

    if (Apple16X50_IVars::UART_Type == 10)
    {
      if (Apple16X50_IVars::dmaMode)
      {
        v13 = -63;
      }

      else
      {
        v13 = -127;
      }

      goto LABEL_21;
    }

LABEL_22:
    v13 = 0;
  }

LABEL_23:
  IOPCIDevice::MemoryWrite8(Apple16X50_IVars::pciDev, *(this + 28), (*(this + 8) + 2), v13);
  return 0;
}

uint64_t Apple16X50::HwProgramMCR_Impl(Apple16X50 *this, char a2, char a3)
{
  v3 = *(this + 8);
  if (*(v3 + 24))
  {
    return 3758097129;
  }

  *(v3 + 98) = a2;
  *(*(this + 8) + 99) = a3;
  return Apple16X50_IVars::hwProgramMCR(*(this + 8));
}

uint64_t Apple16X50_IVars::hwGetModemStatus(Apple16X50_IVars *this, BOOL *a2, BOOL *a3, BOOL *a4, BOOL *a5)
{
  v9 = *(this + 28);
  v10 = *(this + 8);
  readData = 0;
  IOPCIDevice::MemoryRead8(Apple16X50_IVars::pciDev, v9, (v10 + 6), &readData);
  v11 = readData;
  *a2 = (readData & 0x10) != 0;
  *a3 = (v11 & 0x20) != 0;
  *a4 = (v11 & 0x40) != 0;
  *a5 = v11 >> 7;
  return 0;
}

uint64_t Apple16X50::HwProgramFlowControl_Impl(Apple16X50_IVars **this, int a2, int a3, int a4)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136316418;
    v11 = "HwProgramFlowControl_Impl";
    v12 = 1024;
    v13 = 1558;
    v14 = 2048;
    v15 = this;
    v16 = 1024;
    v17 = a2;
    v18 = 1024;
    v19 = a3;
    v20 = 1024;
    v21 = a4;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "IOUserSerial::Apple16X50::%s: %d %p fc=%x, xon=%x, xoff=%x\n", &v10, 0x2Eu);
  }

  v8 = this[8];
  if (((*(v8 + 23) ^ a2) & 0x16) == 0)
  {
    return 0;
  }

  *(v8 + 23) = a2 & 0x17E;
  *(this[8] + 96) = a3;
  *(this[8] + 97) = a4;
  return Apple16X50_IVars::hwProgramFlowControl(this[8]);
}

IODispatchQueue **Apple16X50PCI_IVars::probeUART(Apple16X50PCI_IVars *this, Apple16X50PCI_IVars *a2, unsigned int a3)
{
  if (*(this + 16) > 7u)
  {
    return 0;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315906;
    v26 = "probeUART";
    v27 = 1024;
    v28 = 1138;
    v29 = 1024;
    *v30 = a2;
    *&v30[4] = 1024;
    *&v30[6] = a3;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "IOUserSerial::Apple16X50::%s: %d probing at %d::%x\n", buf, 0x1Eu);
  }

  buf[0] = 0;
  IOPCIDevice::MemoryRead8(Apple16X50_IVars::pciDev, a2, a3 + 4, buf);
  if ((buf[0] & 0x10) != 0)
  {
    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      return 0;
    }

    *buf = 136315394;
    v26 = "probeUART";
    v27 = 1024;
    v28 = 1149;
    v11 = "IOUserSerial::Apple16X50::%s: %d found a duplicate\n";
    v12 = 18;
LABEL_38:
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v11, buf, v12);
    return 0;
  }

  IOPCIDevice::MemoryWrite8(Apple16X50_IVars::pciDev, a2, a3 + 4, buf[0] | 0x10);
  v6 = 0;
  do
  {
    if (v6 == 16)
    {
      return 0;
    }

    v7 = Apple16X50PCI_IVars::identifyUART(a2, a3);
    if (!v7 && v6 <= 0xE)
    {
      IOSleep(0xFAuLL);
    }

    ++v6;
  }

  while (!v7);
  v8 = 0;
  if (v7 <= 6)
  {
    if ((v7 - 4) >= 2)
    {
      if (v7 != 6)
      {
        return v8;
      }

      v9 = 32;
    }

    else
    {
      v9 = 16;
    }

    goto LABEL_23;
  }

  if ((v7 - 7) < 2)
  {
    v9 = 64;
LABEL_23:
    v10 = 1843200;
    goto LABEL_24;
  }

  if (v7 == 10)
  {
    v9 = 128;
    v10 = 62500000;
  }

  else
  {
    if (v7 != 11)
    {
      return v8;
    }

    v9 = 256;
    v10 = 125000000;
  }

LABEL_24:
  v13 = IOMallocZeroTyped();
  if (!v13)
  {
    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      return 0;
    }

    v20 = *this;
    *buf = 136315650;
    v26 = "probeUART";
    v27 = 1024;
    v28 = 1176;
    v29 = 2048;
    *v30 = v20;
    v11 = "IOUserSerial::Apple16X50::%s: %d %p, can't allocate Apple16X50_IVars\n";
    v12 = 28;
    goto LABEL_38;
  }

  v8 = v13;
  *(v13 + 7) = a2;
  *(v13 + 8) = a3;
  Apple16X50_IVars::UART_Type = v7;
  *(v13 + 18) = v10 >> 3;
  *(v13 + 19) = v9;
  *(v13 + 20) = v10;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136316162;
    v26 = "probeUART";
    v27 = 1024;
    v28 = 1189;
    v29 = 1024;
    *v30 = a3;
    *&v30[4] = 1024;
    *&v30[6] = v7;
    LOWORD(v31[0]) = 1024;
    *(v31 + 2) = v9;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "IOUserSerial::Apple16X50::%s: %d Found at %x (type %d, fifo %d)\n", buf, 0x24u);
  }

  Apple16X50_IVars::reset(v8);
  result = 0;
  v14 = IOService::Create(*this, *this, "UART", &result, 0);
  if (v14)
  {
    goto LABEL_33;
  }

  *returnDeviceNumber = 0;
  returnFunctionNumber = 0;
  IOPCIDevice::GetBusDeviceFunction(Apple16X50_IVars::pciDev, &returnDeviceNumber[1], returnDeviceNumber, &returnFunctionNumber, 0);
  snprintf(buf, 0x12uLL, "0000:%02x:%02x.%d,@%02x", returnDeviceNumber[1], returnDeviceNumber[0], returnFunctionNumber, *(this + 16));
  v15 = OSDictionaryCreate();
  OSDictionarySetStringValue(v15, "IOTTYBaseName", "pci-");
  OSDictionarySetStringValue(v15, "IOTTYSuffix", buf);
  IOService::SetProperties(result, v15, 0);
  if (v15)
  {
    (v15->release)(v15);
  }

  v16 = result;
  result[1].meta = v8;
  v17 = *(this + 16);
  *(this + 16) = v17 + 1;
  Apple16X50PCI_IVars::UART[v17] = v8;
  *v8 = OSMetaClassBase::safeMetaCast(v16, gIOUserSerialMetaClass);
  v18 = OSObject::CopyDispatchQueue(result, "Default", v8 + 1, 0);
  if (v18 || (v18 = IOService::RegisterService(result, 0)) != 0)
  {
    v14 = v18;
    IOService::Stop(result, *this, 0);
LABEL_33:
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v19 = *this;
      *buf = 136315906;
      v26 = "probeUART";
      v27 = 1024;
      v28 = 1212;
      v29 = 2048;
      *v30 = v19;
      *&v30[8] = 1024;
      v31[0] = v14;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "IOUserSerial::Apple16X50::%s: %d %p, create nub failed err=0x%08x\n", buf, 0x22u);
    }

    IOFree(v8, 0x68uLL);
    return 0;
  }

  return v8;
}

uint64_t Apple16X50PCI_IVars::identifyUART(Apple16X50PCI_IVars *this, unsigned int a2)
{
  v3 = this;
  v4 = a2 + 3;
  IOPCIDevice::MemoryWrite8(Apple16X50_IVars::pciDev, this, v4, 0x80u);
  IOPCIDevice::MemoryWrite8(Apple16X50_IVars::pciDev, v3, a2, 0x5Au);
  readData = 0;
  IOPCIDevice::MemoryRead8(Apple16X50_IVars::pciDev, v3, a2, &readData);
  if (readData != 90)
  {
    return 0;
  }

  IOPCIDevice::MemoryWrite8(Apple16X50_IVars::pciDev, v3, a2, 0xA5u);
  v11 = 0;
  IOPCIDevice::MemoryRead8(Apple16X50_IVars::pciDev, v3, a2, &v11);
  if (v11 != 165)
  {
    return 0;
  }

  IOPCIDevice::MemoryWrite8(Apple16X50_IVars::pciDev, v3, v4, 0);
  IOPCIDevice::MemoryWrite8(Apple16X50_IVars::pciDev, v3, a2 + 7, 0x5Au);
  v12 = 0;
  IOPCIDevice::MemoryRead8(Apple16X50_IVars::pciDev, v3, a2 + 7, &v12);
  if (v12 != 90)
  {
    return 1;
  }

  IOPCIDevice::MemoryWrite8(Apple16X50_IVars::pciDev, v3, a2 + 7, 0xA5u);
  v13 = 0;
  IOPCIDevice::MemoryRead8(Apple16X50_IVars::pciDev, v3, a2 + 7, &v13);
  if (v13 != 165)
  {
    return 1;
  }

  v5 = a2 + 2;
  IOPCIDevice::MemoryWrite8(Apple16X50_IVars::pciDev, v3, v5, 1u);
  v14 = 0;
  IOPCIDevice::MemoryRead8(Apple16X50_IVars::pciDev, v3, v5, &v14);
  v6 = v14;
  IOPCIDevice::MemoryWrite8(Apple16X50_IVars::pciDev, v3, v5, 0);
  result = (v6 >> 6) ^ 2;
  if (result > 1)
  {
    if (result == 2)
    {
      return result;
    }

    return 6;
  }

  if (!result)
  {
    return 3;
  }

  result = Apple16X50_IVars::UART_Type;
  if (!Apple16X50_IVars::UART_Type)
  {
    IOPCIDevice::MemoryWrite8(Apple16X50_IVars::pciDev, v3, v4, 0);
    IOPCIDevice::MemoryWrite8(Apple16X50_IVars::pciDev, v3, a2 + 7, 0xDEu);
    IOPCIDevice::MemoryWrite8(Apple16X50_IVars::pciDev, v3, v4, 0x80u);
    IOPCIDevice::MemoryWrite8(Apple16X50_IVars::pciDev, v3, a2 + 7, 0xA9u);
    v15 = 0;
    IOPCIDevice::MemoryRead8(Apple16X50_IVars::pciDev, v3, a2 + 7, &v15);
    v8 = v15;
    IOPCIDevice::MemoryWrite8(Apple16X50_IVars::pciDev, v3, a2 + 7, 0);
    IOPCIDevice::MemoryWrite8(Apple16X50_IVars::pciDev, v3, v4, 0);
    v16 = 0;
    IOPCIDevice::MemoryRead8(Apple16X50_IVars::pciDev, v3, a2 + 7, &v16);
    if (v16 != 222 || v8 != 169)
    {
      v17 = 0;
      IOPCIDevice::MemoryRead8(Apple16X50_IVars::pciDev, v3, a2 + 4, &v17);
      if (v17 < 0)
      {
        return 5;
      }

      IOPCIDevice::MemoryWrite8(Apple16X50_IVars::pciDev, v3, a2 + 2, 1u);
      IOPCIDevice::MemoryWrite8(Apple16X50_IVars::pciDev, v3, v4, 0);
      IOPCIDevice::MemoryWrite8(Apple16X50_IVars::pciDev, v3, v4, 0xBFu);
      v18 = 0;
      IOPCIDevice::MemoryRead8(Apple16X50_IVars::pciDev, v3, v4, &v18);
      v9 = v18;
      IOPCIDevice::MemoryWrite8(Apple16X50_IVars::pciDev, v3, v4, 0);
      IOPCIDevice::MemoryWrite8(Apple16X50_IVars::pciDev, v3, v5, 0);
      if (v9 == 128)
      {
        return 7;
      }

      else
      {
        return 4;
      }
    }

    return 6;
  }

  return result;
}

void Apple16X50_IVars::rxDataInterruptOXPCIe95X(Apple16X50_IVars *this, char a2, unsigned int a3)
{
  v4 = *(*this + 56);
  v5 = v4[1];
  v6 = *(this + 101);
  v7 = *v4 + v6;
  if (v6 <= 0)
  {
    v8 = *v4;
  }

  else
  {
    v8 = v7;
  }

  if (!a3 || (v9 = 1 << *(v4 + 264), v10 = (v9 - 1), (v11 = v5 - v8 + v10) == 0))
  {
    if (v6 < 1)
    {
      return;
    }

    *(this + 101) = 0;
    __dmb(1u);
    goto LABEL_42;
  }

  if ((v6 & 0x80000000) == 0)
  {
    if ((a2 & 1) == 0)
    {
      v12 = v8 & v10;
      v13 = v9 - (v8 & v10);
      if (v13 >= v11)
      {
        v13 = v5 - v8 + v10;
      }

      v14 = a3 - 1;
      if (a3 <= 1)
      {
        v14 = 0;
      }

      v15 = v13 >= v14 ? v14 : v13;
      if (v15 >= 9)
      {
        v16 = *(this + 7) + v12;
        IOPCIDevice::MemoryWrite32(Apple16X50_IVars::pciDev, *(this + 28), (*(this + 8) + 256), *(this + 14) + v12);
        IOPCIDevice::MemoryWrite32(Apple16X50_IVars::pciDev, *(this + 28), (*(this + 8) + 260), HIDWORD(v16));
        IOPCIDevice::MemoryWrite32(Apple16X50_IVars::pciDev, *(this + 28), (*(this + 8) + 264), v15 | 0x80000000);
        *(this + 101) = v15;
        if (v8 == *v4)
        {
          return;
        }

        __dmb(1u);
        goto LABEL_43;
      }
    }

    *(this + 101) = 0;
  }

  v17 = *(v4 + 52);
  if (v11 >= a3)
  {
    v18 = a3;
  }

  else
  {
    v18 = v5 - v8 + v10;
  }

  if (v18 >= 4)
  {
    if ((v8 & 3u) > 1)
    {
      if ((v8 & 3) != 2)
      {
LABEL_30:
        v23 = *(this + 28);
        v24 = *(this + 8);
        v36 = 0;
        IOPCIDevice::MemoryRead8(Apple16X50_IVars::pciDev, v23, (v24 + 128), &v36);
        *(v17 + (v8 & v10)) = v36;
        --v18;
        v8 = (v8 + 1);
        goto LABEL_31;
      }
    }

    else
    {
      if ((v8 & 3) == 0)
      {
LABEL_31:
        if ((v18 & 0xFFFFFFFC) != 0)
        {
          v25 = 0;
          do
          {
            v26 = *(this + 28);
            v27 = *(this + 8);
            v37 = 0;
            IOPCIDevice::MemoryRead32(Apple16X50_IVars::pciDev, v26, (v27 + 128), &v37);
            *(v17 + (v8 & v10)) = v37;
            v8 = (v8 + 4);
            v25 += 4;
          }

          while (v25 < (v18 & 0xFFFFFFFC));
        }

        v18 &= 3u;
        goto LABEL_35;
      }

      v19 = *(this + 28);
      v20 = *(this + 8);
      readData = 0;
      IOPCIDevice::MemoryRead8(Apple16X50_IVars::pciDev, v19, (v20 + 128), &readData);
      *(v17 + (v8 & v10)) = readData;
      --v18;
      v8 = (v8 + 1);
    }

    v21 = *(this + 28);
    v22 = *(this + 8);
    v35 = 0;
    IOPCIDevice::MemoryRead8(Apple16X50_IVars::pciDev, v21, (v22 + 128), &v35);
    *(v17 + (v8 & v10)) = v35;
    --v18;
    v8 = (v8 + 1);
    goto LABEL_30;
  }

LABEL_35:
  if (v18 > 1)
  {
    if (v18 != 2)
    {
      v28 = *(this + 28);
      v29 = *(this + 8);
      v38 = 0;
      IOPCIDevice::MemoryRead8(Apple16X50_IVars::pciDev, v28, (v29 + 128), &v38);
      *(v17 + (v8 & v10)) = v38;
      v8 = (v8 + 1);
    }

    v30 = *(this + 28);
    v31 = *(this + 8);
    v39 = 0;
    IOPCIDevice::MemoryRead8(Apple16X50_IVars::pciDev, v30, (v31 + 128), &v39);
    *(v17 + (v8 & v10)) = v39;
    v8 = (v8 + 1);
  }

  else if (!v18)
  {
    goto LABEL_43;
  }

  v32 = *(this + 28);
  v33 = *(this + 8);
  v40 = 0;
  IOPCIDevice::MemoryRead8(Apple16X50_IVars::pciDev, v32, (v33 + 128), &v40);
  v7 = v8 + 1;
  *(v17 + (v8 & v10)) = v40;
LABEL_42:
  LODWORD(v8) = v7;
LABEL_43:
  atomic_store(v8, v4);
  if (v4[108] != v5)
  {
    IOUserSerial::RxDataAvailable(*this, 0);
  }

  v4[108] = v5;
}

void Apple16X50_IVars::txInterruptOXPCIe95X(Apple16X50_IVars *this, int a2)
{
  v3 = *(*this + 56);
  v4 = *(v3 + 128);
  v5 = *(v3 + 132);
  v6 = *(this + 101);
  v7 = v5 - v6;
  if (v6 >= 0)
  {
    v8 = v5;
  }

  else
  {
    v8 = v7;
  }

  v9 = v4 - v8;
  if (v4 != v8)
  {
    v10 = 1 << *(v3 + 265);
    v11 = (v10 - 1);
    if (v6 < 0)
    {
      *(v3 + 132) = v7;
      *(this + 101) = 0;
    }

    if (v9 == v11)
    {
      *(this + 103) = 1;
    }

    v12 = 0;
    v24 = v8 & v11;
    v13 = v10 - (v8 & v11);
    if (v13 >= v9)
    {
      v13 = v9;
    }

    if (v13 >= *(this + 19) - a2)
    {
      v14 = *(this + 19) - a2;
    }

    else
    {
      v14 = v13;
    }

    v15 = *(v3 + 424);
    for (i = v14 & 3; ; v14 = i)
    {
      if (v14 <= 1)
      {
        if (!v14)
        {
          goto LABEL_40;
        }

        if (v14 == 1)
        {
          goto LABEL_33;
        }
      }

      else
      {
        switch(v14)
        {
          case 2:
            goto LABEL_32;
          case 3:
            IOPCIDevice::MemoryWrite8(Apple16X50_IVars::pciDev, *(this + 28), (*(this + 8) + 128), *(v15 + (v8 & v11)));
            ++v12;
            v8 = (v8 + 1);
LABEL_32:
            IOPCIDevice::MemoryWrite8(Apple16X50_IVars::pciDev, *(this + 28), (*(this + 8) + 128), *(v15 + (v8 & v11)));
            ++v12;
            v8 = (v8 + 1);
LABEL_33:
            IOPCIDevice::MemoryWrite8(Apple16X50_IVars::pciDev, *(this + 28), (*(this + 8) + 128), *(v15 + (v8 & v11)));
            v18 = v12 + 1;
            if (v12 == -1)
            {
              goto LABEL_40;
            }

            goto LABEL_34;
          case 4:
            IOPCIDevice::MemoryWrite32(Apple16X50_IVars::pciDev, *(this + 28), (*(this + 8) + 128), *(v15 + (v8 & v11)));
            v18 = v12 + 4;
            if (v12 != -4)
            {
              goto LABEL_34;
            }

            goto LABEL_40;
        }
      }

      if (*(this + 101) < 1)
      {
        v20 = *(this + 8) + v24;
        __dmb(2u);
        IOPCIDevice::MemoryWrite32(Apple16X50_IVars::pciDev, *(this + 28), (*(this + 8) + 256), v20);
        IOPCIDevice::MemoryWrite32(Apple16X50_IVars::pciDev, *(this + 28), (*(this + 8) + 260), HIDWORD(v20));
        IOPCIDevice::MemoryWrite32(Apple16X50_IVars::pciDev, *(this + 28), (*(this + 8) + 264), v14);
        *(this + 101) = -v14;
        goto LABEL_40;
      }

      v17 = v14 & 0xFFFFFFFC;
      do
      {
        IOPCIDevice::MemoryWrite32(Apple16X50_IVars::pciDev, *(this + 28), (*(this + 8) + 128), *(v15 + (v8 & v11)));
        v8 = (v8 + 4);
        v12 += 4;
      }

      while (v12 < v17);
    }
  }

  if (v6 < 0)
  {
    v18 = -v6;
    *(this + 101) = 0;
    v9 = -v6;
    if (!v6)
    {
      goto LABEL_40;
    }

LABEL_34:
    *(v3 + 132) += v18;
    if (*(this + 103) == 1)
    {
      *(this + 103) = 0;
      IOUserSerial::TxFreeSpaceAvailable(*this, 0);
    }

    if (v18 == v9)
    {
      if (*(this + 102) != 1)
      {
        return;
      }

      *(this + 102) = 0;
      v19 = 13;
    }

    else
    {
LABEL_40:
      if (*(this + 102))
      {
        return;
      }

      *(this + 102) = 1;
      v19 = 15;
    }

    v21 = *(this + 28);
    v22 = Apple16X50_IVars::pciDev;
    v23 = (*(this + 8) + 1);

    IOPCIDevice::MemoryWrite8(v22, v21, v23, v19);
  }
}

uint64_t Apple16X50_IVars::rxDataInterruptExar(uint8_t *this)
{
  result = Apple16X50_IVars::hwGetRxFIFOLevel(this);
  if (result)
  {
    v3 = *(*this + 56);
    v4 = *(v3 + 52);
    v5 = ~(-1 << *(v3 + 264));
    v6 = *v3;
    v24 = v3;
    while (1)
    {
      v7 = v3[1];
      if (((v7 + ~v6) & v5) == 0)
      {
        return result;
      }

      v8 = ((v7 + ~v6) & v5) >= result ? result : (v7 + ~v6) & v5;
      if (v8 >= 4)
      {
        break;
      }

LABEL_19:
      if (v8 > 1)
      {
        if (v8 != 2)
        {
          v18 = this[28];
          v19 = *(this + 8);
          v29 = 0;
          IOPCIDevice::MemoryRead8(Apple16X50_IVars::pciDev, v18, (v19 + 256), &v29);
          *(v4 + (v6 & v5)) = v29;
          v6 = (v6 + 1);
        }

        v20 = this[28];
        v21 = *(this + 8);
        v30 = 0;
        IOPCIDevice::MemoryRead8(Apple16X50_IVars::pciDev, v20, (v21 + 256), &v30);
        *(v4 + (v6 & v5)) = v30;
        v6 = (v6 + 1);
      }

      else if (!v8)
      {
        goto LABEL_26;
      }

      v22 = this[28];
      v23 = *(this + 8);
      v31 = 0;
      IOPCIDevice::MemoryRead8(Apple16X50_IVars::pciDev, v22, (v23 + 256), &v31);
      *(v4 + (v6 & v5)) = v31;
      v6 = (v6 + 1);
LABEL_26:
      atomic_store(v6, v3);
      if (v3[108] != v7)
      {
        IOUserSerial::RxDataAvailable(*this, 0);
      }

      v3[108] = v7;
      result = Apple16X50_IVars::hwGetRxFIFOLevel(this);
      if (!result)
      {
        return result;
      }
    }

    if ((v6 & 3u) > 1)
    {
      if ((v6 & 3) != 2)
      {
LABEL_13:
        v13 = this[28];
        v14 = *(this + 8);
        v27 = 0;
        IOPCIDevice::MemoryRead8(Apple16X50_IVars::pciDev, v13, (v14 + 256), &v27);
        *(v4 + (v6 & v5)) = v27;
        --v8;
        v6 = (v6 + 1);
        goto LABEL_14;
      }
    }

    else
    {
      if ((v6 & 3) == 0)
      {
LABEL_14:
        if ((v8 & 0xFFFFFFFC) != 0)
        {
          v15 = 0;
          do
          {
            v16 = this[28];
            v17 = *(this + 8);
            v28 = 0;
            IOPCIDevice::MemoryRead32(Apple16X50_IVars::pciDev, v16, (v17 + 256), &v28);
            *(v4 + ((v6 + v15) & v5)) = v28;
            v15 += 4;
          }

          while (v15 < (v8 & 0xFFFFFFFC));
          v6 = v6 + v15;
          v3 = v24;
        }

        v8 &= 3u;
        goto LABEL_19;
      }

      v9 = this[28];
      v10 = *(this + 8);
      readData = 0;
      IOPCIDevice::MemoryRead8(Apple16X50_IVars::pciDev, v9, (v10 + 256), &readData);
      *(v4 + (v6 & v5)) = readData;
      --v8;
      v6 = (v6 + 1);
    }

    v11 = this[28];
    v12 = *(this + 8);
    v26 = 0;
    IOPCIDevice::MemoryRead8(Apple16X50_IVars::pciDev, v11, (v12 + 256), &v26);
    *(v4 + (v6 & v5)) = v26;
    --v8;
    v6 = (v6 + 1);
    goto LABEL_13;
  }

  return result;
}

uint64_t Apple16X50_IVars::hwGetRxFIFOLevel(Apple16X50_IVars *this)
{
  v1 = *(this + 7);
  v2 = *(this + 8);
  if (Apple16X50_IVars::UART_Type == 11)
  {
    v5 = 0;
    IOPCIDevice::MemoryRead8(Apple16X50_IVars::pciDev, v1, (v2 + 11), &v5);
    return v5;
  }

  else if (Apple16X50_IVars::UART_Type == 10)
  {
    readData = 0;
    IOPCIDevice::MemoryRead8(Apple16X50_IVars::pciDev, v1, (v2 + 134), &readData);
    return readData;
  }

  else
  {
    v6 = 0;
    IOPCIDevice::MemoryRead8(Apple16X50_IVars::pciDev, v1, (v2 + 5), &v6);
    return v6 & 1;
  }
}

void Apple16X50_IVars::rxDataInterrupt(uint8_t *this, char a2)
{
  RxFIFOLevel = Apple16X50_IVars::hwGetRxFIFOLevel(this);
  if (RxFIFOLevel)
  {
    if ((a2 & 1) == 0 && Apple16X50_IVars::UART_Type <= 9)
    {
      RxFIFOLevel = *(this + 19) >> 1;
    }

    v5 = *(*this + 56);
    v6 = *(v5 + 52);
    v7 = ~(-1 << *(v5 + 264));
    v8 = *v5;
    do
    {
      v9 = v5[1];
      if (((v9 + ~v8) & v7) == 0)
      {
        break;
      }

      if (RxFIFOLevel)
      {
        v10 = RxFIFOLevel - 1;
        v11 = ((v9 + ~v8) & v7) - 1;
        do
        {
          v12 = v8;
          v13 = this[28];
          v14 = *(this + 8);
          readData = 0;
          IOPCIDevice::MemoryRead8(Apple16X50_IVars::pciDev, v13, v14, &readData);
          v8 = (v8 + 1);
          *(v6 + (v12 & v7)) = readData;
          v15 = v10-- != 0;
          v16 = v15;
          v15 = v11-- != 0;
        }

        while (v15 && (v16 & 1) != 0);
      }

      atomic_store(v8, v5);
      if (v5[108] != v9)
      {
        IOUserSerial::RxDataAvailable(*this, 0);
      }

      v5[108] = v9;
      if (Apple16X50_IVars::UART_Type == 10)
      {
        break;
      }

      RxFIFOLevel = Apple16X50_IVars::hwGetRxFIFOLevel(this);
    }

    while (RxFIFOLevel);
  }
}

void Apple16X50_IVars::txInterrupt(Apple16X50_IVars *this)
{
  v1 = *(*this + 56);
  v3 = *(v1 + 128);
  v2 = *(v1 + 132);
  if (v3 != v2)
  {
    v4 = this;
    v5 = ~(-1 << *(v1 + 265));
    if (v3 - v2 == v5)
    {
      *(this + 103) = 1;
    }

    v6 = *(v1 + 424);
    v7 = *(this + 19);
    TxFIFOLevel = Apple16X50_IVars::hwGetTxFIFOLevel(this);
    if (v7 == TxFIFOLevel)
    {
      goto LABEL_17;
    }

    if (v7 - TxFIFOLevel == 1 && Apple16X50_IVars::UART_Type == 11)
    {
      goto LABEL_17;
    }

    v10 = 0;
    v11 = v4 + 28;
    v20 = v4;
    v12 = (v4 + 32);
    v13 = v2 - v3 + 1;
    v14 = TxFIFOLevel - v7 + 1;
    do
    {
      v15 = v10;
      IOPCIDevice::MemoryWrite8(Apple16X50_IVars::pciDev, *v11, *v12, *(v6 + (v2 & v5)));
      v10 = v15 - 1;
      if (v13 == v15)
      {
        break;
      }

      v2 = (v2 + 1);
    }

    while (v14 != v15);
    *(v1 + 132) -= v10;
    v4 = v20;
    if (*(v20 + 103) == 1)
    {
      *(v20 + 103) = 0;
      IOUserSerial::TxFreeSpaceAvailable(*v20, 0);
    }

    if (v13 != v15)
    {
LABEL_17:
      if (*(v4 + 102))
      {
        return;
      }

      *(v4 + 102) = 1;
      v11 = v4 + 28;
      v12 = (v4 + 32);
      v16 = 15;
    }

    else
    {
      if (*(v20 + 102) != 1)
      {
        return;
      }

      *(v20 + 102) = 0;
      v16 = 13;
    }

    v17 = *v11;
    v18 = Apple16X50_IVars::pciDev;
    v19 = (*v12 + 1);

    IOPCIDevice::MemoryWrite8(v18, v17, v19, v16);
  }
}

uint64_t Apple16X50_IVars::hwGetTxFIFOLevel(Apple16X50_IVars *this)
{
  v1 = *(this + 7);
  v2 = *(this + 8);
  if (Apple16X50_IVars::UART_Type == 11)
  {
    v6 = 0;
    IOPCIDevice::MemoryRead8(Apple16X50_IVars::pciDev, v1, (v2 + 10), &v6);
    return v6;
  }

  else if (Apple16X50_IVars::UART_Type == 10)
  {
    readData = 0;
    IOPCIDevice::MemoryRead8(Apple16X50_IVars::pciDev, v1, (v2 + 135), &readData);
    return readData;
  }

  else
  {
    v7 = 0;
    IOPCIDevice::MemoryRead8(Apple16X50_IVars::pciDev, v1, (v2 + 5), &v7);
    result = 0;
    if ((v7 & 0x20) == 0)
    {
      return *(this + 19);
    }
  }

  return result;
}

void Apple16X50_IVars::setPrescaler(Apple16X50_IVars *this)
{
  if (Apple16X50_IVars::UART_Type == 11)
  {
    *(this + 20) = 125000000;
  }

  else if (Apple16X50_IVars::UART_Type == 10)
  {
    *(this + 20) = 62500000;
    IOPCIDevice::MemoryWrite8(Apple16X50_IVars::pciDev, *(this + 28), (*(this + 8) + 193), 0x20u);
    IOPCIDevice::MemoryWrite8(Apple16X50_IVars::pciDev, *(this + 28), (*(this + 8) + 194), 4u);
    IOPCIDevice::MemoryWrite8(Apple16X50_IVars::pciDev, *(this + 28), (*(this + 8) + 195), 0);
    v2 = *(this + 28);
    v3 = *(this + 8);
    LOBYTE(v14) = 0;
    IOPCIDevice::MemoryRead8(Apple16X50_IVars::pciDev, v2, (v3 + 4), &v14);
    IOPCIDevice::MemoryWrite8(Apple16X50_IVars::pciDev, *(this + 28), (*(this + 8) + 4), v14 | 0x80);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(this + 28);
      v5 = *(this + 8);
      LOBYTE(v14) = 0;
      IOPCIDevice::MemoryRead8(Apple16X50_IVars::pciDev, v4, (v5 + 193), &v14);
      v6 = v14;
      v7 = *(this + 28);
      v8 = *(this + 8);
      LOBYTE(v14) = 0;
      IOPCIDevice::MemoryRead8(Apple16X50_IVars::pciDev, v7, (v8 + 194), &v14);
      v9 = v14;
      v10 = *(this + 28);
      v11 = *(this + 8);
      LOBYTE(v14) = 0;
      IOPCIDevice::MemoryRead8(Apple16X50_IVars::pciDev, v10, (v11 + 195), &v14);
      v12 = v14;
      v14 = 136316162;
      v15 = "setPrescaler";
      v16 = 1024;
      v17 = 137;
      v18 = 1024;
      v19 = v6;
      v20 = 1024;
      v21 = v9;
      v22 = 1024;
      v23 = v12;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "IOUserSerial::Apple16X50::%s: %d CPR=%x, TCR=%x, CPR2=%x\n", &v14, 0x24u);
    }
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v13 = *(this + 20);
    v14 = 136315650;
    v15 = "setPrescaler";
    v16 = 1024;
    v17 = 141;
    v18 = 1024;
    v19 = v13;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "IOUserSerial::Apple16X50::%s: %d MasterClock=%d\n", &v14, 0x18u);
  }
}

void Apple16X50_IVars::setDivisor(Apple16X50_IVars *this, unsigned int a2)
{
  if (Apple16X50_IVars::UART_Type == 11)
  {
    v3 = 0xFFFFF;
  }

  else
  {
    v3 = 0xFFFF;
  }

  if (v3 >= a2)
  {
    v3 = a2;
  }

  if (a2)
  {
    v4 = v3;
  }

  else
  {
    v4 = 1;
  }

  v5 = *(this + 28);
  v6 = *(this + 8);
  LOBYTE(v12) = 0;
  IOPCIDevice::MemoryRead8(Apple16X50_IVars::pciDev, v5, (v6 + 3), &v12);
  v7 = v12;
  IOPCIDevice::MemoryWrite8(Apple16X50_IVars::pciDev, *(this + 28), (*(this + 8) + 3), v12 | 0x80);
  IOPCIDevice::MemoryWrite8(Apple16X50_IVars::pciDev, *(this + 28), *(this + 8), v4);
  IOPCIDevice::MemoryWrite8(Apple16X50_IVars::pciDev, *(this + 28), (*(this + 8) + 1), (v4 - -256 * (((1052689 * v4) >> 32) >> 4)) >> 8);
  if (Apple16X50_IVars::UART_Type == 11)
  {
    v8 = *(this + 28);
    v9 = *(this + 8);
    LOBYTE(v12) = 0;
    IOPCIDevice::MemoryRead8(Apple16X50_IVars::pciDev, v8, (v9 + 2), &v12);
    v10 = v4 + 15794176;
    if (v4 < 0xF0000)
    {
      BYTE2(v10) = BYTE2(v4);
    }

    IOPCIDevice::MemoryWrite8(Apple16X50_IVars::pciDev, *(this + 28), (*(this + 8) + 2), v12 & 0xF0 | BYTE2(v10));
  }

  IOPCIDevice::MemoryWrite8(Apple16X50_IVars::pciDev, *(this + 28), (*(this + 8) + 3), v7);
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v11 = v4 - 983040;
    if (v4 < 0xF0000)
    {
      v11 = v4;
    }

    v12 = 136316162;
    v13 = "setDivisor";
    v14 = 1024;
    v15 = 152;
    v16 = 1024;
    v17 = (v4 - 65280 * (((1052689 * v4) >> 32) >> 4)) >> 8;
    v18 = 1024;
    v19 = v4;
    v20 = 1024;
    v21 = HIWORD(v11);
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "IOUserSerial::Apple16X50::%s: %d DLM=%x, DLL=%x DLD=%x\n", &v12, 0x24u);
  }
}

uint64_t Apple16X50MetaClass::New(Apple16X50MetaClass *this, OSObject *a2)
{
  a2->OSMetaClassBase::__vftable = &off_100008450;
  a2->OSObjectInterface::__vftable = off_1000084A0;
  *&a2[1].refcount = &off_1000084C0;
  return 0;
}

uint64_t Apple16X50::_Dispatch(IORPC *this, IORPCMessageMach **a2, IORPC *a3)
{
  msgid = IORPCMessageFromMach(*a2, 0)->msgid;
  if (msgid <= 0xB4382FF781B52C68)
  {
    if (msgid > 0x9969EA5CD50DDCF2)
    {
      switch(msgid)
      {
        case 0x9969EA5CD50DDCF3:
          v9 = *a2;
          return IOUserSerial::TxDataAvailable_Invoke(&v9, this, Apple16X50::TxDataAvailable_Impl, v6);
        case 0xAB6F76DDE6D693F2:
          v9 = *a2;
          return IOService::Start_Invoke(&v9, this, Apple16X50::Start_Impl);
        case 0xAE696285403CB7ACLL:
          v9 = *a2;
          return IOUserSerial::HwActivate_Invoke(&v9, this, Apple16X50::HwActivate_Impl, v6);
      }
    }

    else
    {
      switch(msgid)
      {
        case 0x8EB7D95D31DA2679:
          v9 = *a2;
          return IOUserSerial::HwSendBreak_Invoke(&v9, this, Apple16X50::HwSendBreak_Impl, v6);
        case 0x908A8A97324B09CDLL:
          v9 = *a2;
          return IOUserSerial::HwProgramBaudRate_Invoke(&v9, this, Apple16X50::HwProgramBaudRate_Impl, v6);
        case 0x98E715041C459FA5:
          v9 = *a2;
          return IOService::Stop_Invoke(&v9, this, Apple16X50::Stop_Impl);
      }
    }

    goto LABEL_32;
  }

  if (msgid <= 0xEBA1AB4EDDD623ECLL)
  {
    switch(msgid)
    {
      case 0xB4382FF781B52C69:
        v9 = *a2;
        return IOUserSerial::HwDeactivate_Invoke(&v9, this, Apple16X50::HwDeactivate_Impl, v6);
      case 0xB7AA6E57CA295019:
        v9 = *a2;
        return IOUserSerial::HwProgramMCR_Invoke(&v9, this, Apple16X50::HwProgramMCR_Impl, v6);
      case 0xC7971C55833FBB0BLL:
        v9 = *a2;
        return IOUserSerial::HwResetFIFO_Invoke(&v9, this, Apple16X50::HwResetFIFO_Impl, v6);
    }

    goto LABEL_32;
  }

  if (msgid <= 0xF3AD02F78DC96D03)
  {
    if (msgid == 0xEBA1AB4EDDD623EDLL)
    {
      v9 = *a2;
      return IOUserSerial::HwProgramFlowControl_Invoke(&v9, this, Apple16X50::HwProgramFlowControl_Impl, v6);
    }

    if (msgid == 0xF0FD7D516830B885)
    {
      v9 = *a2;
      return IOUserSerial::HwGetModemStatus_Invoke(&v9, this, Apple16X50::HwGetModemStatus_Impl, v6);
    }

LABEL_32:
    v9 = *a2;
    return IOUserSerial::_Dispatch(this, &v9, v5);
  }

  if (msgid == 0xF3AD02F78DC96D04)
  {
    v9 = *a2;
    return IOUserSerial::HwProgramUART_Invoke(&v9, this, Apple16X50::HwProgramUART_Impl, v6);
  }

  if (msgid != 0x54B8853A20464AF4)
  {
    goto LABEL_32;
  }

  if (OSMetaClassBase::IsRemote(this))
  {
    v9 = *a2;
    return OSMetaClassBase::Dispatch(this, &v9);
  }

  else
  {
    v9 = *a2;
    return IOTimerDispatchSource::TimerOccurred_Invoke(&v9, this, Apple16X50::TimerOccurred_Impl, gOSAction_Apple16X50_TimerOccurredMetaClass);
  }
}

uint64_t Apple16X50MetaClass::Dispatch(OSMetaClassBase *this, IORPC *a2)
{
  IORPCMessageFromMach(a2->message, 0);
  v5 = *a2;
  return OSMetaClassBase::Dispatch(this, &v5);
}

uint64_t Apple16X50::CreateActionTimerOccurred(OSObject *this, size_t a2, OSAction **a3)
{
  v6 = OSString::withCString("OSAction_Apple16X50_TimerOccurred");
  if (!v6)
  {
    return 3758097085;
  }

  v7 = v6;
  v8 = OSAction::CreateWithTypeName(this, 0x54B8853A20464AF4uLL, 0xF4AB1C3CBB5AE47uLL, a2, v6, a3);
  (v7->release)(v7);
  return v8;
}

uint64_t OSAction_Apple16X50_TimerOccurredMetaClass::New(OSAction_Apple16X50_TimerOccurredMetaClass *this, OSObject *a2)
{
  a2->OSMetaClassBase::__vftable = &off_100008518;
  a2->OSObjectInterface::__vftable = &off_100008560;
  return 0;
}

uint64_t OSAction_Apple16X50_TimerOccurred::Dispatch(OSAction *this, IORPC *a2)
{
  message = a2->message;
  *&rpc.reply = *&a2->reply;
  IORPCMessageFromMach(message, 0);
  rpc.message = message;
  return OSAction::_Dispatch(this, &rpc);
}

uint64_t OSAction_Apple16X50_TimerOccurred::_Dispatch(OSAction *this, IORPCMessageMach **a2, IORPC *a3)
{
  IORPCMessageFromMach(*a2, 0);
  v6 = *a2;
  return OSAction::_Dispatch(this, &v6);
}

uint64_t OSAction_Apple16X50_TimerOccurredMetaClass::Dispatch(OSMetaClassBase *this, IORPC *a2)
{
  IORPCMessageFromMach(a2->message, 0);
  v5 = *a2;
  return OSMetaClassBase::Dispatch(this, &v5);
}

uint64_t Apple16X50PCIMetaClass::New(Apple16X50PCIMetaClass *this, OSObject *a2)
{
  a2->OSMetaClassBase::__vftable = &off_100008700;
  a2->OSObjectInterface::__vftable = off_100008748;
  return 0;
}

uint64_t Apple16X50PCI::_Dispatch(IOService *this, IORPCMessageMach **a2, IORPC *a3)
{
  msgid = IORPCMessageFromMach(*a2, 0)->msgid;
  if (msgid > 0xD200FDE7D57ECCA5)
  {
    if (msgid == 0xD200FDE7D57ECCA6)
    {
      v7 = *a2;
      return IOService::SetPowerState_Invoke(&v7, this, Apple16X50PCI::SetPowerState_Impl);
    }

    else
    {
      if (msgid != 0x2A287285B0AAE31)
      {
LABEL_9:
        v7 = *a2;
        return IOService::_Dispatch(this, &v7);
      }

      if (OSMetaClassBase::IsRemote(this))
      {
        v7 = *a2;
        return OSMetaClassBase::Dispatch(this, &v7);
      }

      else
      {
        v7 = *a2;
        return IOInterruptDispatchSource::InterruptOccurred_Invoke(&v7, this, Apple16X50PCI::InterruptOccurred_Impl, gOSAction_Apple16X50PCI_InterruptOccurredMetaClass);
      }
    }
  }

  else
  {
    if (msgid != 0x98E715041C459FA5)
    {
      if (msgid == 0xAB6F76DDE6D693F2)
      {
        v7 = *a2;
        return IOService::Start_Invoke(&v7, this, Apple16X50PCI::Start_Impl);
      }

      goto LABEL_9;
    }

    v7 = *a2;
    return IOService::Stop_Invoke(&v7, this, Apple16X50PCI::Stop_Impl);
  }
}

uint64_t Apple16X50PCIMetaClass::Dispatch(OSMetaClassBase *this, IORPC *a2)
{
  IORPCMessageFromMach(a2->message, 0);
  v5 = *a2;
  return OSMetaClassBase::Dispatch(this, &v5);
}

uint64_t Apple16X50PCI::CreateActionInterruptOccurred(OSObject *this, size_t a2, OSAction **a3)
{
  v6 = OSString::withCString("OSAction_Apple16X50PCI_InterruptOccurred");
  if (!v6)
  {
    return 3758097085;
  }

  v7 = v6;
  v8 = OSAction::CreateWithTypeName(this, 0x2A287285B0AAE31uLL, 0xCE0513291CFA1EE1, a2, v6, a3);
  (v7->release)(v7);
  return v8;
}

uint64_t OSAction_Apple16X50PCI_InterruptOccurredMetaClass::New(OSAction_Apple16X50PCI_InterruptOccurredMetaClass *this, OSObject *a2)
{
  a2->OSMetaClassBase::__vftable = &off_1000087A8;
  a2->OSObjectInterface::__vftable = &off_1000087F0;
  return 0;
}

uint64_t OSAction_Apple16X50PCI_InterruptOccurred::Dispatch(OSAction *this, IORPC *a2)
{
  message = a2->message;
  *&rpc.reply = *&a2->reply;
  IORPCMessageFromMach(message, 0);
  rpc.message = message;
  return OSAction::_Dispatch(this, &rpc);
}

uint64_t OSAction_Apple16X50PCI_InterruptOccurred::_Dispatch(OSAction *this, IORPCMessageMach **a2, IORPC *a3)
{
  IORPCMessageFromMach(*a2, 0);
  v6 = *a2;
  return OSAction::_Dispatch(this, &v6);
}

uint64_t OSAction_Apple16X50PCI_InterruptOccurredMetaClass::Dispatch(OSMetaClassBase *this, IORPC *a2)
{
  IORPCMessageFromMach(a2->message, 0);
  v5 = *a2;
  return OSMetaClassBase::Dispatch(this, &v5);
}

void Apple16X50PCI::Start_Impl()
{
  __assert_rtn("Start_Impl", "Apple16X50PCI.cpp", 1357, "!IOTimerDispatchSource::Create(uart->dispatch_queue, &uart->timerSource)");
}

{
  __assert_rtn("Start_Impl", "Apple16X50PCI.cpp", 1358, "!((Apple16X50*)uart->owner)->CreateActionTimerOccurred(sizeof(void*), &action)");
}

{
  __assert_rtn("Start_Impl", "Apple16X50PCI.cpp", 1359, "!uart->timerSource->SetHandler(action)");
}