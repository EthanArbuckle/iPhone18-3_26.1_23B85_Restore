uint64_t AppleBCMWLANBusInterfacePCIe::startPM(AppleBCMWLANBusInterfacePCIe *this, IOService *anObject)
{
  v3 = OSMetaClassBase::safeMetaCast(anObject, gIOPCIDeviceMetaClass);
  if (AppleOLYHALPortInterfacePCIe::isPortControlAMFMManagedDK(*(*(this + 9) + 5192), 0))
  {
    v4 = 131075;
  }

  else
  {
    v4 = 3;
  }

  return IOPCIDevice::EnablePCIPowerManagement(v3, v4, 0);
}

uint64_t AppleBCMWLANBusInterfacePCIe::identifyDevice(AppleBCMWLANBusInterfacePCIe *this)
{
  v2 = this + 72;
  _MergedGlobals = AppleBCMWLANChipConfigSpace::getBus(*(*(this + 9) + 3352));
  byte_1003E8B11 = AppleBCMWLANChipConfigSpace::getDevice(*(*v2 + 3352));
  byte_1003E8B12 = AppleBCMWLANChipConfigSpace::getFunction(*(*v2 + 3352));
  if (AppleBCMWLANBusInterface::getLogger(this))
  {
    AppleBCMWLANBusInterface::getLogger(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANBusInterfacePCIe::identifyDevice(this);
    }
  }

  Capability = AppleBCMWLANChipConfigSpace::findCapability(*(*(this + 9) + 3352), 0x10u, 0);
  v6 = 0;
  AppleBCMWLANChipConfigSpace::readReg16(*(*(this + 9) + 3352), Capability + 18, &v6);
  v5 = 0;
  AppleBCMWLANChipConfigSpace::readReg16(*(*(this + 9) + 3352), Capability + 16, &v5);
  AppleBCMWLANChipConfigSpace::readReg16(*(*(this + 9) + 3352), 0, (*(this + 9) + 3332));
  AppleBCMWLANChipConfigSpace::readReg16(*(*(this + 9) + 3352), 2u, (*(this + 9) + 3334));
  AppleBCMWLANChipConfigSpace::readReg8(*(*(this + 9) + 3352), 8u, (*(this + 9) + 3336));
  AppleBCMWLANChipConfigSpace::readReg8(*(*(this + 9) + 3352), 9u, (*(this + 9) + 3337));
  AppleBCMWLANChipConfigSpace::readReg16(*(*(this + 9) + 3352), 0x2Cu, (*(this + 9) + 3338));
  AppleBCMWLANChipConfigSpace::readReg16(*(*(this + 9) + 3352), 0x2Eu, (*(this + 9) + 3340));
  if (AppleBCMWLANBusInterface::getLogger(this))
  {
    AppleBCMWLANBusInterface::getLogger(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANBusInterfacePCIe::identifyDevice(this, v2);
    }
  }

  if (AppleBCMWLANBusInterface::getLogger(this))
  {
    AppleBCMWLANBusInterface::getLogger(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANBusInterfacePCIe::identifyDevice(this, v2);
    }
  }

  if (AppleBCMWLANBusInterface::getLogger(this))
  {
    AppleBCMWLANBusInterface::getLogger(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANBusInterfacePCIe::identifyDevice(this);
    }
  }

  return 0;
}

uint64_t AppleBCMWLANBusInterfacePCIe::configureDevice(AppleBCMWLANBusInterfacePCIe *this)
{
  result = AppleBCMWLANChipConfigSpace::modifyReg32(*(*(this + 9) + 3352), 4u, 0, 2, 0);
  if (!result)
  {

    return AppleBCMWLANBusInterfacePCIe::enableL1CPM(this);
  }

  return result;
}

uint64_t chipNumberFromDeviceID(int a1)
{
  if (a1 > 17458)
  {
    if (a1 <= 17507)
    {
      switch(a1)
      {
        case 17459:
          return 4387;
        case 17460:
          return 4388;
        case 17489:
          return 4399;
      }

      return 0;
    }

    if (a1 <= 17543)
    {
      if (a1 == 17508)
      {
        return 4364;
      }

      if (a1 == 17536)
      {
        return 4377;
      }

      return 0;
    }

    if (a1 != 17544)
    {
      if (a1 == 18347)
      {
        return 43452;
      }

      return 0;
    }

    return 276347;
  }

  if (a1 <= 17371)
  {
    if (a1 != 17257)
    {
      if (a1 == 17315)
      {
        return 4350;
      }

      if (a1 == 17323)
      {
        return 4345;
      }

      return 0;
    }

    return 276347;
  }

  switch(a1)
  {
    case 17372:
      return 4355;
    case 17418:
      return 4357;
    case 17445:
      return 4378;
  }

  return 0;
}

uint64_t AppleBCMWLANBusInterfacePCIe::detectSabotage(AppleBCMWLANBusInterfacePCIe *this)
{
  v2 = this + 72;
  MemoryRAMAddress = AppleBCMWLANChipManagerPCIe::getMemoryRAMAddress(*(*(this + 9) + 3280));
  if (MemoryRAMAddress)
  {
    v4 = MemoryRAMAddress;
    v15 = -1431655766;
    AppleBCMWLANChipConfigSpace::readReg32(*(*v2 + 3352), 0x6Cu, &v15);
    if (v15 >= 0x19u)
    {
      v5 = 152;
    }

    else
    {
      v5 = 160;
    }

    v13 = -1431655766;
    v14 = -1431655766;
    v11 = -1431655766;
    v12 = -1431655766;
    AppleBCMWLANChipConfigSpace::readReg32(*(*v2 + 3352), 0x88u, &v14);
    AppleBCMWLANChipConfigSpace::readReg32(*(*v2 + 3352), 0x80u, &v13);
    AppleBCMWLANChipConfigSpace::readReg32(*(*v2 + 3352), v5, &v12);
    AppleBCMWLANChipConfigSpace::modifyReg32(*(*v2 + 3352), 0x88u, 0, 64, 0);
    if (AppleBCMWLANChipManagerPCIe::isPowerControlRequired(*(*v2 + 3280)) && (AppleBCMWLANChipConfigSpace::writeReg32(*(*v2 + 3352), 0x80u, 0x18001000u), AppleBCMWLANChipConfigSpace::writeReg32(*(*v2 + 3352), v5, 0x1E8u), AppleBCMWLANChipConfigSpace::readReg32(*(*v2 + 3352), v5 | 4, &v15), v6 = v15, (~v15 & 0x300) != 0))
    {
      v15 |= 0x300u;
      AppleBCMWLANChipConfigSpace::writeReg32(*(*v2 + 3352), v5 | 4, v6 | 0x300);
      IOSleep(0xFuLL);
      v7 = 1;
    }

    else
    {
      v7 = 0;
    }

    v9 = AppleBCMWLANChipManagerPCIe::sysmemEnabled(*(*v2 + 3280));
    v10 = *v2;
    if (v9 && *(v10 + 3312) != 4399)
    {
      AppleBCMWLANChipConfigSpace::writeReg32(*(v10 + 3352), 0x80u, 0x18124000u);
      AppleBCMWLANChipConfigSpace::writeReg32(*(*v2 + 3352), v5, 0x800u);
      AppleBCMWLANChipConfigSpace::writeReg32(*(*v2 + 3352), v5 | 4, 1u);
      IODelay(0x64uLL);
      AppleBCMWLANChipConfigSpace::writeReg32(*(*v2 + 3352), v5, 0x408u);
      AppleBCMWLANChipConfigSpace::writeReg32(*(*v2 + 3352), v5 | 4, 3u);
      IODelay(0x64uLL);
      AppleBCMWLANChipConfigSpace::writeReg32(*(*v2 + 3352), v5, 0x800u);
      AppleBCMWLANChipConfigSpace::writeReg32(*(*v2 + 3352), v5 | 4, 0);
      IODelay(0x64uLL);
      AppleBCMWLANChipConfigSpace::writeReg32(*(*v2 + 3352), v5, 0x408u);
      AppleBCMWLANChipConfigSpace::writeReg32(*(*v2 + 3352), v5 | 4, 1u);
      IODelay(0x64uLL);
      v10 = *v2;
    }

    AppleBCMWLANChipConfigSpace::writeReg32(*(v10 + 3352), 0x80u, v4);
    AppleBCMWLANChipConfigSpace::writeReg32(*(*v2 + 3352), v5, 0);
    AppleBCMWLANChipConfigSpace::writeReg32(*(*v2 + 3352), v5 | 4, 0);
    AppleBCMWLANChipConfigSpace::readReg32(*(*v2 + 3352), v5 | 4, &v11);
    if (v7)
    {
      AppleBCMWLANChipConfigSpace::writeReg32(*(*v2 + 3352), 0x80u, 0x18001000u);
      AppleBCMWLANChipConfigSpace::writeReg32(*(*v2 + 3352), v5, 0x1E8u);
      AppleBCMWLANChipConfigSpace::readReg32(*(*v2 + 3352), v5 | 4, &v15);
      v15 &= 0xFFFFFCFF;
      AppleBCMWLANChipConfigSpace::writeReg32(*(*v2 + 3352), v5 | 4, v15);
      IOSleep(0xFuLL);
    }

    AppleBCMWLANChipConfigSpace::writeReg32(*(*v2 + 3352), 0x88u, v14);
    AppleBCMWLANChipConfigSpace::writeReg32(*(*v2 + 3352), 0x80u, v13);
    AppleBCMWLANChipConfigSpace::writeReg32(*(*v2 + 3352), v5, v12);
    if (v11 == -1)
    {
      return 3758097129;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    result = AppleBCMWLANBusInterface::getLogger(this);
    if (result)
    {
      AppleBCMWLANBusInterface::getLogger(this);
      result = CCLogStream::shouldLog();
      if (result)
      {
        AppleBCMWLANBusInterfacePCIe::detectSabotage(this);
        return 0;
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANBusInterfacePCIe::checkErrors(AppleBCMWLANBusInterfacePCIe *this)
{
  v10 = 0;
  AppleBCMWLANChipConfigSpace::modifyReg16(*(*(this + 9) + 3352), 6u, 0, 61440, &v10);
  v2 = v10;
  v3 = v10 & 0xF000;
  if ((v10 & 0xF000) != 0)
  {
    if (AppleBCMWLANBusInterface::getLogger(this))
    {
      AppleBCMWLANBusInterface::getLogger(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANBusInterfacePCIe::checkErrors(this, v3, v2);
      }
    }
  }

  Capability = AppleBCMWLANChipConfigSpace::findCapability(*(*(this + 9) + 3352), 0x10u, 0);
  if (Capability)
  {
    v5 = Capability;
    v9 = 0;
    AppleBCMWLANChipConfigSpace::modifyReg16(*(*(this + 9) + 3352), Capability + 10, 0, 15, &v9);
    v6 = v9 & 0xF;
    if ((v9 & 0xF) != 0)
    {
      if (AppleBCMWLANBusInterface::getLogger(this))
      {
        AppleBCMWLANBusInterface::getLogger(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANBusInterfacePCIe::checkErrors(this, v6);
        }
      }
    }

    v8 = 0;
    AppleBCMWLANChipConfigSpace::readReg16(*(*(this + 9) + 3352), v5 + 18, &v8);
    if ((v8 & 0x400) != 0)
    {
      if (AppleBCMWLANBusInterface::getLogger(this))
      {
        AppleBCMWLANBusInterface::getLogger(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANBusInterfacePCIe::checkErrors(this);
        }
      }
    }
  }

  return 0;
}

uint64_t AppleBCMWLANBusInterfacePCIe::readOTP(IOService *this)
{
  (this->OSObject::OSMetaClassBase::__vftable[21].Dispatch)(this, "readOTP", 5261);
  v2 = this[1].OSObject::OSObjectInterface::__vftable;
  if (v2[205].free)
  {
    return 0;
  }

  v3 = 3758097085;
  v5 = *(AppleBCMWLANChipManagerPCIe::getUserOTPRange(v2[205].init) + 4);
  v6 = IO80211Buffer::allocBufferSingle();
  if (v6)
  {
    v7 = v6;
    AppleBCMWLANChipBackplane::copyOTPReg16(this[1].OSObject::OSObjectInterface::__vftable[210].init);
    BytesNoCopy = IO80211Buffer::getBytesNoCopy(v7);
    Length = IO80211Buffer::getLength(v7);
    this[1].OSObject::OSObjectInterface::__vftable[205].free = OSData::withBytes(BytesNoCopy, Length);
    v10 = this[1].OSObject::OSObjectInterface::__vftable;
    free = v10[205].free;
    if (free)
    {
      setPropertyHelper(this, "OTP", free);
      v10 = this[1].OSObject::OSObjectInterface::__vftable;
    }

    if (LODWORD(v10[207].init) == 4377)
    {
      v12 = IO80211Buffer::getBytesNoCopy(v7);
      v13 = IO80211Buffer::getLength(v7);
      this[1].OSObject::OSObjectInterface::__vftable[206].init = OSData::withBytes((v12 + 4), (v13 - 4));
      init = this[1].OSObject::OSObjectInterface::__vftable[206].init;
      if (init)
      {
        setPropertyHelper(this, "OTP2", init);
      }
    }

    IO80211Buffer::returnBuffer(v7);
    (*(MEMORY[0] + 72))(0);
    v15 = *(AppleBCMWLANChipManagerPCIe::getChipOTPRange(this[1].OSObject::OSObjectInterface::__vftable[205].init) + 4);
    v16 = IO80211Buffer::allocBufferSingle();
    if (v16)
    {
      v17 = v16;
      AppleBCMWLANChipBackplane::copyOTPReg16(this[1].OSObject::OSObjectInterface::__vftable[210].init);
      v18 = IO80211Buffer::getBytesNoCopy(v17);
      v19 = IO80211Buffer::getLength(v17);
      this[1].OSObject::OSObjectInterface::__vftable[206].free = OSData::withBytes(v18, v19);
      v20 = this[1].OSObject::OSObjectInterface::__vftable[206].free;
      if (v20)
      {
        setPropertyHelper(this, "ChipOTP", v20);
      }

      IO80211Buffer::returnBuffer(v17);
      (*(MEMORY[0] + 72))(0);
      if (this[1].OSObject::OSObjectInterface::__vftable[205].free)
      {
        return 0;
      }

      else
      {
        return 3758097084;
      }
    }

    else if (AppleBCMWLANBusInterface::getLogger(this))
    {
      AppleBCMWLANBusInterface::getLogger(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANBusInterfacePCIe::readOTP(this);
      }
    }
  }

  else if (AppleBCMWLANBusInterface::getLogger(this))
  {
    AppleBCMWLANBusInterface::getLogger(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANBusInterfacePCIe::readOTP(this);
    }
  }

  return v3;
}

uint64_t AppleBCMWLANBusInterfacePCIe::fillIOPool(AppleBCMWLANBusInterfacePCIe *this, IOCommandPool *a2, AppleBCMWLANDMASlab *a3, uint64_t a4, uint64_t a5, uint64_t a6, IOService *a7)
{
  v8 = 3758097085;
  v9 = AppleBCMWLANDMASlab::withOptions(a3, a4, *(*(this + 9) + 3256), a5, 64, *(*(this + 9) + 3248), a7);
  if (v9)
  {
    v10 = v9;
    if (AppleBCMWLANDMASlab::getItemCount(v9))
    {
      v11 = 0;
      while (1)
      {
        v12 = AppleBCMWLANPCIeIO::withSlab(v10, v11);
        if (!v12)
        {
          break;
        }

        (*(*a2 + 72))(a2, v12);
        v11 = (v11 + 1);
        if (v11 >= AppleBCMWLANDMASlab::getItemCount(v10))
        {
          goto LABEL_6;
        }
      }
    }

    else
    {
LABEL_6:
      v8 = 0;
    }

    (*(*v10 + 16))(v10);
  }

  return v8;
}

CCLogStream *AppleBCMWLANBusInterfacePCIe::logPowerStateTransition(AppleBCMWLANBusInterface *a1, int a2, int a3, __int16 a4)
{
  v5 = a3;
  if (a3 == 1)
  {
    IOStateReporter::setChannelState(*(*(a1 + 9) + 3176), 0x507772537465uLL, gPowerStateIDs[a2]);
  }

  v8 = *(a1 + 9);
  v9 = *(v8 + 3088);
  *(v8 + 3088) = v9 + 1;
  mach_continuous_time();
  v10 = *(a1 + 9) + 24 * (v9 & 0x1F);
  absolutetime_to_nanoseconds();
  *(*(a1 + 9) + 2048 + 24 * (v9 & 0x1F) + 8) = *(*(a1 + 9) + 2048 + 24 * ((v9 - 1) & 0x1F) + 12);
  *(*(a1 + 9) + 24 * (v9 & 0x1F) + 2060) = a2;
  *(*(a1 + 9) + 24 * (v9 & 0x1F) + 2066) = v5;
  *(*(a1 + 9) + 24 * (v9 & 0x1F) + 2064) = a4;
  result = *(*(a1 + 9) + 4608);
  if (result)
  {
    result = CCLogStream::shouldLog(result, 2uLL);
    if (result)
    {
      v14 = 0u;
      v15 = 0;
      memset(v13, 0, sizeof(v13));
      v12 = 23553;
      WORD6(v14) = 516;
      AppleBCMWLANBusInterfacePCIe::pcapFillBusState(a1, v13);
      BYTE14(v14) = v5;
      HIBYTE(v14) = a2;
      return CCLogStream::logHeaderAndBufIf(*(*(a1 + 9) + 4608), 2uLL, 0, 0, 0, 0, &v12, 0x64uLL);
    }
  }

  return result;
}

AppleBCMWLANChipManagerPCIe *AppleBCMWLANBusInterfacePCIe::configurePTM(AppleBCMWLANBusInterfacePCIe *this, __int16 a2)
{
  readData = 0;
  result = (*(*this + 1208))(this, "configurePTM", 6417);
  v5 = *(this + 9);
  if (*(v5 + 3711) == 1 && *(v5 + 4007) == 1)
  {
    result = *(v5 + 3280);
    if (result)
    {
      result = AppleBCMWLANChipManagerPCIe::isPTMSupported(result);
      if (result)
      {
        IOPCIDevice::ConfigurationRead16(*(*(this + 9) + 3248), 0x208uLL, &readData);
        readData = readData & 0xFFFE | a2;
        IOPCIDevice::ConfigurationWrite16(*(*(this + 9) + 3248), 0x208uLL, readData);
        result = AppleBCMWLANBusInterface::getLogger(this);
        if (result)
        {
          AppleBCMWLANBusInterface::getLogger(this);
          result = CCLogStream::shouldLog();
          if (result)
          {
            Logger = AppleBCMWLANBusInterface::getLogger(this);
            return CCLogStream::logAlert(Logger, "[dk] %s@%d:Configured PTM 0x%0x\n", "configurePTM", 6444, readData);
          }
        }
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANBusInterfacePCIe::drainIOPool(uint64_t a1, uint64_t a2)
{
  for (result = (*(*a2 + 64))(a2, 0); result; result = (*(*a2 + 64))(a2, 0))
  {
    (*(*result + 16))(result);
  }

  return result;
}

uint64_t AppleBCMWLANBusInterfacePCIe::detachPCIeBusGated(AppleBCMWLANBusInterfacePCIe *this, IOPCIDevice *a2, char a3)
{
  result = AppleBCMWLANBusInterface::getLogger(this);
  if (result)
  {
    AppleBCMWLANBusInterface::getLogger(this);
    result = CCLogStream::shouldLog();
    if (result)
    {
      result = AppleBCMWLANBusInterfacePCIe::detachPCIeBusGated();
    }
  }

  v7 = *(this + 9);
  v8 = *(v7 + 3248);
  if (v8)
  {
    v9 = v8 == a2;
  }

  else
  {
    v9 = 0;
  }

  if (v9)
  {
    v10 = AppleBCMWLANBusInterfacePCIe::drainIOPool(result, *(v7 + 3536));
    v11 = AppleBCMWLANBusInterfacePCIe::drainIOPool(v10, *(*(this + 9) + 3528));
    v12 = AppleBCMWLANBusInterfacePCIe::drainIOPool(v11, *(*(this + 9) + 3520));
    v13 = AppleBCMWLANBusInterfacePCIe::drainIOPool(v12, *(*(this + 9) + 3512));
    AppleBCMWLANBusInterfacePCIe::drainIOPool(v13, *(*(this + 9) + 3544));
    v14 = *(this + 9);
    if (*(v14 + 3264))
    {
      v15 = *(v14 + 3496);
      v32[0] = _NSConcreteStackBlock;
      v32[1] = 0x40000000;
      v32[2] = ___ZN28AppleBCMWLANBusInterfacePCIe18detachPCIeBusGatedEP11IOPCIDeviceb_block_invoke;
      v32[3] = &__block_descriptor_tmp_210;
      v32[4] = this;
      IODispatchQueue::DispatchAsync(v15, v32);
    }

    AppleBCMWLANBusInterfacePCIe::disableRingEventSources(this);
    v16 = *(this + 9);
    v17 = v16[457];
    if (v17)
    {
      (*(*v17 + 16))(v17);
      *(*(this + 9) + 3656) = 0;
      v16 = *(this + 9);
    }

    v18 = v16[459];
    if (v18)
    {
      (*(*v18 + 16))(v18);
      *(*(this + 9) + 3672) = 0;
      v16 = *(this + 9);
    }

    v19 = v16[461];
    if (v19)
    {
      (*(*v19 + 16))(v19);
      *(*(this + 9) + 3688) = 0;
      v16 = *(this + 9);
    }

    v20 = v16[469];
    if (v20)
    {
      (*(*v20 + 16))(v20);
      *(*(this + 9) + 3752) = 0;
      v16 = *(this + 9);
    }

    v21 = v16[411];
    if (v21)
    {
      (*(*v21 + 16))(v21);
      *(*(this + 9) + 3288) = 0;
      v16 = *(this + 9);
    }

    v22 = v16[412];
    if (v22)
    {
      (*(*v22 + 16))(v22);
      *(*(this + 9) + 3296) = 0;
      v16 = *(this + 9);
    }

    v23 = v16[413];
    if (v23)
    {
      (*(*v23 + 16))(v23);
      *(*(this + 9) + 3304) = 0;
    }

    v24 = (*(*this + 984))(this);
    removePropertyHelper(v24, "WiFiCapability");
    v25 = *(this + 9);
    v26 = *(v25 + 3344);
    if (v26)
    {
      (*(*v26 + 16))(v26);
      *(*(this + 9) + 3344) = 0;
      v25 = *(this + 9);
    }

    v27 = *(v25 + 3368);
    if (v27)
    {
      (*(*v27 + 16))(v27);
      *(*(this + 9) + 3368) = 0;
      v25 = *(this + 9);
    }

    *(v25 + 3392) = 0;
    *(v25 + 3376) = 0u;
    v28 = *(this + 9);
    v29 = v28[420];
    if (v29)
    {
      (*(*v29 + 16))(v29);
      *(*(this + 9) + 3360) = 0;
      v28 = *(this + 9);
    }

    v30 = v28[410];
    if (v30)
    {
      (*(*v30 + 16))(v30);
      *(*(this + 9) + 3280) = 0;
      v28 = *(this + 9);
    }

    v31 = v28[419];
    if (v31)
    {
      (*(*v31 + 16))(v31);
      *(*(this + 9) + 3352) = 0;
      v28 = *(this + 9);
    }

    result = v28[406];
    if (result)
    {
      result = (*(*result + 16))(result);
      *(*(this + 9) + 3248) = 0;
    }

    if ((a3 & 1) == 0)
    {
      return (*(**(*(this + 9) + 3600) + 56))(*(*(this + 9) + 3600), 5000);
    }
  }

  return result;
}

uint64_t *AppleBCMWLANBusInterfacePCIe::disableRingEventSources(uint64_t *this)
{
  v1 = this[9];
  if (*(v1 + 1306) == 1)
  {
    v2 = this;
    this = AppleBCMWLANPCIeSkywalk::disableAllSubmissionQueue(*(v1 + 4480));
    v3 = v2[9];
    v4 = (v3 + 280);
    v5 = *(v3 + 280);
    while (v5 != v4)
    {
      RingFromChain = AppleBCMWLANPCIeSubmissionRing::getRingFromChain(v5);
      this = (*(*RingFromChain + 72))(RingFromChain);
      v5 = *v5;
      v3 = v2[9];
      v4 = (v3 + 280);
    }

    if (*(v3 + 376))
    {
      v7 = 602;
      do
      {
        this = *(v3 + 8 * v7);
        if (this)
        {
          this = (*(*this + 72))(this);
          v3 = v2[9];
        }

        if ((v7 - 602) > 0x2A)
        {
          break;
        }

        v8 = v7++ - 601;
      }

      while (*(v3 + 376) > v8);
    }
  }

  return this;
}

uint64_t AppleBCMWLANBusInterfacePCIe::nanoPowerCycleGated(AppleBCMWLANBusInterfacePCIe *this)
{
  v2 = *(*(this + 9) + 5192);
  AppleOLYHALPortInterfacePCIe::enableDK();
  *(*(this + 9) + 4564) = 0;
  AppleOLYHALPlatformFunction::setPowerEnableDK(*(*(this + 9) + 5184), 0, 0);
  IOSleep(*(*(this + 9) + 2848));
  AppleOLYHALPlatformFunction::setPowerEnableDK(*(*(this + 9) + 5184), 1, 0);
  IOSleep(*(*(this + 9) + 4640));
  v3 = *(*(this + 9) + 5192);
  v4 = AppleOLYHALPortInterfacePCIe::enableDK();
  v5 = v4;
  if (*(*(this + 9) + 3129) == 1 && v4 != 0)
  {
    if (AppleBCMWLANBusInterface::getLogger(this))
    {
      AppleBCMWLANBusInterface::getLogger(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANBusInterfacePCIe::nanoPowerCycleGated(this);
      }
    }

    AppleOLYHALPlatformFunction::setPowerEnableDK(*(*(this + 9) + 5184), 0, 0);
    IOSleep(*(*(this + 9) + 2848));
    if (AppleBCMWLANBusInterface::getLogger(this))
    {
      AppleBCMWLANBusInterface::getLogger(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANBusInterfacePCIe::nanoPowerCycleGated(this);
      }
    }

    AppleOLYHALPlatformFunction::setPowerEnableDK(*(*(this + 9) + 5184), 1, 0);
    IOSleep(*(*(this + 9) + 4640));
    v7 = *(*(this + 9) + 5192);
    v5 = AppleOLYHALPortInterfacePCIe::enableDK();
    if (v5 && *(*(this + 9) + 3128) == 1)
    {
      AppleBCMWLANBusInterfacePCIe::nanoPowerCycleGated();
    }
  }

  return v5;
}

uint64_t AppleBCMWLANBusInterfacePCIe::enableL1CPM(AppleBCMWLANBusInterfacePCIe *this)
{
  Capability = AppleBCMWLANChipConfigSpace::findCapability(*(*(this + 9) + 3352), 0x10u, 0);
  if (!Capability)
  {
    return 3758097136;
  }

  v3 = AppleBCMWLANChipConfigSpace::modifyReg16(*(*(this + 9) + 3352), Capability + 16, 0, 256, 0);
  if (v3)
  {
    if (AppleBCMWLANBusInterface::getLogger(this))
    {
      AppleBCMWLANBusInterface::getLogger(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANBusInterfacePCIe::enableL1CPM(this);
      }
    }
  }

  return v3;
}

uint64_t AppleBCMWLANBusInterfacePCIe::prepareHardware(AppleBCMWLANBusInterfacePCIe *this)
{
  *v26 = 0;
  *&v2 = 0xAAAAAAAAAAAAAAAALL;
  *(&v2 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v27[6] = v2;
  v27[7] = v2;
  v27[4] = v2;
  v27[5] = v2;
  v27[2] = v2;
  v27[3] = v2;
  v27[0] = v2;
  v27[1] = v2;
  v25 = 0;
  (*(*this + 1208))();
  if (AppleBCMWLAN_isDevFusedOrCSRInternal())
  {
    IOParseBootArgNumber("wlan.debug.jtag", &v25, 1);
  }

  v3 = 3758097098;
  v4 = *(this + 9);
  v5 = v4[421];
  if (!v5 || !v4[410] || !v4[419] || !v4[420])
  {
    return 3758097090;
  }

  if (AppleBCMWLANChipMemory::getFLOPSize(v5) < 0x20)
  {
    return 3758097115;
  }

  if ((AppleBCMWLANChipMemory::getFLOPSize(*(*(this + 9) + 3368)) & 3) != 0)
  {
    return 3758097090;
  }

  if (!AppleBCMWLANChipConfigSpace::findCapability(*(*(this + 9) + 3352), 0x10u, 0))
  {
    return 3758097136;
  }

  if (!AppleBCMWLANChipConfigSpace::modifyReg32(*(*(this + 9) + 3352), 4u, 4, 0, 0))
  {
    *(*(this + 9) + 1307) = 0;
    v6 = *(*(this + 9) + 3312);
    if (v6 != 4388 && v6 != 4399)
    {
      read_random();
      if (AppleBCMWLANChipMemory::getFLOPSize(*(*(this + 9) + 3368)) >= 4)
      {
        v7 = 0;
        v8 = 0;
        do
        {
          *(v27 + v7) |= 0xF0000000;
          AppleBCMWLANChipMemory::writeFLOP32(*(*(this + 9) + 3368));
          ++v8;
          v7 += 4;
        }

        while (v8 < AppleBCMWLANChipMemory::getFLOPSize(*(*(this + 9) + 3368)) >> 2);
      }
    }

    if (!(*(**(*(this + 9) + 3280) + 88))(*(*(this + 9) + 3280), *(*(this + 9) + 3352), *(*(this + 9) + 3360)))
    {
      v9 = AppleBCMWLANBusInterfacePCIe::performBPReset(this);
      if (v9)
      {
        return v9;
      }

      v10 = *(this + 9);
      if (*(v10 + 3312) == 4399)
      {
        goto LABEL_23;
      }

      AppleBCMWLANChipBackplane::writeARMMasterWrapperReg32(*(v10 + 3360), 0x800u, 1u);
      if (AppleBCMWLANChipBackplane::waitARMMasterWrapperReg32(*(*(this + 9) + 3360), 0x804u, 0, 1, 1000))
      {
        return 3758097110;
      }

      AppleBCMWLANChipBackplane::writeARMMasterWrapperReg32(*(*(this + 9) + 3360), 0x408u, 0x23u);
      if (!AppleBCMWLANChipBackplane::readARMMasterWrapperReg32(*(*(this + 9) + 3360), 0x408u, &v26[1]) && (~v26[1] & 0x23) == 0)
      {
        v10 = *(this + 9);
        if (*(v10 + 3312) != 4399)
        {
LABEL_32:
          if (AppleBCMWLANChipBackplane::readCommonCoreReg32(*(v10 + 3360), 0x80u, &v26[1]) || !AppleBCMWLANChipBackplane::isCoreMapped(*(*(this + 9) + 3360), 0))
          {
            return v3;
          }

          v11 = *(this + 9);
          v12 = *(v11 + 3312);
          if (v12 != 4388 && v12 != 4399)
          {
            if (AppleBCMWLANChipBackplane::readARMCoreReg32(*(v11 + 3360), 0, &v26[1]) || !AppleBCMWLANChipBackplane::isCoreMapped(*(*(this + 9) + 3360), 2u))
            {
              return v3;
            }

            v11 = *(this + 9);
          }

          if (AppleBCMWLANChipBackplane::readCommonMasterWrapperReg32(*(v11 + 3360), 0x80u, &v26[1]) || !AppleBCMWLANChipBackplane::isWrapperMapped(*(*(this + 9) + 3360), 0) || AppleBCMWLANChipBackplane::readARMMasterWrapperReg32(*(*(this + 9) + 3360), 0, &v26[1]) || !AppleBCMWLANChipBackplane::isWrapperMapped(*(*(this + 9) + 3360), 2u))
          {
            return v3;
          }

          v13 = 0;
LABEL_44:
          read_random();
          v14 = 0;
          while (1)
          {
            v15 = *(this + 9);
            if (v14 % 3 == 2)
            {
              v18 = *(v15 + 3312);
              if (v18 != 4388 && v18 != 4399)
              {
                FLOPSize = AppleBCMWLANChipMemory::getFLOPSize(*(v15 + 3368));
                if (LODWORD(v27[0]) <= FLOPSize)
                {
                  v21 = 0;
                  v22 = 0;
                  while (1)
                  {
                    AppleBCMWLANChipMemory::readFLOP32(*(*(this + 9) + 3368), v21, v26);
                    if (*(v27 + v21) != v26[0])
                    {
                      return 3758097098;
                    }

                    ++v22;
                    v23 = AppleBCMWLANChipMemory::getFLOPSize(*(*(this + 9) + 3368));
                    v21 += 4;
                    if (v22 >= v23 / LODWORD(v27[0]))
                    {
                      goto LABEL_72;
                    }
                  }
                }
              }

              goto LABEL_72;
            }

            if (v14 % 3 == 1)
            {
              if (!AppleBCMWLANChipBackplane::validateCores(*(v15 + 3360)) || !AppleBCMWLANChipBackplane::validateWrappers(*(*(this + 9) + 3360)))
              {
                return 3758097098;
              }

              v16 = *(this + 9);
              if (*(v16 + 3312) == 4399)
              {
                goto LABEL_72;
              }

              if (AppleBCMWLANChipBackplane::readARMMasterWrapperReg32(*(v16 + 3360), 0x800u, &v26[1]) || (v26[1] & 1) == 0)
              {
                return 3758097098;
              }

              if (AppleBCMWLANChipBackplane::validateCores(*(*(this + 9) + 3360)))
              {
                v17 = AppleBCMWLANChipBackplane::validateWrappers(*(*(this + 9) + 3360)) ^ 1;
              }

              else
              {
                LOBYTE(v17) = 1;
              }

              if (AppleBCMWLANChipBackplane::readARMMasterWrapperReg32(*(*(this + 9) + 3360), 0x408u, &v26[1]) || ((~v26[1] & 0x23) != 0) | v17 & 1)
              {
                return 3758097098;
              }
            }

            else if (!AppleBCMWLANChipBackplane::validateCores(*(v15 + 3360)) || !AppleBCMWLANChipBackplane::validateWrappers(*(*(this + 9) + 3360)) || (*(**(*(this + 9) + 3280) + 96))(*(*(this + 9) + 3280), *(*(this + 9) + 3352), *(*(this + 9) + 3360)))
            {
              return 3758097098;
            }

            if (!AppleBCMWLANChipBackplane::validateCores(*(*(this + 9) + 3360)) || (AppleBCMWLANChipBackplane::validateWrappers(*(*(this + 9) + 3360)) & 1) == 0)
            {
              return 3758097098;
            }

LABEL_72:
            if (++v14 == 3)
            {
              IOSleep(1uLL);
              if (++v13 != 4)
              {
                goto LABEL_44;
              }

              return 0;
            }
          }
        }

LABEL_23:
        if (AppleBCMWLANChipBackplane::readOOBRouterWrapperReg32(*(v10 + 3360), 0x248u, &v26[1]) || (~v26[1] & 0x21) != 0 || AppleBCMWLANChipBackplane::readSysmemSlaveWrapperReg32(*(*(this + 9) + 3360), 0x140u, &v26[1]) || (v26[1] & 1) != 0 || AppleBCMWLANChipBackplane::readOOBRouterWrapperReg32(*(*(this + 9) + 3360), 0x4C8u, &v26[1]) || (v26[1] & 1) == 0 || AppleBCMWLANChipBackplane::readARMMasterWrapperReg32(*(*(this + 9) + 3360), 0x140u, &v26[1]) || (v26[1] & 1) != 0)
        {
          return v3;
        }

        v10 = *(this + 9);
        goto LABEL_32;
      }
    }
  }

  return v3;
}

uint64_t AppleBCMWLANBusInterfacePCIe::registerDriver(AppleBCMWLANBusInterface *a1, uint64_t a2, uint64_t a3)
{
  if (AppleBCMWLANBusInterface::getLogger(a1))
  {
    AppleBCMWLANBusInterface::getLogger(a1);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANBusInterfacePCIe::registerDriver();
    }
  }

  v6 = 1;
  atomic_compare_exchange_strong((*(a1 + 9) + 3856), &v6, 0);
  if (v6 == 1)
  {
    IOService::AdjustBusy(a1, -1, 0);
    v10 = 0;
    IOService::GetBusyState(a1, &v10, 0);
    if (AppleBCMWLANBusInterface::getLogger(a1))
    {
      AppleBCMWLANBusInterface::getLogger(a1);
      if (CCLogStream::shouldLog())
      {
        Logger = AppleBCMWLANBusInterface::getLogger(a1);
        CCLogStream::logAlert(Logger, "[dk] %s@%d:registerDriver AdjustBusy(-1) busystate %u, fAdjustBusyCnt %u\n", "registerDriver", 5208, v10, *(*(a1 + 9) + 3856));
      }
    }

    v9 = *(*(a1 + 9) + 3856);
    io80211_os_log();
    (*(**(*(a1 + 9) + 3848) + 72))(*(*(a1 + 9) + 3848));
  }

  return AppleBCMWLANBusInterface::registerDriver(a1, a2, a3);
}

uint64_t AppleBCMWLANBusInterfacePCIe::unregisterDriver(AppleBCMWLANBusInterface *a1, const void *a2)
{
  if (AppleBCMWLANBusInterface::getLogger(a1))
  {
    AppleBCMWLANBusInterface::getLogger(a1);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANBusInterfacePCIe::unregisterDriver();
    }
  }

  return AppleBCMWLANBusInterface::unregisterDriver(a1, a2);
}

uint64_t AppleBCMWLANBusInterfacePCIe::notifyDriverFail(IOService *this)
{
  v7 = 0;
  IOService::GetBusyState(this, &v7, 0);
  if (AppleBCMWLANBusInterface::getLogger(this))
  {
    AppleBCMWLANBusInterface::getLogger(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANBusInterfacePCIe::notifyDriverFail();
    }
  }

  init_low = LODWORD(this[1].OSObject::OSObjectInterface::__vftable[241].init);
  result = io80211_os_log();
  v3 = 1;
  atomic_compare_exchange_strong(&this[1].OSObject::OSObjectInterface::__vftable[241], &v3, 0);
  if (v3 == 1)
  {
    IOService::AdjustBusy(this, -1, 0);
    IOService::GetBusyState(this, &v7, 0);
    if (AppleBCMWLANBusInterface::getLogger(this))
    {
      AppleBCMWLANBusInterface::getLogger(this);
      if (CCLogStream::shouldLog())
      {
        Logger = AppleBCMWLANBusInterface::getLogger(this);
        CCLogStream::logAlert(Logger, "[dk] %s@%d:AdjustBusy(-1), busystate %u, fAdjustBusyCnt %u\n", "notifyDriverFail", 5242, v7, LODWORD(this[1].OSObject::OSObjectInterface::__vftable[241].init));
      }
    }

    v6 = LODWORD(this[1].OSObject::OSObjectInterface::__vftable[241].init);
    io80211_os_log();
    return (*(*this[1].OSObject::OSObjectInterface::__vftable[240].free + 72))(this[1].OSObject::OSObjectInterface::__vftable[240].free);
  }

  return result;
}

uint64_t AppleBCMWLANBusInterfacePCIe::parseOTP(AppleBCMWLANBusInterfacePCIe *this, OSObject *a2, int (*a3)(OSObject *, unsigned __int8, unsigned __int8, const void *, void *), void *a4)
{
  v8 = AppleBCMWLANBusInterface::parseOTPData(this, *(*(this + 9) + 3288), a2, a3, a4);
  if (!v8)
  {
    goto LABEL_7;
  }

  if (AppleBCMWLANBusInterface::getLogger(this))
  {
    AppleBCMWLANBusInterface::getLogger(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANBusInterfacePCIe::parseOTP();
    }
  }

  v9 = *(this + 9);
  v10 = *(v9 + 3288);
  if (v10)
  {
    (*(*v10 + 16))(v10);
    *(*(this + 9) + 3288) = 0;
LABEL_7:
    v9 = *(this + 9);
  }

  if (*(v9 + 3312) != 4377)
  {
    return 0;
  }

  if (!AppleBCMWLANPCIeSkywalk::getPacketPool(this))
  {
    v8 = AppleBCMWLANBusInterface::parseOTPData(this, *(*(this + 9) + 3296), a2, a3, a4);
    if (v8)
    {
      if (AppleBCMWLANBusInterface::getLogger(this))
      {
        AppleBCMWLANBusInterface::getLogger(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANBusInterfacePCIe::parseOTP();
        }
      }

      v11 = *(*(this + 9) + 3296);
      if (v11)
      {
        (*(*v11 + 16))(v11);
        *(*(this + 9) + 3296) = 0;
      }
    }
  }

  return v8;
}

OSStringPtr AppleBCMWLANBusInterfacePCIe::parseVersion1Tuple(AppleBCMWLANBusInterface *a1, uint64_t a2, int a3, uint64_t a4)
{
  v18[0] = AppleBCMWLANBusInterface::getProductInfo0Addr(a1);
  v18[1] = AppleBCMWLANBusInterface::getProductInfo1Addr(a1);
  v18[2] = AppleBCMWLANBusInterface::getManufacturerAddr(a1);
  v18[3] = AppleBCMWLANBusInterface::getProductAddr(a1);
  memset(v17, 0, sizeof(v17));
  ProductInfo0 = AppleBCMWLANBusInterface::getProductInfo0(a1);
  if (ProductInfo0)
  {
    (*(*ProductInfo0 + 16))(ProductInfo0);
  }

  ProductInfo1 = AppleBCMWLANBusInterface::getProductInfo1(a1);
  if (ProductInfo1)
  {
    (*(*ProductInfo1 + 16))(ProductInfo1);
  }

  v9 = a3 - 3;
  PacketPool = AppleBCMWLANPCIeSkywalk::getPacketPool(a1);
  if (PacketPool)
  {
    (*(*PacketPool + 16))(PacketPool);
  }

  result = AppleBCMWLANBusInterface::getProduct(a1);
  if (result)
  {
    result = (result->release)(result);
  }

  v12 = 0;
  if (!v9)
  {
    goto LABEL_17;
  }

  v13 = 0;
  v14 = a4 + 2;
  do
  {
    v15 = (v14 + v13);
    if (*v15 == 255 || v12 > 3)
    {
      break;
    }

    v13 += strlcpy(v17, v15, 0x100uLL) + 1;
    result = OSString::withCString(v17);
    *v18[v12++] = result;
  }

  while (v13 < v9);
  if ((v12 & 0xFFFFFFFC) == 0)
  {
LABEL_17:
    v12 = v12;
    do
    {
      result = OSString::withCString("");
      *v18[v12++] = result;
    }

    while (v12 != 4);
  }

  return result;
}

uint64_t ___ZN28AppleBCMWLANBusInterfacePCIe20publishHWIdentifiersEv_block_invoke(uint64_t a1, OSMetaClassBase *anObject)
{
  v3 = *(a1 + 40);
  *(*(*(a1 + 32) + 8) + 24) = OSMetaClassBase::safeMetaCast(anObject, gOSStringMetaClass);
  v4 = *(*(*(a1 + 32) + 8) + 24);
  if (v4)
  {
    Object = OSDictionary::getObject(*(a1 + 48), v4);
    if (OSMetaClassBase::safeMetaCast(Object, gOSStringMetaClass))
    {
      if (AppleBCMWLANBusInterface::getLogger(v3))
      {
        AppleBCMWLANBusInterface::getLogger(v3);
        if (CCLogStream::shouldLog())
        {
          ___ZN28AppleBCMWLANBusInterfacePCIe20publishHWIdentifiersEv_block_invoke_cold_1();
        }
      }
    }
  }

  return 0;
}

uint64_t AppleBCMWLANBusInterfacePCIe::setVendorIdProperty(AppleBCMWLANBusInterfacePCIe *this, OSString *a2)
{
  v2 = 3758097084;
  if (!a2)
  {
    return 3758097090;
  }

  Length = OSString::getLength(a2);
  CStringNoCopy = OSString::getCStringNoCopy(a2);
  if (strnstr(CStringNoCopy, "V=m", Length))
  {
    v7 = "Murata";
    goto LABEL_19;
  }

  v8 = OSString::getCStringNoCopy(a2);
  if (strnstr(v8, "V=u", Length))
  {
    v7 = "USI";
    goto LABEL_19;
  }

  v9 = OSString::getCStringNoCopy(a2);
  if (strnstr(v9, "V=i", Length))
  {
    v7 = "Mitsumi";
    goto LABEL_19;
  }

  v10 = OSString::getCStringNoCopy(a2);
  if (strnstr(v10, "V=s", Length))
  {
    v7 = "Semco";
    goto LABEL_19;
  }

  v11 = OSString::getCStringNoCopy(a2);
  if (strnstr(v11, "V=t", Length))
  {
    v7 = "TDK";
    goto LABEL_19;
  }

  v12 = OSString::getCStringNoCopy(a2);
  if (strnstr(v12, "V=a", Length))
  {
    v7 = "Amkor";
    goto LABEL_19;
  }

  v13 = OSString::getCStringNoCopy(a2);
  if (strnstr(v13, "V=y", Length))
  {
    v7 = "Taiyo";
    goto LABEL_19;
  }

  v14 = OSString::getCStringNoCopy(a2);
  if (strnstr(v14, "V=g", Length))
  {
    v7 = "STATS";
LABEL_19:
    v15 = OSString::withCString(v7);
    if (v15)
    {
      v16 = v15;
      if (OSString::getCStringNoCopy(v15))
      {
        v17 = (*(*this + 984))(this);
        v18 = OSString::getCStringNoCopy(v16);
        if (setPropertyHelper(v17, "vendor-id", v18))
        {
          v2 = 0;
        }

        else if (AppleBCMWLANBusInterface::getLogger(this))
        {
          AppleBCMWLANBusInterface::getLogger(this);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANBusInterfacePCIe::setVendorIdProperty(this);
          }
        }
      }

      (v16->release)(v16);
    }

    return v2;
  }

  if (AppleBCMWLANBusInterface::getLogger(this))
  {
    AppleBCMWLANBusInterface::getLogger(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANBusInterfacePCIe::setVendorIdProperty(this);
    }
  }

  return v2;
}

uint64_t AppleBCMWLANBusInterfacePCIe::setOLYHALPropertyHelper(AppleBCMWLANBusInterfacePCIe *this, const char *cString, OSObject *a3)
{
  v6 = OSString::withCString(cString);
  v7 = OSMetaClassBase::safeMetaCast(a3, gOSStringMetaClass);
  if (v7)
  {
    v9 = AppleOLYHAL::setStringPropertyHelperDK(v6, v7, v8);
  }

  else
  {
    v10 = OSMetaClassBase::safeMetaCast(a3, gOSDictionaryMetaClass);
    if (v10)
    {
      v9 = AppleOLYHAL::setDictPropertyHelperDK(v6, v10, v11);
    }

    else
    {
      v12 = OSMetaClassBase::safeMetaCast(a3, gOSBooleanMetaClass);
      if (!v12)
      {
        if (AppleBCMWLANBusInterface::getLogger(this))
        {
          AppleBCMWLANBusInterface::getLogger(this);
          if (CCLogStream::shouldLog())
          {
            Logger = AppleBCMWLANBusInterface::getLogger(this);
            CCLogStream::logAlert(Logger, "[dk] %s@%d:No matching property type for key %s\n", "setOLYHALPropertyHelper", 5982, cString);
          }
        }

        v14 = 0;
        if (v6)
        {
          goto LABEL_8;
        }

        return v14;
      }

      v9 = AppleOLYHAL::setBoolPropertyHelperDK(v6, v12, v13);
    }
  }

  v14 = v9;
  if (v6)
  {
LABEL_8:
    (*(*v6 + 16))(v6);
  }

  return v14;
}

uint64_t AppleBCMWLANBusInterfacePCIe::getModuleInfo(IOService *this, OSDictionary *a2, OSString **a3)
{
  if (!this[1].OSObject::OSObjectInterface::__vftable[205].free)
  {
    return 3758097088;
  }

  if (!AppleBCMWLANPCIeSkywalk::getPacketPool(this) || !AppleBCMWLANBusInterface::getProduct(this))
  {
    (this->OSObject::OSMetaClassBase::__vftable[16].retain)(this, this, this->OSObject::OSMetaClassBase::__vftable[2].Dispatch, 0);
    if (AppleBCMWLANPCIeSkywalk::getPacketPool(this))
    {
      if (AppleBCMWLANBusInterface::getProduct(this))
      {
        if (AppleBCMWLANBusInterface::getLogger(this))
        {
          AppleBCMWLANBusInterface::getLogger(this);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANBusInterfacePCIe::getModuleInfo(this);
          }
        }
      }
    }
  }

  if (AppleBCMWLANPCIeSkywalk::getPacketPool(this) && AppleBCMWLANBusInterface::getProduct(this))
  {
    v6 = OSNumber::withNumber(WORD2(this[1].OSObject::OSObjectInterface::__vftable[208].init), 0x10uLL);
    v7 = OSNumber::withNumber(HIWORD(this[1].OSObject::OSObjectInterface::__vftable[208].init), 0x10uLL);
    v8 = OSNumber::withNumber(WORD1(this[1].OSObject::OSObjectInterface::__vftable[208].free), 0x10uLL);
    OSDictionary::setObject(a2, "ManufacturerID", v6);
    OSDictionary::setObject(a2, "ProductID", v7);
    PacketPool = AppleBCMWLANPCIeSkywalk::getPacketPool(this);
    OSDictionary::setObject(a2, "ChipInfo", PacketPool);
    Product = AppleBCMWLANBusInterface::getProduct(this);
    OSDictionary::setObject(a2, "ModuleInfo", Product);
    OSDictionary::setObject(a2, "subsystem-vendor-id", v8);
    if (a3)
    {
      v11 = this[1].OSObject::OSObjectInterface::__vftable;
      v12 = AppleBCMWLANPCIeSkywalk::getPacketPool(this);
      CStringNoCopy = OSString::getCStringNoCopy(v12);
      v14 = AppleBCMWLANBusInterface::getProduct(this);
      v15 = OSString::getCStringNoCopy(v14);
      v16 = OSNumber::unsigned16BitValue(v7);
      v17 = OSNumber::unsigned16BitValue(v6);
      snprintf(&v11[290].init + 4, 0x78uLL, "chip='%s' module='%s' prod='%u' manuf='%u'", CStringNoCopy, v15, v16, v17);
      *a3 = OSString::withCString(&this[1].OSObject::OSObjectInterface::__vftable[290].init + 4);
    }

    (v6->release)(v6);
    (v7->release)(v7);
    (v8->release)(v8);
    if ((checkPropertyExists(this, "vendor-id", 0, "IOService") & 1) == 0)
    {
      v18 = AppleBCMWLANBusInterface::getProduct(this);
      if ((this->OSObject::OSMetaClassBase::__vftable[13].release)(this, v18))
      {
        if (AppleBCMWLANBusInterface::getLogger(this))
        {
          AppleBCMWLANBusInterface::getLogger(this);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANBusInterfacePCIe::getModuleInfo(this);
          }
        }
      }
    }

    return 0;
  }

  else
  {
    v19 = 3825175809;
    if (AppleBCMWLANBusInterface::getLogger(this))
    {
      AppleBCMWLANBusInterface::getLogger(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANBusInterfacePCIe::getModuleInfo(this);
      }
    }
  }

  return v19;
}

OSMetaClassBase *AppleBCMWLANBusInterfacePCIe::getFilesDB(IOService *this)
{
  v2 = 0;
  acquireProperty<OSDictionary>(this, "FilesDB", &v2, 0, "IOService");
  return v2;
}

OSMetaClassBase *non-virtual thunk toAppleBCMWLANBusInterfacePCIe::getFilesDB(IOService *this)
{
  v2 = 0;
  acquireProperty<OSDictionary>(this - 1, "FilesDB", &v2, 0, "IOService");
  return v2;
}

uint64_t AppleBCMWLANBusInterfacePCIe::shouldGenerateFileName(AppleBCMWLANBusInterfacePCIe *this)
{
  result = *(*(this + 9) + 3280);
  if (result)
  {
    return (*(*result + 128))();
  }

  return result;
}

uint64_t non-virtual thunk toAppleBCMWLANBusInterfacePCIe::shouldGenerateFileName(AppleBCMWLANBusInterfacePCIe *this)
{
  result = *(*(this + 3) + 3280);
  if (result)
  {
    return (*(*result + 128))();
  }

  return result;
}

uint64_t AppleBCMWLANBusInterfacePCIe::getChipNumber(AppleBCMWLANBusInterfacePCIe *this)
{
  v1 = *(this + 9);
  v2 = *(v1 + 3280);
  if (v2)
  {
    return AppleBCMWLANChipManagerPCIe::getChipNumber(v2);
  }

  else
  {
    return *(v1 + 3312);
  }
}

uint64_t non-virtual thunk toAppleBCMWLANBusInterfacePCIe::getChipNumber(AppleBCMWLANBusInterfacePCIe *this)
{
  v1 = *(this + 3);
  v2 = *(v1 + 3280);
  if (v2)
  {
    return AppleBCMWLANChipManagerPCIe::getChipNumber(v2);
  }

  else
  {
    return *(v1 + 3312);
  }
}

void AppleBCMWLANBusInterfacePCIe::PortEventMsgHandler_Impl(AppleBCMWLANBusInterfacePCIe *this, OSAction *a2, OSNumber *a3, OSNumber *a4, OSNumber *a5, OSData *a6)
{
  v10 = OSNumber::unsigned32BitValue(a4);
  if (AppleBCMWLANBusInterface::getLogger(this))
  {
    AppleBCMWLANBusInterface::getLogger(this);
    if (CCLogStream::shouldLog())
    {
      Logger = AppleBCMWLANBusInterface::getLogger(this);
      v23 = OSNumber::unsigned32BitValue(a3);
      CCLogStream::logAlert(Logger, "[dk] %s@%d:message number = %u, event type = %u, errorType = %p errorData = %p\n", "PortEventMsgHandler_Impl", 6100, v23, v10, a5, a6);
    }
  }

  if (v10 <= 5)
  {
    if (v10 > 3)
    {
      if (v10 != 4)
      {
        if (a6)
        {
          LODWORD(a6) = *OSData::getBytesNoCopy(a6);
          if (a6)
          {
            if (AppleBCMWLANBusInterface::getLogger(this))
            {
              AppleBCMWLANBusInterface::getLogger(this);
              if (CCLogStream::shouldLog())
              {
                v24 = AppleBCMWLANBusInterface::getLogger(this);
                CCLogStream::logAlert(v24, "[dk] %s@%d:set fResetInLowPower %d, ret %x\n", "PortEventMsgHandler_Impl", 6142, 6142, a6);
              }
            }

            LODWORD(a6) = 0;
            *(*(this + 9) + 4560) = 1;
            __dmb(0xBu);
            *(*(this + 9) + 4562) = 1;
            __dmb(0xBu);
          }
        }

        goto LABEL_52;
      }

      v25 = 0;
      if ((*(*this + 56))(this, &v25))
      {
        v16 = v25 == 2;
      }

      else
      {
        v16 = 0;
      }

      if (v16)
      {
        *(*(this + 9) + 4560) = 1;
      }

      v17 = *(*(this + 9) + 4560);
      v18 = AppleBCMWLANBusInterface::getLogger(this);
      if (v17)
      {
        LODWORD(a6) = -536870167;
        if (v18)
        {
          AppleBCMWLANBusInterface::getLogger(this);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANBusInterfacePCIe::PortEventMsgHandler_Impl(this);
          }
        }

        goto LABEL_52;
      }

      if (v18)
      {
        AppleBCMWLANBusInterface::getLogger(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANBusInterfacePCIe::PortEventMsgHandler_Impl(this);
        }
      }

      goto LABEL_51;
    }

    if (v10 != 1)
    {
      if (v10 == 2)
      {
        v12 = (*(*this + 1136))(this);
LABEL_27:
        LODWORD(a6) = v12;
LABEL_52:
        v20 = *(*(this + 9) + 5192);
        v21 = OSNumber::unsigned32BitValue(a3);
        AppleOLYHALPortInterfacePCIe::completePortEventMsg(v20, v21, v10, a6, 0);
        return;
      }

      goto LABEL_45;
    }

LABEL_15:
    if (AppleBCMWLANBusInterface::getFaultReporter(this) && (FaultReporter = AppleBCMWLANBusInterface::getFaultReporter(this), (CCFaultReporter::isBusy(FaultReporter) & 1) != 0) || !(*(*this + 608))(this))
    {
      if (!a5)
      {
        goto LABEL_26;
      }
    }

    else
    {
      v14 = (*(*this + 608))(this);
      isWatchdogRunning = AppleBCMWLANCore::isWatchdogRunning(v14);
      if (!a5 || (isWatchdogRunning & 1) == 0)
      {
        goto LABEL_26;
      }
    }

    if (AppleBCMWLANBusInterface::getLogger(this))
    {
      AppleBCMWLANBusInterface::getLogger(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANBusInterfacePCIe::PortEventMsgHandler_Impl(this, a5, v10);
      }
    }

    if (OSNumber::unsigned32BitValue(a5) > 5)
    {
      goto LABEL_51;
    }

LABEL_26:
    v12 = (*(**(*(this + 9) + 3472) + 56))(*(*(this + 9) + 3472), *(*this + 1168), v10, a5, a6, 0);
    goto LABEL_27;
  }

  if ((v10 - 8) < 2 || v10 == 6)
  {
    goto LABEL_15;
  }

  if (v10 != 7)
  {
LABEL_45:
    if (AppleBCMWLANBusInterface::getLogger(this))
    {
      AppleBCMWLANBusInterface::getLogger(this);
      if (CCLogStream::shouldLog())
      {
        v19 = AppleBCMWLANBusInterface::getLogger(this);
        CCLogStream::logAlert(v19, "[dk] %s@%d:Unrecognized platform action %u\n", "PortEventMsgHandler_Impl", 6194, v10);
      }
    }

LABEL_51:
    LODWORD(a6) = 0;
    goto LABEL_52;
  }

  AppleBCMWLANBusInterfacePCIe::PortErrorMsgHandler_Impl(this, v11, a3, a5, a6);
}

void AppleBCMWLANBusInterfacePCIe::PortErrorMsgHandler_Impl(AppleBCMWLANBusInterfacePCIe *this, OSAction *a2, OSNumber *a3, OSNumber *a4, OSData *a5)
{
  block[5] = 0xAAAAAAAAAAAAAAAALL;
  mach_continuous_time();
  absolutetime_to_nanoseconds();
  v9 = OSNumber::unsigned32BitValue(a4);
  IOLog("[%06llu.%06llu] AppleBCMWLANBusInterfacePCIe::pciePortErrorHandlerCallback Link Problem (%d)\n", 0x2DD01FC06, 473034, v9);
  if (v9 > 5)
  {
    if (v9 != 6)
    {
      if (v9 != 7)
      {
LABEL_19:
        v21 = *(*(this + 9) + 5192);
        v17 = OSNumber::unsigned32BitValue(a3);
        v18 = v21;
        v19 = v9;
LABEL_20:
        v20 = -536870212;
        goto LABEL_21;
      }

      *(*(this + 9) + 3706) = 1;
      AppleBCMWLANChipBackplane::setPCIeLinkState(*(*(this + 9) + 3360), 1);
      *(*(this + 9) + 3707) = 1;
    }

    if (AppleBCMWLAN_isVerboseDebugLoggingAllowed() && (*(*(this + 9) + 3706) & 1) == 0)
    {
      AppleBCMWLANBusInterfacePCIe::gatherEPConfigRegSpace(this, v14);
    }

    v15 = *(this + 9);
    goto LABEL_17;
  }

  if (v9 != 1)
  {
    if (v9 == 3)
    {
      isVerboseDebugLoggingAllowed = AppleBCMWLAN_isVerboseDebugLoggingAllowed();
      v12 = this + 72;
      v11 = *(this + 9);
      if (isVerboseDebugLoggingAllowed && (*(v11 + 3786) & 1) != 0)
      {
        *(v11 + 3708) = 1;
        if (!AppleOLYHALPortInterfacePCIe::isPortControlAMFMManagedDK(*(*v12 + 5192), 0))
        {
          v13 = (*(**(*(this + 9) + 3472) + 56))(*(*(this + 9) + 3472), *(*this + 1176), 3, a5, 0, 0);
LABEL_27:
          v29 = *(*v12 + 5192);
          v17 = OSNumber::unsigned32BitValue(a3);
          v18 = v29;
          v19 = v9;
          v20 = v13;
          goto LABEL_21;
        }

        goto LABEL_16;
      }

      *(v11 + 3708) = 1;
    }

    goto LABEL_19;
  }

  v12 = this + 72;
  *(*(this + 9) + 3706) = 1;
  AppleBCMWLANChipBackplane::setPCIeLinkState(*(*(this + 9) + 3360), 1);
  if (AppleOLYHALPortInterfacePCIe::isPortControlAMFMManagedDK(*(*(this + 9) + 5192), 0))
  {
LABEL_16:
    v15 = *v12;
LABEL_17:
    v16 = *(v15 + 5192);
    v17 = OSNumber::unsigned32BitValue(a3);
    v18 = v16;
    v19 = v9;
    v20 = 0;
LABEL_21:
    AppleOLYHALPortInterfacePCIe::completePortErrorMsg(v18, v17, v19, v20, 0);
    return;
  }

  v22 = IOMallocZeroTyped();
  if (!v22)
  {
    v30 = *(*v12 + 5192);
    v17 = OSNumber::unsigned32BitValue(a3);
    v18 = v30;
    v19 = 1;
    goto LABEL_20;
  }

  v23 = v22;
  *v22 = 1;
  *(v22 + 8) = a5;
  if (a5)
  {
    (a5->retain)(a5);
  }

  IOLockLock(*(*v12 + 2816));
  v24 = *v12;
  v25 = *v12 + 1504;
  v26 = *(*v12 + 1512);
  if (*v26 == v25)
  {
    *(v23 + 16) = v25;
    *(v23 + 24) = v26;
    v27 = v23 + 16;
    *v26 = v27;
    *(v24 + 1512) = v27;
    IOLockUnlock(*(*(this + 9) + 2816));
    v28 = (*(**(*(this + 9) + 3464) + 168))(*(*(this + 9) + 3464));
    block[0] = _NSConcreteStackBlock;
    block[1] = 0x40000000;
    block[2] = ___ZN28AppleBCMWLANBusInterfacePCIe24PortErrorMsgHandler_ImplEP8OSActionP8OSNumberS3_P6OSData_block_invoke;
    block[3] = &__block_descriptor_tmp_870;
    block[4] = this;
    IODispatchQueue::DispatchAsync(v28, block);
    v13 = 0;
    goto LABEL_27;
  }

  __break(1u);
}

uint64_t AppleBCMWLANBusInterfacePCIe::PortEventMsgHandlerGated(AppleBCMWLANBusInterfacePCIe *this, int a2, OSNumber *a3, OSData *a4)
{
  if (AppleBCMWLANBusInterface::getLogger(this))
  {
    AppleBCMWLANBusInterface::getLogger(this);
    if (CCLogStream::shouldLog())
    {
      Logger = AppleBCMWLANBusInterface::getLogger(this);
      CCLogStream::logAlert(Logger, "[dk] %s@%d:event type = %u\n", "PortEventMsgHandlerGated", 6212, a2);
    }
  }

  if (a2 > 7)
  {
    if (a2 == 8)
    {
      v13 = OSNumber::unsigned32BitValue(a3);
      if ((*(*this + 1176))(this, v13, a4))
      {
        AppleBCMWLANBusInterfacePCIe::PortEventMsgHandlerGated(this);
      }

      return 0;
    }

    if (a2 == 9)
    {
      if (*(*(this + 9) + 4422) == 1)
      {
        hasRegisteredDriver = AppleBCMWLANBusInterface::hasRegisteredDriver(this);
        v9 = AppleBCMWLANBusInterface::getLogger(this);
        if (hasRegisteredDriver)
        {
          if (v9)
          {
            AppleBCMWLANBusInterface::getLogger(this);
            if (CCLogStream::shouldLog())
            {
              AppleBCMWLANBusInterfacePCIe::PortEventMsgHandlerGated(this);
            }
          }

          FaultReporter = AppleBCMWLANBusInterface::getFaultReporter(this);
          if (CCFaultReporter::isBusy(FaultReporter))
          {
            if (AppleBCMWLANBusInterface::getLogger(this))
            {
              AppleBCMWLANBusInterface::getLogger(this);
              if (CCLogStream::shouldLog())
              {
                AppleBCMWLANBusInterfacePCIe::PortEventMsgHandlerGated(this);
              }
            }
          }

          else
          {
            v18 = AppleBCMWLANBusInterface::getFaultReporter(this);
            CCFaultReporter::reportFault(v18, 4u, "/Library/Caches/com.apple.xbs/Sources/AppleBCMWLANV3_driverkit/Busses/PCIe/AppleBCMWLANBusInterfacePCIe.cpp", 0x18DCu, "PortEventMsgHandlerGated", 0, -469794011, "WiFi Dump on BT FLR");
          }
        }

        else if (v9)
        {
          AppleBCMWLANBusInterface::getLogger(this);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANBusInterfacePCIe::PortEventMsgHandlerGated(this);
          }
        }
      }

      return 0;
    }

    goto LABEL_21;
  }

  if (a2 == 1)
  {
    if ((AppleBCMWLANBusInterface::hasRegisteredDriver(this) & 1) == 0)
    {
      if (AppleBCMWLANBusInterface::getLogger(this))
      {
        AppleBCMWLANBusInterface::getLogger(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANBusInterfacePCIe::PortEventMsgHandlerGated(this);
        }
      }

      AppleBCMWLANBusInterfacePCIe::nanoPowerCycleGated(this);
      return 0;
    }

    if (*(*(this + 9) + 5304))
    {
      if (AppleBCMWLANBusInterface::getLogger(this))
      {
        AppleBCMWLANBusInterface::getLogger(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANBusInterfacePCIe::PortEventMsgHandlerGated(this);
        }
      }

      return 0;
    }

    while (1)
    {
      v14 = AppleBCMWLANBusInterface::getFaultReporter(this);
      if ((CCFaultReporter::isBusy(v14) & 1) == 0)
      {
        v15 = (*(*this + 608))(this);
        if (!AppleBCMWLANCore::isWatchdogRunning(v15))
        {
          break;
        }
      }

      v32 = 0xAAAAAAAAAAAAAAAALL;
      clock_interval_to_deadline();
      (*(**(*(this + 9) + 3472) + 80))(*(*(this + 9) + 3472), &v32, v32);
    }

    *(*(this + 9) + 4564) = 1;
    v16 = *(this + 9);
    if (*(v16 + 3725) == 1)
    {
      if (*(v16 + 4562))
      {
        v17 = 9;
      }

      else
      {
        v17 = 8;
      }
    }

    else
    {
      v17 = 5;
    }

    if (*(v16 + 4562) == 1 && *(v16 + 4565) == 1)
    {
      v19 = *(v16 + 4568);
      v20 = *(v16 + 4576);
      v21 = 1;
    }

    else
    {
      v21 = 0;
      v19 = "External reset request";
      v20 = -469794011;
    }

    if (*(v16 + 3706))
    {
      v22 = -469794028;
    }

    else
    {
      v22 = v20;
    }

    if (*(v16 + 3706))
    {
      v23 = "unexpected link down";
    }

    else
    {
      v23 = v19;
    }

    if (*(v16 + 3707))
    {
      *(v16 + 3707) = 0;
      v16 = *(this + 9);
      if (*(v16 + 3708) != 1)
      {
        v23 = "unexpected port error";
        v22 = -469794028;
        goto LABEL_63;
      }
    }

    else if ((*(v16 + 3708) & 1) == 0)
    {
      if (!v23)
      {
        v29 = AppleBCMWLANBusInterface::getFaultReporter(this);
        CCFaultReporter::reportFault(v29, v17, "/Library/Caches/com.apple.xbs/Sources/AppleBCMWLANV3_driverkit/Busses/PCIe/AppleBCMWLANBusInterfacePCIe.cpp", 0x1886u, "PortEventMsgHandlerGated", 0, v22, 0, v31);
        goto LABEL_64;
      }

LABEL_63:
      v24 = AppleBCMWLANBusInterface::getFaultReporter(this);
      CCFaultReporter::reportFault(v24, v17, "/Library/Caches/com.apple.xbs/Sources/AppleBCMWLANV3_driverkit/Busses/PCIe/AppleBCMWLANBusInterfacePCIe.cpp", 0x1882u, "PortEventMsgHandlerGated", 0, v22, "%s", v23);
LABEL_64:
      if (v21)
      {
        (*(*this + 1144))(this);
      }

      v25 = *(this + 9);
      v26 = *(v25 + 3632);
      if (v26)
      {
        (*(*v26 + 56))(v26, 10000);
        v25 = *(this + 9);
      }

      if (*(v25 + 3725) == 1 && (*(v25 + 4562) & 1) == 0)
      {
        if (AppleBCMWLANBusInterface::getLogger(this))
        {
          AppleBCMWLANBusInterface::getLogger(this);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANBusInterfacePCIe::PortEventMsgHandlerGated(this);
          }
        }

        AppleBCMWLANBusInterfacePCIe::nanoPowerCycleGated(this);
        *(*(this + 9) + 4560) = 1;
        v27 = *(*(this + 9) + 3632);
        if (v27)
        {
          (*(*v27 + 72))(v27);
        }
      }

      return 0;
    }

    *(v16 + 3708) = 0;
    v22 = -469794003;
    v23 = "Bad Request Received from endpoint";
    goto LABEL_63;
  }

  if (a2 == 6)
  {
    IOService::ChangePowerState(this, 2u, 0);
    if (AppleBCMWLANBusInterface::getLogger(this))
    {
      AppleBCMWLANBusInterface::getLogger(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANBusInterfacePCIe::PortEventMsgHandlerGated(this);
      }
    }

    return 0;
  }

LABEL_21:
  v11 = 3758097095;
  if (AppleBCMWLANBusInterface::getLogger(this))
  {
    AppleBCMWLANBusInterface::getLogger(this);
    if (CCLogStream::shouldLog())
    {
      v12 = AppleBCMWLANBusInterface::getLogger(this);
      CCLogStream::logAlert(v12, "[dk] %s@%d:Unrecognized platform action %u\n", "PortEventMsgHandlerGated", 6368, a2);
    }
  }

  return v11;
}

uint64_t AppleBCMWLANBusInterfacePCIe::setChipUnrecoverable(AppleBCMWLANBusInterfacePCIe *this)
{
  *(*(this + 9) + 5200) = 1;
  result = AppleBCMWLANBusInterface::getLogger(this);
  if (result)
  {
    AppleBCMWLANBusInterface::getLogger(this);
    result = CCLogStream::shouldLog();
    if (result)
    {
      return AppleBCMWLANBusInterfacePCIe::setChipUnrecoverable(this);
    }
  }

  return result;
}

uint64_t AppleBCMWLANBusInterfacePCIe::clearPreS2RResetReason(uint64_t this)
{
  v1 = *(this + 72);
  if (*(v1 + 4565) == 1)
  {
    *(v1 + 4565) = 0;
    *(*(this + 72) + 4576) = 0;
    *(*(this + 72) + 4568) = 0;
  }

  return this;
}

uint64_t non-virtual thunk toAppleBCMWLANBusInterfacePCIe::clearPreS2RResetReason(uint64_t this)
{
  v1 = *(this + 8);
  if (*(v1 + 4565) == 1)
  {
    *(v1 + 4565) = 0;
    *(*(this + 8) + 4576) = 0;
    *(*(this + 8) + 4568) = 0;
  }

  return this;
}

uint64_t AppleBCMWLANBusInterfacePCIe::setPreS2RResetReason(void *a1, int a2, uint64_t a3)
{
  result = (*(*a1 + 1144))(a1);
  *(a1[9] + 4568) = a3;
  *(a1[9] + 4576) = a2;
  *(a1[9] + 4565) = 1;
  return result;
}

uint64_t non-virtual thunk toAppleBCMWLANBusInterfacePCIe::setPreS2RResetReason(uint64_t a1, int a2, uint64_t a3)
{
  v5 = a1 - 64;
  result = (*(*(a1 - 64) + 1144))(a1 - 64);
  *(*(v5 + 72) + 4568) = a3;
  *(*(v5 + 72) + 4576) = a2;
  *(*(v5 + 72) + 4565) = 1;
  return result;
}

void AppleBCMWLANBusInterfacePCIe::externalResetTimeout(AppleBCMWLANBusInterface *a1)
{
  if (AppleBCMWLANBusInterface::getLogger(a1))
  {
    AppleBCMWLANBusInterface::getLogger(a1);
    if (CCLogStream::shouldLog())
    {
      Logger = AppleBCMWLANBusInterface::getLogger(a1);
      CCLogStream::logAlert(Logger, "[dk] %s@%d:halt did not happen in %u ms\n", "externalResetTimeout", 6408, 10000);
    }
  }

  ClassNameHelper = getClassNameHelper(a1);
  panic("%s::%s(): External reset request timed out", ClassNameHelper, "externalResetTimeout");
}

uint64_t AppleBCMWLANBusInterfacePCIe::isEPTransactionPending(AppleBCMWLANBusInterfacePCIe *this, BOOL *a2)
{
  foundCapabilityOffset = 0;
  if (IOPCIDevice::FindPCICapability(*(*(this + 9) + 3248), 0x10u, 0, &foundCapabilityOffset, 0))
  {
    v4 = 3758097136;
    if (AppleBCMWLANBusInterface::getLogger(this))
    {
      AppleBCMWLANBusInterface::getLogger(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANBusInterfacePCIe::isEPTransactionPending(this);
      }
    }
  }

  else
  {
    readData = 0;
    IOPCIDevice::ConfigurationRead32(*(*(this + 9) + 3248), foundCapabilityOffset + 8, &readData);
    v4 = 0;
    *a2 = (readData & 0x200000) != 0;
  }

  return v4;
}

void AppleBCMWLANBusInterfacePCIe::checkTransactionPending(AppleBCMWLANBusInterfacePCIe *this)
{
  if (((*(*this + 208))(this) & 1) == 0 && *(*(this + 9) + 1306) == 1)
  {
    v2 = 0;
    v8 = 1;
    while (1)
    {
      v3 = (*(*this + 1120))(this, &v8);
      if (v3)
      {
        break;
      }

      if ((v8 & 1) == 0)
      {
        if (AppleBCMWLANBusInterface::getLogger(this))
        {
          AppleBCMWLANBusInterface::getLogger(this);
          if (CCLogStream::shouldLog())
          {
            Logger = AppleBCMWLANBusInterface::getLogger(this);
            CCLogStream::logCrit(Logger, "[dk] %s@%d:Transaction Pending bit cleared with count: %u\n", "checkTransactionPending", 6580, v2);
          }
        }

        goto LABEL_18;
      }

      IOSleep(0xAuLL);
      if (v8 != 1 || v2++ >= 9)
      {
        goto LABEL_18;
      }
    }

    v5 = v3;
    if (AppleBCMWLANBusInterface::getLogger(this))
    {
      AppleBCMWLANBusInterface::getLogger(this);
      if (CCLogStream::shouldLog())
      {
        v6 = AppleBCMWLANBusInterface::getLogger(this);
        CCLogStream::logAlert(v6, "[dk] %s@%d:Failed to get Transaction Pending bit, ret: 0x%x\n", "checkTransactionPending", 6575, v5);
      }
    }

LABEL_18:
    if (v8 == 1 && AppleBCMWLANBusInterface::getLogger(this))
    {
      AppleBCMWLANBusInterface::getLogger(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANBusInterfacePCIe::checkTransactionPending(this);
      }
    }
  }
}

uint64_t AppleBCMWLANBusInterfacePCIe::flr(OSObject *this)
{
  v2 = *(this[1].ivars + 410);
  if (!v2)
  {
    return 3758097088;
  }

  if (!AppleBCMWLANChipManagerPCIe::isMultiFunctionChip(v2))
  {
    return 3758097095;
  }

  v3 = AppleOLYHALPlatformFunction::flrHoldDK(*(this[1].ivars + 648), 0);
  if (v3)
  {
    v4 = v3;
    if (AppleBCMWLANBusInterface::getLogger(this))
    {
      AppleBCMWLANBusInterface::getLogger(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANBusInterfacePCIe::flr();
      }
    }
  }

  else
  {
    v6 = AppleOLYHALPlatformFunction::flrReleaseDK(*(this[1].ivars + 648), 0);
    if (v6)
    {
      v4 = v6;
      if (AppleBCMWLANBusInterface::getLogger(this))
      {
        AppleBCMWLANBusInterface::getLogger(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANBusInterfacePCIe::flr();
        }
      }
    }

    else if (AppleBCMWLANChipManagerPCIe::isSplitArchitecture(*(this[1].ivars + 410)) && (*(this[1].ivars + 4584) = 1, IOPCIDevice::RestoreDeviceState(*(this[1].ivars + 406), 0, 0), (AppleBCMWLANBusInterfacePCIe::isAPBAccessible(this, 0, 1) & 1) == 0))
    {
      if (AppleBCMWLANBusInterface::getLogger(this))
      {
        AppleBCMWLANBusInterface::getLogger(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANBusInterfacePCIe::flr(this);
        }
      }

      *(this[1].ivars + 4584) = 0;
      IOPCIDevice::SaveDeviceState(*(this[1].ivars + 406), 0, 0);
      if (*(this[1].ivars + 4585) == 1)
      {
        AppleBCMWLANBusInterfacePCIe::flr(this);
      }

      return 3758097131;
    }

    else
    {
      return 0;
    }
  }

  return v4;
}

uint64_t AppleBCMWLANBusInterfacePCIe::isAPBAccessible(AppleBCMWLANBusInterfacePCIe *this, int a2, int a3)
{
  APBAccessibilityState = AppleBCMWLANChipBackplane::getAPBAccessibilityState(*(*(this + 9) + 3360));
  v7 = *(this + 9);
  if (APBAccessibilityState == 1)
  {
    if (((*(**(v7 + 3280) + 240))(*(v7 + 3280)) & 1) == 0)
    {
      AppleBCMWLANBusInterfacePCIe::dumpAPBRegisters(this);
    }

    return 0;
  }

  v9 = *(v7 + 2869);
  if (a2)
  {
    (*(*this + 1208))(this, "isAPBAccessible", 19823);
    if (!v9)
    {
LABEL_7:
      if (!a3)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }
  }

  else if (!*(v7 + 2869))
  {
    goto LABEL_7;
  }

  AppleBCMWLANBusInterfacePCIe::setDeviceInDeepSleep(this, 0);
  if (a3)
  {
LABEL_8:
    AppleBCMWLANChipBackplane::forcePower(*(*(this + 9) + 3360), 1, 0);
  }

LABEL_9:
  v8 = AppleBCMWLANBusInterfacePCIe::checkAPBAccessibility(this, a2, a3);
  if ((v8 & 1) == 0)
  {
    v10 = *(*(this + 9) + 4584);
    if (!a3)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  v10 = 0;
  if (a3)
  {
LABEL_16:
    AppleBCMWLANChipBackplane::forcePower(*(*(this + 9) + 3360), 0, v10 & 1);
  }

LABEL_17:
  if (v9)
  {
    AppleBCMWLANBusInterfacePCIe::setDeviceInDeepSleep(this, 1);
  }

  return v8;
}

uint64_t AppleBCMWLANBusInterfacePCIe::halt(AppleBCMWLANBusInterfacePCIe *this, int a2)
{
  v41 = 0;
  if (AppleBCMWLANBusInterface::getLogger(this))
  {
    AppleBCMWLANBusInterface::getLogger(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANBusInterfacePCIe::halt(this);
    }
  }

  v42 = 0xAAAAAAAAAAAAAAAALL;
  v5 = this + 72;
  v4 = *(this + 9);
  v6 = *(v4 + 3632);
  if (v6)
  {
    (*(*v6 + 72))(v6);
    v4 = *v5;
  }

  if (*(v4 + 3704) == 1)
  {
    if (AppleBCMWLANBusInterface::getLogger(this))
    {
      AppleBCMWLANBusInterface::getLogger(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANBusInterfacePCIe::halt(this);
      }
    }

    return 0;
  }

  if (*(v4 + 1304) == 1)
  {
    if (AppleBCMWLANBusInterface::getLogger(this))
    {
      AppleBCMWLANBusInterface::getLogger(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANBusInterfacePCIe::halt(this);
      }
    }

    return 0;
  }

  AppleBCMWLANBusInterfacePCIe::disableRingEventSources(this);
  v9 = *(this + 9);
  if (*(v9 + 3264))
  {
    v10 = *(v9 + 3496);
    block[0] = _NSConcreteStackBlock;
    block[1] = 0x40000000;
    block[2] = ___ZN28AppleBCMWLANBusInterfacePCIe4haltEb_block_invoke;
    block[3] = &__block_descriptor_tmp_336;
    block[4] = this;
    IODispatchQueue::DispatchAsync(v10, block);
  }

  v11 = AppleBCMWLANBusInterfacePCIe::deviceCheckLPEM(this);
  v12 = v11;
  if ((a2 & 1) != 0 || !v11)
  {
    if (AppleBCMWLANBusInterface::getLogger(this))
    {
      AppleBCMWLANBusInterface::getLogger(this);
      if (CCLogStream::shouldLog())
      {
        Logger = AppleBCMWLANBusInterface::getLogger(this);
        CCLogStream::logAlert(Logger, "[dk] %s@%d:Trap Before flr with UpgradeToFullReset %d, wait[%u] checkLPEM[%u]\n", "halt", 6718, *(*(this + 9) + 4581), a2, v12);
      }
    }

    if ((*(*v5 + 4581) & 1) == 0)
    {
      if (AppleBCMWLANBusInterfacePCIe::trapDevice(this, 0xDEAD0002))
      {
        if (AppleBCMWLANBusInterface::getLogger(this))
        {
          AppleBCMWLANBusInterface::getLogger(this);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANBusInterfacePCIe::halt(this);
          }
        }
      }
    }
  }

  else
  {
    *(*(this + 9) + 5201) = 1;
    v13 = AppleBCMWLANBusInterfacePCIe::trapDevice(this, 0xDEAD0003);
    if (AppleBCMWLANBusInterface::getLogger(this))
    {
      AppleBCMWLANBusInterface::getLogger(this);
      if (CCLogStream::shouldLog())
      {
        v38 = AppleBCMWLANBusInterface::getLogger(this);
        CCLogStream::logAlert(v38, "[dk] %s@%d:Issuing LPEM Trap, retval[0x%08x] DB[0x%08x]\n", "halt", 6699, v13, -559087613);
      }
    }

    v14 = AppleBCMWLANBusInterface::getLogger(this);
    if (v13)
    {
      if (v14)
      {
        AppleBCMWLANBusInterface::getLogger(this);
        if (CCLogStream::shouldLog())
        {
          v39 = AppleBCMWLANBusInterface::getLogger(this);
          CCLogStream::logAlert(v39, "[dk] %s@%d:Failed to issue device trap, retval[0x%08x]\n", "halt", 6702, v13);
        }
      }

      *(*v5 + 5201) = 0;
    }

    else
    {
      if (v14)
      {
        AppleBCMWLANBusInterface::getLogger(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANBusInterfacePCIe::halt(this, this + 72);
        }
      }

      v15 = *v5;
      v16 = *(*v5 + 3312);
      if (v16 == 4387)
      {
        AppleBCMWLANChipBackplane::writePMUCoreReg32(*(v15 + 3360), 0x650u, 0xDu);
        AppleBCMWLANChipBackplane::readPMUCoreReg32(*(*v5 + 3360), 0x654u, &v41);
        v17 = *(*v5 + 3360);
        v18 = v41;
        v19 = 1092;
      }

      else
      {
        if (v16 != 4378)
        {
          goto LABEL_44;
        }

        AppleBCMWLANChipBackplane::writePMUCoreReg32(*(v15 + 3360), 0x650u, 0xDu);
        AppleBCMWLANChipBackplane::readPMUCoreReg32(*(*v5 + 3360), 0x654u, &v41);
        v17 = *(*v5 + 3360);
        v18 = v41;
        v19 = 307;
      }

      AppleBCMWLANChipBackplane::writePMUCoreReg32(v17, 0x654u, v18 | v19);
    }
  }

LABEL_44:
  *(*v5 + 1304) = 1;
  *(*v5 + 4584) = 0;
  AppleOLYHALPlatformFunction::setLowPowerDetectedDK(*(*v5 + 5184), 0, 0);
  v20 = *v5;
  if (*(*v5 + 1236))
  {
    if (AppleBCMWLANBusInterface::getLogger(this))
    {
      AppleBCMWLANBusInterface::getLogger(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANBusInterfacePCIe::halt(this);
      }
    }

    v43 = 1;
    (*(**(*v5 + 3472) + 56))(*(*v5 + 3472), AppleBCMWLANBusInterfacePCIe::signalDriverEventGated, &v43, 0, 0, 0);
    v20 = *v5;
  }

  if (*(v20 + 1240))
  {
    if (AppleBCMWLANBusInterface::getLogger(this))
    {
      AppleBCMWLANBusInterface::getLogger(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANBusInterfacePCIe::halt(this);
      }
    }

    v43 = 0;
    (*(**(*v5 + 3472) + 56))(*(*v5 + 3472), AppleBCMWLANBusInterfacePCIe::signalDriverEventGated, &v43, 0, 0, 0);
    mach_continuous_time();
    v21 = *v5;
    absolutetime_to_nanoseconds();
    v20 = *v5;
  }

  if (*(v20 + 2844) == 2)
  {
    if (AppleBCMWLANBusInterface::getLogger(this))
    {
      AppleBCMWLANBusInterface::getLogger(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANBusInterfacePCIe::halt(this);
      }
    }

    (*(**(*v5 + 3608) + 72))(*(*v5 + 3608));
    v20 = *v5;
  }

  if (*(v20 + 3248))
  {
    if (*(v20 + 2869) == 1)
    {
      if (*(v20 + 2844) != 2)
      {
        *(v20 + 1232) = 1;
        AppleOLYHALPortInterfacePCIe::setDeviceWakeDK(*(*v5 + 5192), 1, 0);
      }

      AppleBCMWLANBusInterfacePCIe::setDeviceInDeepSleep(this, 0);
      v20 = *(this + 9);
    }

    if (*(v20 + 4562) & 1) != 0 || (*(v20 + 3725))
    {
      *(v20 + 4563) = 1;
      if (AppleBCMWLANBusInterface::getLogger(this))
      {
        AppleBCMWLANBusInterface::getLogger(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANBusInterfacePCIe::halt(this);
        }
      }

      goto LABEL_69;
    }

    if (*(v20 + 4588) == 1)
    {
      AppleBCMWLANBusInterfacePCIe::modifyASPM(this, 2u);
      v20 = *(this + 9);
    }

    if ((*(v20 + 3880) & 1) == 0)
    {
      v33 = *(v20 + 5192);
      if (v33)
      {
        if (AppleOLYHALPortInterfacePCIe::isPortControlAMFMManagedDK(v33, 0))
        {
          if (AppleBCMWLANBusInterface::getLogger(this))
          {
            AppleBCMWLANBusInterface::getLogger(this);
            if (CCLogStream::shouldLog())
            {
              AppleBCMWLANBusInterfacePCIe::halt(this);
            }
          }

          goto LABEL_69;
        }

        v20 = *v5;
      }
    }

    v35 = *(v20 + 3280);
    if (v35 && AppleBCMWLANChipManagerPCIe::isBMEDisableSupported(v35))
    {
      AppleBCMWLANChipConfigSpace::modifyReg32(*(*v5 + 3352), 4u, 4, 0, 0);
      *(*v5 + 1307) = 0;
    }

    (*(*this + 1128))(this);
    v36 = IOPCIDevice::SaveDeviceState(*(*(this + 9) + 3248), 0, 0);
    if (v36)
    {
      v7 = v36;
      if (AppleBCMWLANBusInterface::getLogger(this))
      {
        AppleBCMWLANBusInterface::getLogger(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANBusInterfacePCIe::halt(this);
        }
      }

      return v7;
    }
  }

LABEL_69:
  if (*(*v5 + 3706) == 1 && AppleOLYHALPortInterfacePCIe::isPortControlAMFMManagedDK(*(*v5 + 5192), 0) && *(*v5 + 3352) && (*(*v5 + 3236) & 1) == 0)
  {
    if (AppleBCMWLANBusInterface::getLogger(this))
    {
      AppleBCMWLANBusInterface::getLogger(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANBusInterfacePCIe::halt(this);
      }
    }

    clock_interval_to_deadline();
    if ((*(**(*v5 + 3472) + 80))(*(*v5 + 3472), *v5 + 3706, v42) == -536870186)
    {
      AppleBCMWLANBusInterfacePCIe::halt(this);
    }

    if (AppleBCMWLANBusInterface::getLogger(this))
    {
      AppleBCMWLANBusInterface::getLogger(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANBusInterfacePCIe::halt(this);
      }
    }
  }

  v22 = *v5;
  if (*(*v5 + 5201) == 1)
  {
    v23 = AppleOLYHALPlatformFunction::flrHoldDK(*(v22 + 5184), 0);
    if (v23)
    {
      v7 = v23;
      if (AppleBCMWLANBusInterface::getLogger(this))
      {
        AppleBCMWLANBusInterface::getLogger(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANBusInterfacePCIe::halt();
        }
      }

      return v7;
    }

    v27 = *v5;
    if (*(*v5 + 4008) == 1)
    {
      AppleBCMWLANBusInterfacePCIe::modifyASPM(this, 2u);
      v27 = *(this + 9);
    }

    if (*(v27 + 5192))
    {
      v7 = AppleOLYHALPortInterfacePCIe::enableDK();
      if (!v7)
      {
LABEL_104:
        if ((a2 & 1) == 0)
        {
          *(*v5 + 5304) = 1;
        }

        RxDescriptor = AppleBCMWLANBusInterface::getRxDescriptor(this);
        if ((*(*RxDescriptor + 56))(RxDescriptor))
        {
          do
          {
            v29 = AppleBCMWLANBusInterface::getRxDescriptor(this);
            v30 = AppleBCMWLANObjectQueue::dequeue(v29);
            v31 = OSMetaClassBase::safeMetaCast(v30, gIO80211BufferMetaClass);
            if (v31)
            {
              IO80211Buffer::returnBuffer(v31);
            }

            else
            {
              AppleBCMWLANBusInterfacePCIe::halt(this);
            }

            v32 = AppleBCMWLANBusInterface::getRxDescriptor(this);
          }

          while ((*(*v32 + 56))(v32));
        }

        AppleBCMWLANBusInterfacePCIe::destroyFirmwareIPCTrackers(this);
        AppleBCMWLANBusInterfacePCIe::destroyFirmwarePCIeIPC(this);
        AppleBCMWLANBusInterfacePCIe::resetMRUFlowIdList(this);
        v34 = *(*(this + 9) + 2848);
        if (v34)
        {
          IOSleep(v34);
        }

        return v7;
      }
    }

    else
    {
      v7 = 3758097086;
    }

    if (AppleBCMWLANBusInterface::getLogger(this))
    {
      AppleBCMWLANBusInterface::getLogger(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANBusInterfacePCIe::halt(this);
      }
    }
  }

  else
  {
    if ((*(v22 + 3726) & 1) != 0 || (*(*v5 + 4562) & 1) != 0 || *(*v5 + 4581) == 1)
    {
      *(v22 + 3726) = 0;
      *(*v5 + 4581) = 0;
      v22 = *v5;
    }

    if (*(v22 + 5192))
    {
      v7 = AppleOLYHALPortInterfacePCIe::enableDK();
      if (!v7)
      {
        *(*v5 + 4564) = 0;
        if (*(*v5 + 3360))
        {
          v24 = (*v5 + 5308);
          v24[1] = 0u;
          v24[2] = 0u;
          *v24 = 0u;
          v25 = (*v5 + 5356);
          *v25 = 0u;
          v25[1] = 0u;
          AppleBCMWLANChipBackplane::setAPBAccessibilityState(*(*v5 + 3360), 0);
        }

        if (AppleBCMWLANBusInterface::getLogger(this))
        {
          AppleBCMWLANBusInterface::getLogger(this);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANBusInterfacePCIe::halt(this);
          }
        }

        v7 = AppleOLYHALPlatformFunction::setPowerEnableDK(*(*v5 + 5184), 0, 0);
        if (v7)
        {
          if (AppleBCMWLANBusInterface::getLogger(this))
          {
            AppleBCMWLANBusInterface::getLogger(this);
            if (CCLogStream::shouldLog())
            {
              v26 = AppleBCMWLANBusInterface::getLogger(this);
              CCLogStream::logAlert(v26, "[dk] %s@%d:Failed to toggle RegON -> OFF 0x%08x\n", "halt", 6862, v7);
            }
          }
        }

        goto LABEL_104;
      }
    }

    else
    {
      v7 = 3758097086;
    }

    if (AppleBCMWLANBusInterface::getLogger(this))
    {
      AppleBCMWLANBusInterface::getLogger(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANBusInterfacePCIe::halt(this);
      }
    }
  }

  return v7;
}

uint64_t AppleBCMWLANBusInterfacePCIe::deviceCheckLPEM(AppleBCMWLANBusInterfacePCIe *this)
{
  v2 = AppleOLYHALPlatformFunction::deviceCheckLPEMDK(*(*(this + 9) + 5184), 0);
  if (AppleBCMWLANBusInterface::getLogger(this))
  {
    AppleBCMWLANBusInterface::getLogger(this);
    if (CCLogStream::shouldLog())
    {
      Logger = AppleBCMWLANBusInterface::getLogger(this);
      CCLogStream::logAlert(Logger, "[dk] %s@%d:Checking LPEM status[%u]\n", "deviceCheckLPEM", 21321, v2);
    }
  }

  return v2;
}

uint64_t AppleBCMWLANBusInterfacePCIe::trapDevice(AppleBCMWLANBusInterfacePCIe *this, uint32_t a2)
{
  (*(*this + 1208))(this, "trapDevice", 19244);
  if (((*(*this + 208))(this) & 1) != 0 || (*(*(this + 9) + 1306) & 1) == 0)
  {
    if (AppleBCMWLANBusInterface::getLogger(this))
    {
      AppleBCMWLANBusInterface::getLogger(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANBusInterfacePCIe::trapDevice(this);
      }
    }

    return 0;
  }

  if (AppleBCMWLANBusInterface::getLogger(this))
  {
    AppleBCMWLANBusInterface::getLogger(this);
    if (CCLogStream::shouldLog())
    {
      Logger = AppleBCMWLANBusInterface::getLogger(this);
      CCLogStream::logAlert(Logger, "[dk] %s@%d:Issuing Chip Trap, trapType[0x%08x]\n", "trapDevice", 19252, a2);
    }
  }

  v4 = *(this + 9);
  v5 = *(v4 + 3360);
  if (!v5 || (*(v4 + 3725) & 1) != 0 || (*(v4 + 1304) & 1) != 0 || *(v4 + 3706) == 1 && (*(v4 + 3710) & 1) != 0 || *(v4 + 4809) == 1)
  {
    v6 = 3758097084;
    if (AppleBCMWLANBusInterface::getLogger(this))
    {
      AppleBCMWLANBusInterface::getLogger(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANBusInterfacePCIe::trapDevice(this);
      }
    }

    return v6;
  }

  if ((AppleBCMWLANChipBackplane::getPowerControlRegReadStatus(v5) & 1) == 0)
  {
    if (AppleBCMWLANBusInterface::getLogger(this))
    {
      AppleBCMWLANBusInterface::getLogger(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANBusInterfacePCIe::trapDevice(this);
      }
    }

    v6 = 3758097084;
    if (*(*(this + 9) + 4564) == 1)
    {
      if (AppleBCMWLANBusInterface::getLogger(this))
      {
        AppleBCMWLANBusInterface::getLogger(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANBusInterfacePCIe::trapDevice(this);
        }
      }
    }

    return v6;
  }

  v8 = *(this + 9);
  v9 = *(v8 + 3280);
  if (v9)
  {
    isTrapBeforeFLRSupported = AppleBCMWLANChipManagerPCIe::isTrapBeforeFLRSupported(v9);
    v8 = *(this + 9);
    if (!isTrapBeforeFLRSupported && (*(v8 + 4560) & 1) == 0 && (*(v8 + 3718) & 1) == 0)
    {
      AppleBCMWLANBusInterfacePCIe::writeH2DMailbox(this, 0x20000000);
      *(*(this + 9) + 4529) = 1;
      v13 = -500;
      while (((*(*this + 208))(this) & 1) == 0)
      {
        IOSleep(0xAuLL);
        v13 += 10;
        if (!v13)
        {
          if (AppleBCMWLANBusInterface::getLogger(this))
          {
            AppleBCMWLANBusInterface::getLogger(this);
            if (CCLogStream::shouldLog())
            {
              AppleBCMWLANBusInterfacePCIe::trapDevice(this);
            }
          }

          goto LABEL_46;
        }
      }

      return 0;
    }
  }

  v11 = *(v8 + 3280);
  if (!v11 || !AppleBCMWLANChipManagerPCIe::isTrapBeforeFLRSupported(v11) || (v12 = *(this + 9), *(v12 + 4531) != 1) || (*(v12 + 3718) & 1) != 0 || (*(v12 + 4560) & 1) != 0)
  {
    v6 = 3758097084;
    if (AppleBCMWLANBusInterface::getLogger(this))
    {
      AppleBCMWLANBusInterface::getLogger(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANBusInterfacePCIe::trapDevice(this);
      }
    }

    return v6;
  }

  if (AppleBCMWLANChipBackplane::getAPBAccessibilityState(*(v12 + 3360)) == 1)
  {
    v6 = 3758097084;
    if (AppleBCMWLANBusInterface::getLogger(this))
    {
      AppleBCMWLANBusInterface::getLogger(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANBusInterfacePCIe::trapDevice(this);
      }
    }

    return v6;
  }

  AppleBCMWLANChipBackplane::forcePower(*(*(this + 9) + 3360), 1, 0);
  v14 = *(*(this + 9) + 3360);
  if (!a2)
  {
    AppleBCMWLANChipBackplane::writePCIeCoreReg32(v14, 0xA5Cu, 0);
    goto LABEL_55;
  }

  AppleBCMWLANChipBackplane::writePCIeCoreReg32(v14, 0x174u, a2);
  if (a2 != -559087613)
  {
LABEL_55:
    AppleBCMWLANChipBackplane::forcePower(*(*(this + 9) + 3360), 0, 0);
    v15 = 0;
    goto LABEL_56;
  }

  v15 = 1;
LABEL_56:
  *(*(this + 9) + 4529) = 1;
  v17 = -500;
  do
  {
    v18 = (*(*this + 208))(this);
    v19 = *(this + 9);
    if ((v18 & 1) != 0 || (v20 = *(v19 + 2832)) != 0 && (*v20 & 0x80000000) != 0)
    {
      IOPCIDevice::ConfigurationWrite32(*(v19 + 3248), 0x98uLL, 0);
      return 0;
    }

    IOSleep(0xAuLL);
    v17 += 10;
  }

  while (v17);
  v21 = AppleBCMWLANBusInterface::getLogger(this);
  if (v15)
  {
    if (v21)
    {
      AppleBCMWLANBusInterface::getLogger(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANBusInterfacePCIe::trapDevice(this);
      }
    }

    AppleBCMWLANChipBackplane::forcePower(*(*(this + 9) + 3360), 0, 0);
  }

  else
  {
    if (v21)
    {
      AppleBCMWLANBusInterface::getLogger(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANBusInterfacePCIe::trapDevice(this);
      }
    }

    *(*(this + 9) + 4581) = 1;
  }

LABEL_46:
  *(*(this + 9) + 4529) = 0;
  return 3758097110;
}

AppleBCMWLANBusInterface *AppleBCMWLANBusInterfacePCIe::setDeviceInDeepSleep(AppleBCMWLANBusInterface *this, int a2)
{
  v3 = this;
  v4 = *(this + 9);
  if (*(v4 + 2869) == a2)
  {
    this = AppleBCMWLANBusInterface::getLogger(this);
    if (this)
    {
      AppleBCMWLANBusInterface::getLogger(v3);
      this = CCLogStream::shouldLog();
      if (this)
      {
        Logger = AppleBCMWLANBusInterface::getLogger(v3);
        return CCLogStream::logAlert(Logger, "[dk] %s@%d:redundant port deep sleep operation: %u\n", "setDeviceInDeepSleep", 15731, a2);
      }
    }
  }

  else
  {
    *(v4 + 2869) = a2;
    v6 = *(this + 9);
    if (*(v6 + 3720) == 1)
    {
      v7 = *(v6 + 5192);

      return AppleOLYHALPortInterfacePCIe::setDeviceInDeepSleepDK(v7, a2, 0);
    }
  }

  return this;
}

uint64_t AppleBCMWLANBusInterfacePCIe::resetMRUFlowIdList(AppleBCMWLANBusInterfacePCIe *this)
{
  v2 = *(this + 9);
  v3 = *(v2 + 376);
  v4 = *(v2 + 372);
  if (v3 > v4)
  {
    do
    {
      v5 = v4;
      if (*(*(this + 9) + 4 * v4 + 1866))
      {
        AppleBCMWLANBusInterfacePCIe::invalidateFlowId(this, v4);
        *(*(this + 9) + 4 * v5 + 1866) &= ~1u;
      }

      LOWORD(v4) = v5 + 1;
    }

    while (v3 > (v5 + 1));
  }

  return AppleBCMWLANBusInterfacePCIe::initMRUFlowIdList(this);
}

uint64_t AppleBCMWLANBusInterfacePCIe::reset(OSObject *this)
{
  p_ivars = &this[1].ivars;
  v3 = *(this[1].ivars + 406);
  if (AppleBCMWLANBusInterface::getLogger(this))
  {
    AppleBCMWLANBusInterface::getLogger(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANBusInterfacePCIe::reset(this, p_ivars);
    }
  }

  ivars = p_ivars->ivars;
  if (*(p_ivars->ivars + 3704) == 1)
  {
    if (AppleBCMWLANBusInterface::getLogger(this))
    {
      AppleBCMWLANBusInterface::getLogger(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANBusInterfacePCIe::reset(this);
      }
    }

    return 0;
  }

  if (*(ivars + 1304))
  {
    v6 = ivars + 4096;
    if (*(v6 + 466) == 1 && (*(v6 + 467) & 1) == 0)
    {
      if (AppleBCMWLANBusInterface::getLogger(this))
      {
        AppleBCMWLANBusInterface::getLogger(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANBusInterfacePCIe::reset(this);
        }
      }

      AppleBCMWLANBusInterfacePCIe::nanoPowerCycleGated(this);
    }
  }

  else if ((this->OSMetaClassBase::__vftable[17].isEqualTo)(this, 1))
  {
    v5 = 3758097097;
    if (AppleBCMWLANBusInterface::getLogger(this))
    {
      AppleBCMWLANBusInterface::getLogger(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANBusInterfacePCIe::reset(this);
      }
    }

    return v5;
  }

  *(p_ivars->ivars + 4563) = 0;
  v7 = p_ivars->ivars;
  if (*(p_ivars->ivars + 3725) == 1 && (*(v7 + 4562) & 1) == 0)
  {
    v5 = 3758097097;
    if (AppleBCMWLANBusInterface::getLogger(this))
    {
      AppleBCMWLANBusInterface::getLogger(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANBusInterfacePCIe::reset(this);
      }
    }
  }

  else
  {
    *(v7 + 1305) = 0;
    if (AppleBCMWLANBusInterface::getLogger(this))
    {
      AppleBCMWLANBusInterface::getLogger(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANBusInterfacePCIe::reset(this);
      }
    }

    v8 = AppleOLYHALPlatformFunction::setPowerEnableDK(*(p_ivars->ivars + 648), 1, 0);
    if (v8)
    {
      v9 = v8;
      if (AppleBCMWLANBusInterface::getLogger(this))
      {
        AppleBCMWLANBusInterface::getLogger(this);
        if (CCLogStream::shouldLog())
        {
          Logger = AppleBCMWLANBusInterface::getLogger(this);
          CCLogStream::logAlert(Logger, "[dk] %s@%d:Failed to toggle RegON -> ON 0x%08x\n", "reset", 6938, v9);
        }
      }
    }

    v10 = p_ivars->ivars;
    v11 = *(p_ivars->ivars + 1160);
    if (v11)
    {
      IOSleep(v11);
      v10 = p_ivars->ivars;
    }

    if (*(v10 + 3725) == 1 && (*(v10 + 4562) & 1) == 0)
    {
      if (AppleBCMWLANBusInterface::getLogger(this))
      {
        AppleBCMWLANBusInterface::getLogger(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANBusInterfacePCIe::reset(this);
        }
      }

      v5 = 3758097097;
      v21 = p_ivars->ivars;
      goto LABEL_84;
    }

    if (AppleBCMWLANBusInterface::getLogger(this))
    {
      AppleBCMWLANBusInterface::getLogger(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANBusInterfacePCIe::reset(this);
      }
    }

    v12 = *(p_ivars->ivars + 649);
    v13 = AppleOLYHALPortInterfacePCIe::enableDK();
    v5 = v13;
    if (*(p_ivars->ivars + 3129) == 1 && v13)
    {
      if (AppleOLYHALPortInterfacePCIe::isPortControlAMFMManagedDK(*(p_ivars->ivars + 649), 0))
      {
        goto LABEL_58;
      }

      if (AppleBCMWLANBusInterface::getLogger(this))
      {
        AppleBCMWLANBusInterface::getLogger(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANBusInterfacePCIe::reset(this);
        }
      }

      v14 = AppleOLYHALPlatformFunction::setPowerEnableDK(*(p_ivars->ivars + 648), 0, 0);
      if (v14)
      {
        v15 = v14;
        if (AppleBCMWLANBusInterface::getLogger(this))
        {
          AppleBCMWLANBusInterface::getLogger(this);
          if (CCLogStream::shouldLog())
          {
            v36 = AppleBCMWLANBusInterface::getLogger(this);
            CCLogStream::logAlert(v36, "[dk] %s@%d:Failed to toggle RegON -> OFF 0x%08x\n", "reset", 6974, v15);
          }
        }
      }

      IOSleep(*(this[1].ivars + 712));
      if (AppleBCMWLANBusInterface::getLogger(this))
      {
        AppleBCMWLANBusInterface::getLogger(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANBusInterfacePCIe::reset(this);
        }
      }

      v16 = AppleOLYHALPlatformFunction::setPowerEnableDK(*(p_ivars->ivars + 648), 1, 0);
      if (v16)
      {
        v17 = v16;
        if (AppleBCMWLANBusInterface::getLogger(this))
        {
          AppleBCMWLANBusInterface::getLogger(this);
          if (CCLogStream::shouldLog())
          {
            v37 = AppleBCMWLANBusInterface::getLogger(this);
            CCLogStream::logAlert(v37, "[dk] %s@%d:Failed to toggle RegON -> ON 0x%08x\n", "reset", 6982, v17);
          }
        }
      }

      IOSleep(*(this[1].ivars + 1160));
      if (AppleBCMWLANBusInterface::getLogger(this))
      {
        AppleBCMWLANBusInterface::getLogger(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANBusInterfacePCIe::reset(this);
        }
      }

      v18 = *(p_ivars->ivars + 649);
      v5 = AppleOLYHALPortInterfacePCIe::enableDK();
    }

    if (v5)
    {
LABEL_58:
      if (AppleBCMWLANBusInterface::getLogger(this))
      {
        AppleBCMWLANBusInterface::getLogger(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANBusInterfacePCIe::reset();
        }
      }

      v19 = AppleOLYHALPlatformFunction::setPowerEnableDK(*(p_ivars->ivars + 648), 0, 0);
      if (v19)
      {
        v20 = v19;
        if (AppleBCMWLANBusInterface::getLogger(this))
        {
          AppleBCMWLANBusInterface::getLogger(this);
          if (CCLogStream::shouldLog())
          {
            v35 = AppleBCMWLANBusInterface::getLogger(this);
            CCLogStream::logAlert(v35, "[dk] %s@%d:Failed to toggle RegON -> OFF 0x%08x\n", "reset", 6996, v20);
          }
        }
      }

      *(this[1].ivars + 3704) = 1;
      AppleBCMWLANBusInterfacePCIe::destroyFirmwareIPCTrackers(this);
      AppleBCMWLANBusInterfacePCIe::destroyFirmwarePCIeIPC(this);
      (*(**(this[1].ivars + 434) + 56))(*(this[1].ivars + 434), AppleBCMWLANBusInterfacePCIe::detachPCIeBusGated, *(this[1].ivars + 406), 1, 0, 0);
      return v5;
    }

    v21 = p_ivars->ivars;
    if (*(p_ivars->ivars + 4624) == 1)
    {
      v22 = *(v21 + 712);
      clock_interval_to_deadline();
      (*(**(p_ivars->ivars + 434) + 80))(*(p_ivars->ivars + 434), p_ivars->ivars + 1304, 0xAAAAAAAAAAAAAAAALL);
      *(p_ivars->ivars + 4624) = 0;
      v21 = p_ivars->ivars;
    }

    if (*(v21 + 4560) == 1)
    {
      (*(**(v21 + 434) + 80))(*(v21 + 434), v21 + 4560, 0);
      v21 = p_ivars->ivars;
    }

    v23 = *(v21 + 406);
    if (!v23)
    {
      v5 = 3758097097;
      goto LABEL_84;
    }

    if (*(v21 + 1304) == 1 && *(v21 + 3880) == 1)
    {
      if (*(v21 + 3881) == 1)
      {
        v24 = IOPCIDevice::SaveDeviceState(v23, 0, 0);
        *(p_ivars->ivars + 3881) = 0;
        v21 = p_ivars->ivars;
        if (v24)
        {
          v5 = v24;
LABEL_84:
          *(v21 + 1304) = 0;
          return v5;
        }
      }

      if (*(v21 + 4562) & 1) != 0 || (*(v21 + 4584))
      {
        if (AppleBCMWLANBusInterface::getLogger(this))
        {
          AppleBCMWLANBusInterface::getLogger(this);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANBusInterfacePCIe::reset(this);
          }
        }

        *(p_ivars->ivars + 4562) = 0;
      }

      else
      {
        IOPCIDevice::RestoreDeviceState(*(v21 + 406), 0, 0);
      }
    }

    *(p_ivars->ivars + 4584) = 0;
    if (v3 != *(p_ivars->ivars + 406))
    {
      goto LABEL_94;
    }

    if (AppleBCMWLANBusInterface::getLogger(this))
    {
      AppleBCMWLANBusInterface::getLogger(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANBusInterfacePCIe::reset(this);
      }
    }

    (*(**(p_ivars->ivars + 434) + 56))(*(p_ivars->ivars + 434), AppleBCMWLANBusInterfacePCIe::detachPCIeBusGated, *(p_ivars->ivars + 406), 0, 0, 0);
    v27 = (*(**(p_ivars->ivars + 434) + 56))(*(p_ivars->ivars + 434), AppleBCMWLANBusInterfacePCIe::attachPCIeBusGated, v3, 0, 0, 0);
    if (v27)
    {
      v28 = v27;
      if (AppleBCMWLANBusInterface::getLogger(this))
      {
        AppleBCMWLANBusInterface::getLogger(this);
        if (CCLogStream::shouldLog())
        {
          v38 = AppleBCMWLANBusInterface::getLogger(this);
          CCLogStream::logAlert(v38, "[dk] %s@%d:attach failed. attachStatus = 0x%x\n", "reset", 7064, v28);
        }
      }

      v29 = p_ivars->ivars;
      if (*(p_ivars->ivars + 406) && *(v29 + 4588) == 1)
      {
        AppleBCMWLANBusInterfacePCIe::modifyASPM(this, 3u);
        v29 = this[1].ivars;
      }

      (*(**(v29 + 434) + 56))(*(v29 + 434), AppleBCMWLANBusInterfacePCIe::detachPCIeBusGated, v3, 1, 0, 0);
      if (v3)
      {
        v30 = p_ivars->ivars;
        if (v28 != -536870208 || (*(v30 + 3706) & 1) == 0)
        {
          *(v30 + 406) = v3;
          (*(**(p_ivars->ivars + 406) + 8))(*(p_ivars->ivars + 406));
        }
      }

      v26 = 0;
    }

    else
    {
LABEL_94:
      v26 = 1;
    }

    *(p_ivars->ivars + 1304) = 0;
    *(p_ivars->ivars + 4529) = 0;
    if (*(p_ivars->ivars + 5200) == 1)
    {
      if (AppleBCMWLANBusInterface::getLogger(this))
      {
        AppleBCMWLANBusInterface::getLogger(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANBusInterfacePCIe::reset(this);
        }
      }

      (this->OSMetaClassBase::__vftable[17].isEqualTo)(this, 0);
      (*(**(this[1].ivars + 434) + 56))(*(this[1].ivars + 434), AppleBCMWLANBusInterfacePCIe::detachPCIeBusGated, *(this[1].ivars + 406), 1, 0, 0);
      v31 = this[1].ivars;
      v32 = *(v31 + 648);
      if (v32)
      {
        (*(*v32 + 16))(v32);
        *(p_ivars->ivars + 648) = 0;
        v31 = p_ivars->ivars;
      }

      v33 = *(v31 + 649);
      if (v33)
      {
        (*(*v33 + 16))(v33);
        v5 = 0;
        *(p_ivars->ivars + 649) = 0;
        return v5;
      }

      return 0;
    }

    if ((v26 & (*(p_ivars->ivars + 406) != 0)) != 0)
    {
      return 0;
    }

    else
    {
      return 3758097097;
    }
  }

  return v5;
}

AppleBCMWLANChipManagerPCIe *AppleBCMWLANBusInterfacePCIe::allocChipImage(AppleBCMWLANBusInterfacePCIe *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  result = *(*(this + 9) + 3280);
  if (result)
  {
    v15 = a3 + 16;
    RAMSize = AppleBCMWLANChipManagerPCIe::getRAMSize(result);
    if (AppleBCMWLANBusInterface::getLogger(this))
    {
      AppleBCMWLANBusInterface::getLogger(this);
      if (CCLogStream::shouldLog())
      {
        Logger = AppleBCMWLANBusInterface::getLogger(this);
        CCLogStream::logNoticeIf(Logger, 0x80uLL, "[dk] %s@%d: fw size %lu, nv size %lu, adjust nv size %lu, signature size %lu platcfg size %lu\n", "allocChipImage", 7217, a2, a3, v15, a6, a7);
      }
    }

    v22[0] = 0;
    v22[1] = a2;
    v23 = (a2 + 127) & 0xFFFFFFFFFFFFFF80;
    v24 = 1024;
    v25 = v23 + 1024;
    v26 = v15;
    v17 = v23 + 1024 + v15;
    if ((v15 & 0x7F) != 0)
    {
      v17 = (v17 & 0xFFFFFFFFFFFFFF80) + 128;
    }

    v27 = v17;
    v28 = a6;
    v31 = v17 + a6;
    v32 = a4;
    v33 = v17 + a6 + a4;
    v34 = a5;
    v18 = v33 + a5;
    v29 = v18;
    v30 = a7;
    if (v17 + a6 <= RAMSize)
    {
      v19 = AppleBCMWLANBusInterface::getLogger(this);
      return AppleBCMWLANChipImage::withRange(v18 + a7, v22, v19, 128);
    }

    else
    {
      result = AppleBCMWLANBusInterface::getLogger(this);
      if (result)
      {
        AppleBCMWLANBusInterface::getLogger(this);
        if (CCLogStream::shouldLog())
        {
          v21 = AppleBCMWLANBusInterface::getLogger(this);
          CCLogStream::logAlert(v21, "[dk] %s@%d: Image too large: fw size %llu, adjust nv size %llu, signature size %llu, maxImageSize %llu\n", "allocChipImage", 7246, a2, v15, a6, RAMSize);
        }

        return 0;
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANBusInterfacePCIe::dumpRegistersFWDebug(AppleBCMWLANBusInterfacePCIe *this)
{
  v2 = IOMallocZeroData();
  if (v2)
  {
    v3 = v2;
    if (AppleBCMWLANBusInterfacePCIe::isBusAccessible(this, 1) && (AppleBCMWLANBusInterfacePCIe::isAPBAccessible(this, 1, 0) & 1) != 0)
    {
      v4 = (*(**(*(this + 9) + 3280) + 160))(*(*(this + 9) + 3280));
      v5 = (*(**(*(this + 9) + 3280) + 168))(*(*(this + 9) + 3280));
      if (!AppleBCMWLANChipBackplane::dumpARMCoreEnumerationRegistersFWDebug(*(*(this + 9) + 3360), v3, 0x4000uLL, v4, v5))
      {
        *(v3 + 0x3FFF) = 0;
        if (AppleBCMWLANBusInterface::getLogger(this))
        {
          AppleBCMWLANBusInterface::getLogger(this);
          if (CCLogStream::shouldLog())
          {
            Logger = AppleBCMWLANBusInterface::getLogger(this);
            CCLogStream::logAlert(Logger, "[dk] %s@%d:%s", "dumpRegistersFWDebug", 7356, v3);
          }
        }
      }

      v6 = (*(**(*(this + 9) + 3280) + 176))(*(*(this + 9) + 3280));
      v7 = (*(**(*(this + 9) + 3280) + 184))(*(*(this + 9) + 3280));
      if (!AppleBCMWLANChipBackplane::dumpCommonCoreEnumerationRegistersFWDebug(*(*(this + 9) + 3360), v3, 0x4000uLL, v6, v7))
      {
        *(v3 + 0x3FFF) = 0;
        if (AppleBCMWLANBusInterface::getLogger(this))
        {
          AppleBCMWLANBusInterface::getLogger(this);
          if (CCLogStream::shouldLog())
          {
            v15 = AppleBCMWLANBusInterface::getLogger(this);
            CCLogStream::logAlert(v15, "[dk] %s@%d:%s", "dumpRegistersFWDebug", 7364, v3);
          }
        }
      }

      v8 = (*(**(*(this + 9) + 3280) + 192))(*(*(this + 9) + 3280));
      v9 = (*(**(*(this + 9) + 3280) + 200))(*(*(this + 9) + 3280));
      if (!AppleBCMWLANChipBackplane::dumpPMUCoreEnumerationRegistersFWDebug(*(*(this + 9) + 3360), v3, 0x4000uLL, v8, v9))
      {
        *(v3 + 0x3FFF) = 0;
        if (AppleBCMWLANBusInterface::getLogger(this))
        {
          AppleBCMWLANBusInterface::getLogger(this);
          if (CCLogStream::shouldLog())
          {
            v16 = AppleBCMWLANBusInterface::getLogger(this);
            CCLogStream::logAlert(v16, "[dk] %s@%d:%s", "dumpRegistersFWDebug", 7372, v3);
          }
        }
      }

      v10 = (*(**(*(this + 9) + 3280) + 208))(*(*(this + 9) + 3280));
      v11 = (*(**(*(this + 9) + 3280) + 216))(*(*(this + 9) + 3280));
      v12 = AppleBCMWLANChipBackplane::dumpPCIEFunc0CoreEnumerationRegistersFWDebug(*(*(this + 9) + 3360), v3, 0x4000uLL, v10, v11);
      if (!v12)
      {
        *(v3 + 0x3FFF) = 0;
        if (AppleBCMWLANBusInterface::getLogger(this))
        {
          AppleBCMWLANBusInterface::getLogger(this);
          if (CCLogStream::shouldLog())
          {
            v17 = AppleBCMWLANBusInterface::getLogger(this);
            CCLogStream::logAlert(v17, "[dk] %s@%d:%s", "dumpRegistersFWDebug", 7380, v3);
          }
        }

        v12 = 0;
      }
    }

    else
    {
      v12 = 3758097097;
      if (AppleBCMWLANBusInterface::getLogger(this))
      {
        AppleBCMWLANBusInterface::getLogger(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANBusInterfacePCIe::dumpRegistersFWDebug(this);
          v12 = 3758097097;
        }
      }
    }

    IOFreeData();
  }

  else
  {
    v12 = 3758097085;
    if (AppleBCMWLANBusInterface::getLogger(this))
    {
      AppleBCMWLANBusInterface::getLogger(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANBusInterfacePCIe::dumpRegistersFWDebug(this);
      }
    }
  }

  return v12;
}

uint64_t AppleBCMWLANBusInterfacePCIe::isBusAccessible(AppleBCMWLANBusInterfacePCIe *this, int a2)
{
  (*(*this + 1208))(this, "isBusAccessible", 16972);
  v4 = *(this + 9);
  if ((*(v4 + 1304) & 1) != 0 || (v5 = *(v4 + 3248)) == 0 || (*(v4 + 4496) & 1) == 0)
  {
LABEL_4:
    v6 = 0;
    return v6 & 1;
  }

  v8 = *(v4 + 3725);
  v6 = v8 ^ 1;
  if (a2 && (v8 & 1) == 0)
  {
    readData = -21846;
    IOPCIDevice::ConfigurationRead16(v5, 2uLL, &readData);
    if (chipNumberFromDeviceID(readData))
    {
      v6 = 1;
      return v6 & 1;
    }

    if (AppleBCMWLANBusInterface::getLogger(this))
    {
      AppleBCMWLANBusInterface::getLogger(this);
      if (CCLogStream::shouldLog())
      {
        Logger = AppleBCMWLANBusInterface::getLogger(this);
        CCLogStream::logAlert(Logger, "[dk] %s@%d:Unexpected device ID (0x%x) \n", "isBusAccessible", 16988, readData);
      }
    }

    goto LABEL_4;
  }

  return v6 & 1;
}

uint64_t AppleBCMWLANBusInterfacePCIe::loadChipImage(AppleBCMWLANBusInterfacePCIe *this, const AppleBCMWLANChipImage *a2)
{
  v47 = 0;
  (*(*this + 1208))(this, "loadChipImage", 7391);
  if (AppleBCMWLANBusInterface::getLogger(this))
  {
    AppleBCMWLANBusInterface::getLogger(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANBusInterfacePCIe::loadChipImage(this);
    }
  }

  AppleBCMWLANBusInterfacePCIe::disableRingEventSources(this);
  v5 = this + 72;
  if (*(*(this + 9) + 3725) == 1)
  {
    if (AppleBCMWLANBusInterface::getLogger(this))
    {
      AppleBCMWLANBusInterface::getLogger(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANBusInterfacePCIe::loadChipImage(this);
      }
    }
  }

  AppleBCMWLANBusInterfacePCIe::changeDeepSleepStateSetClear(this, v4, 1, 255);
  *(*(this + 9) + 3726) = 1;
  v6 = (*(*this + 960))(this);
  if (v6)
  {
    v7 = v6;
    if (AppleBCMWLANBusInterface::getLogger(this))
    {
      AppleBCMWLANBusInterface::getLogger(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANBusInterfacePCIe::loadChipImage(this);
      }
    }

    return v7;
  }

  v8 = *v5;
  if (!*(*v5 + 3360))
  {
    v7 = 3758097097;
    if (AppleBCMWLANBusInterface::getLogger(this))
    {
      AppleBCMWLANBusInterface::getLogger(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANBusInterfacePCIe::loadChipImage(this);
      }
    }

    return v7;
  }

  if ((*(v8 + 1304) & 1) != 0 || !*(v8 + 3248))
  {
    if (AppleBCMWLANBusInterface::getLogger(this))
    {
      AppleBCMWLANBusInterface::getLogger(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANBusInterfacePCIe::loadChipImage(this);
      }
    }

    v7 = 3758097097;
    (*(*this + 1016))(this);
    return v7;
  }

  if (AppleBCMWLANBusInterface::getLogger(this))
  {
    AppleBCMWLANBusInterface::getLogger(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANBusInterfacePCIe::loadChipImage(this);
    }
  }

  AppleBCMWLANChipBackplane::forcePower(*(*(this + 9) + 3360), 1, 0);
  v9 = AppleBCMWLANBusInterfacePCIe::prepareHardware(this);
  v10 = *(this + 9);
  if (v9)
  {
    v7 = v9;
LABEL_20:
    AppleBCMWLANChipBackplane::forcePower(*(v10 + 3360), 0, 0);
    v11 = *v5;
    goto LABEL_21;
  }

  AppleBCMWLANChipConfigSpace::writeReg32(*(v10 + 3352), 0x110u, 0x31C1u);
  v13 = *v5;
  if (*(*v5 + 3312) != 4399)
  {
    v46 = 0;
    v15 = AppleBCMWLANChipBackplane::readARMMasterWrapperReg32(*(v13 + 3360), 0x800u, &v46);
    if (v15)
    {
      v7 = v15;
      goto LABEL_37;
    }

    if ((v46 & 1) == 0)
    {
      v17 = AppleBCMWLANChipBackplane::waitARMMasterWrapperReg32(*(*v5 + 3360), 0x804u, 0, -1, 1000);
      if (v17)
      {
        v7 = v17;
        if (AppleBCMWLANBusInterface::getLogger(this))
        {
          AppleBCMWLANBusInterface::getLogger(this);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANBusInterfacePCIe::loadChipImage(this);
          }
        }

LABEL_37:
        AppleBCMWLANChipBackplane::forcePower(*(*v5 + 3360), 0, 0);
        if ((*(*v5 + 4588) & 1) == 0)
        {
          return v7;
        }

        goto LABEL_22;
      }

      AppleBCMWLANChipBackplane::writeARMMasterWrapperReg32(*(*v5 + 3360), 0x800u, 1u);
      v24 = AppleBCMWLANChipBackplane::waitARMMasterWrapperReg32(*(*v5 + 3360), 0x804u, 0, 1, 1000);
      if (v24)
      {
        v7 = v24;
        if (AppleBCMWLANBusInterface::getLogger(this))
        {
          AppleBCMWLANBusInterface::getLogger(this);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANBusInterfacePCIe::loadChipImage(this);
          }
        }

        goto LABEL_34;
      }
    }

    AppleBCMWLANChipBackplane::writeARMMasterWrapperReg32(*(*v5 + 3360), 0x408u, 0x23u);
    AppleBCMWLANChipBackplane::writeARMMasterWrapperReg32(*(*v5 + 3360), 0x800u, 0);
    AppleBCMWLANChipBackplane::writeARMMasterWrapperReg32(*(*v5 + 3360), 0x408u, 0x21u);
    AppleBCMWLANChipBackplane::sysmemReset(*(*v5 + 3360), 1u);
    AppleBCMWLANChipBackplane::sysmemReset(*(*v5 + 3360), 0);
    v13 = *v5;
  }

  v14 = (*(*a2 + 152))(a2, this, AppleBCMWLANBusInterfacePCIe::loadImage, *(v13 + 3368));
  if (v14)
  {
    v7 = v14;
LABEL_34:
    v10 = *v5;
    goto LABEL_20;
  }

  if (IOParseBootArgNumber("wlan.debug.dump-socram.load", &v47, 4) && v47)
  {
    if (AppleBCMWLANBusInterface::getLogger(this))
    {
      AppleBCMWLANBusInterface::getLogger(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANBusInterfacePCIe::loadChipImage(this);
      }
    }

    AppleBCMWLANBusInterfacePCIe::dumpSocRAMToRegistry(this, "load");
  }

  if (*(*v5 + 3312) == 4399)
  {
    if (AppleBCMWLANBusInterface::getLogger(this))
    {
      AppleBCMWLANBusInterface::getLogger(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANBusInterfacePCIe::loadChipImage(this);
      }
    }

    if (AppleBCMWLANChipConfigSpace::modifyReg32(*(*v5 + 3352), 4u, 0, 4, 0))
    {
      if (AppleBCMWLANBusInterface::getLogger(this))
      {
        AppleBCMWLANBusInterface::getLogger(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANBusInterfacePCIe::loadChipImage(this);
        }
      }

      v16 = *v5;
LABEL_54:
      AppleBCMWLANChipBackplane::forcePower(*(v16 + 3360), 0, 0);
      return 1;
    }

    *(*v5 + 1307) = 1;
  }

  AppleBCMWLANBusInterfacePCIe::retainCTS(this, 7554, 0);
  isBootMSISupported = AppleBCMWLANChipManagerPCIe::isBootMSISupported(*(*(this + 9) + 3280));
  v19 = *(this + 9);
  if (isBootMSISupported && (*(v19 + 3709) & 1) == 0)
  {
    v20 = AppleBCMWLANBusInterfacePCIe::setupBootMSI(this);
    v21 = *(this + 9);
    if (v20)
    {
      v7 = v20;
      AppleBCMWLANChipBackplane::forcePower(*(v21 + 3360), 0, 0);
      v22 = this;
      v23 = 7560;
LABEL_127:
      AppleBCMWLANBusInterfacePCIe::releaseCTS(v22, v23);
      v11 = *(this + 9);
LABEL_21:
      if (*(v11 + 4588) != 1)
      {
        return v7;
      }

LABEL_22:
      AppleBCMWLANBusInterfacePCIe::modifyASPM(this, 3u);
      return v7;
    }

    *(v21 + 4809) = 1;
    v25 = *(*(this + 9) + 3496);
    block[0] = _NSConcreteStackBlock;
    block[1] = 0x40000000;
    block[2] = ___ZN28AppleBCMWLANBusInterfacePCIe13loadChipImageEPK21AppleBCMWLANChipImage_block_invoke;
    block[3] = &__block_descriptor_tmp_389;
    block[4] = this;
    IODispatchQueue::DispatchAsync(v25, block);
    v19 = *(this + 9);
  }

  v26 = *(v19 + 3360);
  if (*(v19 + 3312) == 4399)
  {
    AppleBCMWLANChipBackplane::writeOOBRouterWrapperReg32(v26, 0x248u, 3u);
    AppleBCMWLANChipBackplane::writeOOBRouterWrapperReg32(*(*v5 + 3360), 0x248u, 1u);
  }

  else
  {
    AppleBCMWLANChipBackplane::writeARMMasterWrapperReg32(v26, 0x408u, 3u);
    AppleBCMWLANChipBackplane::writeARMMasterWrapperReg32(*(*v5 + 3360), 0x800u, 0);
    AppleBCMWLANChipBackplane::writeARMMasterWrapperReg32(*(*v5 + 3360), 0x408u, 1u);
  }

  __dmb(0xBu);
  v46 = -1;
  v27 = AppleBCMWLANChipMemory::unwrapRAMOffset(*(*v5 + 3368), 4294967292);
  *(*v5 + 3736) = v27;
  if (AppleBCMWLANChipManagerPCIe::isBootMSISupported(*(*v5 + 3280)) && (*(*v5 + 3709) & 1) == 0)
  {
    v28 = *(*v5 + 3488);
    v44[0] = _NSConcreteStackBlock;
    v44[1] = 0x40000000;
    v44[2] = ___ZN28AppleBCMWLANBusInterfacePCIe13loadChipImageEPK21AppleBCMWLANChipImage_block_invoke_2;
    v44[3] = &__block_descriptor_tmp_391;
    v44[4] = this;
    (*(*v28 + 72))(v28, v44);
    if (AppleBCMWLANBusInterface::getLogger(this))
    {
      AppleBCMWLANBusInterface::getLogger(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANBusInterfacePCIe::loadChipImage(this, this + 72);
      }
    }

    AppleBCMWLANChipMemory::readRAM32(*(*(this + 9) + 3368), v27, &v46);
    if (AppleBCMWLANBusInterface::getLogger(this))
    {
      AppleBCMWLANBusInterface::getLogger(this);
      if (CCLogStream::shouldLog())
      {
        Logger = AppleBCMWLANBusInterface::getLogger(this);
        CCLogStream::logNotice(Logger, "[dk] %s@%d:READ after: nvramPointerOffset[0x%08x] 0x%X\n", "loadChipImage", 7614, v27, v46);
      }
    }

    *(*v5 + 4809) = v46 == *(*v5 + 2852);
  }

  v29 = AppleBCMWLANChipManagerPCIe::isBootMSISupported(*(*v5 + 3280));
  v30 = *v5;
  if (v29 && (*(v30 + 4809) & 1) == 0 && *(v30 + 3709) != 1)
  {
    goto LABEL_89;
  }

  PCIeBootMinPollingDelay = AppleBCMWLANChipManagerPCIe::getPCIeBootMinPollingDelay(*(v30 + 3280));
  PCIeBootPollingInterval = AppleBCMWLANChipManagerPCIe::getPCIeBootPollingInterval(*(*v5 + 3280));
  if (*(*v5 + 4809) == 1)
  {
    *(*v5 + 4809) = 0;
    v33 = 4000;
    goto LABEL_112;
  }

  IOSleep(PCIeBootMinPollingDelay);
  if (PCIeBootMinPollingDelay != 5000)
  {
    v33 = 5000 - PCIeBootMinPollingDelay;
LABEL_112:
    v36 = 0;
    do
    {
      if (v46 != -1 && v46 != *(*v5 + 2852))
      {
        break;
      }

      IOSleep(PCIeBootPollingInterval);
      AppleBCMWLANChipMemory::readRAM32(*(*(this + 9) + 3368), v27, &v46);
      if (AppleBCMWLANBusInterface::getLogger(this))
      {
        AppleBCMWLANBusInterface::getLogger(this);
        if (CCLogStream::shouldLog())
        {
          v38 = AppleBCMWLANBusInterface::getLogger(this);
          CCLogStream::logAlert(v38, "[dk] %s@%d:READ after: nvramPointerOffset[0x%08x] 0x%X\n", "loadChipImage", 7657, v27, v46);
        }
      }

      v36 += PCIeBootPollingInterval;
    }

    while (v36 < v33);
  }

LABEL_89:
  v7 = 3825174283;
  if (*(*v5 + 4809))
  {
    return v7;
  }

  v34 = v46;
  *(*v5 + 3740) = v46;
  if (v34 == *(*v5 + 2852))
  {
    if (AppleBCMWLANBusInterface::getLogger(this))
    {
      AppleBCMWLANBusInterface::getLogger(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANBusInterfacePCIe::loadChipImage(this);
      }
    }

    AppleBCMWLANBusInterfacePCIe::dumpRegistersFWDebug(this);
    AppleBCMWLANBusInterfacePCIe::dumpSocRAMToRegistry(this, 0);
    if ((*(*this + 1064))(this))
    {
      AppleBCMWLANBusInterfacePCIe::printVStatus(this);
    }

    AppleBCMWLANChipBackplane::forcePower(*(*(this + 9) + 3360), 0, 0);
    v22 = this;
    v23 = 7683;
    goto LABEL_127;
  }

  if (v34 == -1)
  {
    if (AppleBCMWLANBusInterface::getLogger(this))
    {
      AppleBCMWLANBusInterface::getLogger(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANBusInterfacePCIe::loadChipImage(this);
      }
    }

    AppleBCMWLANBusInterfacePCIe::dumpSocRAMToRegistry(this, 0);
    AppleBCMWLANChipBackplane::forcePower(*(*(this + 9) + 3360), 0, 0);
    v22 = this;
    v23 = 7694;
    goto LABEL_127;
  }

  if (IOParseBootArgNumber("wlan.debug.dump-socram.boot", &v47, 4) && v47)
  {
    if (AppleBCMWLANBusInterface::getLogger(this))
    {
      AppleBCMWLANBusInterface::getLogger(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANBusInterfacePCIe::loadChipImage(this);
      }
    }

    AppleBCMWLANBusInterfacePCIe::dumpSocRAMToRegistry(this, 0);
  }

  if (*(*v5 + 4588) == 1)
  {
    AppleBCMWLANBusInterfacePCIe::modifyASPM(this, 3u);
  }

  AppleBCMWLANBusInterfacePCIe::destroyFirmwareIPCTrackers(this);
  AppleBCMWLANBusInterfacePCIe::destroyFirmwarePCIeIPC(this);
  FirmwarePCIeIPC = AppleBCMWLANBusInterfacePCIe::createFirmwarePCIeIPC(this, *(*(this + 9) + 3368));
  if (FirmwarePCIeIPC)
  {
    v7 = FirmwarePCIeIPC;
    if (AppleBCMWLANBusInterface::getLogger(this))
    {
      AppleBCMWLANBusInterface::getLogger(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANBusInterfacePCIe::loadChipImage(this);
      }
    }

    AppleBCMWLANBusInterfacePCIe::releaseCTS(this, 7724);
    AppleBCMWLANChipBackplane::forcePower(*(*(this + 9) + 3360), 0, 0);
  }

  else
  {
    v39 = *v5;
    if (*(*v5 + 3312) != 4399)
    {
      if (AppleBCMWLANBusInterface::getLogger(this))
      {
        AppleBCMWLANBusInterface::getLogger(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANBusInterfacePCIe::loadChipImage(this);
        }
      }

      if (AppleBCMWLANChipConfigSpace::modifyReg32(*(*v5 + 3352), 4u, 0, 4, 0))
      {
        if (AppleBCMWLANBusInterface::getLogger(this))
        {
          AppleBCMWLANBusInterface::getLogger(this);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANBusInterfacePCIe::loadChipImage(this);
          }
        }

        AppleBCMWLANBusInterfacePCIe::releaseCTS(this, 7737);
        v16 = *(this + 9);
        goto LABEL_54;
      }

      *(*v5 + 1307) = 1;
      v39 = *v5;
    }

    AppleBCMWLANChipBackplane::forcePower(*(v39 + 3360), 0, 0);
    AppleBCMWLANBusInterfacePCIe::enableRingEventSources(this);
    AppleBCMWLANBusInterfacePCIe::releaseCTS(this, 7749);
    v40 = *(this + 9);
    if (*(v40 + 2844) == 2 && AppleOLYHALPortInterfacePCIe::deviceWakeGPIOAvailableDK(*(v40 + 5192), 0))
    {
      AppleBCMWLANBusInterfacePCIe::deassertDeviceWake(this);
    }

    v41 = *v5;
    v42 = *(*v5 + 3368);
    if (v42)
    {
      (*(*v42 + 16))(v42);
      *(*v5 + 3368) = 0;
      v41 = *v5;
    }

    *(v41 + 3392) = 0;
    *(v41 + 3376) = 0u;
    if (AppleBCMWLANBusInterface::getLogger(this))
    {
      AppleBCMWLANBusInterface::getLogger(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANBusInterfacePCIe::loadChipImage(this);
      }
    }

    AppleBCMWLANPCIeDoorbell::ringNow(*(*(this + 9) + 3640));
    *(*(this + 9) + 3723) = 0;
    if (AppleBCMWLANBusInterface::getLogger(this))
    {
      AppleBCMWLANBusInterface::getLogger(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANBusInterfacePCIe::loadChipImage(this);
      }
    }

    return 0;
  }

  return v7;
}

uint64_t AppleBCMWLANBusInterfacePCIe::loadImage(AppleBCMWLANBusInterface *this, IO80211Buffer *a2, unsigned int *a3, AppleBCMWLANChipMemory *a4)
{
  v5 = 3758097105;
  if (a4)
  {
    v8 = *(a3 + 5) + *(a3 + 3);
    v9 = (a3[2] + 7) & 0xFFFFFFF8;
    if (((v8 + 4) & 7) != 0)
    {
      v10 = v8 - ((v8 + 4) & 7) + 12;
    }

    else
    {
      v10 = v8 + 4;
    }

    v11 = a3[4];
    v12 = AppleBCMWLANChipMemory::unwrapRAMOffset(a4, -v10);
    v13 = AppleBCMWLANChipMemory::unwrapRAMOffset(a4, 4294967292);
    v58 = v10;
    *(*(this + 9) + 2852) = ((v10 >> 2) - 1) - (v10 >> 2 << 16);
    v60 = v12;
    v14 = v12 - v9 - 264;
    if ((v12 - v9) <= 0x108)
    {
      if (AppleBCMWLANBusInterface::getLogger(this))
      {
        AppleBCMWLANBusInterface::getLogger(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANBusInterfacePCIe::loadImage(this);
        }
      }

      return v5;
    }

    v15 = v13;
    v16 = v9;
    v17 = IOMallocZeroData();
    if (v17)
    {
      v18 = v17;
      read_random();
      *(v18 + 256) = 0xFEEDC0DE00000100;
      v56 = v15;
      v57 = a2;
      v19 = a2;
      if (AppleBCMWLANBusInterface::getLogger(this))
      {
        AppleBCMWLANBusInterface::getLogger(this);
        if (CCLogStream::shouldLog())
        {
          Logger = AppleBCMWLANBusInterface::getLogger(this);
          v35 = " pad |";
          v37 = *a3;
          v36 = *(a3 + 1);
          v52 = v36;
          if (!*a3)
          {
            v35 = "";
          }

          v55 = v35;
          v53 = v36 + v37;
          v38 = *(a3 + 3);
          v51 = *(a3 + 2);
          v40 = *(a3 + 4);
          v39 = *(a3 + 5);
          v50 = v39 + v40;
          Length = IO80211Buffer::getLength(v57);
          v48 = v40;
          v19 = v57;
          CCLogStream::logAlert(Logger, "[dk] %s@%d:Image: 0 [%s %u< FIRMWARE{%u} >%u |  pad  | %u< NVRAM_PROVISIONED{%u} >%u | %u< NVRAM{%u} >%u | pad ] %u\n", "loadImage", 8304, v55, v37, v52, v53, v51, v38, v38 + v51, v48, v39, v50, Length);
        }
      }

      v20 = v60 - 264;
      if (AppleBCMWLANBusInterface::getLogger(this))
      {
        AppleBCMWLANBusInterface::getLogger(this);
        if (CCLogStream::shouldLog())
        {
          v42 = AppleBCMWLANBusInterface::getLogger(this);
          v43 = *(a3 + 1);
          v44 = *(*(this + 9) + 2852);
          v45 = AppleBCMWLANChipMemory::unwrapRAMOffset(a4, 0xFFFFFFFFLL);
          v49 = v44;
          v19 = v57;
          CCLogStream::logAlert(v42, "[dk] %s@%d:Chip RAM: 0 [ %u< firmware{%u} >%u | %u ~ %u< free{%u} >%u | %u< nvram{%u} >%u | %u ~ pad | %u @%#x ] %u\n", "loadImage", 8325, 0, v43, v43, v16, v16, v14, v20, v60, v8, v60 + v8, v60 + v58, v56, v49, v45 + 1);
        }
      }

      v21 = *(this + 9);
      if (*(v21 + 4808) == 1)
      {
        AppleBCMWLANChipMemory::setFlushPerWritesFactor(a4, 32);
        v21 = *(this + 9);
      }

      v22 = *(v21 + 3144);
      if (v22)
      {
        RecordingStatus = AppleBCMWLANPCIeMMIOHistory::getRecordingStatus(v22);
        AppleBCMWLANPCIeMMIOHistory::disableRecording(*(*(this + 9) + 3144));
        v24 = *a3;
        AppleBCMWLANChipMemory::writeRAM(a4, 0, v16, v19);
        AppleBCMWLANChipMemory::clearRAM(a4, v16, v14);
        if (RecordingStatus)
        {
          v25 = *(*(this + 9) + 3144);
          if (v25)
          {
            AppleBCMWLANPCIeMMIOHistory::enableRecording(v25);
          }
        }
      }

      else
      {
        v26 = *a3;
        AppleBCMWLANChipMemory::writeRAM(a4, 0, v16, v19);
        AppleBCMWLANChipMemory::clearRAM(a4, v16, v14);
      }

      if (AppleBCMWLANBusInterface::getLogger(this))
      {
        AppleBCMWLANBusInterface::getLogger(this);
        if (CCLogStream::shouldLog())
        {
          v46 = AppleBCMWLANBusInterface::getLogger(this);
          CCLogStream::logAlert(v46, "[dk] %s@%d:Chip RAM: Randomized bytes @ %u< RANDOMIZED{%u} >%u\n", "loadImage", 8359, v20, 264, v60);
        }
      }

      for (i = 0; i != 264; ++i)
      {
        v28 = *(v18 + i);
        AppleBCMWLANChipMemory::writeRAM8(a4);
        if ((i & 0x1F) == 0)
        {
          if (i)
          {
            if (*(*(this + 9) + 4808))
            {
              v62 = -86;
              AppleBCMWLANChipMemory::readRAM8(a4, v20 + i, &v62);
              if (v62 != v28)
              {
                if (AppleBCMWLANBusInterface::getLogger(this))
                {
                  AppleBCMWLANBusInterface::getLogger(this);
                  if (CCLogStream::shouldLog())
                  {
                    v29 = AppleBCMWLANBusInterface::getLogger(this);
                    CCLogStream::logAlert(v29, "[dk] %s@%d:Randomized write failure: write value 0x%x, read value 0x%x\n", "loadImage", 8375, v28, v62);
                  }
                }
              }
            }
          }
        }
      }

      AppleBCMWLANChipMemory::writeRAM(a4, v60, v58, v57);
      v30 = *(*(this + 9) + 2852);
      AppleBCMWLANChipMemory::writeRAM32(a4);
      if ((*(*this + 1064))(this))
      {
        *(*(this + 9) + 2864) = v20;
        AppleBCMWLANBusInterfacePCIe::writeSignatureRTLV(this, a4, v57, a3);
        if (AppleBCMWLANBusInterfacePCIe::writeVStatusRTLV(this, a4))
        {
          v5 = 3758097098;
          if (AppleBCMWLANBusInterface::getLogger(this))
          {
            AppleBCMWLANBusInterface::getLogger(this);
            if (CCLogStream::shouldLog())
            {
              AppleBCMWLANBusInterfacePCIe::loadImage(this);
            }
          }

          goto LABEL_60;
        }

        if (AppleBCMWLANBusInterfacePCIe::writeMemoryMapRTLV(this, a4, a3))
        {
          v5 = 3758097098;
          if (AppleBCMWLANBusInterface::getLogger(this))
          {
            AppleBCMWLANBusInterface::getLogger(this);
            if (CCLogStream::shouldLog())
            {
              AppleBCMWLANBusInterfacePCIe::loadImage(this);
            }
          }

          goto LABEL_60;
        }

        AppleBCMWLANBusInterfacePCIe::writeRTLV(this, a4, 0, 0);
      }

      else
      {
        BytesNoCopy = IO80211Buffer::getBytesNoCopy(v57, *a3, 4uLL);
        if (!BytesNoCopy)
        {
          v5 = 3758097090;
LABEL_60:
          IOFreeData();
          return v5;
        }

        v32 = *BytesNoCopy;
        AppleBCMWLANChipMemory::writeFLOP32(a4);
      }

      v61 = 0;
      AppleBCMWLANChipMemory::readRAM32(a4, v56, &v61);
      v5 = 0;
      if (v61 != *(*(this + 9) + 2852))
      {
        if (AppleBCMWLANBusInterface::getLogger(this))
        {
          AppleBCMWLANBusInterface::getLogger(this);
          if (CCLogStream::shouldLog())
          {
            v47 = AppleBCMWLANBusInterface::getLogger(this);
            CCLogStream::logAlert(v47, "[dk] %s@%d:NVRAM Location Mismatch @ %u: host 0x%X, chip 0x%X\n", "loadImage", 8480, v56, *(*(this + 9) + 2852), v61);
          }
        }

        v5 = 3758097105;
      }

      if (AppleBCMWLANBusInterface::getLogger(this))
      {
        AppleBCMWLANBusInterface::getLogger(this);
        if (CCLogStream::shouldLog())
        {
          v33 = AppleBCMWLANBusInterface::getLogger(this);
          CCLogStream::logNotice(v33, "[dk] %s@%d:READ before: nvramSizeChipRAMOffset[0x%08x] 0x%X, chip[0x%08x]\n", "loadImage", 8483, v56, *(*(this + 9) + 2852), v61);
        }
      }

      goto LABEL_60;
    }

    if (AppleBCMWLANBusInterface::getLogger(this))
    {
      AppleBCMWLANBusInterface::getLogger(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANBusInterfacePCIe::loadImage(this);
      }
    }
  }

  else if (AppleBCMWLANBusInterface::getLogger(this))
  {
    AppleBCMWLANBusInterface::getLogger(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANBusInterfacePCIe::loadImage(this);
    }
  }

  return v5;
}

uint64_t AppleBCMWLANBusInterfacePCIe::dumpSocRAMToRegistry(AppleBCMWLANBusInterfacePCIe *this, const char *a2)
{
  v4 = *(*(this + 9) + 3368);
  if (v4)
  {
    v5 = AppleBCMWLANChipMemory::unwrapRAMOffset(v4, 0xFFFFFFFFLL) + 1;
  }

  else
  {
    v5 = 0;
  }

  if (!a2)
  {
    a2 = "boot";
  }

  (*(*this + 1208))(this, "dumpSocRAMToRegistry", 7882);
  Logger = AppleBCMWLANBusInterface::getLogger(this);
  if (!v5)
  {
    if (Logger)
    {
      AppleBCMWLANBusInterface::getLogger(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANBusInterfacePCIe::dumpSocRAMToRegistry(this);
      }
    }

    v8 = 0;
    goto LABEL_16;
  }

  if (Logger)
  {
    AppleBCMWLANBusInterface::getLogger(this);
    if (CCLogStream::shouldLog())
    {
      v14 = AppleBCMWLANBusInterface::getLogger(this);
      CCLogStream::logAlert(v14, "[dk] %s@%d:SOCRAM: propName['%s']   Memdump: %u\n", "dumpSocRAMToRegistry", 7886, a2, v5);
    }
  }

  if (AppleBCMWLANBusInterfacePCIe::isTCMAccessible(this))
  {
    if (AppleBCMWLANBusInterfacePCIe::isBusAccessible(this, 1) && (AppleBCMWLANBusInterfacePCIe::isAPBAccessible(this, 1, 0) & 1) != 0)
    {
      v7 = IO80211Buffer::allocBufferSingle();
      if (v7)
      {
        v8 = v7;
        AppleBCMWLANChipMemory::readRAM(*(*(this + 9) + 3368), 0, v5, v7);
        BytesNoCopy = IO80211Buffer::getBytesNoCopy(v8);
        v10 = OSData::withBytes(BytesNoCopy, v5);
        if (v10)
        {
          v11 = v10;
          v12 = (*(*this + 984))(this);
          setPropertyHelper(v12, a2, v11);
          (v11->release)(v11);
LABEL_16:
          IO80211Buffer::returnBuffer(v8);
          (*(MEMORY[0] + 72))(0);
          return 0;
        }

        AppleBCMWLANBusInterfacePCIe::dumpSocRAMToRegistry(this, v8, &v15);
      }

      else
      {
        AppleBCMWLANBusInterfacePCIe::dumpSocRAMToRegistry();
      }

      v8 = v15;
      goto LABEL_16;
    }

    result = AppleBCMWLANBusInterface::getLogger(this);
    if (result)
    {
      AppleBCMWLANBusInterface::getLogger(this);
      result = CCLogStream::shouldLog();
      if (result)
      {
        return AppleBCMWLANBusInterfacePCIe::dumpSocRAMToRegistry(this);
      }
    }
  }

  else
  {
    result = AppleBCMWLANBusInterface::getLogger(this);
    if (result)
    {
      AppleBCMWLANBusInterface::getLogger(this);
      result = CCLogStream::shouldLog();
      if (result)
      {
        return AppleBCMWLANBusInterfacePCIe::dumpSocRAMToRegistry(this);
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANBusInterfacePCIe::retainCTS(AppleBCMWLANBusInterfacePCIe *this, __int16 a2, int a3)
{
  v5 = *(this + 9);
  if (*(v5 + 2844) == 2)
  {
    AppleBCMWLANBusInterfacePCIe::retainCTSInbandDS(this);
  }

  else
  {
    result = AppleOLYHALPortInterfacePCIe::deviceWakeGPIOAvailableDK(*(v5 + 5192), 0);
    if (!result)
    {
      ++*(*(this + 9) + 4504);
      return result;
    }

    AppleBCMWLANBusInterfacePCIe::retainCTSOOBDW(this, a2);
  }

  v8 = *(this + 9);
  if (a3 & 2) == 0 || (*(v8 + 4496))
  {
    goto LABEL_36;
  }

  v9 = 0;
  ++*(v8 + 4508);
  v10 = *(this + 9);
  v11 = *(v10 + 4512) | a3;
  v18 = 0;
  *(v10 + 4512) = v11;
  while (1)
  {
    memset(v17, 170, sizeof(v17));
    clock_interval_to_deadline();
    mach_continuous_time();
    absolutetime_to_nanoseconds();
    v12 = (*(**(*(this + 9) + 3472) + 80))(*(*(this + 9) + 3472), *(this + 9) + 4508, v17[0]);
    mach_continuous_time();
    absolutetime_to_nanoseconds();
    v13 = *(this + 9);
    v14 = (v13 + 1528);
    v15 = 12;
    while (v14[13] <= (v17[2] - v17[1]) / 0xF4240uLL)
    {
      ++v14;
      if (!--v15)
      {
        v14 = (v13 + 1624);
        break;
      }
    }

    ++*v14;
    IOHistogramReporter::tallyValue(*(*(this + 9) + 3184), (v17[2] - v17[1]) / 0xF4240uLL);
    v16 = *(this + 9);
    result = (*(v16 + 4496) & 1) != 0 ? 0 : v12;
    if (result != -536870186)
    {
      break;
    }

    if (AppleBCMWLANBusInterface::getLogger(this))
    {
      AppleBCMWLANBusInterface::getLogger(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANBusInterfacePCIe::retainCTS(this);
      }
    }

    if (!(*(*this + 600))(this, &v18))
    {
      goto LABEL_33;
    }

    if (AppleBCMWLANBusInterface::getLogger(this))
    {
      AppleBCMWLANBusInterface::getLogger(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANBusInterfacePCIe::retainCTS(this);
      }
    }

    if (v9 == 3)
    {
      if (AppleBCMWLANBusInterface::getLogger(this))
      {
        AppleBCMWLANBusInterface::getLogger(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANBusInterfacePCIe::retainCTS(this);
        }
      }

LABEL_33:
      result = 3758097110;
      goto LABEL_34;
    }

    ++v9;
  }

  if ((*(v16 + 1304) & 1) != 0 || !*(v16 + 3248) || *(v16 + 3725) == 1)
  {
    result = 3758097129;
  }

LABEL_34:
  *(*(this + 9) + 4512) &= ~a3;
  --*(*(this + 9) + 4508);
  if (!result)
  {
    v8 = *(this + 9);
LABEL_36:
    if (*(v8 + 4496))
    {
      return 0;
    }

    else
    {
      return 3825173266;
    }
  }

  return result;
}

AppleBCMWLANBusInterface *AppleBCMWLANBusInterfacePCIe::releaseCTS(AppleBCMWLANBusInterfacePCIe *this, __int16 a2)
{
  v3 = *(this + 9);
  if (*(v3 + 2844) == 2)
  {

    return AppleBCMWLANBusInterfacePCIe::releaseCTSInbandDS(this);
  }

  else
  {
    result = AppleOLYHALPortInterfacePCIe::deviceWakeGPIOAvailableDK(*(v3 + 5192), 0);
    if (result)
    {

      return AppleBCMWLANBusInterfacePCIe::releaseCTSOOBDW(this, a2);
    }

    else
    {
      --*(*(this + 9) + 4504);
      v6 = *(this + 9);
      if (*(v6 + 2868) == 1)
      {
        *(v6 + 4496) &= ~2u;
      }
    }
  }

  return result;
}

uint64_t ___ZN28AppleBCMWLANBusInterfacePCIe13loadChipImageEPK21AppleBCMWLANChipImage_block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(*(v1 + 72) + 4809) == 1)
  {
    clock_interval_to_deadline();
    (*(**(*(v1 + 72) + 3488) + 80))(*(*(v1 + 72) + 3488), *(v1 + 72) + 4809, 0xAAAAAAAAAAAAAAAALL);
  }

  return 0;
}

uint64_t AppleBCMWLANBusInterfacePCIe::printVStatus(AppleBCMWLANBusInterfacePCIe *this)
{
  (*(*this + 1208))(this, "printVStatus", 8013);
  v2 = IO80211Buffer::allocBufferSingle();
  if (!v2)
  {
    return AppleBCMWLANBusInterfacePCIe::printVStatus(this);
  }

  v3 = v2;
  if (AppleBCMWLANChipMemory::readChipRAMDK(*(*(this + 9) + 3368), *(*(this + 9) + 2856), 40, v2, 0))
  {
    BytesNoCopy = IO80211Buffer::getBytesNoCopy(v3);
    if (AppleBCMWLANBusInterface::getLogger(this))
    {
      AppleBCMWLANBusInterface::getLogger(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANBusInterfacePCIe::printVStatus(this, BytesNoCopy);
      }
    }
  }

  else if (AppleBCMWLANBusInterface::getLogger(this))
  {
    AppleBCMWLANBusInterface::getLogger(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANBusInterfacePCIe::printVStatus(this);
    }
  }

  IO80211Buffer::returnBuffer(v3);
  (*(MEMORY[0] + 72))(0);
  return 0;
}

uint64_t AppleBCMWLANBusInterfacePCIe::createFirmwarePCIeIPC(OSObject *this, AppleBCMWLANChipMemory *a2)
{
  (this->OSMetaClassBase::__vftable[21].Dispatch)(this, "createFirmwarePCIeIPC", 9997);
  p_ivars = &this[1].ivars;
  *(this[1].ivars + 711) = 0;
  v5 = AppleBCMWLANChipMemory::unwrapRAMOffset(a2, 4294967292);
  v65 = 0;
  AppleBCMWLANChipMemory::readRAM32(a2, v5, &v65);
  if (v65 == -1)
  {
    BusAddr64 = 3825173258;
    if (AppleBCMWLANBusInterface::getLogger(this))
    {
      AppleBCMWLANBusInterface::getLogger(this);
      if (CCLogStream::shouldLog())
      {
        Logger = AppleBCMWLANBusInterface::getLogger(this);
        CCLogStream::logAlert(Logger, "[dk] %s@%d:Failed to read shared memory address @ %#X, %#X\n", "createFirmwarePCIeIPC", 10009, v5, v65);
      }
    }

    return BusAddr64;
  }

  v64 = -1431655766;
  BusAddr64 = AppleBCMWLANChipMemory::translateRAMBackplaneAddr(a2, v65, &v64);
  if (BusAddr64)
  {
    return BusAddr64;
  }

  AppleBCMWLANChipMemory::setSharedMemoryOffset(a2, v64);
  Flags = AppleBCMWLANChipMemory::readFlags(a2);
  v8 = Flags;
  if ((Flags & 0xFE) != 6)
  {
    BusAddr64 = 3758097096;
    if (AppleBCMWLANBusInterface::getLogger(this))
    {
      AppleBCMWLANBusInterface::getLogger(this);
      if (CCLogStream::shouldLog())
      {
        v14 = AppleBCMWLANBusInterface::getLogger(this);
        CCLogStream::logAlert(v14, "[dk] %s@%d:Host requires version %u, firmware supports %u\n", "createFirmwarePCIeIPC", 10053, 7, v8);
        return 3758097096;
      }
    }

    return BusAddr64;
  }

  v9 = Flags;
  *(p_ivars->ivars + 4813) = 1;
  v63 = 0;
  if (IOParseBootArgNumber("wlan.pcie.disablephasebitcheck", &v63, 4))
  {
    if (AppleBCMWLANBusInterface::getLogger(this))
    {
      AppleBCMWLANBusInterface::getLogger(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANBusInterfacePCIe::createFirmwarePCIeIPC(this);
      }
    }

    *(p_ivars->ivars + 4813) = 0;
  }

  *(this[1].ivars + 300) = v8;
  if (AppleBCMWLANBusInterface::getLogger(this))
  {
    AppleBCMWLANBusInterface::getLogger(this);
    if (CCLogStream::shouldLog())
    {
      v16 = AppleBCMWLANBusInterface::getLogger(this);
      CCLogStream::logAlert(v16, "[dk] %s@%d:FW supports IPC protocol V%d, Host supports V%d\n", "createFirmwarePCIeIPC", 10065, v8, 7);
    }
  }

  if (*(p_ivars->ivars + 300) >= 7u)
  {
    Flags2 = AppleBCMWLANChipMemory::readFlags2(a2);
    if (AppleBCMWLANBusInterface::getLogger(this) && (AppleBCMWLANBusInterface::getLogger(this), CCLogStream::shouldLog()))
    {
      v17 = AppleBCMWLANBusInterface::getLogger(this);
      CCLogStream::logAlert(v17, "[dk] %s@%d:deviceSharedFlags2 = 0x%x\n", "createFirmwarePCIeIPC", 10075, Flags2);
      if ((Flags2 & 1) == 0)
      {
        goto LABEL_18;
      }
    }

    else if ((Flags2 & 1) == 0)
    {
      goto LABEL_18;
    }

    *(p_ivars->ivars + 4085) = 1;
    if (!*(p_ivars->ivars + 509))
    {
      *(p_ivars->ivars + 509) = IOMallocZeroData();
      if (!*(p_ivars->ivars + 509))
      {
        BusAddr64 = 3758097085;
        if (AppleBCMWLANBusInterface::getLogger(this))
        {
          AppleBCMWLANBusInterface::getLogger(this);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANBusInterfacePCIe::createFirmwarePCIeIPC(this);
          }
        }

        return BusAddr64;
      }
    }

LABEL_18:
    if ((Flags2 & 0x200) != 0)
    {
      *(p_ivars->ivars + 4092) = 1;
    }

    if ((v9 & 0x10000000) != 0)
    {
      *(p_ivars->ivars + 4084) = 1;
    }

    Flags3 = AppleBCMWLANChipMemory::readFlags3(a2);
    *(this[1].ivars + 3722) = 0;
    if (AppleBCMWLANBusInterface::getLogger(this) && (AppleBCMWLANBusInterface::getLogger(this), CCLogStream::shouldLog()))
    {
      v18 = AppleBCMWLANBusInterface::getLogger(this);
      CCLogStream::logAlert(v18, "[dk] %s@%d:deviceSharedFlags3 = 0x%x\n", "createFirmwarePCIeIPC", 10105, Flags3);
      if ((Flags3 & 0x20) == 0)
      {
        goto LABEL_30;
      }
    }

    else if ((Flags3 & 0x20) == 0)
    {
      goto LABEL_30;
    }

    if (*(p_ivars->ivars + 828) == 4399)
    {
      if (AppleBCMWLANBusInterface::getLogger(this))
      {
        AppleBCMWLANBusInterface::getLogger(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANBusInterfacePCIe::createFirmwarePCIeIPC(this);
        }
      }

      *(p_ivars->ivars + 3722) = 1;
    }

LABEL_30:
    LODWORD(v59.address) = 0;
    if (IOParseBootArgNumber("wlan.pcie.oobdw", &v59, 4))
    {
      if (AppleBCMWLANBusInterface::getLogger(this))
      {
        AppleBCMWLANBusInterface::getLogger(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANBusInterfacePCIe::createFirmwarePCIeIPC(this);
        }
      }

      LODWORD(v59.address) = 1;
    }

    v12 = AppleBCMWLANBusInterface::getLogger(this);
    if ((v9 & 0x60000000) == 0x20000000)
    {
      if (v12)
      {
        AppleBCMWLANBusInterface::getLogger(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANBusInterfacePCIe::createFirmwarePCIeIPC(this);
        }
      }

      return 3758097097;
    }

    if (v12 && (AppleBCMWLANBusInterface::getLogger(this), CCLogStream::shouldLog()))
    {
      v19 = AppleBCMWLANBusInterface::getLogger(this);
      v20 = "No";
      if ((v9 & 0x20000000) == 0)
      {
        v20 = "Has";
      }

      v21 = "has";
      if ((v9 & 0x40000000) == 0)
      {
        v21 = "no";
      }

      CCLogStream::logCrit(v19, "[dk] %s@%d:device wake flags: %s OOB DW, %s inband DS\n", "createFirmwarePCIeIPC", 10133, v20, v21);
      if ((v9 & 0x40000000) == 0)
      {
        goto LABEL_64;
      }
    }

    else if ((v9 & 0x40000000) == 0)
    {
      goto LABEL_64;
    }

    if (!LODWORD(v59.address))
    {
      v15 = 2;
      goto LABEL_66;
    }

LABEL_64:
    if ((AppleOLYHALPortInterfacePCIe::deviceWakeGPIOAvailableDK(*(p_ivars->ivars + 649), 0) & 1) == 0)
    {
      if (AppleBCMWLANBusInterface::getLogger(this))
      {
        AppleBCMWLANBusInterface::getLogger(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANBusInterfacePCIe::createFirmwarePCIeIPC(this);
        }
      }

      return 3758097097;
    }

    v15 = 1;
LABEL_66:
    *(p_ivars->ivars + 711) = v15;
    *(p_ivars->ivars + 4530) = BYTE1(Flags2) & 1;
    if (*(p_ivars->ivars + 4530) == 1)
    {
      if (AppleBCMWLANBusInterface::getLogger(this))
      {
        AppleBCMWLANBusInterface::getLogger(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANBusInterfacePCIe::createFirmwarePCIeIPC(this);
        }
      }
    }

    address = 1;
    if (IOParseBootArgNumber("wlan.lowlatency.fw", &address, 4))
    {
      if (AppleBCMWLANBusInterface::getLogger(this))
      {
        AppleBCMWLANBusInterface::getLogger(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANBusInterfacePCIe::createFirmwarePCIeIPC(this, &address);
        }
      }
    }

    if (address)
    {
      if ((v9 & 0x8000000) != 0)
      {
        v22 = (this->OSMetaClassBase::__vftable[10].free)(this);
        if (AppleBCMWLANCore::isLowLatencyWiFiEnabled(v22))
        {
          if (AppleBCMWLANBusInterface::getLogger(this))
          {
            AppleBCMWLANBusInterface::getLogger(this);
            if (CCLogStream::shouldLog())
            {
              AppleBCMWLANBusInterfacePCIe::createFirmwarePCIeIPC(this);
            }
          }
        }
      }

      *(p_ivars->ivars + 4533) = 0;
      if ((Flags2 & 0x8000) != 0)
      {
        v23 = (this->OSMetaClassBase::__vftable[10].free)(this);
        if (AppleBCMWLANCore::isLowLatencyWiFiEnabled(v23))
        {
          if (AppleBCMWLANBusInterface::getLogger(this))
          {
            AppleBCMWLANBusInterface::getLogger(this);
            if (CCLogStream::shouldLog())
            {
              AppleBCMWLANBusInterfacePCIe::createFirmwarePCIeIPC(this);
            }
          }

          *(p_ivars->ivars + 4533) = 1;
        }
      }

      *(p_ivars->ivars + 4534) = 0;
      if ((Flags2 & 0x10000) != 0)
      {
        v24 = (this->OSMetaClassBase::__vftable[10].free)(this);
        if (AppleBCMWLANCore::isLowLatencyWiFiEnabled(v24))
        {
          if (AppleBCMWLANBusInterface::getLogger(this))
          {
            AppleBCMWLANBusInterface::getLogger(this);
            if (CCLogStream::shouldLog())
            {
              AppleBCMWLANBusInterfacePCIe::createFirmwarePCIeIPC(this);
            }
          }

          *(p_ivars->ivars + 4534) = 1;
        }
      }
    }

    *(p_ivars->ivars + 4531) = (Flags2 & 0x40000) != 0;
    ivars = p_ivars->ivars;
    if (*(p_ivars->ivars + 4009) == 1)
    {
      *(ivars + 4010) = 0;
      ivars = p_ivars->ivars;
    }

    *(ivars + 4532) = HIBYTE(Flags2) & 1;
    v26 = p_ivars->ivars;
    if (*(p_ivars->ivars + 4532) != 1 || *(v26 + 3711) != 1 || *(v26 + 4007) != 1 || (AppleBCMWLANChipManagerPCIe::isPTMSupported(*(v26 + 410)) & 1) == 0)
    {
      if (AppleBCMWLANBusInterface::getLogger(this))
      {
        AppleBCMWLANBusInterface::getLogger(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANBusInterfacePCIe::createFirmwarePCIeIPC(this);
        }
      }

      *(p_ivars->ivars + 4009) = 0;
    }

    if ((*(p_ivars->ivars + 3712) & 1) == 0)
    {
      if (AppleBCMWLANChipManagerPCIe::isFatalErrorIndicationSupported(*(p_ivars->ivars + 410)))
      {
        if (AppleBCMWLANBusInterface::getLogger(this))
        {
          AppleBCMWLANBusInterface::getLogger(this);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANBusInterfacePCIe::createFirmwarePCIeIPC(this);
          }
        }
      }
    }

    if ((Flags2 & 0x100000) == 0)
    {
      goto LABEL_122;
    }

    v60 = 0;
    address_high = 2;
    if (IOParseBootArgNumber("wlan.txchipdelay.scale", &address_high, 4))
    {
      if (AppleBCMWLANBusInterface::getLogger(this))
      {
        AppleBCMWLANBusInterface::getLogger(this);
        if (CCLogStream::shouldLog())
        {
          v54 = AppleBCMWLANBusInterface::getLogger(this);
          CCLogStream::logAlert(v54, "[dk] %s@%d:Forcing FW tx latency scale = %d\n", "createFirmwarePCIeIPC", 10216, address_high);
        }
      }
    }

    v27 = address_high;
    if (address_high >= 7)
    {
      v27 = 7;
    }

    address_high = v27;
    if (IOParseBootArgNumber("wlan.rxchipdelay.scale", &v60, 4))
    {
      if (AppleBCMWLANBusInterface::getLogger(this))
      {
        AppleBCMWLANBusInterface::getLogger(this);
        if (CCLogStream::shouldLog())
        {
          v55 = AppleBCMWLANBusInterface::getLogger(this);
          CCLogStream::logAlert(v55, "[dk] %s@%d:Forcing FW Rx latency scale = %d\n", "createFirmwarePCIeIPC", 10221, v60);
        }
      }
    }

    v28 = v60;
    if (v60 >= 7)
    {
      v28 = 7;
    }

    v60 = v28;
    *(this[1].ivars + 1157) = 32 << address_high;
    *(this[1].ivars + 1158) = 32 << v28;
    if (AppleBCMWLANBusInterface::getLogger(this) && (AppleBCMWLANBusInterface::getLogger(this), CCLogStream::shouldLog()))
    {
      AppleBCMWLANBusInterfacePCIe::createFirmwarePCIeIPC(this, &this[1].ivars);
      if ((Flags2 & 0x2000) != 0)
      {
        goto LABEL_123;
      }
    }

    else
    {
LABEL_122:
      if ((Flags2 & 0x2000) != 0)
      {
LABEL_123:
        *(p_ivars->ivars + 4104) = 1;
        if (!*(p_ivars->ivars + 479) && (AppleBCMWLANBusInterfacePCIe::createFirmwareEcounterLogger(this) & 1) == 0)
        {
          *(this[1].ivars + 4104) = 0;
          if (AppleBCMWLANBusInterface::getLogger(this))
          {
            AppleBCMWLANBusInterface::getLogger(this);
            if (CCLogStream::shouldLog())
            {
              AppleBCMWLANBusInterfacePCIe::createFirmwarePCIeIPC(this);
            }
          }
        }
      }
    }

    AppleBCMWLANChipMemory::writeHostCaps2(a2);
    goto LABEL_129;
  }

  *(p_ivars->ivars + 711) = 1;
LABEL_129:
  if (AppleBCMWLANBusInterface::getLogger(this))
  {
    AppleBCMWLANBusInterface::getLogger(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANBusInterfacePCIe::createFirmwarePCIeIPC(this, &this[1].ivars);
    }
  }

  *(p_ivars->ivars + 4813);
  AppleBCMWLANChipMemory::writeHostCaps(a2);
  v30 = p_ivars->ivars;
  if (*(p_ivars->ivars + 4092) == 1)
  {
    v31 = *(v30 + 828);
    if ((v31 - 4387) >= 2)
    {
      v32 = 0x10000;
    }

    else
    {
      v32 = 98304;
    }

    if (v31 == 4399)
    {
      v33 = v32 + 0x8000;
    }

    else
    {
      v33 = v32;
    }
  }

  else if (*(v30 + 4085))
  {
    v33 = 520;
  }

  else
  {
    v33 = 4;
  }

  *(p_ivars->ivars + 438) = AppleBCMWLANDMASlab::withOptions(1, v33, IOVMPageSize, 1, 64, *(v30 + 406), v29);
  v34 = *(p_ivars->ivars + 438);
  if (v34)
  {
    AppleBCMWLANDMASlab::zero(v34);
    v59.address = 0;
    v59.length = 0;
    BusAddr64 = AppleBCMWLANDMASlab::getBusAddr64(*(this[1].ivars + 438), 0, &v59);
    v35 = AppleBCMWLANBusInterface::getLogger(this);
    if (BusAddr64)
    {
      if (v35)
      {
        AppleBCMWLANBusInterface::getLogger(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANBusInterfacePCIe::createFirmwarePCIeIPC(this);
        }
      }

      return BusAddr64;
    }

    if (v35)
    {
      AppleBCMWLANBusInterface::getLogger(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANBusInterfacePCIe::createFirmwarePCIeIPC(this, &this[1].ivars);
      }
    }

    address_high = HIDWORD(v59.address);
    address = v59.address;
    AppleBCMWLANChipMemory::writeD2hHealthCheck(a2);
    v36 = p_ivars->ivars;
    if (*(p_ivars->ivars + 4092) == 1)
    {
      AppleBCMWLANDMASlab::getItemSize(*(v36 + 438));
      AppleBCMWLANChipMemory::writeDeviceHealthCheckBufLenWd(a2);
      v36 = p_ivars->ivars;
    }

    *(this[1].ivars + 354) = AppleBCMWLANDMASlab::getBytesNoCopy(*(v36 + 438), 0);
    **(this[1].ivars + 354) = 0;
    v37 = (this->OSMetaClassBase::__vftable[20].init)(this);
    if (AppleBCMWLANBusInterface::getLogger(this))
    {
      AppleBCMWLANBusInterface::getLogger(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANBusInterfacePCIe::createFirmwarePCIeIPC(this, v37);
      }
    }

    v60 = -1431655766;
    RingInfoAddr = AppleBCMWLANChipMemory::readRingInfoAddr(a2);
    BusAddr64 = AppleBCMWLANChipMemory::translateRAMBackplaneAddr(a2, RingInfoAddr, &v60);
    if (!BusAddr64)
    {
      AppleBCMWLANChipMemory::setRingInfo(a2, v60);
      v58 = -1431655766;
      CommonRingMemoryAddr = AppleBCMWLANChipMemory::readCommonRingMemoryAddr(a2);
      BusAddr64 = AppleBCMWLANChipMemory::translateRAMBackplaneAddr(a2, CommonRingMemoryAddr, &v58);
      if (!BusAddr64)
      {
        AppleBCMWLANChipMemory::setCommonRingOffset(a2, v58);
        if ((~AppleBCMWLANChipMemory::readFlags2(a2) & 0xC0) != 0 && (AppleBCMWLANChipMemory::readFlags2(a2) & 0xC0) != 0x80)
        {
          AppleBCMWLANChipMemory::readFlags2(a2);
          if ((~AppleBCMWLANChipMemory::readFlags2(a2) & 0xC0) != 0)
          {
            v40 = AppleBCMWLANChipMemory::readFlags2(a2) & 0xC0;
            if (v40 != 128)
            {
              if ((AppleBCMWLANChipMemory::readFlags2(a2) & 0xC0) == 0x40)
              {
                LOWORD(v40) = 64;
              }

              else
              {
                LOWORD(v40) = 32;
              }
            }
          }

          else
          {
            LOWORD(v40) = 256;
          }
        }

        else
        {
          LOWORD(v40) = 64;
        }

        *(p_ivars->ivars + 1444) = v40;
        v41 = *(p_ivars->ivars + 1444);
        v42 = 128;
        if (v41 != 32 && v41 != 64)
        {
          if (v41 == 128)
          {
            v42 = 256;
          }

          else
          {
            v42 = 512;
          }
        }

        *(p_ivars->ivars + 1445) = v42;
        *(this[1].ivars + 1446) = *(this[1].ivars + 1445);
        if (AppleBCMWLANBusInterface::getLogger(this))
        {
          AppleBCMWLANBusInterface::getLogger(this);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANBusInterfacePCIe::createFirmwarePCIeIPC(this, &this[1].ivars);
          }
        }

        DARTMappings = AppleBCMWLANBusInterfacePCIe::createDARTMappings(this, a2);
        if (DARTMappings)
        {
          goto LABEL_172;
        }

        if ((v9 & 0x10000) == 0)
        {
          BusAddr64 = 3758097095;
          if (AppleBCMWLANBusInterface::getLogger(this))
          {
            AppleBCMWLANBusInterface::getLogger(this);
            if (CCLogStream::shouldLog())
            {
              AppleBCMWLANBusInterfacePCIe::createFirmwarePCIeIPC(this);
              BusAddr64 = 3758097095;
            }
          }

          goto LABEL_173;
        }

        AppleBCMWLANBusInterfacePCIe::initRingInfo(this);
        v45 = 0;
        *(this[1].ivars + 515) = this[1].ivars + 4120;
        *(this[1].ivars + 516) = this[1].ivars + 4120;
        *(this[1].ivars + 517) = this[1].ivars + 4136;
        *(this[1].ivars + 518) = this[1].ivars + 4136;
        *(this[1].ivars + 519) = this[1].ivars + 4152;
        *(this[1].ivars + 520) = this[1].ivars + 4152;
        *(this[1].ivars + 521) = this[1].ivars + 4168;
        *(this[1].ivars + 522) = this[1].ivars + 4168;
        *(this[1].ivars + 35) = this[1].ivars + 280;
        *(this[1].ivars + 36) = this[1].ivars + 280;
        *(this[1].ivars + 37) = this[1].ivars + 296;
        *(this[1].ivars + 38) = this[1].ivars + 296;
        do
        {
          v46 = 1 << (v45 & 7);
          v47 = v45 >> 3;
          *(p_ivars->ivars + v47 + 5168) &= ~v46;
          *(p_ivars->ivars + v47 + 5174) &= ~v46;
          *(p_ivars->ivars + v45 + 48) = 0;
          *(p_ivars->ivars + v45++ + 92) = 0;
        }

        while (v45 != 44);
        (this->OSMetaClassBase::__vftable[7].retain)(this);
        StaticRings = AppleBCMWLANBusInterfacePCIe::createStaticRings(this);
        if (StaticRings)
        {
          BusAddr64 = StaticRings;
          if (AppleBCMWLANBusInterface::getLogger(this))
          {
            AppleBCMWLANBusInterface::getLogger(this);
            if (CCLogStream::shouldLog())
            {
              v49 = AppleBCMWLANBusInterface::getLogger(this);
              CCLogStream::logCrit(v49, "[dk] %s@%d:Failed to create static rings, retval[0x%08x]\n", "createFirmwarePCIeIPC", 10483, BusAddr64);
            }
          }

          goto LABEL_173;
        }

        AppleBCMWLANBusInterfacePCIe::initTransmitFlows(this);
        AppleBCMWLANBusInterfacePCIe::initMRUFlowIdList(this);
        AppleBCMWLANChipBackplane::writePCIeCoreReg32(*(this[1].ivars + 420), *(this[1].ivars + 1122), 0x10100u);
        AppleBCMWLANChipBackplane::writePCIeCoreReg32(*(this[1].ivars + 420), *(this[1].ivars + 1123), 0xFFFFFFFF);
        isBootMSISupported = AppleBCMWLANChipManagerPCIe::isBootMSISupported(*(this[1].ivars + 410));
        v52 = this[1].ivars;
        if (!isBootMSISupported || *(v52 + 3709) == 1)
        {
          v53 = *(v52 + 437);
          block[0] = _NSConcreteStackBlock;
          block[1] = 0x40000000;
          block[2] = ___ZN28AppleBCMWLANBusInterfacePCIe21createFirmwarePCIeIPCEP22AppleBCMWLANChipMemory_block_invoke;
          block[3] = &__block_descriptor_tmp_549;
          block[4] = this;
          IODispatchQueue::DispatchAsync(v53, block);
          v52 = this[1].ivars;
        }

        *(v52 + 523) = 0;
        *(p_ivars->ivars + 1048) = 0;
        *(p_ivars->ivars + 1306) = 1;
        if (*(p_ivars->ivars + 711) == 2)
        {
          *(p_ivars->ivars + 306) = 5;
          AppleBCMWLANBusInterfacePCIe::changeDeepSleepStateSetClear(this, v51, 1, 255);
          AppleBCMWLANBusInterfacePCIe::logPowerStateTransition(this, 5, 1, 10515);
        }

        DARTMappings = AppleBCMWLANBusInterfacePCIe::createDynamicRings(this);
        if (DARTMappings)
        {
LABEL_172:
          BusAddr64 = DARTMappings;
LABEL_173:
          if (AppleBCMWLANBusInterface::getLogger(this))
          {
            AppleBCMWLANBusInterface::getLogger(this);
            if (CCLogStream::shouldLog())
            {
              v56 = AppleBCMWLANBusInterface::getLogger(this);
              CCLogStream::logAlert(v56, "[dk] %s@%d:createFirmwareIPC failed; retval=0x%08x\n", "createFirmwarePCIeIPC", 10527, BusAddr64);
            }
          }

          AppleBCMWLANBusInterfacePCIe::removeDARTMappings(this);
          return BusAddr64;
        }

        if (AppleBCMWLANBusInterface::getLogger(this))
        {
          AppleBCMWLANBusInterface::getLogger(this);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANBusInterfacePCIe::createFirmwarePCIeIPC(this);
          }
        }

        return 0;
      }
    }
  }

  else
  {
    BusAddr64 = 3758097085;
    if (AppleBCMWLANBusInterface::getLogger(this))
    {
      AppleBCMWLANBusInterface::getLogger(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANBusInterfacePCIe::createFirmwarePCIeIPC(this);
      }
    }
  }

  return BusAddr64;
}

uint64_t *AppleBCMWLANBusInterfacePCIe::enableRingEventSources(uint64_t *this)
{
  v1 = this;
  v2 = this[9];
  v3 = (v2 + 280);
  v4 = *(v2 + 280);
  while (v4 != v3)
  {
    RingFromChain = AppleBCMWLANPCIeSubmissionRing::getRingFromChain(v4);
    this = (*(*RingFromChain + 64))(RingFromChain);
    v4 = *v4;
    v2 = v1[9];
    v3 = (v2 + 280);
  }

  v6 = (v2 + 296);
  v7 = *(v2 + 296);
  while (v7 != v6)
  {
    v8 = AppleBCMWLANPCIeCompletionRing::getRingFromChain(v7);
    this = (*(*v8 + 64))(v8);
    v7 = *v7;
    v2 = v1[9];
    v6 = (v2 + 296);
  }

  if (*(v2 + 376))
  {
    v9 = 602;
    do
    {
      this = *(v2 + 8 * v9);
      if (this)
      {
        this = (*(*this + 312))(this);
        v2 = v1[9];
        if (this == 3)
        {
          this = (*(**(v2 + 8 * v9) + 64))(*(v2 + 8 * v9));
          v2 = v1[9];
        }
      }

      if ((v9 - 602) > 0x2A)
      {
        break;
      }

      v10 = v9++ - 601;
    }

    while (*(v2 + 376) > v10);
  }

  if ((*(v2 + 3726) & 1) == 0)
  {
    v11 = *(v2 + 4480);

    return AppleBCMWLANPCIeSkywalk::enableAllSubmissionQueue(v11);
  }

  return this;
}

uint64_t AppleBCMWLANBusInterfacePCIe::isTCMAccessible(AppleBCMWLANBusInterfacePCIe *this)
{
  if (*(*(this + 9) + 2869))
  {
    AppleBCMWLANBusInterfacePCIe::setDeviceInDeepSleep(this, 0);
    v2 = AppleBCMWLANBusInterfacePCIe::checkTCMAccessibility(this);
    AppleBCMWLANBusInterfacePCIe::setDeviceInDeepSleep(this, 1);
    return v2;
  }

  else
  {

    return AppleBCMWLANBusInterfacePCIe::checkTCMAccessibility(this);
  }
}

uint64_t AppleBCMWLANBusInterfacePCIe::dumpCoexSoCRAMToRegistry(AppleBCMWLANBusInterfacePCIe *this, const char *a2)
{
  if (AppleBCMWLANBusInterfacePCIe::isTCMAccessible(this))
  {
    v13 = 122880;
    v4 = OSData::withCapacity(0x1E000u);
    result = AppleBCMWLANBusInterface::getLogger(this);
    if (v4)
    {
      if (result)
      {
        AppleBCMWLANBusInterface::getLogger(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANBusInterfacePCIe::dumpCoexSoCRAMToRegistry(this);
        }
      }

      *&v6 = 0xAAAAAAAAAAAAAAAALL;
      *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v15 = v6;
      v16 = v6;
      bytes = v6;
      AppleBCMWLANChipConfigSpace::writeReg32(*(*(this + 9) + 3352), 0x84u, 0x1A000000u);
      if ((*(*this + 1000))(this, 0, v4, &v13, 0))
      {
        AppleBCMWLANBusInterfacePCIe::dumpCoexSoCRAMToRegistry(this);
        return (v4->release)(v4);
      }

      AppleBCMWLANChipConfigSpace::writeReg32(*(*(this + 9) + 3352), 0x84u, 0);
      if (AppleBCMWLANBusInterface::getLogger(this))
      {
        AppleBCMWLANBusInterface::getLogger(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANBusInterfacePCIe::dumpCoexSoCRAMToRegistry(this);
        }
      }

      v7 = OSData::withCapacity(v13 + 128);
      v8 = v7;
      *&bytes = 0x1504D4443;
      v9 = v13 + 8;
      DWORD2(bytes) = v13 + 16;
      if (v9 == v9 << 31 >> 31 && v9 + 8 == (v9 + 8) << 31 >> 31)
      {
        *&v15 = 0x1800000000000;
        *&v16 = 0x600000000001;
        OSData::appendBytes(v7, &bytes, 4uLL);
        OSData::appendBytes(v8, &bytes + 4, 2uLL);
        OSData::appendBytes(v8, &bytes + 6, 2uLL);
        OSData::appendBytes(v8, &bytes + 8, 4uLL);
        OSData::appendBytes(v8, &v15, 4uLL);
        OSData::appendBytes(v8, &v15 + 4, 4uLL);
        BytesNoCopy = OSData::getBytesNoCopy(v4, 0, 0x18000uLL);
        OSData::appendBytes(v8, BytesNoCopy, 0x18000uLL);
        OSData::appendBytes(v8, &v16, 4uLL);
        OSData::appendBytes(v8, &v16 + 4, 4uLL);
        v11 = OSData::getBytesNoCopy(v4, 0x18000uLL, 0x6000uLL);
        OSData::appendBytes(v8, v11, 0x6000uLL);
        if (AppleBCMWLANBusInterface::getLogger(this))
        {
          AppleBCMWLANBusInterface::getLogger(this);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANBusInterfacePCIe::dumpCoexSoCRAMToRegistry(this);
          }
        }

        v12 = (*(*this + 984))(this);
        setPropertyHelper(v12, a2, v8);
        if (!v8)
        {
          return (v4->release)(v4);
        }
      }

      else if (AppleBCMWLANBusInterface::getLogger(this) && (AppleBCMWLANBusInterface::getLogger(this), CCLogStream::shouldLog()))
      {
        AppleBCMWLANBusInterfacePCIe::dumpCoexSoCRAMToRegistry(this);
        if (!v8)
        {
          return (v4->release)(v4);
        }
      }

      else if (!v8)
      {
        return (v4->release)(v4);
      }

      (v8->release)(v8);
      return (v4->release)(v4);
    }

    if (result)
    {
      AppleBCMWLANBusInterface::getLogger(this);
      result = CCLogStream::shouldLog();
      if (result)
      {
        return AppleBCMWLANBusInterfacePCIe::dumpCoexSoCRAMToRegistry(this);
      }
    }
  }

  else
  {
    result = AppleBCMWLANBusInterface::getLogger(this);
    if (result)
    {
      AppleBCMWLANBusInterface::getLogger(this);
      result = CCLogStream::shouldLog();
      if (result)
      {
        return AppleBCMWLANBusInterfacePCIe::dumpCoexSoCRAMToRegistry(this);
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANBusInterfacePCIe::writeRTLV(AppleBCMWLANBusInterfacePCIe *this, AppleBCMWLANChipMemory *a2, unsigned __int8 *a3, unsigned int a4)
{
  v5 = *(this + 9);
  v6 = *(v5 + 2864) - a4 - 8;
  *(v5 + 2864) = v6;
  if (a3 && a4)
  {
    v7 = a3;
    v8 = a4;
    do
    {
      v9 = *v7++;
      AppleBCMWLANChipMemory::writeRAM8(a2);
      ++v6;
      --v8;
    }

    while (v8);
  }

  AppleBCMWLANChipMemory::writeRAM32(a2);

  return AppleBCMWLANChipMemory::writeRAM32(a2);
}

uint64_t AppleBCMWLANBusInterfacePCIe::writeSignatureRTLV(AppleBCMWLANBusInterface *a1, AppleBCMWLANChipMemory *a2, IO80211Buffer *a3, uint64_t a4)
{
  if (AppleBCMWLANBusInterface::getLogger(a1))
  {
    AppleBCMWLANBusInterface::getLogger(a1);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANBusInterfacePCIe::writeSignatureRTLV(a1);
    }
  }

  v8 = *(a4 + 48);
  v9 = *(a4 + 56);
  BytesNoCopy = IO80211Buffer::getBytesNoCopy(a3, v8, v9);
  AppleBCMWLANBusInterfacePCIe::writeRTLV(a1, a2, BytesNoCopy, v9);
  *(*(a1 + 9) + 2860) = *(*(a1 + 9) + 2864);
  return 0;
}

uint64_t AppleBCMWLANBusInterfacePCIe::writeVStatusRTLV(AppleBCMWLANBusInterfacePCIe *this, AppleBCMWLANChipMemory *a2)
{
  if (AppleBCMWLANBusInterface::getLogger(this))
  {
    AppleBCMWLANBusInterface::getLogger(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANBusInterfacePCIe::writeVStatusRTLV(this);
    }
  }

  v4 = IOMallocZeroData();
  if (v4)
  {
    AppleBCMWLANBusInterfacePCIe::writeRTLV(this, a2, v4, 0x28u);
    *(*(this + 9) + 2856) = *(*(this + 9) + 2864);
    IOFreeData();
    return 0;
  }

  else
  {
    v5 = 3758097098;
    if (AppleBCMWLANBusInterface::getLogger(this))
    {
      AppleBCMWLANBusInterface::getLogger(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANBusInterfacePCIe::writeVStatusRTLV(this);
      }
    }
  }

  return v5;
}

uint64_t AppleBCMWLANBusInterfacePCIe::writeMemoryMapRTLV(AppleBCMWLANBusInterface *a1, AppleBCMWLANChipMemory *a2, uint64_t a3)
{
  if (AppleBCMWLANBusInterface::getLogger(a1))
  {
    AppleBCMWLANBusInterface::getLogger(a1);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANBusInterfacePCIe::writeMemoryMapRTLV(a1);
    }
  }

  v6 = *(a3 + 8);
  v7 = *(a3 + 56);
  MemoryRAMAddress = AppleBCMWLANChipManagerPCIe::getMemoryRAMAddress(*(*(a1 + 9) + 3280));
  v9 = IOMallocZeroData();
  if (v9)
  {
    v10 = v9;
    v11 = MemoryRAMAddress + *(a3 + 8);
    v9[5].i32[0] = MemoryRAMAddress;
    v9[5].i32[1] = v11;
    v9[7] = vadd_s32(vdup_n_s32(MemoryRAMAddress + ((v6 + 7) & 0xFFFFFFF8)), 0x1100000001000);
    v12 = *(*(a1 + 9) + 2860) + MemoryRAMAddress;
    v9[6].i32[0] = v12;
    v9[6].i32[1] = v7 + v12 + 8;
    v13 = *(*(a1 + 9) + 2856) + MemoryRAMAddress;
    v9[4].i32[0] = v13;
    v9[4].i32[1] = v13 + 48;
    if (AppleBCMWLANBusInterface::getLogger(a1))
    {
      AppleBCMWLANBusInterface::getLogger(a1);
      if (CCLogStream::shouldLog())
      {
        Logger = AppleBCMWLANBusInterface::getLogger(a1);
        CCLogStream::logAlert(Logger, "[dk] %s@%d:FW Start: %u, FW End: %u, NVRAM Start: %u, NVRAM End: %u, heap start: %u, heap end: %u\n", "writeMemoryMapRTLV", 8147, v10[5].i32[0], v10[5].i32[1], v10[10].i32[0], v10[10].i32[1], v10[7].i32[0], v10[7].i32[1]);
      }
    }

    if (AppleBCMWLANBusInterface::getLogger(a1))
    {
      AppleBCMWLANBusInterface::getLogger(a1);
      if (CCLogStream::shouldLog())
      {
        v17 = AppleBCMWLANBusInterface::getLogger(a1);
        CCLogStream::logAlert(v17, "[dk] %s@%d:Signature Start: %u, Signature End: %u, vStatus Start: %u, vStatus End: %u\n", "writeMemoryMapRTLV", 8149, v10[6].i32[0], v10[6].i32[1], v10[4].i32[0], v10[4].i32[1]);
      }
    }

    AppleBCMWLANBusInterfacePCIe::writeRTLV(a1, a2, v10, 0x58u);
    IOFreeData();
    return 0;
  }

  else
  {
    v14 = 3758097098;
    if (AppleBCMWLANBusInterface::getLogger(a1))
    {
      AppleBCMWLANBusInterface::getLogger(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANBusInterfacePCIe::writeMemoryMapRTLV(a1);
      }
    }
  }

  return v14;
}

uint64_t AppleBCMWLANBusInterfacePCIe::isSecureBootEnabled(AppleBCMWLANBusInterfacePCIe *this)
{
  v2 = *(*(this + 9) + 3280);
  if (v2)
  {
    if ((*(*v2 + 232))(v2))
    {
      if (*(*(this + 9) + 4638) == 1)
      {
        if (AppleBCMWLANBusInterface::getLogger(this))
        {
          AppleBCMWLANBusInterface::getLogger(this);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANBusInterfacePCIe::isSecureBootEnabled(this);
          }
        }

        v3 = *(this + 9);
        if (!*(v3 + 3360) || (*(v3 + 3725) & 1) != 0 || (*(v3 + 1304) & 1) != 0 || *(v3 + 3706) == 1 && (*(v3 + 3710) & 1) != 0 || (*(v3 + 4809) & 1) != 0)
        {
          result = AppleBCMWLANBusInterface::getLogger(this);
          if (result)
          {
            AppleBCMWLANBusInterface::getLogger(this);
            result = CCLogStream::shouldLog();
            if (result)
            {
              AppleBCMWLANBusInterfacePCIe::isSecureBootEnabled(this);
              return 0;
            }
          }
        }

        else
        {
          return ((*(**(v3 + 3280) + 224))(*(v3 + 3280)) >> 1) & 1;
        }
      }

      else
      {
        return 1;
      }
    }

    else
    {
      result = AppleBCMWLANBusInterface::getLogger(this);
      if (result)
      {
        AppleBCMWLANBusInterface::getLogger(this);
        result = CCLogStream::shouldLog();
        if (result)
        {
          AppleBCMWLANBusInterfacePCIe::isSecureBootEnabled(this);
          return 0;
        }
      }
    }
  }

  else
  {
    result = AppleBCMWLANBusInterface::getLogger(this);
    if (result)
    {
      AppleBCMWLANBusInterface::getLogger(this);
      result = CCLogStream::shouldLog();
      if (result)
      {
        AppleBCMWLANBusInterfacePCIe::isSecureBootEnabled(this);
        return 0;
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANBusInterfacePCIe::createStaticRings(AppleBCMWLANBusInterfacePCIe *this)
{
  v2 = 3758097086;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v3 = *(this + 9);
  v4 = *(v3 + 3640);
  *(&v23 + 1) = this;
  *&v24 = v4;
  LOWORD(v21) = 0;
  v5 = *(v3 + 2890);
  DWORD1(v21) = 40;
  DWORD2(v21) = v5;
  *&v22 = AppleBCMWLANBusInterfacePCIe::workPendingForControl;
  *(&v22 + 1) = this;
  *&v23 = AppleBCMWLANBusInterfacePCIe::prepareForRingSubmission;
  if (!(*(*this + 1080))(this, v3 + 312, &v21, this, *(v3 + 3464), AppleBCMWLANBusInterfacePCIe::fillControlSubmitRing, AppleBCMWLANBusInterfacePCIe::ringErrorAction))
  {
    AppleBCMWLANBusInterfacePCIe::fillRingEndpointMemory(this, *(*(this + 9) + 312), 0);
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    LOWORD(v21) = 1;
    BYTE2(v21) = 2;
    v7 = *(*(this + 9) + 4464);
    if (!v7)
    {
      v7 = 256;
    }

    DWORD1(v21) = 32;
    DWORD2(v21) = v7;
    if (AppleBCMWLANBusInterface::getLogger(this))
    {
      AppleBCMWLANBusInterface::getLogger(this);
      if (CCLogStream::shouldLog())
      {
        Logger = AppleBCMWLANBusInterface::getLogger(this);
        CCLogStream::logAlert(Logger, "[dk] %s@%d:Creating Rx submission ring ringID %d, ringType %d, itemSize %d, itemCount %d", "createStaticRings", 8526, v21, BYTE2(v21), DWORD1(v21), DWORD2(v21));
      }
    }

    v8 = *(this + 9);
    v9 = *(v8 + 4480);
    if (v9)
    {
      v9 = AppleBCMWLANPCIeSkywalk::attachRxSubmRing(v9, &v21);
      v8 = *(this + 9);
    }

    *(v8 + 344) = v9;
    v10 = *(*(this + 9) + 344);
    if (v10)
    {
      AppleBCMWLANBusInterfacePCIe::fillRingEndpointMemory(this, v10, 1);
      v21 = 0u;
      v22 = 0u;
      v23 = 0u;
      v24 = 0u;
      BYTE2(v21) = 1;
      v11 = *(this + 9);
      v12 = *(v11 + 2892);
      DWORD1(v21) = 24;
      DWORD2(v21) = v12;
      if (!(*(*this + 1088))(this, v11 + 320, &v21, this, *(v11 + 3464), AppleBCMWLANBusInterfacePCIe::drainControlCompleteRing, AppleBCMWLANBusInterfacePCIe::ringErrorAction))
      {
        AppleBCMWLANBusInterfacePCIe::fillRingEndpointMemory(this, *(*(this + 9) + 320), 2);
        v21 = 0u;
        v22 = 0u;
        v23 = 0u;
        v24 = 0u;
        LOWORD(v21) = 2;
        BYTE2(v21) = 3;
        v13 = *(this + 9);
        if (*(v13 + 1200) <= 6u)
        {
          v14 = 32;
        }

        else
        {
          v14 = 40;
        }

        v15 = *(v13 + 4464);
        if (!v15)
        {
          v15 = 256;
        }

        *(&v21 + 4) = __PAIR64__(v15, v14);
        *(*(this + 9) + 352) = AppleBCMWLANPCIeSkywalk::attachDefaultRxCompRing(*(v13 + 4480), &v21);
        AppleBCMWLANBusInterfacePCIe::fillRingEndpointMemory(this, *(*(this + 9) + 352), 4);
        v21 = 0u;
        v22 = 0u;
        v23 = 0u;
        v24 = 0u;
        LOWORD(v21) = 1;
        BYTE2(v21) = 4;
        v16 = *(this + 9);
        if (*(v16 + 1200) <= 6u)
        {
          v17 = 16;
        }

        else
        {
          v17 = 24;
        }

        v18 = *(v16 + 4460);
        if (!v18)
        {
          v18 = 256;
        }

        *(&v21 + 4) = __PAIR64__(v18, v17);
        if (AppleBCMWLANBusInterface::getLogger(this))
        {
          AppleBCMWLANBusInterface::getLogger(this);
          if (CCLogStream::shouldLog())
          {
            v20 = AppleBCMWLANBusInterface::getLogger(this);
            CCLogStream::logAlert(v20, "[dk] %s@%d:Creating Tx completion ring ringID %d, ringType %d, itemSize %d, itemCount %d", "createStaticRings", 8579, v21, BYTE2(v21), DWORD1(v21), DWORD2(v21));
          }
        }

        *(*(this + 9) + 360) = AppleBCMWLANPCIeSkywalk::attachDefaultTxCompRing(*(*(this + 9) + 4480), &v21);
        AppleBCMWLANBusInterfacePCIe::fillRingEndpointMemory(this, *(*(this + 9) + 360), 3);
        return 0;
      }
    }
  }

  return v2;
}

uint64_t AppleBCMWLANBusInterfacePCIe::workPendingForControl(AppleBCMWLANBusInterfacePCIe *this)
{
  v2 = *(this + 9);
  v3 = *(v2 + 5204);
  v4 = 1 - *(v2 + 1176);
  v5 = (*(**(v2 + 1088) + 72))(*(v2 + 1088));
  v6 = *(this + 9);
  if (v4 >= v5)
  {
    v7 = (*(**(v6 + 1088) + 72))(*(v6 + 1088));
    v6 = *(this + 9);
  }

  else
  {
    v7 = 1 - *(v6 + 1176);
  }

  v8 = 1 - *(v6 + 1180);
  v9 = (*(**(v6 + 1096) + 72))(*(v6 + 1096));
  v10 = *(this + 9);
  if (v8 >= v9)
  {
    v11 = (*(**(v10 + 1096) + 72))(*(v10 + 1096));
    v10 = *(this + 9);
  }

  else
  {
    v11 = 1 - *(v10 + 1180);
  }

  v12 = 1 - (*(**(v10 + 1112) + 72))(*(v10 + 1112));
  v13 = *(this + 9);
  v14 = v13 + 4120 != *(v13 + 4120);
  if (v12 < v14)
  {
    v14 = 1 - (*(**(v13 + 1112) + 72))(*(v13 + 1112));
    v13 = *(this + 9);
  }

  v15 = 1 - (*(**(v13 + 1120) + 72))(*(v13 + 1120));
  v16 = *(this + 9);
  v17 = v16 + 4152 != *(v16 + 4152);
  if (v15 < v17)
  {
    v17 = 1 - (*(**(v16 + 1120) + 72))(*(v16 + 1120));
    v16 = *(this + 9);
  }

  v18 = 1 - (*(**(v16 + 1128) + 72))(*(v16 + 1128));
  v19 = *(this + 9);
  v20 = v19 + 4136 != *(v19 + 4136);
  if (v18 < v20)
  {
    v20 = 1 - (*(**(v19 + 1128) + 72))(*(v19 + 1128));
    v19 = *(this + 9);
  }

  v21 = 1 - (*(**(v19 + 1136) + 72))(*(v19 + 1136));
  v22 = *(this + 9);
  v23 = v22 + 4168 != *(v22 + 4168);
  if (v21 < v23)
  {
    v23 = 1 - (*(**(v22 + 1136) + 72))(*(v22 + 1136));
    v22 = *(this + 9);
  }

  v24 = v3 + v7 + v11 + v14 + v17 + v20 + v23 - *(v22 + 1152) - *(v22 + 1156) + *(v22 + 2888) + 1;
  if (*(v22 + 3992) == 2)
  {
    v24 = v24 - *(v22 + 1188) + 8;
  }

  return AppleBCMWLANBusInterface::getTxDescriptorCommandQueueSize(this) + v24;
}

uint64_t AppleBCMWLANBusInterfacePCIe::fillControlSubmitRing(AppleBCMWLANBusInterfacePCIe *this, AppleBCMWLANTxItemRing *a2, uint64_t a3)
{
  v3 = *(this + 9);
  if (*(v3 + 1306) != 1)
  {
    return 0;
  }

  if (*(v3 + 5204) == 1)
  {
    AppleBCMWLANBusInterfacePCIe::submitH2DMailboxMsg(this, a2, a3);
    return 1;
  }

  if (*(v3 + 3725) == 1)
  {
    AppleBCMWLANBusInterfacePCIe::flushPendingTxIOs(this);
    return 0;
  }

  v8 = (*(**(v3 + 1112) + 72))(*(v3 + 1112));
  v9 = *(this + 9);
  if (v8 || v9 + 4120 == *(v9 + 4120))
  {
    v10 = (*(**(v9 + 1120) + 72))(*(v9 + 1120));
    v11 = *(this + 9);
    if (v10 || v11 + 4152 == *(v11 + 4152))
    {
      v12 = (*(**(v11 + 1128) + 72))(*(v11 + 1128));
      v13 = *(this + 9);
      if (v12 || v13 + 4136 == *(v13 + 4136))
      {
        v14 = (*(**(v13 + 1136) + 72))(*(v13 + 1136));
        v15 = *(this + 9);
        if (v14 || v15 + 4168 == *(v15 + 4168))
        {
          if (*(v15 + 1180) <= 0)
          {
            if ((*(**(v15 + 1096) + 72))(*(v15 + 1096)))
            {
              AppleBCMWLANBusInterfacePCIe::submitDeleteFlowRequestMsg(this, a2, a3);
              ++*(*(this + 9) + 1180);
              return 1;
            }

            v15 = *(this + 9);
          }

          if (*(v15 + 1176) <= 0)
          {
            if ((*(**(v15 + 1088) + 72))(*(v15 + 1088)))
            {
              AppleBCMWLANBusInterfacePCIe::submitCreateFlowRequestMsg(this, a2, a3);
              ++*(*(this + 9) + 1176);
              return 1;
            }

            v15 = *(this + 9);
          }

          if (*(v15 + 3992) == 2 && *(v15 + 1188) <= 7)
          {
            result = AppleBCMWLANBusInterfacePCIe::submitControlBufferMsg(this, a2, a3, 37);
            *(*(this + 9) + 1188) += result;
          }

          else if (*(v15 + 1152) <= 0)
          {
            result = AppleBCMWLANBusInterfacePCIe::submitControlBufferMsg(this, a2, a3, 11);
            *(*(this + 9) + 1152) += result;
          }

          else if (*(v15 + 1156) >= *(v15 + 2888))
          {
            result = AppleBCMWLANBusInterface::getTxDescriptorCommandQueueSize(this);
            if (result)
            {

              return AppleBCMWLANBusInterfacePCIe::submitIOCtlRequestMsg(this, a2, a3);
            }
          }

          else
          {
            result = AppleBCMWLANBusInterfacePCIe::submitControlBufferMsg(this, a2, a3, 13);
            *(*(this + 9) + 1156) += result;
          }
        }

        else
        {

          return AppleBCMWLANBusInterfacePCIe::submitD2HRingDeleteMsg(this, a2, a3);
        }
      }

      else
      {

        return AppleBCMWLANBusInterfacePCIe::submitD2HRingCreateMsg(this, a2, a3);
      }
    }

    else
    {

      return AppleBCMWLANBusInterfacePCIe::submitH2DRingDeleteMsg(this, a2, a3);
    }
  }

  else
  {

    return AppleBCMWLANBusInterfacePCIe::submitH2DRingCreateMsg(this, a2, a3);
  }

  return result;
}

uint64_t AppleBCMWLANBusInterfacePCIe::ringErrorAction(AppleBCMWLANBusInterfacePCIe *this, AppleBCMWLANByteRing *a2, int a3, void *a4)
{
  result = AppleBCMWLANBusInterface::getLogger(this);
  if (a3 == -469794025)
  {
    if (result)
    {
      AppleBCMWLANBusInterface::getLogger(this);
      if (CCLogStream::shouldLog())
      {
        Logger = AppleBCMWLANBusInterface::getLogger(this);
        CCLogStream::logAlert(Logger, "[dk] %s@%d:Corrupted ring index of (%p), triggered trap\n", "ringErrorAction", 18073, a2);
      }
    }

    IOSleep(0x64uLL);
    v8 = *(this + 9);

    return AppleBCMWLANBusInterfacePCIe::forcedSoCRAMRead(this, (v8 + 3752), (v8 + 3760));
  }

  else if (result)
  {
    AppleBCMWLANBusInterface::getLogger(this);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v10 = AppleBCMWLANBusInterface::getLogger(this);
      return CCLogStream::logCrit(v10, "[dk] %s@%d:Unexpected ring error action (%d)\n", "ringErrorAction", 18079, a3);
    }
  }

  return result;
}

uint64_t AppleBCMWLANBusInterfacePCIe::fillRingEndpointMemory(AppleBCMWLANBusInterfacePCIe *this, AppleBCMWLANPCIeSubmissionRing *a2, int a3)
{
  v7 = 0xAAAAAAAAAAAAAAAALL;
  v8 = 0xAAAAAAAAAAAAAAAALL;
  LOWORD(v7) = (*(*a2 + 208))(a2);
  BYTE2(v7) = (*(*a2 + 216))(a2);
  WORD2(v7) = AppleBCMWLANItemRing::getItemCount(a2);
  HIWORD(v7) = AppleBCMWLANItemRing::getItemSize(a2);
  (*(*a2 + 240))(a2, &v8);
  AppleBCMWLANChipMemory::writeCommonRingMemory(*(*(this + 9) + 3368), a3, &v7);
  v7 = 0;
  v8 = 0;
  AppleBCMWLANChipMemory::readCommonRingMemory(*(*(this + 9) + 3368), a3, &v7);
  return 0;
}

uint64_t AppleBCMWLANBusInterfacePCIe::drainControlCompleteRing(AppleBCMWLANBusInterfacePCIe *this, AppleBCMWLANRxItemRing *a2, void *a3)
{
  kdebug_trace();
  *(*(this + 9) + 4784) = *(*(this + 9) + 4776);
  if (*(*(this + 9) + 1306) == 1)
  {
    mach_continuous_time();
    v6 = *(this + 9);
    absolutetime_to_nanoseconds();
    bytes = *a3;
    v23 = a3[2];
    v8 = (SBYTE2(bytes) & 0x80u) == 0;
    if ((((*(*a2 + 248))(a2) ^ v8) & 1) == 0)
    {
      if ((((*(*a2 + 248))(a2) ^ v8) & 1) == 0)
      {
        if (AppleBCMWLANBusInterface::getLogger(this))
        {
          AppleBCMWLANBusInterface::getLogger(this);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANBusInterfacePCIe::drainControlCompleteRing(this, BYTE2(bytes), a2, a2 & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000);
          }
        }
      }

      FaultReporter = AppleBCMWLANBusInterface::getFaultReporter(this);
      v10 = (*(*a2 + 248))(a2);
      v11 = (*(*a2 + 224))(a2);
      v12 = (*(*a2 + 232))(a2);
      CCFaultReporter::reportFault(FaultReporter, 5u, "/Library/Caches/com.apple.xbs/Sources/AppleBCMWLANV3_driverkit/Busses/PCIe/AppleBCMWLANBusInterfacePCIe.cpp", 0x31C3u, "drainControlCompleteRing", 0, -469794021, "phase=%u,expect=%u,r=%u,w=%u", BYTE2(bytes) >> 7, v10, v11, v12);
    }

    if (bytes <= 0xDu)
    {
      if (bytes > 5u)
      {
        switch(bytes)
        {
          case 6u:
            AppleBCMWLANBusInterfacePCIe::completeFlowRingDeleteResponseMsg(this, v7, &bytes);
            goto LABEL_45;
          case 0xAu:
            AppleBCMWLANBusInterfacePCIe::completeIOCtlRequestMsg(this, v7, &bytes);
            goto LABEL_45;
          case 0xCu:
            AppleBCMWLANBusInterfacePCIe::completeIOCtlResponseMsg(this, v7, &bytes);
            goto LABEL_45;
        }
      }

      else
      {
        switch(bytes)
        {
          case 1u:
            AppleBCMWLANBusInterfacePCIe::completeIOCtlGeneralResponseMsg(this, v7, &bytes);
            goto LABEL_45;
          case 2u:
            AppleBCMWLANBusInterfacePCIe::completeIOCtlRingStatusMsg(this, v7, &bytes);
            goto LABEL_45;
          case 4u:
            AppleBCMWLANBusInterfacePCIe::completeFlowRingCreateResponseMsg(this, v7, &bytes);
            goto LABEL_45;
        }
      }
    }

    else if (bytes <= 0x1Du)
    {
      switch(bytes)
      {
        case 0xEu:
          AppleBCMWLANBusInterfacePCIe::completeRxEventMsg(this, a2, &bytes);
          (*(**(*(this + 9) + 312) + 192))(*(*(this + 9) + 312), 1, 1);
          goto LABEL_45;
        case 0x14u:
          if (AppleBCMWLANBusInterface::getLogger(this))
          {
            AppleBCMWLANBusInterface::getLogger(this);
            if (CCLogStream::shouldLog())
            {
              Logger = AppleBCMWLANBusInterface::getLogger(this);
              CCLogStream::logCrit(Logger, "[dk] %s@%d:Received kBCOMIPCDMATransferComplete (%d) message on ring %p\n", "drainControlCompleteRing", 12782, 20, a2);
            }
          }

          goto LABEL_45;
        case 0x1Du:
          AppleBCMWLANBusInterfacePCIe::completeH2DRingCreate(this, v7, &bytes);
          goto LABEL_45;
      }
    }

    else if (bytes > 0x2Cu)
    {
      if (bytes == 45)
      {
        AppleBCMWLANBusInterfacePCIe::completeH2DRingDelete(this, v7, &bytes);
        goto LABEL_45;
      }

      if (bytes == 46)
      {
        AppleBCMWLANBusInterfacePCIe::completeD2HRingDelete(this, v7, &bytes);
        goto LABEL_45;
      }
    }

    else
    {
      if (bytes == 30)
      {
        AppleBCMWLANBusInterfacePCIe::completeD2HRingCreate(this, v7, &bytes);
        goto LABEL_45;
      }

      if (bytes == 36)
      {
        AppleBCMWLANBusInterfacePCIe::handleMBData(this, HIDWORD(bytes));
LABEL_45:
        v13 = 1;
        kdebug_trace();
        return v13;
      }
    }

    if (AppleBCMWLANBusInterface::getLogger(this))
    {
      AppleBCMWLANBusInterface::getLogger(this);
      if (CCLogStream::shouldLog())
      {
        v19 = AppleBCMWLANBusInterface::getLogger(this);
        CCLogStream::logCrit(v19, "[dk] %s@%d:Received %#X (%d) message on ring %p @ %p\n", "drainControlCompleteRing", 12824, bytes, bytes, a2, a3);
      }
    }

    AppleBCMWLANBusInterface::getLogger(this);
    AppleBCMWLANItemRing::getItemSize(a2);
    IO80211Hexdump();
    (*(*a2 + 152))(a2, "ring", 1);
    keys = OSString::withCString("CmplRingMsg.bin");
    ItemSize = AppleBCMWLANItemRing::getItemSize(a2);
    values = OSData::withBytes(&bytes, ItemSize);
    v16 = AppleBCMWLANBusInterface::getFaultReporter(this);
    v17 = OSDictionary::withObjects(&values, &keys, 1u, 0);
    CCFaultReporter::reportFault(v16, 5u, "/Library/Caches/com.apple.xbs/Sources/AppleBCMWLANV3_driverkit/Busses/PCIe/AppleBCMWLANBusInterfacePCIe.cpp", 0x3225u, "drainControlCompleteRing", v17, -469794037, "msgType=%u", bytes);
    AppleBCMWLANUtil::releaseOSObjectArray(&keys, &values, 1);
    goto LABEL_45;
  }

  return 0;
}

uint64_t AppleBCMWLANBusInterfacePCIe::fillRingEndpointMemory(AppleBCMWLANBusInterfacePCIe *this, AppleBCMWLANPCIeCompletionRing *a2, int a3)
{
  v7 = 0xAAAAAAAAAAAAAAAALL;
  v8 = 0xAAAAAAAAAAAAAAAALL;
  LOWORD(v7) = (*(*a2 + 208))(a2);
  BYTE2(v7) = (*(*a2 + 216))(a2);
  WORD2(v7) = AppleBCMWLANItemRing::getItemCount(a2);
  HIWORD(v7) = AppleBCMWLANItemRing::getItemSize(a2);
  (*(*a2 + 240))(a2, &v8);
  AppleBCMWLANChipMemory::writeCommonRingMemory(*(*(this + 9) + 3368), a3, &v7);
  v7 = 0;
  v8 = 0;
  AppleBCMWLANChipMemory::readCommonRingMemory(*(*(this + 9) + 3368), a3, &v7);
  return 0;
}

uint64_t AppleBCMWLANBusInterfacePCIe::createDynamicRings(AppleBCMWLANBusInterfacePCIe *this)
{
  v2 = 3758097086;
  v5[0] = this;
  v5[1] = AppleBCMWLANBusInterfacePCIe::D2HDebugRingCreateComplete;
  v5[2] = 0;
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  LOWORD(v6) = 3;
  BYTE2(v6) = 4;
  *(&v6 + 4) = 0x4000000018;
  if (!AppleBCMWLANBusInterfacePCIe::createDynamicCompletionRing(this, &v6, v5, AppleBCMWLANBusInterfacePCIe::drainDebugCompleteRing, AppleBCMWLANBusInterfacePCIe::ringErrorAction))
  {
    if (AppleBCMWLANBusInterface::getLogger(this))
    {
      AppleBCMWLANBusInterface::getLogger(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANBusInterfacePCIe::createDynamicRings(this);
      }
    }

    (*(**(*(this + 9) + 3840) + 56))(*(*(this + 9) + 3840), 5000);
    v3 = *(this + 9);
    if (*(v3 + 4534) != 1)
    {
      return 0;
    }

    v8 = 0u;
    v9 = 0u;
    v6 = 0u;
    v7 = 0u;
    LOWORD(v6) = 4;
    BYTE2(v6) = 8;
    *(&v6 + 4) = 0x10000000018;
    if (!AppleBCMWLANPCIeSkywalk::createLowLatencyCompRing(*(v3 + 4480), &v6, 0))
    {
      v8 = 0u;
      v9 = 0u;
      v6 = 0u;
      v7 = 0u;
      LOWORD(v6) = 5;
      BYTE2(v6) = 9;
      *(&v6 + 4) = 0x10000000028;
      if (!AppleBCMWLANPCIeSkywalk::createLowLatencyCompRing(*(*(this + 9) + 4480), &v6, 1u))
      {
        return 0;
      }
    }
  }

  return v2;
}

uint64_t AppleBCMWLANBusInterfacePCIe::D2HDebugRingCreateComplete(AppleBCMWLANBusInterfacePCIe *this, AppleBCMWLANPCIeCompletionRing *a2, int a3, void *a4)
{
  if (AppleBCMWLANBusInterface::getLogger(this))
  {
    AppleBCMWLANBusInterface::getLogger(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANBusInterfacePCIe::D2HDebugRingCreateComplete();
    }
  }

  *(*(this + 9) + 336) = a2;
  if (!a3)
  {
    v18[0] = this;
    v18[1] = AppleBCMWLANBusInterfacePCIe::H2DDebugRingCreateComplete;
    v18[2] = 0;
    v13 = 0u;
    v16 = 0u;
    v17 = 0u;
    LOWORD(v13) = 2;
    BYTE2(v13) = 5;
    *(&v13 + 4) = 0x4000000028;
    v14 = AppleBCMWLANBusInterfacePCIe::workPendingForDebug;
    v15 = this;
    result = AppleBCMWLANBusInterfacePCIe::createDynamicSubmissionRing(this, *(*(this + 9) + 336), &v13, v18, AppleBCMWLANBusInterfacePCIe::fillDebugSubmitRing, AppleBCMWLANBusInterfacePCIe::ringErrorAction);
    if (!result)
    {
      return result;
    }

    v11 = result;
    if (AppleBCMWLANBusInterface::getLogger(this))
    {
      AppleBCMWLANBusInterface::getLogger(this);
      if (CCLogStream::shouldLog())
      {
        Logger = AppleBCMWLANBusInterface::getLogger(this);
        CCLogStream::logCrit(Logger, "[dk] %s@%d:createDynamicSubmissionRing() failed with 0x%x\n", "D2HDebugRingCreateComplete", 20605, v11);
      }
    }
  }

  (*(**(*(this + 9) + 3840) + 80))(*(*(this + 9) + 3840));
  if (*(*(this + 9) + 1308))
  {
    result = AppleBCMWLANBusInterface::getLogger(this);
    if (result)
    {
      AppleBCMWLANBusInterface::getLogger(this);
      result = CCLogStream::shouldLog();
      if (result)
      {
        return AppleBCMWLANBusInterfacePCIe::D2HDebugRingCreateComplete(this);
      }
    }
  }

  else
  {
    FaultReporter = AppleBCMWLANBusInterface::getFaultReporter(this);
    result = CCFaultReporter::reportFault(FaultReporter, 4u, "/Library/Caches/com.apple.xbs/Sources/AppleBCMWLANV3_driverkit/Busses/PCIe/AppleBCMWLANBusInterfacePCIe.cpp", 0x5087u, "D2HDebugRingCreateComplete", 0, -469794022, 0);
    if (result)
    {
      v9 = result;
      result = AppleBCMWLANBusInterface::getLogger(this);
      if (result)
      {
        AppleBCMWLANBusInterface::getLogger(this);
        result = CCLogStream::shouldLog();
        if (result)
        {
          v10 = AppleBCMWLANBusInterface::getLogger(this);
          return CCLogStream::logCrit(v10, "[dk] %s@%d:Failed to report fault with 0x%x\n", "D2HDebugRingCreateComplete", 20617, v9);
        }
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANBusInterfacePCIe::createDynamicCompletionRing(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = 3758097090;
  if (!a2 || !a3 || !*a3 || !*(a3 + 8))
  {
    return v5;
  }

  v10 = AppleBCMWLANDynamicRingOperationContext::withCompletion(a3);
  if (!v10)
  {
    return 3758097085;
  }

  v11 = v10;
  if (a4)
  {
    v12 = a4;
    if (a5)
    {
LABEL_8:
      v13 = a5;
      goto LABEL_12;
    }
  }

  else
  {
    v12 = 0;
    if (a5)
    {
      goto LABEL_8;
    }
  }

  v13 = 0;
LABEL_12:
  v5 = (*(**(*(a1 + 72) + 3472) + 56))(*(*(a1 + 72) + 3472), AppleBCMWLANBusInterfacePCIe::createDynamicCompletionRingGated, v10, a2, v12, v13);
  if (v5)
  {
    (v11->release)(v11);
  }

  return v5;
}

uint64_t AppleBCMWLANBusInterfacePCIe::drainDebugCompleteRing(AppleBCMWLANBusInterfacePCIe *this, AppleBCMWLANRxItemRing *a2, void *a3)
{
  if (*(*(this + 9) + 1306) != 1)
  {
    return 0;
  }

  bytes = *a3;
  v25 = a3[2];
  v6 = SBYTE2(bytes);
  if ((((*(*a2 + 248))(a2) ^ (v6 >= 0)) & 1) == 0)
  {
    if ((((*(*a2 + 248))(a2) ^ (v6 >= 0)) & 1) == 0)
    {
      if (AppleBCMWLANBusInterface::getLogger(this))
      {
        AppleBCMWLANBusInterface::getLogger(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANBusInterfacePCIe::drainDebugCompleteRing(this, v6, a2, a2 & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000);
        }
      }
    }

    keys = OSString::withCString("DebugCmplRingMsg.bin");
    ItemSize = AppleBCMWLANItemRing::getItemSize(a2);
    values = OSData::withBytes(&bytes, ItemSize);
    FaultReporter = AppleBCMWLANBusInterface::getFaultReporter(this);
    v9 = OSDictionary::withObjects(&values, &keys, 1u, 0);
    v10 = BYTE2(bytes) >> 7;
    v11 = (*(*a2 + 248))(a2);
    v12 = (*(*a2 + 224))(a2);
    v13 = (*(*a2 + 232))(a2);
    CCFaultReporter::reportFault(FaultReporter, 5u, "/Library/Caches/com.apple.xbs/Sources/AppleBCMWLANV3_driverkit/Busses/PCIe/AppleBCMWLANBusInterfacePCIe.cpp", 0x30F8u, "drainDebugCompleteRing", v9, -469794021, "phase=%u,expect=%u,r=%u,w=%u", v10, v11, v12, v13);
    AppleBCMWLANUtil::releaseOSObjectArray(&keys, &values, 1);
  }

  v14 = bytes;
  Logger = AppleBCMWLANBusInterface::getLogger(this);
  if (v14 == 26)
  {
    if (Logger)
    {
      AppleBCMWLANBusInterface::getLogger(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANBusInterfacePCIe::drainDebugCompleteRing(this);
      }
    }

    AppleBCMWLANBusInterfacePCIe::completeDebugBufferCompletetMsg(this, v16, &bytes);
  }

  else
  {
    if (Logger)
    {
      AppleBCMWLANBusInterface::getLogger(this);
      if (CCLogStream::shouldLog())
      {
        v21 = AppleBCMWLANBusInterface::getLogger(this);
        CCLogStream::logCrit(v21, "[dk] %s@%d:Received %#X (%d) message on ring %p @ %p\n", "drainDebugCompleteRing", 12548, bytes, bytes, a2, a3);
      }
    }

    AppleBCMWLANBusInterface::getLogger(this);
    AppleBCMWLANItemRing::getItemSize(a2);
    IO80211Hexdump();
    (*(*a2 + 152))(a2, "ring", 1);
    keys = OSString::withCString("DebugCmplRingMsg.bin");
    v18 = AppleBCMWLANItemRing::getItemSize(a2);
    values = OSData::withBytes(&bytes, v18);
    v19 = AppleBCMWLANBusInterface::getFaultReporter(this);
    v20 = OSDictionary::withObjects(&values, &keys, 1u, 0);
    CCFaultReporter::reportFault(v19, 5u, "/Library/Caches/com.apple.xbs/Sources/AppleBCMWLANV3_driverkit/Busses/PCIe/AppleBCMWLANBusInterfacePCIe.cpp", 0x3112u, "drainDebugCompleteRing", v20, -469794037, "msgType=%u", bytes);
    AppleBCMWLANUtil::releaseOSObjectArray(&keys, &values, 1);
  }

  return 1;
}

uint64_t AppleBCMWLANBusInterfacePCIe::createDynamicSubmissionRing(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = 3758097090;
  if (!a2 || !a3 || !a4 || !*a4 || !*(a4 + 8))
  {
    return v6;
  }

  v12 = AppleBCMWLANDynamicRingOperationContext::withCompletion(a4);
  if (!v12)
  {
    return 3758097085;
  }

  v13 = v12;
  AppleBCMWLANDynamicRingOperationContext::setCompletionRingPtr(v12, a2);
  if (a5)
  {
    v14 = a5;
    if (a6)
    {
LABEL_9:
      v15 = a6;
      goto LABEL_13;
    }
  }

  else
  {
    v14 = 0;
    if (a6)
    {
      goto LABEL_9;
    }
  }

  v15 = 0;
LABEL_13:
  v6 = (*(**(*(a1 + 72) + 3472) + 56))(*(*(a1 + 72) + 3472), AppleBCMWLANBusInterfacePCIe::createDynamicSubmissionRingGated, v13, a3, v14, v15);
  if (v6)
  {
    (v13->release)(v13);
  }

  return v6;
}

uint64_t AppleBCMWLANBusInterfacePCIe::createDynamicSubmissionRingGated(void *a1, AppleBCMWLANDynamicRingOperationContext *this, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*(a1[9] + 1306) != 1)
  {
    return 3758097112;
  }

  if (a4)
  {
    v8 = a4;
    if (a5)
    {
LABEL_4:
      v9 = a5;
      goto LABEL_8;
    }
  }

  else
  {
    v8 = 0;
    if (a5)
    {
      goto LABEL_4;
    }
  }

  v9 = 0;
LABEL_8:
  v15 = 0;
  RingOperationCompletionPtr = AppleBCMWLANDynamicRingOperationContext::getRingOperationCompletionPtr(this);
  v10 = (*(*a1 + 1080))(a1, &v15, a3, *RingOperationCompletionPtr, 0, v8, v9);
  AppleBCMWLANDynamicRingOperationContext::setSubmissionRingPtr(this, v15);
  if (v10)
  {
    return v10;
  }

  v12 = a1[9];
  result = AppleBCMWLANDynamicRingOperationContext::getChain(this);
  v14 = *(v12 + 4128);
  if (*v14 == v12 + 4120)
  {
    *result = v12 + 4120;
    *(result + 8) = v14;
    *v14 = result;
    *(v12 + 4128) = result;
    (*(**(a1[9] + 312) + 192))(*(a1[9] + 312), 1, 1);
    return v10;
  }

  __break(1u);
  return result;
}

uint64_t AppleBCMWLANBusInterfacePCIe::createSubmissionRing(AppleBCMWLANBusInterface *this, OSObject **a2, _OWORD *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  result = 3758097090;
  if (a2 && a3 && a4)
  {
    v29 = 0;
    v14 = a3[1];
    v23[0] = *a3;
    v23[1] = v14;
    v15 = a3[3];
    v23[2] = a3[2];
    v24 = v15;
    v16 = *(this + 9);
    if (!v15)
    {
      *&v24 = v16[455];
      DWORD2(v24) = 1000;
    }

    v25 = 0;
    v26 = 0;
    v17 = v16[19];
    v27 = v16[12];
    v28 = v17;
    v18 = v16[406];
    v19 = v16[407];
    v30 = 0;
    v31 = v19;
    v32 = v18;
    Logger = AppleBCMWLANBusInterface::getLogger(this);
    v21 = AppleBCMWLANPCIeSubmissionRing::withOptions(a4, a6, a7, v23, Logger);
    if (v21)
    {
      v22 = v21;
      AppleBCMWLANItemRing::setMMIORecorder(v21, *(*(this + 9) + 3144));
      if (a5)
      {
        (*(**(*(this + 9) + 3472) + 56))(*(*(this + 9) + 3472), AppleBCMWLANBusInterfacePCIe::enableSubmissionRingGated, v22, a5, 0, 0);
      }

      result = 0;
      *a2 = v22;
    }

    else
    {
      return 3758097086;
    }
  }

  return result;
}

void *AppleBCMWLANBusInterfacePCIe::enableSubmissionRingGated(uint64_t a1, AppleBCMWLANPCIeSubmissionRing *a2, uint64_t a3)
{
  (*(*a3 + 64))(a3);
  (*(*a2 + 64))(a2);
  v5 = *(a1 + 72);
  result = AppleBCMWLANPCIeSubmissionRing::getChain(a2);
  v7 = *(v5 + 288);
  if (*v7 == v5 + 280)
  {
    *result = v5 + 280;
    result[1] = v7;
    *v7 = result;
    *(v5 + 288) = result;
    return 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t AppleBCMWLANBusInterfacePCIe::createDynamicCompletionRingGated(void *a1, AppleBCMWLANDynamicRingOperationContext *this, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*(a1[9] + 1306) != 1)
  {
    return 3758097112;
  }

  if (a4)
  {
    v8 = a4;
    if (a5)
    {
LABEL_4:
      v9 = a5;
      goto LABEL_8;
    }
  }

  else
  {
    v8 = 0;
    if (a5)
    {
      goto LABEL_4;
    }
  }

  v9 = 0;
LABEL_8:
  v15 = 0;
  RingOperationCompletionPtr = AppleBCMWLANDynamicRingOperationContext::getRingOperationCompletionPtr(this);
  v10 = (*(*a1 + 1088))(a1, &v15, a3, *RingOperationCompletionPtr, 0, v8, v9);
  AppleBCMWLANDynamicRingOperationContext::setCompletionRingPtr(this, v15);
  if (v10)
  {
    return v10;
  }

  v12 = a1[9];
  result = AppleBCMWLANDynamicRingOperationContext::getChain(this);
  v14 = *(v12 + 4144);
  if (*v14 == v12 + 4136)
  {
    *result = v12 + 4136;
    *(result + 8) = v14;
    *v14 = result;
    *(v12 + 4144) = result;
    (*(**(a1[9] + 312) + 192))(*(a1[9] + 312), 1, 1);
    return v10;
  }

  __break(1u);
  return result;
}

uint64_t AppleBCMWLANBusInterfacePCIe::createCompletionRing(AppleBCMWLANBusInterface *this, OSObject **a2, _OWORD *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  result = 3758097090;
  if (a2 && a3 && a4)
  {
    v29 = 0;
    v14 = a3[1];
    v23[0] = *a3;
    v23[1] = v14;
    v15 = a3[3];
    v23[2] = a3[2];
    v24 = v15;
    v16 = *(this + 9);
    if (!v15)
    {
      *&v24 = v16[455];
      DWORD2(v24) = 1000;
    }

    v25 = 0;
    v26 = 0;
    v17 = v16[33];
    v27 = v16[26];
    v28 = v17;
    v18 = v16[406];
    v19 = v16[407];
    v30 = 0;
    v31 = v19;
    v32 = v18;
    Logger = AppleBCMWLANBusInterface::getLogger(this);
    v21 = AppleBCMWLANPCIeCompletionRing::withOptions(a4, a6, a7, v23, Logger);
    if (v21)
    {
      v22 = v21;
      AppleBCMWLANItemRing::setMMIORecorder(v21, *(*(this + 9) + 3144));
      if (a5)
      {
        (*(**(*(this + 9) + 3472) + 56))(*(*(this + 9) + 3472), AppleBCMWLANBusInterfacePCIe::enableCompletionRingGated, v22, a5, 0, 0);
      }

      result = 0;
      *a2 = v22;
    }

    else
    {
      return 3758097086;
    }
  }

  return result;
}

void *AppleBCMWLANBusInterfacePCIe::enableCompletionRingGated(uint64_t a1, AppleBCMWLANPCIeCompletionRing *a2, uint64_t a3)
{
  (*(*a3 + 64))(a3);
  (*(*a2 + 64))(a2);
  v5 = *(a1 + 72);
  result = AppleBCMWLANPCIeCompletionRing::getChain(a2);
  v7 = *(v5 + 304);
  if (*v7 == v5 + 296)
  {
    *result = v5 + 296;
    result[1] = v7;
    *v7 = result;
    *(v5 + 304) = result;
    return 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t AppleBCMWLANBusInterfacePCIe::disableSubmissionRingGated(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 && (*(*a2 + 88))(a2))
  {
    v6 = *(*(a1 + 72) + 280);
    while (v6 != (*(a1 + 72) + 280))
    {
      v7 = v6;
      v6 = *v6;
      result = AppleBCMWLANPCIeSubmissionRing::getRingFromChain(v7);
      if (result == a2)
      {
        v9 = v7[1];
        if (*v9 == v7)
        {
          v10 = *v7;
          if (*(*v7 + 8) == v7)
          {
            *(v10 + 8) = v9;
            *v9 = v10;
            *v7 = 0;
            v7[1] = 0;
            (*(*a2 + 72))(a2);
            (*(*a3 + 72))(a3, a2);
            return 0;
          }
        }

        __break(1u);
        return result;
      }
    }
  }

  return 0;
}

uint64_t AppleBCMWLANBusInterfacePCIe::destroyDynamicCompletionRing(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = 3758097090;
  if (a2 && a3 && *a3 && *(a3 + 8))
  {
    v6 = AppleBCMWLANDynamicRingOperationContext::withCompletion(a3);
    if (v6)
    {
      v7 = v6;
      AppleBCMWLANDynamicRingOperationContext::setCompletionRingPtr(v6, a2);
      v3 = (*(**(*(a1 + 72) + 3472) + 56))(*(*(a1 + 72) + 3472), AppleBCMWLANBusInterfacePCIe::destroyDynamicCompletionRingGated, v7, 0, 0, 0);
      if (v3 == -536870166)
      {
        (v7->release)(v7);
        return 3758097130;
      }
    }

    else
    {
      return 3758097085;
    }
  }

  return v3;
}

uint64_t AppleBCMWLANBusInterfacePCIe::destroyDynamicCompletionRingGated(AppleBCMWLANBusInterfacePCIe *this, AppleBCMWLANDynamicRingOperationContext *a2)
{
  v2 = *(this + 9);
  if (*(v2 + 1306) != 1)
  {
    return 3758097130;
  }

  result = AppleBCMWLANDynamicRingOperationContext::getChain(a2);
  v5 = *(v2 + 4176);
  if (*v5 == v2 + 4168)
  {
    *result = v2 + 4168;
    *(result + 8) = v5;
    *v5 = result;
    *(v2 + 4176) = result;
    (*(**(*(this + 9) + 312) + 192))(*(*(this + 9) + 312), 1, 1);
    return 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t AppleBCMWLANBusInterfacePCIe::disableCompletionRingGated(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 && (*(*a2 + 88))(a2))
  {
    v6 = *(*(a1 + 72) + 296);
    while (v6 != (*(a1 + 72) + 296))
    {
      v7 = v6;
      v6 = *v6;
      result = AppleBCMWLANPCIeCompletionRing::getRingFromChain(v7);
      if (result == a2)
      {
        v9 = v7[1];
        if (*v9 == v7)
        {
          v10 = *v7;
          if (*(*v7 + 8) == v7)
          {
            *(v10 + 8) = v9;
            *v9 = v10;
            *v7 = 0;
            v7[1] = 0;
            (*(*a2 + 72))(a2);
            (*(*a3 + 72))(a3, a2);
            return 0;
          }
        }

        __break(1u);
        return result;
      }
    }
  }

  return 0;
}

uint64_t AppleBCMWLANBusInterfacePCIe::createTransmitFlowRing(AppleBCMWLANBusInterface *this, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, __int16 a9)
{
  v10 = 3758097112;
  v30 = -1;
  v11 = *(this + 9);
  if (*(v11 + 1306))
  {
    if (!*(a3 + 48))
    {
      *(a3 + 48) = *(v11 + 3640);
      *(a3 + 56) = 1000;
      v11 = *(this + 9);
    }

    *&v16 = 0xAAAAAAAAAAAAAAAALL;
    *(&v16 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *v31 = v16;
    *&v31[16] = v16;
    *&v31[32] = v16;
    *&v31[48] = v16;
    *&v35[16] = v16;
    *&v35[32] = v16;
    *v35 = v16;
    v33 = v16;
    v34 = v16;
    *&v31[64] = v16;
    v32 = v16;
    v17 = *(a3 + 16);
    *&v31[8] = *a3;
    *&v31[24] = v17;
    v18 = *(a3 + 48);
    *&v31[40] = *(a3 + 32);
    *&v31[56] = v18;
    v19 = *(v11 + 96);
    v20 = *(a5 + 16);
    *&v35[8] = *a5;
    *v35 = *(v11 + 3248);
    *(&v34 + 1) = *(v11 + 3256);
    v21 = *(v11 + 152);
    *(&v32 + 1) = v19;
    *&v33 = v21;
    *&v35[24] = v20;
    v35[40] = a8;
    *&v35[41] = 0;
    v35[43] = 0;
    *v31 = a9;
    v36 = *(a5 + 24);
    Logger = AppleBCMWLANBusInterface::getLogger(this);
    v23 = AppleBCMWLANPCIeTransmitFlowRing::withOptions(a4, a6, a7, v31, Logger);
    if (v23)
    {
      v24 = v23;
      v25 = AppleBCMWLANHashtable::add(*(*(this + 9) + 1088), v23, &v30);
      if (v25)
      {
        v10 = v25;
        if (AppleBCMWLANBusInterface::getLogger(this))
        {
          AppleBCMWLANBusInterface::getLogger(this);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANBusInterfacePCIe::createTransmitFlowRing(this);
          }
        }

        (*(*v24 + 16))(v24);
      }

      else
      {
        (*(*v24 + 72))(v24);
        (*(*v24 + 320))(v24, 1);
        v26 = 1 << ((*(*v24 + 208))(v24) & 7);
        v27 = *(this + 9);
        v28 = (*(*v24 + 208))(v24);
        *(v27 + (v28 >> 3) + 5168) |= v26;
        (*(*v24 + 336))(v24, v30);
        AppleBCMWLANItemRing::setMMIORecorder(v24, *(*(this + 9) + 3144));
        v10 = 0;
        *a2 = v24;
      }
    }

    else
    {
      return 3758097086;
    }
  }

  else if (AppleBCMWLANBusInterface::getLogger(this))
  {
    AppleBCMWLANBusInterface::getLogger(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANBusInterfacePCIe::createTransmitFlowRing(this);
    }
  }

  return v10;
}

uint64_t AppleBCMWLANBusInterfacePCIe::createFlow(AppleBCMWLANBusInterface *this, unsigned int a2, unsigned __int8 *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = *(*(this + 9) + 4608);
  if (v16 && CCLogStream::shouldLog(v16, 1uLL))
  {
    v28 = 0u;
    v30 = 0;
    v29 = 0u;
    memset(&v27[2], 0, 80);
    *v27 = 23553;
    WORD6(v28) = 6149;
    AppleBCMWLANBusInterfacePCIe::pcapFillBusState(this, &v27[2]);
    BYTE14(v28) = 0;
    LOWORD(v29) = a2;
    v25 = *a3;
    HIBYTE(v28) = a3[13];
    *(&v30 + 2) = 0;
    HIDWORD(v29) = *(a3 + 1);
    LOWORD(v30) = *(a3 + 5);
    v26 = *(a3 + 7);
    *(&v29 + 2) = v25;
    *(&v29 + 6) = v26;
    WORD5(v29) = *(a3 + 11);
    CCLogStream::logHeaderAndBufIf(*(*(this + 9) + 4608), 1uLL, 0, 0, 0, 0, v27, 0x7AuLL);
  }

  if (a2 == 0xFFFF)
  {
    v18 = 3758097086;
    if (AppleBCMWLANBusInterface::getLogger(this))
    {
      AppleBCMWLANBusInterface::getLogger(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANBusInterfacePCIe::createFlow(this);
      }
    }
  }

  else
  {
    v17 = *(this + 9);
    if (*(v17 + 8 * a2 + 4816))
    {
      v18 = 3758097086;
      if (AppleBCMWLANBusInterface::getLogger(this))
      {
        AppleBCMWLANBusInterface::getLogger(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANBusInterfacePCIe::createFlow(this);
        }
      }
    }

    else
    {
      if (*(v17 + 372) <= a2 && *(v17 + 376) > a2)
      {
        *(v17 + 8 * a2 + 384) = 0;
        v17 = *(this + 9);
      }

      memset(v27, 0, 64);
      *&v27[48] = *(v17 + 3640);
      *&v27[56] = 1000;
      *v27 = a2;
      v27[2] = 5;
      v19 = *(v17 + 4460);
      if (!v19)
      {
        v19 = 256;
      }

      *&v27[4] = 48;
      *&v27[8] = v19;
      *&v27[16] = a5;
      *&v27[24] = a4;
      v20 = (*(*this + 1096))(this, v17 + 8 * a2 + 4816, v27, a4, a3, a6, a7, a8, a2);
      v21 = *(this + 9);
      if (v20)
      {
        v18 = 3758097086;
        *(v21 + 8 * a2 + 4816) = 0;
        if (AppleBCMWLANBusInterface::getLogger(this))
        {
          AppleBCMWLANBusInterface::getLogger(this);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANBusInterfacePCIe::createFlow(this);
          }
        }
      }

      else
      {
        (*(**(v21 + 3464) + 64))(*(v21 + 3464), *(v21 + 8 * a2 + 4816));
        v18 = 0;
        ++*(*(this + 9) + 4620);
        v22 = *(this + 9);
        v23 = *(v22 + 4616);
        if (v23 <= *(v22 + 4620))
        {
          v23 = *(v22 + 4620);
        }

        *(v22 + 4616) = v23;
      }
    }
  }

  return v18;
}

uint64_t AppleBCMWLANBusInterfacePCIe::pcapFillBusState(AppleBCMWLANBusInterface *a1, uint64_t a2)
{
  *a2 = *(*(a1 + 9) + 1148);
  *(a2 + 4) = *(*(a1 + 9) + 1152);
  *(a2 + 8) = *(*(a1 + 9) + 1160);
  *(a2 + 12) = *(*(a1 + 9) + 1156);
  *(a2 + 16) = *(*(a1 + 9) + 1176);
  *(a2 + 24) = *(*(a1 + 9) + 2840);
  *(a2 + 20) = *(*(a1 + 9) + 1180);
  *(a2 + 28) = *(*(a1 + 9) + 1306);
  *(a2 + 29) = *(*(a1 + 9) + 1304);
  *(a2 + 42) = (*(**(*(a1 + 9) + 3552) + 72))(*(*(a1 + 9) + 3552));
  *(a2 + 40) = (*(**(*(a1 + 9) + 3560) + 72))(*(*(a1 + 9) + 3560));
  *(a2 + 43) = (*(**(*(a1 + 9) + 3576) + 72))(*(*(a1 + 9) + 3576));
  *(a2 + 41) = (*(**(*(a1 + 9) + 3568) + 72))(*(*(a1 + 9) + 3568));
  *(a2 + 35) = (*(**(*(a1 + 9) + 1088) + 72))(*(*(a1 + 9) + 1088));
  *(a2 + 36) = (*(**(*(a1 + 9) + 1096) + 72))(*(*(a1 + 9) + 1096));
  *(a2 + 88) = (*(**(*(a1 + 9) + 1112) + 72))(*(*(a1 + 9) + 1112));
  *(a2 + 89) = (*(**(*(a1 + 9) + 1120) + 72))(*(*(a1 + 9) + 1120));
  *(a2 + 90) = (*(**(*(a1 + 9) + 1128) + 72))(*(*(a1 + 9) + 1128));
  *(a2 + 91) = (*(**(*(a1 + 9) + 1136) + 72))(*(*(a1 + 9) + 1136));
  *(a2 + 52) = AppleBCMWLANBusInterface::getTxDescriptorCommandQueueSize(a1);
  *(a2 + 54) = 0;
  *(a2 + 48) = AppleBCMWLANBusInterface::getTxCompletionDescriptorCommandQueueSize(a1);
  result = AppleBCMWLANBusInterface::getRxDescriptorCommandQueueSize(a1);
  *(a2 + 44) = result;
  *(a2 + 30) = *(*(a1 + 9) + 1224);
  *(a2 + 31) = *(*(a1 + 9) + 1228);
  *(a2 + 32) = *(*(a1 + 9) + 1234);
  *(a2 + 33) = *(*(a1 + 9) + 1232);
  *(a2 + 34) = *(*(a1 + 9) + 2869);
  *(a2 + 56) = *(*(a1 + 9) + 3016);
  *(a2 + 60) = *(*(a1 + 9) + 3024);
  *(a2 + 39) = *(*(a1 + 9) + 1236);
  *(a2 + 38) = *(*(a1 + 9) + 1240);
  *(a2 + 37) = *(*(a1 + 9) + 1208);
  *(a2 + 84) = *(*(a1 + 9) + 1296);
  *(a2 + 64) = *(*(a1 + 9) + 1256);
  *(a2 + 68) = *(*(a1 + 9) + 1268);
  *(a2 + 76) = *(*(a1 + 9) + 1272);
  *(a2 + 80) = *(*(a1 + 9) + 1276);
  *(a2 + 72) = *(*(a1 + 9) + 1284);
  return result;
}

uint64_t AppleBCMWLANBusInterfacePCIe::createFlowCallback(AppleBCMWLANBusInterfacePCIe *this, int a2, unsigned int a3)
{
  v6 = *(*(this + 9) + 8 * a3 + 4816);
  if (!AppleBCMWLANBusInterface::getLogger(this) || (AppleBCMWLANBusInterface::getLogger(this), !CCLogStream::shouldLog()))
  {
    if (v6)
    {
      goto LABEL_4;
    }

LABEL_56:
    result = AppleBCMWLANBusInterface::getLogger(this);
    if (result)
    {
      AppleBCMWLANBusInterface::getLogger(this);
      result = CCLogStream::shouldLog();
      if (result)
      {
        return AppleBCMWLANBusInterfacePCIe::createFlowCallback(this);
      }
    }

    return result;
  }

  Logger = AppleBCMWLANBusInterface::getLogger(this);
  CCLogStream::logAlert(Logger, "[dk] %s@%d:status: %d, flowID: %d\n", "createFlowCallback", 9265, a2, a3);
  if (!v6)
  {
    goto LABEL_56;
  }

LABEL_4:
  if ((*(*v6 + 312))(v6) == 2)
  {
    v7 = *(this + 9);
    if (*(v7 + 372) <= a3 && *(v7 + 376) > a3)
    {
      *(v7 + 8 * a3 + 384) = 0;
    }

    if (!AppleBCMWLANPCIeTransmitFlowRing::isSkywalkFlow(v6))
    {
      result = AppleBCMWLANBusInterface::getLogger(this);
      if (result && (AppleBCMWLANBusInterface::getLogger(this), result = CCLogStream::shouldLog(), result))
      {
        result = AppleBCMWLANBusInterfacePCIe::createFlowCallback(this);
        if (!a2)
        {
          return result;
        }
      }

      else if (!a2)
      {
        return result;
      }

      goto LABEL_51;
    }

    if (a2)
    {
      if (AppleBCMWLANBusInterface::getLogger(this))
      {
        AppleBCMWLANBusInterface::getLogger(this);
        if (CCLogStream::shouldLog())
        {
          v30 = AppleBCMWLANBusInterface::getLogger(this);
          CCLogStream::logAlert(v30, "[dk] %s@%d:Create Flow Queue Failure with status: 0x%x (flowID %d)\n", "createFlowCallback", 9288, a2, a3);
        }
      }

      v8 = (*(*v6 + 392))(v6);
      v9 = (*(*v6 + 368))(v6);
      isLowLatencyRing = AppleBCMWLANPCIeTransmitFlowRing::isLowLatencyRing(v6);
      v11 = isLowLatencyRing;
      if (isLowLatencyRing)
      {
        v12 = 10;
      }

      else
      {
        v12 = 3;
      }

      if (v8 != 3)
      {
        v12 = v8;
      }

      if (((v8 == 2) & isLowLatencyRing) != 0)
      {
        v13 = 9;
      }

      else
      {
        v13 = v12;
      }

      if (AppleBCMWLANPCIeSkywalk::clearFlowIdInFlowQ(*(*(this + 9) + 4480), v13, v9, a3))
      {
        if (AppleBCMWLANBusInterface::getLogger(this))
        {
          AppleBCMWLANBusInterface::getLogger(this);
          if (CCLogStream::shouldLog())
          {
            v31 = AppleBCMWLANBusInterface::getLogger(this);
            v32 = "no";
            if (v11)
            {
              v32 = "yes";
            }

            CCLogStream::logAlert(v31, "[dk] %s@%d:Failed to unassign FlowId:%d from flowQ - ifId:%d ac:%d isLowLatencyRing:%s\n", "createFlowCallback", 9306, a3, v13, v9, v32);
          }
        }
      }

      if ((v13 & 0xFE) == 2)
      {
        LOBYTE(v36) = v13;
        BYTE1(v36) = v9;
        *(&v36 + 2) = 0;
        HIWORD(v36) = 0;
        (*(*v6 + 400))(v6, &v36 + 2);
        v14 = IO80211FlowQueueDatabase::find(*(*(this + 9) + 1312), v36);
        v15 = OSMetaClassBase::safeMetaCast(v14, gAppleBCMWLANPCIeFlowQueueMetaClass);
        v16 = AppleBCMWLANBusInterface::getLogger(this);
        if (v15)
        {
          if (v16)
          {
            AppleBCMWLANBusInterface::getLogger(this);
            if (CCLogStream::shouldLog())
            {
              v33 = AppleBCMWLANBusInterface::getLogger(this);
              CCLogStream::logAlert(v33, "[dk] %s@%d:Clearing flowId:%d ac:%d for ifId:%d\n", "createFlowCallback", 9314, a3, v9, v13);
            }
          }

          AppleBCMWLANPCIeFlowQueue::clearFlowId(v15);
        }

        else if (v16)
        {
          AppleBCMWLANBusInterface::getLogger(this);
          if (CCLogStream::shouldLog())
          {
            v35 = AppleBCMWLANBusInterface::getLogger(this);
            CCLogStream::logAlert(v35, "[dk] %s@%d:FlowQueue for flowId:%d ac:%d ifId:%d not found in bus's packetQDb!\n", "createFlowCallback", 9317, a3, v9, v13);
          }
        }
      }

      if (*(*(this + 9) + 1308))
      {
        if (AppleBCMWLANBusInterface::getLogger(this))
        {
          AppleBCMWLANBusInterface::getLogger(this);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANBusInterfacePCIe::createFlowCallback(this);
          }
        }
      }

      else
      {
        FaultReporter = AppleBCMWLANBusInterface::getFaultReporter(this);
        v26 = CCFaultReporter::reportFault(FaultReporter, 4u, "/Library/Caches/com.apple.xbs/Sources/AppleBCMWLANV3_driverkit/Busses/PCIe/AppleBCMWLANBusInterfacePCIe.cpp", 0x246Bu, "createFlowCallback", 0, -469794006, 0);
        if (v26)
        {
          v27 = v26;
          if (AppleBCMWLANBusInterface::getLogger(this))
          {
            AppleBCMWLANBusInterface::getLogger(this);
            if (CCLogStream::shouldLog())
            {
              v34 = AppleBCMWLANBusInterface::getLogger(this);
              CCLogStream::logAlert(v34, "[dk] %s@%d:Failed to report fault with status: 0x%x\n", "createFlowCallback", 9325, v27);
            }
          }
        }
      }

LABEL_51:
      if (AppleBCMWLANBusInterface::getLogger(this))
      {
        AppleBCMWLANBusInterface::getLogger(this);
        if (CCLogStream::shouldLog())
        {
          v29 = AppleBCMWLANBusInterface::getLogger(this);
          CCLogStream::logAlert(v29, "[dk] %s@%d:Failed to assign flow 0x%x\n", "createFlowCallback", 9360, a3);
        }
      }

      return AppleBCMWLANBusInterfacePCIe::deleteFlowCallback(this, 0, a3);
    }

    v18 = 1 << ((*(*v6 + 208))(v6) & 7);
    v19 = *(this + 9);
    v20 = (*(*v6 + 208))(v6);
    *(v19 + (v20 >> 3) + 5168) &= ~v18;
    v21 = *(*(this + 9) + 4480);
    v22 = (*(*v6 + 392))(v6);
    v23 = (*(*v6 + 368))(v6);
    AppleBCMWLANPCIeSkywalk::attachTxSubmRing(v21, v6, v22, v23, a3);
    (*(*v6 + 320))(v6, 3);
    v24 = *(*v6 + 64);

    return v24(v6);
  }

  else
  {
    result = AppleBCMWLANBusInterface::getLogger(this);
    if (result)
    {
      AppleBCMWLANBusInterface::getLogger(this);
      result = CCLogStream::shouldLog();
      if (result)
      {
        return AppleBCMWLANBusInterfacePCIe::createFlowCallback(this);
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANBusInterfacePCIe::deleteFlowCallback(AppleBCMWLANBusInterfacePCIe *this, int a2, unsigned int a3)
{
  if (AppleBCMWLANBusInterface::getLogger(this))
  {
    AppleBCMWLANBusInterface::getLogger(this);
    if (CCLogStream::shouldLog())
    {
      Logger = AppleBCMWLANBusInterface::getLogger(this);
      CCLogStream::logAlert(Logger, "[dk] %s@%d:status: %#x, flowID: %d\n", "deleteFlowCallback", 9434, a2, a3);
    }
  }

  (*(**(*(this + 9) + 3592) + 72))(*(*(this + 9) + 3592));
  v6 = *(*(this + 9) + 8 * a3 + 4816);
  if (v6)
  {
    AppleBCMWLANBusInterfacePCIe::invalidateFlowId(this, a3);
    AppleBCMWLANPCIeSubmissionRing::resetSharedPointers(v6);
    (*(*v6 + 320))(v6, 6);
    v7 = *(this + 9) + (a3 >> 3);
    *(v7 + 5174) &= ~(1 << (a3 & 7));
    if (a2)
    {
      if (AppleBCMWLANBusInterface::getLogger(this))
      {
        AppleBCMWLANBusInterface::getLogger(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANBusInterfacePCIe::deleteFlowCallback(this);
        }
      }
    }

    v8 = *(this + 9);
    if (*(v8 + 372) <= a3 && *(v8 + 376) > a3)
    {
      *(v8 + 8 * a3 + 736) = 0;
      v8 = *(this + 9);
    }

    result = *(v8 + 8 * a3 + 4816);
    if (result)
    {
      result = (*(*result + 16))(result);
      *(*(this + 9) + 8 * a3 + 4816) = 0;
    }
  }

  else
  {
    result = AppleBCMWLANBusInterface::getLogger(this);
    if (result)
    {
      AppleBCMWLANBusInterface::getLogger(this);
      result = CCLogStream::shouldLog();
      if (result)
      {
        return AppleBCMWLANBusInterfacePCIe::deleteFlowCallback(this);
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANBusInterfacePCIe::deleteFlow(AppleBCMWLANBusInterfacePCIe *this, unsigned int a2, int a3)
{
  v22 = -1;
  if (AppleBCMWLANBusInterface::getLogger(this))
  {
    AppleBCMWLANBusInterface::getLogger(this);
    if (CCLogStream::shouldLog())
    {
      Logger = AppleBCMWLANBusInterface::getLogger(this);
      CCLogStream::logAlert(Logger, "[dk] %s@%d: Flow ID: %d, Reason: %d\n", "deleteFlow", 9372, a2, a3);
    }
  }

  v6 = this + 72;
  v7 = *(this + 9) + 4 * a2;
  *(v7 + 1866) &= ~1u;
  v8 = *(this + 9);
  if (*(v8 + 8 * a2 + 4816))
  {
    if (*(v8 + 372) <= a2 && *(v8 + 376) > a2)
    {
      *(v8 + 8 * a2 + 736) = 0;
      v8 = *v6;
    }

    v9 = *(v8 + 4608);
    if (v9 && CCLogStream::shouldLog(v9, 1uLL))
    {
      v27 = 0u;
      v29 = 0;
      v28 = 0u;
      memset(v26, 0, sizeof(v26));
      v25 = 23553;
      WORD6(v27) = 6149;
      AppleBCMWLANBusInterfacePCIe::pcapFillBusState(this, v26);
      v23 = 0u;
      v24 = 0u;
      LOBYTE(v23) = (*(**(*(this + 9) + 8 * a2 + 4816) + 392))();
      BYTE13(v23) = (*(**(*(this + 9) + 8 * a2 + 4816) + 344))();
      (*(**(*(this + 9) + 8 * a2 + 4816) + 400))();
      (*(**(*(this + 9) + 8 * a2 + 4816) + 408))();
      BYTE14(v27) = 1;
      LOWORD(v28) = a2;
      HIBYTE(v27) = BYTE13(v23);
      *(&v29 + 2) = a3;
      HIDWORD(v28) = 0;
      LOWORD(v29) = 0;
      *(&v28 + 2) = v23;
      *(&v28 + 6) = 0;
      WORD5(v28) = 0;
      CCLogStream::logHeaderAndBufIf(*(*(this + 9) + 4608), 1uLL, 0, 0, 0, 0, &v25, 0x7AuLL);
    }

    v10 = *v6;
    v11 = *(*v6 + 4620);
    if (v11)
    {
      *(v10 + 4620) = v11 - 1;
      v10 = *v6;
    }

    *(v10 + 4620) = v11;
    v12 = *(*v6 + 8 * a2 + 4816);
    (*(*v12 + 72))(v12);
    (*(**(*v6 + 3464) + 72))(*(*v6 + 3464), *(*v6 + 8 * a2 + 4816));
    AppleBCMWLANCallbackEventSource::signalCallbackNeeded(*(*v6 + 3240));
    if ((*(**(*v6 + 8 * a2 + 4816) + 312))() == 1)
    {
      v13 = *(*v6 + 1088);
      v14 = *(*v6 + 8 * a2 + 4816);
      v15 = (*(*v14 + 328))(v14);
      AppleBCMWLANHashtable::remove(v13, v15);
    }

    v16 = *(*v6 + 8 * a2 + 4816);
    if ((*(*v16 + 312))(v16) == 2 || (v17 = *(*v6 + 8 * a2 + 4816), (*(*v17 + 312))(v17) == 3))
    {
      v18 = AppleBCMWLANHashtable::add(*(*v6 + 1096), *(*v6 + 8 * a2 + 4816), &v22);
      if (v18)
      {
        if (AppleBCMWLANBusInterface::getLogger(this))
        {
          AppleBCMWLANBusInterface::getLogger(this);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANBusInterfacePCIe::deleteFlow(this);
          }
        }
      }

      else
      {
        v19 = *(*v6 + 8 * a2 + 4816);
        (*(*v19 + 320))(v19, 4);
        (*(**(*v6 + 8 * a2 + 4816) + 336))();
        *(*v6 + (a2 >> 3) + 5174) |= 1 << (a2 & 7);
      }
    }

    else
    {
      if (AppleBCMWLANBusInterface::getLogger(this))
      {
        AppleBCMWLANBusInterface::getLogger(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANBusInterfacePCIe::deleteFlow(this, this + 9, a2, a2);
        }
      }

      return 0;
    }
  }

  else
  {
    if (AppleBCMWLANBusInterface::getLogger(this))
    {
      AppleBCMWLANBusInterface::getLogger(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANBusInterfacePCIe::deleteFlow(this);
      }
    }

    return 3758096385;
  }

  return v18;
}

uint64_t AppleBCMWLANBusInterfacePCIe::invalidateFlowId(AppleBCMWLANBusInterfacePCIe *this, unsigned __int16 a2)
{
  v10 = a2;
  v3 = IO80211FlowQueueDatabase::find(*(*(this + 9) + 1312), _compareQueueByFlowId, &v10);
  v4 = OSMetaClassBase::safeMetaCast(v3, gAppleBCMWLANPCIeFlowQueueMetaClass);
  Logger = AppleBCMWLANBusInterface::getLogger(this);
  if (v4)
  {
    if (Logger)
    {
      AppleBCMWLANBusInterface::getLogger(this);
      if (CCLogStream::shouldLog())
      {
        v8 = AppleBCMWLANBusInterface::getLogger(this);
        CCLogStream::logAlert(v8, "[dk] %s@%d:Found flowQueue for flowId:%d in AppleBCMWLANBusInterfacePCIe database\n", "invalidateFlowId", 11041, v10);
      }
    }

    AppleBCMWLANPCIeFlowQueue::unassignFlowRing(v4);
    v6 = 0;
    ++*(*(this + 9) + 1320);
  }

  else
  {
    v6 = 3758097084;
    if (Logger)
    {
      AppleBCMWLANBusInterface::getLogger(this);
      if (CCLogStream::shouldLog())
      {
        v9 = AppleBCMWLANBusInterface::getLogger(this);
        CCLogStream::logAlert(v9, "[dk] %s@%d:Unable to find flowQueue for flowId:%d in AppleBCMWLANBusInterfacePCIe database\n", "invalidateFlowId", 11046, v10);
      }
    }
  }

  return v6;
}

BOOL AppleBCMWLANBusInterfacePCIe::workPendingForEpoch(AppleBCMWLANBusInterfacePCIe *this, unint64_t *a2)
{
  v5 = this + 72;
  v4 = *(this + 9);
  v6 = v4[598] != v4[597] || v4[599] != v4[600];
  if (AppleBCMWLANBusInterface::getLogger(this))
  {
    AppleBCMWLANBusInterface::getLogger(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANBusInterfacePCIe::workPendingForEpoch(this, v6, v5);
    }
  }

  if (AppleBCMWLANBusInterface::getLogger(this))
  {
    AppleBCMWLANBusInterface::getLogger(this);
    if (CCLogStream::shouldLog())
    {
      Logger = AppleBCMWLANBusInterface::getLogger(this);
      CCLogStream::logAlert(Logger, "[dk] %s@%d:MSIEpoch %llu, PendingEpoch %llu\n", "workPendingForEpoch", 9501, *(*(this + 9) + 4768), *a2);
    }
  }

  v7 = *a2;
  if (!*a2)
  {
    v13 = 0xAAAAAAAAAAAAAAAALL;
    v14 = 0xAAAAAAAAAAAAAAAALL;
    IOInterruptDispatchSource::GetLastInterrupt(*(*v5 + 3264), &v14, &v13, 0);
    v11 = *(*v5 + 4768);
    if (v11 >= v13)
    {
      if (!v6)
      {
        return 0;
      }
    }

    else
    {
      ++v11;
    }

    *a2 = v11;
    return 1;
  }

  v8 = *v5;
  v9 = *(*v5 + 4768);
  result = v9 < v7;
  if (v9 >= v7 && ((v6 ^ 1) & 1) == 0)
  {
    return ((v8[597] - v7) < 0 || (v8[598] - v7) < 0 || v8[599] != v8[600]) && ((v8[599] - v7) < 0 || (v8[600] - v7) < 0);
  }

  return result;
}

uint64_t AppleBCMWLANBusInterfacePCIe::configHMAP(AppleBCMWLANBusInterfacePCIe *this)
{
  (*(*this + 1208))(this, "configHMAP", 9559);
  v26 = 0;
  if (IOParseBootArgNumber("wifibt-external", &v26, 4) && v26 != 0)
  {
    v8 = 3758097095;
    if (AppleBCMWLANBusInterface::getLogger(this))
    {
      AppleBCMWLANBusInterface::getLogger(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANBusInterfacePCIe::configHMAP(this);
      }
    }

    return v8;
  }

  v3 = *(*(this + 9) + 3280);
  if (v3)
  {
    if (AppleBCMWLANChipManagerPCIe::isHMAPSupported(v3))
    {
      v4 = *(this + 9);
      if (*(v4 + 3988))
      {
LABEL_9:
        LODWORD(v25) = 0;
        HMAPBaseAddress = AppleBCMWLANChipManagerPCIe::getHMAPBaseAddress(*(v4 + 3280));
        PCIeCoreReg32 = AppleBCMWLANChipBackplane::readPCIeCoreReg32(*(*(this + 9) + 3360), HMAPBaseAddress + 144, &v25);
        if (PCIeCoreReg32)
        {
          v8 = PCIeCoreReg32;
          if (AppleBCMWLANBusInterface::getLogger(this))
          {
            AppleBCMWLANBusInterface::getLogger(this);
            if (CCLogStream::shouldLog())
            {
              Logger = AppleBCMWLANBusInterface::getLogger(this);
              CCLogStream::logAlert(Logger, "[dk] %s@%d:Failed to read HMAP window config reg: 0x%x\n", "configHMAP", 9665, v8);
            }
          }
        }

        else
        {
          v16 = v25;
          v17 = *(this + 9);
          v18 = *(v17 + 3984);
          if (v18)
          {
            v19 = 0;
            v20 = HMAPBaseAddress;
            do
            {
              AppleBCMWLANChipBackplane::writePCIeCoreReg32(*(v17 + 3360), v20, *(v17 + 8 * v19 + 3888));
              AppleBCMWLANChipBackplane::writePCIeCoreReg32(*(*(this + 9) + 3360), v20 + 4, *(*(this + 9) + 8 * v19 + 3892));
              AppleBCMWLANChipBackplane::writePCIeCoreReg32(*(*(this + 9) + 3360), v20 + 8, *(*(this + 9) + 4 * v19++ + 3952));
              v17 = *(this + 9);
              v20 += 16;
            }

            while (v19 < *(v17 + 3984));
            v18 = *(v17 + 3984) << 8;
          }

          LODWORD(v25) = v18 | v16;
          AppleBCMWLANChipBackplane::writePCIeCoreReg32(*(v17 + 3360), HMAPBaseAddress + 144, v18 | v16);
          v8 = 0;
          *(*(this + 9) + 3989) = 1;
        }

        return v8;
      }

      v9 = *(v4 + 4544);
      if (v9)
      {
        v10 = (v9 << 20);
      }

      else
      {
        v10 = 0x2000000;
      }

      v24 = 0;
      v25 = 0;
      if (acquireProperty<OSNumber>(*(v4 + 3248), "IOPCIDeviceMemoryMapBase", &v25, 1uLL, "IOService"))
      {
        v11 = OSNumber::unsigned64BitValue(v25);
        (v25->release)(v25);
      }

      else
      {
        if (AppleBCMWLANBusInterface::getLogger(this))
        {
          AppleBCMWLANBusInterface::getLogger(this);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANBusInterfacePCIe::configHMAP(this);
          }
        }

        v11 = 0;
      }

      if (acquireProperty<OSNumber>(*(*(this + 9) + 3248), "IOPCIDeviceMemoryMapSize", &v24, 1uLL, "IOService"))
      {
        v12 = OSNumber::unsigned64BitValue(v24);
        (v24->release)(v24);
        if (v11 && v12)
        {
          v13 = *(*(this + 9) + 3256);
          v14 = v13 * (v11 - 1);
          if (v13 * v12 >= v10)
          {
            v15 = v10;
          }

          else
          {
            v15 = v13 * v12;
          }

          if (AppleBCMWLANBusInterface::getLogger(this))
          {
            AppleBCMWLANBusInterface::getLogger(this);
            if (CCLogStream::shouldLog())
            {
              v23 = AppleBCMWLANBusInterface::getLogger(this);
              CCLogStream::logAlert(v23, "[dk] %s@%d:HMAP window limit:%llu %lluMB\n", "configHMAP", 9646, v15, v15 >> 20);
            }
          }

          *(*(this + 9) + 3984) = 1;
          *(*(this + 9) + 3888) = v14;
          *(*(this + 9) + 3952) = v15;
          *(*(this + 9) + 3988) = 1;
          v4 = *(this + 9);
          goto LABEL_9;
        }
      }

      else
      {
        if (AppleBCMWLANBusInterface::getLogger(this))
        {
          AppleBCMWLANBusInterface::getLogger(this);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANBusInterfacePCIe::configHMAP(this);
          }
        }

        v12 = 0;
      }

      if (AppleBCMWLANBusInterface::getLogger(this))
      {
        AppleBCMWLANBusInterface::getLogger(this);
        if (CCLogStream::shouldLog())
        {
          v22 = AppleBCMWLANBusInterface::getLogger(this);
          CCLogStream::logAlert(v22, "[dk] %s@%d:Invalid VM limits: 0x%llx + 0x%llx\n", "configHMAP", 9637, v11, v12);
        }
      }

      return 3758097097;
    }

    else
    {
      v8 = 3758097095;
      if (AppleBCMWLANBusInterface::getLogger(this))
      {
        AppleBCMWLANBusInterface::getLogger(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANBusInterfacePCIe::configHMAP(this);
        }
      }
    }
  }

  else
  {
    v8 = 3758097112;
    if (AppleBCMWLANBusInterface::getLogger(this))
    {
      AppleBCMWLANBusInterface::getLogger(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANBusInterfacePCIe::configHMAP(this);
        return 3758097112;
      }
    }
  }

  return v8;
}

uint64_t AppleBCMWLANBusInterfacePCIe::initRingInfo(AppleBCMWLANBusInterfacePCIe *this)
{
  (*(*this + 1208))(this, "initRingInfo", 9718);
  v2 = *(this + 9);
  v9 = *(v2 + 160);
  v11 = *(v2 + 164);
  AppleBCMWLANChipMemory::writeSubmissionWriteIndexArrayHostAddr(*(v2 + 3368));
  v3 = *(this + 9);
  v7 = *(v3 + 216);
  v12 = *(v3 + 220);
  AppleBCMWLANChipMemory::writeCompletionReadIndexArrayHostAddr(*(v3 + 3368));
  v4 = *(this + 9);
  v8 = *(v4 + 104);
  v13 = *(v4 + 108);
  AppleBCMWLANChipMemory::writeSubmissionReadIndexArrayHostAddr(*(v4 + 3368));
  v5 = *(this + 9);
  v10 = *(v5 + 272);
  AppleBCMWLANChipMemory::writeCompletionWriteIndexArrayHostAddr(*(v5 + 3368));
  if (AppleBCMWLANBusInterface::getLogger(this))
  {
    AppleBCMWLANBusInterface::getLogger(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANBusInterfacePCIe::initRingInfo(this);
    }
  }

  AppleBCMWLANChipMemory::readSubmissionReadIndexArrayHostAddr(*(*(this + 9) + 3368));
  if (AppleBCMWLANBusInterface::getLogger(this))
  {
    AppleBCMWLANBusInterface::getLogger(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANBusInterfacePCIe::initRingInfo(this);
    }
  }

  AppleBCMWLANChipMemory::readSubmissionWriteIndexArrayHostAddr(*(*(this + 9) + 3368));
  if (AppleBCMWLANBusInterface::getLogger(this))
  {
    AppleBCMWLANBusInterface::getLogger(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANBusInterfacePCIe::initRingInfo(this);
    }
  }

  AppleBCMWLANChipMemory::readCompletionReadIndexArrayHostAddr(*(*(this + 9) + 3368));
  if (AppleBCMWLANBusInterface::getLogger(this))
  {
    AppleBCMWLANBusInterface::getLogger(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANBusInterfacePCIe::initRingInfo(this);
    }
  }

  AppleBCMWLANChipMemory::readCompletionWriteIndexArrayHostAddr(*(*(this + 9) + 3368));
  result = AppleBCMWLANBusInterface::getLogger(this);
  if (result)
  {
    AppleBCMWLANBusInterface::getLogger(this);
    result = CCLogStream::shouldLog();
    if (result)
    {
      return AppleBCMWLANBusInterfacePCIe::initRingInfo(this);
    }
  }

  return result;
}

uint64_t AppleBCMWLANBusInterfacePCIe::initTransmitFlows(OSObject *this)
{
  (this->OSMetaClassBase::__vftable[21].Dispatch)(this, "initTransmitFlows", 9792);
  MaxTxFlowRings = AppleBCMWLANChipMemory::readMaxTxFlowRings(*(this[1].ivars + 421));
  MaxDynamicSubmissionRings = AppleBCMWLANChipMemory::readMaxDynamicSubmissionRings(*(this[1].ivars + 421));
  Flags2 = AppleBCMWLANChipMemory::readFlags2(*(this[1].ivars + 421));
  if (MaxDynamicSubmissionRings <= MaxTxFlowRings)
  {
    ClassNameHelper = getClassNameHelper(this);
    panic("%s::%s(): maxNbrOfDynamicSubmissionRings %u <= maxNbrOfTxFlowRings %u", ClassNameHelper, "initTransmitFlows", MaxDynamicSubmissionRings, MaxTxFlowRings);
  }

  if (MaxTxFlowRings >= 0x28)
  {
    v5 = 40;
  }

  else
  {
    v5 = MaxTxFlowRings;
  }

  *(this[1].ivars + 92) = v5;
  v6 = (Flags2 >> 4) & 1;
  v7 = MaxDynamicSubmissionRings - MaxTxFlowRings + v6;
  if (v7 >= 4)
  {
    v7 = 4;
  }

  *(this[1].ivars + 93) = v7;
  *(this[1].ivars + 94) = *(this[1].ivars + 93) + *(this[1].ivars + 92);
  result = AppleBCMWLANBusInterface::getLogger(this);
  if (result)
  {
    AppleBCMWLANBusInterface::getLogger(this);
    result = CCLogStream::shouldLog();
    if (result)
    {
      Logger = AppleBCMWLANBusInterface::getLogger(this);
      return CCLogStream::logAlert(Logger, "[dk] %s@%d:Flows: max=%u reserved=%u maxId=%u fwmax=%u fwmaxsub=%u fwbtlognomaxqincrease=%u\n", "initTransmitFlows", 9818, *(this[1].ivars + 92), *(this[1].ivars + 93), *(this[1].ivars + 94), MaxTxFlowRings, MaxDynamicSubmissionRings, v6);
    }
  }

  return result;
}

uint64_t AppleBCMWLANBusInterfacePCIe::createDARTMappings(AppleBCMWLANBusInterfacePCIe *this, AppleBCMWLANChipMemory *a2)
{
  v4 = this + 72;
  *(*(this + 9) + 32) = *(*(this + 9) + 3256);
  if (AppleBCMWLANPCIeAllocateDartMappedMemory(*(this + 9), *(*(this + 9) + 3256), 1, *(*(this + 9) + 3248)))
  {
    v5 = *(this + 9);
    v11 = v5[12];
    v13 = v5[13];
    v6 = v5[814];
    AppleBCMWLANChipMemory::writeScratchMemorySize(a2);
    AppleBCMWLANChipMemory::writeScratchMemoryAddr(a2);
    ScratchMemorySize = AppleBCMWLANChipMemory::readScratchMemorySize(a2);
    ScratchMemoryAddr = AppleBCMWLANChipMemory::readScratchMemoryAddr(a2);
    if (AppleBCMWLANBusInterface::getLogger(this))
    {
      AppleBCMWLANBusInterface::getLogger(this);
      if (CCLogStream::shouldLog())
      {
        Logger = AppleBCMWLANBusInterface::getLogger(this);
        CCLogStream::logAlertIf(Logger, 0x80uLL, "[dk] %s@%d:Scratch Buffer: size : %d, baseAddressLow : 0x%x, baseAddressHigh: 0x%x \n", "createDARTMappings", 9886, ScratchMemorySize, ScratchMemoryAddr, HIDWORD(ScratchMemoryAddr));
      }
    }

    *(*v4 + 88) = 2048;
    if (AppleBCMWLANPCIeAllocateDartMappedMemory(*v4 + 56, *(*v4 + 3256), 3, *(*v4 + 3248)))
    {
      *(*v4 + 144) = 2048;
      if (AppleBCMWLANPCIeAllocateDartMappedMemory(*v4 + 112, *(*v4 + 3256), 2, *(*v4 + 3248)))
      {
        *(*v4 + 200) = 24;
        if (AppleBCMWLANPCIeAllocateDartMappedMemory(*v4 + 168, *(*v4 + 3256), 3, *(*v4 + 3248)))
        {
          *(*v4 + 256) = 24;
          if (AppleBCMWLANPCIeAllocateDartMappedMemory(*v4 + 224, *(*v4 + 3256), 1, *(*v4 + 3248)))
          {
            return 0;
          }

          else
          {
            v8 = 3758097096;
            if (AppleBCMWLANBusInterface::getLogger(this))
            {
              AppleBCMWLANBusInterface::getLogger(this);
              if (CCLogStream::shouldLog())
              {
                AppleBCMWLANBusInterfacePCIe::createDARTMappings(this);
              }
            }
          }
        }

        else
        {
          v8 = 3758097096;
          if (AppleBCMWLANBusInterface::getLogger(this))
          {
            AppleBCMWLANBusInterface::getLogger(this);
            if (CCLogStream::shouldLog())
            {
              AppleBCMWLANBusInterfacePCIe::createDARTMappings(this);
            }
          }
        }
      }

      else
      {
        v8 = 3758097096;
        if (AppleBCMWLANBusInterface::getLogger(this))
        {
          AppleBCMWLANBusInterface::getLogger(this);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANBusInterfacePCIe::createDARTMappings(this);
          }
        }
      }
    }

    else
    {
      v8 = 3758097096;
      if (AppleBCMWLANBusInterface::getLogger(this))
      {
        AppleBCMWLANBusInterface::getLogger(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANBusInterfacePCIe::createDARTMappings(this);
        }
      }
    }
  }

  else
  {
    v8 = 3758097096;
    if (AppleBCMWLANBusInterface::getLogger(this))
    {
      AppleBCMWLANBusInterface::getLogger(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANBusInterfacePCIe::createDARTMappings(this, v4);
      }
    }
  }

  return v8;
}

void *AppleBCMWLANBusInterfacePCIe::removeDARTMappings(AppleBCMWLANBusInterfacePCIe *this)
{
  result = *(this + 9);
  if (result[5])
  {
    AppleBCMWLANPCIeFreeDartMappedMemory(result);
    result = *(this + 9);
  }

  if (result[12])
  {
    AppleBCMWLANPCIeFreeDartMappedMemory((result + 7));
    result = *(this + 9);
  }

  if (result[19])
  {
    AppleBCMWLANPCIeFreeDartMappedMemory((result + 14));
    result = *(this + 9);
  }

  if (result[26])
  {
    AppleBCMWLANPCIeFreeDartMappedMemory((result + 21));
    result = *(this + 9);
  }

  if (result[33])
  {
    v3 = (result + 28);

    return AppleBCMWLANPCIeFreeDartMappedMemory(v3);
  }

  return result;
}

uint64_t AppleBCMWLANBusInterfacePCIe::createFirmwareEcounterLogger(AppleBCMWLANBusInterfacePCIe *this)
{
  v2 = IOMallocZeroTyped();
  if (v2)
  {
    v3 = v2;
    *v2 = 0;
    v2[1] = 0;
    v2[2] = 0x8000;
    bytes = 0;
    v4 = (*(*this + 984))(this);
    if (checkAcquireDataPropertyNotEmpty(v4, "wlan.ccpipe.size", &bytes, 8uLL, 1uLL, "IOService"))
    {
      v5 = *(OSData::getBytesNoCopy(bytes, 0, 8uLL) + 1);
      v3[2] = (v5 << 10);
      if (AppleBCMWLANBusInterface::getLogger(this))
      {
        AppleBCMWLANBusInterface::getLogger(this);
        if (CCLogStream::shouldLog())
        {
          Logger = AppleBCMWLANBusInterface::getLogger(this);
          CCLogStream::logAlert(Logger, "[dk] %s@%d:WiFiFirmwareEcounterLogs Size configure from device tree: %uKB\n", "createFirmwareEcounterLogger", 16767, v5);
        }
      }

      if (bytes)
      {
        (bytes->release)(bytes);
        bytes = 0;
      }
    }

    v20 = 0;
    if (IOParseBootArgNumber("wlan.ccpipe.FWEcounterLogs.size", &v20, 4))
    {
      v6 = (v20 << 10);
      if (v3[2] > v6)
      {
        v6 = v3[2];
      }

      if (v6 >= 0x80000)
      {
        v6 = 0x80000;
      }

      v3[2] = v6;
      if (AppleBCMWLANBusInterface::getLogger(this))
      {
        AppleBCMWLANBusInterface::getLogger(this);
        if (CCLogStream::shouldLog())
        {
          v18 = AppleBCMWLANBusInterface::getLogger(this);
          CCLogStream::logAlert(v18, "[dk] %s@%d:WiFiFirmwareEcounterLogs Size configure from boot-args: %u (Max=512KB)\n", "createFirmwareEcounterLogger", 16775, v3[2]);
        }
      }
    }

    v3[3] = ((2 * ((5 * v3[2]) & 0x1FFFFFFFFFFFFFFFuLL) * 0x28F5C28F5C28F5C3uLL) >> 64) >> 2;
    *(v3 + 8) = 1000;
    ModuleInstanceId = AppleBCMWLANBusInterface::getModuleInstanceId(this);
    snprintf(v3 + 292, 0x100uLL, "brcm%x", ModuleInstanceId);
    strcpy(v3 + 36, "FirmwareEcounterLogs");
    strcpy(v3 + 580, "WiFi");
    *(v3 + 548) = 0x200200000;
    v3[71] = 0;
    OSMetaClassBase::safeMetaCast(this, gAppleBCMWLANBusInterfacePCIeMetaClass);
    AppleBCMWLANBusInterface::getCCPipeOwner(this);
    v8 = (*(*this + 80))(this);
    (*(*v8 + 168))(v8);
    v9 = CCPipe::withOwnerNameCapacity();
    *(*(this + 9) + 3832) = OSMetaClassBase::safeMetaCast(v9, gCCLogPipeMetaClass);
    IOFree(v3, 0x350uLL);
    if (!*(*(this + 9) + 3832))
    {
      return 0;
    }

    v10 = IOMallocZeroTyped();
    if (v10)
    {
      v11 = v10;
      *v10 = 0;
      *(v10 + 8) = -1;
      *(v10 + 24) = 0;
      *(v10 + 32) = 0;
      if (AppleBCMWLAN_isVerboseDebugLoggingAllowed())
      {
        *(v11 + 8) = 127;
        *(v11 + 24) = 0x80000000000;
      }

      *(v11 + 88) = 0;
      *(v11 + 48) = this;
      *(v11 + 56) = busSetLogLevelCallback;
      *(v11 + 72) = 0;
      *(v11 + 80) = 0;
      *(v11 + 64) = busSetLogFlagsCallback;
      bytes = 0xA5A500000000000DLL;
      v12 = OSData::withBytes(&bytes, 8uLL);
      *(v11 + 328) = v12;
      *(v11 + 336) = 150;
      if (*(*(this + 9) + 3832))
      {
        v13 = *(*(this + 9) + 3832);
        v14 = CCStream::withPipeAndName();
        *(*(this + 9) + 3824) = OSMetaClassBase::safeMetaCast(v14, gCCLogStreamMetaClass);
        v12 = *(v11 + 328);
      }

      (v12->release)(v12);
      if (AppleBCMWLANBusInterface::getLogger(this))
      {
        AppleBCMWLANBusInterface::getLogger(this);
        if (CCLogStream::shouldLog())
        {
          v19 = AppleBCMWLANBusInterface::getLogger(this);
          CCLogStream::logAlert(v19, "[dk] %s@%d: CCFlags: 0x%llx, CCLevel: %d ConsoleFlags: 0x%llx, ConsoleLevel: %d\n", "createFirmwareEcounterLogger", 16837, *(v11 + 24), *(v11 + 8), *(v11 + 32), *(v11 + 12));
        }
      }

      IOFree(v11, 0x358uLL);
      v15 = *(this + 9);
      if (*(v15 + 3824))
      {
        (*(**(v15 + 3832) + 72))(*(v15 + 3832));
        return 1;
      }

      return 0;
    }

    result = AppleBCMWLANBusInterface::getLogger(this);
    if (result)
    {
      AppleBCMWLANBusInterface::getLogger(this);
      result = CCLogStream::shouldLog();
      if (result)
      {
        AppleBCMWLANBusInterfacePCIe::createFirmwareEcounterLogger(this);
        return 0;
      }
    }
  }

  else
  {
    result = AppleBCMWLANBusInterface::getLogger(this);
    if (result)
    {
      AppleBCMWLANBusInterface::getLogger(this);
      result = CCLogStream::shouldLog();
      if (result)
      {
        AppleBCMWLANBusInterfacePCIe::createFirmwareEcounterLogger(this);
        return 0;
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANBusInterfacePCIe::flushTrackedControlIO(AppleBCMWLANBusInterfacePCIe *this, __int16 a2, OSObject *a3, void *a4)
{
  FaultReporter = AppleBCMWLANBusInterface::getFaultReporter(a3);
  AppleBCMWLANPCIeIO::setCompanionIO(a3, 0);
  if (FaultReporter)
  {
    AppleBCMWLANPCIeIO::setCompanionIO(FaultReporter, 0);
    AppleBCMWLANBusInterfacePCIe::flushTrackedControlIO(this, 0, FaultReporter, a4);
  }

  if (AppleBCMWLANPCIeIO::getDirection(a3) == 1)
  {
    v11 = 0xAAAAAAAAAAAAAAAALL;
    AppleBCMWLANPCIeIO::complete(a3, &v11);
    if (v11)
    {
      IO80211Buffer::returnBuffer(v11);
    }
  }

  AppleBCMWLANPCIeIO::reset(a3);
  Direction = AppleBCMWLANPCIeIO::getDirection(a3);
  if (Direction == 1)
  {
    v9 = 3520;
  }

  else
  {
    if (Direction != 2)
    {
      AppleBCMWLANBusInterfacePCIe::flushTrackedControlIO(this, a3);
    }

    v9 = 3512;
  }

  return (*(**(*(this + 9) + v9) + 72))(*(*(this + 9) + v9), a3);
}

uint64_t AppleBCMWLANBusInterfacePCIe::flushTrackedRxDataIO(AppleBCMWLANBusInterfacePCIe *this, __int16 a2, OSObject *a3, void *a4)
{
  FaultReporter = AppleBCMWLANBusInterface::getFaultReporter(a3);
  AppleBCMWLANPCIeIO::reset(a3);
  result = (*(**(*(this + 9) + 3536) + 72))(*(*(this + 9) + 3536), a3);
  if (FaultReporter)
  {
    AppleBCMWLANPCIeIO::reset(FaultReporter);
    v8 = *(**(*(this + 9) + 3536) + 72);

    return v8();
  }

  return result;
}

uint64_t AppleBCMWLANBusInterfacePCIe::flushTrackedTxDataIO(AppleBCMWLANBusInterfacePCIe *this, __int16 a2, OSObject *a3, void *a4)
{
  FaultReporter = AppleBCMWLANBusInterface::getFaultReporter(a3);
  AppleBCMWLANPCIeIO::reset(a3);
  ++*(*(this + 9) + 2840);
  result = (*(**(*(this + 9) + 3528) + 72))(*(*(this + 9) + 3528), a3);
  if (FaultReporter)
  {
    AppleBCMWLANPCIeIO::reset(FaultReporter);
    v8 = *(**(*(this + 9) + 3528) + 72);

    return v8();
  }

  return result;
}

uint64_t AppleBCMWLANBusInterfacePCIe::flushTrackedFlowCreationRequest(AppleBCMWLANBusInterfacePCIe *this, __int16 a2, OSObject *a3, void *a4)
{
  v5 = (a3->OSMetaClassBase::__vftable[3].init)(a3);
  AppleBCMWLANBusInterfacePCIe::createFlowCallback(this, -536870199, v5);
  result = *(*(this + 9) + 8 * v5 + 4816);
  if (result)
  {
    result = (*(*result + 16))(result);
    *(*(this + 9) + 8 * v5 + 4816) = 0;
  }

  return result;
}

uint64_t AppleBCMWLANBusInterfacePCIe::flushTrackedFlowDeleteRequest(AppleBCMWLANBusInterfacePCIe *this, __int16 a2, OSObject *a3, void *a4)
{
  v5 = (a3->OSMetaClassBase::__vftable[3].init)(a3);
  if (AppleBCMWLANBusInterface::getLogger(this))
  {
    AppleBCMWLANBusInterface::getLogger(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANBusInterfacePCIe::flushTrackedFlowDeleteRequest(this, v5);
    }
  }

  return AppleBCMWLANBusInterfacePCIe::deleteFlowCallback(this, -536870199, v5);
}

uint64_t AppleBCMWLANBusInterfacePCIe::flushTrackedH2DRingCreationRequest(AppleBCMWLANBusInterfacePCIe *this, __int16 a2, OSObject *anObject, void *a4)
{
  v4 = OSMetaClassBase::safeMetaCast(anObject, gAppleBCMWLANDynamicRingOperationContextMetaClass);
  RingOperationCompletionPtr = AppleBCMWLANDynamicRingOperationContext::getRingOperationCompletionPtr(v4);
  v6 = OUTLINED_FUNCTION_17(v4);
  if (v6)
  {
    (*(*v6 + 16))(v6);
  }

  result = (*(RingOperationCompletionPtr + 8))(*RingOperationCompletionPtr, 0, 3758097131, *(RingOperationCompletionPtr + 16));
  if (v4)
  {
    release = v4->release;

    return (release)(v4);
  }

  return result;
}

uint64_t AppleBCMWLANBusInterfacePCIe::flushTrackedH2DRingDeleteRequest(AppleBCMWLANBusInterfacePCIe *this, __int16 a2, OSObject *anObject, void *a4)
{
  v4 = OSMetaClassBase::safeMetaCast(anObject, gAppleBCMWLANDynamicRingOperationContextMetaClass);
  v5 = OUTLINED_FUNCTION_17(v4);
  RingOperationCompletionPtr = AppleBCMWLANDynamicRingOperationContext::getRingOperationCompletionPtr(v4);
  result = (*(RingOperationCompletionPtr + 8))(*RingOperationCompletionPtr, v5, 0, *(RingOperationCompletionPtr + 16));
  if (v4)
  {
    release = v4->release;

    return (release)(v4);
  }

  return result;
}

uint64_t AppleBCMWLANBusInterfacePCIe::flushTrackedD2HRingCreationRequest(AppleBCMWLANBusInterfacePCIe *this, __int16 a2, OSObject *anObject, void *a4)
{
  v4 = OSMetaClassBase::safeMetaCast(anObject, gAppleBCMWLANDynamicRingOperationContextMetaClass);
  CompletionRingPtr = AppleBCMWLANDynamicRingOperationContext::getCompletionRingPtr(v4);
  RingOperationCompletionPtr = AppleBCMWLANDynamicRingOperationContext::getRingOperationCompletionPtr(v4);
  if (CompletionRingPtr)
  {
    (*(*CompletionRingPtr + 16))(CompletionRingPtr);
  }

  result = (*(RingOperationCompletionPtr + 8))(*RingOperationCompletionPtr, 0, 3758097131, *(RingOperationCompletionPtr + 16));
  if (v4)
  {
    release = v4->release;

    return (release)(v4);
  }

  return result;
}

uint64_t AppleBCMWLANBusInterfacePCIe::flushTrackedD2HRingDeleteRequest(AppleBCMWLANBusInterfacePCIe *this, __int16 a2, OSObject *anObject, void *a4)
{
  v4 = OSMetaClassBase::safeMetaCast(anObject, gAppleBCMWLANDynamicRingOperationContextMetaClass);
  RingOperationCompletionPtr = AppleBCMWLANDynamicRingOperationContext::getRingOperationCompletionPtr(v4);
  CompletionRingPtr = AppleBCMWLANDynamicRingOperationContext::getCompletionRingPtr(v4);
  result = (*(RingOperationCompletionPtr + 8))(*RingOperationCompletionPtr, CompletionRingPtr, 0, *(RingOperationCompletionPtr + 16));
  if (v4)
  {
    release = v4->release;

    return (release)(v4);
  }

  return result;
}

uint64_t AppleBCMWLANBusInterfacePCIe::flushTrackedRxDebugIO(AppleBCMWLANBusInterfacePCIe *this, __int16 a2, OSObject *a3, void *a4)
{
  v7 = 0;
  AppleBCMWLANPCIeIO::complete(a3, &v7);
  if (v7)
  {
    IO80211Buffer::returnBuffer(v7);
  }

  AppleBCMWLANPCIeIO::reset(a3);
  return (*(**(*(this + 9) + 3544) + 72))(*(*(this + 9) + 3544), a3);
}

uint64_t AppleBCMWLANBusInterfacePCIe::flushPendingTxIOs(AppleBCMWLANBusInterfacePCIe *this)
{
  AppleBCMWLANBusInterface::getTxDescriptor(this, &v4);
  result = AppleBCMWLANCommandQueue::getSize(v4.n128_u64[1]);
  if (result)
  {
    do
    {
      AppleBCMWLANBusInterface::getTxDescriptor(this, &v4);
      v3 = AppleBCMWLANCommandQueue::dequeue(v4.n128_u64[1]);
      AppleBCMWLANTxBuffer::setStatus(v3, -536870199);
      AppleBCMWLANBusInterface::getTxCompletionDescriptor(this, &v4);
      AppleBCMWLANCommandQueue::enqueue(v4.n128_u64[1], v3);
      AppleBCMWLANBusInterface::getTxDescriptor(this, &v4);
    }

    while (AppleBCMWLANCommandQueue::getSize(v4.n128_u64[1]));
    return AppleBCMWLANCallbackEventSource::signalCallbackNeeded(*(*(this + 9) + 3240));
  }

  return result;
}

uint64_t AppleBCMWLANBusInterfacePCIe::getMaxRxControlFramePayload(AppleBCMWLANBusInterfacePCIe *this)
{
  v2 = -(*(*this + 912))(this) & 3;
  v3 = (*(*this + 912))(this);
  if (v2)
  {
    return 2024 - v3 - (-(*(*this + 912))(this) & 3);
  }

  else
  {
    return 2020 - v3;
  }
}

uint64_t AppleBCMWLANBusInterfacePCIe::getMaxTxControlFramePayload(AppleBCMWLANBusInterfacePCIe *this)
{
  v2 = (3 - (*(*this + 912))(this)) & 3;
  v3 = (*(*this + 912))(this);
  if (v2)
  {
    return 1883 - v3 - ((3 - (*(*this + 912))(this)) & 3);
  }

  else
  {
    return 1879 - v3;
  }
}

AppleBCMWLANBusInterfacePCIe *AppleBCMWLANBusInterfacePCIe::releaseFlowQueue(AppleBCMWLANBusInterfacePCIe *this, OSMetaClassBase *anObject)
{
  if (anObject)
  {
    v2 = this;
    v3 = OSMetaClassBase::safeMetaCast(anObject, gAppleBCMWLANPCIeFlowQueueMetaClass);
    v4 = v3;
    v5 = *(*(v2 + 9) + 1312);
    if (v5)
    {
      Hash = IO80211FlowQueue::getHash(v3);
      IO80211FlowQueueDatabase::remove(v5, Hash);
    }

    AssignedFlowRingID = AppleBCMWLANPCIeFlowQueue::getAssignedFlowRingID(v4);
    if (AssignedFlowRingID != 0xFFFF)
    {
      AppleBCMWLANBusInterfacePCIe::deleteFlow(v2, AssignedFlowRingID, 11131);
      AppleBCMWLANPCIeFlowQueue::unassignFlowRing(v4);
    }

    v8 = *(*v4 + 16);

    return v8(v4);
  }

  return this;
}

IO80211FlowQueue *AppleBCMWLANBusInterfacePCIe::requestFlowQueue(AppleBCMWLANBusInterfacePCIe *this, const ether_addr *a2, const ether_addr *a3, uint64_t a4, unsigned __int8 a5)
{
  if (!(*a3->octet | *&a3->octet[4]) || *(*(this + 9) + 1306) != 1)
  {
    return 0;
  }

  v9 = (*(*this + 1104))(this, a2);
  if (!(*(*v9 + 1992))(v9, a4))
  {
    if (AppleBCMWLANBusInterface::getLogger(this))
    {
      AppleBCMWLANBusInterface::getLogger(this);
      if (CCLogStream::shouldLog())
      {
        Logger = AppleBCMWLANBusInterface::getLogger(this);
        CCLogStream::logAlert(Logger, "[dk] %s@%d:ERROR ! Invalid Interface for IFID %d \n", "requestFlowQueue", 10991, a4);
      }
    }

    return 0;
  }

  v10 = *a3->octet | (*&a3->octet[4] << 32);
  v11 = *(*(*this + 1104))(this);
  v12 = (*(v11 + 1992))();
  v13 = AppleBCMWLANBusInterface::getLogger(this);
  FaultReporter = AppleBCMWLANBusInterface::getFaultReporter(this);
  v15 = AppleBCMWLANPCIeFlowQueue::withProviderAndQueueInfo(this, v10, a5, v12, v13, FaultReporter);
  IO80211FlowQueueDatabase::insert(*(*(this + 9) + 1312), v15);
  ++*(*(this + 9) + 1320);
  return v15;
}

uint64_t AppleBCMWLANBusInterfacePCIe::requestFlowId(AppleBCMWLANBusInterfacePCIe *this, uint64_t a2, uint64_t a3, int a4, int a5, int a6, unsigned __int16 *a7, _DWORD *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, unsigned __int8 a14)
{
  result = 3758097090;
  if (a7 && a8)
  {
    v23 = (this + 72);
    *a8 = *(*(this + 9) + 2880);
    LRUFlowId = AppleBCMWLANBusInterfacePCIe::findLRUFlowId(this);
    *a7 = LRUFlowId;
    if (LRUFlowId >= 0x2C)
    {
      if (AppleBCMWLANBusInterface::getLogger(this))
      {
        AppleBCMWLANBusInterface::getLogger(this);
        if (CCLogStream::shouldLog())
        {
          Logger = AppleBCMWLANBusInterface::getLogger(this);
          CCLogStream::logAlert(Logger, "[dk] %s@%d:flowId out of range! %u >= %lu\n", "requestFlowId", 11067, *a7, 44);
        }
      }

LABEL_27:
      result = 0;
      *a7 = -1;
      return result;
    }

    v26 = *(*v23 + 4 * LRUFlowId + 1866);
    v27 = *(*v23 + 8 * LRUFlowId + 4816);
    if (v26)
    {
      if (!v27 || (*(*v27 + 312))(v27) == 3 && !AppleBCMWLANItemRing::getReadableItemCount(*(*v23 + 8 * *a7 + 4816)) && !AppleBCMWLANPCIeTransmitFlowRing::packetsWaitingForRingCount(*(*v23 + 8 * *a7 + 4816), 2))
      {
        if (AppleBCMWLANBusInterface::getLogger(this))
        {
          AppleBCMWLANBusInterface::getLogger(this);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANBusInterfacePCIe::requestFlowId();
          }
        }

        if (!AppleBCMWLANBusInterfacePCIe::invalidateFlowId(this, *a7))
        {
          if (AppleBCMWLANBusInterface::getLogger(this))
          {
            AppleBCMWLANBusInterface::getLogger(this);
            if (CCLogStream::shouldLog())
            {
              v37 = AppleBCMWLANBusInterface::getLogger(this);
              CCLogStream::logAlert(v37, "[dk] %s@%d:deleteFlow for flowId:%d as part of eviction in requestFlowId\n", "requestFlowId", 11089, *a7);
            }
          }

          AppleBCMWLANBusInterfacePCIe::deleteFlow(this, *a7, 11090);
        }
      }

      goto LABEL_27;
    }

    if (v27)
    {
      *a7 = -1;
    }

    if (AppleBCMWLANBusInterface::getLogger(this))
    {
      AppleBCMWLANBusInterface::getLogger(this);
      if (CCLogStream::shouldLog())
      {
        v29 = AppleBCMWLANBusInterface::getLogger(this);
        v41 = *a7;
        v42 = v29;
        v30 = IO80211_io80211isSensitiveInfoAllowed();
        v31 = a3;
        if (!v30)
        {
          v31 = 0;
        }

        v40 = v31;
        if (IO80211_io80211isSensitiveInfoAllowed())
        {
          v32 = BYTE1(a3);
        }

        else
        {
          v32 = 0;
        }

        v39 = v32;
        if (IO80211_io80211isSensitiveInfoAllowed())
        {
          v33 = BYTE2(a3);
        }

        else
        {
          v33 = 0;
        }

        v38 = v33;
        if (IO80211_io80211isSensitiveInfoAllowed())
        {
          v34 = BYTE3(a3);
        }

        else
        {
          v34 = 0;
        }

        if (IO80211_io80211isSensitiveInfoAllowed())
        {
          v35 = BYTE4(a3);
        }

        else
        {
          v35 = 0;
        }

        if (IO80211_io80211isSensitiveInfoAllowed())
        {
          v36 = BYTE5(a3);
        }

        else
        {
          v36 = 0;
        }

        CCLogStream::logAlert(v42, "[dk] %s@%d:Assigning FlowID %d. tid=%d sa=%02x:%02x:%02x:%02x:%02x:%02x da=%02x:%02x:%02x:%02x:%02x:%02x ifid=%d maxpkt=%d\n", "requestFlowId", 11106, v41, a5, a2, BYTE1(a2), BYTE2(a2), BYTE3(a2), BYTE4(a2), BYTE5(a2), v40, v39, v38, v34, v35, v36, a4, *a8);
      }
    }

    v28 = *a7;
    if (v28 != 0xFFFF)
    {
      *(*(this + 9) + 4 * v28 + 1866) |= 1u;
      v55 = -21846;
      v57 = -1431655766;
      v58 = a9;
      v43 = a4;
      v44 = a3;
      v45 = BYTE2(a3);
      v46 = BYTE3(a3);
      v47 = BYTE4(a3);
      v48 = BYTE5(a3);
      v49 = a2;
      v50 = BYTE2(a2);
      v51 = BYTE3(a2);
      v52 = BYTE4(a2);
      v53 = BYTE5(a2);
      v54 = a5;
      v56 = a6;
      AppleBCMWLANBusInterfacePCIe::createFlow(this, *a7, &v43, a10, a11, a12, a13, a14);
    }

    return 0;
  }

  return result;
}

uint64_t AppleBCMWLANBusInterfacePCIe::findLRUFlowId(AppleBCMWLANBusInterfacePCIe *this)
{
  v1 = *(this + 9);
  v2 = *(v1 + 368);
  v3 = *(v1 + 2040);
  if (*(v1 + 368))
  {
    v4 = 0;
    v5 = v1 + 4816;
    v6 = v1 + 1864;
    do
    {
      if ((*(v6 + 4 * v3 + 2) & 1) == 0 && !*(v5 + 8 * v3))
      {
        break;
      }

      ++v4;
      v3 = *(v6 + 4 * v3);
    }

    while (v4 < v2);
  }

  return v3;
}

uint64_t AppleBCMWLANBusInterfacePCIe::printMRUFlowIdList(AppleBCMWLANBusInterfacePCIe *this, char *a2)
{
  v3 = *(this + 9);
  v4 = *(v3 + 368);
  if (*(v3 + 368))
  {
    v5 = 0;
    v6 = 0;
    v7 = (v3 + 2040);
    do
    {
      v8 = *v7;
      AppleBCMWLANBusInterface::getLogger(this);
      v10 = *(*(this + 9) + 4 * v8 + 1866);
      v6 += IO80211Print();
      v7 = (*(this + 9) + 4 * v8 + 1864);
      ++v5;
    }

    while (v4 != v5);
  }

  else
  {
    v6 = 0;
  }

  AppleBCMWLANBusInterface::getLogger(this);
  return v6 + IO80211Print();
}

uint64_t AppleBCMWLANBusInterfacePCIe::requestIOTx(AppleBCMWLANBusInterface *a1, int a2)
{
  v5 = a2;
  kdebug_trace();
  if ((*(**(*(a1 + 9) + 3464) + 144))(*(*(a1 + 9) + 3464)))
  {
    v3 = AppleBCMWLANBusInterfacePCIe::requestIOTxGated(a1, &v5);
  }

  else
  {
    AppleBCMWLANBusInterfacePCIe::requestIOTx(a1 + 72, &v5, &v6);
    v3 = v6;
  }

  kdebug_trace();
  return v3;
}

uint64_t AppleBCMWLANBusInterfacePCIe::requestIOTxGated(AppleBCMWLANBusInterface *a1, _DWORD *a2)
{
  kdebug_trace();
  v5 = (a1 + 72);
  v4 = *(a1 + 9);
  if (*(v4 + 1304) & 1) == 0 && *(v4 + 3248) && (*(v4 + 1306))
  {
    mach_continuous_time();
    v6 = *v5;
    absolutetime_to_nanoseconds();
    v7 = *(*v5 + 2840);
    if (*a2)
    {
      WritableItemCount = AppleBCMWLANItemRing::getWritableItemCount(*(*v5 + 312));
      v10 = *(*(a1 + 9) + 1148);
      AppleBCMWLANBusInterface::getTxDescriptor(a1, v19);
      Size = AppleBCMWLANCommandQueue::getSize(v19[0].n128_u64[1]);
      v12 = *(a1 + 9);
      if (WritableItemCount >= 1 - Size - v10)
      {
        v13 = *(v12 + 1148);
        AppleBCMWLANBusInterface::getTxDescriptor(a1, &v20);
        v8 = 1 - AppleBCMWLANCommandQueue::getSize(v20.n128_u64[1]) - v13;
      }

      else
      {
        LOWORD(v8) = AppleBCMWLANItemRing::getWritableItemCount(*(v12 + 312));
      }
    }

    else
    {
      LOWORD(v8) = 0;
    }

    if (v8 >= (*a2 & 1u))
    {
      v14 = *a2 & 1;
    }

    else
    {
      LOWORD(v14) = v8;
    }

    kdebug_trace();
    if (v14 | v7)
    {
      AppleBCMWLANBusInterfacePCIe::getWorkFromUpperLayers(a1, v7, v14);
      v15 = *(*(a1 + 9) + 4608);
      if (v15 && CCLogStream::shouldLog(v15, 1uLL))
      {
        AppleBCMWLANBusInterfacePCIe::pcapFillBusState(a1, v19[0].n128_i64 + 2);
      }

      (*(**(*(a1 + 9) + 312) + 208))(*(*(a1 + 9) + 312));
      v16 = AppleBCMWLANBusInterfacePCIe::workPendingForControl(a1);
      kdebug_trace();
      if (v16)
      {
        v17 = (*(**(*v5 + 312) + 192))(*(*v5 + 312), v16, 1);
      }

      else
      {
        v17 = 0;
      }

      if (AppleBCMWLANBusInterface::getTxDescriptorCommandQueueSize(a1) && AppleBCMWLANBusInterface::getLogger(a1))
      {
        AppleBCMWLANBusInterface::getLogger(a1);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANBusInterfacePCIe::requestIOTxGated(a1, v17);
        }
      }
    }

    kdebug_trace();
    return 0;
  }

  else
  {
    AppleBCMWLANBusInterfacePCIe::requestIOTxGated(a1, a1 + 72, v19);
    return v19[0].n128_u32[0];
  }
}