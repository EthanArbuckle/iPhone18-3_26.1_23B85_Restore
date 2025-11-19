AppleBCMWLANCore ***AppleBCMWLANCore::initialize6GCapabilities(AppleBCMWLANCore *this)
{
  result = *(*(this + 9) + 5464);
  if (result)
  {
    v3 = AppleBCMWLANConfigManager::determine6GConfiguration(result);
    result = (*(*this + 1952))(this);
    if (v3)
    {
      if (result)
      {
        (*(*this + 1952))(this);
        result = CCLogStream::shouldLog();
        if (result)
        {
          return AppleBCMWLANCore::initialize6GCapabilities(this);
        }
      }
    }

    else if (result)
    {
      (*(*this + 1952))(this);
      result = CCLogStream::shouldLog();
      if (result)
      {
        return AppleBCMWLANCore::initialize6GCapabilities(this);
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::configureAvgRssiParamsForAssociatedSleepEntry(AppleBCMWLANCore *this)
{
  if (IO80211BssManager::isAssociatedToAdhoc(*(*(this + 9) + 5432)))
  {
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::configureAvgRssiParamsForAssociatedSleepEntry(this);
      }
    }

    return 0;
  }

  else
  {
    v11 = 516;
    v3 = (*(*this + 88))(this);
    if ((*(*v3 + 136))(v3))
    {
      v8 = this;
      v9 = AppleBCMWLANCore::handleConfigureAvgRssiParamsAsyncCallback;
      v10 = 0;
      v4 = AppleBCMWLANCommander::sendIOVarSet(*(*(this + 9) + 5408), "rssi_win");
    }

    else
    {
      v5 = *(*(this + 9) + 5408);
      v8 = &v11;
      v9 = 4;
      v4 = AppleBCMWLANCommander::runIOVarSet(v5, "rssi_win", &v8, 0, 0);
    }

    v2 = v4;
    if (v4 != -469794537 && v4 != 0)
    {
      if ((*(*this + 1952))(this))
      {
        (*(*this + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::configureAvgRssiParamsForAssociatedSleepEntry(this, this & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000, &v11, v2);
        }
      }
    }
  }

  return v2;
}

uint64_t *AppleBCMWLANCore::resetClockDrifts(uint64_t *this)
{
  v1 = this[9];
  if (*(v1 + 777) == 1)
  {
    v2 = this;
    this = AppleBCMWLANCommander::runIOVarSet(*(v1 + 5408), "drift_stats_reset", &kNoTxPayload, 0, 0);
    if (this)
    {
      this = (*(*v2 + 1952))(v2);
      if (this)
      {
        (*(*v2 + 1952))(v2);
        this = CCLogStream::shouldLog();
        if (this)
        {
          return AppleBCMWLANCore::resetClockDrifts(v2);
        }
      }
    }
  }

  return this;
}

AppleBCMWLANIOReportingCore *AppleBCMWLANCore::updateInactivityAndSleepCounters(uint64_t *a1, int a2)
{
  mach_continuous_time();
  absolutetime_to_nanoseconds();
  if (a2 == 1)
  {
    v5 = a1 + 9;
    v8 = a1[9];
    v9 = *(v8 + 17712);
    if (!v9)
    {
      goto LABEL_14;
    }

    *(v8 + 17728) -= v9;
    if ((*(*a1 + 1952))(a1))
    {
      (*(*a1 + 1952))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::updateInactivityAndSleepCounters(a1);
      }
    }

    v7 = 17712;
  }

  else
  {
    if (a2)
    {
      goto LABEL_14;
    }

    v5 = a1 + 9;
    v4 = a1[9];
    v6 = *(v4 + 17720);
    if (!v6)
    {
      goto LABEL_14;
    }

    *(v4 + 17736) -= v6;
    if ((*(*a1 + 1952))(a1))
    {
      (*(*a1 + 1952))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::updateInactivityAndSleepCounters(a1);
      }
    }

    v7 = 17720;
  }

  *(*v5 + v7) = 0;
LABEL_14:
  v10 = a1[9];
  result = v10[688];
  if (result)
  {
    return AppleBCMWLANIOReportingCore::updateInactivitySleepStats(result, -v10[2467], v10[2216], v10[2217]);
  }

  return result;
}

uint64_t AppleBCMWLANCore::configureAvgRssiParamsForAssociatedSleepExit(AppleBCMWLANCore *this)
{
  if (IO80211BssManager::isAssociatedToAdhoc(*(*(this + 9) + 5432)))
  {
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::configureAvgRssiParamsForAssociatedSleepExit(this);
      }
    }

    return 0;
  }

  else
  {
    v11 = 520;
    v3 = (*(*this + 88))(this);
    if ((*(*v3 + 136))(v3))
    {
      v8 = this;
      v9 = AppleBCMWLANCore::handleConfigureAvgRssiParamsAsyncCallback;
      v10 = 0;
      v4 = AppleBCMWLANCommander::sendIOVarSet(*(*(this + 9) + 5408), "rssi_win");
    }

    else
    {
      v5 = *(*(this + 9) + 5408);
      v8 = &v11;
      v9 = 4;
      v4 = AppleBCMWLANCommander::runIOVarSet(v5, "rssi_win", &v8, 0, 0);
    }

    v2 = v4;
    if (v4 != -469794537 && v4 != 0)
    {
      if ((*(*this + 1952))(this))
      {
        (*(*this + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::configureAvgRssiParamsForAssociatedSleepExit(this, this & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000, &v11, v2);
        }
      }
    }
  }

  return v2;
}

uint64_t AppleBCMWLANCore::configureLPASExit(AppleBCMWLANCore *this)
{
  if ((*(*this + 1952))(this))
  {
    (*(*this + 1952))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::configureLPASExit(this);
    }
  }

  if ((*(*this + 1952))(this))
  {
    (*(*this + 1952))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::configureLPASExit(this);
    }
  }

  if (AppleBCMWLANCore::configureLPASMode(this, 0))
  {
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::configureLPASExit(this);
      }
    }
  }

  v2 = AppleBCMWLANCore::unConfigurePktFilters(this);
  if (v2)
  {
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::configureLPASExit(this);
      }
    }
  }

  if ((*(*this + 1952))(this))
  {
    (*(*this + 1952))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::configureLPASExit(this);
    }
  }

  return v2;
}

uint64_t AppleBCMWLANCore::configureWoWExit(AppleBCMWLANCore *this)
{
  if ((*(*this + 1952))(this))
  {
    (*(*this + 1952))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::configureWoWExit(this);
    }
  }

  if (AppleBCMWLANKeepAliveOffload::unConfigureKeepAlives(*(*(this + 9) + 5544)))
  {
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::configureWoWExit(this);
      }
    }
  }

  v2 = AppleBCMWLANCore::unConfigurePktFilters(this);
  if (v2)
  {
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::configureWoWExit(this);
      }
    }
  }

  if ((*(*this + 1952))(this))
  {
    (*(*this + 1952))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::configureWoWExit(this);
    }
  }

  return v2;
}

IOLock *AppleBCMWLANCore::configureAssociatedSleepExitParams(AppleBCMWLANCore *this)
{
  v2 = this & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000;
  if ((*(*this + 1952))(this))
  {
    (*(*this + 1952))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::configureAssociatedSleepExitParams(this);
    }
  }

  v3 = *(this + 9);
  v13 = 0;
  v4 = *(v3 + 5408);
  v11 = &v13;
  v12 = 4;
  if (AppleBCMWLANCommander::runIOVarSet(v4, "nolinkup", &v11, 0, 0))
  {
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::configureAssociatedSleepExitParams(this);
      }
    }
  }

  v5 = AppleBCMWLANCore::unconfigureEventBitMaskForAssociatedSleep(this);
  if (v5)
  {
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::configureAssociatedSleepExitParams(this);
      }
    }
  }

  if (AppleBCMWLANCore::featureFlagIsBitSet(this, 39))
  {
    v10 = 0;
    v6 = *(*(this + 9) + 5408);
    v11 = &v10;
    v12 = 4;
    v7 = AppleBCMWLANCommander::runIOVarSet(v6, "lq_max_bcn_thresh", &v11, 0, 0);
    v5 = v7;
    if (v7 != -469794537 && v7 != 0)
    {
      if ((*(*this + 1952))(this))
      {
        (*(*this + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::configureAssociatedSleepExitParams(this, v2, &v10, v5);
        }
      }
    }
  }

  if ((*(*this + 1952))(this))
  {
    (*(*this + 1952))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::configureAssociatedSleepExitParams(this);
    }
  }

  *(*(this + 9) + 776) = 0;
  if ((*(*this + 1952))(this))
  {
    (*(*this + 1952))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::configureAssociatedSleepExitParams(this);
    }
  }

  return v5;
}

uint64_t AppleBCMWLANCore::timeSinceLastActivity_abs(AppleBCMWLANCore *this, unint64_t *a2)
{
  v4 = mach_continuous_time();
  if (a2)
  {
    v5 = *(*(this + 9) + 6536);
    result = *a2 - v5;
    if (*a2 < v5)
    {
      AppleBCMWLANCore::timeSinceLastActivity_abs(this, a2, this + 72, &v10);
      return v10;
    }
  }

  else
  {
    v7 = *(*(this + 9) + 6536);
    v8 = v4 >= v7;
    v9 = v4 - v7;
    if (v8)
    {
      return v9;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::resetInterfacesBegin(AppleBCMWLANCore *this)
{
  v9 = 0;
  v2 = *(this + 9);
  v3 = v2[1411];
  if (v3)
  {
    IO80211Controller::postMessage(this, v3, 0x31u, &v9, 4uLL, 1);
    v2 = *(this + 9);
  }

  v4 = v2[1412];
  if (v4)
  {
    IO80211Controller::postMessage(this, v4, 0x31u, &v9, 4uLL, 1);
    v2 = *(this + 9);
  }

  v5 = v2[3743];
  if (v5)
  {
    IO80211Controller::postMessage(this, v5, 0x31u, &v9, 4uLL, 1);
    v2 = *(this + 9);
  }

  v6 = v2[3744];
  if (v6)
  {
    IO80211Controller::postMessage(this, v6, 0x31u, &v9, 4uLL, 1);
    v2 = *(this + 9);
  }

  v7 = v2[1413];
  if (v7)
  {
    IO80211Controller::postMessage(this, v7, 0x31u, &v9, 4uLL, 1);
  }

  return 0;
}

uint64_t AppleBCMWLANCore::captureRequestCallback(uint64_t *a1, uint64_t a2, _OWORD *a3)
{
  isBusy = CCFaultReporter::isBusy(*(a1[9] + 5536));
  result = (*(*a1 + 1952))(a1);
  if (isBusy)
  {
    if (result)
    {
      (*(*a1 + 1952))(a1);
      result = CCLogStream::shouldLog();
      if (result)
      {
        AppleBCMWLANCore::captureRequestCallback(a1);
        return 0;
      }
    }
  }

  else
  {
    if (result)
    {
      (*(*a1 + 1952))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::captureRequestCallback(a1);
      }
    }

    *(a1[9] + 18424) = *a3;
    v8 = (*(*a1 + 88))(a1);
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 0x40000000;
    v9[2] = ___ZN16AppleBCMWLANCore22captureRequestCallbackEPKcPK11CCTimestamp_block_invoke;
    v9[3] = &__block_descriptor_tmp_2665;
    v9[4] = a1;
    v9[5] = a2;
    return (*(*v8 + 112))(v8, v9);
  }

  return result;
}

uint64_t AppleBCMWLANCore::setLogFlagsCallback(AppleBCMWLANCore *this, unint64_t a2)
{
  if ((*(*this + 1952))(this))
  {
    (*(*this + 1952))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::setLogFlagsCallback(this);
    }
  }

  (*(**(*(this + 9) + 5392) + 264))(*(*(this + 9) + 5392), (a2 >> 13) & 1);
  return 0;
}

uint64_t AppleBCMWLANCore::captureDeviceInfo(IOService *this, OSDictionary **a2)
{
  v4 = OSDictionary::withCapacity(4u);
  v25 = 0;
  property = 0;
  values = OSString::withCString("compatible");
  v5 = OSArray::withObjects(&values, 1u, 0);
  if (!IOService::CopyProviderProperties(this, v5, &v25, 0) && v25)
  {
    v6 = (v25->getCount)(v25);
    Object = OSArray::getObject(v25, v6 - 1);
    v8 = OSMetaClassBase::safeMetaCast(Object, gOSDictionaryMetaClass);
    v9 = OSString::withCString("compatible");
    v10 = OSDictionary::getObject(v8, v9);
    v11 = OSMetaClassBase::safeMetaCast(v10, gOSDataMetaClass);
    if (v11)
    {
      BytesNoCopy = OSData::getBytesNoCopy(v11);
    }

    else
    {
      BytesNoCopy = "UNKNOWN";
    }

    v13 = OSString::withCString(BytesNoCopy);
    OSDictionary::setObject(v4, "Platform", v13);
    if (v13)
    {
      (v13->release)(v13);
    }

    if (v25)
    {
      (v25->release)(v25);
      v25 = 0;
    }

    if (v9)
    {
      (v9->release)(v9);
    }
  }

  if (values)
  {
    (values->release)(values);
    values = 0;
  }

  if (v5)
  {
    (v5->release)(v5);
  }

  if (!IOService::SearchProperty(this, "IOPlatformSerialNumber", "IOService", 1uLL, &property, 0))
  {
    v14 = OSMetaClassBase::safeMetaCast(property, gOSStringMetaClass);
    if (v14)
    {
      OSDictionary::setObject(v4, "Serial", v14);
    }

    if (property)
    {
      (property->release)(property);
      property = 0;
    }
  }

  if (!IOService::SearchProperty(this, "ModuleInfo", "IOService", 1uLL, &property, 0))
  {
    v15 = OSMetaClassBase::safeMetaCast(property, gOSStringMetaClass);
    if (v15)
    {
      OSDictionary::setObject(v4, "Module", v15);
    }

    if (property)
    {
      (property->release)(property);
      property = 0;
    }
  }

  v16 = OSString::withCString(&this[1].OSObject::OSObjectInterface::__vftable[155].free);
  OSDictionary::setObject(v4, "Module Instance", v16);
  if (v16)
  {
    (v16->release)(v16);
  }

  if (!IOService::SearchProperty(this, "vendor-id", "IOService", 1uLL, &property, 0))
  {
    v17 = OSMetaClassBase::safeMetaCast(property, gOSStringMetaClass);
    if (v17)
    {
      OSDictionary::setObject(v4, "Vendor", v17);
    }

    if (property)
    {
      (property->release)(property);
      property = 0;
    }
  }

  if (!IOService::SearchProperty(this, "FirmwareVersion", "IOService", 1uLL, &property, 0))
  {
    v18 = OSMetaClassBase::safeMetaCast(property, gOSStringMetaClass);
    if (v18)
    {
      OSDictionary::setObject(v4, "Firmware Version", v18);
    }

    if (property)
    {
      (property->release)(property);
      property = 0;
    }
  }

  if (!IOService::SearchProperty(this, "OS Build Version", "IOService", 1uLL, &property, 0))
  {
    v19 = OSMetaClassBase::safeMetaCast(property, gOSStringMetaClass);
    if (v19)
    {
      OSDictionary::setObject(v4, "OS Build", v19);
    }

    if (property)
    {
      (property->release)(property);
      property = 0;
    }
  }

  if (kAppleBCMWLANBuildTag[0])
  {
    v20 = OSString::withCString(kAppleBCMWLANBuildTag[0]);
    OSDictionary::setObject(v4, "Build Tag", v20);
    if (v20)
    {
      (v20->release)(v20);
    }
  }

  else
  {
    OSDictionary::setObject(v4, "Build Tag", 0);
  }

  v21 = OSString::withCString("AppleBCMWLANV3_driverkit-1535.9.4.1");
  OSDictionary::setObject(v4, "Git Tag", v21);
  if (v21)
  {
    (v21->release)(v21);
  }

  if (kAppleBCMWLANBuildDate[0])
  {
    v22 = OSString::withCString(kAppleBCMWLANBuildDate[0]);
    OSDictionary::setObject(v4, "Build Date", v22);
    if (v22)
    {
      (v22->release)(v22);
    }
  }

  else
  {
    OSDictionary::setObject(v4, "Build Date", 0);
  }

  v23 = OSString::withCString("release");
  result = OSDictionary::setObject(v4, "Build Type", v23);
  if (v23)
  {
    result = (v23->release)(v23);
  }

  *a2 = v4;
  return result;
}

uint64_t AppleBCMWLANCore::captureDriverState(IOService *this, uint64_t a2, char *a3)
{
  (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
  (this->OSObject::OSMetaClassBase::__vftable[2].getMetaClass)(this, a2);
  v6 = IO80211Print();
  (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
  v7 = this[1].OSObject::OSObjectInterface::__vftable;
  free_low = LODWORD(v7[648].free);
  free_high = HIDWORD(v7[1240].free);
  v8 = IO80211Print() + v6;
  (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
  v9 = IO80211Print();
  properties = 0;
  property = 0;
  values = OSString::withCString("compatible");
  v10 = 0;
  if (!IOService::SearchProperty(this, "FirmwareVersion", "IOService", 1uLL, &property, 0))
  {
    if (OSMetaClassBase::safeMetaCast(property, gOSStringMetaClass))
    {
      v11 = OSMetaClassBase::safeMetaCast(property, gOSStringMetaClass);
      v10 = OSString::withString(v11);
    }

    else
    {
      v10 = 0;
    }

    if (property)
    {
      (property->release)(property);
      property = 0;
    }
  }

  v52 = 0;
  if (!IOService::SearchProperty(this, "vendor-id", "IOService", 1uLL, &property, 0))
  {
    if (OSMetaClassBase::safeMetaCast(property, gOSStringMetaClass))
    {
      v12 = OSMetaClassBase::safeMetaCast(property, gOSStringMetaClass);
      v52 = OSString::withString(v12);
    }

    else
    {
      v52 = 0;
    }

    if (property)
    {
      (property->release)(property);
      property = 0;
    }
  }

  v13 = 0;
  if (!IOService::SearchProperty(this, "ModuleInfo", "IOService", 1uLL, &property, 0))
  {
    if (OSMetaClassBase::safeMetaCast(property, gOSStringMetaClass))
    {
      v14 = OSMetaClassBase::safeMetaCast(property, gOSStringMetaClass);
      v13 = OSString::withString(v14);
    }

    else
    {
      v13 = 0;
    }

    if (property)
    {
      (property->release)(property);
      property = 0;
    }
  }

  v51 = 0;
  if (!IOService::SearchProperty(this, "OS Build Version", "IOService", 1uLL, &property, 0))
  {
    if (OSMetaClassBase::safeMetaCast(property, gOSStringMetaClass))
    {
      v15 = OSMetaClassBase::safeMetaCast(property, gOSStringMetaClass);
      v51 = OSString::withString(v15);
    }

    else
    {
      v51 = 0;
    }

    if (property)
    {
      (property->release)(property);
      property = 0;
    }
  }

  v16 = v9 + v8;
  v50 = 0;
  if (!IOService::SearchProperty(this, "IOPlatformSerialNumber", "IOService", 1uLL, &property, 0))
  {
    if (OSMetaClassBase::safeMetaCast(property, gOSStringMetaClass))
    {
      v17 = OSMetaClassBase::safeMetaCast(property, gOSStringMetaClass);
      v50 = OSString::withString(v17);
    }

    else
    {
      v50 = 0;
    }

    if (property)
    {
      (property->release)(property);
      property = 0;
    }
  }

  v49 = OSArray::withObjects(&values, 1u, 0);
  v18 = 0;
  if (!IOService::CopyProviderProperties(this, v49, &properties, 0))
  {
    if (properties)
    {
      v19 = (properties->getCount)(properties);
      Object = OSArray::getObject(properties, v19 - 1);
      v21 = OSMetaClassBase::safeMetaCast(Object, gOSDictionaryMetaClass);
      v22 = OSString::withCString("compatible");
      v23 = OSDictionary::getObject(v21, v22);
      v18 = OSMetaClassBase::safeMetaCast(v23, gOSDataMetaClass);
      if (v22)
      {
        (v22->release)(v22);
      }
    }
  }

  v48 = v18;
  (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
  v24 = this[1].OSObject::OSObjectInterface::__vftable;
  v45 = v24[2593];
  v46 = v24[2];
  v41 = v24[2594];
  v25 = IO80211Print() + v16;
  (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
  LODWORD(v25) = IO80211Print() + v25;
  v26 = 17840;
  v27 = 16;
  do
  {
    (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
    v42 = *(&this[1].init + v26);
    v25 = IO80211Print() + v25;
    ++v26;
    --v27;
  }

  while (v27);
  (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
  v28 = IO80211Print() + v25;
  (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
  AppleBCMWLAN_isVerboseDebugLoggingAllowed();
  AppleBCMWLAN_isSoCRAMCaptureAllowed();
  AppleBCMWLAN_isDebugCommandActionAllowed();
  v29 = IO80211Print() + v28;
  (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
  if (v13)
  {
    OSString::getCStringNoCopy(v13);
  }

  if (v10)
  {
    OSString::getCStringNoCopy(v10);
  }

  if (v52)
  {
    OSString::getCStringNoCopy(v52);
  }

  p_free = &this[1].OSObject::OSObjectInterface::__vftable[155].free;
  v30 = IO80211Print() + v29;
  (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
  if (v48)
  {
    OSData::getBytesNoCopy(v48);
  }

  if (v51)
  {
    OSString::getCStringNoCopy(v51);
  }

  if (v50)
  {
    OSString::getCStringNoCopy(v50);
  }

  v31 = IO80211Print() + v30;
  (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
  v43 = &this[1].OSObject::OSObjectInterface::__vftable[75].free;
  v32 = IO80211Print();
  if (v10)
  {
    (v10->release)(v10);
  }

  if (v52)
  {
    (v52->release)(v52);
  }

  if (v13)
  {
    (v13->release)(v13);
  }

  if (v51)
  {
    (v51->release)(v51);
  }

  if (v50)
  {
    (v50->release)(v50);
  }

  if (properties)
  {
    (properties->release)(properties);
    properties = 0;
  }

  if (values)
  {
    (values->release)(values);
    values = 0;
  }

  if (v49)
  {
    (v49->release)(v49);
  }

  (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
  v33 = IO80211Print() + v32 + v31;
  v34 = AppleBCMWLANCore::printDataPathDebug(this, a3) + v33;
  (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
  v35 = 0;
  v36 = v34 + IO80211Print();
  do
  {
    if ((*(&this[1].OSObject::OSObjectInterface::__vftable[68].free + (v35 >> 3)) >> (v35 & 7)))
    {
      (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
      convertEventToString(v35, 0, 0);
      v36 += IO80211Print();
    }

    ++v35;
  }

  while (v35 != 219);
  (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
  v37 = 0;
  v38 = v36 + IO80211Print();
  do
  {
    if ((*(&this[1].OSObject::OSObjectInterface::__vftable[72].init + (v37 >> 3)) >> (v37 & 7)))
    {
      (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
      convertEventToString(v37, 0, 0);
      v38 = v38 + IO80211Print();
    }

    ++v37;
  }

  while (v37 != 219);
  return v38;
}

uint64_t AppleBCMWLANCore::stringFromReturn(AppleBCMWLANCore *this, unsigned int a2)
{
  if (a2 >> 14 == 229896)
  {
    return IO80211Controller::stringFromReturn(this, a2);
  }

  else
  {
    return (*(**(*(this + 9) + 5392) + 104))();
  }
}

uint64_t AppleBCMWLANCore::errnoFromReturn(AppleBCMWLANCore *this, unsigned int a2)
{
  if (a2 >> 14 == 229896)
  {
    return IO80211Controller::errnoFromReturn(this, a2);
  }

  else
  {
    return (*(**(*(this + 9) + 5392) + 112))();
  }
}

uint64_t AppleBCMWLANCore::isWNMSupportedAndEnabled(AppleBCMWLANCore *this)
{
  IsBitSet = AppleBCMWLANCore::featureFlagIsBitSet(this, 25);
  v3 = *(*(this + 9) + 5464);
  if (v3)
  {
    LODWORD(v3) = AppleBCMWLANConfigManager::isWnmSupportEnabled(v3);
  }

  return IsBitSet & v3;
}

uint64_t AppleBCMWLANCore::getFeatures(OSObject *this)
{
  p_ivars = &this[1].ivars;
  ivars = this[1].ivars;
  v4 = *(ivars + 8978);
  if (v4 == 1)
  {
    goto LABEL_9;
  }

  if (v4 == 2)
  {
    v5 = 0x2000000;
    goto LABEL_10;
  }

  v6 = *(ivars + 7522);
  if ((v6 - 2) < 2)
  {
    v5 = 0x1000000;
    goto LABEL_10;
  }

  if (v6 != 1)
  {
LABEL_9:
    v5 = 0;
  }

  else
  {
    v12 = -86;
    v11 = -86;
    if ((*(**(ivars + 674) + 456))(*(ivars + 674), &v12, &v11))
    {
      v5 = 0;
    }

    else
    {
      IsBitSet = AppleBCMWLANCore::featureFlagIsBitSet(this, 52);
      if ((IsBitSet & v12) != 0)
      {
        v10 = 0x1000000;
      }

      else
      {
        v10 = 0;
      }

      if (v11)
      {
        v5 = v10 | 0x2000000;
      }

      else
      {
        v5 = v10;
      }
    }

    ivars = p_ivars->ivars;
  }

LABEL_10:
  if (*(ivars + 1781))
  {
    if ((this->OSMetaClassBase::__vftable[34].free)(this))
    {
      (this->OSMetaClassBase::__vftable[34].free)(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::getFeatures(this);
      }
    }
  }

  else
  {
    ClassNameHelper = getClassNameHelper(this);
    IOLog("[WiFiTimeSync] %s::%s() ptmMode = %d supported features = 0x%x\n", ClassNameHelper, "getFeatures", *(this[1].ivars + 7522), v5);
  }

  return v5;
}

uint64_t AppleBCMWLANCore::getHT_CAPABILITY(AppleBCMWLANCore *a1, uint64_t a2)
{
  AppleBCMWLANCore::updateHTAndVHTCapBasedOnHWSupport(a1);
  v4 = *(*(a1 + 9) + 1036);
  *(a2 + 16) = *(*(a1 + 9) + 1048);
  *(a2 + 4) = v4;
  return 0;
}

uint64_t non-virtual thunk toAppleBCMWLANCore::getHT_CAPABILITY(uint64_t a1, uint64_t a2)
{
  AppleBCMWLANCore::updateHTAndVHTCapBasedOnHWSupport((a1 - 64));
  v4 = *(*(a1 + 8) + 1036);
  *(a2 + 16) = *(*(a1 + 8) + 1048);
  *(a2 + 4) = v4;
  return 0;
}

uint64_t AppleBCMWLANCore::getVHT_CAPABILITY(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 72);
  if (*(v2 + 1024) < 128)
  {
    return 45;
  }

  result = 0;
  v4 = v2 + 1064;
  v5 = *(v2 + 1064);
  *(a2 + 10) = *(v4 + 6);
  *(a2 + 4) = v5;
  return result;
}

uint64_t non-virtual thunk toAppleBCMWLANCore::getVHT_CAPABILITY(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  if (*(v2 + 1024) < 128)
  {
    return 45;
  }

  result = 0;
  v4 = v2 + 1064;
  v5 = *(v2 + 1064);
  *(a2 + 10) = *(v4 + 6);
  *(a2 + 4) = v5;
  return result;
}

double AppleBCMWLANCore::getHE_CAPABILITY(uint64_t a1, uint64_t a2)
{
  if (*(*(a1 + 72) + 1024) >= 128)
  {
    *(a2 + 12) = 2816;
    *(a2 + 14) = 38;
    *&result = 0x5000500050005;
    *(a2 + 26) = 0x5000500050005;
  }

  return result;
}

double non-virtual thunk toAppleBCMWLANCore::getHE_CAPABILITY(uint64_t a1, uint64_t a2)
{
  if (*(*(a1 + 8) + 1024) >= 128)
  {
    *(a2 + 12) = 2816;
    *(a2 + 14) = 38;
    *&result = 0x5000500050005;
    *(a2 + 26) = 0x5000500050005;
  }

  return result;
}

uint64_t AppleBCMWLANCore::getEXTENDED_STATS(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  if (!a2)
  {
    return 22;
  }

  if (!IO80211BssManager::isAssociated(*(*(a1 + 72) + 5432)))
  {
    return 3766625283;
  }

  CurrentRSSI = IO80211BssManager::getCurrentRSSI(*(*(a1 + 72) + 5432), &v6);
  *(a2 + 28) = v6;
  *(a2 + 4) = AppleBCMWLANNetAdapter::isRealTimeTrafficSettingEnabled(*(*(a1 + 72) + 5600));
  return CurrentRSSI;
}

uint64_t AppleBCMWLANCore::getCOUNTRY_CODE(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 72);
  v4 = *(v3 + 6746);
  LOWORD(v3) = *(v3 + 6744);
  *(a3 + 6) = v4;
  *(a3 + 4) = v3;
  return 0;
}

uint64_t non-virtual thunk toAppleBCMWLANCore::getCOUNTRY_CODE(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 24);
  v4 = *(v3 + 6746);
  LOWORD(v3) = *(v3 + 6744);
  *(a3 + 6) = v4;
  *(a3 + 4) = v3;
  return 0;
}

uint64_t AppleBCMWLANCore::getCHANNELS_INFO(uint64_t *a1, void *a2)
{
  v4 = a1 + 9;
  v5 = a1[9];
  v6 = strncmp(v5 + 6748, v5 + 6744, 4uLL);
  memcpy(a2, v5 + 19904, 0x2720uLL);
  if (v6 || *(*v4 + 6744) != 88 && !*(*v4 + 19916))
  {
    if ((*(*a1 + 1952))(a1))
    {
      (*(*a1 + 1952))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::getCHANNELS_INFO(a1);
      }
    }

    AppleBCMWLANCore::handleCountryCodeChangeToRepopulateChannels(a1);
  }

  return 0;
}

uint64_t AppleBCMWLANCore::getWCL_LOW_LATENCY_INFO(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 3758097084;
  }

  v4 = *(*(a1 + 72) + 11296);
  if (v4)
  {
    LOBYTE(v4) = AppleBCMWLANProximityInterface::isLowLatencyTrafficOngoing(v4);
  }

  *a2 = v4;
  v5 = *(*(a1 + 72) + 11296);
  if (v5)
  {
    LOBYTE(v5) = AppleBCMWLANNANInterface::nanIsEnabled(v5);
  }

  *(a2 + 1) = v5;
  v6 = *(*(a1 + 72) + 11296);
  if (v6)
  {
    DesiredChannel = AppleBCMWLANProximityInterface::getDesiredChannel(v6);
  }

  else
  {
    DesiredChannel = 0;
  }

  result = 0;
  *(a2 + 2) = DesiredChannel;
  return result;
}

uint64_t AppleBCMWLANCore::getWCL_TRAFFIC_COUNTERS(AppleBCMWLANCore *a1, void *a2)
{
  if (!a2)
  {
    return 3758097084;
  }

  *a2 = AppleBCMWLANCore::getRealTimeTrafficClassTxCounter(a1);
  a2[1] = *(*(a1 + 9) + 10792) + *(*(a1 + 9) + 10784);
  a2[2] = AppleBCMWLANCore::getTxPktCounter(a1);
  a2[3] = vaddvq_s64(vaddq_s64(*(*(a1 + 9) + 10784), *(*(a1 + 9) + 10768)));
  a2[4] = AppleBCMWLANCore::getRealTimeAwdlTxPktCounter(a1);
  a2[5] = AppleBCMWLANCore::getRealTimeNANTxPktCounter(a1);
  mach_continuous_nanoseconds = AppleBCMWLANUtil::get_mach_continuous_nanoseconds(0, v4);
  result = 0;
  a2[6] = mach_continuous_nanoseconds;
  return result;
}

uint64_t AppleBCMWLANCore::getWCL_BSS_INFO(uint64_t a1, uint64_t a2)
{
  v6[0] = 0;
  v6[1] = v6;
  v6[2] = 0x2000000000;
  v6[3] = a2;
  if (a2)
  {
    v2 = *(*(a1 + 72) + 5600);
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 1107296256;
    v5[2] = ___ZN16AppleBCMWLANCore15getWCL_BSS_INFOEP21apple80211_beacon_msg_block_invoke;
    v5[3] = &__block_descriptor_tmp_2701;
    v5[4] = v6;
    BssInfo = AppleBCMWLANNetAdapter::getBssInfo(v2, v5);
  }

  else
  {
    BssInfo = 3758097084;
  }

  _Block_object_dispose(v6, 8);
  return BssInfo;
}

uint64_t ___ZN16AppleBCMWLANCore15getWCL_BSS_INFOEP21apple80211_beacon_msg_block_invoke(uint64_t a1, uint64_t a2, __int16 *a3)
{
  v3 = *(*(*(a1 + 32) + 8) + 24);
  if (AppleBCMWLANBSSBeacon::getBeaconMsgFromWLBSSInfo(v3, (v3 + 68), a2, *a3, *(a2 + 4)))
  {
    return 0;
  }

  else
  {
    return 3758097084;
  }
}

uint64_t AppleBCMWLANCore::getWCL_EXTENDED_BSS_INFO(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return AppleBCMWLANNetAdapter::getExtendedBssInfo(*(*(a1 + 72) + 5600), a2);
  }

  else
  {
    return 3758097084;
  }
}

uint64_t non-virtual thunk toAppleBCMWLANCore::getWCL_EXTENDED_BSS_INFO(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return AppleBCMWLANNetAdapter::getExtendedBssInfo(*(*(a1 + 8) + 5600), a2);
  }

  else
  {
    return 3758097084;
  }
}

uint64_t AppleBCMWLANCore::getCOUNTRY_BAND_SUPPORT(uint64_t *a1, uint64_t a2)
{
  v3 = a1[9];
  if (*(v3 + 6756) == 1 && AppleBCMWLANCore::is6ESupportedInCountry(a1, (v3 + 6736)))
  {
    if ((*(*a1 + 1952))(a1))
    {
      (*(*a1 + 1952))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::getCOUNTRY_BAND_SUPPORT(a1);
      }
    }

    v5 = 7;
  }

  else
  {
    v5 = 3;
  }

  *(a2 + 4) = v5;
  return 0;
}

uint64_t AppleBCMWLANCore::handleGetChanSpecs(uint64_t *a1, uint64_t a2, int a3, unsigned int **a4)
{
  if (a3)
  {
    result = (*(*a1 + 1952))(a1);
    if (result)
    {
      (*(*a1 + 1952))(a1);
      result = CCLogStream::shouldLog();
      if (result)
      {
        return AppleBCMWLANCore::handleGetChanSpecs(a1);
      }
    }

    return result;
  }

  v6 = *a4;
  v7 = **a4;
  if (v7 >= 0x17C)
  {
    v8 = 380;
  }

  else
  {
    v8 = v7;
  }

  if ((*(*a1 + 1952))(a1) && ((*(*a1 + 1952))(a1), CCLogStream::shouldLog()))
  {
    AppleBCMWLANCore::handleGetChanSpecs(a1);
    if (!v7)
    {
      goto LABEL_13;
    }
  }

  else if (!v7)
  {
    goto LABEL_13;
  }

  v9 = (v6 + 1);
  v10 = 19918;
  v11 = v8;
  do
  {
    v12 = *v9++;
    *(a1[9] + v10) = v12;
    v10 += 2;
    --v11;
  }

  while (v11);
LABEL_13:
  *(a1[9] + 19916) = v8;
  result = AppleBCMWLANCore::adjustBeaconListPerNewCountryCode(a1);
  v13 = a1[9];
  if (*(v13 + 6752))
  {
    atomic_fetch_add_explicit((v13 + 6752), 1u, memory_order_relaxed);
  }

  else
  {
    strlcpy((v13 + 6748), (v13 + 6744), 4uLL);
    if ((*(*a1 + 1952))(a1))
    {
      (*(*a1 + 1952))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::handleGetChanSpecs(a1);
      }
    }

    v14 = *(**(a1[9] + 6240) + 56);

    return v14();
  }

  return result;
}

uint64_t AppleBCMWLANCore::get6GTxPowerFromFW(unint64_t this, __int16 a2, uint64_t a3)
{
  if (a3 < 2)
  {
    v11 = 786433;
    v12 = 1;
    WORD2(v12) = a2;
    v6 = &txPowerLPIBuffer;
    HIBYTE(v12) = a3;
    if (a3 == 1)
    {
      v6 = &txPowerVLPBuffer;
    }

    v10[0] = v6;
    v10[1] = 0x10C000C010CLL;
    v7 = *(*(this + 72) + 5408);
    v9[0] = &v11;
    v9[1] = 12;
    result = AppleBCMWLANCommander::runIOVarGet(v7, "chanspec_txpwr_max", v9, v10, 0);
    if (result)
    {
      v8 = result;
      if ((*(*this + 1952))(this))
      {
        (*(*this + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::get6GTxPowerFromFW(this, this & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000, v8, a3);
        }
      }

      return 4294967294;
    }
  }

  else
  {
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::get6GTxPowerFromFW(this);
      }
    }

    return 0xFFFFFFFFLL;
  }

  return result;
}

uint64_t *AppleBCMWLANCore::handleGetCountryListAsyncCallBack(uint64_t *result, uint64_t a2, int a3, uint64_t *a4)
{
  v4 = result;
  if (a3)
  {
    result = (*(*result + 1952))(result);
    if (result)
    {
      (*(*v4 + 1952))(v4);
      result = CCLogStream::shouldLog();
      if (result)
      {
        return AppleBCMWLANCore::handleGetCountryListAsyncCallBack(v4);
      }
    }
  }

  else
  {
    v5 = *a4;
    if (*a4)
    {
      v6 = *(v5 + 12);
      if (v6 >= 0x100)
      {
        v7 = 256;
      }

      else
      {
        v7 = *(v5 + 12);
      }

      *(result[9] + 6760) = v7;
      if (v6)
      {
        v8 = 0;
        v9 = (v5 + 16);
        do
        {
          v10 = *v9++;
          *(result[9] + 4 * v8++ + 6764) = v10;
        }

        while (v6 > v8);
      }
    }

    else
    {
      result = (*(*result + 1952))(result);
      if (result)
      {
        (*(*v4 + 1952))(v4);
        result = CCLogStream::shouldLog();
        if (result)
        {
          return AppleBCMWLANCore::handleGetCountryListAsyncCallBack(v4);
        }
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::handleGet6ECountryListAsyncCallBack(uint64_t *a1, uint64_t a2, int a3, uint64_t *a4)
{
  if (a3)
  {
    result = (*(*a1 + 1952))(a1);
    if (result)
    {
      (*(*a1 + 1952))(a1);
      result = CCLogStream::shouldLog();
      if (result)
      {
        return AppleBCMWLANCore::handleGet6ECountryListAsyncCallBack(a1);
      }
    }
  }

  else
  {
    v6 = *a4;
    if (*a4)
    {
      v7 = *(v6 + 12);
      if (v7 >= 0x100)
      {
        v8 = 256;
      }

      else
      {
        v8 = *(v6 + 12);
      }

      result = (*(*a1 + 1952))(a1);
      if (result)
      {
        (*(*a1 + 1952))(a1);
        result = CCLogStream::shouldLog();
        if (result)
        {
          result = AppleBCMWLANCore::handleGet6ECountryListAsyncCallBack(a1);
        }
      }

      *(a1[9] + 7788) = v8;
      if (v7)
      {
        v9 = 0;
        v10 = 0;
        v11 = v6 + 16;
        do
        {
          *(a1[9] + 4 * v10 + 7792) = *(v11 + 4 * v9);
          result = (*(*a1 + 1952))(a1);
          if (result)
          {
            (*(*a1 + 1952))(a1);
            result = CCLogStream::shouldLog();
            if (result)
            {
              v12 = (*(*a1 + 1952))(a1);
              result = CCLogStream::logAlert(v12, "[dk] %s@%d:WiFiCC : Country %3d %s\n", "handleGet6ECountryListAsyncCallBack", 46633, v9, (v11 + 4 * v9));
            }
          }

          v9 = ++v10;
        }

        while (v7 > v10);
      }
    }

    else
    {
      result = (*(*a1 + 1952))(a1);
      if (result)
      {
        (*(*a1 + 1952))(a1);
        result = CCLogStream::shouldLog();
        if (result)
        {
          return AppleBCMWLANCore::handleGet6ECountryListAsyncCallBack(a1);
        }
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::getUCMCoexProfileV1(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a2 = *a3;
  *(a2 + 2) = *(a3 + 6);
  *(a2 + 3) = *(a3 + 7);
  *(a2 + 4) = *(a3 + 8);
  *(a2 + 5) = *(a3 + 9);
  *(a2 + 6) = *(a3 + 10);
  *(a2 + 7) = *(a3 + 11);
  *(a2 + 8) = *(a3 + 12);
  *(a2 + 9) = *(a3 + 13);
  *(a2 + 10) = *(a3 + 14);
  *(a2 + 11) = *(a3 + 15);
  *(a2 + 12) = *(a3 + 16);
  *(a2 + 13) = *(a3 + 17);
  *(a2 + 14) = *(a3 + 18);
  *(a2 + 15) = *(a3 + 19);
  *(a2 + 16) = *(a3 + 20);
  *(a2 + 17) = *(a3 + 21);
  *(a2 + 18) = *(a3 + 22);
  if (*(a3 + 7))
  {
    v3 = 0;
    v4 = a2 + 20;
    v5 = (a3 + 27);
    do
    {
      *v4 = 0;
      *v4 = *(v5 - 1);
      v6 = *v5;
      v5 += 2;
      *(v4 + 3) = v6;
      ++v3;
      v4 += 7;
    }

    while (v3 < *(a3 + 7));
  }

  return 0;
}

uint64_t AppleBCMWLANCore::getUCMCoexProfileV2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a2 = *a3;
  *(a2 + 2) = *(a3 + 6);
  *(a2 + 3) = *(a3 + 7);
  *(a2 + 4) = *(a3 + 8);
  *(a2 + 5) = *(a3 + 9);
  *(a2 + 6) = *(a3 + 10);
  *(a2 + 7) = *(a3 + 11);
  *(a2 + 8) = *(a3 + 12);
  *(a2 + 9) = *(a3 + 13);
  *(a2 + 10) = *(a3 + 14);
  *(a2 + 11) = *(a3 + 15);
  *(a2 + 12) = *(a3 + 16);
  *(a2 + 13) = *(a3 + 17);
  *(a2 + 14) = *(a3 + 18);
  *(a2 + 15) = *(a3 + 19);
  *(a2 + 16) = *(a3 + 20);
  *(a2 + 17) = *(a3 + 21);
  *(a2 + 18) = *(a3 + 22);
  *(a2 + 19) = *(a3 + 23);
  if (*(a3 + 7))
  {
    v3 = 0;
    v4 = a2 + 20;
    v5 = (a3 + 27);
    do
    {
      *v4 = 0;
      *v4 = *(v5 - 1);
      v6 = *v5;
      v5 += 2;
      *(v4 + 3) = v6;
      ++v3;
      v4 += 7;
    }

    while (v3 < *(a3 + 7));
  }

  return 0;
}

uint64_t AppleBCMWLANCore::getUCMCoexProfileV3(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a2 = *a3;
  *(a2 + 2) = *(a3 + 6);
  *(a2 + 3) = *(a3 + 7);
  *(a2 + 4) = *(a3 + 8);
  *(a2 + 5) = *(a3 + 9);
  *(a2 + 6) = *(a3 + 10);
  *(a2 + 7) = *(a3 + 11);
  *(a2 + 8) = *(a3 + 12);
  *(a2 + 9) = *(a3 + 13);
  *(a2 + 10) = *(a3 + 14);
  *(a2 + 11) = *(a3 + 15);
  *(a2 + 12) = *(a3 + 16);
  *(a2 + 13) = *(a3 + 17);
  *(a2 + 14) = *(a3 + 18);
  *(a2 + 15) = *(a3 + 19);
  *(a2 + 16) = *(a3 + 20);
  *(a2 + 17) = *(a3 + 21);
  *(a2 + 18) = *(a3 + 22);
  *(a2 + 19) = *(a3 + 23);
  if (*(a3 + 7))
  {
    v3 = 0;
    v4 = a3 + 31;
    v5 = a2 + 26;
    do
    {
      *(v5 - 6) = 0;
      *(v5 - 5) = *(v4 - 5);
      *(v5 - 1) = *(v4 - 1);
      ++v3;
      v4 += 8;
      v5 += 7;
    }

    while (v3 < *(a3 + 7));
  }

  return 0;
}

uint64_t AppleBCMWLANCore::getGUARD_INTERVAL(uint64_t *a1, uint64_t a2)
{
  v10 = 0;
  if (!a2)
  {
    return 3758097090;
  }

  v9[0] = &v10;
  v9[1] = 0x400040004;
  v4 = AppleBCMWLANCommander::runIOVarGet(*(a1[9] + 5408), "nrate", &kNoTxPayload, v9, 0);
  v5 = v4;
  if (v4 == -536870173 || v4 == 0)
  {
    if ((v10 & 0x7000000) == 0x2000000)
    {
      if ((v10 & 0x800000) != 0)
      {
        v7 = 400;
      }

      else
      {
        v7 = 800;
      }
    }

    else if ((v10 & 0x7000000) == 0x3000000 && ((v10 >> 10) & 3) > 1)
    {
      if (((v10 >> 10) & 3) == 2)
      {
        v7 = 1600;
      }

      else
      {
        v7 = 3200;
      }
    }

    else
    {
      v7 = 800;
    }

    *(a2 + 4) = v7;
  }

  else if ((*(*a1 + 1952))(a1))
  {
    (*(*a1 + 1952))(a1);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::getGUARD_INTERVAL(a1);
    }
  }

  return v5;
}

uint64_t AppleBCMWLANCore::getChanSpec(uint64_t a1, int a2, int a3, int *a4)
{
  if (a2 && (v6 = *(*(a1 + 72) + 19916), *(*(a1 + 72) + 19916)))
  {
    v9 = v6 + 1;
    v10 = 2 * v6 + 19916;
    while (1)
    {
      AppleChannelSpec = AppleBCMWLANChanSpec::getAppleChannelSpec(*(*(a1 + 72) + 17744), *(*(a1 + 72) + v10));
      if (a3 == (AppleChannelSpec & 0xC000) >> 14)
      {
        v12 = AppleChannelSpec;
        if (ChanSpecGetPrimaryChannel() == a2)
        {
          v13 = (v12 >> 11) & 7;
          if (*a4 >= v13)
          {
            break;
          }
        }
      }

      --v9;
      v10 -= 2;
      if (v9 <= 1)
      {
        goto LABEL_8;
      }
    }

    *a4 = v13;
    return *(*(a1 + 72) + v10);
  }

  else
  {
LABEL_8:
    result = 0;
    *a4 = 1;
  }

  return result;
}

uint64_t AppleBCMWLANCore::getPOWER_DEBUG_INFO(uint64_t *a1, uint64_t a2)
{
  *(a2 + 4) = 0;
  *(a2 + 8) = 0;
  v28 = 0xAAAAAAAAAAAAAAAALL;
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v27[0] = v4;
  v27[1] = v4;
  if (!AppleBCMWLANCore::isRejectingCommands(a1))
  {
    BYTE4(v27[0]) = 0;
    LODWORD(v27[0]) = 13;
    if (AppleBCMWLANCore::getPowerStats(a1, a2, v27))
    {
      if ((*(*a1 + 1952))(a1))
      {
        (*(*a1 + 1952))(a1);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::getPOWER_DEBUG_INFO(a1);
        }
      }
    }
  }

  memcpy((a2 + 704), (a1[9] + 11344), 0x2C0uLL);
  if (AppleBCMWLANCore::featureFlagIsBitSet(a1, 76) && (*(a1[9] + 18484) & 1) == 0)
  {
    memset(v26, 170, sizeof(v26));
    LODWORD(v27[0]) = 32;
    AppleBCMWLANCore::getPowerStats(a1, v26, v27);
    v5 = v26[7];
    v6 = HIDWORD(v26[50]);
    v7 = v26[60];
    *(a2 + 1408) = v26[0];
    *(a2 + 1412) = v5;
    v8 = *(&v26[11] + 4);
    *(a2 + 1416) = *(&v26[9] + 4);
    *(a2 + 1432) = v8;
    *(a2 + 1448) = *(&v26[13] + 4);
    *(a2 + 1464) = v26[42];
    *(a2 + 1476) = v26[59];
    *(a2 + 1484) = v7;
    *(a2 + 1472) = v6;
    v9 = a1[9];
    v10 = *(v9 + 12080);
    v11 = *(v9 + 12064);
    *(a2 + 1512) = *(v9 + 12048);
    *(a2 + 1528) = v11;
    v12 = *(v9 + 12096);
    v13 = *(v9 + 12112);
    v14 = *(v9 + 12128);
    *(a2 + 1608) = *(v9 + 12144);
    *(a2 + 1576) = v13;
    *(a2 + 1592) = v14;
    *(a2 + 1544) = v10;
    *(a2 + 1560) = v12;
  }

  AppleBCMWLANCore::getInactivityPowerStats(a1, (a2 + 1616));
  v15 = a1[9];
  v16 = v15[2237];
  v17 = v15[2238];
  *(a2 + 1688) = *(v15 + 35820);
  *(a2 + 1660) = v16;
  *(a2 + 1676) = v17;
  v18 = *(a1[9] + 35880);
  v20 = *(a1[9] + 35852);
  v19 = *(a1[9] + 35868);
  *(a2 + 1704) = *(a1[9] + 35836);
  *(a2 + 1720) = v20;
  *(a2 + 1736) = v19;
  *(a2 + 1748) = v18;
  v21 = a1[9];
  v22 = v21[2253];
  v23 = v21[2251];
  v24 = v21[2252];
  *(a2 + 1764) = v21[2250];
  *(a2 + 1780) = v23;
  *(a2 + 1796) = v24;
  *(a2 + 1812) = v22;
  return 0;
}

void *AppleBCMWLANCore::getInactivityPowerStats(void *this, _DWORD *a2)
{
  v2 = *(this[9] + 18200);
  if (v2)
  {
    v4 = this;
    *a2 = v2;
    v5 = this[9];
    v6 = *(v5 + 18208);
    v7 = v6 ? *(v5 + 18200) - v6 : 0;
    a2[1] = v7;
    a2[4] = *(this[9] + 18212);
    a2[3] = *(this[9] + 18216);
    a2[5] = *(this[9] + 18224) - *(this[9] + 18212);
    a2[2] = *(this[9] + 18224);
    this = AppleBCMWLANCore::featureFlagIsBitSet(this, 76);
    if (this)
    {
      v8 = v4[9];
      v9 = *(v8 + 18228);
      if (v9)
      {
        v10 = *(v8 + 18200) - v9;
      }

      else
      {
        v10 = 0;
      }

      a2[6] = v10;
      a2[9] = *(v4[9] + 18244) - *(v4[9] + 18240);
      a2[8] = *(v4[9] + 18236);
      a2[10] = *(v4[9] + 18240);
      a2[7] = *(v4[9] + 18244);
    }
  }

  return this;
}

uint64_t AppleBCMWLANCore::collectOPSEBTStatus(AppleBCMWLANCore *this)
{
  if (AppleBCMWLANCore::checkForOppPowerSaveSupport(this))
  {
    v15 = xmmword_1003B0158;
    v16 = unk_1003B0168;
    v17 = xmmword_1003B0178;
    v18 = unk_1003B0188;
    v13 = xmmword_1003B0138;
    v14 = unk_1003B0148;
    OPSStatus = AppleBCMWLANPowerManager::getOPSStatus(*(*(this + 9) + 5520), &v13);
    if (OPSStatus)
    {
      if ((*(*this + 1952))(this))
      {
        (*(*this + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::collectOPSEBTStatus(this);
        }
      }
    }

    else
    {
      v3 = *(this + 9);
      v4 = v16;
      v6 = v17;
      v5 = v18;
      *(v3 + 88) = v15;
      *(v3 + 104) = v4;
      *(v3 + 120) = v6;
      *(v3 + 136) = v5;
      v7 = v14;
      *(v3 + 56) = v13;
      *(v3 + 72) = v7;
    }
  }

  else
  {
    OPSStatus = 0;
  }

  if (AppleBCMWLANCore::checkForEarlyBeconTerminationSupport(this))
  {
    AppleBCMWLANCommander::getMaxCmdRxPayload(*(*(this + 9) + 5408));
    v8 = IOMallocZeroData();
    if (v8)
    {
      v9 = v8;
      OPSStatus = AppleBCMWLANPowerManager::getEBTStatus(*(*(this + 9) + 5520), v8);
      if (OPSStatus)
      {
        if ((*(*this + 1952))(this))
        {
          (*(*this + 1952))(this);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANCore::collectOPSEBTStatus(this);
          }
        }
      }

      else
      {
        v10 = *(this + 9);
        v11 = *(v9 + 16);
        *(v10 + 176) = *(v9 + 24);
        *(v10 + 168) = v11;
      }

      IOFreeData();
    }

    else
    {
      return 3758097085;
    }
  }

  return OPSStatus;
}

uint64_t AppleBCMWLANCore::checkForOppPowerSaveSupport(AppleBCMWLANCore *this)
{
  result = AppleBCMWLANCore::featureFlagIsBitSet(this, 56);
  if (result)
  {
    v3 = *(*(this + 9) + 5464);

    return AppleBCMWLANConfigManager::isOPSSupportedInDriver(v3);
  }

  return result;
}

uint64_t AppleBCMWLANCore::getActivePortsFromNetworkStack(AppleBCMWLANCore *this)
{
  if ((*(*this + 1952))(this))
  {
    (*(*this + 1952))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::getActivePortsFromNetworkStack(this);
    }
  }

  v3 = this + 72;
  v2 = *(this + 9);
  if (*(v2 + 11288))
  {
    v4 = (v2 + 10044);
    v4[14] = 0u;
    v4[15] = 0u;
    v4[12] = 0u;
    v4[13] = 0u;
    v4[10] = 0u;
    v4[11] = 0u;
    v4[8] = 0u;
    v4[9] = 0u;
    v4[6] = 0u;
    v4[7] = 0u;
    v4[4] = 0u;
    v4[5] = 0u;
    v4[2] = 0u;
    v4[3] = 0u;
    *v4 = 0u;
    v4[1] = 0u;
    *(*v3 + 10300) = 0;
    v5 = IOMallocZeroData();
    if (v5)
    {
      v6 = *(*v3 + 11288);
      PacketFilterData = IO80211InfraInterface::getPacketFilterData();
      if (PacketFilterData)
      {
        v8 = PacketFilterData;
        if ((*(*this + 1952))(this))
        {
          (*(*this + 1952))(this);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANCore::getActivePortsFromNetworkStack(this);
          }
        }
      }

      else
      {
        v9 = *(v5 + 264);
        if (v9 >= 0x80)
        {
          LOWORD(v9) = 128;
        }

        *(*v3 + 10300) = v9;
        v10 = *v3;
        if (*(*v3 + 10300))
        {
          v11 = 0;
          do
          {
            *(v10 + 2 * v11 + 10044) = *(v5 + 266 + 2 * v11);
            ++v11;
            v10 = *v3;
          }

          while (v11 < *(*v3 + 10300));
        }

        if ((*(*this + 1952))(this))
        {
          (*(*this + 1952))(this);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANCore::getActivePortsFromNetworkStack(this);
          }
        }

        if (!*(*v3 + 10300))
        {
          goto LABEL_50;
        }

        v12 = 0;
        v13 = 0;
        do
        {
          if ((*(*this + 1952))(this))
          {
            (*(*this + 1952))(this);
            if (CCLogStream::shouldLog())
            {
              v14 = (*(*this + 1952))(this);
              v15 = *(this + 9) + 10044;
              CCLogStream::logAlert(v14, "[dk] %s@%d:%s: Active port - %d, %d, %d, %d, %d, %d, %d, %d\n", "getActivePortsFromNetworkStack", 48310, "getActivePortsFromNetworkStack", *(v15 + 2 * v13), *(v15 + 2 * (v12 | 1u)), *(v15 + 2 * (v12 | 2u)), *(v15 + 2 * (v12 | 3u)), *(v15 + 2 * (v12 | 4u)), *(v15 + 2 * (v12 | 5u)), *(v15 + 2 * (v12 | 6u)), *(v15 + 2 * (v12 | 7u)));
            }
          }

          v13 += 8;
          v12 = v13;
        }

        while (v13 < *(*v3 + 10300));
        if (*(*v3 + 10300))
        {
          if ((*(*this + 1952))(this))
          {
            (*(*this + 1952))(this);
            if (CCLogStream::shouldLog())
            {
              AppleBCMWLANCore::getActivePortsFromNetworkStack(this);
            }
          }

          v8 = 0;
        }

        else
        {
LABEL_50:
          if ((*(*this + 1952))(this))
          {
            (*(*this + 1952))(this);
            if (CCLogStream::shouldLog())
            {
              AppleBCMWLANCore::getActivePortsFromNetworkStack(this);
            }
          }

          v8 = 3758097084;
          if ((*(*this + 1952))(this))
          {
            (*(*this + 1952))(this);
            if (CCLogStream::shouldLog())
            {
              AppleBCMWLANCore::getActivePortsFromNetworkStack(this);
            }
          }
        }
      }
    }

    else if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      v8 = 3758097085;
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::getActivePortsFromNetworkStack(this);
      }
    }

    else
    {
      v8 = 3758097085;
    }

    IOFreeData();
  }

  else
  {
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::getActivePortsFromNetworkStack(this);
      }
    }

    v8 = 3758097084;
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::getActivePortsFromNetworkStack(this);
      }
    }
  }

  return v8;
}

uint64_t AppleBCMWLANCore::configureActivePortsInToChip(AppleBCMWLANCore *this, int a2)
{
  v46 = 1;
  v45 = 0;
  if ((*(*this + 1952))(this))
  {
    (*(*this + 1952))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::configureActivePortsInToChip(this);
    }
  }

  IOParseBootArgNumber("wlan.enable.wol-ports", &v46, 1);
  IOParseBootArgNumber("wlan.enable.wol-prune", &v45, 1);
  v4 = 2 * *(*(this + 9) + 10300);
  v5 = IOMallocZeroData();
  if (!v5)
  {
    return 3758097085;
  }

  v6 = v5;
  v41 = a2;
  *v5 = 0;
  v7 = IOMallocZeroData();
  v8 = v7;
  if (v7)
  {
    strcpy(v7, "Active Ports:");
    v9 = 13;
  }

  else
  {
    v9 = 0;
  }

  v11 = *(this + 9);
  if (!*(v11 + 10300))
  {
    v13 = 0;
    if (!v7)
    {
      goto LABEL_36;
    }

    goto LABEL_34;
  }

  v12 = 0;
  v13 = 0;
  v14 = 10044;
  do
  {
    v15 = *(v11 + v14);
    if (v45 == 1)
    {
      switch(v15)
      {
        case 0:
          goto LABEL_30;
        case 7:
          v16 = 0;
          if (!v8 || v9 > 0x3FE)
          {
            goto LABEL_28;
          }

          v17 = &v8[v9];
          v18 = 1024;
          v19 = 1024 - v9;
          v20 = 7;
          goto LABEL_27;
        case 9:
          v16 = 0;
          if (!v8 || v9 > 0x3FE)
          {
            goto LABEL_28;
          }

          v17 = &v8[v9];
          v18 = 1024;
          v19 = 1024 - v9;
          v20 = 9;
LABEL_27:
          v16 = snprintf(v17, v19, "(*%u) ", v20);
          if (v16 > 0x3FF)
          {
LABEL_29:
            v9 += v18;
            goto LABEL_30;
          }

LABEL_28:
          v18 = v16;
          goto LABEL_29;
      }
    }

    else if (!v15)
    {
      goto LABEL_30;
    }

    v21 = 0;
    *&v6[2 * v13 + 4] = v15;
    if (!v8 || v9 > 0x3FE || (v22 = 1024, v21 = snprintf(&v8[v9], 1024 - v9, "%u ", v15), v21 <= 0x3FF))
    {
      v22 = v21;
    }

    v9 += v22;
    ++v13;
LABEL_30:
    ++v12;
    v11 = *(this + 9);
    v14 += 2;
  }

  while (v12 < *(v11 + 10300));
  if (!v8)
  {
LABEL_36:
    v23 = v6;
    if (v8)
    {
      goto LABEL_37;
    }

    goto LABEL_41;
  }

LABEL_34:
  if (v9 > 0x3FE)
  {
    goto LABEL_36;
  }

  snprintf(&v8[v9], 1024 - v9, "\n");
  v11 = *(this + 9);
  v23 = v6;
LABEL_37:
  if (*(v11 + 14248) && CCLogStream::shouldLog())
  {
    v24 = *(*(this + 9) + 14248);
    CCLogStream::log();
  }

  *v8 = 0;
  v11 = *(this + 9);
LABEL_41:
  if (*(v11 + 10300) && v46 == 1)
  {
    if (v8)
    {
      strcpy(v8, " Additional WoL packet filter UDP/TCP ports: ");
      v25 = v23 + 4;
      v26 = v13 + 1;
      *&v23[2 * v13 + 4] = 7;
      v27 = snprintf(v8 + 45, 0x3D3uLL, "%u ", 7);
      if (v27 >= 0x400)
      {
        v29 = 0;
        v13 += 2;
        *&v25[2 * v26] = 9;
        v28 = 1069;
        goto LABEL_49;
      }

      v28 = v27 + 45;
      v13 += 2;
      *&v25[2 * v26] = 9;
      if (v27 <= 0x3D1)
      {
        v29 = snprintf(&v8[v28], 979 - v27, "%u ", 9);
        if (v29 <= 0x3FF)
        {
          goto LABEL_49;
        }
      }

      else
      {
        v29 = 0;
LABEL_49:
        if (v29 + v28 <= 0x3FE)
        {
          snprintf(&v8[v29 + v28], 1024 - (v29 + v28), "\n");
        }
      }

      if (*(*(this + 9) + 14248) && CCLogStream::shouldLog())
      {
        v31 = *(*(this + 9) + 14248);
        CCLogStream::log();
      }

      *v8 = 0;
    }

    else
    {
      *&v23[2 * v13 + 4] = 7;
      v30 = v13 + 1;
      v13 += 2;
      *&v23[2 * v30 + 4] = 9;
    }
  }

  *(v23 + 1) = v13;
  if ((*(*this + 1952))(this))
  {
    (*(*this + 1952))(this);
    if (CCLogStream::shouldLog())
    {
      v39 = (*(*this + 1952))(this);
      CCLogStream::logAlert(v39, "[dk] %s@%d: tag[0x%08x] version[%u] enableWoLPorts[%u] pruneWoLPorts[%u], fActivePortCnt[%u] count[%u] portListlen[%u]\n", "configureActivePortsInToChip", 48407, v41, *v23, v46, v45, *(*(this + 9) + 10300), v13, (2 * v13 + 4));
    }
  }

  if (*(*(this + 9) + 10300))
  {
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        v40 = (*(*this + 1952))(this);
        CCLogStream::logAlert(v40, "[dk] %s@%d: Setting last valid packet filter ports: tag[0x%08x] version[%u] enableWoLPorts[%u] pruneWoLPorts[%u], fActivePortCnt[%u] count[%u] portListlen[%u]\n", "configureActivePortsInToChip", 48418, v41, *v23, v46, v45, *(*(this + 9) + 10300), v13, (2 * v13 + 4));
      }
    }

    removePropertyHelper(this, "Last valid: pkt_filter_ports");
    v32 = OSData::withBytes(v23, (2 * v13 + 4));
    setPropertyHelper(this, "Last valid: pkt_filter_ports", v32);
    if (v32)
    {
      (v32->release)(v32);
    }
  }

  v33 = (*(*this + 88))(this);
  if ((*(*v33 + 136))(v33))
  {
    v42 = this;
    v43 = AppleBCMWLANCore::handlePktFilterPortsAsyncCallBack;
    v44 = 0;
    v34 = AppleBCMWLANCommander::sendIOVarSet(*(*(this + 9) + 5408), "pkt_filter_ports");
  }

  else
  {
    v35 = *(*(this + 9) + 5408);
    if (2 * v13 == 0xFFFC)
    {
      v36 = 0;
    }

    else
    {
      v36 = v23;
    }

    v42 = v36;
    v43 = (2 * v13 + 4);
    v34 = AppleBCMWLANCommander::runIOVarSet(v35, "pkt_filter_ports", &v42, 0, 0);
  }

  v10 = v34;
  v37 = (*(*this + 1952))(this);
  if (v10)
  {
    if (v37)
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::configureActivePortsInToChip(this);
        if (!v8)
        {
          goto LABEL_80;
        }

LABEL_79:
        IOFreeData();
        goto LABEL_80;
      }
    }

LABEL_78:
    if (!v8)
    {
      goto LABEL_80;
    }

    goto LABEL_79;
  }

  if (!v37)
  {
    goto LABEL_78;
  }

  (*(*this + 1952))(this);
  if (!CCLogStream::shouldLog())
  {
    goto LABEL_78;
  }

  AppleBCMWLANCore::configureActivePortsInToChip(this);
  if (v8)
  {
    goto LABEL_79;
  }

LABEL_80:
  IOFreeData();
  return v10;
}

uint64_t AppleBCMWLANCore::configureMaxPktFilter(AppleBCMWLANCore *this)
{
  v6 = 16;
  if ((*(*this + 1952))(this))
  {
    (*(*this + 1952))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::configureMaxPktFilter(this);
    }
  }

  v2 = *(*(this + 9) + 5408);
  v5[0] = &v6;
  v5[1] = 4;
  v3 = AppleBCMWLANCommander::runIOVarSet(v2, "pkt_filter_max", v5, 0, 0);
  if ((*(*this + 1952))(this))
  {
    (*(*this + 1952))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::configureMaxPktFilter(this);
    }
  }

  return v3;
}

uint64_t AppleBCMWLANCore::configureComplexFilters(AppleBCMWLANCore *this, uint64_t a2, unsigned int a3)
{
  v6 = this & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000;
  if ((*(*this + 1952))(this))
  {
    (*(*this + 1952))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::configureComplexFilters(this);
    }
  }

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  memset(v24, 0, sizeof(v24));
  v22 = 0u;
  v23 = 0u;
  if (a2 == 107)
  {
    LODWORD(v22) = a3 + 107;
    DWORD1(v22) = 2;
    LODWORD(v23) = 655384;
    WORD2(v23) = 16;
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::configureComplexFilters(this, v6, a3);
      }
    }

    v10 = *(*(this + 9) + 16 * a3 + 9524);
    *(&v23 + 1) = -1;
    *&v24[0] = -1;
    *(v24 + 8) = v10;
    *(&v24[1] + 1) = 0x10001000A0006;
    LOWORD(v25) = 15103;
    v9 = 66;
    v8 = 54;
    goto LABEL_11;
  }

  if (a2 == 102)
  {
    *&v22 = 0x200000066;
    LODWORD(v23) = 524304;
    WORD2(v23) = 4;
    v7 = *(this + 9);
    DWORD2(v23) = -1;
    HIDWORD(v23) = *(v7 + 9484);
    *&v24[0] = 0x1000100080009;
    WORD4(v24[0]) = 511;
    v8 = 30;
    v9 = 42;
LABEL_11:
    HIWORD(v22) = v8;
    WORD6(v22) = 2;
    v11 = this + 72;
    v12 = *(*(this + 9) + 5408);
    v13 = &v22;
    goto LABEL_13;
  }

  v9 = 0;
  v13 = 0;
  v11 = this + 72;
  v12 = *(*(this + 9) + 5408);
LABEL_13:
  v21[0] = v13;
  v21[1] = v9;
  v14 = AppleBCMWLANCommander::runIOVarSet(v12, "pkt_filter_add", v21, 0, 0);
  if (v14)
  {
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::configureComplexFilters(this, v6, a2, v14);
      }
    }
  }

  else
  {
    if (a2 == 107)
    {
      if ((*(*this + 1952))(this))
      {
        (*(*this + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::configureComplexFilters();
        }
      }

      ++*(*v11 + 10040);
      *(*v11 + 16 * a3 + 9780) = *(*v11 + 16 * a3 + 9524);
    }

    else if (a2 == 102)
    {
      v15 = *(this + 9);
      v16 = *(v15 + 9484);
      v17 = *(v15 + 9488);
      if ((*(*this + 1952))(this))
      {
        (*(*this + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          v19 = (*(*this + 1952))(this);
          CCLogStream::logAlert(v19, "[dk] %s@%d: Added complex filter: ipv4 filterType[%u] index[%u], addr count[%u], wow ipv4[%u.%u.%u.%u], prog ipv4[%u.%u.%u.%u]\n", "configureComplexFilters", 48631, 102, a3, *(*(this + 9) + 10041), v16, BYTE1(v16), BYTE2(v16), HIBYTE(v16), v17, BYTE1(v17), BYTE2(v17), HIBYTE(v17));
        }
      }

      *(*v11 + 9488) = *(*v11 + 9484);
      ++*(*v11 + 10041);
    }

    else if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        v20 = (*(*this + 1952))(this);
        CCLogStream::logAlert(v20, "[dk] %s@%d: Added complex filter: Unknown filterType[%u] index[%u]\n", "configureComplexFilters", 48646, a2, a3);
      }
    }

    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::configureComplexFilters(this);
      }
    }
  }

  return v14;
}

uint64_t AppleBCMWLANCore::configureEapolFilter(AppleBCMWLANCore *this)
{
  memset(bytes, 170, sizeof(bytes));
  if ((*(*this + 1952))(this))
  {
    (*(*this + 1952))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::configureEapolFilter(this);
    }
  }

  if (*(*(this + 9) + 19784))
  {
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::configureEapolFilter(this);
      }
    }

    bytes[0] = 101;
    bytes[1] = 0xC00000000;
    bytes[2] = 0x8E88FFFF00000002;
    v2 = *(*(this + 9) + 5408);
    keys[0] = bytes;
    keys[1] = 24;
    v3 = AppleBCMWLANCommander::runIOVarSet(v2, "pkt_filter_add", keys, 0, 0);
    if (v3)
    {
      v4 = v3;
      if ((*(*this + 1952))(this))
      {
        (*(*this + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::configureEapolFilter(this);
        }
      }

      keys[0] = OSString::withCString("wl_pkt_filter_t.bin");
      values = OSData::withBytes(bytes, 0x38uLL);
      v5 = *(*(this + 9) + 5536);
      v6 = OSDictionary::withObjects(&values, keys, 1u, 0);
      v7 = (*(*this + 112))(this, v4);
      CCFaultReporter::reportFault(v5, 4u, "/Library/Caches/com.apple.xbs/Sources/AppleBCMWLANV3_driverkit/AppleBCMWLANCore.cpp", 0xBE32u, "configureEapolFilter", v6, -469792765, "status=%s", v7);
      AppleBCMWLANUtil::releaseOSObjectArray(keys, &values, 1);
      return v4;
    }

    ++*(*(this + 9) + 10043);
  }

  if ((*(*this + 1952))(this))
  {
    (*(*this + 1952))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::configureEapolFilter(this);
    }
  }

  return 0;
}

uint64_t AppleBCMWLANCore::configureMagicPktFilter(AppleBCMWLANCore *this, unsigned int a2, unsigned int a3, int a4)
{
  v7 = this & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000;
  if ((*(*this + 1952))(this))
  {
    (*(*this + 1952))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::configureMagicPktFilter(this);
    }
  }

  v25 = -1431655766;
  *&v8 = 0xAAAAAAAAAAAAAAAALL;
  *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v24[3] = v8;
  v24[4] = v8;
  v24[1] = v8;
  v24[2] = v8;
  v24[0] = v8;
  v9 = this + 72;
  v10 = *(*(this + 9) + 11288);
  MagicPatternData = IO80211InfraInterface::getMagicPatternData();
  if (MagicPatternData)
  {
    v12 = MagicPatternData;
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::configureMagicPktFilter(this);
      }
    }

    return v12;
  }

  memset(&bytes[1], 0, 52);
  bytes[0] = a3 + 104;
  if ((*(*this + 1952))(this))
  {
    (*(*this + 1952))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::configureMagicPktFilter();
    }
  }

  v13 = v24 + 42 * a3;
  v14 = v13[4];
  bytes[4] = v13[4];
  memcpy(&bytes[5], v13 + 23, v14);
  memcpy(&bytes[5] + v14, v13 + 5, v14);
  if (a4)
  {
    v15 = 14;
  }

  else if (a3 > 1)
  {
    if (a3 > 7 || *(*v9 + 19848) < 1)
    {
      if ((*(*this + 1952))(this))
      {
        (*(*this + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::configureMagicPktFilter(this, v7, this + 72, a3);
        }
      }

      goto LABEL_16;
    }

    v15 = *(*v9 + 4 * (a3 - 2) + 10312);
  }

  else
  {
    v15 = *(v13 + 1);
  }

  bytes[3] = v15;
LABEL_16:
  v16 = *(*v9 + 5408);
  keys[0] = bytes;
  keys[1] = 56;
  v17 = AppleBCMWLANCommander::runIOVarSet(v16, "pkt_filter_add", keys, 0, 0);
  if (v17)
  {
    v12 = v17;
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::configureMagicPktFilter(this);
      }
    }

    keys[0] = OSString::withCString("wl_pkt_filter_t.bin");
    values = OSData::withBytes(bytes, 0x38uLL);
    v18 = *(*(this + 9) + 5536);
    v19 = OSDictionary::withObjects(&values, keys, 1u, 0);
    v20 = (*(*this + 112))(this, v12);
    CCFaultReporter::reportFault(v18, 4u, "/Library/Caches/com.apple.xbs/Sources/AppleBCMWLANV3_driverkit/AppleBCMWLANCore.cpp", 0xBE7Eu, "configureMagicPktFilter", v19, -469792765, "status=%s", v20);
    AppleBCMWLANUtil::releaseOSObjectArray(keys, &values, 1);
  }

  else
  {
    ++*(*(this + 9) + 10042);
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::configureMagicPktFilter(this);
      }
    }

    return 0;
  }

  return v12;
}

uint64_t AppleBCMWLANCore::configureLegacyFilters(AppleBCMWLANCore *this)
{
  if ((*(*this + 1952))(this))
  {
    (*(*this + 1952))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::configureLegacyFilters(this);
    }
  }

  v10 = -1431655766;
  v7 = xmmword_1003ADC10;
  v2 = *(this + 9);
  v8 = 0xFFFFFFFF00000004;
  v9 = *(v2 + 9484);
  v3 = *(v2 + 5408);
  v6[0] = &v7;
  v6[1] = 28;
  v4 = AppleBCMWLANCommander::runIOVarSet(v3, "pkt_filter_add", v6, 0, 0);
  if (v4)
  {
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::configureLegacyFilters(this);
      }
    }
  }

  else
  {
    ++*(*(this + 9) + 10041);
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::configureLegacyFilters(this);
      }
    }

    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::configureLegacyFilters(this);
      }
    }
  }

  return v4;
}

uint64_t AppleBCMWLANCore::enablePacketFilters(AppleBCMWLANCore *this, int a2)
{
  if ((*(*this + 1952))(this))
  {
    (*(*this + 1952))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::enablePacketFilters(this);
    }
  }

  if (IO80211BssManager::isAssociated(*(*(this + 9) + 5432)))
  {
    v8[0] = a2;
    v8[1] = 1;
    v4 = *(*(this + 9) + 5408);
    v7[0] = v8;
    v7[1] = 8;
    v5 = AppleBCMWLANCommander::runIOVarSet(v4, "pkt_filter_enable", v7, 0, 0);
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::enablePacketFilters(this);
      }
    }
  }

  else
  {
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::enablePacketFilters(this);
      }
    }

    return 3758096385;
  }

  return v5;
}

uint64_t AppleBCMWLANCore::disablePacketFilters(AppleBCMWLANCore *this, int a2)
{
  if ((*(*this + 1952))(this))
  {
    (*(*this + 1952))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::disablePacketFilters(this);
    }
  }

  v8[0] = a2;
  v8[1] = 0;
  v4 = *(*(this + 9) + 5408);
  v7[0] = v8;
  v7[1] = 8;
  v5 = AppleBCMWLANCommander::runIOVarSet(v4, "pkt_filter_enable", v7, 0, 0);
  if ((*(*this + 1952))(this))
  {
    (*(*this + 1952))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::disablePacketFilters(this);
    }
  }

  return v5;
}

uint64_t AppleBCMWLANCore::deleteIPv6PktFilters(AppleBCMWLANCore *this)
{
  if ((*(*this + 1952))(this))
  {
    (*(*this + 1952))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::deleteIPv6PktFilters(this);
    }
  }

  v2 = *(this + 9);
  if (*(v2 + 10036))
  {
    v3 = 0;
    while (!AppleBCMWLANCommander::sendIOVarSet(*(v2 + 5408), "pkt_filter_delete"))
    {
      ++v3;
      v2 = *(this + 9);
      if (*(v2 + 10036) <= v3)
      {
        goto LABEL_8;
      }
    }

    result = (*(*this + 1952))(this);
    if (result)
    {
      (*(*this + 1952))(this);
      result = CCLogStream::shouldLog();
      if (result)
      {
        return AppleBCMWLANCore::deleteIPv6PktFilters(this);
      }
    }
  }

  else
  {
LABEL_8:
    result = (*(*this + 1952))(this);
    if (result)
    {
      (*(*this + 1952))(this);
      result = CCLogStream::shouldLog();
      if (result)
      {
        return AppleBCMWLANCore::deleteIPv6PktFilters(this);
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::deleteIPv4PktFilters(AppleBCMWLANCore *this)
{
  if ((*(*this + 1952))(this))
  {
    (*(*this + 1952))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::deleteIPv4PktFilters(this);
    }
  }

  if (AppleBCMWLANCommander::sendIOVarSet(*(*(this + 9) + 5408), "pkt_filter_delete"))
  {
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::deleteIPv4PktFilters(this);
      }
    }
  }

  result = (*(*this + 1952))(this);
  if (result)
  {
    (*(*this + 1952))(this);
    result = CCLogStream::shouldLog();
    if (result)
    {
      return AppleBCMWLANCore::deleteIPv4PktFilters(this);
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::deleteEapolFilter(AppleBCMWLANCore *this)
{
  if ((*(*this + 1952))(this))
  {
    (*(*this + 1952))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::deleteEapolFilter(this);
    }
  }

  if ((*(*this + 1952))(this))
  {
    (*(*this + 1952))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::deleteEapolFilter(this);
    }
  }

  if (AppleBCMWLANCommander::sendIOVarSet(*(*(this + 9) + 5408), "pkt_filter_delete"))
  {
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::deleteEapolFilter(this);
      }
    }
  }

  result = (*(*this + 1952))(this);
  if (result)
  {
    (*(*this + 1952))(this);
    result = CCLogStream::shouldLog();
    if (result)
    {
      return AppleBCMWLANCore::deleteEapolFilter(this);
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::deleteMagicPktFilters(AppleBCMWLANCore *this)
{
  if ((*(*this + 1952))(this))
  {
    (*(*this + 1952))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::deleteMagicPktFilters(this);
    }
  }

  v2 = AppleBCMWLANConfigManager::wompEnabled(*(*(this + 9) + 5464));
  v3 = *(this + 9);
  if (v2)
  {
    if (AppleBCMWLANConfigManager::wompEnabled(*(v3 + 5464)))
    {
      if (AppleBCMWLANCommander::sendIOVarSet(*(*(this + 9) + 5408), "pkt_filter_delete"))
      {
        if ((*(*this + 1952))(this))
        {
          (*(*this + 1952))(this);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANCore::deleteMagicPktFilters(this);
          }
        }
      }
    }
  }

  else if (*(v3 + 19848) != -2)
  {
    v5 = 0;
    do
    {
      if (AppleBCMWLANCommander::sendIOVarSet(*(v3 + 5408), "pkt_filter_delete"))
      {
        if ((*(*this + 1952))(this))
        {
          (*(*this + 1952))(this);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANCore::deleteMagicPktFilters(this);
          }
        }
      }

      ++v5;
      v3 = *(this + 9);
    }

    while (v5 < *(v3 + 19848) + 2);
  }

  result = (*(*this + 1952))(this);
  if (result)
  {
    (*(*this + 1952))(this);
    result = CCLogStream::shouldLog();
    if (result)
    {
      return AppleBCMWLANCore::deleteMagicPktFilters(this);
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::resetWoWConfig(AppleBCMWLANCore *this)
{
  if ((*(*this + 1952))(this))
  {
    (*(*this + 1952))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::resetWoWConfig(this);
    }
  }

  AppleBCMWLANCore::configureAvgRssiParamsForAssociatedSleepExit(this);
  AppleBCMWLANKeepAliveOffload::unConfigureKeepAlives(*(*(this + 9) + 5544));
  AppleBCMWLANCore::deleteIPv4PktFilters(this);
  AppleBCMWLANCore::deleteMagicPktFilters(this);
  AppleBCMWLANCore::deleteEapolFilter(this);
  AppleBCMWLANCore::deleteIPv6PktFilters(this);
  AppleBCMWLANCore::resetPorts(this);
  AppleBCMWLANCore::resetOffloads(this);
  AppleBCMWLANCore::configureICMP(this, 0);
  if (AppleBCMWLANCore::featureFlagIsBitSet(this, 43))
  {
    v2 = 50000;
    v3 = 15000;
  }

  else
  {
    v2 = 0xFFFF;
    v3 = 30000;
  }

  AppleBCMWLANPowerStateAdapter::configureMulticastBroadcastWaitPeriod(*(*(this + 9) + 35984), v2, v3);
  AppleBCMWLANCore::configureLPASMode(this, 0);
  AppleBCMWLANCore::resetPktFilterParams(this);
  AppleBCMWLANCore::allowLinkup(this);
  if (AppleBCMWLANCore::checkForEarlyBeconTerminationSupport(this) && AppleBCMWLANPowerManager::configureEarlyBeaconTermination(*(*(this + 9) + 5520), 1))
  {
    result = (*(*this + 1952))(this);
    if (result)
    {
      (*(*this + 1952))(this);
      result = CCLogStream::shouldLog();
      if (result)
      {
        return AppleBCMWLANCore::resetWoWConfig(this);
      }
    }
  }

  else
  {
    *(*(this + 9) + 6592) = 0;
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::resetWoWConfig(this);
      }
    }

    result = (*(*this + 1952))(this);
    if (result)
    {
      (*(*this + 1952))(this);
      result = CCLogStream::shouldLog();
      if (result)
      {
        return AppleBCMWLANCore::resetWoWConfig(this);
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::resetOffloads(AppleBCMWLANCore *this)
{
  if ((*(*this + 1952))(this))
  {
    (*(*this + 1952))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::resetOffloads(this);
    }
  }

  AppleBCMWLANCore::configureARPOffload(this, 0);
  AppleBCMWLANCore::configureNeighbourDiscovery(this, 0);
  if ((*(*this + 1952))(this))
  {
    (*(*this + 1952))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::resetOffloads(this);
    }
  }

  return 0;
}

uint64_t AppleBCMWLANCore::configureICMP(AppleBCMWLANCore *this, int a2)
{
  v12 = a2;
  v3 = this & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000;
  if ((*(*this + 1952))(this))
  {
    (*(*this + 1952))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::configureICMP(this);
    }
  }

  if (AppleBCMWLANCore::featureFlagIsBitSet(this, 31))
  {
    return 3758097095;
  }

  v5 = (*(*this + 88))(this);
  if ((*(*v5 + 136))(v5))
  {
    v9 = this;
    v10 = AppleBCMWLANCore::handleSetICMPAsyncCallBack;
    v11 = 0;
    v6 = AppleBCMWLANCommander::sendIOVarSet(*(*(this + 9) + 5408), "pkt_filter_icmp");
  }

  else
  {
    v7 = *(*(this + 9) + 5408);
    v9 = &v12;
    v10 = 4;
    v6 = AppleBCMWLANCommander::runIOVarSet(v7, "pkt_filter_icmp", &v9, 0, 0);
  }

  v4 = v6;
  if (v6)
  {
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::configureICMP(this, v3, &v12, v4);
      }
    }
  }

  if ((*(*this + 1952))(this))
  {
    (*(*this + 1952))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::configureICMP(this);
    }
  }

  return v4;
}

uint64_t AppleBCMWLANCore::isIPv6AlreadyProgrammed(AppleBCMWLANCore *this)
{
  if ((*(*this + 1952))(this))
  {
    (*(*this + 1952))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::isIPv6AlreadyProgrammed(this);
    }
  }

  v2 = *(this + 9);
  v3 = *(v2 + 10036);
  if (v3)
  {
    v4 = (v2 + 9780);
    while (*v4 == *(v4 - 32) && v4[1] == *(v4 - 31))
    {
      v4 += 2;
      if (!--v3)
      {
        goto LABEL_12;
      }
    }

    return 0;
  }

  else
  {
LABEL_12:
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::isIPv6AlreadyProgrammed(this);
      }
    }

    return 1;
  }
}

uint64_t AppleBCMWLANCore::configureARPOffload(AppleBCMWLANCore *this, int a2)
{
  v19 = a2;
  v3 = this & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000;
  if ((*(*this + 1952))(this))
  {
    (*(*this + 1952))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::configureARPOffload(this);
    }
  }

  v4 = (*(*this + 88))(this);
  if ((*(*v4 + 136))(v4))
  {
    __b[0] = this;
    __b[1] = AppleBCMWLANCore::handleSetARPOffloadAsyncCallBack;
    __b[2] = 0;
    v5 = *(*(this + 9) + 5408);
    v17 = &v19;
    v18 = 4;
    v6 = AppleBCMWLANCommander::sendIOVarSet(v5, "arpoe");
  }

  else
  {
    v7 = *(*(this + 9) + 5408);
    __b[0] = &v19;
    __b[1] = 4;
    v6 = AppleBCMWLANCommander::runIOVarSet(v7, "arpoe", __b, 0, 0);
  }

  v8 = v6;
  if (v6)
  {
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::configureARPOffload(this, v3, &v19, v8);
      }
    }

    return v8;
  }

  if (!v19)
  {
    goto LABEL_35;
  }

  v16 = 9;
  v9 = *(*(this + 9) + 5408);
  __b[0] = &v16;
  __b[1] = 4;
  if (AppleBCMWLANCommander::runIOVarSet(v9, "arp_ol", __b, 0, 0))
  {
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::configureARPOffload(this);
      }
    }
  }

  if (AppleBCMWLANCommander::runIOVarSet(*(*(this + 9) + 5408), "arp_hostip_clear", &kNoTxPayload, 0, 0))
  {
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::configureARPOffload(this);
      }
    }
  }

  memset(__b, 170, sizeof(__b));
  v10 = *(*(this + 9) + 11288);
  ProtocolOffloadData = IO80211InfraInterface::getProtocolOffloadData();
  if (ProtocolOffloadData)
  {
    v8 = ProtocolOffloadData;
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::configureARPOffload(this);
      }
    }

    return v8;
  }

  v15 = __b[0];
  v12 = *(*(this + 9) + 5408);
  v17 = &v15;
  v18 = 4;
  v13 = AppleBCMWLANCommander::runIOVarSet(v12, "arp_hostip", &v17, 0, 0);
  if (v13)
  {
    v8 = v13;
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::configureARPOffload(this);
      }
    }
  }

  else
  {
LABEL_35:
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::configureARPOffload(this);
      }
    }

    return 0;
  }

  return v8;
}

uint64_t AppleBCMWLANCore::configureNeighbourDiscovery(AppleBCMWLANCore *this, int a2)
{
  v12 = a2;
  v3 = this & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000;
  if ((*(*this + 1952))(this))
  {
    (*(*this + 1952))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::configureNeighbourDiscovery(this);
    }
  }

  if (!AppleBCMWLANCore::featureFlagIsBitSet(this, 30))
  {
    return 3758097084;
  }

  AppleBCMWLANCore::clearHostIPv6TableForNeighbourDiscovery(this);
  v4 = (*(*this + 88))(this);
  if ((*(*v4 + 136))(v4))
  {
    v9 = this;
    v10 = AppleBCMWLANCore::handleSetNDOffloadAsyncCallBack;
    v11 = 0;
    v5 = AppleBCMWLANCommander::sendIOVarSet(*(*(this + 9) + 5408), "ndoe");
  }

  else
  {
    v7 = *(*(this + 9) + 5408);
    v9 = &v12;
    v10 = 4;
    v5 = AppleBCMWLANCommander::runIOVarSet(v7, "ndoe", &v9, 0, 0);
  }

  v6 = v5;
  if (v5)
  {
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::configureNeighbourDiscovery(this, v3, &v12, v6);
      }
    }
  }

  if (v12)
  {
    v6 = AppleBCMWLANCore::configureHostIPsForNeighbourDiscovery(this);
    if (v6)
    {
      if ((*(*this + 1952))(this))
      {
        (*(*this + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::configureNeighbourDiscovery(this);
        }
      }
    }
  }

  if ((*(*this + 1952))(this))
  {
    (*(*this + 1952))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::configureNeighbourDiscovery(this);
    }
  }

  return v6;
}

uint64_t AppleBCMWLANCore::clearHostIPv6TableForNeighbourDiscovery(AppleBCMWLANCore *this)
{
  if ((*(*this + 1952))(this))
  {
    (*(*this + 1952))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::clearHostIPv6TableForNeighbourDiscovery(this);
    }
  }

  v2 = (*(*this + 88))(this);
  if ((*(*v2 + 136))(v2))
  {
    v3 = AppleBCMWLANCommander::sendIOVarSet(*(*(this + 9) + 5408), "nd_hostip_clear");
  }

  else
  {
    v3 = AppleBCMWLANCommander::runIOVarSet(*(*(this + 9) + 5408), "nd_hostip_clear", &kNoTxPayload, 0, 0);
  }

  v4 = v3;
  v5 = (*(*this + 1952))(this);
  if (v4)
  {
    if (v5)
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::clearHostIPv6TableForNeighbourDiscovery(this);
      }
    }
  }

  else if (v5)
  {
    (*(*this + 1952))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::clearHostIPv6TableForNeighbourDiscovery(this);
    }
  }

  return v4;
}

uint64_t AppleBCMWLANCore::configureHostIPsForNeighbourDiscovery(AppleBCMWLANCore *this)
{
  if ((*(*this + 1952))(this))
  {
    (*(*this + 1952))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::configureHostIPsForNeighbourDiscovery(this);
    }
  }

  memset(&v9[2], 170, 0x220uLL);
  v2 = *(*(this + 9) + 11288);
  ProtocolOffloadData = IO80211InfraInterface::getProtocolOffloadData();
  if (ProtocolOffloadData)
  {
    v4 = ProtocolOffloadData;
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::configureHostIPsForNeighbourDiscovery(this);
      }
    }
  }

  else if (HIDWORD(v9[2]))
  {
    v5 = 0;
    while (1)
    {
      v6 = *(*(this + 9) + 5408);
      v9[0] = &v9[2 * v5 + 3];
      v9[1] = 16;
      v7 = AppleBCMWLANCommander::runIOVarSet(v6, "nd_hostip", v9, 0, 0);
      if (v7)
      {
        break;
      }

      if (HIDWORD(v9[2]) <= ++v5)
      {
        goto LABEL_12;
      }
    }

    v4 = v7;
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::configureHostIPsForNeighbourDiscovery(this);
      }
    }
  }

  else
  {
LABEL_12:
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::configureHostIPsForNeighbourDiscovery(this);
      }
    }

    return 0;
  }

  return v4;
}

uint64_t AppleBCMWLANCore::getNeighbourDiscoveryStats(AppleBCMWLANCore *this)
{
  memset(v9, 170, sizeof(v9));
  v8 = 0;
  if ((*(*this + 1952))(this))
  {
    (*(*this + 1952))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::getNeighbourDiscoveryStats(this);
    }
  }

  if (!AppleBCMWLANCore::featureFlagIsBitSet(this, 30))
  {
    return 3758097084;
  }

  v6 = &v8;
  v7 = 0x400040004;
  v2 = AppleBCMWLANCommander::runIOVarGet(*(*(this + 9) + 5408), "ndoe", &kNoTxPayload, &v6, 0);
  if (v2)
  {
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::getNeighbourDiscoveryStats(this);
      }
    }
  }

  if (v8)
  {
    v6 = v9;
    v7 = 0x1800180018;
    v2 = AppleBCMWLANCommander::runIOVarGet(*(*(this + 9) + 5408), "nd_status", &kNoTxPayload, &v6, 0);
    v3 = (*(*this + 1952))(this);
    if (v2)
    {
      if (v3)
      {
        (*(*this + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::getNeighbourDiscoveryStats(this);
        }
      }

      return v2;
    }

    if (v3)
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        v5 = (*(*this + 1952))(this);
        CCLogStream::logInfo(v5, "[dk] %s@%d: Neighbor Discovery Status: \thost_ip_entries %u \thost_ip_overflow %u \n\tpeer_request %u \t\tpeer_request_drop %u \n\tpeer_reply_drop %u \tpeer_service %u \n", "getNeighbourDiscoveryStats", 49413, LODWORD(v9[0]), HIDWORD(v9[0]), LODWORD(v9[1]), HIDWORD(v9[1]), LODWORD(v9[2]), HIDWORD(v9[2]));
      }
    }

    v2 = 0;
  }

  if ((*(*this + 1952))(this))
  {
    (*(*this + 1952))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::getNeighbourDiscoveryStats(this);
    }
  }

  return v2;
}

const char *pmReasonStr(int a1)
{
  if (a1 > 255)
  {
    if (a1 > 4095)
    {
      if (a1 >= 0x4000)
      {
        if (a1 == 0x4000)
        {
          return "WLC_PMD_NON_PRIM_STA_UP";
        }

        if (a1 == 0x8000)
        {
          return "WLC_PMD_AP_UP";
        }
      }

      else
      {
        if (a1 == 4096)
        {
          return "WLC_PMD_AWDL_AWAKE";
        }

        if (a1 == 0x2000)
        {
          return "WLC_PMD_PM2_RADIO_SOFF_PEND";
        }
      }
    }

    else if (a1 > 1023)
    {
      if (a1 == 1024)
      {
        return "WLC_PMD_TX_PEND_WAR";
      }

      if (a1 == 2048)
      {
        return "WLC_PMD_GPTIMER_STAY_AWAKE";
      }
    }

    else
    {
      if (a1 == 256)
      {
        return "WLC_PMD_CHK_UNALIGN_TBTT";
      }

      if (a1 == 512)
      {
        return "WLC_PMD_APSD_STA_UP";
      }
    }

    return "UNKNOWN";
  }

  if (a1 > 15)
  {
    if (a1 > 63)
    {
      if (a1 == 64)
      {
        return "WLC_PMD_PM_PEND";
      }

      if (a1 == 128)
      {
        return "WLC_PMD_PS_POLL";
      }
    }

    else
    {
      if (a1 == 16)
      {
        return "WLC_PMD_RM_IN_PROGRESS";
      }

      if (a1 == 32)
      {
        return "WLC_PMD_AS_IN_PROGRESS";
      }
    }

    return "UNKNOWN";
  }

  if (a1 != 1)
  {
    if (a1 == 2)
    {
      return "WLC_PMD_PM_AWAKE_BCN";
    }

    if (a1 == 8)
    {
      return "WLC_PMD_SCAN_IN_PROGRESS";
    }

    return "UNKNOWN";
  }

  return "WLC_PMD_WAKE_SET";
}

uint64_t AppleBCMWLANCore::ignoreUnicastPackets(AppleBCMWLANCore *this)
{
  v2 = this & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000;
  if ((*(*this + 1952))(this))
  {
    (*(*this + 1952))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::ignoreUnicastPackets(this);
    }
  }

  v8 = 0;
  read_random();
  v9 = 0x10000;
  v10 = -16384;
  v3 = *(*(this + 9) + 5408);
  v7[0] = &v9;
  v7[1] = 6;
  v4 = AppleBCMWLANCommander::runIOVarSet(v3, "pkt_filter_ports", v7, 0, 0);
  v5 = (*(*this + 1952))(this);
  if (v4)
  {
    if (v5)
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::ignoreUnicastPackets(this);
      }
    }
  }

  else
  {
    if (v5)
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::ignoreUnicastPackets(this, v2, &v8, 0);
      }
    }

    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::ignoreUnicastPackets(this);
      }
    }
  }

  return v4;
}

void *AppleBCMWLANCore::calculateAvailableRoamTime(void *this, int a2, int a3, int *a4)
{
  v5 = this[9];
  v6 = 6608;
  if (a2 == 2)
  {
    v6 = 6644;
  }

  v7 = *(v5 + v6);
  if (*(v5 + 35528))
  {
    *a4 = v7;
  }

  else
  {
    v10 = this;
    v11 = *a4 - a3;
    if (*a4 <= a3)
    {
      v11 = 0;
    }

    if (v11 < v7)
    {
      v7 = v11;
    }

    *a4 = v7;
    this = (*(*this + 1952))(this);
    if (this)
    {
      (*(*v10 + 1952))(v10);
      this = CCLogStream::shouldLog();
      if (this)
      {
        v12 = (*(*v10 + 1952))(v10);
        if (a2 == 1)
        {
          v13 = "WoW";
        }

        else
        {
          v13 = "LPAS";
        }

        return CCLogStream::logAlert(v12, "[dk] %s@%d:available roam time for %s is %d msecs, consumedRoamTime[%d msec]\n", "calculateAvailableRoamTime", 51483, v13, *a4, a3);
      }
    }
  }

  return this;
}

uint64_t AppleBCMWLANCore::isGASQueryAllowed(AppleBCMWLANCore *this, uint64_t a2, unint64_t a3)
{
  memset(v5, 0, sizeof(v5));
  if (IO80211ThreadProcessInfo::getProcessName(v5, 0x80, a3))
  {
    IO80211Controller::getProcessName(this, v5, 0x80uLL);
  }

  return 0;
}

uint64_t AppleBCMWLANCore::disableECounters(AppleBCMWLANCore *this)
{
  if (AppleBCMWLANCore::featureFlagIsBitSet(this, 53))
  {
    v6 = AppleBCMWLANCore::disableECountersV2(this, v2, v3, v4, v5);
  }

  else
  {
    v6 = AppleBCMWLANCore::disableECountersV1(this);
  }

  v7 = v6;
  v8 = *(this + 9);
  if (v6)
  {
    *(v8 + 960) = 0;
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::disableECounters(this);
      }
    }
  }

  else
  {
    *(v8 + 960) = 2;
  }

  return v7;
}

uint64_t AppleBCMWLANCore::enableECounters(AppleBCMWLANCore *this)
{
  if (AppleBCMWLANCore::featureFlagIsBitSet(this, 53))
  {
    v2 = AppleBCMWLANCore::enableECountersV2(this);
  }

  else
  {
    v2 = AppleBCMWLANCore::enableECountersV1(this);
  }

  v3 = v2;
  v4 = *(this + 9);
  if (v2)
  {
    *(v4 + 960) = 0;
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::enableECounters(this);
      }
    }
  }

  else
  {
    *(v4 + 960) = 3;
  }

  return v3;
}

uint64_t AppleBCMWLANCore::enableECountersV2(AppleBCMWLANCore *this)
{
  v23 = -21846;
  v2 = IOMallocZeroData();
  if (!v2)
  {
    return 12;
  }

  v4 = v2;
  __n = -21846;
  __n_2 = 2;
  __n_6 = 5;
  v5 = *(this + 9);
  v21 = *(v5 + 17772);
  v22 = 0;
  v6 = AppleBCMWLANCommandWithXTLV::withLengthAndHeader(0x400, &__n_2, 0xC, *(v5 + 14248), v3);
  if (!v6)
  {
    v15 = 3758097085;
    goto LABEL_24;
  }

  v7 = v6;
  EcountersConfigInfraContainer = AppleBCMWLANCore::getEcountersConfigInfraContainer(this, v4, 0x80u, &__n);
  if (EcountersConfigInfraContainer)
  {
    goto LABEL_31;
  }

  AppleBCMWLANCommandWithXTLV::addXTLV(v7, 1, __n, v4);
  if (AppleBCMWLANCore::featureFlagIsBitSet(this, 104))
  {
    EcountersConfigInfraContainer = AppleBCMWLANCore::getEcountersConfigPeerStatsContainer(this, v4, 0x80u, &__n);
    if (EcountersConfigInfraContainer)
    {
      goto LABEL_31;
    }

    AppleBCMWLANCommandWithXTLV::addXTLV(v7, 1, __n, v4);
  }

  *(v4 + 96) = 0u;
  *(v4 + 112) = 0u;
  *(v4 + 64) = 0u;
  *(v4 + 80) = 0u;
  *(v4 + 32) = 0u;
  *(v4 + 48) = 0u;
  *v4 = 0u;
  *(v4 + 16) = 0u;
  EcountersConfigInfraContainer = AppleBCMWLANCore::getEcountersConfigSoftAPContainer(this, v4, 0x80u, &__n);
  if (EcountersConfigInfraContainer)
  {
    goto LABEL_31;
  }

  AppleBCMWLANCommandWithXTLV::addXTLV(v7, 1, __n, v4);
  *v4 = 0u;
  *(v4 + 16) = 0u;
  *(v4 + 32) = 0u;
  *(v4 + 48) = 0u;
  *(v4 + 64) = 0u;
  *(v4 + 80) = 0u;
  *(v4 + 96) = 0u;
  *(v4 + 112) = 0u;
  AppleBCMWLANCore::getEcountersConfigGlobalContainer(this, v4, 0x80u, &__n);
  if (EcountersConfigInfraContainer)
  {
    goto LABEL_31;
  }

  AppleBCMWLANCommandWithXTLV::addXTLV(v7, 1, __n, v4);
  *v4 = 0u;
  *(v4 + 16) = 0u;
  *(v4 + 32) = 0u;
  *(v4 + 48) = 0u;
  *(v4 + 64) = 0u;
  *(v4 + 80) = 0u;
  *(v4 + 96) = 0u;
  *(v4 + 112) = 0u;
  EcountersConfigInfraContainer = AppleBCMWLANCore::getEcountersConfigSlice0Container(this, v4, 0x80u, &__n);
  if (EcountersConfigInfraContainer)
  {
    goto LABEL_31;
  }

  AppleBCMWLANCommandWithXTLV::addXTLV(v7, 1, __n, v4);
  *v4 = 0u;
  *(v4 + 16) = 0u;
  *(v4 + 32) = 0u;
  *(v4 + 48) = 0u;
  *(v4 + 64) = 0u;
  *(v4 + 80) = 0u;
  *(v4 + 96) = 0u;
  *(v4 + 112) = 0u;
  AppleBCMWLANCore::getEcountersConfigSlice1Container(this, v4, 0x80u, &__n);
  if (EcountersConfigInfraContainer)
  {
    goto LABEL_31;
  }

  AppleBCMWLANCommandWithXTLV::addXTLV(v7, 1, __n, v4);
  if (AppleBCMWLANCore::featureFlagIsBitSet(this, 76))
  {
    *(v4 + 96) = 0u;
    *(v4 + 112) = 0u;
    *(v4 + 64) = 0u;
    *(v4 + 80) = 0u;
    *(v4 + 32) = 0u;
    *(v4 + 48) = 0u;
    *v4 = 0u;
    *(v4 + 16) = 0u;
    AppleBCMWLANCore::getEcountersConfigSlice2Container(this, v4, 0x80u, &__n);
    if (EcountersConfigInfraContainer)
    {
      goto LABEL_31;
    }

    AppleBCMWLANCommandWithXTLV::addXTLV(v7, 1, __n, v4);
  }

  if (!AppleBCMWLANCore::featureFlagIsBitSet(this, 122))
  {
LABEL_13:
    AppleBCMWLANConfigManager::setupFirmwareWithDTDefaults(v7);
    AppleBCMWLANCommandWithXTLV::complete(v7);
    v9 = *(*(this + 9) + 5408);
    CompletionRingPtr = AppleBCMWLANDynamicRingOperationContext::getCompletionRingPtr(v7);
    CommandLength = AppleBCMWLANCommandWithXTLV::getCommandLength(v7);
    v12 = CommandLength;
    if (!CompletionRingPtr)
    {
      v12 = 0;
    }

    if (CommandLength)
    {
      v13 = CompletionRingPtr;
    }

    else
    {
      v13 = 0;
    }

    v17[0] = v13;
    v17[1] = v12;
    v14 = AppleBCMWLANCommander::runIOVarSet(v9, "ecounters", v17, 0, 0);
    v15 = v14;
    if (v14 != -469794537)
    {
      if (v14)
      {
        if ((*(*this + 1952))(this))
        {
          (*(*this + 1952))(this);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANCore::enableECountersV2(this);
          }
        }
      }
    }

    goto LABEL_23;
  }

  EcountersConfigInfraContainer = AppleBCMWLANCore::getEcountersConfigPeerStatsContainer(this, v4, 0x80u, &__n);
  if (!EcountersConfigInfraContainer)
  {
    AppleBCMWLANCommandWithXTLV::addXTLV(v7, 1, __n, v4);
    goto LABEL_13;
  }

LABEL_31:
  v15 = EcountersConfigInfraContainer;
LABEL_23:
  (*(*v7 + 16))(v7);
LABEL_24:
  IOFreeData();
  return v15;
}

uint64_t AppleBCMWLANCore::enableECountersV1(AppleBCMWLANCore *this)
{
  v2 = IOMallocZeroData();
  if (!v2)
  {
    return 12;
  }

  v3 = v2;
  *v2 = 327681;
  if (*(*(this + 9) + 780) <= 4u)
  {
    v4 = 1400;
  }

  else
  {
    v4 = 1648;
  }

  *(v2 + 4) = v4;
  *(v2 + 6) = *(*(this + 9) + 17772);
  *(v2 + 8) = 0x5F004500030000;
  *(v2 + 16) = 83;
  v5 = *(*(this + 9) + 5408);
  v10[0] = v3;
  v10[1] = 18;
  v6 = AppleBCMWLANCommander::runIOVarSet(v5, "ecounters", v10, 0, 0);
  v7 = v6;
  if (v6 != -469794537 && v6 != 0)
  {
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::enableECountersV1(this);
      }
    }
  }

  IOFreeData();
  return v7;
}

uint64_t AppleBCMWLANCore::disableECountersV1(AppleBCMWLANCore *this)
{
  v2 = IOMallocZeroData();
  if (!v2)
  {
    return 12;
  }

  v3 = v2;
  *v2 = 1;
  *(v2 + 2) = 0;
  *(v2 + 10) = 0;
  v4 = *(*(this + 9) + 5408);
  v9[0] = v3;
  v9[1] = 14;
  v5 = AppleBCMWLANCommander::runIOVarSet(v4, "ecounters", v9, 0, 0);
  v6 = v5;
  if (v5 != -469794537 && v5 != 0)
  {
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::disableECountersV1(this);
      }
    }
  }

  IOFreeData();
  return v6;
}

uint64_t AppleBCMWLANCore::configureEventLogShrinkStats(AppleBCMWLANCore *this, char a2)
{
  v12 = 2863311530;
  LOBYTE(v12) = a2;
  v3 = *(*(this + 9) + 5408);
  v11[0] = &v12;
  v11[1] = 8;
  v4 = AppleBCMWLANCommander::runIOVarSet(v3, "event_log_set_shrink", v11, 0, 0);
  if (!v4)
  {
    goto LABEL_6;
  }

  v5 = v4;
  if ((*(*this + 1952))(this))
  {
    (*(*this + 1952))(this);
    if (CCLogStream::shouldLog())
    {
      v7 = (*(*this + 1952))(this);
      v8 = v12;
      v9 = HIDWORD(v12);
      v10 = (*(*this + 112))(this, v5);
      CCLogStream::logInfo(v7, "[dk] %s@%d: Error: Unable to deallocate event_log_set_init set %d, size %d: %s\n", "configureEventLogShrinkStats", 52656, v8, v9, v10);
    }
  }

  result = 3825172759;
  if (v5 != -469794537)
  {
LABEL_6:
    result = (*(*this + 1952))(this);
    if (result)
    {
      (*(*this + 1952))(this);
      result = CCLogStream::shouldLog();
      if (result)
      {
        AppleBCMWLANCore::configureEventLogShrinkStats(this);
        return 0;
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::configureEventLogStats(AppleBCMWLANCore *this, char a2, unsigned __int16 a3)
{
  v19 = -1431655766;
  v20 = a3;
  LOBYTE(v19) = a2;
  v4 = *(*(this + 9) + 5408);
  v17 = &v19;
  v18 = 8;
  v5 = AppleBCMWLANCommander::runIOVarSet(v4, "event_log_set_init", &v17, 0, 0);
  if (v5)
  {
    v6 = v5;
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        v7 = (*(*this + 1952))(this);
        v8 = v19;
        v9 = v20;
        v10 = (*(*this + 112))(this, v6);
        CCLogStream::logInfo(v7, "[dk] %s@%d: Error: Unable to set event_log_set_init set %d, size %d: %s\n", "configureEventLogStats", 52678, v8, v9, v10);
      }
    }
  }

  else
  {
    v11 = *(*(this + 9) + 5408);
    v17 = &v19;
    v18 = 8;
    v6 = AppleBCMWLANCommander::runIOVarSet(v11, "event_log_set_expand", &v17, 0, 0);
    if (v6)
    {
      if ((*(*this + 1952))(this))
      {
        (*(*this + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          v13 = (*(*this + 1952))(this);
          v14 = v19;
          v15 = v20;
          v16 = (*(*this + 112))(this, v6);
          CCLogStream::logAlert(v13, "[dk] %s@%d: Error: Unable to set event_log_set_init set %d, size %d: %s\n", "configureEventLogStats", 52684, v14, v15, v16);
        }
      }
    }
  }

  return v6;
}

uint64_t AppleBCMWLANCore::handleEventLogGetAsyncCallback(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = result;
    if (!(*(*result + 1952))(result) || ((*(*v4 + 1952))(v4), (CCLogStream::shouldLogConsole() & 1) == 0))
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        v5 = (*(*v4 + 112))(v4, a3);
        v6[0] = 67109890;
        v6[1] = 78;
        v7 = 2080;
        v8 = "handleEventLogGetAsyncCallback";
        v9 = 1024;
        v10 = 52921;
        v11 = 2080;
        v12 = v5;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%c [dk] %s@%d: LQM-WiFi-Roam: fail to dump roam target evaluation - %s\n", v6, 0x22u);
      }
    }

    result = (*(*v4 + 1952))(v4);
    if (result)
    {
      (*(*v4 + 1952))(v4);
      result = CCLogStream::shouldLog();
      if (result)
      {
        return AppleBCMWLANCore::handleEventLogGetAsyncCallback(v4);
      }
    }
  }

  return result;
}

BOOL AppleBCMWLANCore::isFourRowPowerTableSupported(AppleBCMWLANCore *this)
{
  TxPowerCapConfig = AppleBCMWLANConfigManager::getTxPowerCapConfig(*(*(this + 9) + 5464));
  v2 = *(TxPowerCapConfig + 11);
  if (!*(TxPowerCapConfig + 11))
  {
    return 0;
  }

  if (*(TxPowerCapConfig + 1) == 2)
  {
    return 1;
  }

  v4 = (TxPowerCapConfig + 2);
  v5 = -1;
  do
  {
    v6 = v5;
    if (-v2 == v5)
    {
      break;
    }

    v7 = *v4++;
    --v5;
  }

  while (v7 != 2);
  return -v6 < v2;
}

uint64_t AppleBCMWLANCore::configTxPowerCapControl(AppleBCMWLANCore *this)
{
  result = AppleBCMWLANConfigManager::getTxPowerCapConfig(*(*(this + 9) + 5464));
  v3 = *(result + 12);
  switch(v3)
  {
    case 4:
      v10 = *(result + 1);
      *v12 = 772;
      v12[2] = v10;
      v6 = *(*(this + 9) + 5408);
      v7 = 3;
      break;
    case 3:
      *&v12[1] = 0xAAAAAAAAAAAAAAAALL;
      v13 = -21846;
      v12[0] = 3;
      v8 = *(result + 11);
      if (*(result + 11))
      {
        v9 = 0;
        do
        {
          v12[v9 + 1] = *(result + 1 + v9);
          ++v9;
        }

        while (v9 < v8);
      }

      v6 = *(*(this + 9) + 5408);
      v7 = 11;
      break;
    case 2:
      v12[5] = -86;
      *&v12[1] = -1431655766;
      v12[0] = 2;
      v4 = *(result + 11);
      if (*(result + 11))
      {
        v5 = 0;
        do
        {
          v12[v5 + 1] = *(result + 1 + v5);
          ++v5;
        }

        while (v5 < v4);
      }

      v6 = *(*(this + 9) + 5408);
      v7 = 6;
      break;
    default:
      return result;
  }

  v11[0] = v12;
  v11[1] = v7;
  result = AppleBCMWLANCommander::runIOVarSet(v6, "txcapconfig", v11, 0, 0);
  if (result)
  {
    return CCFaultReporter::reportFault(*(*(this + 9) + 5536), 4u, "/Library/Caches/com.apple.xbs/Sources/AppleBCMWLANV3_driverkit/AppleBCMWLANCore.cpp", 0xCF9Cu, "configTxPowerCapControl", 0, result, "txcapconfig failed");
  }

  return result;
}

uint64_t AppleBCMWLANCore::setTxPowerCapState(uint64_t this)
{
  v1 = *(this + 72);
  if (*(v1 + 10376))
  {
    v2 = (v1 + 0x4000);
    if (v2[867] == 1)
    {
      return AppleBCMWLANCore::sendTxPowerCapValueToFirmware(this, v2[848], v2[847]);
    }
  }

  return this;
}

uint64_t AppleBCMWLANCore::setTxHighCapTimeout(AppleBCMWLANCore *this, int a2)
{
  v3 = *(*(this + 9) + 5464);
  if (v3 && AppleBCMWLANConfigManager::isDualPowerModeSupported(v3))
  {
    v9 = a2;
    v5 = *(*(this + 9) + 5408);
    v8[0] = &v9;
    v8[1] = 4;
    result = AppleBCMWLANCommander::runIOVarSet(v5, "txcaphighcapto", v8, 0, 0);
    if (result != -469793788 && result != 0)
    {
      return CCFaultReporter::reportFault(*(*(this + 9) + 5536), 4u, "/Library/Caches/com.apple.xbs/Sources/AppleBCMWLANV3_driverkit/AppleBCMWLANCore.cpp", 0xD0F4u, "setTxHighCapTimeout", 0, result, "txcaphighcapto failed");
    }
  }

  else
  {
    result = (*(*this + 1952))(this);
    if (result)
    {
      (*(*this + 1952))(this);
      result = CCLogStream::shouldLog();
      if (result)
      {
        return AppleBCMWLANCore::setTxHighCapTimeout(this);
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::sendTxPowerCapBypassToFirmware(AppleBCMWLANCore *this)
{
  v2 = *(this + 9);
  v6 = *(v2 + 19781);
  if (*(v2 + 19772) == -1 || *(v2 + 19776) == -1)
  {
    result = (*(*this + 1952))(this);
    if (result)
    {
      (*(*this + 1952))(this);
      result = CCLogStream::shouldLog();
      if (result)
      {
        return AppleBCMWLANCore::sendTxPowerCapBypassToFirmware(this);
      }
    }
  }

  else
  {
    v3 = *(v2 + 5408);
    v5[0] = &v6;
    v5[1] = 4;
    result = AppleBCMWLANCommander::runIOVarSet(v3, "txcapbypass", v5, 0, 0);
    if (result)
    {
      result = (*(*this + 1952))(this);
      if (result)
      {
        (*(*this + 1952))(this);
        result = CCLogStream::shouldLog();
        if (result)
        {
          return AppleBCMWLANCore::sendTxPowerCapBypassToFirmware(this);
        }
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::heartBeatHandler(AppleBCMWLANCore *this)
{
  mach_continuous_time();
  result = absolutetime_to_nanoseconds();
  *(*(this + 9) + 19792) = 0;
  v3 = *(this + 9);
  if (*(v3 + 10376))
  {
    v4 = (v3 + 0x4000);
    if (v4[867] == 1)
    {
      return AppleBCMWLANCore::sendTxPowerCapValueToFirmware(this, v4[848], v4[847]);
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::getTxPowerCapState(uint64_t *a1, uint64_t a2)
{
  v3 = *(a1[9] + 5464);
  if (v3 && AppleBCMWLANConfigManager::isDualPowerModeSupported(v3))
  {
    *(a2 + 4) = 0;
    *a2 = 0;
    v5 = 0x600060006;
    if (!a2)
    {
      v5 = 0;
    }

    v8[0] = a2;
    v8[1] = v5;
    v6 = AppleBCMWLANCommander::runIOVarGet(*(a1[9] + 5408), "txcapstate", &kNoTxPayload, v8, 0);
    if (v6)
    {
      if ((*(*a1 + 1952))(a1))
      {
        (*(*a1 + 1952))(a1);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::getTxPowerCapState(a1);
        }
      }
    }
  }

  else
  {
    v6 = 3758097095;
    if ((*(*a1 + 1952))(a1))
    {
      (*(*a1 + 1952))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::getTxPowerCapState(a1);
      }
    }
  }

  return v6;
}

uint64_t AppleBCMWLANCore::getTxPowerCapStateV3(uint64_t *a1, uint64_t a2)
{
  v3 = *(a1[9] + 5464);
  if (v3 && AppleBCMWLANConfigManager::isDualPowerModeSupported(v3))
  {
    *(a2 + 7) = 0;
    *a2 = 0;
    v5 = 0xB000B000BLL;
    if (!a2)
    {
      v5 = 0;
    }

    v8[0] = a2;
    v8[1] = v5;
    v6 = AppleBCMWLANCommander::runIOVarGet(*(a1[9] + 5408), "txcapstate", &kNoTxPayload, v8, 0);
    if (v6)
    {
      if ((*(*a1 + 1952))(a1))
      {
        (*(*a1 + 1952))(a1);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::getTxPowerCapStateV3(a1);
        }
      }
    }
  }

  else
  {
    v6 = 3758097095;
    if ((*(*a1 + 1952))(a1))
    {
      (*(*a1 + 1952))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::getTxPowerCapStateV3(a1);
      }
    }
  }

  return v6;
}

uint64_t AppleBCMWLANCore::getTxPowerCapStateV4(uint64_t *a1, uint64_t a2)
{
  v3 = *(a1[9] + 5464);
  if (v3 && AppleBCMWLANConfigManager::isDualPowerModeSupported(v3))
  {
    *(a2 + 2) = 0;
    *a2 = 0;
    v5 = 0x300030003;
    if (!a2)
    {
      v5 = 0;
    }

    v8[0] = a2;
    v8[1] = v5;
    v6 = AppleBCMWLANCommander::runIOVarGet(*(a1[9] + 5408), "txcapstate", &kNoTxPayload, v8, 0);
    if (v6)
    {
      if ((*(*a1 + 1952))(a1))
      {
        (*(*a1 + 1952))(a1);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::getTxPowerCapStateV4(a1);
        }
      }
    }
  }

  else
  {
    v6 = 3758097095;
    if ((*(*a1 + 1952))(a1))
    {
      (*(*a1 + 1952))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::getTxPowerCapStateV4(a1);
      }
    }
  }

  return v6;
}

uint64_t AppleBCMWLANCore::getTxPowerCapDebugInfoV3(uint64_t *a1, uint64_t a2)
{
  *(a2 + 352) = 0;
  *(a2 + 320) = 0u;
  *(a2 + 336) = 0u;
  *(a2 + 288) = 0u;
  *(a2 + 304) = 0u;
  *(a2 + 256) = 0u;
  *(a2 + 272) = 0u;
  *(a2 + 224) = 0u;
  *(a2 + 240) = 0u;
  *(a2 + 192) = 0u;
  *(a2 + 208) = 0u;
  *(a2 + 160) = 0u;
  *(a2 + 176) = 0u;
  *(a2 + 128) = 0u;
  *(a2 + 144) = 0u;
  *(a2 + 96) = 0u;
  *(a2 + 112) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 80) = 0u;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  v3 = *(a1[9] + 5464);
  if (v3 && AppleBCMWLANConfigManager::isDualPowerModeSupported(v3))
  {
    v7[0] = a2;
    v7[1] = 0x16401640164;
    v5 = AppleBCMWLANCommander::runIOVarGet(*(a1[9] + 5408), "txcapdump", &kNoTxPayload, v7, 0);
    if (v5)
    {
      if ((*(*a1 + 1952))(a1))
      {
        (*(*a1 + 1952))(a1);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::getTxPowerCapDebugInfoV3(a1);
        }
      }
    }
  }

  else
  {
    v5 = 3758097095;
    if ((*(*a1 + 1952))(a1))
    {
      (*(*a1 + 1952))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::getTxPowerCapDebugInfoV3(a1);
      }
    }
  }

  return v5;
}

uint64_t AppleBCMWLANCore::getTxPowerCapDebugInfoV5(AppleBCMWLANCore *this, unsigned __int8 *a2, unsigned __int16 a3)
{
  v4 = *(*(this + 9) + 5464);
  if (v4 && AppleBCMWLANConfigManager::isDualPowerModeSupported(v4))
  {
    if (a3)
    {
      v7 = a2;
    }

    else
    {
      v7 = 0;
    }

    if (a3)
    {
      v8 = a2 == 0;
    }

    else
    {
      v8 = 1;
    }

    v9 = a3 | (a3 << 32) | 0xE0000;
    if (v8)
    {
      v9 = 0;
    }

    v12[0] = v7;
    v12[1] = v9;
    v10 = AppleBCMWLANCommander::runIOVarGet(*(*(this + 9) + 5408), "txcapdump", &kNoTxPayload, v12, 0);
    if (v10)
    {
      if ((*(*this + 1952))(this))
      {
        (*(*this + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::getTxPowerCapDebugInfoV5(this);
        }
      }
    }
  }

  else
  {
    v10 = 3758097095;
    if ((*(*this + 1952))(this, a2))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::getTxPowerCapDebugInfoV5(this);
      }
    }
  }

  return v10;
}

uint64_t AppleBCMWLANCore::getTxPowerCapDebugInfoV7(AppleBCMWLANCore *this, unsigned __int8 *a2, unsigned __int16 a3)
{
  v4 = *(*(this + 9) + 5464);
  if (v4 && AppleBCMWLANConfigManager::isDualPowerModeSupported(v4))
  {
    if (a3)
    {
      v7 = a2;
    }

    else
    {
      v7 = 0;
    }

    if (a3)
    {
      v8 = a2 == 0;
    }

    else
    {
      v8 = 1;
    }

    v9 = a3 | (a3 << 32) | 0x260000;
    if (v8)
    {
      v9 = 0;
    }

    v12[0] = v7;
    v12[1] = v9;
    v10 = AppleBCMWLANCommander::runIOVarGet(*(*(this + 9) + 5408), "txcapdump", &kNoTxPayload, v12, 0);
    if (v10)
    {
      if ((*(*this + 1952))(this))
      {
        (*(*this + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::getTxPowerCapDebugInfoV7(this);
        }
      }
    }
  }

  else
  {
    v10 = 3758097095;
    if ((*(*this + 1952))(this, a2))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::getTxPowerCapDebugInfoV7(this);
      }
    }
  }

  return v10;
}

uint64_t AppleBCMWLANCore::getTxHighCapTimeout(AppleBCMWLANCore *this, unsigned int *a2)
{
  v3 = *(*(this + 9) + 5464);
  if (v3 && AppleBCMWLANConfigManager::isDualPowerModeSupported(v3))
  {
    v5 = 0x400040004;
    if (!a2)
    {
      v5 = 0;
    }

    v8[0] = a2;
    v8[1] = v5;
    v6 = AppleBCMWLANCommander::runIOVarGet(*(*(this + 9) + 5408), "txcaphighcapto", &kNoTxPayload, v8, 0);
    if (v6)
    {
      CCFaultReporter::reportFault(*(*(this + 9) + 5536), 4u, "/Library/Caches/com.apple.xbs/Sources/AppleBCMWLANV3_driverkit/AppleBCMWLANCore.cpp", 0xD121u, "getTxHighCapTimeout", 0, v6, "txcaphighcapto failed");
    }
  }

  else
  {
    v6 = 3758097084;
    if ((*(*this + 1952))(this, a2))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::getTxHighCapTimeout(this);
      }
    }
  }

  return v6;
}

uint64_t AppleBCMWLANCore::selfDiagnosticsReport(AppleBCMWLANCore *this, int a2, const char *a3, char a4)
{
  if (!a2 && !a3)
  {
    return 3758097090;
  }

  result = AppleBCMWLANCore::isRejectingCommands(this);
  if (!result)
  {
    switch(a2)
    {
      case -528340986:
        if ((*(*this + 1952))(this))
        {
          (*(*this + 1952))(this);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANCore::selfDiagnosticsReport(this);
          }
        }

        (*(**(*(this + 9) + 5392) + 216))(*(*(this + 9) + 5392), 4);
        v11 = *(**(*(this + 9) + 5392) + 200);
        break;
      case -528340987:
        v13 = 1;
        IOParseBootArgNumber("wlan.debug.postmessage-error-capture", &v13, 1);
        if (v13)
        {
          v10 = "";
          if (a3)
          {
            v10 = a3;
          }

          CCFaultReporter::reportFault(*(*(this + 9) + 5536), 8u, "/Library/Caches/com.apple.xbs/Sources/AppleBCMWLANV3_driverkit/AppleBCMWLANCore.cpp", 0xD166u, "selfDiagnosticsReport", 0, -528340987, "%s", v10);
        }

        else
        {
          AppleBCMWLANCore::selfDiagnosticsReport(this);
        }

        return 0;
      case -528340988:
        if ((a4 & 1) == 0)
        {
          v9 = "";
          if (a3)
          {
            v9 = a3;
          }

          CCFaultReporter::reportFault(*(*(this + 9) + 5536), 4u, "/Library/Caches/com.apple.xbs/Sources/AppleBCMWLANV3_driverkit/AppleBCMWLANCore.cpp", 0xD14Bu, "selfDiagnosticsReport", 0, -528340988, "%s", v9);
          return 0;
        }

        if ((*(*this + 1952))(this))
        {
          (*(*this + 1952))(this);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANCore::selfDiagnosticsReport(this);
          }
        }

        (*(**(*(this + 9) + 5392) + 216))(*(*(this + 9) + 5392), 1);
        v11 = *(**(*(this + 9) + 5392) + 200);
        break;
      default:
        v12 = "";
        if (a3)
        {
          v12 = a3;
        }

        CCFaultReporter::reportFault(*(*(this + 9) + 5536), a4 & 1 | 4, "/Library/Caches/com.apple.xbs/Sources/AppleBCMWLANV3_driverkit/AppleBCMWLANCore.cpp", 0xD172u, "selfDiagnosticsReport", 0, a2, "%s", v12);
        return 0;
    }

    v11();
    return 0;
  }

  return result;
}

AppleBCMWLANIOReportingCore *AppleBCMWLANCore::configureReportGated(AppleBCMWLANCore *this, OSCollection **a2, uint64_t a3, uint64_t a4, unsigned int *a5)
{
  if (!a2)
  {
    AppleBCMWLANCore::configureReportGated(this);
    return v17;
  }

  v6 = *a2;
  if (!*a2)
  {
    AppleBCMWLANCore::configureReportGated(this);
    return v17;
  }

  v7 = a2[2];
  if (!v7)
  {
    AppleBCMWLANCore::configureReportGated(this);
    return v17;
  }

  v8 = *(a2 + 2);
  v9 = *(this + 9);
  v10 = v9[688];
  if (v10)
  {
    if (AppleBCMWLANIOReporting::configureReport(v10, *a2, v8, v7, a5))
    {
      AppleBCMWLANCore::configureReportGated();
      return v17;
    }

    v9 = *(this + 9);
  }

  v11 = v9[689];
  if (v11)
  {
    if (AppleBCMWLANIOReportingPerSlice::configureReport(v11, v6, v8, v7))
    {
      AppleBCMWLANCore::configureReportGated();
      return v17;
    }

    v9 = *(this + 9);
  }

  v12 = v9[3741];
  if (v12)
  {
    if (AppleBCMWLANAudioProtector::configureReport(v12, v6, v8, v7, a5))
    {
      AppleBCMWLANCore::configureReportGated();
      return v17;
    }

    v9 = *(this + 9);
  }

  v13 = v9[676];
  if (v13)
  {
    if (AppleBCMWLANCommander::configureReport(v13, v6, v8, v7, a5))
    {
      AppleBCMWLANCore::configureReportGated();
      return v17;
    }

    v9 = *(this + 9);
  }

  v14 = v9[1413];
  if (v14 && (*(*v14 + 696))(v14, v6, v8, v7))
  {
    AppleBCMWLANCore::configureReportGated();
    return v17;
  }

  if (IO80211Controller::configureReport(this, v6, v8, v7))
  {
    AppleBCMWLANCore::configureReportGated();
    return v17;
  }

  result = *(*(this + 9) + 5504);
  if (result)
  {
    AppleBCMWLANIOReportingCore::accountingForConfigureReport(result, 0, v15);
    return 0;
  }

  return result;
}

AppleBCMWLANIOReportingCore *AppleBCMWLANCore::configureReport(AppleBCMWLANCore *this, OSCollection *a2, uint64_t a3, unsigned int *a4)
{
  if (*(*(this + 9) + 968) == 1)
  {
    result = (*(*this + 1952))(this, a2, a3, a4);
    if (result)
    {
      (*(*this + 1952))(this);
      result = CCLogStream::shouldLog();
      if (result)
      {
        AppleBCMWLANCore::configureReport(this);
        return 0;
      }
    }
  }

  else
  {
    *a4 = 0;
    v10 = a2;
    v12 = -1431655766;
    v11 = a3;
    v13 = a4;
    if ((*(**(*(this + 9) + 31064) + 144))(*(*(this + 9) + 31064)))
    {
      return AppleBCMWLANCore::configureReportGated(this, &v10, v6, v7, v8);
    }

    else
    {
      v9 = (*(*this + 104))(this);
      return (*(*v9 + 56))(v9, AppleBCMWLANCore::configureReportGated, &v10, 0, 0, 0);
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::updateReportGated(AppleBCMWLANCore *this, OSCollection **a2)
{
  v41 = 0;
  v42 = 0xAAAAAAAAAAAAAAAALL;
  memset(__b, 170, sizeof(__b));
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v39 = 0xAAAAAAAAAAAAAAAALL;
  v38[0] = v4;
  v38[1] = v4;
  BYTE4(v38[0]) = 0;
  LODWORD(v38[0]) = 20;
  if (!a2)
  {
    v27 = this & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000;
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::updateReportGated(this);
      }
    }

    goto LABEL_35;
  }

  v5 = *a2;
  v6 = *(a2 + 2);
  v8 = a2[2];
  v7 = a2[3];
  v41 = a2[4];
  v42 = v7;
  if (!v5)
  {
    v27 = this & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000;
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::updateReportGated(this);
      }
    }

    goto LABEL_39;
  }

  if (!v8)
  {
    v27 = this & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000;
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::updateReportGated(this);
      }
    }

LABEL_35:
    v24 = 0;
    v8 = 0;
    goto LABEL_40;
  }

  v9 = a2[5];
  if (!v9)
  {
    v27 = this & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000;
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::updateReportGated(this);
      }
    }

LABEL_39:
    v24 = 0;
    goto LABEL_40;
  }

  if (!AppleBCMWLANCore::isRejectingCommands(this))
  {
    v10 = (*(*this + 104))(this);
    (*(*v10 + 56))(v10, AppleBCMWLANCore::getPowerStats, __b, v38, 0, 0);
    v44 = 0;
    memset(v43, 0, sizeof(v43));
    v11 = (*(*this + 104))(this);
    (*(*v11 + 56))(v11, AppleBCMWLANCore::getDiags, v43, v38, 0, 0);
  }

  v12 = *(this + 9);
  v13 = v12[688];
  if (v13)
  {
    updated = AppleBCMWLANIOReporting::updateReport(v13, v5, v6, v8, &v42, &v41, v9);
    if (updated)
    {
      v24 = updated;
      v27 = this & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000;
      if ((*(*this + 1952))(this))
      {
        (*(*this + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          v28 = (*(*this + 1952))(this);
          getClassNameHelper(this);
          v33 = *v8;
          CCLogStream::logEmergency(v28, "[dk] %s@%d:DKReporter::%s::%s(%d) getIOReporterCore()->updateReport failed count %u offset %llu capacity %llu", "updateReportGated", 54027);
        }
      }

      goto LABEL_40;
    }

    v12 = *(this + 9);
  }

  v15 = v12[689];
  if (v15)
  {
    v16 = AppleBCMWLANIOReportingPerSlice::updateReport(v15, v5, v6, v8, &v42, &v41, v9);
    if (v16)
    {
      v24 = v16;
      v27 = this & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000;
      if ((*(*this + 1952))(this))
      {
        (*(*this + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          v29 = (*(*this + 1952))(this);
          getClassNameHelper(this);
          v34 = *v8;
          CCLogStream::logEmergency(v29, "[dk] %s@%d:DKReporter::%s::%s(%d) getIOReporterPerSlice()->updateReport failed count %u offset %llu capacity %llu", "updateReportGated", 54033);
        }
      }

      goto LABEL_40;
    }

    v12 = *(this + 9);
  }

  v17 = v12[3741];
  if (v17)
  {
    v18 = AppleBCMWLANAudioProtector::updateReport(v17, v5, v6, v8, &v42, &v41, v9);
    if (v18)
    {
      v24 = v18;
      v27 = this & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000;
      if ((*(*this + 1952))(this))
      {
        (*(*this + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          v30 = (*(*this + 1952))(this);
          getClassNameHelper(this);
          v35 = *v8;
          CCLogStream::logEmergency(v30, "[dk] %s@%d:DKReporter::%s::%s(%d) ivars->fAudioProtector->updateReport failed count %u offset %llu capacity %llu", "updateReportGated", 54040);
        }
      }

      goto LABEL_40;
    }

    v12 = *(this + 9);
  }

  v19 = v12[676];
  if (v19)
  {
    v20 = AppleBCMWLANCommander::updateReport(v19, v5, v6, v8, &v42, &v41, v9);
    if (v20)
    {
      v24 = v20;
      v27 = this & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000;
      if ((*(*this + 1952))(this))
      {
        (*(*this + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          v31 = (*(*this + 1952))(this);
          getClassNameHelper(this);
          v36 = *v8;
          CCLogStream::logEmergency(v31, "[dk] %s@%d:DKReporter::%s::%s(%d) ivars->fCommander->updateReport failed count %u offset %llu capacity %llu", "updateReportGated", 54047);
        }
      }

      goto LABEL_40;
    }

    v12 = *(this + 9);
  }

  v21 = v12[1413];
  if (!v21 || (v22 = (*(*v21 + 704))(v21, v5, v6, v8, &v42, &v41, v9), !v22))
  {
    v24 = IO80211Controller::updateReport(this, v5, v6, v8, v42, v41, v9);
    if (v24)
    {
      AppleBCMWLANCore::updateReportGated(this, v8, &v42, &v41);
    }

    goto LABEL_23;
  }

  v24 = v22;
  v27 = this & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000;
  if ((*(*this + 1952))(this))
  {
    (*(*this + 1952))(this);
    if (CCLogStream::shouldLog())
    {
      v32 = (*(*this + 1952))(this);
      getClassNameHelper(this);
      v37 = *v8;
      CCLogStream::logEmergency(v32, "[dk] %s@%d:DKReporter::%s::%s(%d) ivars->fApStaInterface->updateReport failed count %u offset %llu capacity %llu", "updateReportGated", 54053);
    }
  }

LABEL_40:
  if ((*(*this + 1952))(this))
  {
    (*(*this + 1952))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::updateReportGated(this, v27, v8, &v41);
    }
  }

LABEL_23:
  v25 = *(*(this + 9) + 5504);
  if (v25)
  {
    AppleBCMWLANIOReportingCore::accountingForUpdateReport(v25, v24, v23);
  }

  return v24;
}

uint64_t AppleBCMWLANCore::updateReport(AppleBCMWLANCore *this, OSCollection *a2, uint64_t a3, unsigned int *a4, uint64_t a5, uint64_t a6, IOMemoryDescriptor *a7)
{
  v8 = *(this + 9);
  if (*(v8 + 968) == 1)
  {
    result = (*(*this + 1952))(this, a2, a3, a4, a5, a6, a7);
    if (result)
    {
      (*(*this + 1952))(this);
      result = CCLogStream::shouldLog();
      if (result)
      {
        AppleBCMWLANCore::updateReport(this);
        return 0;
      }
    }
  }

  else
  {
    v14 = a3;
    v16 = (*(**(v8 + 31064) + 144))(*(v8 + 31064));
    v18 = a2;
    v20 = -1431655766;
    v19 = v14;
    v21 = a4;
    v22 = a5;
    v23 = a6;
    v24 = a7;
    *a4 = 0;
    if (v16)
    {
      return AppleBCMWLANCore::updateReportGated(this, &v18);
    }

    else
    {
      v17 = (*(*this + 104))(this);
      return (*(*v17 + 56))(v17, AppleBCMWLANCore::updateReportGated, &v18, 0, 0, 0);
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::configureManagementFrameProtection(AppleBCMWLANCore *this, int a2)
{
  v10 = 0;
  v11 = a2;
  if (!IOParseBootArgNumber("bcom.feature.mfp", &v10, 4))
  {
    goto LABEL_12;
  }

  if ((*(*this + 1952))(this))
  {
    (*(*this + 1952))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::configureManagementFrameProtection(this);
    }
  }

  if (v10)
  {
    AppleBCMWLANCore::featureFlagSetBit(this, 38);
LABEL_12:
    if (AppleBCMWLANCore::featureFlagIsBitSet(this, 38))
    {
      v5 = *(*(this + 9) + 5408);
      v9[0] = &v11;
      v9[1] = 4;
      v6 = AppleBCMWLANCommander::runIOVarSet(v5, "mfp", v9, 0, 0);
      v7 = (*(*this + 1952))(this);
      if (v6)
      {
        if (v7)
        {
          (*(*this + 1952))(this);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANCore::configureManagementFrameProtection(this, this & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000, &v11, v6);
          }
        }
      }

      else if (v7)
      {
        (*(*this + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::configureManagementFrameProtection(this);
        }
      }
    }

    return 0;
  }

  if (a2 != 2)
  {
    AppleBCMWLANCore::featureFlagClearBit(this, 38);
    v11 = 0;
    goto LABEL_12;
  }

  v4 = 3758097095;
  if ((*(*this + 1952))(this))
  {
    (*(*this + 1952))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::configureManagementFrameProtection(this);
    }
  }

  return v4;
}

uint64_t AppleBCMWLANCore::setMIMOPowerSaveProperties(AppleBCMWLANCore *a1)
{
  result = AppleBCMWLANCore::featureFlagIsBitSet(a1, 44);
  if (result)
  {
    v3 = *(*(a1 + 9) + 5520);

    return AppleBCMWLANPowerManager::setMIMOPowerSaveProperties(v3);
  }

  return result;
}

uint64_t AppleBCMWLANCore::setWiFiCallPolicies(uint64_t *a1)
{
  if ((*(*a1 + 1952))(a1))
  {
    (*(*a1 + 1952))(a1);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::setWiFiCallPolicies(a1);
    }
  }

  if (AppleBCMWLANCore::featureFlagIsBitSet(a1, 44))
  {
    AppleBCMWLANPowerManager::setWiFiCallPowerPolicy(*(a1[9] + 5520));
  }

  result = (*(*a1 + 1952))(a1);
  if (result)
  {
    (*(*a1 + 1952))(a1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      return AppleBCMWLANCore::setWiFiCallPolicies(a1);
    }
  }

  return result;
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logNoticeIf(v3, 0x20uLL, "[dk] %s@%d:MIMO_PS: Enter %s \n", v5, v6, v7);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logNoticeIf(v3, 0x20uLL, "[dk] %s@%d:MIMO_PS: Leave %s \n", v5, v6, v7);
}

uint64_t AppleBCMWLANCore::setReatimeAppPoliciesInternal(AppleBCMWLANCore *this, int a2)
{
  *(*(this + 9) + 30972) = a2;
  if (a2)
  {
    if (*(*(this + 9) + 30088) == 1)
    {
      if (AppleBCMWLANCore::featureFlagIsBitSet(this, 89))
      {
        AppleBCMWLANCore::setRxLatPrioEnabBitmap(this, 127);
      }
    }

    v6 = *(*(this + 9) + 31160);
    v7 = *(*(this + 9) + 31164);
    v4 = *(*(this + 9) + 31152);
    v5 = *(*(this + 9) + 31156);
    return io80211_os_log();
  }

  else
  {
    result = AppleBCMWLANCore::featureFlagIsBitSet(this, 89);
    if (result)
    {

      return AppleBCMWLANCore::setRxLatPrioEnabBitmap(this, 0);
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::setBatterySaveModeConfiguration(AppleBCMWLANCore *a1, _DWORD *a2)
{
  result = AppleBCMWLANCore::isMIMOPowerSaveEnabled(a1);
  if (result)
  {
    result = AppleBCMWLANPowerManager::setBatterySaveModeConfiguration(*(*(a1 + 9) + 5520), a2);
    *(*(a1 + 9) + 16268) = *a2;
  }

  return result;
}

uint64_t AppleBCMWLANCore::getRouterMacAddress(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 3758097090;
  }

  result = 0;
  v4 = *(a1 + 72);
  v5 = *(v4 + 9500);
  LODWORD(v4) = *(v4 + 9496);
  *(a2 + 4) = v5;
  *a2 = v4;
  return result;
}

uint64_t AppleBCMWLANCore::enablePacketTimestamping(AppleBCMWLANCore *this)
{
  if ((*(*this + 1952))(this))
  {
    (*(*this + 1952))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::enablePacketTimestamping(this);
    }
  }

  IO80211Controller::enablePacketTimestamping(this);
  v2 = *(*(*(*this + 104))(this) + 56);

  return v2();
}

uint64_t AppleBCMWLANCore::disablePacketTimestamping(AppleBCMWLANCore *this)
{
  if ((*(*this + 1952))(this))
  {
    (*(*this + 1952))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::disablePacketTimestamping(this);
    }
  }

  IO80211Controller::disablePacketTimestamping(this);
  v2 = *(*(*(*this + 104))(this) + 56);

  return v2();
}

uint64_t AppleBCMWLANCore::getLQM_SUMMARY(uint64_t a1, uint64_t a2)
{
  v3 = 31181;
  memcpy((a2 + 160), (*(a1 + 72) + 31181), 0x1000uLL);
  v4 = 16;
  do
  {
    *(*(a1 + 72) + v3) = 0;
    v3 += 256;
    --v4;
  }

  while (v4);
  return 0;
}

OSStringPtr AppleBCMWLANCore::newModelString(AppleBCMWLANCore *this)
{
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  *__str = 0u;
  v7 = 0u;
  memset(__dst, 0, sizeof(__dst));
  v1 = *(*(this + 9) + 5392);
  if (v1)
  {
    v2 = (*(*v1 + 368))(v1);
    strcpy(__dst, "802.11 a/b/g/n/ac");
    if (v2 == 4378 || v2 == 4368)
    {
      strlcat(__dst, "/ax", 0x20uLL);
    }
  }

  else
  {
    strcpy(__dst, "802.11 a/b/g/n/ac");
  }

  snprintf(__str, 0x100uLL, "Wireless Network Adapter (%s)", __dst);
  return OSString::withCString(__str);
}

uint64_t AppleBCMWLANCore::setLMTPCCallback(uint64_t result, uint64_t a2, int a3)
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
        return AppleBCMWLANCore::setLMTPCCallback(v3);
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::setConcurrencyState(uint64_t *a1, char a2, int a3)
{
  v4 = a1[9];
  v5 = *(v4 + 19801);
  v6 = v5 | a2;
  v7 = v5 & ~a2;
  if (a3)
  {
    v7 = v6;
  }

  *(v4 + 19801) = v7;
  result = (*(*a1 + 1952))();
  if (result)
  {
    (*(*a1 + 1952))(a1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      return AppleBCMWLANCore::setConcurrencyState(a1);
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::isOpModeAllowed(AppleBCMWLANCore *a1, unsigned int a2)
{
  if ((*(*(a1 + 9) + 19801) & a2) != 0)
  {
    v2 = 1;
    return v2 & 1;
  }

  IsBitSet = AppleBCMWLANCore::featureFlagIsBitSet(a1, 70);
  v6 = *(*(a1 + 9) + 19801);
  if ((IsBitSet & 1) == 0)
  {
    v8 = v6 == 0;
    v9 = (v6 & 4) == 0;
    if (a2 == 2)
    {
      v2 = v9;
    }

    else
    {
      v2 = v8;
    }

    goto LABEL_36;
  }

  v7 = v6 & 0xFFFFFFEF;
  if (v7 <= 4)
  {
    if (v7 > 1)
    {
      if (v7 != 2)
      {
        if (v7 != 4)
        {
          goto LABEL_29;
        }

        v2 = a2 - 1 < 2;
        goto LABEL_36;
      }

      v10 = a2 == 4 || a2 == 1;
    }

    else
    {
      if (!v7)
      {
LABEL_27:
        v2 = 1;
        goto LABEL_36;
      }

      if (v7 != 1)
      {
LABEL_29:
        v2 = 0;
        goto LABEL_36;
      }

      v10 = ((a2 - 2) & 0xFFFFFFFD) == 0;
    }

LABEL_33:
    v2 = v10;
    goto LABEL_36;
  }

  if (v7 > 8)
  {
    if (v7 != 9 && v7 != 12)
    {
      if (v7 != 13)
      {
        goto LABEL_29;
      }

LABEL_25:
      if (a2 == 2)
      {
        (*(*a1 + 1208))(a1, 0);
        goto LABEL_27;
      }

      goto LABEL_29;
    }

    v10 = a2 == 2;
    goto LABEL_33;
  }

  if (v7 == 5)
  {
    goto LABEL_25;
  }

  if (v7 != 8)
  {
    goto LABEL_29;
  }

  if (a2 >= 5)
  {
    v2 = 0;
  }

  else
  {
    v2 = 0x16u >> a2;
  }

LABEL_36:
  if ((*(*a1 + 1952))(a1))
  {
    (*(*a1 + 1952))(a1);
    if (CCLogStream::shouldLog())
    {
      v12 = (*(*a1 + 1952))(a1);
      CCLogStream::logAlert(v12, "[dk] %s@%d:%s: OpMode current state:%d  requested %d status %d", "isOpModeAllowed", 54977, "isOpModeAllowed", *(*(a1 + 9) + 19801), a2, v2 & 1);
    }
  }

  return v2 & 1;
}

uint64_t AppleBCMWLANCore::destroySkywalkInterface(AppleBCMWLANCore *this, unsigned int a2)
{
  result = (*(*this + 1992))(this);
  if (result)
  {
    result = (*(*this + 1952))(this);
    if (result)
    {
      (*(*this + 1952))(this);
      result = CCLogStream::shouldLog();
      if (result)
      {
        return AppleBCMWLANCore::destroySkywalkInterface(this, this & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000, a2);
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::setWCL_JOIN_ABORT(uint64_t a1, _DWORD *a2)
{
  v2 = *(*(a1 + 72) + 5416);
  if (a2)
  {
    LODWORD(a2) = *a2 != 0;
  }

  return AppleBCMWLANJoinAdapter::abortFirmwareJoinSync(v2, a2);
}

uint64_t AppleBCMWLANCore::setWCL_TRIGGER_CC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == 1)
  {
    return AppleBCMWLANJoinAdapter::triggerCC(*(*(a1 + 72) + 5416), a2);
  }

  if (v2)
  {
    return 3758097084;
  }

  return AppleBCMWLANScanAdapter::triggerCC(*(*(a1 + 72) + 5424), a2);
}

uint64_t AppleBCMWLANCore::setRADIO_CHANSEQ_CONTROL(uint64_t *a1, _BYTE *a2)
{
  if (*a2)
  {
    if (!*(a1[9] + 11296))
    {
      if ((*(*a1 + 1952))(a1))
      {
        (*(*a1 + 1952))(a1);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::setRADIO_CHANSEQ_CONTROL(a1);
        }
      }

      return 6;
    }

    v4 = a2 + 4;
  }

  else
  {
    v4 = 0;
  }

  v5 = a1[9];
  if (a2[1])
  {
    if (!*(v5 + 29944))
    {
      if ((*(*a1 + 1952))(a1, v4))
      {
        (*(*a1 + 1952))(a1);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::setRADIO_CHANSEQ_CONTROL(a1);
        }
      }

      return 6;
    }

    v6 = (a2 + 404);
  }

  else
  {
    v6 = 0;
  }

  v7 = *(v5 + 11296);
  if (!v7)
  {
    if ((*(*a1 + 1952))(a1, v4, v6))
    {
      (*(*a1 + 1952))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::setRADIO_CHANSEQ_CONTROL(a1);
      }
    }

    return 6;
  }

  return AppleBCMWLANProximityInterface::buildChanSequenceCommand(v7, v4, v6);
}

uint64_t AppleBCMWLANCore::setRC2CoexMode(int64_t this, int *a2)
{
  v3 = IOMallocZeroData();
  if (v3)
  {
    *v3 = 16875520;
    *(v3 + 4) = 1;
    *(v3 + 8) = 1;
    *(v3 + 12) = *(*(this + 72) + 10712) != 0;
    *(v3 + 6) = 8;
    v9[0] = v3;
    v9[1] = 16;
    v4 = (*(*this + 88))(this);
    if ((*(*v4 + 136))(v4))
    {
      v5 = AppleBCMWLANCommander::sendIOVarSet(*(*(this + 72) + 5408), "rc2cx");
    }

    else
    {
      v5 = AppleBCMWLANCommander::runIOVarSet(*(*(this + 72) + 5408), "rc2cx", v9, 0, 0);
    }

    v6 = v5;
    v7 = (*(*this + 1952))(this);
    if (v6)
    {
      if (v7)
      {
        (*(*this + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::setRC2CoexMode(this);
        }
      }
    }

    else if (v7)
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::setRC2CoexMode(this, this & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000, this + 72);
      }
    }

    IOFreeData();
  }

  else
  {
    v6 = 3758097085;
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::setRC2CoexMode(this);
      }
    }
  }

  return v6;
}

uint64_t AppleBCMWLANCore::handleRC2CoexModeAsyncCallback(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3)
  {
    v7 = result;
    result = (*(*result + 1952))(result);
    if (result)
    {
      (*(*v7 + 1952))(v7);
      result = CCLogStream::shouldLog();
      if (result)
      {
        return AppleBCMWLANCore::handleRC2CoexModeAsyncCallback(v7, v7 & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000, a3, a5);
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::setRC2CoexPMProtectionMode(AppleBCMWLANCore *this, int *a2)
{
  v3 = IOMallocZeroData();
  if (v3)
  {
    *v3 = 16875520;
    *(v3 + 4) = 2;
    *(v3 + 8) = 1;
    *(v3 + 12) = *(*(this + 9) + 10716) != 0;
    *(v3 + 6) = 8;
    v8[0] = v3;
    v8[1] = 16;
    v4 = (*(*this + 88))(this);
    if ((*(*v4 + 136))(v4))
    {
      v5 = AppleBCMWLANCommander::sendIOVarSet(*(*(this + 9) + 5408), "rc2cx");
    }

    else
    {
      v5 = AppleBCMWLANCommander::runIOVarSet(*(*(this + 9) + 5408), "rc2cx", v8, 0, 0);
    }

    v6 = v5;
    if (v5)
    {
      if ((*(*this + 1952))(this))
      {
        (*(*this + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::setRC2CoexPMProtectionMode(this);
        }
      }
    }

    IOFreeData();
  }

  else
  {
    v6 = 3758097085;
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::setRC2CoexPMProtectionMode(this);
      }
    }
  }

  return v6;
}

uint64_t AppleBCMWLANCore::handleRC2PMProtectionModeAsyncCallback(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3)
  {
    v7 = result;
    result = (*(*result + 1952))(result);
    if (result)
    {
      (*(*v7 + 1952))(v7);
      result = CCLogStream::shouldLog();
      if (result)
      {
        return AppleBCMWLANCore::handleRC2PMProtectionModeAsyncCallback(v7, v7 & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000, a3, a5);
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::setRC2CoexCTS2Sconfig(AppleBCMWLANCore *this, int *a2)
{
  v3 = IOMallocZeroData();
  if (v3)
  {
    *v3 = 16875520;
    *(v3 + 4) = 3;
    *(v3 + 8) = 1;
    *(v3 + 12) = *(*(this + 9) + 10722);
    *(v3 + 13) = *(*(this + 9) + 10723);
    *(v3 + 14) = *(*(this + 9) + 10724);
    *(v3 + 6) = 8;
    v8[0] = v3;
    v8[1] = 16;
    v4 = (*(*this + 88))(this);
    if ((*(*v4 + 136))(v4))
    {
      v5 = AppleBCMWLANCommander::sendIOVarSet(*(*(this + 9) + 5408), "rc2cx");
    }

    else
    {
      v5 = AppleBCMWLANCommander::runIOVarSet(*(*(this + 9) + 5408), "rc2cx", v8, 0, 0);
    }

    v6 = v5;
    if (v5)
    {
      if ((*(*this + 1952))(this))
      {
        (*(*this + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::setRC2CoexCTS2Sconfig(this);
        }
      }
    }

    IOFreeData();
  }

  else
  {
    v6 = 3758097085;
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::setRC2CoexCTS2Sconfig(this);
      }
    }
  }

  return v6;
}

uint64_t AppleBCMWLANCore::handleRC2CoexCTS2SconfigAsyncCallback(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3)
  {
    v7 = result;
    result = (*(*result + 1952))(result);
    if (result)
    {
      (*(*v7 + 1952))(v7);
      result = CCLogStream::shouldLog();
      if (result)
      {
        return AppleBCMWLANCore::handleRC2CoexCTS2SconfigAsyncCallback(v7, v7 & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000, a3, a5);
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::setRC1CoexMode(AppleBCMWLANCore *this, int *a2)
{
  v3 = *(this + 9);
  v8 = *(v3 + 10704);
  v4 = *(v3 + 5408);
  v7[0] = &v8;
  v7[1] = 4;
  v5 = AppleBCMWLANCommander::runIOVarSet(v4, "rc1coex_mode", v7, 0, 0);
  if (v5)
  {
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::setRC1CoexMode(this);
      }
    }
  }

  return v5;
}

uint64_t AppleBCMWLANCore::updateDataPathActivityTimestamp(AppleBCMWLANCore *this, unint64_t a2)
{
  v2 = a2;
  v6 = a2;
  result = IO80211BssManager::isAssociated(*(*(this + 9) + 5432));
  v5 = *(this + 9);
  if (result)
  {
    if (*(v5 + 6232))
    {
      result = AppleBCMWLANCore::timeSinceLastActivity_abs(this, &v6);
      v5 = *(this + 9);
      if (result >= *(v5 + 6552))
      {
        result = (*(**(v5 + 6232) + 56))(*(v5 + 6232), 2000);
        v2 = v6;
        v5 = *(this + 9);
      }
    }
  }

  *(v5 + 6536) = v2;
  return result;
}

uint64_t AppleBCMWLANCore::handleDataPathActivity(AppleBCMWLANCore *this)
{
  AppleBCMWLANCore::updateInactivityAndSleepCounters(this, 1);
  result = *(this + 9);
  if (*(result + 6724))
  {
    return AppleBCMWLANCore::handleDataPathActivity();
  }

  return result;
}

uint64_t *AppleBCMWLANCore::setSoftAPPowerState(uint64_t a1, unsigned int a2, unsigned int a3)
{
  result = *(*(a1 + 72) + 11304);
  if (result)
  {
    return AppleBCMWLANIO80211APSTAInterface::setPowerSaveState(result, a2, a3);
  }

  return result;
}

uint64_t AppleBCMWLANCore::requestBlockScan(AppleBCMWLANCore *this, int a2, uint64_t a3)
{
  mach_continuous_time();
  absolutetime_to_nanoseconds();
  if ((*(*this + 1952))(this))
  {
    (*(*this + 1952))(this);
    if (CCLogStream::shouldLog())
    {
      v10 = (*(*this + 1952))(this);
      CCLogStream::logNotice(v10, "[dk] %s@%d: %s: Requesting for Scan Block: %d %llu\n", "requestBlockScan", 55730, "requestBlockScan", a2, a3);
    }
  }

  v6 = a3 + (((0 * 0x431BDE82D7B634DBuLL) >> 64) >> 18);
  mach_continuous_time();
  result = absolutetime_to_nanoseconds();
  v8 = *(this + 9);
  v9 = *(v8 + 19808);
  if (!v9)
  {
    *(v8 + 19808) = 0;
    *(*(this + 9) + 19816) = 0;
    v8 = *(this + 9);
    v9 = *(v8 + 19808);
  }

  if (v9 < v6)
  {
    *(v8 + 19808) = v6;
    *(*(this + 9) + 19816) |= 1 << a2;
  }

  return result;
}

uint64_t AppleBCMWLANCore::handleConfigureAvgRssiParamsAsyncCallback(uint64_t result, uint64_t a2, int a3)
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
        return AppleBCMWLANCore::handleConfigureAvgRssiParamsAsyncCallback(v3);
      }
    }
  }

  return result;
}

uint64_t *AppleBCMWLANCore::handleGetDtimParam(uint64_t *result, uint64_t a2, int a3, void *a4)
{
  v4 = result;
  if (a3)
  {
    result = (*(*result + 1952))(result);
    if (result)
    {
      (*(*v4 + 1952))(v4);
      result = CCLogStream::shouldLog();
      if (result)
      {
        return AppleBCMWLANCore::handleGetDtimParam(v4);
      }
    }
  }

  else if (*a4)
  {
    *(result[9] + 10364) = **a4;
    result = (*(*result + 1952))(result);
    if (result)
    {
      (*(*v4 + 1952))(v4);
      result = CCLogStream::shouldLog();
      if (result)
      {
        return AppleBCMWLANCore::handleGetDtimParam(v4);
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::setHp2pCtrlCallback(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = result;
    if (*(a2 + 8))
    {
      v5 = *(a2 + 8);
    }

    else
    {
      v5 = "(null)";
    }

    result = (*(*result + 1952))(result);
    if (result)
    {
      (*(*v4 + 1952))(v4);
      result = CCLogStream::shouldLog();
      if (result)
      {
        return AppleBCMWLANCore::setHp2pCtrlCallback(v4, v4 & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000, a3, v5);
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::setHP2P_CTRL(uint64_t *a1, uint64_t a2)
{
  memset(v12, 170, sizeof(v12));
  v4 = IOMallocZeroData();
  if (((*(**(a1[9] + 5392) + 800))() & 1) == 0)
  {
    AppleBCMWLANCore::setHP2P_CTRL();
    goto LABEL_13;
  }

  if (!a2)
  {
    AppleBCMWLANCore::setHP2P_CTRL();
LABEL_13:
    v10 = v13;
    if (!v4)
    {
      return v10;
    }

    goto LABEL_9;
  }

  if (!v4)
  {
    AppleBCMWLANCore::setHP2P_CTRL();
    return v13;
  }

  *v4 = 16875520;
  *(v4 + 4) = 8;
  *(v4 + 8) = 1;
  *(v4 + 12) = 1;
  *(v4 + 16) = 8;
  if (*(a1[9] + 221) == 1)
  {
    *(v4 + 18) = 4;
    *(v4 + 20) = *(a2 + 4);
    v5 = 24;
  }

  else
  {
    v5 = 16;
  }

  *(v4 + 6) = v5 - 8;
  v12[0] = a1;
  v12[1] = AppleBCMWLANCore::setHp2pCtrlCallback;
  v12[2] = 0;
  v12[3] = v4;
  v12[4] = v5;
  v6 = a1[9];
  v7 = *(v6 + 5408);
  InterfaceId = IO80211SkywalkInterface::getInterfaceId(*(v6 + 11296));
  v9 = AppleBCMWLANCommander::sendVirtualIOVarSet(v7, InterfaceId, "hp2p", &v12[3], kNoRxExpected, v12, 0);
  v10 = 0;
  if (v9)
  {
    AppleBCMWLANCore::setHP2P_CTRL(a1);
    v10 = v13;
  }

LABEL_9:
  IOFreeData();
  return v10;
}

uint64_t AppleBCMWLANCore::setBSS_BLACKLIST(uint64_t *a1, __int128 *a2)
{
  if (a2)
  {
    v3 = a1 + 9;
    v4 = (a1[9] + 17858);
    *(v4 + 27) = 0u;
    *v4 = 0u;
    v4[1] = 0u;
    v5 = (a1[9] + 17858);
    v6 = *a2;
    v7 = a2[1];
    *(v5 + 27) = *(a2 + 27);
    *v5 = v6;
    v5[1] = v7;
    v8 = *(a1[9] + 17858);
    v9 = (*(*a1 + 1952))(a1);
    if (v8)
    {
      if (v9)
      {
        (*(*a1 + 1952))(a1);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::setBSS_BLACKLIST(a1);
        }
      }

      if (*(*v3 + 17858))
      {
        v10 = 0;
        do
        {
          if ((*(*a1 + 1952))(a1))
          {
            (*(*a1 + 1952))(a1);
            if (CCLogStream::shouldLog())
            {
              AppleBCMWLANCore::setBSS_BLACKLIST(a1);
            }
          }

          ++v10;
        }

        while (v10 < *(*v3 + 17858));
      }

      v11 = a1;
      v12 = 3;
    }

    else
    {
      if (v9)
      {
        (*(*a1 + 1952))(a1);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::setBSS_BLACKLIST(a1);
        }
      }

      v11 = a1;
      v12 = 0;
    }

    AppleBCMWLANCore::setBssBlacklistMode(v11, v12);
    AppleBCMWLANCore::getBssBlacklistModeAsync(a1);
    AppleBCMWLANCore::setBssBlacklist(a1, (a1[9] + 17858));
    AppleBCMWLANCore::getBssBlacklistAsyncGated(a1);
    return 0;
  }

  else
  {
    v13 = 3758097084;
    if ((*(*a1 + 1952))(a1))
    {
      (*(*a1 + 1952))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::setBSS_BLACKLIST(a1);
      }
    }
  }

  return v13;
}

uint64_t AppleBCMWLANCore::setBssBlacklistMode(AppleBCMWLANCore *this, int a2)
{
  v8 = a2;
  v7[0] = this;
  v7[1] = AppleBCMWLANCore::setBssBlacklistModeAsyncCallback;
  v7[2] = 0;
  if ((*(*this + 1952))(this))
  {
    (*(*this + 1952))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::setBssBlacklistMode(this);
    }
  }

  v3 = *(*(this + 9) + 5408);
  v6[0] = &v8;
  v6[1] = 4;
  v4 = AppleBCMWLANCommander::sendIOCtlSet(v3, 106, v6, kNoRxExpected, v7, 0);
  if (v4)
  {
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::setBssBlacklistMode(this);
      }
    }
  }

  return v4;
}

uint64_t AppleBCMWLANCore::getBssBlacklistModeAsync(AppleBCMWLANCore *this)
{
  v6[0] = this;
  v6[1] = AppleBCMWLANCore::getBssBlacklistModeAsyncCallback;
  v6[2] = 0;
  v2 = *(*(this + 9) + 5408);
  v5 = 262148;
  v3 = AppleBCMWLANCommander::sendIOCtlGet(v2, 105, &kNoTxPayload, &v5, v6, 0);
  if (v3)
  {
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::getBssBlacklistModeAsync(this);
      }
    }
  }

  return v3;
}

uint64_t AppleBCMWLANCore::setBssBlacklist(uint64_t *a1, _BYTE *a2)
{
  v19[0] = a1;
  v19[1] = AppleBCMWLANCore::setBssBlacklistAsyncCallback;
  v19[2] = 0;
  if (*a2 < 8u)
  {
    if (*a2)
    {
      v5 = 6 * *a2 + 4;
      v6 = IOMallocZeroData();
      if (v6)
      {
        v7 = v6;
        v8 = *a2;
        *v6 = v8;
        if (v8)
        {
          v9 = 0;
          v10 = 0;
          do
          {
            v11 = v6 + v9;
            v12 = *&a2[v9 + 1];
            *(v11 + 4) = *&a2[v9 + 5];
            *(v11 + 1) = v12;
            ++v10;
            v9 += 6;
          }

          while (v10 < *a2);
          if (*v6)
          {
            if ((*(*a1 + 1952))(a1))
            {
              (*(*a1 + 1952))(a1);
              if (CCLogStream::shouldLog())
              {
                AppleBCMWLANCore::setBssBlacklist(a1);
              }
            }

            if (*v7)
            {
              v13 = 0;
              do
              {
                if ((*(*a1 + 1952))(a1))
                {
                  (*(*a1 + 1952))(a1);
                  if (CCLogStream::shouldLog())
                  {
                    AppleBCMWLANCore::setBssBlacklist(a1);
                  }
                }

                ++v13;
              }

              while (v13 < *v7);
            }
          }
        }

        v14 = *(a1[9] + 5408);
        v17 = v7;
        v18 = v5;
        v4 = AppleBCMWLANCommander::sendIOCtlSet(v14, 70, &v17, kNoRxExpected, v19, 0);
        if (v4)
        {
          if ((*(*a1 + 1952))(a1))
          {
            (*(*a1 + 1952))(a1);
            if (CCLogStream::shouldLog())
            {
              AppleBCMWLANCore::setBssBlacklist(a1);
            }
          }
        }

        IOFreeData();
      }

      else
      {
        return 12;
      }
    }

    else
    {
      if ((*(*a1 + 1952))(a1))
      {
        (*(*a1 + 1952))(a1);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::setBssBlacklist(a1);
        }
      }

      v21 = 0;
      v20 = 0;
      v15 = *(a1[9] + 5408);
      v17 = &v20;
      v18 = 12;
      v4 = AppleBCMWLANCommander::sendIOCtlSet(v15, 70, &v17, kNoRxExpected, v19, 0);
      if (v4)
      {
        if ((*(*a1 + 1952))(a1))
        {
          (*(*a1 + 1952))(a1);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANCore::setBssBlacklist(a1);
          }
        }
      }
    }
  }

  else
  {
    v4 = 3758097090;
    if ((*(*a1 + 1952))(a1))
    {
      (*(*a1 + 1952))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::setBssBlacklist(a1);
      }
    }
  }

  return v4;
}

uint64_t AppleBCMWLANCore::getBssBlacklistAsyncGated(AppleBCMWLANCore *this)
{
  v6[0] = this;
  v6[1] = AppleBCMWLANCore::getBssBlacklistAsyncCallback;
  v6[2] = 0;
  v2 = *(*(this + 9) + 5408);
  v5 = 67108876;
  v3 = AppleBCMWLANCommander::sendIOCtlGet(v2, 69, &kNoTxPayload, &v5, v6, 0);
  if (v3)
  {
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::getBssBlacklistAsyncGated(this);
      }
    }
  }

  return v3;
}

uint64_t AppleBCMWLANCore::setBssBlacklistAsyncCallback(uint64_t result, uint64_t a2, int a3)
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
        return AppleBCMWLANCore::setBssBlacklistAsyncCallback(v3);
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::getBssBlacklistAsyncCallback(uint64_t result, uint64_t a2, int a3, _DWORD **a4)
{
  v4 = result;
  if (a3)
  {
    result = (*(*result + 1952))(result);
    if (result)
    {
      (*(*v4 + 1952))(v4);
      result = CCLogStream::shouldLog();
      if (result)
      {
        return AppleBCMWLANCore::getBssBlacklistAsyncCallback(v4);
      }
    }
  }

  else
  {
    v5 = *a4;
    if (*a4)
    {
      result = (*(*result + 1952))(result);
      if (result)
      {
        (*(*v4 + 1952))(v4);
        result = CCLogStream::shouldLog();
        if (result)
        {
          result = AppleBCMWLANCore::getBssBlacklistAsyncCallback(v4);
        }
      }

      if (*v5)
      {
        v6 = 0;
        do
        {
          result = (*(*v4 + 1952))(v4);
          if (result)
          {
            (*(*v4 + 1952))(v4);
            result = CCLogStream::shouldLog();
            if (result)
            {
              result = AppleBCMWLANCore::getBssBlacklistAsyncCallback(v4);
            }
          }

          ++v6;
          v7 = *v5;
        }

        while (v6 < v7);
        if (v7)
        {
          v8 = *(v4[9] + 11288);

          return IO80211Controller::postMessage(v4, v8, 0xA3u, v5, 6 * (v7 - 1) + 12, 1);
        }
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::getBSS_BLACKLIST(uint64_t a1)
{
  v1 = *(*(*(*a1 + 104))(a1) + 56);

  return v1();
}

uint64_t AppleBCMWLANCore::setBssBlacklistModeAsyncCallback(uint64_t result, uint64_t a2, int a3)
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
        return AppleBCMWLANCore::setBssBlacklistModeAsyncCallback(v3);
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::getBssBlacklistModeAsyncCallback(uint64_t *a1, uint64_t a2, int a3)
{
  result = (*(*a1 + 1952))(a1);
  if (a3)
  {
    if (result)
    {
      (*(*a1 + 1952))(a1);
      result = CCLogStream::shouldLog();
      if (result)
      {
        return AppleBCMWLANCore::getBssBlacklistModeAsyncCallback(a1);
      }
    }
  }

  else if (result)
  {
    (*(*a1 + 1952))(a1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      return AppleBCMWLANCore::getBssBlacklistModeAsyncCallback(a1);
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::handleSetEntropyForRNGAsyncCallback(uint64_t result, uint64_t a2, int a3)
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
        return AppleBCMWLANCore::handleSetEntropyForRNGAsyncCallback(v3);
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::setDBRG_ENTROPY(uint64_t *a1, uint64_t a2)
{
  v4 = IOMallocZeroData();
  if (!v4)
  {
    return 12;
  }

  v5 = v4;
  if (a2)
  {
    if (AppleBCMWLANCore::featureFlagIsBitSet(a1, 81))
    {
      *v5 = 1;
      *(v5 + 6) = 4194370;
      v6 = *(a2 + 120);
      v7 = *(a2 + 136);
      v8 = *(a2 + 152);
      *(v5 + 58) = *(a2 + 168);
      *(v5 + 42) = v8;
      *(v5 + 26) = v7;
      *(v5 + 10) = v6;
      v9 = (*(*a1 + 88))(a1);
      if ((*(*v9 + 136))(v9))
      {
        v14 = a1;
        v15 = AppleBCMWLANCore::handleSetEntropyForRNGAsyncCallback;
        v16 = 0;
        v10 = AppleBCMWLANCommander::sendIOVarSet(*(a1[9] + 5408), "rng");
      }

      else
      {
        v12 = *(a1[9] + 5408);
        v14 = v5;
        v15 = 74;
        v10 = AppleBCMWLANCommander::runIOVarSet(v12, "rng", &v14, 0, 0);
      }

      v11 = v10;
      if (v10)
      {
        if ((*(*a1 + 1952))(a1))
        {
          (*(*a1 + 1952))(a1);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANCore::setDBRG_ENTROPY(a1);
          }
        }
      }
    }

    else
    {
      v11 = 3758097095;
    }
  }

  else
  {
    v11 = 3758096385;
  }

  IOFreeData();
  return v11;
}

uint64_t AppleBCMWLANCore::isP2pAirplayActive(AppleBCMWLANCore *this)
{
  v2 = *(this + 9);
  v3 = *(v2 + 11296);
  if (v3)
  {

    return AppleBCMWLANProximityInterface::isAirplayActive(v3);
  }

  else
  {
    HIDWORD(v5) = 652835029 * *(v2 + 31060);
    LODWORD(v5) = HIDWORD(v5);
    if ((v5 >> 3) <= 0x418937)
    {
      if ((*(*this + 1952))(this))
      {
        (*(*this + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::isP2pAirplayActive(this);
        }
      }
    }

    ++*(*(this + 9) + 31060);
    return 0;
  }
}

BOOL AppleBCMWLANCore::mapLowLatencyLowPriority(AppleBCMWLANCore *this)
{
  v2 = *(this + 9);
  v3 = *(v2 + 11296);
  if (v3)
  {

    return AppleBCMWLANProximityInterface::isAirplayLlwMapToLowPriority(v3);
  }

  else
  {
    HIDWORD(v5) = 652835029 * *(v2 + 31060);
    LODWORD(v5) = HIDWORD(v5);
    if ((v5 >> 3) <= 0x418937)
    {
      if ((*(*this + 1952))(this))
      {
        (*(*this + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::mapLowLatencyLowPriority(this);
        }
      }
    }

    ++*(*(this + 9) + 31060);
    return 0;
  }
}

BOOL AppleBCMWLANCore::isLlwRequeueEnabled(AppleBCMWLANCore *this)
{
  v2 = *(this + 9);
  v3 = *(v2 + 11296);
  if (v3)
  {

    return AppleBCMWLANProximityInterface::isLlwRequeueEnabled(v3);
  }

  else
  {
    HIDWORD(v5) = 652835029 * *(v2 + 31060);
    LODWORD(v5) = HIDWORD(v5);
    if ((v5 >> 3) <= 0x418937)
    {
      if ((*(*this + 1952))(this))
      {
        (*(*this + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::isLlwRequeueEnabled(this);
        }
      }
    }

    ++*(*(this + 9) + 31060);
    return 0;
  }
}

uint64_t AppleBCMWLANCore::getCUR_PMK(uint64_t *a1, uint64_t a2)
{
  isDevFusedOrCSRInternal = AppleBCMWLAN_isDevFusedOrCSRInternal();
  if ((*(*a1 + 1952))(a1))
  {
    (*(*a1 + 1952))(a1);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::getCUR_PMK(a1);
    }
  }

  if (!isDevFusedOrCSRInternal)
  {
    return 3758097095;
  }

  if ((allowWiFiDebug(void)::checked & 1) == 0)
  {
    allowWiFiDebug(void)::checked = 1;
    IOParseBootArgNumber("wlan.debug.enable", &allowWiFiDebug(void)::debugEnasbled, 4);
  }

  result = 3758097095;
  if (allowWiFiDebug(void)::debugEnasbled)
  {
    isAssociated = IO80211BssManager::isAssociated(*(a1[9] + 5432));
    result = 3758097136;
    if (a2)
    {
      if (isAssociated)
      {
        v7 = a1[9];
        v8 = *(v7 + 288);
        if ((v8 - 1) > 0x3F)
        {
          return 3758097084;
        }

        else
        {
          memcpy((a2 + 8), (v7 + 223), v8);
          result = 0;
          *(a2 + 4) = *(a1[9] + 288);
          *(a2 + 76) = *(a1[9] + 292);
          *(a2 + 72) = 16;
        }
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::saveCUR_PMK(uint64_t *a1, uint64_t a2)
{
  v4 = 3758097095;
  if (AppleBCMWLAN_isDevFusedOrCSRInternal())
  {
    if ((allowWiFiDebug(void)::checked & 1) == 0)
    {
      allowWiFiDebug(void)::checked = 1;
      IOParseBootArgNumber("wlan.debug.enable", &allowWiFiDebug(void)::debugEnasbled, 4);
    }

    if (allowWiFiDebug(void)::debugEnasbled)
    {
      isAssociated = IO80211BssManager::isAssociated(*(a1[9] + 5432));
      v4 = 3758097136;
      if (a2)
      {
        if (isAssociated)
        {
          if ((*(*a1 + 1952))(a1))
          {
            (*(*a1 + 1952))(a1);
            if (CCLogStream::shouldLog())
            {
              AppleBCMWLANCore::saveCUR_PMK(a1);
            }
          }

          v6 = *(a2 + 4);
          if (v6 > 0x40)
          {
            return 3758097084;
          }

          else
          {
            memcpy((a1[9] + 223), (a2 + 16), *(a2 + 4));
            *(a1[9] + 288) = *(a2 + 4);
            v7 = a1[9];
            *(v7 + 292) = 0;
            *(v7 + 300) = 0;
            if ((*(*a1 + 1952))(a1))
            {
              (*(*a1 + 1952))(a1);
              if (CCLogStream::shouldLog())
              {
                v10 = (*(*a1 + 1952))(a1);
                CCLogStream::logAlert(v10, "[dk] %s@%d:Save PMK: ok Len:%d TLV_LEN:%d\n", "saveCUR_PMK", 56700, *(a2 + 4), v6 >> 4);
              }
            }

            if (v6 >= 0x10)
            {
              v9 = 0;
              do
              {
                if ((*(*a1 + 1952))(a1))
                {
                  (*(*a1 + 1952))(a1);
                  if (CCLogStream::shouldLog())
                  {
                    AppleBCMWLANCore::saveCUR_PMK(a1);
                  }
                }

                ++v9;
              }

              while (v6 >> 4 != v9);
            }

            return 0;
          }
        }
      }
    }
  }

  return v4;
}

double AppleBCMWLANCore::clearPmk(AppleBCMWLANCore *this)
{
  *(*(this + 9) + 288) = 0;
  v1 = *(this + 9);
  result = 0.0;
  *(v1 + 223) = 0u;
  v1 = (v1 + 223);
  v1[2] = 0u;
  v1[3] = 0u;
  v1[1] = 0u;
  return result;
}

uint64_t AppleBCMWLANCore::checkForDigitalNapSupport(AppleBCMWLANCore *this)
{
  v1 = *(this + 9);
  if (*(v1 + 10369) == 1)
  {
    return AppleBCMWLANConfigManager::isDigitalNapSupportedInDriver(*(v1 + 5464));
  }

  else
  {
    return 0;
  }
}

uint64_t AppleBCMWLANCore::isControllerRegisteredAndPoweredOn(AppleBCMWLANCore *this)
{
  v1 = *(*(this + 9) + 31064);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 0x40000000;
  v3[2] = ___ZN16AppleBCMWLANCore34isControllerRegisteredAndPoweredOnEv_block_invoke;
  v3[3] = &__block_descriptor_tmp_3166;
  v3[4] = this;
  return (*(*v1 + 112))(v1, v3);
}

uint64_t ___ZN16AppleBCMWLANCore34isControllerRegisteredAndPoweredOnEv_block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 72) + 28672;
  v2 = *(*(*(a1 + 32) + 72) + 30013) ^ 1;
  if (*(*(*(a1 + 32) + 72) + 30013))
  {
    result = 0;
  }

  else
  {
    result = 3758097112;
  }

  *(v1 + 1340) = v2;
  return result;
}

uint64_t AppleBCMWLANCore::setTXQueueEnabled(uint64_t this, int a2)
{
  if (a2)
  {
    v2 = 0x10000;
  }

  else
  {
    v2 = 0;
  }

  *(*(this + 72) + 10376) = *(*(this + 72) + 10376) & 0xFFFEFFFF | v2;
  return this;
}

uint64_t AppleBCMWLANCore::wasDynSARInFailSafeMode(AppleBCMWLANCore *this)
{
  v2 = *(*(this + 9) + 29920);
  mach_continuous_time();
  absolutetime_to_nanoseconds();
  if ((*(*this + 1952))(this))
  {
    (*(*this + 1952))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::wasDynSARInFailSafeMode(this);
    }
  }

  return 0;
}

uint64_t AppleBCMWLANCore::qosSetIOVar(AppleBCMWLANCore *this, const char *a2, __int16 a3, void *a4, unsigned int a5)
{
  if (AppleBCMWLANCore::featureFlagIsBitSet(this, 95) && (*(*(this + 9) + 30081) & 1) != 0)
  {
    v10 = IOMallocZeroData();
    if (v10)
    {
      v11 = v10;
      *v10 = 1;
      v10[1] = a5;
      v10[2] = a3;
      memcpy(v10 + 3, a4, a5);
      v12 = *(*(this + 9) + 5408);
      if (a5 == 0xFFFA)
      {
        v13 = 0;
      }

      else
      {
        v13 = v11;
      }

      *buf = v13;
      *v18 = (a5 + 6);
      v14 = AppleBCMWLANCommander::runIOVarSet(v12, "qos_mgmt", buf, 0, 0);
      if (v14)
      {
        if (!(*(*this + 1952))(this) || ((*(*this + 1952))(this), (CCLogStream::shouldLogConsole() & 1) == 0))
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 67110146;
            *&buf[4] = 65;
            *v18 = 2080;
            *&v18[2] = "qosSetIOVar";
            v19 = 1024;
            v20 = 58094;
            v21 = 2080;
            v22 = a2;
            v23 = 1024;
            v24 = v14;
            _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%c [dk] %s@%d: WiFi-QoS: Failed to runIOVarSet(qos_mgmt, %s) = 0x%x\n", buf, 0x28u);
          }
        }

        if ((*(*this + 1952))(this))
        {
          (*(*this + 1952))(this);
          if (CCLogStream::shouldLog())
          {
            v16 = (*(*this + 1952))(this);
            CCLogStream::logAlert(v16, "[dk] %s@%d:WiFi-QoS: Failed to runIOVarSet(qos_mgmt, %s) = 0x%x\n", "qosSetIOVar", 58094, a2, v14);
          }
        }
      }

      IOFreeData();
    }

    else
    {
      AppleBCMWLANCore::qosSetIOVar(this, a2, buf);
      return *buf;
    }
  }

  else
  {
    if (!(*(*this + 1952))(this) || ((*(*this + 1952))(this), (CCLogStream::shouldLogConsole() & 1) == 0))
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109634;
        *&buf[4] = 65;
        *v18 = 2080;
        *&v18[2] = "qosSetIOVar";
        v19 = 1024;
        v20 = 58077;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%c [dk] %s@%d: WiFi-QoS: QoS Management is disabled\n", buf, 0x18u);
      }
    }

    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::qosSetIOVar(this);
      }
    }

    return 0;
  }

  return v14;
}

uint64_t AppleBCMWLANCore::enableQoSMgmtMSCS(AppleBCMWLANCore *this, int a2)
{
  v5 = a2;
  if (AppleBCMWLANCore::featureFlagIsBitSet(this, 95) && (*(*(this + 9) + 30081) & 1) != 0)
  {
    if (!(*(*this + 1952))(this) || ((*(*this + 1952))(this), (CCLogStream::shouldLogConsole() & 1) == 0))
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109890;
        v7 = 65;
        v8 = 2080;
        v9 = "enableQoSMgmtMSCS";
        v10 = 1024;
        v11 = 58116;
        v12 = 1024;
        v13 = a2;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%c [dk] %s@%d: WiFi-QoS: QoS Management enableFlags = %u\n", buf, 0x1Eu);
      }
    }

    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::enableQoSMgmtMSCS(this);
      }
    }

    return AppleBCMWLANCore::qosSetIOVar(this, "WL_QOS_CMD_ENABLE", 1, &v5, 2u);
  }

  else
  {
    if (!(*(*this + 1952))(this) || ((*(*this + 1952))(this), (CCLogStream::shouldLogConsole() & 1) == 0))
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109634;
        v7 = 65;
        v8 = 2080;
        v9 = "enableQoSMgmtMSCS";
        v10 = 1024;
        v11 = 58112;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%c [dk] %s@%d: WiFi-QoS: QoS Management is disabled\n", buf, 0x18u);
      }
    }

    result = (*(*this + 1952))(this);
    if (result)
    {
      (*(*this + 1952))(this);
      result = CCLogStream::shouldLog();
      if (result)
      {
        AppleBCMWLANCore::enableQoSMgmtMSCS(this);
        return 0;
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::confiQoSMgmtMSCS(AppleBCMWLANCore *this, int a2, int a3)
{
  v11 = 0;
  if (AppleBCMWLANCore::featureFlagIsBitSet(this, 95) && (*(*(this + 9) + 30081) & 1) != 0)
  {
    v7 = 0xEA6000100001;
    v8 = 2032;
    v9 = 4;
    v10 = a2;
    LOBYTE(v11) = a3;
    if (!(*(*this + 1952))(this) || ((*(*this + 1952))(this), (CCLogStream::shouldLogConsole() & 1) == 0))
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67110146;
        v13 = 65;
        v14 = 2080;
        v15 = "confiQoSMgmtMSCS";
        v16 = 1024;
        v17 = 58146;
        v18 = 1024;
        v19 = a3;
        v20 = 1024;
        v21 = a2;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%c [dk] %s@%d: WiFi-QoS: qosReqType=%d qosFCMask=0x%x\n", buf, 0x24u);
      }
    }

    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::confiQoSMgmtMSCS(this, this & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000, a3, a2);
      }
    }

    return AppleBCMWLANCore::qosSetIOVar(this, "WL_QOS_CMD_RAV_MSCS", 2, &v7, 0x10u);
  }

  else
  {
    if (!(*(*this + 1952))(this) || ((*(*this + 1952))(this), (CCLogStream::shouldLogConsole() & 1) == 0))
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109634;
        v13 = 65;
        v14 = 2080;
        v15 = "confiQoSMgmtMSCS";
        v16 = 1024;
        v17 = 58133;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%c [dk] %s@%d: WiFi-QoS: QoS Management is disabled\n", buf, 0x18u);
      }
    }

    result = (*(*this + 1952))(this);
    if (result)
    {
      (*(*this + 1952))(this);
      result = CCLogStream::shouldLog();
      if (result)
      {
        AppleBCMWLANCore::confiQoSMgmtMSCS(this);
        return 0;
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::initQoSMgmtMSCS(AppleBCMWLANCore *this)
{
  result = AppleBCMWLANCore::featureFlagIsBitSet(this, 95);
  if (result)
  {
    if (*(*(this + 9) + 30081))
    {
      v5 = -1431655766;
      if (IOParseBootArgNumber("wlan.qos.enableFlags", &v5, 4))
      {
        v3 = v5;
        if (!(*(*this + 1952))(this) || ((*(*this + 1952))(this), (CCLogStream::shouldLogConsole() & 1) == 0))
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 67109890;
            v7 = 65;
            v8 = 2080;
            v9 = "initQoSMgmtMSCS";
            v10 = 1024;
            v11 = 58173;
            v12 = 1024;
            v13 = v3;
            _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%c [dk] %s@%d: WiFi-QoS: boot-arg wlan.qos.enableFlags=%d\n", buf, 0x1Eu);
          }
        }

        if ((*(*this + 1952))(this))
        {
          (*(*this + 1952))(this);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANCore::initQoSMgmtMSCS(this);
          }
        }
      }

      else
      {
        v3 = 1;
      }

      AppleBCMWLANCore::enableQoSMgmtMSCS(this, v3);
      if (IOParseBootArgNumber("wlan.qos.FCMask", &v5, 4))
      {
        v4 = v5;
        if (!(*(*this + 1952))(this) || ((*(*this + 1952))(this), (CCLogStream::shouldLogConsole() & 1) == 0))
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 67109890;
            v7 = 65;
            v8 = 2080;
            v9 = "initQoSMgmtMSCS";
            v10 = 1024;
            v11 = 58180;
            v12 = 1024;
            v13 = v4;
            _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%c [dk] %s@%d: WiFi-QoS: boot-arg wlan.qos.FCMask=0x%x\n", buf, 0x1Eu);
          }
        }

        if ((*(*this + 1952))(this))
        {
          (*(*this + 1952))(this);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANCore::initQoSMgmtMSCS(this);
          }
        }
      }

      else
      {
        v4 = 95;
      }

      *(*(this + 9) + 30084) = v4;
      result = IO80211BssManager::isAssociated(*(*(this + 9) + 5432));
      if ((result & 1) == 0)
      {
        result = AppleBCMWLANCore::confiQoSMgmtMSCS(this, v4, 0);
      }
    }

    else
    {
      result = AppleBCMWLANCore::enableQoSMgmtMSCS(this, 0);
    }

    *(*(this + 9) + 30082) = 0;
  }

  return result;
}

uint64_t AppleBCMWLANCore::sendQoSMgmtMSCSReq(AppleBCMWLANCore *this, int a2)
{
  v4 = *(this + 9);
  v5 = *(v4 + 30084);
  CurrentBSS = AppleBCMWLANBssManager::getCurrentBSS(*(v4 + 5432));
  if (AppleBCMWLANCore::featureFlagIsBitSet(this, 95) && (*(*(this + 9) + 30081) & 1) != 0)
  {
    if ((*(*CurrentBSS + 656))(CurrentBSS))
    {
      if (a2 && *(*(this + 9) + 30082))
      {
        if (!(*(*this + 1952))(this) || ((*(*this + 1952))(this), (CCLogStream::shouldLogConsole() & 1) == 0))
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
          {
            v8 = 67109634;
            v9 = 65;
            v10 = 2080;
            v11 = "sendQoSMgmtMSCSReq";
            v12 = 1024;
            v13 = 58211;
            _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%c [dk] %s@%d: WiFi-QoS: QoS MSCS is already active\n", &v8, 0x18u);
          }
        }

        if ((*(*this + 1952))(this))
        {
          (*(*this + 1952))(this);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANCore::sendQoSMgmtMSCSReq(this);
          }
        }
      }

      else if (a2 || (*(*(this + 9) + 30082) & 1) != 0)
      {
        AppleBCMWLANCore::confiQoSMgmtMSCS(this, v5, a2 == 0);
      }

      else
      {
        if (!(*(*this + 1952))(this) || ((*(*this + 1952))(this), (CCLogStream::shouldLogConsole() & 1) == 0))
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
          {
            v8 = 67109634;
            v9 = 65;
            v10 = 2080;
            v11 = "sendQoSMgmtMSCSReq";
            v12 = 1024;
            v13 = 58215;
            _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%c [dk] %s@%d: WiFi-QoS: QoS MSCS is already terminated\n", &v8, 0x18u);
          }
        }

        if ((*(*this + 1952))(this))
        {
          (*(*this + 1952))(this);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANCore::sendQoSMgmtMSCSReq(this);
          }
        }
      }
    }

    else
    {
      if (!(*(*this + 1952))(this) || ((*(*this + 1952))(this), (CCLogStream::shouldLogConsole() & 1) == 0))
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          v8 = 67109634;
          v9 = 65;
          v10 = 2080;
          v11 = "sendQoSMgmtMSCSReq";
          v12 = 1024;
          v13 = 58206;
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%c [dk] %s@%d: WiFi-QoS: AP does not support QoS MSCS\n", &v8, 0x18u);
        }
      }

      if ((*(*this + 1952))(this))
      {
        (*(*this + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::sendQoSMgmtMSCSReq(this);
        }
      }
    }
  }

  else
  {
    if (!(*(*this + 1952))(this) || ((*(*this + 1952))(this), (CCLogStream::shouldLogConsole() & 1) == 0))
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        v8 = 67109634;
        v9 = 65;
        v10 = 2080;
        v11 = "sendQoSMgmtMSCSReq";
        v12 = 1024;
        v13 = 58201;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%c [dk] %s@%d: WiFi-QoS: QoS Management is disabled\n", &v8, 0x18u);
      }
    }

    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::sendQoSMgmtMSCSReq(this);
      }
    }
  }

  return 0;
}

uint64_t AppleBCMWLANCore::collectRealTimeAppCongestionState(AppleBCMWLANCore *this)
{
  v2 = this + 72;
  if (*(*(this + 9) + 30092) == 1)
  {
    v3 = 0;
    v4 = 0;
    v5 = 35344;
    v6 = 5;
    do
    {
      v7 = *(*v2 + v5 - 40);
      v8 = __CFADD__(v4, v7);
      v4 += v7;
      if (v8)
      {
        if ((*(*this + 1952))(this))
        {
          (*(*this + 1952))(this);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANCore::collectRealTimeAppCongestionState(this);
          }
        }
      }

      v9 = *(*v2 + v5);
      v8 = __CFADD__(v3, v9);
      v3 += v9;
      if (v8)
      {
        if ((*(*this + 1952))(this))
        {
          (*(*this + 1952))(this);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANCore::collectRealTimeAppCongestionState(this);
          }
        }
      }

      v5 += 8;
      --v6;
    }

    while (v6);
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::collectRealTimeAppCongestionState(this);
      }
    }

    v10 = *(*v2 + 35290);
  }

  else
  {
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::collectRealTimeAppCongestionState(this);
      }
    }

    v10 = 0;
  }

  return v10 & 1;
}

uint64_t AppleBCMWLANCore::trafficMonitorCallback(const OSMetaClassBase *this, OSObject *a2, void *a3, unsigned int a4, unsigned int a5)
{
  v7 = a3;
  result = OSMetaClassBase::safeMetaCast(this, gAppleBCMWLANCoreMetaClass);
  if (!result)
  {
    return result;
  }

  v9 = result;
  v10 = result;
  v29 = -21846;
  mach_continuous_time();
  absolutetime_to_nanoseconds();
  if ((*(*v9 + 1952))(v9))
  {
    (*(*v10 + 1952))(v10);
    if (CCLogStream::shouldLog())
    {
      v25 = (*(*v10 + 1952))(v10);
      CCLogStream::logAlert(v25, "[dk] %s@%d:Now:%llu elapsedMS:%u rtPacketCount:%u bgPacketCount:%u\n", "trafficMonitorCallback", 58296, 0, v7, a4, a5);
    }
  }

  v11 = v10[9] + 0x8000;
  if (*(v10[9] + 35292) >= a4)
  {
    LOBYTE(v29) = 0;
    *(v11 + 2512) = 0;
  }

  else
  {
    v30 = 0;
    mach_continuous_time();
    absolutetime_to_nanoseconds();
    v12 = v10[9];
    v13 = *(v12 + 35280);
    if (v13)
    {
      if (-v13 >= 0x13)
      {
        LOBYTE(v29) = 1;
        *(v12 + 35280) = 0;
      }
    }

    else
    {
      *(v12 + 35280) = 0;
    }
  }

  v14 = v10[9];
  v15 = *(v14 + 35296) < a5;
  HIBYTE(v29) = *(v14 + 35296) < a5;
  if (v29 != *(v14 + 35288) || *(v14 + 35289) != v15)
  {
    AppleBCMWLANCore::handleAppTrafficIndication(v10, &v29);
    v14 = v10[9];
  }

  v16 = *(v14 + 35384) % 5u;
  if (*(v14 + 35384))
  {
    v17 = v16 == 0;
  }

  else
  {
    v17 = 0;
  }

  if (!v17)
  {
    *(v14 + 8 * v16 + 35304) = a4;
    *(v10[9] + 8 * (*(v10[9] + 35384) % 5u) + 35344) = a5;
    v18 = v10[9];
    v19 = (*(v18 + 35384))++ + 1;
    if ((v19 & 0x100) != 0)
    {
      *(v10[9] + 35384) = 0;
    }

    result = AppleBCMWLANCore::collectRealTimeAppCongestionState(v10);
    if ((result & 1) == 0)
    {
      result = *(v10[9] + 11288);
      if (result)
      {
        result = IO80211InfraInterface::getWMMBWReset(result);
        if (result)
        {
          IO80211InfraInterface::setWMMBWReset(*(v10[9] + 11288), 0);
          result = (*(*v10 + 1952))(v10);
          if (result)
          {
            (*(*v10 + 1952))(v10);
            result = CCLogStream::shouldLog();
            if (result)
            {
              result = AppleBCMWLANCore::trafficMonitorCallback(v10);
            }
          }
        }
      }

      *(v10[9] + 35385) = 0;
    }

    return result;
  }

  v20 = AppleBCMWLANCore::collectRealTimeAppCongestionState(v10);
  v21 = v10[9];
  if (v20)
  {
    if (!*(v21 + 35385) || (IO80211InfraInterface::getWMMBWReset(*(v21 + 11288)) & 1) == 0)
    {
      if ((*(*v10 + 1952))(v10))
      {
        (*(*v10 + 1952))(v10);
        if (CCLogStream::shouldLog())
        {
          v27 = (*(*v10 + 1952))(v10);
          CCLogStream::logAlert(v27, "[dk] %s@%d:Enabling trigger for dqeue mechanism for @ now:%llu elapsedMS:%u for tid %d tid %d\n", "trafficMonitorCallback", 58333, 0, v7, 1, 2);
        }
      }

      v22 = *(v10[9] + 11288);
      if (v22)
      {
        v23 = 1;
        IO80211InfraInterface::setWMMBWReset(v22, 1);
        if ((*(*v10 + 1952))(v10))
        {
          (*(*v10 + 1952))(v10);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANCore::trafficMonitorCallback(v10);
          }
        }
      }

      else
      {
        v23 = 1;
      }

LABEL_48:
      *(v10[9] + 35385) = v23;
    }
  }

  else if ((*(v21 + 35385) & 1) != 0 || IO80211InfraInterface::getWMMBWReset(*(v21 + 11288)))
  {
    if ((*(*v10 + 1952))(v10))
    {
      (*(*v10 + 1952))(v10);
      if (CCLogStream::shouldLog())
      {
        v28 = (*(*v10 + 1952))(v10);
        CCLogStream::logAlert(v28, "[dk] %s@%d:Disabling trigger for dqeue mechanism for @ now:%llu elapsedMS:%u for tid %d tid %d\n", "trafficMonitorCallback", 58357, 0, v7, 1, 2);
      }
    }

    v24 = *(v10[9] + 11288);
    if (v24)
    {
      IO80211InfraInterface::setWMMBWReset(v24, 0);
      if ((*(*v10 + 1952))(v10))
      {
        (*(*v10 + 1952))(v10);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::trafficMonitorCallback(v10);
        }
      }
    }

    v23 = 0;
    goto LABEL_48;
  }

  *(v10[9] + 8 * (*(v10[9] + 35384) + 1 - 5 * ((13108 * (*(v10[9] + 35384) + 1)) >> 16)) + 35304) = a4;
  *(v10[9] + 8 * (*(v10[9] + 35384) + 1 - 5 * ((13108 * (*(v10[9] + 35384) + 1)) >> 16)) + 35344) = a5;
  result = (*(*v10 + 1952))(v10);
  if (result)
  {
    (*(*v10 + 1952))(v10);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v26 = (*(*v10 + 1952))(v10);
      return CCLogStream::logAlert(v26, "[dk] %s@%d:Collecting sample modulo size now:%llu elapsedMS:%u @ window %d\n", "trafficMonitorCallback", 58378, 0, v7, *(v10[9] + 35384));
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::handleAppTrafficIndication(uint64_t *a1, _BYTE *a2)
{
  v4 = a2[1];
  if (*a2)
  {
    if (a2[1])
    {
      if ((*(*a1 + 1952))(a1))
      {
        (*(*a1 + 1952))(a1);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::handleAppTrafficIndication(a1);
        }
      }
    }

    else
    {
      v7 = *(a1[9] + 35289);
      v8 = (*(*a1 + 1952))(a1);
      if (v7)
      {
        if (v8)
        {
          (*(*a1 + 1952))(a1);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANCore::handleAppTrafficIndication(a1);
          }
        }
      }

      else if (v8)
      {
        (*(*a1 + 1952))(a1);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::handleAppTrafficIndication(a1);
        }
      }
    }
  }

  else if (a2[1])
  {
    v5 = *(a1[9] + 35289);
    v6 = (*(*a1 + 1952))(a1);
    if (v5)
    {
      if (v6)
      {
        (*(*a1 + 1952))(a1);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::handleAppTrafficIndication(a1);
        }
      }
    }

    else if (v6)
    {
      (*(*a1 + 1952))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::handleAppTrafficIndication(a1);
      }
    }
  }

  else if ((*(*a1 + 1952))(a1))
  {
    (*(*a1 + 1952))(a1);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::handleAppTrafficIndication(a1);
    }
  }

  result = IO80211Controller::postMessage(a1, *(a1[9] + 11288), 0xBDu, a2, 2uLL, 1);
  *(a1[9] + 35288) = *a2;
  *(a1[9] + 35289) = a2[1];
  return result;
}

uint64_t *AppleBCMWLANCore::changeAggregationPerEDCATID(uint64_t *this, unsigned int a2, int a3)
{
  if (a2 <= 7)
  {
    v5 = this;
    v14[0] = a2;
    v14[1] = a3;
    v6 = *(this[9] + 5408);
    v12 = v14;
    v13 = 2;
    v7 = AppleBCMWLANCommander::runIOVarSet(v6, "ampdu_tid", &v12, 0, 0);
    this = (*(*v5 + 1952))(v5);
    if (v7)
    {
      if (this)
      {
        (*(*v5 + 1952))(v5);
        this = CCLogStream::shouldLog();
        if (this)
        {
          return AppleBCMWLANCore::changeAggregationPerEDCATID(v5);
        }
      }
    }

    else
    {
      if (this)
      {
        (*(*v5 + 1952))(v5);
        if (CCLogStream::shouldLog())
        {
          v10 = (*(*v5 + 1952))(v5);
          v11 = "disabled";
          if (a3)
          {
            v11 = "enabled";
          }

          CCLogStream::logInfo(v10, "[dk] %s@%d:Block ACK %s for TID %d", "changeAggregationPerEDCATID", 58474, v11, a2);
        }
      }

      v15 = 0;
      BYTE6(v15) = a2;
      HIBYTE(v15) = a3 ^ 1;
      this = IO80211BssManager::getCurrentBSSID(*(v5[9] + 5432), &v15);
      if (this)
      {
        v8 = *(v5[9] + 5408);
        if (a3)
        {
          v9 = "ampdu_send_addba";
        }

        else
        {
          v9 = "ampdu_send_delba";
        }

        v12 = v14;
        v13 = 8;
        if (AppleBCMWLANCommander::runIOVarSet(v8, v9, &v12, 0, 0))
        {
          if ((*(*v5 + 1952))(v5))
          {
            (*(*v5 + 1952))(v5);
            if (CCLogStream::shouldLog())
            {
              AppleBCMWLANCore::changeAggregationPerEDCATID(v5, v5 & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000, a3, &v15 + 6);
            }
          }
        }

        this = (*(*v5 + 1952))(v5);
        if (this)
        {
          (*(*v5 + 1952))(v5);
          this = CCLogStream::shouldLog();
          if (this)
          {
            return AppleBCMWLANCore::changeAggregationPerEDCATID(v5);
          }
        }
      }
    }
  }

  return this;
}

uint64_t AppleBCMWLANCore::dbgConfigureBcnlossCoreCapture(AppleBCMWLANCore *this, unsigned int a2)
{
  v3 = *(this + 9);
  if (a2)
  {
    *(v3 + 18193) = 1;
    *(*(this + 9) + 18176) = a2;
  }

  else
  {
    *(v3 + 18193) = 0;
  }

  result = (*(*this + 1952))(this);
  if (result)
  {
    (*(*this + 1952))(this);
    result = CCLogStream::shouldLog();
    if (result)
    {
      return AppleBCMWLANCore::dbgConfigureBcnlossCoreCapture(this);
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::Start_Impl(AppleBCMWLANCore *this, IOService *a2)
{
  setPropertyHelper(this, "DriverKitDriver", kOSBooleanTrue);
  v4 = OSString::withCString("iOS");
  setPropertyHelper(this, "DriverKitDriverPlatformType", v4);
  if (v4)
  {
    (v4->release)(v4);
  }

  *(*(this + 9) + 5392) = OSMetaClassBase::safeMetaCast(a2, gAppleBCMWLANBusInterfaceMetaClass);
  v32 = *(*(this + 9) + 5392);
  io80211_os_log();
  v5 = *(*(this + 9) + 5392);
  if (!v5)
  {
    io80211_os_log();
    v8 = 3758097090;
LABEL_79:
    v33 = *(*(this + 9) + 5392);
    io80211_os_log();
    return v8;
  }

  (*(*v5 + 8))(v5);
  if ((*(*(*(*(this + 9) + 5392) + 48) + 200))(*(*(this + 9) + 5392) + 48, v6, v7))
  {
    IOLog("AppleBCMWLANCore instantiated before Bus powered on, deferring\n", this, a2, v32);
    return 3758097112;
  }

  getClassNameHelper(a2);
  io80211_os_log();
  AppleBCMWLANBusInterface::sendBootCheckPointToCoreAnalytics(*(*(this + 9) + 5392), 0, 4u, *(*(this + 9) + 35904));
  AppleBCMWLANBusInterface::sendBootCheckPointToCoreAnalytics(*(*(this + 9) + 5392), 0, 5u);
  *(*(this + 9) + 14248) = AppleBCMWLANBusInterface::getLogger(*(*(this + 9) + 5392));
  v9 = *(*(this + 9) + 14248);
  if (!v9)
  {
    v8 = 3758097084;
    io80211_os_log();
    goto LABEL_79;
  }

  (*(*v9 + 8))(v9);
  v8 = IOService::Start(this, a2, &IO80211Controller::_Dispatch);
  v10 = (*(*this + 1952))(this);
  if (v8)
  {
    if (v10)
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::Start_Impl(this);
      }
    }

    goto LABEL_79;
  }

  if (v10)
  {
    (*(*this + 1952))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::Start_Impl(this);
    }
  }

  v8 = IOService::Create(this, this, "ReporterProxy", (*(this + 9) + 14304), 0);
  v11 = (*(*this + 1952))(this);
  if (v8)
  {
    if (v11)
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::Start_Impl(this);
      }
    }

    goto LABEL_79;
  }

  if (v11)
  {
    (*(*this + 1952))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::Start_Impl(this);
    }
  }

  v12 = (*(*this + 64))(this, *(*(this + 9) + 5392));
  v13 = *(*(this + 9) + 18415);
  if (v13 == 1)
  {
    v14 = *(*(this + 9) + 18416);
    v15 = *(*(this + 9) + 18420);
  }

  else
  {
    v15 = 0;
    v14 = 0xFFFF;
  }

  v16 = (*(*this + 1952))(this);
  if ((v12 & 1) == 0)
  {
    v8 = 3758097084;
    if (v16)
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        v31 = (*(*this + 1952))(this);
        CCLogStream::logAlert(v31, "[dk] %s@%d:wlan core start failed, reason[%u] line[%u], init failed[%u]\n", "Start_Impl", 58692, v14, v15, v13);
      }
    }

    goto LABEL_79;
  }

  v34 = v14;
  if (v16)
  {
    (*(*this + 1952))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::Start_Impl(this);
    }
  }

  v17 = (*(**(*(this + 9) + 31064) + 168))(*(*(this + 9) + 31064));
  if (!v17)
  {
    v8 = 3758097084;
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::Start_Impl(this);
      }
    }

    goto LABEL_79;
  }

  v18 = v17;
  v19 = OSObject::SetDispatchQueue(this, "WLANMainDispatchQueue", v17, 0);
  if (v19)
  {
    v8 = v19;
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::Start_Impl(this);
      }
    }

    goto LABEL_79;
  }

  v8 = IOService::CopySystemStateNotificationService(this, (*(this + 9) + 35536), 0);
  v20 = (*(*this + 1952))(this);
  if (v8)
  {
    if (v20)
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::Start_Impl(this);
      }
    }

    goto LABEL_79;
  }

  if (v20)
  {
    (*(*this + 1952))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::Start_Impl(this);
    }
  }

  if (*(*(this + 9) + 29928))
  {
    v21 = OSArray::withCapacity(4u);
    v22 = OSString::withCString("kAudioMessage_MicState");
    v23 = OSString::withCString("kAudioMessage_ReceiverState");
    OSArray::setObject(v21, v22);
    OSArray::setObject(v21, v23);
    v8 = IOServiceStateNotificationDispatchSource::Create(*(*(this + 9) + 35536), v21, v18, (*(this + 9) + 35544), v24);
    if (v21)
    {
      (v21->release)(v21);
    }

    if (v22)
    {
      (v22->release)(v22);
    }

    if (v23)
    {
      (v23->release)(v23);
    }

    if (v8)
    {
      if ((*(*this + 1952))(this))
      {
        (*(*this + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::Start_Impl(this);
        }
      }

      goto LABEL_79;
    }

    ActionSystemStateNotificationReady = AppleBCMWLANCore::CreateActionSystemStateNotificationReady(this, 0, (*(this + 9) + 35552));
    if (ActionSystemStateNotificationReady)
    {
      v8 = ActionSystemStateNotificationReady;
      if ((*(*this + 1952))(this))
      {
        (*(*this + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::Start_Impl(this);
        }
      }

      goto LABEL_79;
    }

    v26 = IOServiceStateNotificationDispatchSource::SetHandler(*(*(this + 9) + 35544), *(*(this + 9) + 35552), 0);
    if (v26)
    {
      v8 = v26;
      if ((*(*this + 1952))(this))
      {
        (*(*this + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::Start_Impl(this);
        }
      }

      goto LABEL_79;
    }
  }

  else if ((*(*this + 1952))(this))
  {
    (*(*this + 1952))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::Start_Impl(this);
    }
  }

  v28 = *(*(this + 9) + 5392);
  v35[0] = _NSConcreteStackBlock;
  v35[1] = 0x40000000;
  v35[2] = ___ZN16AppleBCMWLANCore10Start_ImplEP9IOService_block_invoke;
  v35[3] = &__block_descriptor_tmp_3249;
  v35[4] = this;
  (*(*v28 + 824))(v28, v35, v27);
  if ((*(*this + 1952))(this))
  {
    (*(*this + 1952))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::Start_Impl(this);
    }
  }

  *(*(this + 9) + 18413) = 0;
  _DebugStateSaveObject(this);
  if ((*(*this + 1952))(this))
  {
    (*(*this + 1952))(this);
    if (CCLogStream::shouldLog())
    {
      v30 = (*(*this + 1952))(this);
      CCLogStream::logAlert(v30, "[dk] %s@%d:done: succcess: ret[0x%08x], this[%p] provider[%p], fProvider[%p], reason[%u] line[%u], init failed[%u]\n", "Start_Impl", 58751, 0, this, a2, *(*(this + 9) + 5392), v34, v15, v13);
    }
  }

  return 0;
}

uint64_t ___ZN16AppleBCMWLANCore10Start_ImplEP9IOService_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if ((*(v1[9] + 10376) & 0x40) != 0)
  {
    if ((*(*v1 + 1952))(*(a1 + 32)))
    {
      (*(*v1 + 1952))(v1);
      if (CCLogStream::shouldLog())
      {
        ___ZN16AppleBCMWLANCore10Start_ImplEP9IOService_block_invoke_cold_1(v1);
      }
    }
  }

  else
  {
    AppleBCMWLANCore::HandleShutdownGated(*(a1 + 32));
  }

  return 0;
}

OSDictionary *AppleBCMWLANCore::SystemStateNotificationReady_Impl(AppleBCMWLANCore *this, OSAction *a2)
{
  v3 = OSString::withCString("kAudioMessage_MicState");
  v4 = OSString::withCString("kAudioMessage_ReceiverState");
  v12 = 0xAAAAAAAAAAAAAAAALL;
  IOServiceStateNotificationDispatchSource::StateNotificationBegin(*(*(this + 9) + 35544), 0);
  if (!IOService::StateNotificationItemCopy(*(*(this + 9) + 35536), v3, &v12, 0))
  {
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::SystemStateNotificationReady_Impl(this);
      }
    }

    v5 = *(*(this + 9) + 29928);
    Object = OSDictionary::getObject(v12, "kAudioMessage_MicOn");
    v7 = OSMetaClassBase::safeMetaCast(Object, gOSBooleanMetaClass) == kOSBooleanTrue;
    AppleBCMWLANAudioProtector::setLDOOnRequest(v5, v7);
    if (v12)
    {
      (v12->release)(v12);
      v12 = 0;
    }
  }

  result = IOService::StateNotificationItemCopy(*(*(this + 9) + 35536), v4, &v12, 0);
  if (!result)
  {
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::SystemStateNotificationReady_Impl(this);
      }
    }

    v9 = *(*(this + 9) + 29928);
    v10 = OSDictionary::getObject(v12, "kAudioMessage_ReceiverOn");
    v11 = OSMetaClassBase::safeMetaCast(v10, gOSBooleanMetaClass) == kOSBooleanTrue;
    AppleBCMWLANAudioProtector::setLDOOnRequest(v9, v11);
    result = v12;
    if (v12)
    {
      result = (v12->release)(v12);
      v12 = 0;
    }
  }

  if (v3)
  {
    result = (v3->release)(v3);
  }

  if (v4)
  {
    return (v4->release)(v4);
  }

  return result;
}

uint64_t AppleBCMWLANCore::Stop_Impl(AppleBCMWLANCore *this, IOService *a2)
{
  v4 = this & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000;
  if ((*(*this + 1952))(this))
  {
    (*(*this + 1952))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::Stop_Impl(this, v4, a2);
    }
  }

  if (AppleBCMWLANBusInterface::hasRegisteredDriver(*(*(this + 9) + 5392)))
  {
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::Stop_Impl(this, v4, a2);
      }
    }

    (*(**(*(this + 9) + 5392) + 128))(*(*(this + 9) + 5392), this, *(*(this + 9) + 5560));
  }

  AppleBCMWLANCore::stopResources(this);
  v5 = *(*(this + 9) + 35536);
  if (v5)
  {
    (*(*v5 + 16))(v5);
    *(*(this + 9) + 35536) = 0;
  }

  return IOService::Stop(this, a2, &IO80211Controller::_Dispatch);
}

uint64_t AppleBCMWLANCore::newUserClientGated(AppleBCMWLANCore *this, int a2, IOUserClient **a3)
{
  result = 0xAAAAAAAAAAAAAAAALL;
  v10 = 0;
  IOParseBootArgNumber("wlan.factory", &v10, 4);
  if (v10)
  {
    if (a2 == 1466517097)
    {
      goto LABEL_4;
    }
  }

  else
  {
    isFdrCal = AppleBCMWLANCore::isFdrCal(this);
    if (a2 == 1466517097 && isFdrCal)
    {
LABEL_4:
      io80211_os_log();
      if (IOService::Create(this, this, "AppleBCMWLANUserClientProperties", &result, 0) || (v8 = OSMetaClassBase::safeMetaCast(result, gAppleBCMWLANUserClientMetaClass)) == 0)
      {
        io80211_os_log();
        return 3758097084;
      }

      else
      {
        *a3 = v8;
        io80211_os_log();
        return 0;
      }
    }
  }

  v7 = 3758097095;
  if ((*(*this + 1952))(this))
  {
    (*(*this + 1952))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::newUserClientGated(this);
    }
  }

  return v7;
}

uint64_t AppleBCMWLANCore::NewUserClient_Impl(AppleBCMWLANCore *this, int a2, IOUserClient **a3)
{
  if ((*(**(*(this + 9) + 31064) + 144))(*(*(this + 9) + 31064)))
  {

    return AppleBCMWLANCore::newUserClientGated(this, a2, a3);
  }

  else
  {
    v7 = *(*(this + 9) + 31064);
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 0x40000000;
    v8[2] = ___ZN16AppleBCMWLANCore18NewUserClient_ImplEjPP12IOUserClient_block_invoke;
    v8[3] = &__block_descriptor_tmp_3265;
    v8[4] = this;
    v9 = a2;
    v8[5] = a3;
    return (*(*v7 + 112))(v7, v8);
  }
}

void AppleBCMWLANCore::setAndBootInfraInterface(AppleBCMWLANCore *this, int a2, AppleBCMWLANSkywalkInterface *a3)
{
  if (a2)
  {
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::setAndBootInfraInterface(this);
      }
    }
  }

  else
  {
    *(*(this + 9) + 11288) = a3;
    *(*(this + 9) + 11192) = *(this + 9) + 11288;
    (*(*this + 472))(this, a3, this);
    v13 = 0;
    v14 = &v13;
    v15 = 0x2000000000;
    v16 = -536870212;
    v4 = *(this + 9);
    v5 = *(v4 + 31064);
    if (*(v4 + 35672) == 1)
    {
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 0x40000000;
      v12[2] = ___ZN16AppleBCMWLANCore24setAndBootInfraInterfaceEjP28AppleBCMWLANSkywalkInterface_block_invoke;
      v12[3] = &__block_descriptor_tmp_3267;
      v12[4] = this;
      v6 = (*(*v5 + 112))(v5, v12);
      *(v14 + 6) = v6;
      v7 = (*(*this + 1952))(this);
      if (v6)
      {
        if (v7)
        {
          (*(*this + 1952))(this);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANCore::setAndBootInfraInterface(this);
          }
        }

        v8 = *(*(this + 9) + 31064);
        v11[0] = _NSConcreteStackBlock;
        v11[1] = 0x40000000;
        v11[2] = ___ZN16AppleBCMWLANCore24setAndBootInfraInterfaceEjP28AppleBCMWLANSkywalkInterface_block_invoke_2;
        v11[3] = &__block_descriptor_tmp_3270;
        v11[4] = this;
        (*(*v8 + 112))(v8, v11);
      }

      else if (v7)
      {
        (*(*this + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::setAndBootInfraInterface(this);
        }
      }
    }

    else
    {
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 1107296256;
      v10[2] = ___ZN16AppleBCMWLANCore24setAndBootInfraInterfaceEjP28AppleBCMWLANSkywalkInterface_block_invoke_3;
      v10[4] = &v13;
      v10[5] = this;
      v10[3] = &__block_descriptor_tmp_3276;
      v9 = (*(*v5 + 112))(v5, v10);
      *(v14 + 6) = v9;
    }

    _Block_object_dispose(&v13, 8);
  }
}

uint64_t AppleBCMWLANCore::downloadFdr(AppleBCMWLANCore *this)
{
  v6 = 0;
  if (checkAcquireDataPropertyNotEmpty(*(*(this + 9) + 5392), "wifi-calibration-fdr", &v6, 0, 1uLL, "IOService"))
  {
    BCMInterfaceState = AppleBCMWLANCore::getBCMInterfaceState(this);
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::downloadFdr(this);
      }
    }

    v3 = AppleBCMWLANCommander::runIOCtlSet(*(*(this + 9) + 5408), 3, &kNoTxPayload, 0, 0);
    v4 = (*(*this + 1952))(this);
    if (!v3)
    {
      if (v4)
      {
        (*(*this + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::downloadFdr(this);
        }
      }

      v3 = AppleBCMWLANCore::downloadCal(this, v6, 0);
      if ((*(*this + 1952))(this) && ((*(*this + 1952))(this), CCLogStream::shouldLog()))
      {
        AppleBCMWLANCore::downloadFdr(this);
        if (v3)
        {
          goto LABEL_12;
        }
      }

      else if (v3)
      {
LABEL_12:
        if ((*(*this + 1952))(this))
        {
          (*(*this + 1952))(this);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANCore::downloadFdr(this);
          }
        }
      }

      if (BCMInterfaceState)
      {
        v3 = AppleBCMWLANCore::bringupBCM(this);
        if ((*(*this + 1952))(this))
        {
          (*(*this + 1952))(this);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANCore::downloadFdr(this);
          }
        }
      }

      goto LABEL_22;
    }

    if (v4)
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::downloadFdr(this);
      }
    }
  }

  else
  {
    v3 = 3758097084;
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::downloadFdr(this);
      }
    }
  }

LABEL_22:
  if (v6)
  {
    (v6->release)(v6);
  }

  return v3;
}

uint64_t AppleBCMWLANCore::createGenericPath(AppleBCMWLANCore *this, char *__dst, const char *a3)
{
  strcpy(__source, "Firmware/");
  strlcpy(__dst, __source, 0xFFuLL);
  strlcat(__dst, (*(this + 9) + 1464), 0xFFuLL);
  strlcat(__dst, "_gen.", 0xFFuLL);
  strlcat(__dst, a3, 0xFFuLL);
  result = (*(*this + 1952))(this);
  if (result)
  {
    (*(*this + 1952))(this);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v7 = (*(*this + 1952))(this);
      return CCLogStream::logAlert(v7, "[dk] %s@%d:%s %s from FW path %s\n", "createGenericPath", 59016, "createGenericPath", __dst, (*(this + 9) + 1464));
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::downloadGenericCalibrationData(AppleBCMWLANCore *this)
{
  memset(__dst, 0, sizeof(__dst));
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v34 = 0u;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  *v27 = 0u;
  v24 = 0;
  v25 = 0;
  v2 = this & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000;
  shouldLog = (*(*this + 1952))();
  if (shouldLog)
  {
    (*(*this + 1952))(this);
    shouldLog = CCLogStream::shouldLog();
    if (shouldLog)
    {
      shouldLog = AppleBCMWLANCore::downloadGenericCalibrationData(this);
    }
  }

  v4 = OSBundle::mainBundle(shouldLog);
  if (!v4)
  {
    AppleBCMWLANCore::downloadGenericCalibrationData(this);
    RegTableStatus = v26;
    goto LABEL_53;
  }

  AppleBCMWLANCore::createGenericPath(this, __dst, "cal");
  v5 = OSBundle::loadResource(v4, __dst, 0, 10 * IOVMPageSize, &v25);
  if (v25)
  {
    BCMInterfaceState = AppleBCMWLANCore::getBCMInterfaceState(this);
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::downloadGenericCalibrationData(this);
      }
    }

    RegTableStatus = AppleBCMWLANCommander::runIOCtlSet(*(*(this + 9) + 5408), 3, &kNoTxPayload, 0, 0);
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::downloadGenericCalibrationData(this, v2, BCMInterfaceState, RegTableStatus);
      }
    }

    v8 = (*(*this + 1952))(this);
    if (!RegTableStatus)
    {
      if (v8)
      {
        (*(*this + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::downloadGenericCalibrationData(this);
        }
      }

      v9 = OSMappedFile::data(v25);
      v10 = OSMappedFile::size(v25);
      v11 = AppleBCMWLANCore::downloadBlob(this, "calload", v9, v10);
      if ((*(*this + 1952))(this) && ((*(*this + 1952))(this), CCLogStream::shouldLog()))
      {
        v18 = (*(*this + 1952))(this);
        v19 = OSMappedFile::size(v25);
        v20 = (*(*this + 112))(this, v11);
        CCLogStream::logAlert(v18, "[dk] %s@%d: calload ... called, %s: size[%zu], rv 0x%x %s\n", "downloadGenericCalibrationData", 59050, __dst, v19, v11, v20);
        if (v11)
        {
LABEL_19:
          if (v11 != -469794559)
          {
            goto LABEL_26;
          }
        }
      }

      else if (v11)
      {
        goto LABEL_19;
      }

      if ((*(*this + 1952))(this))
      {
        (*(*this + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::downloadGenericCalibrationData(this);
        }
      }

      CalMSFStatus = AppleBCMWLANCore::retrieveCalMSFStatus(this, 1);
      if ((*(*this + 1952))(this) && ((*(*this + 1952))(this), CCLogStream::shouldLog()))
      {
        AppleBCMWLANCore::downloadGenericCalibrationData(this);
        if (!CalMSFStatus)
        {
          goto LABEL_29;
        }
      }

      else if (!CalMSFStatus)
      {
        goto LABEL_29;
      }

LABEL_26:
      if ((*(*this + 1952))(this))
      {
        (*(*this + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::downloadGenericCalibrationData(this);
        }
      }

LABEL_29:
      AppleBCMWLANCore::createGenericPath(this, v27, "clmb");
      v13 = OSBundle::loadResource(v4, v27, 0, 10 * IOVMPageSize, &v24);
      if (!v24)
      {
        v14 = v13;
        if ((*(*this + 1952))(this))
        {
          (*(*this + 1952))(this);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANCore::downloadGenericCalibrationData(this, v2, v14, v27);
          }
        }
      }

      if ((*(*this + 1952))(this))
      {
        (*(*this + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::downloadGenericCalibrationData(this);
        }
      }

      v15 = OSMappedFile::data(v24);
      v16 = OSMappedFile::size(v24);
      RegTableStatus = AppleBCMWLANCore::downloadBlob(this, "clmload", v15, v16);
      if ((*(*this + 1952))(this) && ((*(*this + 1952))(this), CCLogStream::shouldLog()))
      {
        v21 = (*(*this + 1952))(this);
        v22 = OSMappedFile::size(v24);
        v23 = (*(*this + 112))(this, RegTableStatus);
        CCLogStream::logAlert(v21, "[dk] %s@%d: clmload ... called, %s: size[%zu], rv 0x%x %s\n", "downloadGenericCalibrationData", 59069, v27, v22, RegTableStatus, v23);
        if (!RegTableStatus)
        {
          goto LABEL_40;
        }
      }

      else if (!RegTableStatus)
      {
        goto LABEL_40;
      }

      if (RegTableStatus != -469794559)
      {
LABEL_46:
        if ((*(*this + 1952))(this))
        {
          (*(*this + 1952))(this);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANCore::downloadGenericCalibrationData(this);
          }
        }

        goto LABEL_49;
      }

LABEL_40:
      if ((*(*this + 1952))(this))
      {
        (*(*this + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::downloadGenericCalibrationData(this);
        }
      }

      RegTableStatus = AppleBCMWLANCore::retrieveRegTableStatus(this);
      if ((*(*this + 1952))(this) && ((*(*this + 1952))(this), CCLogStream::shouldLog()))
      {
        AppleBCMWLANCore::downloadGenericCalibrationData(this);
        if (RegTableStatus)
        {
          goto LABEL_46;
        }
      }

      else if (RegTableStatus)
      {
        goto LABEL_46;
      }

LABEL_49:
      if (BCMInterfaceState)
      {
        RegTableStatus = AppleBCMWLANCore::bringupBCM(this);
        if ((*(*this + 1952))(this))
        {
          (*(*this + 1952))(this);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANCore::downloadGenericCalibrationData(this);
          }
        }
      }

      goto LABEL_53;
    }

    if (v8)
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::downloadGenericCalibrationData(this);
      }
    }
  }

  else
  {
    RegTableStatus = v5;
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::downloadGenericCalibrationData(this, v2, RegTableStatus, __dst);
      }
    }
  }

LABEL_53:
  if (v25)
  {
    (*(*v25 + 16))(v25);
    v25 = 0;
  }

  if (v24)
  {
    (*(*v24 + 16))(v24);
    v24 = 0;
  }

  if (v4)
  {
    (*(*v4 + 16))(v4);
  }

  return RegTableStatus;
}