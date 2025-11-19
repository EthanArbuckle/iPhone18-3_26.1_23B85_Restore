BOOL AppleBCMWLANCore::isHWIdentifiersLate(IOService *this)
{
  v4 = 0;
  if (acquireProperty<OSBoolean>(this, "HWIdentifiersLate", &v4, 0, "IOService"))
  {
    v2 = v4 == kOSBooleanTrue;
    if (v4)
    {
      (v4->release)();
      v4 = 0;
    }
  }

  else
  {
    v2 = 0;
  }

  if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this))
  {
    (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::isHWIdentifiersLate(this);
    }
  }

  return v2;
}

uint64_t AppleBCMWLANCore::handleFdr(AppleBCMWLANCore *this, const char *a2)
{
  isFdrCal = AppleBCMWLANCore::isFdrCal(this);
  v5 = (*(*this + 1952))(this);
  if (isFdrCal)
  {
    if (v5)
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::handleFdr(this);
      }
    }

    if (*a2 == 102 && a2[1] == 100 && a2[2] == 114)
    {
      v6 = AppleBCMWLANCore::downloadFdr(this);
LABEL_24:
      if (!AppleBCMWLANCore::isHWIdentifiersLate(this) && !v6)
      {
        return v6;
      }

      goto LABEL_16;
    }

    if (!strncmp(a2, "genCal", 6uLL))
    {
      v6 = AppleBCMWLANCore::downloadGenericCalibrationData(this);
      if (!v6)
      {
        goto LABEL_24;
      }

      v10 = OSString::withCString("unavailable");
      if (v10)
      {
        v11 = v10;
        v12 = (*(*(*(*(this + 9) + 5392) + 48) + 288))();
        setPropertyHelper(v12, "wlan.msf.source", v11);
        (v11->release)(v11);
      }
    }

    else
    {
      v6 = 3758097084;
    }

    AppleBCMWLANCore::isHWIdentifiersLate(this);
LABEL_16:
    if (AppleBCMWLANCore::isHWIdentifiersLate(this))
    {
      v7 = 59137;
      v8 = -469792989;
    }

    else
    {
      v7 = 59139;
      v8 = v6;
    }

    CCFaultReporter::reportFault(*(*(this + 9) + 5536), 4u, "/Library/Caches/com.apple.xbs/Sources/AppleBCMWLANV3_driverkit/AppleBCMWLANCore.cpp", v7, "handleFdr", 0, v8, 0);
    return v6;
  }

  if (v5)
  {
    (*(*this + 1952))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::handleFdr(this);
    }
  }

  return 0;
}

uint64_t AppleBCMWLANCore::userSetPropertiesGated(AppleBCMWLANCore *this, OSContainer *anObject)
{
  v4 = 3758097084;
  v5 = OSMetaClassBase::safeMetaCast(anObject, gOSDictionaryMetaClass);
  if (!v5)
  {
    return v4;
  }

  v6 = v5;
  Object = OSDictionary::getObject(v5, "PlatformConfig");
  if (Object)
  {
    v8 = OSMetaClassBase::safeMetaCast(Object, gOSDictionaryMetaClass);
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::userSetPropertiesGated(this);
      }
    }

    v4 = AppleBCMWLANCore::setPlatformConfigProperties(this, v8);
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::userSetPropertiesGated(this);
      }
    }
  }

  v9 = OSDictionary::getObject(v6, "WiFiFdrCal");
  if (v9)
  {
    v10 = OSMetaClassBase::safeMetaCast(v9, gOSDataMetaClass);
    v11 = (*(*this + 1952))(this);
    if (v10)
    {
      if (v11)
      {
        (*(*this + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::userSetPropertiesGated(this);
        }
      }

      v12 = (*(*(*(*(this + 9) + 5392) + 48) + 288))();
      setPropertyHelper(v12, "wifi-calibration-fdr", v10);
      v4 = 0;
    }

    else if (v11)
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::userSetPropertiesGated(this);
      }
    }
  }

  v13 = OSDictionary::getObject(v6, "WiFiMSFSource");
  if (v13)
  {
    v14 = v13;
    if (OSMetaClassBase::safeMetaCast(v13, gOSStringMetaClass) && (v15 = OSMetaClassBase::safeMetaCast(v14, gOSStringMetaClass), (v16 = OSString::withString(v15)) != 0))
    {
      v17 = v16;
      if ((*(*this + 1952))(this))
      {
        (*(*this + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::userSetPropertiesGated(this);
        }
      }

      v18 = (*(*(*(*(this + 9) + 5392) + 48) + 288))();
      setPropertyHelper(v18, "wlan.msf.source", v17);
      CStringNoCopy = OSString::getCStringNoCopy(v17);
      v4 = AppleBCMWLANCore::handleFdr(this, CStringNoCopy);
      if ((*(*this + 1952))(this))
      {
        (*(*this + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::userSetPropertiesGated(this, this & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000, v4);
        }
      }

      (v17->release)(v17);
    }

    else if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::userSetPropertiesGated(this);
      }
    }
  }

  if (OSDictionary::getObject(v6, "HWIdentifiersLate"))
  {
    setPropertyHelper(this, "HWIdentifiersLate", kOSBooleanTrue);
  }

  if (v4)
  {
    return v4;
  }

  return IOService::UserSetProperties(this, anObject, &IO80211Controller::_Dispatch);
}

uint64_t AppleBCMWLANCore::UserSetProperties_Impl(AppleBCMWLANCore *this, OSContainer *a2)
{
  if ((*(**(*(this + 9) + 31064) + 144))(*(*(this + 9) + 31064)))
  {

    return AppleBCMWLANCore::userSetPropertiesGated(this, a2);
  }

  else
  {
    v5 = *(*(this + 9) + 31064);
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 0x40000000;
    v6[2] = ___ZN16AppleBCMWLANCore22UserSetProperties_ImplEP11OSContainer_block_invoke;
    v6[3] = &__block_descriptor_tmp_3314;
    v6[4] = this;
    v6[5] = a2;
    return (*(*v5 + 112))(v5, v6);
  }
}

uint64_t AppleBCMWLANCore::getLogPipes(uint64_t a1, void *a2, void *a3, void *a4)
{
  result = *(*(a1 + 72) + 5392);
  if (result)
  {
    return AppleBCMWLANBusInterface::getLogPipesAndStreams(result, a2, a3, a4, 0, 0);
  }

  return result;
}

uint64_t non-virtual thunk toAppleBCMWLANCore::getLogPipes(uint64_t a1, void *a2, void *a3, void *a4)
{
  result = *(*(a1 + 24) + 5392);
  if (result)
  {
    return AppleBCMWLANBusInterface::getLogPipesAndStreams(result, a2, a3, a4, 0, 0);
  }

  return result;
}

uint64_t AppleBCMWLANCore::isOCLAWDLSupported(AppleBCMWLANCore *this)
{
  result = AppleBCMWLANCore::isOCLEnabled(this);
  if (result)
  {
    v3 = *(*(this + 9) + 5464);

    return AppleBCMWLANConfigManager::isOCLAWDLSupportedInDriver(v3);
  }

  return result;
}

uint64_t AppleBCMWLANCore::isBcnCWSwitchEnabled(AppleBCMWLANCore *this)
{
  result = AppleBCMWLANCore::featureFlagIsBitSet(this, 3);
  if (result)
  {
    v3 = *(*(this + 9) + 5464);

    return AppleBCMWLANConfigManager::isBcnCWSwitchSupportedInDriver(v3);
  }

  return result;
}

uint64_t AppleBCMWLANCore::getSkywalkInterface(AppleBCMWLANCore *this, unsigned int a2)
{
  if (a2 <= 0xB && (v2 = *(*(this + 9) + 8 * a2 + 11192)) != 0)
  {
    return *v2;
  }

  else
  {
    return 0;
  }
}

uint64_t non-virtual thunk toAppleBCMWLANCore::getSkywalkInterface(AppleBCMWLANCore *this, unsigned int a2)
{
  if (a2 <= 0xB && (v2 = *(*(this + 1) + 8 * a2 + 11192)) != 0)
  {
    return *v2;
  }

  else
  {
    return 0;
  }
}

uint64_t AppleBCMWLANCore::getWCL_GET_TX_BLANKING_STATUS(AppleBCMWLANCore *this, unsigned int *a2)
{
  if (a2)
  {
    *a2 = *(*(this + 9) + 19688);
  }

  return 0;
}

uint64_t AppleBCMWLANCore::addCumulativePkts(uint64_t this, unsigned int a2, unsigned int a3)
{
  v3 = *(this + 72) + 8 * a2;
  *(v3 + 18328) += a3;
  return this;
}

uint64_t AppleBCMWLANCore::checkForSaePKSupport(AppleBCMWLANCore *this)
{
  result = AppleBCMWLANCore::featureFlagIsBitSet(this, 109);
  if (result)
  {
    return (*(*(this + 9) + 17522) >> 6) & 1;
  }

  return result;
}

uint64_t AppleBCMWLANCore::checkForOprChValidationSupport(AppleBCMWLANCore *this)
{
  result = AppleBCMWLANCore::featureFlagIsBitSet(this, 107);
  if (result)
  {
    return (*(*(this + 9) + 17522) >> 4) & 1;
  }

  return result;
}

BOOL AppleBCMWLANCoreFirmwareLoader::init(IOService *this)
{
  result = IOService::init(this);
  if (result)
  {
    v3 = IOMallocZeroTyped();
    this[1].OSObject::OSMetaClassBase::__vftable = v3;
    if (v3)
    {
      return 1;
    }

    else
    {
      IOLog("Failed to allocate AppleBCMWLANCoreFirmwareLoader_IVars\n");
      return 0;
    }
  }

  return result;
}

uint64_t AppleBCMWLANCoreFirmwareLoader::Start_Impl(IOService *this, IOService *a2)
{
  v4 = IOService::Start(this, a2, &IO80211Controller::_Dispatch);
  (a2->retain)(a2);
  this[1].getMetaClass = a2;
  if (v4)
  {
    IOLog("AppleBCMWLANCoreFirmwareLoader service registration failure\n");
  }

  else
  {
    IOService::RegisterService(this, 0);
    IOLog("AppleBCMWLANCoreFirmwareLoader service registration success\n");
  }

  return v4;
}

void AppleBCMWLANCoreFirmwareLoader::free(IOService *this)
{
  v2 = this[1].OSObject::OSMetaClassBase::__vftable;
  if (v2)
  {
    if (v2->getMetaClass)
    {
      (*(*v2->getMetaClass + 16))(v2->getMetaClass);
      this[1].getMetaClass = 0;
      v2 = this[1].OSObject::OSMetaClassBase::__vftable;
    }

    memset_s(v2, 8uLL, 0, 8uLL);
    v3 = this[1].OSObject::OSMetaClassBase::__vftable;
    if (v3)
    {
      IOFree(v3, 8uLL);
      this[1].OSObject::OSMetaClassBase::__vftable = 0;
    }
  }

  IOService::free(this);
}

uint64_t AppleBCMWLANCore::configureDynamicRssiWindow(AppleBCMWLANCore *this, int a2)
{
  if ((a2 - 17) > 0xFFFFFFF0)
  {
    v4 = *(*(this + 9) + 5464);

    return AppleBCMWLANConfigManager::configureDynamicRssiWindow(v4, a2);
  }

  else
  {
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::configureDynamicRssiWindow(this);
      }
    }

    return 3758097090;
  }
}

uint64_t AppleBCMWLANCore::triggerTTR(uint64_t *a1, int a2)
{
  v4 = IOMallocZeroData();
  v5 = v4;
  if (a2)
  {
    result = (*(*a1 + 1952))(a1);
    if (result && ((*(*a1 + 1952))(a1), result = CCLogStream::shouldLog(), result))
    {
      result = AppleBCMWLANCore::triggerTTR(a1);
      if (!v5)
      {
        return result;
      }
    }

    else if (!v5)
    {
      return result;
    }
  }

  else
  {
    *v4 = 0;
    strlcpy((v4 + 4), kAppleBCMWLANCommanderOutboundQueueStall[0], 0x100uLL);
    IO80211Controller::postMessage(a1, *(a1[9] + 11288), 0xC4u, v5, 0x104uLL, 1);
  }

  return IOFreeData();
}

uint64_t AppleBCMWLANCore::is6ESupportedInCurrentCountry(AppleBCMWLANCore *this)
{
  v2 = this + 72;
  v3 = *(this + 9);
  if (*(v3 + 6756) == 1)
  {
    if (strncmp((v3 + 6736), (v3 + 6744), 4uLL))
    {
      if ((*(*this + 1952))(this))
      {
        (*(*this + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::is6ESupportedInCurrentCountry(this);
        }
      }

LABEL_19:
      *(*v2 + 35896) = 0;
      return *(*v2 + 35896);
    }

    if (strncmp((v3 + 6748), (v3 + 6736), 4uLL))
    {
      if ((*(*this + 1952))(this))
      {
        (*(*this + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::is6ESupportedInCurrentCountry(this);
        }
      }

      if (AppleBCMWLANCore::handleCountryCodeChangeToRepopulateChannels(this))
      {
        goto LABEL_19;
      }

      if ((*(*this + 1952))(this))
      {
        (*(*this + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::is6ESupportedInCurrentCountry(this);
        }
      }
    }
  }

  else if (strncmp((v3 + 6748), (v3 + 6744), 4uLL))
  {
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::is6ESupportedInCurrentCountry(this);
      }
    }

    if (AppleBCMWLANCore::handleCountryCodeChangeToRepopulateChannels(this))
    {
      goto LABEL_19;
    }

    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::is6ESupportedInCurrentCountry(this);
      }
    }
  }

  return *(*v2 + 35896);
}

uint64_t AppleBCMWLANCore::setWCL_REAL_TIME_MODE(uint64_t a1, _BYTE *a2)
{
  if (!a2)
  {
    return 3758097084;
  }

  v2 = *(*(a1 + 72) + 5600);
  if (*a2)
  {
    return AppleBCMWLANNetAdapter::setRealTimeMode(v2);
  }

  else
  {
    return AppleBCMWLANNetAdapter::setDefaultMode(v2);
  }
}

uint64_t AppleBCMWLANCore::setWCL_LINK_STATE_UPDATE(uint64_t a1, ether_addr *a2)
{
  if (!a2)
  {
    return 3758097084;
  }

  v2 = *(*(a1 + 72) + 5600);
  if (a2[1].octet[0])
  {
    return AppleBCMWLANNetAdapter::setLinkUp(v2, a2, a2[1].octet[1] != 0, a2[1].octet[2] != 0);
  }

  else
  {
    return AppleBCMWLANNetAdapter::setLinkDown(v2);
  }
}

uint64_t AppleBCMWLANCore::getWCL_CHANNELS_INFO(AppleBCMWLANCore *a1, uint64_t a2)
{
  *(a2 + 3200) = *(*(a1 + 9) + 19916);
  *(a2 + 3205) = AppleBCMWLANCore::is6ESupportedInCurrentCountry(a1);
  v4 = *(*(a1 + 9) + 19912);
  *(a2 + 3204) = *(*(a1 + 9) + 19914);
  *(a2 + 3202) = v4;
  v5 = *(a1 + 9);
  if (*(v5 + 19916))
  {
    v6 = 0;
    v7 = (a2 + 7);
    do
    {
      *(v7 - 7) = AppleBCMWLANChanSpec::getAppleChannelSpec(*(v5 + 17744), *(v5 + 2 * v6 + 19918));
      *(v7 - 1) = *(*(a1 + 9) + v6 + 20718);
      v8 = *v7 & 0xFE | *(*(a1 + 9) + v6 + 21118) & 1;
      *v7 = v8;
      v9 = v8 & 0xFFFFFFFD | (2 * (*(*(a1 + 9) + v6 + 21518) & 1));
      *v7 = v9;
      v10 = v9 & 0xFFFFFFFB | (4 * (*(*(a1 + 9) + v6 + 21918) & 1));
      *v7 = v10;
      v11 = v10 & 0xFFFFFFF7 | (8 * ((*(*(a1 + 9) + 4 * v6 + 24720) >> 8) & 1));
      *v7 = v11;
      LOBYTE(v11) = v11 & 0xEF | (16 * (*(*(a1 + 9) + v6 + 27120) & 1));
      *v7 = v11;
      LOBYTE(v11) = v11 & 0xDF | (32 * (*(*(a1 + 9) + v6 + 27520) & 1));
      *v7 = v11;
      *v7 = ((*(*(a1 + 9) + v6 + 27920) & 1) << 6) | v11 & 0xBF;
      *(v7 - 5) = *(*(a1 + 9) + v6 + 28320);
      *(v7 - 4) = *(*(a1 + 9) + v6 + 28720);
      *(v7 - 3) = *(*(a1 + 9) + v6 + 29120);
      *(v7 - 2) = *(*(a1 + 9) + v6++ + 29520);
      v5 = *(a1 + 9);
      v7 += 8;
    }

    while (v6 < *(v5 + 19916));
  }

  return 0;
}

uint64_t AppleBCMWLANCore::getBEACON_PERIOD(uint64_t a1, uint64_t a2)
{
  v2 = *(*(a1 + 72) + 5432);
  if (v2)
  {
    return IO80211BssManager::getCurrentBeaconPeriod(v2, (a2 + 4));
  }

  else
  {
    return 3758097084;
  }
}

uint64_t non-virtual thunk toAppleBCMWLANCore::getBEACON_PERIOD(uint64_t a1, uint64_t a2)
{
  v2 = *(*(a1 + 8) + 5432);
  if (v2)
  {
    return IO80211BssManager::getCurrentBeaconPeriod(v2, (a2 + 4));
  }

  else
  {
    return 3758097084;
  }
}

uint64_t AppleBCMWLANCore::getTKO_PARAMS(uint64_t a1, _DWORD *a2)
{
  v2 = *(*(a1 + 72) + 5544);
  if (v2)
  {
    return AppleBCMWLANKeepAliveOffload::getTCPAliveOffloadParams(v2, a2);
  }

  else
  {
    return 3758097084;
  }
}

uint64_t non-virtual thunk toAppleBCMWLANCore::getTKO_PARAMS(uint64_t a1, _DWORD *a2)
{
  v2 = *(*(a1 + 8) + 5544);
  if (v2)
  {
    return AppleBCMWLANKeepAliveOffload::getTCPAliveOffloadParams(v2, a2);
  }

  else
  {
    return 3758097084;
  }
}

uint64_t AppleBCMWLANCore::getTKO_DUMP(uint64_t a1, uint64_t a2)
{
  v2 = *(*(a1 + 72) + 5544);
  if (v2)
  {
    return AppleBCMWLANKeepAliveOffload::getTCPAliveOffloadDump(v2, a2);
  }

  else
  {
    return 3758097084;
  }
}

uint64_t non-virtual thunk toAppleBCMWLANCore::getTKO_DUMP(uint64_t a1, uint64_t a2)
{
  v2 = *(*(a1 + 8) + 5544);
  if (v2)
  {
    return AppleBCMWLANKeepAliveOffload::getTCPAliveOffloadDump(v2, a2);
  }

  else
  {
    return 3758097084;
  }
}

uint64_t AppleBCMWLANCore::getDTIM_INT(uint64_t a1, uint64_t a2)
{
  v2 = *(*(a1 + 72) + 5432);
  if (v2)
  {
    return IO80211BssManager::getCurrentDTIMPeriod(v2, (a2 + 4));
  }

  else
  {
    return 3758097084;
  }
}

uint64_t non-virtual thunk toAppleBCMWLANCore::getDTIM_INT(uint64_t a1, uint64_t a2)
{
  v2 = *(*(a1 + 8) + 5432);
  if (v2)
  {
    return IO80211BssManager::getCurrentDTIMPeriod(v2, (a2 + 4));
  }

  else
  {
    return 3758097084;
  }
}

uint64_t AppleBCMWLANCore::setGET_DEBUG_INFO(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a3 || *(a3 + 245192) != 1 || *(a3 + 1464) > 0x1000000uLL)
  {
    return 22;
  }

  if (*(*(a1 + 72) + 14264))
  {
    result = IO80211CoreDbg::handleDebugCmd();
    if (!a2)
    {
      return result;
    }
  }

  else
  {
    result = 19;
    if (!a2)
    {
      return result;
    }
  }

  if (result == 19)
  {

    return IO80211SkywalkInterface::handleDebugCmd(a2, a3);
  }

  return result;
}

uint64_t AppleBCMWLANCore::setTKO_PARAMS(uint64_t a1, _DWORD *a2)
{
  v2 = *(*(a1 + 72) + 5544);
  if (v2)
  {
    return AppleBCMWLANKeepAliveOffload::setTCPAliveOffloadParams(v2, a2);
  }

  else
  {
    return 3758097084;
  }
}

uint64_t non-virtual thunk toAppleBCMWLANCore::setTKO_PARAMS(uint64_t a1, _DWORD *a2)
{
  v2 = *(*(a1 + 8) + 5544);
  if (v2)
  {
    return AppleBCMWLANKeepAliveOffload::setTCPAliveOffloadParams(v2, a2);
  }

  else
  {
    return 3758097084;
  }
}

uint64_t AppleBCMWLANCore::setLE_SCAN_PARAM(void *a1, _DWORD *a2)
{
  v3 = *a2;
  v5 = a2[1];
  v4 = a2[2];
  v6 = a2[3];
  if ((*(*a1 + 1952))(a1))
  {
    (*(*a1 + 1952))(a1);
    if (CCLogStream::shouldLog())
    {
      v12 = (*(*a1 + 1952))(a1);
      CCLogStream::logAlert(v12, "[dk] %s@%d:Receiving BT LE SCAN notification: enable %d, peak = %u, total = %u, dc = %d\n", "setLE_SCAN_PARAM", 60971, v3, v5, v4, v6);
    }
  }

  v7 = a1[9] + 28672;
  if (v3)
  {
    ++*(a1[9] + 30924);
    *(a1[9] + 30932) += v5;
    v8 = (a1[9] + 30936);
  }

  else
  {
    v8 = (a1[9] + 30928);
    v4 = 1;
  }

  *v8 += v4;
  if (v6 <= 6)
  {
    ++*(a1[9] + 4 * v6 + 30940);
  }

  v9 = a1[9];
  v10 = *(v9 + 5512);
  if (v10)
  {
    AppleBCMWLANIOReportingPerSlice::reportBTLECnxStats(v10, (v9 + 30924));
  }

  return 0;
}

uint64_t AppleBCMWLANCore::setMWS_WIFI_TYPE_7_BITMAP_WIFI_ENH(uint64_t *a1, _DWORD *a2)
{
  if (!a2)
  {
    return 3758097084;
  }

  if ((*(*a1 + 1952))(a1))
  {
    (*(*a1 + 1952))(a1);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::setMWS_WIFI_TYPE_7_BITMAP_WIFI_ENH(a1);
    }
  }

  *(a1[9] + 10616) = *a2;
  *(a1[9] + 10620) = a2[1];
  *(a1[9] + 10624) = a2[2];
  *(a1[9] + 10628) = a2[3];
  *(a1[9] + 10632) = a2[4];
  *(a1[9] + 10636) = a2[5];
  *(a1[9] + 10640) = a2[6];
  *(a1[9] + 10644) = a2[7];
  *(a1[9] + 10648) = a2[8];
  v4 = *(*a1 + 1568);
  v5 = a1[9] + 10616;

  return v4(a1, v5);
}

uint64_t AppleBCMWLANCore::setMWS_COEX_BITMAP_WIFI_ENH(uint64_t *a1, _DWORD *a2)
{
  if (!a2)
  {
    return 3758097084;
  }

  if ((*(*a1 + 1952))(a1))
  {
    (*(*a1 + 1952))(a1);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::setMWS_COEX_BITMAP_WIFI_ENH(a1);
    }
  }

  *(a1[9] + 10540) = *a2;
  *(a1[9] + 10544) = a2[1];
  *(a1[9] + 10548) = a2[2];
  *(a1[9] + 10552) = a2[3];
  *(a1[9] + 10556) = a2[4];
  *(a1[9] + 10560) = a2[5];
  *(a1[9] + 10564) = a2[6];
  *(a1[9] + 10568) = a2[7];
  *(a1[9] + 10572) = a2[8];
  if ((*(*a1 + 1952))(a1))
  {
    (*(*a1 + 1952))(a1);
    if (CCLogStream::shouldLog())
    {
      v7 = (*(*a1 + 1952))(a1);
      CCLogStream::logAlert(v7, "[dk] %s@%d:APPLE80211_IOC_MWS_COEX_BITMAP_WIFI_ENH 2g_bitmap=0x%X, 5g_bitmap_low=0x%X, 5g_bitmap_mid=0x%X, 5g_bitmap_high=0x%X\n", "setMWS_COEX_BITMAP_WIFI_ENH", 61032, *a2, a2[1], a2[2], a2[3]);
    }
  }

  if ((*(*a1 + 1952))(a1))
  {
    (*(*a1 + 1952))(a1);
    if (CCLogStream::shouldLog())
    {
      v8 = (*(*a1 + 1952))(a1);
      CCLogStream::logAlert(v8, "[dk] %s@%d:APPLE80211_IOC_MWS_COEX_BITMAP_WIFI_ENH unii5_bitmap_low=0x%X, unii5_bitmap_high=0x%X, unii6_bitmap=0x%X, unii7_bitmap=0x%X, unii8_bitmap=0x%X\n", "setMWS_COEX_BITMAP_WIFI_ENH", 61034, a2[4], a2[5], a2[6], a2[7], a2[8]);
    }
  }

  v4 = *(*a1 + 1552);
  v5 = a1[9] + 10540;

  return v4(a1, v5);
}

uint64_t AppleBCMWLANCore::setMWS_DISABLE_OCL_BITMAP_WIFI_ENH(uint64_t *a1, _DWORD *a2)
{
  if (!a2)
  {
    return 3758097084;
  }

  if ((*(*a1 + 1952))(a1))
  {
    (*(*a1 + 1952))(a1);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::setMWS_DISABLE_OCL_BITMAP_WIFI_ENH(a1);
    }
  }

  *(a1[9] + 10580) = *a2;
  *(a1[9] + 10584) = a2[1];
  *(a1[9] + 10588) = a2[2];
  *(a1[9] + 10592) = a2[3];
  *(a1[9] + 10596) = a2[4];
  *(a1[9] + 10600) = a2[5];
  *(a1[9] + 10604) = a2[6];
  *(a1[9] + 10608) = a2[7];
  *(a1[9] + 10612) = a2[8];
  if ((*(*a1 + 1952))(a1))
  {
    (*(*a1 + 1952))(a1);
    if (CCLogStream::shouldLog())
    {
      v7 = (*(*a1 + 1952))(a1);
      CCLogStream::logAlert(v7, "[dk] %s@%d:APPLE80211_IOC_MWS_DISABLE_OCL_BITMAP_WIFI_ENH 2g_bitmap=0x%X, 5g_bitmap_low=0x%X, 5g_bitmap_mid=0x%X, 5g_bitmap_high=0x%X\n", "setMWS_DISABLE_OCL_BITMAP_WIFI_ENH", 61059, *a2, a2[1], a2[2], a2[3]);
    }
  }

  if ((*(*a1 + 1952))(a1))
  {
    (*(*a1 + 1952))(a1);
    if (CCLogStream::shouldLog())
    {
      v8 = (*(*a1 + 1952))(a1);
      CCLogStream::logAlert(v8, "[dk] %s@%d:APPLE80211_IOC_MWS_DISABLE_OCL_BITMAP_WIFI_ENH unii5_bitmap_low=0x%X, unii5_bitmap_high=0x%X, unii6_bitmap=0x%X, unii7_bitmap=0x%X, unii8_bitmap=0x%X\n", "setMWS_DISABLE_OCL_BITMAP_WIFI_ENH", 61061, a2[4], a2[5], a2[6], a2[7], a2[8]);
    }
  }

  v4 = *(*a1 + 1560);
  v5 = a1[9] + 10580;

  return v4(a1, v5);
}

uint64_t AppleBCMWLANCore::setMWS_RFEM_CONFIG_WIFI_ENH(uint64_t *a1, _DWORD *a2)
{
  if (!a2)
  {
    return 3758097084;
  }

  if ((*(*a1 + 1952))(a1))
  {
    (*(*a1 + 1952))(a1);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::setMWS_RFEM_CONFIG_WIFI_ENH(a1);
    }
  }

  *(a1[9] + 10576) = a2[9];
  *(a1[9] + 10540) = *a2;
  *(a1[9] + 10544) = a2[1];
  *(a1[9] + 10548) = a2[2];
  *(a1[9] + 10552) = a2[3];
  *(a1[9] + 10556) = a2[4];
  *(a1[9] + 10560) = a2[5];
  *(a1[9] + 10564) = a2[6];
  *(a1[9] + 10568) = a2[7];
  *(a1[9] + 10572) = a2[8];
  if ((*(*a1 + 1952))(a1))
  {
    (*(*a1 + 1952))(a1);
    if (CCLogStream::shouldLog())
    {
      v7 = (*(*a1 + 1952))(a1);
      CCLogStream::logAlert(v7, "[dk] %s@%d:APPLE80211_IOC_MWS_RFEM_CONFIG_WIFI_ENH wifiBandBitmak=0x%X, 2g_bitmap=0x%X, 5g_bitmap_low=0x%X, 5g_bitmap_mid=0x%X, 5g_bitmap_high=0x%X\n", "setMWS_RFEM_CONFIG_WIFI_ENH", 61087, a2[9], *a2, a2[1], a2[2], a2[3]);
    }
  }

  if ((*(*a1 + 1952))(a1))
  {
    (*(*a1 + 1952))(a1);
    if (CCLogStream::shouldLog())
    {
      v8 = (*(*a1 + 1952))(a1);
      CCLogStream::logAlert(v8, "[dk] %s@%d:APPLE80211_IOC_MWS_RFEM_CONFIG_WIFI_ENH unii5_bitmap_low=0x%X, unii5_bitmap_high=0x%X, unii6_bitmap=0x%X, unii7_bitmap=0x%X, unii8_bitmap=0x%X\n", "setMWS_RFEM_CONFIG_WIFI_ENH", 61089, a2[4], a2[5], a2[6], a2[7], a2[8]);
    }
  }

  v4 = *(*a1 + 1600);
  v5 = a1[9] + 10540;

  return v4(a1, v5);
}

uint64_t AppleBCMWLANCore::setMWS_ASSOC_PROTECTION_BITMAP_WIFI_ENH(uint64_t *a1, _DWORD *a2)
{
  if (!a2)
  {
    return 3758097084;
  }

  if ((*(*a1 + 1952))(a1))
  {
    (*(*a1 + 1952))(a1);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::setMWS_ASSOC_PROTECTION_BITMAP_WIFI_ENH(a1);
    }
  }

  *(a1[9] + 10540) = *a2;
  *(a1[9] + 10544) = a2[1];
  *(a1[9] + 10548) = a2[2];
  *(a1[9] + 10552) = a2[3];
  *(a1[9] + 10556) = a2[4];
  *(a1[9] + 10560) = a2[5];
  *(a1[9] + 10564) = a2[6];
  *(a1[9] + 10568) = a2[7];
  *(a1[9] + 10572) = a2[8];
  if ((*(*a1 + 1952))(a1))
  {
    (*(*a1 + 1952))(a1);
    if (CCLogStream::shouldLog())
    {
      v7 = (*(*a1 + 1952))(a1);
      CCLogStream::logAlert(v7, "[dk] %s@%d:APPLE80211_IOC_MWS_ASSOC_PROTECTION_BITMAP_WIFI_ENH 2g_bitmap=0x%X, 5g_bitmap_low=0x%X, 5g_bitmap_mid=0x%X, 5g_bitmap_high=0x%X\n", "setMWS_ASSOC_PROTECTION_BITMAP_WIFI_ENH", 61114, *a2, a2[1], a2[2], a2[3]);
    }
  }

  if ((*(*a1 + 1952))(a1))
  {
    (*(*a1 + 1952))(a1);
    if (CCLogStream::shouldLog())
    {
      v8 = (*(*a1 + 1952))(a1);
      CCLogStream::logAlert(v8, "[dk] %s@%d:APPLE80211_IOC_MWS_ASSOC_PROTECTION_BITMAP_WIFI_ENH unii5_bitmap_low=0x%X, unii5_bitmap_high=0x%X, unii6_bitmap=0x%X, unii7_bitmap=0x%X, unii8_bitmap=0x%X\n", "setMWS_ASSOC_PROTECTION_BITMAP_WIFI_ENH", 61116, a2[4], a2[5], a2[6], a2[7], a2[8]);
    }
  }

  v4 = *(*a1 + 1608);
  v5 = a1[9] + 10540;

  return v4(a1, v5);
}

uint64_t AppleBCMWLANCore::setMWS_SCAN_FREQ_WIFI_ENH(uint64_t *a1, _DWORD *a2)
{
  if (!a2)
  {
    return 3758097084;
  }

  if ((*(*a1 + 1952))(a1))
  {
    (*(*a1 + 1952))(a1);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::setMWS_SCAN_FREQ_WIFI_ENH(a1);
    }
  }

  *(a1[9] + 10652) = a2[9];
  *(a1[9] + 10656) = *a2;
  *(a1[9] + 10660) = a2[1];
  *(a1[9] + 10664) = a2[2];
  *(a1[9] + 10668) = a2[3];
  *(a1[9] + 10672) = a2[4];
  *(a1[9] + 10676) = a2[5];
  *(a1[9] + 10680) = a2[6];
  *(a1[9] + 10684) = a2[7];
  *(a1[9] + 10688) = a2[8];
  if ((*(*a1 + 1952))(a1))
  {
    (*(*a1 + 1952))(a1);
    if (CCLogStream::shouldLog())
    {
      v7 = (*(*a1 + 1952))(a1);
      CCLogStream::logAlert(v7, "[dk] %s@%d:APPLE80211_IOC_MWS_SCAN_FREQ_WIFI_ENH freqIndex = %d, 2g_bitmap=0x%X, 5g_bitmap_low=0x%X, 5g_bitmap_mid=0x%X, 5g_bitmap_high=0x%X\n", "setMWS_SCAN_FREQ_WIFI_ENH", 61142, a2[9], *a2, a2[1], a2[2], a2[3]);
    }
  }

  if ((*(*a1 + 1952))(a1))
  {
    (*(*a1 + 1952))(a1);
    if (CCLogStream::shouldLog())
    {
      v8 = (*(*a1 + 1952))(a1);
      CCLogStream::logAlert(v8, "[dk] %s@%d:APPLE80211_IOC_MWS_SCAN_FREQ_WIFI_ENH unii5_bitmap_low=0x%X, unii5_bitmap_high=0x%X, unii6_bitmap=0x%X, unii7_bitmap=0x%X, unii8_bitmap=0x%X\n", "setMWS_SCAN_FREQ_WIFI_ENH", 61144, a2[4], a2[5], a2[6], a2[7], a2[8]);
    }
  }

  v4 = *(*a1 + 1576);
  v5 = a1[9] + 10652;

  return v4(a1, v5);
}

uint64_t AppleBCMWLANCore::setMWS_SCAN_FREQ_MODE_WIFI_ENH(uint64_t *a1, _DWORD *a2)
{
  if (!a2)
  {
    return 3758097084;
  }

  if ((*(*a1 + 1952))(a1))
  {
    (*(*a1 + 1952))(a1);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::setMWS_SCAN_FREQ_MODE_WIFI_ENH(a1);
    }
  }

  *(a1[9] + 10652) = a2[9];
  *(a1[9] + 10656) = a2[1];
  *(a1[9] + 10660) = a2[2];
  *(a1[9] + 10664) = a2[3];
  if ((*(*a1 + 1952))(a1))
  {
    (*(*a1 + 1952))(a1);
    if (CCLogStream::shouldLog())
    {
      v7 = (*(*a1 + 1952))(a1);
      CCLogStream::logAlert(v7, "[dk] %s@%d:APPLE80211_IOC_MWS_SCAN_FREQ_MODE_WIFI_ENH freqIndex = %d, 5g_bitmap_low=0x%X, 5g_bitmap_mid=0x%X, 5g_bitmap_high=0x%X\n", "setMWS_SCAN_FREQ_MODE_WIFI_ENH", 61168, a2[9], a2[1], a2[2], a2[3]);
    }
  }

  v4 = *(*a1 + 1584);
  v5 = a1[9] + 10652;

  return v4(a1, v5);
}

uint64_t AppleBCMWLANCore::setMWS_CONDITION_ID_BITMAP_WIFI_ENH(uint64_t *a1, uint64_t a2)
{
  if ((*(*a1 + 1952))(a1))
  {
    (*(*a1 + 1952))(a1);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::setMWS_CONDITION_ID_BITMAP_WIFI_ENH(a1);
    }
  }

  result = 3758097084;
  if (a2 && *(a2 + 2))
  {
    v5 = 0;
    for (i = a2 + 20; ; i += 40)
    {
      if ((*(*a1 + 1952))(a1))
      {
        (*(*a1 + 1952))(a1);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::setMWS_CONDITION_ID_BITMAP_WIFI_ENH(a1);
        }
      }

      *(a1[9] + 10692) = *(i + 20);
      *(a1[9] + 10540) = *(i - 16);
      *(a1[9] + 10544) = *(i - 12);
      *(a1[9] + 10548) = *(i - 8);
      *(a1[9] + 10552) = *(i - 4);
      *(a1[9] + 10556) = *i;
      *(a1[9] + 10560) = *(i + 4);
      *(a1[9] + 10564) = *(i + 8);
      *(a1[9] + 10568) = *(i + 12);
      *(a1[9] + 10572) = *(i + 16);
      if ((*(*a1 + 1952))(a1))
      {
        (*(*a1 + 1952))(a1);
        if (CCLogStream::shouldLog())
        {
          v7 = (*(*a1 + 1952))(a1);
          CCLogStream::logAlert(v7, "[dk] %s@%d:APPLE80211_IOC_MWS_CONDITION_ID_BITMAP_WIFI_ENH conditionId = %d, 2g_bitmap=0x%X, 5g_bitmap_low=0x%X, 5g_bitmap_mid=0x%X, 5g_bitmap_high=0x%X\n", "setMWS_CONDITION_ID_BITMAP_WIFI_ENH", 61203, *(i + 20), *(i - 16), *(i - 12), *(i - 8), *(i - 4));
        }
      }

      if ((*(*a1 + 1952))(a1))
      {
        (*(*a1 + 1952))(a1);
        if (CCLogStream::shouldLog())
        {
          v8 = (*(*a1 + 1952))(a1);
          CCLogStream::logAlert(v8, "[dk] %s@%d:APPLE80211_IOC_MWS_CONDITION_ID_BITMAP_WIFI_ENH unii5_bitmap_low=0x%X, unii5_bitmap_high=0x%X, unii6_bitmap=0x%X, unii7_bitmap=0x%X, unii8_bitmap=0x%X\n", "setMWS_CONDITION_ID_BITMAP_WIFI_ENH", 61209, *i, *(i + 4), *(i + 8), *(i + 12), *(i + 16));
        }
      }

      result = (*(*a1 + 1592))(a1, a1[9] + 10540);
      if (result)
      {
        break;
      }

      if (++v5 >= *(a2 + 2))
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::setMWS_ANTENNA_SELECTION_WIFI_ENH(uint64_t *a1, uint64_t a2)
{
  if (!a2)
  {
    return 3758097084;
  }

  if ((*(*a1 + 1952))(a1))
  {
    (*(*a1 + 1952))(a1);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::setMWS_ANTENNA_SELECTION_WIFI_ENH(a1);
    }
  }

  v4 = 0;
  *(a1[9] + 10468) = *(a2 + 16);
  do
  {
    *(a1[9] + v4 + 10470) = *(a2 + v4);
    v4 += 2;
  }

  while (v4 != 16);
  if ((*(*a1 + 1952))(a1))
  {
    (*(*a1 + 1952))(a1);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::setMWS_ANTENNA_SELECTION_WIFI_ENH(a1);
    }
  }

  if ((*(*a1 + 1952))(a1))
  {
    (*(*a1 + 1952))(a1);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::setMWS_ANTENNA_SELECTION_WIFI_ENH(a1);
    }
  }

  v5 = *(*a1 + 1416);
  v6 = a1[9] + 10468;

  return v5(a1, v6);
}

uint64_t AppleBCMWLANCore::setWCL_ULOFDMA_STATE(uint64_t a1, int *a2)
{
  if (a2)
  {
    return AppleBCMWLAN11axAdapter::configureUpLinkOFDMA(*(*(a1 + 72) + 5576), *a2);
  }

  else
  {
    return 3758097084;
  }
}

uint64_t AppleBCMWLANCore::setWCL_ACTION_FRAME(uint64_t a1, int *a2)
{
  if (!a2)
  {
    return 3758097084;
  }

  v3 = *(a1 + 72);
  v4 = *(v3 + 780);
  v5 = *(v3 + 5600);
  v6 = *(a2 + 7);
  v9 = *a2;
  v8 = a2[1];
  v7 = (a2 + 2);
  v10 = (a2 + 4);
  if (v4 > 0x14)
  {
    return AppleBCMWLANNetAdapter::sendActionFrameV2(v5, v7, 0, 0, v10, v6, v8, v9);
  }

  else
  {
    return AppleBCMWLANNetAdapter::sendActionFrame(v5, v7, 0, 0, v10, v6, v8, v9);
  }
}

uint64_t AppleBCMWLANCore::getWCL_LOW_LATENCY_INFO_STATS(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 3758097084;
  }

  v4 = *(*(a1 + 72) + 208);
  v5 = (a2 + 16);
  for (i = 2291; i != 2295; ++i)
  {
    *v5 = (*(**(*(a1 + 72) + 11288) + 648))(*(*(a1 + 72) + 11288), (i + 13));
    *(v5 - 4) = *(*(a1 + 72) + 8 * i);
    ++v5;
  }

  v7 = 0;
  *(a2 + 52) = 0;
  v8 = 68 * v4 + 30412;
  v9 = 8;
  do
  {
    v7 += *(*(a1 + 72) + v8) + *(*(a1 + 72) + v8 - 32);
    *(a2 + 52) = v7;
    v8 += 4;
    --v9;
  }

  while (v9);
  result = 0;
  *(a2 + 32) = *(*(a1 + 72) + 8 * v4 + 29960);
  *(a2 + 36) = *(*(a1 + 72) + 8 * v4 + 29964);
  *(a2 + 40) = *(*(a1 + 72) + 30656);
  *(a2 + 44) = *(*(a1 + 72) + 30660);
  *(a2 + 48) = *(*(a1 + 72) + 30920);
  v11 = *(*(a1 + 72) + 30970);
  if (v11 >= 0x65)
  {
    LOWORD(v11) = 0;
  }

  *(a2 + 56) = v11;
  v12 = *(*(a1 + 72) + 30980);
  v13 = *(*(a1 + 72) + 30996);
  v14 = *(*(a1 + 72) + 31012);
  *(a2 + 108) = *(*(a1 + 72) + 31028);
  *(a2 + 92) = v14;
  *(a2 + 76) = v13;
  *(a2 + 60) = v12;
  return result;
}

uint64_t AppleBCMWLANCore::setOS_FEATURE_FLAGS(uint64_t *a1, void *a2)
{
  v2 = 3758097112;
  if (!a2)
  {
    return 3758097084;
  }

  if (AppleBCMWLANCore::isRejectingCommands(a1))
  {
    if ((*(*a1 + 1952))(a1))
    {
      (*(*a1 + 1952))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::setOS_FEATURE_FLAGS(a1);
      }
    }
  }

  else
  {
    v5 = a1 + 9;
    *(a1[9] + 17520) = *a2;
    if (AppleBCMWLANCore::featureFlagIsBitSet(a1, 80))
    {
      v6 = *v5;
      if (*(*v5 + 17520))
      {
        v7 = *(v6 + 1092);
      }

      else
      {
        v7 = 0;
      }

      *(v6 + 1088) = v7;
      if ((*(*a1 + 1952))(a1))
      {
        (*(*a1 + 1952))(a1);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::setOS_FEATURE_FLAGS(a1);
        }
      }

      AppleBCMWLANCore::setLteCoexLBTMode(a1);
    }

    *(a1[9] + 30064) = (*(a1[9] + 17520) & 2) != 0;
    if ((*(*a1 + 1952))(a1))
    {
      (*(*a1 + 1952))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::setOS_FEATURE_FLAGS(a1);
      }
    }

    AppleBCMWLANCore::reportLQMCrashTracerFeatureFlag(a1);
    *(a1[9] + 30069) = *(a1[9] + 17521) & 1;
    if ((*(*a1 + 1952))(a1))
    {
      (*(*a1 + 1952))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::setOS_FEATURE_FLAGS(a1);
      }
    }

    if (AppleBCMWLANCore::featureFlagIsBitSet(a1, 89) && (IO80211BssManager::isAssociated(*(*v5 + 5432)) & 1) == 0)
    {
      AppleBCMWLANCore::cfgAmpduWindowSize(a1);
    }

    *(a1[9] + 31176) = (*(a1[9] + 17520) >> 23) & 1;
    if ((*(*a1 + 1952))(a1))
    {
      (*(*a1 + 1952))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::setOS_FEATURE_FLAGS(a1);
      }
    }

    IsBitSet = AppleBCMWLANCore::featureFlagIsBitSet(a1, 101);
    v9 = a1[9];
    if (IsBitSet)
    {
      v10 = (*(v9 + 17520) & 0x1000000) != 0 ? 1 : 2;
      if (*(v9 + 31180) != v10)
      {
        *(v9 + 31180) = v10;
        AppleBCMWLANCore::enableObssMitigation(a1, *(a1[9] + 31180));
        v9 = a1[9];
      }
    }

    *(v9 + 30070) = (*(v9 + 17520) & 0x200) != 0;
    if ((*(*a1 + 1952))(a1))
    {
      (*(*a1 + 1952))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::setOS_FEATURE_FLAGS(a1);
      }
    }

    *(a1[9] + 30071) = 1;
    *(a1[9] + 30066) = (*(a1[9] + 17520) & 0x80000) != 0;
    *(a1[9] + 30081) = (*(a1[9] + 17520) & 0x2000) != 0;
    if ((*(*a1 + 1952))(a1))
    {
      (*(*a1 + 1952))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::setOS_FEATURE_FLAGS(a1);
      }
    }

    if (AppleBCMWLANCore::featureFlagIsBitSet(a1, 95))
    {
      AppleBCMWLANCore::initQoSMgmtMSCS(a1);
    }

    *(a1[9] + 30072) = (*(a1[9] + 17520) & 0x1000) != 0;
    AppleBCMWLANCore::initialize6GCapabilities(a1);
    *(a1[9] + 30080) = (*(a1[9] + 17520) & 0x8000) != 0;
    if ((*(*a1 + 1952))(a1))
    {
      (*(*a1 + 1952))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::setOS_FEATURE_FLAGS(a1);
      }
    }

    AppleBCMWLANCore::reportP2PForULLRTInfraFeatureFlag(a1);
    *(a1[9] + 30086) = *(a1[9] + 17522) & 1;
    *(a1[9] + 30085) = (*(a1[9] + 17520) & 0x4000) != 0;
    v11 = AppleBCMWLANCore::featureFlagIsBitSet(a1, 117);
    v12 = a1[9];
    if (v11 && (*(v12 + 17523) & 2) != 0)
    {
      AppleBCMWLANCore::configureScanForwardToAOP(a1, 1);
      v12 = a1[9];
    }

    v13 = (*(**(v12 + 5392) + 368))(*(v12 + 5392));
    if (v13 == 4399 || v13 == 4388)
    {
      *(a1[9] + 30087) = (*(a1[9] + 17520) & 0x10000000) != 0;
      AppleBCMWLANCore::setAdaptive11rFromASR(a1);
    }

    return 0;
  }

  return v2;
}

uint64_t AppleBCMWLANCore::setAdaptive11rFromASR(unint64_t this)
{
  v2 = *(this + 72);
  v7 = *(v2 + 30087);
  v3 = *(v2 + 5408);
  v6[0] = &v7;
  v6[1] = 4;
  v4 = AppleBCMWLANCommander::runIOVarSet(v3, "fbt_11r_asr", v6, 0, 0);
  result = (*(*this + 1952))(this);
  if (result)
  {
    (*(*this + 1952))(this);
    result = CCLogStream::shouldLog();
    if (result)
    {
      return AppleBCMWLANCore::setAdaptive11rFromASR(this, this & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000, &v7, v4);
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::setDHCP_RENEWAL_DATA(uint64_t *a1, _BYTE *a2)
{
  if (!a2)
  {
    return 3758097084;
  }

  *(a1[9] + 6730) = *a2 != 0;
  result = (*(*a1 + 1952))(a1);
  if (result)
  {
    (*(*a1 + 1952))(a1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      AppleBCMWLANCore::setDHCP_RENEWAL_DATA(a1);
      return 0;
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::setBATTERY_POWERSAVE_CONFIG(uint64_t *a1, int *a2)
{
  if (!a2)
  {
    return 3758097084;
  }

  v4 = *a2;
  if ((*(*a1 + 1952))(a1))
  {
    (*(*a1 + 1952))(a1);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::setBATTERY_POWERSAVE_CONFIG(a1);
    }
  }

  AppleBCMWLANCore::setBatterySaveModeConfiguration(a1, &v4);
  return 0;
}

uint64_t AppleBCMWLANCore::setMIMO_CONFIG(uint64_t *a1, int *a2)
{
  if (!a2)
  {
    return 3758097084;
  }

  v4 = *a2;
  if ((*(*a1 + 1952))(a1))
  {
    (*(*a1 + 1952))(a1);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::setMIMO_CONFIG(a1);
    }
  }

  AppleBCMWLANCore::setMIMOPowerSaveProperties(a1);
  return 0;
}

uint64_t AppleBCMWLANCore::setPOWER_PROFILE(void *a1, _DWORD *a2)
{
  if (!a2)
  {
    return 3758097084;
  }

  *(a1[9] + 10728) = *a2;
  return (*(*a1 + 1376))();
}

uint64_t AppleBCMWLANCore::setHEARTBEAT(AppleBCMWLANCore *this, void *a2)
{
  if ((*(*(this + 9) + 10373) & 2) != 0)
  {
    return 3758097084;
  }

  AppleBCMWLANCore::heartBeatHandler(this);
  return 0;
}

uint64_t AppleBCMWLANCore::setINTERFACE_SETTING(uint64_t a1, _BYTE *a2)
{
  if (!a2)
  {
    return 3758097084;
  }

  result = 0;
  *(*(a1 + 72) + 6731) = *a2 != 0;
  return result;
}

uint64_t AppleBCMWLANCore::setBYPASS_TX_POWER_CAP(AppleBCMWLANCore *a1, _BYTE *a2)
{
  if (!a2)
  {
    return 3758097084;
  }

  *(*(a1 + 9) + 19781) = *a2 != 0;
  AppleBCMWLANCore::sendTxPowerCapBypassToFirmware(a1);
  return 0;
}

uint64_t AppleBCMWLANCore::setFACETIME_WIFICALLING_PARAMS(uint64_t *a1, unsigned int *a2)
{
  if (!a2)
  {
    return 3758097084;
  }

  v3 = *a2;
  if ((*(*a1 + 1952))(a1))
  {
    (*(*a1 + 1952))(a1);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::setFACETIME_WIFICALLING_PARAMS(a1);
    }
  }

  AppleBCMWLANCore::setWiFiCallPolicies(a1);
  return 0;
}

uint64_t AppleBCMWLANCore::setIPV4_PARAMS(AppleBCMWLANCore *this, int *a2)
{
  if (!a2)
  {
    return 3758097084;
  }

  v5 = this + 72;
  v4 = *(this + 9);
  if (*(v4 + 11288))
  {
    IO80211InfraInterface::setIPv4Params();
    v4 = *v5;
  }

  v6 = *a2;
  *(v4 + 9492) = a2[1];
  *(*(this + 9) + 9484) = v6;
  *(*(this + 9) + 9488) = 0;
  AppleBCMWLANCore::handleIPv4AddressNotificationGated(this, a2);
  v8 = *(this + 9);
  v9 = *(v8 + 11296);
  if (v9)
  {
    AppleBCMWLANProximityInterface::setIPv4Addr(v9, *(v8 + 9484));
    v8 = *v5;
  }

  v10 = *(a2 + 6);
  *(v8 + 9496) = a2[2];
  *(v8 + 9500) = v10;
  if (*(*v5 + 9492) && *(*v5 + 9484))
  {
    AppleBCMWLANCore::handleKeepaliveDataNotificationGated(this, v7);
    return 0;
  }

  result = (*(*this + 1952))(this);
  if (result)
  {
    (*(*this + 1952))(this);
    result = CCLogStream::shouldLog();
    if (result)
    {
      AppleBCMWLANCore::setIPV4_PARAMS(this);
      return 0;
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::setWCL_LIMITED_AGGREGATION(uint64_t a1, int *a2)
{
  if (a2)
  {
    return AppleBCMWLANNetAdapter::setLimitedAggregation(*(*(a1 + 72) + 5600), *a2);
  }

  else
  {
    return 3758097084;
  }
}

uint64_t AppleBCMWLANCore::setWCL_BCN_MUTE_CONFIG(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return AppleBCMWLANNetAdapter::configureBeaconMitigationParams(*(*(a1 + 72) + 5600), *a2, *(a2 + 2), *(a2 + 3));
  }

  else
  {
    return 3758097084;
  }
}

uint64_t AppleBCMWLANCore::setDUAL_POWER_MODE(AppleBCMWLANCore *this, _DWORD *a2)
{
  if (!a2)
  {
    return 3758097084;
  }

  v3 = a2[1];
  *(*(this + 9) + 19772) = *a2;
  *(*(this + 9) + 19776) = v3;
  if (*(*(this + 9) + 19772) != -1 && *(*(this + 9) + 19776) != -1 && AppleBCMWLANCore::isFourRowPowerTableSupported(this))
  {
    *(*(this + 9) + 19780) = 1;
    AppleBCMWLANCore::setTxHighCapTimeout(this, 35);
  }

  AppleBCMWLANCore::setTxPowerCapState(this);
  return 0;
}

uint64_t AppleBCMWLANCore::setEAP_FILTER_CONFIG(uint64_t *a1, _DWORD *a2)
{
  if (!a2)
  {
    return 3758097084;
  }

  *(a1[9] + 19784) = *a2;
  result = (*(*a1 + 1952))(a1);
  if (result)
  {
    (*(*a1 + 1952))(a1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      AppleBCMWLANCore::setEAP_FILTER_CONFIG(a1);
      return 0;
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::setWCL_WNM_OPS(uint64_t a1, _BYTE *a2)
{
  if (a2)
  {
    return AppleBCMWLANWnmAdapter::configureWnmFeatures(*(*(a1 + 72) + 5552), a2);
  }

  else
  {
    return 3758097084;
  }
}

uint64_t AppleBCMWLANCore::setWCL_WNM_OFFLOAD(uint64_t a1, _BYTE *a2)
{
  if (a2)
  {
    return AppleBCMWLANWnmAdapter::configureWnmOffloadFeatures(*(*(a1 + 72) + 5552), a2);
  }

  else
  {
    return 3758097084;
  }
}

uint64_t AppleBCMWLANCore::setCONGESTION_CTRL_IND(uint64_t *a1, _BYTE *a2)
{
  if ((*(*a1 + 1952))(a1))
  {
    (*(*a1 + 1952))(a1);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::setCONGESTION_CTRL_IND(a1);
    }
  }

  *(a1[9] + 35290) = *a2 != 0;
  return 0;
}

uint64_t AppleBCMWLANCore::setIPV6_PARAMS(void *a1, unsigned int *a2)
{
  if (a2 && *(a1[9] + 11288))
  {
    IO80211InfraInterface::setIPv6Params();
  }

  v4 = *a2;
  if (*a2 >= 0xA)
  {
    v5 = 10;
  }

  else
  {
    v5 = v4;
  }

  if (v4)
  {
    v6 = (a2 + 1);
    v7 = 9524;
    v8 = v5;
    do
    {
      v9 = *v6;
      v6 += 4;
      *(a1[9] + v7) = v9;
      v7 += 16;
      --v8;
    }

    while (v8);
  }

  v10 = 9780;
  v11 = 10;
  do
  {
    v12 = (a1[9] + v10);
    *v12 = 0;
    v12[1] = 0;
    v10 += 16;
    --v11;
  }

  while (v11);
  *(a1[9] + 10036) = v5;
  *(a1[9] + 9508) = -2;
  *(a1[9] + 9509) = 0x80;
  v13 = a1[9] + 9510;
  *(v13 + 4) = 0;
  *v13 = 0;
  *(a1[9] + 9516) = *(a1[9] + 9532);
  v14 = (*(*a1 + 104))(a1);
  (*(*v14 + 56))(v14, AppleBCMWLANCore::handleIPv6AddressNotificationGated, a1[9] + 9524, 0, 0, 0);
  return 0;
}

uint64_t AppleBCMWLANCore::setWCL_CONFIG_BG_MOTIONPROFILE(uint64_t a1, _BYTE *a2)
{
  if (a2)
  {
    return AppleBCMWLANBGScanAdapter::setWCL_CONFIG_BG_MOTIONPROFILE(*(*(a1 + 72) + 5496), a2);
  }

  else
  {
    return 3758097084;
  }
}

uint64_t AppleBCMWLANCore::setWCL_CONFIG_BG_NETWORK(uint64_t a1, unsigned __int8 *a2)
{
  if (a2)
  {
    return AppleBCMWLANBGScanAdapter::setWCL_CONFIG_BG_NETWORK(*(*(a1 + 72) + 5496), a2);
  }

  else
  {
    return 3758097084;
  }
}

uint64_t AppleBCMWLANCore::setWCL_CONFIG_BGSCAN(uint64_t a1, _BYTE *a2)
{
  if (a2)
  {
    return AppleBCMWLANBGScanAdapter::setWCL_CONFIG_BGSCAN(*(*(a1 + 72) + 5496), a2);
  }

  else
  {
    return 3758097084;
  }
}

uint64_t AppleBCMWLANCore::setWCL_CONFIG_BG_PARAMS(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return AppleBCMWLANBGScanAdapter::setWCL_CONFIG_BG_PARAMS(*(*(a1 + 72) + 5496), a2);
  }

  else
  {
    return 3758097084;
  }
}

uint64_t AppleBCMWLANCore::getWCL_BGSCAN_CACHE_RESULT(uint64_t a1, unsigned int *a2)
{
  if (a2)
  {
    return AppleBCMWLANBGScanAdapter::getWCL_BGSCAN_CACHE_RESULT(*(*(a1 + 72) + 5496), a2);
  }

  else
  {
    return 3758097084;
  }
}

uint64_t AppleBCMWLANCore::setINFRA_ENUMERATED(uint64_t a1, _BYTE *a2)
{
  if (!a2)
  {
    return 3758097084;
  }

  if (*a2)
  {
    AppleBCMWLANCommander::deviceBootStationaryNotification(*(*(a1 + 72) + 5408));
  }

  return 0;
}

uint64_t AppleBCMWLANCore::setLMTPC_CONFIG(uint64_t *a1, unsigned __int8 *a2)
{
  if (!a2)
  {
    return 3758097084;
  }

  if ((*(*a1 + 1952))(a1))
  {
    (*(*a1 + 1952))(a1);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::setLMTPC_CONFIG(a1);
    }
  }

  *(a1[9] + 17812) = *a2;
  AppleBCMWLANCore::setLMTPC(a1);
  return 0;
}

uint64_t AppleBCMWLANCore::setTRAFFIC_ENG_PARAMS(uint64_t a1, uint64_t a2)
{
  result = 3758097084;
  if (a2)
  {
    if (*(*(a1 + 72) + 30092))
    {
      return 0;
    }

    else
    {
      return 3758097095;
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::setBTMRejectionAsyncCallback(uint64_t result, uint64_t a2, int a3)
{
  if (a3)
  {
    v3 = result;
    result = (*(*result + 1952))(result);
    if (result)
    {
      (*(*v3 + 1952))(v3);
      result = CCLogStream::shouldLog();
      if (result)
      {
        return AppleBCMWLANCore::setBTMRejectionAsyncCallback(v3);
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::setBTMRejection(AppleBCMWLANCore *this)
{
  if (*(*(this + 9) + 780) < 0xCu)
  {
    return 0;
  }

  if ((*(*this + 1952))(this))
  {
    (*(*this + 1952))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::setBTMRejection(this);
    }
  }

  v2 = AppleBCMWLANCommander::sendIOVarSet(*(*(this + 9) + 5408), "wnm_bsstrans_rej");
  if (v2)
  {
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::setBTMRejection(this);
      }
    }
  }

  return v2;
}

uint64_t AppleBCMWLANCore::setBTCSlottedBssPolicyAsyncCallback(uint64_t result, uint64_t a2, int a3)
{
  if (a3)
  {
    v3 = result;
    result = (*(*result + 1952))(result);
    if (result)
    {
      (*(*v3 + 1952))(v3);
      result = CCLogStream::shouldLog();
      if (result)
      {
        return AppleBCMWLANCore::setBTCSlottedBssPolicyAsyncCallback(v3);
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::setBTCSlottedBssPolicy(AppleBCMWLANCore *this)
{
  if (*(*(this + 9) + 780) < 0xCu)
  {
    return 0;
  }

  if ((*(*this + 1952))(this))
  {
    (*(*this + 1952))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::setBTCSlottedBssPolicy(this);
    }
  }

  v2 = AppleBCMWLANCommander::sendIOVarSet(*(*(this + 9) + 5408), "btc_slotted_bss_policy");
  if (v2)
  {
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::setBTCSlottedBssPolicy(this);
      }
    }
  }

  return v2;
}

uint64_t AppleBCMWLANCore::setWCL_ASSOCIATED_SLEEP(uint64_t *a1, uint64_t a2)
{
  v4 = *a2;
  if ((*(*a1 + 1952))(a1))
  {
    (*(*a1 + 1952))(a1);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::setWCL_ASSOCIATED_SLEEP(a1);
    }
  }

  v5 = a1 + 9;
  *(a1[9] + 8828) = 0;
  if (v4 > 1)
  {
    if ((*(*a1 + 1952))(a1))
    {
      (*(*a1 + 1952))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::setWCL_ASSOCIATED_SLEEP(a1);
      }
    }
  }

  else
  {
    *(a1[9] + 8828) = 1;
    *(a1[9] + 6728) = v4 == 1;
    if ((*(*a1 + 1952))(a1))
    {
      (*(*a1 + 1952))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::setWCL_ASSOCIATED_SLEEP(a1);
      }
    }
  }

  *(a1[9] + 19784) = *(a2 + 54);
  if ((*(*a1 + 1952))(a1))
  {
    (*(*a1 + 1952))(a1);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::setWCL_ASSOCIATED_SLEEP(a1);
    }
  }

  AppleBCMWLANPowerStateAdapter::configureBeaconSOI(*(*v5 + 35984), (a2 + 4));
  AppleBCMWLANPowerStateAdapter::configureDataSOI(*(*v5 + 35984), (a2 + 32));
  AppleBCMWLANPowerStateAdapter::configureExcessPMAlert(*(*v5 + 35984), a2 + 84);
  AppleBCMWLANPowerStateAdapter::configureRoamScanForAssociatedSleep(*(*v5 + 35984), a2 + 72, *(*v5 + 8828));
  return 0;
}

uint64_t AppleBCMWLANCore::setWCL_SOI_CONFIG(uint64_t a1, int *a2)
{
  AppleBCMWLANPowerStateAdapter::configureBeaconSOI(*(*(a1 + 72) + 35984), a2);
  AppleBCMWLANPowerStateAdapter::configureDataSOI(*(*(a1 + 72) + 35984), a2 + 7);
  return 0;
}

uint64_t non-virtual thunk toAppleBCMWLANCore::setWCL_SOI_CONFIG(uint64_t a1, int *a2)
{
  AppleBCMWLANPowerStateAdapter::configureBeaconSOI(*(*(a1 + 8) + 35984), a2);
  AppleBCMWLANPowerStateAdapter::configureDataSOI(*(*(a1 + 8) + 35984), a2 + 7);
  return 0;
}

uint64_t AppleBCMWLANCore::getPLATFORM_CONFIG(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if ((*(*a1 + 1952))(a1))
  {
    (*(*a1 + 1952))(a1);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::getPLATFORM_CONFIG(a1);
    }
  }

  *(a3 + 3) = 0;
  *a3 = 0;
  v5 = a1[9];
  v6 = *(v5 + 5464);
  if (v6)
  {
    *a3 = AppleBCMWLANConfigManager::is6GSupportedByPlatform(v6);
    *(a3 + 1) = AppleBCMWLANConfigManager::isAntennaInEfficiencyMitigationSupported(*(a1[9] + 5464));
    *(a3 + 2) = AppleBCMWLANConfigManager::isExternallyPoweredPlatform(*(a1[9] + 5464));
    *(a3 + 3) = AppleBCMWLANConfigManager::isAdaptiveRoamingSupported(*(a1[9] + 5464));
    *(a3 + 4) = AppleBCMWLANConfigManager::isDFRTSEnabled(*(a1[9] + 5464));
    *(a3 + 6) = AppleBCMWLANConfigManager::isMIMOPSSupported(*(a1[9] + 5464));
  }

  else
  {
    v13 = 0;
    if (acquireProperty<OSBoolean>(*(v5 + 5392), "wlan.6GHz.supported", &v13, 1uLL, "IOService"))
    {
      if (v13 == kOSBooleanTrue)
      {
        *a3 = 1;
        if ((*(*a1 + 1952))(a1))
        {
          (*(*a1 + 1952))(a1);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANCore::getPLATFORM_CONFIG(a1);
          }
        }
      }

      else if (v13 == kOSBooleanFalse)
      {
        *a3 = 0;
        if ((*(*a1 + 1952))(a1))
        {
          (*(*a1 + 1952))(a1);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANCore::getPLATFORM_CONFIG(a1);
          }
        }
      }

      if (v13)
      {
        (v13->release)(v13);
        v13 = 0;
      }
    }

    else if ((*(*a1 + 1952))(a1))
    {
      (*(*a1 + 1952))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::getPLATFORM_CONFIG(a1);
      }
    }

    v12 = 0;
    if (acquireProperty<OSBoolean>(*(a1[9] + 5392), "wlan.ant-inefficiency-mitigation.enabled", &v12, 1uLL, "IOService"))
    {
      v7 = v12;
      if (v12 == kOSBooleanTrue)
      {
        *(a3 + 1) = 1;
      }

      if (v7)
      {
        (v7->release)(v7);
        v12 = 0;
      }
    }

    v11 = 0;
    if (checkAcquireDataPropertyNotEmpty(*(a1[9] + 5392), "wlan.externallypowered", &v11, 0, 1uLL, "IOService"))
    {
      *(a3 + 2) = 1;
      if (v11)
      {
        (v11->release)(v11);
        v11 = 0;
      }
    }

    v10 = 0;
    if (acquireProperty<OSBoolean>(*(a1[9] + 5392), "wlan.adaptiveroaming.enabled", &v10, 1uLL, "IOService"))
    {
      v8 = v10;
      if (v10 == kOSBooleanTrue)
      {
        *(a3 + 3) = 1;
      }

      if (v8)
      {
        (v8->release)(v8);
        v10 = 0;
      }
    }

    if (checkAcquireDataPropertyNotEmpty(*(a1[9] + 5392), "wlan.dfrts", &v11, 8uLL, 1uLL, "IOService"))
    {
      OSData::getBytesNoCopy(v11, 0, 8uLL);
      *(a3 + 4) = 1;
      if (v11)
      {
        (v11->release)(v11);
        v11 = 0;
      }
    }

    if (checkPropertyExists(*(a1[9] + 5392), "wlan.mimo_ps.enabled", 1uLL, "IOService"))
    {
      *(a3 + 6) = 1;
    }
  }

  LODWORD(v13) = AppleBCMWLANUtil::getDTParameter32(*(a1[9] + 5392), "IOService", "wlan.ignore.mcast", 0);
  IOParseBootArgNumber("bcom.feature.pmmcast", &v13, 4);
  *(a3 + 5) = v13 != 0;
  if ((*(*a1 + 1952))(a1))
  {
    (*(*a1 + 1952))(a1);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::getPLATFORM_CONFIG(a1);
    }
  }

  return 0;
}

uint64_t AppleBCMWLANCore::setDYNAMIC_RSSI_WINDOW_CONFIG(AppleBCMWLANCore *a1, int *a2)
{
  if (a2)
  {
    return AppleBCMWLANCore::configureDynamicRssiWindow(a1, *a2);
  }

  else
  {
    return 3758097084;
  }
}

uint64_t *AppleBCMWLANCore::processScanForwardStats(uint64_t *result, uint64_t a2)
{
  v2 = result;
  if (!a2)
  {
    return AppleBCMWLANCore::processScanForwardStats(result);
  }

  if (*(a2 + 4) != 6)
  {
    return AppleBCMWLANCore::processScanForwardStats(result);
  }

  if (*(a2 + 8) != 76)
  {
    return AppleBCMWLANCore::processScanForwardStats(result);
  }

  v4 = *(a2 + 26);
  v5 = *(result[9] + 36000);
  v6 = v4 >= v5;
  v7 = v4 - v5;
  if (!v6)
  {
    result = (*(*result + 1952))(result, a2 + 8);
    if (result)
    {
      (*(*v2 + 1952))(v2);
      result = CCLogStream::shouldLog();
      if (result)
      {
        result = AppleBCMWLANCore::processScanForwardStats(v2);
      }
    }

    v7 = 0;
  }

  *&v8 = 0xAAAAAAAAAAAAAAAALL;
  *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&v58[12] = v8;
  *v58 = v8;
  v57 = v8;
  v56 = v8;
  v55 = v7;
  v9 = *(a2 + 30);
  v10 = v2[9];
  v11 = v10[9001];
  v6 = v9 >= v11;
  v12 = v9 - v11;
  if (v6)
  {
    LODWORD(v56) = v12;
  }

  else
  {
    result = (*(*v2 + 1952))(v2);
    if (result)
    {
      (*(*v2 + 1952))(v2);
      result = CCLogStream::shouldLog();
      if (result)
      {
        result = AppleBCMWLANCore::processScanForwardStats(v2);
      }
    }

    LODWORD(v56) = 0;
    v10 = v2[9];
  }

  v13 = *(a2 + 34);
  v14 = v10[9002];
  v6 = v13 >= v14;
  v15 = v13 - v14;
  if (v6)
  {
    DWORD1(v56) = v15;
  }

  else
  {
    result = (*(*v2 + 1952))(v2);
    if (result)
    {
      (*(*v2 + 1952))(v2);
      result = CCLogStream::shouldLog();
      if (result)
      {
        result = AppleBCMWLANCore::processScanForwardStats(v2);
      }
    }

    DWORD1(v56) = 0;
    v10 = v2[9];
  }

  v16 = *(a2 + 38);
  v17 = v10[9003];
  v6 = v16 >= v17;
  v18 = v16 - v17;
  if (v6)
  {
    DWORD2(v56) = v18;
  }

  else
  {
    result = (*(*v2 + 1952))(v2);
    if (result)
    {
      (*(*v2 + 1952))(v2);
      result = CCLogStream::shouldLog();
      if (result)
      {
        result = AppleBCMWLANCore::processScanForwardStats(v2);
      }
    }

    DWORD2(v56) = 0;
    v10 = v2[9];
  }

  v19 = *(a2 + 42);
  v20 = v10[9004];
  v6 = v19 >= v20;
  v21 = v19 - v20;
  if (v6)
  {
    HIDWORD(v56) = v21;
  }

  else
  {
    result = (*(*v2 + 1952))(v2);
    if (result)
    {
      (*(*v2 + 1952))(v2);
      result = CCLogStream::shouldLog();
      if (result)
      {
        result = AppleBCMWLANCore::processScanForwardStats(v2);
      }
    }

    HIDWORD(v56) = 0;
    v10 = v2[9];
  }

  v22 = *(a2 + 78);
  v23 = v10[9005];
  v6 = v22 >= v23;
  v24 = v22 - v23;
  if (v6)
  {
    LODWORD(v57) = v24;
  }

  else
  {
    result = (*(*v2 + 1952))(v2);
    if (result)
    {
      (*(*v2 + 1952))(v2);
      result = CCLogStream::shouldLog();
      if (result)
      {
        result = AppleBCMWLANCore::processScanForwardStats(v2);
      }
    }

    LODWORD(v57) = 0;
    v10 = v2[9];
  }

  v25 = *(a2 + 46);
  v26 = v10[9006];
  v6 = v25 >= v26;
  v27 = v25 - v26;
  if (v6)
  {
    DWORD1(v57) = v27;
  }

  else
  {
    result = (*(*v2 + 1952))(v2);
    if (result)
    {
      (*(*v2 + 1952))(v2);
      result = CCLogStream::shouldLog();
      if (result)
      {
        result = AppleBCMWLANCore::processScanForwardStats(v2);
      }
    }

    DWORD1(v57) = 0;
    v10 = v2[9];
  }

  v28 = *(a2 + 50);
  v29 = v10[9007];
  v6 = v28 >= v29;
  v30 = v28 - v29;
  if (v6)
  {
    DWORD2(v57) = v30;
  }

  else
  {
    result = (*(*v2 + 1952))(v2);
    if (result)
    {
      (*(*v2 + 1952))(v2);
      result = CCLogStream::shouldLog();
      if (result)
      {
        result = AppleBCMWLANCore::processScanForwardStats(v2);
      }
    }

    DWORD2(v57) = 0;
    v10 = v2[9];
  }

  v31 = *(a2 + 54);
  v32 = v10[9008];
  v6 = v31 >= v32;
  v33 = v31 - v32;
  if (v6)
  {
    HIDWORD(v57) = v33;
  }

  else
  {
    result = (*(*v2 + 1952))(v2);
    if (result)
    {
      (*(*v2 + 1952))(v2);
      result = CCLogStream::shouldLog();
      if (result)
      {
        result = AppleBCMWLANCore::processScanForwardStats(v2);
      }
    }

    HIDWORD(v57) = 0;
    v10 = v2[9];
  }

  v34 = *(a2 + 58);
  v35 = v10[9009];
  v6 = v34 >= v35;
  v36 = v34 - v35;
  if (v6)
  {
    *v58 = v36;
  }

  else
  {
    result = (*(*v2 + 1952))(v2);
    if (result)
    {
      (*(*v2 + 1952))(v2);
      result = CCLogStream::shouldLog();
      if (result)
      {
        result = AppleBCMWLANCore::processScanForwardStats(v2);
      }
    }

    *v58 = 0;
    v10 = v2[9];
  }

  v37 = *(a2 + 62);
  v38 = v10[9010];
  v6 = v37 >= v38;
  v39 = v37 - v38;
  if (v6)
  {
    *&v58[4] = v39;
  }

  else
  {
    result = (*(*v2 + 1952))(v2);
    if (result)
    {
      (*(*v2 + 1952))(v2);
      result = CCLogStream::shouldLog();
      if (result)
      {
        result = AppleBCMWLANCore::processScanForwardStats(v2);
      }
    }

    *&v58[4] = 0;
    v10 = v2[9];
  }

  v40 = *(a2 + 66);
  v41 = v10[9011];
  v6 = v40 >= v41;
  v42 = v40 - v41;
  if (v6)
  {
    *&v58[8] = v42;
  }

  else
  {
    result = (*(*v2 + 1952))(v2);
    if (result)
    {
      (*(*v2 + 1952))(v2);
      result = CCLogStream::shouldLog();
      if (result)
      {
        result = AppleBCMWLANCore::processScanForwardStats(v2);
      }
    }

    *&v58[8] = 0;
    v10 = v2[9];
  }

  v43 = *(a2 + 70);
  v44 = v10[9012];
  v6 = v43 >= v44;
  v45 = v43 - v44;
  if (v6)
  {
    *&v58[12] = v45;
  }

  else
  {
    result = (*(*v2 + 1952))(v2);
    if (result)
    {
      (*(*v2 + 1952))(v2);
      result = CCLogStream::shouldLog();
      if (result)
      {
        result = AppleBCMWLANCore::processScanForwardStats(v2);
      }
    }

    *&v58[12] = 0;
    v10 = v2[9];
  }

  v46 = *(a2 + 74);
  v47 = v10[9013];
  v6 = v46 >= v47;
  v48 = v46 - v47;
  if (v6)
  {
    *&v58[16] = v48;
  }

  else
  {
    result = (*(*v2 + 1952))(v2);
    if (result)
    {
      (*(*v2 + 1952))(v2);
      result = CCLogStream::shouldLog();
      if (result)
      {
        result = AppleBCMWLANCore::processScanForwardStats(v2);
      }
    }

    *&v58[16] = 0;
    v10 = v2[9];
  }

  v49 = *(a2 + 18);
  v50 = v10[9014];
  v6 = v49 >= v50;
  v51 = v49 - v50;
  if (v6)
  {
    *&v58[20] = v51;
  }

  else
  {
    result = (*(*v2 + 1952))(v2);
    if (result)
    {
      (*(*v2 + 1952))(v2);
      result = CCLogStream::shouldLog();
      if (result)
      {
        result = AppleBCMWLANCore::processScanForwardStats(v2);
      }
    }

    *&v58[20] = 0;
    v10 = v2[9];
  }

  v52 = *(a2 + 22);
  v53 = v10[9015];
  v6 = v52 >= v53;
  v54 = v52 - v53;
  if (v6)
  {
    *&v58[24] = v54;
  }

  else
  {
    result = (*(*v2 + 1952))(v2);
    if (result)
    {
      (*(*v2 + 1952))(v2);
      result = CCLogStream::shouldLog();
      if (result)
      {
        result = AppleBCMWLANCore::processScanForwardStats(v2);
      }
    }

    *&v58[24] = 0;
    v10 = v2[9];
    v52 = *(a2 + 22);
  }

  v10[9000] = *(a2 + 26);
  *(v2[9] + 36004) = *(a2 + 30);
  *(v2[9] + 36008) = *(a2 + 34);
  *(v2[9] + 36012) = *(a2 + 38);
  *(v2[9] + 36016) = *(a2 + 42);
  *(v2[9] + 36020) = *(a2 + 78);
  *(v2[9] + 36024) = *(a2 + 46);
  *(v2[9] + 36028) = *(a2 + 50);
  *(v2[9] + 36032) = *(a2 + 54);
  *(v2[9] + 36036) = *(a2 + 58);
  *(v2[9] + 36040) = *(a2 + 62);
  *(v2[9] + 36044) = *(a2 + 66);
  *(v2[9] + 36048) = *(a2 + 70);
  *(v2[9] + 36052) = *(a2 + 74);
  *(v2[9] + 36056) = *(a2 + 18);
  *(v2[9] + 36060) = v52;
  if (*(v2[9] + 11288))
  {
    if ((*(*v2 + 1952))(v2))
    {
      (*(*v2 + 1952))(v2);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::processScanForwardStats(v2);
      }
    }

    return IO80211Controller::postMessage(v2, *(v2[9] + 11288), 0xF0u, &v55, 0x40uLL, 1);
  }

  return result;
}

AppleBCMWLANSacAgent *AppleBCMWLANCore::CreateSacAgent(AppleBCMWLANCore *this)
{
  v2 = (*(*(*(*(this + 9) + 5392) + 48) + 288))();

  return AppleBCMWLANSacAgent::withOptions(this, v2, v3);
}

AppleBCMWLANSacAgent *non-virtual thunk toAppleBCMWLANCore::CreateSacAgent(AppleBCMWLANCore *this)
{
  v1 = (this - 48);
  v2 = (*(*(*(*(this + 3) + 5392) + 48) + 288))();

  return AppleBCMWLANSacAgent::withOptions(v1, v2, v3);
}

uint64_t *AppleBCMWLANCore::getP2P_DEVICE_CAPABILITY(uint64_t a1, BOOL *a2)
{
  *a2 = 0;
  result = *(*(a1 + 72) + 29944);
  if (result)
  {
    return AppleBCMWLANNANInterface::getNAN_deviceCapability(result, a2);
  }

  return result;
}

uint64_t *non-virtual thunk toAppleBCMWLANCore::getP2P_DEVICE_CAPABILITY(uint64_t a1, BOOL *a2)
{
  *a2 = 0;
  result = *(*(a1 + 8) + 29944);
  if (result)
  {
    return AppleBCMWLANNANInterface::getNAN_deviceCapability(result, a2);
  }

  return result;
}

uint64_t AppleBCMWLANCore::setOS_ELIGIBILITY(uint64_t *a1, _BYTE *a2)
{
  v4 = a1 + 9;
  v3 = a1[9];
  if ((*a2 ^ *(v3 + 36084)))
  {
    if ((*(*a1 + 1952))(a1))
    {
      (*(*a1 + 1952))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::setOS_ELIGIBILITY(a1);
      }
    }

    isSleeping = AppleBCMWLANCommander::isSleeping(*(*v4 + 5408));
    v3 = *v4;
    if ((isSleeping & 1) == 0)
    {
      AppleBCMWLANNetAdapter::configureAggressiveEDCA(*(v3 + 5600), *a2 & 1);
      v3 = *v4;
    }
  }

  *(v3 + 36084) = *a2;
  return 0;
}

AppleBCMWLANTimeTrace **AppleBCMWLANUtil::AutoreleasedTimeTrace::AutoreleasedTimeTrace(AppleBCMWLANTimeTrace **this, AppleBCMWLANTimeTrace *a2, int a3, int a4)
{
  v6 = AppleBCMWLANTimeTrace::withSize(a2, a3, a4);
  *this = v6;
  if (v6)
  {
    AppleBCMWLANTimeTrace::enable(v6, a4);
    AppleBCMWLANTimeTrace::reset(*this);
  }

  return this;
}

uint64_t IO80211BufferCursor::_asType<wl_roam_11kvr_bcn_rpt_req_v1>(uint64_t *a1, uint64_t a2, const char *a3)
{
  v3 = &a3[a2];
  if (__CFADD__(a2, a3))
  {
    return 0;
  }

  if (a3 < 0x28)
  {
    return 0;
  }

  v5 = a1[1];
  result = 0;
  if (v3 <= v5)
  {
    v7 = *a1;
    result = v7 + a2;
    if (&v3[v7] < v7 + a2 || a3 >> 32)
    {
      AppleBCMWLANProximityInterface::handleEvent(result, a3);
    }
  }

  return result;
}

uint64_t IO80211BufferCursor::_asType<wl_roam_11kvr_bcn_rpt_resp_v1>(uint64_t *a1, uint64_t a2, const char *a3)
{
  v3 = &a3[a2];
  if (__CFADD__(a2, a3))
  {
    return 0;
  }

  if (a3 < 0x2C)
  {
    return 0;
  }

  v5 = a1[1];
  result = 0;
  if (v3 <= v5)
  {
    v7 = *a1;
    result = v7 + a2;
    if (&v3[v7] < v7 + a2 || a3 >> 32)
    {
      AppleBCMWLANProximityInterface::handleEvent(result, a3);
    }
  }

  return result;
}

uint64_t IO80211BufferCursor::_asType<wl_roam_11kvr_nbr_rpt_req_v1>(uint64_t *a1, uint64_t a2, const char *a3)
{
  v3 = &a3[a2];
  if (__CFADD__(a2, a3))
  {
    return 0;
  }

  if (a3 < 0xC)
  {
    return 0;
  }

  v5 = a1[1];
  result = 0;
  if (v3 <= v5)
  {
    v7 = *a1;
    result = v7 + a2;
    if (&v3[v7] < v7 + a2 || a3 >> 32)
    {
      AppleBCMWLANProximityInterface::handleEvent(result, a3);
    }
  }

  return result;
}

uint64_t IO80211BufferCursor::_asType<wl_roam_11kvr_nbr_rpt_resp_v1>(uint64_t *a1, uint64_t a2, const char *a3)
{
  v3 = &a3[a2];
  if (__CFADD__(a2, a3))
  {
    return 0;
  }

  if (a3 < 0x10)
  {
    return 0;
  }

  v5 = a1[1];
  result = 0;
  if (v3 <= v5)
  {
    v7 = *a1;
    result = v7 + a2;
    if (&v3[v7] < v7 + a2 || a3 >> 32)
    {
      AppleBCMWLANProximityInterface::handleEvent(result, a3);
    }
  }

  return result;
}

uint64_t IO80211BufferCursor::_asType<unsigned short>(uint64_t *a1, uint64_t a2, const char *a3)
{
  v3 = &a3[a2];
  if (__CFADD__(a2, a3))
  {
    return 0;
  }

  if (a3 < 2)
  {
    return 0;
  }

  v5 = a1[1];
  result = 0;
  if (v3 <= v5)
  {
    v7 = *a1;
    result = v7 + a2;
    if (&v3[v7] < v7 + a2 || a3 >> 32)
    {
      AppleBCMWLANProximityInterface::handleEvent(result, a3);
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_38_1()
{
  v1 = *(*v0 + 5392);
  v3 = *(v1 + 48);
  return v1 + 48;
}

uint64_t OUTLINED_FUNCTION_51_0@<X0>(uint64_t a1@<X8>)
{
  v1 = *(a1 + 5392);
  v3 = *(v1 + 48);
  return v1 + 48;
}

uint64_t *OUTLINED_FUNCTION_60_0()
{
  result = *(*(v0 + 72) + 5392);
  v2 = *result;
  return result;
}

uint64_t *OUTLINED_FUNCTION_62_0@<X0>(uint64_t a1@<X8>)
{
  result = *(a1 + 5392);
  v2 = *result;
  return result;
}

void OUTLINED_FUNCTION_64_0(unsigned __int8 *a1@<X8>)
{
  v5 = a1[4];
  v6 = a1[5];
  v3 = a1[2];
  v4 = a1[3];
  v1 = *a1;
  v2 = a1[1];
}

void OUTLINED_FUNCTION_70_0()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 4);
  v3 = *(v0 + 10);
  v4 = *(v0 + 14);
  v5 = *(v0 + 26);
  v6 = *(v0 + 30);
  v7 = *(v0 + 34);
  v8 = *(v0 + 38);
}

void OUTLINED_FUNCTION_91_0()
{
  v2 = *(*(v0 + 72) + 1184);

  IOLockLock(v2);
}

void *OUTLINED_FUNCTION_115@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char __dst)
{

  return memcpy(&__dst, v24, (a1 + 4));
}

uint64_t OUTLINED_FUNCTION_124(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17, char a18, char *a19, uint64_t a20)
{
  a19 = &a18;
  a20 = 4;
  return *(*(v20 + 72) + 5408);
}

void OUTLINED_FUNCTION_134()
{
  v2 = (*v1 + 16 * v0);
  v3 = v2[223];
  v4 = v2[224];
  v5 = v2[225];
  v6 = v2[226];
  v7 = v2[227];
  v8 = v2[228];
  v9 = v2[229];
  v10 = v2[230];
  v11 = v2[231];
}

uint64_t OUTLINED_FUNCTION_140@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  result = 0;
  v3 = *(a1 + 4);
  *(a2 + 1070) = *(a1 + 10);
  *(a2 + 1064) = v3;
  return result;
}

void OUTLINED_FUNCTION_141()
{
  v2 = *v1;
  v3 = *v0;
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[5];
  v7 = *(v0 + 13);
  v8 = *(v0 + 20);
  v9 = *(v0 + 21);
  v10 = *(v0 + 23);
  v11 = *(v0 + 22);
}

const void *OUTLINED_FUNCTION_143(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, OSData *a17)
{
  v19 = *(v17 + 72);

  return OSData::getBytesNoCopy(a17, 0, 4uLL);
}

uint64_t OUTLINED_FUNCTION_144(int a1, const char *a2, int a3, int a4, int a5, const char *a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, OSData *a17)
{

  return checkAcquireDataPropertyNotEmpty(v17, a2, &a17, 4uLL, 1uLL, a6);
}

size_t OUTLINED_FUNCTION_145(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, char a51, char __source)
{
  v54 = (*(v52 + 72) + 1208);

  return strlcat(v54, &__source, 0xFFuLL);
}

__n128 OUTLINED_FUNCTION_150@<Q0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v2 = a2 + 1036;
  result = *(a1 + 4);
  *(v2 + 12) = *(a1 + 16);
  *v2 = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_155(uint64_t a1, IO80211SkywalkInterface *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{

  return IO80211Controller::postMessage(v27, a2, 0x37u, &a27, 0xF8uLL, 1);
}

BOOL OUTLINED_FUNCTION_164(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, char a16)
{

  return IOParseBootArgNumber(v16, &a16, 4);
}

uint64_t OUTLINED_FUNCTION_165(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, const char *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);

  return acquireProperty<OSNumber>(v12, a2, va, 1uLL, a5);
}

void OUTLINED_FUNCTION_170()
{
  v1 = *(v0 + 72);
  v2 = *(v1 + 10376);
  v3 = *(v1 + 19852);
}

const char *OUTLINED_FUNCTION_176()
{
  v2 = *(v0 + 32);

  return convertEventToString(v2, 0, 0);
}

void OUTLINED_FUNCTION_177()
{
  *(v1 + 1103) &= ~2u;

  IOLockUnlock(v0);
}

uint64_t OUTLINED_FUNCTION_185(AppleBCMWLANCore *a1, OSDictionary *a2, char *a3)
{

  return AppleBCMWLANCore::generateRequestedImages(a1, a2, a3, v3, 1, 0);
}

uint64_t OUTLINED_FUNCTION_191(uint64_t a1, uint64_t a2)
{
  result = 0;
  *(a2 + 4) = 1;
  return result;
}

BOOL OUTLINED_FUNCTION_192()
{

  return OSDictionary::setObject(v0, v2, v1);
}

const char *OUTLINED_FUNCTION_194()
{

  return OSString::getCStringNoCopy(v0);
}

uint64_t OUTLINED_FUNCTION_197()
{

  return AppleBCMWLANCore::featureFlagIsBitSet(v0, 34);
}

uint64_t OUTLINED_FUNCTION_202(AppleBCMWLANCommander *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);

  return AppleBCMWLANCommander::runIOVarGet(a1, a2, a3, va, 0);
}

uint64_t OUTLINED_FUNCTION_206(uint64_t a1, const void *a2)
{

  return memcmp((v2 + v3), a2, 3uLL);
}

void OUTLINED_FUNCTION_207()
{
  v1 = v0[1];
  v2 = v0[1202];
  v3 = v0[1203];
}

void OUTLINED_FUNCTION_217()
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = *(v0 + 8824);
}

uint64_t OUTLINED_FUNCTION_222()
{

  return CCLogStream::shouldLog();
}

void OUTLINED_FUNCTION_225(void *a1, os_log_s *a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint8_t buf)
{

  _os_log_impl(a1, a2, OS_LOG_TYPE_DEFAULT, a4, &buf, 0x22u);
}

void OUTLINED_FUNCTION_226(char a1@<W8>)
{
  *(v2 + 1119) = a1;

  IOLockUnlock(v1);
}

uint64_t OUTLINED_FUNCTION_227()
{

  return CCLogStream::shouldLog();
}

uint64_t OUTLINED_FUNCTION_228(int a1, const char *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{

  return CCLogStream::logAlert(v10, a2);
}

uint64_t OUTLINED_FUNCTION_229()
{

  return CCLogStream::shouldLog();
}

uint64_t OUTLINED_FUNCTION_230()
{

  return AppleBCMWLANCore::featureFlagIsBitSet(v0, 76);
}

int32x4_t OUTLINED_FUNCTION_242(int32x4_t a1, double a2)
{
  *&a1.i64[1] = a2;
  result = vaddq_s32(a1, *(v2 + 108));
  *(v2 + 108) = result;
  return result;
}

double OUTLINED_FUNCTION_243(int32x4_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, int a34)
{
  *&v35[16] = a34;
  *&v35[8] = a33;
  *v35 = a32;
  *&result = vaddq_s32(*&v35[4], a1).u64[0];
  return result;
}

void OUTLINED_FUNCTION_269(uint64_t a1@<X8>)
{
  v2 = *(a1 + 1184);

  IOLockUnlock(v2);
}

uint64_t OUTLINED_FUNCTION_270(AppleBCMWLANCore *a1)
{

  return AppleBCMWLANCore::featureFlagIsBitSet(a1, 120);
}

void OUTLINED_FUNCTION_271()
{
  *(v1 + 1099) &= ~4u;

  IOLockUnlock(v0);
}

void OUTLINED_FUNCTION_272()
{
  *(v1 + 1101) &= ~0x40u;

  IOLockUnlock(v0);
}

void OUTLINED_FUNCTION_273()
{

  IOLockLock(v0);
}

uint64_t OUTLINED_FUNCTION_274()
{
  *(v1 - 28) = 0;

  return IOService::GetBusyState(v0, (v1 - 28), 0);
}

void OUTLINED_FUNCTION_275()
{
  *v1 = -536870212;

  AppleBCMWLANUtil::AutoreleasedAlignedOSData::~AutoreleasedAlignedOSData(v0);
}

size_t OUTLINED_FUNCTION_276@<X0>(const char *a1@<X1>, uint64_t a2@<X8>)
{

  return strlcat((a2 + 1208), a1, 0x100uLL);
}

uint64_t OUTLINED_FUNCTION_277()
{

  return AppleBCMWLANCore::featureFlagIsBitSet(v0, 95);
}

uint64_t OUTLINED_FUNCTION_278()
{

  return AppleBCMWLANCore::featureFlagIsBitSet(v0, 115);
}

BOOL AppleBCMWLANBusInterfacePCIe::init(AppleBCMWLANBusInterfacePCIe *this, OSDictionary *a2)
{
  mach_continuous_time();
  absolutetime_to_nanoseconds();
  v3 = IOMallocZeroTyped();
  v4 = v3;
  *(this + 9) = v3;
  if (v3)
  {
    atomic_store(0, (v3 + 5392));
    *(*(this + 9) + 1504) = *(this + 9) + 1504;
    *(*(this + 9) + 1512) = *(this + 9) + 1504;
  }

  else
  {
    stringFromBootCheckPoint(1u);
    io80211_os_log();
  }

  return v4 != 0;
}

uint64_t AppleBCMWLANBusInterfacePCIe::start(IOService *this, IOService *a2)
{
  v5 = &this[1].OSObjectInterface;
  v4 = this[1].OSObject::OSObjectInterface::__vftable;
  LODWORD(ms) = 1;
  BYTE2(v4[325].init) = 1;
  BYTE4(this[1].OSObject::OSObjectInterface::__vftable[202].init) = 1;
  if (IOParseBootArgNumber("wlan.pcie.useOLYHALDriver", &ms, 4))
  {
    if (AppleBCMWLANBusInterface::getLogger(this))
    {
      AppleBCMWLANBusInterface::getLogger(this);
      if (CCLogStream::shouldLog())
      {
        Logger = AppleBCMWLANBusInterface::getLogger(this);
        CCLogStream::logInfo(Logger, "[dk] %s@%d:wlan.pcie.useOLYHALDriver %d\n", "start", 1699, ms);
      }
    }
  }

  *(*v5 + 3236) = ms == 1;
  if (IOParseBootArgNumber("wlan.startdelay", &ms, 4))
  {
    if (AppleBCMWLANBusInterface::getLogger(this))
    {
      AppleBCMWLANBusInterface::getLogger(this);
      if (CCLogStream::shouldLog())
      {
        v21 = AppleBCMWLANBusInterface::getLogger(this);
        CCLogStream::logAlert(v21, "[dk] %s@%d:wlan.startdelay %d s\n", "start", 1708, ms);
      }
    }

    IOSleep((1000 * ms));
    if (AppleBCMWLANBusInterface::getLogger(this))
    {
      AppleBCMWLANBusInterface::getLogger(this);
      if (CCLogStream::shouldLog())
      {
        v22 = AppleBCMWLANBusInterface::getLogger(this);
        CCLogStream::logAlert(v22, "[dk] %s@%d:wlan.startdelay %d s complete\n", "start", 1710, ms);
      }
    }
  }

  *(*v5 + 4105) = 0;
  if (IOParseBootArgNumber("wlan.wdt.disableLogging", &ms, 4))
  {
    if (AppleBCMWLANBusInterface::getLogger(this))
    {
      AppleBCMWLANBusInterface::getLogger(this);
      if (CCLogStream::shouldLog())
      {
        v23 = AppleBCMWLANBusInterface::getLogger(this);
        CCLogStream::logInfo(v23, "[dk] %s@%d: wlan.wdt.disableLogging %d\n", "start", 1736, ms);
      }
    }

    *(*v5 + 4105) = ms != 0;
  }

  if (IOParseBootArgNumber("wlan.pcie.enableDeepSleepSupport", &ms, 4))
  {
    if (AppleBCMWLANBusInterface::getLogger(this))
    {
      AppleBCMWLANBusInterface::getLogger(this);
      if (CCLogStream::shouldLog())
      {
        v24 = AppleBCMWLANBusInterface::getLogger(this);
        CCLogStream::logInfo(v24, "[dk] %s@%d: wlan.pcie.enableDeepSleep %d\n", "start", 1742, ms);
      }
    }

    *(*v5 + 3720) = ms != 0;
  }

  if (IOParseBootArgNumber("wlan.pcie.debugworkQueuetimeout_ms", &ms, 4))
  {
    if (AppleBCMWLANBusInterface::getLogger(this))
    {
      AppleBCMWLANBusInterface::getLogger(this);
      if (CCLogStream::shouldLog())
      {
        v25 = AppleBCMWLANBusInterface::getLogger(this);
        CCLogStream::logInfo(v25, "[dk] %s@%d: wlan.pcie.debugworkQueuetimeout_ms %d\n", "start", 1747, ms);
      }
    }

    *(*v5 + 4108) = ms;
  }

  if (IOParseBootArgNumber("wlan.pcie.delaystart_ms", &ms, 4))
  {
    if (AppleBCMWLANBusInterface::getLogger(this))
    {
      AppleBCMWLANBusInterface::getLogger(this);
      if (CCLogStream::shouldLog())
      {
        v26 = AppleBCMWLANBusInterface::getLogger(this);
        CCLogStream::logAlert(v26, "[dk] %s@%d:Starting WiFi driver after %d ms\n", "start", 1752, ms);
      }
    }

    IOSleep(ms);
  }

  if (IOParseBootArgNumber("wlan.pcie.paniconaer", &ms, 4))
  {
    *(*v5 + 3784) = 1;
  }

  if (IOParseBootArgNumber("wlan.pcie.paniconcommitrings", &ms, 4))
  {
    *(*v5 + 3785) = 1;
  }

  *(*v5 + 3709) = 0;
  if (IOParseBootArgNumber("wlan.pcie.disablebootmsi", &ms, 4))
  {
    *(*v5 + 3709) = ms != 0;
  }

  *(*v5 + 3710) = 0;
  if (IOParseBootArgNumber("wlan.pcie.nolinkdownlogs", &ms, 4))
  {
    *(*v5 + 3710) = 1;
  }

  *(*v5 + 4040) = mach_continuous_time();
  IOLog("%s(%d): fLastTimePowerOnTicks=%lld\n", "start", 1775, *(*v5 + 4040));
  *(*v5 + 3711) = 1;
  if (IOParseBootArgNumber("wlan.pcie.enableptmsupport", &ms, 4))
  {
    if (AppleBCMWLANBusInterface::getLogger(this))
    {
      AppleBCMWLANBusInterface::getLogger(this);
      if (CCLogStream::shouldLog())
      {
        v27 = AppleBCMWLANBusInterface::getLogger(this);
        CCLogStream::logInfo(v27, "[dk] %s@%d: wlan.pcie.enableptmsupport %d\n", "start", 1782, ms);
      }
    }

    *(*v5 + 3711) = ms != 0;
  }

  *(*v5 + 3712) = 0;
  if (IOParseBootArgNumber("wlan.pcie.disablefatalerrorindication", &ms, 4))
  {
    if (AppleBCMWLANBusInterface::getLogger(this))
    {
      AppleBCMWLANBusInterface::getLogger(this);
      if (CCLogStream::shouldLog())
      {
        v28 = AppleBCMWLANBusInterface::getLogger(this);
        CCLogStream::logInfo(v28, "[dk] %s@%d: wlan.pcie.disablefatalerrorindication %d\n", "start", 1788, ms);
      }
    }

    *(*v5 + 3712) = ms != 0;
  }

  *(*v5 + 3713) = 0;
  if (IOParseBootArgNumber("wlan.pcie.disableCoexCPUDumpSupport", &ms, 4))
  {
    if (AppleBCMWLANBusInterface::getLogger(this))
    {
      AppleBCMWLANBusInterface::getLogger(this);
      if (CCLogStream::shouldLog())
      {
        v29 = AppleBCMWLANBusInterface::getLogger(this);
        CCLogStream::logInfo(v29, "[dk] %s@%d: wlan.pcie.disableCoexCPUDumpSupport %d\n", "start", 1794, ms);
      }
    }

    *(*v5 + 3713) = ms != 0;
  }

  *(*v5 + 3714) = 0;
  if (IOParseBootArgNumber("wlan.pcie.disableDSExitTimeoutWA", &ms, 4))
  {
    if (AppleBCMWLANBusInterface::getLogger(this))
    {
      AppleBCMWLANBusInterface::getLogger(this);
      if (CCLogStream::shouldLog())
      {
        v30 = AppleBCMWLANBusInterface::getLogger(this);
        CCLogStream::logInfo(v30, "[dk] %s@%d: wlan.pcie.disableDSExitTimeoutWA %d\n", "start", 1799, ms);
      }
    }

    *(*v5 + 3714) = ms != 0;
  }

  *(*v5 + 3719) = 0;
  if (IOParseBootArgNumber("wlan.pcie.paniconhostpollfwtrap", &ms, 4))
  {
    *(*v5 + 3719) = 1;
  }

  *(*v5 + 3718) = 0;
  if (IOParseBootArgNumber("wlan.pcie.disablehostinitiatedfwtrap", &ms, 4))
  {
    *(*v5 + 3718) = 1;
  }

  *(*v5 + 3776) = -1;
  if (IOParseBootArgNumber("wlan.pcie.iokitmatch_ms", &ms, 4))
  {
    if (AppleBCMWLANBusInterface::getLogger(this))
    {
      AppleBCMWLANBusInterface::getLogger(this);
      if (CCLogStream::shouldLog())
      {
        v31 = AppleBCMWLANBusInterface::getLogger(this);
        CCLogStream::logInfo(v31, "[dk] %s@%d: wlan.pcie.iokitmatch_ms %d\n", "start", 1819, ms);
      }
    }

    *(*v5 + 3776) = 1000 * (1000 * ms);
  }

  *(*v5 + 2868) = 1;
  *(*v5 + 3721) = 1;
  if (IOParseBootArgNumber("wlan.pcie.DSdisabled", &ms, 4))
  {
    if (AppleBCMWLANBusInterface::getLogger(this))
    {
      AppleBCMWLANBusInterface::getLogger(this);
      if (CCLogStream::shouldLog())
      {
        v32 = AppleBCMWLANBusInterface::getLogger(this);
        CCLogStream::logAlert(v32, "[dk] %s@%d:wlan.pcie.DSdisabled %d\n", "start", 1838, ms);
      }
    }

    *(*v5 + 2868) = ms != 1;
  }

  if (IOParseBootArgNumber("wlan.factory", &ms, 4) && (ms & 0x80) != 0 && *(*v5 + 2868) == 1)
  {
    *(*v5 + 2868) = 0;
  }

  if (AppleBCMWLANBusInterface::getLogger(this))
  {
    AppleBCMWLANBusInterface::getLogger(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANBusInterfacePCIe::start(this, v5);
    }
  }

  if ((setPropertyHelper(this, "wlan.pcie.DSState", BYTE4(this[1].OSObject::OSObjectInterface::__vftable[179].init)) & 1) == 0)
  {
    if (AppleBCMWLANBusInterface::getLogger(this))
    {
      AppleBCMWLANBusInterface::getLogger(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANBusInterfacePCIe::start(this, v5);
      }
    }
  }

  if (IOParseBootArgNumber("wlan.pcie.D0AckLogsdisabled", &ms, 4))
  {
    if (AppleBCMWLANBusInterface::getLogger(this))
    {
      AppleBCMWLANBusInterface::getLogger(this);
      if (CCLogStream::shouldLog())
      {
        v33 = AppleBCMWLANBusInterface::getLogger(this);
        CCLogStream::logAlert(v33, "[dk] %s@%d:wlan.pcie.D0AckLogsdisabled %d\n", "start", 1853, ms);
      }
    }

    *(*v5 + 3721) = ms != 1;
  }

  if (IOParseBootArgNumber("wlan.pcie.reset_ms", (*v5 + 2848), 4))
  {
    if (AppleBCMWLANBusInterface::getLogger(this))
    {
      AppleBCMWLANBusInterface::getLogger(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANBusInterfacePCIe::start(this, v5);
      }
    }
  }

  else
  {
    *(*v5 + 2848) = 100;
  }

  *(*v5 + 2880) = 256;
  if (IOParseBootArgNumber("wlan.pcie.txdeq", &ms, 4))
  {
    v6 = ms;
    if (ms >= 0xFF)
    {
      v6 = 255;
    }

    LODWORD(ms) = v6;
    if (AppleBCMWLANBusInterface::getLogger(this))
    {
      AppleBCMWLANBusInterface::getLogger(this);
      if (CCLogStream::shouldLog())
      {
        v34 = AppleBCMWLANBusInterface::getLogger(this);
        CCLogStream::logInfo(v34, "[dk] %s@%d: wlan.pcie.txdeq %d\n", "start", 1866, ms);
      }
    }

    *(*v5 + 2880) = ms;
  }

  *(*v5 + 2884) = 1024;
  if (IOParseBootArgNumber("wlan.pcie.bounce", &ms, 4))
  {
    HIDWORD(this[1].OSObject::OSObjectInterface::__vftable[180].init) = ms;
    if (AppleBCMWLANBusInterface::getLogger(this))
    {
      AppleBCMWLANBusInterface::getLogger(this);
      if (CCLogStream::shouldLog())
      {
        v35 = AppleBCMWLANBusInterface::getLogger(this);
        CCLogStream::logInfo(v35, "[dk] %s@%d: wlan.pcie.bounce %d\n", "start", 1873, ms);
      }
    }
  }

  *(*v5 + 4476) = 384;
  *(*v5 + 4478) = 64;
  if (IOParseBootArgNumber("wlan.pcie.badrequest_readSocRAM", &ms, 4))
  {
    *(*v5 + 3786) = 1;
  }

  *(*v5 + 3786) = 1;
  *(*v5 + 4536) = 2000;
  if (IOParseBootArgNumber("wlan.pcie.sleepBeforePanic", &ms, 4))
  {
    *(*v5 + 4536) = ms;
  }

  *(*v5 + 4540) = 10;
  if (IOParseBootArgNumber("wlan.pcie.deviceWakeWaitBeforePanic", &ms, 4))
  {
    *(*v5 + 4540) = ms;
  }

  *(*v5 + 4587) = 0;
  if (IOParseBootArgNumber("wifibt.pcie.disableASPMWorkaround", &ms, 4))
  {
    BYTE3(this[1].OSObject::OSObjectInterface::__vftable[286].free) = ms != 0;
    if (AppleBCMWLANBusInterface::getLogger(this))
    {
      AppleBCMWLANBusInterface::getLogger(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANBusInterfacePCIe::start(this, v5);
      }
    }
  }

  *(*v5 + 4586) = 0;
  if (IOParseBootArgNumber("wlan.pcie.enableMFD3AckSoCRAM", &ms, 4))
  {
    BYTE2(this[1].OSObject::OSObjectInterface::__vftable[286].free) = ms != 0;
    if (AppleBCMWLANBusInterface::getLogger(this))
    {
      AppleBCMWLANBusInterface::getLogger(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANBusInterfacePCIe::start(this, v5);
      }
    }
  }

  *(*v5 + 4582) = 0;
  if (IOParseBootArgNumber("wlan.pcie.logCollectionOverride", &ms, 4))
  {
    BYTE6(this[1].OSObject::OSObjectInterface::__vftable[286].init) = ms != 0;
    if (AppleBCMWLANBusInterface::getLogger(this))
    {
      AppleBCMWLANBusInterface::getLogger(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANBusInterfacePCIe::start(this, v5);
      }
    }
  }

  *(*v5 + 4583) = 0;
  if (IOParseBootArgNumber("wlan.pcie.logCollectWLAPB", &ms, 4))
  {
    HIBYTE(this[1].OSObject::OSObjectInterface::__vftable[286].init) = ms != 0;
    if (AppleBCMWLANBusInterface::getLogger(this))
    {
      AppleBCMWLANBusInterface::getLogger(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANBusInterfacePCIe::start(this, v5);
      }
    }
  }

  LODWORD(ms) = 0;
  *(*v5 + 3717) = 0;
  if (IOParseBootArgNumber("wlan.pcie.tcmAccessWithTrapTimeout", &ms, 4))
  {
    if (AppleBCMWLANBusInterface::getLogger(this))
    {
      AppleBCMWLANBusInterface::getLogger(this);
      if (CCLogStream::shouldLog())
      {
        v36 = AppleBCMWLANBusInterface::getLogger(this);
        CCLogStream::logInfo(v36, "[dk] %s@%d: wlan.pcie.tcmAccessWithTrapTimeout %d\n", "start", 1921, ms);
      }
    }

    *(*v5 + 3717) = ms != 0;
  }

  *(*v5 + 4585) = 0;
  if (IOParseBootArgNumber("wifibt.pcie.panicOnPendingBackplaneErrors", &ms, 4))
  {
    BYTE1(this[1].OSObject::OSObjectInterface::__vftable[286].free) = ms != 0;
    if (AppleBCMWLANBusInterface::getLogger(this))
    {
      AppleBCMWLANBusInterface::getLogger(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANBusInterfacePCIe::start(this, v5);
      }
    }
  }

  *(*v5 + 4544) = 0;
  if (IOParseBootArgNumber("wlan.pcie.hmap-window-limit", &ms, 4))
  {
    LODWORD(this[1].OSObject::OSObjectInterface::__vftable[284].init) = ms;
    if (AppleBCMWLANBusInterface::getLogger(this))
    {
      AppleBCMWLANBusInterface::getLogger(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANBusInterfacePCIe::start(this, v5);
      }
    }
  }

  *(*v5 + 4548) = 0;
  if (IOParseBootArgNumber("wlan.pcie.tcmAccessWithInactiveCore", &ms, 4))
  {
    *(*v5 + 4548) = ms;
  }

  v7 = *v5;
  if (!*(*v5 + 4544))
  {
    v46 = 0;
    v8 = (this->OSObject::OSMetaClassBase::__vftable[17].Dispatch)(this);
    if (checkAcquireDataPropertyNotEmpty(v8, "wlan.pcie.hmap-window-limit", &v46, 4uLL, 1uLL, "IOService"))
    {
      v9 = this[1].OSObject::OSObjectInterface::__vftable;
      LODWORD(v9[284].init) = *OSData::getBytesNoCopy(v46, 0, 4uLL);
      if (AppleBCMWLANBusInterface::getLogger(this))
      {
        AppleBCMWLANBusInterface::getLogger(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANBusInterfacePCIe::start(this, v5);
        }
      }

      if (v46)
      {
        (v46->release)(v46);
      }
    }

    v7 = *v5;
  }

  *(v7 + 4640) = 100;
  BYTE1(this[1].OSObject::OSObjectInterface::__vftable[195].free) = 1;
  BYTE2(this[1].OSObject::OSObjectInterface::__vftable[195].free) = 0;
  BYTE1(this[1].OSObject::OSObjectInterface::__vftable[231].free) = 0;
  v46 = 0;
  v10 = (this->OSObject::OSMetaClassBase::__vftable[17].Dispatch)(this);
  if (checkAcquireDataPropertyNotEmpty(v10, "default-options", &v46, 4uLL, 0, "IOService"))
  {
    v11 = *OSData::getBytesNoCopy(v46);
    if (AppleBCMWLANBusInterface::getLogger(this))
    {
      AppleBCMWLANBusInterface::getLogger(this);
      if (CCLogStream::shouldLog())
      {
        v37 = AppleBCMWLANBusInterface::getLogger(this);
        CCLogStream::logAlert(v37, "[dk] %s@%d:Default options property found with value %d\n", "start", 1966, v11);
      }
    }

    *(*v5 + 3129) = (v11 & 4) == 0;
    *(*v5 + 3130) = (v11 & 8) != 0;
    *(*v5 + 3705) = v11 & 1;
    if (v46)
    {
      (v46->release)(v46);
      v46 = 0;
    }
  }

  if (!AppleBCMWLAN_isDevFusedOrCSRInternal())
  {
    *(*v5 + 3129) = 1;
  }

  if ((*(*v5 + 3129) & 1) == 0)
  {
    if (AppleBCMWLANBusInterface::getLogger(this))
    {
      AppleBCMWLANBusInterface::getLogger(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANBusInterfacePCIe::start(this);
      }
    }
  }

  if (*(*v5 + 3130) == 1)
  {
    *(*v5 + 4640) += 100;
  }

  if (IOParseBootArgNumber("wlan.pcie.portenableretry", &ms, 4))
  {
    BYTE1(this[1].OSObject::OSObjectInterface::__vftable[195].free) = ms != 0;
    if (AppleBCMWLANBusInterface::getLogger(this))
    {
      AppleBCMWLANBusInterface::getLogger(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANBusInterfacePCIe::start(this, v5);
      }
    }
  }

  if (IOParseBootArgNumber("wlan.pcie.paniconlinkdown", &ms, 4))
  {
    *(*v5 + 3705) = 1;
  }

  if (IOParseBootArgNumber("wlan.pcie.perstdelay_ms", &ms, 4))
  {
    if (AppleBCMWLANBusInterface::getLogger(this))
    {
      AppleBCMWLANBusInterface::getLogger(this);
      if (CCLogStream::shouldLog())
      {
        v38 = AppleBCMWLANBusInterface::getLogger(this);
        CCLogStream::logInfo(v38, "[dk] %s@%d: wlan.pcie.perstdelay_ms %d\n", "start", 2002, ms);
      }
    }

    *(*v5 + 4640) = ms;
  }

  *(*v5 + 4422) = 0;
  if (IOParseBootArgNumber("wlan.pcie.dumplogbtreset", &ms, 4))
  {
    if (AppleBCMWLANBusInterface::getLogger(this))
    {
      AppleBCMWLANBusInterface::getLogger(this);
      if (CCLogStream::shouldLog())
      {
        v39 = AppleBCMWLANBusInterface::getLogger(this);
        CCLogStream::logInfo(v39, "[dk] %s@%d: wlan.pcie.dumplogbtreset %d\n", "start", 2008, ms);
      }
    }

    *(*v5 + 4422) = ms != 0;
  }

  *(*v5 + 2824) = 1;
  if (IOParseBootArgNumber("wlan.pcie.detectsabotage", &ms, 4))
  {
    if (AppleBCMWLANBusInterface::getLogger(this))
    {
      AppleBCMWLANBusInterface::getLogger(this);
      if (CCLogStream::shouldLog())
      {
        v40 = AppleBCMWLANBusInterface::getLogger(this);
        CCLogStream::logInfo(v40, "[dk] %s@%d: wlan.pcie.detectsabotage %d\n", "start", 2014, ms);
      }
    }

    *(*v5 + 2824) = ms != 0;
  }

  v45 = 1000;
  if (IOParseBootArgNumber("wlan.pcie.commitcoalesce", &v45, 4))
  {
    if (AppleBCMWLANBusInterface::getLogger(this))
    {
      AppleBCMWLANBusInterface::getLogger(this);
      if (CCLogStream::shouldLog())
      {
        v41 = AppleBCMWLANBusInterface::getLogger(this);
        CCLogStream::logCrit(v41, "[dk] %s@%d:Commit Coalescing time %dus\n", "start", 2020, v45);
      }
    }
  }

  LODWORD(ms) = 0;
  *(*v5 + 4638) = 0;
  if (IOParseBootArgNumber("wlan.secureboot.darcheck", &ms, 4))
  {
    if (AppleBCMWLANBusInterface::getLogger(this))
    {
      AppleBCMWLANBusInterface::getLogger(this);
      if (CCLogStream::shouldLog())
      {
        v42 = AppleBCMWLANBusInterface::getLogger(this);
        CCLogStream::logCrit(v42, "[dk] %s@%d: wlan.secureboot.darcheck %d\n", "start", 2026, ms);
      }
    }

    *(*v5 + 4638) = ms != 0;
  }

  AppleBCMWLANBusInterfacePCIe::initExitDurationLimits(this);
  AppleBCMWLANBusInterfacePCIe::initInterruptBins(this);
  if (AppleBCMWLANBusInterface::getLogger(this))
  {
    AppleBCMWLANBusInterface::getLogger(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANBusInterfacePCIe::start(this);
    }
  }

  free = this[1].OSObject::OSObjectInterface::__vftable[216].free;
  this[1].OSObject::OSObjectInterface::__vftable[217].init = IO80211CommandGate::allocWithParams();
  v13 = this[1].OSObject::OSObjectInterface::__vftable;
  if (!v13[217].init)
  {
    if (AppleBCMWLANBusInterface::getLogger(this))
    {
      AppleBCMWLANBusInterface::getLogger(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANBusInterfacePCIe::start(this);
      }
    }

    v16 = this;
    v17 = a2;
    v18 = 2066;
    goto LABEL_214;
  }

  v13[94].init = &v13[94];
  *(*v5 + 1512) = *v5 + 1504;
  *(*v5 + 2816) = IOLockAlloc();
  if (!*(*v5 + 2816))
  {
    if (AppleBCMWLANBusInterface::getLogger(this))
    {
      AppleBCMWLANBusInterface::getLogger(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANBusInterfacePCIe::start(this);
      }
    }

    v16 = this;
    v17 = a2;
    v18 = 2074;
    goto LABEL_214;
  }

  inited = AppleBCMWLANBusInterfacePCIe::initMRUFlowIdList(this);
  this[1].OSObject::OSObjectInterface::__vftable[82].init = IO80211FlowQueueDatabase::initialize(inited);
  if (!this[1].OSObject::OSObjectInterface::__vftable[82].init)
  {
    v16 = this;
    v17 = a2;
    v18 = 2101;
    goto LABEL_214;
  }

  if (!(this->OSObject::OSMetaClassBase::__vftable[21].isEqualTo)(this, a2))
  {
    if ((this->OSObject::OSMetaClassBase::__vftable[21].retain)(this, a2))
    {
      AppleBCMWLANBusInterface::reportInitFailure(this, a2, 1uLL, 2112);
      result = AppleBCMWLANBusInterface::getLogger(this);
      if (result)
      {
        AppleBCMWLANBusInterface::getLogger(this);
        result = CCLogStream::shouldLog();
        if (result)
        {
          AppleBCMWLANBusInterfacePCIe::start(this);
          return 0;
        }
      }

      return result;
    }

    if ((this->OSObject::OSMetaClassBase::__vftable[21].release)(this, a2))
    {
      AppleBCMWLANBusInterface::reportInitFailure(this, a2, 1uLL, 2118);
      result = AppleBCMWLANBusInterface::getLogger(this);
      if (result)
      {
        AppleBCMWLANBusInterface::getLogger(this);
        result = CCLogStream::shouldLog();
        if (result)
        {
          AppleBCMWLANBusInterfacePCIe::start(this);
          return 0;
        }
      }

      return result;
    }

    result = AppleBCMWLANBusInterfacePCIe::createDestroyRequestTracker(this, a2);
    if (!result)
    {
      return result;
    }

    if (AppleBCMWLANBusInterfacePCIe::createReporters(this, v19))
    {
      AppleBCMWLANBusInterfacePCIe::initPCIeDatapathStreams(this);
      BYTE1(this[1].OSObject::OSObjectInterface::__vftable[325].init) = 0;
      v44 = 0;
      LODWORD(this[1].OSObject::OSObjectInterface::__vftable[241].init) = 1;
      IOService::AdjustBusy(this, 1, 0);
      IOService::GetBusyState(this, &v44, 0);
      if (AppleBCMWLANBusInterface::getLogger(this))
      {
        AppleBCMWLANBusInterface::getLogger(this);
        if (CCLogStream::shouldLog())
        {
          v43 = AppleBCMWLANBusInterface::getLogger(this);
          CCLogStream::logAlert(v43, "[dk] %s@%d:Raised AdjustBusy(+1), GetBusyState() -> %u\n", "start", 2168, v44);
        }
      }

      io80211_os_log();
      return 1;
    }

    if (AppleBCMWLANBusInterface::getLogger(this))
    {
      AppleBCMWLANBusInterface::getLogger(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANBusInterfacePCIe::start(this);
      }
    }

    v16 = this;
    v17 = a2;
    v18 = 2129;
LABEL_214:
    AppleBCMWLANBusInterface::reportInitFailure(v16, v17, 1uLL, v18);
    return 0;
  }

  AppleBCMWLANBusInterface::reportInitFailure(this, a2, 1uLL, 2106);
  result = AppleBCMWLANBusInterface::getLogger(this);
  if (result)
  {
    AppleBCMWLANBusInterface::getLogger(this);
    result = CCLogStream::shouldLog();
    if (result)
    {
      AppleBCMWLANBusInterfacePCIe::start(this);
      return 0;
    }
  }

  return result;
}

uint64_t AppleBCMWLANBusInterfacePCIe::initExitDurationLimits(uint64_t this)
{
  *(*(this + 72) + 1632) = 1;
  *(*(this + 72) + 1640) = 5;
  *(*(this + 72) + 1648) = 10;
  *(*(this + 72) + 1656) = 25;
  *(*(this + 72) + 1664) = 50;
  *(*(this + 72) + 1672) = 100;
  *(*(this + 72) + 1680) = 200;
  *(*(this + 72) + 1688) = 300;
  *(*(this + 72) + 1696) = 400;
  *(*(this + 72) + 1704) = 500;
  *(*(this + 72) + 1712) = 750;
  *(*(this + 72) + 1720) = 1000;
  *(*(this + 72) + 1728) = -1;
  return this;
}

AppleBCMWLANHistogram *AppleBCMWLANBusInterfacePCIe::initInterruptBins(AppleBCMWLANBusInterfacePCIe *this)
{
  *(*(this + 9) + 3208) = 1;
  *(*(this + 9) + 3212) = 8;
  *(*(this + 9) + 3216) = 16;
  *(*(this + 9) + 3220) = 32;
  *(*(this + 9) + 3224) = 48;
  *(*(this + 9) + 3228) = 64;
  *(*(this + 9) + 3232) = 640;
  *(*(this + 9) + 3728) = 1000;
  *(*(this + 9) + 3732) = 1000;
  result = AppleBCMWLANHistogram::withBinCountAndQuantizer(AppleBCMWLANHistogram::log2Quantize, 0x20, 1);
  *(*(this + 9) + 3096) = result;
  return result;
}

uint64_t AppleBCMWLANBusInterfacePCIe::initMRUFlowIdList(uint64_t this)
{
  v1 = *(this + 72);
  v2 = *(v1 + 376);
  v1 += 1864;
  *v1 = 0u;
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0u;
  *(v1 + 48) = 0u;
  *(v1 + 64) = 0u;
  *(v1 + 80) = 0u;
  *(v1 + 96) = 0u;
  *(v1 + 112) = 0u;
  *(v1 + 128) = 0u;
  *(v1 + 144) = 0u;
  *(v1 + 160) = 0u;
  if (v2)
  {
    v3 = 0;
    v4 = 0;
    v5 = v2 - 1;
    v6 = 4 * v2;
    do
    {
      v7 = v4 - 1;
      if (!v3)
      {
        v7 = v5;
      }

      *(*(this + 72) + v3 + 1865) = v7;
      if (v6 - 4 == v3)
      {
        v8 = 0;
      }

      else
      {
        v8 = v4 + 1;
      }

      *(*(this + 72) + v3 + 1864) = v8;
      *(*(this + 72) + v3 + 1866) = 0;
      ++v4;
      v3 += 4;
    }

    while (v6 != v3);
  }

  v9 = *(this + 72);
  if (*(v9 + 372))
  {
    v10 = 0;
    do
    {
      *(v9 + 1864 + 4 * *(v9 + 1864 + 4 * v10 + 1)) = *(v9 + 1864 + 4 * v10);
      *(*(this + 72) + 1864 + 4 * *(*(this + 72) + 1864 + 4 * v10) + 1) = *(*(this + 72) + 1864 + 4 * v10 + 1);
      *(*(this + 72) + 4 * v10 + 1865) = v10;
      *(*(this + 72) + 4 * v10 + 1864) = v10;
      ++v10;
      v9 = *(this + 72);
      v11 = *(v9 + 372);
    }

    while (v11 > v10);
  }

  else
  {
    LOBYTE(v11) = 0;
  }

  *(v9 + 2040) = v11;
  return this;
}

uint64_t AppleBCMWLANBusInterfacePCIe::createDestroyRequestTracker(AppleBCMWLANBusInterfacePCIe *this, IOService *a2)
{
  *(*(this + 9) + 1088) = AppleBCMWLANHashtable::withCapacity(0x40);
  if (*(*(this + 9) + 1088))
  {
    *(*(this + 9) + 1096) = AppleBCMWLANHashtable::withCapacity(0x40);
    if (*(*(this + 9) + 1096))
    {
      *(*(this + 9) + 1112) = AppleBCMWLANHashtable::withCapacity(4);
      if (*(*(this + 9) + 1112))
      {
        *(*(this + 9) + 1120) = AppleBCMWLANHashtable::withCapacity(4);
        if (*(*(this + 9) + 1120))
        {
          *(*(this + 9) + 1128) = AppleBCMWLANHashtable::withCapacity(4);
          if (*(*(this + 9) + 1128))
          {
            *(*(this + 9) + 1136) = AppleBCMWLANHashtable::withCapacity(4);
            if (*(*(this + 9) + 1136))
            {
              *(*(this + 9) + 3552) = AppleBCMWLANHashtable::withCapacity(0x10);
              if (*(*(this + 9) + 3552))
              {
                *(*(this + 9) + 3560) = AppleBCMWLANHashtable::withCapacity(0x80);
                if (*(*(this + 9) + 3560))
                {
                  Pow2 = AppleBCMWLANHashtable::alignNextPow2(0x280);
                  *(*(this + 9) + 3568) = AppleBCMWLANHashtable::withCapacity(Pow2);
                  v5 = *(this + 9);
                  if (*(v5 + 3568))
                  {
                    v6 = AppleBCMWLANHashtable::alignNextPow2(*(v5 + 2884));
                    *(*(this + 9) + 3576) = AppleBCMWLANHashtable::withCapacity(v6);
                    if (*(*(this + 9) + 3576))
                    {
                      *(*(this + 9) + 3584) = AppleBCMWLANHashtable::withCapacity(0x10);
                      if (*(*(this + 9) + 3584))
                      {
                        return 1;
                      }

                      if (AppleBCMWLANBusInterface::getLogger(this))
                      {
                        AppleBCMWLANBusInterface::getLogger(this);
                        if (CCLogStream::shouldLog())
                        {
                          AppleBCMWLANBusInterfacePCIe::createDestroyRequestTracker(this);
                        }
                      }

                      v8 = 2252;
                    }

                    else
                    {
                      if (AppleBCMWLANBusInterface::getLogger(this))
                      {
                        AppleBCMWLANBusInterface::getLogger(this);
                        if (CCLogStream::shouldLog())
                        {
                          AppleBCMWLANBusInterfacePCIe::createDestroyRequestTracker(this);
                        }
                      }

                      v8 = 2245;
                    }
                  }

                  else
                  {
                    if (AppleBCMWLANBusInterface::getLogger(this))
                    {
                      AppleBCMWLANBusInterface::getLogger(this);
                      if (CCLogStream::shouldLog())
                      {
                        AppleBCMWLANBusInterfacePCIe::createDestroyRequestTracker(this);
                      }
                    }

                    v8 = 2238;
                  }
                }

                else
                {
                  if (AppleBCMWLANBusInterface::getLogger(this))
                  {
                    AppleBCMWLANBusInterface::getLogger(this);
                    if (CCLogStream::shouldLog())
                    {
                      AppleBCMWLANBusInterfacePCIe::createDestroyRequestTracker(this);
                    }
                  }

                  v8 = 2231;
                }
              }

              else
              {
                v8 = 2224;
              }
            }

            else
            {
              if (AppleBCMWLANBusInterface::getLogger(this))
              {
                AppleBCMWLANBusInterface::getLogger(this);
                if (CCLogStream::shouldLog())
                {
                  AppleBCMWLANBusInterfacePCIe::createDestroyRequestTracker(this);
                }
              }

              v8 = 2218;
            }
          }

          else
          {
            if (AppleBCMWLANBusInterface::getLogger(this))
            {
              AppleBCMWLANBusInterface::getLogger(this);
              if (CCLogStream::shouldLog())
              {
                AppleBCMWLANBusInterfacePCIe::createDestroyRequestTracker(this);
              }
            }

            v8 = 2211;
          }
        }

        else
        {
          if (AppleBCMWLANBusInterface::getLogger(this))
          {
            AppleBCMWLANBusInterface::getLogger(this);
            if (CCLogStream::shouldLog())
            {
              AppleBCMWLANBusInterfacePCIe::createDestroyRequestTracker(this);
            }
          }

          v8 = 2204;
        }
      }

      else
      {
        if (AppleBCMWLANBusInterface::getLogger(this))
        {
          AppleBCMWLANBusInterface::getLogger(this);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANBusInterfacePCIe::createDestroyRequestTracker(this);
          }
        }

        v8 = 2197;
      }
    }

    else
    {
      if (AppleBCMWLANBusInterface::getLogger(this))
      {
        AppleBCMWLANBusInterface::getLogger(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANBusInterfacePCIe::createDestroyRequestTracker(this);
        }
      }

      v8 = 2190;
    }
  }

  else
  {
    if (AppleBCMWLANBusInterface::getLogger(this))
    {
      AppleBCMWLANBusInterface::getLogger(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANBusInterfacePCIe::createDestroyRequestTracker(this);
      }
    }

    v8 = 2183;
  }

  AppleBCMWLANBusInterface::reportInitFailure(this, a2, 1uLL, v8);
  return 0;
}

uint64_t AppleBCMWLANBusInterfacePCIe::createReporters(IOService *this, unsigned int a2)
{
  *&v3 = 0xAAAAAAAAAAAAAAAALL;
  *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v44[2] = v3;
  v44[3] = v3;
  v44[0] = v3;
  v44[1] = v3;
  v42 = v3;
  v43 = v3;
  *__str = v3;
  *&__str[16] = v3;
  v45.val[0] = vuzp1q_s32(this[1].OSObject::OSObjectInterface::__vftable[102], this[1].OSObject::OSObjectInterface::__vftable[103]);
  v45.val[1] = 0uLL;
  v45.val[2] = xmmword_1003B0610;
  v45.val[3].i64[0] = 0x100000001;
  v45.val[3].i64[1] = 0x100000001;
  v4 = v44;
  vst4q_f32(v4, v45);
  this[1].OSObject::OSObjectInterface::__vftable[197].init = OSSet::withCapacity(0xA, a2);
  if (!this[1].OSObject::OSObjectInterface::__vftable[197].init)
  {
    goto LABEL_24;
  }

  this[1].OSObject::OSObjectInterface::__vftable[199].init = IOHistogramReporter::with();
  v5 = this[1].OSObject::OSObjectInterface::__vftable;
  init = v5[199].init;
  if (!init)
  {
    goto LABEL_24;
  }

  v7 = OSSet::setObject(v5[197].init, init);
  (*(*this[1].OSObject::OSObjectInterface::__vftable[199].init + 16))(this[1].OSObject::OSObjectInterface::__vftable[199].init);
  if (!v7)
  {
    goto LABEL_24;
  }

  this[1].OSObject::OSObjectInterface::__vftable[198].free = IOStateReporter::with(this, 2, 0xEu, 0, v8);
  v9 = this[1].OSObject::OSObjectInterface::__vftable;
  free = v9[198].free;
  if (!free)
  {
    goto LABEL_24;
  }

  v11 = OSSet::setObject(v9[197].init, free);
  (*(*this[1].OSObject::OSObjectInterface::__vftable[198].free + 16))(this[1].OSObject::OSObjectInterface::__vftable[198].free);
  if (!v11)
  {
    goto LABEL_24;
  }

  this[1].OSObject::OSObjectInterface::__vftable[197].free = IOSimpleReporter::with(this, 0x8000, 0, v12);
  v13 = this[1].OSObject::OSObjectInterface::__vftable;
  v14 = v13[197].free;
  if (!v14)
  {
    goto LABEL_24;
  }

  v15 = OSSet::setObject(v13[197].init, v14);
  (*(*this[1].OSObject::OSObjectInterface::__vftable[197].free + 16))(this[1].OSObject::OSObjectInterface::__vftable[197].free);
  if (!v15)
  {
    goto LABEL_24;
  }

  this[1].OSObject::OSObjectInterface::__vftable[199].free = IOStateReporter::with(this, 0x8010, 8u, 0, v16);
  v17 = this[1].OSObject::OSObjectInterface::__vftable;
  v18 = v17[199].free;
  if (!v18)
  {
    goto LABEL_24;
  }

  v19 = OSSet::setObject(v17[197].init, v18);
  (*(*this[1].OSObject::OSObjectInterface::__vftable[199].free + 16))(this[1].OSObject::OSObjectInterface::__vftable[199].free);
  if (v19 && (this[1].OSObject::OSObjectInterface::__vftable[200].init = IOSimpleReporter::with(this, 0x8000, 0, v20), v21 = this[1].OSObject::OSObjectInterface::__vftable, (v22 = v21[200].init) != 0) && (v23 = OSSet::setObject(v21[197].init, v22), (*(*this[1].OSObject::OSObjectInterface::__vftable[200].init + 16))(this[1].OSObject::OSObjectInterface::__vftable[200].init), v23))
  {
    strcpy(__str, "Rx Buffer Submit Fill Level");
    IOReporter::addChannel(this[1].OSObject::OSObjectInterface::__vftable[199].free, 0x5278427546696CuLL, __str);
    v24 = 0;
    v25 = &kFillLevelStates;
    do
    {
      v26 = *v25;
      v25 += 2;
      IOStateReporter::setStateID(this[1].OSObject::OSObjectInterface::__vftable[199].free, 0x5278427546696CuLL, v24++, v26);
    }

    while (v24 != 8);
    strcpy(__str, "Power States");
    IOReporter::addChannel(this[1].OSObject::OSObjectInterface::__vftable[198].free, 0x507772537465uLL, __str);
    for (i = 0; i != 14; ++i)
    {
      IOStateReporter::setStateID(this[1].OSObject::OSObjectInterface::__vftable[198].free, 0x507772537465uLL, i, gPowerStateIDs[i]);
    }

    IOStateReporter::setChannelState(this[1].OSObject::OSObjectInterface::__vftable[198].free, 0x507772537465uLL, gPowerStateIDs[SLODWORD(this[1].OSObject::OSObjectInterface::__vftable[76].free)]);
    v28 = 0;
    v29 = 0x45763030507274;
    do
    {
      snprintf(__str, 0x40uLL, "%s", eventChannels[v28]);
      IOReporter::addChannel(this[1].OSObject::OSObjectInterface::__vftable[197].free, v29, __str);
      ++v28;
      v29 += 0x1000000;
    }

    while (v28 != 9);
    v30 = 0;
    v31 = &off_1003D1228;
    do
    {
      v32 = 7;
      v33 = v31;
      do
      {
        IOReporter::addChannel(this[1].OSObject::OSObjectInterface::__vftable[200].init, *(v33 - 15), *(v33 - 14));
        IOReporter::addChannel(this[1].OSObject::OSObjectInterface::__vftable[200].init, *(v33 - 1), *v33);
        v33 += 2;
        --v32;
      }

      while (v32);
      ++v30;
      v31 += 28;
    }

    while (v30 != 4);
    IOReportLegend::addReporterLegend(this, this[1].OSObject::OSObjectInterface::__vftable[198].free, "AppleBCMWLANBusInterfacePCIe", "Power States", v34);
    IOReportLegend::addReporterLegend(this, this[1].OSObject::OSObjectInterface::__vftable[199].init, "AppleBCMWLANBusInterfacePCIe", "DS Exit Delay", v35);
    IOReportLegend::addReporterLegend(this, this[1].OSObject::OSObjectInterface::__vftable[197].free, "AppleBCMWLANBusInterfacePCIe", "Bus Events", v36);
    IOReportLegend::addReporterLegend(this, this[1].OSObject::OSObjectInterface::__vftable[199].free, "AppleBCMWLANBusInterfacePCIe", "Queue Fill", v37);
    IOReportLegend::addReporterLegend(this, this[1].OSObject::OSObjectInterface::__vftable[200].init, "AppleBCMWLANBusInterfacePCIe", "Tx Complete Status", v38);
    IOReportLegend::addReporterLegend(this, this[1].OSObject::OSObjectInterface::__vftable[198].init, "Backplane Accesses", "Accesses", v39);
    return 1;
  }

  else
  {
LABEL_24:
    AppleBCMWLANBusInterfacePCIe::destroyReporters(this);
    return 0;
  }
}

uint64_t AppleBCMWLANBusInterfacePCIe::initPCIeDatapathStreams(AppleBCMWLANBusInterfacePCIe *this)
{
  v9 = 0;
  AppleBCMWLANBusInterface::getLogPipesAndStreams(this, 0, &v9, 0, 0, 0);
  if (!v9)
  {
    return 0;
  }

  v2 = IOMallocZeroTyped();
  if (!v2)
  {
    result = AppleBCMWLANBusInterface::getLogger(this);
    if (!result)
    {
      return result;
    }

    AppleBCMWLANBusInterface::getLogger(this);
    result = CCLogStream::shouldLog();
    if (!result)
    {
      return result;
    }

    AppleBCMWLANBusInterfacePCIe::initPCIeDatapathStreams(this);
    return 0;
  }

  v3 = v2;
  *v2 = 0;
  *(v2 + 8) = -1;
  *(v2 + 24) = 0;
  *(v2 + 32) = 0;
  *(v2 + 88) = 0;
  *(v2 + 48) = this;
  *(v2 + 56) = 0;
  *(v2 + 336) = 150;
  if (AppleBCMWLAN_isVerboseDebugLoggingAllowed())
  {
    *(v3 + 8) = 127;
    *(v3 + 24) = 7;
  }

  bytes = 0xA5A5000000000008;
  *(v3 + 328) = OSData::withBytes(&bytes, 8uLL);
  v4 = CCStream::withPipeAndName();
  *(*(this + 9) + 4592) = OSMetaClassBase::safeMetaCast(v4, gCCLogStreamMetaClass);
  (*(**(v3 + 328) + 16))(*(v3 + 328));
  if (AppleBCMWLAN_isVerboseDebugLoggingAllowed())
  {
    *(v3 + 8) = 127;
    *(v3 + 24) = 3;
  }

  bytes = 0xA5A500000000000DLL;
  *(v3 + 328) = OSData::withBytes(&bytes, 8uLL);
  v5 = CCStream::withPipeAndName();
  *(*(this + 9) + 4600) = OSMetaClassBase::safeMetaCast(v5, gCCLogStreamMetaClass);
  (*(**(v3 + 328) + 16))(*(v3 + 328));
  if (AppleBCMWLAN_isVerboseDebugLoggingAllowed())
  {
    *(v3 + 8) = 127;
    *(v3 + 24) = 8195;
  }

  bytes = 0xA5A5000000000007;
  *(v3 + 328) = OSData::withBytes(&bytes, 8uLL);
  v6 = CCStream::withPipeAndName();
  *(*(this + 9) + 4608) = OSMetaClassBase::safeMetaCast(v6, gCCLogStreamMetaClass);
  (*(**(v3 + 328) + 16))(*(v3 + 328));
  IOFree(v3, 0x358uLL);
  return 1;
}

uint64_t AppleBCMWLANBusInterfacePCIe::allocateIPCTimers(OSObject *this, IOService *a2)
{
  v4 = (this->OSMetaClassBase::__vftable[1].isEqualTo)(this);
  *(this[1].ivars + 455) = AppleBCMWLANPCIeDoorbell::withCallbacks(this, AppleBCMWLANBusInterfacePCIe::commitRings, v4);
  if (*(this[1].ivars + 455))
  {
    *(this[1].ivars + 405) = AppleBCMWLANCallbackEventSource::withCallbacks(this, AppleBCMWLANBusInterfacePCIe::reportCompleted, v5);
    ivars = this[1].ivars;
    if (*(ivars + 405))
    {
      (*(**(ivars + 433) + 64))(*(ivars + 433));
      (*(**(this[1].ivars + 405) + 64))(*(this[1].ivars + 405));
      (this->OSMetaClassBase::__vftable[1].isEqualTo)(this);
      *(this[1].ivars + 449) = IO80211TimerSource::allocWithParams();
      if (*(this[1].ivars + 449))
      {
        (this->OSMetaClassBase::__vftable[1].isEqualTo)(this);
        *(this[1].ivars + 450) = IO80211TimerSource::allocWithParams();
        if (*(this[1].ivars + 450))
        {
          (this->OSMetaClassBase::__vftable[1].isEqualTo)(this);
          *(this[1].ivars + 451) = IO80211TimerSource::allocWithParams();
          if (*(this[1].ivars + 451))
          {
            (this->OSMetaClassBase::__vftable[1].isEqualTo)(this);
            *(this[1].ivars + 138) = IO80211TimerSource::allocWithParams();
            if (*(this[1].ivars + 138))
            {
              (this->OSMetaClassBase::__vftable[1].isEqualTo)(this);
              *(this[1].ivars + 480) = IO80211TimerSource::allocWithParams();
              if (*(this[1].ivars + 480))
              {
                (this->OSMetaClassBase::__vftable[1].isEqualTo)(this);
                *(this[1].ivars + 481) = IO80211TimerSource::allocWithParams();
                if (*(this[1].ivars + 481))
                {
                  return 0;
                }

                if (AppleBCMWLANBusInterface::getLogger(this))
                {
                  AppleBCMWLANBusInterface::getLogger(this);
                  if (CCLogStream::shouldLog())
                  {
                    AppleBCMWLANBusInterfacePCIe::allocateIPCTimers(this);
                  }
                }

                v8 = 2325;
              }

              else
              {
                if (AppleBCMWLANBusInterface::getLogger(this))
                {
                  AppleBCMWLANBusInterface::getLogger(this);
                  if (CCLogStream::shouldLog())
                  {
                    AppleBCMWLANBusInterfacePCIe::allocateIPCTimers(this);
                  }
                }

                v8 = 2316;
              }
            }

            else
            {
              if (AppleBCMWLANBusInterface::getLogger(this))
              {
                AppleBCMWLANBusInterface::getLogger(this);
                if (CCLogStream::shouldLog())
                {
                  AppleBCMWLANBusInterfacePCIe::allocateIPCTimers(this);
                }
              }

              v8 = 2308;
            }
          }

          else
          {
            if (AppleBCMWLANBusInterface::getLogger(this))
            {
              AppleBCMWLANBusInterface::getLogger(this);
              if (CCLogStream::shouldLog())
              {
                AppleBCMWLANBusInterfacePCIe::allocateIPCTimers(this);
              }
            }

            v8 = 2300;
          }
        }

        else
        {
          if (AppleBCMWLANBusInterface::getLogger(this))
          {
            AppleBCMWLANBusInterface::getLogger(this);
            if (CCLogStream::shouldLog())
            {
              AppleBCMWLANBusInterfacePCIe::allocateIPCTimers(this);
            }
          }

          v8 = 2292;
        }
      }

      else
      {
        if (AppleBCMWLANBusInterface::getLogger(this))
        {
          AppleBCMWLANBusInterface::getLogger(this);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANBusInterfacePCIe::allocateIPCTimers(this);
          }
        }

        v8 = 2284;
      }
    }

    else
    {
      if (AppleBCMWLANBusInterface::getLogger(this))
      {
        AppleBCMWLANBusInterface::getLogger(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANBusInterfacePCIe::allocateIPCTimers(this);
        }
      }

      v8 = 2272;
    }
  }

  else
  {
    if (AppleBCMWLANBusInterface::getLogger(this))
    {
      AppleBCMWLANBusInterface::getLogger(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANBusInterfacePCIe::allocateIPCTimers(this);
      }
    }

    v8 = 2264;
  }

  AppleBCMWLANBusInterface::reportInitFailure(this, a2, 1uLL, v8);
  return 3758097086;
}

uint64_t AppleBCMWLANBusInterfacePCIe::commitRings(AppleBCMWLANBusInterfacePCIe *this)
{
  v2 = this + 72;
  v1 = *(this + 9);
  if (*(v1 + 1304) & 1) != 0 || !*(v1 + 3248) || (*(v1 + 3725))
  {
    return 0;
  }

  if (*(v1 + 3706) == 1)
  {
    v3 = 3758097112;
    if (AppleBCMWLANBusInterface::getLogger(this))
    {
      AppleBCMWLANBusInterface::getLogger(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANBusInterfacePCIe::commitRings(this);
      }
    }

    return v3;
  }

  AppleBCMWLANBusInterfacePCIe::updateRxBufFillState(this);
  v6 = *(this + 9);
  v7 = v6[711] != 2 || (v6[306] - 9) < 0xFFFFFFFE;
  v8 = v6[1124];
  if (v8)
  {
    goto LABEL_46;
  }

  v9 = v6[933];
  v10 = AppleBCMWLANBusInterfacePCIe::retainCTS(this, 17079, 2);
  v11 = *(this + 9);
  if (*(v11 + 3706) == 1)
  {
    if (AppleBCMWLANBusInterface::getLogger(this))
    {
      AppleBCMWLANBusInterface::getLogger(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANBusInterfacePCIe::commitRings(this);
      }
    }

    v12 = this;
    v13 = 17085;
LABEL_26:
    AppleBCMWLANBusInterfacePCIe::releaseCTS(v12, v13);
    return 0;
  }

  if ((*(v11 + 1304) & 1) != 0 || !*(v11 + 3248) || *(v11 + 3725) == 1)
  {
    if (AppleBCMWLANBusInterface::getLogger(this))
    {
      AppleBCMWLANBusInterface::getLogger(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANBusInterfacePCIe::commitRings(this, v2);
      }
    }

    v12 = this;
    v13 = 17091;
    goto LABEL_26;
  }

  v14 = v10;
  if (!v10)
  {
LABEL_46:
    OSSynchronizeIO();
    if (v7)
    {
      AppleBCMWLANBusInterfacePCIe::hitDoorbell(this, v18);
      v3 = 0;
      if (v8)
      {
        return v3;
      }
    }

    else
    {
      v3 = 3758097112;
      if (v8)
      {
        return v3;
      }
    }

    AppleBCMWLANBusInterfacePCIe::releaseCTS(this, 17138);
    return v3;
  }

  if (AppleBCMWLANBusInterface::getLogger(this))
  {
    AppleBCMWLANBusInterface::getLogger(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANBusInterfacePCIe::commitRings();
    }
  }

  if (v14 == -469794030)
  {
    FaultReporter = AppleBCMWLANBusInterface::getFaultReporter(this);
    CCFaultReporter::reportFault(FaultReporter, 6u, "/Library/Caches/com.apple.xbs/Sources/AppleBCMWLANV3_driverkit/Busses/PCIe/AppleBCMWLANBusInterfacePCIe.cpp", 0x42DFu, "commitRings", 0, -469794030, 0);
  }

  else if (v14 == -536870186)
  {
    v15 = *v2;
    if (*(*v2 + 3785) == 1)
    {
      v16 = AppleBCMWLANBusInterface::getFaultReporter(this);
      CCFaultReporter::reportFault(v16, 6u, "/Library/Caches/com.apple.xbs/Sources/AppleBCMWLANV3_driverkit/Busses/PCIe/AppleBCMWLANBusInterfacePCIe.cpp", 0x42CFu, "commitRings", 0, -469794019, 0);
      v15 = *(this + 9);
    }

    if (*(v15 + 3312) == 4399 && (*(v15 + 3714) & 1) == 0)
    {
      if (AppleBCMWLANBusInterface::getLogger(this))
      {
        AppleBCMWLANBusInterface::getLogger(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANBusInterfacePCIe::commitRings(this);
        }
      }

      *(*v2 + 3706) = 1;
      *(*v2 + 4581) = 1;
    }

    v17 = AppleBCMWLANBusInterface::getFaultReporter(this);
    CCFaultReporter::reportFault(v17, 5u, "/Library/Caches/com.apple.xbs/Sources/AppleBCMWLANV3_driverkit/Busses/PCIe/AppleBCMWLANBusInterfacePCIe.cpp", 0x42D8u, "commitRings", 0, -469794019, 0);
    if (!*(*(this + 9) + 3732))
    {
      if (AppleBCMWLANBusInterface::getLogger(this))
      {
        AppleBCMWLANBusInterface::getLogger(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANBusInterfacePCIe::commitRings(this);
        }
      }

      *(*v2 + 3732) = 1000;
    }
  }

  v3 = 3758097112;
  AppleBCMWLANBusInterfacePCIe::releaseCTS(this, 17122);
  if (AppleBCMWLANBusInterface::getLogger(this))
  {
    AppleBCMWLANBusInterface::getLogger(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANBusInterfacePCIe::commitRings(this);
    }
  }

  return v3;
}

uint64_t AppleBCMWLANBusInterfacePCIe::reportCompleted(AppleBCMWLANBusInterfacePCIe *this, OSObject *a2, IO80211WorkSource *a3)
{
  *(*(this + 9) + 4800) = *(*(this + 9) + 4792);
  mach_continuous_time();
  v4 = *(this + 9);
  absolutetime_to_nanoseconds();
  v5 = *(*(this + 9) + 4800);
  AppleBCMWLANBusInterface::getTxCompletionDescriptorCommandQueueSize(this);
  AppleBCMWLANBusInterface::getRxDescriptorCommandQueueSize(this);
  AppleBCMWLANBusInterface::getRxDescriptorEventQueueSize(this);
  kdebug_trace();
  if (AppleBCMWLANBusInterface::getTxCompletionDescriptorCommandQueueSize(this))
  {
    memset(v10, 170, sizeof(v10));
    AppleBCMWLANBusInterface::getTxCompletionDescriptor(this, v10);
    AppleBCMWLANBusInterface::reportCompletedTxIOs(this);
  }

  if (AppleBCMWLANBusInterface::getRxDescriptorCommandQueueSize(this) || AppleBCMWLANBusInterface::getRxDescriptorEventQueueSize(this))
  {
    *v10 = AppleBCMWLANBusInterface::getRxDescriptor(this);
    *&v10[8] = v6;
    AppleBCMWLANBusInterface::enqueueRxIOs(this);
  }

  v7 = *(*(this + 9) + 4800);
  kdebug_trace();
  mach_continuous_time();
  v8 = *(this + 9);
  absolutetime_to_nanoseconds();
  return 0;
}

uint64_t AppleBCMWLANBusInterfacePCIe::deleteFlowTimeout(AppleBCMWLANBusInterfacePCIe *this)
{
  if (AppleBCMWLANBusInterface::getLogger(this))
  {
    AppleBCMWLANBusInterface::getLogger(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANBusInterfacePCIe::deleteFlowTimeout(this);
    }
  }

  v2 = *(this + 9) + 8 * *(*(this + 9) + 3008);
  if (*(v2 + 736) || !(*(*this + 600))(this, v2 + 736))
  {
    FaultReporter = AppleBCMWLANBusInterface::getFaultReporter(this);
    result = CCFaultReporter::reportFault(FaultReporter, 5u, "/Library/Caches/com.apple.xbs/Sources/AppleBCMWLANV3_driverkit/Busses/PCIe/AppleBCMWLANBusInterfacePCIe.cpp", 0x2505u, "deleteFlowTimeout", 0, -469794017, "LastRingDelete=%d", *(*(this + 9) + 3008));
    *(*(this + 9) + 8 * *(*(this + 9) + 3008) + 736) = 0;
  }

  else
  {
    if (AppleBCMWLANBusInterface::getLogger(this))
    {
      AppleBCMWLANBusInterface::getLogger(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANBusInterfacePCIe::deleteFlowTimeout(this, this + 72);
      }
    }

    v3 = *(**(*(this + 9) + 3592) + 56);

    return v3();
  }

  return result;
}

uint64_t AppleBCMWLANBusInterfacePCIe::attachBusTimeout(AppleBCMWLANBusInterface *a1)
{
  if (AppleBCMWLANBusInterface::getLogger(a1))
  {
    AppleBCMWLANBusInterface::getLogger(a1);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANBusInterfacePCIe::attachBusTimeout(a1);
    }
  }

  if (AppleBCMWLANBusInterface::getFaultReporter(a1))
  {
    FaultReporter = AppleBCMWLANBusInterface::getFaultReporter(a1);

    return CCFaultReporter::reportFault(FaultReporter, 5u, "/Library/Caches/com.apple.xbs/Sources/AppleBCMWLANV3_driverkit/Busses/PCIe/AppleBCMWLANBusInterfacePCIe.cpp", 0x10A6u, "attachBusTimeout", 0, -469794016, 0);
  }

  else
  {
    result = AppleBCMWLANBusInterface::getLogger(a1);
    if (result)
    {
      AppleBCMWLANBusInterface::getLogger(a1);
      result = CCLogStream::shouldLog();
      if (result)
      {
        return AppleBCMWLANBusInterfacePCIe::attachBusTimeout(a1);
      }
    }
  }

  return result;
}

{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logAlert(Logger, "[dk] %s@%d:Timed out waiting for bus to attach\n", "attachBusTimeout", 4258);
}

{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logAlert(Logger, "[dk] %s@%d:getFaultReporter() is null!\n", "attachBusTimeout", 4264);
}

uint64_t AppleBCMWLANBusInterfacePCIe::d0AckTimeout(AppleBCMWLANBusInterface *a1)
{
  if (AppleBCMWLANBusInterface::getLogger(a1))
  {
    AppleBCMWLANBusInterface::getLogger(a1);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANBusInterfacePCIe::d0AckTimeout(a1);
    }
  }

  v7 = 0xAAAAAAAAAAAAAAAALL;
  v8 = 0xAAAAAAAAAAAAAAAALL;
  IOInterruptDispatchSource::GetLastInterrupt(*(*(a1 + 9) + 3264), &v8, &v7, 0);
  v2 = *(a1 + 9);
  if (*(v2 + 4768) >= v7 || (*(v2 + 3624) & 1) != 0)
  {
    if (*(v2 + 3721))
    {
      v3 = 5;
    }

    else
    {
      v3 = 1;
    }

    FaultReporter = AppleBCMWLANBusInterface::getFaultReporter(a1);
    if (AppleOLYHALPlatformFunction::getLowPowerDetectedDK(*(*(a1 + 9) + 5184), 0))
    {
      v5 = -469794008;
    }

    else
    {
      v5 = -469794013;
    }

    return CCFaultReporter::reportFault(FaultReporter, v3, "/Library/Caches/com.apple.xbs/Sources/AppleBCMWLANV3_driverkit/Busses/PCIe/AppleBCMWLANBusInterfacePCIe.cpp", 0x10C8u, "d0AckTimeout", 0, v5, 0);
  }

  else
  {
    if (AppleBCMWLANBusInterface::getLogger(a1))
    {
      AppleBCMWLANBusInterface::getLogger(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANBusInterfacePCIe::d0AckTimeout(a1);
      }
    }

    *(*(a1 + 9) + 3624) = 1;
    return (*(**(*(a1 + 9) + 3608) + 56))(*(*(a1 + 9) + 3608), 1000);
  }
}

{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logAlert(Logger, "[dk] %s@%d:Timed out waiting for D0 ack\n", "d0AckTimeout", 4271);
}

{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logAlert(Logger, "[dk] %s@%d:Waiting again for D0 ack due to pending (primary) interrupt\n", "d0AckTimeout", 4285);
}

uint64_t AppleBCMWLANBusInterfacePCIe::createFlowRingTimeout(AppleBCMWLANBusInterfacePCIe *this)
{
  if (AppleBCMWLANBusInterface::getLogger(this))
  {
    AppleBCMWLANBusInterface::getLogger(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANBusInterfacePCIe::createFlowRingTimeout(this);
    }
  }

  v3 = this + 72;
  v2 = *(this + 9);
  v4 = *(v2 + 3012);
  v5 = v2 + 8 * v4;
  if (!*(v5 + 384))
  {
    if ((*(*this + 600))(this, v5 + 384))
    {
      if (AppleBCMWLANBusInterface::getLogger(this))
      {
        AppleBCMWLANBusInterface::getLogger(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANBusInterfacePCIe::createFlowRingTimeout(this, this + 72);
        }
      }

      v6 = *(**(*v3 + 1104) + 56);

      return v6();
    }

    v2 = *v3;
    v4 = *(*v3 + 3012);
  }

  *(v2 + 8 * v4 + 384) = 0;
  FaultReporter = AppleBCMWLANBusInterface::getFaultReporter(this);
  result = CCFaultReporter::reportFault(FaultReporter, 5u, "/Library/Caches/com.apple.xbs/Sources/AppleBCMWLANV3_driverkit/Busses/PCIe/AppleBCMWLANBusInterfacePCIe.cpp", 0x3050u, "createFlowRingTimeout", 0, -469794007, 0);
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
        Logger = AppleBCMWLANBusInterface::getLogger(this);
        return CCLogStream::logCrit(Logger, "[dk] %s@%d:Failed to report fault with 0x%x\n", "createFlowRingTimeout", 12370, v9);
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANBusInterfacePCIe::createDebugRingTimeout(AppleBCMWLANBusInterface *a1)
{
  if (AppleBCMWLANBusInterface::getLogger(a1))
  {
    AppleBCMWLANBusInterface::getLogger(a1);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANBusInterfacePCIe::createDebugRingTimeout(a1);
    }
  }

  FaultReporter = AppleBCMWLANBusInterface::getFaultReporter(a1);
  result = CCFaultReporter::reportFault(FaultReporter, 4u, "/Library/Caches/com.apple.xbs/Sources/AppleBCMWLANV3_driverkit/Busses/PCIe/AppleBCMWLANBusInterfacePCIe.cpp", 0x503Cu, "createDebugRingTimeout", 0, -469794022, 0);
  if (result)
  {
    v4 = result;
    result = AppleBCMWLANBusInterface::getLogger(a1);
    if (result)
    {
      AppleBCMWLANBusInterface::getLogger(a1);
      result = CCLogStream::shouldLog();
      if (result)
      {
        Logger = AppleBCMWLANBusInterface::getLogger(a1);
        return CCLogStream::logCrit(Logger, "[dk] %s@%d:Failed to report fault with 0x%x\n", "createDebugRingTimeout", 20542, v4);
      }
    }
  }

  return result;
}

{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logAlert(Logger, "[dk] %s@%d:Timed out waiting for debug ring create\n", "createDebugRingTimeout", 20538);
}

uint64_t AppleBCMWLANBusInterfacePCIe::handleAdjustBusy(IOService *this)
{
  v2 = 1;
  atomic_compare_exchange_strong(&this[1].OSObject::OSObjectInterface::__vftable[241], &v2, 0);
  if (v2 == 1)
  {
    IOService::AdjustBusy(this, -1, 0);
    v8 = 0;
    IOService::GetBusyState(this, &v8, 0);
    if (AppleBCMWLANBusInterface::getLogger(this))
    {
      AppleBCMWLANBusInterface::getLogger(this);
      if (CCLogStream::shouldLog())
      {
        Logger = AppleBCMWLANBusInterface::getLogger(this);
        CCLogStream::logAlert(Logger, "[dk] %s@%d:AdjustBusy(-1) timeout in %u ms! busystate %u, fAdjustBusyCnt %u\n", "handleAdjustBusy", 22456, 30000, v8, LODWORD(this[1].OSObject::OSObjectInterface::__vftable[241].init));
      }
    }

    init_low = LODWORD(this[1].OSObject::OSObjectInterface::__vftable[241].init);
  }

  else
  {
    v8 = 0;
    IOService::GetBusyState(this, &v8, 0);
    if (AppleBCMWLANBusInterface::getLogger(this))
    {
      AppleBCMWLANBusInterface::getLogger(this);
      if (CCLogStream::shouldLog())
      {
        v5 = AppleBCMWLANBusInterface::getLogger(this);
        CCLogStream::logAlert(v5, "[dk] %s@%d:AdjustBusy timeout in %u ms! busystate %u, Not adjusting: fAdjustBusyCnt %u\n", "handleAdjustBusy", 22463, 30000, v8, LODWORD(this[1].OSObject::OSObjectInterface::__vftable[241].init));
      }
    }

    v7 = LODWORD(this[1].OSObject::OSObjectInterface::__vftable[241].init);
  }

  return io80211_os_log();
}

uint64_t AppleBCMWLANBusInterfacePCIe::allocateIPCDescriptorQueues(AppleBCMWLANBusInterfacePCIe *this, IOService *a2)
{
  v4 = AppleBCMWLANCommandQueue::withCapacity(0x80);
  AppleBCMWLANBusInterface::setTxDescriptorCommandQueue(this, v4);
  AppleBCMWLANBusInterface::getTxDescriptor(this, &v13);
  if (v13.n128_u64[1])
  {
    v5 = AppleBCMWLANCommandQueue::withCapacity(0x80);
    AppleBCMWLANBusInterface::setTxCompletionDescriptorCommandQueue(this, v5);
    AppleBCMWLANBusInterface::getTxCompletionDescriptor(this, &v13);
    if (v13.n128_u64[1])
    {
      AppleBCMWLANBusInterface::setTxDescriptorPacketactiveDataACs(this, 0xFFFF);
      v6 = AppleBCMWLANCommandQueue::withCapacity(0x80);
      AppleBCMWLANBusInterface::setTxCommittedCommandDescriptorQueue(this, v6);
      AppleBCMWLANBusInterface::getTxCommittedCommandDescriptor(this);
      if (v7)
      {
        v8 = AppleBCMWLANObjectQueue::withCapacity(0x200);
        AppleBCMWLANBusInterface::setRxDescriptorEventQueue(this, v8);
        if (AppleBCMWLANBusInterface::getRxDescriptor(this))
        {
          v9 = AppleBCMWLANObjectQueue::withCapacity(0x200);
          AppleBCMWLANBusInterface::setRxDescriptorCommandQueue(this, v9);
          AppleBCMWLANBusInterface::getRxDescriptor(this);
          if (v10)
          {
            return 0;
          }

          if (AppleBCMWLANBusInterface::getLogger(this))
          {
            AppleBCMWLANBusInterface::getLogger(this);
            if (CCLogStream::shouldLog())
            {
              AppleBCMWLANBusInterfacePCIe::allocateIPCDescriptorQueues(this);
            }
          }

          v12 = 2364;
        }

        else
        {
          if (AppleBCMWLANBusInterface::getLogger(this))
          {
            AppleBCMWLANBusInterface::getLogger(this);
            if (CCLogStream::shouldLog())
            {
              AppleBCMWLANBusInterfacePCIe::allocateIPCDescriptorQueues(this);
            }
          }

          v12 = 2357;
        }
      }

      else
      {
        v12 = 2350;
      }
    }

    else
    {
      v12 = 2343;
    }
  }

  else
  {
    v12 = 2337;
  }

  AppleBCMWLANBusInterface::reportInitFailure(this, a2, 1uLL, v12);
  return 3758097086;
}

uint64_t AppleBCMWLANBusInterfacePCIe::allocateIPCPools(AppleBCMWLANBusInterfacePCIe *this, IOService *a2)
{
  v3 = (*(**(*(this + 9) + 3464) + 168))(*(*(this + 9) + 3464), a2);
  *(*(this + 9) + 3512) = IOCommandPool::withQueue(v3, v4);
  v5 = *(this + 9);
  if (*(v5 + 3512))
  {
    v6 = (*(**(v5 + 3464) + 168))(*(v5 + 3464));
    *(*(this + 9) + 3520) = IOCommandPool::withQueue(v6, v7);
    v8 = *(this + 9);
    if (*(v8 + 3520))
    {
      v9 = (*(**(v8 + 3464) + 168))(*(v8 + 3464));
      *(*(this + 9) + 3528) = IOCommandPool::withQueue(v9, v10);
      v11 = *(this + 9);
      if (*(v11 + 3528))
      {
        v12 = (*(**(v11 + 3464) + 168))(*(v11 + 3464));
        *(*(this + 9) + 3536) = IOCommandPool::withQueue(v12, v13);
        v14 = *(this + 9);
        if (*(v14 + 3536))
        {
          v15 = (*(**(v14 + 3464) + 168))(*(v14 + 3464));
          *(*(this + 9) + 3544) = IOCommandPool::withQueue(v15, v16);
          if (*(*(this + 9) + 3544))
          {
            AppleBCMWLANBusInterface::getIO80211FaultReporter(this);
            *(*(this + 9) + 1328) = IO80211BufferPool::withOptions();
            if (*(*(this + 9) + 1328))
            {
              AppleBCMWLANBusInterface::getIO80211FaultReporter(this);
              *(*(this + 9) + 1336) = IO80211BufferPool::withOptions();
              if (*(*(this + 9) + 1336))
              {
                return 0;
              }

              else
              {
                v17 = 3758097086;
                if (AppleBCMWLANBusInterface::getLogger(this))
                {
                  AppleBCMWLANBusInterface::getLogger(this);
                  if (CCLogStream::shouldLog())
                  {
                    AppleBCMWLANBusInterfacePCIe::allocateIPCPools(this);
                  }
                }
              }
            }

            else
            {
              v17 = 3758097086;
              if (AppleBCMWLANBusInterface::getLogger(this))
              {
                AppleBCMWLANBusInterface::getLogger(this);
                if (CCLogStream::shouldLog())
                {
                  AppleBCMWLANBusInterfacePCIe::allocateIPCPools(this);
                }
              }
            }
          }

          else
          {
            v17 = 3758097086;
            if (AppleBCMWLANBusInterface::getLogger(this))
            {
              AppleBCMWLANBusInterface::getLogger(this);
              if (CCLogStream::shouldLog())
              {
                AppleBCMWLANBusInterfacePCIe::allocateIPCPools(this);
              }
            }
          }
        }

        else
        {
          v17 = 3758097086;
          if (AppleBCMWLANBusInterface::getLogger(this))
          {
            AppleBCMWLANBusInterface::getLogger(this);
            if (CCLogStream::shouldLog())
            {
              AppleBCMWLANBusInterfacePCIe::allocateIPCPools(this);
            }
          }
        }
      }

      else
      {
        v17 = 3758097086;
        if (AppleBCMWLANBusInterface::getLogger(this))
        {
          AppleBCMWLANBusInterface::getLogger(this);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANBusInterfacePCIe::allocateIPCPools(this);
          }
        }
      }
    }

    else
    {
      v17 = 3758097086;
      if (AppleBCMWLANBusInterface::getLogger(this))
      {
        AppleBCMWLANBusInterface::getLogger(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANBusInterfacePCIe::allocateIPCPools(this);
        }
      }
    }
  }

  else
  {
    v17 = 3758097086;
    if (AppleBCMWLANBusInterface::getLogger(this))
    {
      AppleBCMWLANBusInterface::getLogger(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANBusInterfacePCIe::allocateIPCPools(this);
      }
    }
  }

  return v17;
}

uint64_t AppleBCMWLANBusInterfacePCIe::setupBootMSI(AppleBCMWLANBusInterfacePCIe *this)
{
  if (*(*(this + 9) + 3480))
  {
    return 0;
  }

  if (IO80211WorkQueue::Create())
  {
    v1 = 3758097086;
    if (AppleBCMWLANBusInterface::getLogger(this))
    {
      AppleBCMWLANBusInterface::getLogger(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANBusInterfacePCIe::setupBootMSI(this);
      }
    }
  }

  else
  {
    v4 = *(*(this + 9) + 3480);
    *(*(this + 9) + 3488) = IO80211CommandGate::allocWithParams();
    if (*(*(this + 9) + 3488))
    {
      return 0;
    }

    if (AppleBCMWLANBusInterface::getLogger(this))
    {
      AppleBCMWLANBusInterface::getLogger(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANBusInterfacePCIe::setupBootMSI(this);
      }
    }

    v1 = 3758097086;
    v5 = *(*(this + 9) + 3480);
    if (v5)
    {
      (*(*v5 + 16))(v5);
      *(*(this + 9) + 3480) = 0;
    }
  }

  return v1;
}

uint64_t AppleBCMWLANBusInterfacePCIe::deferredStart(AppleBCMWLANBusInterfacePCIe *this)
{
  Provider = IOService::GetProvider(this);
  v54 = 0;
  v52 = 0u;
  v53 = 0u;
  if (AppleBCMWLANBusInterface::getLogger(this))
  {
    AppleBCMWLANBusInterface::getLogger(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANBusInterfacePCIe::deferredStart(this);
    }
  }

  v3 = this + 72;
  v4 = 3758097084;
  started = 3758097084;
  if (*(*(this + 9) + 5202) == 1)
  {
    started = AppleBCMWLANBusInterfacePCIe::startOLYHAL(this);
    if (AppleBCMWLANBusInterface::getLogger(this))
    {
      AppleBCMWLANBusInterface::getLogger(this);
      if (CCLogStream::shouldLog())
      {
        Logger = AppleBCMWLANBusInterface::getLogger(this);
        CCLogStream::logInfo(Logger, "[dk] %s@%d:startOLYHAL finished with status 0x%x\n", "deferredStart", 2603, started);
      }
    }
  }

  if (!*(*v3 + 5184))
  {
    if (AppleBCMWLANBusInterface::getLogger(this))
    {
      AppleBCMWLANBusInterface::getLogger(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANBusInterfacePCIe::deferredStart(this);
      }
    }

    v31 = this;
    v32 = Provider;
    v33 = 9;
    v34 = 2609;
    goto LABEL_52;
  }

  v6 = *(*v3 + 5192);
  if (!v6)
  {
    if (AppleBCMWLANBusInterface::getLogger(this))
    {
      AppleBCMWLANBusInterface::getLogger(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANBusInterfacePCIe::deferredStart(this);
      }
    }

    v31 = this;
    v32 = Provider;
    v33 = 1;
    v34 = 2620;
LABEL_52:
    AppleBCMWLANBusInterface::reportInitFailure(v31, v32, v33, v34);
    IOService::Stop(this, Provider, 0);
    goto LABEL_98;
  }

  if (AppleOLYHALPortInterfacePCIe::isPortControlAMFMManagedDK(v6, 0))
  {
    *(*v3 + 3710) = 1;
    *(*v3 + 2848) = 0;
    *(*v3 + 4640) = 0;
  }

  v7 = *(*v3 + 5192);
  if (v7)
  {
    AppleOLYHALPortInterfacePCIe::enableDumpLogBTResetDK(v7, *(*v3 + 4422), 0);
    v7 = *(*v3 + 5192);
  }

  if (AppleOLYHALPortInterfacePCIe::isPortControlAMFMManagedDK(v7, 0))
  {
    setPropertyHelper(this, "IOPMResetPowerStateOnWake", kOSBooleanTrue);
    if (AppleBCMWLANBusInterface::getLogger(this))
    {
      AppleBCMWLANBusInterface::getLogger(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANBusInterfacePCIe::deferredStart(this);
      }
    }

    (*(*this + 80))(this);
    v8 = *(*this + 1112);
    *(*(this + 9) + 3632) = IO80211TimerSource::allocWithParams();
    if (!*(*(this + 9) + 3632))
    {
      if (AppleBCMWLANBusInterface::getLogger(this))
      {
        AppleBCMWLANBusInterface::getLogger(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANBusInterfacePCIe::deferredStart(this);
        }
      }
    }
  }

  if (*(*v3 + 2844) != 2)
  {
    *(*v3 + 1232) = 1;
    AppleOLYHALPortInterfacePCIe::setDeviceWakeDK(*(*v3 + 5192), 1, 0);
  }

  if (AppleBCMWLANBusInterface::getLogger(this))
  {
    v9 = AppleBCMWLANBusInterface::getLogger(this);
    if (CCLogStream::shouldLog(v9, 0x2000uLL))
    {
      if (!*(*v3 + 3144))
      {
        v10 = AppleBCMWLANBusInterface::getLogger(this);
        *(*(this + 9) + 3144) = AppleBCMWLANPCIeMMIOHistory::withLogger(v10, v11);
      }
    }
  }

  *(*v3 + 3128) = AppleBCMWLAN_isDevFusedOrCSRInternal();
  v12 = *v3;
  if ((*(*v3 + 3236) & 1) == 0)
  {
    LODWORD(v51[0]) = 10000;
    (*(**(v12 + 3472) + 56))(*(v12 + 3472), AppleBCMWLANBusInterfacePCIe::waitForBusAttachWithTimeoutGated, v51, 0, 0, 0);
  }

  CCLogs = AppleBCMWLANBusInterface::getCCLogs(this, v51);
  v14 = v51[4];
  v15 = (*(*this + 80))(this, CCLogs);
  v16 = (*(*v15 + 168))(v15);
  v18 = CCFaultReporter::withStreamDispatchQueue(this, v14, v16, v17);
  (*(*this + 384))(this, v18);
  *&v52 = AppleBCMWLANBusInterfacePCIe::prepareFRCallback;
  *(&v52 + 1) = AppleBCMWLANBusInterfacePCIe::collectImmediateFaultDataCallback;
  *&v53 = AppleBCMWLANBusInterfacePCIe::collectDeferredFaultDataCallback;
  *(&v53 + 1) = AppleBCMWLANBusInterfacePCIe::completeFaultReportCallback;
  v54 = 0;
  FaultReporter = AppleBCMWLANBusInterface::getFaultReporter(this);
  v21 = IO80211FaultReporter::allocWithParams(FaultReporter, v20);
  (*(*this + 392))(this, v21);
  AppleBCMWLANBusInterface::getFaultReporter(this);
  getClassNameHelper(this);
  CCFaultReporter::registerCallbacks();
  v22 = AppleBCMWLANBusInterface::getFaultReporter(this);
  CCPipeOwner = AppleBCMWLANBusInterface::getCCPipeOwner(this);
  CCFaultReporter::addOwner(v22, CCPipeOwner);
  v24 = AppleBCMWLANBusInterface::getFaultReporter(this);
  CCFaultReporter::addOwner(v24, "com.apple.iokit.IO80211Family");
  v25 = AppleBCMWLANBusInterface::getFaultReporter(this);
  CCFaultReporter::addOwner(v25, "com.apple.driver.AppleMultiFunctionManager");
  v26 = AppleBCMWLANBusInterface::getFaultReporter(this);
  CCFaultReporter::addOwner(v26, "com.apple.driver.AppleOLYHAL");
  *(*(this + 9) + 4184) = 0;
  *(*(this + 9) + 4192) = 0;
  if (*(*(this + 9) + 2868))
  {
    v28 = 1;
  }

  else
  {
    v28 = 3;
  }

  AppleBCMWLANBusInterfacePCIe::changeDeepSleepStateSetClear(this, v27, v28, 255);
  v50 = -1431655766;
  AppleBCMWLANChipConfigSpace::readReg32(*(*(this + 9) + 3352), 4u, &v50);
  if (AppleBCMWLANBusInterface::getLogger(this))
  {
    AppleBCMWLANBusInterface::getLogger(this);
    if (CCLogStream::shouldLog())
    {
      v48 = AppleBCMWLANBusInterface::getLogger(this);
      CCLogStream::logInfo(v48, "[dk] %s@%d:deferredStart: kIOPCIConfigurationOffsetCommand before: %#x \n", "deferredStart", 2859, v50);
    }
  }

  if ((v50 & 4) == 0)
  {
    if (AppleBCMWLANBusInterface::getLogger(this))
    {
      AppleBCMWLANBusInterface::getLogger(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANBusInterfacePCIe::deferredStart(this);
      }
    }

    AppleBCMWLANChipConfigSpace::writeReg32(*(*v3 + 3352), 4u, v50 | 4);
    *(*v3 + 1307) = 1;
  }

  *(*v3 + 3880) = 1;
  *(*v3 + 3881) = 0;
  v29 = *v3;
  v30 = *(*v3 + 3280);
  if (!v30)
  {
LABEL_54:
    v35 = *(v29 + 5192);
    if (v35)
    {
      isPortControlAMFMManagedDK = AppleOLYHALPortInterfacePCIe::isPortControlAMFMManagedDK(v35, 0);
      v29 = *v3;
      if (isPortControlAMFMManagedDK)
      {
        if (!AppleOLYHALPortInterfacePCIe::isChipUpDK(*(v29 + 5192), 0))
        {
          goto LABEL_59;
        }

        v29 = *v3;
      }
    }

    IOPCIDevice::SaveDeviceState(*(v29 + 3248), 0x80000000, 0);
    goto LABEL_59;
  }

  if ((AppleBCMWLANChipManagerPCIe::needsASPMWorkaround(v30) & 1) == 0)
  {
    v29 = *v3;
    goto LABEL_54;
  }

  AppleBCMWLANBusInterfacePCIe::modifyASPM(this, 1u);
  IOPCIDevice::SaveDeviceState(*(*(this + 9) + 3248), 0x80000000, 0);
  AppleBCMWLANBusInterfacePCIe::modifyASPM(this, 3u);
  *(*(this + 9) + 4588) = 1;
LABEL_59:
  if (AppleBCMWLANBusInterface::getLogger(this))
  {
    AppleBCMWLANBusInterface::getLogger(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANBusInterfacePCIe::deferredStart(this);
    }
  }

  IOService::RegisterService(this, 0);
  *(*(this + 9) + 3237) = 1;
  if (AppleBCMWLANBusInterfacePCIe::createFirmwareLogger(this))
  {
    if (AppleBCMWLANBusInterfacePCIe::createCrashTracerLogger(this))
    {
      (*(*this + 80))(this);
      *(*(this + 9) + 4096) = IO80211TimerSource::allocWithParams();
      v37 = *(this + 9);
      if (*(v37 + 4096))
      {
        *(v37 + 4808) = 0;
        v51[0] = 0;
        v38 = (*(*this + 984))(this);
        if (checkAcquireDataPropertyNotEmpty(v38, "pcie-throttle-firmware-load", v51, 4uLL, 1uLL, "IOService"))
        {
          *(*(this + 9) + 4808) = *OSData::getBytesNoCopy(v51[0], 0, 4uLL) != 0;
          if (AppleBCMWLANBusInterface::getLogger(this))
          {
            AppleBCMWLANBusInterface::getLogger(this);
            if (CCLogStream::shouldLog())
            {
              AppleBCMWLANBusInterfacePCIe::deferredStart(this, this + 9);
            }
          }

          if (v51[0])
          {
            (v51[0]->release)(v51[0]);
            v51[0] = 0;
          }
        }

        v39 = *(*v3 + 5192);
        if (v39 && AppleOLYHALPortInterfacePCIe::isPortControlAMFMManagedDK(v39, 0))
        {
          v40 = *v3;
          if ((*(*v3 + 3236) & 1) == 0)
          {
            AppleOLYHALPortInterfacePCIe::checkBuiltInPropertyDK(*(v40 + 5192), 0);
            v40 = *v3;
          }

          *(*v3 + 4007) = AppleOLYHALPortInterfacePCIe::bridgePTMPropertyEnabledDK(*(v40 + 5192), 0);
          v41 = *v3;
          if (*(*v3 + 4007) != 1)
          {
            goto LABEL_81;
          }

          *(*v3 + 4009) = AppleOLYHALPortInterfacePCIe::isPTMWorkaroundNeededDK(*(v41 + 5192), 0);
          v41 = *v3;
          if (*(*v3 + 4009) != 1)
          {
            goto LABEL_81;
          }

          if (AppleBCMWLANBusInterface::getLogger(this))
          {
            AppleBCMWLANBusInterface::getLogger(this);
            if (CCLogStream::shouldLog())
            {
              AppleBCMWLANBusInterfacePCIe::deferredStart(this);
            }
          }

          (*(*this + 80))(this);
          *(*(this + 9) + 3616) = IO80211TimerSource::allocWithParams();
          v41 = *(this + 9);
          if (!*(v41 + 3616))
          {
            if (AppleBCMWLANBusInterface::getLogger(this))
            {
              AppleBCMWLANBusInterface::getLogger(this);
              if (CCLogStream::shouldLog())
              {
                AppleBCMWLANBusInterfacePCIe::deferredStart(this);
              }
            }

            AppleBCMWLANBusInterface::reportInitFailure(this, Provider, 1uLL, 2982);
            IOService::Stop(this, Provider, 0);
            v41 = *(this + 9);
          }

          else
          {
LABEL_81:
            v4 = 0;
          }

          *(*v3 + 4008) = AppleOLYHALPortInterfacePCIe::isLPEMWorkaroundNeededDK(*(v41 + 5192), 0);
        }

        else
        {
          v4 = 0;
        }

        goto LABEL_97;
      }

      if (AppleBCMWLANBusInterface::getLogger(this))
      {
        AppleBCMWLANBusInterface::getLogger(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANBusInterfacePCIe::deferredStart(this);
        }
      }

      v42 = this;
      v43 = Provider;
      v44 = 2950;
    }

    else
    {
      if (AppleBCMWLANBusInterface::getLogger(this))
      {
        AppleBCMWLANBusInterface::getLogger(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANBusInterfacePCIe::deferredStart(this);
        }
      }

      v42 = this;
      v43 = Provider;
      v44 = 2936;
    }
  }

  else
  {
    if (AppleBCMWLANBusInterface::getLogger(this))
    {
      AppleBCMWLANBusInterface::getLogger(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANBusInterfacePCIe::deferredStart(this);
      }
    }

    v42 = this;
    v43 = Provider;
    v44 = 2924;
  }

  AppleBCMWLANBusInterface::reportInitFailure(v42, v43, 1uLL, v44);
  IOService::Stop(this, Provider, 0);
LABEL_97:
  started = v4;
LABEL_98:
  if ((*(*this + 1104))(this))
  {
    v45 = 1;
    atomic_compare_exchange_strong((*v3 + 3856), &v45, 0);
    if (v45 == 1)
    {
      IOService::AdjustBusy(this, -1, 0);
      LODWORD(v51[0]) = 0;
      IOService::GetBusyState(this, v51, 0);
      if (AppleBCMWLANBusInterface::getLogger(this))
      {
        AppleBCMWLANBusInterface::getLogger(this);
        if (CCLogStream::shouldLog())
        {
          v49 = AppleBCMWLANBusInterface::getLogger(this);
          CCLogStream::logAlert(v49, "[dk] %s@%d:Lowered AdjustBusy(-1), GetBusyState() -> %u\n", "deferredStart", 3008, LODWORD(v51[0]));
        }
      }

      io80211_os_log();
    }
  }

  else
  {
    if (AppleBCMWLANBusInterface::getLogger(this))
    {
      AppleBCMWLANBusInterface::getLogger(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANBusInterfacePCIe::deferredStart(this);
      }
    }

    io80211_os_log();
    (*(**(*v3 + 3848) + 56))(*(*v3 + 3848), 30000);
  }

  return started;
}

uint64_t AppleBCMWLANBusInterfacePCIe::startOLYHAL(AppleBCMWLANBusInterfacePCIe *this)
{
  if (AppleBCMWLANBusInterface::getLogger(this))
  {
    AppleBCMWLANBusInterface::getLogger(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANBusInterfacePCIe::startOLYHAL(this);
    }
  }

  v3 = this + 72;
  PlatformFunctionInterfaceDK = AppleOLYHAL::createPlatformFunctionInterfaceDK((*(this + 9) + 5184), v2);
  Logger = AppleBCMWLANBusInterface::getLogger(this);
  if (PlatformFunctionInterfaceDK)
  {
    if (Logger)
    {
      AppleBCMWLANBusInterface::getLogger(this);
      if (CCLogStream::shouldLog())
      {
        v6 = AppleBCMWLANBusInterface::getLogger(this);
        CCLogStream::logAlert(v6, "[dk] %s@%d:createPlatformFunctionInterfaceDK failed with error 0x%x\n");
      }
    }
  }

  else
  {
    if (Logger)
    {
      AppleBCMWLANBusInterface::getLogger(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANBusInterfacePCIe::startOLYHAL(this, this + 72);
      }
    }

    if (AppleBCMWLANBusInterface::getLogger(this))
    {
      AppleBCMWLANBusInterface::getLogger(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANBusInterfacePCIe::startOLYHAL(this);
      }
    }

    PlatformFunctionInterfaceDK = AppleOLYHAL::createPortInterfacePCIeDK("function-pcie_port_control", (*(this + 9) + 5192), v7);
    v8 = AppleBCMWLANBusInterface::getLogger(this);
    if (PlatformFunctionInterfaceDK)
    {
      if (v8)
      {
        AppleBCMWLANBusInterface::getLogger(this);
        if (CCLogStream::shouldLog())
        {
          v9 = AppleBCMWLANBusInterface::getLogger(this);
          CCLogStream::logAlert(v9, "[dk] %s@%d:createPortInterfaceDK failed with error 0x%x\n");
        }
      }
    }

    else
    {
      if (v8)
      {
        AppleBCMWLANBusInterface::getLogger(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANBusInterfacePCIe::startOLYHAL(this, this + 72);
        }
      }

      properties = 0;
      v10 = AppleOLYHALPlatformFunction::copyWLANPropertiesDK(*(*v3 + 5184), &properties, 0);
      if (v10)
      {
        PlatformFunctionInterfaceDK = v10;
        if (AppleBCMWLANBusInterface::getLogger(this))
        {
          AppleBCMWLANBusInterface::getLogger(this);
          if (CCLogStream::shouldLog())
          {
            v25 = AppleBCMWLANBusInterface::getLogger(this);
            CCLogStream::logAlert(v25, "[dk] %s@%d:copyWLANPropertiesDK failed with error 0x%x\n");
          }
        }
      }

      else
      {
        if (!properties)
        {
          goto LABEL_33;
        }

        OSDictionary::removeObject(properties, "vendor-id");
        PlatformFunctionInterfaceDK = IOService::SetProperties(this, properties, 0);
        if (properties)
        {
          (properties->release)(properties);
          properties = 0;
        }

        if (PlatformFunctionInterfaceDK)
        {
          if (AppleBCMWLANBusInterface::getLogger(this))
          {
            AppleBCMWLANBusInterface::getLogger(this);
            if (CCLogStream::shouldLog())
            {
              v12 = AppleBCMWLANBusInterface::getLogger(this);
              CCLogStream::logAlert(v12, "[dk] %s@%d:SetProperties failed with error 0x%x\n");
            }
          }
        }

        else
        {
LABEL_33:
          v13 = IODispatchQueue::Create("OLYHALKextToDextQueue", 0, 0, (*v3 + 5296));
          if (v13)
          {
            PlatformFunctionInterfaceDK = v13;
            if (AppleBCMWLANBusInterface::getLogger(this))
            {
              AppleBCMWLANBusInterface::getLogger(this);
              if (CCLogStream::shouldLog())
              {
                v14 = AppleBCMWLANBusInterface::getLogger(this);
                CCLogStream::logAlert(v14, "[dk] %s@%d:IODispatchQueue::Create failed with error 0x%x\n");
              }
            }
          }

          else
          {
            PlatformFunctionInterfaceDK = OSObject::SetDispatchQueue(this, "OLYHALKextToDextQueue", *(*(this + 9) + 5296), 0);
            v15 = AppleBCMWLANBusInterface::getLogger(this);
            if (PlatformFunctionInterfaceDK)
            {
              if (v15)
              {
                AppleBCMWLANBusInterface::getLogger(this);
                if (CCLogStream::shouldLog())
                {
                  v16 = AppleBCMWLANBusInterface::getLogger(this);
                  CCLogStream::logAlert(v16, "[dk] %s@%d:SetDispatchQueue failed with error 0x%x\n");
                }
              }
            }

            else
            {
              if (v15)
              {
                AppleBCMWLANBusInterface::getLogger(this);
                if (CCLogStream::shouldLog())
                {
                  AppleBCMWLANBusInterfacePCIe::startOLYHAL(this, this + 72);
                }
              }

              ActionPortErrorMsgHandler = AppleBCMWLANBusInterfacePCIe::CreateActionPortErrorMsgHandler(this, 0, (*(this + 9) + 5288));
              if (ActionPortErrorMsgHandler)
              {
                PlatformFunctionInterfaceDK = ActionPortErrorMsgHandler;
                if (AppleBCMWLANBusInterface::getLogger(this))
                {
                  AppleBCMWLANBusInterface::getLogger(this);
                  if (CCLogStream::shouldLog())
                  {
                    v18 = AppleBCMWLANBusInterface::getLogger(this);
                    CCLogStream::logAlert(v18, "[dk] %s@%d:CreateActionPortErrorMsgHandler failed with error 0x%x\n");
                  }
                }
              }

              else
              {
                PlatformFunctionInterfaceDK = AppleOLYHALPortInterfacePCIe::setPortErrorMsgHandler(*(*(this + 9) + 5192), *(*(this + 9) + 5288), 0);
                v19 = AppleBCMWLANBusInterface::getLogger(this);
                if (PlatformFunctionInterfaceDK)
                {
                  if (v19)
                  {
                    AppleBCMWLANBusInterface::getLogger(this);
                    if (CCLogStream::shouldLog())
                    {
                      v20 = AppleBCMWLANBusInterface::getLogger(this);
                      CCLogStream::logAlert(v20, "[dk] %s@%d:setPortErrorMsgHandler failed with error 0x%x\n");
                    }
                  }
                }

                else
                {
                  if (v19)
                  {
                    AppleBCMWLANBusInterface::getLogger(this);
                    if (CCLogStream::shouldLog())
                    {
                      AppleBCMWLANBusInterfacePCIe::startOLYHAL(this, this + 72);
                    }
                  }

                  ActionPortEventMsgHandler = AppleBCMWLANBusInterfacePCIe::CreateActionPortEventMsgHandler(this, 0, (*(this + 9) + 5280));
                  if (ActionPortEventMsgHandler)
                  {
                    PlatformFunctionInterfaceDK = ActionPortEventMsgHandler;
                    if (AppleBCMWLANBusInterface::getLogger(this))
                    {
                      AppleBCMWLANBusInterface::getLogger(this);
                      if (CCLogStream::shouldLog())
                      {
                        v22 = AppleBCMWLANBusInterface::getLogger(this);
                        CCLogStream::logAlert(v22, "[dk] %s@%d:CreateActionPortEventMsgHandler failed with error 0x%x\n");
                      }
                    }
                  }

                  else
                  {
                    PlatformFunctionInterfaceDK = AppleOLYHALPortInterfacePCIe::setPortEventMsgHandler(*(*(this + 9) + 5192), *(*(this + 9) + 5280), 0);
                    v23 = AppleBCMWLANBusInterface::getLogger(this);
                    if (PlatformFunctionInterfaceDK)
                    {
                      if (v23)
                      {
                        AppleBCMWLANBusInterface::getLogger(this);
                        if (CCLogStream::shouldLog())
                        {
                          v24 = AppleBCMWLANBusInterface::getLogger(this);
                          CCLogStream::logAlert(v24, "[dk] %s@%d:setPortEventMsgHandler failed with error 0x%x\n");
                        }
                      }
                    }

                    else
                    {
                      if (v23)
                      {
                        AppleBCMWLANBusInterface::getLogger(this);
                        if (CCLogStream::shouldLog())
                        {
                          AppleBCMWLANBusInterfacePCIe::startOLYHAL(this, this + 72);
                        }
                      }

                      return 0;
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

  return PlatformFunctionInterfaceDK;
}

uint64_t AppleBCMWLANBusInterfacePCIe::prepareFRCallback(AppleBCMWLANBusInterfacePCIe *this, const CCFaultReport *a2)
{
  (*(*this + 1208))(this, "prepareFRCallback", 19349);
  v5 = this + 72;
  v4 = *(this + 9);
  if (*(v4 + 3368) || (v6 = (*(*a2 + 112))(a2), v4 = *v5, (v6 & 1) != 0) || (*(v4 + 3706) & 1) != 0 || (v8 = *(v4 + 3280)) == 0 || (*(*v5 + 3368) = AppleBCMWLANChipMemory::withMap(0, v8, *(v4 + 3144), v7), v4 = *v5, *(*v5 + 3368)))
  {
    *(v4 + 4561) = 1;
    if ((*(*a2 + 128))(a2) == -469794011 || (*(*a2 + 128))(a2) == -469794019)
    {
      v9 = *v5;
      v10 = *(*v5 + 3722);
      if ((*(*v5 + 4582) & 1) == 0 && *(v9 + 3312) == 4399)
      {
        *(v9 + 3723) = 1;
      }
    }

    else
    {
      v10 = 0;
    }

    if (!(*(*a2 + 88))(a2))
    {
      return 0;
    }

    v11 = *v5;
    if (!*(*v5 + 3360) || (*(v11 + 3725) & 1) != 0 || (*(v11 + 1304) & 1) != 0 || *(v11 + 3706) == 1 && (*(v11 + 3710) & 1) != 0)
    {
      return 0;
    }

    if (*(v11 + 4809))
    {
      return 0;
    }

    v12 = *(v11 + 3280);
    if (v12)
    {
      isSplitArchitecture = AppleBCMWLANChipManagerPCIe::isSplitArchitecture(v12);
      v11 = *v5;
      if (isSplitArchitecture && (*(v11 + 4560) & 1) == 0)
      {
        if (!AppleBCMWLANBusInterfacePCIe::checkAPBAccessibility(this, 0, 0))
        {
          if (AppleBCMWLANBusInterface::getLogger(this))
          {
            AppleBCMWLANBusInterface::getLogger(this);
            if (CCLogStream::shouldLog())
            {
              AppleBCMWLANBusInterfacePCIe::prepareFRCallback(this, this + 72);
            }
          }

          if ((*(*v5 + 4564) & 1) == 0)
          {
            v14 = 0;
            *(*v5 + 4581) = 1;
            return v14;
          }

          return 0;
        }

        v11 = *v5;
      }
    }

    if (*(v11 + 3722) & v10)
    {
      AppleBCMWLANChipManagerPCIe::setDARUpdateAllowed(*(v11 + 3280), 1);
      if (AppleBCMWLANBusInterfacePCIe::trapDevice(this, 0))
      {
        if (AppleBCMWLANBusInterface::getLogger(this))
        {
          AppleBCMWLANBusInterface::getLogger(this);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANBusInterfacePCIe::prepareFRCallback(this);
          }
        }

        *(*v5 + 1305) = 1;
      }

      AppleBCMWLANChipManagerPCIe::setDARUpdateAllowed(*(*v5 + 3280), 0);
      return 0;
    }

    if (!AppleBCMWLANBusInterfacePCIe::trapDevice(this, 0xDEAD0002))
    {
      return 0;
    }

    if (AppleBCMWLANBusInterface::getLogger(this))
    {
      AppleBCMWLANBusInterface::getLogger(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANBusInterfacePCIe::prepareFRCallback(this);
      }
    }

    v14 = 0;
    *(*v5 + 1305) = 1;
  }

  else
  {
    v14 = 3758097085;
    if (AppleBCMWLANBusInterface::getLogger(this))
    {
      AppleBCMWLANBusInterface::getLogger(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANBusInterfacePCIe::prepareFRCallback(this);
      }
    }
  }

  return v14;
}

uint64_t AppleBCMWLANBusInterfacePCIe::collectImmediateFaultDataCallback(AppleBCMWLANBusInterfacePCIe *this, CCFaultReport *a2)
{
  if (AppleBCMWLAN_isVerboseDebugLoggingAllowed())
  {
    shouldLog = 1;
  }

  else
  {
    v5 = *(*(this + 9) + 4608);
    if (v5)
    {
      shouldLog = CCLogStream::shouldLog(v5, 1uLL);
    }

    else
    {
      shouldLog = 0;
    }
  }

  (*(*this + 1208))(this, "collectImmediateFaultDataCallback", 19421);
  v6 = this + 72;
  if (*(*(this + 9) + 4105) == 1)
  {
    if (AppleBCMWLANBusInterface::getLogger(this))
    {
      AppleBCMWLANBusInterface::getLogger(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANBusInterfacePCIe::collectImmediateFaultDataCallback(this);
      }
    }

    return 0;
  }

  if (*(*(this + 9) + 4560) == 1)
  {
    if (AppleBCMWLANBusInterface::getLogger(this))
    {
      AppleBCMWLANBusInterface::getLogger(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANBusInterfacePCIe::collectImmediateFaultDataCallback(this);
      }
    }

    return 0;
  }

  if ((*(*a2 + 112))(a2))
  {
    if (AppleBCMWLANBusInterface::getLogger(this))
    {
      AppleBCMWLANBusInterface::getLogger(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANBusInterfacePCIe::collectImmediateFaultDataCallback(this);
      }
    }

    return 0;
  }

  if ((*(*a2 + 128))(a2) == -469794303 || (*(*a2 + 128))(a2) == -469794295)
  {
    CCFaultReport::setLinkRegiser(a2, *(*v6 + 4068));
    CCFaultReport::setProgamCounter(a2, *(*v6 + 4064));
  }

  if (shouldLog)
  {
    if (*(*v6 + 1306) == 1)
    {
      v7 = OSString::withCString("ControlSubmission.bin");
      v8 = (*(**(*v6 + 312) + 264))(*(*v6 + 312));
      v9 = (*(**(*v6 + 312) + 272))();
      v10 = OSData::withBytes(v8, v9);
      (*(*a2 + 192))(a2, v7, v10);
      v11 = OSString::withCString("ControlCompletion.bin");
      v12 = (*(**(*v6 + 320) + 264))();
      v13 = (*(**(*v6 + 320) + 272))();
      v14 = OSData::withBytes(v12, v13);
      (*(*a2 + 192))(a2, v11, v14);
      v15 = OSString::withCString("RxSubmission.bin");
      v16 = (*(**(*v6 + 344) + 264))();
      v17 = (*(**(*v6 + 344) + 272))();
      v18 = OSData::withBytes(v16, v17);
      (*(*a2 + 192))(a2, v15, v18);
      v19 = OSString::withCString("RxCompletion.bin");
      v20 = (*(**(*v6 + 352) + 264))();
      v21 = (*(**(*v6 + 352) + 272))();
      v22 = OSData::withBytes(v20, v21);
      (*(*a2 + 192))(a2, v19, v22);
      v23 = OSString::withCString("TxCompletion.bin");
      v24 = (*(**(*v6 + 360) + 264))();
      v25 = (*(**(*v6 + 360) + 272))();
      v26 = OSData::withBytes(v24, v25);
      (*(*a2 + 192))(a2, v23, v26);
      v27 = *v6;
      if (*(*v6 + 328))
      {
        v28 = OSString::withCString("DebugSubmission.bin");
        v29 = (*(**(*v6 + 328) + 264))(*(*v6 + 328));
        v30 = (*(**(*v6 + 328) + 272))();
        v31 = OSData::withBytes(v29, v30);
        (*(*a2 + 192))(a2, v28, v31);
        v27 = *v6;
      }

      if (*(v27 + 336))
      {
        v32 = OSString::withCString("DebugCompletion.bin");
        v33 = (*(**(*v6 + 336) + 264))(*(*v6 + 336));
        v34 = (*(**(*v6 + 336) + 272))();
        v35 = OSData::withBytes(v33, v34);
        (*(*a2 + 192))(a2, v32, v35);
        v27 = *v6;
      }

      v36 = *(v27 + 372);
      if (v36 <= 0x2B && v36 < *(v27 + 376))
      {
        v37 = v36 + 602;
        do
        {
          if (*(v27 + 8 * v37))
          {
            *&v38 = 0xAAAAAAAAAAAAAAAALL;
            *(&v38 + 1) = 0xAAAAAAAAAAAAAAAALL;
            *__str = v38;
            v107 = v38;
            snprintf(__str, 0x20uLL, "TxFlowRing%d.bin", v37 - 602);
            v39 = OSString::withCString(__str);
            v40 = (*(**(*v6 + 8 * v37) + 264))();
            v41 = (*(**(*v6 + 8 * v37) + 272))();
            v42 = OSData::withBytes(v40, v41);
            (*(*a2 + 192))(a2, v39, v42);
            v27 = *v6;
          }

          if ((v37 - 602) > 0x2A)
          {
            break;
          }

          v43 = v37 - 601;
          ++v37;
        }

        while (v43 < *(v27 + 376));
      }

      v44 = (*(*this + 208))(this);
      v45 = *(this + 9);
      if ((v44 & 1) != 0 && *(v45 + 4085) == 1)
      {
        v46 = OSString::withCString("trapinfo.bin");
        if (*(*v6 + 4085))
        {
          v47 = 516;
        }

        else
        {
          v47 = 0;
        }

        v48 = OSData::withBytes(*(*v6 + 4072), v47);
        (*(*a2 + 192))(a2, v46, v48);
        v45 = *v6;
      }

      if (*(v45 + 4480))
      {
        v51 = (*(*this + 608))(this);
        if (AppleBCMWLANCore::isLowLatencyWiFiEnabled(v51))
        {
          if (AppleBCMWLANPCIeSkywalk::getLowLatencyTxCompRing(*(*v6 + 4480)))
          {
            v52 = OSString::withCString("LowLatencyTxCompRing");
            v53 = *AppleBCMWLANPCIeSkywalk::getLowLatencyTxCompRing(*(*v6 + 4480));
            v54 = (*(v53 + 264))();
            v55 = *AppleBCMWLANPCIeSkywalk::getLowLatencyTxCompRing(*(*v6 + 4480));
            v56 = (*(v55 + 272))();
            v57 = OSData::withBytes(v54, v56);
            (*(*a2 + 192))(a2, v52, v57);
          }

          if (AppleBCMWLANPCIeSkywalk::getLowLatencyRxCompRing(*(*v6 + 4480)))
          {
            v58 = OSString::withCString("LowLatencyRxCompRing");
            v59 = *AppleBCMWLANPCIeSkywalk::getLowLatencyRxCompRing(*(*v6 + 4480));
            v60 = (*(v59 + 264))();
            v61 = *AppleBCMWLANPCIeSkywalk::getLowLatencyRxCompRing(*(*v6 + 4480));
            v62 = (*(v61 + 272))();
            v63 = OSData::withBytes(v60, v62);
            (*(*a2 + 192))(a2, v58, v63);
          }
        }
      }
    }

    else
    {
      v49 = OSString::withCString("IPCRingFiles");
      v50 = OSString::withCString("IPC not created");
      AppleBCMWLANBusInterface::sendCCMissingFileInfoToCoreAnalytics(this, v49, v50);
    }

    if (*(*v6 + 3144))
    {
      v64 = IOMallocZeroData();
      if (v64)
      {
        v65 = v64;
        AppleBCMWLANPCIeMMIOHistory::dumpMMIOlogToBuffer(*(*v6 + 3144), v64, 0x1FFFFLL);
        v66 = OSString::withCString("MMIO_Log.txt");
        v67 = OSString::withCString(v65);
        (*(*a2 + 192))(a2, v66, v67);
        IOFreeData();
      }
    }

    else
    {
      v68 = OSString::withCString("MIMO_Log");
      v69 = OSString::withCString("Memory mapping is not yet done");
      AppleBCMWLANBusInterface::sendCCMissingFileInfoToCoreAnalytics(this, v68, v69);
    }
  }

  v70 = *v6;
  if (!*(*v6 + 3360) || (v70[3725] & 1) != 0 || (v70[1304] & 1) != 0 || v70[3706] == 1 && (v70[3710] & 1) != 0 || (v70[4809] & 1) != 0)
  {
    isAPBAccessible = 0;
  }

  else
  {
    isAPBAccessible = AppleBCMWLANBusInterfacePCIe::isAPBAccessible(this, 0, 0);
    v70 = *(this + 9);
  }

  v72 = v70 + 4096;
  if (v72[485] == 1 && (v72[486] & 1) == 0)
  {
    if (AppleBCMWLANBusInterface::getLogger(this) && (AppleBCMWLANBusInterface::getLogger(this), CCLogStream::shouldLog()))
    {
      AppleBCMWLANBusInterfacePCIe::collectImmediateFaultDataCallback(this);
      if (!shouldLog)
      {
        return 0;
      }
    }

    else if (!shouldLog)
    {
      return 0;
    }

    v76 = IOMallocZeroData();
    if (v76)
    {
      v77 = v76;
      (*(*this + 256))(this, v76, 0, 0x3FFFLL, isAPBAccessible);
      v78 = OSString::withCString("BusState.txt");
      v79 = OSString::withCString(v77);
      (*(*a2 + 192))(a2, v78, v79);
      IOFreeData();
      return 0;
    }

    v90 = OSString::withCString("BusState");
    v91 = "Memory allocation failed";
LABEL_109:
    v92 = OSString::withCString(v91);
    AppleBCMWLANBusInterface::sendCCMissingFileInfoToCoreAnalytics(this, v90, v92);
    return 0;
  }

  if (!isAPBAccessible)
  {
LABEL_81:
    if (!shouldLog)
    {
      goto LABEL_85;
    }

LABEL_82:
    v80 = IOMallocZeroData();
    if (v80)
    {
      v81 = v80;
      (*(*this + 256))(this, v80, 0, 0x3FFFLL, isAPBAccessible);
      v82 = OSString::withCString("BusState.txt");
      v83 = OSString::withCString(v81);
      (*(*a2 + 192))(a2, v82, v83);
      IOFreeData();
    }

    else
    {
      v84 = OSString::withCString("BusState");
      v85 = OSString::withCString("Memory allocation failed");
      AppleBCMWLANBusInterface::sendCCMissingFileInfoToCoreAnalytics(this, v84, v85);
    }

    goto LABEL_85;
  }

  if (!(*(*this + 80))(this))
  {
    goto LABEL_80;
  }

  v73 = (*(*this + 80))(this);
  if ((*(*v73 + 136))(v73))
  {
    goto LABEL_80;
  }

  if ((*(*a2 + 88))(a2) & 1) != 0 || ((*(*this + 208))(this) & 1) != 0 || (*(*v6 + 4496))
  {
    if (!AppleBCMWLANBusInterfacePCIe::isAPBAccessible(this, 0, 0))
    {
      goto LABEL_138;
    }

    goto LABEL_80;
  }

  v74 = AppleBCMWLANBusInterfacePCIe::retainCTS(this, 19539, 2);
  if (v74)
  {
    if (AppleBCMWLANBusInterface::getLogger(this))
    {
      AppleBCMWLANBusInterface::getLogger(this);
      if (CCLogStream::shouldLog())
      {
        Logger = AppleBCMWLANBusInterface::getLogger(this);
        CCLogStream::logAlert(Logger, "[dk] %s@%d:retainCTS failed : 0x%x\n", "collectImmediateFaultDataCallback", 19541, v74);
      }
    }
  }

  v75 = *v6;
  if (!*(*v6 + 3360) || (v75[3725] & 1) != 0 || (v75[1304] & 1) != 0 || v75[3706] == 1 && (v75[3710] & 1) != 0)
  {
    AppleBCMWLANBusInterfacePCIe::releaseCTS(this, 19552);
    goto LABEL_138;
  }

  v102 = v75[4809];
  if (v74 || (v75[4809] & 1) != 0)
  {
    AppleBCMWLANBusInterfacePCIe::releaseCTS(this, 19552);
    if (v102)
    {
      goto LABEL_138;
    }

    goto LABEL_80;
  }

  v103 = AppleBCMWLANBusInterfacePCIe::isAPBAccessible(this, 0, 0);
  AppleBCMWLANBusInterfacePCIe::releaseCTS(this, 19552);
  if (v103)
  {
LABEL_80:
    isAPBAccessible = 1;
    AppleBCMWLANChipBackplane::forcePower(*(*v6 + 3360), 1, 0);
    goto LABEL_81;
  }

LABEL_138:
  isAPBAccessible = 0;
  if (shouldLog)
  {
    goto LABEL_82;
  }

LABEL_85:
  if (((*(*a2 + 128))(a2) == -469794303 || (*(*a2 + 128))(a2) == -469794295) && *(*v6 + 4092) == 1)
  {
    AppleBCMWLANBusInterfacePCIe::createTrapMiniDumpLog(this, a2);
  }

  if (*(*v6 + 3725) == 1)
  {
    v86 = (*(*a2 + 128))(a2);
    if (AppleBCMWLANBusInterfacePCIe::shouldDeferError(this, v86))
    {
      if (AppleBCMWLANBusInterface::getLogger(this))
      {
        AppleBCMWLANBusInterface::getLogger(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANBusInterfacePCIe::collectImmediateFaultDataCallback(this);
        }
      }

      return 0;
    }
  }

  if ((isAPBAccessible & 1) == 0)
  {
    if (AppleBCMWLANBusInterface::getLogger(this))
    {
      AppleBCMWLANBusInterface::getLogger(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANBusInterfacePCIe::collectImmediateFaultDataCallback(this, this + 72);
      }
    }

    v90 = OSString::withCString("SoC_RAM");
    v91 = "Bus not accessable";
    goto LABEL_109;
  }

  isTCMAccessible = AppleBCMWLANBusInterfacePCIe::isTCMAccessible(this);
  v88 = AppleBCMWLANBusInterface::getLogger(this);
  if (isTCMAccessible)
  {
    if (v88)
    {
      AppleBCMWLANBusInterface::getLogger(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANBusInterfacePCIe::collectImmediateFaultDataCallback(this, a2, a2 & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000);
      }
    }

    if ((*(*a2 + 80))(a2))
    {
      v89 = (*(*a2 + 128))(a2);
      if ((AppleBCMWLANBusInterfacePCIe::shouldDeferError(this, v89) & 1) == 0)
      {
        if (AppleBCMWLANBusInterface::getLogger(this))
        {
          AppleBCMWLANBusInterface::getLogger(this);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANBusInterfacePCIe::collectImmediateFaultDataCallback(this);
          }
        }

        AppleBCMWLANBusInterfacePCIe::attachSoCRAMFile(this, a2);
      }
    }
  }

  else
  {
    if (v88)
    {
      AppleBCMWLANBusInterface::getLogger(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANBusInterfacePCIe::collectImmediateFaultDataCallback(this);
      }
    }

    v93 = OSString::withCString("SoC_RAM");
    v94 = OSString::withCString("TCM not accessible");
    AppleBCMWLANBusInterface::sendCCMissingFileInfoToCoreAnalytics(this, v93, v94);
  }

  if (shouldLog)
  {
    *__str = 0;
    v95 = (*(*this + 1032))(this, __str);
    if (v95)
    {
      v96 = v95;
      if (AppleBCMWLANBusInterface::getLogger(this))
      {
        AppleBCMWLANBusInterface::getLogger(this);
        if (CCLogStream::shouldLog())
        {
          v104 = AppleBCMWLANBusInterface::getLogger(this);
          CCLogStream::logAlert(v104, "[dk] %s@%d:The %s file may not exist because of error 0x%x\n", "collectImmediateFaultDataCallback", 19625, "SoC_Registers.xml", v96);
        }
      }
    }

    v97 = OSString::withCString("SoC_Registers.xml");
    (*(*a2 + 192))(a2, v97, *__str);
  }

  AppleBCMWLANChipBackplane::forcePower(*(*v6 + 3360), 0, 0);
  if (((*(*a2 + 88))(a2) & 1) == 0)
  {
    v98 = (*(*a2 + 128))(a2);
    if ((AppleBCMWLANBusInterfacePCIe::shouldDeferError(this, v98) & 1) == 0)
    {
      v99 = *v6;
      v100 = *(*v6 + 3368);
      if (v100)
      {
        (*(*v100 + 16))(v100);
        *(*v6 + 3368) = 0;
        v99 = *v6;
      }

      *(v99 + 3392) = 0;
      *(v99 + 3376) = 0u;
    }
  }

  if (AppleBCMWLANBusInterface::getLogger(this))
  {
    AppleBCMWLANBusInterface::getLogger(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANBusInterfacePCIe::collectImmediateFaultDataCallback(this, this + 72);
    }
  }

  return 0;
}

uint64_t AppleBCMWLANBusInterfacePCIe::collectDeferredFaultDataCallback(AppleBCMWLANBusInterfacePCIe *this, CCFaultReport *a2)
{
  (*(*this + 1208))(this, "collectDeferredFaultDataCallback", 20219);
  if (*(*(this + 9) + 4105) == 1)
  {
    if (AppleBCMWLANBusInterface::getLogger(this))
    {
      AppleBCMWLANBusInterface::getLogger(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANBusInterfacePCIe::collectDeferredFaultDataCallback(this);
      }
    }
  }

  else if (*(*(this + 9) + 4560) == 1)
  {
    if (AppleBCMWLANBusInterface::getLogger(this))
    {
      AppleBCMWLANBusInterface::getLogger(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANBusInterfacePCIe::collectDeferredFaultDataCallback(this);
      }
    }
  }

  else if ((*(*a2 + 112))(a2))
  {
    if (AppleBCMWLANBusInterface::getLogger(this))
    {
      AppleBCMWLANBusInterface::getLogger(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANBusInterfacePCIe::collectDeferredFaultDataCallback(this);
      }
    }
  }

  else
  {
    v4 = *(this + 9);
    if ((*(v4 + 1304) & 1) != 0 || (v5 = *(v4 + 3360)) == 0 || (*(v4 + 3725) & 1) != 0 || *(v4 + 3706) == 1 && (*(v4 + 3710) & 1) != 0 || (v6 = (v4 + 4096), v6[713] == 1))
    {
      if (AppleBCMWLANBusInterface::getLogger(this))
      {
        AppleBCMWLANBusInterface::getLogger(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANBusInterfacePCIe::collectDeferredFaultDataCallback(this);
        }
      }
    }

    else if (v6[485] == 1 && (v6[486] & 1) == 0)
    {
      if (AppleBCMWLANBusInterface::getLogger(this))
      {
        AppleBCMWLANBusInterface::getLogger(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANBusInterfacePCIe::collectDeferredFaultDataCallback(this);
        }
      }
    }

    else if (AppleBCMWLANChipBackplane::getAPBAccessibilityState(v5) == 1)
    {
      if (AppleBCMWLANBusInterface::getLogger(this))
      {
        AppleBCMWLANBusInterface::getLogger(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANBusInterfacePCIe::collectDeferredFaultDataCallback(this);
        }
      }
    }

    else
    {
      v8 = *(*(this + 9) + 3360);
      if (v8 && (AppleBCMWLANChipBackplane::getPowerControlRegReadStatus(v8) & 1) != 0)
      {
        AppleBCMWLANChipBackplane::forcePower(*(*(this + 9) + 3360), 1, 0);
        if (AppleBCMWLANBusInterface::getLogger(this))
        {
          AppleBCMWLANBusInterface::getLogger(this);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANBusInterfacePCIe::collectDeferredFaultDataCallback(this, a2, a2 & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000);
          }
        }

        if ((*(*a2 + 80))(a2))
        {
          v9 = (*(*a2 + 128))(a2);
          if (AppleBCMWLANBusInterfacePCIe::shouldDeferError(this, v9))
          {
            AppleBCMWLANBusInterfacePCIe::attachSoCRAMFile(this, a2);
          }
        }

        if (((*(*a2 + 88))(a2) & 1) == 0)
        {
          v10 = *(this + 9);
          v11 = *(v10 + 3368);
          if (v11)
          {
            (*(*v11 + 16))(v11);
            *(*(this + 9) + 3368) = 0;
            v10 = *(this + 9);
          }

          *(v10 + 3392) = 0;
          *(v10 + 3376) = 0u;
        }

        AppleBCMWLANChipBackplane::forcePower(*(*(this + 9) + 3360), 0, 0);
      }

      else
      {
        if (AppleBCMWLANBusInterface::getLogger(this))
        {
          AppleBCMWLANBusInterface::getLogger(this);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANBusInterfacePCIe::collectDeferredFaultDataCallback(this);
          }
        }

        if (*(*(this + 9) + 4564) == 1)
        {
          if (AppleBCMWLANBusInterface::getLogger(this))
          {
            AppleBCMWLANBusInterface::getLogger(this);
            if (CCLogStream::shouldLog())
            {
              AppleBCMWLANBusInterfacePCIe::collectDeferredFaultDataCallback(this);
            }
          }
        }
      }
    }
  }

  return 0;
}

uint64_t AppleBCMWLANBusInterfacePCIe::completeFaultReportCallback(AppleBCMWLANBusInterfacePCIe *this, const CCFaultReport *a2)
{
  *(*(this + 9) + 4561) = 0;
  (*(**(*(this + 9) + 3472) + 88))(*(*(this + 9) + 3472), *(this + 9) + 4561);
  if (AppleBCMWLANBusInterface::getLogger(this))
  {
    AppleBCMWLANBusInterface::getLogger(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANBusInterfacePCIe::completeFaultReportCallback(this);
    }
  }

  if (CCFaultReport::getWatchdogResult(a2))
  {
    if (AppleBCMWLANBusInterface::getLogger(this))
    {
      AppleBCMWLANBusInterface::getLogger(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANBusInterfacePCIe::completeFaultReportCallback(this);
      }
    }

    v4 = *(*(this + 9) + 3632);
    if (v4)
    {
      (*(*v4 + 72))(v4);
    }
  }

  if (CCFaultReport::getWatchdogResult(a2) == -528336892)
  {
    if (AppleBCMWLANBusInterface::getLogger(this))
    {
      AppleBCMWLANBusInterface::getLogger(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANBusInterfacePCIe::completeFaultReportCallback(this);
      }
    }

    if (AppleBCMWLANChipManagerPCIe::isTrapBeforeFLRSupported(*(*(this + 9) + 3280)))
    {
      if (AppleBCMWLANBusInterface::getLogger(this))
      {
        AppleBCMWLANBusInterface::getLogger(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANBusInterfacePCIe::completeFaultReportCallback(this);
        }
      }

      (*(*this + 1152))(this, 3825173288, "Core Triggered WD in Low Power <- Refer to previous CC");
    }
  }

  return 0;
}

uint64_t AppleBCMWLANBusInterfacePCIe::changeDeepSleepStateSetClear(uint64_t this, unsigned int a2, int a3, int a4)
{
  v4 = a3;
  v5 = this;
  v6 = *(this + 72);
  if (a3 == 3 || (*(v6 + 2868) & 1) != 0)
  {
    v7 = *(v6 + 4496);
    *(v6 + 4496) = v7 & ~a4 | a3;
    if ((a3 & 2) != 0 && (*(*(this + 72) + 4496) & 1) == 0)
    {
      mach_continuous_time();
      v8 = *(v5 + 72);
      this = absolutetime_to_nanoseconds();
    }

    if (v4)
    {
      if ((v7 & 1) == 0)
      {
        mach_continuous_time();
        this = absolutetime_to_nanoseconds();
        *(*(v5 + 72) + 4520) = 0;
      }

      v9 = *(v5 + 72);
      if (*(v9 + 4508))
      {
        return (*(**(v9 + 3472) + 88))(*(v9 + 3472), v9 + 4508);
      }
    }
  }

  return this;
}

void AppleBCMWLANBusInterfacePCIe::modifyASPM(AppleBCMWLANBusInterface *a1, unsigned int a2)
{
  foundCapabilityOffset = 0;
  readData = 0;
  (*(*a1 + 1208))(a1, "modifyASPM", 6459);
  v4 = (a1 + 72);
  if (*(*(a1 + 9) + 4587) == 1)
  {
    if (AppleBCMWLANBusInterface::getLogger(a1))
    {
      AppleBCMWLANBusInterface::getLogger(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANBusInterfacePCIe::modifyASPM(a1);
      }
    }

    return;
  }

  if (a2 == 3 && AppleBCMWLANBusInterfacePCIe::modifyASPM(kAppleBCMWLANPCIeASPMCommands)::aspmSaved != 1)
  {
    return;
  }

  if (AppleBCMWLANBusInterface::getLogger(a1))
  {
    AppleBCMWLANBusInterface::getLogger(a1);
    if (CCLogStream::shouldLog())
    {
      Logger = AppleBCMWLANBusInterface::getLogger(a1);
      CCLogStream::logAlert(Logger, "[dk] %s@%d:Command %d\n", "modifyASPM", 6470, a2);
    }
  }

  v5 = *(*v4 + 3248);
  if (v5)
  {
    if (IOPCIDevice::FindPCICapability(v5, 0x10u, 0, &foundCapabilityOffset, 0))
    {
      if (AppleBCMWLANBusInterface::getLogger(a1))
      {
        AppleBCMWLANBusInterface::getLogger(a1);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANBusInterfacePCIe::modifyASPM(a1);
        }
      }

      return;
    }

    if (a2 <= 1)
    {
      IOPCIDevice::ConfigurationRead16(*(*v4 + 3248), foundCapabilityOffset + 16, (*v4 + 4590));
      AppleBCMWLANBusInterfacePCIe::modifyASPM(kAppleBCMWLANPCIeASPMCommands)::aspmSaved = 1;
      if (!a2)
      {
        return;
      }

      goto LABEL_22;
    }

    if (a2 == 2)
    {
LABEL_22:
      IOPCIDevice::ConfigurationRead16(*(*(a1 + 9) + 3248), foundCapabilityOffset + 16, &readData);
      readData &= 0xFFFCu;
      IOPCIDevice::ConfigurationWrite16(*(*(a1 + 9) + 3248), foundCapabilityOffset + 16, readData);
      if (AppleBCMWLANBusInterface::getLogger(a1))
      {
        AppleBCMWLANBusInterface::getLogger(a1);
        if (CCLogStream::shouldLog())
        {
          v6 = AppleBCMWLANBusInterface::getLogger(a1);
          CCLogStream::logCrit(v6, "[dk] %s@%d:disabled endpoint ASPM 0x%0x\n", "modifyASPM", 6522, readData);
        }
      }

      return;
    }

    if (a2 == 3)
    {
      IOPCIDevice::ConfigurationWrite16(*(*(a1 + 9) + 3248), foundCapabilityOffset + 16, *(*(a1 + 9) + 4590));
      if (AppleBCMWLANBusInterface::getLogger(a1))
      {
        AppleBCMWLANBusInterface::getLogger(a1);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANBusInterfacePCIe::modifyASPM(a1, a1 + 72);
        }
      }
    }
  }

  else if (AppleBCMWLANBusInterface::getLogger(a1))
  {
    AppleBCMWLANBusInterface::getLogger(a1);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANBusInterfacePCIe::modifyASPM(a1);
    }
  }
}

uint64_t AppleBCMWLANBusInterfacePCIe::createFirmwareLogger(AppleBCMWLANBusInterfacePCIe *this)
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
      v5 = *OSData::getBytesNoCopy(bytes, 0, 8uLL);
      v3[2] = (v5 << 10);
      if (AppleBCMWLANBusInterface::getLogger(this))
      {
        AppleBCMWLANBusInterface::getLogger(this);
        if (CCLogStream::shouldLog())
        {
          Logger = AppleBCMWLANBusInterface::getLogger(this);
          CCLogStream::logAlert(Logger, "[dk] %s@%d:WiFiFirmwareBusLogs Size configure from device tree: %uKB\n", "createFirmwareLogger", 16588, v5);
        }
      }

      if (bytes)
      {
        (bytes->release)(bytes);
        bytes = 0;
      }
    }

    v20 = 0;
    if (IOParseBootArgNumber("wlan.ccpipe.FWBusLogs.size", &v20, 4))
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
          CCLogStream::logAlert(v18, "[dk] %s@%d:WiFiFirmwareBusLogs Size configure from boot-args: %u (Max=512KB)\n", "createFirmwareLogger", 16596, v3[2]);
        }
      }
    }

    v3[3] = ((2 * ((5 * v3[2]) & 0x1FFFFFFFFFFFFFFFuLL) * 0x28F5C28F5C28F5C3uLL) >> 64) >> 2;
    *(v3 + 8) = 1000;
    ModuleInstanceId = AppleBCMWLANBusInterface::getModuleInstanceId(this);
    snprintf(v3 + 292, 0x100uLL, "brcm%x", ModuleInstanceId);
    strcpy(v3 + 36, "FirmwareBusLogs");
    strcpy(v3 + 580, "WiFi");
    *(v3 + 548) = 0x200200000;
    v3[71] = 0;
    OSMetaClassBase::safeMetaCast(this, gAppleBCMWLANBusInterfacePCIeMetaClass);
    AppleBCMWLANBusInterface::getCCPipeOwner(this);
    v8 = (*(*this + 80))(this);
    (*(*v8 + 168))(v8);
    v9 = CCPipe::withOwnerNameCapacity();
    *(*(this + 9) + 3800) = OSMetaClassBase::safeMetaCast(v9, gCCLogPipeMetaClass);
    IOFree(v3, 0x350uLL);
    if (!*(*(this + 9) + 3800))
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
      if (*(*(this + 9) + 3800))
      {
        v13 = *(*(this + 9) + 3800);
        v14 = CCStream::withPipeAndName();
        *(*(this + 9) + 3792) = OSMetaClassBase::safeMetaCast(v14, gCCLogStreamMetaClass);
        v12 = *(v11 + 328);
      }

      (v12->release)(v12);
      if (AppleBCMWLANBusInterface::getLogger(this))
      {
        AppleBCMWLANBusInterface::getLogger(this);
        if (CCLogStream::shouldLog())
        {
          v19 = AppleBCMWLANBusInterface::getLogger(this);
          CCLogStream::logAlert(v19, "[dk] %s@%d: CCFlags: 0x%llx, CCLevel: %d ConsoleFlags: 0x%llx, ConsoleLevel: %d\n", "createFirmwareLogger", 16659, *(v11 + 24), *(v11 + 8), *(v11 + 32), *(v11 + 12));
        }
      }

      IOFree(v11, 0x358uLL);
      v15 = *(this + 9);
      if (*(v15 + 3792))
      {
        (*(**(v15 + 3800) + 72))(*(v15 + 3800));
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
        AppleBCMWLANBusInterfacePCIe::createFirmwareLogger(this);
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
        AppleBCMWLANBusInterfacePCIe::createFirmwareLogger(this);
        return 0;
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANBusInterfacePCIe::createCrashTracerLogger(AppleBCMWLANBusInterfacePCIe *this)
{
  v2 = IOMallocZeroTyped();
  if (!v2)
  {
    result = AppleBCMWLANBusInterface::getLogger(this);
    if (!result)
    {
      return result;
    }

    AppleBCMWLANBusInterface::getLogger(this);
    result = CCLogStream::shouldLog();
    if (!result)
    {
      return result;
    }

    AppleBCMWLANBusInterfacePCIe::createCrashTracerLogger(this);
    return 0;
  }

  v3 = v2;
  *v2 = xmmword_1003B0640;
  strcpy((v2 + 36), "CrashTracerLog");
  ModuleInstanceId = AppleBCMWLANBusInterface::getModuleInstanceId(this);
  snprintf((v3 + 292), 0x100uLL, "brcm%x", ModuleInstanceId);
  strcpy((v3 + 580), "WiFi");
  *(v3 + 16) = 64;
  *(v3 + 560) = OSMetaClassBase::safeMetaCast(this, gAppleBCMWLANBusInterfacePCIeMetaClass);
  *(v3 + 568) = 0;
  OSMetaClassBase::safeMetaCast(this, gAppleBCMWLANBusInterfacePCIeMetaClass);
  AppleBCMWLANBusInterface::getCCPipeOwner(this);
  v5 = (*(*this + 80))(this);
  (*(*v5 + 168))(v5);
  v6 = CCPipe::withOwnerNameCapacity();
  *(*(this + 9) + 3816) = OSMetaClassBase::safeMetaCast(v6, gCCDataPipeMetaClass);
  IOFree(v3, 0x350uLL);
  if (!*(*(this + 9) + 3816))
  {
    return 0;
  }

  v7 = IOMallocZeroTyped();
  if (v7)
  {
    v8 = v7;
    *v7 = 1;
    *(v7 + 8) = -1;
    *(v7 + 24) = 0;
    *(v7 + 32) = 0;
    *(v7 + 56) = 0;
    *(v7 + 64) = 0;
    *(v7 + 48) = 0;
    if (*(*(this + 9) + 3816))
    {
      v9 = CCStream::withPipeAndName();
      *(*(this + 9) + 3808) = OSMetaClassBase::safeMetaCast(v9, gCCDataStreamMetaClass);
    }

    IOFree(v8, 0x358uLL);
    v10 = *(this + 9);
    if (*(v10 + 3808))
    {
      (*(**(v10 + 3816) + 72))(*(v10 + 3816));
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
      AppleBCMWLANBusInterfacePCIe::createCrashTracerLogger(this);
      return 0;
    }
  }

  return result;
}

uint64_t AppleBCMWLANBusInterfacePCIe::freeTrapMiniDumpBufferTimeout(uint64_t result)
{
  v1 = *(result + 72);
  if (*(v1 + 4092) == 1)
  {
    v2 = result;
    result = *(v1 + 1520);
    if (result)
    {
      IOFreeData();
      *(*(v2 + 9) + 1520) = 0;
      result = AppleBCMWLANBusInterface::getLogger(v2);
      if (result)
      {
        AppleBCMWLANBusInterface::getLogger(v2);
        result = CCLogStream::shouldLog();
        if (result)
        {
          return AppleBCMWLANBusInterfacePCIe::freeTrapMiniDumpBufferTimeout(v2);
        }
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANBusInterfacePCIe::ptmAckTimeout(AppleBCMWLANBusInterface *a1)
{
  if (AppleBCMWLANBusInterface::getLogger(a1))
  {
    AppleBCMWLANBusInterface::getLogger(a1);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANBusInterfacePCIe::ptmAckTimeout(a1);
    }
  }

  AppleBCMWLANBusInterfacePCIe::configurePTM(a1, 0);
  IOPCIDevice::SetASPMState(*(*(a1 + 9) + 3248), 2u, 0);
  result = AppleBCMWLANBusInterface::getFaultReporter(a1);
  if (result)
  {
    FaultReporter = AppleBCMWLANBusInterface::getFaultReporter(a1);

    return CCFaultReporter::reportFault(FaultReporter, 5u, "/Library/Caches/com.apple.xbs/Sources/AppleBCMWLANV3_driverkit/Busses/PCIe/AppleBCMWLANBusInterfacePCIe.cpp", 0x10D3u, "ptmAckTimeout", 0, -469794005, 0);
  }

  return result;
}

{
  Logger = AppleBCMWLANBusInterface::getLogger(a1);
  return CCLogStream::logAlert(Logger, "[dk] %s@%d:Timed out waiting for PTM ack\n", "ptmAckTimeout", 4302);
}

AppleBCMWLANBusInterface *AppleBCMWLANBusInterfacePCIe::waitForBusAttachWithTimeoutGated(AppleBCMWLANBusInterface *this, unsigned int *a2)
{
  if (!*(*(this + 9) + 3248))
  {
    v2 = this;
    if (a2)
    {
      v3 = *a2;
    }

    else
    {
      v3 = 100;
    }

    if (AppleBCMWLANBusInterface::getLogger(this))
    {
      AppleBCMWLANBusInterface::getLogger(v2);
      if (CCLogStream::shouldLog())
      {
        Logger = AppleBCMWLANBusInterface::getLogger(v2);
        CCLogStream::logAlert(Logger, "[dk] %s@%d:enter, this[%p] ... waiting for [%u ms] \n", "waitForBusAttachWithTimeoutGated", 3040, v2, v3);
      }
    }

    clock_interval_to_deadline();
    (*(**(*(v2 + 9) + 3472) + 80))(*(*(v2 + 9) + 3472), *(v2 + 9) + 3248, 0xAAAAAAAAAAAAAAAALL);
    this = AppleBCMWLANBusInterface::getLogger(v2);
    if (this)
    {
      AppleBCMWLANBusInterface::getLogger(v2);
      this = CCLogStream::shouldLog();
      if (this)
      {
        return AppleBCMWLANBusInterfacePCIe::waitForBusAttachWithTimeoutGated();
      }
    }
  }

  return this;
}

uint64_t AppleBCMWLANBusInterfacePCIe::handleShutdownAtTermination(AppleBCMWLANBusInterfacePCIe *this)
{
  v29 = 0;
  v2 = OSString::withCString("com.apple.iokit.pm.haltdescription");
  v3 = IOService::StateNotificationItemCopy(*(*(this + 9) + 5216), v2, &v29, 0);
  v27 = 0;
  v28 = 1;
  IOParseBootArgNumber("wlan.dk.shutdown-panic", &v28, 4);
  IOParseBootArgNumber("wlan.dk.shutdown-killDext", &v27, 4);
  if (v29 && (Object = OSDictionary::getObject(v29, "com.apple.iokit.pm.haltstate"), (v5 = OSMetaClassBase::safeMetaCast(Object, gOSNumberMetaClass)) != 0))
  {
    v6 = OSNumber::unsigned64BitValue(v5);
  }

  else
  {
    v6 = 0;
  }

  if (AppleBCMWLANBusInterface::getLogger(this))
  {
    AppleBCMWLANBusInterface::getLogger(this);
    if (CCLogStream::shouldLog())
    {
      Logger = AppleBCMWLANBusInterface::getLogger(this);
      CCLogStream::logAlert(Logger, "[dk] %s@%d:BusInterfacePCIe: ret[0x%08x], state value[0x%016llx] this[%p] panic[%u] killDext[%u]", "handleShutdownAtTermination", 3088, v3, v6, this, v28, v27);
    }
  }

  if (v3 == -536870160)
  {
    if (AppleBCMWLANBusInterface::getLogger(this))
    {
      AppleBCMWLANBusInterface::getLogger(this);
      if (CCLogStream::shouldLog())
      {
        v11 = AppleBCMWLANBusInterface::getLogger(this);
        CCLogStream::logAlert(v11, "[dk] %s@%d:BusInterfacePCIe: userspace reboot, state value[0x%016llx]\n");
LABEL_47:
        if (!v2)
        {
          goto LABEL_37;
        }

LABEL_36:
        (v2->release)(v2);
        goto LABEL_37;
      }
    }

LABEL_35:
    if (!v2)
    {
      goto LABEL_37;
    }

    goto LABEL_36;
  }

  if (v3)
  {
    if (AppleBCMWLANBusInterface::getLogger(this))
    {
      AppleBCMWLANBusInterface::getLogger(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANBusInterfacePCIe::handleShutdownAtTermination(this, v3, v6);
        if (!v2)
        {
          goto LABEL_37;
        }

        goto LABEL_36;
      }
    }

    goto LABEL_35;
  }

  v7 = OSDictionary::getObject(v29, "com.apple.iokit.pm.haltstate");
  v8 = OSMetaClassBase::safeMetaCast(v7, gOSNumberMetaClass);
  if (!v8 || (OSNumber::unsigned64BitValue(v8) & 3) == 0)
  {
    if (!AppleBCMWLANBusInterface::getLogger(this))
    {
      goto LABEL_35;
    }

    AppleBCMWLANBusInterface::getLogger(this);
    if (!CCLogStream::shouldLog())
    {
      goto LABEL_35;
    }

    v20 = AppleBCMWLANBusInterface::getLogger(this);
    CCLogStream::logAlert(v20, "[dk] %s@%d:Tearing down, state value[0x%016llx]\n");
    goto LABEL_47;
  }

  v24 = 0;
  v25[0] = &v24;
  v25[1] = 0x2000000000;
  v26 = 0;
  if (AppleBCMWLANBusInterface::getLogger(this))
  {
    AppleBCMWLANBusInterface::getLogger(this);
    if (CCLogStream::shouldLog())
    {
      v21 = AppleBCMWLANBusInterface::getLogger(this);
      CCLogStream::logAlert(v21, "[dk] %s@%d:BusInterfacePCIe: system shutdown/restart, state value[0x%016llx]", "handleShutdownAtTermination", 3096, v6);
    }
  }

  v9 = *(this + 9);
  if (*(v9 + 5224))
  {
    v10 = (*(**(v9 + 3464) + 168))(*(v9 + 3464));
    block[0] = _NSConcreteStackBlock;
    block[1] = 1107296256;
    block[2] = ___ZN28AppleBCMWLANBusInterfacePCIe27handleShutdownAtTerminationEv_block_invoke;
    block[3] = &__block_descriptor_tmp_6;
    block[4] = &v24;
    block[5] = this;
    IODispatchQueue::DispatchSync(v10, block);
    _Block_release(*(*(this + 9) + 5224));
    *(*(this + 9) + 5224) = 0;
  }

  if (AppleBCMWLANBusInterface::getLogger(this))
  {
    AppleBCMWLANBusInterface::getLogger(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANBusInterfacePCIe::handleShutdownAtTermination(this, v25);
    }
  }

  if (AppleBCMWLANBusInterface::getLogger(this))
  {
    AppleBCMWLANBusInterface::getLogger(this);
    if (CCLogStream::shouldLog())
    {
      v22 = AppleBCMWLANBusInterface::getLogger(this);
      CCLogStream::logAlert(v22, "[dk] %s@%d:WiFi doesn't terminate cleanly because we're lazy, 'wlan.dk.shutdown-panic'[0x%08x]\n", "handleShutdownAtTermination", 3108, v28);
    }
  }

  if (v28)
  {
    AppleBCMWLANBusInterfacePCIe::handleShutdownAtTermination();
  }

  _Block_object_dispose(&v24, 8);
  if (v2)
  {
    goto LABEL_36;
  }

LABEL_37:
  if (v29)
  {
    (v29->release)(v29);
    v29 = 0;
  }

  v12 = *(this + 9);
  v13 = *(v12 + 5224);
  if (v13)
  {
    _Block_release(v13);
    v12 = *(this + 9);
  }

  v14 = *(v12 + 5216);
  if (v14)
  {
    (*(*v14 + 16))(v14);
    *(*(this + 9) + 5216) = 0;
  }

  if (v27)
  {
    IOLog("BusInterfacePCIe: this[%p], killDext[%u], ...\n", this, v27);
    v16 = AppleOLYHAL::killDextDK("Force termination", v15);
    IOLog("BusInterfacePCIe: this[%p], killDext[%u], halret[0x%08x] ...\n", this, v27, v16);
  }

  v17 = (*(*this + 104))(this, v3);
  return IOLog("handleShutdownAtTermination::BusInterfacePCIe: ... done, ret=%s, state value[0x%016llx]\n", v17, v6);
}

uint64_t ___ZN28AppleBCMWLANBusInterfacePCIe27handleShutdownAtTerminationEv_block_invoke(uint64_t a1)
{
  result = (*(*(*(*(a1 + 40) + 72) + 5224) + 16))();
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t AppleBCMWLANBusInterfacePCIe::Stop_Impl(AppleBCMWLANBusInterfacePCIe *this, IOService *a2)
{
  if (AppleBCMWLANBusInterface::getLogger(this))
  {
    AppleBCMWLANBusInterface::getLogger(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANBusInterfacePCIe::Stop_Impl();
    }
  }

  v5 = this + 72;
  v4 = *(this + 9);
  if (v4[406])
  {
    AppleBCMWLANBusInterfacePCIe::handleShutdownAtTermination(this);
    v4 = *(this + 9);
  }

  v6 = v4[475];
  if (v6)
  {
    (*(*v6 + 80))(v6);
    v4 = *v5;
  }

  v7 = v4[474];
  if (v7)
  {
    (*(*v7 + 16))(v7);
    *(*v5 + 3792) = 0;
    v4 = *v5;
  }

  v8 = v4[475];
  if (v8)
  {
    (*(*v8 + 16))(v8);
    *(*v5 + 3800) = 0;
    v4 = *v5;
  }

  v9 = v4[477];
  if (v9)
  {
    (*(*v9 + 80))(v9);
    v4 = *v5;
  }

  v10 = v4[476];
  if (v10)
  {
    (*(*v10 + 16))(v10);
    *(*v5 + 3808) = 0;
    v4 = *v5;
  }

  v11 = v4[477];
  if (v11)
  {
    (*(*v11 + 16))(v11);
    *(*v5 + 3816) = 0;
    v4 = *v5;
  }

  v12 = v4[554];
  if (v12)
  {
    (*(*v12 + 80))(v12);
    v4 = *v5;
  }

  v13 = v4[553];
  if (v13)
  {
    (*(*v13 + 16))(v13);
    *(*v5 + 4424) = 0;
    v4 = *v5;
  }

  v14 = v4[554];
  if (v14)
  {
    (*(*v14 + 16))(v14);
    *(*v5 + 4432) = 0;
    v4 = *v5;
  }

  v15 = v4[556];
  if (v15)
  {
    (*(*v15 + 80))(v15);
    v4 = *v5;
  }

  v16 = v4[555];
  if (v16)
  {
    (*(*v16 + 16))(v16);
    *(*v5 + 4440) = 0;
    v4 = *v5;
  }

  v17 = v4[556];
  if (v17)
  {
    (*(*v17 + 16))(v17);
    *(*v5 + 4448) = 0;
    v4 = *v5;
  }

  v18 = v4[479];
  if (v18)
  {
    (*(*v18 + 80))(v18);
    v4 = *v5;
  }

  v19 = v4[478];
  if (v19)
  {
    (*(*v19 + 16))(v19);
    *(*v5 + 3824) = 0;
    v4 = *v5;
  }

  v20 = v4[479];
  if (v20)
  {
    (*(*v20 + 16))(v20);
    *(*v5 + 3832) = 0;
    v4 = *v5;
  }

  v21 = v4[574];
  if (v21)
  {
    (*(*v21 + 16))(v21);
    *(*v5 + 4592) = 0;
    v4 = *v5;
  }

  v22 = v4[575];
  if (v22)
  {
    (*(*v22 + 16))(v22);
    *(*v5 + 4600) = 0;
    v4 = *v5;
  }

  v23 = v4[576];
  if (v23)
  {
    (*(*v23 + 16))(v23);
    *(*v5 + 4608) = 0;
  }

  if (AppleBCMWLANBusInterface::getIO80211FaultReporter(this))
  {
    IO80211FaultReporter = AppleBCMWLANBusInterface::getIO80211FaultReporter(this);
    if (IO80211FaultReporter)
    {
      (*(*IO80211FaultReporter + 16))(IO80211FaultReporter);
    }
  }

  if (AppleBCMWLANBusInterface::getFaultReporter(this))
  {
    FaultReporter = AppleBCMWLANBusInterface::getFaultReporter(this);
    CCFaultReporter::unregisterCallbacks(FaultReporter, this);
    if (FaultReporter)
    {
      (*(*FaultReporter + 16))(FaultReporter);
    }
  }

  if (AppleBCMWLANBusInterface::getLogger(this))
  {
    AppleBCMWLANBusInterface::getLogger(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANBusInterfacePCIe::Stop_Impl(this, this + 72);
    }
  }

  v26 = *(*v5 + 3248);
  if (v26)
  {
    IOPCIDevice::Close(v26, this, 0);
  }

  v27 = IOService::Stop(this, a2, AppleBCMWLANBusInterface::_Dispatch);
  if (AppleBCMWLANBusInterface::getLogger(this))
  {
    AppleBCMWLANBusInterface::getLogger(this);
    if (CCLogStream::shouldLog())
    {
      Logger = AppleBCMWLANBusInterface::getLogger(this);
      CCLogStream::logAlert(Logger, "[dk] %s@%d:fPCIeBus Closed/Stopped, [%p], kret[0x%08x]\n", "Stop_Impl", 3241, *(*(this + 9) + 3248), v27);
    }
  }

  return v27;
}

void AppleBCMWLANBusInterfacePCIe::free(IOService *this)
{
  if (this[1].OSObject::OSObjectInterface::__vftable)
  {
    (this->OSObject::OSMetaClassBase::__vftable[13].retain)(this);
    AppleBCMWLANBusInterfacePCIe::stopOLYHAL(this);
    memset_s(this[1].OSObject::OSObjectInterface::__vftable, 0x1518uLL, 0, 0x1518uLL);
    v2 = this[1].OSObject::OSObjectInterface::__vftable;
    if (v2)
    {
      IOFree(v2, 0x1518uLL);
      this[1].OSObject::OSObjectInterface::__vftable = 0;
    }
  }

  AppleBCMWLANBusInterface::free(this);
}

uint64_t AppleBCMWLANBusInterfacePCIe::stopOLYHAL(AppleBCMWLANBusInterfacePCIe *this)
{
  v2 = *(this + 9);
  v3 = v2[660];
  if (v3)
  {
    (*(*v3 + 16))(v3);
    *(*(this + 9) + 5280) = 0;
    v2 = *(this + 9);
  }

  v4 = v2[661];
  if (v4)
  {
    (*(*v4 + 16))(v4);
    *(*(this + 9) + 5288) = 0;
    v2 = *(this + 9);
  }

  v5 = v2[648];
  if (v5)
  {
    (*(*v5 + 16))(v5);
    *(*(this + 9) + 5184) = 0;
    v2 = *(this + 9);
  }

  v6 = v2[649];
  if (v6)
  {
    (*(*v6 + 16))(v6);
    *(*(this + 9) + 5192) = 0;
  }

  return 0;
}

void AppleBCMWLANBusInterfacePCIe::freeResources(OSObject *this)
{
  ivars = this[1].ivars;
  if (*(ivars + 509))
  {
    IOFreeData();
    *(this[1].ivars + 509) = 0;
    ivars = this[1].ivars;
  }

  v3 = *(ivars + 512);
  if (v3)
  {
    (*(*v3 + 80))(v3);
    ivars = this[1].ivars;
    v4 = *(ivars + 512);
    if (v4)
    {
      (*(*v4 + 16))(v4);
      *(this[1].ivars + 512) = 0;
      ivars = this[1].ivars;
    }
  }

  if (*(ivars + 190))
  {
    *(ivars + 4092);
    IOFreeData();
    *(this[1].ivars + 190) = 0;
  }

  AppleBCMWLANBusInterfacePCIe::destroyFirmwareIPCTrackers(this);
  AppleBCMWLANBusInterfacePCIe::destroyFirmwarePCIeIPC(this);
  v5 = this[1].ivars;
  v6 = *(v5 + 560);
  if (v6)
  {
    (*(*v6 + 16))(v6);
    *(this[1].ivars + 560) = 0;
    v5 = this[1].ivars;
  }

  v7 = *(v5 + 393);
  if (v7)
  {
    (*(*v7 + 16))(v7);
    *(this[1].ivars + 393) = 0;
    v5 = this[1].ivars;
  }

  v8 = *(v5 + 648);
  if (v8)
  {
    (*(*v8 + 16))(v8);
    *(this[1].ivars + 648) = 0;
    v5 = this[1].ivars;
  }

  v9 = *(v5 + 649);
  if (!v9)
  {
    goto LABEL_17;
  }

  (*(*v9 + 16))(v9);
  *(this[1].ivars + 649) = 0;
  while (1)
  {
    v5 = this[1].ivars;
LABEL_17:
    v10 = (v5 + 1504);
    v11 = *(v5 + 188);
    if ((v5 + 1504) == v11)
    {
      break;
    }

    if (*v11[1] != v11 || (v12 = *v11, *(*v11 + 8) != v11))
    {
      __break(1u);
      return;
    }

    *(v12 + 8) = v10;
    *v10 = v12;
    *v11 = 0;
    v11[1] = 0;
    v13 = v11 - 2;
    v14 = *(v11 - 1);
    if (v14)
    {
      (*(*v14 + 16))(v14);
      v13[1] = 0;
    }

    IOFree(v13, 0x20uLL);
  }

  v15 = *(v5 + 352);
  if (v15)
  {
    IOLockFree(v15);
    *(this[1].ivars + 352) = 0;
    v5 = this[1].ivars;
  }

  v16 = *(v5 + 455);
  if (v16)
  {
    (*(*v16 + 16))(v16);
    *(this[1].ivars + 455) = 0;
    v5 = this[1].ivars;
  }

  v17 = *(v5 + 405);
  if (v17)
  {
    (*(*v17 + 72))(v17);
    (*(**(this[1].ivars + 433) + 72))(*(this[1].ivars + 433), *(this[1].ivars + 405));
    v5 = this[1].ivars;
    v18 = *(v5 + 405);
    if (v18)
    {
      (*(*v18 + 16))(v18);
      *(this[1].ivars + 405) = 0;
      v5 = this[1].ivars;
    }
  }

  v19 = *(v5 + 449);
  if (v19)
  {
    (*(*v19 + 80))(v19);
    v5 = this[1].ivars;
    v20 = *(v5 + 449);
    if (v20)
    {
      (*(*v20 + 16))(v20);
      *(this[1].ivars + 449) = 0;
      v5 = this[1].ivars;
    }
  }

  v21 = *(v5 + 450);
  if (v21)
  {
    (*(*v21 + 80))(v21);
    v5 = this[1].ivars;
    v22 = *(v5 + 450);
    if (v22)
    {
      (*(*v22 + 16))(v22);
      *(this[1].ivars + 450) = 0;
      v5 = this[1].ivars;
    }
  }

  v23 = *(v5 + 451);
  if (v23)
  {
    (*(*v23 + 80))(v23);
    v5 = this[1].ivars;
    v24 = *(v5 + 451);
    if (v24)
    {
      (*(*v24 + 16))(v24);
      *(this[1].ivars + 451) = 0;
      v5 = this[1].ivars;
    }
  }

  v25 = *(v5 + 452);
  if (v25)
  {
    (*(*v25 + 80))(v25);
    v5 = this[1].ivars;
    v26 = *(v5 + 452);
    if (v26)
    {
      (*(*v26 + 16))(v26);
      *(this[1].ivars + 452) = 0;
      v5 = this[1].ivars;
    }
  }

  v27 = *(v5 + 454);
  if (v27)
  {
    (*(*v27 + 80))(v27);
    v5 = this[1].ivars;
    v28 = *(v5 + 454);
    if (v28)
    {
      (*(*v28 + 16))(v28);
      *(this[1].ivars + 454) = 0;
      v5 = this[1].ivars;
    }
  }

  v29 = *(v5 + 138);
  if (v29)
  {
    (*(*v29 + 80))(v29);
    v5 = this[1].ivars;
    v30 = *(v5 + 138);
    if (v30)
    {
      (*(*v30 + 16))(v30);
      *(this[1].ivars + 138) = 0;
      v5 = this[1].ivars;
    }
  }

  v31 = *(v5 + 480);
  if (v31)
  {
    (*(*v31 + 80))(v31);
    v5 = this[1].ivars;
    v32 = *(v5 + 480);
    if (v32)
    {
      (*(*v32 + 16))(v32);
      *(this[1].ivars + 480) = 0;
      v5 = this[1].ivars;
    }
  }

  v33 = *(v5 + 481);
  if (v33)
  {
    (*(*v33 + 80))(v33);
    v5 = this[1].ivars;
    v34 = *(v5 + 481);
    if (v34)
    {
      (*(*v34 + 16))(v34);
      *(this[1].ivars + 481) = 0;
      v5 = this[1].ivars;
    }
  }

  v35 = *(v5 + 569);
  if (v35)
  {
    (*(*v35 + 16))(v35);
    *(this[1].ivars + 569) = 0;
    v5 = this[1].ivars;
  }

  v36 = *(v5 + 447);
  if (v36)
  {
    (*(*v36 + 16))(v36);
    *(this[1].ivars + 447) = 0;
    v5 = this[1].ivars;
  }

  v37 = *(v5 + 446);
  if (v37)
  {
    (*(*v37 + 16))(v37);
    *(this[1].ivars + 446) = 0;
    v5 = this[1].ivars;
  }

  v38 = *(v5 + 444);
  if (v38)
  {
    (*(*v38 + 16))(v38);
    *(this[1].ivars + 444) = 0;
    v5 = this[1].ivars;
  }

  v39 = *(v5 + 166);
  if (v39)
  {
    (*(*v39 + 72))(v39);
    v5 = this[1].ivars;
    v40 = *(v5 + 166);
    if (v40)
    {
      (*(*v40 + 16))(v40);
      *(this[1].ivars + 166) = 0;
      v5 = this[1].ivars;
    }
  }

  v41 = *(v5 + 445);
  if (v41)
  {
    (*(*v41 + 16))(v41);
    *(this[1].ivars + 445) = 0;
    v5 = this[1].ivars;
  }

  v42 = *(v5 + 167);
  if (v42)
  {
    (*(*v42 + 72))(v42);
    v5 = this[1].ivars;
    v43 = *(v5 + 167);
    if (v43)
    {
      (*(*v43 + 16))(v43);
      *(this[1].ivars + 167) = 0;
      v5 = this[1].ivars;
    }
  }

  v44 = *(v5 + 448);
  if (v44)
  {
    (*(*v44 + 16))(v44);
    *(this[1].ivars + 448) = 0;
    v5 = this[1].ivars;
  }

  v45 = *(v5 + 136);
  if (v45)
  {
    (*(*v45 + 16))(v45);
    *(this[1].ivars + 136) = 0;
    v5 = this[1].ivars;
  }

  v46 = *(v5 + 137);
  if (v46)
  {
    (*(*v46 + 16))(v46);
    *(this[1].ivars + 137) = 0;
    v5 = this[1].ivars;
  }

  v47 = *(v5 + 139);
  if (v47)
  {
    (*(*v47 + 16))(v47);
    *(this[1].ivars + 139) = 0;
    v5 = this[1].ivars;
  }

  v48 = *(v5 + 140);
  if (v48)
  {
    (*(*v48 + 16))(v48);
    *(this[1].ivars + 140) = 0;
    v5 = this[1].ivars;
  }

  v49 = *(v5 + 141);
  if (v49)
  {
    (*(*v49 + 16))(v49);
    *(this[1].ivars + 141) = 0;
    v5 = this[1].ivars;
  }

  v50 = *(v5 + 142);
  if (v50)
  {
    (*(*v50 + 16))(v50);
    *(this[1].ivars + 142) = 0;
    v5 = this[1].ivars;
  }

  v51 = *(v5 + 442);
  if (v51)
  {
    (*(*v51 + 16))(v51);
    *(this[1].ivars + 442) = 0;
    v5 = this[1].ivars;
  }

  v52 = *(v5 + 441);
  if (v52)
  {
    (*(*v52 + 16))(v52);
    *(this[1].ivars + 441) = 0;
    v5 = this[1].ivars;
  }

  v53 = *(v5 + 440);
  if (v53)
  {
    (*(*v53 + 16))(v53);
    *(this[1].ivars + 440) = 0;
    v5 = this[1].ivars;
  }

  v54 = *(v5 + 439);
  if (v54)
  {
    (*(*v54 + 16))(v54);
    *(this[1].ivars + 439) = 0;
    v5 = this[1].ivars;
  }

  v55 = *(v5 + 443);
  if (v55)
  {
    (*(*v55 + 16))(v55);
    *(this[1].ivars + 443) = 0;
  }

  RxDescriptorEventQueue = AppleBCMWLANBusInterface::getRxDescriptorEventQueue(this);
  if (RxDescriptorEventQueue)
  {
    (*(*RxDescriptorEventQueue + 16))(RxDescriptorEventQueue);
  }

  RxDescriptorCommandQueue = AppleBCMWLANBusInterface::getRxDescriptorCommandQueue(this);
  if (RxDescriptorCommandQueue)
  {
    (*(*RxDescriptorCommandQueue + 16))(RxDescriptorCommandQueue);
  }

  TxDescriptorCommandQueue = AppleBCMWLANBusInterface::getTxDescriptorCommandQueue(this);
  if (TxDescriptorCommandQueue)
  {
    (*(*TxDescriptorCommandQueue + 16))(TxDescriptorCommandQueue);
  }

  TxCommittedCommandDescriptorQueue = AppleBCMWLANBusInterface::getTxCommittedCommandDescriptorQueue(this);
  if (TxCommittedCommandDescriptorQueue)
  {
    (*(*TxCommittedCommandDescriptorQueue + 16))(TxCommittedCommandDescriptorQueue);
  }

  v60 = this[1].ivars;
  v61 = *(v60 + 415);
  if (v61)
  {
    (*(*v61 + 16))(v61);
    *(this[1].ivars + 415) = 0;
    v60 = this[1].ivars;
  }

  v62 = *(v60 + 409);
  if (v62)
  {
    (*(*v62 + 16))(v62);
    *(this[1].ivars + 409) = 0;
    v60 = this[1].ivars;
  }

  v63 = *(v60 + 436);
  if (v63)
  {
    (*(*v63 + 16))(v63);
    *(this[1].ivars + 436) = 0;
    v60 = this[1].ivars;
  }

  v64 = *(v60 + 435);
  if (v64)
  {
    (*(*v64 + 16))(v64);
    *(this[1].ivars + 435) = 0;
    v60 = this[1].ivars;
  }

  v65 = *(v60 + 434);
  if (v65)
  {
    (*(*v65 + 16))(v65);
    *(this[1].ivars + 434) = 0;
    v60 = this[1].ivars;
  }

  v66 = *(v60 + 433);
  if (v66)
  {
    (*(*v66 + 16))(v66);
    *(this[1].ivars + 433) = 0;
  }

  AppleBCMWLANBusInterface::freeResources(this);
}

void *AppleBCMWLANBusInterfacePCIe::destroyFirmwareIPCTrackers(OSObject *this)
{
  *(this[1].ivars + 1308) = 1;
  ivars = this[1].ivars;
  v3 = *(ivars + 444);
  if (v3)
  {
    AppleBCMWLANHashtable::flush(v3, this, AppleBCMWLANBusInterfacePCIe::flushTrackedControlIO, 0);
    ivars = this[1].ivars;
  }

  v4 = *(ivars + 445);
  if (v4)
  {
    AppleBCMWLANHashtable::flush(v4, this, AppleBCMWLANBusInterfacePCIe::flushTrackedControlIO, 0);
    ivars = this[1].ivars;
  }

  v5 = *(ivars + 166);
  if (v5)
  {
    (*(*v5 + 80))(v5);
    ivars = this[1].ivars;
  }

  v6 = *(ivars + 446);
  if (v6)
  {
    AppleBCMWLANHashtable::flush(v6, this, AppleBCMWLANBusInterfacePCIe::flushTrackedRxDataIO, 0);
    ivars = this[1].ivars;
  }

  v7 = *(ivars + 447);
  if (v7)
  {
    AppleBCMWLANHashtable::flush(v7, this, AppleBCMWLANBusInterfacePCIe::flushTrackedTxDataIO, 0);
    ivars = this[1].ivars;
  }

  v8 = *(ivars + 136);
  if (v8)
  {
    AppleBCMWLANHashtable::flush(v8, this, AppleBCMWLANBusInterfacePCIe::flushTrackedFlowCreationRequest, 0);
    ivars = this[1].ivars;
  }

  v9 = *(ivars + 137);
  if (v9)
  {
    AppleBCMWLANHashtable::flush(v9, this, AppleBCMWLANBusInterfacePCIe::flushTrackedFlowDeleteRequest, 0);
    ivars = this[1].ivars;
  }

  v10 = *(ivars + 139);
  if (v10)
  {
    AppleBCMWLANHashtable::flush(v10, this, AppleBCMWLANBusInterfacePCIe::flushTrackedH2DRingCreationRequest, 0);
    ivars = this[1].ivars;
  }

  v11 = *(ivars + 140);
  if (v11)
  {
    AppleBCMWLANHashtable::flush(v11, this, AppleBCMWLANBusInterfacePCIe::flushTrackedH2DRingDeleteRequest, 0);
    ivars = this[1].ivars;
  }

  v12 = *(ivars + 141);
  if (v12)
  {
    AppleBCMWLANHashtable::flush(v12, this, AppleBCMWLANBusInterfacePCIe::flushTrackedD2HRingCreationRequest, 0);
    ivars = this[1].ivars;
  }

  v13 = *(ivars + 142);
  if (v13)
  {
    AppleBCMWLANHashtable::flush(v13, this, AppleBCMWLANBusInterfacePCIe::flushTrackedD2HRingDeleteRequest, 0);
    ivars = this[1].ivars;
  }

  result = *(ivars + 448);
  if (result)
  {
    result = AppleBCMWLANHashtable::flush(result, this, AppleBCMWLANBusInterfacePCIe::flushTrackedRxDebugIO, 0);
    ivars = this[1].ivars;
  }

  *(ivars + 1308) = 0;
  return result;
}

void *AppleBCMWLANBusInterfacePCIe::destroyFirmwarePCIeIPC(AppleBCMWLANBusInterfacePCIe *this)
{
  result = AppleBCMWLANBusInterface::getLogger(this);
  if (result)
  {
    AppleBCMWLANBusInterface::getLogger(this);
    result = CCLogStream::shouldLog();
    if (result)
    {
      result = AppleBCMWLANBusInterfacePCIe::destroyFirmwarePCIeIPC(this);
    }
  }

  v3 = *(this + 9);
  if (*(v3 + 1306) == 1)
  {
    *(v3 + 1306) = 0;
    v4 = *(this + 9);
    v5 = *(v4 + 1336);
    v6 = v4;
    if (v5)
    {
      (*(*v5 + 80))(v5);
      v6 = *(this + 9);
    }

    v7 = *(v6 + 4480);
    if (v7)
    {
      AppleBCMWLANPCIeSkywalk::detachRxSubmFwQueue(v7);
      v8 = *(this + 9);
      if (*(v8 + 376))
      {
        v9 = 602;
        do
        {
          v10 = *(v8 + 8 * v9);
          if (v10)
          {
            v11 = *(v8 + 4480);
            v12 = (*(*v10 + 392))(v10);
            v13 = (*(**(*(this + 9) + 8 * v9) + 368))();
            v14 = *(*(this + 9) + 8 * v9);
            v15 = (*(*v14 + 208))(v14);
            isLowLatencyRing = AppleBCMWLANPCIeTransmitFlowRing::isLowLatencyRing(*(*(this + 9) + 8 * v9));
            AppleBCMWLANPCIeSkywalk::detachTxSubmFwQueue(v11, v12, v13, v15, isLowLatencyRing);
            v8 = *(this + 9);
          }

          if ((v9 - 602) > 0x2A)
          {
            break;
          }

          v17 = v9++ - 601;
        }

        while (*(v8 + 376) > v17);
      }

      if (*(v8 + 4534))
      {
        AppleBCMWLANPCIeSkywalk::destroyLowLatencyCompRing(*(v8 + 4480), 1u);
        AppleBCMWLANPCIeSkywalk::destroyLowLatencyCompRing(*(*(this + 9) + 4480), 0);
        v8 = *(this + 9);
      }

      AppleBCMWLANPCIeSkywalk::detachRxCompFwQueue(*(v8 + 4480));
      AppleBCMWLANPCIeSkywalk::detachTxCompFwQueue(*(*(this + 9) + 4480));
    }

    AppleBCMWLANBusInterfacePCIe::flushPendingTxIOs(this);
    (*(**(*(this + 9) + 3592) + 72))(*(*(this + 9) + 3592));
    *(*(this + 9) + 3989) = 0;
    v18 = *(this + 9);
    *(v18 + 1192) = 0;
    *(v18 + 1160) = 0u;
    *(v18 + 1176) = 0u;
    *(v18 + 1144) = 0u;
    v19 = *(this + 9);
    *(v19 + 3456) = 0;
    *(v19 + 3440) = 0u;
    *(v19 + 3424) = 0u;
    *(v19 + 3408) = 0u;
    *(v19 + 3392) = 0u;
    *(v19 + 3376) = 0u;
    v20 = *(this + 9);
    v21 = *(v20 + 3640);
    if (v21)
    {
      AppleBCMWLANPCIeDoorbell::cancelRing(v21);
      v20 = *(this + 9);
    }

    v22 = (v20 + 4120);
    result = *(v20 + 4120);
    if ((v20 + 4120) != result)
    {
      while (*result[1] == result)
      {
        v23 = *result;
        if (*(*result + 8) != result)
        {
          break;
        }

        *(v23 + 8) = v22;
        *v22 = v23;
        *result = 0;
        result[1] = 0;
        ContextFromLink = AppleBCMWLANDynamicRingOperationContext::getContextFromLink(result);
        RingOperationCompletionPtr = AppleBCMWLANDynamicRingOperationContext::getRingOperationCompletionPtr(ContextFromLink);
        v26 = OUTLINED_FUNCTION_17(ContextFromLink);
        if (v26)
        {
          (*(*v26 + 16))(v26);
        }

        (*(RingOperationCompletionPtr + 8))(*RingOperationCompletionPtr, 0, 3758097131, *(RingOperationCompletionPtr + 16));
        if (ContextFromLink)
        {
          (*(*ContextFromLink + 16))(ContextFromLink);
        }

        v20 = *(this + 9);
        v22 = (v20 + 4120);
        result = *(v20 + 4120);
        if ((v20 + 4120) == result)
        {
          goto LABEL_27;
        }
      }

      goto LABEL_77;
    }

LABEL_27:
    v27 = (v20 + 4136);
    result = *(v20 + 4136);
    if ((v20 + 4136) != result)
    {
      while (*result[1] == result)
      {
        v28 = *result;
        if (*(*result + 8) != result)
        {
          break;
        }

        *(v28 + 8) = v27;
        *v27 = v28;
        *result = 0;
        result[1] = 0;
        v29 = AppleBCMWLANDynamicRingOperationContext::getContextFromLink(result);
        v30 = AppleBCMWLANDynamicRingOperationContext::getRingOperationCompletionPtr(v29);
        CompletionRingPtr = AppleBCMWLANDynamicRingOperationContext::getCompletionRingPtr(v29);
        if (CompletionRingPtr)
        {
          (*(*CompletionRingPtr + 16))(CompletionRingPtr);
        }

        (*(v30 + 8))(*v30, 0, 3758097131, *(v30 + 16));
        if (v29)
        {
          (*(*v29 + 16))(v29);
        }

        v20 = *(this + 9);
        v27 = (v20 + 4136);
        result = *(v20 + 4136);
        if ((v20 + 4136) == result)
        {
          goto LABEL_35;
        }
      }

      goto LABEL_77;
    }

LABEL_35:
    v32 = (v20 + 4152);
    result = *(v20 + 4152);
    if ((v20 + 4152) != result)
    {
      while (*result[1] == result)
      {
        v33 = *result;
        if (*(*result + 8) != result)
        {
          break;
        }

        *(v33 + 8) = v32;
        *v32 = v33;
        *result = 0;
        result[1] = 0;
        v34 = AppleBCMWLANDynamicRingOperationContext::getContextFromLink(result);
        v35 = AppleBCMWLANDynamicRingOperationContext::getRingOperationCompletionPtr(v34);
        v36 = OUTLINED_FUNCTION_17(v34);
        (*(v35 + 8))(*v35, v36, 0, *(v35 + 16));
        if (v34)
        {
          (*(*v34 + 16))(v34);
        }

        v20 = *(this + 9);
        v32 = (v20 + 4152);
        result = *(v20 + 4152);
        if ((v20 + 4152) == result)
        {
          goto LABEL_41;
        }
      }

      goto LABEL_77;
    }

LABEL_41:
    v37 = (v20 + 4168);
    result = *(v20 + 4168);
    if ((v20 + 4168) != result)
    {
      while (*result[1] == result)
      {
        v38 = *result;
        if (*(*result + 8) != result)
        {
          break;
        }

        *(v38 + 8) = v37;
        *v37 = v38;
        *result = 0;
        result[1] = 0;
        v39 = AppleBCMWLANDynamicRingOperationContext::getContextFromLink(result);
        v40 = AppleBCMWLANDynamicRingOperationContext::getRingOperationCompletionPtr(v39);
        v41 = AppleBCMWLANDynamicRingOperationContext::getCompletionRingPtr(v39);
        (*(v40 + 8))(*v40, v41, 0, *(v40 + 16));
        if (v39)
        {
          (*(*v39 + 16))(v39);
        }

        v20 = *(this + 9);
        v37 = (v20 + 4168);
        result = *(v20 + 4168);
        if ((v20 + 4168) == result)
        {
          goto LABEL_47;
        }
      }

LABEL_77:
      __break(1u);
      return result;
    }

LABEL_47:
    (*(**(v20 + 3472) + 56))(*(v20 + 3472), AppleBCMWLANBusInterfacePCIe::disableSubmissionRingGated, *(v20 + 328), *(v20 + 3464), 0, 0);
    (*(**(*(this + 9) + 3472) + 56))(*(*(this + 9) + 3472), AppleBCMWLANBusInterfacePCIe::disableCompletionRingGated, *(*(this + 9) + 336), *(*(this + 9) + 3464), 0, 0);
    (*(**(*(this + 9) + 3472) + 56))(*(*(this + 9) + 3472), AppleBCMWLANBusInterfacePCIe::disableCompletionRingGated, *(*(this + 9) + 360), *(*(this + 9) + 3464), 0, 0);
    (*(**(*(this + 9) + 3472) + 56))(*(*(this + 9) + 3472), AppleBCMWLANBusInterfacePCIe::disableCompletionRingGated, *(*(this + 9) + 352), *(*(this + 9) + 3464), 0, 0);
    (*(**(*(this + 9) + 3472) + 56))(*(*(this + 9) + 3472), AppleBCMWLANBusInterfacePCIe::disableCompletionRingGated, *(*(this + 9) + 320), *(*(this + 9) + 3464), 0, 0);
    (*(**(*(this + 9) + 3472) + 56))(*(*(this + 9) + 3472), AppleBCMWLANBusInterfacePCIe::disableSubmissionRingGated, *(*(this + 9) + 344), *(*(this + 9) + 3464), 0, 0);
    (*(**(*(this + 9) + 3472) + 56))(*(*(this + 9) + 3472), AppleBCMWLANBusInterfacePCIe::disableSubmissionRingGated, *(*(this + 9) + 312), *(*(this + 9) + 3464), 0, 0);
    v42 = *(this + 9);
    v43 = *(v42 + 328);
    if (v43)
    {
      (*(*v43 + 16))(v43);
      *(*(this + 9) + 328) = 0;
      v42 = *(this + 9);
    }

    v44 = *(v42 + 336);
    if (v44)
    {
      (*(*v44 + 16))(v44);
      *(*(this + 9) + 336) = 0;
      v42 = *(this + 9);
    }

    v45 = *(v42 + 360);
    if (v45)
    {
      (*(*v45 + 16))(v45);
      *(*(this + 9) + 360) = 0;
      v42 = *(this + 9);
    }

    v46 = *(v42 + 352);
    if (v46)
    {
      (*(*v46 + 16))(v46);
      *(*(this + 9) + 352) = 0;
      v42 = *(this + 9);
    }

    v47 = *(v42 + 320);
    if (v47)
    {
      (*(*v47 + 16))(v47);
      *(*(this + 9) + 320) = 0;
      v42 = *(this + 9);
    }

    v48 = *(v42 + 344);
    if (v48)
    {
      (*(*v48 + 16))(v48);
      *(*(this + 9) + 344) = 0;
      v42 = *(this + 9);
    }

    v49 = *(v42 + 312);
    if (v49)
    {
      (*(*v49 + 16))(v49);
      *(*(this + 9) + 312) = 0;
      v42 = *(this + 9);
    }

    if (*(v42 + 376))
    {
      v50 = 602;
      do
      {
        v51 = v50 - 602;
        if (*(v42 + 8 * v50))
        {
          AppleBCMWLANBusInterfacePCIe::invalidateFlowId(this, v51);
          v52 = *(*(this + 9) + 8 * v50);
          (*(*v52 + 72))(v52);
          (*(**(*(this + 9) + 3464) + 72))(*(*(this + 9) + 3464), *(*(this + 9) + 8 * v50));
          AppleBCMWLANCallbackEventSource::signalCallbackNeeded(*(*(this + 9) + 3240));
          v42 = *(this + 9);
          v53 = *(v42 + 8 * v50);
          if (v53)
          {
            (*(*v53 + 16))(v53);
            *(*(this + 9) + 8 * v50) = 0;
            v42 = *(this + 9);
          }
        }

        if (v51 > 0x2A)
        {
          break;
        }

        v54 = v50++ - 601;
      }

      while (*(v42 + 376) > v54);
    }

    *(v42 + 4620) = 0;
    AppleBCMWLANBusInterfacePCIe::removeDARTMappings(this);
    *(*(this + 9) + 2832) = 0;
    v55 = *(*(this + 9) + 3504);
    if (v55)
    {
      (*(*v55 + 16))(v55);
      *(*(this + 9) + 3504) = 0;
    }

    v56 = 0;
    *(v4 + 3376) = 0;
    do
    {
      v57 = *(this + 9) + (v56 >> 3);
      *(v57 + 5168) &= ~(1 << (v56 & 7));
      v58 = *(this + 9) + (v56 >> 3);
      *(v58 + 5174) &= ~(1 << (v56 & 7));
    }

    while (v56++ < 0x2B);
    result = AppleBCMWLANBusInterface::getLogger(this);
    if (result)
    {
      AppleBCMWLANBusInterface::getLogger(this);
      result = CCLogStream::shouldLog();
      if (result)
      {
        return AppleBCMWLANBusInterfacePCIe::destroyFirmwarePCIeIPC(this);
      }
    }
  }

  return result;
}

OSObject *AppleBCMWLANBusInterfacePCIe::newTxBuffer(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = (*(*a1 + 912))(a1) + a2;

  return AppleBCMWLANTxBuffer::withOptions(a1, v5, a3);
}

OSObject *non-virtual thunk toAppleBCMWLANBusInterfacePCIe::newTxBuffer(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a1 - 48;
  v5 = (*(*(a1 - 48) + 912))(a1 - 48) + a2;

  return AppleBCMWLANTxBuffer::withOptions(v4, v5, a3);
}

uint64_t AppleBCMWLANBusInterfacePCIe::validateWorkQueue(AppleBCMWLANBusInterfacePCIe *this, const char *a2, int a3)
{
  result = (*(**(*(this + 9) + 3464) + 144))(*(*(this + 9) + 3464));
  if ((result & 1) == 0)
  {
    IOLog("BusInterfacePCIe: thread not on main dispatch queue: function %s line %u", a2, a3);
    panic("AppleBCMWLANBusInterfacePCIe: validateWorkQueue failed %s:%u\n", a2, a3);
  }

  return result;
}

uint64_t AppleBCMWLANBusInterfacePCIe::attachPCIeBusGated(AppleBCMWLANBusInterfacePCIe *this, IOPCIDevice *a2)
{
  if (AppleBCMWLANBusInterface::getLogger(this))
  {
    AppleBCMWLANBusInterface::getLogger(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANBusInterfacePCIe::attachPCIeBusGated();
      if (a2)
      {
        goto LABEL_4;
      }

LABEL_57:
      v10 = 3758097088;
      if (AppleBCMWLANBusInterface::getLogger(this))
      {
        AppleBCMWLANBusInterface::getLogger(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANBusInterfacePCIe::attachPCIeBusGated(this);
          return 3758097088;
        }
      }

      return v10;
    }
  }

  if (!a2)
  {
    goto LABEL_57;
  }

LABEL_4:
  (*(*this + 1208))(this, "attachPCIeBusGated", 3690);
  if (AppleBCMWLANBusInterface::getLogger(this))
  {
    AppleBCMWLANBusInterface::getLogger(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANBusInterfacePCIe::attachPCIeBusGated();
    }
  }

  v5 = this + 72;
  v4 = *(this + 9);
  if (*(v4 + 3248) == a2)
  {
    return 0;
  }

  *(v4 + 3248) = a2;
  (*(**(*v5 + 3248) + 8))(*(*v5 + 3248));
  v6 = *v5;
  if ((*(*v5 + 3236) & 1) == 0)
  {
    (*(**(v6 + 3472) + 88))(*(v6 + 3472), v6 + 3248);
    v6 = *v5;
  }

  (*(**(v6 + 3600) + 72))(*(v6 + 3600));
  v7 = (*(this + 9) + 1252);
  v7[1] = 0u;
  v7[2] = 0u;
  *v7 = 0u;
  *(*(this + 9) + 4492) = 0;
  AppleBCMWLANBusInterfacePCIe::startPM(this, *(*(this + 9) + 3248));
  *(*(this + 9) + 3352) = AppleBCMWLANChipConfigSpace::withPCIDevice(a2, *(*(this + 9) + 3144), v8);
  if (*(*(this + 9) + 3352))
  {
    AppleBCMWLANBusInterfacePCIe::identifyDevice(this);
    v9 = AppleBCMWLANBusInterfacePCIe::configureDevice(this);
    if (v9)
    {
      v10 = v9;
      if (AppleBCMWLANBusInterface::getLogger(this))
      {
        AppleBCMWLANBusInterface::getLogger(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANBusInterfacePCIe::attachPCIeBusGated(this);
        }
      }

      return v10;
    }

    v11 = *v5;
    *(v11 + 3312) = chipNumberFromDeviceID(*(*v5 + 3334));
    *(*v5 + 3280) = AppleBCMWLANChipManagerPCIe::withChip(*(*v5 + 3312), *(*v5 + 3336));
    v12 = *(*v5 + 3280);
    if (v12)
    {
      *(*v5 + 4488) = AppleBCMWLANChipManagerPCIe::getMailboxIntMaskRegisterOffset(v12);
      *(*v5 + 4492) = AppleBCMWLANChipManagerPCIe::getMailboxIntStatusRegisterOffset(*(*v5 + 3280));
      if ((*(**(*v5 + 3280) + 136))(*(*v5 + 3280)))
      {
        v13 = 640;
      }

      else
      {
        v13 = 384;
      }

      *(*v5 + 4476) = v13;
      v14 = *v5;
      if (*(*v5 + 2824) == 1)
      {
        v15 = AppleBCMWLANBusInterfacePCIe::detectSabotage(this);
        if (v15)
        {
          v10 = v15;
          if (AppleBCMWLANBusInterface::getLogger(this))
          {
            AppleBCMWLANBusInterface::getLogger(this);
            if (CCLogStream::shouldLog())
            {
              AppleBCMWLANBusInterfacePCIe::attachPCIeBusGated(this);
            }
          }

          return v10;
        }

        v14 = *v5;
      }

      v46 = 0;
      if (acquireProperty<OSNumber>(*(v14 + 3248), "IOPCIDeviceMapperPageSize", &v46, 1uLL, "IOService"))
      {
        *(*v5 + 3256) = OSNumber::unsigned64BitValue(v46);
        if (v46)
        {
          (v46->release)(v46);
          v46 = 0;
        }
      }

      else if (AppleBCMWLANBusInterface::getLogger(this))
      {
        AppleBCMWLANBusInterface::getLogger(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANBusInterfacePCIe::attachPCIeBusGated(this);
        }
      }

      v10 = 3758097085;
      if (!*(*v5 + 3256))
      {
        if (!AppleBCMWLANBusInterface::getLogger(this))
        {
          return 3758097097;
        }

        AppleBCMWLANBusInterface::getLogger(this);
        if (!CCLogStream::shouldLog())
        {
          return 3758097097;
        }

        AppleBCMWLANBusInterfacePCIe::attachPCIeBusGated(this);
        return 3758097097;
      }

      *(*v5 + 3360) = AppleBCMWLANChipBackplane::withConfigAndMap(*(*v5 + 3352), 0, *(*v5 + 3280), *(*v5 + 3144), v16);
      if (*(*v5 + 3360))
      {
        *(*v5 + 3368) = AppleBCMWLANChipMemory::withMap(0, *(*v5 + 3280), *(*v5 + 3144), v17);
        if (*(*v5 + 3368))
        {
          AppleBCMWLANBusInterfacePCIe::checkErrors(this);
          if (AppleBCMWLANBusInterfacePCIe::readOTP(this))
          {
            return 3758097102;
          }

          v18 = (*(*this + 904))(this, this, *(*this + 144), 0);
          if (v18)
          {
            v19 = v18;
            if (AppleBCMWLANBusInterface::getLogger(this))
            {
              AppleBCMWLANBusInterface::getLogger(this);
              if (CCLogStream::shouldLog())
              {
                AppleBCMWLANBusInterfacePCIe::attachPCIeBusGated(this);
              }
            }

            return v19;
          }

          v20 = AppleBCMWLANBusInterfacePCIe::publishHWIdentifiers(this);
          if (v20)
          {
            v19 = v20;
            if (AppleBCMWLANBusInterface::getLogger(this))
            {
              AppleBCMWLANBusInterface::getLogger(this);
              if (CCLogStream::shouldLog())
              {
                AppleBCMWLANBusInterfacePCIe::attachPCIeBusGated(this);
              }
            }

            return v19;
          }

          if ((*(*this + 680))(this, "M", "TPHN", 0))
          {
            v21 = (*(*this + 680))(this, "m", "1.7", 0);
          }

          else
          {
            v21 = 0;
          }

          v45 = 1;
          v44 = 0;
          IOParseBootArgNumber("wlan.debug.check-hwlimits", &v45, 1);
          IOParseBootArgNumber("wlan.debug.check-hwlimits-forced", &v44, 1);
          if (v45 == 1 && ((v21 & 1) != 0 || v44 == 1))
          {
            AppleBCMWLANChipManagerPCIe::setAWDLSupported(*(*(this + 9) + 3280), 0);
            if (AppleBCMWLANBusInterface::getLogger(this))
            {
              AppleBCMWLANBusInterface::getLogger(this);
              if (CCLogStream::shouldLog())
              {
                AppleBCMWLANBusInterfacePCIe::attachPCIeBusGated(this);
              }
            }
          }

          if ((AppleBCMWLANUtil::getHwFeatureFlags(this, "IOService", v22) & 2) != 0)
          {
            AppleBCMWLANChipManagerPCIe::setRangingSupport(*(*v5 + 3280), 0);
          }

          *(*v5 + 3344) = OSDictionary::withCapacity(3u);
          if (*(*v5 + 3344))
          {
            if (AppleBCMWLANChipManagerPCIe::isAWDLSupported(*(*v5 + 3280)))
            {
              OSDictionary::setObject(*(*v5 + 3344), "awdl", kOSBooleanTrue);
            }

            if (AppleBCMWLANChipManagerPCIe::isRangingSupported(*(*v5 + 3280)))
            {
              OSDictionary::setObject(*(*v5 + 3344), "ranging", kOSBooleanTrue);
            }

            v23 = (*(*this + 984))(this);
            setPropertyHelper(v23, "WiFiCapability", *(*(this + 9) + 3344));
            if (AppleBCMWLANBusInterface::getLogger(this))
            {
              AppleBCMWLANBusInterface::getLogger(this);
              if (CCLogStream::shouldLog())
              {
                AppleBCMWLANBusInterfacePCIe::attachPCIeBusGated(this, this + 72);
              }
            }
          }

          else if (AppleBCMWLANBusInterface::getLogger(this))
          {
            AppleBCMWLANBusInterface::getLogger(this);
            if (CCLogStream::shouldLog())
            {
              AppleBCMWLANBusInterfacePCIe::attachPCIeBusGated(this);
            }
          }

          v26 = AppleBCMWLANBusInterfacePCIe::fillIOPool(this, *(*(this + 9) + 3512), 0x10, 2048, 2, v24, v25);
          if (v26)
          {
            return v26;
          }

          v26 = AppleBCMWLANBusInterfacePCIe::fillIOPool(this, *(*(this + 9) + 3520), 0x80, 2048, 1, v27, v28);
          if (v26)
          {
            return v26;
          }

          *(*(this + 9) + 2840) = 0;
          v31 = *(this + 9);
          v32 = *(v31 + 2884);
          *(v31 + 2840) = v32;
          v26 = AppleBCMWLANBusInterfacePCIe::fillIOPool(this, *(*(this + 9) + 3528), v32, 2048, 2, v29, v30);
          if (v26)
          {
            return v26;
          }

          v26 = AppleBCMWLANBusInterfacePCIe::fillIOPool(this, *(*(this + 9) + 3544), 0x10, 2048, 1, v33, v34);
          if (v26)
          {
            return v26;
          }

          if (AppleBCMWLANBusInterfacePCIe::attachPCIeBusGated(IOPCIDevice *)::getInterruptAttempts >= 3)
          {
            AppleBCMWLANBusInterfacePCIe::attachPCIeBusGated(this);
          }

          v35 = *v5;
          if (*(*v5 + 3264))
          {
            if (AppleBCMWLANBusInterface::getLogger(this))
            {
              AppleBCMWLANBusInterface::getLogger(this);
              if (CCLogStream::shouldLog())
              {
                AppleBCMWLANBusInterfacePCIe::attachPCIeBusGated(this);
              }
            }
          }

          else
          {
            action = 0xAAAAAAAAAAAAAAAALL;
            interruptType = 0;
            *(*v5 + 3496) = (*(**(v35 + 3464) + 256))(*(v35 + 3464));
            if (!IOInterruptDispatchSource::GetInterruptType(*(*v5 + 3248), 0, &interruptType))
            {
              v41 = 0;
              while ((interruptType & 0x10000) == 0)
              {
                if (IOInterruptDispatchSource::GetInterruptType(*(*v5 + 3248), ++v41, &interruptType))
                {
                  goto LABEL_118;
                }
              }

              v26 = IOInterruptDispatchSource::Create(*(*v5 + 3248), v41, *(*v5 + 3496), (*v5 + 3264));
              if (v26)
              {
                ++AppleBCMWLANBusInterfacePCIe::attachPCIeBusGated(IOPCIDevice *)::getInterruptAttempts;
                return v26;
              }
            }

LABEL_118:
            v26 = AppleBCMWLANBusInterfacePCIe::CreateActionInterruptOccurred(this, 8uLL, &action);
            if (v26)
            {
              return v26;
            }

            v26 = IOInterruptDispatchSource::SetHandler(*(*v5 + 3264), action, 0);
            if (v26)
            {
              return v26;
            }
          }

          AppleBCMWLANChipBackplane::writePCIeCoreReg32(*(*v5 + 3360), *(*v5 + 4488), 0);
          AppleBCMWLANChipBackplane::writePCIeCoreReg32(*(*v5 + 3360), *(*v5 + 4492), 0xFFu);
          isBootMSISupported = AppleBCMWLANChipManagerPCIe::isBootMSISupported(*(*v5 + 3280));
          v37 = *v5;
          if (isBootMSISupported && (*(v37 + 3709) & 1) == 0)
          {
            AppleBCMWLANChipConfigSpace::writeReg32(*(v37 + 3352), 0x94u, 0);
            v37 = *v5;
          }

          AppleBCMWLANChipBackplane::writePCIeCoreReg32(*(v37 + 3360), 0x120u, 0x814u);
          AppleBCMWLANChipBackplane::writePCIeCoreReg32(*(*v5 + 3360), 0x124u, 0xFFFFFFFF);
          if (*(*v5 + 3264))
          {
            AppleBCMWLANBusInterfacePCIe::logPowerStateTransition(this, *(*v5 + 1224), 3, 0);
            AppleBCMWLANBusInterfacePCIe::configurePTM(this, 1);
            *(*(this + 9) + 4636) = 0;
            *(*(this + 9) + 3725) = 0;
            *(*(this + 9) + 3724) = 0;
            *(*(this + 9) + 3768) = 0;
            AppleBCMWLANBusInterfacePCIe::attachPCIeBusGated(IOPCIDevice *)::getInterruptAttempts = 0;
            *(*(this + 9) + 4580) = 0;
            *(*(this + 9) + 4006) = 0;
            v38 = *(this + 9);
            v39 = *(v38 + 3656);
            if (v39)
            {
              (*(*v39 + 16))(v39);
              *(*v5 + 3656) = 0;
              v38 = *v5;
            }

            if (*(v38 + 3236) == 1)
            {
              *(v38 + 3706) = 0;
              AppleBCMWLANChipBackplane::setPCIeLinkState(*(*v5 + 3360), 0);
            }

            return 0;
          }

          if (AppleBCMWLANBusInterface::getLogger(this))
          {
            AppleBCMWLANBusInterface::getLogger(this);
            if (CCLogStream::shouldLog())
            {
              AppleBCMWLANBusInterfacePCIe::attachPCIeBusGated(this);
            }
          }

          ++AppleBCMWLANBusInterfacePCIe::attachPCIeBusGated(IOPCIDevice *)::getInterruptAttempts;
          return 3758097119;
        }

        else if (AppleBCMWLANBusInterface::getLogger(this))
        {
          AppleBCMWLANBusInterface::getLogger(this);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANBusInterfacePCIe::attachPCIeBusGated(this);
          }
        }
      }

      else if (AppleBCMWLANBusInterface::getLogger(this))
      {
        AppleBCMWLANBusInterface::getLogger(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANBusInterfacePCIe::attachPCIeBusGated(this);
        }
      }
    }

    else
    {
      v10 = 3758097126;
      if (AppleBCMWLANBusInterface::getLogger(this))
      {
        AppleBCMWLANBusInterface::getLogger(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANBusInterfacePCIe::attachPCIeBusGated(this);
          return 3758097126;
        }
      }
    }
  }

  else
  {
    v10 = 3758097085;
    if (AppleBCMWLANBusInterface::getLogger(this))
    {
      AppleBCMWLANBusInterface::getLogger(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANBusInterfacePCIe::attachPCIeBusGated(this);
      }
    }
  }

  return v10;
}