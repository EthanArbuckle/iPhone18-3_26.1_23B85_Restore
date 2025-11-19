uint64_t AppleBCMWLANNetAdapter::leaveNetworkSync(AppleBCMWLANCore ***a1, unsigned int a2, unsigned int a3, int a4, unsigned int a5, uint64_t a6, const char *a7)
{
  v8 = a1 + 5;
  v7 = a1[5];
  if (*(v7 + 64) == 1)
  {
    if (v7[4] && CCLogStream::shouldLog())
    {
      AppleBCMWLANNetAdapter::leaveNetworkSync(v8);
    }

    return 0;
  }

  else
  {
    if (a5)
    {
      AppleBCMWLANNetAdapter::setDisassocDelay(a1, a5);
      v7 = a1[5];
    }

    JoinAdapter = AppleBCMWLANCore::getJoinAdapter(*v7);
    AppleBCMWLANJoinAdapter::disableICVErrorEventsAsync(JoinAdapter);
    v46[1] = a6;
    v48 = -21846;
    v46[0] = a2;
    v47 = WORD2(a6);
    *(*v8 + 64) = 1;
    isEnhancedDisassociationReasonEnabled = AppleBCMWLANConfigManager::isEnhancedDisassociationReasonEnabled((*v8)[2]);
    if (a4)
    {
      v18 = isEnhancedDisassociationReasonEnabled;
    }

    else
    {
      v18 = 0;
    }

    if (v18 == 1)
    {
      AppleBCMWLANNetAdapter::setEnhancedDisassocParams(a1, 1, a4, 6);
    }

    v19 = AppleBCMWLANCore::checkForBeaconDriftMitiSupport(**v8);
    v20 = *v8;
    if (v19)
    {
      if (v20[4])
      {
        v21 = v20[4];
        shouldLog = CCLogStream::shouldLog();
        v20 = *v8;
        if (shouldLog)
        {
          CCLogStream::logInfo(v20[4], "[dk] %s@%d: Configuring Beacon drift mitigation params for active non IBSS mode (Sync)\n", "leaveNetworkSync", 1242);
          v20 = *v8;
        }
      }

      isAssociated = AppleBCMWLANCore::isAssociated(*v20);
      v20 = *v8;
      if (isAssociated)
      {
        OPMode = IO80211BssManager::getOPMode(v20[3]);
        v20 = *v8;
        if (OPMode != 2)
        {
          if (v20[4])
          {
            v25 = v20[4];
            v26 = CCLogStream::shouldLog();
            v20 = *v8;
            if (v26)
            {
              CCLogStream::logInfo(v20[4], "[dk] %s@%d: Configuring Beacon drift mitigation params to FW Active Link Loss\n", "leaveNetworkSync", 1244);
              v20 = *v8;
            }
          }

          v27 = AppleBCMWLANConfigManager::configureBeaconDriftOffsetConfig(v20[2], 0);
          v20 = *v8;
          if (v27)
          {
            if (v20[4])
            {
              v28 = v20[4];
              v29 = CCLogStream::shouldLog();
              v20 = *v8;
              if (v29)
              {
                AppleBCMWLANNetAdapter::leaveNetworkSync(v20, v27, v8, v45);
                v20 = v45[0];
              }
            }
          }
        }
      }
    }

    v45[0] = v46;
    v45[1] = 0xC000C000CLL;
    if (v20[4])
    {
      v30 = v20[4];
      v31 = CCLogStream::shouldLog();
      v20 = *v8;
      if (v31)
      {
        v38 = v20[4];
        if (a3 <= 1)
        {
          v39 = mapLeaveMethodToBcomCmdString(LeaveMethod)::map[a3];
        }

        else
        {
          v39 = "???";
        }

        v42 = "unkown";
        if (a7)
        {
          v42 = a7;
        }

        CCLogStream::logAlert(v38, "[dk] %s@%d: Host sending firmware ('%s')/%u, method[%u] reason[%u] info[%u] helpString[%s]\n", "leaveNetworkSync", 1256, v39, v46[0], a3, a2, a4, v42);
        v20 = *v8;
      }
    }

    v32 = v20[1];
    if (a3 <= 1)
    {
      v33 = mapLeaveMethodToBcomCmd(LeaveMethod)::map[a3];
    }

    else
    {
      v33 = 52;
    }

    v44[0] = v46;
    v44[1] = 12;
    v9 = AppleBCMWLANCommander::runIOCtlSet(v32, v33, v44, v45, 0);
    v34 = *v8;
    if (v9)
    {
      if (v34[4])
      {
        v35 = CCLogStream::shouldLog();
        v34 = *v8;
        if (v35)
        {
          v40 = v34[4];
          if (a3 <= 1)
          {
            v41 = mapLeaveMethodToBcomCmdString(LeaveMethod)::map[a3];
          }

          else
          {
            v41 = "???";
          }

          v43 = (*(**v34 + 112))(*v34, v9);
          CCLogStream::logCrit(v40, "[dk] %s@%d: %s(%lu) failed, error %s\n", "leaveNetworkSync", 1260, v41, a2, v43);
          v34 = *v8;
        }
      }

      *(v34 + 64) = 0;
      AppleBCMWLANCore::recoverFromDisassocFailure(**v8, v9);
    }

    else
    {
      if (AppleBCMWLANCore::checkForTrafficEngineeringSupport(*v34))
      {
        AppleBCMWLANCore::setupTrafficMonitoring(**v8, 0);
      }

      AppleBCMWLANNetAdapter::setDefaultWMEParamsSync(a1);
      IO80211BssManager::resetRateAndIndexSet(a1[5][3]);
      PowerManager = AppleBCMWLANCore::getPowerManager(*a1[5]);
      AppleBCMWLANPowerManager::handleLinkDownConfiguration(PowerManager);
      AppleBCMWLANNetAdapter::clearAdHocCreated(a1);
      if (v18)
      {
        AppleBCMWLANNetAdapter::setEnhancedDisassocParams(a1, 0, a4, 6);
      }

      AppleBCMWLANCore::clearLPASConfigState(**v8);
      *(*v8 + 64) = 0;
    }
  }

  return v9;
}

uint64_t AppleBCMWLANNetAdapter::setDisassocDelay(AppleBCMWLANCore ***this, unsigned int a2)
{
  v15 = a2;
  v4 = *AppleBCMWLANCore::getBus(*this[5]);
  if ((*(v4 + 368))() <= 0x1122)
  {
    if (a2 >= 0xA)
    {
      v5 = 10;
    }

    else
    {
      v5 = a2;
    }

    v15 = v5;
  }

  v6 = (*(**this[5] + 88))(*this[5]);
  if ((*(*v6 + 136))(v6))
  {
    v12 = this;
    v13 = AppleBCMWLANNetAdapter::setDisassocDelayAsyncCallback;
    v14 = 0;
    v7 = AppleBCMWLANCommander::sendIOVarSet(this[5][1], "disassoc_dly");
  }

  else
  {
    v8 = this[5][1];
    v12 = &v15;
    v13 = 4;
    v7 = AppleBCMWLANCommander::runIOVarSet(v8, "disassoc_dly", &v12, 0, 0);
  }

  v9 = v7;
  v10 = this[5][4];
  if (v9)
  {
    if (v10 && CCLogStream::shouldLog())
    {
      CCLogStream::logAlert(this[5][4], "[dk] %s@%d:Could not set disassoc_dly %u: error %x\n", "setDisassocDelay", 2484, v15, v9);
    }
  }

  else if (v10 && CCLogStream::shouldLog())
  {
    CCLogStream::logInfo(this[5][4], "[dk] %s@%d:disassoc_dly is set to %d\n", "setDisassocDelay", 2486, v15);
  }

  return v9;
}

uint64_t AppleBCMWLANNetAdapter::clearAdHocCreated(AppleBCMWLANNetAdapter *this)
{
  result = IO80211BssManager::isAdhocCreated(*(*(this + 5) + 24));
  if (result)
  {
    v3 = AppleBCMWLANCore::useAppleRSNSupplicant(**(this + 5));
    v4 = *(this + 5);
    if ((v3 & 1) == 0)
    {
      v16 = 1;
      v5 = (*(**v4 + 88))();
      if ((*(*v5 + 136))(v5))
      {
        v13 = this;
        v14 = AppleBCMWLANNetAdapter::handleConfigureSupplicantAsyncCallback;
        v15 = 0;
        v6 = AppleBCMWLANCommander::sendIOVarSet(*(*(this + 5) + 8), "sup_wpa");
      }

      else
      {
        v7 = *(*(this + 5) + 8);
        v13 = &v16;
        v14 = 4;
        v6 = AppleBCMWLANCommander::runIOVarSet(v7, "sup_wpa", &v13, 0, 0);
      }

      v8 = v6;
      v4 = *(this + 5);
      if (v6 && v4[4])
      {
        shouldLog = CCLogStream::shouldLog();
        v4 = *(this + 5);
        if (shouldLog)
        {
          v10 = v4[4];
          v11 = v16;
          v12 = (*(**v4 + 112))(*v4, v8);
          CCLogStream::logCrit(v10, "[dk] %s@%d: sup_wpa(%lu) failed, error %s\n", "clearAdHocCreated", 1818, v11, v12);
          v4 = *(this + 5);
        }
      }
    }

    return IO80211BssManager::setAdHocCreated(v4[3], 0);
  }

  return result;
}

uint64_t AppleBCMWLANNetAdapter::sendInternalLinkDownInd(AppleBCMWLANNetAdapter *this)
{
  memset(v4, 0, 7);
  v2 = *(*(***(this + 5) + 128))(**(this + 5));
  v4[7] = (*(v2 + 672))();
  v5 = 9;
  return AppleBCMWLANCore::postMessageInfra(**(this + 5), 0xD8u, v4, 0x10uLL);
}

uint64_t AppleBCMWLANNetAdapter::quiesce(AppleBCMWLANCore ***this)
{
  LQM = AppleBCMWLANCore::getLQM(*this[5]);
  AppleBCMWLANLQM::stopAssocTimer(LQM);
  return 0;
}

uint64_t AppleBCMWLANNetAdapter::updateRateSetSync(uint64_t a1, uint64_t a2)
{
  memset(v7, 170, 20);
  v6[0] = v7;
  v6[1] = 0x1400140014;
  v3 = (a1 + 40);
  v4 = AppleBCMWLANCommander::runIOCtlGet(*(*(a1 + 40) + 8), 114, &kNoTxPayload, v6, 0);
  if (v4)
  {
    if ((*v3)[4] && CCLogStream::shouldLog())
    {
      AppleBCMWLANNetAdapter::updateRateSetSync(v3);
    }
  }

  else
  {
    mapBcomRatesetToAppleRateset(a2, v7);
  }

  return v4;
}

uint64_t AppleBCMWLANNetAdapter::updateMCSSetSyc(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = (a1 + 40);
  v4 = *(a1 + 40);
  if (*(v4 + 66) != 1)
  {
    return 3825172759;
  }

  if (AppleBCMWLANCore::getFirmwareInterfaceVersion(*v4) >= 7)
  {
    if (AppleBCMWLANCore::getFirmwareInterfaceVersion(**v5) >= 0xF)
    {
      v10 = 88;
    }

    else
    {
      v10 = 72;
    }
  }

  else
  {
    v10 = 52;
  }

  v12 = v10;
  v13 = IOMallocZeroData();
  if (!v13)
  {
    return 3758097085;
  }

  v14 = v13;
  v16[0] = v13;
  v16[1] = v12 | ((v12 | (v12 << 16)) << 16);
  v11 = AppleBCMWLANCommander::runIOVarGet((*v5)[1], "cur_rateset", &kNoTxPayload, v16, 0);
  if (v11)
  {
    if ((*v5)[4] && CCLogStream::shouldLog())
    {
      AppleBCMWLANNetAdapter::updateMCSSetSyc(v5);
    }
  }

  else
  {
    AppleBCMWLANNetAdapter::updateMCSSet(a1, v14, a2, a3, a4);
  }

  IOFreeData();
  return v11;
}

uint64_t AppleBCMWLANNetAdapter::getAssociatedWPARSNIESync(AppleBCMWLANNetAdapter *this, unsigned __int8 *a2, unsigned int a3)
{
  if (a3)
  {
    v3 = a2;
  }

  else
  {
    v3 = 0;
  }

  if (a3)
  {
    v4 = a2 == 0;
  }

  else
  {
    v4 = 1;
  }

  v5 = a3 | 0x10101010000;
  if (v4)
  {
    v5 = 0;
  }

  v8[0] = v3;
  v8[1] = v5;
  v6 = (this + 40);
  if (AppleBCMWLANCommander::runIOVarGet(*(*(this + 5) + 8), "wpaie", &kNoTxPayload, v8, 0) && (*v6)[4] && CCLogStream::shouldLog())
  {
    AppleBCMWLANNetAdapter::getAssociatedWPARSNIESync(v6);
  }

  return 0;
}

uint64_t AppleBCMWLANNetAdapter::updateMCSSetAsyncCallback(uint64_t result, uint64_t a2, int a3, __int128 **a4)
{
  if (a3)
  {
    if (a3 == -469794537)
    {
      *(*(result + 40) + 66) = 0;
    }

    else
    {
      v5 = (result + 40);
      result = *(*(result + 40) + 32);
      if (result)
      {
        result = CCLogStream::shouldLog();
        if (result)
        {
          return AppleBCMWLANNetAdapter::updateMCSSetAsyncCallback(v5);
        }
      }
    }
  }

  else
  {
    v4 = *a4;
    if (*a4)
    {
      v8[0] = 0;
      v8[1] = 0;
      v6 = 0;
      v7 = 0;
      return AppleBCMWLANNetAdapter::updateMCSSet(result, v4, v8, &v7, &v6);
    }
  }

  return result;
}

uint64_t AppleBCMWLANNetAdapter::updateMCSSet(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v28 = 0;
  v27 = 0u;
  memset(v26, 0, sizeof(v26));
  if (AppleBCMWLANCore::getFirmwareInterfaceVersion(**(a1 + 40)) > 6)
  {
    if (AppleBCMWLANCore::getFirmwareInterfaceVersion(**(a1 + 40)) > 0xE)
    {
      v11 = a2[3];
      v26[1] = a2[2];
      v26[2] = v11;
      v27 = a2[4];
      v28 = *(a2 + 10);
    }

    else
    {
      v10 = a2[3];
      v26[1] = a2[2];
      v26[2] = v10;
      *&v27 = *(a2 + 8);
    }

    v25 = *a2;
    v26[0] = a2[1];
  }

  else
  {
    DWORD1(v25) = *a2;
    *(v26 + 8) = *(a2 + 20);
    *(&v26[1] + 8) = *(a2 + 36);
  }

  if (DWORD1(v25))
  {
    if (DWORD1(v25) >= 0xA)
    {
      v12 = 10;
    }

    else
    {
      v12 = DWORD1(v25);
    }

    memcpy((a3 + 4), v26 + 8, v12);
  }

  v13 = *(*(a1 + 40) + 24);
  IO80211BssManager::setMCSIndexSet();
  *(a4 + 4) = -1;
  if (!AppleBCMWLANCore::isFWAPIVer11nOnly(**(a1 + 40)))
  {
    if (AppleBCMWLANBssManager::getCurrentBSS(*(*(a1 + 40) + 24)))
    {
      CurrentBSS = AppleBCMWLANBssManager::getCurrentBSS(*(*(a1 + 40) + 24));
      if ((*(*CurrentBSS + 456))(CurrentBSS))
      {
        v15 = 0;
        v16 = *(a4 + 4);
        do
        {
          v17 = vand_s8(vmovn_s32(vtstq_s32(vdupq_n_s32(*(&v26[1] + v15 + 8)), xmmword_10033B160)), 0x1000100010001);
          v17.i16[3] = 0;
          v18 = vaddv_s16(v17);
          if ((v18 - 1) <= 2u)
          {
            v16 = v16 & ~(3 << v15) | (((v18 - 1) & 3) << v15);
            *(a4 + 4) = v16;
          }

          v15 += 2;
        }

        while (v15 != 16);
      }
    }
  }

  v19 = *(*(a1 + 40) + 24);
  IO80211BssManager::setVHTMCSIndexSet();
  if (!AppleBCMWLANCore::isFWAPIVer11nOnly(**(a1 + 40)) && AppleBCMWLANBssManager::getCurrentBSS(*(*(a1 + 40) + 24)) && (v20 = AppleBCMWLANBssManager::getCurrentBSS(*(*(a1 + 40) + 24)), (*(*v20 + 464))(v20)))
  {
    v21 = 0;
    v22 = *(a5 + 4);
    do
    {
      v22 = v22 & ~(3 << v21) | ((*(&v26[2] + v21 + 8) & 3) << v21);
      v21 += 2;
    }

    while (v21 != 16);
    *(a5 + 4) = v22;
  }

  else
  {
    *(a5 + 4) = -1;
  }

  v23 = *(*(a1 + 40) + 24);

  return IO80211BssManager::setHEMCSIndexSet(v23, a5);
}

uint64_t AppleBCMWLANNetAdapter::updateRateSetAsyncCallback(uint64_t result, uint64_t a2, int a3, __int128 **a4)
{
  v4 = result;
  if (a3)
  {
    v5 = (result + 40);
    result = *(*(result + 40) + 32);
    if (result)
    {
      result = CCLogStream::shouldLog();
      if (result)
      {
        return AppleBCMWLANNetAdapter::updateRateSetAsyncCallback(v5);
      }
    }
  }

  else
  {
    v6 = *a4;
    if (*a4)
    {
      v7 = *v6;
      v10 = *(v6 + 4);
      v9 = v7;
      *&v7 = 0xAAAAAAAAAAAAAAAALL;
      *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
      *&v12[12] = v7;
      v11[9] = v7;
      *v12 = v7;
      v11[7] = v7;
      v11[8] = v7;
      v11[5] = v7;
      v11[6] = v7;
      v11[3] = v7;
      v11[4] = v7;
      v11[1] = v7;
      v11[2] = v7;
      v11[0] = v7;
      mapBcomRatesetToAppleRateset(v11, &v9);
      v8 = *(*(v4 + 40) + 24);
      return IO80211BssManager::setRateSet();
    }
  }

  return result;
}

uint64_t AppleBCMWLANNetAdapter::configurePM(uint64_t a1, int a2)
{
  v10 = 2 * (a2 != 0);
  v9[0] = a1;
  v9[1] = AppleBCMWLANNetAdapter::setPowerManagementAsyncCallback;
  v9[2] = 0;
  v2 = (a1 + 40);
  v3 = *(*(a1 + 40) + 8);
  v8[0] = &v10;
  v8[1] = 4;
  v7 = 262148;
  v4 = AppleBCMWLANCommander::sendIOCtlSet(v3, 86, v8, &v7, v9, 0);
  v5 = (*v2)[4];
  if (v4)
  {
    if (v5 && CCLogStream::shouldLog())
    {
      AppleBCMWLANNetAdapter::configurePM(v2);
    }
  }

  else if (v5 && CCLogStream::shouldLog())
  {
    CCLogStream::logAlert((*v2)[4], "[dk] %s@%d: Powersave mode to: %ld\n", "configurePM", 1797, v10);
  }

  return v4;
}

uint64_t AppleBCMWLANNetAdapter::configureLifeTime(AppleBCMWLANNetAdapter *this)
{
  v1 = (this + 40);
  result = AppleBCMWLANCommander::sendIOVarSet(*(*(this + 5) + 8), "lifetime");
  if (result)
  {
    if ((*v1)[4])
    {
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANNetAdapter::configureLifeTime(v1);
      }
    }

    return 6;
  }

  return result;
}

uint64_t AppleBCMWLANNetAdapter::setPowerManagementAsyncCallback(uint64_t result, uint64_t a2, int a3)
{
  if (a3)
  {
    v3 = (result + 40);
    result = *(*(result + 40) + 32);
    if (result)
    {
      result = CCLogStream::shouldLog();
      if (result)
      {
        return AppleBCMWLANNetAdapter::setPowerManagementAsyncCallback(v3);
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANNetAdapter::handleConfigureSupplicantAsyncCallback(uint64_t result, uint64_t a2, int a3)
{
  if (a3)
  {
    v3 = (result + 40);
    result = *(*(result + 40) + 32);
    if (result)
    {
      result = CCLogStream::shouldLog();
      if (result)
      {
        return AppleBCMWLANNetAdapter::handleConfigureSupplicantAsyncCallback(v3);
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANNetAdapter::handleBeaconMuteMitigation(uint64_t a1, uint64_t a2)
{
  v4 = (a1 + 40);
  v3 = *(a1 + 40);
  v5 = *(v3 + 68);
  v27 = 0xAAAAAAAAAAAAAAAALL;
  v28 = 0xAAAAAAAAAAAAAAAALL;
  if (*(v3 + 32) && CCLogStream::shouldLog())
  {
    AppleBCMWLANNetAdapter::handleBeaconMuteMitigation(v4, a2);
  }

  v6 = 0;
  v7 = *(a2 + 12);
  if (v7 > 2)
  {
    if (v7 == 3)
    {
      if ((*v4)[4] && CCLogStream::shouldLog())
      {
        AppleBCMWLANNetAdapter::handleBeaconMuteMitigation(v4, a2, (a2 + 12));
      }

      v6 = 3;
    }

    else if (v7 == 4)
    {
      if ((*v4)[4] && CCLogStream::shouldLog())
      {
        AppleBCMWLANNetAdapter::handleBeaconMuteMitigation(v4);
      }

      v6 = 4;
    }
  }

  else if (v7 == 1)
  {
    if ((*v4)[4] && CCLogStream::shouldLog())
    {
      AppleBCMWLANNetAdapter::handleBeaconMuteMitigation(v4);
    }

    v6 = 1;
  }

  else if (v7 == 2)
  {
    if ((*v4)[4] && CCLogStream::shouldLog())
    {
      AppleBCMWLANNetAdapter::handleBeaconMuteMitigation(v4);
    }

    v6 = 2;
  }

  v8 = *(a2 + 20);
  if (v5 == 2)
  {
    if (v8 <= 7 && (*v4)[4] && (CCLogStream::shouldLog() & 1) != 0)
    {
      v9 = 1866;
LABEL_58:
      CCLogStream::logAlert((*v4)[4], "[dk] %s@%d:ERROR: Invalid miti event data length %d,\n", "handleBeaconMuteMitigation", v9, *(a2 + 20));
    }
  }

  else if (v8 <= 7 && (*v4)[4] && CCLogStream::shouldLog())
  {
    v9 = 1873;
    goto LABEL_58;
  }

  v10 = *(a2 + 52);
  v11 = *v4;
  if ((*v4)[4])
  {
    shouldLog = CCLogStream::shouldLog();
    v11 = *v4;
    if (shouldLog)
    {
      v26 = v11[4];
      v14 = *(a2 + 8);
      v15 = stringFromStatusInEvent(*(a2 + 8), *(a2 + 4));
      v23 = *(a2 + 2);
      v24 = *(a2 + 12);
      v25 = v15;
      v22 = *(a2 + 16);
      if (IO80211_io80211isSensitiveInfoAllowed())
      {
        v16 = *(a2 + 24);
      }

      else
      {
        v16 = 0;
      }

      if (IO80211_io80211isSensitiveInfoAllowed())
      {
        v17 = *(a2 + 25);
      }

      else
      {
        v17 = 0;
      }

      if (IO80211_io80211isSensitiveInfoAllowed())
      {
        v18 = *(a2 + 26);
      }

      else
      {
        v18 = 0;
      }

      if (IO80211_io80211isSensitiveInfoAllowed())
      {
        v19 = *(a2 + 27);
      }

      else
      {
        v19 = 0;
      }

      if (IO80211_io80211isSensitiveInfoAllowed())
      {
        v20 = *(a2 + 28);
      }

      else
      {
        v20 = 0;
      }

      if (IO80211_io80211isSensitiveInfoAllowed())
      {
        v21 = *(a2 + 29);
      }

      else
      {
        v21 = 0;
      }

      CCLogStream::logNotice(v26, "[dk] %s@%d:Updating Bcn miti status = %lu %s, reason = %lu, flags = 0x%x, authtype = %lu, addr = %02x:%02x:%02x:%02x:%02x:%02x\n", "handleBeaconMuteMitigation", 1880, v14, v25, v24, v23, v22, v16, v17, v18, v19, v20, v21);
      v11 = *v4;
    }
  }

  LODWORD(v27) = *(a2 + 24);
  WORD2(v27) = *(a2 + 28);
  WORD2(v28) = v10;
  LODWORD(v28) = v6;
  result = (*(**v11 + 128))();
  if (result)
  {
    return AppleBCMWLANCore::postMessageInfra(**v4, 0xCAu, &v27, 0x10uLL);
  }

  return result;
}

{
  v15 = *(*a1 + 32);
  v3 = *(a2 + 8);
  v14 = stringFromStatusInEvent(*(a2 + 8), *(a2 + 4));
  v4 = *(a2 + 2);
  v5 = *(a2 + 12);
  v6 = *(a2 + 16);
  if (IO80211_io80211isSensitiveInfoAllowed())
  {
    v7 = *(a2 + 24);
  }

  else
  {
    v7 = 0;
  }

  if (IO80211_io80211isSensitiveInfoAllowed())
  {
    v8 = *(a2 + 25);
  }

  else
  {
    v8 = 0;
  }

  if (IO80211_io80211isSensitiveInfoAllowed())
  {
    v9 = *(a2 + 26);
  }

  else
  {
    v9 = 0;
  }

  if (IO80211_io80211isSensitiveInfoAllowed())
  {
    v10 = *(a2 + 27);
  }

  else
  {
    v10 = 0;
  }

  if (IO80211_io80211isSensitiveInfoAllowed())
  {
    v11 = *(a2 + 28);
  }

  else
  {
    v11 = 0;
  }

  if (IO80211_io80211isSensitiveInfoAllowed())
  {
    v12 = *(a2 + 29);
  }

  else
  {
    v12 = 0;
  }

  return CCLogStream::logNotice(v15, "[dk] %s@%d: status = %lu %s, reason = %lu, flags = 0x%x, authtype = %lu, addr = %02x:%02x:%02x:%02x:%02x:%02x\n", "handleBeaconMuteMitigation", 1834, v3, v14, v5, v4, v6, v7, v8, v9, v10, v11, v12);
}

uint64_t AppleBCMWLANNetAdapter::handleBssTransEvent(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 20);
  v5 = *(a2 + 8);
  if (v5 == 8)
  {
    if (v4 > 3)
    {
      v12 = *(result + 40);
      result = v12[4];
      if (result)
      {
        result = CCLogStream::shouldLog();
        v12 = *(v3 + 40);
        if (result)
        {
          result = CCLogStream::logNotice(v12[4], "[dk] %s@%d:Sent BSS Transition Response: Category Code = %d Action Code = %d dialog Token = %d Status = %d \n", "handleBssTransEvent", 1938, *(a2 + 48), *(a2 + 49), *(a2 + 50), *(a2 + 51));
          v12 = *(v3 + 40);
        }
      }

      if (*v12)
      {
        if (v12[4])
        {
          shouldLog = CCLogStream::shouldLog();
          v12 = *(v3 + 40);
          if (shouldLog)
          {
            CCLogStream::logNotice(v12[4], "[dk] %s@%d:Post BTM Response APPLE80211_M_ACTION_FRAME event, size = %lu \n", "handleBssTransEvent", 1941, 5);
            v12 = *(v3 + 40);
          }
        }

        result = (*(**v12 + 128))();
        if (result)
        {
          v9 = **(v3 + 40);
          v10 = (a2 + 48);
          v11 = 5;
          goto LABEL_29;
        }
      }
    }

    else
    {
      result = *(*(result + 40) + 32);
      if (result)
      {
        result = CCLogStream::shouldLog();
        if (result)
        {
          return CCLogStream::logAlert(*(*(v3 + 40) + 32), "[dk] %s@%d:Event msg length is too short %u", "handleBssTransEvent", 1929, *(a2 + 20));
        }
      }
    }
  }

  else if (v5 == 7)
  {
    if (v4 <= 6)
    {
      result = *(*(result + 40) + 32);
      if (result)
      {
        result = CCLogStream::shouldLog();
        if (result)
        {
          return CCLogStream::logAlert(*(*(v3 + 40) + 32), "[dk] %s@%d:Event msg length is too short %u", "handleBssTransEvent", 1902, *(a2 + 20));
        }
      }

      return result;
    }

    v7 = *(result + 40);
    if (*v7)
    {
      if (v7[4])
      {
        v8 = CCLogStream::shouldLog();
        v7 = *(v3 + 40);
        if (v8)
        {
          CCLogStream::logNotice(v7[4], "[dk] %s@%d:Post BTM Request APPLE80211_M_ACTION_FRAME event, size = %d\n", "handleBssTransEvent", 1918, v4);
          v7 = *(v3 + 40);
        }
      }

      result = (*(**v7 + 128))();
      if (result)
      {
        v9 = **(v3 + 40);
        v10 = (a2 + 48);
        v11 = v4;
LABEL_29:

        return AppleBCMWLANCore::postMessageInfra(v9, 0x8Fu, v10, v11);
      }
    }
  }

  else
  {
    v6 = result + 40;
    result = *(*(result + 40) + 32);
    if (result)
    {
      result = CCLogStream::shouldLog();
      if (result)
      {
        return AppleBCMWLANNetAdapter::handleBssTransEvent(v6);
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANNetAdapter::dumpStats(AppleBCMWLANCore ***this, char *a2, unsigned int a3, int a4)
{
  isAssociated = AppleBCMWLANCore::isAssociated(*this[5]);
  v9 = this[5];
  if (isAssociated)
  {
    LQM = AppleBCMWLANCore::getLQM(*v9);

    return AppleBCMWLANLQM::dumpStats(LQM, a2, a3, a4);
  }

  else
  {
    v12 = v9[4];
    return IO80211Print();
  }
}

uint64_t AppleBCMWLANNetAdapter::handleLimitedAggregationAsyncCallback(uint64_t result, uint64_t a2, int a3)
{
  if (a3)
  {
    v3 = (result + 40);
    result = *(*(result + 40) + 32);
    if (result)
    {
      result = CCLogStream::shouldLog();
      if (result)
      {
        return AppleBCMWLANNetAdapter::handleLimitedAggregationAsyncCallback(v3);
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANNetAdapter::setBeaconMuteMitigationVersion(AppleBCMWLANCore ***this)
{
  v1 = (this + 5);
  if (AppleBCMWLANCore::checkForBeaconMuteMitiSupport(*this[5]))
  {
    v10 = 0;
    v9 = 0;
    v8 = 1048578;
    v7[0] = &v8;
    v7[1] = 0x1000100010;
    v2 = *(*v1 + 8);
    v6[0] = &v8;
    v6[1] = 16;
    v3 = AppleBCMWLANCommander::runIOVarGet(v2, "bcn_mute_miti_config", v6, v7, 0);
    if (v3)
    {
      if (*(*v1 + 32) && CCLogStream::shouldLog())
      {
        AppleBCMWLANNetAdapter::setBeaconMuteMitigationVersion(v1);
      }
    }

    else
    {
      v4 = *v1;
      if (v8 == 1)
      {
        *(v4 + 68) = v8;
        if (*(*v1 + 32) && CCLogStream::shouldLog())
        {
          AppleBCMWLANNetAdapter::setBeaconMuteMitigationVersion(v1);
        }
      }

      else
      {
        *(v4 + 68) = 2;
        if (*(*v1 + 32) && CCLogStream::shouldLog())
        {
          AppleBCMWLANNetAdapter::setBeaconMuteMitigationVersion(v1);
        }
      }

      if (*(*v1 + 32) && CCLogStream::shouldLog())
      {
        AppleBCMWLANNetAdapter::setBeaconMuteMitigationVersion(v1);
      }
    }
  }

  else
  {
    v3 = 3758097095;
    if (*(*v1 + 32) && CCLogStream::shouldLog())
    {
      AppleBCMWLANNetAdapter::setBeaconMuteMitigationVersion(v1);
    }
  }

  return v3;
}

uint64_t AppleBCMWLANNetAdapter::handleBeaconMuteMitiAsyncCallBack(uint64_t result, uint64_t a2, int a3)
{
  if (a3)
  {
    v3 = (result + 40);
    result = *(*(result + 40) + 32);
    if (result)
    {
      result = CCLogStream::shouldLog();
      if (result)
      {
        return AppleBCMWLANNetAdapter::handleBeaconMuteMitiAsyncCallBack(v3);
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANNetAdapter::configureACMOverrideForFastLaneAsyncCallback(uint64_t result, uint64_t a2, int a3)
{
  if (a3)
  {
    v3 = (result + 40);
    result = *(*(result + 40) + 32);
    if (result)
    {
      result = CCLogStream::shouldLog();
      if (result)
      {
        return AppleBCMWLANNetAdapter::configureACMOverrideForFastLaneAsyncCallback(v3);
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANNetAdapter::handleActionFrameCallback(uint64_t a1, uint64_t a2, int a3)
{
  v3 = (a1 + 40);
  result = *(*(a1 + 40) + 32);
  if (a3)
  {
    if (result)
    {
      result = CCLogStream::shouldLog();
      if (result)
      {
        return AppleBCMWLANNetAdapter::handleActionFrameCallback(v3);
      }
    }
  }

  else if (result)
  {
    result = CCLogStream::shouldLog();
    if (result)
    {
      return AppleBCMWLANNetAdapter::handleActionFrameCallback(v3);
    }
  }

  return result;
}

uint64_t AppleBCMWLANNetAdapter::sendActionFrameV2(AppleBCMWLANNetAdapter *this, ether_addr *a2, unsigned __int8 *a3, unsigned int a4, unsigned __int8 *a5, unsigned int a6, int a7, int a8)
{
  v9 = a6 + a4;
  if (a6 + a4 < 0x708)
  {
    if (a5)
    {
      __n = a4;
      v18 = a4 + a6 + 52;
      v19 = IOMallocZeroData();
      if (v19)
      {
        v20 = v19;
        v21 = 0;
        *v19 = 2;
        *(v19 + 2) = v18;
        *(v19 + 4) = a8;
        *(v19 + 8) = a7;
        v22 = *a2->octet;
        *(v19 + 16) = *&a2->octet[4];
        *(v19 + 12) = v22;
        *(v19 + 22) = a4 + a6 + 32;
        *(v19 + 24) = 32;
        *(v19 + 32) = 1;
        *(v19 + 48) = 0;
        *(v19 + 50) = v9;
        v23 = *a2->octet;
        *(v19 + 30) = *&a2->octet[4];
        *(v19 + 26) = v23;
        if (a3 && a4)
        {
          memcpy((v19 + 52), a3, __n);
          v21 = __n;
        }

        if (a6)
        {
          memcpy((v20 + v21 + 52), a5, a6);
        }

        if (v18)
        {
          v24 = v20;
        }

        else
        {
          v24 = 0;
        }

        v33[0] = v24;
        v33[1] = v18;
        v25 = (*(***(this + 5) + 88))(**(this + 5));
        if ((*(*v25 + 136))(v25))
        {
          v26 = AppleBCMWLANCommander::sendIOVarSet(*(*(this + 5) + 8), "actframe");
        }

        else
        {
          v26 = AppleBCMWLANCommander::runIOVarSet(*(*(this + 5) + 8), "actframe", v33, 0, 0);
        }

        v10 = v26;
        IOFreeData();
      }

      else
      {
        v29 = *(this + 5);
        v28 = this + 40;
        if (*(v29 + 32))
        {
          v10 = 3758097085;
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANNetAdapter::sendActionFrameV2(v28);
          }
        }

        else
        {
          return 3758097085;
        }
      }
    }

    else
    {
      v10 = 3758097084;
      v27 = this + 40;
      if (*(*(this + 5) + 32) && CCLogStream::shouldLog())
      {
        AppleBCMWLANNetAdapter::sendActionFrameV2(v27);
      }
    }
  }

  else
  {
    v10 = 3758097084;
    v11 = this + 40;
    if (*(*(this + 5) + 32) && CCLogStream::shouldLog())
    {
      AppleBCMWLANNetAdapter::sendActionFrameV2(v11);
    }
  }

  return v10;
}

uint64_t AppleBCMWLANNetAdapter::setDisassocDelayAsyncCallback(uint64_t result, uint64_t a2, int a3)
{
  if (a3)
  {
    v3 = (result + 40);
    result = *(*(result + 40) + 32);
    if (result)
    {
      result = CCLogStream::shouldLog();
      if (result)
      {
        return AppleBCMWLANNetAdapter::setDisassocDelayAsyncCallback(v3);
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANNetAdapter::handleConfigureLifeTimeAsyncCallBack(uint64_t result, uint64_t a2, int a3)
{
  if (a3)
  {
    v3 = (result + 40);
    result = *(*(result + 40) + 32);
    if (result)
    {
      result = CCLogStream::shouldLog();
      if (result)
      {
        return AppleBCMWLANNetAdapter::handleConfigureLifeTimeAsyncCallBack(v3);
      }
    }
  }

  return result;
}

uint64_t *OUTLINED_FUNCTION_0_0(uint64_t ***a1)
{
  v1 = (*a1)[4];
  result = **a1;
  v3 = *result;
  return result;
}

uint64_t *OUTLINED_FUNCTION_1_1(uint64_t ***a1)
{
  v1 = (*a1)[4];
  result = **a1;
  v3 = *result;
  return result;
}

uint64_t *OUTLINED_FUNCTION_2_1@<X0>(uint64_t **a1@<X8>)
{
  v1 = a1[4];
  result = *a1;
  v3 = **a1;
  return result;
}

void OUTLINED_FUNCTION_15_0(void *a1, os_log_s *a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint8_t buf)
{

  _os_log_impl(a1, a2, OS_LOG_TYPE_DEFAULT, a4, &buf, 0x18u);
}

uint64_t AppleBCMWLANInfraProtocol::free(AppleBCMWLANInfraProtocol *this)
{
  **(this + 17) = 0;
  v2 = *(this + 17);
  if (v2)
  {
    IOFree(v2, 8uLL);
    *(this + 17) = 0;
  }

  return IO80211InfraInterface::free(this);
}

uint64_t non-virtual thunk toAppleBCMWLANInfraProtocol::getCHANNEL(uint64_t a1)
{
  return (*(***(a1 + 24) + 584))();
}

{
  return (*(***(a1 + 8) + 584))();
}

uint64_t non-virtual thunk toAppleBCMWLANInfraProtocol::getPOWERSAVE(uint64_t a1)
{
  return (*(***(a1 + 24) + 696))();
}

{
  return (*(***(a1 + 8) + 696))();
}

uint64_t non-virtual thunk toAppleBCMWLANInfraProtocol::getTXPOWER(uint64_t a1)
{
  return (*(***(a1 + 24) + 736))();
}

{
  return (*(***(a1 + 8) + 736))();
}

uint64_t non-virtual thunk toAppleBCMWLANInfraProtocol::getRATE(uint64_t a1)
{
  return (*(***(a1 + 24) + 640))();
}

{
  return (*(***(a1 + 8) + 640))();
}

uint64_t non-virtual thunk toAppleBCMWLANInfraProtocol::getOP_MODE(uint64_t a1)
{
  return (*(***(a1 + 24) + 608))();
}

{
  return (*(***(a1 + 8) + 608))();
}

uint64_t non-virtual thunk toAppleBCMWLANInfraProtocol::getRSSI(uint64_t a1)
{
  return (*(***(a1 + 24) + 616))();
}

{
  return (*(***(a1 + 8) + 616))();
}

uint64_t non-virtual thunk toAppleBCMWLANInfraProtocol::getSUPPORTED_CHANNELS(uint64_t a1)
{
  return (*(***(a1 + 24) + 808))();
}

{
  return (*(***(a1 + 8) + 808))();
}

uint64_t non-virtual thunk toAppleBCMWLANInfraProtocol::getRSN_XE(uint64_t a1)
{
  return (*(***(a1 + 24) + 840))();
}

{
  return (*(***(a1 + 8) + 840))();
}

uint64_t non-virtual thunk toAppleBCMWLANInfraProtocol::getGUARD_INTERVAL(uint64_t a1)
{
  return (*(***(a1 + 24) + 976))();
}

{
  return (*(***(a1 + 8) + 976))();
}

uint64_t non-virtual thunk toAppleBCMWLANInfraProtocol::getMCS(uint64_t a1)
{
  return (*(***(a1 + 24) + 952))();
}

{
  return (*(***(a1 + 8) + 952))();
}

uint64_t non-virtual thunk toAppleBCMWLANInfraProtocol::getPOWER_DEBUG_INFO(uint64_t a1)
{
  return (*(***(a1 + 24) + 856))();
}

{
  return (*(***(a1 + 8) + 856))();
}

uint64_t non-virtual thunk toAppleBCMWLANInfraProtocol::getHT_CAPABILITY(uint64_t a1)
{
  return (*(***(a1 + 24) + 864))();
}

{
  return (*(***(a1 + 8) + 864))();
}

uint64_t non-virtual thunk toAppleBCMWLANInfraProtocol::getMCS_VHT(uint64_t a1)
{
  return (*(***(a1 + 24) + 960))();
}

{
  return (*(***(a1 + 8) + 960))();
}

uint64_t non-virtual thunk toAppleBCMWLANInfraProtocol::getCHANNELS_INFO(uint64_t a1)
{
  return (*(***(a1 + 24) + 1032))();
}

{
  return (*(***(a1 + 8) + 1032))();
}

uint64_t non-virtual thunk toAppleBCMWLANInfraProtocol::getVHT_CAPABILITY(uint64_t a1)
{
  return (*(***(a1 + 24) + 880))();
}

{
  return (*(***(a1 + 8) + 880))();
}

uint64_t non-virtual thunk toAppleBCMWLANInfraProtocol::getHE_CAPABILITY(uint64_t a1)
{
  return (*(***(a1 + 24) + 888))();
}

{
  return (*(***(a1 + 8) + 888))();
}

uint64_t non-virtual thunk toAppleBCMWLANInfraProtocol::getROAM_PROFILE(uint64_t a1)
{
  return (*(***(a1 + 24) + 1896))();
}

{
  return (*(***(a1 + 8) + 1896))();
}

uint64_t non-virtual thunk toAppleBCMWLANInfraProtocol::getDBG_GUARD_TIME_PARAMS(uint64_t a1)
{
  return (*(***(a1 + 24) + 720))();
}

{
  return (*(***(a1 + 8) + 720))();
}

uint64_t non-virtual thunk toAppleBCMWLANInfraProtocol::getLEAKY_AP_STATS_MODE(uint64_t a1)
{
  return (*(***(a1 + 24) + 728))();
}

{
  return (*(***(a1 + 8) + 728))();
}

uint64_t non-virtual thunk toAppleBCMWLANInfraProtocol::getCOUNTRY_CHANNELS(uint64_t a1)
{
  return (*(***(a1 + 24) + 816))();
}

{
  return (*(***(a1 + 8) + 816))();
}

uint64_t non-virtual thunk toAppleBCMWLANInfraProtocol::getPRIVATE_MAC(uint64_t a1)
{
  return (*(***(a1 + 24) + 1768))();
}

{
  return (*(***(a1 + 8) + 1768))();
}

uint64_t non-virtual thunk toAppleBCMWLANInfraProtocol::getTKO_PARAMS(uint64_t a1)
{
  return (*(***(a1 + 24) + 1880))();
}

{
  return (*(***(a1 + 8) + 1880))();
}

uint64_t non-virtual thunk toAppleBCMWLANInfraProtocol::getTKO_DUMP(uint64_t a1)
{
  return (*(***(a1 + 24) + 1888))();
}

{
  return (*(***(a1 + 8) + 1888))();
}

uint64_t non-virtual thunk toAppleBCMWLANInfraProtocol::getHW_SUPPORTED_CHANNELS(uint64_t a1)
{
  return (*(***(a1 + 24) + 800))();
}

{
  return (*(***(a1 + 8) + 800))();
}

uint64_t non-virtual thunk toAppleBCMWLANInfraProtocol::getBTCOEX_PROFILE(uint64_t a1)
{
  return (*(***(a1 + 24) + 912))();
}

{
  return (*(***(a1 + 8) + 912))();
}

uint64_t non-virtual thunk toAppleBCMWLANInfraProtocol::getBTCOEX_PROFILE_ACTIVE(uint64_t a1)
{
  return (*(***(a1 + 24) + 944))();
}

{
  return (*(***(a1 + 8) + 944))();
}

uint64_t non-virtual thunk toAppleBCMWLANInfraProtocol::getTRAP_INFO(uint64_t a1, unsigned __int8 *a2)
{
  return AppleBCMWLANCore::getTRAP_INFO(**(a1 + 24), a2);
}

{
  return AppleBCMWLANCore::getTRAP_INFO(**(a1 + 8), a2);
}

uint64_t non-virtual thunk toAppleBCMWLANInfraProtocol::getTHERMAL_INDEX(uint64_t a1)
{
  return (*(***(a1 + 24) + 744))();
}

{
  return (*(***(a1 + 8) + 744))();
}

uint64_t non-virtual thunk toAppleBCMWLANInfraProtocol::getMAX_NSS_FOR_AP(uint64_t a1)
{
  return (*(***(a1 + 24) + 992))();
}

{
  return (*(***(a1 + 8) + 992))();
}

uint64_t non-virtual thunk toAppleBCMWLANInfraProtocol::getBTCOEX_2G_CHAIN_DISABLE(uint64_t a1)
{
  return (*(***(a1 + 24) + 1000))();
}

{
  return (*(***(a1 + 8) + 1000))();
}

uint64_t non-virtual thunk toAppleBCMWLANInfraProtocol::getPOWER_BUDGET(uint64_t a1)
{
  return (*(***(a1 + 24) + 760))();
}

{
  return (*(***(a1 + 8) + 760))();
}

uint64_t non-virtual thunk toAppleBCMWLANInfraProtocol::getWIFI_NOISE_PER_ANT(uint64_t a1)
{
  return (*(***(a1 + 24) + 1072))();
}

{
  return (*(***(a1 + 8) + 1072))();
}

uint64_t non-virtual thunk toAppleBCMWLANInfraProtocol::getLQM_CONFIG(uint64_t a1)
{
  return (*(***(a1 + 24) + 1080))();
}

{
  return (*(***(a1 + 8) + 1080))();
}

uint64_t non-virtual thunk toAppleBCMWLANInfraProtocol::getTRAP_CRASHTRACER_MINI_DUMP(uint64_t a1, _DWORD *a2)
{
  return AppleBCMWLANCore::getTRAP_CRASHTRACER_MINI_DUMP(**(a1 + 24), a2);
}

{
  return AppleBCMWLANCore::getTRAP_CRASHTRACER_MINI_DUMP(**(a1 + 8), a2);
}

uint64_t non-virtual thunk toAppleBCMWLANInfraProtocol::getBEACON_INFO(uint64_t a1)
{
  return (*(***(a1 + 24) + 752))();
}

{
  return (*(***(a1 + 8) + 752))();
}

uint64_t non-virtual thunk toAppleBCMWLANInfraProtocol::getCHIP_POWER_RANGE(uint64_t a1)
{
  return (*(***(a1 + 24) + 784))();
}

{
  return (*(***(a1 + 8) + 784))();
}

uint64_t non-virtual thunk toAppleBCMWLANInfraProtocol::getNSS(uint64_t a1)
{
  return (*(***(a1 + 24) + 1816))();
}

{
  return (*(***(a1 + 8) + 1816))();
}

uint64_t non-virtual thunk toAppleBCMWLANInfraProtocol::getHW_ADDR(uint64_t a1)
{
  return (*(***(a1 + 24) + 792))();
}

{
  return (*(***(a1 + 8) + 792))();
}

uint64_t non-virtual thunk toAppleBCMWLANInfraProtocol::getCHIP_DIAGS(uint64_t a1)
{
  return (*(***(a1 + 24) + 688))();
}

{
  return (*(***(a1 + 8) + 688))();
}

uint64_t non-virtual thunk toAppleBCMWLANInfraProtocol::getMIMO_STATUS(uint64_t a1, uint64_t a2)
{
  return AppleBCMWLANCore::getMIMO_STATUS(**(a1 + 24), a2);
}

{
  return AppleBCMWLANCore::getMIMO_STATUS(**(a1 + 8), a2);
}

uint64_t non-virtual thunk toAppleBCMWLANInfraProtocol::getCUR_PMK(uint64_t a1, uint64_t a2)
{
  return AppleBCMWLANCore::getCUR_PMK(**(a1 + 24), a2);
}

{
  return AppleBCMWLANCore::getCUR_PMK(**(a1 + 8), a2);
}

uint64_t non-virtual thunk toAppleBCMWLANInfraProtocol::getDYNSAR_DETAIL(uint64_t a1)
{
  return (*(***(a1 + 24) + 824))();
}

{
  return (*(***(a1 + 8) + 824))();
}

uint64_t non-virtual thunk toAppleBCMWLANInfraProtocol::getLQM_SUMMARY(uint64_t a1, uint64_t a2)
{
  return AppleBCMWLANCore::getLQM_SUMMARY(**(a1 + 24), a2);
}

{
  return AppleBCMWLANCore::getLQM_SUMMARY(**(a1 + 8), a2);
}

uint64_t non-virtual thunk toAppleBCMWLANInfraProtocol::getTIMESYNC_INFO(uint64_t a1)
{
  return AppleBCMWLANCore::getTIMESYNC_INFO(**(a1 + 24));
}

{
  return AppleBCMWLANCore::getTIMESYNC_INFO(**(a1 + 8));
}

uint64_t non-virtual thunk toAppleBCMWLANInfraProtocol::getSENSING_DATA(uint64_t a1)
{
  return (*(***(a1 + 24) + 1864))();
}

{
  return (*(***(a1 + 8) + 1864))();
}

uint64_t non-virtual thunk toAppleBCMWLANInfraProtocol::getCHIP_COUNTER_STATS(uint64_t a1, uint64_t a2)
{
  return AppleBCMWLANCore::getCHIP_COUNTER_STATS(**(a1 + 24), a2);
}

{
  return AppleBCMWLANCore::getCHIP_COUNTER_STATS(**(a1 + 8), a2);
}

uint64_t non-virtual thunk toAppleBCMWLANInfraProtocol::getAWDL_RSDB_CAPS(uint64_t a1)
{
  return (*(***(a1 + 24) + 904))();
}

{
  return (*(***(a1 + 8) + 904))();
}

uint64_t non-virtual thunk toAppleBCMWLANInfraProtocol::getBSS_BLACKLIST(uint64_t a1)
{
  return AppleBCMWLANCore::getBSS_BLACKLIST(**(a1 + 24));
}

{
  return AppleBCMWLANCore::getBSS_BLACKLIST(**(a1 + 8));
}

uint64_t non-virtual thunk toAppleBCMWLANInfraProtocol::getTXRX_CHAIN_INFO(uint64_t a1)
{
  v1 = **(a1 + 24);
  return AppleBCMWLANCore::getTXRX_CHAIN_INFO();
}

{
  v1 = **(a1 + 8);
  return AppleBCMWLANCore::getTXRX_CHAIN_INFO();
}

uint64_t non-virtual thunk toAppleBCMWLANInfraProtocol::getSLOW_WIFI_FEATURE_ENABLED(uint64_t a1)
{
  return (*(***(a1 + 24) + 1104))();
}

{
  return (*(***(a1 + 8) + 1104))();
}

uint64_t non-virtual thunk toAppleBCMWLANInfraProtocol::getSIB_COEX_STATUS(uint64_t a1)
{
  return (*(***(a1 + 24) + 1112))();
}

{
  return (*(***(a1 + 8) + 1112))();
}

uint64_t non-virtual thunk toAppleBCMWLANInfraProtocol::getWCL_FW_HOT_CHANNELS(uint64_t a1)
{
  return (*(***(a1 + 24) + 1904))();
}

{
  return (*(***(a1 + 8) + 1904))();
}

uint64_t non-virtual thunk toAppleBCMWLANInfraProtocol::getWCL_LOW_LATENCY_INFO(uint64_t a1)
{
  return (*(***(a1 + 24) + 1040))();
}

{
  return (*(***(a1 + 8) + 1040))();
}

uint64_t non-virtual thunk toAppleBCMWLANInfraProtocol::getWCL_BSS_INFO(uint64_t a1)
{
  return (*(***(a1 + 24) + 1048))();
}

{
  return (*(***(a1 + 8) + 1048))();
}

uint64_t non-virtual thunk toAppleBCMWLANInfraProtocol::getWCL_EXTENDED_BSS_INFO(uint64_t a1)
{
  return (*(***(a1 + 24) + 1056))();
}

{
  return (*(***(a1 + 8) + 1056))();
}

uint64_t non-virtual thunk toAppleBCMWLANInfraProtocol::getWCL_TRAFFIC_COUNTERS(uint64_t a1)
{
  return (*(***(a1 + 24) + 1064))();
}

{
  return (*(***(a1 + 8) + 1064))();
}

uint64_t non-virtual thunk toAppleBCMWLANInfraProtocol::getWCL_GET_TX_BLANKING_STATUS(AppleBCMWLANCore ***this, unsigned int *a2)
{
  return AppleBCMWLANCore::getWCL_GET_TX_BLANKING_STATUS(*this[3], a2);
}

{
  return AppleBCMWLANCore::getWCL_GET_TX_BLANKING_STATUS(*this[1], a2);
}

uint64_t non-virtual thunk toAppleBCMWLANInfraProtocol::getWCL_CHANNELS_INFO(uint64_t a1, uint64_t a2)
{
  return AppleBCMWLANCore::getWCL_CHANNELS_INFO(**(a1 + 24), a2);
}

{
  return AppleBCMWLANCore::getWCL_CHANNELS_INFO(**(a1 + 8), a2);
}

uint64_t non-virtual thunk toAppleBCMWLANInfraProtocol::getWCL_LOW_LATENCY_INFO_STATS(uint64_t a1, uint64_t a2)
{
  return AppleBCMWLANCore::getWCL_LOW_LATENCY_INFO_STATS(**(a1 + 24), a2);
}

{
  return AppleBCMWLANCore::getWCL_LOW_LATENCY_INFO_STATS(**(a1 + 8), a2);
}

uint64_t non-virtual thunk toAppleBCMWLANInfraProtocol::getWCL_BGSCAN_CACHE_RESULT(uint64_t a1, unsigned int *a2)
{
  return AppleBCMWLANCore::getWCL_BGSCAN_CACHE_RESULT(**(a1 + 24), a2);
}

{
  return AppleBCMWLANCore::getWCL_BGSCAN_CACHE_RESULT(**(a1 + 8), a2);
}

uint64_t non-virtual thunk toAppleBCMWLANInfraProtocol::getOFFLOAD_TCPKA_ENABLE(uint64_t a1)
{
  return (*(***(a1 + 24) + 848))();
}

{
  return (*(***(a1 + 8) + 848))();
}

uint64_t non-virtual thunk toAppleBCMWLANInfraProtocol::getSYSTEM_SLEEP_CONFIG(uint64_t a1)
{
  v1 = **(a1 + 24);
  return AppleBCMWLANCore::getSYSTEM_SLEEP_CONFIG();
}

{
  v1 = **(a1 + 8);
  return AppleBCMWLANCore::getSYSTEM_SLEEP_CONFIG();
}

uint64_t AppleBCMWLANInfraProtocol::getHP2P_CTRL(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return AppleBCMWLANCore::getHP2P_CTRL(**(a1 + 136), 8, (a2 + 4));
  }

  else
  {
    return 3758097084;
  }
}

uint64_t non-virtual thunk toAppleBCMWLANInfraProtocol::getHP2P_CTRL(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return AppleBCMWLANCore::getHP2P_CTRL(**(a1 + 24), 8, (a2 + 4));
  }

  else
  {
    return 3758097084;
  }
}

{
  if (a2)
  {
    return AppleBCMWLANCore::getHP2P_CTRL(**(a1 + 8), 8, (a2 + 4));
  }

  else
  {
    return 3758097084;
  }
}

uint64_t non-virtual thunk toAppleBCMWLANInfraProtocol::getCOUNTRY_CHANNELS_INFO()
{
  return 3758097095;
}

{
  return 3758097095;
}

uint64_t non-virtual thunk toAppleBCMWLANInfraProtocol::getRANGING_START()
{
  return 3758097095;
}

{
  return 3758097095;
}

uint64_t non-virtual thunk toAppleBCMWLANInfraProtocol::getRANGING_ENABLE()
{
  return 3758097095;
}

{
  return 3758097095;
}

uint64_t non-virtual thunk toAppleBCMWLANInfraProtocol::getRANGING_CAPS()
{
  return 3758097095;
}

{
  return 3758097095;
}

uint64_t non-virtual thunk toAppleBCMWLANInfraProtocol::getWCL_WNM_OFFLOAD()
{
  return 3758097095;
}

{
  return 3758097095;
}

uint64_t non-virtual thunk toAppleBCMWLANInfraProtocol::getFW_CLOCK_INFO()
{
  return 3758097095;
}

{
  return 3758097095;
}

uint64_t non-virtual thunk toAppleBCMWLANInfraProtocol::getTIMESYNC_STATS()
{
  return 3758097095;
}

{
  return 3758097095;
}

uint64_t non-virtual thunk toAppleBCMWLANInfraProtocol::setCIPHER_KEY(uint64_t a1)
{
  return (*(***(a1 + 24) + 1184))();
}

{
  return (*(***(a1 + 8) + 1184))();
}

uint64_t non-virtual thunk toAppleBCMWLANInfraProtocol::setCHANNEL(uint64_t a1)
{
  return (*(***(a1 + 24) + 1216))();
}

{
  return (*(***(a1 + 8) + 1216))();
}

uint64_t non-virtual thunk toAppleBCMWLANInfraProtocol::setPOWERSAVE(uint64_t a1)
{
  return (*(***(a1 + 24) + 1232))();
}

{
  return (*(***(a1 + 8) + 1232))();
}

uint64_t non-virtual thunk toAppleBCMWLANInfraProtocol::setTXPOWER(uint64_t a1)
{
  return (*(***(a1 + 24) + 1256))();
}

{
  return (*(***(a1 + 8) + 1256))();
}

uint64_t non-virtual thunk toAppleBCMWLANInfraProtocol::setRATE(uint64_t a1)
{
  return (*(***(a1 + 24) + 1280))();
}

{
  return (*(***(a1 + 8) + 1280))();
}

uint64_t non-virtual thunk toAppleBCMWLANInfraProtocol::setIBSS_MODE(uint64_t a1)
{
  return (*(***(a1 + 24) + 1168))();
}

{
  return (*(***(a1 + 8) + 1168))();
}

uint64_t non-virtual thunk toAppleBCMWLANInfraProtocol::setAP_MODE(uint64_t a1)
{
  return (*(***(a1 + 24) + 1224))();
}

{
  return (*(***(a1 + 8) + 1224))();
}

uint64_t non-virtual thunk toAppleBCMWLANInfraProtocol::setRSN_XE(uint64_t a1)
{
  return (*(***(a1 + 24) + 1296))();
}

{
  return (*(***(a1 + 8) + 1296))();
}

uint64_t non-virtual thunk toAppleBCMWLANInfraProtocol::setIE(uint64_t a1)
{
  return (*(***(a1 + 24) + 1320))();
}

{
  return (*(***(a1 + 8) + 1320))();
}

uint64_t non-virtual thunk toAppleBCMWLANInfraProtocol::setWOW_TEST(uint64_t a1)
{
  return (*(***(a1 + 24) + 1304))();
}

{
  return (*(***(a1 + 8) + 1304))();
}

uint64_t non-virtual thunk toAppleBCMWLANInfraProtocol::setVIRTUAL_IF_CREATE(uint64_t a1)
{
  return (*(***(a1 + 24) + 1800))();
}

{
  return (*(***(a1 + 8) + 1800))();
}

uint64_t non-virtual thunk toAppleBCMWLANInfraProtocol::setHT_CAPABILITY(uint64_t a1)
{
  return (*(***(a1 + 24) + 872))();
}

{
  return (*(***(a1 + 8) + 872))();
}

uint64_t non-virtual thunk toAppleBCMWLANInfraProtocol::setOFFLOAD_ARP(uint64_t a1)
{
  return (*(***(a1 + 24) + 1144))();
}

{
  return (*(***(a1 + 8) + 1144))();
}

uint64_t non-virtual thunk toAppleBCMWLANInfraProtocol::setOFFLOAD_NDP(uint64_t a1)
{
  return (*(***(a1 + 24) + 1152))();
}

{
  return (*(***(a1 + 8) + 1152))();
}

uint64_t non-virtual thunk toAppleBCMWLANInfraProtocol::setGAS_REQ(uint64_t a1)
{
  return (*(***(a1 + 24) + 1336))();
}

{
  return (*(***(a1 + 8) + 1336))();
}

uint64_t non-virtual thunk toAppleBCMWLANInfraProtocol::setVHT_CAPABILITY(uint64_t a1)
{
  return (*(***(a1 + 24) + 896))();
}

{
  return (*(***(a1 + 8) + 896))();
}

uint64_t non-virtual thunk toAppleBCMWLANInfraProtocol::setDBG_GUARD_TIME_PARAMS(uint64_t a1)
{
  return (*(***(a1 + 24) + 1240))();
}

{
  return (*(***(a1 + 8) + 1240))();
}

uint64_t non-virtual thunk toAppleBCMWLANInfraProtocol::setLEAKY_AP_STATS_MODE(uint64_t a1)
{
  return (*(***(a1 + 24) + 1248))();
}

{
  return (*(***(a1 + 8) + 1248))();
}

uint64_t non-virtual thunk toAppleBCMWLANInfraProtocol::setPRIVATE_MAC(uint64_t a1)
{
  return (*(***(a1 + 24) + 1776))();
}

{
  return (*(***(a1 + 8) + 1776))();
}

uint64_t non-virtual thunk toAppleBCMWLANInfraProtocol::setRESET_CHIP(uint64_t a1, uint64_t a2)
{
  return AppleBCMWLANCore::setRESET_CHIP(**(a1 + 24), a2);
}

{
  return AppleBCMWLANCore::setRESET_CHIP(**(a1 + 8), a2);
}

uint64_t non-virtual thunk toAppleBCMWLANInfraProtocol::setCRASH(uint64_t a1, uint64_t a2)
{
  return AppleBCMWLANCore::setCRASH(**(a1 + 24), a2);
}

{
  return AppleBCMWLANCore::setCRASH(**(a1 + 8), a2);
}

uint64_t non-virtual thunk toAppleBCMWLANInfraProtocol::setRANGING_ENABLE(uint64_t a1)
{
  return (*(***(a1 + 24) + 1696))();
}

{
  return (*(***(a1 + 8) + 1696))();
}

uint64_t non-virtual thunk toAppleBCMWLANInfraProtocol::setRANGING_START(uint64_t a1)
{
  return (*(***(a1 + 24) + 1704))();
}

{
  return (*(***(a1 + 8) + 1704))();
}

uint64_t non-virtual thunk toAppleBCMWLANInfraProtocol::setTKO_PARAMS(uint64_t a1)
{
  return (*(***(a1 + 24) + 1728))();
}

{
  return (*(***(a1 + 8) + 1728))();
}

uint64_t non-virtual thunk toAppleBCMWLANInfraProtocol::setBTCOEX_PROFILE(uint64_t a1)
{
  return (*(***(a1 + 24) + 1648))();
}

{
  return (*(***(a1 + 8) + 1648))();
}

uint64_t non-virtual thunk toAppleBCMWLANInfraProtocol::setBTCOEX_PROFILE_ACTIVE(uint64_t a1)
{
  return (*(***(a1 + 24) + 1688))();
}

{
  return (*(***(a1 + 8) + 1688))();
}

uint64_t non-virtual thunk toAppleBCMWLANInfraProtocol::setTHERMAL_INDEX(uint64_t a1)
{
  return (*(***(a1 + 24) + 1264))();
}

{
  return (*(***(a1 + 8) + 1264))();
}

uint64_t non-virtual thunk toAppleBCMWLANInfraProtocol::setBTCOEX_2G_CHAIN_DISABLE(uint64_t a1)
{
  return (*(***(a1 + 24) + 1680))();
}

{
  return (*(***(a1 + 8) + 1680))();
}

uint64_t non-virtual thunk toAppleBCMWLANInfraProtocol::setPOWER_BUDGET(uint64_t a1)
{
  return (*(***(a1 + 24) + 1272))();
}

{
  return (*(***(a1 + 8) + 1272))();
}

uint64_t non-virtual thunk toAppleBCMWLANInfraProtocol::setLQM_CONFIG(uint64_t a1)
{
  return (*(***(a1 + 24) + 1808))();
}

{
  return (*(***(a1 + 8) + 1808))();
}

uint64_t non-virtual thunk toAppleBCMWLANInfraProtocol::setUSB_HOST_NOTIFICATION(uint64_t a1)
{
  return (*(***(a1 + 24) + 1824))();
}

{
  return (*(***(a1 + 8) + 1824))();
}

uint64_t non-virtual thunk toAppleBCMWLANInfraProtocol::setHP2P_CTRL(uint64_t a1, uint64_t a2)
{
  return AppleBCMWLANCore::setHP2P_CTRL(**(a1 + 24), a2);
}

{
  return AppleBCMWLANCore::setHP2P_CTRL(**(a1 + 8), a2);
}

uint64_t non-virtual thunk toAppleBCMWLANInfraProtocol::setSET_PROPERTY(uint64_t a1)
{
  return (*(***(a1 + 24) + 1832))();
}

{
  return (*(***(a1 + 8) + 1832))();
}

uint64_t non-virtual thunk toAppleBCMWLANInfraProtocol::setPM_MODE(uint64_t a1)
{
  return (*(***(a1 + 24) + 1792))();
}

{
  return (*(***(a1 + 8) + 1792))();
}

uint64_t non-virtual thunk toAppleBCMWLANInfraProtocol::setREALTIME_QOS_MSCS(uint64_t a1)
{
  return (*(***(a1 + 24) + 1968))();
}

{
  return (*(***(a1 + 8) + 1968))();
}

uint64_t non-virtual thunk toAppleBCMWLANInfraProtocol::setSENSING_ENABLE(uint64_t a1)
{
  return (*(***(a1 + 24) + 1848))();
}

{
  return (*(***(a1 + 8) + 1848))();
}

uint64_t non-virtual thunk toAppleBCMWLANInfraProtocol::setSENSING_DISABLE(uint64_t a1)
{
  return (*(***(a1 + 24) + 1856))();
}

{
  return (*(***(a1 + 8) + 1856))();
}

uint64_t non-virtual thunk toAppleBCMWLANInfraProtocol::setWCL_REASSOC(uint64_t a1)
{
  return (*(***(a1 + 24) + 1736))();
}

{
  return (*(***(a1 + 8) + 1736))();
}

uint64_t non-virtual thunk toAppleBCMWLANInfraProtocol::setWCL_SET_ROAM_LOCK(uint64_t a1)
{
  return (*(***(a1 + 24) + 1200))();
}

{
  return (*(***(a1 + 8) + 1200))();
}

uint64_t non-virtual thunk toAppleBCMWLANInfraProtocol::setWCL_LEGACY_ROAM_PROFILE_CONFIG(uint64_t a1)
{
  return (*(***(a1 + 24) + 1744))();
}

{
  return (*(***(a1 + 8) + 1744))();
}

uint64_t non-virtual thunk toAppleBCMWLANInfraProtocol::setWCL_ROAM_PROFILE_CONFIG(uint64_t a1)
{
  return (*(***(a1 + 24) + 1752))();
}

{
  return (*(***(a1 + 8) + 1752))();
}

uint64_t non-virtual thunk toAppleBCMWLANInfraProtocol::setWCL_SCAN_ABORT(AppleBCMWLANCore ***this, void *a2)
{
  return AppleBCMWLANCore::setWCL_SCAN_ABORT(*this[3], a2);
}

{
  return AppleBCMWLANCore::setWCL_SCAN_ABORT(*this[1], a2);
}

uint64_t non-virtual thunk toAppleBCMWLANInfraProtocol::setWCL_JOIN_ABORT(uint64_t a1, _DWORD *a2)
{
  return AppleBCMWLANCore::setWCL_JOIN_ABORT(**(a1 + 24), a2);
}

{
  return AppleBCMWLANCore::setWCL_JOIN_ABORT(**(a1 + 8), a2);
}

uint64_t non-virtual thunk toAppleBCMWLANInfraProtocol::setWCL_TRIGGER_CC(uint64_t a1, uint64_t a2)
{
  return AppleBCMWLANCore::setWCL_TRIGGER_CC(**(a1 + 24), a2);
}

{
  return AppleBCMWLANCore::setWCL_TRIGGER_CC(**(a1 + 8), a2);
}

uint64_t non-virtual thunk toAppleBCMWLANInfraProtocol::setWCL_REAL_TIME_MODE(uint64_t a1, _BYTE *a2)
{
  return AppleBCMWLANCore::setWCL_REAL_TIME_MODE(**(a1 + 24), a2);
}

{
  return AppleBCMWLANCore::setWCL_REAL_TIME_MODE(**(a1 + 8), a2);
}

uint64_t non-virtual thunk toAppleBCMWLANInfraProtocol::setWCL_ROAM_USER_CACHE(uint64_t a1)
{
  return (*(***(a1 + 24) + 1760))();
}

{
  return (*(***(a1 + 8) + 1760))();
}

uint64_t non-virtual thunk toAppleBCMWLANInfraProtocol::setWCL_ARP_MODE(uint64_t a1)
{
  return AppleBCMWLANCore::setWCL_ARP_MODE(**(a1 + 24));
}

{
  return AppleBCMWLANCore::setWCL_ARP_MODE(**(a1 + 8));
}

uint64_t non-virtual thunk toAppleBCMWLANInfraProtocol::setWCL_SCAN_REQ(uint64_t a1)
{
  return (*(***(a1 + 24) + 1096))();
}

{
  return (*(***(a1 + 8) + 1096))();
}

uint64_t non-virtual thunk toAppleBCMWLANInfraProtocol::setWCL_ASSOCIATE(uint64_t a1)
{
  return (*(***(a1 + 24) + 1160))();
}

{
  return (*(***(a1 + 8) + 1160))();
}

uint64_t non-virtual thunk toAppleBCMWLANInfraProtocol::setWCL_QOS_PARAMS(uint64_t a1, uint64_t a2)
{
  return AppleBCMWLANCore::setWCL_QOS_PARAMS(**(a1 + 24), a2);
}

{
  return AppleBCMWLANCore::setWCL_QOS_PARAMS(**(a1 + 8), a2);
}

uint64_t non-virtual thunk toAppleBCMWLANInfraProtocol::setWCL_LINK_UP_DONE(AppleBCMWLANCore ***this, void *a2)
{
  return AppleBCMWLANCore::setWCL_LINK_UP_DONE(*this[3], a2);
}

{
  return AppleBCMWLANCore::setWCL_LINK_UP_DONE(*this[1], a2);
}

uint64_t non-virtual thunk toAppleBCMWLANInfraProtocol::setWCL_SET_SCAN_HOME_AWAY_TIME(uint64_t a1, int *a2)
{
  return AppleBCMWLANCore::setWCL_SET_SCAN_HOME_AWAY_TIME(**(a1 + 24), a2);
}

{
  return AppleBCMWLANCore::setWCL_SET_SCAN_HOME_AWAY_TIME(**(a1 + 8), a2);
}

uint64_t non-virtual thunk toAppleBCMWLANInfraProtocol::setWCL_ULOFDMA_STATE(uint64_t a1, int *a2)
{
  return AppleBCMWLANCore::setWCL_ULOFDMA_STATE(**(a1 + 24), a2);
}

{
  return AppleBCMWLANCore::setWCL_ULOFDMA_STATE(**(a1 + 8), a2);
}

uint64_t non-virtual thunk toAppleBCMWLANInfraProtocol::setWCL_ACTION_FRAME(uint64_t a1, int *a2)
{
  return AppleBCMWLANCore::setWCL_ACTION_FRAME(**(a1 + 24), a2);
}

{
  return AppleBCMWLANCore::setWCL_ACTION_FRAME(**(a1 + 8), a2);
}

uint64_t non-virtual thunk toAppleBCMWLANInfraProtocol::setOS_FEATURE_FLAGS(uint64_t a1, void *a2)
{
  return AppleBCMWLANCore::setOS_FEATURE_FLAGS(**(a1 + 24), a2);
}

{
  return AppleBCMWLANCore::setOS_FEATURE_FLAGS(**(a1 + 8), a2);
}

uint64_t non-virtual thunk toAppleBCMWLANInfraProtocol::setDHCP_RENEWAL_DATA(uint64_t a1, _BYTE *a2)
{
  return AppleBCMWLANCore::setDHCP_RENEWAL_DATA(**(a1 + 24), a2);
}

{
  return AppleBCMWLANCore::setDHCP_RENEWAL_DATA(**(a1 + 8), a2);
}

uint64_t non-virtual thunk toAppleBCMWLANInfraProtocol::setBATTERY_POWERSAVE_CONFIG(uint64_t a1, int *a2)
{
  return AppleBCMWLANCore::setBATTERY_POWERSAVE_CONFIG(**(a1 + 24), a2);
}

{
  return AppleBCMWLANCore::setBATTERY_POWERSAVE_CONFIG(**(a1 + 8), a2);
}

uint64_t non-virtual thunk toAppleBCMWLANInfraProtocol::setMIMO_CONFIG(uint64_t a1, int *a2)
{
  return AppleBCMWLANCore::setMIMO_CONFIG(**(a1 + 24), a2);
}

{
  return AppleBCMWLANCore::setMIMO_CONFIG(**(a1 + 8), a2);
}

uint64_t non-virtual thunk toAppleBCMWLANInfraProtocol::setPOWER_PROFILE(uint64_t a1, _DWORD *a2)
{
  return AppleBCMWLANCore::setPOWER_PROFILE(**(a1 + 24), a2);
}

{
  return AppleBCMWLANCore::setPOWER_PROFILE(**(a1 + 8), a2);
}

uint64_t non-virtual thunk toAppleBCMWLANInfraProtocol::setHEARTBEAT(AppleBCMWLANCore ***this, void *a2)
{
  return AppleBCMWLANCore::setHEARTBEAT(*this[3], a2);
}

{
  return AppleBCMWLANCore::setHEARTBEAT(*this[1], a2);
}

uint64_t non-virtual thunk toAppleBCMWLANInfraProtocol::setINTERFACE_SETTING(uint64_t a1, _BYTE *a2)
{
  return AppleBCMWLANCore::setINTERFACE_SETTING(**(a1 + 24), a2);
}

{
  return AppleBCMWLANCore::setINTERFACE_SETTING(**(a1 + 8), a2);
}

uint64_t non-virtual thunk toAppleBCMWLANInfraProtocol::setBYPASS_TX_POWER_CAP(uint64_t a1, _BYTE *a2)
{
  return AppleBCMWLANCore::setBYPASS_TX_POWER_CAP(**(a1 + 24), a2);
}

{
  return AppleBCMWLANCore::setBYPASS_TX_POWER_CAP(**(a1 + 8), a2);
}

uint64_t non-virtual thunk toAppleBCMWLANInfraProtocol::setFACETIME_WIFICALLING_PARAMS(uint64_t a1, unsigned int *a2)
{
  return AppleBCMWLANCore::setFACETIME_WIFICALLING_PARAMS(**(a1 + 24), a2);
}

{
  return AppleBCMWLANCore::setFACETIME_WIFICALLING_PARAMS(**(a1 + 8), a2);
}

uint64_t non-virtual thunk toAppleBCMWLANInfraProtocol::setIPV4_PARAMS(uint64_t a1, int *a2)
{
  return AppleBCMWLANCore::setIPV4_PARAMS(**(a1 + 24), a2);
}

{
  return AppleBCMWLANCore::setIPV4_PARAMS(**(a1 + 8), a2);
}

uint64_t non-virtual thunk toAppleBCMWLANInfraProtocol::setWCL_LIMITED_AGGREGATION(uint64_t a1, int *a2)
{
  return AppleBCMWLANCore::setWCL_LIMITED_AGGREGATION(**(a1 + 24), a2);
}

{
  return AppleBCMWLANCore::setWCL_LIMITED_AGGREGATION(**(a1 + 8), a2);
}

uint64_t non-virtual thunk toAppleBCMWLANInfraProtocol::setWCL_BCN_MUTE_CONFIG(uint64_t a1, uint64_t a2)
{
  return AppleBCMWLANCore::setWCL_BCN_MUTE_CONFIG(**(a1 + 24), a2);
}

{
  return AppleBCMWLANCore::setWCL_BCN_MUTE_CONFIG(**(a1 + 8), a2);
}

uint64_t non-virtual thunk toAppleBCMWLANInfraProtocol::setBSS_BLACKLIST(uint64_t a1, __int128 *a2)
{
  return AppleBCMWLANCore::setBSS_BLACKLIST(**(a1 + 24), a2);
}

{
  return AppleBCMWLANCore::setBSS_BLACKLIST(**(a1 + 8), a2);
}

uint64_t non-virtual thunk toAppleBCMWLANInfraProtocol::setEAP_FILTER_CONFIG(uint64_t a1, _DWORD *a2)
{
  return AppleBCMWLANCore::setEAP_FILTER_CONFIG(**(a1 + 24), a2);
}

{
  return AppleBCMWLANCore::setEAP_FILTER_CONFIG(**(a1 + 8), a2);
}

uint64_t non-virtual thunk toAppleBCMWLANInfraProtocol::setDUAL_POWER_MODE(uint64_t a1, _DWORD *a2)
{
  return AppleBCMWLANCore::setDUAL_POWER_MODE(**(a1 + 24), a2);
}

{
  return AppleBCMWLANCore::setDUAL_POWER_MODE(**(a1 + 8), a2);
}

uint64_t non-virtual thunk toAppleBCMWLANInfraProtocol::setWCL_CONFIG_BG_MOTIONPROFILE(uint64_t a1, _BYTE *a2)
{
  return AppleBCMWLANCore::setWCL_CONFIG_BG_MOTIONPROFILE(**(a1 + 24), a2);
}

{
  return AppleBCMWLANCore::setWCL_CONFIG_BG_MOTIONPROFILE(**(a1 + 8), a2);
}

uint64_t non-virtual thunk toAppleBCMWLANInfraProtocol::setWCL_CONFIG_BG_NETWORK(uint64_t a1, unsigned __int8 *a2)
{
  return AppleBCMWLANCore::setWCL_CONFIG_BG_NETWORK(**(a1 + 24), a2);
}

{
  return AppleBCMWLANCore::setWCL_CONFIG_BG_NETWORK(**(a1 + 8), a2);
}

uint64_t non-virtual thunk toAppleBCMWLANInfraProtocol::setWCL_CONFIG_BGSCAN(uint64_t a1, _BYTE *a2)
{
  return AppleBCMWLANCore::setWCL_CONFIG_BGSCAN(**(a1 + 24), a2);
}

{
  return AppleBCMWLANCore::setWCL_CONFIG_BGSCAN(**(a1 + 8), a2);
}

uint64_t non-virtual thunk toAppleBCMWLANInfraProtocol::setWCL_CONFIG_BG_PARAMS(uint64_t a1, uint64_t a2)
{
  return AppleBCMWLANCore::setWCL_CONFIG_BG_PARAMS(**(a1 + 24), a2);
}

{
  return AppleBCMWLANCore::setWCL_CONFIG_BG_PARAMS(**(a1 + 8), a2);
}

uint64_t non-virtual thunk toAppleBCMWLANInfraProtocol::setCONGESTION_CTRL_IND(uint64_t a1, _BYTE *a2)
{
  return AppleBCMWLANCore::setCONGESTION_CTRL_IND(**(a1 + 24), a2);
}

{
  return AppleBCMWLANCore::setCONGESTION_CTRL_IND(**(a1 + 8), a2);
}

uint64_t non-virtual thunk toAppleBCMWLANInfraProtocol::setIPV6_PARAMS(uint64_t a1, unsigned int *a2)
{
  return AppleBCMWLANCore::setIPV6_PARAMS(**(a1 + 24), a2);
}

{
  return AppleBCMWLANCore::setIPV6_PARAMS(**(a1 + 8), a2);
}

uint64_t non-virtual thunk toAppleBCMWLANInfraProtocol::setINFRA_ENUMERATED(uint64_t a1, _BYTE *a2)
{
  return AppleBCMWLANCore::setINFRA_ENUMERATED(**(a1 + 24), a2);
}

{
  return AppleBCMWLANCore::setINFRA_ENUMERATED(**(a1 + 8), a2);
}

uint64_t non-virtual thunk toAppleBCMWLANInfraProtocol::setLMTPC_CONFIG(uint64_t a1, unsigned __int8 *a2)
{
  return AppleBCMWLANCore::setLMTPC_CONFIG(**(a1 + 24), a2);
}

{
  return AppleBCMWLANCore::setLMTPC_CONFIG(**(a1 + 8), a2);
}

uint64_t non-virtual thunk toAppleBCMWLANInfraProtocol::setTRAFFIC_ENG_PARAMS(uint64_t a1, uint64_t a2)
{
  return AppleBCMWLANCore::setTRAFFIC_ENG_PARAMS(**(a1 + 24), a2);
}

{
  return AppleBCMWLANCore::setTRAFFIC_ENG_PARAMS(**(a1 + 8), a2);
}

uint64_t non-virtual thunk toAppleBCMWLANInfraProtocol::setLE_SCAN_PARAM(uint64_t a1, _DWORD *a2)
{
  return AppleBCMWLANCore::setLE_SCAN_PARAM(**(a1 + 24), a2);
}

{
  return AppleBCMWLANCore::setLE_SCAN_PARAM(**(a1 + 8), a2);
}

uint64_t non-virtual thunk toAppleBCMWLANInfraProtocol::setOFFLOAD_TCPKA_ENABLE(uint64_t a1)
{
  return (*(***(a1 + 24) + 1312))();
}

{
  return (*(***(a1 + 8) + 1312))();
}

uint64_t non-virtual thunk toAppleBCMWLANInfraProtocol::setWCL_ASSOCIATED_SLEEP(uint64_t a1)
{
  return (*(***(a1 + 24) + 1912))();
}

{
  return (*(***(a1 + 8) + 1912))();
}

uint64_t non-virtual thunk toAppleBCMWLANInfraProtocol::setWCL_SOI_CONFIG(uint64_t a1)
{
  return (*(***(a1 + 24) + 1920))();
}

{
  return (*(***(a1 + 8) + 1920))();
}

uint64_t non-virtual thunk toAppleBCMWLANInfraProtocol::setDYNAMIC_RSSI_WINDOW_CONFIG(uint64_t a1, int *a2)
{
  return AppleBCMWLANCore::setDYNAMIC_RSSI_WINDOW_CONFIG(**(a1 + 24), a2);
}

{
  return AppleBCMWLANCore::setDYNAMIC_RSSI_WINDOW_CONFIG(**(a1 + 8), a2);
}

uint64_t non-virtual thunk toAppleBCMWLANInfraProtocol::setNDD_REQ(uint64_t a1)
{
  return (*(***(a1 + 24) + 1120))();
}

{
  return (*(***(a1 + 8) + 1120))();
}

uint64_t non-virtual thunk toAppleBCMWLANInfraProtocol::setDBRG_ENTROPY(uint64_t a1, uint64_t a2)
{
  return AppleBCMWLANCore::setDBRG_ENTROPY(**(a1 + 24), a2);
}

{
  return AppleBCMWLANCore::setDBRG_ENTROPY(**(a1 + 8), a2);
}

uint64_t non-virtual thunk toAppleBCMWLANInfraProtocol::setMWS_WIFI_TYPE_7_BITMAP_WIFI_ENH(uint64_t a1, _DWORD *a2)
{
  return AppleBCMWLANCore::setMWS_WIFI_TYPE_7_BITMAP_WIFI_ENH(**(a1 + 24), a2);
}

{
  return AppleBCMWLANCore::setMWS_WIFI_TYPE_7_BITMAP_WIFI_ENH(**(a1 + 8), a2);
}

uint64_t non-virtual thunk toAppleBCMWLANInfraProtocol::setMWS_COEX_BITMAP_WIFI_ENH(uint64_t a1, _DWORD *a2)
{
  return AppleBCMWLANCore::setMWS_COEX_BITMAP_WIFI_ENH(**(a1 + 24), a2);
}

{
  return AppleBCMWLANCore::setMWS_COEX_BITMAP_WIFI_ENH(**(a1 + 8), a2);
}

uint64_t non-virtual thunk toAppleBCMWLANInfraProtocol::setMWS_DISABLE_OCL_BITMAP_WIFI_ENH(uint64_t a1, _DWORD *a2)
{
  return AppleBCMWLANCore::setMWS_DISABLE_OCL_BITMAP_WIFI_ENH(**(a1 + 24), a2);
}

{
  return AppleBCMWLANCore::setMWS_DISABLE_OCL_BITMAP_WIFI_ENH(**(a1 + 8), a2);
}

uint64_t non-virtual thunk toAppleBCMWLANInfraProtocol::setMWS_RFEM_CONFIG_WIFI_ENH(uint64_t a1, _DWORD *a2)
{
  return AppleBCMWLANCore::setMWS_RFEM_CONFIG_WIFI_ENH(**(a1 + 24), a2);
}

{
  return AppleBCMWLANCore::setMWS_RFEM_CONFIG_WIFI_ENH(**(a1 + 8), a2);
}

uint64_t non-virtual thunk toAppleBCMWLANInfraProtocol::setMWS_ASSOC_PROTECTION_BITMAP_WIFI_ENH(uint64_t a1, _DWORD *a2)
{
  return AppleBCMWLANCore::setMWS_ASSOC_PROTECTION_BITMAP_WIFI_ENH(**(a1 + 24), a2);
}

{
  return AppleBCMWLANCore::setMWS_ASSOC_PROTECTION_BITMAP_WIFI_ENH(**(a1 + 8), a2);
}

uint64_t non-virtual thunk toAppleBCMWLANInfraProtocol::setMWS_SCAN_FREQ_WIFI_ENH(uint64_t a1, _DWORD *a2)
{
  return AppleBCMWLANCore::setMWS_SCAN_FREQ_WIFI_ENH(**(a1 + 24), a2);
}

{
  return AppleBCMWLANCore::setMWS_SCAN_FREQ_WIFI_ENH(**(a1 + 8), a2);
}

uint64_t non-virtual thunk toAppleBCMWLANInfraProtocol::setMWS_SCAN_FREQ_MODE_WIFI_ENH(uint64_t a1, _DWORD *a2)
{
  return AppleBCMWLANCore::setMWS_SCAN_FREQ_MODE_WIFI_ENH(**(a1 + 24), a2);
}

{
  return AppleBCMWLANCore::setMWS_SCAN_FREQ_MODE_WIFI_ENH(**(a1 + 8), a2);
}

uint64_t non-virtual thunk toAppleBCMWLANInfraProtocol::setMWS_CONDITION_ID_BITMAP_WIFI_ENH(uint64_t a1, uint64_t a2)
{
  return AppleBCMWLANCore::setMWS_CONDITION_ID_BITMAP_WIFI_ENH(**(a1 + 24), a2);
}

{
  return AppleBCMWLANCore::setMWS_CONDITION_ID_BITMAP_WIFI_ENH(**(a1 + 8), a2);
}

uint64_t non-virtual thunk toAppleBCMWLANInfraProtocol::setMWS_ANTENNA_SELECTION_WIFI_ENH(uint64_t a1, uint64_t a2)
{
  return AppleBCMWLANCore::setMWS_ANTENNA_SELECTION_WIFI_ENH(**(a1 + 24), a2);
}

{
  return AppleBCMWLANCore::setMWS_ANTENNA_SELECTION_WIFI_ENH(**(a1 + 8), a2);
}

uint64_t non-virtual thunk toAppleBCMWLANInfraProtocol::getP2P_DEVICE_CAPABILITY(uint64_t a1)
{
  return (*(***(a1 + 24) + 1928))();
}

{
  return (*(***(a1 + 8) + 1928))();
}

uint64_t non-virtual thunk toAppleBCMWLANInfraProtocol::setOS_ELIGIBILITY(uint64_t a1)
{
  return (*(***(a1 + 24) + 2000))();
}

{
  return (*(***(a1 + 8) + 2000))();
}

uint64_t non-virtual thunk toAppleBCMWLANInfraProtocol::setCLEAR_PMKSA_CACHE(AppleBCMWLANCore ***this, void *a2)
{
  return AppleBCMWLANCore::setCLEAR_PMKSA_CACHE(*this[3]);
}

{
  return AppleBCMWLANCore::setCLEAR_PMKSA_CACHE(*this[1]);
}

uint64_t non-virtual thunk toAppleBCMWLANInfraProtocol::setRANGING_AUTHENTICATE(uint64_t a1, uint64_t a2)
{
  return (*(***(a1 + 24) + 1712))(**(a1 + 24), a1 - 112, a2);
}

{
  return (*(***(a1 + 8) + 1712))(**(a1 + 8), a1 - 128, a2);
}

uint64_t AppleBCMWLANInfraProtocol::setWCL_UPDATE_FAST_LANE(AppleBCMWLANCore ***a1, _BYTE *a2)
{
  if (!a2)
  {
    return 3758097084;
  }

  ((*a1)[53])(a1, *a2 != 0);
  if (*a2)
  {
    if (a2[1])
    {
      NetAdapter = AppleBCMWLANCore::getNetAdapter(*a1[17]);
      AppleBCMWLANNetAdapter::overrideACMConfiguration(NetAdapter);
    }
  }

  return 0;
}

uint64_t non-virtual thunk toAppleBCMWLANInfraProtocol::setWCL_UPDATE_FAST_LANE(uint64_t a1, _BYTE *a2)
{
  return AppleBCMWLANInfraProtocol::setWCL_UPDATE_FAST_LANE((a1 - 112), a2);
}

{
  return AppleBCMWLANInfraProtocol::setWCL_UPDATE_FAST_LANE((a1 - 128), a2);
}

uint64_t AppleBCMWLANInfraProtocol::setWCL_LINK_STATE_UPDATE(uint64_t a1, ether_addr *a2)
{
  IO80211InfraInterface::setWCL_LINK_STATE_UPDATE();
  v4 = **(a1 + 136);

  return AppleBCMWLANCore::setWCL_LINK_STATE_UPDATE(v4, a2);
}

uint64_t non-virtual thunk toAppleBCMWLANInfraProtocol::setWCL_LINK_STATE_UPDATE(uint64_t a1, ether_addr *a2)
{
  IO80211InfraInterface::setWCL_LINK_STATE_UPDATE();
  v4 = **(a1 + 40);

  return AppleBCMWLANCore::setWCL_LINK_STATE_UPDATE(v4, a2);
}

uint64_t non-virtual thunk toAppleBCMWLANInfraProtocol::setSET_WIFI_ASSERTION_STATE()
{
  return 3758097095;
}

{
  return 3758097095;
}

uint64_t non-virtual thunk toAppleBCMWLANInfraProtocol::setROAM_CACHE_UPDATE()
{
  return 3758097095;
}

{
  return 3758097095;
}

uint64_t non-virtual thunk toAppleBCMWLANInfraProtocol::setWOW_LOW_POWER_MODE()
{
  return 3758097095;
}

{
  return 3758097095;
}

uint64_t non-virtual thunk toAppleBCMWLANInfraProtocol::setSTAND_ALONE_MODE_STATE()
{
  return 3758097095;
}

{
  return 3758097095;
}

uint64_t non-virtual thunk toAppleBCMWLANInfraProtocol::setVOICE_IND_STATE()
{
  return 3758097095;
}

{
  return 3758097095;
}

uint64_t non-virtual thunk toAppleBCMWLANInfraProtocol::setMWS_TIME_SHARING_WIFI_ENH()
{
  return 3758097095;
}

{
  return 3758097095;
}

uint64_t non-virtual thunk toAppleBCMWLANInfraProtocol::setWCL_WNM_OPS(uint64_t a1, _BYTE *a2)
{
  return AppleBCMWLANCore::setWCL_WNM_OPS(**(a1 + 24), a2);
}

{
  return AppleBCMWLANCore::setWCL_WNM_OPS(**(a1 + 8), a2);
}

uint64_t non-virtual thunk toAppleBCMWLANInfraProtocol::setWCL_WNM_OFFLOAD(uint64_t a1, _BYTE *a2)
{
  return AppleBCMWLANCore::setWCL_WNM_OFFLOAD(**(a1 + 24), a2);
}

{
  return AppleBCMWLANCore::setWCL_WNM_OFFLOAD(**(a1 + 8), a2);
}

uint64_t non-virtual thunk toAppleBCMWLANInfraProtocol::setROAM_PROFILE()
{
  return 3758097095;
}

{
  return 3758097095;
}

uint64_t non-virtual thunk toAppleBCMWLANInfraProtocol::setGAS_ABORT(AppleBCMWLANInfraProtocol *this, void *a2)
{
  return (*(***(this + 3) + 1344))(**(this + 3), a2);
}

{
  return (*(***(this + 1) + 1344))(**(this + 1), a2);
}

uint64_t non-virtual thunk toAppleBCMWLANInfraProtocol::setWCL_LEAVE_NETWORK(uint64_t a1)
{
  return (*(***(a1 + 24) + 1192))();
}

{
  return (*(***(a1 + 8) + 1192))();
}

uint64_t non-virtual thunk toAppleBCMWLANInfraProtocol::setHOST_CLOCK_INFO()
{
  return 3758097095;
}

{
  return 3758097095;
}

uint64_t non-virtual thunk toAppleBCMWLANInfraProtocol::setTIMESYNC_GPIO()
{
  return 3758097095;
}

{
  return 3758097095;
}

uint64_t non-virtual thunk toAppleBCMWLANInfraProtocol::setFW_CLOCK_SOURCE()
{
  return 3758097095;
}

{
  return 3758097095;
}

uint64_t non-virtual thunk toAppleBCMWLANInfraProtocol::setTIMESYNC_TX_POLICY()
{
  return 3758097095;
}

{
  return 3758097095;
}

uint64_t non-virtual thunk toAppleBCMWLANInfraProtocol::setTIMESYNC_RX_POLICY()
{
  return 3758097095;
}

{
  return 3758097095;
}

uint64_t non-virtual thunk toAppleBCMWLANInfraProtocol::setTIMESTAMPING_EN()
{
  return 3758097095;
}

{
  return 3758097095;
}

uint64_t non-virtual thunk toAppleBCMWLANInfraProtocol::getHE_COUNTERS()
{
  return 3758097095;
}

{
  return 3758097095;
}

uint64_t non-virtual thunk toAppleBCMWLANInfraProtocol::setSDB_ENABLE()
{
  return 3758097095;
}

{
  return 3758097095;
}

uint64_t non-virtual thunk toAppleBCMWLANInfraProtocol::setMWS_ACCESSORY_POWER_LIMIT_WIFI_ENH()
{
  return 3758097095;
}

{
  return 3758097095;
}

uint64_t non-virtual thunk toAppleBCMWLANInfraProtocol::getSMARTCCA_OPMODE()
{
  return 3758097095;
}

{
  return 3758097095;
}

uint64_t non-virtual thunk toAppleBCMWLANInfraProtocol::setBTCOEX_EXT_PROFILE()
{
  return 3758097095;
}

{
  return 3758097095;
}

uint64_t non-virtual thunk toAppleBCMWLANInfraProtocol::getLQM_STATISTICS()
{
  return 3758097095;
}

{
  return 3758097095;
}

uint64_t non-virtual thunk toAppleBCMWLANInfraProtocol::setTX_MODE_CONFIG()
{
  return 3758097095;
}

{
  return 3758097095;
}

AppleBCMWLANRoamAdapter *AppleBCMWLANRoamAdapter::withDriver(AppleBCMWLANRoamAdapter *this, AppleBCMWLANCore *a2)
{
  v5 = 0xAAAAAAAAAAAAAAAALL;
  if (OSObjectAllocate(gAppleBCMWLANRoamAdapterMetaClass, &v5))
  {
    return 0;
  }

  v3 = v5;
  if (v5 && (AppleBCMWLANRoamAdapter::initWithDriver(v5, this) & 1) == 0)
  {
    (*(*v3 + 16))(v3);
    return 0;
  }

  return v3;
}

uint64_t AppleBCMWLANRoamAdapter::initWithDriver(OSObject *this, AppleBCMWLANCore *a2)
{
  v4 = IOMallocZeroTyped();
  this[1].OSMetaClassBase::__vftable = v4;
  if (v4)
  {
    v4->getMetaClass = a2;
    getMetaClass = this[1].getMetaClass;
    if (getMetaClass)
    {
      this[1].retain = AppleBCMWLANCore::getCommander(getMetaClass);
      v6 = this[1].OSMetaClassBase::__vftable;
      if (v6->retain)
      {
        this[1].release = AppleBCMWLANCore::getConfigManager(v6->getMetaClass);
        if (this[1].release)
        {
          this[1].isEqualTo = (*(*a2 + 1952))(a2);
          isEqualTo = this[1].isEqualTo;
          if (isEqualTo)
          {
            (*(*isEqualTo + 8))(isEqualTo);
            if (OSObject::init(this))
            {
              return 1;
            }

            IOLog("AppleBCMWLANRoamAdapter super init failied\n");
          }

          else
          {
            IOLog("AppleBCMWLANRoamAdapter Failed to init fLogger\n");
          }
        }

        else
        {
          IOLog("AppleBCMWLANRoamAdapter configManager is null\n");
        }
      }

      else
      {
        IOLog("AppleBCMWLANRoamAdapter commander is null\n");
      }
    }

    else
    {
      IOLog("AppleBCMWLANRoamAdapter driver is null\n");
    }
  }

  else
  {
    IOLog("Failed to allocate AppleBCMWLANRoamAdapter_IVars\n");
  }

  return 0;
}

void AppleBCMWLANRoamAdapter::free(OSObject *this)
{
  v2 = this[1].OSMetaClassBase::__vftable;
  if (v2)
  {
    isEqualTo = v2->isEqualTo;
    if (!isEqualTo || ((*(*isEqualTo + 16))(v2->isEqualTo), this[1].isEqualTo = 0, (v2 = this[1].OSMetaClassBase::__vftable) != 0))
    {
      IOFree(v2, 0x28uLL);
      this[1].OSMetaClassBase::__vftable = 0;
    }
  }

  OSObject::free(this);
}

uint64_t AppleBCMWLANRoamAdapter::setRoaming5GBandBoost(uint64_t a1, uint64_t a2)
{
  v4 = 3758097084;
  Bus = AppleBCMWLANCore::getBus(**(a1 + 40));
  v6 = (*(*Bus + 368))(Bus);
  if (v6 != 4387 && v6 != 4378)
  {
    return 3758097095;
  }

  if (*a2)
  {
    v8 = *(a2 + 1);
    v9 = IOMallocZeroData();
    *v9 = 524289;
    *(v9 + 4) = v8;
    *(v9 + 6) = 0;
    v21[0] = v9;
    v21[1] = 8;
    AppleBCMWLANCommander::getMaxCmdRxPayload(*(*(a1 + 40) + 8));
    v10 = IOMallocZeroData();
    if (v10)
    {
      v11 = v10;
      v12 = (*(***(a1 + 40) + 88))(**(a1 + 40));
      if ((*(*v12 + 136))(v12))
      {
        v18 = a1;
        v19 = AppleBCMWLANRoamAdapter::setRoaming5GBandBoost;
        v20 = 0;
        v13 = AppleBCMWLANCommander::sendIOVarSet(*(*(a1 + 40) + 8), "roam_5g_bandboost");
      }

      else
      {
        MaxCmdRxPayload = AppleBCMWLANCommander::getMaxCmdRxPayload(*(*(a1 + 40) + 8));
        v15 = (AppleBCMWLANCommander::getMaxCmdRxPayload(*(*(a1 + 40) + 8)) << 32) | MaxCmdRxPayload;
        if (MaxCmdRxPayload)
        {
          v16 = v11;
        }

        else
        {
          v15 = 0;
          v16 = 0;
        }

        v18 = v16;
        v19 = v15;
        v13 = AppleBCMWLANCommander::runIOVarSet(*(*(a1 + 40) + 8), "roam_5g_bandboost", v21, &v18, 0);
      }

      v4 = v13;
      IOFreeData();
    }

    else
    {
      v4 = 3758097085;
    }

    IOFreeData();
  }

  return v4;
}

uint64_t AppleBCMWLANRoamAdapter::setRoamingProfile(uint64_t a1, __int16 *a2)
{
  v30 = *(a2 + 88);
  v3 = (a1 + 40);
  if (AppleBCMWLANCore::checkForScanCoreSupport(**(a1 + 40)))
  {

    return AppleBCMWLANRoamAdapter::setRoamingProfileV4(a1, a2);
  }

  if (AppleBCMWLANCore::getFirmwareInterfaceVersion(**v3) >= 6)
  {

    return AppleBCMWLANRoamAdapter::setRoamingProfileV2(a1, a2);
  }

  v5 = *(a2 + 19);
  if (v5)
  {
    if (v5 == 1)
    {
      v29 = 0;
      v6 = 4;
    }

    else
    {
      if (v5 != 3)
      {
        panic("getWlBand invalid band <%d> \n", v5);
      }

      v29 = 1;
      v6 = 1;
    }
  }

  else
  {
    v29 = 0;
    v6 = 2;
  }

  v7 = 0;
  v8 = 0;
  memset(&v34[1], 0, 68);
  v28 = v6;
  v34[0] = v6;
  v9 = a2;
  while (v9[1])
  {
    if (v30)
    {
      v10 = 0;
      v11 = 0;
      v31 = 0;
      v12 = 0;
      if ((*v9 & 2) == 0)
      {
        goto LABEL_36;
      }
    }

    else
    {
      v13 = *(a2 + 18);
      v10 = (v13 & 0xA) == 2;
      v14 = *v9;
      if (*v9)
      {
        if ((v13 & 8) != 0)
        {
          v11 = 0;
          v31 = 0;
          v12 = 1;
          if ((v14 & 2) == 0)
          {
            goto LABEL_36;
          }
        }

        else if ((v13 & 4) != 0)
        {
          v12 = 0;
          v11 = (*(a2 + 17) == 3) | v13;
          v31 = 1;
          if ((v14 & 2) == 0)
          {
            goto LABEL_36;
          }
        }

        else
        {
          v31 = 0;
          v12 = 0;
          v11 = v13 & 1;
          if ((v14 & 2) == 0)
          {
            goto LABEL_36;
          }
        }
      }

      else
      {
        v11 = 0;
        v31 = 0;
        v12 = (v13 >> 3) & 1;
        if ((v14 & 2) == 0)
        {
          goto LABEL_36;
        }
      }

      if (AppleBCMWLANCore::is4378Up(**v3))
      {
        v15 = 17;
      }

      else
      {
        v15 = 1;
      }

      LOBYTE(v34[v7 + 2]) |= v15;
    }

    if (AppleBCMWLANConfigManager::isExternallyPoweredPlatform((*v3)[2]))
    {
      LOBYTE(v34[v7 + 2]) |= 4u;
    }

LABEL_36:
    if ((*v9 & 4) != 0)
    {
      LOBYTE(v34[v7 + 2]) |= 2u;
    }

    v16 = v9[1];
    v17 = &v34[v7];
    *(v17 + 9) = v16;
    *(v17 + 10) = *(v9 + 4);
    if (!*(a2 + 84))
    {
      *(v17 + 11) = *(v9 + 16);
    }

    v18 = v9[9];
    *(v17 + 12) = v18;
    *(v17 + 13) = *(v9 + 20);
    *(v17 + 14) = *(v9 + 3);
    *(v17 + 11) = v9[7];
    if (!v12)
    {
      goto LABEL_49;
    }

    if ((*v3)[3] && CCLogStream::shouldLog())
    {
      CCLogStream::logInfo((*v3)[3], "[dk] %s@%d:Adaptive Roam Config, Trigger %d\n", "setRoamingProfile", 272, a2[40]);
    }

    if ((v17[2] & 0x11) == 0)
    {
      if (v29)
      {
        v19 = a2[40];
        if (v9[2] == -128)
        {
LABEL_71:
          if (v19 <= -75)
          {
            HIBYTE(v34[v7 + 2]) -= 2;
          }

          if (v7 * 4 && v19 && *(&v33 + v7 * 4 + 2) > v16)
          {
            *(&v33 + v7 * 4 + 2) = v16;
          }

          goto LABEL_46;
        }
      }

      else
      {
        v19 = a2[40];
      }

      if (v19 < v16)
      {
        *(v17 + 9) = v19;
        LOBYTE(v16) = v19;
      }

      *(v17 + 14) = 0x20005000A0001;
      *(v17 + 11) = 30;
      goto LABEL_71;
    }

    LOWORD(v19) = a2[40];
LABEL_46:
    v20 = v19 + 5;
    if (v20 >= v18)
    {
      LOBYTE(v20) = v18;
    }

    *(v17 + 12) = v20;
LABEL_49:
    if (v11)
    {
      HIBYTE(v34[v7 + 2]) = 8;
      *(v17 + 7) = 1;
      *(v17 + 9) = 2;
      *(v17 + 10) = 1;
      *(v17 + 11) = 2;
      if (v29 && *(a2 + 17) == 3)
      {
        *(v17 + 13) = 0;
      }

      if (v31 && v9[2] <= -100)
      {
        if ((*v3)[3] && CCLogStream::shouldLog())
        {
          AppleBCMWLANRoamAdapter::setRoamingProfile(v3);
        }

        HIBYTE(v34[v7 + 2]) = *(a2 + 82);
      }
    }

    if (v10 && v9[2] == -128)
    {
      *(v17 + 9) = 2;
    }

    v7 += 4;
    ++v8;
    v9 += 11;
    if (v7 == 12)
    {
      v21 = 48;
      goto LABEL_78;
    }
  }

  v21 = (v7 * 4);
LABEL_78:
  v22 = 0;
  HIWORD(v34[1]) = v21;
  v23 = (a2 + 1);
  while (1)
  {
    v24 = *v23;
    v23 += 11;
    v25 = *v3;
    if (!v24)
    {
      break;
    }

    if (v25[3] && CCLogStream::shouldLog())
    {
      AppleBCMWLANRoamAdapter::setRoamingProfile(v3);
    }

    if (++v22 == 3)
    {
      v25 = *v3;
      break;
    }
  }

  if (!v21)
  {
LABEL_91:
    v27 = 0;
    *(v25 + 8) = *(a2 + 17);
    return v27;
  }

  v33 = 0;
  v26 = AppleBCMWLANCommander::sendIOVarSet(v25[1], "roam_prof");
  if (!v26)
  {
    v25 = *v3;
    goto LABEL_91;
  }

  v27 = v26;
  if ((*v3)[3] && CCLogStream::shouldLog())
  {
    CCLogStream::logAlert((*v3)[3], "[dk] %s@%d: Error: setting roam profile for band %d failed\n", "setRoamingProfile", 359, v28);
  }

  return v27;
}

uint64_t AppleBCMWLANRoamAdapter::setRoamingProfileV4(uint64_t a1, unsigned __int16 *a2)
{
  v3 = *(a2 + 19);
  if (v3)
  {
    if (v3 == 1)
    {
      v43 = 0;
      v4 = 4;
    }

    else
    {
      if (v3 != 3)
      {
        panic("getWlBand invalid band <%d> \n", *(a2 + 19));
      }

      v43 = 1;
      v4 = 1;
    }
  }

  else
  {
    v43 = 0;
    v4 = 2;
  }

  v5 = a2;
  v6 = *(a2 + 88);
  AppleBCMWLANRoamAdapter::setRoaming5GBandBoost(a1, (a2 + 46));
  v7 = 0;
  v8 = 0;
  memset(v53, 0, sizeof(v53));
  v51 = v4;
  v52 = 3;
  v42 = v4;
  v41 = v4;
  v44 = v6;
  while (v5[1])
  {
    if (v6)
    {
      v46 = 0;
      v47 = 0;
      v9 = 0;
      v10 = 0;
      v11 = 0;
      if ((*v5 & 2) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_23;
    }

    v9 = 0;
    v12 = *(a2 + 18);
    v47 = (v12 & 0xA) == 2;
    if (*v5)
    {
      v10 = 0;
      v13 = 0;
      if ((v12 & 8) == 0)
      {
        v10 = (v12 >> 4) & 1;
        if ((v12 & 4) != 0)
        {
          v9 = (*(a2 + 17) == 3) | v12;
          v13 = 1;
        }

        else
        {
          v13 = 0;
          v9 = v12 & 1;
        }
      }
    }

    else
    {
      v10 = 0;
      v13 = 0;
    }

    v46 = v13;
    v11 = (v12 >> 3) & 1;
    if ((*v5 & 2) != 0)
    {
      if (AppleBCMWLANCore::is4378Up(**(a1 + 40)))
      {
        v14 = 17;
      }

      else
      {
        v14 = 1;
      }

      *(v53 + v7) |= v14;
LABEL_23:
      if (AppleBCMWLANConfigManager::isExternallyPoweredPlatform(*(*(a1 + 40) + 16)))
      {
        *(v53 + v7) |= 4u;
      }
    }

LABEL_25:
    if ((*v5 & 4) != 0)
    {
      *(v53 + v7) |= 2u;
    }

    if (!v6)
    {
      if (AppleBCMWLANCore::is4387C0Up(**(a1 + 40)) && AppleBCMWLANCore::getTxPowerManager(**(a1 + 40)) && (TxPowerManager = AppleBCMWLANCore::getTxPowerManager(**(a1 + 40)), AppleBCMWLANTxPowerManager::getDynSARMode(TxPowerManager) == 2))
      {
        if (*(*(a1 + 40) + 24) && CCLogStream::shouldLog())
        {
          AppleBCMWLANRoamAdapter::setRoamingProfileV4(a1 + 40);
        }
      }

      else
      {
        *(v53 + v7) |= 8u;
      }
    }

    v48 = v10;
    if (*(*(a1 + 40) + 24) && CCLogStream::shouldLog())
    {
      CCLogStream::logInfo(*(*(a1 + 40) + 24), "[dk] %s@%d:band=%d, bcm_roam_profile.roam_prof[%d].roam_flags=0x%x, fAppliedRoamOffsets=%d\n", "setRoamingProfileV4", 705, v41, v8, *(v53 + v7), *(a2 + 18));
    }

    v16 = &v51 + v7;
    *(v16 + 12) = 2560;
    v17 = v5[1];
    v16[9] = v17;
    v16[10] = *(v5 + 4);
    if (!*(a2 + 84))
    {
      v16[11] = *(v5 + 16);
    }

    v18 = v5[9];
    v16[12] = v18;
    v16[13] = *(v5 + 20);
    v19 = *(v5 + 3);
    *(v16 + 14) = v19;
    *(v16 + 11) = v5[7];
    *(v16 + 13) = 5;
    v16[28] = 10;
    v45 = WORD1(v19);
    v20 = WORD2(v19);
    if ((*v5 & 2) != 0 && *(a2 + 17) == 3 && AppleBCMWLANCore::is4378Up(**(a1 + 40)))
    {
      *(v16 + 2) = 0xB40002001E005ALL;
      v45 = 90;
      v20 = 30;
    }

    v21 = *(a1 + 40);
    if (*(v21 + 24))
    {
      shouldLog = CCLogStream::shouldLog();
      v21 = *(a1 + 40);
      if (shouldLog)
      {
        CCLogStream::logInfo(*(v21 + 24), "[dk] %s@%d:poorlqmOffset %d activeTrafficOffset %d BtAudioActiveOffset %d useMotionOffset %d useAdaptiveRoamMode %d\n", "setRoamingProfileV4", 734, v47, v9 & 1, v48, v46, v11);
        v21 = *(a1 + 40);
      }
    }

    if (*(v21 + 24))
    {
      v23 = CCLogStream::shouldLog();
      v21 = *(a1 + 40);
      if (v23)
      {
        CCLogStream::logInfo(*(v21 + 24), "[dk] %s@%d:pParams[i].flags %x CI Delta %x ,  pParams[i].flags & kRoamUseLazyScan = %d bcm_roam_profile.roam_prof[i].roam_flags %x bcm_roam_profile.roam_prof[i].roam_flags & WL_ROAM_PROF_LAZY = %d bcm_roam_profile.roam_prof[i].roam_flags & WL_ROAM_FIND_HIGHER_BAND_ONLY = %d\n", "setRoamingProfileV4", 741, *v5, *v5 & 4, *v5 & 2, v16[8], v16[8] & 1, v16[8] & 0x10);
        v21 = *(a1 + 40);
      }
    }

    if (*(v21 + 24) && CCLogStream::shouldLog())
    {
      CCLogStream::logInfo(*(*(a1 + 40) + 24), "[dk] %s@%d:pParams[i].triggers.lower %d pParams[i].triggers.upper %d\n", "setRoamingProfileV4", 744, v5[2], v5[1]);
      if (!v11)
      {
        goto LABEL_104;
      }
    }

    else if (!v11)
    {
      goto LABEL_104;
    }

    if (*(*(a1 + 40) + 24) && CCLogStream::shouldLog())
    {
      CCLogStream::logInfo(*(*(a1 + 40) + 24), "[dk] %s@%d:Adaptive Roam Config, Trigger %d\n", "setRoamingProfileV4", 748, a2[40]);
    }

    v24 = *(a2 + 17);
    if (v24 == 2)
    {
      if (*(*(a1 + 40) + 24) && CCLogStream::shouldLog())
      {
        CCLogStream::logInfo(*(*(a1 + 40) + 24), "[dk] %s@%d:band %d pRoamProfileConfig->params[i].triggers.lower %d pRoamProfileConfig->common.roamTrigger %d pRoamProfileConfig->common.roamTrigger %d bcm_roam_profile.roam_prof[i].roam_trigger %d\n", "setRoamingProfileV4", 813, v42, v5[2], a2[40], a2[40], v17);
      }

      if (v42 == 1)
      {
        v30 = a2[40];
        if (v5[2] == -128)
        {
          if (v30 < v17)
          {
            v16[9] = a2[40];
            LOBYTE(v17) = v30;
          }

          *(v16 + 14) = 0x2001401680001;
          *(v16 + 11) = 90;
          v45 = 360;
          v20 = 20;
        }
      }

      else if (v42 == 2)
      {
        v30 = a2[40];
        if (v5[2] == -128)
        {
          if (v30 < v17)
          {
            v16[9] = a2[40];
            LOBYTE(v17) = v30;
          }

          *(v16 + 2) = 0x5A0001005A0168;
          v45 = 360;
          v20 = 90;
        }
      }

      else
      {
        LOWORD(v30) = a2[40];
      }

      if (v7 && v30 && *(v50 + v7 + 6) > v17)
      {
        *(v50 + v7 + 6) = v17;
      }

      goto LABEL_104;
    }

    if (v24 == 3)
    {
      v25 = v16[8];
      if ((v25 & 0x11111111) == 0)
      {
        v26 = a2[40];
        if (v43)
        {
          if (v26 >= v5[1])
          {
            goto LABEL_68;
          }

          v27 = v5[2];
          if (v27 <= -75 && v27 != -128)
          {
            if (AppleBCMWLANCore::is4378Up(**(a1 + 40)))
            {
              v28 = 16;
            }

            else
            {
              v28 = v25;
            }

            v16[8] = v25 | v28;
            v26 = a2[40];
            if (v26 <= -75)
            {
              *(v53 + v7 + 3) = 8;
            }

LABEL_68:
            LOWORD(v27) = v5[2];
          }

          if (v27 == 65408)
          {
            if (v26 < v17)
            {
              LOBYTE(v27) = v26;
              v29 = 0x200010002001ELL;
              goto LABEL_95;
            }

            LOBYTE(v27) = v17;
            v29 = 0x200010002001ELL;
            goto LABEL_98;
          }
        }

        else
        {
          LOWORD(v27) = v5[2];
        }

        if (v26 >= v27)
        {
          if (v26 >= v17)
          {
            LOBYTE(v27) = v17;
            v29 = 0x1E00020005000ALL;
            goto LABEL_98;
          }

          LOBYTE(v27) = v26;
        }

        v29 = 0x1E00020005000ALL;
LABEL_95:
        v16[9] = v27;
LABEL_98:
        *(v16 + 7) = 1;
        *(v16 + 2) = v29;
        v31 = v26 + 5;
        if (v26 + 5 >= v18)
        {
          v31 = v18;
        }

        v16[12] = v31;
        v20 = WORD1(v29);
        v45 = v29;
        if (v7 && v26 && *(v50 + v7 + 6) > v27)
        {
          *(v50 + v7 + 6) = v27;
        }
      }
    }

LABEL_104:
    if ((v9 | v48))
    {
      *(v53 + v7 + 3) = 8;
      *(v16 + 7) = 1;
      *(v16 + 9) = 2;
      *(v16 + 10) = 1;
      *(v16 + 11) = 2;
      if (v43 && *(a2 + 17) == 3)
      {
        v16[13] = 0;
      }

      if (!(v48 & 1 | ((v46 & 1) == 0)) && v5[2] <= -100)
      {
        if (*(*(a1 + 40) + 24) && CCLogStream::shouldLog())
        {
          AppleBCMWLANRoamAdapter::setRoamingProfileV4(a1 + 40);
        }

        *(v53 + v7 + 3) = *(a2 + 82);
      }

      v20 = 2;
    }

    if (v47 && v5[2] == -128)
    {
      v20 = 2;
      *(v16 + 9) = 2;
    }

    v6 = v44;
    if (((AppleBCMWLANCore::checkForLPSCDisable(**(a1 + 40)) | v9 | v48) & 1) != 0 || v44 || *(a2 + 85))
    {
      *(&v53[1] + v7 + 8) = 0;
    }

    else
    {
      if (v45 >> 1 <= v20)
      {
        v32 = v20;
      }

      else
      {
        v32 = v45 >> 1;
      }

      v33 = &v51 + v7;
      *(v33 + 16) = v32;
      *(v33 + 17) = v45;
      if (*(*(a1 + 40) + 24) && CCLogStream::shouldLog())
      {
        CCLogStream::logInfo(*(*(a1 + 40) + 24), "[dk] %s@%d:LPSC: lp_roam_scan_period = %d, max_fullscan_period = %d Legacy: init_scan_period = %d, fullscan_period = %d\n", "setRoamingProfileV4", 885, v32, v45, v20, v45);
      }
    }

    v7 += 28;
    HIWORD(v52) = v7;
    ++v8;
    v5 += 11;
    if (v7 == 84)
    {
      break;
    }
  }

  v34 = 0;
  v35 = a2 + 1;
  while (1)
  {
    v36 = *v35;
    v35 += 11;
    v37 = *(a1 + 40);
    if (!v36)
    {
      break;
    }

    if (*(v37 + 24) && CCLogStream::shouldLog())
    {
      AppleBCMWLANRoamAdapter::setRoamingProfileV4(a1 + 40);
    }

    if (++v34 == 3)
    {
      v37 = *(a1 + 40);
      break;
    }
  }

  if (!v7)
  {
LABEL_145:
    v39 = 0;
    *(v37 + 32) = *(a2 + 17);
    return v39;
  }

  HIWORD(v50[0]) = HIWORD(a1);
  v50[1] = AppleBCMWLANRoamAdapter::handleRoamProfileAsyncCallBack;
  v50[2] = 0;
  v38 = AppleBCMWLANCommander::sendIOVarSet(*(v37 + 8), "roam_prof");
  if (!v38)
  {
    v37 = *(a1 + 40);
    goto LABEL_145;
  }

  v39 = v38;
  if (*(*(a1 + 40) + 24) && CCLogStream::shouldLog())
  {
    CCLogStream::logAlert(*(*(a1 + 40) + 24), "[dk] %s@%d: Error: setting roam profile for band %d failed\n", "setRoamingProfileV4", 908, v42);
  }

  return v39;
}

uint64_t AppleBCMWLANRoamAdapter::setRoamingProfileV2(uint64_t a1, unsigned __int16 *a2)
{
  v3 = *(a2 + 19);
  if (v3)
  {
    if (v3 == 1)
    {
      v41 = 0;
      v4 = 4;
    }

    else
    {
      if (v3 != 3)
      {
        panic("getWlBand invalid band <%d> \n", *(a2 + 19));
      }

      v41 = 1;
      v4 = 1;
    }
  }

  else
  {
    v41 = 0;
    v4 = 2;
  }

  v5 = a2;
  v42 = *(a2 + 88);
  v6 = (a1 + 40);
  Bus = AppleBCMWLANCore::getBus(**(a1 + 40));
  v40 = (*(*Bus + 368))(Bus);
  AppleBCMWLANRoamAdapter::setRoaming5GBandBoost(a1, (a2 + 46));
  v8 = 0;
  v9 = 0;
  v10 = 0;
  memset(v49, 0, sizeof(v49));
  v47 = v4;
  v48 = 1;
  v39 = v4;
  while (v5[1])
  {
    if (v42)
    {
      v11 = 0;
      v12 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      if ((*v5 & 2) == 0)
      {
        goto LABEL_28;
      }

      goto LABEL_26;
    }

    v12 = 0;
    v16 = *(a2 + 18);
    v11 = (v16 & 0xA) == 2;
    if (*v5)
    {
      v13 = 0;
      v15 = 0;
      if ((v16 & 8) == 0)
      {
        if (v40 == 4378)
        {
          v15 = (v16 >> 4) & 1;
        }

        else
        {
          v15 = 0;
        }

        if ((v16 & 4) != 0)
        {
          v12 = (*(a2 + 17) == 3) | v16;
          v13 = 1;
        }

        else
        {
          v13 = 0;
          v12 = v16 & 1;
        }
      }
    }

    else
    {
      v13 = 0;
      v15 = 0;
    }

    v14 = (v16 >> 3) & 1;
    if ((*v5 & 2) != 0)
    {
      if (AppleBCMWLANCore::is4378Up(**v6))
      {
        v17 = 17;
      }

      else
      {
        v17 = 1;
      }

      *(v49 + v8) |= v17;
LABEL_26:
      if (AppleBCMWLANConfigManager::isExternallyPoweredPlatform((*v6)[2]))
      {
        *(v49 + v8) |= 4u;
      }
    }

LABEL_28:
    if ((*v5 & 4) != 0)
    {
      *(v49 + v8) |= 2u;
    }

    if ((*v6)[3] && CCLogStream::shouldLog())
    {
      CCLogStream::logInfo((*v6)[3], "[dk] %s@%d:poorlqmOffset %d activeTrafficOffset %d BtAudioActiveOffset %d useMotionOffset %d useAdaptiveRoamMode %d\n", "setRoamingProfileV2", 442, v11, v12 & 1, v15, v13, v14);
    }

    v43 = v13;
    v44 = v11;
    v18 = &v47 + v8;
    *(v18 + 12) = 2560;
    v19 = v5[1];
    v18[9] = v19;
    v18[10] = *(v5 + 4);
    if (!*(a2 + 84))
    {
      v18[11] = *(v5 + 16);
    }

    v20 = v5[9];
    v18[12] = v20;
    v18[13] = *(v5 + 20);
    *(v18 + 14) = *(v5 + 3);
    *(v18 + 11) = v5[7];
    if ((*v5 & 2) != 0 && *(a2 + 17) == 3 && AppleBCMWLANCore::is4378Up(**v6))
    {
      *(v18 + 2) = 0xB40002001E005ALL;
    }

    v21 = *v6;
    if ((*v6)[3])
    {
      shouldLog = CCLogStream::shouldLog();
      v21 = *v6;
      if (shouldLog)
      {
        CCLogStream::logInfo(v21[3], "[dk] %s@%d:pParams[i].flags %x CI Delta %x ,  pParams[i].flags & kRoamUseLazyScan = %d bcm_roam_profile.roam_prof[i].roam_flags %x bcm_roam_profile.roam_prof[i].roam_flags & (int8)WL_ROAM_PROF_LAZY = %d bcm_roam_profile.roam_prof[i].roam_flags & (int8)WL_ROAM_FIND_HIGHER_BAND_ONLY = %d\n", "setRoamingProfileV2", 474, *v5, *v5 & 4, *v5 & 2, v18[8], v18[8] & 1, v18[8] & 0x10);
        v21 = *v6;
      }
    }

    if (v21[3] && CCLogStream::shouldLog())
    {
      CCLogStream::logInfo((*v6)[3], "[dk] %s@%d:pParams[i].triggers.lower %d pParams[i].triggers.upper %d\n", "setRoamingProfileV2", 477, v5[2], v5[1]);
      if (!v14)
      {
        goto LABEL_96;
      }
    }

    else if (!v14)
    {
      goto LABEL_96;
    }

    if ((*v6)[3] && CCLogStream::shouldLog())
    {
      CCLogStream::logInfo((*v6)[3], "[dk] %s@%d:Adaptive Roam Config, Trigger %d\n", "setRoamingProfileV2", 481, a2[40]);
    }

    v23 = *(a2 + 17);
    if (v23 == 2)
    {
      if ((*v6)[3] && CCLogStream::shouldLog())
      {
        CCLogStream::logInfo((*v6)[3], "[dk] %s@%d:band %d pParams[i].triggers.lower %d pRoamProfileConfig->common.roamTrigger %d pRoamProfileConfig->common.roamTrigger %d bcm_roam_profile.roam_prof[i].roam_trigger %d\n", "setRoamingProfileV2", 545, v39, v5[2], a2[40], a2[40], v19);
      }

      if (v39 == 1)
      {
        v29 = a2[40];
        if (v5[2] == -128)
        {
          if (v29 < v19)
          {
            v18[9] = a2[40];
            LOBYTE(v19) = v29;
          }

          *(v18 + 14) = 0x2001401680001;
          *(v18 + 11) = 90;
        }
      }

      else if (v39 == 2)
      {
        v29 = a2[40];
        if (v5[2] == -128)
        {
          if (v29 < v19)
          {
            v18[9] = a2[40];
            LOBYTE(v19) = v29;
          }

          *(v18 + 2) = 0x5A0001005A0168;
        }
      }

      else
      {
        LOWORD(v29) = a2[40];
      }

      if (v8 && v29 && *(v46 + v8 + 6) > v19)
      {
        *(v46 + v8 + 6) = v19;
      }

      goto LABEL_96;
    }

    if (v23 == 3)
    {
      v24 = v18[8];
      if ((v24 & 0x11111111) == 0)
      {
        v25 = a2[40];
        if (v41)
        {
          if (v25 >= v5[1])
          {
            goto LABEL_60;
          }

          v26 = v5[2];
          if (v26 <= -75 && v26 != -128)
          {
            if (AppleBCMWLANCore::is4378Up(**v6))
            {
              v27 = 16;
            }

            else
            {
              v27 = v24;
            }

            v18[8] = v24 | v27;
            v25 = a2[40];
            if (v25 <= -75)
            {
              *(v49 + v8 + 3) = 8;
            }

LABEL_60:
            LOWORD(v26) = v5[2];
          }

          if (v26 == 65408)
          {
            if (v25 < v19)
            {
              LOBYTE(v26) = v25;
              v28 = 0x200010002001ELL;
              goto LABEL_87;
            }

            LOBYTE(v26) = v19;
            v28 = 0x200010002001ELL;
            goto LABEL_90;
          }
        }

        else
        {
          LOWORD(v26) = v5[2];
        }

        if (v25 >= v26)
        {
          if (v25 >= v19)
          {
            LOBYTE(v26) = v19;
            v28 = 0x1E00020005000ALL;
            goto LABEL_90;
          }

          LOBYTE(v26) = v25;
        }

        v28 = 0x1E00020005000ALL;
LABEL_87:
        v18[9] = v26;
LABEL_90:
        *(v18 + 7) = 1;
        *(v18 + 2) = v28;
        v30 = v25 + 5;
        if (v25 + 5 >= v20)
        {
          v30 = v20;
        }

        v18[12] = v30;
        if (v8 && v25 && *(v46 + v8 + 6) > v26)
        {
          *(v46 + v8 + 6) = v26;
        }
      }
    }

LABEL_96:
    if ((v12 | v15))
    {
      *(v49 + v8 + 3) = 8;
      *(v18 + 7) = 1;
      *(v18 + 9) = 2;
      *(v18 + 10) = 1;
      *(v18 + 11) = 2;
      if (v41 && *(a2 + 17) == 3)
      {
        v18[13] = 0;
      }

      if (!(v15 & 1 | ((v43 & 1) == 0)) && v5[2] <= -100)
      {
        if ((*v6)[3] && CCLogStream::shouldLog())
        {
          AppleBCMWLANRoamAdapter::setRoamingProfileV2(v6);
        }

        *(v49 + v8 + 3) = *(a2 + 82);
      }
    }

    if (v44 && v5[2] == -128)
    {
      *(v18 + 9) = 2;
    }

    v8 += 20;
    ++v10;
    v5 += 11;
    v9 = v8;
    v31 = v8;
    if (v8 == 60)
    {
      goto LABEL_114;
    }
  }

  v31 = v8;
  LOWORD(v8) = v9;
LABEL_114:
  v32 = 0;
  HIWORD(v48) = v8;
  v33 = a2 + 1;
  while (1)
  {
    v34 = *v33;
    v33 += 11;
    v35 = *v6;
    if (!v34)
    {
      break;
    }

    if (v35[3] && CCLogStream::shouldLog())
    {
      AppleBCMWLANRoamAdapter::setRoamingProfileV2(v6);
    }

    if (++v32 == 3)
    {
      v35 = *v6;
      break;
    }
  }

  if (!v31)
  {
LABEL_127:
    v37 = 0;
    *(v35 + 8) = *(a2 + 17);
    return v37;
  }

  v46[0] = AppleBCMWLANRoamAdapter::handleRoamProfileAsyncCallBack;
  v46[1] = 0;
  v36 = AppleBCMWLANCommander::sendIOVarSet(v35[1], "roam_prof");
  if (!v36)
  {
    v35 = *v6;
    goto LABEL_127;
  }

  v37 = v36;
  if ((*v6)[3] && CCLogStream::shouldLog())
  {
    CCLogStream::logAlert((*v6)[3], "[dk] %s@%d: Error: setting roam profile for band %d failed\n", "setRoamingProfileV2", 620, v39);
  }

  return v37;
}

uint64_t AppleBCMWLANRoamAdapter::handleRoamProfileAsyncCallBack(uint64_t result, uint64_t a2, int a3)
{
  if (a3)
  {
    v3 = (result + 40);
    result = *(*(result + 40) + 24);
    if (result)
    {
      result = CCLogStream::shouldLog();
      if (result)
      {
        return AppleBCMWLANRoamAdapter::handleRoamProfileAsyncCallBack(v3);
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANRoamAdapter::getRoamFlags(uint64_t a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = *(a2 + 14);
  if (v3)
  {
    v4 = v2 & 1;
  }

  else
  {
    v4 = v2 & 1 | (((v3 >> 1) & 3) << 8);
  }

  v5 = v2 & 1 | 4;
  if (*(a2 + 14))
  {
    v5 = v4;
  }

  v6 = (v2 >> 2) & 2 | ((((v2 & 6) >> 1) & 3) << 11) | v5;
  if ((v2 & 0x10) != 0)
  {
    v7 = (a1 + 40);
    if (AppleBCMWLANCore::is4387C0Up(**(a1 + 40)) && AppleBCMWLANCore::getTxPowerManager(**v7) && (TxPowerManager = AppleBCMWLANCore::getTxPowerManager(**v7), AppleBCMWLANTxPowerManager::getDynSARMode(TxPowerManager) == 2))
    {
      if ((*v7)[3] && CCLogStream::shouldLog())
      {
        AppleBCMWLANRoamAdapter::getRoamFlags(v7);
      }
    }

    else
    {
      return v6 | 8;
    }
  }

  return v6;
}

uint64_t AppleBCMWLANRoamAdapter::setRoamBracket(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a3 + 22) = 1802;
  *(a3 + 18) = 330240;
  *(a3 + 8) = *(a2 + 8);
  *(a3 + 16) = *(a2 + 16);
  v6 = AppleBCMWLANCore::checkForLPSCDisable(**(a1 + 40));
  v7 = *(a2 + 18);
  v8 = *(a2 + 20);
  if (v6)
  {
    v7 = 0;
    v8 = 0;
  }

  *(a3 + 26) = v7;
  *(a3 + 28) = v8;
  result = AppleBCMWLANRoamAdapter::getRoamFlags(a1, a2);
  *a3 = result;
  *(a3 + 4) = *(a2 + 4);
  *(a3 + 5) = *(a2 + 6);
  *(a3 + 6) = *(a2 + 36);
  *(a3 + 31) = *(a2 + 40);
  *(a3 + 30) = *(a2 + 38);
  *(a3 + 33) = *(a2 + 48);
  *(a3 + 32) = *(a2 + 46);
  *(a3 + 35) = *(a2 + 56);
  *(a3 + 34) = *(a2 + 54);
  return result;
}

uint64_t AppleBCMWLANRoamAdapter::printProfile(uint64_t result, uint64_t a2)
{
  if (*(a2 + 6) >= 0x24u)
  {
    v2 = result;
    v3 = 0;
    v4 = *(a2 + 6) / 0x24uLL;
    do
    {
      result = *(*(v2 + 40) + 24);
      if (result)
      {
        result = CCLogStream::shouldLog();
        if (result)
        {
          result = AppleBCMWLANRoamAdapter::printProfile(v2 + 40);
        }
      }

      ++v3;
    }

    while (v4 != v3);
  }

  return result;
}

uint64_t AppleBCMWLANRoamAdapter::setRoamingProfileV6(uint64_t a1, uint64_t a2, int a3)
{
  memset(&v13[1], 0, 148);
  v13[0] = a3;
  LOWORD(v13[1]) = 5;
  if (a3 != -1)
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = (a2 + 32);
    do
    {
      if (!*(v8 - 12))
      {
        break;
      }

      if (*v8)
      {
        AppleBCMWLANRoamAdapter::setRoamBracket(a1, (v8 - 14), &v13[9 * v7 + 2]);
        v5 = HIWORD(v13[1]) + 36;
        HIWORD(v13[1]) += 36;
        ++v7;
      }

      else if (*(*(a1 + 40) + 24) && CCLogStream::shouldLog())
      {
        CCLogStream::logAlert(*(*(a1 + 40) + 24), "[dk] %s@%d:Skiping disable bracket band<%d> bracket<%d> \n", "setRoamingProfileV6", 1055, a3, v6);
      }

      ++v6;
      v8 += 30;
    }

    while (v6 != 3);
    AppleBCMWLANRoamAdapter::printProfile(a1, v13);
    if (v5)
    {
      v9 = AppleBCMWLANCommander::sendIOVarSet(*(*(a1 + 40) + 8), "roam_prof");
      v10 = *(*(a1 + 40) + 24);
      if (v9)
      {
        if (v10 && CCLogStream::shouldLog())
        {
          CCLogStream::logAlert(*(*(a1 + 40) + 24), "[dk] %s@%d: WiFiRoam : Error: setting roam profile for band %d failed\n", "setRoamingProfileV6", 1073, v13[0]);
        }

        return v9;
      }

      if (v10 && CCLogStream::shouldLog())
      {
        AppleBCMWLANRoamAdapter::setRoamingProfileV6(a1 + 40);
      }
    }

    return 0;
  }

  v9 = 3758097090;
  v11 = a1 + 40;
  if (*(*(a1 + 40) + 24) && CCLogStream::shouldLog())
  {
    AppleBCMWLANRoamAdapter::setRoamingProfileV6(v11);
  }

  return v9;
}

uint64_t AppleBCMWLANRoamAdapter::setLEGACY_ROAM_PROFILE_CONFIG(uint64_t a1, __int16 *a2)
{
  if (a2)
  {
    v3 = AppleBCMWLANRoamAdapter::setRoamingProfile(a1, a2);
    v4 = *(a1 + 40);
    if (v3)
    {
      if (*(v4 + 24) && CCLogStream::shouldLog())
      {
        AppleBCMWLANRoamAdapter::setLEGACY_ROAM_PROFILE_CONFIG(a1 + 40);
      }
    }

    else
    {
      AppleBCMWLANRoamAdapter::configureMultiAPBit(a1, (*(v4 + 32) < 0xBu) & (0x508u >> *(v4 + 32)));
    }
  }

  else
  {
    AppleBCMWLANRoamAdapter::setLEGACY_ROAM_PROFILE_CONFIG(a1);
    return v6;
  }

  return v3;
}

uint64_t *AppleBCMWLANRoamAdapter::configureMultiAPBit(AppleBCMWLANCore ***this, int a2)
{
  v4 = (this + 5);
  result = AppleBCMWLANCore::featureFlagIsBitSet(*this[5], 20);
  if (result)
  {
    v6 = a2 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    result = AppleBCMWLANCommander::sendIOVarSet(this[5][1], "roam_multi_ap_env");
    if (result)
    {
      result = (*v4)[3];
      if (result)
      {
        result = CCLogStream::shouldLog();
        if (result)
        {
          return AppleBCMWLANRoamAdapter::configureMultiAPBit(v4);
        }
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANRoamAdapter::setROAM_PROFILE_CONFIG(AppleBCMWLANRoamAdapter *a1, uint64_t a2)
{
  LOBYTE(v8) = 0;
  if (!a2)
  {
    AppleBCMWLANRoamAdapter::setROAM_PROFILE_CONFIG(a1);
    return v10;
  }

  AppleBCMWLANRoamAdapter::disable6GForRoamScans(a1, ((*(a2 + 568) >> 1) & 1) == 0);
  if (*a2)
  {
    if (AppleBCMWLANRoamAdapter::setRoamingProfileV6(a1, a2, 2))
    {
      AppleBCMWLANRoamAdapter::setROAM_PROFILE_CONFIG(a1);
      return v10;
    }

    v4 = 0;
  }

  else
  {
    v4 = 3758097084;
  }

  if (*(a2 + 184))
  {
    if (AppleBCMWLANRoamAdapter::setRoamingProfileV6(a1, a2 + 184, 1))
    {
      AppleBCMWLANRoamAdapter::setROAM_PROFILE_CONFIG(a1);
      return v10;
    }

    v4 = 0;
  }

  if (*(a2 + 368))
  {
    if (!AppleBCMWLANRoamAdapter::setRoamingProfileV6(a1, a2 + 368, 4))
    {
      v4 = 0;
      goto LABEL_12;
    }

    AppleBCMWLANRoamAdapter::setROAM_PROFILE_CONFIG(a1);
    return v10;
  }

LABEL_12:
  HIBYTE(v8) = *(a2 + 554);
  v5 = *(a1 + 5);
  v9 = *(a2 + 558);
  *(v5 + 38) = v9;
  *(v5 + 36) = v8;
  v6 = *(a1 + 5);
  if (*(v6 + 39))
  {
    if (*(v6 + 24) && CCLogStream::shouldLog())
    {
      AppleBCMWLANRoamAdapter::setROAM_PROFILE_CONFIG(a1 + 40);
    }
  }

  else
  {
    AppleBCMWLANRoamAdapter::applyRoamingCandidateBoost(a1, &v8, 0);
  }

  *(*(a1 + 5) + 32) = *(a2 + 560);
  AppleBCMWLANRoamAdapter::configureMultiAPBit(a1, (*(*(a1 + 5) + 32) < 0xBu) & (0x508u >> *(*(a1 + 5) + 32)));
  return v4;
}

uint64_t AppleBCMWLANRoamAdapter::disable6GForRoamScans(AppleBCMWLANRoamAdapter *this, char a2)
{
  v13 = 265;
  v4 = (this + 40);
  v3 = *(this + 5);
  v14 = a2;
  v5 = (*(**v3 + 88))();
  if ((*(*v5 + 136))(v5))
  {
    v10 = this;
    v11 = AppleBCMWLANRoamAdapter::disable6GForRoamScansCallback;
    v12 = 0;
    v6 = AppleBCMWLANCommander::sendIOVarSet(*(*(this + 5) + 8), "join_pref");
  }

  else
  {
    v7 = (*v4)[1];
    v10 = &v13;
    v11 = 3;
    v6 = AppleBCMWLANCommander::runIOVarSet(v7, "join_pref", &v10, 0, 0);
  }

  v8 = v6;
  if (v6 && (*v4)[3] && CCLogStream::shouldLog())
  {
    AppleBCMWLANRoamAdapter::disable6GForRoamScans(v4, v8);
  }

  return v8;
}

uint64_t AppleBCMWLANRoamAdapter::applyRoamingCandidateBoost(uint64_t a1, unsigned __int8 *a2, char a3)
{
  if (a2)
  {
    v22 = 775;
    v23 = *a2;
    v24 = *(a2 + 1);
    v25 = 513;
    v7 = (a1 + 40);
    v6 = *(a1 + 40);
    if (v6[3])
    {
      shouldLog = CCLogStream::shouldLog();
      v6 = *v7;
      if (shouldLog)
      {
        CCLogStream::logNoticeIf(v6[3], 0x80uLL, "[dk] %s@%d:%s WiFiRoam : Applying roam candidate boost of %d for 2GHz, %d for 5GHz and %d for 6GHz \n", "applyRoamingCandidateBoost", 1646, "applyRoamingCandidateBoost", *a2, a2[1], a2[2]);
        v6 = *v7;
      }
    }

    v9 = AppleBCMWLANCore::checkFor6GSupportCardCapability(*v6);
    v10 = *v7;
    if (v9 && v10[3] && (v11 = CCLogStream::shouldLog(), v10 = *v7, v11))
    {
      CCLogStream::logAlert(v10[3], "[dk] %s@%d:%s:%d: Issuing join_pref to FW: Applying roam candidate boost of %d for 2GHz, %d for 5GHz and %d for 6GHz \n", "applyRoamingCandidateBoost", 1649, "applyRoamingCandidateBoost", 1649, *a2, a2[1], a2[2]);
      v10 = *v7;
      if (a3)
      {
        goto LABEL_10;
      }
    }

    else if (a3)
    {
      goto LABEL_10;
    }

    v12 = (*(**v10 + 88))();
    v13 = (*(*v12 + 136))(v12);
    v10 = *v7;
    if (!v13)
    {
      v17 = v10[1];
      v19 = &v22;
      v20 = 9;
      v14 = AppleBCMWLANCommander::runIOVarSet(v17, "join_pref", &v19, 0, 0);
      goto LABEL_15;
    }

LABEL_10:
    v19 = a1;
    v20 = AppleBCMWLANRoamAdapter::applyRoamingCandidateBoostCallback;
    v21 = 0;
    v14 = AppleBCMWLANCommander::sendIOVarSet(v10[1], "join_pref");
LABEL_15:
    v15 = v14;
    if (v14 && (*v7)[3] && CCLogStream::shouldLog())
    {
      AppleBCMWLANRoamAdapter::applyRoamingCandidateBoost((a1 + 40), v15);
    }

    return v15;
  }

  v15 = 3758097084;
  v16 = a1 + 40;
  if (*(*(a1 + 40) + 24) && CCLogStream::shouldLog())
  {
    AppleBCMWLANRoamAdapter::applyRoamingCandidateBoost(v16);
  }

  return v15;
}

uint64_t AppleBCMWLANRoamAdapter::cmdROAM_USER_CACHE(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = IOMallocZeroData();
  if (v6)
  {
    v7 = v6;
    if (!a2)
    {
      AppleBCMWLANRoamAdapter::cmdROAM_USER_CACHE(a1);
      OverrideStateFromUserRoamCache = v13;
LABEL_22:
      IOFreeData();
      return OverrideStateFromUserRoamCache;
    }

    if (*(a2 + 120) && AppleBCMWLANRoamAdapter::isAdaptiveRoamRequestValid(a1, a2))
    {
      OverrideStateFromUserRoamCache = AppleBCMWLANRoamAdapter::clearChannelsFromUserRoamCache(a1, v7);
      if (OverrideStateFromUserRoamCache)
      {
LABEL_14:
        if (*(a2 + 124))
        {
          OverrideStateFromUserRoamCache = AppleBCMWLANRoamAdapter::setOverrideStateFromUserRoamCache(a1, *(a2 + 122) != 0, v7);
        }

        if (a3 && *(a2 + 126))
        {
          OverrideStateFromUserRoamCache = AppleBCMWLANRoamAdapter::getOverrideStateFromUserRoamCache(a1, a3, v7);
        }

        if (a3 && *(a2 + 125))
        {
          OverrideStateFromUserRoamCache = AppleBCMWLANRoamAdapter::getChannelsFromUserRoamCache(a1, a3, v7, 0x78u);
        }

        goto LABEL_22;
      }

      v9 = AppleBCMWLANRoamAdapter::addChannelsToUserRoamCache(a1, a2, *(a2 + 120), v7);
    }

    else
    {
      if (!*(a2 + 123))
      {
        OverrideStateFromUserRoamCache = 3758097084;
        goto LABEL_14;
      }

      v9 = AppleBCMWLANRoamAdapter::clearChannelsFromUserRoamCache(a1, v7);
    }

    OverrideStateFromUserRoamCache = v9;
    goto LABEL_14;
  }

  OverrideStateFromUserRoamCache = 3758097084;
  v11 = *(a1 + 40);
  v10 = a1 + 40;
  if (*(v11 + 24) && CCLogStream::shouldLog())
  {
    AppleBCMWLANRoamAdapter::cmdROAM_USER_CACHE(v10);
  }

  return OverrideStateFromUserRoamCache;
}

uint64_t AppleBCMWLANRoamAdapter::isAdaptiveRoamRequestValid(uint64_t a1, uint64_t a2)
{
  v9 = 0;
  if (!a2 || *(a2 + 120) < 1)
  {
    return 0;
  }

  v4 = 0;
  v5 = a2;
  do
  {
    ChanSpec = AppleBCMWLANCore::getChanSpec(**(a1 + 40), v5, &v9);
    if (v9)
    {
      v7 = ChanSpec == 0;
    }

    else
    {
      v7 = 0;
    }

    result = v7;
    if (v7)
    {
      break;
    }

    ++v4;
    v5 += 12;
  }

  while (v4 < *(a2 + 120));
  return result;
}

uint64_t AppleBCMWLANRoamAdapter::clearChannelsFromUserRoamCache(uint64_t a1, uint64_t a2)
{
  *a2 = 524289;
  *(a2 + 8) = 0;
  v3 = (a1 + 40);
  if (*(*(a1 + 40) + 24) && CCLogStream::shouldLog())
  {
    AppleBCMWLANRoamAdapter::clearChannelsFromUserRoamCache(v3);
  }

  *(a2 + 4) = 3;
  v4 = (*v3)[1];
  v5 = *(a2 + 2);
  if (*(a2 + 2))
  {
    v6 = a2;
  }

  else
  {
    v6 = 0;
  }

  v9[0] = v6;
  v9[1] = v5;
  v7 = AppleBCMWLANCommander::runIOVarSet(v4, "user_roam_cache", v9, 0, 0);
  if (v7 && (*v3)[3] && CCLogStream::shouldLog())
  {
    AppleBCMWLANRoamAdapter::clearChannelsFromUserRoamCache(v3);
  }

  return v7;
}

uint64_t AppleBCMWLANRoamAdapter::addChannelsToUserRoamCache(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  LODWORD(v5) = a3;
  v17 = 0;
  *a4 = 0x1000A0001;
  *(a4 + 8) = 0;
  v7 = (a1 + 40);
  if (*(*(a1 + 40) + 24) && CCLogStream::shouldLog())
  {
    CCLogStream::logAlert((*v7)[3], "[dk] %s@%d:number of channels = %d \n", "addChannelsToUserRoamCache", 1215, v5);
  }

  if (v5 >= 1)
  {
    v5 = v5;
    do
    {
      AppleBCMWLANCore::getChanSpec(**v7, a2, &v17);
      v8 = v17;
      if (v17)
      {
        v9 = *(a4 + 8);
        *(a4 + 8) = v9 + 1;
        *(a4 + 10 + 2 * v9) = v8;
      }

      a2 += 12;
      --v5;
    }

    while (v5);
  }

  v10 = *(a4 + 2) + 2 * *(a4 + 8);
  *(a4 + 2) = v10;
  v11 = (*v7)[1];
  v12 = v10;
  if (v10)
  {
    v13 = a4;
  }

  else
  {
    v13 = 0;
  }

  v16[0] = v13;
  v16[1] = v12;
  v14 = AppleBCMWLANCommander::runIOVarSet(v11, "user_roam_cache", v16, 0, 0);
  if (v14 && (*v7)[3] && CCLogStream::shouldLog())
  {
    AppleBCMWLANRoamAdapter::addChannelsToUserRoamCache(v7);
  }

  return v14;
}

uint64_t AppleBCMWLANRoamAdapter::setOverrideStateFromUserRoamCache(uint64_t a1, int a2, uint64_t a3)
{
  *(a3 + 4) = 4;
  *(a3 + 8) = a2;
  *(a3 + 2) = 12;
  v5 = (a1 + 40);
  v4 = *(a1 + 40);
  if (v4[3])
  {
    shouldLog = CCLogStream::shouldLog();
    v4 = *v5;
    if (shouldLog)
    {
      CCLogStream::logAlert(v4[3], "[dk] %s@%d:set override =%d \n", "setOverrideStateFromUserRoamCache", 1272, a2);
      v4 = *v5;
    }
  }

  v8 = v4[1];
  v9 = *(a3 + 2);
  if (*(a3 + 2))
  {
    v10 = a3;
  }

  else
  {
    v10 = 0;
  }

  v13[0] = v10;
  v13[1] = v9;
  v11 = AppleBCMWLANCommander::runIOVarSet(v8, "user_roam_cache", v13, 0, 0);
  if (v11 && (*v5)[3] && CCLogStream::shouldLog())
  {
    AppleBCMWLANRoamAdapter::setOverrideStateFromUserRoamCache(v5);
  }

  return v11;
}

uint64_t AppleBCMWLANRoamAdapter::getOverrideStateFromUserRoamCache(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v12 = 0x40008AAAALL;
  v13 = -1431699456;
  v5 = 0xC000C000CLL;
  if (!a3)
  {
    v5 = 0;
  }

  v11[0] = a3;
  v11[1] = v5;
  v6 = (a1 + 40);
  v7 = *(*(a1 + 40) + 8);
  v10[0] = &v12;
  v10[1] = 8;
  v8 = AppleBCMWLANCommander::runIOVarGet(v7, "user_roam_cache", v10, v11, 0);
  if (v8)
  {
    if ((*v6)[3] && CCLogStream::shouldLog())
    {
      AppleBCMWLANRoamAdapter::getOverrideStateFromUserRoamCache(v6);
    }
  }

  else
  {
    *(a2 + 122) = *(a3 + 8);
    if ((*v6)[3] && CCLogStream::shouldLog())
    {
      CCLogStream::logAlert((*v6)[3], "[dk] %s@%d:get override =%d \n", "getOverrideStateFromUserRoamCache", 1296, *(a2 + 122));
    }
  }

  return v8;
}

uint64_t AppleBCMWLANRoamAdapter::getChannelsFromUserRoamCache(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int16 a4)
{
  if (a4)
  {
    v6 = a3;
  }

  else
  {
    v6 = 0;
  }

  v19 = 567978;
  v20 = -1431699456;
  if (a4)
  {
    v7 = a3 == 0;
  }

  else
  {
    v7 = 1;
  }

  v8 = a4 | (a4 << 32) | 0xC0000;
  if (v7)
  {
    v8 = 0;
  }

  v18[0] = v6;
  v18[1] = v8;
  v9 = (a1 + 40);
  v10 = *(*(a1 + 40) + 8);
  v17[0] = &v19;
  v17[1] = 8;
  v11 = AppleBCMWLANCommander::runIOVarGet(v10, "user_roam_cache", v17, v18, 0);
  if (v11)
  {
    if ((*v9)[3] && CCLogStream::shouldLog())
    {
      AppleBCMWLANRoamAdapter::getChannelsFromUserRoamCache(v9);
    }
  }

  else
  {
    v12 = *(a3 + 8);
    if (v12 >= 0xA)
    {
      LOWORD(v12) = 10;
    }

    *(a2 + 120) = v12;
    if ((*v9)[3] && CCLogStream::shouldLog())
    {
      CCLogStream::logAlert((*v9)[3], "[dk] %s@%d:Total Channel Numbers %d sent %d\n", "getChannelsFromUserRoamCache", 1319, *(a3 + 8), *(a2 + 120));
    }

    if (*(a3 + 8))
    {
      v13 = 0;
      v14 = a3 + 10;
      do
      {
        ChanSpecHandler = AppleBCMWLANCore::getChanSpecHandler(**v9);
        AppleBCMWLANChanSpec::getApple80211ChannelSpec(ChanSpecHandler, *(v14 + 2 * v13), a2);
        if ((*v9)[3] && CCLogStream::shouldLog())
        {
          CCLogStream::logAlert((*v9)[3], "[dk] %s@%d: Channel = %x sent %d", "getChannelsFromUserRoamCache", 1322, *(v14 + 2 * v13), *(a2 + 4));
        }

        ++v13;
        a2 += 12;
      }

      while (v13 < *(a3 + 8));
    }
  }

  return v11;
}

uint64_t AppleBCMWLANRoamAdapter::getROAM_PROFILE(uint64_t a1, _DWORD *a2)
{
  PrimaryInterface = AppleBCMWLANCore::getPrimaryInterface(**(a1 + 40));
  result = 22;
  if (a2 && PrimaryInterface)
  {
    a2[1] = 4;
    a2[33] = 2;
    a2[65] = 1024;
    v6 = 3;
    do
    {
      result = AppleBCMWLANRoamAdapter::getRoamProfilePerBand(a1, a2);
      if (!result)
      {
        a2[3] = 1;
      }

      a2 += 32;
      --v6;
    }

    while (v6);
  }

  return result;
}

uint64_t AppleBCMWLANRoamAdapter::getRoamProfilePerBand(uint64_t a1, uint64_t a2)
{
  if (!AppleBCMWLANCore::isAssociated(**(a1 + 40)))
  {
    return 3766625283;
  }

  if (AppleBCMWLANCore::getFirmwareInterfaceVersion(**(a1 + 40)) <= 0x10)
  {
    if (AppleBCMWLANCore::getFirmwareInterfaceVersion(**(a1 + 40)) <= 0xD)
    {
      if (AppleBCMWLANCore::getFirmwareInterfaceVersion(**(a1 + 40)) >= 6)
      {
        v4 = 88;
      }

      else
      {
        v4 = 72;
      }
    }

    else
    {
      v4 = 120;
    }
  }

  else
  {
    v4 = 152;
  }

  v6 = v4;
  v7 = IOMallocZeroData();
  if (v7)
  {
    v8 = v7;
    if (AppleBCMWLANCore::getFirmwareInterfaceVersion(**(a1 + 40)) < 0x11)
    {
      if (AppleBCMWLANCore::getFirmwareInterfaceVersion(**(a1 + 40)) < 0xE)
      {
        if (AppleBCMWLANCore::getFirmwareInterfaceVersion(**(a1 + 40)) > 5)
        {
          v15 = 0;
          v10 = 0;
          v14 = 0;
          *(v8 + 4) = 1;
          if ((*(a2 + 4) & 2) != 0)
          {
            v12 = 1;
          }

          else
          {
            v12 = 2;
          }

          v13 = v8;
        }

        else
        {
          v15 = 0;
          v10 = 0;
          v13 = 0;
          *(v8 + 4) = 0;
          if ((*(a2 + 4) & 2) != 0)
          {
            v12 = 1;
          }

          else
          {
            v12 = 2;
          }

          v14 = v8;
        }
      }

      else
      {
        v15 = 0;
        v13 = 0;
        v14 = 0;
        *(v8 + 4) = 3;
        if ((*(a2 + 4) & 2) != 0)
        {
          v12 = 1;
        }

        else
        {
          v12 = 2;
        }

        v10 = v8;
      }
    }

    else
    {
      *(v8 + 4) = 5;
      v9 = *(a2 + 4);
      v10 = 0;
      if ((v9 & 2) != 0)
      {
        v11 = 1;
      }

      else
      {
        v11 = 2;
      }

      if ((v9 & 0x400) != 0)
      {
        v12 = 4;
      }

      else
      {
        v12 = v11;
      }

      v13 = 0;
      v14 = 0;
      v15 = v8;
    }

    *v8 = v12;
    v43[0] = v8;
    v43[1] = v6 | ((v6 | (v6 << 16)) << 16);
    v16 = *(*(a1 + 40) + 8);
    v42[0] = v8;
    v42[1] = 8;
    v17 = AppleBCMWLANCommander::runIOVarGet(v16, "roam_prof", v42, v43, 0);
    if (v17)
    {
      v5 = v17;
LABEL_84:
      IOFreeData();
      return v5;
    }

    if (AppleBCMWLANCore::getFirmwareInterfaceVersion(**(a1 + 40)) < 0x11)
    {
      if (AppleBCMWLANCore::getFirmwareInterfaceVersion(**(a1 + 40)) < 0xE)
      {
        v32 = a2 + 16;
        if (AppleBCMWLANCore::getFirmwareInterfaceVersion(**(a1 + 40)) > 5)
        {
          v37 = *(v13 + 6);
          LODWORD(v19) = v37 / 0x14;
          *(a2 + 8) = v37 / 0x14;
          if (v37 >= 0x14)
          {
            v38 = 0;
            v21 = 0;
            while (1)
            {
              v39 = v13 + v38;
              v40 = *(v13 + v38 + 16);
              if (!v40)
              {
                goto LABEL_78;
              }

              *v32 = *(v39 + 8);
              *(v32 + 4) = *(v39 + 9);
              *(v32 + 8) = *(v39 + 13);
              *(v32 + 16) = *(v39 + 14);
              *(v32 + 18) = v40;
              *(v32 + 20) = *(v39 + 18);
              *(v32 + 22) = *(v39 + 20);
              if (*(*(a1 + 40) + 24) && CCLogStream::shouldLog())
              {
                CCLogStream::logNoticeIf(*(*(a1 + 40) + 24), 0x4000uLL, "[dk] %s@%d:WiFiRoam : Roam profile[%d]: Band:%d, RSSI:[%d,%d], Flag:0x%x, ScanParams:(%d,%d,%d,%d,%d), Candidate:(%d,%d,%d)\n", "getRoamProfilePerBand", 1560, v21, *v13, *(v39 + 9), *(v39 + 10), *(v39 + 8), *(v39 + 14), *(v39 + 16), *(v39 + 18), *(v39 + 20), *(v39 + 22), *(v39 + 11), *(v39 + 13), *(v39 + 12));
              }

              v25 = v21 + 1;
              v19 = *(a2 + 8);
              if (v21 + 1 >= v19)
              {
LABEL_80:
                v25 = v21 + 1;
                goto LABEL_81;
              }

              v38 += 20;
              v32 += 28;
              ++v21;
              if (v38 > *(v13 + 6))
              {
                goto LABEL_81;
              }
            }
          }
        }

        else
        {
          v33 = *(v14 + 6);
          LODWORD(v19) = v33 >> 4;
          *(a2 + 8) = v33 >> 4;
          if (v33 >= 0x10)
          {
            v34 = 0;
            v21 = 0;
            while (1)
            {
              v35 = v14 + v34;
              v36 = *(v14 + v34 + 16);
              if (!v36)
              {
                goto LABEL_78;
              }

              *v32 = *(v35 + 8);
              *(v32 + 4) = *(v35 + 9);
              *(v32 + 8) = *(v35 + 13);
              *(v32 + 16) = *(v35 + 14);
              *(v32 + 18) = v36;
              *(v32 + 20) = *(v35 + 18);
              *(v32 + 22) = *(v35 + 20);
              if (*(*(a1 + 40) + 24) && CCLogStream::shouldLog())
              {
                CCLogStream::logNoticeIf(*(*(a1 + 40) + 24), 0x4000uLL, "[dk] %s@%d:WiFiRoam : Roam profile[%d]: Band:%d, RSSI:[%d,%d], Flag:0x%x, ScanParams:(%d,%d,%d,%d,%d), Candidate:(%d,%d,%d)\n", "getRoamProfilePerBand", 1528, v21, *v14, *(v35 + 9), *(v35 + 10), *(v35 + 8), *(v35 + 14), *(v35 + 16), *(v35 + 18), *(v35 + 20), *(v35 + 22), *(v35 + 11), *(v35 + 13), *(v35 + 12));
              }

              v25 = v21 + 1;
              v19 = *(a2 + 8);
              if (v21 + 1 >= v19)
              {
                goto LABEL_80;
              }

              v34 += 16;
              v32 += 28;
              ++v21;
              if (v34 > *(v14 + 6))
              {
                goto LABEL_81;
              }
            }
          }
        }
      }

      else
      {
        v26 = *(v10 + 6);
        LODWORD(v19) = v26 / 0x1C;
        *(a2 + 8) = v26 / 0x1C;
        if (v26 >= 0x1C)
        {
          v27 = 0;
          v28 = 0;
          while (1)
          {
            v29 = v10 + v27;
            v30 = *(v10 + v27 + 16);
            if (!v30)
            {
              v25 = v28;
              goto LABEL_81;
            }

            v31 = a2 + 16 + v27;
            *v31 = *(v29 + 8);
            *(v31 + 4) = *(v29 + 9);
            *(v31 + 8) = *(v29 + 13);
            *(v31 + 16) = *(v29 + 14);
            *(v31 + 18) = v30;
            *(v31 + 20) = *(v29 + 18);
            *(v31 + 22) = *(v29 + 20);
            if (*(*(a1 + 40) + 24) && CCLogStream::shouldLog())
            {
              CCLogStream::logNoticeIf(*(*(a1 + 40) + 24), 0x4000uLL, "[dk] %s@%d:WiFiRoam : Roam profile[%d]: Band:%d, RSSI:[%d,%d], Flag:0x%x, ScanParams:(%d,%d,%d,%d,%d), Candidate:(%d,%d,%d), LPCore: [%d, %d]\n", "getRoamProfilePerBand", 1496, v28, *v10, *(v29 + 9), *(v29 + 10), *(v29 + 8), *(v29 + 14), *(v29 + 16), *(v29 + 18), *(v29 + 20), *(v29 + 22), *(v29 + 11), *(v29 + 13), *(v29 + 12), *(v10 + v27 + 32), *(v10 + v27 + 34));
            }

            v25 = v28 + 1;
            v19 = *(a2 + 8);
            if (v28 + 1 >= v19)
            {
              break;
            }

            v27 += 28;
            ++v28;
            if (v27 > *(v10 + 6))
            {
              goto LABEL_81;
            }
          }

          v25 = v28 + 1;
          goto LABEL_81;
        }
      }
    }

    else
    {
      v18 = *(v15 + 6);
      LODWORD(v19) = v18 / 0x24;
      *(a2 + 8) = v18 / 0x24;
      if (v18 >= 0x24)
      {
        v20 = 0;
        v21 = 0;
        v22 = a2 + 20;
        while (1)
        {
          v23 = v15 + v20;
          v24 = *(v15 + v20 + 18);
          if (!v24)
          {
            break;
          }

          *(v22 - 4) = *(v23 + 8);
          *v22 = *(v23 + 12);
          *(v22 + 1) = *(v23 + 13);
          *(v22 + 5) = *(v23 + 38);
          *(v22 + 9) = *(v23 + 42);
          *(v22 + 12) = *(v23 + 16);
          *(v22 + 14) = v24;
          *(v22 + 16) = *(v23 + 20);
          *(v22 + 18) = *(v23 + 22);
          *(v22 + 3) = 32639;
          if (*(*(a1 + 40) + 24) && CCLogStream::shouldLog())
          {
            CCLogStream::logNoticeIf(*(*(a1 + 40) + 24), 0x4000uLL, "[dk] %s@%d:%s WiFiRoam : Roam profile[%d]: Band:%d, RSSI:[%d,%d], Flag:0x%x, ScanParams:(%d,%d,%d,%d,%d), Candidate_2g:(%d,%d,%d), Candidate_5g:(%d,%d,%d), Candidate_6g:(%d,%d,%d), LPCore: [%d, %d]\n", "getRoamProfilePerBand", 1461, "getRoamProfilePerBand", v21, *v15, *(v23 + 12), *(v23 + 13), *(v23 + 8), *(v23 + 16), *(v23 + 18), *(v23 + 20), *(v23 + 22), *(v23 + 24), *(v23 + 14), *(v22 + 6), *(v22 + 5), *(v23 + 14), *(v22 + 8), *(v22 + 7), *(v23 + 14), *(v22 + 10), *(v22 + 9), *(v15 + v20 + 34), *(v15 + v20 + 36));
          }

          v25 = v21 + 1;
          v19 = *(a2 + 8);
          if (v21 + 1 >= v19)
          {
            v25 = v21 + 1;
            goto LABEL_81;
          }

          v20 += 36;
          v22 += 28;
          ++v21;
          if (v20 > *(v15 + 6))
          {
            goto LABEL_81;
          }
        }

LABEL_78:
        v25 = v21;
        goto LABEL_81;
      }
    }

    v25 = 0;
LABEL_81:
    if (v25 < v19)
    {
      *(a2 + 8) = v25;
    }

    v5 = 0;
    goto LABEL_84;
  }

  return 12;
}

uint64_t AppleBCMWLANRoamAdapter::applyRoamingCandidateBoostCallback(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {
    v3 = (a1 + 40);
    if (*(*(a1 + 40) + 24))
    {
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANRoamAdapter::applyRoamingCandidateBoostCallback(v3, a3);
      }
    }
  }

  return 0;
}

uint64_t AppleBCMWLANRoamAdapter::skipPscScansForRoamScans(AppleBCMWLANRoamAdapter *this, int a2)
{
  v5 = (this + 40);
  v4 = *(this + 5);
  if (v4[3])
  {
    shouldLog = CCLogStream::shouldLog();
    v4 = *v5;
    if (shouldLog)
    {
      CCLogStream::logAlert(v4[3], "[dk] %s@%d:[WiFiRoam]: Issuing join_pref to FW:PSC scans for roam scans are skipped : [%hhu]\n", "skipPscScansForRoamScans", 1668, a2);
      v4 = *v5;
    }
  }

  v15 = 264;
  v16 = a2;
  v7 = (*(**v4 + 88))();
  if ((*(*v7 + 136))(v7))
  {
    v12 = this;
    v13 = AppleBCMWLANRoamAdapter::skipPscScansForRoamScansCallback;
    v14 = 0;
    v8 = AppleBCMWLANCommander::sendIOVarSet(*(*(this + 5) + 8), "join_pref");
  }

  else
  {
    v9 = (*v5)[1];
    v12 = &v15;
    v13 = 3;
    v8 = AppleBCMWLANCommander::runIOVarSet(v9, "join_pref", &v12, 0, 0);
  }

  v10 = v8;
  if (v8 && (*v5)[3] && CCLogStream::shouldLog())
  {
    AppleBCMWLANRoamAdapter::skipPscScansForRoamScans(v5, v10);
  }

  return v10;
}

uint64_t AppleBCMWLANRoamAdapter::skipPscScansForRoamScansCallback(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {
    v3 = (a1 + 40);
    if (*(*(a1 + 40) + 24))
    {
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANRoamAdapter::skipPscScansForRoamScansCallback(v3, a3);
      }
    }
  }

  return 0;
}

uint64_t AppleBCMWLANRoamAdapter::disable6GForRoamScansCallback(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {
    v3 = (a1 + 40);
    if (*(*(a1 + 40) + 24))
    {
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANRoamAdapter::disable6GForRoamScansCallback(v3, a3);
      }
    }
  }

  return 0;
}

uint64_t AppleBCMWLANRoamAdapter::rxSigSetRssiCompThreshold(AppleBCMWLANCore ***this, int a2)
{
  v4 = (this + 5);
  if (AppleBCMWLANCore::getFirmwareInterfaceVersion(*this[5]) > 0x10)
  {

    return AppleBCMWLANRoamAdapter::rxSigSetVal(this, "WL_RXSIG_CMD_RSSI_COMP", 14, a2);
  }

  else
  {
    if (*(*v4 + 24))
    {
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANRoamAdapter::rxSigSetRssiCompThreshold(v4);
      }
    }

    return 3758097095;
  }
}

uint64_t AppleBCMWLANRoamAdapter::rxSigSetVal(AppleBCMWLANRoamAdapter *this, const char *a2, __int16 a3, int a4)
{
  v8 = (this + 40);
  if (AppleBCMWLANCore::getFirmwareInterfaceVersion(**(this + 5)) > 0x10)
  {
    v10 = IOMallocZeroData();
    if (v10)
    {
      *v10 = 655617;
      *(v10 + 4) = a3;
      *(v10 + 6) = a4;
      v15[0] = v10;
      v15[1] = 16;
      v11 = (*(***v8 + 88))(**v8);
      if ((*(*v11 + 136))(v11))
      {
        v12 = AppleBCMWLANCommander::sendIOVarSet(*(*(this + 5) + 8), "rxsig");
        if (v12)
        {
          v13 = v12;
          if ((*v8)[3])
          {
            if (CCLogStream::shouldLog())
            {
              CCLogStream::logAlert((*v8)[3], "[dk] %s@%d: Failed to set rxsig, iovret[0x%08x]\n", "rxSigSetVal", 1866, v13);
            }
          }
        }

        v9 = 0;
      }

      else
      {
        v9 = AppleBCMWLANCommander::runIOVarSet((*v8)[1], "rxsig", v15, 0, 0);
        if (v9 && (*v8)[3] && CCLogStream::shouldLog())
        {
          AppleBCMWLANRoamAdapter::rxSigSetVal(v8, v9, a2);
        }
      }

      IOFreeData();
    }

    else
    {
      v9 = 3758097085;
      if ((*v8)[3] && CCLogStream::shouldLog())
      {
        AppleBCMWLANRoamAdapter::rxSigSetVal(v8);
      }
    }
  }

  else
  {
    v9 = 3758097095;
    if ((*v8)[3] && CCLogStream::shouldLog())
    {
      AppleBCMWLANRoamAdapter::rxSigSetVal(v8);
      return 3758097095;
    }
  }

  return v9;
}

uint64_t AppleBCMWLANRoamAdapter::rxSigSetRssiCompSmoothValues(AppleBCMWLANCore ***this, const unsigned __int8 *a2, unsigned int a3)
{
  v6 = (this + 5);
  if (AppleBCMWLANCore::getFirmwareInterfaceVersion(*this[5]) > 0x10)
  {

    return AppleBCMWLANRoamAdapter::rxSigSetCompTbl(this, "WL_RXSIG_CMD_RSSI_COMP_TBL", 15, a2, a3);
  }

  else
  {
    if (*(*v6 + 24))
    {
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANRoamAdapter::rxSigSetRssiCompSmoothValues(v6);
      }
    }

    return 3758097095;
  }
}

uint64_t AppleBCMWLANRoamAdapter::rxSigSetCompTbl(AppleBCMWLANRoamAdapter *this, const char *a2, __int16 a3, const unsigned __int8 *a4, unsigned int a5)
{
  v10 = (this + 40);
  if (AppleBCMWLANCore::getFirmwareInterfaceVersion(**(this + 5)) > 0x10)
  {
    v12 = a5 + 4;
    v13 = IOMallocZeroData();
    if (v13)
    {
      v14 = v13;
      *v13 = 1;
      *(v13 + 2) = a5 >> 2;
      memcpy((v13 + 4), a4, a5);
      v15 = IOMallocZeroData();
      if (v15)
      {
        v16 = v15;
        *v15 = 257;
        v15[1] = v12;
        v15[2] = a3;
        memcpy(v15 + 3, v14, v12);
        v21[0] = v16;
        v21[1] = v12 + 6;
        v17 = (*(***v10 + 88))(**v10);
        if ((*(*v17 + 136))(v17))
        {
          v18 = AppleBCMWLANCommander::sendIOVarSet(*(*(this + 5) + 8), "rxsig");
          if (v18)
          {
            v19 = v18;
            if ((*v10)[3])
            {
              if (CCLogStream::shouldLog())
              {
                CCLogStream::logAlert((*v10)[3], "[dk] %s@%d: Failed to set rxsig, iovret[0x%08x]\n", "rxSigSetCompTbl", 1808, v19);
              }
            }
          }

          v11 = 0;
        }

        else
        {
          v11 = AppleBCMWLANCommander::runIOVarSet((*v10)[1], "rxsig", v21, 0, 0);
          if (v11 && (*v10)[3] && CCLogStream::shouldLog())
          {
            AppleBCMWLANRoamAdapter::rxSigSetCompTbl(v10, v11, a2);
          }
        }

        IOFreeData();
      }

      else
      {
        v11 = 3758097085;
        if ((*v10)[3] && CCLogStream::shouldLog())
        {
          AppleBCMWLANRoamAdapter::rxSigSetCompTbl(v10);
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
    v11 = 3758097095;
    if ((*v10)[3] && CCLogStream::shouldLog())
    {
      AppleBCMWLANRoamAdapter::rxSigSetCompTbl(v10);
      return 3758097095;
    }
  }

  return v11;
}

uint64_t AppleBCMWLANRoamAdapter::handleConfigureRxSigSetCompTblAsyncCallback(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v5 = (a1 + 40);
  result = *(*(a1 + 40) + 24);
  if (a3)
  {
    if (result)
    {
      result = CCLogStream::shouldLog();
      if (result)
      {
        return AppleBCMWLANRoamAdapter::handleConfigureRxSigSetCompTblAsyncCallback(v5, a3, a5);
      }
    }
  }

  else if (result)
  {
    result = CCLogStream::shouldLog();
    if (result)
    {
      return AppleBCMWLANRoamAdapter::handleConfigureRxSigSetCompTblAsyncCallback(v5);
    }
  }

  return result;
}

uint64_t AppleBCMWLANRoamAdapter::handleConfigureRxSigSetValAsyncCallback(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v5 = (a1 + 40);
  result = *(*(a1 + 40) + 24);
  if (a3)
  {
    if (result)
    {
      result = CCLogStream::shouldLog();
      if (result)
      {
        return AppleBCMWLANRoamAdapter::handleConfigureRxSigSetValAsyncCallback(v5, a3, a5);
      }
    }
  }

  else if (result)
  {
    result = CCLogStream::shouldLog();
    if (result)
    {
      return AppleBCMWLANRoamAdapter::handleConfigureRxSigSetValAsyncCallback(v5);
    }
  }

  return result;
}

uint64_t AppleBCMWLANRoamAdapter::parseRoamCacheXTLV(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 2);
  if (v5 < 0x401)
  {
    if (v5 < 4)
    {
      return 0;
    }

    v7 = 0;
    v8 = (a2 + 4);
    v9 = a3 + 16;
    while (1)
    {
      if ((v8 & 3) != 0)
      {
        v58 = 3758097084;
        if (*(*(a1 + 40) + 24) && CCLogStream::shouldLog())
        {
          AppleBCMWLANRoamAdapter::parseRoamCacheXTLV(a1 + 40);
        }

        return v58;
      }

      v10 = v8[1];
      v11 = (v10 + 4);
      if (v5 < v11)
      {
        v58 = 3758097084;
        if (*(*(a1 + 40) + 24) && CCLogStream::shouldLog())
        {
          CCLogStream::logAlert(*(*(a1 + 40) + 24), "[dk] %s@%d:Bad tagMemoryUsage: %d remainingLength %d\n");
        }

        return v58;
      }

      v12 = *v8;
      v13 = OSData::withBytesNoCopy(v8 + 2, v10);
      v14 = v13;
      if (v12 > 3)
      {
        if (v12 > 5)
        {
          if (v12 == 6)
          {
            if (v7 <= 9)
            {
              if (AppleBCMWLANCore::getFirmwareInterfaceVersion(**(a1 + 40)) >= 0x11)
              {
                BytesNoCopy = OSData::getBytesNoCopy(v14);
                v51 = v9 + 20 * v7;
                *(v51 + 7) = *BytesNoCopy;
                ChanSpecHandler = AppleBCMWLANCore::getChanSpecHandler(**(a1 + 40));
                AppleBCMWLANChanSpec::getAppleChannelSpec(ChanSpecHandler, BytesNoCopy[1]);
                ChanSpecConvToApple80211Channel();
                *(v51 + 6) = -86;
                *(v51 + 16) = -21846;
                v53 = BytesNoCopy[4];
                *(v51 + 8) = *(BytesNoCopy + 1);
                *(v51 + 12) = v53;
                v54 = *(BytesNoCopy + 5);
                *(v51 + 4) = BytesNoCopy[7];
                *v51 = v54;
                if (*(*(a1 + 40) + 24) && CCLogStream::shouldLog())
                {
                  v55 = *(*(a1 + 40) + 24);
                  v126 = *(BytesNoCopy + 10);
                  v124 = *(BytesNoCopy + 11);
                  v122 = *(BytesNoCopy + 12);
                  v120 = *(BytesNoCopy + 13);
                  v118 = *(BytesNoCopy + 14);
                  v116 = *(BytesNoCopy + 15);
                  if (IO80211_io80211isSensitiveInfoAllowed())
                  {
                    v114 = *(BytesNoCopy + 16);
                  }

                  if (IO80211_io80211isSensitiveInfoAllowed())
                  {
                    v111 = *(BytesNoCopy + 17);
                  }

                  if (IO80211_io80211isSensitiveInfoAllowed())
                  {
                    v109 = *(BytesNoCopy + 18);
                  }

                  if (IO80211_io80211isSensitiveInfoAllowed())
                  {
                    v107 = *(BytesNoCopy + 19);
                  }

                  if (IO80211_io80211isSensitiveInfoAllowed())
                  {
                    v105 = *(BytesNoCopy + 20);
                  }

                  if (IO80211_io80211isSensitiveInfoAllowed())
                  {
                    v56 = *(BytesNoCopy + 21);
                  }

                  v101 = *(BytesNoCopy + 1);
                  v103 = BytesNoCopy[4];
                  v97 = *BytesNoCopy;
                  v99 = BytesNoCopy[1];
                  CCLogStream::logInfo(v55, "[dk] %s@%d: (%d) BSSID %02x:%02x:%02x:%02x:%02x:%02x, MLD:%02x:%02x:%02x:%02x:%02x:%02x RSSI %d chanspec %d age %d load %d\n", "parseRoamCacheXTLV", 2053, v7, v126, v124, v122, v120);
                }

LABEL_54:
                v7 = (v7 + 1);
                *(a3 + 1) = v7;
                if (!v14)
                {
                  goto LABEL_72;
                }

                goto LABEL_71;
              }

              if (*(*(a1 + 40) + 24) && CCLogStream::shouldLog())
              {
                AppleBCMWLANRoamAdapter::parseRoamCacheXTLV(a1 + 40);
                if (!v14)
                {
                  goto LABEL_72;
                }

LABEL_71:
                (v14->release)(v14);
                goto LABEL_72;
              }
            }
          }

          else
          {
            if (v12 != 7)
            {
              if (*(*(a1 + 40) + 24) && CCLogStream::shouldLog())
              {
                CCLogStream::logAlert(*(*(a1 + 40) + 24), "[dk] %s@%d:Invalid tag id %d\n", "parseRoamCacheXTLV", 2154, v12);
              }

              v58 = 3758097084;
              if (v14)
              {
                (v14->release)(v14);
              }

              return v58;
            }

            if (AppleBCMWLANCore::getFirmwareInterfaceVersion(**(a1 + 40)) < 0x11)
            {
              if (*(*(a1 + 40) + 24) && CCLogStream::shouldLog())
              {
                AppleBCMWLANRoamAdapter::parseRoamCacheXTLV(a1 + 40);
                if (!v14)
                {
                  goto LABEL_72;
                }

                goto LABEL_71;
              }
            }

            else
            {
              v31 = OSData::getBytesNoCopy(v14);
              if (v7 <= 9)
              {
                v32 = v31;
                v33 = v9 + 20 * v7;
                *(v33 + 7) = *v31;
                v34 = AppleBCMWLANCore::getChanSpecHandler(**(a1 + 40));
                AppleBCMWLANChanSpec::getAppleChannelSpec(v34, v32[1]);
                ChanSpecConvToApple80211Channel();
                *(v33 + 6) = -86;
                *(v33 + 16) = -21846;
                v35 = v32[4];
                *(v33 + 8) = *(v32 + 1);
                *(v33 + 12) = v35;
                v36 = *(v32 + 5);
                *(v33 + 4) = v32[7];
                *v33 = v36;
                if (*(*(a1 + 40) + 24) && CCLogStream::shouldLog())
                {
                  v37 = *(*(a1 + 40) + 24);
                  v125 = *(v32 + 10);
                  v123 = *(v32 + 11);
                  v121 = *(v32 + 12);
                  v119 = *(v32 + 13);
                  v117 = *(v32 + 14);
                  v115 = *(v32 + 15);
                  if (IO80211_io80211isSensitiveInfoAllowed())
                  {
                    v113 = *(v32 + 16);
                  }

                  if (IO80211_io80211isSensitiveInfoAllowed())
                  {
                    v112 = *(v32 + 17);
                  }

                  if (IO80211_io80211isSensitiveInfoAllowed())
                  {
                    v110 = *(v32 + 18);
                  }

                  if (IO80211_io80211isSensitiveInfoAllowed())
                  {
                    v108 = *(v32 + 19);
                  }

                  if (IO80211_io80211isSensitiveInfoAllowed())
                  {
                    v106 = *(v32 + 20);
                  }

                  if (IO80211_io80211isSensitiveInfoAllowed())
                  {
                    v57 = *(v32 + 21);
                  }

                  v102 = *(v32 + 1);
                  v104 = v32[4];
                  v98 = *v32;
                  v100 = v32[1];
                  CCLogStream::logInfo(v37, "[dk] %s@%d: User Roam Cache (%d) BSSID %02x:%02x:%02x:%02x:%02x:%02x, MLD:%02x:%02x:%02x:%02x:%02x:%02x, RSSI %d chanspec %d age %d load %d\n", "parseRoamCacheXTLV", 2143, v7, v125, v123, v121, v119);
                }

                goto LABEL_54;
              }
            }
          }
        }

        else if (v12 == 4)
        {
          if (v7 <= 9)
          {
            if (AppleBCMWLANCore::getFirmwareInterfaceVersion(**(a1 + 40)) >= 0x11)
            {
              v38 = OSData::getBytesNoCopy(v14);
              v39 = v9 + 20 * v7;
              *(v39 + 7) = *v38;
              v40 = AppleBCMWLANCore::getChanSpecHandler(**(a1 + 40));
              AppleBCMWLANChanSpec::getAppleChannelSpec(v40, v38[1]);
              ChanSpecConvToApple80211Channel();
              *(v39 + 6) = -86;
              *(v39 + 16) = -21846;
              v41 = v38[4];
              *(v39 + 8) = *(v38 + 1);
              *(v39 + 12) = v41;
              v42 = *(v38 + 5);
              *(v39 + 4) = v38[7];
              *v39 = v42;
              if (*(*(a1 + 40) + 24) && CCLogStream::shouldLog())
              {
                v91 = *(v38 + 1);
                v95 = v38[4];
                v83 = *v38;
                v87 = v38[1];
                v75 = *(v38 + 14);
                v79 = *(v38 + 15);
                v67 = *(v38 + 12);
                v71 = *(v38 + 13);
                v63 = *(v38 + 11);
                CCLogStream::logInfo(*(*(a1 + 40) + 24), "[dk] %s@%d: (%d) BSSID %02x:%02x:%02x:%02x:%02x:%02x, RSSI %d chanspec %d age %d load %d\n", "parseRoamCacheXTLV", 2028, v7, *(v38 + 10));
              }

              goto LABEL_54;
            }

            if (*(*(a1 + 40) + 24) && CCLogStream::shouldLog())
            {
              AppleBCMWLANRoamAdapter::parseRoamCacheXTLV(a1 + 40);
              if (!v14)
              {
                goto LABEL_72;
              }

              goto LABEL_71;
            }
          }
        }

        else if (AppleBCMWLANCore::getFirmwareInterfaceVersion(**(a1 + 40)) < 0x11)
        {
          if (*(*(a1 + 40) + 24) && CCLogStream::shouldLog())
          {
            AppleBCMWLANRoamAdapter::parseRoamCacheXTLV(a1 + 40);
            if (!v14)
            {
              goto LABEL_72;
            }

            goto LABEL_71;
          }
        }

        else
        {
          v18 = OSData::getBytesNoCopy(v14);
          if (v7 <= 9)
          {
            v19 = v18;
            v20 = v9 + 20 * v7;
            *(v20 + 7) = *v18;
            v21 = AppleBCMWLANCore::getChanSpecHandler(**(a1 + 40));
            AppleBCMWLANChanSpec::getAppleChannelSpec(v21, v19[1]);
            ChanSpecConvToApple80211Channel();
            *(v20 + 6) = -86;
            *(v20 + 16) = -21846;
            v22 = v19[4];
            *(v20 + 8) = *(v19 + 1);
            *(v20 + 12) = v22;
            v23 = *(v19 + 5);
            *(v20 + 4) = v19[7];
            *v20 = v23;
            if (*(*(a1 + 40) + 24) && CCLogStream::shouldLog())
            {
              v89 = *(v19 + 1);
              v93 = v19[4];
              v81 = *v19;
              v85 = v19[1];
              v73 = *(v19 + 14);
              v77 = *(v19 + 15);
              v65 = *(v19 + 12);
              v69 = *(v19 + 13);
              v61 = *(v19 + 11);
              CCLogStream::logInfo(*(*(a1 + 40) + 24), "[dk] %s@%d: User Roam Cache (%d) BSSID %02x:%02x:%02x:%02x:%02x:%02x, RSSI %d chanspec %d age %d load %d\n", "parseRoamCacheXTLV", 2115, v7, *(v19 + 10));
            }

            goto LABEL_54;
          }
        }
      }

      else if (v12 > 1)
      {
        if (v12 == 2)
        {
          if (v7 <= 9)
          {
            v43 = OSData::getBytesNoCopy(v13);
            v44 = v43;
            v45 = v9 + 20 * v7;
            *(v45 + 7) = *v43;
            v46 = v43[1];
            *(v45 + 6) = v43[1];
            if (v46 >= 0xF)
            {
              v47 = 18;
            }

            else
            {
              v47 = 10;
            }

            *(v45 + 16) = v47;
            v48 = v43[4];
            *(v45 + 8) = *(v43 + 1);
            *(v45 + 12) = v48;
            v49 = *(v43 + 5);
            *(v45 + 4) = v43[7];
            *v45 = v49;
            if (*(*(a1 + 40) + 24) && CCLogStream::shouldLog())
            {
              v92 = *(v44 + 1);
              v96 = v44[4];
              v84 = *v44;
              v88 = v44[1];
              v76 = *(v44 + 14);
              v80 = *(v44 + 15);
              v68 = *(v44 + 12);
              v72 = *(v44 + 13);
              v64 = *(v44 + 11);
              CCLogStream::logInfo(*(*(a1 + 40) + 24), "[dk] %s@%d: (%d) BSSID %02x:%02x:%02x:%02x:%02x:%02x, RSSI %d chan %d age %d load %d\n", "parseRoamCacheXTLV", 2004, v7, *(v44 + 10));
            }

LABEL_48:
            v7 = (v7 + 1);
            *(a3 + 1) = v7;
            if (!v14)
            {
              goto LABEL_72;
            }

            goto LABEL_71;
          }
        }

        else
        {
          v24 = OSData::getBytesNoCopy(v13);
          if (v7 <= 9)
          {
            v25 = v24;
            v26 = v9 + 20 * v7;
            *(v26 + 7) = *v24;
            v27 = v24[1];
            *(v26 + 6) = v24[1];
            if (v27 >= 0xF)
            {
              v28 = 18;
            }

            else
            {
              v28 = 10;
            }

            *(v26 + 16) = v28;
            v29 = v24[4];
            *(v26 + 8) = *(v24 + 1);
            *(v26 + 12) = v29;
            v30 = *(v24 + 5);
            *(v26 + 4) = v24[7];
            *v26 = v30;
            if (*(*(a1 + 40) + 24) && CCLogStream::shouldLog())
            {
              v90 = *(v25 + 1);
              v94 = v25[4];
              v82 = *v25;
              v86 = v25[1];
              v74 = *(v25 + 14);
              v78 = *(v25 + 15);
              v66 = *(v25 + 12);
              v70 = *(v25 + 13);
              v62 = *(v25 + 11);
              CCLogStream::logInfo(*(*(a1 + 40) + 24), "[dk] %s@%d: User Roam Cache (%d) BSSID %02x:%02x:%02x:%02x:%02x:%02x, RSSI %d chan %d age %d load %d\n", "parseRoamCacheXTLV", 2089, v7, *(v25 + 10));
            }

            goto LABEL_48;
          }
        }
      }

      else if (v12)
      {
        v15 = OSData::getBytesNoCopy(v13);
        v16 = *(v15 + 3);
        *(a3 + 4) = *(v15 + 2);
        *(a3 + 8) = v16;
        v17 = *(v15 + 2);
        *(a3 + 3) = *(v15 + 1);
        *(a3 + 12) = v17;
        *(a3 + 2) = 1;
        *a3 = *v15;
        if (*(*(a1 + 40) + 24))
        {
          if (CCLogStream::shouldLog())
          {
            CCLogStream::logInfo(*(*(a1 + 40) + 24), "[dk] %s@%d:roamReason %d roamStatus %d roamScanCount %d roamScanAge %d curBssRssi %d\n", "parseRoamCacheXTLV", 1979, *(v15 + 2), *(v15 + 3), *(v15 + 1), *(v15 + 2), *v15);
            if (!v14)
            {
              goto LABEL_72;
            }

            goto LABEL_71;
          }
        }
      }

      if (v14)
      {
        goto LABEL_71;
      }

LABEL_72:
      v8 = (v8 + v11);
      v5 -= v11;
      if (v5 <= 3)
      {
        return 0;
      }
    }
  }

  v58 = 3758097084;
  if (*(*(a1 + 40) + 24) && CCLogStream::shouldLog())
  {
    v60 = *(a2 + 2);
    CCLogStream::logAlert(*(*(a1 + 40) + 24), "[dk] %s@%d:Invalid len: %d\n");
  }

  return v58;
}

IO80211Controller *AppleBCMWLANRoamAdapter::getRoamCacheAsyncCallback(uint64_t a1, uint64_t a2, int a3, uint64_t *a4)
{
  v14 = 0;
  memset(v13, 0, sizeof(v13));
  if (a3)
  {
    v5 = (a1 + 40);
    result = *(*(a1 + 40) + 24);
    if (result)
    {
      result = CCLogStream::shouldLog();
      if (result)
      {
        return AppleBCMWLANRoamAdapter::getRoamCacheAsyncCallback(v5, a3);
      }
    }
  }

  else if (*a4)
  {
    v8 = AppleBCMWLANRoamAdapter::parseRoamCacheXTLV(a1, *a4, v13);
    v11 = *(a1 + 40);
    v10 = (a1 + 40);
    v9 = v11;
    if (v8)
    {
      result = v9[3];
      if (result)
      {
        result = CCLogStream::shouldLog();
        if (result)
        {
          return AppleBCMWLANRoamAdapter::getRoamCacheAsyncCallback(v10);
        }
      }
    }

    else
    {
      return AppleBCMWLANCore::postRoamCacheEvent(*v9, v13);
    }
  }

  else
  {
    v12 = a1 + 40;
    result = *(*(a1 + 40) + 24);
    if (result)
    {
      result = CCLogStream::shouldLog();
      if (result)
      {
        return AppleBCMWLANRoamAdapter::getRoamCacheAsyncCallback(v12);
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANRoamAdapter::getRoamCacheAsync(AppleBCMWLANRoamAdapter *this)
{
  v10 = 0;
  v2 = (this + 40);
  if (AppleBCMWLANCore::checkForRoamCacheSupport(**(this + 5)))
  {
    v8[0] = this;
    v8[1] = AppleBCMWLANRoamAdapter::getRoamCacheAsyncCallback;
    v8[2] = 0;
    v9 = 1;
    v3 = *(*(this + 5) + 8);
    v7[0] = &v9;
    v7[1] = 6;
    v6 = 0x4000000;
    v4 = AppleBCMWLANCommander::sendIOVarGet(v3, "roam_cache", v7, &v6, v8, 0);
    if (v4 && (*v2)[3] && CCLogStream::shouldLog())
    {
      AppleBCMWLANRoamAdapter::getRoamCacheAsync(v2);
    }
  }

  else
  {
    v4 = 3758097084;
    if ((*v2)[3] && CCLogStream::shouldLog())
    {
      AppleBCMWLANRoamAdapter::getRoamCacheAsync(v2);
    }
  }

  return v4;
}

uint64_t AppleBCMWLANRoamAdapter::setRoamLock(AppleBCMWLANRoamAdapter *this, unsigned int a2)
{
  v5 = a2;
  v2 = (this + 40);
  v3 = AppleBCMWLANCommander::sendIOVarSet(*(*(this + 5) + 8), "roam_off");
  if (v3 && (*v2)[3] && CCLogStream::shouldLog())
  {
    AppleBCMWLANRoamAdapter::setRoamLock(v2, &v5, v3);
  }

  return v3;
}

uint64_t AppleBCMWLANRoamAdapter::handleRoamOffAsyncCallBack(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = (result + 40);
    if ((!*(*(result + 40) + 24) || (CCLogStream::shouldLogConsole() & 1) == 0) && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v5 = (*(***v4 + 112))(**v4, a3);
      v6[0] = 67109890;
      v6[1] = 65;
      v7 = 2080;
      v8 = "handleRoamOffAsyncCallBack";
      v9 = 1024;
      v10 = 2411;
      v11 = 2080;
      v12 = v5;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%c [dk] %s@%d:  Error: cannot set roam_off %s\n", v6, 0x22u);
    }

    result = (*v4)[3];
    if (result)
    {
      result = CCLogStream::shouldLog();
      if (result)
      {
        return AppleBCMWLANRoamAdapter::handleRoamOffAsyncCallBack(v4);
      }
    }
  }

  return result;
}

uint64_t *AppleBCMWLANRoamAdapter::cfgRoamPruneRssiThreshold(AppleBCMWLANRoamAdapter *this, int a2)
{
  v10 = a2;
  v4 = (this + 40);
  v3 = *(this + 5);
  v9[0] = &v10;
  v9[1] = 4;
  v5 = (*(**v3 + 88))();
  if ((*(*v5 + 136))(v5))
  {
    v6 = AppleBCMWLANCommander::sendIOVarSet(*(*(this + 5) + 8), "wnm_prune_rssi_thresh");
  }

  else
  {
    v6 = AppleBCMWLANCommander::runIOVarSet((*v4)[1], "wnm_prune_rssi_thresh", v9, 0, 0);
  }

  v7 = v6;
  result = (*v4)[3];
  if (v7)
  {
    if (result)
    {
      result = CCLogStream::shouldLog();
      if (result)
      {
        return AppleBCMWLANRoamAdapter::cfgRoamPruneRssiThreshold(v4);
      }
    }
  }

  else if (result)
  {
    result = CCLogStream::shouldLog();
    if (result)
    {
      return CCLogStream::logAlert((*v4)[3], "[dk] %s@%d:Prune Threshold for Roaming = %d dB configured successfully\n", "cfgRoamPruneRssiThreshold", 2399, v10);
    }
  }

  return result;
}

uint64_t AppleBCMWLANRoamAdapter::handleMultiAPBitAsyncCallBack(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = (result + 40);
    if ((!*(*(result + 40) + 24) || (CCLogStream::shouldLogConsole() & 1) == 0) && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v5 = (*(***v4 + 112))(**v4, a3);
      v6[0] = 67109890;
      v6[1] = 65;
      v7 = 2080;
      v8 = "handleMultiAPBitAsyncCallBack";
      v9 = 1024;
      v10 = 2420;
      v11 = 2080;
      v12 = v5;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%c [dk] %s@%d:  Error: cannot set MultiAPBit %s\n", v6, 0x22u);
    }

    result = (*v4)[3];
    if (result)
    {
      result = CCLogStream::shouldLog();
      if (result)
      {
        return AppleBCMWLANRoamAdapter::handleMultiAPBitAsyncCallBack(v4);
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANRoamAdapter::handlePruneThresholdConfigurationAsyncCallback(uint64_t result, uint64_t a2, int a3)
{
  if (a3)
  {
    v3 = (result + 40);
    result = *(*(result + 40) + 24);
    if (result)
    {
      result = CCLogStream::shouldLog();
      if (result)
      {
        return AppleBCMWLANRoamAdapter::handlePruneThresholdConfigurationAsyncCallback(v3);
      }
    }
  }

  return result;
}

uint64_t *OUTLINED_FUNCTION_1_2(uint64_t ***a1)
{
  v1 = (*a1)[3];
  result = **a1;
  v3 = *result;
  return result;
}

void OUTLINED_FUNCTION_4_1(uint64_t a1@<X8>)
{
  v1 = *(a1 + 6);
  v2 = *(a1 + 8);
  v3 = *(a1 + 10);
  v4 = *(a1 + 12);
  v5 = *(a1 + 14);
  v6 = *(a1 + 3);
}

AppleBCMWLANNearbyDeviceDiscoveryAdapter *AppleBCMWLANNearbyDeviceDiscoveryAdapter::withDriver(AppleBCMWLANNearbyDeviceDiscoveryAdapter *this, AppleBCMWLANCore *a2)
{
  v5 = 0xAAAAAAAAAAAAAAAALL;
  if (OSObjectAllocate(gAppleBCMWLANNearbyDeviceDiscoveryAdapterMetaClass, &v5))
  {
    return 0;
  }

  v3 = v5;
  if (v5 && (AppleBCMWLANNearbyDeviceDiscoveryAdapter::initWithDriver(v5, this) & 1) == 0)
  {
    (*(*v3 + 16))(v3);
    return 0;
  }

  return v3;
}

uint64_t AppleBCMWLANNearbyDeviceDiscoveryAdapter::initWithDriver(OSObject *this, AppleBCMWLANCore *a2)
{
  if (OSObject::init(this))
  {
    v4 = IOMallocZeroTyped();
    this[1].OSMetaClassBase::__vftable = v4;
    if (v4)
    {
      *(v4 + 16) = a2;
      if (this[1].release)
      {
        this[1].Dispatch = (*(*a2 + 1952))(a2);
        Dispatch = this[1].Dispatch;
        if (Dispatch)
        {
          (*(*Dispatch + 8))(Dispatch);
          this[1].isEqualTo = AppleBCMWLANCore::getCommander(a2);
          isEqualTo = this[1].isEqualTo;
          if (isEqualTo)
          {
            (*(*isEqualTo + 8))(isEqualTo);
            this[1].init = AppleBCMWLANCore::getFaultReporter(this[1].release);
            init = this[1].init;
            if (init)
            {
              (*(*init + 8))(init);
              LOBYTE(this[1].getMetaClass) = 0;
              HIDWORD(this[1].getMetaClass) = -1;
              LODWORD(this[1].retain) = -1;
              return 1;
            }

            getClassNameHelper(this);
            IOLog("%s::%s(): Unable to get faultreporter\n");
          }

          else
          {
            getClassNameHelper(this);
            IOLog("%s::%s(): Unable to get commander\n");
          }
        }

        else
        {
          getClassNameHelper(this);
          IOLog("%s::%s(): Unable to get debug logger\n");
        }
      }

      else
      {
        getClassNameHelper(this);
        IOLog("%s::%s(): Unable to get driver\n");
      }
    }

    else
    {
      IOLog("Ivars alloc failed");
    }
  }

  else
  {
    IOLog("super init failed");
  }

  AppleBCMWLANNearbyDeviceDiscoveryAdapter::freeResources(this);
  return 0;
}

void AppleBCMWLANNearbyDeviceDiscoveryAdapter::free(void **this)
{
  if (this[5])
  {
    AppleBCMWLANNearbyDeviceDiscoveryAdapter::freeResources(this);
    memset_s(this[5], 0x30uLL, 0, 0x30uLL);
    v2 = this[5];
    if (v2)
    {
      IOFree(v2, 0x30uLL);
      this[5] = 0;
    }
  }

  OSObject::free(this);
}

uint64_t AppleBCMWLANNearbyDeviceDiscoveryAdapter::freeResources(AppleBCMWLANNearbyDeviceDiscoveryAdapter *this)
{
  v2 = *(this + 5);
  v3 = v2[3];
  if (v3)
  {
    (*(*v3 + 16))(v3);
    *(*(this + 5) + 24) = 0;
    v2 = *(this + 5);
  }

  v4 = v2[4];
  if (v4)
  {
    (*(*v4 + 16))(v4);
    *(*(this + 5) + 32) = 0;
    v2 = *(this + 5);
  }

  result = v2[5];
  if (result)
  {
    result = (*(*result + 16))(result);
    *(*(this + 5) + 40) = 0;
  }

  return result;
}

uint64_t AppleBCMWLANNearbyDeviceDiscoveryAdapter::setNDD_REQ(uint64_t a1, _DWORD *a2)
{
  v4 = a1 + 40;
  isNDDCapable = AppleBCMWLANCore::isNDDCapable(*(*(a1 + 40) + 16));
  v6 = *(*v4 + 32);
  if ((isNDDCapable & 1) == 0)
  {
    v15 = 3758097095;
    if (v6 && CCLogStream::shouldLog())
    {
      AppleBCMWLANNearbyDeviceDiscoveryAdapter::setNDD_REQ(v4);
    }

    return v15;
  }

  if (v6 && CCLogStream::shouldLog())
  {
    AppleBCMWLANNearbyDeviceDiscoveryAdapter::setNDD_REQ(v4);
  }

  if (!a2[3])
  {
    if (*a2 == 1)
    {
      goto LABEL_28;
    }

LABEL_31:

    return AppleBCMWLANNearbyDeviceDiscoveryAdapter::configureNDDStop(a1, a2);
  }

  v7 = 0;
  do
  {
    if (*(*v4 + 32) && CCLogStream::shouldLog())
    {
      AppleBCMWLANNearbyDeviceDiscoveryAdapter::setNDD_REQ(v4);
    }

    ++v7;
    v8 = a2[3];
  }

  while (v7 < v8);
  if (*a2 != 1)
  {
    goto LABEL_31;
  }

  if (!v8)
  {
LABEL_28:

    return AppleBCMWLANNearbyDeviceDiscoveryAdapter::configureNDDStart(a1, a2);
  }

  v9 = 0;
  v10 = 0;
  while (1)
  {
    v11 = &a2[7 * v9 + 5];
    if (*(v11 + 20) | *(v11 + 24))
    {
      v12 = 0;
    }

    else
    {
      v12 = (*(v11 + 14) | *(v11 + 18)) == 0;
    }

    if (!v12 || (*(v11 + 8) | *(v11 + 12)) != 0)
    {
      goto LABEL_25;
    }

    if (!*v11)
    {
      AppleBCMWLANNearbyDeviceDiscoveryAdapter::setNDD_REQ(v4);
      return 3758097084;
    }

    if (v10)
    {
      break;
    }

    v10 = 1;
LABEL_25:
    if (v8 <= ++v9)
    {
      goto LABEL_28;
    }
  }

  AppleBCMWLANNearbyDeviceDiscoveryAdapter::setNDD_REQ(v4);
  return 3758097084;
}

uint64_t AppleBCMWLANNearbyDeviceDiscoveryAdapter::configureNDDStart(uint64_t a1, uint64_t a2)
{
  v33 = 0;
  v34 = 0;
  if (!a2 || (*(a2 + 12) - 9) < 0xFFFFFFF8)
  {
    AppleBCMWLANNearbyDeviceDiscoveryAdapter::configureNDDStart(a1);
    v27 = v35;
    goto LABEL_64;
  }

  v4 = 0;
  v5 = a2 + 20;
  do
  {
    v6 = IOMallocZeroData();
    if (!v6)
    {
      v27 = 3758097085;
      if (*(*(a1 + 40) + 32) && CCLogStream::shouldLog())
      {
        AppleBCMWLANNearbyDeviceDiscoveryAdapter::configureNDDStart(a1 + 40);
      }

      goto LABEL_64;
    }

    v7 = v6;
    *v6 = 1835009;
    v8 = (v6 + 4);
    v36 = 0;
    v35 = 0;
    v9 = v5 + 28 * v4;
    if (*(v9 + 8) | *(v9 + 12))
    {
      v10 = *(v9 + 8);
      *(v6 + 12) = *(v9 + 12);
      *(v6 + 8) = v10;
      v11 = 1;
    }

    else
    {
      v11 = 0;
    }

    if (*(v9 + 14) != v35 || *(v9 + 18) != v36)
    {
      v13 = *(v9 + 14);
      *(v6 + 18) = *(v9 + 18);
      *(v6 + 14) = v13;
      v11 = 1;
    }

    if (*(v9 + 20) != v35 || *(v9 + 24) != v36)
    {
      v15 = *(v9 + 20);
      *(v6 + 24) = *(v9 + 24);
      *(v6 + 20) = v15;
      v11 = 1;
    }

    v16 = *v9;
    if (!*v9)
    {
      LOBYTE(v16) = -1;
    }

    *(v6 + 30) = v16;
    if (!v11)
    {
      *(v6 + 31) = 7;
    }

    v17 = *(*(a1 + 40) + 8);
    if (v17 == -1)
    {
      *(v6 + 28) = *(v9 + 4);
    }

    else
    {
      *(v6 + 28) = v17;
      if (*(*(a1 + 40) + 32) && CCLogStream::shouldLog())
      {
        AppleBCMWLANNearbyDeviceDiscoveryAdapter::configureNDDStart(a1 + 40);
      }
    }

    if (*(a2 + 4) == 2)
    {
      v18 = 0;
      while (1)
      {
        *(v7 + 4) = v18;
        v33 = v7;
        v34 = 34;
        v19 = AppleBCMWLANCommander::runIOVarSet(*(*(a1 + 40) + 24), "eds", &v33, 0, 0);
        if (v19)
        {
          break;
        }

        if (v18++ > 1)
        {
          goto LABEL_43;
        }
      }

      v27 = v19;
      if (*(*(a1 + 40) + 32) && CCLogStream::shouldLog())
      {
        AppleBCMWLANNearbyDeviceDiscoveryAdapter::configureNDDStart(a1 + 40);
      }

      goto LABEL_63;
    }

    *(v7 + 4) = 2;
    v33 = v7;
    v34 = 34;
    v21 = AppleBCMWLANCommander::runIOVarSet(*(*(a1 + 40) + 24), "eds", &v33, 0, 0);
    v22 = *(a1 + 40);
    if (v21)
    {
      v27 = v21;
      if (*(v22 + 32) && CCLogStream::shouldLog())
      {
        AppleBCMWLANNearbyDeviceDiscoveryAdapter::configureNDDStart(a1 + 40);
      }

      goto LABEL_63;
    }

    if (*v22)
    {
      if (*(v22 + 32) && CCLogStream::shouldLog())
      {
        AppleBCMWLANNearbyDeviceDiscoveryAdapter::configureNDDStart(a1 + 40);
      }
    }

    else
    {
      v23 = *(a2 + 16);
      if (!(v23 >> 14))
      {
        *v8 = 0;
        v23 = *(a2 + 16);
      }

      if (((v23 >> 14) | 2) == 3)
      {
        *v8 = 1;
      }

      v33 = v7;
      v34 = 34;
      v24 = AppleBCMWLANCommander::runIOVarSet(*(*(a1 + 40) + 24), "eds", &v33, 0, 0);
      if (v24)
      {
        v27 = v24;
        if (*(*(a1 + 40) + 32) && CCLogStream::shouldLog())
        {
          AppleBCMWLANNearbyDeviceDiscoveryAdapter::configureNDDStart(a1 + 40);
        }

LABEL_63:
        IOFreeData();
        goto LABEL_64;
      }
    }

LABEL_43:
    IOFreeData();
    ++v4;
  }

  while (*(a2 + 12) > v4);
  v25 = IOMallocZeroData();
  if (!v25)
  {
    v27 = 3758097085;
    if (*(*(a1 + 40) + 32) && CCLogStream::shouldLog())
    {
      AppleBCMWLANNearbyDeviceDiscoveryAdapter::configureNDDStart(a1 + 40);
    }

    goto LABEL_64;
  }

  v26 = v25;
  *v25 = 524308;
  if (*(a2 + 4) == 2)
  {
    *(v25 + 4) = 0;
  }

  else
  {
    *(v25 + 4) |= **(a1 + 40) ^ 1 | 2;
    v28 = *(*(a1 + 40) + 4);
    if (v28 != -1)
    {
      *(v25 + 8) = v28;
      if (*(*(a1 + 40) + 32) && CCLogStream::shouldLog())
      {
        AppleBCMWLANNearbyDeviceDiscoveryAdapter::configureNDDStart(a1 + 40);
      }

      goto LABEL_58;
    }
  }

  *(v25 + 8) = *(a2 + 8);
LABEL_58:
  ChanSpecHandler = AppleBCMWLANCore::getChanSpecHandler(*(*(a1 + 40) + 16));
  *(v26 + 6) = AppleBCMWLANChanSpec::getBCMChannelSpec(ChanSpecHandler, *(a2 + 16));
  v33 = v26;
  v34 = 14;
  v27 = AppleBCMWLANCommander::runIOVarSet(*(*(a1 + 40) + 24), "eds", &v33, 0, 0);
  if (!v27)
  {
    IOFreeData();
    return v27;
  }

  AppleBCMWLANNearbyDeviceDiscoveryAdapter::configureNDDStart(a1 + 40);
LABEL_64:
  v30 = AppleBCMWLANNearbyDeviceDiscoveryAdapter::configureNDDStop(a1, a2);
  if (v30)
  {
    v31 = v30;
    if (*(*(a1 + 40) + 32))
    {
      if (CCLogStream::shouldLog())
      {
        CCLogStream::logAlert(*(*(a1 + 40) + 32), "[dk] %s@%d:Unable to stop and clear NDD filters after failure %d\n", "configureNDDStart", 444, v31);
      }
    }
  }

  return v27;
}

uint64_t AppleBCMWLANNearbyDeviceDiscoveryAdapter::configureNDDStop(uint64_t a1, uint64_t a2)
{
  if (a2 && *(a2 + 12) < 9u)
  {
    v3 = IOMallocZeroData();
    if (v3)
    {
      *v3 = 262148;
      *(v3 + 4) = -1;
      v12 = v3;
      v13 = 10;
      v5 = *(a1 + 40);
      v4 = a1 + 40;
      v6 = AppleBCMWLANCommander::runIOVarSet(*(v5 + 24), "eds", &v12, 0, 0);
      if (v6)
      {
        v8 = v6;
        AppleBCMWLANNearbyDeviceDiscoveryAdapter::configureNDDStop(v4);
      }

      else
      {
        IOFreeData();
        v7 = IOMallocZeroData();
        if (v7)
        {
          *v7 = 262147;
          *(v7 + 4) = -1;
          v12 = v7;
          v13 = 10;
          v8 = AppleBCMWLANCommander::runIOVarSet(*(*v4 + 24), "eds", &v12, 0, 0);
          if (v8)
          {
            AppleBCMWLANNearbyDeviceDiscoveryAdapter::configureNDDStop(v4);
          }

          IOFreeData();
        }

        else
        {
          v8 = 3758097085;
          if (*(*v4 + 32) && CCLogStream::shouldLog())
          {
            AppleBCMWLANNearbyDeviceDiscoveryAdapter::configureNDDStop(v4);
          }
        }
      }
    }

    else
    {
      v8 = 3758097085;
      v10 = *(a1 + 40);
      v9 = a1 + 40;
      if (*(v10 + 32) && CCLogStream::shouldLog())
      {
        AppleBCMWLANNearbyDeviceDiscoveryAdapter::configureNDDStop(v9);
      }
    }
  }

  else
  {
    AppleBCMWLANNearbyDeviceDiscoveryAdapter::configureNDDStop(a1);
    return v12;
  }

  return v8;
}

uint64_t AppleBCMWLANNearbyDeviceDiscoveryAdapter::processNDDReportEvent(uint64_t a1, uint64_t a2)
{
  v15[0] = 0;
  v13 = 0u;
  v14 = 0u;
  if (*(a2 + 48) != 1)
  {
    return AppleBCMWLANNearbyDeviceDiscoveryAdapter::processNDDReportEvent(a1);
  }

  v4 = a1 + 40;
  v3 = *(a1 + 40);
  if (*(a2 + 20) != 56)
  {
    return AppleBCMWLANNearbyDeviceDiscoveryAdapter::processNDDReportEvent(v3, v4);
  }

  ChanSpecHandler = AppleBCMWLANCore::getChanSpecHandler(*(v3 + 16));
  WORD1(v15[0]) = AppleBCMWLANChanSpec::getAppleChannelSpec(ChanSpecHandler, *(a2 + 90));
  v15[1] = *(a2 + 56);
  v6 = *(a2 + 64);
  WORD2(v14) = *(a2 + 68);
  *(&v14 + 6) = *(a2 + 70);
  WORD5(v14) = *(a2 + 74);
  HIDWORD(v14) = *(a2 + 76);
  LOWORD(v15[0]) = *(a2 + 80);
  v7 = *(a2 + 83);
  LODWORD(v14) = v6;
  DWORD2(v13) = v7;
  *(&v13 + 2) = *(a2 + 84);
  v8 = *(a2 + 92);
  LOBYTE(v13) = *(a2 + 88);
  BYTE1(v13) = 1;
  HIDWORD(v13) = ratespec2rate(*(*v4 + 32), v8);
  AppleBCMWLANCore::postMessageInfra(*(*v4 + 16), 0xEFu, &v13, 0x30uLL);
  v9 = *v4;
  if (*(*v4 + 32))
  {
    shouldLog = CCLogStream::shouldLog();
    v9 = *v4;
    if (shouldLog)
    {
      CCLogStream::logAlert(*(v9 + 32), "[dk] %s@%d:version=%u, length=%u, timestamp=%llu, ra=[%x:%x:%x:%x:%x:%x], ta=[%x:%x:%x:%x:%x:%x], bssid=[%x:%x:%x:%x:%x:%x]", "processNDDReportEvent", 206, *(a2 + 48), *(a2 + 50), *(a2 + 56), *(a2 + 64), *(a2 + 65), *(a2 + 66), *(a2 + 67), *(a2 + 68), *(a2 + 69), *(a2 + 70), *(a2 + 71), *(a2 + 72), *(a2 + 73), *(a2 + 74), *(a2 + 75), *(a2 + 76), *(a2 + 77), *(a2 + 78), *(a2 + 79), *(a2 + 80), *(a2 + 81));
      v9 = *v4;
    }
  }

  if (*(v9 + 32))
  {
    v11 = CCLogStream::shouldLog();
    v9 = *v4;
    if (v11)
    {
      CCLogStream::logAlert(*(v9 + 32), "[dk] %s@%d:filterId=%d, fType=%d, rssi[0]=%d, rssi[1]=%d, rssi[2]=%d, rssi[3]=%d, numAnt=%d, radioInd=%d fc=%u\n", "processNDDReportEvent", 207, *(a2 + 82), *(a2 + 83), *(a2 + 84), *(a2 + 85), *(a2 + 86), *(a2 + 87), *(a2 + 88), *(a2 + 89), *(a2 + 96));
      v9 = *v4;
    }
  }

  result = *(v9 + 32);
  if (result)
  {
    result = CCLogStream::shouldLog();
    if (result)
    {
      return AppleBCMWLANNearbyDeviceDiscoveryAdapter::processNDDReportEvent(v4, v15 + 1, (a2 + 92));
    }
  }

  return result;
}

{
  result = *(a1 + 32);
  if (result)
  {
    result = CCLogStream::shouldLog();
    if (result)
    {
      v4 = *(*a2 + 32);
      OUTLINED_FUNCTION_3_0();
      return CCLogStream::logAlert(v5, "[dk] %s@%d:%s:%dInvalid data len received %u\n", v6, v7, v8, v9, v10);
    }
  }

  return result;
}

uint64_t AppleBCMWLANNearbyDeviceDiscoveryAdapter::processNDDStatusEvent(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 48) != 1)
  {
    return AppleBCMWLANNearbyDeviceDiscoveryAdapter::processNDDStatusEvent(a1);
  }

  if (*(a2 + 20) != 20)
  {
    return AppleBCMWLANNearbyDeviceDiscoveryAdapter::processNDDStatusEvent(a1);
  }

  if (*(a2 + 54) == 1)
  {
    if (*(*(a1 + 40) + 32) && CCLogStream::shouldLog())
    {
      AppleBCMWLANNearbyDeviceDiscoveryAdapter::processNDDStatusEvent(a1 + 40);
    }

    goto LABEL_14;
  }

  v3 = *(a2 + 52);
  v9 = 0;
  v4 = (((v3 - 64) >> 6) | ((v3 - 64) << 10));
  if (v4 < 2)
  {
    goto LABEL_10;
  }

  if (v4 == 3)
  {
    v5 = -528349953;
    goto LABEL_12;
  }

  if (v4 == 7)
  {
LABEL_10:
    v5 = -528350192;
LABEL_12:
    v9 = v5;
  }

  AppleBCMWLANCore::postMessageInfra(*(*(a1 + 40) + 16), 0xEEu, &v9, 4uLL);
LABEL_14:
  v7 = *(a1 + 40);
  v6 = a1 + 40;
  result = *(v7 + 32);
  if (result)
  {
    result = CCLogStream::shouldLog();
    if (result)
    {
      return AppleBCMWLANNearbyDeviceDiscoveryAdapter::processNDDStatusEvent(v6);
    }
  }

  return result;
}

uint64_t AppleBCMWLANNearbyDeviceDiscoveryAdapter::handleNDDFWEvents(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return AppleBCMWLANNearbyDeviceDiscoveryAdapter::handleNDDFWEvents(a1);
  }

  v4 = *(a2 + 8);
  switch(v4)
  {
    case 3:
      if (*(a2 + 48) == 1)
      {
        v6 = a1 + 40;
        result = *(*(a1 + 40) + 32);
        if (*(a2 + 20) == 12)
        {
          if (result)
          {
            result = CCLogStream::shouldLog();
            if (result)
            {
              return AppleBCMWLANNearbyDeviceDiscoveryAdapter::handleNDDFWEvents(v6);
            }
          }
        }

        else if (result)
        {
          v7 = *(a2 + 20);
          result = CCLogStream::shouldLog();
          if (result)
          {
            return CCLogStream::logAlert(*(*v6 + 32), "[dk] %s@%d:%s:%dInvalid data len received %u\n");
          }
        }
      }

      else
      {
        return AppleBCMWLANNearbyDeviceDiscoveryAdapter::handleNDDFWEvents(a1);
      }

      break;
    case 2:

      return AppleBCMWLANNearbyDeviceDiscoveryAdapter::processNDDReportEvent(a1, a2);
    case 1:

      return AppleBCMWLANNearbyDeviceDiscoveryAdapter::processNDDStatusEvent(a1, a2);
    default:
      result = *(*(a1 + 40) + 32);
      if (result)
      {
        result = CCLogStream::shouldLog();
        if (result)
        {
          v8 = *(a2 + 8);
          return CCLogStream::logAlert(*(*(a1 + 40) + 32), "[dk] %s@%d:%s:%dInvalid event status %u\n");
        }
      }

      break;
  }

  return result;
}

uint64_t *OUTLINED_FUNCTION_0_1(uint64_t a1)
{
  v1 = *(*a1 + 32);
  result = *(*a1 + 16);
  v3 = *result;
  return result;
}

uint64_t *OUTLINED_FUNCTION_1_3@<X0>(uint64_t a1@<X8>)
{
  result = *(a1 + 16);
  v2 = *result;
  return result;
}

uint64_t OUTLINED_FUNCTION_8_2()
{

  return CCLogStream::shouldLog();
}

uint64_t OUTLINED_FUNCTION_9_1()
{
  result = *(*(v1 + 40) + 32);
  v3 = *(v0 + 12);
  return result;
}

uint64_t AppleBCMWLANApFeatureConfig::free(AppleBCMWLANApFeatureConfig *this)
{
  v2 = *(this + 7);
  if (v2)
  {
    IOFree(v2, 0x10uLL);
    *(this + 7) = 0;
  }

  return IO80211ApFeatureConfig::free(this);
}

uint64_t AppleBCMWLANApFeatureConfig::handleLimitedAggregation(AppleBCMWLANCore ***this)
{
  LimitedAggregationEnable = IO80211ApFeatureConfig::getLimitedAggregationEnable(this);
  NetAdapter = AppleBCMWLANCore::getNetAdapter(*this[7]);

  return AppleBCMWLANNetAdapter::setLimitedAggregation(NetAdapter, LimitedAggregationEnable);
}

uint64_t AppleBCMWLANApFeatureConfig::sendBeaconMitigationParams(uint64_t a1, uint64_t a2)
{
  NetAdapter = AppleBCMWLANCore::getNetAdapter(**(a1 + 56));
  v4 = *a2;
  v5 = *(a2 + 2);
  v6 = *(a2 + 3);

  return AppleBCMWLANNetAdapter::configureBeaconMitigationParams(NetAdapter, v4, v5, v6);
}

uint64_t non-virtual thunk toAppleBCMWLANApFeatureConfig::sendBeaconMitigationParams(uint64_t a1, uint64_t a2)
{
  NetAdapter = AppleBCMWLANCore::getNetAdapter(**(a1 + 16));
  v4 = *a2;
  v5 = *(a2 + 2);
  v6 = *(a2 + 3);

  return AppleBCMWLANNetAdapter::configureBeaconMitigationParams(NetAdapter, v4, v5, v6);
}

uint64_t AppleBCMWLANGASAdapter::initWithDriver(OSObject *a1, const OSMetaClass *(__cdecl *a2)(const OSMetaClassBase *__hidden this))
{
  v4 = IOMallocZeroTyped();
  a1[1].OSMetaClassBase::__vftable = v4;
  if (v4)
  {
    v4->getMetaClass = a2;
    getMetaClass = a1[1].getMetaClass;
    if (getMetaClass)
    {
      a1[1].retain = AppleBCMWLANCore::getCommander(getMetaClass);
      retain = a1[1].retain;
      if (retain)
      {
        (*(*retain + 8))(retain);
        a1[1].release = (*(*a2 + 1952))(a2);
        release = a1[1].release;
        if (release)
        {
          (*(*release + 8))(release);
          if (OSObject::init(a1))
          {
            LOBYTE(a1[1].isEqualTo) = 0;
            return 1;
          }

          v9 = "AppleBCMWLANGASAdapter super init failied\n";
        }

        else
        {
          v9 = "AppleBCMWLANGASAdapter Failed to init fLogger\n";
        }
      }

      else
      {
        v9 = "AppleBCMWLANGASAdapter commander is null\n";
      }
    }

    else
    {
      v9 = "AppleBCMWLANGASAdapter driver is null\n";
    }
  }

  else
  {
    v9 = "Failed to allocate AppleBCMWLANGASAdapter_IVars\n";
  }

  AppleBCMWLANGASAdapter::initWithDriver(v9, a1);
  return 0;
}

void AppleBCMWLANGASAdapter::free(AppleBCMWLANGASAdapter *this)
{
  if (*(this + 5))
  {
    AppleBCMWLANGASAdapter::freeResources(this);
    v2 = *(this + 5);
    if (v2)
    {
      IOFree(v2, 0x28uLL);
      *(this + 5) = 0;
    }
  }

  OSObject::free(this);
}

uint64_t AppleBCMWLANGASAdapter::freeResources(AppleBCMWLANGASAdapter *this)
{
  v2 = *(this + 5);
  v3 = *(v2 + 16);
  if (v3)
  {
    (*(*v3 + 16))(v3);
    *(*(this + 5) + 16) = 0;
    v2 = *(this + 5);
  }

  result = *(v2 + 8);
  if (result)
  {
    result = (*(*result + 16))(result);
    *(*(this + 5) + 8) = 0;
  }

  return result;
}

uint64_t AppleBCMWLANGASAdapter::setHotspot20CapsIndicationIE(AppleBCMWLANGASAdapter *this)
{
  v2 = IOMallocZeroData();
  if (!v2)
  {
    return 12;
  }

  v3 = v2;
  *v2 = 1867515357;
  *(v2 + 4) = 4250;
  *(v2 + 6) = 0;
  v5 = *(this + 5);
  v4 = (this + 40);
  v6 = *(v5 + 8);
  v9[0] = v3;
  v9[1] = 8;
  v7 = AppleBCMWLANCommander::runIOVarSet(v6, "hs20_ie", v9, 0, 0);
  if (v7 && (*v4)[2] && CCLogStream::shouldLog())
  {
    AppleBCMWLANGASAdapter::setHotspot20CapsIndicationIE(v4);
  }

  IOFreeData();
  return v7;
}

uint64_t AppleBCMWLANGASAdapter::setHotspot20InterworkingIE(AppleBCMWLANGASAdapter *this)
{
  v2 = IOMallocZeroData();
  if (!v2)
  {
    return 12;
  }

  v3 = v2;
  *v2 = 0x100646461;
  *(v2 + 12) = 1899;
  *(v2 + 8) = 272;
  *(v2 + 14) = 15;
  *(v2 + 15) = -1;
  *(v2 + 19) = -1;
  v5 = *(this + 5);
  v4 = (this + 40);
  v6 = *(v5 + 8);
  v9[0] = v3;
  v9[1] = 21;
  v7 = AppleBCMWLANCommander::runIOVarSet(v6, "ie", v9, 0, 0);
  if (v7 && (*v4)[2] && CCLogStream::shouldLog())
  {
    AppleBCMWLANGASAdapter::setHotspot20InterworkingIE(v4);
  }

  IOFreeData();
  return v7;
}

uint64_t AppleBCMWLANGASAdapter::setGASQueryParams(uint64_t a1, uint64_t a2)
{
  v3 = (a1 + 40);
  v4 = *(a1 + 40);
  if (v4[2])
  {
    shouldLog = CCLogStream::shouldLog();
    v4 = *v3;
    if (shouldLog)
    {
      CCLogStream::logNoticeIf(v4[2], 0x100000uLL, "[dk] %s@%d:Enter %s \n", "setGASQueryParams", 211, "setGASQueryParams");
      v4 = *v3;
    }
  }

  v13 = 0x303E800C80000;
  v14 = *(a2 + 8);
  memset(v15, 0, sizeof(v15));
  memcpy(v15, (a2 + 10), v14);
  v6 = v4[1];
  v12[0] = &v13;
  v12[1] = 266;
  v7 = AppleBCMWLANCommander::runIOVarSet(v6, "anqpo_set", v12, 0, 0);
  v8 = *v3;
  if (v7)
  {
    if (v8[2])
    {
      v10 = v8[2];
      v11 = CCLogStream::shouldLog();
      v8 = *v3;
      if (v11)
      {
        AppleBCMWLANGASAdapter::setGASQueryParams(v8, v7, v3, v12);
        v8 = v12[0];
      }
    }
  }

  if (v8[2] && CCLogStream::shouldLog())
  {
    AppleBCMWLANGASAdapter::setGASQueryParams(v3);
  }

  return v7;
}

uint64_t AppleBCMWLANGASAdapter::startGASQuery(uint64_t a1, uint64_t a2)
{
  v4 = (a1 + 40);
  v3 = *(a1 + 40);
  if (v3[2])
  {
    shouldLog = CCLogStream::shouldLog();
    v3 = *v4;
    if (shouldLog)
    {
      CCLogStream::logNoticeIf(v3[2], 0x100000uLL, "[dk] %s@%d:Enter %s \n", "startGASQuery", 239, "startGASQuery");
      v3 = *v4;
    }
  }

  if (AppleBCMWLANCore::getFirmwareInterfaceVersion(*v3) < 0x11)
  {
    FirmwareInterfaceVersion = AppleBCMWLANCore::getFirmwareInterfaceVersion(**v4);
    v8 = 12 * *(a2 + 528) + 20;
    if (FirmwareInterfaceVersion >= 0xA)
    {
      v6 = 12 * *(a2 + 528) + 20;
    }

    else
    {
      v6 = (8 * *(a2 + 528)) | 2;
    }
  }

  else
  {
    v6 = 12 * *(a2 + 528) + 8;
  }

  v9 = IOMallocZeroData();
  v10 = *v4;
  v11 = (*v4)[2];
  if (v9)
  {
    if (v11)
    {
      v12 = CCLogStream::shouldLog();
      v10 = *v4;
      if (v12)
      {
        CCLogStream::logNoticeIf(v10[2], 0x100000uLL, "[dk] %s@%d:Number of GAS Peers to be Queried %d\n", "startGASQuery", 255, *(a2 + 528));
        v10 = *v4;
      }
    }

    if (AppleBCMWLANCore::getFirmwareInterfaceVersion(*v10) < 0x11)
    {
      v24 = AppleBCMWLANCore::getFirmwareInterfaceVersion(**v4);
      v25 = *(a2 + 528);
      if (v24 < 0xA)
      {
        *v9 = v25;
        if (v25)
        {
          v30 = 0;
          v31 = (a2 + 544);
          v32 = (v9 + 2);
          do
          {
            *(v32 - 1) = *(v31 - 4);
            v33 = *v31;
            *(v32 + 2) = *(v31 + 2);
            *v32 = v33;
            if ((*v4)[2] && CCLogStream::shouldLog())
            {
              AppleBCMWLANGASAdapter::startGASQuery(v4, v32, v32 - 2);
            }

            ++v30;
            v31 += 5;
            v32 += 8;
          }

          while (v30 < *(a2 + 528));
        }
      }

      else
      {
        v9[2] = v25;
        *v9 = 2;
        if (v25)
        {
          v26 = 0;
          v27 = (a2 + 544);
          v28 = (v9 + 5);
          do
          {
            *(v28 - 1) = *(v27 - 4);
            v29 = *v27;
            *(v28 + 2) = *(v27 + 2);
            *v28 = v29;
            if ((*v4)[2] && CCLogStream::shouldLog())
            {
              AppleBCMWLANGASAdapter::startGASQuery(v4, v28, v28 - 2);
            }

            ++v26;
            v27 += 5;
            v28 += 12;
          }

          while (v26 < *(a2 + 528));
        }
      }
    }

    else
    {
      v9[2] = *(a2 + 528);
      *v9 = 3;
      if (*(a2 + 528))
      {
        v13 = 0;
        v14 = (v9 + 4);
        v15 = a2 + 544;
        do
        {
          v16 = *(v15 - 8);
          v17 = *(v15 - 4);
          if (v16 >= 0xF)
          {
            v18 = -16384;
          }

          else
          {
            v18 = 0;
          }

          v19 = v18 | v16;
          if ((v17 & 0x2000) != 0)
          {
            v19 = v16 | 0x4000;
          }

          if ((v17 & 0x10) != 0)
          {
            v19 = v16 | 0xC000;
          }

          if ((v17 & 8) == 0)
          {
            LOWORD(v16) = v19;
          }

          v20 = v16 | 0x1000;
          ChanSpecHandler = AppleBCMWLANCore::getChanSpecHandler(**v4);
          *v14 = AppleBCMWLANChanSpec::getBCMChannelSpec(ChanSpecHandler, v20);
          v22 = *(v15 + 4);
          *(v14 + 2) = *v15;
          *(v14 + 3) = v22;
          if ((*v4)[2] && CCLogStream::shouldLog())
          {
            AppleBCMWLANGASAdapter::startGASQuery(v4, v14 + 2, v14);
          }

          ++v13;
          v15 += 20;
          v14 += 12;
        }

        while (v13 < *(a2 + 528));
      }
    }

    v34 = *v4;
    if ((*v4)[2])
    {
      v35 = CCLogStream::shouldLog();
      v34 = *v4;
      if (v35)
      {
        CCLogStream::logAlert(v34[2], "[dk] %s@%d:Start GAS Query\n", "startGASQuery", 310);
        v34 = *v4;
      }
    }

    v36 = v34[1];
    if (v6)
    {
      v37 = v9;
    }

    else
    {
      v37 = 0;
    }

    v40[0] = v37;
    v40[1] = v6;
    v38 = AppleBCMWLANCommander::runIOVarSet(v36, "anqpo_start_query", v40, 0, 0);
    if (v38)
    {
      AppleBCMWLANGASAdapter::startGASQuery(v4, v38, v6, v40, &v41);
      v23 = v41;
    }

    else
    {
      v23 = 0;
    }
  }

  else
  {
    v23 = 3758097085;
    if (v11 && CCLogStream::shouldLog())
    {
      AppleBCMWLANGASAdapter::startGASQuery(v4);
    }
  }

  if ((*v4)[2] && CCLogStream::shouldLog())
  {
    AppleBCMWLANGASAdapter::startGASQuery(v4);
    if (!v9)
    {
      return v23;
    }

    goto LABEL_59;
  }

  if (v9)
  {
LABEL_59:
    IOFreeData();
  }

  return v23;
}

uint64_t AppleBCMWLANGASAdapter::issueGASAbort(AppleBCMWLANGASAdapter *this)
{
  v8 = 1;
  v2 = this + 40;
  v1 = *(this + 5);
  if (*(v1 + 16))
  {
    shouldLog = CCLogStream::shouldLog();
    v1 = *v2;
    if (shouldLog)
    {
      CCLogStream::logNoticeIf(*(v1 + 16), 0x100000uLL, "[dk] %s@%d:Enter %s \n", "issueGASAbort", 324, "issueGASAbort");
      v1 = *v2;
    }
  }

  v4 = *(v1 + 8);
  v7[0] = &v8;
  v7[1] = 4;
  v5 = AppleBCMWLANCommander::runIOVarSet(v4, "anqpo_stop_query", v7, 0, 0);
  if (v5)
  {
    AppleBCMWLANGASAdapter::issueGASAbort(v2);
  }

  else
  {
    v7[0] = 0;
    mach_continuous_time();
    absolutetime_to_nanoseconds();
    *(*v2 + 32) = v7[0] / 0xF4240uLL;
    if (*(*v2 + 16) && CCLogStream::shouldLog())
    {
      AppleBCMWLANGASAdapter::issueGASAbort(v2);
    }
  }

  if (*(*v2 + 16) && CCLogStream::shouldLog())
  {
    AppleBCMWLANGASAdapter::issueGASAbort(v2);
  }

  return v5;
}

uint64_t AppleBCMWLANGASAdapter::isGASEventAllowed(AppleBCMWLANCore ***this)
{
  v1 = (this + 5);
  PrimaryInterface = AppleBCMWLANCore::getPrimaryInterface(*this[5]);
  v3 = *v1;
  if (PrimaryInterface)
  {
    AppleBCMWLANCore::isShutdownPending(*v3);
    return 0;
  }

  else
  {
    v4 = 3758097095;
    if (*(v3 + 16) && CCLogStream::shouldLog())
    {
      AppleBCMWLANGASAdapter::isGASEventAllowed(v1);
    }
  }

  return v4;
}

uint64_t AppleBCMWLANGASAdapter::bcmEventStatusToAppleGasEventStatus(AppleBCMWLANGASAdapter *this, unsigned int a2, unsigned int *a3)
{
  v5 = this + 40;
  if (*(*(this + 5) + 16) && CCLogStream::shouldLog())
  {
    AppleBCMWLANGASAdapter::bcmEventStatusToAppleGasEventStatus(v5);
  }

  if (a2 <= 8 && ((0x113u >> a2) & 1) != 0)
  {
    v6 = 0;
    *a3 = dword_10033B1D0[a2];
  }

  else
  {
    v6 = 3758096385;
  }

  if (*(*v5 + 16) && CCLogStream::shouldLog())
  {
    AppleBCMWLANGASAdapter::bcmEventStatusToAppleGasEventStatus(v5);
  }

  return v6;
}

uint64_t AppleBCMWLANGASAdapter::handleGAS_COMPLETE(AppleBCMWLANGASAdapter *a1, uint64_t a2)
{
  v11 = 0;
  v4 = a1 + 40;
  if (*(*(a1 + 5) + 16) && CCLogStream::shouldLog())
  {
    AppleBCMWLANGASAdapter::handleGAS_COMPLETE(v4);
  }

  v5 = *v4;
  if (a2)
  {
    if (AppleBCMWLANCore::isShutdownPending(*v5))
    {
      AppleBCMWLANGASAdapter::handleGAS_COMPLETE(v4, &v12);
      v6 = v12;
    }

    else
    {
      v6 = AppleBCMWLANGASAdapter::bcmEventStatusToAppleGasEventStatus(a1, *(a2 + 8), &v11);
      v7 = *(*(a1 + 5) + 16);
      if (v6)
      {
        if (v7 && CCLogStream::shouldLog())
        {
          CCLogStream::logAlert(*(*v4 + 16), "[dk] %s@%d:Invalid bcm event status value %u\n", "handleGAS_COMPLETE", 581, *(a2 + 8));
        }
      }

      else
      {
        if (v7)
        {
          shouldLog = CCLogStream::shouldLog();
          v8 = v11;
          if (shouldLog)
          {
            AppleBCMWLANGASAdapter::handleGAS_COMPLETE(v4);
          }
        }

        else
        {
          v8 = v11;
        }

        v6 = AppleBCMWLANGASAdapter::sendGasCompleteEvent(a1, v8);
      }
    }
  }

  else
  {
    if (*(v5 + 16) && CCLogStream::shouldLog())
    {
      AppleBCMWLANGASAdapter::handleGAS_COMPLETE(v4);
    }

    v6 = 0;
  }

  *(*v4 + 24) = 0;
  if (*(*v4 + 16) && CCLogStream::shouldLog())
  {
    AppleBCMWLANGASAdapter::handleGAS_COMPLETE(v4);
  }

  return v6;
}

uint64_t OUTLINED_FUNCTION_0_2(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  result = *(*a1 + 16);
  v9 = a3[7];
  v10 = *a3;
  v7 = a3[5];
  v8 = a3[6];
  v5 = a3[3];
  v6 = a3[4];
  v4 = *a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_7_2()
{

  return CCLogStream::shouldLog();
}

AppleBCMWLANBssManager *AppleBCMWLANBssManager::withOptions(AppleBCMWLANBssManager *this, AppleBCMWLANCore *a2)
{
  v5 = 0xAAAAAAAAAAAAAAAALL;
  if (OSObjectAllocate(gAppleBCMWLANBssManagerMetaClass, &v5))
  {
    return 0;
  }

  v3 = v5;
  if (v5 && (AppleBCMWLANBssManager::initWithDriver(v5, this) & 1) == 0)
  {
    (*(*v3 + 16))(v3);
    return 0;
  }

  return v3;
}

uint64_t AppleBCMWLANBssManager::initWithDriver(AppleBCMWLANBssManager *this, AppleBCMWLANCore *a2)
{
  result = IOMallocZeroTyped();
  *(this + 6) = result;
  if (result)
  {
    *(result + 8) = a2;
    if (a2)
    {
      (*(**(*(this + 6) + 8) + 1952))(*(*(this + 6) + 8));
      result = IO80211BssManager::initwithOptions();
      if (result)
      {
        *(*(this + 6) + 16) = (*(*a2 + 1952))(a2);
        return 1;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t AppleBCMWLANBssManager::free(AppleBCMWLANBssManager *this)
{
  v2 = *(this + 6);
  if (v2)
  {
    IOFree(v2, 0x18uLL);
    *(this + 6) = 0;
  }

  return IO80211BssManager::free(this);
}

uint64_t AppleBCMWLANBssManager::setCurrentBSS(IO80211BssManager *a1, IO80211BSSBeacon *a2)
{
  v4 = AppleBCMWLANCore::checkForOWESupport(*(*(a1 + 6) + 8));
  IO80211BssManager::setCurrentBSS(a1, a2, v4);
  v20 = 0;
  v19 = 0;
  **(a1 + 6) = a2;
  if (a2)
  {
    if (!IO80211BssManager::getCurrentChannel())
    {
      AppleBCMWLANCore::postMessageInfra(*(*(a1 + 6) + 8), 0x52u, &v19, 0xCuLL);
    }

    v5 = &kSliceChannelSwitchDwellHistConfig;
    if ((AppleBCMWLANBssManager::setCurrentBSS(AppleBCMWLANBSSBeacon *)::logCC & 1) == 0)
    {
      v6 = (*(*a2 + 264))(a2);
      ChanSpecHandler = AppleBCMWLANCore::getChanSpecHandler(*(*(a1 + 6) + 8));
      v8 = v6;
      BCMChannelSpec = AppleBCMWLANChanSpec::getBCMChannelSpec(ChanSpecHandler, v6);
      if (v6 >= 0xC000u)
      {
        v10 = BCMChannelSpec;
        v11 = AppleBCMWLANCore::getChanSpecHandler(*(*(a1 + 6) + 8));
        if ((AppleBCMWLANChanSpec::isValid5GChanSpec(v11, v10) & 1) == 0)
        {
          v12 = *(a1 + 6);
          if (*(v12 + 16))
          {
            shouldLog = CCLogStream::shouldLog();
            v12 = *(a1 + 6);
            if (shouldLog)
            {
              v16 = *(v12 + 16);
              PrimaryChannel = ChanSpecGetPrimaryChannel();
              v17 = v16;
              v5 = &kSliceChannelSwitchDwellHistConfig;
              CCLogStream::logAlert(v17, "[dk] %s@%d:invalid 5G channel spec %x appleChanSpec (%d, %d, %d, %d)\n", "setCurrentBSS", 121, v10, PrimaryChannel, (v8 >> 8) & 7, (v8 >> 11) & 7, 3);
              v12 = *(a1 + 6);
            }
          }

          if (AppleBCMWLANCore::getFaultReporter(*(v12 + 8)))
          {
            FaultReporter = AppleBCMWLANCore::getFaultReporter(*(*(a1 + 6) + 8));
            CCFaultReporter::reportFault(FaultReporter, 4u, "/Library/Caches/com.apple.xbs/Sources/AppleBCMWLANV3_driverkit/AppleBCMWLANBssManager.cpp", 0x7Bu, "setCurrentBSS", 0, -469793469, 0);
          }

          v5[984] = 1;
        }
      }
    }
  }

  else
  {
    AppleBCMWLANCore::postMessageInfra(*(*(a1 + 6) + 8), 0x52u, &v19, 0xCuLL);
  }

  return AppleBCMWLANCore::setConcurrencyState(*(*(a1 + 6) + 8), 1, a2 != 0);
}

uint64_t AppleBCMWLANIOReportingCore::getIndexForProcessName(AppleBCMWLANIOReportingCore *this, OSString *a2)
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x2000000000;
  v16 = 0;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2000000000;
  v12 = 0;
  v3 = *(*(this + 7) + 24);
  v8[0] = 0;
  v8[1] = v8;
  v8[2] = 0x2000000000;
  v8[3] = 0;
  if (a2 && v3)
  {
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 1107296256;
    v7[2] = ___ZN27AppleBCMWLANIOReportingCore22getIndexForProcessNameEP8OSString_block_invoke;
    v7[3] = &__block_descriptor_tmp_0;
    v7[4] = v8;
    v7[5] = &v9;
    v7[6] = &v13;
    v7[7] = a2;
    (*(*v3 + 56))(v3, v7);
    if ((v10[3] & 1) == 0)
    {
      if (AppleBCMWLANIOReporting::getLogger(this))
      {
        AppleBCMWLANIOReporting::getLogger(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANIOReportingCore::getIndexForProcessName(this);
        }
      }

      if (!OSArray::setObject(*(*(this + 7) + 24), a2))
      {
        AppleBCMWLANIOReportingCore::getIndexForProcessName(this);
      }
    }
  }

  else if (AppleBCMWLANIOReporting::getLogger(this))
  {
    AppleBCMWLANIOReporting::getLogger(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANIOReportingCore::getIndexForProcessName(this);
    }
  }

  v5 = v14[3];
  _Block_object_dispose(v8, 8);
  _Block_object_dispose(&v9, 8);
  _Block_object_dispose(&v13, 8);
  return v5;
}

uint64_t ___ZN27AppleBCMWLANIOReportingCore22getIndexForProcessNameEP8OSString_block_invoke(uint64_t a1, OSMetaClassBase *anObject)
{
  *(*(*(a1 + 32) + 8) + 24) = OSMetaClassBase::safeMetaCast(anObject, gOSStringMetaClass);
  v3 = *(*(*(a1 + 32) + 8) + 24);
  if (!v3)
  {
    return 0;
  }

  if (OSString::isEqualTo(*(a1 + 56), v3))
  {
    result = 0;
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  else
  {
    ++*(*(*(a1 + 48) + 8) + 24);
    return 1;
  }

  return result;
}

void __copy_helper_block_8_32r40r48r(uint64_t a1, uint64_t a2)
{
  _Block_object_assign((a1 + 32), *(a2 + 32), 8);
  _Block_object_assign((a1 + 40), *(a2 + 40), 8);
  v4 = *(a2 + 48);

  _Block_object_assign((a1 + 48), v4, 8);
}

void __destroy_helper_block_8_32r40r48r(uint64_t a1)
{
  _Block_object_dispose(*(a1 + 48), 8);
  _Block_object_dispose(*(a1 + 40), 8);
  v2 = *(a1 + 32);

  _Block_object_dispose(v2, 8);
}

uint64_t AppleBCMWLANIOReportingCore::accountingForUpdateReport(AppleBCMWLANIOReportingCore *this, int a2, unint64_t a3)
{
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&v26[15] = v5;
  v25[13] = v5;
  *v26 = v5;
  v25[11] = v5;
  v25[12] = v5;
  v25[9] = v5;
  v25[10] = v5;
  v25[7] = v5;
  v25[8] = v5;
  v25[5] = v5;
  v25[6] = v5;
  v25[3] = v5;
  v25[4] = v5;
  v25[1] = v5;
  v25[2] = v5;
  v25[0] = v5;
  if (IO80211ThreadProcessInfo::getProcessName(v25, 0xFF, a3))
  {
    IO80211Controller::getProcessName(*(*(this + 7) + 208), v25, 0xFFuLL);
  }

  v6 = OSString::withCString(v25);
  if (v6)
  {
    v7 = v6;
    v8 = *(*(this + 7) + 8);
    IndexForProcessName = AppleBCMWLANIOReportingCore::getIndexForProcessName(this, v6);
    if (IOSimpleReporter::incrementValue(v8, IndexForProcessName + 0x5A5A632020202020, 1))
    {
      v10 = *(*(this + 7) + 8);
      v11 = AppleBCMWLANIOReportingCore::getIndexForProcessName(this, v7);
      CStringNoCopy = OSString::getCStringNoCopy(v7);
      IOReporter::addChannel(v10, v11 + 0x5A5A632020202020, CStringNoCopy);
      v13 = *(*(this + 7) + 8);
      v14 = AppleBCMWLANIOReportingCore::getIndexForProcessName(this, v7);
      if (IOSimpleReporter::incrementValue(v13, v14 + 0x5A5A632020202020, 1))
      {
        if (AppleBCMWLANIOReporting::getLogger(this))
        {
          AppleBCMWLANIOReporting::getLogger(this);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANIOReportingCore::accountingForUpdateReport(this);
          }
        }
      }

      if (a2)
      {
        v15 = 0x5A5A662020202020;
      }

      else
      {
        v15 = 0x5A5A732020202020;
      }

      IOSimpleReporter::incrementValue(*(*(this + 7) + 8), v15, 1);
      v16 = AppleBCMWLANIOReporting::getRemoveReporterCallback(this);
      Target = AppleBCMWLANIOReporting::getTarget(this);
      CurrentBSS = AppleBCMWLANBssManager::getCurrentBSS(this);
      v16(Target, CurrentBSS, 0, "IOReporter API", "UpdateReport Calls");
      AddReporterCallback = AppleBCMWLANIOReporting::getAddReporterCallback(this);
      v20 = AppleBCMWLANIOReporting::getTarget(this);
      v21 = AppleBCMWLANBssManager::getCurrentBSS(this);
      AddReporterCallback(v20, v21, *(*(this + 7) + 8), "IOReporter API", "UpdateReport Calls");
    }

    else
    {
      if (a2)
      {
        v23 = 0x5A5A662020202020;
      }

      else
      {
        v23 = 0x5A5A732020202020;
      }

      IOSimpleReporter::incrementValue(*(*(this + 7) + 8), v23, 1);
    }

    (v7->release)(v7);
    return 0;
  }

  else
  {
    v22 = 3758097084;
    if (AppleBCMWLANIOReporting::getLogger(this))
    {
      AppleBCMWLANIOReporting::getLogger(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANIOReportingCore::accountingForUpdateReport(this);
      }
    }
  }

  return v22;
}

uint64_t AppleBCMWLANIOReportingCore::accountingForConfigureReport(AppleBCMWLANIOReportingCore *this, int a2, unint64_t a3)
{
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&v26[15] = v5;
  v25[13] = v5;
  *v26 = v5;
  v25[11] = v5;
  v25[12] = v5;
  v25[9] = v5;
  v25[10] = v5;
  v25[7] = v5;
  v25[8] = v5;
  v25[5] = v5;
  v25[6] = v5;
  v25[3] = v5;
  v25[4] = v5;
  v25[1] = v5;
  v25[2] = v5;
  v25[0] = v5;
  if (IO80211ThreadProcessInfo::getProcessName(v25, 0xFF, a3))
  {
    IO80211Controller::getProcessName(*(*(this + 7) + 208), v25, 0xFFuLL);
  }

  v6 = OSString::withCString(v25);
  if (v6)
  {
    v7 = v6;
    v8 = **(this + 7);
    IndexForProcessName = AppleBCMWLANIOReportingCore::getIndexForProcessName(this, v6);
    if (IOSimpleReporter::incrementValue(v8, IndexForProcessName + 0x5A46632020202020, 1))
    {
      v10 = **(this + 7);
      v11 = AppleBCMWLANIOReportingCore::getIndexForProcessName(this, v7);
      CStringNoCopy = OSString::getCStringNoCopy(v7);
      IOReporter::addChannel(v10, v11 + 0x5A46632020202020, CStringNoCopy);
      v13 = **(this + 7);
      v14 = AppleBCMWLANIOReportingCore::getIndexForProcessName(this, v7);
      if (IOSimpleReporter::incrementValue(v13, v14 + 0x5A46632020202020, 1))
      {
        if (AppleBCMWLANIOReporting::getLogger(this))
        {
          AppleBCMWLANIOReporting::getLogger(this);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANIOReportingCore::accountingForConfigureReport(this);
          }
        }
      }

      if (a2)
      {
        v15 = 0x5A46662020202020;
      }

      else
      {
        v15 = 0x5A46732020202020;
      }

      IOSimpleReporter::incrementValue(**(this + 7), v15, 1);
      v16 = AppleBCMWLANIOReporting::getRemoveReporterCallback(this);
      Target = AppleBCMWLANIOReporting::getTarget(this);
      CurrentBSS = AppleBCMWLANBssManager::getCurrentBSS(this);
      v16(Target, CurrentBSS, 0, "IOReporter API", "ConfigureReport Calls");
      AddReporterCallback = AppleBCMWLANIOReporting::getAddReporterCallback(this);
      v20 = AppleBCMWLANIOReporting::getTarget(this);
      v21 = AppleBCMWLANBssManager::getCurrentBSS(this);
      AddReporterCallback(v20, v21, **(this + 7), "IOReporter API", "ConfigureReport Calls");
    }

    else
    {
      if (a2)
      {
        v23 = 0x5A46662020202020;
      }

      else
      {
        v23 = 0x5A46732020202020;
      }

      IOSimpleReporter::incrementValue(**(this + 7), v23, 1);
    }

    (v7->release)(v7);
    return 0;
  }

  else
  {
    v22 = 3758097084;
    if (AppleBCMWLANIOReporting::getLogger(this))
    {
      AppleBCMWLANIOReporting::getLogger(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANIOReportingCore::accountingForConfigureReport(this);
      }
    }
  }

  return v22;
}

uint64_t AppleBCMWLANIOReportingCore::incrementStaleConfigurationDetected(AppleBCMWLANIOReportingCore *this, uint64_t a2, unint64_t a3)
{
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&v23[15] = v4;
  v22[13] = v4;
  *v23 = v4;
  v22[11] = v4;
  v22[12] = v4;
  v22[9] = v4;
  v22[10] = v4;
  v22[7] = v4;
  v22[8] = v4;
  v22[5] = v4;
  v22[6] = v4;
  v22[3] = v4;
  v22[4] = v4;
  v22[1] = v4;
  v22[2] = v4;
  v22[0] = v4;
  if (IO80211ThreadProcessInfo::getProcessName(v22, 0xFF, a3))
  {
    IO80211Controller::getProcessName(*(*(this + 7) + 208), v22, 0xFFuLL);
  }

  v5 = OSString::withCString(v22);
  Logger = AppleBCMWLANIOReporting::getLogger(this);
  if (v5)
  {
    if (Logger)
    {
      AppleBCMWLANIOReporting::getLogger(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANIOReportingCore::incrementStaleConfigurationDetected(this);
      }
    }

    v7 = *(*(this + 7) + 16);
    IndexForProcessName = AppleBCMWLANIOReportingCore::getIndexForProcessName(this, v5);
    if (IOSimpleReporter::incrementValue(v7, IndexForProcessName + 0x5A53732020202020, 1))
    {
      v9 = *(*(this + 7) + 16);
      v10 = AppleBCMWLANIOReportingCore::getIndexForProcessName(this, v5);
      CStringNoCopy = OSString::getCStringNoCopy(v5);
      IOReporter::addChannel(v9, v10 + 0x5A53732020202020, CStringNoCopy);
      v12 = *(*(this + 7) + 16);
      v13 = AppleBCMWLANIOReportingCore::getIndexForProcessName(this, v5);
      if (IOSimpleReporter::incrementValue(v12, v13 + 0x5A53732020202020, 1))
      {
        if (AppleBCMWLANIOReporting::getLogger(this))
        {
          AppleBCMWLANIOReporting::getLogger(this);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANIOReportingCore::incrementStaleConfigurationDetected(this);
          }
        }
      }

      v14 = AppleBCMWLANIOReporting::getRemoveReporterCallback(this);
      Target = AppleBCMWLANIOReporting::getTarget(this);
      CurrentBSS = AppleBCMWLANBssManager::getCurrentBSS(this);
      v14(Target, CurrentBSS, 0, "IOReporter API", "Stale Configuration Detected");
      AddReporterCallback = AppleBCMWLANIOReporting::getAddReporterCallback(this);
      v18 = AppleBCMWLANIOReporting::getTarget(this);
      v19 = AppleBCMWLANBssManager::getCurrentBSS(this);
      AddReporterCallback(v18, v19, *(*(this + 7) + 16), "IOReporter API", "Stale Configuration Detected");
    }

    (v5->release)(v5);
    return 0;
  }

  else
  {
    v20 = 3758097084;
    if (Logger)
    {
      AppleBCMWLANIOReporting::getLogger(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANIOReportingCore::incrementStaleConfigurationDetected(this);
      }
    }
  }

  return v20;
}

uint64_t AppleBCMWLANIOReportingCore::getSystemPowerStateCheckPoint(AppleBCMWLANIOReportingCore *this, int a2, int a3, int a4)
{
  if (a2 > 1)
  {
    if (a3)
    {
      v7 = 10;
    }

    else
    {
      v7 = 11;
    }

    if (a3)
    {
      v11 = 8;
    }

    else
    {
      v11 = 9;
    }

    if (a2 == 3)
    {
      v9 = v11;
    }

    else
    {
      v9 = 16;
    }

    v10 = a2 == 2;
  }

  else
  {
    if (a3)
    {
      v4 = 2;
    }

    else
    {
      v4 = 3;
    }

    if (a3)
    {
      v5 = 4;
    }

    else
    {
      v5 = 5;
    }

    if (a4 != 3)
    {
      v5 = 16;
    }

    if (a4 != 2)
    {
      v4 = v5;
    }

    if (a3)
    {
      v6 = 6;
    }

    else
    {
      v6 = 7;
    }

    if (a4 == 1)
    {
      v7 = v6;
    }

    else
    {
      v7 = 16;
    }

    if (!a4)
    {
      v7 = a3 ^ 1;
    }

    if (a4 > 1)
    {
      v7 = v4;
    }

    if (a3)
    {
      v8 = 12;
    }

    else
    {
      v8 = 13;
    }

    if (a2 == 1)
    {
      v9 = v8;
    }

    else
    {
      v9 = 16;
    }

    v10 = a2 == 0;
  }

  if (v10)
  {
    return v7;
  }

  else
  {
    return v9;
  }
}

AppleBCMWLANIOReportingCore *AppleBCMWLANIOReportingCore::reportDeltaPowerTimeIfNeeded(AppleBCMWLANIOReportingCore *this, int a2, int a3)
{
  if (!a2 && a3)
  {
    v3 = *(this + 7);
    v4 = (v3 + 216);
    v5 = (v3 + 240);
    v6 = 14;
    return AppleBCMWLANIOReportingCore::sendPowerStateTimeToCoreAnalytics(this, v6, (*v4 - *v5) / 0xF4240uLL);
  }

  if (a2 == 1 && (a3 & 1) == 0)
  {
    v7 = *(this + 7);
    v5 = (v7 + 224);
    v4 = (v7 + 232);
    v6 = 15;
    return AppleBCMWLANIOReportingCore::sendPowerStateTimeToCoreAnalytics(this, v6, (*v4 - *v5) / 0xF4240uLL);
  }

  return this;
}

uint64_t AppleBCMWLANIOReportingCore::destroyReporters(AppleBCMWLANIOReportingCore *this)
{
  v2 = AppleBCMWLANIOReporting::getRemoveReporterCallback(this);
  Target = AppleBCMWLANIOReporting::getTarget(this);
  CurrentBSS = AppleBCMWLANBssManager::getCurrentBSS(this);
  v2(Target, CurrentBSS, 0, "Event Log", "Tag counters");
  v5 = AppleBCMWLANIOReporting::getRemoveReporterCallback(this);
  v6 = AppleBCMWLANIOReporting::getTarget(this);
  v7 = AppleBCMWLANBssManager::getCurrentBSS(this);
  v5(v6, v7, *(*(this + 7) + 96), "Chip Memory", "Chip Memory Usage");
  v12 = AppleBCMWLANIOReporting::getRemoveReporterCallback(this);
  v8 = AppleBCMWLANIOReporting::getTarget(this);
  v9 = AppleBCMWLANBssManager::getCurrentBSS(this);
  v10 = *(*(this + 7) + 32);

  return v12(v8, v9, v10, "WIO", "IPC Counters");
}

uint64_t AppleBCMWLANIOReportingCore::init(void *a1, uint64_t a2)
{
  v4 = *(a2 + 48);
  v7[2] = *(a2 + 32);
  v7[3] = v4;
  v8 = *(a2 + 64);
  v5 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v5;
  result = AppleBCMWLANIOReporting::init(a1, v7);
  if (result)
  {
    result = IOMallocZeroTyped();
    a1[7] = result;
    if (result)
    {
      *(a1[7] + 208) = OSMetaClassBase::safeMetaCast(*(a2 + 8), gAppleBCMWLANCoreMetaClass);
      return (*(*a1 + 64))(a1);
    }
  }

  return result;
}

uint64_t AppleBCMWLANIOReportingCore::with(uint64_t a1)
{
  *&v6[0] = 0xAAAAAAAAAAAAAAAALL;
  if (OSObjectAllocate(gAppleBCMWLANIOReportingCoreMetaClass, v6))
  {
    return 0;
  }

  v2 = *&v6[0];
  if (*&v6[0])
  {
    v4 = *(a1 + 16);
    v6[0] = *a1;
    v6[1] = v4;
    v7 = *(a1 + 64);
    v5 = *(a1 + 48);
    v6[2] = *(a1 + 32);
    v6[3] = v5;
    if (((*(*v2 + 56))(v2, v6) & 1) == 0)
    {
      (*(*v2 + 16))(v2);
      return 0;
    }
  }

  return v2;
}

void AppleBCMWLANIOReportingCore::free(OSObject *this)
{
  if (this[1].meta)
  {
    (this->OSMetaClassBase::__vftable[1].Dispatch)(this);
    memset_s(this[1].meta, 0x118uLL, 0, 0x118uLL);
    meta = this[1].meta;
    if (meta)
    {
      IOFree(meta, 0x118uLL);
      this[1].meta = 0;
    }
  }

  AppleBCMWLANIOReporting::free(this);
}

uint64_t OUTLINED_FUNCTION_23(IOSimpleReporter *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{

  return IOSimpleReporter::with(a1, 0x8010, 0, a4);
}

uint64_t OUTLINED_FUNCTION_24()
{
  v4 = *(*(v2 + 56) + 208);

  return IOService::CoreAnalyticsSendEvent(v4, 0, v1, v0, 0);
}

uint64_t OUTLINED_FUNCTION_29(IOSimpleReporter *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{

  return IOSimpleReporter::with(a1, 0x8010, 0, a4);
}

uint64_t OUTLINED_FUNCTION_30(int a1, int a2, const char *a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char __str)
{

  return snprintf(&__str, 0x1EuLL, a3);
}

uint64_t OUTLINED_FUNCTION_31(IOSimpleReporter *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{

  return IOSimpleReporter::with(a1, 0x8010, 0, a4);
}

uint64_t OUTLINED_FUNCTION_43()
{

  return read_random();
}

uint64_t OUTLINED_FUNCTION_44()
{

  return AppleBCMWLANIOReporting::getTarget(v0);
}

uint64_t OUTLINED_FUNCTION_45()
{

  return AppleBCMWLANIOReporting::getAddReporterCallback(v0);
}

uint64_t OUTLINED_FUNCTION_46(IOSimpleReporter *a1)
{

  return IOSimpleReporter::incrementValue(a1, v1, 1);
}

uint64_t AppleBCMWLANIOReportingPerSlice::initRxErrorReporter(AppleBCMWLANBssManager *a1, uint64_t (*a2)(void))
{
  v4 = IOMallocZeroData();
  if (v4)
  {
    AppleBCMWLANIOReportingPerSlice::initRxErrorReporter(a1, a2, v4, &v7);
    return v7;
  }

  else
  {
    v5 = 3758097084;
    if (AppleBCMWLANIOReporting::getLogger(a1))
    {
      AppleBCMWLANIOReporting::getLogger(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANIOReportingPerSlice::initRxErrorReporter(a1);
      }
    }
  }

  return v5;
}

uint64_t AppleBCMWLANIOReportingPerSlice::initTxMngReporter(AppleBCMWLANBssManager *a1, uint64_t a2)
{
  v4 = 3758097084;
  v5 = IOMallocZeroData();
  if (v5)
  {
    v6 = v5;
    CurrentBSS = AppleBCMWLANBssManager::getCurrentBSS(a1);
    ReporterProvider = IO80211Controller::getReporterProvider(CurrentBSS);
    *(*(a1 + 7) + 8 * a2 + 440) = IOSimpleReporter::with(ReporterProvider, 0x8010, 0, v9);
    if (*(*(a1 + 7) + 8 * a2 + 440))
    {
      v10 = a2;
      Reporter = AppleBCMWLANIOReporting::getReporter(a1);
      OSSet::setObject(Reporter, *(*(a1 + 7) + 8 * a2 + 440));
      v12 = *(*(a1 + 7) + 8 * a2 + 440);
      (*(*v12 + 16))(v12);
      v13 = a2 << 56;
      v14 = &off_1003C5EF0;
      v15 = 11;
      do
      {
        IOReporter::addChannel(*(*(a1 + 7) + 8 * a2 + 440), *(v14 - 1) ^ v13, *v14);
        v14 += 2;
        --v15;
      }

      while (v15);
      snprintf(v6, 0x32uLL, "%s %d", "Slice Frames: slice ", a2);
      AddReporterCallback = AppleBCMWLANIOReporting::getAddReporterCallback(a1);
      Target = AppleBCMWLANIOReporting::getTarget(a1);
      v18 = AppleBCMWLANBssManager::getCurrentBSS(a1);
      v4 = AddReporterCallback(Target, v18, *(*(a1 + 7) + 8 * v10 + 440), v6, "Tx Management Frame Counters");
      if (!*(*(a1 + 7) + 8 * v10 + 168))
      {
        *(*(a1 + 7) + 8 * v10 + 168) = IOMallocZeroData();
        if (*(*(a1 + 7) + 8 * v10 + 168))
        {
          for (i = 0; i != 22; i += 2)
          {
            *(*(*(a1 + 7) + 8 * v10 + 168) + i * 8) = kSliceCountersTxMgmtReport[i] ^ v13;
          }

          *(*(*(a1 + 7) + 8 * v10 + 168) + 8) = 632;
          *(*(*(a1 + 7) + 8 * v10 + 168) + 24) = 656;
          *(*(*(a1 + 7) + 8 * v10 + 168) + 40) = 640;
          *(*(*(a1 + 7) + 8 * v10 + 168) + 56) = 664;
          *(*(*(a1 + 7) + 8 * v10 + 168) + 72) = 688;
          *(*(*(a1 + 7) + 8 * v10 + 168) + 88) = 696;
          *(*(*(a1 + 7) + 8 * v10 + 168) + 104) = 648;
          *(*(*(a1 + 7) + 8 * v10 + 168) + 120) = 672;
          *(*(*(a1 + 7) + 8 * v10 + 168) + 136) = 680;
          *(*(*(a1 + 7) + 8 * v10 + 168) + 152) = 704;
          *(*(*(a1 + 7) + 8 * v10 + 168) + 168) = 632;
        }

        else
        {
          AppleBCMWLANIOReportingPerSlice::initTxMngReporter(a1);
          v4 = v21;
        }
      }
    }

    IOFreeData();
  }

  else if (AppleBCMWLANIOReporting::getLogger(a1))
  {
    AppleBCMWLANIOReporting::getLogger(a1);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANIOReportingPerSlice::initTxMngReporter(a1);
    }
  }

  return v4;
}

uint64_t AppleBCMWLANIOReportingPerSlice::initRxMngReporter(AppleBCMWLANBssManager *a1, uint64_t a2)
{
  v4 = 3758097084;
  v5 = IOMallocZeroData();
  if (v5)
  {
    v6 = v5;
    CurrentBSS = AppleBCMWLANBssManager::getCurrentBSS(a1);
    ReporterProvider = IO80211Controller::getReporterProvider(CurrentBSS);
    *(*(a1 + 7) + 8 * a2 + 456) = IOSimpleReporter::with(ReporterProvider, 0x8010, 0, v9);
    if (*(*(a1 + 7) + 8 * a2 + 456))
    {
      v10 = a2;
      Reporter = AppleBCMWLANIOReporting::getReporter(a1);
      OSSet::setObject(Reporter, *(*(a1 + 7) + 8 * a2 + 456));
      v12 = *(*(a1 + 7) + 8 * a2 + 456);
      (*(*v12 + 16))(v12);
      v13 = a2 << 56;
      v14 = &off_1003C5FA0;
      v15 = 12;
      do
      {
        IOReporter::addChannel(*(*(a1 + 7) + 8 * a2 + 456), *(v14 - 1) ^ v13, *v14);
        v14 += 2;
        --v15;
      }

      while (v15);
      snprintf(v6, 0x32uLL, "%s %d", "Slice Frames: slice ", a2);
      AddReporterCallback = AppleBCMWLANIOReporting::getAddReporterCallback(a1);
      Target = AppleBCMWLANIOReporting::getTarget(a1);
      v18 = AppleBCMWLANBssManager::getCurrentBSS(a1);
      v4 = AddReporterCallback(Target, v18, *(*(a1 + 7) + 8 * v10 + 456), v6, "Rx Management Frame Counters");
      if (!*(*(a1 + 7) + 8 * v10 + 184))
      {
        *(*(a1 + 7) + 8 * v10 + 184) = IOMallocZeroData();
        if (*(*(a1 + 7) + 8 * v10 + 184))
        {
          for (i = 0; i != 24; i += 2)
          {
            *(*(*(a1 + 7) + 8 * v10 + 184) + i * 8) = kSliceCountersRxMgmtReport[i] ^ v13;
          }

          *(*(*(a1 + 7) + 8 * v10 + 184) + 8) = 636;
          *(*(*(a1 + 7) + 8 * v10 + 184) + 24) = 660;
          *(*(*(a1 + 7) + 8 * v10 + 184) + 40) = 644;
          *(*(*(a1 + 7) + 8 * v10 + 184) + 56) = 668;
          *(*(*(a1 + 7) + 8 * v10 + 184) + 72) = 692;
          *(*(*(a1 + 7) + 8 * v10 + 184) + 88) = 700;
          *(*(*(a1 + 7) + 8 * v10 + 184) + 104) = 652;
          *(*(*(a1 + 7) + 8 * v10 + 184) + 120) = 676;
          *(*(*(a1 + 7) + 8 * v10 + 184) + 136) = 684;
          *(*(*(a1 + 7) + 8 * v10 + 184) + 152) = 708;
          if (AppleBCMWLANCore::checkFor6GSupportCardCapability(*(*(a1 + 7) + 1504)))
          {
            *(*(*(a1 + 7) + 8 * v10 + 184) + 184) = 860;
          }
        }

        else
        {
          AppleBCMWLANIOReportingPerSlice::initRxMngReporter(a1);
          v4 = v21;
        }
      }
    }

    IOFreeData();
  }

  else if (AppleBCMWLANIOReporting::getLogger(a1))
  {
    AppleBCMWLANIOReporting::getLogger(a1);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANIOReportingPerSlice::initRxMngReporter(a1);
    }
  }

  return v4;
}

uint64_t AppleBCMWLANIOReportingPerSlice::initLTECoexReporter(AppleBCMWLANBssManager *a1, uint64_t a2)
{
  v4 = 3758097084;
  v5 = IOMallocZeroData();
  if (v5)
  {
    v6 = v5;
    if (a2 > 1)
    {
      goto LABEL_42;
    }

    v7 = *(a1 + 7);
    v8 = a2;
    if (*(v7 + 8 * a2 + 56))
    {
      v4 = 0;
    }

    else
    {
      CurrentBSS = AppleBCMWLANBssManager::getCurrentBSS(a1);
      ReporterProvider = IO80211Controller::getReporterProvider(CurrentBSS);
      *(*(a1 + 7) + 8 * a2 + 56) = IOSimpleReporter::with(ReporterProvider, 0x8010, 0, v11);
      if (!*(*(a1 + 7) + 8 * a2 + 56))
      {
        AppleBCMWLANIOReportingPerSlice::initLTECoexReporter(a1);
        goto LABEL_51;
      }

      Reporter = AppleBCMWLANIOReporting::getReporter(a1);
      OSSet::setObject(Reporter, *(*(a1 + 7) + 8 * a2 + 56));
      v13 = *(*(a1 + 7) + 8 * a2 + 56);
      (*(*v13 + 16))(v13);
      v14 = &off_1003C6060;
      v15 = 11;
      do
      {
        IOReporter::addChannel(*(*(a1 + 7) + 8 * a2 + 56), *(v14 - 1) | (a2 << 48), *v14);
        v14 += 2;
        --v15;
      }

      while (v15);
      snprintf(v6, 0x32uLL, "%s slice %d", "No LTE Frame Counters", a2);
      AddReporterCallback = AppleBCMWLANIOReporting::getAddReporterCallback(a1);
      Target = AppleBCMWLANIOReporting::getTarget(a1);
      v18 = AppleBCMWLANBssManager::getCurrentBSS(a1);
      v4 = AddReporterCallback(Target, v18, *(*(a1 + 7) + 8 * a2 + 56), "LTE Coex", v6);
      v7 = *(a1 + 7);
    }

    if (!*(v7 + 8 * a2 + 120))
    {
      *(*(a1 + 7) + 8 * a2 + 120) = IOMallocZeroData();
      if (!*(*(a1 + 7) + 8 * a2 + 120))
      {
        AppleBCMWLANIOReportingPerSlice::initLTECoexReporter(a1);
        goto LABEL_51;
      }

      for (i = 0; i != 22; i += 2)
      {
        *(*(*(a1 + 7) + 8 * a2 + 120) + i * 8) = kLTECoexFramesReport[i] | (a2 << 48);
      }

      *(*(*(a1 + 7) + 8 * a2 + 120) + 8) = 8;
      *(*(*(a1 + 7) + 8 * a2 + 120) + 24) = 12;
      *(*(*(a1 + 7) + 8 * a2 + 120) + 40) = 16;
      *(*(*(a1 + 7) + 8 * a2 + 120) + 56) = 20;
      *(*(*(a1 + 7) + 8 * a2 + 120) + 72) = 24;
      *(*(*(a1 + 7) + 8 * a2 + 120) + 88) = 28;
      *(*(*(a1 + 7) + 8 * a2 + 120) + 104) = 32;
      *(*(*(a1 + 7) + 8 * a2 + 120) + 120) = 36;
      *(*(*(a1 + 7) + 8 * a2 + 120) + 136) = 40;
      *(*(*(a1 + 7) + 8 * a2 + 120) + 152) = 44;
      *(*(*(a1 + 7) + 8 * a2 + 120) + 168) = 48;
      v7 = *(a1 + 7);
    }

    if (!*(v7 + 8 * a2 + 72))
    {
      v20 = AppleBCMWLANBssManager::getCurrentBSS(a1);
      v21 = IO80211Controller::getReporterProvider(v20);
      *(*(a1 + 7) + 8 * a2 + 72) = IOSimpleReporter::with(v21, 0x8010, 0, v22);
      if (!*(*(a1 + 7) + 8 * a2 + 72))
      {
        AppleBCMWLANIOReportingPerSlice::initLTECoexReporter(a1);
        goto LABEL_51;
      }

      v23 = AppleBCMWLANIOReporting::getReporter(a1);
      OSSet::setObject(v23, *(*(a1 + 7) + 8 * a2 + 72));
      v24 = *(*(a1 + 7) + 8 * a2 + 72);
      (*(*v24 + 16))(v24);
      v25 = &off_1003C6060;
      v26 = 11;
      do
      {
        IOReporter::addChannel(*(*(a1 + 7) + 8 * a2 + 72), *(v25 - 1) | (a2 << 48) | 0x10000000000, *v25);
        v25 += 2;
        --v26;
      }

      while (v26);
      snprintf(v6, 0x32uLL, "%s slice %d", "Light LTE Frame Counters", a2);
      v27 = AppleBCMWLANIOReporting::getAddReporterCallback(a1);
      v28 = AppleBCMWLANIOReporting::getTarget(a1);
      v29 = AppleBCMWLANBssManager::getCurrentBSS(a1);
      v4 = v27(v28, v29, *(*(a1 + 7) + 8 * a2 + 72), "LTE Coex", v6);
      v7 = *(a1 + 7);
    }

    if (!*(v7 + 8 * a2 + 136))
    {
      *(*(a1 + 7) + 8 * a2 + 136) = IOMallocZeroData();
      if (!*(*(a1 + 7) + 8 * a2 + 136))
      {
        AppleBCMWLANIOReportingPerSlice::initLTECoexReporter(a1);
        goto LABEL_51;
      }

      for (j = 0; j != 22; j += 2)
      {
        *(*(*(a1 + 7) + 8 * a2 + 136) + j * 8) = kLTECoexFramesReport[j] | (a2 << 48);
      }

      *(*(*(a1 + 7) + 8 * a2 + 136) + 8) = 52;
      *(*(*(a1 + 7) + 8 * a2 + 136) + 24) = 60;
      *(*(*(a1 + 7) + 8 * a2 + 136) + 40) = 64;
      *(*(*(a1 + 7) + 8 * a2 + 136) + 56) = 56;
      *(*(*(a1 + 7) + 8 * a2 + 136) + 72) = 68;
      *(*(*(a1 + 7) + 8 * a2 + 136) + 88) = 72;
      *(*(*(a1 + 7) + 8 * a2 + 136) + 104) = 76;
      *(*(*(a1 + 7) + 8 * a2 + 136) + 120) = 80;
      *(*(*(a1 + 7) + 8 * a2 + 136) + 136) = 84;
      *(*(*(a1 + 7) + 8 * a2 + 136) + 152) = 88;
      *(*(*(a1 + 7) + 8 * a2 + 136) + 168) = 92;
      v7 = *(a1 + 7);
    }

    if (!*(v7 + 8 * a2 + 88))
    {
      v31 = AppleBCMWLANBssManager::getCurrentBSS(a1);
      v32 = IO80211Controller::getReporterProvider(v31);
      *(*(a1 + 7) + 8 * a2 + 88) = IOSimpleReporter::with(v32, 0x8010, 0, v33);
      if (!*(*(a1 + 7) + 8 * a2 + 88))
      {
        AppleBCMWLANIOReportingPerSlice::initLTECoexReporter(a1);
        goto LABEL_51;
      }

      v34 = AppleBCMWLANIOReporting::getReporter(a1);
      OSSet::setObject(v34, *(*(a1 + 7) + 8 * a2 + 88));
      v35 = *(*(a1 + 7) + 8 * a2 + 88);
      (*(*v35 + 16))(v35);
      v36 = &off_1003C6060;
      v37 = 11;
      do
      {
        IOReporter::addChannel(*(*(a1 + 7) + 8 * a2 + 88), *(v36 - 1) | (a2 << 48) | 0x20000000000, *v36);
        v36 += 2;
        --v37;
      }

      while (v37);
      snprintf(v6, 0x32uLL, "%s slice %d", "Heavy LTE Frame Counters", a2);
      v38 = AppleBCMWLANIOReporting::getAddReporterCallback(a1);
      v39 = AppleBCMWLANIOReporting::getTarget(a1);
      v40 = AppleBCMWLANBssManager::getCurrentBSS(a1);
      v4 = v38(v39, v40, *(*(a1 + 7) + 8 * a2 + 88), "LTE Coex", v6);
      v7 = *(a1 + 7);
    }

    if (*(v7 + 8 * a2 + 152))
    {
      goto LABEL_37;
    }

    *(*(a1 + 7) + 8 * a2 + 152) = IOMallocZeroData();
    if (*(*(a1 + 7) + 8 * a2 + 152))
    {
      for (k = 0; k != 22; k += 2)
      {
        *(*(*(a1 + 7) + 8 * a2 + 152) + k * 8) = kLTECoexFramesReport[k] | (a2 << 48) | 0x20000000000;
      }

      *(*(*(a1 + 7) + 8 * a2 + 152) + 8) = 96;
      *(*(*(a1 + 7) + 8 * a2 + 152) + 24) = 104;
      *(*(*(a1 + 7) + 8 * a2 + 152) + 40) = 108;
      *(*(*(a1 + 7) + 8 * a2 + 152) + 56) = 100;
      *(*(*(a1 + 7) + 8 * a2 + 152) + 72) = 112;
      *(*(*(a1 + 7) + 8 * a2 + 152) + 88) = 116;
      *(*(*(a1 + 7) + 8 * a2 + 152) + 104) = 120;
      *(*(*(a1 + 7) + 8 * a2 + 152) + 120) = 124;
      *(*(*(a1 + 7) + 8 * a2 + 152) + 136) = 128;
      *(*(*(a1 + 7) + 8 * a2 + 152) + 152) = 132;
      *(*(*(a1 + 7) + 8 * a2 + 152) + 168) = 136;
      v7 = *(a1 + 7);
LABEL_37:
      if (!*(v7 + 8 * a2 + 104))
      {
        v42 = AppleBCMWLANBssManager::getCurrentBSS(a1);
        v43 = IO80211Controller::getReporterProvider(v42);
        *(*(a1 + 7) + 8 * a2 + 104) = IOSimpleReporter::with(v43, 0x8010, 0, v44);
        if (*(*(a1 + 7) + 8 * a2 + 104))
        {
          v45 = AppleBCMWLANIOReporting::getReporter(a1);
          OSSet::setObject(v45, *(*(a1 + 7) + 8 * a2 + 104));
          v46 = *(*(a1 + 7) + 8 * a2 + 104);
          (*(*v46 + 16))(v46);
          v47 = &off_1003C6110;
          v48 = 5;
          do
          {
            IOReporter::addChannel(*(*(a1 + 7) + 8 * a2 + 104), *(v47 - 1) ^ (a2 << 56), *v47);
            v47 += 2;
            --v48;
          }

          while (v48);
          snprintf(v6, 0x32uLL, "%s slice %d", "WLAN Specific Counters", a2);
          v49 = AppleBCMWLANIOReporting::getAddReporterCallback(a1);
          v50 = AppleBCMWLANIOReporting::getTarget(a1);
          v51 = AppleBCMWLANBssManager::getCurrentBSS(a1);
          v4 = v49(v50, v51, *(*(a1 + 7) + 8 * v8 + 104), "LTE Coex", v6);
          goto LABEL_42;
        }

        AppleBCMWLANIOReportingPerSlice::initLTECoexReporter(a1);
        goto LABEL_51;
      }

LABEL_42:
      IOFreeData();
      return v4;
    }

    AppleBCMWLANIOReportingPerSlice::initLTECoexReporter(a1);
LABEL_51:
    v4 = v53;
    goto LABEL_42;
  }

  if (AppleBCMWLANIOReporting::getLogger(a1))
  {
    AppleBCMWLANIOReporting::getLogger(a1);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANIOReportingPerSlice::initLTECoexReporter(a1);
    }
  }

  return v4;
}

uint64_t AppleBCMWLANIOReportingPerSlice::reportUcodeCntPerSlice(AppleBCMWLANIOReporting *a1, OSData *a2, uint64_t a3, int a4, uint64_t a5)
{
  inited = 0;
  if (a3 >= 2)
  {
    AppleBCMWLANIOReportingPerSlice::reportUcodeCntPerSlice(a1);
    return inited;
  }

  v7 = *(a1 + 7);
  if (!v7)
  {
    AppleBCMWLANIOReportingPerSlice::reportUcodeCntPerSlice();
    return inited;
  }

  if ((*(v7 + a3 + 41) & 1) == 0)
  {
    inited = AppleBCMWLANIOReportingPerSlice::initRxErrorReporter(a1, a3);
    if (inited)
    {
      if (AppleBCMWLANIOReportingPerSlice::reportUcodeCntPerSlice(a1))
      {
        return inited;
      }

      goto LABEL_55;
    }

    *(*(a1 + 7) + a3 + 41) = 1;
  }

  if (a4)
  {
    v11 = 0;
    if (a4 == 1)
    {
      v56 = 1;
      v55 = 56;
      v54 = 0x4800000044;
      start = 0x400000003CLL;
      v12 = 52;
      v13 = 48;
    }

    else
    {
      v56 = 0;
      if (a4 != 2)
      {
        goto LABEL_13;
      }

      v56 = 0;
      v55 = 0x10000020CLL;
      v54 = 0x400000108;
      start = 0x10400000210;
      v12 = 272;
      v13 = 268;
    }
  }

  else
  {
    v56 = 0;
    v55 = 80;
    v54 = 0x600000005CLL;
    start = 0x5800000054;
    v12 = 76;
    v13 = 72;
  }

  v14 = *(*(a1 + 7) + 8 * a3 + 376);
  CounterValueSafe = AppleBCMWLANUtil::getCounterValueSafe(&inited, 4uLL, a2, v13);
  IOSimpleReporter::setValue(v14, (a3 << 56) ^ 0x536C52784572544CLL, CounterValueSafe);
  v16 = *(*(a1 + 7) + 8 * a3 + 376);
  v17 = AppleBCMWLANUtil::getCounterValueSafe(&inited, 4uLL, a2, v12);
  IOSimpleReporter::setValue(v16, (a3 << 56) ^ 0x536C527845725453, v17);
  v18 = *(*(a1 + 7) + 8 * a3 + 376);
  v19 = AppleBCMWLANUtil::getCounterValueSafe(&inited, 4uLL, a2, start);
  IOSimpleReporter::setValue(v18, (a3 << 56) ^ 0x536C527845724653, v19);
  v20 = *(*(a1 + 7) + 8 * a3 + 376);
  v21 = AppleBCMWLANUtil::getCounterValueSafe(&inited, 4uLL, a2, HIDWORD(start));
  IOSimpleReporter::setValue(v20, (a3 << 56) ^ 0x536C527845725050, v21);
  v22 = *(*(a1 + 7) + 8 * a3 + 376);
  v23 = AppleBCMWLANUtil::getCounterValueSafe(&inited, 4uLL, a2, v54);
  IOSimpleReporter::setValue(v22, (a3 << 56) ^ 0x536C527845724343, v23);
  v24 = *(*(a1 + 7) + 8 * a3 + 376);
  v25 = AppleBCMWLANUtil::getCounterValueSafe(&inited, 4uLL, a2, HIDWORD(v54));
  IOSimpleReporter::setValue(v24, (a3 << 56) ^ 0x536C527845724750, v25);
  v26 = *(*(a1 + 7) + 8 * a3 + 376);
  v27 = AppleBCMWLANUtil::getCounterValueSafe(&inited, 4uLL, a2, v55);
  IOSimpleReporter::setValue(v26, (a3 << 56) ^ 0x536C527845614E79, v27);
  v11 = HIDWORD(v55);
LABEL_13:
  v28 = *(a1 + 7);
  if ((*(v28 + a3 + 43) & 1) == 0)
  {
    inited = AppleBCMWLANIOReportingPerSlice::initTxMngReporter(a1, a3);
    if (inited)
    {
      AppleBCMWLANIOReportingPerSlice::reportUcodeCntPerSlice(a1);
      goto LABEL_55;
    }

    *(*(a1 + 7) + a3 + 43) = 1;
    v28 = *(a1 + 7);
  }

  if (!a4)
  {
    v29 = *(v28 + 8 * a3 + 440);
    v30 = AppleBCMWLANUtil::getCounterValueSafe(&inited, 4uLL, a2, 0x14uLL);
    IOSimpleReporter::setValue(v29, (a3 << 56) ^ 0x536C547842656163, v30);
    v28 = *(a1 + 7);
  }

  if (v56)
  {
    v31 = *(v28 + 8 * a3 + 440);
    v32 = AppleBCMWLANUtil::getCounterValueSafe(&inited, 4uLL, a2, 0x14uLL);
    IOSimpleReporter::setValue(v31, (a3 << 56) ^ 0x536C547842656163, v32);
    v28 = *(a1 + 7);
  }

  if (a4 == 3)
  {
    v33 = *(v28 + 8 * a3 + 440);
    v34 = AppleBCMWLANUtil::getCounterValueSafe(&inited, 4uLL, a2, 0x20uLL);
    IOSimpleReporter::setValue(v33, (a3 << 56) ^ 0x536C547842656163, v34);
    v28 = *(a1 + 7);
  }

  if ((*(v28 + a3 + 45) & 1) == 0)
  {
    inited = AppleBCMWLANIOReportingPerSlice::initRxMngReporter(a1, a3);
    if (!inited)
    {
      *(*(a1 + 7) + a3 + 45) = 1;
      goto LABEL_25;
    }

    AppleBCMWLANIOReportingPerSlice::reportUcodeCntPerSlice(a1);
LABEL_55:
    if (!inited)
    {
      return -536870212;
    }

    return inited;
  }

LABEL_25:
  if (!a4)
  {
    v35 = *(*(a1 + 7) + 8 * a3 + 456);
    v36 = AppleBCMWLANUtil::getCounterValueSafe(&inited, 4uLL, a2, 0x9CuLL);
    IOSimpleReporter::setValue(v35, (a3 << 56) ^ 0x536C527842656163, v36);
  }

  if (!v56)
  {
    if (!v11)
    {
      goto LABEL_29;
    }

LABEL_32:
    v39 = *(*(a1 + 7) + 8 * a3 + 456);
    v40 = AppleBCMWLANUtil::getCounterValueSafe(&inited, 4uLL, a2, 0x40uLL);
    IOSimpleReporter::setValue(v39, (a3 << 56) ^ 0x536C527842656163, v40);
    if (!a5)
    {
      return inited;
    }

    goto LABEL_33;
  }

  v37 = *(*(a1 + 7) + 8 * a3 + 456);
  v38 = AppleBCMWLANUtil::getCounterValueSafe(&inited, 4uLL, a2, 0x84uLL);
  IOSimpleReporter::setValue(v37, (a3 << 56) ^ 0x536C527842656163, v38);
  if (v11)
  {
    goto LABEL_32;
  }

LABEL_29:
  if (!a5)
  {
    return inited;
  }

LABEL_33:
  if (!a4)
  {
    v46 = AppleBCMWLANUtil::getCounterValueSafe(&inited, 4uLL, a2, 0x60uLL);
    v47 = AppleBCMWLANUtil::getCounterValueSafe(&inited, 4uLL, a2, 0x58uLL);
    *(a5 + 1520) = AppleBCMWLANUtil::getCounterValueSafe(&inited, 4uLL, a2, 0x48uLL);
    *(a5 + 1528) = AppleBCMWLANUtil::getCounterValueSafe(&inited, 4uLL, a2, 0x4CuLL);
    *(a5 + 1544) = AppleBCMWLANUtil::getCounterValueSafe(&inited, 4uLL, a2, 0x54uLL);
    *(a5 + 1552) = AppleBCMWLANUtil::getCounterValueSafe(&inited, 4uLL, a2, 0x58uLL);
    *(a5 + 1560) = AppleBCMWLANUtil::getCounterValueSafe(&inited, 4uLL, a2, 0x5CuLL);
    *(a5 + 1568) = AppleBCMWLANUtil::getCounterValueSafe(&inited, 4uLL, a2, 0x60uLL);
    *(a5 + 2144) = AppleBCMWLANUtil::getCounterValueSafe(&inited, 4uLL, a2, 0xE8uLL);
    *(a5 + 2128) = AppleBCMWLANUtil::getCounterValueSafe(&inited, 4uLL, a2, 0x30uLL);
    *(a5 + 2120) = 1;
    *(a5 + 2112) = AppleBCMWLANUtil::getCounterValueSafe(&inited, 4uLL, a2, 0xB0uLL);
    *(a5 + 2096) = AppleBCMWLANUtil::getCounterValueSafe(&inited, 4uLL, a2, 0x64uLL);
    *(a5 + 2088) = AppleBCMWLANUtil::getCounterValueSafe(&inited, 4uLL, a2, 0x70uLL);
    v48 = v46 - v47;
    if (v46 < v47)
    {
      v48 = 0;
    }

    *(a5 + 2104) = v48;
    *(a5 + 2080) = 1;
    *(a5 + 2192) = AppleBCMWLANUtil::getCounterValueSafe(&inited, 4uLL, a2, 0xECuLL);
    *(a5 + 2152) = 2;
    *(a5 + 1592) = AppleBCMWLANUtil::getCounterValueSafe(&inited, 4uLL, a2, 0x64uLL);
    *(a5 + 1600) = AppleBCMWLANUtil::getCounterValueSafe(&inited, 4uLL, a2, 0x68uLL);
    *(a5 + 1608) = AppleBCMWLANUtil::getCounterValueSafe(&inited, 4uLL, a2, 0x6CuLL);
    *(a5 + 1616) = AppleBCMWLANUtil::getCounterValueSafe(&inited, 4uLL, a2, 0x70uLL);
    *(a5 + 1624) = AppleBCMWLANUtil::getCounterValueSafe(&inited, 4uLL, a2, 0x74uLL);
    *(a5 + 1632) = AppleBCMWLANUtil::getCounterValueSafe(&inited, 4uLL, a2, 0x78uLL);
    *(a5 + 1640) = AppleBCMWLANUtil::getCounterValueSafe(&inited, 4uLL, a2, 0x7CuLL);
    *(a5 + 1648) = AppleBCMWLANUtil::getCounterValueSafe(&inited, 4uLL, a2, 0x80uLL);
    *(a5 + 1656) = AppleBCMWLANUtil::getCounterValueSafe(&inited, 4uLL, a2, 0x84uLL);
    *(a5 + 1664) = AppleBCMWLANUtil::getCounterValueSafe(&inited, 4uLL, a2, 0x88uLL);
    *(a5 + 1672) = AppleBCMWLANUtil::getCounterValueSafe(&inited, 4uLL, a2, 0x8CuLL);
    *(a5 + 1680) = AppleBCMWLANUtil::getCounterValueSafe(&inited, 4uLL, a2, 0x90uLL);
    *(a5 + 1688) = AppleBCMWLANUtil::getCounterValueSafe(&inited, 4uLL, a2, 0x94uLL);
    *(a5 + 1696) = AppleBCMWLANUtil::getCounterValueSafe(&inited, 4uLL, a2, 0x98uLL);
    *(a5 + 1024) = AppleBCMWLANUtil::getCounterValueSafe(&inited, 4uLL, a2, 0x14uLL);
    *(a5 + 896) = AppleBCMWLANUtil::getCounterValueSafe(&inited, 4uLL, a2, 0x9CuLL);
    v44 = a2;
    v45 = 180;
    goto LABEL_45;
  }

  if (v56)
  {
    v41 = AppleBCMWLANUtil::getCounterValueSafe(&inited, 4uLL, a2, 0x48uLL);
    v42 = AppleBCMWLANUtil::getCounterValueSafe(&inited, 4uLL, a2, 0x40uLL);
    *(a5 + 1520) = AppleBCMWLANUtil::getCounterValueSafe(&inited, 4uLL, a2, 0x30uLL);
    *(a5 + 1528) = AppleBCMWLANUtil::getCounterValueSafe(&inited, 4uLL, a2, 0x34uLL);
    *(a5 + 1544) = AppleBCMWLANUtil::getCounterValueSafe(&inited, 4uLL, a2, 0x3CuLL);
    *(a5 + 1552) = AppleBCMWLANUtil::getCounterValueSafe(&inited, 4uLL, a2, 0x40uLL);
    *(a5 + 1560) = AppleBCMWLANUtil::getCounterValueSafe(&inited, 4uLL, a2, 0x44uLL);
    *(a5 + 1568) = AppleBCMWLANUtil::getCounterValueSafe(&inited, 4uLL, a2, 0x48uLL);
    *(a5 + 2144) = AppleBCMWLANUtil::getCounterValueSafe(&inited, 4uLL, a2, 0xC4uLL);
    *(a5 + 2128) = AppleBCMWLANUtil::getCounterValueSafe(&inited, 4uLL, a2, 0x18uLL);
    *(a5 + 2120) = 1;
    *(a5 + 2112) = AppleBCMWLANUtil::getCounterValueSafe(&inited, 4uLL, a2, 0x98uLL);
    *(a5 + 2096) = AppleBCMWLANUtil::getCounterValueSafe(&inited, 4uLL, a2, 0x4CuLL);
    *(a5 + 2088) = AppleBCMWLANUtil::getCounterValueSafe(&inited, 4uLL, a2, 0x58uLL);
    v43 = v41 - v42;
    if (v41 < v42)
    {
      v43 = 0;
    }

    *(a5 + 2104) = v43;
    *(a5 + 2080) = 1;
    *(a5 + 2192) = AppleBCMWLANUtil::getCounterValueSafe(&inited, 4uLL, a2, 0xC8uLL);
    *(a5 + 2152) = 2;
    *(a5 + 1592) = AppleBCMWLANUtil::getCounterValueSafe(&inited, 4uLL, a2, 0x4CuLL);
    *(a5 + 1600) = AppleBCMWLANUtil::getCounterValueSafe(&inited, 4uLL, a2, 0x50uLL);
    *(a5 + 1608) = AppleBCMWLANUtil::getCounterValueSafe(&inited, 4uLL, a2, 0x54uLL);
    *(a5 + 1616) = AppleBCMWLANUtil::getCounterValueSafe(&inited, 4uLL, a2, 0x58uLL);
    *(a5 + 1624) = AppleBCMWLANUtil::getCounterValueSafe(&inited, 4uLL, a2, 0x5CuLL);
    *(a5 + 1632) = AppleBCMWLANUtil::getCounterValueSafe(&inited, 4uLL, a2, 0x60uLL);
    *(a5 + 1640) = AppleBCMWLANUtil::getCounterValueSafe(&inited, 4uLL, a2, 0x64uLL);
    *(a5 + 1648) = AppleBCMWLANUtil::getCounterValueSafe(&inited, 4uLL, a2, 0x68uLL);
    *(a5 + 1656) = AppleBCMWLANUtil::getCounterValueSafe(&inited, 4uLL, a2, 0x6CuLL);
    *(a5 + 1664) = AppleBCMWLANUtil::getCounterValueSafe(&inited, 4uLL, a2, 0x70uLL);
    *(a5 + 1672) = AppleBCMWLANUtil::getCounterValueSafe(&inited, 4uLL, a2, 0x74uLL);
    *(a5 + 1680) = AppleBCMWLANUtil::getCounterValueSafe(&inited, 4uLL, a2, 0x78uLL);
    *(a5 + 1688) = AppleBCMWLANUtil::getCounterValueSafe(&inited, 4uLL, a2, 0x7CuLL);
    *(a5 + 1696) = AppleBCMWLANUtil::getCounterValueSafe(&inited, 4uLL, a2, 0x80uLL);
    *(a5 + 1024) = AppleBCMWLANUtil::getCounterValueSafe(&inited, 4uLL, a2, 0x14uLL);
    *(a5 + 896) = AppleBCMWLANUtil::getCounterValueSafe(&inited, 4uLL, a2, 0x84uLL);
    v44 = a2;
    v45 = 256;
LABEL_45:
    *(a5 + 1408) = AppleBCMWLANUtil::getCounterValueSafe(&inited, 4uLL, v44, v45);
    return inited;
  }

  if (v11)
  {
    v49 = AppleBCMWLANUtil::getCounterValueSafe(&inited, 4uLL, a2, 4uLL);
    v50 = AppleBCMWLANUtil::getCounterValueSafe(&inited, 4uLL, a2, 0x104uLL);
    *(a5 + 1520) = AppleBCMWLANUtil::getCounterValueSafe(&inited, 4uLL, a2, 0x10CuLL);
    *(a5 + 1528) = AppleBCMWLANUtil::getCounterValueSafe(&inited, 4uLL, a2, 0x110uLL);
    *(a5 + 1544) = AppleBCMWLANUtil::getCounterValueSafe(&inited, 4uLL, a2, 0x210uLL);
    *(a5 + 1552) = AppleBCMWLANUtil::getCounterValueSafe(&inited, 4uLL, a2, 0x104uLL);
    *(a5 + 1560) = AppleBCMWLANUtil::getCounterValueSafe(&inited, 4uLL, a2, 0x108uLL);
    *(a5 + 1568) = AppleBCMWLANUtil::getCounterValueSafe(&inited, 4uLL, a2, 4uLL);
    *(a5 + 2144) = AppleBCMWLANUtil::getCounterValueSafe(&inited, 4uLL, a2, 0x94uLL);
    *(a5 + 2120) = 1;
    *(a5 + 2112) = AppleBCMWLANUtil::getCounterValueSafe(&inited, 4uLL, a2, 0x114uLL);
    *(a5 + 2096) = AppleBCMWLANUtil::getCounterValueSafe(&inited, 4uLL, a2, 0x1F0uLL);
    *(a5 + 2088) = AppleBCMWLANUtil::getCounterValueSafe(&inited, 4uLL, a2, 0x48uLL);
    v51 = v49 - v50;
    if (v49 < v50)
    {
      v51 = 0;
    }

    *(a5 + 2104) = v51;
    *(a5 + 2080) = 1;
    *(a5 + 1592) = AppleBCMWLANUtil::getCounterValueSafe(&inited, 4uLL, a2, 0x1F0uLL);
    *(a5 + 1600) = AppleBCMWLANUtil::getCounterValueSafe(&inited, 4uLL, a2, 0x54uLL);
    *(a5 + 1608) = AppleBCMWLANUtil::getCounterValueSafe(&inited, 4uLL, a2, 0x50uLL);
    *(a5 + 1616) = AppleBCMWLANUtil::getCounterValueSafe(&inited, 4uLL, a2, 0x48uLL);
    *(a5 + 1624) = AppleBCMWLANUtil::getCounterValueSafe(&inited, 4uLL, a2, 0x4CuLL);
    *(a5 + 1632) = AppleBCMWLANUtil::getCounterValueSafe(&inited, 4uLL, a2, 0x58uLL);
    *(a5 + 1640) = AppleBCMWLANUtil::getCounterValueSafe(&inited, 4uLL, a2, 0x1FCuLL);
    *(a5 + 1648) = AppleBCMWLANUtil::getCounterValueSafe(&inited, 4uLL, a2, 0x70uLL);
    *(a5 + 1656) = AppleBCMWLANUtil::getCounterValueSafe(&inited, 4uLL, a2, 0x74uLL);
    *(a5 + 1664) = AppleBCMWLANUtil::getCounterValueSafe(&inited, 4uLL, a2, 0x78uLL);
    *(a5 + 1672) = AppleBCMWLANUtil::getCounterValueSafe(&inited, 4uLL, a2, 0x7CuLL);
    *(a5 + 1680) = AppleBCMWLANUtil::getCounterValueSafe(&inited, 4uLL, a2, 0x208uLL);
    *(a5 + 1688) = AppleBCMWLANUtil::getCounterValueSafe(&inited, 4uLL, a2, 0x3CuLL);
    *(a5 + 1696) = AppleBCMWLANUtil::getCounterValueSafe(&inited, 4uLL, a2, 0x38uLL);
    *(a5 + 896) = AppleBCMWLANUtil::getCounterValueSafe(&inited, 4uLL, a2, 0x40uLL);
    v44 = a2;
    v45 = 312;
    goto LABEL_45;
  }

  if (a4 == 3)
  {
    *(a5 + 2192) = AppleBCMWLANUtil::getCounterValueSafe(&inited, 4uLL, a2, 0x14uLL);
    *(a5 + 2152) = 2;
    *(a5 + 2128) = AppleBCMWLANUtil::getCounterValueSafe(&inited, 4uLL, a2, 0x40uLL);
    *(a5 + 1024) = AppleBCMWLANUtil::getCounterValueSafe(&inited, 4uLL, a2, 0x20uLL);
  }

  return inited;
}