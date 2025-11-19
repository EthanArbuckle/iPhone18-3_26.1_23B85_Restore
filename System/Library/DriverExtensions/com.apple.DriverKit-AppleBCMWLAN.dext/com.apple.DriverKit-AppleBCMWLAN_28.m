uint64_t AppleBCMWLANDMASlab::copyBufferDescriptorToBounce(AppleBCMWLANDMASlab *this, unsigned int a2, IO80211Buffer *a3)
{
  v3 = 3758097084;
  if (a3)
  {
    OUTLINED_FUNCTION_0_21(this);
    if (!v7 & v6)
    {
      v8 = v4;
      OUTLINED_FUNCTION_2_17(v5);
      if (v6)
      {
        v11 = v10;
        v12 = v9;
        if (IO80211Buffer::getLength(v9) > v10 && IO80211Buffer::getLength(v12) >= (v8 + v11))
        {
          v13 = OUTLINED_FUNCTION_1_18();
          if (IO80211Buffer::readBytes(v13, v14, v15))
          {
            return 0;
          }

          else
          {
            return 3758097084;
          }
        }
      }
    }
  }

  return v3;
}

uint64_t AppleBCMWLANDMASlab::copyBounceToBufferDescriptor(AppleBCMWLANDMASlab *this, unsigned int a2, IO80211Buffer *a3)
{
  v3 = 3758097084;
  if (a3)
  {
    OUTLINED_FUNCTION_0_21(this);
    if (!v7 & v6)
    {
      v8 = v4;
      OUTLINED_FUNCTION_2_17(v5);
      if (v6)
      {
        v11 = v10;
        v12 = v9;
        if (IO80211Buffer::getLength(v9) > v10 && IO80211Buffer::getLength(v12) >= (v8 + v11))
        {
          v13 = OUTLINED_FUNCTION_1_18();
          if (IO80211Buffer::writeBytes(v13, v14, v15, v16))
          {
            return 0;
          }

          else
          {
            return 3758097084;
          }
        }
      }
    }
  }

  return v3;
}

void AppleBCMWLANDMASlab::zero(AppleBCMWLANDMASlab *this)
{
  v1 = OUTLINED_FUNCTION_0_21(this);
  if (!v5 & v4)
  {
    v6 = v1;
    BytesNoCopy = IO80211Buffer::getBytesNoCopy(*(v3 + 24), (*(v3 + 64) * v2), *(v3 + 64));
    if (BytesNoCopy)
    {
      v8 = *(*(v6 + 48) + 64);

      bzero(BytesNoCopy, v8);
    }
  }
}

uint64_t AppleBCMWLANSkywalkInterface::init(AppleBCMWLANSkywalkInterface *this)
{
  IOLog("AppleBCMWLANSkywalkInterface::init start\n");
  result = IO80211InfraInterface::init(this);
  if (result)
  {
    result = IOMallocZeroTyped();
    *(this + 19) = result;
    if (result)
    {
      IOLog("Interface Init complete\n");
      return 1;
    }
  }

  return result;
}

uint64_t AppleBCMWLANSkywalkInterface::initWithProviderAndParameters(IO80211SkywalkInterface *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *__src, int a8, uint64_t a9, uint64_t a10)
{
  v10 = *(a1 + 19);
  if (!v10)
  {
    IOLog("skywalk interface ivars alloc fail\n", a2, a3, a4, a5, a6, __src);
    return 0;
  }

  if (a6 > 4)
  {
    return 0;
  }

  v12 = a5;
  v13 = a4;
  v14 = a3;
  *(v10 + 42) = a6;
  memcpy((*(a1 + 19) + 44), __src, 4 * (a6 & 0x3F));
  IO80211SkywalkInterface::setInterfaceRole(a1, v13);
  IO80211SkywalkInterface::setInterfaceId(a1, v14);
  *(*(a1 + 19) + 16) = a8;
  *(*(a1 + 19) + 168) = a9;
  v16 = *(a1 + 19);
  v17 = *(v16 + 168);
  if (v17)
  {
    (*(*v17 + 8))(v17);
    v16 = *(a1 + 19);
  }

  *(v16 + 8) = a10;
  *(*(a1 + 19) + 162) = v12;
  *(*(a1 + 19) + 161) = 0;
  v18 = 1;
  IOParseBootArgNumber("wlan.skywalk.ktrace", &fKernelTraceEnabled, 1);
  if ((*(*a1 + 1088))(a1))
  {
    (*(*a1 + 1088))(a1);
    if (CCLogStream::shouldLog())
    {
      v19 = (*(*a1 + 1088))(a1);
      CCLogStream::logInfoIf(v19, 0x80uLL, "[dk] %s@%d:Skywalk interface allocation success", "initWithProviderAndParameters", 162);
    }
  }

  return v18;
}

uint64_t AppleBCMWLANSkywalkInterface::setMacAddress(uint64_t a1, ether_addr *a2)
{
  v4 = AppleBCMWLANCore::setCurEtheraddr(*(*(a1 + 152) + 24), a2);
  if (!v4)
  {
    if (AppleBCMWLANCore::featureFlagIsBitSet(*(*(a1 + 152) + 24), 115) && AppleBCMWLANCore::get11beAdapter(*(*(a1 + 152) + 24)))
    {
      v5 = AppleBCMWLANCore::get11beAdapter(*(*(a1 + 152) + 24));
      AppleBCMWLAN11beAdapter::setMloAddr(v5, a2);
    }

    v6 = *(a1 + 152);
    if (v6[161] == 1)
    {
      (*(**v6 + 72))(*v6, a1);
      (*(***(a1 + 152) + 64))(**(a1 + 152), a1);
    }
  }

  return v4;
}

uint64_t AppleBCMWLANSkywalkInterface::free(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  (*(v2 + 1088))(v1);
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Enter ::free [%p]", v5, v6, v7);
}

uint64_t AppleBCMWLANSkywalkInterface::start(const OSMetaClassBase *a1, IO80211SkywalkInterface *a2)
{
  __src = xmmword_1003AD700;
  OSMetaClassBase::safeMetaCast(a1, gAppleBCMWLANCoreMetaClass);
  (a1->__vftable[48].Dispatch)(a1);
  v5 = OUTLINED_FUNCTION_86();
  FaultReporter = AppleBCMWLANCore::getFaultReporter(v5);
  return AppleBCMWLANSkywalkInterface::initWithProviderAndParameters(a2, v7, 0, 1, 1, 4, &__src, 256, v2, FaultReporter);
}

uint64_t AppleBCMWLANSkywalkInterface::start(OSMetaClassBase *anObject, IO80211SkywalkInterface *a2)
{
  __src = 3;
  v4 = anObject[3].__vftable;
  if ((v4[889].release & 1) == 0)
  {
    IOLog("ERROR: Skywalk config parameters not valid\n");
    v4 = anObject[3].__vftable;
  }

  release_high = HIDWORD(v4[889].release);
  OSMetaClassBase::safeMetaCast(anObject, gAppleBCMWLANCoreMetaClass);
  v6 = (anObject->__vftable[48].Dispatch)(anObject);
  FaultReporter = AppleBCMWLANCore::getFaultReporter(anObject);
  AppleBCMWLANSkywalkInterface::initWithProviderAndParameters(a2, v8, release_high, 2, 0, 1, &__src, 256, v6, FaultReporter);
  Dispatch = anObject[3].__vftable[889].Dispatch;

  return IO80211SkywalkInterface::setParentInterface(a2, Dispatch);
}

uint64_t AppleBCMWLANSkywalkInterface::start(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1088))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:skywalk start fail\n", "start", 277);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1088))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Failed to register interface with bus interface", "start", 324);
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1088))(v1);
  OUTLINED_FUNCTION_9_4();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:infra interface registration status = %d \n", v5, v6, v7);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1088))(v1);
  return CCLogStream::logCrit(v3, "[dk] %s@%d:bus skywalk is not valid\n", "start", 293);
}

uint64_t AppleBCMWLANSkywalkInterface::registerInterface(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1088))(v1);
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:SkywalkInterface: media type report fail, ret[0x%08x]\n", v5, v6, v7);
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1088))(v1);
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:SkywalkInterface: set headroom fail fail, ret[0x%08x]\n", v5, v6, v7);
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1088))(v1);
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:SkywalkInterface: skywalk interface registration fail, ret[0x%08x]\n", v5, v6, v7);
}

uint64_t AppleBCMWLANSkywalkInterface::stop(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1088))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Skywalk Interface Stop\n", "stop", 479);
}

uint64_t AppleBCMWLANSkywalkInterface::getSupportedMediaArray(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1088))(v1);
  return CCLogStream::logInfo(v3, "[dk] %s@%d:Exit with ret:0x%x\n", "getSupportedMediaArray", 575, 0);
}

uint64_t AppleBCMWLANSkywalkInterface::setRunningState(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = OUTLINED_FUNCTION_5_5(a1);
  v6 = (*(v5 + 1088))(v4);
  return CCLogStream::logInfo(v6, "[dk] %s@%d:fRunning:%d\n", "setRunningState", 610, *(*a3 + 160));
}

uint64_t AppleBCMWLANSkywalkInterface::enableDatapath(uint64_t *a1, uint64_t a2, const OSString **a3)
{
  v5 = OUTLINED_FUNCTION_5_5(a1);
  v7 = (*(v6 + 1088))(v5);
  v8 = (*(*a1 + 160))(a1);
  InterfaceId = IO80211SkywalkInterface::getInterfaceId(a1);
  if (*a3)
  {
    CStringNoCopy = OSString::getCStringNoCopy(*a3);
  }

  else
  {
    CStringNoCopy = "unknown";
  }

  return CCLogStream::logInfo(v7, "[dk] %s@%d:AppleBCMWLANSkywalkInterface %s ifid %d Role %s enable skywalk Datapath.\n", "enableDatapath", 624, v8, InterfaceId, CStringNoCopy);
}

uint64_t AppleBCMWLANSkywalkInterface::enableDatapath(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_9_5(a1);
  result = (*(v3 + 1088))(v2);
  if (result)
  {
    (*(*v1 + 1088))(v1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v5 = (*(*v1 + 1088))(v1);
      return CCLogStream::logCrit(v5, "[dk] %s@%d:interface not enabled yet\n", "enableDatapath", 626);
    }
  }

  return result;
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1088))(v1);
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:ERROR: skywalk rx completion queue enqueue fail with return %d\n", v5, v6, v7);
}

{
  v2 = OUTLINED_FUNCTION_9_5(a1);
  result = (*(v3 + 1088))(v2);
  if (result)
  {
    (*(*v1 + 1088))(v1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v5 = (*(*v1 + 1088))(v1);
      return CCLogStream::logCrit(v5, "[dk] %s@%d:rx completion queue not valid\n", "enableDatapath", 631);
    }
  }

  return result;
}

{
  v2 = OUTLINED_FUNCTION_9_5(a1);
  result = (*(v3 + 1088))(v2);
  if (result)
  {
    (*(*v1 + 1088))(v1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v5 = (*(*v1 + 1088))(v1);
      return CCLogStream::logCrit(v5, "[dk] %s@%d:tx completion queue not valid\n", "enableDatapath", 628);
    }
  }

  return result;
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1088))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:ERROR: skywalk data path enable fail\n", "enableDatapath", 649);
}

uint64_t AppleBCMWLANSkywalkInterface::enable(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1088))(v1);
  return CCLogStream::logInfo(v3, "[dk] %s@%d:Enter", "enable", 660);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1088))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Called, but interface is not running", "enable", 677);
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1088))(v1);
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logInfo(v3, "[dk] %s@%d:Exit with ret:0x%x\n", v5, v6, v7);
}

uint64_t AppleBCMWLANSkywalkInterface::enable(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = OUTLINED_FUNCTION_5_5(a1);
  v7 = (*(v6 + 1088))(v5);
  v8 = (*(*a1 + 160))(a1);
  InterfaceId = IO80211SkywalkInterface::getInterfaceId(a1);
  return CCLogStream::logAlert(v7, "[dk] %s@%d:AppleBCMWLANSkywalkInterface %s ifid %d ready to handle packet data, running %d\n", "enable", 666, v8, InterfaceId, *(*a3 + 160));
}

{
  v4 = OUTLINED_FUNCTION_5_5(a1);
  v6 = (*(v5 + 1088))(v4);
  isPoweredOn = AppleBCMWLANCore::isPoweredOn(*(*a3 + 24));
  isWatchdogRunning = AppleBCMWLANCore::isWatchdogRunning(*(*a3 + 24));
  return CCLogStream::logAlert(v6, "[dk] %s@%d:data path cannot enable, power state %d, watchdog status %d\n", "enable", 674, isPoweredOn, isWatchdogRunning);
}

uint64_t AppleBCMWLANSkywalkInterface::disableDatapath(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1088))(v1);
  return CCLogStream::logInfo(v3, "[dk] %s@%d:Enter", "disableDatapath", 694);
}

{
  v2 = OUTLINED_FUNCTION_9_5(a1);
  result = (*(v3 + 1088))(v2);
  if (result)
  {
    (*(*v1 + 1088))(v1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v5 = (*(*v1 + 1088))(v1);
      return CCLogStream::logCrit(v5, "[dk] %s@%d:tx completion queue not valid\n", "disableDatapath", 713);
    }
  }

  return result;
}

{
  v2 = OUTLINED_FUNCTION_9_5(a1);
  result = (*(v3 + 1088))(v2);
  if (result)
  {
    (*(*v1 + 1088))(v1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v5 = (*(*v1 + 1088))(v1);
      return CCLogStream::logCrit(v5, "[dk] %s@%d:rx completion queue not valid\n", "disableDatapath", 709);
    }
  }

  return result;
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1088))(v1);
  return CCLogStream::logCrit(v3, "[dk] %s@%d:skywalk data path disable fail\n", "disableDatapath", 722);
}

uint64_t AppleBCMWLANSkywalkInterface::disableDatapath(uint64_t *a1, uint64_t a2, const OSString **a3)
{
  v5 = OUTLINED_FUNCTION_11_4(a1);
  (*(v6 + 1088))(v5);
  v7 = OUTLINED_FUNCTION_86();
  InterfaceId = IO80211SkywalkInterface::getInterfaceId(v7);
  CStringNoCopy = OSString::getCStringNoCopy(*a3);
  return CCLogStream::logInfo(v3, "[dk] %s@%d:IfId %d Role %s disable skywalk data path\n", "disableDatapath", 697, InterfaceId, CStringNoCopy);
}

{
  v5 = OUTLINED_FUNCTION_11_4(a1);
  (*(v6 + 1088))(v5);
  v7 = OUTLINED_FUNCTION_8_12();
  InterfaceId = IO80211SkywalkInterface::getInterfaceId(v7);
  if (*a3)
  {
    CStringNoCopy = OSString::getCStringNoCopy(*a3);
  }

  else
  {
    CStringNoCopy = "Unknown";
  }

  return CCLogStream::logInfo(v3, "[dk] %s@%d:IfId %d Role %s disable skywalk data path done\n", "disableDatapath", 716, InterfaceId, CStringNoCopy);
}

uint64_t AppleBCMWLANSkywalkInterface::disableDatapath(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 1088))(a2);
  if (result)
  {
    (*(*a2 + 1088))(a2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      (*(*a2 + 1088))(a2);
      OUTLINED_FUNCTION_11_3();
      return CCLogStream::logCrit(v4, "[dk] %s@%d:tx submission queue ac %d not valid\n", v5, v6, v7);
    }
  }

  return result;
}

uint64_t AppleBCMWLANSkywalkInterface::disable(uint64_t *a1)
{
  v3 = OUTLINED_FUNCTION_11_4(a1);
  (*(v4 + 1088))(v3);
  OUTLINED_FUNCTION_4_6();
  (*(v5 + 160))(v1);
  v6 = OUTLINED_FUNCTION_8_12();
  InterfaceId = IO80211SkywalkInterface::getInterfaceId(v6);
  v12 = *(*(v1 + 152) + 161);
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v2, "[dk] %s@%d:AppleBCMWLANSkywalkInterface %s ifid %d disable, fEnabled:%d\n", v8, v9, v10, InterfaceId, v12);
}

uint64_t AppleBCMWLANSkywalkInterface::setMulticastAddresses(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1088))(v1);
  OUTLINED_FUNCTION_9_4();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:setMulticastMode( %d) failed\n", v5, v6, v7);
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1088))(v1);
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logInfoIf(v3, 0x80uLL, "[dk] %s@%d:Returning 0x%08x\n", v5, v6, v7);
}

uint64_t AppleBCMWLANSkywalkInterface::setAllMulticastModeEnable(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1088))(v1);
  OUTLINED_FUNCTION_9_4();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Enter, enable:%d", v5, v6, v7);
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1088))(v1);
  OUTLINED_FUNCTION_9_4();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:setAllMulticastModeEnable( %d) failed\n", v5, v6, v7);
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1088))(v1);
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logInfoIf(v3, 0x80uLL, "[dk] %s@%d:Returning 0x%08x\n", v5, v6, v7);
}

uint64_t AppleBCMWLANSkywalkInterface::setCurrentApAddress(uint64_t *a1, uint64_t a2, unsigned __int8 *a3)
{
  v6 = OUTLINED_FUNCTION_11_4(a1);
  (*(v7 + 1088))(v6);
  v8 = OUTLINED_FUNCTION_8_12();
  if (IO80211SkywalkInterface::getInterfaceRole(v8) != 1 || IO80211_io80211isSensitiveInfoAllowed())
  {
    v9 = *a3;
  }

  if (IO80211SkywalkInterface::getInterfaceRole(v4) != 1 || IO80211_io80211isSensitiveInfoAllowed())
  {
    v10 = a3[1];
  }

  if (IO80211SkywalkInterface::getInterfaceRole(v4) != 1 || IO80211_io80211isSensitiveInfoAllowed())
  {
    v11 = a3[2];
  }

  if (IO80211SkywalkInterface::getInterfaceRole(v4) != 1 || IO80211_io80211isSensitiveInfoAllowed())
  {
    v12 = a3[3];
  }

  if (IO80211SkywalkInterface::getInterfaceRole(v4) != 1 || IO80211_io80211isSensitiveInfoAllowed())
  {
    v13 = a3[4];
  }

  if (IO80211SkywalkInterface::getInterfaceRole(v4) != 1 || IO80211_io80211isSensitiveInfoAllowed())
  {
    v14 = a3[5];
  }

  (*(*v4 + 160))(v4);
  v15 = OUTLINED_FUNCTION_86();
  IO80211SkywalkInterface::getInterfaceId(v15);
  OUTLINED_FUNCTION_9_4();
  return CCLogStream::logAlert(v3, v16);
}

uint64_t AppleBCMWLANSkywalkInterface::setCurrentApAddress(uint64_t *a1, const char *a2)
{
  v5 = OUTLINED_FUNCTION_11_4(a1);
  (*(v6 + 1088))(v5);
  OUTLINED_FUNCTION_4_6();
  (*(v7 + 160))(v2);
  v8 = OUTLINED_FUNCTION_8_12();
  InterfaceId = IO80211SkywalkInterface::getInterfaceId(v8);
  OUTLINED_FUNCTION_9_4();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:%s with null peer on skywalk interface for %s ifid %d\n", v10, v11, v12, a2, InterfaceId);
}

uint64_t AppleBCMWLANSkywalkInterface::powerOnNotification(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1088))(v1);
  return CCLogStream::logInfo(v3, "[dk] %s@%d:Enter", "powerOnNotification", 913);
}

uint64_t AppleBCMWLANSkywalkInterface::powerOffNotification(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1088))(v1);
  return CCLogStream::logInfo(v3, "[dk] %s@%d:Enter", "powerOffNotification", 919);
}

uint64_t AppleBCMWLANSkywalkInterface::statsDump(uint64_t *a1, uint64_t a2, const OSString **a3)
{
  v5 = OUTLINED_FUNCTION_11_4(a1);
  (*(v6 + 1088))(v5);
  v7 = OUTLINED_FUNCTION_86();
  InterfaceId = IO80211SkywalkInterface::getInterfaceId(v7);
  CStringNoCopy = OSString::getCStringNoCopy(*a3);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Skywalk Interface ID %d Role %s\n", "statsDump", 929, InterfaceId, CStringNoCopy);
}

uint64_t AppleBCMWLANSkywalkInterface::printDataPath(uint64_t *a1)
{
  v3 = OUTLINED_FUNCTION_11_4(a1);
  (*(v4 + 1088))(v3);
  v5 = OUTLINED_FUNCTION_86();
  InterfaceRoleStr = IO80211SkywalkInterface::getInterfaceRoleStr(v5);
  v7 = (*(*v1 + 160))(v1);
  return CCLogStream::logInfo(v2, "[dk] %s@%d:Enter InterfaceRole:%s bsdname:%s\n", "printDataPath", 945, InterfaceRoleStr, v7);
}

uint64_t AppleBCMWLANSkywalkInterface::setPromiscuousModeEnable(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1088))(v1);
  OUTLINED_FUNCTION_9_4();
  return CCLogStream::logInfo(v3, "[dk] %s@%d:Enter, enable:%d", v5, v6, v7);
}

uint64_t AppleBCMWLANSkywalkInterface::bpfTap(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1088))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:infra interface associated, cannot enable here\n", "bpfTap", 1033);
}

uint64_t AppleBCMWLANSkywalkInterface::setInterfaceUnitNumber(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1088))(v1);
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logInfo(v3, "[dk] %s@%d:Enter: unitNumber:%u\n", v5, v6, v7);
}

uint64_t AppleBCMWLANSkywalkInterface::setInterfaceEnable(uint64_t *a1, uint64_t a2, char a3)
{
  v5 = OUTLINED_FUNCTION_5_5(a1);
  v7 = (*(v6 + 1088))(v5);
  v8 = (*(*a1 + 160))(a1);
  InterfaceId = IO80211SkywalkInterface::getInterfaceId(a1);
  InterfaceRole = IO80211SkywalkInterface::getInterfaceRole(a1);
  ActiveMediaType = IO80211SkywalkInterface::getActiveMediaType(a1);
  v12 = (*(*a1 + 1168))(a1);
  return CCLogStream::logInfo(v7, "[dk] %s@%d:Enter skywalk bcm interface %s, ifId %d, ifRole %d,  isEnable = %d activeMediaType = %d associated=%d fEnabled:%d isDataPathConnected %d \n", "setInterfaceEnable", 1160, v8, InterfaceId, InterfaceRole, a3 & 1, ActiveMediaType, v12, *(a1[19] + 161), *(a1[19] + 216));
}

uint64_t AppleBCMWLANSkywalkInterface::setInterfaceEnable(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1088))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:%s:%d ERROR: super::setInterfaceEnable failed!\n", "setInterfaceEnable", 1174, "setInterfaceEnable", 1174);
}

{
  v3 = OUTLINED_FUNCTION_11_4(a1);
  (*(v4 + 1088))(v3);
  OUTLINED_FUNCTION_4_6();
  v6 = (*(v5 + 160))(v1);
  return CCLogStream::logAlert(v2, "[dk] %s@%d:disable data path for %s\n", "setInterfaceEnable", 1189, v6);
}

{
  v3 = OUTLINED_FUNCTION_11_4(a1);
  (*(v4 + 1088))(v3);
  OUTLINED_FUNCTION_4_6();
  v6 = (*(v5 + 160))(v1);
  return CCLogStream::logAlert(v2, "[dk] %s@%d:enable data path for %s\n", "setInterfaceEnable", 1180, v6);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1088))(v1);
  return CCLogStream::logInfo(v3, "[dk] %s@%d:CurrentState == newState, bailing out", "setInterfaceEnable", 1164);
}

uint64_t AppleBCMWLANSkywalkInterface::setInterfaceEnable(uint64_t *a1, uint64_t a2, uint64_t a3, int a4)
{
  v7 = OUTLINED_FUNCTION_5_5(a1);
  v9 = (*(v8 + 1088))(v7);
  v10 = (*(*a1 + 160))(a1);
  ActiveMediaType = IO80211SkywalkInterface::getActiveMediaType(a1);
  v12 = (*(*a1 + 1168))(a1);
  return CCLogStream::logInfo(v9, "[dk] %s@%d:Exit skywalk bcm interface %s isEnable = %d activeMediaType = %d associated=%d fEnabled:%d isDataPathConnected %d \n", "setInterfaceEnable", 1202, v10, a4, ActiveMediaType, v12, *(*a3 + 161), *(*a3 + 216));
}

uint64_t AppleBCMWLANSkywalkInterface::flushFlowQueues(uint64_t *a1, uint64_t a2, unsigned __int8 *a3)
{
  v4 = OUTLINED_FUNCTION_5_5(a1);
  v6 = (*(v5 + 1088))(v4);
  return CCLogStream::logInfo(v6, "[dk] %s@%d:Removing Peer FLowQueue %02x:%02x:%02x:%02x:%02x:%02x\n", "flushFlowQueues", 1223, *a3, a3[1], a3[2], a3[3], a3[4], a3[5]);
}

uint64_t AppleBCMWLANChipManagerPCIe0x4377b::prepareHardware(AppleBCMWLANChipManagerPCIe0x4377b *this, AppleBCMWLANChipConfigSpace *a2, AppleBCMWLANChipBackplane *a3)
{
  v3 = 3758097090;
  v6 = 0;
  if (a2 && a3)
  {
    if (AppleBCMWLANChipBackplane::readGCICoreReg32(a3, 0xE64u, &v6))
    {
      return 3758097098;
    }

    else
    {
      v6 = v6 & 0xFFFFFFFC | 1;
      AppleBCMWLANChipBackplane::writeGCICoreReg32(a3, 0xE64u, v6);
      return 0;
    }
  }

  return v3;
}

uint64_t AppleBCMWLANChipManagerPCIe0x4377b::checkHardware(AppleBCMWLANChipManagerPCIe0x4377b *this, AppleBCMWLANChipConfigSpace *a2, AppleBCMWLANChipBackplane *a3)
{
  v6 = 0;
  result = 3758097090;
  if (a2 && a3)
  {
    AppleBCMWLANChipBackplane::writeGCICoreReg32(a3, 0x40u, 4u);
    if (AppleBCMWLANChipBackplane::readGCICoreReg32(a3, 0x204u, &v6) || (v6 & 0x4000) != 0)
    {
      return 3758097098;
    }

    else
    {
      v5 = AppleBCMWLANChipBackplane::readGCICoreReg32(a3, 0x40u, &v6);
      result = 3758097098;
      if (!v5)
      {
        if (v6 == 4)
        {
          return 0;
        }

        else
        {
          return 3758097098;
        }
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANTxPowerManager::initWithDriver(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    result = CCLogStream::shouldLog();
    if (result)
    {
      v2 = OUTLINED_FUNCTION_7();
      return CCLogStream::logAlert(v2, "[dk] %s@%d: Failed to get Command Manager\n", "initWithDriver", 131);
    }
  }

  return result;
}

{
  result = *(a1 + 24);
  if (result)
  {
    result = CCLogStream::shouldLog();
    if (result)
    {
      v2 = OUTLINED_FUNCTION_7();
      return CCLogStream::logAlert(v2, "[dk] %s@%d:Unable to get Config Manager\n", "initWithDriver", 127);
    }
  }

  return result;
}

uint64_t AppleBCMWLANTxPowerManager::freeResources(uint64_t a1)
{
  OUTLINED_FUNCTION_3(a1);
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logNoticeIf(v1, 0x20uLL, "[dk] %s@%d:TXPWR_PROFILE: Leave %s \n", v3, v4, v5);
}

uint64_t AppleBCMWLANTxPowerManager::sendDynSARStatsEventCoreAnalytics(uint64_t a1, OSString *this)
{
  v2 = *(*a1 + 24);
  OSString::getCStringNoCopy(this);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logEmergency(v2, "[dk] %s@%d:Failed to send CoreAnalytics CoreAnalyticsSendEvent for event %s", v4, v5, v6);
}

uint64_t AppleBCMWLANTxPowerManager::sendDynSARStatsEventCoreAnalytics(uint64_t a1)
{
  result = OUTLINED_FUNCTION_1_19(a1);
  if (result)
  {
    result = CCLogStream::shouldLog();
    if (result)
    {
      v2 = OUTLINED_FUNCTION_7_12();
      return CCLogStream::logAlert(v2, "[dk] %s@%d:Fail to allocate keyString\n", "sendDynSARStatsEventCoreAnalytics", 399);
    }
  }

  return result;
}

{
  result = OUTLINED_FUNCTION_1_19(a1);
  if (result)
  {
    result = CCLogStream::shouldLog();
    if (result)
    {
      v2 = OUTLINED_FUNCTION_7_12();
      return CCLogStream::logAlert(v2, "[dk] %s@%d:Fail to allocate keyString\n", "sendDynSARStatsEventCoreAnalytics", 391);
    }
  }

  return result;
}

{
  result = OUTLINED_FUNCTION_1_19(a1);
  if (result)
  {
    result = CCLogStream::shouldLog();
    if (result)
    {
      v2 = OUTLINED_FUNCTION_7_12();
      return CCLogStream::logAlert(v2, "[dk] %s@%d:Fail to allocate keyString\n", "sendDynSARStatsEventCoreAnalytics", 383);
    }
  }

  return result;
}

{
  result = OUTLINED_FUNCTION_1_19(a1);
  if (result)
  {
    result = CCLogStream::shouldLog();
    if (result)
    {
      v2 = OUTLINED_FUNCTION_7_12();
      return CCLogStream::logAlert(v2, "[dk] %s@%d:Fail to allocate keyString\n", "sendDynSARStatsEventCoreAnalytics", 375);
    }
  }

  return result;
}

{
  result = OUTLINED_FUNCTION_1_19(a1);
  if (result)
  {
    result = CCLogStream::shouldLog();
    if (result)
    {
      v2 = OUTLINED_FUNCTION_7_12();
      return CCLogStream::logAlert(v2, "[dk] %s@%d:Fail to allocate keyString\n", "sendDynSARStatsEventCoreAnalytics", 367);
    }
  }

  return result;
}

{
  result = OUTLINED_FUNCTION_1_19(a1);
  if (result)
  {
    result = CCLogStream::shouldLog();
    if (result)
    {
      v2 = OUTLINED_FUNCTION_7_12();
      return CCLogStream::logAlert(v2, "[dk] %s@%d:Fail to allocate keyString\n", "sendDynSARStatsEventCoreAnalytics", 359);
    }
  }

  return result;
}

{
  result = OUTLINED_FUNCTION_1_19(a1);
  if (result)
  {
    result = CCLogStream::shouldLog();
    if (result)
    {
      v2 = OUTLINED_FUNCTION_7_12();
      return CCLogStream::logAlert(v2, "[dk] %s@%d:Fail to allocate keyString\n", "sendDynSARStatsEventCoreAnalytics", 351);
    }
  }

  return result;
}

{
  result = OUTLINED_FUNCTION_1_19(a1);
  if (result)
  {
    result = CCLogStream::shouldLog();
    if (result)
    {
      v2 = OUTLINED_FUNCTION_7_12();
      return CCLogStream::logAlert(v2, "[dk] %s@%d:Fail to allocate keyString\n", "sendDynSARStatsEventCoreAnalytics", 343);
    }
  }

  return result;
}

{
  result = OUTLINED_FUNCTION_1_19(a1);
  if (result)
  {
    result = CCLogStream::shouldLog();
    if (result)
    {
      v2 = OUTLINED_FUNCTION_7_12();
      return CCLogStream::logAlert(v2, "[dk] %s@%d:Fail to allocate keyString\n", "sendDynSARStatsEventCoreAnalytics", 335);
    }
  }

  return result;
}

{
  result = OUTLINED_FUNCTION_1_19(a1);
  if (result)
  {
    result = CCLogStream::shouldLog();
    if (result)
    {
      v2 = OUTLINED_FUNCTION_7_12();
      return CCLogStream::logAlert(v2, "[dk] %s@%d:Fail to allocate keyString\n", "sendDynSARStatsEventCoreAnalytics", 327);
    }
  }

  return result;
}

{
  result = OUTLINED_FUNCTION_1_19(a1);
  if (result)
  {
    result = CCLogStream::shouldLog();
    if (result)
    {
      v2 = OUTLINED_FUNCTION_7_12();
      return CCLogStream::logAlert(v2, "[dk] %s@%d:Fail to allocate keyString\n", "sendDynSARStatsEventCoreAnalytics", 319);
    }
  }

  return result;
}

{
  result = OUTLINED_FUNCTION_1_19(a1);
  if (result)
  {
    result = CCLogStream::shouldLog();
    if (result)
    {
      v2 = OUTLINED_FUNCTION_7_12();
      return CCLogStream::logAlert(v2, "[dk] %s@%d:Fail to allocate keyString\n", "sendDynSARStatsEventCoreAnalytics", 311);
    }
  }

  return result;
}

{
  result = OUTLINED_FUNCTION_1_19(a1);
  if (result)
  {
    result = CCLogStream::shouldLog();
    if (result)
    {
      v2 = OUTLINED_FUNCTION_7_12();
      return CCLogStream::logAlert(v2, "[dk] %s@%d:Fail to allocate keyString\n", "sendDynSARStatsEventCoreAnalytics", 303);
    }
  }

  return result;
}

{
  result = OUTLINED_FUNCTION_1_19(a1);
  if (result)
  {
    result = CCLogStream::shouldLog();
    if (result)
    {
      v2 = OUTLINED_FUNCTION_7_12();
      return CCLogStream::logAlert(v2, "[dk] %s@%d:Fail to allocate keyString\n", "sendDynSARStatsEventCoreAnalytics", 295);
    }
  }

  return result;
}

{
  result = OUTLINED_FUNCTION_1_19(a1);
  if (result)
  {
    result = CCLogStream::shouldLog();
    if (result)
    {
      v2 = OUTLINED_FUNCTION_7_12();
      return CCLogStream::logAlert(v2, "[dk] %s@%d:Fail to allocate keyString\n", "sendDynSARStatsEventCoreAnalytics", 287);
    }
  }

  return result;
}

{
  result = OUTLINED_FUNCTION_1_19(a1);
  if (result)
  {
    result = CCLogStream::shouldLog();
    if (result)
    {
      v2 = OUTLINED_FUNCTION_7_12();
      return CCLogStream::logAlert(v2, "[dk] %s@%d:Fail to allocate keyString\n", "sendDynSARStatsEventCoreAnalytics", 279);
    }
  }

  return result;
}

{
  result = OUTLINED_FUNCTION_1_19(a1);
  if (result)
  {
    result = CCLogStream::shouldLog();
    if (result)
    {
      v2 = OUTLINED_FUNCTION_7_12();
      return CCLogStream::logAlert(v2, "[dk] %s@%d:Fail to allocate keyString\n", "sendDynSARStatsEventCoreAnalytics", 271);
    }
  }

  return result;
}

{
  result = OUTLINED_FUNCTION_1_19(a1);
  if (result)
  {
    result = CCLogStream::shouldLog();
    if (result)
    {
      v2 = OUTLINED_FUNCTION_7_12();
      return CCLogStream::logAlert(v2, "[dk] %s@%d:Fail to allocate keyString\n", "sendDynSARStatsEventCoreAnalytics", 263);
    }
  }

  return result;
}

{
  result = OUTLINED_FUNCTION_1_19(a1);
  if (result)
  {
    result = CCLogStream::shouldLog();
    if (result)
    {
      v2 = OUTLINED_FUNCTION_7_12();
      return CCLogStream::logAlert(v2, "[dk] %s@%d:Fail to allocate eventPayload\n", "sendDynSARStatsEventCoreAnalytics", 260);
    }
  }

  return result;
}

{
  result = OUTLINED_FUNCTION_1_19(a1);
  if (result)
  {
    result = CCLogStream::shouldLog();
    if (result)
    {
      v2 = OUTLINED_FUNCTION_7_12();
      return CCLogStream::logAlert(v2, "[dk] %s@%d:Fail to allocate eventName\n", "sendDynSARStatsEventCoreAnalytics", 258);
    }
  }

  return result;
}

uint64_t AppleBCMWLANTxPowerManager::handleConfigureDynSARModeAsyncCallback(uint64_t a1)
{
  OUTLINED_FUNCTION_3(a1);
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logNoticeIf(v1, 0x20uLL, "[dk] %s@%d:TXPWR_PROFILE: Enter %s \n", v3, v4, v5);
}

{
  OUTLINED_FUNCTION_3(a1);
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logNoticeIf(v1, 0x20uLL, "[dk] %s@%d:TXPWR_PROFILE: Leave %s \n", v3, v4, v5);
}

uint64_t AppleBCMWLANTxPowerManager::handleConfigureDynSARModeAsyncCallback(uint64_t ***a1)
{
  v2 = OUTLINED_FUNCTION_0(a1);
  (*(v3 + 112))(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:DynSAR: Error: Failed to Configure DSA Mode: %s\n", v5, v6, v7);
}

uint64_t AppleBCMWLANTxPowerManager::handleConfigureTxSDBAsyncCallback(uint64_t a1)
{
  OUTLINED_FUNCTION_3(a1);
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logNoticeIf(v1, 0x20uLL, "[dk] %s@%d:TXPWR_PROFILE: Enter %s \n", v3, v4, v5);
}

{
  OUTLINED_FUNCTION_3(a1);
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logNoticeIf(v1, 0x20uLL, "[dk] %s@%d:TXPWR_PROFILE: Leave %s \n", v3, v4, v5);
}

uint64_t AppleBCMWLANTxPowerManager::handleConfigureTxSDBAsyncCallback(uint64_t ***a1)
{
  v2 = OUTLINED_FUNCTION_0(a1);
  (*(v3 + 112))(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:TxSDB: Error: Failed to Configure TxSDB Mode: %s\n", v5, v6, v7);
}

uint64_t AppleBCMWLANTxPowerManager::handleConfigureDynSARPwrBoostAsyncCallback(uint64_t a1)
{
  OUTLINED_FUNCTION_3(a1);
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logNoticeIf(v1, 0x20uLL, "[dk] %s@%d:TXPWR_PROFILE: Enter %s \n", v3, v4, v5);
}

{
  OUTLINED_FUNCTION_3(a1);
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logNoticeIf(v1, 0x20uLL, "[dk] %s@%d:TXPWR_PROFILE: Leave %s \n", v3, v4, v5);
}

uint64_t AppleBCMWLANTxPowerManager::handleConfigureDynSARPwrBoostAsyncCallback(uint64_t ***a1)
{
  v2 = OUTLINED_FUNCTION_0(a1);
  (*(v3 + 112))(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:DynSAR: Error: Failed to Configure DSA Pwr Boost: %s\n", v5, v6, v7);
}

uint64_t AppleBCMWLANTxPowerManager::handleConfigureDynSAREventAsyncCallback(uint64_t a1)
{
  OUTLINED_FUNCTION_3(a1);
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logNoticeIf(v1, 0x20uLL, "[dk] %s@%d:TXPWR_PROFILE: Enter %s \n", v3, v4, v5);
}

{
  OUTLINED_FUNCTION_3(a1);
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logNoticeIf(v1, 0x20uLL, "[dk] %s@%d:TXPWR_PROFILE: Leave %s \n", v3, v4, v5);
}

uint64_t AppleBCMWLANTxPowerManager::handleConfigureDynSAREventAsyncCallback(uint64_t ***a1)
{
  v2 = OUTLINED_FUNCTION_0(a1);
  (*(v3 + 112))(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:DynSAR: Error: Failed to Configure DSA Event: %s\n", v5, v6, v7);
}

uint64_t AppleBCMWLANTxPowerManager::handleGetDynSARStatusAsyncCallback(uint64_t a1)
{
  OUTLINED_FUNCTION_3(a1);
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logNoticeIf(v1, 0x20uLL, "[dk] %s@%d:TXPWR_PROFILE: Enter %s \n", v3, v4, v5);
}

{
  v1 = OUTLINED_FUNCTION_3(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:DynSAR: Invalid version for DynSAR status response\n", "handleGetDynSARStatusAsyncCallback", 714);
}

{
  OUTLINED_FUNCTION_3(a1);
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logNoticeIf(v1, 0x20uLL, "[dk] %s@%d:TXPWR_PROFILE: Leave %s \n", v3, v4, v5);
}

{
  v1 = OUTLINED_FUNCTION_3(a1);
  return CCLogStream::logNotice(v1, "[dk] %s@%d:DynSAR: No valid data\n", "handleGetDynSARStatusAsyncCallback", 702);
}

uint64_t AppleBCMWLANTxPowerManager::handleGetDynSARStatusAsyncCallback(uint64_t ***a1)
{
  v2 = OUTLINED_FUNCTION_0(a1);
  (*(v3 + 112))(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:DynSAR: Error: Failed to get DynSAR status: %s\n", v5, v6, v7);
}

uint64_t AppleBCMWLANTxPowerManager::dumpDynSARStatusV3(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_3(a1);
  return CCLogStream::logInfo(v1, "[dk] %s@%d:DynSAR: Aggregation index:\n", "dumpDynSARStatusV3", 1586);
}

{
  result = OUTLINED_FUNCTION_3(a1);
  if (result)
  {
    result = CCLogStream::shouldLog();
    if (result)
    {
      v2 = OUTLINED_FUNCTION_7();
      return CCLogStream::logAlert(v2, "[dk] %s@%d:xtlvPtr alignment failure\n", "dumpDynSARStatusV3", 1591);
    }
  }

  return result;
}

uint64_t AppleBCMWLANTxPowerManager::handleDynSAREventToPopulateUnsharedTxDCUtilAsyncCallback(uint64_t a1)
{
  OUTLINED_FUNCTION_3(a1);
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logNoticeIf(v1, 0x20uLL, "[dk] %s@%d:TXPWR_PROFILE: Enter %s \n", v3, v4, v5);
}

{
  v1 = OUTLINED_FUNCTION_3(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:DynSAR: Invalid FW length detected for DYNSAR_CNT_VERSION_V4!\n", "handleDynSAREventToPopulateUnsharedTxDCUtilAsyncCallback", 880);
}

{
  v1 = OUTLINED_FUNCTION_3(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:DynSAR: Invalid FW length detected for DYNSAR_CNT_VERSION_V2!\n", "handleDynSAREventToPopulateUnsharedTxDCUtilAsyncCallback", 872);
}

{
  v1 = OUTLINED_FUNCTION_3(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:DynSAR: Dynamic SAR Summary invalid version\n", "handleDynSAREventToPopulateUnsharedTxDCUtilAsyncCallback", 884);
}

{
  v1 = OUTLINED_FUNCTION_3(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:DynSAR: Dynamic SAR Summary invalid version\n", "handleDynSAREventToPopulateUnsharedTxDCUtilAsyncCallback", 936);
}

{
  result = OUTLINED_FUNCTION_3(a1);
  if (result)
  {
    result = CCLogStream::shouldLog();
    if (result)
    {
      v2 = OUTLINED_FUNCTION_7();
      return CCLogStream::logAlert(v2, "[dk] %s@%d:Error parsing reportDSA\n", "handleDynSAREventToPopulateUnsharedTxDCUtilAsyncCallback", 950);
    }
  }

  return result;
}

{
  OUTLINED_FUNCTION_3(a1);
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logNoticeIf(v1, 0x20uLL, "[dk] %s@%d:TXPWR_PROFILE: Leave %s \n", v3, v4, v5);
}

{
  v1 = OUTLINED_FUNCTION_3(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:DynSAR: Invalid version or fields for DynSAR summary response\n", "handleDynSAREventToPopulateUnsharedTxDCUtilAsyncCallback", 863);
}

{
  v1 = OUTLINED_FUNCTION_3(a1);
  return CCLogStream::logNotice(v1, "[dk] %s@%d:DynSAR: No valid data\n", "handleDynSAREventToPopulateUnsharedTxDCUtilAsyncCallback", 846);
}

uint64_t AppleBCMWLANTxPowerManager::handleDynSAREventToPopulateUnsharedTxDCUtilAsyncCallback(uint64_t ***a1)
{
  v2 = OUTLINED_FUNCTION_0(a1);
  (*(v3 + 112))(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:DynSAR: Error: Failed to get DynSAR summary unshared TxDC and Util: %s\n", v5, v6, v7);
}

uint64_t AppleBCMWLANTxPowerManager::handleGetDynSARAggStatsAsyncCallback(uint64_t a1)
{
  OUTLINED_FUNCTION_3(a1);
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logNoticeIf(v1, 0x20uLL, "[dk] %s@%d:TXPWR_PROFILE: Enter %s \n", v3, v4, v5);
}

{
  v1 = OUTLINED_FUNCTION_3(a1);
  return CCLogStream::logInfo(v1, "[dk] %s@%d:DynSAR: Vx: Variance of Ux over Twin\n", "handleGetDynSARAggStatsAsyncCallback", 1024);
}

{
  OUTLINED_FUNCTION_3(a1);
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logNoticeIf(v1, 0x20uLL, "[dk] %s@%d:TXPWR_PROFILE: Leave %s \n", v3, v4, v5);
}

{
  v1 = OUTLINED_FUNCTION_3(a1);
  return CCLogStream::logNotice(v1, "[dk] %s@%d:DynSAR: No valid data\n", "handleGetDynSARAggStatsAsyncCallback", 983);
}

uint64_t AppleBCMWLANTxPowerManager::handleGetDynSARAggStatsAsyncCallback(uint64_t ***a1)
{
  v2 = OUTLINED_FUNCTION_0(a1);
  (*(v3 + 112))(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:DynSAR: Error: Failed to get DynSAR Aggregated Stats: %s\n", v5, v6, v7);
}

uint64_t AppleBCMWLANTxPowerManager::handleGetDynSARDetailAsyncCallback(uint64_t a1)
{
  OUTLINED_FUNCTION_3(a1);
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logNoticeIf(v1, 0x20uLL, "[dk] %s@%d:TXPWR_PROFILE: Enter %s \n", v3, v4, v5);
}

{
  v1 = OUTLINED_FUNCTION_3(a1);
  return CCLogStream::logInfo(v1, "[dk] %s@%d:DynSAR: P - Power optimization, M - no frame mute, F - Failsafe mode, T - Tx dutycycle limit\n", "handleGetDynSARDetailAsyncCallback", 1085);
}

{
  v1 = OUTLINED_FUNCTION_3(a1);
  return CCLogStream::logInfo(v1, "[dk] %s@%d:DynSAR: ---------------------------------------------------------------------------------------------\n", "handleGetDynSARDetailAsyncCallback", 1101);
}

{
  OUTLINED_FUNCTION_3(a1);
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logNoticeIf(v1, 0x20uLL, "[dk] %s@%d:TXPWR_PROFILE: Leave %s \n", v3, v4, v5);
}

{
  v1 = OUTLINED_FUNCTION_3(a1);
  return CCLogStream::logNotice(v1, "[dk] %s@%d:DynSAR: No valid data\n", "handleGetDynSARDetailAsyncCallback", 1068);
}

uint64_t AppleBCMWLANTxPowerManager::handleGetDynSARDetailAsyncCallback(uint64_t ***a1)
{
  v2 = OUTLINED_FUNCTION_0(a1);
  (*(v3 + 112))(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:DynSAR: Error: Failed to get DynSAR Details: %s\n", v5, v6, v7);
}

uint64_t AppleBCMWLANTxPowerManager::handleGetDynSARDetailAsyncCallbackV2(uint64_t a1)
{
  OUTLINED_FUNCTION_3(a1);
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logNoticeIf(v1, 0x20uLL, "[dk] %s@%d:TXPWR_PROFILE: Enter %s \n", v3, v4, v5);
}

{
  v1 = OUTLINED_FUNCTION_3(a1);
  return CCLogStream::logInfo(v1, "[dk] %s@%d:DynSAR: P - Power optimization, M - no frame mute, F - Failsafe mode, T - Tx dutycycle limit\n", "handleGetDynSARDetailAsyncCallbackV2", 1160);
}

{
  v1 = OUTLINED_FUNCTION_3(a1);
  return CCLogStream::logInfo(v1, "[dk] %s@%d:DynSAR: ---------------------------------------------------------------------------------------------\n", "handleGetDynSARDetailAsyncCallbackV2", 1176);
}

{
  OUTLINED_FUNCTION_3(a1);
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logNoticeIf(v1, 0x20uLL, "[dk] %s@%d:TXPWR_PROFILE: Leave %s \n", v3, v4, v5);
}

{
  v1 = OUTLINED_FUNCTION_3(a1);
  return CCLogStream::logNotice(v1, "[dk] %s@%d:DynSAR: No valid data\n", "handleGetDynSARDetailAsyncCallbackV2", 1143);
}

uint64_t AppleBCMWLANTxPowerManager::handleGetDynSARDetailAsyncCallbackV2(uint64_t ***a1)
{
  v2 = OUTLINED_FUNCTION_0(a1);
  (*(v3 + 112))(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:DynSAR: Error: Failed to get DynSAR Details: %s\n", v5, v6, v7);
}

uint64_t AppleBCMWLANTxPowerManager::handleGetDynSARProfileAsyncCallback(uint64_t a1)
{
  OUTLINED_FUNCTION_3(a1);
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logNoticeIf(v1, 0x20uLL, "[dk] %s@%d:TXPWR_PROFILE: Enter %s \n", v3, v4, v5);
}

{
  v1 = OUTLINED_FUNCTION_3(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:DynSAR: Invalid version for DynSAR profiles response\n", "handleGetDynSARProfileAsyncCallback", 1231);
}

{
  OUTLINED_FUNCTION_3(a1);
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logNoticeIf(v1, 0x20uLL, "[dk] %s@%d:TXPWR_PROFILE: Leave %s \n", v3, v4, v5);
}

{
  v1 = OUTLINED_FUNCTION_3(a1);
  return CCLogStream::logNotice(v1, "[dk] %s@%d:DynSAR: No valid data\n", "handleGetDynSARProfileAsyncCallback", 1217);
}

uint64_t AppleBCMWLANTxPowerManager::handleGetDynSARProfileAsyncCallback(uint64_t ***a1)
{
  v2 = OUTLINED_FUNCTION_0(a1);
  (*(v3 + 112))(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:DynSAR: Error: Failed to get DynSAR profile: %s\n", v5, v6, v7);
}

uint64_t AppleBCMWLANTxPowerManager::dumpDynSARProfilesV1(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_3(a1);
  return CCLogStream::logInfo(v1, "[dk] %s@%d:DynSAR: Profiles Total: %d Active: %d\n", "dumpDynSARProfilesV1", 2515, *(v2 + 14), *(v2 + 12));
}

{
  v1 = OUTLINED_FUNCTION_3(a1);
  return CCLogStream::logInfo(v1, "[dk] %s@%d:DynSAR: ----------------------------------------------------------\n", "dumpDynSARProfilesV1", 2518);
}

uint64_t AppleBCMWLANTxPowerManager::dumpDynSARProfilesV2(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_3(a1);
  return CCLogStream::logInfo(v1, "[dk] %s@%d:DynSAR: Profiles Total: %d Active: %d\n", "dumpDynSARProfilesV2", 2547, *(v2 + 14), *(v2 + 12));
}

{
  v1 = OUTLINED_FUNCTION_3(a1);
  return CCLogStream::logInfo(v1, "[dk] %s@%d:DynSAR: ----------------------------------------------------------\n", "dumpDynSARProfilesV2", 2550);
}

uint64_t AppleBCMWLANTxPowerManager::configureDynSAR(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_3(a1);
  return CCLogStream::logAlertIf(v1, 0x20uLL, "[dk] %s@%d:DynSAR: DSA NOT Enabled by Host!\n", "configureDynSAR", 1254);
}

{
  v1 = OUTLINED_FUNCTION_3(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Failed to Configure DynSAR Mode\n", "configureDynSAR", 1321);
}

{
  v1 = OUTLINED_FUNCTION_3(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Failed to Configure DynSAR Event\n", "configureDynSAR", 1285);
}

{
  v1 = OUTLINED_FUNCTION_3(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Failed to Configure DynSAR Power Boost\n", "configureDynSAR", 1305);
}

{
  OUTLINED_FUNCTION_3(a1);
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logNoticeIf(v1, 0x20uLL, "[dk] %s@%d:TXPWR_PROFILE: Leave %s \n", v3, v4, v5);
}

uint64_t AppleBCMWLANTxPowerManager::configureDynSARMode(uint64_t ***a1)
{
  v2 = OUTLINED_FUNCTION_0(a1);
  (*(v3 + 112))(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Failed to configure DSA mode, %s\n", v5, v6, v7);
}

void AppleBCMWLANTxPowerManager::configureDynSARMode(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_4_16(a1);
  v5 = (*(v4 + 112))(v3, 0);
  CCLogStream::logInfo(v2, "[dk] %s@%d:Set DSA Mode to %d, %s\n", "configureDynSARMode", 1371, v1, v5);
  OUTLINED_FUNCTION_12_2();
}

uint64_t AppleBCMWLANTxPowerManager::configureDynSAREvent(uint64_t ***a1)
{
  v2 = OUTLINED_FUNCTION_0(a1);
  (*(v3 + 112))(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:DynSAR: Failed to configure DSA event, %s\n", v5, v6, v7);
}

void AppleBCMWLANTxPowerManager::configureDynSAREvent(void *a1, int a2)
{
  v3 = a1[3];
  if (a2 == 1)
  {
    v4 = "enable";
  }

  else
  {
    v4 = "disable";
  }

  v5 = (*(**a1 + 112))(*a1, 0);
  CCLogStream::logInfo(v3, "[dk] %s@%d:Set DSA event to %d (%s), %s\n", "configureDynSAREvent", 1535, a2, v4, v5);
  OUTLINED_FUNCTION_12_2();
}

uint64_t AppleBCMWLANTxPowerManager::configureDynSARPwrBoost(uint64_t ***a1)
{
  v2 = OUTLINED_FUNCTION_0(a1);
  (*(v3 + 112))(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Failed to configure DSA power boost, %s\n", v5, v6, v7);
}

void AppleBCMWLANTxPowerManager::configureDynSARPwrBoost(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_4_16(a1);
  v5 = (*(v4 + 112))(v3, 0);
  CCLogStream::logInfo(v2, "[dk] %s@%d:Set DSA power boost to %d dB, %s\n", "configureDynSARPwrBoost", 1426, v1, v5);
  OUTLINED_FUNCTION_12_2();
}

uint64_t AppleBCMWLANTxPowerManager::getDynSARProfile(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_3(a1);
  return CCLogStream::logAlertIf(v1, 0x20uLL, "[dk] %s@%d:DynSAR: DSA NOT Enabled by Host!\n", "getDynSARProfile", 2448);
}

{
  v1 = OUTLINED_FUNCTION_3(a1);
  return CCLogStream::logAlertIf(v1, 0x20uLL, "[dk] %s@%d:DynSAR: Failed to get DynSAR Profile\n", "getDynSARProfile", 2482);
}

{
  v1 = OUTLINED_FUNCTION_3(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:DynSAR: Invalid version for DynSAR profiles response\n", "getDynSARProfile", 2493);
}

{
  v1 = OUTLINED_FUNCTION_3(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:No memory for dsaSummaryBuffer\n", "getDynSARProfile", 2456);
}

uint64_t AppleBCMWLANTxPowerManager::getDynSARStatus(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_3(a1);
  return CCLogStream::logAlertIf(v1, 0x20uLL, "[dk] %s@%d:DynSAR: DSA NOT Enabled by Host!\n", "getDynSARStatus", 1725);
}

{
  v1 = OUTLINED_FUNCTION_3(a1);
  return CCLogStream::logAlertIf(v1, 0x20uLL, "[dk] %s@%d:DynSAR: Failed to get DynSAR Status\n", "getDynSARStatus", 1756);
}

{
  v1 = OUTLINED_FUNCTION_3(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:DynSAR: Invalid version for DynSAR status response\n", "getDynSARStatus", 1766);
}

uint64_t AppleBCMWLANTxPowerManager::getDynSARStatus(uint64_t ***a1)
{
  v2 = OUTLINED_FUNCTION_0(a1);
  (*(v3 + 112))(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:DynSAR: Failed to get DynSAR status, %s\n", v5, v6, v7);
}

{
  v2 = OUTLINED_FUNCTION_0(a1);
  (*(v3 + 112))(v2, 0);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logInfo(v1, "[dk] %s@%d:Get DSA status, %s\n", v5, v6, v7);
}

uint64_t AppleBCMWLANTxPowerManager::getDynSARAggStats(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_3(a1);
  return CCLogStream::logAlertIf(v1, 0x20uLL, "[dk] %s@%d:DynSAR: DSA NOT Enabled by Host!\n", "getDynSARAggStats", 1925);
}

{
  v1 = OUTLINED_FUNCTION_3(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:DynSAR: Observation window size %d exceeds limit, cap to %d\n", "getDynSARAggStats", 1944, 20, 20);
}

{
  v1 = OUTLINED_FUNCTION_3(a1);
  return CCLogStream::logAlertIf(v1, 0x20uLL, "[dk] %s@%d:DynSAR: Failed to get DynSAR Aggregated Stats\n", "getDynSARAggStats", 1963);
}

{
  v1 = OUTLINED_FUNCTION_3(a1);
  return CCLogStream::logInfo(v1, "[dk] %s@%d:DynSAR: Vx: Variance of Ux over Twin\n", "getDynSARAggStats", 1997);
}

uint64_t AppleBCMWLANTxPowerManager::getDynSARAggStats(uint64_t ***a1)
{
  v2 = OUTLINED_FUNCTION_0(a1);
  (*(v3 + 112))(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:DynSAR: Failed to get DynSAR Aggregated Stats, %s\n", v5, v6, v7);
}

{
  v2 = OUTLINED_FUNCTION_0(a1);
  (*(v3 + 112))(v2, 0);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logInfo(v1, "[dk] %s@%d:Get DSA Aggregated Stats, %s\n", v5, v6, v7);
}

uint64_t AppleBCMWLANTxPowerManager::getDynSARDetail(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_3(a1);
  return CCLogStream::logAlertIf(v1, 0x20uLL, "[dk] %s@%d:DynSAR: DSA NOT Enabled by Host!\n", "getDynSARDetail", 2048);
}

{
  v1 = OUTLINED_FUNCTION_3(a1);
  return CCLogStream::logAlertIf(v1, 0x20uLL, "[dk] %s@%d:DynSAR: Failed to get DynSAR Details\n", "getDynSARDetail", 2099);
}

{
  v1 = OUTLINED_FUNCTION_3(a1);
  return CCLogStream::logInfo(v1, "[dk] %s@%d:DynSAR: P - Power optimization, M - no frame mute, F - Failsafe mode, T - Tx dutycycle limit\n", "getDynSARDetail", 2116);
}

{
  v1 = OUTLINED_FUNCTION_3(a1);
  return CCLogStream::logInfo(v1, "[dk] %s@%d:DynSAR: ---------------------------------------------------------------------------------------------\n", "getDynSARDetail", 2138);
}

{
  v1 = OUTLINED_FUNCTION_3(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:DynSAR: Slice 1 DynSAR Detail Report index mismatch", "getDynSARDetail", 2217);
}

{
  v1 = OUTLINED_FUNCTION_3(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:DynSAR: Slice 0 DynSAR Detail Report index mismatch", "getDynSARDetail", 2207);
}

uint64_t AppleBCMWLANTxPowerManager::getDynSARDetail(uint64_t ***a1)
{
  v2 = OUTLINED_FUNCTION_0(a1);
  (*(v3 + 112))(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:DynSAR: Failed to get DynSAR Detail, %s\n", v5, v6, v7);
}

{
  v3 = OUTLINED_FUNCTION_8_13(a1);
  v5 = (*(v4 + 112))(v3, 0);
  return CCLogStream::logInfo(v2, "[dk] %s@%d:DynSAR: Get DSA Detail of slice %d, %s\n", "getDynSARDetail", 2229, v1, v5);
}

uint64_t AppleBCMWLANTxPowerManager::getDynSARDetailV2(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_3(a1);
  return CCLogStream::logAlertIf(v1, 0x20uLL, "[dk] %s@%d:DynSAR: DSA NOT Enabled by Host!\n", "getDynSARDetailV2", 2251);
}

{
  v1 = OUTLINED_FUNCTION_3(a1);
  return CCLogStream::logAlertIf(v1, 0x20uLL, "[dk] %s@%d:DynSAR: Failed to get DynSAR Details\n", "getDynSARDetailV2", 2302);
}

{
  v1 = OUTLINED_FUNCTION_3(a1);
  return CCLogStream::logInfo(v1, "[dk] %s@%d:DynSAR: P - Power optimization, M - no frame mute, F - Failsafe mode, T - Tx dutycycle limit\n", "getDynSARDetailV2", 2320);
}

{
  v1 = OUTLINED_FUNCTION_3(a1);
  return CCLogStream::logInfo(v1, "[dk] %s@%d:DynSAR: ---------------------------------------------------------------------------------------------\n", "getDynSARDetailV2", 2342);
}

{
  v1 = OUTLINED_FUNCTION_3(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:DynSAR: Slice 1 DynSAR Detail Report index mismatch", "getDynSARDetailV2", 2419);
}

{
  v1 = OUTLINED_FUNCTION_3(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:DynSAR: Slice 0 DynSAR Detail Report index mismatch", "getDynSARDetailV2", 2409);
}

uint64_t AppleBCMWLANTxPowerManager::getDynSARDetailV2(uint64_t ***a1)
{
  v2 = OUTLINED_FUNCTION_0(a1);
  (*(v3 + 112))(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:DynSAR: Failed to get DynSAR Detail, %s\n", v5, v6, v7);
}

{
  v3 = OUTLINED_FUNCTION_8_13(a1);
  v5 = (*(v4 + 112))(v3, 0);
  return CCLogStream::logInfo(v2, "[dk] %s@%d:DynSAR: Get DSA Detail of slice %d, %s\n", "getDynSARDetailV2", 2431, v1, v5);
}

uint64_t AppleBCMWLANTxPowerManager::handleDynSAREventToPopulateUnsharedTxDCUtil(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_3(a1);
  return CCLogStream::logAlertIf(v1, 0x20uLL, "[dk] %s@%d:DynSAR: DSA NOT Enabled by Host!\n", "handleDynSAREventToPopulateUnsharedTxDCUtil", 2584);
}

{
  v1 = OUTLINED_FUNCTION_3(a1);
  return CCLogStream::logAlertIf(v1, 0x20uLL, "[dk] %s@%d:DynSAR: Failed to get DynSAR Summary\n", "handleDynSAREventToPopulateUnsharedTxDCUtil", 2617);
}

{
  v1 = OUTLINED_FUNCTION_3(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:DynSAR: Invalid FW length detected for DYNSAR_CNT_VERSION_V4!\n", "handleDynSAREventToPopulateUnsharedTxDCUtil", 2645);
}

{
  v1 = OUTLINED_FUNCTION_3(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:DynSAR: Invalid FW length detected for DYNSAR_CNT_VERSION_V2!\n", "handleDynSAREventToPopulateUnsharedTxDCUtil", 2637);
}

{
  v1 = OUTLINED_FUNCTION_3(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:DynSAR: Dynamic SAR Summary invalid version\n", "handleDynSAREventToPopulateUnsharedTxDCUtil", 2649);
}

{
  v1 = OUTLINED_FUNCTION_3(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:DynSAR: Dynamic SAR Summary invalid version\n", "handleDynSAREventToPopulateUnsharedTxDCUtil", 2701);
}

{
  v1 = OUTLINED_FUNCTION_3(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:DynSAR: Invalid version or fields for DynSAR summary response\n", "handleDynSAREventToPopulateUnsharedTxDCUtil", 2628);
}

uint64_t AppleBCMWLANTxPowerManager::handleDynSAREventToPopulateUnsharedTxDCUtil(uint64_t a1, _DWORD *a2)
{
  result = OUTLINED_FUNCTION_3(a1);
  if (result)
  {
    result = CCLogStream::shouldLog();
    if (result)
    {
      result = CCLogStream::logAlert(*(*a1 + 24), "[dk] %s@%d:Error parsing reportDSA\n", "handleDynSAREventToPopulateUnsharedTxDCUtil", 2716);
    }
  }

  *a2 = -536870212;
  return result;
}

uint64_t AppleBCMWLANTxPowerManager::configureDynSARPwrBoostPerRSSI(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_3(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:DynSAR: Failed to get DynSAR status\n", "configureDynSARPwrBoostPerRSSI", 2755);
}

{
  v1 = OUTLINED_FUNCTION_3(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:DynSAR: Failed to get Aggregated Stats\n", "configureDynSARPwrBoostPerRSSI", 2758);
}

uint64_t AppleBCMWLANTxPowerManager::txSDBEnable(uint64_t ***a1)
{
  v2 = OUTLINED_FUNCTION_0(a1);
  (*(v3 + 112))(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Failed to configure TxSDB mode, %s\n", v5, v6, v7);
}

void AppleBCMWLANTxPowerManager::txSDBEnable(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_4_16(a1);
  v5 = (*(v4 + 112))(v3, 0);
  CCLogStream::logInfo(v2, "[dk] %s@%d:Set TxSDB Mode to %d, %s\n", "txSDBEnable", 2859, v1, v5);
  OUTLINED_FUNCTION_12_2();
}

uint64_t AppleBCMWLANCommandMonitor::initWithMonitorLengthProviderAndLogger(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_6_5(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:unable to create ivars->fCommandReporters\n", "initWithMonitorLengthProviderAndLogger", 178);
}

{
  v1 = OUTLINED_FUNCTION_6_5(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:unable to create ivars->fCommandsDict\n", "initWithMonitorLengthProviderAndLogger", 172);
}

{
  v1 = OUTLINED_FUNCTION_6_5(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:invalid commandGate\n", "initWithMonitorLengthProviderAndLogger", 146);
}

{
  v1 = OUTLINED_FUNCTION_6_5(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:invalid ivars->fDriver\n", "initWithMonitorLengthProviderAndLogger", 139);
}

{
  v1 = OUTLINED_FUNCTION_6_5(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:invalid queuelen\n", "initWithMonitorLengthProviderAndLogger", 131);
}

uint64_t AppleBCMWLANCommandMonitor::monitorCmdPrepared(uint64_t a1, AppleBCMWLANCommand *this, uint64_t a3)
{
  v4 = *(*a1 + 72);
  CmdName = AppleBCMWLANCommand::getCmdName(this);
  v6 = (*(*a3 + 72))(a3);
  return CCLogStream::logAlert(v4, "[dk] %s@%d:Invalid lastTime cmd: %s, count: %d\n", "monitorCmdPrepared", 405, CmdName, v6);
}

uint64_t AppleBCMWLANCommandMonitor::monitorCmdPrepared(uint64_t a1, AppleBCMWLANCommand *a2)
{
  OUTLINED_FUNCTION_0_22(a1, a2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v2, "[dk] %s@%d:Failed to create cmdTimeHistogram for cmd %s\n", v4, v5, v6);
}

{
  OUTLINED_FUNCTION_0_22(a1, a2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v2, "[dk] %s@%d:Failed to get cmdTimeHistory for cmd %s\n", v4, v5, v6);
}

uint64_t AppleBCMWLANCommandMonitor::monitorCmdPrepared(uint64_t a1, const OSObject *a2, OSDictionaryPtr *a3)
{
  v6 = OSDictionary::withCapacity(2u);
  *a3 = v6;
  if (v6)
  {
    v7 = v6;
    v8 = OSDictionary::setObject(*(*a1 + 104), a2, v6);
    (v7->release)(v7);
    v9 = v8 - 1;
  }

  else
  {
    v9 = 1;
  }

  return v9 & 1;
}

uint64_t AppleBCMWLANCommandMonitor::monitorCmdCompleted(uint64_t a1, AppleBCMWLANCommand *a2)
{
  OUTLINED_FUNCTION_0_22(a1, a2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v2, "[dk] %s@%d:Failed StringFromReturn for cmd %s\n", v4, v5, v6);
}

{
  OUTLINED_FUNCTION_0_22(a1, a2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v2, "[dk] %s@%d:Failed to create simple reporter for cmd %s\n", v4, v5, v6);
}

{
  OUTLINED_FUNCTION_0_22(a1, a2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v2, "[dk] %s@%d:Failed to create chanidNumber for cmd %s\n", v4, v5, v6);
}

{
  OUTLINED_FUNCTION_0_22(a1, a2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v2, "[dk] %s@%d:Failed to create simple for cmd %s\n", v4, v5, v6);
}

uint64_t AppleBCMWLANCommandMonitor::configureReport(uint64_t a1)
{
  result = OUTLINED_FUNCTION_6_5(a1);
  if (result)
  {
    v4 = v3;
    result = CCLogStream::shouldLog();
    if (result)
    {
      v5 = *(*a1 + 72);
      getClassNameHelper(v4);
      OUTLINED_FUNCTION_6();
      return CCLogStream::logEmergency(v5, "[dk] %s@%d:DKReporter::%s::%s(%d) testPostConfigureAllAndAdjustV3 failed\n", v6, v7, v8, "configureReport", 659);
    }
  }

  return result;
}

uint64_t AppleBCMWLANPCIeCompletionRing::printRingState(AppleBCMWLANByteRing *a1, const char *a2)
{
  Logger = AppleBCMWLANByteRing::getLogger(a1);
  isEnabled = IO80211WorkSource::isEnabled(a1);
  v6 = *(a1 + 14);
  v7 = **(v6 + 32);
  v8 = **(v6 + 40);
  ReadableItemCount = AppleBCMWLANItemRing::getReadableItemCount(a1);
  WritableItemCount = AppleBCMWLANItemRing::getWritableItemCount(a1);
  ItemSize = AppleBCMWLANItemRing::getItemSize(a1);
  v12 = (*(*a1 + 248))(a1);
  v13 = *(a1 + 14);
  return CCLogStream::logAlert(Logger, "[dk] %s@%d:%s: en %u, host {r=%u, w=%u} readable=%d writable=%d is=%d p=%d lst=[%d@%06llu.%06llu] cfw(cb %x, tgt %x), buf=%p this=%p \n", "printRingState", 485, a2, isEnabled, v7, v8, ReadableItemCount, WritableItemCount, ItemSize, v12, *(v13 + 168), *(v13 + 160) / 0x3B9ACA00uLL, *(v13 + 160) % 0x3B9ACA00uLL / 0x3E8, *(v13 + 128) != 0, *(v13 + 136) != 0, *(v13 + 112), a1);
}

uint64_t AppleBCMWLANPCIeTransmitFlowRing::printRingState(AppleBCMWLANByteRing *a1, const char *a2)
{
  Logger = AppleBCMWLANByteRing::getLogger(a1);
  isEnabled = IO80211WorkSource::isEnabled(a1);
  v6 = (*(*a1 + 312))(a1);
  v7 = (*(*a1 + 208))(a1);
  v8 = (*(*a1 + 392))(a1);
  v9 = (*(*a1 + 344))(a1);
  v10 = *(a1 + 16);
  return CCLogStream::logAlert(Logger, "[dk] %s@%d:%s, en %u, (state=%x id=%d if=%d tid=%d da=%02x:%02x:%02x:%02x:%02x:%02x sa=%02x:%02x:%02x:%02x:%02x:%02x pnd=%d)\n", "printRingState", 325, a2, isEnabled, v6, v7, v8, v9, v10[7], v10[8], v10[9], v10[10], v10[11], v10[12], v10[13], v10[14], v10[15], v10[16], v10[17], v10[18], 0);
}

uint64_t AppleBCMWLANPCIeSubmissionRing::requestRingFill(AppleBCMWLANByteRing *a1)
{
  Logger = AppleBCMWLANByteRing::getLogger(a1);
  OUTLINED_FUNCTION_0_24();
  v4 = (*(v3 + 216))(a1);
  OUTLINED_FUNCTION_0_24();
  v6 = (*(v5 + 208))(a1);
  return CCLogStream::logAlert(Logger, "[dk] %s@%d:ERROR: ivars->fOwner is NULL (ring type: %u, ring ID: %u)\n", "requestRingFill", 252, v4, v6);
}

{
  Logger = AppleBCMWLANByteRing::getLogger(a1);
  OUTLINED_FUNCTION_0_24();
  v4 = (*(v3 + 216))(a1);
  OUTLINED_FUNCTION_0_24();
  v6 = (*(v5 + 208))(a1);
  return CCLogStream::logAlert(Logger, "[dk] %s@%d:ERROR: getRingFillAction() is NULL (ring type: %u, ring ID: %u)\n", "requestRingFill", 248, v4, v6);
}

uint64_t AppleBCMWLANPCIeSubmissionRing::printRingState(AppleBCMWLANByteRing *a1, const char *a2)
{
  Logger = AppleBCMWLANByteRing::getLogger(a1);
  isEnabled = IO80211WorkSource::isEnabled(a1);
  v6 = *(a1 + 14);
  v7 = **(v6 + 32);
  v8 = **(v6 + 40);
  ReadableItemCount = AppleBCMWLANItemRing::getReadableItemCount(a1);
  WritableItemCount = AppleBCMWLANItemRing::getWritableItemCount(a1);
  ItemSize = AppleBCMWLANItemRing::getItemSize(a1);
  v12 = (*(*a1 + 248))(a1);
  v13 = *(a1 + 14);
  return CCLogStream::logAlert(Logger, "[dk] %s@%d:%s: en %u, host {r=%u, w=%u} readable=%d writable=%d is=%d p=%d lst=[%d@%06llu.%06llu] cfw(cb %x, tgt %x), buf=%p this=%p \n", "printRingState", 521, a2, isEnabled, v7, v8, ReadableItemCount, WritableItemCount, ItemSize, v12, *(v13 + 136), *(v13 + 128) / 0x3B9ACA00uLL, *(v13 + 128) % 0x3B9ACA00uLL / 0x3E8, *(v13 + 152) != 0, *(v13 + 160) != 0, *(v13 + 112), a1);
}

void AppleBCMWLANCore::getChipRevString(AppleBCMWLANCore *this, const char *a2, size_t a3)
{
  if (a2 && a3 >= 3)
  {
    OUTLINED_FUNCTION_77_0();
    v7 = *(v6 + 72);
    v8 = *(v7 + 36072);
    if (v8)
    {
      if (v8 >= a3)
      {
        v9 = a3;
      }

      else
      {
        v9 = *(v7 + 36072);
      }

      memcpy(v3, (v7 + 36064), v9);
    }

    else
    {
      v10 = OSDictionary::withCapacity(6u);
      if (v10)
      {
        v11 = v10;
        v12 = OUTLINED_FUNCTION_51_0(*(v4 + 72));
        if (!(*(v13 + 408))(v12, v11, 0))
        {
          Object = OSDictionary::getObject(v11, "ChipInfo");
          v15 = OSMetaClassBase::safeMetaCast(Object, gOSStringMetaClass);
          CStringNoCopy = OSString::getCStringNoCopy(v15);
          if (OSString::getLength(v15) >= 4 && CStringNoCopy != 0)
          {
            Length = OSString::getLength(v15);
            v19 = strnstr(CStringNoCopy, "s=", Length);
            if (v19)
            {
              memcpy(v3, v19 + 2, a3);
            }
          }

          v20 = *(v4 + 72) + 36064;
          v21 = *v3;
          *(v20 + 2) = v3[2];
          *v20 = v21;
          *(*(v4 + 72) + 36072) = a3;
        }

        OUTLINED_FUNCTION_1_10();
        v23 = *(v22 + 16);

        v23(v11);
      }
    }
  }
}

BOOL AppleBCMWLANCore::is4399C0Up(AppleBCMWLANCore *this)
{
  v2 = OUTLINED_FUNCTION_62_0(*(this + 9));
  v4 = (*(v3 + 368))(v2);
  OUTLINED_FUNCTION_95_0();
  AppleBCMWLANCore::getChipRevString(this, v5, 3uLL);
  result = 1;
  if (v4 >> 4 <= 0x112)
  {
    if (v4 != 4399)
    {
      return 0;
    }

    OUTLINED_FUNCTION_122();
    if (memcmp(v7, v8, v9))
    {
      OUTLINED_FUNCTION_122();
      if (memcmp(v10, v11, v12))
      {
        OUTLINED_FUNCTION_122();
        if (memcmp(v13, v14, v15))
        {
          OUTLINED_FUNCTION_122();
          if (memcmp(v16, v17, v18))
          {
            return 0;
          }
        }
      }
    }
  }

  return result;
}

BOOL AppleBCMWLANCore::is4387C2Up(AppleBCMWLANCore *this)
{
  v2 = OUTLINED_FUNCTION_62_0(*(this + 9));
  v4 = (*(v3 + 368))(v2);
  OUTLINED_FUNCTION_95_0();
  AppleBCMWLANCore::getChipRevString(this, v5, 3uLL);
  result = 1;
  if (v4 >> 2 <= 0x448)
  {
    if (v4 != 4387)
    {
      return 0;
    }

    OUTLINED_FUNCTION_122();
    if (memcmp(v7, v8, v9))
    {
      OUTLINED_FUNCTION_122();
      if (memcmp(v10, v11, v12))
      {
        return 0;
      }
    }
  }

  return result;
}

IOService *AppleBCMWLANCore::handleAdjustBusy(IOService *this, void (__cdecl *a2)(OSObjectInterface *__hidden this))
{
  v2 = this[1].OSObject::OSObjectInterface::__vftable;
  if (v2[275].free == a2)
  {
    v3 = this;
    v4 = 1;
    atomic_compare_exchange_strong(&v2[275], &v4, 0);
    if (v4 == 1)
    {
      IOService::AdjustBusy(this, -1, 0);
      OUTLINED_FUNCTION_274();
      OUTLINED_FUNCTION_132();
      if ((*(v5 + 1952))(v3))
      {
        OUTLINED_FUNCTION_24_1();
        (*(v6 + 1952))(v3);
        if (CCLogStream::shouldLog())
        {
          OUTLINED_FUNCTION_24_1();
          (*(v9 + 1952))(v3);
          OUTLINED_FUNCTION_156();
          CCLogStream::logAlert(v10, "[dk] %s@%d:AdjustBusy(-1) timeout in %u ms! busystate %u, fAdjustBusyCnt %u\n", "handleAdjustBusy", 1847, 40000, v12, v11);
        }
      }
    }

    else
    {
      OUTLINED_FUNCTION_274();
      OUTLINED_FUNCTION_24_1();
      if ((*(v7 + 1952))(v3))
      {
        OUTLINED_FUNCTION_24_1();
        (*(v8 + 1952))(v3);
        if (CCLogStream::shouldLog())
        {
          OUTLINED_FUNCTION_24_1();
          (*(v13 + 1952))(v3);
          OUTLINED_FUNCTION_156();
          CCLogStream::logAlert(v14, "[dk] %s@%d:AdjustBusy timeout in %u ms! busystate %u, Not adjusting: fAdjustBusyCnt %u\n", "handleAdjustBusy", 1854, 40000, v16, v15);
        }
      }
    }

    OUTLINED_FUNCTION_156();
    return io80211_os_log();
  }

  return this;
}

uint64_t AppleBCMWLANCore::allocChipImage(AppleBCMWLANCore *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (!*(*(this + 9) + 5392))
  {
    return 0;
  }

  v14 = OUTLINED_FUNCTION_5_0(this);
  if ((*(v15 + 1952))(v14) && ((*(*this + 1952))(this), OUTLINED_FUNCTION_229()))
  {
    v20 = (*(*this + 1952))(this);
    CCLogStream::logNoticeIf(v20, 0x80uLL, "[dk] %s@%d: fw size %llu, nv size %llu, regSize %llu, txcapSize %llu\n", "allocChipImage", 5363, a2, a3, a4, a5);
    if (!a2)
    {
      return 0;
    }
  }

  else if (!a2)
  {
    return 0;
  }

  if (!a3)
  {
    return 0;
  }

  v16 = OUTLINED_FUNCTION_51_0(*(this + 9));
  v18 = *(v17 + 40);

  return v18(v16, a2, a3, a4, a5, a6, a7);
}

uint64_t AppleBCMWLANCore::generateChipImage(AppleBCMWLANCore *this, AppleBCMWLANChipImage *a2)
{
  v5 = OUTLINED_FUNCTION_35_1(this);
  if (!(*(v6 + 1952))(v5) || (OUTLINED_FUNCTION_24_1(), (*(v7 + 1952))(v2), !OUTLINED_FUNCTION_229()))
  {
    if (a2)
    {
      goto LABEL_4;
    }

    return 3758097084;
  }

  OUTLINED_FUNCTION_24_1();
  v28 = (*(v27 + 1952))(v2);
  CCLogStream::logNoticeIf(v28, 0x80uLL, "[dk] %s@%d:\n", "generateChipImage", 5377);
  if (!a2)
  {
    return 3758097084;
  }

LABEL_4:
  v8 = *(*(v2 + 72) + 5400);
  OUTLINED_FUNCTION_89_0();
  if ((*(v9 + 144))(a2))
  {
    OUTLINED_FUNCTION_66_0();
    if ((*(v15 + 1952))(v2))
    {
      OUTLINED_FUNCTION_24_1();
      (*(v16 + 1952))(v2);
      if (CCLogStream::shouldLog())
      {
        OUTLINED_FUNCTION_24_1();
        v18 = (*(v17 + 1952))(v2);
        CCLogStream::logEmergency(v18, "[dk] %s@%d: Failed to normalize NVRAM\n");
      }
    }
  }

  else
  {
    v10 = *(*(v2 + 72) + 5400);
    OUTLINED_FUNCTION_89_0();
    if ((*(v11 + 144))(a2))
    {
      OUTLINED_FUNCTION_66_0();
      if ((*(v19 + 1952))(v2))
      {
        OUTLINED_FUNCTION_24_1();
        (*(v20 + 1952))(v2);
        if (CCLogStream::shouldLog())
        {
          OUTLINED_FUNCTION_24_1();
          v22 = (*(v21 + 1952))(v2);
          CCLogStream::logEmergency(v22, "[dk] %s@%d: Failed to generate provisioned NVRAM parameters\n");
        }
      }
    }

    else
    {
      v12 = OUTLINED_FUNCTION_51_0(*(v2 + 72));
      v3 = (*(v13 + 48))(v12, a2);
      if (v3)
      {
        OUTLINED_FUNCTION_24_1();
        if ((*(v23 + 1952))(v2))
        {
          OUTLINED_FUNCTION_24_1();
          (*(v24 + 1952))(v2);
          if (CCLogStream::shouldLog())
          {
            OUTLINED_FUNCTION_24_1();
            v26 = (*(v25 + 1952))(v2);
            CCLogStream::logEmergency(v26, "[dk] %s@%d: Failed to generate chip image\n");
          }
        }
      }
    }
  }

  return v3;
}

uint64_t AppleBCMWLANCore::validateChipImage(AppleBCMWLANCore *this, const AppleBCMWLANChipImage *a2)
{
  v4 = OUTLINED_FUNCTION_16_5(this);
  if ((*(v5 + 1952))(v4))
  {
    OUTLINED_FUNCTION_19_1();
    (*(v6 + 1952))(v3);
    if (OUTLINED_FUNCTION_229())
    {
      OUTLINED_FUNCTION_19_1();
      v18 = (*(v17 + 1952))(v3);
      CCLogStream::logNoticeIf(v18, 0x80uLL, "[dk] %s@%d:\n", "validateChipImage", 5517);
    }
  }

  v7 = 3825174278;
  v8 = *(*(v3 + 72) + 5400);
  OUTLINED_FUNCTION_24_1();
  if (!(*(v9 + 160))(v2))
  {
    return 3825174294;
  }

  v10 = *(*(v3 + 72) + 5400);
  OUTLINED_FUNCTION_24_1();
  if ((*(v11 + 160))(v2))
  {
    v12 = *(*(v3 + 72) + 5400);
    OUTLINED_FUNCTION_24_1();
    if ((*(v13 + 160))(v2))
    {
      v14 = OUTLINED_FUNCTION_62_0(*(v3 + 72));
      if ((*(v15 + 96))(v14, v2))
      {
        return 0;
      }

      else
      {
        return 3825174295;
      }
    }

    else
    {
      return 3825174282;
    }
  }

  return v7;
}

AppleBCMWLANCommander *AppleBCMWLANCore::prepareFRCallback(AppleBCMWLANCore *this, const CCFaultReport *a2)
{
  atomic_fetch_add_explicit((*(this + 9) + 8), 1u, memory_order_relaxed);
  if (!a2)
  {
    return OUTLINED_FUNCTION_97();
  }

  OUTLINED_FUNCTION_108();
  v5 = (*(*v4 + 88))(v4);
  OUTLINED_FUNCTION_19_1();
  v7 = (*(v6 + 128))(v3) + 469794029;
  if (v7 > 3 || v7 == 2)
  {
    if (v5)
    {
      v10 = OUTLINED_FUNCTION_137();
      if (v10)
      {
        AppleBCMWLANCommander::delayQueueTimeouts(v10);
      }
    }

    OUTLINED_FUNCTION_19_1();
    if ((*(v11 + 128))(v3) != -469793503 && *(*(v2 + 9) + 11288))
    {
      bzero(v15, 0x8CuLL);
      OUTLINED_FUNCTION_19_1();
      v13 = (*(v12 + 160))(v3);
      if (v13)
      {
        strlcpy(v16, v13, 0x80uLL);
      }

      OUTLINED_FUNCTION_257();
      if (v14)
      {
        IO80211Controller::postMessage(v2, v14, 0x4Fu, v15, 0x8CuLL, 1);
      }
    }
  }

  else
  {
    result = OUTLINED_FUNCTION_137();
    if (!result)
    {
      return result;
    }

    AppleBCMWLANCommander::delayQueueTimeouts(result);
  }

  return 0;
}

void AppleBCMWLANCore::handleLinkInactivityCheck(AppleBCMWLANCore *a1, uint64_t a2)
{
  v3 = *(a1 + 9);
  if (*(v3 + 6232) == a2)
  {
    if (IO80211BssManager::isAssociated(*(v3 + 5432)))
    {
      if (*(*(a1 + 9) + 6724))
      {
        AppleBCMWLANCore::timeSinceLastActivity_ms(a1);
        OUTLINED_FUNCTION_256();
        if (!v17 & v6)
        {
          if ((*(v5 + 778) & 1) == 0)
          {
            isAssociatedToAdhoc = IO80211BssManager::isAssociatedToAdhoc(*(v5 + 5432));
            v8 = *(a1 + 9);
            if ((isAssociatedToAdhoc & 1) == 0)
            {
              if (AppleBCMWLANConfigManager::setupBeaconOffload(*(v8 + 5464), 1, 1, *(v8 + 208), 0))
              {
                OUTLINED_FUNCTION_66_0();
                if ((*(v9 + 1952))(a1))
                {
                  OUTLINED_FUNCTION_24_1();
                  (*(v10 + 1952))(a1);
                  if (CCLogStream::shouldLog())
                  {
                    OUTLINED_FUNCTION_24_1();
                    (*(v40 + 1952))(a1);
                    OUTLINED_FUNCTION_63_0();
                    v42 = *(v41 + 112);
                    v43 = OUTLINED_FUNCTION_106();
                    v44(v43);
                    OUTLINED_FUNCTION_6();
                    CCLogStream::logAlert(v2, "[dk] %s@%d: Error: cannot enable beacon offload with error %s\n", v45, v46, v47);
                  }
                }
              }

              AppleBCMWLANCore::collectBeaconRxCounters(a1, *(a1 + 9) + 19692, 0);
              v8 = *(a1 + 9);
              if (*(v8 + 5504))
              {
                *(*(a1 + 9) + 19048) = getCurrentContinuousTimeMilliSeconds() / 0x3E8uLL - *(*(a1 + 9) + 19104);
                v11 = *(a1 + 9);
                v12 = *(v11 + 5504);
                v13 = *(v11 + 19064);
                v51[0] = *(v11 + 19048);
                v51[1] = v13;
                v51[2] = *(v11 + 19080);
                v52 = *(v11 + 19096);
                v14 = *(v11 + 19144);
                v50[0] = *(v11 + 19128);
                v50[1] = v14;
                v15 = *(v11 + 35936);
                v48[0] = *(v11 + 35920);
                v48[1] = v15;
                v49 = *(v11 + 35952);
                AppleBCMWLANIOReportingCore::updateScanRoamStats(v12, v51, v50, v48);
                v8 = *(a1 + 9);
              }
            }

            AppleBCMWLANPowerManager::configureBeaconBasedChannelWidthSwitch(*(v8 + 5520), 1);
            OUTLINED_FUNCTION_151();
            v17 = v17 || v16 == 0;
            if (!v17)
            {
              OUTLINED_FUNCTION_66_0();
              if ((*(v18 + 1952))(a1))
              {
                OUTLINED_FUNCTION_24_1();
                (*(v19 + 1952))(a1);
                if (CCLogStream::shouldLog())
                {
                  OUTLINED_FUNCTION_24_1();
                  (*(v35 + 1952))(a1);
                  OUTLINED_FUNCTION_63_0();
                  v37 = *(v36 + 112);
                  v38 = OUTLINED_FUNCTION_106();
                  v39(v38);
                  OUTLINED_FUNCTION_6();
                  CCLogStream::logAlertIf(1, 0x20uLL, "[dk] %s@%d: Error: cannot configure beacon based Channel Width : %s\n", v45, v46, v47);
                }
              }
            }

            *(*(a1 + 9) + 778) = 1;
            v20 = *(a1 + 9);
            if ((*(v20 + 18195) & 1) == 0)
            {
              *(v20 + 18195) = 1;
              *(*(a1 + 9) + 19900) = 1;
              *(*(a1 + 9) + 19901) = 1;
              AppleBCMWLANCore::setTrafficInactivityStats(a1);
            }

            *&v51[0] = 0;
            mach_continuous_time();
            absolutetime_to_nanoseconds();
            OUTLINED_FUNCTION_169();
            *(*(a1 + 9) + 17712) = v21 / v22;
          }
        }
      }

      AppleBCMWLANCore::timeSinceLastActivity_ms(a1);
      OUTLINED_FUNCTION_256();
      if (!v17 & v6)
      {
        AppleBCMWLANPowerManager::configureTVPMPeriodicity(*(v23 + 5520), 10);
        v23 = *(a1 + 9);
      }

      if (*(v23 + 19840) != *(v23 + 19836))
      {
        isAssociated = IO80211BssManager::isAssociated(*(v23 + 5432));
        v23 = *(a1 + 9);
        if (isAssociated)
        {
          v25 = OUTLINED_FUNCTION_5_0(*(v23 + 6232));
          (*(v26 + 56))(v25, 2000);
          v23 = *(a1 + 9);
        }
      }

      if (*(v23 + 14248))
      {
        if ((*(v23 + 17512) & 1) == 0 || (v27 = OUTLINED_FUNCTION_221(), AppleBCMWLANCore::dumpWmeCounters(v27, v28), v23 = *(a1 + 9), *(v23 + 14248)))
        {
          if ((*(v23 + 17512) & 4) != 0)
          {
            v29 = OUTLINED_FUNCTION_221();
            AppleBCMWLANCore::printDataPathDebug(v29, v30);
          }
        }
      }
    }

    else
    {
      OUTLINED_FUNCTION_24_1();
      if ((*(v31 + 1952))(a1))
      {
        OUTLINED_FUNCTION_24_1();
        (*(v32 + 1952))(a1);
        if (CCLogStream::shouldLog())
        {
          OUTLINED_FUNCTION_24_1();
          v34 = (*(v33 + 1952))(a1);
          CCLogStream::logAlert(v34, "[dk] %s@%d: Error, we're not associated and the inactivity timer went off\n", "handleLinkInactivityCheck", 13606);
        }
      }
    }
  }
}

uint64_t AppleBCMWLANCore::populateRequestedFiles(AppleBCMWLANCore *this)
{
  v2 = OSArray::withCapacity(0x10u);
  if (!v2)
  {
    OUTLINED_FUNCTION_24_1();
    if ((*(v19 + 1952))(this))
    {
      OUTLINED_FUNCTION_24_1();
      (*(v20 + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        OUTLINED_FUNCTION_24_1();
        v114 = (*(v113 + 1952))(this);
        CCLogStream::logAlert(v114, "[dk] %s@%d: failed to create requested files\n");
      }
    }

    return 12;
  }

  v3 = v2;
  v4 = OUTLINED_FUNCTION_60_0();
  if (!(*(v5 + 376))(v4))
  {
    v6 = OUTLINED_FUNCTION_51_0(*(this + 9));
    v8 = (*(v7 + 496))(v6);
    if (!v8)
    {
      OUTLINED_FUNCTION_24_1();
      if ((*(v22 + 1952))(this))
      {
        OUTLINED_FUNCTION_24_1();
        (*(v23 + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          OUTLINED_FUNCTION_24_1();
          v25 = (*(v24 + 1952))(this);
          CCLogStream::logAlert(v25, "[dk] %s@%d: No FilesDB property found\n", "populateRequestedFiles", 3124);
        }
      }

      return 0;
    }

    v9 = v8;
    Object = OSDictionary::getObject(v8, "default");
    if (!OSMetaClassBase::safeMetaCast(Object, gOSDictionaryMetaClass))
    {
      OUTLINED_FUNCTION_24_1();
      if ((*(v26 + 1952))(this))
      {
        OUTLINED_FUNCTION_24_1();
        (*(v27 + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          OUTLINED_FUNCTION_24_1();
          v116 = (*(v115 + 1952))(this);
          CCLogStream::logAlert(v116, "[dk] %s@%d: No default entry is found in FilesDB\n", "populateRequestedFiles", 3130);
        }
      }

      OUTLINED_FUNCTION_89_0();
      (*(v28 + 16))(v9);
      return 0;
    }

    v11 = OUTLINED_FUNCTION_118();
    OSArray::setObject(v11, v12, v13);
    v142 = 0;
    v14 = OUTLINED_FUNCTION_119();
    if ((checkAcquireDataPropertyNotEmpty(v14, "module-instance", &v142, 0, 1uLL, "IOService") & 1) == 0)
    {
      OUTLINED_FUNCTION_24_1();
      if ((*(v15 + 1952))(this))
      {
        OUTLINED_FUNCTION_24_1();
        (*(v16 + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          OUTLINED_FUNCTION_24_1();
          v118 = (*(v117 + 1952))(this);
          CCLogStream::logNotice(v118, "[dk] %s@%d: No module-instance property defined\n", "populateRequestedFiles", 3138);
        }
      }
    }

    if (v142)
    {
      if (OSData::getBytesNoCopy(v142))
      {
        BytesNoCopy = OSData::getBytesNoCopy(v142);
        v18 = OSString::withCString(BytesNoCopy);
      }

      else
      {
        v18 = 0;
      }

      v29 = OSDictionary::getObject(v9, v18);
      if (OSMetaClassBase::safeMetaCast(v29, gOSDictionaryMetaClass))
      {
        v30 = OUTLINED_FUNCTION_118();
        OSArray::setObject(v30, v31, v32);
      }

      else
      {
        OUTLINED_FUNCTION_24_1();
        if ((*(v33 + 1952))(this))
        {
          OUTLINED_FUNCTION_24_1();
          (*(v34 + 1952))(this);
          if (OUTLINED_FUNCTION_229())
          {
            OUTLINED_FUNCTION_24_1();
            v120 = (*(v119 + 1952))(this);
            CCLogStream::logNoticeIf(v120, 0x80uLL, "[dk] %s@%d: No module specific entry is found in FilesDB\n", "populateRequestedFiles", 3148);
          }
        }
      }

      OUTLINED_FUNCTION_1_10();
      (*(v35 + 16))(v18);
      if (v142)
      {
        v36 = OUTLINED_FUNCTION_5_0(v142);
        (*(v37 + 16))(v36);
        v142 = 0;
      }
    }

    OUTLINED_FUNCTION_89_0();
    (*(v38 + 16))(v9);
LABEL_32:
    v39 = OUTLINED_FUNCTION_220();
    setPropertyHelper(v39, v40, v41);
    OUTLINED_FUNCTION_19_1();
    (*(v42 + 16))(v3);
    return 0;
  }

  AppleBCMWLANCore::generateFileName(this);
  if (v44)
  {
    v21 = v44;
    OUTLINED_FUNCTION_19_1();
    (*(v45 + 16))(v3);
    return v21;
  }

  v21 = 3758097084;
  v46 = *(this + 9);
  strlen(v46 + 1464);
  OUTLINED_FUNCTION_249();
  if (v48)
  {
    v49 = v47;
    strlen(v46 + 1976);
    OUTLINED_FUNCTION_249();
    if (v48)
    {
      v51 = v50;
      strlen(v46 + 1720);
      OUTLINED_FUNCTION_249();
      if (v48)
      {
        v53 = v52;
        strlen(v46 + 2232);
        OUTLINED_FUNCTION_249();
        if (v48)
        {
          v55 = v54;
          v56 = OSDictionary::withCapacity(3u);
          if (v56)
          {
            v61 = v56;
            v62 = *(this + 9) + v49;
            *(v62 + 1468) = 0;
            *(v62 + 1464) = 0;
            strlcpy((*(this + 9) + v49 + 1464), ".trx", 256 - v49);
            OUTLINED_FUNCTION_132();
            if ((*(v63 + 1952))(this))
            {
              OUTLINED_FUNCTION_24_1();
              (*(v64 + 1952))(this);
              if (CCLogStream::shouldLog())
              {
                OUTLINED_FUNCTION_24_1();
                (*(v121 + 1952))(this);
                v122 = *(this + 9) + 1464;
                OUTLINED_FUNCTION_9_4();
                CCLogStream::logNotice(v123, "[dk] %s@%d:FW %s\n", v139, v140, v141);
              }
            }

            v65 = OSString::withCString((*(this + 9) + 1464));
            OUTLINED_FUNCTION_192();
            strlcpy((*(this + 9) + 3032), (*(this + 9) + 1464), 0xFFuLL);
            OUTLINED_FUNCTION_187();
            OUTLINED_FUNCTION_185(v67, v68, (v66 + 3032));
            OUTLINED_FUNCTION_9_6();
            (*(v69 + 16))(v65);
            v70 = OUTLINED_FUNCTION_51_0(*(this + 9));
            if ((*(v71 + 520))(v70))
            {
              strlcpy((*(this + 9) + v53 + 1720), ".sig", 256 - v53);
              OUTLINED_FUNCTION_132();
              if ((*(v72 + 1952))(this))
              {
                OUTLINED_FUNCTION_24_1();
                (*(v73 + 1952))(this);
                if (CCLogStream::shouldLog())
                {
                  OUTLINED_FUNCTION_24_1();
                  (*(v136 + 1952))(this);
                  v137 = *(this + 9) + 1720;
                  OUTLINED_FUNCTION_9_4();
                  CCLogStream::logNotice(v138, "[dk] %s@%d:FW Signature %s\n", v139, v140, v141);
                }
              }

              v74 = OSString::withCString((*(this + 9) + 1720));
              OUTLINED_FUNCTION_192();
              strlcpy((*(this + 9) + 3288), (*(this + 9) + 1720), 0xFFuLL);
              OUTLINED_FUNCTION_187();
              OUTLINED_FUNCTION_185(v76, v77, (v75 + 3288));
              OUTLINED_FUNCTION_9_6();
              (*(v78 + 16))(v74);
            }

            v79 = OUTLINED_FUNCTION_60_0();
            v81 = (*(v80 + 368))(v79);
            if (v81 == 4399 || v81 == 4388)
            {
              strlcpy((*(this + 9) + v55 + 2232), ".pcfb", 256 - v55);
              OUTLINED_FUNCTION_132();
              if ((*(v83 + 1952))(this))
              {
                OUTLINED_FUNCTION_24_1();
                (*(v84 + 1952))(this);
                if (CCLogStream::shouldLog())
                {
                  OUTLINED_FUNCTION_24_1();
                  (*(v133 + 1952))(this);
                  v134 = *(this + 9) + 2232;
                  OUTLINED_FUNCTION_9_4();
                  CCLogStream::logNotice(v135, "[dk] %s@%d:FW Platcfg %s\n", v139, v140, v141);
                }
              }

              v85 = OSString::withCString((*(this + 9) + 2232));
              OUTLINED_FUNCTION_192();
              strlcpy((*(this + 9) + 4056), (*(this + 9) + 2232), 0xFFuLL);
              OUTLINED_FUNCTION_187();
              OUTLINED_FUNCTION_185(v87, v88, (v86 + 4056));
              OUTLINED_FUNCTION_9_6();
              (*(v89 + 16))(v85);
            }

            strlcpy((*(this + 9) + v51 + 1976), ".clmb", 256 - v51);
            OUTLINED_FUNCTION_132();
            if ((*(v90 + 1952))(this))
            {
              OUTLINED_FUNCTION_24_1();
              (*(v91 + 1952))(this);
              if (CCLogStream::shouldLog())
              {
                OUTLINED_FUNCTION_24_1();
                (*(v124 + 1952))(this);
                v125 = *(this + 9) + 1976;
                OUTLINED_FUNCTION_9_4();
                CCLogStream::logNotice(v126, "[dk] %s@%d:CLM %s\n", v139, v140, v141);
              }
            }

            v92 = OSString::withCString((*(this + 9) + 1976));
            OSDictionary::setObject(v61, "Regulatory", v92);
            strlcpy((*(this + 9) + 3544), (*(this + 9) + 1976), 0xFFuLL);
            OUTLINED_FUNCTION_187();
            AppleBCMWLANCore::generateRequestedImages(v94, v95, (v93 + 3544), "Regulatory", 1, 0);
            (v92->release)(v92);
            strlcpy((*(this + 9) + v51 + 1976), ".txcb", 256 - v51);
            OUTLINED_FUNCTION_132();
            if ((*(v96 + 1952))(this))
            {
              OUTLINED_FUNCTION_24_1();
              (*(v97 + 1952))(this);
              if (CCLogStream::shouldLog())
              {
                OUTLINED_FUNCTION_24_1();
                (*(v127 + 1952))(this);
                v128 = *(this + 9) + 1976;
                OUTLINED_FUNCTION_9_4();
                CCLogStream::logNotice(v129, "[dk] %s@%d:Tx Cap %s\n", v139, v140, v141);
              }
            }

            v98 = OSString::withCString((*(this + 9) + 1976));
            OUTLINED_FUNCTION_192();
            strlcpy((*(this + 9) + 3800), (*(this + 9) + 1976), 0xFFuLL);
            OUTLINED_FUNCTION_187();
            AppleBCMWLANCore::generateRequestedImages(v100, v101, (v99 + 3800), "TxCap", 0, 0);
            OUTLINED_FUNCTION_9_6();
            (*(v102 + 16))(v98);
            v103 = strlen((*(this + 9) + 1208));
            if (v103 - 250 >= 0xFFFFFFFFFFFFFF01)
            {
              v104 = v103;
              strlcpy((*(this + 9) + 1208 + v103), ".txt", 256 - v103);
              OUTLINED_FUNCTION_132();
              if ((*(v105 + 1952))(this))
              {
                OUTLINED_FUNCTION_24_1();
                (*(v106 + 1952))(this);
                if (CCLogStream::shouldLog())
                {
                  OUTLINED_FUNCTION_24_1();
                  (*(v130 + 1952))(this);
                  v131 = *(this + 9) + 1208;
                  OUTLINED_FUNCTION_9_4();
                  CCLogStream::logNotice(v132, "[dk] %s@%d:NVRAM %s\n", v139, v140, v141);
                }
              }

              v107 = OSString::withCString((*(this + 9) + 1208));
              OSDictionary::setObject(v61, "NVRAM", v107);
              strlcpy((*(this + 9) + 2776), (*(this + 9) + 1208), 0xFFuLL);
              OUTLINED_FUNCTION_187();
              OUTLINED_FUNCTION_185(v109, v110, (v108 + 2776));
              (v107->release)(v107);
              *(*(this + 9) + v104 + 1208) = 0;
              *(*(this + 9) + v49 + 1464) = 0;
              *(*(this + 9) + v53 + 1720) = 0;
              *(*(this + 9) + v55 + 2232) = 0;
              *(*(this + 9) + v51 + 1976) = 0;
              v111 = OUTLINED_FUNCTION_118();
              OSArray::setObject(v111, v112, v61);
              (v61->release)(v61);
              goto LABEL_32;
            }

            return v21;
          }

          OUTLINED_FUNCTION_24_1();
          if ((*(v57 + 1952))(this))
          {
            OUTLINED_FUNCTION_24_1();
            (*(v58 + 1952))(this);
            if (CCLogStream::shouldLog())
            {
              OUTLINED_FUNCTION_24_1();
              v60 = (*(v59 + 1952))(this);
              CCLogStream::logAlert(v60, "[dk] %s@%d:failed to create file name Dict");
            }
          }

          return 12;
        }
      }
    }
  }

  return v21;
}

uint64_t AppleBCMWLANCore::generateRequestedImages(AppleBCMWLANCore *this, OSDictionary *a2, char *a3, const char *a4, const char *a5, unsigned int a6)
{
  v11 = 3758097115;
  v12 = OSDictionary::withCapacity(0x10u);
  v13 = v12;
  if (a2 && a3 && a4)
  {
    if (!v12)
    {
      return 3758097085;
    }

    OSDictionary::setObject(a2, a3, v12);
    Attributes = IOImageLoaderImageDictionary::getAttributes(a2, a3, v14);
    if (Attributes)
    {
      v17 = Attributes;
      if (IOImageLoaderImageDictionary::setAttributeWithString(Attributes, "imagename", a3, v16) && IOImageLoaderImageDictionary::setAttributeWithString(v17, "imagetype", a4, v18) && IOImageLoaderImageDictionary::setAttributeWithBoolean(v17, "required", a5) && (!a6 || IOImageLoaderImageDictionary::setAttributeWithNumber(v17, "imagesize", a6)))
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 3758097086;
    }
  }

  else
  {
    v11 = 3758097090;
    if (!v12)
    {
      return v11;
    }
  }

  OUTLINED_FUNCTION_19_1();
  (*(v19 + 16))(v13);
  return v11;
}

void AppleBCMWLANCore::generateFileName(AppleBCMWLANCore *this)
{
  OUTLINED_FUNCTION_279();
  v160 = v1;
  v161 = v2;
  v4 = v3;
  HIBYTE(v122) = 0;
  anObject = 0;
  v5 = OSDictionary::withCapacity(6u);
  if (!v5)
  {
    goto LABEL_73;
  }

  v6 = v5;
  memset(__b, 170, sizeof(__b));
  v7 = OUTLINED_FUNCTION_51_0(v4[9]);
  if ((*(v8 + 408))(v7, v6, 0))
  {
    goto LABEL_70;
  }

  Object = OSDictionary::getObject(v6, "ChipInfo");
  v10 = OSMetaClassBase::safeMetaCast(Object, gOSStringMetaClass);
  if (!v10 || (v11 = v10, v12 = OSDictionary::getObject(v6, "ModuleInfo"), (v13 = OSMetaClassBase::safeMetaCast(v12, gOSStringMetaClass)) == 0))
  {
    OUTLINED_FUNCTION_24_1();
    (*(v105 + 16))(v6);
    goto LABEL_73;
  }

  v14 = v13;
  CStringNoCopy = OSString::getCStringNoCopy(v11);
  OSString::getCStringNoCopy(v14);
  OUTLINED_FUNCTION_52_0();
  if ((*(v16 + 1952))(v4))
  {
    OUTLINED_FUNCTION_19_1();
    (*(v17 + 1952))(v4);
    if (CCLogStream::shouldLog())
    {
      OUTLINED_FUNCTION_19_1();
      v112 = (*(v111 + 1952))(v4);
      CCLogStream::logInfo(v112, "[dk] %s@%d:Obtained module info from busInterface is %s, %s\n", "generateFileName", 3473, CStringNoCopy, v11);
    }
  }

  bzero((v4[9] + 1208), 0x100uLL);
  bzero((v4[9] + 1464), 0x100uLL);
  bzero((v4[9] + 1720), 0x100uLL);
  bzero((v4[9] + 2232), 0x100uLL);
  bzero((v4[9] + 1976), 0x100uLL);
  v18 = OUTLINED_FUNCTION_245();
  AppleBCMWLANCore::copyKeys(v18, v19, CStringNoCopy, 0xFFuLL, 1);
  v20 = strnstr(CStringNoCopy, "C=", 0xFFuLL);
  if (v20)
  {
    v28 = 0;
    goto LABEL_12;
  }

  v29 = v4[9];
  v30 = OUTLINED_FUNCTION_5_0(*(v29 + 5392));
  v32 = (*(v31 + 368))(v30);
  snprintf((v29 + 1208), 0x100uLL, "C=%d", v32);
  v20 = strlen((v4[9] + 1208));
  v28 = v20;
  if (__b[0])
  {
    *(v4[9] + 1208 + v20) = 95;
    v28 = v20 + 1;
LABEL_12:
    if (__b[0])
    {
      OUTLINED_FUNCTION_145(v20, v21, v22, v23, v24, v25, v26, v27, v113, v115, v117, v119, anObject, v122, __dst, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150, v151, v152, v153, v154, *__s, v156, v157, *(&v157 + 1), v158, __b[0]);
      v28 = strlen((v4[9] + 1208));
    }
  }

  v33 = OUTLINED_FUNCTION_245();
  v35 = AppleBCMWLANCore::copyKeys(v33, v34, CStringNoCopy, 0xFFuLL, 0);
  *(v4[9] + v28 + 1208) = 95;
  *(v28 + v4[9] + 1209) = 95;
  OUTLINED_FUNCTION_145(v35, v36, v37, v38, v39, v40, v41, v42, v113, v115, v117, v119, anObject, v122, __dst, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150, v151, v152, v153, v154, *__s, v156, v157, *(&v157 + 1), v158, __b[0]);
  v43 = strlen((v4[9] + 1208));
  *(v4[9] + 1208 + v43) = 47;
  memcpy((v4[9] + 1464), (v4[9] + 1208), 0x100uLL);
  memcpy((v4[9] + 1720), (v4[9] + 1208), 0x100uLL);
  memcpy((v4[9] + 2232), (v4[9] + 1208), 0x100uLL);
  v44 = OUTLINED_FUNCTION_245();
  AppleBCMWLANCore::copyKeys(v44, v45, v11, 0xFFuLL, 1);
  v46 = strnstr(v11, "P=", 0xFFuLL);
  if (v46)
  {
LABEL_37:
    if (__b[0])
    {
      OUTLINED_FUNCTION_145(v46, v47, v48, v49, v50, v51, v52, v53, v114, v116, v118, v120, anObject, v122, __dst, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150, v151, v152, v153, v154, *__s, v156, v157, *(&v157 + 1), v158, __b[0]);
    }

    if (!AppleBCMWLANCore::appendRemoteFEMInfo(v4))
    {
      v74 = strlen((v4[9] + 1208));
      v75 = OUTLINED_FUNCTION_245();
      v77 = AppleBCMWLANCore::copyKeys(v75, v76, v11, 0xFFuLL, 0);
      *(v4[9] + v74 + 1208) = 95;
      *(v74 + v4[9] + 1209) = 95;
      OUTLINED_FUNCTION_145(v77, v78, v79, v80, v81, v82, v83, v84, v114, v116, v118, v120, anObject, v122, __dst, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150, v151, v152, v153, v154, *__s, v156, v157, *(&v157 + 1), v158, __b[0]);
      v85 = v4[9];
      v86 = v85 + 1208;
      v87 = strlen(v85 + 1208);
      if (v87 <= 0xF8)
      {
        v88 = v87;
        if (strlen(v85 + 1464) <= 0xF8)
        {
          if (v88)
          {
            do
            {
              OUTLINED_FUNCTION_244();
              if (v90)
              {
                *v86 = v89;
              }

              ++v86;
              --v88;
            }

            while (v88);
            v85 = v4[9];
          }

          v91 = v85 + 1464;
          if (strlen(v85 + 1464))
          {
            do
            {
              OUTLINED_FUNCTION_244();
              if (v90)
              {
                *v91 = v93;
              }

              ++v91;
            }

            while (v92 != 1);
            v85 = v4[9];
          }

          v94 = v85 + 1720;
          if (strlen(v85 + 1720))
          {
            do
            {
              OUTLINED_FUNCTION_244();
              if (v90)
              {
                *v94 = v96;
              }

              ++v94;
            }

            while (v95 != 1);
            v85 = v4[9];
          }

          v97 = v85 + 2232;
          if (strlen(v85 + 2232))
          {
            do
            {
              OUTLINED_FUNCTION_244();
              if (v90)
              {
                *v97 = v99;
              }

              ++v97;
            }

            while (v98 != 1);
            v85 = v4[9];
          }

          v100 = v85 + 1976;
          for (i = strlen(v85 + 1976); i; --i)
          {
            if (*v100 == 61)
            {
              *v100 = 45;
            }

            ++v100;
          }
        }
      }
    }

    goto LABEL_70;
  }

  if (acquireProperty<OSObject>(*(v4[9] + 5392), "module-instance", &anObject, 1uLL, "IOService") && (v54 = OSMetaClassBase::safeMetaCast(anObject, gOSDataMetaClass)) != 0)
  {
    v55 = v54;
    v56 = 0;
  }

  else
  {
    v57 = OSMetaClassBase::safeMetaCast(anObject, gOSStringMetaClass);
    if (!v57)
    {
      goto LABEL_70;
    }

    v58 = v57;
    v59 = OSString::getCStringNoCopy(v57);
    Length = OSString::getLength(v58);
    v61 = OSData::withBytes(v59, Length);
    if (!v61)
    {
      goto LABEL_70;
    }

    v55 = v61;
    v56 = 1;
    if (!OSData::appendBytes(v61, &v122 + 7, 1uLL))
    {
      goto LABEL_70;
    }
  }

  if (OSData::getBytesNoCopy(v55))
  {
    *__s = 0;
    v156 = 0;
    *(&v157 + 7) = 0;
    *&v157 = 0;
    if (IOParseBootArgString("wlan.debug.module-instance", __s, 31))
    {
      v62 = strlen(__s);
      v55 = OSData::withBytes(__s, (v62 + 1));
      v56 = 1;
    }

    v63 = v4[9];
    BytesNoCopy = OSData::getBytesNoCopy(v55);
    if (OSData::getLength(v55) <= 0x20)
    {
      v65 = OSData::getLength(v55);
    }

    else
    {
      v65 = 32;
    }

    strlcpy((v63 + 2488), BytesNoCopy, v65);
    v66 = v4[9];
    v67 = OSData::getBytesNoCopy(v55);
    strlcat((v66 + 1464), v67, 0xFFuLL);
    memcpy((v4[9] + 1976), (v4[9] + 1464), 0x100uLL);
    memcpy((v4[9] + 1720), (v4[9] + 1464), 0x100uLL);
    memcpy((v4[9] + 2232), (v4[9] + 1464), 0x100uLL);
    *(v4[9] + v43 + 1 + 1208) = 80;
    *(v43 + v4[9] + 1210) = 61;
    v68 = v4[9];
    v69 = OSData::getBytesNoCopy(v55);
    strlcat((v68 + 1208), v69, 0xFFuLL);
    appended = AppleBCMWLANCore::appendWskuInfo(v4);
    if (appended)
    {
      v106 = appended;
      OUTLINED_FUNCTION_19_1();
      if ((*(v107 + 1952))(v4))
      {
        OUTLINED_FUNCTION_19_1();
        (*(v108 + 1952))(v4);
        if (CCLogStream::shouldLog())
        {
          OUTLINED_FUNCTION_19_1();
          v110 = (*(v109 + 1952))(v4);
          CCLogStream::logAlert(v110, "[dk] %s@%d:Failed appendWskuInfo(), ret[0x%08x]\n", "generateFileName", 3571, v106);
        }
      }

      goto LABEL_70;
    }

    if (__b[0])
    {
      *(v4[9] + 1208 + strlen((v4[9] + 1208))) = 95;
    }

    bzero(&__dst, 0x100uLL);
    v71 = OSData::getBytesNoCopy(v55);
    if (OSData::getLength(v55) <= 0xFF)
    {
      v72 = OSData::getLength(v55);
    }

    else
    {
      v72 = 255;
    }

    memcpy(&__dst, v71, v72);
    strlcat(&__dst, "-PlatformConfig.plist", 0xFFuLL);
    setPropertyHelper(v4, "PlatformConfigFileName", &__dst);
    LODWORD(v46) = strlcpy((v4[9] + 2520), &__dst, 0xFFuLL);
    v73 = v56 ^ 1;
    if (!v55)
    {
      v73 = 1;
    }

    if ((v73 & 1) == 0)
    {
      LODWORD(v46) = (v55->release)(v55);
    }

    goto LABEL_37;
  }

LABEL_70:
  if (anObject)
  {
    v102 = OUTLINED_FUNCTION_5_0(anObject);
    (*(v103 + 16))(v102);
    anObject = 0;
  }

  OUTLINED_FUNCTION_24_1();
  (*(v104 + 16))(v6);
LABEL_73:
  OUTLINED_FUNCTION_280();
}

uint64_t AppleBCMWLANCore::appendRemoteFEMInfo(AppleBCMWLANCore *this)
{
  v34 = 0;
  if (checkAcquireDataPropertyNotEmpty(*(*(this + 9) + 5392), "wifi-rfem-info", &v34, 0x18uLL, 1uLL, "IOService"))
  {
    v3 = 3825174301;
    v4 = *(this + 9);
    BytesNoCopy = OSData::getBytesNoCopy(v34, 0, 0x18uLL);
    v6 = *BytesNoCopy;
    *(v4 + 4368) = BytesNoCopy[2];
    *(v4 + 4352) = v6;
    v1 = *(this + 9);
    if (*(v1 + 4352) != 1)
    {
      goto LABEL_28;
    }

    if (*(v1 + 4356))
    {
      goto LABEL_28;
    }

    v7 = OUTLINED_FUNCTION_206(BytesNoCopy, &krFemMurata);
    if (v7)
    {
      v7 = OUTLINED_FUNCTION_206(v7, &krFemSky);
      if (v7)
      {
        v7 = OUTLINED_FUNCTION_206(v7, &krFemUsi);
        if (v7)
        {
          v7 = OUTLINED_FUNCTION_206(v7, &krFemBrcm);
          if (v7)
          {
            goto LABEL_28;
          }
        }
      }
    }

    v8 = OUTLINED_FUNCTION_206(v7, &krFemMurata);
    if (v8)
    {
      v9 = OUTLINED_FUNCTION_206(v8, &krFemSky);
      if (v9)
      {
        v10 = OUTLINED_FUNCTION_206(v9, &krFemUsi);
        if (v10)
        {
          if (OUTLINED_FUNCTION_206(v10, &krFemBrcm))
          {
            goto LABEL_28;
          }
        }
      }
    }

    strlcat((v1 + 1208), "_F-", 0x100uLL);
    v11 = *(this + 9);
    v12 = *(v11 + 4360);
    switch(v12)
    {
      case 'B':
        v13 = "b";
        break;
      case 'M':
        v13 = "m";
        break;
      case 'S':
        v13 = "s";
        break;
      default:
        v13 = "u";
        break;
    }

    OUTLINED_FUNCTION_276(v13, v11);
    v14 = *(this + 9);
    v15 = *(v14 + 4368);
    switch(v15)
    {
      case 'B':
        v16 = "b";
        break;
      case 'M':
        v16 = "m";
        break;
      case 'S':
        v16 = "s";
        break;
      default:
        v16 = "u";
        break;
    }

    OUTLINED_FUNCTION_276(v16, v14);
  }

  v3 = 0;
LABEL_28:
  v17 = v34;
  if (v34)
  {
    goto LABEL_45;
  }

  v33 = 0;
  if (AppleBCMWLAN_isDevFusedOrCSRInternal() && IOParseBootArgNumber("wlan.factory", &v33, 8) && (v33 & 0x100) != 0)
  {
    v18 = OUTLINED_FUNCTION_60_0();
    if ((*(v19 + 368))(v18) >> 1 >= 0x88D)
    {
      OUTLINED_FUNCTION_253();
      OUTLINED_FUNCTION_276("_F-", v20);
      if (v1 == 4378)
      {
        v22 = "s";
        v23 = 83;
        v24 = 85;
        v25 = "u";
      }

      else if (v1 == 4399 || v1 == 4388)
      {
        v22 = "m";
        v23 = 77;
        v24 = 83;
        v25 = "s";
      }

      else
      {
        v22 = "s";
        v23 = 83;
        v24 = 77;
        v25 = "m";
      }

      *(*(this + 9) + 4360) = v24;
      OUTLINED_FUNCTION_276(v25, *(this + 9));
      *(*(this + 9) + 4368) = v23;
      strlcat((*(this + 9) + 1208), v22, 0x100uLL);
      OUTLINED_FUNCTION_132();
      if ((*(v26 + 1952))(this))
      {
        OUTLINED_FUNCTION_24_1();
        (*(v27 + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          OUTLINED_FUNCTION_24_1();
          v32 = (*(v31 + 1952))(this);
          CCLogStream::logAlert(v32, "[dk] %s@%d:no rfem info found from device tree, fake it as %c%c\n", "appendRemoteFEMInfo", 3400, *(*(this + 9) + 4360), *(*(this + 9) + 4368));
        }
      }
    }
  }

  v17 = v34;
  if (v34)
  {
LABEL_45:
    v28 = OUTLINED_FUNCTION_5_0(v17);
    (*(v29 + 16))(v28);
  }

  return v3;
}

OSMetaClassBase *AppleBCMWLANCore::processRxEvents_WithEventQueue()
{
  OUTLINED_FUNCTION_4();
  v4 = OUTLINED_FUNCTION_5_0(*v3);
  (*(v5 + 56))(v4);
  OUTLINED_FUNCTION_218();
  kdebug_trace();
  v6 = OUTLINED_FUNCTION_5_0(*v0);
  if ((*(v7 + 56))(v6))
  {
    while (1)
    {
      v8 = AppleBCMWLANObjectQueue::dequeue(*v0);
      result = OSMetaClassBase::safeMetaCast(v8, gIO80211BufferMetaClass);
      if (!result)
      {
        break;
      }

      v10 = result;
      IO80211Buffer::getLength(result);
      v11 = OUTLINED_FUNCTION_77();
      BytesNoCopy = IO80211Buffer::getBytesNoCopy(v11);
      AppleBCMWLANCore::handleRxEventFrame(v1, v2, BytesNoCopy);
      IO80211Buffer::returnBuffer(v10);
      v13 = OUTLINED_FUNCTION_5_0(*v0);
      if (!(*(v14 + 56))(v13))
      {
        goto LABEL_4;
      }
    }
  }

  else
  {
LABEL_4:
    OUTLINED_FUNCTION_218();

    return kdebug_trace();
  }

  return result;
}

uint64_t AppleBCMWLANCore::handleEventPacket(uint64_t result, uint64_t a2)
{
  v272 = 0;
  v273 = 0;
  if (a2)
  {
    v3 = *(a2 + 8);
    if (v3)
    {
      v4 = result;
      if (*a2 <= 3uLL)
      {
        OUTLINED_FUNCTION_24_1();
        if ((*(v5 + 1952))(v4))
        {
          OUTLINED_FUNCTION_24_1();
          (*(v6 + 1952))(v4);
          if (CCLogStream::shouldLog())
          {
            OUTLINED_FUNCTION_24_1();
            v8 = (*(v7 + 1952))(v4);
            v264 = *a2;
            CCLogStream::logAlert(v8, "[dk] %s@%d:DeviceBuffer length %lu shorter than bdc_header %lu !\n");
          }
        }

        return kdebug_trace();
      }

      if (CCLogStream::shouldLog(*(*(result + 72) + 14256), 1uLL))
      {
        LODWORD(v274) = 0;
        CCLogStream::logHeaderAndBuf(*(v4[9] + 14256), *(a2 + 8), 0, *a2, *a2, &v274, 4uLL);
      }

      v9 = 4 * *(v3 + 3);
      v10 = *a2;
      if (*a2 < (v9 + 28))
      {
        OUTLINED_FUNCTION_24_1();
        if (!(*(v11 + 1952))(v4))
        {
          return kdebug_trace();
        }

        OUTLINED_FUNCTION_24_1();
        (*(v12 + 1952))(v4);
        if (!CCLogStream::shouldLog())
        {
          return kdebug_trace();
        }

        goto LABEL_12;
      }

      v15 = *(a2 + 8) + v9;
      if (memcmp((v15 + 23), &unk_1003B0600, 3uLL))
      {
        return kdebug_trace();
      }

      v16 = *(v15 + 26);
      if (v16 != 256)
      {
        if (v16 == 1280)
        {
          AppleBCMWLANCore::handleDongleEventPacket(v4, a2);
        }

        return kdebug_trace();
      }

      v17 = v9 + 76;
      if (v10 < v9 + 76)
      {
        OUTLINED_FUNCTION_24_1();
        if (!(*(v18 + 1952))(v4))
        {
          return kdebug_trace();
        }

        OUTLINED_FUNCTION_24_1();
        (*(v19 + 1952))(v4);
        if (!CCLogStream::shouldLog())
        {
          return kdebug_trace();
        }

LABEL_12:
        OUTLINED_FUNCTION_24_1();
        v14 = (*(v13 + 1952))(v4);
        v270 = 4 * *(v3 + 3);
        v265 = *a2;
        CCLogStream::logAlert(v14, "[dk] %s@%d:DeviceBuffer length %lu shorter than wl_event_msg_t start at %lu! (offset=%d)\n");
        return kdebug_trace();
      }

      v20 = (v3 + v9);
      v21 = bswap32(v20[3].u32[0]);
      if ((v17 + v21) >> 32)
      {
        OUTLINED_FUNCTION_24_1();
        if ((*(v22 + 1952))(v4))
        {
          OUTLINED_FUNCTION_24_1();
          (*(v23 + 1952))(v4);
          if (CCLogStream::shouldLog())
          {
            OUTLINED_FUNCTION_24_1();
            v25 = (*(v24 + 1952))(v4);
            v269 = bswap32(v20[2].u32[0]);
            CCLogStream::logAlert(v25, "[dk] %s@%d:Event buffer overflow Read Offset: %lu, Event Length: %lu\n");
          }
        }
      }

      else if (v10 >= v17 + v21)
      {
        v20[1].i16[7] = bswap32(v20[1].u16[7]) >> 16;
        v30 = vrev32q_s8(v20[2]);
        v20[2] = v30;
        v20[3].i32[0] = v21;
        v20[1].i16[6] = bswap32(v20[1].u16[6]) >> 16;
        if (v30.i32[0] < 0xDBu)
        {
          v272 = &v20[1].i8[12];
          v273 = v21 + 48;
          v35 = v4[9];
          v36 = *(v35 + 14248);
          if (v36)
          {
            shouldLog = CCLogStream::shouldLog(v36, 0x10uLL);
            v35 = v4[9];
            if (shouldLog)
            {
              if (*(v35 + 18304) || (v40 = v20[2].i32[0] - 75, v40 > 0x17) || ((1 << v40) & 0xE00001) == 0)
              {
                v274 = 0xAAAAAAAAAAAAAAAALL;
                mach_continuous_time();
                absolutetime_to_nanoseconds();
                OUTLINED_FUNCTION_132();
                if ((*(v38 + 1952))(v4))
                {
                  OUTLINED_FUNCTION_24_1();
                  (*(v39 + 1952))(v4);
                  if (CCLogStream::shouldLog())
                  {
                    OUTLINED_FUNCTION_24_1();
                    v225 = (*(v224 + 1952))(v4);
                    OUTLINED_FUNCTION_176();
                    OUTLINED_FUNCTION_169();
                    CCLogStream::logNotice(v225, "[dk] %s@%d: wle@<%p> Received event %lu(%s) @ %llu.%09llu: status = %lu, reason = %lu, flags = 0x%x, authtype = %lu, addr = %02x:%02x:%02x:%02x:%02x:%02x if %s ifidx %u bssidx %u len %lu\n", "handleEventPacket", 15337, &v20[1].u64[1] + 4, v17, v228, v226 / v227, v226 % v227, v20[2].u32[1], v20[2].u32[2], v20[1].u16[7], v20[2].u32[3], v20[3].u8[4], v20[3].u8[5], v20[3].u8[6], v20[3].u8[7], v20[3].u8[8], v20[3].u8[9], &v20[3].i8[10], v20[4].u8[10], v20[4].u8[11], v20[3].u32[0]);
                  }
                }

                v35 = v4[9];
              }
            }
          }

          if (*(v35 + 11296))
          {
            v41 = OUTLINED_FUNCTION_220();
            isEventForInterface = AppleBCMWLANCore::isEventForInterface(v41, v42, v43);
            v35 = v4[9];
            if (isEventForInterface)
            {
              v45 = *(v35 + 11296);
LABEL_47:
              AppleBCMWLANProximityInterface::handleEvent(v45, &v272);
              goto LABEL_58;
            }
          }

          if (!*(v35 + 29944))
          {
            goto LABEL_225;
          }

          v46 = OUTLINED_FUNCTION_220();
          v49 = AppleBCMWLANCore::isEventForInterface(v46, v47, v48);
          v35 = v4[9];
          if (v49)
          {
            v50 = *(v35 + 29944);
LABEL_51:
            AppleBCMWLANNANInterface::handleEvent(v50, &v20[1].i64[1] + 4);
            goto LABEL_58;
          }

          if (!*(v35 + 29952) || (v51 = OUTLINED_FUNCTION_220(), v54 = AppleBCMWLANCore::isEventForInterface(v51, v52, v53), v35 = v4[9], !v54))
          {
LABEL_225:
            if (*(v35 + 11304) && (v55 = OUTLINED_FUNCTION_220(), AppleBCMWLANCore::isEventForInterface(v55, v56, v57)))
            {
              AppleBCMWLANIO80211APSTAInterface::handleEvent(*(v4[9] + 11304), &v20[1].i64[1] + 4);
            }

            else
            {
              if (v20[4].i8[10] && v20[2].i32[0] != 52)
              {
                OUTLINED_FUNCTION_24_1();
                if ((*(v59 + 1952))(v4))
                {
                  OUTLINED_FUNCTION_24_1();
                  (*(v60 + 1952))(v4);
                  if (CCLogStream::shouldLog())
                  {
                    OUTLINED_FUNCTION_24_1();
                    v230 = (*(v229 + 1952))(v4);
                    v231 = OUTLINED_FUNCTION_176();
                    CCLogStream::logAlert(v230, "[dk] %s@%d:WARNING: Event %lu(%s) found for missing virtual interface index %u!\n", "handleEventPacket", 15380, v17, v231, v20[4].u8[10]);
                  }
                }

                v61 = *(v4[9] + 5536);
                v62 = OUTLINED_FUNCTION_176();
                CCFaultReporter::reportFault(v61, 4u, "/Library/Caches/com.apple.xbs/Sources/AppleBCMWLANV3_driverkit/AppleBCMWLANCore.cpp", 0x3C18u, "handleEventPacket", 0, -469793524, "event=%lu(%s),interface=%u", v17, v62, v20[4].u8[10]);
                v63 = v20[2].u32[0];
              }

              OUTLINED_FUNCTION_218();
              kdebug_trace();
              v72 = v20[2].i32[0];
              if (!v65 & v64)
              {
                v73 = v72 - 167;
                switch(v73)
                {
                  case 0:
                  case 1:
                    v74 = OUTLINED_FUNCTION_255();
                    AppleBCMWLANBGScanAdapter::scanBackoffEvent(v74, &v20[1].i64[1] + 4);
                    goto LABEL_58;
                  case 2:
                  case 3:
                  case 6:
                  case 7:
                  case 8:
                  case 9:
                  case 10:
                  case 11:
                  case 12:
                  case 14:
                  case 15:
                  case 18:
                  case 25:
                  case 27:
                  case 28:
                  case 29:
                  case 31:
                  case 32:
                  case 35:
                  case 37:
                  case 38:
                  case 39:
                  case 41:
                  case 43:
                  case 44:
LABEL_84:
                    ++*(v4[9] + 4460);
                    goto LABEL_58;
                  case 4:
                    v275 = 0xAAAAAAAAAAAAAAAALL;
                    if (v20[3].i32[0] <= 0xBu)
                    {
                      OUTLINED_FUNCTION_24_1();
                      if ((*(v232 + 1952))(v4))
                      {
                        OUTLINED_FUNCTION_24_1();
                        (*(v233 + 1952))(v4);
                        if (CCLogStream::shouldLog())
                        {
                          OUTLINED_FUNCTION_24_1();
                          v235 = (*(v234 + 1952))(v4);
                          v268 = v20[3].u32[0];
                          CCLogStream::logEmergency(v235, "[dk] %s@%d:Malformed WLC_E_TVPM_MITIGATION size %d expected %ld\n");
                        }
                      }
                    }

                    else if (v20[4].i16[6])
                    {
                      v158 = v20[5].u32[0];
                      v159 = v20[5].i16[3];
                      LOBYTE(v275) = v20[5].i8[4];
                      if (v275 >= 2u)
                      {
                        OUTLINED_FUNCTION_24_1();
                        if ((*(v240 + 1952))(v4))
                        {
                          OUTLINED_FUNCTION_24_1();
                          (*(v241 + 1952))(v4);
                          if (CCLogStream::shouldLog())
                          {
                            OUTLINED_FUNCTION_24_1();
                            (*(v242 + 1952))(v4);
                            OUTLINED_FUNCTION_213();
                            CCLogStream::logEmergency(v243, "[dk] %s@%d:Malformed WLC_E_TVPM_MITIGATION slice %d\n");
                          }
                        }
                      }

                      else
                      {
                        v160 = v159 & 7;
                        BYTE1(v275) = v159 & 7;
                        v274 = v158;
                        OUTLINED_FUNCTION_24_1();
                        if ((*(v161 + 1952))(v4))
                        {
                          OUTLINED_FUNCTION_24_1();
                          (*(v162 + 1952))(v4);
                          if (CCLogStream::shouldLog())
                          {
                            OUTLINED_FUNCTION_24_1();
                            (*(v246 + 1952))(v4);
                            OUTLINED_FUNCTION_213();
                            CCLogStream::logAlert(v247, "[dk] %s@%d:TVPM Mitigation slice %d, on_off flags %x, timestamp %llu ms\n", v259, v261, v263, v160, v158);
                          }
                        }

                        OUTLINED_FUNCTION_257();
                        if (v163)
                        {
                          IO80211Controller::postMessage(v4, v163, 0x5Du, &v274, 0x10uLL, 1);
                        }
                      }
                    }

                    else
                    {
                      OUTLINED_FUNCTION_24_1();
                      if ((*(v236 + 1952))(v4))
                      {
                        OUTLINED_FUNCTION_24_1();
                        (*(v237 + 1952))(v4);
                        if (CCLogStream::shouldLog())
                        {
                          OUTLINED_FUNCTION_24_1();
                          (*(v238 + 1952))(v4);
                          OUTLINED_FUNCTION_213();
                          CCLogStream::logEmergency(v239, "[dk] %s@%d:Malformed WLC_E_TVPM_MITIGATION version %d\n");
                        }
                      }
                    }

                    goto LABEL_58;
                  case 5:
                    v166 = OUTLINED_FUNCTION_106();
                    AppleBCMWLANCore::handleScanEvent(v166, v167);
                    goto LABEL_58;
                  case 13:
                    if (v20[3].i32[0] != 1)
                    {
                      OUTLINED_FUNCTION_24_1();
                      if ((*(v211 + 1952))(v4))
                      {
                        OUTLINED_FUNCTION_24_1();
                        (*(v212 + 1952))(v4);
                        if (CCLogStream::shouldLog())
                        {
                          OUTLINED_FUNCTION_24_1();
                          v214 = (*(v213 + 1952))(v4);
                          v267 = v20[3].u32[0];
                          CCLogStream::logAlert(v214, "[dk] %s@%d:Invalid SAR event MSG length=%u\n");
                        }
                      }

                      goto LABEL_58;
                    }

                    v152 = v20[4].u8[12];
                    if (v152 > 1)
                    {
                      OUTLINED_FUNCTION_24_1();
                      if ((*(v218 + 1952))(v4))
                      {
                        OUTLINED_FUNCTION_24_1();
                        (*(v219 + 1952))(v4);
                        if (CCLogStream::shouldLog())
                        {
                          OUTLINED_FUNCTION_24_1();
                          (*(v220 + 1952))(v4);
                          OUTLINED_FUNCTION_213();
                          CCLogStream::logAlert(v221, "[dk] %s@%d:Invalid SAR event state %u\n");
                        }
                      }

                      goto LABEL_58;
                    }

                    ++*(v4[9] + 4 * v152 + 4872);
                    OUTLINED_FUNCTION_24_1();
                    if ((*(v153 + 1952))(v4) && (OUTLINED_FUNCTION_24_1(), (*(v154 + 1952))(v4), CCLogStream::shouldLog()))
                    {
                      OUTLINED_FUNCTION_24_1();
                      v255 = (*(v254 + 1952))(v4);
                      if (v152)
                      {
                        v256 = "ON";
                      }

                      else
                      {
                        v256 = "OFF";
                      }

                      CCLogStream::logAlert(v255, "[dk] %s@%d:SAR event state:%s onbody:%u offbody:%u\n", "handleEventPacket", 15764, v256, *(v4[9] + 4876), *(v4[9] + 4872));
                      if (v152)
                      {
                        goto LABEL_58;
                      }
                    }

                    else if (v152)
                    {
                      goto LABEL_58;
                    }

                    v155 = v4[9];
                    if ((*(v155 + 4880) & 1) == 0)
                    {
                      goto LABEL_58;
                    }

                    v129 = *(v155 + 5536);
                    v130 = -469793492;
                    v131 = 15766;
                    break;
                  case 16:
                    v156 = OUTLINED_FUNCTION_204();
                    AppleBCMWLANNetAdapter::handleBssTransEvent(v156, v157);
                    goto LABEL_58;
                  case 17:
                    v168 = OUTLINED_FUNCTION_106();
                    AppleBCMWLANCore::handleWeightAvgLQMEvent(v168, v169);
                    goto LABEL_58;
                  case 19:
                    v164 = OUTLINED_FUNCTION_106();
                    AppleBCMWLANCore::handleWSECEvent(v164, v165);
                    goto LABEL_58;
                  case 20:
                    v142 = OUTLINED_FUNCTION_106();
                    AppleBCMWLANCore::handleObssDetectEvent(v142);
                    goto LABEL_58;
                  case 21:
                    OUTLINED_FUNCTION_24_1();
                    if ((*(v138 + 1952))(v4))
                    {
                      OUTLINED_FUNCTION_24_1();
                      (*(v139 + 1952))(v4);
                      if (CCLogStream::shouldLog())
                      {
                        OUTLINED_FUNCTION_24_1();
                        v245 = (*(v244 + 1952))(v4);
                        CCLogStream::logInfo(v245, "[dk] %s@%d:Host: Received WLC_E_AP_BCN_MUTE event\n", "handleEventPacket", 15781);
                      }
                    }

                    v140 = OUTLINED_FUNCTION_204();
                    AppleBCMWLANNetAdapter::handleBeaconMuteMitigation(v140, v141);
                    goto LABEL_58;
                  case 22:
                    v136 = OUTLINED_FUNCTION_106();
                    AppleBCMWLANCore::handleSCChanQualEvent(v136, v137);
                    goto LABEL_58;
                  case 23:
                    v134 = OUTLINED_FUNCTION_106();
                    AppleBCMWLANCore::handleDynSAREvent(v134, v135);
                    goto LABEL_58;
                  case 24:
                    goto LABEL_58;
                  case 26:
                    if (OUTLINED_FUNCTION_230())
                    {
                      v143 = v4[9];
                      if ((*(v143 + 18484) & 1) == 0)
                      {
                        if (*(v143 + 11288))
                        {
                          OUTLINED_FUNCTION_218();
                          IO80211Controller::postMessage(v144, v145, v146, v147, v148, 1);
                          v143 = v4[9];
                        }

                        AppleBCMWLANBGScanAdapter::parsePFNAllGoneExtEvent(*(v143 + 5496), &v20[1].i64[1] + 4);
                        OUTLINED_FUNCTION_24_1();
                        if ((*(v149 + 1952))(v4))
                        {
                          OUTLINED_FUNCTION_24_1();
                          (*(v150 + 1952))(v4);
                          if (CCLogStream::shouldLog())
                          {
LABEL_178:
                            OUTLINED_FUNCTION_24_1();
                            v186 = (*(v185 + 1952))(v4);
                            CCLogStream::logAlert(v186, "[dk] %s@%d: LOST ALL PNO networks \n");
                          }
                        }
                      }
                    }

                    goto LABEL_58;
                  case 30:
                    AppleBCMWLANScanAdapter::eventRoamScanResult(*(v4[9] + 5424), &v20[1].i64[1] + 4);
                    goto LABEL_58;
                  case 33:
                    v222 = OUTLINED_FUNCTION_106();
                    AppleBCMWLANCore::handleMSCSEvent(v222, v223);
                    goto LABEL_58;
                  case 34:
                    v260 = v20[2].u32[1];
                    v262 = v20[2].u32[2];
                    io80211_os_log();
                    OUTLINED_FUNCTION_132();
                    if ((*(v173 + 1952))(v4))
                    {
                      OUTLINED_FUNCTION_24_1();
                      (*(v174 + 1952))(v4);
                      if (CCLogStream::shouldLog())
                      {
                        OUTLINED_FUNCTION_24_1();
                        v176 = (*(v175 + 1952))(v4);
                        CCLogStream::logNotice(v176, "[dk] %s@%d:RxDMA recovery event status %u (count %u)\n", "handleEventPacket", 15792, v20[2].i32[1], v20[2].i32[2]);
                      }
                    }

                    goto LABEL_58;
                  case 36:
                    if (OUTLINED_FUNCTION_278())
                    {
                      v170 = *(v4[9] + 5592);
                      if (v170)
                      {
                        AppleBCMWLAN11beAdapter::handleMloLinkEvent(v170, &v20[1].i64[1] + 4);
                      }
                    }

                    goto LABEL_58;
                  case 40:
                    v171 = OUTLINED_FUNCTION_106();
                    AppleBCMWLANCore::handleUlOfdmaDisableEvent(v171, v172);
                    goto LABEL_58;
                  case 42:
                    AppleBCMWLANSensingAdapter::handleSensingEvent(*(v4[9] + 35976), &v20[1].i64[1] + 4);
                    goto LABEL_58;
                  case 45:
                    v151 = *(v4[9] + 35992);
                    if (v151)
                    {
                      AppleBCMWLANNearbyDeviceDiscoveryAdapter::handleNDDFWEvents(v151, &v20[1].i64[1] + 4);
                    }

                    goto LABEL_58;
                  default:
                    if (!(!v65 & v64))
                    {
                      switch(v73)
                      {
                        case 'a':
                        case 'b':
                          goto LABEL_82;
                        case 'c':
                        case 'e':
                        case 'f':
                        case 'i':
                        case 'j':
                        case 'k':
                        case 'l':
                          goto LABEL_84;
                        case 'd':
LABEL_76:
                          v50 = *(v4[9] + 29944);
                          if (!v50)
                          {
                            goto LABEL_58;
                          }

                          goto LABEL_51;
                        case 'g':
                          AppleBCMWLANGASAdapter::handleGAS_FRAGMENT_RX(*(v4[9] + 5472), &v20[1].i64[1] + 4, v66, v67, v68, v69, v70, v71);
                          goto LABEL_58;
                        case 'h':
                          AppleBCMWLANGASAdapter::handleGAS_COMPLETE(*(v4[9] + 5472), &v20[1].i64[1] + 4);
                          goto LABEL_58;
                        case 'm':
                          v80 = OUTLINED_FUNCTION_106();
                          AppleBCMWLANCore::handleRangingEvent(v80, v81);
                          goto LABEL_58;
                        default:
LABEL_222:
                          JUMPOUT(0);
                      }
                    }

                    v79 = v73 - 69;
                    switch(v79)
                    {
                      case 0:
                        AppleBCMWLANScanAdapter::eventScanComplete(*(v4[9] + 5424), &v20[1].i64[1] + 4);
                        goto LABEL_58;
                      case 1:
                      case 2:
                      case 3:
                      case 4:
                      case 5:
                      case 8:
                      case 9:
                      case 10:
                      case 13:
                        goto LABEL_84;
                      case 6:
                        v187 = OUTLINED_FUNCTION_188();
                        if (v187)
                        {
                          AppleBCMWLANProximityInterface::handleActionFrame_rx(v187, &v272);
                        }

                        goto LABEL_58;
                      case 7:
                        v189 = *(v4[9] + 9480);
                        OUTLINED_FUNCTION_24_1();
                        v191 = (*(v190 + 1952))(v4);
                        if (v189 == 1)
                        {
                          if (v191)
                          {
                            OUTLINED_FUNCTION_24_1();
                            (*(v192 + 1952))(v4);
                            if (CCLogStream::shouldLog())
                            {
                              OUTLINED_FUNCTION_24_1();
                              v251 = (*(v250 + 1952))(v4);
                              CCLogStream::logAlert(v251, "[dk] %s@%d: Received WLC_E_WAKE_EVENT\n", "handleEventPacket", 15394);
                            }
                          }

                          *(v4[9] + 9480) = 0;
                        }

                        else if (v191)
                        {
                          OUTLINED_FUNCTION_24_1();
                          (*(v215 + 1952))(v4);
                          if (CCLogStream::shouldLog())
                          {
                            OUTLINED_FUNCTION_24_1();
                            v217 = (*(v216 + 1952))(v4);
                            CCLogStream::logAlert(v217, "[dk] %s@%d: Received WLC_E_WAKE_EVENT, but we're not in WoW Test Mode\n");
                          }
                        }

                        goto LABEL_58;
                      case 11:
                        v188 = OUTLINED_FUNCTION_188();
                        if (v188)
                        {
                          AppleBCMWLANProximityInterface::handleEvent(v188, &v272);
                        }

                        AppleBCMWLANCore::csaReceived(v4);
                        goto LABEL_58;
                      case 12:
                        v193 = OUTLINED_FUNCTION_106();
                        AppleBCMWLANCore::handlePMAlertEvent(v193, v194, a2);
                        goto LABEL_58;
                      case 14:
                        OUTLINED_FUNCTION_257();
                        if (v177)
                        {
                          OUTLINED_FUNCTION_218();
                          IO80211Controller::postMessage(v178, v179, v180, v181, v182, 1);
                        }

                        OUTLINED_FUNCTION_24_1();
                        if ((*(v183 + 1952))(v4))
                        {
                          OUTLINED_FUNCTION_24_1();
                          (*(v184 + 1952))(v4);
                          if (CCLogStream::shouldLog())
                          {
                            goto LABEL_178;
                          }
                        }

                        goto LABEL_58;
                      default:
                        switch(v79)
                        {
                          case 124:
                            v195 = OUTLINED_FUNCTION_106();
                            AppleBCMWLANCore::handleCCAChanQualEvent(v195, v196);
                            goto LABEL_58;
                          case 126:
                            v200 = OUTLINED_FUNCTION_106();
                            AppleBCMWLANCore::handleTxStatusErrEvent(v200, v201);
                            goto LABEL_58;
                          case 151:
                            OUTLINED_FUNCTION_24_1();
                            if ((*(v197 + 1952))(v4))
                            {
                              OUTLINED_FUNCTION_24_1();
                              (*(v198 + 1952))(v4);
                              if (CCLogStream::shouldLog())
                              {
                                OUTLINED_FUNCTION_24_1();
                                v249 = (*(v248 + 1952))(v4);
                                CCLogStream::logAlert(v249, "[dk] %s@%d:TKO Event woke up\n", "handleEventPacket", 15693);
                              }
                            }

                            v199 = *(v4[9] + 5544);
                            if (v199)
                            {
                              AppleBCMWLANKeepAliveOffload::handleTKOEvent(v199, &v20[1].i64[1] + 4);
                            }

                            goto LABEL_58;
                        }

                        if (v79 != 152)
                        {
                          goto LABEL_84;
                        }

LABEL_82:
                        v45 = OUTLINED_FUNCTION_188();
                        if (!v45)
                        {
                          goto LABEL_58;
                        }

                        goto LABEL_47;
                    }
                }
              }

              else
              {
                switch(v72)
                {
                  case 0:
                    v105 = OUTLINED_FUNCTION_106();
                    AppleBCMWLANCore::handleSetSSIDEvent(v105, v106);
                    goto LABEL_58;
                  case 1:
                  case 2:
                  case 4:
                  case 5:
                  case 8:
                  case 10:
                  case 11:
                  case 15:
                  case 18:
                  case 20:
                  case 21:
                  case 22:
                  case 24:
                  case 25:
                  case 27:
                  case 28:
                  case 29:
                  case 30:
                  case 31:
                  case 34:
                  case 35:
                  case 36:
                  case 39:
                  case 40:
                  case 42:
                  case 43:
                  case 44:
                  case 45:
                  case 48:
                  case 50:
                  case 51:
                  case 53:
                  case 54:
                  case 55:
                    goto LABEL_84;
                  case 3:
                    v109 = OUTLINED_FUNCTION_106();
                    AppleBCMWLANCore::handleAuthEvent(v109, v110);
                    goto LABEL_58;
                  case 6:
                  case 12:
                    v75 = OUTLINED_FUNCTION_106();
                    AppleBCMWLANCore::sendDeauthDissasocEvent(v75, v76);
                    v77 = OUTLINED_FUNCTION_106();
                    AppleBCMWLANCore::handleExtendedEventData(v77, v78);
                    goto LABEL_58;
                  case 7:
                    v97 = OUTLINED_FUNCTION_106();
                    AppleBCMWLANCore::handleAssocEvent(v97, v98);
                    goto LABEL_58;
                  case 9:
                    v95 = OUTLINED_FUNCTION_106();
                    AppleBCMWLANCore::handleReassocEvent(v95, v96);
                    goto LABEL_58;
                  case 13:
                    OUTLINED_FUNCTION_24_1();
                    if ((*(v99 + 1952))(v4))
                    {
                      OUTLINED_FUNCTION_24_1();
                      (*(v100 + 1952))(v4);
                      if (CCLogStream::shouldLog())
                      {
                        OUTLINED_FUNCTION_24_1();
                        v102 = (*(v101 + 1952))(v4);
                        CCLogStream::logAlert(v102, "[dk] %s@%d:ALERT: WiFi infra entering QUIET mode.\n");
                      }
                    }

                    goto LABEL_58;
                  case 14:
                    OUTLINED_FUNCTION_24_1();
                    if ((*(v91 + 1952))(v4))
                    {
                      OUTLINED_FUNCTION_24_1();
                      (*(v92 + 1952))(v4);
                      if (CCLogStream::shouldLog())
                      {
                        OUTLINED_FUNCTION_24_1();
                        v94 = (*(v93 + 1952))(v4);
                        CCLogStream::logAlert(v94, "[dk] %s@%d:ALERT: WiFi infra exiting QUIET mode.\n");
                      }
                    }

                    goto LABEL_58;
                  case 16:
                    v103 = OUTLINED_FUNCTION_106();
                    AppleBCMWLANCore::handleLinkEvent(v103, v104);
                    goto LABEL_58;
                  case 17:
                    v116 = OUTLINED_FUNCTION_106();
                    AppleBCMWLANCore::handleMICErrorEvent(v116, v117);
                    goto LABEL_58;
                  case 19:
                    v87 = OUTLINED_FUNCTION_106();
                    AppleBCMWLANCore::handleRoamEvent(v87, v88);
                    goto LABEL_58;
                  case 23:
                    v107 = OUTLINED_FUNCTION_106();
                    AppleBCMWLANCore::handlePruneEvent(v107, v108);
                    goto LABEL_58;
                  case 26:
                    v84 = OUTLINED_FUNCTION_188();
                    if (v84)
                    {
                      AppleBCMWLANProximityInterface::handleEvent(v84, &v272);
                      v85 = v4[9];
                    }

                    v86 = *(v85 + 29944);
                    if (v86)
                    {
                      AppleBCMWLANNANInterface::handleEvent(v86, &v20[1].i64[1] + 4);
                      v85 = v4[9];
                    }

                    AppleBCMWLANScanAdapter::scanComplete(*(v85 + 5424), &v20[1].i64[1] + 4);
                    goto LABEL_58;
                  case 32:
                    v118 = OUTLINED_FUNCTION_106();
                    AppleBCMWLANCore::handleRoamPrepEvent(v118, v119);
                    goto LABEL_58;
                  case 33:
                    v111 = OUTLINED_FUNCTION_255();
                    AppleBCMWLANBGScanAdapter::parseBGScanEvent(v111, &v20[1].i64[1] + 4);
                    goto LABEL_58;
                  case 37:
                    v120 = *(v4[9] + 5416);
                    if (!v120 || !AppleBCMWLANJoinAdapter::isJoining(v120))
                    {
                      v202 = OUTLINED_FUNCTION_106();
                      AppleBCMWLANCore::handleRoamScanStartEvent(v202, v203);
                      WORD2(v274) = 0;
                      LODWORD(v274) = 0;
                      v204 = OUTLINED_FUNCTION_117();
                      IO80211BssManager::getCurrentBSSID(v204, &v274);
                      OUTLINED_FUNCTION_214(v4[9]);
                      *(v205 + 14088) = 0;
                      *(v205 + 13992) = 0u;
                      *(v205 + 14008) = 0u;
                      *(v205 + 14024) = 0u;
                      *(v205 + 14040) = 0u;
                      *(v205 + 14056) = 0u;
                      *(v205 + 14072) = 0u;
                      *(v4[9] + 14000) = getCurrentContinuousTimeMilliSeconds();
                      *(v4[9] + 14048) = v274;
                      *(v4[9] + 14050) = BYTE2(v274);
                      v206 = v4[9] + 14080;
                      *v206 = v274;
                      *(v206 + 4) = WORD2(v274);
                      v207 = OUTLINED_FUNCTION_117();
                      *(v4[9] + 14056) = IO80211BssManager::getCurrentAuthType(v207);
                      v208 = OUTLINED_FUNCTION_117();
                      *(v4[9] + 14064) = IO80211BssManager::getCurrentBSSAKMs(v208);
                      *(v4[9] + 13996) = mapBcmReasonToApple80211IOReturnRoam(v20[2].i32[2]);
                      v209 = OUTLINED_FUNCTION_117();
                      IO80211BssManager::getCurrentRSSI(v209, (v210 + 14024));
                      goto LABEL_58;
                    }

                    OUTLINED_FUNCTION_24_1();
                    if ((*(v121 + 1952))(v4))
                    {
                      OUTLINED_FUNCTION_24_1();
                      (*(v122 + 1952))(v4);
                      if (CCLogStream::shouldLog())
                      {
                        OUTLINED_FUNCTION_24_1();
                        v253 = (*(v252 + 1952))(v4);
                        CCLogStream::logAlert(v253, "[dk] %s@%d: receive roam start event when joining\n", "handleEventPacket", 15562);
                      }
                    }

                    v123 = OUTLINED_FUNCTION_60_0();
                    v125 = (*(v124 + 368))(v123);
                    if (v125 == 4355 || v125 == 4364)
                    {
                      goto LABEL_58;
                    }

                    OUTLINED_FUNCTION_24_1();
                    if ((*(v127 + 1952))(v4))
                    {
                      OUTLINED_FUNCTION_24_1();
                      (*(v128 + 1952))(v4);
                      if (CCLogStream::shouldLog())
                      {
                        OUTLINED_FUNCTION_24_1();
                        (*(v257 + 1952))(v4);
                        OUTLINED_FUNCTION_213();
                        CCLogStream::logAlert(v258, "[dk] %s@%d: receive unexpected roam start event when joining. chip number %d\n", v259, v261, v263);
                      }
                    }

                    v129 = *(v4[9] + 5536);
                    v130 = -469792505;
                    v131 = 15574;
                    break;
                  case 38:
                    goto LABEL_76;
                  case 41:
                    v114 = OUTLINED_FUNCTION_106();
                    AppleBCMWLANCore::handlePSMWatchdog(v114, v115);
                    goto LABEL_58;
                  case 46:
                    v112 = OUTLINED_FUNCTION_106();
                    AppleBCMWLANCore::handlePSKEvent(v112, v113);
                    goto LABEL_58;
                  case 47:
                    v132 = OUTLINED_FUNCTION_106();
                    AppleBCMWLANCore::handleCountryCodeChangedEvent(v132, v133);
                    goto LABEL_58;
                  case 49:
                    v89 = OUTLINED_FUNCTION_106();
                    AppleBCMWLANCore::handleICVErrorEvent(v89, v90);
                    goto LABEL_58;
                  case 52:
                    if ((*(v4[9] + 969) & 1) == 0)
                    {
                      v82 = OUTLINED_FUNCTION_106();
                      AppleBCMWLANCore::handleTraceEvent(v82, v83);
                    }

                    goto LABEL_58;
                  case 56:
                    AppleBCMWLANLQM::handleLQMEvent(*(v4[9] + 5608), &v20[1].i32[3]);
                    goto LABEL_58;
                  case 57:
                    goto LABEL_58;
                  default:
                    goto LABEL_222;
                }
              }

              CCFaultReporter::reportFault(v129, 4u, "/Library/Caches/com.apple.xbs/Sources/AppleBCMWLANV3_driverkit/AppleBCMWLANCore.cpp", v131, "handleEventPacket", 0, v130, 0);
            }

            goto LABEL_58;
          }

          AppleBCMWLANNANDataInterface::handleEvent(*(v35 + 29952), &v20[1].i64[1] + 4);
        }

        else
        {
          OUTLINED_FUNCTION_24_1();
          if ((*(v31 + 1952))(v4))
          {
            OUTLINED_FUNCTION_24_1();
            (*(v32 + 1952))(v4);
            if (CCLogStream::shouldLog())
            {
              OUTLINED_FUNCTION_24_1();
              v34 = (*(v33 + 1952))(v4);
              CCLogStream::logAlert(v34, "[dk] %s@%d: Received garbage event, ignore...\n");
            }
          }
        }
      }

      else
      {
        OUTLINED_FUNCTION_24_1();
        if ((*(v26 + 1952))(v4))
        {
          OUTLINED_FUNCTION_24_1();
          (*(v27 + 1952))(v4);
          if (CCLogStream::shouldLog())
          {
            OUTLINED_FUNCTION_24_1();
            v29 = (*(v28 + 1952))(v4);
            v271 = bswap32(v20[2].u32[0]);
            v266 = *a2;
            CCLogStream::logAlert(v29, "[dk] %s@%d:DeviceBuffer length %lu shorter than wl_event_msg_t->datalen needs %lu! For event_type: %d\n");
          }
        }
      }

LABEL_58:
      v58 = v20[2].u32[0];
      return kdebug_trace();
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::fetchAndUpdateRingParameters(AppleBCMWLANCore *this)
{
  v287 = 0;
  isDevFusedOrCSRInternal = AppleBCMWLAN_isDevFusedOrCSRInternal();
  result = OUTLINED_FUNCTION_119();
  if (result)
  {
    v4 = (*(*(result + 48) + 288))();
    v5 = *(this + 9);
    if (*(v5 + 5392))
    {
      *(v5 + 4432) = 256;
      v6 = checkAcquireDataPropertyNotEmpty(v4, "wlan.llw.tx.ring.size", &v287, 4uLL, 1uLL, "IOService");
      if (v6)
      {
        v12 = *(this + 9);
        *(v12 + 4432) = *OSData::getBytesNoCopy(v287, 0, 4uLL);
        v6 = v287;
        if (v287)
        {
          v13 = OUTLINED_FUNCTION_5_0(v287);
          v6 = (*(v14 + 16))(v13);
          v287 = 0;
        }
      }

      *(*(this + 9) + 4436) = 256;
      v15 = OUTLINED_FUNCTION_144(v6, "wlan.tx.ring.size", v7, v8, v9, "IOService", v10, v11, v195, v209, v223, v238, v253, v263, v273, 0, v287);
      if (v15)
      {
        MEMORY[0x1254] = *OUTLINED_FUNCTION_143(v15, v16, v17, v18, v19, v20, v21, v22, v196, v210, v224, v239, v254, v264, v274, v283, v287);
        v15 = v287;
        if (v287)
        {
          v23 = OUTLINED_FUNCTION_5_0(v287);
          v15 = (*(v24 + 16))(v23);
          v287 = 0;
        }
      }

      *(*(this + 9) + 4440) = 256;
      v25 = OUTLINED_FUNCTION_144(v15, "wlan.rx.ring.size", v17, v18, v19, "IOService", v21, v22, v196, v210, v224, v239, v254, v264, v274, v283, v287);
      if (v25)
      {
        MEMORY[0x1258] = *OUTLINED_FUNCTION_143(v25, v26, v27, v28, v29, v30, v31, v32, v197, v211, v225, v240, v255, v265, v275, v284, v287);
        v25 = v287;
        if (v287)
        {
          v33 = OUTLINED_FUNCTION_5_0(v287);
          v25 = (*(v34 + 16))(v33);
          v287 = 0;
        }
      }

      *(*(this + 9) + 4444) = 0;
      v35 = OUTLINED_FUNCTION_144(v25, "wlan.tx.submission-queue.size", v27, v28, v29, "IOService", v31, v32, v197, v211, v225, v240, v255, v265, v275, v284, v287);
      if (v35)
      {
        MEMORY[0x125C] = *OUTLINED_FUNCTION_143(v35, v36, v37, v38, v39, v40, v41, v42, v198, v212, v226, v241, v256, v266, v276, v285, v287);
        v35 = v287;
        if (v287)
        {
          v43 = OUTLINED_FUNCTION_5_0(v287);
          v35 = (*(v44 + 16))(v43);
          v287 = 0;
        }
      }

      *(*(this + 9) + 4448) = 0;
      v45 = OUTLINED_FUNCTION_144(v35, "wlan.skywalk.packetpoolsize", v37, v38, v39, "IOService", v41, v42, v198, v212, v226, v241, v256, v266, v276, v285, v287);
      if (v45)
      {
        MEMORY[0x1260] = *OUTLINED_FUNCTION_143(v45, v46, v47, v48, v49, v50, v51, v52, v199, v213, v227, v242, v257, v267, v277, v286, v287);
        v45 = v287;
        if (v287)
        {
          v53 = OUTLINED_FUNCTION_5_0(v287);
          v45 = (*(v54 + 16))(v53);
          v287 = 0;
        }
      }

      v55 = OUTLINED_FUNCTION_165(v45, "wlan.llw.tx.ring.size", v47, v48, "IOService", v50, v51, v52, v199, v213, v227, v242);
      if (v55)
      {
        v55 = v286;
        if (v286)
        {
          if (OSNumber::unsigned32BitValue(v286))
          {
            *(*(this + 9) + 4432) = OSNumber::unsigned32BitValue(v286);
          }

          v61 = OUTLINED_FUNCTION_5_0(v286);
          v55 = (*(v62 + 16))(v61);
          v286 = 0;
        }
      }

      v63 = OUTLINED_FUNCTION_165(v55, "wlan.tx.ring.size", v56, v57, "IOService", v58, v59, v60, v200, v214, v228, v243);
      if (v63)
      {
        v63 = v286;
        if (v286)
        {
          if (OSNumber::unsigned32BitValue(v286))
          {
            *(*(this + 9) + 4436) = OSNumber::unsigned32BitValue(v286);
          }

          v69 = OUTLINED_FUNCTION_5_0(v286);
          v63 = (*(v70 + 16))(v69);
          v286 = 0;
        }
      }

      v71 = OUTLINED_FUNCTION_165(v63, "wlan.rx.ring.size", v64, v65, "IOService", v66, v67, v68, v201, v215, v229, v244);
      if (v71)
      {
        v71 = v286;
        if (v286)
        {
          if (OSNumber::unsigned32BitValue(v286))
          {
            *(*(this + 9) + 4440) = OSNumber::unsigned32BitValue(v286);
          }

          v77 = OUTLINED_FUNCTION_5_0(v286);
          v71 = (*(v78 + 16))(v77);
          v286 = 0;
        }
      }

      v79 = OUTLINED_FUNCTION_165(v71, "wlan.tx.submission-queue.size", v72, v73, "IOService", v74, v75, v76, v202, v216, v230, v245);
      if (v79)
      {
        v79 = v286;
        if (v286)
        {
          if (OSNumber::unsigned32BitValue(v286))
          {
            *(*(this + 9) + 4444) = OSNumber::unsigned32BitValue(v286);
          }

          v85 = OUTLINED_FUNCTION_5_0(v286);
          v79 = (*(v86 + 16))(v85);
          v286 = 0;
        }
      }

      v87 = OUTLINED_FUNCTION_165(v79, "wlan.skywalk.packetpoolsize", v80, v81, "IOService", v82, v83, v84, v203, v217, v231, v246);
      if (v87)
      {
        v87 = v286;
        if (v286)
        {
          if (OSNumber::unsigned32BitValue(v286))
          {
            *(*(this + 9) + 4448) = OSNumber::unsigned32BitValue(v286);
          }

          v95 = OUTLINED_FUNCTION_5_0(v286);
          v87 = (*(v96 + 16))(v95);
        }
      }

      if (isDevFusedOrCSRInternal)
      {
        LODWORD(v97) = OUTLINED_FUNCTION_164(v87, v88, v89, v90, v91, v92, v93, v94, v204, v218, v232, v247, v257, v267, v277, 0);
        if (v97)
        {
          OUTLINED_FUNCTION_149();
          OUTLINED_FUNCTION_238();
          if (v107 == v108)
          {
            v105 = v106;
          }

          *(*(this + 9) + 4440) = v105;
          OUTLINED_FUNCTION_24_1();
          v97 = (*(v109 + 1952))(this);
          if (v97)
          {
            OUTLINED_FUNCTION_24_1();
            (*(v110 + 1952))(this);
            LODWORD(v97) = CCLogStream::shouldLog();
            if (v97)
            {
              OUTLINED_FUNCTION_24_1();
              (*(v175 + 1952))(this);
              OUTLINED_FUNCTION_219();
              v177 = *(v176 + 4440);
              OUTLINED_FUNCTION_212();
              LODWORD(v97) = CCLogStream::logAlert(v178, "[dk] %s@%d:%s() boot-args overrides '%s' to %d, bounded value: %d\n", "fetchAndUpdateRingParameters", 5321, v233, v248, v258, v268);
            }
          }
        }

        LODWORD(v111) = OUTLINED_FUNCTION_164(v97, v98, v99, v100, v101, v102, v103, v104, v205, v219, v233, v248, v258, v268, *v278, v278[4]);
        if (v111)
        {
          OUTLINED_FUNCTION_149();
          OUTLINED_FUNCTION_238();
          if (v107 == v108)
          {
            v119 = v120;
          }

          *(*(this + 9) + 4436) = v119;
          OUTLINED_FUNCTION_24_1();
          v111 = (*(v121 + 1952))(this);
          if (v111)
          {
            OUTLINED_FUNCTION_24_1();
            (*(v122 + 1952))(this);
            LODWORD(v111) = CCLogStream::shouldLog();
            if (v111)
            {
              OUTLINED_FUNCTION_24_1();
              (*(v179 + 1952))(this);
              OUTLINED_FUNCTION_219();
              v181 = *(v180 + 4436);
              OUTLINED_FUNCTION_212();
              LODWORD(v111) = CCLogStream::logAlert(v182, "[dk] %s@%d:%s() boot-args overrides '%s' to %d, bounded value: %d\n", "fetchAndUpdateRingParameters", 5327, v234, v249, v259, v269);
            }
          }
        }

        LODWORD(v123) = OUTLINED_FUNCTION_164(v111, v112, v113, v114, v115, v116, v117, v118, v206, v220, v234, v249, v259, v269, *v279, v279[4]);
        if (v123)
        {
          OUTLINED_FUNCTION_149();
          OUTLINED_FUNCTION_238();
          if (v107 == v108)
          {
            v131 = v132;
          }

          *(*(this + 9) + 4444) = v131;
          OUTLINED_FUNCTION_24_1();
          v123 = (*(v133 + 1952))(this);
          if (v123)
          {
            OUTLINED_FUNCTION_24_1();
            (*(v134 + 1952))(this);
            LODWORD(v123) = CCLogStream::shouldLog();
            if (v123)
            {
              OUTLINED_FUNCTION_24_1();
              (*(v183 + 1952))(this);
              OUTLINED_FUNCTION_219();
              v185 = *(v184 + 4444);
              OUTLINED_FUNCTION_212();
              LODWORD(v123) = CCLogStream::logAlert(v186, "[dk] %s@%d:%s() boot-args overrides '%s' to %d, bounded value: %d\n", "fetchAndUpdateRingParameters", 5333, v235, v250, v260, v270);
            }
          }
        }

        LODWORD(v135) = OUTLINED_FUNCTION_164(v123, v124, v125, v126, v127, v128, v129, v130, v207, v221, v235, v250, v260, v270, *v280, v280[4]);
        if (v135)
        {
          OUTLINED_FUNCTION_149();
          OUTLINED_FUNCTION_238();
          if (v107 == v108)
          {
            v143 = v144;
          }

          *(*(this + 9) + 4432) = v143;
          OUTLINED_FUNCTION_24_1();
          v135 = (*(v145 + 1952))(this);
          if (v135)
          {
            OUTLINED_FUNCTION_24_1();
            (*(v146 + 1952))(this);
            LODWORD(v135) = CCLogStream::shouldLog();
            if (v135)
            {
              OUTLINED_FUNCTION_24_1();
              (*(v187 + 1952))(this);
              OUTLINED_FUNCTION_219();
              v189 = *(v188 + 4432);
              OUTLINED_FUNCTION_212();
              LODWORD(v135) = CCLogStream::logAlert(v190, "[dk] %s@%d:%s() boot-args overrides '%s' to %d, bounded value: %d\n", "fetchAndUpdateRingParameters", 5339, v236, v251, v261, v271);
            }
          }
        }

        if (OUTLINED_FUNCTION_164(v135, v136, v137, v138, v139, v140, v141, v142, v208, v222, v236, v251, v261, v271, *v281, v281[4]))
        {
          v147 = *v282;
          if (*v282 <= 1536)
          {
            v147 = 1536;
          }

          if (v147 >= 12800)
          {
            v147 = 12800;
          }

          *(*(this + 9) + 4448) = v147;
          OUTLINED_FUNCTION_24_1();
          if ((*(v148 + 1952))(this))
          {
            OUTLINED_FUNCTION_24_1();
            (*(v149 + 1952))(this);
            if (CCLogStream::shouldLog())
            {
              OUTLINED_FUNCTION_24_1();
              (*(v191 + 1952))(this);
              OUTLINED_FUNCTION_219();
              v193 = *(v192 + 4432);
              OUTLINED_FUNCTION_212();
              CCLogStream::logAlert(v194, "[dk] %s@%d:%s() boot-args overrides '%s' to %d, bounded value: %d\n", "fetchAndUpdateRingParameters", 5345, v237, v252, v262, v272);
            }
          }
        }
      }

      v150 = OUTLINED_FUNCTION_119();
      v152 = *(v151 + 4432);
      v153 = OUTLINED_FUNCTION_5_0(v150);
      (*(v154 + 632))(v153);
      v155 = OUTLINED_FUNCTION_119();
      v157 = *(v156 + 4436);
      v158 = OUTLINED_FUNCTION_5_0(v155);
      (*(v159 + 640))(v158);
      v160 = OUTLINED_FUNCTION_119();
      v162 = *(v161 + 4440);
      v163 = OUTLINED_FUNCTION_5_0(v160);
      (*(v164 + 648))(v163);
      v165 = OUTLINED_FUNCTION_119();
      v167 = *(v166 + 4444);
      v168 = OUTLINED_FUNCTION_5_0(v165);
      (*(v169 + 656))(v168);
      v170 = OUTLINED_FUNCTION_119();
      v172 = *(v171 + 4448);
      v173 = OUTLINED_FUNCTION_5_0(v170);
      (*(v174 + 664))(v173);
      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::completeChipImage(AppleBCMWLANCore *this, AppleBCMWLANChipImage *a2)
{
  v4 = OUTLINED_FUNCTION_16_5(this);
  if (!(*(v5 + 1952))(v4) || (OUTLINED_FUNCTION_19_1(), (*(v6 + 1952))(v3), !OUTLINED_FUNCTION_229()))
  {
    if (v2)
    {
      goto LABEL_4;
    }

    return OUTLINED_FUNCTION_97();
  }

  OUTLINED_FUNCTION_19_1();
  v14 = (*(v13 + 1952))(v3);
  CCLogStream::logNoticeIf(v14, 0x80uLL, "[dk] %s@%d:\n", "completeChipImage", 5555);
  if (!v2)
  {
    return OUTLINED_FUNCTION_97();
  }

LABEL_4:
  if (*(*(v3 + 72) + 14248) && CCLogStream::shouldLog())
  {
    v7 = OUTLINED_FUNCTION_130();
    AppleBCMWLANCore::logChipImage(v7, v8);
  }

  v9 = OUTLINED_FUNCTION_51_0(*(v3 + 72));
  v11 = *(v10 + 64);

  return v11(v9, v2);
}

char *AppleBCMWLANCore::findWord(AppleBCMWLANCore *this, const char *a2, const char *a3)
{
  if (!a3)
  {
    return 0;
  }

  OUTLINED_FUNCTION_32_1();
  v6 = v5;
  v9 = strnlen(v7, v8);
  result = 0;
  if (v6 && v3 >= 1 && v9)
  {
    for (i = v6; ; i = v16 + 1)
    {
      result = strnstr(i, v4, v3);
      if (!result)
      {
        break;
      }

      if (result == v6 || ((v12 = *(result - 1), v13 = v12, v14 = (v12 & 0xFFFFFFDF) - 65, v13 <= 56) ? (v15 = v14 >= 0x1A) : (v15 = 0), v15))
      {
        v16 = &result[v9];
        v17 = result[v9];
        v18 = v17;
        v19 = (v17 & 0xFFFFFFDF) - 65;
        if (v18 <= 56 && v19 > 0x19)
        {
          return result;
        }
      }

      else
      {
        v16 = result;
      }
    }
  }

  return result;
}

BOOL AppleBCMWLANCore::isAdvEcountersSupported(AppleBCMWLANCore *this, const char *a2)
{
  Word = AppleBCMWLANCore::findWord(this, a2, "adv_ecounters");
  if ((*(*this + 1952))(this))
  {
    OUTLINED_FUNCTION_19_1();
    (*(v4 + 1952))(this);
    if (CCLogStream::shouldLog())
    {
      OUTLINED_FUNCTION_19_1();
      v7 = (*(v6 + 1952))(this);
      CCLogStream::logAlert(v7, "[dk] %s@%d:advance eCounter cap string found? %u\n", "isAdvEcountersSupported", 40590, Word != 0);
    }
  }

  return Word != 0;
}

uint64_t *IO80211TLVIterator<IO80211TLVHeader<unsigned short,unsigned short,0ul,2ul,4ul>>::operator++(uint64_t a1)
{
  v2 = (a1 + 8);
  v3 = *(a1 + 16);
  if (v3 < 4 || !*v2 || (v4 = *(*v2 + 2) + (-*(*v2 + 2) & 3) + 4, v4 > v3))
  {
    v4 = 0;
  }

  result = IO80211BufferCursor::_crop((a1 + 8), v4, 0xFFFFFFFFFFFFFFFFLL, v7);
  if (v2 == v7)
  {
    v6 = *(a1 + 16);
  }

  else
  {
    v6 = v7[1];
    *(a1 + 8) = v7[0];
    *(a1 + 16) = v6;
  }

  if (v6 < 4 || !*v2 || *(*v2 + 2) + (-*(*v2 + 2) & 3uLL) + 4 > v6)
  {
    *v2 = 0;
    v2[1] = 0;
  }

  return result;
}

uint64_t AppleBCMWLANCore::configureRegionSpecific(AppleBCMWLANCore *this)
{
  RegionInfo = AppleBCMWLANConfigManager::getRegionInfo(*(*(this + 9) + 5464));
  if (RegionInfo)
  {
    CStringNoCopy = OSString::getCStringNoCopy(RegionInfo);
  }

  else
  {
    CStringNoCopy = 0;
  }

  v22 = 0;
  v4 = OUTLINED_FUNCTION_189();
  isNewDevice = AppleBCMWLANConfigManager::isNewDevice(v4);
  if (CStringNoCopy)
  {
    v6 = isNewDevice;
    v20 = *CStringNoCopy;
    v21 = CStringNoCopy[1];
    result = IOParseBootArgNumber("wlan.RegionInfo.override", &v20, 3);
    v22 = 0;
    if (!v6)
    {
      return result;
    }

    v8 = 0;
    v9 = 1;
    do
    {
      v10 = off_1003D09F0[v8];
      if (v20 == *v10 && v21 == v10[1])
      {
        break;
      }

      v9 = v8++ < 0x23;
    }

    while (v8 != 36);
    OUTLINED_FUNCTION_24_1();
    result = (*(v11 + 1952))(this);
    if (result && (OUTLINED_FUNCTION_24_1(), (*(v12 + 1952))(this), result = CCLogStream::shouldLog(), result))
    {
      OUTLINED_FUNCTION_24_1();
      (*(v17 + 1952))(this);
      v18 = OUTLINED_FUNCTION_86();
      v19 = OSString::getCStringNoCopy(v18);
      result = CCLogStream::logAlert(CStringNoCopy, "[dk] %s@%d:Region Info <%s:%s> found=%d \n", "configureRegionSpecific", 40269, &v20, v19, v9);
      if (!v9)
      {
        return result;
      }
    }

    else if (!v9)
    {
      return result;
    }

    result = AppleBCMWLANPowerManager::setHtSisoOnly(*(*(this + 9) + 5520), 1);
    *(*(this + 9) + 36080) = 1;
  }

  else
  {
    OUTLINED_FUNCTION_24_1();
    result = (*(v13 + 1952))(this);
    if (result)
    {
      OUTLINED_FUNCTION_24_1();
      (*(v14 + 1952))(this);
      result = CCLogStream::shouldLog();
      if (result)
      {
        OUTLINED_FUNCTION_24_1();
        v16 = (*(v15 + 1952))(this);
        return CCLogStream::logAlert(v16, "[dk] %s@%d:pRegionInfo is NULL\n", "configureRegionSpecific", 40247);
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::setEcountersEnableStateSync(uint64_t *a1, uint64_t a2, int a3)
{
  if (*(a1[9] + 960) == 1)
  {
    return 0;
  }

  v6 = AppleBCMWLANCore::commandSleepForThreadSafe(a1, 1u);
  if (v6)
  {
    v7 = v6;
    OUTLINED_FUNCTION_19_1();
    if ((*(v9 + 1952))(a1))
    {
      OUTLINED_FUNCTION_19_1();
      (*(v10 + 1952))(a1);
      if (CCLogStream::shouldLog())
      {
        OUTLINED_FUNCTION_19_1();
        (*(v11 + 1952))(a1);
        OUTLINED_FUNCTION_11_3();
        CCLogStream::logAlert(v12, "[dk] %s@%d: setEcountersEnableStateSync fail =(0x%x) from commandSleep\n", v13, v14, v15);
      }
    }
  }

  else
  {
    if (*(a1[9] + 960) == 2 || (v7 = AppleBCMWLANCore::disableECounters(a1), !v7))
    {
      v7 = (*(a2 + 16))(a2);
    }

    if (a3)
    {
      AppleBCMWLANCore::enableECounters(a1);
    }

    AppleBCMWLANCore::commandWakeupForThreadSafe(a1, 1u);
  }

  return v7;
}

uint64_t AppleBCMWLANCore::setACLParams(AppleBCMWLANCore *this, unsigned int *a2)
{
  v18 = *a2;
  result = AppleBCMWLANCore::getCommander(this);
  if (result)
  {
    OUTLINED_FUNCTION_154();
    result = AppleBCMWLANCommander::runIOVarSet(v4, v5, v6, v7, v8);
    if (result)
    {
      OUTLINED_FUNCTION_24_1();
      result = (*(v9 + 1952))(this);
      if (result)
      {
        OUTLINED_FUNCTION_24_1();
        (*(v10 + 1952))(this);
        result = CCLogStream::shouldLog();
        if (result)
        {
          OUTLINED_FUNCTION_24_1();
          v12 = (*(v11 + 1952))(this);
          OUTLINED_FUNCTION_24_1();
          v14 = *(v13 + 112);
          v15 = OUTLINED_FUNCTION_157();
          v17 = v16(v15);
          return CCLogStream::logAlert(v12, "[dk] %s@%d: Error: Unable to set btc_low_latency_acl param %s, %s\n", "setACLParams", 54853, "btc_low_latency_acl", v17);
        }
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::getTXRX_CHAIN_INFO()
{
  OUTLINED_FUNCTION_142();
  if (!v3)
  {
    return (v0 + 6);
  }

  v4 = v3;
  v5 = OUTLINED_FUNCTION_36_1(v2);
  v7 = (*(v6 + 88))(v5);
  v8 = OUTLINED_FUNCTION_5_0(v7);
  if ((*(v9 + 136))(v8))
  {
    OUTLINED_FUNCTION_19_1();
    if ((*(v31 + 1952))(v1) && (OUTLINED_FUNCTION_19_1(), (*(v32 + 1952))(v1), CCLogStream::shouldLog()))
    {
      OUTLINED_FUNCTION_19_1();
      v62 = (*(v61 + 1952))(v1);
      CCLogStream::logAlert(v62, "[dk] %s@%d:getTXRX_CHAIN_INFO() not permitted on driver workQueue thread\n", "getTXRX_CHAIN_INFO", 13166);
      return (v0 + 38);
    }

    else
    {
      return (v0 + 38);
    }
  }

  else
  {
    v10 = OUTLINED_FUNCTION_153();
    if (OUTLINED_FUNCTION_202(v10, "hw_rxchain", &kNoTxPayload, v11, v12, v13, v14))
    {
      OUTLINED_FUNCTION_19_1();
      if ((*(v33 + 1952))(v1))
      {
        OUTLINED_FUNCTION_19_1();
        (*(v34 + 1952))(v1);
        if (CCLogStream::shouldLog())
        {
          OUTLINED_FUNCTION_19_1();
          (*(v35 + 1952))(v1);
          OUTLINED_FUNCTION_52_0();
          v37 = *(v36 + 112);
          v38 = OUTLINED_FUNCTION_159();
          v39(v38);
          OUTLINED_FUNCTION_6();
          CCLogStream::logAlert(v4, "[dk] %s@%d:hw_rxchain GET Failed, , error %s\n");
        }
      }
    }

    else
    {
      *v4 = -86;
      v15 = OUTLINED_FUNCTION_153();
      if (OUTLINED_FUNCTION_202(v15, "hw_txchain", &kNoTxPayload, v16, v17, v18, v19))
      {
        OUTLINED_FUNCTION_19_1();
        if ((*(v40 + 1952))(v1))
        {
          OUTLINED_FUNCTION_19_1();
          (*(v41 + 1952))(v1);
          if (CCLogStream::shouldLog())
          {
            OUTLINED_FUNCTION_19_1();
            (*(v42 + 1952))(v1);
            OUTLINED_FUNCTION_52_0();
            v44 = *(v43 + 112);
            v45 = OUTLINED_FUNCTION_159();
            v46(v45);
            OUTLINED_FUNCTION_6();
            CCLogStream::logAlert(v4, "[dk] %s@%d:hw_txchain GET Failed, , error %s\n");
          }
        }
      }

      else
      {
        *(v4 + 1) = -86;
        v20 = OUTLINED_FUNCTION_153();
        if (OUTLINED_FUNCTION_202(v20, "txchain", &kNoTxPayload, v21, v22, v23, v24))
        {
          OUTLINED_FUNCTION_19_1();
          if ((*(v47 + 1952))(v1))
          {
            OUTLINED_FUNCTION_19_1();
            (*(v48 + 1952))(v1);
            if (CCLogStream::shouldLog())
            {
              OUTLINED_FUNCTION_19_1();
              (*(v49 + 1952))(v1);
              OUTLINED_FUNCTION_52_0();
              v51 = *(v50 + 112);
              v52 = OUTLINED_FUNCTION_159();
              v53(v52);
              OUTLINED_FUNCTION_6();
              CCLogStream::logAlert(v4, "[dk] %s@%d:bss_txchain GET Failed, , error %s\n");
            }
          }
        }

        else
        {
          *(v4 + 2) = -86;
          v25 = OUTLINED_FUNCTION_153();
          if (OUTLINED_FUNCTION_202(v25, "rxchain", &kNoTxPayload, v26, v27, v28, v29))
          {
            OUTLINED_FUNCTION_19_1();
            if ((*(v54 + 1952))(v1))
            {
              OUTLINED_FUNCTION_19_1();
              (*(v55 + 1952))(v1);
              if (CCLogStream::shouldLog())
              {
                OUTLINED_FUNCTION_19_1();
                (*(v56 + 1952))(v1);
                OUTLINED_FUNCTION_52_0();
                v58 = *(v57 + 112);
                v59 = OUTLINED_FUNCTION_159();
                v60(v59);
                OUTLINED_FUNCTION_6();
                CCLogStream::logAlert(v4, "[dk] %s@%d:bss_rxchain GET Failed, , error %s\n");
              }
            }
          }

          else
          {
            v0 = 0;
            *(v4 + 3) = -86;
          }
        }
      }
    }
  }

  return v0;
}

uint64_t AppleBCMWLANCore::isCachedSleepingEventBitFieldSet(AppleBCMWLANCore *this, uint64_t a2)
{
  v3 = *(*(this + 9) + 1184);
  if (!v3)
  {
    return 0;
  }

  IOLockLock(v3);
  v5 = *(this + 9);
  v6 = *(v5 + (a2 >> 3) + 1152);
  OUTLINED_FUNCTION_269(v5);
  return a2;
}

CCFaultReporter *AppleBCMWLANCore::handleMSCSEvent(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 48) == 1)
  {
    v4 = *(a2 + 50);
    OUTLINED_FUNCTION_24_1();
    v6 = (*(v5 + 1952))(a1);
    if (v4 <= 0xF)
    {
      if (!v6 || (OUTLINED_FUNCTION_24_1(), (*(v25 + 1952))(a1), (CCLogStream::shouldLogConsole() & 1) == 0))
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          v26 = *(a2 + 50);
          OUTLINED_FUNCTION_182();
          v41 = 1024;
          v42 = 24714;
          v43 = 1024;
          *v44 = v27;
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%c [dk] %s@%d: unexpected event_mscs length = %u\n", buf, 0x1Eu);
        }
      }

      OUTLINED_FUNCTION_24_1();
      if ((*(v28 + 1952))(a1))
      {
        OUTLINED_FUNCTION_24_1();
        (*(v29 + 1952))(a1);
        if (CCLogStream::shouldLog())
        {
          OUTLINED_FUNCTION_24_1();
          v31 = (*(v30 + 1952))(a1);
          v36 = *(a2 + 50);
          CCLogStream::logAlert(v31, "[dk] %s@%d:unexpected event_mscs length = %u\n");
        }
      }
    }

    else
    {
      if (!v6 || (OUTLINED_FUNCTION_24_1(), (*(v7 + 1952))(a1), (CCLogStream::shouldLogConsole() & 1) == 0))
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          v8 = *(a2 + 60);
          v9 = *(a2 + 61);
          v10 = *(a2 + 62);
          v11 = *(a2 + 52);
          v12 = *(a2 + 56);
          v13 = *(a2 + 57);
          v14 = *(a2 + 58);
          v15 = *(a2 + 59);
          *buf = 67111682;
          v38 = 65;
          v39 = 2080;
          v40 = "handleMSCSEvent";
          v41 = 1024;
          v42 = 24720;
          v43 = 1024;
          *v44 = v8;
          *&v44[4] = 1024;
          *&v44[6] = v9;
          v45 = 1024;
          v46 = v10;
          v47 = 1024;
          v48 = v11;
          v49 = 1024;
          v50 = v12;
          v51 = 1024;
          v52 = v13;
          v53 = 1024;
          v54 = v14;
          v55 = 1024;
          v56 = v15;
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%c [dk] %s@%d: WiFi-QoS: req_type=%u status_flags=0x%02x status_code=%u stream_timeout=%u up_bitmap=0x%02x up_limit=%u fc_type=%u fc_mask=0x%02x\n", buf, 0x48u);
        }
      }

      OUTLINED_FUNCTION_24_1();
      if ((*(v16 + 1952))(a1))
      {
        OUTLINED_FUNCTION_24_1();
        (*(v17 + 1952))(a1);
        if (CCLogStream::shouldLog())
        {
          OUTLINED_FUNCTION_24_1();
          v33 = (*(v32 + 1952))(a1);
          CCLogStream::logAlert(v33, "[dk] %s@%d:WiFi-QoS: req_type=%u status_flags=0x%02x status_code=%u stream_timeout=%u up_bitmap=0x%02x up_limit=%u fc_type=%u fc_mask=0x%02x\n", "handleMSCSEvent", 24720, *(a2 + 60), *(a2 + 61), *(a2 + 62), *(a2 + 52), *(a2 + 56), *(a2 + 57), *(a2 + 58), *(a2 + 59));
        }
      }

      *(*(a1 + 72) + 30082) = (*(a2 + 61) & 0x20) != 0;
      OUTLINED_FUNCTION_24_1();
      if (!(*(v18 + 1952))(a1) || (OUTLINED_FUNCTION_24_1(), (*(v19 + 1952))(a1), (CCLogStream::shouldLogConsole() & 1) == 0))
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          OUTLINED_FUNCTION_254();
          OUTLINED_FUNCTION_182();
          v41 = 1024;
          v42 = 24722;
          v43 = v20;
          *v44 = v21;
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%c [dk] %s@%d: WiFi-QoS: QoS MSCS is %s\n", buf, 0x22u);
        }
      }

      OUTLINED_FUNCTION_24_1();
      if ((*(v22 + 1952))(a1))
      {
        OUTLINED_FUNCTION_24_1();
        (*(v23 + 1952))(a1);
        if (CCLogStream::shouldLog())
        {
          OUTLINED_FUNCTION_24_1();
          (*(v34 + 1952))(a1);
          OUTLINED_FUNCTION_254();
          CCLogStream::logAlert(v35, "[dk] %s@%d:WiFi-QoS: QoS MSCS is %s\n");
        }
      }
    }
  }

  result = *(*(a1 + 72) + 5536);
  if (result)
  {
    return CCFaultReporter::reportFault(result, 4u, "/Library/Caches/com.apple.xbs/Sources/AppleBCMWLANV3_driverkit/AppleBCMWLANCore.cpp", 0x6097u, "handleMSCSEvent", 0, -469793488, 0);
  }

  return result;
}

uint64_t *AppleBCMWLANCore::reportMicrocodeLockup(uint64_t *result, uint64_t a2)
{
  if (a2)
  {
    v4 = OUTLINED_FUNCTION_16_5(result);
    if ((*(v5 + 1952))(v4))
    {
      OUTLINED_FUNCTION_19_1();
      (*(v6 + 1952))(v3);
      if (CCLogStream::shouldLog())
      {
        OUTLINED_FUNCTION_19_1();
        (*(v10 + 1952))(v3);
        v11 = v2[2];
        v12 = v2[3];
        v13 = v2[4];
        v14 = v2[5];
        OUTLINED_FUNCTION_112();
        CCLogStream::logEmergency(v15, "[dk] %s@%d: Chip uCode Lockup, status = 0x%lx, reason = 0x%lx, auth_type = %lu, datalen = %lu\n", "reportMicrocodeLockup", 45038, v16, v17, v18, v19);
      }
    }

    if (v2[3] == 2)
    {
      v7 = 4;
    }

    else
    {
      v7 = 5;
    }

    keys = OSString::withCString("FirmwareEvent.bin");
    values = OSData::withBytes(v2, v2[5] + 48);
    v8 = *(*(v3 + 72) + 5536);
    v9 = OSDictionary::withObjects(&values, &keys, 1u, 0);
    CCFaultReporter::reportFault(v8, v7, "/Library/Caches/com.apple.xbs/Sources/AppleBCMWLANV3_driverkit/AppleBCMWLANCore.cpp", 0xAFFBu, "reportMicrocodeLockup", v9, -469794299, "status=%u,reason=%u", v2[2], v2[3]);
    return AppleBCMWLANUtil::releaseOSObjectArray(&keys, &values, 1);
  }

  return result;
}

uint64_t AppleBCMWLANCore::getBssPhyModde(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 4;
  }

  OUTLINED_FUNCTION_4();
  if (IO80211BSSBeacon::isEhtEnabled(v4) && (AppleBCMWLANCore::featureFlagIsBitSet(v3, 116) & 1) != 0)
  {
    return 512;
  }

  OUTLINED_FUNCTION_24_1();
  if (*(v6 + 464))(v2) && (AppleBCMWLANCore::featureFlagIsBitSet(v3, 67))
  {
    return 256;
  }

  OUTLINED_FUNCTION_24_1();
  if ((*(v7 + 456))(v2))
  {
    OUTLINED_FUNCTION_24_1();
    if (((*(v8 + 264))(v2) & 0xC000) != 0)
    {
      return 128;
    }
  }

  OUTLINED_FUNCTION_24_1();
  if ((*(v9 + 456))(v2))
  {
    return 16;
  }

  OUTLINED_FUNCTION_24_1();
  if ((*(v10 + 448))(v2))
  {
    return 16;
  }

  OUTLINED_FUNCTION_24_1();
  if (((*(v11 + 264))(v2) & 0xC000) != 0)
  {
    return 2;
  }

  OUTLINED_FUNCTION_24_1();
  if ((*(v12 + 584))(v2) <= 0xB)
  {
    return 4;
  }

  else
  {
    return 8;
  }
}

uint64_t AppleBCMWLANCore::monitorModeSetEnabled(AppleBCMWLANCore *this, int a2, int a3)
{
  memcpy(__dst, "<unknown>", sizeof(__dst));
  Pid = 0;
  if (IO80211ThreadProcessInfo::getProcessPid(&Pid, v6) || IO80211ThreadProcessInfo::getProcessName(__dst, 0x80, v7))
  {
    Pid = IO80211Controller::getPid(this);
    IO80211Controller::getProcessName(this, __dst, 0x80uLL);
  }

  if (a3 == 127)
  {
    v8 = OUTLINED_FUNCTION_117();
    if (IO80211BssManager::isAssociated(v8))
    {
      v17 = 6;
    }

    else
    {
      if (a2)
      {
        v9 = *(this + 9);
        OUTLINED_FUNCTION_24_1();
        (*(v10 + 1216))(this, v11 + v12);
      }

      v13 = OUTLINED_FUNCTION_106();
      if (AppleBCMWLANCore::configureMonitorModeToFW(v13, v14))
      {
        OUTLINED_FUNCTION_253();
        v19 = v18 + 0x4000;
        if (!*(v19 + 3468) && (a2 & 1) == 0)
        {
          *(v19 + 1914) = 0;
        }

        OUTLINED_FUNCTION_24_1();
        if ((*(v20 + 1952))(this))
        {
          OUTLINED_FUNCTION_24_1();
          (*(v21 + 1952))(this);
          if (CCLogStream::shouldLog())
          {
            OUTLINED_FUNCTION_24_1();
            v38 = (*(v37 + 1952))(this);
            OUTLINED_FUNCTION_24_1();
            v40 = *(v39 + 112);
            v41 = OUTLINED_FUNCTION_157();
            v42(v41);
            OUTLINED_FUNCTION_6();
            CCLogStream::logAlert(v38, "[dk] %s@%d: Error: Unable to enable monitor mode (WLC_SET_MONITOR): %s\n", v43, v44, v45);
          }
        }

        OUTLINED_FUNCTION_24_1();
        v23 = *(v22 + 112);
        v24 = OUTLINED_FUNCTION_157();
        v25(v24);
        io80211_os_log();
        v17 = 1;
      }

      else
      {
        OUTLINED_FUNCTION_24_1();
        if ((*(v15 + 1952))(this))
        {
          OUTLINED_FUNCTION_24_1();
          (*(v16 + 1952))(this);
          if (CCLogStream::shouldLog())
          {
            OUTLINED_FUNCTION_24_1();
            (*(v35 + 1952))(this);
            v46 = *(*(this + 9) + 35464);
            v47 = *(*(this + 9) + 35468);
            OUTLINED_FUNCTION_66();
            CCLogStream::logAlert(v36, "[dk] %s@%d:Configure Monitor Mode: successful: enabled=%d, (channel[%u] flags[0x%08x])\n", v43, v44, v45, v46, v47);
          }
        }

        v17 = 0;
        *(*(this + 9) + 18298) = a2;
      }
    }
  }

  else
  {
    v17 = 43;
  }

  v26 = OUTLINED_FUNCTION_119();
  if (v26)
  {
    v27 = OUTLINED_FUNCTION_5_0(v26);
    v29 = (*(v28 + 752))(v27);
    v30 = OSMetaClassBase::safeMetaCast(v29, gAppleBCMWLANBusSkywalkMetaClass);
    if (v30)
    {
      v31 = *(*(this + 9) + 18298);
      v32 = OUTLINED_FUNCTION_5_0(v30);
      (*(v33 + 88))(v32);
    }
  }

  return v17;
}

uint64_t AppleBCMWLANCore::waitForGasAbortIfNeeded(AppleBCMWLANCore *this)
{
  v2 = OUTLINED_FUNCTION_62_0(*(this + 9));
  result = (*(v3 + 368))(v2);
  if ((result - 4387) > 0xC || ((1 << (result - 35)) & 0x1003) == 0)
  {
    v15 = 0;
    mach_continuous_time();
    absolutetime_to_nanoseconds();
    result = AppleBCMWLANGASAdapter::getLastGasAbortTime(*(*(this + 9) + 5472));
    v6 = -result;
    v15 = -result;
    if (-result <= 0xC7)
    {
      OUTLINED_FUNCTION_24_1();
      if ((*(v7 + 1952))(this))
      {
        OUTLINED_FUNCTION_24_1();
        (*(v8 + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          OUTLINED_FUNCTION_24_1();
          v14 = (*(v13 + 1952))(this);
          CCLogStream::logAlert(v14, "[dk] %s@%d:TIME to wait due to GAS abort is %llu  \n", "waitForGasAbortIfNeeded", 62458, 200 - v6);
        }
      }

      clock_interval_to_deadline();
      OUTLINED_FUNCTION_24_1();
      v10 = (*(v9 + 104))(this);
      v11 = OUTLINED_FUNCTION_5_0(v10);
      return (*(v12 + 80))(v11, &v15);
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::setMulticastList(AppleBCMWLANCore *this, const ether_addr *a2, unsigned int a3)
{
  if ((*(*(this + 9) + 10377) & 0x80) != 0)
  {
    return 3766630404;
  }

  if (AppleBCMWLANCore::isRejectingCommands(this))
  {
    return 0;
  }

  if (a3 > 0x20)
  {
    return 3758097084;
  }

  v8 = *(*(this + 9) + 11296);
  if (v8)
  {
    if (a3)
    {
      v9 = memcmp(a2, &awdl_bonjour_addr, 6uLL);
      v10 = v9 == 0;
      LODWORD(v8) = v9 != 0;
    }

    else
    {
      v10 = 0;
      LODWORD(v8) = 1;
    }
  }

  else
  {
    v10 = 1;
  }

  v11 = v8 + a3;
  if (v8 + a3 < 0x20)
  {
    v6 = AppleBCMWLANCore::setAllMulticast(this, 0);
    if (!v6)
    {
      memset(__b, 170, sizeof(__b));
      if (a3)
      {
        v14 = 0;
        v15 = a3;
        do
        {
          v16 = *(this + 9) + v14 * 6;
          v17 = *a2[v14].octet;
          *(v16 + 572) = *&a2[v14].octet[4];
          *(v16 + 568) = v17;
          ++v14;
        }

        while (a3 != v14);
        *(*(this + 9) + 564) = a3;
        *__b = v11;
        memcpy(&__b[4], a2, 6 * a3);
      }

      else
      {
        v15 = 0;
        *(*(this + 9) + 564) = 0;
        *__b = v11;
      }

      if (!v10)
      {
        v18 = &__b[6 * v15];
        *(v18 + 1) = awdl_bonjour_addr;
        *(v18 + 4) = word_1003E814C;
      }

      OUTLINED_FUNCTION_137();
      v49 = __b;
      v50 = (6 * v11 + 4);
      OUTLINED_FUNCTION_154();
      v6 = AppleBCMWLANCommander::runIOVarSet(v19, v20, v21, v22, v23);
      if (v6)
      {
        OUTLINED_FUNCTION_24_1();
        if ((*(v24 + 1952))(this))
        {
          OUTLINED_FUNCTION_24_1();
          (*(v25 + 1952))(this);
          if (CCLogStream::shouldLog())
          {
            OUTLINED_FUNCTION_24_1();
            (*(v41 + 1952))(this);
            OUTLINED_FUNCTION_63_0();
            v43 = *(v42 + 112);
            v44 = OUTLINED_FUNCTION_106();
            v45(v44);
            OUTLINED_FUNCTION_250();
            CCLogStream::logCrit((6 * v11 + 4), "[dk] %s@%d:ivars->mcast_list() failed, error %s\n", v46, v47, v48);
          }
        }
      }

      v26 = OUTLINED_FUNCTION_188();
      if (v26)
      {
        if (IO80211SkywalkInterface::getInterfaceId(v26) != -1)
        {
          v27 = *(this + 9);
          v28 = *(v27 + 5408);
          InterfaceId = IO80211SkywalkInterface::getInterfaceId(*(v27 + 11296));
          v49 = __b;
          v50 = (6 * v11 + 4);
          v6 = AppleBCMWLANCommander::runVirtualIOVarSet(v28, InterfaceId, "mcast_list", &v49, 0, 0);
          if (v6)
          {
            OUTLINED_FUNCTION_24_1();
            if ((*(v30 + 1952))(this))
            {
              OUTLINED_FUNCTION_24_1();
              (*(v31 + 1952))(this);
              if (CCLogStream::shouldLog())
              {
                OUTLINED_FUNCTION_24_1();
                v33 = (*(v32 + 1952))(this);
                v34 = OUTLINED_FUNCTION_188();
                v35 = IO80211SkywalkInterface::getInterfaceId(v34);
                OUTLINED_FUNCTION_24_1();
                v37 = *(v36 + 112);
                v38 = OUTLINED_FUNCTION_106();
                v40 = v39(v38);
                CCLogStream::logCrit(v33, "[dk] %s@%d:ivars->mcast_list() failed on virt interface %lu, error %s\n", "setMulticastList", 25428, v35, v40);
              }
            }
          }
        }
      }
    }

    return v6;
  }

  v12 = OUTLINED_FUNCTION_261();

  return AppleBCMWLANCore::setAllMulticast(v12, v13);
}

uint64_t ratespec2rate(uint64_t a1, unsigned int a2)
{
  v2 = a2 & 0x70000;
  switch(HIBYTE(a2) & 7)
  {
    case 0:
      return a2 >> 1;
    case 1:
      if (a2 > 0x4Cu)
      {
        return 0;
      }

      if (v2 == 0x10000)
      {
        v6 = MCS_RATE_TABLE_20MHZ;
      }

      else
      {
        if (v2 != 0x20000)
        {
          return 0;
        }

        v6 = &MCS_RATE_TABLE_40MHZ;
      }

      v7 = &v6[2 * a2];
      goto LABEL_26;
    case 2:
      v4 = a2 >> 4;
      if ((v4 - 4) < 0xFFFFFFFD)
      {
        return 0;
      }

      switch(v2)
      {
        case 65536:
          v5 = &VHT_MCS_RATE_TABLE_20MHZ;
          break;
        case 196608:
          v5 = &VHT_MCS_RATE_TABLE_80MHZ;
          break;
        case 131072:
          v5 = &VHT_MCS_RATE_TABLE_40MHZ;
          break;
        default:
          return 0;
      }

      goto LABEL_23;
    case 3:
      v4 = a2 >> 4;
      if ((v4 - 4) < 0xFFFFFFFD)
      {
        return 0;
      }

      switch(v2)
      {
        case 65536:
          v5 = &AppleBCMWLANUtil80211RateTables::HE_MCS_RATE_TABLE_20MHZ;
          break;
        case 196608:
          v5 = &AppleBCMWLANUtil80211RateTables::HE_MCS_RATE_TABLE_80MHZ;
          break;
        case 131072:
          v5 = &AppleBCMWLANUtil80211RateTables::HE_MCS_RATE_TABLE_40MHZ;
          break;
        default:
          return 0;
      }

LABEL_23:
      if ((a2 & 0xF) > 0xB)
      {
        return 0;
      }

      v7 = &v5[v4 - 1][2 * (a2 & 0xF)];
LABEL_26:
      if ((a2 & 0x800000) != 0)
      {
        ++v7;
      }

      return *v7;
    default:
      return 0;
  }
}

uint64_t AppleBCMWLANCore::getOP_MODE(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 22;
  }

  OUTLINED_FUNCTION_4();
  v12 = 0xAAAAAAAAAAAAAAAALL;
  *v4 = 1;
  v6 = *(v5 + 72);
  v7 = *(v6 + 11304);
  if (v7)
  {
    v8 = AppleBCMWLANIO80211APSTAInterface::enabled(v7);
    v6 = *(v3 + 72);
    if (v8)
    {
      v9 = OUTLINED_FUNCTION_5_0(*(v6 + 11304));
      (*(v10 + 1672))(v9, &v12);
      *(v2 + 4) |= HIDWORD(v12);
      v6 = *(v3 + 72);
    }
  }

  if (IO80211BssManager::isAssociated(*(v6 + 5432)))
  {
    *(v2 + 4) |= IO80211BssManager::getOPMode(*(*(v3 + 72) + 5432));
  }

  result = 0;
  if (*(*(v3 + 72) + 18297))
  {
    *(v2 + 4) |= 0x10u;
  }

  return result;
}

void AppleBCMWLANCore::getSupportedChannelsMatching()
{
  OUTLINED_FUNCTION_279();
  v63 = v0;
  v64 = v1;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v58 = 0;
  v59 = 0;
  bzero(&v61 + 2, 0x5F8uLL);
  v60 = 0;
  v57 = 0;
  v55 = 0;
  v56 = 0;
  LOWORD(v61) = 0;
  v53 = 0;
  v54 = 0;
  *v3 = 0;
  *v5 = 0;
  mach_continuous_time();
  absolutetime_to_nanoseconds();
  mach_continuous_time();
  absolutetime_to_nanoseconds();
  if (!v7)
  {
    goto LABEL_50;
  }

  v10 = *(v9 + 9);
  v11 = *(v10 + 17816);
  if (v11 == 97)
  {
    v13 = 0;
    v12 = *(v10 + 17817) == 0;
  }

  else if (v11 == 98)
  {
    v12 = 0;
    v13 = *(v10 + 17817) == 0;
  }

  else
  {
    v13 = 0;
    v12 = 0;
  }

  if (*(v7 + 4817))
  {
    v14 = (v7 + 4818);
    goto LABEL_13;
  }

  if (*(v7 + 4816))
  {
    isRestrictedCountry = AppleBCMWLANCore::isRestrictedCountry(v9);
    v16 = 6732;
    if (isRestrictedCountry)
    {
      v16 = 6740;
    }

    v14 = (v10 + v16);
    goto LABEL_13;
  }

  v58 = &v60;
  v59 = 0x400040004;
  v40 = AppleBCMWLANCommander::runIOCtlGet(*(v10 + 5408), 83, &kNoTxPayload, &v58, 0);
  if (!v40)
  {
    v14 = &v60;
LABEL_13:
    if (strlcpy(&v61 + 2, v14, 4uLL) <= 3)
    {
      *&v62[2] = 380;
      v58 = &v61;
      v59 = 0x5F4000405FALL;
      mach_continuous_time();
      absolutetime_to_nanoseconds();
      v17 = OUTLINED_FUNCTION_137();
      v52[0] = &v61;
      v52[1] = 1530;
      v18 = AppleBCMWLANCommander::runIOVarGet(v17, "chanspecs", v52, &v58, 0);
      mach_continuous_time();
      absolutetime_to_nanoseconds();
      *v3 = v53 - v55;
      if (v18)
      {
        OUTLINED_FUNCTION_24_1();
        if ((*(v19 + 1952))(v9))
        {
          OUTLINED_FUNCTION_24_1();
          (*(v20 + 1952))(v9);
          if (CCLogStream::shouldLog())
          {
            OUTLINED_FUNCTION_24_1();
            v22 = (*(v21 + 1952))(v9);
            OUTLINED_FUNCTION_24_1();
            (*(v23 + 112))(v9, v18);
            OUTLINED_FUNCTION_6();
            CCLogStream::logCrit(v22, "[dk] %s@%d: chanspecs failed, error %s\n", v47, v48, v49);
          }
        }
      }

      else
      {
        v50 = v5;
        if (v61)
        {
          v51 = 0;
          if (v61 >= 0x17C)
          {
            v24 = 380;
          }

          else
          {
            v24 = v61;
          }

          v25 = v62;
          do
          {
            v26 = *v25;
            v25 += 2;
            AppleBCMWLANChanSpec::getAppleChannelSpec(*(*(v9 + 9) + 17744), v26);
            ChanSpecConvToApple80211Channel();
            v27 = v57;
            v28 = (v57 >> 2) & 1;
            v29 = BYTE4(v56);
            BandForChanSpec = IO80211_getBandForChanSpec(v57);
            isPassiveChannel = AppleBCMWLANCore::isPassiveChannel(v9, v29, BandForChanSpec, v28, (v27 >> 10) & 1, (v27 >> 11) & 1);
            v32 = v57;
            if (!isPassiveChannel)
            {
              v32 = v57 | 0x80;
              v57 |= 0x80u;
            }

            v33 = BYTE4(v56);
            v34 = IO80211_getBandForChanSpec(v32);
            isDFSChannel = AppleBCMWLANCore::isDFSChannel(v9, v33, v34);
            v36 = v57;
            if (isDFSChannel)
            {
              v36 = v57 | 0x100;
              v57 |= 0x100u;
            }

            if ((v36 & 0x10) != 0 || !v12)
            {
              v38 = (v36 & 8) == 0 && v13;
              if (!v38 && (*(v7 + 4808) & v36) != 0 && (*(v7 + 4812) & v36) == 0)
              {
                v39 = v7 + 8 + 12 * v51;
                *v39 = v56;
                *(v39 + 8) = v36;
                ++v51;
              }
            }

            --v24;
          }

          while (v24);
        }

        else
        {
          v51 = 0;
        }

        *v7 = 1;
        *(v7 + 4) = v51;
        if (*(v7 + 4816) && !*(v7 + 4817))
        {
          AppleBCMWLANCore::appending6GOnlyChannelsWithCurrentCC(v9, v7, v52);
        }

        mach_continuous_time();
        absolutetime_to_nanoseconds();
        *v50 = v53 - v54;
      }
    }

    goto LABEL_50;
  }

  v41 = v40;
  OUTLINED_FUNCTION_24_1();
  if ((*(v42 + 1952))(v9))
  {
    OUTLINED_FUNCTION_24_1();
    (*(v43 + 1952))(v9);
    if (CCLogStream::shouldLog())
    {
      OUTLINED_FUNCTION_24_1();
      v45 = (*(v44 + 1952))(v9);
      OUTLINED_FUNCTION_24_1();
      (*(v46 + 112))(v9, v41);
      OUTLINED_FUNCTION_6();
      CCLogStream::logAlert(v45, "[dk] %s@%d: Failed to retrieve country code:%s \n", v47, v48, v49);
    }
  }

LABEL_50:
  OUTLINED_FUNCTION_280();
}

void AppleBCMWLANCore::getSUPPORTED_CHANNELS(uint64_t a1, uint64_t a2)
{
  v19 = 0;
  if (a2)
  {
    OUTLINED_FUNCTION_4();
    if (!*(v4 + 4808) && !*(v2 + 4812))
    {
      *(v2 + 4808) = 2;
    }

    OUTLINED_FUNCTION_130();
    AppleBCMWLANCore::getSupportedChannelsMatching();
    if (!v5)
    {
      LOWORD(v19) = *(v2 + 4818);
      BYTE2(v19) = *(v2 + 4820);
      OUTLINED_FUNCTION_19_1();
      if ((*(v6 + 1952))(v3))
      {
        OUTLINED_FUNCTION_19_1();
        (*(v7 + 1952))(v3);
        if (CCLogStream::shouldLog())
        {
          OUTLINED_FUNCTION_19_1();
          (*(v8 + 1952))(v3);
          OUTLINED_FUNCTION_61_0();
          OUTLINED_FUNCTION_207();
          CCLogStream::logAlert(v9, "[dk] %s@%d: call time[%06llu.%06llu], ioctl time[%06llu.%06llu], channels[%3u], flags In[0x%08x] Ex[0x%08x] cc['%s'], def[%u]/sp[%u]", "getSUPPORTED_CHANNELS", 28157, v12, v10, v14, v11, v15, v13, v16, &v19, v17, v18);
        }
      }
    }
  }
}

void AppleBCMWLANCore::getHW_SUPPORTED_CHANNELS(uint64_t a1, uint64_t a2)
{
  v19 = 0;
  if (a2)
  {
    OUTLINED_FUNCTION_4();
    *(v4 + 4816) = 1;
    *(v4 + 4808) = 2;
    AppleBCMWLANCore::getSupportedChannelsMatching();
    if (!v5)
    {
      LOWORD(v19) = *(v2 + 4818);
      BYTE2(v19) = *(v2 + 4820);
      OUTLINED_FUNCTION_19_1();
      if ((*(v6 + 1952))(v3))
      {
        OUTLINED_FUNCTION_19_1();
        (*(v7 + 1952))(v3);
        if (CCLogStream::shouldLog())
        {
          OUTLINED_FUNCTION_19_1();
          (*(v8 + 1952))(v3);
          OUTLINED_FUNCTION_61_0();
          OUTLINED_FUNCTION_207();
          CCLogStream::logAlert(v9, "[dk] %s@%d: call time[%06llu.%06llu], ioctl time[%06llu.%06llu], channels[%3u], flags In[0x%08x] Ex[0x%08x] cc['%s'], def[%u]/sp[%u]", "getHW_SUPPORTED_CHANNELS", 28192, v12, v10, v14, v11, v15, v13, v16, &v19, v17, v18);
        }
      }
    }
  }
}

void AppleBCMWLANCore::getCOUNTRY_CHANNELS()
{
  OUTLINED_FUNCTION_108();
  bzero(&v14, 0x12D8uLL);
  v13 = 0;
  if (v1)
  {
    v18 = 1;
    v20 = *(v1 + 10);
    v19 = *(v1 + 8);
    v16 = 2;
    AppleBCMWLANCore::getSupportedChannelsMatching();
    if (!v2)
    {
      *v1 = v14;
      memcpy((v1 + 12), v15, 0x12C0uLL);
      LOWORD(v13) = v19;
      BYTE2(v13) = v20;
      if ((*(*v0 + 1952))(v0))
      {
        OUTLINED_FUNCTION_24_1();
        (*(v3 + 1952))(v0);
        if (CCLogStream::shouldLog())
        {
          OUTLINED_FUNCTION_24_1();
          (*(v4 + 1952))(v0);
          OUTLINED_FUNCTION_61_0();
          CCLogStream::logAlert(v7, "[dk] %s@%d: call time[%06llu.%06llu], ioctl time[%06llu.%06llu], channels[%3u], flags In[0x%08x] Ex[0x%08x] cc['%s'], def[%u]/sp[%u]", "getCOUNTRY_CHANNELS", 28238, v9, v8, v11, v5 / v6, HIDWORD(v14), v16, v17, &v13, v10, v12);
        }
      }
    }
  }
}

uint64_t AppleBCMWLANCore::getOFFLOAD_TCPKA_ENABLE(AppleBCMWLANCore *this, uint64_t a2)
{
  v2 = 3758097095;
  if (!a2 || !*(this + 9))
  {
    return 3758097090;
  }

  if (AppleBCMWLANCore::checkForTCPKAOffloadSupport(this))
  {
    v5 = *(*(this + 9) + 5544);
    if (v5)
    {
      AppleBCMWLANKeepAliveOffload::getTCPAliveEnable(v5, a2);
      return 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_19_1();
    if ((*(v7 + 1952))(this))
    {
      OUTLINED_FUNCTION_19_1();
      (*(v8 + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        OUTLINED_FUNCTION_19_1();
        v10 = (*(v9 + 1952))(this);
        CCLogStream::logAlert(v10, "[dk] %s@%d:TCP keep alive offload not supported, ignoring\n", "getOFFLOAD_TCPKA_ENABLE", 28375);
      }
    }
  }

  return v2;
}

uint64_t AppleBCMWLANCore::setOFFLOAD_TCPKA_ENABLE(AppleBCMWLANCore *this, uint64_t a2)
{
  v2 = 3758097095;
  if (a2 && *(this + 9))
  {
    if (AppleBCMWLANCore::checkForTCPKAOffloadSupport(this))
    {
      v5 = *(*(this + 9) + 5544);
      if (v5)
      {
        AppleBCMWLANKeepAliveOffload::setTCPAliveEnable(v5, a2);
        return 0;
      }
    }

    else
    {
      OUTLINED_FUNCTION_19_1();
      if ((*(v7 + 1952))(this))
      {
        OUTLINED_FUNCTION_19_1();
        (*(v8 + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          OUTLINED_FUNCTION_19_1();
          v10 = (*(v9 + 1952))(this);
          CCLogStream::logAlert(v10, "[dk] %s@%d:TCP keep alive offload not supported, ignoring\n", "setOFFLOAD_TCPKA_ENABLE", 28393);
        }
      }
    }
  }

  return v2;
}

uint64_t AppleBCMWLANCore::getDYNSAR_DETAIL(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 22;
  }

  if (*(a2 + 8) > 3u)
  {
    return 22;
  }

  *a2 = 1;
  *(a2 + 12) = AppleBCMWLANTxPowerManager::getDynSARDetailCurId(*(*(a1 + 72) + 5528), *(a2 + 4));
  *(a2 + 16) = AppleBCMWLANTxPowerManager::getDynSARDetailCircled(*(*(a1 + 72) + 5528), *(a2 + 4));
  DynSARDetailReportPerSlicePerAnt = AppleBCMWLANTxPowerManager::getDynSARDetailReportPerSlicePerAnt(*(*(a1 + 72) + 5528), *(a2 + 4), *(a2 + 8));
  memcpy((a2 + 24), DynSARDetailReportPerSlicePerAnt, 0x2D00uLL);
  return 0;
}

uint64_t AppleBCMWLANCore::getCOLOCATED_NETWORK_SCOPE_ID(uint64_t a1, _DWORD *a2)
{
  if (!a2)
  {
    return 22;
  }

  *a2 = 1;
  result = *(*(a1 + 72) + 5432);
  if (result)
  {
    return OUTLINED_FUNCTION_147(result, a2);
  }

  return result;
}

uint64_t non-virtual thunk toAppleBCMWLANCore::getCOLOCATED_NETWORK_SCOPE_ID(uint64_t a1, _DWORD *a2)
{
  if (!a2)
  {
    return 22;
  }

  *a2 = 1;
  result = *(*(a1 + 8) + 5432);
  if (result)
  {
    return OUTLINED_FUNCTION_147(result, a2);
  }

  return result;
}

uint64_t AppleBCMWLANCore::set6G_MODE(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 3758097090;
  }

  OUTLINED_FUNCTION_108();
  result = AppleBCMWLANCore::featureFlagIsBitSet(v3, 93);
  if (result)
  {
    v5 = *(v2 + 4);
    v6 = OUTLINED_FUNCTION_117();
    if (v5 != IO80211BssManager::get6GMode(v6))
    {
      v7 = OUTLINED_FUNCTION_117();
      IO80211BssManager::set6GMode(v7, *(v2 + 4));
      v8 = OUTLINED_FUNCTION_117();
      IO80211BssManager::isAssociated(v8);
    }

    return 0;
  }

  return result;
}

uint64_t AppleBCMWLANCore::powerOn(AppleBCMWLANCore *this)
{
  v227 = 0;
  HIBYTE(v226) = 0;
  IOParseBootArgNumber("wlan.check-wake-type", &v226 + 7, 1);
  v225 = 0xAAAAAAAAAAAAAAAALL;
  AppleBCMWLANUtil::AutoreleasedTimeTrace::AutoreleasedTimeTrace(&v225, 0x40, 0, 1);
  mach_continuous_nanoseconds = AppleBCMWLANUtil::get_mach_continuous_nanoseconds(0, v2);
  AppleBCMWLANUtil::AutoreleasedTimeTrace::recordTraceWithTimestamp(&v225, mach_continuous_nanoseconds, 65553, 38938, "%s: %6u", "IOReturn AppleBCMWLANCore::powerOn()", 38938);
  OUTLINED_FUNCTION_132();
  if ((*(v4 + 1952))(this))
  {
    OUTLINED_FUNCTION_24_1();
    (*(v5 + 1952))(this);
    if (CCLogStream::shouldLog())
    {
      OUTLINED_FUNCTION_24_1();
      (*(v141 + 1952))(this);
      OUTLINED_FUNCTION_170();
      if (!(!v120 & v143))
      {
        v144 = off_1003D0E30[v142];
      }

      OUTLINED_FUNCTION_217();
      CCLogStream::logAlert(v145, "[dk] %s@%d: stateFlags(%lx) userPower(%s), fCaptureWoWPacket[%u] fCaptureBGScanPacket[%u], checkWakeType[%u], fWoWSetup[%u], WiFiWakeType[0x%08x]\n", "powerOn", 38940, v146, v149, v150, v151, v152, v148, v147);
    }
  }

  OUTLINED_FUNCTION_214(*(this + 9));
  OUTLINED_FUNCTION_214(v6);
  v8 = *(v7 + 10376);
  if ((v8 & 0x10000000) != 0)
  {
    OUTLINED_FUNCTION_24_1();
    v15 = (*(v14 + 1952))(this);
    if ((v8 & 4) != 0)
    {
      if (v15)
      {
        OUTLINED_FUNCTION_24_1();
        (*(v19 + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          OUTLINED_FUNCTION_24_1();
          v21 = (*(v20 + 1952))(this);
          CCLogStream::logAlert(v21, "[dk] %s@%d: alreedy powering on\n", "powerOn", 38949);
        }
      }

      goto LABEL_107;
    }

    v8 = 3758097109;
    if (v15)
    {
      OUTLINED_FUNCTION_24_1();
      (*(v16 + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        OUTLINED_FUNCTION_24_1();
        v18 = (*(v17 + 1952))(this);
        CCLogStream::logAlert(v18, "[dk] %s@%d:Conflicting power transitions.\n", "powerOn", 38952);
      }
    }

    goto LABEL_108;
  }

  if (!*(v7 + 5392))
  {
    goto LABEL_107;
  }

  if ((*(v7 + 10376) & 0x8080) == 0x8000)
  {
    v9 = *(v7 + 5388);
    if (v9 <= 4)
    {
      *(v7 + 5388) = v9 + 1;
      OUTLINED_FUNCTION_24_1();
      if ((*(v10 + 1952))(this))
      {
        OUTLINED_FUNCTION_24_1();
        (*(v11 + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          OUTLINED_FUNCTION_24_1();
          v154 = (*(v153 + 1952))(this);
          CCLogStream::logAlert(v154, "[dk] %s@%d:WD Failed detected, trying WD now. No %d\n", "powerOn", 38965, *(*(this + 9) + 5388));
        }
      }

      v12 = OUTLINED_FUNCTION_221();
      v8 = AppleBCMWLANCore::watchdog(v12, v13);
      goto LABEL_108;
    }

    goto LABEL_106;
  }

  atomic_fetch_or((v7 + 10376), 0x10000004u);
  *(*(this + 9) + 6580) = 0;
  OUTLINED_FUNCTION_24_1();
  if ((*(v22 + 1952))(this))
  {
    OUTLINED_FUNCTION_24_1();
    (*(v23 + 1952))(this);
    if (CCLogStream::shouldLog())
    {
      OUTLINED_FUNCTION_24_1();
      (*(v158 + 1952))(this);
      v159 = *(this + 9);
      OUTLINED_FUNCTION_73_0();
      if (!v120 & v143)
      {
        v163 = "UNKNOWN";
      }

      else
      {
        v163 = off_1003D0E30[v162];
      }

      CCLogStream::logInfo(v160, "[dk] %s@%d:Wakeup commander fStateFlags(%lx) userPower(%s)\n", "powerOn", 38977, v161, v163);
    }
  }

  v24 = OUTLINED_FUNCTION_137();
  AppleBCMWLANCommander::wakeup(v24);
  AppleBCMWLANCore::enableWorkQueueSources(this);
  AppleBCMWLANCore::syncChipTimer(this);
  v25 = *(this + 9);
  if ((*(v25 + 10377) & 0x10) != 0 && (v26 = *(v25 + 11304)) != 0 && (v27 = AppleBCMWLANIO80211APSTAInterface::enabled(v26), v25 = *(this + 9), v27))
  {
    AppleBCMWLANIO80211APSTAInterface::hostAPPowerOn(*(v25 + 11304));
    OUTLINED_FUNCTION_253();
  }

  else
  {
    v8 = 0;
  }

  v28 = *(v25 + 11288);
  if (v28 && (*(v25 + 10376) & 0x80) == 0)
  {
    v29 = OUTLINED_FUNCTION_5_0(v28);
    (*(v30 + 1232))(v29);
    v31 = OUTLINED_FUNCTION_15_5(*(*(this + 9) + 11288));
    (*(v32 + 1120))(v31);
  }

  AppleBCMWLANCore::allowLinkup(this);
  AppleBCMWLANCore::resetPorts(this);
  AppleBCMWLANCore::collectScanForwardStats(this);
  v33 = OUTLINED_FUNCTION_261();
  AppleBCMWLANCore::processPowerStatsChangesInSleep(v33, v34);
  AppleBCMWLANCore::unconfigureEventBitMaskForUnAssociatedSleep(this);
  AppleBCMWLANCore::setEcountersEnableStateSync(this, &__block_literal_global_2306, 1);
  if (OUTLINED_FUNCTION_230())
  {
    if ((*(*(this + 9) + 18484) & 1) == 0)
    {
      v35 = AppleBCMWLANCore::dumpEventLogReportedStats(this, 6);
      if (v35)
      {
        v36 = v35;
        OUTLINED_FUNCTION_24_1();
        if ((*(v37 + 1952))(this))
        {
          OUTLINED_FUNCTION_24_1();
          (*(v38 + 1952))(this);
          if (CCLogStream::shouldLog())
          {
            OUTLINED_FUNCTION_24_1();
            v183 = (*(v182 + 1952))(this);
            OUTLINED_FUNCTION_24_1();
            (*(v184 + 112))(this, v36);
            OUTLINED_FUNCTION_216();
            CCLogStream::logAlert(v183, "[dk] %s@%d: Failed to flush log set 6 : %s\n", v210, v211, v212);
          }
        }
      }
    }
  }

  v39 = OUTLINED_FUNCTION_255();
  if (v39)
  {
    v8 = AppleBCMWLANBGScanAdapter::generateAndApplyNewPrivateMACForScans(v39);
    if (v8)
    {
      OUTLINED_FUNCTION_24_1();
      if ((*(v40 + 1952))(this))
      {
        OUTLINED_FUNCTION_24_1();
        (*(v41 + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          OUTLINED_FUNCTION_24_1();
          v179 = (*(v178 + 1952))(this);
          CCLogStream::logAlert(v179, "[dk] %s@%d:Failed to configure Private MAC Address for Scans \n", "powerOn", 39071);
        }
      }
    }
  }

  if (*(*(this + 9) + 8819) == 1)
  {
    OUTLINED_FUNCTION_24_1();
    if ((*(v42 + 1952))(this))
    {
      OUTLINED_FUNCTION_24_1();
      (*(v43 + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        OUTLINED_FUNCTION_24_1();
        v167 = (*(v166 + 1952))(this);
        CCLogStream::logAlert(v167, "[dk] %s@%d: Tearing down WoW mode\n", "powerOn", 39083);
      }
    }

    v44 = *(this + 9);
    if (*(v44 + 776))
    {
      if (IO80211BssManager::isAssociated(*(v44 + 5432)))
      {
        v45 = *(*(this + 9) + 6232);
        if (v45)
        {
          v46 = OUTLINED_FUNCTION_5_0(v45);
          (*(v47 + 56))(v46, 2000);
        }
      }

      AppleBCMWLANCore::configureAssociatedSleepExit(this);
      v44 = *(this + 9);
    }

    *(v44 + 8819) = 0;
  }

  v48 = AppleBCMWLANCore::systemWokenByWiFi(this);
  OUTLINED_FUNCTION_24_1();
  if ((*(v49 + 1952))(this))
  {
    OUTLINED_FUNCTION_24_1();
    (*(v50 + 1952))(this);
    if (CCLogStream::shouldLog())
    {
      OUTLINED_FUNCTION_24_1();
      (*(v155 + 1952))(this);
      OUTLINED_FUNCTION_170();
      if (!(!v120 & v143))
      {
        v157 = off_1003D0E30[v156];
      }

      OUTLINED_FUNCTION_217();
      CCLogStream::logAlert(v170, "[dk] %s@%d: stateFlags(%lx) userPower(%s), fCaptureWoWPacket[%u] fCaptureBGScanPacket[%u], checkWakeType[%u], fWoWSetup[%u], WiFiWakeType[0x%08x] wokenByWiFi[%u]\n", "powerOn", 39111, v171, v174, v175, v176, v177, v173, v172, v48);
    }
  }

  v51 = OUTLINED_FUNCTION_60_0();
  v53 = (*(v52 + 208))(v51);
  v54 = *(this + 9);
  if ((v53 & 1) == 0 && (*(v54 + 10376) & 0x80) == 0)
  {
    if (*(v54 + 8817))
    {
      if (v48)
      {
        goto LABEL_59;
      }
    }

    else if (v48 & *(v54 + 8818))
    {
LABEL_59:
      v222 = 0;
      if (acquireProperty<OSDictionary>(*(v54 + 5392), "IO80211InterfaceWoWWakeUpParams", &v222, 0, "IOService"))
      {
        OUTLINED_FUNCTION_24_1();
        if ((*(v55 + 1952))(this))
        {
          OUTLINED_FUNCTION_24_1();
          (*(v56 + 1952))(this);
          if (CCLogStream::shouldLog())
          {
            OUTLINED_FUNCTION_24_1();
            v186 = (*(v185 + 1952))(this);
            CCLogStream::logAlert(v186, "[dk] %s@%d: APPLE80211_REGKEY_WOW_WAKEUP_PARAMS already present, populate wakeup parameters\n", "powerOn", 39126);
          }
        }

        setPropertyHelper(this, "IO80211InterfaceWoWWakeUpParams", v222);
        if (v222)
        {
          v57 = OUTLINED_FUNCTION_5_0(v222);
          (*(v58 + 16))(v57);
        }
      }

      else
      {
        v59 = *(this + 9);
        if ((*(v59 + 8817) & 1) != 0 || (*(v59 + 8818) & 1) != 0 || HIBYTE(v226) == 1 && *(v59 + 8824))
        {
          MaxCmdRxPayload = AppleBCMWLANCommander::getMaxCmdRxPayload(*(v59 + 5408));
          v61 = IOMallocZeroData();
          if (v61)
          {
            v62 = (MaxCmdRxPayload << 32) | MaxCmdRxPayload;
            if (MaxCmdRxPayload)
            {
              v63 = v61;
            }

            else
            {
              v62 = 0;
              v63 = 0;
            }

            v228 = v63;
            v229 = v62;
            v64 = OUTLINED_FUNCTION_137();
            v65 = AppleBCMWLANCommander::runIOVarGet(v64, "bus:wakeup_data", &kNoTxPayload, &v228, 0);
            AppleBCMWLANCore::handleBusWakeReasonSyncCallBack(this, v65, &v228);
            OUTLINED_FUNCTION_132();
            if ((*(v66 + 1952))(this))
            {
              OUTLINED_FUNCTION_24_1();
              (*(v67 + 1952))(this);
              if (CCLogStream::shouldLog())
              {
                OUTLINED_FUNCTION_24_1();
                v194 = (*(v193 + 1952))(this);
                CCLogStream::logAlert(v194, "[dk] %s@%d: Log adjusted/claimed wake reason\n", "powerOn", 39156);
              }
            }

            AppleBCMWLANCore::systemWokenByWiFi(this);
            OUTLINED_FUNCTION_24_1();
            if ((*(v68 + 1952))(this))
            {
              OUTLINED_FUNCTION_24_1();
              (*(v69 + 1952))(this);
              if (CCLogStream::shouldLog())
              {
                OUTLINED_FUNCTION_24_1();
                v196 = (*(v195 + 1952))(this);
                v197 = *(this + 9);
                if (v197)
                {
                  LODWORD(v197) = *(v197 + 8824);
                }

                CCLogStream::logAlert(v196, "[dk] %s@%d:Queried WiFi bus wakeup data, WiFiWakeType[0x%08x]\n", "powerOn", 39163, v197);
              }
            }

            IOFreeData();
          }
        }

        else
        {
          OUTLINED_FUNCTION_24_1();
          if ((*(v136 + 1952))(this))
          {
            OUTLINED_FUNCTION_24_1();
            (*(v137 + 1952))(this);
            if (CCLogStream::shouldLog())
            {
              OUTLINED_FUNCTION_24_1();
              v139 = (*(v138 + 1952))(this);
              v140 = *(this + 9);
              if (v140)
              {
                LODWORD(v140) = *(v140 + 8824);
              }

              CCLogStream::logAlert(v139, "[dk] %s@%d:Unable to process WiFi wake reason, WiFiWakeType[0x%08x]\n", "powerOn", 39167, v140);
            }
          }
        }
      }

      v54 = *(this + 9);
      goto LABEL_80;
    }

    if (HIBYTE(v226) == 1 && *(v54 + 8824))
    {
      goto LABEL_59;
    }
  }

LABEL_80:
  OUTLINED_FUNCTION_214(v54);
  OUTLINED_FUNCTION_214(v70);
  *(v71 + 8820) = 0;
  AppleBCMWLANCore::setWiFiWakeType(this, 0);
  v72 = OUTLINED_FUNCTION_117();
  if (IO80211BssManager::isAssociated(v72))
  {
    HIDWORD(v224) = -1431655766;
    v228 = this;
    v229 = AppleBCMWLANCore::getRssiAsyncCallback;
    v230 = 0;
    v73 = OUTLINED_FUNCTION_137();
    v222 = (&v224 + 4);
    v223 = 4;
    HIDWORD(v221) = 262148;
    if (AppleBCMWLANCommander::sendIOCtlGet(v73, 127, &v222, &v221 + 2, &v228, 0))
    {
      OUTLINED_FUNCTION_24_1();
      if ((*(v74 + 1952))(this))
      {
        OUTLINED_FUNCTION_24_1();
        (*(v75 + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          OUTLINED_FUNCTION_24_1();
          v181 = (*(v180 + 1952))(this);
          CCLogStream::logAlert(v181, "[dk] %s@%d:%u Error: Unable to get the rssi from firmware using WLC_GET_RSSI\n", "powerOn", 39189, 39189);
        }
      }
    }
  }

  v76 = OUTLINED_FUNCTION_117();
  if (IO80211BssManager::isAssociated(v76))
  {
    AppleBCMWLANCore::enableTxQueues(this);
  }

  v77 = *(this + 9);
  if (*(v77 + 11296) || *(v77 + 29944))
  {
    AppleBCMWLANCore::addEventBit(this);
    v8 = AppleBCMWLANCore::writeEventBitField(this);
    if (v8)
    {
      OUTLINED_FUNCTION_24_1();
      if ((*(v116 + 1952))(this))
      {
        OUTLINED_FUNCTION_24_1();
        (*(v117 + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          OUTLINED_FUNCTION_24_1();
          v188 = (*(v187 + 1952))(this);
          OUTLINED_FUNCTION_24_1();
          v190 = *(v189 + 112);
          v191 = OUTLINED_FUNCTION_157();
          v192(v191);
          OUTLINED_FUNCTION_216();
          CCLogStream::logAlert(v188, "[dk] %s@%d: Failed to set event WLC_E_COUNTRY_CODE_CHANGED : %s\n", v210, v211, v212);
        }
      }
    }

    AppleBCMWLANCore::updateCurrentFWCountryCode(this);
    v118 = *(this + 9);
    if (*(v118 + 10376))
    {
      v119 = *(v118 + 19852);
      v120 = v119 == 4 || v119 == 1;
      if (v120)
      {
        v121 = *(v118 + 11296);
        if (v121)
        {
          v8 = AppleBCMWLANProximityInterface::bringupLink(v121);
          if (v8)
          {
            OUTLINED_FUNCTION_24_1();
            if ((*(v122 + 1952))(this))
            {
              OUTLINED_FUNCTION_24_1();
              (*(v123 + 1952))(this);
              if (CCLogStream::shouldLog())
              {
                OUTLINED_FUNCTION_24_1();
                v199 = (*(v198 + 1952))(this);
                OUTLINED_FUNCTION_24_1();
                v201 = *(v200 + 112);
                v202 = OUTLINED_FUNCTION_157();
                v203(v202);
                OUTLINED_FUNCTION_216();
                CCLogStream::logAlert(v199, "[dk] %s@%d: Failed to resume AWDL link: %s\n", v210, v211, v212);
              }
            }
          }
        }

        v124 = *(*(this + 9) + 29944);
        if (v124)
        {
          v8 = AppleBCMWLANNANInterface::bringupLink(v124);
          if (v8)
          {
            OUTLINED_FUNCTION_24_1();
            if ((*(v125 + 1952))(this))
            {
              OUTLINED_FUNCTION_24_1();
              (*(v126 + 1952))(this);
              if (CCLogStream::shouldLog())
              {
                OUTLINED_FUNCTION_24_1();
                v205 = (*(v204 + 1952))(this);
                OUTLINED_FUNCTION_24_1();
                v207 = *(v206 + 112);
                v208 = OUTLINED_FUNCTION_157();
                v209(v208);
                OUTLINED_FUNCTION_216();
                CCLogStream::logAlert(v205, "[dk] %s@%d: Failed to resume NAN link: %s\n", v210, v211, v212);
              }
            }
          }

          v127 = *(*(this + 9) + 29952);
          if (v127)
          {
            v8 = AppleBCMWLANNANDataInterface::bringupLink(v127);
            if (v8)
            {
              OUTLINED_FUNCTION_24_1();
              if ((*(v128 + 1952))(this))
              {
                OUTLINED_FUNCTION_24_1();
                (*(v129 + 1952))(this);
                if (CCLogStream::shouldLog())
                {
                  OUTLINED_FUNCTION_24_1();
                  v131 = (*(v130 + 1952))(this);
                  OUTLINED_FUNCTION_24_1();
                  v133 = *(v132 + 112);
                  v134 = OUTLINED_FUNCTION_157();
                  v135(v134);
                  OUTLINED_FUNCTION_216();
                  CCLogStream::logAlert(v131, "[dk] %s@%d: Failed to resume NDI link: %s\n", v210, v211, v212);
                }
              }
            }
          }
        }
      }
    }
  }

  bzero(&v228, 0xF8uLL);
  LODWORD(v228) = 3;
  LODWORD(v229) = 1;
  LODWORD(v230) = -528345085;
  v85 = *(this + 9);
  if (v85[1411])
  {
    OUTLINED_FUNCTION_24_1();
    if ((*(v86 + 1952))(this))
    {
      OUTLINED_FUNCTION_24_1();
      (*(v87 + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        OUTLINED_FUNCTION_24_1();
        (*(v164 + 1952))(this);
        OUTLINED_FUNCTION_112();
        CCLogStream::logAlert(v165, "[dk] %s@%d: posting APPLE80211_M_DRIVER_AVAILABLE, available[%u] reason[0x%08x] sub_reason[0x%08x] minor_reason[0x%08x]\n", "powerOn", 39258, v212, v213, v214, v215);
      }
    }

    OUTLINED_FUNCTION_257();
    v78 = OUTLINED_FUNCTION_155(v88, v89, v90, v91, v92, v93, v94, v95, v210, v211, v212, v213, v214, v215, v216, v217, v218, v219, v220, v221, v222, v223, v224, v225, v226, v227, v228);
    v85 = *(this + 9);
  }

  v96 = v85[1412];
  if (v96)
  {
    v78 = OUTLINED_FUNCTION_155(v78, v96, v79, v80, v81, v82, v83, v84, v210, v211, v212, v213, v214, v215, v216, v217, v218, v219, v220, v221, v222, v223, v224, v225, v226, v227, v228);
    v85 = *(this + 9);
  }

  v97 = v85[3743];
  if (v97)
  {
    OUTLINED_FUNCTION_155(v78, v97, v79, v80, v81, v82, v83, v84, v210, v211, v212, v213, v214, v215, v216, v217, v218, v219, v220, v221, v222, v223, v224, v225, v226, v227, v228);
  }

  mach_continuous_time();
  absolutetime_to_nanoseconds();
  v98 = *(this + 9);
  if ((v227 / 0xF4240 - *(v98 + 19792)) >> 4 <= 0x752)
  {
    AppleBCMWLANCore::sendTxPowerCapValueToFirmware(this, *(v98 + 19776), *(v98 + 19772));
    v98 = *(this + 9);
  }

  atomic_fetch_and((v98 + 10376), 0xEFFFFFFF);
  v99 = *(this + 9);
  if ((*(v99 + 10376) & 0x8080) == 0x8000)
  {
    OUTLINED_FUNCTION_24_1();
    if ((*(v100 + 1952))(this))
    {
      OUTLINED_FUNCTION_24_1();
      (*(v101 + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        OUTLINED_FUNCTION_24_1();
        v169 = (*(v168 + 1952))(this);
        CCLogStream::logAlert(v169, "[dk] %s@%d:WD Failed while in powerOn. Save me!\n", "powerOn", 39289);
      }
    }

    v102 = *(this + 9);
    v103 = *(v102 + 5388);
    if (v103 > 4)
    {
LABEL_106:
      AppleBCMWLANCore::watchdogFailed(this);
      goto LABEL_107;
    }

    *(v102 + 5388) = v103 + 1;
    v104 = OUTLINED_FUNCTION_221();
    AppleBCMWLANCore::watchdog(v104, v105);
LABEL_107:
    v8 = 0;
    goto LABEL_108;
  }

  v109 = v99 + 0x4000;
  if (*(v109 + 3468) == 1 && *(v109 + 1914) == 1 && (*(v109 + 1913) & 1) == 0)
  {
    v110 = OUTLINED_FUNCTION_261();
    AppleBCMWLANCore::configureMonitorModeToFW(v110, v111);
  }

  v112 = OUTLINED_FUNCTION_261();
  AppleBCMWLANCore::setSPMICommonConfig(v112, v113);
  v115 = AppleBCMWLANUtil::get_mach_continuous_nanoseconds(0, v114);
  AppleBCMWLANUtil::AutoreleasedTimeTrace::recordTraceWithTimestamp(&v225, (v115 - mach_continuous_nanoseconds), 65553, 39310, "%s: %6u", "IOReturn AppleBCMWLANCore::powerOn()", 39310);
  AppleBCMWLANUtil::AutoreleasedTimeTrace::recordTraceWithTimestamp(&v225, v115, 65553, 39311, "%s: %6u", "IOReturn AppleBCMWLANCore::powerOn()", 39311);
  AppleBCMWLANUtil::AutoreleasedTimeTrace::dumpToLog(&v225, 0, 0);
LABEL_108:
  if (v225)
  {
    v106 = OUTLINED_FUNCTION_5_0(v225);
    (*(v107 + 16))(v106);
  }

  return v8;
}

uint64_t AppleBCMWLANCore::isCachedEventBitFieldSet(AppleBCMWLANCore *this, uint64_t a2)
{
  v3 = *(*(this + 9) + 1184);
  if (!v3)
  {
    return 0;
  }

  IOLockLock(v3);
  v5 = *(this + 9);
  v6 = *(v5 + (a2 >> 3) + 1124);
  OUTLINED_FUNCTION_269(v5);
  return a2;
}

void AppleBCMWLANCore::addEventBit(AppleBCMWLANCore *this)
{
  v3 = *(*(this + 9) + 1184);
  if (v3)
  {
    OUTLINED_FUNCTION_273();
    *(v2 + 1096) |= 1 << (v1 & 7);

    IOLockUnlock(v3);
  }
}

uint64_t AppleBCMWLANCore::isEventBitSet(AppleBCMWLANCore *this)
{
  v3 = *(*(this + 9) + 1184);
  if (!v3)
  {
    return 0;
  }

  OUTLINED_FUNCTION_273();
  v4 = (*(v2 + 1096) >> (v1 & 7)) & 1;
  IOLockUnlock(v3);
  return v4;
}

uint64_t AppleBCMWLANCore::setEventBit(AppleBCMWLANCore *this)
{
  AppleBCMWLANCore::addEventBit(this);

  return AppleBCMWLANCore::writeEventBitField(this);
}

uint64_t AppleBCMWLANCore::setCHANNEL()
{
  OUTLINED_FUNCTION_171();
  v38 = 0;
  if (!v3)
  {
    return (v0 - 6);
  }

  OUTLINED_FUNCTION_101_0();
  v5 = *(v4 + 8);
  if (v5 < 0x100)
  {
    *(v1[9] + 35456) = *v2;
    ChanSpec = AppleBCMWLANCore::getChanSpec(v1, v2 + 4, &v38);
    v39 = v38;
    if (ChanSpec || !v38)
    {
      OUTLINED_FUNCTION_19_1();
      if ((*(v19 + 1952))(v1))
      {
        OUTLINED_FUNCTION_19_1();
        (*(v20 + 1952))(v1);
        if (CCLogStream::shouldLog())
        {
          OUTLINED_FUNCTION_19_1();
          v22 = (*(v21 + 1952))(v1);
          v23 = *(v2 + 12);
          OUTLINED_FUNCTION_19_1();
          (*(v24 + 112))(v1, ChanSpec);
          CCLogStream::logAlert(v22, "[dk] %s@%d: Failed to set channel %d/%s/%s flags[0x%08x] chanspecs 0x%x, failed to convert to chanspec (error=%s)  \n", "setCHANNEL", 35342);
        }
      }
    }

    else
    {
      OUTLINED_FUNCTION_153();
      OUTLINED_FUNCTION_154();
      v0 = AppleBCMWLANCommander::runIOVarSet(v9, v10, v11, v12, v13);
      v14 = (*(*v1 + 1952))(v1);
      if (v0)
      {
        if (v14)
        {
          OUTLINED_FUNCTION_19_1();
          (*(v15 + 1952))(v1);
          if (CCLogStream::shouldLog())
          {
            OUTLINED_FUNCTION_19_1();
            v17 = (*(v16 + 1952))(v1);
            v18 = *(v2 + 12);
            OUTLINED_FUNCTION_19_1();
            v35 = *(v34 + 112);
            v36 = OUTLINED_FUNCTION_130();
            v37(v36);
            CCLogStream::logAlert(v17, "[dk] %s@%d: Failed to set channel %d/%s/%s flags[0x%08x] chanspecs 0x%x, failed to set iovar (error=%s)  \n", "setCHANNEL", 35349);
          }
        }
      }

      else
      {
        if (v14)
        {
          OUTLINED_FUNCTION_19_1();
          (*(v25 + 1952))(v1);
          if (CCLogStream::shouldLog())
          {
            OUTLINED_FUNCTION_19_1();
            v30 = (*(v29 + 1952))(v1);
            v31 = *(v2 + 12);
            v32 = "5GHz";
            if ((v31 & 0x10) == 0)
            {
              v32 = "2GHz";
            }

            if ((v31 & 0x2000) != 0)
            {
              v32 = "6GHz";
            }

            if ((v31 & 0x800) != 0)
            {
              v33 = "160MHz";
            }

            else
            {
              v33 = "40MHz";
              if ((v31 & 4) == 0)
              {
                v33 = "20MHz";
              }

              if ((v31 & 0x400) != 0)
              {
                v33 = "80MHz";
              }
            }

            CCLogStream::logAlert(v30, "[dk] %s@%d: Setting channel %d/%s/%s flags[0x%08x] chanspecs 0x%x \n", "setCHANNEL", 35353, v5, v32, v33, *(v2 + 12), v39);
          }
        }

        return 0;
      }
    }
  }

  else
  {
    OUTLINED_FUNCTION_19_1();
    if ((*(v6 + 1952))(v1))
    {
      OUTLINED_FUNCTION_19_1();
      (*(v7 + 1952))(v1);
      if (CCLogStream::shouldLog())
      {
        OUTLINED_FUNCTION_19_1();
        v28 = (*(v27 + 1952))(v1);
        CCLogStream::logAlert(v28, "[dk] %s@%d: Setting channel Failed to set chanspecs, channel %d is out range \n", "setCHANNEL", 35331, v5);
      }
    }

    return 22;
  }

  return v0;
}

void AppleBCMWLANCore::setHT_CAPABILITY(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    OUTLINED_FUNCTION_150(a2, *(a1 + 72));
  }
}

void non-virtual thunk toAppleBCMWLANCore::setHT_CAPABILITY(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    OUTLINED_FUNCTION_150(a2, *(a1 + 8));
  }
}

uint64_t AppleBCMWLANCore::setVHT_CAPABILITY(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 22;
  }

  v2 = *(a1 + 72);
  if (*(v2 + 1024) >= 128)
  {
    return OUTLINED_FUNCTION_140(a2, v2);
  }

  else
  {
    return 45;
  }
}

uint64_t non-virtual thunk toAppleBCMWLANCore::setVHT_CAPABILITY(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 22;
  }

  v2 = *(a1 + 8);
  if (*(v2 + 1024) >= 128)
  {
    return OUTLINED_FUNCTION_140(a2, v2);
  }

  else
  {
    return 45;
  }
}

uint64_t AppleBCMWLANCore::setCOUNTRY_CODE(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    return 22;
  }

  v5 = *(a1[9] + 780);
  v6 = OUTLINED_FUNCTION_5_0(a1);
  if ((*(v7 + 1952))(v6))
  {
    OUTLINED_FUNCTION_24_1();
    (*(v8 + 1952))(a1);
    if (CCLogStream::shouldLog())
    {
      OUTLINED_FUNCTION_24_1();
      v64 = (*(v63 + 1952))(a1);
      CCLogStream::logAlert(v64, "[dk] %s@%d:WiFiCC : Incoming country code : [%s]. Current host country code : [%s]. Current FW country code : [%s]. RestrictedCountryCode : [%s], DefaultCountryCode : [%s]\n", "setCOUNTRY_CODE", 35976, (a3 + 4), (a1[9] + 6736), (a1[9] + 6744), (a1[9] + 6740), (a1[9] + 6732));
    }
  }

  v9 = 0;
  v10 = (a3 + 4);
  do
  {
    v11 = v10[v9];
    if ((v11 - 97) < 0x1A)
    {
      LOBYTE(v11) = v11 - 32;
    }

    v10[v9++] = v11;
  }

  while (v9 != 3);
  isRestrictedCountry = AppleBCMWLANCore::isRestrictedCountry(a1);
  if (v5 < 0x11)
  {
    goto LABEL_68;
  }

  isAssociatedOn6G = strncmp((a1[9] + 6736), v10, 4uLL);
  if (isAssociatedOn6G)
  {
    OUTLINED_FUNCTION_24_1();
    if ((*(v14 + 1952))(a1))
    {
      OUTLINED_FUNCTION_24_1();
      (*(v15 + 1952))(a1);
      if (CCLogStream::shouldLog())
      {
        OUTLINED_FUNCTION_24_1();
        v102 = (*(v101 + 1952))(a1);
        CCLogStream::logAlert(v102, "[dk] %s@%d:WiFiCC : Country code changed\n", "setCOUNTRY_CODE", 36000);
      }
    }
  }

  v16 = a1[9];
  if (*(v16 + 6756))
  {
    v17 = AppleBCMWLANCore::is6ESupportedInCountry(a1, (v16 + 6736));
    OUTLINED_FUNCTION_24_1();
    if ((*(v18 + 1952))(a1))
    {
      OUTLINED_FUNCTION_24_1();
      (*(v19 + 1952))(a1);
      if (CCLogStream::shouldLog())
      {
        OUTLINED_FUNCTION_24_1();
        v21 = (*(v20 + 1952))(a1);
        CCLogStream::logAlert(v21, "[dk] %s@%d:WiFiCC : currentCountrySupports6E [%hhu] fHostCountryEnabled : [%hhu]. fCurrentHostCountryCode : [%s]\n", "setCOUNTRY_CODE", 36010, v17, *(a1[9] + 6756), (a1[9] + 6736));
      }
    }
  }

  else
  {
    if (!strncmp((v16 + 6736), (v16 + 6732), 4uLL) || !strncmp((v16 + 6736), (v16 + 6740), 4uLL))
    {
      OUTLINED_FUNCTION_24_1();
      if ((*(v22 + 1952))(a1))
      {
        OUTLINED_FUNCTION_24_1();
        (*(v23 + 1952))(a1);
        if (CCLogStream::shouldLog())
        {
          OUTLINED_FUNCTION_24_1();
          v176 = (*(v175 + 1952))(a1);
          CCLogStream::logAlert(v176, "[dk] %s@%d:WiFiCC : Country code currently unavaiialble at host. CurrentHostCountryCode : [%s]. RestricedCountryCode : [%s]. DefaultCountryCode : [%s]\n", "setCOUNTRY_CODE", 36006, (a1[9] + 6736), (a1[9] + 6740), (a1[9] + 6732));
        }
      }
    }

    v17 = 0;
  }

  v24 = 0;
  v25 = *v10;
  if (*v10 && v25 != 88 && v25 != 120)
  {
    v24 = AppleBCMWLANCore::is6ESupportedInCountry(a1, v10);
  }

  OUTLINED_FUNCTION_24_1();
  if (!(*(v26 + 1952))(a1) || (OUTLINED_FUNCTION_24_1(), (*(v27 + 1952))(a1), !CCLogStream::shouldLog()))
  {
    if (isAssociatedOn6G)
    {
      goto LABEL_31;
    }

LABEL_68:
    isAssociatedOn6G = 1;
    v62 = 1;
    goto LABEL_69;
  }

  OUTLINED_FUNCTION_24_1();
  v66 = (*(v65 + 1952))(a1);
  CCLogStream::logAlert(v66, "[dk] %s@%d:WiFiCC : newCountrySupports6E [%hhu], incomingCountryCode : [%s] \n", "setCOUNTRY_CODE", 36018, v24, v10);
  if (!isAssociatedOn6G)
  {
    goto LABEL_68;
  }

LABEL_31:
  if (!(v17 | v24 ^ 1))
  {
    v33 = OUTLINED_FUNCTION_117();
    if ((IO80211BssManager::isAssociatedOn2G(v33) & 1) != 0 || (v34 = OUTLINED_FUNCTION_117(), IO80211BssManager::isAssociatedOn5G(v34)))
    {
      OUTLINED_FUNCTION_24_1();
      if (!(*(v35 + 1952))(a1))
      {
        goto LABEL_65;
      }

      OUTLINED_FUNCTION_24_1();
      (*(v36 + 1952))(a1);
      if (OUTLINED_FUNCTION_222())
      {
        OUTLINED_FUNCTION_24_1();
        v38 = (*(v37 + 1952))(a1);
        isAssociatedOn6G = 1;
        CCLogStream::logAlert(v38, "[dk] %s@%d:WiFiCC : Currently associated on legacy. disconnected Needed : [%hhu] enable6ENeeded : [%hhu]\n", "setCOUNTRY_CODE", 36025, 0, 1);
      }

      goto LABEL_64;
    }

    v48 = OUTLINED_FUNCTION_117();
    isAssociatedOn6G = IO80211BssManager::isAssociatedOn6G(v48);
    OUTLINED_FUNCTION_24_1();
    v50 = (*(v49 + 1952))(a1);
    if (isAssociatedOn6G)
    {
      if (!v50)
      {
        goto LABEL_65;
      }

      OUTLINED_FUNCTION_24_1();
      (*(v51 + 1952))(a1);
      if (OUTLINED_FUNCTION_222())
      {
        OUTLINED_FUNCTION_24_1();
        v53 = (*(v52 + 1952))(a1);
        CCLogStream::logAlert(v53, "[dk] %s@%d:WiFiCC : Currently associated on 6GHz but current country is not supposed to support 6E!\n");
        goto LABEL_65;
      }

      goto LABEL_64;
    }

    if (!v50)
    {
      goto LABEL_65;
    }

    OUTLINED_FUNCTION_24_1();
    (*(v58 + 1952))(a1);
    if (!OUTLINED_FUNCTION_222())
    {
      goto LABEL_64;
    }

    OUTLINED_FUNCTION_24_1();
    v60 = (*(v59 + 1952))(a1);
    isAssociatedOn6G = 1;
    v185 = 0;
    v187 = 1;
    goto LABEL_134;
  }

  if (v24 | v17 ^ 1)
  {
    isAssociatedOn6G = !v17 || !v24;
    OUTLINED_FUNCTION_24_1();
    v29 = (*(v28 + 1952))(a1);
    if (isAssociatedOn6G)
    {
      if (!v29)
      {
LABEL_65:
        v62 = 0;
        isAssociatedOn6G = 1;
        goto LABEL_69;
      }

      OUTLINED_FUNCTION_24_1();
      (*(v30 + 1952))(a1);
      if (OUTLINED_FUNCTION_222())
      {
        OUTLINED_FUNCTION_24_1();
        v32 = (*(v31 + 1952))(a1);
        v185 = v17;
        v187 = v24;
        CCLogStream::logAlert(v32, "[dk] %s@%d:WiFiCC : No action needed. currentCountrySupports6E : [%hhu] and newCountrySupports6E : [%hhu] \n");
        goto LABEL_65;
      }

      goto LABEL_64;
    }

    if (!v29)
    {
      goto LABEL_65;
    }

    OUTLINED_FUNCTION_24_1();
    (*(v45 + 1952))(a1);
    if (!OUTLINED_FUNCTION_222())
    {
      goto LABEL_64;
    }

    OUTLINED_FUNCTION_24_1();
    v47 = (*(v46 + 1952))(a1);
    isAssociatedOn6G = 1;
    v185 = 1;
    v187 = 1;
    CCLogStream::logAlert(v47, "[dk] %s@%d:WiFiCC : Country code change will be attempted. currentCountrySupports6E : [%hhu] and newCountrySupports6E : [%hhu] \n");
LABEL_135:
    v62 = 0;
    goto LABEL_69;
  }

  v39 = OUTLINED_FUNCTION_117();
  if ((IO80211BssManager::isAssociatedOn2G(v39) & 1) != 0 || (v40 = OUTLINED_FUNCTION_117(), IO80211BssManager::isAssociatedOn5G(v40)))
  {
    OUTLINED_FUNCTION_24_1();
    if (!(*(v41 + 1952))(a1))
    {
      goto LABEL_65;
    }

    OUTLINED_FUNCTION_24_1();
    (*(v42 + 1952))(a1);
    if (!OUTLINED_FUNCTION_222())
    {
      goto LABEL_64;
    }

    OUTLINED_FUNCTION_24_1();
    v44 = (*(v43 + 1952))(a1);
    isAssociatedOn6G = 1;
    v185 = 0;
    v187 = 1;
    CCLogStream::logAlert(v44, "[dk] %s@%d:WiFiCC : Currently associated on legacy. disconnected Needed : [%hhu] disable6ENeeded : [%hhu]\n");
    goto LABEL_135;
  }

  v54 = OUTLINED_FUNCTION_117();
  isAssociatedOn6G = IO80211BssManager::isAssociatedOn6G(v54);
  OUTLINED_FUNCTION_24_1();
  v56 = (*(v55 + 1952))(a1);
  if (isAssociatedOn6G)
  {
    if (v56)
    {
      OUTLINED_FUNCTION_24_1();
      (*(v57 + 1952))(a1);
      if (CCLogStream::shouldLog())
      {
        OUTLINED_FUNCTION_24_1();
        v180 = (*(v179 + 1952))(a1);
        CCLogStream::logAlert(v180, "[dk] %s@%d:WiFiCC : Currently associated on 6GHz. disconnected Needed : [%hhu] disable6ENeeded : [%hhu]\n", "setCOUNTRY_CODE", 36043, 1, 1);
      }
    }

    isAssociatedOn6G = 0;
    goto LABEL_64;
  }

  if (!v56)
  {
    goto LABEL_65;
  }

  OUTLINED_FUNCTION_24_1();
  (*(v61 + 1952))(a1);
  if (OUTLINED_FUNCTION_222())
  {
    OUTLINED_FUNCTION_24_1();
    v60 = (*(v181 + 1952))(a1);
    isAssociatedOn6G = 1;
    v185 = 1;
    v187 = 0;
LABEL_134:
    CCLogStream::logAlert(v60, "[dk] %s@%d:WiFiCC : Not associated. No action needed. currentCountrySupports6E : [%hhu] and newCountrySupports6E : [%hhu] \n");
    goto LABEL_135;
  }

LABEL_64:
  v62 = 0;
LABEL_69:
  v67 = *v10;
  if (*v10 && v67 != 120 && v67 != 88)
  {
    OUTLINED_FUNCTION_24_1();
    v79 = (*(v78 + 88))(a1);
    v80 = OUTLINED_FUNCTION_5_0(v79);
    if ((*(v81 + 136))(v80))
    {
      isRestrictedCountry = 3766626305;
      OUTLINED_FUNCTION_24_1();
      if ((*(v82 + 1952))(a1))
      {
        OUTLINED_FUNCTION_24_1();
        (*(v83 + 1952))(a1);
        if (CCLogStream::shouldLog())
        {
          OUTLINED_FUNCTION_24_1();
          v85 = (*(v84 + 1952))(a1);
          CCLogStream::logAlert(v85, "[dk] %s@%d: Setting country code from workQueue thread is not supported. Rejecting.\n");
        }
      }

      return isRestrictedCountry;
    }

    v87 = (a1[9] + 6736);
    v88 = v10[2];
    *v87 = *v10;
    v87[1] = v88;
    v86 = 1;
LABEL_90:
    *(a1[9] + 6756) = v86;
    AppleBCMWLANCore::isRestrictedCountry(a1);
    OUTLINED_FUNCTION_253();
    v90 = OUTLINED_FUNCTION_5_0(*(v89 + 6280));
    (*(v91 + 72))(v90);
    if (isRestrictedCountry != v10)
    {
      OUTLINED_FUNCTION_24_1();
      if ((*(v92 + 1952))(a1) && (OUTLINED_FUNCTION_24_1(), (*(v93 + 1952))(a1), CCLogStream::shouldLog()))
      {
        OUTLINED_FUNCTION_24_1();
        v104 = (*(v103 + 1952))(a1);
        v105 = "Leaving";
        if (v10)
        {
          v105 = "Entering";
        }

        v106 = "Enabling";
        if (v10)
        {
          v106 = "Disabling";
        }

        CCLogStream::logAlert(v104, "[dk] %s@%d: %s restricted regulatory domain. %s autocountry settings\n", "setCOUNTRY_CODE", 36097, v105, v106);
        if (v10)
        {
          goto LABEL_94;
        }
      }

      else if (v10)
      {
LABEL_94:
        v94 = OUTLINED_FUNCTION_117();
        if (IO80211BssManager::isAssociated(v94))
        {
          OUTLINED_FUNCTION_24_1();
          if ((*(v95 + 1952))(a1))
          {
            OUTLINED_FUNCTION_24_1();
            (*(v96 + 1952))(a1);
            if (CCLogStream::shouldLog())
            {
              OUTLINED_FUNCTION_24_1();
              v98 = (*(v97 + 1952))(a1);
              CCLogStream::logAlert(v98, "[dk] %s@%d: Disassociating before performing country settings\n", "setCOUNTRY_CODE", 36143);
            }
          }
        }

        goto LABEL_120;
      }

      v196 = 0xAAAAAAAAAAAAAAAALL;
      v197 = 0xAAAAAAAAAAAAAAAALL;
      v107 = OUTLINED_FUNCTION_117();
      isAssociated = IO80211BssManager::isAssociated(v107);
      if ((isAssociated & 1) == 0)
      {
        v116 = OUTLINED_FUNCTION_189();
        isEnhancedLocaleEnabled = AppleBCMWLANConfigManager::isEnhancedLocaleEnabled(v116);
        if (isEnhancedLocaleEnabled)
        {
          OUTLINED_FUNCTION_124(isEnhancedLocaleEnabled, v118, v119, v120, v121, v122, v123, v124, v182, v183, v185, v187, v189, v190, v191, v192, v193, 1, 0xAAAAAAAAAAAAAAAALL, 0xAAAAAAAAAAAAAAAALL);
          OUTLINED_FUNCTION_154();
          if (AppleBCMWLANCommander::runIOVarSet(v125, v126, v127, v128, v129))
          {
            OUTLINED_FUNCTION_66_0();
            if (!(*(v130 + 1952))(a1))
            {
              return isRestrictedCountry;
            }

            OUTLINED_FUNCTION_24_1();
            (*(v131 + 1952))(a1);
            if (!CCLogStream::shouldLog())
            {
              return isRestrictedCountry;
            }

            OUTLINED_FUNCTION_24_1();
            (*(v132 + 1952))(a1);
            OUTLINED_FUNCTION_63_0();
            v134 = *(v133 + 112);
            v135 = OUTLINED_FUNCTION_106();
            v186 = v194;
            v188 = v136(v135);
            v184 = 36114;
            v137 = "[dk] %s@%d: Error: Unable to enable ccode_pr_2g %d : %s\n";
            goto LABEL_119;
          }
        }

        v138 = OUTLINED_FUNCTION_189();
        isAssociated = AppleBCMWLANConfigManager::isAutoCountryEnabled(v138);
        if (isAssociated)
        {
          OUTLINED_FUNCTION_124(isAssociated, v109, v110, v111, v112, v113, v114, v115, v182, v183, v185, v187, v189, v190, v191, v192, v193, 1, v196, v197);
          OUTLINED_FUNCTION_154();
          isAssociated = AppleBCMWLANCommander::runIOVarSet(v139, v140, v141, v142, v143);
          if (isAssociated)
          {
            OUTLINED_FUNCTION_137();
            OUTLINED_FUNCTION_154();
            isAssociated = AppleBCMWLANCommander::runIOCtlSet(v144, v145, v146, v147, v148);
            if (isAssociated)
            {
              OUTLINED_FUNCTION_66_0();
              if (!(*(v149 + 1952))(a1))
              {
                return isRestrictedCountry;
              }

              OUTLINED_FUNCTION_24_1();
              (*(v150 + 1952))(a1);
              if (!CCLogStream::shouldLog())
              {
                return isRestrictedCountry;
              }

              OUTLINED_FUNCTION_24_1();
              (*(v151 + 1952))(a1);
              OUTLINED_FUNCTION_63_0();
              v153 = *(v152 + 112);
              v154 = OUTLINED_FUNCTION_106();
              v186 = v195;
              v188 = v155(v154);
              v184 = 36126;
              v137 = "[dk] %s@%d: Error: Unable to enable autocountry %d : %s\n";
              goto LABEL_119;
            }
          }
        }
      }

      OUTLINED_FUNCTION_124(isAssociated, v109, v110, v111, v112, v113, v114, v115, v182, v183, v185, v187, v189, v190, v191, v192, v193, 0, v196, v197);
      OUTLINED_FUNCTION_154();
      if (AppleBCMWLANCommander::runIOVarSet(v156, v157, v158, v159, v160))
      {
        OUTLINED_FUNCTION_66_0();
        if (!(*(v161 + 1952))(a1))
        {
          return isRestrictedCountry;
        }

        OUTLINED_FUNCTION_24_1();
        (*(v162 + 1952))(a1);
        if (!CCLogStream::shouldLog())
        {
          return isRestrictedCountry;
        }

        OUTLINED_FUNCTION_24_1();
        (*(v163 + 1952))(a1);
        OUTLINED_FUNCTION_63_0();
        v165 = *(v164 + 112);
        v166 = OUTLINED_FUNCTION_106();
        v184 = 36137;
        v186 = v167(v166);
        v137 = "[dk] %s@%d: iovar set passive_on_restricted command failed: %s\n";
LABEL_119:
        CCLogStream::logAlert(v10, v137, "setCOUNTRY_CODE", v184, v186, v188);
        return isRestrictedCountry;
      }
    }

LABEL_120:
    if (AppleBCMWLANCore::isRestrictedCountry(a1))
    {
      OUTLINED_FUNCTION_24_1();
      return (*(v168 + 544))(a1);
    }

    else
    {
      if (v5 < 0x11)
      {
        v170 = 1;
      }

      else
      {
        v170 = v62;
      }

      if (((isAssociatedOn6G | v170) & 1) == 0)
      {
        v171 = OUTLINED_FUNCTION_117();
        if (IO80211BssManager::isAssociated(v171))
        {
          OUTLINED_FUNCTION_24_1();
          if ((*(v172 + 1952))(a1))
          {
            OUTLINED_FUNCTION_24_1();
            (*(v173 + 1952))(a1);
            if (CCLogStream::shouldLog())
            {
              OUTLINED_FUNCTION_24_1();
              v178 = (*(v177 + 1952))(a1);
              CCLogStream::logAlert(v178, "[dk] %s@%d:WiFiCC : Country code changed. For 4388, Disassociating before performing country settings\n", "setCOUNTRY_CODE", 36163);
            }
          }
        }
      }

      OUTLINED_FUNCTION_24_1();
      return (*(v174 + 552))(a1);
    }
  }

  OUTLINED_FUNCTION_24_1();
  v69 = (*(v68 + 88))(a1);
  v70 = OUTLINED_FUNCTION_5_0(v69);
  if (!(*(v71 + 136))(v70))
  {
    v76 = a1[9];
    if (*v10)
    {
      v77 = v76 + 1683;
    }

    else if (*(v76 + 6740))
    {
      v77 = v76 + 1685;
    }

    else
    {
      v77 = v76 + 1683;
    }

    v86 = 0;
    v76[1684] = *v77;
    goto LABEL_90;
  }

  OUTLINED_FUNCTION_24_1();
  if ((*(v72 + 1952))(a1))
  {
    OUTLINED_FUNCTION_24_1();
    (*(v73 + 1952))(a1);
    if (CCLogStream::shouldLog())
    {
      OUTLINED_FUNCTION_24_1();
      v100 = (*(v99 + 1952))(a1);
      CCLogStream::logAlert(v100, "[dk] %s@%d: Disabling host country code from workQueue thread. Deferring to timer context.\n", "setCOUNTRY_CODE", 36064);
    }
  }

  v74 = *(**(a1[9] + 6280) + 56);

  return v74();
}

uint64_t AppleBCMWLANCore::setBTCOEX_PROFILE_ACTIVE(AppleBCMWLANCore *a1, uint64_t a2)
{
  if (a2)
  {
    AppleBCMWLANCore::getCommander(a1);
    OUTLINED_FUNCTION_154();
    v2 = AppleBCMWLANCommander::runIOVarSet(v5, v6, v7, v8, v9);
    if (v2)
    {
      OUTLINED_FUNCTION_19_1();
      if ((*(v10 + 1952))(a1))
      {
        OUTLINED_FUNCTION_19_1();
        (*(v11 + 1952))(a1);
        if (CCLogStream::shouldLog())
        {
          OUTLINED_FUNCTION_19_1();
          (*(v13 + 1952))(a1);
          OUTLINED_FUNCTION_52_0();
          v15 = *(v14 + 112);
          v16 = OUTLINED_FUNCTION_130();
          v17(v16);
          OUTLINED_FUNCTION_6();
          CCLogStream::logCrit(v3, "[dk] %s@%d:BTC_PROFILE_ACTIVE failed, error %s\n", v18, v19, v20);
        }
      }
    }
  }

  else
  {
    OUTLINED_FUNCTION_171();
  }

  return v2;
}

uint64_t AppleBCMWLANCore::setBTCOEX_2G_CHAIN_DISABLE(uint64_t a1, uint64_t a2)
{
  v2 = 3758097085;
  if (!a2)
  {
    return 3758097090;
  }

  v4 = *(a2 + 4);
  v5 = IOMallocZeroData();
  *v5 = 393217;
  *(v5 + 2) = v4;
  v27[0] = v5;
  v27[1] = 6;
  v6 = OUTLINED_FUNCTION_153();
  AppleBCMWLANCommander::getMaxCmdRxPayload(v6);
  v7 = IOMallocZeroData();
  if (v7)
  {
    v8 = v7;
    v9 = OUTLINED_FUNCTION_153();
    MaxCmdRxPayload = AppleBCMWLANCommander::getMaxCmdRxPayload(v9);
    v11 = OUTLINED_FUNCTION_153();
    v12 = (AppleBCMWLANCommander::getMaxCmdRxPayload(v11) << 32) | MaxCmdRxPayload;
    if (MaxCmdRxPayload)
    {
      v13 = v8;
    }

    else
    {
      v12 = 0;
      v13 = 0;
    }

    v26[0] = v13;
    v26[1] = v12;
    v14 = OUTLINED_FUNCTION_153();
    v2 = AppleBCMWLANCommander::runIOVarSet(v14, "btc_2g_shchain_disable", v27, v26, 0);
    IOFreeData();
    IOFreeData();
    if (v2)
    {
      OUTLINED_FUNCTION_19_1();
      if ((*(v15 + 1952))(a1))
      {
        OUTLINED_FUNCTION_19_1();
        (*(v16 + 1952))(a1);
        if (CCLogStream::shouldLog())
        {
          OUTLINED_FUNCTION_19_1();
          (*(v17 + 1952))(a1);
          OUTLINED_FUNCTION_52_0();
          v19 = *(v18 + 112);
          v20 = OUTLINED_FUNCTION_130();
          v21(v20);
          OUTLINED_FUNCTION_6();
          CCLogStream::logCrit(v5, "[dk] %s@%d:btc_2g_schain_disable failed, error %s\n", v23, v24, v25);
        }
      }
    }
  }

  else
  {
    IOFreeData();
  }

  return v2;
}

uint64_t AppleBCMWLANCore::unconfigureEventBitMaskForUnAssociatedSleep(AppleBCMWLANCore *this)
{
  v4 = OUTLINED_FUNCTION_35_1(this);
  if ((*(v5 + 1952))(v4))
  {
    OUTLINED_FUNCTION_24_1();
    (*(v6 + 1952))(v1);
    if (OUTLINED_FUNCTION_227())
    {
      OUTLINED_FUNCTION_24_1();
      (*(v32 + 1952))(v1);
      OUTLINED_FUNCTION_8_3();
      CCLogStream::logNoticeIf(v33, 0x8000000uLL, "[dk] %s@%d:Enter %s \n", v36, v37, v38);
    }
  }

  if (OUTLINED_FUNCTION_197())
  {
    AppleBCMWLANCore::addEventBit(v1);
  }

  if (AppleBCMWLANCore::featureFlagIsBitSet(v1, 33))
  {
    AppleBCMWLANCore::addEventBit(v1);
  }

  if (OUTLINED_FUNCTION_197() && OUTLINED_FUNCTION_230())
  {
    AppleBCMWLANCore::addEventBit(v1);
  }

  if (AppleBCMWLANCore::featureFlagIsBitSet(v1, 71))
  {
    AppleBCMWLANCore::addEventBit(v1);
  }

  if (AppleBCMWLANCore::featureFlagIsBitSet(v1, 79))
  {
    AppleBCMWLANCore::addEventBit(v1);
  }

  if (AppleBCMWLANCore::featureFlagIsBitSet(v1, 92))
  {
    AppleBCMWLANCore::addEventBit(v1);
  }

  AppleBCMWLANCore::addEventBit(v1);
  if (AppleBCMWLANCore::featureFlagIsBitSet(v1, 97))
  {
    AppleBCMWLANCore::addEventBit(v1);
  }

  if (AppleBCMWLANCore::featureFlagIsBitSet(v1, 97))
  {
    AppleBCMWLANCore::addEventBit(v1);
  }

  if (OUTLINED_FUNCTION_278())
  {
    AppleBCMWLANCore::addEventBit(v1);
  }

  v7 = OUTLINED_FUNCTION_264();
  if (AppleBCMWLANCore::isCachedEventBitFieldSet(v7, v8))
  {
    v9 = OUTLINED_FUNCTION_264();
    AppleBCMWLANCore::addEventBit(v9);
  }

  OUTLINED_FUNCTION_91_0();
  OUTLINED_FUNCTION_177();
  v10 = OUTLINED_FUNCTION_263();
  if (AppleBCMWLANCore::isCachedEventBitFieldSet(v10, v11))
  {
    v12 = OUTLINED_FUNCTION_263();
    AppleBCMWLANCore::addEventBit(v12);
  }

  v13 = OUTLINED_FUNCTION_262();
  if (AppleBCMWLANCore::isCachedEventBitFieldSet(v13, v14))
  {
    v15 = OUTLINED_FUNCTION_262();
    AppleBCMWLANCore::addEventBit(v15);
  }

  v16 = OUTLINED_FUNCTION_260();
  if (AppleBCMWLANCore::isCachedEventBitFieldSet(v16, v17))
  {
    v18 = OUTLINED_FUNCTION_260();
    AppleBCMWLANCore::addEventBit(v18);
  }

  v19 = OUTLINED_FUNCTION_259();
  if (AppleBCMWLANCore::isCachedEventBitFieldSet(v19, v20))
  {
    v21 = OUTLINED_FUNCTION_259();
    AppleBCMWLANCore::addEventBit(v21);
  }

  AppleBCMWLANCore::addEventBit(v1);
  if (OUTLINED_FUNCTION_277())
  {
    AppleBCMWLANCore::addEventBit(v1);
  }

  if (AppleBCMWLANCore::featureFlagIsBitSet(v1, 93))
  {
    AppleBCMWLANCore::addEventBit(v1);
  }

  if (AppleBCMWLANCore::featureFlagIsBitSet(v1, 101))
  {
    AppleBCMWLANCore::addEventBit(v1);
  }

  AppleBCMWLANCore::writeEventBitField(v1);
  OUTLINED_FUNCTION_66_0();
  v23 = (*(v22 + 1952))(v1);
  if (v2)
  {
    if (v23)
    {
      OUTLINED_FUNCTION_24_1();
      (*(v24 + 1952))(v1);
      if (CCLogStream::shouldLog())
      {
        OUTLINED_FUNCTION_24_1();
        (*(v25 + 1952))(v1);
        OUTLINED_FUNCTION_63_0();
        v27 = *(v26 + 112);
        v28 = OUTLINED_FUNCTION_106();
        v29(v28);
        OUTLINED_FUNCTION_250();
        CCLogStream::logAlert(v3, "[dk] %s@%d:Failure to Add WLC_E_CCA_CHAN_QUAL/WLC_E_SCAN_COMPLETE  events from the event mask, %s\n", v36, v37, v38);
      }
    }
  }

  else if (v23)
  {
    OUTLINED_FUNCTION_24_1();
    (*(v30 + 1952))(v1);
    if (OUTLINED_FUNCTION_227())
    {
      OUTLINED_FUNCTION_24_1();
      (*(v34 + 1952))(v1);
      OUTLINED_FUNCTION_8_3();
      CCLogStream::logNoticeIf(v35, 0x8000000uLL, "[dk] %s@%d:Leave %s \n", v36, v37, v38);
    }
  }

  return v2;
}

uint64_t AppleBCMWLANCore::configureEventBitMaskForAssociatedSleep(AppleBCMWLANCore *this)
{
  v4 = OUTLINED_FUNCTION_35_1(this);
  if ((*(v5 + 1952))(v4))
  {
    OUTLINED_FUNCTION_24_1();
    (*(v6 + 1952))(v1);
    if (OUTLINED_FUNCTION_227())
    {
      OUTLINED_FUNCTION_24_1();
      (*(v27 + 1952))(v1);
      OUTLINED_FUNCTION_8_3();
      CCLogStream::logNoticeIf(v28, 0x8000000uLL, "[dk] %s@%d:Enter %s \n", v31, v32, v33);
    }
  }

  if (OUTLINED_FUNCTION_197())
  {
    OUTLINED_FUNCTION_91_0();
    *(v3 + 1118) &= ~0x10u;
    IOLockUnlock(v2);
    OUTLINED_FUNCTION_91_0();
    *(v3 + 1117) &= ~0x10u;
    IOLockUnlock(v2);
  }

  OUTLINED_FUNCTION_91_0();
  *(v3 + 1102) &= ~0x10u;
  IOLockUnlock(v2);
  OUTLINED_FUNCTION_91_0();
  *(v3 + 1117) &= ~8u;
  IOLockUnlock(v2);
  OUTLINED_FUNCTION_91_0();
  *(v3 + 1096) &= ~8u;
  IOLockUnlock(v2);
  OUTLINED_FUNCTION_91_0();
  *(v3 + 1103) &= ~1u;
  IOLockUnlock(v2);
  if (AppleBCMWLANCore::featureFlagIsBitSet(v1, 71))
  {
    OUTLINED_FUNCTION_91_0();
    OUTLINED_FUNCTION_226(*(v3 + 1119) & 0xFE);
  }

  if (AppleBCMWLANCore::featureFlagIsBitSet(v1, 79))
  {
    OUTLINED_FUNCTION_91_0();
    OUTLINED_FUNCTION_226(*(v3 + 1119) & 0xBF);
  }

  if (AppleBCMWLANCore::featureFlagIsBitSet(v1, 92))
  {
    OUTLINED_FUNCTION_91_0();
    *(v3 + 1120) &= ~0x80u;
    IOLockUnlock(v2);
  }

  if (AppleBCMWLANCore::featureFlagIsBitSet(v1, 33))
  {
    OUTLINED_FUNCTION_91_0();
    *(v3 + 1111) &= ~0x10u;
    IOLockUnlock(v2);
  }

  if (OUTLINED_FUNCTION_197() && OUTLINED_FUNCTION_230())
  {
    OUTLINED_FUNCTION_91_0();
    OUTLINED_FUNCTION_226(*(v3 + 1119) & 0xDF);
  }

  OUTLINED_FUNCTION_91_0();
  *(v3 + 1102) &= ~2u;
  IOLockUnlock(v2);
  OUTLINED_FUNCTION_91_0();
  OUTLINED_FUNCTION_272();
  OUTLINED_FUNCTION_91_0();
  *(v3 + 1122) &= ~2u;
  IOLockUnlock(v2);
  OUTLINED_FUNCTION_91_0();
  *(v3 + 1122) &= ~0x10u;
  IOLockUnlock(v2);
  OUTLINED_FUNCTION_91_0();
  OUTLINED_FUNCTION_272();
  if (OUTLINED_FUNCTION_278())
  {
    OUTLINED_FUNCTION_91_0();
    *(v3 + 1121) &= ~8u;
    IOLockUnlock(v2);
  }

  OUTLINED_FUNCTION_91_0();
  *(v3 + 1100) &= ~0x20u;
  IOLockUnlock(v2);
  v7 = OUTLINED_FUNCTION_119();
  v8 = OUTLINED_FUNCTION_15_5(v7);
  v10 = (*(v9 + 368))(v8) - 4377;
  if (v10 <= 0x16 && ((1 << v10) & 0x400C03) != 0)
  {
    OUTLINED_FUNCTION_91_0();
    *(v3 + 1120) &= ~0x20u;
    IOLockUnlock(v2);
  }

  OUTLINED_FUNCTION_91_0();
  *(v3 + 1100) &= ~1u;
  IOLockUnlock(v2);
  OUTLINED_FUNCTION_91_0();
  *(v3 + 1098) &= ~8u;
  IOLockUnlock(v2);
  OUTLINED_FUNCTION_91_0();
  *(v3 + 1097) &= ~2u;
  IOLockUnlock(v2);
  OUTLINED_FUNCTION_91_0();
  *(v3 + 1098) &= ~0x80u;
  IOLockUnlock(v2);
  OUTLINED_FUNCTION_91_0();
  *(v3 + 1114) &= ~0x40u;
  IOLockUnlock(v2);
  OUTLINED_FUNCTION_91_0();
  *(v3 + 1109) &= ~0x20u;
  IOLockUnlock(v2);
  OUTLINED_FUNCTION_91_0();
  *(v3 + 1097) &= ~0x20u;
  IOLockUnlock(v2);
  OUTLINED_FUNCTION_91_0();
  *(v3 + 1097) &= ~0x40u;
  IOLockUnlock(v2);
  OUTLINED_FUNCTION_91_0();
  *(v3 + 1106) &= ~1u;
  IOLockUnlock(v2);
  OUTLINED_FUNCTION_91_0();
  *(v3 + 1115) &= ~1u;
  IOLockUnlock(v2);
  OUTLINED_FUNCTION_91_0();
  *(v3 + 1105) &= ~8u;
  IOLockUnlock(v2);
  OUTLINED_FUNCTION_91_0();
  *(v3 + 1103) &= ~0x10u;
  IOLockUnlock(v2);
  OUTLINED_FUNCTION_91_0();
  *(v3 + 1104) &= ~0x40u;
  IOLockUnlock(v2);
  OUTLINED_FUNCTION_91_0();
  *(v3 + 1102) &= ~0x40u;
  IOLockUnlock(v2);
  OUTLINED_FUNCTION_91_0();
  *(v3 + 1111) &= ~0x40u;
  IOLockUnlock(v2);
  if (OUTLINED_FUNCTION_197())
  {
    OUTLINED_FUNCTION_91_0();
    OUTLINED_FUNCTION_226(*(v3 + 1119) & 0x7F);
  }

  AppleBCMWLANCore::addEventBit(v1);
  if (OUTLINED_FUNCTION_197() && AppleBCMWLANCore::featureFlagIsBitSet(v1, 82))
  {
    OUTLINED_FUNCTION_91_0();
    OUTLINED_FUNCTION_226(*(v3 + 1119) & 0xEF);
  }

  v11 = OUTLINED_FUNCTION_255();
  if (AppleBCMWLANBGScanAdapter::isBGScanCacheRollOverEnabled(v11))
  {
    OUTLINED_FUNCTION_91_0();
    OUTLINED_FUNCTION_177();
  }

  else
  {
    AppleBCMWLANCore::addEventBit(v1);
  }

  v12 = OUTLINED_FUNCTION_60_0();
  v14 = (*(v13 + 368))(v12) - 4357;
  if (v14 <= 0x2A && ((1 << v14) & 0x400C0300001) != 0)
  {
    OUTLINED_FUNCTION_91_0();
    *(v3 + 1118) &= ~0x80u;
    IOLockUnlock(v2);
  }

  OUTLINED_FUNCTION_91_0();
  *(v3 + 1104) &= ~0x20u;
  IOLockUnlock(v2);
  OUTLINED_FUNCTION_91_0();
  OUTLINED_FUNCTION_271();
  if (OUTLINED_FUNCTION_277())
  {
    OUTLINED_FUNCTION_91_0();
    *(v3 + 1121) &= ~1u;
    IOLockUnlock(v2);
  }

  if (AppleBCMWLANCore::featureFlagIsBitSet(v1, 93))
  {
    OUTLINED_FUNCTION_91_0();
    *(v3 + 1121) &= ~0x80u;
    IOLockUnlock(v2);
  }

  if (AppleBCMWLANCore::featureFlagIsBitSet(v1, 101))
  {
    OUTLINED_FUNCTION_91_0();
    OUTLINED_FUNCTION_226(*(v3 + 1119) & 0xF7);
  }

  IOLockLock(*(*(v1 + 9) + 1184));
  v15 = *(v1 + 9);
  v15[72] = *(v15 + 1096);
  *(v15 + 1164) = *(v15 + 1108);
  IOLockUnlock(*(*(v1 + 9) + 1184));
  v16 = AppleBCMWLANCore::writeEventBitField(v1);
  if (v16)
  {
    OUTLINED_FUNCTION_24_1();
    if ((*(v17 + 1952))(v1))
    {
      OUTLINED_FUNCTION_24_1();
      (*(v18 + 1952))(v1);
      if (CCLogStream::shouldLog())
      {
        OUTLINED_FUNCTION_24_1();
        (*(v19 + 1952))(v1);
        OUTLINED_FUNCTION_63_0();
        v21 = *(v20 + 112);
        v22 = OUTLINED_FUNCTION_106();
        v23(v22);
        OUTLINED_FUNCTION_250();
        CCLogStream::logAlert(v3, "[dk] %s@%d:Failure to clear events from the event mask, %s\n", v31, v32, v33);
      }
    }
  }

  else
  {
    if (AppleBCMWLANCore::checkForTCPKAOffloadSupport(v1))
    {
      AppleBCMWLANCore::setExtendedEventBit(v1, 0x97u);
    }

    OUTLINED_FUNCTION_24_1();
    if ((*(v24 + 1952))(v1))
    {
      OUTLINED_FUNCTION_24_1();
      (*(v25 + 1952))(v1);
      if (OUTLINED_FUNCTION_227())
      {
        OUTLINED_FUNCTION_24_1();
        (*(v29 + 1952))(v1);
        OUTLINED_FUNCTION_8_3();
        CCLogStream::logNoticeIf(v30, 0x8000000uLL, "[dk] %s@%d:Leave %s \n", v31, v32, v33);
      }
    }
  }

  return v16;
}

IOLock *AppleBCMWLANCore::unconfigureEventBitMaskForAssociatedSleep(AppleBCMWLANCore *this)
{
  v4 = OUTLINED_FUNCTION_35_1(this);
  if ((*(v5 + 1952))(v4))
  {
    OUTLINED_FUNCTION_24_1();
    (*(v6 + 1952))(v1);
    if (OUTLINED_FUNCTION_227())
    {
      OUTLINED_FUNCTION_24_1();
      (*(v32 + 1952))(v1);
      OUTLINED_FUNCTION_8_3();
      CCLogStream::logNoticeIf(v33, 0x8000000uLL, "[dk] %s@%d:Enter %s \n", v36, v37, v38);
    }
  }

  if (AppleBCMWLANCore::checkForTCPKAOffloadSupport(v1))
  {
    AppleBCMWLANCore::resetExtendedEventBit(v1, 0x97u);
  }

  if (OUTLINED_FUNCTION_197())
  {
    AppleBCMWLANCore::addEventBit(v1);
  }

  AppleBCMWLANCore::addEventBit(v1);
  AppleBCMWLANCore::addEventBit(v1);
  if (AppleBCMWLANCore::featureFlagIsBitSet(v1, 71))
  {
    AppleBCMWLANCore::addEventBit(v1);
  }

  if (AppleBCMWLANCore::featureFlagIsBitSet(v1, 79))
  {
    AppleBCMWLANCore::addEventBit(v1);
  }

  if (AppleBCMWLANCore::featureFlagIsBitSet(v1, 92))
  {
    AppleBCMWLANCore::addEventBit(v1);
  }

  if (AppleBCMWLANCore::featureFlagIsBitSet(v1, 33))
  {
    AppleBCMWLANCore::addEventBit(v1);
  }

  if (OUTLINED_FUNCTION_197() && OUTLINED_FUNCTION_230())
  {
    AppleBCMWLANCore::addEventBit(v1);
  }

  AppleBCMWLANCore::addEventBit(v1);
  OUTLINED_FUNCTION_91_0();
  *(v3 + 1106) &= ~2u;
  IOLockUnlock(v2);
  OUTLINED_FUNCTION_91_0();
  OUTLINED_FUNCTION_177();
  AppleBCMWLANCore::addEventBit(v1);
  AppleBCMWLANCore::addEventBit(v1);
  AppleBCMWLANCore::addEventBit(v1);
  AppleBCMWLANCore::addEventBit(v1);
  AppleBCMWLANCore::addEventBit(v1);
  if (AppleBCMWLANCore::featureFlagIsBitSet(v1, 97))
  {
    AppleBCMWLANCore::addEventBit(v1);
  }

  if (AppleBCMWLANCore::featureFlagIsBitSet(v1, 119))
  {
    AppleBCMWLANCore::addEventBit(v1);
  }

  if (OUTLINED_FUNCTION_278())
  {
    AppleBCMWLANCore::addEventBit(v1);
  }

  if (AppleBCMWLANCore::featureFlagIsBitSet(v1, 46))
  {
    AppleBCMWLANCore::addEventBit(v1);
  }

  v7 = OUTLINED_FUNCTION_263();
  if (AppleBCMWLANCore::isCachedEventBitFieldSet(v7, v8))
  {
    v9 = OUTLINED_FUNCTION_263();
    AppleBCMWLANCore::addEventBit(v9);
  }

  v10 = OUTLINED_FUNCTION_262();
  if (AppleBCMWLANCore::isCachedEventBitFieldSet(v10, v11))
  {
    v12 = OUTLINED_FUNCTION_262();
    AppleBCMWLANCore::addEventBit(v12);
  }

  v13 = OUTLINED_FUNCTION_264();
  if (AppleBCMWLANCore::isCachedEventBitFieldSet(v13, v14))
  {
    v15 = OUTLINED_FUNCTION_264();
    AppleBCMWLANCore::addEventBit(v15);
  }

  if (AppleBCMWLANCore::isCachedEventBitFieldSet(v1, 37))
  {
    AppleBCMWLANCore::addEventBit(v1);
  }

  if (AppleBCMWLANCore::isCachedEventBitFieldSet(v1, 197))
  {
    AppleBCMWLANCore::addEventBit(v1);
  }

  if (AppleBCMWLANCore::isCachedEventBitFieldSet(v1, 19))
  {
    AppleBCMWLANCore::addEventBit(v1);
  }

  if (AppleBCMWLANCore::isCachedEventBitFieldSet(v1, 32))
  {
    AppleBCMWLANCore::addEventBit(v1);
  }

  if (AppleBCMWLANCore::isCachedEventBitFieldSet(v1, 9))
  {
    AppleBCMWLANCore::addEventBit(v1);
  }

  if (AppleBCMWLANCore::isCachedEventBitFieldSet(v1, 49))
  {
    AppleBCMWLANCore::addEventBit(v1);
  }

  v16 = OUTLINED_FUNCTION_260();
  if (AppleBCMWLANCore::isCachedEventBitFieldSet(v16, v17))
  {
    v18 = OUTLINED_FUNCTION_260();
    AppleBCMWLANCore::addEventBit(v18);
  }

  v19 = OUTLINED_FUNCTION_259();
  if (AppleBCMWLANCore::isCachedEventBitFieldSet(v19, v20))
  {
    v21 = OUTLINED_FUNCTION_259();
    AppleBCMWLANCore::addEventBit(v21);
  }

  if (AppleBCMWLANCore::isCachedEventBitFieldSet(v1, 150))
  {
    AppleBCMWLANCore::addEventBit(v1);
  }

  if (AppleBCMWLANCore::isCachedEventBitFieldSet(v1, 109))
  {
    AppleBCMWLANCore::addEventBit(v1);
  }

  if (AppleBCMWLANCore::isCachedEventBitFieldSet(v1, 183))
  {
    AppleBCMWLANCore::addEventBit(v1);
  }

  if (OUTLINED_FUNCTION_197() && AppleBCMWLANCore::featureFlagIsBitSet(v1, 82))
  {
    AppleBCMWLANCore::addEventBit(v1);
  }

  if (OUTLINED_FUNCTION_197())
  {
    AppleBCMWLANCore::addEventBit(v1);
  }

  AppleBCMWLANCore::addEventBit(v1);
  OUTLINED_FUNCTION_91_0();
  OUTLINED_FUNCTION_271();
  if (OUTLINED_FUNCTION_277())
  {
    AppleBCMWLANCore::addEventBit(v1);
  }

  if (AppleBCMWLANCore::featureFlagIsBitSet(v1, 93))
  {
    AppleBCMWLANCore::addEventBit(v1);
  }

  if (AppleBCMWLANCore::featureFlagIsBitSet(v1, 101))
  {
    AppleBCMWLANCore::addEventBit(v1);
  }

  AppleBCMWLANCore::writeEventBitField(v1);
  OUTLINED_FUNCTION_66_0();
  v23 = (*(v22 + 1952))(v1);
  if (v2)
  {
    if (v23)
    {
      OUTLINED_FUNCTION_24_1();
      (*(v24 + 1952))(v1);
      if (CCLogStream::shouldLog())
      {
        OUTLINED_FUNCTION_24_1();
        (*(v25 + 1952))(v1);
        OUTLINED_FUNCTION_63_0();
        v27 = *(v26 + 112);
        v28 = OUTLINED_FUNCTION_106();
        v29(v28);
        OUTLINED_FUNCTION_250();
        CCLogStream::logAlert(v3, "[dk] %s@%d:Failure to clear events from the event mask, %s\n", v36, v37, v38);
      }
    }
  }

  else if (v23)
  {
    OUTLINED_FUNCTION_24_1();
    (*(v30 + 1952))(v1);
    if (OUTLINED_FUNCTION_227())
    {
      OUTLINED_FUNCTION_24_1();
      (*(v34 + 1952))(v1);
      OUTLINED_FUNCTION_8_3();
      CCLogStream::logNoticeIf(v35, 0x8000000uLL, "[dk] %s@%d:Leave %s \n", v36, v37, v38);
    }
  }

  return v2;
}

uint64_t AppleBCMWLANCore::getBTCOEX_PROFILE(AppleBCMWLANCore *a1, uint64_t a2)
{
  v2 = 3758097090;
  if (!a2)
  {
    return 3758097090;
  }

  Commander = AppleBCMWLANCore::getCommander(a1);
  AppleBCMWLANCommander::getMaxCmdRxPayload(Commander);
  v6 = IOMallocZeroData();
  v7 = OUTLINED_FUNCTION_158();
  MaxCmdRxPayload = AppleBCMWLANCommander::getMaxCmdRxPayload(v7);
  v9 = OUTLINED_FUNCTION_158();
  v10 = AppleBCMWLANCommander::getMaxCmdRxPayload(v9);
  if (MaxCmdRxPayload)
  {
    v11 = v6;
  }

  else
  {
    v11 = 0;
  }

  if (MaxCmdRxPayload)
  {
    v12 = v6 == 0;
  }

  else
  {
    v12 = 1;
  }

  v13 = (v10 << 32) | MaxCmdRxPayload;
  if (v12)
  {
    v13 = 0;
  }

  v42[0] = v11;
  v42[1] = v13;
  v41 = *(a2 + 4);
  v40[0] = &v41;
  v40[1] = 4;
  v14 = OUTLINED_FUNCTION_158();
  v15 = AppleBCMWLANCommander::runIOVarGet(v14, "btc_profile", v40, v42, 0);
  OUTLINED_FUNCTION_151();
  if (v12 || v16 == 0)
  {
    v18 = *v6;
    switch(v18)
    {
      case 3:
        OUTLINED_FUNCTION_89_0();
        v30 = *(v29 + 936);
        v31 = OUTLINED_FUNCTION_203();
        v32(v31);
        break;
      case 2:
        OUTLINED_FUNCTION_89_0();
        v26 = *(v25 + 928);
        v27 = OUTLINED_FUNCTION_203();
        v28(v27);
        break;
      case 1:
        OUTLINED_FUNCTION_89_0();
        v20 = *(v19 + 920);
        v21 = OUTLINED_FUNCTION_203();
        v22(v21);
        break;
      default:
LABEL_28:
        v15 = v2;
LABEL_29:
        OUTLINED_FUNCTION_130();
        IOFreeData();
        return v15;
    }

    v2 = v15;
    goto LABEL_28;
  }

  OUTLINED_FUNCTION_89_0();
  if ((*(v23 + 1952))(a1))
  {
    OUTLINED_FUNCTION_89_0();
    (*(v24 + 1952))(a1);
    if (CCLogStream::shouldLog())
    {
      OUTLINED_FUNCTION_89_0();
      v35 = (*(v34 + 1952))(a1);
      OUTLINED_FUNCTION_89_0();
      (*(v36 + 112))(a1, v15);
      OUTLINED_FUNCTION_6();
      CCLogStream::logCrit(v35, "[dk] %s@%d:btc_profile failed, error %s\n", v37, v38, v39);
    }
  }

  if (v6)
  {
    goto LABEL_29;
  }

  return v15;
}

uint64_t AppleBCMWLANCore::getBTCOEX_PROFILE_ACTIVE(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    OUTLINED_FUNCTION_101_0();
    v6 = OUTLINED_FUNCTION_54_0(v5);
    OUTLINED_FUNCTION_202(v6, "btc_profile_active", &kNoTxPayload, v7, v8, v9, v10);
    OUTLINED_FUNCTION_75_0();
    v12 = v12 || v11 == 0;
    if (v12)
    {
      *(v4 + 1) = 0;
    }

    else
    {
      OUTLINED_FUNCTION_19_1();
      if ((*(v13 + 1952))(v3))
      {
        OUTLINED_FUNCTION_19_1();
        (*(v14 + 1952))(v3);
        if (CCLogStream::shouldLog())
        {
          OUTLINED_FUNCTION_19_1();
          (*(v16 + 1952))(v3);
          OUTLINED_FUNCTION_52_0();
          v18 = *(v17 + 112);
          v19 = OUTLINED_FUNCTION_130();
          v20(v19);
          OUTLINED_FUNCTION_6();
          CCLogStream::logCrit(v4, "[dk] %s@%d:btc_profile_active failed, error %s\n", v21, v22, v23);
        }
      }
    }
  }

  else
  {
    OUTLINED_FUNCTION_171();
  }

  return v2;
}

uint64_t AppleBCMWLANCore::getMCS(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    OUTLINED_FUNCTION_101_0();
    v6 = OUTLINED_FUNCTION_54_0(v5);
    OUTLINED_FUNCTION_202(v6, "nrate", &kNoTxPayload, v7, v8, v9, v10);
    OUTLINED_FUNCTION_75_0();
    v12 = v12 || v11 == 0;
    if (!v12)
    {
      OUTLINED_FUNCTION_19_1();
      if ((*(v13 + 1952))(v3))
      {
        OUTLINED_FUNCTION_19_1();
        (*(v14 + 1952))(v3);
        if (CCLogStream::shouldLog())
        {
          OUTLINED_FUNCTION_19_1();
          (*(v15 + 1952))(v3);
          OUTLINED_FUNCTION_52_0();
          v17 = *(v16 + 112);
          v18 = OUTLINED_FUNCTION_130();
          v19(v18);
          OUTLINED_FUNCTION_6();
          CCLogStream::logCrit(v4, "[dk] %s@%d:nrate failed, error %s\n", v21, v22, v23);
        }
      }
    }
  }

  else
  {
    OUTLINED_FUNCTION_171();
  }

  return v2;
}

uint64_t AppleBCMWLANCore::getMCS_VHT(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    OUTLINED_FUNCTION_101_0();
    v6 = OUTLINED_FUNCTION_54_0(v5);
    OUTLINED_FUNCTION_202(v6, "nrate", &kNoTxPayload, v7, v8, v9, v10);
    OUTLINED_FUNCTION_75_0();
    v12 = v12 || v11 == 0;
    if (!v12)
    {
      OUTLINED_FUNCTION_19_1();
      if ((*(v13 + 1952))(v3))
      {
        OUTLINED_FUNCTION_19_1();
        (*(v14 + 1952))(v3);
        if (CCLogStream::shouldLog())
        {
          OUTLINED_FUNCTION_19_1();
          (*(v15 + 1952))(v3);
          OUTLINED_FUNCTION_52_0();
          v17 = *(v16 + 112);
          v18 = OUTLINED_FUNCTION_130();
          v19(v18);
          OUTLINED_FUNCTION_6();
          CCLogStream::logCrit(v4, "[dk] %s@%d:nrate failed, error %s\n", v21, v22, v23);
        }
      }
    }
  }

  else
  {
    OUTLINED_FUNCTION_171();
  }

  return v2;
}

uint64_t AppleBCMWLANCore::getNSS(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    OUTLINED_FUNCTION_101_0();
    v6 = OUTLINED_FUNCTION_54_0(v5);
    OUTLINED_FUNCTION_202(v6, "nrate", &kNoTxPayload, v7, v8, v9, v10);
    OUTLINED_FUNCTION_75_0();
    v12 = v12 || v11 == 0;
    if (v12)
    {
      *(v4 + 1) = 0;
      OUTLINED_FUNCTION_19_1();
      if ((*(v20 + 1952))(v3))
      {
        OUTLINED_FUNCTION_19_1();
        (*(v21 + 1952))(v3);
        if (CCLogStream::shouldLog())
        {
          OUTLINED_FUNCTION_19_1();
          v24 = (*(v23 + 1952))(v3);
          CCLogStream::logAlert(v24, "[dk] %s@%d: Zero NSS streams, rspec[0x%08x]\n", "getNSS", 47187, 0);
        }
      }
    }

    else
    {
      OUTLINED_FUNCTION_19_1();
      if ((*(v13 + 1952))(v3))
      {
        OUTLINED_FUNCTION_19_1();
        (*(v14 + 1952))(v3);
        if (CCLogStream::shouldLog())
        {
          OUTLINED_FUNCTION_19_1();
          (*(v15 + 1952))(v3);
          OUTLINED_FUNCTION_52_0();
          v17 = *(v16 + 112);
          v18 = OUTLINED_FUNCTION_130();
          v19(v18);
          OUTLINED_FUNCTION_6();
          CCLogStream::logCrit(v4, "[dk] %s@%d:nrate failed, error %s\n", v25, v26, v27);
        }
      }
    }
  }

  else
  {
    OUTLINED_FUNCTION_171();
  }

  return v2;
}

uint64_t AppleBCMWLANCore::getRADIO_INFO(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return OUTLINED_FUNCTION_191(a1, a2);
  }

  else
  {
    return 3758097090;
  }
}

uint64_t non-virtual thunk toAppleBCMWLANCore::getRADIO_INFO(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return OUTLINED_FUNCTION_191(a1, a2);
  }

  else
  {
    return 3758097090;
  }
}

uint64_t AppleBCMWLANCore::getMAX_NSS_FOR_AP(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    OUTLINED_FUNCTION_101_0();
    v6 = OUTLINED_FUNCTION_54_0(v5);
    OUTLINED_FUNCTION_202(v6, "btc_nss", &kNoTxPayload, v7, v8, v9, v10);
    OUTLINED_FUNCTION_75_0();
    v12 = v12 || v11 == 0;
    if (v12)
    {
      *(v4 + 1) = 0;
    }

    else
    {
      OUTLINED_FUNCTION_19_1();
      if ((*(v13 + 1952))(v3))
      {
        OUTLINED_FUNCTION_19_1();
        (*(v14 + 1952))(v3);
        if (CCLogStream::shouldLog())
        {
          OUTLINED_FUNCTION_19_1();
          (*(v16 + 1952))(v3);
          OUTLINED_FUNCTION_52_0();
          v18 = *(v17 + 112);
          v19 = OUTLINED_FUNCTION_130();
          v20(v19);
          OUTLINED_FUNCTION_6();
          CCLogStream::logCrit(v4, "[dk] %s@%d:btc_nss failed, error %s\n", v21, v22, v23);
        }
      }
    }
  }

  else
  {
    OUTLINED_FUNCTION_171();
  }

  return v2;
}

void AppleBCMWLANCore::getPowerStatsPerSliceIndex()
{
  OUTLINED_FUNCTION_279();
  v194 = v0;
  v195 = v1;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  if (AppleBCMWLANCore::featureFlagIsBitSet(v6, 46))
  {
    v8 = "wlc:pwrstats";
  }

  else
  {
    v8 = "pwrstats";
  }

  IsBitSet = AppleBCMWLANCore::featureFlagIsBitSet(v7, 76);
  if (v3 == 2)
  {
    if (IsBitSet)
    {
      OUTLINED_FUNCTION_205();
      if (!v10)
      {
        v8 = "sc:pwrstats";
      }
    }
  }

  if (v5)
  {
    if ((AppleBCMWLANCore::featureFlagIsBitSet(v7, 24) & 1) == 0)
    {
      HIDWORD(v188) = 0;
      v189 = v3;
      v11 = OUTLINED_FUNCTION_158();
      AppleBCMWLANCommander::getMaxCmdRxPayload(v11);
      v12 = IOMallocZeroData();
      if (v12)
      {
        v13 = v12;
        v14 = AppleBCMWLANCore::featureFlagIsBitSet(v7, 76);
        if (v3 == 2)
        {
          if (v14)
          {
            OUTLINED_FUNCTION_205();
            if ((v15 & 1) == 0)
            {
              LODWORD(v189) = 0;
            }
          }
        }

        v16 = AppleBCMWLANCore::featureFlagIsBitSet(v7, 46);
        v17 = 4;
        if (v16)
        {
          v17 = 8;
        }

        v18 = (&v188 + 4);
        if (v16)
        {
          v18 = &v189;
        }

        v186 = v18;
        v187 = v17;
        v19 = OUTLINED_FUNCTION_158();
        MaxCmdRxPayload = AppleBCMWLANCommander::getMaxCmdRxPayload(v19);
        v21 = MaxCmdRxPayload + ~strlen(v8);
        v22 = v21 | (v21 << 32) | 0x40000;
        if (v21)
        {
          v23 = v13;
        }

        else
        {
          v22 = 0;
          v23 = 0;
        }

        v184 = v23;
        v185 = v22;
        v24 = OUTLINED_FUNCTION_158();
        v25 = AppleBCMWLANCommander::runIOVarGet(v24, v8, &v186, &v184, 0);
        if (v25 == -469794537)
        {
          goto LABEL_25;
        }

        v26 = v25;
        if (v25)
        {
          OUTLINED_FUNCTION_89_0();
          if ((*(v27 + 1952))(v7))
          {
            OUTLINED_FUNCTION_89_0();
            (*(v28 + 1952))(v7);
            if (CCLogStream::shouldLog())
            {
              OUTLINED_FUNCTION_89_0();
              (*(v118 + 1952))(v7);
              OUTLINED_FUNCTION_59_0();
              v120 = (*(v119 + 112))(v7, v26);
              CCLogStream::logInfo(v3, "[dk] %s@%d:pwrstats failed, error %s\n", "getPowerStatsPerSliceIndex", 47656, v120);
            }
          }

          goto LABEL_30;
        }

        if (*v13 <= 1u)
        {
LABEL_25:
          AppleBCMWLANCore::featureFlagSetBit(v7, 24);
LABEL_30:
          OUTLINED_FUNCTION_130();
          IOFreeData();
          goto LABEL_31;
        }

        v29 = v13[1];
        if (v21 < v29)
        {
          v29 = v21;
        }

        v179 = v29;
        if (v29 < 9)
        {
LABEL_111:
          OUTLINED_FUNCTION_130();
          IOFreeData();
          goto LABEL_31;
        }

        v171 = v193;
        v175 = v5 + 308;
        v159 = v5 + 384;
        v163 = v5 + 388;
        v151 = v5 + 400;
        v155 = v5 + 396;
        v30 = 4;
        v31 = 4;
        while (1)
        {
          v32 = (v13 + v31);
          v33 = *(v13 + v31 + 2);
          if (!*(v13 + v31 + 2))
          {
            goto LABEL_111;
          }

          v34 = *v32;
          switch(*v32)
          {
            case 0:
              OUTLINED_FUNCTION_240();
              if (!v47)
              {
                v110 = v33;
              }

              OUTLINED_FUNCTION_115(v110, v123, v127, v131, v135, v139, v143, v147, v151, v155, v159, v163, v167, v171, v175, v179, v183, v184, v185, v186, v187, v188, v189, __dst[0]);
              v111 = __dst[2];
              *(v5 + 48) += __dst[1];
              *(v5 + 56) += v111;
              if (AppleBCMWLANCore::is4387C2Up(v7))
              {
                AppleBCMWLANLQM::updateInfraMuticastBroadcastDuration(*(*(v7 + 9) + 5608), v5);
              }

              goto LABEL_103;
            case 1:
              memset(&__dst[4], 0, 84);
              if (v33 >= 0x60)
              {
                v35 = 96;
              }

              else
              {
                v35 = v33;
              }

              *__dst = 0uLL;
              v36 = memcpy(__dst, v13 + v31, (v35 + 4));
              *&v44 = OUTLINED_FUNCTION_243(*(v5 + 76), v36, v37, v38, v39, v40, v41, v42, v43, v123, v127, v131, v135, v139, v143, v147, v151, v155, v159, v163, v167, v171, v175, v179, v183, v184, v185, v186, v187, v188, v189, *__dst, *&__dst[2], __dst[4]);
              *(v5 + 76) = v44;
              *(v5 + 92) = vaddq_s32(*&__dst[5], *(v5 + 92));
              OUTLINED_FUNCTION_242(*&__dst[9], *&__dst[23]);
              goto LABEL_103;
            case 3:
              bzero(__dst, 0x1A5uLL);
              if (v33 >= 0x1A1)
              {
                v48 = 417;
              }

              else
              {
                v48 = v33;
              }

              OUTLINED_FUNCTION_115(v48, v123, v127, v131, v135, v139, v143, v147, v151, v155, v159, v163, v167, v171, v175, v179, v183, v184, v185, v186, v187, v188, v189, __dst[0]);
              v49.i64[0] = __PAIR64__(__dst[4], __dst[1]);
              v49.i64[1] = *&__dst[5];
              *v5 = vaddq_s32(v49, *v5);
              *(v5 + 16) = vrev64_s32(vadd_s32(*&__dst[8], *(v5 + 20)));
              *(v5 + 28) = vadd_s32(*v171, *(v5 + 28));
              *(v5 + 36) += v171[1].i32[0];
              goto LABEL_103;
            case 4:
              OUTLINED_FUNCTION_240();
              if (!v47)
              {
                v51 = v33;
              }

              OUTLINED_FUNCTION_115(v51, v123, v127, v131, v135, v139, v143, v147, v151, v155, v159, v163, v167, v171, v175, v179, v183, v184, v185, v186, v187, v188, v189, __dst[0]);
              *(v5 + 40) = vadd_s32(*&__dst[1], *(v5 + 40));
              goto LABEL_103;
            case 5:
              memset(__dst, 0, 20);
              if (v33 >= 0x10)
              {
                v52 = 16;
              }

              else
              {
                v52 = v33;
              }

              v53 = OUTLINED_FUNCTION_115(v52, v123, v127, v131, v135, v139, v143, v147, v151, v155, v159, v163, v167, v171, v175, v179, v183, v184, v185, v186, v187, v188, v189, __dst[0]);
              *&v61 = OUTLINED_FUNCTION_243(*(v5 + 224), v53, v54, v55, v56, v57, v58, v59, v60, v124, v128, v132, v136, v140, v144, v148, v152, v156, v160, v164, v168, v172, v176, v180, v183, v184, v185, v186, v187, v188, v189, *__dst, *&__dst[2], __dst[4]);
              *(v5 + 224) = v61;
              goto LABEL_103;
            case 6:
              bzero(__dst, 0x84uLL);
              if (v33 >= 0x80)
              {
                v78 = 128;
              }

              else
              {
                v78 = v33;
              }

              OUTLINED_FUNCTION_115(v78, v123, v127, v131, v135, v139, v143, v147, v151, v155, v159, v163, v167, v171, v175, v179, v183, v184, v185, v186, v187, v188, v189, __dst[0]);
              v79 = *(*(v7 + 9) + 5504);
              if (v79)
              {
                AppleBCMWLANIOReportingCore::report(v79, __dst);
              }

              v80 = *&__dst[5];
              *(v5 + 240) = *&__dst[1];
              *(v5 + 256) = v80;
              v81 = *&__dst[13];
              *(v5 + 272) = *&__dst[9];
              *(v5 + 288) = v81;
              *(v5 + 304) = __dst[17];
              *v175 = *&__dst[27];
              *(v175 + 16) = v191;
              goto LABEL_103;
            case 7:
              memset(__dst, 0, 64);
              if (v33 >= 0x3C)
              {
                v67 = 60;
              }

              else
              {
                v67 = v33;
              }

              OUTLINED_FUNCTION_115(v67, v123, v127, v131, v135, v139, v143, v147, v151, v155, v159, v163, &__dst[12], v171, v175, v179, v183, v184, v185, v186, v187, v188, v189, __dst[0]);
              v68.i64[0] = __PAIR64__(__dst[4], __dst[1]);
              v69.i64[0] = *&__dst[7];
              v68.i64[1] = *&__dst[5];
              v69.i32[2] = __dst[9];
              v69.i32[3] = *v167;
              v70 = vaddq_s32(v69, *(v5 + 16));
              *v5 = vaddq_s32(v68, *v5);
              *(v5 + 16) = v70;
              *(v5 + 32) = vadd_s32(*&__dst[14], *(v5 + 32));
              v71 = AppleBCMWLANCore::featureFlagIsBitSet(v7, 76);
              if (v3 == 2)
              {
                if (v71)
                {
                  OUTLINED_FUNCTION_205();
                  if ((v72 & 1) == 0)
                  {
                    *(v5 + 472) = *&__dst[4];
                  }
                }
              }

              goto LABEL_103;
            case 9:
              memset(__dst, 0, 48);
              if (v33 >= 0x2C)
              {
                v82 = 44;
              }

              else
              {
                v82 = v33;
              }

              v83 = OUTLINED_FUNCTION_115(v82, v123, v127, v131, v135, v139, v143, v147, v151, v155, v159, v163, v167, v171, v175, v179, v183, v184, v185, v186, v187, v188, v189, __dst[0]);
              *&v91 = OUTLINED_FUNCTION_243(*(v177 + 24), v83, v84, v85, v86, v87, v88, v89, v90, v125, v129, v133, v137, v141, v145, v149, v153, v157, v161, v165, v169, v173, v177, v181, v183, v184, v185, v186, v187, v188, v189, *__dst, *&__dst[2], __dst[4]);
              *(v92 + 24) = v91;
              *(v92 + 40) = vadd_s32(*&__dst[5], *(v92 + 40));
              *(v5 + 356) += __dst[7];
              if (AppleBCMWLANCore::isOCLEnabled(v7))
              {
                *(v5 + 360) = vadd_s32(*&__dst[8], *(v5 + 360));
              }

              if (!AppleBCMWLANCore::checkForOppPowerSaveSupport(v7))
              {
                goto LABEL_101;
              }

              v93 = *(v7 + 9);
              v94 = *(v93 + 56);
              if (v94 == 2)
              {
                *(v5 + 388) = *(v93 + 80);
                *(v5 + 384) = *(*(v7 + 9) + 76);
                *(v5 + 392) = *(*(v7 + 9) + 140);
                v95 = (*(v7 + 9) + 144);
                v97 = v151;
                v96 = v155;
                v98 = 148;
              }

              else
              {
                if (v94 != 1)
                {
                  goto LABEL_101;
                }

                v95 = (v93 + 80);
                v97 = v159;
                v96 = v163;
                v98 = 76;
              }

              *v96 = *v95;
              *v97 = *(*(v7 + 9) + v98);
LABEL_101:
              if (AppleBCMWLANCore::checkForEarlyBeconTerminationSupport(v7))
              {
                *(v5 + 368) = *(*(v7 + 9) + 168);
                *(v5 + 376) = *(*(v7 + 9) + 172);
                *(v5 + 372) = *(*(v7 + 9) + 176);
                *(v5 + 380) = *(*(v7 + 9) + 192);
              }

LABEL_103:
              v183 = 0;
              if (AppleBCMWLANCore::safe_align_up(v7, v31 + v33, 4uLL, &v183))
              {
                OUTLINED_FUNCTION_89_0();
                if ((*(v112 + 1952))(v7))
                {
                  OUTLINED_FUNCTION_89_0();
                  (*(v113 + 1952))(v7);
                  if (CCLogStream::shouldLog())
                  {
                    OUTLINED_FUNCTION_89_0();
                    v115 = (*(v114 + 1952))(v7);
                    CCLogStream::logAlert(v115, "[dk] %s@%d:safe_align_up failed\n");
                  }
                }

                goto LABEL_118;
              }

              v31 = v183;
              if (v183 >= 0xFFFF)
              {
                OUTLINED_FUNCTION_89_0();
                if ((*(v116 + 1952))(v7))
                {
                  OUTLINED_FUNCTION_89_0();
                  (*(v117 + 1952))(v7);
                  if (CCLogStream::shouldLog())
                  {
                    OUTLINED_FUNCTION_89_0();
                    v122 = (*(v121 + 1952))(v7);
                    CCLogStream::logAlert(v122, "[dk] %s@%d:UINT16_MAX overflow nextAlignedIndex\n");
                  }
                }

LABEL_118:
                OUTLINED_FUNCTION_130();
                IOFreeData();
                goto LABEL_31;
              }

              v30 = v183;
              if (v183 + 4 >= v179)
              {
                goto LABEL_111;
              }

              break;
            case 0xA:
              OUTLINED_FUNCTION_200();
              if (!v47)
              {
                v46 = v33;
              }

              OUTLINED_FUNCTION_115(v46, v123, v127, v131, v135, v139, v143, v147, v151, v155, v159, v163, v167, v171, v175, v179, v183, v184, v185, v186, v187, v188, v189, __dst[0]);
              goto LABEL_103;
            case 0xB:
              OUTLINED_FUNCTION_200();
              if (!v47)
              {
                v50 = v33;
              }

              OUTLINED_FUNCTION_115(v50, v123, v127, v131, v135, v139, v143, v147, v151, v155, v159, v163, v167, v171, v175, v179, v183, v184, v185, v186, v187, v188, v189, __dst[0]);
              *(v5 + 416) = __dst[1];
              goto LABEL_103;
            case 0xC:
            case 0xD:
              goto LABEL_103;
            case 0xE:
              OUTLINED_FUNCTION_200();
              if (!v47)
              {
                v73 = v33;
              }

              OUTLINED_FUNCTION_115(v73, v123, v127, v131, v135, v139, v143, v147, v151, v155, v159, v163, v167, v171, v175, v179, v183, v184, v185, v186, v187, v188, v189, __dst[0]);
              *(v5 + 404) = __dst[1];
              goto LABEL_103;
            case 0xF:
              *__dst = 0uLL;
              if (v33 >= 0xC)
              {
                v45 = 12;
              }

              else
              {
                v45 = v33;
              }

              OUTLINED_FUNCTION_115(v45, v123, v127, v131, v135, v139, v143, v147, v151, v155, v159, v163, v167, v171, v175, v179, v183, v184, v185, v186, v187, v188, v189, __dst[0]);
              *(v5 + 408) += __dst[2];
              goto LABEL_103;
            case 0x11:
              memset(__dst, 0, 24);
              if (v33 >= 0x14)
              {
                v99 = 20;
              }

              else
              {
                v99 = v33;
              }

              v100 = OUTLINED_FUNCTION_115(v99, v123, v127, v131, v135, v139, v143, v147, v151, v155, v159, v163, v167, v171, v175, v179, v183, v184, v185, v186, v187, v188, v189, __dst[0]);
              *&v108 = OUTLINED_FUNCTION_243(v178[11], v100, v101, v102, v103, v104, v105, v106, v107, v126, v130, v134, v138, v142, v146, v150, v154, v158, v162, v166, v170, v174, v178, v182, v183, v184, v185, v186, v187, v188, v189, *__dst, *&__dst[2], __dst[4]);
              *(v109 + 176) = v108;
              *(v5 + 500) += __dst[5];
              goto LABEL_103;
            case 0x12:
              bzero(__dst, 0x94uLL);
              if (v33 >= 0x90)
              {
                v62 = 144;
              }

              else
              {
                v62 = v33;
              }

              OUTLINED_FUNCTION_115(v62, v123, v127, v131, v135, v139, v143, v147, v151, v155, v159, v163, v167, v171, v175, v179, v183, v184, v185, v186, v187, v188, v189, __dst[0]);
              v63.i64[0] = *&__dst[1];
              v64.i32[0] = __dst[3];
              v63.i64[1] = *&__dst[4];
              *(v5 + 76) = vaddq_s32(v63, *(v5 + 76));
              v63.i64[0] = *&__dst[7];
              v63.i64[1] = *&__dst[10];
              *(v5 + 92) = vaddq_s32(v63, *(v5 + 92));
              v64.i32[1] = __dst[6];
              v64.i64[1] = __PAIR64__(__dst[12], __dst[9]);
              *(v175 + 244) = vaddq_s32(v64, *(v175 + 244));
              v65 = *&__dst[13];
              *(v5 + 568) += __dst[15];
              OUTLINED_FUNCTION_242(v65, v192);
              *(v5 + 572) += v66;
              *(v5 + 516) |= 4u;
              goto LABEL_103;
            default:
              OUTLINED_FUNCTION_89_0();
              if ((*(v74 + 1952))(v7))
              {
                OUTLINED_FUNCTION_89_0();
                (*(v75 + 1952))(v7);
                if (CCLogStream::shouldLog())
                {
                  OUTLINED_FUNCTION_89_0();
                  v77 = (*(v76 + 1952))(v7);
                  CCLogStream::logAlert(v77, "[dk] %s@%d:Unknown TLV with pwrstats command. i=%d total_len=%d type=%d len=%d\n", "getPowerStatsPerSliceIndex", 48071, v30, v13[1], v34, v33);
                }
              }

              goto LABEL_103;
          }
        }
      }
    }
  }

LABEL_31:
  OUTLINED_FUNCTION_280();
}