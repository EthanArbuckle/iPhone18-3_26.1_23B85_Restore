void AppleBCMWLANLQM::updateSliceRxAmpduStats()
{
  OUTLINED_FUNCTION_4();
  if (OUTLINED_FUNCTION_3(v0) && CCLogStream::shouldLog())
  {
    v1 = OUTLINED_FUNCTION_9();
    CCLogStream::logAlert(v1, "[dk] %s@%d:alignment fails\n", "updateSliceRxAmpduStats", 2267);
  }

  OUTLINED_FUNCTION_2();
}

void AppleBCMWLANLQM::updateSliceRxAmpduStats(uint64_t a1)
{
  if (OUTLINED_FUNCTION_3(a1))
  {
    v3 = v2;
    if (CCLogStream::shouldLog())
    {
      CCLogStream::logEmergency(*(*a1 + 24), "[dk] %s@%d:Out of range slice index %d\n", "updateSliceRxAmpduStats", 2266, v3);
    }
  }

  OUTLINED_FUNCTION_2();
}

uint64_t AppleBCMWLANLQM::loadBss(uint64_t ***a1)
{
  v2 = OUTLINED_FUNCTION_0(a1);
  (*(v3 + 112))(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logCrit(v1, "[dk] %s@%d: WLC_GET_BSS_INFO Failed %s\n", v5, v6, v7);
}

uint64_t AppleBCMWLANLQM::loadBss(uint64_t a1)
{
  v2 = *(*a1 + 24);
  if (IO80211_io80211isSensitiveInfoAllowed())
  {
    v3 = *(*a1 + 6552);
  }

  else
  {
    v3 = 0;
  }

  if (IO80211_io80211isSensitiveInfoAllowed())
  {
    v4 = *(*a1 + 6553);
  }

  else
  {
    v4 = 0;
  }

  if (IO80211_io80211isSensitiveInfoAllowed())
  {
    v5 = *(*a1 + 6554);
  }

  else
  {
    v5 = 0;
  }

  if (IO80211_io80211isSensitiveInfoAllowed())
  {
    v6 = *(*a1 + 6555);
  }

  else
  {
    v6 = 0;
  }

  if (IO80211_io80211isSensitiveInfoAllowed())
  {
    v7 = *(*a1 + 6556);
  }

  else
  {
    v7 = 0;
  }

  if (IO80211_io80211isSensitiveInfoAllowed())
  {
    v8 = *(*a1 + 6557);
  }

  else
  {
    v8 = 0;
  }

  return CCLogStream::logNoticeIf(v2, 0x200uLL, "[dk] %s@%d: Invalid MAC %02x:%02x:%02x:%02x:%02x:%02x (%u / %u)\n", "loadBss", 2496, v3, v4, v5, v6, v7, v8, *(*a1 + 6538), *(*a1 + 8476));
}

{
  v1 = OUTLINED_FUNCTION_3(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Invalid MAC reported %u times\n", "loadBss", 2507, *(v2 + 6538));
}

uint64_t AppleBCMWLANLQM::checkForChannelSwitch(uint64_t a1, unsigned __int16 a2, void *a3, void *a4)
{
  v7 = *(a1 + 24);
  CurrentBSS = AppleBCMWLANBssManager::getCurrentBSS(*(a1 + 16));
  v9 = (*(*CurrentBSS + 256))(CurrentBSS);
  result = CCLogStream::logAlertIf(v7, 0x200uLL, "[dk] %s@%d:updated channel spec %x ch %u\n", "checkForChannelSwitch", 2537, a2, v9);
  *a4 = *a3;
  return result;
}

uint64_t AppleBCMWLANLQM::updateBSSInfo(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_3(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Failed to get per core RSSI \n", "updateBSSInfo", 2569);
}

{
  v1 = OUTLINED_FUNCTION_3(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Failed to get noise Delta \n", "updateBSSInfo", 2575);
}

uint64_t AppleBCMWLANLQM::getStaInfo(uint64_t ***a1)
{
  v2 = OUTLINED_FUNCTION_0(a1);
  (*(v3 + 112))(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logCrit(v1, "[dk] %s@%d: Failed to get peer Stats, error %s\n", v5, v6, v7);
}

uint64_t AppleBCMWLANLQM::updateMloLinkChangeInfo(uint64_t a1, unsigned __int16 *a2, unsigned __int8 *a3)
{
  v16 = *a2;
  v17 = *(*a1 + 24);
  v15 = a2[1];
  v4 = *a3;
  v5 = *(a2 + 5);
  v6 = *(a2 + 12);
  v7 = *(a2 + 13);
  if (IO80211_io80211isSensitiveInfoAllowed())
  {
    v8 = *(a2 + 6);
  }

  else
  {
    v8 = 0;
  }

  if (IO80211_io80211isSensitiveInfoAllowed())
  {
    v9 = *(a2 + 7);
  }

  else
  {
    v9 = 0;
  }

  if (IO80211_io80211isSensitiveInfoAllowed())
  {
    v10 = *(a2 + 8);
  }

  else
  {
    v10 = 0;
  }

  if (IO80211_io80211isSensitiveInfoAllowed())
  {
    v11 = *(a2 + 9);
  }

  else
  {
    v11 = 0;
  }

  if (IO80211_io80211isSensitiveInfoAllowed())
  {
    v12 = *(a2 + 10);
  }

  else
  {
    v12 = 0;
  }

  if (IO80211_io80211isSensitiveInfoAllowed())
  {
    v13 = *(a2 + 11);
  }

  else
  {
    v13 = 0;
  }

  return CCLogStream::logAlert(v17, "[dk] %s@%d:v=<%d> len=<%d> opcode<%d> role=<%d> num_links=<%d>  pref_band_link_idx=<%d> mld_addr =%02x:%02x:%02x:%02x:%02x:%02x\n", "updateMloLinkChangeInfo", 2655, v16, v15, v4, v5, v6, v7, v8, v9, v10, v11, v12, v13);
}

uint64_t AppleBCMWLANLQM::updateMloLinkChangeInfo(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v4 = (a2 + 12 * a3);
  v16 = *v4;
  v17 = *(*a1 + 24);
  v15 = v4[1];
  v5 = v4[2];
  v6 = v4[3];
  v7 = *(v4 + 5);
  if (IO80211_io80211isSensitiveInfoAllowed())
  {
    v8 = v4[4];
  }

  else
  {
    v8 = 0;
  }

  if (IO80211_io80211isSensitiveInfoAllowed())
  {
    v9 = v4[5];
  }

  else
  {
    v9 = 0;
  }

  if (IO80211_io80211isSensitiveInfoAllowed())
  {
    v10 = v4[6];
  }

  else
  {
    v10 = 0;
  }

  if (IO80211_io80211isSensitiveInfoAllowed())
  {
    v11 = v4[7];
  }

  else
  {
    v11 = 0;
  }

  if (IO80211_io80211isSensitiveInfoAllowed())
  {
    v12 = v4[8];
  }

  else
  {
    v12 = 0;
  }

  if (IO80211_io80211isSensitiveInfoAllowed())
  {
    v13 = v4[9];
  }

  else
  {
    v13 = 0;
  }

  return CCLogStream::logAlert(v17, "[dk] %s@%d:i =<%d> if_idx=<%d> cfg_idx=<%d> link_id<%d> link_idx=<%d> chanspec=<%x> link_addr =%02x:%02x:%02x:%02x:%02x:%02x\n", "updateMloLinkChangeInfo", 2665, v3, v16, v15, v5, v6, v7, v8, v9, v10, v11, v12, v13);
}

uint64_t AppleBCMWLANLQM::getMloPerLinkStats(uint64_t ***a1)
{
  v2 = OUTLINED_FUNCTION_0(a1);
  (*(v3 + 112))(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logCrit(v1, "[dk] %s@%d: Failed to get peer Stats, error %s\n", v5, v6, v7);
}

uint64_t AppleBCMWLANLQM::getLegacyCCAStats(uint64_t ***a1)
{
  v2 = OUTLINED_FUNCTION_0(a1);
  (*(v3 + 112))(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Unable to get Legacy CCA Stats %s\n", v5, v6, v7);
}

uint64_t AppleBCMWLANLQM::printPeerCommonStats(uint64_t a1, uint64_t a2, unsigned __int8 *a3, int a4)
{
  v4 = *(*a1 + 24);
  v5 = *a3;
  v6 = a3[1];
  v7 = a3[2];
  v8 = a3[3];
  v19 = *(a3 + 2);
  v16 = a3[4];
  v17 = a3[5];
  OUTLINED_FUNCTION_10();
  return CCLogStream::logAlert(v9, "[dk] %s@%d:<-------> %s [%02x:%02x:%02x:%02x:%02x:%02x] interface %u, observation_time %u ms <------->\n", "printPeerCommonStats", 3448, v11, v12, v13, v14, v15, v16, v17, a4, v19);
}

uint64_t AppleBCMWLANLQM::printPeerTxAmpduStats(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_3(a1);
  OUTLINED_FUNCTION_15(v1, v2);
  v15 = v3;
  v16 = v4;
  OUTLINED_FUNCTION_13();
  return CCLogStream::logAlert(v5, "[dk] %s@%d:P2P Peer TXAMPDU: ampdu %u, mpdu %u, ucast %u, addbareq %u, rxaddbaresp %u, delba %u, rxdelba %u, bar %u, per %u %%, latency(P95) %u ms\n", "printPeerTxAmpduStats", 3484, v7, v8, v9, v10, v11, v12, v13, v14, v15, v16);
}

{
  v1 = OUTLINED_FUNCTION_3(a1);
  OUTLINED_FUNCTION_15(v1, v2);
  OUTLINED_FUNCTION_13();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:SoftAP Client TXAMPDU: ampdu %u, mpdu %u, ucast %u, addbareq %u, rxaddbaresp %u, delba %u, rxdelba %u, bar %u\n", "printPeerTxAmpduStats", 3479, v5, v6, v7, v8, v9, v10, v11, v12);
}

uint64_t AppleBCMWLANBGScanAdapter::initScanMac(uint64_t a1)
{
  v1 = (*a1 + 4096);
  return CCLogStream::logAlert(*(*a1 + 24), "[dk] %s@%d:boot-args set Private MAC address to %02x:%02x:%02x:%02x:%02x:%02x\n", "initScanMac", 1753, v1[768], v1[769], v1[770], v1[771], v1[772], v1[773]);
}

{
  v1 = (*a1 + 4096);
  return CCLogStream::logAlert(*(*a1 + 24), "[dk] %s@%d:boot-args set Scan MAC Random Mask to %02x:%02x:%02x:%02x:%02x:%02x\n", "initScanMac", 1768, v1[780], v1[781], v1[782], v1[783], v1[784], v1[785]);
}

{
  v1 = OUTLINED_FUNCTION_3(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Failed to Init Scan Privacy Mac timer\n", "initScanMac", 1779);
}

uint64_t AppleBCMWLANBGScanAdapter::setWCL_CONFIG_BG_MOTIONPROFILE(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_3(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Configure BG Motion Profile\n", "setWCL_CONFIG_BG_MOTIONPROFILE", 187);
}

{
  v1 = OUTLINED_FUNCTION_3(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Failed to configure Motion Profile Mapping\n", "setWCL_CONFIG_BG_MOTIONPROFILE", 190);
}

{
  v1 = OUTLINED_FUNCTION_3(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Failed to configure Motion Profile for PNO\n", "setWCL_CONFIG_BG_MOTIONPROFILE", 196);
}

{
  v1 = OUTLINED_FUNCTION_3(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Failed to configure Motion Profile for EPNO\n", "setWCL_CONFIG_BG_MOTIONPROFILE", 201);
}

{
  v1 = OUTLINED_FUNCTION_3(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Configured Motion Profiles for SSID/BSSID Based PNO Networks\n", "setWCL_CONFIG_BG_MOTIONPROFILE", 203);
}

uint64_t AppleBCMWLANBGScanAdapter::configureMotionProfileMapping(uint64_t ***a1)
{
  v2 = OUTLINED_FUNCTION_0(a1);
  (*(v3 + 112))(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Error: Failed to Configure Motion Profile Mapping :  Ret %s\n", v5, v6, v7);
}

uint64_t AppleBCMWLANBGScanAdapter::configureMotionProfilePNO(uint64_t ***a1)
{
  v2 = OUTLINED_FUNCTION_0(a1);
  (*(v3 + 112))(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Error: Failed to Configure Motion Profile Set :  Ret %s\n", v5, v6, v7);
}

uint64_t AppleBCMWLANBGScanAdapter::configureMotionProfileEPNO(uint64_t ***a1)
{
  v2 = OUTLINED_FUNCTION_0(a1);
  (*(v3 + 112))(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Error: Failed to Configure Motion Profile Set :  Ret %s\n", v5, v6, v7);
}

uint64_t AppleBCMWLANBGScanAdapter::configurePFNSuspend(uint64_t ***a1)
{
  v2 = OUTLINED_FUNCTION_0(a1);
  (*(v3 + 112))(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Failure to start PNO: %s\n", v5, v6, v7);
}

{
  v2 = OUTLINED_FUNCTION_0(a1);
  (*(v3 + 112))(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Failure to start PFN: %s\n", v5, v6, v7);
}

uint64_t AppleBCMWLANBGScanAdapter::populatePreferredBSSIDNetworks(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_3(a1);
  v5 = "LOST";
  if ((*v4 & 0x10) == 0)
  {
    v5 = 0;
  }

  if ((*v4 & 8) != 0)
  {
    v6 = "FOUND";
  }

  else
  {
    v6 = 0;
  }

  return CCLogStream::logAlert(v1, "[dk] %s@%d:Add BSSID %02x:%02x:%02x:%02x:%02x:%02x, [%s %s]\n", "populatePreferredBSSIDNetworks", 948, *v2, v2[1], v2[2], v2[3], *v3, v2[5], v5, v6);
}

uint64_t AppleBCMWLANBGScanAdapter::setWCL_CONFIG_BGSCAN(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_3(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Disable BGScan\n", "setWCL_CONFIG_BGSCAN", 416);
}

{
  v1 = OUTLINED_FUNCTION_3(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Configure PNO\n", "setWCL_CONFIG_BGSCAN", 421);
}

{
  v1 = OUTLINED_FUNCTION_3(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Configure EPNO\n", "setWCL_CONFIG_BGSCAN", 429);
}

uint64_t AppleBCMWLANBGScanAdapter::configPNO(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a1[3];
  (*(**a1 + 112))(*a1);
  OUTLINED_FUNCTION_6();
  result = CCLogStream::logAlert(v6, "[dk] %s@%d: Failure to set number of scan probes: %s\n", v8, v9, v10);
  *a4 = *a3;
  return result;
}

uint64_t AppleBCMWLANBGScanAdapter::handlePFNSuspendAsyncCallBack(uint64_t ***a1)
{
  v2 = OUTLINED_FUNCTION_0(a1);
  (*(v3 + 112))(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Error: cannot set PFN Suspend/Resume : %s\n", v5, v6, v7);
}

uint64_t AppleBCMWLANBGScanAdapter::configureBGScanParams(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_3(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Prohibited channel scanning not allowed in PNO\n", "configureBGScanParams", 967);
}

{
  v1 = OUTLINED_FUNCTION_3(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d: BSSID based PNO is Configured\n", "configureBGScanParams", 983);
}

{
  v1 = OUTLINED_FUNCTION_3(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Invaid chanspec channel=%d flags=0x%x. skipping channel -> WA for wifid bug!\n", "configureBGScanParams", 1018, *(v3 + 12 * v2 + 48), *(v3 + 12 * v2 + 52));
}

{
  v1 = OUTLINED_FUNCTION_3(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:No valid channels num req %d \n", "configureBGScanParams", 1037, *(v2 + 40));
}

{
  v1 = OUTLINED_FUNCTION_3(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d: SSID based PNO and Background Scan Cache are Configured\n", "configureBGScanParams", 987);
}

{
  v1 = OUTLINED_FUNCTION_3(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d: SSID based PNO is Configured\n", "configureBGScanParams", 990);
}

{
  v1 = OUTLINED_FUNCTION_3(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:WL_PFN_REPORT_ALLNET configured\n", "configureBGScanParams", 979);
}

uint64_t AppleBCMWLANBGScanAdapter::configureBGScanParams(uint64_t ***a1)
{
  v2 = OUTLINED_FUNCTION_0(a1);
  (*(v3 + 112))(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Failure to configure PFN : %s\n", v5, v6, v7);
}

uint64_t AppleBCMWLANBGScanAdapter::configureDynamicScanFreq(uint64_t ***a1, char a2)
{
  v2 = (*a1)[3];
  if (a2)
  {
    v3 = "UnConfigure";
  }

  else
  {
    v3 = "Configure";
  }

  v4 = OUTLINED_FUNCTION_1_0(*a1);
  v7 = (*(v5 + 112))(v4, v6);
  return CCLogStream::logAlert(v2, "[dk] %s@%d: Error: Failed to %s Dynamic Scan Freq :  Ret %s\n", "configureDynamicScanFreq", 1088, v3, v7);
}

uint64_t AppleBCMWLANBGScanAdapter::configureUnAssociatedScanTime(uint64_t ***a1, char a2)
{
  v2 = (*a1)[3];
  if (a2)
  {
    v3 = "Configure";
  }

  else
  {
    v3 = "UnConfigure";
  }

  v4 = OUTLINED_FUNCTION_1_0(*a1);
  v7 = *v6;
  v9 = (*(v5 + 112))(v4, v8);
  return CCLogStream::logAlert(v2, "[dk] %s@%d: Failure to %s UnAssociated Scan Time to %u: %s\n", "configureUnAssociatedScanTime", 1112, v3, v7, v9);
}

uint64_t AppleBCMWLANBGScanAdapter::collectBGScanCachedResults(uint64_t a1)
{
  v1 = *(*a1 + 24);
  CurrentContinuousTimeMilliSeconds = getCurrentContinuousTimeMilliSeconds();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Start Collecting Cache Results @ Time %llu\n", "collectBGScanCachedResults", 1123, CurrentContinuousTimeMilliSeconds / 0x3E8);
}

{
  v1 = OUTLINED_FUNCTION_3(a1);
  return CCLogStream::logAlertIf(v1, 0x80000000uLL, "[dk] %s@%d:bgScanResultsComplete %d\n", "collectBGScanCachedResults", 1131, *v2);
}

uint64_t AppleBCMWLANBGScanAdapter::getMotionProfileState(uint64_t ***a1, int a2)
{
  v3 = (*a1)[3];
  v4 = OUTLINED_FUNCTION_1_0(*a1);
  v6 = (*(v5 + 112))(v4);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Error: cannot get mpf state : ret %x: %s\n", "getMotionProfileState", 849, a2, v6);
}

uint64_t AppleBCMWLANBGScanAdapter::handleGetMotionStateAsyncCallBack(uint64_t ***a1)
{
  v2 = OUTLINED_FUNCTION_0(a1);
  (*(v3 + 112))(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Error: cannot get mpf state from the firmware: %s\n", v5, v6, v7);
}

uint64_t AppleBCMWLANBGScanAdapter::handleGetMotionStateAsyncCallBack(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_3(a1);
  v3 = *(v2 + 4);
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      v4 = "Driving";
    }

    else
    {
      v4 = "Unknown";
    }
  }

  else
  {
    v4 = off_1003C5488[*(v2 + 4)];
  }

  return CCLogStream::logInfo(v1, "[dk] %s@%d:Device is %s\n", "handleGetMotionStateAsyncCallBack", 877, v4);
}

{
  v1 = OUTLINED_FUNCTION_3(a1);
  return CCLogStream::logNotice(v1, "[dk] %s@%d: no valid data \n", "handleGetMotionStateAsyncCallBack", 868);
}

uint64_t AppleBCMWLANBGScanAdapter::handleSetDynamicScanFreqAsyncCallBack(uint64_t ***a1)
{
  v2 = OUTLINED_FUNCTION_0(a1);
  (*(v3 + 112))(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Error: cannot set Dynamic Scan Freq : %s\n", v5, v6, v7);
}

uint64_t AppleBCMWLANBGScanAdapter::retrieveBGScanCachedInfo(uint64_t ***a1)
{
  v2 = OUTLINED_FUNCTION_0(a1);
  (*(v3 + 112))(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Error: Failed to collect BGScan Results :  Ret %s\n", v5, v6, v7);
}

uint64_t AppleBCMWLANBGScanAdapter::assembleBGScanCachedResults(uint64_t a1, _DWORD *a2, _BYTE *a3)
{
  result = *(*(a1 + 40) + 24);
  if (result)
  {
    result = CCLogStream::shouldLog();
    if (result)
    {
      result = CCLogStream::logEmergency(*(*(a1 + 40) + 24), "[dk] %s@%d:Too many networks in BGCacheNetwork result %d\n", "assembleBGScanCachedResults", 1199, *a2);
    }
  }

  *a3 = 0;
  return result;
}

uint64_t AppleBCMWLANBGScanAdapter::retrievePfnScanInfo(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_3(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:%s  BSSID: %02x %02x %02x %02x %02x %02x \n", "retrievePfnScanInfo", 1679, v3, v2[40], v2[41], v2[42], v2[43], v2[44], v2[45]);
}

{
  v1 = OUTLINED_FUNCTION_3(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:no BG scan records found\n", "retrievePfnScanInfo", 1572);
}

uint64_t AppleBCMWLANBGScanAdapter::scanPrivacyMACTimer(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_3(a1);
  return CCLogStream::logNotice(v1, "[dk] %s@%d:Scan Privacy MAC Timer Timed out. Configure New Privacy MAC Address \n", "scanPrivacyMACTimer", 1794);
}

{
  v1 = OUTLINED_FUNCTION_3(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Failed to configure Private MAC Address for Scans\n", "scanPrivacyMACTimer", 1800);
}

uint64_t AppleBCMWLANBGScanAdapter::generateAndApplyNewPrivateMACForScans(uint64_t ***a1)
{
  v2 = OUTLINED_FUNCTION_0(a1);
  (*(v3 + 112))(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logNoticeIf(v1, 0x80000000uLL, "[dk] %s@%d:Cannot get ScanMac State: ret %s\n", v5, v6, v7);
}

{
  v2 = OUTLINED_FUNCTION_0(a1);
  (*(v3 + 112))(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Failed GET IOCTL, cret %s\n", v5, v6, v7);
}

uint64_t AppleBCMWLANBGScanAdapter::generateAndApplyNewPrivateMACForScans(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_3(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Failed to Configure New Private MAC Address for Scans\n", "generateAndApplyNewPrivateMACForScans", 1899);
}

{
  v1 = OUTLINED_FUNCTION_3(a1);
  return CCLogStream::logNotice(v1, "[dk] %s@%d:Private MAC Not enabled in FW\n", "generateAndApplyNewPrivateMACForScans", 1904);
}

uint64_t AppleBCMWLANBGScanAdapter::handleGetScanMacStateAsyncCallBack(uint64_t ***a1)
{
  v2 = OUTLINED_FUNCTION_0(a1);
  (*(v3 + 112))(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Error: cannot get ScanMac Statefrom the firmware: %s\n", v5, v6, v7);
}

uint64_t AppleBCMWLANBGScanAdapter::handleGetScanMacStateAsyncCallBack(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_3(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Failed to Configure New Private MAC Address for Scans\n", "handleGetScanMacStateAsyncCallBack", 2067);
}

{
  v1 = OUTLINED_FUNCTION_3(a1);
  return CCLogStream::logNoticeIf(v1, 0x80000000uLL, "[dk] %s@%d:Private MAC Not enabled in FW\n", "handleGetScanMacStateAsyncCallBack", 2072);
}

{
  v1 = OUTLINED_FUNCTION_3(a1);
  return CCLogStream::logNotice(v1, "[dk] %s@%d: no valid data \n", "handleGetScanMacStateAsyncCallBack", 2052);
}

uint64_t AppleBCMWLANBGScanAdapter::handleSetPrivateMACForScansAsyncCallBack(uint64_t ***a1)
{
  v2 = OUTLINED_FUNCTION_0(a1);
  (*(v3 + 112))(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Error: cannot Configure Private Mac Address : %s\n", v5, v6, v7);
}

uint64_t AppleBCMWLANNetAdapter::setLinkUp(AppleBCMWLANNetAdapter *this, ether_addr *a2, BOOL a3, uint64_t BssInfo)
{
  v77 = 0;
  v78 = &v77;
  v79 = 0x2000000000;
  v80 = 0;
  v6 = OUTLINED_FUNCTION_17(this);
  isAssociated = AppleBCMWLANCore::isAssociated(v6);
  v76 = 0;
  v75[6] = 0;
  *(*(this + 5) + 65) = 1;
  if (BssInfo)
  {
    v8 = isAssociated;
    v75[0] = _NSConcreteStackBlock;
    v75[1] = 1107296256;
    v75[2] = ___ZN22AppleBCMWLANNetAdapter9setLinkUpER10ether_addrbb_block_invoke;
    v75[4] = &v77;
    v75[5] = this;
    v75[3] = &__block_descriptor_tmp;
    BssInfo = AppleBCMWLANNetAdapter::getBssInfo(this, v75);
    if (!OUTLINED_FUNCTION_11_0() || !CCLogStream::shouldLog())
    {
      if (BssInfo)
      {
        goto LABEL_35;
      }

LABEL_5:
      v9 = v78[3];
      if (!v9)
      {
LABEL_34:
        BssInfo = 0;
        goto LABEL_35;
      }

      if (v8)
      {
        if (!(*(*v9 + 128))(v9) || (v10 = OUTLINED_FUNCTION_5_0(v78[3]), (*(v11 + 128))(v10) == 1) && (v12 = OUTLINED_FUNCTION_5_0(v78[3]), *(*(v13 + 96))(v12) == 32))
        {
          v14 = v78[3];
          v15 = OUTLINED_FUNCTION_12_0();
          CurrentBSS = AppleBCMWLANBssManager::getCurrentBSS(v15);
          v17 = OUTLINED_FUNCTION_5_0(CurrentBSS);
          v19 = (*(v18 + 88))(v17);
          v20 = OUTLINED_FUNCTION_12_0();
          v21 = AppleBCMWLANBssManager::getCurrentBSS(v20);
          v22 = OUTLINED_FUNCTION_5_0(v21);
          v24 = (*(v23 + 128))(v22);
          (*(*v14 + 112))(v14, v19, v24);
        }

        v25 = OUTLINED_FUNCTION_8_0();
        AppleBCMWLANCore::buildRoamCompletionStatus(v25, v78[3]);
        v26 = OUTLINED_FUNCTION_12_0();
        AppleBCMWLANBssManager::setCurrentBSS(v26, v78[3]);
        AppleBCMWLANNetAdapter::updateMCSSetAsync(this);
        AppleBCMWLANNetAdapter::updateRateSetAsync(this);
        v27 = OUTLINED_FUNCTION_8_0();
        AppleBCMWLANCore::collectDtimConfigFromFW(v27);
      }

      else
      {
        v28 = OUTLINED_FUNCTION_12_0();
        AppleBCMWLANBssManager::setCurrentBSS(v28, v29);
        AppleBCMWLANNetAdapter::updateMCSSetAsync(this);
        AppleBCMWLANNetAdapter::updateRateSetAsync(this);
        v30 = OUTLINED_FUNCTION_8_0();
        AppleBCMWLANCore::resetWoWConfig(v30);
      }

      v31 = OUTLINED_FUNCTION_12_0();
      v32 = AppleBCMWLANBssManager::getCurrentBSS(v31);
      v33 = OUTLINED_FUNCTION_5_0(v32);
      if (((*(v34 + 472))(v33) & 8) != 0)
      {
        v35 = OUTLINED_FUNCTION_8_0();
        if (AppleBCMWLANCore::checkForSaePKSupport(v35))
        {
          v36 = OUTLINED_FUNCTION_8_0();
          if (AppleBCMWLANCore::checkForWPA3SAESupport(v36))
          {
            v37 = OUTLINED_FUNCTION_8_0();
            JoinAdapter = AppleBCMWLANCore::getJoinAdapter(v37);
            AppleBCMWLANJoinAdapter::getAssociatedRSNXE(JoinAdapter);
          }
        }
      }

      v39 = OUTLINED_FUNCTION_8_0();
      LQM = AppleBCMWLANCore::getLQM(v39);
      AppleBCMWLANLQM::resetLinkQualityMetrics(LQM, -1);
      v41 = OUTLINED_FUNCTION_8_0();
      v42 = AppleBCMWLANCore::getLQM(v41);
      AppleBCMWLANLQM::updateLinkQualityMetrics(v42, 0);
      v43 = OUTLINED_FUNCTION_8_0();
      AppleBCMWLANCore::setNeedsScanSnapshotAtLinkUp(v43, 1);
      v44 = OUTLINED_FUNCTION_8_0();
      AppleBCMWLANCore::resetInactivityAndSleepStats(v44);
      v45 = OUTLINED_FUNCTION_12_0();
      v46 = *AppleBCMWLANBssManager::getCurrentBSS(v45);
      v47 = (*(v46 + 264))();
      v48 = **(this + 5);
      if ((v47 & 0xC000) != 0)
      {
        AppleBCMWLANCore::setIsInfraOn2G(v48, 0);
        if (v8)
        {
LABEL_22:
          v52 = OUTLINED_FUNCTION_8_0();
          AppleBCMWLANCore::resetScanRoamStats(v52);
          v53 = OUTLINED_FUNCTION_8_0();
          AppleBCMWLANCore::resetSlicesScanModeStats(v53);
          v54 = OUTLINED_FUNCTION_8_0();
          if (AppleBCMWLANCore::checkForTrafficEngineeringSupport(v54))
          {
            v55 = OUTLINED_FUNCTION_8_0();
            AppleBCMWLANCore::setupTrafficMonitoring(v55, 1);
          }

          v56 = OUTLINED_FUNCTION_8_0();
          if (AppleBCMWLANCore::checkForQoSMgmtSupport(v56))
          {
            v57 = OUTLINED_FUNCTION_8_0();
            if (AppleBCMWLANCore::getQoSMSCSFeatureFlag(v57))
            {
              v58 = OUTLINED_FUNCTION_8_0();
              if (AppleBCMWLANCore::getQoSRealTimeAppActiveStatus(v58))
              {
                v59 = OUTLINED_FUNCTION_8_0();
                AppleBCMWLANCore::sendQoSMgmtMSCSReq(v59, 1);
              }
            }
          }

          OUTLINED_FUNCTION_12_0();
          IO80211BssManager::getCurrentChannel();
          v60 = OUTLINED_FUNCTION_8_0();
          AppleBCMWLANCore::collectWmeParameters(v60);
          if (v8)
          {
            v61 = OUTLINED_FUNCTION_8_0();
            AppleBCMWLANCore::configureSupplicantTimeOutForEAPAssociation(v61);
          }

          v62 = OUTLINED_FUNCTION_8_0();
          v63 = AppleBCMWLANCore::getLQM(v62);
          AppleBCMWLANLQM::startAssocTimer(v63);
          v64 = OUTLINED_FUNCTION_8_0();
          if (AppleBCMWLANCore::featureFlagIsBitSet(v64, 115))
          {
            v65 = OUTLINED_FUNCTION_8_0();
            if (AppleBCMWLANCore::get11beAdapter(v65))
            {
              v66 = OUTLINED_FUNCTION_8_0();
              v67 = AppleBCMWLANCore::get11beAdapter(v66);
              AppleBCMWLAN11beAdapter::getMloStatus(v67);
            }
          }

          v68 = OUTLINED_FUNCTION_8_0();
          isAggressiveEDCAEligible = AppleBCMWLANCore::isAggressiveEDCAEligible(v68);
          AppleBCMWLANNetAdapter::configureAggressiveEDCA(this, isAggressiveEDCAEligible);
          goto LABEL_34;
        }
      }

      else
      {
        AppleBCMWLANCore::setIsInfraOn2G(v48, 1);
        v49 = OUTLINED_FUNCTION_8_0();
        TxPowerManager = AppleBCMWLANCore::getTxPowerManager(v49);
        AppleBCMWLANTxPowerManager::dynTxSDBStartUpdate(TxPowerManager, 1);
        if (v8)
        {
          goto LABEL_22;
        }
      }

      v51 = OUTLINED_FUNCTION_8_0();
      AppleBCMWLANCore::linkChangeEvent(v51, 0, 1);
      goto LABEL_22;
    }

    v74 = OUTLINED_FUNCTION_11_0();
    CCLogStream::logAlert(v74, "[dk] %s@%d:Set Link up isRoam =<%d> ret=<%d>\n", "setLinkUp", 1084, v8, BssInfo);
    if (!BssInfo)
    {
      goto LABEL_5;
    }
  }

LABEL_35:
  v70 = v78[3];
  if (v70)
  {
    v71 = OUTLINED_FUNCTION_5_0(v70);
    (*(v72 + 16))(v71);
    v78[3] = 0;
  }

  *(*(this + 5) + 65) = 0;
  _Block_object_dispose(&v77, 8);
  return BssInfo;
}

uint64_t AppleBCMWLANNetAdapter::getExtendedBssInfo(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 3758097084;
  }

  OUTLINED_FUNCTION_4();
  result = AppleBCMWLANNetAdapter::updateRateSetSync(v4, v5);
  if (!result)
  {
    result = AppleBCMWLANNetAdapter::updateMCSSetSyc(v3, v2 + 188, v2 + 204, v2 + 212);
    if (!result)
    {
      AppleBCMWLANNetAdapter::getAssociatedWPARSNIESync(v3, (v2 + 275), 0x101u);
      result = AppleBCMWLANCore::featureFlagIsBitSet(*v3[5], 115);
      if (result)
      {
        result = AppleBCMWLANCore::get11beAdapter(*v3[5]);
        if (result)
        {
          *&v8.octet[4] = 0;
          *v8.octet = 0;
          IO80211BssManager::getCurrentBSSID(v3[5][3], &v8);
          v7 = AppleBCMWLANCore::get11beAdapter(*v3[5]);
          AppleBCMWLAN11beAdapter::getMloContext(v7, v2 + 220);
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANNetAdapter::setQosParams()
{
  OUTLINED_FUNCTION_4();
  v3 = *(v2 + 23);
  if (v3)
  {
    v4 = AppleBCMWLANNetAdapter::configureLongRetryLimit(v1, *v0);
    if (v4)
    {
      goto LABEL_19;
    }

    v3 = *(v0 + 23);
  }

  if ((v3 & 2) != 0)
  {
    v5 = v0[1];
    v4 = AppleBCMWLANNetAdapter::configureRTSThreshold(v1);
    if (v4)
    {
      goto LABEL_19;
    }

    v3 = *(v0 + 23);
  }

  if ((v3 & 0x10) != 0)
  {
    v4 = AppleBCMWLANNetAdapter::configurePM(v1, v0[4]);
    if (!v4)
    {
      v3 = *(v0 + 23);
      goto LABEL_10;
    }

LABEL_19:
    v8 = v4;
    goto LABEL_15;
  }

LABEL_10:
  if ((v3 & 4) != 0)
  {
    v6 = v0[2];
    AppleBCMWLANNetAdapter::configureLifeTime(v1);
    v3 = *(v0 + 23);
  }

  if ((v3 & 8) != 0)
  {
    v7 = v0[3];
    AppleBCMWLANNetAdapter::configureLifeTime(v1);
  }

  v8 = 0;
LABEL_15:
  if (*(*(v1 + 5) + 32) && CCLogStream::shouldLog())
  {
    v10 = *(v0 + 23);
    CCLogStream::logAlert(*(*(v1 + 5) + 32), "[dk] %s@%d:retryCount=<%d:%d> rtsThreshold=<%d:%d> pmMode=<%d:%d> voLifeTime=<%d:%d> viLifeTime=<%d:%d> rv=<%x>\n", "setQosParams", 1775, *v0, v10 & 1, v0[1], (v10 >> 1) & 1, v0[4], (v10 >> 4) & 1, v0[2], (v10 >> 2) & 1, v0[3], (v10 >> 3) & 1, v8);
  }

  return v8;
}

uint64_t AppleBCMWLANNetAdapter::setLimitedAggregation(uint64_t ***this, int a2)
{
  v22 = a2;
  v3 = OUTLINED_FUNCTION_17(this);
  v4 = *AppleBCMWLANCore::getBus(v3);
  if ((*(v4 + 368))() < 0x1103)
  {
    return 0;
  }

  v5 = OUTLINED_FUNCTION_1_0(this[5]);
  v7 = (*(v6 + 88))(v5);
  v8 = OUTLINED_FUNCTION_5_0(v7);
  if ((*(v9 + 136))(v8))
  {
    v19 = this;
    v20 = AppleBCMWLANNetAdapter::handleLimitedAggregationAsyncCallback;
    v21 = 0;
    v10 = OUTLINED_FUNCTION_13_0();
    v11 = AppleBCMWLANCommander::sendIOVarSet(v10, "btc_lim_agg_enab");
  }

  else
  {
    v12 = OUTLINED_FUNCTION_13_0();
    v19 = &v22;
    v20 = 4;
    v11 = AppleBCMWLANCommander::runIOVarSet(v12, "btc_lim_agg_enab", &v19, 0, 0);
  }

  v13 = v11;
  v14 = OUTLINED_FUNCTION_11_0();
  if (v13)
  {
    if (v14 && CCLogStream::shouldLog())
    {
      v15 = OUTLINED_FUNCTION_11_0();
      CCLogStream::logAlert(v15, "[dk] %s@%d:cannot set btc_lim_agg_enab %u: ret %x\n", "setLimitedAggregation", 2063, v22, v13);
    }
  }

  else if (v14 && CCLogStream::shouldLog())
  {
    v18 = OUTLINED_FUNCTION_11_0();
    CCLogStream::logNoticeIf(v18, 0x80uLL, "[dk] %s@%d:Limited Aggregation is configured to %d\n", "setLimitedAggregation", 2065, v22);
  }

  if (OUTLINED_FUNCTION_11_0() && CCLogStream::shouldLog())
  {
    v17 = OUTLINED_FUNCTION_11_0();
    CCLogStream::logInfo(v17, "[dk] %s@%d:%s: Limited Aggregation is configured to %d\n", "setLimitedAggregation", 2067, "setLimitedAggregation", v22);
  }

  return v13;
}

uint64_t AppleBCMWLANNetAdapter::configureBeaconMitigationParams(AppleBCMWLANNetAdapter *this, __int16 a2, char a3, char a4)
{
  v36 = 0;
  v37 = 0;
  v35 = 0;
  v34 = 0;
  v8 = OUTLINED_FUNCTION_17(this);
  if (!AppleBCMWLANCore::checkForBeaconMuteMitiSupport(v8))
  {
    return 3758097084;
  }

  v9 = OUTLINED_FUNCTION_8_0();
  if (AppleBCMWLANCore::isAssociated(v9))
  {
    v10 = 2;
  }

  else
  {
    v10 = 7;
  }

  v11 = *(this + 5);
  if (*(v11 + 68) == 2)
  {
    LOWORD(v36) = 2;
    BYTE4(v37) = a4;
    v12 = 16;
    v13 = &v36;
    v14 = 16;
  }

  else
  {
    LOWORD(v34) = 1;
    v14 = 12;
    v13 = &v34;
    v12 = 12;
  }

  *(v13 + 1) = v12;
  *(v13 + 8) = 1;
  *(v13 + 1) = v10;
  *(v13 + 9) = a3;
  *(v13 + 5) = a2;
  v33[0] = v13;
  v33[1] = v14;
  v15 = OUTLINED_FUNCTION_1_0(v11);
  v17 = (*(v16 + 88))(v15);
  v18 = OUTLINED_FUNCTION_5_0(v17);
  if ((*(v19 + 136))(v18))
  {
    v20 = OUTLINED_FUNCTION_13_0();
    v21 = AppleBCMWLANCommander::sendIOVarSet(v20, "bcn_mute_miti_config");
  }

  else
  {
    v22 = OUTLINED_FUNCTION_13_0();
    v21 = AppleBCMWLANCommander::runIOVarSet(v22, "bcn_mute_miti_config", v33, 0, 0);
  }

  v23 = v21;
  v24 = OUTLINED_FUNCTION_11_0();
  if (v23)
  {
    if (v24 && CCLogStream::shouldLog())
    {
      v25 = OUTLINED_FUNCTION_2_1(*(this + 5));
      (*(v26 + 112))(v25, v23);
      OUTLINED_FUNCTION_6();
      CCLogStream::logAlert(this, "[dk] %s@%d:bcn_mute_miti_config setting failed, error %s\n", v30, v31, v32);
    }
  }

  else
  {
    if (v24 && CCLogStream::shouldLog())
    {
      v28 = OUTLINED_FUNCTION_2_1(*(this + 5));
      (*(v29 + 112))(v28, 0);
      OUTLINED_FUNCTION_6();
      CCLogStream::logInfo(this, "[dk] %s@%d:Configured BCM MUTE parametes to FW %s \n", v30, v31, v32);
    }

    return 0;
  }

  return v23;
}

uint64_t AppleBCMWLANNetAdapter::overrideACMConfiguration(AppleBCMWLANNetAdapter *this)
{
  v2 = OUTLINED_FUNCTION_17(this);
  WmeParams = AppleBCMWLANCore::getWmeParams(v2, 3u);
  if (!WmeParams || (*WmeParams & 0x10) == 0)
  {
    return 3758096385;
  }

  *WmeParams &= ~0x10u;
  v4 = AppleBCMWLANNetAdapter::configureWmeParamsAsync(this, WmeParams);
  if (v4 && *(*(this + 5) + 32) && CCLogStream::shouldLog())
  {
    v6 = *(this + 5);
    v7 = *(v6 + 32);
    v8 = OUTLINED_FUNCTION_1_0(v6);
    v10 = (*(v9 + 112))(v8, v4);
    CCLogStream::logAlert(v7, "[dk] %s@%d: Error: cannot set wme_ac_sta (VO): ret %x %s\n", "overrideACMConfiguration", 2177, v4, v10);
  }

  return v4;
}

uint64_t AppleBCMWLANNetAdapter::sendActionFrame(uint64_t ***this, ether_addr *a2, unsigned __int8 *a3, unsigned int a4, unsigned __int8 *a5, unsigned int a6, int a7, int a8)
{
  bzero(v28, 0x718uLL);
  result = 3758097084;
  if (a5 && a6 + a4 <= 0x707)
  {
    v17 = 0;
    v26[0] = a8;
    v26[1] = a7;
    v27 = *a2->octet;
    v28[0] = *&a2->octet[4];
    v32 = 1;
    v31 = a6 + a4;
    v29 = v27;
    v30 = v28[0];
    if (a3 && a4)
    {
      v17 = a4;
      memcpy(v33, a3, a4);
    }

    if (a6)
    {
      memcpy(&v33[v17], a5, a6);
    }

    v25[0] = v26;
    v25[1] = 1828;
    v18 = OUTLINED_FUNCTION_1_0(this[5]);
    v20 = (*(v19 + 88))(v18);
    v21 = OUTLINED_FUNCTION_5_0(v20);
    if ((*(v22 + 136))(v21))
    {
      v23 = OUTLINED_FUNCTION_13_0();
      return AppleBCMWLANCommander::sendIOVarSet(v23, "actframe");
    }

    else
    {
      v24 = OUTLINED_FUNCTION_13_0();
      return AppleBCMWLANCommander::runIOVarSet(v24, "actframe", v25, 0, 0);
    }
  }

  return result;
}

uint64_t AppleBCMWLANNetAdapter::configureShortRetryLimit(uint64_t ***a1)
{
  v3 = OUTLINED_FUNCTION_0_0(a1);
  v5 = *(v4 + 112);
  OUTLINED_FUNCTION_16_0(v3, v6);
  v8 = v7();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Error: cannot set short retry count: ret %x: %s\n", "configureShortRetryLimit", 207, v2, v8);
}

uint64_t AppleBCMWLANNetAdapter::setShortRetryLimitAsyncCallback(uint64_t ***a1)
{
  v2 = OUTLINED_FUNCTION_0_0(a1);
  (*(v3 + 112))(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logCrit(v1, "[dk] %s@%d: setting Short Retry Limit failure, error %s\n", v5, v6, v7);
}

uint64_t AppleBCMWLANNetAdapter::configureLongRetryLimit(uint64_t ***a1)
{
  v3 = OUTLINED_FUNCTION_0_0(a1);
  v5 = *(v4 + 112);
  OUTLINED_FUNCTION_16_0(v3, v6);
  v8 = v7();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Error: cannot set long retry count: ret %x: %s\n", "configureLongRetryLimit", 222, v2, v8);
}

uint64_t AppleBCMWLANNetAdapter::setLongRetryLimitAsyncCallback(uint64_t ***a1)
{
  v2 = OUTLINED_FUNCTION_0_0(a1);
  (*(v3 + 112))(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logCrit(v1, "[dk] %s@%d: setting Long Retry Limit failure, error %s\n", v5, v6, v7);
}

uint64_t AppleBCMWLANNetAdapter::configureRTSThreshold(uint64_t ***a1)
{
  v3 = OUTLINED_FUNCTION_0_0(a1);
  v5 = *(v4 + 112);
  OUTLINED_FUNCTION_16_0(v3, v6);
  v8 = v7();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Error: cannot set  RTS : ret %x: %s\n", "configureRTSThreshold", 235, v2, v8);
}

uint64_t AppleBCMWLANNetAdapter::setRTSThresholdAsyncCallback(uint64_t ***a1)
{
  v2 = OUTLINED_FUNCTION_0_0(a1);
  (*(v3 + 112))(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logCrit(v1, "[dk] %s@%d: setting Aggressive RTS Threshold failure, error %s\n", v5, v6, v7);
}

uint64_t AppleBCMWLANNetAdapter::getFWHotChannels(uint64_t ***a1)
{
  v2 = OUTLINED_FUNCTION_0_0(a1);
  (*(v3 + 112))(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Error: cannot get roam channel hot list %s\n", v5, v6, v7);
}

uint64_t AppleBCMWLANNetAdapter::sendReassocCommandLegacy()
{
  OUTLINED_FUNCTION_4();
  if ((!OUTLINED_FUNCTION_9_0(v3) || (CCLogStream::shouldLogConsole() & 1) == 0) && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_4_0();
    OUTLINED_FUNCTION_15_0(&_mh_execute_header, &_os_log_default, v4, "%c [dk] %s@%d: Not Associated, Bail out\n", v5, v6, v7, v8, v10, v11, v12);
  }

  result = OUTLINED_FUNCTION_10_0();
  if (result)
  {
    result = CCLogStream::shouldLog();
    if (result)
    {
      result = CCLogStream::logNotice(*(*v1 + 32), "[dk] %s@%d:Not Associated, Bail out\n", "sendReassocCommandLegacy", 320);
    }
  }

  *v0 = v2;
  return result;
}

uint64_t AppleBCMWLANNetAdapter::sendReassocCommandV3()
{
  OUTLINED_FUNCTION_4();
  if ((!OUTLINED_FUNCTION_9_0(v3) || (CCLogStream::shouldLogConsole() & 1) == 0) && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_4_0();
    OUTLINED_FUNCTION_15_0(&_mh_execute_header, &_os_log_default, v4, "%c [dk] %s@%d: Not Associated, Bail out\n", v5, v6, v7, v8, v10, v11, v12);
  }

  result = OUTLINED_FUNCTION_10_0();
  if (result)
  {
    result = CCLogStream::shouldLog();
    if (result)
    {
      result = CCLogStream::logNotice(*(*v1 + 32), "[dk] %s@%d:Not Associated, Bail out\n", "sendReassocCommandV3", 369);
    }
  }

  *v0 = v2;
  return result;
}

uint64_t AppleBCMWLANNetAdapter::sendReassocCommandV1()
{
  OUTLINED_FUNCTION_4();
  if ((!OUTLINED_FUNCTION_9_0(v3) || (CCLogStream::shouldLogConsole() & 1) == 0) && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_4_0();
    OUTLINED_FUNCTION_15_0(&_mh_execute_header, &_os_log_default, v4, "%c [dk] %s@%d: Not Associated, Bail out\n", v5, v6, v7, v8, v10, v11, v12);
  }

  result = OUTLINED_FUNCTION_10_0();
  if (result)
  {
    result = CCLogStream::shouldLog();
    if (result)
    {
      result = CCLogStream::logNotice(*(*v1 + 32), "[dk] %s@%d:Not Associated, Bail out\n", "sendReassocCommandV1", 429);
    }
  }

  *v0 = v2;
  return result;
}

uint64_t AppleBCMWLANNetAdapter::setDefaultMode(uint64_t ***a1)
{
  v3 = OUTLINED_FUNCTION_1_1(a1);
  v5 = (*(v4 + 112))(v3);
  return CCLogStream::logAlert(v2, "[dk] %s@%d: Error: cannot set wme_ac_sta (VO): ret %x %s\n", "setDefaultMode", 550, v1, v5);
}

{
  v3 = OUTLINED_FUNCTION_1_1(a1);
  v5 = (*(v4 + 112))(v3);
  return CCLogStream::logAlert(v2, "[dk] %s@%d: Error: cannot set wme_ac_sta (VI): ret %x %s\n", "setDefaultMode", 563, v1, v5);
}

uint64_t AppleBCMWLANNetAdapter::setRealTimeMode(uint64_t ***a1)
{
  v3 = OUTLINED_FUNCTION_1_1(a1);
  v5 = (*(v4 + 112))(v3);
  return CCLogStream::logAlert(v2, "[dk] %s@%d: Error: cannot set wme_ac_sta (VI): ret %x: %s\n", "setRealTimeMode", 617, v1, v5);
}

{
  v3 = OUTLINED_FUNCTION_1_1(a1);
  v5 = (*(v4 + 112))(v3);
  return CCLogStream::logAlert(v2, "[dk] %s@%d: Error: cannot set wme_ac_sta (VO): ret %x: %s\n", "setRealTimeMode", 633, v1, v5);
}

uint64_t AppleBCMWLANNetAdapter::setDefaultWMEParamsSync(uint64_t ***a1)
{
  v3 = OUTLINED_FUNCTION_1_1(a1);
  v5 = (*(v4 + 112))(v3);
  return CCLogStream::logAlert(v2, "[dk] %s@%d: Error: cannot set wme_ac_sta (BE): ret %x %s\n", "setDefaultWMEParamsSync", 682, v1, v5);
}

{
  v3 = OUTLINED_FUNCTION_1_1(a1);
  v5 = (*(v4 + 112))(v3);
  return CCLogStream::logAlert(v2, "[dk] %s@%d: Error: cannot set wme_ac_sta (VO): ret %x %s\n", "setDefaultWMEParamsSync", 692, v1, v5);
}

{
  v3 = OUTLINED_FUNCTION_1_1(a1);
  v5 = (*(v4 + 112))(v3);
  return CCLogStream::logAlert(v2, "[dk] %s@%d: Error: cannot set wme_ac_sta (VI): ret %x %s\n", "setDefaultWMEParamsSync", 701, v1, v5);
}

uint64_t AppleBCMWLANNetAdapter::setEnhancedDisassocParams(uint64_t ***a1)
{
  v3 = OUTLINED_FUNCTION_1_1(a1);
  v5 = (*(v4 + 112))(v3);
  return CCLogStream::logCrit(v2, "[dk] %s@%d: Error: cannot Add Apple IE in Disassociation Frame: ret %x %s\n", "setEnhancedDisassocParams", 770, v1, v5);
}

{
  v2 = OUTLINED_FUNCTION_0_0(a1);
  (*(v3 + 112))(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logCrit(v1, "[dk] %s@%d: vndr_ie error %s - failed to add IE\n", v5, v6, v7);
}

uint64_t AppleBCMWLANNetAdapter::setDisassocReasonAppleIEAsyncCallback(uint64_t ***a1)
{
  v2 = OUTLINED_FUNCTION_0_0(a1);
  (*(v3 + 112))(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Error: cannot set/unset Apple IE in Disassociation Frame: %s\n", v5, v6, v7);
}

uint64_t AppleBCMWLANNetAdapter::getRSSIPerAntenna(uint64_t ***a1)
{
  v2 = OUTLINED_FUNCTION_0_0(a1);
  (*(v3 + 112))(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: phy_rssi_ant Failed %s\n", v5, v6, v7);
}

uint64_t AppleBCMWLANNetAdapter::checkCcaStatsExtSupport(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_9_0(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:cca_get_stats_ext not supported!\n", "checkCcaStatsExtSupport", 912);
}

{
  v1 = OUTLINED_FUNCTION_9_0(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Unable to allocate memory for rxBuffSize\n", "checkCcaStatsExtSupport", 883);
}

uint64_t AppleBCMWLANNetAdapter::checkRoamCacheQuerySupport(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_9_0(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Roam Cache Query not supported! \n", "checkRoamCacheQuerySupport", 936);
}

{
  v1 = OUTLINED_FUNCTION_9_0(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Unable to allocate memory for rxBuf\n", "checkRoamCacheQuerySupport", 925);
}

uint64_t AppleBCMWLANNetAdapter::handleRoam(uint64_t a1)
{
  OUTLINED_FUNCTION_6_0(a1);
  if (v2)
  {
    isFtEnabled = IO80211BSSBeacon::isFtEnabled(v2);
  }

  else
  {
    isFtEnabled = 0;
  }

  return CCLogStream::logNotice(v1, "[dk] %s@%d:%s: isFBT:%u \n", "handleRoam", 952, "handleRoam", isFtEnabled);
}

uint64_t AppleBCMWLANNetAdapter::handleRoam(uint64_t a1, int *a2, uint64_t a3)
{
  v17 = *(*a1 + 32);
  v4 = *a2;
  v16 = stringFromStatusInEvent(*a2, 0);
  v5 = *(a3 + 12);
  v15 = stringFromReason(*(a3 + 4), *(a3 + 12));
  v6 = *(a3 + 2);
  v7 = *(a3 + 16);
  v8 = 0;
  if (IO80211_io80211isSensitiveInfoAllowed())
  {
    v8 = *(a3 + 24);
  }

  if (IO80211_io80211isSensitiveInfoAllowed())
  {
    v9 = *(a3 + 25);
  }

  else
  {
    v9 = 0;
  }

  if (IO80211_io80211isSensitiveInfoAllowed())
  {
    v10 = *(a3 + 26);
  }

  else
  {
    v10 = 0;
  }

  if (IO80211_io80211isSensitiveInfoAllowed())
  {
    v11 = *(a3 + 27);
  }

  else
  {
    v11 = 0;
  }

  if (IO80211_io80211isSensitiveInfoAllowed())
  {
    v12 = *(a3 + 28);
  }

  else
  {
    v12 = 0;
  }

  if (IO80211_io80211isSensitiveInfoAllowed())
  {
    v13 = *(a3 + 29);
  }

  else
  {
    v13 = 0;
  }

  return CCLogStream::logAlert(v17, "[dk] %s@%d:status = %lu %s, reason = %lu %s, flags = 0x%x, authtype = %lu, addr = %02x:%02x:%02x:%02x:%02x:%02x\n", "handleRoam", 966, v4, v16, v5, v15, v6, v7, v8, v9, v10, v11, v12, v13);
}

uint64_t AppleBCMWLANNetAdapter::handleLink(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v18 = *(a1 + 32);
  v5 = *(a2 + 8);
  v17 = stringFromStatusInEvent(*(a2 + 8), 0);
  v6 = *(a2 + 12);
  v16 = stringFromReason(*(a2 + 4), *(a2 + 12));
  v7 = *(a2 + 2);
  v8 = *(a2 + 16);
  v9 = 0;
  if (IO80211_io80211isSensitiveInfoAllowed())
  {
    v9 = *(a2 + 24);
  }

  if (IO80211_io80211isSensitiveInfoAllowed())
  {
    v10 = *(a2 + 25);
  }

  else
  {
    v10 = 0;
  }

  if (IO80211_io80211isSensitiveInfoAllowed())
  {
    v11 = *(a2 + 26);
  }

  else
  {
    v11 = 0;
  }

  if (IO80211_io80211isSensitiveInfoAllowed())
  {
    v12 = *(a2 + 27);
  }

  else
  {
    v12 = 0;
  }

  if (IO80211_io80211isSensitiveInfoAllowed())
  {
    v13 = *(a2 + 28);
  }

  else
  {
    v13 = 0;
  }

  if (IO80211_io80211isSensitiveInfoAllowed())
  {
    v14 = *(a2 + 29);
  }

  else
  {
    v14 = 0;
  }

  result = CCLogStream::logAlert(v18, "[dk] %s@%d: status = %lu %s, f/w reason = %lu %s, flags = 0x%x, authtype = %lu, addr = %02x:%02x:%02x:%02x:%02x:%02x\n", "handleLink", 976, v5, v17, v6, v16, v7, v8, v9, v10, v11, v12, v13, v14);
  *a4 = *a3;
  return result;
}

uint64_t AppleBCMWLANNetAdapter::getBssInfo(uint64_t ***a1)
{
  v2 = OUTLINED_FUNCTION_0_0(a1);
  (*(v3 + 112))(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Fw fail command WLC_GET_BSS_INFO %s \n", v5, v6, v7);
}

uint64_t AppleBCMWLANNetAdapter::updateMCSSetAsync(uint64_t ***a1)
{
  v2 = OUTLINED_FUNCTION_0_0(a1);
  (*(v3 + 112))(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logCrit(v1, "[dk] %s@%d: cur_rateset send async failed, error %s\n", v5, v6, v7);
}

uint64_t AppleBCMWLANNetAdapter::updateRateSetAsync(uint64_t ***a1)
{
  v2 = OUTLINED_FUNCTION_0_0(a1);
  (*(v3 + 112))(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logCrit(v1, "[dk] %s@%d: WLC_GET_CURR_RATESET send async failed, error %s\n", v5, v6, v7);
}

uint64_t AppleBCMWLANNetAdapter::configureAggressiveEDCA(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  result = OUTLINED_FUNCTION_9_0(a1);
  if (result)
  {
    result = CCLogStream::shouldLog();
    if (result)
    {
      v7 = *a1;
      v8 = *(*a1 + 32);
      v9 = OUTLINED_FUNCTION_1_0(v7);
      v11 = (*(v10 + 112))(v9, a2);
      result = CCLogStream::logAlert(v8, "[dk] %s@%d: Cannot set wme_ac_sta (BE): ret %x %s\n", "configureAggressiveEDCA", 1727, a2, v11);
    }
  }

  *a3 = a2;
  return result;
}

uint64_t AppleBCMWLANNetAdapter::leaveNetworkSync(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = *(a1 + 32);
  v7 = OUTLINED_FUNCTION_5_0(*a1);
  (*(v8 + 112))(v7);
  OUTLINED_FUNCTION_6();
  result = CCLogStream::logAlert(v6, "[dk] %s@%d: Configuring Beacon drift mitigation params failed: %s\n", v10, v11, v12);
  *a4 = *a3;
  return result;
}

uint64_t AppleBCMWLANNetAdapter::updateRateSetSync(uint64_t ***a1)
{
  v2 = OUTLINED_FUNCTION_0_0(a1);
  (*(v3 + 112))(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logCrit(v1, "[dk] %s@%d: WLC_GET_CURR_RATESET send async failed, error %s\n", v5, v6, v7);
}

uint64_t AppleBCMWLANNetAdapter::updateMCSSetSyc(uint64_t ***a1)
{
  v2 = OUTLINED_FUNCTION_0_0(a1);
  (*(v3 + 112))(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logCrit(v1, "[dk] %s@%d: cur_rateset send async failed, error %s\n", v5, v6, v7);
}

uint64_t AppleBCMWLANNetAdapter::getAssociatedWPARSNIESync(uint64_t ***a1)
{
  v2 = OUTLINED_FUNCTION_0_0(a1);
  (*(v3 + 112))(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logCrit(v1, "[dk] %s@%d: wpaie failed, error %s\n", v5, v6, v7);
}

uint64_t AppleBCMWLANNetAdapter::updateMCSSetAsyncCallback(uint64_t ***a1)
{
  v2 = OUTLINED_FUNCTION_0_0(a1);
  (*(v3 + 112))(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Error: cannot get cur_rateset: %s\n", v5, v6, v7);
}

uint64_t AppleBCMWLANNetAdapter::updateRateSetAsyncCallback(uint64_t ***a1)
{
  v2 = OUTLINED_FUNCTION_0_0(a1);
  (*(v3 + 112))(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Error: cannot get CURR_RATESET: %s\n", v5, v6, v7);
}

uint64_t AppleBCMWLANNetAdapter::configurePM(uint64_t ***a1)
{
  v3 = OUTLINED_FUNCTION_0_0(a1);
  v5 = *(v4 + 112);
  OUTLINED_FUNCTION_16_0(v3, v6);
  v8 = v7();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Error: cannot set PM: ret %d: %s\n", "configurePM", 1795, v2, v8);
}

uint64_t AppleBCMWLANNetAdapter::configureLifeTime(uint64_t ***a1)
{
  v2 = OUTLINED_FUNCTION_0_0(a1);
  (*(v3 + 112))(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Error: Unable to set packet lifetime. ret %s\n", v5, v6, v7);
}

uint64_t AppleBCMWLANNetAdapter::setPowerManagementAsyncCallback(uint64_t ***a1)
{
  v2 = OUTLINED_FUNCTION_0_0(a1);
  (*(v3 + 112))(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logCrit(v1, "[dk] %s@%d: setting powermanagement failure, error %s\n", v5, v6, v7);
}

uint64_t AppleBCMWLANNetAdapter::handleConfigureSupplicantAsyncCallback(uint64_t ***a1)
{
  v2 = OUTLINED_FUNCTION_0_0(a1);
  (*(v3 + 112))(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Failed to Configure Supplicant: %s\n", v5, v6, v7);
}

uint64_t AppleBCMWLANNetAdapter::handleBeaconMuteMitigation(uint64_t a1)
{
  OUTLINED_FUNCTION_6_0(a1);
  stringFromStatusInEvent(*(v2 + 8), *(v2 + 4));
  OUTLINED_FUNCTION_6();
  return CCLogStream::logInfo(v1, "[dk] %s@%d:FW sent BCN_MUTE_MITI_FAILED for attempted beacon mitigation!! status %s\n", v4, v5, v6);
}

{
  OUTLINED_FUNCTION_6_0(a1);
  stringFromStatusInEvent(*(v2 + 8), *(v2 + 4));
  OUTLINED_FUNCTION_6();
  return CCLogStream::logInfo(v1, "[dk] %s@%d:FW sent BCN_MUTE_MITI_END for beacon mitigation activation!! status %s\n", v4, v5, v6);
}

{
  OUTLINED_FUNCTION_6_0(a1);
  stringFromStatusInEvent(*(v2 + 8), *(v2 + 4));
  OUTLINED_FUNCTION_6();
  return CCLogStream::logInfo(v1, "[dk] %s@%d:FW sent BCN_MUTE_MITI_ACTIVE for beacon mitigation activation!! status %s\n", v4, v5, v6);
}

uint64_t AppleBCMWLANNetAdapter::handleBeaconMuteMitigation(uint64_t a1, uint64_t a2, int *a3)
{
  v4 = *(*a1 + 32);
  v5 = stringFromReason(*(a2 + 4), *a3);
  v6 = stringFromStatusInEvent(*(a2 + 8), *(a2 + 4));
  return CCLogStream::logInfo(v4, "[dk] %s@%d:FW sent %s for beacon mitigation activation!! status %s\n", "handleBeaconMuteMitigation", 1849, v5, v6);
}

uint64_t AppleBCMWLANNetAdapter::handleLimitedAggregationAsyncCallback(uint64_t ***a1)
{
  v2 = OUTLINED_FUNCTION_0_0(a1);
  (*(v3 + 112))(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Setting limited aggregation failed: %s\n", v5, v6, v7);
}

uint64_t AppleBCMWLANNetAdapter::setBeaconMuteMitigationVersion(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_9_0(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Failed to collect bcn mute mitigation configuration info, feature not supported\n", "setBeaconMuteMitigationVersion", 2079);
}

{
  v1 = OUTLINED_FUNCTION_9_0(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Failed to collect bcn mute mitigation configuration info \n", "setBeaconMuteMitigationVersion", 2096);
}

{
  v1 = OUTLINED_FUNCTION_9_0(a1);
  return CCLogStream::logInfo(v1, "[dk] %s@%d:Beacon mute mitigation FW version is %d \n", "setBeaconMuteMitigationVersion", 2106, 2);
}

{
  v1 = OUTLINED_FUNCTION_9_0(a1);
  return CCLogStream::logInfo(v1, "[dk] %s@%d:Beacon mute mitigation FW version is %d \n", "setBeaconMuteMitigationVersion", 2103, 1);
}

{
  v1 = OUTLINED_FUNCTION_9_0(a1);
  return CCLogStream::logInfo(v1, "[dk] %s@%d:Beacon mute mitigation FW version is %d \n", "setBeaconMuteMitigationVersion", 2109, *(v2 + 68));
}

uint64_t AppleBCMWLANNetAdapter::handleBeaconMuteMitiAsyncCallBack(uint64_t ***a1)
{
  v2 = OUTLINED_FUNCTION_0_0(a1);
  (*(v3 + 112))(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Error: cannot set becon mute mitigation params %s\n", v5, v6, v7);
}

uint64_t AppleBCMWLANNetAdapter::configureACMOverrideForFastLaneAsyncCallback(uint64_t ***a1)
{
  v2 = OUTLINED_FUNCTION_0_0(a1);
  (*(v3 + 112))(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Error: Cannot Override ACM Bit %s\n", v5, v6, v7);
}

uint64_t AppleBCMWLANNetAdapter::handleActionFrameCallback(uint64_t ***a1)
{
  v2 = OUTLINED_FUNCTION_0_0(a1);
  (*(v3 + 112))(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Error: cannot send action frame %s\n", v5, v6, v7);
}

uint64_t AppleBCMWLANNetAdapter::sendActionFrameV2(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_9_0(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:ActionFrame Config buffer allocation failed\n", "sendActionFrameV2", 2370);
}

{
  v1 = OUTLINED_FUNCTION_9_0(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:ActionFrame pData is NULL!\n", "sendActionFrameV2", 2362);
}

{
  v1 = OUTLINED_FUNCTION_9_0(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:ActionFrame size is too big!\n", "sendActionFrameV2", 2357);
}

uint64_t AppleBCMWLANNetAdapter::setDisassocDelayAsyncCallback(uint64_t ***a1)
{
  v2 = OUTLINED_FUNCTION_0_0(a1);
  (*(v3 + 112))(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Setting disassoc_dly failed: %s\n", v5, v6, v7);
}

uint64_t AppleBCMWLANNetAdapter::handleConfigureLifeTimeAsyncCallBack(uint64_t ***a1)
{
  v2 = OUTLINED_FUNCTION_0_0(a1);
  (*(v3 + 112))(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Failed to configure packet lifetime %s\n", v5, v6, v7);
}

void *AppleBCMWLANInfraProtocol::initWithProvider(AppleBCMWLANInfraProtocol *this, AppleBCMWLANCore *a2)
{
  result = IOMallocZeroTyped();
  *(this + 17) = result;
  if (result)
  {
    *result = a2;
    return (**(this + 17) != 0);
  }

  return result;
}

uint64_t *AppleBCMWLANRoamAdapter::setReassocParams(uint64_t *this, int a2, int a3)
{
  v4 = this;
  if (a2 || a3)
  {
    *(this[5] + 39) = 1;
    if (a2)
    {
      this = AppleBCMWLANRoamAdapter::cfgRoamPruneRssiThreshold(this, a2);
    }

    if (a3)
    {
      v6 = 0;
      v5 = 0;
      return AppleBCMWLANRoamAdapter::applyRoamingCandidateBoost(v4, &v5, 0);
    }
  }

  return this;
}

AppleBCMWLANRoamAdapter *AppleBCMWLANRoamAdapter::restoreReassocParams(AppleBCMWLANRoamAdapter *this)
{
  if (*(*(this + 5) + 39) == 1)
  {
    v1 = this;
    AppleBCMWLANRoamAdapter::cfgRoamPruneRssiThreshold(this, -80);
    this = AppleBCMWLANRoamAdapter::applyRoamingCandidateBoost(v1, (*(v1 + 40) + 36), 0);
    *(*(v1 + 40) + 39) = 0;
  }

  return this;
}

uint64_t AppleBCMWLANRoamAdapter::setRoamingProfile(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_3(a1);
  return CCLogStream::logNoticeIf(v1, 0x4000uLL, "[dk] %s@%d:Using motion offsets in the roam profile[%d]: CandDelta:%d\n", "setRoamingProfile", 330, v3, *v2);
}

{
  OUTLINED_FUNCTION_3(a1);
  v3 = (v1 + 16 * v2);
  v4 = v3[1];
  v5 = v3[2];
  v6 = *v3;
  OUTLINED_FUNCTION_4_1(v3);
  v23 = *(v7 + 5);
  v24 = *(v7 + 4);
  v21 = v8;
  v22 = v9;
  OUTLINED_FUNCTION_8_1();
  return CCLogStream::logAlert(v10, "[dk] %s@%d:Issuing roam_prof to FW: Roam profile[%d]: Band:%d, RSSI:[%d,%d], Flag:0x%x, ScanParams:(%d,%d,%d,%d,%d), Candidate:(%d,%d,%d)\n", "setRoamingProfile", 348, v11, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24);
}

uint64_t AppleBCMWLANRoamAdapter::setRoamingProfileV4(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_3(a1);
  return CCLogStream::logInfo(v1, "[dk] %s@%d:WL_ROAM_PROF_EXTSCAN flag is NOT enabled due to hybrid DSA!\n", "setRoamingProfileV4", 699);
}

{
  v1 = OUTLINED_FUNCTION_3(a1);
  return CCLogStream::logNoticeIf(v1, 0x4000uLL, "[dk] %s@%d:Using motion offsets in the roam profile. CandDelta:%d\n", "setRoamingProfileV4", 859, *v2);
}

{
  OUTLINED_FUNCTION_3(a1);
  v3 = (v1 + 28 * v2);
  v4 = v3[1];
  v5 = v3[2];
  v6 = *v3;
  OUTLINED_FUNCTION_4_1(v3);
  v25 = *(v7 + 24);
  v26 = *(v7 + 26);
  v23 = *(v7 + 5);
  v24 = *(v7 + 4);
  v21 = v8;
  v22 = v9;
  OUTLINED_FUNCTION_8_1();
  return CCLogStream::logAlert(v10, "[dk] %s@%d:Roam profile[%d]: Band:%d, RSSI:[%d,%d], Flag:0x%x, ScanParams:(%d,%d,%d,%d,%d), Candidate:(%d,%d,%d) LP %d %d\n", "setRoamingProfileV4", 897, v11, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26);
}

uint64_t AppleBCMWLANRoamAdapter::setRoamingProfileV2(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_3(a1);
  return CCLogStream::logNoticeIf(v1, 0x4000uLL, "[dk] %s@%d:Using motion offsets in the roam profile[%d]: CandDelta:%d\n", "setRoamingProfileV2", 591, v3, *v2);
}

{
  OUTLINED_FUNCTION_3(a1);
  v3 = (v1 + 20 * v2);
  v4 = v3[1];
  v5 = v3[2];
  v6 = *v3;
  OUTLINED_FUNCTION_4_1(v3);
  return CCLogStream::logAlert(v8, "[dk] %s@%d:%s:Issuing roam_prof to FW: Roam profile[%d]: Band:%d, RSSI:[%d,%d], Flag:0x%x, ScanParams:(%d,%d,%d,%d,%d),Candidate:(%d,%d,%d)\n", "setRoamingProfileV2", 609, "setRoamingProfileV2", v9, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, *(v7 + 5), *(v7 + 4));
}

uint64_t AppleBCMWLANRoamAdapter::handleRoamProfileAsyncCallBack(uint64_t ***a1)
{
  v2 = OUTLINED_FUNCTION_0(a1);
  (*(v3 + 112))(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Error: cannot set roam profile error=%s\n", v5, v6, v7);
}

uint64_t AppleBCMWLANRoamAdapter::printProfile(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_3(a1);
  v4 = v2 + 36 * v3;
  return CCLogStream::logAlert(v1, "[dk] %s@%d:WiFiRoam : profile[%d]: Band:%d, RSSI:[%d,%d], Flag:0x%x, ScanParams:(%d,%d,%d,%d,%d), Candidate_2g:(%d,%d,%d), Candidate_5g:(%d,%d,%d), Candidate_6g:(%d,%d,%d) LP %d %d\n", "printProfile", 1024, v3, *v5, *(v4 + 4), *(v4 + 5), *v4, *(v4 + 8), *(v4 + 10), *(v4 + 12), *(v4 + 14), *(v4 + 16), *(v4 + 6), *(v4 + 31), *(v4 + 30), *(v4 + 6), *(v4 + 33), *(v4 + 32), *(v4 + 6), *(v4 + 35), *(v4 + 34), *(v4 + 26), *(v4 + 28));
}

uint64_t AppleBCMWLANRoamAdapter::setRoamingProfileV6(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_3(a1);
  return CCLogStream::logNoticeIf(v1, 0x4000uLL, "[dk] %s@%d:%s WiFiRoam : Successfully set the roaming profile for band %d\n", "setRoamingProfileV6", 1076, "setRoamingProfileV6", *v2);
}

{
  v1 = OUTLINED_FUNCTION_3(a1);
  return CCLogStream::logAlertIf(v1, 0x4000uLL, "[dk] %s@%d:%s WiFiRoam : Invalid band (%d) passed. Nothing to do.\n", "setRoamingProfileV6", 1041, "setRoamingProfileV6", -1);
}

uint64_t AppleBCMWLANRoamAdapter::setLEGACY_ROAM_PROFILE_CONFIG(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_3(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:fail to configure legacy profile\n", "setLEGACY_ROAM_PROFILE_CONFIG", 1102);
}

{
  result = OUTLINED_FUNCTION_1(a1);
  if (result)
  {
    result = CCLogStream::shouldLog();
    if (result)
    {
      result = CCLogStream::logAlert(*(*(v2 + 40) + 24), "[dk] %s@%d:pRoamProfileConfig is null\n", "setLEGACY_ROAM_PROFILE_CONFIG", 1099);
    }
  }

  *v1 = v3;
  return result;
}

uint64_t AppleBCMWLANRoamAdapter::configureMultiAPBit(uint64_t ***a1)
{
  v2 = OUTLINED_FUNCTION_0(a1);
  (*(v3 + 112))(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Failure to set Multi AP Bit : %s\n", v5, v6, v7);
}

uint64_t AppleBCMWLANRoamAdapter::setROAM_PROFILE_CONFIG(uint64_t a1)
{
  result = OUTLINED_FUNCTION_7_0(a1);
  if (result)
  {
    result = CCLogStream::shouldLog();
    if (result)
    {
      result = CCLogStream::logAlert(*(*(v3 + 40) + 24), "[dk] %s@%d:fail to configure 2g profile is null\n", "setROAM_PROFILE_CONFIG", 1124);
    }
  }

  *v1 = v2;
  return result;
}

{
  result = OUTLINED_FUNCTION_7_0(a1);
  if (result)
  {
    result = CCLogStream::shouldLog();
    if (result)
    {
      result = CCLogStream::logAlert(*(*(v3 + 40) + 24), "[dk] %s@%d:fail to configure 5g profile is null\n", "setROAM_PROFILE_CONFIG", 1129);
    }
  }

  *v1 = v2;
  return result;
}

{
  result = OUTLINED_FUNCTION_7_0(a1);
  if (result)
  {
    result = CCLogStream::shouldLog();
    if (result)
    {
      result = CCLogStream::logAlert(*(*(v3 + 40) + 24), "[dk] %s@%d:fail to configure 6g profile is null\n", "setROAM_PROFILE_CONFIG", 1134);
    }
  }

  *v1 = v2;
  return result;
}

{
  v1 = OUTLINED_FUNCTION_3(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Skip setting defualt boost, since we are in the middle of reassoc \n", "setROAM_PROFILE_CONFIG", 1146);
}

{
  result = OUTLINED_FUNCTION_1(a1);
  if (result)
  {
    result = CCLogStream::shouldLog();
    if (result)
    {
      result = CCLogStream::logAlert(*(*(v2 + 40) + 24), "[dk] %s@%d:pRoamProfileConfig is null\n", "setROAM_PROFILE_CONFIG", 1118);
    }
  }

  *v1 = v3;
  return result;
}

uint64_t AppleBCMWLANRoamAdapter::disable6GForRoamScans(uint64_t ***a1, int a2)
{
  v4 = OUTLINED_FUNCTION_1_2(a1);
  v6 = (*(v5 + 112))(v4);
  return CCLogStream::logAlert(v2, "[dk] %s@%d: Error: disable 6G Roam Scan : ret %x: %s\n", "disable6GForRoamScans", 1711, a2, v6);
}

uint64_t AppleBCMWLANRoamAdapter::applyRoamingCandidateBoost(uint64_t ***a1, int a2)
{
  v4 = OUTLINED_FUNCTION_1_2(a1);
  v6 = (*(v5 + 112))(v4);
  return CCLogStream::logAlert(v2, "[dk] %s@%d: Error: cannot set join_pref : ret %x: %s\n", "applyRoamingCandidateBoost", 1660, a2, v6);
}

uint64_t AppleBCMWLANRoamAdapter::cmdROAM_USER_CACHE(uint64_t a1)
{
  result = OUTLINED_FUNCTION_1(a1);
  if (result)
  {
    result = CCLogStream::shouldLog();
    if (result)
    {
      result = CCLogStream::logAlert(*(*(v2 + 40) + 24), "[dk] %s@%d:input buffer is null\n", "cmdROAM_USER_CACHE", 1166);
    }
  }

  *v1 = v3;
  return result;
}

{
  v1 = OUTLINED_FUNCTION_3(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:cmdROAM_USER_CACHE failed to allocate cmd\n ", "cmdROAM_USER_CACHE", 1165);
}

uint64_t AppleBCMWLANRoamAdapter::clearChannelsFromUserRoamCache(uint64_t ***a1)
{
  v2 = OUTLINED_FUNCTION_0(a1);
  (*(v3 + 112))(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Failed to clear User Roam  cache %s\n", v5, v6, v7);
}

uint64_t AppleBCMWLANRoamAdapter::addChannelsToUserRoamCache(uint64_t ***a1)
{
  v2 = OUTLINED_FUNCTION_0(a1);
  (*(v3 + 112))(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Failed to add User Roam cache channels %s\n", v5, v6, v7);
}

uint64_t AppleBCMWLANRoamAdapter::setOverrideStateFromUserRoamCache(uint64_t ***a1)
{
  v2 = OUTLINED_FUNCTION_0(a1);
  (*(v3 + 112))(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Failed to set User Roam cache override %s\n", v5, v6, v7);
}

uint64_t AppleBCMWLANRoamAdapter::getOverrideStateFromUserRoamCache(uint64_t ***a1)
{
  v2 = OUTLINED_FUNCTION_0(a1);
  (*(v3 + 112))(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Failed to get User Roam override state %s\n", v5, v6, v7);
}

uint64_t AppleBCMWLANRoamAdapter::getChannelsFromUserRoamCache(uint64_t ***a1)
{
  v2 = OUTLINED_FUNCTION_0(a1);
  (*(v3 + 112))(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Failed to get User Roam cache %s\n", v5, v6, v7);
}

uint64_t AppleBCMWLANRoamAdapter::applyRoamingCandidateBoostCallback(uint64_t ***a1, int a2)
{
  v4 = OUTLINED_FUNCTION_1_2(a1);
  v6 = (*(v5 + 112))(v4);
  return CCLogStream::logAlert(v2, "[dk] %s@%d: Error: cannot set join_pref for boost : ret %x: %s\n", "applyRoamingCandidateBoostCallback", 1631, a2, v6);
}

uint64_t AppleBCMWLANRoamAdapter::skipPscScansForRoamScans(uint64_t ***a1, int a2)
{
  v4 = OUTLINED_FUNCTION_1_2(a1);
  v6 = (*(v5 + 112))(v4);
  return CCLogStream::logAlert(v2, "[dk] %s@%d: Error: cannot set join_pref PSC scan preference : ret %x: %s\n", "skipPscScansForRoamScans", 1681, a2, v6);
}

uint64_t AppleBCMWLANRoamAdapter::skipPscScansForRoamScansCallback(uint64_t ***a1, int a2)
{
  v4 = OUTLINED_FUNCTION_1_2(a1);
  v6 = (*(v5 + 112))(v4);
  return CCLogStream::logAlert(v2, "[dk] %s@%d: Error: cannot set join_pref for PSC scan prefernece for roam scans : ret %x: %s\n", "skipPscScansForRoamScansCallback", 1690, a2, v6);
}

uint64_t AppleBCMWLANRoamAdapter::disable6GForRoamScansCallback(uint64_t ***a1, int a2)
{
  v4 = OUTLINED_FUNCTION_1_2(a1);
  v6 = (*(v5 + 112))(v4);
  return CCLogStream::logAlert(v2, "[dk] %s@%d: Error: cannot disable 6G Roam Scan : ret %x: %s\n", "disable6GForRoamScansCallback", 1719, a2, v6);
}

uint64_t AppleBCMWLANRoamAdapter::rxSigSetVal(uint64_t ***a1, uint64_t a2, const char *a3)
{
  v5 = OUTLINED_FUNCTION_1_2(a1);
  v7 = (*(v6 + 112))(v5);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:WiFiRoam: rxsig : Failed to run rxsig set var (%s), %s\n", "rxSigSetVal", 1872, a3, v7);
}

uint64_t AppleBCMWLANRoamAdapter::rxSigSetVal(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_3(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:WiFiRoam : Buffer allocation failed!. No memory\n", "rxSigSetVal", 1848);
}

{
  v1 = OUTLINED_FUNCTION_2_2(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:WiFiRoam : Rx RSSI compensation not supported! [%d]\n", "rxSigSetVal", 1840, v3);
}

uint64_t AppleBCMWLANRoamAdapter::rxSigSetCompTbl(uint64_t ***a1, uint64_t a2, const char *a3)
{
  v5 = OUTLINED_FUNCTION_1_2(a1);
  v7 = (*(v6 + 112))(v5);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:WiFiRoam: rxsig : Failed to run rxsig set var for comp tbl(%s), %s\n", "rxSigSetCompTbl", 1814, a3, v7);
}

uint64_t AppleBCMWLANRoamAdapter::rxSigSetCompTbl(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_3(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:WiFiRoam : Buffer allocation failed!. No memory\n", "rxSigSetCompTbl", 1790);
}

{
  v1 = OUTLINED_FUNCTION_2_2(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:WiFiRoam : Rx RSSI compensation not supported! [%d]\n", "rxSigSetCompTbl", 1764, v3);
}

uint64_t AppleBCMWLANRoamAdapter::handleConfigureRxSigSetCompTblAsyncCallback(uint64_t ***a1, uint64_t a2, const char *a3)
{
  v5 = OUTLINED_FUNCTION_1_2(a1);
  v7 = (*(v6 + 112))(v5);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:WiFiRoam: rxsig : Failed to Configure rxsig Set Var for comp tbl%s, %s\n", "handleConfigureRxSigSetCompTblAsyncCallback", 1824, a3, v7);
}

uint64_t AppleBCMWLANRoamAdapter::handleConfigureRxSigSetValAsyncCallback(uint64_t ***a1, uint64_t a2, const char *a3)
{
  v5 = OUTLINED_FUNCTION_1_2(a1);
  v7 = (*(v6 + 112))(v5);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:WiFiRoam: rxsig : Failed to Configure rxsig Set Var %s, %s\n", "handleConfigureRxSigSetValAsyncCallback", 1882, a3, v7);
}

uint64_t AppleBCMWLANRoamAdapter::parseRoamCacheXTLV(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_3(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Buffer not aligned\n", "parseRoamCacheXTLV", 1948);
}

{
  v1 = OUTLINED_FUNCTION_3(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:%s Legacy chipset and invalid tag : %d\n", "parseRoamCacheXTLV", 2149, "parseRoamCacheXTLV", 7);
}

{
  v1 = OUTLINED_FUNCTION_3(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:%s Legacy chipset and invalid tag : %d\n", "parseRoamCacheXTLV", 2121, "parseRoamCacheXTLV", 5);
}

{
  v1 = OUTLINED_FUNCTION_3(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:%s Legacy chipset and invalid tag : %d\n", "parseRoamCacheXTLV", 2058, "parseRoamCacheXTLV", 6);
}

{
  v1 = OUTLINED_FUNCTION_3(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:%s Legacy chipset and invalid tag : %d\n", "parseRoamCacheXTLV", 2033, "parseRoamCacheXTLV", 4);
}

uint64_t AppleBCMWLANRoamAdapter::getRoamCacheAsyncCallback(uint64_t ***a1, int a2)
{
  v4 = OUTLINED_FUNCTION_1_2(a1);
  v6 = (*(v5 + 112))(v4);
  return CCLogStream::logWarn(v2, "[dk] %s@%d:Failed to get roam cache (error=%d (%s)\n", "getRoamCacheAsyncCallback", 2177, a2, v6);
}

uint64_t AppleBCMWLANRoamAdapter::getRoamCacheAsyncCallback(uint64_t ***a1)
{
  v2 = OUTLINED_FUNCTION_0(a1);
  (*(v3 + 112))(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Failed to parse roam cache %s\n", v5, v6, v7);
}

uint64_t AppleBCMWLANRoamAdapter::getRoamCacheAsync(uint64_t ***a1)
{
  v2 = OUTLINED_FUNCTION_0(a1);
  (*(v3 + 112))(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Failed to send roam cache iovar %s\n", v5, v6, v7);
}

uint64_t AppleBCMWLANRoamAdapter::setRoamLock(void **a1, unsigned int *a2, uint64_t a3)
{
  v3 = a3;
  v4 = (*a1)[3];
  v5 = *a2;
  v6 = (*(***a1 + 112))(**a1, a3);
  return CCLogStream::logAlert(v4, "[dk] %s@%d: cannot set roam_off to %lu : ret %x: %s \n", "setRoamLock", 2302, v5, v3, v6);
}

uint64_t AppleBCMWLANRoamAdapter::handleRoamOffAsyncCallBack(uint64_t ***a1)
{
  v2 = OUTLINED_FUNCTION_0(a1);
  (*(v3 + 112))(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Error: cannot set roam_off %s\n", v5, v6, v7);
}

uint64_t AppleBCMWLANRoamAdapter::cfgRoamPruneRssiThreshold(uint64_t ***a1)
{
  v2 = OUTLINED_FUNCTION_0(a1);
  (*(v3 + 112))(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Failed to Configure Prune RSSI threshold %s\n", v5, v6, v7);
}

uint64_t AppleBCMWLANRoamAdapter::handleMultiAPBitAsyncCallBack(uint64_t ***a1)
{
  v2 = OUTLINED_FUNCTION_0(a1);
  (*(v3 + 112))(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Error: cannot set MultiAPBit %s\n", v5, v6, v7);
}

uint64_t AppleBCMWLANRoamAdapter::handlePruneThresholdConfigurationAsyncCallback(uint64_t ***a1)
{
  v2 = OUTLINED_FUNCTION_0(a1);
  (*(v3 + 112))(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Failed to Configure Prune RSSI Threshold: %s\n", v5, v6, v7);
}

uint64_t AppleBCMWLANNearbyDeviceDiscoveryAdapter::setNDD_REQ(uint64_t a1)
{
  v1 = *(*a1 + 32);
  isNDDCapable = AppleBCMWLANCore::isNDDCapable(*(*a1 + 16));
  return CCLogStream::logAlert(v1, "[dk] %s@%d:NDD not supported %d\n", "setNDD_REQ", 99, isNDDCapable);
}

{
  v1 = OUTLINED_FUNCTION_9_0(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:%s:timeout=%u, channel=%u, filters=%u, bandwidth=%d, band=%d, mode=%d, type=%d\n", "setNDD_REQ", 103, "setNDD_REQ", *(v2 + 8), *(v2 + 16), *(v2 + 12), (*(v2 + 16) >> 11) & 7, *(v2 + 16) >> 14, *v2, *(v2 + 4));
}

{
  v1 = OUTLINED_FUNCTION_9_0(a1);
  v4 = v2 + 28 * v3;
  return CCLogStream::logAlert(v1, "[dk] %s@%d:%s:ta=[%x:%x:%x:%x:%x:%x], ra=[%x:%x:%x:%x:%x:%x], bssid=[%x:%x:%x:%x:%x:%x], frameType=%u, numReports=%u\n", "setNDD_REQ", 105, "setNDD_REQ", *(v4 + 14), *(v4 + 15), *(v4 + 16), *(v4 + 17), *(v4 + 18), *(v4 + 19), *(v4 + 8), *(v4 + 9), *(v4 + 10), *(v4 + 11), *(v4 + 12), *(v4 + 13), *(v4 + 20), *(v4 + 21), *(v4 + 22), *(v4 + 23), *(v4 + 24), *(v4 + 25), *v4, *(v4 + 4));
}

{
  result = OUTLINED_FUNCTION_9_0(a1);
  if (result)
  {
    result = CCLogStream::shouldLog();
    if (result)
    {
      return CCLogStream::logAlert(*(*a1 + 32), "[dk] %s@%d:Invalid filter found. More than one filter with all macIds as wildcard\n", "setNDD_REQ", 132);
    }
  }

  return result;
}

{
  result = OUTLINED_FUNCTION_9_0(a1);
  if (result)
  {
    result = CCLogStream::shouldLog();
    if (result)
    {
      return CCLogStream::logAlert(*(*a1 + 32), "[dk] %s@%d:Invalid filter found. Ftype & macIds are wildcard\n", "setNDD_REQ", 127);
    }
  }

  return result;
}

uint64_t AppleBCMWLANNearbyDeviceDiscoveryAdapter::configureNDDStart(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_9_0(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:%s: Configuring override num reports value %u\n", "configureNDDStart", 360, "configureNDDStart", *(v2 + 8));
}

{
  v2 = OUTLINED_FUNCTION_0_1(a1);
  (*(v3 + 112))(v2);
  OUTLINED_FUNCTION_6_1();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Unable to set WL_EDS_IOV_XTLV_FILTER_ADD: %s[%d] for filter id %d radio %d\n", "configureNDDStart", 380, v5, v6, v7, v8);
}

{
  v1 = OUTLINED_FUNCTION_9_0(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Debug mode: NDD forced on LPSC only. Skipping programming of main/aux core\n", "configureNDDStart", 396);
}

{
  v2 = OUTLINED_FUNCTION_0_1(a1);
  (*(v3 + 112))(v2);
  OUTLINED_FUNCTION_6_1();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Unable to set WL_EDS_IOV_XTLV_FILTER_ADD: %s[%d] for filter id %d radio %d\n", "configureNDDStart", 393, v5, v6, v7, v8);
}

{
  v2 = OUTLINED_FUNCTION_0_1(a1);
  (*(v3 + 112))(v2);
  OUTLINED_FUNCTION_6_1();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Unable to set WL_EDS_IOV_XTLV_FILTER_ADD: %s[%d] for filter id %d radio %d\n", "configureNDDStart", 371, v5, v6, v7, v8);
}

{
  v1 = OUTLINED_FUNCTION_9_0(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:%s: Configuring override timeout value %u\n", "configureNDDStart", 427, "configureNDDStart", *(v2 + 4));
}

{
  if (OUTLINED_FUNCTION_9_0(a1))
  {
    v3 = v2;
    if (CCLogStream::shouldLog())
    {
      v5 = *a1;
      v6 = *(*a1 + 32);
      v7 = OUTLINED_FUNCTION_1_3(v5);
      v9 = (*(v8 + 112))(v7, v3);
      CCLogStream::logAlert(v6, "[dk] %s@%d:Unable to set WL_EDS_IOV_XTLV_START: %s[%d]\n", "configureNDDStart", 436, v9, v3);
    }
  }

  return IOFreeData();
}

{
  OUTLINED_FUNCTION_9_0(a1);
  OUTLINED_FUNCTION_7_1();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:%s:%d No memory to allocate buffers for start cmd\n", v3, v4, v5, v6);
}

{
  OUTLINED_FUNCTION_9_0(a1);
  OUTLINED_FUNCTION_7_1();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:%s:%d No memory to allocate buffers for filter cmd\n", v3, v4, v5, v6);
}

{
  result = OUTLINED_FUNCTION_5_1(a1);
  if (result)
  {
    result = CCLogStream::shouldLog();
    if (result)
    {
      v4 = OUTLINED_FUNCTION_9_1();
      result = CCLogStream::logAlert(v4, "[dk] %s@%d:Invalid NDD filters %u\n", "configureNDDStart", 313, v5);
    }
  }

  *v1 = v2;
  return result;
}

uint64_t AppleBCMWLANNearbyDeviceDiscoveryAdapter::configureNDDStop(uint64_t a1)
{
  if (OUTLINED_FUNCTION_9_0(a1))
  {
    v3 = v2;
    if (CCLogStream::shouldLog())
    {
      v5 = *a1;
      v6 = *(*a1 + 32);
      v7 = OUTLINED_FUNCTION_1_3(v5);
      v9 = (*(v8 + 112))(v7, v3);
      CCLogStream::logAlert(v6, "[dk] %s@%d:Unable to set WL_EDS_IOV_XTLV_FILTER_ABORT: %s[%d]\n", "configureNDDStop", 479, v9, v3);
    }
  }

  return IOFreeData();
}

{
  result = OUTLINED_FUNCTION_9_0(a1);
  if (result)
  {
    result = OUTLINED_FUNCTION_8_2();
    if (result)
    {
      v4 = *a1;
      v5 = *(*a1 + 32);
      v6 = OUTLINED_FUNCTION_1_3(v4);
      v8 = (*(v7 + 112))(v6, v1);
      return CCLogStream::logAlert(v5, "[dk] %s@%d:Unable to set WL_EDS_IOV_XTLV_FILTER_DELETE: %s[%d]\n", "configureNDDStop", 502, v8, v1);
    }
  }

  return result;
}

{
  OUTLINED_FUNCTION_9_0(a1);
  OUTLINED_FUNCTION_7_1();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:%s:%d No memory to allocate buffers for filter cmd\n", v3, v4, v5, v6);
}

{
  OUTLINED_FUNCTION_9_0(a1);
  OUTLINED_FUNCTION_7_1();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:%s:%d No memory to allocate buffers for filter cmd\n", v3, v4, v5, v6);
}

{
  result = OUTLINED_FUNCTION_5_1(a1);
  if (result)
  {
    result = CCLogStream::shouldLog();
    if (result)
    {
      v4 = OUTLINED_FUNCTION_9_1();
      result = CCLogStream::logAlert(v4, "[dk] %s@%d:Invalid NDD filters %u\n", "configureNDDStop", 456, v5);
    }
  }

  *v1 = v2;
  return result;
}

uint64_t AppleBCMWLANNearbyDeviceDiscoveryAdapter::processNDDReportEvent(uint64_t a1)
{
  result = OUTLINED_FUNCTION_4_2(a1);
  if (result)
  {
    result = OUTLINED_FUNCTION_8_2();
    if (result)
    {
      OUTLINED_FUNCTION_10_1();
      OUTLINED_FUNCTION_3_0();
      return CCLogStream::logAlert(v2, "[dk] %s@%d:%s:%dInvalid event version, received %u\n", v3, v4, v5, v6, v7);
    }
  }

  return result;
}

uint64_t AppleBCMWLANNearbyDeviceDiscoveryAdapter::processNDDReportEvent(uint64_t a1, _WORD *a2, unsigned int *a3)
{
  v3 = *(*a1 + 32);
  v4 = *a2;
  v5 = *a2;
  v6 = (v4 >> 8) & 7;
  v7 = (v4 >> 11) & 7;
  v8 = v4 >> 14;
  v9 = ratespec2rate(v3, *a3);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:ChanSpec channel=%d, sunChannel=%d, bandwidth=%d, band=%d, rate=%u\n", "processNDDReportEvent", 209, v5, v6, v7, v8, v9);
}

uint64_t AppleBCMWLANNearbyDeviceDiscoveryAdapter::processNDDStatusEvent(uint64_t a1)
{
  result = OUTLINED_FUNCTION_4_2(a1);
  if (result)
  {
    result = OUTLINED_FUNCTION_8_2();
    if (result)
    {
      OUTLINED_FUNCTION_10_1();
      OUTLINED_FUNCTION_3_0();
      return CCLogStream::logAlert(v2, "[dk] %s@%d:%s:%dInvalid event version, received %u\n", v3, v4, v5, v6, v7);
    }
  }

  return result;
}

{
  result = OUTLINED_FUNCTION_4_2(a1);
  if (result)
  {
    result = OUTLINED_FUNCTION_8_2();
    if (result)
    {
      OUTLINED_FUNCTION_10_1();
      OUTLINED_FUNCTION_3_0();
      return CCLogStream::logAlert(v2, "[dk] %s@%d:%s:%dInvalid data len received %u\n", v3, v4, v5, v6, v7);
    }
  }

  return result;
}

{
  v1 = OUTLINED_FUNCTION_9_0(a1);
  return CCLogStream::logInfo(v1, "[dk] %s@%d:NDD start event received\n", "processNDDStatusEvent", 230);
}

{
  v1 = OUTLINED_FUNCTION_9_0(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:version=%u, length=%u, inactiveReason=%d, status=%d, remainDur=%u, accumDur=%u\n", "processNDDStatusEvent", 257, *v2, *(v3 + 50), *(v3 + 52), *v4, *(v3 + 60), *(v3 + 64));
}

uint64_t AppleBCMWLANNearbyDeviceDiscoveryAdapter::handleNDDFWEvents(uint64_t a1)
{
  result = OUTLINED_FUNCTION_4_2(a1);
  if (result)
  {
    result = OUTLINED_FUNCTION_8_2();
    if (result)
    {
      OUTLINED_FUNCTION_10_1();
      OUTLINED_FUNCTION_3_0();
      return CCLogStream::logAlert(v2, "[dk] %s@%d:%s:%dInvalid filter status version, received %u\n", v3, v4, v5, v6, v7);
    }
  }

  return result;
}

{
  v1 = OUTLINED_FUNCTION_9_0(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Version=%u, length=%u, filterId=%u, radioEnc=%u, curNumRpts=%u, validityMask=%u filterStatus=%u inactiveReason=%u\n", "handleNDDFWEvents", 294, *v2, *(v3 + 50), *(v3 + 52), *(v3 + 53), *(v3 + 54), *(v3 + 56), *(v3 + 57), *(v3 + 58));
}

{
  result = *(*(a1 + 40) + 32);
  if (result)
  {
    result = CCLogStream::shouldLog();
    if (result)
    {
      v3 = *(*(a1 + 40) + 32);
      OUTLINED_FUNCTION_7_1();
      return CCLogStream::logAlert(v4, "[dk] %s@%d:%s:%dInvalid event\n", v5, v6, v7, v8);
    }
  }

  return result;
}

OSObject *AppleBCMWLANGASAdapter::withDriver(const OSMetaClass *(__cdecl *a1)(const OSMetaClassBase *__hidden this))
{
  v4 = 0xAAAAAAAAAAAAAAAALL;
  if (OSObjectAllocate(gAppleBCMWLANGASAdapterMetaClass, &v4))
  {
    return 0;
  }

  v2 = v4;
  if (v4 && (AppleBCMWLANGASAdapter::initWithDriver(v4, a1) & 1) == 0)
  {
    (v2->release)(v2);
    return 0;
  }

  return v2;
}

uint64_t AppleBCMWLANGASAdapter::setGAS_REQ(uint64_t a1, uint64_t a2)
{
  if (!OUTLINED_FUNCTION_6_2(a1) || !OUTLINED_FUNCTION_7_2())
  {
    if (a2)
    {
      goto LABEL_4;
    }

LABEL_22:
    started = 3758097090;
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_8_3();
  CCLogStream::logNoticeIf(v19, 0x100000uLL, "[dk] %s@%d:Enter %s \n", v22, v23, v24);
  if (!a2)
  {
    goto LABEL_22;
  }

LABEL_4:
  isGASQueryAllowed = AppleBCMWLANCore::isGASQueryAllowed(**(v2 + 40), v4, v5);
  if (isGASQueryAllowed)
  {
    started = isGASQueryAllowed;
  }

  else
  {
    v7 = AppleBCMWLANGASAdapter::setGASQueryParams(v2, a2);
    v8 = *(v2 + 40);
    if (v7)
    {
      started = v7;
      if (*(v8 + 16) && CCLogStream::shouldLog())
      {
        v11 = *(v2 + 40);
        v12 = *(v11 + 16);
        v13 = OUTLINED_FUNCTION_1_0(v11);
        (*(v14 + 112))(v13, started);
        CCLogStream::logAlert(v12, "[dk] %s@%d:setGASQueryParams Failed %s\n");
      }
    }

    else
    {
      *(v8 + 24) = 1;
      if (OUTLINED_FUNCTION_4_3() && CCLogStream::shouldLog())
      {
        v21 = OUTLINED_FUNCTION_4_3();
        CCLogStream::logAlert(v21, "[dk] %s@%d:AppleBCMWLANGASAdapter::setGAS_REQ: Sending GAS Query\n", "setGAS_REQ", 376);
      }

      started = AppleBCMWLANGASAdapter::startGASQuery(v2, a2);
      if (started)
      {
        *(*(v2 + 40) + 24) = 0;
        if (OUTLINED_FUNCTION_4_3())
        {
          if (CCLogStream::shouldLog())
          {
            v15 = *(v2 + 40);
            v16 = *(v15 + 16);
            v17 = OUTLINED_FUNCTION_1_0(v15);
            (*(v18 + 112))(v17, started);
            CCLogStream::logAlert(v16, "[dk] %s@%d:startGASQuery Failed %s\n");
          }
        }
      }
    }
  }

LABEL_10:
  if (OUTLINED_FUNCTION_4_3() && OUTLINED_FUNCTION_7_2())
  {
    OUTLINED_FUNCTION_4_3();
    OUTLINED_FUNCTION_8_3();
    CCLogStream::logNoticeIf(v20, 0x100000uLL, "[dk] %s@%d:Leave %s \n", v22, v23, v24);
  }

  return started;
}

uint64_t AppleBCMWLANGASAdapter::sendGasCompleteEvent(AppleBCMWLANCore ***this, unsigned int a2)
{
  v8 = a2;
  if (a2 < 4)
  {
    result = AppleBCMWLANGASAdapter::isGASEventAllowed(this);
    if (result)
    {
      return result;
    }

    if (OUTLINED_FUNCTION_4_3())
    {
      shouldLog = CCLogStream::shouldLog();
      v5 = this[5];
      if (shouldLog)
      {
        CCLogStream::logAlert(v5[2], "[dk] %s@%d:AppleBCMWLANGASAdapter::sendGasCompleteEvent: GAS COMPLETE event status %u\n", "sendGasCompleteEvent", 402, a2);
        v5 = this[5];
      }
    }

    AppleBCMWLANCore::postMessageInfra(*v5, 0xDCu, &v8, 4uLL);
    return 0;
  }

  result = OUTLINED_FUNCTION_4_3();
  if (result)
  {
    result = CCLogStream::shouldLog();
    if (result)
    {
      v7 = OUTLINED_FUNCTION_4_3();
      CCLogStream::logAlert(v7, "[dk] %s@%d:Invalid gas event status argument %u\n", "sendGasCompleteEvent", 397, a2);
      return 0;
    }
  }

  return result;
}

uint64_t AppleBCMWLANGASAdapter::setGAS_ABORT(AppleBCMWLANGASAdapter *this)
{
  if (OUTLINED_FUNCTION_6_2(this))
  {
    v3 = OUTLINED_FUNCTION_7_2();
    v2 = *(v1 + 5);
    if (v3)
    {
      CCLogStream::logNoticeIf(v2[2], 0x100000uLL, "[dk] %s@%d:Enter %s \n", "setGAS_ABORT", 422, "setGAS_ABORT");
      v2 = *(v1 + 5);
    }
  }

  if ((AppleBCMWLANCore::featureFlagIsBitSet(*v2, 17) & 1) == 0)
  {
    if (OUTLINED_FUNCTION_4_3() && CCLogStream::shouldLog())
    {
      v8 = OUTLINED_FUNCTION_4_3();
      CCLogStream::logAlert(v8, "[dk] %s@%d:%s: ANQP Offload Disabled\n");
    }

    goto LABEL_17;
  }

  v4 = AppleBCMWLANGASAdapter::issueGASAbort(v1);
  if (v4)
  {
    v9 = v4;
    if (OUTLINED_FUNCTION_4_3() && CCLogStream::shouldLog())
    {
      v11 = *(v1 + 5);
      v12 = *(v11 + 16);
      v13 = OUTLINED_FUNCTION_1_0(v11);
      (*(v14 + 112))(v13, v9);
      CCLogStream::logAlert(v12, "[dk] %s@%d:setGAS_ABORT Failed %s\n");
    }

LABEL_17:
    v5 = 2;
    goto LABEL_7;
  }

  v5 = 0;
LABEL_7:
  v6 = AppleBCMWLANGASAdapter::sendGasCompleteEvent(v1, v5);
  *(*(v1 + 5) + 24) = 0;
  if (OUTLINED_FUNCTION_4_3() && OUTLINED_FUNCTION_7_2())
  {
    v10 = OUTLINED_FUNCTION_4_3();
    CCLogStream::logNoticeIf(v10, 0x100000uLL, "[dk] %s@%d:Leave %s \n", "setGAS_ABORT", 441, "setGAS_ABORT");
  }

  return v6;
}

uint64_t AppleBCMWLANGASAdapter::handleGAS_FRAGMENT_RX(AppleBCMWLANGASAdapter *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v71 = 0;
  if (*(*(this + 5) + 16) && OUTLINED_FUNCTION_7_2())
  {
    CCLogStream::logNoticeIf(*(*(this + 5) + 16), 0x100000uLL, "[dk] %s@%d:Enter %s \n", "handleGAS_FRAGMENT_RX", 520, "handleGAS_FRAGMENT_RX");
  }

  v69 = this;
  if (!a2)
  {
    shouldLog = *(*(this + 5) + 16);
    if (shouldLog)
    {
      shouldLog = CCLogStream::shouldLog();
      if (shouldLog)
      {
        v39 = OUTLINED_FUNCTION_1_4(shouldLog, a2, a3, a4, a5, a6, a7, a8, v43, v45, v47, v49, v51, v53, v55, v57, v59, v61, v63, v65, v67, this);
        shouldLog = CCLogStream::logAlert(v39, "[dk] %s@%d:No Data attached to Event\n");
      }
    }

LABEL_12:
    v29 = 0;
    goto LABEL_13;
  }

  v10 = AppleBCMWLANGASAdapter::bcmEventStatusToAppleGasEventStatus(this, *(a2 + 8), &v71);
  if (!v10)
  {
    v18 = *(a2 + 28);
    v19 = *(a2 + 20);
    if (v19 <= 7)
    {
      shouldLog = OUTLINED_FUNCTION_1_4(v10, v11, v12, v13, v14, v15, v16, v17, v43, v45, v47, v49, v51, v53, v55, v57, v59, v61, v63, v65, v67, this);
      if (shouldLog)
      {
        shouldLog = CCLogStream::shouldLog();
        if (shouldLog)
        {
          v41 = OUTLINED_FUNCTION_1_4(shouldLog, a2, a3, a4, a5, a6, a7, a8, v43, v45, v47, v49, v51, v53, v55, v57, v59, v61, v63, v65, v67, v69);
          v47 = *(a2 + 20);
          v49 = 8;
          shouldLog = CCLogStream::logAlert(v41, "[dk] %s@%d:Invalid event message length=%u, too small to hold GAS response header length=%lu\n");
        }
      }
    }

    else
    {
      v20 = *(a2 + 24);
      v21 = *(a2 + 25);
      v22 = *(a2 + 26);
      v23 = *(a2 + 27);
      v24 = *(a2 + 29);
      v25 = v71;
      *(a2 + 28) = v71;
      *(a2 + 40) = v19;
      v65 = v18;
      v67 = v20;
      *(a2 + 32) = v20;
      *(a2 + 33) = v21;
      *(a2 + 34) = v22;
      *(a2 + 35) = v23;
      *(a2 + 36) = v18;
      *(a2 + 37) = v24;
      shouldLog = AppleBCMWLANGASAdapter::isGASEventAllowed(this);
      if (shouldLog)
      {
        v29 = shouldLog;
        goto LABEL_13;
      }

      *(a2 + 44) = 1;
      v27 = *(this + 5);
      if (v27[2])
      {
        v28 = CCLogStream::shouldLog();
        v27 = *(this + 5);
        if (v28)
        {
          CCLogStream::logAlert(v27[2], "[dk] %s@%d:AppleBCMWLANGASAdapter::handleGAS_FRAGMENT_RX: %02x:%02x:%02x:%02x:%02x:%02x bcmEventStatus %u appleGasEventStatus %u\n", "handleGAS_FRAGMENT_RX", 554, v67, v21, v22, v23, v65, v24, *(a2 + 8), v25);
          v27 = *(this + 5);
        }
      }

      shouldLog = AppleBCMWLANCore::postMessageInfra(*v27, 0xDBu, (a2 + 28), v19 + 20);
    }

    goto LABEL_12;
  }

  v29 = v10;
  shouldLog = OUTLINED_FUNCTION_1_4(v10, v11, v12, v13, v14, v15, v16, v17, v43, v45, v47, v49, v51, v53, v55, v57, v59, v61, v63, v65, v67, this);
  if (shouldLog)
  {
    shouldLog = CCLogStream::shouldLog();
    if (shouldLog)
    {
      v40 = OUTLINED_FUNCTION_1_4(shouldLog, a2, a3, a4, a5, a6, a7, a8, v43, v45, v47, v49, v51, v53, v55, v57, v59, v61, v63, v65, v67, v69);
      shouldLog = CCLogStream::logAlert(v40, "[dk] %s@%d:Invalid event status value %u\n", "handleGAS_FRAGMENT_RX", 526, *(a2 + 8));
    }
  }

LABEL_13:
  if (OUTLINED_FUNCTION_1_4(shouldLog, a2, a3, a4, a5, a6, a7, a8, v43, v45, v47, v49, v51, v53, v55, v57, v59, v61, v63, v65, v67, v69))
  {
    v30 = OUTLINED_FUNCTION_7_2();
    if (v30)
    {
      v42 = OUTLINED_FUNCTION_1_4(v30, v31, v32, v33, v34, v35, v36, v37, v44, v46, v48, v50, v52, v54, v56, v58, v60, v62, v64, v66, v68, v70);
      CCLogStream::logNoticeIf(v42, 0x100000uLL, "[dk] %s@%d:Leave %s \n", "handleGAS_FRAGMENT_RX", 565, "handleGAS_FRAGMENT_RX");
    }
  }

  return v29;
}

uint64_t AppleBCMWLANGASAdapter::initWithDriver(const char *a1, uint64_t a2)
{
  IOLog(a1);
  v3 = *(*a2 + 48);

  return v3(a2);
}

uint64_t AppleBCMWLANGASAdapter::setHotspot20CapsIndicationIE(uint64_t ***a1)
{
  v1 = (*a1)[2];
  v2 = OUTLINED_FUNCTION_1_0(*a1);
  v4 = (*(v3 + 112))(v2);
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Failure to configure hs20_ie: %s\n", "setHotspot20CapsIndicationIE", 150, v4);
}

uint64_t AppleBCMWLANGASAdapter::setHotspot20InterworkingIE(uint64_t ***a1)
{
  v1 = (*a1)[2];
  v2 = OUTLINED_FUNCTION_1_0(*a1);
  v4 = (*(v3 + 112))(v2);
  return CCLogStream::logCrit(v1, "[dk] %s@%d: HS20 ie error %s - failed to add IE\n", "setHotspot20InterworkingIE", 199, v4);
}

uint64_t AppleBCMWLANGASAdapter::setGASQueryParams(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a1[2];
  v7 = (*(**a1 + 112))(*a1);
  result = CCLogStream::logAlert(v6, "[dk] %s@%d:Failed with Status %s\n", "setGASQueryParams", 226, v7);
  *a4 = *a3;
  return result;
}

uint64_t AppleBCMWLANGASAdapter::setGASQueryParams(uint64_t a1)
{
  OUTLINED_FUNCTION_3_1(a1);
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logNoticeIf(v1, 0x100000uLL, "[dk] %s@%d:Leave %s \n", v3, v4, v5);
}

uint64_t AppleBCMWLANGASAdapter::startGASQuery(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v3 = OUTLINED_FUNCTION_0_2(a1, a2, a3);
  return CCLogStream::logNoticeIf(v3, 0x100000uLL, "[dk] %s@%d:GAS Peer BSSID %02x %02x %02x %02x %02x %02x\t Channel %d\n", "startGASQuery", 305, v5, v6, v7, v8, v9, v10, v11);
}

{
  v3 = OUTLINED_FUNCTION_0_2(a1, a2, a3);
  return CCLogStream::logNoticeIf(v3, 0x100000uLL, "[dk] %s@%d:GAS Peer BSSID %02x %02x %02x %02x %02x %02x\t Channel %d\n", "startGASQuery", 294, v5, v6, v7, v8, v9, v10, v11);
}

{
  v3 = OUTLINED_FUNCTION_0_2(a1, a2, a3);
  return CCLogStream::logNoticeIf(v3, 0x100000uLL, "[dk] %s@%d:GAS Peer BSSID %02x %02x %02x %02x %02x %02x\t Channel %d\n", "startGASQuery", 282, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t AppleBCMWLANGASAdapter::startGASQuery(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, _DWORD *a5)
{
  result = OUTLINED_FUNCTION_3_1(a1);
  if (result)
  {
    result = CCLogStream::shouldLog();
    if (result)
    {
      v11 = *a1;
      v12 = *(*a1 + 16);
      v13 = OUTLINED_FUNCTION_1_0(v11);
      v15 = (*(v14 + 112))(v13, a2);
      result = CCLogStream::logAlert(v12, "[dk] %s@%d:%s: Failed with Status %s\n", "startGASQuery", 312, "startGASQuery", v15);
    }
  }

  *a5 = a2;
  *a4 = a3;
  return result;
}

uint64_t AppleBCMWLANGASAdapter::startGASQuery(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_3_1(a1);
  return CCLogStream::logNoticeIf(v1, 0x100000uLL, "[dk] %s@%d:GAS Peer Buffer memory allocation failed\n", "startGASQuery", 251);
}

{
  OUTLINED_FUNCTION_3_1(a1);
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logNoticeIf(v1, 0x100000uLL, "[dk] %s@%d:Leave %s \n", v3, v4, v5);
}

uint64_t AppleBCMWLANGASAdapter::issueGASAbort(uint64_t a1)
{
  result = OUTLINED_FUNCTION_3_1(a1);
  if (result)
  {
    v4 = v3;
    result = CCLogStream::shouldLog();
    if (result)
    {
      v5 = *a1;
      v6 = *(*a1 + 16);
      v7 = OUTLINED_FUNCTION_1_0(v5);
      v9 = (*(v8 + 112))(v7, v4);
      return CCLogStream::logAlert(v6, "[dk] %s@%d:Line %d Failed to Abort GAS Query %s\n", "issueGASAbort", 328, 328, v9);
    }
  }

  return result;
}

{
  v1 = OUTLINED_FUNCTION_3_1(a1);
  return CCLogStream::logAlertIf(v1, 0x100000uLL, "[dk] %s@%d:GAS Query Aborted\n", "issueGASAbort", 332);
}

{
  OUTLINED_FUNCTION_3_1(a1);
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logNoticeIf(v1, 0x100000uLL, "[dk] %s@%d:Leave %s \n", v3, v4, v5);
}

uint64_t AppleBCMWLANGASAdapter::bcmEventStatusToAppleGasEventStatus(uint64_t a1)
{
  OUTLINED_FUNCTION_3_1(a1);
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logNoticeIf(v1, 0x100000uLL, "[dk] %s@%d:Enter %s \n", v3, v4, v5);
}

{
  OUTLINED_FUNCTION_3_1(a1);
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logNoticeIf(v1, 0x100000uLL, "[dk] %s@%d:Leave %s \n", v3, v4, v5);
}

uint64_t AppleBCMWLANGASAdapter::handleGAS_COMPLETE(uint64_t a1)
{
  OUTLINED_FUNCTION_3_1(a1);
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logNoticeIf(v1, 0x100000uLL, "[dk] %s@%d:Enter %s \n", v3, v4, v5);
}

{
  v1 = OUTLINED_FUNCTION_3_1(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:AppleBCMWLANGASAdapter::handleGAS_COMPLETE: %02x:%02x:%02x:%02x:%02x:%02x bcmEventStatus %u appleGasEventStatus %u\n", "handleGAS_COMPLETE", 584, v2[24], v2[25], v2[26], v2[27], v2[28], v2[29], *v3, v4);
}

{
  v1 = OUTLINED_FUNCTION_3_1(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:No Data attached to Event\n", "handleGAS_COMPLETE", 576);
}

{
  OUTLINED_FUNCTION_3_1(a1);
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logNoticeIf(v1, 0x100000uLL, "[dk] %s@%d:Leave %s \n", v3, v4, v5);
}

uint64_t AppleBCMWLANGASAdapter::handleGAS_COMPLETE(uint64_t a1, _DWORD *a2)
{
  result = OUTLINED_FUNCTION_3_1(a1);
  if (result)
  {
    result = CCLogStream::shouldLog();
    if (result)
    {
      result = CCLogStream::logAlert(*(*a1 + 16), "[dk] %s@%d:Driver in RebootShutdownPending state\n", "handleGAS_COMPLETE", 578);
    }
  }

  *a2 = 0;
  return result;
}

uint64_t AppleBCMWLANIOReportingCore::incrementEventLogCounter(AppleBCMWLANIOReportingCore *this, uint64_t a2, void (*a3)(void))
{
  HIDWORD(v81) = -1431655766;
  snprintf(&v81 + 4, 4uLL, "%03d", a2);
  v6 = SBYTE4(v81);
  v7 = SBYTE5(v81);
  v8 = SBYTE6(v81);
  v9 = OUTLINED_FUNCTION_25();
  if (!v9)
  {
    ReporterProvider = IO80211Controller::getReporterProvider(*(v10 + 208));
    *(*(this + 7) + 40) = OUTLINED_FUNCTION_23(ReporterProvider, v12, v13, v14);
    if (!*(*(this + 7) + 40))
    {
      return 3758097085;
    }

    Reporter = AppleBCMWLANIOReporting::getReporter(this);
    OSSet::setObject(Reporter, *(*(this + 7) + 40));
    v16 = OUTLINED_FUNCTION_25();
    v17 = OUTLINED_FUNCTION_5_0(v16);
    (*(v18 + 16))(v17);
    v9 = OUTLINED_FUNCTION_25();
  }

  v19 = (v7 << 8) | (v6 << 16) | v8;
  if (IOSimpleReporter::incrementValue(v9, v19 | 0x454C540000000000, 1))
  {
    OUTLINED_FUNCTION_0_3();
    if (convertBcomTagToString(a2))
    {
      v78 = convertBcomTagToString(a2);
      OUTLINED_FUNCTION_30(v78, v26, "%s", v27, v28, v29, v30, v31, v78, v80, v81, v82[0]);
    }

    else
    {
      OUTLINED_FUNCTION_30(0, v20, "%d", v21, v22, v23, v24, v25, a2, v80, v81, v82[0]);
    }

    v32 = OUTLINED_FUNCTION_25();
    v33 = IOReporter::addChannel(v32, v19 | 0x454C540000000000, v82);
    if (v33)
    {
      v34 = v33;
      if (AppleBCMWLANIOReporting::getLogger(this))
      {
        AppleBCMWLANIOReporting::getLogger(this);
        if (CCLogStream::shouldLog())
        {
          Logger = AppleBCMWLANIOReporting::getLogger(this);
          CCLogStream::logAlert(Logger, "[dk] %s@%d:ivars->fEventLogTagReporter->addChannel failed \n");
        }
      }

      return v34;
    }

    v36 = OUTLINED_FUNCTION_25();
    IOSimpleReporter::incrementValue(v36, v19 | 0x454C540000000000, 1);
    AppleBCMWLANIOReporting::getRemoveReporterCallback(this);
    v37 = OUTLINED_FUNCTION_7_3();
    AppleBCMWLANIOReporting::getTarget(v37);
    v38 = OUTLINED_FUNCTION_27();
    CurrentBSS = AppleBCMWLANBssManager::getCurrentBSS(v38);
    (v6)(0x454C540000000000, CurrentBSS, 0, "Event Log", "Tag counters");
    AppleBCMWLANIOReporting::getAddReporterCallback(this);
    v40 = OUTLINED_FUNCTION_7_3();
    AppleBCMWLANIOReporting::getTarget(v40);
    v41 = OUTLINED_FUNCTION_27();
    AppleBCMWLANBssManager::getCurrentBSS(v41);
    OUTLINED_FUNCTION_13_1();
    v43 = *(v42 + 40);
    v6(0x454C540000000000);
  }

  v44 = OUTLINED_FUNCTION_26();
  if (!v44)
  {
    v46 = IO80211Controller::getReporterProvider(*(v45 + 208));
    *(*(this + 7) + 48) = OUTLINED_FUNCTION_31(v46, v47, v48, v49);
    if (*(*(this + 7) + 48))
    {
      v50 = AppleBCMWLANIOReporting::getReporter(this);
      OSSet::setObject(v50, *(*(this + 7) + 48));
      v51 = OUTLINED_FUNCTION_26();
      v52 = OUTLINED_FUNCTION_5_0(v51);
      (*(v53 + 16))(v52);
      v44 = OUTLINED_FUNCTION_26();
      goto LABEL_16;
    }

    return 3758097085;
  }

LABEL_16:
  if (!IOSimpleReporter::incrementValue(v44, v19 | 0x454C544200000000, a3))
  {
    return 0;
  }

  OUTLINED_FUNCTION_0_3();
  if (convertBcomTagToString(a2))
  {
    v79 = convertBcomTagToString(a2);
    OUTLINED_FUNCTION_30(v79, v60, "%s", v61, v62, v63, v64, v65, v79, v80, v81, v82[0]);
  }

  else
  {
    OUTLINED_FUNCTION_30(0, v54, "%d", v55, v56, v57, v58, v59, a2, v80, v81, v82[0]);
  }

  v66 = OUTLINED_FUNCTION_26();
  v67 = IOReporter::addChannel(v66, v19 | 0x454C544200000000, v82);
  if (v67)
  {
    v34 = v67;
    if (AppleBCMWLANIOReporting::getLogger(this))
    {
      AppleBCMWLANIOReporting::getLogger(this);
      if (CCLogStream::shouldLog())
      {
        v68 = AppleBCMWLANIOReporting::getLogger(this);
        CCLogStream::logAlert(v68, "[dk] %s@%d:ivars->fEventLogTagBytesReporter->addChannel failed \n");
      }
    }
  }

  else
  {
    v69 = OUTLINED_FUNCTION_26();
    v34 = IOSimpleReporter::incrementValue(v69, v19 | 0x454C544200000000, a3);
    AppleBCMWLANIOReporting::getRemoveReporterCallback(this);
    v70 = OUTLINED_FUNCTION_12_1();
    AppleBCMWLANIOReporting::getTarget(v70);
    v71 = OUTLINED_FUNCTION_8_4();
    v72 = AppleBCMWLANBssManager::getCurrentBSS(v71);
    (a3)(a2, v72, 0, "Event Log", "Tag Received Bytes");
    AppleBCMWLANIOReporting::getAddReporterCallback(this);
    v73 = OUTLINED_FUNCTION_12_1();
    AppleBCMWLANIOReporting::getTarget(v73);
    v74 = OUTLINED_FUNCTION_8_4();
    AppleBCMWLANBssManager::getCurrentBSS(v74);
    OUTLINED_FUNCTION_13_1();
    v76 = *(v75 + 48);
    a3(a2);
  }

  return v34;
}

uint64_t AppleBCMWLANIOReportingCore::sendPowerStateTimeToCoreAnalytics(AppleBCMWLANIOReportingCore *this, unsigned int a2, unsigned int a3)
{
  OUTLINED_FUNCTION_43();
  if ((v21 & 0xF) != 0)
  {
    return 0;
  }

  v6 = OSString::withCString("com.apple.wifi.SystemSleepStates");
  if (!v6)
  {
    if (AppleBCMWLANIOReporting::getLogger(this))
    {
      AppleBCMWLANIOReporting::getLogger(this);
      if (CCLogStream::shouldLog())
      {
        Logger = AppleBCMWLANIOReporting::getLogger(this);
        CCLogStream::logAlert(Logger, "[dk] %s@%d:Fail to allocate eventName\n", "sendPowerStateTimeToCoreAnalytics", 699);
      }
    }

    return 0;
  }

  v7 = v6;
  v8 = OSDictionary::withCapacity(1u);
  if (v8)
  {
    if (a2 >= 0x10)
    {
      if (AppleBCMWLANIOReporting::getLogger(this))
      {
        AppleBCMWLANIOReporting::getLogger(this);
        if (CCLogStream::shouldLog())
        {
          v17 = AppleBCMWLANIOReporting::getLogger(this);
          CCLogStream::logAlert(v17, "[dk] %s@%d:Invalid systemPowerState type =%d\n", "sendPowerStateTimeToCoreAnalytics", 754, a2);
        }
      }
    }

    else
    {
      v9 = OSString::withCString(off_1003C5DE8[a2]);
      if (v9)
      {
        v10 = v9;
        v11 = OSNumber::withNumber(a3, 0x20uLL);
        if (v11)
        {
          OSDictionary::setObject(v8, v10, v11);
          if (!OUTLINED_FUNCTION_24())
          {
            v12 = 1;
LABEL_20:
            (v10->release)(v10);
            if (v11)
            {
              (v11->release)(v11);
            }

            goto LABEL_22;
          }

          if (AppleBCMWLANIOReporting::getLogger(this))
          {
            AppleBCMWLANIOReporting::getLogger(this);
            if (CCLogStream::shouldLog())
            {
              v18 = AppleBCMWLANIOReporting::getLogger(this);
              CStringNoCopy = OSString::getCStringNoCopy(v7);
              CCLogStream::logEmergency(v18, "[dk] %s@%d:Failed to send CoreAnalyticsSendEvent for event %s", "sendPowerStateTimeToCoreAnalytics", 764, CStringNoCopy);
            }
          }
        }

        else if (AppleBCMWLANIOReporting::getLogger(this))
        {
          AppleBCMWLANIOReporting::getLogger(this);
          if (CCLogStream::shouldLog())
          {
            v15 = AppleBCMWLANIOReporting::getLogger(this);
            CCLogStream::logAlert(v15, "[dk] %s@%d:Fail to allocate numValue\n", "sendPowerStateTimeToCoreAnalytics", 760);
          }
        }

        v12 = 0;
        goto LABEL_20;
      }
    }

    if (AppleBCMWLANIOReporting::getLogger(this))
    {
      AppleBCMWLANIOReporting::getLogger(this);
      if (CCLogStream::shouldLog())
      {
        v16 = AppleBCMWLANIOReporting::getLogger(this);
        CCLogStream::logAlert(v16, "[dk] %s@%d:Fail to allocate keyString\n");
      }
    }
  }

  else if (AppleBCMWLANIOReporting::getLogger(this))
  {
    AppleBCMWLANIOReporting::getLogger(this);
    if (CCLogStream::shouldLog())
    {
      v14 = AppleBCMWLANIOReporting::getLogger(this);
      CCLogStream::logAlert(v14, "[dk] %s@%d:Fail to allocate eventPayload\n");
    }
  }

  v12 = 0;
LABEL_22:
  (v7->release)(v7);
  if (v8)
  {
    (v8->release)(v8);
  }

  return v12;
}

uint64_t AppleBCMWLANIOReportingCore::reportSystemPowerState(AppleBCMWLANIOReportingCore *this, unint64_t *a2, int a3, int a4, int a5)
{
  v5 = 3758097090;
  if (a2 <= 3)
  {
    v7 = a4;
    v9 = a2;
    v11 = a4 ^ 1;
    mach_continuous_nanoseconds = AppleBCMWLANUtil::get_mach_continuous_nanoseconds(0, a2);
    *(*(this + 7) + 16 * v9 + 8 * v11 + 216) = mach_continuous_nanoseconds;
    if (v7)
    {
      return 0;
    }

    v13 = AppleBCMWLANIOReportingCore::getSystemPowerStateCheckPoint(mach_continuous_nanoseconds, v9, a3, a5);
    if (v13 <= 0xF)
    {
      v14 = *(this + 7) + 16 * v9;
      AppleBCMWLANIOReportingCore::sendPowerStateTimeToCoreAnalytics(this, v13, (*(v14 + 224) - *(v14 + 216)) / 0xF4240uLL);
      AppleBCMWLANIOReportingCore::reportDeltaPowerTimeIfNeeded(this, v9, a3);
      return 0;
    }
  }

  return v5;
}

uint64_t AppleBCMWLANIOReportingCore::reportWakeReason(AppleBCMWLANIOReportingCore *this)
{
  OUTLINED_FUNCTION_32();
  if (v4 > 0xFF)
  {
    return v2;
  }

  v5 = v4;
  OUTLINED_FUNCTION_37(v3);
  v7 = *(v6 + 104);
  if (!v7)
  {
    ReporterProvider = IO80211Controller::getReporterProvider(*(v6 + 208));
    *(*(v1 + 7) + 104) = OUTLINED_FUNCTION_23(ReporterProvider, v9, v10, v11);
    if (!*(*(v1 + 7) + 104))
    {
      return (v2 + 1);
    }

    Reporter = AppleBCMWLANIOReporting::getReporter(v1);
    OSSet::setObject(Reporter, *(*(v1 + 7) + 104));
    v13 = OUTLINED_FUNCTION_36();
    v14 = OUTLINED_FUNCTION_5_0(v13);
    (*(v15 + 16))(v14);
    v7 = OUTLINED_FUNCTION_36();
  }

  if (!IOSimpleReporter::incrementValue(v7, v5 | 0x5769466957616B20, 1))
  {
    return 0;
  }

  OUTLINED_FUNCTION_0_3();
  if (v5 < 0xDC)
  {
    if (convertEventToString(v5, 0, 0))
    {
      v22 = convertEventToString(v5, 0, 0);
      goto LABEL_12;
    }

    OUTLINED_FUNCTION_30(0, v29, "Event %d", v30, v31, v32, v33, v34, v5, v49, v50, v51[0]);
  }

  else
  {
    if (convertAdditionalEventToString(v5))
    {
      v22 = convertAdditionalEventToString(v5);
LABEL_12:
      OUTLINED_FUNCTION_30(v22, v23, "%s", v24, v25, v26, v27, v28, v22, v49, v50, v51[0]);
      goto LABEL_15;
    }

    OUTLINED_FUNCTION_30(0, v16, "Additional Event %d", v17, v18, v19, v20, v21, v5, v49, v50, v51[0]);
  }

LABEL_15:
  v35 = OUTLINED_FUNCTION_36();
  if (IOReporter::addChannel(v35, v5 | 0x5769466957616B20, v51))
  {
    v36 = OUTLINED_FUNCTION_12_1();
    if (AppleBCMWLANIOReporting::getLogger(v36))
    {
      AppleBCMWLANIOReporting::getLogger(v1);
      if (CCLogStream::shouldLog())
      {
        Logger = AppleBCMWLANIOReporting::getLogger(v1);
        CCLogStream::logAlert(Logger, "[dk] %s@%d:ivars->fWakeReasonReporter->addChannel failed \n", "reportWakeReason", 817);
      }
    }
  }

  else
  {
    v38 = OUTLINED_FUNCTION_36();
    IOSimpleReporter::incrementValue(v38, v5 | 0x5769466957616B20, 1);
    v39 = OUTLINED_FUNCTION_12_1();
    AppleBCMWLANIOReporting::getRemoveReporterCallback(v39);
    v40 = OUTLINED_FUNCTION_8_4();
    AppleBCMWLANIOReporting::getTarget(v40);
    v41 = OUTLINED_FUNCTION_7_3();
    AppleBCMWLANBssManager::getCurrentBSS(v41);
    v42 = OUTLINED_FUNCTION_2_3();
    v5(v42);
    AppleBCMWLANIOReporting::getAddReporterCallback(v1);
    v43 = OUTLINED_FUNCTION_8_4();
    AppleBCMWLANIOReporting::getTarget(v43);
    v44 = OUTLINED_FUNCTION_7_3();
    AppleBCMWLANBssManager::getCurrentBSS(v44);
    OUTLINED_FUNCTION_13_1();
    v46 = *(v45 + 104);
    v47 = OUTLINED_FUNCTION_6_3();
    v5(v47);
  }

  return v2;
}

uint64_t AppleBCMWLANIOReportingCore::reportEventLogSet(AppleBCMWLANIOReportingCore *this, void (*a2)(uint64_t), unsigned int a3)
{
  v7 = *(this + 7);
  v8 = *(v7 + 56);
  if (!v8)
  {
    ReporterProvider = IO80211Controller::getReporterProvider(*(v7 + 208));
    *(*(this + 7) + 56) = OUTLINED_FUNCTION_23(ReporterProvider, v10, v11, v12);
    if (!*(*(this + 7) + 56))
    {
      return 3758097085;
    }

    Reporter = AppleBCMWLANIOReporting::getReporter(this);
    OSSet::setObject(Reporter, *(*(this + 7) + 56));
    v14 = OUTLINED_FUNCTION_19();
    v15 = OUTLINED_FUNCTION_5_0(v14);
    (*(v16 + 16))(v15);
    v8 = OUTLINED_FUNCTION_19();
  }

  v17 = ((a2 | 0x454C530000000100) - 256);
  if (IOSimpleReporter::incrementValue(v8, v17, 1))
  {
    OUTLINED_FUNCTION_0_3();
    if (convertBcomSetToString(a2))
    {
      v69 = convertBcomSetToString(a2);
      OUTLINED_FUNCTION_30(v69, v24, "%s", v25, v26, v27, v28, v29, v69, v71, v72, v73[0]);
    }

    else
    {
      OUTLINED_FUNCTION_30(0, v18, "%d", v19, v20, v21, v22, v23, a2, v71, v72, v73[0]);
    }

    v30 = OUTLINED_FUNCTION_19();
    if (IOReporter::addChannel(v30, v17, v73))
    {
      v31 = OUTLINED_FUNCTION_8_4();
      if (AppleBCMWLANIOReporting::getLogger(v31))
      {
        AppleBCMWLANIOReporting::getLogger(this);
        if (CCLogStream::shouldLog())
        {
          Logger = AppleBCMWLANIOReporting::getLogger(this);
          CCLogStream::logAlert(Logger, "[dk] %s@%d:ivars->fEventLogSetReporter->addChannel for %s failed \n", "reportEventLogSet", 1665, v73);
        }
      }

      return v3;
    }

    v33 = OUTLINED_FUNCTION_19();
    IOSimpleReporter::incrementValue(v33, v17, 1);
    v34 = OUTLINED_FUNCTION_8_4();
    AppleBCMWLANIOReporting::getRemoveReporterCallback(v34);
    v35 = OUTLINED_FUNCTION_27();
    Target = AppleBCMWLANIOReporting::getTarget(v35);
    CurrentBSS = AppleBCMWLANBssManager::getCurrentBSS(this);
    (v17)(Target, CurrentBSS, 0, "Event Log", "Set counters");
    AppleBCMWLANIOReporting::getAddReporterCallback(this);
    v38 = OUTLINED_FUNCTION_27();
    v39 = AppleBCMWLANIOReporting::getTarget(v38);
    AppleBCMWLANBssManager::getCurrentBSS(this);
    OUTLINED_FUNCTION_13_1();
    v41 = *(v40 + 56);
    v17(v39);
    if (!a3)
    {
      return v3;
    }
  }

  else
  {
    v3 = 0;
    if (!a3)
    {
      return v3;
    }
  }

  v42 = OUTLINED_FUNCTION_19();
  if (!IOSimpleReporter::incrementValue(v42, a2 | 0x454C530000000100, a3))
  {
    return 0;
  }

  OUTLINED_FUNCTION_0_3();
  if (convertBcomSetToString(a2))
  {
    v70 = convertBcomSetToString(a2);
    OUTLINED_FUNCTION_30(v70, v49, "Dropped %s", v50, v51, v52, v53, v54, v70, v71, v72, v73[0]);
  }

  else
  {
    OUTLINED_FUNCTION_30(0, v43, "Dropped %d", v44, v45, v46, v47, v48, a2, v71, v72, v73[0]);
  }

  v55 = OUTLINED_FUNCTION_19();
  if (IOReporter::addChannel(v55, a2 | 0x454C530000000100, v73))
  {
    v56 = OUTLINED_FUNCTION_8_4();
    if (AppleBCMWLANIOReporting::getLogger(v56))
    {
      AppleBCMWLANIOReporting::getLogger(this);
      if (CCLogStream::shouldLog())
      {
        v57 = AppleBCMWLANIOReporting::getLogger(this);
        CCLogStream::logAlert(v57, "[dk] %s@%d:ivars->fEventLogSetReporter->addChannel for %s failed \n", "reportEventLogSet", 1690, v73);
      }
    }
  }

  else
  {
    v58 = OUTLINED_FUNCTION_19();
    IOSimpleReporter::incrementValue(v58, a2 | 0x454C530000000100, a3);
    v59 = OUTLINED_FUNCTION_8_4();
    AppleBCMWLANIOReporting::getRemoveReporterCallback(v59);
    v60 = OUTLINED_FUNCTION_12_1();
    AppleBCMWLANIOReporting::getTarget(v60);
    v61 = OUTLINED_FUNCTION_7_3();
    AppleBCMWLANBssManager::getCurrentBSS(v61);
    v62 = OUTLINED_FUNCTION_2_3();
    a2(v62);
    AppleBCMWLANIOReporting::getAddReporterCallback(this);
    v63 = OUTLINED_FUNCTION_12_1();
    AppleBCMWLANIOReporting::getTarget(v63);
    v64 = OUTLINED_FUNCTION_7_3();
    AppleBCMWLANBssManager::getCurrentBSS(v64);
    OUTLINED_FUNCTION_13_1();
    v66 = *(v65 + 56);
    v67 = OUTLINED_FUNCTION_6_3();
    a2(v67);
  }

  return v3;
}

uint64_t AppleBCMWLANIOReportingCore::reportEventLogSetSize(AppleBCMWLANIOReportingCore *this, uint64_t a2, unsigned int a3)
{
  v6 = *(this + 7);
  v7 = *(v6 + 64);
  if (!v7)
  {
    ReporterProvider = IO80211Controller::getReporterProvider(*(v6 + 208));
    *(*(this + 7) + 64) = OUTLINED_FUNCTION_31(ReporterProvider, v9, v10, v11);
    if (!*(*(this + 7) + 64))
    {
      return 3758097085;
    }

    Reporter = AppleBCMWLANIOReporting::getReporter(this);
    OSSet::setObject(Reporter, *(*(this + 7) + 64));
    v13 = OUTLINED_FUNCTION_34();
    v14 = OUTLINED_FUNCTION_5_0(v13);
    (*(v15 + 16))(v14);
    v7 = OUTLINED_FUNCTION_34();
  }

  if (!IOSimpleReporter::incrementValue(v7, a2 | 0x454C534200000000, a3))
  {
    return 0;
  }

  OUTLINED_FUNCTION_0_3();
  if (convertBcomSetToString(a2))
  {
    v42 = convertBcomSetToString(a2);
    OUTLINED_FUNCTION_30(v42, v22, "%s", v23, v24, v25, v26, v27, v42, v43, v44, v45[0]);
  }

  else
  {
    OUTLINED_FUNCTION_30(0, v16, "%d", v17, v18, v19, v20, v21, a2, v43, v44, v45[0]);
  }

  v28 = OUTLINED_FUNCTION_34();
  if (IOReporter::addChannel(v28, a2 | 0x454C534200000000, v45))
  {
    v29 = OUTLINED_FUNCTION_12_1();
    if (AppleBCMWLANIOReporting::getLogger(v29))
    {
      AppleBCMWLANIOReporting::getLogger(this);
      if (CCLogStream::shouldLog())
      {
        Logger = AppleBCMWLANIOReporting::getLogger(this);
        CCLogStream::logAlert(Logger, "[dk] %s@%d:ivars->fEventLogSetSizeReporter->addChannel for %s failed \n", "reportEventLogSetSize", 1732, v45);
      }
    }
  }

  else
  {
    v31 = OUTLINED_FUNCTION_34();
    IOSimpleReporter::incrementValue(v31, a2 | 0x454C534200000000, a3);
    v32 = OUTLINED_FUNCTION_12_1();
    AppleBCMWLANIOReporting::getRemoveReporterCallback(v32);
    v33 = OUTLINED_FUNCTION_8_4();
    AppleBCMWLANIOReporting::getTarget(v33);
    v34 = OUTLINED_FUNCTION_7_3();
    AppleBCMWLANBssManager::getCurrentBSS(v34);
    v35 = OUTLINED_FUNCTION_2_3();
    (a3)(v35);
    AppleBCMWLANIOReporting::getAddReporterCallback(this);
    v36 = OUTLINED_FUNCTION_8_4();
    AppleBCMWLANIOReporting::getTarget(v36);
    v37 = OUTLINED_FUNCTION_7_3();
    AppleBCMWLANBssManager::getCurrentBSS(v37);
    OUTLINED_FUNCTION_13_1();
    v39 = *(v38 + 64);
    v40 = OUTLINED_FUNCTION_6_3();
    (a3)(v40);
  }

  return a2;
}

uint64_t AppleBCMWLANIOReportingCore::createDefaultReportersAndLegend(AppleBCMWLANIOReportingCore *this)
{
  v3 = OUTLINED_FUNCTION_37(this);
  *(v4 + 184) = 100;
  *(*(v3 + 56) + 188) = 250;
  *(*(v3 + 56) + 192) = 500;
  *(*(v3 + 56) + 196) = 1000;
  *(*(v3 + 56) + 200) = 1200;
  *(*(v3 + 56) + 204) = 1648;
  *(*(v3 + 56) + 72) = 5;
  *(*(v3 + 56) + 76) = 10;
  *(*(v3 + 56) + 80) = 100;
  *(*(v3 + 56) + 84) = 1000;
  *(*(v3 + 56) + 88) = 5000;
  *(*(v3 + 56) + 92) = 10000;
  v1[7][3] = OSArray::withCapacity(0xAu);
  v5 = v1[7][3];
  Logger = AppleBCMWLANIOReporting::getLogger(v1);
  if (v5)
  {
    if (Logger)
    {
      AppleBCMWLANIOReporting::getLogger(v1);
      if (CCLogStream::shouldLog())
      {
        v39 = AppleBCMWLANIOReporting::getLogger(v1);
        CCLogStream::logAlert(v39, "[dk] %s@%d:Adding %s %s \n", "createDefaultReportersAndLegend", 1981, "IOReporter API", "ConfigureReport Calls");
      }
    }

    ReporterProvider = IO80211Controller::getReporterProvider(v1[7][26]);
    *v1[7] = OUTLINED_FUNCTION_23(ReporterProvider, v8, v9, v10);
    if (!*v1[7])
    {
      return 0;
    }

    Reporter = AppleBCMWLANIOReporting::getReporter(v1);
    OSSet::setObject(Reporter, *v1[7]);
    v12 = OUTLINED_FUNCTION_5_0(*v1[7]);
    (*(v13 + 16))(v12);
    IOReporter::addChannel(*v1[7], 0x5A46732020202020uLL, "Success");
    IOReporter::addChannel(*v1[7], 0x5A46662020202020uLL, "Failed");
    AppleBCMWLANIOReporting::getAddReporterCallback(v1);
    v14 = OUTLINED_FUNCTION_12_1();
    AppleBCMWLANIOReporting::getTarget(v14);
    v15 = OUTLINED_FUNCTION_8_4();
    AppleBCMWLANBssManager::getCurrentBSS(v15);
    OUTLINED_FUNCTION_13_1();
    v17 = *v16;
    (v5)(v2);
    v18 = IO80211Controller::getReporterProvider(v1[7][26]);
    v1[7][1] = OUTLINED_FUNCTION_23(v18, v19, v20, v21);
    if (!v1[7][1])
    {
      return 0;
    }

    v22 = AppleBCMWLANIOReporting::getReporter(v1);
    OSSet::setObject(v22, v1[7][1]);
    v23 = OUTLINED_FUNCTION_5_0(v1[7][1]);
    (*(v24 + 16))(v23);
    IOReporter::addChannel(v1[7][1], 0x5A5A732020202020uLL, "Success");
    IOReporter::addChannel(v1[7][1], 0x5A5A662020202020uLL, "Failed");
    AppleBCMWLANIOReporting::getAddReporterCallback(v1);
    v25 = OUTLINED_FUNCTION_12_1();
    AppleBCMWLANIOReporting::getTarget(v25);
    v26 = OUTLINED_FUNCTION_8_4();
    AppleBCMWLANBssManager::getCurrentBSS(v26);
    OUTLINED_FUNCTION_13_1();
    v28 = *(v27 + 8);
    (v5)(v2);
    v29 = IO80211Controller::getReporterProvider(v1[7][26]);
    v1[7][2] = OUTLINED_FUNCTION_23(v29, v30, v31, v32);
    if (!v1[7][2])
    {
      return 0;
    }

    v33 = AppleBCMWLANIOReporting::getReporter(v1);
    OSSet::setObject(v33, v1[7][2]);
    v34 = OUTLINED_FUNCTION_5_0(v1[7][2]);
    (*(v35 + 16))(v34);
    return 1;
  }

  if (!Logger)
  {
    return 1;
  }

  AppleBCMWLANIOReporting::getLogger(v1);
  v36 = 1;
  if (CCLogStream::shouldLog())
  {
    v38 = AppleBCMWLANIOReporting::getLogger(v1);
    CCLogStream::logAlert(v38, "[dk] %s@%d:Failed to create ivars->_processNameIndex\n", "createDefaultReportersAndLegend", 1979);
  }

  return v36;
}

uint64_t AppleBCMWLANIOReportingCore::getIndexForProcessName(AppleBCMWLANIOReporting *a1)
{
  Logger = AppleBCMWLANIOReporting::getLogger(a1);
  return CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to create iter\n", "getIndexForProcessName", 184);
}

{
  AppleBCMWLANIOReporting::getLogger(a1);
  v2 = OUTLINED_FUNCTION_12_1();
  OSString::getCStringNoCopy(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Adding new process to IOReporting caller list: %s\n", v4, v5, v6);
}

{
  result = AppleBCMWLANIOReporting::getLogger(a1);
  if (result)
  {
    AppleBCMWLANIOReporting::getLogger(a1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      AppleBCMWLANIOReporting::getLogger(a1);
      v3 = OUTLINED_FUNCTION_12_1();
      OSString::getCStringNoCopy(v3);
      OUTLINED_FUNCTION_6();
      return CCLogStream::logAlert(a1, "[dk] %s@%d:Failed to add new processName %s\n", v4, v5, v6);
    }
  }

  return result;
}

uint64_t AppleBCMWLANIOReportingCore::accountingForUpdateReport(AppleBCMWLANIOReporting *a1)
{
  AppleBCMWLANIOReporting::getLogger(a1);
  v2 = OUTLINED_FUNCTION_12_1();
  OSString::getCStringNoCopy(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Failed to add kUpdateReportReport for %s\n", v4, v5, v6);
}

{
  Logger = AppleBCMWLANIOReporting::getLogger(a1);
  return CCLogStream::logAlert(Logger, "[dk] %s@%d:Failed to create processName\n", "accountingForUpdateReport", 262);
}

uint64_t AppleBCMWLANIOReportingCore::accountingForConfigureReport(AppleBCMWLANIOReporting *a1)
{
  AppleBCMWLANIOReporting::getLogger(a1);
  v2 = OUTLINED_FUNCTION_12_1();
  OSString::getCStringNoCopy(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Failed to add kConfigureReportReport for %s\n", v4, v5, v6);
}

{
  Logger = AppleBCMWLANIOReporting::getLogger(a1);
  return CCLogStream::logAlert(Logger, "[dk] %s@%d:Failed to create processName\n", "accountingForConfigureReport", 305);
}

uint64_t AppleBCMWLANIOReportingCore::incrementStaleConfigurationDetected(AppleBCMWLANIOReporting *a1)
{
  AppleBCMWLANIOReporting::getLogger(a1);
  v2 = OUTLINED_FUNCTION_12_1();
  OSString::getCStringNoCopy(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logInfo(v1, "[dk] %s@%d:Caller: %s used a stale config\n", v4, v5, v6);
}

{
  AppleBCMWLANIOReporting::getLogger(a1);
  v2 = OUTLINED_FUNCTION_12_1();
  OSString::getCStringNoCopy(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Failed to add kStaleConfigurationReport for %s\n", v4, v5, v6);
}

{
  Logger = AppleBCMWLANIOReporting::getLogger(a1);
  return CCLogStream::logAlert(Logger, "[dk] %s@%d:Failed to create processName\n", "incrementStaleConfigurationDetected", 347);
}

uint64_t AppleBCMWLANIOReportingPerSlice::reportLTECoexStatisticsPerSlice(AppleBCMWLANBssManager *a1, uint64_t a2, uint64_t a3)
{
  v128[1] = 0xAAAAAAAAAAAAAAAALL;
  v128[2] = 0xAAAAAAAAAAAAAAAALL;
  OUTLINED_FUNCTION_59();
  v128[0] = v6;
  AppleBCMWLANUtil::AutoreleasedAlignedOSData::AutoreleasedAlignedOSData(v128, v7, 2);
  v8 = v128[0];
  if (v128[0])
  {
    if (a3 > 1)
    {
      goto LABEL_13;
    }

    if (*(*(a1 + 7) + a3 + 39))
    {
      goto LABEL_6;
    }

    if (!AppleBCMWLANIOReportingPerSlice::initLTECoexReporter(a1, a3))
    {
      *(*(a1 + 7) + a3 + 39) = 1;
LABEL_6:
      for (i = 0; i != 176; i += 16)
      {
        OUTLINED_FUNCTION_43_0();
        v11 = *(v10 + 56);
        OUTLINED_FUNCTION_8_5((*(v10 + 136) + i));
        CounterValueSafe = AppleBCMWLANUtil::getCounterValueSafe(v12, v13, v8, v14);
        OUTLINED_FUNCTION_52(CounterValueSafe);
      }

      for (j = 0; j != 176; j += 16)
      {
        OUTLINED_FUNCTION_43_0();
        v18 = *(v17 + 72);
        OUTLINED_FUNCTION_8_5((*(v17 + 136) + j));
        v22 = AppleBCMWLANUtil::getCounterValueSafe(v19, v20, v8, v21);
        OUTLINED_FUNCTION_52(v22);
      }

      for (k = 0; k != 176; k += 16)
      {
        OUTLINED_FUNCTION_43_0();
        v25 = *(v24 + 88);
        OUTLINED_FUNCTION_8_5((*(v24 + 152) + k));
        v29 = AppleBCMWLANUtil::getCounterValueSafe(v26, v27, v8, v28);
        OUTLINED_FUNCTION_52(v29);
      }

      OUTLINED_FUNCTION_43_0();
      v31 = *(v30 + 104);
      v40 = OUTLINED_FUNCTION_64(v32, v33, v34, v35, v36, v37, v38, v39, v103, v108, v113, v118, 0);
      v43 = AppleBCMWLANUtil::getCounterValueSafe(v40, v41, v42, 0x92uLL);
      OUTLINED_FUNCTION_52(v43);
      OUTLINED_FUNCTION_43_0();
      v45 = *(v44 + 104);
      v54 = OUTLINED_FUNCTION_64(v46, v47, v48, v49, v50, v51, v52, v53, v104, v109, v114, v119, v123);
      v57 = AppleBCMWLANUtil::getCounterValueSafe(v54, v55, v56, 0x94uLL);
      OUTLINED_FUNCTION_52(v57);
      OUTLINED_FUNCTION_43_0();
      v59 = *(v58 + 104);
      v68 = OUTLINED_FUNCTION_64(v60, v61, v62, v63, v64, v65, v66, v67, v105, v110, v115, v120, v124);
      v71 = AppleBCMWLANUtil::getCounterValueSafe(v68, v69, v70, 0x9EuLL);
      OUTLINED_FUNCTION_52(v71);
      OUTLINED_FUNCTION_43_0();
      v73 = *(v72 + 104);
      v82 = OUTLINED_FUNCTION_64(v74, v75, v76, v77, v78, v79, v80, v81, v106, v111, v116, v121, v125);
      v85 = AppleBCMWLANUtil::getCounterValueSafe(v82, v83, v84, 0x9CuLL);
      OUTLINED_FUNCTION_52(v85);
      OUTLINED_FUNCTION_43_0();
      v87 = *(v86 + 104);
      v96 = OUTLINED_FUNCTION_64(v88, v89, v90, v91, v92, v93, v94, v95, v107, v112, v117, v122, v126);
      v99 = AppleBCMWLANUtil::getCounterValueSafe(v96, v97, v98, 0x9AuLL);
      IOSimpleReporter::setValue(v87, (a3 << 56) ^ 0x6420206E43747852, v99);
      v3 = v127;
      goto LABEL_13;
    }

    if (AppleBCMWLANIOReporting::getLogger(a1))
    {
      AppleBCMWLANIOReporting::getLogger(a1);
      if (CCLogStream::shouldLog())
      {
        Logger = AppleBCMWLANIOReporting::getLogger(a1);
        CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to init LTE Coex reporters\n");
      }
    }
  }

  else if (AppleBCMWLANIOReporting::getLogger(a1))
  {
    AppleBCMWLANIOReporting::getLogger(a1);
    if (CCLogStream::shouldLog())
    {
      v101 = AppleBCMWLANIOReporting::getLogger(a1);
      CCLogStream::logEmergency(v101, "[dk] %s@%d:Failed to allocate alignedCounters\n");
    }
  }

LABEL_13:
  AppleBCMWLANUtil::AutoreleasedAlignedOSData::~AutoreleasedAlignedOSData(v128);
  return v3;
}

uint64_t AppleBCMWLANIOReportingPerSlice::reportWlCntSliceCounters(uint64_t *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v70[1] = 0xAAAAAAAAAAAAAAAALL;
  v70[2] = 0xAAAAAAAAAAAAAAAALL;
  OUTLINED_FUNCTION_59();
  v70[0] = v6;
  AppleBCMWLANUtil::AutoreleasedAlignedOSData::AutoreleasedAlignedOSData(v70, v7, 2);
  if (v70[0])
  {
    if (a3 <= 1)
    {
      v8 = a1[7];
      if (*(v8 + a3 + 20))
      {
LABEL_6:
        v9 = *(v8 + 8 * a3 + 296);
        OUTLINED_FUNCTION_67();
        v11 = v10 ^ (a3 << 56);
        v20 = OUTLINED_FUNCTION_5_4(v12, v13, v14, v15, v16, v17, v18, v19, v57, v60, v63, v66, 0);
        CounterValueSafe = AppleBCMWLANUtil::getCounterValueSafe(v20, v21, v22, 0x40uLL);
        v69 = IOSimpleReporter::setValue(v9, v11, CounterValueSafe);
        OUTLINED_FUNCTION_36_0();
        v25 = *(v24 + 296);
        OUTLINED_FUNCTION_69();
        v34 = OUTLINED_FUNCTION_5_4(v26, v27, v28, v29, v30, v31, v32, v33, v58, v61, v64, v67, v69);
        v37 = AppleBCMWLANUtil::getCounterValueSafe(v34, v35, v36, 4uLL);
        v68[4] = OUTLINED_FUNCTION_52(v37);
        while (1)
        {
          OUTLINED_FUNCTION_36_0();
          v39 = *(v38 + 312);
          v40 = *(v38 + 200);
          v41 = *v40;
          v49 = OUTLINED_FUNCTION_5_4(v42, v43, v44, *(v40 + 2), v45, v46, v47, v48, v59, v62, v65, *v68, v68[4]);
          v53 = AppleBCMWLANUtil::getCounterValueSafe(v49, v50, v51, v52);
          OUTLINED_FUNCTION_52(v53);
          OUTLINED_FUNCTION_81();
        }
      }

      if (!AppleBCMWLANIOReportingPerSlice::initWlCntReporter(a1, a3))
      {
        *(a1[7] + a3 + 20) = 1;
        v8 = a1[7];
        goto LABEL_6;
      }

      if (AppleBCMWLANIOReporting::getLogger(a1))
      {
        AppleBCMWLANIOReporting::getLogger(a1);
        if (CCLogStream::shouldLog())
        {
          Logger = AppleBCMWLANIOReporting::getLogger(a1);
          CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to init LTE Coex reporters\n");
        }
      }
    }
  }

  else if (AppleBCMWLANIOReporting::getLogger(a1))
  {
    AppleBCMWLANIOReporting::getLogger(a1);
    if (CCLogStream::shouldLog())
    {
      v55 = AppleBCMWLANIOReporting::getLogger(a1);
      CCLogStream::logEmergency(v55, "[dk] %s@%d:Failed to allocate alignedCounters\n");
    }
  }

  AppleBCMWLANUtil::AutoreleasedAlignedOSData::~AutoreleasedAlignedOSData(v70);
  return v3;
}

uint64_t AppleBCMWLANIOReportingPerSlice::reportTVPM(AppleBCMWLANIOReporting *a1, OSData *this, uint64_t a3, uint64_t a4)
{
  if (a3 >= 2)
  {
    OUTLINED_FUNCTION_41_0();
    if (AppleBCMWLANIOReporting::getLogger(a1))
    {
      AppleBCMWLANIOReporting::getLogger(a1);
      if (CCLogStream::shouldLog())
      {
        Logger = AppleBCMWLANIOReporting::getLogger(a1);
        CCLogStream::logEmergency(Logger, "[dk] %s@%d:Out of range slice index %d\n");
      }
    }
  }

  else if (OSData::getLength(this) == 16)
  {
    BytesNoCopy = OSData::getBytesNoCopy(this);
    v4 = BytesNoCopy[2];
    v10 = BytesNoCopy[3];
    v84 = BytesNoCopy[4];
    v83 = BytesNoCopy[5];
    v11 = *(BytesNoCopy + 12);
    v81 = *(BytesNoCopy + 13);
    v80 = *(BytesNoCopy + 14);
    v12 = *(a1 + 7);
    if ((*(v12 + a3 + 16) & 1) == 0)
    {
      if (AppleBCMWLANIOReportingPerSlice::initTVPMReporter(a1, a3))
      {
        OUTLINED_FUNCTION_41_0();
        if (AppleBCMWLANIOReporting::getLogger(a1))
        {
          AppleBCMWLANIOReporting::getLogger(a1);
          if (CCLogStream::shouldLog())
          {
            v75 = AppleBCMWLANIOReporting::getLogger(a1);
            CCLogStream::logEmergency(v75, "[dk] %s@%d:Failed to initTVPMReporter slice %d\n");
          }
        }

        return v4;
      }

      *(*(a1 + 7) + a3 + 16) = 1;
      v12 = *(a1 + 7);
    }

    v78 = v4;
    v79 = v10;
    if (*(v12 + 8 * a3 + 552))
    {
      v82 = v11;
      v76 = a4;
      v77 = 0;
      goto LABEL_13;
    }

    OUTLINED_FUNCTION_41_0();
    CurrentBSS = AppleBCMWLANBssManager::getCurrentBSS(a1);
    ReporterProvider = IO80211Controller::getReporterProvider(CurrentBSS);
    OUTLINED_FUNCTION_29(ReporterProvider, v15, v16, v17);
    OUTLINED_FUNCTION_51();
    *(v19 + 552) = v18;
    OUTLINED_FUNCTION_51();
    if (!*(v20 + 552))
    {
      return v4;
    }

    AppleBCMWLANIOReporting::getReporter(a1);
    OUTLINED_FUNCTION_51();
    OSSet::setObject(v22, *(v21 + 552));
    v23 = OUTLINED_FUNCTION_32_0();
    v24 = OUTLINED_FUNCTION_5_0(v23);
    (*(v25 + 16))(v24);
    v26 = &off_1003C6720;
    v27 = 8;
    do
    {
      v28 = OUTLINED_FUNCTION_32_0();
      IOReporter::addChannel(v28, *(v26 - 1) ^ (a3 << 56), *v26);
      v26 += 2;
      --v27;
    }

    while (v27);
    v29 = IOMallocZeroData();
    if (v29)
    {
      v82 = v11;
      v76 = a4;
      snprintf(v29, 0x32uLL, "%s Slice %d", "TVPM", a3);
      AddReporterCallback = AppleBCMWLANIOReporting::getAddReporterCallback(a1);
      Target = AppleBCMWLANIOReporting::getTarget(a1);
      AppleBCMWLANBssManager::getCurrentBSS(a1);
      OUTLINED_FUNCTION_51();
      v33 = *(v32 + 552);
      v77 = AddReporterCallback(Target);
      IOFreeData();
LABEL_13:
      v34 = -v10;
      if (v83 >= 0xC9 && (AppleBCMWLANIOReportingPerSlice::reportTVPM(OSData *,AppleBCMWLANSliceId,apple80211_tvpm_event *)::filedSingleInvalidStatIssue & 1) == 0)
      {
        AppleBCMWLANIOReporting::getLogger(a1);
        OSData::getBytesNoCopy(this);
        OSData::getLength(this);
        IO80211Hexdump();
        AppleBCMWLANIOReportingPerSlice::reportTVPM(OSData *,AppleBCMWLANSliceId,apple80211_tvpm_event *)::filedSingleInvalidStatIssue = 1;
      }

      v35 = OUTLINED_FUNCTION_32_0();
      IOSimpleReporter::setValue(v35, (a3 << 56) ^ 0x4D20205478447574, v4);
      OUTLINED_FUNCTION_32_0();
      OUTLINED_FUNCTION_94();
      IOSimpleReporter::setValue(v37, v36 ^ (a3 << 56), v34);
      v38 = OUTLINED_FUNCTION_32_0();
      IOSimpleReporter::setValue(v38, (a3 << 56) ^ 0x4D20204163436861, v84);
      v39 = OUTLINED_FUNCTION_32_0();
      IOSimpleReporter::setValue(v39, (a3 << 56) ^ 0x4D202054656D7020, v83);
      v40 = OUTLINED_FUNCTION_32_0();
      IOSimpleReporter::setValue(v40, (a3 << 56) ^ 0x4D20204261747456, v82);
      v41 = OUTLINED_FUNCTION_32_0();
      IOSimpleReporter::setValue(v41, (a3 << 56) ^ 0x4D2020202050504DLL, v80);
      OUTLINED_FUNCTION_32_0();
      OUTLINED_FUNCTION_104();
      IOSimpleReporter::setValue(v43, v42 ^ (a3 << 56), v81);
      v44 = OUTLINED_FUNCTION_32_0();
      IOSimpleReporter::incrementValue(v44, (a3 << 56) ^ 0x4D2020555456504DLL, 1);
      OUTLINED_FUNCTION_51();
      v46 = *(v45 + 568);
      PercentIndex = findPercentIndex(v4);
      OUTLINED_FUNCTION_92(PercentIndex);
      OUTLINED_FUNCTION_51();
      v49 = *(v48 + 648);
      v50 = findPercentIndex(v80);
      OUTLINED_FUNCTION_92(v50);
      OUTLINED_FUNCTION_51();
      v52 = *(v51 + 664);
      OUTLINED_FUNCTION_104();
      v53 = findPercentIndex(v81);
      OUTLINED_FUNCTION_92(v53);
      OUTLINED_FUNCTION_51();
      v55 = *(v54 + 584);
      OUTLINED_FUNCTION_94();
      v58 = (v57 | 1) ^ (a3 << 56);
      if (v10)
      {
        v59 = v83;
        v60 = a3 << 56;
        if (v34 >= 5)
        {
          if (v34 >= 9u)
          {
            if (v34 >= 0xDu)
            {
              if (v34 >= 0x11u)
              {
                v61 = 5;
                if (v34 >= 0x15u)
                {
                  v61 = 6;
                }
              }

              else
              {
                v61 = 4;
              }
            }

            else
            {
              v61 = 3;
            }
          }

          else
          {
            v61 = 2;
          }
        }

        else
        {
          v61 = 1;
        }

        v4 = v77;
        v62 = v76;
        v63 = v82;
      }

      else
      {
        v61 = 0;
        v4 = v77;
        v60 = a3 << 56;
        v62 = v76;
        v63 = v82;
        v59 = v83;
      }

      IOStateReporter::setChannelState(v56, v58, kDsaTxPowerBoostStates[v61]);
      OUTLINED_FUNCTION_51();
      v66 = 1;
      if (v84 != 2)
      {
        v66 = 2;
      }

      if (v84 == 1)
      {
        v66 = 0;
      }

      IOStateReporter::setChannelState(*(v65 + 600), v60 ^ 0x4D20204163436873, kTxChainsStates[v66]);
      OUTLINED_FUNCTION_51();
      if (v59 <= 0xC8)
      {
        v69 = v59;
      }

      else
      {
        v69 = 0;
      }

      if (v69 <= 0x54)
      {
        if (v69 <= 0x45)
        {
          if (v69 <= 0x3B)
          {
            if (v69 <= 0x31)
            {
              if (v69 <= 0x27)
              {
                v68 = 5;
                if (v69 <= 0x1D)
                {
                  v68 = 6;
                }
              }

              else
              {
                v68 = 4;
              }
            }

            else
            {
              v68 = 3;
            }
          }

          else
          {
            v68 = 2;
          }
        }

        else
        {
          v68 = 1;
        }
      }

      IOStateReporter::setChannelState(*(v67 + 616), v60 ^ 0x4D202054656D7073, kTemperatureStates[v68]);
      OUTLINED_FUNCTION_51();
      v71 = 1;
      if (v63 <= 0x1E)
      {
        v71 = 2;
      }

      if (v63 > 0x20)
      {
        v71 = 0;
      }

      IOStateReporter::setChannelState(*(v70 + 632), v60 ^ 0x4D20204261747473, kVoltageStates[v71]);
      if (v62)
      {
        *v62 = v63;
        *(v62 + 1) = v81;
        *(v62 + 2) = v80;
        *(v62 + 4) = v78;
        *(v62 + 6) = v79;
        *(v62 + 8) = v84;
        *(v62 + 10) = v59;
      }

      return v4;
    }

    if (AppleBCMWLANIOReporting::getLogger(a1))
    {
      AppleBCMWLANIOReporting::getLogger(a1);
      if (CCLogStream::shouldLog())
      {
        v64 = AppleBCMWLANIOReporting::getLogger(a1);
        CCLogStream::logEmergency(v64, "[dk] %s@%d:Failed to alloc AppleBCMWLANUtil::AutoreleasedBuffer\n");
      }
    }
  }

  else
  {
    OUTLINED_FUNCTION_41_0();
    if (AppleBCMWLANIOReporting::getLogger(a1))
    {
      AppleBCMWLANIOReporting::getLogger(a1);
      if (CCLogStream::shouldLog())
      {
        v74 = AppleBCMWLANIOReporting::getLogger(a1);
        OSData::getLength(this);
        CCLogStream::logEmergency(v74, "[dk] %s@%d:sizeof(tvpm) %lu payload->getLength() %lu\n");
      }
    }
  }

  return v4;
}

uint64_t (*AppleBCMWLANIOReportingPerSlice::reportDSA(AppleBCMWLANIOReporting *a1, uint64_t a2, uint64_t a3))(uint64_t)
{
  v7 = *(a1 + 7);
  v8 = a2;
  if ((*(v7 + a2 + 18) & 1) == 0)
  {
    if (AppleBCMWLANIOReportingPerSlice::initDynSARReporter(a1, a2))
    {
      v80 = OUTLINED_FUNCTION_33_0();
      if (AppleBCMWLANIOReporting::getLogger(v80))
      {
        AppleBCMWLANIOReporting::getLogger(a1);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANIOReporting::getLogger(a1);
          OUTLINED_FUNCTION_103();
          CCLogStream::logEmergency(v81, "[dk] %s@%d:Failed to initDynSARReporter slice %d\n");
        }
      }

      return AddReporterCallback;
    }

    *(*(a1 + 7) + v8 + 18) = 1;
    v7 = *(a1 + 7);
  }

  v9 = *(v7 + 8 * v8 + 680);
  if (v9)
  {
    LODWORD(AddReporterCallback) = 0;
    v10 = a2 << 56;
LABEL_11:
    IOSimpleReporter::setValue(v9, v10 ^ 0x4420537461747573, *(a3 + 64));
    v32 = OUTLINED_FUNCTION_10_3();
    IOSimpleReporter::setValue(v32, v10 ^ 0x4420507772427374, *(a3 + 66));
    v33 = OUTLINED_FUNCTION_10_3();
    IOSimpleReporter::setValue(v33, v10 ^ 0x44205444416E7430, *(a3 + 68));
    v34 = OUTLINED_FUNCTION_10_3();
    IOSimpleReporter::setValue(v34, v10 ^ 0x44205574416E7430, *(a3 + 69));
    v35 = OUTLINED_FUNCTION_10_3();
    IOSimpleReporter::setValue(v35, v10 ^ 0x44205444416E7431, *(a3 + 70));
    v36 = OUTLINED_FUNCTION_10_3();
    IOSimpleReporter::setValue(v36, v10 ^ 0x44205574416E7431, *(a3 + 71));
    v37 = OUTLINED_FUNCTION_10_3();
    IOSimpleReporter::setValue(v37, v10 ^ 0x44205444416E7432, *(a3 + 72));
    v38 = OUTLINED_FUNCTION_10_3();
    IOSimpleReporter::setValue(v38, v10 ^ 0x44205574416E7432, *(a3 + 73));
    v39 = OUTLINED_FUNCTION_10_3();
    IOSimpleReporter::setValue(v39, v10 ^ 0x44205444416E7433, *(a3 + 74));
    v40 = OUTLINED_FUNCTION_10_3();
    IOSimpleReporter::setValue(v40, v10 ^ 0x44205574416E7433, *(a3 + 75));
    v41 = OUTLINED_FUNCTION_10_3();
    IOSimpleReporter::setValue(v41, v10 ^ 0x44204E6F4F447572, *(a3 + 8));
    v42 = OUTLINED_FUNCTION_10_3();
    IOSimpleReporter::setValue(v42, v10 ^ 0x4420506F4F447572, *(a3 + 16));
    v43 = OUTLINED_FUNCTION_10_3();
    IOSimpleReporter::setValue(v43, v10 ^ 0x4420465365447572, *(a3 + 24));
    v44 = OUTLINED_FUNCTION_10_3();
    IOSimpleReporter::setValue(v44, v10 ^ 0x44204E6F4D447572, *(a3 + 32));
    v45 = OUTLINED_FUNCTION_10_3();
    IOSimpleReporter::setValue(v45, v10 ^ 0x4420486264447572, *(a3 + 40));
    v46 = OUTLINED_FUNCTION_10_3();
    IOSimpleReporter::setValue(v46, v10 ^ 0x4420446354447572, *(a3 + 48));
    v47 = OUTLINED_FUNCTION_10_3();
    IOSimpleReporter::setValue(v47, v10 ^ 0x4420504F54447572, *(a3 + 56));
    v48 = OUTLINED_FUNCTION_10_3();
    IOSimpleReporter::incrementValue(v48, v10 ^ 0x4420202055706474, 1);
    OUTLINED_FUNCTION_43_0();
    v50 = *(a3 + 64);
    if (v50 > 4)
    {
      v51 = 4;
    }

    else
    {
      v51 = *&kDsaUtilPercStates[8 * v50 + 80];
    }

    IOStateReporter::setChannelState(*(v49 + 696), v10 ^ 0x4453537461747573, kDsaStateStates[v51]);
    OUTLINED_FUNCTION_43_0();
    v53 = *(a3 + 66);
    if (v53 >= 6)
    {
      v53 = 6;
    }

    IOStateReporter::setChannelState(*(v52 + 712), v10 ^ 0x4453507772427374, kDsaTxPowerBoostStates[v53]);
    OUTLINED_FUNCTION_43_0();
    v55 = *(v54 + 728);
    PercentIndex = findPercentIndex(*(a3 + 68));
    IOStateReporter::setChannelState(v55, v10 ^ 0x44535444416E7430, kDsaTxDCPercStates[PercentIndex]);
    OUTLINED_FUNCTION_43_0();
    v58 = *(v57 + 744);
    v59 = findPercentIndex(*(a3 + 69));
    IOStateReporter::setChannelState(v58, v10 ^ 0x44535574416E7430, *&kDsaUtilPercStates[8 * v59]);
    OUTLINED_FUNCTION_43_0();
    v61 = *(v60 + 760);
    v62 = findPercentIndex(*(a3 + 70));
    OUTLINED_FUNCTION_89(v62);
    OUTLINED_FUNCTION_43_0();
    v64 = *(v63 + 776);
    v65 = findPercentIndex(*(a3 + 71));
    IOStateReporter::setChannelState(v64, v10 ^ 0x44535574416E7431, *&kDsaUtilPercStates[8 * v65]);
    OUTLINED_FUNCTION_43_0();
    v67 = *(v66 + 792);
    v68 = findPercentIndex(*(a3 + 72));
    OUTLINED_FUNCTION_89(v68);
    OUTLINED_FUNCTION_43_0();
    v70 = *(v69 + 808);
    v71 = findPercentIndex(*(a3 + 73));
    IOStateReporter::setChannelState(v70, v10 ^ 0x44535574416E7432, *&kDsaUtilPercStates[8 * v71]);
    OUTLINED_FUNCTION_43_0();
    v73 = *(v72 + 824);
    v74 = findPercentIndex(*(a3 + 74));
    OUTLINED_FUNCTION_89(v74);
    OUTLINED_FUNCTION_43_0();
    v76 = *(v75 + 840);
    v77 = findPercentIndex(*(a3 + 75));
    IOStateReporter::setChannelState(v76, v10 ^ 0x44535574416E7433, *&kDsaUtilPercStates[8 * v77]);
    return AddReporterCallback;
  }

  v11 = OUTLINED_FUNCTION_33_0();
  CurrentBSS = AppleBCMWLANBssManager::getCurrentBSS(v11);
  ReporterProvider = IO80211Controller::getReporterProvider(CurrentBSS);
  OUTLINED_FUNCTION_29(ReporterProvider, v14, v15, v16);
  OUTLINED_FUNCTION_43_0();
  *(v18 + 680) = v17;
  OUTLINED_FUNCTION_43_0();
  if (!*(v19 + 680))
  {
    return AddReporterCallback;
  }

  AppleBCMWLANIOReporting::getReporter(a1);
  OUTLINED_FUNCTION_43_0();
  OSSet::setObject(v21, *(v20 + 680));
  v22 = OUTLINED_FUNCTION_10_3();
  v23 = OUTLINED_FUNCTION_5_0(v22);
  (*(v24 + 16))(v23);
  v10 = a2 << 56;
  v25 = &off_1003C67A0;
  v26 = 18;
  do
  {
    v27 = OUTLINED_FUNCTION_10_3();
    IOReporter::addChannel(v27, *(v25 - 1) ^ v10, *v25);
    v25 += 2;
    --v26;
  }

  while (v26);
  v28 = IOMallocZeroData();
  if (v28)
  {
    snprintf(v28, 0x32uLL, "%s Slice %d", "DSA", a2);
    AddReporterCallback = AppleBCMWLANIOReporting::getAddReporterCallback(a1);
    Target = AppleBCMWLANIOReporting::getTarget(a1);
    AppleBCMWLANBssManager::getCurrentBSS(a1);
    OUTLINED_FUNCTION_43_0();
    v31 = *(v30 + 680);
    LODWORD(AddReporterCallback) = AddReporterCallback(Target);
    IOFreeData();
    v9 = OUTLINED_FUNCTION_10_3();
    goto LABEL_11;
  }

  if (AppleBCMWLANIOReporting::getLogger(a1))
  {
    AppleBCMWLANIOReporting::getLogger(a1);
    if (CCLogStream::shouldLog())
    {
      Logger = AppleBCMWLANIOReporting::getLogger(a1);
      CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to alloc AppleBCMWLANUtil::AutoreleasedBuffer\n");
    }
  }

  return AddReporterCallback;
}

uint64_t AppleBCMWLANIOReportingPerSlice::reportTDM(AppleBCMWLANIOReporting *this, OSData *a2, uint64_t a3)
{
  if (a3 >= 2)
  {
    v18 = 3758097084;
    if (AppleBCMWLANIOReporting::getLogger(this))
    {
      AppleBCMWLANIOReporting::getLogger(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANIOReporting::getLogger(this);
        OUTLINED_FUNCTION_66();
        CCLogStream::logEmergency(v71, "[dk] %s@%d:Out of range slice index %d\n");
      }
    }

    return v18;
  }

  if (OSData::getLength(a2) >= 2)
  {
    v6 = *OSData::getBytesNoCopy(a2);
    if (v6 == 2)
    {
      if (OSData::getLength(a2) == 56)
      {
        BytesNoCopy = OSData::getBytesNoCopy(a2);
        v11 = 0;
        v7 = BytesNoCopy[1];
        v86 = BytesNoCopy[2];
        v88 = BytesNoCopy[3];
        v90 = BytesNoCopy[4];
        v12 = BytesNoCopy[6];
        v91 = BytesNoCopy[5];
        v9 = 1;
        v13 = BytesNoCopy[7];
        v14 = BytesNoCopy[8];
        v77 = 2863311530;
        v79 = 2863311530;
        v80 = 2863311530;
        v81 = 2863311530;
        v87 = BytesNoCopy[9];
        v89 = BytesNoCopy[10];
        v84 = 2863311530;
        v83 = 2863311530;
        v75 = 2863311530;
        v76 = 2863311530;
        v85 = BytesNoCopy[11];
        v16 = BytesNoCopy[13];
        v92 = BytesNoCopy[12];
        v15 = 2863311530;
        v78 = 2863311530;
        v17 = 2863311530;
        goto LABEL_7;
      }

      if (!AppleBCMWLANIOReporting::getLogger(this))
      {
        return 0;
      }

      AppleBCMWLANIOReporting::getLogger(this);
      if (!CCLogStream::shouldLog())
      {
        return 0;
      }

LABEL_33:
      AppleBCMWLANIOReporting::getLogger(this);
      OUTLINED_FUNCTION_93();
      CCLogStream::logEmergency(this, "[dk] %s@%d:sizeof(tdm) %lu payload->getLength() %lu\n");
      return 0;
    }

    if (v6 != 1)
    {
      if (AppleBCMWLANIOReporting::getLogger(this))
      {
        AppleBCMWLANIOReporting::getLogger(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANIOReporting::getLogger(this);
          OUTLINED_FUNCTION_103();
          CCLogStream::logEmergency(v72, "[dk] %s@%d:Invalid TDM version - %u\n");
        }
      }

      return 0;
    }
  }

  if (OSData::getLength(a2) != 52)
  {
    if (!AppleBCMWLANIOReporting::getLogger(this))
    {
      return 0;
    }

    AppleBCMWLANIOReporting::getLogger(this);
    if (!CCLogStream::shouldLog())
    {
      return 0;
    }

    goto LABEL_33;
  }

  v7 = 2863311530;
  v8 = OSData::getBytesNoCopy(a2);
  v9 = 0;
  v10 = v8[1];
  v77 = v8[2];
  v79 = v8[3];
  v80 = v8[4];
  v81 = v8[5];
  v84 = v8[6];
  v11 = 1;
  v86 = 2863311530;
  v88 = 2863311530;
  v90 = 2863311530;
  v83 = v8[7];
  v75 = v8[8];
  v91 = 2863311530;
  v12 = 2863311530;
  v13 = 2863311530;
  v14 = 2863311530;
  v15 = v8[10];
  v76 = v8[9];
  v87 = 2863311530;
  v89 = 2863311530;
  v85 = 2863311530;
  v92 = 2863311530;
  v16 = 2863311530;
  v78 = v8[11];
  v17 = v8[12];
LABEL_7:
  v82 = v17;
  v95 = v14;
  v93 = v12;
  v94 = v13;
  if (*(*(this + 7) + 8 * a3 + 856))
  {
    v18 = 0;
LABEL_14:
    if (v11)
    {
      v41 = OUTLINED_FUNCTION_7_4();
      v43 = v42;
      IOSimpleReporter::setValue(v41, (a3 << 56) ^ 0x53202054444D6F6ELL, v44);
      v45 = OUTLINED_FUNCTION_7_4();
      IOSimpleReporter::setValue(v45, (a3 << 56) ^ 0x53202054444D6475, v15);
      v46 = OUTLINED_FUNCTION_7_4();
      IOSimpleReporter::setValue(v46, (a3 << 56) ^ 0x53202054444D746FLL, v77);
      v47 = OUTLINED_FUNCTION_7_4();
      IOSimpleReporter::setValue(v47, (a3 << 56) ^ 0x53202054444D706FLL, v79);
      v48 = OUTLINED_FUNCTION_7_4();
      IOSimpleReporter::setValue(v48, (a3 << 56) ^ 0x53202054444D7075, v80);
      v49 = OUTLINED_FUNCTION_7_4();
      IOSimpleReporter::setValue(v49, (a3 << 56) ^ 0x53202054444D706DLL, v81);
      v50 = OUTLINED_FUNCTION_7_4();
      IOSimpleReporter::setValue(v50, (a3 << 56) ^ 0x53202054444D746DLL, v75);
      v51 = OUTLINED_FUNCTION_7_4();
      IOSimpleReporter::setValue(v51, (a3 << 56) ^ 0x53202054444D7462, v76);
      v52 = OUTLINED_FUNCTION_7_4();
      IOSimpleReporter::setValue(v52, (a3 << 56) ^ 0x53202054444D7074, v84);
      v53 = OUTLINED_FUNCTION_7_4();
      IOSimpleReporter::setValue(v53, (a3 << 56) ^ 0x53202054444D7064, v78);
      v54 = OUTLINED_FUNCTION_7_4();
      IOSimpleReporter::setValue(v54, (a3 << 56) ^ 0x53202054444D6463, v83);
      v55 = OUTLINED_FUNCTION_7_4();
      IOSimpleReporter::setValue(v55, (a3 << 56) ^ 0x53202054444D6464, v82);
      v9 = v43;
    }

    if (v9)
    {
      v56 = OUTLINED_FUNCTION_7_4();
      IOSimpleReporter::setValue(v56, (a3 << 56) ^ 0x53202054444D6F6ELL, v7);
      v57 = OUTLINED_FUNCTION_7_4();
      IOSimpleReporter::setValue(v57, (a3 << 56) ^ 0x53202054444D6475, v85);
      v58 = OUTLINED_FUNCTION_7_4();
      IOSimpleReporter::setValue(v58, (a3 << 56) ^ 0x53202054444D746FLL, v86);
      v59 = OUTLINED_FUNCTION_7_4();
      IOSimpleReporter::setValue(v59, (a3 << 56) ^ 0x53202054444D706FLL, v88);
      v60 = OUTLINED_FUNCTION_7_4();
      IOSimpleReporter::setValue(v60, (a3 << 56) ^ 0x53202054444D706FLL, v90);
      v61 = OUTLINED_FUNCTION_7_4();
      IOSimpleReporter::setValue(v61, (a3 << 56) ^ 0x53202054444D7075, v91);
      v62 = OUTLINED_FUNCTION_7_4();
      IOSimpleReporter::setValue(v62, (a3 << 56) ^ 0x53202054444D706DLL, v93);
      v63 = OUTLINED_FUNCTION_7_4();
      IOSimpleReporter::setValue(v63, (a3 << 56) ^ 0x53202054444D746DLL, v87);
      v64 = OUTLINED_FUNCTION_7_4();
      IOSimpleReporter::setValue(v64, (a3 << 56) ^ 0x53202054444D7462, v89);
      v65 = OUTLINED_FUNCTION_7_4();
      IOSimpleReporter::setValue(v65, (a3 << 56) ^ 0x53202054444D7074, v94);
      v66 = OUTLINED_FUNCTION_7_4();
      IOSimpleReporter::setValue(v66, (a3 << 56) ^ 0x53202054444D7064, v92);
      v67 = OUTLINED_FUNCTION_7_4();
      IOSimpleReporter::setValue(v67, (a3 << 56) ^ 0x53202054444D6463, v95);
      v68 = OUTLINED_FUNCTION_7_4();
      IOSimpleReporter::setValue(v68, (a3 << 56) ^ 0x53202054444D6464, v16);
    }

    return v18;
  }

  v74 = v9;
  CurrentBSS = AppleBCMWLANBssManager::getCurrentBSS(this);
  ReporterProvider = IO80211Controller::getReporterProvider(CurrentBSS);
  OUTLINED_FUNCTION_29(ReporterProvider, v21, v22, v23);
  OUTLINED_FUNCTION_45_0();
  *(v25 + 856) = v24;
  OUTLINED_FUNCTION_45_0();
  if (!*(v26 + 856))
  {
    return 3758097085;
  }

  AppleBCMWLANIOReporting::getReporter(this);
  OUTLINED_FUNCTION_45_0();
  OSSet::setObject(v28, *(v27 + 856));
  v29 = OUTLINED_FUNCTION_7_4();
  v30 = OUTLINED_FUNCTION_5_0(v29);
  (*(v31 + 16))(v30);
  v32 = &off_1003C68C0;
  v33 = 14;
  do
  {
    v34 = OUTLINED_FUNCTION_7_4();
    v35 = IOReporter::addChannel(v34, *(v32 - 1) ^ (a3 << 56), *v32);
    v32 += 2;
    --v33;
  }

  while (v33);
  v18 = v35;
  v36 = IOMallocZeroData();
  if (v36)
  {
    snprintf(v36, 0x32uLL, "%s Slice %d", "TDM", a3);
    AddReporterCallback = AppleBCMWLANIOReporting::getAddReporterCallback(this);
    Target = AppleBCMWLANIOReporting::getTarget(this);
    AppleBCMWLANBssManager::getCurrentBSS(this);
    OUTLINED_FUNCTION_45_0();
    v40 = *(v39 + 856);
    v18 = AddReporterCallback(Target);
    IOFreeData();
    v9 = v74;
    goto LABEL_14;
  }

  if (AppleBCMWLANIOReporting::getLogger(this))
  {
    AppleBCMWLANIOReporting::getLogger(this);
    if (CCLogStream::shouldLog())
    {
      Logger = AppleBCMWLANIOReporting::getLogger(this);
      CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to alloc AppleBCMWLANUtil::AutoreleasedBuffer\n");
    }
  }

  return v18;
}

uint64_t AppleBCMWLANIOReportingPerSlice::reportRC2Coex(AppleBCMWLANIOReporting *this, OSData *a2, int a3)
{
  if (a3 != 1)
  {
    if (AppleBCMWLANIOReporting::getLogger(this))
    {
      AppleBCMWLANIOReporting::getLogger(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANIOReporting::getLogger(this);
        OUTLINED_FUNCTION_66();
        CCLogStream::logInfo(v93, "[dk] %s@%d:Unexpected slice index %d\n", v104, v105, v106);
      }
    }

    return 0;
  }

  if (OSData::getLength(a2) <= 2)
  {
    v94 = OUTLINED_FUNCTION_33_0();
    if (!AppleBCMWLANIOReporting::getLogger(v94))
    {
      return v3;
    }

    AppleBCMWLANIOReporting::getLogger(this);
    if (!CCLogStream::shouldLog())
    {
      return v3;
    }

    AppleBCMWLANIOReporting::getLogger(this);
    OUTLINED_FUNCTION_93();
    OUTLINED_FUNCTION_6();
    v92 = "[dk] %s@%d:Unexpected RC2 Coex Stats length %lu\n";
    goto LABEL_38;
  }

  v6 = *OSData::getBytesNoCopy(a2);
  if (v6 == 3)
  {
    if (OSData::getLength(a2) == 48)
    {
      if (*(OSData::getBytesNoCopy(a2) + 2) == 48)
      {
        OUTLINED_FUNCTION_46_0();
        v117 = v23[18];
        v12 = v23 + 8;
        v13 = v23 + 9;
        v114 = v23[19];
        v14 = v23 + 10;
        v15 = v23 + 11;
        v115 = v23[20];
        v17 = v23 + 12;
        v18 = v23 + 13;
        v19 = v23 + 14;
        v20 = v23 + 15;
        v112 = v23[21];
        v113 = v23[22];
        v21 = (v23 + 16);
        goto LABEL_16;
      }

      v100 = OUTLINED_FUNCTION_33_0();
      if (AppleBCMWLANIOReporting::getLogger(v100))
      {
        AppleBCMWLANIOReporting::getLogger(this);
        if (CCLogStream::shouldLog())
        {
          Logger = AppleBCMWLANIOReporting::getLogger(this);
          CCLogStream::logAlert(Logger, "[dk] %s@%d:sizeof(rc2CoexStatsV3) %lu rc2CoexStatsV3.len() %d\n");
        }
      }

      return v3;
    }

    v96 = OUTLINED_FUNCTION_33_0();
    if (!AppleBCMWLANIOReporting::getLogger(v96))
    {
      return v3;
    }

    AppleBCMWLANIOReporting::getLogger(this);
    if (!CCLogStream::shouldLog())
    {
      return v3;
    }

    AppleBCMWLANIOReporting::getLogger(this);
    v106 = 48;
    v107 = OUTLINED_FUNCTION_93();
    v104 = "reportRC2Coex";
    v105 = 2689;
    v92 = "[dk] %s@%d:sizeof(rc2CoexStatsV3) %lu payload->getLength() %lu\n";
    goto LABEL_38;
  }

  if (v6 != 2)
  {
    if (v6 != 1)
    {
      v90 = OUTLINED_FUNCTION_33_0();
      if (!AppleBCMWLANIOReporting::getLogger(v90))
      {
        return v3;
      }

      AppleBCMWLANIOReporting::getLogger(this);
      if (!CCLogStream::shouldLog())
      {
        return v3;
      }

      AppleBCMWLANIOReporting::getLogger(this);
      OUTLINED_FUNCTION_103();
      v92 = "[dk] %s@%d:Invalid RC2 Coex stats version - %u\n";
LABEL_30:
      CCLogStream::logAlert(v91, v92, v104, v105, v106, v107);
      return v3;
    }

    if (OSData::getLength(a2) == 36)
    {
      if (*(OSData::getBytesNoCopy(a2) + 2) == 36)
      {
        OUTLINED_FUNCTION_46_0();
        OUTLINED_FUNCTION_95();
        v17 = (v16 + 24);
        v18 = (v16 + 26);
        v19 = (v16 + 28);
        v20 = (v16 + 30);
        v21 = (v16 + 32);
        v117 = 43690;
        v114 = 43690;
LABEL_12:
        v115 = 43690;
        v112 = 43690;
        v113 = 43690;
LABEL_16:
        v24 = *v21;
        v116 = *v20;
        v25 = *v19;
        v26 = *v18;
        v27 = *v17;
        v28 = *v15;
        v29 = *v14;
        v30 = *v13;
        v31 = *v12;
        v32 = *v11;
        v33 = *v10;
        v34 = *v9;
        v35 = *v8;
        v36 = *v7;
        v37 = OUTLINED_FUNCTION_50();
        v120 = v40;
        v119 = v41;
        if (!v37)
        {
          v108 = v39;
          v109 = v36;
          v110 = v35;
          v111 = v33;
          v42 = v38;
          CurrentBSS = AppleBCMWLANBssManager::getCurrentBSS(this);
          ReporterProvider = IO80211Controller::getReporterProvider(CurrentBSS);
          *(*(this + 7) + 1248) = OUTLINED_FUNCTION_29(ReporterProvider, v45, v46, v47);
          if (!*(*(this + 7) + 1248))
          {
            return 3758097085;
          }

          Reporter = AppleBCMWLANIOReporting::getReporter(this);
          OSSet::setObject(Reporter, *(*(this + 7) + 1248));
          v49 = OUTLINED_FUNCTION_50();
          v50 = OUTLINED_FUNCTION_5_0(v49);
          (*(v51 + 16))(v50);
          v52 = &off_1003C6D20;
          v53 = 19;
          do
          {
            v54 = OUTLINED_FUNCTION_50();
            IOReporter::addChannel(v54, *(v52 - 1) ^ 0x100000000000000, *v52);
            v52 += 2;
            --v53;
          }

          while (v53);
          AddReporterCallback = AppleBCMWLANIOReporting::getAddReporterCallback(this);
          Target = AppleBCMWLANIOReporting::getTarget(this);
          v57 = AppleBCMWLANBssManager::getCurrentBSS(this);
          AddReporterCallback(Target, v57, *(*(this + 7) + 1248), "RC2 Coex", "Counters");
          if (!v121)
          {
            return 0;
          }

          v37 = OUTLINED_FUNCTION_50();
          v38 = v42;
          v35 = v110;
          v33 = v111;
          v39 = v108;
          v36 = v109;
        }

        v118 = v38;
        IOSimpleReporter::incrementValue(v37, 0x5343324475722020uLL, v39);
        v58 = OUTLINED_FUNCTION_15_2();
        IOSimpleReporter::incrementValue(v58, v59 | 0x5343325265710000, v36);
        v60 = OUTLINED_FUNCTION_15_2();
        IOSimpleReporter::incrementValue(v60, v61 | 0x4672616E74630000, v35);
        v62 = OUTLINED_FUNCTION_15_2();
        IOSimpleReporter::incrementValue(v62, v63 | 0x5241636B504D0000, v33);
        v64 = OUTLINED_FUNCTION_15_2();
        IOSimpleReporter::incrementValue(v64, v65 | 0x5254584354530000, v32);
        v66 = OUTLINED_FUNCTION_15_2();
        IOSimpleReporter::incrementValue(v66, v67 | 0x4644656C61790000, v31);
        v68 = OUTLINED_FUNCTION_15_2();
        IOSimpleReporter::incrementValue(v68, v69 | 0x42506843616C0000, v30);
        v70 = OUTLINED_FUNCTION_15_2();
        IOSimpleReporter::incrementValue(v70, v71 | 0x4252617465520000, v29);
        v72 = OUTLINED_FUNCTION_15_2();
        IOSimpleReporter::incrementValue(v72, v73 | 0x4242636E4C730000, v28);
        v74 = OUTLINED_FUNCTION_15_2();
        IOSimpleReporter::incrementValue(v74, v75 | 0x4272694870700000, v27);
        v76 = OUTLINED_FUNCTION_15_2();
        IOSimpleReporter::incrementValue(v76, v77 | 0x4272697442540000, v118);
        v78 = OUTLINED_FUNCTION_15_2();
        IOSimpleReporter::incrementValue(v78, v79 | 0x4241574E616E0000, v119);
        v80 = OUTLINED_FUNCTION_15_2();
        IOSimpleReporter::incrementValue(v80, v81 | 0x4272694167670000, v120);
        if (v121 >= 2)
        {
          v82 = OUTLINED_FUNCTION_15_2();
          IOSimpleReporter::incrementValue(v82, v83 | 0x4272694D78440000, v116);
          v84 = OUTLINED_FUNCTION_50();
          IOSimpleReporter::incrementValue(v84, 0x4272694D614D2020uLL, v117);
          if (v121 != 2)
          {
            v85 = OUTLINED_FUNCTION_50();
            IOSimpleReporter::incrementValue(v85, 0x4272695478522020uLL, v114);
            v86 = OUTLINED_FUNCTION_50();
            IOSimpleReporter::incrementValue(v86, 0x4272695278522020uLL, v115);
            v87 = OUTLINED_FUNCTION_50();
            IOSimpleReporter::incrementValue(v87, 0x4272695478442020uLL, v112);
            v88 = OUTLINED_FUNCTION_50();
            IOSimpleReporter::incrementValue(v88, 0x4272695278442020uLL, v113);
          }
        }

        return 0;
      }

      v102 = OUTLINED_FUNCTION_33_0();
      if (AppleBCMWLANIOReporting::getLogger(v102))
      {
        AppleBCMWLANIOReporting::getLogger(this);
        if (CCLogStream::shouldLog())
        {
          v103 = AppleBCMWLANIOReporting::getLogger(this);
          CCLogStream::logAlert(v103, "[dk] %s@%d:sizeof(rc2CoexStatsV1) %lu rc2CoexStatsV1.len() %d\n");
        }
      }

      return v3;
    }

    v97 = OUTLINED_FUNCTION_33_0();
    if (!AppleBCMWLANIOReporting::getLogger(v97))
    {
      return v3;
    }

    AppleBCMWLANIOReporting::getLogger(this);
    if (!CCLogStream::shouldLog())
    {
      return v3;
    }

    AppleBCMWLANIOReporting::getLogger(this);
    v106 = 36;
    v107 = OUTLINED_FUNCTION_93();
    v104 = "reportRC2Coex";
    v105 = 2677;
    v92 = "[dk] %s@%d:sizeof(rc2CoexStatsV1) %lu payload->getLength() %lu\n";
LABEL_38:
    v91 = this;
    goto LABEL_30;
  }

  if (OSData::getLength(a2) != 40)
  {
    v95 = OUTLINED_FUNCTION_33_0();
    if (!AppleBCMWLANIOReporting::getLogger(v95))
    {
      return v3;
    }

    AppleBCMWLANIOReporting::getLogger(this);
    if (!CCLogStream::shouldLog())
    {
      return v3;
    }

    AppleBCMWLANIOReporting::getLogger(this);
    v106 = 40;
    v107 = OUTLINED_FUNCTION_93();
    v104 = "reportRC2Coex";
    v105 = 2683;
    v92 = "[dk] %s@%d:sizeof(rc2CoexStatsV2) %lu payload->getLength() %lu\n";
    goto LABEL_38;
  }

  if (*(OSData::getBytesNoCopy(a2) + 2) == 40)
  {
    OUTLINED_FUNCTION_46_0();
    OUTLINED_FUNCTION_95();
    v17 = (v22 + 24);
    v18 = (v22 + 26);
    v19 = (v22 + 28);
    v20 = (v22 + 30);
    v21 = (v22 + 32);
    v117 = *(v22 + 36);
    v114 = *(v22 + 38);
    goto LABEL_12;
  }

  v98 = OUTLINED_FUNCTION_33_0();
  if (AppleBCMWLANIOReporting::getLogger(v98))
  {
    AppleBCMWLANIOReporting::getLogger(this);
    if (CCLogStream::shouldLog())
    {
      v99 = AppleBCMWLANIOReporting::getLogger(this);
      CCLogStream::logAlert(v99, "[dk] %s@%d:sizeof(rc2CoexStatsV2) %lu rc2CoexStatsV2.len() %d\n");
    }
  }

  return v3;
}

uint64_t AppleBCMWLANIOReportingPerSlice::reportRC1Coex(AppleBCMWLANIOReporting *this, OSData *a2, int a3)
{
  if (a3)
  {
    if (AppleBCMWLANIOReporting::getLogger(this))
    {
      AppleBCMWLANIOReporting::getLogger(this);
      if (CCLogStream::shouldLog())
      {
        Logger = AppleBCMWLANIOReporting::getLogger(this);
        CCLogStream::logInfo(Logger, "[dk] %s@%d:Unexpected slice index %d\n", "reportRC1Coex", 2748, a3);
      }
    }

    return 0;
  }

  else if (OSData::getLength(a2) <= 2)
  {
    if (OUTLINED_FUNCTION_55())
    {
      AppleBCMWLANIOReporting::getLogger(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANIOReporting::getLogger(this);
        OUTLINED_FUNCTION_91();
        OUTLINED_FUNCTION_6();
        v36 = "[dk] %s@%d:Unexpected RC1 Coex Stats length %lu\n";
LABEL_44:
        v35 = this;
LABEL_37:
        CCLogStream::logAlert(v35, v36, v40, v41, v42, v43);
      }
    }
  }

  else
  {
    switch(*OSData::getBytesNoCopy(a2))
    {
      case 1:
        if (OSData::getLength(a2) == 40)
        {
          BytesNoCopy = OSData::getBytesNoCopy(a2);
          if (BytesNoCopy[1] == 40)
          {
            goto LABEL_26;
          }

          if (OUTLINED_FUNCTION_55())
          {
            AppleBCMWLANIOReporting::getLogger(this);
            if (CCLogStream::shouldLog())
            {
              v7 = AppleBCMWLANIOReporting::getLogger(this);
              CCLogStream::logAlert(v7, "[dk] %s@%d:sizeof(wlc_rc1cx_status_v1_t) %lu rc1CoexStats.len() %d\n");
            }
          }
        }

        else if (OUTLINED_FUNCTION_55())
        {
          AppleBCMWLANIOReporting::getLogger(this);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANIOReporting::getLogger(this);
            v42 = 40;
            v43 = OUTLINED_FUNCTION_91();
            v40 = "reportRC1Coex";
            v41 = 2753;
            v36 = "[dk] %s@%d:sizeof(wlc_rc1cx_status_v1_t) %lu payload->getLength() %lu\n";
            goto LABEL_44;
          }
        }

        return v3;
      case 2:
        if (OSData::getLength(a2) == 48)
        {
          BytesNoCopy = OSData::getBytesNoCopy(a2);
          if (BytesNoCopy[1] == 48)
          {
            goto LABEL_26;
          }

          if (OUTLINED_FUNCTION_55())
          {
            AppleBCMWLANIOReporting::getLogger(this);
            if (CCLogStream::shouldLog())
            {
              v39 = AppleBCMWLANIOReporting::getLogger(this);
              CCLogStream::logAlert(v39, "[dk] %s@%d:sizeof(wlc_rc1cx_status_v2_t) %lu rc1CoexStats.len() %d\n");
            }
          }
        }

        else if (OUTLINED_FUNCTION_55())
        {
          AppleBCMWLANIOReporting::getLogger(this);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANIOReporting::getLogger(this);
            v42 = 48;
            v43 = OUTLINED_FUNCTION_91();
            v40 = "reportRC1Coex";
            v41 = 2757;
            v36 = "[dk] %s@%d:sizeof(wlc_rc1cx_status_v2_t) %lu payload->getLength() %lu\n";
            goto LABEL_44;
          }
        }

        return v3;
      case 3:
        if (OSData::getLength(a2) == 72)
        {
          BytesNoCopy = OSData::getBytesNoCopy(a2);
          if (BytesNoCopy[1] == 72)
          {
            goto LABEL_26;
          }

          if (OUTLINED_FUNCTION_55())
          {
            AppleBCMWLANIOReporting::getLogger(this);
            if (CCLogStream::shouldLog())
            {
              v9 = AppleBCMWLANIOReporting::getLogger(this);
              CCLogStream::logAlert(v9, "[dk] %s@%d:sizeof(wlc_rc1cx_status_v3_t) %lu rc1CoexStats.len() %d\n");
            }
          }
        }

        else if (OUTLINED_FUNCTION_55())
        {
          AppleBCMWLANIOReporting::getLogger(this);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANIOReporting::getLogger(this);
            v42 = 72;
            v43 = OUTLINED_FUNCTION_91();
            v40 = "reportRC1Coex";
            v41 = 2761;
            v36 = "[dk] %s@%d:sizeof(wlc_rc1cx_status_v3_t) %lu payload->getLength() %lu\n";
            goto LABEL_44;
          }
        }

        return v3;
      case 4:
        if (OSData::getLength(a2) == 52)
        {
          BytesNoCopy = OSData::getBytesNoCopy(a2);
          if (BytesNoCopy[1] == 52)
          {
            goto LABEL_26;
          }

          if (OUTLINED_FUNCTION_55())
          {
            AppleBCMWLANIOReporting::getLogger(this);
            if (CCLogStream::shouldLog())
            {
              v10 = AppleBCMWLANIOReporting::getLogger(this);
              CCLogStream::logAlert(v10, "[dk] %s@%d:sizeof(wlc_rc1cx_status_v4_t) %lu rc1CoexStats.len() %d\n");
            }
          }
        }

        else if (OUTLINED_FUNCTION_55())
        {
          AppleBCMWLANIOReporting::getLogger(this);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANIOReporting::getLogger(this);
            v42 = 52;
            v43 = OUTLINED_FUNCTION_91();
            v40 = "reportRC1Coex";
            v41 = 2765;
            v36 = "[dk] %s@%d:sizeof(wlc_rc1cx_status_v4_t) %lu payload->getLength() %lu\n";
            goto LABEL_44;
          }
        }

        return v3;
      case 5:
        if (OSData::getLength(a2) == 76)
        {
          BytesNoCopy = OSData::getBytesNoCopy(a2);
          if (BytesNoCopy[1] == 76)
          {
LABEL_26:
            v11 = *(BytesNoCopy + 7);
            v12 = *(BytesNoCopy + 6);
            v13 = *(BytesNoCopy + 3);
            v14 = *(BytesNoCopy + 2);
            v15 = OUTLINED_FUNCTION_75();
            if (!v15)
            {
              CurrentBSS = AppleBCMWLANBssManager::getCurrentBSS(this);
              ReporterProvider = IO80211Controller::getReporterProvider(CurrentBSS);
              *(*(this + 7) + 1256) = OUTLINED_FUNCTION_29(ReporterProvider, v18, v19, v20);
              if (!*(*(this + 7) + 1256))
              {
                return 3758097085;
              }

              Reporter = AppleBCMWLANIOReporting::getReporter(this);
              OSSet::setObject(Reporter, *(*(this + 7) + 1256));
              v22 = OUTLINED_FUNCTION_75();
              v23 = OUTLINED_FUNCTION_5_0(v22);
              (*(v24 + 16))(v23);
              v25 = &off_1003C6E50;
              v26 = 4;
              do
              {
                v27 = OUTLINED_FUNCTION_75();
                IOReporter::addChannel(v27, *(v25 - 1), *v25);
                v25 += 2;
                --v26;
              }

              while (v26);
              AddReporterCallback = AppleBCMWLANIOReporting::getAddReporterCallback(this);
              Target = AppleBCMWLANIOReporting::getTarget(this);
              v30 = AppleBCMWLANBssManager::getCurrentBSS(this);
              AddReporterCallback(Target, v30, *(*(this + 7) + 1256), "RC1 Coex", "Counters");
              v15 = OUTLINED_FUNCTION_75();
            }

            IOSimpleReporter::incrementValue(v15, 0x5243315265712020uLL, v14);
            v31 = OUTLINED_FUNCTION_75();
            IOSimpleReporter::incrementValue(v31, 0x5243314475722020uLL, v13);
            v32 = OUTLINED_FUNCTION_75();
            IOSimpleReporter::incrementValue(v32, 0x5243317763722020uLL, v12);
            v33 = OUTLINED_FUNCTION_75();
            IOSimpleReporter::incrementValue(v33, 0x5243314344752020uLL, v11);
            return 0;
          }

          if (OUTLINED_FUNCTION_55())
          {
            AppleBCMWLANIOReporting::getLogger(this);
            if (CCLogStream::shouldLog())
            {
              v8 = AppleBCMWLANIOReporting::getLogger(this);
              CCLogStream::logAlert(v8, "[dk] %s@%d:sizeof(wlc_rc1cx_status_v5_t) %lu rc1CoexStats.len() %d\n");
            }
          }
        }

        else if (OUTLINED_FUNCTION_55())
        {
          AppleBCMWLANIOReporting::getLogger(this);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANIOReporting::getLogger(this);
            v42 = 76;
            v43 = OUTLINED_FUNCTION_91();
            v40 = "reportRC1Coex";
            v41 = 2769;
            v36 = "[dk] %s@%d:sizeof(wlc_rc1cx_status_v5_t) %lu payload->getLength() %lu\n";
            goto LABEL_44;
          }
        }

        break;
      default:
        if (!OUTLINED_FUNCTION_55())
        {
          return v3;
        }

        AppleBCMWLANIOReporting::getLogger(this);
        if (!CCLogStream::shouldLog())
        {
          return v3;
        }

        AppleBCMWLANIOReporting::getLogger(this);
        OUTLINED_FUNCTION_103();
        v36 = "[dk] %s@%d:Invalid RC1 Coex stats version - %u\n";
        goto LABEL_37;
    }
  }

  return v3;
}

uint64_t AppleBCMWLANIOReportingPerSlice::reportExtraBTCoex(AppleBCMWLANIOReporting *a1, OSData *this, uint64_t a3)
{
  if (a3 >= 2)
  {
    OUTLINED_FUNCTION_59();
    if (AppleBCMWLANIOReporting::getLogger(a1))
    {
      AppleBCMWLANIOReporting::getLogger(a1);
      if (CCLogStream::shouldLog())
      {
        Logger = AppleBCMWLANIOReporting::getLogger(a1);
        CCLogStream::logEmergency(Logger, "[dk] %s@%d:Out of range slice index %d\n");
      }
    }
  }

  else
  {
    if (OSData::getLength(this) >= 3)
    {
      v8 = *OSData::getBytesNoCopy(this);
      switch(v8)
      {
        case 3:
          goto LABEL_4;
        case 4:
          if (OSData::getLength(this) == 92)
          {
            BytesNoCopy = OSData::getBytesNoCopy(this);
            v192 = OUTLINED_FUNCTION_65(BytesNoCopy);
            v350 = v193;
            v344 = v192[18];
            v340 = v192[19];
            v342 = v192[20];
            v338 = v192[21];
            v341 = v192[22];
            v336 = v192[23];
            v334 = v192[24];
            v335 = v192[25];
            v337 = v192[26];
            v339 = v192[27];
            v343 = v192[28];
            v345 = v192[29];
            v346 = v192[30];
            v347 = v192[31];
            v348 = v192[32];
            v349 = v192[33];
            v351 = v192[34];
            v352 = v192[35];
            v353 = v192[36];
            v354 = v192[37];
            v355 = v192[38];
            v356 = v192[39];
            v357 = v192[40];
            v358 = v192[41];
            v359 = v192[42];
            v360 = v192[43];
            v361 = v192[44];
            v362 = v192[45];
            v10 = 4;
            v372 = 43690;
            v371 = 43690;
            v369 = 43690;
            v370 = 43690;
            v367 = 43690;
            v368 = 43690;
            v365 = 43690;
            v366 = 43690;
            v363 = 43690;
            v364 = 43690;
            goto LABEL_6;
          }

          if (AppleBCMWLANIOReporting::getLogger(a1))
          {
            AppleBCMWLANIOReporting::getLogger(a1);
            if (CCLogStream::shouldLog())
            {
              AppleBCMWLANIOReporting::getLogger(a1);
              v274 = OUTLINED_FUNCTION_88();
              CCLogStream::logEmergency(a1, "[dk] %s@%d:sizeof(btcoex) %lu payload->getLength() %lu\n", "reportExtraBTCoex", 2987, 92, v274);
            }
          }

          goto LABEL_71;
        case 6:
          if (OSData::getLength(this) == 60)
          {
            v212 = OSData::getBytesNoCopy(this);
            v213 = OUTLINED_FUNCTION_65(v212);
            v333 = v214;
            v10 = 6;
            v329 = *(v213 + 36);
            v215 = OUTLINED_FUNCTION_16_1(v213);
            v323 = v216;
            v217 = OUTLINED_FUNCTION_23_0(v215);
            v324 = v218;
            v219 = OUTLINED_FUNCTION_20_0(v217);
            v325 = v220;
            v221 = OUTLINED_FUNCTION_22_0(v219);
            v326 = v222;
            v223 = OUTLINED_FUNCTION_21(v221);
            v327 = v224;
            v225 = OUTLINED_FUNCTION_18_0(v223);
            v328 = v226;
            v227 = OUTLINED_FUNCTION_19_0(v225);
            v330 = v228;
            v229 = OUTLINED_FUNCTION_17_1(v227);
            v331 = v230;
            OUTLINED_FUNCTION_62(v229);
            v332 = v231;
            OUTLINED_FUNCTION_80();
            OUTLINED_FUNCTION_31_0();
            OUTLINED_FUNCTION_29_0();
            OUTLINED_FUNCTION_30_0();
            OUTLINED_FUNCTION_28_0();
            OUTLINED_FUNCTION_0_4();
            goto LABEL_7;
          }

          if (AppleBCMWLANIOReporting::getLogger(a1))
          {
            AppleBCMWLANIOReporting::getLogger(a1);
            if (CCLogStream::shouldLog())
            {
              AppleBCMWLANIOReporting::getLogger(a1);
              v276 = OUTLINED_FUNCTION_88();
              CCLogStream::logEmergency(a1, "[dk] %s@%d:sizeof(btcoex) %lu payload->getLength() %lu\n", "reportExtraBTCoex", 2990, 60, v276);
            }
          }

          goto LABEL_71;
        case 7:
          if (OSData::getLength(this) == 72)
          {
            v232 = OSData::getBytesNoCopy(this);
            v233 = OUTLINED_FUNCTION_65(v232);
            v322 = v234;
            v10 = 7;
            v318 = *(v233 + 36);
            v235 = OUTLINED_FUNCTION_16_1(v233);
            v312 = v236;
            v237 = OUTLINED_FUNCTION_23_0(v235);
            v313 = v238;
            v239 = OUTLINED_FUNCTION_20_0(v237);
            v314 = v240;
            v241 = OUTLINED_FUNCTION_22_0(v239);
            v315 = v242;
            v243 = OUTLINED_FUNCTION_21(v241);
            v316 = v244;
            v245 = OUTLINED_FUNCTION_18_0(v243);
            v317 = v246;
            v247 = OUTLINED_FUNCTION_19_0(v245);
            v319 = v248;
            v249 = OUTLINED_FUNCTION_17_1(v247);
            v320 = v250;
            OUTLINED_FUNCTION_62(v249);
            v321 = v251;
            OUTLINED_FUNCTION_80();
            OUTLINED_FUNCTION_31_0();
            OUTLINED_FUNCTION_29_0();
            OUTLINED_FUNCTION_30_0();
            OUTLINED_FUNCTION_28_0();
            OUTLINED_FUNCTION_0_4();
            OUTLINED_FUNCTION_1_6();
            goto LABEL_8;
          }

          if (AppleBCMWLANIOReporting::getLogger(a1))
          {
            AppleBCMWLANIOReporting::getLogger(a1);
            if (CCLogStream::shouldLog())
            {
              AppleBCMWLANIOReporting::getLogger(a1);
              v277 = OUTLINED_FUNCTION_88();
              CCLogStream::logEmergency(a1, "[dk] %s@%d:sizeof(btcoex) %lu payload->getLength() %lu\n", "reportExtraBTCoex", 2993, 72, v277);
            }
          }

          goto LABEL_71;
        case 9:
          if (OSData::getLength(this) == 76)
          {
            v252 = OSData::getBytesNoCopy(this);
            v253 = OUTLINED_FUNCTION_65(v252);
            v311 = v254;
            v10 = 9;
            v307 = *(v253 + 36);
            v255 = OUTLINED_FUNCTION_16_1(v253);
            v301 = v256;
            v257 = OUTLINED_FUNCTION_23_0(v255);
            v302 = v258;
            v259 = OUTLINED_FUNCTION_20_0(v257);
            v303 = v260;
            v261 = OUTLINED_FUNCTION_22_0(v259);
            v304 = v262;
            v263 = OUTLINED_FUNCTION_21(v261);
            v305 = v264;
            v265 = OUTLINED_FUNCTION_18_0(v263);
            v306 = v266;
            v267 = OUTLINED_FUNCTION_19_0(v265);
            v308 = v268;
            v269 = OUTLINED_FUNCTION_17_1(v267);
            v309 = v270;
            OUTLINED_FUNCTION_62(v269);
            v310 = v271;
            OUTLINED_FUNCTION_80();
            OUTLINED_FUNCTION_31_0();
            OUTLINED_FUNCTION_29_0();
            OUTLINED_FUNCTION_30_0();
            OUTLINED_FUNCTION_28_0();
            OUTLINED_FUNCTION_0_4();
            OUTLINED_FUNCTION_1_6();
            OUTLINED_FUNCTION_2_4();
            goto LABEL_9;
          }

          if (AppleBCMWLANIOReporting::getLogger(a1))
          {
            AppleBCMWLANIOReporting::getLogger(a1);
            if (CCLogStream::shouldLog())
            {
              AppleBCMWLANIOReporting::getLogger(a1);
              v278 = OUTLINED_FUNCTION_88();
              CCLogStream::logEmergency(a1, "[dk] %s@%d:sizeof(btcoex) %lu payload->getLength() %lu\n", "reportExtraBTCoex", 2996, 76, v278);
            }
          }

          goto LABEL_71;
        case 11:
          if (OSData::getLength(this) == 88)
          {
            v171 = OSData::getBytesNoCopy(this);
            v172 = OUTLINED_FUNCTION_65(v171);
            v300 = v173;
            v10 = 11;
            v296 = *(v172 + 36);
            v174 = OUTLINED_FUNCTION_16_1(v172);
            v290 = v175;
            v176 = OUTLINED_FUNCTION_23_0(v174);
            v291 = v177;
            v178 = OUTLINED_FUNCTION_20_0(v176);
            v292 = v179;
            v180 = OUTLINED_FUNCTION_22_0(v178);
            v293 = v181;
            v182 = OUTLINED_FUNCTION_21(v180);
            v294 = v183;
            v184 = OUTLINED_FUNCTION_18_0(v182);
            v295 = v185;
            v186 = OUTLINED_FUNCTION_19_0(v184);
            v297 = v187;
            v188 = OUTLINED_FUNCTION_17_1(v186);
            v298 = v189;
            OUTLINED_FUNCTION_62(v188);
            v299 = v190;
            OUTLINED_FUNCTION_80();
            OUTLINED_FUNCTION_31_0();
            OUTLINED_FUNCTION_29_0();
            OUTLINED_FUNCTION_30_0();
            OUTLINED_FUNCTION_28_0();
            OUTLINED_FUNCTION_0_4();
            OUTLINED_FUNCTION_1_6();
            OUTLINED_FUNCTION_2_4();
            OUTLINED_FUNCTION_9_3();
            goto LABEL_10;
          }

          if (AppleBCMWLANIOReporting::getLogger(a1))
          {
            AppleBCMWLANIOReporting::getLogger(a1);
            if (CCLogStream::shouldLog())
            {
              AppleBCMWLANIOReporting::getLogger(a1);
              v273 = OUTLINED_FUNCTION_88();
              CCLogStream::logEmergency(a1, "[dk] %s@%d:sizeof(btcoex) %lu payload->getLength() %lu\n", "reportExtraBTCoex", 2999, 88, v273);
            }
          }

          goto LABEL_71;
        case 12:
          if (OSData::getLength(this) == 112)
          {
            v194 = OSData::getBytesNoCopy(this);
            v8 = 0;
            v289 = v194[17];
            v10 = 12;
            v3 = 1;
            v287 = v194[18];
            v195 = OUTLINED_FUNCTION_16_1(v194);
            v279 = v196;
            v197 = OUTLINED_FUNCTION_23_0(v195);
            v280 = v198;
            v199 = OUTLINED_FUNCTION_20_0(v197);
            v281 = v200;
            v201 = OUTLINED_FUNCTION_22_0(v199);
            v282 = v202;
            v203 = OUTLINED_FUNCTION_21(v201);
            v284 = v204;
            v205 = OUTLINED_FUNCTION_18_0(v203);
            v283 = v206;
            v207 = OUTLINED_FUNCTION_19_0(v205);
            v286 = v208;
            v209 = OUTLINED_FUNCTION_17_1(v207);
            v285 = v210;
            OUTLINED_FUNCTION_62(v209);
            v288 = v211;
            OUTLINED_FUNCTION_80();
            OUTLINED_FUNCTION_31_0();
            OUTLINED_FUNCTION_29_0();
            OUTLINED_FUNCTION_30_0();
            OUTLINED_FUNCTION_28_0();
            OUTLINED_FUNCTION_0_4();
            OUTLINED_FUNCTION_1_6();
            OUTLINED_FUNCTION_2_4();
            OUTLINED_FUNCTION_9_3();
            OUTLINED_FUNCTION_49();
            goto LABEL_11;
          }

          if (AppleBCMWLANIOReporting::getLogger(a1))
          {
            AppleBCMWLANIOReporting::getLogger(a1);
            if (CCLogStream::shouldLog())
            {
              AppleBCMWLANIOReporting::getLogger(a1);
              v275 = OUTLINED_FUNCTION_88();
              CCLogStream::logEmergency(a1, "[dk] %s@%d:sizeof(btcoex) %lu payload->getLength() %lu\n", "reportExtraBTCoex", 3003, 112, v275);
            }
          }

          break;
        default:
          OUTLINED_FUNCTION_59();
          if (AppleBCMWLANIOReporting::getLogger(a1))
          {
            AppleBCMWLANIOReporting::getLogger(a1);
            if (CCLogStream::shouldLog())
            {
              v170 = AppleBCMWLANIOReporting::getLogger(a1);
              CCLogStream::logEmergency(v170, "[dk] %s@%d:Invalid BT Coex stats version - %u\n");
            }
          }

          return v3;
      }

      goto LABEL_71;
    }

LABEL_4:
    if (OSData::getLength(this) == 60)
    {
      v9 = OSData::getBytesNoCopy(this);
      v3 = 0;
      v372 = v9[18];
      v10 = 3;
      v8 = 1;
      v371 = v9[19];
      v350 = 43690;
      v344 = 43690;
      v369 = v9[20];
      v340 = 43690;
      v342 = 43690;
      v370 = v9[21];
      v338 = 43690;
      v341 = 43690;
      v367 = v9[22];
      v336 = 43690;
      OUTLINED_FUNCTION_80();
      v368 = *(v11 + 46);
      OUTLINED_FUNCTION_31_0();
      v365 = *(v12 + 48);
      OUTLINED_FUNCTION_29_0();
      v366 = *(v13 + 50);
      OUTLINED_FUNCTION_30_0();
      v363 = *(v14 + 52);
      OUTLINED_FUNCTION_28_0();
      v364 = *(v15 + 54);
      OUTLINED_FUNCTION_0_4();
LABEL_6:
      OUTLINED_FUNCTION_1_6();
LABEL_7:
      OUTLINED_FUNCTION_2_4();
LABEL_8:
      OUTLINED_FUNCTION_9_3();
LABEL_9:
      OUTLINED_FUNCTION_49();
LABEL_10:
      v289 = 43690;
      v287 = 43690;
      v279 = 43690;
      v280 = 43690;
      v281 = 43690;
      v282 = 43690;
      v284 = 43690;
      v283 = 43690;
      v286 = 43690;
      v285 = 43690;
      v288 = 43690;
LABEL_11:
      AppleBCMWLANCore::checkForBT5GSupport(*(*(a1 + 7) + 1504));
      v16 = 0;
      if (a3 == 1 && !*(*(a1 + 7) + 544))
      {
        CurrentBSS = AppleBCMWLANBssManager::getCurrentBSS(a1);
        ReporterProvider = IO80211Controller::getReporterProvider(CurrentBSS);
        OUTLINED_FUNCTION_29(ReporterProvider, v19, v20, v21);
        OUTLINED_FUNCTION_37_0();
        *(v23 + 536) = v22;
        OUTLINED_FUNCTION_37_0();
        if (!*(v24 + 536))
        {
LABEL_71:
          OUTLINED_FUNCTION_59();
          return v3;
        }

        v4 = v8;
        AppleBCMWLANIOReporting::getReporter(a1);
        OUTLINED_FUNCTION_37_0();
        OSSet::setObject(v26, *(v25 + 536));
        v27 = OUTLINED_FUNCTION_6_4();
        v28 = OUTLINED_FUNCTION_5_0(v27);
        (*(v29 + 16))(v28);
        v30 = &off_1003C7130;
        v31 = 30;
        do
        {
          v32 = OUTLINED_FUNCTION_6_4();
          IOReporter::addChannel(v32, *(v30 - 1) ^ 0x100000000000000, *v30);
          v30 += 2;
          --v31;
        }

        while (v31);
        AddReporterCallback = AppleBCMWLANIOReporting::getAddReporterCallback(a1);
        Target = AppleBCMWLANIOReporting::getTarget(a1);
        AppleBCMWLANBssManager::getCurrentBSS(a1);
        OUTLINED_FUNCTION_37_0();
        v36 = *(v35 + 536);
        v16 = AddReporterCallback(Target);
        v8 = v4;
      }

      v373 = v16;
      OUTLINED_FUNCTION_102();
      OUTLINED_FUNCTION_101();
      if (v8)
      {
        v37 = OUTLINED_FUNCTION_6_4();
        v8 = a3;
        IOSimpleReporter::incrementValue(v37, v38 ^ (a3 << 56), v372);
        v39 = OUTLINED_FUNCTION_6_4();
        IOSimpleReporter::incrementValue(v39, (a3 << 56) ^ 0x5362744374732020, v371);
        v40 = OUTLINED_FUNCTION_6_4();
        IOSimpleReporter::incrementValue(v40, (a3 << 56) ^ 0x5362745774782020, v369);
        v41 = OUTLINED_FUNCTION_4_4();
        IOSimpleReporter::incrementValue(v41, v42, v370);
        v43 = OUTLINED_FUNCTION_6_4();
        IOSimpleReporter::incrementValue(v43, v4 ^ (a3 << 56), v367);
        OUTLINED_FUNCTION_6_4();
        OUTLINED_FUNCTION_82();
        IOSimpleReporter::incrementValue(v44, v45, v368);
        v46 = OUTLINED_FUNCTION_6_4();
        IOSimpleReporter::incrementValue(v46, (a3 << 56) ^ 0x5362745041442020, v365);
        v47 = OUTLINED_FUNCTION_6_4();
        v4 = 0x5362745041442020;
        IOSimpleReporter::incrementValue(v47, (a3 << 56) ^ 0x5362744132472020, v366);
        OUTLINED_FUNCTION_6_4();
        OUTLINED_FUNCTION_101();
        IOSimpleReporter::incrementValue(v48, v49, v363);
        OUTLINED_FUNCTION_6_4();
        OUTLINED_FUNCTION_24_0();
        IOSimpleReporter::incrementValue(v50, v51, v364);
        OUTLINED_FUNCTION_102();
      }

      switch(v10)
      {
        case 4:
          v52 = OUTLINED_FUNCTION_6_4();
          IOSimpleReporter::incrementValue(v52, v53 ^ (a3 << 56), v350);
          v54 = OUTLINED_FUNCTION_6_4();
          IOSimpleReporter::incrementValue(v54, (a3 << 56) ^ 0x5362744374732020, v344);
          v55 = OUTLINED_FUNCTION_6_4();
          IOSimpleReporter::incrementValue(v55, (a3 << 56) ^ 0x5362745774782020, v340);
          v56 = OUTLINED_FUNCTION_4_4();
          IOSimpleReporter::incrementValue(v56, v57, v342);
          v58 = OUTLINED_FUNCTION_6_4();
          IOSimpleReporter::incrementValue(v58, v4 ^ (a3 << 56), v338);
          OUTLINED_FUNCTION_6_4();
          OUTLINED_FUNCTION_82();
          IOSimpleReporter::incrementValue(v59, v60, v341);
          v61 = OUTLINED_FUNCTION_6_4();
          IOSimpleReporter::incrementValue(v61, (a3 << 56) ^ 0x5362745041442020, v336);
          v62 = OUTLINED_FUNCTION_3_3();
          IOSimpleReporter::incrementValue(v62, v63, v334);
          v64 = OUTLINED_FUNCTION_4_4();
          IOSimpleReporter::incrementValue(v64, v65, v335);
          v66 = OUTLINED_FUNCTION_6_4();
          IOSimpleReporter::incrementValue(v66, (a3 << 56) ^ 0x5362745341472020, v337);
          v67 = OUTLINED_FUNCTION_6_4();
          IOSimpleReporter::incrementValue(v67, (a3 << 56) ^ 0x5362745341442020, v339);
          v68 = OUTLINED_FUNCTION_6_4();
          IOSimpleReporter::incrementValue(v68, (a3 << 56) ^ 0x53627444434D2020, v343);
          v69 = OUTLINED_FUNCTION_4_4();
          IOSimpleReporter::incrementValue(v69, v70, v345);
          v71 = OUTLINED_FUNCTION_6_4();
          IOSimpleReporter::incrementValue(v71, (a3 << 56) ^ 0x5362744148572020, v346);
          v72 = OUTLINED_FUNCTION_6_4();
          IOSimpleReporter::incrementValue(v72, (a3 << 56) ^ 0x5362744444432020, v347);
          v73 = OUTLINED_FUNCTION_6_4();
          IOSimpleReporter::incrementValue(v73, (a3 << 56) ^ 0x5362744147432020, v348);
          v74 = OUTLINED_FUNCTION_6_4();
          IOSimpleReporter::incrementValue(v74, (a3 << 56) ^ 0x5362744147482020, v349);
          v75 = OUTLINED_FUNCTION_6_4();
          IOSimpleReporter::incrementValue(v75, (a3 << 56) ^ 0x5362744142312020, v351);
          v76 = OUTLINED_FUNCTION_6_4();
          IOSimpleReporter::incrementValue(v76, (a3 << 56) ^ 0x5362744142322020, v352);
          v77 = OUTLINED_FUNCTION_6_4();
          IOSimpleReporter::incrementValue(v77, (a3 << 56) ^ 0x5362744142332020, v353);
          v78 = OUTLINED_FUNCTION_6_4();
          IOSimpleReporter::incrementValue(v78, (a3 << 56) ^ 0x5362744142342020, v354);
          v79 = OUTLINED_FUNCTION_6_4();
          IOSimpleReporter::incrementValue(v79, (a3 << 56) ^ 0x5362744142352020, v355);
          v80 = OUTLINED_FUNCTION_6_4();
          IOSimpleReporter::incrementValue(v80, (a3 << 56) ^ 0x5362744142362020, v356);
          v81 = OUTLINED_FUNCTION_6_4();
          IOSimpleReporter::incrementValue(v81, (a3 << 56) ^ 0x5362744142372020, v357);
          v82 = OUTLINED_FUNCTION_6_4();
          IOSimpleReporter::incrementValue(v82, (a3 << 56) ^ 0x5362744142382020, v358);
          v83 = OUTLINED_FUNCTION_4_4();
          IOSimpleReporter::incrementValue(v83, v84, v359);
          v85 = OUTLINED_FUNCTION_6_4();
          IOSimpleReporter::incrementValue(v85, (a3 << 56) ^ 0x5362744147332020, v360);
          v86 = OUTLINED_FUNCTION_6_4();
          IOSimpleReporter::incrementValue(v86, (a3 << 56) ^ 0x5362744147362020, v361);
          v87 = OUTLINED_FUNCTION_6_4();
          v88 = (a3 << 56) ^ 0x5362744147472020;
          v89 = v362;
          goto LABEL_29;
        case 6:
          OUTLINED_FUNCTION_6_4();
          OUTLINED_FUNCTION_70();
          v119 = v118;
          IOSimpleReporter::incrementValue(v120, v121, v333);
          v122 = OUTLINED_FUNCTION_6_4();
          IOSimpleReporter::incrementValue(v122, v119 ^ (v8 << 56), v329);
          v123 = OUTLINED_FUNCTION_6_4();
          IOSimpleReporter::incrementValue(v123, (v8 << 56) ^ 0x5362744374732020, v323);
          v124 = OUTLINED_FUNCTION_6_4();
          IOSimpleReporter::incrementValue(v124, (v8 << 56) ^ 0x5362745774782020, v324);
          v125 = OUTLINED_FUNCTION_4_4();
          IOSimpleReporter::incrementValue(v125, v126, v325);
          v127 = OUTLINED_FUNCTION_6_4();
          IOSimpleReporter::incrementValue(v127, v4 ^ (v8 << 56), v326);
          OUTLINED_FUNCTION_6_4();
          OUTLINED_FUNCTION_82();
          IOSimpleReporter::incrementValue(v128, v129, v327);
          v130 = OUTLINED_FUNCTION_6_4();
          IOSimpleReporter::incrementValue(v130, (v8 << 56) ^ 0x5362745041442020, v328);
          v131 = OUTLINED_FUNCTION_3_3();
          IOSimpleReporter::incrementValue(v131, v132, v330);
          v133 = OUTLINED_FUNCTION_4_4();
          IOSimpleReporter::incrementValue(v133, v134, v331);
          OUTLINED_FUNCTION_6_4();
          OUTLINED_FUNCTION_24_0();
          v89 = v332;
          goto LABEL_29;
        case 7:
          OUTLINED_FUNCTION_6_4();
          OUTLINED_FUNCTION_70();
          v102 = v101;
          IOSimpleReporter::incrementValue(v103, v104, v322);
          v105 = OUTLINED_FUNCTION_6_4();
          IOSimpleReporter::incrementValue(v105, v102 ^ (v8 << 56), v318);
          v106 = OUTLINED_FUNCTION_6_4();
          IOSimpleReporter::incrementValue(v106, (v8 << 56) ^ 0x5362744374732020, v312);
          v107 = OUTLINED_FUNCTION_6_4();
          IOSimpleReporter::incrementValue(v107, (v8 << 56) ^ 0x5362745774782020, v313);
          v108 = OUTLINED_FUNCTION_4_4();
          IOSimpleReporter::incrementValue(v108, v109, v314);
          v110 = OUTLINED_FUNCTION_6_4();
          IOSimpleReporter::incrementValue(v110, v4 ^ (v8 << 56), v315);
          OUTLINED_FUNCTION_6_4();
          OUTLINED_FUNCTION_82();
          IOSimpleReporter::incrementValue(v111, v112, v316);
          v113 = OUTLINED_FUNCTION_6_4();
          IOSimpleReporter::incrementValue(v113, (v8 << 56) ^ 0x5362745041442020, v317);
          v114 = OUTLINED_FUNCTION_3_3();
          IOSimpleReporter::incrementValue(v114, v115, v319);
          v116 = OUTLINED_FUNCTION_4_4();
          IOSimpleReporter::incrementValue(v116, v117, v320);
          OUTLINED_FUNCTION_6_4();
          OUTLINED_FUNCTION_24_0();
          v89 = v321;
          goto LABEL_29;
        case 9:
          OUTLINED_FUNCTION_6_4();
          OUTLINED_FUNCTION_70();
          v136 = v135;
          IOSimpleReporter::incrementValue(v137, v138, v311);
          v139 = OUTLINED_FUNCTION_6_4();
          IOSimpleReporter::incrementValue(v139, v136 ^ (v8 << 56), v307);
          v140 = OUTLINED_FUNCTION_6_4();
          IOSimpleReporter::incrementValue(v140, (v8 << 56) ^ 0x5362744374732020, v301);
          v141 = OUTLINED_FUNCTION_6_4();
          IOSimpleReporter::incrementValue(v141, (v8 << 56) ^ 0x5362745774782020, v302);
          v142 = OUTLINED_FUNCTION_4_4();
          IOSimpleReporter::incrementValue(v142, v143, v303);
          v144 = OUTLINED_FUNCTION_6_4();
          IOSimpleReporter::incrementValue(v144, v4 ^ (v8 << 56), v304);
          OUTLINED_FUNCTION_6_4();
          OUTLINED_FUNCTION_82();
          IOSimpleReporter::incrementValue(v145, v146, v305);
          v147 = OUTLINED_FUNCTION_6_4();
          IOSimpleReporter::incrementValue(v147, (v8 << 56) ^ 0x5362745041442020, v306);
          v148 = OUTLINED_FUNCTION_3_3();
          IOSimpleReporter::incrementValue(v148, v149, v308);
          v150 = OUTLINED_FUNCTION_4_4();
          IOSimpleReporter::incrementValue(v150, v151, v309);
          OUTLINED_FUNCTION_6_4();
          OUTLINED_FUNCTION_24_0();
          v89 = v310;
          goto LABEL_29;
        case 11:
          OUTLINED_FUNCTION_6_4();
          OUTLINED_FUNCTION_70();
          v153 = v152;
          IOSimpleReporter::incrementValue(v154, v155, v300);
          v156 = OUTLINED_FUNCTION_6_4();
          IOSimpleReporter::incrementValue(v156, v153 ^ (v8 << 56), v296);
          v157 = OUTLINED_FUNCTION_6_4();
          IOSimpleReporter::incrementValue(v157, (v8 << 56) ^ 0x5362744374732020, v290);
          v158 = OUTLINED_FUNCTION_6_4();
          IOSimpleReporter::incrementValue(v158, (v8 << 56) ^ 0x5362745774782020, v291);
          v159 = OUTLINED_FUNCTION_4_4();
          IOSimpleReporter::incrementValue(v159, v160, v292);
          v161 = OUTLINED_FUNCTION_6_4();
          IOSimpleReporter::incrementValue(v161, v4 ^ (v8 << 56), v293);
          OUTLINED_FUNCTION_6_4();
          OUTLINED_FUNCTION_82();
          IOSimpleReporter::incrementValue(v162, v163, v294);
          v164 = OUTLINED_FUNCTION_6_4();
          IOSimpleReporter::incrementValue(v164, (v8 << 56) ^ 0x5362745041442020, v295);
          v165 = OUTLINED_FUNCTION_3_3();
          IOSimpleReporter::incrementValue(v165, v166, v297);
          v167 = OUTLINED_FUNCTION_4_4();
          IOSimpleReporter::incrementValue(v167, v168, v298);
          OUTLINED_FUNCTION_6_4();
          OUTLINED_FUNCTION_24_0();
          v89 = v299;
          goto LABEL_29;
        default:
          v90 = v3 ^ 1;
          if (a3 != 1)
          {
            v90 = 1;
          }

          if (v90)
          {
            goto LABEL_30;
          }

          v91 = OUTLINED_FUNCTION_6_4();
          IOSimpleReporter::incrementValue(v91, 0x526274706D612020uLL, v289);
          v92 = OUTLINED_FUNCTION_6_4();
          IOSimpleReporter::incrementValue(v92, 0x526274706D702020uLL, v287);
          v93 = OUTLINED_FUNCTION_6_4();
          IOSimpleReporter::incrementValue(v93, 0x5262744374732020uLL, v279);
          v94 = OUTLINED_FUNCTION_6_4();
          IOSimpleReporter::incrementValue(v94, 0x5262745774782020uLL, v280);
          v95 = OUTLINED_FUNCTION_6_4();
          IOSimpleReporter::incrementValue(v95, 0x5262745772782020uLL, v281);
          v96 = OUTLINED_FUNCTION_6_4();
          IOSimpleReporter::incrementValue(v96, 0x5262744170542020uLL, v282);
          v97 = OUTLINED_FUNCTION_6_4();
          IOSimpleReporter::incrementValue(v97, 0x5262745041472020uLL, v284);
          v98 = OUTLINED_FUNCTION_6_4();
          IOSimpleReporter::incrementValue(v98, 0x5262745041442020uLL, v283);
          v99 = OUTLINED_FUNCTION_6_4();
          IOSimpleReporter::incrementValue(v99, 0x5262744132472020uLL, v286);
          v100 = OUTLINED_FUNCTION_6_4();
          IOSimpleReporter::incrementValue(v100, 0x5262744132442020uLL, v285);
          v87 = OUTLINED_FUNCTION_6_4();
          v88 = 0x5262745341472020;
          v89 = v288;
LABEL_29:
          IOSimpleReporter::incrementValue(v87, v88, v89);
LABEL_30:
          v3 = v373;
          break;
      }
    }

    else
    {
      OUTLINED_FUNCTION_59();
      if (AppleBCMWLANIOReporting::getLogger(a1))
      {
        AppleBCMWLANIOReporting::getLogger(a1);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANIOReporting::getLogger(a1);
          OUTLINED_FUNCTION_88();
          CCLogStream::logEmergency(a1, "[dk] %s@%d:sizeof(btcoex) %lu payload->getLength() %lu\n");
        }
      }
    }
  }

  return v3;
}

uint64_t AppleBCMWLANIOReportingPerSlice::initRxErrorReporter(AppleBCMWLANBssManager *a1, uint64_t (*a2)(void), uint64_t a3, int *a4)
{
  CurrentBSS = AppleBCMWLANBssManager::getCurrentBSS(a1);
  ReporterProvider = IO80211Controller::getReporterProvider(CurrentBSS);
  *(*(a1 + 7) + 8 * a2 + 376) = OUTLINED_FUNCTION_29(ReporterProvider, v9, v10, v11);
  if (*(*(a1 + 7) + 8 * a2 + 376))
  {
    AppleBCMWLANIOReporting::getReporter(a1);
    OUTLINED_FUNCTION_99();
    OSSet::setObject(v13, *(v12 + 376));
    OUTLINED_FUNCTION_99();
    v15 = OUTLINED_FUNCTION_5_0(*(v14 + 376));
    (*(v16 + 16))(v15);
    v17 = &off_1003C5E70;
    v18 = 8;
    do
    {
      OUTLINED_FUNCTION_99();
      IOReporter::addChannel(*(v19 + 376), *(v17 - 1) ^ (a2 << 56), *v17);
      v17 += 2;
      --v18;
    }

    while (v18);
    v20 = OUTLINED_FUNCTION_58();
    snprintf(v20, v21, v22, "Slice", a2);
    AppleBCMWLANIOReporting::getAddReporterCallback(a1);
    v23 = OUTLINED_FUNCTION_77();
    AppleBCMWLANIOReporting::getTarget(v23);
    v24 = OUTLINED_FUNCTION_53();
    AppleBCMWLANBssManager::getCurrentBSS(v24);
    OUTLINED_FUNCTION_99();
    v26 = *(v25 + 376);
    v27 = a2(a2 << 56);
  }

  else
  {
    v27 = -536870211;
  }

  *a4 = v27;
  OUTLINED_FUNCTION_58();

  return IOFreeData();
}

uint64_t AppleBCMWLANIOReportingPerSlice::initTxMngReporter(AppleBCMWLANIOReporting *a1)
{
  result = OUTLINED_FUNCTION_14_1(a1);
  if (result)
  {
    AppleBCMWLANIOReporting::getLogger(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      Logger = AppleBCMWLANIOReporting::getLogger(v2);
      result = CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to alloc ivars->fSliceCountersTxManagementCountersLUT\n", "initTxMngReporter", 559);
    }
  }

  *v1 = v3;
  return result;
}

{
  Logger = AppleBCMWLANIOReporting::getLogger(a1);
  return CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to alloc AppleBCMWLANUtil::AutoreleasedBuffer\n", "initTxMngReporter", 548);
}

uint64_t AppleBCMWLANIOReportingPerSlice::initRxMngReporter(AppleBCMWLANIOReporting *a1)
{
  result = OUTLINED_FUNCTION_14_1(a1);
  if (result)
  {
    AppleBCMWLANIOReporting::getLogger(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      Logger = AppleBCMWLANIOReporting::getLogger(v2);
      result = CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to alloc ivars->fSliceCountersRxManagementCountersLUT\n", "initRxMngReporter", 605);
    }
  }

  *v1 = v3;
  return result;
}

{
  Logger = AppleBCMWLANIOReporting::getLogger(a1);
  return CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to alloc AppleBCMWLANUtil::AutoreleasedBuffer\n", "initRxMngReporter", 593);
}

uint64_t AppleBCMWLANIOReportingPerSlice::initLTECoexReporter(AppleBCMWLANIOReporting *a1)
{
  result = OUTLINED_FUNCTION_14_1(a1);
  if (result)
  {
    AppleBCMWLANIOReporting::getLogger(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      Logger = AppleBCMWLANIOReporting::getLogger(v2);
      result = CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to allocate IOSimpleReporter\n", "initLTECoexReporter", 760);
    }
  }

  *v1 = v3;
  return result;
}

{
  result = OUTLINED_FUNCTION_14_1(a1);
  if (result)
  {
    AppleBCMWLANIOReporting::getLogger(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      Logger = AppleBCMWLANIOReporting::getLogger(v2);
      result = CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to alloc ivars->fNoLTEFrameCountersLUT\n", "initLTECoexReporter", 740);
    }
  }

  *v1 = v3;
  return result;
}

{
  result = OUTLINED_FUNCTION_14_1(a1);
  if (result)
  {
    AppleBCMWLANIOReporting::getLogger(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      Logger = AppleBCMWLANIOReporting::getLogger(v2);
      result = CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to allocate IOSimpleReporter\n", "initLTECoexReporter", 723);
    }
  }

  *v1 = v3;
  return result;
}

{
  result = OUTLINED_FUNCTION_14_1(a1);
  if (result)
  {
    AppleBCMWLANIOReporting::getLogger(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      Logger = AppleBCMWLANIOReporting::getLogger(v2);
      result = CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to alloc ivars->fNoLTEFrameCountersLUT\n", "initLTECoexReporter", 703);
    }
  }

  *v1 = v3;
  return result;
}

{
  result = OUTLINED_FUNCTION_14_1(a1);
  if (result)
  {
    AppleBCMWLANIOReporting::getLogger(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      Logger = AppleBCMWLANIOReporting::getLogger(v2);
      result = CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to allocate IOSimpleReporter\n", "initLTECoexReporter", 686);
    }
  }

  *v1 = v3;
  return result;
}

{
  result = OUTLINED_FUNCTION_14_1(a1);
  if (result)
  {
    AppleBCMWLANIOReporting::getLogger(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      Logger = AppleBCMWLANIOReporting::getLogger(v2);
      result = CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to alloc ivars->fNoLTEFrameCountersLUT\n", "initLTECoexReporter", 665);
    }
  }

  *v1 = v3;
  return result;
}

{
  result = OUTLINED_FUNCTION_14_1(a1);
  if (result)
  {
    AppleBCMWLANIOReporting::getLogger(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      Logger = AppleBCMWLANIOReporting::getLogger(v2);
      result = CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to allocate IOSimpleReporter\n", "initLTECoexReporter", 647);
    }
  }

  *v1 = v3;
  return result;
}

{
  Logger = AppleBCMWLANIOReporting::getLogger(a1);
  return CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to alloc AppleBCMWLANUtil::AutoreleasedBuffer\n", "initLTECoexReporter", 641);
}

uint64_t AppleBCMWLANIOReportingPerSlice::reportUcodeCntPerSlice(AppleBCMWLANIOReporting *a1)
{
  if (!AppleBCMWLANIOReporting::getLogger(a1))
  {
    return 1;
  }

  AppleBCMWLANIOReporting::getLogger(a1);
  shouldLog = CCLogStream::shouldLog();
  result = 0;
  if (shouldLog)
  {
    Logger = AppleBCMWLANIOReporting::getLogger(a1);
    CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to initiate Rx error reporter\n", "reportUcodeCntPerSlice", 853);
    return 0;
  }

  return result;
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
      return CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to initiate Tx management reporter\n", "reportUcodeCntPerSlice", 890);
    }
  }

  return result;
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
      return CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to initiate Rx management reporter\n", "reportUcodeCntPerSlice", 906);
    }
  }

  return result;
}

void AppleBCMWLANIOReportingPerSlice::reportUcodeCntPerSlice()
{
  OUTLINED_FUNCTION_4();
  if (AppleBCMWLANIOReporting::getLogger(v1))
  {
    AppleBCMWLANIOReporting::getLogger(v0);
    if (CCLogStream::shouldLog())
    {
      Logger = AppleBCMWLANIOReporting::getLogger(v0);
      CCLogStream::logCrit(Logger, "[dk] %s@%d:Failed to allocate AppleBCMWLANIOReportingPerSlice_IVars\n", "reportUcodeCntPerSlice", 847);
    }
  }

  OUTLINED_FUNCTION_2();
}

void AppleBCMWLANIOReportingPerSlice::reportUcodeCntPerSlice(AppleBCMWLANIOReporting *a1)
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

uint64_t AppleBCMWLANIOReportingPerSlice::reportWlCntPerSlice(AppleBCMWLANIOReporting *a1)
{
  result = OUTLINED_FUNCTION_25_0(a1);
  if (result)
  {
    AppleBCMWLANIOReporting::getLogger(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      AppleBCMWLANIOReporting::getLogger(v2);
      OUTLINED_FUNCTION_66();
      result = CCLogStream::logEmergency(v5, "[dk] %s@%d:Out of range slice index %d\n", v6, v7, v8);
    }
  }

  *v1 = v3;
  return result;
}

uint64_t AppleBCMWLANIOReportingPerSlice::reportWlCntSliceFrameCounters(AppleBCMWLANIOReporting *a1)
{
  result = OUTLINED_FUNCTION_14_1(a1);
  if (result)
  {
    AppleBCMWLANIOReporting::getLogger(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      Logger = AppleBCMWLANIOReporting::getLogger(v2);
      result = CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to initiate Tx management reporter\n", "reportWlCntSliceFrameCounters", 1216);
    }
  }

  *v1 = v3;
  return result;
}

uint64_t AppleBCMWLANIOReportingPerSlice::initWlCntSliceFrameReporter(AppleBCMWLANIOReporting *a1)
{
  result = OUTLINED_FUNCTION_14_1(a1);
  if (result)
  {
    AppleBCMWLANIOReporting::getLogger(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      Logger = AppleBCMWLANIOReporting::getLogger(v2);
      result = CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to initiate Tx management reporter\n", "initWlCntSliceFrameReporter", 1160);
    }
  }

  *v1 = v3;
  return result;
}

{
  result = OUTLINED_FUNCTION_14_1(a1);
  if (result)
  {
    AppleBCMWLANIOReporting::getLogger(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      Logger = AppleBCMWLANIOReporting::getLogger(v2);
      result = CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to initiate Rx management reporter\n", "initWlCntSliceFrameReporter", 1166);
    }
  }

  *v1 = v3;
  return result;
}

{
  Logger = AppleBCMWLANIOReporting::getLogger(a1);
  return CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to alloc AppleBCMWLANUtil::AutoreleasedBuffer\n", "initWlCntSliceFrameReporter", 1154);
}

uint64_t AppleBCMWLANIOReportingPerSlice::initWlCntReporter(AppleBCMWLANIOReporting *a1)
{
  result = OUTLINED_FUNCTION_14_1(a1);
  if (result)
  {
    AppleBCMWLANIOReporting::getLogger(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      Logger = AppleBCMWLANIOReporting::getLogger(v2);
      result = CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to initiate Rx error reporter\n", "initWlCntReporter", 1436);
    }
  }

  *v1 = v3;
  return result;
}

{
  result = OUTLINED_FUNCTION_14_1(a1);
  if (result)
  {
    AppleBCMWLANIOReporting::getLogger(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      Logger = AppleBCMWLANIOReporting::getLogger(v2);
      result = CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to alloc ivars->fSliceCountersWPA2mcastCountersLUT\n", "initWlCntReporter", 1512);
    }
  }

  *v1 = v3;
  return result;
}

{
  result = OUTLINED_FUNCTION_14_1(a1);
  if (result)
  {
    AppleBCMWLANIOReporting::getLogger(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      Logger = AppleBCMWLANIOReporting::getLogger(v2);
      result = CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to alloc ivars->fSliceCountersWPA2mcastCountersLUT\n", "initWlCntReporter", 1480);
    }
  }

  *v1 = v3;
  return result;
}

{
  result = OUTLINED_FUNCTION_14_1(a1);
  if (result)
  {
    AppleBCMWLANIOReporting::getLogger(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      Logger = AppleBCMWLANIOReporting::getLogger(v2);
      result = CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to alloc ivars->fSliceCountersTxErrorCountersLUT\n", "initWlCntReporter", 1450);
    }
  }

  *v1 = v3;
  return result;
}

{
  result = OUTLINED_FUNCTION_14_1(a1);
  if (result)
  {
    AppleBCMWLANIOReporting::getLogger(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      Logger = AppleBCMWLANIOReporting::getLogger(v2);
      result = CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to alloc ivars->fSliceCountersTxErrorCountersLUT\n", "initWlCntReporter", 1419);
    }
  }

  *v1 = v3;
  return result;
}

{
  result = OUTLINED_FUNCTION_14_1(a1);
  if (result)
  {
    AppleBCMWLANIOReporting::getLogger(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      Logger = AppleBCMWLANIOReporting::getLogger(v2);
      result = CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to alloc ivars->fSliceCountersRxCountersLUT\n", "initWlCntReporter", 1377);
    }
  }

  *v1 = v3;
  return result;
}

{
  result = OUTLINED_FUNCTION_14_1(a1);
  if (result)
  {
    AppleBCMWLANIOReporting::getLogger(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      Logger = AppleBCMWLANIOReporting::getLogger(v2);
      result = CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to alloc ivars->fSliceCountersTxCountersLUT\n", "initWlCntReporter", 1349);
    }
  }

  *v1 = v3;
  return result;
}

{
  Logger = AppleBCMWLANIOReporting::getLogger(a1);
  return CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to alloc AppleBCMWLANUtil::AutoreleasedBuffer\n", "initWlCntReporter", 1324);
}

uint64_t AppleBCMWLANIOReportingPerSlice::initHeWlCntReporter(void (*a1)(const char *, ...), uint64_t a2, AppleBCMWLANBssManager *a3, int *a4)
{
  v6 = -536870212;
  if (a1 <= 1)
  {
    v9 = OUTLINED_FUNCTION_58();
    snprintf(v9, v10, v11, "Slice", a1);
    v12 = *(a3 + 7);
    if (!*(v12 + 8 * a1 + 1352))
    {
      CurrentBSS = AppleBCMWLANBssManager::getCurrentBSS(a3);
      ReporterProvider = IO80211Controller::getReporterProvider(CurrentBSS);
      OUTLINED_FUNCTION_29(ReporterProvider, v15, v16, v17);
      OUTLINED_FUNCTION_42_0();
      *(v19 + 1352) = v18;
      OUTLINED_FUNCTION_42_0();
      if (!*(v20 + 1352))
      {
        goto LABEL_14;
      }

      AppleBCMWLANIOReporting::getReporter(a3);
      OUTLINED_FUNCTION_42_0();
      OSSet::setObject(v22, *(v21 + 1352));
      OUTLINED_FUNCTION_42_0();
      v24 = OUTLINED_FUNCTION_5_0(*(v23 + 1352));
      (*(v25 + 16))(v24);
      v26 = &off_1003C6640;
      v27 = 7;
      do
      {
        OUTLINED_FUNCTION_42_0();
        IOReporter::addChannel(*(v28 + 1352), *(v26 - 1) ^ (a1 << 56), *v26);
        v26 += 2;
        --v27;
      }

      while (v27);
      AppleBCMWLANIOReporting::getAddReporterCallback(a3);
      v29 = OUTLINED_FUNCTION_54();
      AppleBCMWLANIOReporting::getTarget(v29);
      v30 = OUTLINED_FUNCTION_57();
      AppleBCMWLANBssManager::getCurrentBSS(v30);
      OUTLINED_FUNCTION_26_0();
      v32 = *(v31 + 1352);
      MEMORY[0](v4);
      v12 = *(a3 + 7);
    }

    if (*(v12 + 8 * a1 + 1368))
    {
      v33 = a1 << 56;
    }

    else
    {
      v34 = AppleBCMWLANBssManager::getCurrentBSS(a3);
      v35 = IO80211Controller::getReporterProvider(v34);
      OUTLINED_FUNCTION_29(v35, v36, v37, v38);
      OUTLINED_FUNCTION_42_0();
      *(v40 + 1368) = v39;
      OUTLINED_FUNCTION_42_0();
      if (!*(v41 + 1368))
      {
        goto LABEL_14;
      }

      v4 = "Slice";
      AppleBCMWLANIOReporting::getReporter(a3);
      OUTLINED_FUNCTION_42_0();
      OSSet::setObject(v43, *(v42 + 1368));
      OUTLINED_FUNCTION_42_0();
      v45 = OUTLINED_FUNCTION_5_0(*(v44 + 1368));
      (*(v46 + 16))(v45);
      v33 = a1 << 56;
      v47 = &off_1003C66B0;
      v48 = 7;
      do
      {
        OUTLINED_FUNCTION_42_0();
        IOReporter::addChannel(*(v49 + 1368), *(v47 - 1) ^ v33, *v47);
        v47 += 2;
        --v48;
      }

      while (v48);
      AppleBCMWLANIOReporting::getAddReporterCallback(a3);
      v50 = OUTLINED_FUNCTION_53();
      AppleBCMWLANIOReporting::getTarget(v50);
      v51 = OUTLINED_FUNCTION_54();
      AppleBCMWLANBssManager::getCurrentBSS(v51);
      OUTLINED_FUNCTION_26_0();
      v53 = *(v52 + 1368);
      v54 = OUTLINED_FUNCTION_56();
      (v47)(v54);
      v12 = *(a3 + 7);
    }

    v55 = *(v12 + 8 * a1 + 312);
    OUTLINED_FUNCTION_69();
    v261 = IOReporter::addChannel(v57, v33 ^ v56, "Tx dynamic Frgamented packets");
    v58 = OUTLINED_FUNCTION_58();
    snprintf(v58, v59, "%s %d", "Slice", a1);
    AppleBCMWLANIOReporting::getRemoveReporterCallback(a3);
    v60 = OUTLINED_FUNCTION_57();
    AppleBCMWLANIOReporting::getTarget(v60);
    OUTLINED_FUNCTION_78();
    v61 = OUTLINED_FUNCTION_11_1();
    (v4)(v61);
    AppleBCMWLANIOReporting::getAddReporterCallback(a3);
    v62 = OUTLINED_FUNCTION_57();
    AppleBCMWLANIOReporting::getTarget(v62);
    OUTLINED_FUNCTION_78();
    OUTLINED_FUNCTION_26_0();
    v64 = *(v63 + 312);
    v65 = OUTLINED_FUNCTION_35();
    (v4)(v65);
    OUTLINED_FUNCTION_42_0();
    v67 = *(v66 + 328);
    OUTLINED_FUNCTION_67();
    v70 = IOReporter::addChannel(v69, v33 ^ v68, "Rx dynamic Frgamented packets");
    OUTLINED_FUNCTION_40(v70, v71, v72, v73, v74, v75, v76, v77, v242, v252);
    AppleBCMWLANIOReporting::getRemoveReporterCallback(a3);
    v78 = OUTLINED_FUNCTION_57();
    AppleBCMWLANIOReporting::getTarget(v78);
    OUTLINED_FUNCTION_78();
    v79 = OUTLINED_FUNCTION_11_1();
    (v4)(v79);
    AppleBCMWLANIOReporting::getAddReporterCallback(a3);
    v80 = OUTLINED_FUNCTION_57();
    AppleBCMWLANIOReporting::getTarget(v80);
    OUTLINED_FUNCTION_78();
    OUTLINED_FUNCTION_26_0();
    v82 = *(v81 + 328);
    v83 = OUTLINED_FUNCTION_35();
    (v4)(v83);
    OUTLINED_FUNCTION_42_0();
    v85 = IOReporter::addChannel(*(v84 + 344), v33 ^ 0x536C436C724D6973, "Color miss Count");
    OUTLINED_FUNCTION_40(v85, v86, v87, v88, v89, v90, v91, v92, v243, v253);
    AppleBCMWLANIOReporting::getRemoveReporterCallback(a3);
    v93 = OUTLINED_FUNCTION_57();
    AppleBCMWLANIOReporting::getTarget(v93);
    OUTLINED_FUNCTION_78();
    v94 = OUTLINED_FUNCTION_11_1();
    (v4)(v94);
    AppleBCMWLANIOReporting::getAddReporterCallback(a3);
    v95 = OUTLINED_FUNCTION_57();
    AppleBCMWLANIOReporting::getTarget(v95);
    OUTLINED_FUNCTION_78();
    OUTLINED_FUNCTION_26_0();
    v97 = *(v96 + 344);
    v98 = OUTLINED_FUNCTION_35();
    (v4)(v98);
    OUTLINED_FUNCTION_42_0();
    v100 = *(v99 + 360);
    OUTLINED_FUNCTION_96();
    v103 = IOReporter::addChannel(v102, v33 ^ v101, "Tx cancelled because CS Req");
    OUTLINED_FUNCTION_40(v103, v104, v105, v106, v107, v108, v109, v110, v244, v254);
    AppleBCMWLANIOReporting::getRemoveReporterCallback(a3);
    v111 = OUTLINED_FUNCTION_57();
    AppleBCMWLANIOReporting::getTarget(v111);
    OUTLINED_FUNCTION_78();
    v112 = OUTLINED_FUNCTION_11_1();
    (v4)(v112);
    AppleBCMWLANIOReporting::getAddReporterCallback(a3);
    v113 = OUTLINED_FUNCTION_57();
    AppleBCMWLANIOReporting::getTarget(v113);
    OUTLINED_FUNCTION_78();
    OUTLINED_FUNCTION_26_0();
    v115 = *(v114 + 360);
    v116 = OUTLINED_FUNCTION_35();
    (v4)(v116);
    OUTLINED_FUNCTION_42_0();
    IOReporter::addChannel(*(v117 + 376), v33 ^ 0x536C5772674E5353, "Wrong NSS");
    OUTLINED_FUNCTION_42_0();
    v119 = IOReporter::addChannel(*(v118 + 376), v33 ^ 0x536C555354726752, "Unsupported Trigger Rate");
    OUTLINED_FUNCTION_40(v119, v120, v121, v122, v123, v124, v125, v126, v245, v255);
    AppleBCMWLANIOReporting::getRemoveReporterCallback(a3);
    v127 = OUTLINED_FUNCTION_57();
    AppleBCMWLANIOReporting::getTarget(v127);
    OUTLINED_FUNCTION_78();
    v128 = OUTLINED_FUNCTION_11_1();
    (v4)(v128);
    AppleBCMWLANIOReporting::getAddReporterCallback(a3);
    v129 = OUTLINED_FUNCTION_57();
    AppleBCMWLANIOReporting::getTarget(v129);
    OUTLINED_FUNCTION_78();
    OUTLINED_FUNCTION_26_0();
    v131 = *(v130 + 376);
    v132 = OUTLINED_FUNCTION_35();
    (v4)(v132);
    OUTLINED_FUNCTION_42_0();
    v134 = *(v133 + 472);
    OUTLINED_FUNCTION_69();
    IOReporter::addChannel(v136, v33 ^ v135, "Tx Trigger frames");
    OUTLINED_FUNCTION_42_0();
    v138 = *(v137 + 472);
    OUTLINED_FUNCTION_69();
    v141 = IOReporter::addChannel(v140, v33 ^ v139, "Tx Multi TID BACK");
    OUTLINED_FUNCTION_40(v141, v142, v143, v144, v145, v146, v147, v148, v246, v256);
    AppleBCMWLANIOReporting::getRemoveReporterCallback(a3);
    v149 = OUTLINED_FUNCTION_57();
    AppleBCMWLANIOReporting::getTarget(v149);
    OUTLINED_FUNCTION_78();
    v150 = OUTLINED_FUNCTION_11_1();
    (v4)(v150);
    AppleBCMWLANIOReporting::getAddReporterCallback(a3);
    v151 = OUTLINED_FUNCTION_57();
    AppleBCMWLANIOReporting::getTarget(v151);
    OUTLINED_FUNCTION_78();
    OUTLINED_FUNCTION_26_0();
    v153 = *(v152 + 472);
    v154 = OUTLINED_FUNCTION_35();
    (v4)(v154);
    OUTLINED_FUNCTION_27_0();
    OUTLINED_FUNCTION_67();
    IOReporter::addChannel(v156, v33 ^ v155, "Rx Multi TID BACK");
    OUTLINED_FUNCTION_27_0();
    OUTLINED_FUNCTION_67();
    IOReporter::addChannel(v158, v33 ^ v157, "Rx Multi STA BACK");
    OUTLINED_FUNCTION_27_0();
    OUTLINED_FUNCTION_67();
    IOReporter::addChannel(v160, v33 ^ v159, "Rx Trigger with My AID");
    OUTLINED_FUNCTION_27_0();
    OUTLINED_FUNCTION_67();
    IOReporter::addChannel(v162, v33 ^ v161, "Rx Trigger with Rand AID");
    OUTLINED_FUNCTION_27_0();
    OUTLINED_FUNCTION_67();
    IOReporter::addChannel(v164, v33 ^ v163, "Rx Trigger Basic");
    v165 = OUTLINED_FUNCTION_27_0();
    IOReporter::addChannel(v165, v33 ^ 0x536C52785472674DLL, "Rx Trigger MU-RTS");
    v166 = OUTLINED_FUNCTION_27_0();
    IOReporter::addChannel(v166, v33 ^ 0x536C527854726742, "Rx Trigger BSRP");
    OUTLINED_FUNCTION_27_0();
    OUTLINED_FUNCTION_96();
    IOReporter::addChannel(v168, v33 ^ v167, "Rx Trigger NFRP");
    OUTLINED_FUNCTION_27_0();
    OUTLINED_FUNCTION_96();
    IOReporter::addChannel(v170, v33 ^ v169, "Rx Trigger BQRP");
    OUTLINED_FUNCTION_27_0();
    OUTLINED_FUNCTION_69();
    IOReporter::addChannel(v172, v33 ^ v171, "Rx Trigger MU BAR");
    OUTLINED_FUNCTION_27_0();
    OUTLINED_FUNCTION_96();
    v175 = IOReporter::addChannel(v174, v33 ^ v173, "Rx Trigger GCR MU BAR");
    OUTLINED_FUNCTION_40(v175, v176, v177, v178, v179, v180, v181, v182, v247, v257);
    AppleBCMWLANIOReporting::getRemoveReporterCallback(a3);
    v183 = OUTLINED_FUNCTION_57();
    AppleBCMWLANIOReporting::getTarget(v183);
    OUTLINED_FUNCTION_78();
    v184 = OUTLINED_FUNCTION_11_1();
    MEMORY[0x536C527854726742](v184);
    AppleBCMWLANIOReporting::getAddReporterCallback(a3);
    v185 = OUTLINED_FUNCTION_57();
    AppleBCMWLANIOReporting::getTarget(v185);
    OUTLINED_FUNCTION_78();
    OUTLINED_FUNCTION_26_0();
    v187 = *(v186 + 488);
    v188 = OUTLINED_FUNCTION_35();
    MEMORY[0x536C527854726742](v188);
    OUTLINED_FUNCTION_39_0();
    OUTLINED_FUNCTION_69();
    IOReporter::addChannel(v190, v33 ^ v189, "Tx TBPPDU");
    OUTLINED_FUNCTION_39_0();
    OUTLINED_FUNCTION_69();
    IOReporter::addChannel(v192, v33 ^ v191, "Tx Null TBPPDU");
    v193 = OUTLINED_FUNCTION_39_0();
    IOReporter::addChannel(v193, v33 ^ 0x536C4D676D745050, "Tx he mgmt TBPPDU");
    v194 = OUTLINED_FUNCTION_39_0();
    IOReporter::addChannel(v194, v33 ^ 0x536C54784D614D50, "Tx Multi TID AMPDU");
    v195 = OUTLINED_FUNCTION_39_0();
    IOReporter::addChannel(v195, v33 ^ 0x536C54784E414D50, "Tx Null AMPDU in Rsp to Basic Trig");
    OUTLINED_FUNCTION_39_0();
    OUTLINED_FUNCTION_69();
    IOReporter::addChannel(v197, v33 ^ v196, "Tx Null AMPDU in Rsp to BSRP");
    OUTLINED_FUNCTION_39_0();
    OUTLINED_FUNCTION_69();
    v200 = IOReporter::addChannel(v199, v33 ^ v198, "Tx Null AMPDU in Rsp to Trig FIFO empty");
    OUTLINED_FUNCTION_40(v200, v201, v202, v203, v204, v205, v206, v207, v248, v258);
    AppleBCMWLANIOReporting::getRemoveReporterCallback(a3);
    v208 = OUTLINED_FUNCTION_57();
    AppleBCMWLANIOReporting::getTarget(v208);
    OUTLINED_FUNCTION_78();
    v209 = OUTLINED_FUNCTION_11_1();
    MEMORY[0x536C54784D614D50](v209);
    AppleBCMWLANIOReporting::getAddReporterCallback(a3);
    v210 = OUTLINED_FUNCTION_57();
    AppleBCMWLANIOReporting::getTarget(v210);
    OUTLINED_FUNCTION_78();
    OUTLINED_FUNCTION_26_0();
    v212 = *(v211 + 504);
    v213 = OUTLINED_FUNCTION_35();
    v6 = v261;
    MEMORY[0x536C54784D614D50](v213);
    OUTLINED_FUNCTION_42_0();
    v215 = *(v214 + 520);
    OUTLINED_FUNCTION_67();
    IOReporter::addChannel(v217, v33 ^ v216, "Rx SU PPDU");
    OUTLINED_FUNCTION_42_0();
    v219 = *(v218 + 520);
    OUTLINED_FUNCTION_67();
    IOReporter::addChannel(v221, v33 ^ v220, "Rx Range Extension SU PPDU");
    OUTLINED_FUNCTION_42_0();
    v223 = *(v222 + 520);
    OUTLINED_FUNCTION_67();
    v226 = IOReporter::addChannel(v225, v33 ^ v224, "Rx MU PPDU");
    OUTLINED_FUNCTION_40(v226, v227, v228, v229, v230, v231, v232, v233, v249, v259);
    AppleBCMWLANIOReporting::getRemoveReporterCallback(a3);
    v234 = OUTLINED_FUNCTION_77();
    AppleBCMWLANIOReporting::getTarget(v234);
    v235 = OUTLINED_FUNCTION_54();
    AppleBCMWLANBssManager::getCurrentBSS(v235);
    a1("%s %d", v250, v260);
    AppleBCMWLANIOReporting::getAddReporterCallback(a3);
    v236 = OUTLINED_FUNCTION_77();
    AppleBCMWLANIOReporting::getTarget(v236);
    v237 = OUTLINED_FUNCTION_54();
    AppleBCMWLANBssManager::getCurrentBSS(v237);
    OUTLINED_FUNCTION_26_0();
    v239 = *(v238 + 520);
    v240 = OUTLINED_FUNCTION_56();
    a1(v240);
  }

LABEL_14:
  *a4 = v6;
  OUTLINED_FUNCTION_58();

  return IOFreeData();
}

uint64_t AppleBCMWLANIOReportingPerSlice::initTVPMReporter(uint64_t a1, AppleBCMWLANBssManager *a2, uint64_t a3, _DWORD *a4)
{
  if (a1 > 1)
  {
    goto LABEL_44;
  }

  v8 = OUTLINED_FUNCTION_58();
  snprintf(v8, v9, v10, "TVPM", a1);
  v11 = *(a2 + 7);
  if (*(v11 + 8 * a1 + 568))
  {
    v12 = 0;
  }

  else
  {
    CurrentBSS = AppleBCMWLANBssManager::getCurrentBSS(a2);
    ReporterProvider = IO80211Controller::getReporterProvider(CurrentBSS);
    OUTLINED_FUNCTION_60(ReporterProvider, v15, v16, v17, v18);
    OUTLINED_FUNCTION_36_0();
    *(v20 + 568) = v19;
    OUTLINED_FUNCTION_36_0();
    if (!*(v21 + 568))
    {
      goto LABEL_44;
    }

    AppleBCMWLANIOReporting::getReporter(a2);
    OUTLINED_FUNCTION_36_0();
    OSSet::setObject(v23, *(v22 + 568));
    OUTLINED_FUNCTION_36_0();
    v25 = OUTLINED_FUNCTION_5_0(*(v24 + 568));
    (*(v26 + 16))(v25);
    OUTLINED_FUNCTION_36_0();
    v28 = *(v27 + 568);
    OUTLINED_FUNCTION_83();
    IOReporter::addChannel(v29, v4, "Tx Duty Cycle");
    do
    {
      OUTLINED_FUNCTION_36_0();
      OUTLINED_FUNCTION_61(*(v30 + 568));
      OUTLINED_FUNCTION_68();
    }

    while (!v31);
    AppleBCMWLANIOReporting::getAddReporterCallback(a2);
    v32 = OUTLINED_FUNCTION_53();
    AppleBCMWLANIOReporting::getTarget(v32);
    v33 = OUTLINED_FUNCTION_54();
    AppleBCMWLANBssManager::getCurrentBSS(v33);
    OUTLINED_FUNCTION_13_2();
    v35 = *(v34 + 568);
    v36 = OUTLINED_FUNCTION_56();
    v12 = v4(v36);
    v11 = *(a2 + 7);
  }

  if (!*(v11 + 8 * a1 + 648))
  {
    v37 = AppleBCMWLANBssManager::getCurrentBSS(a2);
    v38 = IO80211Controller::getReporterProvider(v37);
    OUTLINED_FUNCTION_60(v38, v39, v40, v41, v42);
    OUTLINED_FUNCTION_36_0();
    *(v44 + 648) = v43;
    OUTLINED_FUNCTION_36_0();
    if (!*(v45 + 648))
    {
      goto LABEL_44;
    }

    AppleBCMWLANIOReporting::getReporter(a2);
    OUTLINED_FUNCTION_36_0();
    OSSet::setObject(v47, *(v46 + 648));
    OUTLINED_FUNCTION_36_0();
    v49 = OUTLINED_FUNCTION_5_0(*(v48 + 648));
    (*(v50 + 16))(v49);
    OUTLINED_FUNCTION_36_0();
    v52 = *(v51 + 648);
    OUTLINED_FUNCTION_83();
    IOReporter::addChannel(v53, v4, "PPM");
    do
    {
      OUTLINED_FUNCTION_36_0();
      OUTLINED_FUNCTION_61(*(v54 + 648));
      OUTLINED_FUNCTION_68();
    }

    while (!v31);
    AppleBCMWLANIOReporting::getAddReporterCallback(a2);
    v55 = OUTLINED_FUNCTION_53();
    AppleBCMWLANIOReporting::getTarget(v55);
    v56 = OUTLINED_FUNCTION_54();
    AppleBCMWLANBssManager::getCurrentBSS(v56);
    OUTLINED_FUNCTION_13_2();
    v58 = *(v57 + 648);
    v59 = OUTLINED_FUNCTION_56();
    v12 = v4(v59);
    v11 = *(a2 + 7);
  }

  if (!*(v11 + 8 * a1 + 664))
  {
    v60 = AppleBCMWLANBssManager::getCurrentBSS(a2);
    v61 = IO80211Controller::getReporterProvider(v60);
    OUTLINED_FUNCTION_60(v61, v62, v63, v64, v65);
    OUTLINED_FUNCTION_36_0();
    *(v67 + 664) = v66;
    OUTLINED_FUNCTION_36_0();
    if (!*(v68 + 664))
    {
      goto LABEL_44;
    }

    AppleBCMWLANIOReporting::getReporter(a2);
    OUTLINED_FUNCTION_36_0();
    OSSet::setObject(v70, *(v69 + 664));
    OUTLINED_FUNCTION_36_0();
    v72 = OUTLINED_FUNCTION_5_0(*(v71 + 664));
    (*(v73 + 16))(v72);
    OUTLINED_FUNCTION_36_0();
    v75 = *(v74 + 664);
    OUTLINED_FUNCTION_83();
    IOReporter::addChannel(v76, v4, "CTLM Index");
    do
    {
      OUTLINED_FUNCTION_36_0();
      OUTLINED_FUNCTION_61(*(v77 + 664));
      OUTLINED_FUNCTION_68();
    }

    while (!v31);
    AppleBCMWLANIOReporting::getAddReporterCallback(a2);
    v78 = OUTLINED_FUNCTION_53();
    AppleBCMWLANIOReporting::getTarget(v78);
    v79 = OUTLINED_FUNCTION_54();
    AppleBCMWLANBssManager::getCurrentBSS(v79);
    OUTLINED_FUNCTION_13_2();
    v81 = *(v80 + 664);
    v82 = OUTLINED_FUNCTION_56();
    v12 = v4(v82);
    v11 = *(a2 + 7);
  }

  if (!*(v11 + 8 * a1 + 584))
  {
    v83 = AppleBCMWLANBssManager::getCurrentBSS(a2);
    v84 = IO80211Controller::getReporterProvider(v83);
    OUTLINED_FUNCTION_90(v84, v85, v86, v87, v88);
    OUTLINED_FUNCTION_36_0();
    *(v90 + 584) = v89;
    OUTLINED_FUNCTION_36_0();
    if (!*(v91 + 584))
    {
      goto LABEL_44;
    }

    AppleBCMWLANIOReporting::getReporter(a2);
    OUTLINED_FUNCTION_36_0();
    OSSet::setObject(v93, *(v92 + 584));
    OUTLINED_FUNCTION_36_0();
    v95 = OUTLINED_FUNCTION_5_0(*(v94 + 584));
    (*(v96 + 16))(v95);
    OUTLINED_FUNCTION_36_0();
    v98 = *(v97 + 584);
    OUTLINED_FUNCTION_83();
    IOReporter::addChannel(v99, v4, "Tx Power Backoff");
    for (i = 0; i != 7; ++i)
    {
      OUTLINED_FUNCTION_36_0();
      OUTLINED_FUNCTION_61(*(v101 + 584));
    }

    AppleBCMWLANIOReporting::getAddReporterCallback(a2);
    v102 = OUTLINED_FUNCTION_53();
    AppleBCMWLANIOReporting::getTarget(v102);
    v103 = OUTLINED_FUNCTION_54();
    AppleBCMWLANBssManager::getCurrentBSS(v103);
    OUTLINED_FUNCTION_13_2();
    v105 = *(v104 + 584);
    v106 = OUTLINED_FUNCTION_56();
    v12 = v4(v106);
    v11 = *(a2 + 7);
  }

  if (!*(v11 + 8 * a1 + 600))
  {
    v107 = AppleBCMWLANBssManager::getCurrentBSS(a2);
    v108 = IO80211Controller::getReporterProvider(v107);
    IOStateReporter::with(v108, 0x8010, 3u, 0, v109);
    OUTLINED_FUNCTION_36_0();
    *(v111 + 600) = v110;
    OUTLINED_FUNCTION_36_0();
    if (!*(v112 + 600))
    {
      goto LABEL_44;
    }

    AppleBCMWLANIOReporting::getReporter(a2);
    OUTLINED_FUNCTION_36_0();
    OSSet::setObject(v114, *(v113 + 600));
    OUTLINED_FUNCTION_36_0();
    v116 = OUTLINED_FUNCTION_5_0(*(v115 + 600));
    (*(v117 + 16))(v116);
    OUTLINED_FUNCTION_36_0();
    v119 = *(v118 + 600);
    OUTLINED_FUNCTION_83();
    IOReporter::addChannel(v120, v4, "Active Chains");
    for (j = 0; j != 3; ++j)
    {
      OUTLINED_FUNCTION_36_0();
      OUTLINED_FUNCTION_61(*(v122 + 600));
    }

    AppleBCMWLANIOReporting::getAddReporterCallback(a2);
    v123 = OUTLINED_FUNCTION_53();
    AppleBCMWLANIOReporting::getTarget(v123);
    v124 = OUTLINED_FUNCTION_54();
    AppleBCMWLANBssManager::getCurrentBSS(v124);
    OUTLINED_FUNCTION_13_2();
    v126 = *(v125 + 600);
    v127 = OUTLINED_FUNCTION_56();
    v12 = v4(v127);
    v11 = *(a2 + 7);
  }

  if (*(v11 + 8 * a1 + 616))
  {
    goto LABEL_36;
  }

  v128 = AppleBCMWLANBssManager::getCurrentBSS(a2);
  v129 = IO80211Controller::getReporterProvider(v128);
  OUTLINED_FUNCTION_90(v129, v130, v131, v132, v133);
  OUTLINED_FUNCTION_36_0();
  *(v135 + 616) = v134;
  OUTLINED_FUNCTION_36_0();
  if (!*(v136 + 616))
  {
LABEL_44:
    v12 = OUTLINED_FUNCTION_97();
    goto LABEL_41;
  }

  AppleBCMWLANIOReporting::getReporter(a2);
  OUTLINED_FUNCTION_36_0();
  OSSet::setObject(v138, *(v137 + 616));
  OUTLINED_FUNCTION_36_0();
  v140 = OUTLINED_FUNCTION_5_0(*(v139 + 616));
  (*(v141 + 16))(v140);
  OUTLINED_FUNCTION_36_0();
  v143 = *(v142 + 616);
  OUTLINED_FUNCTION_83();
  IOReporter::addChannel(v144, v4, "Temperature");
  for (k = 0; k != 7; ++k)
  {
    OUTLINED_FUNCTION_36_0();
    OUTLINED_FUNCTION_61(*(v146 + 616));
  }

  AppleBCMWLANIOReporting::getAddReporterCallback(a2);
  v147 = OUTLINED_FUNCTION_53();
  AppleBCMWLANIOReporting::getTarget(v147);
  v148 = OUTLINED_FUNCTION_54();
  AppleBCMWLANBssManager::getCurrentBSS(v148);
  OUTLINED_FUNCTION_13_2();
  v150 = *(v149 + 616);
  v151 = OUTLINED_FUNCTION_56();
  v12 = v4(v151);
  v11 = *(a2 + 7);
LABEL_36:
  if (!*(v11 + 8 * a1 + 632))
  {
    v152 = AppleBCMWLANBssManager::getCurrentBSS(a2);
    v153 = IO80211Controller::getReporterProvider(v152);
    IOStateReporter::with(v153, 0x8010, 3u, 0, v154);
    OUTLINED_FUNCTION_36_0();
    *(v156 + 632) = v155;
    OUTLINED_FUNCTION_36_0();
    v158 = *(v157 + 632);
    v12 = OUTLINED_FUNCTION_97();
    if (v159)
    {
      AppleBCMWLANIOReporting::getReporter(a2);
      OUTLINED_FUNCTION_36_0();
      OSSet::setObject(v161, *(v160 + 632));
      OUTLINED_FUNCTION_36_0();
      v163 = OUTLINED_FUNCTION_5_0(*(v162 + 632));
      (*(v164 + 16))(v163);
      OUTLINED_FUNCTION_36_0();
      v166 = ((a1 << 56) ^ 0x4D20204261747473);
      IOReporter::addChannel(*(v165 + 632), v166, "Battery Voltage");
      for (m = 0; m != 3; ++m)
      {
        OUTLINED_FUNCTION_36_0();
        IOStateReporter::setStateID(*(v168 + 632), v166, m, kVoltageStates[m]);
      }

      AppleBCMWLANIOReporting::getAddReporterCallback(a2);
      v169 = OUTLINED_FUNCTION_77();
      AppleBCMWLANIOReporting::getTarget(v169);
      v170 = OUTLINED_FUNCTION_53();
      AppleBCMWLANBssManager::getCurrentBSS(v170);
      OUTLINED_FUNCTION_13_2();
      v172 = *(v171 + 632);
      v12 = v166(3);
    }
  }

LABEL_41:
  *a4 = v12;
  OUTLINED_FUNCTION_58();

  return IOFreeData();
}

uint64_t AppleBCMWLANIOReportingPerSlice::initDynSARReporter(uint64_t a1, AppleBCMWLANBssManager *a2, uint64_t a3, _DWORD *a4)
{
  if (a1 > 1)
  {
    goto LABEL_63;
  }

  v7 = OUTLINED_FUNCTION_58();
  snprintf(v7, v8, v9, "DSA", a1);
  v10 = *(a2 + 7);
  if (*(v10 + 8 * a1 + 696))
  {
    v11 = 0;
  }

  else
  {
    CurrentBSS = AppleBCMWLANBssManager::getCurrentBSS(a2);
    ReporterProvider = IO80211Controller::getReporterProvider(CurrentBSS);
    IOStateReporter::with(ReporterProvider, 0x8010, 5u, 0, v14);
    OUTLINED_FUNCTION_36_0();
    *(v16 + 696) = v15;
    OUTLINED_FUNCTION_36_0();
    if (!*(v17 + 696))
    {
      goto LABEL_63;
    }

    AppleBCMWLANIOReporting::getReporter(a2);
    OUTLINED_FUNCTION_36_0();
    OSSet::setObject(v19, *(v18 + 696));
    OUTLINED_FUNCTION_36_0();
    v21 = OUTLINED_FUNCTION_5_0(*(v20 + 696));
    (*(v22 + 16))(v21);
    OUTLINED_FUNCTION_36_0();
    IOReporter::addChannel(*(v23 + 696), (a1 << 56) ^ 0x4453537461747573, "DSA Status");
    for (i = 0; i != 5; ++i)
    {
      OUTLINED_FUNCTION_36_0();
      OUTLINED_FUNCTION_61(*(v25 + 696));
    }

    AppleBCMWLANIOReporting::getAddReporterCallback(a2);
    v26 = OUTLINED_FUNCTION_53();
    AppleBCMWLANIOReporting::getTarget(v26);
    v27 = OUTLINED_FUNCTION_54();
    AppleBCMWLANBssManager::getCurrentBSS(v27);
    OUTLINED_FUNCTION_13_2();
    v29 = *(v28 + 696);
    v30 = OUTLINED_FUNCTION_56();
    v11 = (((a1 << 56) ^ 0x4453537461747573))(v30);
    v10 = *(a2 + 7);
  }

  if (!*(v10 + 8 * a1 + 712))
  {
    v31 = AppleBCMWLANBssManager::getCurrentBSS(a2);
    v32 = IO80211Controller::getReporterProvider(v31);
    OUTLINED_FUNCTION_90(v32, v33, v34, v35, v36);
    OUTLINED_FUNCTION_36_0();
    *(v38 + 712) = v37;
    OUTLINED_FUNCTION_36_0();
    if (!*(v39 + 712))
    {
      goto LABEL_63;
    }

    AppleBCMWLANIOReporting::getReporter(a2);
    OUTLINED_FUNCTION_36_0();
    OSSet::setObject(v41, *(v40 + 712));
    OUTLINED_FUNCTION_36_0();
    v43 = OUTLINED_FUNCTION_5_0(*(v42 + 712));
    (*(v44 + 16))(v43);
    OUTLINED_FUNCTION_36_0();
    IOReporter::addChannel(*(v45 + 712), (a1 << 56) ^ 0x4453507772427374, "DSA Power Boost (dB)");
    for (j = 0; j != 7; ++j)
    {
      OUTLINED_FUNCTION_36_0();
      OUTLINED_FUNCTION_61(*(v47 + 712));
    }

    AppleBCMWLANIOReporting::getAddReporterCallback(a2);
    v48 = OUTLINED_FUNCTION_53();
    AppleBCMWLANIOReporting::getTarget(v48);
    v49 = OUTLINED_FUNCTION_54();
    AppleBCMWLANBssManager::getCurrentBSS(v49);
    OUTLINED_FUNCTION_13_2();
    v51 = *(v50 + 712);
    v52 = OUTLINED_FUNCTION_56();
    v11 = (((a1 << 56) ^ 0x4453507772427374))(v52);
    v10 = *(a2 + 7);
  }

  if (!*(v10 + 8 * a1 + 728))
  {
    v53 = AppleBCMWLANBssManager::getCurrentBSS(a2);
    v54 = IO80211Controller::getReporterProvider(v53);
    OUTLINED_FUNCTION_60(v54, v55, v56, v57, v58);
    OUTLINED_FUNCTION_36_0();
    *(v60 + 728) = v59;
    OUTLINED_FUNCTION_36_0();
    if (!*(v61 + 728))
    {
      goto LABEL_63;
    }

    AppleBCMWLANIOReporting::getReporter(a2);
    OUTLINED_FUNCTION_36_0();
    OSSet::setObject(v63, *(v62 + 728));
    OUTLINED_FUNCTION_36_0();
    v65 = OUTLINED_FUNCTION_5_0(*(v64 + 728));
    (*(v66 + 16))(v65);
    OUTLINED_FUNCTION_36_0();
    IOReporter::addChannel(*(v67 + 728), (a1 << 56) ^ 0x44535444416E7430, "DSA TxDC Ant 0 (%)");
    do
    {
      OUTLINED_FUNCTION_36_0();
      OUTLINED_FUNCTION_79(*(v68 + 728), v69, v70, 0x3130302D39302520uLL);
      OUTLINED_FUNCTION_68();
    }

    while (!v71);
    AppleBCMWLANIOReporting::getAddReporterCallback(a2);
    v72 = OUTLINED_FUNCTION_53();
    AppleBCMWLANIOReporting::getTarget(v72);
    v73 = OUTLINED_FUNCTION_54();
    AppleBCMWLANBssManager::getCurrentBSS(v73);
    OUTLINED_FUNCTION_13_2();
    v75 = *(v74 + 728);
    v76 = OUTLINED_FUNCTION_56();
    v11 = (((a1 << 56) ^ 0x44535444416E7430))(v76);
    v10 = *(a2 + 7);
  }

  if (!*(v10 + 8 * a1 + 744))
  {
    v77 = AppleBCMWLANBssManager::getCurrentBSS(a2);
    v78 = IO80211Controller::getReporterProvider(v77);
    OUTLINED_FUNCTION_60(v78, v79, v80, v81, v82);
    OUTLINED_FUNCTION_36_0();
    *(v84 + 744) = v83;
    OUTLINED_FUNCTION_36_0();
    if (!*(v85 + 744))
    {
      goto LABEL_63;
    }

    AppleBCMWLANIOReporting::getReporter(a2);
    OUTLINED_FUNCTION_36_0();
    OSSet::setObject(v87, *(v86 + 744));
    OUTLINED_FUNCTION_36_0();
    v89 = OUTLINED_FUNCTION_5_0(*(v88 + 744));
    (*(v90 + 16))(v89);
    OUTLINED_FUNCTION_36_0();
    v92 = *(v91 + 744);
    OUTLINED_FUNCTION_63();
    v95 = (v94 ^ (v93 << 56));
    IOReporter::addChannel(v96, v95, "DSA Util Ant 0 (%)");
    do
    {
      OUTLINED_FUNCTION_36_0();
      OUTLINED_FUNCTION_61(*(v97 + 744));
      OUTLINED_FUNCTION_68();
    }

    while (!v71);
    AppleBCMWLANIOReporting::getAddReporterCallback(a2);
    v98 = OUTLINED_FUNCTION_53();
    AppleBCMWLANIOReporting::getTarget(v98);
    v99 = OUTLINED_FUNCTION_54();
    AppleBCMWLANBssManager::getCurrentBSS(v99);
    OUTLINED_FUNCTION_13_2();
    v101 = *(v100 + 744);
    v102 = OUTLINED_FUNCTION_56();
    v11 = v95(v102);
    v10 = *(a2 + 7);
  }

  if (!*(v10 + 8 * a1 + 760))
  {
    v103 = AppleBCMWLANBssManager::getCurrentBSS(a2);
    v104 = IO80211Controller::getReporterProvider(v103);
    OUTLINED_FUNCTION_60(v104, v105, v106, v107, v108);
    OUTLINED_FUNCTION_36_0();
    *(v110 + 760) = v109;
    OUTLINED_FUNCTION_36_0();
    if (!*(v111 + 760))
    {
      goto LABEL_63;
    }

    AppleBCMWLANIOReporting::getReporter(a2);
    OUTLINED_FUNCTION_36_0();
    OSSet::setObject(v113, *(v112 + 760));
    OUTLINED_FUNCTION_36_0();
    v115 = OUTLINED_FUNCTION_5_0(*(v114 + 760));
    (*(v116 + 16))(v115);
    OUTLINED_FUNCTION_36_0();
    IOReporter::addChannel(*(v117 + 760), (a1 << 56) ^ 0x44535444416E7431, "DSA TxDC Ant 1 (%)");
    do
    {
      OUTLINED_FUNCTION_36_0();
      OUTLINED_FUNCTION_79(*(v118 + 760), v119, v120, 0x3130302D39302520uLL);
      OUTLINED_FUNCTION_68();
    }

    while (!v71);
    AppleBCMWLANIOReporting::getAddReporterCallback(a2);
    v121 = OUTLINED_FUNCTION_53();
    AppleBCMWLANIOReporting::getTarget(v121);
    v122 = OUTLINED_FUNCTION_54();
    AppleBCMWLANBssManager::getCurrentBSS(v122);
    OUTLINED_FUNCTION_13_2();
    v124 = *(v123 + 760);
    v125 = OUTLINED_FUNCTION_56();
    v11 = (((a1 << 56) ^ 0x44535444416E7431))(v125);
    v10 = *(a2 + 7);
  }

  if (!*(v10 + 8 * a1 + 776))
  {
    v126 = AppleBCMWLANBssManager::getCurrentBSS(a2);
    v127 = IO80211Controller::getReporterProvider(v126);
    OUTLINED_FUNCTION_60(v127, v128, v129, v130, v131);
    OUTLINED_FUNCTION_36_0();
    *(v133 + 776) = v132;
    OUTLINED_FUNCTION_36_0();
    if (!*(v134 + 776))
    {
      goto LABEL_63;
    }

    AppleBCMWLANIOReporting::getReporter(a2);
    OUTLINED_FUNCTION_36_0();
    OSSet::setObject(v136, *(v135 + 776));
    OUTLINED_FUNCTION_36_0();
    v138 = OUTLINED_FUNCTION_5_0(*(v137 + 776));
    (*(v139 + 16))(v138);
    OUTLINED_FUNCTION_36_0();
    v141 = *(v140 + 776);
    OUTLINED_FUNCTION_63();
    v144 = ((v142 + 1) ^ (v143 << 56));
    IOReporter::addChannel(v145, v144, "DSA Util Ant 1 (%)");
    do
    {
      OUTLINED_FUNCTION_36_0();
      OUTLINED_FUNCTION_61(*(v146 + 776));
      OUTLINED_FUNCTION_68();
    }

    while (!v71);
    AppleBCMWLANIOReporting::getAddReporterCallback(a2);
    v147 = OUTLINED_FUNCTION_53();
    AppleBCMWLANIOReporting::getTarget(v147);
    v148 = OUTLINED_FUNCTION_54();
    AppleBCMWLANBssManager::getCurrentBSS(v148);
    OUTLINED_FUNCTION_13_2();
    v150 = *(v149 + 776);
    v151 = OUTLINED_FUNCTION_56();
    v11 = v144(v151);
    v10 = *(a2 + 7);
  }

  if (!*(v10 + 8 * a1 + 792))
  {
    v152 = AppleBCMWLANBssManager::getCurrentBSS(a2);
    v153 = IO80211Controller::getReporterProvider(v152);
    OUTLINED_FUNCTION_60(v153, v154, v155, v156, v157);
    OUTLINED_FUNCTION_36_0();
    *(v159 + 792) = v158;
    OUTLINED_FUNCTION_36_0();
    if (!*(v160 + 792))
    {
      goto LABEL_63;
    }

    AppleBCMWLANIOReporting::getReporter(a2);
    OUTLINED_FUNCTION_36_0();
    OSSet::setObject(v162, *(v161 + 792));
    OUTLINED_FUNCTION_36_0();
    v164 = OUTLINED_FUNCTION_5_0(*(v163 + 792));
    (*(v165 + 16))(v164);
    OUTLINED_FUNCTION_36_0();
    IOReporter::addChannel(*(v166 + 792), (a1 << 56) ^ 0x44535444416E7432, "DSA TxDC Ant 2 (%)");
    do
    {
      OUTLINED_FUNCTION_36_0();
      OUTLINED_FUNCTION_79(*(v167 + 792), v168, v169, 0x3130302D39302520uLL);
      OUTLINED_FUNCTION_68();
    }

    while (!v71);
    AppleBCMWLANIOReporting::getAddReporterCallback(a2);
    v170 = OUTLINED_FUNCTION_53();
    AppleBCMWLANIOReporting::getTarget(v170);
    v171 = OUTLINED_FUNCTION_54();
    AppleBCMWLANBssManager::getCurrentBSS(v171);
    OUTLINED_FUNCTION_13_2();
    v173 = *(v172 + 792);
    v174 = OUTLINED_FUNCTION_56();
    v11 = (((a1 << 56) ^ 0x44535444416E7432))(v174);
    v10 = *(a2 + 7);
  }

  if (!*(v10 + 8 * a1 + 808))
  {
    v175 = AppleBCMWLANBssManager::getCurrentBSS(a2);
    v176 = IO80211Controller::getReporterProvider(v175);
    OUTLINED_FUNCTION_60(v176, v177, v178, v179, v180);
    OUTLINED_FUNCTION_36_0();
    *(v182 + 808) = v181;
    OUTLINED_FUNCTION_36_0();
    if (!*(v183 + 808))
    {
      goto LABEL_63;
    }

    AppleBCMWLANIOReporting::getReporter(a2);
    OUTLINED_FUNCTION_36_0();
    OSSet::setObject(v185, *(v184 + 808));
    OUTLINED_FUNCTION_36_0();
    v187 = OUTLINED_FUNCTION_5_0(*(v186 + 808));
    (*(v188 + 16))(v187);
    OUTLINED_FUNCTION_36_0();
    v190 = *(v189 + 808);
    OUTLINED_FUNCTION_63();
    v193 = ((v191 + 2) ^ (v192 << 56));
    IOReporter::addChannel(v194, v193, "DSA Util Ant 2 (%)");
    do
    {
      OUTLINED_FUNCTION_36_0();
      OUTLINED_FUNCTION_61(*(v195 + 808));
      OUTLINED_FUNCTION_68();
    }

    while (!v71);
    AppleBCMWLANIOReporting::getAddReporterCallback(a2);
    v196 = OUTLINED_FUNCTION_53();
    AppleBCMWLANIOReporting::getTarget(v196);
    v197 = OUTLINED_FUNCTION_54();
    AppleBCMWLANBssManager::getCurrentBSS(v197);
    OUTLINED_FUNCTION_13_2();
    v199 = *(v198 + 808);
    v200 = OUTLINED_FUNCTION_56();
    v11 = v193(v200);
    v10 = *(a2 + 7);
  }

  if (*(v10 + 8 * a1 + 824))
  {
    goto LABEL_55;
  }

  v201 = AppleBCMWLANBssManager::getCurrentBSS(a2);
  v202 = IO80211Controller::getReporterProvider(v201);
  OUTLINED_FUNCTION_60(v202, v203, v204, v205, v206);
  OUTLINED_FUNCTION_36_0();
  *(v208 + 824) = v207;
  OUTLINED_FUNCTION_36_0();
  if (!*(v209 + 824))
  {
LABEL_63:
    v11 = OUTLINED_FUNCTION_97();
    goto LABEL_60;
  }

  AppleBCMWLANIOReporting::getReporter(a2);
  OUTLINED_FUNCTION_36_0();
  OSSet::setObject(v211, *(v210 + 824));
  OUTLINED_FUNCTION_36_0();
  v213 = OUTLINED_FUNCTION_5_0(*(v212 + 824));
  (*(v214 + 16))(v213);
  OUTLINED_FUNCTION_36_0();
  IOReporter::addChannel(*(v215 + 824), (a1 << 56) ^ 0x44535444416E7433, "DSA TxDC Ant 3 (%)");
  do
  {
    OUTLINED_FUNCTION_36_0();
    OUTLINED_FUNCTION_79(*(v216 + 824), v217, v218, 0x3130302D39302520uLL);
    OUTLINED_FUNCTION_68();
  }

  while (!v71);
  AppleBCMWLANIOReporting::getAddReporterCallback(a2);
  v219 = OUTLINED_FUNCTION_53();
  AppleBCMWLANIOReporting::getTarget(v219);
  v220 = OUTLINED_FUNCTION_54();
  AppleBCMWLANBssManager::getCurrentBSS(v220);
  OUTLINED_FUNCTION_13_2();
  v222 = *(v221 + 824);
  v223 = OUTLINED_FUNCTION_56();
  v11 = (((a1 << 56) ^ 0x44535444416E7433))(v223);
  v10 = *(a2 + 7);
LABEL_55:
  if (!*(v10 + 8 * a1 + 840))
  {
    v224 = AppleBCMWLANBssManager::getCurrentBSS(a2);
    v225 = IO80211Controller::getReporterProvider(v224);
    OUTLINED_FUNCTION_60(v225, v226, v227, v228, v229);
    OUTLINED_FUNCTION_36_0();
    *(v231 + 840) = v230;
    OUTLINED_FUNCTION_36_0();
    v233 = *(v232 + 840);
    v11 = OUTLINED_FUNCTION_97();
    if (v234)
    {
      AppleBCMWLANIOReporting::getReporter(a2);
      OUTLINED_FUNCTION_36_0();
      OSSet::setObject(v236, *(v235 + 840));
      OUTLINED_FUNCTION_36_0();
      v238 = OUTLINED_FUNCTION_5_0(*(v237 + 840));
      (*(v239 + 16))(v238);
      OUTLINED_FUNCTION_36_0();
      v241 = ((a1 << 56) ^ 0x44535574416E7433);
      IOReporter::addChannel(*(v240 + 840), v241, "DSA Util Ant 3 (%)");
      for (k = 0; k != 10; ++k)
      {
        OUTLINED_FUNCTION_36_0();
        IOStateReporter::setStateID(*(v243 + 840), v241, k, *&kDsaUtilPercStates[8 * k]);
      }

      AppleBCMWLANIOReporting::getAddReporterCallback(a2);
      v244 = OUTLINED_FUNCTION_77();
      AppleBCMWLANIOReporting::getTarget(v244);
      v245 = OUTLINED_FUNCTION_53();
      AppleBCMWLANBssManager::getCurrentBSS(v245);
      OUTLINED_FUNCTION_13_2();
      v247 = *(v246 + 840);
      v11 = v241(10);
    }
  }

LABEL_60:
  *a4 = v11;
  OUTLINED_FUNCTION_58();

  return IOFreeData();
}

void AppleBCMWLANIOReportingPerSlice::reportScanPwrStats(AppleBCMWLANIOReporting *a1)
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

uint64_t AppleBCMWLANIOReportingPerSlice::reportScanPwrStats(AppleBCMWLANIOReporting *a1, int a2)
{
  result = AppleBCMWLANIOReporting::getLogger(a1);
  if (result)
  {
    AppleBCMWLANIOReporting::getLogger(a1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      Logger = AppleBCMWLANIOReporting::getLogger(a1);
      return CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to initPwrScanStatsReporter slice %d\n", "reportScanPwrStats", 2281, a2);
    }
  }

  return result;
}

uint64_t AppleBCMWLANIOReportingPerSlice::reportScanPwrStats(AppleBCMWLANIOReporting *a1)
{
  if (!AppleBCMWLANIOReporting::getLogger(a1) || (AppleBCMWLANIOReporting::getLogger(a1), (CCLogStream::shouldLogConsole() & 1) == 0))
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      OUTLINED_FUNCTION_73();
      OUTLINED_FUNCTION_87();
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%c [dk] %s@%d: Insufficient buf sized scan_stats_data %ld to hold payload", buf, 0x22u);
    }
  }

  result = AppleBCMWLANIOReporting::getLogger(a1);
  if (result)
  {
    AppleBCMWLANIOReporting::getLogger(a1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      Logger = AppleBCMWLANIOReporting::getLogger(a1);
      return CCLogStream::logAlert(Logger, "[dk] %s@%d:Insufficient buf sized scan_stats_data %ld to hold payload", "reportScanPwrStats", 2275, 148);
    }
  }

  return result;
}

{
  if (!AppleBCMWLANIOReporting::getLogger(a1) || (AppleBCMWLANIOReporting::getLogger(a1), (CCLogStream::shouldLogConsole() & 1) == 0))
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      OUTLINED_FUNCTION_72();
      v5 = 2274;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%c [dk] %s@%d: Received NULL pointer\n", buf, 0x18u);
    }
  }

  result = AppleBCMWLANIOReporting::getLogger(a1);
  if (result)
  {
    AppleBCMWLANIOReporting::getLogger(a1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      Logger = AppleBCMWLANIOReporting::getLogger(a1);
      return CCLogStream::logAlert(Logger, "[dk] %s@%d:Received NULL pointer\n", "reportScanPwrStats", 2274);
    }
  }

  return result;
}

{
  Logger = AppleBCMWLANIOReporting::getLogger(a1);
  return CCLogStream::logAlert(Logger, "[dk] %s@%d:Failed to allocate scan_stats_data buf", "reportScanPwrStats", 2271);
}

uint64_t AppleBCMWLANIOReportingPerSlice::initPwrScanStat6EReporter(AppleBCMWLANIOReporting *a1)
{
  result = OUTLINED_FUNCTION_25_0(a1);
  if (result)
  {
    AppleBCMWLANIOReporting::getLogger(v3);
    result = CCLogStream::shouldLog();
    if (result)
    {
      Logger = AppleBCMWLANIOReporting::getLogger(v3);
      result = CCLogStream::logEmergency(Logger, "[dk] %s@%d:%s:%d:Out of range slice index %d\n", "initPwrScanStat6EReporter", 2341, "initPwrScanStat6EReporter", 2341, v2);
    }
  }

  *v1 = v4;
  return result;
}

{
  result = OUTLINED_FUNCTION_14_1(a1);
  if (result)
  {
    AppleBCMWLANIOReporting::getLogger(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      Logger = AppleBCMWLANIOReporting::getLogger(v2);
      result = CCLogStream::logEmergency(Logger, "[dk] %s@%d:Incorrect length written by snprintf\n", "initPwrScanStat6EReporter", 2345);
    }
  }

  *v1 = v3;
  return result;
}

{
  Logger = AppleBCMWLANIOReporting::getLogger(a1);
  return CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to alloc AppleBCMWLANUtil::AutoreleasedBuffer\n", "initPwrScanStat6EReporter", 2339);
}

uint64_t AppleBCMWLANIOReportingPerSlice::reportScanPwrStats6E(AppleBCMWLANIOReporting *a1)
{
  result = OUTLINED_FUNCTION_25_0(a1);
  if (result)
  {
    AppleBCMWLANIOReporting::getLogger(v3);
    result = CCLogStream::shouldLog();
    if (result)
    {
      Logger = AppleBCMWLANIOReporting::getLogger(v3);
      result = CCLogStream::logEmergency(Logger, "[dk] %s@%d:%s:%d:Out of range slice index %d\n", "reportScanPwrStats6E", 2364, "reportScanPwrStats6E", 2364, v2);
    }
  }

  *v1 = v4;
  return result;
}

{
  result = OUTLINED_FUNCTION_25_0(a1);
  if (result)
  {
    AppleBCMWLANIOReporting::getLogger(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      AppleBCMWLANIOReporting::getLogger(v2);
      OUTLINED_FUNCTION_66();
      result = CCLogStream::logEmergency(v5, "[dk] %s@%d:Failed to initPwrScanStatsReporter slice %d\n", v6, v7, v8);
    }
  }

  *v1 = v3;
  return result;
}

uint64_t AppleBCMWLANIOReportingPerSlice::reportScanPwrStats6E(AppleBCMWLANIOReporting *a1, uint64_t a2, _DWORD *a3)
{
  OUTLINED_FUNCTION_59();
  result = AppleBCMWLANIOReporting::getLogger(v6);
  if (result)
  {
    AppleBCMWLANIOReporting::getLogger(a1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      AppleBCMWLANIOReporting::getLogger(a1);
      v8 = OUTLINED_FUNCTION_86();
      Length = OSData::getLength(v8);
      result = CCLogStream::logEmergency(a1, "[dk] %s@%d:sizeof(wl_pwr_scan_6E_stats_t) %lu cnt->getLength() %lu\n", "reportScanPwrStats6E", 2366, 24, Length);
    }
  }

  *a3 = v3;
  return result;
}

void AppleBCMWLANIOReportingPerSlice::reportScanPwrStatsAtLinkUp(AppleBCMWLANIOReporting *a1)
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

uint64_t AppleBCMWLANIOReportingPerSlice::reportScanPwrStatsAtLinkUp(AppleBCMWLANIOReporting *a1, int a2)
{
  result = AppleBCMWLANIOReporting::getLogger(a1);
  if (result)
  {
    AppleBCMWLANIOReporting::getLogger(a1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      Logger = AppleBCMWLANIOReporting::getLogger(a1);
      return CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to initPwrScanStatsAtLinkUpReporter slice %d\n", "reportScanPwrStatsAtLinkUp", 2444, a2);
    }
  }

  return result;
}

uint64_t AppleBCMWLANIOReportingPerSlice::reportScanPwrStatsAtLinkUp(AppleBCMWLANIOReporting *a1)
{
  if (!AppleBCMWLANIOReporting::getLogger(a1) || (AppleBCMWLANIOReporting::getLogger(a1), (CCLogStream::shouldLogConsole() & 1) == 0))
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      OUTLINED_FUNCTION_73();
      OUTLINED_FUNCTION_87();
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%c [dk] %s@%d: Insufficient buf sized scan_stats_data %ld to hold payload", buf, 0x22u);
    }
  }

  result = AppleBCMWLANIOReporting::getLogger(a1);
  if (result)
  {
    AppleBCMWLANIOReporting::getLogger(a1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      Logger = AppleBCMWLANIOReporting::getLogger(a1);
      return CCLogStream::logAlert(Logger, "[dk] %s@%d:Insufficient buf sized scan_stats_data %ld to hold payload", "reportScanPwrStatsAtLinkUp", 2438, 148);
    }
  }

  return result;
}

{
  if (!AppleBCMWLANIOReporting::getLogger(a1) || (AppleBCMWLANIOReporting::getLogger(a1), (CCLogStream::shouldLogConsole() & 1) == 0))
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      OUTLINED_FUNCTION_72();
      v5 = 2437;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%c [dk] %s@%d: Received NULL pointer\n", buf, 0x18u);
    }
  }

  result = AppleBCMWLANIOReporting::getLogger(a1);
  if (result)
  {
    AppleBCMWLANIOReporting::getLogger(a1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      Logger = AppleBCMWLANIOReporting::getLogger(a1);
      return CCLogStream::logAlert(Logger, "[dk] %s@%d:Received NULL pointer\n", "reportScanPwrStatsAtLinkUp", 2437);
    }
  }

  return result;
}

{
  Logger = AppleBCMWLANIOReporting::getLogger(a1);
  return CCLogStream::logAlert(Logger, "[dk] %s@%d:Failed to allocate scan_stats_data buf", "reportScanPwrStatsAtLinkUp", 2434);
}

uint64_t AppleBCMWLANIOReportingPerSlice::reportScanPwrStatsSinceLinkUp(AppleBCMWLANIOReporting *a1)
{
  result = OUTLINED_FUNCTION_25_0(a1);
  if (result)
  {
    AppleBCMWLANIOReporting::getLogger(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      AppleBCMWLANIOReporting::getLogger(v2);
      OUTLINED_FUNCTION_66();
      result = CCLogStream::logEmergency(v5, "[dk] %s@%d:Out of range slice index %d\n", v6, v7, v8);
    }
  }

  *v1 = v3;
  return result;
}

{
  result = OUTLINED_FUNCTION_25_0(a1);
  if (result)
  {
    AppleBCMWLANIOReporting::getLogger(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      AppleBCMWLANIOReporting::getLogger(v2);
      OUTLINED_FUNCTION_66();
      result = CCLogStream::logEmergency(v5, "[dk] %s@%d:Failed to initPwrScanStatsSinceLinkUpReporter slice %d\n", v6, v7, v8);
    }
  }

  *v1 = v3;
  return result;
}

uint64_t AppleBCMWLANIOReportingPerSlice::reportScanModeStatsSinceLinkUp(AppleBCMWLANIOReporting *a1)
{
  result = OUTLINED_FUNCTION_25_0(a1);
  if (result)
  {
    AppleBCMWLANIOReporting::getLogger(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      AppleBCMWLANIOReporting::getLogger(v2);
      OUTLINED_FUNCTION_66();
      result = CCLogStream::logEmergency(v5, "[dk] %s@%d:Out of range slice index %d\n", v6, v7, v8);
    }
  }

  *v1 = v3;
  return result;
}

{
  result = OUTLINED_FUNCTION_14_1(a1);
  if (result)
  {
    AppleBCMWLANIOReporting::getLogger(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      Logger = AppleBCMWLANIOReporting::getLogger(v2);
      result = CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to initScanModeSinceLinkUpReporter slice %d\n", "reportScanModeStatsSinceLinkUp", 2634, 0);
    }
  }

  *v1 = v3;
  return result;
}

{
  result = OUTLINED_FUNCTION_14_1(a1);
  if (result)
  {
    AppleBCMWLANIOReporting::getLogger(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      Logger = AppleBCMWLANIOReporting::getLogger(v2);
      result = CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to initScanModeSinceLinkUpReporter slice %d\n", "reportScanModeStatsSinceLinkUp", 2639, 1);
    }
  }

  *v1 = v3;
  return result;
}

{
  result = OUTLINED_FUNCTION_14_1(a1);
  if (result)
  {
    AppleBCMWLANIOReporting::getLogger(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      Logger = AppleBCMWLANIOReporting::getLogger(v2);
      result = CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to initScanModeSinceLinkUpReporter slice %d\n", "reportScanModeStatsSinceLinkUp", 2644, 2);
    }
  }

  *v1 = v3;
  return result;
}

uint64_t AppleBCMWLANIOReportingPerSlice::reportHeCntPerSlice(AppleBCMWLANIOReporting *a1)
{
  result = AppleBCMWLANIOReporting::getLogger(a1);
  if (result)
  {
    AppleBCMWLANIOReporting::getLogger(a1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      Logger = AppleBCMWLANIOReporting::getLogger(a1);
      return CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to init Slice Count reporters\n", "reportHeCntPerSlice", 3164);
    }
  }

  return result;
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
      return CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to initiate Slice Frame reporter\n", "reportHeCntPerSlice", 3169);
    }
  }

  return result;
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
      return CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to initiate Slice He reporter\n", "reportHeCntPerSlice", 3174);
    }
  }

  return result;
}

void AppleBCMWLANIOReportingPerSlice::reportHeCntPerSlice(AppleBCMWLANIOReporting *a1)
{
  if (AppleBCMWLANIOReporting::getLogger(a1))
  {
    AppleBCMWLANIOReporting::getLogger(a1);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANIOReporting::getLogger(a1);
      v2 = OUTLINED_FUNCTION_86();
      Length = OSData::getLength(v2);
      CCLogStream::logEmergency(a1, "[dk] %s@%d:invalid payload length %lu expect one of size(%lu,%lu,%lu)\n", "reportHeCntPerSlice", 3187, Length, 200, 220, 224);
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

uint64_t AppleBCMWLANIOReportingPerSlice::reportOmiCntPerSlice(AppleBCMWLANIOReporting *a1)
{
  result = OUTLINED_FUNCTION_48_0(a1);
  if (result)
  {
    AppleBCMWLANIOReporting::getLogger(v3);
    result = CCLogStream::shouldLog();
    if (result)
    {
      Logger = AppleBCMWLANIOReporting::getLogger(v3);
      result = CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to initiate OMI reporter\n", "reportOmiCntPerSlice", 3326);
    }
  }

  *v1 = v2;
  return result;
}

{
  result = OUTLINED_FUNCTION_25_0(a1);
  if (result)
  {
    AppleBCMWLANIOReporting::getLogger(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      AppleBCMWLANIOReporting::getLogger(v2);
      OUTLINED_FUNCTION_66();
      result = CCLogStream::logEmergency(v5, "[dk] %s@%d:Out of range slice index %d\n", v6, v7, v8);
    }
  }

  *v1 = v3;
  return result;
}

uint64_t AppleBCMWLANIOReportingPerSlice::reportOmiCntPerSlice(AppleBCMWLANIOReporting *a1, uint64_t a2, _DWORD *a3)
{
  OUTLINED_FUNCTION_59();
  result = AppleBCMWLANIOReporting::getLogger(v6);
  if (result)
  {
    AppleBCMWLANIOReporting::getLogger(a1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      AppleBCMWLANIOReporting::getLogger(a1);
      v8 = OUTLINED_FUNCTION_86();
      Length = OSData::getLength(v8);
      result = CCLogStream::logEmergency(a1, "[dk] %s@%d:sizeof(wl_he_omi_cnt_wlc_v1) %lu payload->getLength() %lu\n", "reportOmiCntPerSlice", 3330, 68, Length);
    }
  }

  *a3 = v3;
  return result;
}

uint64_t AppleBCMWLANIOReportingPerSlice::addDictionaryChanspec(AppleBCMWLANIOReporting *a1)
{
  Logger = AppleBCMWLANIOReporting::getLogger(a1);
  return CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to find channelDictionary\n", "addDictionaryChanspec", 3420);
}

{
  Logger = AppleBCMWLANIOReporting::getLogger(a1);
  return CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to set transitions\n", "addDictionaryChanspec", 3432);
}

{
  Logger = AppleBCMWLANIOReporting::getLogger(a1);
  return CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to get joinedAggStatsDictionary\n", "addDictionaryChanspec", 3446);
}

{
  Logger = AppleBCMWLANIOReporting::getLogger(a1);
  return CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to get totalDur\n", "addDictionaryChanspec", 3461);
}

{
  Logger = AppleBCMWLANIOReporting::getLogger(a1);
  return CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to set totalDur\n", "addDictionaryChanspec", 3457);
}

{
  Logger = AppleBCMWLANIOReporting::getLogger(a1);
  return CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to get transitions\n", "addDictionaryChanspec", 3477);
}

{
  Logger = AppleBCMWLANIOReporting::getLogger(a1);
  return CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to set transitions\n", "addDictionaryChanspec", 3473);
}

{
  Logger = AppleBCMWLANIOReporting::getLogger(a1);
  return CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to get reasonsForJoiningDictionary\n", "addDictionaryChanspec", 3490);
}

{
  Logger = AppleBCMWLANIOReporting::getLogger(a1);
  return CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to set reasonsForJoiningDictionary\n", "addDictionaryChanspec", 3496);
}

{
  Logger = AppleBCMWLANIOReporting::getLogger(a1);
  return CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to set joinedAggStatsDictionary\n", "addDictionaryChanspec", 3504);
}

{
  Logger = AppleBCMWLANIOReporting::getLogger(a1);
  return CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to get leftAggStatsDictionary\n", "addDictionaryChanspec", 3519);
}

{
  Logger = AppleBCMWLANIOReporting::getLogger(a1);
  return CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to get reasonsForLeavingDictionary\n", "addDictionaryChanspec", 3532);
}

{
  Logger = AppleBCMWLANIOReporting::getLogger(a1);
  return CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to set reasonsForLeavingDictionary\n", "addDictionaryChanspec", 3538);
}

{
  Logger = AppleBCMWLANIOReporting::getLogger(a1);
  return CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to set leftAggStatsDictionary\n", "addDictionaryChanspec", 3546);
}

{
  Logger = AppleBCMWLANIOReporting::getLogger(a1);
  return CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to set channelDictionary\n", "addDictionaryChanspec", 3554);
}

{
  Logger = AppleBCMWLANIOReporting::getLogger(a1);
  return CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to alloc reasonsForLeavingDictionary\n", "addDictionaryChanspec", 3527);
}

{
  Logger = AppleBCMWLANIOReporting::getLogger(a1);
  return CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to alloc leftAggStatsDictionary\n", "addDictionaryChanspec", 3514);
}

{
  Logger = AppleBCMWLANIOReporting::getLogger(a1);
  return CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to alloc reasonsForJoiningDictionary\n", "addDictionaryChanspec", 3486);
}

{
  Logger = AppleBCMWLANIOReporting::getLogger(a1);
  return CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to alloc transitions\n", "addDictionaryChanspec", 3470);
}

{
  Logger = AppleBCMWLANIOReporting::getLogger(a1);
  return CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to alloc totalDur\n", "addDictionaryChanspec", 3454);
}

{
  Logger = AppleBCMWLANIOReporting::getLogger(a1);
  return CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to alloc joinedAggStatsDictionary\n", "addDictionaryChanspec", 3441);
}

{
  Logger = AppleBCMWLANIOReporting::getLogger(a1);
  return CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to alloc chanspecNum\n", "addDictionaryChanspec", 3430);
}

{
  Logger = AppleBCMWLANIOReporting::getLogger(a1);
  return CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to alloc channelDictionary\n", "addDictionaryChanspec", 3415);
}

{
  result = OUTLINED_FUNCTION_14_1(a1);
  if (result)
  {
    AppleBCMWLANIOReporting::getLogger(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      Logger = AppleBCMWLANIOReporting::getLogger(v2);
      result = CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to alloc channelKey\n", "addDictionaryChanspec", 3408);
    }
  }

  *v1 = v3;
  return result;
}

{
  result = OUTLINED_FUNCTION_14_1(a1);
  if (result)
  {
    AppleBCMWLANIOReporting::getLogger(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      Logger = AppleBCMWLANIOReporting::getLogger(v2);
      result = CCLogStream::logEmergency(Logger, "[dk] %s@%d:appleChanSpec convToAscii strnlen >= bufLen\n", "addDictionaryChanspec", 3406);
    }
  }

  *v1 = v3;
  return result;
}

{
  result = OUTLINED_FUNCTION_25_0(a1);
  if (result)
  {
    AppleBCMWLANIOReporting::getLogger(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      AppleBCMWLANIOReporting::getLogger(v2);
      OUTLINED_FUNCTION_66();
      result = CCLogStream::logEmergency(v5, "[dk] %s@%d:Failed to create ivars->fChannelSwitchDictionary[%d]\n", v6, v7, v8);
    }
  }

  *v1 = v3;
  return result;
}

{
  Logger = AppleBCMWLANIOReporting::getLogger(a1);
  return CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to alloc AutoreleasedBuffer\n", "addDictionaryChanspec", 3389);
}

uint64_t AppleBCMWLANIOReportingPerSlice::addDictionaryChannelReasonForJoining(AppleBCMWLANIOReporting *a1)
{
  Logger = AppleBCMWLANIOReporting::getLogger(a1);
  return CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to get reasonDictionary\n", "addDictionaryChannelReasonForJoining", 3692);
}

{
  Logger = AppleBCMWLANIOReporting::getLogger(a1);
  return CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to get totalDur\n", "addDictionaryChannelReasonForJoining", 3707);
}

{
  Logger = AppleBCMWLANIOReporting::getLogger(a1);
  return CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to set reasonNum\n", "addDictionaryChannelReasonForJoining", 3703);
}

{
  Logger = AppleBCMWLANIOReporting::getLogger(a1);
  return CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to get totalDur\n", "addDictionaryChannelReasonForJoining", 3723);
}

{
  Logger = AppleBCMWLANIOReporting::getLogger(a1);
  return CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to set totalDur\n", "addDictionaryChannelReasonForJoining", 3719);
}

{
  Logger = AppleBCMWLANIOReporting::getLogger(a1);
  return CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to update transitions\n", "addDictionaryChannelReasonForJoining", 3748);
}

{
  Logger = AppleBCMWLANIOReporting::getLogger(a1);
  return CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to get transitions\n", "addDictionaryChannelReasonForJoining", 3745);
}

{
  Logger = AppleBCMWLANIOReporting::getLogger(a1);
  return CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to set transitions\n", "addDictionaryChannelReasonForJoining", 3736);
}

{
  Logger = AppleBCMWLANIOReporting::getLogger(a1);
  return CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to set reasonDictionary\n", "addDictionaryChannelReasonForJoining", 3758);
}

{
  Logger = AppleBCMWLANIOReporting::getLogger(a1);
  return CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to update transitions\n", "addDictionaryChannelReasonForJoining", 3738);
}

{
  Logger = AppleBCMWLANIOReporting::getLogger(a1);
  return CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to alloc transitions\n", "addDictionaryChannelReasonForJoining", 3733);
}

{
  Logger = AppleBCMWLANIOReporting::getLogger(a1);
  return CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to alloc totalDur\n", "addDictionaryChannelReasonForJoining", 3716);
}

{
  Logger = AppleBCMWLANIOReporting::getLogger(a1);
  return CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to alloc reasonNum\n", "addDictionaryChannelReasonForJoining", 3700);
}

{
  Logger = AppleBCMWLANIOReporting::getLogger(a1);
  return CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to alloc reasonDict\n", "addDictionaryChannelReasonForJoining", 3687);
}

{
  Logger = AppleBCMWLANIOReporting::getLogger(a1);
  return CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to get reasonsForJoiningDictionary\n", "addDictionaryChannelReasonForJoining", 3678);
}

{
  Logger = AppleBCMWLANIOReporting::getLogger(a1);
  return CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to update transitions\n", "addDictionaryChannelReasonForJoining", 3670);
}

{
  Logger = AppleBCMWLANIOReporting::getLogger(a1);
  return CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to get transitions\n", "addDictionaryChannelReasonForJoining", 3665);
}

{
  Logger = AppleBCMWLANIOReporting::getLogger(a1);
  return CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to get joinedAggStatsDictionary\n", "addDictionaryChannelReasonForJoining", 3662);
}

{
  Logger = AppleBCMWLANIOReporting::getLogger(a1);
  return CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to get channelDictionary\n", "addDictionaryChannelReasonForJoining", 3659);
}

{
  Logger = AppleBCMWLANIOReporting::getLogger(a1);
  return CCLogStream::logEmergency(Logger, "[dk] %s@%d:No ivars->fChannelSwitchDictionary[sliceIndex]\n", "addDictionaryChannelReasonForJoining", 3655);
}

{
  Logger = AppleBCMWLANIOReporting::getLogger(a1);
  return CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to alloc reasonKey\n", "addDictionaryChannelReasonForJoining", 3652);
}

{
  result = OUTLINED_FUNCTION_14_1(a1);
  if (result)
  {
    AppleBCMWLANIOReporting::getLogger(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      Logger = AppleBCMWLANIOReporting::getLogger(v2);
      result = CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to alloc channelKey\n", "addDictionaryChannelReasonForJoining", 3643);
    }
  }

  *v1 = v3;
  return result;
}

{
  result = OUTLINED_FUNCTION_14_1(a1);
  if (result)
  {
    AppleBCMWLANIOReporting::getLogger(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      Logger = AppleBCMWLANIOReporting::getLogger(v2);
      result = CCLogStream::logEmergency(Logger, "[dk] %s@%d:appleChanSpec convToAscii strnlen >= bufLen\n", "addDictionaryChannelReasonForJoining", 3641);
    }
  }

  *v1 = v3;
  return result;
}

{
  Logger = AppleBCMWLANIOReporting::getLogger(a1);
  return CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to alloc AutoreleasedBuffer\n", "addDictionaryChannelReasonForJoining", 3630);
}

uint64_t AppleBCMWLANIOReportingPerSlice::addNumberValue(AppleBCMWLANIOReporting *a1)
{
  AppleBCMWLANIOReporting::getLogger(a1);
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logEmergency(v1, "[dk] %s@%d:Invalid data for %s\n", v3, v4, v5);
}

uint64_t AppleBCMWLANIOReportingPerSlice::addDictionaryChannelReasonForLeaving(AppleBCMWLANIOReporting *a1)
{
  Logger = AppleBCMWLANIOReporting::getLogger(a1);
  return CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to get reasonDictionary\n", "addDictionaryChannelReasonForLeaving", 3869);
}

{
  Logger = AppleBCMWLANIOReporting::getLogger(a1);
  return CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to get totalDur\n", "addDictionaryChannelReasonForLeaving", 3884);
}

{
  Logger = AppleBCMWLANIOReporting::getLogger(a1);
  return CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to set reasonNum\n", "addDictionaryChannelReasonForLeaving", 3880);
}

{
  Logger = AppleBCMWLANIOReporting::getLogger(a1);
  return CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to update transitions\n", "addDictionaryChannelReasonForLeaving", 3905);
}

{
  Logger = AppleBCMWLANIOReporting::getLogger(a1);
  return CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to get transitions\n", "addDictionaryChannelReasonForLeaving", 3902);
}

{
  Logger = AppleBCMWLANIOReporting::getLogger(a1);
  return CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to set transitions\n", "addDictionaryChannelReasonForLeaving", 3898);
}

{
  Logger = AppleBCMWLANIOReporting::getLogger(a1);
  return CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to set reasonDictionary\n", "addDictionaryChannelReasonForLeaving", 3915);
}

{
  Logger = AppleBCMWLANIOReporting::getLogger(a1);
  return CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to update totalDur\n", "addDictionaryChannelReasonForLeaving", 3960);
}

{
  Logger = AppleBCMWLANIOReporting::getLogger(a1);
  return CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to get totalDur\n", "addDictionaryChannelReasonForLeaving", 3957);
}

{
  Logger = AppleBCMWLANIOReporting::getLogger(a1);
  return CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to set totalDur\n", "addDictionaryChannelReasonForLeaving", 3953);
}

{
  Logger = AppleBCMWLANIOReporting::getLogger(a1);
  return CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to get reasonDictionary\n", "addDictionaryChannelReasonForLeaving", 3983);
}

{
  Logger = AppleBCMWLANIOReporting::getLogger(a1);
  return CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to get totalDur\n", "addDictionaryChannelReasonForLeaving", 3998);
}

{
  Logger = AppleBCMWLANIOReporting::getLogger(a1);
  return CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to set reasonNum\n", "addDictionaryChannelReasonForLeaving", 3994);
}

{
  Logger = AppleBCMWLANIOReporting::getLogger(a1);
  return CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to get transitions\n", "addDictionaryChannelReasonForLeaving", 4014);
}

{
  Logger = AppleBCMWLANIOReporting::getLogger(a1);
  return CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to set transitions\n", "addDictionaryChannelReasonForLeaving", 4010);
}

{
  Logger = AppleBCMWLANIOReporting::getLogger(a1);
  return CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to update totalDur\n", "addDictionaryChannelReasonForLeaving", 4033);
}

{
  Logger = AppleBCMWLANIOReporting::getLogger(a1);
  return CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to get totalDur\n", "addDictionaryChannelReasonForLeaving", 4030);
}

{
  Logger = AppleBCMWLANIOReporting::getLogger(a1);
  return CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to set totalDur\n", "addDictionaryChannelReasonForLeaving", 4026);
}

{
  Logger = AppleBCMWLANIOReporting::getLogger(a1);
  return CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to set reasonDictionary\n", "addDictionaryChannelReasonForLeaving", 4043);
}

{
  Logger = AppleBCMWLANIOReporting::getLogger(a1);
  return CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to alloc totalDur\n", "addDictionaryChannelReasonForLeaving", 4023);
}

{
  Logger = AppleBCMWLANIOReporting::getLogger(a1);
  return CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to alloc transitions\n", "addDictionaryChannelReasonForLeaving", 4007);
}

{
  Logger = AppleBCMWLANIOReporting::getLogger(a1);
  return CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to alloc reasonNum\n", "addDictionaryChannelReasonForLeaving", 3991);
}

{
  Logger = AppleBCMWLANIOReporting::getLogger(a1);
  return CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to alloc reasonDict\n", "addDictionaryChannelReasonForLeaving", 3978);
}

{
  Logger = AppleBCMWLANIOReporting::getLogger(a1);
  return CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to get reasonsForJoiningDictionary\n", "addDictionaryChannelReasonForLeaving", 3969);
}

{
  Logger = AppleBCMWLANIOReporting::getLogger(a1);
  return CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to alloc totalDur\n", "addDictionaryChannelReasonForLeaving", 3950);
}

{
  Logger = AppleBCMWLANIOReporting::getLogger(a1);
  return CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to get joinedAggStatsDictionary\n", "addDictionaryChannelReasonForLeaving", 3944);
}

{
  Logger = AppleBCMWLANIOReporting::getLogger(a1);
  return CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to get channelDictionary\n", "addDictionaryChannelReasonForLeaving", 3941);
}

{
  Logger = AppleBCMWLANIOReporting::getLogger(a1);
  return CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to alloc reasonKey\n", "addDictionaryChannelReasonForLeaving", 3938);
}

{
  Logger = AppleBCMWLANIOReporting::getLogger(a1);
  return CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to alloc transitions\n", "addDictionaryChannelReasonForLeaving", 3895);
}

{
  Logger = AppleBCMWLANIOReporting::getLogger(a1);
  return CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to alloc reasonNum\n", "addDictionaryChannelReasonForLeaving", 3877);
}

{
  Logger = AppleBCMWLANIOReporting::getLogger(a1);
  return CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to alloc reasonDict\n", "addDictionaryChannelReasonForLeaving", 3864);
}

{
  Logger = AppleBCMWLANIOReporting::getLogger(a1);
  return CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to get reasonsForLeavingDictionary\n", "addDictionaryChannelReasonForLeaving", 3855);
}

{
  Logger = AppleBCMWLANIOReporting::getLogger(a1);
  return CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to get leftAggStatsDictionary\n", "addDictionaryChannelReasonForLeaving", 3852);
}

{
  Logger = AppleBCMWLANIOReporting::getLogger(a1);
  return CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to get chLeftDictionary\n", "addDictionaryChannelReasonForLeaving", 3849);
}

{
  Logger = AppleBCMWLANIOReporting::getLogger(a1);
  return CCLogStream::logEmergency(Logger, "[dk] %s@%d:No ivars->fChannelSwitchDictionary[sliceIndex]\n", "addDictionaryChannelReasonForLeaving", 3844);
}

{
  Logger = AppleBCMWLANIOReporting::getLogger(a1);
  return CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to alloc reasonKey\n", "addDictionaryChannelReasonForLeaving", 3842);
}

{
  result = OUTLINED_FUNCTION_14_1(a1);
  if (result)
  {
    AppleBCMWLANIOReporting::getLogger(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      Logger = AppleBCMWLANIOReporting::getLogger(v2);
      result = CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to alloc chLeftKey\n", "addDictionaryChannelReasonForLeaving", 3833);
    }
  }

  *v1 = v3;
  return result;
}

{
  Logger = AppleBCMWLANIOReporting::getLogger(a1);
  return CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to alloc AutoreleasedBuffer\n", "addDictionaryChannelReasonForLeaving", 3823);
}

uint64_t AppleBCMWLANIOReportingPerSlice::storeChannelSwitch(AppleBCMWLANIOReporting *a1)
{
  result = OUTLINED_FUNCTION_48_0(a1);
  if (result)
  {
    AppleBCMWLANIOReporting::getLogger(v3);
    result = CCLogStream::shouldLog();
    if (result)
    {
      Logger = AppleBCMWLANIOReporting::getLogger(v3);
      result = CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to addDictionaryChanspec", "storeChannelSwitch", 4103);
    }
  }

  *v1 = v2;
  return result;
}

{
  result = OUTLINED_FUNCTION_48_0(a1);
  if (result)
  {
    AppleBCMWLANIOReporting::getLogger(v3);
    result = CCLogStream::shouldLog();
    if (result)
    {
      Logger = AppleBCMWLANIOReporting::getLogger(v3);
      result = CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to addDictionaryChannelReasonForJoining", "storeChannelSwitch", 4106);
    }
  }

  *v1 = v2;
  return result;
}

{
  result = OUTLINED_FUNCTION_48_0(a1);
  if (result)
  {
    AppleBCMWLANIOReporting::getLogger(v3);
    result = CCLogStream::shouldLog();
    if (result)
    {
      Logger = AppleBCMWLANIOReporting::getLogger(v3);
      result = CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to addChannelDictChanspecJoinedLeft", "storeChannelSwitch", 4109);
    }
  }

  *v1 = v2;
  return result;
}

{
  result = OUTLINED_FUNCTION_48_0(a1);
  if (result)
  {
    AppleBCMWLANIOReporting::getLogger(v3);
    result = CCLogStream::shouldLog();
    if (result)
    {
      Logger = AppleBCMWLANIOReporting::getLogger(v3);
      result = CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to addDictionaryChannelReasonForLeaving", "storeChannelSwitch", 4112);
    }
  }

  *v1 = v2;
  return result;
}

uint64_t AppleBCMWLANIOReportingPerSlice::initUpdateReportData(AppleBCMWLANIOReporting *a1)
{
  result = OUTLINED_FUNCTION_14_1(a1);
  if (result)
  {
    AppleBCMWLANIOReporting::getLogger(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      Logger = AppleBCMWLANIOReporting::getLogger(v2);
      result = CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to get chanspecNum\n", "initUpdateReportData", 4203);
    }
  }

  *v1 = v3;
  return result;
}

{
  result = OUTLINED_FUNCTION_14_1(a1);
  if (result)
  {
    AppleBCMWLANIOReporting::getLogger(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      Logger = AppleBCMWLANIOReporting::getLogger(v2);
      result = CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to get channelDictionary\n", "initUpdateReportData", 4200);
    }
  }

  *v1 = v3;
  return result;
}

{
  result = OUTLINED_FUNCTION_14_1(a1);
  if (result)
  {
    AppleBCMWLANIOReporting::getLogger(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      Logger = AppleBCMWLANIOReporting::getLogger(v2);
      result = CCLogStream::logEmergency(Logger, "[dk] %s@%d:Invalid ChannelSwitchReport_t pointer\n", "initUpdateReportData", 4195);
    }
  }

  *v1 = v3;
  return result;
}

uint64_t AppleBCMWLANIOReportingPerSlice::processUpdateLeaveReason(AppleBCMWLANIOReporting *a1)
{
  AppleBCMWLANIOReporting::getLogger(a1);
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logEmergency(v1, "[dk] %s@%d:Invalid data for %s()\n", v3, v4, v5);
}

{
  result = OUTLINED_FUNCTION_14_1(a1);
  if (result)
  {
    AppleBCMWLANIOReporting::getLogger(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      Logger = AppleBCMWLANIOReporting::getLogger(v2);
      result = CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to get switchFromReasonReporter\n", "processUpdateLeaveReason", 4240);
    }
  }

  *v1 = v3;
  return result;
}

{
  result = OUTLINED_FUNCTION_14_1(a1);
  if (result)
  {
    AppleBCMWLANIOReporting::getLogger(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      Logger = AppleBCMWLANIOReporting::getLogger(v2);
      result = CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to get reasonNum\n", "processUpdateLeaveReason", 4236);
    }
  }

  *v1 = v3;
  return result;
}

{
  result = OUTLINED_FUNCTION_14_1(a1);
  if (result)
  {
    AppleBCMWLANIOReporting::getLogger(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      Logger = AppleBCMWLANIOReporting::getLogger(v2);
      result = CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to get transitions\n", "processUpdateLeaveReason", 4233);
    }
  }

  *v1 = v3;
  return result;
}

{
  result = OUTLINED_FUNCTION_14_1(a1);
  if (result)
  {
    AppleBCMWLANIOReporting::getLogger(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      Logger = AppleBCMWLANIOReporting::getLogger(v2);
      result = CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to get reasonDictionary\n", "processUpdateLeaveReason", 4229);
    }
  }

  *v1 = v3;
  return result;
}

uint64_t AppleBCMWLANIOReportingPerSlice::processUpdateJoinReason(AppleBCMWLANIOReporting *a1)
{
  AppleBCMWLANIOReporting::getLogger(a1);
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logEmergency(v1, "[dk] %s@%d:Invalid data for %s()\n", v3, v4, v5);
}

{
  result = OUTLINED_FUNCTION_48_0(a1);
  if (result)
  {
    AppleBCMWLANIOReporting::getLogger(v3);
    result = CCLogStream::shouldLog();
    if (result)
    {
      Logger = AppleBCMWLANIOReporting::getLogger(v3);
      result = CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to get activitesStateReporter\n", "processUpdateJoinReason", 4293);
    }
  }

  *v1 = v2;
  return result;
}

{
  result = OUTLINED_FUNCTION_14_1(a1);
  if (result)
  {
    AppleBCMWLANIOReporting::getLogger(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      Logger = AppleBCMWLANIOReporting::getLogger(v2);
      result = CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to get switchToReasonReporter\n", "processUpdateJoinReason", 4285);
    }
  }

  *v1 = v3;
  return result;
}

{
  result = OUTLINED_FUNCTION_14_1(a1);
  if (result)
  {
    AppleBCMWLANIOReporting::getLogger(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      Logger = AppleBCMWLANIOReporting::getLogger(v2);
      result = CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to get transitions\n", "processUpdateJoinReason", 4281);
    }
  }

  *v1 = v3;
  return result;
}

{
  result = OUTLINED_FUNCTION_14_1(a1);
  if (result)
  {
    AppleBCMWLANIOReporting::getLogger(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      Logger = AppleBCMWLANIOReporting::getLogger(v2);
      result = CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to get totalDur\n", "processUpdateJoinReason", 4278);
    }
  }

  *v1 = v3;
  return result;
}

{
  result = OUTLINED_FUNCTION_14_1(a1);
  if (result)
  {
    AppleBCMWLANIOReporting::getLogger(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      Logger = AppleBCMWLANIOReporting::getLogger(v2);
      result = CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to get reasonNum\n", "processUpdateJoinReason", 4275);
    }
  }

  *v1 = v3;
  return result;
}

{
  result = OUTLINED_FUNCTION_14_1(a1);
  if (result)
  {
    AppleBCMWLANIOReporting::getLogger(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      Logger = AppleBCMWLANIOReporting::getLogger(v2);
      result = CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to get reasonDictionary\n", "processUpdateJoinReason", 4271);
    }
  }

  *v1 = v3;
  return result;
}

uint64_t AppleBCMWLANIOReportingPerSlice::processUpdateChannelReports(AppleBCMWLANIOReporting *a1)
{
  AppleBCMWLANIOReporting::getLogger(a1);
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logEmergency(v1, "[dk] %s@%d:Invalid data for %s()\n", v3, v4, v5);
}

{
  result = OUTLINED_FUNCTION_48_0(a1);
  if (result)
  {
    AppleBCMWLANIOReporting::getLogger(v3);
    result = CCLogStream::shouldLog();
    if (result)
    {
      Logger = AppleBCMWLANIOReporting::getLogger(v3);
      result = CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to init report data\n", "processUpdateChannelReports", 4335);
    }
  }

  *v1 = v2;
  return result;
}

{
  result = OUTLINED_FUNCTION_48_0(a1);
  if (result)
  {
    AppleBCMWLANIOReporting::getLogger(v3);
    result = CCLogStream::shouldLog();
    if (result)
    {
      Logger = AppleBCMWLANIOReporting::getLogger(v3);
      result = CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to iterate SwitchToReason\n", "processUpdateChannelReports", 4364);
    }
  }

  *v1 = v2;
  return result;
}

{
  result = OUTLINED_FUNCTION_48_0(a1);
  if (result)
  {
    AppleBCMWLANIOReporting::getLogger(v3);
    result = CCLogStream::shouldLog();
    if (result)
    {
      Logger = AppleBCMWLANIOReporting::getLogger(v3);
      result = CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to iterate SwitchFromReason\n", "processUpdateChannelReports", 4375);
    }
  }

  *v1 = v2;
  return result;
}

uint64_t AppleBCMWLANIOReportingPerSlice::processUpdateChannelReports(AppleBCMWLANIOReporting *a1, const char *a2, uint64_t a3, const OSNumber *a4)
{
  AppleBCMWLANIOReporting::getLogger(a1);
  v7 = OUTLINED_FUNCTION_77();
  OSString::getCStringNoCopy(v7);
  v8 = OUTLINED_FUNCTION_86();
  v9 = OSNumber::unsigned64BitValue(v8);
  v10 = OSNumber::unsigned64BitValue(a4);
  return CCLogStream::logEmergency(v4, "[dk] %s@%d:Failed to ivars->fChanSWResidencyState[sliceIndex]->overrideChannelState %s dur %lldms trans %lld\n", "processUpdateChannelReports", 4353, a2, v9, v10);
}

uint64_t AppleBCMWLANIOReportingPerSlice::processUpdateChannelReports()
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
      result = CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to get reasonsForJoiningDictionary\n", "processUpdateChannelReports", 4361);
    }
  }

  *v0 = 0;
  return result;
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
      result = CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to get lastActivitesStateReporterSizeNum\n", "processUpdateChannelReports", 4358);
    }
  }

  *v0 = 0;
  return result;
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
      result = CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to get transitions\n", "processUpdateChannelReports", 4343);
    }
  }

  *v0 = 0;
  return result;
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
      result = CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to get totalDur\n", "processUpdateChannelReports", 4340);
    }
  }

  *v0 = 0;
  return result;
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
      result = CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to get reasonsForLeavingDictionary\n", "processUpdateChannelReports", 4372);
    }
  }

  *v0 = 0;
  return result;
}

uint64_t AppleBCMWLANIOReportingPerSlice::iterateUpdateJoinReason(AppleBCMWLANIOReporting *a1)
{
  AppleBCMWLANIOReporting::getLogger(a1);
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logEmergency(v1, "[dk] %s@%d:Invalid data for %s()\n", v3, v4, v5);
}

uint64_t AppleBCMWLANIOReportingPerSlice::iterateUpdateLeaveReason(AppleBCMWLANIOReporting *a1)
{
  AppleBCMWLANIOReporting::getLogger(a1);
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logEmergency(v1, "[dk] %s@%d:Invalid data for %s()\n", v3, v4, v5);
}

uint64_t AppleBCMWLANIOReportingPerSlice::updateReportersChannelSwitchReport(AppleBCMWLANIOReporting *a1)
{
  result = OUTLINED_FUNCTION_48_0(a1);
  if (result)
  {
    AppleBCMWLANIOReporting::getLogger(v3);
    result = CCLogStream::shouldLog();
    if (result)
    {
      Logger = AppleBCMWLANIOReporting::getLogger(v3);
      result = CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to iterate channels\n", "updateReportersChannelSwitchReport", 4587);
    }
  }

  *v1 = v2;
  return result;
}

uint64_t AppleBCMWLANIOReportingPerSlice::processConfigureChannelReports(AppleBCMWLANIOReporting *a1)
{
  result = OUTLINED_FUNCTION_48_0(a1);
  if (result)
  {
    AppleBCMWLANIOReporting::getLogger(v3);
    result = CCLogStream::shouldLog();
    if (result)
    {
      Logger = AppleBCMWLANIOReporting::getLogger(v3);
      result = CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to addPerChannelReporters \n", "processConfigureChannelReports", 4818);
    }
  }

  *v1 = v2;
  return result;
}

{
  result = OUTLINED_FUNCTION_14_1(a1);
  if (result)
  {
    AppleBCMWLANIOReporting::getLogger(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      Logger = AppleBCMWLANIOReporting::getLogger(v2);
      result = CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to get channelDictionary\n", "processConfigureChannelReports", 4815);
    }
  }

  *v1 = v3;
  return result;
}

uint64_t AppleBCMWLANIOReportingPerSlice::processConfigureChannelReports(AppleBCMWLANIOReporting *a1, uint64_t a2, int a3, _DWORD *a4)
{
  result = AppleBCMWLANIOReporting::getLogger(a1);
  if (result)
  {
    AppleBCMWLANIOReporting::getLogger(a1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      Logger = AppleBCMWLANIOReporting::getLogger(a1);
      result = CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to setStateID indx %d id %llu\n", "processConfigureChannelReports", 4839, 0, a2);
    }
  }

  *a4 = a3;
  return result;
}

uint64_t AppleBCMWLANIOReportingPerSlice::processConfigureChannelReports()
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
      result = CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to get transitions\n", "processConfigureChannelReports", 4829);
    }
  }

  *v0 = 0;
  return result;
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
      result = CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to get totalDur\n", "processConfigureChannelReports", 4826);
    }
  }

  *v0 = 0;
  return result;
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
      result = CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to get chanspecNum\n", "processConfigureChannelReports", 4821);
    }
  }

  *v0 = 0;
  return result;
}

uint64_t AppleBCMWLANIOReportingPerSlice::addPerChannelReporters(AppleBCMWLANIOReporting *a1)
{
  result = OUTLINED_FUNCTION_14_1(a1);
  if (result)
  {
    AppleBCMWLANIOReporting::getLogger(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      Logger = AppleBCMWLANIOReporting::getLogger(v2);
      result = CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to get lastActivitesStateReporterSizeNum\n", "addPerChannelReporters", 5407);
    }
  }

  *v1 = v3;
  return result;
}

{
  Logger = AppleBCMWLANIOReporting::getLogger(a1);
  return CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to set lastActivitesStateReporterSizeNum\n", "addPerChannelReporters", 5404);
}

{
  Logger = AppleBCMWLANIOReporting::getLogger(a1);
  return CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to getReporter()->setObject(activitesStateReporter)\n", "addPerChannelReporters", 5424);
}

{
  Logger = AppleBCMWLANIOReporting::getLogger(a1);
  return CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to set activitesStateReporter\n", "addPerChannelReporters", 5427);
}

{
  Logger = AppleBCMWLANIOReporting::getLogger(a1);
  return CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to activitesStateReporter->addChannel", "addPerChannelReporters", 5430);
}

{
  Logger = AppleBCMWLANIOReporting::getLogger(a1);
  return CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to getReporter()->setObject(switchToReasonReporter)\n", "addPerChannelReporters", 5440);
}

{
  Logger = AppleBCMWLANIOReporting::getLogger(a1);
  return CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to set switchToReasonReporter\n", "addPerChannelReporters", 5444);
}

{
  Logger = AppleBCMWLANIOReporting::getLogger(a1);
  return CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to alloc switchToReasonReporter\n", "addPerChannelReporters", 5436);
}

{
  Logger = AppleBCMWLANIOReporting::getLogger(a1);
  return CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to iterate perChannel Join Reporters\n", "addPerChannelReporters", 5450);
}

{
  Logger = AppleBCMWLANIOReporting::getLogger(a1);
  return CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to add value to lastActivitesStateReporterSizeNum\n", "addPerChannelReporters", 5456);
}

{
  Logger = AppleBCMWLANIOReporting::getLogger(a1);
  return CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to alloc activitesStateReporter\n", "addPerChannelReporters", 5421);
}

{
  Logger = AppleBCMWLANIOReporting::getLogger(a1);
  return CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to get reasonsForJoiningDictionary\n", "addPerChannelReporters", 5412);
}

{
  result = OUTLINED_FUNCTION_14_1(a1);
  if (result)
  {
    AppleBCMWLANIOReporting::getLogger(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      Logger = AppleBCMWLANIOReporting::getLogger(v2);
      result = CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to alloc lastActivitesStateReporterSizeNum\n", "addPerChannelReporters", 5402);
    }
  }

  *v1 = v3;
  return result;
}

{
  Logger = AppleBCMWLANIOReporting::getLogger(a1);
  return CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to getReporter()->setObject(switchFromReasonReporter)\n", "addPerChannelReporters", 5492);
}

{
  Logger = AppleBCMWLANIOReporting::getLogger(a1);
  return CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to set switchFromReasonReporter\n", "addPerChannelReporters", 5495);
}

{
  Logger = AppleBCMWLANIOReporting::getLogger(a1);
  return CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to alloc switchFromReasonReporter\n", "addPerChannelReporters", 5489);
}

{
  Logger = AppleBCMWLANIOReporting::getLogger(a1);
  return CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to iterate perChannel Leaver Reporters\n", "addPerChannelReporters", 5501);
}

{
  Logger = AppleBCMWLANIOReporting::getLogger(a1);
  return CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to get reasonsForLeavingDictionary\n", "addPerChannelReporters", 5485);
}

{
  result = OUTLINED_FUNCTION_14_1(a1);
  if (result)
  {
    AppleBCMWLANIOReporting::getLogger(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      Logger = AppleBCMWLANIOReporting::getLogger(v2);
      result = CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to get chanspecNum\n", "addPerChannelReporters", 5382);
    }
  }

  *v1 = v3;
  return result;
}

{
  Logger = AppleBCMWLANIOReporting::getLogger(a1);
  return CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to allocate autoreleased buffers\n", "addPerChannelReporters", 5371);
}

uint64_t AppleBCMWLANIOReportingPerSlice::configureReportersChannelSwitchReport(AppleBCMWLANIOReporting *a1)
{
  result = OUTLINED_FUNCTION_48_0(a1);
  if (result)
  {
    AppleBCMWLANIOReporting::getLogger(v3);
    result = CCLogStream::shouldLog();
    if (result)
    {
      Logger = AppleBCMWLANIOReporting::getLogger(v3);
      result = CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to add ivars->fChanSWResidencyState to getReporter()\n", "configureReportersChannelSwitchReport", 4930);
    }
  }

  *v1 = v2;
  return result;
}

{
  result = OUTLINED_FUNCTION_48_0(a1);
  if (result)
  {
    AppleBCMWLANIOReporting::getLogger(v3);
    result = CCLogStream::shouldLog();
    if (result)
    {
      Logger = AppleBCMWLANIOReporting::getLogger(v3);
      result = CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to addChannel", "configureReportersChannelSwitchReport", 4934);
    }
  }

  *v1 = v2;
  return result;
}

{
  result = OUTLINED_FUNCTION_48_0(a1);
  if (result)
  {
    AppleBCMWLANIOReporting::getLogger(v3);
    result = CCLogStream::shouldLog();
    if (result)
    {
      Logger = AppleBCMWLANIOReporting::getLogger(v3);
      result = CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to alloc ivars->fChanSWResidencyState\n", "configureReportersChannelSwitchReport", 4929);
    }
  }

  *v1 = v2;
  return result;
}

{
  Logger = AppleBCMWLANIOReporting::getLogger(a1);
  return CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to iterate configure channels", "configureReportersChannelSwitchReport", 4942);
}

{
  Logger = AppleBCMWLANIOReporting::getLogger(a1);
  return CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to alloc AutoreleasedBuffer\n", "configureReportersChannelSwitchReport", 4913);
}

uint64_t AppleBCMWLANIOReportingPerSlice::processPerChannelJoinReporters(AppleBCMWLANIOReporting *a1)
{
  result = OUTLINED_FUNCTION_48_0(a1);
  if (result)
  {
    AppleBCMWLANIOReporting::getLogger(v3);
    result = CCLogStream::shouldLog();
    if (result)
    {
      Logger = AppleBCMWLANIOReporting::getLogger(v3);
      result = CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to make channel\n", "processPerChannelJoinReporters", 5128);
    }
  }

  *v1 = v2;
  return result;
}

{
  result = OUTLINED_FUNCTION_14_1(a1);
  if (result)
  {
    AppleBCMWLANIOReporting::getLogger(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      Logger = AppleBCMWLANIOReporting::getLogger(v2);
      result = CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to get transitions\n", "processPerChannelJoinReporters", 5119);
    }
  }

  *v1 = v3;
  return result;
}

{
  result = OUTLINED_FUNCTION_14_1(a1);
  if (result)
  {
    AppleBCMWLANIOReporting::getLogger(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      Logger = AppleBCMWLANIOReporting::getLogger(v2);
      result = CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to get totalDur\n", "processPerChannelJoinReporters", 5116);
    }
  }

  *v1 = v3;
  return result;
}

{
  result = OUTLINED_FUNCTION_14_1(a1);
  if (result)
  {
    AppleBCMWLANIOReporting::getLogger(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      Logger = AppleBCMWLANIOReporting::getLogger(v2);
      result = CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to get reasonNum\n", "processPerChannelJoinReporters", 5113);
    }
  }

  *v1 = v3;
  return result;
}

{
  result = OUTLINED_FUNCTION_14_1(a1);
  if (result)
  {
    AppleBCMWLANIOReporting::getLogger(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      Logger = AppleBCMWLANIOReporting::getLogger(v2);
      result = CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to get reasonDictionary\n", "processPerChannelJoinReporters", 5110);
    }
  }

  *v1 = v3;
  return result;
}