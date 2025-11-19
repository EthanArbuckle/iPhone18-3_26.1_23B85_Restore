uint64_t AppleBCMWLANBusInterfacePCIe::H2DDebugRingCreateComplete(AppleBCMWLANBusInterfacePCIe *this, AppleBCMWLANPCIeSubmissionRing *a2, int a3, void *a4)
{
  if (AppleBCMWLANBusInterface::getLogger(this))
  {
    AppleBCMWLANBusInterface::getLogger(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANBusInterfacePCIe::H2DDebugRingCreateComplete();
    }
  }

  *(*(this + 9) + 328) = a2;
  (*(**(*(this + 9) + 3840) + 80))(*(*(this + 9) + 3840));
  v7 = *(this + 9);
  if (a3)
  {
    if (*(v7 + 1308))
    {
      result = AppleBCMWLANBusInterface::getLogger(this);
      if (result)
      {
        AppleBCMWLANBusInterface::getLogger(this);
        result = CCLogStream::shouldLog();
        if (result)
        {
          return AppleBCMWLANBusInterfacePCIe::H2DDebugRingCreateComplete(this);
        }
      }
    }

    else
    {
      FaultReporter = AppleBCMWLANBusInterface::getFaultReporter(this);
      result = CCFaultReporter::reportFault(FaultReporter, 4u, "/Library/Caches/com.apple.xbs/Sources/AppleBCMWLANV3_driverkit/Busses/PCIe/AppleBCMWLANBusInterfacePCIe.cpp", 0x5054u, "H2DDebugRingCreateComplete", 0, -469794022, 0);
      if (result)
      {
        v14 = result;
        result = AppleBCMWLANBusInterface::getLogger(this);
        if (result)
        {
          AppleBCMWLANBusInterface::getLogger(this);
          result = CCLogStream::shouldLog();
          if (result)
          {
            Logger = AppleBCMWLANBusInterface::getLogger(this);
            return CCLogStream::logCrit(Logger, "[dk] %s@%d:Failed to report fault with 0x%x\n", "H2DDebugRingCreateComplete", 20566, v14);
          }
        }
      }
    }
  }

  else
  {
    (*(**(v7 + 3472) + 56))(*(v7 + 3472), AppleBCMWLANBusInterfacePCIe::enableCompletionRingGated, *(v7 + 336), *(v7 + 3464), 0, 0);
    v9 = *(this + 9);
    v10 = *(v9 + 328);
    v11 = *(v9 + 3464);
    v12 = *(**(v9 + 3472) + 56);

    return v12();
  }

  return result;
}

uint64_t AppleBCMWLANBusInterfacePCIe::handleRxTimeSync(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(*(result + 72) + 3992) == 3)
  {
    v4 = mach_absolute_time();
    absolutetime_to_nanoseconds();
    return (*(*a3 + 304))(a3, v4);
  }

  return result;
}

uint64_t AppleBCMWLANBusInterfacePCIe::readHostSWTimestamp(AppleBCMWLANBusInterfacePCIe *this, const char *a2)
{
  v2 = mach_absolute_time();
  absolutetime_to_nanoseconds();
  return v2;
}

uint64_t AppleBCMWLANBusInterfacePCIe::handleTxTimeSync(uint64_t result, uint64_t a2, uint64_t a3, int a4)
{
  v5 = *(result + 72);
  if (*(v5 + 3992) != 3)
  {
    return result;
  }

  if (*(v5 + 4421))
  {
    v8 = 1;
    if (!a4)
    {
      goto LABEL_9;
    }

LABEL_7:
    if (v8)
    {
      (*(*a3 + 304))(a3, 0);
    }

    goto LABEL_9;
  }

  v8 = (*(*a3 + 328))(a3);
  if (a4)
  {
    goto LABEL_7;
  }

LABEL_9:
  v9 = *(*a3 + 528);

  return v9(a3, 1);
}

uint64_t AppleBCMWLANBusInterfacePCIe::convertPTMToAbsolute(AppleBCMWLANBusInterfacePCIe *this, unint64_t a2)
{
  if (!(*(*this + 944))(this) || *(*(this + 9) + 4040) > a2 || (result = continuoustime_to_absolutetime()) == 0)
  {
    result = 0;
    ++*(*(this + 9) + 4056);
  }

  *(*(this + 9) + 4048) = result;
  return result;
}

uint64_t AppleBCMWLANBusInterfacePCIe::allocateSkywalkBusResource(OSObject *this)
{
  ivars = this[1].ivars;
  if (*(ivars + 560))
  {
    return 1;
  }

  v3 = *(ivars + 1117);
  v4 = v3;
  if (!v3)
  {
    v5 = *(ivars + 1115);
    if (v5)
    {
      v4 = (v5 + 256);
    }

    else
    {
      v4 = 512;
    }
  }

  v6 = *(ivars + 1114);
  if (v6)
  {
    v7 = v6 + 256;
  }

  else
  {
    v7 = 512;
  }

  v8 = *(ivars + 1116);
  if (v8)
  {
    v9 = 4 * v8;
  }

  else
  {
    v9 = 1024;
  }

  v10 = *(ivars + 1118);
  v11 = 4 * v4 + v7 + 2 * v9;
  v12 = v11 + 256;
  v13 = v11 + 512;
  if (v3)
  {
    v14 = v13;
  }

  else
  {
    v14 = v12;
  }

  if (v10)
  {
    v15 = v10;
  }

  else
  {
    v15 = v14;
  }

  v16 = 2 * v7;
  if (AppleBCMWLANBusInterface::getLogger(this))
  {
    AppleBCMWLANBusInterface::getLogger(this);
    if (CCLogStream::shouldLog())
    {
      Logger = AppleBCMWLANBusInterface::getLogger(this);
      CCLogStream::logAlert(Logger, "[dk] %s@%d:Skywalk resources txLlwQueueSize %d txQueueSize %d rxQueueSize %d skywalkPacketPoolSize %d\n", "allocateSkywalkBusResource", 21095, v16, v4, v9, v15);
    }
  }

  v17 = AppleBCMWLANBusInterface::getLogger(this);
  FaultReporter = AppleBCMWLANBusInterface::getFaultReporter(this);
  *(this[1].ivars + 560) = AppleBCMWLANPCIeSkywalk::withProviderAndCapacity(this, v4, v16, v9, v15, 2048, v17, FaultReporter, v21);
  if (*(this[1].ivars + 560))
  {
    return 1;
  }

  result = AppleBCMWLANBusInterface::getLogger(this);
  if (result)
  {
    AppleBCMWLANBusInterface::getLogger(this);
    result = CCLogStream::shouldLog();
    if (result)
    {
      AppleBCMWLANBusInterfacePCIe::allocateSkywalkBusResource(this);
      return 0;
    }
  }

  return result;
}

uint64_t AppleBCMWLANBusInterfacePCIe::isSystemHibernating(AppleBCMWLANBusInterfacePCIe *this, unsigned int *a2)
{
  v11 = 0xAAAAAAAAAAAAAAAALL;
  v4 = OSString::withCString("com.apple.iokit.pm.sleepdescription");
  if (IOService::StateNotificationItemCopy(*(*(this + 9) + 5216), v4, &v11, 0))
  {
    v5 = 1;
    goto LABEL_20;
  }

  if (!v11)
  {
    goto LABEL_13;
  }

  Object = OSDictionary::getObject(v11, "com.apple.iokit.pm.hibernatestate");
  v7 = OSMetaClassBase::safeMetaCast(Object, gOSDataMetaClass);
  v5 = v7;
  if (!v7)
  {
LABEL_14:
    v8 = 0;
    goto LABEL_15;
  }

  if (!OSData::getBytesNoCopy(v7))
  {
LABEL_13:
    v5 = 0;
    goto LABEL_14;
  }

  v8 = *OSData::getBytesNoCopy(v5);
  if ((v8 & 3) == 0)
  {
    if (AppleBCMWLANBusInterfacePCIe::isSystemHibernating(unsigned int &)::hasHibernateStarted == 1)
    {
      (*(*this + 1152))(this, 3825173288, 0);
      v5 = 0;
      *(*(this + 9) + 4560) = 1;
      AppleBCMWLANBusInterfacePCIe::isSystemHibernating(unsigned int &)::hasHibernateStarted = 0;
    }

    else
    {
      v5 = 0;
    }

    goto LABEL_15;
  }

  *a2 = v8;
  if (v8 == 2)
  {
    (*(*this + 1152))(this, 3825173288, 0);
    AppleBCMWLANBusInterfacePCIe::isSystemHibernating(unsigned int &)::hasHibernateStarted = 0;
    if (AppleBCMWLANBusInterface::getLogger(this))
    {
      AppleBCMWLANBusInterface::getLogger(this);
      v5 = 1;
      if (!CCLogStream::shouldLog())
      {
        v8 = 2;
        goto LABEL_15;
      }

      AppleBCMWLANBusInterfacePCIe::isSystemHibernating(this);
    }

    v8 = 2;
  }

  else if (v8 == 1)
  {
    v5 = 1;
    AppleBCMWLANBusInterfacePCIe::isSystemHibernating(unsigned int &)::hasHibernateStarted = 1;
    if (AppleBCMWLANBusInterface::getLogger(this))
    {
      AppleBCMWLANBusInterface::getLogger(this);
      v5 = 1;
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANBusInterfacePCIe::isSystemHibernating(this);
        v5 = 1;
      }
    }

    v8 = 1;
    goto LABEL_15;
  }

  v5 = 1;
LABEL_15:
  if (AppleBCMWLANBusInterface::getLogger(this))
  {
    AppleBCMWLANBusInterface::getLogger(this);
    if (CCLogStream::shouldLog())
    {
      Logger = AppleBCMWLANBusInterface::getLogger(this);
      CCLogStream::logAlert(Logger, "[dk] %s@%d:BusInterfacePCIe: hibernating[0x%08x], statevalue[0x%08x], state[0x%08x] this[%p]", "isSystemHibernating", 21624, v5, v8, *a2, this);
    }
  }

  if (v11)
  {
    (v11->release)(v11);
    v11 = 0;
  }

LABEL_20:
  if (v4)
  {
    (v4->release)(v4);
  }

  return v5;
}

uint64_t AppleBCMWLANBusInterfacePCIe::updateActiveTxPacketCount(uint64_t this, int a2)
{
  *(*(this + 72) + 1164) += a2;
  if (a2 >= 1)
  {
    *(*(this + 72) + 1168) += a2;
  }

  return this;
}

uint64_t AppleBCMWLANBusInterfacePCIe::getTransmitFlowRing(AppleBCMWLANBusInterfacePCIe *this, unsigned int a2)
{
  v2 = *(this + 9);
  if (*(v2 + 372) > a2 || *(v2 + 376) <= a2)
  {
    return 0;
  }

  if (AppleBCMWLANBusInterface::getLogger(this))
  {
    AppleBCMWLANBusInterface::getLogger(this);
    if (CCLogStream::shouldLog())
    {
      Logger = AppleBCMWLANBusInterface::getLogger(this);
      CCLogStream::logInfo(Logger, "[dk] %s@%d:%s %d id %d ring %p\n", "getTransmitFlowRing", 21821, "AppleBCMWLANPCIeTransmitFlowRing *AppleBCMWLANBusInterfacePCIe::getTransmitFlowRing(FlowID)", 21821, a2, *(*(this + 9) + 8 * a2 + 4816));
    }
  }

  return *(*(this + 9) + 8 * a2 + 4816);
}

BOOL AppleBCMWLANBusInterfacePCIe::waitForDeviceReady(AppleBCMWLANBusInterfacePCIe *this)
{
  v7 = 0xAAAAAAAAAAAAAAAALL;
  readData = -21846;
  clock_interval_to_deadline();
  if (AppleBCMWLANBusInterface::getLogger(this))
  {
    AppleBCMWLANBusInterface::getLogger(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANBusInterfacePCIe::waitForDeviceReady(this);
    }
  }

  while (1)
  {
    IOPCIDevice::ConfigurationRead16(*(*(this + 9) + 3248), 2uLL, &readData);
    v2 = readData - 2;
    if (v2 < 0xFFFD)
    {
      break;
    }

    IOSleep(0xAuLL);
    if (mach_absolute_time() >= v7)
    {
      if (AppleBCMWLANBusInterface::getLogger(this))
      {
        AppleBCMWLANBusInterface::getLogger(this);
        if (CCLogStream::shouldLog())
        {
          Logger = AppleBCMWLANBusInterface::getLogger(this);
          CCLogStream::logAlert(Logger, "[dk] %s@%d:AppleBCMWLANBusInterfacePCIe read config timeout: productID %#x\n");
        }
      }

      return v2 < 0xFFFD;
    }
  }

  if (AppleBCMWLANBusInterface::getLogger(this))
  {
    AppleBCMWLANBusInterface::getLogger(this);
    if (CCLogStream::shouldLog())
    {
      v5 = AppleBCMWLANBusInterface::getLogger(this);
      CCLogStream::logAlert(v5, "[dk] %s@%d:AppleBCMWLANBusInterfacePCIe read config success: productID %#x\n");
    }
  }

  return v2 < 0xFFFD;
}

uint64_t AppleBCMWLANBusInterfacePCIe::init(AppleBCMWLANBusInterfacePCIe *this)
{
  mach_continuous_time();
  absolutetime_to_nanoseconds();
  if ((AppleBCMWLANBusInterface::init(this) & 1) != 0 && AppleBCMWLANBusInterfacePCIe::init(this, v2))
  {
    AppleBCMWLANBusInterface::setBootCheckPointAnchorTime(this, 0, 0);
    v3 = 1;
    AppleBCMWLANBusInterface::sendBootCheckPointToCoreAnalytics(this, 1u, 1u);
    if (AppleBCMWLANBusInterface::getLogger(this))
    {
      AppleBCMWLANBusInterface::getLogger(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANBusInterfacePCIe::init(this);
      }
    }
  }

  else
  {
    IOLog("pcie bus interface init fail\n");
    stringFromBootCheckPoint(1u);
    io80211_os_log();
    return 0;
  }

  return v3;
}

uint64_t AppleBCMWLANBusInterfacePCIe::Start_Impl(AppleBCMWLANBusInterfacePCIe *this, IOService *a2)
{
  if (AppleBCMWLANBusInterface::isAbortInit(this))
  {
    v4 = 3758097084;
    IOLog("AppleBCMWLANBusInterfacePCIe::%s(): Aborting WiFi init by boot-arg. \n");
    return v4;
  }

  AppleBCMWLANBusInterface::sendBootCheckPointToCoreAnalytics(this, 1u, 3u);
  if ((*(*this + 832))(this))
  {
    v4 = 3758097084;
    getClassNameHelper(this);
    IOLog("%s::%s() DriverKit configuration disabled\n");
    return v4;
  }

  property = 0;
  if (IOService::SearchProperty(a2, "built-in", "IOService", 1uLL, &property, 0))
  {
    v5 = 1;
  }

  else
  {
    v5 = property == 0;
  }

  v6 = !v5;
  if (property)
  {
    (property->release)(property);
    property = 0;
  }

  v51 = 0;
  v7 = IOParseBootArgNumber("wifibt-external", &v51, 4);
  v8 = v7 && v51 != 0;
  v9 = "is not";
  if (v8)
  {
    v9 = "is";
  }

  IOLog("%s: wifibt-external %s set\n", "kern_return_t AppleBCMWLANBusInterfacePCIe::Start_Impl(IOService *)", v9);
  if (v8 & v6)
  {
    IOLog("%s: ignoring built-in device because wifibt-external is set\n");
LABEL_23:
    IOService::Stop(this, a2, 0);
    return 3758097088;
  }

  if (((v8 | v6) & 1) == 0)
  {
    IOLog("%s: ignoring external device because wifibt-external is not set\n");
    goto LABEL_23;
  }

  v10 = IOLog("%s: Waiting for AppleOLYHAL to registerService()\n", "kern_return_t AppleBCMWLANBusInterfacePCIe::Start_Impl(IOService *)");
  v11 = AppleOLYHAL::waitForAppleOLYHALDK(v10);
  if (v11)
  {
    v4 = v11;
    IOLog("%s: waitForAppleOLYHALDK failed 0x%08x\n", "kern_return_t AppleBCMWLANBusInterfacePCIe::Start_Impl(IOService *)", v11);
LABEL_20:
    v12 = this;
    v13 = a2;
    v14 = 0;
LABEL_21:
    IOService::Stop(v12, v13, v14);
    return v4;
  }

  v16 = this + 72;
  *(*(this + 9) + 5202) = 1;
  *(*(this + 9) + 3248) = OSMetaClassBase::safeMetaCast(a2, gIOPCIDeviceMetaClass);
  v17 = *(*(this + 9) + 3248);
  if (!v17)
  {
    io80211_os_log();
    goto LABEL_23;
  }

  (*(*v17 + 8))(v17);
  sDevice = *(*(this + 9) + 3248);
  if (IOPCIDevice::Open(sDevice, this, 0))
  {
    if (AppleBCMWLANBusInterface::getLogger(this))
    {
      AppleBCMWLANBusInterface::getLogger(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANBusInterfacePCIe::Start_Impl(this);
      }
    }

    v18 = this;
    v19 = a2;
    v20 = 0;
    v21 = 21981;
LABEL_31:
    AppleBCMWLANBusInterface::reportInitFailure(v18, v19, v20, v21);
    goto LABEL_23;
  }

  v22 = *v16;
  if (IO80211WorkQueue::Create())
  {
    v4 = 3758097084;
LABEL_39:
    io80211_os_log();
LABEL_40:
    v14 = AppleBCMWLANBusInterface::_Dispatch;
    v12 = this;
    v13 = a2;
    goto LABEL_21;
  }

  v23 = (*(**(*(this + 9) + 3464) + 168))(*(*(this + 9) + 3464));
  if (OSObject::SetDispatchQueue(this, "Default", v23, 0))
  {
    v4 = 3758097084;
    goto LABEL_39;
  }

  v24 = (*(**(*(this + 9) + 3464) + 256))(*(*(this + 9) + 3464));
  if (OSObject::SetDispatchQueue(this, "RxDispatchQueue", v24, 0))
  {
    v4 = 3758097084;
    goto LABEL_39;
  }

  v25 = IOService::Start(this, a2, AppleBCMWLANBusInterface::_Dispatch);
  if (v25)
  {
    v4 = v25;
    if (AppleBCMWLANBusInterface::getLogger(this))
    {
      AppleBCMWLANBusInterface::getLogger(this);
      if (CCLogStream::shouldLog())
      {
        Logger = AppleBCMWLANBusInterface::getLogger(this);
        CCLogStream::logAlert(Logger, "[dk] %s@%d:wlan businterface Start_IMPL failed; ret=0x%x\n", "Start_Impl", 22010, v4);
      }
    }

    return v4;
  }

  if (((*(*this + 848))(this, this) & 1) == 0)
  {
    if (AppleBCMWLANBusInterface::getLogger(this))
    {
      AppleBCMWLANBusInterface::getLogger(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANBusInterfacePCIe::Start_Impl(this);
      }
    }

    v4 = 3758097084;
    goto LABEL_40;
  }

  *(*v16 + 3352) = AppleBCMWLANChipConfigSpace::withPCIDevice(*(*v16 + 3248), 0, v27);
  if (!*(*v16 + 3352))
  {
    if (AppleBCMWLANBusInterface::getLogger(this))
    {
      AppleBCMWLANBusInterface::getLogger(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANBusInterfacePCIe::Start_Impl(this);
      }
    }

    goto LABEL_23;
  }

  if (!AppleBCMWLANBusInterfacePCIe::waitForDeviceReady(this))
  {
    if (AppleBCMWLANBusInterface::getLogger(this))
    {
      AppleBCMWLANBusInterface::getLogger(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANBusInterfacePCIe::Start_Impl(this);
      }
    }

    v18 = this;
    v19 = a2;
    v20 = 1;
    v21 = 22032;
    goto LABEL_31;
  }

  AppleBCMWLANBusInterfacePCIe::identifyDevice(this);
  v28 = AppleBCMWLANBusInterfacePCIe::configureDevice(this);
  if (v28)
  {
    v4 = v28;
    if (AppleBCMWLANBusInterface::getLogger(this))
    {
      AppleBCMWLANBusInterface::getLogger(this);
      if (CCLogStream::shouldLog())
      {
        v43 = AppleBCMWLANBusInterface::getLogger(this);
        CCLogStream::logAlert(v43, "[dk] %s@%d:Failed to configure, 0x%08x\n", "Start_Impl", 22047, v4);
      }
    }

    AppleBCMWLANBusInterface::reportInitFailure(this, a2, 1uLL, 22048);
    goto LABEL_20;
  }

  if (*(*v16 + 3332) != 5348)
  {
    if (AppleBCMWLANBusInterface::getLogger(this))
    {
      AppleBCMWLANBusInterface::getLogger(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANBusInterfacePCIe::Start_Impl(this);
      }
    }

    v18 = this;
    v19 = a2;
    v20 = 1;
    v21 = 22056;
    goto LABEL_31;
  }

  v29 = *v16;
  *(v29 + 3312) = chipNumberFromDeviceID(*(v29 + 3334));
  *(*v16 + 3280) = AppleBCMWLANChipManagerPCIe::withChip(*(*v16 + 3312), *(*v16 + 3336));
  v30 = *(*v16 + 3280);
  if (v30)
  {
    *(*v16 + 4488) = AppleBCMWLANChipManagerPCIe::getMailboxIntMaskRegisterOffset(v30);
    *(*v16 + 4492) = AppleBCMWLANChipManagerPCIe::getMailboxIntStatusRegisterOffset(*(*v16 + 3280));
    if ((*(**(*v16 + 3280) + 136))(*(*v16 + 3280)))
    {
      v32 = 640;
    }

    else
    {
      v32 = 384;
    }

    *(*v16 + 4476) = v32;
    *(*v16 + 3360) = AppleBCMWLANChipBackplane::withConfigAndMap(*(*v16 + 3352), 0, *(*v16 + 3280), 0, v31);
    if (*(*v16 + 3360))
    {
      *(*v16 + 3368) = AppleBCMWLANChipMemory::withMap(0, *(*v16 + 3280), 0, v33);
      v34 = *v16;
      if (*(*v16 + 3368))
      {
        property = 0;
        p_property = &property;
        v49 = 0x2000000000;
        v50 = -1431655766;
        v35 = (*(**(v34 + 3464) + 168))(*(v34 + 3464));
        block[0] = _NSConcreteStackBlock;
        block[1] = 1107296256;
        block[2] = ___ZN28AppleBCMWLANBusInterfacePCIe10Start_ImplEP9IOService_block_invoke;
        block[3] = &__block_descriptor_tmp_1182;
        block[4] = &property;
        v46 = 0;
        block[5] = this;
        block[6] = a2;
        IODispatchQueue::DispatchSync(v35, block);
        v36 = *(p_property + 6);
        v37 = AppleBCMWLANBusInterface::getLogger(this);
        if (v36)
        {
          if (v37)
          {
            AppleBCMWLANBusInterface::getLogger(this);
            if (CCLogStream::shouldLog())
            {
              AppleBCMWLANBusInterfacePCIe::Start_Impl(this);
            }
          }

          AppleBCMWLANBusInterface::reportInitFailure(this, a2, 1uLL, 22115);
          IOService::Stop(this, a2, 0);
        }

        else
        {
          if (v37)
          {
            AppleBCMWLANBusInterface::getLogger(this);
            if (CCLogStream::shouldLog())
            {
              AppleBCMWLANBusInterfacePCIe::Start_Impl(this);
            }
          }

          v41 = IOService::CopySystemStateNotificationService(this, (*(this + 9) + 5216), 0);
          if (v41)
          {
            v4 = v41;
            AppleBCMWLANBusInterface::reportInitFailure(this, a2, 1uLL, 22123);
            IOService::Stop(this, a2, 0);
            goto LABEL_99;
          }

          if (AppleBCMWLANBusInterface::getLogger(this))
          {
            AppleBCMWLANBusInterface::getLogger(this);
            if (CCLogStream::shouldLog())
            {
              AppleBCMWLANBusInterfacePCIe::Start_Impl(this);
            }
          }

          *(p_property + 6) = -536870212;
          v42 = (*(**(*(this + 9) + 3464) + 168))(*(*(this + 9) + 3464));
          v44[0] = _NSConcreteStackBlock;
          v44[1] = 1107296256;
          v44[2] = ___ZN28AppleBCMWLANBusInterfacePCIe10Start_ImplEP9IOService_block_invoke_1186;
          v44[3] = &__block_descriptor_tmp_1189;
          v44[4] = &property;
          v44[5] = this;
          IODispatchQueue::DispatchSync(v42, v44);
          if (!*(p_property + 6))
          {
            v4 = 0;
            goto LABEL_99;
          }

          if (AppleBCMWLANBusInterface::getLogger(this))
          {
            AppleBCMWLANBusInterface::getLogger(this);
            if (CCLogStream::shouldLog())
            {
              AppleBCMWLANBusInterfacePCIe::Start_Impl(this);
            }
          }
        }

        v4 = *(p_property + 6);
LABEL_99:
        _Block_object_dispose(&property, 8);
        return v4;
      }

      if (AppleBCMWLANBusInterface::getLogger(this))
      {
        AppleBCMWLANBusInterface::getLogger(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANBusInterfacePCIe::Start_Impl(this);
        }
      }

      v38 = this;
      v39 = a2;
      v40 = 22092;
    }

    else
    {
      if (AppleBCMWLANBusInterface::getLogger(this))
      {
        AppleBCMWLANBusInterface::getLogger(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANBusInterfacePCIe::Start_Impl(this);
        }
      }

      v38 = this;
      v39 = a2;
      v40 = 22084;
    }

    AppleBCMWLANBusInterface::reportInitFailure(v38, v39, 1uLL, v40);
    IOService::Stop(this, a2, 0);
    return 3758097085;
  }

  if (AppleBCMWLANBusInterface::getLogger(this))
  {
    AppleBCMWLANBusInterface::getLogger(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANBusInterfacePCIe::Start_Impl(this);
    }
  }

  AppleBCMWLANBusInterface::reportInitFailure(this, a2, 1uLL, 22065);
  IOService::Stop(this, a2, 0);
  return 3758097126;
}

uint64_t ___ZN28AppleBCMWLANBusInterfacePCIe10Start_ImplEP9IOService_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  *(*(*(a1 + 32) + 8) + 24) = AppleBCMWLANBusInterfacePCIe::readOTP(v2);
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    if (AppleBCMWLANBusInterface::getLogger(v2))
    {
      AppleBCMWLANBusInterface::getLogger(v2);
      if (CCLogStream::shouldLog())
      {
        Logger = AppleBCMWLANBusInterface::getLogger(v2);
        CCLogStream::logAlert(Logger, "[dk] %s@%d:Failed to read OTP, 0x%08x\n", "Start_Impl_block_invoke", 22102, *(a1 + 56));
      }
    }

    AppleBCMWLANBusInterface::reportInitFailure(v2, *(a1 + 48), 1uLL, 22103);
  }

  result = (v2->OSObject::OSMetaClassBase::__vftable[16].retain)(v2, v2, v2->OSObject::OSMetaClassBase::__vftable[2].Dispatch, 0);
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    if (AppleBCMWLANBusInterface::getLogger(v2))
    {
      AppleBCMWLANBusInterface::getLogger(v2);
      if (CCLogStream::shouldLog())
      {
        v6 = AppleBCMWLANBusInterface::getLogger(v2);
        CCLogStream::logAlert(v6, "[dk] %s@%d:Failed to Parse OTP 0x%08x\n", "Start_Impl_block_invoke", 22108, *(a1 + 56));
      }
    }

    v4 = *(a1 + 48);

    return AppleBCMWLANBusInterface::reportInitFailure(v2, v4, 1uLL, 22109);
  }

  return result;
}

uint64_t ___ZN28AppleBCMWLANBusInterfacePCIe10Start_ImplEP9IOService_block_invoke_1186(uint64_t a1)
{
  result = (*(**(a1 + 40) + 856))(*(a1 + 40));
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t AppleBCMWLANBusInterfacePCIe::InterruptOccurredHelper(uint64_t this, unint64_t a2, unint64_t a3)
{
  v3 = this;
  v5 = this + 72;
  v4 = *(this + 72);
  if (*(v4 + 4768) >= a3)
  {
    AppleBCMWLANBusInterfacePCIe::InterruptOccurredHelper(this, this + 72, a3);
  }

  if (a3 != -1)
  {
    *(v4 + 4768) = a3;
    v4 = *v5;
  }

  if (*(v4 + 4809) == 1)
  {
    *(v4 + 4809) = 0;
    v6 = *(**(*v5 + 3488) + 88);

    return v6();
  }

  if (*(v4 + 1306) != 1 || (*(v4 + 4560) & 1) != 0)
  {
    return this;
  }

  *(v4 + 2920) = 0;
  mach_continuous_time();
  v7 = *v5;
  absolutetime_to_nanoseconds();
  v8 = *v5;
  if (**(*v5 + 2832))
  {
    if (AppleBCMWLANBusInterface::getLogger(v3))
    {
      AppleBCMWLANBusInterface::getLogger(v3);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANBusInterfacePCIe::InterruptOccurredHelper(v3, v5);
      }
    }

    if (AppleBCMWLANChipManagerPCIe::isTrapBeforeFLRSupported(*(*v5 + 3280)))
    {
      if (AppleBCMWLANBusInterface::getLogger(v3))
      {
        AppleBCMWLANBusInterface::getLogger(v3);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANBusInterfacePCIe::InterruptOccurredHelper(v3);
        }
      }

      IOPCIDevice::ConfigurationWrite32(*(*v5 + 3248), 0x98uLL, 0);
    }

    v9 = *v5;
    if (*(*v5 + 4529) != 1 || (this = AppleBCMWLANChipManagerPCIe::isTrapBeforeFLRSupported(*(v9 + 3280)), v9 = *v5, !this) || (*(v9 + 3718) & 1) != 0 || (v10 = *(v9 + 2832)) == 0 || (*v10 & 0x80000000) == 0)
    {
      if (*(v9 + 4529) != 1 || (v11 = *(v9 + 3280)) == 0 || (isTrapBeforeFLRSupported = AppleBCMWLANChipManagerPCIe::isTrapBeforeFLRSupported(v11), v9 = *v5, isTrapBeforeFLRSupported) || (*(v9 + 3718) & 1) != 0)
      {
        v13 = *(v9 + 3280);
        if (v13)
        {
          isFatalErrorIndicationSupported = AppleBCMWLANChipManagerPCIe::isFatalErrorIndicationSupported(v13);
          v9 = *v5;
          if (isFatalErrorIndicationSupported)
          {
            if ((*(v9 + 3712) & 1) == 0)
            {
              v15 = *(v9 + 2832);
              if (v15)
              {
                if ((*(v15 + 2) & 0x20) != 0)
                {
                  if (AppleBCMWLANBusInterface::getLogger(v3))
                  {
                    AppleBCMWLANBusInterface::getLogger(v3);
                    if (CCLogStream::shouldLog())
                    {
                      AppleBCMWLANBusInterfacePCIe::InterruptOccurredHelper(v3);
                    }
                  }

                  *(*v5 + 4581) = 1;
                  *(*v5 + 4582) = 1;
                  v9 = *v5;
                }
              }
            }
          }
        }

        v16 = *(v9 + 3280);
        if (v16)
        {
          isCoexCPUTrapSupported = AppleBCMWLANChipManagerPCIe::isCoexCPUTrapSupported(v16);
          v9 = *v5;
          if (isCoexCPUTrapSupported)
          {
            if ((*(v9 + 3713) & 1) == 0)
            {
              v18 = *(v9 + 2832);
              if (v18)
              {
                if ((*(v18 + 2) & 0x40) != 0)
                {
                  if (AppleBCMWLANBusInterface::getLogger(v3))
                  {
                    AppleBCMWLANBusInterface::getLogger(v3);
                    if (CCLogStream::shouldLog())
                    {
                      AppleBCMWLANBusInterfacePCIe::InterruptOccurredHelper(v3);
                    }
                  }

                  *(*v5 + 3715) = 1;
                  v9 = *v5;
                }
              }
            }
          }
        }

        v19 = *(v9 + 3280);
        if (v19)
        {
          if (AppleBCMWLANChipManagerPCIe::isCoexCPUTrapSupported(v19))
          {
            if ((*(*v5 + 3713) & 1) == 0)
            {
              v20 = *(*v5 + 2832);
              if (v20)
              {
                if ((*(v20 + 2) & 0x80) != 0)
                {
                  if (AppleBCMWLANBusInterface::getLogger(v3))
                  {
                    AppleBCMWLANBusInterface::getLogger(v3);
                    if (CCLogStream::shouldLog())
                    {
                      AppleBCMWLANBusInterfacePCIe::InterruptOccurredHelper(v3);
                    }
                  }

                  *(*v5 + 3716) = 1;
                }
              }
            }
          }
        }

        AppleBCMWLANBusInterfacePCIe::handleFWTrap(v3);
        v8 = *(v3 + 9);
        goto LABEL_56;
      }

      this = AppleBCMWLANBusInterface::getLogger(v3);
      if (this)
      {
        AppleBCMWLANBusInterface::getLogger(v3);
        this = CCLogStream::shouldLog();
        if (this)
        {
          this = AppleBCMWLANBusInterfacePCIe::InterruptOccurredHelper(v3);
        }
      }

      v9 = *v5;
    }

    *(v9 + 4529) = 0;
    return this;
  }

LABEL_56:
  v21 = *(v8 + 2904);
  kdebug_trace();
  ++*(*(v3 + 9) + 1256);
  AppleBCMWLANBusInterfacePCIe::updateRxBufFillState(v3);
  if (AppleBCMWLANItemRing::getReadableItemCount(*(*(v3 + 9) + 320)))
  {
    *(*v5 + 4776) = *(*v5 + 4768);
  }

  (*(**(*v5 + 3464) + 160))(*(*v5 + 3464));
  ++*(*v5 + 1284);
  (*(**(*v5 + 320) + 112))(*(*v5 + 320), *v5 + 3860, *v5 + 3864);
  *(*v5 + 3872) = *(*v5 + 1252);
  mach_continuous_time();
  v22 = *v5;
  absolutetime_to_nanoseconds();
  v23 = *(*v5 + 2928);
  v24 = *(*v5 + 1256);
  v25 = *(*v5 + 1284);

  return kdebug_trace();
}

uint64_t OUTLINED_FUNCTION_5_14(AppleBCMWLANBusInterface *a1)
{

  return AppleBCMWLANBusInterface::getLogger(a1);
}

uint64_t OUTLINED_FUNCTION_22_5(const OSString *a1)
{

  return AppleBCMWLANUtil::appendParsedKeyValuePairsToDictionary(v1, a1, 0x200);
}

OSObject *AppleBCMWLANTimeKeeper::withDriver(AppleBCMWLANTimeKeeper *this, AppleBCMWLANCore *a2)
{
  v5 = 0xAAAAAAAAAAAAAAAALL;
  if (OSObjectAllocate(gAppleBCMWLANTimeKeeperMetaClass, &v5))
  {
    return 0;
  }

  v3 = v5;
  if (v5 && ((v5->OSMetaClassBase::__vftable[1].getMetaClass)(v5, this) & 1) == 0)
  {
    (v3->release)(v3);
    return 0;
  }

  return v3;
}

uint64_t AppleBCMWLANTimeKeeper::initWithDriver(OSObject *this, AppleBCMWLANCore *a2)
{
  if (!OSObject::init(this))
  {
    getClassNameHelper(this);
    IOLog("%s:%s(): Super failed to init!\n");
    return 0;
  }

  result = IOMallocZeroTyped();
  *&this[1].refcount = result;
  if (!result)
  {
    return result;
  }

  *(result + 40) = a2;
  *(*&this[1].refcount + 32) = (*(*a2 + 1952))(a2);
  v5 = *(*&this[1].refcount + 32);
  if (!v5)
  {
    getClassNameHelper(this);
    IOLog("%s::%s(): Unable to get debug logger\n");
    return 0;
  }

  (*(*v5 + 8))(v5);
  *(*&this[1].refcount + 24) = AppleBCMWLANCore::getCommander(a2);
  v6 = *&this[1].refcount;
  if (!*(v6 + 24) && *(v6 + 32))
  {
    shouldLog = CCLogStream::shouldLog();
    v6 = *&this[1].refcount;
    if (shouldLog)
    {
      CCLogStream::logAlert(*(v6 + 32), "[dk] %s@%d:Failed to get Commander\n", "initWithDriver", 88);
      v6 = *&this[1].refcount;
    }
  }

  *(v6 + 48) = 0;
  return 1;
}

uint64_t AppleBCMWLANTimeKeeper::handleRteTimesyncIoVarAsyncCallBack(uint64_t result, uint64_t a2, int a3)
{
  if (a3)
  {
    if (a3 == -469794537)
    {
      *(*(result + 48) + 48) = 1;
    }

    else
    {
      v3 = result + 48;
      result = *(*(result + 48) + 32);
      if (result)
      {
        result = CCLogStream::shouldLog();
        if (result)
        {
          return AppleBCMWLANTimeKeeper::handleRteTimesyncIoVarAsyncCallBack(v3);
        }
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANTimeKeeper::synchronizeTime(AppleBCMWLANTimeKeeper *this)
{
  v1 = this + 48;
  if (*(*(this + 6) + 48))
  {
    return 3758097095;
  }

  mach_continuous_time();
  absolutetime_to_nanoseconds();
  v4 = *(*v1 + 8);
  if (v4 && (v4 - 0x2BB0CF87D9C54ALL) > 0xFFFFFFFFEE1E5D00)
  {
    return 0;
  }

  *(*v1 + 16) = 2863;
  v2 = AppleBCMWLANCommander::sendIOVarSet(*(*(this + 6) + 24), "rte_timesync");
  if (v2)
  {
    if (*(*v1 + 32) && CCLogStream::shouldLog())
    {
      AppleBCMWLANTimeKeeper::synchronizeTime(v1);
    }
  }

  else
  {
    **v1 = 0x2BB0CF87D9C54ALL;
    *(*v1 + 8) = 0x2BB0CF87D9C54ALL;
  }

  return v2;
}

void AppleBCMWLANTimeKeeper::free(OSObject *this)
{
  p_refcount = &this[1].refcount;
  v2 = *&this[1].refcount;
  if (v2)
  {
    v4 = v2[4];
    if (!v4 || ((*(*v4 + 16))(v2[4]), *(*p_refcount + 4) = 0, (v2 = *p_refcount) != 0))
    {
      memset_s(v2, 0x38uLL, 0, 0x38uLL);
      if (*p_refcount)
      {
        IOFree(*p_refcount, 0x38uLL);
        *p_refcount = 0;
      }
    }

    OSObject::free(this);
  }

  else
  {
    AppleBCMWLANTimeKeeper::free(p_refcount);
  }
}

uint64_t *OUTLINED_FUNCTION_0_26(uint64_t a1)
{
  v2 = *(*a1 + 32);
  result = *(*a1 + 40);
  v3 = *result;
  return result;
}

uint64_t AppleBCMWLANHashtable::alignNextPow2(AppleBCMWLANHashtable *this)
{
  v1 = (this - 1) | ((this - 1) >> 1) | (((this - 1) | ((this - 1) >> 1)) >> 2);
  v2 = v1 | (v1 >> 4) | ((v1 | (v1 >> 4)) >> 8);
  return (v2 | HIWORD(v2)) + 1;
}

OSObject *AppleBCMWLANHashtable::withCapacity(AppleBCMWLANHashtable *this)
{
  v4 = 0xAAAAAAAAAAAAAAAALL;
  if (OSObjectAllocate(gAppleBCMWLANHashtableMetaClass, &v4))
  {
    return 0;
  }

  v2 = v4;
  if (v4 && ((v4->OSMetaClassBase::__vftable[1].free)(v4, this) & 1) == 0)
  {
    (v2->release)(v2);
    return 0;
  }

  return v2;
}

BOOL AppleBCMWLANHashtable::initWithCapacity(OSObject *this, __int32 a2)
{
  v4 = IOMallocZeroTyped();
  this[1].ivars = v4;
  if (!v4)
  {
    IOLog("hash table ivars alloc fail\n");
    return 0;
  }

  v5 = OSObject::init(this);
  result = 0;
  if (v5)
  {
    v6.i32[0] = a2;
    v8 = vcnt_s8(v6);
    v8.i16[0] = vaddlv_u8(v8);
    if (v8.i32[0] <= 1u)
    {
      *this[1].ivars = a2;
      if ((*this[1].ivars & 0x8000000000000000) == 0)
      {
        *(this[1].ivars + 1) = IOMallocZeroTyped();
        return *(this[1].ivars + 1) != 0;
      }

      return 0;
    }
  }

  return result;
}

void AppleBCMWLANHashtable::free(OSObject *this)
{
  ivars = this[1].ivars;
  if (ivars)
  {
    if (*(ivars + 1))
    {
      (this->OSMetaClassBase::__vftable[1].Dispatch)(this);
      v3 = this[1].ivars;
      v4 = *(v3 + 1);
      if (v4)
      {
        v5 = *v3;
        if ((v5 & 0x8000000000000000) == 0)
        {
          IOFree(v4, 8 * v5);
          v3 = this[1].ivars;
        }

        *(v3 + 1) = 0;
        v3 = this[1].ivars;
      }

      *(v3 + 1) = 0;
      ivars = this[1].ivars;
    }

    *ivars = 0;
    *(ivars + 1) = 0;
    *(ivars + 2) = 0;
    v6 = this[1].ivars;
    if (v6)
    {
      IOFree(v6, 0x18uLL);
      this[1].ivars = 0;
    }
  }

  OSObject::free(this);
}

void *AppleBCMWLANHashtable::flushCollection(void *this)
{
  v1 = this[9];
  v2 = *v1;
  if (v2 >= 1)
  {
    v3 = this;
    v4 = 0;
    do
    {
      this = *(*(v1 + 1) + 8 * v4);
      if (this)
      {
        this = (*(*this + 16))(this);
        *(*(v3[9] + 8) + 8 * v4) = 0;
        v1 = v3[9];
        LOWORD(v2) = *v1;
      }

      ++v4;
    }

    while (v4 < v2);
  }

  v1[1] = 0;
  return this;
}

uint64_t AppleBCMWLANHashtable::iterateObjects(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 72);
  v3 = *v2;
  v4 = v3 - 1;
  if (v3 < 1)
  {
    return 0;
  }

  LOWORD(v5) = 0;
  v6 = v2[8];
  v7 = *(v2 + 1);
  while (!*(v7 + 8 * ((v6 + v5) & v4)))
  {
    v5 = (v5 + 1);
    if (v5 >= v3)
    {
      return 0;
    }
  }

  return (*(a2 + 16))(a2, *(v7 + 8 * ((v6 + v5) & v4)));
}

uint64_t AppleBCMWLANHashtable::add(AppleBCMWLANHashtable *this, OSObject *a2, unsigned __int16 *a3)
{
  result = 3758097115;
  *a3 = -1;
  v5 = *(this + 9);
  v6 = *v5;
  if (v6 >= 1)
  {
    LOWORD(v9) = 0;
    v10 = v5[8];
    v11 = *(v5 + 1);
    while (1)
    {
      v12 = (v10 + v9) & (v6 - 1);
      if (!*(v11 + 8 * v12))
      {
        break;
      }

      v9 = (v9 + 1);
      if (v9 >= v6)
      {
        return result;
      }
    }

    (a2->retain)(a2);
    result = 0;
    *(*(*(this + 9) + 8) + 8 * v12) = a2;
    *a3 = v12;
    ++*(*(this + 9) + 2);
    *(*(this + 9) + 16) = (**(this + 9) + 0x7FFF) & (v12 + 1);
  }

  return result;
}

uint64_t AppleBCMWLANHashtable::remove(AppleBCMWLANHashtable *this, int a2)
{
  v2 = 0;
  if ((a2 & 0x80000000) == 0)
  {
    v5 = *(this + 9);
    if (*v5 >= a2)
    {
      v2 = *(*(v5 + 1) + 8 * a2);
      if (v2)
      {
        --v5[1];
        v6 = *(*(*(this + 9) + 8) + 8 * a2);
        if (v6)
        {
          (*(*v6 + 16))(v6);
          *(*(*(this + 9) + 8) + 8 * a2) = 0;
        }
      }
    }
  }

  return v2;
}

void *AppleBCMWLANHashtable::flush(void *this, OSObject *a2, void (*a3)(OSObject *, __int16, OSObject *, void *), void *a4)
{
  v4 = this[9];
  v5 = *v4;
  if (v5 >= 1)
  {
    v9 = this;
    LOWORD(v10) = 0;
    do
    {
      v11 = ((v4[8] + v10) & (v5 - 1));
      v12 = *(*(v4 + 1) + 8 * v11);
      if (v12)
      {
        a3(a2, (v4[8] + v10) & (v5 - 1), v12, a4);
        v13 = v9[9];
        this = *(*(v13 + 8) + 8 * v11);
        if (this)
        {
          this = (*(*this + 16))(this);
          *(*(v9[9] + 8) + 8 * v11) = 0;
          v13 = v9[9];
        }

        --*(v13 + 2);
        v4 = v9[9];
        LOWORD(v5) = *v4;
      }

      v10 = (v10 + 1);
    }

    while (v10 < v5);
  }

  return this;
}

OSObject *AppleBCMWLANPowerManager::withDriver(AppleBCMWLANPowerManager *this, AppleBCMWLANCore *a2)
{
  v5 = 0xAAAAAAAAAAAAAAAALL;
  if (OSObjectAllocate(gAppleBCMWLANPowerManagerMetaClass, &v5))
  {
    return 0;
  }

  v3 = v5;
  if (v5 && ((v5->OSMetaClassBase::__vftable[1].getMetaClass)(v5, this) & 1) == 0)
  {
    (v3->release)(v3);
    return 0;
  }

  return v3;
}

uint64_t AppleBCMWLANPowerManager::initWithDriver(OSObject *this, AppleBCMWLANCore *a2)
{
  v4 = OSObject::init(this);
  result = 0;
  if (a2)
  {
    if (v4)
    {
      result = IOMallocZeroTyped();
      *&this[1].refcount = result;
      p_refcount = &this[1].refcount;
      if (result)
      {
        *result = a2;
        (*p_refcount)[3] = (*(*a2 + 1952))(a2);
        v7 = (*p_refcount)[3];
        if (v7)
        {
          (*(*v7 + 8))(v7);
          (*p_refcount)[2] = AppleBCMWLANCore::getConfigManager(a2);
          v8 = (*p_refcount)[2];
          if (v8)
          {
            (*(*v8 + 8))(v8);
            (*p_refcount)[1] = AppleBCMWLANCore::getCommander(a2);
            v9 = (*p_refcount)[1];
            if (v9)
            {
              (*(*v9 + 8))(v9);
              (*p_refcount)[6] = AppleBCMWLANCore::getFaultReporter(**p_refcount);
              (*(*(*p_refcount)[6] + 8))((*p_refcount)[6]);
              result = 1;
              *(*p_refcount + 9) = 1;
              *(*p_refcount + 10) = 0;
              *(*p_refcount + 68) = 0;
              (*p_refcount)[9] = 0;
              (*p_refcount)[10] = 0;
              *(*p_refcount + 24) = 0;
              *(*p_refcount + 26) = 0;
              *(*p_refcount + 25) = 0;
              (*p_refcount)[11] = 0;
              *(*p_refcount + 154) = 0;
              *(*p_refcount + 34) = 10;
              v10 = *p_refcount;
              *(v10 + 164) = 0;
              *(v10 + 156) = 0;
              *(*p_refcount + 180) = 0;
              *(*p_refcount + 69) = 0;
              return result;
            }

            AppleBCMWLANPowerManager::initWithDriver(*p_refcount, &this[1].refcount);
          }

          else
          {
            AppleBCMWLANPowerManager::initWithDriver(*p_refcount, &this[1].refcount);
          }
        }

        else
        {
          ClassNameHelper = getClassNameHelper(this);
          IOLog("%s::%s(): Unable to get debug logger\n", ClassNameHelper, "initWithDriver");
        }

        AppleBCMWLANPowerManager::freeResources(this);
        result = *&this[1].refcount;
        if (result)
        {
          memset_s(result, 0xB8uLL, 0, 0xB8uLL);
          result = *p_refcount;
          if (*p_refcount)
          {
            IOFree(result, 0xB8uLL);
            result = 0;
            *p_refcount = 0;
          }
        }
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANPowerManager::freeResources(AppleBCMWLANPowerManager *this)
{
  v2 = this + 48;
  v1 = *(this + 6);
  if (!v1)
  {
    return AppleBCMWLANPowerManager::freeResources(this + 48);
  }

  if (*(v1 + 24))
  {
    shouldLog = CCLogStream::shouldLog();
    v1 = *v2;
    if (shouldLog)
    {
      CCLogStream::logNoticeIf(*(v1 + 24), 0x20uLL, "[dk] %s@%d:MIMO_PS: Enter %s \n", "freeResources", 200, "freeResources");
      v1 = *v2;
    }
  }

  v4 = *(v1 + 8);
  if (v4)
  {
    (*(*v4 + 16))(v4);
    *(*v2 + 8) = 0;
    v1 = *v2;
  }

  v5 = *(v1 + 24);
  if (v5)
  {
    (*(*v5 + 16))(v5);
    *(*v2 + 24) = 0;
    v1 = *v2;
  }

  v6 = *(v1 + 16);
  if (v6)
  {
    (*(*v6 + 16))(v6);
    *(*v2 + 16) = 0;
    v1 = *v2;
  }

  v7 = *(v1 + 48);
  if (v7)
  {
    (*(*v7 + 16))(v7);
    *(*v2 + 48) = 0;
    v1 = *v2;
  }

  result = *(v1 + 24);
  if (result)
  {
    result = CCLogStream::shouldLog();
    if (result)
    {
      return AppleBCMWLANPowerManager::freeResources(v2);
    }
  }

  return result;
}

void AppleBCMWLANPowerManager::free(AppleBCMWLANPowerManager *this)
{
  AppleBCMWLANPowerManager::freeResources(this);
  v2 = *(this + 6);
  if (v2)
  {
    memset_s(v2, 0xB8uLL, 0, 0xB8uLL);
    v3 = *(this + 6);
    if (v3)
    {
      IOFree(v3, 0xB8uLL);
      *(this + 6) = 0;
    }
  }

  OSObject::free(this);
}

uint64_t AppleBCMWLANPowerManager::quiesce(AppleBCMWLANPowerManager *this)
{
  v2 = (this + 48);
  v1 = *(this + 6);
  if (*(v1 + 24))
  {
    shouldLog = CCLogStream::shouldLog();
    v1 = *v2;
    if (shouldLog)
    {
      CCLogStream::logNoticeIf(*(v1 + 24), 0x20uLL, "[dk] %s@%d:MIMO_PS: Enter %s \n", "quiesce", 228, "quiesce");
      v1 = *v2;
    }
  }

  result = *(v1 + 24);
  if (result)
  {
    result = CCLogStream::shouldLog();
    if (result)
    {
      return AppleBCMWLANPowerManager::quiesce(v2);
    }
  }

  return result;
}

uint64_t AppleBCMWLANPowerManager::configureMIMOPowerSaveConfiguration(AppleBCMWLANPowerManager *this)
{
  v3 = (this + 48);
  v2 = *(this + 6);
  if (v2[3])
  {
    shouldLog = CCLogStream::shouldLog();
    v2 = *v3;
    if (shouldLog)
    {
      CCLogStream::logNoticeIf(v2[3], 0x20uLL, "[dk] %s@%d:MIMO_PS: Enter %s \n", "configureMIMOPowerSaveConfiguration", 237, "configureMIMOPowerSaveConfiguration");
      v2 = *v3;
    }
  }

  if (!AppleBCMWLANCore::isMIMOPowerSaveEnabled(*v2))
  {
    return 0;
  }

  if ((AppleBCMWLANCore::isAssociated(**v3) & 1) == 0)
  {
    AppleBCMWLANPowerManager::configureSISOPowerSavePolicy(this);
  }

  if (AppleBCMWLANPowerManager::configureScanPowerPolicy(this) && (*v3)[3] && CCLogStream::shouldLog())
  {
    AppleBCMWLANPowerManager::configureMIMOPowerSaveConfiguration(v3);
  }

  v5 = AppleBCMWLANPowerManager::configureMRCThreshold(this, -70);
  if (*(*(this + 6) + 24) && CCLogStream::shouldLog())
  {
    AppleBCMWLANPowerManager::configureMIMOPowerSaveConfiguration(v3);
  }

  return v5;
}

uint64_t AppleBCMWLANPowerManager::configureSISOPowerSavePolicy(AppleBCMWLANPowerManager *this)
{
  v3 = (this + 48);
  v2 = *(this + 6);
  if (v2[3])
  {
    shouldLog = CCLogStream::shouldLog();
    v2 = *v3;
    if (shouldLog)
    {
      CCLogStream::logNoticeIf(v2[3], 0x20uLL, "[dk] %s@%d:MIMO_PS: Enter %s \n", "configureSISOPowerSavePolicy", 372, "configureSISOPowerSavePolicy");
      v2 = *v3;
    }
  }

  if (!AppleBCMWLANCore::isMIMOPowerSaveEnabled(*v2))
  {
    return 0;
  }

  v5 = AppleBCMWLANPowerManager::configureMIMOPowerSaveParams(this, 1);
  if (v5 && (*v3)[3] && CCLogStream::shouldLog())
  {
    AppleBCMWLANPowerManager::configureSISOPowerSavePolicy(v3);
  }

  AppleBCMWLANPowerManager::getMIMOPowerSaveStatus(this);
  if (*(*(this + 6) + 24) && CCLogStream::shouldLog())
  {
    AppleBCMWLANPowerManager::configureSISOPowerSavePolicy(v3);
  }

  return v5;
}

uint64_t AppleBCMWLANPowerManager::configureScanPowerPolicy(AppleBCMWLANPowerManager *this)
{
  v3 = (this + 48);
  v2 = *(this + 6);
  if (v2[3])
  {
    shouldLog = CCLogStream::shouldLog();
    v2 = *v3;
    if (shouldLog)
    {
      CCLogStream::logNoticeIf(v2[3], 0x20uLL, "[dk] %s@%d:MIMO_PS: Enter %s \n", "configureScanPowerPolicy", 337, "configureScanPowerPolicy");
      v2 = *v3;
    }
  }

  if (!AppleBCMWLANCore::isMIMOPowerSaveEnabled(*v2))
  {
    return 0;
  }

  v14 = 1;
  v13[0] = &v14;
  v13[1] = 4;
  v5 = (*(***v3 + 88))(**v3);
  if ((*(*v5 + 136))(v5))
  {
    v12 = this;
    v6 = AppleBCMWLANCommander::sendIOVarSet(*(*(this + 6) + 8), "scan_ps");
  }

  else
  {
    v6 = AppleBCMWLANCommander::runIOVarSet((*v3)[1], "scan_ps", v13, 0, 0);
  }

  v7 = v6;
  v8 = *v3;
  if (v7)
  {
    if (*(v8 + 24))
    {
      v9 = *(v8 + 24);
      v10 = CCLogStream::shouldLog();
      v8 = *v3;
      if (v10)
      {
        AppleBCMWLANPowerManager::configureScanPowerPolicy(v8);
        v8 = v12;
      }
    }
  }

  if (*(v8 + 24) && CCLogStream::shouldLog())
  {
    AppleBCMWLANPowerManager::configureScanPowerPolicy(v3);
  }

  return v7;
}

uint64_t AppleBCMWLANPowerManager::configureMRCThreshold(AppleBCMWLANPowerManager *this, int a2)
{
  v12 = a2;
  v4 = (this + 48);
  v3 = *(this + 6);
  if (v3[3])
  {
    shouldLog = CCLogStream::shouldLog();
    v3 = *v4;
    if (shouldLog)
    {
      CCLogStream::logNoticeIf(v3[3], 0x20uLL, "[dk] %s@%d:MIMO_PS: Enter %s \n", "configureMRCThreshold", 302, "configureMRCThreshold");
      v3 = *v4;
    }
  }

  if (!AppleBCMWLANCore::isMIMOPowerSaveEnabled(*v3))
  {
    return 0;
  }

  v11[0] = &v12;
  v11[1] = 4;
  v6 = (*(***v4 + 88))(**v4);
  if ((*(*v6 + 136))(v6))
  {
    v7 = AppleBCMWLANCommander::sendIOVarSet(*(*(this + 6) + 8), "mrc_rssi_threshold");
  }

  else
  {
    v7 = AppleBCMWLANCommander::runIOVarSet((*v4)[1], "mrc_rssi_threshold", v11, 0, 0);
  }

  v8 = v7;
  v9 = (*v4)[3];
  if (v8)
  {
    if (v9 && CCLogStream::shouldLog())
    {
      AppleBCMWLANPowerManager::configureMRCThreshold(v4);
    }
  }

  else if (v9 && CCLogStream::shouldLog())
  {
    CCLogStream::logAlert((*v4)[3], "[dk] %s@%d:MRC Threshold for Diversity = %d dB\n", "configureMRCThreshold", 326, v12);
  }

  if ((*v4)[3] && CCLogStream::shouldLog())
  {
    AppleBCMWLANPowerManager::configureMRCThreshold(v4);
  }

  return v8;
}

uint64_t AppleBCMWLANPowerManager::configureBeaconBasedRadioChainSwitch(AppleBCMWLANPowerManager *this)
{
  v3 = (this + 48);
  v2 = *(this + 6);
  if (v2[3])
  {
    shouldLog = CCLogStream::shouldLog();
    v2 = *v3;
    if (shouldLog)
    {
      CCLogStream::logNoticeIf(v2[3], 0x20uLL, "[dk] %s@%d:MIMO_PS: Enter %s \n", "configureBeaconBasedRadioChainSwitch", 270, "configureBeaconBasedRadioChainSwitch");
      v2 = *v3;
    }
  }

  v14 = 1;
  if (!AppleBCMWLANCore::isMIMOPowerSaveEnabled(*v2))
  {
    return 0;
  }

  v13[0] = &v14;
  v13[1] = 4;
  v5 = (*(***v3 + 88))(**v3);
  if ((*(*v5 + 136))(v5))
  {
    v12 = this;
    v6 = AppleBCMWLANCommander::sendIOVarSet(*(*(this + 6) + 8), "pm_bcnrx");
  }

  else
  {
    v6 = AppleBCMWLANCommander::runIOVarSet((*v3)[1], "pm_bcnrx", v13, 0, 0);
  }

  v7 = v6;
  v8 = *v3;
  if (v7)
  {
    if (*(v8 + 24))
    {
      v9 = *(v8 + 24);
      v10 = CCLogStream::shouldLog();
      v8 = *v3;
      if (v10)
      {
        AppleBCMWLANPowerManager::configureBeaconBasedRadioChainSwitch(v8);
        v8 = v12;
      }
    }
  }

  if (*(v8 + 24) && CCLogStream::shouldLog())
  {
    AppleBCMWLANPowerManager::configureBeaconBasedRadioChainSwitch(v3);
  }

  return v7;
}

uint64_t AppleBCMWLANPowerManager::handleConfigureBcnBasedRadioChainSwitchAsyncCallback(uint64_t a1, uint64_t a2, int a3)
{
  v4 = (a1 + 48);
  if (*(*(a1 + 48) + 24) && CCLogStream::shouldLog())
  {
    AppleBCMWLANPowerManager::handleConfigureBcnBasedRadioChainSwitchAsyncCallback(v4);
  }

  result = (*v4)[3];
  if (a3)
  {
    if (result)
    {
      result = CCLogStream::shouldLog();
      if (result)
      {
        return AppleBCMWLANPowerManager::handleConfigureBcnBasedRadioChainSwitchAsyncCallback(v4);
      }
    }
  }

  else if (result)
  {
    result = CCLogStream::shouldLog();
    if (result)
    {
      return AppleBCMWLANPowerManager::handleConfigureBcnBasedRadioChainSwitchAsyncCallback(v4);
    }
  }

  return result;
}

uint64_t AppleBCMWLANPowerManager::handleMRCThresholdConfigurationAsyncCallback(uint64_t a1, uint64_t a2, int a3)
{
  v4 = (a1 + 48);
  if (*(*(a1 + 48) + 24) && CCLogStream::shouldLog())
  {
    AppleBCMWLANPowerManager::handleMRCThresholdConfigurationAsyncCallback(v4);
  }

  result = (*v4)[3];
  if (a3)
  {
    if (result)
    {
      result = CCLogStream::shouldLog();
      if (result)
      {
        return AppleBCMWLANPowerManager::handleMRCThresholdConfigurationAsyncCallback(v4);
      }
    }
  }

  else if (result)
  {
    result = CCLogStream::shouldLog();
    if (result)
    {
      return AppleBCMWLANPowerManager::handleMRCThresholdConfigurationAsyncCallback(v4);
    }
  }

  return result;
}

uint64_t AppleBCMWLANPowerManager::handleScanPowerPolicyConfigurationAsyncCallback(uint64_t a1, uint64_t a2, int a3)
{
  v4 = (a1 + 48);
  if (*(*(a1 + 48) + 24) && CCLogStream::shouldLog())
  {
    AppleBCMWLANPowerManager::handleScanPowerPolicyConfigurationAsyncCallback(v4);
  }

  result = (*v4)[3];
  if (a3)
  {
    if (result)
    {
      result = CCLogStream::shouldLog();
      if (result)
      {
        return AppleBCMWLANPowerManager::handleScanPowerPolicyConfigurationAsyncCallback(v4);
      }
    }
  }

  else if (result)
  {
    result = CCLogStream::shouldLog();
    if (result)
    {
      return AppleBCMWLANPowerManager::handleScanPowerPolicyConfigurationAsyncCallback(v4);
    }
  }

  return result;
}

uint64_t AppleBCMWLANPowerManager::configureMIMOPowerSaveParams(AppleBCMWLANPowerManager *this, int a2)
{
  v5 = (this + 48);
  v4 = *(this + 6);
  if (v4[3])
  {
    shouldLog = CCLogStream::shouldLog();
    v4 = *v5;
    if (shouldLog)
    {
      CCLogStream::logNoticeIf(v4[3], 0x20uLL, "[dk] %s@%d:MIMO_PS: Enter %s \n", "configureMIMOPowerSaveParams", 498, "configureMIMOPowerSaveParams");
      v4 = *v5;
    }
  }

  v18 = 1;
  if (!AppleBCMWLANCore::isMIMOPowerSaveEnabled(*v4))
  {
    return 0;
  }

  isAssociated = AppleBCMWLANCore::isAssociated(**v5);
  v8 = *v5;
  if (isAssociated)
  {
    if (v8[3] && CCLogStream::shouldLog())
    {
      AppleBCMWLANPowerManager::configureMIMOPowerSaveParams(v5);
    }

    return 0;
  }

  *(v8 + 11) = a2;
  v11 = 1;
  if (a2 == 1)
  {
    goto LABEL_14;
  }

  if (a2 == 2)
  {
    v11 = 3;
LABEL_14:
    BYTE1(v18) = v11;
    WORD1(v18) = 3;
    BYTE4(v18) = 1;
  }

  v17[0] = &v18;
  v17[1] = 8;
  v12 = (*(***v5 + 88))(**v5);
  if ((*(*v12 + 136))(v12))
  {
    v13 = AppleBCMWLANCommander::sendIOVarSet(*(*(this + 6) + 8), "mimo_ps_cfg");
  }

  else
  {
    v13 = AppleBCMWLANCommander::runIOVarSet((*v5)[1], "mimo_ps_cfg", v17, 0, 0);
  }

  v9 = v13;
  v14 = *v5;
  if (!v13)
  {
    if (v14[3])
    {
      v15 = CCLogStream::shouldLog();
      v14 = *v5;
      if (v15)
      {
        if (a2 == 1)
        {
          v16 = "SISO";
        }

        else
        {
          v16 = "MIMO";
        }

        CCLogStream::logAlert(v14[3], "[dk] %s@%d:Configured %s Power Policy\n", "configureMIMOPowerSaveParams", 547, v16);
        v14 = *v5;
      }
    }
  }

  if (v14[3] && CCLogStream::shouldLog())
  {
    AppleBCMWLANPowerManager::configureMIMOPowerSaveParams(v5);
  }

  return v9;
}

uint64_t AppleBCMWLANPowerManager::getMIMOPowerSaveStatus(AppleBCMWLANPowerManager *this)
{
  v37 = 2uLL;
  v3 = this + 48;
  v2 = *(this + 6);
  v36[0] = &v37;
  v36[1] = 0x1000100010;
  v4 = (*(**v2 + 88))();
  if ((*(*v4 + 136))(v4))
  {
    v35[0] = this;
    v35[1] = AppleBCMWLANPowerManager::handleGetMIMOPowerSaveStatusAsyncCallback;
    v35[2] = 0;
    v5 = *(*(this + 6) + 8);
    *buf = &v37;
    *v39 = 16;
    v34 = 1048592;
    v6 = AppleBCMWLANCommander::sendIOVarGet(v5, "mimo_ps_status", buf, &v34, v35, 0);
    if (v6)
    {
      v7 = v6;
      if ((!*(*v3 + 24) || (CCLogStream::shouldLogConsole() & 1) == 0) && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109890;
        *&buf[4] = 65;
        *v39 = 2080;
        *&v39[2] = "getMIMOPowerSaveStatus";
        v40 = 1024;
        v41 = 991;
        v42 = 1024;
        LODWORD(v43) = v7;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%c [dk] %s@%d:  Failed GET IOCTL, cret[0x%08x]\n", buf, 0x1Eu);
      }

      if (*(*v3 + 24) && CCLogStream::shouldLog())
      {
        CCLogStream::logAlert(*(*v3 + 24), "[dk] %s@%d: Failed GET IOCTL, cret[0x%08x]\n", "getMIMOPowerSaveStatus", 991, v7);
      }
    }

    return 0;
  }

  v9 = *(*v3 + 8);
  *buf = &v37;
  *v39 = 16;
  v10 = AppleBCMWLANCommander::runIOVarGet(v9, "mimo_ps_status", buf, v36, 0);
  if (!v10)
  {
    v11 = BYTE1(v37);
    v12 = BYTE1(v37) >> 4;
    v13 = BYTE1(v37) & 0xF;
    if (*(*v3 + 24) && (CCLogStream::shouldLogConsole() & 1) != 0 || !os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_75;
    }

    if (v11 >= 0x10)
    {
      if (v12 == 1)
      {
        v14 = "20Mhz";
      }

      else if (v12 == 2)
      {
        v14 = "40Mhz";
      }

      else
      {
        v14 = "NONE";
        if (v12 == 3)
        {
          v14 = "80Mhz";
        }
      }
    }

    else
    {
      v14 = "20/40/80Mhz";
    }

    if (v13 >= 3)
    {
      v15 = "Invalid AP cap/association status";
      if (v13 == 3)
      {
        v15 = "LEGACY";
      }
    }

    else
    {
      v15 = off_1003D1CE8[v13];
    }

    if (BYTE2(v37) >= 3u)
    {
      v16 = "Invalid AP cap/association status";
      if (BYTE2(v37) == 3)
      {
        v16 = "LEGACY ASSOCIATION";
      }
    }

    else
    {
      v16 = off_1003D1D00[BYTE2(v37)];
    }

    if (BYTE3(v37) >= 5u)
    {
      v17 = "NONE";
      if (BYTE3(v37) == 5)
      {
        v17 = "INFORM AP PENDING";
      }
    }

    else
    {
      v17 = off_1003D1D18[BYTE3(v37)];
    }

    if (BYTE4(v37) == 1)
    {
      v18 = "ACTIVE";
    }

    else
    {
      v18 = "NOT ACTIVE";
    }

    if (BYTE7(v37) >= 3u)
    {
      v19 = "NONE";
      if (BYTE7(v37) == 3)
      {
        v19 = "80Mhz";
      }
    }

    else
    {
      v19 = off_1003D1D40[BYTE7(v37)];
    }

    v20 = "NONE";
    if (WORD4(v37) <= 7u)
    {
      if (WORD4(v37) <= 1u)
      {
        v21 = "NONE";
        if (WORD4(v37))
        {
          v21 = "LTE CO-EX";
        }

        goto LABEL_70;
      }

      if (WORD4(v37) == 2)
      {
        v21 = "MIMOPS BSS";
        goto LABEL_70;
      }

      if (WORD4(v37) == 4)
      {
        v21 = "AWDL BSS";
        goto LABEL_70;
      }
    }

    else if (WORD4(v37) <= 0x1Fu)
    {
      if (WORD4(v37) == 8)
      {
        v21 = "SCAN";
        goto LABEL_70;
      }

      if (WORD4(v37) == 16)
      {
        v21 = "TXPRR";
        goto LABEL_70;
      }
    }

    else
    {
      switch(WORD4(v37))
      {
        case 0x20u:
          v21 = "PWR THROTTLE";
          goto LABEL_70;
        case 0x40u:
          v21 = "TEMP SENSE";
          goto LABEL_70;
        case 0x80u:
          v21 = "IOVAR";
LABEL_70:
          if (BYTE12(v37) >= 3u)
          {
            if (BYTE12(v37) == 3)
            {
              v20 = "80Mhz";
            }
          }

          else
          {
            v20 = off_1003D1D40[BYTE12(v37)];
          }

          *buf = 67113474;
          *&buf[4] = 78;
          *v39 = 2080;
          *&v39[2] = "getMIMOPowerSaveStatus";
          v40 = 1024;
          v41 = 1007;
          v42 = 2080;
          v43 = v14;
          v44 = 2080;
          v45 = v15;
          v46 = 2080;
          v47 = v16;
          v48 = 2080;
          v49 = v17;
          v50 = 2080;
          v51 = v18;
          v52 = 1024;
          v53 = BYTE5(v37);
          v54 = 1024;
          v55 = BYTE6(v37);
          v56 = 2080;
          v57 = v19;
          v58 = 2080;
          v59 = v21;
          v60 = 1024;
          v61 = BYTE10(v37);
          v62 = 1024;
          v63 = BYTE11(v37);
          v64 = 2080;
          v65 = v20;
          v66 = 1024;
          v67 = BYTE13(v37);
          v68 = 1024;
          v69 = BYTE14(v37);
          v70 = 1024;
          v71 = HIBYTE(v37);
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%c [dk] %s@%d: MIMO POWER SAVE STATUS:AP BW = %s, AP CAPABILITY = %s, Assoc State = %s, MIMO PS State = %s, MRC State = %s, BSS RxChain = %d, BSS TxChain = %d, BSS Bandwidth = %s, HW State = %s, HW Rx Chain = %d, HW Tx Chain = %d, HW Bandwidth = %s, BCNRX State = %d, Basic Rates Present = %d, BCMC RX State = %d\n", buf, 0x92u);
LABEL_75:
          v22 = *v3;
          if (!*(*v3 + 24) || (shouldLog = CCLogStream::shouldLog(), v22 = *v3, !shouldLog))
          {
LABEL_77:
            v8 = 0;
            *(v22 + 156) = v37;
            return v8;
          }

          if (v11 >= 0x10)
          {
            if (v12 == 1)
            {
              v25 = "20Mhz";
            }

            else if (v12 == 2)
            {
              v25 = "40Mhz";
            }

            else
            {
              v25 = "NONE";
              if (v12 == 3)
              {
                v25 = "80Mhz";
              }
            }
          }

          else
          {
            v25 = "20/40/80Mhz";
          }

          v26 = "Invalid AP cap/association status";
          if (v13 >= 3)
          {
            v27 = "LEGACY";
            if (v13 != 3)
            {
              v27 = "Invalid AP cap/association status";
            }
          }

          else
          {
            v27 = off_1003D1CE8[v13];
          }

          if (BYTE2(v37) >= 3u)
          {
            if (BYTE2(v37) == 3)
            {
              v26 = "LEGACY ASSOCIATION";
            }
          }

          else
          {
            v26 = off_1003D1D00[BYTE2(v37)];
          }

          if (BYTE3(v37) >= 5u)
          {
            v28 = "NONE";
            if (BYTE3(v37) == 5)
            {
              v28 = "INFORM AP PENDING";
            }
          }

          else
          {
            v28 = off_1003D1D18[BYTE3(v37)];
          }

          if (BYTE4(v37) == 1)
          {
            v29 = "ACTIVE";
          }

          else
          {
            v29 = "NOT ACTIVE";
          }

          if (BYTE7(v37) >= 3u)
          {
            if (BYTE7(v37) == 3)
            {
              v30 = "80Mhz";
            }

            else
            {
              v30 = "NONE";
            }
          }

          else
          {
            v30 = off_1003D1D40[BYTE7(v37)];
          }

          v31 = *(v22 + 24);
          v32 = "NONE";
          if (WORD4(v37) <= 7u)
          {
            if (WORD4(v37) <= 1u)
            {
              v33 = "NONE";
              if (WORD4(v37))
              {
                v33 = "LTE CO-EX";
              }

              goto LABEL_128;
            }

            if (WORD4(v37) == 2)
            {
              v33 = "MIMOPS BSS";
              goto LABEL_128;
            }

            if (WORD4(v37) == 4)
            {
              v33 = "AWDL BSS";
              goto LABEL_128;
            }
          }

          else if (WORD4(v37) <= 0x1Fu)
          {
            if (WORD4(v37) == 8)
            {
              v33 = "SCAN";
              goto LABEL_128;
            }

            if (WORD4(v37) == 16)
            {
              v33 = "TXPRR";
              goto LABEL_128;
            }
          }

          else
          {
            switch(WORD4(v37))
            {
              case 0x20u:
                v33 = "PWR THROTTLE";
                goto LABEL_128;
              case 0x40u:
                v33 = "TEMP SENSE";
                goto LABEL_128;
              case 0x80u:
                v33 = "IOVAR";
LABEL_128:
                if (BYTE12(v37) >= 3u)
                {
                  if (BYTE12(v37) == 3)
                  {
                    v32 = "80Mhz";
                  }
                }

                else
                {
                  v32 = off_1003D1D40[BYTE12(v37)];
                }

                CCLogStream::logNotice(v31, "[dk] %s@%d:MIMO POWER SAVE STATUS:AP BW = %s, AP CAPABILITY = %s, Assoc State = %s, MIMO PS State = %s, MRC State = %s, BSS RxChain = %d, BSS TxChain = %d, BSS Bandwidth = %s, HW State = %s, HW Rx Chain = %d, HW Tx Chain = %d, HW Bandwidth = %s, BCNRX State = %d, Basic Rates Present = %d, BCMC RX State = %d\n", "getMIMOPowerSaveStatus", 1007, v25, v27, v26, v28, v29, BYTE5(v37), BYTE6(v37), v30, v33, BYTE10(v37), BYTE11(v37), v32, BYTE13(v37), BYTE14(v37), HIBYTE(v37));
                v22 = *v3;
                goto LABEL_77;
            }
          }

          v33 = "AP BSS";
          if (WORD4(v37) != 256)
          {
            v33 = "NONE";
          }

          goto LABEL_128;
      }
    }

    v21 = "AP BSS";
    if (WORD4(v37) != 256)
    {
      v21 = "NONE";
    }

    goto LABEL_70;
  }

  v8 = v10;
  if ((!*(*v3 + 24) || (CCLogStream::shouldLogConsole() & 1) == 0) && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109634;
    *&buf[4] = 65;
    *v39 = 2080;
    *&v39[2] = "getMIMOPowerSaveStatus";
    v40 = 1024;
    v41 = 999;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%c [dk] %s@%d: Failed to collect MIMO PS Status values \n", buf, 0x18u);
  }

  if (*(*v3 + 24) && CCLogStream::shouldLog())
  {
    AppleBCMWLANPowerManager::getMIMOPowerSaveStatus(v3);
  }

  return v8;
}

uint64_t AppleBCMWLANPowerManager::configureMIMOPowerSavePolicy(AppleBCMWLANPowerManager *this)
{
  v3 = this + 48;
  v2 = *(this + 6);
  if (v2[3])
  {
    shouldLog = CCLogStream::shouldLog();
    v2 = *v3;
    if (shouldLog)
    {
      CCLogStream::logNoticeIf(v2[3], 0x20uLL, "[dk] %s@%d:MIMO_PS: Enter %s \n", "configureMIMOPowerSavePolicy", 400, "configureMIMOPowerSavePolicy");
      v2 = *v3;
    }
  }

  if (!AppleBCMWLANCore::isMIMOPowerSaveEnabled(*v2))
  {
    return 0;
  }

  v5 = AppleBCMWLANPowerManager::configureMIMOPowerSaveParams(this, 2);
  if (v5 && *(*v3 + 24) && CCLogStream::shouldLog())
  {
    AppleBCMWLANPowerManager::configureMIMOPowerSavePolicy(v3);
  }

  AppleBCMWLANPowerManager::getMIMOPowerSaveStatus(this);
  if (*(*(this + 6) + 24) && CCLogStream::shouldLog())
  {
    AppleBCMWLANPowerManager::configureMIMOPowerSavePolicy(v3);
  }

  return v5;
}

uint64_t AppleBCMWLANPowerManager::configureMIMOPowerSaveAssociatedSleepEntry(AppleBCMWLANPowerManager *this)
{
  v3 = this + 48;
  v2 = *(this + 6);
  if (v2[3])
  {
    shouldLog = CCLogStream::shouldLog();
    v2 = *v3;
    if (shouldLog)
    {
      CCLogStream::logNoticeIf(v2[3], 0x20uLL, "[dk] %s@%d:MIMO_PS: Enter %s \n", "configureMIMOPowerSaveAssociatedSleepEntry", 425, "configureMIMOPowerSaveAssociatedSleepEntry");
      v2 = *v3;
    }
  }

  if (!AppleBCMWLANCore::isMIMOPowerSaveEnabled(*v2))
  {
    return 0;
  }

  if (AppleBCMWLANCore::is4377Up(**(this + 6)))
  {
    v5 = -70;
  }

  else
  {
    v5 = -128;
  }

  if (AppleBCMWLANPowerManager::configureMRCThreshold(this, v5) && *(*v3 + 24) && CCLogStream::shouldLog())
  {
    AppleBCMWLANPowerManager::configureMIMOPowerSaveAssociatedSleepEntry(v3);
  }

  AppleBCMWLANPowerManager::configureTVPMPeriodicity(this, 10);
  v6 = AppleBCMWLANPowerManager::configureBeaconBasedChannelWidthSwitch(this, 1);
  v7 = *(this + 6);
  if (v6)
  {
    if (*(v7 + 24))
    {
      v8 = *(v7 + 24);
      v9 = CCLogStream::shouldLog();
      v7 = *v3;
      if (v9)
      {
        AppleBCMWLANPowerManager::configureMIMOPowerSaveAssociatedSleepEntry(v7);
        v7 = v11;
      }
    }
  }

  if (*(v7 + 24) && CCLogStream::shouldLog())
  {
    AppleBCMWLANPowerManager::configureMIMOPowerSaveAssociatedSleepEntry(v3);
  }

  return v6;
}

uint64_t AppleBCMWLANPowerManager::configureTVPMPeriodicity(AppleBCMWLANCore ***this, int a2)
{
  v4 = this + 6;
  if (!AppleBCMWLANCore::checkForTVPMSupport(*this[6]))
  {
    return 0;
  }

  isAssociated = AppleBCMWLANCore::isAssociated(**v4);
  v6 = *v4;
  if (isAssociated && a2 == 1 && (*(v6 + 181) & 1) == 0)
  {
    if (v6[3] && CCLogStream::shouldLog())
    {
      AppleBCMWLANPowerManager::configureTVPMPeriodicity(v4);
    }

    return 0;
  }

  if (*(v6 + 34) == a2)
  {
    if (v6[3] && CCLogStream::shouldLog())
    {
      AppleBCMWLANPowerManager::configureTVPMPeriodicity(v4);
    }

    return 0;
  }

  v7 = 3758097084;
  v9 = IOMallocZeroData();
  if (!v9)
  {
    return 3758097085;
  }

  v10 = v9;
  *v9 = 0x40004000C0001;
  *(v9 + 8) = a2;
  if (AppleBCMWLANCommander::getMaxCmdTxPayload((*v4)[1]) > 0xB)
  {
    v14[0] = v10;
    v14[1] = 12;
    v11 = (*(***v4 + 88))(**v4);
    if ((*(*v11 + 136))(v11))
    {
      v12 = AppleBCMWLANCommander::sendIOVarSet(this[6][1], "tvpm");
    }

    else
    {
      v12 = AppleBCMWLANCommander::runIOVarSet((*v4)[1], "tvpm", v14, 0, 0);
    }

    v7 = v12;
    v13 = *v4;
    if (v12)
    {
      if (v13[3] && CCLogStream::shouldLog())
      {
        AppleBCMWLANPowerManager::configureTVPMPeriodicity(v4);
      }
    }

    else
    {
      *(v13 + 34) = a2;
    }

    if ((*v4)[3] && CCLogStream::shouldLog())
    {
      AppleBCMWLANPowerManager::configureTVPMPeriodicity(v4);
    }
  }

  else if ((*v4)[3] && CCLogStream::shouldLog())
  {
    AppleBCMWLANPowerManager::configureTVPMPeriodicity(v4);
  }

  IOFreeData();
  return v7;
}

uint64_t AppleBCMWLANPowerManager::configureBeaconBasedChannelWidthSwitch(AppleBCMWLANCore ***this, int a2)
{
  v4 = 3758097085;
  if (a2)
  {
    v5 = 1;
  }

  else
  {
    v5 = 3;
  }

  v6 = this + 6;
  if (!AppleBCMWLANCore::isBcnCWSwitchEnabled(*this[6]))
  {
    return 3758097095;
  }

  if (!AppleBCMWLANCore::isAssociated(**v6) || *(*v6 + 163) != 3 || *(*v6 + 172) == v5)
  {
    return 3758096385;
  }

  v8 = IOMallocZeroData();
  if (v8)
  {
    v9 = v8;
    *v8 = 589825;
    *(v8 + 4) = 0;
    *(v8 + 8) = a2;
    v10 = (*(***v6 + 88))(**v6);
    if ((*(*v10 + 136))(v10))
    {
      v15 = this;
      v16 = AppleBCMWLANPowerManager::handleConfigureBcnBasedRadioChannelWidthSwitchAsyncCallback;
      v17 = 0;
      v11 = AppleBCMWLANCommander::sendIOVarSet(this[6][1], "psbw_cfg");
    }

    else
    {
      v12 = (*v6)[1];
      v15 = v9;
      v16 = 9;
      v11 = AppleBCMWLANCommander::runIOVarSet(v12, "psbw_cfg", &v15, 0, 0);
    }

    v4 = v11;
    v13 = *v6;
    if (v11 == -469793788)
    {
      if (v13[3] && CCLogStream::shouldLog())
      {
        AppleBCMWLANPowerManager::configureBeaconBasedChannelWidthSwitch(v6);
      }

      goto LABEL_33;
    }

    if (!v11)
    {
      *(v13 + 172) = v5;
      if ((*v6)[3] && CCLogStream::shouldLog())
      {
        if (a2)
        {
          v14 = "20Mhz";
        }

        else
        {
          v14 = "80Mhz";
        }

        CCLogStream::logInfo((*v6)[3], "[dk] %s@%d:Configured Channel Bandwith to %s \n", "configureBeaconBasedChannelWidthSwitch", 3796, v14);
      }

      goto LABEL_33;
    }

    if (v13[3] && CCLogStream::shouldLog())
    {
      AppleBCMWLANPowerManager::configureBeaconBasedChannelWidthSwitch(v6);
      if (a2)
      {
        goto LABEL_33;
      }
    }

    else if (a2)
    {
LABEL_33:
      IOFreeData();
      return v4;
    }

    CCFaultReporter::reportFault((*v6)[6], 5u, "/Library/Caches/com.apple.xbs/Sources/AppleBCMWLANV3_driverkit/AppleBCMWLANPowerManager.cpp", 0xECFu, "configureBeaconBasedChannelWidthSwitch", 0, -469790463, 0);
    goto LABEL_33;
  }

  if ((*v6)[3] && CCLogStream::shouldLog())
  {
    AppleBCMWLANPowerManager::configureBeaconBasedChannelWidthSwitch(v6);
  }

  return v4;
}

uint64_t AppleBCMWLANPowerManager::configureMIMOPowerSaveAssociatedSleepExit(AppleBCMWLANPowerManager *this)
{
  v3 = this + 48;
  v2 = *(this + 6);
  if (v2[3])
  {
    shouldLog = CCLogStream::shouldLog();
    v2 = *v3;
    if (shouldLog)
    {
      CCLogStream::logNoticeIf(v2[3], 0x20uLL, "[dk] %s@%d:MIMO_PS: Enter %s \n", "configureMIMOPowerSaveAssociatedSleepExit", 464, "configureMIMOPowerSaveAssociatedSleepExit");
      v2 = *v3;
    }
  }

  if (!AppleBCMWLANCore::isMIMOPowerSaveEnabled(*v2))
  {
    return 0;
  }

  if (*(*v3 + 40) != 1 && AppleBCMWLANPowerManager::configureMRCThreshold(this, -70) && *(*v3 + 24) && CCLogStream::shouldLog())
  {
    AppleBCMWLANPowerManager::configureMIMOPowerSaveAssociatedSleepExit(v3);
  }

  v5 = AppleBCMWLANPowerManager::configureBeaconBasedChannelWidthSwitch(this, 0);
  v6 = *(this + 6);
  if (v5)
  {
    if (*(v6 + 24))
    {
      v7 = *(v6 + 24);
      v8 = CCLogStream::shouldLog();
      v6 = *v3;
      if (v8)
      {
        AppleBCMWLANPowerManager::configureMIMOPowerSaveAssociatedSleepExit(v6);
        v6 = v10;
      }
    }
  }

  if (*(v6 + 24) && CCLogStream::shouldLog())
  {
    AppleBCMWLANPowerManager::configureMIMOPowerSaveAssociatedSleepExit(v3);
  }

  return v5;
}

uint64_t AppleBCMWLANPowerManager::handleConfigureMIMOPSCfgAsyncCallback(uint64_t a1, uint64_t a2, int a3)
{
  v4 = (a1 + 48);
  if (*(*(a1 + 48) + 24) && CCLogStream::shouldLog())
  {
    AppleBCMWLANPowerManager::handleConfigureMIMOPSCfgAsyncCallback(v4);
  }

  result = (*v4)[3];
  if (a3)
  {
    if (result)
    {
      result = CCLogStream::shouldLog();
      if (result)
      {
        return AppleBCMWLANPowerManager::handleConfigureMIMOPSCfgAsyncCallback(v4);
      }
    }
  }

  else if (result)
  {
    result = CCLogStream::shouldLog();
    if (result)
    {
      return AppleBCMWLANPowerManager::handleConfigureMIMOPSCfgAsyncCallback(v4);
    }
  }

  return result;
}

uint64_t AppleBCMWLANPowerManager::setBatterySaveModeConfiguration(AppleBCMWLANCore ***a1, _DWORD *a2)
{
  v5 = a1 + 6;
  v4 = a1[6];
  if (v4[3])
  {
    shouldLog = CCLogStream::shouldLog();
    v4 = *v5;
    if (shouldLog)
    {
      CCLogStream::logNoticeIf(v4[3], 0x20uLL, "[dk] %s@%d:MIMO_PS: Enter %s \n", "setBatterySaveModeConfiguration", 562, "setBatterySaveModeConfiguration");
      v4 = *v5;
    }
  }

  if (!AppleBCMWLANCore::isMIMOPowerSaveEnabled(*v4))
  {
    return 0;
  }

  *(*v5 + 10) = *a2;
  isAssociated = AppleBCMWLANCore::isAssociated(**v5);
  v8 = *v5;
  if ((isAssociated & 1) == 0)
  {
    if (v8[3] && CCLogStream::shouldLog())
    {
      AppleBCMWLANPowerManager::setBatterySaveModeConfiguration(v5);
    }

    return 0;
  }

  v9 = *(v8 + 10);
  if (v9 == 1)
  {
    if (AppleBCMWLANCore::is4377Up(*v8))
    {
      v10 = -70;
    }

    else
    {
      v10 = -128;
    }

    v11 = AppleBCMWLANPowerManager::configureMRCThreshold(a1, v10);
    v8 = a1[6];
    if (*(v8 + 10))
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  v11 = 0;
  if (!v9)
  {
LABEL_18:
    v11 = AppleBCMWLANPowerManager::configureMRCThreshold(a1, -70);
    v8 = a1[6];
  }

LABEL_19:
  if (v8[3] && CCLogStream::shouldLog())
  {
    AppleBCMWLANPowerManager::setBatterySaveModeConfiguration(v5);
  }

  return v11;
}

uint64_t AppleBCMWLANPowerManager::configureMIMOPowerSaveForJoin(AppleBCMWLANPowerManager *this, int a2)
{
  v5 = (this + 48);
  v4 = *(this + 6);
  if (v4[3])
  {
    shouldLog = CCLogStream::shouldLog();
    v4 = *v5;
    if (shouldLog)
    {
      CCLogStream::logNoticeIf(v4[3], 0x20uLL, "[dk] %s@%d:MIMO_PS: Enter %s \n", "configureMIMOPowerSaveForJoin", 623, "configureMIMOPowerSaveForJoin");
      v4 = *v5;
    }
  }

  result = AppleBCMWLANCore::isMIMOPowerSaveEnabled(*v4);
  if (result)
  {
    if ((*v5)[3] && CCLogStream::shouldLog())
    {
      if (a2)
      {
        v12 = "SISO";
      }

      else
      {
        v12 = "MIMO";
      }

      CCLogStream::logAlert((*v5)[3], "[dk] %s@%d:%s assoc\n", "configureMIMOPowerSaveForJoin", 629, v12);
    }

    if (a2)
    {
      v8 = AppleBCMWLANPowerManager::configureSISOPowerSavePolicy(this);
      v9 = *(this + 6);
      if (v8)
      {
        if (v9[3])
        {
          v10 = CCLogStream::shouldLog();
          v9 = *v5;
          if (v10)
          {
            CCLogStream::logAlertIf(v9[3], 0x20uLL, "[dk] %s@%d:Failed to configure SISO Power Policy for Low Power Mode\n", "configureMIMOPowerSaveForJoin", 635);
            v9 = *v5;
          }
        }
      }

      if (AppleBCMWLANCore::isAntennaInEfficiencyMitigationSupported(*v9))
      {
        v11 = -65;
      }

      else if (AppleBCMWLANCore::is4377Up(**v5))
      {
        v11 = -70;
      }

      else
      {
        v11 = -128;
      }
    }

    else
    {
      if (AppleBCMWLANPowerManager::configureMIMOPowerSavePolicy(this) && (*v5)[3] && CCLogStream::shouldLog())
      {
        AppleBCMWLANPowerManager::configureMIMOPowerSaveForJoin(v5);
      }

      v11 = -70;
    }

    AppleBCMWLANPowerManager::configureMRCThreshold(this, v11);
    result = *(*(this + 6) + 24);
    if (result)
    {
      result = CCLogStream::shouldLog();
      if (result)
      {
        return AppleBCMWLANPowerManager::configureMIMOPowerSaveForJoin(v5);
      }
    }
  }

  return result;
}

AppleBCMWLANCore *AppleBCMWLANPowerManager::configureMIMOPowerSaveForJoinFailure(AppleBCMWLANPowerManager *this)
{
  v3 = (this + 48);
  v2 = *(this + 6);
  if (v2[3])
  {
    shouldLog = CCLogStream::shouldLog();
    v2 = *v3;
    if (shouldLog)
    {
      CCLogStream::logNoticeIf(v2[3], 0x20uLL, "[dk] %s@%d:MIMO_PS: Enter %s \n", "configureMIMOPowerSaveForJoinFailure", 665, "configureMIMOPowerSaveForJoinFailure");
      v2 = *v3;
    }
  }

  result = AppleBCMWLANCore::isMIMOPowerSaveEnabled(*v2);
  if (result)
  {
    v6 = AppleBCMWLANPowerManager::configureSISOPowerSavePolicy(this);
    v7 = *(this + 6);
    if (v6)
    {
      if (v7[3])
      {
        v8 = CCLogStream::shouldLog();
        v7 = *v3;
        if (v8)
        {
          CCLogStream::logAlertIf(v7[3], 0x20uLL, "[dk] %s@%d:Failed to configure SISO Power Save Policy \n", "configureMIMOPowerSaveForJoinFailure", 674);
          v7 = *v3;
        }
      }
    }

    result = v7[3];
    if (result)
    {
      result = CCLogStream::shouldLog();
      if (result)
      {
        return AppleBCMWLANPowerManager::configureMIMOPowerSaveForJoinFailure(v3);
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANPowerManager::getCurrentRadioChainConfig(AppleBCMWLANCore ***a1, _DWORD *a2)
{
  if (!AppleBCMWLANCore::isMIMOPowerSaveEnabled(*a1[6]))
  {
    return 0;
  }

  v56 = 0;
  v55 = 0;
  AppleBCMWLANPowerManager::getMIMOPowerSaveConfigParams(a1);
  v4 = (*(**a1[6] + 88))(*a1[6]);
  if ((*(*v4 + 136))(v4))
  {
    v52 = a1;
    v53 = AppleBCMWLANPowerManager::handleGetTxRadioChainsAsyncCallback;
    v54 = 0;
    v5 = a1[6][1];
    LODWORD(v49) = 262148;
    v6 = AppleBCMWLANCommander::sendIOVarGet(v5, "txchain", &kNoTxPayload, &v49, &v52, 0);
    v7 = a1[6];
    if (v6)
    {
      v8 = v6;
      if (v7[3])
      {
        shouldLog = CCLogStream::shouldLog();
        v7 = a1[6];
        if (shouldLog)
        {
          CCLogStream::logAlert(v7[3], "[dk] %s@%d: Failed GET IOCTL, cret[0x%08x]\n", "getCurrentRadioChainConfig", 707, v8);
          v7 = a1[6];
        }
      }
    }

    v49 = a1;
    v50 = AppleBCMWLANPowerManager::handleGetRxRadioChainsAsyncCallback;
    v51 = 0;
    v10 = v7[1];
    LODWORD(v46) = 262148;
    v11 = AppleBCMWLANCommander::sendIOVarGet(v10, "rxchain", &kNoTxPayload, &v46, &v49, 0);
    v12 = a1[6];
    if (v11)
    {
      v13 = v11;
      if (v12[3])
      {
        v14 = CCLogStream::shouldLog();
        v12 = a1[6];
        if (v14)
        {
          CCLogStream::logAlert(v12[3], "[dk] %s@%d: Failed GET IOCTL, cret[0x%08x]\n", "getCurrentRadioChainConfig", 716, v13);
          v12 = a1[6];
        }
      }
    }

    v46 = a1;
    v47 = AppleBCMWLANPowerManager::handleGetRxChannelSpecAsyncCallback;
    v48 = 0;
    v15 = v12[1];
    LODWORD(v57) = 131074;
    v16 = AppleBCMWLANCommander::sendIOVarGet(v15, "chanspec", &kNoTxPayload, &v57, &v46, 0);
    if (v16)
    {
      v17 = v16;
      if (a1[6][3])
      {
        if (CCLogStream::shouldLog())
        {
          CCLogStream::logAlert(a1[6][3], "[dk] %s@%d: Failed GET IOCTL, cret[0x%08x]\n", "getCurrentRadioChainConfig", 725, v17);
        }
      }
    }

    v18 = 0;
  }

  else
  {
    v52 = (&v55 + 4);
    v53 = 0x400040004;
    v19 = AppleBCMWLANCommander::runIOVarGet(a1[6][1], "txchain", &kNoTxPayload, &v52, 0);
    v20 = a1[6];
    if (v19)
    {
      v21 = v19;
      if (v20[3])
      {
        v22 = CCLogStream::shouldLog();
        v20 = a1[6];
        if (v22)
        {
          CCLogStream::logAlert(v20[3], "[dk] %s@%d: Failed GET IOCTL, cret[0x%08x]\n", "getCurrentRadioChainConfig", 734, v21);
          v20 = a1[6];
        }
      }
    }

    v49 = &v55;
    v50 = 0x400040004;
    v23 = AppleBCMWLANCommander::runIOVarGet(v20[1], "rxchain", &kNoTxPayload, &v49, 0);
    v24 = a1[6];
    if (v23)
    {
      v25 = v23;
      if (v24[3])
      {
        v26 = CCLogStream::shouldLog();
        v24 = a1[6];
        if (v26)
        {
          CCLogStream::logAlert(v24[3], "[dk] %s@%d: Failed GET IOCTL, cret[0x%08x]\n", "getCurrentRadioChainConfig", 741, v25);
          v24 = a1[6];
        }
      }
    }

    v46 = &v56;
    v47 = 0x200020002;
    v18 = AppleBCMWLANCommander::runIOVarGet(v24[1], "chanspec", &kNoTxPayload, &v46, 0);
    v27 = HIDWORD(v55);
    *(a1[6] + 30) = v55;
    *(a1[6] + 31) = v27;
    *(a1[6] + 33) = v56;
  }

  v57 = 0;
  v49 = &v57;
  v50 = 0x800080008;
  v28 = (*(**a1[6] + 88))(*a1[6]);
  if ((*(*v28 + 136))(v28))
  {
    v52 = a1;
    v53 = AppleBCMWLANPowerManager::handleConfigureMIMOPSCfgGetAsyncCallback;
    v54 = 0;
    v29 = a1[6][1];
    v46 = &v57;
    v47 = 8;
    v45 = 524296;
    v30 = AppleBCMWLANCommander::sendIOVarGet(v29, "mimo_ps_cfg", &v46, &v45, &v52, 0);
    if (v30)
    {
      v31 = v30;
      if (a1[6][3])
      {
        if (CCLogStream::shouldLog())
        {
          CCLogStream::logAlert(a1[6][3], "[dk] %s@%d: Failed GET IOCTL, cret[0x%08x]\n", "getCurrentRadioChainConfig", 768, v31);
        }
      }
    }
  }

  else
  {
    v32 = a1[6][1];
    v52 = &v57;
    v53 = 8;
    v18 = AppleBCMWLANCommander::runIOVarGet(v32, "mimo_ps_cfg", &v52, &v49, 0);
    *(a1[6] + 32) = BYTE2(v57);
  }

  a2[9] = *(a1[6] + 10);
  a2[8] = *(a1[6] + 8);
  a2[10] = *(a1[6] + 9);
  *a2 = BYTE1(v57);
  a2[1] = *(a1[6] + 30);
  a2[2] = *(a1[6] + 31);
  v33 = *(a1[6] + 33) & 0x3800;
  switch(v33)
  {
    case 0x1000:
      v34 = 1;
      break;
    case 0x2000:
      v34 = 3;
      break;
    case 0x1800:
      v34 = 2;
      break;
    default:
      v34 = 0;
      break;
  }

  a2[4] = v34;
  a2[5] = *(a1[6] + 27);
  a2[6] = *(a1[6] + 29);
  a2[7] = *(a1[6] + 28);
  a2[3] = *(a1[6] + 32);
  if (a1[6][3] && CCLogStream::shouldLog())
  {
    v36 = a1[6];
    v37 = a2[3];
    if (v37)
    {
      if (v37 == 1)
      {
        v38 = "DYNAMIC SMPS";
      }

      else if (v37 == 3)
      {
        v38 = "SMPS DISABLED";
      }

      else
      {
        v38 = "SMPS RESERVED";
      }
    }

    else
    {
      v38 = "STATIC SMPS";
    }

    v39 = a2[4];
    if (v39 >= 3)
    {
      if (v39 == 3)
      {
        v40 = "80Mhz";
      }

      else
      {
        v40 = "NONE";
      }
    }

    else
    {
      v40 = off_1003D1D40[v39];
    }

    v41 = "Disabled";
    v42 = "Call Not In Progress";
    if (*(v36 + 10) == 1)
    {
      v43 = "Enabled";
    }

    else
    {
      v43 = "Disabled";
    }

    if (*(v36 + 8) == 1)
    {
      v42 = "Call In Progress";
    }

    v44 = "Locked";
    if (*(v36 + 9) == 1)
    {
      v44 = "UnLocked";
    }

    if (*(v36 + 28) == 1)
    {
      v41 = "Enabled";
    }

    CCLogStream::logAlertIf(v36[3], 0x20uLL, "[dk] %s@%d:MIMO_PS: ActiveChains = %d, RxChain = %d, TxChain = %d, SMPS Mode = %s, ChannelWidth = %s, Battery Save Mode = %s, FaceTime/WiFi = %s, Device = %s, MRC Threshold = %ddB, MIMO Leak Gaurd = %dms, BcnBasedRadioSwitch = %s \n", "getCurrentRadioChainConfig", 807, BYTE1(v57), v55, HIDWORD(v55), v38, v40, v43, v42, v44, *(v36 + 27), *(v36 + 29), v41);
  }

  return v18;
}

uint64_t AppleBCMWLANPowerManager::getMIMOPowerSaveConfigParams(AppleBCMWLANPowerManager *this)
{
  v2 = *(this + 6);
  if (v2[3])
  {
    shouldLog = CCLogStream::shouldLog();
    v2 = *(this + 6);
    if (shouldLog)
    {
      CCLogStream::logNoticeIf(v2[3], 0x20uLL, "[dk] %s@%d:MIMO_PS: Enter %s \n", "getMIMOPowerSaveConfigParams", 897, "getMIMOPowerSaveConfigParams");
      v2 = *(this + 6);
    }
  }

  v40 = 0;
  v39 = 0;
  isMIMOPowerSaveEnabled = AppleBCMWLANCore::isMIMOPowerSaveEnabled(*v2);
  result = 0;
  if (isMIMOPowerSaveEnabled)
  {
    v6 = (*(***(this + 6) + 88))(**(this + 6));
    if ((*(*v6 + 136))(v6))
    {
      v36 = this;
      v37 = AppleBCMWLANPowerManager::handleGetMRCRssiThresholdAsyncCallback;
      v38 = 0;
      v7 = *(*(this + 6) + 8);
      LODWORD(v33) = 262148;
      v8 = AppleBCMWLANCommander::sendIOVarGet(v7, "mrc_rssi_threshold", &kNoTxPayload, &v33, &v36, 0);
      v9 = *(this + 6);
      if (v8)
      {
        v10 = v8;
        if (*(v9 + 24))
        {
          v11 = CCLogStream::shouldLog();
          v9 = *(this + 6);
          if (v11)
          {
            CCLogStream::logAlert(*(v9 + 24), "[dk] %s@%d: Failed GET IOCTL, cret[0x%08x]\n", "getMIMOPowerSaveConfigParams", 917, v10);
            v9 = *(this + 6);
          }
        }
      }

      v33 = this;
      v34 = AppleBCMWLANPowerManager::handleGetBCNRXAsyncCallback;
      v35 = 0;
      v12 = *(v9 + 8);
      LODWORD(v30) = 262148;
      v13 = AppleBCMWLANCommander::sendIOVarGet(v12, "pm_bcnrx", &kNoTxPayload, &v30, &v33, 0);
      v14 = *(this + 6);
      if (v13)
      {
        v15 = v13;
        if (*(v14 + 24))
        {
          v16 = CCLogStream::shouldLog();
          v14 = *(this + 6);
          if (v16)
          {
            CCLogStream::logAlert(*(v14 + 24), "[dk] %s@%d: Failed GET IOCTL, cret[0x%08x]\n", "getMIMOPowerSaveConfigParams", 926, v15);
            v14 = *(this + 6);
          }
        }
      }

      v30 = this;
      v31 = AppleBCMWLANPowerManager::handleGetMIMOGaurdAsyncCallback;
      v32 = 0;
      v17 = *(v14 + 8);
      v29 = 262148;
      v18 = AppleBCMWLANCommander::sendIOVarGet(v17, "mimo_ps_cfg_change_wait_time", &kNoTxPayload, &v29, &v30, 0);
      if (v18)
      {
        v19 = v18;
        if (*(*(this + 6) + 24))
        {
          if (CCLogStream::shouldLog())
          {
            CCLogStream::logAlert(*(*(this + 6) + 24), "[dk] %s@%d: Failed GET IOCTL, cret[0x%08x]\n", "getMIMOPowerSaveConfigParams", 935, v19);
          }
        }
      }

      return 0;
    }

    else
    {
      v36 = (&v40 + 4);
      v37 = 0x400040004;
      v20 = AppleBCMWLANCommander::runIOVarGet(*(*(this + 6) + 8), "mrc_rssi_threshold", &kNoTxPayload, &v36, 0);
      v21 = *(this + 6);
      if (v20)
      {
        v22 = v20;
        if (*(v21 + 24))
        {
          v23 = CCLogStream::shouldLog();
          v21 = *(this + 6);
          if (v23)
          {
            CCLogStream::logAlert(*(v21 + 24), "[dk] %s@%d: Failed GET IOCTL, cret[0x%08x]\n", "getMIMOPowerSaveConfigParams", 944, v22);
            v21 = *(this + 6);
          }
        }
      }

      v33 = &v39;
      v34 = 0x400040004;
      v24 = AppleBCMWLANCommander::runIOVarGet(*(v21 + 8), "pm_bcnrx", &kNoTxPayload, &v33, 0);
      v25 = *(this + 6);
      if (v24)
      {
        v26 = v24;
        if (*(v25 + 24))
        {
          v27 = CCLogStream::shouldLog();
          v25 = *(this + 6);
          if (v27)
          {
            CCLogStream::logAlert(*(v25 + 24), "[dk] %s@%d: Failed GET IOCTL, cret[0x%08x]\n", "getMIMOPowerSaveConfigParams", 951, v26);
            v25 = *(this + 6);
          }
        }
      }

      v30 = &v40;
      v31 = 0x400040004;
      result = AppleBCMWLANCommander::runIOVarGet(*(v25 + 8), "mimo_ps_cfg_change_wait_time", &kNoTxPayload, &v30, 0);
      *(*(this + 6) + 108) = HIDWORD(v40);
      v28 = v40;
      *(*(this + 6) + 112) = v39;
      *(*(this + 6) + 116) = v28;
    }
  }

  return result;
}

uint64_t AppleBCMWLANPowerManager::handleGetTxRadioChainsAsyncCallback(uint64_t a1, uint64_t a2, int a3, _DWORD **a4)
{
  v6 = (a1 + 48);
  if (*(*(a1 + 48) + 24) && CCLogStream::shouldLog())
  {
    AppleBCMWLANPowerManager::handleGetTxRadioChainsAsyncCallback(v6);
    if (a3)
    {
LABEL_4:
      result = (*v6)[3];
      if (result)
      {
        result = CCLogStream::shouldLog();
        if (result)
        {
          return AppleBCMWLANPowerManager::handleGetTxRadioChainsAsyncCallback(v6);
        }
      }

      return result;
    }
  }

  else if (a3)
  {
    goto LABEL_4;
  }

  *(*v6 + 31) = **a4;
  result = (*v6)[3];
  if (result)
  {
    result = CCLogStream::shouldLog();
    if (result)
    {
      return AppleBCMWLANPowerManager::handleGetTxRadioChainsAsyncCallback(v6);
    }
  }

  return result;
}

uint64_t AppleBCMWLANPowerManager::handleGetRxRadioChainsAsyncCallback(uint64_t a1, uint64_t a2, int a3, _DWORD **a4)
{
  v6 = (a1 + 48);
  if (*(*(a1 + 48) + 24) && CCLogStream::shouldLog())
  {
    AppleBCMWLANPowerManager::handleGetRxRadioChainsAsyncCallback(v6);
    if (a3)
    {
LABEL_4:
      result = (*v6)[3];
      if (result)
      {
        result = CCLogStream::shouldLog();
        if (result)
        {
          return AppleBCMWLANPowerManager::handleGetRxRadioChainsAsyncCallback(v6);
        }
      }

      return result;
    }
  }

  else if (a3)
  {
    goto LABEL_4;
  }

  *(*v6 + 30) = **a4;
  result = (*v6)[3];
  if (result)
  {
    result = CCLogStream::shouldLog();
    if (result)
    {
      return AppleBCMWLANPowerManager::handleGetRxRadioChainsAsyncCallback(v6);
    }
  }

  return result;
}

uint64_t AppleBCMWLANPowerManager::handleGetRxChannelSpecAsyncCallback(uint64_t a1, uint64_t a2, int a3, _DWORD **a4)
{
  v6 = (a1 + 48);
  if (*(*(a1 + 48) + 24) && CCLogStream::shouldLog())
  {
    AppleBCMWLANPowerManager::handleGetRxChannelSpecAsyncCallback(v6);
    if (a3)
    {
LABEL_4:
      result = (*v6)[3];
      if (result)
      {
        result = CCLogStream::shouldLog();
        if (result)
        {
          return AppleBCMWLANPowerManager::handleGetRxChannelSpecAsyncCallback(v6);
        }
      }

      return result;
    }
  }

  else if (a3)
  {
    goto LABEL_4;
  }

  *(*v6 + 33) = **a4;
  result = (*v6)[3];
  if (result)
  {
    result = CCLogStream::shouldLog();
    if (result)
    {
      return AppleBCMWLANPowerManager::handleGetRxChannelSpecAsyncCallback(v6);
    }
  }

  return result;
}

uint64_t AppleBCMWLANPowerManager::handleConfigureMIMOPSCfgGetAsyncCallback(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v6 = (a1 + 48);
  if (*(*(a1 + 48) + 24) && CCLogStream::shouldLog())
  {
    AppleBCMWLANPowerManager::handleConfigureMIMOPSCfgGetAsyncCallback(v6);
    if (a3)
    {
LABEL_4:
      result = (*v6)[3];
      if (result)
      {
        result = CCLogStream::shouldLog();
        if (result)
        {
          return AppleBCMWLANPowerManager::handleConfigureMIMOPSCfgGetAsyncCallback(v6);
        }
      }

      return result;
    }
  }

  else if (a3)
  {
    goto LABEL_4;
  }

  *(*v6 + 32) = *(*a4 + 2);
  result = (*v6)[3];
  if (result)
  {
    result = CCLogStream::shouldLog();
    if (result)
    {
      return AppleBCMWLANPowerManager::handleConfigureMIMOPSCfgGetAsyncCallback(v6);
    }
  }

  return result;
}

uint64_t AppleBCMWLANPowerManager::handleLinkDownConfiguration(AppleBCMWLANPowerManager *this)
{
  v3 = (this + 48);
  v2 = *(this + 6);
  if (v2[3])
  {
    shouldLog = CCLogStream::shouldLog();
    v2 = *v3;
    if (shouldLog)
    {
      CCLogStream::logNoticeIf(v2[3], 0x20uLL, "[dk] %s@%d:MIMO_PS: Enter %s \n", "handleLinkDownConfiguration", 816, "handleLinkDownConfiguration");
      v2 = *v3;
    }
  }

  *(v2 + 181) = 0;
  v5 = 0;
  if (AppleBCMWLANCore::isMIMOPowerSaveEnabled(**v3))
  {
    if (AppleBCMWLANPowerManager::configureSISOPowerSavePolicy(this) && (*v3)[3] && CCLogStream::shouldLog())
    {
      AppleBCMWLANPowerManager::handleLinkDownConfiguration(v3);
    }

    v5 = AppleBCMWLANPowerManager::configureTVPMPeriodicity(this, 10);
    if (*(*(this + 6) + 24) && CCLogStream::shouldLog())
    {
      AppleBCMWLANPowerManager::handleLinkDownConfiguration(v3);
    }
  }

  return v5;
}

uint64_t AppleBCMWLANPowerManager::handleLinkUpConfiguration(AppleBCMWLANPowerManager *this)
{
  v3 = (this + 48);
  v2 = *(this + 6);
  if (v2[3])
  {
    shouldLog = CCLogStream::shouldLog();
    v2 = *v3;
    if (shouldLog)
    {
      CCLogStream::logNoticeIf(v2[3], 0x20uLL, "[dk] %s@%d:MIMO_PS: Enter %s \n", "handleLinkUpConfiguration", 848, "handleLinkUpConfiguration");
      v2 = *v3;
    }
  }

  *(v2 + 181) = 1;
  if (AppleBCMWLANCore::isMIMOPowerSaveEnabled(**v3))
  {
    if (AppleBCMWLANCore::isAssociated(**v3))
    {
      AppleBCMWLANPowerManager::configureBeaconBasedRadioChainSwitch(this);
      AppleBCMWLANPowerManager::getMIMOPowerSaveStatus(this);
      if (*(*(this + 6) + 24))
      {
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANPowerManager::handleLinkUpConfiguration(v3);
        }
      }
    }
  }

  return 0;
}

uint64_t AppleBCMWLANPowerManager::handleGetMRCRssiThresholdAsyncCallback(uint64_t a1, uint64_t a2, int a3, _DWORD **a4)
{
  v6 = (a1 + 48);
  if (*(*(a1 + 48) + 24) && CCLogStream::shouldLog())
  {
    AppleBCMWLANPowerManager::handleGetMRCRssiThresholdAsyncCallback(v6);
    if (a3)
    {
LABEL_4:
      result = (*v6)[3];
      if (result)
      {
        result = CCLogStream::shouldLog();
        if (result)
        {
          return AppleBCMWLANPowerManager::handleGetMRCRssiThresholdAsyncCallback(v6);
        }
      }

      return result;
    }
  }

  else if (a3)
  {
    goto LABEL_4;
  }

  *(*v6 + 27) = **a4;
  result = (*v6)[3];
  if (result)
  {
    result = CCLogStream::shouldLog();
    if (result)
    {
      return AppleBCMWLANPowerManager::handleGetMRCRssiThresholdAsyncCallback(v6);
    }
  }

  return result;
}

uint64_t AppleBCMWLANPowerManager::handleGetBCNRXAsyncCallback(uint64_t a1, uint64_t a2, int a3, _DWORD **a4)
{
  v6 = (a1 + 48);
  if (*(*(a1 + 48) + 24) && CCLogStream::shouldLog())
  {
    AppleBCMWLANPowerManager::handleGetBCNRXAsyncCallback(v6);
    if (a3)
    {
LABEL_4:
      result = (*v6)[3];
      if (result)
      {
        result = CCLogStream::shouldLog();
        if (result)
        {
          return AppleBCMWLANPowerManager::handleGetBCNRXAsyncCallback(v6);
        }
      }

      return result;
    }
  }

  else if (a3)
  {
    goto LABEL_4;
  }

  *(*v6 + 28) = **a4;
  result = (*v6)[3];
  if (result)
  {
    result = CCLogStream::shouldLog();
    if (result)
    {
      return AppleBCMWLANPowerManager::handleGetBCNRXAsyncCallback(v6);
    }
  }

  return result;
}

uint64_t AppleBCMWLANPowerManager::handleGetMIMOGaurdAsyncCallback(uint64_t a1, uint64_t a2, int a3, _DWORD **a4)
{
  v6 = (a1 + 48);
  if (*(*(a1 + 48) + 24) && CCLogStream::shouldLog())
  {
    AppleBCMWLANPowerManager::handleGetMIMOGaurdAsyncCallback(v6);
    if (a3)
    {
LABEL_4:
      result = (*v6)[3];
      if (result)
      {
        result = CCLogStream::shouldLog();
        if (result)
        {
          return AppleBCMWLANPowerManager::handleGetMIMOGaurdAsyncCallback(v6);
        }
      }

      return result;
    }
  }

  else if (a3)
  {
    goto LABEL_4;
  }

  *(*v6 + 29) = **a4;
  result = (*v6)[3];
  if (result)
  {
    result = CCLogStream::shouldLog();
    if (result)
    {
      return AppleBCMWLANPowerManager::handleGetMIMOGaurdAsyncCallback(v6);
    }
  }

  return result;
}

uint64_t AppleBCMWLANPowerManager::handleGetMIMOPowerSaveStatusAsyncCallback(uint64_t a1, uint64_t a2, int a3, uint64_t *a4)
{
  v6 = (a1 + 48);
  if (*(*(a1 + 48) + 24) && CCLogStream::shouldLog())
  {
    AppleBCMWLANPowerManager::handleGetMIMOPowerSaveStatusAsyncCallback(v6);
    if (a3)
    {
LABEL_4:
      result = (*v6)[3];
      if (result)
      {
        result = CCLogStream::shouldLog();
        if (result)
        {
          return AppleBCMWLANPowerManager::handleGetMIMOPowerSaveStatusAsyncCallback(v6);
        }
      }

      return result;
    }
  }

  else if (a3)
  {
    goto LABEL_4;
  }

  v8 = *a4;
  v9 = *v6;
  if ((*v6)[3])
  {
    v10 = *(v8 + 1);
    shouldLog = CCLogStream::shouldLog();
    v9 = *v6;
    if (shouldLog)
    {
      v12 = v10 & 0xF;
      if (v10 >= 0x10)
      {
        v14 = v10 >> 4;
        if (v10 >> 4 == 1)
        {
          v13 = "20Mhz";
        }

        else if (v14 == 2)
        {
          v13 = "40Mhz";
        }

        else if (v14 == 3)
        {
          v13 = "80Mhz";
        }

        else
        {
          v13 = "NONE";
        }
      }

      else
      {
        v13 = "20/40/80Mhz";
      }

      v15 = "Invalid AP cap/association status";
      v16 = v12 == 3;
      if (v12 >= 3)
      {
        v17 = "LEGACY";
        if (!v16)
        {
          v17 = "Invalid AP cap/association status";
        }
      }

      else
      {
        v17 = off_1003D1CE8[v12];
      }

      v18 = *(v8 + 2);
      if (v18 >= 3)
      {
        if (v18 == 3)
        {
          v15 = "LEGACY ASSOCIATION";
        }
      }

      else
      {
        v15 = off_1003D1D00[*(v8 + 2)];
      }

      v19 = *(v8 + 3);
      v20 = v19 == 5;
      if (v19 >= 5)
      {
        v21 = "NONE";
        if (v20)
        {
          v21 = "INFORM AP PENDING";
        }
      }

      else
      {
        v21 = off_1003D1D18[*(v8 + 3)];
      }

      if (*(v8 + 4) == 1)
      {
        v22 = "ACTIVE";
      }

      else
      {
        v22 = "NOT ACTIVE";
      }

      v23 = *(v8 + 7);
      if (v23 >= 3)
      {
        if (v23 == 3)
        {
          v24 = "80Mhz";
        }

        else
        {
          v24 = "NONE";
        }
      }

      else
      {
        v24 = off_1003D1D40[*(v8 + 7)];
      }

      v25 = v9[3];
      v26 = *(v8 + 8);
      v27 = "NONE";
      if (v26 <= 7)
      {
        if (*(v8 + 8) <= 1u)
        {
          v28 = "NONE";
          if (*(v8 + 8))
          {
            v28 = "LTE CO-EX";
          }

          goto LABEL_64;
        }

        if (v26 == 2)
        {
          v28 = "MIMOPS BSS";
          goto LABEL_64;
        }

        if (v26 == 4)
        {
          v28 = "AWDL BSS";
          goto LABEL_64;
        }
      }

      else if (*(v8 + 8) <= 0x1Fu)
      {
        if (v26 == 8)
        {
          v28 = "SCAN";
          goto LABEL_64;
        }

        if (v26 == 16)
        {
          v28 = "TXPRR";
          goto LABEL_64;
        }
      }

      else
      {
        switch(v26)
        {
          case 0x20u:
            v28 = "PWR THROTTLE";
            goto LABEL_64;
          case 0x40u:
            v28 = "TEMP SENSE";
            goto LABEL_64;
          case 0x80u:
            v28 = "IOVAR";
LABEL_64:
            v29 = *(v8 + 12);
            if (v29 >= 3)
            {
              if (v29 == 3)
              {
                v27 = "80Mhz";
              }
            }

            else
            {
              v27 = off_1003D1D40[*(v8 + 12)];
            }

            CCLogStream::logNotice(v25, "[dk] %s@%d:MIMO POWER SAVE STATUS:AP BW = %s, AP CAPABILITY = %s, Assoc State = %s, MIMO PS State = %s, MRC State = %s, BSS RxChain = %d, BSS TxChain = %d, BSS Bandwidth = %s, HW State = %s, HW Rx Chain = %d, HW Tx Chain = %d, HW Bandwidth = %s, BCNRX State = %d, Basic Rates Present = %d, BCMC RX State = %d\n", "handleGetMIMOPowerSaveStatusAsyncCallback", 1352, v13, v17, v15, v21, v22, *(v8 + 5), *(v8 + 6), v24, v28, *(v8 + 10), *(v8 + 11), v27, *(v8 + 13), *(v8 + 14), *(v8 + 15));
            v9 = *v6;
            goto LABEL_10;
        }
      }

      v28 = "AP BSS";
      if (v26 != 256)
      {
        v28 = "NONE";
      }

      goto LABEL_64;
    }
  }

LABEL_10:
  *(v9 + 156) = *v8;
  result = (*v6)[3];
  if (result)
  {
    result = CCLogStream::shouldLog();
    if (result)
    {
      return AppleBCMWLANPowerManager::handleGetMIMOPowerSaveStatusAsyncCallback(v6);
    }
  }

  return result;
}

uint64_t AppleBCMWLANPowerManager::handleConfigureBcnBasedRadioChannelWidthSwitchAsyncCallback(uint64_t a1, uint64_t a2, int a3)
{
  v4 = (a1 + 48);
  if (*(*(a1 + 48) + 24) && CCLogStream::shouldLog())
  {
    AppleBCMWLANPowerManager::handleConfigureBcnBasedRadioChannelWidthSwitchAsyncCallback(v4);
  }

  result = (*v4)[3];
  if (a3)
  {
    if (result)
    {
      result = CCLogStream::shouldLog();
      if (result)
      {
        return AppleBCMWLANPowerManager::handleConfigureBcnBasedRadioChannelWidthSwitchAsyncCallback(v4);
      }
    }
  }

  else if (result)
  {
    result = CCLogStream::shouldLog();
    if (result)
    {
      return AppleBCMWLANPowerManager::handleConfigureBcnBasedRadioChannelWidthSwitchAsyncCallback(v4);
    }
  }

  return result;
}

uint64_t AppleBCMWLANPowerManager::handleConfigureTVPMPeriodicityAsyncCallback(uint64_t a1, uint64_t a2, int a3)
{
  v4 = (a1 + 48);
  if (*(*(a1 + 48) + 24) && CCLogStream::shouldLog())
  {
    AppleBCMWLANPowerManager::handleConfigureTVPMPeriodicityAsyncCallback(v4);
  }

  result = (*v4)[3];
  if (a3)
  {
    if (result)
    {
      result = CCLogStream::shouldLog();
      if (result)
      {
        return AppleBCMWLANPowerManager::handleConfigureTVPMPeriodicityAsyncCallback(v4);
      }
    }
  }

  else if (result)
  {
    result = CCLogStream::shouldLog();
    if (result)
    {
      return AppleBCMWLANPowerManager::handleConfigureTVPMPeriodicityAsyncCallback(v4);
    }
  }

  return result;
}

uint64_t AppleBCMWLANPowerManager::setMIMOPowerSaveProperties(uint64_t a1)
{
  v2 = a1 + 48;
  v1 = *(a1 + 48);
  if (v1[3])
  {
    shouldLog = CCLogStream::shouldLog();
    v1 = *v2;
    if (shouldLog)
    {
      CCLogStream::logNoticeIf(v1[3], 0x20uLL, "[dk] %s@%d:MIMO_PS: Enter %s \n", "setMIMOPowerSaveProperties", 1398, "setMIMOPowerSaveProperties");
      v1 = *v2;
    }
  }

  if (AppleBCMWLANCore::isMIMOPowerSaveEnabled(*v1) && *(*v2 + 24) && CCLogStream::shouldLog())
  {
    AppleBCMWLANPowerManager::setMIMOPowerSaveProperties(v2);
  }

  return 0;
}

{
  OUTLINED_FUNCTION_3(a1);
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logNoticeIf(v1, 0x20uLL, "[dk] %s@%d:MIMO_PS: Leave %s \n", v3, v4, v5);
}

uint64_t AppleBCMWLANPowerManager::setWiFiCallPowerPolicy(uint64_t a1)
{
  v2 = a1 + 48;
  v1 = *(a1 + 48);
  if (v1[3])
  {
    shouldLog = CCLogStream::shouldLog();
    v1 = *v2;
    if (shouldLog)
    {
      CCLogStream::logNoticeIf(v1[3], 0x20uLL, "[dk] %s@%d:MIMO_PS: Enter %s \n", "setWiFiCallPowerPolicy", 1608, "setWiFiCallPowerPolicy");
      v1 = *v2;
    }
  }

  result = AppleBCMWLANCore::isMIMOPowerSaveEnabled(*v1);
  if (result)
  {
    result = *(*v2 + 24);
    if (result)
    {
      result = CCLogStream::shouldLog();
      if (result)
      {
        return AppleBCMWLANPowerManager::setWiFiCallPowerPolicy(v2);
      }
    }
  }

  return result;
}

{
  OUTLINED_FUNCTION_3(a1);
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logNoticeIf(v1, 0x20uLL, "[dk] %s@%d:MIMO_PS: Leave %s \n", v3, v4, v5);
}

uint64_t AppleBCMWLANPowerManager::configureOCLParams(AppleBCMWLANPowerManager *this)
{
  v3 = this + 48;
  v2 = *(this + 6);
  if (v2[3])
  {
    shouldLog = CCLogStream::shouldLog();
    v2 = *v3;
    if (shouldLog)
    {
      CCLogStream::logNoticeIf(v2[3], 0x20uLL, "[dk] %s@%d:MIMO_PS: Enter %s \n", "configureOCLParams", 1941, "configureOCLParams");
      v2 = *v3;
    }
  }

  if (AppleBCMWLANCore::isOCLEnabled(*v2))
  {
    AppleBCMWLANPowerManager::configureOCLSetting(this, 1);
    v5 = AppleBCMWLANPowerManager::configureOCLRssiThreshold(this, -70);
    v6 = *(this + 6);
    if (v5)
    {
      if (*(v6 + 24))
      {
        v7 = CCLogStream::shouldLog();
        v6 = *v3;
        if (v7)
        {
          CCLogStream::logAlertIf(*(v6 + 24), 0x20uLL, "[dk] %s@%d:OCL: Couldn't configure OCL!", "configureOCLParams", 1957);
          v6 = *v3;
        }
      }
    }

    if (*(v6 + 24) && CCLogStream::shouldLog())
    {
      AppleBCMWLANPowerManager::configureOCLParams(v3);
    }
  }

  else
  {
    if (*(*v3 + 24) && CCLogStream::shouldLog())
    {
      AppleBCMWLANPowerManager::configureOCLParams(v3);
    }

    return 0;
  }

  return v5;
}

uint64_t AppleBCMWLANPowerManager::configureOCLSetting(AppleBCMWLANPowerManager *this, int a2)
{
  v5 = (this + 48);
  v4 = *(this + 6);
  if (v4[3])
  {
    shouldLog = CCLogStream::shouldLog();
    v4 = *v5;
    if (shouldLog)
    {
      CCLogStream::logNoticeIf(v4[3], 0x20uLL, "[dk] %s@%d:MIMO_PS: Enter %s \n", "configureOCLSetting", 2253, "configureOCLSetting");
      v4 = *v5;
    }
  }

  v12 = a2;
  if (AppleBCMWLANCore::isOCLEnabled(*v4))
  {
    v11[0] = &v12;
    v11[1] = 4;
    v7 = (*(***v5 + 88))(**v5);
    if ((*(*v7 + 136))(v7))
    {
      v8 = AppleBCMWLANCommander::sendIOVarSet(*(*(this + 6) + 8), "ocl_enable");
    }

    else
    {
      v8 = AppleBCMWLANCommander::runIOVarSet((*v5)[1], "ocl_enable", v11, 0, 0);
      v9 = (*v5)[3];
      if (v8)
      {
        if (v9 && CCLogStream::shouldLog())
        {
          AppleBCMWLANPowerManager::configureOCLSetting(v5);
        }
      }

      else
      {
        if (v9 && CCLogStream::shouldLog())
        {
          CCLogStream::logAlertIf((*v5)[3], 0x20uLL, "[dk] %s@%d:OCL Enabled Flag = %u \n", "configureOCLSetting", 2281, a2);
        }

        v8 = 0;
      }
    }

    if ((*v5)[3] && CCLogStream::shouldLog())
    {
      AppleBCMWLANPowerManager::configureOCLSetting(v5);
    }
  }

  else
  {
    if ((*v5)[3] && CCLogStream::shouldLog())
    {
      AppleBCMWLANPowerManager::configureOCLSetting(v5);
    }

    return 0;
  }

  return v8;
}

uint64_t AppleBCMWLANPowerManager::configureOCLRssiThreshold(AppleBCMWLANPowerManager *this, int a2)
{
  v11 = a2;
  v4 = (this + 48);
  v3 = *(this + 6);
  if (v3[3])
  {
    shouldLog = CCLogStream::shouldLog();
    v3 = *v4;
    if (shouldLog)
    {
      CCLogStream::logNoticeIf(v3[3], 0x20uLL, "[dk] %s@%d:MIMO_PS: Enter %s \n", "configureOCLRssiThreshold", 2292, "configureOCLRssiThreshold");
      v3 = *v4;
    }
  }

  if (AppleBCMWLANCore::isOCLEnabled(*v3))
  {
    v10[0] = &v11;
    v10[1] = 4;
    v6 = (*(***v4 + 88))(**v4);
    if ((*(*v6 + 136))(v6))
    {
      v7 = AppleBCMWLANCommander::sendIOVarSet(*(*(this + 6) + 8), "ocl_rssi_threshold");
    }

    else
    {
      v7 = AppleBCMWLANCommander::runIOVarSet((*v4)[1], "ocl_rssi_threshold", v10, 0, 0);
      v8 = (*v4)[3];
      if (v7)
      {
        if (v8 && CCLogStream::shouldLog())
        {
          AppleBCMWLANPowerManager::configureOCLRssiThreshold(v4);
        }
      }

      else
      {
        if (v8 && CCLogStream::shouldLog())
        {
          AppleBCMWLANPowerManager::configureOCLRssiThreshold(v4);
        }

        v7 = 0;
      }
    }

    if ((*v4)[3] && CCLogStream::shouldLog())
    {
      AppleBCMWLANPowerManager::configureOCLRssiThreshold(v4);
    }
  }

  else
  {
    if ((*v4)[3] && CCLogStream::shouldLog())
    {
      AppleBCMWLANPowerManager::configureOCLRssiThreshold(v4);
    }

    return 0;
  }

  return v7;
}

uint64_t AppleBCMWLANPowerManager::configurePowerSaveForAWDL(AppleBCMWLANPowerManager *this, int a2)
{
  v5 = (this + 48);
  v4 = *(this + 6);
  if (v4[3])
  {
    shouldLog = CCLogStream::shouldLog();
    v4 = *v5;
    if (shouldLog)
    {
      CCLogStream::logNoticeIf(v4[3], 0x20uLL, "[dk] %s@%d:MIMO_PS: Enter %s \n", "configurePowerSaveForAWDL", 1983, "configurePowerSaveForAWDL");
      v4 = *v5;
    }
  }

  isOCLEnabled = AppleBCMWLANCore::isOCLEnabled(*v4);
  v8 = *v5;
  if (isOCLEnabled)
  {
    if (AppleBCMWLANCore::isOCLAWDLSupported(*v8))
    {
      v9 = this;
      v10 = 1;
    }

    else
    {
      v9 = this;
      v10 = a2;
    }

    AppleBCMWLANPowerManager::configureOCLSetting(v9, v10);
  }

  else if (v8[3] && CCLogStream::shouldLog())
  {
    AppleBCMWLANPowerManager::configurePowerSaveForAWDL(v5);
  }

  v11 = *v5;
  if (a2)
  {
    AppleBCMWLANCore::setBeaconListenInterval(*v11);
    v11 = *v5;
  }

  if (AppleBCMWLANCore::checkForEarlyBeconTerminationSupport(*v11))
  {
    v12 = AppleBCMWLANPowerManager::configureEarlyBeaconTermination(this, a2);
    if (v12 && (*v5)[3] && CCLogStream::shouldLog())
    {
      CCLogStream::logAlert((*v5)[3], "[dk] %s@%d:Configuring Early Beacon termination failed with error %d", "configurePowerSaveForAWDL", 2013, v12);
    }
  }

  else
  {
    v12 = 0;
  }

  if (AppleBCMWLANCore::checkForOppPowerSaveSupport(**v5))
  {
    v12 = AppleBCMWLANPowerManager::configureOpportunisticPowerSave(this, a2);
    if (v12)
    {
      if ((*v5)[3] && CCLogStream::shouldLog())
      {
        CCLogStream::logAlert((*v5)[3], "[dk] %s@%d:Configuring Opportunistic Power Save failed with error %d", "configurePowerSaveForAWDL", 2020, v12);
      }
    }
  }

  if (AppleBCMWLANCore::checkForDigitalNapSupport(**v5))
  {
    v12 = AppleBCMWLANPowerManager::configureDigitalNapPowerSave(this, a2);
    if (v12)
    {
      if ((*v5)[3] && CCLogStream::shouldLog())
      {
        CCLogStream::logAlert((*v5)[3], "[dk] %s@%d:Configuring Digital Nap failed with error %d", "configurePowerSaveForAWDL", 2027, v12);
      }
    }
  }

  if ((*v5)[3] && CCLogStream::shouldLog())
  {
    AppleBCMWLANPowerManager::configurePowerSaveForAWDL(v5);
  }

  return v12;
}

uint64_t AppleBCMWLANPowerManager::configureEarlyBeaconTermination(AppleBCMWLANPowerManager *this, int a2)
{
  v5 = (this + 48);
  v4 = *(this + 6);
  if (v4[3])
  {
    shouldLog = CCLogStream::shouldLog();
    v4 = *v5;
    if (shouldLog)
    {
      CCLogStream::logNoticeIf(v4[3], 0x20uLL, "[dk] %s@%d:MIMO_PS: Enter %s \n", "configureEarlyBeaconTermination", 2083, "configureEarlyBeaconTermination");
      v4 = *v5;
    }
  }

  if (a2)
  {
    v7 = 3;
  }

  else
  {
    v7 = 0;
  }

  v16 = v7;
  BssManager = AppleBCMWLANCore::getBssManager(*v4);
  if (BssManager && IO80211BssManager::isAssociatedToAdhoc(BssManager))
  {
    v9 = 3758097122;
    if ((*v5)[3] && CCLogStream::shouldLog())
    {
      if (a2)
      {
        v10 = "enabling";
      }

      else
      {
        v10 = "disabling";
      }

      CCLogStream::logAlert((*v5)[3], "[dk] %s@%d:Currently associated to ad-hoc network. Not %s EBT\n", "configureEarlyBeaconTermination", 2089, v10);
    }
  }

  else
  {
    v15[0] = &v16;
    v15[1] = 4;
    v11 = (*(***v5 + 88))(**v5);
    if ((*(*v11 + 136))(v11))
    {
      v12 = AppleBCMWLANCommander::sendIOVarSet(*(*(this + 6) + 8), "bcntrim");
    }

    else
    {
      v12 = AppleBCMWLANCommander::runIOVarSet((*v5)[1], "bcntrim", v15, 0, 0);
    }

    v9 = v12;
    v13 = (*v5)[3];
    if (v9)
    {
      if (v13 && CCLogStream::shouldLog())
      {
        CCLogStream::logAlert((*v5)[3], "[dk] %s@%d:Configuring EBT failed with error %d \n");
      }
    }

    else if (v13 && CCLogStream::shouldLog())
    {
      CCLogStream::logAlert((*v5)[3], "[dk] %s@%d:EBT is %s\n");
    }

    if ((*v5)[3] && CCLogStream::shouldLog())
    {
      AppleBCMWLANPowerManager::configureEarlyBeaconTermination(v5);
    }
  }

  return v9;
}

uint64_t AppleBCMWLANPowerManager::configureOpportunisticPowerSave(AppleBCMWLANPowerManager *this, int a2)
{
  v4 = IOMallocZeroData();
  if (v4)
  {
    v5 = v4;
    *v4 = 786433;
    *(v4 + 4) = 0;
    if (a2)
    {
      v6 = 15;
    }

    else
    {
      v6 = 0;
    }

    *(v4 + 8) = v6;
    v7 = (*(***(this + 6) + 88))(**(this + 6));
    if ((*(*v7 + 136))(v7))
    {
      v15 = this;
      v16 = AppleBCMWLANPowerManager::handleOPSConfigurationAsyncCallback;
      v17 = 0;
      v8 = AppleBCMWLANCommander::sendIOVarSet(*(*(this + 6) + 8), "ops_cfg");
    }

    else
    {
      v12 = *(*(this + 6) + 8);
      v15 = v5;
      v16 = 12;
      v8 = AppleBCMWLANCommander::runIOVarSet(v12, "ops_cfg", &v15, 0, 0);
    }

    v9 = v8;
    v13 = *(*(this + 6) + 24);
    if (v9)
    {
      if (v13 && CCLogStream::shouldLog())
      {
        CCLogStream::logAlert(*(*(this + 6) + 24), "[dk] %s@%d:Configuring OPS failed with error %d \n");
      }
    }

    else if (v13 && CCLogStream::shouldLog())
    {
      CCLogStream::logAlert(*(*(this + 6) + 24), "[dk] %s@%d:OPS is %s\n");
    }

    IOFreeData();
  }

  else
  {
    v9 = 3758097085;
    v11 = *(this + 6);
    v10 = this + 48;
    if (*(v11 + 24) && CCLogStream::shouldLog())
    {
      AppleBCMWLANPowerManager::configureOpportunisticPowerSave(v10);
    }
  }

  return v9;
}

uint64_t AppleBCMWLANPowerManager::configureDigitalNapPowerSave(AppleBCMWLANPowerManager *this, int a2)
{
  v5 = this + 48;
  v4 = *(this + 6);
  if (v4[3])
  {
    shouldLog = CCLogStream::shouldLog();
    v4 = *v5;
    if (shouldLog)
    {
      CCLogStream::logNoticeIf(v4[3], 0x20uLL, "[dk] %s@%d:MIMO_PS: Enter %s \n", "configureDigitalNapPowerSave", 2177, "configureDigitalNapPowerSave");
      v4 = *v5;
    }
  }

  v13 = a2;
  v12[0] = &v13;
  v12[1] = 4;
  v7 = (*(**v4 + 88))();
  if ((*(*v7 + 136))(v7))
  {
    v8 = AppleBCMWLANCommander::sendIOVarSet(*(*(this + 6) + 8), "nap_enable");
  }

  else
  {
    v8 = AppleBCMWLANCommander::runIOVarSet(*(*v5 + 8), "nap_enable", v12, 0, 0);
  }

  v9 = v8;
  v10 = *(*v5 + 24);
  if (v9)
  {
    if (v10 && CCLogStream::shouldLog())
    {
      CCLogStream::logAlert(*(*v5 + 24), "[dk] %s@%d:Configuring nap_enable failed with error %d \n");
    }
  }

  else if (v10 && CCLogStream::shouldLog())
  {
    CCLogStream::logAlert(*(*v5 + 24), "[dk] %s@%d:Nap is %s\n");
  }

  if (*(*v5 + 24) && CCLogStream::shouldLog())
  {
    AppleBCMWLANPowerManager::configureDigitalNapPowerSave(v5);
  }

  return v9;
}

uint64_t AppleBCMWLANPowerManager::configurePowerSaveForVirtualInterface(AppleBCMWLANPowerManager *this, int a2)
{
  v5 = (this + 48);
  v4 = *(this + 6);
  if (v4[3])
  {
    shouldLog = CCLogStream::shouldLog();
    v4 = *v5;
    if (shouldLog)
    {
      CCLogStream::logNoticeIf(v4[3], 0x20uLL, "[dk] %s@%d:MIMO_PS: Enter %s \n", "configurePowerSaveForVirtualInterface", 2044, "configurePowerSaveForVirtualInterface");
      v4 = *v5;
    }
  }

  if (AppleBCMWLANCore::isOCLEnabled(*v4))
  {
    AppleBCMWLANPowerManager::configureOCLSetting(this, a2);
  }

  else if ((*v5)[3] && CCLogStream::shouldLog())
  {
    AppleBCMWLANPowerManager::configurePowerSaveForVirtualInterface(v5);
  }

  if (AppleBCMWLANCore::checkForEarlyBeconTerminationSupport(**v5))
  {
    v7 = AppleBCMWLANPowerManager::configureEarlyBeaconTermination(this, a2);
    if (v7 && (*v5)[3] && CCLogStream::shouldLog())
    {
      CCLogStream::logAlert((*v5)[3], "[dk] %s@%d:Configuring Early Beacon termination failed with error %d", "configurePowerSaveForVirtualInterface", 2058, v7);
    }
  }

  else
  {
    v7 = 0;
  }

  if (AppleBCMWLANCore::checkForOppPowerSaveSupport(**v5))
  {
    v7 = AppleBCMWLANPowerManager::configureOpportunisticPowerSave(this, a2);
    if (v7)
    {
      if ((*v5)[3] && CCLogStream::shouldLog())
      {
        CCLogStream::logAlert((*v5)[3], "[dk] %s@%d:Configuring Opportunistic Power Save failed with error %d", "configurePowerSaveForVirtualInterface", 2065, v7);
      }
    }
  }

  if (AppleBCMWLANCore::checkForDigitalNapSupport(**v5))
  {
    v7 = AppleBCMWLANPowerManager::configureDigitalNapPowerSave(this, a2);
    if (v7)
    {
      if ((*v5)[3] && CCLogStream::shouldLog())
      {
        CCLogStream::logAlert((*v5)[3], "[dk] %s@%d:Configuring Digital Nap failed with error %d", "configurePowerSaveForVirtualInterface", 2072, v7);
      }
    }
  }

  if ((*v5)[3] && CCLogStream::shouldLog())
  {
    AppleBCMWLANPowerManager::configurePowerSaveForVirtualInterface(v5);
  }

  return v7;
}

uint64_t AppleBCMWLANPowerManager::handleEBTConfigurationAsyncCallback(uint64_t a1, uint64_t a2, int a3)
{
  v4 = (a1 + 48);
  if (*(*(a1 + 48) + 24) && CCLogStream::shouldLog())
  {
    AppleBCMWLANPowerManager::handleEBTConfigurationAsyncCallback(v4);
  }

  result = (*v4)[3];
  if (a3)
  {
    if (result)
    {
      result = CCLogStream::shouldLog();
      if (result)
      {
        return AppleBCMWLANPowerManager::handleEBTConfigurationAsyncCallback(v4);
      }
    }
  }

  else if (result)
  {
    result = CCLogStream::shouldLog();
    if (result)
    {
      return AppleBCMWLANPowerManager::handleEBTConfigurationAsyncCallback(v4);
    }
  }

  return result;
}

uint64_t AppleBCMWLANPowerManager::handleOPSConfigurationAsyncCallback(uint64_t a1, uint64_t a2, int a3)
{
  v4 = (a1 + 48);
  if (*(*(a1 + 48) + 24) && CCLogStream::shouldLog())
  {
    AppleBCMWLANPowerManager::handleOPSConfigurationAsyncCallback(v4);
  }

  result = (*v4)[3];
  if (a3)
  {
    if (result)
    {
      result = CCLogStream::shouldLog();
      if (result)
      {
        return AppleBCMWLANPowerManager::handleOPSConfigurationAsyncCallback(v4);
      }
    }
  }

  else if (result)
  {
    result = CCLogStream::shouldLog();
    if (result)
    {
      return AppleBCMWLANPowerManager::handleOPSConfigurationAsyncCallback(v4);
    }
  }

  return result;
}

uint64_t AppleBCMWLANPowerManager::handleDigitalNapConfigurationAsyncCallback(uint64_t a1, uint64_t a2, int a3)
{
  v4 = (a1 + 48);
  if (*(*(a1 + 48) + 24) && CCLogStream::shouldLog())
  {
    AppleBCMWLANPowerManager::handleDigitalNapConfigurationAsyncCallback(v4);
  }

  result = (*v4)[3];
  if (a3)
  {
    if (result)
    {
      result = CCLogStream::shouldLog();
      if (result)
      {
        return AppleBCMWLANPowerManager::handleDigitalNapConfigurationAsyncCallback(v4);
      }
    }
  }

  else if (result)
  {
    result = CCLogStream::shouldLog();
    if (result)
    {
      return AppleBCMWLANPowerManager::handleDigitalNapConfigurationAsyncCallback(v4);
    }
  }

  return result;
}

uint64_t AppleBCMWLANPowerManager::handleOCLConfigurationAsyncCallback(uint64_t a1, uint64_t a2, int a3)
{
  v4 = (a1 + 48);
  if (*(*(a1 + 48) + 24) && CCLogStream::shouldLog())
  {
    AppleBCMWLANPowerManager::handleOCLConfigurationAsyncCallback(v4);
  }

  result = (*v4)[3];
  if (a3)
  {
    if (result)
    {
      result = CCLogStream::shouldLog();
      if (result)
      {
        return AppleBCMWLANPowerManager::handleOCLConfigurationAsyncCallback(v4);
      }
    }
  }

  else if (result)
  {
    result = CCLogStream::shouldLog();
    if (result)
    {
      return AppleBCMWLANPowerManager::handleOCLConfigurationAsyncCallback(v4);
    }
  }

  return result;
}

uint64_t AppleBCMWLANPowerManager::handleOCLRssiThresholdConfigurationAsyncCallback(uint64_t a1, uint64_t a2, int a3)
{
  v4 = (a1 + 48);
  if (*(*(a1 + 48) + 24) && CCLogStream::shouldLog())
  {
    AppleBCMWLANPowerManager::handleOCLRssiThresholdConfigurationAsyncCallback(v4);
  }

  result = (*v4)[3];
  if (a3)
  {
    if (result)
    {
      result = CCLogStream::shouldLog();
      if (result)
      {
        return AppleBCMWLANPowerManager::handleOCLRssiThresholdConfigurationAsyncCallback(v4);
      }
    }
  }

  else if (result)
  {
    result = CCLogStream::shouldLog();
    if (result)
    {
      return AppleBCMWLANPowerManager::handleOCLRssiThresholdConfigurationAsyncCallback(v4);
    }
  }

  return result;
}

AppleBCMWLANCore *AppleBCMWLANPowerManager::setMWSCoexIoVarsAsync_mws_ocl_coex_bitmap(AppleBCMWLANCore ***this, OSObject *a2, int a3)
{
  v5 = this + 6;
  if ((AppleBCMWLANCore::isOCLEnabled(*this[6]) & 1) == 0 && (AppleBCMWLANCore::checkForLtecxlbtSupport(**v5) & 1) == 0)
  {
    result = (*v5)[3];
    if (result)
    {
      result = CCLogStream::shouldLog();
      if (result)
      {
        return AppleBCMWLANPowerManager::setMWSCoexIoVarsAsync_mws_ocl_coex_bitmap(v5);
      }
    }

    return result;
  }

  result = (*v5)[3];
  if (result && (result = CCLogStream::shouldLog(), result))
  {
    v7 = "FALSE";
    if (a3)
    {
      v7 = "TRUE";
    }

    result = CCLogStream::logInfo((*v5)[3], "[dk] %s@%d:prop:%p useCachedValue:%s", "setMWSCoexIoVarsAsync_mws_ocl_coex_bitmap", 3397, a2, v7);
    if (a3)
    {
LABEL_6:
      if (*(*v5 + 154))
      {
        goto LABEL_66;
      }

      return result;
    }
  }

  else if (a3)
  {
    goto LABEL_6;
  }

  if (!a2)
  {
    result = (*v5)[3];
    if (result)
    {
      result = CCLogStream::shouldLog();
      if (result)
      {
        return AppleBCMWLANPowerManager::setMWSCoexIoVarsAsync_mws_ocl_coex_bitmap(v5);
      }
    }

    return result;
  }

  v8 = OSMetaClassBase::safeMetaCast(a2, gOSDictionaryMetaClass);
  if (!v8)
  {
    goto LABEL_66;
  }

  Object = OSDictionary::getObject(v8, "MWS_OCL_DISABLE_CHANNELS");
  if (!Object)
  {
    if ((*v5)[3] && CCLogStream::shouldLog())
    {
      AppleBCMWLANPowerManager::setMWSCoexIoVarsAsync_mws_ocl_coex_bitmap(v5);
    }

    goto LABEL_66;
  }

  v10 = OSMetaClassBase::safeMetaCast(Object, gOSArrayMetaClass);
  if (!v10 && (*v5)[3] && CCLogStream::shouldLog())
  {
    AppleBCMWLANPowerManager::setMWSCoexIoVarsAsync_mws_ocl_coex_bitmap(v5);
  }

  v11 = (v10->getCount)(v10);
  if (!v11)
  {
    LOWORD(v15) = -1;
    LOWORD(v14) = 0x3FFF;
    LOWORD(v37) = 31;
    LOWORD(v38) = -1;
    goto LABEL_65;
  }

  v12 = v11;
  v13 = 0;
  v14 = 0x3FFF;
  v37 = 31;
  v38 = 0xFFFF;
  v15 = 0xFFFF;
  while (1)
  {
    v16 = OSArray::getObject(v10, v13);
    v17 = OSMetaClassBase::safeMetaCast(v16, gOSDictionaryMetaClass);
    if (!v17)
    {
      goto LABEL_53;
    }

    v18 = OSDictionary::getObject(v17, "MWS_Channel_Number");
    v19 = OSMetaClassBase::safeMetaCast(v18, gOSNumberMetaClass);
    if (!v19)
    {
      goto LABEL_53;
    }

    v20 = OSNumber::unsigned8BitValue(v19);
    if (!v20)
    {
      goto LABEL_53;
    }

    v21 = v20;
    if (v20 <= 0xE)
    {
      v14 &= ~(1 << v20);
      goto LABEL_53;
    }

    if (v20 - 34 <= 0x44)
    {
      v22 = 16;
      v23 = &byte_1003B0729;
      while (*(v23 - 1) != v20)
      {
        v23 += 2;
        if (!--v22)
        {
          goto LABEL_50;
        }
      }

      v26 = *v23;
      if (v26 >= 0x10)
      {
        if ((*v5)[3] && CCLogStream::shouldLog())
        {
          CCLogStream::logInfo((*v5)[3], "[dk] %s@%d:Error: mws_coex_bitmap invalid low 5G channel map index %d");
        }

        goto LABEL_65;
      }

      v15 &= ~(1 << v26);
      goto LABEL_53;
    }

    if (v20 - 104 > 0x2F)
    {
      break;
    }

    v24 = 16;
    v25 = &byte_1003B0749;
    while (*(v25 - 1) != v20)
    {
      v25 += 2;
      if (!--v24)
      {
        goto LABEL_50;
      }
    }

    v29 = *v25;
    if (v29 >= 0x10)
    {
      if ((*v5)[3] && CCLogStream::shouldLog())
      {
        CCLogStream::logInfo((*v5)[3], "[dk] %s@%d:Error: mws_coex_bitmap invalid mid 5G channel map index %d");
      }

      goto LABEL_65;
    }

    v38 &= ~(1 << v29);
LABEL_53:
    if (++v13 == v12)
    {
      goto LABEL_65;
    }
  }

  if (v20 - 153 > 0xC)
  {
    if ((*v5)[3] && CCLogStream::shouldLog())
    {
      CCLogStream::logInfo((*v5)[3], "[dk] %s@%d:Error: mws_coex_bitmap invalid channel(%d - %d/%d)\n", "setMWSCoexIoVarsAsync_mws_ocl_coex_bitmap", 3487, v21, v13 + 1, v12);
    }

LABEL_50:
    if ((*v5)[3] && CCLogStream::shouldLog())
    {
      CCLogStream::logInfo((*v5)[3], "[dk] %s@%d:Error: mws_ocl_coex_bitmap invalid channel(%d)\n", "setMWSCoexIoVarsAsync_mws_ocl_coex_bitmap", 3491, v21);
    }

    goto LABEL_53;
  }

  v27 = 5;
  v28 = &byte_1003B0769;
  while (*(v28 - 1) != v20)
  {
    v28 += 2;
    if (!--v27)
    {
      goto LABEL_50;
    }
  }

  v30 = *v28;
  if (v30 < 0x10)
  {
    v37 &= ~(1 << v30);
    goto LABEL_53;
  }

  if ((*v5)[3] && CCLogStream::shouldLog())
  {
    CCLogStream::logInfo((*v5)[3], "[dk] %s@%d:Error: mws_coex_bitmap invalid hi 5G channel map index %d");
  }

LABEL_65:
  v31 = *v5;
  *(v31 + 72) = 1;
  *(v31 + 73) = v14;
  *(v31 + 74) = v15;
  *(v31 + 75) = v38;
  *(v31 + 76) = v37;
  *(*v5 + 154) = 1;
LABEL_66:
  v32 = *v5;
  if ((*v5)[3])
  {
    shouldLog = CCLogStream::shouldLog();
    v32 = *v5;
    if (shouldLog)
    {
      CCLogStream::logNotice(v32[3], "[dk] %s@%d:\t \n:%s:  mws_ocl_coex_bitmap: version:%u 2GMap:(0x%0x) 5GLoMap:(0x%0x) 5GMidMap:(0x%0x) 5GHiMap:(0x%0x) \n", "setMWSCoexIoVarsAsync_mws_ocl_coex_bitmap", 3516, "setMWSCoexIoVarsAsync_mws_ocl_coex_bitmap", *(v32 + 72), *(v32 + 73), *(v32 + 74), *(v32 + 75), *(v32 + 76));
      v32 = *v5;
    }
  }

  v36 = *v32;
  v35 = (v32 + 18);
  v34 = v36;

  return AppleBCMWLANCore::runSetMwsCoexIoVarsAsync_mws_ocl_coex_bitmap(v34, v35);
}

uint64_t AppleBCMWLANPowerManager::configureTVPM(AppleBCMWLANPowerManager *this)
{
  v3 = (this + 48);
  v2 = *(this + 6);
  if (v2[3])
  {
    shouldLog = CCLogStream::shouldLog();
    v2 = *v3;
    if (shouldLog)
    {
      CCLogStream::logNoticeIf(v2[3], 0x20uLL, "[dk] %s@%d:MIMO_PS: Enter %s \n", "configureTVPM", 3529, "configureTVPM");
      v2 = *v3;
    }
  }

  if (!AppleBCMWLANCore::checkForTVPMSupport(*v2))
  {
    return 0;
  }

  v5 = AppleBCMWLANPowerManager::configureTVPMPeriodicity(this, 10);
  v6 = *(this + 6);
  v7 = v6[3];
  if (!v5)
  {
    if (v7)
    {
      v8 = CCLogStream::shouldLog();
      v6 = *v3;
      if (v8)
      {
        CCLogStream::logInfo(v6[3], "[dk] %s@%d:Configured TVPM\n", "configureTVPM", 3550);
        v6 = *v3;
      }
    }

    if (v6[3] && CCLogStream::shouldLog())
    {
      AppleBCMWLANPowerManager::configureTVPM(v3);
    }

    return 0;
  }

  if (v7 && CCLogStream::shouldLog())
  {
    AppleBCMWLANPowerManager::configureTVPM(v3);
  }

  return v5;
}

uint64_t AppleBCMWLANPowerManager::getOPSStatus(uint64_t a1, __int16 *a2)
{
  v4 = a1 + 48;
  v3 = *(a1 + 48);
  if (v3[3])
  {
    shouldLog = CCLogStream::shouldLog();
    v3 = *v4;
    if (shouldLog)
    {
      CCLogStream::logNoticeIf(v3[3], 0x20uLL, "[dk] %s@%d:MIMO_PS: Enter %s \n", "getOPSStatus", 3626, "getOPSStatus");
      v3 = *v4;
    }
  }

  v6 = AppleBCMWLANCore::checkForOppPowerSaveSupport(*v3);
  v7 = *v4;
  if (v6)
  {
    if (AppleBCMWLANCore::is4387Up(*v7))
    {
      *(a2 + 5) = 0uLL;
      *(a2 + 34) = 0uLL;
      *(a2 + 26) = 0uLL;
      *(a2 + 18) = 0uLL;
      *(a2 + 10) = 0uLL;
      *(a2 + 2) = 0uLL;
      v8 = 96;
      v9 = 2;
      v10 = 96;
    }

    else
    {
      *(a2 + 34) = 0uLL;
      *(a2 + 26) = 0uLL;
      *(a2 + 18) = 0uLL;
      *(a2 + 10) = 0uLL;
      *(a2 + 2) = 0uLL;
      v10 = 84;
      v9 = 1;
      v8 = 84;
    }

    *a2 = v9;
    a2[1] = v8;
    v12 = IOMallocZeroData();
    v13 = *v4;
    if (v12)
    {
      v14 = v12;
      AppleBCMWLANCore::is4387Up(*v13);
      memcpy(v14, a2, v10);
      v19[0] = v14;
      v19[1] = v10 | (v10 << 32);
      v18[0] = v14;
      v18[1] = v10;
      v15 = AppleBCMWLANCommander::runIOVarGet(*(*v4 + 8), "ops_status", v18, v19, 0);
      if (v15)
      {
        v11 = v15;
        if (*(*v4 + 24) && CCLogStream::shouldLog())
        {
          AppleBCMWLANPowerManager::getOPSStatus(v4);
        }
      }

      else
      {
        memcpy(a2, v14, v10);
        v16 = *v4;
        if (*a2 - 3 > 0xFFFFFFFD)
        {
          if (AppleBCMWLANCore::is4387Up(*v16))
          {
            if (*a2 == 2 && *(*v4 + 24) && CCLogStream::shouldLog())
            {
              AppleBCMWLANPowerManager::getOPSStatus(v4);
            }
          }

          else if (*(*v4 + 24) && CCLogStream::shouldLog())
          {
            AppleBCMWLANPowerManager::getOPSStatus(v4);
          }

          if (*(*v4 + 24) && CCLogStream::shouldLog())
          {
            AppleBCMWLANPowerManager::getOPSStatus(v4);
          }

          v11 = 0;
        }

        else
        {
          v11 = 3758097084;
          if (v16[3] && CCLogStream::shouldLog())
          {
            AppleBCMWLANPowerManager::getOPSStatus(v4);
          }
        }
      }

      IOFreeData();
    }

    else
    {
      v11 = 3758097084;
      if (v13[3] && CCLogStream::shouldLog())
      {
        AppleBCMWLANPowerManager::getOPSStatus(v4);
      }
    }
  }

  else
  {
    v11 = 3758097084;
    if (v7[3] && CCLogStream::shouldLog())
    {
      AppleBCMWLANPowerManager::getOPSStatus(v4);
    }
  }

  return v11;
}

uint64_t AppleBCMWLANPowerManager::getEBTStatus(uint64_t a1, uint64_t a2)
{
  v4 = a1 + 48;
  v3 = *(a1 + 48);
  if (v3[3])
  {
    shouldLog = CCLogStream::shouldLog();
    v3 = *v4;
    if (shouldLog)
    {
      CCLogStream::logNoticeIf(v3[3], 0x20uLL, "[dk] %s@%d:MIMO_PS: Enter %s \n", "getEBTStatus", 3693, "getEBTStatus");
      v3 = *v4;
    }
  }

  v21 = 524289;
  if (AppleBCMWLANCore::checkForEarlyBeconTerminationSupport(*v3))
  {
    MaxCmdRxPayload = AppleBCMWLANCommander::getMaxCmdRxPayload(*(*v4 + 8));
    v7 = AppleBCMWLANCommander::getMaxCmdRxPayload(*(*v4 + 8));
    if (MaxCmdRxPayload)
    {
      v8 = a2;
    }

    else
    {
      v8 = 0;
    }

    if (MaxCmdRxPayload)
    {
      v9 = a2 == 0;
    }

    else
    {
      v9 = 1;
    }

    v10 = (v7 << 32) | MaxCmdRxPayload;
    if (v9)
    {
      v10 = 0;
    }

    v20[0] = v8;
    v20[1] = v10;
    v11 = *(*v4 + 8);
    v19[0] = &v21;
    v19[1] = 8;
    v12 = AppleBCMWLANCommander::runIOVarGet(v11, "bcntrim_status", v19, v20, 0);
    v13 = *v4;
    v14 = *(*v4 + 24);
    if (v12)
    {
      if (v14)
      {
        v15 = *(*v4 + 24);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANPowerManager::getEBTStatus(v4);
        }
      }
    }

    else
    {
      if (v14)
      {
        v17 = *(*v4 + 24);
        v18 = CCLogStream::shouldLog();
        v13 = *v4;
        if (v18)
        {
          AppleBCMWLANPowerManager::getEBTStatus(v13, a2);
          v13 = v19[0];
        }
      }

      if (*(v13 + 24) && CCLogStream::shouldLog())
      {
        AppleBCMWLANPowerManager::getEBTStatus(v4);
      }
    }
  }

  else
  {
    if (*(*v4 + 24) && CCLogStream::shouldLog())
    {
      AppleBCMWLANPowerManager::getEBTStatus(v4);
    }

    return 0;
  }

  return v12;
}

uint64_t AppleBCMWLANPowerManager::handleConfigureMPCThresholdAsyncCallback(uint64_t result, uint64_t a2, int a3)
{
  if (a3)
  {
    v3 = (result + 48);
    result = *(*(result + 48) + 24);
    if (result)
    {
      result = CCLogStream::shouldLog();
      if (result)
      {
        return AppleBCMWLANPowerManager::handleConfigureMPCThresholdAsyncCallback(v3);
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANPowerManager::handleConfigureBCMInterfaceStateAsyncCallback(uint64_t result, uint64_t a2, int a3)
{
  if (a3)
  {
    v3 = (result + 48);
    result = *(*(result + 48) + 24);
    if (result)
    {
      result = CCLogStream::shouldLog();
      if (result)
      {
        return AppleBCMWLANPowerManager::handleConfigureBCMInterfaceStateAsyncCallback(v3);
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANPowerManager::configureUnAssocFRTS(AppleBCMWLANPowerManager *this)
{
  v12 = 20;
  v2 = (this + 48);
  v1 = *(this + 6);
  if (v1)
  {
    v4 = 3758097095;
    if (AppleBCMWLANCore::checkForScanCoreSupport(*v1) && (*(*v2 + 180) & 1) == 0 && (AppleBCMWLANCore::isAssociated(**v2) & 1) == 0)
    {
      v5 = AppleBCMWLANPowerManager::configureBCMInterface(this, 0);
      if (v5)
      {
        v4 = v5;
        *(*v2 + 180) = 1;
      }

      else
      {
        v11[0] = &v12;
        v11[1] = 4;
        v6 = (*(***v2 + 88))(**v2);
        if ((*(*v6 + 136))(v6))
        {
          v10[0] = this;
          v10[1] = AppleBCMWLANPowerManager::handleConfigureMPCThresholdAsyncCallback;
          v10[2] = 0;
          v7 = AppleBCMWLANCommander::sendIOVarSet(*(*(this + 6) + 8), "mpc_threshold");
        }

        else
        {
          v7 = AppleBCMWLANCommander::runIOVarSet((*v2)[1], "mpc_threshold", v11, 0, 0);
        }

        if (v7 && (*v2)[3] && CCLogStream::shouldLog())
        {
          AppleBCMWLANPowerManager::configureUnAssocFRTS(v2);
        }

        v4 = AppleBCMWLANPowerManager::configureBCMInterface(this, 1);
        v8 = *(this + 6);
        if (v4)
        {
          *(v8 + 180) = 1;
          CCFaultReporter::reportFault((*v2)[6], 5u, "/Library/Caches/com.apple.xbs/Sources/AppleBCMWLANV3_driverkit/AppleBCMWLANPowerManager.cpp", 0xF81u, "configureUnAssocFRTS", 0, -469790462, 0);
        }

        else if (*(v8 + 24) && CCLogStream::shouldLog())
        {
          CCLogStream::logInfo((*v2)[3], "[dk] %s@%d:UnAssoc FRTS is Configred to = %d\n", "configureUnAssocFRTS", 3971, v12);
        }
      }
    }
  }

  else
  {
    AppleBCMWLANPowerManager::configureUnAssocFRTS(this + 48, v10);
    return LODWORD(v10[0]);
  }

  return v4;
}

uint64_t AppleBCMWLANPowerManager::configureBCMInterface(AppleBCMWLANCore ***this, int a2)
{
  v4 = (this + 6);
  if (!AppleBCMWLANCore::checkForScanCoreSupport(*this[6]))
  {
    return 3758097095;
  }

  v5 = (*(***v4 + 88))(**v4);
  v6 = (*(*v5 + 136))(v5);
  if (a2)
  {
    if (v6)
    {
      v15 = this;
      v16 = AppleBCMWLANPowerManager::handleConfigureBCMInterfaceStateAsyncCallback;
      v17 = 0;
      v7 = this[6][1];
      v8 = 2;
LABEL_8:
      v10 = AppleBCMWLANCommander::sendIOCtlSet(v7, v8, &kNoTxPayload, kNoRxExpected, &v15, 0);
      goto LABEL_12;
    }

    v11 = (*v4)[1];
    v12 = 2;
  }

  else
  {
    if (v6)
    {
      v15 = this;
      v16 = AppleBCMWLANPowerManager::handleConfigureBCMInterfaceStateAsyncCallback;
      v17 = 0;
      v7 = this[6][1];
      v8 = 3;
      goto LABEL_8;
    }

    v11 = (*v4)[1];
    v12 = 3;
  }

  v10 = AppleBCMWLANCommander::runIOCtlSet(v11, v12, &kNoTxPayload, 0, 0);
LABEL_12:
  v9 = v10;
  v13 = (*v4)[3];
  if (v9)
  {
    if (v13 && CCLogStream::shouldLog())
    {
      AppleBCMWLANPowerManager::configureBCMInterface(v4, a2);
    }
  }

  else
  {
    if (v13 && CCLogStream::shouldLog())
    {
      AppleBCMWLANPowerManager::configureBCMInterface(v4, a2);
    }

    return 0;
  }

  return v9;
}

uint64_t AppleBCMWLANPowerManager::setHtSisoOnly(AppleBCMWLANPowerManager *this, int a2)
{
  v3 = (this + 48);
  v2 = *(this + 6);
  v8 = a2;
  v4 = *(v2 + 8);
  v7[0] = &v8;
  v7[1] = 4;
  v5 = AppleBCMWLANCommander::runIOVarSet(v4, "ht_siso_only", v7, 0, 0);
  if ((*v3)[3] && CCLogStream::shouldLog())
  {
    AppleBCMWLANPowerManager::setHtSisoOnly(v3);
  }

  return v5;
}

BOOL AppleBCMWLANPowerManager::getHtSisoOnly(AppleBCMWLANPowerManager *this)
{
  v4 = 0;
  v3[0] = &v4;
  v3[1] = 0x400040004;
  v1 = (this + 48);
  AppleBCMWLANCommander::runIOVarGet(*(*(this + 6) + 8), "ht_siso_only", &kNoTxPayload, v3, 0);
  if ((*v1)[3] && CCLogStream::shouldLog())
  {
    AppleBCMWLANPowerManager::getHtSisoOnly(v1);
  }

  return v4 != 0;
}

uint64_t *OUTLINED_FUNCTION_1_21(uint64_t a1)
{
  v1 = *(a1 + 24);
  result = *a1;
  v3 = *result;
  return result;
}

void OUTLINED_FUNCTION_7_15(uint64_t a1, unsigned __int16 *a2, unsigned __int16 *a3, unsigned __int8 *a4)
{
  v4 = *a2;
  v5 = *a3;
  v6 = *a4;
  v7 = *(a2 + 5);
  v8 = *(a2 + 2);
  v9 = *(a2 + 3);
  v10 = *(a2 + 4);
  v11 = *(a2 + 5);
  v12 = *(a2 + 6);
  v13 = *(a2 + 7);
  v14 = *(a2 + 8);
  v15 = *(a2 + 9);
}

uint64_t OUTLINED_FUNCTION_8_14(uint64_t a1, uint64_t a2, const char *a3)
{

  return CCLogStream::logAlertIf(v3, 0x20uLL, a3);
}

uint64_t OUTLINED_FUNCTION_9_11(uint64_t a1, uint64_t a2, const char *a3)
{

  return CCLogStream::logAlertIf(v3, 0x20uLL, a3);
}

AppleBCMWLANPCIeMMIOHistory *AppleBCMWLANPCIeMMIOHistory::withLogger(AppleBCMWLANPCIeMMIOHistory *this, CCLogStream *a2)
{
  v5 = 0xAAAAAAAAAAAAAAAALL;
  if (OSObjectAllocate(gAppleBCMWLANPCIeMMIOHistoryMetaClass, &v5))
  {
    return 0;
  }

  v3 = v5;
  if (v5 && (AppleBCMWLANPCIeMMIOHistory::initWithLogger(v5, this) & 1) == 0)
  {
    (*(*v3 + 16))(v3);
    return 0;
  }

  return v3;
}

uint64_t AppleBCMWLANPCIeMMIOHistory::initWithLogger(OSObject *this, CCLogStream *a2)
{
  result = OSObject::init(this);
  if (result)
  {
    result = IOMallocZeroTyped();
    this[1].OSMetaClassBase::__vftable = result;
    if (result)
    {
      *(result + 32) = a2;
      Dispatch = this[1].Dispatch;
      if (Dispatch)
      {
        (*(*Dispatch + 8))(Dispatch);
        LOBYTE(this[1].getMetaClass) = 1;
        HIDWORD(this[1].release) = 256;
        IOParseBootArgNumber("wlan.pcie.mmiologdepth", &this[1].release + 4, 4);
        v6 = this[1].OSMetaClassBase::__vftable;
        release_high = HIDWORD(v6->release);
        if (release_high <= 0x1F)
        {
          HIDWORD(v6->release) = 32;
          v6 = this[1].OSMetaClassBase::__vftable;
          release_high = HIDWORD(v6->release);
        }

        if (release_high >= 0x401)
        {
          HIDWORD(v6->release) = 1024;
          v8 = HIDWORD(this[1].release);
        }

        this[1].retain = IOMallocZeroTyped();
        if (this[1].retain)
        {
          return 1;
        }

        else
        {
          ClassNameHelper = getClassNameHelper(this);
          IOLog("%s::%s(): Unable allocate records\n", ClassNameHelper, "initWithLogger");
          result = this[1].Dispatch;
          if (result)
          {
            (*(*result + 16))(result);
            result = 0;
            this[1].Dispatch = 0;
          }
        }
      }

      else
      {
        v9 = getClassNameHelper(this);
        IOLog("%s::%s(): Unable to get debug logger\n", v9, "initWithLogger");
        return 0;
      }
    }
  }

  return result;
}

void AppleBCMWLANPCIeMMIOHistory::free(OSObject *this)
{
  v2 = this[1].OSMetaClassBase::__vftable;
  if (v2)
  {
    Dispatch = v2->Dispatch;
    if (Dispatch)
    {
      (*(*Dispatch + 16))(v2->Dispatch);
      this[1].Dispatch = 0;
      v2 = this[1].OSMetaClassBase::__vftable;
    }

    if (v2->retain)
    {
      IOFree(v2->retain, 56 * HIDWORD(v2->release));
      v2 = this[1].OSMetaClassBase::__vftable;
    }

    memset_s(v2, 0x38uLL, 0, 0x38uLL);
    v4 = this[1].OSMetaClassBase::__vftable;
    if (v4)
    {
      IOFree(v4, 0x38uLL);
      this[1].OSMetaClassBase::__vftable = 0;
    }
  }

  OSObject::free(this);
}

uint64_t AppleBCMWLANPCIeMMIOHistory::recordMMIO(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v6 = *(result + 40);
  if (*v6 == 1)
  {
    v10 = a3;
    v12 = result;
    v13 = *(v6 + 48);
    if (v13)
    {
      result = v13(*(v6 + 40), a2, a3, a4);
      if (!result)
      {
        return result;
      }

      v6 = *(v12 + 40);
    }

    v14 = *(v6 + 16);
    if (v14 >= *(v6 + 20))
    {
      *(v6 + 16) = 0;
      v14 = *(*(v12 + 40) + 16);
    }

    mach_continuous_time();
    v15 = *(*(v12 + 40) + 8);
    result = absolutetime_to_nanoseconds();
    *(*(*(v12 + 40) + 8) + 56 * v14 + 48) = a2;
    *(*(*(v12 + 40) + 8) + 56 * v14 + 16) = v10;
    *(*(*(v12 + 40) + 8) + 56 * v14 + 24) = a4;
    *(*(*(v12 + 40) + 8) + 56 * v14 + 32) = a5;
    *(*(*(v12 + 40) + 8) + 56 * v14 + 40) = a6;
    v16 = *(v12 + 40);
    v17 = *(v16 + 24);
    *(v16 + 24) = v17 + 1;
    *(*(*(v12 + 40) + 8) + 56 * v14 + 8) = v17;
    ++*(*(v12 + 40) + 16);
  }

  return result;
}

uint64_t AppleBCMWLANPCIeMMIOHistory::dumpMMIO1lineToBuffer(int a1, uint64_t a2, char *__str, size_t __size)
{
  v4 = *(a2 + 16);
  v5 = "PW";
  v6 = "W";
  if (v4 == 1)
  {
    v6 = "R";
  }

  if (v4 != 2)
  {
    v5 = v6;
  }

  if (v4)
  {
    v7 = v5;
  }

  else
  {
    v7 = "PR";
  }

  return snprintf(__str, __size, "%lld %06llu.%06llu %18s 0x%llx %s %dB: 0x%llx\n", *(a2 + 8), *a2 / 0x3B9ACA00uLL, *a2 % 0x3B9ACA00uLL / 0x3E8, *(a2 + 48), *(a2 + 24), v7, *(a2 + 40), *(a2 + 32));
}

uint64_t AppleBCMWLANPCIeMMIOHistory::dumpMMIOlogToBuffer(AppleBCMWLANPCIeMMIOHistory *this, char *a2, uint64_t a3)
{
  v6 = 56 * *(*(this + 5) + 20);
  v7 = IOMallocZeroData();
  if (!v7)
  {
    return 12;
  }

  v8 = v7;
  v9 = *(this + 5);
  v10 = *(v9 + 16);
  LODWORD(v11) = memcpy(v7, *(v9 + 8), 56 * *(v9 + 20));
  v12 = *(this + 5);
  v13 = 0;
  if (v10 < *(v12 + 20) && a3 >= 1)
  {
    v15 = v8 + 56 * v10;
    v16 = v10 + 1;
    do
    {
      v11 = AppleBCMWLANPCIeMMIOHistory::dumpMMIO1lineToBuffer(v11, v15, &a2[v13], a3 - v13);
      v13 += v11;
      v12 = *(this + 5);
      v15 += 56;
    }

    while (v16++ < *(v12 + 20) && v13 < a3);
  }

  if (v10 && v13 < a3)
  {
    v19 = 1;
    v20 = v8;
    do
    {
      v11 = AppleBCMWLANPCIeMMIOHistory::dumpMMIO1lineToBuffer(v11, v20, &a2[v13], a3 - v13);
      if (v19 >= v10)
      {
        break;
      }

      v13 += v11;
      v20 += 56;
      ++v19;
    }

    while (v13 < a3);
    v12 = *(this + 5);
  }

  if (v10 != *(v12 + 16) && *(v12 + 32))
  {
    if (CCLogStream::shouldLog())
    {
      CCLogStream::logWarn(*(*(this + 5) + 32), "[dk] %s@%d:index changed! %d =>%d\n", "dumpMMIOlogToBuffer", 238, v10, *(*(this + 5) + 16));
    }
  }

  IOFreeData();
  return 0;
}

uint64_t AppleBCMWLANPCIeMMIOHistory::recordMMIOBackPlane(AppleBCMWLANPCIeMMIOHistory *this, uint64_t a2, uint64_t a3, char a4, int a5, int a6)
{
  if (a5)
  {
    v7 = 0;
  }

  else
  {
    v7 = 2;
  }

  if (a5)
  {
    v8 = 1;
  }

  else
  {
    v8 = 3;
  }

  if (a6)
  {
    v9 = v7;
  }

  else
  {
    v9 = v8;
  }

  return AppleBCMWLANPCIeMMIOHistory::recordMMIO(this, "BackPl", v9, a2, a3, a4);
}

uint64_t AppleBCMWLANPCIeMMIOHistory::recordMMIOMemory(AppleBCMWLANPCIeMMIOHistory *this, uint64_t a2, uint64_t a3, char a4, int a5, int a6)
{
  if (a5)
  {
    v7 = 0;
  }

  else
  {
    v7 = 2;
  }

  if (a5)
  {
    v8 = 1;
  }

  else
  {
    v8 = 3;
  }

  if (a6)
  {
    v9 = v7;
  }

  else
  {
    v9 = v8;
  }

  return AppleBCMWLANPCIeMMIOHistory::recordMMIO(this, "Memory", v9, a2, a3, a4);
}

uint64_t AppleBCMWLANPCIeMMIOHistory::recordMMIOConfig(AppleBCMWLANPCIeMMIOHistory *this, unsigned int a2, unsigned int a3, char a4, int a5, int a6)
{
  if (a5)
  {
    LODWORD(v6) = 0;
  }

  else
  {
    LODWORD(v6) = 2;
  }

  if (a5)
  {
    v7 = 1;
  }

  else
  {
    v7 = 3;
  }

  if (a6)
  {
    v6 = v6;
  }

  else
  {
    v6 = v7;
  }

  return AppleBCMWLANPCIeMMIOHistory::recordMMIO(this, "Config", v6, a2, a3, a4);
}

BOOL AppleBCMWLANTxItemRing::initWithOptions(AppleBCMWLANTxItemRing *this, OSObject *a2, void (*a3)(OSObject *, ...), void (*a4)(OSObject *, AppleBCMWLANByteRing *, int, void *))
{
  v6 = a3 != 0;
  if (!AppleBCMWLANItemRing::initWithOwnerAndActions(this, a2, a3, a4))
  {
    return 0;
  }

  v7 = IOMallocZeroTyped();
  *(this + 12) = v7;
  if (!v7)
  {
    return 0;
  }

  *v7 = a3;
  return v6;
}

uint64_t AppleBCMWLANTxItemRing::free(AppleBCMWLANTxItemRing *this)
{
  v2 = *(this + 12);
  if (v2)
  {
    *v2 = 0;
    memset_s(*(this + 12), 8uLL, 0, 8uLL);
    v3 = *(this + 12);
    if (v3)
    {
      IOFree(v3, 8uLL);
      *(this + 12) = 0;
    }
  }

  return AppleBCMWLANItemRing::free(this);
}

BOOL AppleBCMWLANRxItemRing::initWithOptions(AppleBCMWLANRxItemRing *this, OSObject *a2, void (*a3)(OSObject *, ...), void (*a4)(OSObject *, AppleBCMWLANByteRing *, int, void *))
{
  v6 = a3 != 0;
  if (!AppleBCMWLANItemRing::initWithOwnerAndActions(this, a2, a3, a4))
  {
    return 0;
  }

  v7 = IOMallocZeroTyped();
  *(this + 12) = v7;
  if (!v7)
  {
    return 0;
  }

  *v7 = a3;
  return v6;
}

IO80211BSSBeacon *AppleBCMWLANBSSBeacon::fromWLBSSInfo(const void *a1, __int16 a2, size_t a3, uint64_t a4, uint64_t a5)
{
  v12 = 0xAAAAAAAAAAAAAAAALL;
  if (OSObjectAllocate(gAppleBCMWLANBSSBeaconMetaClass, &v12))
  {
    return 0;
  }

  v10 = v12;
  if (v12 && (((v12->OSMetaClassBase::__vftable[1].getMetaClass)(v12, a4, a5) & 1) == 0 || (AppleBCMWLANBSSBeacon::setBeaconData(v10, a1, a2, a3) & 1) == 0))
  {
    (*(*v10 + 16))(v10);
    return 0;
  }

  return v10;
}

uint64_t AppleBCMWLANBSSBeacon::setBeaconData(IO80211BSSBeacon *a1, const void *a2, __int16 a3, size_t a4)
{
  v8 = IOMallocZeroData();
  if (!v8)
  {
    AppleBCMWLANBSSBeacon::setBeaconData();
  }

  v9 = v8;
  *(a1 + 7) = 0;
  v10 = IOMallocZeroData();
  v11 = v10;
  if (v10)
  {
    if (a4)
    {
      memcpy(v10, a2, a4);
      if (a4 > 0x7B)
      {
        if (AppleBCMWLANBSSBeacon::getBeaconMsgFromWLBSSInfo(v9, (v9 + 68), v11, a3, a4))
        {
          v12 = IO80211BSSBeacon::setBeaconDataFromMsg();
        }

        else
        {
          AppleBCMWLANBSSBeacon::setBeaconData(a1, &v16);
          v12 = v16;
        }
      }

      else
      {
        if (IO80211BSSBeacon::getLogger(a1))
        {
          IO80211BSSBeacon::getLogger(a1);
          if (CCLogStream::shouldLog())
          {
            Logger = IO80211BSSBeacon::getLogger(a1);
            CCLogStream::logAlert(Logger, "[dk] %s@%d:Not enough space remaining in the data buffer(%llu) for bss -> struct=%lu,%u\n", "setBeaconData", 134, a4, 132, 124);
          }
        }

        v12 = 0;
      }

LABEL_16:
      IOFreeData();
      goto LABEL_17;
    }

LABEL_18:
    v14 = AppleBCMWLANBSSBeacon::setBeaconData(a1, v10 == 0);
    v12 = 0;
    if (v14)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  if (!a4)
  {
    goto LABEL_18;
  }

  if (IO80211BSSBeacon::getLogger(a1))
  {
    IO80211BSSBeacon::getLogger(a1);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANBSSBeacon::setBeaconData(a1);
    }
  }

  v12 = 0;
LABEL_17:
  IOFreeData();
  return v12;
}

uint64_t AppleBCMWLANBSSBeacon::getBeaconMsgFromWLBSSInfo(uint64_t a1, void *a2, uint64_t a3, __int16 a4, unint64_t a5)
{
  v5 = *(a3 + 120);
  v6 = *(a3 + 116);
  v7 = *(a3 + 4);
  if (v7 > a5 || (v6 - 1) <= 0x7A)
  {
    goto LABEL_11;
  }

  if (a5 >> 16 || v5 > a5 || __CFADD__(v6, v5) || (v6 + v5) > a5)
  {
    v28 = *(a3 + 116);
    goto LABEL_11;
  }

  if (!(*(a3 + 8) | *(a3 + 12)))
  {
    goto LABEL_11;
  }

  if (*(a3 + 18) >= 0x21u)
  {
    v27 = *(a3 + 18);
LABEL_11:
    io80211_os_log();
    return 0;
  }

  v13 = *(a3 + 8);
  *(a1 + 45) = *(a3 + 12);
  *(a1 + 41) = v13;
  v14 = *(a3 + 18);
  *(a1 + 38) = v14;
  memcpy((a1 + 6), (a3 + 19), v14);
  v15 = *(a1 + 64) | 2;
  *(a1 + 64) = v15;
  *(a1 + 56) = *(a3 + 14);
  *(a1 + 4) = a4;
  if (*(a3 + 81))
  {
    PrimaryChannel = *(a3 + 88);
  }

  else
  {
    PrimaryChannel = ChanSpecGetPrimaryChannel();
    v15 = *(a1 + 64);
  }

  *(a1 + 39) = PrimaryChannel;
  *(a1 + 48) = *(a3 + 78);
  *(a1 + 64) = v15 & 0xFFFFFFFA;
  v17 = v15 & 0xFFFFFFBA | (((*(a3 + 96) >> 2) & 1) << 6);
  *(a1 + 64) = v17;
  v18 = v17 & 0xFFFFFEFF | (((*(a3 + 96) >> 5) & 1) << 8);
  *(a1 + 64) = v18;
  v19 = (v18 & 0xFFFFBFFF | ((*(a3 + 96) & 0x10) << 10)) ^ 0x4000;
  *(a1 + 64) = v19;
  v20 = v19 & 0xFFFFFF7F | ((*(a3 + 96) & 1) << 7);
  *(a1 + 64) = v20;
  v21 = v20 & 0xFFFFFDFF | (((*(a3 + 98) >> 3) & 1) << 9);
  *(a1 + 64) = v21;
  v22 = v21 & 0xFFFFFBFF | (((*(a3 + 98) >> 2) & 1) << 10);
  *(a1 + 64) = v22;
  v23 = v22 & 0xFFFF77FA | (((*(a3 + 98) >> 5) & 1) << 11);
  *(a1 + 64) = v23;
  if (v7 >= 0x7E && *a3 == 109)
  {
    v23 |= 0x3000u;
    *(a1 + 64) = v23;
    *(a1 + 52) = *(a3 + 80);
    *(a1 + 54) = *(a3 + 124);
  }

  if ((*(a3 + 51) & 2) != 0)
  {
    if (*(a3 + 51))
    {
      *(a1 + 64) = v23 | 8;
      v25 = v23 & 0xFFFFFFE7 | 8;
      v24 = v23 | 0x18;
      if ((*(a3 + 77) & 0x10) == 0)
      {
        v24 = v25;
      }
    }

    else
    {
      v24 = v23 & 0xFFFFFFF7;
    }

    *(a1 + 64) = v24;
  }

  if (v5 >= 0x800)
  {
    v26 = 2048;
  }

  else
  {
    v26 = v5;
  }

  *a1 = v26;
  memcpy(a2, (a3 + v6), v26);
  return 1;
}

uint64_t AppleBCMWLANByteRing::initWithOwnerAndAction(AppleBCMWLANByteRing *this, OSObject *a2, void (*a3)(OSObject *, ...))
{
  result = IO80211WorkSource::init(this, a2, a3);
  if (result)
  {
    v5 = IOMallocZeroTyped();
    *(this + 8) = v5;
    return v5 != 0;
  }

  return result;
}

uint64_t AppleBCMWLANByteRing::free(AppleBCMWLANByteRing *this)
{
  v2 = *(this + 8);
  if (v2)
  {
    if (*v2)
    {
      (*(**v2 + 16))(*v2);
      **(this + 8) = 0;
      v2 = *(this + 8);
    }

    memset_s(v2, 8uLL, 0, 8uLL);
    v3 = *(this + 8);
    if (v3)
    {
      IOFree(v3, 8uLL);
      *(this + 8) = 0;
    }
  }

  return IO80211WorkSource::free(this);
}

uint64_t AppleBCMWLANByteRing::setLogger(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 64);
  if (*v4)
  {
    (*(**v4 + 16))(*v4);
    **(a1 + 64) = 0;
    v4 = *(a1 + 64);
  }

  *v4 = a2;
  result = **(a1 + 64);
  if (result)
  {
    v6 = *(*result + 8);

    return v6();
  }

  return result;
}

uint64_t AppleBCMWLANCommander::shouldBCOMReturnDumpCore(AppleBCMWLANCommander *this, int a2, AppleBCMWLANCommand *a3)
{
  if (a2 == -469794549 || a2 == -469794537)
  {
    return 0;
  }

  if (a2 != -469794546)
  {
    return 1;
  }

  CmdName = AppleBCMWLANCommand::getCmdName(a3);
  if (strncmp(CmdName, "WLC_GET_BSS_INFO", 0x10uLL))
  {
    return 1;
  }

  mach_continuous_time();
  absolutetime_to_nanoseconds();
  CCResetTime = AppleBCMWLANCore::getCCResetTime(*(*(this + 8) + 176));
  if (!CCResetTime)
  {
    return ++*(*(this + 8) + 272) < 2u;
  }

  v8 = CCResetTime;
  result = *(*(this + 8) + 216);
  if (result)
  {
    result = CCLogStream::shouldLog();
    if (result)
    {
      CCLogStream::logAlert(*(*(this + 8) + 216), "[dk] %s@%d:%s currentTime %llu is less than resetTime %llu should capture failure trace\n", "shouldBCOMReturnDumpCore", 450, "shouldBCOMReturnDumpCore", 0, v8);
      return 0;
    }
  }

  return result;
}

OSObject *AppleBCMWLANCommander::withConfig(AppleBCMWLANCommander *this, AppleBCMWLANCore *a2, AppleBCMWLANBusInterface *a3)
{
  v8 = 0xAAAAAAAAAAAAAAAALL;
  if (OSObjectAllocate(gAppleBCMWLANCommanderMetaClass, &v8))
  {
    return 0;
  }

  v6 = v8;
  if (v8 && ((v8->OSMetaClassBase::__vftable[2].getMetaClass)(v8, this, a2, a3) & 1) == 0)
  {
    (v6->release)(v6);
    return 0;
  }

  return v6;
}

uint64_t AppleBCMWLANCommander::initWithConfig(OSObject *this, AppleBCMWLANCore *a2, AppleBCMWLANBusInterface *a3, uint64_t a4)
{
  v8 = IO80211WorkSource::init(this, this, 0);
  result = 0;
  if (!a2)
  {
    return result;
  }

  if (!v8)
  {
    return result;
  }

  result = IOMallocZeroTyped();
  this[1].OSObjectInterface::__vftable = result;
  v10 = &this[1].OSObjectInterface;
  if (!result)
  {
    return result;
  }

  *(result + 176) = a2;
  v10->__vftable[8].free = IO80211CagedBuffer::withLayout();
  if (!v10->__vftable[8].free)
  {
    getClassNameHelper(this);
    IOLog("%s::%s(): Failure initializing commandAsyncResponseCagedBuffer\n");
    return 0;
  }

  this[1].OSObjectInterface::__vftable[12].init = (*(*v10->__vftable[11].init + 88))(v10->__vftable[11].init);
  init = this[1].OSObjectInterface::__vftable[12].init;
  this[1].OSObjectInterface::__vftable[11].free = IO80211CommandGate::allocWithParams();
  if (!this[1].OSObjectInterface::__vftable[11].free)
  {
    return 0;
  }

  v10->__vftable[13].free = (*(*a2 + 1952))(a2);
  free = v10->__vftable[13].free;
  if (!free)
  {
    getClassNameHelper(this);
    IOLog("%s::%s(): Unable to get debug logger\n");
    return 0;
  }

  (*(*free + 8))(free);
  AppleBCMWLANCommander::initCommanderStreams(this);
  this[1].OSObjectInterface::__vftable[7].free = AppleBCMWLANCommander::checkExpiration;
  v13 = this[1].OSObjectInterface::__vftable;
  if (!v13[7].free)
  {
    return 0;
  }

  v13[8].init = AppleBCMWLANCommander::updateTimestamp;
  if (!v10->__vftable[8].init)
  {
    return 0;
  }

  v10->__vftable[13].init = a3;
  v14 = v10->__vftable[13].init;
  if (!v14)
  {
    result = v10->__vftable[13].free;
    if (!result)
    {
      return result;
    }

    result = CCLogStream::shouldLog();
    if (!result)
    {
      return result;
    }

    AppleBCMWLANCommander::initWithConfig(&this[1].OSObjectInterface);
    return 0;
  }

  (*(*v14 + 8))(v14);
  v10->__vftable[19].free = AppleBCMWLANCore::getFaultReporter(v10->__vftable[11].init);
  (*(*v10->__vftable[19].free + 8))(v10->__vftable[19].free);
  v15 = v10->__vftable[11].init;
  v16 = OSMetaClassBase::safeMetaCast(v15, gIOServiceMetaClass);
  v10->free = AppleBCMWLANCommandMonitor::withMonitorLengthProviderAndLogger(v15, 10, v16, v10->__vftable[13].free, v10->__vftable[11].free, v10->__vftable[19].free, &IO80211Controller::addReporterLegend, &IO80211Controller::removeReporterFromLegend);
  if (!v10->free)
  {
    result = v10->__vftable[13].free;
    if (!result)
    {
      return result;
    }

    result = CCLogStream::shouldLog();
    if (!result)
    {
      return result;
    }

    AppleBCMWLANCommander::initWithConfig(&this[1].OSObjectInterface);
    return 0;
  }

  v53 = 0;
  if (IOParseBootArgNumber("wlan.commander.thresholdn", &v53, 4))
  {
    v17 = v53;
  }

  else
  {
    v17 = 0;
  }

  if (IOParseBootArgNumber("wlan.commander.thresholdt", &v53, 4))
  {
    v18 = v53;
  }

  else
  {
    v18 = 0;
  }

  v19 = IOParseBootArgNumber("wlan.commander.stats", &v53, 4);
  v20 = v53 == 1 && v19;
  LOBYTE(v10->__vftable[1].init) = 1;
  if (IOParseBootArgNumber("wlan.commander.disablecmdwd", &v53, 4))
  {
    LOBYTE(v10->__vftable[1].init) = 0;
  }

  BYTE4(v10->__vftable[20].init) = 0;
  if (IOParseBootArgNumber("wlan.commander.paniconchecktimer", &v53, 4))
  {
    BYTE4(v10->__vftable[20].init) = 1;
  }

  BYTE5(v10->__vftable[20].init) = 0;
  if (IOParseBootArgNumber("wlan.commander.testchecktimer", &v53, 4))
  {
    BYTE5(v10->__vftable[20].init) = 1;
  }

  BYTE5(v10->__vftable[23].init) = 0;
  if (IOParseBootArgNumber("wlan.commander.CCForCmdtOutlierSync", &v53, 4))
  {
    BYTE5(v10->__vftable[23].init) = 1;
  }

  BYTE6(v10->__vftable[23].init) = 0;
  if (IOParseBootArgNumber("wlan.commander.CCForCmdtOutlierAsync", &v53, 4))
  {
    BYTE6(v10->__vftable[23].init) = 1;
  }

  LODWORD(v10->__vftable[23].free) = 0;
  if (IOParseBootArgNumber("wlan.commander.PendingThresSync", &v53, 4))
  {
    LODWORD(v10->__vftable[23].free) = v53;
  }

  HIDWORD(v10->__vftable[23].free) = 0;
  if (IOParseBootArgNumber("wlan.commander.OutboundThres", &v53, 4))
  {
    HIDWORD(v10->__vftable[23].free) = v53;
  }

  LODWORD(v10->__vftable[24].init) = 0;
  if (IOParseBootArgNumber("wlan.commander.ActiveThres", &v53, 4))
  {
    LODWORD(v10->__vftable[24].init) = v53;
  }

  HIDWORD(v10->__vftable[24].init) = 0;
  if (IOParseBootArgNumber("wlan.commander.PendingThresAsync", &v53, 4))
  {
    HIDWORD(v10->__vftable[24].init) = v53;
  }

  v21 = v10->__vftable;
  v22 = v10->free;
  if (v22)
  {
    AppleBCMWLANCommandMonitor::setRateThreshold(v22, v17, v18);
    AppleBCMWLANCommandMonitor::recordStats(v10->free, v20);
    v21 = v10->__vftable;
  }

  v23 = v21[12].init;
  this[1].OSObjectInterface::__vftable[14].init = IO80211TimerSource::allocWithParams();
  LOBYTE(this[1].OSObjectInterface::__vftable[15].init) = 0;
  v24 = this[1].OSObjectInterface::__vftable;
  if (!v24[14].init)
  {
    result = v24[13].free;
    if (!result)
    {
      return result;
    }

    result = CCLogStream::shouldLog();
    if (!result)
    {
      return result;
    }

    AppleBCMWLANCommander::initWithConfig(&this[1].OSObjectInterface);
    return 0;
  }

  v25 = v24[12].init;
  this[1].OSObjectInterface::__vftable[14].free = IO80211TimerSource::allocWithParams();
  v26 = this[1].OSObjectInterface::__vftable;
  if (v26[14].free)
  {
    v26[4].init = AppleBCMWLANCommander::dequeueByID;
    v10->__vftable[4].free = AppleBCMWLANCommander::queryByID;
    v27 = v10->__vftable;
    v28 = 80;
    while (1)
    {
      *(&v10->init + v28) = AppleBCMWLANCommandQueue::withGateAndCapacity(v27[11].free, a4);
      v27 = v10->__vftable;
      if (!*(&v10->init + v28))
      {
        return 0;
      }

      v28 += 8;
      if (v28 == 120)
      {
        LODWORD(this[1].OSObjectInterface::__vftable[9].free) = (*(*(v27[13].init + 6) + 184))();
        v29 = (AppleBCMWLANCommander::getMaxCmdTxPayload(this) + 16) & 0x7FF;
        AppleBCMWLANCommander::getMaxCmdTxPayload(this);
        if (v29)
        {
          AppleBCMWLANCommander::getMaxCmdTxPayload(this);
        }

        (*(*v10->__vftable[11].init + 1944))(v10->__vftable[11].init);
        v10->__vftable[22].free = IO80211BufferPool::withOptions();
        v30 = v10->__vftable[22].free;
        if (v30)
        {
          (*(*v30 + 8))(v30);
          if (a4)
          {
            v31 = a4;
            while (1)
            {
              v32 = this[1].OSObjectInterface::__vftable[13].init;
              MaxCmdTxPayload = AppleBCMWLANCommander::getMaxCmdTxPayload(this);
              result = AppleBCMWLANCommand::newCmd(v32, MaxCmdTxPayload, this[1].OSObjectInterface::__vftable[22].free);
              if (!result)
              {
                break;
              }

              AppleBCMWLANCommander::enqueueCommand(this, 0, result);
              if (!--v31)
              {
                goto LABEL_68;
              }
            }
          }

          else
          {
LABEL_68:
            HIDWORD(v10->__vftable[10].init) = 1500;
            LODWORD(v10->__vftable[10].free) = 2000;
            HIDWORD(v10->__vftable[10].free) = 5000;
            v34 = IOParseBootArgNumber("wlan.commander.command_timeout", &v10->__vftable[10].init + 4, 4);
            v35 = v10->__vftable;
            if (v34)
            {
              init_high = HIDWORD(v35[10].init);
              if (init_high)
              {
                LODWORD(v35[10].free) = init_high;
                v35 = v10->__vftable;
                if (v10->__vftable[13].free)
                {
                  shouldLog = CCLogStream::shouldLog();
                  v35 = v10->__vftable;
                  if (shouldLog)
                  {
                    CCLogStream::logNotice(v35[13].free, "[dk] %s@%d:ivars->fActiveQueueTimeout %ld, ivars->fOutboundQueueTimeout %ld\n", "initWithConfig", 890, HIDWORD(v35[10].init), LODWORD(v35[10].free));
                    v35 = v10->__vftable;
                  }
                }
              }
            }

            HIDWORD(v35[16].free) = 55000;
            if (IOParseBootArgNumber("wlan.factory", &v53, 4) && (v53 & 0x10) != 0)
            {
              LODWORD(v10->__vftable[10].free) = 60000;
              v38 = v10->__vftable;
              if (v10->__vftable[13].free)
              {
                v39 = CCLogStream::shouldLog();
                v38 = v10->__vftable;
                if (v39)
                {
                  CCLogStream::logNoticeIf(v38[13].free, 0x80uLL, "[dk] %s@%d: Force factory commander timeout[%u ms]\n", "initWithConfig", 897, LODWORD(v38[10].free));
                  v38 = v10->__vftable;
                }
              }

              HIDWORD(v38[16].free) = LODWORD(v38[10].free) + 5000;
            }

            v40 = v10->__vftable;
            v41 = v10->__vftable[10].free;
            if (v41 > HIDWORD(v10->__vftable[10].free))
            {
              HIDWORD(v40[10].free) = v41;
              v40 = v10->__vftable;
            }

            LODWORD(v40[15].free) = 5;
            IOParseBootArgNumber("wlan.debug.cto_wdcount", &v10->__vftable[15].free, 4);
            HIDWORD(v10->__vftable[15].free) = 24000;
            LODWORD(v10->__vftable[16].init) = 5000;
            HIDWORD(v10->__vftable[16].init) = 30000;
            LODWORD(v10->__vftable[16].free) = 30000;
            IOParseBootArgNumber("wlan.commander.oqs_delay_limit", &v10->__vftable[15].free + 4, 4);
            IOParseBootArgNumber("wlan.commander.oqs_delay_limit_lp", &v10->__vftable[16], 4);
            IOParseBootArgNumber("wlan.commander.aqs_delay_limit", &v10->__vftable[16].init + 4, 4);
            IOParseBootArgNumber("wlan.commander.aqs_delay_limit_lp", &v10->__vftable[16].free, 4);
            IOParseBootArgNumber("wlan.commander.command_complete_timeout", &v10->__vftable[16].free + 4, 4);
            LODWORD(v10->__vftable[9].init) = 0;
            HIDWORD(v10->__vftable[9].free) = 0;
            LODWORD(v10->__vftable[17].init) = 0;
            v10->__vftable[1].free = OSSet::withCapacity(1, v42);
            v43 = v10->__vftable;
            if (v10->__vftable[1].free)
            {
              v10->__vftable[12].free = OSMetaClassBase::safeMetaCast(v43[11].init, gIOServiceMetaClass);
              ReporterProvider = IO80211Controller::getReporterProvider(v10->__vftable[11].init);
              v10->__vftable[2].init = IOSimpleReporter::with(ReporterProvider, 0x8010, 0, v45);
              v46 = v10->__vftable;
              v47 = v10->__vftable[2].init;
              if (v47)
              {
                OSSet::setObject(v46[1].free, v47);
                (*(*v10->__vftable[2].init + 16))(v10->__vftable[2].init);
                v48 = &off_1003D1DC8;
                v49 = 11;
                do
                {
                  IOReporter::addChannel(v10->__vftable[2].init, *(v48 - 1), *v48);
                  v48 += 2;
                  --v49;
                }

                while (v49);
                IO80211Controller::addReporterLegend(v10->__vftable[11].init, v10->__vftable[12].free, v10->__vftable[2].init, "Commander", "Counters");
                BYTE4(v10->__vftable[15].init) = 0;
                LODWORD(v10->__vftable[23].init) = a4;
                BYTE6(v10->__vftable[20].init) = 0;
                if (IOParseBootArgNumber("wlan.wdt.disableLogging", &v53, 4))
                {
                  v50 = v10->__vftable;
                  if (v10->__vftable[13].free)
                  {
                    v51 = CCLogStream::shouldLog();
                    v50 = v10->__vftable;
                    if (v51)
                    {
                      CCLogStream::logInfo(v50[13].free, "[dk] %s@%d: wlan.wdt.disableLogging %d\n", "initWithConfig", 947, v53);
                      v50 = v10->__vftable;
                    }
                  }

                  BYTE6(v50[20].init) = v53 != 0;
                }

                HIBYTE(this[1].OSObjectInterface::__vftable[15].init) = 0;
                v52 = this[1].OSObjectInterface::__vftable[19].free;
                getClassNameHelper(this);
                CCFaultReporter::registerCallbacks();
                return 1;
              }

              else
              {
                result = v46[13].free;
                if (result)
                {
                  result = CCLogStream::shouldLog();
                  if (result)
                  {
                    AppleBCMWLANCommander::initWithConfig(&this[1].OSObjectInterface);
                    return 0;
                  }
                }
              }
            }

            else
            {
              result = v43[13].free;
              if (result)
              {
                result = CCLogStream::shouldLog();
                if (result)
                {
                  AppleBCMWLANCommander::initWithConfig(&this[1].OSObjectInterface);
                  return 0;
                }
              }
            }
          }
        }

        else
        {
          result = v10->__vftable[13].free;
          if (result)
          {
            result = CCLogStream::shouldLog();
            if (result)
            {
              AppleBCMWLANCommander::initWithConfig(&this[1].OSObjectInterface);
              return 0;
            }
          }
        }

        return result;
      }
    }
  }

  result = v26[13].free;
  if (result)
  {
    result = CCLogStream::shouldLog();
    if (result)
    {
      AppleBCMWLANCommander::initWithConfig(&this[1].OSObjectInterface);
      return 0;
    }
  }

  return result;
}

BOOL AppleBCMWLANCommander::initCommanderStreams(AppleBCMWLANCommander *this)
{
  v6 = 0;
  (*(**(*(this + 8) + 176) + 272))(*(*(this + 8) + 176), 0, &v6, 0);
  v2 = v6;
  if (v6)
  {
    bzero(v7, 0x358uLL);
    v8 = -1;
    v13 = 0;
    v11 = 0;
    v12 = 0;
    v10 = 0;
    v5 = 0xA5A5000000000003;
    v14 = OSData::withBytes(&v5, 8uLL);
    v15 = 150;
    if (AppleBCMWLAN_isVerboseDebugLoggingAllowed())
    {
      LODWORD(v8) = 127;
      v9 = 3;
    }

    v3 = CCStream::withPipeAndName();
    **(this + 8) = OSMetaClassBase::safeMetaCast(v3, gCCLogStreamMetaClass);
    (v14->release)(v14);
  }

  return v2 != 0;
}

uint64_t AppleBCMWLANCommander::checkExpiration(int a1, AppleBCMWLANCommand *this, uint64_t a3)
{
  if (*a3 == -1 || AppleBCMWLANCommand::isCommandState(this, *a3))
  {
    QueuedDuration_ms = AppleBCMWLANCommand::getQueuedDuration_ms(this);
    if (QueuedDuration_ms > *(a3 + 8))
    {
      ++*(a3 + 16);
      if (QueuedDuration_ms > *(a3 + 24))
      {
        *(a3 + 24) = QueuedDuration_ms;
        *(a3 + 32) = AppleBCMWLANCommand::getQueuedTime_ns(this);
      }
    }
  }

  return 0;
}

uint64_t AppleBCMWLANCommander::updateTimestamp(uint64_t a1, AppleBCMWLANCommand *this, uint64_t a3)
{
  v6 = *(a3 + 8);
  if (v6 && v6 != AppleBCMWLANCommand::getBuffer(this))
  {
    return 0;
  }

  AppleBCMWLANCommand::setQueuedTimestamp(this, *a3);
  if (*(a3 + 4) == 1)
  {
    v7 = AppleBCMWLANCommand::commit(this);
    if (v7)
    {
      AppleBCMWLANCommander::updateTimestamp(a1, v7);
    }
  }

  if (*(a3 + 8))
  {
    return 2;
  }

  else
  {
    return 0;
  }
}

uint64_t AppleBCMWLANCommander::checkQueues(AppleBCMWLANCommander *a1)
{
  v2 = (a1 + 64);
  *(*(a1 + 8) + 344) = mach_continuous_time();
  if (*(*v2 + 40) && mach_continuous_time() < *(*v2 + 40))
  {
    v52 = 0xAAAAAAAAAAAAAAAALL;
    absolutetime_to_nanoseconds();
    v3 = *v2;
    if (*(*v2 + 216))
    {
      v4 = *(*v2 + 216);
      shouldLog = CCLogStream::shouldLog();
      v3 = *v2;
      if (shouldLog)
      {
        AppleBCMWLANCommander::checkQueues(v3, &v52);
        v3 = v45;
      }
    }

    *(v3 + 240) = 0;
  }

  else
  {
    *(*(a1 + 8) + 352) = mach_continuous_time();
    v56[0] = v56;
    v56[1] = v56;
    isPoweringOff = AppleBCMWLANCore::isPoweringOff(*(*(a1 + 8) + 176));
    v7 = *(a1 + 8);
    v8 = 260;
    if (isPoweringOff)
    {
      v8 = 264;
    }

    v9 = *(v7 + v8);
    v45 = 0;
    v46 = &v45;
    v47 = 0x2000000000;
    LODWORD(v48) = 0;
    v52 = 0;
    v53 = &v52;
    v54 = 0x2000000000;
    v55 = 0;
    v10 = *(v7 + 104);
    v50[0] = _NSConcreteStackBlock;
    v50[1] = 1107296256;
    v50[2] = ___ZN21AppleBCMWLANCommander11checkQueuesEP18IO80211TimerSource_block_invoke;
    v50[3] = &__block_descriptor_tmp_7;
    v50[4] = &v45;
    v51 = v9;
    v50[5] = &v52;
    v50[6] = a1;
    AppleBCMWLANCommandQueue::lockFilter(v10, v50, v56);
    if (!*(v46 + 6))
    {
      *(*v2 + 56) = 0;
    }

    v11 = v56[0];
    if (v56 == v56[0])
    {
      v13 = 0;
    }

    else
    {
      do
      {
        if (*v11[1] != v11 || (v12 = *v11, *(*v11 + 8) != v11))
        {
          __break(1u);
        }

        *(v12 + 8) = v56;
        v56[0] = v12;
        *v11 = 0;
        v11[1] = 0;
        v13 = IOCommand::FromChain();
        v14 = *v2;
        if (*(*v2 + 216))
        {
          v15 = *(*v2 + 216);
          v16 = CCLogStream::shouldLog();
          v14 = *v2;
          if (v16)
          {
            AppleBCMWLANCommander::checkQueues(v14, v13);
            v14 = v56[2];
          }
        }

        AppleBCMWLANCommand::logCmd(v13, *(v14 + 216), "\t", 1, 1, -1);
        AppleBCMWLANCommand::setStatus(v13, -469793785);
        AppleBCMWLANCommand::getTransactionID(v13);
        AppleBCMWLANCommand::getStatus(v13);
        AppleBCMWLANCommand::getIOCtl(v13);
        v17 = *AppleBCMWLANCommand::getIOVar(v13);
        kdebug_trace();
        atomic_fetch_add_explicit((*(a1 + 8) + 148), 0xFFFFFFFF, memory_order_relaxed);
        AppleBCMWLANCommander::enqueueCommand(a1, 4u, v13);
        v11 = v56[0];
      }

      while (v56 != v56[0]);
    }

    v18 = *(v53 + 6);
    if (v18)
    {
      ++*(*v2 + 160);
      v19 = *v2;
      if (*(*v2 + 323) == 1)
      {
        *(v19 + 323) = 0;
        v19 = *v2;
      }

      if ((AppleBCMWLANCore::getDebugFlags(*(v19 + 176)) & 0x20) != 0)
      {
        v20 = 6;
      }

      else
      {
        v20 = 4;
      }

      if (*(*v2 + 160) >= *(*v2 + 248))
      {
        v20 |= 1u;
        *(*v2 + 160) = 0;
        *(*v2 + 56) = 0;
      }

      IO80211WorkSource::signalWorkAvailable(a1);
      v21 = -469793785;
    }

    else
    {
      v21 = 0;
      v20 = 0;
    }

    _Block_object_dispose(&v52, 8);
    _Block_object_dispose(&v45, 8);
    v22 = *v2;
    v46 = *(*v2 + 168);
    v45 = 0xAAAAAAAA00000001;
    v48 = 0;
    v47 = 0xAAAAAAAA00000000;
    v49 = 0;
    if (AppleBCMWLANCore::isPoweringOff(*(v22 + 176)))
    {
      LODWORD(v45) = -1;
    }

    AppleBCMWLANCommandQueue::lockMap(*(*(a1 + 8) + 96), *(*(a1 + 8) + 120), a1, &v45);
    v23 = *(a1 + 8);
    if (v47)
    {
      v24 = (*(**(v23 + 208) + 600))(*(v23 + 208), v23 + 48);
      v25 = *v2;
      if (!v24)
      {
        goto LABEL_40;
      }

      v26 = v48;
      v27 = AppleBCMWLANCore::isPoweringOff(*(v25 + 176));
      v25 = *v2;
      v28 = 252;
      if (v27)
      {
        v28 = 256;
      }

      if (v26 < *(v25 + v28))
      {
        if (*(v25 + 216) && CCLogStream::shouldLog())
        {
          AppleBCMWLANCommander::checkQueues(a1 + 64);
        }
      }

      else
      {
LABEL_40:
        AppleBCMWLANCore::triggerTTR(*(v25 + 176), 0);
        v29 = *v2;
        if (*(*v2 + 216))
        {
          v30 = CCLogStream::shouldLog();
          v29 = *v2;
          if (v30)
          {
            CCLogStream::logEmergency(*(v29 + 216), "[dk] %s@%d: Outbound Queue Stall after %lld ms (queued @ %llu.%06llu) OQSTimeooutEpoch %llu\n", "checkQueues", 2889, v48, v49 / 0x3B9ACA00, v49 % 0x3B9ACA00 / 0x3E8, *(v29 + 48));
            v29 = *v2;
          }
        }

        v20 |= 5u;
        *(v29 + 48) = 0;
        if (!v18)
        {
          v13 = AppleBCMWLANCommandQueue::lockPeek(*(*v2 + 96));
          v31 = *v2;
          if (*(*v2 + 322) == 1)
          {
            *(v31 + 322) = 0;
            v31 = *v2;
          }

          if ((AppleBCMWLANCore::getDebugFlags(*(v31 + 176)) & 0x10) != 0)
          {
            v20 = 7;
          }

          v21 = -469793786;
        }
      }
    }

    else
    {
      *(v23 + 48) = 0;
    }

    v32 = *v2;
    if (*(*v2 + 148) < *(*v2 + 152))
    {
      v46 = *(v32 + 172);
      v45 = 0xAAAAAAAA00000000;
      v48 = 0;
      v47 = 0xAAAAAAAA00000000;
      v49 = 0;
      AppleBCMWLANCommandQueue::lockMap(*(v32 + 88), *(v32 + 120), a1, &v45);
      v32 = *(a1 + 8);
      if (v47)
      {
        if (*(v32 + 216))
        {
          v33 = CCLogStream::shouldLog();
          v32 = *v2;
          if (v33)
          {
            CCLogStream::logEmergency(*(v32 + 216), "[dk] %s@%d: Pending queue stall after %lld ms (queued @ %llu.%06llu)\n", "checkQueues", 2920, v48, v49 / 0x3B9ACA00, v49 % 0x3B9ACA00 / 0x3E8);
            v32 = *v2;
          }
        }

        v20 |= 5u;
        if (!v21)
        {
          v13 = AppleBCMWLANCommandQueue::lockPeek(*(v32 + 88));
          v34 = *v2;
          if (*(*v2 + 321) == 1)
          {
            *(v34 + 321) = 0;
            v34 = *v2;
          }

          if ((AppleBCMWLANCore::getDebugFlags(*(v34 + 176)) & 8) != 0)
          {
            v20 = 7;
          }

          v32 = *v2;
          v21 = -469793787;
        }
      }
    }

    if (v21)
    {
      IOSimpleReporter::incrementValue(*(v32 + 32), 0x436D644973507200uLL, 1);
      v35 = (*(**(*v2 + 208) + 208))(*(*v2 + 208));
      v36 = *v2;
      if (v35)
      {
        if (*(v36 + 216))
        {
          v37 = *(v36 + 216);
          v38 = CCLogStream::shouldLog();
          v36 = *v2;
          if (v38)
          {
            AppleBCMWLANCommander::checkQueues(v36);
            v36 = v45;
          }
        }
      }

      v39 = *(v36 + 312);
      if (v13)
      {
        CmdName = AppleBCMWLANCommand::getCmdName(v13);
      }

      else
      {
        CmdName = "NULL";
      }

      v41 = CCFaultReporter::reportFault(v39, v20, "/Library/Caches/com.apple.xbs/Sources/AppleBCMWLANV3_driverkit/AppleBCMWLANCommander.cpp", 0xB81u, "checkQueues", 0, v21, "cmd=%s", CmdName);
      v32 = *v2;
      if (v41)
      {
        v43 = v41;
        if (*(v32 + 216))
        {
          v44 = CCLogStream::shouldLog();
          v32 = *v2;
          if (v44)
          {
            CCLogStream::logAlert(*(v32 + 216), "[dk] %s@%d:FaultReporter return %x, will reset commander\n", "checkQueues", 2947, v43);
            v32 = *v2;
          }
        }
      }
    }

    *(v32 + 240) = 0;
  }

  return AppleBCMWLANCommander::configureWatchdog(a1);
}

uint64_t AppleBCMWLANCommander::dequeueByID(AppleBCMWLANCommander *this, IOCommand *a2, _DWORD *a3)
{
  v5 = a3[3];
  if (v5 == AppleBCMWLANCommand::getIOCtl(a2) && (v6 = *(a3 + 8), v6 == AppleBCMWLANCommand::getTransactionID(a2)))
  {
    return 4;
  }

  else
  {
    return 0;
  }
}

uint64_t AppleBCMWLANCommander::queryByID(AppleBCMWLANCommander *this, IOCommand *a2, _DWORD *a3)
{
  v5 = a3[3];
  if (v5 == AppleBCMWLANCommand::getIOCtl(a2) && (v6 = *(a3 + 8), v6 == AppleBCMWLANCommand::getTransactionID(a2)))
  {
    return 2;
  }

  else
  {
    return 0;
  }
}

uint64_t AppleBCMWLANCommander::getMaxCmdTxPayload(AppleBCMWLANCommander *this)
{
  v2 = *(*(this + 8) + 208);
  if (v2 && (*(*(v2 + 48) + 168))())
  {
    return (*(*(*(*(this + 8) + 208) + 48) + 168))() - 16;
  }

  else
  {
    return 16;
  }
}

uint64_t AppleBCMWLANCommander::enqueueCommand(AppleBCMWLANCommander *a1, unsigned int a2, AppleBCMWLANCommand *this)
{
  AppleBCMWLANCommand::setQueuedTimestamp(this, a2);
  AppleBCMWLANCommandQueue::lockEnqueue(*(*(a1 + 8) + 8 * a2 + 80), this);
  AppleBCMWLANCommandQueue::getSize(*(*(a1 + 8) + 88));
  AppleBCMWLANCommandQueue::getSize(*(*(a1 + 8) + 96));
  AppleBCMWLANCommandQueue::getSize(*(*(a1 + 8) + 104));
  AppleBCMWLANCommandQueue::getSize(*(*(a1 + 8) + 112));
  kdebug_trace();

  return AppleBCMWLANCommander::configureWatchdog(a1);
}

uint64_t AppleBCMWLANCommander::prepareFRCallback(AppleBCMWLANCommander *this, const CCFaultReport *a2)
{
  *(*(this + 8) + 246) = *(*(this + 8) + 245);
  IOSimpleReporter::incrementValue(*(*(this + 8) + 32), 0x436D647250617500uLL, 1);
  *(*(this + 8) + 245) = 1;
  return 0;
}

uint64_t AppleBCMWLANCommander::collectImmediateFaultDataCallback(AppleBCMWLANCommander *this, CCFaultReport *a2)
{
  v3 = this + 64;
  v2 = *(this + 8);
  if (*(v2 + 326) == 1)
  {
    if (*(v2 + 216) && CCLogStream::shouldLog())
    {
      AppleBCMWLANCommander::collectImmediateFaultDataCallback(v3);
    }
  }

  else
  {
    v6 = IOMallocZeroData();
    if (v6)
    {
      v7 = v6;
      AppleBCMWLANCommander::dumpState(this, v6, 0, 0x3FFF);
      v8 = OSString::withCString("CommanderState.txt");
      v9 = OSString::withCString(v7);
      (*(*a2 + 192))(a2, v8, v9);
      IOFreeData();
    }
  }

  return 0;
}

uint64_t AppleBCMWLANCommander::completeFaultReportCallback(AppleBCMWLANCommander *this, const CCFaultReport *a2)
{
  if ((*(*a2 + 88))(a2) && CCFaultReport::getWatchdogResult(a2))
  {
    if (*(*(this + 8) + 216) && CCLogStream::shouldLog())
    {
      AppleBCMWLANCommander::completeFaultReportCallback(this + 64, a2);
    }

    AppleBCMWLANCommander::reset(this);
  }

  else if (((*(*a2 + 88))(a2) & 1) == 0)
  {
    v4 = this + 64;
    if (AppleBCMWLANCommandQueue::getSize(*(*(this + 8) + 88)) || AppleBCMWLANCommandQueue::getSize(*(*v4 + 96)) || AppleBCMWLANCommandQueue::getSize(*(*v4 + 104)))
    {
      v5 = *(*(this + 8) + 172);
      AppleBCMWLANCommander::delayQueueTimeouts(this);
      if (*(*(this + 8) + 216) && CCLogStream::shouldLog())
      {
        AppleBCMWLANCommander::completeFaultReportCallback(this + 64);
      }
    }

    else if (*(*v4 + 216) && CCLogStream::shouldLog())
    {
      AppleBCMWLANCommander::completeFaultReportCallback(this + 64);
    }
  }

  if ((*(*(this + 8) + 246) & 1) == 0)
  {
    AppleBCMWLANCommander::unpause(this);
  }

  return 0;
}

uint64_t AppleBCMWLANCommander::induceFaultCallback(AppleBCMWLANCommander *this, int a2, const char *a3)
{
  v20 = 1;
  v18 = &v20;
  v19 = 0x400040004;
  if (a2 > -469793786)
  {
    if (a2 == -469793785)
    {
      *(*(this + 8) + 323) = 1;
      v13 = *(this + 8);
      if (*(v13 + 216))
      {
        shouldLog = CCLogStream::shouldLog();
        v13 = *(this + 8);
        if (shouldLog)
        {
          CCLogStream::logAlert(*(v13 + 216), "[dk] %s@%d:Force Command Timeout\n", "induceFaultCallback", 3390);
          v13 = *(this + 8);
        }
      }

      v22 = 0;
      v21 = 0x1AAAAAA00;
      v23 = 0xAAAAAAAA00000005;
      v15 = AppleBCMWLANCommander::issueCommand(this, &v21, &kNoTxPayload, &v18, &v19 + 1, v13 + 280, 0);
      if (v15)
      {
        v16 = v15;
        if (*(*(this + 8) + 216))
        {
          if (CCLogStream::shouldLog())
          {
            CCLogStream::logAlert(*(*(this + 8) + 216), "[dk] %s@%d: Failed GET IOCTL, cret[0x%08x]\n", "induceFaultCallback", 3393, v16);
          }
        }
      }
    }

    else if (a2 == -469793767)
    {
      v8 = this + 64;
      *(*(this + 8) + 320) = 1;
      if (*(*(this + 8) + 216))
      {
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCommander::induceFaultCallback(v8);
        }
      }
    }
  }

  else if (a2 == -469793787)
  {
    *(*(this + 8) + 321) = 1;
    v9 = *(this + 8);
    if (*(v9 + 216))
    {
      v10 = CCLogStream::shouldLog();
      v9 = *(this + 8);
      if (v10)
      {
        CCLogStream::logAlert(*(v9 + 216), "[dk] %s@%d:Force Pending Queue Stall\n", "induceFaultCallback", 3364);
        v9 = *(this + 8);
      }
    }

    v22 = 0;
    v21 = 0x1AAAAAA00;
    v23 = 0xAAAAAAAA00000005;
    v11 = AppleBCMWLANCommander::issueCommand(this, &v21, &kNoTxPayload, &v18, &v19 + 1, v9 + 280, 0);
    if (v11)
    {
      v12 = v11;
      if (*(*(this + 8) + 216))
      {
        if (CCLogStream::shouldLog())
        {
          CCLogStream::logAlert(*(*(this + 8) + 216), "[dk] %s@%d: Failed GET IOCTL, cret[0x%08x]\n", "induceFaultCallback", 3367, v12);
        }
      }
    }
  }

  else if (a2 == -469793786)
  {
    *(*(this + 8) + 322) = 1;
    *(*(this + 8) + 323) = 1;
    v4 = *(this + 8);
    if (*(v4 + 216))
    {
      v5 = CCLogStream::shouldLog();
      v4 = *(this + 8);
      if (v5)
      {
        CCLogStream::logAlert(*(v4 + 216), "[dk] %s@%d:Force Outbound Queue Stall\n", "induceFaultCallback", 3381);
        v4 = *(this + 8);
      }
    }

    v22 = 0;
    v21 = 0x1AAAAAA00;
    v23 = 0xAAAAAAAA00000005;
    v6 = AppleBCMWLANCommander::issueCommand(this, &v21, &kNoTxPayload, &v18, &v19 + 1, v4 + 280, 0);
    if (v6)
    {
      v7 = v6;
      if (*(*(this + 8) + 216))
      {
        if (CCLogStream::shouldLog())
        {
          CCLogStream::logAlert(*(*(this + 8) + 216), "[dk] %s@%d: Failed GET IOCTL, cret[0x%08x]\n", "induceFaultCallback", 3384, v7);
        }
      }
    }
  }

  return 0;
}

uint64_t AppleBCMWLANCommander::runIOCtlSet(AppleBCMWLANCommander *a1, int a2, uint64_t a3, uint64_t a4, int a5)
{
  v9 = 0;
  v8[0] = -1431655936;
  v8[1] = a2;
  v10 = 0xAAAAAAAA00000006;
  if (a4)
  {
    v6 = (a4 + 10);
  }

  else
  {
    v6 = &kNoRxExpected;
  }

  return AppleBCMWLANCommander::issueCommand(a1, v8, a3, a4, v6, *(a1 + 8) + 280, a5);
}

uint64_t AppleBCMWLANCommander::issueCommand(AppleBCMWLANCommander *this, unsigned __int8 *a2, uint64_t a3, uint64_t a4, unsigned __int16 *a5, uint64_t a6, int a7)
{
  v14 = *(a3 + 8);
  if (*a2 == 255)
  {
    v16 = (this + 64);
    v15 = *(this + 8);
    if (*(v15 + 216))
    {
      shouldLog = CCLogStream::shouldLog();
      v15 = *v16;
      if (shouldLog)
      {
        CCLogStream::logAlert(*(v15 + 216), "[dk] %s@%d:ERROR: IOVAR %s IOCTL %d on an invalid interface %d\n", "issueCommand", 1752, *(a2 + 1), *(a2 + 1), *a2);
        v15 = *v16;
      }
    }

    if (*(v15 + 216) && CCLogStream::shouldLog())
    {
      AppleBCMWLANCommander::issueCommand(this + 64);
    }
  }

  v18 = *(a2 + 1);
  if (v18)
  {
    v19 = strnlen(v18, 0x22uLL);
    v20 = v19;
    if (v19 >= 0x22)
    {
      v23 = *(this + 8);
      v22 = (this + 64);
      v21 = v23;
      if (*(v23 + 216))
      {
        v24 = CCLogStream::shouldLog();
        v21 = *v22;
        if (v24)
        {
          CCLogStream::logAlert(*(v21 + 216), "[dk] %s@%d: IOVal command iovar is too long (len: %lu)!\n", "issueCommand", 1762, v20);
          v21 = *v22;
        }
      }

      Status = 3825173527;
      if (*(v21 + 216) && CCLogStream::shouldLog())
      {
        AppleBCMWLANCommander::issueCommand(v22);
        return 3825173527;
      }

      return Status;
    }

    v14 += (v19 + 1) & 0x7F;
  }

  v27 = a2 + 16;
  v26 = *(a2 + 4);
  if ((v26 & 2) != 0)
  {
    v33 = *a3;
    if (!*(a3 + 8) && v33 || *(a3 + 8) && !v33)
    {
      v36 = *(this + 8);
      v35 = (this + 64);
      v34 = v36;
      if (*(v36 + 216))
      {
        v37 = CCLogStream::shouldLog();
        v34 = *v35;
        if (v37)
        {
          CCLogStream::logAlert(*(v34 + 216), "[dk] %s@%d: Set Command txPayload is invalid\n", "issueCommand", 1773);
          v34 = *v35;
        }
      }

      Status = 3825173514;
      if (*(v34 + 216) && CCLogStream::shouldLog())
      {
        AppleBCMWLANCommander::issueCommand(v35, a2, (a2 + 16), a2 + 1);
      }

      return Status;
    }

    if (v14 > AppleBCMWLANCommander::getMaxCmdTxPayload(this))
    {
      v42 = *(this + 8);
      if (*(v42 + 216))
      {
        v43 = CCLogStream::shouldLog();
        v42 = *(this + 8);
        if (v43)
        {
          v130 = *(v42 + 216);
          MaxCmdTxPayload = AppleBCMWLANCommander::getMaxCmdTxPayload(this);
          CCLogStream::logAlert(v130, "[dk] %s@%d: Not enough buffer space to Set command tx payload. avail(%llu), requested(%u)\n", "issueCommand", 1779, MaxCmdTxPayload, *(a3 + 8));
          v42 = *(this + 8);
        }
      }

      Status = 3825173516;
      if (*(v42 + 216) && CCLogStream::shouldLog())
      {
        AppleBCMWLANCommander::issueCommand(this + 64, a2, (a2 + 16), a2 + 1);
      }

      return Status;
    }

    if (a4)
    {
      if (!*(a4 + 8) || !*a4)
      {
        v64 = *(this + 8);
        v63 = (this + 64);
        v62 = v64;
        if (*(v64 + 216))
        {
          v65 = CCLogStream::shouldLog();
          v62 = *v63;
          if (v65)
          {
            CCLogStream::logAlert(*(v62 + 216), "[dk] %s@%d: Set Command rxPayload is invalid\n", "issueCommand", 1786);
            v62 = *v63;
          }
        }

        Status = 3825173518;
        if (*(v62 + 216) && CCLogStream::shouldLog())
        {
          AppleBCMWLANCommander::issueCommand(v63, a2, (a2 + 16), a2 + 1);
        }

        return Status;
      }

      v46 = *(a4 + 8);
      if (AppleBCMWLANCommander::getMaxCmdRxPayload(this) < v46)
      {
        v48 = (this + 64);
        v47 = *(this + 8);
        if (*(v47 + 216))
        {
          v49 = CCLogStream::shouldLog();
          v47 = *v48;
          if (v49)
          {
            v136 = *(v47 + 216);
            MaxCmdRxPayload = AppleBCMWLANCommander::getMaxCmdRxPayload(this);
            CCLogStream::logAlert(v136, "[dk] %s@%d: Not enough buffer space to Set command rx payload. avail(%llu), requested(%u)\n", "issueCommand", 1792, MaxCmdRxPayload, *(a4 + 8));
            v47 = *(this + 8);
          }
        }

        Status = 3825173520;
        if (*(v47 + 216) && CCLogStream::shouldLog())
        {
          AppleBCMWLANCommander::issueCommand(v48, a2, (a2 + 16), a2 + 1);
          return 3825173520;
        }

        return Status;
      }

      v71 = a5[1];
      if (*a5 > v71 || v71 > *(a4 + 8))
      {
        v74 = *(this + 8);
        v73 = (this + 64);
        v72 = v74;
        if (*(v74 + 216))
        {
          v75 = CCLogStream::shouldLog();
          v72 = *v73;
          if (v75)
          {
            CCLogStream::logAlert(*(v72 + 216), "[dk] %s@%d: Set Command rxPayload length is invalid(min: %d, length %d, max: %x\n", "issueCommand", 1798, *a5, *(a4 + 8), a5[1]);
            v72 = *v73;
          }
        }

        Status = 3825173522;
        if (*(v72 + 216) && CCLogStream::shouldLog())
        {
          AppleBCMWLANCommander::issueCommand(v73, a2, (a2 + 16), a2 + 1);
          return 3825173522;
        }

        return Status;
      }
    }
  }

  else if ((~v26 & 5) != 0)
  {
    if ((v26 & 1) == 0)
    {
      v40 = *(this + 8);
      v39 = (this + 64);
      v38 = v40;
      if (*(v40 + 216))
      {
        v41 = CCLogStream::shouldLog();
        v38 = *v39;
        if (v41)
        {
          CCLogStream::logAlert(*(v38 + 216), "[dk] %s@%d: Command type must be either Set or Get\n", "issueCommand", 1842);
          v38 = *v39;
        }
      }

      Status = 3825173524;
      if (*(v38 + 216) && CCLogStream::shouldLog())
      {
        AppleBCMWLANCommander::issueCommand(v39, a2, (a2 + 16), a2 + 1);
        return 3825173524;
      }

      return Status;
    }
  }

  else
  {
    v28 = *a3;
    if (*(a3 + 8) || v28)
    {
      if (!*(a3 + 8) || !v28)
      {
        v52 = *(this + 8);
        v51 = (this + 64);
        v50 = v52;
        if (*(v52 + 216))
        {
          v53 = CCLogStream::shouldLog();
          v50 = *v51;
          if (v53)
          {
            CCLogStream::logAlert(*(v50 + 216), "[dk] %s@%d: Get Command txPayload is invalid\n", "issueCommand", 1806);
            v50 = *v51;
          }
        }

        Status = 3825173515;
        if (*(v50 + 216) && CCLogStream::shouldLog())
        {
          AppleBCMWLANCommander::issueCommand(v51, a2, (a2 + 16), a2 + 1);
        }

        return Status;
      }

      if (v14 > AppleBCMWLANCommander::getMaxCmdTxPayload(this))
      {
        v44 = *(this + 8);
        if (*(v44 + 216))
        {
          v45 = CCLogStream::shouldLog();
          v44 = *(this + 8);
          if (v45)
          {
            v132 = *(v44 + 216);
            v133 = AppleBCMWLANCommander::getMaxCmdTxPayload(this);
            CCLogStream::logAlert(v132, "[dk] %s@%d: Not enough buffer space to Get command tx payload. avail(%llu), requested(%llu)\n", "issueCommand", 1812, v133, v14);
            v44 = *(this + 8);
          }
        }

        Status = 3825173517;
        if (*(v44 + 216) && CCLogStream::shouldLog())
        {
          AppleBCMWLANCommander::issueCommand(this + 64, a2, (a2 + 16), a2 + 1);
        }

        return Status;
      }
    }

    if (!a4)
    {
      v60 = *(this + 8);
      v59 = (this + 64);
      v58 = v60;
      if (*(v60 + 216))
      {
        v61 = CCLogStream::shouldLog();
        v58 = *v59;
        if (v61)
        {
          CCLogStream::logAlert(*(v58 + 216), "[dk] %s@%d: Get Command rxPayload cannot be NULL\n", "issueCommand", 1819);
          v58 = *v59;
        }
      }

      Status = 3825173519;
      if (*(v58 + 216) && CCLogStream::shouldLog())
      {
        AppleBCMWLANCommander::issueCommand(v59, a2, (a2 + 16), a2 + 1);
      }

      return Status;
    }

    if (!*(a4 + 8) || !*a4)
    {
      v56 = *(this + 8);
      v55 = (this + 64);
      v54 = v56;
      if (*(v56 + 216))
      {
        v57 = CCLogStream::shouldLog();
        v54 = *v55;
        if (v57)
        {
          CCLogStream::logAlert(*(v54 + 216), "[dk] %s@%d: Get Command rxPayload is invalid\n", "issueCommand", 1825);
          v54 = *v55;
        }
      }

      Status = 3825173519;
      if (*(v54 + 216) && CCLogStream::shouldLog())
      {
        AppleBCMWLANCommander::issueCommand(v55, a2, (a2 + 16), a2 + 1);
      }

      return Status;
    }

    v29 = *(a4 + 8);
    if (AppleBCMWLANCommander::getMaxCmdRxPayload(this) < v29)
    {
      v31 = (this + 64);
      v30 = *(this + 8);
      if (*(v30 + 216))
      {
        v32 = CCLogStream::shouldLog();
        v30 = *v31;
        if (v32)
        {
          v134 = *(v30 + 216);
          v135 = AppleBCMWLANCommander::getMaxCmdRxPayload(this);
          CCLogStream::logAlert(v134, "[dk] %s@%d: Not enough buffer space to Get command rx payload. avail(%llu), requested(%u)\n", "issueCommand", 1831, v135, *(a4 + 8));
          v30 = *(this + 8);
        }
      }

      Status = 3825173521;
      if (*(v30 + 216) && CCLogStream::shouldLog())
      {
        AppleBCMWLANCommander::issueCommand(v31, a2, (a2 + 16), a2 + 1);
        return 3825173521;
      }

      return Status;
    }

    v66 = a5[1];
    if (*a5 > v66 || v66 > *(a4 + 8))
    {
      v69 = *(this + 8);
      v68 = (this + 64);
      v67 = v69;
      if (*(v69 + 216))
      {
        v70 = CCLogStream::shouldLog();
        v67 = *v68;
        if (v70)
        {
          CCLogStream::logAlert(*(v67 + 216), "[dk] %s@%d: Get Command rxPayload length is invalid(min: %d, length %d, max: %x\n", "issueCommand", 1837, *a5, *(a4 + 8), a5[1]);
          v67 = *v68;
        }
      }

      Status = 3825173523;
      if (*(v67 + 216) && CCLogStream::shouldLog())
      {
        AppleBCMWLANCommander::issueCommand(v68, a2, (a2 + 16), a2 + 1);
        return 3825173523;
      }

      return Status;
    }
  }

  if ((*(a2 + 1) & 0xFFFFFFFE) == 0x106 && !*(a2 + 1) && !*a3 && !*(a3 + 8))
  {
    v76 = *(this + 8);
    if (*(v76 + 216))
    {
      v77 = CCLogStream::shouldLog();
      v76 = *(this + 8);
      if (v77)
      {
        CCLogStream::logAlert(*(v76 + 216), "[dk] %s@%d: IOVal command iovar is NULL!\n", "issueCommand", 1849);
        v76 = *(this + 8);
      }
    }

    Status = 3825173525;
    if (*(v76 + 216) && CCLogStream::shouldLog())
    {
      v78 = *(a2 + 1);
      if (!v78)
      {
        v78 = "<UNKNOWN>";
      }

      CCLogStream::logAlert(*(*(this + 8) + 216), "[dk] %s@%d: CommandID info: interface[%3u] type[0x%04x] ioctl[0x%04x/%4u] iovar['%s']\n", "issueCommand", 1850, *a2, *(a2 + 4), *(a2 + 1), *(a2 + 1), v78);
      return 3825173525;
    }

    return Status;
  }

  v79 = (this + 64);
  if ((*(**(*(this + 8) + 192) + 144))(*(*(this + 8) + 192)))
  {
    if ((*v27 & 4) != 0)
    {
      if ((*(*(*v79)[24] + 136))((*v79)[24]))
      {
        v86 = *v79;
        if ((*v79)[27])
        {
          v87 = CCLogStream::shouldLog();
          v86 = *v79;
          if (v87)
          {
            CCLogStream::logAlert(v86[27], "[dk] %s@%d: Cannot send a command synchronously while on the workQueue thread\n", "issueCommand", 1864);
            v86 = *v79;
          }
        }

        Status = 3758097122;
        if (v86[27] && CCLogStream::shouldLog())
        {
          v88 = *(a2 + 1);
          if (!v88)
          {
            v88 = "<UNKNOWN>";
          }

          CCLogStream::logAlert((*v79)[27], "[dk] %s@%d: CommandID info: interface[%3u] type[0x%04x] ioctl[0x%04x/%4u] iovar['%s']\n", "issueCommand", 1865, *a2, *(a2 + 4), *(a2 + 1), *(a2 + 1), v88);
          return 3758097122;
        }

        return Status;
      }
    }

    else
    {
      if ((*v27 & 8) == 0)
      {
        v80 = *v79;
        if ((*v79)[27])
        {
          v81 = CCLogStream::shouldLog();
          v80 = *v79;
          if (v81)
          {
            CCLogStream::logAlert(v80[27], "[dk] %s@%d: Command type must be either Sync or Async\n", "issueCommand", 1875);
            v80 = *v79;
          }
        }

        Status = 3825173524;
        if (v80[27] && CCLogStream::shouldLog())
        {
          v82 = *(a2 + 1);
          if (!v82)
          {
            v82 = "<UNKNOWN>";
          }

          CCLogStream::logAlert((*v79)[27], "[dk] %s@%d: CommandID info: interface[%3u] type[0x%04x] ioctl[0x%04x/%4u] iovar['%s']\n", "issueCommand", 1876, *a2, *(a2 + 4), *(a2 + 1), *(a2 + 1), v82);
          return 3825173524;
        }

        return Status;
      }

      if (!*a6 || !*(a6 + 8))
      {
        v98 = *v79;
        if ((*v79)[27])
        {
          v99 = CCLogStream::shouldLog();
          v98 = *v79;
          if (v99)
          {
            CCLogStream::logAlert(v98[27], "[dk] %s@%d: Cannot send a command asynchronously without callback\n", "issueCommand", 1870);
            v98 = *v79;
          }
        }

        Status = 3825173526;
        if (v98[27] && CCLogStream::shouldLog())
        {
          v100 = *(a2 + 1);
          if (!v100)
          {
            v100 = "<UNKNOWN>";
          }

          CCLogStream::logAlert((*v79)[27], "[dk] %s@%d: CommandID info: interface[%3u] type[0x%04x] ioctl[0x%04x/%4u] iovar['%s']\n", "issueCommand", 1871, *a2, *(a2 + 4), *(a2 + 1), *(a2 + 1), v100);
          return 3825173526;
        }

        return Status;
      }
    }

    v89 = *v79;
    if (*(*v79 + 325) == 1)
    {
      v90 = AppleBCMWLANCommander::issueCommand(CommandID const&,CommandTxPayload const&,CommandRxPayload *,CommandRxExpected const&,CommandCompletion const&,CommandBusPreference)::cmdCount++;
      if (v90 >= 1002)
      {
        AppleBCMWLANCommander::issueCommand(CommandID const&,CommandTxPayload const&,CommandRxPayload *,CommandRxExpected const&,CommandCompletion const&,CommandBusPreference)::cmdCount = 0;
        v89[41] = 0;
        v89 = *v79;
      }
    }

    if (*(v89 + 324) == 1 && *(v89 + 240) == 1 && v89[41] != -1)
    {
      mach_continuous_time();
      v91 = (*v79)[41];
      *&v139[16] = 0xAAAAAAAAAAAAAAAALL;
      absolutetime_to_nanoseconds();
      v119 = (*v79)[41];
      absolutetime_to_nanoseconds();
      mach_continuous_time();
      absolutetime_to_nanoseconds();
      memset(v139, 170, 24);
      absolutetime_to_nanoseconds();
      v120 = *v79;
      if ((*v79)[27])
      {
        v121 = CCLogStream::shouldLog();
        v120 = *v79;
        if (v121)
        {
          CCLogStream::logAlert(v120[27], "[dk] %s@%d:Commander Check Queue Timer Stale. Value Set at %06llu.%06llu, Current Time is %06llu.%06llu, Continuous Time is %06llu.%06llu\n", "issueCommand", 1903, *&v139[16] / 0x3B9ACA00uLL, *&v139[16] % 0x3B9ACA00uLL / 0x3E8, *&v139[8] / 0x3B9ACA00uLL, *&v139[8] % 0x3B9ACA00uLL / 0x3E8, *v139 / 0x3B9ACA00uLL, *v139 % 0x3B9ACA00uLL / 0x3E8);
          v120 = *v79;
        }
      }

      Status = 3825173533;
      CCFaultReporter::reportFault(v120[39], 6u, "/Library/Caches/com.apple.xbs/Sources/AppleBCMWLANV3_driverkit/AppleBCMWLANCommander.cpp", 0x770u, "issueCommand", 0, -469793763, 0);
    }

    else if (*(v89 + 244))
    {
      return 3825173508;
    }

    else
    {
      v92 = AppleBCMWLANCommander::dequeueCommand(this, 0);
      if (v92 || (AppleBCMWLANCommander::serviceCompletedQueue(this, 1), (v92 = AppleBCMWLANCommander::dequeueCommand(this, 0)) != 0))
      {
        v93 = v92;
        ++*(*v79 + 36);
        v94 = AppleBCMWLANCommand::prepare(v92, a2, *(*v79 + 121), a3, a4, a5, a6, a7);
        v95 = *v79;
        if (v94)
        {
          Status = v94;
          if (v95[27])
          {
            v96 = CCLogStream::shouldLog();
            v95 = *v79;
            if (v96)
            {
              CCLogStream::logAlert(v95[27], "[dk] %s@%d: prepare cmd fail!!!\n", "issueCommand", 1961);
              v95 = *v79;
            }
          }

          if (v95[27] && CCLogStream::shouldLog())
          {
            v97 = *(a2 + 1);
            if (!v97)
            {
              v97 = "<UNKNOWN>";
            }

            CCLogStream::logAlert((*v79)[27], "[dk] %s@%d: CommandID info: interface[%3u] type[0x%04x] ioctl[0x%04x/%4u] iovar['%s']\n", "issueCommand", 1962, *a2, *(a2 + 4), *(a2 + 1), *(a2 + 1), v97);
          }
        }

        else
        {
          ++*(v95 + 121);
          AppleBCMWLANCommander::enqueueCommand(this, 1u, v93);
          Size = AppleBCMWLANCommandQueue::getSize(*(*(this + 8) + 88));
          if (IOSimpleReporter::getValue(*(*(this + 8) + 32), 0x436D647250516C00uLL) < Size)
          {
            v102 = (*v79)[4];
            v103 = AppleBCMWLANCommandQueue::getSize((*v79)[11]);
            IOSimpleReporter::setValue(v102, 0x436D647250516C00uLL, v103);
          }

          IOSimpleReporter::incrementValue((*v79)[4], 0x436D644973737500uLL, 1);
          v104 = *v79;
          v105 = (*v79)[1];
          if (v105)
          {
            AppleBCMWLANCommandMonitor::monitorCmdPrepared(v105, v93);
            v104 = *v79;
          }

          AppleBCMWLANCommand::logCmd(v93, v104[27], "\t", 1, 6, 4);
          v106 = **v79;
          if (v106 && CCLogStream::shouldLog(v106, 1uLL))
          {
            *&v139[16] = 0;
            Buffer = AppleBCMWLANCommand::getBuffer(v93);
            v108 = AppleBCMWLANTxBuffer::getPayloadLength(Buffer) + 16;
            if (commandLoggingRestricted(v93))
            {
              v109 = 16;
            }

            else
            {
              v109 = v108;
            }

            v110 = **v79;
            v111 = AppleBCMWLANCommand::getBuffer(v93);
            Payload = AppleBCMWLANTxBuffer::getPayload(v111, 0);
            CCLogStream::logHeaderAndBufIf(v110, 1uLL, Payload, 0, v109, v108, &v139[16], 4uLL);
          }

          v113 = *(*(this + 8) + 216);
          v114 = AppleBCMWLANCommand::getBuffer(v93);
          AppleBCMWLANTxBuffer::getPayload(v114, 0);
          v115 = AppleBCMWLANCommand::getBuffer(v93);
          AppleBCMWLANTxBuffer::getPayloadLength(v115);
          IO80211HexdumpIf();
          IO80211WorkSource::signalWorkAvailable(this);
          if ((*v27 & 8) != 0)
          {
            return 0;
          }

          AppleBCMWLANCommand::setCommandGate(v93, (*v79)[23]);
          AppleBCMWLANCommand::getTransactionID(v93);
          kdebug_trace();
          if (*(*v79 + 67) && *(*v79 + 247) == 1)
          {
            if (!AppleBCMWLANCommand::isCommandState(v93, 2))
            {
              *&v139[16] = 0xAAAAAAAAAAAAAAAALL;
              v116 = *(*v79 + 67);
              clock_interval_to_deadline();
              v117 = (*(*(*v79)[23] + 80))((*v79)[23], v93, *&v139[16]);
              mach_continuous_time();
              v118 = *v79;
              absolutetime_to_nanoseconds();
              if (v117 == -536870186)
              {
                AppleBCMWLANCommander::issueCommand(this + 8);
              }

              if (!AppleBCMWLANCommand::isCommandState(v93, 2))
              {
                AppleBCMWLANCommander::issueCommand(this + 8);
              }
            }
          }

          else
          {
            while (!AppleBCMWLANCommand::isCommandState(v93, 2))
            {
              (*(*(*v79)[23] + 80))((*v79)[23], v93, 0);
            }
          }

          AppleBCMWLANCommand::getTransactionID(v93);
          kdebug_trace();
          Status = AppleBCMWLANCommand::getStatus(v93);
        }

        AppleBCMWLANCommander::enqueueCommand(this, 0, v93);
        --*(*(this + 8) + 144);
        v126 = *(this + 8);
        if (*(v126 + 156) && !*(v126 + 144))
        {
          (*(**(v126 + 184) + 88))(*(v126 + 184), v126 + 144);
        }
      }

      else
      {
        *&v139[8] = 0;
        *&v122 = 0xAAAAAAAAAAAAAAAALL;
        *(&v122 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v141 = v122;
        v142 = v122;
        *&v139[16] = v122;
        v140 = v122;
        v123 = *(a2 + 1);
        v124 = v123 & 0xFFFFFFFE;
        cmdID2Name(v123);
        v125 = *(a2 + 1);
        if (v124 == 262)
        {
          *a3;
          v138 = *(a2 + 1);
          snprintf(&v139[16], 0x40uLL, "%s/%u: %s");
        }

        else
        {
          snprintf(&v139[16], 0x40uLL, "%s/%u");
        }

        AppleBCMWLANCommandQueue::lockMap((*v79)[11], AppleBCMWLANCommander::countAsyncCommandsInQueue, 0, &v139[8]);
        if ((*v79)[27] && CCLogStream::shouldLog())
        {
          AppleBCMWLANCommander::issueCommand(this + 64, &v139[8], &v139[16]);
        }

        AppleBCMWLANCommander::dumpState(this, 0, 0, 0);
        if ((AppleBCMWLANCore::getDebugFlags(*(*(this + 8) + 176)) & 0x800) != 0)
        {
          v127 = 6;
          v128 = 1947;
        }

        else
        {
          v127 = 5;
          v128 = 1949;
        }

        CCFaultReporter::reportFault(*(*(this + 8) + 312), v127, "/Library/Caches/com.apple.xbs/Sources/AppleBCMWLANV3_driverkit/AppleBCMWLANCommander.cpp", v128, "issueCommand", 0, -469793764, 0);
        return 3758097086;
      }
    }
  }

  else
  {
    v83 = *v79;
    if ((*v79)[27])
    {
      v84 = CCLogStream::shouldLog();
      v83 = *v79;
      if (v84)
      {
        CCLogStream::logAlert(v83[27], "[dk] %s@%d: Need to have the workQueue gate to send a command\n", "issueCommand", 1857);
        v83 = *v79;
      }
    }

    Status = 3758097100;
    if (v83[27] && CCLogStream::shouldLog())
    {
      v85 = *(a2 + 1);
      if (!v85)
      {
        v85 = "<UNKNOWN>";
      }

      CCLogStream::logAlert((*v79)[27], "[dk] %s@%d: CommandID info: interface[%3u] type[0x%04x] ioctl[0x%04x/%4u] iovar['%s']\n", "issueCommand", 1858, *a2, *(a2 + 4), *(a2 + 1), *(a2 + 1), v85);
    }
  }

  return Status;
}

uint64_t AppleBCMWLANCommander::runIOCtlGet(AppleBCMWLANCommander *a1, int a2, uint64_t a3, uint64_t a4, int a5)
{
  v7 = 0;
  v6[0] = -1431655936;
  v6[1] = a2;
  v8 = 0xAAAAAAAA00000005;
  return AppleBCMWLANCommander::issueCommand(a1, v6, a3, a4, (a4 + 10), *(a1 + 8) + 280, a5);
}

uint64_t AppleBCMWLANCommander::runIOVarSet(AppleBCMWLANCommander *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  if (!a2)
  {
    return 3758097090;
  }

  v8[1] = a2;
  v8[0] = 0x107AAAAAA00;
  v8[2] = 0xAAAAAAAA00000006;
  if (a4)
  {
    v6 = (a4 + 10);
  }

  else
  {
    v6 = &kNoRxExpected;
  }

  return AppleBCMWLANCommander::issueCommand(a1, v8, a3, a4, v6, *(a1 + 8) + 280, a5);
}

uint64_t AppleBCMWLANCommander::runIOVarGet(AppleBCMWLANCommander *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  if (!a2)
  {
    return 3758097090;
  }

  v6[1] = a2;
  v6[0] = 0x106AAAAAA00;
  v6[2] = 0xAAAAAAAA00000005;
  return AppleBCMWLANCommander::issueCommand(a1, v6, a3, a4, (a4 + 10), *(a1 + 8) + 280, a5);
}

uint64_t AppleBCMWLANCommander::sendIOCtlSet(AppleBCMWLANCommander *a1, int a2, uint64_t a3, unsigned __int16 *a4, uint64_t a5, int a6)
{
  v8 = 0;
  v7[0] = -1431655936;
  v7[1] = a2;
  v9 = 0xAAAAAAAA0000000ALL;
  return AppleBCMWLANCommander::issueCommand(a1, v7, a3, 0, a4, a5, a6);
}

uint64_t AppleBCMWLANCommander::sendIOCtlGet(AppleBCMWLANCommander *a1, int a2, uint64_t a3, unsigned __int16 *a4, uint64_t a5, int a6)
{
  v8 = 0;
  v7[0] = -1431655936;
  v7[1] = a2;
  v9 = 0xAAAAAAAA00000009;
  return AppleBCMWLANCommander::issueCommand(a1, v7, a3, 0, a4, a5, a6);
}

uint64_t AppleBCMWLANCommander::sendIOVarSet(AppleBCMWLANCommander *a1, uint64_t a2)
{
  if (a2)
  {
    return AppleBCMWLANCommander::issueCommand(a1);
  }

  else
  {
    return 3758097090;
  }
}

uint64_t AppleBCMWLANCommander::sendIOVarGet(AppleBCMWLANCommander *a1, uint64_t a2, uint64_t a3, unsigned __int16 *a4, uint64_t a5, int a6)
{
  if (!a2)
  {
    return 3758097090;
  }

  v7[1] = a2;
  v7[0] = 0x106AAAAAA00;
  v7[2] = 0xAAAAAAAA00000009;
  return AppleBCMWLANCommander::issueCommand(a1, v7, a3, 0, a4, a5, a6);
}

uint64_t AppleBCMWLANCommander::runVirtualIOCtlSet(AppleBCMWLANCommander *this, unsigned int a2, int a3, uint64_t a4, uint64_t a5, int a6)
{
  if (a2 < 0xC)
  {
    v13 = 0;
    v12[0] = -1431655766;
    LOBYTE(v12[0]) = a2;
    v12[1] = a3;
    v14 = 0xAAAAAAAA00000006;
    v10 = (a5 + 10);
    if (!a5)
    {
      v10 = kNoRxExpected;
    }

    return AppleBCMWLANCommander::issueCommand(this, v12, a4, a5, v10, *(this + 8) + 280, a6);
  }

  else
  {
    v9 = 3758097090;
    if (*(*(this + 8) + 216) && CCLogStream::shouldLog())
    {
      CCLogStream::logAlert(*(*(this + 8) + 216), "[dk] %s@%d: ERROR: Virtual IOCtl %d on invalid interface %d !\n", "runVirtualIOCtlSet", 1121, a3, a2);
    }
  }

  return v9;
}

uint64_t AppleBCMWLANCommander::runVirtualIOCtlGet(AppleBCMWLANCommander *this, unsigned int a2, int a3, uint64_t a4, uint64_t a5, int a6)
{
  if (a2 < 0xC)
  {
    v12 = 0;
    v11[0] = -1431655766;
    LOBYTE(v11[0]) = a2;
    v11[1] = a3;
    v13 = 0xAAAAAAAA00000005;
    return AppleBCMWLANCommander::issueCommand(this, v11, a4, a5, (a5 + 10), *(this + 8) + 280, a6);
  }

  else
  {
    v9 = 3758097090;
    if (*(*(this + 8) + 216) && CCLogStream::shouldLog())
    {
      CCLogStream::logAlert(*(*(this + 8) + 216), "[dk] %s@%d: ERROR: Virtual IOCtl %d on invalid interface %d !\n", "runVirtualIOCtlGet", 1145, a3, a2);
    }
  }

  return v9;
}

uint64_t AppleBCMWLANCommander::runVirtualIOVarSet(AppleBCMWLANCommander *this, unsigned int a2, const char *a3, uint64_t a4, uint64_t a5, int a6)
{
  v9 = 3758097090;
  if (a2 < 0xC)
  {
    if (a3)
    {
      v13 = a3;
      v12[0] = -1431655766;
      LOBYTE(v12[0]) = a2;
      v12[1] = 263;
      v14 = 0xAAAAAAAA00000006;
      v10 = (a5 + 10);
      if (!a5)
      {
        v10 = kNoRxExpected;
      }

      return AppleBCMWLANCommander::issueCommand(this, v12, a4, a5, v10, *(this + 8) + 280, a6);
    }
  }

  else if (*(*(this + 8) + 216) && CCLogStream::shouldLog())
  {
    CCLogStream::logAlert(*(*(this + 8) + 216), "[dk] %s@%d: ERROR: Virtual IOVar %s on invalid interface %d !\n", "runVirtualIOVarSet", 1168, a3, a2);
  }

  return v9;
}

uint64_t AppleBCMWLANCommander::runVirtualIOVarGet(AppleBCMWLANCommander *this, unsigned int a2, const char *a3, uint64_t a4, uint64_t a5, int a6)
{
  v9 = 3758097090;
  if (a2 < 0xC)
  {
    if (a3)
    {
      v12 = a3;
      v11[0] = -1431655766;
      LOBYTE(v11[0]) = a2;
      v11[1] = 262;
      v13 = 0xAAAAAAAA00000005;
      return AppleBCMWLANCommander::issueCommand(this, v11, a4, a5, (a5 + 10), *(this + 8) + 280, a6);
    }
  }

  else if (*(*(this + 8) + 216) && CCLogStream::shouldLog())
  {
    CCLogStream::logAlert(*(*(this + 8) + 216), "[dk] %s@%d: ERROR: Virtual IOVar %s on invalid interface %d !\n", "runVirtualIOVarGet", 1197, a3, a2);
  }

  return v9;
}

uint64_t AppleBCMWLANCommander::sendVirtualIOCtlSet(AppleBCMWLANCommander *this, unsigned int a2, int a3, uint64_t a4, unsigned __int16 *a5, uint64_t a6, int a7)
{
  if (a2 < 0xC)
  {
    v13 = 0;
    v12[0] = -1431655766;
    LOBYTE(v12[0]) = a2;
    v12[1] = a3;
    v14 = 0xAAAAAAAA0000000ALL;
    return AppleBCMWLANCommander::issueCommand(this, v12, a4, 0, a5, a6, a7);
  }

  else
  {
    v10 = 3758097090;
    if (*(*(this + 8) + 216) && CCLogStream::shouldLog())
    {
      CCLogStream::logAlert(*(*(this + 8) + 216), "[dk] %s@%d: ERROR: Virtual IOCtl %d on invalid interface %d !\n", "sendVirtualIOCtlSet", 1225, a3, a2);
    }
  }

  return v10;
}

uint64_t AppleBCMWLANCommander::sendVirtualIOCtlGet(AppleBCMWLANCommander *this, unsigned int a2, int a3, uint64_t a4, unsigned __int16 *a5, uint64_t a6, int a7)
{
  if (a2 < 0xC)
  {
    v13 = 0;
    v12[0] = -1431655766;
    LOBYTE(v12[0]) = a2;
    v12[1] = a3;
    v14 = 0xAAAAAAAA00000009;
    return AppleBCMWLANCommander::issueCommand(this, v12, a4, 0, a5, a6, a7);
  }

  else
  {
    v10 = 3758097090;
    if (*(*(this + 8) + 216) && CCLogStream::shouldLog())
    {
      CCLogStream::logAlert(*(*(this + 8) + 216), "[dk] %s@%d: ERROR: Virtual IOCtl %d on invalid interface %d !\n", "sendVirtualIOCtlGet", 1248, a3, a2);
    }
  }

  return v10;
}

uint64_t AppleBCMWLANCommander::sendVirtualIOVarSet(AppleBCMWLANCommander *this, unsigned int a2, const char *a3, uint64_t a4, unsigned __int16 *a5, uint64_t a6, int a7)
{
  v10 = 3758097090;
  if (a2 < 0xC)
  {
    if (a3)
    {
      v13 = a3;
      v12[0] = -1431655766;
      LOBYTE(v12[0]) = a2;
      v12[1] = 263;
      v14 = 0xAAAAAAAA0000000ALL;
      return AppleBCMWLANCommander::issueCommand(this, v12, a4, 0, a5, a6, a7);
    }
  }

  else if (*(*(this + 8) + 216) && CCLogStream::shouldLog())
  {
    CCLogStream::logAlert(*(*(this + 8) + 216), "[dk] %s@%d: ERROR: Virtual IOVar %s on invalid interface %d !\n", "sendVirtualIOVarSet", 1270, a3, a2);
  }

  return v10;
}

uint64_t AppleBCMWLANCommander::sendVirtualIOVarGet(AppleBCMWLANCommander *this, unsigned int a2, const char *a3, uint64_t a4, unsigned __int16 *a5, uint64_t a6, int a7)
{
  v10 = 3758097090;
  if (a2 < 0xC)
  {
    if (a3)
    {
      v13 = a3;
      v12[0] = -1431655766;
      LOBYTE(v12[0]) = a2;
      v12[1] = 262;
      v14 = 0xAAAAAAAA00000009;
      return AppleBCMWLANCommander::issueCommand(this, v12, a4, 0, a5, a6, a7);
    }
  }

  else if (*(*(this + 8) + 216) && CCLogStream::shouldLog())
  {
    CCLogStream::logAlert(*(*(this + 8) + 216), "[dk] %s@%d: ERROR: Virtual IOVar %s on invalid interface %d !\n", "sendVirtualIOVarGet", 1298, a3, a2);
  }

  return v10;
}

uint64_t AppleBCMWLANCommander::getMaxCmdRxPayload(AppleBCMWLANCommander *this)
{
  v2 = *(*(this + 8) + 208);
  if (v2 && (*(*v2 + 152))(v2))
  {
    return (*(**(*(this + 8) + 208) + 152))(*(*(this + 8) + 208)) - 16;
  }

  else
  {
    return 16;
  }
}

BOOL AppleBCMWLANCommander::isBusy(AppleBCMWLANCommander *this)
{
  Size = AppleBCMWLANCommandQueue::getSize(*(*(this + 8) + 88));
  v3 = AppleBCMWLANCommandQueue::getSize(*(*(this + 8) + 96)) + Size;
  v4 = v3 + AppleBCMWLANCommandQueue::getSize(*(*(this + 8) + 104));
  return v4 + AppleBCMWLANCommandQueue::getSize(*(*(this + 8) + 112)) != 0;
}

void (__cdecl *AppleBCMWLANCommander::stop(OSObject *this))(OSObjectInterface *__hidden this)
{
  result = this[1].OSObjectInterface::__vftable[19].free;
  if (result)
  {
    return CCFaultReporter::unregisterCallbacks(result, this);
  }

  return result;
}

uint64_t AppleBCMWLANCommander::freeResources(AppleBCMWLANCommander *this)
{
  v2 = this + 64;
  v1 = *(this + 8);
  if (!v1)
  {
    return AppleBCMWLANCommander::freeResources(this + 64);
  }

  *(v1 + 244) = 1;
  v4 = *v2;
  v5 = *(*v2 + 312);
  if (v5)
  {
    (*(*v5 + 16))(v5);
    *(*v2 + 312) = 0;
    v4 = *v2;
  }

  v6 = *(v4 + 224);
  if (v6)
  {
    (*(*v6 + 80))(v6);
    (*(**(*v2 + 224) + 16))(*(*v2 + 224));
    *(*v2 + 224) = 0;
    v4 = *v2;
  }

  v7 = *(v4 + 232);
  if (v7)
  {
    (*(*v7 + 80))(v7);
    (*(**(*v2 + 232) + 16))(*(*v2 + 232));
    *(*v2 + 232) = 0;
  }

  AppleBCMWLANCommander::purgeCommandQueue(this, 0, 0);
  for (i = 80; i != 120; i += 8)
  {
    v9 = *(*v2 + i);
    if (v9)
    {
      AppleBCMWLANCommandQueue::lockFlush(v9);
      (*(**(*v2 + i) + 16))(*(*v2 + i));
      *(*v2 + i) = 0;
    }
  }

  v10 = *v2;
  v11 = *(*v2 + 360);
  if (v11)
  {
    (*(*v11 + 72))(v11);
    v10 = *v2;
    v12 = *(*v2 + 360);
    if (v12)
    {
      (*(*v12 + 16))(v12);
      *(*v2 + 360) = 0;
      v10 = *v2;
    }
  }

  v13 = v10[3];
  if (v13)
  {
    (*(*v13 + 16))(v13);
    *(*v2 + 24) = 0;
    v10 = *v2;
  }

  v14 = v10[1];
  if (v14)
  {
    (*(*v14 + 16))(v14);
    *(*v2 + 8) = 0;
    v10 = *v2;
  }

  v15 = v10[26];
  if (v15)
  {
    (*(*v15 + 16))(v15);
    *(*v2 + 208) = 0;
    v10 = *v2;
  }

  v16 = v10[27];
  if (v16)
  {
    (*(*v16 + 16))(v16);
    *(*v2 + 216) = 0;
    v10 = *v2;
  }

  if (*v10)
  {
    (*(**v10 + 16))(*v10);
    **v2 = 0;
    v10 = *v2;
  }

  v17 = v10[23];
  if (v17)
  {
    (*(*v17 + 16))(v17);
    *(*v2 + 184) = 0;
    v10 = *v2;
  }

  result = v10[17];
  if (result)
  {
    result = (*(*result + 16))(result);
    *(*v2 + 136) = 0;
  }

  return result;
}

uint64_t AppleBCMWLANCommander::free(AppleBCMWLANCommander *this)
{
  AppleBCMWLANCommander::freeResources(this);
  v2 = *(this + 8);
  if (v2)
  {
    memset_s(v2, 0x190uLL, 0, 0x190uLL);
    v3 = *(this + 8);
    if (v3)
    {
      IOFree(v3, 0x190uLL);
      *(this + 8) = 0;
    }
  }

  return IO80211WorkSource::free(this);
}

uint64_t AppleBCMWLANCommander::pause(AppleBCMWLANCommander *this)
{
  result = IOSimpleReporter::incrementValue(*(*(this + 8) + 32), 0x436D647250617500uLL, 1);
  *(*(this + 8) + 245) = 1;
  return result;
}

uint64_t AppleBCMWLANCommander::unpause(AppleBCMWLANCommander *this)
{
  IOSimpleReporter::incrementValue(*(*(this + 8) + 32), 0x436D647255506100uLL, 1);
  *(*(this + 8) + 245) = 0;
  result = AppleBCMWLANCommandQueue::getSize(*(*(this + 8) + 88));
  if (result)
  {
    result = IO80211WorkSource::signalWorkAvailable(this);
  }

  *(*(this + 8) + 40) = 0;
  return result;
}

uint64_t AppleBCMWLANCommander::quiesce(AppleBCMWLANCommander *this)
{
  v2 = this + 64;
  v1 = *(this + 8);
  if (*(v1 + 216))
  {
    v3 = *(v1 + 216);
    shouldLog = CCLogStream::shouldLog();
    v1 = *v2;
    if (shouldLog)
    {
      AppleBCMWLANCommander::quiesce(v1);
      v1 = v14;
    }
  }

  IOSimpleReporter::incrementValue(*(v1 + 32), 0x436D647251756900uLL, 1);
  *(*v2 + 244) = 1;
  *(*v2 + 372) = 0;
  (*(**(*v2 + 232) + 72))(*(*v2 + 232));
  if (*(*v2 + 216) && CCLogStream::shouldLog())
  {
    AppleBCMWLANCommander::quiesce(v2);
  }

  while (*(*v2 + 144) && (*(*v2 + 245) & 1) == 0)
  {
    clock_interval_to_deadline();
    ++*(*v2 + 156);
    v5 = (*(**(*v2 + 184) + 80))(*(*v2 + 184), *v2 + 144, 0xAAAAAAAAAAAAAAAALL);
    --*(*v2 + 156);
    if (v5)
    {
      v6 = v5;
      if (v5 == -536870186)
      {
        if (*(*v2 + 216) && CCLogStream::shouldLog())
        {
          AppleBCMWLANCommander::quiesce(v2);
        }
      }

      else if (*(*v2 + 216) && CCLogStream::shouldLog())
      {
        CCLogStream::logCrit(*(*v2 + 216), "[dk] %s@%d: Unexpected error (%d) from commandSleep\n", "quiesce", 1538, v6);
      }

      break;
    }
  }

  *(*v2 + 328) = -1;
  v7 = *v2;
  if (*(*v2 + 216))
  {
    v8 = *(*v2 + 216);
    v9 = CCLogStream::shouldLog();
    v7 = *v2;
    if (v9)
    {
      AppleBCMWLANCommander::quiesce(v7);
      v7 = v14;
    }
  }

  if (*(v7 + 216))
  {
    v10 = *(v7 + 216);
    v11 = CCLogStream::shouldLog();
    v7 = *v2;
    if (v11)
    {
      CCLogStream::logAlert(*(v7 + 216), "[dk] %s@%d:Command path disabled.\n", "quiesce", 1546);
      v7 = *v2;
    }
  }

  result = AppleBCMWLANCommandQueue::getSize(*(v7 + 96));
  if (result)
  {
    v13 = *v2;
    result = *(*v2 + 216);
    if (result)
    {
      result = CCLogStream::shouldLog();
      v13 = *v2;
      if (result)
      {
        result = CCLogStream::logAlert(*(v13 + 216), "[dk] %s@%d:active commands, do not reset command pool\n", "quiesce", 1548);
        v13 = *v2;
      }
    }

    *(v13 + 372) = 1;
  }

  return result;
}

uint64_t AppleBCMWLANCommander::wakeup(AppleBCMWLANCommander *this)
{
  v1 = this + 64;
  IOSimpleReporter::incrementValue(*(*(this + 8) + 32), 0x436D647257616B00uLL, 1);
  v2 = *v1;
  if (*(*v1 + 244) == 1)
  {
    (*(**(v2 + 232) + 56))(*(v2 + 232), 10000);
    v2 = *v1;
  }

  *(v2 + 245) = 0;
  *(*v1 + 244) = 0;
  if (*(*v1 + 216) && CCLogStream::shouldLog())
  {
    AppleBCMWLANCommander::wakeup(v1);
  }

  return 1;
}

AppleBCMWLANCommand *AppleBCMWLANCommander::resetFreeCommanderPool(AppleBCMWLANCommander *this)
{
  Size = AppleBCMWLANCommandQueue::getSize(*(*(this + 8) + 80));
  v3 = *(this + 8);
  if (*(v3 + 216))
  {
    shouldLog = CCLogStream::shouldLog();
    v3 = *(this + 8);
    if (shouldLog)
    {
      CCLogStream::logAlert(*(v3 + 216), "[dk] %s@%d:kCmdQFree Count %d\n", "resetFreeCommanderPool", 1577, Size);
      v3 = *(this + 8);
    }
  }

  if (*(v3 + 372) == 1)
  {
    result = *(v3 + 216);
    if (result)
    {
      result = CCLogStream::shouldLog();
      v3 = *(this + 8);
      if (result)
      {
        result = CCLogStream::logAlert(*(v3 + 216), "[dk] %s@%d:command pool reset not allowed\n", "resetFreeCommanderPool", 1580);
        v3 = *(this + 8);
      }
    }

    *(v3 + 372) = 0;
  }

  else
  {
    v6 = AppleBCMWLANCommander::dequeueCommand(this, 0);
    if (v6)
    {
      v7 = v6;
      v8 = 0;
      do
      {
        v9 = atomic_load(v7 + 2);
        if (v9 != 1 && *(*(this + 8) + 216) && CCLogStream::shouldLog())
        {
          v10 = *(*(this + 8) + 216);
          v11 = atomic_load(v7 + 2);
          CCLogStream::logAlert(v10, "[dk] %s@%d:Unexpected command retain count %d\n", "resetFreeCommanderPool", 1592, v11);
        }

        (*(*v7 + 16))(v7);
        ++v8;
        v7 = AppleBCMWLANCommander::dequeueCommand(this, 0);
      }

      while (v7);
    }

    else
    {
      v8 = 0;
    }

    v12 = *(this + 8);
    if (v8 == Size)
    {
      v8 = Size;
    }

    else if (*(v12 + 216))
    {
      v13 = CCLogStream::shouldLog();
      v12 = *(this + 8);
      if (v13)
      {
        CCLogStream::logAlert(*(v12 + 216), "[dk] %s@%d:Mismatch between Queue size %d and actual freed count %d\n", "resetFreeCommanderPool", 1599, Size, v8);
        v12 = *(this + 8);
      }
    }

    result = *(v12 + 360);
    if (result)
    {
      result = (*(*result + 80))(result);
    }

    for (; v8; --v8)
    {
      v14 = *(*(this + 8) + 208);
      MaxCmdTxPayload = AppleBCMWLANCommander::getMaxCmdTxPayload(this);
      result = AppleBCMWLANCommand::newCmd(v14, MaxCmdTxPayload, *(*(this + 8) + 360));
      if (!result)
      {
        break;
      }

      result = AppleBCMWLANCommander::enqueueCommand(this, 0, result);
    }
  }

  return result;
}

void *AppleBCMWLANCommander::dequeueCommand(uint64_t a1, unsigned int a2)
{
  v3 = AppleBCMWLANCommandQueue::lockDequeue(*(*(a1 + 64) + 8 * a2 + 80));
  AppleBCMWLANCommandQueue::getSize(*(*(a1 + 64) + 88));
  AppleBCMWLANCommandQueue::getSize(*(*(a1 + 64) + 96));
  AppleBCMWLANCommandQueue::getSize(*(*(a1 + 64) + 104));
  AppleBCMWLANCommandQueue::getSize(*(*(a1 + 64) + 112));
  kdebug_trace();
  return v3;
}

uint64_t AppleBCMWLANCommander::reset(AppleBCMWLANCommander *this)
{
  AppleBCMWLANCommander::dumpState(this, 0, 0, 0);
  v2 = this + 64;
  *(*(this + 8) + 244) = 1;
  *(*(this + 8) + 240) = 0;
  v12 = -469793790;
  AppleBCMWLANCommandQueue::lockMap(*(*(this + 8) + 112), AppleBCMWLANCommander::setCommandStatus, this, &v12);
  (*(**(*v2 + 232) + 72))(*(*v2 + 232));
  if (*(*(this + 8) + 216) && CCLogStream::shouldLog())
  {
    AppleBCMWLANCommander::reset(this + 64);
  }

  while (1)
  {
    v3 = AppleBCMWLANCommander::dequeueCommand(this, 3u);
    if (!v3)
    {
      v3 = AppleBCMWLANCommander::dequeueCommand(this, 2u);
      if (!v3)
      {
        break;
      }
    }

    v4 = v3;
    AppleBCMWLANCommand::setStatus(v3, v12);
    AppleBCMWLANCommand::getTransactionID(v4);
    AppleBCMWLANCommand::getStatus(v4);
    AppleBCMWLANCommand::getIOCtl(v4);
    v5 = *AppleBCMWLANCommand::getIOVar(v4);
    kdebug_trace();
    atomic_fetch_add_explicit((*(this + 8) + 148), 0xFFFFFFFF, memory_order_relaxed);
    AppleBCMWLANCommander::enqueueCommand(this, 4u, v4);
  }

  if (AppleBCMWLANCommandQueue::getSize(*(*v2 + 104)))
  {
    AppleBCMWLANCommander::reset();
  }

  if (AppleBCMWLANCommandQueue::getSize(*(*v2 + 96)))
  {
    AppleBCMWLANCommander::reset();
  }

  v6 = AppleBCMWLANCommander::dequeueCommand(this, 1u);
  if (v6)
  {
    v7 = v6;
    do
    {
      AppleBCMWLANCommand::setStatus(v7, v12);
      AppleBCMWLANCommander::enqueueCommand(this, 4u, v7);
      v7 = AppleBCMWLANCommander::dequeueCommand(this, 1u);
    }

    while (v7);
  }

  *(*v2 + 245) = 0;
  v8 = *v2;
  if (*(*v2 + 216))
  {
    v9 = *(*v2 + 216);
    shouldLog = CCLogStream::shouldLog();
    v8 = *v2;
    if (shouldLog)
    {
      AppleBCMWLANCommander::reset(v8);
      v8 = v13;
    }
  }

  if ((*(**(v8 + 192) + 144))(*(v8 + 192)))
  {
    AppleBCMWLANCommander::serviceCompletedQueue(this, 0);
  }

  else
  {
    IO80211WorkSource::signalWorkAvailable(this);
  }

  *(*v2 + 40) = 0;
  *(*v2 + 48) = 0;
  *(*v2 + 56) = 0;
  *(*v2 + 323) = 0;
  *(*v2 + 322) = 0;
  *(*v2 + 321) = 0;
  return 0;
}

uint64_t AppleBCMWLANCommander::serviceCompletedQueue(AppleBCMWLANCommander *this, int a2)
{
  Size = a2;
  if (a2 || (Size = AppleBCMWLANCommandQueue::getSize(*(*(this + 8) + 112))) != 0)
  {
    do
    {
      v4 = AppleBCMWLANCommander::dequeueCommand(this, 4u);
      if (!v4)
      {
        break;
      }

      v5 = v4;
      v6 = AppleBCMWLANCommander::processCompletedCommand(this, v4);
      if (AppleBCMWLANCommand::getStatus(v5) == -536870911)
      {
        AppleBCMWLANCommand::setStatus(v5, v6);
      }

      v7 = *(*(this + 8) + 8);
      if (v7)
      {
        AppleBCMWLANCommandMonitor::monitorCmdCompleted(v7, v5);
      }

      QueuedTime_ns = AppleBCMWLANCommand::getQueuedTime_ns(v5, 2u);
      v9 = (QueuedTime_ns - AppleBCMWLANCommand::getQueuedTime_ns(v5, 1u)) / 0x3E8uLL;
      if (v9 > IOSimpleReporter::getValue(*(*(this + 8) + 32), 0x436D647250517400uLL))
      {
        IOSimpleReporter::setValue(*(*(this + 8) + 32), 0x436D647250517400uLL, v9);
      }

      v10 = AppleBCMWLANCommand::getQueuedTime_ns(v5, 3u);
      v11 = (v10 - AppleBCMWLANCommand::getQueuedTime_ns(v5, 2u)) / 0x3E8uLL;
      if (v11 > IOSimpleReporter::getValue(*(*(this + 8) + 32), 0x436D64724F517400uLL))
      {
        IOSimpleReporter::setValue(*(*(this + 8) + 32), 0x436D64724F517400uLL, v11);
      }

      v12 = AppleBCMWLANCommand::getQueuedTime_ns(v5, 4u);
      v13 = (v12 - AppleBCMWLANCommand::getQueuedTime_ns(v5, 3u)) / 0x3E8uLL;
      if (v13 > IOSimpleReporter::getValue(*(*(this + 8) + 32), 0x436D647241517400uLL))
      {
        IOSimpleReporter::setValue(*(*(this + 8) + 32), 0x436D647241517400uLL, v13);
      }

      v14 = AppleBCMWLANCommand::complete(v5, *(*(this + 8) + 136));
      if (v14)
      {
        v15 = v14;
        if (*(*(this + 8) + 216))
        {
          if (CCLogStream::shouldLog())
          {
            CCLogStream::logAlert(*(*(this + 8) + 216), "[dk] %s@%d: Failed to CMD complete(), cret[0x%08x]\n", "serviceCompletedQueue", 2436, v15);
          }
        }
      }

      if ((AppleBCMWLANCommand::getCommandType(v5) & 8) != 0)
      {
        AppleBCMWLANCommander::enqueueCommand(this, 0, v5);
        --*(*(this + 8) + 144);
        v16 = *(this + 8);
        if (*(v16 + 156))
        {
          if (!*(v16 + 144))
          {
            (*(**(v16 + 184) + 88))(*(v16 + 184), v16 + 144);
          }
        }
      }

      --Size;
    }

    while (Size);
  }

  if (!AppleBCMWLANCommandQueue::getSize(*(*(this + 8) + 88)) && !AppleBCMWLANCommandQueue::getSize(*(*(this + 8) + 104)) && !AppleBCMWLANCommandQueue::getSize(*(*(this + 8) + 96)))
  {
    AppleBCMWLANCore::syncChipTimer(*(*(this + 8) + 176));
  }

  return 0;
}

uint64_t AppleBCMWLANCommander::handleCrashCommanderAsyncCallBack(uint64_t a1)
{
  v1 = a1 + 64;
  result = *(*(a1 + 64) + 216);
  if (result)
  {
    result = CCLogStream::shouldLog();
    if (result)
    {
      result = AppleBCMWLANCommander::handleCrashCommanderAsyncCallBack(v1);
    }
  }

  ++AppleBCMWLANCommander::handleCrashCommanderAsyncCallBack(CommandID &,int,CommandRxPayload &,void *)::count;
  return result;
}

{
  v1 = OUTLINED_FUNCTION_3_12(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:\n Async CB count %d\n", "handleCrashCommanderAsyncCallBack", 1693, AppleBCMWLANCommander::handleCrashCommanderAsyncCallBack(CommandID &,int,CommandRxPayload &,void *)::count);
}

void AppleBCMWLANCommander::crashCommander(AppleBCMWLANCommander *this)
{
  v5[0] = this;
  v5[1] = AppleBCMWLANCommander::handleCrashCommanderAsyncCallBack;
  v5[2] = 0;
  if (*(*(this + 8) + 216) && CCLogStream::shouldLog())
  {
    CCLogStream::logAlert(*(*(this + 8) + 216), "[dk] %s@%d:Crash commander unit test\n", "crashCommander", 1704);
  }

  while (1)
  {
    do
    {
      v4 = 262148;
      v6[1] = 0;
      v6[0] = 0x1AAAAAA00;
      v6[2] = 0xAAAAAAAA00000009;
      v2 = AppleBCMWLANCommander::issueCommand(this, v6, &kNoTxPayload, 0, &v4, v5, 0);
    }

    while (!v2);
    v3 = v2;
    if (*(*(this + 8) + 216))
    {
      if (CCLogStream::shouldLog())
      {
        CCLogStream::logAlert(*(*(this + 8) + 216), "[dk] %s@%d: Failed GET IOCTL, cret[0x%08x]\n", "crashCommander", 1710, v3);
      }
    }
  }
}

uint64_t AppleBCMWLANCommander::crashIOVar(AppleBCMWLANCommander *this)
{
  v2 = *(this + 8);
  if (*(v2 + 216))
  {
    shouldLog = CCLogStream::shouldLog();
    v2 = *(this + 8);
    if (shouldLog)
    {
      CCLogStream::logAlert(*(v2 + 216), "[dk] %s@%d:Crash IOVAR commander unit test\n", "crashIOVar", 1718);
      v2 = *(this + 8);
    }
  }

  v9 = 1;
  *(v2 + 304) = 1;
  v7 = &v9;
  v8 = 0x400040004;
  v10[1] = 0;
  v10[0] = 0x1AAAAAA00;
  v10[2] = 0xAAAAAAAA00000005;
  result = AppleBCMWLANCommander::issueCommand(this, v10, &kNoTxPayload, &v7, &v8 + 1, *(this + 8) + 280, 0);
  v5 = *(this + 8);
  if (result)
  {
    v6 = result;
    result = *(v5 + 216);
    if (result)
    {
      result = CCLogStream::shouldLog();
      v5 = *(this + 8);
      if (result)
      {
        result = CCLogStream::logAlert(*(v5 + 216), "[dk] %s@%d: Failed GET IOCTL, cret[0x%08x]\n", "crashIOVar", 1725, v6);
        v5 = *(this + 8);
      }
    }
  }

  *(v5 + 304) = 0;
  return result;
}