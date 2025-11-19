uint64_t AppleBCMWLANCore::parseEventLogScan(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  (*(v3 + 1952))(v2);
  v4 = OUTLINED_FUNCTION_12_1();
  Length = OSData::getLength(v4);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:ScanSummary size mismatch, have %d, expected %ld\n", "parseEventLogScan", 17974, Length, 64);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logInfo(v3, "[dk] %s@%d:SCAN_SUMMARY (SC_TX_BLANK): NO blanking. But retry might still happen if Infra channel was scanned \n", "parseEventLogScan", 18042);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logInfo(v3, "[dk] %s@%d:SCAN_SUMMARY (SC_TX_BLANK): Tx blanking less than retry thresh. But retry might still happen if Infra channel was scanned \n", "parseEventLogScan", 18040);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logInfo(v3, "[dk] %s@%d:SCAN_SUMMARY (SC_TX_BLANK): Tx blanking over retry thresh. Retry will happen if configured \n", "parseEventLogScan", 18038);
}

{
  v4 = OUTLINED_FUNCTION_24_6(a1);
  result = (*(v5 + 1952))(v4);
  if (result)
  {
    (*(*v3 + 1952))(v3);
    result = CCLogStream::shouldLog();
    if (result)
    {
      (*(*v3 + 1952))(v3);
      OUTLINED_FUNCTION_211();
      result = CCLogStream::logAlert(v7, "[dk] %s@%d:Error parsing reportScanModeStatsSinceLinkUp for slice %d\n", v8, v9, v10);
    }
  }

  *v1 = v2;
  return result;
}

{
  v4 = OUTLINED_FUNCTION_24_6(a1);
  result = (*(v5 + 1952))(v4);
  if (result)
  {
    (*(*v3 + 1952))(v3);
    result = CCLogStream::shouldLog();
    if (result)
    {
      (*(*v3 + 1952))(v3);
      OUTLINED_FUNCTION_168();
      result = CCLogStream::logAlert(v7, "[dk] %s@%d:Error parsing reportScanModeStatsSinceLinkUp for slice %d\n", "parseEventLogScan", 18060, v8);
    }
  }

  *v1 = v2;
  return result;
}

{
  v4 = OUTLINED_FUNCTION_24_6(a1);
  result = (*(v5 + 1952))(v4);
  if (result)
  {
    (*(*v3 + 1952))(v3);
    result = CCLogStream::shouldLog();
    if (result)
    {
      (*(*v3 + 1952))(v3);
      OUTLINED_FUNCTION_239();
      result = CCLogStream::logAlert(v7, "[dk] %s@%d:Error parsing reportScanModeStatsSinceLinkUp for slice %d\n", "parseEventLogScan", 18066, v8);
    }
  }

  *v1 = v2;
  return result;
}

{
  v4 = OUTLINED_FUNCTION_24_6(a1);
  result = (*(v5 + 1952))(v4);
  if (result)
  {
    (*(*v3 + 1952))(v3);
    result = CCLogStream::shouldLog();
    if (result)
    {
      (*(*v3 + 1952))(v3);
      OUTLINED_FUNCTION_239();
      result = CCLogStream::logAlert(v7, "[dk] %s@%d:Error parsing reportScanModeStatsSinceLinkUp for mode %d\n", "parseEventLogScan", 18047, v8);
    }
  }

  *v1 = v2;
  return result;
}

{
  v4 = OUTLINED_FUNCTION_24_6(a1);
  result = (*(v5 + 1952))(v4);
  if (result)
  {
    (*(*v3 + 1952))(v3);
    result = CCLogStream::shouldLog();
    if (result)
    {
      (*(*v3 + 1952))(v3);
      OUTLINED_FUNCTION_239();
      result = CCLogStream::logAlert(v7, "[dk] %s@%d:Error parsing reportSlicesScanModeStats for mode %d\n", "parseEventLogScan", 18049, v8);
    }
  }

  *v1 = v2;
  return result;
}

{
  v3 = OUTLINED_FUNCTION_5_6(a1);
  v5 = (*(v4 + 1952))(v3);
  return CCLogStream::logInfo(v5, "[dk] %s@%d:FW Scan: Scan startTime=%d nowTime=%llu \n", "parseEventLogScan", 18140, *v2, *v1 / 0xF4240uLL);
}

{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  (*(v3 + 1952))(v2);
  v4 = OUTLINED_FUNCTION_12_1();
  Length = OSData::getLength(v4);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:ScanSummary size mismatch, have %d, expected %ld\n", "parseEventLogScan", 17813, Length, 40);
}

{
  v3 = OUTLINED_FUNCTION_5_6(a1);
  v5 = (*(v4 + 1952))(v3);
  return CCLogStream::logInfo(v5, "[dk] %s@%d:Scan[%ums] - 2.4G<%ums %llu%%> 5G<%ums %llu%%> 6G<%ums %llu%%> client=%d\n", "parseEventLogScan", 17898, *(*v2 + 17952), *(*v2 + 35736), *(*v2 + 35744), *(*v2 + 35752), *(*v2 + 35760), *(*v2 + 35768), *(*v2 + 35776), v1);
}

{
  v2 = OUTLINED_FUNCTION_9_5(a1);
  result = (*(v3 + 1952))(v2);
  if (result)
  {
    (*(*v1 + 1952))(v1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v5 = (*(*v1 + 1952))(v1);
      return CCLogStream::logEmergency(v5, "[dk] %s@%d: Overflow detected during scan details processing... \n", "parseEventLogScan", 17942);
    }
  }

  return result;
}

{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  v4 = (*(v3 + 1952))(v2);
  return CCLogStream::logInfo(v4, "[dk] %s@%d:TOTAL_SCAN_SUMMARY: Dur2G %ums Dur5G %ums Dur6G %ums Num2G=%d Num5G=%d Num6G=%d SCNum2G=%d SCNum5G=%d SCNum6G=%d NumActive=%d NumPassive=%d\n", "parseEventLogScan", 17963, *(*v1 + 35792), *(*v1 + 35796), *(*v1 + 35800), *(*v1 + 35804), *(*v1 + 35808), *(*v1 + 35812), *(*v1 + 35816), *(*v1 + 35820), *(*v1 + 35824), *(*v1 + 35828), *(*v1 + 35832));
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logEmergency(v3, "[dk] %s@%d:Invalid scan_client %d.. Aborting \n", v5, v6, v7);
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_26_1();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Scan Summary version mismatch, found %d\n", "parseEventLogScan", 18166, v5);
}

uint64_t AppleBCMWLANCore::reportSlicesScanModeStats(uint64_t *a1)
{
  v4 = OUTLINED_FUNCTION_2_18(a1);
  result = (*(v5 + 1952))(v4);
  if (result)
  {
    (*(*v2 + 1952))(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      (*(*v2 + 1952))(v2);
      OUTLINED_FUNCTION_66();
      result = CCLogStream::logEmergency(v7, "[dk] %s@%d:Out of range scan mode %d\n", v8, v9, v10);
    }
  }

  *v1 = v3;
  return result;
}

{
  v4 = OUTLINED_FUNCTION_2_18(a1);
  result = (*(v5 + 1952))(v4);
  if (result)
  {
    (*(*v2 + 1952))(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      (*(*v2 + 1952))(v2);
      OUTLINED_FUNCTION_66();
      result = CCLogStream::logEmergency(v7, "[dk] %s@%d:Out of range slice index %d\n", v8, v9, v10);
    }
  }

  *v1 = v3;
  return result;
}

uint64_t AppleBCMWLANCore::parseExtendedEventLogRecordScanChan(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  (*(v3 + 1952))(v2);
  v4 = OUTLINED_FUNCTION_12_1();
  Length = OSData::getLength(v4);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:ScanSummary size mismatch, have %d, expected %ld\n", "parseExtendedEventLogRecordScanChan", 18274, Length, 64);
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_12_3();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:ERROR:Invalid scan_flags %x\n on SCAN_SUMMARY_VERSION_2", "parseExtendedEventLogRecordScanChan", 18313, v5);
}

{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  (*(v3 + 1952))(v2);
  v4 = OUTLINED_FUNCTION_12_1();
  Length = OSData::getLength(v4);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:ScanSummary size mismatch, have %d, expected %ld\n", "parseExtendedEventLogRecordScanChan", 18209, Length, 40);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_239();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Invalid: appleChanSpec band[%d]", "parseExtendedEventLogRecordScanChan", 18233, v5);
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_12_3();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:ERROR:Invalid scan_flags %x\n", "parseExtendedEventLogRecordScanChan", 18264, v5);
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_26_1();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Invalid scan chan info version %d\n", "parseExtendedEventLogRecordScanChan", 18319, v5);
}

uint64_t AppleBCMWLANCore::parseEventLogRecordRC2CoexStatsPerSlice(uint64_t *a1)
{
  v4 = OUTLINED_FUNCTION_11_9(a1);
  result = (*(v5 + 1952))(v4);
  if (result)
  {
    (*(*v3 + 1952))(v3);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v7 = (*(*v3 + 1952))(v3);
      result = CCLogStream::logAlert(v7, "[dk] %s@%d:Failed updateRC2CoexStatsReport\n", "parseEventLogRecordRC2CoexStatsPerSlice", 18334);
    }
  }

  *v1 = v2;
  return result;
}

{
  v4 = OUTLINED_FUNCTION_11_9(a1);
  result = (*(v5 + 1952))(v4);
  if (result)
  {
    (*(*v3 + 1952))(v3);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v7 = (*(*v3 + 1952))(v3);
      result = CCLogStream::logAlert(v7, "[dk] %s@%d:Failed reportRC2Coex\n", "parseEventLogRecordRC2CoexStatsPerSlice", 18337);
    }
  }

  *v1 = v2;
  return result;
}

{
  v3 = OUTLINED_FUNCTION_11_9(a1);
  result = (*(v4 + 1952))(v3);
  if (result)
  {
    (*(*v2 + 1952))(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      (*(*v2 + 1952))(v2);
      OUTLINED_FUNCTION_66();
      result = CCLogStream::logAlert(v6, "[dk] %s@%d:Invalid sliceIndex %d\n", v7, v8, v9);
    }
  }

  *v1 = 0;
  return result;
}

uint64_t AppleBCMWLANCore::updateRC2CoexStatsReport(uint64_t *a1)
{
  v3 = OUTLINED_FUNCTION_11_9(a1);
  result = (*(v4 + 1952))(v3);
  if (result)
  {
    (*(*v2 + 1952))(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      (*(*v2 + 1952))(v2);
      OUTLINED_FUNCTION_66();
      result = CCLogStream::logInfo(v6, "[dk] %s@%d:Unexpected slice index %d\n", v7, v8, v9);
    }
  }

  *v1 = 0;
  return result;
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_12_3();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Invalid RC2 Coex stats version - %u\n", "updateRC2CoexStatsReport", 18665, v5);
}

{
  v3 = OUTLINED_FUNCTION_11_9(a1);
  result = (*(v4 + 1952))(v3);
  if (result)
  {
    (*(*v2 + 1952))(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      (*(*v2 + 1952))(v2);
      v6 = OUTLINED_FUNCTION_86();
      OSData::getLength(v6);
      OUTLINED_FUNCTION_6();
      result = CCLogStream::logAlert(v2, "[dk] %s@%d:Unexpected RC2 Coex Stats length %d\n", v7, v8, v9);
    }
  }

  *v1 = 0;
  return result;
}

uint64_t AppleBCMWLANCore::updateRC2CoexStatsReportV1(uint64_t *a1)
{
  v4 = OUTLINED_FUNCTION_2_18(a1);
  result = (*(v5 + 1952))(v4);
  if (result)
  {
    (*(*v2 + 1952))(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      (*(*v2 + 1952))(v2);
      v7 = OUTLINED_FUNCTION_86();
      Length = OSData::getLength(v7);
      result = CCLogStream::logAlert(v2, "[dk] %s@%d:sizeof(rc2CoexStatsV1) %ld payload->getLength() %d\n", "updateRC2CoexStatsReportV1", 18354, 36, Length);
    }
  }

  *v1 = v3;
  return result;
}

{
  v5 = OUTLINED_FUNCTION_2_18(a1);
  result = (*(v6 + 1952))(v5);
  if (result)
  {
    (*(*v3 + 1952))(v3);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v8 = (*(*v3 + 1952))(v3);
      result = CCLogStream::logAlert(v8, "[dk] %s@%d:sizeof(rc2CoexStatsV1) %ld rc2CoexStatsV1.len() %d\n", "updateRC2CoexStatsReportV1", 18356, 36, v2);
    }
  }

  *v1 = v4;
  return result;
}

uint64_t AppleBCMWLANCore::updateRC2CoexStatsReportV2(uint64_t *a1)
{
  v4 = OUTLINED_FUNCTION_2_18(a1);
  result = (*(v5 + 1952))(v4);
  if (result)
  {
    (*(*v2 + 1952))(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      (*(*v2 + 1952))(v2);
      v7 = OUTLINED_FUNCTION_86();
      Length = OSData::getLength(v7);
      result = CCLogStream::logAlert(v2, "[dk] %s@%d:sizeof(rc2CoexStatsV2) %ld payload->getLength() %d\n", "updateRC2CoexStatsReportV2", 18441, 40, Length);
    }
  }

  *v1 = v3;
  return result;
}

{
  v5 = OUTLINED_FUNCTION_2_18(a1);
  result = (*(v6 + 1952))(v5);
  if (result)
  {
    (*(*v3 + 1952))(v3);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v8 = (*(*v3 + 1952))(v3);
      result = CCLogStream::logAlert(v8, "[dk] %s@%d:sizeof(rc2CoexStatsV2) %ld rc2CoexStatsV2.len() %d\n", "updateRC2CoexStatsReportV2", 18443, 40, v2);
    }
  }

  *v1 = v4;
  return result;
}

uint64_t AppleBCMWLANCore::updateRC2CoexStatsReportV3(uint64_t *a1)
{
  v4 = OUTLINED_FUNCTION_2_18(a1);
  result = (*(v5 + 1952))(v4);
  if (result)
  {
    (*(*v2 + 1952))(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      (*(*v2 + 1952))(v2);
      v7 = OUTLINED_FUNCTION_86();
      Length = OSData::getLength(v7);
      result = CCLogStream::logAlert(v2, "[dk] %s@%d:sizeof(rc2CoexStatsV3) %ld payload->getLength() %d\n", "updateRC2CoexStatsReportV3", 18536, 48, Length);
    }
  }

  *v1 = v3;
  return result;
}

{
  v5 = OUTLINED_FUNCTION_2_18(a1);
  result = (*(v6 + 1952))(v5);
  if (result)
  {
    (*(*v3 + 1952))(v3);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v8 = (*(*v3 + 1952))(v3);
      result = CCLogStream::logAlert(v8, "[dk] %s@%d:sizeof(rc2CoexStatsV3) %ld rc2CoexStatsV3.len() %d\n", "updateRC2CoexStatsReportV3", 18538, 48, v2);
    }
  }

  *v1 = v4;
  return result;
}

uint64_t AppleBCMWLANCore::sendRC2CoexStatsEventCoreAnalytics(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Fail to allocate numValue\n", "sendRC2CoexStatsEventCoreAnalytics", 18815);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Fail to allocate keyString\n", "sendRC2CoexStatsEventCoreAnalytics", 18813);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Fail to allocate numValue\n", "sendRC2CoexStatsEventCoreAnalytics", 18809);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Fail to allocate keyString\n", "sendRC2CoexStatsEventCoreAnalytics", 18807);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Fail to allocate numValue\n", "sendRC2CoexStatsEventCoreAnalytics", 18803);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Fail to allocate keyString\n", "sendRC2CoexStatsEventCoreAnalytics", 18801);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Fail to allocate numValue\n", "sendRC2CoexStatsEventCoreAnalytics", 18797);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Fail to allocate keyString\n", "sendRC2CoexStatsEventCoreAnalytics", 18795);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Fail to allocate numValue\n", "sendRC2CoexStatsEventCoreAnalytics", 18786);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Fail to allocate keyString\n", "sendRC2CoexStatsEventCoreAnalytics", 18784);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Fail to allocate numValue\n", "sendRC2CoexStatsEventCoreAnalytics", 18780);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Fail to allocate keyString\n", "sendRC2CoexStatsEventCoreAnalytics", 18778);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Fail to allocate valueRC2Duration\n", "sendRC2CoexStatsEventCoreAnalytics", 18770);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Fail to allocate keyRC2Duration\n", "sendRC2CoexStatsEventCoreAnalytics", 18768);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Fail to allocate valueRC2CirtAggregate\n", "sendRC2CoexStatsEventCoreAnalytics", 18764);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Fail to allocate keyRC2CirtAggregate\n", "sendRC2CoexStatsEventCoreAnalytics", 18762);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Fail to allocate valueC2CritAwdlNan\n", "sendRC2CoexStatsEventCoreAnalytics", 18758);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Fail to allocate keyC2CritAwdlNan\n", "sendRC2CoexStatsEventCoreAnalytics", 18756);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Fail to allocate valueRC2CritBT\n", "sendRC2CoexStatsEventCoreAnalytics", 18752);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Fail to allocate keyRC2CritBT\n", "sendRC2CoexStatsEventCoreAnalytics", 18750);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Fail to allocate valueRC2CritHpp\n", "sendRC2CoexStatsEventCoreAnalytics", 18746);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Fail to allocate keyRC2CritHpp\n", "sendRC2CoexStatsEventCoreAnalytics", 18744);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Fail to allocate valueRC2CritBcnLoss\n", "sendRC2CoexStatsEventCoreAnalytics", 18740);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Fail to allocate keyRC2CritBcnLoss\n", "sendRC2CoexStatsEventCoreAnalytics", 18738);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Fail to allocate valueCritRateRecovery\n", "sendRC2CoexStatsEventCoreAnalytics", 18734);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Fail to allocate keyCritRateRecovery\n", "sendRC2CoexStatsEventCoreAnalytics", 18732);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Fail to allocate valueRC2CritPhyCal\n", "sendRC2CoexStatsEventCoreAnalytics", 18728);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Fail to allocate keyRC2CritPhyCal\n", "sendRC2CoexStatsEventCoreAnalytics", 18726);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Fail to allocate valueRC2GrantDelay\n", "sendRC2CoexStatsEventCoreAnalytics", 18722);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Fail to allocate keyRC2GrantDelay\n", "sendRC2CoexStatsEventCoreAnalytics", 18720);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Fail to allocate valueRC2SuccessTXedCTS2A\n", "sendRC2CoexStatsEventCoreAnalytics", 18716);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Fail to allocate keyRC2SuccessTXedCTS2A\n", "sendRC2CoexStatsEventCoreAnalytics", 18714);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Fail to allocate valueRC2SuccessAckedPM\n", "sendRC2CoexStatsEventCoreAnalytics", 18710);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Fail to allocate keyRC2SuccessAckedPM\n", "sendRC2CoexStatsEventCoreAnalytics", 18708);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Fail to allocate valueRC2Grant\n", "sendRC2CoexStatsEventCoreAnalytics", 18704);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Fail to allocate keyRC2Grant\n", "sendRC2CoexStatsEventCoreAnalytics", 18702);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Fail to allocate valueRC2Request\n", "sendRC2CoexStatsEventCoreAnalytics", 18698);
}

{
  v2 = OUTLINED_FUNCTION_35_1(a1);
  result = (*(v3 + 1952))(v2);
  if (result)
  {
    (*(*v1 + 1952))(v1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v5 = (*(*v1 + 1952))(v1);
      return CCLogStream::logAlert(v5, "[dk] %s@%d:Fail to allocate eventName\n", "sendRC2CoexStatsEventCoreAnalytics", 18691);
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::sendRC2CoexStatsEventCoreAnalytics(uint64_t *a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v10 = OUTLINED_FUNCTION_5_0(a1);
  result = (*(v11 + 1952))(v10);
  if (result)
  {
    (*(*a1 + 1952))(a1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v13 = (*(*a1 + 1952))(a1);
      result = CCLogStream::logAlert(v13, "[dk] %s@%d:Fail to allocate keyRC2Request\n", "sendRC2CoexStatsEventCoreAnalytics", 18696);
    }
  }

  *a5 = a3;
  *a4 = a2;
  return result;
}

void AppleBCMWLANCore::sendRC2CoexStatsEventCoreAnalytics(uint64_t *a1)
{
  OUTLINED_FUNCTION_33_3(a1);
  if ((*(v2 + 1952))())
  {
    (*(*v1 + 1952))(v1);
    if (CCLogStream::shouldLog())
    {
      v3 = (*(*v1 + 1952))(v1);
      CCLogStream::logAlert(v3, "[dk] %s@%d:Fail to allocate eventPayload\n", "sendRC2CoexStatsEventCoreAnalytics", 18693);
    }
  }

  OUTLINED_FUNCTION_208();
}

uint64_t AppleBCMWLANCore::parseEventLogRecordRC1CoexStatsPerSlice(uint64_t *a1)
{
  v4 = OUTLINED_FUNCTION_11_9(a1);
  result = (*(v5 + 1952))(v4);
  if (result)
  {
    (*(*v3 + 1952))(v3);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v7 = (*(*v3 + 1952))(v3);
      result = CCLogStream::logAlert(v7, "[dk] %s@%d:Failed updateRC1CoexStatsReport\n", "parseEventLogRecordRC1CoexStatsPerSlice", 18882);
    }
  }

  *v1 = v2;
  return result;
}

{
  v4 = OUTLINED_FUNCTION_11_9(a1);
  result = (*(v5 + 1952))(v4);
  if (result)
  {
    (*(*v3 + 1952))(v3);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v7 = (*(*v3 + 1952))(v3);
      result = CCLogStream::logAlert(v7, "[dk] %s@%d:Failed reportRC1Coex\n", "parseEventLogRecordRC1CoexStatsPerSlice", 18885);
    }
  }

  *v1 = v2;
  return result;
}

{
  v3 = OUTLINED_FUNCTION_11_9(a1);
  result = (*(v4 + 1952))(v3);
  if (result)
  {
    (*(*v2 + 1952))(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      (*(*v2 + 1952))(v2);
      OUTLINED_FUNCTION_66();
      result = CCLogStream::logAlert(v6, "[dk] %s@%d:Invalid sliceIndex %d\n", v7, v8, v9);
    }
  }

  *v1 = 0;
  return result;
}

uint64_t AppleBCMWLANCore::updateRC1CoexStatsReport(uint64_t *a1)
{
  v3 = OUTLINED_FUNCTION_11_9(a1);
  result = (*(v4 + 1952))(v3);
  if (result)
  {
    (*(*v2 + 1952))(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      (*(*v2 + 1952))(v2);
      OUTLINED_FUNCTION_66();
      result = CCLogStream::logInfo(v6, "[dk] %s@%d:Unexpected slice index %d\n", v7, v8, v9);
    }
  }

  *v1 = 0;
  return result;
}

{
  v4 = OUTLINED_FUNCTION_2_18(a1);
  result = (*(v5 + 1952))(v4);
  if (result)
  {
    (*(*v2 + 1952))(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      (*(*v2 + 1952))(v2);
      OUTLINED_FUNCTION_66();
      result = CCLogStream::logAlert(v7, "[dk] %s@%d:Invalid RC1 Coex stats version - %u\n", v8, v9, v10);
    }
  }

  *v1 = v3;
  return result;
}

{
  v4 = OUTLINED_FUNCTION_2_18(a1);
  result = (*(v5 + 1952))(v4);
  if (result)
  {
    (*(*v2 + 1952))(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      (*(*v2 + 1952))(v2);
      v7 = OUTLINED_FUNCTION_86();
      OSData::getLength(v7);
      OUTLINED_FUNCTION_6();
      result = CCLogStream::logAlert(v2, "[dk] %s@%d:Unexpected RC1 Coex Stats length %d\n", v8, v9, v10);
    }
  }

  *v1 = v3;
  return result;
}

uint64_t AppleBCMWLANCore::parseEventLogRecordLostMpduPerSlice(uint64_t *a1)
{
  v3 = OUTLINED_FUNCTION_11_9(a1);
  result = (*(v4 + 1952))(v3);
  if (result)
  {
    (*(*v2 + 1952))(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      (*(*v2 + 1952))(v2);
      OUTLINED_FUNCTION_66();
      result = CCLogStream::logAlert(v6, "[dk] %s@%d:Invalid sliceIndex %d\n", v7, v8, v9);
    }
  }

  *v1 = 0;
  return result;
}

uint64_t AppleBCMWLANCore::updateLostMpduStatsReport(uint64_t *a1)
{
  v4 = OUTLINED_FUNCTION_2_18(a1);
  result = (*(v5 + 1952))(v4);
  if (result)
  {
    (*(*v2 + 1952))(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      (*(*v2 + 1952))(v2);
      v7 = OUTLINED_FUNCTION_86();
      Length = OSData::getLength(v7);
      result = CCLogStream::logAlert(v2, "[dk] %s@%d:sizeof(lostMpdus) %ld payload->getLength() %d\n", "updateLostMpduStatsReport", 18943, 68, Length);
    }
  }

  *v1 = v3;
  return result;
}

{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  (*(v3 + 1952))(v2);
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[6];
  v7 = v1[7];
  OUTLINED_FUNCTION_112();
  return CCLogStream::logInfo(v8, "[dk] %s@%d:Lost MPDU BA TID:Value -> 0:%u, 1:%u, 5:%u, 6:%u\n", "updateLostMpduStatsReport", 18948, v10, v11, v12, v13);
}

{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  (*(v3 + 1952))(v2);
  v4 = v1[9];
  v5 = v1[10];
  v6 = v1[14];
  v7 = v1[15];
  OUTLINED_FUNCTION_112();
  return CCLogStream::logInfo(v8, "[dk] %s@%d:Lost MPDU NonBA TID:Value -> 0:%u, 1:%u, 5:%u, 6:%u\n", "updateLostMpduStatsReport", 18949, v10, v11, v12, v13);
}

{
  v4 = OUTLINED_FUNCTION_11_9(a1);
  result = (*(v5 + 1952))(v4);
  if (result)
  {
    (*(*v3 + 1952))(v3);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v7 = (*(*v3 + 1952))(v3);
      result = CCLogStream::logAlert(v7, "[dk] %s@%d:Failed reportRxMpduLost\n", "updateLostMpduStatsReport", 18963);
    }
  }

  *v1 = v2;
  return result;
}

{
  v4 = OUTLINED_FUNCTION_2_18(a1);
  result = (*(v5 + 1952))(v4);
  if (result)
  {
    (*(*v2 + 1952))(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      (*(*v2 + 1952))(v2);
      OUTLINED_FUNCTION_9_4();
      result = CCLogStream::logAlert(v7, "[dk] %s@%d:Invalid lost MPDU stats version - %u\n", v8, v9, v10);
    }
  }

  *v1 = v3;
  return result;
}

uint64_t AppleBCMWLANCore::parseEventLogRecordWmeTxMpduPerSlice(uint64_t *a1)
{
  v3 = OUTLINED_FUNCTION_11_9(a1);
  result = (*(v4 + 1952))(v3);
  if (result)
  {
    (*(*v2 + 1952))(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      (*(*v2 + 1952))(v2);
      OUTLINED_FUNCTION_66();
      result = CCLogStream::logAlert(v6, "[dk] %s@%d:Invalid sliceIndex %d\n", v7, v8, v9);
    }
  }

  *v1 = 0;
  return result;
}

uint64_t AppleBCMWLANCore::updateWmeTxMpduStatsReport(uint64_t *a1)
{
  v4 = OUTLINED_FUNCTION_2_18(a1);
  result = (*(v5 + 1952))(v4);
  if (result)
  {
    (*(*v2 + 1952))(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      (*(*v2 + 1952))(v2);
      v7 = OUTLINED_FUNCTION_86();
      Length = OSData::getLength(v7);
      result = CCLogStream::logAlert(v2, "[dk] %s@%d:sizeof(wmeTx) %ld payload->getLength() %d\n", "updateWmeTxMpduStatsReport", 18980, 36, Length);
    }
  }

  *v1 = v3;
  return result;
}

{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  (*(v3 + 1952))(v2);
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[6];
  v7 = v1[7];
  OUTLINED_FUNCTION_112();
  return CCLogStream::logInfo(v8, "[dk] %s@%d:WME Tx TID:Value -> 0:%u, 1:%u, 5:%u, 6:%u\n", "updateWmeTxMpduStatsReport", 18985, v10, v11, v12, v13);
}

{
  v4 = OUTLINED_FUNCTION_11_9(a1);
  result = (*(v5 + 1952))(v4);
  if (result)
  {
    (*(*v3 + 1952))(v3);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v7 = (*(*v3 + 1952))(v3);
      result = CCLogStream::logAlert(v7, "[dk] %s@%d:Failed reportTxMpduWme\n", "updateWmeTxMpduStatsReport", 18996);
    }
  }

  *v1 = v2;
  return result;
}

{
  v4 = OUTLINED_FUNCTION_2_18(a1);
  result = (*(v5 + 1952))(v4);
  if (result)
  {
    (*(*v2 + 1952))(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      (*(*v2 + 1952))(v2);
      OUTLINED_FUNCTION_9_4();
      result = CCLogStream::logAlert(v7, "[dk] %s@%d:Invalid WME Tx stats version - %u\n", v8, v9, v10);
    }
  }

  *v1 = v3;
  return result;
}

uint64_t AppleBCMWLANCore::parseEventLogRecordWmeRxMpduPerSlice(uint64_t *a1)
{
  v3 = OUTLINED_FUNCTION_11_9(a1);
  result = (*(v4 + 1952))(v3);
  if (result)
  {
    (*(*v2 + 1952))(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      (*(*v2 + 1952))(v2);
      OUTLINED_FUNCTION_66();
      result = CCLogStream::logAlert(v6, "[dk] %s@%d:Invalid sliceIndex %d\n", v7, v8, v9);
    }
  }

  *v1 = 0;
  return result;
}

uint64_t AppleBCMWLANCore::updateWmeRxMpduStatsReport(uint64_t *a1)
{
  v4 = OUTLINED_FUNCTION_2_18(a1);
  result = (*(v5 + 1952))(v4);
  if (result)
  {
    (*(*v2 + 1952))(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      (*(*v2 + 1952))(v2);
      v7 = OUTLINED_FUNCTION_86();
      Length = OSData::getLength(v7);
      result = CCLogStream::logAlert(v2, "[dk] %s@%d:sizeof(wmeRx) %ld payload->getLength() %d\n", "updateWmeRxMpduStatsReport", 19013, 36, Length);
    }
  }

  *v1 = v3;
  return result;
}

{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  (*(v3 + 1952))(v2);
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[6];
  v7 = v1[7];
  OUTLINED_FUNCTION_112();
  return CCLogStream::logInfo(v8, "[dk] %s@%d:WME Rx TID:Value -> 0:%u, 1:%u, 5:%u, 6:%u\n", "updateWmeRxMpduStatsReport", 19018, v10, v11, v12, v13);
}

{
  v4 = OUTLINED_FUNCTION_11_9(a1);
  result = (*(v5 + 1952))(v4);
  if (result)
  {
    (*(*v3 + 1952))(v3);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v7 = (*(*v3 + 1952))(v3);
      result = CCLogStream::logAlert(v7, "[dk] %s@%d:Failed reportRxMpduWme\n", "updateWmeRxMpduStatsReport", 19029);
    }
  }

  *v1 = v2;
  return result;
}

{
  v4 = OUTLINED_FUNCTION_2_18(a1);
  result = (*(v5 + 1952))(v4);
  if (result)
  {
    (*(*v2 + 1952))(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      (*(*v2 + 1952))(v2);
      OUTLINED_FUNCTION_9_4();
      result = CCLogStream::logAlert(v7, "[dk] %s@%d:Invalid WME Rx stats version - %u\n", v8, v9, v10);
    }
  }

  *v1 = v3;
  return result;
}

uint64_t AppleBCMWLANCore::updateRC1CoexStatsReportV1(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_16_5(a1);
  result = (*(v3 + 1952))(v2);
  if (result)
  {
    (*(*v1 + 1952))(v1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      (*(*v1 + 1952))(v1);
      v5 = OUTLINED_FUNCTION_12_1();
      Length = OSData::getLength(v5);
      return CCLogStream::logAlert(v1, "[dk] %s@%d:sizeof(rc1CoexStatsV1) %ld payload->getLength() %d\n", "updateRC1CoexStatsReportV1", 19048, 40, Length);
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::updateRC1CoexStatsReportV1(uint64_t *a1, unsigned __int16 a2)
{
  v4 = OUTLINED_FUNCTION_36_1(a1);
  result = (*(v5 + 1952))(v4);
  if (result)
  {
    (*(*v2 + 1952))(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v7 = (*(*v2 + 1952))(v2);
      return CCLogStream::logAlert(v7, "[dk] %s@%d:sizeof(rc1CoexStatsV1) %ld rc1CoexStatsV1.len() %d\n", "updateRC1CoexStatsReportV1", 19050, 40, a2);
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::updateRC1CoexStatsReportV2(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_16_5(a1);
  result = (*(v3 + 1952))(v2);
  if (result)
  {
    (*(*v1 + 1952))(v1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      (*(*v1 + 1952))(v1);
      v5 = OUTLINED_FUNCTION_12_1();
      Length = OSData::getLength(v5);
      return CCLogStream::logAlert(v1, "[dk] %s@%d:sizeof(rc1CoexStatsV2) %ld payload->getLength() %d\n", "updateRC1CoexStatsReportV2", 19115, 48, Length);
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::updateRC1CoexStatsReportV2(uint64_t *a1, unsigned __int16 a2)
{
  v4 = OUTLINED_FUNCTION_36_1(a1);
  result = (*(v5 + 1952))(v4);
  if (result)
  {
    (*(*v2 + 1952))(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v7 = (*(*v2 + 1952))(v2);
      return CCLogStream::logAlert(v7, "[dk] %s@%d:sizeof(rc1CoexStatsV2) %ld rc1CoexStatsV2.len() %d\n", "updateRC1CoexStatsReportV2", 19117, 48, a2);
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::updateRC1CoexStatsReportV3(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_16_5(a1);
  result = (*(v3 + 1952))(v2);
  if (result)
  {
    (*(*v1 + 1952))(v1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      (*(*v1 + 1952))(v1);
      v5 = OUTLINED_FUNCTION_12_1();
      Length = OSData::getLength(v5);
      return CCLogStream::logAlert(v1, "[dk] %s@%d:sizeof(rc1CoexStatsV3) %ld payload->getLength() %d\n", "updateRC1CoexStatsReportV3", 19188, 72, Length);
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::updateRC1CoexStatsReportV3(uint64_t *a1, unsigned __int16 a2)
{
  v4 = OUTLINED_FUNCTION_36_1(a1);
  result = (*(v5 + 1952))(v4);
  if (result)
  {
    (*(*v2 + 1952))(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v7 = (*(*v2 + 1952))(v2);
      return CCLogStream::logAlert(v7, "[dk] %s@%d:sizeof(rc1CoexStatsV3) %ld rc1CoexStatsV3.len() %d\n", "updateRC1CoexStatsReportV3", 19190, 72, a2);
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::updateRC1CoexStatsReportV4(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_16_5(a1);
  result = (*(v3 + 1952))(v2);
  if (result)
  {
    (*(*v1 + 1952))(v1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      (*(*v1 + 1952))(v1);
      v5 = OUTLINED_FUNCTION_12_1();
      Length = OSData::getLength(v5);
      return CCLogStream::logAlert(v1, "[dk] %s@%d:sizeof(rc1CoexStatsV4) %ld payload->getLength() %d\n", "updateRC1CoexStatsReportV4", 19278, 52, Length);
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::updateRC1CoexStatsReportV4(uint64_t *a1, unsigned __int16 a2)
{
  v4 = OUTLINED_FUNCTION_36_1(a1);
  result = (*(v5 + 1952))(v4);
  if (result)
  {
    (*(*v2 + 1952))(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v7 = (*(*v2 + 1952))(v2);
      return CCLogStream::logAlert(v7, "[dk] %s@%d:sizeof(rc1CoexStatsV4) %ld rc1CoexStatsV4.len() %d\n", "updateRC1CoexStatsReportV4", 19280, 52, a2);
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::updateRC1CoexStatsReportV5(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_16_5(a1);
  result = (*(v3 + 1952))(v2);
  if (result)
  {
    (*(*v1 + 1952))(v1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      (*(*v1 + 1952))(v1);
      v5 = OUTLINED_FUNCTION_12_1();
      Length = OSData::getLength(v5);
      return CCLogStream::logAlert(v1, "[dk] %s@%d:sizeof(rc1CoexStatsV5) %ld payload->getLength() %d\n", "updateRC1CoexStatsReportV5", 19355, 76, Length);
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::updateRC1CoexStatsReportV5(uint64_t *a1, unsigned __int16 a2)
{
  v4 = OUTLINED_FUNCTION_36_1(a1);
  result = (*(v5 + 1952))(v4);
  if (result)
  {
    (*(*v2 + 1952))(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v7 = (*(*v2 + 1952))(v2);
      return CCLogStream::logAlert(v7, "[dk] %s@%d:sizeof(rc1CoexStatsV5) %ld rc1CoexStatsV5.len() %d\n", "updateRC1CoexStatsReportV5", 19357, 76, a2);
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::sendRC1CoexStatsEventCoreAnalytics(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Fail to allocate valueRC1WlanCritDur\n", "sendRC1CoexStatsEventCoreAnalytics", 19525);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Fail to allocate keyRC1WlanCritDur\n", "sendRC1CoexStatsEventCoreAnalytics", 19523);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Fail to allocate valueRC1WlanCrit\n", "sendRC1CoexStatsEventCoreAnalytics", 19519);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Fail to allocate keyRC1WlanCrit\n", "sendRC1CoexStatsEventCoreAnalytics", 19517);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Fail to allocate valueRC1Duration", "sendRC1CoexStatsEventCoreAnalytics", 19513);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Fail to allocate keyRC1Duration\n", "sendRC1CoexStatsEventCoreAnalytics", 19511);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Fail to allocate valueRC1Request\n", "sendRC1CoexStatsEventCoreAnalytics", 19507);
}

{
  v2 = OUTLINED_FUNCTION_35_1(a1);
  result = (*(v3 + 1952))(v2);
  if (result)
  {
    (*(*v1 + 1952))(v1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v5 = (*(*v1 + 1952))(v1);
      return CCLogStream::logAlert(v5, "[dk] %s@%d:Fail to allocate keyRC1Request\n", "sendRC1CoexStatsEventCoreAnalytics", 19505);
    }
  }

  return result;
}

{
  v2 = OUTLINED_FUNCTION_35_1(a1);
  result = (*(v3 + 1952))(v2);
  if (result)
  {
    (*(*v1 + 1952))(v1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v5 = (*(*v1 + 1952))(v1);
      return CCLogStream::logAlert(v5, "[dk] %s@%d:Fail to allocate eventPayload\n", "sendRC1CoexStatsEventCoreAnalytics", 19502);
    }
  }

  return result;
}

{
  v2 = OUTLINED_FUNCTION_35_1(a1);
  result = (*(v3 + 1952))(v2);
  if (result)
  {
    (*(*v1 + 1952))(v1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v5 = (*(*v1 + 1952))(v1);
      return CCLogStream::logAlert(v5, "[dk] %s@%d:Fail to allocate eventName\n", "sendRC1CoexStatsEventCoreAnalytics", 19500);
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::updateTxDCSlice0Ant0Report(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Invalid Tx Duty Cycle for Slice 0 Ant0\n", "updateTxDCSlice0Ant0Report", 19639);
}

uint64_t AppleBCMWLANCore::updateTxDCSlice1Ant0Report(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Invalid Tx Duty Cycle for Slice 1 Ant0\n", "updateTxDCSlice1Ant0Report", 19665);
}

uint64_t AppleBCMWLANCore::handleTxDCPerAntAsyncCallback(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 112);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Failed to get TxDC from DynSAR summary %s\n", v9, v10, v11);
}

{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  v4 = (*(v3 + 1952))(v2);
  return CCLogStream::logAlert(v4, "[dk] %s@%d:Sub Command ID mismatch, input %d, output %d\n", "handleTxDCPerAntAsyncCallback", 19689, 3, *v1);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Invalid FW length detected for DYNSAR_CNT_VERSION_V4!\n", "handleTxDCPerAntAsyncCallback", 19712);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Invalid FW length detected for DYNSAR_CNT_VERSION_V2!\n", "handleTxDCPerAntAsyncCallback", 19704);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Invalid DynSAR Summary version\n", "handleTxDCPerAntAsyncCallback", 19716);
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logInfo(v3, "[dk] %s@%d:Slice %d\n", v5, v6, v7);
}

{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_102_0(*v1);
  return CCLogStream::logInfo(v4, "[dk] %s@%d:Ant 2 TxDC %d%%\n", "handleTxDCPerAntAsyncCallback", 19779, v6);
}

{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_102_0(*v1);
  return CCLogStream::logInfo(v4, "[dk] %s@%d:Ant 1 TxDC %d%%\n", "handleTxDCPerAntAsyncCallback", 19776, v6);
}

{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_102_0(*v1);
  return CCLogStream::logInfo(v4, "[dk] %s@%d:Ant 0 TxDC %d%%\n", "handleTxDCPerAntAsyncCallback", 19773, v6);
}

{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_102_0(*v1);
  return CCLogStream::logInfo(v4, "[dk] %s@%d:Ant 3 TxDC %d%%\n", "handleTxDCPerAntAsyncCallback", 19782, v6);
}

{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_102_0(*v1);
  return CCLogStream::logInfo(v4, "[dk] %s@%d:Ant 2 TxDC %d%%\n", "handleTxDCPerAntAsyncCallback", 19765, v6);
}

{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_102_0(*v1);
  return CCLogStream::logInfo(v4, "[dk] %s@%d:Ant 1 TxDC %d%%\n", "handleTxDCPerAntAsyncCallback", 19762, v6);
}

{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_102_0(*v1);
  return CCLogStream::logInfo(v4, "[dk] %s@%d:Ant 0 TxDC %d%%\n", "handleTxDCPerAntAsyncCallback", 19759, v6);
}

{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_102_0(*v1);
  return CCLogStream::logInfo(v4, "[dk] %s@%d:Ant 3 TxDC %d%%\n", "handleTxDCPerAntAsyncCallback", 19768, v6);
}

{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_102_0(*v1);
  return CCLogStream::logInfo(v4, "[dk] %s@%d:Ant 2 TxDC %d%%\n", "handleTxDCPerAntAsyncCallback", 19749, v6);
}

{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_102_0(*v1);
  return CCLogStream::logInfo(v4, "[dk] %s@%d:Ant 1 TxDC %d%%\n", "handleTxDCPerAntAsyncCallback", 19746, v6);
}

{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_102_0(*v1);
  return CCLogStream::logInfo(v4, "[dk] %s@%d:Ant 0 TxDC %d%%\n", "handleTxDCPerAntAsyncCallback", 19743, v6);
}

{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_102_0(*v1);
  return CCLogStream::logInfo(v4, "[dk] %s@%d:Ant 3 TxDC %d%%\n", "handleTxDCPerAntAsyncCallback", 19752, v6);
}

{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_102_0(*v1);
  return CCLogStream::logInfo(v4, "[dk] %s@%d:Ant 2 TxDC %d%%\n", "handleTxDCPerAntAsyncCallback", 19735, v6);
}

{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_102_0(*v1);
  return CCLogStream::logInfo(v4, "[dk] %s@%d:Ant 1 TxDC %d%%\n", "handleTxDCPerAntAsyncCallback", 19732, v6);
}

{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_102_0(*v1);
  return CCLogStream::logInfo(v4, "[dk] %s@%d:Ant 0 TxDC %d%%\n", "handleTxDCPerAntAsyncCallback", 19729, v6);
}

{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_102_0(*v1);
  return CCLogStream::logInfo(v4, "[dk] %s@%d:Ant 3 TxDC %d%%\n", "handleTxDCPerAntAsyncCallback", 19738, v6);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Invalid DynSAR Summary version\n", "handleTxDCPerAntAsyncCallback", 19786);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Invalid version or fields from DynSAR summary response\n", "handleTxDCPerAntAsyncCallback", 19695);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logNotice(v3, "[dk] %s@%d:No valid data\n", "handleTxDCPerAntAsyncCallback", 19678);
}

uint64_t AppleBCMWLANCore::parseEventLogRecordBTCoexStatsPerSlice(uint64_t *a1)
{
  v4 = OUTLINED_FUNCTION_11_9(a1);
  result = (*(v5 + 1952))(v4);
  if (result)
  {
    (*(*v3 + 1952))(v3);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v7 = (*(*v3 + 1952))(v3);
      result = CCLogStream::logAlert(v7, "[dk] %s@%d:Failed parseEventLogRecordBTCoexStats\n", "parseEventLogRecordBTCoexStatsPerSlice", 20241);
    }
  }

  *v1 = v2;
  return result;
}

{
  v4 = OUTLINED_FUNCTION_11_9(a1);
  result = (*(v5 + 1952))(v4);
  if (result)
  {
    (*(*v3 + 1952))(v3);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v7 = (*(*v3 + 1952))(v3);
      result = CCLogStream::logAlert(v7, "[dk] %s@%d:Failed reportExtraBTCoex\n", "parseEventLogRecordBTCoexStatsPerSlice", 20245);
    }
  }

  *v1 = v2;
  return result;
}

{
  v4 = OUTLINED_FUNCTION_2_18(a1);
  result = (*(v5 + 1952))(v4);
  if (result)
  {
    (*(*v2 + 1952))(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      (*(*v2 + 1952))(v2);
      OUTLINED_FUNCTION_66();
      result = CCLogStream::logAlert(v7, "[dk] %s@%d:Invalid sliceIndex %d\n", v8, v9, v10);
    }
  }

  *v1 = v3;
  return result;
}

uint64_t AppleBCMWLANCore::parseEventLogRecordBTCoexStats(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  (*(v3 + 1952))(v2);
  v4 = OUTLINED_FUNCTION_12_1();
  Length = OSData::getLength(v4);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:BTC size mismatch, have %u, expected %ld\n", "parseEventLogRecordBTCoexStats", 20339, Length, 112);
}

{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  (*(v3 + 1952))(v2);
  v4 = OUTLINED_FUNCTION_12_1();
  Length = OSData::getLength(v4);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:BTC size mismatch, have %u, expected %ld\n", "parseEventLogRecordBTCoexStats", 20329, Length, 88);
}

{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  (*(v3 + 1952))(v2);
  v4 = OUTLINED_FUNCTION_12_1();
  Length = OSData::getLength(v4);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:BTC size mismatch, have %u, expected %ld\n", "parseEventLogRecordBTCoexStats", 20319, Length, 76);
}

{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  (*(v3 + 1952))(v2);
  v4 = OUTLINED_FUNCTION_12_1();
  Length = OSData::getLength(v4);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:BTC size mismatch, have %u, expected %ld\n", "parseEventLogRecordBTCoexStats", 20308, Length, 72);
}

{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  (*(v3 + 1952))(v2);
  v4 = OUTLINED_FUNCTION_12_1();
  OSData::getLength(v4);
  OUTLINED_FUNCTION_241();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:BTC size mismatch, have %d, expected %ld\n", "parseEventLogRecordBTCoexStats", 20297, v6, v7);
}

{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  (*(v3 + 1952))(v2);
  v4 = OUTLINED_FUNCTION_12_1();
  Length = OSData::getLength(v4);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:BTC size mismatch, have %d, expected %ld\n", "parseEventLogRecordBTCoexStats", 20286, Length, 92);
}

{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  (*(v3 + 1952))(v2);
  v4 = OUTLINED_FUNCTION_12_1();
  OSData::getLength(v4);
  OUTLINED_FUNCTION_241();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:BTC size mismatch, have %d, expected %ld\n", "parseEventLogRecordBTCoexStats", 20275, v6, v7);
}

{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  (*(v3 + 1952))(v2);
  v4 = OUTLINED_FUNCTION_12_1();
  Length = OSData::getLength(v4);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:BTC size mismatch, have %d, expected %ld\n", "parseEventLogRecordBTCoexStats", 20265, Length, 36);
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_12_3();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:BTC version mismatch, found %d\n", "parseEventLogRecordBTCoexStats", 20348, v5);
}

uint64_t AppleBCMWLANCore::parseEventLogRecordChannelSwitch(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  (*(v3 + 1952))(v2);
  v4 = OUTLINED_FUNCTION_12_1();
  OSData::getLength(v4);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Unknown payload length %d\n", v6, v7, v8);
}

uint64_t AppleBCMWLANCore::parseEventLogRecordRoamTargetEvaluation(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:LQM-WiFi-Roam: Roam Target Evaluation unknown type\n", "parseEventLogRecordRoamTargetEvaluation", 20669);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Failed to allocate wl_roam_target_evaluation_t buf", "parseEventLogRecordRoamTargetEvaluation", 20629);
}

uint64_t AppleBCMWLANCore::parseEventLogRecordRoamTargetEvaluation()
{
  OUTLINED_FUNCTION_4();
  v3 = OUTLINED_FUNCTION_5_0(v2);
  if (!(*(v4 + 1952))(v3) || ((*(*v1 + 1952))(v1), (CCLogStream::shouldLogConsole() & 1) == 0))
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      OUTLINED_FUNCTION_71();
      OUTLINED_FUNCTION_201();
      OUTLINED_FUNCTION_225(&_mh_execute_header, &_os_log_default, v5, "%c [dk] %s@%d: Insufficient buf sized wl_roam_target_evaluation_t %ld to hold payload", v6, v7, v8, v9, v12, v13, v14, v15, v16);
    }
  }

  result = (*(*v1 + 1952))(v1);
  if (result)
  {
    (*(*v1 + 1952))(v1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v11 = (*(*v1 + 1952))(v1);
      result = CCLogStream::logAlert(v11, "[dk] %s@%d:Insufficient buf sized wl_roam_target_evaluation_t %ld to hold payload", "parseEventLogRecordRoamTargetEvaluation", 20633, 48);
    }
  }

  *v0 = 0;
  return result;
}

{
  OUTLINED_FUNCTION_4();
  v4 = OUTLINED_FUNCTION_5_0(v3);
  if (!(*(v5 + 1952))(v4) || ((*(*v1 + 1952))(v1), (CCLogStream::shouldLogConsole() & 1) == 0))
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      OUTLINED_FUNCTION_37_1();
      OUTLINED_FUNCTION_15_0(&_mh_execute_header, &_os_log_default, v6, "%c [dk] %s@%d: Received NULL pointer\n", v7, v8, v9, v10, v14, v15, v16);
    }
  }

  OUTLINED_FUNCTION_69_0();
  result = (*(v11 + 1952))(v1);
  if (result)
  {
    (*(*v1 + 1952))(v1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v13 = (*(*v1 + 1952))(v1);
      result = CCLogStream::logAlert(v13, "[dk] %s@%d:Received NULL pointer\n", "parseEventLogRecordRoamTargetEvaluation", 20632);
    }
  }

  *v0 = v2;
  return result;
}

uint64_t AppleBCMWLANCore::parseEventLogRecordKvrReport(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:LQM-WiFi-Roam-kvr: Unhandled WLC_FBT_ODS_RESP. Phase 2\n", "parseEventLogRecordKvrReport", 20760);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:LQM-WiFi-Roam-kvr: Unhandled WLC_FBT_ODS_REQ. Phase 2\n", "parseEventLogRecordKvrReport", 20756);
}

{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  (*(v3 + 1952))(v2);
  v4 = OUTLINED_FUNCTION_12_1();
  OSData::getLength(v4);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:LQM-WiFi-Roam-kvr: not enough space for the wl_roam_11kvr_dms_resp_v1 payload. length is %ld\n", v6, v7, v8);
}

{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  (*(v3 + 1952))(v2);
  v4 = OUTLINED_FUNCTION_12_1();
  OSData::getLength(v4);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:LQM-WiFi-Roam-kvr: not enough space for the wl_roam_11kvr_dms_req_v1 payload. length is %ld\n", v6, v7, v8);
}

{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  (*(v3 + 1952))(v2);
  v4 = OUTLINED_FUNCTION_12_1();
  OSData::getLength(v4);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:LQM-WiFi-Roam-kvr: not enough space for the wl_roam_11kvr_nbr_rpt_resp_v1 payload. length is %ld\n", v6, v7, v8);
}

{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  (*(v3 + 1952))(v2);
  v4 = OUTLINED_FUNCTION_12_1();
  OSData::getLength(v4);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:LQM-WiFi-Roam-kvr: not enough space for the wl_roam_11kvr_nbr_rpt_req_v1 payload. length is %ld\n", v6, v7, v8);
}

{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  (*(v3 + 1952))(v2);
  v4 = OUTLINED_FUNCTION_12_1();
  OSData::getLength(v4);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:LQM-WiFi-Roam-kvr: not enough space for the wl_roam_11kvr_bcn_rpt_resp_v1 payload. length is %ld\n", v6, v7, v8);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:%s LQM-WiFi-Roam-kvr: kvr Report unknown type\n", v5, v6, v7);
}

{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  (*(v3 + 1952))(v2);
  v4 = OUTLINED_FUNCTION_12_1();
  OSData::getLength(v4);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:LQM-WiFi-Roam-kvr: not enough space for the wl_roam_11kvr_bcn_rpt_req_v1 payload. length is %ld\n", v6, v7, v8);
}

{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  (*(v3 + 1952))(v2);
  v4 = OUTLINED_FUNCTION_12_1();
  OSData::getLength(v4);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:LQM-WiFi-Roam-kvr: not enough space for the kvr type payoad. length is %ld\n", v6, v7, v8);
}

{
  v3 = OUTLINED_FUNCTION_16_5(a1);
  result = (*(v4 + 1952))(v3);
  if (result)
  {
    (*(*v2 + 1952))(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v6 = (*(*v2 + 1952))(v2);
      result = CCLogStream::logAlert(v6, "[dk] %s@%d:LQM-WiFi-Roam-kvr: Invalid kvrCursor IO80211BufferCursor\n", "parseEventLogRecordKvrReport", 20704);
    }
  }

  *v1 = 0;
  return result;
}

{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  (*(v3 + 1952))(v2);
  v4 = OUTLINED_FUNCTION_12_1();
  OSData::getLength(v4);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Payload too large %ld", v6, v7, v8);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:LQM-WiFi-Roam-kvr: NULL payload\n", "parseEventLogRecordKvrReport", 20692);
}

uint64_t AppleBCMWLANCore::parseEventLogRecordLTECoexStatsPerSlice(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:LTECX capability is missing for this chipset/FW\n", "parseEventLogRecordLTECoexStatsPerSlice", 20779);
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_12_3();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:LTECoex stats version mismatch, found %d\n", "parseEventLogRecordLTECoexStatsPerSlice", 20803, v5);
}

{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  (*(v3 + 1952))(v2);
  v4 = OUTLINED_FUNCTION_12_1();
  Length = OSData::getLength(v4);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:LTECoex stats size mismatch, have %d, expected %ld\n", "parseEventLogRecordLTECoexStatsPerSlice", 20792, Length, 160);
}

{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  (*(v3 + 1952))(v2);
  v4 = OUTLINED_FUNCTION_12_1();
  Length = OSData::getLength(v4);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:LTECoex stats size mismatch, have %d, expected %ld\n", "parseEventLogRecordLTECoexStatsPerSlice", 20797, Length, 160);
}

{
  v4 = OUTLINED_FUNCTION_11_9(a1);
  result = (*(v5 + 1952))(v4);
  if (result)
  {
    (*(*v3 + 1952))(v3);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v7 = (*(*v3 + 1952))(v3);
      result = CCLogStream::logAlert(v7, "[dk] %s@%d:failed to convertInfraLTECoexStatisticsToApple80211Counters\n", "parseEventLogRecordLTECoexStatsPerSlice", 20808);
    }
  }

  *v1 = v2;
  return result;
}

{
  v4 = OUTLINED_FUNCTION_11_9(a1);
  result = (*(v5 + 1952))(v4);
  if (result)
  {
    (*(*v3 + 1952))(v3);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v7 = (*(*v3 + 1952))(v3);
      result = CCLogStream::logAlert(v7, "[dk] %s@%d:failed to reportLTECoexStatisticsPerSlice\n", "parseEventLogRecordLTECoexStatsPerSlice", 20811);
    }
  }

  *v1 = v2;
  return result;
}

{
  v4 = OUTLINED_FUNCTION_2_18(a1);
  result = (*(v5 + 1952))(v4);
  if (result)
  {
    (*(*v2 + 1952))(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      (*(*v2 + 1952))(v2);
      OUTLINED_FUNCTION_66();
      result = CCLogStream::logAlert(v7, "[dk] %s@%d:Invalid sliceIndex %d\n", v8, v9, v10);
    }
  }

  *v1 = v3;
  return result;
}

void AppleBCMWLANCore::convertInfraLTECoexStatisticsToApple80211Counters(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_16_5(a1);
  if ((*(v3 + 1952))(v2))
  {
    (*(*v1 + 1952))(v1);
    if (CCLogStream::shouldLog())
    {
      v4 = (*(*v1 + 1952))(v1);
      CCLogStream::logEmergency(v4, "[dk] %s@%d:setLTECoexstat failed\n", "convertInfraLTECoexStatisticsToApple80211Counters", 30559);
    }
  }

  OUTLINED_FUNCTION_2();
}

{
  v3 = OUTLINED_FUNCTION_16_5(a1);
  if ((*(v4 + 1952))(v3))
  {
    (*(*v2 + 1952))(v2);
    if (CCLogStream::shouldLog())
    {
      v5 = (*(*v2 + 1952))(v2);
      CCLogStream::logEmergency(v5, "[dk] %s@%d:Failed to allocate buffer\n", "convertInfraLTECoexStatisticsToApple80211Counters", 30544);
    }
  }

  AppleBCMWLANUtil::AutoreleasedAlignedOSData::~AutoreleasedAlignedOSData(v1);
}

uint64_t AppleBCMWLANCore::convertInfraLTECoexStatisticsToApple80211Counters(uint64_t *a1)
{
  OUTLINED_FUNCTION_7_13(a1);
  if ((*(v3 + 1952))())
  {
    (*(*v2 + 1952))(v2);
    if (CCLogStream::shouldLog())
    {
      v5 = (*(*v2 + 1952))(v2);
      CCLogStream::logEmergency(v5, "[dk] %s@%d:Failed to allocate alignedCounters\n", "convertInfraLTECoexStatisticsToApple80211Counters", 30541);
    }
  }

  OUTLINED_FUNCTION_275();
  return v1 & 1;
}

uint64_t AppleBCMWLANCore::parseEventLogRecordControlManagementFrameCounts(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Failed to create aligned wl_ctl_mgt_cnt_t data\n", "parseEventLogRecordControlManagementFrameCounts", 20843);
}

{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  v4 = (*(v3 + 1952))(v2);
  return CCLogStream::logAlert(v4, "[dk] %s@%d:Unexpected type found %d, expected %d\n", "parseEventLogRecordControlManagementFrameCounts", 20852, *v1, 0);
}

{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  v4 = (*(v3 + 1952))(v2);
  return CCLogStream::logAlert(v4, "[dk] %s@%d:CTL Mgmt size mismatch, found %d, expected %ld\n", "parseEventLogRecordControlManagementFrameCounts", 20858, *v1, 144);
}

{
  v4 = OUTLINED_FUNCTION_11_9(a1);
  result = (*(v5 + 1952))(v4);
  if (result)
  {
    (*(*v3 + 1952))(v3);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v7 = (*(*v3 + 1952))(v3);
      result = CCLogStream::logAlert(v7, "[dk] %s@%d:Failed to convertwlMgmtCntToAppleFrameCounters\n", "parseEventLogRecordControlManagementFrameCounts", 20865);
    }
  }

  *v1 = v2;
  return result;
}

{
  v4 = OUTLINED_FUNCTION_0_25(a1);
  result = (*(v5 + 1952))(v4);
  if (result)
  {
    (*(*v2 + 1952))(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v7 = (*(*v2 + 1952))(v2);
      result = CCLogStream::logAlert(v7, "[dk] %s@%d:Failed to setFrameStats\n", "parseEventLogRecordControlManagementFrameCounts", 20871);
    }
  }

  *v1 = v3;
  return result;
}

{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  (*(v3 + 1952))(v2);
  v4 = OUTLINED_FUNCTION_12_1();
  Length = OSData::getLength(v4);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:CTL Mgmt size mismatch, have %d, expected %ld\n", "parseEventLogRecordControlManagementFrameCounts", 20834, Length, 148);
}

uint64_t AppleBCMWLANCore::convertwlMgmtCntToAppleFrameCounters(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logInfo(v3, "[dk] %s@%d:Control Management Frame counter data not aligned, %p\n", v5, v6, v7);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Failed to create aligned ctl data\n", "convertwlMgmtCntToAppleFrameCounters", 28656);
}

uint64_t AppleBCMWLANCore::parseXTLVContainers(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  v4 = (*(v3 + 1952))(v2);
  return CCLogStream::logInfoIf(v4, 0x2000000000uLL, "[dk] %s@%d:first xtlv id %x length %d\n", "parseXTLVContainers", 28732, *v1, v1[1]);
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Unknown XTLV tag %d\n", v5, v6, v7);
}

{
  v2 = OUTLINED_FUNCTION_9_5(a1);
  result = (*(v3 + 1952))(v2);
  if (result)
  {
    (*(*v1 + 1952))(v1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v5 = (*(*v1 + 1952))(v1);
      return CCLogStream::logAlert(v5, "[dk] %s@%d:safe_align_up failed\n", "parseXTLVContainers", 28787);
    }
  }

  return result;
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logInfoIf(v3, 0x2000000000uLL, "[dk] %s@%d:parseXTLVContainers: index %d\n", v5, v6, v7);
}

{
  v2 = OUTLINED_FUNCTION_9_5(a1);
  result = (*(v3 + 1952))(v2);
  if (result)
  {
    (*(*v1 + 1952))(v1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v5 = (*(*v1 + 1952))(v1);
      return CCLogStream::logAlert(v5, "[dk] %s@%d:UINT16_MAX overflow nextAlignedIndex\n", "parseXTLVContainers", 28788);
    }
  }

  return result;
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_9_4();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Bad read at index %d\n", v5, v6, v7);
}

{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  (*(v3 + 1952))(v2);
  v4 = OUTLINED_FUNCTION_12_1();
  OSData::getLength(v4);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Insufficient length for any XTLV, %u\n", v6, v7, v8);
}

uint64_t AppleBCMWLANCore::parseEventLogRecordTxFailure(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Allocation failure for return TLV\n", "parseEventLogRecordTxFailure", 21127);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logNotice(v3, "[dk] %s@%d:%s: dropping '0' failureCount report", v5, v6, v7);
}

uint64_t AppleBCMWLANCore::parseEventLogRecords(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  (*(v3 + 1952))(v2);
  v4 = OUTLINED_FUNCTION_12_1();
  OSData::getLength(v4);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Unexpected length payload, total len %d, needs to be 4 byte alligned\n", v6, v7, v8);
}

{
  v3 = OUTLINED_FUNCTION_5_6(a1);
  (*(v4 + 1952))(v3);
  v5 = OUTLINED_FUNCTION_86();
  Length = OSData::getLength(v5);
  return CCLogStream::logInfo(v2, "[dk] %s@%d:failed to cast footer at position %lu, payload length is %d\n", "parseEventLogRecords", 21337, v1, Length);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Failed to allocate eventLogRecordPayload\n", "parseEventLogRecords", 21328);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Failed to create aligned eventLogRecordPayload OSData\n", "parseEventLogRecords", 21421);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Failed to create aligned tmpData data\n", "parseEventLogRecords", 21409);
}

{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  (*(v3 + 1952))(v2);
  v4 = OUTLINED_FUNCTION_12_1();
  OSData::getLength(v4);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Insufficient length payload %d\n", v6, v7, v8);
}

uint64_t AppleBCMWLANCore::handleMsgTraceBlock(uint64_t *a1)
{
  v3 = OUTLINED_FUNCTION_5_6(a1);
  (*(v4 + 1952))(v3);
  v5 = OUTLINED_FUNCTION_86();
  Length = OSData::getLength(v5);
  return CCLogStream::logAlert(v2, "[dk] %s@%d:payload and header size mismatch (payload len %d, header length field %d)\n", "handleMsgTraceBlock", 21488, Length, v1);
}

{
  v3 = OUTLINED_FUNCTION_5_6(a1);
  v5 = (*(v4 + 1952))(v3);
  return CCLogStream::logAlert(v5, "[dk] %s@%d:Invalid set number in event_log_block, found %d max supported log sets %d\n", "handleMsgTraceBlock", 21496, v1, *(*v2 + 972) - 1);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Insufficient data in eventHeaderAndPayload\n", "handleMsgTraceBlock", 21476);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d: Bad argument\n", "handleMsgTraceBlock", 21470);
}

uint64_t AppleBCMWLANCore::adjustBeaconListPerNewCountryCode(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_10_5(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_116(*(v1 + 72));
  return CCLogStream::logInfo(v4, "[dk] %s@%d:WiFiCC : band filter is : [%d]\n,", "adjustBeaconListPerNewCountryCode", 21751, v6);
}

{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_116(*v1);
  return CCLogStream::logInfo(v4, "[dk] %s@%d:WiFiCC : setting 6GHz valid channels : [%d]\n,", "adjustBeaconListPerNewCountryCode", 21798, v6);
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:WiFiCC : Invalid 6GHz channel number %d\n", v5, v6, v7);
}

{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_116(*v1);
  return CCLogStream::logInfo(v4, "[dk] %s@%d:WiFiCC : setting 5GHz valid channels : [%d]\n,", "adjustBeaconListPerNewCountryCode", 21781, v6);
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:WiFiCC : Invalid 5GHz channel number %d\n", v5, v6, v7);
}

{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_116(*v1);
  return CCLogStream::logInfo(v4, "[dk] %s@%d:WiFiCC : setting 2GHz valid channels : [%d]\n,", "adjustBeaconListPerNewCountryCode", 21765, v6);
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:WiFiCC : Invalid 2GHz channel number %d\n", v5, v6, v7);
}

uint64_t AppleBCMWLANCore::setLMTPC(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_234();
  OUTLINED_FUNCTION_139();
  return CCLogStream::logInfo(v3, "[dk] %s@%d:Country code is %s\n", "setLMTPC", 54819, v5);
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_15_4();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:LMTPC is configured to %d\n", "setLMTPC", 54838, v5);
}

uint64_t AppleBCMWLANCore::postRoamCompletionStatus(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Roam status not populated yet, defer posting roam completion status\n", "postRoamCompletionStatus", 21891);
}

uint64_t AppleBCMWLANCore::buildRoamCompletionStatus(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Using simulated roam status substate\n", "buildRoamCompletionStatus", 21977);
}

uint64_t AppleBCMWLANCore::printRoamInfo(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_29_5(a1);
  v29 = (*(v2 + 1952))(v1);
  if (IO80211_io80211isSensitiveInfoAllowed())
  {
    OUTLINED_FUNCTION_57_0();
    v28 = *(v3 + 12280);
  }

  if (IO80211_io80211isSensitiveInfoAllowed())
  {
    OUTLINED_FUNCTION_57_0();
    v27 = *(v4 + 12281);
  }

  if (IO80211_io80211isSensitiveInfoAllowed())
  {
    OUTLINED_FUNCTION_57_0();
    v26 = *(v5 + 12282);
  }

  if (IO80211_io80211isSensitiveInfoAllowed())
  {
    OUTLINED_FUNCTION_57_0();
    v7 = *(v6 + 12283);
  }

  if (IO80211_io80211isSensitiveInfoAllowed())
  {
    OUTLINED_FUNCTION_57_0();
    v9 = *(v8 + 12284);
  }

  if (IO80211_io80211isSensitiveInfoAllowed())
  {
    OUTLINED_FUNCTION_57_0();
    v11 = *(v10 + 12285);
  }

  if (IO80211_io80211isSensitiveInfoAllowed())
  {
    OUTLINED_FUNCTION_57_0();
    v13 = *(v12 + 12286);
  }

  if (IO80211_io80211isSensitiveInfoAllowed())
  {
    OUTLINED_FUNCTION_57_0();
    v15 = *(v14 + 12287);
  }

  if (IO80211_io80211isSensitiveInfoAllowed())
  {
    OUTLINED_FUNCTION_57_0();
    v17 = *(v16 + 12288);
  }

  if (IO80211_io80211isSensitiveInfoAllowed())
  {
    OUTLINED_FUNCTION_57_0();
    v19 = *(v18 + 12289);
  }

  if (IO80211_io80211isSensitiveInfoAllowed())
  {
    OUTLINED_FUNCTION_57_0();
    v21 = *(v20 + 12290);
  }

  if (IO80211_io80211isSensitiveInfoAllowed())
  {
    OUTLINED_FUNCTION_57_0();
    v23 = *(v22 + 12291);
  }

  OUTLINED_FUNCTION_9_4();
  return CCLogStream::logInfo(v29, v24);
}

uint64_t AppleBCMWLANCore::printRoamInfo(uint64_t *a1, uint64_t a2, unsigned int a3)
{
  v5 = OUTLINED_FUNCTION_11_4(a1);
  (*(v6 + 1952))(v5);
  v7 = *(*(v3 + 72) + 600 * a3 + 12770);
  v8 = *(*(v3 + 72) + 600 * a3 + 12769);
  v9 = *(*(v3 + 72) + 600 * a3 + 12771);
  v10 = *(*(v3 + 72) + 600 * a3 + 12772);
  v11 = *(*(v3 + 72) + 600 * a3 + 12773);
  v12 = *(*(v3 + 72) + 600 * a3 + 12774);
  v21 = *(*(v3 + 72) + 600 * a3 + 12776);
  v22 = *(*(v3 + 72) + 600 * a3 + 12777);
  OUTLINED_FUNCTION_152();
  return CCLogStream::logInfo(v13, "[dk] %s@%d:NumRoamScanAttempts: %d NumFullBand: %d NumPartial:%d NumRoamAborts: %d NumRoamOperationTimeouts: %d NumRoamOperationFailed: %d PacketsLost AQM: %d PacketLost SubQ: %d \n", "printRoamInfo", 32745, v15, v16, v17, v18, v19, v20, v21, v22);
}

uint64_t AppleBCMWLANCore::dumpEventLogReportedStats(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logNotice(v3, "[dk] %s@%d:Fails to dumpEventLogReportedStats as WLC_E_TRACE is not set\n", "dumpEventLogReportedStats", 52937);
}

uint64_t AppleBCMWLANCore::collectDtimConfigFromFW(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Failed to collect DTIM Config from F/W", "collectDtimConfigFromFW", 55857);
}

uint64_t AppleBCMWLANCore::processAuthEvenData(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_9_5(a1);
  result = (*(v3 + 1952))(v2);
  if (result)
  {
    (*(*v1 + 1952))(v1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v5 = (*(*v1 + 1952))(v1);
      return CCLogStream::logAlert(v5, "[dk] %s@%d:safe_align_up failed\n", "processAuthEvenData", 56606);
    }
  }

  return result;
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logNotice(v3, "[dk] %s@%d: WLC_E_AUTH: PMKID has invalid length (%d)\n", v5, v6, v7);
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logNotice(v3, "[dk] %s@%d: WLC_E_AUTH: PMKID exists. length %lu\n", v5, v6, v7);
}

{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  (*(v3 + 1952))(v2);
  v4 = *(*v1 + 292);
  v5 = *(*v1 + 293);
  v6 = *(*v1 + 294);
  v7 = *(*v1 + 295);
  v8 = *(*v1 + 296);
  v9 = *(*v1 + 297);
  v26 = *(*v1 + 306);
  v27 = *(*v1 + 307);
  v24 = *(*v1 + 304);
  v25 = *(*v1 + 305);
  v22 = *(*v1 + 302);
  v23 = *(*v1 + 303);
  v20 = *(*v1 + 300);
  v21 = *(*v1 + 301);
  v18 = *(*v1 + 298);
  v19 = *(*v1 + 299);
  OUTLINED_FUNCTION_152();
  return CCLogStream::logNotice(v10, "[dk] %s@%d: %02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X\n", "processAuthEvenData", 56640, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27);
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logNotice(v3, "[dk] %s@%d: WLC_E_AUTH: PMK has invalid length (%d)\n", v5, v6, v7);
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logNotice(v3, "[dk] %s@%d: WLC_E_AUTH: PMK exists. length %lu\n", v5, v6, v7);
}

{
  v1 = OUTLINED_FUNCTION_5_6(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_134();
  v23 = v3[237];
  v24 = v3[238];
  v21 = v3[235];
  v22 = v3[236];
  v19 = v3[233];
  v20 = v3[234];
  v17 = v4;
  v18 = v3[232];
  v15 = v5;
  v16 = v6;
  OUTLINED_FUNCTION_152();
  return CCLogStream::logNotice(v7, "[dk] %s@%d: %02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X\n", "processAuthEvenData", 56622, v9, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24);
}

{
  v2 = OUTLINED_FUNCTION_9_5(a1);
  result = (*(v3 + 1952))(v2);
  if (result)
  {
    (*(*v1 + 1952))(v1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v5 = (*(*v1 + 1952))(v1);
      return CCLogStream::logAlert(v5, "[dk] %s@%d:UINT16_MAX overflow tagMemoryUsage\n", "processAuthEvenData", 56607);
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::retrieveExcessPMParams(uint64_t *a1)
{
  v3 = OUTLINED_FUNCTION_5_6(a1);
  (*(v4 + 1952))(v3);
  v5 = *v2;
  v6 = *(v1 + 50);
  v7 = *(v1 + 52);
  OUTLINED_FUNCTION_126();
  return CCLogStream::logAlert(v8, "[dk] %s@%d:PM ALERT: version[%u] length[%4u] reasons[%u]\n", "retrieveExcessPMParams", 49564, v10, v11, v12);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:PM ALERT: CONST_AWAKE_DUR_RECOVERY\n", "retrieveExcessPMParams", 49610);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:PM ALERT: CONST_AWAKE_DUR_ALERT\n", "retrieveExcessPMParams", 49605);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:PM ALERT: EPNO_THRESH_EXCEEDED\n", "retrieveExcessPMParams", 49600);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:PM ALERT: ROAM_THRESH_EXCEEDED\n", "retrieveExcessPMParams", 49595);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:PM ALERT: MPC_DUR_EXCEEDED\n", "retrieveExcessPMParams", 49590);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:PM ALERT: PM_DUR_EXCEEDED\n", "retrieveExcessPMParams", 49585);
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_70_0();
  OUTLINED_FUNCTION_92_0();
  return CCLogStream::logAlert(v3, "PMALERT_UCODE_DBG_SC: macctrl %u m_p2p_hps %u psm_brc %u ifsstat %u\n\t m_p2p_bss_dtim_prd[0] %u m_p2p_bss_dtim_prd[1] %u m_p2p_bss_dtim_prd[2] %u m_p2p_bss_dtim_prd[3] %u\n", v5, v4, v7, v8, v9, v10, v11, v12);
}

{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  v4 = (*(v3 + 1952))(v2);
  return CCLogStream::logAlert(v4, "\t psm_maccommand %u \n", *(v1 + 264));
}

{
  v3 = OUTLINED_FUNCTION_5_6(a1);
  (*(v4 + 1952))(v3);
  v5 = *v2;
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = v1[6];
  v11 = v1[7];
  v27 = v1[14];
  v28 = v1[15];
  v25 = v1[11];
  v26 = v1[13];
  v23 = v1[10];
  v24 = v1[12];
  v21 = v1[8];
  v22 = v1[9];
  OUTLINED_FUNCTION_65_0();
  return CCLogStream::logAlert(v12, "PMALERT_FIXED_SC: PM ALERT SC 0x%08x:\n\tPrev Stats Time: %u, Current Time: %u\n\tPrev PM Dur: %u Current PM Dur %u win_down_time %u\n\tHw-MACC: %u Sw-MACC: %u\n\tDrift: last=%u min=%u avg=%u max=%u ct=%u\n\tCalibration: CalDur: %u Prev CalDur: %u\n", v13, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28);
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_70_0();
  OUTLINED_FUNCTION_237();
  return CCLogStream::logInfoIf(v3, 0x20uLL, "[dk] %s@%d:PMALERT_UCODE_DBG_V2: macctrl %u m_p2p_hps %u psm_brc %u ifsstat %u\n\t m_p2p_bss_dtim_prd[0] %u m_p2p_bss_dtim_prd[1] %u m_p2p_bss_dtim_prd[2] %u m_p2p_bss_dtim_prd[3] %u\n", "retrieveExcessPMParams", 49952, v5, v6, v7, v8, v9, v10, v11, v12);
}

{
  v1 = OUTLINED_FUNCTION_5_6(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_236();
  return CCLogStream::logInfoIf(v3, 0x20uLL, "[dk] %s@%d:\t psmdebug[%d] %u", "retrieveExcessPMParams", 49955, v5, v6);
}

{
  v1 = OUTLINED_FUNCTION_5_6(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_236();
  return CCLogStream::logInfoIf(v3, 0x20uLL, "[dk] %s@%d:\t phydebug[%d] %u", "retrieveExcessPMParams", 49958, v5, v6);
}

{
  v3 = OUTLINED_FUNCTION_5_6(a1);
  v5 = (*(v4 + 1952))(v3);
  return CCLogStream::logInfoIf(v5, 0x20uLL, "[dk] %s@%d:\t M_P2P_PRE_TBTT[%d] %u", "retrieveExcessPMParams", 49966, v1, *(v2 + 2 * v1));
}

{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  (*(v3 + 1952))(v2);
  v4 = *(v1 + 264);
  v5 = *(v1 + 266);
  v6 = *(v1 + 268);
  v7 = *(v1 + 270);
  OUTLINED_FUNCTION_112();
  return CCLogStream::logInfoIf(v8, 0x20uLL, "[dk] %s@%d:\t xmtfifordy %u psm_maccommand %u txe_status1 %u AQMFifoReady %u\n", "retrieveExcessPMParams", 49968, v10, v11, v12, v13);
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_70_0();
  OUTLINED_FUNCTION_237();
  return CCLogStream::logAlertIf(v3, 0x20uLL, "[dk] %s@%d:PMALERT_EXT_UCODE_DBG: macctrl %u m_p2p_hps %u psm_brc %u ifsstat %u\n\t m_p2p_bss_dtim_prd[0] %u m_p2p_bss_dtim_prd[1] %u m_p2p_bss_dtim_prd[2] %u m_p2p_bss_dtim_prd[3] %u\n", "retrieveExcessPMParams", 49923, v5, v6, v7, v8, v9, v10, v11, v12);
}

{
  v1 = OUTLINED_FUNCTION_5_6(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_236();
  return CCLogStream::logAlertIf(v3, 0x20uLL, "[dk] %s@%d:\t psmdebug[%d] %u", "retrieveExcessPMParams", 49926, v5, v6);
}

{
  v1 = OUTLINED_FUNCTION_5_6(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_236();
  return CCLogStream::logAlertIf(v3, 0x20uLL, "[dk] %s@%d:\t phydebug[%d] %u", "retrieveExcessPMParams", 49929, v5, v6);
}

{
  v3 = OUTLINED_FUNCTION_5_6(a1);
  v5 = (*(v4 + 1952))(v3);
  return CCLogStream::logAlertIf(v5, 0x20uLL, "[dk] %s@%d:\t M_P2P_PRE_TBTT[%d] %u", "retrieveExcessPMParams", 49937, v1, *(v2 + 2 * v1));
}

{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  (*(v3 + 1952))(v2);
  v4 = v1[132];
  v5 = v1[133];
  v6 = v1[134];
  v7 = v1[135];
  OUTLINED_FUNCTION_112();
  return CCLogStream::logAlertIf(v8, 0x20uLL, "[dk] %s@%d:\t xmtfifordy %u psm_maccommand %u txe_status1 %u AQMFifoReady %u\n", "retrieveExcessPMParams", 49939, v10, v11, v12, v13);
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:PM ALERT: Incorrect PS Dbg TLV length %d remaining. Report issue. Bailing.\n", v5, v6, v7);
}

{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  v4 = (*(v3 + 1952))(v2);
  return CCLogStream::logAlertIf(v4, 0x20uLL, "[dk] %s@%d:PMALERT_UCODE_DBG: macctrl %u m_p2p_hps %u psm_brc %u ifsstat %u\n\t psmdebug[0] %u psmdebug[1] %u psmdebug[2] %u psmdebug[3] %u\n\t phydebug[0] %u phydebug[1] %u phydebug[2] %u phydebug[3] %u\n\t psm_maccommand %u txe_status1 %u AQMFifoReady %u\n", "retrieveExcessPMParams", 49893, *(v1 + 4), *(v1 + 8), *(v1 + 10), *(v1 + 14), *(v1 + 26), *(v1 + 30), *(v1 + 34), *(v1 + 38), *(v1 + 106), *(v1 + 110), *(v1 + 114), *(v1 + 118), *(v1 + 266), *(v1 + 268), *(v1 + 270));
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:PM ALERT: Incorrect Event Duration TLV length %d remaining. Report issue. Bailing.\n", v5, v6, v7);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Radio is awake possibly due to Access Point Issues such as setting TIM in all beacons\n", "retrieveExcessPMParams", 49866);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logInfo(v3, "[dk] %s@%d:\n", "retrieveExcessPMParams", 49872);
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:PM ALERT: Incorrect Event Duration TLV length %d remaining. Report issue. Bailing.\n", v5, v6, v7);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logInfo(v3, "[dk] %s@%d:\n", "retrieveExcessPMParams", 49826);
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:PM ALERT: Incorrect PM state TLV length %d remaining. Report issue. Bailing.\n", v5, v6, v7);
}

{
  v3 = OUTLINED_FUNCTION_5_6(a1);
  v5 = (*(v4 + 1952))(v3);
  v6 = (v2 + 8 * v1);
  v11 = pmReasonStr(v6[1]);
  v12 = *v6;
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logInfo(v5, "[dk] %s@%d:Reason 0x%x (%s) Timestmp %ums\n", v8, v9, v10, v11, v12);
}

{
  v3 = OUTLINED_FUNCTION_5_6(a1);
  (*(v4 + 1952))(v3);
  v5 = *v2;
  v6 = v1[1];
  v7 = v1[2];
  v8 = v1[3];
  v23 = v1[11];
  v24 = v1[13];
  v21 = v1[10];
  v22 = v1[12];
  v19 = v1[8];
  v20 = v1[9];
  v17 = v1[6];
  v18 = v1[7];
  v15 = v1[5];
  v16 = v1[4];
  OUTLINED_FUNCTION_112();
  return CCLogStream::logAlert(v9, "[dk] %s@%d:PMALERT_FIXED: PM ALERT 0x%08x:\n\tPrev Stats Time: %u, Current Time: %u\n\tPrev PM Dur: %u Prev MPC Dur: %u Current PM Dur %u Current MPC Dur %u\n\tHw-MACC: %u Sw-MACC: %u\n\tDrift: last=%u min=%u avg=%u max=%u ct=%u\n", "retrieveExcessPMParams", 49680, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logEmergency(v3, "[dk] %s@%d:PM ALERT: Overflow detected\n", "retrieveExcessPMParams", 49697);
}

{
  v1 = OUTLINED_FUNCTION_5_6(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_146();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:PM ALERT: Incorrect type field. %d Len %d\n", "retrieveExcessPMParams", 50033, v5, v6);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logInfo(v3, "[dk] %s@%d:Not enough space to accomodate remaining TLVs, Bail out\n", "retrieveExcessPMParams", 50052);
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:PM ALERT: Incorrect length %d remaining. Report issue. Bailing.\n", v5, v6, v7);
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_12_3();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:InCorrect PM Alert Len =%d\n", "retrieveExcessPMParams", 49627, v5);
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_12_3();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:PM ALERT: Incorrect data length in the Event %d\n", "retrieveExcessPMParams", 49621, v5);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:PM ALERT: UN-KNOWN \n", "retrieveExcessPMParams", 49615);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:PM ALERT: Incorrect data length in the Event\n", "retrieveExcessPMParams", 49557);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:PM ALERT: No data attached to Event\n", "retrieveExcessPMParams", 49544);
}

uint64_t AppleBCMWLANCore::handleLinkDown(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 112);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Unable to bring up AWDL: %s\n", v9, v10, v11);
}

BOOL AppleBCMWLANCore::handleCCAOnlyChanQualEvent(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_9_5(a1);
  result = 1;
  if ((*(v3 + 1952))(v2))
  {
    (*(*v1 + 1952))(v1);
    if (CCLogStream::shouldLog())
    {
      return 0;
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::handleCCAOnlyChanQualEvent(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Zero CCA busy duration\n", "handleCCAOnlyChanQualEvent", 24481);
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_12_3();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Invalid wle message,unknown message ID=0x%x\n", "handleCCAOnlyChanQualEvent", 24470, v5);
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_199();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Invalid wle message length=%u, too small to hold event length=%u\n", "handleCCAOnlyChanQualEvent", 24452, v5, v6);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Allocation failure\n", "handleCCAOnlyChanQualEvent", 24446);
}

uint64_t AppleBCMWLANCore::handleGetWmeParams(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 112);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Error: cannot get WME params: %s\n", v9, v10, v11);
}

uint64_t AppleBCMWLANCore::enableTxQueues(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logNoticeIf(v3, 0x10200uLL, "[dk] %s@%d: Enabling data queues\n", "enableTxQueues", 24995);
}

uint64_t AppleBCMWLANCore::disableTxQueues(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logNoticeIf(v3, 0x10200uLL, "[dk] %s@%d: Disabling data queues\n", "disableTxQueues", 25014);
}

uint64_t AppleBCMWLANCore::configureMonitorModeToFW(uint64_t *a1, uint64_t a2, int a3)
{
  v5 = OUTLINED_FUNCTION_11_4(a1);
  v7 = (*(v6 + 1952))(v5);
  return CCLogStream::logAlert(v7, "[dk] %s@%d:Configure Monitor Mode: enable=%d ivars->fMonitorEnabled=%d \n", "configureMonitorModeToFW", 25033, a3, *(*(v3 + 72) + 18297));
}

uint64_t AppleBCMWLANCore::configureMonitorModeToFW(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 112);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Error: Unable to enable monitor mode (WLC_SET_MONITOR): %s\n", v9, v10, v11);
}

uint64_t AppleBCMWLANCore::setCurEtheraddr(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_5_9();
  OUTLINED_FUNCTION_24_4();
  return CCLogStream::logAlert(v3, "[dk] %s@%d: Invalid MAC address %02X:%02X:%02X:%02X:%02X:%02X \n", "setCurEtheraddr", 25188, v5, v6, v7, v8, v9, v10);
}

{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 112);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: cur_etheraddr failed, error %s\n", v9, v10, v11);
}

{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 112);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: cur_etheraddr send iovar failed, error %s\n", v9, v10, v11);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Error: cannot set Mac address. MemAlloc Failed \n", "setCurEtheraddr", 25198);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d: Cannot set MAC address. GAS query in progress \n", "setCurEtheraddr", 25178);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d: Cannot set MAC address. Join manager busy \n", "setCurEtheraddr", 25173);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d: Cannot set MAC address. Already associated \n", "setCurEtheraddr", 25164);
}

uint64_t AppleBCMWLANCore::_setAllMulticastModeEnable(uint64_t *a1)
{
  v5 = OUTLINED_FUNCTION_11_9(a1);
  result = (*(v6 + 1952))(v5);
  if (result)
  {
    (*(*v3 + 1952))(v3);
    result = CCLogStream::shouldLog();
    if (result)
    {
      (*(*v3 + 1952))(v3);
      OUTLINED_FUNCTION_59_0();
      v9 = *(v8 + 112);
      v10 = OUTLINED_FUNCTION_136();
      v11(v10);
      OUTLINED_FUNCTION_6();
      result = CCLogStream::logCrit(v4, "[dk] %s@%d: setAllMulticast(false) failed, error %s\n", v12, v13, v14);
    }
  }

  *v1 = v2;
  return result;
}

{
  v5 = OUTLINED_FUNCTION_11_9(a1);
  result = (*(v6 + 1952))(v5);
  if (result)
  {
    (*(*v3 + 1952))(v3);
    result = CCLogStream::shouldLog();
    if (result)
    {
      (*(*v3 + 1952))(v3);
      OUTLINED_FUNCTION_59_0();
      v9 = *(v8 + 112);
      v10 = OUTLINED_FUNCTION_136();
      v11(v10);
      OUTLINED_FUNCTION_6();
      result = CCLogStream::logCrit(v4, "[dk] %s@%d: cleanFWMulticastList failed, error %s\n", v12, v13, v14);
    }
  }

  *v1 = v2;
  return result;
}

{
  v5 = OUTLINED_FUNCTION_11_9(a1);
  result = (*(v6 + 1952))(v5);
  if (result)
  {
    (*(*v3 + 1952))(v3);
    result = CCLogStream::shouldLog();
    if (result)
    {
      (*(*v3 + 1952))(v3);
      OUTLINED_FUNCTION_59_0();
      v9 = *(v8 + 112);
      v10 = OUTLINED_FUNCTION_136();
      v11(v10);
      OUTLINED_FUNCTION_6();
      result = CCLogStream::logCrit(v4, "[dk] %s@%d: setAllMulticast(true) failed, error %s\n", v12, v13, v14);
    }
  }

  *v1 = v2;
  return result;
}

uint64_t AppleBCMWLANCore::cleanFWMulticastList(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 112);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logCrit(v1, "[dk] %s@%d: ivars->mcast_list failed, error %s\n", v9, v10, v11);
}

uint64_t AppleBCMWLANCore::setAllMulticast(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 112);
  v6 = OUTLINED_FUNCTION_16_2();
  v8 = v7(v6);
  return CCLogStream::logCrit(v1, "[dk] %s@%d: %s() failed, error %s\n", "setAllMulticast", 25458, "allmulti", v8);
}

uint64_t AppleBCMWLANCore::setMulticastMode(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 112);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logCrit(v1, "[dk] %s@%d: ivars->mcast_list failed, error %s\n", v9, v10, v11);
}

uint64_t AppleBCMWLANCore::createNANMgmtDataInterface(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d: NAN mgmt+data interface already created\n", "createNANMgmtDataInterface", 25818);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d: Unable to create NAN mgmt+data interface \n", "createNANMgmtDataInterface", 25835);
}

uint64_t AppleBCMWLANCore::createNANDataInterface(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d: NAN Data Interface already created\n", "createNANDataInterface", 25897);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d: Unable to create NAN data interface \n", "createNANDataInterface", 25914);
}

uint64_t AppleBCMWLANCore::createProxInterface(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_10_5(a1);
  (*(v3 + 1952))(v2);
  v4 = OUTLINED_FUNCTION_12_1();
  ClassNameHelper = getClassNameHelper(v4);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:%s::%s() skipping createProxInterface\n", "createProxInterface", 25996, ClassNameHelper, "createProxInterface");
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d: already created\n", "createProxInterface", 26001);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d: Unable to create awdl interface \n", "createProxInterface", 26018);
}

uint64_t AppleBCMWLANCore::commandSleepForThreadSafe(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Sleep failed 0x%08x", v5, v6, v7);
}

uint64_t AppleBCMWLANCore::commandWakeupForThreadSafe(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  v4 = (*(v3 + 1952))(v2);
  v5 = current_thread();
  v6 = thread_tid(v5);
  return CCLogStream::logNoticeIf(v4, 0x200000uLL, "[dk] %s@%d: Signalling wakeup (%d) event from tid: %llx\n", "commandWakeupForThreadSafe", 26090, v1, v6);
}

uint64_t AppleBCMWLANCore::getDiagsAmpduStats(uint64_t *a1)
{
  v5 = OUTLINED_FUNCTION_11_9(a1);
  result = (*(v6 + 1952))(v5);
  if (result)
  {
    (*(*v3 + 1952))(v3);
    result = CCLogStream::shouldLog();
    if (result)
    {
      (*(*v3 + 1952))(v3);
      OUTLINED_FUNCTION_59_0();
      v9 = *(v8 + 112);
      v10 = OUTLINED_FUNCTION_136();
      v11(v10);
      OUTLINED_FUNCTION_6();
      result = CCLogStream::logEmergency(v4, "[dk] %s@%d:Failed to dump ampdu - %s\n", v12, v13, v14);
    }
  }

  *v1 = v2;
  return result;
}

{
  v5 = OUTLINED_FUNCTION_11_9(a1);
  result = (*(v6 + 1952))(v5);
  if (result)
  {
    (*(*v3 + 1952))(v3);
    result = CCLogStream::shouldLog();
    if (result)
    {
      (*(*v3 + 1952))(v3);
      OUTLINED_FUNCTION_59_0();
      v9 = *(v8 + 112);
      v10 = OUTLINED_FUNCTION_136();
      v11(v10);
      OUTLINED_FUNCTION_6();
      result = CCLogStream::logEmergency(v4, "[dk] %s@%d:Failed to dump ampdu - %s\n", v12, v13, v14);
    }
  }

  *v1 = v2;
  return result;
}

{
  v5 = OUTLINED_FUNCTION_11_9(a1);
  result = (*(v6 + 1952))(v5);
  if (result)
  {
    (*(*v3 + 1952))(v3);
    result = CCLogStream::shouldLog();
    if (result)
    {
      (*(*v3 + 1952))(v3);
      OUTLINED_FUNCTION_59_0();
      v9 = *(v8 + 112);
      v10 = OUTLINED_FUNCTION_136();
      v11(v10);
      OUTLINED_FUNCTION_6();
      result = CCLogStream::logEmergency(v4, "[dk] %s@%d:Failed to dumpEventLogReportedStats (6) - %s\n", v12, v13, v14);
    }
  }

  *v1 = v2;
  return result;
}

{
  v5 = OUTLINED_FUNCTION_11_9(a1);
  result = (*(v6 + 1952))(v5);
  if (result)
  {
    (*(*v3 + 1952))(v3);
    result = CCLogStream::shouldLog();
    if (result)
    {
      (*(*v3 + 1952))(v3);
      OUTLINED_FUNCTION_59_0();
      v9 = *(v8 + 112);
      v10 = OUTLINED_FUNCTION_136();
      v11(v10);
      OUTLINED_FUNCTION_6();
      result = CCLogStream::logEmergency(v4, "[dk] %s@%d:Failed to dumpEventLogReportedStats (7) - %s\n", v12, v13, v14);
    }
  }

  *v1 = v2;
  return result;
}

{
  v5 = OUTLINED_FUNCTION_11_9(a1);
  result = (*(v6 + 1952))(v5);
  if (result)
  {
    (*(*v3 + 1952))(v3);
    result = CCLogStream::shouldLog();
    if (result)
    {
      (*(*v3 + 1952))(v3);
      OUTLINED_FUNCTION_59_0();
      v9 = *(v8 + 112);
      v10 = OUTLINED_FUNCTION_136();
      v11(v10);
      OUTLINED_FUNCTION_6();
      result = CCLogStream::logEmergency(v4, "[dk] %s@%d:Failed to getECounterOnDemand(EVENT_LOG_TAG_BTCX_STATS) - %s\n", v12, v13, v14);
    }
  }

  *v1 = v2;
  return result;
}

{
  v5 = OUTLINED_FUNCTION_11_9(a1);
  result = (*(v6 + 1952))(v5);
  if (result)
  {
    (*(*v3 + 1952))(v3);
    result = CCLogStream::shouldLog();
    if (result)
    {
      (*(*v3 + 1952))(v3);
      OUTLINED_FUNCTION_59_0();
      v9 = *(v8 + 112);
      v10 = OUTLINED_FUNCTION_136();
      v11(v10);
      OUTLINED_FUNCTION_6();
      result = CCLogStream::logEmergency(v4, "[dk] %s@%d:Failed to getECounterOnDemand(EVENT_LOG_TAG_AMPDU_DUMP) - %s\n", v12, v13, v14);
    }
  }

  *v1 = v2;
  return result;
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logEmergency(v3, "[dk] %s@%d:ampduReq.isAllocationFailure()\n", "getDiagsAmpduStats", 26107);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logEmergency(v3, "[dk] %s@%d:ampduResp.isAllocationFailure()\n", "getDiagsAmpduStats", 26106);
}

uint64_t AppleBCMWLANCore::getECounterOnDemand(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 112);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Error: Unable to set ecounters: %s\n", v9, v10, v11);
}

uint64_t AppleBCMWLANCore::getDiags(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logEmergency(v3, "[dk] %s@%d:Unable to getDiags, rejecting commands\n", "getDiags", 26153);
}

{
  v4 = OUTLINED_FUNCTION_11_9(a1);
  result = (*(v5 + 1952))(v4);
  if (result)
  {
    (*(*v3 + 1952))(v3);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v7 = (*(*v3 + 1952))(v3);
      v8 = current_thread();
      thread_tid(v8);
      OUTLINED_FUNCTION_6();
      result = CCLogStream::logEmergency(v7, "[dk] %s@%d:commandSleepForThreadSafe for getDiags failed, dropping request for tid %llx\n", v9, v10, v11);
    }
  }

  *v1 = v2;
  return result;
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logInfo(v3, "[dk] %s@%d: Failed to get AssociatedSleep/UnAssociatedSleep Duration Values \n", "getDiags", 26199);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logInfo(v3, "[dk] %s@%d:Failed to get power stats during sleep for LPSC \n", "getDiags", 26208);
}

{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 112);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logInfo(v1, "[dk] %s@%d:Failed to getChipIfCounters - %s\n", v9, v10, v11);
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logEmergency(v3, "[dk] %s@%d:getDiagsAmpduStats failed %x\n", v5, v6, v7);
}

{
  v4 = OUTLINED_FUNCTION_0_25(a1);
  result = (*(v5 + 1952))(v4);
  if (result)
  {
    (*(*v2 + 1952))(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v7 = (*(*v2 + 1952))(v2);
      result = CCLogStream::logEmergency(v7, "[dk] %s@%d:memuseString.isAllocationFailure()\n", "getDiags", 26171);
    }
  }

  *v1 = v3;
  return result;
}

{
  v4 = OUTLINED_FUNCTION_0_25(a1);
  result = (*(v5 + 1952))(v4);
  if (result)
  {
    (*(*v2 + 1952))(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v7 = (*(*v2 + 1952))(v2);
      result = CCLogStream::logEmergency(v7, "[dk] %s@%d:_buffer.isAllocationFailure()\n", "getDiags", 26170);
    }
  }

  *v1 = v3;
  return result;
}

{
  v4 = OUTLINED_FUNCTION_0_25(a1);
  result = (*(v5 + 1952))(v4);
  if (result)
  {
    (*(*v2 + 1952))(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v7 = (*(*v2 + 1952))(v2);
      result = CCLogStream::logEmergency(v7, "[dk] %s@%d:buf.isAllocationFailure()\n", "getDiags", 26169);
    }
  }

  *v1 = v3;
  return result;
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logEmergency(v3, "[dk] %s@%d:Unable to getDiags, due to boot-arg wlan.getDiags=0,, returning kIOReturnSuccess\n", "getDiags", 26158);
}

uint64_t AppleBCMWLANCore::getPowerStats(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Failed to collect OPS/EBT Status\n", "getPowerStats", 47536);
}

{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 112);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logCrit(v1, "[dk] %s@%d: mpc_dur failed, error %s\n", v9, v10, v11);
}

{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 112);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logCrit(v1, "[dk] %s@%d: pm_dur failed, error %s\n", v9, v10, v11);
}

uint64_t AppleBCMWLANCore::handleCardSpecific(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_9_4();
  return CCLogStream::logNotice(v3, "[dk] %s@%d:-> %lx \n", v5, v6, v7);
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logNotice(v3, "[dk] %s@%d:-> %lx \n", v5, v6, v7);
}

{
  v3 = OUTLINED_FUNCTION_5_6(a1);
  v5 = (*(v4 + 1952))(v3);
  if ((*v2 & 0xFFFFFFFE) == 0x106)
  {
    v6 = "IOVAR";
  }

  else
  {
    v6 = "IOCTL";
  }

  return CCLogStream::logNoticeIf(v5, 4uLL, "[dk] %s@%d:wl: error %x (cmd=%d %s)\n", "handleCardSpecific", 26526, v1, *v2, v6);
}

uint64_t AppleBCMWLANCore::_wlc_ioctl(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  v4 = (*(v3 + 1952))(v2);
  return CCLogStream::logAlert(v4, "[dk] %s@%d:wl: error %x wl command %d requires argument, insufficient space, len %u < %zu\n", "_wlc_ioctl", 26605, -536870206, 0, v1, 4uLL);
}

{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  v4 = (*(v3 + 1952))(v2);
  return CCLogStream::logAlert(v4, "[dk] %s@%d:wl: error %x wl command %d requires argument\n", "_wlc_ioctl", 26591, -536870206, v1);
}

uint64_t AppleBCMWLANCore::getRSSI(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  v4 = (*(v3 + 1952))(v2);
  return CCLogStream::logAlert(v4, "[dk] %s@%d: ERROR: Invalid radio count[%u], retVal[0x%08x]\n", "getRSSI", 27436, 0, v1);
}

uint64_t AppleBCMWLANCore::getDBG_GUARD_TIME_PARAMS(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 112);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logCrit(v1, "[dk] %s@%d: forced_pm failed, error %s\n", v9, v10, v11);
}

uint64_t AppleBCMWLANCore::getLEAKY_AP_STATS_MODE(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 112);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logCrit(v1, "[dk] %s@%d: leaky_ap_stats failed, error %s\n", v9, v10, v11);
}

uint64_t AppleBCMWLANCore::getBEACON_INFO(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_26_1();
  return CCLogStream::logInfo(v3, "[dk] %s@%d:WiFiRoam : is HE Beacon ? [%d]\n", "getBEACON_INFO", 27755, v5);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:beacon_info iovar failed.\n", "getBEACON_INFO", 27759);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d: buffer allocation failed for beacon_info get iovar, returning\n", "getBEACON_INFO", 27711);
}

uint64_t AppleBCMWLANCore::getBEACON_INFO(uint64_t *a1, _DWORD *a2, int a3)
{
  v6 = OUTLINED_FUNCTION_5_0(a1);
  result = (*(v7 + 1952))(v6);
  if (result)
  {
    (*(*a1 + 1952))(a1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v9 = (*(*a1 + 1952))(a1);
      result = CCLogStream::logAlert(v9, "[dk] %s@%d: beaconFrmLength[%d] too large > %lu\n", "getBEACON_INFO", 27743, a3, 2048);
    }
  }

  *a2 = 0;
  return result;
}

uint64_t AppleBCMWLANCore::getHW_ADDR(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  v4 = (*(v3 + 1952))(v2);
  return CCLogStream::logAlert(v4, "[dk] %s@%d: WFMacRandomisation :  Populating MAC Address for host. MAC Address: %02x:%02x:%02x:%02x:%02x:%02x\n", "getHW_ADDR", 27791, *(*v1 + 5652), *(*v1 + 5653), *(*v1 + 5654), *(*v1 + 5655), *(*v1 + 5656), *(*v1 + 5657));
}

uint64_t AppleBCMWLANCore::getTXPOWER(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 112);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logCrit(v1, "[dk] %s@%d: qtxpower failed, error %s\n", v9, v10, v11);
}

uint64_t AppleBCMWLANCore::appending6GOnlyChannelsWithCurrentCC(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 112);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Failed to retrieve country code:%s \n", v9, v10, v11);
}

{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 112);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logCrit(v1, "[dk] %s@%d: chanspecs failed, error %s\n", v9, v10, v11);
}

uint64_t AppleBCMWLANCore::getCurrentSupportedChannels(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 112);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Failed to retrieve country code:%s \n", v9, v10, v11);
}

{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 112);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logCrit(v1, "[dk] %s@%d: chanspecs failed, error %s\n", v9, v10, v11);
}

uint64_t AppleBCMWLANCore::parsePerSliceContainer(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Buffer not aligned\n", "parsePerSliceContainer", 28927);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Error parsing parseEventLogRecordWmeRxMpduPerSlice\n", "parsePerSliceContainer", 29105);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Error parsing parseEventLogRecordWmeTxMpduPerSlice\n", "parsePerSliceContainer", 29098);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Error parsing parseEventLogRecordLostMpduPerSlice\n", "parsePerSliceContainer", 29091);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Error parsing parseEventLogRecordRC1CoexStatsPerSlice\n", "parsePerSliceContainer", 29081);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Error parsing parseEventLogRecordRC2CoexStatsPerSlice\n", "parsePerSliceContainer", 29075);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Error parsing reportTDM\n", "parsePerSliceContainer", 29062);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Error parsing reportTVPM\n", "parsePerSliceContainer", 29048);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Error parsing reportSlicesScanPwrStats6E\n", "parsePerSliceContainer", 29038);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Error parsing reportScanPwrStats6E\n", "parsePerSliceContainer", 29040);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Error parsing reportSlicesScanPwrStats\n", "parsePerSliceContainer", 29024);
}

{
  v4 = OUTLINED_FUNCTION_24_6(a1);
  result = (*(v5 + 1952))(v4);
  if (result)
  {
    (*(*v3 + 1952))(v3);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v7 = (*(*v3 + 1952))(v3);
      result = CCLogStream::logAlert(v7, "[dk] %s@%d:Error parsing reportScanPwrStatsAtLinkUp\n", "parsePerSliceContainer", 29013);
    }
  }

  *v1 = v2;
  return result;
}

{
  v4 = OUTLINED_FUNCTION_24_6(a1);
  result = (*(v5 + 1952))(v4);
  if (result)
  {
    (*(*v3 + 1952))(v3);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v7 = (*(*v3 + 1952))(v3);
      result = CCLogStream::logAlert(v7, "[dk] %s@%d:Error parsing reportSlicesScanPwrStatsAtLinkup\n", "parsePerSliceContainer", 29015);
    }
  }

  *v1 = v2;
  return result;
}

{
  v4 = OUTLINED_FUNCTION_24_6(a1);
  result = (*(v5 + 1952))(v4);
  if (result)
  {
    (*(*v3 + 1952))(v3);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v7 = (*(*v3 + 1952))(v3);
      result = CCLogStream::logAlert(v7, "[dk] %s@%d:Error parsing reportSlicesScanPwrStats\n", "parsePerSliceContainer", 29020);
    }
  }

  *v1 = v2;
  return result;
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Error parsing reportScanPwrStats\n", "parsePerSliceContainer", 29028);
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Unhandled stat tag: %d\n", v5, v6, v7);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Error parsing parseV30CntContainer\n", "parsePerSliceContainer", 28992);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Error parsing parseEventLogRecordLTECoexStatsPerSlice\n", "parsePerSliceContainer", 28978);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Error parsing parseEventLogRecordBTCoexStatsPerSlice\n", "parsePerSliceContainer", 28971);
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_9_4();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Incorrect len for sliceIndex %d\n", v5, v6, v7);
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logInfoIf(v3, 0x2000000000uLL, "[dk] %s@%d:WL_IFSTATS_XTLV_SLICE_INDEX %d\n", v5, v6, v7);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Invalid slice index\n", "parsePerSliceContainer", 28964);
}

{
  v2 = OUTLINED_FUNCTION_49_0(a1);
  result = (*(v3 + 1952))(v2);
  if (result)
  {
    (*(*v1 + 1952))(v1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v5 = (*(*v1 + 1952))(v1);
      return CCLogStream::logAlert(v5, "[dk] %s@%d:safe_align_up failed\n", "parsePerSliceContainer", 29123);
    }
  }

  return result;
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logInfoIf(v3, 0x2000000000uLL, "[dk] %s@%d:parsePerSliceContainer: index %d\n", v5, v6, v7);
}

{
  v2 = OUTLINED_FUNCTION_49_0(a1);
  result = (*(v3 + 1952))(v2);
  if (result)
  {
    (*(*v1 + 1952))(v1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v5 = (*(*v1 + 1952))(v1);
      return CCLogStream::logAlert(v5, "[dk] %s@%d:UINT16_MAX overflow nextAlignedIndex\n", "parsePerSliceContainer", 29124);
    }
  }

  return result;
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Bad read at index %d\n", v5, v6, v7);
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:parsePerSliceContainer: Invalid tag id %d\n", v5, v6, v7);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Bad xtlvContainerPayload\n", "parsePerSliceContainer", 28942);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Bad payloadStart\n", "parsePerSliceContainer", 28938);
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_9_4();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Bad read at index %d\n", v5, v6, v7);
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_9_4();
  return CCLogStream::logEmergency(v3, "[dk] %s@%d:Failed to parse Event Log Record xtlv %x\n", v5, v6, v7);
}

uint64_t AppleBCMWLANCore::parseIFStatsContainer(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logInfoIf(v3, 0x2000000000uLL, "[dk] %s@%d:parseIFStatsContainer\n", "parseIFStatsContainer", 32060);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Buffer not aligned\n", "parseIFStatsContainer", 32064);
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logEmergency(v3, "[dk] %s@%d:Failed to parse Event Log Record xtlv %x\n", v5, v6, v7);
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_184();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:xtlv_payload %hu is not equal to sizeof(wl_if_infra_stats_he_t) %lu\n", "parseIFStatsContainer", 32159, v5, v6);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Error convertInfraSpecificStatisticsToApple80211Counters\n", "parseIFStatsContainer", 32161);
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Invalid interface index %d\n", v5, v6, v7);
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_184();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:xtlv_payload %hu is not equal to sizeof(wl_if_mgt_stats_t) %lu\n", "parseIFStatsContainer", 32143, v5, v6);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Error convertInfraControlManagementStatisticsToApple80211Counters\n", "parseIFStatsContainer", 32146);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Error parsing convertInfraControlManagementStatisticsToApple80211Counters\n", "parseIFStatsContainer", 32150);
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Invalid interface index %d\n", v5, v6, v7);
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_184();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:xtlv_payload %hu is not equal to sizeof(wl_if_infra_enh_stats_v2_t) %lu\n", "parseIFStatsContainer", 32119, v5, v6);
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_184();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:xtlv_payload %hu is not equal to sizeof(wl_if_infra_stats_t) %lu\n", "parseIFStatsContainer", 32117, v5, v6);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Error convertInfraSpecificStatisticsToApple80211Counters\n", "parseIFStatsContainer", 32129);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Error updating updateInfraSpecificStatistics\n", "parseIFStatsContainer", 32133);
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_12_3();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:unsupported infra status version %d", "parseIFStatsContainer", 32121, v5);
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Invalid interface index %d\n", v5, v6, v7);
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_184();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:xtlv_payload %hu is not equal to sizeof(wl_if_stats_t) %lu\n", "parseIFStatsContainer", 32100, v5, v6);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Error convertInfraGenericStatisticsToApple80211Counters\n", "parseIFStatsContainer", 32103);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Error updating updateInfraGenericStatistics\n", "parseIFStatsContainer", 32107);
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Invalid interface index %d\n", v5, v6, v7);
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logInfoIf(v3, 0x2000000000uLL, "[dk] %s@%d:WL_IFSTATS_XTLV_IF_INDEX %d\n", v5, v6, v7);
}

{
  v2 = OUTLINED_FUNCTION_9_5(a1);
  result = (*(v3 + 1952))(v2);
  if (result)
  {
    (*(*v1 + 1952))(v1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v5 = (*(*v1 + 1952))(v1);
      return CCLogStream::logAlert(v5, "[dk] %s@%d:safe_align_up failed\n", "parseIFStatsContainer", 32189);
    }
  }

  return result;
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logInfoIf(v3, 0x2000000000uLL, "[dk] %s@%d:parseIFStatsContainer: index %d\n", v5, v6, v7);
}

{
  v2 = OUTLINED_FUNCTION_9_5(a1);
  result = (*(v3 + 1952))(v2);
  if (result)
  {
    (*(*v1 + 1952))(v1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v5 = (*(*v1 + 1952))(v1);
      return CCLogStream::logAlert(v5, "[dk] %s@%d:UINT16_MAX overflow nextAlignedIndex\n", "parseIFStatsContainer", 32190);
    }
  }

  return result;
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Invalid interface index %d\n", v5, v6, v7);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Bad read ifPtr\n", "parseIFStatsContainer", 32089);
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Invalid tag id %u\n", v5, v6, v7);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Bad xtlvContainerPayload\n", "parseIFStatsContainer", 32079);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Bad payloadStart\n", "parseIFStatsContainer", 32075);
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_9_4();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Bad read at index %d\n", v5, v6, v7);
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_9_4();
  return CCLogStream::logEmergency(v3, "[dk] %s@%d:Failed to parse Event Log Record xtlv %x\n", v5, v6, v7);
}

uint64_t AppleBCMWLANCore::parseAMPDUStatsGlobalContainer(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Buffer not aligned\n", "parseAMPDUStatsGlobalContainer", 29937);
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_9_4();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:unexpected version %u\n", v5, v6, v7);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Error updating updateSliceRxAmpduStats\n", "parseAMPDUStatsGlobalContainer", 30151);
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_9_4();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:unexpected size %u\n", v5, v6, v7);
}

{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  v4 = (*(v3 + 1952))(v2);
  return CCLogStream::logAlert(v4, "[dk] %s@%d:Bad memory length xtlvLength %d aggregationDens.aggr_dist %lu\n", "parseAMPDUStatsGlobalContainer", 30090, v1, 268);
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:containerLength too long %u\n", v5, v6, v7);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Slice types do not match\n", "parseAMPDUStatsGlobalContainer", 30101);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Failed to parseEventLogRecordAMPDU\n", "parseAMPDUStatsGlobalContainer", 30122);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Bad ampduRateCntReport\n", "parseAMPDUStatsGlobalContainer", 29997);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Slice types do not match\n", "parseAMPDUStatsGlobalContainer", 30023);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Failed to parseEventLogRecordAMPDU\n", "parseAMPDUStatsGlobalContainer", 30045);
}

{
  v3 = OUTLINED_FUNCTION_34_3(a1);
  v5 = v4 & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000;
  result = (*(v6 + 1952))(v3);
  if (result)
  {
    (*(*v2 + 1952))(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v8 = (*(*v2 + 1952))(v2);
      result = CCLogStream::logAlert(v8, "[dk] %s@%d:safe_align_up failed\n", "parseAMPDUStatsGlobalContainer", 30165);
    }
  }

  *v1 = v5;
  return result;
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logInfoIf(v3, 0x2000000000uLL, "[dk] %s@%d:parseAMPDUStatsGlobalContainer: index %d\n", v5, v6, v7);
}

{
  v3 = OUTLINED_FUNCTION_34_3(a1);
  v5 = v4 & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000;
  result = (*(v6 + 1952))(v3);
  if (result)
  {
    (*(*v2 + 1952))(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v8 = (*(*v2 + 1952))(v2);
      result = CCLogStream::logAlert(v8, "[dk] %s@%d:UINT16_MAX overflow nextAlignedIndex\n", "parseAMPDUStatsGlobalContainer", 30166);
    }
  }

  *v1 = v5;
  return result;
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Unknown AMPDU stat type %d\n", v5, v6, v7);
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_9_4();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Bad read at index %d\n", v5, v6, v7);
}

uint64_t AppleBCMWLANCore::parseChanStatsGlobalContainer(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logInfoIf(v3, 0x2000000000uLL, "[dk] %s@%d:parseChanStatsGlobalContainer\n", "parseChanStatsGlobalContainer", 29449);
}

{
  v4 = OUTLINED_FUNCTION_21_3(a1);
  result = (*(v5 + 1952))(v4);
  if (result)
  {
    (*(*v2 + 1952))(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v7 = (*(*v2 + 1952))(v2);
      result = CCLogStream::logAlert(v7, "[dk] %s@%d:Buffer not aligned\n", "parseChanStatsGlobalContainer", 29451);
    }
  }

  *v1 = v3;
  return result;
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Unknown channel stat type %d\n", v5, v6, v7);
}

{
  v4 = OUTLINED_FUNCTION_21_3(a1);
  result = (*(v5 + 1952))(v4);
  if (result)
  {
    (*(*v2 + 1952))(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v7 = (*(*v2 + 1952))(v2);
      result = CCLogStream::logAlert(v7, "[dk] %s@%d:Unexpected Version\n", "parseChanStatsGlobalContainer", 29470);
    }
  }

  *v1 = v3;
  return result;
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_9_4();
  return CCLogStream::logInfoIf(v3, 0x2000000000uLL, "[dk] %s@%d:parseChanStatsGlobalContainer: index %d\n", v5, v6, v7);
}

{
  v4 = OUTLINED_FUNCTION_21_3(a1);
  result = (*(v5 + 1952))(v4);
  if (result)
  {
    (*(*v2 + 1952))(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v7 = (*(*v2 + 1952))(v2);
      result = CCLogStream::logAlert(v7, "[dk] %s@%d:Bad chanCntrHdr\n", "parseChanStatsGlobalContainer", 29469);
    }
  }

  *v1 = v3;
  return result;
}

uint64_t AppleBCMWLANCore::parsePHYEcounter(uint64_t *a1)
{
  v4 = OUTLINED_FUNCTION_0_25(a1);
  result = (*(v5 + 1952))(v4);
  if (result)
  {
    (*(*v2 + 1952))(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v7 = (*(*v2 + 1952))(v2);
      result = CCLogStream::logAlert(v7, "[dk] %s@%d:Buffer not aligned\n", "parsePHYEcounter", 31218);
    }
  }

  *v1 = v3;
  return result;
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_12_3();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Unknown phy ecounter version %d\n", "parsePHYEcounter", 31243, v5);
}

{
  v4 = OUTLINED_FUNCTION_2_18(a1);
  result = (*(v5 + 1952))(v4);
  if (result)
  {
    (*(*v2 + 1952))(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      (*(*v2 + 1952))(v2);
      v7 = OUTLINED_FUNCTION_86();
      OSData::getLength(v7);
      OUTLINED_FUNCTION_6();
      result = CCLogStream::logAlert(v2, "[dk] %s@%d:Payload invalid or too small %u\n", v8, v9, v10);
    }
  }

  *v1 = v3;
  return result;
}

uint64_t AppleBCMWLANCore::parsePHYCalEcounter(uint64_t *a1)
{
  v4 = OUTLINED_FUNCTION_0_25(a1);
  result = (*(v5 + 1952))(v4);
  if (result)
  {
    (*(*v2 + 1952))(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v7 = (*(*v2 + 1952))(v2);
      result = CCLogStream::logAlert(v7, "[dk] %s@%d:Buffer not aligned\n", "parsePHYCalEcounter", 31717);
    }
  }

  *v1 = v3;
  return result;
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_12_3();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Unknown phycal ecounter version %d\n", "parsePHYCalEcounter", 31733, v5);
}

{
  v4 = OUTLINED_FUNCTION_2_18(a1);
  result = (*(v5 + 1952))(v4);
  if (result)
  {
    (*(*v2 + 1952))(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      (*(*v2 + 1952))(v2);
      v7 = OUTLINED_FUNCTION_86();
      OSData::getLength(v7);
      OUTLINED_FUNCTION_6();
      result = CCLogStream::logAlert(v2, "[dk] %s@%d:Payload too small %u\n", v8, v9, v10);
    }
  }

  *v1 = v3;
  return result;
}

uint64_t AppleBCMWLANCore::parseDTIMEcounter(uint64_t *a1)
{
  v4 = OUTLINED_FUNCTION_0_25(a1);
  result = (*(v5 + 1952))(v4);
  if (result)
  {
    (*(*v2 + 1952))(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v7 = (*(*v2 + 1952))(v2);
      result = CCLogStream::logAlert(v7, "[dk] %s@%d:DTIMEcounter: Unexpected Version\n", "parseDTIMEcounter", 28819);
    }
  }

  *v1 = v3;
  return result;
}

{
  v4 = OUTLINED_FUNCTION_0_25(a1);
  result = (*(v5 + 1952))(v4);
  if (result)
  {
    (*(*v2 + 1952))(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v7 = (*(*v2 + 1952))(v2);
      result = CCLogStream::logAlert(v7, "[dk] %s@%d:DTIMEcounter: Unexpected Version\n", "parseDTIMEcounter", 28825);
    }
  }

  *v1 = v3;
  return result;
}

{
  v4 = OUTLINED_FUNCTION_0_25(a1);
  result = (*(v5 + 1952))(v4);
  if (result)
  {
    (*(*v2 + 1952))(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v7 = (*(*v2 + 1952))(v2);
      result = CCLogStream::logAlert(v7, "[dk] %s@%d:DTIMEcounter: Unexpected length\n", "parseDTIMEcounter", 28826);
    }
  }

  *v1 = v3;
  return result;
}

uint64_t AppleBCMWLANCore::parseV30CntContainer(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Buffer not aligned\n", "parseV30CntContainer", 29198);
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logInfo(v3, "[dk] %s@%d:tag id %d Not implemented \n", v5, v6, v7);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Error parsing reportUcodeCntPerSlice\n", "parseV30CntContainer", 29377);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Error updating SliceUcodeStatistics\n", "parseV30CntContainer", 29382);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logInfo(v3, "[dk] %s@%d:parseV30CntContainer TLV on slice 2 ignored\n", "parseV30CntContainer", 29371);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Error parsing reportUcodeCntPerSlice\n", "parseV30CntContainer", 29357);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Error updating SliceUcodeStatistics\n", "parseV30CntContainer", 29362);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:parseV30CntContainer TLV on slice 2\n", "parseV30CntContainer", 29351);
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logInfo(v3, "[dk] %s@%d:tag id %d Not implemented \n", v5, v6, v7);
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logEmergency(v3, "[dk] %s@%d:Failed to parse Event Log Record xtlv %x\n", v5, v6, v7);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Error updateSliceUcodeRxErr\n", "parseV30CntContainer", 29320);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Error updateSliceUcodeRxErr\n", "parseV30CntContainer", 29309);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Error parsing reportOmiCntPerSlice\n", "parseV30CntContainer", 29296);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Error parsing reportHeCntPerSlice\n", "parseV30CntContainer", 29281);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Error parsing reportUcodeCntPerSlice\n", "parseV30CntContainer", 29263);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Error updating SliceUcodeStatistics\n", "parseV30CntContainer", 29267);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Error parsing reportUcodeCntPerSlice\n", "parseV30CntContainer", 29243);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Error updating SliceUcodeStatistics\n", "parseV30CntContainer", 29247);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Error parsing reportWlCntPerSlice\n", "parseV30CntContainer", 29222);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Error parsing updateExtraRxCounters\n", "parseV30CntContainer", 29226);
}

{
  v3 = OUTLINED_FUNCTION_34_3(a1);
  v5 = v4 & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000;
  result = (*(v6 + 1952))(v3);
  if (result)
  {
    (*(*v2 + 1952))(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v8 = (*(*v2 + 1952))(v2);
      result = CCLogStream::logAlert(v8, "[dk] %s@%d:safe_align_up failed\n", "parseV30CntContainer", 29411);
    }
  }

  *v1 = v5;
  return result;
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logInfoIf(v3, 0x2000000000uLL, "[dk] %s@%d:parseV30CntContainer: index %d\n", v5, v6, v7);
}

{
  v3 = OUTLINED_FUNCTION_34_3(a1);
  v5 = v4 & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000;
  result = (*(v6 + 1952))(v3);
  if (result)
  {
    (*(*v2 + 1952))(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v8 = (*(*v2 + 1952))(v2);
      result = CCLogStream::logAlert(v8, "[dk] %s@%d:UINT16_MAX overflow nextAlignedIndex\n", "parseV30CntContainer", 29412);
    }
  }

  *v1 = v5;
  return result;
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:parseV30CntContainer: Invalid tag id %d\n", v5, v6, v7);
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_184();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Bad read at index %d size %d\n", "parseV30CntContainer", 29201, v5, v6);
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_9_4();
  return CCLogStream::logEmergency(v3, "[dk] %s@%d:Failed to parse Event Log Record xtlv %x\n", v5, v6, v7);
}

uint64_t AppleBCMWLANCore::reportSlicesScanPwrStatsAtLinkup(uint64_t *a1)
{
  v4 = OUTLINED_FUNCTION_2_18(a1);
  result = (*(v5 + 1952))(v4);
  if (result)
  {
    (*(*v2 + 1952))(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      (*(*v2 + 1952))(v2);
      OUTLINED_FUNCTION_66();
      result = CCLogStream::logEmergency(v7, "[dk] %s@%d:Out of range slice index %d\n", v8, v9, v10);
    }
  }

  *v1 = v3;
  return result;
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Failed to allocate scan_stats_data buf", "reportSlicesScanPwrStatsAtLinkup", 42527);
}

uint64_t AppleBCMWLANCore::reportSlicesScanPwrStatsAtLinkup()
{
  OUTLINED_FUNCTION_4();
  v4 = OUTLINED_FUNCTION_5_0(v3);
  if (!(*(v5 + 1952))(v4) || ((*(*v1 + 1952))(v1), (CCLogStream::shouldLogConsole() & 1) == 0))
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      OUTLINED_FUNCTION_71();
      OUTLINED_FUNCTION_201();
      OUTLINED_FUNCTION_225(&_mh_execute_header, &_os_log_default, v6, "%c [dk] %s@%d: Insufficient buf sized scan_stats_data %ld to hold payload", v7, v8, v9, v10, v14, v15, v16, v17, v18);
    }
  }

  OUTLINED_FUNCTION_69_0();
  result = (*(v11 + 1952))(v1);
  if (result)
  {
    (*(*v1 + 1952))(v1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v13 = (*(*v1 + 1952))(v1);
      result = CCLogStream::logAlert(v13, "[dk] %s@%d:Insufficient buf sized scan_stats_data %ld to hold payload", "reportSlicesScanPwrStatsAtLinkup", 42531, 148);
    }
  }

  *v0 = v2;
  return result;
}

{
  OUTLINED_FUNCTION_4();
  v4 = OUTLINED_FUNCTION_5_0(v3);
  if (!(*(v5 + 1952))(v4) || ((*(*v1 + 1952))(v1), (CCLogStream::shouldLogConsole() & 1) == 0))
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      OUTLINED_FUNCTION_37_1();
      OUTLINED_FUNCTION_15_0(&_mh_execute_header, &_os_log_default, v6, "%c [dk] %s@%d: Received NULL pointer\n", v7, v8, v9, v10, v14, v15, v16);
    }
  }

  OUTLINED_FUNCTION_69_0();
  result = (*(v11 + 1952))(v1);
  if (result)
  {
    (*(*v1 + 1952))(v1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v13 = (*(*v1 + 1952))(v1);
      result = CCLogStream::logAlert(v13, "[dk] %s@%d:Received NULL pointer\n", "reportSlicesScanPwrStatsAtLinkup", 42530);
    }
  }

  *v0 = v2;
  return result;
}

uint64_t AppleBCMWLANCore::reportSlicesScanPwrStats(uint64_t *a1)
{
  v4 = OUTLINED_FUNCTION_2_18(a1);
  result = (*(v5 + 1952))(v4);
  if (result)
  {
    (*(*v2 + 1952))(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      (*(*v2 + 1952))(v2);
      OUTLINED_FUNCTION_66();
      result = CCLogStream::logEmergency(v7, "[dk] %s@%d:Out of range slice index %d\n", v8, v9, v10);
    }
  }

  *v1 = v3;
  return result;
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Failed to allocate scan_stats_data buf", "reportSlicesScanPwrStats", 42610);
}

uint64_t AppleBCMWLANCore::reportSlicesScanPwrStats()
{
  OUTLINED_FUNCTION_4();
  v4 = OUTLINED_FUNCTION_5_0(v3);
  if (!(*(v5 + 1952))(v4) || ((*(*v1 + 1952))(v1), (CCLogStream::shouldLogConsole() & 1) == 0))
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      OUTLINED_FUNCTION_71();
      OUTLINED_FUNCTION_201();
      OUTLINED_FUNCTION_225(&_mh_execute_header, &_os_log_default, v6, "%c [dk] %s@%d: Insufficient buf sized scan_stats_data %ld to hold payload", v7, v8, v9, v10, v14, v15, v16, v17, v18);
    }
  }

  OUTLINED_FUNCTION_69_0();
  result = (*(v11 + 1952))(v1);
  if (result)
  {
    (*(*v1 + 1952))(v1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v13 = (*(*v1 + 1952))(v1);
      result = CCLogStream::logAlert(v13, "[dk] %s@%d:Insufficient buf sized scan_stats_data %ld to hold payload", "reportSlicesScanPwrStats", 42614, 148);
    }
  }

  *v0 = v2;
  return result;
}

{
  OUTLINED_FUNCTION_4();
  v4 = OUTLINED_FUNCTION_5_0(v3);
  if (!(*(v5 + 1952))(v4) || ((*(*v1 + 1952))(v1), (CCLogStream::shouldLogConsole() & 1) == 0))
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      OUTLINED_FUNCTION_37_1();
      OUTLINED_FUNCTION_15_0(&_mh_execute_header, &_os_log_default, v6, "%c [dk] %s@%d: Received NULL pointer\n", v7, v8, v9, v10, v14, v15, v16);
    }
  }

  OUTLINED_FUNCTION_69_0();
  result = (*(v11 + 1952))(v1);
  if (result)
  {
    (*(*v1 + 1952))(v1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v13 = (*(*v1 + 1952))(v1);
      result = CCLogStream::logAlert(v13, "[dk] %s@%d:Received NULL pointer\n", "reportSlicesScanPwrStats", 42613);
    }
  }

  *v0 = v2;
  return result;
}

uint64_t AppleBCMWLANCore::reportSlicesScanPwrStats6E(uint64_t *a1)
{
  v4 = OUTLINED_FUNCTION_2_18(a1);
  result = (*(v5 + 1952))(v4);
  if (result)
  {
    (*(*v2 + 1952))(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      (*(*v2 + 1952))(v2);
      v7 = OUTLINED_FUNCTION_86();
      Length = OSData::getLength(v7);
      result = CCLogStream::logEmergency(v2, "[dk] %s@%d:sizeof(wl_pwr_scan_6E_stats_t) %ld cnt->getLength() %d\n", "reportSlicesScanPwrStats6E", 42751, 24, Length);
    }
  }

  *v1 = v3;
  return result;
}

{
  v4 = OUTLINED_FUNCTION_2_18(a1);
  result = (*(v5 + 1952))(v4);
  if (result)
  {
    (*(*v2 + 1952))(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      (*(*v2 + 1952))(v2);
      OUTLINED_FUNCTION_66();
      result = CCLogStream::logEmergency(v7, "[dk] %s@%d:Out of range slice index %d\n", v8, v9, v10);
    }
  }

  *v1 = v3;
  return result;
}

uint64_t AppleBCMWLANCore::parsePerPeerLeafStats(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Unknown peer stat type %d\n", v5, v6, v7);
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logInfoIf(v3, 0x2000000000uLL, "[dk] %s@%d:parsePeerStatsGlobalContainer: index %d\n", v5, v6, v7);
}

{
  v4 = OUTLINED_FUNCTION_21_3(a1);
  result = (*(v5 + 1952))(v4);
  if (result)
  {
    (*(*v2 + 1952))(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v7 = (*(*v2 + 1952))(v2);
      result = CCLogStream::logAlert(v7, "[dk] %s@%d:Bad payloadStart\n", "parsePerPeerLeafStats", 29729);
    }
  }

  *v1 = v3;
  return result;
}

{
  v4 = OUTLINED_FUNCTION_0_25(a1);
  result = (*(v5 + 1952))(v4);
  if (result)
  {
    (*(*v2 + 1952))(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v7 = (*(*v2 + 1952))(v2);
      result = CCLogStream::logAlert(v7, "[dk] %s@%d:Bad peerStatsHdr\n", "parsePerPeerLeafStats", 29712);
    }
  }

  *v1 = v3;
  return result;
}

uint64_t AppleBCMWLANCore::parseSoftAPClientLeafStats(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Unknown peer stat type %d\n", v5, v6, v7);
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logInfoIf(v3, 0x2000000000uLL, "[dk] %s@%d:parsePeerStatsGlobalContainer: index %d\n", v5, v6, v7);
}

{
  v4 = OUTLINED_FUNCTION_21_3(a1);
  result = (*(v5 + 1952))(v4);
  if (result)
  {
    (*(*v2 + 1952))(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v7 = (*(*v2 + 1952))(v2);
      result = CCLogStream::logAlert(v7, "[dk] %s@%d:Bad payloadStart\n", "parseSoftAPClientLeafStats", 29791);
    }
  }

  *v1 = v3;
  return result;
}

{
  v4 = OUTLINED_FUNCTION_0_25(a1);
  result = (*(v5 + 1952))(v4);
  if (result)
  {
    (*(*v2 + 1952))(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v7 = (*(*v2 + 1952))(v2);
      result = CCLogStream::logAlert(v7, "[dk] %s@%d:Bad peerStatsHdr\n", "parseSoftAPClientLeafStats", 29774);
    }
  }

  *v1 = v3;
  return result;
}

uint64_t AppleBCMWLANCore::parsePeerStatsGlobalContainer(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logInfoIf(v3, 0x2000000000uLL, "[dk] %s@%d:parsePeerStatsGlobalContainer\n", "parsePeerStatsGlobalContainer", 29840);
}

{
  v4 = OUTLINED_FUNCTION_21_3(a1);
  result = (*(v5 + 1952))(v4);
  if (result)
  {
    (*(*v2 + 1952))(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v7 = (*(*v2 + 1952))(v2);
      result = CCLogStream::logAlert(v7, "[dk] %s@%d:Buffer not aligned\n", "parsePeerStatsGlobalContainer", 29842);
    }
  }

  *v1 = v3;
  return result;
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Unknown peer stat type %d\n", v5, v6, v7);
}

{
  v4 = OUTLINED_FUNCTION_25_3(a1);
  result = (*(v5 + 1952))(v4);
  if (result)
  {
    (*(*v3 + 1952))(v3);
    result = CCLogStream::shouldLog();
    if (result)
    {
      (*(*v3 + 1952))(v3);
      OUTLINED_FUNCTION_168();
      result = CCLogStream::logEmergency(v7, "[dk] %s@%d:Failed to parse Event Log Record xtlv %x\n", "parsePeerStatsGlobalContainer", 29887, v8);
    }
  }

  *v1 = v2;
  return result;
}

{
  v2 = OUTLINED_FUNCTION_9_5(a1);
  result = (*(v3 + 1952))(v2);
  if (result)
  {
    (*(*v1 + 1952))(v1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v5 = (*(*v1 + 1952))(v1);
      return CCLogStream::logAlert(v5, "[dk] %s@%d:safe_align_up failed\n", "parsePeerStatsGlobalContainer", 29893);
    }
  }

  return result;
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logInfoIf(v3, 0x2000000000uLL, "[dk] %s@%d:parsePeerStatsGlobalContainer: index %d\n", v5, v6, v7);
}

{
  v2 = OUTLINED_FUNCTION_9_5(a1);
  result = (*(v3 + 1952))(v2);
  if (result)
  {
    (*(*v1 + 1952))(v1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v5 = (*(*v1 + 1952))(v1);
      return CCLogStream::logAlert(v5, "[dk] %s@%d:UINT16_MAX overflow nextAlignedIndex\n", "parsePeerStatsGlobalContainer", 29894);
    }
  }

  return result;
}

{
  v4 = OUTLINED_FUNCTION_21_3(a1);
  result = (*(v5 + 1952))(v4);
  if (result)
  {
    (*(*v2 + 1952))(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v7 = (*(*v2 + 1952))(v2);
      result = CCLogStream::logAlert(v7, "[dk] %s@%d:Bad peerStatsHdr\n", "parsePeerStatsGlobalContainer", 29869);
    }
  }

  *v1 = v3;
  return result;
}

{
  v4 = OUTLINED_FUNCTION_21_3(a1);
  result = (*(v5 + 1952))(v4);
  if (result)
  {
    (*(*v2 + 1952))(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v7 = (*(*v2 + 1952))(v2);
      result = CCLogStream::logAlert(v7, "[dk] %s@%d:Bad xtlvContainerPayload\n", "parsePeerStatsGlobalContainer", 29859);
    }
  }

  *v1 = v3;
  return result;
}

{
  v4 = OUTLINED_FUNCTION_21_3(a1);
  result = (*(v5 + 1952))(v4);
  if (result)
  {
    (*(*v2 + 1952))(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v7 = (*(*v2 + 1952))(v2);
      result = CCLogStream::logAlert(v7, "[dk] %s@%d:Bad payloadStart\n", "parsePeerStatsGlobalContainer", 29855);
    }
  }

  *v1 = v3;
  return result;
}

uint64_t AppleBCMWLANCore::convertInfraGenericStatisticsToApple80211Counters(uint64_t *a1)
{
  v4 = OUTLINED_FUNCTION_0_25(a1);
  result = (*(v5 + 1952))(v4);
  if (result)
  {
    (*(*v2 + 1952))(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v7 = (*(*v2 + 1952))(v2);
      result = CCLogStream::logEmergency(v7, "[dk] %s@%d:ivars->fApStaInterface->setInterfaceChipCounters failed\n", "convertInfraGenericStatisticsToApple80211Counters", 30312);
    }
  }

  *v1 = v3;
  return result;
}

{
  v4 = OUTLINED_FUNCTION_0_25(a1);
  result = (*(v5 + 1952))(v4);
  if (result)
  {
    (*(*v2 + 1952))(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v7 = (*(*v2 + 1952))(v2);
      result = CCLogStream::logEmergency(v7, "[dk] %s@%d:ivars->fApStaInterface->setInterfaceMIBdot11 failed\n", "convertInfraGenericStatisticsToApple80211Counters", 30314);
    }
  }

  *v1 = v3;
  return result;
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:kAPPLE80211InterfaceIdSoftAP soft AP does not exist\n", "convertInfraGenericStatisticsToApple80211Counters", 30318);
}

{
  v4 = OUTLINED_FUNCTION_0_25(a1);
  result = (*(v5 + 1952))(v4);
  if (result)
  {
    (*(*v2 + 1952))(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v7 = (*(*v2 + 1952))(v2);
      result = CCLogStream::logEmergency(v7, "[dk] %s@%d:fP2PNANDataInterface->setInterfaceChipCounters failed\n", "convertInfraGenericStatisticsToApple80211Counters", 30297);
    }
  }

  *v1 = v3;
  return result;
}

{
  v4 = OUTLINED_FUNCTION_0_25(a1);
  result = (*(v5 + 1952))(v4);
  if (result)
  {
    (*(*v2 + 1952))(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v7 = (*(*v2 + 1952))(v2);
      result = CCLogStream::logEmergency(v7, "[dk] %s@%d:fP2PNANDataInterface->setInterfaceMIBdot11 failed\n", "convertInfraGenericStatisticsToApple80211Counters", 30299);
    }
  }

  *v1 = v3;
  return result;
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:kAPPLE80211InterfaceIdNANData nan data interface does not exist\n", "convertInfraGenericStatisticsToApple80211Counters", 30303);
}

{
  v4 = OUTLINED_FUNCTION_0_25(a1);
  result = (*(v5 + 1952))(v4);
  if (result)
  {
    (*(*v2 + 1952))(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v7 = (*(*v2 + 1952))(v2);
      result = CCLogStream::logEmergency(v7, "[dk] %s@%d:fP2PNANMgmtDataInterface->setInterfaceChipCounters failed\n", "convertInfraGenericStatisticsToApple80211Counters", 30283);
    }
  }

  *v1 = v3;
  return result;
}

{
  v4 = OUTLINED_FUNCTION_0_25(a1);
  result = (*(v5 + 1952))(v4);
  if (result)
  {
    (*(*v2 + 1952))(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v7 = (*(*v2 + 1952))(v2);
      result = CCLogStream::logEmergency(v7, "[dk] %s@%d:fP2PNANMgmtDataInterface->setInterfaceMIBdot11 failed\n", "convertInfraGenericStatisticsToApple80211Counters", 30285);
    }
  }

  *v1 = v3;
  return result;
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:kAPPLE80211InterfaceIdNAN nan interface does not exist\n", "convertInfraGenericStatisticsToApple80211Counters", 30289);
}

{
  v4 = OUTLINED_FUNCTION_0_25(a1);
  result = (*(v5 + 1952))(v4);
  if (result)
  {
    (*(*v2 + 1952))(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v7 = (*(*v2 + 1952))(v2);
      result = CCLogStream::logEmergency(v7, "[dk] %s@%d:fProximityInterface->setInterfaceChipCounters failed\n", "convertInfraGenericStatisticsToApple80211Counters", 30268);
    }
  }

  *v1 = v3;
  return result;
}

{
  v4 = OUTLINED_FUNCTION_0_25(a1);
  result = (*(v5 + 1952))(v4);
  if (result)
  {
    (*(*v2 + 1952))(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v7 = (*(*v2 + 1952))(v2);
      result = CCLogStream::logEmergency(v7, "[dk] %s@%d:fProximityInterface->setInterfaceMIBdot11 failed\n", "convertInfraGenericStatisticsToApple80211Counters", 30270);
    }
  }

  *v1 = v3;
  return result;
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:kAPPLE80211InterfaceIdAWDL awdl interface does not exist\n", "convertInfraGenericStatisticsToApple80211Counters", 30274);
}

{
  v4 = OUTLINED_FUNCTION_0_25(a1);
  result = (*(v5 + 1952))(v4);
  if (result)
  {
    (*(*v2 + 1952))(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v7 = (*(*v2 + 1952))(v2);
      result = CCLogStream::logEmergency(v7, "[dk] %s@%d:ivars->fInfraSkywalkInterface->setInterfaceChipCounters failed\n", "convertInfraGenericStatisticsToApple80211Counters", 30256);
    }
  }

  *v1 = v3;
  return result;
}

{
  v4 = OUTLINED_FUNCTION_0_25(a1);
  result = (*(v5 + 1952))(v4);
  if (result)
  {
    (*(*v2 + 1952))(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v7 = (*(*v2 + 1952))(v2);
      result = CCLogStream::logEmergency(v7, "[dk] %s@%d:ivars->fInfraSkywalkInterface->setInterfaceMIBdot11 failed\n", "convertInfraGenericStatisticsToApple80211Counters", 30258);
    }
  }

  *v1 = v3;
  return result;
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:kAPPLE80211InterfaceIdSTA infra interface is not exist\n", "convertInfraGenericStatisticsToApple80211Counters", 30260);
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Unhandled interfaceIndex %d\n", v5, v6, v7);
}

{
  v4 = OUTLINED_FUNCTION_0_25(a1);
  result = (*(v5 + 1952))(v4);
  if (result)
  {
    (*(*v2 + 1952))(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v7 = (*(*v2 + 1952))(v2);
      result = CCLogStream::logEmergency(v7, "[dk] %s@%d:Failed to allocate alignedCounters\n", "convertInfraGenericStatisticsToApple80211Counters", 30224);
    }
  }

  *v1 = v3;
  return result;
}

{
  v4 = OUTLINED_FUNCTION_0_25(a1);
  result = (*(v5 + 1952))(v4);
  if (result)
  {
    (*(*v2 + 1952))(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v7 = (*(*v2 + 1952))(v2);
      result = CCLogStream::logEmergency(v7, "[dk] %s@%d:Failed to allocate tx err buffer\n", "convertInfraGenericStatisticsToApple80211Counters", 30221);
    }
  }

  *v1 = v3;
  return result;
}

{
  v2 = OUTLINED_FUNCTION_35_1(a1);
  result = (*(v3 + 1952))(v2);
  if (result)
  {
    (*(*v1 + 1952))(v1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v5 = (*(*v1 + 1952))(v1);
      return CCLogStream::logEmergency(v5, "[dk] %s@%d:Failed to allocate mib buffer\n", "convertInfraGenericStatisticsToApple80211Counters", 30218);
    }
  }

  return result;
}

{
  v2 = OUTLINED_FUNCTION_35_1(a1);
  result = (*(v3 + 1952))(v2);
  if (result)
  {
    (*(*v1 + 1952))(v1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v5 = (*(*v1 + 1952))(v1);
      return CCLogStream::logEmergency(v5, "[dk] %s@%d:Failed to allocate tx buffer\n", "convertInfraGenericStatisticsToApple80211Counters", 30215);
    }
  }

  return result;
}

{
  v2 = OUTLINED_FUNCTION_35_1(a1);
  result = (*(v3 + 1952))(v2);
  if (result)
  {
    (*(*v1 + 1952))(v1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v5 = (*(*v1 + 1952))(v1);
      return CCLogStream::logEmergency(v5, "[dk] %s@%d:Failed to allocate rx buffer\n", "convertInfraGenericStatisticsToApple80211Counters", 30212);
    }
  }

  return result;
}

void AppleBCMWLANCore::convertInfraSpecificStatisticsToApple80211Counters(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_16_5(a1);
  if ((*(v3 + 1952))(v2))
  {
    (*(*v1 + 1952))(v1);
    if (CCLogStream::shouldLog())
    {
      v4 = (*(*v1 + 1952))(v1);
      CCLogStream::logEmergency(v4, "[dk] %s@%d:ivars->fInfraSkywalkInterface->setFrameStats failed\n", "convertInfraSpecificStatisticsToApple80211Counters", 30380);
    }
  }

  OUTLINED_FUNCTION_2();
}

uint64_t AppleBCMWLANCore::convertInfraSpecificStatisticsToApple80211Counters(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Infra interface is not existing %d\n", "convertInfraSpecificStatisticsToApple80211Counters", 30382, 30382);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logEmergency(v3, "[dk] %s@%d:Failed to allocate buffer\n", "convertInfraSpecificStatisticsToApple80211Counters", 30363);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Failed to create aligned infraSpecificStats data\n", "convertInfraSpecificStatisticsToApple80211Counters", 30356);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logCrit(v3, "[dk] %s@%d:NO INTER %s %d\n", "convertInfraSpecificStatisticsToApple80211Counters", 30337, "IOReturn AppleBCMWLANCore::convertInfraSpecificStatisticsToApple80211Counters(OSData *, apple80211_interface_id_t)", 30337);
}

void AppleBCMWLANCore::convertInfraSpecificHeStatisticsToApple80211Counters(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_16_5(a1);
  if ((*(v3 + 1952))(v2))
  {
    (*(*v1 + 1952))(v1);
    if (CCLogStream::shouldLog())
    {
      v4 = (*(*v1 + 1952))(v1);
      CCLogStream::logEmergency(v4, "[dk] %s@%d:ivars->fInfraSkywalkInterface->setFrameStats failed\n", "convertInfraSpecificHeStatisticsToApple80211Counters", 30423);
    }
  }

  OUTLINED_FUNCTION_2();
}

{
  v2 = OUTLINED_FUNCTION_16_5(a1);
  if ((*(v3 + 1952))(v2))
  {
    (*(*v1 + 1952))(v1);
    if (CCLogStream::shouldLog())
    {
      v4 = (*(*v1 + 1952))(v1);
      CCLogStream::logEmergency(v4, "[dk] %s@%d:Failed to allocate alignedCounters\n", "convertInfraSpecificHeStatisticsToApple80211Counters", 30406);
    }
  }

  OUTLINED_FUNCTION_2();
}

{
  v3 = OUTLINED_FUNCTION_16_5(a1);
  if ((*(v4 + 1952))(v3))
  {
    (*(*v2 + 1952))(v2);
    if (CCLogStream::shouldLog())
    {
      v5 = (*(*v2 + 1952))(v2);
      CCLogStream::logEmergency(v5, "[dk] %s@%d:Failed to allocate buffer\n", "convertInfraSpecificHeStatisticsToApple80211Counters", 30405);
    }
  }

  AppleBCMWLANUtil::AutoreleasedAlignedOSData::~AutoreleasedAlignedOSData(v1);
}

uint64_t AppleBCMWLANCore::convertInfraSpecificHeStatisticsToApple80211Counters(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Infra interface is not existing %d\n", "convertInfraSpecificHeStatisticsToApple80211Counters", 30425, 30425);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logCrit(v3, "[dk] %s@%d:NO INTER %s %d\n", "convertInfraSpecificHeStatisticsToApple80211Counters", 30394, "IOReturn AppleBCMWLANCore::convertInfraSpecificHeStatisticsToApple80211Counters(OSData *, apple80211_interface_id_t)", 30394);
}

void AppleBCMWLANCore::convertInfraControlManagementStatisticsToApple80211Counters(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_16_5(a1);
  if ((*(v3 + 1952))(v2))
  {
    (*(*v1 + 1952))(v1);
    if (CCLogStream::shouldLog())
    {
      v4 = (*(*v1 + 1952))(v1);
      CCLogStream::logEmergency(v4, "[dk] %s@%d:ivars->fApStaInterface->setFrameStats failed\n", "convertInfraControlManagementStatisticsToApple80211Counters", 30514);
    }
  }

  OUTLINED_FUNCTION_2();
}

{
  v2 = OUTLINED_FUNCTION_16_5(a1);
  if ((*(v3 + 1952))(v2))
  {
    (*(*v1 + 1952))(v1);
    if (CCLogStream::shouldLog())
    {
      v4 = (*(*v1 + 1952))(v1);
      CCLogStream::logEmergency(v4, "[dk] %s@%d:ivars->fP2PNANDataInterface->setFrameStats failed\n", "convertInfraControlManagementStatisticsToApple80211Counters", 30508);
    }
  }

  OUTLINED_FUNCTION_2();
}

{
  v2 = OUTLINED_FUNCTION_16_5(a1);
  if ((*(v3 + 1952))(v2))
  {
    (*(*v1 + 1952))(v1);
    if (CCLogStream::shouldLog())
    {
      v4 = (*(*v1 + 1952))(v1);
      CCLogStream::logEmergency(v4, "[dk] %s@%d:ivars->fP2PNANMgmtDataInterface->setFrameStats failed\n", "convertInfraControlManagementStatisticsToApple80211Counters", 30503);
    }
  }

  OUTLINED_FUNCTION_2();
}

{
  v2 = OUTLINED_FUNCTION_16_5(a1);
  if ((*(v3 + 1952))(v2))
  {
    (*(*v1 + 1952))(v1);
    if (CCLogStream::shouldLog())
    {
      v4 = (*(*v1 + 1952))(v1);
      CCLogStream::logEmergency(v4, "[dk] %s@%d:ivars->fProximityInterface->setFrameStats failed\n", "convertInfraControlManagementStatisticsToApple80211Counters", 30497);
    }
  }

  OUTLINED_FUNCTION_2();
}

{
  v2 = OUTLINED_FUNCTION_16_5(a1);
  if ((*(v3 + 1952))(v2))
  {
    (*(*v1 + 1952))(v1);
    if (CCLogStream::shouldLog())
    {
      v4 = (*(*v1 + 1952))(v1);
      CCLogStream::logEmergency(v4, "[dk] %s@%d:ivars->fInfraSkywalkInterface->setFrameStats failed\n", "convertInfraControlManagementStatisticsToApple80211Counters", 30488);
    }
  }

  OUTLINED_FUNCTION_2();
}

{
  v4 = OUTLINED_FUNCTION_11_9(a1);
  if ((*(v5 + 1952))(v4))
  {
    (*(*v3 + 1952))(v3);
    if (CCLogStream::shouldLog())
    {
      v6 = (*(*v3 + 1952))(v3);
      CCLogStream::logEmergency(v6, "[dk] %s@%d:Failed to allocate buffer\n", "convertInfraControlManagementStatisticsToApple80211Counters", 30450);
    }
  }

  *v2 = -536870212;
  AppleBCMWLANUtil::AutoreleasedAlignedOSData::~AutoreleasedAlignedOSData(v1);
}

uint64_t AppleBCMWLANCore::convertInfraControlManagementStatisticsToApple80211Counters(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:kAPPLE80211InterfaceIdSTA %d Infra interface is not exist\n", "convertInfraControlManagementStatisticsToApple80211Counters", 30491, 30491);
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Unhandled interfaceIndex %d\n", v5, v6, v7);
}

{
  OUTLINED_FUNCTION_7_13(a1);
  if ((*(v3 + 1952))())
  {
    (*(*v2 + 1952))(v2);
    if (CCLogStream::shouldLog())
    {
      v5 = (*(*v2 + 1952))(v2);
      CCLogStream::logEmergency(v5, "[dk] %s@%d:Failed to allocate alignedCounters\n", "convertInfraControlManagementStatisticsToApple80211Counters", 30447);
    }
  }

  OUTLINED_FUNCTION_275();
  return v1 & 1;
}

uint64_t AppleBCMWLANCore::parsePHYEcounterV1(uint64_t *a1)
{
  v4 = OUTLINED_FUNCTION_0_25(a1);
  result = (*(v5 + 1952))(v4);
  if (result)
  {
    (*(*v2 + 1952))(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v7 = (*(*v2 + 1952))(v2);
      result = CCLogStream::logAlert(v7, "[dk] %s@%d:Buffer not aligned\n", "parsePHYEcounterV1", 30582);
    }
  }

  *v1 = v3;
  return result;
}

{
  v4 = OUTLINED_FUNCTION_0_25(a1);
  result = (*(v5 + 1952))(v4);
  if (result)
  {
    (*(*v2 + 1952))(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v7 = (*(*v2 + 1952))(v2);
      result = CCLogStream::logAlert(v7, "[dk] %s@%d:Unexpected Version\n", "parsePHYEcounterV1", 30586);
    }
  }

  *v1 = v3;
  return result;
}

{
  v4 = OUTLINED_FUNCTION_2_18(a1);
  result = (*(v5 + 1952))(v4);
  if (result)
  {
    (*(*v2 + 1952))(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      (*(*v2 + 1952))(v2);
      v7 = OUTLINED_FUNCTION_86();
      OSData::getLength(v7);
      OUTLINED_FUNCTION_6();
      result = CCLogStream::logAlert(v2, "[dk] %s@%d:Payload invalid or too small %u\n", v8, v9, v10);
    }
  }

  *v1 = v3;
  return result;
}

uint64_t AppleBCMWLANCore::parsePHYEcounterV2(uint64_t *a1)
{
  v4 = OUTLINED_FUNCTION_0_25(a1);
  result = (*(v5 + 1952))(v4);
  if (result)
  {
    (*(*v2 + 1952))(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v7 = (*(*v2 + 1952))(v2);
      result = CCLogStream::logAlert(v7, "[dk] %s@%d:Buffer not aligned\n", "parsePHYEcounterV2", 30620);
    }
  }

  *v1 = v3;
  return result;
}

{
  v4 = OUTLINED_FUNCTION_0_25(a1);
  result = (*(v5 + 1952))(v4);
  if (result)
  {
    (*(*v2 + 1952))(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v7 = (*(*v2 + 1952))(v2);
      result = CCLogStream::logAlert(v7, "[dk] %s@%d:Unexpected Version\n", "parsePHYEcounterV2", 30624);
    }
  }

  *v1 = v3;
  return result;
}

{
  v4 = OUTLINED_FUNCTION_2_18(a1);
  result = (*(v5 + 1952))(v4);
  if (result)
  {
    (*(*v2 + 1952))(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      (*(*v2 + 1952))(v2);
      v7 = OUTLINED_FUNCTION_86();
      OSData::getLength(v7);
      OUTLINED_FUNCTION_6();
      result = CCLogStream::logAlert(v2, "[dk] %s@%d:Payload invalid or too small %u\n", v8, v9, v10);
    }
  }

  *v1 = v3;
  return result;
}

uint64_t AppleBCMWLANCore::parsePHYEcounterV3(uint64_t *a1)
{
  v4 = OUTLINED_FUNCTION_0_25(a1);
  result = (*(v5 + 1952))(v4);
  if (result)
  {
    (*(*v2 + 1952))(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v7 = (*(*v2 + 1952))(v2);
      result = CCLogStream::logAlert(v7, "[dk] %s@%d:Buffer not aligned\n", "parsePHYEcounterV3", 30699);
    }
  }

  *v1 = v3;
  return result;
}

{
  v4 = OUTLINED_FUNCTION_0_25(a1);
  result = (*(v5 + 1952))(v4);
  if (result)
  {
    (*(*v2 + 1952))(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v7 = (*(*v2 + 1952))(v2);
      result = CCLogStream::logAlert(v7, "[dk] %s@%d:Unexpected Version\n", "parsePHYEcounterV3", 30703);
    }
  }

  *v1 = v3;
  return result;
}

{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  (*(v3 + 1952))(v2);
  v4 = *(v1 + 16);
  v5 = *(v1 + 17);
  v6 = *(v1 + 18);
  v7 = *(v1 + 29);
  v8 = *(v1 + 36);
  v9 = *(v1 + 26);
  v10 = *(v1 + 42);
  v22 = *(v1 + 56);
  v23 = *(v1 + 60);
  v20 = *(v1 + 48);
  v21 = *(v1 + 52);
  OUTLINED_FUNCTION_25_1();
  return CCLogStream::logAlert(v11, "[dk] %s@%d:gbdBphySleepCnt=%u gbdOfdmSleepCnt=%u homeChan=0x%x scca_txstall_precondition=%u, crsminPwrApplyCnt=%u edThreshold=%d preemptStatus2=0x%04x totalGlitch=%u bphyGlitch=%u badplcp=%d bphyBadplcp=%u\n", "parsePHYEcounterV3", 30725, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23);
}

{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  v4 = (*(v3 + 1952))(v2);
  return CCLogStream::logAlert(v4, "[dk] %s@%d:ccaDurMS=%d ccaEdDuration=%u crsminPwr0=%d noiseLevelInst0=%d crsminPwr1=%d noiseLevelInst1=%d", "parsePHYEcounterV3", 30730, *(v1 + 64), *(v1 + 68), *(v1 + 72), *(v1 + 73), *(v1 + 74), *(v1 + 75));
}

{
  v4 = OUTLINED_FUNCTION_2_18(a1);
  result = (*(v5 + 1952))(v4);
  if (result)
  {
    (*(*v2 + 1952))(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      (*(*v2 + 1952))(v2);
      v7 = OUTLINED_FUNCTION_86();
      OSData::getLength(v7);
      OUTLINED_FUNCTION_6();
      result = CCLogStream::logAlert(v2, "[dk] %s@%d:Payload invalid or too small %u\n", v8, v9, v10);
    }
  }

  *v1 = v3;
  return result;
}

uint64_t AppleBCMWLANCore::parsePHYEcounterV4(uint64_t *a1)
{
  v4 = OUTLINED_FUNCTION_0_25(a1);
  result = (*(v5 + 1952))(v4);
  if (result)
  {
    (*(*v2 + 1952))(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v7 = (*(*v2 + 1952))(v2);
      result = CCLogStream::logAlert(v7, "[dk] %s@%d:Buffer not aligned\n", "parsePHYEcounterV4", 30751);
    }
  }

  *v1 = v3;
  return result;
}

{
  v4 = OUTLINED_FUNCTION_0_25(a1);
  result = (*(v5 + 1952))(v4);
  if (result)
  {
    (*(*v2 + 1952))(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v7 = (*(*v2 + 1952))(v2);
      result = CCLogStream::logAlert(v7, "[dk] %s@%d:Unexpected Version\n", "parsePHYEcounterV4", 30755);
    }
  }

  *v1 = v3;
  return result;
}

{
  v4 = OUTLINED_FUNCTION_2_18(a1);
  result = (*(v5 + 1952))(v4);
  if (result)
  {
    (*(*v2 + 1952))(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      (*(*v2 + 1952))(v2);
      v7 = OUTLINED_FUNCTION_86();
      OSData::getLength(v7);
      OUTLINED_FUNCTION_6();
      result = CCLogStream::logAlert(v2, "[dk] %s@%d:Payload invalid or too small %u\n", v8, v9, v10);
    }
  }

  *v1 = v3;
  return result;
}

uint64_t AppleBCMWLANCore::parsePHYEcounterV5(uint64_t *a1)
{
  v4 = OUTLINED_FUNCTION_0_25(a1);
  result = (*(v5 + 1952))(v4);
  if (result)
  {
    (*(*v2 + 1952))(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v7 = (*(*v2 + 1952))(v2);
      result = CCLogStream::logAlert(v7, "[dk] %s@%d:Buffer not aligned\n", "parsePHYEcounterV5", 30882);
    }
  }

  *v1 = v3;
  return result;
}

{
  v4 = OUTLINED_FUNCTION_0_25(a1);
  result = (*(v5 + 1952))(v4);
  if (result)
  {
    (*(*v2 + 1952))(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v7 = (*(*v2 + 1952))(v2);
      result = CCLogStream::logAlert(v7, "[dk] %s@%d:Unexpected Version\n", "parsePHYEcounterV5", 30886);
    }
  }

  *v1 = v3;
  return result;
}

{
  v2 = OUTLINED_FUNCTION_5_6(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_141();
  v20 = *(v1 + 28);
  v21 = *(v1 + 179);
  v18 = v4;
  v19 = v5;
  v16 = v6;
  v17 = *(v1 + 24);
  OUTLINED_FUNCTION_25_1();
  return CCLogStream::logAlert(v7, "[dk] %s@%d: Version = %u, ChanSpec=0x%04x, noise_req=%u, noise_crsbit=%u, cal_counter=%u, rxchain=%u, chiptemp=%d, femtemp=%d, btcx_mode=%d,  ltecx_mode=%d, weakest_rssi=%d, chan_switch_cnt=%u, sc_dccal_incc_cnt=%u\n", "parsePHYEcounterV5", 31006, v9, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21);
}

{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  (*(v3 + 1952))(v2);
  v4 = *(v1 + 18);
  v5 = *(v1 + 19);
  v6 = *(v1 + 32);
  v7 = *(v1 + 38);
  v8 = *(v1 + 44);
  v9 = *(v1 + 40);
  v22 = *(v1 + 160);
  v23 = *(v1 + 170);
  v20 = *(v1 + 144);
  v21 = *(v1 + 146);
  v18 = *(v1 + 76);
  v19 = *(v1 + 84);
  OUTLINED_FUNCTION_24_4();
  return CCLogStream::logAlert(v10, "[dk] %s@%d: gbd_ofdm_desense=%u, gbd_bphy_desense=%u, featureflag=%u, crsmin_pwr_apply_cnt=%u, preempt_status2=%u, ed_crs_status=%u, measurehold=%u, ocl_disable_reqs=%u,  gci_rst_tx= %u, gci_rst_rx=%u, gci_rst_sc=%u, asym_intf_stats=%u\n", "parsePHYEcounterV5", 31011, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23);
}

{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  (*(v3 + 1952))(v2);
  v4 = *(v1 + 189);
  v5 = *(v1 + 190);
  v6 = *(v1 + 191);
  v7 = *(v1 + 192);
  v8 = *(v1 + 208);
  v9 = *(v1 + 236);
  v18 = *(v1 + 217);
  v19 = *(v1 + 245);
  OUTLINED_FUNCTION_24_4();
  return CCLogStream::logAlert(v10, "[dk] %s@%d: asym_intf_avg_noise[0/1]= [%d, %d], asym_intf_latest_noise[0/1]=[%d, %d], pwridx_init[0/1]=[%u, %u], baseindxval[0/1]=[%u, %u]\n", "parsePHYEcounterV5", 31016, v12, v13, v14, v15, v16, v17, v18, v19);
}

{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  (*(v3 + 1952))(v2);
  v4 = *(v1 + 221);
  v5 = *(v1 + 249);
  v6 = *(v1 + 222);
  v7 = *(v1 + 250);
  v8 = *(v1 + 216);
  v9 = *(v1 + 244);
  v20 = *(v1 + 219);
  v21 = *(v1 + 247);
  v18 = *(v1 + 218);
  v19 = *(v1 + 246);
  OUTLINED_FUNCTION_24_4();
  return CCLogStream::logAlert(v10, "[dk] %s@%d: estpwradj[0/1]=[%d, %d], ed_threshold[0/1]=[%d, %d], crsmin_pwr_idx[0/1]=[%u, %u], crsmin_pwr[0/1]=[%d, %d], noise_level_inst[0/1]=[%d, %d]\n", "parsePHYEcounterV5", 31022, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21);
}

{
  v4 = OUTLINED_FUNCTION_2_18(a1);
  result = (*(v5 + 1952))(v4);
  if (result)
  {
    (*(*v2 + 1952))(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      (*(*v2 + 1952))(v2);
      v7 = OUTLINED_FUNCTION_86();
      OSData::getLength(v7);
      OUTLINED_FUNCTION_6();
      result = CCLogStream::logAlert(v2, "[dk] %s@%d:Payload invalid or too small %u\n", v8, v9, v10);
    }
  }

  *v1 = v3;
  return result;
}

uint64_t AppleBCMWLANCore::parsePHYEcounterV7(uint64_t *a1)
{
  v4 = OUTLINED_FUNCTION_0_25(a1);
  result = (*(v5 + 1952))(v4);
  if (result)
  {
    (*(*v2 + 1952))(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v7 = (*(*v2 + 1952))(v2);
      result = CCLogStream::logAlert(v7, "[dk] %s@%d:Buffer not aligned\n", "parsePHYEcounterV7", 31057);
    }
  }

  *v1 = v3;
  return result;
}

{
  v4 = OUTLINED_FUNCTION_0_25(a1);
  result = (*(v5 + 1952))(v4);
  if (result)
  {
    (*(*v2 + 1952))(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v7 = (*(*v2 + 1952))(v2);
      result = CCLogStream::logAlert(v7, "[dk] %s@%d:Unexpected Version\n", "parsePHYEcounterV7", 31061);
    }
  }

  *v1 = v3;
  return result;
}

{
  v2 = OUTLINED_FUNCTION_5_6(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_141();
  v20 = *(v1 + 28);
  v21 = *(v1 + 138);
  v18 = v4;
  v19 = v5;
  v16 = v6;
  v17 = *(v1 + 24);
  OUTLINED_FUNCTION_25_1();
  return CCLogStream::logAlert(v7, "[dk] %s@%d: Ver=%u, Chan=0x%04x, noise_req=%u, noise_crsbit=%u, cal_counter=%u, rxchain=%u, chiptemp=%d, femtemp=%d, btcx_mode=%d,  ltecx_mode=%d, weakest_rssi=%d, chan_switch_cnt=%u, sc_dccal_incc_cnt=%u\n", "parsePHYEcounterV7", 31179, v9, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21);
}

{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  (*(v3 + 1952))(v2);
  v4 = *(v1 + 18);
  v5 = *(v1 + 19);
  v6 = *(v1 + 36);
  v16 = *(v1 + 80);
  v17 = *(v1 + 124);
  v14 = *(v1 + 46);
  v15 = *(v1 + 76);
  v12 = *(v1 + 44);
  v13 = *(v1 + 48);
  OUTLINED_FUNCTION_126();
  return CCLogStream::logAlert(v7, "[dk] %s@%d: gbd_desense[ofdm:%d, bphy:%d], featureflag=%u, crsmin_pwr_apply_cnt=%u, preempt_status2=%u, ed_crs_status=%u,  measurehold=%u, ocl_disable_reqs=%u, asym_intf_stats=%u\n", "parsePHYEcounterV7", 31184, v9, v10, v11, v12, v13, v14, v15, v16, v17);
}

{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  (*(v3 + 1952))(v2);
  v4 = *(v1 + 133);
  v5 = *(v1 + 134);
  v6 = *(v1 + 135);
  v7 = *(v1 + 136);
  v8 = *(v1 + 252);
  v9 = *(v1 + 300);
  v20 = *(v1 + 265);
  v21 = *(v1 + 313);
  v18 = *(v1 + 261);
  v19 = *(v1 + 309);
  OUTLINED_FUNCTION_24_4();
  return CCLogStream::logAlert(v10, "[dk] %s@%d: asym_intf_avg_noise[0/1]= [%d, %d], asym_intf_latest_noise[0/1]=[%d, %d], pwridx_init[0/1]=[%u, %u], baseindxval[0/1]=[%u, %u], estpwradj[0/1]=[%d, %d]\n", "parsePHYEcounterV7", 31190, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21);
}

{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  (*(v3 + 1952))(v2);
  v4 = *(v1 + 111);
  v5 = *(v1 + 266);
  v6 = *(v1 + 314);
  v7 = *(v1 + 260);
  v8 = *(v1 + 308);
  v9 = *(v1 + 262);
  v10 = *(v1 + 310);
  v20 = *(v1 + 263);
  v21 = *(v1 + 311);
  OUTLINED_FUNCTION_25_1();
  return CCLogStream::logAlert(v11, "[dk] %s@%d: obss_cur_det_bitmap=0x%x, ed_threshold[0/1]=[%d, %d], crsmin_pwr_idx[0/1]=[%u, %u], crsmin_pwr[0/1]=[%d, %d], noise_level_inst[0/1]=[%d, %d]\n", "parsePHYEcounterV7", 31196, v13, v14, v15, v16, v17, v18, v19, v20, v21);
}

{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  (*(v3 + 1952))(v2);
  v4 = v1[115];
  v5 = v1[116];
  v6 = v1[117];
  OUTLINED_FUNCTION_126();
  return CCLogStream::logAlert(v7, "[dk] %s@%d: LTECX TxBlanking --> msg12_rx_cnt = %u, 40m_timeout_cnt = %u, blanked_duration = %u\n", "parsePHYEcounterV7", 31198, v9, v10, v11);
}

{
  v4 = OUTLINED_FUNCTION_2_18(a1);
  result = (*(v5 + 1952))(v4);
  if (result)
  {
    (*(*v2 + 1952))(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      (*(*v2 + 1952))(v2);
      v7 = OUTLINED_FUNCTION_86();
      OSData::getLength(v7);
      OUTLINED_FUNCTION_6();
      result = CCLogStream::logAlert(v2, "[dk] %s@%d:Payload invalid or too small %u\n", v8, v9, v10);
    }
  }

  *v1 = v3;
  return result;
}

uint64_t AppleBCMWLANCore::parsePHYCalEcounterV1(uint64_t *a1)
{
  v4 = OUTLINED_FUNCTION_0_25(a1);
  result = (*(v5 + 1952))(v4);
  if (result)
  {
    (*(*v2 + 1952))(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v7 = (*(*v2 + 1952))(v2);
      result = CCLogStream::logAlert(v7, "[dk] %s@%d:Buffer not aligned\n", "parsePHYCalEcounterV1", 31261);
    }
  }

  *v1 = v3;
  return result;
}

{
  v4 = OUTLINED_FUNCTION_0_25(a1);
  result = (*(v5 + 1952))(v4);
  if (result)
  {
    (*(*v2 + 1952))(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v7 = (*(*v2 + 1952))(v2);
      result = CCLogStream::logAlert(v7, "[dk] %s@%d:Unexpected Version\n", "parsePHYCalEcounterV1", 31265);
    }
  }

  *v1 = v3;
  return result;
}

{
  v4 = OUTLINED_FUNCTION_2_18(a1);
  result = (*(v5 + 1952))(v4);
  if (result)
  {
    (*(*v2 + 1952))(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      (*(*v2 + 1952))(v2);
      v7 = OUTLINED_FUNCTION_86();
      OSData::getLength(v7);
      OUTLINED_FUNCTION_6();
      result = CCLogStream::logAlert(v2, "[dk] %s@%d:Payload too small %u\n", v8, v9, v10);
    }
  }

  *v1 = v3;
  return result;
}

uint64_t AppleBCMWLANCore::parsePHYCalEcounterV2(uint64_t *a1)
{
  v4 = OUTLINED_FUNCTION_0_25(a1);
  result = (*(v5 + 1952))(v4);
  if (result)
  {
    (*(*v2 + 1952))(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v7 = (*(*v2 + 1952))(v2);
      result = CCLogStream::logAlert(v7, "[dk] %s@%d:Buffer not aligned\n", "parsePHYCalEcounterV2", 31358);
    }
  }

  *v1 = v3;
  return result;
}

{
  v4 = OUTLINED_FUNCTION_0_25(a1);
  result = (*(v5 + 1952))(v4);
  if (result)
  {
    (*(*v2 + 1952))(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v7 = (*(*v2 + 1952))(v2);
      result = CCLogStream::logAlert(v7, "[dk] %s@%d:Unexpected Version\n", "parsePHYCalEcounterV2", 31362);
    }
  }

  *v1 = v3;
  return result;
}

{
  v4 = OUTLINED_FUNCTION_2_18(a1);
  result = (*(v5 + 1952))(v4);
  if (result)
  {
    (*(*v2 + 1952))(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      (*(*v2 + 1952))(v2);
      v7 = OUTLINED_FUNCTION_86();
      OSData::getLength(v7);
      OUTLINED_FUNCTION_6();
      result = CCLogStream::logAlert(v2, "[dk] %s@%d:Payload too small %u\n", v8, v9, v10);
    }
  }

  *v1 = v3;
  return result;
}

uint64_t AppleBCMWLANCore::parsePHYCalEcounterV3(uint64_t *a1)
{
  v4 = OUTLINED_FUNCTION_0_25(a1);
  result = (*(v5 + 1952))(v4);
  if (result)
  {
    (*(*v2 + 1952))(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v7 = (*(*v2 + 1952))(v2);
      result = CCLogStream::logAlert(v7, "[dk] %s@%d:Buffer not aligned\n", "parsePHYCalEcounterV3", 31515);
    }
  }

  *v1 = v3;
  return result;
}

{
  v4 = OUTLINED_FUNCTION_0_25(a1);
  result = (*(v5 + 1952))(v4);
  if (result)
  {
    (*(*v2 + 1952))(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v7 = (*(*v2 + 1952))(v2);
      result = CCLogStream::logAlert(v7, "[dk] %s@%d:Unexpected Version\n", "parsePHYCalEcounterV3", 31519);
    }
  }

  *v1 = v3;
  return result;
}

{
  v4 = OUTLINED_FUNCTION_2_18(a1);
  result = (*(v5 + 1952))(v4);
  if (result)
  {
    (*(*v2 + 1952))(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      (*(*v2 + 1952))(v2);
      v7 = OUTLINED_FUNCTION_86();
      OSData::getLength(v7);
      OUTLINED_FUNCTION_6();
      result = CCLogStream::logAlert(v2, "[dk] %s@%d:Payload too small %u\n", v8, v9, v10);
    }
  }

  *v1 = v3;
  return result;
}

uint64_t AppleBCMWLANCore::issueIfCounterIOVar(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:issueIfCounterIOVar feature is not supported\n", "issueIfCounterIOVar", 32252);
}

{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 112);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:if_counters command failed reason: %s\n", v9, v10, v11);
}

uint64_t AppleBCMWLANCore::issueIfCounterIOVar(uint64_t *a1, uint64_t a2, void *a3, _DWORD *a4)
{
  v8 = OUTLINED_FUNCTION_5_5(a1);
  result = (*(v9 + 1952))(v8);
  if (result)
  {
    (*(*a1 + 1952))(a1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v11 = (*(*a1 + 1952))(a1);
      result = CCLogStream::logAlert(v11, "[dk] %s@%d:Bad payload\n", "issueIfCounterIOVar", 32315);
    }
  }

  *a4 = -536870212;
  *a3 = a2;
  return result;
}

uint64_t AppleBCMWLANCore::issueIfCounterIOVar(AppleBCMWLANCommandWithXTLV *a1)
{
  return AppleBCMWLANCommandWithXTLV::addXTLV(a1, 1283, 0, 0);
}

{
  return AppleBCMWLANCommandWithXTLV::addXTLV(a1, 1284, 0, 0);
}

uint64_t AppleBCMWLANCore::handleIssueIfCounterIOVarAsyncCallback(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 112);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logCrit(v1, "[dk] %s@%d: if_counters IOVAR failed, error %s\n", v9, v10, v11);
}

{
  v4 = OUTLINED_FUNCTION_0_25(a1);
  result = (*(v5 + 1952))(v4);
  if (result)
  {
    (*(*v2 + 1952))(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v7 = (*(*v2 + 1952))(v2);
      result = CCLogStream::logAlert(v7, "[dk] %s@%d:Bad payload\n", "handleIssueIfCounterIOVarAsyncCallback", 32238);
    }
  }

  *v1 = v3;
  return result;
}

uint64_t AppleBCMWLANCore::getTRAP_INFO(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_15_4();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Unknown trap info type %d\n", "getTRAP_INFO", 32460, v5);
}

uint64_t AppleBCMWLANCore::getWIFI_NOISE_PER_ANT(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d: phy_noise_ant Failed \n", "getWIFI_NOISE_PER_ANT", 32503);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:phy_noise_ant: not supported on this chip\n", "getWIFI_NOISE_PER_ANT", 32507);
}

uint64_t AppleBCMWLANCore::getMIMO_STATUS(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Failed to collect MIMO PS Status values \n", "getMIMO_STATUS", 32576);
}

uint64_t AppleBCMWLANCore::getSIB_COEX_STATUS()
{
  OUTLINED_FUNCTION_32_1();
  v4 = OUTLINED_FUNCTION_29_5(v3);
  (*(v5 + 1952))(v4);
  v6 = OUTLINED_FUNCTION_77();
  ClassNameHelper = getClassNameHelper(v6);
  return CCLogStream::logInfo(v2, "[dk] %s@%d:%s::%s getting sib coex mode %d , timeToTST %d\n", "getSIB_COEX_STATUS", 32718, ClassNameHelper, "getSIB_COEX_STATUS", *v1, *v0);
}

uint64_t AppleBCMWLANCore::dbgSuppressScans(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  v4 = (*(v3 + 1952))(v2);
  v5 = "Allowing scans";
  if (v1)
  {
    v5 = "Suppressing scans";
  }

  return CCLogStream::logAlert(v4, "[dk] %s@%d:[%s]: %s %s\n", "dbgSuppressScans", 32802, "dbgSuppressScans", v5, "success");
}

uint64_t AppleBCMWLANCore::setLQM_CONFIG(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Enhanced trigger disconnect is not enabled. Interval change not allowed\n", "setLQM_CONFIG", 32822);
}

{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 112);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Failed to update fECountersUpdateIntervalSeconds %s\n", v9, v10, v11);
}

uint64_t ___ZN16AppleBCMWLANCore13setLQM_CONFIGEP23apple80211_lqm_config_t_block_invoke_cold_1(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_116(*v1);
  return CCLogStream::logAlert(v4, "[dk] %s@%d:Setting ECounter update interval to: %d\n", "setLQM_CONFIG_block_invoke", 32846, v6);
}

uint64_t AppleBCMWLANCore::configureLqmRssiUpdates(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 112);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Error: Unable to setup rssi events: %s\n", v9, v10, v11);
}

uint64_t AppleBCMWLANCore::configureLqmChanQUpdates(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_233();
  v4 = *(v3 + 1408);
  v5 = *(v3 + 1400);
  v6 = *(v3 + 1401);
  v7 = *(v3 + 1402);
  v8 = *(v3 + 1403);
  v9 = *(v3 + 1404);
  v10 = *(v3 + 1405);
  v11 = *(v3 + 1406);
  v12 = *(v3 + 1407);
  v13 = *(v3 + 1384);
  v24 = v11;
  v25 = v12;
  v22 = v9;
  v23 = v10;
  OUTLINED_FUNCTION_24_4();
  return CCLogStream::logAlert(v14, "[dk] %s@%d:Setting rate_limit_msec: %d hysterisis: %d bounds: %d,%d,%d,%d,%d,%d,%d,%d \n", "configureLqmChanQUpdates", 41058, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25);
}

{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 112);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Error: setting up chq_event fail: %s\n", v9, v10, v11);
}

uint64_t AppleBCMWLANCore::checkBackToBackHostScans(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_11_4(a1);
  (*(v3 + 1952))(v2);
  v4 = *(v1 + 72);
  v5 = v4 + 8990;
  v4 += 4772;
  v13 = *(v5 + 12);
  v14 = *v4;
  v11 = v4[2];
  v12 = v4[1];
  v9 = *v5;
  v10 = v5[2];
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logInfo(v6, v7);
}

uint64_t AppleBCMWLANCore::isScanAllowed(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logAlert(v3, "[dk] %s@%d: [%s]: Scans suppressed\n", v5, v6, v7);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logNoticeIf(v3, 0x40uLL, "[dk] %s@%d:Device not yet associated\n", "isScanAllowed", 33120);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logNoticeIf(v3, 0x40uLL, "[dk] %s@%d:BT is busy with a call\n", "isScanAllowed", 33137);
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_15_4();
  return CCLogStream::logNoticeIf(v3, 0x40uLL, "[dk] %s@%d:Device is in low signal area, Rssi %d and could potentially roam\n", "isScanAllowed", 33150, v5);
}

uint64_t AppleBCMWLANCore::setOFFLOAD_ARP(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_8_7(a1);
  (*(v3 + 1952))(v2);
  if (IO80211_io80211isSensitiveInfoAllowed())
  {
    v4 = *(*v1 + 9496);
  }

  if (IO80211_io80211isSensitiveInfoAllowed())
  {
    v5 = *(*v1 + 9497);
  }

  if (IO80211_io80211isSensitiveInfoAllowed())
  {
    v6 = *(*v1 + 9498);
  }

  if (IO80211_io80211isSensitiveInfoAllowed())
  {
    v7 = *(*v1 + 9499);
  }

  if (IO80211_io80211isSensitiveInfoAllowed())
  {
    v8 = *(*v1 + 9500);
  }

  v9 = IO80211_io80211isSensitiveInfoAllowed();
  if (v9)
  {
    v16 = *(*v1 + 9501);
  }

  return OUTLINED_FUNCTION_228(v9, "[dk] %s@%d: Router MAC address for ARP = %02X:%02X:%02X:%02X:%02X:%02X\n", v10, v11, v12, v13, v14, v15, v18, v19);
}

uint64_t AppleBCMWLANCore::setOFFLOAD_NDP(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d: Too Many IPV6 Addresses, MAX Limit is %d \n", "setOFFLOAD_NDP", 33341, 4);
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_15_4();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Number of IPv6 addresses %d\n", "setOFFLOAD_NDP", 33369, v5);
}

uint64_t AppleBCMWLANCore::resetAutoCountry(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_125();
  AppleBCMWLANConfigManager::isEnhancedLocaleEnabled(*(v4 + 5464));
  OUTLINED_FUNCTION_167();
  return CCLogStream::logNotice(v1, "[dk] %s@%d:EnhancedLocaleEnabled: %d, HostCountry:%d, ivars->fDefaultCountryCode:%s, ivars->fCurrentHostCountryCode:%s\n", "resetAutoCountry", 33484, v5, v7, v8, v6);
}

uint64_t AppleBCMWLANCore::setupRestrictedCountryCode(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 112);
  v6 = OUTLINED_FUNCTION_16_2();
  v8 = v7(v6);
  return CCLogStream::logAlert(v1, "[dk] %s@%d: %s: disable ccode_pr_2g command failed: %s\n", "setupRestrictedCountryCode", 33511, "setupRestrictedCountryCode", v8);
}

{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 112);
  v6 = OUTLINED_FUNCTION_16_2();
  v8 = v7(v6);
  return CCLogStream::logAlert(v1, "[dk] %s@%d: %s: disable autocountry command failed: %s\n", "setupRestrictedCountryCode", 33520, "setupRestrictedCountryCode", v8);
}

{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 112);
  v6 = OUTLINED_FUNCTION_16_2();
  v8 = v7(v6);
  return CCLogStream::logAlert(v1, "[dk] %s@%d: %s: enable passive_on_restricted command failed: %s\n", "setupRestrictedCountryCode", 33528, "setupRestrictedCountryCode", v8);
}

{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 112);
  v6 = OUTLINED_FUNCTION_16_2();
  v8 = v7(v6);
  return CCLogStream::logAlert(v1, "[dk] %s@%d: %s: disable country_default command failed: %s\n", "setupRestrictedCountryCode", 33536, "setupRestrictedCountryCode", v8);
}

{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_125();
  v5 = (v4 + 6740);
  isEnhancedLocaleEnabled = AppleBCMWLANConfigManager::isEnhancedLocaleEnabled(*(v4 + 5464));
  return CCLogStream::logNotice(v1, "[dk] %s@%d:Strict regulatory settings applied: ivars->fRestrictedCountryCode:%s EnhancedLocaleEnabled: %d\n", "setupRestrictedCountryCode", 33555, v5, isEnhancedLocaleEnabled);
}

uint64_t AppleBCMWLANCore::setupRestrictedCountryCode(uint64_t *a1, uint64_t a2, void *a3)
{
  v5 = OUTLINED_FUNCTION_0_8(a1);
  v7 = (*(v6 + 1952))(v5);
  v8 = (*a3 + 6740);
  OUTLINED_FUNCTION_81_0();
  v10 = (*(v9 + 112))(v3, 3825172766);
  return CCLogStream::logAlert(v7, "[dk] %s@%d: Error: Unsupported country %s, error: %s\n", "setupRestrictedCountryCode", 33544, v8, v10);
}

uint64_t AppleBCMWLANCore::setupCountryCode(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 112);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: iovar set passive_on_restricted command failed: %s\n", v9, v10, v11);
}

{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 112);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: iovar set country_default command failed: %s\n", v9, v10, v11);
}

{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 112);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: iovar set country_default command failed: %s\n", v9, v10, v11);
}

{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 112);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Error: Failed to restore autocountry setting : %s\n", v9, v10, v11);
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_167();
  OUTLINED_FUNCTION_247();
  return CCLogStream::logInfo(v3, "[dk] %s@%d:WiFiCC : HostCountry:%d, ivars->fDefaultCountryCode:%s, ivars->fCurrentHostCountryCode:%s\n", "setupCountryCode", 33642, v5, v6, v7);
}

{
  v2 = OUTLINED_FUNCTION_0_8(a1);
  v4 = (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_180();
  v7 = (v5 + v6);
  OUTLINED_FUNCTION_81_0();
  v9 = (*(v8 + 112))(v1, 3825172766);
  return CCLogStream::logAlert(v4, "[dk] %s@%d: Error: Unsupported country %s, error: %s\n", "setupCountryCode", 33606, v7, v9);
}

uint64_t AppleBCMWLANCore::setWCL_ASSOCIATE(uint64_t *a1)
{
  v3 = OUTLINED_FUNCTION_5_6(a1);
  v5 = (*(v4 + 1952))(v3);
  v6 = authtypelower2str(*(v2 + 16));
  v7 = authtypeupper2str(*(v2 + 20), *(v2 + 24));
  v8 = ciphertype2str(*(v2 + 72));
  v9 = *(v2 + 480);
  v10 = ", Instant Hotspot";
  if ((v9 & 2) == 0)
  {
    v10 = "";
  }

  if ((v9 & 4) != 0)
  {
    v11 = ", Auto Instant Hotspot";
  }

  else
  {
    v11 = "";
  }

  return CCLogStream::logCrit(v5, "[dk] %s@%d: [%s]: lowerAuth = %s, upperAuth = %s, key = %s %s %s.\n", "setWCL_ASSOCIATE", 33775, v1, v6, v7, v8, v10, v11);
}

uint64_t AppleBCMWLANCore::createNANInterface(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:No driver support for NAN, skipping interface creation\n", "createNANInterface", 33971);
}

{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  (*(v3 + 1952))(v2);
  v4 = *v1;
  OUTLINED_FUNCTION_128();
  OUTLINED_FUNCTION_113();
  return CCLogStream::logAlert(v5, "[dk] %s@%d:%s creation of nan1 data interface\n", v7, v8, v9);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:ERROR: Failed to create NAN Data interface\n", "createNANInterface", 34011);
}

{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  (*(v3 + 1952))(v2);
  v4 = *v1;
  OUTLINED_FUNCTION_128();
  OUTLINED_FUNCTION_113();
  return CCLogStream::logAlert(v5, "[dk] %s@%d:%s creation of nan0 interface\n", v7, v8, v9);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:ERROR: Failed to create NAN Mgmt interface\n", "createNANInterface", 33989);
}

uint64_t AppleBCMWLANCore::setVIRTUAL_IF_CREATE(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:AWDL VIRTUAL_IF_CREATE is rejected due to boot-args wlan.dk.awdl=0\n", "setVIRTUAL_IF_CREATE", 34052);
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_15_4();
  return CCLogStream::logAlert(v3, "[dk] %s@%d: create virtif role %u\n", "setVIRTUAL_IF_CREATE", 34093, v5);
}

{
  v3 = OUTLINED_FUNCTION_5_6(a1);
  v5 = (*(v4 + 1952))(v3);
  v6 = OUTLINED_FUNCTION_5_0(*(*v2 + 11304));
  v8 = (*(v7 + 160))(v6);
  return CCLogStream::logAlert(v5, "[dk] %s@%d:WARNING: <%s> already created role %u\n", "setVIRTUAL_IF_CREATE", 34104, v8, *v1);
}

{
  v3 = OUTLINED_FUNCTION_2_7(a1);
  (*(v4 + 1952))(v3);
  OUTLINED_FUNCTION_125();
  InterfaceId = IO80211SkywalkInterface::getInterfaceId(*(v5 + 11304));
  InterfaceRole = IO80211SkywalkInterface::getInterfaceRole(*(*v1 + 11304));
  return CCLogStream::logAlertIf(v2, 0x5000080400uLL, "[dk] %s@%d: Created Virtual interface id %lu role %lu\n", "setVIRTUAL_IF_CREATE", 34149, InterfaceId, InterfaceRole);
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_15_4();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Failed to create AP STA Interface role %u\n", "setVIRTUAL_IF_CREATE", 34114, v5);
}

uint64_t AppleBCMWLANCore::setIBSS_MODE(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logNotice(v3, "[dk] %s@%d: [%s]: Tearing down AWDL before bringing up adhoc\n", v5, v6, v7);
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logNotice(v3, "[dk] %s@%d: [%s]: Tearing down NAN before bringing up adhoc\n", v5, v6, v7);
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logNotice(v3, "[dk] %s@%d: [%s]: Tearing down NDI before bringing up adhoc\n", v5, v6, v7);
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logNotice(v3, "[dk] %s@%d: [%s]: Bring AWDL up after tearing down adhoc\n", v5, v6, v7);
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logNotice(v3, "[dk] %s@%d: [%s]: Bring NAN up after tearing down adhoc\n", v5, v6, v7);
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logNotice(v3, "[dk] %s@%d: [%s]: Bring NDI up after tearing down adhoc\n", v5, v6, v7);
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logNotice(v3, "[dk] %s@%d: [%s]: Bring AWDL up after tearing down adhoc\n", v5, v6, v7);
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logNotice(v3, "[dk] %s@%d: [%s]: Bring NAN up after tearing down adhoc\n", v5, v6, v7);
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logNotice(v3, "[dk] %s@%d: [%s]: Bring NDI up after tearing down adhoc\n", v5, v6, v7);
}

uint64_t AppleBCMWLANCore::powerOff(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  (*(v3 + 1952))(v2);
  v4 = *(*v1 + 6728);
  v5 = *(*v1 + 777);
  v6 = *(*v1 + 10376);
  v7 = *(*v1 + 19852);
  if (v7 <= 4)
  {
    v8 = off_1003D0E30[v7];
  }

  OUTLINED_FUNCTION_112();
  return CCLogStream::logAlert(v9, "[dk] %s@%d: Userland LPAS [%d] , Associated sleep LPAS [%d], fStateFlags(%lx) userPower(%s)\n", "powerOff", 39454, v11, v12, v13, v14);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Conflicting power transitions.\n", "powerOff", 39483);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d: already powering off!\n", "powerOff", 39480);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d: during initialization !!\n", "powerOff", 39493);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d: driver uninititalized\n", "powerOff", 39498);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logNotice(v3, "[dk] %s@%d: Failed to get AssociatedSleep/UnAssociatedSleep Duration Values \n", "powerOff", 39524);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logInfo(v3, "[dk] %s@%d:Failed to get power stats during sleep for LPSC \n", "powerOff", 39532);
}

{
  v3 = OUTLINED_FUNCTION_5_6(a1);
  (*(v4 + 1952))(v3);
  v5 = v2[2];
  v6 = *v1;
  v7 = v2[5];
  v8 = v2[6];
  OUTLINED_FUNCTION_112();
  return CCLogStream::logAlert(v9, "[dk] %s@%d: posting APPLE80211_M_DRIVER_AVAILABLE, available[%u] reason[0x%08x] sub_reason[0x%08x] minor_reason[0x%08x]\n", "powerOff", 39542, v11, v12, v13, v14);
}

{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 112);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Failed to clear event WLC_E_COUNTRY_CODE_CHANGED : %s\n", v9, v10, v11);
}

{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 112);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Unable to quiesce AWDL: %s\n", v9, v10, v11);
}

{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 112);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Unable to quiesce NAN: %s\n", v9, v10, v11);
}

{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 112);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Unable to quiesce NDI: %s\n", v9, v10, v11);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Failed to configure Private MAC Address for Scans \n", "powerOff", 39694);
}

{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  (*(v3 + 1952))(v2);
  v4 = *v1;
  OUTLINED_FUNCTION_73_0();
  if (!v9 & v8)
  {
    v10 = "UNKNOWN";
  }

  else
  {
    v10 = off_1003D0E30[v7];
  }

  return CCLogStream::logAlert(v5, "[dk] %s@%d:Quiesce commander ivars->fStateFlags(%lx) userPower(%s)\n", "powerOff", 39812, v6, v10);
}

{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  (*(v3 + 1952))(v2);
  v4 = *v1;
  OUTLINED_FUNCTION_73_0();
  if (!v9 & v8)
  {
    v10 = "UNKNOWN";
  }

  else
  {
    v10 = off_1003D0E30[v7];
  }

  return CCLogStream::logAlert(v5, "[dk] %s@%d:Wakeup commander ivars->fStateFlags(%lx) userPower(%s)\n", "powerOff", 39817, v6, v10);
}

{
  v3 = OUTLINED_FUNCTION_5_6(a1);
  (*(v4 + 1952))(v3);
  v5 = *v2;
  v11 = *(*v1 + 19852);
  v12 = *(*v1 + 10376);
  OUTLINED_FUNCTION_9_4();
  return CCLogStream::logAlert(v6, "[dk] %s@%d: Disabling WoW, system hibernating, hibstate[%08x], ivars->fUserSpacePowerState[%08x] ivars->fStateFlags[%08x]\n", v8, v9, v10, v11, v12);
}

{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 112);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Sending disconnect command failed %s\n", v9, v10, v11);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d: Unsuccessful requesting WLAN to wake host\n", "powerOff", 39875);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d: Associated & WoW enabled, WiFi will remain up\n", "powerOff", 39892);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d: Low Power Associated Sleep Enabled\n", "powerOff", 39890);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d: Waiting for watchdog to complete\n", "powerOff", 39906);
}

{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 112);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Timed out waiting for driver to reset itself: %s\n", v9, v10, v11);
}

{
  v3 = OUTLINED_FUNCTION_5_6(a1);
  (*(v4 + 1952))(v3);
  v5 = *v2;
  OUTLINED_FUNCTION_73_0();
  if (!v10 & v9)
  {
    v11 = "UNKNOWN";
  }

  else
  {
    v11 = off_1003D0E30[v8];
  }

  return CCLogStream::logAlert(v6, "[dk] %s@%d:Quiesce commander ivars->fStateFlags(%lx) userPower(%s) hibernating[%u]\n", "powerOff", 39926, v7, v11, v1);
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_186();
  OUTLINED_FUNCTION_9_4();
  return CCLogStream::logAlert(v3, "[dk] %s@%d: Ready to power off%s\n", v5, v6, v7);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:WD Failed while in powerOff. Save me!\n", "powerOff", 39981);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Last watchdog failed, max retries performed, waiting for panic\n", "powerOff", 39988);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d: already powered off!\n", "powerOff", 39488);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logCrit(v3, "[dk] %s@%d:NO INTER %s %d\n", "powerOff", 39464, "IOReturn AppleBCMWLANCore::powerOff(BOOL)", 39464);
}

uint64_t AppleBCMWLANCore::setPOWER()
{
  OUTLINED_FUNCTION_32_1();
  v3 = OUTLINED_FUNCTION_29_5(v2);
  (*(v4 + 1952))(v3);
  v10 = *(v0 + 8);
  v11 = *(*(v1 + 72) + 10376);
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v5, "[dk] %s@%d: [%s]: Setting power state to %u. stateFlags(%lx)\n", v7, v8, v9, v10, v11);
}

uint64_t AppleBCMWLANCore::setPOWER(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logNotice(v3, "[dk] %s@%d:  driver not initialized or watchdog running; setPOWER request deferred\n", "setPOWER", 34417);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logEmergency(v3, "[dk] %s@%d: Forced host trapping firmware\n", "setPOWER", 34442);
}

{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 112);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Failed to resume-poweron AWDL link: %s\n", v9, v10, v11);
}

{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 112);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Failed to resume-poweron NAN link: %s\n", v9, v10, v11);
}

{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 112);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Failed to resume-poweron NDI link: %s\n", v9, v10, v11);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logNotice(v3, "[dk] %s@%d: IOKit power off. Discarding request.\n", "setPOWER", 34413);
}

uint64_t AppleBCMWLANCore::setWCL_SET_ROAM_LOCK(uint64_t *a1)
{
  v3 = OUTLINED_FUNCTION_16_5(a1);
  result = (*(v4 + 1952))(v3);
  if (result)
  {
    (*(*v2 + 1952))(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v6 = (*(*v2 + 1952))(v2);
      result = CCLogStream::logAlert(v6, "[dk] %s@%d:pSetRoamLock is null\n", "setWCL_SET_ROAM_LOCK", 34543);
    }
  }

  *v1 = 22;
  return result;
}

uint64_t AppleBCMWLANCore::writeEventBitField(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 112);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Error: Unable to setup event handling: %s\n", v9, v10, v11);
}

uint64_t AppleBCMWLANCore::setExtendedEventBit(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 112);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Error: Unable to set event_mgs_ext, %s\n", v9, v10, v11);
}

uint64_t AppleBCMWLANCore::resetExtendedEventBit(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 112);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Error: Unable to set event_mgs_ext, %s\n", v9, v10, v11);
}

uint64_t AppleBCMWLANCore::setRESET_CHIP(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  v4 = (*(v3 + 1952))(v2);
  return CCLogStream::logEmergency(v4, "[dk] %s@%d:This call to setRESET_CHIP will not actually reset the chip! isTrap=%u, isUserspaceReset=%u, calling message %s", "setRESET_CHIP", 35265, 0, 0, v1);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logEmergency(v3, "[dk] %s@%d:Exiting setRESET_CHIP after calling FaultReport with kFaultActionFullCapture", "setRESET_CHIP", 35291);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logEmergency(v3, "[dk] %s@%d:This call to setRESET_CHIP will not actually reset the chip nor collect CoreCapture! Forwarding to dbgTriggerWatchdog()", "setRESET_CHIP", 35283);
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logEmergency(v3, "[dk] %s@%d:This call to setRESET_CHIP will not actually reset the chip nor collect CoreCapture! returning ENODEV, calling message %s", v5, v6, v7);
}

uint64_t AppleBCMWLANCore::getChanSpec(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Warning Failed to parse requested channel, channel %d is out range \n", v5, v6, v7);
}

uint64_t AppleBCMWLANCore::setDBG_GUARD_TIME_PARAMS(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 112);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logCrit(v1, "[dk] %s@%d: Setting debug guard time params failed, error %s\n", v9, v10, v11);
}

uint64_t AppleBCMWLANCore::setLEAKY_AP_STATS_MODE(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 112);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logInfo(v1, "[dk] %s@%d: ERROR: Setting leaky_ap_stats, error %s\n", v9, v10, v11);
}

uint64_t AppleBCMWLANCore::setTHERMAL_INDEX(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  v4 = (*(v3 + 1952))(v2);
  return CCLogStream::logInfo(v4, "[dk] %s@%d:CLTM Index: %d\n", "setTHERMAL_INDEX", 35465, *(v1 + 4));
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logCrit(v3, "[dk] %s@%d:TVPM capability is missing for this chipset/FW\n", "setTHERMAL_INDEX", 35468);
}

{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 112);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logInfo(v1, "[dk] %s@%d: Error: Unable to set CLTM Index: %s\n", v9, v10, v11);
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_15_4();
  return CCLogStream::logCrit(v3, "[dk] %s@%d:setTHERMAL_INDEX is called with an out-of-range value %d\n", "setTHERMAL_INDEX", 35474, v5);
}

uint64_t AppleBCMWLANCore::setPOWER_BUDGET(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  v4 = (*(v3 + 1952))(v2);
  return CCLogStream::logInfo(v4, "[dk] %s@%d:PPM Index: %d\n", "setPOWER_BUDGET", 35507, *(v1 + 4));
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logCrit(v3, "[dk] %s@%d:TVPM capability is missing for this chipset/FW\n", "setPOWER_BUDGET", 35510);
}

{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 112);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logInfo(v1, "[dk] %s@%d: Error: Unable to set PPM Index: %s\n", v9, v10, v11);
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_15_4();
  return CCLogStream::logCrit(v3, "[dk] %s@%d:setPOWER_BUDGET is called with an out-of-range value %d\n", "setPOWER_BUDGET", 35516, v5);
}

uint64_t AppleBCMWLANCore::setTXPOWER(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 112);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logCrit(v1, "[dk] %s@%d: qtxpower override 2 failed, error %s\n", v9, v10, v11);
}

uint64_t AppleBCMWLANCore::setUSB_HOST_NOTIFICATION(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  v4 = (*(v3 + 1952))(v2);
  return CCLogStream::logCrit(v4, "[dk] %s@%d:%s seqNum %d pres %d chg %d\n", "setUSB_HOST_NOTIFICATION", 35581, "setUSB_HOST_NOTIFICATION", v1[1], v1[3], v1[2]);
}

uint64_t AppleBCMWLANCore::setRATE(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 112);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logCrit(v1, "[dk] %s@%d: bg_rate override 1 failed, error %s\n", v9, v10, v11);
}

{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 112);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logCrit(v1, "[dk] %s@%d: bg_rate override 2 failed, error %s\n", v9, v10, v11);
}

{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 112);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logCrit(v1, "[dk] %s@%d: bg_rate override 3 failed, error %s\n", v9, v10, v11);
}

uint64_t AppleBCMWLANCore::configureWoWTestModeEntry(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 112);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Failure to setup event handling for WLC_E_WAKE_EVENT, %s\n", v9, v10, v11);
}

{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 112);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Failure to send 'wake_event' iovar, %s\n", v9, v10, v11);
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_9_4();
  return CCLogStream::logNotice(v3, "[dk] %s@%d: WoW test mode: Firmware will send a WAKE EVENT in %ld seconds  \n", v5, v6, v7);
}

uint64_t AppleBCMWLANCore::setVendorIE(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 112);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logCrit(v1, "[dk] %s@%d:ERROR: vndr_ie error %s - failed to delete existing IE\n", v9, v10, v11);
}

{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 112);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logCrit(v1, "[dk] %s@%d:ERROR: vndr_ie error %s - failed to add IE\n", v9, v10, v11);
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logWarn(v3, "[dk] %s@%d:WARNING: vendor IE information overrun max allowed %u\n", v5, v6, v7);
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logWarn(v3, "[dk] %s@%d:WARNING: vendor IE information overrun max allowed %u\n", v5, v6, v7);
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logWarn(v3, "[dk] %s@%d:WARNING: vendor IE information overrun max allowed %u\n", v5, v6, v7);
}

uint64_t AppleBCMWLANCore::setIE(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  v4 = (*(v3 + 1952))(v2);
  return CCLogStream::logAlert(v4, "[dk] %s@%d:%s: Invalid input association data parameters, bailing ie_len %d\n", "setIE", 35891, "setIE", *v1);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:%s: NULL input association data parameters, bailing\n", v5, v6, v7);
}

uint64_t AppleBCMWLANCore::printLogOnDeadlock(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Dumping IPC stats before assert\n", "printLogOnDeadlock", 35956);
}

uint64_t AppleBCMWLANCore::setSWDIV_RX_POLICY(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 112);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logCrit(v1, "[dk] %s@%d: swdiv_rx_policy failed, error %s\n", v9, v10, v11);
}

uint64_t AppleBCMWLANCore::setSWDIV_TX_POLICY(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 112);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logCrit(v1, "[dk] %s@%d: swdiv_tx_policy failed, error %s\n", v9, v10, v11);
}

uint64_t AppleBCMWLANCore::setSWDIV_CELL_POLICY(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 112);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logCrit(v1, "[dk] %s@%d: swdiv_cell_policy failed, error %s\n", v9, v10, v11);
}

uint64_t AppleBCMWLANCore::setMWS_NGC_COEX_BITMAPS(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 112);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logCrit(v1, "[dk] %s@%d: 5gwifi_coex_bitmap failed, error %s\n", v9, v10, v11);
}

uint64_t AppleBCMWLANCore::setMWS_NGC_TimerGranularity(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 112);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logCrit(v1, "[dk] %s@%d: 5gwifi_timer_granularity failed, error %s\n", v9, v10, v11);
}

uint64_t AppleBCMWLANCore::setMWS_NGC_ACTIVITY_LEVEL_THRESHOLDS(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 112);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logCrit(v1, "[dk] %s@%d: 5gwifi_activity_level_threshold failed, error %s\n", v9, v10, v11);
}

uint64_t AppleBCMWLANCore::setMWS2GWiFiType7Bitmap(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 112);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logCrit(v1, "[dk] %s@%d:Configured 2G WiFi Type7 bitmap Failure, error %s\n", v9, v10, v11);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:ltecx cmd alloc fail\n", "setMWS2GWiFiType7Bitmap", 36329);
}

uint64_t AppleBCMWLANCore::setMWS2GWiFiType7Bitmap(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = OUTLINED_FUNCTION_0_8(a1);
  (*(v6 + 1952))(v5);
  OUTLINED_FUNCTION_3_5();
  v8 = *(v7 + 112);
  v9 = OUTLINED_FUNCTION_172();
  v11 = v10(v9);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Configured 2G WiFi Type7 bitmap Success with %s, 0x%x\n", "setMWS2GWiFiType7Bitmap", 36369, v11, *(*a3 + 31084));
}

uint64_t AppleBCMWLANCore::setMWSCoexBitmapsWiFiEnh(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 112);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logCrit(v1, "[dk] %s@%d:Configured MWS WiFiEnh COEX iovar Failure, error %s\n", v9, v10, v11);
}

{
  v2 = OUTLINED_FUNCTION_1_9(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_4_6();
  v5 = *(v4 + 112);
  v6 = OUTLINED_FUNCTION_118();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Configured MWS WiFiEnh COEX iovar Success with %s\n", v9, v10, v11);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:ltecx cmd (MWSCoexBitmapsWiFiEnh) alloc failed\n", "setMWSCoexBitmapsWiFiEnh", 36396);
}

uint64_t AppleBCMWLANCore::setOCLCoexBitmapsWiFiEnh(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 112);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logCrit(v1, "[dk] %s@%d:Configured OCL WiFiEnh COEX iovar Failure, error %s\n", v9, v10, v11);
}

{
  v2 = OUTLINED_FUNCTION_1_9(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_4_6();
  v5 = *(v4 + 112);
  v6 = OUTLINED_FUNCTION_118();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Configured OCL WiFiEnh COEX iovar Success with %s\n", v9, v10, v11);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:ltecx cmd (OCLCoexBitmapsWiFiEnh) alloc failed\n", "setOCLCoexBitmapsWiFiEnh", 36475);
}

uint64_t AppleBCMWLANCore::setWiFiType7BitmapsWiFiEnh(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 112);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logCrit(v1, "[dk] %s@%d:Configured WiFiType7 WiFiEnh COEX iovar Failure, error %s\n", v9, v10, v11);
}

{
  v2 = OUTLINED_FUNCTION_1_9(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_4_6();
  v5 = *(v4 + 112);
  v6 = OUTLINED_FUNCTION_118();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Configured WiFiType7 WiFiEnh COEX iovar Success with %s\n", v9, v10, v11);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:ltecx cmd (WiFiType7BitmapsWiFiEnh) alloc failed\n", "setWiFiType7BitmapsWiFiEnh", 36555);
}

uint64_t AppleBCMWLANCore::setWiFiType4BlankingBitmapsWiFiEnh(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 112);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logCrit(v1, "[dk] %s@%d:Configured WiFi Type4 Blanking WiFiEnh COEX iovar Failure, error %s\n", v9, v10, v11);
}

{
  v2 = OUTLINED_FUNCTION_1_9(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_4_6();
  v5 = *(v4 + 112);
  v6 = OUTLINED_FUNCTION_118();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Configured WiFi Type4 Blanking WiFiEnh COEX iovar Success with %s\n", v9, v10, v11);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:ltecx cmd (WiFiType4BlankingBitmapsWiFiEnh) alloc failed\n", "setWiFiType4BlankingBitmapsWiFiEnh", 36634);
}

uint64_t AppleBCMWLANCore::setWiFiType4BlankingModeBitmapsWiFiEnh(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 112);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logCrit(v1, "[dk] %s@%d:Configured WiFi Type4 Blanking Mode WiFiEnh COEX iovar Failure, error %s\n", v9, v10, v11);
}

{
  v2 = OUTLINED_FUNCTION_1_9(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_4_6();
  v5 = *(v4 + 112);
  v6 = OUTLINED_FUNCTION_118();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Configured WiFi Type4 Blanking Mode WiFiEnh COEX iovar Success with %s\n", v9, v10, v11);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:ltecx cmd (WiFiType4BlankingModeBitmapsWiFiEnh) alloc failed\n", "setWiFiType4BlankingModeBitmapsWiFiEnh", 36713);
}

uint64_t AppleBCMWLANCore::setWiFiRfemConfigBitmapWiFiEnh(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 112);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logCrit(v1, "[dk] %s@%d:Configured WiFi rFEM Config WiFiEnh COEX iovar Failure, error %s\n", v9, v10, v11);
}

{
  v2 = OUTLINED_FUNCTION_1_9(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_4_6();
  v5 = *(v4 + 112);
  v6 = OUTLINED_FUNCTION_118();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Configured WiFi rFEM Config WiFiEnh COEX iovar Success with %s\n", v9, v10, v11);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:ltecx cmd (setWiFiRfemConfigBitmapWiFiEnh) alloc failed\n", "setWiFiRfemConfigBitmapWiFiEnh", 36796);
}

uint64_t AppleBCMWLANCore::setWiFiAssocProtectionConfigBitmapWiFiEnh(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 112);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logCrit(v1, "[dk] %s@%d:Configured WiFi Assoc Protection Config WiFiEnh COEX iovar Failure, error %s\n", v9, v10, v11);
}

{
  v2 = OUTLINED_FUNCTION_1_9(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_4_6();
  v5 = *(v4 + 112);
  v6 = OUTLINED_FUNCTION_118();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Configured WiFi Assoc Protection Config WiFiEnh COEX iovar Success with %s\n", v9, v10, v11);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:ltecx cmd (setWiFiAssocProtectionConfigBitmapWiFiEnh) alloc failed\n", "setWiFiAssocProtectionConfigBitmapWiFiEnh", 36894);
}

uint64_t AppleBCMWLANCore::setSCAN_FREQ_CHANNELS(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 112);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logCrit(v1, "[dk] %s@%d: mws_scanreq_bm failed, error %s\n", v9, v10, v11);
}

uint64_t AppleBCMWLANCore::setLTE_TDD_CHANNELS(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 112);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logCrit(v1, "[dk] %s@%d: mws_tscoex_bitmap failed, error %s\n", v9, v10, v11);
}

uint64_t AppleBCMWLANCore::setANTENNA_SELECTION(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 112);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logCrit(v1, "[dk] %s@%d: mws_antenna_selection failed, error %s\n", v9, v10, v11);
}

uint64_t AppleBCMWLANCore::setANTENNA_SELECTION_V2(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 112);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logCrit(v1, "[dk] %s@%d: mws_antenna_selection_2nd failed, error %s\n", v9, v10, v11);
}

uint64_t AppleBCMWLANCore::setANTENNA_SELECTION_V3_WiFiEnh(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_12_3();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Invalid band index (%d) for WiFi Antenna Selection WiFiEnh COEX iovar.\n", "setANTENNA_SELECTION_V3_WiFiEnh", 37074, v5);
}

{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 112);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logCrit(v1, "[dk] %s@%d:Configured WiFi Antenna Selection WiFiEnh COEX iovar Failure, error %s\n", v9, v10, v11);
}

{
  v2 = OUTLINED_FUNCTION_1_9(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_4_6();
  v5 = *(v4 + 112);
  v6 = OUTLINED_FUNCTION_118();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Configured WiFi Antenna Selection WiFiEnh COEX iovar Success with %s\n", v9, v10, v11);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:ltecx cmd (WiFiAntennaSelectionBitmapsWiFiEnh) alloc failed\n", "setANTENNA_SELECTION_V3_WiFiEnh", 37026);
}

uint64_t AppleBCMWLANCore::setWlanRxProt(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 112);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logCrit(v1, "[dk] %s@%d: mws_wlanrx_prot failed, error %s\n", v9, v10, v11);
}

uint64_t AppleBCMWLANCore::setWCI2TxInd(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 112);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logCrit(v1, "[dk] %s@%d: wci2_txind failed, error %s\n", v9, v10, v11);
}

uint64_t AppleBCMWLANCore::setScanJoinProt(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 112);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logCrit(v1, "[dk] %s@%d: mws_scanjoin_prot failed, error %s\n", v9, v10, v11);
}

uint64_t AppleBCMWLANCore::setAutoProtParams(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 112);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: mws_autoprot_params failed, error %s\n", v9, v10, v11);
}

uint64_t AppleBCMWLANCore::setMwsFrameConfig(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 112);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: mws_frame_config failed, error %s\n", v9, v10, v11);
}

uint64_t AppleBCMWLANCore::setWCI2TxEnvelopeIndEnable(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 112);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logCrit(v1, "[dk] %s@%d: wci2_tx_envelope_ind_2g failed, error %s\n", v9, v10, v11);
}

uint64_t AppleBCMWLANCore::setWCI2TxEnvelopeIdleTimeout(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 112);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logCrit(v1, "[dk] %s@%d: mws_tx_envelope_idle_timer failed, error %s\n", v9, v10, v11);
}

uint64_t AppleBCMWLANCore::setWCI2TxInd5G(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 112);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logCrit(v1, "[dk] %s@%d: wci2_txind_5g failed, error %s\n", v9, v10, v11);
}

uint64_t AppleBCMWLANCore::setWiFiConditionIdBitmapsWiFiEnh(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 112);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logCrit(v1, "[dk] %s@%d:Configured WiFi conditin id bm WiFiEnh COEX iovar Failure, error %s\n", v9, v10, v11);
}

{
  v2 = OUTLINED_FUNCTION_1_9(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_4_6();
  v5 = *(v4 + 112);
  v6 = OUTLINED_FUNCTION_118();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Configured WiFi condition id bm WiFiEnh COEX iovar Success with %s\n", v9, v10, v11);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:ltecx cmd (setWiFiConditionIdBitmapsWiFiEnh) alloc failed\n", "setWiFiConditionIdBitmapsWiFiEnh", 37259);
}

uint64_t AppleBCMWLANCore::setWCI2TxDurThresh(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 112);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logCrit(v1, "[dk] %s@%d: wci2_txdur_thresh failed, error %s\n", v9, v10, v11);
}

uint64_t AppleBCMWLANCore::setmwsActiveScanThrottle(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 112);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logCrit(v1, "[dk] %s@%d: mws_active_scan_throttle failed, error %s\n", v9, v10, v11);
}

uint64_t AppleBCMWLANCore::setmwsActiveScanThrottleDwellTime(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 112);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logCrit(v1, "[dk] %s@%d: mws_active_dwell_time failed, error %s\n", v9, v10, v11);
}

uint64_t AppleBCMWLANCore::setGPIOTxEnvelopeInd(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 112);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logCrit(v1, "[dk] %s@%d: gpio_tx_envelope_ind failed, error %s\n", v9, v10, v11);
}

uint64_t AppleBCMWLANCore::setBTCOEX_PROFILE(uint64_t *a1)
{
  v5 = OUTLINED_FUNCTION_11_9(a1);
  result = (*(v6 + 1952))(v5);
  if (result)
  {
    (*(*v3 + 1952))(v3);
    result = CCLogStream::shouldLog();
    if (result)
    {
      (*(*v3 + 1952))(v3);
      OUTLINED_FUNCTION_59_0();
      v9 = *(v8 + 112);
      v10 = OUTLINED_FUNCTION_136();
      v11(v10);
      OUTLINED_FUNCTION_6();
      result = CCLogStream::logCrit(v4, "[dk] %s@%d:BTC_PROFILE failed, error %s\n", v12, v13, v14);
    }
  }

  *v1 = v2;
  return result;
}

uint64_t AppleBCMWLANCore::setRANGING_ENABLE(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Receive disable ranging before ranging ended, stop ranging!", "setRANGING_ENABLE", 37692);
}

{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  (*(v3 + 1952))(v2);
  v4 = *v1;
  OUTLINED_FUNCTION_181();
  OUTLINED_FUNCTION_113();
  return CCLogStream::logNotice(v5, "[dk] %s@%d:Ranging %s\n", v7, v8, v9);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_7_1();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:ERROR: %s:%u fProximityInterface not initialized, bailing out\n", v5, v6, v7, v8);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_7_1();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:ERROR: %s:%u fProximityInterface not initialized, bailing out\n", v5, v6, v7, v8);
}

uint64_t AppleBCMWLANCore::setRANGING_START_V3(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  v4 = (*(v3 + 1952))(v2);
  return CCLogStream::logNotice(v4, "[dk] %s@%d:%s: request->start=%d\n", "setRANGING_START_V3", 37780, "setRANGING_START_V3", *(v1 + 4));
}

{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 112);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Error: Unable to config proxd ftm: %s\n", v9, v10, v11);
}

{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 112);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Error: Unable to set awdl_ftm_ranging_config : %s\n", v9, v10, v11);
}

{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 112);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Error: Unable to start ranging : %s\n", v9, v10, v11);
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_210();
  return CCLogStream::logAlert(v3, "[dk] %s@%d: fEnableOnDemandProxdDumpLogging=%d fEnableProxdRssiFiltering=%d\n", "setRANGING_START_V3", 38001, v5, v6);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_7_1();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:ERROR: %s:%u fProximityInterface not initialized, bailing out\n", v5, v6, v7, v8);
}

uint64_t AppleBCMWLANCore::setRANGING_START_V4(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  v4 = (*(v3 + 1952))(v2);
  return CCLogStream::logNotice(v4, "[dk] %s@%d:%s: request->start=%d\n", "setRANGING_START_V4", 38036, "setRANGING_START_V4", *(v1 + 4));
}

{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 112);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Error: Unable to config proxd ftm: %s\n", v9, v10, v11);
}

{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 112);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Error: Unable to start ranging : %s\n", v9, v10, v11);
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_210();
  return CCLogStream::logAlert(v3, "[dk] %s@%d: fEnableOnDemandProxdDumpLogging=%d fEnableProxdRssiFiltering=%d\n", "setRANGING_START_V4", 38241, v5, v6);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_7_1();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:ERROR: %s:%u fProximityInterface not initialized, bailing out\n", v5, v6, v7, v8);
}

uint64_t AppleBCMWLANCore::setRANGING_START(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  (*(v3 + 1952))(v2);
  v4 = *v1;
  OUTLINED_FUNCTION_181();
  OUTLINED_FUNCTION_113();
  return CCLogStream::logAlert(v5, "[dk] %s@%d:ranging already %s", v7, v8, v9);
}

uint64_t AppleBCMWLANCore::setRANGING_AUTHENTICATE(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 112);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Error: Unable to config proxd ftm: %s\n", v9, v10, v11);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_7_1();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:ERROR: %s:%u fProximityInterface not initialized, bailing out\n", v5, v6, v7, v8);
}

uint64_t AppleBCMWLANCore::HandleShutdownGated(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_10_5(a1);
  v4 = (*(v3 + 1952))(v2);
  return CCLogStream::logAlert(v4, "[dk] %s@%d:AppleBCMWLANCore[%u] [%p]\n", "HandleShutdownGated", 38578, 38578, v1);
}

{
  v1 = OUTLINED_FUNCTION_5_6(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_110();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:AdjustBusy(-1) busystate %u, fAdjustBusyCnt %u\n", "HandleShutdownGated", 38587, v5, v6);
}

uint64_t AppleBCMWLANCore::SetPowerState_Impl(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:DK: SetPowerState Core %u\n", v5, v6, v7);
}

{
  v3 = OUTLINED_FUNCTION_5_6(a1);
  v5 = (*(v4 + 1952))(v3);
  return CCLogStream::logAlert(v5, "[dk] %s@%d:DK: SetPowerState Core %u complete retval %#x\n", "SetPowerState_Impl", 38719, v1, *(*v2 + 24));
}

uint64_t AppleBCMWLANCore::SetPowerStateGated(uint64_t *a1, uint64_t a2, int a3)
{
  v5 = OUTLINED_FUNCTION_11_4(a1);
  v7 = (*(v6 + 1952))(v5);
  return CCLogStream::logNotice(v7, "[dk] %s@%d: powerState %u, fStateFlags 0x%lx\n", "SetPowerStateGated", 38778, a3, *(*(v3 + 72) + 10376));
}

uint64_t AppleBCMWLANCore::SetPowerStateGated(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logNotice(v3, "[dk] %s@%d: Already powered on, ignoring\n", "SetPowerStateGated", 38819);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logInfo(v3, "[dk] %s@%d: Already powered off, ignoring\n", "SetPowerStateGated", 38800);
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Bad Power State %u\n", v5, v6, v7);
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_68_0();
  return CCLogStream::logNotice(v3, "[dk] %s@%d:Received power state change before driver has initialized, ignoring 0x%08x\n", "SetPowerStateGated", 38784, v5);
}

uint64_t ___ZN16AppleBCMWLANCore18SetPowerState_ImplEj_block_invoke_2284_cold_1(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logCrit(v3, "[dk] %s@%d:Trigger powerOn Skywalk interfaces\n", "SetPowerState_Impl_block_invoke", 38724);
}

uint64_t AppleBCMWLANCore::powerOffSystem(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:System Sleep request before Driver has initialized, waiting\n", "powerOffSystem", 39332);
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_68_0();
  return CCLogStream::logNotice(v3, "[dk] %s@%d: Unavailable (0x%lX), waiting...\n", "powerOffSystem", 39341, v5);
}

{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 112);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logNotice(v1, "[dk] %s@%d: Timed out waiting for driver to reset itself: %s\n", v9, v10, v11);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logNotice(v3, "[dk] %s@%d: : Powering Off and sleeping\n", "powerOffSystem", 39356);
}

uint64_t AppleBCMWLANCore::powerOnSystem(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_68_0();
  return CCLogStream::logNotice(v3, "[dk] %s@%d: Dongle not yet initialized, deferring 0x%08x\n", "powerOnSystem", 38863, v5);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logEmergency(v3, "[dk] %s@%d:Last watchdog aborted, inducing another watchdog\n", "powerOnSystem", 38869);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logNotice(v3, "[dk] %s@%d: : Powering On\n", "powerOnSystem", 38878);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d: post BLACKLIST_NETWORK\n", "powerOnSystem", 38896);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logNotice(v3, "[dk] %s@%d: : Powered On\n", "powerOnSystem", 38906);
}

uint64_t AppleBCMWLANCore::watchdogFailed(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Last watchdog failed, max retries performed, bailing out\n", "watchdogFailed", 45077);
}

uint64_t AppleBCMWLANCore::allowLinkup(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logNoticeIf(v3, 0x8000000uLL, "[dk] %s@%d:Enter %s \n", v5, v6, v7);
}

{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 112);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Unable to turn off Link Up filtering %s\n", v9, v10, v11);
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v3, "[dk] %s@%d: Failed SET IOCTL, cret[0x%08x]\n", v5, v6, v7);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logNoticeIf(v3, 0x8000000uLL, "[dk] %s@%d:Leave %s \n", v5, v6, v7);
}

uint64_t AppleBCMWLANCore::resetPorts(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logNoticeIf(v3, 0x8000000uLL, "[dk] %s@%d:Enter %s \n", v5, v6, v7);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Failed to configure Active Ports\n", "resetPorts", 50421);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logNoticeIf(v3, 0x8000000uLL, "[dk] %s@%d:Leave %s \n", v5, v6, v7);
}

uint64_t AppleBCMWLANCore::collectScanForwardStats(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:sendIOVarGet failed, ret[0x%08x]\n", v5, v6, v7);
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:sendIOVarGet failed for spmi_scan_fwd, ret[0x%08x]\n", v5, v6, v7);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Failed to allocate buffer for scan forward stats\n", "collectScanForwardStats", 62419);
}

uint64_t AppleBCMWLANCore::processPowerStatsChangesInSleep(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 112);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Failure to get power stats changes, %s\n", v9, v10, v11);
}

uint64_t AppleBCMWLANCore::configureAssociatedSleepExit(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logNoticeIf(v3, 0x8000000uLL, "[dk] %s@%d:Enter %s \n", v5, v6, v7);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Failed to Configure WoW in F/W\n", "configureAssociatedSleepExit", 44087);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Failed to Configure LPAS in F/W\n", "configureAssociatedSleepExit", 44082);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d: Configuring Beacon drift mitigation params to FW Active mode\n", "configureAssociatedSleepExit", 44095);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Failed to enable EBT in F/W\n", "configureAssociatedSleepExit", 44139);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlertIf(v3, 0x20uLL, "[dk] %s@%d:Failed to Exit MIMO Power Save\n", "configureAssociatedSleepExit", 44148);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Failed to disable Beacon offload\n", "configureAssociatedSleepExit", 44155);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Failed to configure Associated Sleep Mode\n", "configureAssociatedSleepExit", 44162);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logNoticeIf(v3, 0x8000000uLL, "[dk] %s@%d:Leave %s \n", v5, v6, v7);
}

uint64_t AppleBCMWLANCore::systemWokenByWiFi(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:kern.wakereason: '%s'\n", v5, v6, v7);
}

uint64_t AppleBCMWLANCore::systemWokenByWiFi(uint64_t *a1, uint64_t a2, const char *a3)
{
  v5 = OUTLINED_FUNCTION_11_4(a1);
  v7 = (*(v6 + 1952))(v5);
  v8 = *(v3 + 72);
  if (v8)
  {
    LODWORD(v8) = *(v8 + 8824);
  }

  return CCLogStream::logAlert(v7, "[dk] %s@%d:rv[0x%08x] len[%3u], kern.wakereason: '%s', type[0x%08x]\n", "systemWokenByWiFi", 44771, -1, 255, a3, v8);
}

uint64_t AppleBCMWLANCore::setWiFiWakeType(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_36_1(a1);
  result = (*(v3 + 1952))(v2);
  if (result)
  {
    (*(*v1 + 1952))(v1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      (*(*v1 + 1952))(v1);
      OUTLINED_FUNCTION_11_3();
      return CCLogStream::logAlert(v5, "[dk] %s@%d:Can't set WiFiWakeType[0x%08x]", v6, v7, v8);
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::sendTxPowerCapValueToFirmware(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_68_0();
  return CCLogStream::logNotice(v3, "[dk] %s@%d:Deferring send Tx Power Cap Value to Firmware due to ivars->fStateFlags 0x%x\n", "sendTxPowerCapValueToFirmware", 53210, v5);
}

uint64_t AppleBCMWLANCore::resetRangingState(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d: Error: Unable to reset ranging state\n", "resetRangingState", 51670);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:resetRangingState %d infra interface is not exist\n", "resetRangingState", 51686, 51686);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Posted ranging abort event\n", "resetRangingState", 51688);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logCrit(v3, "[dk] %s@%d:NO INTER %s %d\n", "resetRangingState", 51659, "IOReturn AppleBCMWLANCore::resetRangingState(IOReturn)", 51659);
}

uint64_t AppleBCMWLANCore::configureAssociatedSleepEntry(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logNoticeIf(v3, 0x8000000uLL, "[dk] %s@%d:Enter %s \n", v5, v6, v7);
}

{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  v4 = (*(v3 + 1952))(v2);
  return CCLogStream::logAlert(v4, "[dk] %s@%d: Userland LPAS [%d] , Associated sleep [%d] \n", "configureAssociatedSleepEntry", 43626, *(*v1 + 6728), *(*v1 + 777));
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Failed to Configure WoW in F/W\n", "configureAssociatedSleepEntry", 43661);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d: Configuring Beacon drift mitigation params to FW WoW Mode\n", "configureAssociatedSleepEntry", 43666);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logInfo(v3, "[dk] %s@%d: Configuring Beacon drift mitigation params to FW LPAS mode \n", "configureAssociatedSleepEntry", 43648);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logInfo(v3, "[dk] %s@%d: Configuring Beacon mute mitigation params to FW LPAS mode \n", "configureAssociatedSleepEntry", 43652);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Failed to disable EBT in F/W\n", "configureAssociatedSleepEntry", 43674);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Failed to enable Beacon Offload in F/W\n", "configureAssociatedSleepEntry", 43682);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logNoticeIf(v3, 0x8000000uLL, "[dk] %s@%d:Leave %s \n", v5, v6, v7);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Failed to Configure LPAS in F/W\n", "configureAssociatedSleepEntry", 43644);
}

uint64_t AppleBCMWLANCore::configureEventBitMaskForUnAssociatedSleep(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logNoticeIf(v3, 0x8000000uLL, "[dk] %s@%d:Enter %s \n", v5, v6, v7);
}

{
  v2 = OUTLINED_FUNCTION_0_9(a1);
  (*(v3 + 1952))(v2);
  OUTLINED_FUNCTION_3_5();
  v5 = *(v4 + 112);
  v6 = OUTLINED_FUNCTION_16_2();
  v7(v6);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Failure to clear WLC_E_CCA_CHAN_QUAL/WLC_E_SCAN_COMPLETE events from the event mask, %s\n", v9, v10, v11);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logNoticeIf(v3, 0x8000000uLL, "[dk] %s@%d:Leave %s \n", v5, v6, v7);
}

uint64_t AppleBCMWLANCore::resetWoWStateMachine(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logNoticeIf(v3, 0x8000000uLL, "[dk] %s@%d:Enter %s \n", v5, v6, v7);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logNoticeIf(v3, 0x8000000uLL, "[dk] %s@%d:Leave %s \n", v5, v6, v7);
}

uint64_t AppleBCMWLANCore::resetPktFilterParams(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logNoticeIf(v3, 0x8000000uLL, "[dk] %s@%d:Enter %s \n", v5, v6, v7);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logNoticeIf(v3, 0x8000000uLL, "[dk] %s@%d:Leave %s \n", v5, v6, v7);
}

uint64_t AppleBCMWLANCore::configureWeightAvgLQMUpdates(uint64_t *a1)
{
  v3 = OUTLINED_FUNCTION_5_6(a1);
  (*(v4 + 1952))(v3);
  v5 = *(v1 + 8 * *v2);
  v6 = v2[1];
  v7 = v2[2];
  v8 = v2[3];
  OUTLINED_FUNCTION_112();
  return CCLogStream::logAlert(v9, "[dk] %s@%d:Weighted Averge %s Conf: NumTotal=%d, NumRecent=%d, WeightRecent=%d%%\n", "configureWeightAvgLQMUpdates", 40971, v11, v12, v13, v14);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Firmware does not support weighted average LQM\n", "configureWeightAvgLQMUpdates", 40958);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Error - Fail to configure weighted average LQM\n", "configureWeightAvgLQMUpdates", 40963);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Allocation Failure for Weighted Average LQM config\n", "configureWeightAvgLQMUpdates", 40944);
}

uint64_t AppleBCMWLANCore::setL3CtrlTxProfile(uint64_t *a1, uint64_t a2, unsigned __int16 *a3)
{
  v4 = OUTLINED_FUNCTION_0_8(a1);
  v6 = (*(v5 + 1952))(v4);
  LODWORD(a3) = *a3;
  OUTLINED_FUNCTION_81_0();
  v8 = *(v7 + 112);
  v9 = OUTLINED_FUNCTION_172();
  v11 = v10(v9);
  return CCLogStream::logAlert(v6, "[dk] %s@%d: Reliable L3 control frames tx_profile iovar command %d: %s \n", "setL3CtrlTxProfile", 41572, a3, v11);
}

uint64_t AppleBCMWLANCore::enablePTKKeyBuffer(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v3, "[dk] %s@%d: Error: Unable to set iovar buf_key_b4_m4 %x\n", v5, v6, v7);
}

uint64_t AppleBCMWLANCore::sendTxDCSlice0Ant0StatsCoreAnalytics(uint64_t *a1)
{
  OUTLINED_FUNCTION_9_10(a1);
  *v3 = v2 & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000;
  if (*(v4 + 1952))() && ((*(*v1 + 1952))(v1), (CCLogStream::shouldLog()))
  {
    return 0;
  }

  else
  {
    return OUTLINED_FUNCTION_98_0();
  }
}

{
  v2 = OUTLINED_FUNCTION_35_1(a1);
  result = (*(v3 + 1952))(v2);
  if (result)
  {
    (*(*v1 + 1952))(v1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v5 = (*(*v1 + 1952))(v1);
      return CCLogStream::logAlert(v5, "[dk] %s@%d:Fail to allocate keyString\n", "sendTxDCSlice0Ant0StatsCoreAnalytics", 41786);
    }
  }

  return result;
}

{
  v2 = OUTLINED_FUNCTION_35_1(a1);
  result = (*(v3 + 1952))(v2);
  if (result)
  {
    (*(*v1 + 1952))(v1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v5 = (*(*v1 + 1952))(v1);
      return CCLogStream::logAlert(v5, "[dk] %s@%d:Fail to allocate keyString\n", "sendTxDCSlice0Ant0StatsCoreAnalytics", 41778);
    }
  }

  return result;
}

{
  v2 = OUTLINED_FUNCTION_35_1(a1);
  result = (*(v3 + 1952))(v2);
  if (result)
  {
    (*(*v1 + 1952))(v1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v5 = (*(*v1 + 1952))(v1);
      return CCLogStream::logAlert(v5, "[dk] %s@%d:Fail to allocate keyString\n", "sendTxDCSlice0Ant0StatsCoreAnalytics", 41770);
    }
  }

  return result;
}

{
  v2 = OUTLINED_FUNCTION_35_1(a1);
  result = (*(v3 + 1952))(v2);
  if (result)
  {
    (*(*v1 + 1952))(v1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v5 = (*(*v1 + 1952))(v1);
      return CCLogStream::logAlert(v5, "[dk] %s@%d:Fail to allocate keyString\n", "sendTxDCSlice0Ant0StatsCoreAnalytics", 41762);
    }
  }

  return result;
}

{
  v2 = OUTLINED_FUNCTION_35_1(a1);
  result = (*(v3 + 1952))(v2);
  if (result)
  {
    (*(*v1 + 1952))(v1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v5 = (*(*v1 + 1952))(v1);
      return CCLogStream::logAlert(v5, "[dk] %s@%d:Fail to allocate keyString\n", "sendTxDCSlice0Ant0StatsCoreAnalytics", 41754);
    }
  }

  return result;
}

{
  v2 = OUTLINED_FUNCTION_35_1(a1);
  result = (*(v3 + 1952))(v2);
  if (result)
  {
    (*(*v1 + 1952))(v1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v5 = (*(*v1 + 1952))(v1);
      return CCLogStream::logAlert(v5, "[dk] %s@%d:Fail to allocate keyString\n", "sendTxDCSlice0Ant0StatsCoreAnalytics", 41746);
    }
  }

  return result;
}

{
  v2 = OUTLINED_FUNCTION_35_1(a1);
  result = (*(v3 + 1952))(v2);
  if (result)
  {
    (*(*v1 + 1952))(v1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v5 = (*(*v1 + 1952))(v1);
      return CCLogStream::logAlert(v5, "[dk] %s@%d:Fail to allocate keyString\n", "sendTxDCSlice0Ant0StatsCoreAnalytics", 41738);
    }
  }

  return result;
}

{
  v2 = OUTLINED_FUNCTION_35_1(a1);
  result = (*(v3 + 1952))(v2);
  if (result)
  {
    (*(*v1 + 1952))(v1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v5 = (*(*v1 + 1952))(v1);
      return CCLogStream::logAlert(v5, "[dk] %s@%d:Fail to allocate keyString\n", "sendTxDCSlice0Ant0StatsCoreAnalytics", 41730);
    }
  }

  return result;
}

{
  v2 = OUTLINED_FUNCTION_35_1(a1);
  result = (*(v3 + 1952))(v2);
  if (result)
  {
    (*(*v1 + 1952))(v1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v5 = (*(*v1 + 1952))(v1);
      return CCLogStream::logAlert(v5, "[dk] %s@%d:Fail to allocate keyString\n", "sendTxDCSlice0Ant0StatsCoreAnalytics", 41722);
    }
  }

  return result;
}

{
  v2 = OUTLINED_FUNCTION_35_1(a1);
  result = (*(v3 + 1952))(v2);
  if (result)
  {
    (*(*v1 + 1952))(v1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v5 = (*(*v1 + 1952))(v1);
      return CCLogStream::logAlert(v5, "[dk] %s@%d:Fail to allocate keyString\n", "sendTxDCSlice0Ant0StatsCoreAnalytics", 41714);
    }
  }

  return result;
}

{
  v2 = OUTLINED_FUNCTION_35_1(a1);
  result = (*(v3 + 1952))(v2);
  if (result)
  {
    (*(*v1 + 1952))(v1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v5 = (*(*v1 + 1952))(v1);
      return CCLogStream::logAlert(v5, "[dk] %s@%d:Fail to allocate eventPayload\n", "sendTxDCSlice0Ant0StatsCoreAnalytics", 41711);
    }
  }

  return result;
}

{
  v2 = OUTLINED_FUNCTION_35_1(a1);
  result = (*(v3 + 1952))(v2);
  if (result)
  {
    (*(*v1 + 1952))(v1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v5 = (*(*v1 + 1952))(v1);
      return CCLogStream::logAlert(v5, "[dk] %s@%d:Fail to allocate eventName\n", "sendTxDCSlice0Ant0StatsCoreAnalytics", 41709);
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::sendTxDCSlice1Ant0StatsCoreAnalytics(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_35_1(a1);
  result = (*(v3 + 1952))(v2);
  if (result)
  {
    (*(*v1 + 1952))(v1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v5 = (*(*v1 + 1952))(v1);
      return CCLogStream::logAlert(v5, "[dk] %s@%d:Fail to allocate keyString\n", "sendTxDCSlice1Ant0StatsCoreAnalytics", 41894);
    }
  }

  return result;
}

{
  v2 = OUTLINED_FUNCTION_35_1(a1);
  result = (*(v3 + 1952))(v2);
  if (result)
  {
    (*(*v1 + 1952))(v1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v5 = (*(*v1 + 1952))(v1);
      return CCLogStream::logAlert(v5, "[dk] %s@%d:Fail to allocate keyString\n", "sendTxDCSlice1Ant0StatsCoreAnalytics", 41886);
    }
  }

  return result;
}

{
  v2 = OUTLINED_FUNCTION_35_1(a1);
  result = (*(v3 + 1952))(v2);
  if (result)
  {
    (*(*v1 + 1952))(v1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v5 = (*(*v1 + 1952))(v1);
      return CCLogStream::logAlert(v5, "[dk] %s@%d:Fail to allocate keyString\n", "sendTxDCSlice1Ant0StatsCoreAnalytics", 41878);
    }
  }

  return result;
}

{
  v2 = OUTLINED_FUNCTION_35_1(a1);
  result = (*(v3 + 1952))(v2);
  if (result)
  {
    (*(*v1 + 1952))(v1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v5 = (*(*v1 + 1952))(v1);
      return CCLogStream::logAlert(v5, "[dk] %s@%d:Fail to allocate keyString\n", "sendTxDCSlice1Ant0StatsCoreAnalytics", 41870);
    }
  }

  return result;
}

{
  v2 = OUTLINED_FUNCTION_35_1(a1);
  result = (*(v3 + 1952))(v2);
  if (result)
  {
    (*(*v1 + 1952))(v1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v5 = (*(*v1 + 1952))(v1);
      return CCLogStream::logAlert(v5, "[dk] %s@%d:Fail to allocate keyString\n", "sendTxDCSlice1Ant0StatsCoreAnalytics", 41862);
    }
  }

  return result;
}

{
  v2 = OUTLINED_FUNCTION_35_1(a1);
  result = (*(v3 + 1952))(v2);
  if (result)
  {
    (*(*v1 + 1952))(v1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v5 = (*(*v1 + 1952))(v1);
      return CCLogStream::logAlert(v5, "[dk] %s@%d:Fail to allocate keyString\n", "sendTxDCSlice1Ant0StatsCoreAnalytics", 41854);
    }
  }

  return result;
}

{
  v2 = OUTLINED_FUNCTION_35_1(a1);
  result = (*(v3 + 1952))(v2);
  if (result)
  {
    (*(*v1 + 1952))(v1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v5 = (*(*v1 + 1952))(v1);
      return CCLogStream::logAlert(v5, "[dk] %s@%d:Fail to allocate keyString\n", "sendTxDCSlice1Ant0StatsCoreAnalytics", 41846);
    }
  }

  return result;
}

{
  v2 = OUTLINED_FUNCTION_35_1(a1);
  result = (*(v3 + 1952))(v2);
  if (result)
  {
    (*(*v1 + 1952))(v1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v5 = (*(*v1 + 1952))(v1);
      return CCLogStream::logAlert(v5, "[dk] %s@%d:Fail to allocate keyString\n", "sendTxDCSlice1Ant0StatsCoreAnalytics", 41838);
    }
  }

  return result;
}

{
  v2 = OUTLINED_FUNCTION_35_1(a1);
  result = (*(v3 + 1952))(v2);
  if (result)
  {
    (*(*v1 + 1952))(v1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v5 = (*(*v1 + 1952))(v1);
      return CCLogStream::logAlert(v5, "[dk] %s@%d:Fail to allocate keyString\n", "sendTxDCSlice1Ant0StatsCoreAnalytics", 41830);
    }
  }

  return result;
}

{
  v2 = OUTLINED_FUNCTION_35_1(a1);
  result = (*(v3 + 1952))(v2);
  if (result)
  {
    (*(*v1 + 1952))(v1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v5 = (*(*v1 + 1952))(v1);
      return CCLogStream::logAlert(v5, "[dk] %s@%d:Fail to allocate keyString\n", "sendTxDCSlice1Ant0StatsCoreAnalytics", 41822);
    }
  }

  return result;
}

{
  v2 = OUTLINED_FUNCTION_35_1(a1);
  result = (*(v3 + 1952))(v2);
  if (result)
  {
    (*(*v1 + 1952))(v1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v5 = (*(*v1 + 1952))(v1);
      return CCLogStream::logAlert(v5, "[dk] %s@%d:Fail to allocate eventPayload\n", "sendTxDCSlice1Ant0StatsCoreAnalytics", 41819);
    }
  }

  return result;
}

{
  v2 = OUTLINED_FUNCTION_35_1(a1);
  result = (*(v3 + 1952))(v2);
  if (result)
  {
    (*(*v1 + 1952))(v1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v5 = (*(*v1 + 1952))(v1);
      return CCLogStream::logAlert(v5, "[dk] %s@%d:Fail to allocate eventName\n", "sendTxDCSlice1Ant0StatsCoreAnalytics", 41817);
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::sendDynSARPerSliceStatsCoreAnalytics(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_35_1(a1);
  result = (*(v3 + 1952))(v2);
  if (result)
  {
    (*(*v1 + 1952))(v1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v5 = (*(*v1 + 1952))(v1);
      return CCLogStream::logAlert(v5, "[dk] %s@%d:Fail to allocate keyString\n", "sendDynSARPerSliceStatsCoreAnalytics", 41990);
    }
  }

  return result;
}

{
  v2 = OUTLINED_FUNCTION_35_1(a1);
  result = (*(v3 + 1952))(v2);
  if (result)
  {
    (*(*v1 + 1952))(v1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v5 = (*(*v1 + 1952))(v1);
      return CCLogStream::logAlert(v5, "[dk] %s@%d:Fail to allocate keyString\n", "sendDynSARPerSliceStatsCoreAnalytics", 41982);
    }
  }

  return result;
}

{
  v2 = OUTLINED_FUNCTION_35_1(a1);
  result = (*(v3 + 1952))(v2);
  if (result)
  {
    (*(*v1 + 1952))(v1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v5 = (*(*v1 + 1952))(v1);
      return CCLogStream::logAlert(v5, "[dk] %s@%d:Fail to allocate keyString\n", "sendDynSARPerSliceStatsCoreAnalytics", 41974);
    }
  }

  return result;
}

{
  v2 = OUTLINED_FUNCTION_35_1(a1);
  result = (*(v3 + 1952))(v2);
  if (result)
  {
    (*(*v1 + 1952))(v1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v5 = (*(*v1 + 1952))(v1);
      return CCLogStream::logAlert(v5, "[dk] %s@%d:Fail to allocate keyString\n", "sendDynSARPerSliceStatsCoreAnalytics", 41966);
    }
  }

  return result;
}

{
  v2 = OUTLINED_FUNCTION_35_1(a1);
  result = (*(v3 + 1952))(v2);
  if (result)
  {
    (*(*v1 + 1952))(v1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v5 = (*(*v1 + 1952))(v1);
      return CCLogStream::logAlert(v5, "[dk] %s@%d:Fail to allocate keyString\n", "sendDynSARPerSliceStatsCoreAnalytics", 41958);
    }
  }

  return result;
}

{
  v2 = OUTLINED_FUNCTION_35_1(a1);
  result = (*(v3 + 1952))(v2);
  if (result)
  {
    (*(*v1 + 1952))(v1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v5 = (*(*v1 + 1952))(v1);
      return CCLogStream::logAlert(v5, "[dk] %s@%d:Fail to allocate keyString\n", "sendDynSARPerSliceStatsCoreAnalytics", 41950);
    }
  }

  return result;
}

{
  v2 = OUTLINED_FUNCTION_35_1(a1);
  result = (*(v3 + 1952))(v2);
  if (result)
  {
    (*(*v1 + 1952))(v1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v5 = (*(*v1 + 1952))(v1);
      return CCLogStream::logAlert(v5, "[dk] %s@%d:Fail to allocate keyString\n", "sendDynSARPerSliceStatsCoreAnalytics", 41942);
    }
  }

  return result;
}

{
  v2 = OUTLINED_FUNCTION_35_1(a1);
  result = (*(v3 + 1952))(v2);
  if (result)
  {
    (*(*v1 + 1952))(v1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v5 = (*(*v1 + 1952))(v1);
      return CCLogStream::logAlert(v5, "[dk] %s@%d:Fail to allocate keyString\n", "sendDynSARPerSliceStatsCoreAnalytics", 41934);
    }
  }

  return result;
}

{
  v2 = OUTLINED_FUNCTION_35_1(a1);
  result = (*(v3 + 1952))(v2);
  if (result)
  {
    (*(*v1 + 1952))(v1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v5 = (*(*v1 + 1952))(v1);
      return CCLogStream::logAlert(v5, "[dk] %s@%d:Fail to allocate eventPayload\n", "sendDynSARPerSliceStatsCoreAnalytics", 41931);
    }
  }

  return result;
}

{
  v2 = OUTLINED_FUNCTION_35_1(a1);
  result = (*(v3 + 1952))(v2);
  if (result)
  {
    (*(*v1 + 1952))(v1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v5 = (*(*v1 + 1952))(v1);
      return CCLogStream::logAlert(v5, "[dk] %s@%d:Fail to allocate eventName\n", "sendDynSARPerSliceStatsCoreAnalytics", 41929);
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::sendHostScanStatsCoreAnalytics(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_35_1(a1);
  result = (*(v3 + 1952))(v2);
  if (result)
  {
    (*(*v1 + 1952))(v1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v5 = (*(*v1 + 1952))(v1);
      return CCLogStream::logAlert(v5, "[dk] %s@%d:Scan stats are empty, won't send to CoreAnalytics\n", "sendHostScanStatsCoreAnalytics", 42193);
    }
  }

  return result;
}

{
  v2 = OUTLINED_FUNCTION_35_1(a1);
  result = (*(v3 + 1952))(v2);
  if (result)
  {
    (*(*v1 + 1952))(v1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v5 = (*(*v1 + 1952))(v1);
      return CCLogStream::logAlert(v5, "[dk] %s@%d:Fail to allocate eventName\n", "sendHostScanStatsCoreAnalytics", 42190);
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::prepareScanMotionStatsForCA(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logInfo(v3, "[dk] %s@%d:Prepared Scan Motion Stats event to CA\n", "prepareScanMotionStatsForCA", 42268);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Fail to allocate valueHostRejWhileMov\n", "prepareScanMotionStatsForCA", 42265);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Fail to allocate keyHostRejWhileMov\n", "prepareScanMotionStatsForCA", 42263);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Fail to allocate valueHostWhileMov\n", "prepareScanMotionStatsForCA", 42259);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Fail to allocate keyHostWhileMov\n", "prepareScanMotionStatsForCA", 42257);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Fail to allocate valueLowPrioWhileStat\n", "prepareScanMotionStatsForCA", 42253);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Fail to allocate keyLowPrioWhileStat\n", "prepareScanMotionStatsForCA", 42251);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Fail to allocate valueLowPrioWhileMov\n", "prepareScanMotionStatsForCA", 42247);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Fail to allocate keyLowPrioWhileMov\n", "prepareScanMotionStatsForCA", 42245);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Fail to allocate valueNormPrioWhileStat\n", "prepareScanMotionStatsForCA", 42241);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Fail to allocate keyNormPrioWhileStat\n", "prepareScanMotionStatsForCA", 42239);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Fail to allocate valueNormPrioWhileMov\n", "prepareScanMotionStatsForCA", 42235);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Fail to allocate keyNormPrioWhileMov\n", "prepareScanMotionStatsForCA", 42233);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Fail to allocate valueSessionDur\n", "prepareScanMotionStatsForCA", 42229);
}

{
  v2 = OUTLINED_FUNCTION_35_1(a1);
  result = (*(v3 + 1952))(v2);
  if (result)
  {
    (*(*v1 + 1952))(v1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v5 = (*(*v1 + 1952))(v1);
      return CCLogStream::logAlert(v5, "[dk] %s@%d:Fail to allocate keySessionDur\n", "prepareScanMotionStatsForCA", 42227);
    }
  }

  return result;
}

{
  v2 = OUTLINED_FUNCTION_35_1(a1);
  result = (*(v3 + 1952))(v2);
  if (result)
  {
    (*(*v1 + 1952))(v1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v5 = (*(*v1 + 1952))(v1);
      return CCLogStream::logAlert(v5, "[dk] %s@%d:Fail to allocate eventPayload\n", "prepareScanMotionStatsForCA", 42224);
    }
  }

  return result;
}

{
  v2 = OUTLINED_FUNCTION_35_1(a1);
  result = (*(v3 + 1952))(v2);
  if (result)
  {
    (*(*v1 + 1952))(v1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v5 = (*(*v1 + 1952))(v1);
      return CCLogStream::logCrit(v5, "[dk] %s@%d:Failed to allocate AppleBCMWLANRoamManager_IVars\n", "prepareScanMotionStatsForCA", 42220);
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::prepareScanRoamStatsForCA(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logInfo(v3, "[dk] %s@%d:Prepared Scan/Roam event to CA\n", "prepareScanRoamStatsForCA", 42365);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Fail to allocate valueNumBkToBkScanReqHigh\n", "prepareScanRoamStatsForCA", 42362);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Fail to allocate valueNumBkToBkScanReqLow\n", "prepareScanRoamStatsForCA", 42356);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Fail to allocate keyNumBkToBkScanReqLow\n", "prepareScanRoamStatsForCA", 42354);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Fail to allocate valueNumBkToBkScanReq\n", "prepareScanRoamStatsForCA", 42350);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Fail to allocate keyNumBkToBkScanReq\n", "prepareScanRoamStatsForCA", 42348);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Fail to allocate valueNumHostScanLowPrioOR\n", "prepareScanRoamStatsForCA", 42344);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Fail to allocate keyNumHostScanLowPrioOR\n", "prepareScanRoamStatsForCA", 42342);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Fail to allocate valueNumHostScanLowLat\n", "prepareScanRoamStatsForCA", 42338);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Fail to allocate keyNumHostScanLowLat\n", "prepareScanRoamStatsForCA", 42336);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Fail to allocate valNumHostScanLowPrio\n", "prepareScanRoamStatsForCA", 42332);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Fail to allocate keyNumHostScanLowPrio\n", "prepareScanRoamStatsForCA", 42330);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Fail to allocate valueNumHostScanComp\n", "prepareScanRoamStatsForCA", 42326);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Fail to allocate valueNumHostScanReq\n", "prepareScanRoamStatsForCA", 42314);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Fail to allocate keyNumHostScanReq\n", "prepareScanRoamStatsForCA", 42312);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Fail to allocate valueLocWithinXSecRoam\n", "prepareScanRoamStatsForCA", 42308);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Fail to allocate keyLocWithinXSecRoam\n", "prepareScanRoamStatsForCA", 42306);
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v3 = (*(v2 + 1952))(v1);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Fail to allocate valueRoamWithinXsec\n", "prepareScanRoamStatsForCA", 42302);
}

{
  v2 = OUTLINED_FUNCTION_35_1(a1);
  result = (*(v3 + 1952))(v2);
  if (result)
  {
    (*(*v1 + 1952))(v1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v5 = (*(*v1 + 1952))(v1);
      return CCLogStream::logAlert(v5, "[dk] %s@%d:Fail to allocate keyRoamWithinXsec\n", "prepareScanRoamStatsForCA", 42300);
    }
  }

  return result;
}

{
  v2 = OUTLINED_FUNCTION_35_1(a1);
  result = (*(v3 + 1952))(v2);
  if (result)
  {
    (*(*v1 + 1952))(v1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v5 = (*(*v1 + 1952))(v1);
      return CCLogStream::logCrit(v5, "[dk] %s@%d:Failed to allocate AppleBCMWLANRoamManager_IVars\n", "prepareScanRoamStatsForCA", 42298);
    }
  }

  return result;
}