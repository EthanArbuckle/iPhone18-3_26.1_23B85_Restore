uint64_t AppleBCMWLANIOReportingPerSlice::processPerChannelJoinReporters(AppleBCMWLANIOReporting *a1, const OSNumber *a2, unsigned int *a3, int a4, _DWORD *a5)
{
  result = AppleBCMWLANIOReporting::getLogger(a1);
  if (result)
  {
    AppleBCMWLANIOReporting::getLogger(a1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      Logger = AppleBCMWLANIOReporting::getLogger(a1);
      v12 = OSNumber::unsigned32BitValue(a2);
      result = CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to activitesStateReporter->setStateID %lld rsidency %u chid %lld\n", "processPerChannelJoinReporters", 5137, *(&kStateIDChannelSwitch + 2 * v12), 0, (*a3 << 56) ^ 0x5350517452000000);
    }
  }

  *a5 = a4;
  return result;
}

uint64_t AppleBCMWLANIOReportingPerSlice::iteratePerChannelJoinReporters(AppleBCMWLANIOReporting *a1)
{
  AppleBCMWLANIOReporting::getLogger(a1);
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logEmergency(v1, "[dk] %s@%d:Invalid data for %s()\n", v3, v4, v5);
}

uint64_t AppleBCMWLANIOReportingPerSlice::replaceNumberValue()
{
  OUTLINED_FUNCTION_4();
  if (AppleBCMWLANIOReporting::getLogger(v2))
  {
    AppleBCMWLANIOReporting::getLogger(v1);
    if (CCLogStream::shouldLog())
    {
      Logger = AppleBCMWLANIOReporting::getLogger(v1);
      CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to set value for replaceNumberValue()\n", "replaceNumberValue", 6407);
    }
  }

  v3 = *(*v0 + 16);

  return v3(v0);
}

{
  OUTLINED_FUNCTION_4();
  result = AppleBCMWLANIOReporting::getLogger(v2);
  if (result)
  {
    AppleBCMWLANIOReporting::getLogger(v1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      Logger = AppleBCMWLANIOReporting::getLogger(v1);
      result = CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to alloc tmpNum for replaceNumberValue()\n", "replaceNumberValue", 6405);
    }
  }

  *v0 = 0;
  return result;
}

uint64_t AppleBCMWLANIOReportingPerSlice::initChanSWReporter(AppleBCMWLANIOReporting *a1)
{
  Logger = AppleBCMWLANIOReporting::getLogger(a1);
  return CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to add ivars->fAggChanSWReasonsValue", "initChanSWReporter", 5844);
}

{
  Logger = AppleBCMWLANIOReporting::getLogger(a1);
  return CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to add ivars->fAggChanDwellTimeHist", "initChanSWReporter", 5865);
}

{
  Logger = AppleBCMWLANIOReporting::getLogger(a1);
  return CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to add legend for ivars->fAggChanDwellTimeHist", "initChanSWReporter", 5871);
}

{
  Logger = AppleBCMWLANIOReporting::getLogger(a1);
  return CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to add ivars->fAggChanSWVisitedValue", "initChanSWReporter", 5878);
}

{
  Logger = AppleBCMWLANIOReporting::getLogger(a1);
  return CCLogStream::logEmergency(Logger, "[dk] %s@%d:Found wlan.debug.chanswlimit, enabling enforcement\n", "initChanSWReporter", 5883);
}

{
  Logger = AppleBCMWLANIOReporting::getLogger(a1);
  return CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to allocate histogram reporter", "initChanSWReporter", 5862);
}

{
  Logger = AppleBCMWLANIOReporting::getLogger(a1);
  return CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to alloc AutoreleasedBuffer\n", "initChanSWReporter", 5836);
}

uint64_t AppleBCMWLANIOReportingPerSlice::reportChannelSwitchV1PerSlice(AppleBCMWLANIOReporting *a1)
{
  result = OUTLINED_FUNCTION_14_1(a1);
  if (result)
  {
    AppleBCMWLANIOReporting::getLogger(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      Logger = AppleBCMWLANIOReporting::getLogger(v2);
      result = CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to alloc\n", "reportChannelSwitchV1PerSlice", 5901);
    }
  }

  *v1 = v3;
  return result;
}

void AppleBCMWLANIOReportingPerSlice::reportChannelSwitchV2PerSlice(AppleBCMWLANIOReporting *a1)
{
  if (AppleBCMWLANIOReporting::getLogger(a1))
  {
    AppleBCMWLANIOReporting::getLogger(a1);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANIOReporting::getLogger(a1);
      v2 = OUTLINED_FUNCTION_86();
      OSData::getLength(v2);
      OUTLINED_FUNCTION_6();
      CCLogStream::logEmergency(a1, "[dk] %s@%d:sizeof(wl_chansw_event_log_record...) payload->getLength() %lu\n", v3, v4, v5);
    }
  }

  OUTLINED_FUNCTION_2();
}

{
  if (OUTLINED_FUNCTION_44_0(a1))
  {
    AppleBCMWLANIOReporting::getLogger(v1);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANIOReporting::getLogger(v1);
      OUTLINED_FUNCTION_34_0();
      OUTLINED_FUNCTION_76();
      CCLogStream::logEmergency(v1, "[dk] %s@%d:failed to add ivars->fAggChanSWVisitedValue slice %d chanspec %d\n", v2, v3, v4, v5);
    }
  }

  OUTLINED_FUNCTION_2();
}

{
  if (OUTLINED_FUNCTION_44_0(a1))
  {
    AppleBCMWLANIOReporting::getLogger(v1);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANIOReporting::getLogger(v1);
      OUTLINED_FUNCTION_34_0();
      OUTLINED_FUNCTION_76();
      CCLogStream::logEmergency(v1, "[dk] %s@%d:failed to set ivars->fAggChanSWVisitedValue slice %d chanspec %d\n", v2, v3, v4, v5);
    }
  }

  OUTLINED_FUNCTION_2();
}

{
  if (OUTLINED_FUNCTION_44_0(a1))
  {
    AppleBCMWLANIOReporting::getLogger(v1);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANIOReporting::getLogger(v1);
      OUTLINED_FUNCTION_34_0();
      OUTLINED_FUNCTION_76();
      CCLogStream::logEmergency(v1, "[dk] %s@%d:failed to add ivars->fAggChanSWReasonsValue slice %d chanspec %d\n", v2, v3, v4, v5);
    }
  }

  OUTLINED_FUNCTION_2();
}

{
  if (OUTLINED_FUNCTION_44_0(a1))
  {
    AppleBCMWLANIOReporting::getLogger(v1);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANIOReporting::getLogger(v1);
      OUTLINED_FUNCTION_34_0();
      OUTLINED_FUNCTION_76();
      CCLogStream::logEmergency(v1, "[dk] %s@%d:failed to set ivars->fAggChanSWReasonsValue slice %d chanspec %d\n", v2, v3, v4, v5);
    }
  }

  OUTLINED_FUNCTION_2();
}

{
  if (OUTLINED_FUNCTION_44_0(a1))
  {
    AppleBCMWLANIOReporting::getLogger(v1);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANIOReporting::getLogger(v1);
      OUTLINED_FUNCTION_34_0();
      OUTLINED_FUNCTION_76();
      CCLogStream::logEmergency(v1, "[dk] %s@%d:failed to add ivars->fAggChanSWReasonsValue slice %d chanspec %d\n", v2, v3, v4, v5);
    }
  }

  OUTLINED_FUNCTION_2();
}

{
  if (OUTLINED_FUNCTION_44_0(a1))
  {
    AppleBCMWLANIOReporting::getLogger(v1);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANIOReporting::getLogger(v1);
      OUTLINED_FUNCTION_34_0();
      OUTLINED_FUNCTION_76();
      CCLogStream::logEmergency(v1, "[dk] %s@%d:failed to set ivars->fAggChanSWReasonsValue slice %d chanspec %d\n", v2, v3, v4, v5);
    }
  }

  OUTLINED_FUNCTION_2();
}

{
  if (OUTLINED_FUNCTION_44_0(a1))
  {
    AppleBCMWLANIOReporting::getLogger(v1);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANIOReporting::getLogger(v1);
      OUTLINED_FUNCTION_34_0();
      OUTLINED_FUNCTION_76();
      CCLogStream::logEmergency(v1, "[dk] %s@%d:failed to storeChannelSwitch slice %d chanspec %d\n", v2, v3, v4, v5);
    }
  }

  OUTLINED_FUNCTION_2();
}

{
  if (OUTLINED_FUNCTION_74(a1))
  {
    AppleBCMWLANIOReporting::getLogger(v1);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANIOReporting::getLogger(v1);
      OUTLINED_FUNCTION_66();
      CCLogStream::logEmergency(v2, "[dk] %s@%d:Out of range slice index %d\n", v3, v4, v5);
    }
  }

  OUTLINED_FUNCTION_2();
}

uint64_t AppleBCMWLANIOReportingPerSlice::reportChannelSwitchV2PerSlice(AppleBCMWLANIOReporting *a1)
{
  result = AppleBCMWLANIOReporting::getLogger(a1);
  if (result)
  {
    AppleBCMWLANIOReporting::getLogger(a1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      Logger = AppleBCMWLANIOReporting::getLogger(a1);
      return CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to initiate ChanSW reporter\n", "reportChannelSwitchV2PerSlice", 5931);
    }
  }

  return result;
}

{
  Logger = AppleBCMWLANIOReporting::getLogger(a1);
  return CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to alloc AutoreleasedBuffer\n", "reportChannelSwitchV2PerSlice", 6007);
}

{
  result = AppleBCMWLANIOReporting::getLogger(a1);
  if (result)
  {
    AppleBCMWLANIOReporting::getLogger(a1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      Logger = AppleBCMWLANIOReporting::getLogger(a1);
      return CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to add legend for ivars->fAggPhyChanSwitchTimeHist", "reportChannelSwitchV2PerSlice", 6046);
    }
  }

  return result;
}

{
  Logger = AppleBCMWLANIOReporting::getLogger(a1);
  return CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to alloc AutoreleasedBuffer\n", "reportChannelSwitchV2PerSlice", 6081);
}

{
  Logger = AppleBCMWLANIOReporting::getLogger(a1);
  return CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to alloc AutoreleasedBuffer\n", "reportChannelSwitchV2PerSlice", 6107);
}

{
  Logger = AppleBCMWLANIOReporting::getLogger(a1);
  return CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to alloc AutoreleasedBuffer\n", "reportChannelSwitchV2PerSlice", 6024);
}

void AppleBCMWLANIOReportingPerSlice::reportChannelSwitchV2PerSlice()
{
  OUTLINED_FUNCTION_4();
  if (AppleBCMWLANIOReporting::getLogger(v1))
  {
    AppleBCMWLANIOReporting::getLogger(v0);
    if (CCLogStream::shouldLog())
    {
      Logger = AppleBCMWLANIOReporting::getLogger(v0);
      CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to add ivars->fAggPhyChanSwitchTimeHist", "reportChannelSwitchV2PerSlice", 6040);
    }
  }

  OUTLINED_FUNCTION_2();
}

{
  OUTLINED_FUNCTION_4();
  if (AppleBCMWLANIOReporting::getLogger(v1))
  {
    AppleBCMWLANIOReporting::getLogger(v0);
    if (CCLogStream::shouldLog())
    {
      Logger = AppleBCMWLANIOReporting::getLogger(v0);
      CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to allocate histogram reporter", "reportChannelSwitchV2PerSlice", 6037);
    }
  }

  OUTLINED_FUNCTION_2();
}

uint64_t AppleBCMWLANIOReportingPerSlice::configureReport(AppleBCMWLANIOReporting *a1)
{
  result = OUTLINED_FUNCTION_48_0(a1);
  if (result)
  {
    AppleBCMWLANIOReporting::getLogger(v3);
    result = CCLogStream::shouldLog();
    if (result)
    {
      AppleBCMWLANIOReporting::getLogger(v3);
      v6 = OUTLINED_FUNCTION_77();
      getClassNameHelper(v6);
      OUTLINED_FUNCTION_6();
      result = CCLogStream::logEmergency(v4, "[dk] %s@%d:DKReporter::%s::%s(%d) AppleBCMWLANIOReporting::configureReport failed", v7, v8, v9, "configureReport", 6190);
    }
  }

  *v1 = v2;
  return result;
}

uint64_t AppleBCMWLANIOReportingPerSlice::init()
{
  OUTLINED_FUNCTION_4();
  result = AppleBCMWLANIOReporting::getLogger(v2);
  if (result)
  {
    AppleBCMWLANIOReporting::getLogger(v1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      Logger = AppleBCMWLANIOReporting::getLogger(v1);
      result = CCLogStream::logEmergency(Logger, "[dk] %s@%d:Bad fProvider\n", "init", 6344);
    }
  }

  *v0 = 0;
  return result;
}

uint64_t AppleBCMWLANIOReporting::init(uint64_t a1)
{
  result = *(a1 + 8);
  if (result)
  {
    result = OUTLINED_FUNCTION_1_7();
    if (result)
    {
      v2 = OUTLINED_FUNCTION_0_5();
      return CCLogStream::logEmergency(v2, "[dk] %s@%d:Failed to fMaxSupportedEventLogSet\n", "init", 115);
    }
  }

  return result;
}

{
  result = *(a1 + 8);
  if (result)
  {
    result = OUTLINED_FUNCTION_1_7();
    if (result)
    {
      v2 = OUTLINED_FUNCTION_0_5();
      return CCLogStream::logEmergency(v2, "[dk] %s@%d:Failed to create fReporters\n", "init", 112);
    }
  }

  return result;
}

{
  result = *(a1 + 8);
  if (result)
  {
    result = OUTLINED_FUNCTION_1_7();
    if (result)
    {
      v2 = OUTLINED_FUNCTION_0_5();
      return CCLogStream::logEmergency(v2, "[dk] %s@%d:Bad fChanSpecHandler\n", "init", 108);
    }
  }

  return result;
}

{
  result = *(a1 + 8);
  if (result)
  {
    result = OUTLINED_FUNCTION_1_7();
    if (result)
    {
      v2 = OUTLINED_FUNCTION_0_5();
      return CCLogStream::logEmergency(v2, "[dk] %s@%d:Bad fCommandGate\n", "init", 104);
    }
  }

  return result;
}

{
  result = *(a1 + 8);
  if (result)
  {
    result = OUTLINED_FUNCTION_1_7();
    if (result)
    {
      v2 = OUTLINED_FUNCTION_0_5();
      return CCLogStream::logEmergency(v2, "[dk] %s@%d:Bad fFaultReporter", "init", 100);
    }
  }

  return result;
}

{
  return CCLogStream::logEmergency(*(*a1 + 8), "[dk] %s@%d:Bad fAddCallback\n", "init", 95);
}

{
  result = *(a1 + 8);
  if (result)
  {
    result = OUTLINED_FUNCTION_1_7();
    if (result)
    {
      v2 = OUTLINED_FUNCTION_0_5();
      return CCLogStream::logEmergency(v2, "[dk] %s@%d:Bad fRemoveCallback\n", "init", 92);
    }
  }

  return result;
}

{
  result = *(a1 + 8);
  if (result)
  {
    result = OUTLINED_FUNCTION_1_7();
    if (result)
    {
      v2 = OUTLINED_FUNCTION_0_5();
      return CCLogStream::logEmergency(v2, "[dk] %s@%d:Bad fTarget\n", "init", 89);
    }
  }

  return result;
}

{
  result = *(a1 + 8);
  if (result)
  {
    result = OUTLINED_FUNCTION_1_7();
    if (result)
    {
      v2 = OUTLINED_FUNCTION_0_5();
      return CCLogStream::logEmergency(v2, "[dk] %s@%d:Bad fProvider\n", "init", 86);
    }
  }

  return result;
}

uint64_t AppleBCMWLANIOReporting::init(uint64_t a1, OSObject *a2)
{
  v2 = *(*a1 + 8);
  ClassNameHelper = getClassNameHelper(a2);
  return CCLogStream::logEmergency(v2, "[dk] %s@%d:Failed %s init\n", "init", 121, ClassNameHelper);
}

uint64_t AppleBCMWLANIOReporting::configureReport(uint64_t a1)
{
  result = *(*a1 + 8);
  if (result)
  {
    result = OUTLINED_FUNCTION_1_7();
    if (result)
    {
      v4 = *(*a1 + 8);
      ClassNameHelper = getClassNameHelper(v1);
      return CCLogStream::logEmergency(v4, "[dk] %s@%d:DKReporter::%s::%s(%d) testPostConfigureAllAndAdjustV3 failed\n", "configureReport", 138, ClassNameHelper, "configureReport", 138);
    }
  }

  return result;
}

uint64_t logDebug()
{
  IOLog("strm is NULL");

  return IOLog("logController failed");
}

uint64_t AppleBCMWLANChipManagerPCIe4388::prepareHardware(AppleBCMWLANChipManagerPCIe4388 *this, AppleBCMWLANChipConfigSpace *a2, AppleBCMWLANChipBackplane *a3)
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

uint64_t AppleBCMWLANChipManagerPCIe4388::checkHardware(AppleBCMWLANChipManagerPCIe4388 *this, AppleBCMWLANChipConfigSpace *a2, AppleBCMWLANChipBackplane *a3)
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

uint64_t AppleBCMWLANChipManagerPCIe4399::prepareHardware(AppleBCMWLANChipManagerPCIe4399 *this, AppleBCMWLANChipConfigSpace *a2, AppleBCMWLANChipBackplane *a3)
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

uint64_t AppleBCMWLANChipManagerPCIe4399::checkHardware(AppleBCMWLANChipManagerPCIe4399 *this, AppleBCMWLANChipConfigSpace *a2, AppleBCMWLANChipBackplane *a3)
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

uint64_t AppleBCMWLANJoinAdapter::performJoin(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_0_6(a1);
  (*(v3 + 112))(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Failure to configureDwellForAssociation: %s\n", v5, v6, v7);
}

{
  OUTLINED_FUNCTION_4_5(a1);
  v3 = *v2;
  v5 = OUTLINED_FUNCTION_2_5(v4);
  v8 = (*(v6 + 112))(v5, v7);
  return CCLogStream::logCrit(v1, "[dk] %s@%d: mapAppleAPModeToBcomBssType(%d) failed, error %s\n", "performJoin", 237, v3, v8);
}

{
  v3 = OUTLINED_FUNCTION_0_6(a1);
  v5 = *(v4 + 112);
  OUTLINED_FUNCTION_16_0(v3, v6);
  v8 = v7();
  return CCLogStream::logCrit(v1, "[dk] %s@%d: mapAppleLowerAuthToBcomAuth(%d) failed, error %s\n", "performJoin", 262, v2, v8);
}

{
  v3 = OUTLINED_FUNCTION_0_6(a1);
  v5 = *(v4 + 112);
  OUTLINED_FUNCTION_16_0(v3, v6);
  v8 = v7();
  return CCLogStream::logCrit(v1, "[dk] %s@%d: mapAppleUpperAuthToBcomWpaAuth(%d) failed, error %s\n", "performJoin", 278, v2, v8);
}

{
  v3 = OUTLINED_FUNCTION_0_6(a1);
  v5 = *(v4 + 112);
  OUTLINED_FUNCTION_16_0(v3, v6);
  v8 = v7();
  return CCLogStream::logCrit(v1, "[dk] %s@%d: mapAppleCipherToBcomWsecFlags(%d) failed, error %s\n", "performJoin", 315, v2, v8);
}

{
  v3 = OUTLINED_FUNCTION_0_6(a1);
  v5 = *(v4 + 112);
  OUTLINED_FUNCTION_16_0(v3, v6);
  v8 = v7();
  return CCLogStream::logCrit(v1, "[dk] %s@%d: mapAppleUpperAuthToBcomWsecFlags(%d) failed, error %s\n", "performJoin", 321, v2, v8);
}

{
  OUTLINED_FUNCTION_4_5(a1);
  v3 = *v2;
  v5 = OUTLINED_FUNCTION_2_5(v4);
  v8 = (*(v6 + 112))(v5, v7);
  return CCLogStream::logCrit(v1, "[dk] %s@%d: getBcomPropertiesFromWPARSN(%u) failed, error %s\n", "performJoin", 332, v3, v8);
}

{
  v2 = OUTLINED_FUNCTION_0_6(a1);
  v5 = *v4;
  v7 = *v6;
  v9 = (*(v3 + 112))(v2, v8);
  return CCLogStream::logCrit(v1, "[dk] %s@%d: mapBcomAlgoToBcomWsecFlags(group %u, pairwise %d) failed, error %s\n", "performJoin", 345, v5, v7, v9);
}

{
  v2 = OUTLINED_FUNCTION_0_6(a1);
  (*(v3 + 112))(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logCrit(v1, "[dk] %s@%d: Failed to program the password, error %s\n", v5, v6, v7);
}

{
  v2 = OUTLINED_FUNCTION_0_6(a1);
  (*(v3 + 112))(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logCrit(v1, "[dk] %s@%d: Failed to program the PMK, error %s\n", v5, v6, v7);
}

{
  v2 = OUTLINED_FUNCTION_0_6(a1);
  (*(v3 + 112))(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logCrit(v1, "[dk] %s@%d: Failed to program the WEP Key, error %s\n", v5, v6, v7);
}

{
  v2 = OUTLINED_FUNCTION_0_6(a1);
  (*(v3 + 112))(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Failure to disable supplicant timeout, %s\n", v5, v6, v7);
}

{
  v2 = OUTLINED_FUNCTION_0_6(a1);
  (*(v3 + 112))(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Failure to set iovar sup_wpa_tmo, %s\n", v5, v6, v7);
}

{
  v2 = OUTLINED_FUNCTION_0_6(a1);
  (*(v3 + 112))(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logCrit(v1, "[dk] %s@%d: Failed to update Chip's RSN IE, %s\n", v5, v6, v7);
}

{
  v2 = OUTLINED_FUNCTION_0_6(a1);
  (*(v3 + 112))(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:SAE-PK config failed: %s\n", v5, v6, v7);
}

{
  v2 = OUTLINED_FUNCTION_0_6(a1);
  (*(v3 + 112))(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:OCV config failed: %s\n", v5, v6, v7);
}

{
  v3 = OUTLINED_FUNCTION_0_6(a1);
  v5 = *(v4 + 112);
  OUTLINED_FUNCTION_16_0(v3, v6);
  v12 = v7();
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logCrit(v1, "[dk] %s@%d:%s: set pmf(%d) failed, error %s\n", v9, v10, v11, v2, v12);
}

{
  v3 = OUTLINED_FUNCTION_0_6(a1);
  v5 = *(v4 + 112);
  OUTLINED_FUNCTION_16_0(v3, v6);
  v12 = v7();
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logCrit(v1, "[dk] %s@%d:%s: set wsec_info(%d) for 192-bit mode failed, error %s\n", v9, v10, v11, v2, v12);
}

{
  v3 = OUTLINED_FUNCTION_0_6(a1);
  v5 = *(v4 + 112);
  OUTLINED_FUNCTION_16_0(v3, v6);
  v8 = v7();
  return CCLogStream::logCrit(v1, "[dk] %s@%d: set bip(%d) failed, error %s\n", "performJoin", 666, v2, v8);
}

{
  v3 = OUTLINED_FUNCTION_0_6(a1);
  v5 = *(v4 + 112);
  OUTLINED_FUNCTION_16_0(v3, v6);
  v12 = v7();
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logCrit(v1, "[dk] %s@%d:%s: set wsec_info(%d) for OWE mode failed, error %s\n", v9, v10, v11, v2, v12);
}

{
  v3 = OUTLINED_FUNCTION_0_6(a1);
  v5 = *(v4 + 112);
  OUTLINED_FUNCTION_16_0(v3, v6);
  v12 = v7();
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logCrit(v1, "[dk] %s@%d:%s: set wsec_info(%d) for roaming failed, error %s\n", v9, v10, v11, v2, v12);
}

{
  v2 = OUTLINED_FUNCTION_0_6(a1);
  (*(v3 + 112))(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logCrit(v1, "[dk] %s@%d: WLC_SET_SSID() failed, error %s\n", v5, v6, v7);
}

{
  v1 = OUTLINED_FUNCTION_6_5(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:failed to allocate memory for join iovar, abort joining\n", "performJoin", 534);
}

uint64_t AppleBCMWLANJoinAdapter::performJoin(uint64_t a1, unsigned int *a2)
{
  v4 = OUTLINED_FUNCTION_1_8(a1, a2);
  v7 = (*(v5 + 112))(v4, v6);
  return CCLogStream::logCrit(v2, "[dk] %s@%d: WLC_SET_INFRA(%lu) failed, error %s\n", "performJoin", 246, v3, v7);
}

{
  v4 = OUTLINED_FUNCTION_1_8(a1, a2);
  v7 = (*(v5 + 112))(v4, v6);
  return CCLogStream::logCrit(v2, "[dk] %s@%d: WLC_SET_AUTH(%lu) failed, error %s\n", "performJoin", 270, v3, v7);
}

{
  v4 = OUTLINED_FUNCTION_1_8(a1, a2);
  v7 = (*(v5 + 112))(v4, v6);
  return CCLogStream::logCrit(v2, "[dk] %s@%d: WLC_SET_WPA_AUTH(%lu) failed, error %s\n", "performJoin", 302, v3, v7);
}

{
  v4 = OUTLINED_FUNCTION_1_8(a1, a2);
  v7 = (*(v5 + 112))(v4, v6);
  return CCLogStream::logCrit(v2, "[dk] %s@%d: WLC_SET_WSEC(%lu) failed, error %s\n", "performJoin", 354, v3, v7);
}

uint64_t AppleBCMWLANJoinAdapter::performJoin(uint64_t a1, int a2)
{
  OUTLINED_FUNCTION_11_2(a1);
  v5 = OUTLINED_FUNCTION_2_5(v4);
  v7 = (*(v6 + 112))(v5);
  return CCLogStream::logAlert(v2, "[dk] %s@%d:Failed to set iovar sup_wpa, %d[%s]\n", "performJoin", 254, a2, v7);
}

{
  OUTLINED_FUNCTION_11_2(a1);
  v5 = OUTLINED_FUNCTION_2_5(v4);
  v7 = (*(v6 + 112))(v5);
  return CCLogStream::logAlert(v2, "[dk] %s@%d: Failure to set iovar sup_wpa_tmo, %d[%s]\n", "performJoin", 443, a2, v7);
}

uint64_t AppleBCMWLANJoinAdapter::set4WayHandshakeProtection(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_6_5(a1);
  return CCLogStream::logInfo(v1, "[dk] %s@%d:WL_BTC_WIFI_PROT_VER_2 detected", "set4WayHandshakeProtection", 1302);
}

{
  v2 = OUTLINED_FUNCTION_0_6(a1);
  (*(v3 + 112))(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Failure to set iovar btc_wifi_prot, %s\n", v5, v6, v7);
}

{
  v1 = OUTLINED_FUNCTION_6_5(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Unable to allocate memory for txBuf\n", "set4WayHandshakeProtection", 1307);
}

{
  v1 = OUTLINED_FUNCTION_6_5(a1);
  return CCLogStream::logInfo(v1, "[dk] %s@%d:WL_BTC_WIFI_PROT_VER_1 detected", "set4WayHandshakeProtection", 1265);
}

{
  v2 = OUTLINED_FUNCTION_0_6(a1);
  (*(v3 + 112))(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Failure to set iovar btc_wifi_prot, %s\n", v5, v6, v7);
}

{
  v1 = OUTLINED_FUNCTION_6_5(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Unable to allocate memory for txBuf\n", "set4WayHandshakeProtection", 1271);
}

uint64_t AppleBCMWLANJoinAdapter::clearWepKeysSync(uint64_t a1, uint64_t a2, int a3)
{
  OUTLINED_FUNCTION_11_2(a1);
  v6 = OUTLINED_FUNCTION_2_5(v5);
  v8 = (*(v7 + 112))(v6);
  return CCLogStream::logCrit(v3, "[dk] %s@%d: WEP clear failed on index %u, error %s\n", "clearWepKeysSync", 2163, a3, v8);
}

uint64_t AppleBCMWLANJoinAdapter::setKey(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_6_5(a1);
  return CCLogStream::logWarnIf(v1, 0x100uLL, "[dk] %s@%d: Ignoring PMKSA request\n", "setKey", 1972);
}

{
  v2 = OUTLINED_FUNCTION_0_6(a1);
  (*(v3 + 112))(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logCrit(v1, "[dk] %s@%d: mapAppleKeyToBcomKey() failed, error %s\n", v5, v6, v7);
}

{
  v1 = OUTLINED_FUNCTION_6_5(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:invalid interface\n", "setKey", 1963);
}

uint64_t AppleBCMWLANJoinAdapter::enableICVErrorEvents(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_0_6(a1);
  (*(v3 + 112))(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Failure to setup event handling for WLC_E_ICV_ERROR, %s\n", v5, v6, v7);
}

uint64_t AppleBCMWLANJoinAdapter::enableSupplicantEvents(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_0_6(a1);
  (*(v3 + 112))(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Failure to setup event handling for WLC_E_PSK_SUP, %s\n", v5, v6, v7);
}

uint64_t AppleBCMWLANJoinAdapter::setAssocRSNIE(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_0_6(a1);
  (*(v3 + 112))(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logCrit(v1, "[dk] %s@%d: wpaie failed, error %s\n", v5, v6, v7);
}

void AppleBCMWLANJoinAdapter::setAssocWsecInfo(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 72);
  CurrentBSS = AppleBCMWLANBssManager::getCurrentBSS(*(a1 + 48));
  v5 = (*(*CurrentBSS + 672))(CurrentBSS);
  v6 = *AppleBCMWLANBssManager::getCurrentBSS(*(*a2 + 48));
  v7 = (*(v6 + 680))();
  CCLogStream::logAlert(v3, "[dk] %s@%d:%s: wsec_info type %d option for SAE PK BSS cap  (%d)& saepk pwd (%d): \n", "setAssocWsecInfo", 2373, "setAssocWsecInfo", 266, v5, v7);
  OUTLINED_FUNCTION_12_2();
}

uint64_t AppleBCMWLANJoinAdapter::setAssocWsecInfo(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_6_5(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:%s: Invalid attempt with wsec_info type %d option for SAE PK\n", "setAssocWsecInfo", 2375, "setAssocWsecInfo", 266);
}

{
  OUTLINED_FUNCTION_6_5(a1);
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:%s: Disable roaming to TKIP when joining an RSN_AKM_PSK network\n", v3, v4, v5);
}

{
  OUTLINED_FUNCTION_6_5(a1);
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:%s: Unable to allocate memory for txBuf\n", v3, v4, v5);
}

uint64_t AppleBCMWLANJoinAdapter::setAssocWsecInfo(uint64_t *a1, uint64_t a2, int a3, int a4)
{
  v6 = *(*a1 + 72);
  v7 = OUTLINED_FUNCTION_2_5(*a1);
  v9 = (*(v8 + 112))(v7);
  return CCLogStream::logAlert(v6, "[dk] %s@%d:%s: Failure to set iovar wsec_info (type 0x%X, param 0x%X), %s\n", "setAssocWsecInfo", 2419, "setAssocWsecInfo", a3, a4, v9);
}

uint64_t AppleBCMWLANJoinAdapter::setAssocBip(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_0_6(a1);
  v4 = (*(v3 + 112))(v2);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:%s: Failure to set iovar bip, %s\n", "setAssocBip", 2198, "setAssocBip", v4);
}

uint64_t AppleBCMWLANJoinAdapter::customUnAssocDwell(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_0_6(a1);
  (*(v3 + 112))(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Failure to configure Dwell for Assoc: %s\n", v5, v6, v7);
}

{
  v2 = OUTLINED_FUNCTION_0_6(a1);
  (*(v3 + 112))(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Failure to configure Dwell for Assoc: %s\n", v5, v6, v7);
}

uint64_t AppleBCMWLANJoinAdapter::createAdhocNetwork(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_6_5(a1);
  return CCLogStream::logCrit(v1, "[dk] %s@%d: Failed to set last joined SSID\n", "createAdhocNetwork", 764);
}

{
  OUTLINED_FUNCTION_4_5(a1);
  v3 = *v2;
  v5 = OUTLINED_FUNCTION_2_5(v4);
  v8 = (*(v6 + 112))(v5, v7);
  return CCLogStream::logCrit(v1, "[dk] %s@%d: mapAppleAPModeToBcomBssType(%d) failed, error %s\n", "createAdhocNetwork", 777, v3, v8);
}

{
  v3 = OUTLINED_FUNCTION_0_6(a1);
  v5 = *(v4 + 112);
  OUTLINED_FUNCTION_16_0(v3, v6);
  v8 = v7();
  return CCLogStream::logCrit(v1, "[dk] %s@%d: mapAppleLowerAuthToBcomAuth(%d) failed, error %s\n", "createAdhocNetwork", 791, v2, v8);
}

{
  v3 = OUTLINED_FUNCTION_0_6(a1);
  v5 = *(v4 + 112);
  OUTLINED_FUNCTION_16_0(v3, v6);
  v8 = v7();
  return CCLogStream::logCrit(v1, "[dk] %s@%d: mapAppleUpperAuthToBcomWpaAuth(%d) failed, error %s\n", "createAdhocNetwork", 804, v2, v8);
}

{
  v3 = OUTLINED_FUNCTION_0_6(a1);
  v5 = *(v4 + 112);
  OUTLINED_FUNCTION_16_0(v3, v6);
  v8 = v7();
  return CCLogStream::logCrit(v1, "[dk] %s@%d: mapAppleCipherToBcomWsecFlags(%d) failed, error %s\n", "createAdhocNetwork", 821, v2, v8);
}

{
  v2 = OUTLINED_FUNCTION_0_6(a1);
  (*(v3 + 112))(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logCrit(v1, "[dk] %s@%d: Failed to program the WEP Key, error %s\n", v5, v6, v7);
}

{
  v2 = OUTLINED_FUNCTION_0_6(a1);
  (*(v3 + 112))(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logCrit(v1, "[dk] %s@%d: WLC_SET_SSID() failed, error %s\n", v5, v6, v7);
}

uint64_t AppleBCMWLANJoinAdapter::createAdhocNetwork(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_11_2(a1);
  v5 = authtypelower2str(*(v4 + 8));
  v6 = authtypeupper2str(*(a2 + 12), 0xFFFFu);
  v7 = ciphertype2str(*(a2 + 72));
  return CCLogStream::logNotice(v2, "[dk] %s@%d: lowerAuth = %s, upperAuth = %s, key = %s\n", "createAdhocNetwork", 773, v5, v6, v7);
}

uint64_t AppleBCMWLANJoinAdapter::createAdhocNetwork(uint64_t a1, unsigned int *a2)
{
  v4 = OUTLINED_FUNCTION_1_8(a1, a2);
  v7 = (*(v5 + 112))(v4, v6);
  return CCLogStream::logCrit(v2, "[dk] %s@%d: WLC_SET_INFRA(%lu) failed, error %s\n", "createAdhocNetwork", 785, v3, v7);
}

{
  v4 = OUTLINED_FUNCTION_1_8(a1, a2);
  v7 = (*(v5 + 112))(v4, v6);
  return CCLogStream::logCrit(v2, "[dk] %s@%d: WLC_SET_AUTH(%lu) failed, error %s\n", "createAdhocNetwork", 799, v3, v7);
}

{
  v4 = OUTLINED_FUNCTION_1_8(a1, a2);
  v7 = (*(v5 + 112))(v4, v6);
  return CCLogStream::logCrit(v2, "[dk] %s@%d: WLC_SET_WPA_AUTH(%lu) failed, error %s\n", "createAdhocNetwork", 812, v3, v7);
}

{
  v4 = OUTLINED_FUNCTION_1_8(a1, a2);
  v7 = (*(v5 + 112))(v4, v6);
  return CCLogStream::logCrit(v2, "[dk] %s@%d: WLC_SET_WSEC(%lu) failed, error %s\n", "createAdhocNetwork", 839, v3, v7);
}

{
  v4 = OUTLINED_FUNCTION_1_8(a1, a2);
  v7 = (*(v5 + 112))(v4, v6);
  return CCLogStream::logCrit(v2, "[dk] %s@%d: WLC_SET_CHANNEL(%lu) failed, error %s\n", "createAdhocNetwork", 850, v3, v7);
}

void AppleBCMWLANJoinAdapter::abortFirmwareJoinSync(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_3_4(a1);
  (*(v3 + 112))(v2);
  OUTLINED_FUNCTION_6();
  CCLogStream::logCrit(v1, "[dk] %s@%d: Failed to abort join attempt in firmware (WLC_DISASSOC), %s\n", v4, v5, v6);
  OUTLINED_FUNCTION_12_2();
}

uint64_t AppleBCMWLANJoinAdapter::configureSupplicantTimeOut(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_0_6(a1);
  (*(v3 + 112))(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Failure to set iovar sup_wpa_tmo, %s\n", v5, v6, v7);
}

{
  v2 = OUTLINED_FUNCTION_0_6(a1);
  (*(v3 + 112))(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Failure to Configure Supplicant Timeout: %s\n", v5, v6, v7);
}

{
  v1 = OUTLINED_FUNCTION_6_5(a1);
  return CCLogStream::logNotice(v1, "[dk] %s@%d:ADhoc is created, supplicant is disabled in firmware, ignore supplicant timeout config", "configureSupplicantTimeOut", 948);
}

uint64_t AppleBCMWLANJoinAdapter::handleSupplicantTimeoutConfigAsyncCallBack(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_0_6(a1);
  (*(v3 + 112))(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logCrit(v1, "[dk] %s@%d: Failure to Configure Supplicant Timeout, %s\n", v5, v6, v7);
}

uint64_t AppleBCMWLANJoinAdapter::getBSSInfoAsync(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_0_6(a1);
  (*(v3 + 112))(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logCrit(v1, "[dk] %s@%d: WLC_GET_BSS_INFO() failed, error %s\n", v5, v6, v7);
}

uint64_t AppleBCMWLANJoinAdapter::updateTransDisabledMode(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_0_6(a1);
  v4 = (*(v3 + 112))(v2);
  return CCLogStream::logCrit(v1, "[dk] %s@%d:%s: set wsec_info(%d) for transition terminated mode failed, error %s\n", "updateTransDisabledMode", 1069, "updateTransDisabledMode", 268, v4);
}

uint64_t AppleBCMWLANJoinAdapter::initWithDriver(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_6_5(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Unable to get Power Manager\n", "initWithDriver", 1158);
}

{
  v1 = OUTLINED_FUNCTION_6_5(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Failed to get Bss Manager\n", "initWithDriver", 1150);
}

{
  v1 = OUTLINED_FUNCTION_6_5(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Unable to get Command Manager\n", "initWithDriver", 1142);
}

uint64_t AppleBCMWLANJoinAdapter::custom6GUnAssocDwell(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_0_6(a1);
  (*(v3 + 112))(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Failure to configure 6G Dwell for Unassoc: %s\n", v5, v6, v7);
}

{
  v2 = OUTLINED_FUNCTION_0_6(a1);
  (*(v3 + 112))(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Failure to configure 6G Dwell for Unassoc: %s\n", v5, v6, v7);
}

uint64_t AppleBCMWLANJoinAdapter::handleCustom6GUnAssocDwellAsyncCallBack(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_0_6(a1);
  (*(v3 + 112))(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logCrit(v1, "[dk] %s@%d: Failure to configure 6G Dwell for Unassoc, %s\n", v5, v6, v7);
}

uint64_t AppleBCMWLANJoinAdapter::handleBeaconProtectionAsyncCallBack(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_0_6(a1);
  (*(v3 + 112))(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Error: cannot set becon protection params %s\n", v5, v6, v7);
}

uint64_t AppleBCMWLANJoinAdapter::setBeaconProtectionParams(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_6_5(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Failed to set bcn protection params, feature not supported\n", "setBeaconProtectionParams", 1552);
}

{
  v1 = OUTLINED_FUNCTION_6_5(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:bcmprot cmd alloc fail\n", "setBeaconProtectionParams", 1565);
}

uint64_t AppleBCMWLANJoinAdapter::setBeaconProtectionParams(uint64_t a1, uint64_t a2, const char *a3)
{
  OUTLINED_FUNCTION_11_2(a1);
  v6 = OUTLINED_FUNCTION_2_5(v5);
  v8 = (*(v7 + 112))(v6);
  return CCLogStream::logAlertIf(v3, 0x20uLL, "[dk] %s@%d:BCN PROT: Failed to run BCN PROT set var (%s), %s\n", "setBeaconProtectionParams", 1594, a3, v8);
}

uint64_t AppleBCMWLANJoinAdapter::handleCustomUnAssocDwellAsyncCallBack(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_0_6(a1);
  (*(v3 + 112))(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logCrit(v1, "[dk] %s@%d: Failed to configure Custom Dwell Time, %s\n", v5, v6, v7);
}

uint64_t AppleBCMWLANJoinAdapter::collectJoinTimeoutAwdMetrics(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_0_6(a1);
  v4 = (*(v3 + 112))(v2);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:%s fails returning %s\n", "collectJoinTimeoutAwdMetrics", 1689, "awd_data_info", v4);
}

uint64_t AppleBCMWLANJoinAdapter::collectCCAForJoinTimeout(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  result = OUTLINED_FUNCTION_6_5(a1);
  if (result)
  {
    result = CCLogStream::shouldLog();
    if (result)
    {
      v7 = *a1;
      v8 = *(*a1 + 72);
      v9 = OUTLINED_FUNCTION_2_5(v7);
      (*(v10 + 112))(v9, a2);
      OUTLINED_FUNCTION_6();
      result = CCLogStream::logAlert(v8, "[dk] %s@%d: Unable to get cca %s\n", v11, v12, v13);
    }
  }

  *a3 = a2;
  return result;
}

uint64_t AppleBCMWLANJoinAdapter::collectCCAForJoinTimeout()
{
  OUTLINED_FUNCTION_4();
  result = OUTLINED_FUNCTION_6_5(v1);
  if (result)
  {
    result = CCLogStream::shouldLog();
    if (result)
    {
      v3 = OUTLINED_FUNCTION_15_3();
      result = CCLogStream::logAlert(v3, "[dk] %s@%d:Invalid duration\n", "collectCCAForJoinTimeout", 1728);
    }
  }

  *v0 = 0;
  return result;
}

{
  OUTLINED_FUNCTION_4();
  result = OUTLINED_FUNCTION_6_5(v1);
  if (result)
  {
    result = CCLogStream::shouldLog();
    if (result)
    {
      v3 = OUTLINED_FUNCTION_15_3();
      result = CCLogStream::logAlert(v3, "[dk] %s@%d:bss count is 0\n", "collectCCAForJoinTimeout", 1703);
    }
  }

  *v0 = -536870212;
  return result;
}

uint64_t AppleBCMWLANJoinAdapter::setAssocRSNIEAsyncCallback(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_0_6(a1);
  (*(v3 + 112))(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logCrit(v1, "[dk] %s@%d: Failed to update RSN IE, %s\n", v5, v6, v7);
}

uint64_t AppleBCMWLANJoinAdapter::setCustomAssocIE(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_6_5(a1);
  return CCLogStream::logNoticeIf(v1, 0x800uLL, "[dk] %s@%d: Clearing WAPI IE\n", "setCustomAssocIE", 1787);
}

{
  v2 = OUTLINED_FUNCTION_0_6(a1);
  (*(v3 + 112))(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logCrit(v1, "[dk] %s@%d: wapiie failed, error %s\n", v5, v6, v7);
}

uint64_t AppleBCMWLANJoinAdapter::setCustomAssocIEAsyncCallback(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_0_6(a1);
  (*(v3 + 112))(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logCrit(v1, "[dk] %s@%d: Failed to update Custom IE, %s\n", v5, v6, v7);
}

uint64_t AppleBCMWLANJoinAdapter::getAssociatedRSNXEAsyncCallback(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_0_6(a1);
  (*(v3 + 112))(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logCrit(v1, "[dk] %s@%d: Failed to get RSN XE, %s\n", v5, v6, v7);
}

uint64_t AppleBCMWLANJoinAdapter::getAssociatedRSNXE(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_0_6(a1);
  (*(v3 + 112))(v2, 3758097090);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logCrit(v1, "[dk] %s@%d: rsnxe failed, error %s\n", v5, v6, v7);
}

uint64_t AppleBCMWLANJoinAdapter::programPMK(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_0_6(a1);
  (*(v3 + 112))(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: WLC_SET_WSEC_PMK() failed, error %s\n", v5, v6, v7);
}

uint64_t AppleBCMWLANJoinAdapter::setAssocWsecInfoPMKPassword(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_0_6(a1);
  v4 = (*(v3 + 112))(v2);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:%s: Failure setting wsec_info for PMK, %s\n", "setAssocWsecInfoPMKPassword", 2259, "setAssocWsecInfoPMKPassword", v4);
}

{
  OUTLINED_FUNCTION_6_5(a1);
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:%s: Unable to allocate memory for txBuf\n", v3, v4, v5);
}

uint64_t AppleBCMWLANJoinAdapter::programKeyAsync(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_0_6(a1);
  (*(v3 + 112))(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logCrit(v1, "[dk] %s@%d: WLC_SET_KEY() failed, error %s\n", v5, v6, v7);
}

uint64_t AppleBCMWLANJoinAdapter::programKeySync(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_0_6(a1);
  (*(v3 + 112))(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logCrit(v1, "[dk] %s@%d: WLC_SET_KEY() failed, error %s\n", v5, v6, v7);
}

uint64_t AppleBCMWLANJoinAdapter::programKeyAsyncCallback(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_0_6(a1);
  (*(v3 + 112))(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logCrit(v1, "[dk] %s@%d: WLC_SET_KEY() failed, error %s\n", v5, v6, v7);
}

uint64_t AppleBCMWLANJoinAdapter::setWsecInfoCallback(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_0_6(a1);
  (*(v3 + 112))(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logCrit(v1, "[dk] %s@%d: Failed to set wsec info, %s\n", v5, v6, v7);
}

uint64_t AppleBCMWLANJoinAdapter::handleAuth(uint64_t a1, int *a2)
{
  v3 = OUTLINED_FUNCTION_7_5(a1, a2);
  if (OUTLINED_FUNCTION_14_2(v3))
  {
    v4 = v2[24];
  }

  if (IO80211_io80211isSensitiveInfoAllowed())
  {
    v5 = v2[25];
  }

  if (IO80211_io80211isSensitiveInfoAllowed())
  {
    v6 = v2[26];
  }

  if (IO80211_io80211isSensitiveInfoAllowed())
  {
    v7 = v2[27];
  }

  if (IO80211_io80211isSensitiveInfoAllowed())
  {
    v8 = v2[28];
  }

  if (IO80211_io80211isSensitiveInfoAllowed())
  {
    v9 = v2[29];
  }

  OUTLINED_FUNCTION_10_4();
  return CCLogStream::logAlert(v22, "[dk] %s@%d:%s:%d: status = %lu %s, reason = %lu, flags = 0x%x, authtype = %lu, addr = %02x:%02x:%02x:%02x:%02x:%02x\n", "handleAuth", 2487, "handleAuth", 2487, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21);
}

uint64_t AppleBCMWLANJoinAdapter::handleAssoc(uint64_t a1, int *a2)
{
  v3 = OUTLINED_FUNCTION_7_5(a1, a2);
  if (OUTLINED_FUNCTION_14_2(v3))
  {
    v4 = v2[24];
  }

  if (IO80211_io80211isSensitiveInfoAllowed())
  {
    v5 = v2[25];
  }

  if (IO80211_io80211isSensitiveInfoAllowed())
  {
    v6 = v2[26];
  }

  if (IO80211_io80211isSensitiveInfoAllowed())
  {
    v7 = v2[27];
  }

  if (IO80211_io80211isSensitiveInfoAllowed())
  {
    v8 = v2[28];
  }

  if (IO80211_io80211isSensitiveInfoAllowed())
  {
    v9 = v2[29];
  }

  OUTLINED_FUNCTION_10_4();
  return CCLogStream::logAlert(v22, "[dk] %s@%d:%s:%d: status = %lu %s, reason = %lu, flags = 0x%x, authtype = %lu, addr = %02x:%02x:%02x:%02x:%02x:%02x\n", "handleAssoc", 2557, "handleAssoc", 2557, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21);
}

uint64_t AppleBCMWLANJoinAdapter::handleSetSSID(uint64_t *a1, int *a2, uint64_t a3, unsigned __int8 *a4)
{
  v22 = *(*a1 + 96);
  v23 = *(*a1 + 72);
  v7 = *a2;
  v21 = stringFromStatusInEvent(*a2, 0);
  v19 = *(a3 + 2);
  v8 = *(a3 + 16);
  v20 = *(a3 + 12);
  v9 = *a1;
  v10 = *(*a1 + 640);
  v11 = *(v9 + 642);
  v12 = 0;
  if (IO80211_io80211isSensitiveInfoAllowed())
  {
    v12 = *a4;
  }

  if (IO80211_io80211isSensitiveInfoAllowed())
  {
    v13 = *(a3 + 25);
  }

  else
  {
    v13 = 0;
  }

  if (IO80211_io80211isSensitiveInfoAllowed())
  {
    v14 = *(a3 + 26);
  }

  else
  {
    v14 = 0;
  }

  if (IO80211_io80211isSensitiveInfoAllowed())
  {
    v15 = *(a3 + 27);
  }

  else
  {
    v15 = 0;
  }

  if (IO80211_io80211isSensitiveInfoAllowed())
  {
    v16 = *(a3 + 28);
  }

  else
  {
    v16 = 0;
  }

  if (IO80211_io80211isSensitiveInfoAllowed())
  {
    v17 = *(a3 + 29);
  }

  else
  {
    v17 = 0;
  }

  return CCLogStream::logNotice(v23, "[dk] %s@%d: interface %lu event_status = %lu %s, reason = %lu, flags = 0x%x, authtype = %lu, join_status = %lu join_ext_status = %lu addr = %02x:%02x:%02x:%02x:%02x:%02x\n", "handleSetSSID", 2630, v22, v7, v21, v20, v19, v8, v10, v11, v12, v13, v14, v15, v16, v17);
}

uint64_t AppleBCMWLANJoinAdapter::handleSetSSID(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_6_5(a1);
  return CCLogStream::logNotice(v1, "[dk] %s@%d:Timed out waiting for first beacon of the network", "handleSetSSID", 2637);
}

{
  v1 = OUTLINED_FUNCTION_6_5(a1);
  return CCLogStream::logCrit(v1, "[dk] %s@%d: no event specified\n", "handleSetSSID", 2609);
}

uint64_t AppleBCMWLANJoinAdapter::handleICVErrorEvent(uint64_t a1, int *a2)
{
  v7 = OUTLINED_FUNCTION_7_5(a1, a2);
  v8 = 0;
  if (OUTLINED_FUNCTION_14_2(v7))
  {
    v8 = v3[24];
  }

  if (IO80211_io80211isSensitiveInfoAllowed())
  {
    v9 = v3[25];
  }

  else
  {
    v9 = 0;
  }

  if (IO80211_io80211isSensitiveInfoAllowed())
  {
    v10 = v3[26];
  }

  else
  {
    v10 = 0;
  }

  if (IO80211_io80211isSensitiveInfoAllowed())
  {
    v11 = v3[27];
  }

  else
  {
    v11 = 0;
  }

  if (IO80211_io80211isSensitiveInfoAllowed())
  {
    v12 = v3[28];
  }

  else
  {
    v12 = 0;
  }

  if (IO80211_io80211isSensitiveInfoAllowed())
  {
    v13 = v3[29];
  }

  else
  {
    v13 = 0;
  }

  return CCLogStream::logNoticeIf(v16, 0x100uLL, "[dk] %s@%d: status = %lu %s, reason = %lu, flags = 0x%x, authtype = %lu, addr = %02x:%02x:%02x:%02x:%02x:%02x\n", "handleICVErrorEvent", 2681, v2, v15, v4, v5, v6, v8, v9, v10, v11, v12, v13);
}

void AppleBCMWLANJoinAdapter::getBSSInfoAsyncCallback(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_3_4(a1);
  (*(v3 + 112))(v2);
  OUTLINED_FUNCTION_6();
  CCLogStream::logCrit(v1, "[dk] %s@%d: WLC_GET_BSS_INFO() failed, error %s\n", v4, v5, v6);
  OUTLINED_FUNCTION_12_2();
}

uint64_t AppleBCMWLANJoinAdapter::getBSSInfoAsyncCallback()
{
  OUTLINED_FUNCTION_4();
  if (OUTLINED_FUNCTION_6_5(v2))
  {
    shouldLog = CCLogStream::shouldLog();
    v3 = *v1;
    if (shouldLog)
    {
      CCLogStream::logAlert(*(v3 + 72), "[dk] %s@%d:Unable to get create bss from FW bss data, send connect complete with join failure\n", "getBSSInfoAsyncCallback", 2845);
      v3 = *v1;
    }
  }

  *(v3 + 640) = -1;

  return AppleBCMWLANJoinAdapter::sendConnectComplete(v0);
}

uint64_t AppleBCMWLANPowerStateAdapter::configureExtendedListenInterval(uint64_t ***a1)
{
  v2 = OUTLINED_FUNCTION_0_7(a1);
  (*(v3 + 112))(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Unable to set beacon wakeup period: %s\n", v5, v6, v7);
}

{
  v2 = OUTLINED_FUNCTION_0_7(a1);
  (*(v3 + 112))(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Unable to set extended dtim wakeup period: %s\n", v5, v6, v7);
}

uint64_t AppleBCMWLANPowerStateAdapter::configureDefaultListenInterval(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a1[2];
  (*(**a1 + 112))(*a1);
  OUTLINED_FUNCTION_6();
  result = CCLogStream::logAlert(v6, "[dk] %s@%d:Unable to set beacon wakeup period: %s\n", v8, v9, v10);
  *a4 = *a3;
  return result;
}

uint64_t AppleBCMWLANPowerStateAdapter::configureDefaultListenInterval(uint64_t ***a1)
{
  v2 = OUTLINED_FUNCTION_0_7(a1);
  (*(v3 + 112))(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Unable to set extended dtim wakeup period: %s\n", v5, v6, v7);
}

uint64_t AppleBCMWLANPowerStateAdapter::configureBeaconFRTS(uint64_t ***a1, uint64_t a2, int a3)
{
  v4 = (*a1)[2];
  v5 = OUTLINED_FUNCTION_1_0(*a1);
  v8 = *v7;
  v10 = (*(v6 + 112))(v5, v9);
  return CCLogStream::logAlert(v4, "[dk] %s@%d:Failed to set pm2_bcn_sleep_ret to %d : ret %x: %s\n", "configureBeaconFRTS", 200, v8, a3, v10);
}

uint64_t AppleBCMWLANPowerStateAdapter::configureMulticastBroadcastWaitPeriod(uint64_t ***a1)
{
  v2 = OUTLINED_FUNCTION_0_7(a1);
  (*(v3 + 112))(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Failed configuring pm_bcmc_moredata_wait: %s\n", v5, v6, v7);
}

{
  v2 = OUTLINED_FUNCTION_0_7(a1);
  (*(v3 + 112))(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Failed configuring pm_bcmc_moredata_wait: %s\n", v5, v6, v7);
}

uint64_t AppleBCMWLANPowerStateAdapter::handleMulticastBroadcastWaitPeriodConfigAsyncCallBack(uint64_t ***a1)
{
  v2 = OUTLINED_FUNCTION_0_7(a1);
  (*(v3 + 112))(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Failed to configure multicast wait period: %s\n", v5, v6, v7);
}

uint64_t AppleBCMWLANPowerStateAdapter::disableDFRTSAndSetFRTS(uint64_t ***a1, unsigned int *a2)
{
  v2 = (*a1)[2];
  v3 = *a2;
  v4 = OUTLINED_FUNCTION_1_0(*a1);
  v7 = (*(v5 + 112))(v4, v6);
  return CCLogStream::logAlert(v2, "[dk] %s@%d:Failed to set FRTS: ret %lu: %s\n", "disableDFRTSAndSetFRTS", 321, v3, v7);
}

uint64_t AppleBCMWLANPowerStateAdapter::configureDFRTSLogicAnd(uint64_t ***a1)
{
  v2 = OUTLINED_FUNCTION_0_7(a1);
  (*(v3 + 112))(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Failed to Configure DFRTS (%s)\n", v5, v6, v7);
}

uint64_t AppleBCMWLANPowerStateAdapter::handleDFRTSConfigAsyncCallBack(uint64_t ***a1)
{
  v2 = OUTLINED_FUNCTION_0_7(a1);
  (*(v3 + 112))(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Failed to set DFRTS (%s)\n", v5, v6, v7);
}

uint64_t AppleBCMWLANPowerStateAdapter::disableDFRTS(uint64_t ***a1)
{
  v2 = OUTLINED_FUNCTION_0_7(a1);
  (*(v3 + 112))(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Failed to Configure DFRTS (%s)\n", v5, v6, v7);
}

uint64_t AppleBCMWLANPowerStateAdapter::setExcessPMAlertParams(uint64_t ***a1, uint64_t a2, int a3)
{
  v4 = (*a1)[2];
  v5 = OUTLINED_FUNCTION_1_0(*a1);
  v8 = *v7;
  v10 = (*(v6 + 112))(v5, v9);
  return CCLogStream::logAlert(v4, "[dk] %s@%d:Failed to set excess_pm_percent to %d : ret %x: %s\n", "setExcessPMAlertParams", 391, v8, a3, v10);
}

uint64_t AppleBCMWLANPowerStateAdapter::configureRoamScanQuota(uint64_t ***a1, int a2, int a3)
{
  v5 = (*a1)[2];
  v6 = OUTLINED_FUNCTION_1_0(*a1);
  v8 = (*(v7 + 112))(v6);
  return CCLogStream::logAlert(v5, "[dk] %s@%d:Failed to configure pfn_roam_alert_thresh to %d: ret %x: %s\n", "configureRoamScanQuota", 433, a3, a2, v8);
}

uint64_t AppleBCMWLANLowLatencyInterface::setInterfaceEnable(uint64_t a1, uint64_t a2, char a3)
{
  v5 = (*(*a1 + 1088))(a1);
  v6 = (*(*a1 + 160))(a1);
  return CCLogStream::logAlert(v5, "[dk] %s@%d:%s: on %s isEnable %d\n", "setInterfaceEnable", 130, "virtual IOReturn AppleBCMWLANLowLatencyInterface::setInterfaceEnable(BOOL)", v6, a3 & 1);
}

uint64_t AppleBCMWLAN11beAdapter::configureMloPref(uint64_t ***a1, int a2)
{
  v3 = (*a1)[2];
  v4 = OUTLINED_FUNCTION_1_0(*a1);
  v6 = (*(v5 + 112))(v4);
  return CCLogStream::logAlert(v3, "[dk] %s@%d: mloConfigPref_t %d[%s]\n", "configureMloPref", 226, a2, v6);
}

uint64_t AppleBCMWLAN11beAdapter::setMultilinkActiveMode(uint64_t ***a1, int a2, int a3)
{
  v5 = (*a1)[2];
  v6 = OUTLINED_FUNCTION_1_0(*a1);
  v8 = (*(v7 + 112))(v6);
  return CCLogStream::logAlert(v5, "[dk] %s@%d: multilink_active mode %d[%s] set<%d> \n", "setMultilinkActiveMode", 394, a2, v8, a3);
}

uint64_t AppleBCMWLAN11beAdapter::configureMloFeaturesInit(uint64_t ***a1, uint64_t a2, uint64_t a3, int a4)
{
  v5 = (*a1)[2];
  v6 = OUTLINED_FUNCTION_1_0(*a1);
  v9 = *v8;
  v11 = *v10;
  v13 = (*(v7 + 112))(v6, v12);
  return CCLogStream::logAlert(v5, "[dk] %s@%d: mloFeaturesConfig_t mask:0x%x enab:0x%x  --> %d[%s] \n", "configureMloFeaturesInit", 417, v9, v11, a4, v13);
}

uint64_t AppleBCMWLAN11beAdapter::configureMlo(uint64_t a1, unsigned __int8 *a2, int a3)
{
  v5 = *(*a1 + 16);
  if (IO80211_io80211isSensitiveInfoAllowed())
  {
    v6 = *a2;
  }

  else
  {
    v6 = 0;
  }

  if (IO80211_io80211isSensitiveInfoAllowed())
  {
    v7 = a2[1];
  }

  else
  {
    v7 = 0;
  }

  if (IO80211_io80211isSensitiveInfoAllowed())
  {
    v8 = a2[2];
  }

  else
  {
    v8 = 0;
  }

  if (IO80211_io80211isSensitiveInfoAllowed())
  {
    v9 = a2[3];
  }

  else
  {
    v9 = 0;
  }

  if (IO80211_io80211isSensitiveInfoAllowed())
  {
    v10 = a2[4];
  }

  else
  {
    v10 = 0;
  }

  if (IO80211_io80211isSensitiveInfoAllowed())
  {
    v11 = a2[5];
  }

  else
  {
    v11 = 0;
  }

  return CCLogStream::logAlert(v5, "[dk] %s@%d:link id =<%d> %02x:%02x:%02x:%02x:%02x:%02x\n", "configureMlo", 194, a3, v6, v7, v8, v9, v10, v11);
}

uint64_t AppleBCMWLAN11beAdapter::dumpMloStatus(uint64_t ***a1, uint64_t a2)
{
  result = (*a1)[2];
  if (result)
  {
    result = CCLogStream::shouldLog();
    if (result)
    {
      v5 = *a1;
      v6 = (*a1)[2];
      v7 = OUTLINED_FUNCTION_1_0(v5);
      v9 = (*(v8 + 112))(v7, a2);
      return CCLogStream::logAlert(v6, "[dk] %s@%d: getMloStatus %d[%s] \n", "dumpMloStatus", 263, a2, v9);
    }
  }

  return result;
}

uint64_t AppleBCMWLAN11beAdapter::getMloContext(uint64_t ***a1, uint64_t a2)
{
  result = (*a1)[2];
  if (result)
  {
    result = CCLogStream::shouldLog();
    if (result)
    {
      v5 = *a1;
      v6 = (*a1)[2];
      v7 = OUTLINED_FUNCTION_1_0(v5);
      v9 = (*(v8 + 112))(v7, a2);
      return CCLogStream::logAlert(v6, "[dk] %s@%d: getMloContext %d [%s] \n", "getMloContext", 307, a2, v9);
    }
  }

  return result;
}

uint64_t AppleBCMWLAN11beAdapter::getMloStatus(uint64_t ***a1, uint64_t a2, _DWORD *a3)
{
  result = (*a1)[2];
  if (result)
  {
    result = CCLogStream::shouldLog();
    if (result)
    {
      v7 = *a1;
      v8 = (*a1)[2];
      v9 = OUTLINED_FUNCTION_1_0(v7);
      v11 = (*(v10 + 112))(v9, a2);
      result = CCLogStream::logAlert(v8, "[dk] %s@%d: getMloStatus %d [%s] \n", "getMloStatus", 350, a2, v11);
    }
  }

  *a3 = a2;
  return result;
}

uint64_t AppleBCMWLAN11beAdapter::getMloStatus(uint64_t a1, uint64_t a2)
{
  v3 = *(*a1 + 16);
  v4 = *(a2 + 2);
  v5 = *(a2 + 10);
  v6 = *(a2 + 11);
  if (IO80211_io80211isSensitiveInfoAllowed())
  {
    v7 = *(a2 + 4);
  }

  else
  {
    v7 = 0;
  }

  if (IO80211_io80211isSensitiveInfoAllowed())
  {
    v8 = *(a2 + 5);
  }

  else
  {
    v8 = 0;
  }

  if (IO80211_io80211isSensitiveInfoAllowed())
  {
    v9 = *(a2 + 6);
  }

  else
  {
    v9 = 0;
  }

  if (IO80211_io80211isSensitiveInfoAllowed())
  {
    v10 = *(a2 + 7);
  }

  else
  {
    v10 = 0;
  }

  if (IO80211_io80211isSensitiveInfoAllowed())
  {
    v11 = *(a2 + 8);
  }

  else
  {
    v11 = 0;
  }

  if (IO80211_io80211isSensitiveInfoAllowed())
  {
    v12 = *(a2 + 9);
  }

  else
  {
    v12 = 0;
  }

  return CCLogStream::logAlert(v3, "[dk] %s@%d:len=<%d> mode<%d>  num_links=<%d>   local mld_addr =%02x:%02x:%02x:%02x:%02x:%02x\n", "getMloStatus", 359, v4, v5, v6, v7, v8, v9, v10, v11, v12);
}

uint64_t AppleBCMWLANNANDataInterface::init(AppleBCMWLANNANDataInterface *this, AppleBCMWLANCore *a2, ether_addr *a3, unsigned int a4, char *a5)
{
  v8 = IO80211VirtualInterface::init(this, a2, a3, a4, a5);
  if (v8)
  {
    if (AppleBCMWLANCore::isHostAssignedInterfaceIndex(a2))
    {
      IO80211SkywalkInterface::setInterfaceId(this, 4u);
      AppleBCMWLANCore::setNanMgtSkywalkInterface(a2, 3u);
    }

    else
    {
      IO80211SkywalkInterface::setInterfaceId(this, 0xFFFFFFFF);
    }

    IO80211SkywalkInterface::setInterfaceRole(this, a4);
    *(*(this + 17) + 8) = a2;
    *(*(this + 17) + 24) = AppleBCMWLANCore::getCommander(a2);
    *(*(this + 17) + 32) = (*(*a2 + 1952))(a2);
    v9 = *(this + 17);
    v10 = *(v9 + 8);
    if (v10)
    {
      *(*(this + 17) + 16) = AppleBCMWLANCore::getP2PNANMgmtDataInterface(v10);
      v9 = *(this + 17);
    }

    *(v9 + 72) = 4;
    *(*(this + 17) + 160) = 0;
    *(*(this + 17) + 164) = 1;
    *(*(this + 17) + 168) = 2;
    *(*(this + 17) + 172) = 3;
  }

  return v8;
}

uint64_t AppleBCMWLANNANDataInterface::start(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  (*(v2 + 1088))(v1);
  OUTLINED_FUNCTION_9_4();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:%s: ERROR: NAN data interface parameters invalid\n", v5, v6, v7);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  (*(v2 + 1088))(v1);
  OUTLINED_FUNCTION_9_4();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:%s: ERROR: nan skywalk start fail\n", v5, v6, v7);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  (*(v2 + 1088))(v1);
  OUTLINED_FUNCTION_9_4();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:%s: ERROR: Failed to register NAN data interface with bus interface\n", v5, v6, v7);
}

uint64_t AppleBCMWLANNANDataInterface::registerInterface(uint64_t *a1, uint64_t a2, int a3)
{
  v4 = OUTLINED_FUNCTION_5_5(a1);
  v6 = (*(v5 + 1088))(v4);
  return CCLogStream::logAlert(v6, "[dk] %s@%d:NANDataInterface: media type report fail, ret[0x%08x]\n", "registerInterface", 277, a3);
}

{
  v4 = OUTLINED_FUNCTION_5_5(a1);
  v6 = (*(v5 + 1088))(v4);
  return CCLogStream::logAlert(v6, "[dk] %s@%d:NANDataInterface: set headroom fail fail, ret[0x%08x]\n", "registerInterface", 282, a3);
}

{
  v4 = OUTLINED_FUNCTION_5_5(a1);
  v6 = (*(v5 + 1088))(v4);
  return CCLogStream::logAlert(v6, "[dk] %s@%d:%s: FAILED: skywalk NAN data interface registration fail, ret[0x%08x]\n", "registerInterface", 313, "virtual BOOL AppleBCMWLANNANDataInterface::registerInterface()", a3);
}

uint64_t AppleBCMWLANNANDataInterface::stop(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1088))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:AppleBCMWLANNANDataInterface Interface Stop\n", "stop", 356);
}

uint64_t AppleBCMWLANNANDataInterface::resetInterface(uint64_t *a1)
{
  v4 = OUTLINED_FUNCTION_0_8(a1);
  (*(v5 + 1088))(v4);
  OUTLINED_FUNCTION_3_5();
  (*(v6 + 160))(v2);
  v7 = OUTLINED_FUNCTION_7_6();
  isPoweredOn = AppleBCMWLANCore::isPoweredOn(v7);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:%s Wifi Driver poweredOn %u \n", "resetInterface", 403, v1, isPoweredOn);
}

uint64_t AppleBCMWLANNANDataInterface::createNANChipInterface(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = OUTLINED_FUNCTION_0_8(a1);
  v7 = (*(v6 + 1088))(v5);
  LODWORD(a3) = AppleBCMWLANCore::getFirmwareInterfaceVersion(*(*a3 + 8));
  v8 = (*(*v3 + 160))(v3);
  return CCLogStream::logAlert(v7, "[dk] %s@%d:ALERT: NAN not supported on this FW version %u, cannot create NAN data interface %s\n", "createNANChipInterface", 523, a3, v8);
}

{
  v6 = OUTLINED_FUNCTION_0_8(a1);
  (*(v7 + 1088))(v6);
  OUTLINED_FUNCTION_3_5();
  (*(v8 + 920))(v3, a3);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logCrit(v4, "[dk] %s@%d:ERROR: Cannot create interface for NAN Data, error %s\n", v10, v11, v12);
}

uint64_t AppleBCMWLANNANDataInterface::setInterfaceEnable(uint64_t *a1)
{
  v3 = OUTLINED_FUNCTION_1_9(a1);
  (*(v4 + 1088))(v3);
  OUTLINED_FUNCTION_4_6();
  v6 = (*(v5 + 160))(v1);
  return CCLogStream::logAlert(v2, "[dk] %s@%d:%s:%d ERROR: NAN data interface %s, enable failed!\n", "setInterfaceEnable", 448, "setInterfaceEnable", 448, v6);
}

{
  v3 = OUTLINED_FUNCTION_1_9(a1);
  (*(v4 + 1088))(v3);
  OUTLINED_FUNCTION_4_6();
  v6 = (*(v5 + 160))(v1);
  return CCLogStream::logAlert(v2, "[dk] %s@%d:%s: NAN data interface %s not up yet, not enabling queues\n", "setInterfaceEnable", 452, "setInterfaceEnable", v6);
}

uint64_t AppleBCMWLANNANDataInterface::setInterfaceEnable(uint64_t *a1, uint64_t a2, char a3)
{
  v6 = OUTLINED_FUNCTION_0_8(a1);
  (*(v7 + 1088))(v6);
  OUTLINED_FUNCTION_3_5();
  v9 = (*(v8 + 160))(v3);
  v10 = "disable";
  if (a3)
  {
    v10 = "enable";
  }

  return CCLogStream::logAlert(v4, "[dk] %s@%d:%s:%d NAN Data interface %s %s\n", "setInterfaceEnable", 456, "setInterfaceEnable", 456, v9, v10);
}

uint64_t AppleBCMWLANNANDataInterface::setInterfaceEnable(uint64_t *a1, uint64_t a2, char a3, int a4)
{
  v7 = OUTLINED_FUNCTION_5_5(a1);
  v9 = (*(v8 + 1088))(v7);
  if (a3)
  {
    v10 = "Enable";
  }

  else
  {
    v10 = "Disable";
  }

  v11 = (*(*a1 + 160))(a1);
  return CCLogStream::logAlert(v9, "[dk] %s@%d:%s: %s on interface %s, ret=0x%08x\n", "setInterfaceEnable", 482, "virtual IOReturn AppleBCMWLANNANDataInterface::setInterfaceEnable(BOOL)", v10, v11, a4);
}

uint64_t AppleBCMWLANNANDataInterface::bringupLink(uint64_t *a1)
{
  v3 = OUTLINED_FUNCTION_1_9(a1);
  (*(v4 + 1088))(v3);
  OUTLINED_FUNCTION_4_6();
  v6 = (*(v5 + 160))(v1);
  isPoweredOn = AppleBCMWLANCore::isPoweredOn(*(*(v1 + 136) + 8));
  return CCLogStream::logAlert(v2, "[dk] %s@%d:Bringing up %s NAN data link, powerON %u\n", "bringupLink", 570, v6, isPoweredOn);
}

uint64_t AppleBCMWLANNANDataInterface::bringdownLink(uint64_t *a1)
{
  v3 = OUTLINED_FUNCTION_1_9(a1);
  (*(v4 + 1088))(v3);
  OUTLINED_FUNCTION_4_6();
  (*(v5 + 160))(v1);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v2, "[dk] %s@%d:Bringing down %s NAN Data link\n", v7, v8, v9);
}

uint64_t AppleBCMWLANNANDataInterface::setNAN_INIT(uint64_t *a1, uint64_t a2, int a3)
{
  v6 = OUTLINED_FUNCTION_0_8(a1);
  (*(v7 + 1088))(v6);
  OUTLINED_FUNCTION_3_5();
  v9 = (*(v8 + 160))(v3);
  return CCLogStream::logAlert(v4, "[dk] %s@%d:ERROR: Creating NAN interface %s failed, ret %d\n", "setNAN_INIT", 599, v9, a3);
}

uint64_t AppleBCMWLANNANDataInterface::setCOMPANION_SKYWALK_IF_CREATE(uint64_t *a1)
{
  v3 = OUTLINED_FUNCTION_1_9(a1);
  (*(v4 + 1088))(v3);
  OUTLINED_FUNCTION_4_6();
  (*(v5 + 160))(v1);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v2, "[dk] %s@%d:ERROR: Deletion failed, NAN companion skywalk interface does not exists for %s\n", v7, v8, v9);
}

uint64_t AppleBCMWLANNANDataInterface::setCOMPANION_SKYWALK_IF_CREATE(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = OUTLINED_FUNCTION_0_8(a1);
  v7 = (*(v6 + 1088))(v5);
  v8 = (*(**(*a3 + 48) + 160))(*(*a3 + 48));
  v9 = (*(*v3 + 160))(v3);
  return CCLogStream::logAlert(v7, "[dk] %s@%d:ALERT: NAN companion skywalk interface %s already exists for %s\n", "setCOMPANION_SKYWALK_IF_CREATE", 614, v8, v9);
}

uint64_t AppleBCMWLANNANDataInterface::setCOMPANION_SKYWALK_IF_CREATE(uint64_t *a1, uint64_t a2, const char *a3)
{
  v6 = OUTLINED_FUNCTION_0_8(a1);
  (*(v7 + 1088))(v6);
  OUTLINED_FUNCTION_3_5();
  v9 = (*(v8 + 160))(v3);
  return CCLogStream::logAlert(v4, "[dk] %s@%d:Created NAN %s companion low latency skywalk interface %s\n", "setCOMPANION_SKYWALK_IF_CREATE", 639, v9, a3);
}

uint64_t AppleBCMWLANNANDataInterface::handleEvent(uint64_t *a1, uint64_t a2, unsigned __int8 *a3, unsigned __int8 *a4)
{
  v7 = OUTLINED_FUNCTION_5_5(a1);
  v9 = (*(v8 + 1088))(v7);
  (*(*a1 + 160))(a1);
  v14 = a4[52];
  v15 = a4[49];
  v12 = *a3;
  v13 = a4[51];
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v9, v10);
}

uint64_t AppleBCMWLANNANDataInterface::setMacAddress(uint64_t *a1)
{
  v3 = OUTLINED_FUNCTION_1_9(a1);
  (*(v4 + 1088))(v3);
  OUTLINED_FUNCTION_4_6();
  (*(v5 + 160))(v1);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v2, "[dk] %s@%d:ERROR: Cannot set MAC address on %s NDI when NMI is not initialized\n", v7, v8, v9);
}

uint64_t AppleBCMWLANNANDataInterface::setMacAddress(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = OUTLINED_FUNCTION_0_8(a1);
  (*(v7 + 1088))(v6);
  OUTLINED_FUNCTION_3_5();
  v9 = (*(v8 + 160))(v3);
  v10 = (*(*v3 + 920))(v3, a3);
  return CCLogStream::logAlert(v4, "[dk] %s@%d:ERROR: cur_etheraddr failed for %s, error %s\n", "setMacAddress", 699, v9, v10);
}

uint64_t AppleBCMWLANNANDataInterface::enableDatapath(uint64_t a1, uint64_t *a2)
{
  OUTLINED_FUNCTION_8_6(a1, a2);
  v6 = v5 & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000;
  result = (*(v7 + 1088))(v8);
  if (result)
  {
    (*(*v4 + 1088))(v4);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v10 = (*(*v4 + 1088))(v4);
      result = CCLogStream::logCrit(v10, "[dk] %s@%d:tx submission queue ac %d not valid\n", "enableDatapath", 793, v3);
    }
  }

  *v2 = v6;
  return result;
}

uint64_t AppleBCMWLANNANDataInterface::enableDatapath(uint64_t *a1, uint64_t a2, int a3)
{
  v4 = OUTLINED_FUNCTION_5_5(a1);
  v6 = (*(v5 + 1088))(v4);
  return CCLogStream::logInfo(v6, "[dk] %s@%d:skywalk rx completion queue enqueue fail with return %d\n", "enableDatapath", 805, a3);
}

uint64_t AppleBCMWLANNANDataInterface::enableDatapath(uint64_t *a1)
{
  v3 = OUTLINED_FUNCTION_2_6(a1) & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000;
  result = (*(v4 + 1088))();
  if (result)
  {
    (*(*v2 + 1088))(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v6 = (*(*v2 + 1088))(v2);
      result = CCLogStream::logCrit(v6, "[dk] %s@%d:rx completion queue not valid\n", "enableDatapath", 790);
    }
  }

  *v1 = v3;
  return result;
}

{
  v3 = OUTLINED_FUNCTION_2_6(a1) & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000;
  result = (*(v4 + 1088))();
  if (result)
  {
    (*(*v2 + 1088))(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v6 = (*(*v2 + 1088))(v2);
      result = CCLogStream::logCrit(v6, "[dk] %s@%d:tx completion queue not valid\n", "enableDatapath", 787);
    }
  }

  *v1 = v3;
  return result;
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1088))(v1);
  return CCLogStream::logCrit(v3, "[dk] %s@%d:skywalk data path enable fail\n", "enableDatapath", 811);
}

uint64_t AppleBCMWLANNANDataInterface::enable(uint64_t *a1)
{
  v3 = OUTLINED_FUNCTION_1_9(a1);
  (*(v4 + 1088))(v3);
  OUTLINED_FUNCTION_4_6();
  v6 = (*(v5 + 160))(v1);
  isPoweredOn = AppleBCMWLANCore::isPoweredOn(*(*(v1 + 136) + 8));
  OUTLINED_FUNCTION_9_4();
  return CCLogStream::logAlert(v2, "[dk] %s@%d:%s: enabling NAN data interface %s, pwr %d\n", v8, v9, v10, v6, isPoweredOn);
}

uint64_t AppleBCMWLANNANDataInterface::enable(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = OUTLINED_FUNCTION_0_8(a1);
  (*(v8 + 1088))(v7);
  OUTLINED_FUNCTION_3_5();
  (*(v9 + 160))(v4);
  v10 = OUTLINED_FUNCTION_7_6();
  isPoweredOn = AppleBCMWLANCore::isPoweredOn(v10);
  isWatchdogRunning = AppleBCMWLANCore::isWatchdogRunning(*(*a3 + 8));
  return CCLogStream::logAlert(v5, "[dk] %s@%d:%s data path cannot enable, power state %d, watchdog status %d\n", "enable", 838, v3, isPoweredOn, isWatchdogRunning);
}

uint64_t AppleBCMWLANNANDataInterface::disableDatapath(uint64_t a1, uint64_t *a2)
{
  OUTLINED_FUNCTION_8_6(a1, a2);
  v6 = v5 & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000;
  result = (*(v7 + 1088))(v8);
  if (result)
  {
    (*(*v4 + 1088))(v4);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v10 = (*(*v4 + 1088))(v4);
      result = CCLogStream::logCrit(v10, "[dk] %s@%d:tx submission queue ac %d not valid\n", "disableDatapath", 853, v3);
    }
  }

  *v2 = v6;
  return result;
}

uint64_t AppleBCMWLANNANDataInterface::disableDatapath(uint64_t *a1)
{
  v3 = OUTLINED_FUNCTION_2_6(a1) & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000;
  result = (*(v4 + 1088))();
  if (result)
  {
    (*(*v2 + 1088))(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v6 = (*(*v2 + 1088))(v2);
      result = CCLogStream::logCrit(v6, "[dk] %s@%d:tx completion queue not valid\n", "disableDatapath", 864);
    }
  }

  *v1 = v3;
  return result;
}

{
  v3 = OUTLINED_FUNCTION_2_6(a1) & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000;
  result = (*(v4 + 1088))();
  if (result)
  {
    (*(*v2 + 1088))(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v6 = (*(*v2 + 1088))(v2);
      result = CCLogStream::logCrit(v6, "[dk] %s@%d:rx completion queue not valid\n", "disableDatapath", 861);
    }
  }

  *v1 = v3;
  return result;
}

{
  v3 = OUTLINED_FUNCTION_1_9(a1);
  (*(v4 + 1088))(v3);
  OUTLINED_FUNCTION_4_6();
  (*(v5 + 160))(v1);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logCrit(v2, "[dk] %s@%d:%s: skywalk data path disable fail\n", v7, v8, v9);
}

uint64_t AppleBCMWLANNANDataInterface::disable(uint64_t *a1)
{
  v3 = OUTLINED_FUNCTION_1_9(a1);
  (*(v4 + 1088))(v3);
  OUTLINED_FUNCTION_4_6();
  v6 = (*(v5 + 160))(v1);
  return CCLogStream::logAlert(v2, "[dk] %s@%d:%s: Interface %s disable\n", "disable", 877, "virtual void AppleBCMWLANNANDataInterface::disable(IOOptionBits)", v6);
}

uint64_t AppleBCMWLANNANInterface::init(AppleBCMWLANNANInterface *this, AppleBCMWLANCore *a2, ether_addr *a3, unsigned int a4, char *a5)
{
  v10 = IO80211VirtualInterface::init(this, a2, a3, a4, a5);
  if (v10)
  {
    if (AppleBCMWLANCore::isHostAssignedInterfaceIndex(a2))
    {
      IO80211SkywalkInterface::setInterfaceId(this, 3u);
      AppleBCMWLANCore::setNanMgtSkywalkInterface(a2, 3u);
    }

    else
    {
      IO80211SkywalkInterface::setInterfaceId(this, 0xFFFFFFFF);
    }

    IO80211SkywalkInterface::setInterfaceRole(this, a4);
    *(*(this + 17) + 64) = a2;
    *(*(this + 17) + 72) = AppleBCMWLANCore::getCommander(a2);
    *(*(this + 17) + 80) = (*(*a2 + 1952))(a2);
    if ((*(*this + 1088))(this))
    {
      (*(*this + 1088))(this);
      if (CCLogStream::shouldLog())
      {
        v12 = (*(*this + 1088))(this);
        InterfaceId = IO80211SkywalkInterface::getInterfaceId(this);
        InterfaceRole = IO80211SkywalkInterface::getInterfaceRole(this);
        CCLogStream::logAlert(v12, "[dk] %s@%d:%s: Initializing NAN interface %s, ifId %d, role %d, addr %02x:%02x:%02x:%02x:%02x:%02x\n", "init", 244, "virtual BOOL AppleBCMWLANNANInterface::init(AppleBCMWLANCore *, struct ether_addr *, uint32_t, char *)", a5, InterfaceId, InterfaceRole, a3->octet[0], a3->octet[1], a3->octet[2], a3->octet[3], a3->octet[4], a3->octet[5]);
      }
    }

    *(*(this + 17) + 42) = 80;
    *(*(this + 17) + 43) = 111;
    *(*(this + 17) + 44) = -102;
    *(*(this + 17) + 45) = 1;
    *(*(this + 17) + 46) = 0;
    *(*(this + 17) + 47) = 0;
    *(*(this + 17) + 5) = 6;
    *(*(this + 17) + 6) = 0;
    *(*(this + 17) + 128) = 4;
    *(*(this + 17) + 216) = 0;
    *(*(this + 17) + 220) = 1;
    *(*(this + 17) + 224) = 2;
    *(*(this + 17) + 228) = 3;
  }

  return v10;
}

uint64_t AppleBCMWLANNANInterface::start(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  (*(v2 + 1088))(v1);
  OUTLINED_FUNCTION_9_4();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:%s: ERROR: nan skywalk start fail\n", v5, v6, v7);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  (*(v2 + 1088))(v1);
  OUTLINED_FUNCTION_9_4();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:%s: ERROR: Failed to register NAN interface with bus interface\n", v5, v6, v7);
}

uint64_t AppleBCMWLANNANInterface::registerInterface(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  v4 = (*(v3 + 1088))(v2);
  return CCLogStream::logAlert(v4, "[dk] %s@%d:%s: NANInterface: media type report fail, ret[0x%08x]\n", "registerInterface", 402, "virtual BOOL AppleBCMWLANNANInterface::registerInterface()", v1);
}

{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  v4 = (*(v3 + 1088))(v2);
  return CCLogStream::logAlert(v4, "[dk] %s@%d:%s: NANInterface: set headroom fail, ret[0x%08x]\n", "registerInterface", 407, "virtual BOOL AppleBCMWLANNANInterface::registerInterface()", v1);
}

{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  v4 = (*(v3 + 1088))(v2);
  return CCLogStream::logAlert(v4, "[dk] %s@%d:%s: FAILED: skywalk NAN interface registration fail, ret[0x%08x]\n", "registerInterface", 438, "virtual BOOL AppleBCMWLANNANInterface::registerInterface()", v1);
}

uint64_t AppleBCMWLANNANInterface::stop(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1088))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:AppleBCMWLANNANInterface Interface Stop\n", "stop", 479);
}

uint64_t AppleBCMWLANNANInterface::reset(uint64_t *a1)
{
  v3 = OUTLINED_FUNCTION_1_9(a1);
  (*(v4 + 1088))(v3);
  OUTLINED_FUNCTION_4_6();
  (*(v5 + 160))(v1);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v2, "[dk] %s@%d:Resetting NAN %s Interface\n", v7, v8, v9);
}

uint64_t AppleBCMWLANNANInterface::resetInterface(uint64_t *a1)
{
  v4 = OUTLINED_FUNCTION_0_8(a1);
  (*(v5 + 1088))(v4);
  OUTLINED_FUNCTION_3_5();
  (*(v6 + 160))(v2);
  v7 = OUTLINED_FUNCTION_23_1();
  isPoweredOn = AppleBCMWLANCore::isPoweredOn(v7);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:%s Wifi Driver poweredOn %u \n", "resetInterface", 540, v1, isPoweredOn);
}

uint64_t AppleBCMWLANNANInterface::createNANChipInterface(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  (*(v3 + 1088))(v2);
  v4 = OUTLINED_FUNCTION_23_1();
  AppleBCMWLANCore::getFirmwareInterfaceVersion(v4);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:ALERT: NAN not supported on this FW version %u\n", v6, v7, v8);
}

{
  v2 = OUTLINED_FUNCTION_0_8(a1);
  (*(v3 + 1088))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 920);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:ERROR: Cannot create interface for NAN, error %s\n", v9, v10, v11);
}

uint64_t AppleBCMWLANNANInterface::setInterfaceEnable(uint64_t *a1)
{
  v3 = OUTLINED_FUNCTION_1_9(a1);
  (*(v4 + 1088))(v3);
  OUTLINED_FUNCTION_4_6();
  v6 = (*(v5 + 160))(v1);
  return CCLogStream::logAlert(v2, "[dk] %s@%d:%s:%d ERROR: NAN interface %s, enable failed!\n", "setInterfaceEnable", 577, "setInterfaceEnable", 577, v6);
}

{
  v3 = OUTLINED_FUNCTION_1_9(a1);
  (*(v4 + 1088))(v3);
  OUTLINED_FUNCTION_4_6();
  v6 = (*(v5 + 160))(v1);
  return CCLogStream::logAlert(v2, "[dk] %s@%d:%s: NAN mgmt interface %s not up yet, not enabling queues\n", "setInterfaceEnable", 581, "setInterfaceEnable", v6);
}

uint64_t AppleBCMWLANNANInterface::setInterfaceEnable(uint64_t *a1, uint64_t a2, char a3)
{
  v6 = OUTLINED_FUNCTION_0_8(a1);
  (*(v7 + 1088))(v6);
  OUTLINED_FUNCTION_3_5();
  v9 = (*(v8 + 160))(v3);
  v10 = "disable";
  if (a3)
  {
    v10 = "enable";
  }

  v16 = v9;
  v17 = v10;
  OUTLINED_FUNCTION_7_1();
  return CCLogStream::logAlert(v4, "[dk] %s@%d:%s:%d NAN interface %s %s\n", v12, v13, v14, v15, v16, v17);
}

uint64_t AppleBCMWLANNANInterface::setInterfaceEnable(uint64_t *a1, uint64_t a2, char a3, int a4)
{
  v7 = OUTLINED_FUNCTION_7_7(a1);
  v9 = (*(v8 + 1088))(v7);
  if (a3)
  {
    v10 = "Enable";
  }

  else
  {
    v10 = "Disable";
  }

  v11 = (*(*v4 + 160))(v4);
  return CCLogStream::logAlert(v9, "[dk] %s@%d:%s: %s on interface %s, ret=0x%08x\n", "setInterfaceEnable", 611, "virtual IOReturn AppleBCMWLANNANInterface::setInterfaceEnable(BOOL)", v10, v11, a4);
}

uint64_t AppleBCMWLANNANInterface::setMacAddress(uint64_t *a1)
{
  v3 = OUTLINED_FUNCTION_0_8(a1);
  (*(v4 + 1088))(v3);
  OUTLINED_FUNCTION_3_5();
  v6 = (*(v5 + 160))(v1);
  v7 = *(*v1 + 920);
  v8 = OUTLINED_FUNCTION_16_2();
  v10 = v9(v8);
  return CCLogStream::logAlert(v2, "[dk] %s@%d:ERROR: cur_etheraddr failed for %s, error %s\n", "setMacAddress", 697, v6, v10);
}

uint64_t AppleBCMWLANNANInterface::setNAN_InterfaceAddr(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1088))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:ERROR: Unable to set NAN interface address\n", "setNAN_InterfaceAddr", 4392);
}

uint64_t AppleBCMWLANNANInterface::bringupLink(uint64_t *a1)
{
  v3 = OUTLINED_FUNCTION_1_9(a1);
  (*(v4 + 1088))(v3);
  OUTLINED_FUNCTION_4_6();
  v6 = (*(v5 + 160))(v1);
  isPoweredOn = AppleBCMWLANCore::isPoweredOn(*(*(v1 + 136) + 64));
  return CCLogStream::logAlert(v2, "[dk] %s@%d:Bringing up %s NAN link, powerON %u\n", "bringupLink", 708, v6, isPoweredOn);
}

uint64_t AppleBCMWLANNANInterface::bringdownLink(uint64_t *a1)
{
  v3 = OUTLINED_FUNCTION_1_9(a1);
  (*(v4 + 1088))(v3);
  OUTLINED_FUNCTION_4_6();
  (*(v5 + 160))(v1);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v2, "[dk] %s@%d:Bringing down %s NAN link\n", v7, v8, v9);
}

uint64_t AppleBCMWLANNANInterface::disableNAN(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1088))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:ERROR: Unable to set NAN enable to 0\n", "disableNAN", 4240);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1088))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Disabling btc slotted bss policy\n", "disableNAN", 4244);
}

uint64_t AppleBCMWLANNANInterface::handleEvent(uint64_t *a1, uint64_t a2, unsigned __int8 *a3, unsigned __int8 *a4)
{
  v8 = OUTLINED_FUNCTION_7_7(a1);
  (*(v9 + 1088))(v8);
  OUTLINED_FUNCTION_28_1();
  (*(v10 + 160))(v4);
  v15 = a4[52];
  v16 = a4[49];
  v13 = *a3;
  v14 = a4[51];
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v5, v11);
}

uint64_t AppleBCMWLANNANInterface::handleEvent(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1088))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d: ERROR: Boundary condition detected\n", "handleEvent", 919);
}

uint64_t AppleBCMWLANNANInterface::handleEventNANStateChanged(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1088))(v1);
  OUTLINED_FUNCTION_12_3();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:ERROR: xtlv type 0x%x mismatch with event\n", "handleEventNANStateChanged", 952, v5);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1088))(v1);
  return CCLogStream::logInfo(v3, "[dk] %s@%d:Event: NAN State changed \n", "handleEventNANStateChanged", 966);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1088))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d: ERROR: Boundary condition detected\n", "handleEventNANStateChanged", 964);
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1088))(v1);
  OUTLINED_FUNCTION_12_3();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:ERROR: Invalid xtlv length %d \n", "handleEventNANStateChanged", 958, v5);
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1088))(v1);
  OUTLINED_FUNCTION_15_4();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:ERROR: Invalid event data length %d \n", "handleEventNANStateChanged", 944, v5);
}

uint64_t AppleBCMWLANNANInterface::handleEventNANClusterIDChanged(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1088))(v1);
  OUTLINED_FUNCTION_12_3();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:ERROR: xtlv type 0x%x mismatch with event\n", "handleEventNANClusterIDChanged", 1060, v5);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1088))(v1);
  return CCLogStream::logInfo(v3, "[dk] %s@%d:Event: NAN Cluster changed \n", "handleEventNANClusterIDChanged", 1074);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1088))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d: ERROR: Boundary condition detected\n", "handleEventNANClusterIDChanged", 1072);
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1088))(v1);
  OUTLINED_FUNCTION_12_3();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:ERROR: Invalid xtlv length %d \n", "handleEventNANClusterIDChanged", 1066, v5);
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1088))(v1);
  OUTLINED_FUNCTION_15_4();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:ERROR: Invalid event data length %d \n", "handleEventNANClusterIDChanged", 1052, v5);
}

uint64_t AppleBCMWLANNANInterface::handleEventNANPublishReplied(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1088))(v1);
  OUTLINED_FUNCTION_12_3();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:ERROR: xtlv type 0x%x mismatch with event\n", "handleEventNANPublishReplied", 1125, v5);
}

{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  v4 = (*(v3 + 1088))(v2);
  return CCLogStream::logAlert(v4, "[dk] %s@%d:%d: ERROR: Invalid event data length %d \n", "handleEventNANPublishReplied", 1119, 1119, *v1);
}

{
  v1 = OUTLINED_FUNCTION_5_6(a1);
  (*(v2 + 1088))(v1);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_25_1();
  return CCLogStream::logInfo(v3, "[dk] %s@%d:Event: NAN Publish (%d) Replied to subscriber %02x:%02x:%02x:%02x:%02x:%02x \n", "handleEventNANPublishReplied", 1149, v5, v6, v7, v8, v9, v10, v11);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1088))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d: ERROR: Boundary condition detected\n", "handleEventNANPublishReplied", 1158);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1088))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d: ERROR: Boundary condition detected\n", "handleEventNANPublishReplied", 1164);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1088))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d: ERROR: Boundary condition detected\n", "handleEventNANPublishReplied", 1163);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1088))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d: ERROR: Boundary condition detected\n", "handleEventNANPublishReplied", 1159);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1088))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d: ERROR: Boundary condition detected\n", "handleEventNANPublishReplied", 1136);
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1088))(v1);
  OUTLINED_FUNCTION_12_3();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:ERROR: Invalid xtlv length %d \n", "handleEventNANPublishReplied", 1131, v5);
}

{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  v4 = (*(v3 + 1088))(v2);
  return CCLogStream::logAlert(v4, "[dk] %s@%d:%d: ERROR: Invalid event data length %d \n", "handleEventNANPublishReplied", 1091, 1091, *v1);
}

uint64_t AppleBCMWLANNANInterface::handleEventNANPublishTerminated(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1088))(v1);
  OUTLINED_FUNCTION_12_3();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:ERROR: xtlv type 0x%x mismatch with event\n", "handleEventNANPublishTerminated", 1185, v5);
}

{
  v3 = OUTLINED_FUNCTION_5_6(a1);
  v5 = (*(v4 + 1088))(v3);
  return CCLogStream::logAlert(v5, "[dk] %s@%d:Event: NAN Publish %d Terminated, reason %d\n", "handleEventNANPublishTerminated", 1204, *v2, *(v1 + 53));
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1088))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d: ERROR: Boundary condition detected\n", "handleEventNANPublishTerminated", 1196);
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1088))(v1);
  OUTLINED_FUNCTION_12_3();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:ERROR: Invalid xtlv length %d \n", "handleEventNANPublishTerminated", 1191, v5);
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1088))(v1);
  OUTLINED_FUNCTION_15_4();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:ERROR: Invalid event data length %d \n", "handleEventNANPublishTerminated", 1177, v5);
}

uint64_t AppleBCMWLANNANInterface::handleEventNANSubscribeTerminated(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1088))(v1);
  OUTLINED_FUNCTION_12_3();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:ERROR: xtlv type 0x%x mismatch with event\n", "handleEventNANSubscribeTerminated", 1315, v5);
}

{
  v3 = OUTLINED_FUNCTION_5_6(a1);
  v5 = (*(v4 + 1088))(v3);
  return CCLogStream::logAlert(v5, "[dk] %s@%d:Event: NAN Subscribe %d Terminated, reason %d\n", "handleEventNANSubscribeTerminated", 1333, *v2, *(v1 + 53));
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1088))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d: ERROR: Boundary condition detected\n", "handleEventNANSubscribeTerminated", 1326);
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1088))(v1);
  OUTLINED_FUNCTION_12_3();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:ERROR: Invalid xtlv length %d \n", "handleEventNANSubscribeTerminated", 1321, v5);
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1088))(v1);
  OUTLINED_FUNCTION_15_4();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:ERROR: Invalid event data length %d \n", "handleEventNANSubscribeTerminated", 1307, v5);
}

uint64_t AppleBCMWLANNANInterface::handleEventNANDiscoveryResultReceived(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1088))(v1);
  OUTLINED_FUNCTION_12_3();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:ERROR: xtlv type 0x%x mismatch with event\n", "handleEventNANDiscoveryResultReceived", 1255, v5);
}

{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  v4 = (*(v3 + 1088))(v2);
  return CCLogStream::logAlert(v4, "[dk] %s@%d:%d: ERROR: Invalid event data length %d \n", "handleEventNANDiscoveryResultReceived", 1249, 1249, *v1);
}

{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  (*(v3 + 1088))(v2);
  v4 = v1[5];
  v5 = v1[6];
  v6 = v1[7];
  v7 = v1[8];
  v8 = v1[9];
  v9 = v1[10];
  v10 = v1[11];
  OUTLINED_FUNCTION_25_1();
  return CCLogStream::logInfo(v11, "[dk] %s@%d:Event: NAN discovery result for subscribe id = %d, publisher %02x:%02x:%02x:%02x:%02x:%02x\n", "handleEventNANDiscoveryResultReceived", 1278, v13, v14, v15, v16, v17, v18, v19);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1088))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d: ERROR: Boundary condition detected\n", "handleEventNANDiscoveryResultReceived", 1288);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1088))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d: ERROR: Boundary condition detected\n", "handleEventNANDiscoveryResultReceived", 1294);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1088))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d: ERROR: Boundary condition detected\n", "handleEventNANDiscoveryResultReceived", 1293);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1088))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d: ERROR: Boundary condition detected\n", "handleEventNANDiscoveryResultReceived", 1289);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1088))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d: ERROR: Boundary condition detected\n", "handleEventNANDiscoveryResultReceived", 1266);
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1088))(v1);
  OUTLINED_FUNCTION_12_3();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:ERROR: Invalid xtlv length %d \n", "handleEventNANDiscoveryResultReceived", 1261, v5);
}

{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  v4 = (*(v3 + 1088))(v2);
  return CCLogStream::logAlert(v4, "[dk] %s@%d:%d: ERROR: Invalid event data length %d \n", "handleEventNANDiscoveryResultReceived", 1221, 1221, *v1);
}

uint64_t AppleBCMWLANNANInterface::handleEventNANFollowupReceived(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1088))(v1);
  OUTLINED_FUNCTION_12_3();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:ERROR: xtlv type 0x%x mismatch with event\n", "handleEventNANFollowupReceived", 1385, v5);
}

{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  v4 = (*(v3 + 1088))(v2);
  return CCLogStream::logAlert(v4, "[dk] %s@%d:%d: ERROR: Invalid event data length %d \n", "handleEventNANFollowupReceived", 1379, 1379, *v1);
}

{
  v2 = OUTLINED_FUNCTION_5_6(a1);
  (*(v3 + 1088))(v2);
  OUTLINED_FUNCTION_27_1();
  v4 = *(v1 + 11);
  OUTLINED_FUNCTION_13();
  return CCLogStream::logAlert(v5, "[dk] %s@%d:Followup for instance %d received from %02x:%02x:%02x:%02x:%02x:%02x, instance %d\n", "handleEventNANFollowupReceived", 1410, v7, v8, v9, v10, v11, v12, v13, v14);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1088))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d: ERROR: Boundary condition detected\n", "handleEventNANFollowupReceived", 1420);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1088))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d: ERROR: Boundary condition detected\n", "handleEventNANFollowupReceived", 1426);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1088))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d: ERROR: Boundary condition detected\n", "handleEventNANFollowupReceived", 1425);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1088))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d: ERROR: Boundary condition detected\n", "handleEventNANFollowupReceived", 1421);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1088))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d: ERROR: Boundary condition detected\n", "handleEventNANFollowupReceived", 1396);
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1088))(v1);
  OUTLINED_FUNCTION_12_3();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:ERROR: Invalid xtlv length %d \n", "handleEventNANFollowupReceived", 1391, v5);
}

{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  v4 = (*(v3 + 1088))(v2);
  return CCLogStream::logAlert(v4, "[dk] %s@%d:%d: ERROR: Invalid event data length %d \n", "handleEventNANFollowupReceived", 1351, 1351, *v1);
}

uint64_t AppleBCMWLANNANInterface::handleNANEventNAFTxComplete(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1088))(v1);
  OUTLINED_FUNCTION_12_3();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:ERROR: xtlv type 0x%x mismatch with event\n", "handleNANEventNAFTxComplete", 1507, v5);
}

{
  v3 = OUTLINED_FUNCTION_5_6(a1);
  v5 = (*(v4 + 1088))(v3);
  v6 = v5;
  v7 = *(v2 + 54);
  v8 = *v1;
  if (v8 == 1)
  {
    v9 = "SUCCESS";
  }

  else
  {
    v9 = "FAILURE";
  }

  v10 = *(v2 + 53);
  v11 = *(v2 + 56);
  v12 = AppleBCMWLANNANInterface::stringForFrameType(v5, v11);
  return CCLogStream::logAlert(v6, "[dk] %s@%d:NAN Action Frame completed for token %d status %s (%x), reason %x, frame type %s (%x)\n", "handleNANEventNAFTxComplete", 1523, v7, v9, v8, v10, v12, v11);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1088))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d: ERROR: Boundary condition detected\n", "handleNANEventNAFTxComplete", 1555);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1088))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d: ERROR: Boundary condition detected\n", "handleNANEventNAFTxComplete", 1580);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1088))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d: ERROR: Boundary condition detected\n", "handleNANEventNAFTxComplete", 1573);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1088))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d: ERROR: Boundary condition detected\n", "handleNANEventNAFTxComplete", 1567);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1088))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d: ERROR: Boundary condition detected\n", "handleNANEventNAFTxComplete", 1561);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1088))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d: ERROR: Boundary condition detected\n", "handleNANEventNAFTxComplete", 1518);
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1088))(v1);
  OUTLINED_FUNCTION_12_3();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:ERROR: Invalid xtlv length %d \n", "handleNANEventNAFTxComplete", 1513, v5);
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1088))(v1);
  OUTLINED_FUNCTION_15_4();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:ERROR: Invalid event data length %d \n", "handleNANEventNAFTxComplete", 1499, v5);
}

uint64_t AppleBCMWLANNANInterface::handleNANEventBeaconReceived(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1088))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d: ERROR: Boundary condition detected\n", "handleNANEventBeaconReceived", 1649);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1088))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d: ERROR: Boundary condition detected\n", "handleNANEventBeaconReceived", 1673);
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1088))(v1);
  OUTLINED_FUNCTION_12_3();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:ERROR: xtlv type 0x%x mismatch with event\n", "handleNANEventBeaconReceived", 1676, v5);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1088))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d: ERROR: Boundary condition detected\n", "handleNANEventBeaconReceived", 1700);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1088))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:copy nan beacon frame fail\n", "handleNANEventBeaconReceived", 1728);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1088))(v1);
  return CCLogStream::logCrit(v3, "[dk] %s@%d:action packet not avaialbe from pool\n", "handleNANEventBeaconReceived", 1722);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1088))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d: ERROR: Boundary condition detected\n", "handleNANEventBeaconReceived", 1707);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1088))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d: ERROR: Boundary condition detected\n", "handleNANEventBeaconReceived", 1706);
}

{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  v4 = (*(v3 + 1088))(v2);
  return CCLogStream::logAlert(v4, "[dk] %s@%d:handleActionFrame_v1_rx: invalid event msg len=%u, expect at least %lu\n", "handleNANEventBeaconReceived", 1645, *v1, 24);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1088))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d: ERROR: Boundary condition detected\n", "handleNANEventBeaconReceived", 1632);
}

{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  v4 = (*(v3 + 1088))(v2);
  return CCLogStream::logAlert(v4, "[dk] %s@%d:Invalid event msg len=%u, expect at least %lu\n", "handleNANEventBeaconReceived", 1622, *v1, 16);
}

uint64_t AppleBCMWLANNANInterface::handleNANEventPeerDataPathIndication(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1088))(v1);
  OUTLINED_FUNCTION_12_3();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:ERROR: xtlv type 0x%x mismatch with event\n", "handleNANEventPeerDataPathIndication", 1841, v5);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1088))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d: ERROR: Boundary condition detected\n", "handleNANEventPeerDataPathIndication", 1860);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1088))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d: ERROR: Boundary condition detected\n", "handleNANEventPeerDataPathIndication", 1897);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1088))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d: ERROR: Boundary condition detected\n", "handleNANEventPeerDataPathIndication", 1900);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1088))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d: ERROR: Boundary condition detected\n", "handleNANEventPeerDataPathIndication", 1906);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1088))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d: ERROR: Boundary condition detected\n", "handleNANEventPeerDataPathIndication", 1911);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1088))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d: ERROR: Boundary condition detected\n", "handleNANEventPeerDataPathIndication", 1891);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1088))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d: ERROR: Boundary condition detected\n", "handleNANEventPeerDataPathIndication", 1852);
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1088))(v1);
  OUTLINED_FUNCTION_12_3();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:ERROR: Invalid xtlv length %d \n", "handleNANEventPeerDataPathIndication", 1847, v5);
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1088))(v1);
  OUTLINED_FUNCTION_15_4();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:ERROR: Invalid event data length %d \n", "handleNANEventPeerDataPathIndication", 1832, v5);
}

uint64_t AppleBCMWLANNANInterface::handleNANEventPeerDataPathResponse(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1088))(v1);
  OUTLINED_FUNCTION_12_3();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:ERROR: xtlv type 0x%x mismatch with event\n", "handleNANEventPeerDataPathResponse", 1932, v5);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1088))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d: ERROR: Boundary condition detected\n", "handleNANEventPeerDataPathResponse", 1951);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1088))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d: ERROR: Boundary condition detected\n", "handleNANEventPeerDataPathResponse", 1992);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1088))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d: ERROR: Boundary condition detected\n", "handleNANEventPeerDataPathResponse", 1997);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1088))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d: ERROR: Boundary condition detected\n", "handleNANEventPeerDataPathResponse", 1982);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1088))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d: ERROR: Boundary condition detected\n", "handleNANEventPeerDataPathResponse", 1943);
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1088))(v1);
  OUTLINED_FUNCTION_12_3();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:ERROR: Invalid xtlv length %d \n", "handleNANEventPeerDataPathResponse", 1938, v5);
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1088))(v1);
  OUTLINED_FUNCTION_15_4();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:ERROR: Invalid event data length %d \n", "handleNANEventPeerDataPathResponse", 1923, v5);
}

uint64_t AppleBCMWLANNANInterface::handleNANEventPeerDataPathConfirm(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1088))(v1);
  OUTLINED_FUNCTION_12_3();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:ERROR: xtlv type 0x%x mismatch with event\n", "handleNANEventPeerDataPathConfirm", 2017, v5);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1088))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d: ERROR: Boundary condition detected\n", "handleNANEventPeerDataPathConfirm", 2031);
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1088))(v1);
  OUTLINED_FUNCTION_12_3();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:ERROR: optional xtlv type 0x%x mismatch with event\n", "handleNANEventPeerDataPathConfirm", 2033, v5);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1088))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d: ERROR: Boundary condition detected\n", "handleNANEventPeerDataPathConfirm", 2063);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1088))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d: ERROR: Boundary condition detected\n", "handleNANEventPeerDataPathConfirm", 2064);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1088))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d: ERROR: Boundary condition detected\n", "handleNANEventPeerDataPathConfirm", 2067);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1088))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d: ERROR: Boundary condition detected\n", "handleNANEventPeerDataPathConfirm", 2068);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1088))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d: ERROR: Boundary condition detected\n", "handleNANEventPeerDataPathConfirm", 2083);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1088))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d: ERROR: Boundary condition detected\n", "handleNANEventPeerDataPathConfirm", 2082);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1088))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:ERROR: Invalid TLV len\n", "handleNANEventPeerDataPathConfirm", 2076);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1088))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d: ERROR: Boundary condition detected\n", "handleNANEventPeerDataPathConfirm", 2058);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1088))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d: ERROR: Boundary condition detected\n", "handleNANEventPeerDataPathConfirm", 2028);
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1088))(v1);
  OUTLINED_FUNCTION_12_3();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:ERROR: Invalid xtlv length %d \n", "handleNANEventPeerDataPathConfirm", 2023, v5);
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1088))(v1);
  OUTLINED_FUNCTION_15_4();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:ERROR: Invalid event data length %d \n", "handleNANEventPeerDataPathConfirm", 2009, v5);
}

uint64_t AppleBCMWLANNANInterface::handleNANEventDataPathEstablished(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1088))(v1);
  OUTLINED_FUNCTION_12_3();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:ERROR: xtlv type 0x%x mismatch with event\n", "handleNANEventDataPathEstablished", 1753, v5);
}

{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  (*(v3 + 1088))(v2);
  v4 = v1[68];
  v5 = v1[69];
  v6 = v1[70];
  v7 = v1[71];
  v8 = v1[72];
  v9 = v1[73];
  v10 = v1[56];
  v11 = v1[57];
  v30 = v1[66];
  v31 = v1[67];
  v28 = v1[64];
  v29 = v1[65];
  v26 = v1[62];
  v27 = v1[63];
  v24 = v1[60];
  v25 = v1[61];
  v22 = v1[58];
  v23 = v1[59];
  OUTLINED_FUNCTION_13();
  return CCLogStream::logAlert(v12, "[dk] %s@%d:Data Path Established with %02x:%02x:%02x:%02x:%02x:%02x, initiator %02x:%02x:%02x:%02x:%02x:%02x, responder %02x:%02x:%02x:%02x:%02x:%02x\n", "handleNANEventDataPathEstablished", 1773, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1088))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Enabling btc slotted bss policy\n", "handleNANEventDataPathEstablished", 1783);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1088))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d: ERROR: Boundary condition detected\n", "handleNANEventDataPathEstablished", 1763);
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1088))(v1);
  OUTLINED_FUNCTION_12_3();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:ERROR: Invalid xtlv length %d \n", "handleNANEventDataPathEstablished", 1759, v5);
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1088))(v1);
  OUTLINED_FUNCTION_15_4();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:ERROR: Invalid event data length %d \n", "handleNANEventDataPathEstablished", 1745, v5);
}

uint64_t AppleBCMWLANNANInterface::handleNANEventDataPathEnd(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1088))(v1);
  OUTLINED_FUNCTION_12_3();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:ERROR: xtlv type 0x%x mismatch with event\n", "handleNANEventDataPathEnd", 1811, v5);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1088))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d: ERROR: Boundary condition detected\n", "handleNANEventDataPathEnd", 1822);
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1088))(v1);
  OUTLINED_FUNCTION_12_3();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:ERROR: Invalid xtlv length %d \n", "handleNANEventDataPathEnd", 1817, v5);
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1088))(v1);
  OUTLINED_FUNCTION_15_4();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:ERROR: Invalid event data length %d \n", "handleNANEventDataPathEnd", 1803, v5);
}

uint64_t AppleBCMWLANNANInterface::handleNANEventRangeRequestIndication(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1088))(v1);
  OUTLINED_FUNCTION_12_3();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:ERROR: xtlv type 0x%x mismatch with event\n", "handleNANEventRangeRequestIndication", 2103, v5);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1088))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d: ERROR: Boundary condition detected\n", "handleNANEventRangeRequestIndication", 2114);
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1088))(v1);
  OUTLINED_FUNCTION_12_3();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:ERROR: Invalid xtlv length %d \n", "handleNANEventRangeRequestIndication", 2109, v5);
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1088))(v1);
  OUTLINED_FUNCTION_15_4();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:ERROR: Invalid event data length %d \n", "handleNANEventRangeRequestIndication", 2095, v5);
}

uint64_t AppleBCMWLANNANInterface::handleNANEventRangeResponseIndication(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1088))(v1);
  OUTLINED_FUNCTION_12_3();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:ERROR: xtlv type 0x%x mismatch with event\n", "handleNANEventRangeResponseIndication", 2140, v5);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1088))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d: ERROR: Boundary condition detected\n", "handleNANEventRangeResponseIndication", 2151);
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1088))(v1);
  OUTLINED_FUNCTION_12_3();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:ERROR: Invalid xtlv length %d \n", "handleNANEventRangeResponseIndication", 2146, v5);
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1088))(v1);
  OUTLINED_FUNCTION_15_4();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:ERROR: Invalid event data length %d \n", "handleNANEventRangeResponseIndication", 2132, v5);
}

uint64_t AppleBCMWLANNANInterface::handleNANEventRangeReportIndication(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1088))(v1);
  OUTLINED_FUNCTION_12_3();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:ERROR: xtlv type 0x%x mismatch with event\n", "handleNANEventRangeReportIndication", 2178, v5);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1088))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d: ERROR: Boundary condition detected\n", "handleNANEventRangeReportIndication", 2189);
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1088))(v1);
  OUTLINED_FUNCTION_12_3();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:ERROR: Invalid xtlv length %d \n", "handleNANEventRangeReportIndication", 2184, v5);
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1088))(v1);
  OUTLINED_FUNCTION_15_4();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:ERROR: Invalid event data length %d \n", "handleNANEventRangeReportIndication", 2170, v5);
}

uint64_t AppleBCMWLANNANInterface::handleNANEventRangeTerminateIndication(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1088))(v1);
  OUTLINED_FUNCTION_12_3();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:ERROR: xtlv type 0x%x mismatch with event\n", "handleNANEventRangeTerminateIndication", 2217, v5);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1088))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d: ERROR: Boundary condition detected\n", "handleNANEventRangeTerminateIndication", 2228);
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1088))(v1);
  OUTLINED_FUNCTION_12_3();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:ERROR: Invalid xtlv length %d \n", "handleNANEventRangeTerminateIndication", 2223, v5);
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1088))(v1);
  OUTLINED_FUNCTION_15_4();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:ERROR: Invalid event data length %d \n", "handleNANEventRangeTerminateIndication", 2209, v5);
}

uint64_t AppleBCMWLANNANInterface::handleNANEventDWStart(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1088))(v1);
  OUTLINED_FUNCTION_12_3();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:ERROR: xtlv type 0x%x mismatch with event\n", "handleNANEventDWStart", 2256, v5);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1088))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d: ERROR: Boundary condition detected\n", "handleNANEventDWStart", 2276);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1088))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d: ERROR: Boundary condition detected\n", "handleNANEventDWStart", 2280);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1088))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d: ERROR: Boundary condition detected\n", "handleNANEventDWStart", 2267);
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1088))(v1);
  OUTLINED_FUNCTION_12_3();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:ERROR: Invalid xtlv length %d \n", "handleNANEventDWStart", 2262, v5);
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1088))(v1);
  OUTLINED_FUNCTION_15_4();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:ERROR: Invalid event data length %d \n", "handleNANEventDWStart", 2247, v5);
}

uint64_t AppleBCMWLANNANInterface::handleNANEventDWEnd(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1088))(v1);
  OUTLINED_FUNCTION_12_3();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:ERROR: xtlv type 0x%x mismatch with event\n", "handleNANEventDWEnd", 2320, v5);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1088))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d: ERROR: Boundary condition detected\n", "handleNANEventDWEnd", 2340);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1088))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d: ERROR: Boundary condition detected\n", "handleNANEventDWEnd", 2344);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1088))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d: ERROR: Boundary condition detected\n", "handleNANEventDWEnd", 2331);
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1088))(v1);
  OUTLINED_FUNCTION_12_3();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:ERROR: Invalid xtlv length %d \n", "handleNANEventDWEnd", 2326, v5);
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1088))(v1);
  OUTLINED_FUNCTION_15_4();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:ERROR: Invalid event data length %d \n", "handleNANEventDWEnd", 2311, v5);
}

uint64_t AppleBCMWLANNANInterface::handleNANEventChanBoundary(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1088))(v1);
  OUTLINED_FUNCTION_12_3();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:ERROR: xtlv type 0x%x mismatch with event\n", "handleNANEventChanBoundary", 2424, v5);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1088))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d: ERROR: Boundary condition detected\n", "handleNANEventChanBoundary", 2449);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1088))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d: ERROR: Boundary condition detected\n", "handleNANEventChanBoundary", 2494);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1088))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d: ERROR: Boundary condition detected\n", "handleNANEventChanBoundary", 2473);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1088))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d: ERROR: Boundary condition detected\n", "handleNANEventChanBoundary", 2466);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1088))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d: ERROR: Boundary condition detected\n", "handleNANEventChanBoundary", 2461);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1088))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d: ERROR: Boundary condition detected\n", "handleNANEventChanBoundary", 2455);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1088))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d: ERROR: Boundary condition detected\n", "handleNANEventChanBoundary", 2435);
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1088))(v1);
  OUTLINED_FUNCTION_12_3();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:ERROR: Invalid xtlv length %d \n", "handleNANEventChanBoundary", 2430, v5);
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1088))(v1);
  OUTLINED_FUNCTION_15_4();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:ERROR: Invalid event data length %d \n", "handleNANEventChanBoundary", 2415, v5);
}

uint64_t AppleBCMWLANNANInterface::handleEventNANMasterChanged(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1088))(v1);
  OUTLINED_FUNCTION_12_3();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:ERROR: xtlv type 0x%x mismatch with event\n", "handleEventNANMasterChanged", 990, v5);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1088))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d: ERROR: Boundary condition detected\n", "handleEventNANMasterChanged", 1015);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1088))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d: ERROR: Boundary condition detected\n", "handleEventNANMasterChanged", 1001);
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1088))(v1);
  OUTLINED_FUNCTION_12_3();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:ERROR: Invalid xtlv length %d \n", "handleEventNANMasterChanged", 996, v5);
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1088))(v1);
  OUTLINED_FUNCTION_15_4();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:ERROR: Invalid event data length %d \n", "handleEventNANMasterChanged", 981, v5);
}

uint64_t AppleBCMWLANNANInterface::handleEventNANHostAssistRequest(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1088))(v1);
  OUTLINED_FUNCTION_12_3();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:ERROR: xtlv type 0x%x mismatch with event\n", "handleEventNANHostAssistRequest", 2814, v5);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1088))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d: ERROR: Boundary condition detected\n", "handleEventNANHostAssistRequest", 2825);
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1088))(v1);
  OUTLINED_FUNCTION_12_3();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:ERROR: Invalid xtlv length %d \n", "handleEventNANHostAssistRequest", 2820, v5);
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1088))(v1);
  OUTLINED_FUNCTION_15_4();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:ERROR: Invalid event data length %d \n", "handleEventNANHostAssistRequest", 2806, v5);
}

uint64_t AppleBCMWLANNANInterface::handleEventNANPeerScheduleUpdate(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1088))(v1);
  OUTLINED_FUNCTION_12_3();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:ERROR: tlv type 0x%x mismatch with event\n", "handleEventNANPeerScheduleUpdate", 2855, v5);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1088))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d: ERROR: Boundary condition detected\n", "handleEventNANPeerScheduleUpdate", 2876);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1088))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d: ERROR: Boundary condition detected\n", "handleEventNANPeerScheduleUpdate", 2916);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1088))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d: ERROR: Boundary condition detected\n", "handleEventNANPeerScheduleUpdate", 2922);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1088))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d: ERROR: Boundary condition detected\n", "handleEventNANPeerScheduleUpdate", 2921);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1088))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d: ERROR: Boundary condition detected\n", "handleEventNANPeerScheduleUpdate", 2866);
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1088))(v1);
  OUTLINED_FUNCTION_12_3();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:ERROR: Invalid xtlv length %d \n", "handleEventNANPeerScheduleUpdate", 2861, v5);
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1088))(v1);
  OUTLINED_FUNCTION_15_4();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:ERROR: Invalid event data length %d \n", "handleEventNANPeerScheduleUpdate", 2847, v5);
}

uint64_t AppleBCMWLANNANInterface::handleEventNANFWDataPathTerminated(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1088))(v1);
  OUTLINED_FUNCTION_12_3();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:ERROR: xtlv type 0x%x mismatch with event\n", "handleEventNANFWDataPathTerminated", 2944, v5);
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1088))(v1);
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:DataPath terminated due to %s \n", v5, v6, v7);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1088))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d: ERROR: Boundary condition detected\n", "handleEventNANFWDataPathTerminated", 2955);
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1088))(v1);
  OUTLINED_FUNCTION_12_3();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:ERROR: Invalid xtlv length %d \n", "handleEventNANFWDataPathTerminated", 2950, v5);
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1088))(v1);
  OUTLINED_FUNCTION_15_4();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:ERROR: Invalid event data length %d \n", "handleEventNANFWDataPathTerminated", 2936, v5);
}

uint64_t AppleBCMWLANNANInterface::handleNANEventOobActionFrameTxStatus(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1088))(v1);
  OUTLINED_FUNCTION_12_3();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:ERROR: xtlv type 0x%x mismatch with event\n", "handleNANEventOobActionFrameTxStatus", 3047, v5);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1088))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d: ERROR: Boundary condition detected\n", "handleNANEventOobActionFrameTxStatus", 3059);
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1088))(v1);
  OUTLINED_FUNCTION_12_3();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:ERROR: Invalid xtlv length %d \n", "handleNANEventOobActionFrameTxStatus", 3054, v5);
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1088))(v1);
  OUTLINED_FUNCTION_15_4();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:ERROR: Invalid event data length %d \n", "handleNANEventOobActionFrameTxStatus", 3037, v5);
}

uint64_t AppleBCMWLANNANInterface::handleNANEventOobActionFrameRx(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1088))(v1);
  OUTLINED_FUNCTION_12_3();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:ERROR: xtlv type 0x%x mismatch with event\n", "handleNANEventOobActionFrameRx", 3123, v5);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1088))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d: ERROR: Boundary condition detected\n", "handleNANEventOobActionFrameRx", 3162);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1088))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d: ERROR: Boundary condition detected\n", "handleNANEventOobActionFrameRx", 3166);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1088))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d: ERROR: Boundary condition detected\n", "handleNANEventOobActionFrameRx", 3167);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1088))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d: ERROR: Boundary condition detected\n", "handleNANEventOobActionFrameRx", 3170);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1088))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d: ERROR: Boundary condition detected\n", "handleNANEventOobActionFrameRx", 3171);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1088))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d: ERROR: Boundary condition detected\n", "handleNANEventOobActionFrameRx", 3175);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1088))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d: ERROR: Boundary condition detected\n", "handleNANEventOobActionFrameRx", 3174);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1088))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d: ERROR: Boundary condition detected\n", "handleNANEventOobActionFrameRx", 3163);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1088))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:ERROR: AutoreleasedBuffer alloc failure\n", "handleNANEventOobActionFrameRx", 3144);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1088))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d: ERROR: Boundary condition detected\n", "handleNANEventOobActionFrameRx", 3135);
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1088))(v1);
  OUTLINED_FUNCTION_12_3();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:ERROR: Invalid xtlv length %d \n", "handleNANEventOobActionFrameRx", 3130, v5);
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1088))(v1);
  OUTLINED_FUNCTION_15_4();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:ERROR: Invalid event data length %d \n", "handleNANEventOobActionFrameRx", 3088, v5);
}

uint64_t AppleBCMWLANNANInterface::handleNANEventAuthFrameRx(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1088))(v1);
  OUTLINED_FUNCTION_12_3();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:ERROR: xtlv type 0x%x mismatch with event\n", "handleNANEventAuthFrameRx", 3202, v5);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1088))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d: ERROR: Boundary condition detected\n", "handleNANEventAuthFrameRx", 3241);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1088))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d: ERROR: Boundary condition detected\n", "handleNANEventAuthFrameRx", 3245);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1088))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d: ERROR: Boundary condition detected\n", "handleNANEventAuthFrameRx", 3246);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1088))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d: ERROR: Boundary condition detected\n", "handleNANEventAuthFrameRx", 3249);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1088))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d: ERROR: Boundary condition detected\n", "handleNANEventAuthFrameRx", 3250);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1088))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d: ERROR: Boundary condition detected\n", "handleNANEventAuthFrameRx", 3254);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1088))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d: ERROR: Boundary condition detected\n", "handleNANEventAuthFrameRx", 3253);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1088))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d: ERROR: Boundary condition detected\n", "handleNANEventAuthFrameRx", 3242);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1088))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:ERROR: AutoreleasedBuffer alloc failure\n", "handleNANEventAuthFrameRx", 3223);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1088))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d: ERROR: Boundary condition detected\n", "handleNANEventAuthFrameRx", 3214);
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1088))(v1);
  OUTLINED_FUNCTION_12_3();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:ERROR: Invalid xtlv length %d \n", "handleNANEventAuthFrameRx", 3209, v5);
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1088))(v1);
  OUTLINED_FUNCTION_15_4();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:ERROR: Invalid event data length %d \n", "handleNANEventAuthFrameRx", 3192, v5);
}

uint64_t AppleBCMWLANNANInterface::handelNANEventInfraAssociatioStart(uint64_t *a1)
{
  v3 = OUTLINED_FUNCTION_5_6(a1);
  v5 = (*(v4 + 1088))(v3);
  return CCLogStream::logAlert(v5, "[dk] %s@%d:Association start on channel %d bw 0x%x\n", "handelNANEventInfraAssociatioStart", 2597, *v2, *v1);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1088))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d: ERROR: Boundary condition detected\n", "handelNANEventInfraAssociatioStart", 2590);
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1088))(v1);
  OUTLINED_FUNCTION_15_4();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:ERROR: Invalid event data length %d \n", "handelNANEventInfraAssociatioStart", 2583, v5);
}

uint64_t AppleBCMWLANNANInterface::getMCS(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1088))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Unknown rpsec received from FW\n", "getMCS", 2381);
}

uint64_t AppleBCMWLANNANInterface::getTransmissionMode(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1088))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Unknown tranmission mode\n", "getTransmissionMode", 2402);
}

uint64_t AppleBCMWLANNANInterface::convertNANFWHostAssistReason(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1088))(v1);
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:ALERT: Received unknown reason code (%d) for host assist\n", v5, v6, v7);
}

uint64_t AppleBCMWLANNANInterface::handleNANIovarAsyncCallBack(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  v4 = (*(v3 + 1088))(v2);
  v5 = *v1;
  IOVARString = AppleBCMWLANNANInterface::getIOVARString(v4, v5);
  return CCLogStream::logAlert(v4, "[dk] %s@%d:ERROR: Async callback for NAN iovar command %s (%d), invalid rxPayload.cmd\n", "handleNANIovarAsyncCallBack", 3615, IOVARString, v5);
}

{
  v3 = OUTLINED_FUNCTION_5_6(a1);
  v5 = (*(v4 + 1088))(v3);
  v6 = *v2;
  IOVARString = AppleBCMWLANNANInterface::getIOVARString(v5, v6);
  return CCLogStream::logAlert(v5, "[dk] %s@%d:ERROR: Async callback for NAN command %s (0x%x) failed, return status %d (0x%x)\n", "handleNANIovarAsyncCallBack", 3623, IOVARString, v6, *v1, *v1);
}

{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  v4 = (*(v3 + 1088))(v2);
  v5 = *v1;
  IOVARString = AppleBCMWLANNANInterface::getIOVARString(v4, v5);
  return CCLogStream::logAlert(v4, "[dk] %s@%d:ERROR: Async callback for NAN iovar command %s (%d), invalid rxPayload.buffer. Bailing out...\n", "handleNANIovarAsyncCallBack", 3605, IOVARString, v5);
}

uint64_t AppleBCMWLANNANInterface::handleNANIovarAsyncCallBack(uint64_t *a1, uint64_t a2, unsigned __int16 *a3, int a4)
{
  v7 = OUTLINED_FUNCTION_7_7(a1);
  v9 = (*(v8 + 1088))(v7);
  LODWORD(a3) = *a3;
  IOVARString = AppleBCMWLANNANInterface::getIOVARString(v9, a3);
  v11 = *(*v4 + 920);
  v12 = OUTLINED_FUNCTION_33_1();
  v14 = v13(v12);
  return CCLogStream::logAlert(v9, "[dk] %s@%d:ERROR: Async callback for NAN iovar failed, command %s (0x%x), retVal %s:(0x%x)\n", "handleNANIovarAsyncCallBack", 3599, IOVARString, a3, v14, a4);
}

uint64_t AppleBCMWLANNANInterface::handleProxIovarAsyncCallBack(uint64_t *a1, uint64_t a2, const char *a3, int a4)
{
  v7 = OUTLINED_FUNCTION_7_7(a1);
  (*(v8 + 1088))(v7);
  OUTLINED_FUNCTION_34_1();
  v10 = *(v9 + 920);
  v11 = OUTLINED_FUNCTION_33_1();
  v13 = v12(v11);
  return CCLogStream::logAlert(v4, "[dk] %s@%d:ERROR: Cannot send prox iovar %s, return %s [0x%x]\n", "handleProxIovarAsyncCallBack", 3658, a3, v13, a4);
}

uint64_t AppleBCMWLANNANInterface::handleSlotBssIovarAsyncCallBack(uint64_t *a1, uint64_t a2, const char *a3, int a4)
{
  v7 = OUTLINED_FUNCTION_7_7(a1);
  (*(v8 + 1088))(v7);
  OUTLINED_FUNCTION_34_1();
  v10 = *(v9 + 920);
  v11 = OUTLINED_FUNCTION_33_1();
  v13 = v12(v11);
  return CCLogStream::logAlert(v4, "[dk] %s@%d:ERROR: Cannot send P2p Coex Protection iovar %s, return %s [0x%x]\n", "handleSlotBssIovarAsyncCallBack", 3669, a3, v13, a4);
}

uint64_t AppleBCMWLANNANInterface::issueSyncSetIOVAR(uint64_t *a1, uint64_t a2, unsigned __int16 a3)
{
  v4 = OUTLINED_FUNCTION_5_5(a1);
  v6 = (*(v5 + 1088))(v4);
  AppleBCMWLANNANInterface::getIOVARString(v6, a3);
  OUTLINED_FUNCTION_31_1();
  return CCLogStream::logAlert(v6, "[dk] %s@%d:ERROR: Set Sync NAN IOVAR %s (0x%x), return status %d (0x%x)\n", "issueSyncSetIOVAR", 3726, v8, v9, v10, v11);
}

uint64_t AppleBCMWLANNANInterface::issueSyncSetIOVAR()
{
  OUTLINED_FUNCTION_32_1();
  v2 = OUTLINED_FUNCTION_5_5(v1);
  v4 = (*(v3 + 1088))(v2);
  OUTLINED_FUNCTION_29_1(v4);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlertIf(v0, 0x4000000000uLL, "[dk] %s@%d:Failed to issue NAN set Sync IOVAR %s (%x) due to invalid length %x\n", v6, v7, v8, v9, v10);
}

uint64_t AppleBCMWLANNANInterface::runNANSetIOVAR(uint64_t *a1)
{
  v3 = OUTLINED_FUNCTION_0_9(a1);
  (*(v4 + 1088))(v3);
  OUTLINED_FUNCTION_3_5();
  v6 = *(v5 + 920);
  v7 = OUTLINED_FUNCTION_16_2();
  v9 = v8(v7);
  return CCLogStream::logAlert(v2, "[dk] %s@%d:ERROR: Unable to set NAN iovar %s (0x%x)\n", "runNANSetIOVAR", 3963, v9, v1);
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1088))(v1);
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Failed to run NAN set IOVAR due to invalid length %x\n", v5, v6, v7);
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1088))(v1);
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Failed to run NAN set IOVAR due to invalid length %x\n", v5, v6, v7);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1088))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:ERROR: NAN Chip interface not initialized, bailing out\n", "runNANSetIOVAR", 3917);
}

uint64_t AppleBCMWLANNANInterface::issueSetIOVAR()
{
  OUTLINED_FUNCTION_32_1();
  v2 = OUTLINED_FUNCTION_5_5(v1);
  v4 = (*(v3 + 1088))(v2);
  OUTLINED_FUNCTION_29_1(v4);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v0, "[dk] %s@%d:Failed to issue set IOVAR %s (%x) due to invalid length %x\n", v6, v7, v8, v9, v10);
}

uint64_t AppleBCMWLANNANInterface::sendNANSetIOVAR(uint64_t *a1)
{
  v3 = OUTLINED_FUNCTION_0_9(a1);
  (*(v4 + 1088))(v3);
  OUTLINED_FUNCTION_3_5();
  v6 = *(v5 + 920);
  v7 = OUTLINED_FUNCTION_16_2();
  v9 = v8(v7);
  return CCLogStream::logAlert(v2, "[dk] %s@%d:ERROR: Unable to set async nan iovar %s (0x%x)\n", "sendNANSetIOVAR", 3901, v9, v1);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1088))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:ERROR: IOVAR txPayload memory allocation failed\n", "sendNANSetIOVAR", 3879);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1088))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:ERROR: IOVAR context memory allocation failed\n", "sendNANSetIOVAR", 3874);
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1088))(v1);
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Failed to send NAN set IOVAR due to invalid length %x\n", v5, v6, v7);
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1088))(v1);
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Failed to send NAN set IOVAR due to invalid length %x\n", v5, v6, v7);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1088))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:ERROR: NAN Chip interface not initialized, bailing out\n", "sendNANSetIOVAR", 3846);
}

uint64_t AppleBCMWLANNANInterface::issueGetIOVAR(uint64_t *a1, uint64_t a2, unsigned __int16 a3)
{
  v4 = OUTLINED_FUNCTION_5_5(a1);
  v6 = (*(v5 + 1088))(v4);
  AppleBCMWLANNANInterface::getIOVARString(v6, a3);
  OUTLINED_FUNCTION_31_1();
  return CCLogStream::logAlert(v6, "[dk] %s@%d:ERROR: Get NAN IOVAR %s (0x%x), return status %d (0x%x)\n", "issueGetIOVAR", 3829, v8, v9, v10, v11);
}

uint64_t AppleBCMWLANNANInterface::issueGetIOVAR()
{
  OUTLINED_FUNCTION_32_1();
  v2 = OUTLINED_FUNCTION_5_5(v1);
  v4 = (*(v3 + 1088))(v2);
  OUTLINED_FUNCTION_29_1(v4);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v0, "[dk] %s@%d:Failed to issue get IOVAR %s (%x) due to invalid length %x\n", v6, v7, v8, v9, v10);
}

uint64_t AppleBCMWLANNANInterface::sendNANGetIOVAR(uint64_t *a1)
{
  v3 = OUTLINED_FUNCTION_0_9(a1);
  (*(v4 + 1088))(v3);
  OUTLINED_FUNCTION_3_5();
  v6 = *(v5 + 920);
  v7 = OUTLINED_FUNCTION_16_2();
  v9 = v8(v7);
  return CCLogStream::logAlert(v2, "[dk] %s@%d: ERROR: Unable to get nan iovar %s (0x%x)\n", "sendNANGetIOVAR", 4025, v9, v1);
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1088))(v1);
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Failed to send NAN get IOVAR due to invalid rxPayload length %x\n", v5, v6, v7);
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1088))(v1);
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Failed to send NAN get IOVAR due to invalid buf length %x\n", v5, v6, v7);
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1088))(v1);
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Failed to send NAN get IOVAR due to invalid rx length %x\n", v5, v6, v7);
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1088))(v1);
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Failed to send NAN get IOVAR due to invalid tx length %x\n", v5, v6, v7);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1088))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:ERROR: NAN Chip interface not initialized, bailing out\n", "sendNANGetIOVAR", 3977);
}

uint64_t AppleBCMWLANNANInterface::getNAN_ControlBits(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1088))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:ERROR: Unable to set NAN control bits\n", "getNAN_ControlBits", 4073);
}

uint64_t AppleBCMWLANNANInterface::setNAN_ControlBits(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1088))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:ERROR: Unable to set NAN control bits\n", "setNAN_ControlBits", 4087);
}

uint64_t AppleBCMWLANNANInterface::getNAN_ControlExtBits(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1088))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:ERROR: Unable to set NAN control-ext bits\n", "getNAN_ControlExtBits", 4107);
}

uint64_t AppleBCMWLANNANInterface::setNAN_ControlExtBits(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1088))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:ERROR: Unable to set NAN control-ext bits\n", "setNAN_ControlExtBits", 4132);
}

uint64_t AppleBCMWLANNANInterface::setNAN_EventMask(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1088))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:ERROR: Unable to set NAN event mask\n", "setNAN_EventMask", 4189);
}

uint64_t AppleBCMWLANNANInterface::getNAN_ENABLED(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1088))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d: ERROR: Unable to get NAN enable\n", "getNAN_ENABLED", 4209);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1088))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:%s: ALERT: NAN FW interface not configured yet, bailing...\n", "getNAN_ENABLED", 4203, "getNAN_ENABLED");
}

uint64_t AppleBCMWLANNANInterface::enableNAN(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1088))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:ERROR: Unable to set NAN enable to 1\n", "enableNAN", 4225);
}

uint64_t AppleBCMWLANNANInterface::setNANFwEvents(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_0_8(a1);
  (*(v3 + 1088))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 920);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:ERROR: Failure to enable NAN events, %s\n", v9, v10, v11);
}

uint64_t AppleBCMWLANNANInterface::clearNANFwEvents(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_0_8(a1);
  (*(v3 + 1088))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 920);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:ERROR: Failure to enable NAN events, %s\n", v9, v10, v11);
}

uint64_t AppleBCMWLANNANInterface::setNAN_ENABLED(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1088))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:NAN is enabled\n", "setNAN_ENABLED", 4315);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1088))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:ERROR: Failed to set nan stats duration\n", "setNAN_ENABLED", 4322);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1088))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:NAN is disabled\n", "setNAN_ENABLED", 4338);
}

uint64_t AppleBCMWLANNANInterface::setNANStatsSampleDuration(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1088))(v1);
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:ERROR: Unable to set nan stats duration %d\n", v5, v6, v7);
}

uint64_t AppleBCMWLANNANInterface::getNAN_InterfaceAddr(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1088))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:ERROR: Unable to get NAN interface address\n", "getNAN_InterfaceAddr", 4379);
}

uint64_t AppleBCMWLANNANInterface::setNAN_HOP_COUNT_TO_ANCHOR_MASTER(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1088))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:ERROR: Unable to set NAN Hop Count\n", "setNAN_HOP_COUNT_TO_ANCHOR_MASTER", 4447);
}

uint64_t AppleBCMWLANNANInterface::getNAN_HOP_COUNT_LIMIT(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1088))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:ERROR: Unable to get NAN Hop Count Limit\n", "getNAN_HOP_COUNT_LIMIT", 4461);
}

uint64_t AppleBCMWLANNANInterface::setNAN_HOP_COUNT_LIMIT(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1088))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:ERROR: Unable to set NAN Hop Count Limit\n", "setNAN_HOP_COUNT_LIMIT", 4477);
}

uint64_t AppleBCMWLANNANInterface::getNAN_WARMUP_TIME(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1088))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:ERROR: Unable to get NAN warmup time\n", "getNAN_WARMUP_TIME", 4490);
}

uint64_t AppleBCMWLANNANInterface::setNAN_WARMUP_TIME(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1088))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:ERROR: Unable to set NAN warmup time\n", "setNAN_WARMUP_TIME", 4505);
}

uint64_t AppleBCMWLANNANInterface::getNAN_RSSI_CLOSE(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1088))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:ERROR: Unable to get NAN Rssi Close\n", "getNAN_RSSI_CLOSE", 4557);
}

uint64_t AppleBCMWLANNANInterface::setNAN_RSSI_CLOSE(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1088))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:ERROR: Unable to set NAN Rssi Close\n", "setNAN_RSSI_CLOSE", 4581);
}

uint64_t AppleBCMWLANNANInterface::getNAN_RSSI_MIDDLE(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1088))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:ERROR: Unable to get NAN Rssi Mid\n", "getNAN_RSSI_MIDDLE", 4600);
}

uint64_t AppleBCMWLANNANInterface::setNAN_RSSI_MIDDLE(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1088))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:ERROR: Unable to set NAN Rssi Mid\n", "setNAN_RSSI_MIDDLE", 4624);
}

uint64_t AppleBCMWLANNANInterface::getNAN_RSSI_5G_CLOSE(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1088))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:ERROR: Unable to get NAN Rssi 5G Close\n", "getNAN_RSSI_5G_CLOSE", 4643);
}

uint64_t AppleBCMWLANNANInterface::setNAN_RSSI_5G_CLOSE(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1088))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:ERROR: Unable to set NAN Rssi 5G Close\n", "setNAN_RSSI_5G_CLOSE", 4667);
}

uint64_t AppleBCMWLANNANInterface::getNAN_RSSI_5G_MIDDLE(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1088))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:ERROR: Unable to get NAN Rssi 5G Mid\n", "getNAN_RSSI_5G_MIDDLE", 4686);
}

uint64_t AppleBCMWLANNANInterface::setNAN_RSSI_5G_MIDDLE(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1088))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:ERROR: Unable to set NAN Rssi 5G Mid\n", "setNAN_RSSI_5G_MIDDLE", 4710);
}

uint64_t AppleBCMWLANNANInterface::getNAN_MAX_PEERS(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1088))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:ERROR: Unable to get NAN max num of peers\n", "getNAN_MAX_PEERS", 4775);
}

uint64_t AppleBCMWLANNANInterface::setNAN_MAX_PEERS(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1088))(v1);
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:ERROR: Unable to set NAN max num of peers to %d\n", v5, v6, v7);
}

uint64_t AppleBCMWLANNANInterface::getNAN_CLUSTER_ID(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1088))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:ERROR: Unable to get NAN clusterId\n", "getNAN_CLUSTER_ID", 4808);
}

uint64_t AppleBCMWLANNANInterface::setNAN_CLUSTER_ID(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1088))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:ERROR: Unable to set NAN clusterId\n", "setNAN_CLUSTER_ID", 4830);
}

uint64_t AppleBCMWLANNANInterface::getNAN_ElectionMetric(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1088))(v1);
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:ERROR: Unable to get NAN election metric, ret %d\n", v5, v6, v7);
}

uint64_t AppleBCMWLANNANInterface::setNAN_ElectionMetric(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1088))(v1);
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:ERROR: Unable to set NAN election metric, ret %d\n", v5, v6, v7);
}

uint64_t AppleBCMWLANNANInterface::getNAN_MASTER_PREFERENCE(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1088))(v1);
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:ERROR: Unable to get NAN master pref, ret = %d\n", v5, v6, v7);
}

uint64_t AppleBCMWLANNANInterface::setNAN_MASTER_PREFERENCE(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1088))(v1);
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:ERROR: Unable to set NAN master pref, ret = %d\n", v5, v6, v7);
}

uint64_t AppleBCMWLANNANInterface::getNAN_RANDOM_FACTOR(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1088))(v1);
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:ERROR: Unable to get NAN random factor, ret = %d\n", v5, v6, v7);
}

uint64_t AppleBCMWLANNANInterface::setNAN_RANDOM_FACTOR(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1088))(v1);
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:ERROR: Unable to set NAN random factor, ret = %d\n", v5, v6, v7);
}

uint64_t AppleBCMWLANNANInterface::getNAN_RANDOM_FACTOR_ROTATION(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1088))(v1);
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:ERROR: Unable to get NAN random factor rotation, ret = %d\n", v5, v6, v7);
}

uint64_t AppleBCMWLANNANInterface::setNAN_RANDOM_FACTOR_ROTATION(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1088))(v1);
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:ERROR: Unable to set NAN random factor rotation, ret = %d\n", v5, v6, v7);
}

uint64_t AppleBCMWLANNANInterface::getNAN_HOST_ELECTION(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1088))(v1);
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:ERROR: Unable to get NAN host election, ret = %d\n", v5, v6, v7);
}

uint64_t AppleBCMWLANNANInterface::setNAN_HOST_ELECTION(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1088))(v1);
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:ERROR: Unable to set NAN host election, ret = %d\n", v5, v6, v7);
}

uint64_t AppleBCMWLANNANInterface::getNAN_DEVICE_INFO(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1088))(v1);
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:ERROR: Unable to get NAN device state, ret = %d\n", v5, v6, v7);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1088))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:ALERT: NAN FW interface not configured yet, bailing...\n", "getNAN_DEVICE_INFO", 5160);
}

uint64_t AppleBCMWLANNANInterface::getNAN_DISC_BCN_PERIOD(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1088))(v1);
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:ERROR: Unable to get NAN discovery beacon period, ret = %d\n", v5, v6, v7);
}

uint64_t AppleBCMWLANNANInterface::getNAN_DW_AWAKE_PERIOD(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1088))(v1);
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:ERROR: Unable to get NAN dw awake period for 2.4/5GHz, ret = %d\n", v5, v6, v7);
}

uint64_t AppleBCMWLANNANInterface::setNAN_DW_AWAKE_PERIOD(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1088))(v1);
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:ERROR: Unable to set NAN dw awake period for 2.4/5GHz, ret = %d\n", v5, v6, v7);
}

uint64_t AppleBCMWLANNANInterface::getNAN_MASTER_CHANNEL(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1088))(v1);
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:ERROR: Unable to get NAN primary master channel, ret = %d\n", v5, v6, v7);
}

uint64_t AppleBCMWLANNANInterface::getNAN_FwCapability(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1088))(v1);
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:ERROR: Unable to get NAN Fw Capability, ret = %d\n", v5, v6, v7);
}

{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  v4 = (*(v3 + 1088))(v2);
  return CCLogStream::logAlert(v4, "[dk] %s@%d:Nan-FwCapability XTLV Id=0x%0x XTLV Len:%0x\n ", "getNAN_FwCapability", 5319, *v1, v1[1]);
}

uint64_t AppleBCMWLANNANInterface::getNAN_deviceCapability(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1088))(v1);
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:ERROR: Unable to get NAN Fw Capability, ret = %d\n", v5, v6, v7);
}

{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  v4 = (*(v3 + 1088))(v2);
  return CCLogStream::logAlert(v4, "[dk] %s@%d: Nan-FwCapability XTLV Id=0x%0x XTLV Len:%0x\n ", "getNAN_deviceCapability", 5373, *v1, v1[1]);
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1088))(v1);
  OUTLINED_FUNCTION_15_4();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Nan-FwCapability Flag1=0x%0x\n ", "getNAN_deviceCapability", 5377, v5);
}

uint64_t AppleBCMWLANNANInterface::getNAN_SECONDARY_MASTER_CHANNEL(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1088))(v1);
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:ERROR: Unable to get NAN secondary master channel, ret = %d\n", v5, v6, v7);
}

uint64_t AppleBCMWLANNANInterface::setNAN_PUBLISH(uint64_t *a1)
{
  v3 = OUTLINED_FUNCTION_5_6(a1);
  v5 = (*(v4 + 1088))(v3);
  return CCLogStream::logAlert(v5, "[dk] %s@%d:Publish-GTK: fNANGTKenable:%d, control:%x, set CFG_SEC_GTK_CSID \n", "setNAN_PUBLISH", 5744, *(*v2 + 92), *v1);
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1088))(v1);
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:ERROR: Unable to set NAN publish, ret = %d\n", v5, v6, v7);
}

uint64_t AppleBCMWLANNANInterface::getNAN_PUBLISHED_SERVICE_LIST(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1088))(v1);
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:ERROR: Unable to get NAN publish list, ret = %d\n", v5, v6, v7);
}

uint64_t AppleBCMWLANNANInterface::setNAN_SUBSCRIBE(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  v4 = (*(v3 + 1088))(v2);
  return CCLogStream::logAlert(v4, "[dk] %s@%d:ERROR: SRF filter count %d greater than max %d\n", "setNAN_SUBSCRIBE", 5940, *v1, 16);
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1088))(v1);
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:ERROR: Unable to set NAN subscribe, ret = %d\n", v5, v6, v7);
}

uint64_t AppleBCMWLANNANInterface::getNAN_SUBSCRIBED_SERVICE_LIST(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1088))(v1);
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:ERROR: Unable to get NAN subscribe list, ret = %d\n", v5, v6, v7);
}

{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  v4 = (*(v3 + 1088))(v2);
  return CCLogStream::logAlert(v4, "[dk] %s@%d:ERROR: Invalid servicelist length:%u, max length: %u\n", "getNAN_SUBSCRIBED_SERVICE_LIST", 6184, *v1, 254);
}

uint64_t AppleBCMWLANNANInterface::setNAN_FOLLOW_UP_TRANSMIT(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1088))(v1);
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:ERROR: Unable to set NAN followup transmit, ret = %d\n", v5, v6, v7);
}

uint64_t AppleBCMWLANNANInterface::getNAN_SERVICE_DISCOVERY_STATS(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1088))(v1);
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:ERROR: Unable to get NAN service discovery statistics, ret = %d\n", v5, v6, v7);
}

uint64_t AppleBCMWLANNANInterface::getNAN_ADVERTISERS(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1088))(v1);
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:ERROR: Unable to get NAN sync advertisers, ret = %d\n", v5, v6, v7);
}

uint64_t AppleBCMWLANNANInterface::setNAN_INIT(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1088))(v1);
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:ERROR: Creating NAN interface failed, ret %d\n", v5, v6, v7);
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1088))(v1);
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:ERROR: Init NAN failed, ret %d\n", v5, v6, v7);
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1088))(v1);
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:ERROR: Getting NAN conig-control failed, ret %d\n", v5, v6, v7);
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1088))(v1);
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:ERROR: Setting NAN conig-control failed, ret %d\n", v5, v6, v7);
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1088))(v1);
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:ERROR: Getting NAN conig-control-ext failed, ret %d\n", v5, v6, v7);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1088))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:HostPairing/enableGTK is enabled: setting NAN config-control-ext for xGTKs\n", "setNAN_INIT", 6527);
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1088))(v1);
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:ERROR: Setting NAN conig-control-ext failed, ret %d\n", v5, v6, v7);
}

uint64_t AppleBCMWLANNANInterface::setNAN_COMMITTED_AVAILABILITY(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  (*(v2 + 1088))(v1);
  OUTLINED_FUNCTION_7_1();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:%s:%u ERROR: Invalid length\n", v5, v6, v7, v8);
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1088))(v1);
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:ERROR: Unable to set the NAN committed availability, ret = %d\n", v5, v6, v7);
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1088))(v1);
  OUTLINED_FUNCTION_26_1();
  return CCLogStream::logCrit(v3, "[dk] %s@%d:ERROR: Num Channel Entries (%d) is larger than expected (16). Returning Error. \n", "setNAN_COMMITTED_AVAILABILITY", 6624, v5);
}

{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  v4 = (*(v3 + 1088))(v2);
  return CCLogStream::logCrit(v4, "[dk] %s@%d: MapId %d larger than max of %d \n", "setNAN_COMMITTED_AVAILABILITY", 6602, *v1, 2);
}

uint64_t AppleBCMWLANNANInterface::setNAN_RemoveCommittedAvailability(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1088))(v1);
  OUTLINED_FUNCTION_9_4();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Removing map %d from NAN availability\n", v5, v6, v7);
}

uint64_t AppleBCMWLANNANInterface::buildNAN_CommittedAvailability(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  (*(v2 + 1088))(v1);
  OUTLINED_FUNCTION_7_1();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:%s:%u ERROR: Invalid length\n", v5, v6, v7, v8);
}

{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  v4 = (*(v3 + 1088))(v2);
  return CCLogStream::logCrit(v4, "[dk] %s@%d:ERROR: Num Entries %d larger than max of %d \n", "buildNAN_CommittedAvailability", 6702, *v1, 16);
}

{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  v4 = (*(v3 + 1088))(v2);
  return CCLogStream::logCrit(v4, "[dk] %s@%d:ERROR: MapId %d larger than max of %d \n", "buildNAN_CommittedAvailability", 6696, v1, 2);
}

uint64_t AppleBCMWLANNANInterface::setNAN_POTENTIAL_AVAILABILITYInternal(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  (*(v2 + 1088))(v1);
  OUTLINED_FUNCTION_7_1();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:%s:%u ERROR: Invalid length\n", v5, v6, v7, v8);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  (*(v2 + 1088))(v1);
  OUTLINED_FUNCTION_7_1();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:%s:%u ERROR: Invalid length\n", v5, v6, v7, v8);
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1088))(v1);
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:ERROR: Unable to set the NAN potential availability, ret = %d\n", v5, v6, v7);
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1088))(v1);
  OUTLINED_FUNCTION_26_1();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:ERROR: Invalid number of maps %d \n", "setNAN_POTENTIAL_AVAILABILITYInternal", 6804, v5);
}

uint64_t AppleBCMWLANNANInterface::setNAN_NDC_AVAILABILITY(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1088))(v1);
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Removing NDC availability for id %d", v5, v6, v7);
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1088))(v1);
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:ERROR: Unable to set the NAN Data cluster availability, ret = %d\n", v5, v6, v7);
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1088))(v1);
  OUTLINED_FUNCTION_26_1();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:ERROR: Invalid number of maps %d \n", "setNAN_NDC_AVAILABILITY", 6902, v5);
}

uint64_t AppleBCMWLANNANInterface::setNAN_IMMUTABLE_AVAILABILITY(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1088))(v1);
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:ERROR: Unable to set the NAN immutable availability, ret = %d\n", v5, v6, v7);
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1088))(v1);
  OUTLINED_FUNCTION_26_1();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:ERROR: Invalid number of maps %d \n", "setNAN_IMMUTABLE_AVAILABILITY", 6977, v5);
}

uint64_t AppleBCMWLANNANInterface::setNAN_RANGING_AVAILABILITY(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1088))(v1);
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:ERROR: Unable to set the NAN ranging availability, ret = %d\n", v5, v6, v7);
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1088))(v1);
  OUTLINED_FUNCTION_26_1();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:ERROR: Invalid number of maps %d \n", "setNAN_RANGING_AVAILABILITY", 7039, v5);
}

uint64_t AppleBCMWLANNANInterface::getNAN_DEVICE_CAPABILITY(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1088))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:ERROR: Unable to get the txchain iovar\n", "getNAN_DEVICE_CAPABILITY", 7100);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1088))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:ERROR: Unable to get the rxchain iovar\n", "getNAN_DEVICE_CAPABILITY", 7107);
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1088))(v1);
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logInfo(v3, "[dk] %s@%d:Nan host pairing enabled, Chip %u\n", v5, v6, v7);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1088))(v1);
  return CCLogStream::logInfo(v3, "[dk] %s@%d:disbaling nan host pairing, Chip %u\n", "getNAN_DEVICE_CAPABILITY", 7155, 4378);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1088))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:ERROR: OnThread cannot issue sync iovars\n", "getNAN_DEVICE_CAPABILITY", 7093);
}

uint64_t AppleBCMWLANNANInterface::setNAN_DP_REQ(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1088))(v1);
  OUTLINED_FUNCTION_26_1();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:cipher_suite_ids (%d)\n", "setNAN_DP_REQ", 7190, v5);
}

{
  v3 = OUTLINED_FUNCTION_5_6(a1);
  v5 = (*(v4 + 1088))(v3);
  return CCLogStream::logAlert(v5, "[dk] %s@%d:DPReq-GTK: fNANGTKenable:%d, gtk_required:%d, set SEC_GTK_CSID(5) \n", "setNAN_DP_REQ", 7306, *(*v2 + 92), *v1);
}

{
  v3 = OUTLINED_FUNCTION_0_9(a1);
  (*(v4 + 1088))(v3);
  OUTLINED_FUNCTION_3_5();
  v6 = *(v5 + 920);
  v7 = OUTLINED_FUNCTION_16_2();
  v9 = v8(v7);
  return CCLogStream::logAlert(v2, "[dk] %s@%d:ERROR: Unable to set NAN DP request %s (%d)\n", "setNAN_DP_REQ", 7361, v9, v1);
}

uint64_t AppleBCMWLANNANInterface::setNAN_DP_RESP(uint64_t *a1)
{
  v3 = OUTLINED_FUNCTION_0_9(a1);
  (*(v4 + 1088))(v3);
  OUTLINED_FUNCTION_3_5();
  v6 = *(v5 + 920);
  v7 = OUTLINED_FUNCTION_16_2();
  v9 = v8(v7);
  return CCLogStream::logAlert(v2, "[dk] %s@%d:ERROR: Unable to set NAN DP response %s (%d)\n", "setNAN_DP_RESP", 7488, v9, v1);
}

uint64_t AppleBCMWLANNANInterface::setNAN_DP_END(uint64_t *a1)
{
  v3 = OUTLINED_FUNCTION_0_9(a1);
  (*(v4 + 1088))(v3);
  OUTLINED_FUNCTION_3_5();
  v6 = *(v5 + 920);
  v7 = OUTLINED_FUNCTION_16_2();
  v9 = v8(v7);
  return CCLogStream::logAlert(v2, "[dk] %s@%d:ERROR: Unable to set NAN DP terminate %s (%d)\n", "setNAN_DP_END", 7507, v9, v1);
}

uint64_t AppleBCMWLANNANInterface::setNAN_DP_CONF(uint64_t *a1)
{
  v3 = OUTLINED_FUNCTION_0_9(a1);
  (*(v4 + 1088))(v3);
  OUTLINED_FUNCTION_3_5();
  v6 = *(v5 + 920);
  v7 = OUTLINED_FUNCTION_16_2();
  v9 = v8(v7);
  return CCLogStream::logAlert(v2, "[dk] %s@%d:ERROR: Unable to set NAN DP confirm %s (%d)\n", "setNAN_DP_CONF", 7528, v9, v1);
}

uint64_t AppleBCMWLANNANInterface::setNAN_RANGING_REQUEST(uint64_t *a1)
{
  v3 = OUTLINED_FUNCTION_0_9(a1);
  (*(v4 + 1088))(v3);
  OUTLINED_FUNCTION_3_5();
  v6 = *(v5 + 920);
  v7 = OUTLINED_FUNCTION_16_2();
  v9 = v8(v7);
  return CCLogStream::logAlert(v2, "[dk] %s@%d:ERROR: Unable to set NAN Range request %s (%d)\n", "setNAN_RANGING_REQUEST", 7561, v9, v1);
}

uint64_t AppleBCMWLANNANInterface::setNAN_RANGING_RESPONSE(uint64_t *a1)
{
  v3 = OUTLINED_FUNCTION_0_9(a1);
  (*(v4 + 1088))(v3);
  OUTLINED_FUNCTION_3_5();
  v6 = *(v5 + 920);
  v7 = OUTLINED_FUNCTION_16_2();
  v9 = v8(v7);
  return CCLogStream::logAlert(v2, "[dk] %s@%d:ERROR: Unable to set NAN Range auto response %s (%d)\n", "setNAN_RANGING_RESPONSE", 7578, v9, v1);
}

uint64_t AppleBCMWLANNANInterface::setNAN_RANGING_CANCEL()
{
  OUTLINED_FUNCTION_32_1();
  v3 = OUTLINED_FUNCTION_7_7(v2);
  (*(v4 + 1088))(v3);
  OUTLINED_FUNCTION_28_1();
  v6 = *(v5 + 920);
  v7 = OUTLINED_FUNCTION_33_1();
  v13 = v8(v7);
  OUTLINED_FUNCTION_9_4();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:ERROR: Unable to set NAN Cancel Range Id =%d, %s (%d)\n", v10, v11, v12, v13, v0);
}

uint64_t AppleBCMWLANNANInterface::setNAN_VENDOR_PAYLOAD(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1088))(v1);
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:ERROR: Could not set vendor specific attribute, issueSetIOVAR failed with retVal [ %d ]\n", v5, v6, v7);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1088))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:ERROR: Could not issue setIOVAR for vendor specific attribute; Invalid parameters", "setNAN_VENDOR_PAYLOAD", 7625);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1088))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:ALERT: Host pairing is supported, payload could be large to fit in a beacon, bailing out", "setNAN_VENDOR_PAYLOAD", 7619);
}

uint64_t AppleBCMWLANNANInterface::setNAN_VENDOR_PAYLOAD_COMPACT(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1088))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:ALERT: Host pairing is not supported, ignoring compact payload", "setNAN_VENDOR_PAYLOAD_COMPACT", 7665);
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1088))(v1);
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:ERROR: Could not set vendor specific attribute, issueSetIOVAR failed with retVal [ %d ]\n", v5, v6, v7);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  (*(v2 + 1088))(v1);
  OUTLINED_FUNCTION_7_1();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:%s:%d AllocationFailure\n", v5, v6, v7, v8);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1088))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:ERROR: Could not issue setNAN_VENDOR_PAYLOAD_COMPACT for vendor specific attribute; Invalid parameters", "setNAN_VENDOR_PAYLOAD_COMPACT", 7671);
}

uint64_t AppleBCMWLANNANInterface::setNAN_ADDITIONAL_ATTR(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1088))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Host pairing is not supported, ignoring additional attributes\n", "setNAN_ADDITIONAL_ATTR", 7713);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  (*(v2 + 1088))(v1);
  OUTLINED_FUNCTION_7_1();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:%s:%d attrLen is 0\n", v5, v6, v7, v8);
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1088))(v1);
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:ERROR: Could not set additional attribute, issueSetIOVAR failed with retVal [ %d ]\n", v5, v6, v7);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  (*(v2 + 1088))(v1);
  OUTLINED_FUNCTION_7_1();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:%s:%d AllocationFailure\n", v5, v6, v7, v8);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1088))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Could not issue setIOVAR for vendor specific attribute; Invalid parameters\n", "setNAN_ADDITIONAL_ATTR", 7719);
}

uint64_t AppleBCMWLANNANInterface::setNAN_SCHEDULE_UPDATE(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1088))(v1);
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:ERROR: Unable to set NAN schedule update, ret = %d\n", v5, v6, v7);
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1088))(v1);
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:ERROR: Unable to set NAN schedule update, ret = %d\n", v5, v6, v7);
}

uint64_t AppleBCMWLANNANInterface::setNAN_ELECTION_ROLE(uint64_t *a1)
{
  v3 = OUTLINED_FUNCTION_0_9(a1);
  (*(v4 + 1088))(v3);
  OUTLINED_FUNCTION_3_5();
  v6 = *(v5 + 920);
  v7 = OUTLINED_FUNCTION_16_2();
  v9 = v8(v7);
  return CCLogStream::logAlert(v2, "[dk] %s@%d:ERROR: Unable to set NAN Election Params %s (%d)\n", "setNAN_ELECTION_ROLE", 7857, v9, v1);
}

uint64_t AppleBCMWLANNANInterface::setNAN_FAST_DISCOVERY(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1088))(v1);
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:ERROR: Setting NAN conig-control failed, ret %d\n", v5, v6, v7);
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1088))(v1);
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:ERROR: Unable to set the NAN immutable availability, ret = %d\n", v5, v6, v7);
}

uint64_t AppleBCMWLANNANInterface::setNAN_DATA_PATH_RESTORE(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  (*(v2 + 1088))(v1);
  OUTLINED_FUNCTION_7_1();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:%s:%u In here\n", v5, v6, v7, v8);
}

{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  (*(v3 + 1088))(v2);
  v10 = *v1;
  v11 = v1[1];
  OUTLINED_FUNCTION_7_1();
  return CCLogStream::logAlert(v4, "[dk] %s@%d:%s:%u peerInfoCount:%u, ndpInfoLen:%u \n", v6, v7, v8, v9, v10, v11);
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1088))(v1);
  OUTLINED_FUNCTION_3_0();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:%s:%d Unexpected tagId in cmd:%u\n", v5, v6, v7, v8, v9);
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1088))(v1);
  OUTLINED_FUNCTION_3_0();
  return CCLogStream::logInfo(v3, "[dk] %s@%d:%s:%u writeBufferLen:%u \n", v5, v6, v7, v8, v9);
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1088))(v1);
  OUTLINED_FUNCTION_3_0();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:%s:%d ERROR: Unexpected tagId in cmd:%u\n", v5, v6, v7, v8, v9);
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1088))(v1);
  OUTLINED_FUNCTION_3_0();
  return CCLogStream::logInfo(v3, "[dk] %s@%d:%s:%u cmdBufLen:%u \n", v5, v6, v7, v8, v9);
}

{
  v3 = OUTLINED_FUNCTION_0_9(a1);
  (*(v4 + 1088))(v3);
  OUTLINED_FUNCTION_3_5();
  v6 = *(v5 + 920);
  v7 = OUTLINED_FUNCTION_16_2();
  v9 = v8(v7);
  return CCLogStream::logAlert(v2, "[dk] %s@%d:ERROR: Unable to set NAN NSR Params %s (%d)\n", "setNAN_DATA_PATH_RESTORE", 8049, v9, v1);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  (*(v2 + 1088))(v1);
  OUTLINED_FUNCTION_7_1();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:%s:%u nanDpRestoreCmdData is NULL! \n", v5, v6, v7, v8);
}

uint64_t AppleBCMWLANNANInterface::setCOMPANION_SKYWALK_IF_CREATE(uint64_t *a1)
{
  v3 = OUTLINED_FUNCTION_1_9(a1);
  (*(v4 + 1088))(v3);
  OUTLINED_FUNCTION_4_6();
  (*(v5 + 160))(v1);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v2, "[dk] %s@%d:ERROR: Deletion failed, NAN companion skywalk interface does not exists for %s\n", v7, v8, v9);
}

uint64_t AppleBCMWLANNANInterface::setCOMPANION_SKYWALK_IF_CREATE(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = OUTLINED_FUNCTION_0_8(a1);
  v7 = (*(v6 + 1088))(v5);
  v8 = OUTLINED_FUNCTION_5_0(*(*a3 + 96));
  v10 = (*(v9 + 160))(v8);
  v11 = (*(*v3 + 160))(v3);
  return CCLogStream::logAlert(v7, "[dk] %s@%d:ALERT: NAN companion skywalk interface %s already exists for %s\n", "setCOMPANION_SKYWALK_IF_CREATE", 8065, v10, v11);
}

uint64_t AppleBCMWLANNANInterface::setCOMPANION_SKYWALK_IF_CREATE(uint64_t *a1, uint64_t a2, const char *a3)
{
  v6 = OUTLINED_FUNCTION_0_8(a1);
  (*(v7 + 1088))(v6);
  OUTLINED_FUNCTION_3_5();
  v9 = (*(v8 + 160))(v3);
  return CCLogStream::logAlert(v4, "[dk] %s@%d:Created NAN %s companion low latency skywalk interface %s\n", "setCOMPANION_SKYWALK_IF_CREATE", 8091, v9, a3);
}

uint64_t AppleBCMWLANNANInterface::setNANLLW_PARAMSCallback(uint64_t *a1, uint64_t a2, uint64_t a3, const char *a4)
{
  v8 = OUTLINED_FUNCTION_7_7(a1);
  (*(v9 + 1088))(v8);
  OUTLINED_FUNCTION_28_1();
  v11 = (*(v10 + 920))(v4, a3);
  return CCLogStream::logAlert(v5, "[dk] %s@%d: ERROR: Cannot set llwParams (%s): %s\n", "setNANLLW_PARAMSCallback", 8109, a4, v11);
}

uint64_t AppleBCMWLANNANInterface::setNAN_LLW_PARAMS()
{
  OUTLINED_FUNCTION_4();
  v3 = OUTLINED_FUNCTION_14_3(v2);
  result = (*(v4 + 1088))(v3);
  if (result)
  {
    OUTLINED_FUNCTION_19_1();
    (*(v6 + 1088))(v1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      OUTLINED_FUNCTION_19_1();
      v8 = (*(v7 + 1088))(v1);
      result = CCLogStream::logAlert(v8, "[dk] %s@%d:FW does not support llw", "setNAN_LLW_PARAMS", 8147);
    }
  }

  *v0 = 711;
  return result;
}

{
  OUTLINED_FUNCTION_4();
  v3 = OUTLINED_FUNCTION_14_3(v2);
  result = (*(v4 + 1088))(v3);
  if (result)
  {
    OUTLINED_FUNCTION_19_1();
    (*(v6 + 1088))(v1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      OUTLINED_FUNCTION_19_1();
      v8 = (*(v7 + 1088))(v1);
      result = CCLogStream::logAlert(v8, "[dk] %s@%d:bad argument\n", "setNAN_LLW_PARAMS", 8148);
    }
  }

  *v0 = 706;
  return result;
}

uint64_t AppleBCMWLANNANInterface::setNAN_LLW_PARAMS(uint64_t *a1, int a2, _DWORD *a3)
{
  v6 = OUTLINED_FUNCTION_5_0(a1);
  result = (*(v7 + 1088))(v6);
  if (result)
  {
    (*(*a1 + 1088))(a1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v9 = (*(*a1 + 1088))(a1);
      result = CCLogStream::logAlert(v9, "[dk] %s@%d:hp2p set iovar failed\n", "setNAN_LLW_PARAMS", 8256);
    }
  }

  *a3 = a2;
  return result;
}

uint64_t AppleBCMWLANNANInterface::setNAN_LLW_PARAMS(uint64_t *a1)
{
  v4 = OUTLINED_FUNCTION_13_3(a1);
  result = (*(v5 + 1088))(v4);
  if (result)
  {
    OUTLINED_FUNCTION_19_1();
    (*(v7 + 1088))(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      OUTLINED_FUNCTION_19_1();
      v9 = (*(v8 + 1088))(v2);
      result = CCLogStream::logAlert(v9, "[dk] %s@%d:hp2p cmd alloc fail\n", "setNAN_LLW_PARAMS", 8149);
    }
  }

  *v1 = v3;
  return result;
}

uint64_t AppleBCMWLANNANInterface::getHP2P_PARAMS()
{
  OUTLINED_FUNCTION_4();
  v3 = OUTLINED_FUNCTION_14_3(v2);
  result = (*(v4 + 1088))(v3);
  if (result)
  {
    OUTLINED_FUNCTION_19_1();
    (*(v6 + 1088))(v1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      OUTLINED_FUNCTION_19_1();
      v8 = (*(v7 + 1088))(v1);
      result = CCLogStream::logAlert(v8, "[dk] %s@%d:FW does not support llw", "getHP2P_PARAMS", 8321);
    }
  }

  *v0 = 711;
  return result;
}

{
  OUTLINED_FUNCTION_4();
  v3 = OUTLINED_FUNCTION_5_0(v2);
  result = (*(v4 + 1088))(v3);
  if (result)
  {
    OUTLINED_FUNCTION_19_1();
    (*(v6 + 1088))(v1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      OUTLINED_FUNCTION_19_1();
      v8 = (*(v7 + 1088))(v1);
      result = CCLogStream::logAlert(v8, "[dk] %s@%d:Unexpected hp2p subcmd resp length\n", "getHP2P_PARAMS", 8439);
    }
  }

  *v0 = -536870911;
  return result;
}

uint64_t AppleBCMWLANNANInterface::getHP2P_PARAMS(uint64_t *a1, int a2, _DWORD *a3)
{
  v6 = OUTLINED_FUNCTION_5_0(a1);
  result = (*(v7 + 1088))(v6);
  if (result)
  {
    (*(*a1 + 1088))(a1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v9 = (*(*a1 + 1088))(a1);
      result = CCLogStream::logAlert(v9, "[dk] %s@%d:hp2p get iovar failed\n", "getHP2P_PARAMS", 8355);
    }
  }

  *a3 = a2;
  return result;
}

uint64_t AppleBCMWLANNANInterface::getHP2P_PARAMS(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1088))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Unexpected hp2p subcmd resp id\n", "getHP2P_PARAMS", 8437);
}

{
  v4 = OUTLINED_FUNCTION_13_3(a1);
  result = (*(v5 + 1088))(v4);
  if (result)
  {
    OUTLINED_FUNCTION_19_1();
    (*(v7 + 1088))(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      OUTLINED_FUNCTION_19_1();
      v9 = (*(v8 + 1088))(v2);
      result = CCLogStream::logAlert(v9, "[dk] %s@%d:hp2p cmd resp alloc fail\n", "getHP2P_PARAMS", 8323);
    }
  }

  *v1 = v3;
  return result;
}

{
  v4 = OUTLINED_FUNCTION_13_3(a1);
  result = (*(v5 + 1088))(v4);
  if (result)
  {
    OUTLINED_FUNCTION_19_1();
    (*(v7 + 1088))(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      OUTLINED_FUNCTION_19_1();
      v9 = (*(v8 + 1088))(v2);
      result = CCLogStream::logAlert(v9, "[dk] %s@%d:hp2p cmd alloc fail\n", "getHP2P_PARAMS", 8322);
    }
  }

  *v1 = v3;
  return result;
}

uint64_t AppleBCMWLANNANInterface::setNAN_OOB_AF_TX(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1088))(v1);
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:ERROR: Could not set OOB action frame, issueSetIOVAR failed with retVal:%d\n", v5, v6, v7);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1088))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:ERROR: Could not allocate memory for wl_nan_oob_af_t\n", "setNAN_OOB_AF_TX", 8509);
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1088))(v1);
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:ERROR: Could not set OOB action frame, issueSetIOVAR failed with retVal:%d\n", v5, v6, v7);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1088))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:ERROR: Could not allocate memory for wl_nan_oob_af_t\n", "setNAN_OOB_AF_TX", 8462);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1088))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:ERROR: Could not issue setIOVAR for vendor specific attribute; Invalid parameters", "setNAN_OOB_AF_TX", 8452);
}

uint64_t AppleBCMWLANNANInterface::setAWDL_DFSP_CONFIG(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_0_8(a1);
  (*(v3 + 1088))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 920);
  v6 = OUTLINED_FUNCTION_16_2();
  v8 = v7(v6);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:%s: Could not Enable DFS Proxy mode. Error code  %s\n", "setAWDL_DFSP_CONFIG", 8574, "setAWDL_DFSP_CONFIG", v8);
}

{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  v4 = (*(v3 + 1088))(v2);
  if (*v1)
  {
    v5 = "Enabled";
  }

  else
  {
    v5 = "Disabled";
  }

  return CCLogStream::logAlert(v4, "[dk] %s@%d:%s: DFSP DFS Proxy Mode %s\n", "setAWDL_DFSP_CONFIG", 8577, "setAWDL_DFSP_CONFIG", v5);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1088))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:ERROR: NAN Chip interface not initialized, bailing out\n", "setAWDL_DFSP_CONFIG", 8548);
}

uint64_t AppleBCMWLANNANInterface::setP2P_COEX_PROTECTION_2G_Only(uint64_t *a1)
{
  v3 = OUTLINED_FUNCTION_0_9(a1);
  (*(v4 + 1088))(v3);
  OUTLINED_FUNCTION_3_5();
  v6 = *(v5 + 920);
  v7 = OUTLINED_FUNCTION_16_2();
  v9 = v8(v7);
  return CCLogStream::logAlert(v2, "[dk] %s@%d:ERROR: Unable to set async nan iovar %s (0x%x)\n", "setP2P_COEX_PROTECTION_2G_Only", 8627, v9, v1);
}

uint64_t AppleBCMWLANNANInterface::setP2P_COEX_PROTECTION(uint64_t *a1)
{
  v3 = OUTLINED_FUNCTION_0_9(a1);
  (*(v4 + 1088))(v3);
  OUTLINED_FUNCTION_3_5();
  v6 = *(v5 + 920);
  v7 = OUTLINED_FUNCTION_16_2();
  v9 = v8(v7);
  return CCLogStream::logAlert(v2, "[dk] %s@%d:ERROR: Unable to set P2p Coex Protection %s (0x%x)\n", "setP2P_COEX_PROTECTION", 8710, v9, v1);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1088))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:ERROR: NAN Chip interface not initialized, bailing out\n", "setP2P_COEX_PROTECTION", 8637);
}

uint64_t AppleBCMWLANNANInterface::enableDatapath(uint64_t *a1)
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
      v6 = (*(*v1 + 160))(v1);
      return CCLogStream::logAlert(v5, "[dk] %s@%d:%s %s failed because interface has not been enabled yet\n", "enableDatapath", 8785, v6, "enableDatapath");
    }
  }

  return result;
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1088))(v1);
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logInfo(v3, "[dk] %s@%d:skywalk rx completion queue enqueue fail with return %d\n", v5, v6, v7);
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
      return CCLogStream::logAlert(v5, "[dk] %s@%d:rx completion queue not valid\n", "enableDatapath", 8790);
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
      return CCLogStream::logAlert(v5, "[dk] %s@%d:tx completion queue not valid\n", "enableDatapath", 8787);
    }
  }

  return result;
}

{
  v3 = OUTLINED_FUNCTION_1_9(a1);
  (*(v4 + 1088))(v3);
  OUTLINED_FUNCTION_4_6();
  v6 = (*(v5 + 160))(v1);
  return CCLogStream::logAlert(v2, "[dk] %s@%d:%s:%d ERROR: Enabling data path on %s\n", "enableDatapath", 8806, "virtual IOReturn AppleBCMWLANNANInterface::enableDatapath()", 8806, v6);
}

uint64_t AppleBCMWLANNANInterface::enableDatapath(uint64_t a1, uint64_t *a2)
{
  OUTLINED_FUNCTION_30_1(a1, a2);
  result = (*(v3 + 1088))(v4);
  if (result)
  {
    (*(*v2 + 1088))(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      (*(*v2 + 1088))(v2);
      OUTLINED_FUNCTION_11_3();
      return CCLogStream::logAlert(v6, "[dk] %s@%d:tx submission queue ac %d not valid\n", v7, v8, v9);
    }
  }

  return result;
}

uint64_t AppleBCMWLANNANInterface::enable(uint64_t *a1)
{
  v3 = OUTLINED_FUNCTION_1_9(a1);
  (*(v4 + 1088))(v3);
  OUTLINED_FUNCTION_4_6();
  v6 = (*(v5 + 160))(v1);
  isPoweredOn = AppleBCMWLANCore::isPoweredOn(*(*(v1 + 136) + 64));
  OUTLINED_FUNCTION_9_4();
  return CCLogStream::logAlert(v2, "[dk] %s@%d:%s: enabling NAN interface %s, pwr %d\n", v8, v9, v10, v6, isPoweredOn);
}

uint64_t AppleBCMWLANNANInterface::enable(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = OUTLINED_FUNCTION_0_8(a1);
  (*(v8 + 1088))(v7);
  OUTLINED_FUNCTION_3_5();
  (*(v9 + 160))(v4);
  v10 = OUTLINED_FUNCTION_23_1();
  isPoweredOn = AppleBCMWLANCore::isPoweredOn(v10);
  isWatchdogRunning = AppleBCMWLANCore::isWatchdogRunning(*(*a3 + 64));
  return CCLogStream::logAlert(v5, "[dk] %s@%d:%s data path cannot enable, power state %d, watchdog status %d\n", "enable", 8833, v3, isPoweredOn, isWatchdogRunning);
}

uint64_t AppleBCMWLANNANInterface::disableDatapath(uint64_t *a1)
{
  v3 = OUTLINED_FUNCTION_1_9(a1);
  (*(v4 + 1088))(v3);
  OUTLINED_FUNCTION_4_6();
  (*(v5 + 160))(v1);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v2, "[dk] %s@%d:disable data path on %s\n", v7, v8, v9);
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
      return CCLogStream::logCrit(v5, "[dk] %s@%d:tx completion queue not valid\n", "disableDatapath", 8894);
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
      return CCLogStream::logCrit(v5, "[dk] %s@%d:rx completion queue not valid\n", "disableDatapath", 8891);
    }
  }

  return result;
}

{
  v3 = OUTLINED_FUNCTION_1_9(a1);
  (*(v4 + 1088))(v3);
  OUTLINED_FUNCTION_4_6();
  (*(v5 + 160))(v1);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logCrit(v2, "[dk] %s@%d:%s: skywalk data path disable fail\n", v7, v8, v9);
}

uint64_t AppleBCMWLANNANInterface::disableDatapath(uint64_t a1, uint64_t *a2)
{
  OUTLINED_FUNCTION_30_1(a1, a2);
  result = (*(v3 + 1088))(v4);
  if (result)
  {
    (*(*v2 + 1088))(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      (*(*v2 + 1088))(v2);
      OUTLINED_FUNCTION_11_3();
      return CCLogStream::logCrit(v6, "[dk] %s@%d:tx submission queue ac %d not valid\n", v7, v8, v9);
    }
  }

  return result;
}

uint64_t AppleBCMWLANNANInterface::disable(uint64_t *a1)
{
  v3 = OUTLINED_FUNCTION_1_9(a1);
  (*(v4 + 1088))(v3);
  OUTLINED_FUNCTION_4_6();
  (*(v5 + 160))(v1);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v2, "[dk] %s@%d:Interface %s disable\n", v7, v8, v9);
}

uint64_t AppleBCMWLANNANInterface::setPromiscuousModeEnable(uint64_t *a1, uint64_t a2, char a3)
{
  v4 = OUTLINED_FUNCTION_5_5(a1);
  (*(v5 + 1088))(v4);
  v6 = "Disable";
  if (a3)
  {
    v6 = "Enable";
  }

  v12 = v6;
  OUTLINED_FUNCTION_9_4();
  return CCLogStream::logAlert(v7, "[dk] %s@%d:%s::(%s) ret=0x%08x\n", v9, v10, v11, v12, 0);
}

uint64_t AppleBCMWLANNANInterface::setNAN_PAIRING_KEYS(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  (*(v2 + 1088))(v1);
  OUTLINED_FUNCTION_9_4();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:%s No NAN interface address found\n", v5, v6, v7);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  (*(v2 + 1088))(v1);
  OUTLINED_FUNCTION_9_4();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:%s adding key\n", v5, v6, v7);
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1088))(v1);
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:ERROR: Unable to set NAN Custom Attribute, ret = %d\n", v5, v6, v7);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  (*(v2 + 1088))(v1);
  OUTLINED_FUNCTION_9_4();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:%s deleting pairing keys\n", v5, v6, v7);
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1088))(v1);
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:ERROR: Unable to set NAN Custom Attribute, ret = %d\n", v5, v6, v7);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  (*(v2 + 1088))(v1);
  OUTLINED_FUNCTION_9_4();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:%s Invalid Peer Address\n", v5, v6, v7);
}

uint64_t AppleBCMWLANNANInterface::setNAN_CREATE_GCR_SESSION(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1088))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Fail to create GCR session\n", "setNAN_CREATE_GCR_SESSION", 9307);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1088))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Fail to set GCR multicast bitmap\n", "setNAN_CREATE_GCR_SESSION", 9317);
}

uint64_t AppleBCMWLANNANInterface::setNAN_GCR_Multicast_Bitmap(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  (*(v3 + 1088))(v2);
  v4 = *v1;
  v5 = v1[1];
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  OUTLINED_FUNCTION_25_1();
  return CCLogStream::logAlert(v10, "[dk] %s@%d:Configuring NAN Multicast bitmap for ndi: %x:%x:%x:%x:%x:%x, len: %u\n", "setNAN_GCR_Multicast_Bitmap", 9438, v12, v13, v14, v15, v16, v17, v18);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1088))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:ERROR: Unable to set NAN Multicast bitmap\n", "setNAN_GCR_Multicast_Bitmap", 9441);
}

uint64_t IO80211BufferCursor::copyFrom(IO80211BufferCursor *this, const IO80211BufferCursor *a2, rsize_t __n)
{
  v3 = 3758097128;
  if (__n - 1 >= *(a2 + 1))
  {
    v4 = 0;
  }

  else
  {
    v4 = *a2;
  }

  if (__n - 1 < *(this + 1))
  {
    v5 = *this;
    if (v4 && v5)
    {
      memcpy(v5, v4, __n);
      return 0;
    }

    else if (v5)
    {
      memset_s(v5, __n, 0, __n);
    }
  }

  return v3;
}

uint64_t AppleBCMWLANProximityInterface::setAWDL_SYNC_FRAME_TEMPLATE(AppleBCMWLANProximityInterface *a1, uint64_t a2)
{
  if (!a2)
  {
    return 22;
  }

  v2 = *(a2 + 4);
  if (!v2)
  {
    return 22;
  }

  v3 = *(a2 + 8);
  if (!v3)
  {
    return 22;
  }

  v15[1] = -21846;
  v15[0] = v2;
  v16.iov_base = v15;
  v16.iov_len = 2;
  v17 = v3;
  v18 = v2;
  if (IO80211SkywalkInterface::getInterfaceId(a1) != -1 && IO80211SkywalkInterface::getInterfaceId(a1) != 255 && IO80211SkywalkInterface::getInterfaceId(a1) < 0xC)
  {
    return AppleBCMWLANProximityInterface::sendIOVarSetCommand(a1, &v16, 2u, "awdl_payload");
  }

  OUTLINED_FUNCTION_24_1();
  if (!(*(v5 + 1088))(a1))
  {
    return 1;
  }

  OUTLINED_FUNCTION_24_1();
  (*(v6 + 1088))(a1);
  v7 = 1;
  if (CCLogStream::shouldLog())
  {
    OUTLINED_FUNCTION_24_1();
    (*(v8 + 1088))(a1);
    OUTLINED_FUNCTION_7_1();
    CCLogStream::logAlert(v9, "[dk] %s@%d:ERROR: %s:%u AWDL Chip interface not initialized, bailing out\n", v11, v12, v13, v14);
  }

  return v7;
}

uint64_t non-virtual thunk toAppleBCMWLANProximityInterface::setAWDL_SYNC_FRAME_TEMPLATE(uint64_t a1, uint64_t a2)
{
  return AppleBCMWLANProximityInterface::setAWDL_SYNC_FRAME_TEMPLATE((a1 - 112), a2);
}

{
  return AppleBCMWLANProximityInterface::setAWDL_SYNC_FRAME_TEMPLATE((a1 - 128), a2);
}

IO80211SkywalkInterface *AppleBCMWLANProximityInterface::handleCacheControlAsyncCallBack(IO80211SkywalkInterface *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a5)
  {
    v7 = result;
    if (a3)
    {
      OUTLINED_FUNCTION_19_1();
      if ((*(v9 + 1088))(v7))
      {
        OUTLINED_FUNCTION_19_1();
        (*(v10 + 1088))(v7);
        if (CCLogStream::shouldLog())
        {
          OUTLINED_FUNCTION_19_1();
          v26 = (*(v25 + 1088))(v7);
          OUTLINED_FUNCTION_19_1();
          v28 = (*(v27 + 920))(v7, a3);
          v29 = *(a2 + 8);
          if (!v29)
          {
            v29 = "unknown";
          }

          CCLogStream::logAlert(v26, "[dk] %s@%d: Error: cannot send prox iovar %s [%s]\n", "handleCacheControlAsyncCallBack", 3348, v28, v29);
        }
      }

      OUTLINED_FUNCTION_19_1();
      if ((*(v11 + 1088))(v7))
      {
        OUTLINED_FUNCTION_19_1();
        (*(v12 + 1088))(v7);
        if (CCLogStream::shouldLog())
        {
          OUTLINED_FUNCTION_19_1();
          (*(v30 + 1088))(v7);
          *(a5 + 4);
          v31 = *(a5 + 8);
          v32 = *(a5 + 9);
          v33 = *(a5 + 10);
          v34 = *(a5 + 11);
          v35 = *(a5 + 12);
          v46 = *(a5 + 16);
          v47 = *(a5 + 45);
          v44 = *(a5 + 13);
          v45 = *(a5 + 44);
          OUTLINED_FUNCTION_25_1();
          CCLogStream::logAlert(v36, "[dk] %s@%d: Opcode %u %s [%02x:%02x:%02x:%02x:%02x:%02x] ampdu %u ht %u vht %u\n", "handleCacheControlAsyncCallBack", 3355, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47);
        }
      }

      v13 = *(*(v7 + 17) + 40);
      mach_continuous_time();
      absolutetime_to_nanoseconds();
      if (a3 != -469793790)
      {
        *(*(v7 + 17) + 40) = mach_continuous_time();
        FaultReporter = AppleBCMWLANCore::getFaultReporter(*(*(v7 + 17) + 64));
        v15 = *(a2 + 8);
        if (!v15)
        {
          v15 = "unknown";
        }

        v16 = CCFaultReporter::reportFault(FaultReporter, 4u, "/Library/Caches/com.apple.xbs/Sources/AppleBCMWLANV3_driverkit/AppleBCMWLANProximityInterface.cpp", 0xD22u, "handleCacheControlAsyncCallBack", 0, -469793502, "%s", v15);
        if (v16)
        {
          v17 = v16;
          OUTLINED_FUNCTION_19_1();
          if ((*(v18 + 1088))(v7))
          {
            OUTLINED_FUNCTION_19_1();
            (*(v19 + 1088))(v7);
            if (CCLogStream::shouldLog())
            {
              OUTLINED_FUNCTION_19_1();
              v21 = (*(v20 + 1088))(v7);
              v22 = OUTLINED_FUNCTION_16_3(*(v7 + 17));
              v24 = (*(v23 + 112))(v22, v17);
              CCLogStream::logAlert(v21, "[dk] %s@%d: Failed to trigger Full Capture, %s\n", "handleCacheControlAsyncCallBack", 3365, v24);
            }
          }
        }
      }
    }

    else
    {
      AppleBCMWLANCore::completePeerCacheControl(*(*(result + 17) + 64), a5, result);
    }

    return IOFreeData();
  }

  return result;
}

uint64_t AppleBCMWLANProximityInterface::setAWDL_PRESENCE_MODE(IO80211SkywalkInterface *this, uint64_t a2)
{
  if (!a2)
  {
    return 22;
  }

  v2 = *(a2 + 4);
  v17 = v2;
  if (v2 > 0x40)
  {
    return 34;
  }

  v5 = *(this + 17);
  if (*(v5 + 836))
  {
    result = 0;
    *(v5 + 656) = v2;
  }

  else
  {
    if (*(v5 + 832))
    {
      v17 = 0;
    }

    v16[0] = this;
    v16[1] = AppleBCMWLANProximityInterface::handleProxIovarAsyncCallBack;
    v16[2] = 0;
    v6 = *(v5 + 960);
    InterfaceId = IO80211SkywalkInterface::getInterfaceId(this);
    v15[0] = &v17;
    v15[1] = 4;
    LODWORD(v6) = AppleBCMWLANCommander::sendVirtualIOVarSet(v6, InterfaceId, "awdl_presencemode", v15, kNoRxExpected, v16, 0);
    v8 = (*(*this + 1088))(this);
    if (v6)
    {
      if (v8)
      {
        OUTLINED_FUNCTION_24_1();
        (*(v9 + 1088))(this);
        if (OUTLINED_FUNCTION_38_0())
        {
          OUTLINED_FUNCTION_24_1();
          v12 = (*(v11 + 1088))(this);
          CCLogStream::logAlertIf(v12, 0x400uLL, "[dk] %s@%d: Unable to send awdl_presencemode\n", "setAWDL_PRESENCE_MODE", 4072);
        }
      }

      return 6;
    }

    else
    {
      if (v8)
      {
        OUTLINED_FUNCTION_24_1();
        (*(v10 + 1088))(this);
        if (OUTLINED_FUNCTION_38_0())
        {
          OUTLINED_FUNCTION_24_1();
          v14 = (*(v13 + 1088))(this);
          CCLogStream::logAlertIf(v14, 0x400uLL, "[dk] %s@%d: mode %lu\n", "setAWDL_PRESENCE_MODE", 4075, v17);
        }
      }

      result = 0;
      *(*(this + 17) + 656) = v17;
    }
  }

  return result;
}

uint64_t non-virtual thunk toAppleBCMWLANProximityInterface::setAWDL_PRESENCE_MODE(uint64_t a1, uint64_t a2)
{
  return AppleBCMWLANProximityInterface::setAWDL_PRESENCE_MODE((a1 - 112), a2);
}

{
  return AppleBCMWLANProximityInterface::setAWDL_PRESENCE_MODE((a1 - 128), a2);
}

uint64_t AppleBCMWLANProximityInterface::setAWDL_OOB_SEC_PAYLOAD_REQUEST(AppleBCMWLANProximityInterface *a1, uint64_t a2)
{
  if (!a2)
  {
    return 22;
  }

  if (!*(*(a1 + 17) + 664))
  {
    return 3758097084;
  }

  v15 = 0;
  HIDWORD(v15) = *(a2 + 4);
  WORD1(v15) = *(a2 + 2) + 8;
  OUTLINED_FUNCTION_24_1();
  if ((*(v4 + 1088))(a1))
  {
    OUTLINED_FUNCTION_24_1();
    (*(v5 + 1088))(a1);
    if (CCLogStream::shouldLog())
    {
      OUTLINED_FUNCTION_24_1();
      (*(v8 + 1088))(a1);
      v14 = *(a2 + 2);
      OUTLINED_FUNCTION_7_1();
      CCLogStream::logInfoIf(v9, 0x400uLL, "[dk] %s@%d:%s:%d OOB SEC PAYLOAD sent with len %hu afSecondary len %lu \n", v10, v11, v12, v13, v14, 8);
    }
  }

  v16.iov_base = &v15;
  v16.iov_len = 8;
  v6 = *(a2 + 2);
  v17 = *(a2 + 8);
  v18 = v6;
  return AppleBCMWLANProximityInterface::sendIOVarSetCommand(a1, &v16, 2u, "awdl_afs_pload");
}

uint64_t non-virtual thunk toAppleBCMWLANProximityInterface::setAWDL_OOB_SEC_PAYLOAD_REQUEST(uint64_t a1, uint64_t a2)
{
  return AppleBCMWLANProximityInterface::setAWDL_OOB_SEC_PAYLOAD_REQUEST((a1 - 112), a2);
}

{
  return AppleBCMWLANProximityInterface::setAWDL_OOB_SEC_PAYLOAD_REQUEST((a1 - 128), a2);
}

uint64_t AppleBCMWLANProximityInterface::resetInterface(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  (*(v3 + 1088))(v2);
  isPoweredOn = AppleBCMWLANCore::isPoweredOn(*(*v1 + 64));
  v9 = *(*v1 + 664);
  v4 = OUTLINED_FUNCTION_33_2();
  return CCLogStream::logAlertIf(v4, v5, v6, "resetInterface", 317, isPoweredOn, v9);
}

{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1088))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 920);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Failure to enable Country Code Changed event, %s\n", v9, v10, v11);
}

uint64_t AppleBCMWLANProximityInterface::waitForDriverEvent(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1088))(v1);
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Sleep failed 0x%08x", v5, v6, v7);
}

uint64_t AppleBCMWLANProximityInterface::handleEvent(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1088))(v1);
  return CCLogStream::logAlertIf(v3, 0x400uLL, "[dk] %s@%d: Unable to send awdl_presencemode\n", "handleEvent", 871);
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1088))(v1);
  OUTLINED_FUNCTION_15_4();
  return CCLogStream::logAlertIf(v3, 0x400uLL, "[dk] %s@%d: WLC_E_SET_SSID: mode %lu\n", "handleEvent", 873, v5);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1088))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d: WLC_E_ACTION_FRAME on prox interface = not supported\n", "handleEvent", 840);
}

{
  OUTLINED_FUNCTION_2_6(a1);
  result = (*(v3 + 1088))();
  if (result)
  {
    (*(*v2 + 1088))(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v5 = (*(*v2 + 1088))(v2);
      return CCLogStream::logAlert(v5, "[dk] %s@%d: Insufficient space[%u] < %lu\n", "handleEvent", 708, *v1, 28);
    }
  }

  return result;
}

{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  (*(v3 + 1088))(v2);
  v10 = *v1;
  OUTLINED_FUNCTION_7_1();
  return CCLogStream::logAlert(v4, "[dk] %s@%d:%s[%d] : Unknown SDB Status Code (%d) received \n", v6, v7, v8, v9, v10);
}

{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  (*(v3 + 1088))(v2);
  v10 = *v1;
  OUTLINED_FUNCTION_7_1();
  return CCLogStream::logAlert(v4, "[dk] %s@%d:%s[%d] : Unknown SDB Reason Code (%d) received \n", v6, v7, v8, v9, v10);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  (*(v2 + 1088))(v1);
  OUTLINED_FUNCTION_7_1();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:%s[%d] : ALERT: DRIVER got DWELL START Event \n", v5, v6, v7, v8);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  (*(v2 + 1088))(v1);
  OUTLINED_FUNCTION_7_1();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:%s[%d] : ALERT: DRIVER got DFS Proxy Resume Event \n", v5, v6, v7, v8);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  (*(v2 + 1088))(v1);
  OUTLINED_FUNCTION_7_1();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:%s[%d] : ALERT: DRIVER got DFS Proxy Suspect Event \n", v5, v6, v7, v8);
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1088))(v1);
  OUTLINED_FUNCTION_15_4();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Incorrect data length received for WLC_E_AWDL_PHYCAL_STATUS event, expecting 2, got %d\n", "handleEvent", 572, v5);
}

{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  v4 = (*(v3 + 1088))(v2);
  return CCLogStream::logNoticeIf(v4, 0x440uLL, "[dk] %s@%d:WLC_E_AWDL_SCAN_DONE, ivars->fRoamScanInProgress(%d), ivars->fOOBScanInProgress(%d)\n", "handleEvent", 528, *(*v1 + 81), *(*v1 + 82));
}

{
  OUTLINED_FUNCTION_2_6(a1);
  result = (*(v3 + 1088))();
  if (result)
  {
    (*(*v2 + 1088))(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v5 = (*(*v2 + 1088))(v2);
      return CCLogStream::logAlert(v5, "[dk] %s@%d: Insufficient space[%u] < %lu\n", "handleEvent", 440, *v1, 5);
    }
  }

  return result;
}

{
  v3 = OUTLINED_FUNCTION_5_6(a1);
  (*(v4 + 1088))(v3);
  v5 = *v2;
  v6 = *(v1 + 8);
  v7 = *(v1 + 12);
  v8 = *(v1 + 2);
  v9 = *(v1 + 16);
  v10 = *(v1 + 24);
  v11 = *(v1 + 25);
  v23 = *(v1 + 28);
  v24 = *(v1 + 29);
  v21 = *(v1 + 26);
  v22 = *(v1 + 27);
  OUTLINED_FUNCTION_25_1();
  return CCLogStream::logAlert(v12, "[dk] %s@%d: Prox interface Unhandled event %lu: status = %lu, reason = %lu, flags = 0x%x, authtype = %lu, addr = %02x:%02x:%02x:%02x:%02x:%02x\n", "handleEvent", 885, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24);
}

void AppleBCMWLANProximityInterface::handleEvent(uint64_t a1, const char *a2)
{
  os_detail::panic_trapping_policy::trap("The range of valid memory is too large to be represented by this type, or [begin, end) is not a well-formed range", a2);
}

{
  os_detail::panic_trapping_policy::trap("bounded_ptr<T>::operator->: Accessing a member through this pointer would access memory outside of the bounds set originally", a2);
}

{
  os_detail::panic_trapping_policy::trap("This bounded_ptr is pointing to memory outside of what can be represented by a native pointer.", a2);
}

uint64_t AppleBCMWLANProximityInterface::handleEvent(uint64_t result, uint64_t a2, IO80211SkywalkInterface *a3)
{
  if (*(*a2 + 920) == *(result + 3))
  {
    v5 = result;
    if (!AppleBCMWLANCore::isHostAssignedInterfaceIndex(*(*a2 + 64)))
    {
      IO80211SkywalkInterface::setInterfaceId(a3, *v5);
      v6 = *(*a2 + 64);
      InterfaceId = IO80211SkywalkInterface::getInterfaceId(a3);
      AppleBCMWLANCore::setProxSkywalkInterface(v6, InterfaceId);
    }

    v8 = *v5;
    v9 = OUTLINED_FUNCTION_5_0(*(*a2 + 984));
    result = (*(v10 + 104))(v9);
    v11 = v5[1];
    if (v11 == 1)
    {
      v12 = 0;
    }

    else
    {
      if (v11 != 2)
      {
        return result;
      }

      LOBYTE(v11) = 0;
      v12 = 1;
    }

    *(*a2 + 936) = v11;
    return AppleBCMWLANProximityInterface::signalDriverEvent(a3, v12);
  }

  return result;
}

uint64_t AppleBCMWLANProximityInterface::handleEvent(unsigned __int8 *a1, IO80211SkywalkInterface *this, uint64_t a3)
{
  v5 = *a1;
  result = IO80211SkywalkInterface::getInterfaceId(this);
  if (result == v5)
  {
    *(*a3 + 920) = a1[3];
  }

  *(*a3 + 936) = 1;
  return result;
}

uint64_t AppleBCMWLANProximityInterface::handleEvent(uint64_t result, uint64_t a2)
{
  ++*(*(result + 136) + 76);
  v3 = *(result + 136);
  if (*(v3 + 80) == 1)
  {
    ScanAdapter = AppleBCMWLANCore::getScanAdapter(*(v3 + 64));

    return AppleBCMWLANScanAdapter::eventScanComplete(ScanAdapter, a2);
  }

  return result;
}

{
  v2 = *(a2 + 136);
  if (*(result + 2))
  {
    ++*(v2 + 892);
    v3 = 1;
  }

  else
  {
    v3 = 0;
    ++*(v2 + 896);
  }

  *(*(a2 + 136) + 708) = v3;
  return result;
}

AppleBCMWLANProximityInterface *AppleBCMWLANProximityInterface::handleEvent(AppleBCMWLANProximityInterface *result, uint64_t a2)
{
  v2 = *(result + 17);
  if (*(v2 + 664))
  {
    *(v2 + 668) = *(a2 + 8);
    v3 = *(*(result + 17) + 668);
    if (v3)
    {
      if (v3 == 2)
      {
        return AppleBCMWLANProximityInterface::handleMasterEvent(result);
      }

      else if (v3 == 1)
      {
        return AppleBCMWLANProximityInterface::handleNonElectionMasterEvent(result);
      }
    }

    else
    {
      return AppleBCMWLANProximityInterface::handleSlaveEvent(result);
    }
  }

  return result;
}

void *AppleBCMWLANProximityInterface::handleEvent(void *result, unint64_t a2, uint64_t a3, IO80211SkywalkInterface *a4)
{
  if (result)
  {
    if (a2 >= 4)
    {
      return OUTLINED_FUNCTION_29_2(*(a3 + 64), a4, 0x58u, result, 0x15uLL);
    }
  }

  return result;
}

uint64_t AppleBCMWLANProximityInterface::handleEvent(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  v5 = 0;
  v2 = *(a1 + 8);
  v4[0] = 1;
  v4[1] = v2;
  return AppleBCMWLANCore::postMessageInfra(*(*(a2 + 136) + 64), 0x54u, v4, 0x14uLL);
}

uint64_t AppleBCMWLANProximityInterface::handleEvent(uint64_t a1, uint64_t a2, IO80211SkywalkInterface *a3)
{
  v4 = *(a1 + 24);
  v5 = *(a1 + 28);
  v6 = *(a1 + 12);
  return IO80211Controller::postMessage(*(a2 + 64), a3, 0x45u, &v4, 7uLL, 1);
}

uint64_t AppleBCMWLANProximityInterface::handleActionFrame_rx(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  (*(v2 + 1088))(v1);
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:%s: Invalid event payload bounded pointer.\n", v5, v6, v7);
}

{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  (*(v3 + 1088))(v2);
  v10 = *v1;
  OUTLINED_FUNCTION_7_1();
  return CCLogStream::logAlert(v4, "[dk] %s@%d:%s[%d] v1_rx: invalid event msg len=%u, expect at least %lu\n", v6, v7, v8, v9, v10, 16);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  (*(v2 + 1088))(v1);
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logCrit(v3, "[dk] %s@%d:%s: Invalid destination Bounded copy cursor\n", v5, v6, v7);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  (*(v2 + 1088))(v1);
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logCrit(v3, "[dk] %s@%d:%s: Invalid source Bounded copy cursor\n", v5, v6, v7);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  (*(v2 + 1088))(v1);
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logCrit(v3, "[dk] %s@%d:%s: Failed to copy to frame\n", v5, v6, v7);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1088))(v1);
  return CCLogStream::logCrit(v3, "[dk] %s@%d:action packet not avaialbe from pool\n", "handleActionFrame_rx", 1464);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1088))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Buffer Pool is not ready yet\n", "handleActionFrame_rx", 1469);
}

{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  (*(v3 + 1088))(v2);
  v10 = *v1;
  OUTLINED_FUNCTION_7_1();
  return CCLogStream::logAlert(v4, "[dk] %s@%d:%s[%d] v2_rx: invalid event msg len=%u, expect at least %lu\n", v6, v7, v8, v9, v10, 24);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  (*(v2 + 1088))(v1);
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:%s: wl_event_rx_frame_data bounded pointer.\n", v5, v6, v7);
}

{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  v4 = (*(v3 + 1088))(v2);
  return CCLogStream::logAlert(v4, "[dk] %s@%d:%s: Invalid action frame rx event msg length=%u\n", "handleActionFrame_rx", 1382, "handleActionFrame_rx", *v1);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  (*(v2 + 1088))(v1);
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:%s: Invalid event bounded pointer.\n", v5, v6, v7);
}

uint64_t AppleBCMWLANProximityInterface::handleProbeResponse_rx(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1088))(v1);
  return CCLogStream::logCrit(v3, "[dk] %s@%d:action packet not avaialbe from pool\n", "handleProbeResponse_rx", 1560);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1088))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Buffer Pool is not ready yet\n", "handleProbeResponse_rx", 1565);
}

{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  v4 = (*(v3 + 1088))(v2);
  return CCLogStream::logAlert(v4, "[dk] %s@%d:Invalid event msg len=%u, expect at least %lu\n", "handleProbeResponse_rx", 1506, *v1, 16);
}

uint64_t AppleBCMWLANProximityInterface::handleAvailabilityWindowEnd(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_5_0(a1);
  result = (*(v3 + 1088))(v2);
  if (result)
  {
    (*(*a1 + 1088))(a1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      (*(*a1 + 1088))(a1);
      OUTLINED_FUNCTION_5_2();
      return CCLogStream::logAlert(v5, "[dk] %s@%d:%s: Invalid pxtlv bounded pointer\n", v6, v7, v8);
    }
  }

  return result;
}

{
  OUTLINED_FUNCTION_2_6(a1);
  result = (*(v3 + 1088))();
  if (result)
  {
    (*(*v2 + 1088))(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v5 = (*(*v2 + 1088))(v2);
      return CCLogStream::logAlert(v5, "[dk] %s@%d: ERROR: AWDL cca_stats, insufficient space[%lu] < %lu\n", "handleAvailabilityWindowEnd", 3291, v1, 52);
    }
  }

  return result;
}

uint64_t AppleBCMWLANProximityInterface::handleAvailabilityWindowStart(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1088))(v1);
  OUTLINED_FUNCTION_26_1();
  return CCLogStream::logAlert(v3, "[dk] %s@%d: unknown role %u\n", "handleAvailabilityWindowStart", 1723, v5);
}

_DWORD *AppleBCMWLANProximityInterface::handleAvailabilityWindowExtension(_DWORD *result, const char *a2, IO80211SkywalkInterface *a3, uint64_t a4)
{
  v4 = (a4 + (a2 >> 32));
  if (v4)
  {
    if (HIDWORD(a2) + 28 > a2)
    {
      os_detail::panic_trapping_policy::trap("bounded_ptr<T>::operator->: Accessing a member through this pointer would access memory outside of the bounds set originally", a2);
    }

    v5 = *(v4 + 12);
    v6 = *v4;
    *result = v5;
    result[1] = v6;
    return IO80211Controller::postMessage(*(*(a3 + 17) + 64), a3, 0x2Au, result, 8uLL, 1);
  }

  return result;
}

uint64_t AppleBCMWLANProximityInterface::handleMasterEvent(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1088))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:MST \n", "handleMasterEvent", 1678);
}

uint64_t AppleBCMWLANProximityInterface::handleSlaveEvent(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1088))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:slv\n", "handleSlaveEvent", 1693);
}

uint64_t AppleBCMWLANProximityInterface::handleNonElectionMasterEvent(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1088))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:NE_MST \n", "handleNonElectionMasterEvent", 1664);
}

void AppleBCMWLANProximityInterface::handleActionFrame_complete()
{
  OUTLINED_FUNCTION_41_1();
  v1 = v0;
  v3 = v2;
  v4 = HIDWORD(v0);
  v6 = v5 + HIDWORD(v0);
  v7 = (*(*v2 + 1088))(v2);
  if (v6)
  {
    if (v7)
    {
      (*(*v3 + 1088))(v3);
      if (OUTLINED_FUNCTION_38_0())
      {
        (*(*v3 + 1088))(v3);
        if (v4 + 48 <= v1)
        {
          OUTLINED_FUNCTION_28_2();
          v11 = *(v6 + 8);
          CCLogStream::logAlertIf(v9, 0x400uLL, "[dk] %s@%d:AFC %llu.%03llu len %lu status %lu\n");
          goto LABEL_8;
        }

LABEL_12:
        os_detail::panic_trapping_policy::trap("bounded_ptr<T>::operator->: Accessing a member through this pointer would access memory outside of the bounds set originally", v8);
      }
    }
  }

  else if (v7)
  {
    (*(*v3 + 1088))(v3);
    if (OUTLINED_FUNCTION_38_0())
    {
      (*(*v3 + 1088))(v3);
      if (v4 + 48 <= v1)
      {
        OUTLINED_FUNCTION_28_2();
        CCLogStream::logAlertIf(v10, 0x400uLL, "[dk] %s@%d:AFC %llu.%03llu len %lu invalid status.\n");
        goto LABEL_8;
      }

      goto LABEL_12;
    }
  }

LABEL_8:
  OUTLINED_FUNCTION_40_0();
}

uint64_t AppleBCMWLANProximityInterface::init(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1088))(v1);
  return CCLogStream::logAlertIf(v3, 0x400uLL, "[dk] %s@%d: created PROXIMITY interface\n", "init", 997);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1088))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Unable to get Tx Power Manager\n", "init", 1023);
}

uint64_t AppleBCMWLANProximityInterface::setLifeTime(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  (*(v2 + 1088))(v1);
  OUTLINED_FUNCTION_9_4();
  return CCLogStream::logAlertIf(v3, 0x400uLL, "[dk] %s@%d: lifetime %lu\n", v5, v6, v7);
}

uint64_t AppleBCMWLANProximityInterface::setGuardTime(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  (*(v2 + 1088))(v1);
  OUTLINED_FUNCTION_9_4();
  return CCLogStream::logAlertIf(v3, 0x400uLL, "[dk] %s@%d: ivars->fGuardTime %lu\n", v5, v6, v7);
}

uint64_t AppleBCMWLANProximityInterface::setMaxNoMasterPeriod(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  (*(v2 + 1088))(v1);
  OUTLINED_FUNCTION_9_4();
  return CCLogStream::logAlertIf(v3, 0x400uLL, "[dk] %s@%d: ivars->fMaxNoMasterPeriod %lu\n", v5, v6, v7);
}

uint64_t AppleBCMWLANProximityInterface::stop(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1088))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:AppleBCMWLANProximityInterface Interface Stop\n", "stop", 1095);
}

uint64_t AppleBCMWLANProximityInterface::getSTATE(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1088))(v1);
  OUTLINED_FUNCTION_15_4();
  return CCLogStream::logAlertIf(v3, 0x400uLL, "[dk] %s@%d: %u\n", "getSTATE", 1151, v5);
}

uint64_t AppleBCMWLANProximityInterface::setAWDL_AF_TX_MODE(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1088))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 920);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Unable to set awdl_aftxmode %s\n", v9, v10, v11);
}

uint64_t AppleBCMWLANProximityInterface::setAWDL_AF_TX_MODE(uint64_t *a1, uint64_t a2, unsigned int *a3)
{
  v5 = OUTLINED_FUNCTION_0_8(a1);
  (*(v6 + 1088))(v5);
  OUTLINED_FUNCTION_3_5();
  v12 = (*(v7 + 920))(v3, 0);
  v13 = *a3;
  v8 = OUTLINED_FUNCTION_34_2();
  return CCLogStream::logAlertIf(v8, v9, v10, "setAWDL_AF_TX_MODE", 1177, v12, v13);
}

uint64_t AppleBCMWLANProximityInterface::getAWDL_AF_TX_MODE(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1088))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 920);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Unable to get awdl awdl_aftxmode %s\n", v9, v10, v11);
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1088))(v1);
  OUTLINED_FUNCTION_15_4();
  return CCLogStream::logNoticeIf(v3, 0x400uLL, "[dk] %s@%d: %u\n", "getAWDL_AF_TX_MODE", 1196, v5);
}

uint64_t AppleBCMWLANProximityInterface::bringdownLink(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  v4 = (*(v3 + 1088))(v2);
  return CCLogStream::logAlertIf(v4, 0x400uLL, "[dk] %s@%d: ivars->fSyncRole %lu ivars->fSyncEnabled %lu\n", "bringdownLink", 1241, *(*v1 + 668), *(*v1 + 664));
}

uint64_t AppleBCMWLANProximityInterface::doSetSyncState(uint64_t *a1, uint64_t a2, uint64_t a3, int a4)
{
  v6 = OUTLINED_FUNCTION_8_7(a1);
  v8 = (*(v7 + 1088))(v6);
  return CCLogStream::logAlertIf(v8, 0x400uLL, "[dk] %s@%d: %u was %lu\n", "doSetSyncState", 4921, a4, *(*v4 + 664));
}

uint64_t AppleBCMWLANProximityInterface::doSetSyncState(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1088))(v1);
  return CCLogStream::logNotice(v3, "[dk] %s@%d:AWDL turned off while in an OOB scan\n", "doSetSyncState", 4971);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1088))(v1);
  return CCLogStream::logNotice(v3, "[dk] %s@%d:AWDL turned off while in a roam scan\n", "doSetSyncState", 4965);
}

{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1088))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 920);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Failure to enable AWDL events, %s\n", v9, v10, v11);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1088))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:fPowerManager is NULL\n", "doSetSyncState", 5035);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  (*(v2 + 1088))(v1);
  OUTLINED_FUNCTION_7_1();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:ERROR: %s:%u AWDL Chip interface not initialized, bailing out\n", v5, v6, v7, v8);
}

uint64_t AppleBCMWLANProximityInterface::setBssRates(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  (*(v2 + 1088))(v1);
  OUTLINED_FUNCTION_7_1();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:ERROR: %s:%u AWDL Chip interface not initialized, bailing out\n", v5, v6, v7, v8);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  (*(v2 + 1088))(v1);
  OUTLINED_FUNCTION_7_1();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:ERROR: %s:%u AWDL Chip interface not initialized, bailing out\n", v5, v6, v7, v8);
}

uint64_t AppleBCMWLANProximityInterface::bringupLink(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  (*(v3 + 1088))(v2);
  v4 = *v1;
  v5 = *(*v1 + 668);
  v10 = *(v4 + 664);
  AppleBCMWLANCore::isPoweredOn(*(v4 + 64));
  OUTLINED_FUNCTION_11_3();
  v6 = OUTLINED_FUNCTION_33_2();
  return CCLogStream::logWarnIf(v6, v7, v8);
}

uint64_t AppleBCMWLANProximityInterface::setAfTxMode(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_10_5(a1);
  v4 = (*(v3 + 1088))(v2);
  v5 = *(v1 + 136);
  v6 = v5[167];
  if (v6 > 4)
  {
    v7 = "UNKNOWN";
  }

  else
  {
    v7 = off_1003C8830[v6];
  }

  return CCLogStream::logAlertIf(v4, 0x400uLL, "[dk] %s@%d: was %lu metric %lu role %lu %s en %lu -> %lu\n", "setAfTxMode", 1642, v5[134], *(v5 + 555), v6, v7, v5[166], 0);
}

{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  v4 = (*(v3 + 1088))(v2);
  return CCLogStream::logAlertIf(v4, 0x400uLL, "[dk] %s@%d:AF TX Mode -> %lu\n", "setAfTxMode", 1657, *(*v1 + 536));
}

uint64_t AppleBCMWLANProximityInterface::dumpSyncParams(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1088))(v1);
  return CCLogStream::logAlertIf(v3, 0x400uLL, "[dk] %s@%d: Unable to awdl_sync_params\n", "dumpSyncParams", 3663);
}

uint64_t AppleBCMWLANProximityInterface::getAWDL_SYNC_ENABLED(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1088))(v1);
  return CCLogStream::logAlertIf(v3, 0x400uLL, "[dk] %s@%d: Unable to awdl\n", "getAWDL_SYNC_ENABLED", 1764);
}

uint64_t AppleBCMWLANProximityInterface::getAWDL_SYNC_PARAMS(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1088))(v1);
  return CCLogStream::logAlertIf(v3, 0x400uLL, "[dk] %s@%d: Unable to awdl_sync_params\n", "getAWDL_SYNC_PARAMS", 1798);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1088))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d: Zero AWExt Invalid aw_ext_length\n", "getAWDL_SYNC_PARAMS", 1811);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1088))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d: Zero AWExt Invalid action_frame_period\n", "getAWDL_SYNC_PARAMS", 1806);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1088))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d: Zero AWExt Invalid aw_cmn_length\n", "getAWDL_SYNC_PARAMS", 1802);
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1088))(v1);
  OUTLINED_FUNCTION_3_0();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:ERROR: %s:%u AWDL Chip interface not initialized, bailing out, interfaceId : %x\n", v5, v6, v7, v8, v9);
}

uint64_t AppleBCMWLANProximityInterface::getAWDL_SYNC_STATE(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1088))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 920);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Unable to get awdl opmode %s\n", v9, v10, v11);
}

uint64_t AppleBCMWLANProximityInterface::getAWDL_DEV_STATS(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1088))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 920);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Unable to get awdl stats %s\n", v9, v10, v11);
}

uint64_t AppleBCMWLANProximityInterface::getAWDL_CCA(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1088))(v1);
  OUTLINED_FUNCTION_26_1();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Invalid channel : %d for getAWDL_CCA\n", "getAWDL_CCA", 2056, v5);
}

{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1088))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 920);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Unable to get awdl cca %s\n", v9, v10, v11);
}

uint64_t AppleBCMWLANProximityInterface::getAWDL_PRESENCE_MODE(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1088))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 920);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Unable to get awdl_presencemode %s\n", v9, v10, v11);
}

uint64_t AppleBCMWLANProximityInterface::getAWDL_EXTENSION_STATE_MACHINE_PARAMETERS(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1088))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 920);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Unable to get awdl_extcounts %s\n", v9, v10, v11);
}

uint64_t AppleBCMWLANProximityInterface::setAWDL_EXTENSION_STATE_MACHINE_PARAMETERS(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1088))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 920);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Unable to set awdl_extcounts %s\n", v9, v10, v11);
}

uint64_t AppleBCMWLANProximityInterface::getElectionParams(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1088))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 920);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Unable to get awdl election info %s\n", v9, v10, v11);
}

uint64_t AppleBCMWLANProximityInterface::setAWDL_ELECTION_PARAMS(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_0_9(a1);
  (*(v2 + 1088))(v1);
  OUTLINED_FUNCTION_3_5();
  v4 = *(v3 + 920);
  v5 = OUTLINED_FUNCTION_16_2();
  v6(v5);
  OUTLINED_FUNCTION_6();
  v7 = OUTLINED_FUNCTION_34_2();
  return CCLogStream::logAlertIf(v7, v8, v9);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1088))(v1);
  return CCLogStream::logInfoIf(v3, 0x400uLL, "[dk] %s@%d: election params  set \n", "setAWDL_ELECTION_PARAMS", 2210);
}

uint64_t AppleBCMWLANProximityInterface::handleElectionTreeIovarAsyncCallBack(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1088))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Unable to set awdl_election_tree; trying again without private election\n", "handleElectionTreeIovarAsyncCallBack", 3440);
}

{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1088))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 920);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Unable to set awdl election tree iovar %s\n", v9, v10, v11);
}

uint64_t AppleBCMWLANProximityInterface::setAWDL_AWDL_ADVERTISERS(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1088))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 920);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Unable to set awdl_advertisers %s\n", v9, v10, v11);
}

uint64_t AppleBCMWLANProximityInterface::setAWDL_ELECTION_ID(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_0_9(a1);
  (*(v2 + 1088))(v1);
  OUTLINED_FUNCTION_3_5();
  v4 = *(v3 + 920);
  v5 = OUTLINED_FUNCTION_16_2();
  v6(v5);
  OUTLINED_FUNCTION_6();
  v7 = OUTLINED_FUNCTION_34_2();
  return CCLogStream::logAlertIf(v7, v8, v9);
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1088))(v1);
  OUTLINED_FUNCTION_15_4();
  return CCLogStream::logAlertIf(v3, 0x400uLL, "[dk] %s@%d: election_id set to %u\n", "setAWDL_ELECTION_ID", 2280, v5);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  (*(v2 + 1088))(v1);
  OUTLINED_FUNCTION_7_1();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:ERROR: %s:%u AWDL Chip interface not initialized, bailing out\n", v5, v6, v7, v8);
}

uint64_t AppleBCMWLANProximityInterface::getAWDL_ELECTION_METRIC(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1088))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 920);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Unable to get awdl election info %s\n", v9, v10, v11);
}

uint64_t AppleBCMWLANProximityInterface::getAWDL_ELECTION_PARAMS(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1088))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 920);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Unable to get awdl election info %s\n", v9, v10, v11);
}

uint64_t AppleBCMWLANProximityInterface::setAWDL_ELECTION_METRIC(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1088))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 920);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Unable to set awdl election metric %s\n", v9, v10, v11);
}

{
  v2 = OUTLINED_FUNCTION_10_5(a1);
  v4 = (*(v3 + 1088))(v2);
  IO80211SkywalkInterface::getInterfaceId(v1);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v4, "[dk] %s@%d: setAWDL_ELECTION_METRIC invalid interface id %d\n", v6, v7, v8);
}

uint64_t AppleBCMWLANProximityInterface::setAWDL_ELECTION_RSSI_THRESHOLDS(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1088))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 920);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Unable to set awdl election %s\n", v9, v10, v11);
}

uint64_t AppleBCMWLANProximityInterface::getAWDL_ELECTION_RSSI_THRESHOLDS(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1088))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 920);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Unable to get awdl election tree info %s\n", v9, v10, v11);
}

uint64_t AppleBCMWLANProximityInterface::sendUnicastAFIOVar(uint64_t *a1)
{
  v3 = OUTLINED_FUNCTION_5_6(a1);
  (*(v4 + 1088))(v3);
  OUTLINED_FUNCTION_35_0();
  MaxCmdTxPayload = AppleBCMWLANCommander::getMaxCmdTxPayload(*(v5 + 960));
  return CCLogStream::logAlert(v2, "[dk] %s@%d: excessive payload length iovar_len 11 data_len %lu max %lu\n", "sendUnicastAFIOVar", 2467, v1, MaxCmdTxPayload);
}

{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  v4 = (*(v3 + 1088))(v2);
  return CCLogStream::logAlert(v4, "[dk] %s@%d:Too many async iovars in flight (%d) , rejecting awdl_oob_af\n", "sendUnicastAFIOVar", 2491, *(*v1 + 48));
}

{
  OUTLINED_FUNCTION_2_6(a1);
  result = (*(v3 + 1088))();
  if (result)
  {
    (*(*v2 + 1088))(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v5 = (*(*v2 + 1088))(v2);
      result = CCLogStream::logAlert(v5, "[dk] %s@%d:Error: cannot send OOBAF IOVar. MemAlloc Failed \n", "sendUnicastAFIOVar", 2477);
    }
  }

  *v1 = 1;
  return result;
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1088))(v1);
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v3, "[dk] %s@%d: Error, unable to allocate %lu bytes of buffer memory for command\n", v5, v6, v7);
}

{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  v4 = (*(v3 + 1088))(v2);
  return CCLogStream::logAlert(v4, "[dk] %s@%d: Error, Invalid size[%lu] for OOB AF, expected >= %lu\n", "sendUnicastAFIOVar", 2462, v1, 38);
}

uint64_t AppleBCMWLANProximityInterface::sendUnicastAFIOVar(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = OUTLINED_FUNCTION_8_7(a1);
  (*(v7 + 1088))(v6);
  OUTLINED_FUNCTION_35_0();
  v9 = OUTLINED_FUNCTION_16_3(v8);
  (*(v10 + 112))(v9, a4);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlertIf(v4, 0x400uLL, "[dk] %s@%d: Error: cannot send awdl_oob_af %s\n", v12, v13, v14);
}

uint64_t AppleBCMWLANProximityInterface::sendIOVarSetCommand(uint64_t *a1)
{
  v3 = OUTLINED_FUNCTION_5_6(a1);
  v5 = (*(v4 + 1088))(v3);
  return CCLogStream::logAlert(v5, "[dk] %s@%d:Too many async iovars in flight (%d) , rejecting %s\n", "sendIOVarSetCommand", 2537, *(*v2 + 48), v1);
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1088))(v1);
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v3, "[dk] %s@%d: Error, unable to allocate %lu bytes of buffer memory for command\n", v5, v6, v7);
}

uint64_t AppleBCMWLANProximityInterface::updateSyncParams(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_10_5(a1);
  v4 = (*(v3 + 1088))(v2);
  v5 = *(v1 + 136);
  return CCLogStream::logAlertIf(v4, 0x400uLL, "[dk] %s@%d:%s ivars->fSyncEnabled %lu (masterChannel=%lu secMasterChannel=%lu awLen=%lu awPeriod=%lu)\n", "updateSyncParams", 2597, "int32_t AppleBCMWLANProximityInterface::updateSyncParams()", v5[166], v5[170], v5[171], v5[179], v5[180]);
}

uint64_t AppleBCMWLANProximityInterface::setSyncParams(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1088))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 920);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Unable to set awdl_sync_params %s\n", v9, v10, v11);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  (*(v2 + 1088))(v1);
  OUTLINED_FUNCTION_7_1();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:ERROR: %s:%u AWDL Chip interface not initialized, bailing out\n", v5, v6, v7, v8);
}

uint64_t AppleBCMWLANProximityInterface::setAWDL_SYNC_PARAMS(uint64_t *a1)
{
  v3 = OUTLINED_FUNCTION_5_6(a1);
  v5 = (*(v4 + 1088))(v3);
  return CCLogStream::logAlert(v5, "[dk] %s@%d: +++ [%s] aw_period %lu aw_len %lu aw_ext_len %lu adv_period %lu as non election master %lu\n", "setAWDL_SYNC_PARAMS", 2668, v1, *(*v2 + 720), *(*v2 + 716), *(*v2 + 724), *(*v2 + 732), *(*v2 + 660));
}

uint64_t AppleBCMWLANProximityInterface::setPSF_DWELL(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1088))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 920);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Unable to set awdl_psf_dwell %s\n", v9, v10, v11);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1088))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:setPSF_DWELL data is NULL\n", "setPSF_DWELL", 2703);
}

uint64_t AppleBCMWLANProximityInterface::setAWDL_SYNC_STATE(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1088))(v1);
  OUTLINED_FUNCTION_15_4();
  return CCLogStream::logAlert(v3, "[dk] %s@%d: unsupported mode %u\n", "setAWDL_SYNC_STATE", 2735, v5);
}

{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1088))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 920);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Unable to set awdl opmode %s\n", v9, v10, v11);
}

uint64_t AppleBCMWLANProximityInterface::setAWDL_SYNC_ENABLED(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1088))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:SoftAP interface is UP, hence cannot set APPLE80211_IOC_AWDL_SYNC_ENABLED\n", "setAWDL_SYNC_ENABLED", 2766);
}

uint64_t AppleBCMWLANProximityInterface::setSYNC_ENABLED_internal(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1088))(v1);
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logInfo(v3, "[dk] %s@%d:%s", v5, v6, v7);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1088))(v1);
  return CCLogStream::logWarn(v3, " AWDL MODE: ON \n");
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1088))(v1);

  return CCLogStream::logWarn(v3, " AWDL MODE: OFF \n");
}

uint64_t AppleBCMWLANProximityInterface::setCHANNEL(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1088))(v1);
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlertIf(v3, 0x400uLL, "[dk] %s@%d: -> %u\n", v5, v6, v7);
}

uint64_t AppleBCMWLANProximityInterface::setAWDL_MASTER_CHANNEL(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1088))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d: Trying to set channel 0 as master channel \n", "setAWDL_MASTER_CHANNEL", 2853);
}

{
  v2 = OUTLINED_FUNCTION_10_5(a1);
  v4 = (*(v3 + 1088))(v2);
  return CCLogStream::logAlertIf(v4, 0x400uLL, "[dk] %s@%d: channel %lu secondary %lu\n", "setAWDL_MASTER_CHANNEL", 2855, *(*(v1 + 136) + 680), *(*(v1 + 136) + 684));
}

uint64_t AppleBCMWLANProximityInterface::getAWDL_SECONDARY_MASTER_CHANNEL(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1088))(v1);
  return CCLogStream::logAlertIf(v3, 0x400uLL, "[dk] %s@%d: Unable to get awdl_osoc_chan\n", "getAWDL_SECONDARY_MASTER_CHANNEL", 2870);
}

uint64_t AppleBCMWLANProximityInterface::getAWDL_AF_SECONDARY_PAYLOAD_CAPABILITIES(uint64_t *a1)
{
  v3 = OUTLINED_FUNCTION_0_9(a1);
  (*(v4 + 1088))(v3);
  OUTLINED_FUNCTION_3_5();
  v6 = *(v5 + 920);
  v7 = OUTLINED_FUNCTION_16_2();
  v8(v7);
  v9 = OUTLINED_FUNCTION_39_1();
  return CCLogStream::logCrit(v2, "[dk] %s@%d: Failed (%s) to get awdl_cap for AWDL if %d\n", "getAWDL_AF_SECONDARY_PAYLOAD_CAPABILITIES", 2896, v1, v9);
}

{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  v4 = (*(v3 + 1088))(v2);
  return CCLogStream::logAlertIf(v4, 0x400uLL, "[dk] %s@%d: awdl_cap 0x%X\n", "getAWDL_AF_SECONDARY_PAYLOAD_CAPABILITIES", 2898, *(v1 + 4));
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1088))(v1);
  OUTLINED_FUNCTION_26_1();
  return CCLogStream::logWarnIf(v3, 0x400uLL, "[dk] %s@%d: awdl_cap 0x%X, Supports APPLE80211_AWDL_CAP_SEC_PAYLOAD\n", "getAWDL_AF_SECONDARY_PAYLOAD_CAPABILITIES", 2904, v5);
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1088))(v1);
  OUTLINED_FUNCTION_26_1();
  return CCLogStream::logWarnIf(v3, 0x400uLL, "[dk] %s@%d: awdl_cap 0x%X, supports APPLE80211_AWDL_CAP_CCA_STATS\n", "getAWDL_AF_SECONDARY_PAYLOAD_CAPABILITIES", 2909, v5);
}

uint64_t AppleBCMWLANProximityInterface::setAWDL_SECONDARY_MASTER_CHANNEL(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1088))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 920);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Unable to set awdl secondary channel id %s\n", v9, v10, v11);
}

{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  v4 = (*(v3 + 1088))(v2);
  return CCLogStream::logAlertIf(v4, 0x400uLL, "[dk] %s@%d: channel %lu secondary %lu\n", "setAWDL_SECONDARY_MASTER_CHANNEL", 2939, *(*v1 + 680), *(*v1 + 684));
}

uint64_t AppleBCMWLANProximityInterface::getAWDL_MASTER_CHANNEL(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1088))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d: Unable to get awdl_sync_params\n", "getAWDL_MASTER_CHANNEL", 2974);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1088))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d: Zero AWExt Invalid aw_ext_length\n", "getAWDL_MASTER_CHANNEL", 2987);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1088))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d: Zero AWExt Invalid action_frame_period\n", "getAWDL_MASTER_CHANNEL", 2982);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1088))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d: Zero AWExt Invalid aw_cmn_length\n", "getAWDL_MASTER_CHANNEL", 2978);
}

uint64_t AppleBCMWLANProximityInterface::setAWDL_ENCRYPTION_KEYS(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = OUTLINED_FUNCTION_11_4(a1);
  v7 = (*(v6 + 1088))(v5);
  v8 = OUTLINED_FUNCTION_16_3(*(v3 + 136));
  (*(v9 + 112))(v8, a3);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logCrit(v7, "[dk] %s@%d: mapAppleKeyToBcomKey() failed, error %s\n", v11, v12, v13);
}

uint64_t AppleBCMWLANProximityInterface::programKeyAsync(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1088))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Setting AWDL keys asynchronously\n", "programKeyAsync", 3054);
}

uint64_t AppleBCMWLANProximityInterface::programKeyAsync(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = OUTLINED_FUNCTION_8_7(a1);
  (*(v7 + 1088))(v6);
  OUTLINED_FUNCTION_35_0();
  v9 = OUTLINED_FUNCTION_16_3(v8);
  (*(v10 + 112))(v9, a4);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logCrit(v4, "[dk] %s@%d: WLC_SET_KEY() failed, error %s\n", v12, v13, v14);
}

uint64_t AppleBCMWLANProximityInterface::programKeySync(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1088))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Setting AWDL keys synchronously\n", "programKeySync", 3036);
}

{
  v3 = OUTLINED_FUNCTION_0_9(a1);
  (*(v4 + 1088))(v3);
  OUTLINED_FUNCTION_3_5();
  v6 = *(v5 + 920);
  v7 = OUTLINED_FUNCTION_16_2();
  v8(v7);
  v9 = OUTLINED_FUNCTION_39_1();
  return CCLogStream::logCrit(v2, "[dk] %s@%d: Failed (%s) setting keys for AWDL if %d\n", "programKeySync", 3045, v1, v9);
}

uint64_t AppleBCMWLANProximityInterface::getAWDL_ENCRYPTION_TYPE(uint64_t *a1)
{
  v3 = OUTLINED_FUNCTION_0_9(a1);
  (*(v4 + 1088))(v3);
  OUTLINED_FUNCTION_3_5();
  v6 = *(v5 + 920);
  v7 = OUTLINED_FUNCTION_16_2();
  v8(v7);
  v9 = OUTLINED_FUNCTION_39_1();
  return CCLogStream::logCrit(v2, "[dk] %s@%d: Failed (%s) getting encryption for AWDL if %d\n", "getAWDL_ENCRYPTION_TYPE", 3080, v1, v9);
}

uint64_t AppleBCMWLANProximityInterface::setAWDL_ENCRYPTION_TYPE(uint64_t *a1)
{
  v3 = OUTLINED_FUNCTION_0_9(a1);
  (*(v4 + 1088))(v3);
  OUTLINED_FUNCTION_3_5();
  v6 = *(v5 + 920);
  v7 = OUTLINED_FUNCTION_16_2();
  v8(v7);
  v9 = OUTLINED_FUNCTION_39_1();
  return CCLogStream::logCrit(v2, "[dk] %s@%d: Failed (%s) setting encryption for AWDL if %d\n", "setAWDL_ENCRYPTION_TYPE", 3100, v1, v9);
}

uint64_t AppleBCMWLANProximityInterface::setAWDL_RTG_PEER_STATS_CONFIG(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  v4 = (*(v3 + 1088))(v2);
  v5 = "enabled";
  if (!*(*v1 + 664))
  {
    v5 = "disabled";
  }

  if (*(*v1 + 1104))
  {
    v6 = "yes";
  }

  else
  {
    v6 = "no";
  }

  return CCLogStream::logAlert(v4, "[dk] %s@%d:Cannot set PEER_STATS_CONFIG sync state: %s CreatingChipIF %s", "setAWDL_RTG_PEER_STATS_CONFIG", 3126, v5, v6);
}

uint64_t AppleBCMWLANProximityInterface::setAWDL_PEER_TRAFFIC_REGISTRATION(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = OUTLINED_FUNCTION_8_7(a1);
  (*(v7 + 1088))(v6);
  OUTLINED_FUNCTION_35_0();
  v9 = OUTLINED_FUNCTION_16_3(v8);
  (*(v10 + 112))(v9, a4);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v4, "[dk] %s@%d: Error toggling btc_flags for ranging: %s\n", v12, v13, v14);
}

uint64_t AppleBCMWLANProximityInterface::setAWDL_PEER_TRAFFIC_REGISTRATION(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1088))(v1);
  return CCLogStream::logNotice(v3, "[dk] %s@%d: Assisted discovery teardown: clearing all keys\n", "setAWDL_PEER_TRAFFIC_REGISTRATION", 3176);
}

uint64_t AppleBCMWLANProximityInterface::setMacAddress(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1088))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 920);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: cur_etheraddr failed, error %s\n", v9, v10, v11);
}

{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  v4 = (*(v3 + 1088))(v2);
  v5 = "enabled";
  if (!*(*v1 + 664))
  {
    v5 = "disabled";
  }

  if (*(*v1 + 1104))
  {
    v6 = "yes";
  }

  else
  {
    v6 = "no";
  }

  return CCLogStream::logAlert(v4, "[dk] %s@%d:Cannot update MAC address because sync state: %s CreatingChipIF %s", "setMacAddress", 3243, v5, v6);
}

uint64_t AppleBCMWLANProximityInterface::handleProxSlotBSSCompletion(uint64_t *a1, uint64_t a2, int a3)
{
  v5 = OUTLINED_FUNCTION_0_8(a1);
  (*(v6 + 1088))(v5);
  OUTLINED_FUNCTION_3_5();
  v8 = *(v7 + 920);
  v9 = OUTLINED_FUNCTION_16_2();
  v11 = v10(v9);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:ERROR: SlotBSS iovar failed, retVal %s:(0x%x)\n", "handleProxSlotBSSCompletion", 3404, v11, a3);
}

uint64_t AppleBCMWLANProximityInterface::getTX_RATE(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1088))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 920);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Unable to get tx min rate %s\n", v9, v10, v11);
}

uint64_t AppleBCMWLANProximityInterface::setTX_RATE(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1088))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 920);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Could configure tx min rate . Error code : %s\n", v9, v10, v11);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1088))(v1);
  return CCLogStream::logAlertIf(v3, 0x400uLL, "[dk] %s@%d: Configured tx min rate.\n", "setTX_RATE", 3514);
}

uint64_t AppleBCMWLANProximityInterface::copyPeerCache(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1088))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Unable to get peer cache table", "copyPeerCache", 4410);
}

uint64_t AppleBCMWLANProximityInterface::setAWDL_CONFIG(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  v4 = (*(v3 + 1088))(v2);
  return CCLogStream::logAlert(v4, "[dk] %s@%d:%s: send awdl_config (0x%x)\n", "setAWDL_CONFIG", 3706, "setAWDL_CONFIG", v1);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  (*(v2 + 1088))(v1);
  OUTLINED_FUNCTION_7_1();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:ERROR: %s:%u AWDL Chip interface not initialized, bailing out\n", v5, v6, v7, v8);
}

uint64_t AppleBCMWLANProximityInterface::setAWDL_BSSID(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1088))(v1);
  return CCLogStream::logAlertIf(v3, 0x400uLL, "[dk] %s@%d: \n", "setAWDL_BSSID", 3738);
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1088))(v1);
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v3, "[dk] %s@%d: Unable to send awdl_af_hdr (%d)\n", v5, v6, v7);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1088))(v1);
  return CCLogStream::logAlertIf(v3, 0x400uLL, "[dk] %s@%d: Sent awdl_af_hdr length %lu\n", "setAWDL_BSSID", 3778, 10);
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1088))(v1);
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v3, "[dk] %s@%d: Unable to send awdl_config (%d)\n", v5, v6, v7);
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1088))(v1);
  OUTLINED_FUNCTION_15_4();
  return CCLogStream::logAlertIf(v3, 0x400uLL, "[dk] %s@%d: Sent awdl_config 0x%X\n", "setAWDL_BSSID", 3789, v5);
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1088))(v1);
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v3, "[dk] %s@%d: Unable to send awdl_af_rssi (%d)\n", v5, v6, v7);
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1088))(v1);
  OUTLINED_FUNCTION_15_4();
  return CCLogStream::logAlertIf(v3, 0x400uLL, "[dk] %s@%d: Sent awdl_af_rssi %d\n", "setAWDL_BSSID", 3795, v5);
}

{
  v3 = OUTLINED_FUNCTION_5_6(a1);
  v5 = (*(v4 + 1088))(v3);
  return CCLogStream::logAlert(v5, "[dk] %s@%d: success, set BSSID to: %02x:%02x:%02x:%02x:%02x:%02x\n", "setAWDL_BSSID", 3804, *v2, v1[5], v1[6], v1[7], v1[8], v1[9]);
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1088))(v1);
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v3, "[dk] %s@%d: failed to delete awdl if (%d)\n", v5, v6, v7);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1088))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d: destroy awdl if success!\n", "setAWDL_BSSID", 3745);
}

uint64_t AppleBCMWLANProximityInterface::setAWDL_BSSID(uint64_t *a1, uint64_t a2, _DWORD *a3)
{
  v5 = OUTLINED_FUNCTION_11_4(a1);
  result = (*(v6 + 1088))(v5);
  if (result)
  {
    (*(*v3 + 1088))(v3);
    result = CCLogStream::shouldLog();
    if (result)
    {
      (*(*v3 + 1088))(v3);
      OUTLINED_FUNCTION_7_1();
      result = CCLogStream::logAlert(v8, "[dk] %s@%d:ERROR: %s:%u AWDL Chip interface not initialized, bailing out\n", v9, v10, v11, v12);
    }
  }

  *a3 = 22;
  return result;
}

uint64_t AppleBCMWLANProximityInterface::deleteChipInterface(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1088))(v1);
  return CCLogStream::logInfo(v3, "[dk] %s@%d:Need to disable sync before deleting chip interface...", "deleteChipInterface", 3972);
}

{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1088))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 920);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logCrit(v1, "[dk] %s@%d:ERROR: Cannot bring down awdl if, error %s\n", v9, v10, v11);
}

{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1088))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 920);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logCrit(v1, "[dk] %s@%d:ERROR: Cannot remove interface for AWDL, error %s\n", v9, v10, v11);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  (*(v2 + 1088))(v1);
  OUTLINED_FUNCTION_7_1();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:ERROR: %s:%u AWDL Chip interface not initialized, bailing out\n", v5, v6, v7, v8);
}

uint64_t AppleBCMWLANProximityInterface::deleteChipInterface(uint64_t *a1, uint64_t a2, int a3)
{
  v5 = OUTLINED_FUNCTION_0_8(a1);
  (*(v6 + 1088))(v5);
  OUTLINED_FUNCTION_3_5();
  v8 = *(v7 + 920);
  v9 = OUTLINED_FUNCTION_16_2();
  v11 = v10(v9);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:AWDL i/f deletion timedout Error = %s(%d)\n", "deleteChipInterface", 4010, v11, a3);
}

uint64_t AppleBCMWLANProximityInterface::createChipInterface(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  v4 = (*(v3 + 1088))(v2);
  FirmwareInterfaceVersion = AppleBCMWLANCore::getFirmwareInterfaceVersion(*(*v1 + 64));
  OUTLINED_FUNCTION_7_1();
  return CCLogStream::logAlert(v4, "[dk] %s@%d:%s[%d]: Creating AWDL chip interface %d, fw ver %d\n", v6, v7, v8, v9, 2, FirmwareInterfaceVersion);
}

{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1088))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 920);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logCrit(v1, "[dk] %s@%d:ERROR: Cannot bring up awdl if, error %s\n", v9, v10, v11);
}

{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1088))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 920);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:ERROR: cur_etheraddr failed on create chip interface, error %s\n", v9, v10, v11);
}

{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1088))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 920);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logCrit(v1, "[dk] %s@%d:ERROR: Cannot create interface for AWDL, error %s\n", v9, v10, v11);
}

uint64_t AppleBCMWLANProximityInterface::createChipInterface(uint64_t *a1, uint64_t a2, int a3)
{
  v5 = OUTLINED_FUNCTION_0_8(a1);
  (*(v6 + 1088))(v5);
  OUTLINED_FUNCTION_3_5();
  v8 = *(v7 + 920);
  v9 = OUTLINED_FUNCTION_16_2();
  v11 = v10(v9);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:AWDL i/f creation timedout Error = %s(%d)\n", "createChipInterface", 3928, v11, a3);
}

uint64_t AppleBCMWLANProximityInterface::setCOMPANION_SKYWALK_IF_CREATE(uint64_t *a1)
{
  v3 = OUTLINED_FUNCTION_2_6(a1);
  (*(v4 + 1088))(v3);
  OUTLINED_FUNCTION_4_6();
  (*(v5 + 160))(v1);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v2, "[dk] %s@%d:ERROR: Deletion failed, NAN companion skywalk interface does not exists for %s\n", v7, v8, v9);
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1088))(v1);
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Not Creating Skywalk interface for AWDL %d\n", v5, v6, v7);
}

uint64_t AppleBCMWLANProximityInterface::setCOMPANION_SKYWALK_IF_CREATE(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = OUTLINED_FUNCTION_0_8(a1);
  v7 = (*(v6 + 1088))(v5);
  v8 = OUTLINED_FUNCTION_5_0(*(*a3 + 112));
  v10 = (*(v9 + 160))(v8);
  v11 = (*(*v3 + 160))(v3);
  return CCLogStream::logAlert(v7, "[dk] %s@%d:ALERT: AWDL companion skywalk interface %s already exists for %s\n", "setCOMPANION_SKYWALK_IF_CREATE", 3825, v10, v11);
}

uint64_t AppleBCMWLANProximityInterface::getPEER_CACHE_MAXIMUM_SIZE(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1088))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 920);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Unable to get awdl max peer count %s\n", v9, v10, v11);
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1088))(v1);
  OUTLINED_FUNCTION_15_4();
  return CCLogStream::logNoticeIf(v3, 0x400uLL, "[dk] %s@%d: get awdl peer count returned %d\n", "getPEER_CACHE_MAXIMUM_SIZE", 4104, v5);
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1088))(v1);
  OUTLINED_FUNCTION_3_0();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:ERROR: %s:%u AWDL Chip interface not initialized, bailing out, interfaceId : %x\n", v5, v6, v7, v8, v9);
}

uint64_t AppleBCMWLANProximityInterface::setPEER_CACHE_CONTROL(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  v4 = (*(v3 + 1088))(v2);
  v5 = *(v1 + 4);
  v6 = "UPDATE";
  v7 = "other";
  if (v5 == 2)
  {
    v7 = "DELETE";
  }

  if (v5 != 6)
  {
    v6 = v7;
  }

  if (!v5)
  {
    v6 = "ADD";
  }

  return CCLogStream::logAlertIf(v4, 0x400uLL, "[dk] %s@%d: Opcode %u %s [%02x:%02x:%02x:%02x:%02x:%02x] ampdu %u ht %u vht %u he %u\n", "setPEER_CACHE_CONTROL", 4159, v5, v6, *(v1 + 8), *(v1 + 9), *(v1 + 10), *(v1 + 11), *(v1 + 12), *(v1 + 13), *(v1 + 44), *(v1 + 16), *(v1 + 45), *(v1 + 60));
}

{
  v3 = OUTLINED_FUNCTION_5_6(a1);
  v5 = (*(v4 + 1088))(v3);
  return CCLogStream::logAlertIf(v5, 0x400uLL, "[dk] %s@%d: deleting peer op %u num %lu\n", "setPEER_CACHE_CONTROL", 4246, *v2, *(*v1 + 528));
}

{
  v2 = OUTLINED_FUNCTION_10_5(a1);
  (*(v3 + 1088))(v2);
  ClassNameHelper = getClassNameHelper(v1);
  v4 = OUTLINED_FUNCTION_33_2();
  return CCLogStream::logAlertIf(v4, v5, v6, "setPEER_CACHE_CONTROL", 4190, ClassNameHelper, "setPEER_CACHE_CONTROL");
}

{
  v2 = OUTLINED_FUNCTION_10_5(a1);
  (*(v3 + 1088))(v2);
  ClassNameHelper = getClassNameHelper(v1);
  v4 = OUTLINED_FUNCTION_33_2();
  return CCLogStream::logAlertIf(v4, v5, v6, "setPEER_CACHE_CONTROL", 4234, ClassNameHelper, "setPEER_CACHE_CONTROL");
}

{
  v1 = OUTLINED_FUNCTION_5_6(a1);
  (*(v2 + 1088))(v1);
  OUTLINED_FUNCTION_31_2();
  return CCLogStream::logAlert(v3, "[dk] %s@%d: channel %u[0x%X] has no band info\n", "setPEER_CACHE_CONTROL", 4324, v5, v6);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1088))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d: Unable to send awdl_peer_op\n", "setPEER_CACHE_CONTROL", 4381);
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1088))(v1);
  OUTLINED_FUNCTION_15_4();
  return CCLogStream::logAlertIf(v3, 0x400uLL, "[dk] %s@%d: cache op SUCCESS op %u\n", "setPEER_CACHE_CONTROL", 4388, v5);
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1088))(v1);
  OUTLINED_FUNCTION_15_4();
  return CCLogStream::logAlert(v3, "[dk] %s@%d: invalid opcode %u\n", "setPEER_CACHE_CONTROL", 4251, v5);
}

uint64_t AppleBCMWLANProximityInterface::setPEER_CACHE_CONTROL(uint64_t *a1, uint64_t a2, unsigned __int8 *a3)
{
  v5 = OUTLINED_FUNCTION_11_4(a1);
  v7 = (*(v6 + 1088))(v5);
  ClassNameHelper = getClassNameHelper(v3);
  return CCLogStream::logAlertIf(v7, 0x400uLL, "[dk] %s@%d:%s::%s adding HT IE, ampdu %u\n", "setPEER_CACHE_CONTROL", 4181, ClassNameHelper, "setPEER_CACHE_CONTROL", *a3);
}

uint64_t AppleBCMWLANProximityInterface::getAWDL_SYNCHRONIZATION_CHANNEL_SEQUENCE(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1088))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Unable to get channel sequence", "getAWDL_SYNCHRONIZATION_CHANNEL_SEQUENCE", 4441);
}

uint64_t AppleBCMWLANProximityInterface::setAWDL_SYNCHRONIZATION_CHANNEL_SEQUENCE(uint64_t *a1, uint64_t a2, unsigned __int8 *a3)
{
  v5 = OUTLINED_FUNCTION_0_8(a1);
  (*(v6 + 1088))(v5);
  v7 = *a3;
  (*(*v3 + 920))(v3, 0);
  OUTLINED_FUNCTION_11_3();
  v8 = OUTLINED_FUNCTION_34_2();
  return CCLogStream::logWarnIf(v8, v9, v10);
}

uint64_t AppleBCMWLANProximityInterface::setAWDL_SYNCHRONIZATION_CHANNEL_SEQUENCE(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1088))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 920);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: AWDLChanSeqRequest Failed with retVal : \n %s", v9, v10, v11);
}

{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1088))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 920);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Unable to send awdl_chan_seq\n %s", v9, v10, v11);
}

{
  v3 = OUTLINED_FUNCTION_5_6(a1);
  v5 = (*(v4 + 1088))(v3);
  return CCLogStream::logAlert(v5, "[dk] %s@%d: AWDL chan seq params: Something is wrong!! length %u encoding %u\n", "setAWDL_SYNCHRONIZATION_CHANNEL_SEQUENCE", 4485, *v2, *(v1 + 6));
}

uint64_t AppleBCMWLANProximityInterface::buildChanSequenceCommand(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  (*(v2 + 1088))(v1);
  OUTLINED_FUNCTION_7_1();
  return CCLogStream::logCrit(v3, "[dk] %s@%d:%s[%d]:FAILED to setup AWDL channel sequence\n", v5, v6, v7, v8);
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1088))(v1);
  OUTLINED_FUNCTION_3_0();
  return CCLogStream::logCrit(v3, "[dk] %s@%d:%s[%d]:FAILED to setup Slice %d Channel sequence ----\n", v5, v6, v7, v8, v9);
}

{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  (*(v3 + 1088))(v2);
  v10 = *v1 + 12;
  OUTLINED_FUNCTION_7_1();
  return CCLogStream::logCrit(v4, "[dk] %s@%d:%s[%d] : COMMAND BUF SIZE Exceeded : Need %d. Available %d ----\n", v6, v7, v8, v9, v10, 2048);
}

{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1088))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 920);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Unable to send awdl_chan_seq\n %s", v9, v10, v11);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  (*(v2 + 1088))(v1);
  OUTLINED_FUNCTION_7_1();
  return CCLogStream::logCrit(v3, "[dk] %s@%d:%s[%d] : Neither channel sequences specified. Bogus command ?\n", v5, v6, v7, v8);
}

uint64_t AppleBCMWLANProximityInterface::buildAWDLChanSequence(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_6(a1);
  (*(v2 + 1088))(v1);
  OUTLINED_FUNCTION_31_2();
  return CCLogStream::logAlert(v3, "[dk] %s@%d: setting DFS channel %d bandwidth %d\n", "buildAWDLChanSequence", 5403, v5, v6);
}

{
  v1 = OUTLINED_FUNCTION_5_6(a1);
  (*(v2 + 1088))(v1);
  OUTLINED_FUNCTION_31_2();
  return CCLogStream::logAlert(v3, "[dk] %s@%d: channel %u[0x%X] has no band info\n", "buildAWDLChanSequence", 5361, v5, v6);
}

{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  v4 = (*(v3 + 1088))(v2);
  return CCLogStream::logAlert(v4, "[dk] %s@%d:chan_sequence[0]==0, forcing to %d (%02X) \n", "buildAWDLChanSequence", 5453, 6, *v1);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1088))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:chan_sequence[0]==0, forcing to %d\n", "buildAWDLChanSequence", 5456, 6);
}

uint64_t AppleBCMWLANProximityInterface::buildAWDLChanSequence(uint64_t *a1, uint64_t a2, int a3)
{
  v6 = OUTLINED_FUNCTION_0_8(a1);
  (*(v7 + 1088))(v6);
  OUTLINED_FUNCTION_3_5();
  v9 = (*(v8 + 920))(v3, 3758096385);
  return CCLogStream::logAlert(v4, "[dk] %s@%d: awdl_chan_seq: Couldn't find chanspec for specified channel: %d, %s Returning.\n", "buildAWDLChanSequence", 5443, a3, v9);
}

uint64_t AppleBCMWLANProximityInterface::setAWDL_OOB_REQUEST(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  v4 = (*(v3 + 1088))(v2);
  return CCLogStream::logInfoIf(v4, 0x400uLL, "[dk] %s@%d: OOB sent with payload len %u \n", "setAWDL_OOB_REQUEST", 4552, *v1);
}

uint64_t AppleBCMWLANProximityInterface::setLLW_PARAMS()
{
  OUTLINED_FUNCTION_4();
  v3 = OUTLINED_FUNCTION_14_3(v2);
  result = (*(v4 + 1088))(v3);
  if (result)
  {
    OUTLINED_FUNCTION_19_1();
    (*(v6 + 1088))(v1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      OUTLINED_FUNCTION_19_1();
      v8 = (*(v7 + 1088))(v1);
      result = CCLogStream::logAlert(v8, "[dk] %s@%d:FW does not support llw", "setLLW_PARAMS", 4604);
    }
  }

  *v0 = 711;
  return result;
}

{
  OUTLINED_FUNCTION_4();
  v3 = OUTLINED_FUNCTION_14_3(v2);
  result = (*(v4 + 1088))(v3);
  if (result)
  {
    OUTLINED_FUNCTION_19_1();
    (*(v6 + 1088))(v1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      OUTLINED_FUNCTION_19_1();
      v8 = (*(v7 + 1088))(v1);
      result = CCLogStream::logAlert(v8, "[dk] %s@%d:hp2p cmd alloc fail\n", "setLLW_PARAMS", 4606);
    }
  }

  *v0 = 701;
  return result;
}

{
  OUTLINED_FUNCTION_4();
  v3 = OUTLINED_FUNCTION_14_3(v2);
  result = (*(v4 + 1088))(v3);
  if (result)
  {
    OUTLINED_FUNCTION_19_1();
    (*(v6 + 1088))(v1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      OUTLINED_FUNCTION_19_1();
      v8 = (*(v7 + 1088))(v1);
      result = CCLogStream::logAlert(v8, "[dk] %s@%d:bad argument\n", "setLLW_PARAMS", 4605);
    }
  }

  *v0 = 706;
  return result;
}

uint64_t AppleBCMWLANProximityInterface::setLLW_PARAMS(uint64_t *a1, int a2, _DWORD *a3)
{
  v6 = OUTLINED_FUNCTION_5_0(a1);
  result = (*(v7 + 1088))(v6);
  if (result)
  {
    (*(*a1 + 1088))(a1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v9 = (*(*a1 + 1088))(a1);
      result = CCLogStream::logAlert(v9, "[dk] %s@%d:hp2p set iovar failed\n", "setLLW_PARAMS", 4719);
    }
  }

  *a3 = a2;
  return result;
}

uint64_t AppleBCMWLANProximityInterface::getLLW_PARAMS()
{
  OUTLINED_FUNCTION_4();
  v3 = OUTLINED_FUNCTION_14_3(v2);
  result = (*(v4 + 1088))(v3);
  if (result)
  {
    OUTLINED_FUNCTION_19_1();
    (*(v6 + 1088))(v1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      OUTLINED_FUNCTION_19_1();
      v8 = (*(v7 + 1088))(v1);
      result = CCLogStream::logAlert(v8, "[dk] %s@%d:FW does not support llw", "getLLW_PARAMS", 4743);
    }
  }

  *v0 = 711;
  return result;
}

{
  OUTLINED_FUNCTION_4();
  v3 = OUTLINED_FUNCTION_14_3(v2);
  result = (*(v4 + 1088))(v3);
  if (result)
  {
    OUTLINED_FUNCTION_19_1();
    (*(v6 + 1088))(v1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      OUTLINED_FUNCTION_19_1();
      v8 = (*(v7 + 1088))(v1);
      result = CCLogStream::logAlert(v8, "[dk] %s@%d:hp2p cmd resp alloc fail\n", "getLLW_PARAMS", 4746);
    }
  }

  *v0 = 701;
  return result;
}

{
  OUTLINED_FUNCTION_4();
  v3 = OUTLINED_FUNCTION_14_3(v2);
  result = (*(v4 + 1088))(v3);
  if (result)
  {
    OUTLINED_FUNCTION_19_1();
    (*(v6 + 1088))(v1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      OUTLINED_FUNCTION_19_1();
      v8 = (*(v7 + 1088))(v1);
      result = CCLogStream::logAlert(v8, "[dk] %s@%d:hp2p cmd alloc fail\n", "getLLW_PARAMS", 4745);
    }
  }

  *v0 = 701;
  return result;
}

{
  OUTLINED_FUNCTION_4();
  v3 = OUTLINED_FUNCTION_14_3(v2);
  result = (*(v4 + 1088))(v3);
  if (result)
  {
    OUTLINED_FUNCTION_19_1();
    (*(v6 + 1088))(v1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      OUTLINED_FUNCTION_19_1();
      v8 = (*(v7 + 1088))(v1);
      result = CCLogStream::logAlert(v8, "[dk] %s@%d:bad argument\n", "getLLW_PARAMS", 4744);
    }
  }

  *v0 = 706;
  return result;
}

uint64_t AppleBCMWLANProximityInterface::getLLW_PARAMS(uint64_t *a1, int a2, _DWORD *a3)
{
  v6 = OUTLINED_FUNCTION_5_0(a1);
  result = (*(v7 + 1088))(v6);
  if (result)
  {
    (*(*a1 + 1088))(a1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v9 = (*(*a1 + 1088))(a1);
      result = CCLogStream::logAlert(v9, "[dk] %s@%d:hp2p get iovar failed\n", "getLLW_PARAMS", 4768);
    }
  }

  *a3 = a2;
  return result;
}

uint64_t AppleBCMWLANProximityInterface::getLLW_PARAMS(uint64_t *a1)
{
  OUTLINED_FUNCTION_2_6(a1);
  result = (*(v3 + 1088))();
  if (result)
  {
    OUTLINED_FUNCTION_19_1();
    (*(v5 + 1088))(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      OUTLINED_FUNCTION_19_1();
      v7 = (*(v6 + 1088))(v2);
      result = CCLogStream::logAlert(v7, "[dk] %s@%d:Unexpected hp2p subcmd resp length\n", "getLLW_PARAMS", 4807);
    }
  }

  *v1 = -536870911;
  return result;
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1088))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Unexpected hp2p subcmd resp id\n", "getLLW_PARAMS", 4805);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  (*(v2 + 1088))(v1);
  OUTLINED_FUNCTION_7_1();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:ERROR: %s:%u AWDL Chip interface not initialized, bailing out\n", v5, v6, v7, v8);
}

uint64_t AppleBCMWLANProximityInterface::setAWDL_OOB_AUTO_REQUEST(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  v4 = (*(v3 + 1088))(v2);
  return CCLogStream::logInfoIf(v4, 0x400uLL, "[dk] %s@%d: OOB AUTO sent with payload len %u \n", "setAWDL_OOB_AUTO_REQUEST", 4834, *v1);
}

uint64_t AppleBCMWLANProximityInterface::enableRoamEvents(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1088))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 920);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Failure to get event mask, %s\n", v9, v10, v11);
}

{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1088))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 920);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Failure to enable AWDL events, %s\n", v9, v10, v11);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1088))(v1);
  return CCLogStream::logNotice(v3, "[dk] %s@%d: Enabling AWDL Events\n", "enableRoamEvents", 4906);
}

uint64_t AppleBCMWLANProximityInterface::reset(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  (*(v2 + 1088))(v1);
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logInfo(v3, "[dk] %s@%d:%s\n", v5, v6, v7);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1088))(v1);
  return CCLogStream::logInfo(v3, "[dk] %s@%d:\n", "reset", 5124);
}

uint64_t AppleBCMWLANProximityInterface::setAWDL_TXCAL_PERIOD(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1088))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 920);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Unable to set awdl_phycal_period %s\n", v9, v10, v11);
}

uint64_t AppleBCMWLANProximityInterface::getAWDL_TXCAL_PERIOD(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1088))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 920);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Unable to get awdl phycal period %s\n", v9, v10, v11);
}

uint64_t AppleBCMWLANProximityInterface::setAWDL_DFSP_CONFIG(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1088))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 920);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Could not Enable DFS Proxy mode. Error code  %s\n", v9, v10, v11);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1088))(v1);
  return CCLogStream::logAlertIf(v3, 0x400uLL, "[dk] %s@%d: Enabled DFS Proxy Mode.\n", "setAWDL_DFSP_CONFIG", 5223);
}

uint64_t AppleBCMWLANProximityInterface::getAWDL_DFSP_CONFIG(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1088))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 920);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Could not Enable DFS Proxy mode. Error code  %s\n", v9, v10, v11);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1088))(v1);
  return CCLogStream::logAlertIf(v3, 0x400uLL, "[dk] %s@%d: Enabled DFS Proxy Mode.\n", "getAWDL_DFSP_CONFIG", 5246);
}

uint64_t AppleBCMWLANProximityInterface::setAWDL_DFSP_UCSA_CONFIG(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1088))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 920);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Could not Enable DFS Proxy UCSA. Error code : %s\n", v9, v10, v11);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1088))(v1);
  return CCLogStream::logAlertIf(v3, 0x400uLL, "[dk] %s@%d: Enabled DFS Proxy UCSA.\n", "setAWDL_DFSP_UCSA_CONFIG", 5281);
}

uint64_t AppleBCMWLANProximityInterface::fillSliceDataForStandAloneAWDL(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  (*(v2 + 1088))(v1);
  OUTLINED_FUNCTION_7_1();
  return CCLogStream::logCrit(v3, "[dk] %s@%d:%s[%d] : Unexpected. SDB On = false and SDB Off = false \n", v5, v6, v7, v8);
}

uint64_t AppleBCMWLANProximityInterface::convertCommittedAvailabilityToChanSpecSequence(uint64_t *a1, uint64_t a2, unsigned __int16 a3, unsigned __int16 *a4)
{
  v6 = OUTLINED_FUNCTION_5_5(a1);
  (*(v7 + 1088))(v6);
  v14 = *a4;
  OUTLINED_FUNCTION_7_1();
  return CCLogStream::logAlert(v8, "[dk] %s@%d:%s[%d]: ERROR : slot %d already has a channel allocated %x\n", v10, v11, v12, v13, a3, v14);
}

uint64_t AppleBCMWLANProximityInterface::convertCommittedAvailabilityToChanSpecSequence(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1088))(v1);
  OUTLINED_FUNCTION_3_0();
  return CCLogStream::logCrit(v3, "[dk] %s@%d:%s[%d] ERROR : Max Period out of bounds : %d, Expected 1024\n", v5, v6, v7, v8, v9);
}

uint64_t AppleBCMWLANProximityInterface::convertOpClassToNanChannel(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1088))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:ERROR:NOT 6G OPCLASS: Should not come here..\n", "convertOpClassToNanChannel", 6076);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1088))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:SHOULD NOT COME HERE temp_band %x\n", "convertOpClassToNanChannel", 6026, 0);
}

uint64_t AppleBCMWLANProximityInterface::start(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  (*(v2 + 1088))(v1);
  OUTLINED_FUNCTION_9_4();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:%s: ERROR: awdl skywalk start fail\n", v5, v6, v7);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1088))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Failed to register interface with bus interface", "start", 6230);
}

uint64_t AppleBCMWLANProximityInterface::registerInterface(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1088))(v1);
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:ProximityInterface: media type report fail, ret[0x%08x]\n", v5, v6, v7);
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1088))(v1);
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:ProximityInterface: set headroom fail fail, ret[0x%08x]\n", v5, v6, v7);
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1088))(v1);
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:ProximityInterface: skywalk interface registration fail, ret[0x%08x]\n", v5, v6, v7);
}

uint64_t AppleBCMWLANProximityInterface::setInterfaceEnable(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  (*(v2 + 1088))(v1);
  OUTLINED_FUNCTION_7_1();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:%s:%d ERROR: AWDL interface enable failed!\n", v5, v6, v7, v8);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  (*(v2 + 1088))(v1);
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:%s: AWDL interface not up yet, not enabling queues\n", v5, v6, v7);
}

uint64_t AppleBCMWLANProximityInterface::setInterfaceEnable(uint64_t *a1, uint64_t a2, char a3)
{
  v4 = OUTLINED_FUNCTION_5_5(a1);
  v6 = (*(v5 + 1088))(v4);
  if (a3)
  {
    v7 = "enable";
  }

  else
  {
    v7 = "disable";
  }

  return CCLogStream::logAlert(v6, "[dk] %s@%d:%s:%d AWDL prox interface %s\n", "setInterfaceEnable", 6370, "setInterfaceEnable", 6370, v7);
}

uint64_t AppleBCMWLANProximityInterface::enableDatapath(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1088))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:awdl interface enable data path\n", "enableDatapath", 6417);
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1088))(v1);
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logInfo(v3, "[dk] %s@%d:skywalk rx completion queue enqueue fail with return %d\n", v5, v6, v7);
}

uint64_t AppleBCMWLANProximityInterface::enableDatapath(uint64_t *a1, uint64_t a2, _DWORD *a3)
{
  v5 = OUTLINED_FUNCTION_5_5(a1);
  result = (*(v6 + 1088))(v5);
  if (result)
  {
    (*(*a1 + 1088))(a1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v8 = (*(*a1 + 1088))(a1);
      result = CCLogStream::logCrit(v8, "[dk] %s@%d:rx completion queue not valid\n", "enableDatapath", 6423);
    }
  }

  *a3 = -536870212;
  return result;
}

uint64_t AppleBCMWLANProximityInterface::disableDatapath(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1088))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:awdl interface disable data path\n", "disableDatapath", 6453);
}

{
  v2 = OUTLINED_FUNCTION_10_5(a1);
  result = (*(v3 + 1088))(v2);
  if (result)
  {
    (*(*v1 + 1088))(v1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v5 = (*(*v1 + 1088))(v1);
      return CCLogStream::logCrit(v5, "[dk] %s@%d:tx completion queue not valid\n", "disableDatapath", 6467);
    }
  }

  return result;
}

{
  v2 = OUTLINED_FUNCTION_10_5(a1);
  result = (*(v3 + 1088))(v2);
  if (result)
  {
    (*(*v1 + 1088))(v1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v5 = (*(*v1 + 1088))(v1);
      return CCLogStream::logCrit(v5, "[dk] %s@%d:rx completion queue not valid\n", "disableDatapath", 6464);
    }
  }

  return result;
}

{
  v3 = OUTLINED_FUNCTION_2_6(a1);
  (*(v4 + 1088))(v3);
  OUTLINED_FUNCTION_4_6();
  (*(v5 + 160))(v1);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logCrit(v2, "[dk] %s@%d:%s: skywalk data path disable fail\n", v7, v8, v9);
}

uint64_t AppleBCMWLANProximityInterface::disableDatapath(uint64_t a1, uint64_t a2)
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

uint64_t AppleBCMWLANProximityInterface::enable(uint64_t *a1)
{
  v3 = OUTLINED_FUNCTION_2_6(a1);
  (*(v4 + 1088))(v3);
  OUTLINED_FUNCTION_4_6();
  (*(v5 + 160))(v1);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v2, "[dk] %s@%d:%s enabling AWDL interface\n", v7, v8, v9);
}

uint64_t AppleBCMWLANProximityInterface::disable(uint64_t *a1)
{
  v3 = OUTLINED_FUNCTION_2_6(a1);
  (*(v4 + 1088))(v3);
  OUTLINED_FUNCTION_4_6();
  (*(v5 + 160))(v1);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v2, "[dk] %s@%d:%s: disabling AWDL interface\n", v7, v8, v9);
}

uint64_t AppleBCMWLANProximityInterface::printDataPath(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_2_6(a1);
  v4 = (*(v3 + 1088))(v2);
  InterfaceRoleStr = IO80211SkywalkInterface::getInterfaceRoleStr(v1);
  v6 = (*(*v1 + 160))(v1);
  return CCLogStream::logInfo(v4, "[dk] %s@%d:Enter InterfaceRole:%s bsdname:%s\n", "printDataPath", 6661, InterfaceRoleStr, v6);
}

uint64_t AppleBCMWLANProximityInterface::sendPendingPacketsToStack(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1088))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d: FAIL : Invalid Rx Completion Queue available \n", "sendPendingPacketsToStack", 6705);
}

uint64_t AppleBCMWLANProximityInterface::freePendingPackets(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1088))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d: FAIL : Invalid Rx Completion Queue available \n", "freePendingPackets", 6723);
}

uint64_t AppleBCMWLANProximityInterface::clearTrafficRegistrationState(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_10_5(a1);
  v4 = (*(v3 + 1088))(v2);
  return CCLogStream::logAlert(v4, "[dk] %s@%d: CarPlay active %d, low latency %d, AirPlay %d, SideCar %d", "clearTrafficRegistrationState", 6735, *(*(v1 + 136) + 92), *(*(v1 + 136) + 544), *(*(v1 + 136) + 94), *(*(v1 + 136) + 95));
}

uint64_t AppleBCMWLANProximityInterface::setP2P_COEX_PROTECTION(uint64_t *a1, uint64_t a2, int a3)
{
  v5 = OUTLINED_FUNCTION_0_8(a1);
  (*(v6 + 1088))(v5);
  OUTLINED_FUNCTION_3_5();
  v8 = *(v7 + 920);
  v9 = OUTLINED_FUNCTION_16_2();
  v11 = v10(v9);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:ERROR: Unable to set P2p Coex Protection %s (0x%x)\n", "setP2P_COEX_PROTECTION", 6819, v11, a3);
}

uint64_t AppleBCMWLANProximityInterface::setP2P_COEX_PROTECTION(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1088))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:ERROR: AWDL Chip interface not initialized, bailing out\n", "setP2P_COEX_PROTECTION", 6745);
}

uint64_t AppleBCMWLANChipManagerPCIe4357::prepareHardware(AppleBCMWLANChipManagerPCIe4357 *this, AppleBCMWLANChipConfigSpace *a2, AppleBCMWLANChipBackplane *a3)
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

uint64_t AppleBCMWLANChipManagerPCIe4357::checkHardware(AppleBCMWLANChipManagerPCIe4357 *this, AppleBCMWLANChipConfigSpace *a2, AppleBCMWLANChipBackplane *a3)
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

uint64_t AppleBCMWLANChipManagerPCIe4387::prepareHardware(AppleBCMWLANChipManagerPCIe4387 *this, AppleBCMWLANChipConfigSpace *a2, AppleBCMWLANChipBackplane *a3)
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

uint64_t AppleBCMWLANChipManagerPCIe4387::checkHardware(AppleBCMWLANChipManagerPCIe4387 *this, AppleBCMWLANChipConfigSpace *a2, AppleBCMWLANChipBackplane *a3)
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

uint64_t AppleBCMWLANChipManagerPCIe4387::readChipProvisioningData(AppleBCMWLANChipManagerPCIe4387 *this, AppleBCMWLANChipBackplane *a2, const OSData *a3)
{
  v66 = 0;
  if (**(this + 9))
  {
    return 0;
  }

  v3 = 3758097085;
  if (!a2 || AppleBCMWLANChipManagerPCIe4387::readSFLASH(this, a2, a3))
  {
    return 3758097086;
  }

  if (!**(this + 9))
  {
    return 3758097086;
  }

  SROMByteCount = AppleBCMWLANChipManagerPCIe::getSROMByteCount(this);
  v6 = OUTLINED_FUNCTION_2_8();
  if (OSData::getLength(v6) != SROMByteCount)
  {
    return 3825175817;
  }

  v7 = OUTLINED_FUNCTION_2_8();
  BytesNoCopy = OSData::getBytesNoCopy(v7);
  if (!BytesNoCopy)
  {
    return 3825175818;
  }

  v9 = BytesNoCopy;
  v10 = AppleBCMWLANChipManagerPCIe::getSROMByteCount(this);
  v11 = OSData::withBytes(v9, v10);
  if (v11)
  {
    v12 = v11;
    OUTLINED_FUNCTION_4_8(v11, "SROM");
    OUTLINED_FUNCTION_1_10();
    (*(v13 + 16))(v12);
    v14 = OUTLINED_FUNCTION_2_8();
    v15 = OSData::getBytesNoCopy(v14);
    v16 = &v15[AppleBCMWLANChipManagerPCIe::getSROMoffsetMacAddress(this)];
    bytes[0] = *v16;
    bytes[1] = v16[1];
    bytes[2] = v16[2];
    bytes[3] = v16[3];
    bytes[4] = v16[4];
    bytes[5] = v16[5];
    v17 = OSData::withBytes(bytes, 6uLL);
    if (v17)
    {
      v18 = v17;
      OUTLINED_FUNCTION_4_8(v17, "macaddress");
      OUTLINED_FUNCTION_1_10();
      (*(v19 + 16))(v18);
      v64 = (v9[1] << 9) | (2 * *v9);
      v20 = OSData::withBytes(&v64, 2uLL);
      if (v20)
      {
        v21 = v20;
        OUTLINED_FUNCTION_4_8(v20, "SROM:datalength");
        OUTLINED_FUNCTION_1_10();
        (*(v22 + 16))(v21);
        v23 = v64;
        v24 = AppleBCMWLANChipManagerPCIe::getSROMByteCount(this);
        v25 = v64;
        v26 = OSData::withCapacity(1u);
        if (v26)
        {
          v27 = v26;
          v28 = v25 - 2;
          if (v25 <= 2 || v23 >= v24)
          {
            v28 = 0;
          }

          appended = OSData::appendBytes(v26, &v9[v28], 1uLL);
          OUTLINED_FUNCTION_4_8(appended, "SROM:version");
          OUTLINED_FUNCTION_1_10();
          (*(v31 + 16))(v27);
          v32 = OSData::withCapacity(2u);
          if (v32)
          {
            v33 = v32;
            SROMoffsetSignature = AppleBCMWLANChipManagerPCIe::getSROMoffsetSignature(this);
            OSData::appendBytes(v33, &v9[SROMoffsetSignature + 1], 1uLL);
            v35 = AppleBCMWLANChipManagerPCIe::getSROMoffsetSignature(this);
            v36 = OSData::appendBytes(v33, &v9[v35], 1uLL);
            OUTLINED_FUNCTION_4_8(v36, "SROM:signature");
            OUTLINED_FUNCTION_1_10();
            (*(v37 + 16))(v33);
            LODWORD(v33) = v64;
            v38 = v33 >= AppleBCMWLANChipManagerPCIe::getSROMByteCount(this) ? 0 : getcrc8(v9, v64, 0xFFu);
            v65 = v38;
            v39 = OSData::withCapacity(1u);
            if (v39)
            {
              v40 = v39;
              v41 = OSData::appendBytes(v39, &v65, 1uLL);
              OUTLINED_FUNCTION_4_8(v41, "checksum:value");
              OUTLINED_FUNCTION_1_10();
              (*(v42 + 16))(v40);
              v63 = v65 == 159;
              v43 = OSData::withCapacity(1u);
              if (v43)
              {
                v44 = v43;
                v45 = OSData::appendBytes(v43, &v63, 1uLL);
                OUTLINED_FUNCTION_4_8(v45, "checksum:valid");
                OUTLINED_FUNCTION_1_10();
                (*(v46 + 16))(v44);
                v47 = v64;
                v48 = AppleBCMWLANChipManagerPCIe::getSROMByteCount(this);
                v49 = v64;
                v50 = OSData::withCapacity(1u);
                if (v50)
                {
                  v51 = v50;
                  v52 = v49 - 1;
                  if (v49 <= 2 || v47 >= v48)
                  {
                    v52 = 0;
                  }

                  v54 = OSData::appendBytes(v50, &v9[v52], 1uLL);
                  OUTLINED_FUNCTION_4_8(v54, "checksum:rawvalue");
                  OUTLINED_FUNCTION_1_10();
                  (*(v55 + 16))(v51);
                  v56 = **(this + 9);
                  SROMoffsetSKU = AppleBCMWLANChipManagerPCIe::getSROMoffsetSKU(this);
                  LOBYTE(v66) = *OSData::getBytesNoCopy(v56, SROMoffsetSKU, 1uLL);
                  v58 = **(this + 9);
                  v59 = AppleBCMWLANChipManagerPCIe::getSROMoffsetSKU(this);
                  HIBYTE(v66) = *OSData::getBytesNoCopy(v58, (v59 + 1), 1uLL);
                  v60 = OSData::withCapacity(2u);
                  if (v60)
                  {
                    v61 = v60;
                    OSData::appendBytes(v60, &v66, 1uLL);
                    OSData::appendBytes(v61, &v66 + 1, 1uLL);
                    AppleBCMWLANChipManagerPCIe::setChipProvisioningData(this, "SKU", v61);
                    (v61->release)(v61);
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

  return v3;
}

uint64_t AppleBCMWLANChipManagerPCIe4387::readSFLASH(AppleBCMWLANChipManagerPCIe4387 *this, AppleBCMWLANChipBackplane *a2, const OSData *a3)
{
  v21 = 0;
  bytes = 58;
  if (**(this + 9))
  {
    return 0;
  }

  if (!a2)
  {
    return 3758097086;
  }

  if (a3 && OSData::getLength(a3))
  {
    v6 = OSData::withData(a3);
  }

  else
  {
    SROMByteCount = AppleBCMWLANChipManagerPCIe::getSROMByteCount(this);
    v6 = OSData::withCapacity(SROMByteCount);
  }

  **(this + 9) = v6;
  v8 = **(this + 9);
  if (v8)
  {
    result = 0;
  }

  else
  {
    result = 3758097085;
  }

  if (!a3 && v8)
  {
    if (AppleBCMWLANChipManagerPCIe::getSROMByteCount(this))
    {
      v10 = 0;
      do
      {
        v11 = OUTLINED_FUNCTION_2_8();
        OSData::appendBytes(v11, &bytes, 1uLL);
        ++v10;
      }

      while (v10 < AppleBCMWLANChipManagerPCIe::getSROMByteCount(this));
    }

    v12 = OUTLINED_FUNCTION_2_8();
    BytesNoCopy = OSData::getBytesNoCopy(v12);
    if (!BytesNoCopy)
    {
      return 3758097085;
    }

    result = AppleBCMWLANChipManagerPCIe4387::sflashGPIOConfig(BytesNoCopy, a2);
    if (!result)
    {
      if (AppleBCMWLANChipManagerPCIe::getSROMByteCount(this) >= 4)
      {
        v14 = 0;
        v15 = 0;
        do
        {
          AppleBCMWLANChipBackplane::readCommonSFLASHWrapperReg32(a2, v14, &v21);
          v16 = v21;
          v17 = OUTLINED_FUNCTION_2_8();
          *OSData::getBytesNoCopy(v17, v14, 2uLL) = v16;
          v18 = HIWORD(v21);
          v19 = OUTLINED_FUNCTION_2_8();
          *OSData::getBytesNoCopy(v19, v14 + 2, 2uLL) = v18;
          ++v15;
          v14 += 4;
        }

        while (v15 < AppleBCMWLANChipManagerPCIe::getSROMByteCount(this) >> 2);
      }

      return 0;
    }
  }

  return result;
}

uint64_t AppleBCMWLANChipManagerPCIe4387::sflashGPIOConfig(AppleBCMWLANChipManagerPCIe4387 *this, AppleBCMWLANChipBackplane *a2)
{
  v2 = 3758097098;
  if (!a2)
  {
    return 3758097086;
  }

  AppleBCMWLANChipBackplane::writeGCICoreReg32(a2, 0x40u, 1u);
  v4 = OUTLINED_FUNCTION_5_7();
  if (!AppleBCMWLANChipBackplane::readGCICoreReg32(v4, v5, v6))
  {
    v7 = OUTLINED_FUNCTION_5_7();
    AppleBCMWLANChipBackplane::writeGCICoreReg32(v7, v8, v9);
    AppleBCMWLANChipBackplane::writeGCICoreReg32(a2, 0x40u, 2u);
    v10 = OUTLINED_FUNCTION_5_7();
    if (!AppleBCMWLANChipBackplane::readGCICoreReg32(v10, v11, v12))
    {
      v13 = OUTLINED_FUNCTION_5_7();
      AppleBCMWLANChipBackplane::writeGCICoreReg32(v13, v14, v15);
      return 0;
    }
  }

  return v2;
}

uint64_t AppleBCMWLANChipManagerPCIe4387::validateChipProvisioningData(AppleBCMWLANChipManagerPCIe4387 *this)
{
  ChipProvisioningData = AppleBCMWLANChipManagerPCIe::getChipProvisioningData(this);
  if (!ChipProvisioningData)
  {
    return 3758097086;
  }

  if (OUTLINED_FUNCTION_3_6(ChipProvisioningData, "checksum:valid", v3, v4, v5, v6, v7, v8, v36, v39, v42, 0, 0) || !v47)
  {
    OUTLINED_FUNCTION_24_1();
    if ((*(v32 + 72))(this))
    {
      OUTLINED_FUNCTION_24_1();
      (*(v33 + 72))(this);
      v15 = 3825175815;
      if (CCLogStream::shouldLog())
      {
        OUTLINED_FUNCTION_24_1();
        v35 = (*(v34 + 72))(this);
        CCLogStream::logAlert(v35, "[dk] %s@%d: Invalid checksum\n");
      }
    }

    else
    {
      return 3825175815;
    }
  }

  else if (OUTLINED_FUNCTION_3_6(0, "SROM:version", v9, v10, v11, v12, v13, v14, v37, v40, v43, v45, 0) || (SROMVersion = AppleBCMWLANChipManagerPCIe::getSROMVersion(this), SROMVersion != v48))
  {
    v15 = 3825175811;
    OUTLINED_FUNCTION_24_1();
    if ((*(v16 + 72))(this))
    {
      OUTLINED_FUNCTION_24_1();
      (*(v17 + 72))(this);
      if (CCLogStream::shouldLog())
      {
        OUTLINED_FUNCTION_24_1();
        v19 = (*(v18 + 72))(this);
        CCLogStream::logAlert(v19, "[dk] %s@%d: Invalid version\n");
      }
    }
  }

  else if (OUTLINED_FUNCTION_3_6(SROMVersion, "SROM:signature", v21, v22, v23, v24, v25, v26, v38, v41, v44, v46, 0) || AppleBCMWLANChipManagerPCIe::getSROMSignature(this) != bswap32(v49) >> 16)
  {
    OUTLINED_FUNCTION_24_1();
    v15 = 3825175812;
    if ((*(v27 + 72))(this))
    {
      OUTLINED_FUNCTION_24_1();
      (*(v28 + 72))(this);
      if (CCLogStream::shouldLog())
      {
        OUTLINED_FUNCTION_24_1();
        v30 = (*(v29 + 72))(this);
        CCLogStream::logAlert(v30, "[dk] %s@%d: Invalid signature\n", "validateChipProvisioningData", 555);
        return 3825175812;
      }
    }
  }

  else
  {
    return 0;
  }

  return v15;
}

OSDataPtr AppleBCMWLANChipManagerPCIe4387::copySROM(AppleBCMWLANChipManagerPCIe4387 *this)
{
  v2 = **(this + 9);
  if (!v2 || !OSData::getLength(v2))
  {
    return 0;
  }

  v3 = **(this + 9);

  return OSData::withData(v3);
}

BOOL AppleBCMWLANAudioProtector::createReportersAndLegend(AppleBCMWLANAudioProtector *this)
{
  ReporterProvider = IO80211Controller::getReporterProvider(*(*(this + 8) + 16));
  *(*(this + 8) + 80) = IOSimpleReporter::with(ReporterProvider, 0x8010, 0, v3);
  v4 = *(this + 8);
  v5 = *(v4 + 80);
  if (!v5)
  {
    return 0;
  }

  OSSet::setObject(*(v4 + 96), v5);
  (*(**(*(this + 8) + 80) + 16))(*(*(this + 8) + 80));
  v6 = &off_1003C8DF0;
  v7 = 7;
  do
  {
    IOReporter::addChannel(*(*(this + 8) + 80), *(v6 - 1), *v6);
    v6 += 2;
    --v7;
  }

  while (v7);
  IO80211Controller::addReporterLegend(*(*(this + 8) + 16), *(*(this + 8) + 32), *(*(this + 8) + 80), "Audio Protect", "Events");
  v8 = IO80211Controller::getReporterProvider(*(*(this + 8) + 16));
  *(*(this + 8) + 88) = IOStateReporter::with(v8, 0x12, 2u, 0, v9);
  v10 = *(this + 8);
  v11 = *(v10 + 88);
  if (!v11)
  {
    return 0;
  }

  OSSet::setObject(*(v10 + 96), v11);
  v12 = OUTLINED_FUNCTION_0_10();
  (*(*v12 + 16))(v12);
  v13 = OUTLINED_FUNCTION_0_10();
  IOReporter::addChannel(v13, 0x574946494C444F53uLL, "LDO Control");
  v14 = OUTLINED_FUNCTION_0_10();
  IOStateReporter::setStateID(v14, 0x574946494C444F53uLL, 0, 0x466F726365204F4EuLL);
  v15 = OUTLINED_FUNCTION_0_10();
  IOStateReporter::setStateID(v15, 0x574946494C444F53uLL, 1, 0x6175746FuLL);
  v16 = OUTLINED_FUNCTION_0_10();
  IOStateReporter::setChannelState(v16, 0x574946494C444F53uLL, 0x6175746FuLL);
  return IO80211Controller::addReporterLegend(*(*(this + 8) + 16), *(*(this + 8) + 32), *(*(this + 8) + 88), "Audio Protect", "LDO Control") == 0;
}

uint64_t AppleBCMWLANAudioProtector::initWithDriver(uint64_t *a1, uint64_t *a2)
{
  if (!OUTLINED_FUNCTION_2_9(a1, a2))
  {
    return 1;
  }

  result = CCLogStream::shouldLog();
  if (result)
  {
    v3 = OUTLINED_FUNCTION_0_5();
    CCLogStream::logAlert(v3, "[dk] %s@%d:Failed to create Report Set\n", "initWithDriver", 151);
    return 0;
  }

  return result;
}

{
  if (!OUTLINED_FUNCTION_2_9(a1, a2))
  {
    return 1;
  }

  result = CCLogStream::shouldLog();
  if (result)
  {
    v3 = OUTLINED_FUNCTION_0_5();
    CCLogStream::logAlert(v3, "[dk] %s@%d:Failed to create Reporters and Legend\n", "initWithDriver", 154);
    return 0;
  }

  return result;
}

uint64_t AppleBCMWLANAudioProtector::initWithDriver(uint64_t a1)
{
  result = *(a1 + 8);
  if (result)
  {
    result = CCLogStream::shouldLog();
    if (result)
    {
      v2 = OUTLINED_FUNCTION_0_5();
      return CCLogStream::logAlert(v2, "[dk] %s@%d: Unable to get timer to send FW command\n", "initWithDriver", 148);
    }
  }

  return result;
}

{
  result = *(a1 + 8);
  if (result)
  {
    result = CCLogStream::shouldLog();
    if (result)
    {
      v2 = OUTLINED_FUNCTION_0_5();
      return CCLogStream::logAlert(v2, "[dk] %s@%d:Failed to get Command Manager\n", "initWithDriver", 128);
    }
  }

  return result;
}

uint64_t AppleBCMWLANAudioProtector::initWithDriver()
{
  if (!MEMORY[8])
  {
    return 1;
  }

  result = CCLogStream::shouldLog();
  if (result)
  {
    v1 = OUTLINED_FUNCTION_0_5();
    CCLogStream::logCrit(v1, "[dk] %s@%d:Failed to allocate AppleBCMWLANAudioProtector_IVars\n", "initWithDriver", 114);
    return 0;
  }

  return result;
}

uint64_t AppleBCMWLANAudioProtector::sendLDOCommmand(uint64_t a1, int a2, _DWORD *a3)
{
  result = IOSimpleReporter::incrementValue(*(*a1 + 80), 0x576C616E41504366uLL, 1);
  ++*(*a1 + 48);
  v7 = *(*a1 + 44);
  if (*(*a1 + 48) <= 9u)
  {
    v7 ^= 1u;
  }

  *(*a1 + 45) = v7;
  *a3 = a2;
  return result;
}

uint64_t AppleBCMWLANAudioProtector::sendLDOCommmand(uint64_t a1, int a2)
{
  v4 = *(*a1 + 44);
  v5 = *(*a1 + 8);
  v6 = *(*a1 + 72);
  v7 = (*(**(*a1 + 16) + 112))(*(*a1 + 16));
  return CCLogStream::logNotice(v5, "[dk] %s@%d:No %d ldo_prot_ovrd %d return %d %s: %u\n", "sendLDOCommmand", 399, v6, v4, a2, v7, *(*a1 + 48));
}

uint64_t AppleBCMWLANAudioProtector::configureReport(uint64_t a1, OSObject *a2)
{
  result = *(*a1 + 8);
  if (result)
  {
    result = CCLogStream::shouldLog();
    if (result)
    {
      v5 = *(*a1 + 8);
      ClassNameHelper = getClassNameHelper(a2);
      return CCLogStream::logEmergency(v5, "[dk] %s@%d:DKReporter::%s::%s(%d) testPostConfigureAllAndAdjustV3 failed\n", "configureReport", 473, ClassNameHelper, "configureReport", 473);
    }
  }

  return result;
}

uint64_t AppleBCMWLANCoreDbg::dbgTriggerCrash(int a1, CCLogStream *this)
{
  if (a1)
  {
    v2 = *(&kCrashIDMapping + 2 * a1 - 1);
  }

  else
  {
    v2 = "UNKOWN";
  }

  return CCLogStream::logAlert(this, "[dk] %s@%d:Crash command id = %s \n", "dbgTriggerCrash", 897, v2);
}

uint64_t AppleBCMWLANPCIeSkywalk::initWithProviderAndCapacity(AppleBCMWLANPCIeSkywalk *this, OSObject *a2, int a3, int a4, int a5, int a6, int a7, CCLogStream *a8, CCFaultReporter *a9)
{
  v23 = 0;
  result = AppleBCMWLANBusSkywalk::init(this);
  if (result)
  {
    result = IOMallocZeroTyped();
    *(this + 7) = result;
    if (result)
    {
      *(*(this + 7) + 160) = IOLockAlloc();
      v18 = *(this + 7);
      if (*(v18 + 160))
      {
        *(v18 + 24) = a3;
        *(*(this + 7) + 28) = a4;
        *(*(this + 7) + 32) = a5;
        *(*(this + 7) + 36) = a6;
        *(*(this + 7) + 40) = a7;
        *(*(this + 7) + 48) = a2;
        **(this + 7) = a8;
        v19 = OUTLINED_FUNCTION_4_9();
        if (v19)
        {
          v21 = OUTLINED_FUNCTION_5_0(v19);
          (*(v22 + 8))(v21);
          v20 = *(this + 7);
        }

        *(v20 + 16) = a9;
        IOParseBootArgNumber("wlan.skywalk.ktrace", &fKernelTraceEnabled, 1);
        *(*(this + 7) + 129) = 0;
        if (IOParseBootArgNumber("wlan.txcomp.debug", &v23, 4))
        {
          *(*(this + 7) + 129) = 1;
        }

        *(*(this + 7) + 120) = 0;
        *(*(this + 7) + 476) = 0;
        *(*(this + 7) + 480) = 0;
        *(*(this + 7) + 484) = 0;
        return AppleBCMWLANPCIeSkywalk::allocSkywalkCommonResources(this, a2) == 0;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANPCIeSkywalk::registerSkywalkInterface(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 88);
  if (!v4)
  {
    v4 = **(a1 + 56);
  }

  if (*a2 && *(a2 + 24) && *(a2 + 40) && *(a2 + 48))
  {
    v5 = 3758097084;
    isLowLatencyEnabled = IO80211SkywalkInterface::isLowLatencyEnabled(*a2);
    v7 = *(a1 + 56);
    v8 = 24;
    if (isLowLatencyEnabled)
    {
      v8 = 28;
    }

    v9 = *(v7 + v8);
    **(a2 + 32) = *(v7 + 64);
    InterfaceId = IO80211SkywalkInterface::getInterfaceId(*a2);
    if (!*(a2 + 56))
    {
LABEL_14:
      if (*(a2 + 8))
      {
        v13 = 0;
        while (1)
        {
          v14 = OUTLINED_FUNCTION_18_1();
          *(*(a2 + 24) + 8 * v13) = AppleBCMWLANPCIeSkywalkTxSubmissionQueue::withProviderAndQueueInfoAndPool(v14, *a2, InterfaceId, v13, *(*(a2 + 16) + 4 * v13), v9, *(*(a1 + 56) + 56), v4, *(*(a1 + 56) + 16));
          v15 = *(*(a2 + 24) + 8 * v13);
          if (!v15)
          {
            goto LABEL_30;
          }

          AppleBCMWLANSkywalkTxSubmissionQueue::setInterface(v15, *a2);
          if (++v13 >= *(a2 + 8))
          {
            v16 = v13 + 1;
            goto LABEL_20;
          }
        }
      }

      LODWORD(v13) = 0;
      v16 = 1;
LABEL_20:
      v17 = OUTLINED_FUNCTION_18_1();
      **(a2 + 40) = AppleBCMWLANPCIeSkywalkTxCompletionQueue::withProviderAndQueueInfoAndPool(v17, *a2, InterfaceId, v13, v9, *(*(a1 + 56) + 56), v4, *(*(a1 + 56) + 16), v39);
      v18 = **(a2 + 40);
      if (!v18)
      {
        goto LABEL_30;
      }

      AppleBCMWLANSkywalkTxCompletionQueue::setInterface(v18, *a2);
      v19 = OUTLINED_FUNCTION_18_1();
      **(a2 + 48) = AppleBCMWLANPCIeSkywalkRxCompletionQueue::withProviderAndQueueInfoAndPool(v19, *a2, InterfaceId, v16, *(*(a1 + 56) + 32), *(*(a1 + 56) + 56), v4, *(*(a1 + 56) + 16), v40);
      v20 = **(a2 + 48);
      if (!v20)
      {
        goto LABEL_30;
      }

      v21 = *a2;
      v22 = OUTLINED_FUNCTION_5_0(v20);
      (*(v23 + 176))(v22);
      AppleBCMWLANPCIeSkywalkPacketPool::setTxPacketHeadroom(*(*(a1 + 56) + 56), *(a2 + 80));
      if (isLowLatencyEnabled)
      {
        if (!IO80211SkywalkInterface::getWorkQueue(*a2))
        {
          return 0;
        }

        OUTLINED_FUNCTION_10_6();
        v42 = 0x40000000;
        v43 = ___ZN23AppleBCMWLANPCIeSkywalk24registerSkywalkInterfaceEP32skywalkInterfaceRegisterParams_t_block_invoke;
        v44 = &__block_descriptor_tmp_3;
        v45 = a1;
        v46 = v24;
        v47 = InterfaceId;
        v25 = OUTLINED_FUNCTION_5_0(v24);
        (*(v26 + 112))(v25, v41);
      }

      **(a2 + 64) = *(*(a1 + 56) + 56);
      **(a2 + 72) = *(*(a1 + 56) + 56);
      if (InterfaceId != -1)
      {
        v5 = 0;
        *(*(a1 + 56) + 44) |= 1 << InterfaceId;
        return v5;
      }

      return 0;
    }

    v11 = OUTLINED_FUNCTION_18_1();
    **(a2 + 56) = AppleBCMWLANPCIeSkywalkMulticastQueue::withProviderAndQueueInfo(v11, *a2, **(a1 + 56), *(*(a1 + 56) + 16), v12);
    if (**(a2 + 56))
    {
      if (**(a1 + 56) && CCLogStream::shouldLog())
      {
        CCLogStream::logInfo(**(a1 + 56), "[dk] %s@%d:mc queue %p\n", "registerSkywalkInterface", 478, **(a2 + 56));
      }

      goto LABEL_14;
    }
  }

  else
  {
    v5 = 3758096385;
  }

LABEL_30:
  v28 = *(a2 + 8);
  if (*(a2 + 8))
  {
    v29 = 0;
    do
    {
      v30 = *(*(a2 + 24) + 8 * v29);
      if (v30)
      {
        v31 = OUTLINED_FUNCTION_5_0(v30);
        (*(v32 + 16))(v31);
        *(*(a2 + 24) + 8 * v29) = 0;
        v28 = *(a2 + 8);
      }

      ++v29;
    }

    while (v29 < v28);
  }

  v33 = **(a2 + 40);
  if (v33)
  {
    v34 = OUTLINED_FUNCTION_5_0(v33);
    (*(v35 + 16))(v34);
    **(a2 + 40) = 0;
  }

  v36 = **(a2 + 48);
  if (v36)
  {
    v37 = OUTLINED_FUNCTION_5_0(v36);
    (*(v38 + 16))(v37);
    **(a2 + 48) = 0;
  }

  return v5;
}

AppleBCMWLANPCIeSubmissionRing *AppleBCMWLANPCIeSkywalk::attachRxSubmRing(uint64_t a1, uint64_t a2)
{
  v11 = 0;
  if (!a2)
  {
    return 0;
  }

  if (*(*(a1 + 56) + 8) && CCLogStream::shouldLog())
  {
    CCLogStream::logInfo(*(*(a1 + 56) + 8), "[dk] %s@%d:Enter", "attachRxSubmRing", 543);
  }

  *(a2 + 16) = AppleBCMWLANPCIeSkywalkRxSubmissionQueue::fwRingPending;
  *(a2 + 24) = *(*(a1 + 56) + 64);
  v4 = *(a1 + 56);
  v5 = *(v4 + 48);
  v6 = *(v4 + 64);
  v7 = (*(*v5 + 80))(v5);
  v8 = (*(*v5 + 1080))(v5, &v11, a2, v6, v7, AppleBCMWLANPCIeSkywalkRxSubmissionQueue::fwRingFill, AppleBCMWLANPCIeSkywalkRxSubmissionQueue::fwRingError);
  v9 = *(a1 + 56);
  if (v8)
  {
    result = *(v9 + 8);
    if (!result)
    {
      return result;
    }

    if (CCLogStream::shouldLog())
    {
      CCLogStream::logInfo(*(*(a1 + 56) + 8), "[dk] %s@%d:Skywalk Create RX submission ring Fail\n", "attachRxSubmRing", 553);
    }

    return 0;
  }

  AppleBCMWLANPCIeSkywalkRxSubmissionQueue::setFWRing(*(v9 + 64), v11);
  AppleBCMWLANPCIeSkywalkRxSubmissionQueue::setRxRingSize(*(*(a1 + 56) + 64), *(a2 + 8));
  return v11;
}

uint64_t AppleBCMWLANPCIeSkywalk::rxCompRingDrain(AppleBCMWLANPCIeSkywalk *this, OSMetaClassBase *anObject, unsigned __int8 *a3, unsigned int a4)
{
  *v166 = 0;
  v7 = OSMetaClassBase::safeMetaCast(anObject, gAppleBCMWLANPCIeCompletionRingMetaClass);
  v8 = OUTLINED_FUNCTION_12_4(*(this + 7));
  v10 = (*(v9 + 1104))(v8);
  OUTLINED_FUNCTION_9_6();
  v160 = (*(v11 + 208))(v7);
  if (fKernelTraceEnabled)
  {
    OUTLINED_FUNCTION_9_6();
    (*(v140 + 208))(v7);
    v141 = OUTLINED_FUNCTION_0_11(*(this + 7));
    (*(v142 + 792))(v141);
    kdebug_trace();
  }

  RxPacketTracker = AppleBCMWLANPCIeSkywalkPacketPool::getRxPacketTracker(*(*(this + 7) + 56));
  *(*(this + 7) + 336) += a4;
  v158 = mach_continuous_time();
  *(*(this + 7) + 192) = v158;
  v159 = a4;
  if (a4)
  {
    v157 = 0;
    v12 = a4;
    v164 = v7;
    do
    {
      v13 = *(a3 + 2);
      v14 = AppleBCMWLANHashtable::remove(RxPacketTracker, v13);
      v15 = OSMetaClassBase::safeMetaCast(v14, gAppleBCMWLANPCIeSkywalkPacketMetaClass);
      v16 = v15;
      v17 = a3[1];
      if (v17 <= 0xB)
      {
        ++*(*(this + 7) + 8 * v17 + 368);
      }

      if (!v15)
      {
        if (OUTLINED_FUNCTION_4_9())
        {
          shouldLog = CCLogStream::shouldLog();
          v108 = *(this + 7);
          if (shouldLog)
          {
            CCLogStream::logAlert(*v108, "[dk] %s@%d:invalid rx comp packet, resource id %d\n", "rxCompRingDrain", 1348, v13);
            goto LABEL_113;
          }
        }

LABEL_114:
        ++*(v108 + 352);
        goto LABEL_109;
      }

      OUTLINED_FUNCTION_9_6();
      v19 = (*(v18 + 248))(v7);
      LOBYTE(v20) = a3[2];
      if (v19 == ((v20 & 0x80u) == 0) || *a3 != 18)
      {
        if (OUTLINED_FUNCTION_4_9())
        {
          v101 = CCLogStream::shouldLog();
          v83 = *(this + 7);
          if (v101)
          {
            v102 = *v83;
            OUTLINED_FUNCTION_9_6();
            (*(v103 + 248))(v7);
            v147 = a3[2] >> 7;
            v149 = *a3;
            CCLogStream::logAlert(v102, "[dk] %s@%d:Ring Phase=%d msg Phase=%d msg type=%d ifId=%d packet=%p", "rxCompRingDrain");
            goto LABEL_102;
          }
        }

LABEL_112:
        AppleBCMWLANPCIeSkywalkPacketPool::deallocatePacket(*(v83 + 56), v16);
LABEL_113:
        v108 = *(this + 7);
        goto LABEL_114;
      }

      if ((a3[2] & 8) != 0 && OUTLINED_FUNCTION_4_9() && (v21 = CCLogStream::shouldLog(), v20 = a3[2], v21))
      {
        v163 = **(this + 7);
        v156 = a3[1];
        v154 = *(a3 + 5);
        v153 = *(a3 + 9);
        v111 = *(a3 + 8);
        v112 = *(a3 + 7);
        v113 = v12;
        v114 = (*(*v164 + 224))(v164);
        v115 = (*(*v164 + 232))(v164);
        v152 = v114;
        v12 = v113;
        CCLogStream::logAlert(v163, "[dk] %s@%d:Rx packet, wake packet bit, header flags %d ifId %d flowid %d flags %d, data offset %d length %d @ {%d %d}, type:0x%08x\n", "rxCompRingDrain", 1369, v20, v156, v154, v153, v111, v112, v152, v115, 32);
        if ((a3[2] & 8) == 0)
        {
          goto LABEL_14;
        }
      }

      else if ((v20 & 8) == 0)
      {
        goto LABEL_14;
      }

      v116 = *(*(this + 7) + 48);
      if (v116)
      {
        v117 = OUTLINED_FUNCTION_5_0(v116);
        if ((*(v118 + 1104))(v117))
        {
          v119 = OUTLINED_FUNCTION_0_11(*(this + 7));
          v121 = (*(v120 + 1104))(v119);
          AppleBCMWLANCore::setWiFiWakeType(v121, 32);
        }
      }

LABEL_14:
      v166[1] = *(a3 + 7);
      v22 = v166[1];
      v23 = *(a3 + 8);
      v166[0] = *(a3 + 8);
      if (!v166[1] || v23 + v166[1] > 0x800 || (v24 = v23 + v22 + IO80211NetworkPacket::getHeadroom(v16), OUTLINED_FUNCTION_8_8(), v24 > (*(v25 + 488))(v16)))
      {
        if (OUTLINED_FUNCTION_4_9())
        {
          v84 = CCLogStream::shouldLog();
          v83 = *(this + 7);
          v7 = v164;
          if (v84)
          {
            CCLogStream::logAlert(*v83, "[dk] %s@%d:RX SW, packet offset/length invalid\n");
            goto LABEL_102;
          }
        }

        else
        {
          v7 = v164;
        }

        goto LABEL_112;
      }

      v162 = v12;
      OUTLINED_FUNCTION_5_8();
      v27 = (*(v26 + 1992))(v10, v17);
      v28 = v27;
      if (!v27 || (*(*(this + 7) + 128) & 1) != 0)
      {
        v7 = v164;
LABEL_91:
        AppleBCMWLANItemRing::getItemSize(v7);
        v104 = OUTLINED_FUNCTION_27_2();
        AppleBCMWLANPCIeSkywalk::completeRxPacketMonitor(v104, v105, v28, v16, v106);
        OUTLINED_FUNCTION_21_0();
        OUTLINED_FUNCTION_3_7();
        ++v157;
        goto LABEL_108;
      }

      InterfaceRole = IO80211SkywalkInterface::getInterfaceRole(v27);
      Scratch = AppleBCMWLANPCIeSkywalkPacket::getScratch(v16);
      v31 = AppleBCMWLANItemRing::getItemSize(v164) == 40;
      AppleBCMWLANPCIeSkywalk::getRxTimeStamp(this, Scratch, a3, v31);
      *(Scratch + 24) = a3[18] >> 5;
      v32 = OUTLINED_FUNCTION_4_9();
      *(Scratch + 12) = ratespec2rate(v32, *(a3 + 5));
      *Scratch = a3[28];
      if ((*(a3 + 7) & 0x1000000) != 0)
      {
        v33 = 2;
      }

      else
      {
        v33 = 1;
      }

      *(Scratch + 40) = v33;
      v34 = v160 == 5 && v17 == 3;
      if (v34 || IO80211SkywalkInterface::isLowLatencyEnabled(v28))
      {
        if (AppleBCMWLANCore::getProximityInterfaceId(v10) == v17)
        {
          OUTLINED_FUNCTION_8_8();
          v36 = ((*(v35 + 480))(v16) + v23);
          if ((*(a3 + 9) & 2) != 0)
          {
            v37 = 26;
            if (*v36 != 136)
            {
              v37 = 24;
            }
          }

          else
          {
            v37 = 14;
          }

          v52 = &v36[v37];
          v7 = v164;
          if (*v52 == 240298 && *(v52 + 2) == -3561)
          {
            goto LABEL_91;
          }
        }

        else
        {
          v7 = v164;
          OUTLINED_FUNCTION_9_6();
          v39 = (*(v38 + 208))(v164);
          OUTLINED_FUNCTION_5_8();
          LODWORD(v17) = 10;
          v28 = (*(v40 + 1992))(v10, 10);
          if (v39 != 5)
          {
            goto LABEL_91;
          }
        }
      }

      else
      {
        if (InterfaceRole == 10)
        {
          v166[0] = (IO80211NetworkPacket::getHeadroom(v16) + v23);
          IO80211NetworkPacket::setHeadroom(v16, v166[0]);
          v28 = (*(*v10 + 1992))(v10, 4);
          if (!AppleBCMWLANPCIeSkywalk::handleRxNanDataInterfacePacket(this, v16, v166, &v166[1]) || (OUTLINED_FUNCTION_8_8(), v54 = (*(v53 + 480))(v16), OUTLINED_FUNCTION_8_8(), v56 = v54 + (*(v55 + 240))(v16), !(*(*v28 + 624))(v28, v16, Scratch, v56, 0, 0)))
          {
            OUTLINED_FUNCTION_21_0();
            OUTLINED_FUNCTION_3_7();
LABEL_107:
            v7 = v164;
            goto LABEL_108;
          }

          IO80211NetworkPacket::setHeadroom(v16, v166[0]);
        }

        else if (InterfaceRole == 6)
        {
          v165 = -86;
          Headroom = IO80211NetworkPacket::getHeadroom(v16);
          if (v22 < 0x1C)
          {
            if (OUTLINED_FUNCTION_4_9() && CCLogStream::shouldLog())
            {
              v76 = OUTLINED_FUNCTION_4_9();
              CCLogStream::logAlert(v76, "[dk] %s@%d:ERROR ! Discarding packet - Too small (len %d)\n");
            }

            goto LABEL_106;
          }

          v42 = *(a3 + 9);
          LOBYTE(v23) = Headroom + v23;
          v166[0] = 0;
          OUTLINED_FUNCTION_8_8();
          v44 = (*(v43 + 480))(v16);
          if ((v42 & 2) != 0)
          {
            v77 = (v44 + v23);
            if ((v77[1] & 3) != 0 || (*v77 & 0xC) != 8)
            {
              goto LABEL_106;
            }

            v78 = *v77 < 0 ? 26 : 24;
            if ((v78 | 4) > v22)
            {
              goto LABEL_106;
            }

            v79 = &v77[v78];
            *(v79 - 2) = *(v77 + 10);
            *(v79 - 2) = *(v77 + 7);
            *(v79 - 14) = *(v77 + 1);
            *(v79 - 5) = *(v77 + 4);
            v80 = v78 - 14;
            v45 = v23 + v78 - 14;
            LOWORD(v22) = v22 - v80 - 4;
            v23 = v45;
          }

          else
          {
            v45 = v23;
            v23 = v23;
          }

          v155 = v45;
          v46 = v45;
          IO80211NetworkPacket::setHeadroom(v16, v45);
          OUTLINED_FUNCTION_8_8();
          v48 = (*(v47 + 480))(v16) + v23;
          if (*(v48 + 14) == 170 && *(v48 + 15) == 170 && *(v48 + 16) == 3)
          {
            v49 = *(v48 + 17);
            if (v49 == 150083328)
            {
              *(v48 + 16) = *v48;
              *(v48 + 24) = *(v48 + 8);
              v50 = -16;
              v51 = 16;
            }

            else
            {
              if (*(v48 + 17) || (v49 & 0xFF00) != 0 || (v49 & 0xFF0000) != 0)
              {
                if (OUTLINED_FUNCTION_4_9() && CCLogStream::shouldLog())
                {
                  v107 = OUTLINED_FUNCTION_4_9();
                  v146 = *(v48 + 17);
                  v148 = *(v48 + 18);
                  v150 = *(v48 + 19);
                  v151 = bswap32(*(v48 + 12)) >> 16;
                  CCLogStream::logAlert(v107, "[dk] %s@%d:ERROR ! Discard packet : BAD OUI %02x %02x %02x Ethertype = 0x%04x \n");
                }

                goto LABEL_106;
              }

              OUTLINED_FUNCTION_5_8();
              v86 = (*(v85 + 1992))(v10, 9);
              if (!v86)
              {
                if (OUTLINED_FUNCTION_4_9() && CCLogStream::shouldLog())
                {
                  v122 = OUTLINED_FUNCTION_4_9();
                  CCLogStream::logAlert(v122, "[dk] %s@%d:ERROR ! LLW interface is null\n");
                }

LABEL_106:
                OUTLINED_FUNCTION_3_7();
                OUTLINED_FUNCTION_21_0();
                goto LABEL_107;
              }

              v28 = v86;
              v87 = *(v48 + 8);
              *(v48 + 8) = *v48;
              *(v48 + 16) = v87;
              v50 = -8;
              v51 = 8;
            }

            LOWORD(v22) = v22 + v50;
            v88 = (v155 + v51);
            v89 = OUTLINED_FUNCTION_24_2();
            IO80211NetworkPacket::setHeadroom(v89, v90);
            v166[1] = v22;
            v166[0] = v88;
          }

          else
          {
            v166[0] = v46;
            v166[1] = v22;
            if (*(v48 + 12) < 0x600u)
            {
              goto LABEL_106;
            }

            OUTLINED_FUNCTION_5_8();
            v82 = (*(v81 + 1992))(v10, 9);
            if (!v82)
            {
              IOLog("%s[%d] ERROR : LLW interface does not exist, Discard packet\n", "rxCompRingDrain", 1571);
              goto LABEL_106;
            }

            v28 = v82;
            LODWORD(v17) = IO80211SkywalkInterface::getInterfaceId(v82);
          }

          v165 = 0;
          OUTLINED_FUNCTION_8_8();
          v92 = *(v91 + 232);
          v93 = OUTLINED_FUNCTION_24_2();
          v94(v93);
          OUTLINED_FUNCTION_8_8();
          (*(v95 + 216))(v16, v22);
          v96 = OUTLINED_FUNCTION_24_2();
          IO80211NetworkPacket::setLinkHeaderOffset(v96, v97);
          v98 = (v16->OSObject::OSMetaClassBase::__vftable[1].getDataLength)(v16);
          OUTLINED_FUNCTION_8_8();
          v100 = v98 + (*(v99 + 240))(v16);
          if (!(*(*v28 + 624))(v28, v16, Scratch, v100, &v165, 0))
          {
            goto LABEL_106;
          }

          if (v165)
          {
            goto LABEL_107;
          }
        }

        v7 = v164;
      }

      OUTLINED_FUNCTION_19_2();
      v58 = (*(v57 + 1192))(v28);
      v59 = OSMetaClassBase::safeMetaCast(v58, gAppleBCMWLANPCIeSkywalkRxCompletionQueueMetaClass);
      if (!v59)
      {
        if (OUTLINED_FUNCTION_4_9())
        {
          v110 = CCLogStream::shouldLog();
          v83 = *(this + 7);
          v12 = v162;
          if (v110)
          {
            CCLogStream::logAlert(*v83, "[dk] %s@%d:Invalid getRxCompQueue(), go next\n");
LABEL_102:
            v83 = *(this + 7);
          }
        }

        else
        {
          v12 = v162;
        }

        goto LABEL_112;
      }

      v60 = v59;
      if ((a3[2] & 8) != 0)
      {
        OUTLINED_FUNCTION_8_8();
        (*(v61 + 272))(v16);
      }

      OUTLINED_FUNCTION_8_8();
      if ((*(v62 + 376))(v16))
      {
        OUTLINED_FUNCTION_8_8();
        (*(v63 + 384))(v16, 135528453);
      }

      OUTLINED_FUNCTION_8_8();
      v65 = *(v64 + 232);
      v66 = OUTLINED_FUNCTION_24_2();
      v67(v66);
      OUTLINED_FUNCTION_8_8();
      (*(v68 + 216))(v16);
      v69 = OUTLINED_FUNCTION_24_2();
      IO80211NetworkPacket::setLinkHeaderOffset(v69, v70);
      AppleBCMWLANItemRing::getItemSize(v7);
      v71 = OUTLINED_FUNCTION_27_2();
      AppleBCMWLANPCIeSkywalk::setRXTimestamp(v71, v72, v16, v28, v73);
      OUTLINED_FUNCTION_24_1();
      if (((*(v74 + 216))(v60) & 1) != 0 || !v17)
      {
        OUTLINED_FUNCTION_24_1();
        (*(v75 + 232))(v60, v16, 0, 0);
        ++*(*(this + 7) + 360);
      }

      else
      {
        OUTLINED_FUNCTION_3_7();
        OUTLINED_FUNCTION_21_0();
      }

LABEL_108:
      v12 = v162;
LABEL_109:
      a3 += AppleBCMWLANItemRing::getItemSize(v7);
      ++*(*(this + 7) + 344);
      --v12;
    }

    while (v12);
  }

  AppleBCMWLANPCIeSkywalkRxSubmissionQueue::requestRingFill(*(*(this + 7) + 64));
  v123 = 0;
  do
  {
    OUTLINED_FUNCTION_5_8();
    v125 = (*(v124 + 1992))(v10, v123);
    if (v125)
    {
      v126 = v125;
      v127 = OUTLINED_FUNCTION_5_0(v125);
      v129 = (*(v128 + 1192))(v127);
      if (v129)
      {
        v130 = v129;
        v131 = OUTLINED_FUNCTION_5_0(v129);
        if ((*(v132 + 120))(v131, 0, 0))
        {
          if (IO80211SkywalkInterface::getInterfaceRole(v126) != 1)
          {
            (*(*v130 + 192))(v130);
          }
        }
      }
    }

    v123 = (v123 + 1);
  }

  while (v123 != 12);
  AppleBCMWLANBusInterfacePCIe::updateActiveRxBufferCount(*(*(this + 7) + 48), -v159);
  v133 = OUTLINED_FUNCTION_5_0(*(*(this + 7) + 64));
  (*(v134 + 128))(v133, 0, 0);
  v135 = OUTLINED_FUNCTION_12_4(*(this + 7));
  v137 = (*(v136 + 1104))(v135);
  if (v137)
  {
    v138 = v137;
    AppleBCMWLANCore::updateDataPathActivityTimestamp(v137, v158);
    AppleBCMWLANCore::handleDataPathActivity(v138);
  }

  if (fKernelTraceEnabled)
  {
    OUTLINED_FUNCTION_9_6();
    (*(v143 + 208))(v7);
    v144 = OUTLINED_FUNCTION_0_11(*(this + 7));
    (*(v145 + 792))(v144);
    kdebug_trace();
  }

  return v159;
}