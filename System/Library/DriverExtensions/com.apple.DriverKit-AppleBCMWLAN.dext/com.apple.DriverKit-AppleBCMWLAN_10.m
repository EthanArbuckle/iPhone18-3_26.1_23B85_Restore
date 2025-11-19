const void *txPayload(const void *a1, __int16 a2)
{
  v3 = 0;
  if (a1 && a2)
  {
    return a1;
  }

  return v3;
}

uint64_t AppleBCMWLANWnmAdapter::configureWNMExtCapability(AppleBCMWLANCore ***a1, uint64_t a2)
{
  if (AppleBCMWLANWnmAdapter::getLogger(a1))
  {
    AppleBCMWLANWnmAdapter::getLogger(a1);
    if (CCLogStream::shouldLog())
    {
      Logger = AppleBCMWLANWnmAdapter::getLogger(a1);
      CCLogStream::logNoticeIf(Logger, 0x8000000uLL, "[dk] %s@%d:Enter %s \n", "configureWNMExtCapability", 454, "configureWNMExtCapability");
    }
  }

  if (!AppleBCMWLANCore::checkForWNMSupport(*a1[6]))
  {
    return -536870201;
  }

  v30 = 0;
  if (*(a2 + 4))
  {
    if ((*(a2 + 4) & 4) != 0)
    {
      v30 |= 4u;
    }

    if ((*(a2 + 4) & 0x10) != 0)
    {
      v30 |= 0x40u;
    }

    if ((*(a2 + 4) & 2) != 0)
    {
      v30 |= 2u;
    }

    if ((*(a2 + 4) & 0x20) != 0)
    {
      v30 |= 1u;
    }
  }

  v18 = a1[6][1];
  v29[0] = txPayload(&v30, 4);
  v29[1] = v3;
  v20 = AppleBCMWLANCommander::runIOVarSet(v18, "wnm", v29, 0, 0);
  if (v20)
  {
    if (AppleBCMWLANWnmAdapter::getLogger(a1))
    {
      AppleBCMWLANWnmAdapter::getLogger(a1);
      if (CCLogStream::shouldLog())
      {
        v17 = AppleBCMWLANWnmAdapter::getLogger(a1);
        v4 = (*(**a1[6] + 112))(*a1[6], v20);
        CCLogStream::logAlert(v17, "[dk] %s@%d: Error: Unable to set WNM:  Ret %s\n", "configureWNMExtCapability", 484, v4);
      }
    }

    return v20;
  }

  if (!v30 || (*(a2 + 8) & 2) == 0 || (*(a2 + 24) & 1) == 0)
  {
    goto LABEL_50;
  }

  v28 = 4;
  v16 = a1[6][1];
  v27[0] = txPayload(&v28, 4);
  v27[1] = v5;
  v21 = AppleBCMWLANCommander::runIOVarSet(v16, "wnm_bsstrans_resp", v27, 0, 0);
  if (v21)
  {
    if (AppleBCMWLANWnmAdapter::getLogger(a1))
    {
      AppleBCMWLANWnmAdapter::getLogger(a1);
      if (CCLogStream::shouldLog())
      {
        v15 = AppleBCMWLANWnmAdapter::getLogger(a1);
        v6 = (*(**a1[6] + 112))(*a1[6], v21);
        CCLogStream::logAlert(v15, "[dk] %s@%d: Error: Unable to set wnm_bsstrans_resp:  Ret %s\n", "configureWNMExtCapability", 496, v6);
      }
    }

    return v21;
  }

  v22 = AppleBCMWLANWnmAdapter::configureRoamThrottleForBSSTransMgmt(a1, a2 + 24);
  if (v22)
  {
    if (AppleBCMWLANWnmAdapter::getLogger(a1))
    {
      AppleBCMWLANWnmAdapter::getLogger(a1);
      if (CCLogStream::shouldLog())
      {
        v14 = AppleBCMWLANWnmAdapter::getLogger(a1);
        v7 = (*(**a1[6] + 112))(*a1[6], v22);
        CCLogStream::logAlert(v14, "[dk] %s@%d: Error: Unable to set wnm_bsstrans_roamthrottle:  Ret %s\n", "configureWNMExtCapability", 503, v7);
      }
    }

    return v22;
  }

  v23 = AppleBCMWLANWnmAdapter::configureSolicitedBSSTransMgmt(a1, (*(a2 + 24) >> 1) & 1);
  if (v23)
  {
    if (AppleBCMWLANWnmAdapter::getLogger(a1))
    {
      AppleBCMWLANWnmAdapter::getLogger(a1);
      if (CCLogStream::shouldLog())
      {
        v13 = AppleBCMWLANWnmAdapter::getLogger(a1);
        v8 = (*(**a1[6] + 112))(*a1[6], v23);
        CCLogStream::logAlert(v13, "[dk] %s@%d: Error: Unable to set wnm_btm_solicited:  Ret %s\n", "configureWNMExtCapability", 510, v8);
      }
    }

    return v23;
  }

  v24 = AppleBCMWLANWnmAdapter::configureBTMRssiThreshold(a1, *(a2 + 36));
  if (v24)
  {
    if (AppleBCMWLANWnmAdapter::getLogger(a1))
    {
      AppleBCMWLANWnmAdapter::getLogger(a1);
      if (CCLogStream::shouldLog())
      {
        v12 = AppleBCMWLANWnmAdapter::getLogger(a1);
        v9 = (*(**a1[6] + 112))(*a1[6], v24);
        CCLogStream::logAlert(v12, "[dk] %s@%d: Error: Unable to set BTM Rssi Threshold:  Ret %s\n", "configureWNMExtCapability", 521, v9);
      }
    }

    return v24;
  }

  else
  {
LABEL_50:
    if (AppleBCMWLANWnmAdapter::getLogger(a1))
    {
      AppleBCMWLANWnmAdapter::getLogger(a1);
      if (CCLogStream::shouldLog())
      {
        v10 = AppleBCMWLANWnmAdapter::getLogger(a1);
        CCLogStream::logNoticeIf(v10, 0x8000000uLL, "[dk] %s@%d:Leave %s \n", "configureWNMExtCapability", 527, "configureWNMExtCapability");
      }
    }

    return 0;
  }
}

uint64_t AppleBCMWLANWnmAdapter::configureWNMKeepAlives(AppleBCMWLANCore ***this, unsigned __int16 a2, unsigned __int16 a3)
{
  if (AppleBCMWLANWnmAdapter::getLogger(this))
  {
    AppleBCMWLANWnmAdapter::getLogger(this);
    if (CCLogStream::shouldLog())
    {
      Logger = AppleBCMWLANWnmAdapter::getLogger(this);
      CCLogStream::logNoticeIf(Logger, 0x8000000uLL, "[dk] %s@%d:Enter %s \n", "configureWNMKeepAlives", 389, "configureWNMKeepAlives");
    }
  }

  v16 = -1431655766;
  v17 = -21846;
  if (AppleBCMWLANCore::isWNMSupportedAndEnabled(*this[6]))
  {
    LOWORD(v16) = a2;
    BYTE2(v16) = 0;
    v17 = a3;
    v9 = this[6][1];
    v15[0] = txPayload(&v16, 6);
    v15[1] = v4;
    v11 = AppleBCMWLANCommander::runIOVarSet(v9, "wnm_keepalives_max_idle", v15, 0, 0);
    if (AppleBCMWLANWnmAdapter::getLogger(this))
    {
      AppleBCMWLANWnmAdapter::getLogger(this);
      if (CCLogStream::shouldLog())
      {
        v8 = AppleBCMWLANWnmAdapter::getLogger(this);
        v5 = (*(**this[6] + 112))(*this[6], v11);
        CCLogStream::logAlert(v8, "[dk] %s@%d:set WNM Keep Alives:  Ret %s %d %d \n", "configureWNMKeepAlives", 404, v5, a2, a3);
      }
    }

    if (AppleBCMWLANWnmAdapter::getLogger(this))
    {
      AppleBCMWLANWnmAdapter::getLogger(this);
      if (CCLogStream::shouldLog())
      {
        v6 = AppleBCMWLANWnmAdapter::getLogger(this);
        CCLogStream::logNoticeIf(v6, 0x8000000uLL, "[dk] %s@%d:Leave %s \n", "configureWNMKeepAlives", 406, "configureWNMKeepAlives");
      }
    }

    return v11;
  }

  else
  {
    return -536870201;
  }
}

uint64_t rxPayload(uint64_t a1, __int16 a2, int *a3)
{
  v5 = 0;
  if (a1 && a2)
  {
    v4 = *a3;
    return a1;
  }

  return v5;
}

uint64_t rxExpected(__int16 a1, __int16 a2)
{
  LOWORD(v3) = a1;
  HIWORD(v3) = a2;
  return v3;
}

uint64_t AppleBCMWLANWnmAdapter::configureRoamThrottleForBSSTransMgmt(AppleBCMWLANWnmAdapter *a1, uint64_t a2)
{
  if (AppleBCMWLANWnmAdapter::getLogger(a1))
  {
    AppleBCMWLANWnmAdapter::getLogger(a1);
    if (CCLogStream::shouldLog())
    {
      Logger = AppleBCMWLANWnmAdapter::getLogger(a1);
      CCLogStream::logAlert(Logger, "[dk] %s@%d:WnmAgent: Enter %s \n", "configureRoamThrottleForBSSTransMgmt", 533, "configureRoamThrottleForBSSTransMgmt");
    }
  }

  v13 = 0;
  v14 = 0;
  if (*(a2 + 4))
  {
    v13 = 1;
    v14 = 0;
    HIWORD(v13) = *(a2 + 6);
    v14 = *(a2 + 8);
    v7 = *(*(a1 + 6) + 8);
    v12[0] = txPayload(&v13, 6);
    v12[1] = v3;
    v9 = AppleBCMWLANCommander::runIOVarSet(v7, "wnm_bsstrans_roamthrottle", v12, 0, 0);
    if (!v9)
    {
      if (AppleBCMWLANWnmAdapter::getLogger(a1))
      {
        AppleBCMWLANWnmAdapter::getLogger(a1);
        if (CCLogStream::shouldLog())
        {
          v4 = AppleBCMWLANWnmAdapter::getLogger(a1);
          CCLogStream::logInfo(v4, "[dk] %s@%d:Configure Roam Throttle Period = %d Allowed Scans = %d\n", "configureRoamThrottleForBSSTransMgmt", 554, HIWORD(v13), v14);
        }
      }
    }

    if (AppleBCMWLANWnmAdapter::getLogger(a1))
    {
      AppleBCMWLANWnmAdapter::getLogger(a1);
      if (CCLogStream::shouldLog())
      {
        v5 = AppleBCMWLANWnmAdapter::getLogger(a1);
        CCLogStream::logAlert(v5, "[dk] %s@%d:WnmAgent: Leave %s \n", "configureRoamThrottleForBSSTransMgmt", 557, "configureRoamThrottleForBSSTransMgmt");
      }
    }

    return v9;
  }

  else
  {
    return 0;
  }
}

uint64_t AppleBCMWLANWnmAdapter::configureSolicitedBSSTransMgmt(AppleBCMWLANWnmAdapter *this, int a2)
{
  if (AppleBCMWLANWnmAdapter::getLogger(this))
  {
    AppleBCMWLANWnmAdapter::getLogger(this);
    if (CCLogStream::shouldLog())
    {
      Logger = AppleBCMWLANWnmAdapter::getLogger(this);
      CCLogStream::logAlert(Logger, "[dk] %s@%d:WnmAgent: Enter %s \n", "configureSolicitedBSSTransMgmt", 763, "configureSolicitedBSSTransMgmt");
    }
  }

  v13 = a2;
  v8 = *(*(this + 6) + 8);
  v12[0] = txPayload(&v13, 4);
  v12[1] = v3;
  v10 = AppleBCMWLANCommander::runIOVarSet(v8, "wnm_btm_solicited", v12, 0, 0);
  if (v10)
  {
    if (AppleBCMWLANWnmAdapter::getLogger(this))
    {
      AppleBCMWLANWnmAdapter::getLogger(this);
      if (CCLogStream::shouldLog())
      {
        v7 = AppleBCMWLANWnmAdapter::getLogger(this);
        v4 = (*(***(this + 6) + 112))(**(this + 6), v10);
        CCLogStream::logAlert(v7, "[dk] %s@%d: Error: Failed to Set Solicited BSS Trans Mgmt :  Ret %s\n", "configureSolicitedBSSTransMgmt", 770, v4);
      }
    }
  }

  if (AppleBCMWLANWnmAdapter::getLogger(this))
  {
    AppleBCMWLANWnmAdapter::getLogger(this);
    if (CCLogStream::shouldLog())
    {
      v5 = AppleBCMWLANWnmAdapter::getLogger(this);
      CCLogStream::logAlert(v5, "[dk] %s@%d:WnmAgent: Leave %s \n", "configureSolicitedBSSTransMgmt", 773, "configureSolicitedBSSTransMgmt");
    }
  }

  return v10;
}

uint64_t AppleBCMWLANWnmAdapter::configureBTMRssiThreshold(AppleBCMWLANWnmAdapter *this, int a2)
{
  if (AppleBCMWLANWnmAdapter::getLogger(this))
  {
    AppleBCMWLANWnmAdapter::getLogger(this);
    if (CCLogStream::shouldLog())
    {
      Logger = AppleBCMWLANWnmAdapter::getLogger(this);
      CCLogStream::logAlert(Logger, "[dk] %s@%d:WnmAgent: Enter %s \n", "configureBTMRssiThreshold", 780, "configureBTMRssiThreshold");
    }
  }

  v13 = a2;
  v8 = *(*(this + 6) + 8);
  v12[0] = txPayload(&v13, 4);
  v12[1] = v3;
  v10 = AppleBCMWLANCommander::runIOVarSet(v8, "wnm_btm_rssi_thresh", v12, 0, 0);
  if (v10)
  {
    if (AppleBCMWLANWnmAdapter::getLogger(this))
    {
      AppleBCMWLANWnmAdapter::getLogger(this);
      if (CCLogStream::shouldLog())
      {
        v7 = AppleBCMWLANWnmAdapter::getLogger(this);
        v4 = (*(***(this + 6) + 112))(**(this + 6), v10);
        CCLogStream::logAlert(v7, "[dk] %s@%d: Error: Failed to Set BTM Rssi Threshold :  Ret %s\n", "configureBTMRssiThreshold", 787, v4);
      }
    }
  }

  if (AppleBCMWLANWnmAdapter::getLogger(this))
  {
    AppleBCMWLANWnmAdapter::getLogger(this);
    if (CCLogStream::shouldLog())
    {
      v5 = AppleBCMWLANWnmAdapter::getLogger(this);
      CCLogStream::logAlert(v5, "[dk] %s@%d:WnmAgent: Leave %s \n", "configureBTMRssiThreshold", 790, "configureBTMRssiThreshold");
    }
  }

  return v10;
}

uint64_t AppleBCMWLANWnmAdapter::getWNMState(AppleBCMWLANCore ***this, unsigned int *a2)
{
  if (AppleBCMWLANWnmAdapter::getLogger(this))
  {
    AppleBCMWLANWnmAdapter::getLogger(this);
    if (CCLogStream::shouldLog())
    {
      Logger = AppleBCMWLANWnmAdapter::getLogger(this);
      CCLogStream::logNoticeIf(Logger, 0x8000000uLL, "[dk] %s@%d:Enter %s \n", "getWNMState", 693, "getWNMState");
    }
  }

  v14 = 0;
  if (AppleBCMWLANCore::isWNMSupportedAndEnabled(*this[6]))
  {
    v13 = xmmword_1003AD670;
    v12 = rxExpected(4, 4);
    *&v13 = rxPayload(&v14, 4, &v12);
    *(&v13 + 1) = v3;
    v9 = AppleBCMWLANCommander::runIOVarGet(this[6][1], "wnm", &kNoTxPayload, &v13, 0);
    if (v9)
    {
      if (AppleBCMWLANWnmAdapter::getLogger(this))
      {
        AppleBCMWLANWnmAdapter::getLogger(this);
        if (CCLogStream::shouldLog())
        {
          v7 = AppleBCMWLANWnmAdapter::getLogger(this);
          v4 = (*(**this[6] + 112))(*this[6], v9);
          CCLogStream::logAlert(v7, "[dk] %s@%d: wnm get failed, error %s\n", "getWNMState", 705, v4);
        }
      }
    }

    *a2 = v14;
    if (AppleBCMWLANWnmAdapter::getLogger(this))
    {
      AppleBCMWLANWnmAdapter::getLogger(this);
      if (CCLogStream::shouldLog())
      {
        v5 = AppleBCMWLANWnmAdapter::getLogger(this);
        CCLogStream::logNoticeIf(v5, 0x8000000uLL, "[dk] %s@%d:Leave %s \n", "getWNMState", 710, "getWNMState");
      }
    }

    return v9;
  }

  else
  {
    return -536870201;
  }
}

uint64_t AppleBCMWLANWnmAdapter::configureWNMDMSDependency(AppleBCMWLANWnmAdapter *this)
{
  if (AppleBCMWLANWnmAdapter::getLogger(this))
  {
    AppleBCMWLANWnmAdapter::getLogger(this);
    if (CCLogStream::shouldLog())
    {
      Logger = AppleBCMWLANWnmAdapter::getLogger(this);
      CCLogStream::logNoticeIf(Logger, 0x8000000uLL, "[dk] %s@%d:Enter %s \n", "configureWNMDMSDependency", 606, "configureWNMDMSDependency");
    }
  }

  v9 = 1;
  v5 = *(*(this + 6) + 8);
  v8[0] = txPayload(&v9, 4);
  v8[1] = v2;
  v7 = AppleBCMWLANCommander::runIOVarSet(v5, "wnm_dms_dependency", v8, 0, 0);
  if (AppleBCMWLANWnmAdapter::getLogger(this))
  {
    AppleBCMWLANWnmAdapter::getLogger(this);
    if (CCLogStream::shouldLog())
    {
      v3 = AppleBCMWLANWnmAdapter::getLogger(this);
      CCLogStream::logNoticeIf(v3, 0x8000000uLL, "[dk] %s@%d:Leave %s \n", "configureWNMDMSDependency", 615, "configureWNMDMSDependency");
    }
  }

  return v7;
}

uint64_t AppleBCMWLANWnmAdapter::configureDMS(AppleBCMWLANWnmAdapter *a1, char a2, uint64_t a3)
{
  if (AppleBCMWLANWnmAdapter::getLogger(a1))
  {
    AppleBCMWLANWnmAdapter::getLogger(a1);
    if (CCLogStream::shouldLog())
    {
      Logger = AppleBCMWLANWnmAdapter::getLogger(a1);
      CCLogStream::logNoticeIf(Logger, 0x8000000uLL, "[dk] %s@%d:Enter %s \n", "configureDMS", 621, "configureDMS");
    }
  }

  v15 = 1;
  if (*(a3 + 12))
  {
    v15 = *(a3 + 12) == 2;
  }

  if ((a2 & 0x40) != 0 && v15)
  {
    memset(&v26[1], 0, 11);
    v26[0] = 72680448;
    LODWORD(v26[1]) = *(a3 + 16);
    HIWORD(v26[1]) = *(a3 + 20);
    BYTE1(v26[2]) = *(a3 + 23);
    v14 = *(*(a1 + 6) + 8);
    v25[0] = txPayload(v26, 19);
    v25[1] = v4;
    v17 = AppleBCMWLANCommander::runIOVarSet(v14, "tclas_add", v25, 0, 0);
    if (v17)
    {
      if (AppleBCMWLANWnmAdapter::getLogger(a1))
      {
        AppleBCMWLANWnmAdapter::getLogger(a1);
        if (CCLogStream::shouldLog())
        {
          v13 = AppleBCMWLANWnmAdapter::getLogger(a1);
          v5 = (*(***(a1 + 6) + 112))(**(a1 + 6), v17);
          CCLogStream::logAlert(v13, "[dk] %s@%d: Error: Unable to Add Classifier Type %d:  Ret %s\n", "configureDMS", 655, 4, v5);
        }
      }
    }

    if (AppleBCMWLANWnmAdapter::getLogger(a1))
    {
      AppleBCMWLANWnmAdapter::getLogger(a1);
      if (CCLogStream::shouldLog())
      {
        v6 = AppleBCMWLANWnmAdapter::getLogger(a1);
        CCLogStream::logAlert(v6, "[dk] %s@%d:Added Traffic Classifer 4\n", "configureDMS", 658);
      }
    }

    v23 = 257;
    v24 = 0;
    v12 = *(*(a1 + 6) + 8);
    v22[0] = txPayload(&v23, 3);
    v22[1] = v7;
    v18 = AppleBCMWLANCommander::runIOVarSet(v12, "wnm_dms_set", v22, 0, 0);
    if (v18)
    {
      if (AppleBCMWLANWnmAdapter::getLogger(a1))
      {
        AppleBCMWLANWnmAdapter::getLogger(a1);
        if (CCLogStream::shouldLog())
        {
          v11 = AppleBCMWLANWnmAdapter::getLogger(a1);
          v8 = (*(***(a1 + 6) + 112))(**(a1 + 6), v18);
          CCLogStream::logAlert(v11, "[dk] %s@%d: Error: Failed to set DMS Request :  Ret %s\n", "configureDMS", 675, v8);
        }
      }

      return v18;
    }

    else
    {
      if (AppleBCMWLANWnmAdapter::getLogger(a1))
      {
        AppleBCMWLANWnmAdapter::getLogger(a1);
        if (CCLogStream::shouldLog())
        {
          v9 = AppleBCMWLANWnmAdapter::getLogger(a1);
          CCLogStream::logNoticeIf(v9, 0x8000000uLL, "[dk] %s@%d:Leave %s \n", "configureDMS", 683, "configureDMS");
        }
      }

      return 0;
    }
  }

  else
  {
    return -536870174;
  }
}

uint64_t AppleBCMWLANWnmAdapter::configureRssiToRateMappingTableV4(AppleBCMWLANWnmAdapter *a1, uint64_t a2)
{
  memset(__b, -86, sizeof(__b));
  if (AppleBCMWLANWnmAdapter::getLogger(a1))
  {
    AppleBCMWLANWnmAdapter::getLogger(a1);
    if (CCLogStream::shouldLog())
    {
      Logger = AppleBCMWLANWnmAdapter::getLogger(a1);
      CCLogStream::logAlert(Logger, "[dk] %s@%d:WnmAgent: Enter %s \n", "configureRssiToRateMappingTableV4", 929, "configureRssiToRateMappingTableV4");
    }
  }

  *__b = 4;
  *&__b[2] = 616;
  *&__b[4] = *(a2 + 2);
  *&__b[12] = *(a2 + 10);
  *&__b[16] = *(a2 + 14);
  *&__b[32] = *(a2 + 30);
  *&__b[40] = *(a2 + 38);
  *&__b[56] = *(a2 + 54);
  memcpy(&__b[136], (a2 + 134), 0x24uLL);
  memcpy(&__b[280], (a2 + 278), 0x24uLL);
  memcpy(&__b[424], (a2 + 422), 0x30uLL);
  *&__b[64] = *(a2 + 62);
  *&__b[80] = *(a2 + 78);
  memcpy(&__b[172], (a2 + 170), 0x24uLL);
  memcpy(&__b[316], (a2 + 314), 0x24uLL);
  memcpy(&__b[472], (a2 + 470), 0x30uLL);
  v8 = *(*(a1 + 6) + 8);
  v12[0] = txPayload(__b, 616);
  v12[1] = v3;
  v10 = AppleBCMWLANCommander::runIOVarSet(v8, "wnm_bsstrans_rssi_rate_map", v12, 0, 0);
  if (v10)
  {
    if (AppleBCMWLANWnmAdapter::getLogger(a1))
    {
      AppleBCMWLANWnmAdapter::getLogger(a1);
      if (CCLogStream::shouldLog())
      {
        v4 = AppleBCMWLANWnmAdapter::getLogger(a1);
        CCLogStream::logAlert(v4, "[dk] %s@%d: WiFiRoam : Error: Failed to configure Rssi to Mapping To Table. Return value : [%d]\n", "configureRssiToRateMappingTableV4", 951, v10);
      }
    }
  }

  else if (AppleBCMWLANWnmAdapter::getLogger(a1))
  {
    AppleBCMWLANWnmAdapter::getLogger(a1);
    if (CCLogStream::shouldLog())
    {
      v5 = AppleBCMWLANWnmAdapter::getLogger(a1);
      CCLogStream::logAlert(v5, "[dk] %s@%d: WiFiRoam : Successfully programmed rate map table for tri band\n", "configureRssiToRateMappingTableV4", 954);
    }
  }

  if (AppleBCMWLANWnmAdapter::getLogger(a1))
  {
    AppleBCMWLANWnmAdapter::getLogger(a1);
    if (CCLogStream::shouldLog())
    {
      v6 = AppleBCMWLANWnmAdapter::getLogger(a1);
      CCLogStream::logAlert(v6, "[dk] %s@%d:WnmAgent: Leave %s \n", "configureRssiToRateMappingTableV4", 957, "configureRssiToRateMappingTableV4");
    }
  }

  return v10;
}

uint64_t AppleBCMWLANWnmAdapter::configureRssiToRateMappingTableV2(AppleBCMWLANWnmAdapter *this)
{
  memset(__b, -86, sizeof(__b));
  if (AppleBCMWLANWnmAdapter::getLogger(this))
  {
    AppleBCMWLANWnmAdapter::getLogger(this);
    if (CCLogStream::shouldLog())
    {
      Logger = AppleBCMWLANWnmAdapter::getLogger(this);
      CCLogStream::logAlert(Logger, "[dk] %s@%d:WnmAgent: Enter %s \n", "configureRssiToRateMappingTableV2", 967, "configureRssiToRateMappingTableV2");
    }
  }

  __b[0] = 18612226;
  *&__b[1] = cck;
  *&__b[3] = ofdm;
  *&__b[7] = phy_n_1_1;
  *&__b[23] = phy_ac_1_1_v2;
  *&__b[27] = qword_1003E81D8;
  *&__b[47] = phy_ax_1_1;
  *&__b[51] = qword_1003E81F0;
  *&__b[11] = phy_n_2_2;
  *&__b[29] = phy_ac_2_2_v2;
  *&__b[33] = qword_1003E822C;
  *&__b[53] = phy_ax_2_2;
  *&__b[57] = qword_1003E8244;
  v6 = *(*(this + 6) + 8);
  v9[0] = txPayload(__b, 284);
  v9[1] = v2;
  v8 = AppleBCMWLANCommander::runIOVarSet(v6, "wnm_bsstrans_rssi_rate_map", v9, 0, 0);
  if (v8)
  {
    if (AppleBCMWLANWnmAdapter::getLogger(this))
    {
      AppleBCMWLANWnmAdapter::getLogger(this);
      if (CCLogStream::shouldLog())
      {
        v3 = AppleBCMWLANWnmAdapter::getLogger(this);
        CCLogStream::logAlert(v3, "[dk] %s@%d: Error: Failed to configure Rssi to Mapping To Table\n", "configureRssiToRateMappingTableV2", 985);
      }
    }
  }

  if (AppleBCMWLANWnmAdapter::getLogger(this))
  {
    AppleBCMWLANWnmAdapter::getLogger(this);
    if (CCLogStream::shouldLog())
    {
      v4 = AppleBCMWLANWnmAdapter::getLogger(this);
      CCLogStream::logAlert(v4, "[dk] %s@%d:WnmAgent: Leave %s \n", "configureRssiToRateMappingTableV2", 989, "configureRssiToRateMappingTableV2");
    }
  }

  return v8;
}

AppleBCMWLANUtil::AutoreleasedBuffer *AppleBCMWLANUtil::AutoreleasedBuffer::AutoreleasedBuffer(AppleBCMWLANUtil::AutoreleasedBuffer *this, uint64_t a2, int a3)
{
  AppleBCMWLANUtil::AutoreleasedBuffer::AutoreleasedBuffer(this, a2, a3);
  return this;
}

{
  AppleBCMWLANUtil::AutoreleasedResource::AutoreleasedResource(this);
  *this = IOMallocZeroData();
  *(this + 1) = a2;
  *(this + 4) = a3;
  if (!*this)
  {
    *(this + 1) = 0;
  }

  return this;
}

void IO80211BufferCursor::IO80211BufferCursor(IO80211BufferCursor *this, void *a2, uint64_t a3)
{
  IO80211BufferCursor::IO80211BufferCursor(this, a2, a3);
}

{
  *this = a2;
  *(this + 1) = a3;
  v3 = 1;
  if (*this)
  {
    v3 = 1;
    if (*(this + 1))
    {
      v3 = *(this + 1) > 0x3FFFFFFFFFFFFFFFuLL;
    }
  }

  if (v3)
  {
    *this = 0;
    *(this + 1) = 0;
  }
}

BOOL IO80211BufferCursor::operator BOOL(void *a1)
{
  v2 = 0;
  if (*a1)
  {
    return a1[1] != 0;
  }

  return v2;
}

void IO80211BufferCursor::~IO80211BufferCursor(IO80211BufferCursor *this)
{
  IO80211BufferCursor::~IO80211BufferCursor(this);
}

{
  *this = 0;
  *(this + 1) = 0;
}

void AppleBCMWLANUtil::AutoreleasedBuffer::~AutoreleasedBuffer(AppleBCMWLANUtil::AutoreleasedBuffer *this)
{
  AppleBCMWLANUtil::AutoreleasedBuffer::~AutoreleasedBuffer(this);
}

{
  if (*this)
  {
    v1 = *this;
    v2 = *(this + 1);
    IOFreeData();
    *this = 0;
    *(this + 1) = 0;
    *(this + 4) = 0;
  }

  AppleBCMWLANUtil::AutoreleasedResource::AutoreleasedResource(this);
}

uint64_t IO80211BufferCursor::_asRawPtr<unsigned char>(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = __CFADD__(a2, a3);
  v5 = 1;
  if (!v3)
  {
    v5 = 1;
    if ((a2 + a3) <= a1[1])
    {
      v5 = a3 == 0;
    }
  }

  if (v5)
  {
    return 0;
  }

  else
  {
    return *a1 + a2;
  }
}

const char *IO80211BufferCursor::_asType<vndr_ie_setbuf_t>(void *a1, const char *a2, unint64_t a3)
{
  v3 = __CFADD__(a2, a3);
  v7 = &a2[a3];
  v6 = 1;
  if (!v3)
  {
    v6 = 1;
    if (v7 <= a1[1])
    {
      v6 = a3 < 0x12;
    }
  }

  if (v6)
  {
    return 0;
  }

  v8 = &v7[*a1];
  v9 = &a2[*a1];
  v4 = v8 < v9;
  if (((v8 - v9) & 0xFFFFFFFF00000000) != 0)
  {
    v4 = 1;
  }

  if (v4)
  {
    os_detail::panic_trapping_policy::trap("The range of valid memory is too large to be represented by this type, or [begin, end) is not a well-formed range", a2);
  }

  return v9;
}

const char *IO80211BufferCursor::_asType<vndr_ie_info_t>(void *a1, const char *a2, unint64_t a3)
{
  v3 = __CFADD__(a2, a3);
  v7 = &a2[a3];
  v6 = 1;
  if (!v3)
  {
    v6 = 1;
    if (v7 <= a1[1])
    {
      v6 = a3 < 0xA;
    }
  }

  if (v6)
  {
    return 0;
  }

  v8 = &v7[*a1];
  v9 = &a2[*a1];
  v4 = v8 < v9;
  if (((v8 - v9) & 0xFFFFFFFF00000000) != 0)
  {
    v4 = 1;
  }

  if (v4)
  {
    os_detail::panic_trapping_policy::trap("The range of valid memory is too large to be represented by this type, or [begin, end) is not a well-formed range", a2);
  }

  return v9;
}

unint64_t __cxx_global_var_init()
{
  result = bufferRange(0, 0);
  kNullRange = result;
  return result;
}

OSObject *AppleBCMWLANPCIeIO::withSlab(AppleBCMWLANPCIeIO *this, AppleBCMWLANDMASlab *a2)
{
  v6 = 0xAAAAAAAAAAAAAAAALL;
  if (OSObjectAllocate(gAppleBCMWLANPCIeIOMetaClass, &v6))
  {
    return 0;
  }

  v4 = v6;
  if (v6 && ((v6->OSMetaClassBase::__vftable[1].getMetaClass)(v6, this, a2) & 1) == 0)
  {
    (v4->release)(v4);
    return 0;
  }

  return v4;
}

uint64_t AppleBCMWLANPCIeIO::initWithSlab(AppleBCMWLANDMASlab ***this, AppleBCMWLANDMASlab *a2, int a3)
{
  result = IOCommand::init(this);
  if (result)
  {
    v7 = IOMallocZeroTyped();
    this[7] = v7;
    if (v7)
    {
      *v7 = a2;
      result = this[7];
      if (*result)
      {
        (*(**result + 8))(*result);
        *(this[7] + 2) = a3;
        *(this[7] + 3) = AppleBCMWLANDMASlab::getItemSize(*this[7]);
        return 1;
      }
    }

    else
    {
      IOLog("Failed to allocate AppleBCMWLANPCIeIO_IVars\n");
      result = this[7];
      if (!result)
      {
        return result;
      }
    }

    memset_s(result, 0x38uLL, 0, 0x38uLL);
    result = this[7];
    if (result)
    {
      IOFree(result, 0x38uLL);
      result = 0;
      this[7] = 0;
    }
  }

  return result;
}

uint64_t AppleBCMWLANPCIeIO::free(AppleBCMWLANPCIeIO *this)
{
  v2 = *(this + 7);
  if (!*v2 || ((*(**v2 + 16))(*v2), **(this + 7) = 0, (v2 = *(this + 7)) != 0))
  {
    memset_s(v2, 0x38uLL, 0, 0x38uLL);
    v3 = *(this + 7);
    if (v3)
    {
      IOFree(v3, 0x38uLL);
      *(this + 7) = 0;
    }
  }

  return IOCommand::free(this);
}

uint64_t AppleBCMWLANPCIeIO::prepare(AppleBCMWLANPCIeIO *this, IO80211Buffer *a2, int a3, int a4)
{
  *(*(this + 7) + 48) = a2;
  *(*(this + 7) + 24) = a3;
  *(*(this + 7) + 28) = a4;
  if ((AppleBCMWLANDMASlab::getDirection(**(this + 7)) & 2) == 0)
  {
    return 0;
  }

  v5 = *(this + 7);
  if (!*(v5 + 28))
  {
    return 0;
  }

  v6 = *v5;
  v7 = *(v5 + 8);
  v8 = *(v5 + 48);
  v9 = *(v5 + 24);

  return AppleBCMWLANDMASlab::copyBufferDescriptorToBounce(v6, v7, v8);
}

uint64_t AppleBCMWLANPCIeIO::complete(AppleBCMWLANPCIeIO *this, IO80211Buffer **a2)
{
  v2 = *(this + 7);
  if (!*(v2 + 48))
  {
    return 3758097136;
  }

  Direction = AppleBCMWLANDMASlab::getDirection(*v2);
  v6 = *(this + 7);
  if ((Direction & 1) != 0 && *(v6 + 28))
  {
    v7 = *(v6 + 24);
    result = AppleBCMWLANDMASlab::copyBounceToBufferDescriptor(*v6, *(v6 + 8), *(v6 + 48));
    v6 = *(this + 7);
  }

  else
  {
    result = 0;
  }

  *a2 = *(v6 + 48);
  *(*(this + 7) + 48) = 0;
  return result;
}

OSObject *AppleBCMWLANDMASlab::withOptions(AppleBCMWLANDMASlab *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, IOService *a7)
{
  v15 = 0xAAAAAAAAAAAAAAAALL;
  if (OSObjectAllocate(gAppleBCMWLANDMASlabMetaClass, &v15))
  {
    return 0;
  }

  v13 = v15;
  if (v15 && ((v15->OSMetaClassBase::__vftable[1].getMetaClass)(v15, this, a2, a3, a4, a5, a6) & 1) == 0)
  {
    (v13->release)(v13);
    return 0;
  }

  return v13;
}

void AppleBCMWLANDMASlab::free(OSObject *this)
{
  v2 = *&this[1].refcount;
  if (!v2)
  {
    goto LABEL_21;
  }

  v3 = *(v2 + 72);
  if (v3)
  {
    if (*(v2 + 68))
    {
      v4 = 0;
      v5 = 0;
      do
      {
        *(*(v2 + 72) + v4) = 0;
        *(*(*&this[1].refcount + 72) + v4 + 8) = 0;
        ++v5;
        v2 = *&this[1].refcount;
        v6 = *(v2 + 68);
        v4 += 16;
      }

      while (v5 < v6);
      v3 = *(v2 + 72);
      if (!v3)
      {
        goto LABEL_10;
      }

      v7 = 16 * v6;
    }

    else
    {
      v7 = 0;
    }

    IOFree(v3, v7);
    *(*&this[1].refcount + 72) = 0;
    v2 = *&this[1].refcount;
LABEL_10:
    *(v2 + 72) = 0;
    v2 = *&this[1].refcount;
  }

  if (*(v2 + 40))
  {
    IODMACommand::CompleteDMA(*(v2 + 40), 0, 0);
    v2 = *&this[1].refcount;
    v8 = *(v2 + 40);
    if (v8)
    {
      (*(*v8 + 16))(*(v2 + 40));
      *(*&this[1].refcount + 40) = 0;
      v2 = *&this[1].refcount;
    }
  }

  if (*(v2 + 24))
  {
    IO80211Buffer::returnBuffer(*(v2 + 24));
    *(*&this[1].refcount + 24) = 0;
    v2 = *&this[1].refcount;
  }

  v9 = *(v2 + 32);
  if (v9)
  {
    (*(*v9 + 72))(*(v2 + 32));
    v2 = *&this[1].refcount;
    v10 = *(v2 + 32);
    if (v10)
    {
      (*(*v10 + 16))(*(v2 + 32));
      *(*&this[1].refcount + 32) = 0;
      v2 = *&this[1].refcount;
    }
  }

  memset_s(v2, 0x50uLL, 0, 0x50uLL);
  v11 = *&this[1].refcount;
  if (v11)
  {
    IOFree(v11, 0x50uLL);
    *&this[1].refcount = 0;
  }

LABEL_21:

  OSObject::free(this);
}

uint64_t AppleBCMWLANDMASlab::getBusAddr64(AppleBCMWLANDMASlab *this, unsigned int a2, IOAddressSegment *a3)
{
  v3 = *(this + 6);
  v4 = *(v3 + 72);
  if (!v4 || *(v3 + 68) <= a2)
  {
    return 3758096385;
  }

  result = 0;
  a3->address = *(v4 + 16 * a2 + 8);
  a3->length = *(*(this + 6) + 64);
  return result;
}

uint64_t AppleBCMWLANPCIeLinkChangeEventSource::free(AppleBCMWLANPCIeLinkChangeEventSource *this)
{
  v2 = *(this + 7);
  if (v2)
  {
    if (*(v2 + 48))
    {
      IOLockFree(*(v2 + 48));
      v2 = *(this + 7);
    }

    v3 = *(v2 + 24);
    if (v3)
    {
      (*(*v3 + 16))(*(v2 + 24));
      *(*(this + 7) + 24) = 0;
      v2 = *(this + 7);
    }

    memset_s(v2, 0x38uLL, 0, 0x38uLL);
    v4 = *(this + 7);
    if (v4)
    {
      IOFree(v4, 0x38uLL);
      *(this + 7) = 0;
    }
  }

  return IO80211WorkSource::free(this);
}

uint64_t AppleBCMWLANPCIeLinkChangeEventSource::checkForWork(AppleBCMWLANPCIeLinkChangeEventSource *this)
{
  IOLockLock(*(*(this + 7) + 48));
  v2 = *(this + 7);
  v3 = *(v2 + 16);
  *(v2 + 16) = 0;
  v4 = *(this + 7);
  v5 = *(v4 + 8);
  *(v4 + 8) = 0;
  v6 = *(this + 7);
  v7 = *v6;
  *v6 = 0;
  IOLockUnlock(*(*(this + 7) + 48));
  if (v7 == 2)
  {
    if (v3)
    {
      (*(*(this + 7) + 40))(*(*(this + 7) + 24), v3);
    }

    if (!v5)
    {
      goto LABEL_12;
    }

    v3 = v5;
    if (!(*(*(this + 7) + 32))(*(*(this + 7) + 24), v5))
    {
      goto LABEL_12;
    }

LABEL_11:
    (*(*(this + 7) + 40))(*(*(this + 7) + 24), v3);
    goto LABEL_12;
  }

  if (v5 && (*(*(this + 7) + 32))(*(*(this + 7) + 24), v5))
  {
    (*(*(this + 7) + 40))(*(*(this + 7) + 24), v5);
  }

  if (v3)
  {
    goto LABEL_11;
  }

LABEL_12:
  v8 = *(this + 7);
  if (*(v8 + 8) || *(v8 + 16))
  {
    IO80211WorkSource::signalWorkAvailable(this);
  }

  return 0;
}

uint64_t AppleBCMWLANSkywalkInterface::free(AppleBCMWLANSkywalkInterface *this)
{
  if (*(this + 19))
  {
    if ((*(*this + 1088))(this))
    {
      (*(*this + 1088))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANSkywalkInterface::free(this);
      }
    }

    *(*(this + 19) + 24) = 0;
    v2 = *(this + 19);
    v3 = v2[21];
    if (v3)
    {
      (*(*v3 + 16))(v2[21]);
      *(*(this + 19) + 168) = 0;
      v2 = *(this + 19);
    }

    memset_s(v2, 0xE0uLL, 0, 0xE0uLL);
    v4 = *(this + 19);
    if (v4)
    {
      IOFree(v4, 0xE0uLL);
      *(this + 19) = 0;
    }
  }

  return AppleBCMWLANInfraProtocol::free(this);
}

uint64_t AppleBCMWLANSkywalkInterface::start(AppleBCMWLANSkywalkInterface *this, IOService *anObject)
{
  v3 = OSMetaClassBase::safeMetaCast(anObject, gAppleBCMWLANCoreMetaClass);
  v4 = *(*this + 3064);

  return v4(this, v3, 0);
}

uint64_t non-virtual thunk toAppleBCMWLANSkywalkInterface::start(AppleBCMWLANSkywalkInterface *this, IOService *anObject)
{
  v3 = OSMetaClassBase::safeMetaCast(anObject, gAppleBCMWLANCoreMetaClass);
  v4 = *(*(this - 6) + 3064);

  return v4(this - 48, v3, 0);
}

BOOL AppleBCMWLANSkywalkInterface::start(AppleBCMWLANInfraProtocol *a1, IOService *anObject)
{
  *(*(a1 + 19) + 24) = OSMetaClassBase::safeMetaCast(anObject, gAppleBCMWLANCoreMetaClass);
  if ((AppleBCMWLANInfraProtocol::initWithProvider(a1, *(*(a1 + 19) + 24)) & 1) == 0)
  {
    IOLog("AppleBCMWLANSkywalkInterface Failed to init IOUC routing \n");
    return 0;
  }

  if ((*(**(*(a1 + 19) + 24) + 536))(*(*(a1 + 19) + 24)))
  {
    IOLog("AppleBCMWLANSkywalkInterface matching started before Core powered on, deferring\n");
    return 0;
  }

  if (IO80211SkywalkInterface::isLowLatencyEnabled(a1))
  {
    AppleBCMWLANSkywalkInterface::start(anObject, a1);
  }

  else
  {
    AppleBCMWLANSkywalkInterface::start(anObject, a1);
  }

  p_free = &anObject[1].OSObject::OSObjectInterface::__vftable[2223].free;
  *p_free = 0u;
  *(p_free + 1) = 0u;
  if (IO80211SkywalkInterface::getInterfaceRole(a1) == 1)
  {
    (*(*a1 + 456))(a1, 1);
  }

  if ((IO80211InfraInterface::start(a1, anObject) & 1) == 0)
  {
    if ((*(*a1 + 1088))(a1))
    {
      (*(*a1 + 1088))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANSkywalkInterface::start(a1);
      }
    }

    return 0;
  }

  WorkQueue = IO80211SkywalkInterface::getWorkQueue(a1);
  Logger = IO80211SkywalkInterface::getLogger(a1);
  v9 = *(a1 + 19);
  if (Logger)
  {
    v10 = *(v9 + 168);
    if (v10)
    {
      (*(*v10 + 16))(v10);
      *(*(a1 + 19) + 168) = 0;
    }

    *(*(a1 + 19) + 168) = IO80211SkywalkInterface::getLogger(a1);
    v9 = *(a1 + 19);
    v11 = *(v9 + 168);
    if (v11)
    {
      (*(*v11 + 8))(v11);
      v9 = *(a1 + 19);
    }
  }

  *(*(a1 + 19) + 176) = (*(**(v9 + 24) + 88))(*(v9 + 24));
  *(*(a1 + 19) + 32) = AppleBCMWLANCore::getBus(*(*(a1 + 19) + 24));
  v12 = (*(**(*(a1 + 19) + 32) + 752))();
  **(a1 + 19) = OSMetaClassBase::safeMetaCast(v12, gAppleBCMWLANBusSkywalkMetaClass);
  v13 = *(a1 + 19);
  if (*v13)
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v20 = 0u;
    v19 = a1;
    LOBYTE(v20) = *(v13 + 42);
    *&v22 = v13 + 96;
    *(&v22 + 1) = v13 + 104;
    if (*(v13 + 162))
    {
      v14 = v13 + 152;
    }

    else
    {
      v14 = 0;
    }

    *&v23 = v14;
    *(&v23 + 1) = v13 + 80;
    *&v24 = v13 + 88;
    *(&v20 + 1) = v13 + 44;
    *&v21 = v13 + 120;
    *(&v21 + 1) = v13 + 112;
    v25 = (*(*a1 + 1088))(a1);
    v15 = (*(***(a1 + 19) + 56))(**(a1 + 19), &v19);
    v4 = v15 == 0;
    if (v15)
    {
      if ((*(*a1 + 1088))(a1))
      {
        (*(*a1 + 1088))(a1);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANSkywalkInterface::start(a1);
        }
      }
    }

    else
    {
      if (IO80211SkywalkInterface::getInterfaceRole(a1) == 1)
      {
        v16 = **(a1 + 19);
        v17 = (*(*a1 + 1088))(a1);
        (*(*v16 + 128))(v16, v17);
      }

      v18 = *(*(a1 + 19) + 152);
      if (v18)
      {
        (*(*v18 + 72))(v18);
        (*(*WorkQueue + 64))(WorkQueue, *(*(a1 + 19) + 152));
      }

      if (IO80211SkywalkInterface::getInterfaceRole(a1) == 1)
      {
        (*(*a1 + 536))(a1);
        if ((*(*a1 + 1088))(a1))
        {
          (*(*a1 + 1088))(a1);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANSkywalkInterface::start(a1);
          }
        }

        AppleBCMWLANCore::setAndBootInfraInterface(*(*(a1 + 19) + 24), 0, a1);
      }
    }
  }

  else
  {
    if ((*(*a1 + 1088))(a1))
    {
      (*(*a1 + 1088))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANSkywalkInterface::start(a1);
      }
    }

    return 1;
  }

  return v4;
}

uint64_t AppleBCMWLANSkywalkInterface::registerInterface(AppleBCMWLANSkywalkInterface *this)
{
  v26 = -1431655766;
  v25 = 0xAAAAAAAAAAAAAAAALL;
  v28 = 0xAAAAAAAAAAAAAAAALL;
  *&v2 = 0xAAAAAAAAAAAAAAAALL;
  *(&v2 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v27[1] = v2;
  v27[2] = v2;
  v27[0] = v2;
  (*(*this + 1840))(this, &v25);
  if ((IO80211SkywalkInterface::registerInterface(this) & 1) == 0)
  {
    result = (*(*this + 1088))(this);
    if (result)
    {
      (*(*this + 1088))(this);
      result = CCLogStream::shouldLog();
      if (result)
      {
        AppleBCMWLANSkywalkInterface::registerInterface(this);
        return 0;
      }
    }

    return result;
  }

  if (IOUserNetworkEthernet::SetTxPacketHeadroom(this, 0))
  {
    result = (*(*this + 1088))(this);
    if (result)
    {
      (*(*this + 1088))(this);
      result = CCLogStream::shouldLog();
      if (result)
      {
        AppleBCMWLANSkywalkInterface::registerInterface(this);
        return 0;
      }
    }

    return result;
  }

  v4 = 0;
  while (1)
  {
    v5 = *(this + 19);
    if (v4 >= *(v5 + 42))
    {
      break;
    }

    v6 = *(v5 + 8 * v4 + 120);
    *(v27 + v4) = v6;
    (*(*v6 + 272))(v6);
    *(*(this + 19) + 4 * *(*(this + 19) + 4 * v4 + 44) + 60) = AppleBCMWLANSkywalkTxSubmissionQueue::getQueueId(*(*(this + 19) + 8 * v4 + 120));
    if (++v4 == 4)
    {
      v5 = *(this + 19);
      v7 = 4;
      goto LABEL_14;
    }
  }

  v7 = v4;
LABEL_14:
  *(v27 + v7) = *(v5 + 96);
  v8 = v7 + 2;
  *(v27 + (v7 + 1)) = *(v5 + 104);
  InterfaceRole = IO80211SkywalkInterface::getInterfaceRole(this);
  v10 = *(this + 19);
  if (InterfaceRole == 1)
  {
    *(v27 + (v7 + 2)) = *(v10 + 112);
    v8 = v7 + 3;
  }

  (*(**(v10 + 96) + 200))(*(v10 + 96));
  (*(**(*(this + 19) + 104) + 208))(*(*(this + 19) + 104));
  v11 = *(this + 19);
  v12 = *(v11 + 152);
  if (v12)
  {
    (*(*v12 + 72))(v12);
    v11 = *(this + 19);
  }

  v13 = BYTE4(v25);
  v14 = BYTE5(v25);
  v15 = BYTE6(v25);
  v16 = HIBYTE(v25);
  v17 = v26;
  v18 = BYTE1(v26);
  v19 = v8;
  v20 = (*(*this + 272))(this, BYTE4(v25) | (BYTE5(v25) << 8) | (BYTE6(v25) << 16) | (HIBYTE(v25) << 24) | (v26 << 32) | (BYTE1(v26) << 40), *(v11 + 80), v27, v8);
  if ((*(*this + 1088))(this))
  {
    (*(*this + 1088))(this);
    if (CCLogStream::shouldLog())
    {
      v23 = v13;
      v24 = (*(*this + 1088))(this);
      v21 = *(*(this + 19) + 80);
      v22 = IO80211SkywalkInterface::getInterfaceRole(this);
      CCLogStream::logAlert(v24, "[dk] %s@%d:SkywalkInterface: ret[0x%08x] MAC[%02x:%02x:%02x:%02x:%02x:%02x], pool[%p] queues[%p] numQueue[%2u], role[%u]", "registerInterface", 454, v20, v23, v14, v15, v16, v17, v18, v21, v27, v19, v22);
      if (v20)
      {
        goto LABEL_21;
      }

LABEL_27:
      IOService::RegisterService(this, 0);
      return 1;
    }
  }

  if (!v20)
  {
    goto LABEL_27;
  }

LABEL_21:
  result = (*(*this + 1088))(this);
  if (result)
  {
    (*(*this + 1088))(this);
    result = CCLogStream::shouldLog();
    if (result)
    {
      AppleBCMWLANSkywalkInterface::registerInterface(this);
      return 0;
    }
  }

  return result;
}

uint64_t AppleBCMWLANSkywalkInterface::stop(AppleBCMWLANSkywalkInterface *this, IOService *a2)
{
  WorkQueue = IO80211SkywalkInterface::getWorkQueue(this);
  IOLog("AppleBCMWLANSkywalkInterface::stop[%u] stop( %p)\n", 472, a2);
  IO80211SkywalkInterface::validateDispatchQueue(this);
  if ((*(*this + 1088))(this))
  {
    (*(*this + 1088))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANSkywalkInterface::stop(this);
    }
  }

  v5 = *(this + 19);
  if (*(v5 + 42))
  {
    v6 = 15;
    do
    {
      v7 = *(v5 + 8 * v6);
      if (v7)
      {
        (*(*v7 + 272))(v7);
        v5 = *(this + 19);
        v8 = *(v5 + 8 * v6);
        if (v8)
        {
          (*(*v8 + 16))(v8);
          *(*(this + 19) + 8 * v6) = 0;
          v5 = *(this + 19);
        }
      }

      v9 = v6 - 14;
      ++v6;
    }

    while (v9 < *(v5 + 42));
  }

  v10 = *(v5 + 96);
  if (v10)
  {
    (*(*v10 + 200))(v10);
    v5 = *(this + 19);
    v11 = *(v5 + 96);
    if (v11)
    {
      (*(*v11 + 16))(v11);
      *(*(this + 19) + 96) = 0;
      v5 = *(this + 19);
    }
  }

  v12 = *(v5 + 104);
  if (v12)
  {
    (*(*v12 + 208))(v12);
    v5 = *(this + 19);
    v13 = *(v5 + 104);
    if (v13)
    {
      (*(*v13 + 16))(v13);
      *(*(this + 19) + 104) = 0;
      v5 = *(this + 19);
    }
  }

  v14 = *(v5 + 152);
  if (v14)
  {
    (*(*v14 + 72))(v14);
    (*(*WorkQueue + 72))(WorkQueue, *(*(this + 19) + 152));
    v15 = *(*(this + 19) + 152);
    if (v15)
    {
      (*(*v15 + 16))(v15);
      *(*(this + 19) + 152) = 0;
    }
  }

  if (IO80211SkywalkInterface::getInterfaceRole(this) == 1)
  {
    (*(***(this + 19) + 128))(**(this + 19), 0);
  }

  IOLog("AppleBCMWLANSkywalkInterface::stop[%u] super::stop( %p) >>\n", 520, a2);

  return IO80211InfraInterface::stop(this, a2);
}

uint64_t AppleBCMWLANSkywalkInterface::getSupportedMediaArray(AppleBCMWLANSkywalkInterface *this, unsigned int *a2, unsigned int *a3)
{
  IO80211SkywalkInterface::validateDispatchQueue(this);
  *a2 = 128;
  *a3 = 1;
  if ((*(*this + 1088))(this))
  {
    (*(*this + 1088))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANSkywalkInterface::getSupportedMediaArray(this);
    }
  }

  return 0;
}

uint64_t AppleBCMWLANSkywalkInterface::setRunningState(unint64_t this, char a2)
{
  v3 = (this + 152);
  *(*(this + 152) + 160) = a2;
  if ((*(*this + 1088))(this))
  {
    (*(*this + 1088))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANSkywalkInterface::setRunningState(this, this & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000, v3);
    }
  }

  return 0;
}

uint64_t AppleBCMWLANSkywalkInterface::enableDatapath(IOService *this)
{
  v8 = 0;
  acquireProperty<OSString>(this, "IO80211InterfaceRole", &v8, 0, "IOService");
  if ((this->OSObject::OSMetaClassBase::__vftable[19].isEqualTo)(this))
  {
    (this->OSObject::OSMetaClassBase::__vftable[19].isEqualTo)(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANSkywalkInterface::enableDatapath(this, this & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000, &v8);
    }
  }

  if (v8)
  {
    (v8->release)(v8);
    v8 = 0;
  }

  v2 = *&this[3].refcount;
  if (*(v2 + 161))
  {
    v3 = *(v2 + 96);
    if (v3)
    {
      (*(*v3 + 192))(v3);
      v4 = *(*&this[3].refcount + 104);
      if (v4)
      {
        (*(*v4 + 200))(v4);
        (*(***&this[3].refcount + 64))(**&this[3].refcount, this);
        if ((*(**(*&this[3].refcount + 104) + 120))(*(*&this[3].refcount + 104), 0, 0))
        {
          if ((this->OSObject::OSMetaClassBase::__vftable[19].isEqualTo)(this))
          {
            (this->OSObject::OSMetaClassBase::__vftable[19].isEqualTo)(this);
            if (CCLogStream::shouldLog())
            {
              AppleBCMWLANSkywalkInterface::enableDatapath(this);
            }
          }
        }

        if (IO80211SkywalkInterface::getInterfaceRole(this) == 1)
        {
          AppleBCMWLANCore::infraDpEnable(*(*&this[3].refcount + 24), v5);
        }

        return 0;
      }

      AppleBCMWLANSkywalkInterface::enableDatapath(this);
    }

    else
    {
      AppleBCMWLANSkywalkInterface::enableDatapath(this);
    }
  }

  else
  {
    AppleBCMWLANSkywalkInterface::enableDatapath(this);
  }

  v6 = 3758097084;
  if ((this->OSObject::OSMetaClassBase::__vftable[19].isEqualTo)(this))
  {
    (this->OSObject::OSMetaClassBase::__vftable[19].isEqualTo)(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANSkywalkInterface::enableDatapath(this);
    }
  }

  return v6;
}

uint64_t AppleBCMWLANSkywalkInterface::enable(int64_t this, unsigned int a2)
{
  v4 = (this + 152);
  *(*(this + 152) + 184) = mach_continuous_time();
  if ((*(*this + 1088))(this))
  {
    (*(*this + 1088))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANSkywalkInterface::enable(this);
    }
  }

  v5 = IO80211SkywalkInterface::enable(this, a2);
  if ((*(*this + 1088))(this))
  {
    (*(*this + 1088))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANSkywalkInterface::enable(this, this & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000, this + 152);
    }
  }

  if (*(*v4 + 160) == 1)
  {
    *(*v4 + 161) = 1;
    if (AppleBCMWLANCore::isPoweredOn(*(*v4 + 24)) && (AppleBCMWLANCore::isWatchdogRunning(*(*v4 + 24)) & 1) == 0)
    {
      (*(*this + 1232))(this);
    }

    else if ((*(*this + 1088))(this))
    {
      (*(*this + 1088))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANSkywalkInterface::enable(this, this & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000, this + 152);
      }
    }
  }

  else
  {
    v5 = 3758097109;
    if ((*(*this + 1088))(this))
    {
      (*(*this + 1088))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANSkywalkInterface::enable(this);
      }
    }
  }

  (*(*this + 240))(this, 127, 128);
  if ((*(*this + 1088))(this))
  {
    (*(*this + 1088))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANSkywalkInterface::enable(this);
    }
  }

  return v5;
}

uint64_t AppleBCMWLANSkywalkInterface::disableDatapath(uint64_t this)
{
  v11 = 0;
  v2 = this & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000;
  if ((*(*this + 1088))(this))
  {
    (*(*this + 1088))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANSkywalkInterface::disableDatapath(this);
    }
  }

  if (acquireProperty<OSString>(this, "IO80211InterfaceRole", &v11, 0, "IOService"))
  {
    if ((*(*this + 1088))(this))
    {
      (*(*this + 1088))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANSkywalkInterface::disableDatapath(this, v2, &v11);
      }
    }
  }

  v3 = *(this + 152);
  if (*(v3 + 42))
  {
    v4 = 0;
    while (1)
    {
      v5 = *(v3 + 8 * v4 + 120);
      if (!v5)
      {
        break;
      }

      (*(*v5 + 272))(v5);
      ++v4;
      v3 = *(this + 152);
      if (v4 >= *(v3 + 42))
      {
        goto LABEL_12;
      }
    }

    AppleBCMWLANSkywalkInterface::disableDatapath(v4, this);
  }

  else
  {
LABEL_12:
    v6 = *(v3 + 152);
    if (v6)
    {
      (*(*v6 + 72))(v6);
      v3 = *(this + 152);
    }

    v7 = *(v3 + 104);
    if (v7)
    {
      (*(*v7 + 192))(v7);
      (*(**(*(this + 152) + 104) + 208))(*(*(this + 152) + 104));
      v8 = *(*(this + 152) + 96);
      if (v8)
      {
        (*(*v8 + 200))(v8);
        if ((*(*this + 1088))(this))
        {
          (*(*this + 1088))(this);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANSkywalkInterface::disableDatapath(this, v2, &v11);
          }
        }

        if (v11)
        {
          (v11->release)(v11);
        }

        return 0;
      }

      AppleBCMWLANSkywalkInterface::disableDatapath(this);
    }

    else
    {
      AppleBCMWLANSkywalkInterface::disableDatapath(this);
    }
  }

  v9 = 3758097084;
  if ((*(*this + 1088))(this))
  {
    (*(*this + 1088))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANSkywalkInterface::disableDatapath(this);
    }
  }

  return v9;
}

uint64_t AppleBCMWLANSkywalkInterface::disable(AppleBCMWLANSkywalkInterface *this, unsigned int a2)
{
  if ((*(*this + 1088))(this))
  {
    (*(*this + 1088))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANSkywalkInterface::disable(this);
    }
  }

  *(*(this + 19) + 192) = mach_continuous_time();
  result = IO80211SkywalkInterface::disable(this, a2);
  if (*(*(this + 19) + 161) == 1)
  {
    result = (*(*this + 1240))(this);
    *(*(this + 19) + 161) = 0;
  }

  return result;
}

uint64_t AppleBCMWLANSkywalkInterface::setMulticastAddresses(AppleBCMWLANSkywalkInterface *this, const ether_addr *a2, uint64_t a3)
{
  IO80211SkywalkInterface::validateDispatchQueue(this);
  if (IO80211SkywalkInterface::getInterfaceRole(this) != 1)
  {
    return 0;
  }

  if ((*(*this + 1088))(this))
  {
    (*(*this + 1088))(this);
    if (CCLogStream::shouldLog())
    {
      v9 = (*(*this + 1088))(this);
      CCLogStream::logInfo(v9, "[dk] %s@%d:count = %u, bEnable:%d\n", "setMulticastAddresses", 756, a3, a3 != 0);
    }
  }

  v6 = (*(**(*(this + 19) + 24) + 520))(*(*(this + 19) + 24), a3 != 0);
  if (v6)
  {
    v7 = v6;
    if ((*(*this + 1088))(this))
    {
      (*(*this + 1088))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANSkywalkInterface::setMulticastAddresses(this);
      }
    }
  }

  else if (a3)
  {
    v7 = (*(**(*(this + 19) + 24) + 528))(*(*(this + 19) + 24), a2, a3);
  }

  else
  {
    v7 = 0;
  }

  if ((*(*this + 1088))(this))
  {
    (*(*this + 1088))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANSkywalkInterface::setMulticastAddresses(this);
    }
  }

  return v7;
}

uint64_t AppleBCMWLANSkywalkInterface::setAllMulticastModeEnable(AppleBCMWLANSkywalkInterface *this, BOOL a2)
{
  if ((*(*this + 1088))(this))
  {
    (*(*this + 1088))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANSkywalkInterface::setAllMulticastModeEnable(this);
    }
  }

  IO80211SkywalkInterface::validateDispatchQueue(this);
  if (IO80211SkywalkInterface::getInterfaceRole(this) != 1)
  {
    return 0;
  }

  v4 = AppleBCMWLANCore::setAllMulticastModeEnable(*(*(this + 19) + 24), a2);
  if (v4)
  {
    if ((*(*this + 1088))(this))
    {
      (*(*this + 1088))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANSkywalkInterface::setAllMulticastModeEnable(this);
      }
    }
  }

  if ((*(*this + 1088))(this))
  {
    (*(*this + 1088))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANSkywalkInterface::setAllMulticastModeEnable(this);
    }
  }

  return v4;
}

uint64_t AppleBCMWLANSkywalkInterface::setCurrentApAddress(AppleBCMWLANSkywalkInterface *this, ether_addr *a2)
{
  if (a2)
  {
    IO80211InfraInterface::setCurrentApAddress(this, a2);
    if ((*(*this + 1088))(this))
    {
      (*(*this + 1088))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANSkywalkInterface::setCurrentApAddress(this, this & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000, a2->octet);
      }
    }

    *(*(this + 19) + 216) = 1;
    result = *(*(this + 19) + 24);
    if (result)
    {

      return AppleBCMWLANCore::resetCumulativePkts(result);
    }
  }

  else
  {
    if ((*(*this + 1088))(this))
    {
      (*(*this + 1088))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANSkywalkInterface::setCurrentApAddress(this, (this & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000));
      }
    }

    result = IO80211InfraInterface::setCurrentApAddress(this, 0);
    *(*(this + 19) + 216) = 0;
    v5 = *(this + 19);
    if (v5[161] == 1)
    {
      (*(**v5 + 72))(*v5, this);
      v6 = *(***(this + 19) + 64);

      return v6();
    }
  }

  return result;
}

uint64_t AppleBCMWLANSkywalkInterface::pendingPackets(AppleBCMWLANSkywalkInterface *this, unsigned int a2)
{
  result = *(*(this + 19) + 8 * a2 + 120);
  if (result)
  {
    return (*(*result + 232))();
  }

  return result;
}

uint64_t non-virtual thunk toAppleBCMWLANSkywalkInterface::pendingPackets(AppleBCMWLANSkywalkInterface *this, unsigned int a2)
{
  result = *(*(this + 9) + 8 * a2 + 120);
  if (result)
  {
    return (*(*result + 232))();
  }

  return result;
}

uint64_t AppleBCMWLANSkywalkInterface::packetSpace(AppleBCMWLANSkywalkInterface *this, unsigned int a2)
{
  result = *(*(this + 19) + 8 * a2 + 120);
  if (result)
  {
    return (*(*result + 224))();
  }

  return result;
}

uint64_t non-virtual thunk toAppleBCMWLANSkywalkInterface::packetSpace(AppleBCMWLANSkywalkInterface *this, unsigned int a2)
{
  result = *(*(this + 9) + 8 * a2 + 120);
  if (result)
  {
    return (*(*result + 224))();
  }

  return result;
}

uint64_t AppleBCMWLANSkywalkInterface::removePacketQueue(uint64_t *a1)
{
  v1 = a1[19];
  if (v1)
  {
    if (*v1 && v1[4])
    {
      (*(**v1 + 120))(*v1);
      if ((*(*a1 + 1088))(a1))
      {
        (*(*a1 + 1088))(a1);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANSkywalkInterface::removePacketQueue(a1);
        }
      }

      v3 = *(**(a1[19] + 32) + 760);

      return v3();
    }

    v5 = "AppleBCMWLANSkywalkInterface::removePacketQueue: remove packet queue, bus interface is not valid\n";
  }

  else
  {
    v5 = "AppleBCMWLANSkywalkInterface::removePacketQueue: No ivars\n";
  }

  return IOLog(v5);
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1088))(v1);
  OUTLINED_FUNCTION_9_4();
  return CCLogStream::logInfo(v3, "[dk] %s@%d:Removing flowID:%u\n", v5, v6, v7);
}

uint64_t AppleBCMWLANSkywalkInterface::powerOnNotification(AppleBCMWLANSkywalkInterface *this)
{
  result = (*(*this + 1088))(this);
  if (result)
  {
    (*(*this + 1088))(this);
    result = CCLogStream::shouldLog();
    if (result)
    {
      return AppleBCMWLANSkywalkInterface::powerOnNotification(this);
    }
  }

  return result;
}

uint64_t AppleBCMWLANSkywalkInterface::powerOffNotification(AppleBCMWLANSkywalkInterface *this)
{
  result = (*(*this + 1088))(this);
  if (result)
  {
    (*(*this + 1088))(this);
    result = CCLogStream::shouldLog();
    if (result)
    {
      return AppleBCMWLANSkywalkInterface::powerOffNotification(this);
    }
  }

  return result;
}

OSMetaClassBase *AppleBCMWLANSkywalkInterface::statsDump(IOService *this)
{
  v3 = 0;
  result = acquireProperty<OSString>(this, "IO80211InterfaceRole", &v3, 0, "IOService");
  if (result)
  {
    if ((this->OSObject::OSMetaClassBase::__vftable[19].isEqualTo)(this))
    {
      (this->OSObject::OSMetaClassBase::__vftable[19].isEqualTo)(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANSkywalkInterface::statsDump(this, this & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000, &v3);
      }
    }

    result = v3;
    if (v3)
    {
      return (v3->release)(v3);
    }
  }

  return result;
}

uint64_t AppleBCMWLANSkywalkInterface::printDataPath(IO80211InfraInterface *a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v5 = *(a2 + 28);
  v4 = *(a2 + 32);
  v6 = *(a2 + 24);
  v32 = (*(*a1 + 1072))() >> 32;
  IO80211InfraInterface::getCurrentApAddress(a1);
  if ((*(*a1 + 1088))(a1))
  {
    (*(*a1 + 1088))(a1);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANSkywalkInterface::printDataPath(a1);
    }
  }

  (*(*a1 + 1088))(a1);
  IO80211SkywalkInterface::getInterfaceRoleStr(a1);
  (*(*a1 + 160))(a1);
  v7 = IO80211Print() + v4;
  (*(*a1 + 1088))(a1);
  v8 = *(a1 + 19);
  v9 = *(v8 + 160);
  v10 = *(v8 + 161);
  (*(*a1 + 1168))(a1);
  v11 = *(a1 + 19);
  v30 = *(v11 + 162);
  v31 = *(v11 + 216);
  v12 = IO80211Print() + v7;
  (*(*a1 + 1088))(a1);
  IO80211_io80211isSensitiveInfoAllowed();
  IO80211_io80211isSensitiveInfoAllowed();
  IO80211_io80211isSensitiveInfoAllowed();
  IO80211_io80211isSensitiveInfoAllowed();
  IO80211_io80211isSensitiveInfoAllowed();
  IO80211_io80211isSensitiveInfoAllowed();
  v13 = IO80211Print() + v12;
  (*(*a1 + 1088))(a1);
  v14 = IO80211Print() + v13;
  v15 = *(*(a1 + 19) + 184);
  absolutetime_to_nanoseconds();
  v16 = *(*(a1 + 19) + 192);
  absolutetime_to_nanoseconds();
  (*(*a1 + 1088))(a1);
  v17 = IO80211Print() + v14;
  v18 = *(*(a1 + 19) + 200);
  absolutetime_to_nanoseconds();
  v19 = *(*(a1 + 19) + 208);
  absolutetime_to_nanoseconds();
  (*(*a1 + 1088))(a1);
  v20 = IO80211Print() + v17;
  if (*(*(a1 + 19) + 42))
  {
    v21 = 0;
    do
    {
      (*(*a1 + 1088))(a1);
      v22 = IO80211Print();
      v20 = (*(**(*(a1 + 19) + 8 * v21 + 120) + 216))(*(*(a1 + 19) + 8 * v21 + 120), v3, v5, v6, v22 + v20);
      ++v21;
    }

    while (v21 < *(*(a1 + 19) + 42));
  }

  (*(*a1 + 1088))(a1);
  v23 = IO80211Print();
  v24 = (*(**(*(a1 + 19) + 96) + 176))(*(*(a1 + 19) + 96), v3, v5, v6, v23 + v20);
  (*(*a1 + 1088))(a1);
  v25 = IO80211Print();
  v26 = (*(**(*(a1 + 19) + 104) + 184))(*(*(a1 + 19) + 104), v3, v5, v6, v25 + v24);
  if (IO80211SkywalkInterface::getInterfaceRole(a1) == 1)
  {
    (*(*a1 + 1088))(a1);
    v27 = IO80211Print();
    LODWORD(v26) = (*(***(a1 + 19) + 80))(**(a1 + 19), v3, v5, v6, v27 + v26);
  }

  v28 = *(a2 + 28) + v26;
  *(a2 + 24) -= v26;
  *(a2 + 28) = v28;
  IO80211SkywalkInterface::printDataPath();
  return 0;
}

uint64_t AppleBCMWLANSkywalkInterface::setPromiscuousModeEnable(AppleBCMWLANSkywalkInterface *this)
{
  IO80211SkywalkInterface::validateDispatchQueue(this);
  if ((*(*this + 1088))(this))
  {
    (*(*this + 1088))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANSkywalkInterface::setPromiscuousModeEnable(this);
    }
  }

  return 0;
}

uint64_t AppleBCMWLANSkywalkInterface::notifyQueueState(uint64_t a1, char a2, __int16 a3)
{
  v7[0] = 0xAAAAAAAAAAAAAAAALL;
  mach_continuous_time();
  absolutetime_to_nanoseconds();
  LOBYTE(v7[0]) = a2;
  WORD1(v7[0]) = a3;
  v7[1] = 0xAAAAAAAAAAAAAAAALL;
  return (*(*a1 + 568))(a1, 154, v7, 16, 1);
}

uint64_t AppleBCMWLANSkywalkInterface::bpfTap(AppleBCMWLANSkywalkInterface *this, unsigned int a2, unsigned int a3)
{
  IO80211SkywalkInterface::validateDispatchQueue(this);
  if ((*(*this + 1168))(this))
  {
    if ((*(*this + 1088))(this))
    {
      (*(*this + 1088))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANSkywalkInterface::bpfTap(this);
      }
    }
  }

  else
  {
    IO80211InfraInterface::bpfTap(this, a2, a3);
  }

  return 0;
}

uint64_t AppleBCMWLANSkywalkInterface::getTxSubQueue(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 152);
  v3 = *(v2 + 4 * a2 + 60);
  if (v3 >= *(v2 + 42))
  {
    return 0;
  }

  else
  {
    return *(v2 + 8 * v3 + 120);
  }
}

uint64_t non-virtual thunk toAppleBCMWLANSkywalkInterface::getTxSubQueue(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 72);
  v3 = *(v2 + 4 * a2 + 60);
  if (v3 >= *(v2 + 42))
  {
    return 0;
  }

  else
  {
    return *(v2 + 8 * v3 + 120);
  }
}

AppleBCMWLANSkywalkTxSubmissionQueue *AppleBCMWLANSkywalkInterface::getTxQueueDepth(AppleBCMWLANSkywalkInterface *this)
{
  result = *(*(this + 19) + 120);
  if (result)
  {
    return AppleBCMWLANSkywalkTxSubmissionQueue::getQueueDepth(result);
  }

  return result;
}

AppleBCMWLANSkywalkTxSubmissionQueue *non-virtual thunk toAppleBCMWLANSkywalkInterface::getTxQueueDepth(AppleBCMWLANSkywalkInterface *this)
{
  result = *(*(this + 9) + 120);
  if (result)
  {
    return AppleBCMWLANSkywalkTxSubmissionQueue::getQueueDepth(result);
  }

  return result;
}

AppleBCMWLANSkywalkRxCompletionQueue *AppleBCMWLANSkywalkInterface::getRxQueueCapacity(AppleBCMWLANSkywalkInterface *this)
{
  result = *(*(this + 19) + 104);
  if (result)
  {
    return AppleBCMWLANSkywalkRxCompletionQueue::getQueueCapacity(result);
  }

  return result;
}

AppleBCMWLANSkywalkRxCompletionQueue *non-virtual thunk toAppleBCMWLANSkywalkInterface::getRxQueueCapacity(AppleBCMWLANSkywalkInterface *this)
{
  result = *(*(this + 9) + 104);
  if (result)
  {
    return AppleBCMWLANSkywalkRxCompletionQueue::getQueueCapacity(result);
  }

  return result;
}

uint64_t AppleBCMWLANSkywalkInterface::setInterfaceUnitNumber(AppleBCMWLANSkywalkInterface *this, int a2)
{
  result = (*(*this + 1088))(this);
  if (result)
  {
    (*(*this + 1088))(this);
    result = CCLogStream::shouldLog();
    if (result)
    {
      result = AppleBCMWLANSkywalkInterface::setInterfaceUnitNumber(this);
    }
  }

  *(*(this + 19) + 164) = a2;
  return result;
}

uint64_t AppleBCMWLANSkywalkInterface::setInterfaceEnable(AppleBCMWLANSkywalkInterface *this, int a2)
{
  v4 = this & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000;
  if ((*(*this + 1088))(this))
  {
    (*(*this + 1088))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANSkywalkInterface::setInterfaceEnable(this, v4, a2);
    }
  }

  if (IO80211SkywalkInterface::getInterfaceRole(this) == 1 && *(*(this + 19) + 161) == a2)
  {
    if ((*(*this + 1088))(this))
    {
      (*(*this + 1088))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANSkywalkInterface::setInterfaceEnable(this);
      }
    }

    return 0;
  }

  IO80211SkywalkInterface::validateDispatchQueue(this);
  if (!IO80211InfraInterface::setInterfaceEnable(this, a2) || !(*(*this + 1088))(this) || ((*(*this + 1088))(this), !CCLogStream::shouldLog()))
  {
    if (a2)
    {
      goto LABEL_13;
    }

LABEL_20:
    if ((*(*this + 1088))(this))
    {
      (*(*this + 1088))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANSkywalkInterface::setInterfaceEnable(this);
      }
    }

    *(*(this + 19) + 208) = mach_continuous_time();
    (*(*this + 1328))(this, 0);
    v5 = *(this + 19);
    if (*(v5 + 163) == 1)
    {
      (*(**(v5 + 112) + 200))(*(v5 + 112));
      *(*(this + 19) + 163) = 0;
    }

    AppleBCMWLANSkywalkInterface::setRunningState(this, 0);
    goto LABEL_26;
  }

  AppleBCMWLANSkywalkInterface::setInterfaceEnable(this);
  if (!a2)
  {
    goto LABEL_20;
  }

LABEL_13:
  *(*(this + 19) + 200) = mach_continuous_time();
  if ((*(*this + 1088))(this))
  {
    (*(*this + 1088))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANSkywalkInterface::setInterfaceEnable(this);
    }
  }

  AppleBCMWLANSkywalkInterface::setRunningState(this, 1);
  (*(*this + 1320))(this, 0);
  if ((*(*(this + 19) + 163) & 1) == 0 && IO80211SkywalkInterface::getInterfaceRole(this) == 1)
  {
    (*(**(*(this + 19) + 112) + 192))(*(*(this + 19) + 112));
    *(*(this + 19) + 163) = 1;
  }

LABEL_26:
  *(*(this + 19) + 161) = a2;
  if ((*(*this + 1088))(this))
  {
    (*(*this + 1088))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANSkywalkInterface::setInterfaceEnable(this, v4, this + 152, a2);
    }
  }

  return 0;
}

uint64_t AppleBCMWLANSkywalkInterface::flushFlowQueues(AppleBCMWLANSkywalkInterface *this, ether_addr *a2)
{
  result = (*(*this + 1088))(this);
  if (result)
  {
    (*(*this + 1088))(this);
    result = CCLogStream::shouldLog();
    if (result)
    {
      result = AppleBCMWLANSkywalkInterface::flushFlowQueues(this, this & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000, a2->octet);
    }
  }

  v5 = *(this + 19);
  if (*(v5 + 42))
  {
    v6 = 0;
    do
    {
      result = (*(**(v5 + 8 * v6 + 120) + 248))(*(v5 + 8 * v6 + 120), a2);
      ++v6;
      v5 = *(this + 19);
    }

    while (v6 < *(v5 + 42));
  }

  return result;
}

uint64_t AppleBCMWLANSkywalkInterface::findPeer(AppleBCMWLANSkywalkInterface *this, ether_addr *a2)
{
  if (IO80211SkywalkInterface::getInterfaceRole(this) == 1)
  {

    return IO80211SkywalkInterface::findPeer(this, a2);
  }

  else
  {
    CompanionInterfaceId = IO80211SkywalkInterface::getCompanionInterfaceId(this);
    v5 = *(*(*(**(*(this + 19) + 24) + 1992))(*(*(this + 19) + 24), CompanionInterfaceId) + 1032);

    return v5();
  }
}

OSObject *AppleBCMWLANChipManagerPCIe0x4377b::withChip(AppleBCMWLANChipManagerPCIe0x4377b *this, uint64_t a2)
{
  v6 = 0xAAAAAAAAAAAAAAAALL;
  if (OSObjectAllocate(gAppleBCMWLANChipManagerPCIe0x4377bMetaClass, &v6))
  {
    return 0;
  }

  v4 = v6;
  if (v6 && ((v6->OSMetaClassBase::__vftable[4].isEqualTo)(v6, this, a2) & 1) == 0)
  {
    (v4->release)(v4);
    return 0;
  }

  return v4;
}

BOOL AppleBCMWLANChipManagerPCIe0x4377b::initWithChip(OSObject *this)
{
  result = AppleBCMWLANChipManagerPCIe::init(this);
  if (result)
  {
    AppleBCMWLANChipManagerPCIe::setOTPCoreID(this, 0);
    AppleBCMWLANChipManagerPCIe::setAWDLSupported(this, 1);
    AppleBCMWLANChipManagerPCIe::setChipNumber(this, 4377);
    AppleBCMWLANChipManagerPCIe::setCoreCount(this, 9);
    AppleBCMWLANChipManagerPCIe::setCoreRegionList(this, &kBCOM4377ChipCores);
    AppleBCMWLANChipManagerPCIe::setWrapperCount(this, 17);
    AppleBCMWLANChipManagerPCIe::setWrapperRegionList(this, &kBCOM4377ChipWrappers);
    AppleBCMWLANChipManagerPCIe::setMemoryCount(this, 7);
    AppleBCMWLANChipManagerPCIe::setMemoryRegionList(this, &kBCOM4377B0ChipMemories);
    AppleBCMWLANChipManagerPCIe::setBackplaneWindowCount(this, 8);
    AppleBCMWLANChipManagerPCIe::setBackplaneWindows(this, &kBCOM4377ChipBackplaneWindows);
    AppleBCMWLANChipManagerPCIe::setOTPCoreID(this, 8);
    AppleBCMWLANChipManagerPCIe::setUserOTPRange(this, &kBCOM4377B0ChipUserOTP);
    AppleBCMWLANChipManagerPCIe::setChipOTPRange(this, &kBCOM4377ChipOTP);
    AppleBCMWLANChipManagerPCIe::setCoreIDTable(this, kBCOM4377CoreIDTable);
    AppleBCMWLANChipManagerPCIe::setUCodeRegionInfo(this, &kBCOM4377UCodeSCRRegionInfo, 0);
    AppleBCMWLANChipManagerPCIe::setUCodeRegionInfo(this, &kBCOM4377UCodeSHMRegionInfo, 1);
    AppleBCMWLANChipManagerPCIe::setConfigSpaceSaveRange(this, &kBCOM4377ChipConfigSpaceStateTable);
    AppleBCMWLANChipManagerPCIe::setConfigSpaceSaveCount(this, 3);
    AppleBCMWLANChipManagerPCIe::setMemoryRAMAddress(this, 1507328);
    AppleBCMWLANChipManagerPCIe::setPCIeHeaderLength(this, 256);
    AppleBCMWLANChipManagerPCIe::setSROMVersion(this, 18);
    AppleBCMWLANChipManagerPCIe::setSROMWordCount(this, 1024);
    AppleBCMWLANChipManagerPCIe::setSROMSignature(this, 17271);
    SROMWordCount = AppleBCMWLANChipManagerPCIe::getSROMWordCount(this);
    AppleBCMWLANChipManagerPCIe::setSROMoffsetVersion(this, 2 * SROMWordCount - 2);
    AppleBCMWLANChipManagerPCIe::setSROMoffsetSignature(this, 224);
    AppleBCMWLANChipManagerPCIe::setSROMoffsetMacAddress(this, 226);
    AppleBCMWLANChipManagerPCIe::setSROMoffsetSKU(this, 236);
    AppleBCMWLANChipManagerPCIe::setMultiFunctionChip(this, 1);
    AppleBCMWLANChipManagerPCIe::setSafeToCaptureSoCRAM(this, 1);
    AppleBCMWLANChipManagerPCIe::setHMAPSupported(this, 1);
    AppleBCMWLANChipManagerPCIe::setHMAPBaseAddress(this, 1408);
    AppleBCMWLANChipManagerPCIe::sethostWakeToggleNotConfigured(this, 1);
    AppleBCMWLANChipManagerPCIe::setTrapBeforeFLRUnSupported(this, 1);
    AppleBCMWLANChipManagerPCIe::setASPMWorkaround(this, 1);
    AppleBCMWLANChipManagerPCIe::setNotSplitArchitecture(this, 1);
    AppleBCMWLANChipManagerPCIe::setBootMSIUnsupported(this, 1);
    AppleBCMWLANChipManagerPCIe::setPCIeBootMinPollingDelay(this, 200);
    v9 = 0;
    while (1)
    {
      BackplaneWindows = AppleBCMWLANChipManagerPCIe::getBackplaneWindows(this);
      PacketCount = AppleBCMWLANPCIeFlowQueue::getPacketCount(this);
      if (!AppleBCMWLANChipManagerPCIe::findRemappableWindow(BackplaneWindows, PacketCount, 0, &v9))
      {
        break;
      }

      AppleBCMWLANChipManagerPCIe::incrementCoreRemapperCount(this);
    }

    v9 = 0;
    while (1)
    {
      v6 = AppleBCMWLANChipManagerPCIe::getBackplaneWindows(this);
      v7 = AppleBCMWLANPCIeFlowQueue::getPacketCount(this);
      if (!AppleBCMWLANChipManagerPCIe::findRemappableWindow(v6, v7, 1, &v9))
      {
        break;
      }

      AppleBCMWLANChipManagerPCIe::incrementWrapperRemapperCount(this);
    }

    v8 = OSDictionary::withCapacity(0x20u);
    return AppleBCMWLANChipManagerPCIe::setChipProvisioningData(this, v8);
  }

  return result;
}

OSObject *AppleBCMWLANTxPowerManager::withDriver(AppleBCMWLANTxPowerManager *this, AppleBCMWLANCore *a2)
{
  v5 = 0xAAAAAAAAAAAAAAAALL;
  if (OSObjectAllocate(gAppleBCMWLANTxPowerManagerMetaClass, &v5))
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

uint64_t AppleBCMWLANTxPowerManager::initWithDriver(OSObject *this, AppleBCMWLANCore *a2)
{
  v4 = OSObject::init(this);
  v5 = 0;
  if (!a2 || !v4)
  {
    return v5;
  }

  v6 = IOMallocZeroTyped();
  *&this[1].refcount = v6;
  p_refcount = &this[1].refcount;
  if (!v6)
  {
    return 0;
  }

  *v6 = a2;
  *(*p_refcount + 3) = (*(*a2 + 1952))(a2);
  v8 = *(*p_refcount + 3);
  if (!v8)
  {
    ClassNameHelper = getClassNameHelper(this);
    IOLog("%s::%s(): Unable to get debug logger\n", ClassNameHelper, "initWithDriver");
LABEL_11:
    AppleBCMWLANTxPowerManager::freeResources(this);
    v15 = *&this[1].refcount;
    if (v15)
    {
      memset_s(v15, 0x168E0uLL, 0, 0x168E0uLL);
      if (*p_refcount)
      {
        IOFree(*p_refcount, 0x168E0uLL);
        v5 = 0;
        *p_refcount = 0;
        return v5;
      }
    }

    return 0;
  }

  (*(*v8 + 8))(v8);
  *(*p_refcount + 1) = AppleBCMWLANCore::getConfigManager(a2);
  v9 = *(*p_refcount + 1);
  if (!v9)
  {
    AppleBCMWLANTxPowerManager::initWithDriver(*p_refcount);
    goto LABEL_11;
  }

  (*(*v9 + 8))(v9);
  *(*p_refcount + 2) = AppleBCMWLANCore::getCommander(a2);
  v10 = *(*p_refcount + 2);
  if (!v10)
  {
    AppleBCMWLANTxPowerManager::initWithDriver(*p_refcount);
    goto LABEL_11;
  }

  (*(*v10 + 8))(v10);
  *(*p_refcount + 4) = AppleBCMWLANCore::getFaultReporter(**p_refcount);
  (*(**(*p_refcount + 4) + 8))(*(*p_refcount + 4));
  *(*p_refcount + 40) = 0;
  *(*p_refcount + 41) = 0;
  v11 = *p_refcount;
  v12 = **p_refcount;
  if (v12)
  {
    AppleBCMWLANCore::is4387C0(v12);
    v11 = *p_refcount;
  }

  v5 = 1;
  v11[12] = 1;
  *(*p_refcount + 26) = 1;
  *(*p_refcount + 14) = 0;
  *(*p_refcount + 15) = 1250;
  *(*p_refcount + 16) = 250;
  *(*p_refcount + 17) = 1;
  AppleBCMWLANCore::getLqmRssiLevels(**p_refcount, *p_refcount + 72);
  *(*p_refcount + 20) = 0;
  *(*p_refcount + 11) = 0;
  *(*p_refcount + 23092) = 0;
  *(*p_refcount + 23093) = 0;
  *(*p_refcount + 23094) = 0;
  *(*p_refcount + 23095) = 0;
  *(*p_refcount + 30) = -65;
  *(*p_refcount + 31) = -80;
  *(*p_refcount + 42) = 0;
  *(*p_refcount + 22) = 0;
  *(*p_refcount + 23) = 0;
  *(*p_refcount + 16) = 0;
  *(*p_refcount + 17) = 0;
  *(*p_refcount + 18) = 0;
  *(*p_refcount + 19) = 0;
  *(*p_refcount + 20) = 0;
  *(*p_refcount + 92) = 0;
  *(*p_refcount + 188) = 0;
  *(*p_refcount + 196) = 0;
  v13 = *p_refcount;
  v13[14] = 0xFFFFFF9CFFFFFFB0;
  *(v13 + 6) = dynSARpwrBoostRssiLUTPreset;
  bzero(*p_refcount + 208, 0x16800uLL);
  return v5;
}

uint64_t AppleBCMWLANTxPowerManager::freeResources(AppleBCMWLANTxPowerManager *this)
{
  v2 = this + 48;
  v1 = *(this + 6);
  if (*(v1 + 24))
  {
    shouldLog = CCLogStream::shouldLog();
    v1 = *v2;
    if (shouldLog)
    {
      CCLogStream::logNoticeIf(*(v1 + 24), 0x20uLL, "[dk] %s@%d:TXPWR_PROFILE: Enter %s \n", "freeResources", 215, "freeResources");
      v1 = *v2;
    }
  }

  v4 = *(v1 + 24);
  if (v4)
  {
    (*(*v4 + 16))(v4);
    *(*v2 + 24) = 0;
    v1 = *v2;
  }

  v5 = *(v1 + 8);
  if (v5)
  {
    (*(*v5 + 16))(v5);
    *(*v2 + 8) = 0;
    v1 = *v2;
  }

  v6 = *(v1 + 16);
  if (v6)
  {
    (*(*v6 + 16))(v6);
    *(*v2 + 16) = 0;
    v1 = *v2;
  }

  v7 = *(v1 + 32);
  if (v7)
  {
    (*(*v7 + 16))(v7);
    *(*v2 + 32) = 0;
    v1 = *v2;
  }

  result = *(v1 + 24);
  if (result)
  {
    result = CCLogStream::shouldLog();
    if (result)
    {
      return AppleBCMWLANTxPowerManager::freeResources(v2);
    }
  }

  return result;
}

void AppleBCMWLANTxPowerManager::free(AppleBCMWLANTxPowerManager *this)
{
  AppleBCMWLANTxPowerManager::freeResources(this);
  v2 = *(this + 6);
  if (v2)
  {
    memset_s(v2, 0x168E0uLL, 0, 0x168E0uLL);
    v3 = *(this + 6);
    if (v3)
    {
      IOFree(v3, 0x168E0uLL);
      *(this + 6) = 0;
    }
  }

  OSObject::free(this);
}

uint64_t AppleBCMWLANTxPowerManager::sendDynSARStatsEventCoreAnalytics(uint64_t a1, uint64_t a2)
{
  if (*a2)
  {
    v4 = "com.apple.wifi.dsaStats.slice1";
  }

  else
  {
    v4 = "com.apple.wifi.dsaStats.slice0";
  }

  v5 = OSString::withCString(v4);
  if (!v5)
  {
    return AppleBCMWLANTxPowerManager::sendDynSARStatsEventCoreAnalytics(a1);
  }

  v6 = v5;
  v7 = OSDictionary::withCapacity(0x12u);
  if (!v7)
  {
    AppleBCMWLANTxPowerManager::sendDynSARStatsEventCoreAnalytics(a1);
    goto LABEL_46;
  }

  v8 = OSString::withCString("State");
  if (!v8)
  {
    AppleBCMWLANTxPowerManager::sendDynSARStatsEventCoreAnalytics(a1);
    goto LABEL_46;
  }

  v9 = v8;
  v10 = OSNumber::withNumber(*(a2 + 64), 0x10uLL);
  if (!v10)
  {
    v68 = *(a1 + 48);
    v67 = a1 + 48;
    if (!*(v68 + 24) || (CCLogStream::shouldLog() & 1) == 0)
    {
      goto LABEL_124;
    }

    v69 = 265;
    goto LABEL_126;
  }

  v11 = v10;
  OSDictionary::setObject(v7, v9, v10);
  (v9->release)(v9);
  (v11->release)(v11);
  v12 = OSString::withCString("PowerBoost");
  if (!v12)
  {
    AppleBCMWLANTxPowerManager::sendDynSARStatsEventCoreAnalytics(a1);
    goto LABEL_46;
  }

  v9 = v12;
  v13 = OSNumber::withNumber(*(a2 + 66), 0x10uLL);
  if (!v13)
  {
    v70 = *(a1 + 48);
    v67 = a1 + 48;
    if (!*(v70 + 24) || (CCLogStream::shouldLog() & 1) == 0)
    {
      goto LABEL_124;
    }

    v69 = 273;
    goto LABEL_126;
  }

  v14 = v13;
  OSDictionary::setObject(v7, v9, v13);
  (v9->release)(v9);
  (v14->release)(v14);
  v15 = OSString::withCString("TxDCAnt0");
  if (!v15)
  {
    AppleBCMWLANTxPowerManager::sendDynSARStatsEventCoreAnalytics(a1);
    goto LABEL_46;
  }

  v9 = v15;
  v16 = OSNumber::withNumber(*(a2 + 68), 8uLL);
  if (!v16)
  {
    v71 = *(a1 + 48);
    v67 = a1 + 48;
    if (!*(v71 + 24) || (CCLogStream::shouldLog() & 1) == 0)
    {
      goto LABEL_124;
    }

    v69 = 281;
    goto LABEL_126;
  }

  v17 = v16;
  OSDictionary::setObject(v7, v9, v16);
  (v9->release)(v9);
  (v17->release)(v17);
  v18 = OSString::withCString("TxDCAnt1");
  if (!v18)
  {
    AppleBCMWLANTxPowerManager::sendDynSARStatsEventCoreAnalytics(a1);
    goto LABEL_46;
  }

  v9 = v18;
  v19 = OSNumber::withNumber(*(a2 + 70), 8uLL);
  if (!v19)
  {
    v72 = *(a1 + 48);
    v67 = a1 + 48;
    if (!*(v72 + 24) || (CCLogStream::shouldLog() & 1) == 0)
    {
      goto LABEL_124;
    }

    v69 = 289;
    goto LABEL_126;
  }

  v20 = v19;
  OSDictionary::setObject(v7, v9, v19);
  (v9->release)(v9);
  (v20->release)(v20);
  v21 = OSString::withCString("TxDCAnt2");
  if (!v21)
  {
    AppleBCMWLANTxPowerManager::sendDynSARStatsEventCoreAnalytics(a1);
    goto LABEL_46;
  }

  v9 = v21;
  v22 = OSNumber::withNumber(*(a2 + 72), 8uLL);
  if (!v22)
  {
    v73 = *(a1 + 48);
    v67 = a1 + 48;
    if (!*(v73 + 24) || (CCLogStream::shouldLog() & 1) == 0)
    {
      goto LABEL_124;
    }

    v69 = 297;
    goto LABEL_126;
  }

  v23 = v22;
  OSDictionary::setObject(v7, v9, v22);
  (v9->release)(v9);
  (v23->release)(v23);
  v24 = OSString::withCString("TxDCAnt3");
  if (!v24)
  {
    AppleBCMWLANTxPowerManager::sendDynSARStatsEventCoreAnalytics(a1);
    goto LABEL_46;
  }

  v9 = v24;
  v25 = OSNumber::withNumber(*(a2 + 74), 8uLL);
  if (!v25)
  {
    v74 = *(a1 + 48);
    v67 = a1 + 48;
    if (!*(v74 + 24) || (CCLogStream::shouldLog() & 1) == 0)
    {
      goto LABEL_124;
    }

    v69 = 305;
    goto LABEL_126;
  }

  v26 = v25;
  OSDictionary::setObject(v7, v9, v25);
  (v9->release)(v9);
  (v26->release)(v26);
  v27 = OSString::withCString("UtilAnt0");
  if (!v27)
  {
    AppleBCMWLANTxPowerManager::sendDynSARStatsEventCoreAnalytics(a1);
    goto LABEL_46;
  }

  v9 = v27;
  v28 = OSNumber::withNumber(*(a2 + 69), 8uLL);
  if (!v28)
  {
    v75 = *(a1 + 48);
    v67 = a1 + 48;
    if (!*(v75 + 24) || (CCLogStream::shouldLog() & 1) == 0)
    {
      goto LABEL_124;
    }

    v69 = 313;
    goto LABEL_126;
  }

  v29 = v28;
  OSDictionary::setObject(v7, v9, v28);
  (v9->release)(v9);
  (v29->release)(v29);
  v30 = OSString::withCString("UtilAnt1");
  if (!v30)
  {
    AppleBCMWLANTxPowerManager::sendDynSARStatsEventCoreAnalytics(a1);
    goto LABEL_46;
  }

  v9 = v30;
  v31 = OSNumber::withNumber(*(a2 + 71), 8uLL);
  if (!v31)
  {
    v76 = *(a1 + 48);
    v67 = a1 + 48;
    if (!*(v76 + 24) || (CCLogStream::shouldLog() & 1) == 0)
    {
      goto LABEL_124;
    }

    v69 = 321;
    goto LABEL_126;
  }

  v32 = v31;
  OSDictionary::setObject(v7, v9, v31);
  (v9->release)(v9);
  (v32->release)(v32);
  v33 = OSString::withCString("UtilAnt2");
  if (!v33)
  {
    AppleBCMWLANTxPowerManager::sendDynSARStatsEventCoreAnalytics(a1);
    goto LABEL_46;
  }

  v9 = v33;
  v34 = OSNumber::withNumber(*(a2 + 73), 8uLL);
  if (!v34)
  {
    v77 = *(a1 + 48);
    v67 = a1 + 48;
    if (!*(v77 + 24) || (CCLogStream::shouldLog() & 1) == 0)
    {
      goto LABEL_124;
    }

    v69 = 329;
    goto LABEL_126;
  }

  v35 = v34;
  OSDictionary::setObject(v7, v9, v34);
  (v9->release)(v9);
  (v35->release)(v35);
  v36 = OSString::withCString("UtilAnt3");
  if (!v36)
  {
    AppleBCMWLANTxPowerManager::sendDynSARStatsEventCoreAnalytics(a1);
    goto LABEL_46;
  }

  v9 = v36;
  v37 = OSNumber::withNumber(*(a2 + 75), 8uLL);
  if (!v37)
  {
    v78 = *(a1 + 48);
    v67 = a1 + 48;
    if (!*(v78 + 24) || (CCLogStream::shouldLog() & 1) == 0)
    {
      goto LABEL_124;
    }

    v69 = 337;
    goto LABEL_126;
  }

  v38 = v37;
  OSDictionary::setObject(v7, v9, v37);
  (v9->release)(v9);
  (v38->release)(v38);
  v39 = OSString::withCString("NoOptDur");
  if (!v39)
  {
    AppleBCMWLANTxPowerManager::sendDynSARStatsEventCoreAnalytics(a1);
    goto LABEL_46;
  }

  v9 = v39;
  v40 = OSNumber::withNumber(*(a2 + 8), 0x40uLL);
  if (!v40)
  {
    v79 = *(a1 + 48);
    v67 = a1 + 48;
    if (!*(v79 + 24) || (CCLogStream::shouldLog() & 1) == 0)
    {
      goto LABEL_124;
    }

    v69 = 345;
    goto LABEL_126;
  }

  v41 = v40;
  OSDictionary::setObject(v7, v9, v40);
  (v9->release)(v9);
  (v41->release)(v41);
  v42 = OSString::withCString("PwrOptDur");
  if (!v42)
  {
    AppleBCMWLANTxPowerManager::sendDynSARStatsEventCoreAnalytics(a1);
    goto LABEL_46;
  }

  v9 = v42;
  v43 = OSNumber::withNumber(*(a2 + 16), 0x40uLL);
  if (!v43)
  {
    v80 = *(a1 + 48);
    v67 = a1 + 48;
    if (!*(v80 + 24) || (CCLogStream::shouldLog() & 1) == 0)
    {
      goto LABEL_124;
    }

    v69 = 353;
    goto LABEL_126;
  }

  v44 = v43;
  OSDictionary::setObject(v7, v9, v43);
  (v9->release)(v9);
  (v44->release)(v44);
  v45 = OSString::withCString("FailSafeDur");
  if (!v45)
  {
    AppleBCMWLANTxPowerManager::sendDynSARStatsEventCoreAnalytics(a1);
    goto LABEL_46;
  }

  v9 = v45;
  v46 = OSNumber::withNumber(*(a2 + 24), 0x40uLL);
  if (!v46)
  {
    v81 = *(a1 + 48);
    v67 = a1 + 48;
    if (!*(v81 + 24) || (CCLogStream::shouldLog() & 1) == 0)
    {
      goto LABEL_124;
    }

    v69 = 361;
    goto LABEL_126;
  }

  v47 = v46;
  OSDictionary::setObject(v7, v9, v46);
  (v9->release)(v9);
  (v47->release)(v47);
  v48 = OSString::withCString("NoMuteDur");
  if (!v48)
  {
    AppleBCMWLANTxPowerManager::sendDynSARStatsEventCoreAnalytics(a1);
    goto LABEL_46;
  }

  v9 = v48;
  v49 = OSNumber::withNumber(*(a2 + 32), 0x40uLL);
  if (!v49)
  {
    v82 = *(a1 + 48);
    v67 = a1 + 48;
    if (!*(v82 + 24) || (CCLogStream::shouldLog() & 1) == 0)
    {
      goto LABEL_124;
    }

    v69 = 369;
    goto LABEL_126;
  }

  v50 = v49;
  OSDictionary::setObject(v7, v9, v49);
  (v9->release)(v9);
  (v50->release)(v50);
  v51 = OSString::withCString("HybridDur");
  if (!v51)
  {
    AppleBCMWLANTxPowerManager::sendDynSARStatsEventCoreAnalytics(a1);
    goto LABEL_46;
  }

  v9 = v51;
  v52 = OSNumber::withNumber(*(a2 + 40), 0x40uLL);
  if (!v52)
  {
    v83 = *(a1 + 48);
    v67 = a1 + 48;
    if (!*(v83 + 24) || (CCLogStream::shouldLog() & 1) == 0)
    {
      goto LABEL_124;
    }

    v69 = 377;
    goto LABEL_126;
  }

  v53 = v52;
  OSDictionary::setObject(v7, v9, v52);
  (v9->release)(v9);
  (v53->release)(v53);
  v54 = OSString::withCString("TxDCThrottleDur");
  if (!v54)
  {
    AppleBCMWLANTxPowerManager::sendDynSARStatsEventCoreAnalytics(a1);
    goto LABEL_46;
  }

  v9 = v54;
  v55 = OSNumber::withNumber(*(a2 + 48), 0x40uLL);
  if (!v55)
  {
    v84 = *(a1 + 48);
    v67 = a1 + 48;
    if (!*(v84 + 24) || (CCLogStream::shouldLog() & 1) == 0)
    {
      goto LABEL_124;
    }

    v69 = 385;
    goto LABEL_126;
  }

  v56 = v55;
  OSDictionary::setObject(v7, v9, v55);
  (v9->release)(v9);
  (v56->release)(v56);
  v57 = OSString::withCString("PwrOptTxDCThrottleDur");
  if (!v57)
  {
    AppleBCMWLANTxPowerManager::sendDynSARStatsEventCoreAnalytics(a1);
    goto LABEL_46;
  }

  v9 = v57;
  v58 = OSNumber::withNumber(*(a2 + 56), 0x40uLL);
  if (!v58)
  {
    v85 = *(a1 + 48);
    v67 = a1 + 48;
    if (!*(v85 + 24) || (CCLogStream::shouldLog() & 1) == 0)
    {
      goto LABEL_124;
    }

    v69 = 393;
    goto LABEL_126;
  }

  v59 = v58;
  OSDictionary::setObject(v7, v9, v58);
  (v9->release)(v9);
  (v59->release)(v59);
  v60 = OSString::withCString("Updates");
  if (!v60)
  {
    AppleBCMWLANTxPowerManager::sendDynSARStatsEventCoreAnalytics(a1);
    goto LABEL_46;
  }

  v9 = v60;
  v61 = OSNumber::withNumber(*(a2 + 76), 0x20uLL);
  if (v61)
  {
    v62 = v61;
    OSDictionary::setObject(v7, v9, v61);
    (v9->release)(v9);
    (v62->release)(v62);
    v64 = *(a1 + 48);
    v63 = a1 + 48;
    if (IOService::CoreAnalyticsSendEvent(*v64, 0, v6, v7, 0) && *(*v63 + 24) && CCLogStream::shouldLog())
    {
      AppleBCMWLANTxPowerManager::sendDynSARStatsEventCoreAnalytics(v63, v6);
    }

    goto LABEL_46;
  }

  v86 = *(a1 + 48);
  v67 = a1 + 48;
  if (*(v86 + 24) && (CCLogStream::shouldLog() & 1) != 0)
  {
    v69 = 401;
LABEL_126:
    CCLogStream::logAlert(*(*v67 + 24), "[dk] %s@%d:Fail to allocate numValue\n", "sendDynSARStatsEventCoreAnalytics", v69);
  }

LABEL_124:
  (v9->release)(v9);
LABEL_46:
  result = (v6->release)(v6);
  if (v7)
  {
    release = v7->release;

    return (release)(v7);
  }

  return result;
}

uint64_t AppleBCMWLANTxPowerManager::updateDynSARCurState(AppleBCMWLANTxPowerManager *this, __int16 a2)
{
  v2 = this + 48;
  *(*(this + 6) + 52) = a2;
  result = *(*(this + 6) + 24);
  if (result)
  {
    result = CCLogStream::shouldLog();
    if (result)
    {
      return AppleBCMWLANTxPowerManager::updateDynSARCurState(v2);
    }
  }

  return result;
}

uint64_t AppleBCMWLANTxPowerManager::updateRssiThreshFromBootArgs(uint64_t this, int *a2, int *a3)
{
  if (a2)
  {
    if (a3)
    {
      v3 = *a2;
      if ((*a2 + 99) <= 0x58 && *a3 < v3 && *a3 >= -99)
      {
        *(*(this + 48) + 100) = v3;
        *(*(this + 48) + 104) = *a2;
        v4 = *a3;
        *(*(this + 48) + 108) = *a3;
        *(*(this + 48) + 112) = v4;
      }
    }
  }

  return this;
}

AppleBCMWLANConfigManager *AppleBCMWLANTxPowerManager::getDynSARPwrBoostPerRSSI(AppleBCMWLANTxPowerManager *this, int a2)
{
  v2 = *(this + 6);
  v3 = (v2 + 100);
  v4 = 1;
  v5 = (v2 + 100);
  while (1)
  {
    v6 = *v5;
    v5 += 2;
    if (v6 <= a2 && *(v3 - 1) > a2)
    {
      break;
    }

    ++v4;
    v3 = v5;
    if (v4 == 4)
    {
      return 0;
    }
  }

  result = *(v2 + 8);
  if (result)
  {
    return *(AppleBCMWLANConfigManager::getDynSARPwrBoostCtl(result) + v4);
  }

  return result;
}

uint64_t AppleBCMWLANTxPowerManager::getDynSARDetailCurId(AppleBCMWLANTxPowerManager *this, int a2)
{
  v2 = 92368;
  if (a2)
  {
    v2 = 92372;
  }

  return *(*(this + 6) + v2);
}

uint64_t AppleBCMWLANTxPowerManager::getDynSARDetailCircled(AppleBCMWLANTxPowerManager *this, int a2)
{
  v2 = 92376;
  if (a2)
  {
    v2 = 92380;
  }

  return *(*(this + 6) + v2);
}

uint64_t AppleBCMWLANTxPowerManager::getDynSARDetailReportPerSlicePerAnt(AppleBCMWLANTxPowerManager *this, int a2, unsigned int a3)
{
  v3 = 46288;
  if (!a2)
  {
    v3 = 208;
  }

  return *(this + 6) + v3 + 11520 * a3;
}

uint64_t AppleBCMWLANTxPowerManager::handleConfigureDynSARModeAsyncCallback(uint64_t a1, uint64_t a2, int a3)
{
  v4 = (a1 + 48);
  if (*(*(a1 + 48) + 24) && CCLogStream::shouldLog())
  {
    AppleBCMWLANTxPowerManager::handleConfigureDynSARModeAsyncCallback(v4);
  }

  result = (*v4)[3];
  if (a3)
  {
    if (result)
    {
      result = CCLogStream::shouldLog();
      if (result)
      {
        return AppleBCMWLANTxPowerManager::handleConfigureDynSARModeAsyncCallback(v4);
      }
    }
  }

  else if (result)
  {
    result = CCLogStream::shouldLog();
    if (result)
    {
      return AppleBCMWLANTxPowerManager::handleConfigureDynSARModeAsyncCallback(v4);
    }
  }

  return result;
}

uint64_t AppleBCMWLANTxPowerManager::handleConfigureTxSDBAsyncCallback(uint64_t a1, uint64_t a2, int a3)
{
  v4 = (a1 + 48);
  if (*(*(a1 + 48) + 24) && CCLogStream::shouldLog())
  {
    AppleBCMWLANTxPowerManager::handleConfigureTxSDBAsyncCallback(v4);
  }

  result = (*v4)[3];
  if (a3)
  {
    if (result)
    {
      result = CCLogStream::shouldLog();
      if (result)
      {
        return AppleBCMWLANTxPowerManager::handleConfigureTxSDBAsyncCallback(v4);
      }
    }
  }

  else if (result)
  {
    result = CCLogStream::shouldLog();
    if (result)
    {
      return AppleBCMWLANTxPowerManager::handleConfigureTxSDBAsyncCallback(v4);
    }
  }

  return result;
}

uint64_t AppleBCMWLANTxPowerManager::handleConfigureDynSARPwrBoostAsyncCallback(uint64_t a1, uint64_t a2, int a3)
{
  v4 = (a1 + 48);
  if (*(*(a1 + 48) + 24) && CCLogStream::shouldLog())
  {
    AppleBCMWLANTxPowerManager::handleConfigureDynSARPwrBoostAsyncCallback(v4);
  }

  result = (*v4)[3];
  if (a3)
  {
    if (result)
    {
      result = CCLogStream::shouldLog();
      if (result)
      {
        return AppleBCMWLANTxPowerManager::handleConfigureDynSARPwrBoostAsyncCallback(v4);
      }
    }
  }

  else if (result)
  {
    result = CCLogStream::shouldLog();
    if (result)
    {
      return AppleBCMWLANTxPowerManager::handleConfigureDynSARPwrBoostAsyncCallback(v4);
    }
  }

  return result;
}

uint64_t AppleBCMWLANTxPowerManager::handleConfigureDynSAREventAsyncCallback(uint64_t a1, uint64_t a2, int a3)
{
  v4 = (a1 + 48);
  if (*(*(a1 + 48) + 24) && CCLogStream::shouldLog())
  {
    AppleBCMWLANTxPowerManager::handleConfigureDynSAREventAsyncCallback(v4);
  }

  result = (*v4)[3];
  if (a3)
  {
    if (result)
    {
      result = CCLogStream::shouldLog();
      if (result)
      {
        return AppleBCMWLANTxPowerManager::handleConfigureDynSAREventAsyncCallback(v4);
      }
    }
  }

  else if (result)
  {
    result = CCLogStream::shouldLog();
    if (result)
    {
      return AppleBCMWLANTxPowerManager::handleConfigureDynSAREventAsyncCallback(v4);
    }
  }

  return result;
}

uint64_t AppleBCMWLANTxPowerManager::handleGetDynSARStatusAsyncCallback(uint64_t a1, uint64_t a2, int a3, uint64_t *a4)
{
  v7 = (a1 + 48);
  if (*(*(a1 + 48) + 24) && CCLogStream::shouldLog())
  {
    AppleBCMWLANTxPowerManager::handleGetDynSARStatusAsyncCallback(v7);
    if (a3)
    {
LABEL_4:
      result = (*v7)[3];
      if (result)
      {
        result = CCLogStream::shouldLog();
        if (result)
        {
          return AppleBCMWLANTxPowerManager::handleGetDynSARStatusAsyncCallback(v7);
        }
      }

      return result;
    }
  }

  else if (a3)
  {
    goto LABEL_4;
  }

  v9 = *a4;
  if (*a4)
  {
    if (*v9 == 8)
    {
      if (v9[4] == 3)
      {
        AppleBCMWLANTxPowerManager::dumpDynSARStatusV3(a1, *a4);
        result = *(*(a1 + 48) + 24);
        if (result)
        {
          result = CCLogStream::shouldLog();
          if (result)
          {
            return AppleBCMWLANTxPowerManager::handleGetDynSARStatusAsyncCallback(v7);
          }
        }
      }

      else
      {
        result = (*v7)[3];
        if (result)
        {
          result = CCLogStream::shouldLog();
          if (result)
          {
            return AppleBCMWLANTxPowerManager::handleGetDynSARStatusAsyncCallback(v7);
          }
        }
      }
    }

    else
    {
      result = (*v7)[3];
      if (result)
      {
        result = CCLogStream::shouldLog();
        if (result)
        {
          return CCLogStream::logAlert((*v7)[3], "[dk] %s@%d:DynSAR: Sub Command ID mismatch, input %d, output %d\n", "handleGetDynSARStatusAsyncCallback", 709, 8, *v9);
        }
      }
    }
  }

  else
  {
    result = (*v7)[3];
    if (result)
    {
      result = CCLogStream::shouldLog();
      if (result)
      {
        return AppleBCMWLANTxPowerManager::handleGetDynSARStatusAsyncCallback(v7);
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANTxPowerManager::dumpDynSARStatusV3(uint64_t a1, uint64_t a2)
{
  v4 = a1 + 48;
  v3 = *(a1 + 48);
  if (*(v3 + 24))
  {
    shouldLog = CCLogStream::shouldLog();
    v3 = *v4;
    if (shouldLog)
    {
      CCLogStream::logInfo(*(v3 + 24), "[dk] %s@%d:DynSAR: Slice %d Mode %d power offset %d(dB)\n", "dumpDynSARStatusV3", 1554, *(a2 + 12), *(a2 + 13), *(a2 + 19));
      v3 = *v4;
    }
  }

  if (*(v3 + 24))
  {
    v6 = CCLogStream::shouldLog();
    v3 = *v4;
    if (v6)
    {
      CCLogStream::logInfo(*(v3 + 24), "[dk] %s@%d:DynSAR: Prediction: Util Threshold %d%% Opt Txdc %d%% Dur %d\n", "dumpDynSARStatusV3", 1557, *(a2 + 14), *(a2 + 15), *(a2 + 16));
      v3 = *v4;
    }
  }

  if (*(v3 + 24))
  {
    v7 = CCLogStream::shouldLog();
    v3 = *v4;
    if (v7)
    {
      if (*(a2 + 17))
      {
        v32 = "On";
      }

      else
      {
        v32 = "Off";
      }

      CCLogStream::logInfo(*(v3 + 24), "[dk] %s@%d:DynSAR: Event report %s\n", "dumpDynSARStatusV3", 1558, v32);
      v3 = *v4;
    }
  }

  if (*(v3 + 24))
  {
    v8 = CCLogStream::shouldLog();
    v3 = *v4;
    if (v8)
    {
      if (*(a2 + 18))
      {
        v33 = "On";
      }

      else
      {
        v33 = "Off";
      }

      CCLogStream::logInfo(*(v3 + 24), "[dk] %s@%d:DynSAR: Time sync %s\n", "dumpDynSARStatusV3", 1559, v33);
      v3 = *v4;
    }
  }

  if (*(v3 + 24))
  {
    v9 = CCLogStream::shouldLog();
    v3 = *v4;
    if (v9)
    {
      CCLogStream::logInfo(*(v3 + 24), "[dk] %s@%d:DynSAR: Variance thresh limit %d, hysterisis offset %d\n", "dumpDynSARStatusV3", 1560, *(a2 + 24), *(a2 + 28));
      v3 = *v4;
    }
  }

  if (*(v3 + 24))
  {
    v10 = CCLogStream::shouldLog();
    v3 = *v4;
    if (v10)
    {
      CCLogStream::logInfo(*(v3 + 24), "[dk] %s@%d:DynSAR: Error 0x%x\n", "dumpDynSARStatusV3", 1561, *(a2 + 22));
      v3 = *v4;
    }
  }

  if (*(a2 + 22))
  {
    if (*(v3 + 24))
    {
      v11 = CCLogStream::shouldLog();
      v3 = *v4;
      if (v11)
      {
        CCLogStream::logAlert(*(v3 + 24), "[dk] %s@%d:DynSAR: Error (NO TXCAP)\n", "dumpDynSARStatusV3", 1563);
        v3 = *v4;
      }
    }
  }

  if ((*(a2 + 22) & 2) != 0)
  {
    if (*(v3 + 24))
    {
      v12 = CCLogStream::shouldLog();
      v3 = *v4;
      if (v12)
      {
        CCLogStream::logAlert(*(v3 + 24), "[dk] %s@%d:DynSAR: Error (NO CLM)\n", "dumpDynSARStatusV3", 1565);
        v3 = *v4;
      }
    }
  }

  if ((*(a2 + 22) & 4) != 0)
  {
    if (*(v3 + 24))
    {
      v13 = CCLogStream::shouldLog();
      v3 = *v4;
      if (v13)
      {
        CCLogStream::logAlert(*(v3 + 24), "[dk] %s@%d:DynSAR: Error (NO TDMTX)\n", "dumpDynSARStatusV3", 1567);
        v3 = *v4;
      }
    }
  }

  if ((*(a2 + 22) & 8) != 0)
  {
    if (*(v3 + 24))
    {
      v14 = CCLogStream::shouldLog();
      v3 = *v4;
      if (v14)
      {
        CCLogStream::logAlert(*(v3 + 24), "[dk] %s@%d:DynSAR: Error (DynSAR Violation)\n", "dumpDynSARStatusV3", 1569);
        v3 = *v4;
      }
    }
  }

  if ((*(a2 + 22) & 0x10) != 0)
  {
    if (*(v3 + 24))
    {
      v15 = CCLogStream::shouldLog();
      v3 = *v4;
      if (v15)
      {
        CCLogStream::logAlert(*(v3 + 24), "[dk] %s@%d:DynSAR: Error (DynSAR Ant Num Mismatch)\n", "dumpDynSARStatusV3", 1571);
        v3 = *v4;
      }
    }
  }

  if ((*(a2 + 22) & 0x20) != 0)
  {
    if (*(v3 + 24))
    {
      v16 = CCLogStream::shouldLog();
      v3 = *v4;
      if (v16)
      {
        CCLogStream::logAlert(*(v3 + 24), "[dk] %s@%d:DynSAR: Error (DynSAR country disabled)\n", "dumpDynSARStatusV3", 1573);
        v3 = *v4;
      }
    }
  }

  if (*(v3 + 24))
  {
    v17 = CCLogStream::shouldLog();
    v3 = *v4;
    if (v17)
    {
      CCLogStream::logInfo(*(v3 + 24), "[dk] %s@%d:DynSAR: GPIO Pin %d\n", "dumpDynSARStatusV3", 1575, *(a2 + 23));
      v3 = *v4;
    }
  }

  if (*(v3 + 24))
  {
    v18 = CCLogStream::shouldLog();
    v3 = *v4;
    if (v18)
    {
      CCLogStream::logInfo(*(v3 + 24), "[dk] %s@%d:DynSAR: Status 0x%x\n", "dumpDynSARStatusV3", 1576, *(a2 + 21));
      v3 = *v4;
    }
  }

  if (*(a2 + 21))
  {
    if (*(v3 + 24))
    {
      v19 = CCLogStream::shouldLog();
      v3 = *v4;
      if (v19)
      {
        CCLogStream::logInfo(*(v3 + 24), "[dk] %s@%d:DynSAR: Status (Power Optimized)\n", "dumpDynSARStatusV3", 1578);
        v3 = *v4;
      }
    }
  }

  if ((*(a2 + 21) & 2) != 0)
  {
    if (*(v3 + 24))
    {
      v20 = CCLogStream::shouldLog();
      v3 = *v4;
      if (v20)
      {
        CCLogStream::logInfo(*(v3 + 24), "[dk] %s@%d:DynSAR: Status (Failsafe)\n", "dumpDynSARStatusV3", 1580);
        v3 = *v4;
      }
    }
  }

  if ((*(a2 + 21) & 4) != 0)
  {
    if (*(v3 + 24))
    {
      v21 = CCLogStream::shouldLog();
      v3 = *v4;
      if (v21)
      {
        CCLogStream::logInfo(*(v3 + 24), "[dk] %s@%d:DynSAR: Status (No ACK Mute Optimized)\n", "dumpDynSARStatusV3", 1582);
        v3 = *v4;
      }
    }
  }

  if ((*(a2 + 21) & 8) != 0)
  {
    if (*(v3 + 24))
    {
      v22 = CCLogStream::shouldLog();
      v3 = *v4;
      if (v22)
      {
        CCLogStream::logInfo(*(v3 + 24), "[dk] %s@%d:DynSAR: Status (TxDC Limit)\n", "dumpDynSARStatusV3", 1584);
        v3 = *v4;
      }
    }
  }

  if (*(v3 + 24))
  {
    v23 = CCLogStream::shouldLog();
    v3 = *v4;
    if (v23)
    {
      CCLogStream::logInfo(*(v3 + 24), "[dk] %s@%d:DynSAR: Antenna number: %d\n", "dumpDynSARStatusV3", 1585, *(a2 + 20));
      v3 = *v4;
    }
  }

  result = *(v3 + 24);
  if (result)
  {
    result = CCLogStream::shouldLog();
    if (result)
    {
      result = AppleBCMWLANTxPowerManager::dumpDynSARStatusV3(v4);
    }
  }

  v25 = (*(a2 + 10) - 24);
  if (v25 >= 5)
  {
    v26 = (a2 + 32);
    while (1)
    {
      if ((v26 & 3) != 0)
      {
        return AppleBCMWLANTxPowerManager::dumpDynSARStatusV3(v4);
      }

      v27 = v26[1];
      if (v25 < (v27 + 4))
      {
        break;
      }

      v28 = *v26;
      if (v28 != 2)
      {
        if (v28 == 1)
        {
          if (v26[1])
          {
            v29 = 0;
            do
            {
              result = *(*v4 + 24);
              if (result)
              {
                result = CCLogStream::shouldLog();
                if (result)
                {
                  result = CCLogStream::logInfo(*(*v4 + 24), "[dk] %s@%d:DynSAR: Ant%d: %d\n", "dumpDynSARStatusV3", 1603, v29, *(v26 + v29 + 4));
                }
              }

              ++v29;
            }

            while (v27 != v29);
          }
        }

        else
        {
          result = *(*v4 + 24);
          if (result)
          {
            result = CCLogStream::shouldLog();
            if (result)
            {
              result = CCLogStream::logAlert(*(*v4 + 24), "[dk] %s@%d:Invalid tag id %d\n", "dumpDynSARStatusV3", 1612, v28);
            }
          }
        }
      }

      v30 = (v27 & 0xFFFC) + 4;
      if ((v27 & 3) == 0)
      {
        v30 = v27;
      }

      v31 = v30 + 4;
      v25 = (v25 - v31);
      v26 = (v26 + v31);
      if (v25 <= 4)
      {
        return result;
      }
    }

    result = *(*v4 + 24);
    if (result)
    {
      result = CCLogStream::shouldLog();
      if (result)
      {
        return CCLogStream::logAlert(*(*v4 + 24), "[dk] %s@%d:Error: remaining_len = %d, xtlvLength = %d\n", "dumpDynSARStatusV3", 1596, v25, v27);
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANTxPowerManager::handleDynSAREventToPopulateUnsharedTxDCUtilAsyncCallback(uint64_t a1, uint64_t a2, int a3, unsigned __int16 **a4, unsigned int *a5)
{
  v9 = (a1 + 48);
  result = *(*(a1 + 48) + 24);
  if (result && (result = CCLogStream::shouldLog(), result))
  {
    result = AppleBCMWLANTxPowerManager::handleDynSAREventToPopulateUnsharedTxDCUtilAsyncCallback(v9);
    if (a3)
    {
LABEL_4:
      result = (*v9)[3];
      if (result)
      {
        result = CCLogStream::shouldLog();
        if (result)
        {
          return AppleBCMWLANTxPowerManager::handleDynSAREventToPopulateUnsharedTxDCUtilAsyncCallback(v9);
        }
      }

      return result;
    }
  }

  else if (a3)
  {
    goto LABEL_4;
  }

  v11 = *a4;
  if (*a4)
  {
    if (*v11 == 3)
    {
      v13 = v11 + 4;
      v12 = v11[4];
      v14 = v12 == 4 || v12 == 2;
      if (!v14 || *(v11 + 35) != 2 || *(v11 + 36) >= 9u)
      {
        result = (*v9)[3];
        if (result)
        {
          result = CCLogStream::shouldLog();
          if (result)
          {
            return AppleBCMWLANTxPowerManager::handleDynSAREventToPopulateUnsharedTxDCUtilAsyncCallback(v9);
          }
        }

        return result;
      }

      if (v12 != 4)
      {
        if (v12 == 2)
        {
          v15 = *(v11 + 38);
          if (v15 + 24 * *(v11 + 32) > v11[5])
          {
            result = (*v9)[3];
            if (result)
            {
              result = CCLogStream::shouldLog();
              if (result)
              {
                return AppleBCMWLANTxPowerManager::handleDynSAREventToPopulateUnsharedTxDCUtilAsyncCallback(v9);
              }
            }

            return result;
          }

          v18 = 0;
          v17 = v13 + v15;
        }

        else
        {
          result = (*v9)[3];
          if (result)
          {
            result = CCLogStream::shouldLog();
            if (result)
            {
              result = AppleBCMWLANTxPowerManager::handleDynSAREventToPopulateUnsharedTxDCUtilAsyncCallback(v9);
            }
          }

          v17 = 0;
          v18 = 0;
        }

LABEL_43:
        if (!*(v11 + 3))
        {
          return result;
        }

        v19 = *(v11 + 32);
        if (*(v11 + 32))
        {
          v20 = 0;
          do
          {
            v21 = v20 + *a5 * v19;
            v22 = *v13;
            if (v22 == 4)
            {
              v24 = *(v11 + 3);
              if (v20 == 2)
              {
                if (v24)
                {
                  v24 = 100 * *&v18[8 * v21] / v24;
                }

                *(a5 + 72) = v24;
                *(a5 + 73) = *&v18[8 * v21 + 4] / 0xAu;
              }

              else if (v20 == 1)
              {
                if (v24)
                {
                  v24 = 100 * *&v18[8 * v21] / v24;
                }

                *(a5 + 70) = v24;
                *(a5 + 71) = *&v18[8 * v21 + 4] / 0xAu;
              }

              else
              {
                v25 = &v18[8 * v21];
                if (v20)
                {
                  if (v24)
                  {
                    v27 = 100 * *&v18[8 * v21] / v24;
                  }

                  else
                  {
                    LOBYTE(v27) = 0;
                  }

                  *(a5 + 74) = v27;
                  *(a5 + 75) = *(v25 + 2) / 0xAu;
                }

                else
                {
                  if (v24)
                  {
                    v26 = 100 * *&v18[8 * v21] / v24;
                  }

                  else
                  {
                    LOBYTE(v26) = 0;
                  }

                  *(a5 + 68) = v26;
                  *(a5 + 69) = *(v25 + 2) / 0xAu;
                }
              }
            }

            else if (v22 == 2)
            {
              v23 = *(v11 + 3);
              if (v20 == 2)
              {
                if (v23)
                {
                  v23 = 100 * *&v17[12 * v21 + 8] / v23;
                }

                *(a5 + 72) = v23;
                *(a5 + 73) = 100 * *&v17[12 * v21 + 4] / *&v17[12 * v21];
              }

              else if (v20 == 1)
              {
                if (v23)
                {
                  v23 = 100 * *&v17[12 * v21 + 8] / v23;
                }

                *(a5 + 70) = v23;
                *(a5 + 71) = 100 * *&v17[12 * v21 + 4] / *&v17[12 * v21];
              }

              else if (v20)
              {
                if (v23)
                {
                  v23 = 100 * *&v17[12 * v21 + 8] / v23;
                }

                *(a5 + 74) = v23;
                *(a5 + 75) = 100 * *&v17[12 * v21 + 4] / *&v17[12 * v21];
              }

              else
              {
                if (v23)
                {
                  v23 = 100 * *&v17[12 * v21 + 8] / v23;
                }

                *(a5 + 68) = v23;
                *(a5 + 69) = 100 * *&v17[12 * v21 + 4] / *&v17[12 * v21];
              }
            }

            else if ((*v9)[3] && CCLogStream::shouldLog())
            {
              AppleBCMWLANTxPowerManager::handleDynSAREventToPopulateUnsharedTxDCUtilAsyncCallback(v9);
            }

            ++v20;
            v19 = *(v11 + 32);
          }

          while (v20 < v19);
        }

        if (!AppleBCMWLANCore::getIOReporterPerSlice(**v9))
        {
          goto LABEL_100;
        }

        v28 = *(a5 + 32);
        v29 = *(a5 + 80);
        IOReporterPerSlice = AppleBCMWLANCore::getIOReporterPerSlice(**(a1 + 48));
        v31 = AppleBCMWLANIOReportingPerSlice::reportDSA(IOReporterPerSlice, *a5, a5);
        AppleBCMWLANTxPowerManager::sendDynSARStatsEventCoreAnalytics(a1, a5);
        IOFree(a5, 0x58uLL);
        if (v31)
        {
          return AppleBCMWLANTxPowerManager::handleDynSAREventToPopulateUnsharedTxDCUtilAsyncCallback(v9);
        }

        if (v28 != 2 || !v29)
        {
          goto LABEL_100;
        }

        if ((*v9)[3] && CCLogStream::shouldLog())
        {
          CCLogStream::logAlert((*v9)[3], "[dk] %s@%d:DynSAR: Fail Safe Mode Reported in DSA Event. Trigger CoreCapture with fail safe reason code %d\n", "handleDynSAREventToPopulateUnsharedTxDCUtilAsyncCallback", 952, v29);
          if ((v29 & 1) == 0)
          {
LABEL_91:
            if ((v29 & 2) != 0)
            {
              v32 = (*v9)[4];
              v33 = -469789950;
              v34 = 956;
            }

            else
            {
              v32 = (*v9)[4];
              if ((v29 & 4) != 0)
              {
                v33 = -469789949;
                v34 = 958;
              }

              else
              {
                v33 = -469789947;
                v34 = 960;
              }
            }

            goto LABEL_99;
          }
        }

        else if ((v29 & 1) == 0)
        {
          goto LABEL_91;
        }

        v32 = (*v9)[4];
        v34 = 954;
        v33 = -469789951;
LABEL_99:
        CCFaultReporter::reportFault(v32, 4u, "/Library/Caches/com.apple.xbs/Sources/AppleBCMWLANV3_driverkit/AppleBCMWLANTxPowerManager.cpp", v34, "handleDynSAREventToPopulateUnsharedTxDCUtilAsyncCallback", 0, v33, 0);
LABEL_100:
        result = (*v9)[3];
        if (result)
        {
          result = CCLogStream::shouldLog();
          if (result)
          {
            return AppleBCMWLANTxPowerManager::handleDynSAREventToPopulateUnsharedTxDCUtilAsyncCallback(v9);
          }
        }

        return result;
      }

      v16 = *(v11 + 38);
      if (v16 + 16 * *(v11 + 32) <= v11[5])
      {
        v17 = 0;
        v18 = v13 + v16;
        goto LABEL_43;
      }

      result = (*v9)[3];
      if (result)
      {
        result = CCLogStream::shouldLog();
        if (result)
        {
          return AppleBCMWLANTxPowerManager::handleDynSAREventToPopulateUnsharedTxDCUtilAsyncCallback(v9);
        }
      }
    }

    else
    {
      result = (*v9)[3];
      if (result)
      {
        result = CCLogStream::shouldLog();
        if (result)
        {
          return CCLogStream::logAlert((*v9)[3], "[dk] %s@%d:DynSAR: Sub Command ID mismatch, input %d, output %d\n", "handleDynSAREventToPopulateUnsharedTxDCUtilAsyncCallback", 857, 3, *v11);
        }
      }
    }
  }

  else
  {
    result = (*v9)[3];
    if (result)
    {
      result = CCLogStream::shouldLog();
      if (result)
      {
        return AppleBCMWLANTxPowerManager::handleDynSAREventToPopulateUnsharedTxDCUtilAsyncCallback(v9);
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANTxPowerManager::handleGetDynSARAggStatsAsyncCallback(uint64_t a1, uint64_t a2, int a3, unsigned __int16 **a4)
{
  v6 = (a1 + 48);
  if (*(*(a1 + 48) + 24) && CCLogStream::shouldLog())
  {
    AppleBCMWLANTxPowerManager::handleGetDynSARAggStatsAsyncCallback(v6);
    if (a3)
    {
LABEL_4:
      result = (*v6)[3];
      if (result)
      {
        result = CCLogStream::shouldLog();
        if (result)
        {
          return AppleBCMWLANTxPowerManager::handleGetDynSARAggStatsAsyncCallback(v6);
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
  if (*a4)
  {
    if (*(a4 + 4) > 0xFu)
    {
      if (*v8 == 11)
      {
        *__dst = 0u;
        v39 = 0u;
        v40 = 0u;
        v41 = 0u;
        v42 = 0u;
        v43 = 0u;
        v44 = 0u;
        v45 = 0u;
        v46 = 0u;
        v47 = 0u;
        v48 = 0u;
        v49 = 0u;
        v50 = 0u;
        v51 = 0u;
        v52 = 0u;
        v53 = 0u;
        *__str = 0u;
        v31 = 0u;
        v32 = 0u;
        v33 = 0u;
        v34 = 0u;
        v35 = 0u;
        v36 = 0u;
        v37 = 0u;
        v9 = 8 * v8[5];
        if (((v9 * 2 + (v9 * 2) * v8[6]) | 8) <= v8[1])
        {
          if (v8[6] < 5u)
          {
            v10 = *v6;
            if ((*v6)[3])
            {
              shouldLog = CCLogStream::shouldLog();
              v10 = *v6;
              if (shouldLog)
              {
                CCLogStream::logInfo(v10[3], "[dk] %s@%d:DynSAR: Ux: Tmon Utilization at aggregated index x\n", "handleGetDynSARAggStatsAsyncCallback", 1022);
                v10 = *v6;
              }
            }

            if (v10[3])
            {
              v12 = CCLogStream::shouldLog();
              v10 = *v6;
              if (v12)
              {
                CCLogStream::logInfo(v10[3], "[dk] %s@%d:DynSAR: Umx: Mean of Ux over Twin\n", "handleGetDynSARAggStatsAsyncCallback", 1023);
                v10 = *v6;
              }
            }

            if (v10[3] && CCLogStream::shouldLog())
            {
              AppleBCMWLANTxPowerManager::handleGetDynSARAggStatsAsyncCallback(v6);
            }

            snprintf(__str, 0x80uLL, "DynSAR: id %10s %4s ", "Ts", "Opt");
            strlcat(__dst, __str, 0x100uLL);
            *__str = 0u;
            v31 = 0u;
            v32 = 0u;
            v33 = 0u;
            v34 = 0u;
            v35 = 0u;
            v36 = 0u;
            v37 = 0u;
            if (v8[6])
            {
              v13 = 0;
              do
              {
                snprintf(__str, 0x80uLL, "%2s%u %2s%u %5s%u ", "U", v13, "Um", v13, "V", v13);
                strlcat(__dst, __str, 0x100uLL);
                *__str = 0u;
                v31 = 0u;
                v32 = 0u;
                v33 = 0u;
                v34 = 0u;
                v35 = 0u;
                v36 = 0u;
                v37 = 0u;
                ++v13;
              }

              while (v13 < v8[6]);
            }

            if ((*v6)[3] && CCLogStream::shouldLog())
            {
              CCLogStream::logInfo((*v6)[3], "[dk] %s@%d:%s\n", "handleGetDynSARAggStatsAsyncCallback", 1033, __dst);
            }

            v52 = 0u;
            v53 = 0u;
            v50 = 0u;
            v51 = 0u;
            v48 = 0u;
            v49 = 0u;
            v46 = 0u;
            v47 = 0u;
            v44 = 0u;
            v45 = 0u;
            v42 = 0u;
            v43 = 0u;
            v40 = 0u;
            v41 = 0u;
            *__dst = 0u;
            v39 = 0u;
            if (v8[5])
            {
              v14 = 0;
              v15 = 0;
              do
              {
                v16 = &v8[8 * v14 + 8];
                v17 = *(v16 + 8);
                v18 = *v16;
                v19 = 84;
                if ((v18 & 8) == 0)
                {
                  v19 = 46;
                }

                v20 = 77;
                if ((v18 & 4) == 0)
                {
                  v20 = 46;
                }

                v29 = v19;
                v21 = 70;
                if ((v18 & 2) == 0)
                {
                  v21 = 46;
                }

                v22 = (v18 & 1) == 0;
                v23 = 80;
                if (v22)
                {
                  v23 = 46;
                }

                snprintf(__str, 0x80uLL, "DynSAR: %2u %10llu %c%c%c%c ", v14, v17, v23, v21, v20, v29);
                strlcat(__dst, __str, 0x100uLL);
                *__str = 0u;
                v31 = 0u;
                v32 = 0u;
                v33 = 0u;
                v34 = 0u;
                v35 = 0u;
                v36 = 0u;
                v37 = 0u;
                if (v8[6])
                {
                  v24 = 0;
                  do
                  {
                    snprintf(__str, 0x80uLL, "%3u %3u %6u ", *&v8[8 * v15 + 8 + v9], *&v8[8 * v15 + 12 + v9], *&v8[8 * v15 + 14 + v9]);
                    strlcat(__dst, __str, 0x100uLL);
                    *__str = 0u;
                    v31 = 0u;
                    v32 = 0u;
                    v33 = 0u;
                    v34 = 0u;
                    v35 = 0u;
                    v36 = 0u;
                    v37 = 0u;
                    ++v24;
                    ++v15;
                  }

                  while (v24 < v8[6]);
                }

                if ((*v6)[3] && CCLogStream::shouldLog())
                {
                  CCLogStream::logInfo((*v6)[3], "[dk] %s@%d:%s\n", "handleGetDynSARAggStatsAsyncCallback", 1048, __dst);
                }

                v52 = 0u;
                v53 = 0u;
                v50 = 0u;
                v51 = 0u;
                v48 = 0u;
                v49 = 0u;
                v46 = 0u;
                v47 = 0u;
                v44 = 0u;
                v45 = 0u;
                v42 = 0u;
                v43 = 0u;
                v40 = 0u;
                v41 = 0u;
                *__dst = 0u;
                v39 = 0u;
                ++v14;
              }

              while (v14 < v8[5]);
            }

            result = (*v6)[3];
            if (result)
            {
              result = CCLogStream::shouldLog();
              if (result)
              {
                return AppleBCMWLANTxPowerManager::handleGetDynSARAggStatsAsyncCallback(v6);
              }
            }
          }

          else
          {
            result = (*v6)[3];
            if (result)
            {
              result = CCLogStream::shouldLog();
              if (result)
              {
                v27 = v8[6];
                return CCLogStream::logAlert((*v6)[3], "[dk] %s@%d:DynSAR: Error, invalid number of aggregated antenna %d, max is %d\n");
              }
            }
          }
        }

        else
        {
          result = (*v6)[3];
          if (result)
          {
            result = CCLogStream::shouldLog();
            if (result)
            {
              v26 = v8[1];
              return CCLogStream::logAlert((*v6)[3], "[dk] %s@%d:DynSAR: Error, invalid data length  %d\n");
            }
          }
        }
      }

      else
      {
        result = (*v6)[3];
        if (result)
        {
          result = CCLogStream::shouldLog();
          if (result)
          {
            v28 = *v8;
            return CCLogStream::logAlert((*v6)[3], "[dk] %s@%d:DynSAR: Sub Command ID mismatch, input %d, output %d\n");
          }
        }
      }
    }

    else
    {
      result = (*v6)[3];
      if (result)
      {
        result = CCLogStream::shouldLog();
        if (result)
        {
          v25 = *(a4 + 4);
          return CCLogStream::logAlert((*v6)[3], "[dk] %s@%d:DynSAR: Error, invalid rxPayload length %d\n");
        }
      }
    }
  }

  else
  {
    result = (*v6)[3];
    if (result)
    {
      result = CCLogStream::shouldLog();
      if (result)
      {
        return AppleBCMWLANTxPowerManager::handleGetDynSARAggStatsAsyncCallback(v6);
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANTxPowerManager::handleGetDynSARDetailAsyncCallback(uint64_t a1, uint64_t a2, int a3, unsigned __int16 **a4)
{
  v6 = (a1 + 48);
  v44 = (a1 + 48);
  if (*(*(a1 + 48) + 24) && (shouldLog = CCLogStream::shouldLog(), v6 = v44, shouldLog))
  {
    AppleBCMWLANTxPowerManager::handleGetDynSARDetailAsyncCallback(v44);
    v6 = v44;
    if (a3)
    {
LABEL_4:
      result = (*v6)[3];
      if (result)
      {
        result = CCLogStream::shouldLog();
        if (result)
        {
          return AppleBCMWLANTxPowerManager::handleGetDynSARDetailAsyncCallback(v44);
        }
      }

      return result;
    }
  }

  else if (a3)
  {
    goto LABEL_4;
  }

  v9 = *a4;
  if (*a4)
  {
    v10 = *v6;
    result = (*v6)[3];
    if (*v9 == 4)
    {
      if (result)
      {
        v11 = CCLogStream::shouldLog();
        v6 = v44;
        v10 = *v44;
        if (v11)
        {
          CCLogStream::logInfo(v10[3], "[dk] %s@%d:DynSAR: Details, slice %u monitor periods %u first sync %llu\n", "handleGetDynSARDetailAsyncCallback", 1084, *(v9 + 14), *(v9 + 13), *(v9 + 2));
          v6 = v44;
          v10 = *v44;
        }
      }

      if (v10[3])
      {
        v12 = CCLogStream::shouldLog();
        v6 = v44;
        if (v12)
        {
          AppleBCMWLANTxPowerManager::handleGetDynSARDetailAsyncCallback(v44);
          v6 = v44;
        }
      }

      if (*(v9 + 13))
      {
        v13 = 0;
        v14 = v9 + 16;
        do
        {
          if (*v14)
          {
            if (*(v14 - 1))
            {
              if ((*v6)[3])
              {
                v15 = CCLogStream::shouldLog();
                v6 = v44;
                if (v15)
                {
                  if ((*(v14 - 1) & 8) != 0)
                  {
                    v16 = 84;
                  }

                  else
                  {
                    v16 = 46;
                  }

                  v41 = v16;
                  if ((*(v14 - 1) & 4) != 0)
                  {
                    v17 = 77;
                  }

                  else
                  {
                    v17 = 46;
                  }

                  if ((*(v14 - 1) & 2) != 0)
                  {
                    v18 = 70;
                  }

                  else
                  {
                    v18 = 46;
                  }

                  if (*(v14 - 1))
                  {
                    v19 = 80;
                  }

                  else
                  {
                    v19 = 46;
                  }

                  CCLogStream::logInfo((*v44)[3], "[dk] %s@%d:DynSAR: \t[%d] Opt %c%c%c%c TS %llu(us) Dur %u\n", "handleGetDynSARDetailAsyncCallback", 1094, v13, v19, v18, v17, v41, *v14, *(v14 - 1));
                  v6 = v44;
                }
              }
            }
          }

          ++v13;
          v14 += 2;
        }

        while (v13 < *(v9 + 13));
      }

      if (*(v9 + 12))
      {
        v43 = 0;
        v20 = 0;
        do
        {
          v21 = *v6;
          if ((*v6)[3])
          {
            v22 = CCLogStream::shouldLog();
            v6 = v44;
            v21 = *v44;
            if (v22)
            {
              CCLogStream::logInfo(v21[3], "[dk] %s@%d:DynSAR: Slice %d Core & Ant combined index %d Detail\n", "handleGetDynSARDetailAsyncCallback", 1099, *(v9 + 14), v20);
              v6 = v44;
              v21 = *v44;
            }
          }

          if (v21[3])
          {
            v23 = CCLogStream::shouldLog();
            v6 = v44;
            v21 = *v44;
            if (v23)
            {
              CCLogStream::logInfo(v21[3], "[dk] %s@%d:DynSAR: %7s %9s %6s %8s %9s %5s %10s %10s %7s %6s %6s\n", "handleGetDynSARDetailAsyncCallback", 1100, "Opt", "TxDur", "%TxDC", "PAv:mw", "PlimAv:mw", "Util%", "Energy", "Qsar:mw*ms", "FS(us)", "Util_pred", "Util_hist");
              v6 = v44;
              v21 = *v44;
            }
          }

          v42 = v20;
          if (v21[3])
          {
            v24 = CCLogStream::shouldLog();
            v6 = v44;
            if (v24)
            {
              AppleBCMWLANTxPowerManager::handleGetDynSARDetailAsyncCallback(v44);
              v6 = v44;
            }
          }

          if (*(v9 + 13))
          {
            v25 = 0;
            v26 = 0;
            v27 = v43;
            do
            {
              v28 = &v9[v25];
              if (*&v9[v25 + 16])
              {
                v29 = *(v28 + 7);
                if (v29)
                {
                  v30 = (v9 + v27);
                  v31 = *(v9 + v27 + 360);
                  if (v31)
                  {
                    if ((*v6)[3])
                    {
                      v32 = v30[89];
                      v33 = v30[86];
                      v34 = CCLogStream::shouldLog();
                      v6 = v44;
                      if (v34)
                      {
                        v35 = 84;
                        if ((v28[12] & 8) == 0)
                        {
                          v35 = 46;
                        }

                        v36 = 77;
                        if ((v28[12] & 4) == 0)
                        {
                          v36 = 46;
                        }

                        v40 = v35;
                        v39 = v36;
                        v37 = 70;
                        if ((v28[12] & 2) == 0)
                        {
                          v37 = 46;
                        }

                        v38 = 80;
                        if ((v28[12] & 1) == 0)
                        {
                          v38 = 46;
                        }

                        CCLogStream::logInfo((*v44)[3], "[dk] %s@%d:DynSAR: %c%c%c%c %2u %9u %6llu %8llu %9llu %5llu %10u %10u %7u %6u %6u\n", "handleGetDynSARDetailAsyncCallback", 1123, v38, v37, v39, v40, v26, v30[86], ((v29 >> 1) + 100 * v33) / v29, (((v29 >> 1) + 1000 * v31) / v29 * (((v31 >> 1) + 100 * v32) / v31) + 50) / 0x64, ((v29 >> 1) + 1000 * v31) / v29, ((v31 >> 1) + 100 * v32) / v31, v30[89], v30[90], *(v9 + v27 + 364), *(v9 + v27 + 367), *(v9 + v27 + 366));
                        v6 = v44;
                      }
                    }
                  }
                }
              }

              ++v26;
              v25 += 8;
              v27 += 96;
            }

            while (v26 < *(v9 + 13));
          }

          v20 = v42 + 1;
          v43 += 24;
        }

        while (v42 + 1 < *(v9 + 12));
      }

      result = (*v6)[3];
      if (result)
      {
        result = CCLogStream::shouldLog();
        if (result)
        {
          return AppleBCMWLANTxPowerManager::handleGetDynSARDetailAsyncCallback(v44);
        }
      }
    }

    else if (result)
    {
      result = CCLogStream::shouldLog();
      if (result)
      {
        return CCLogStream::logAlert((*v44)[3], "[dk] %s@%d:DynSAR: Sub Command ID mismatch, input %d, output %d\n", "handleGetDynSARDetailAsyncCallback", 1078, 4, *v9);
      }
    }
  }

  else
  {
    result = (*v6)[3];
    if (result)
    {
      result = CCLogStream::shouldLog();
      if (result)
      {
        return AppleBCMWLANTxPowerManager::handleGetDynSARDetailAsyncCallback(v44);
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANTxPowerManager::handleGetDynSARDetailAsyncCallbackV2(uint64_t a1, uint64_t a2, int a3, unsigned __int16 **a4)
{
  v6 = (a1 + 48);
  if (*(*(a1 + 48) + 24) && CCLogStream::shouldLog())
  {
    AppleBCMWLANTxPowerManager::handleGetDynSARDetailAsyncCallbackV2(v6);
    if (a3)
    {
LABEL_4:
      result = (*v6)[3];
      if (result)
      {
        result = CCLogStream::shouldLog();
        if (result)
        {
          return AppleBCMWLANTxPowerManager::handleGetDynSARDetailAsyncCallbackV2(v6);
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
  if (*a4)
  {
    v9 = *v6;
    result = (*v6)[3];
    if (*v8 == 4)
    {
      if (result)
      {
        shouldLog = CCLogStream::shouldLog();
        v9 = *v6;
        if (shouldLog)
        {
          CCLogStream::logInfo(v9[3], "[dk] %s@%d:DynSAR: Details, slice %u monitor periods %u first sync %llu\n", "handleGetDynSARDetailAsyncCallbackV2", 1159, *(v8 + 14), *(v8 + 13), *(v8 + 2));
          v9 = *v6;
        }
      }

      if (v9[3] && CCLogStream::shouldLog())
      {
        AppleBCMWLANTxPowerManager::handleGetDynSARDetailAsyncCallbackV2(v6);
      }

      if (*(v8 + 13))
      {
        v11 = 0;
        v12 = v8 + 16;
        do
        {
          if (*v12 && *(v12 - 1) && (*v6)[3] && CCLogStream::shouldLog())
          {
            v13 = 84;
            if ((*(v12 - 1) & 8) == 0)
            {
              v13 = 46;
            }

            v34 = v13;
            if ((*(v12 - 1) & 4) != 0)
            {
              v14 = 77;
            }

            else
            {
              v14 = 46;
            }

            if ((*(v12 - 1) & 2) != 0)
            {
              v15 = 70;
            }

            else
            {
              v15 = 46;
            }

            if (*(v12 - 1))
            {
              v16 = 80;
            }

            else
            {
              v16 = 46;
            }

            CCLogStream::logInfo((*v6)[3], "[dk] %s@%d:DynSAR: \t[%d] Opt %c%c%c%c TS %llu(us) Dur %u\n", "handleGetDynSARDetailAsyncCallbackV2", 1169, v11, v16, v15, v14, v34, *v12, *(v12 - 1));
          }

          ++v11;
          v12 += 2;
        }

        while (v11 < *(v8 + 13));
      }

      if (*(v8 + 12))
      {
        v17 = 0;
        v18 = v8 + 176;
        do
        {
          v19 = *v6;
          if ((*v6)[3])
          {
            v20 = CCLogStream::shouldLog();
            v19 = *v6;
            if (v20)
            {
              CCLogStream::logInfo(v19[3], "[dk] %s@%d:DynSAR: Slice %d Core & Ant combined index %d Detail\n", "handleGetDynSARDetailAsyncCallbackV2", 1174, *(v8 + 14), v17);
              v19 = *v6;
            }
          }

          if (v19[3])
          {
            v21 = CCLogStream::shouldLog();
            v19 = *v6;
            if (v21)
            {
              CCLogStream::logInfo(v19[3], "[dk] %s@%d:DynSAR: %7s %9s %6s %8s %9s %5s %10s %10s %7s %6s %6s\n", "handleGetDynSARDetailAsyncCallbackV2", 1175, "Opt", "TxDur", "%TxDC", "PAv:mw", "PlimAv:mw", "Util%", "Energy", "Qsar:mw*ms", "FS(us)", "Util_pred", "Util_hist");
              v19 = *v6;
            }
          }

          if (v19[3] && CCLogStream::shouldLog())
          {
            AppleBCMWLANTxPowerManager::handleGetDynSARDetailAsyncCallbackV2(v6);
          }

          if (*(v8 + 13))
          {
            v22 = 0;
            v23 = v18;
            v24 = v8 + 16;
            do
            {
              if (*v24)
              {
                v25 = *(v24 - 1);
                if (v25)
                {
                  if ((*v6)[3])
                  {
                    v26 = *(v23 - 2);
                    v27 = *(v23 - 2);
                    if (CCLogStream::shouldLog())
                    {
                      v28 = 84;
                      if ((*(v24 - 1) & 8) == 0)
                      {
                        v28 = 46;
                      }

                      v29 = 77;
                      if ((*(v24 - 1) & 4) == 0)
                      {
                        v29 = 46;
                      }

                      v32 = v29;
                      v33 = v28;
                      v30 = 70;
                      if ((*(v24 - 1) & 2) == 0)
                      {
                        v30 = 46;
                      }

                      v31 = 80;
                      if ((*(v24 - 1) & 1) == 0)
                      {
                        v31 = 46;
                      }

                      CCLogStream::logInfo((*v6)[3], "[dk] %s@%d:DynSAR: %c%c%c%c %2u %9u %6u %8s %9s %5u %10s %10s %7s %6u %6u\n", "handleGetDynSARDetailAsyncCallbackV2", 1197, v31, v30, v32, v33, v22, *(v23 - 2), (((v25 >> 1) + 100 * v26) / v25), "N/A", "N/A", (52429 * v27) >> 19, "N/A", "N/A", "N/A", *v23 / 0xAu, *(v23 - 1) / 0xAu);
                    }
                  }
                }
              }

              ++v22;
              v24 += 2;
              v23 += 24;
            }

            while (v22 < *(v8 + 13));
          }

          ++v17;
          v18 += 6;
        }

        while (v17 < *(v8 + 12));
      }

      result = (*v6)[3];
      if (result)
      {
        result = CCLogStream::shouldLog();
        if (result)
        {
          return AppleBCMWLANTxPowerManager::handleGetDynSARDetailAsyncCallbackV2(v6);
        }
      }
    }

    else if (result)
    {
      result = CCLogStream::shouldLog();
      if (result)
      {
        return CCLogStream::logAlert((*v6)[3], "[dk] %s@%d:DynSAR: Sub Command ID mismatch, input %d, output %d\n", "handleGetDynSARDetailAsyncCallbackV2", 1153, 4, *v8);
      }
    }
  }

  else
  {
    result = (*v6)[3];
    if (result)
    {
      result = CCLogStream::shouldLog();
      if (result)
      {
        return AppleBCMWLANTxPowerManager::handleGetDynSARDetailAsyncCallbackV2(v6);
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANTxPowerManager::handleGetDynSARProfileAsyncCallback(uint64_t a1, uint64_t a2, int a3, unsigned __int16 **a4)
{
  v7 = (a1 + 48);
  if (*(*(a1 + 48) + 24) && CCLogStream::shouldLog())
  {
    AppleBCMWLANTxPowerManager::handleGetDynSARProfileAsyncCallback(v7);
    if (a3)
    {
LABEL_4:
      result = (*v7)[3];
      if (result)
      {
        result = CCLogStream::shouldLog();
        if (result)
        {
          return AppleBCMWLANTxPowerManager::handleGetDynSARProfileAsyncCallback(v7);
        }
      }

      return result;
    }
  }

  else if (a3)
  {
    goto LABEL_4;
  }

  v9 = *a4;
  if (*a4)
  {
    if (*v9 == 13)
    {
      v10 = v9[4];
      if ((v10 - 1) >= 2)
      {
        result = (*v7)[3];
        if (result)
        {
          result = CCLogStream::shouldLog();
          if (result)
          {
            return AppleBCMWLANTxPowerManager::handleGetDynSARProfileAsyncCallback(v7);
          }
        }
      }

      else
      {
        v11 = *a4;
        if (v10 == 1)
        {
          AppleBCMWLANTxPowerManager::dumpDynSARProfilesV1(a1, v11);
        }

        else
        {
          AppleBCMWLANTxPowerManager::dumpDynSARProfilesV2(a1, v11);
        }

        result = (*v7)[3];
        if (result)
        {
          result = CCLogStream::shouldLog();
          if (result)
          {
            return AppleBCMWLANTxPowerManager::handleGetDynSARProfileAsyncCallback(v7);
          }
        }
      }
    }

    else
    {
      result = (*v7)[3];
      if (result)
      {
        result = CCLogStream::shouldLog();
        if (result)
        {
          return CCLogStream::logAlert((*v7)[3], "[dk] %s@%d:DynSAR: Sub Command ID mismatch, input %d, output %d\n", "handleGetDynSARProfileAsyncCallback", 1225, 13, *v9);
        }
      }
    }
  }

  else
  {
    result = (*v7)[3];
    if (result)
    {
      result = CCLogStream::shouldLog();
      if (result)
      {
        return AppleBCMWLANTxPowerManager::handleGetDynSARProfileAsyncCallback(v7);
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANTxPowerManager::dumpDynSARProfilesV1(uint64_t a1, uint64_t a2)
{
  v3 = a1 + 48;
  result = *(*(a1 + 48) + 24);
  if (result)
  {
    result = CCLogStream::shouldLog();
    if (result)
    {
      result = AppleBCMWLANTxPowerManager::dumpDynSARProfilesV1(v3);
    }
  }

  if (*(a2 + 14))
  {
    v5 = 0;
    v6 = 0;
    do
    {
      if (*(*v3 + 24) && CCLogStream::shouldLog())
      {
        AppleBCMWLANTxPowerManager::dumpDynSARProfilesV1(v3);
      }

      v7 = *(*v3 + 24);
      if (*(a2 + 12) == v5)
      {
        if (v7 && CCLogStream::shouldLog())
        {
          CCLogStream::logInfo(*(*v3 + 24), "[dk] %s@%d:DynSAR: Profile %d (Active)\n");
        }
      }

      else if (v7 && CCLogStream::shouldLog())
      {
        CCLogStream::logInfo(*(*v3 + 24), "[dk] %s@%d:DynSAR: Profile %d (Common)\n");
      }

      v8 = a2 + 16 + 20 * v6;
      v9 = *v3;
      if (*(*v3 + 24))
      {
        shouldLog = CCLogStream::shouldLog();
        v9 = *v3;
        if (shouldLog)
        {
          CCLogStream::logInfo(*(v9 + 24), "[dk] %s@%d:DynSAR: Mode %d Power %d\n", "dumpDynSARProfilesV1", 2524, *(v8 + 9), *(v8 + 8));
          v9 = *v3;
        }
      }

      if (*(v9 + 24))
      {
        v11 = CCLogStream::shouldLog();
        v9 = *v3;
        if (v11)
        {
          CCLogStream::logInfo(*(v9 + 24), "[dk] %s@%d:DynSAR: Variance: threshold limit %u offset %u\n", "dumpDynSARProfilesV1", 2525, *v8, *(v8 + 4));
          v9 = *v3;
        }
      }

      if (*(v9 + 24))
      {
        v12 = CCLogStream::shouldLog();
        v9 = *v3;
        if (v12)
        {
          CCLogStream::logInfo(*(v9 + 24), "[dk] %s@%d:DynSAR: Failsafe forecast utilization %d%%\n", "dumpDynSARProfilesV1", 2526, *(v8 + 13));
          v9 = *v3;
        }
      }

      if (*(v9 + 24))
      {
        v13 = CCLogStream::shouldLog();
        v9 = *v3;
        if (v13)
        {
          CCLogStream::logInfo(*(v9 + 24), "[dk] %s@%d:DynSAR: Failsafe mean utilization threshold %d%%\n", "dumpDynSARProfilesV1", 2527, *(v8 + 14));
          v9 = *v3;
        }
      }

      if (*(v9 + 24))
      {
        v14 = CCLogStream::shouldLog();
        v9 = *v3;
        if (v14)
        {
          CCLogStream::logInfo(*(v9 + 24), "[dk] %s@%d:DynSAR: Failsafe averaged historical duty cycle threshold %d%%\n", "dumpDynSARProfilesV1", 2528, *(v8 + 15));
          v9 = *v3;
        }
      }

      if (*(v9 + 24))
      {
        v15 = CCLogStream::shouldLog();
        v9 = *v3;
        if (v15)
        {
          CCLogStream::logInfo(*(v9 + 24), "[dk] %s@%d:DynSAR: Optimization forecast duration %d\n", "dumpDynSARProfilesV1", 2529, *(v8 + 10));
          v9 = *v3;
        }
      }

      if (*(v9 + 24))
      {
        v16 = CCLogStream::shouldLog();
        v9 = *v3;
        if (v16)
        {
          CCLogStream::logInfo(*(v9 + 24), "[dk] %s@%d:DynSAR: Optimization averaged historical utilization threshold %d%%\n", "dumpDynSARProfilesV1", 2530, *(v8 + 11));
          v9 = *v3;
        }
      }

      if (*(v9 + 24))
      {
        v17 = CCLogStream::shouldLog();
        v9 = *v3;
        if (v17)
        {
          CCLogStream::logInfo(*(v9 + 24), "[dk] %s@%d:DynSAR: Optimization mean utilization threshold %d%%\n", "dumpDynSARProfilesV1", 2531, *(v8 + 12));
          v9 = *v3;
        }
      }

      if (*(v9 + 24))
      {
        v18 = CCLogStream::shouldLog();
        v9 = *v3;
        if (v18)
        {
          CCLogStream::logInfo(*(v9 + 24), "[dk] %s@%d:DynSAR: Static tx duty cycle limit %d%%\n", "dumpDynSARProfilesV1", 2532, *(v8 + 17));
          v9 = *v3;
        }
      }

      if (*(v9 + 24))
      {
        v19 = CCLogStream::shouldLog();
        v9 = *v3;
        if (v19)
        {
          CCLogStream::logInfo(*(v9 + 24), "[dk] %s@%d:DynSAR: Dynamic Tx duty cycle threshold %d%%\n", "dumpDynSARProfilesV1", 2533, *(v8 + 18));
          v9 = *v3;
        }
      }

      if (*(v9 + 24))
      {
        v20 = CCLogStream::shouldLog();
        v9 = *v3;
        if (v20)
        {
          CCLogStream::logInfo(*(v9 + 24), "[dk] %s@%d:DynSAR: Dynamic Tx duty cycle target %d%%\n", "dumpDynSARProfilesV1", 2534, *(v8 + 19));
          v9 = *v3;
        }
      }

      result = *(v9 + 24);
      if (result)
      {
        result = CCLogStream::shouldLog();
        if (result)
        {
          result = CCLogStream::logInfo(*(*v3 + 24), "[dk] %s@%d:DynSAR: Dynamic Tx duty cycle mean utilization low limit %d%%\n", "dumpDynSARProfilesV1", 2535, *(v8 + 16));
        }
      }

      v5 = ++v6;
    }

    while (*(a2 + 14) > v6);
  }

  return result;
}

uint64_t AppleBCMWLANTxPowerManager::dumpDynSARProfilesV2(uint64_t a1, uint64_t a2)
{
  v3 = a1 + 48;
  result = *(*(a1 + 48) + 24);
  if (result)
  {
    result = CCLogStream::shouldLog();
    if (result)
    {
      result = AppleBCMWLANTxPowerManager::dumpDynSARProfilesV2(v3);
    }
  }

  if (*(a2 + 14))
  {
    v5 = 0;
    v6 = 0;
    do
    {
      if (*(*v3 + 24) && CCLogStream::shouldLog())
      {
        AppleBCMWLANTxPowerManager::dumpDynSARProfilesV2(v3);
      }

      v7 = *(*v3 + 24);
      if (*(a2 + 12) == v5)
      {
        if (v7 && CCLogStream::shouldLog())
        {
          CCLogStream::logInfo(*(*v3 + 24), "[dk] %s@%d:DynSAR: Profile %d (Active)\n");
        }
      }

      else if (v7 && CCLogStream::shouldLog())
      {
        CCLogStream::logInfo(*(*v3 + 24), "[dk] %s@%d:DynSAR: Profile %d (Common)\n");
      }

      v8 = a2 + 16 + 24 * v6;
      v9 = *v3;
      if (*(*v3 + 24))
      {
        shouldLog = CCLogStream::shouldLog();
        v9 = *v3;
        if (shouldLog)
        {
          CCLogStream::logInfo(*(v9 + 24), "[dk] %s@%d:DynSAR: Mode %d Power %d\n", "dumpDynSARProfilesV2", 2556, *(v8 + 9), *(v8 + 8));
          v9 = *v3;
        }
      }

      if (*(v9 + 24))
      {
        v11 = CCLogStream::shouldLog();
        v9 = *v3;
        if (v11)
        {
          CCLogStream::logInfo(*(v9 + 24), "[dk] %s@%d:DynSAR: Variance: threshold limit %u offset %u\n", "dumpDynSARProfilesV2", 2557, *v8, *(v8 + 4));
          v9 = *v3;
        }
      }

      if (*(v9 + 24))
      {
        v12 = CCLogStream::shouldLog();
        v9 = *v3;
        if (v12)
        {
          CCLogStream::logInfo(*(v9 + 24), "[dk] %s@%d:DynSAR: Failsafe forecast utilization %d%%\n", "dumpDynSARProfilesV2", 2558, *(v8 + 13));
          v9 = *v3;
        }
      }

      if (*(v9 + 24))
      {
        v13 = CCLogStream::shouldLog();
        v9 = *v3;
        if (v13)
        {
          CCLogStream::logInfo(*(v9 + 24), "[dk] %s@%d:DynSAR: Failsafe mean utilization threshold %d%%\n", "dumpDynSARProfilesV2", 2559, *(v8 + 14));
          v9 = *v3;
        }
      }

      if (*(v9 + 24))
      {
        v14 = CCLogStream::shouldLog();
        v9 = *v3;
        if (v14)
        {
          CCLogStream::logInfo(*(v9 + 24), "[dk] %s@%d:DynSAR: Failsafe averaged historical duty cycle threshold %d%%\n", "dumpDynSARProfilesV2", 2560, *(v8 + 15));
          v9 = *v3;
        }
      }

      if (*(v9 + 24))
      {
        v15 = CCLogStream::shouldLog();
        v9 = *v3;
        if (v15)
        {
          CCLogStream::logInfo(*(v9 + 24), "[dk] %s@%d:DynSAR: Optimization forecast duration %d\n", "dumpDynSARProfilesV2", 2561, *(v8 + 10));
          v9 = *v3;
        }
      }

      if (*(v9 + 24))
      {
        v16 = CCLogStream::shouldLog();
        v9 = *v3;
        if (v16)
        {
          CCLogStream::logInfo(*(v9 + 24), "[dk] %s@%d:DynSAR: Optimization averaged historical utilization threshold %d%%\n", "dumpDynSARProfilesV2", 2562, *(v8 + 11));
          v9 = *v3;
        }
      }

      if (*(v9 + 24))
      {
        v17 = CCLogStream::shouldLog();
        v9 = *v3;
        if (v17)
        {
          CCLogStream::logInfo(*(v9 + 24), "[dk] %s@%d:DynSAR: Optimization mean utilization threshold %d%%\n", "dumpDynSARProfilesV2", 2563, *(v8 + 12));
          v9 = *v3;
        }
      }

      if (*(v9 + 24))
      {
        v18 = CCLogStream::shouldLog();
        v9 = *v3;
        if (v18)
        {
          CCLogStream::logInfo(*(v9 + 24), "[dk] %s@%d:DynSAR: Static tx duty cycle limit %d%%\n", "dumpDynSARProfilesV2", 2564, *(v8 + 17));
          v9 = *v3;
        }
      }

      if (*(v9 + 24))
      {
        v19 = CCLogStream::shouldLog();
        v9 = *v3;
        if (v19)
        {
          CCLogStream::logInfo(*(v9 + 24), "[dk] %s@%d:DynSAR: Dynamic Tx duty cycle threshold %d%%\n", "dumpDynSARProfilesV2", 2565, *(v8 + 18));
          v9 = *v3;
        }
      }

      if (*(v9 + 24))
      {
        v20 = CCLogStream::shouldLog();
        v9 = *v3;
        if (v20)
        {
          CCLogStream::logInfo(*(v9 + 24), "[dk] %s@%d:DynSAR: Dynamic Tx duty cycle target %d%%\n", "dumpDynSARProfilesV2", 2566, *(v8 + 19));
          v9 = *v3;
        }
      }

      if (*(v9 + 24))
      {
        v21 = CCLogStream::shouldLog();
        v9 = *v3;
        if (v21)
        {
          CCLogStream::logInfo(*(v9 + 24), "[dk] %s@%d:DynSAR: Dynamic Tx duty cycle mean utilization low limit %d%%\n", "dumpDynSARProfilesV2", 2567, *(v8 + 16));
          v9 = *v3;
        }
      }

      result = *(v9 + 24);
      if (result)
      {
        result = CCLogStream::shouldLog();
        if (result)
        {
          result = CCLogStream::logInfo(*(*v3 + 24), "[dk] %s@%d:DynSAR: Time averaging window %d\n", "dumpDynSARProfilesV2", 2568, *(v8 + 20));
        }
      }

      v5 = ++v6;
    }

    while (*(a2 + 14) > v6);
  }

  return result;
}

uint64_t AppleBCMWLANTxPowerManager::configureDynSAR(AppleBCMWLANTxPowerManager *this)
{
  v3 = (this + 48);
  v2 = *(this + 6);
  if (v2[3])
  {
    shouldLog = CCLogStream::shouldLog();
    v2 = *v3;
    if (shouldLog)
    {
      CCLogStream::logNoticeIf(v2[3], 0x20uLL, "[dk] %s@%d:TXPWR_PROFILE: Enter %s \n", "configureDynSAR", 1249, "configureDynSAR");
      v2 = *v3;
    }
  }

  v23 = 0;
  if (!AppleBCMWLANCore::checkForDynSARSupport(*v2) || (AppleBCMWLANCore::getDynSARFeatureFlag(**v3) & 1) == 0)
  {
    if ((*v3)[3] && CCLogStream::shouldLog())
    {
      AppleBCMWLANTxPowerManager::configureDynSAR(v3);
    }

    return 0;
  }

  v5 = *v3;
  v6 = **v3;
  if (v6)
  {
    AppleBCMWLANCore::is4387C0(v6);
    v5 = *v3;
  }

  *(v5 + 12) = 1;
  *(*v3 + 40) = 0;
  IOParseBootArgNumber("wlan.dsa.mode", *v3 + 6, 4);
  IOParseBootArgNumber("wlan.dsa.params", &v23, 4);
  IOParseBootArgNumber("wlan.dsa.rssi.upper", *v3 + 15, 4);
  IOParseBootArgNumber("wlan.dsa.rssi.lower", *v3 + 124, 4);
  v7 = v23;
  v8 = *v3;
  if (v23 && *(v8 + 12))
  {
    *(v8 + 14) = v23;
    *(*v3 + 15) = (v7 >> 8);
    *(*v3 + 16) = HIBYTE(v7);
    *(*v3 + 41) = 1;
    v8 = *v3;
  }

  v9 = AppleBCMWLANTxPowerManager::configureDynSARMode(this, *(v8 + 12));
  v10 = *(this + 6);
  if (v9)
  {
    v11 = 3758097084;
    if (*(v10 + 24) && CCLogStream::shouldLog())
    {
      AppleBCMWLANTxPowerManager::configureDynSAR(v3);
    }

    return v11;
  }

  v13 = AppleBCMWLANTxPowerManager::configureDynSAREvent(this, *(v10 + 68));
  v14 = *(this + 6);
  if (v13)
  {
    v11 = 3758097084;
    if (*(v14 + 24) && CCLogStream::shouldLog())
    {
      AppleBCMWLANTxPowerManager::configureDynSAR(v3);
    }

    return v11;
  }

  if (*(AppleBCMWLANConfigManager::getDynSARPwrBoostCtl(*(v14 + 8)) + 3) >= 4u)
  {
    *(*v3 + 30) = -60;
  }

  v15 = *v3;
  if (*(*v3 + 30) != -65 || *(v15 + 31) != -80)
  {
    AppleBCMWLANTxPowerManager::updateRssiThreshFromBootArgs(this, *v3 + 30, v15 + 31);
    v15 = *(this + 6);
  }

  if (*v15)
  {
    v16 = AppleBCMWLANCore::is4387C0(*v15);
    v15 = *v3;
    if (v16)
    {
      *(AppleBCMWLANConfigManager::getDynSARPwrBoostCtl(v15[1]) + 2) = 6;
      *(AppleBCMWLANConfigManager::getDynSARPwrBoostCtl((*v3)[1]) + 3) = 6;
      v15 = *v3;
      if ((*v3)[3])
      {
        v17 = CCLogStream::shouldLog();
        v15 = *v3;
        if (v17)
        {
          CCLogStream::logAlert(v15[3], "[dk] %s@%d:Override DSA power boost with %d dB for 4387 C0\n", "configureDynSAR", 1301, 6);
          v15 = *v3;
        }
      }
    }
  }

  DynSARPwrBoostCtl = AppleBCMWLANConfigManager::getDynSARPwrBoostCtl(v15[1]);
  if (!AppleBCMWLANTxPowerManager::configureDynSARPwrBoost(this, *(DynSARPwrBoostCtl + 3)))
  {
    DynSARProfile = AppleBCMWLANTxPowerManager::getDynSARProfile(this);
    v20 = *(this + 6);
    if (DynSARProfile)
    {
      if (v20[3])
      {
        v21 = CCLogStream::shouldLog();
        v20 = *v3;
        if (v21)
        {
          CCLogStream::logAlert(v20[3], "[dk] %s@%d:Failed to get DynSAR Profile\n", "configureDynSAR", 1310);
          v20 = *v3;
        }
      }
    }

    if (v20[3])
    {
      v22 = CCLogStream::shouldLog();
      v20 = *v3;
      if (v22)
      {
        CCLogStream::logInfo(v20[3], "[dk] %s@%d:Configured DynSAR\n", "configureDynSAR", 1325);
        v20 = *v3;
      }
    }

    if (v20[3] && CCLogStream::shouldLog())
    {
      AppleBCMWLANTxPowerManager::configureDynSAR(v3);
    }

    return 0;
  }

  v11 = 3758097084;
  if ((*v3)[3] && CCLogStream::shouldLog())
  {
    AppleBCMWLANTxPowerManager::configureDynSAR(v3);
  }

  return v11;
}

uint64_t AppleBCMWLANTxPowerManager::configureDynSARMode(AppleBCMWLANTxPowerManager *this, unsigned int a2)
{
  v4 = (this + 48);
  if (AppleBCMWLANCore::checkForDynSARSupport(**(this + 6)))
  {
    v5 = 3758097084;
    if (a2 < 3)
    {
      v6 = IOMallocZeroData();
      if (v6)
      {
        *v6 = 65537;
        *(v6 + 8) = a2;
        v17[0] = v6;
        v17[1] = 9;
        v7 = (*(***v4 + 88))(**v4);
        if ((*(*v7 + 136))(v7))
        {
          v16 = this;
          v8 = AppleBCMWLANCommander::sendIOVarSet(*(*(this + 6) + 16), "dynsar");
        }

        else
        {
          v8 = AppleBCMWLANCommander::runIOVarSet((*v4)[2], "dynsar", v17, 0, 0);
        }

        v5 = v8;
        v9 = *v4;
        v10 = (*v4)[3];
        if (v5)
        {
          if (v10)
          {
            v11 = (*v4)[3];
            if (CCLogStream::shouldLog())
            {
              AppleBCMWLANTxPowerManager::configureDynSARMode(v4);
            }
          }
        }

        else
        {
          if (v10)
          {
            v12 = (*v4)[3];
            shouldLog = CCLogStream::shouldLog();
            v9 = *v4;
            if (shouldLog)
            {
              AppleBCMWLANTxPowerManager::configureDynSARMode(v9);
              v9 = v16;
            }
          }

          *(v9 + 12) = a2;
          v14 = *v4;
          if (a2)
          {
            *(v14 + 40) = 1;
          }

          else
          {
            *(v14 + 40) = 0;
          }
        }

        IOFreeData();
      }

      else
      {
        return 3758097085;
      }
    }

    else if ((*v4)[3] && CCLogStream::shouldLog())
    {
      CCLogStream::logAlert((*v4)[3], "[dk] %s@%d:Unsupported DSA Mode: %d \n", "configureDynSARMode", 1341, a2);
    }
  }

  else
  {
    if ((*v4)[3] && CCLogStream::shouldLog())
    {
      AppleBCMWLANTxPowerManager::configureDynSARMode(v4);
    }

    return 0;
  }

  return v5;
}

uint64_t AppleBCMWLANTxPowerManager::configureDynSAREvent(AppleBCMWLANTxPowerManager *this, unsigned int a2)
{
  v4 = (this + 48);
  if (AppleBCMWLANCore::checkForDynSARSupport(**(this + 6)))
  {
    v5 = 3758097084;
    if (a2 < 2)
    {
      v6 = IOMallocZeroData();
      if (v6)
      {
        *v6 = 65545;
        *(v6 + 8) = a2;
        v16[0] = v6;
        v16[1] = 9;
        v7 = (*(***v4 + 88))(**v4);
        if ((*(*v7 + 136))(v7))
        {
          v15 = this;
          v8 = AppleBCMWLANCommander::sendIOVarSet(*(*(this + 6) + 16), "dynsar");
        }

        else
        {
          v8 = AppleBCMWLANCommander::runIOVarSet((*v4)[2], "dynsar", v16, 0, 0);
        }

        v5 = v8;
        v9 = *v4;
        v10 = (*v4)[3];
        if (v5)
        {
          if (v10)
          {
            v11 = (*v4)[3];
            if (CCLogStream::shouldLog())
            {
              AppleBCMWLANTxPowerManager::configureDynSAREvent(v4);
            }
          }
        }

        else
        {
          if (v10)
          {
            v12 = (*v4)[3];
            shouldLog = CCLogStream::shouldLog();
            v9 = *v4;
            if (shouldLog)
            {
              AppleBCMWLANTxPowerManager::configureDynSAREvent(v9, a2);
              v9 = v15;
            }
          }

          *(v9 + 17) = a2;
        }

        IOFreeData();
      }

      else
      {
        return 3758097085;
      }
    }

    else if ((*v4)[3] && CCLogStream::shouldLog())
    {
      CCLogStream::logAlert((*v4)[3], "[dk] %s@%d:DSA event %d invalid, either 0 (disable) or 1 (enable) allowed\n", "configureDynSAREvent", 1505, a2);
    }
  }

  else
  {
    if ((*v4)[3] && CCLogStream::shouldLog())
    {
      AppleBCMWLANTxPowerManager::configureDynSAREvent(v4);
    }

    return 0;
  }

  return v5;
}

uint64_t AppleBCMWLANTxPowerManager::configureDynSARPwrBoost(AppleBCMWLANCore ***this, unsigned int a2)
{
  v4 = (this + 6);
  v5 = AppleBCMWLANCore::checkForDynSARSupport(*this[6]);
  v6 = *v4;
  if (v5 && (v6[5] & 1) != 0)
  {
    v7 = 3758097084;
    if (a2 < 7)
    {
      v9 = IOMallocZeroData();
      if (v9)
      {
        *v9 = 65538;
        *(v9 + 8) = a2;
        v18[0] = v9;
        v18[1] = 9;
        v10 = (*(***v4 + 88))(**v4);
        if ((*(*v10 + 136))(v10))
        {
          v17 = this;
          v11 = AppleBCMWLANCommander::sendIOVarSet(this[6][2], "dynsar");
        }

        else
        {
          v11 = AppleBCMWLANCommander::runIOVarSet((*v4)[2], "dynsar", v18, 0, 0);
        }

        v7 = v11;
        v12 = *v4;
        v13 = (*v4)[3];
        if (v7)
        {
          if (v13)
          {
            v14 = (*v4)[3];
            if (CCLogStream::shouldLog())
            {
              AppleBCMWLANTxPowerManager::configureDynSARPwrBoost(v4);
            }
          }
        }

        else
        {
          if (v13)
          {
            v15 = (*v4)[3];
            shouldLog = CCLogStream::shouldLog();
            v12 = *v4;
            if (shouldLog)
            {
              AppleBCMWLANTxPowerManager::configureDynSARPwrBoost(v12);
              v12 = v17;
            }
          }

          *(v12 + 14) = a2;
        }

        IOFreeData();
      }

      else
      {
        return 3758097085;
      }
    }

    else if (v6[3] && CCLogStream::shouldLog())
    {
      CCLogStream::logAlert((*v4)[3], "[dk] %s@%d:DSA power boost %ddB out of range (0~%d dB)\n", "configureDynSARPwrBoost", 1396, a2, 6);
    }
  }

  else
  {
    if (v6[3] && CCLogStream::shouldLog())
    {
      AppleBCMWLANTxPowerManager::configureDynSARPwrBoost(v4);
    }

    return 0;
  }

  return v7;
}

uint64_t AppleBCMWLANTxPowerManager::getDynSARProfile(AppleBCMWLANTxPowerManager *this)
{
  v2 = (this + 48);
  if (AppleBCMWLANCore::checkForDynSARSupport(**(this + 6)))
  {
    v3 = IOMallocZeroData();
    if (v3)
    {
      v4 = v3;
      *v3 = 13;
      v16[0] = v3;
      v16[1] = 64;
      v15[0] = v3;
      v15[1] = 0x4000000040;
      v5 = (*(***v2 + 88))(**v2);
      if ((*(*v5 + 136))(v5))
      {
        v14[0] = this;
        v14[1] = AppleBCMWLANTxPowerManager::handleGetDynSARProfileAsyncCallback;
        v14[2] = 0;
        v6 = *(*(this + 6) + 16);
        v13 = 0x400000;
        v7 = AppleBCMWLANCommander::sendIOVarGet(v6, "dynsar", v16, &v13, v14, 0);
        if (v7)
        {
          v8 = v7;
          if ((*v2)[3])
          {
            if (CCLogStream::shouldLog())
            {
              CCLogStream::logAlert((*v2)[3], "[dk] %s@%d: Failed GET IOCTL, cret[0x%08x]\n", "getDynSARProfile", 2476, v8);
            }
          }
        }
      }

      else
      {
        v10 = AppleBCMWLANCommander::runIOVarGet((*v2)[2], "dynsar", v16, v15, 0);
        if (v10)
        {
          v9 = v10;
          if ((*v2)[3] && CCLogStream::shouldLog())
          {
            AppleBCMWLANTxPowerManager::getDynSARProfile(v2);
          }

          goto LABEL_31;
        }

        if (*v4 != 13)
        {
          v9 = 3758097084;
          if ((*v2)[3] && CCLogStream::shouldLog())
          {
            CCLogStream::logAlert((*v2)[3], "[dk] %s@%d:DynSAR: Sub Command ID mismatch, input %d, output %d\n", "getDynSARProfile", 2487, 13, *v4);
          }

          goto LABEL_31;
        }

        v11 = v4[4];
        if ((v11 - 1) >= 2)
        {
          v9 = 3758097084;
          if ((*v2)[3] && CCLogStream::shouldLog())
          {
            AppleBCMWLANTxPowerManager::getDynSARProfile(v2);
          }

          goto LABEL_31;
        }

        if (v11 == 1)
        {
          AppleBCMWLANTxPowerManager::dumpDynSARProfilesV1(this, v4);
        }

        else
        {
          AppleBCMWLANTxPowerManager::dumpDynSARProfilesV2(this, v4);
        }
      }

      v9 = 0;
LABEL_31:
      IOFreeData();
      return v9;
    }

    if ((*v2)[3])
    {
      v9 = 3758097085;
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANTxPowerManager::getDynSARProfile(v2);
      }
    }

    else
    {
      return 3758097085;
    }
  }

  else
  {
    if ((*v2)[3] && CCLogStream::shouldLog())
    {
      AppleBCMWLANTxPowerManager::getDynSARProfile(v2);
    }

    return 0;
  }

  return v9;
}

uint64_t AppleBCMWLANTxPowerManager::getDynSARStatus(AppleBCMWLANTxPowerManager *this)
{
  v2 = (this + 48);
  if (AppleBCMWLANCore::checkForDynSARSupport(**(this + 6)))
  {
    v3 = 3758097084;
    v4 = IOMallocZeroData();
    if (v4)
    {
      v5 = v4;
      *v4 = 8;
      v14[0] = v4;
      v14[1] = 48;
      v13[0] = v4;
      v13[1] = 0x3000000030;
      v6 = (*(***v2 + 88))(**v2);
      if ((*(*v6 + 136))(v6))
      {
        v12[0] = this;
        v12[1] = AppleBCMWLANTxPowerManager::handleGetDynSARStatusAsyncCallback;
        v12[2] = 0;
        v7 = *(*(this + 6) + 16);
        v11 = 3145728;
        v8 = AppleBCMWLANCommander::sendIOVarGet(v7, "dynsar", v14, &v11, v12, 0);
        if (v8)
        {
          v3 = v8;
          if ((*v2)[3] && CCLogStream::shouldLog())
          {
            AppleBCMWLANTxPowerManager::getDynSARStatus(v2);
          }

LABEL_24:
          IOFreeData();
          return v3;
        }
      }

      else
      {
        v9 = AppleBCMWLANCommander::runIOVarGet((*v2)[2], "dynsar", v14, v13, 0);
        if (v9)
        {
          v3 = v9;
          if ((*v2)[3] && CCLogStream::shouldLog())
          {
            AppleBCMWLANTxPowerManager::getDynSARStatus(v2);
          }

          goto LABEL_24;
        }

        if (*v5 != 8)
        {
          if ((*v2)[3] && CCLogStream::shouldLog())
          {
            CCLogStream::logAlert((*v2)[3], "[dk] %s@%d:DynSAR: Sub Command ID mismatch, input %d, output %d\n", "getDynSARStatus", 1761, 8, *v5);
          }

          goto LABEL_24;
        }

        if (v5[4] != 3)
        {
          if ((*v2)[3] && CCLogStream::shouldLog())
          {
            AppleBCMWLANTxPowerManager::getDynSARStatus(v2);
          }

          goto LABEL_24;
        }

        AppleBCMWLANTxPowerManager::dumpDynSARStatusV3(this, v5);
      }

      if ((*v2)[3] && CCLogStream::shouldLog())
      {
        AppleBCMWLANTxPowerManager::getDynSARStatus(v2);
      }

      v3 = 0;
      goto LABEL_24;
    }

    return 3758097085;
  }

  else
  {
    if ((*v2)[3] && CCLogStream::shouldLog())
    {
      AppleBCMWLANTxPowerManager::getDynSARStatus(v2);
    }

    return 0;
  }
}

uint64_t AppleBCMWLANTxPowerManager::getDynSARAggStats(AppleBCMWLANTxPowerManager *this, unsigned int a2)
{
  v4 = (this + 48);
  if (AppleBCMWLANCore::checkForDynSARSupport(**(this + 6)))
  {
    v5 = 3758097084;
    v6 = IOMallocZeroData();
    if (v6)
    {
      v7 = v6;
      *v6 = 11;
      if (a2 >= 0x15)
      {
        if ((*v4)[3] && CCLogStream::shouldLog())
        {
          AppleBCMWLANTxPowerManager::getDynSARAggStats(v4);
        }

        LOBYTE(a2) = 20;
      }

      *(v7 + 8) = a2;
      v36[0] = v7;
      v36[1] = 9;
      v35[0] = v7;
      v35[1] = 0x65000000650;
      v8 = (*(***v4 + 88))(**v4);
      if ((*(*v8 + 136))(v8))
      {
        *__dst = this;
        *&__dst[8] = AppleBCMWLANTxPowerManager::handleGetDynSARAggStatsAsyncCallback;
        *&v46 = 0;
        v9 = *(*(this + 6) + 16);
        *__str = 105906176;
        v10 = AppleBCMWLANCommander::sendIOVarGet(v9, "dynsar", v36, __str, __dst, 0);
        v11 = *(this + 6);
        if (v10)
        {
          v5 = v10;
          if (v11[3] && CCLogStream::shouldLog())
          {
            AppleBCMWLANTxPowerManager::getDynSARAggStats(v4);
          }

LABEL_72:
          IOFreeData();
          return v5;
        }
      }

      else
      {
        v12 = AppleBCMWLANCommander::runIOVarGet((*v4)[2], "dynsar", v36, v35, 0);
        if (v12)
        {
          v13 = v12;
          if ((*v4)[3] && CCLogStream::shouldLog())
          {
            AppleBCMWLANTxPowerManager::getDynSARAggStats(v4);
          }

          v5 = v13;
          goto LABEL_72;
        }

        if (*v7 != 11)
        {
          if ((*v4)[3] && CCLogStream::shouldLog())
          {
            v33 = *v7;
            CCLogStream::logAlert((*v4)[3], "[dk] %s@%d:DynSAR: Sub Command ID mismatch, input %d, output %d\n");
          }

          goto LABEL_72;
        }

        *__dst = 0u;
        v46 = 0u;
        v47 = 0u;
        v48 = 0u;
        v49 = 0u;
        v50 = 0u;
        v51 = 0u;
        v52 = 0u;
        v53 = 0u;
        v54 = 0u;
        v55 = 0u;
        v56 = 0u;
        v57 = 0u;
        v58 = 0u;
        v59 = 0u;
        v60 = 0u;
        *__str = 0u;
        v38 = 0u;
        v39 = 0u;
        v40 = 0u;
        v41 = 0u;
        v42 = 0u;
        v14 = 8 * v7[5];
        v43 = 0u;
        v44 = 0u;
        if (((v14 * 2 + (v14 * 2) * v7[6]) | 8) > v7[1])
        {
          if ((*v4)[3] && CCLogStream::shouldLog())
          {
            v31 = v7[1];
            CCLogStream::logAlert((*v4)[3], "[dk] %s@%d:DynSAR: Error, invalid data length  %d\n");
          }

          goto LABEL_72;
        }

        if (v7[6] >= 5u)
        {
          if ((*v4)[3] && CCLogStream::shouldLog())
          {
            v32 = v7[6];
            CCLogStream::logAlert((*v4)[3], "[dk] %s@%d:DynSAR: Error, invalid number of aggregated antenna %d, max is %d\n");
          }

          goto LABEL_72;
        }

        v15 = *v4;
        if ((*v4)[3])
        {
          shouldLog = CCLogStream::shouldLog();
          v15 = *v4;
          if (shouldLog)
          {
            CCLogStream::logInfo(v15[3], "[dk] %s@%d:DynSAR: Ux: Tmon Utilization at aggregated index x\n", "getDynSARAggStats", 1995);
            v15 = *v4;
          }
        }

        if (v15[3])
        {
          v17 = CCLogStream::shouldLog();
          v15 = *v4;
          if (v17)
          {
            CCLogStream::logInfo(v15[3], "[dk] %s@%d:DynSAR: Umx: Mean of Ux over Twin\n", "getDynSARAggStats", 1996);
            v15 = *v4;
          }
        }

        if (v15[3] && CCLogStream::shouldLog())
        {
          AppleBCMWLANTxPowerManager::getDynSARAggStats(v4);
        }

        snprintf(__str, 0x80uLL, "DynSAR: id %10s %4s ", "Ts", "Opt");
        strlcat(__dst, __str, 0x100uLL);
        *__str = 0u;
        v38 = 0u;
        v39 = 0u;
        v40 = 0u;
        v41 = 0u;
        v42 = 0u;
        v43 = 0u;
        v44 = 0u;
        if (v7[6])
        {
          v18 = 0;
          do
          {
            snprintf(__str, 0x80uLL, "%2s%u %2s%u %5s%u ", "U", v18, "Um", v18, "V", v18);
            strlcat(__dst, __str, 0x100uLL);
            *__str = 0u;
            v38 = 0u;
            v39 = 0u;
            v40 = 0u;
            v41 = 0u;
            v42 = 0u;
            v43 = 0u;
            v44 = 0u;
            ++v18;
          }

          while (v18 < v7[6]);
        }

        if ((*v4)[3] && CCLogStream::shouldLog())
        {
          CCLogStream::logInfo((*v4)[3], "[dk] %s@%d:%s\n", "getDynSARAggStats", 2006, __dst);
        }

        v59 = 0u;
        v60 = 0u;
        v57 = 0u;
        v58 = 0u;
        v55 = 0u;
        v56 = 0u;
        v53 = 0u;
        v54 = 0u;
        v51 = 0u;
        v52 = 0u;
        v49 = 0u;
        v50 = 0u;
        v47 = 0u;
        v48 = 0u;
        *__dst = 0u;
        v46 = 0u;
        if (v7[5])
        {
          v19 = 0;
          v20 = 0;
          do
          {
            v21 = &v7[8 * v19 + 8];
            v22 = *(v21 + 8);
            v23 = *v21;
            v24 = 84;
            if ((v23 & 8) == 0)
            {
              v24 = 46;
            }

            v25 = 77;
            if ((v23 & 4) == 0)
            {
              v25 = 46;
            }

            v34 = v24;
            v26 = 70;
            if ((v23 & 2) == 0)
            {
              v26 = 46;
            }

            v27 = (v23 & 1) == 0;
            v28 = 80;
            if (v27)
            {
              v28 = 46;
            }

            snprintf(__str, 0x80uLL, "DynSAR: %2u %10llu %c%c%c%c ", v19, v22, v28, v26, v25, v34);
            strlcat(__dst, __str, 0x100uLL);
            *__str = 0u;
            v38 = 0u;
            v39 = 0u;
            v40 = 0u;
            v41 = 0u;
            v42 = 0u;
            v43 = 0u;
            v44 = 0u;
            if (v7[6])
            {
              v29 = 0;
              do
              {
                snprintf(__str, 0x80uLL, "%3u %3u %6u ", *&v7[8 * v20 + 8 + v14], *&v7[8 * v20 + 12 + v14], *&v7[8 * v20 + 14 + v14]);
                strlcat(__dst, __str, 0x100uLL);
                *__str = 0u;
                v38 = 0u;
                v39 = 0u;
                v40 = 0u;
                v41 = 0u;
                v42 = 0u;
                v43 = 0u;
                v44 = 0u;
                ++v29;
                ++v20;
              }

              while (v29 < v7[6]);
            }

            if ((*v4)[3] && CCLogStream::shouldLog())
            {
              CCLogStream::logInfo((*v4)[3], "[dk] %s@%d:%s\n", "getDynSARAggStats", 2021, __dst);
            }

            v59 = 0u;
            v60 = 0u;
            v57 = 0u;
            v58 = 0u;
            v55 = 0u;
            v56 = 0u;
            v53 = 0u;
            v54 = 0u;
            v51 = 0u;
            v52 = 0u;
            v49 = 0u;
            v50 = 0u;
            v47 = 0u;
            v48 = 0u;
            *__dst = 0u;
            v46 = 0u;
            ++v19;
          }

          while (v19 < v7[5]);
        }

        v11 = *v4;
      }

      if (v11[3] && CCLogStream::shouldLog())
      {
        AppleBCMWLANTxPowerManager::getDynSARAggStats(v4);
      }

      v5 = 0;
      goto LABEL_72;
    }

    return 3758097085;
  }

  else
  {
    if ((*v4)[3] && CCLogStream::shouldLog())
    {
      AppleBCMWLANTxPowerManager::getDynSARAggStats(v4);
    }

    return 0;
  }
}

uint64_t AppleBCMWLANTxPowerManager::getDynSARDetail(AppleBCMWLANTxPowerManager *this, unsigned int a2, unsigned int a3)
{
  v6 = (this + 48);
  if (AppleBCMWLANCore::checkForDynSARSupport(**(this + 6)))
  {
    v7 = *v6;
    if (a3 >= 0xB)
    {
      if (v7[3] && (shouldLog = CCLogStream::shouldLog(), v7 = *v6, shouldLog))
      {
        LOBYTE(a3) = 10;
        CCLogStream::logAlert(v7[3], "[dk] %s@%d:DynSAR: Observation window size %d exceeds host limit, cap to %d\n", "getDynSARDetail", 2054, 10, 10);
        v7 = *v6;
      }

      else
      {
        LOBYTE(a3) = 10;
      }
    }

    if (a2 >= 2)
    {
      if (v7[3] && (v9 = CCLogStream::shouldLog(), v7 = *v6, v9))
      {
        CCLogStream::logAlert(v7[3], "[dk] %s@%d:DynSAR: Invalid slice index %d, force it to slice %d\n", "getDynSARDetail", 2059, 0, 0);
        a2 = 0;
        v7 = *v6;
      }

      else
      {
        a2 = 0;
      }
    }

    MaxCmdRxPayload = AppleBCMWLANCommander::getMaxCmdRxPayload(v7[2]);
    v11 = IOMallocZeroData();
    if (v11)
    {
      v78 = 0;
      v76 = a2;
      v77 = 4;
      BYTE5(v78) = a3;
      v75[0] = &v76;
      v75[1] = 20;
      if (MaxCmdRxPayload == 11)
      {
        v12 = 0;
      }

      else
      {
        v12 = (MaxCmdRxPayload - 11) | ((MaxCmdRxPayload - 11) << 32);
      }

      v70 = v11;
      if (MaxCmdRxPayload == 11)
      {
        v13 = 0;
      }

      else
      {
        v13 = v11;
      }

      v74[0] = v13;
      v74[1] = v12;
      v14 = (*(***v6 + 88))(**v6);
      if ((*(*v14 + 136))(v14))
      {
        v73[0] = this;
        v73[1] = AppleBCMWLANTxPowerManager::handleGetDynSARDetailAsyncCallback;
        v73[2] = 0;
        v15 = *(*(this + 6) + 16);
        v72 = (MaxCmdRxPayload - 11) << 16;
        v16 = AppleBCMWLANCommander::sendIOVarGet(v15, "wlc:dynsar", v75, &v72, v73, 0);
        if (v16)
        {
          v17 = v16;
          if ((*v6)[3] && CCLogStream::shouldLog())
          {
            AppleBCMWLANTxPowerManager::getDynSARDetail(v6);
          }

          goto LABEL_132;
        }

LABEL_120:
        if ((*v6)[3])
        {
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANTxPowerManager::getDynSARDetail(v6);
          }

          v17 = 0;
        }

        else
        {
          v17 = 0;
        }

        goto LABEL_132;
      }

      v18 = AppleBCMWLANCommander::runIOVarGet((*v6)[2], "wlc:dynsar", v75, v74, 0);
      if (v18)
      {
        v17 = v18;
        if ((*v6)[3] && CCLogStream::shouldLog())
        {
          AppleBCMWLANTxPowerManager::getDynSARDetail(v6);
        }

        goto LABEL_132;
      }

      if (*v70 == 4)
      {
        v19 = *v6;
        v20 = (*v6)[3];
        if (a2 == *(v70 + 14))
        {
          if (v20)
          {
            v21 = CCLogStream::shouldLog();
            v19 = *v6;
            if (v21)
            {
              CCLogStream::logInfo(v19[3], "[dk] %s@%d:DynSAR: Details, slice %u monitor periods %u first sync %llu\n", "getDynSARDetail", 2115, *(v70 + 14), *(v70 + 13), *(v70 + 2));
              v19 = *v6;
            }
          }

          if (v19[3] && CCLogStream::shouldLog())
          {
            AppleBCMWLANTxPowerManager::getDynSARDetail(v6);
          }

          v22 = v70;
          if (*(v70 + 13))
          {
            v23 = 0;
            v24 = v70 + 16;
            do
            {
              if (*v24)
              {
                if (*(v24 - 1))
                {
                  if ((*v6)[3])
                  {
                    v25 = CCLogStream::shouldLog();
                    v22 = v70;
                    if (v25)
                    {
                      if ((*(v24 - 1) & 8) != 0)
                      {
                        v26 = 84;
                      }

                      else
                      {
                        v26 = 46;
                      }

                      if ((*(v24 - 1) & 4) != 0)
                      {
                        v27 = 77;
                      }

                      else
                      {
                        v27 = 46;
                      }

                      if ((*(v24 - 1) & 2) != 0)
                      {
                        v28 = 70;
                      }

                      else
                      {
                        v28 = 46;
                      }

                      if (*(v24 - 1))
                      {
                        v29 = 80;
                      }

                      else
                      {
                        v29 = 46;
                      }

                      CCLogStream::logInfo((*v6)[3], "[dk] %s@%d:DynSAR: [%d] Opt %c%c%c%c TS %llu(us) Dur %u\n", "getDynSARDetail", 2125, v23, v29, v28, v27, v26, *v24, *(v24 - 1));
                      v22 = v70;
                    }
                  }
                }
              }

              ++v23;
              v24 += 2;
            }

            while (v23 < v22[13]);
          }

          v30 = v22[14];
          v31 = (*v6 + 11264);
          if (v22[14])
          {
            v64 = 0;
            v65 = *(*v6 + 23093);
          }

          else
          {
            v64 = *(*v6 + 23092);
            v65 = 0;
          }

          if (v22[12])
          {
            v32 = 0;
            v71 = 0;
            v67 = 0;
            v66 = 0;
            do
            {
              v33 = *v6;
              if ((*v6)[3])
              {
                v34 = CCLogStream::shouldLog();
                v33 = *v6;
                if (v34)
                {
                  CCLogStream::logInfo(v33[3], "[dk] %s@%d:DynSAR: Slice %d Core & Ant combined index %d Detail\n", "getDynSARDetail", 2136, *(v70 + 14), v71);
                  v33 = *v6;
                }
              }

              if (v33[3])
              {
                v35 = CCLogStream::shouldLog();
                v33 = *v6;
                if (v35)
                {
                  CCLogStream::logInfo(v33[3], "[dk] %s@%d:DynSAR: %7s %9s %6s %8s %9s %5s %10s %10s %7s %6s %6s\n", "getDynSARDetail", 2137, "Opt", "TxDur", "%TxDC", "PAv:mw", "PlimAv:mw", "Util%", "Energy", "Qsar:mw*ms", "FS(us)", "Util_pred", "Util_hist");
                  v33 = *v6;
                }
              }

              if (v33[3] && CCLogStream::shouldLog())
              {
                AppleBCMWLANTxPowerManager::getDynSARDetail(v6);
              }

              v36 = v70;
              v30 = *(v70 + 14);
              v37 = (*v6 + 11264);
              if (*(v70 + 14))
              {
                *(*v6 + 23093) = v65;
              }

              else
              {
                *(*v6 + 23092) = v64;
              }

              LOBYTE(v38) = *(v70 + 13);
              v68 = v32;
              if (v38)
              {
                v39 = 0;
                v40 = 0;
                v69 = 1440 * v71;
                do
                {
                  v41 = &v36[v39];
                  if (*&v36[v39 + 32])
                  {
                    v42 = *(v41 + 7);
                    if (v42)
                    {
                      v43 = &v36[v32];
                      v44 = *&v36[v32 + 360];
                      if (v44)
                      {
                        v45 = ((v44 >> 1) + 100 * v43[89]) / v44;
                        v46 = ((v42 >> 1) + 1000 * v44) / v42;
                        v47 = (v46 * v45 + 50) / 0x64;
                        v48 = ((v42 >> 1) + 100 * v43[86]) / v42;
                        if ((*v6)[3])
                        {
                          v49 = CCLogStream::shouldLog();
                          v36 = v70;
                          if (v49)
                          {
                            v52 = 84;
                            if ((v41[24] & 8) == 0)
                            {
                              v52 = 46;
                            }

                            v53 = 77;
                            if ((v41[24] & 4) == 0)
                            {
                              v53 = 46;
                            }

                            v63 = v52;
                            v54 = 70;
                            if ((v41[24] & 2) == 0)
                            {
                              v54 = 46;
                            }

                            v55 = 80;
                            if ((v41[24] & 1) == 0)
                            {
                              v55 = 46;
                            }

                            CCLogStream::logInfo((*v6)[3], "[dk] %s@%d:DynSAR: %c%c%c%c %2u %9u %6llu %8llu %9llu %5llu %10u %10u %7u %6u %6u\n", "getDynSARDetail", 2167, v55, v54, v53, v63, v40, v43[86], v48, (v46 * v45 + 50) / 0x64, v46, v45, v43[89], v43[90], *(v70 + v32 + 364), *(v70 + v32 + 367), *(v70 + v32 + 366));
                            v36 = v70;
                          }
                        }

                        v30 = v36[14];
                        v50 = *(v41 + 4);
                        v51 = *v6;
                        if (v36[14])
                        {
                          (&v51[1440 * v71])[4 * *(*v6 + 23093) + 5786] = v50;
                          BYTE6((&(*v6)[1440 * v71])[4 * *(*v6 + 23093) + 5789]) = v41[24];
                          LODWORD((&(*v6)[1440 * v71])[4 * *(*v6 + 23093) + 5787]) = v43[86];
                          HIBYTE((&(*v6)[1440 * v71])[4 * *(*v6 + 23093) + 5789]) = v48;
                          HIDWORD((&(*v6)[1440 * v71])[4 * *(*v6 + 23093) + 5787]) = v46;
                          LODWORD((&(*v6)[1440 * v71])[4 * *(*v6 + 23093) + 5788]) = v47;
                          BYTE4((&(*v6)[1440 * v71])[4 * *(*v6 + 23093) + 5789]) = v45;
                          BYTE5((&(*v6)[1440 * v71])[4 * *(*v6 + 23093) + 5789]) = v36[v32 + 366];
                          HIDWORD((&(*v6)[1440 * v71])[4 * *(*v6 + 23093) + 5788]) = v43[89];
                          LODWORD((&(*v6)[1440 * v71])[4 * (*(*v6 + 23093))++ + 5789]) = v43[90];
                          v38 = v36[13];
                          if (!v71 && v40 + 1 == v38)
                          {
                            v67 = *(*v6 + 23093);
                          }
                        }

                        else
                        {
                          (&v51[4 * *(*v6 + 23092)])[v69 + 26] = v50;
                          BYTE6((&(*v6)[4 * *(*v6 + 23092)])[v69 + 29]) = v41[24];
                          LODWORD((&(*v6)[4 * *(*v6 + 23092)])[v69 + 27]) = v43[86];
                          HIBYTE((&(*v6)[4 * *(*v6 + 23092)])[v69 + 29]) = v48;
                          HIDWORD((&(*v6)[4 * *(*v6 + 23092)])[v69 + 27]) = v46;
                          LODWORD((&(*v6)[4 * *(*v6 + 23092)])[v69 + 28]) = v47;
                          BYTE4((&(*v6)[4 * *(*v6 + 23092)])[v69 + 29]) = v45;
                          BYTE5((&(*v6)[4 * *(*v6 + 23092)])[v69 + 29]) = v36[v32 + 366];
                          HIDWORD((&(*v6)[4 * *(*v6 + 23092)])[v69 + 28]) = v43[89];
                          LODWORD((&(*v6)[4 * (*(*v6 + 23092))++])[v69 + 29]) = v43[90];
                          v38 = v36[13];
                          if (!v71 && v40 + 1 == v38)
                          {
                            v30 = 0;
                            v66 = *(*v6 + 23092);
                          }
                        }
                      }
                    }
                  }

                  ++v40;
                  v39 += 16;
                  v32 += 96;
                }

                while (v40 < v38);
              }

              v32 = v68 + 24;
              ++v71;
            }

            while (v71 < v36[12]);
          }

          else
          {
            v66 = 0;
            v67 = 0;
          }

          v56 = *v6;
          if (v30)
          {
            if (v67 == *(*v6 + 23093))
            {
              if (v67 != 360)
              {
                goto LABEL_120;
              }

              *(*v6 + 23093) = 0;
              v57 = *v6;
              v58 = 26844;
              goto LABEL_118;
            }

            if (v56[3])
            {
              if (CCLogStream::shouldLog())
              {
                AppleBCMWLANTxPowerManager::getDynSARDetail(v6);
              }

              goto LABEL_131;
            }
          }

          else
          {
            if (v66 == *(*v6 + 23092))
            {
              if (v66 != 360)
              {
                goto LABEL_120;
              }

              *(*v6 + 23092) = 0;
              v57 = *v6;
              v58 = 26840;
LABEL_118:
              v59 = v58 | 0x10000u;
              if (!*(v57 + v59))
              {
                *(v57 + v59) = 1;
              }

              goto LABEL_120;
            }

            if (v56[3])
            {
              if (CCLogStream::shouldLog())
              {
                AppleBCMWLANTxPowerManager::getDynSARDetail(v6);
              }

              goto LABEL_131;
            }
          }

LABEL_134:
          v17 = 3758097084;
          goto LABEL_132;
        }

        if (!v20)
        {
          goto LABEL_134;
        }

        if (CCLogStream::shouldLog())
        {
          v62 = *(v70 + 14);
          CCLogStream::logAlert((*v6)[3], "[dk] %s@%d:DynSAR: Slice index mismatch, input %d, output %d\n");
          goto LABEL_134;
        }
      }

      else
      {
        if (!(*v6)[3])
        {
          goto LABEL_134;
        }

        if (CCLogStream::shouldLog())
        {
          v61 = *v70;
          CCLogStream::logAlert((*v6)[3], "[dk] %s@%d:DynSAR: Sub Command ID mismatch, input %d, output %d\n");
          goto LABEL_134;
        }
      }

LABEL_131:
      v17 = 3758097084;
LABEL_132:
      IOFreeData();
      return v17;
    }

    return 3758097085;
  }

  else
  {
    if ((*v6)[3] && CCLogStream::shouldLog())
    {
      AppleBCMWLANTxPowerManager::getDynSARDetail(v6);
    }

    return 0;
  }
}

uint64_t AppleBCMWLANTxPowerManager::getDynSARDetailV2(AppleBCMWLANTxPowerManager *this, unsigned int a2, unsigned int a3)
{
  v6 = (this + 48);
  if (AppleBCMWLANCore::checkForDynSARSupport(**(this + 6)))
  {
    v7 = *v6;
    if (a3 >= 0xB)
    {
      if (v7[3] && (shouldLog = CCLogStream::shouldLog(), v7 = *v6, shouldLog))
      {
        LOBYTE(a3) = 10;
        CCLogStream::logAlert(v7[3], "[dk] %s@%d:DynSAR: Observation window size %d exceeds host limit, cap to %d\n", "getDynSARDetailV2", 2257, 10, 10);
        v7 = *v6;
      }

      else
      {
        LOBYTE(a3) = 10;
      }
    }

    if (a2 >= 2)
    {
      if (v7[3] && (v9 = CCLogStream::shouldLog(), v7 = *v6, v9))
      {
        CCLogStream::logAlert(v7[3], "[dk] %s@%d:DynSAR: Invalid slice index %d, force it to slice %d\n", "getDynSARDetailV2", 2262, 0, 0);
        a2 = 0;
        v7 = *v6;
      }

      else
      {
        a2 = 0;
      }
    }

    MaxCmdRxPayload = AppleBCMWLANCommander::getMaxCmdRxPayload(v7[2]);
    v11 = IOMallocZeroData();
    if (v11)
    {
      v12 = v11;
      v73 = 0;
      v71 = a2;
      v72 = 4;
      BYTE5(v73) = a3;
      v70[0] = &v71;
      v70[1] = 20;
      if (MaxCmdRxPayload == 11)
      {
        v13 = 0;
      }

      else
      {
        v13 = (MaxCmdRxPayload - 11) | ((MaxCmdRxPayload - 11) << 32);
      }

      if (MaxCmdRxPayload == 11)
      {
        v14 = 0;
      }

      else
      {
        v14 = v11;
      }

      v69[0] = v14;
      v69[1] = v13;
      v15 = (*(***v6 + 88))(**v6);
      if ((*(*v15 + 136))(v15))
      {
        v68[0] = this;
        v68[1] = AppleBCMWLANTxPowerManager::handleGetDynSARDetailAsyncCallbackV2;
        v68[2] = 0;
        v16 = *(*(this + 6) + 16);
        v67 = (MaxCmdRxPayload - 11) << 16;
        v17 = AppleBCMWLANCommander::sendIOVarGet(v16, "wlc:dynsar", v70, &v67, v68, 0);
        if (v17)
        {
          v18 = v17;
          if ((*v6)[3] && CCLogStream::shouldLog())
          {
            AppleBCMWLANTxPowerManager::getDynSARDetailV2(v6);
          }

          goto LABEL_129;
        }

LABEL_118:
        if ((*v6)[3] && CCLogStream::shouldLog())
        {
          AppleBCMWLANTxPowerManager::getDynSARDetailV2(v6);
        }

        v18 = 0;
        goto LABEL_129;
      }

      v19 = AppleBCMWLANCommander::runIOVarGet((*v6)[2], "wlc:dynsar", v70, v69, 0);
      if (v19)
      {
        v18 = v19;
        if ((*v6)[3] && CCLogStream::shouldLog())
        {
          AppleBCMWLANTxPowerManager::getDynSARDetailV2(v6);
        }

        goto LABEL_129;
      }

      if (*v12 == 4)
      {
        v20 = *v6;
        v21 = (*v6)[3];
        if (a2 == *(v12 + 14))
        {
          if (v21)
          {
            v22 = CCLogStream::shouldLog();
            v20 = *v6;
            if (v22)
            {
              CCLogStream::logInfo(v20[3], "[dk] %s@%d:DynSAR: Details, slice %u monitor periods %u first sync %llu\n", "getDynSARDetailV2", 2319, *(v12 + 14), *(v12 + 13), *(v12 + 2));
              v20 = *v6;
            }
          }

          if (v20[3] && CCLogStream::shouldLog())
          {
            AppleBCMWLANTxPowerManager::getDynSARDetailV2(v6);
          }

          if (*(v12 + 13))
          {
            v23 = 0;
            v24 = v12 + 16;
            do
            {
              if (*v24 && *(v24 - 1) && (*v6)[3] && CCLogStream::shouldLog())
              {
                v25 = 84;
                if ((*(v24 - 1) & 8) == 0)
                {
                  v25 = 46;
                }

                v60 = v25;
                if ((*(v24 - 1) & 4) != 0)
                {
                  v26 = 77;
                }

                else
                {
                  v26 = 46;
                }

                if ((*(v24 - 1) & 2) != 0)
                {
                  v27 = 70;
                }

                else
                {
                  v27 = 46;
                }

                if (*(v24 - 1))
                {
                  v28 = 80;
                }

                else
                {
                  v28 = 46;
                }

                CCLogStream::logInfo((*v6)[3], "[dk] %s@%d:DynSAR: [%d] Opt %c%c%c%c TS %llu(us) Dur %u\n", "getDynSARDetailV2", 2329, v23, v28, v27, v26, v60, *v24, *(v24 - 1));
              }

              ++v23;
              v24 += 2;
            }

            while (v23 < *(v12 + 13));
          }

          v29 = *(v12 + 14);
          v30 = (*v6 + 11264);
          if (*(v12 + 14))
          {
            v61 = 0;
            v62 = *(*v6 + 23093);
          }

          else
          {
            v61 = *(*v6 + 23092);
            v62 = 0;
          }

          if (*(v12 + 12))
          {
            v31 = 0;
            v66 = 0;
            v65 = 0;
            v63 = 0;
            do
            {
              v32 = *v6;
              if ((*v6)[3])
              {
                v33 = CCLogStream::shouldLog();
                v32 = *v6;
                if (v33)
                {
                  CCLogStream::logInfo(v32[3], "[dk] %s@%d:DynSAR: Slice %d Core & Ant combined index %d Detail\n", "getDynSARDetailV2", 2340, *(v12 + 14), v66);
                  v32 = *v6;
                }
              }

              if (v32[3])
              {
                v34 = CCLogStream::shouldLog();
                v32 = *v6;
                if (v34)
                {
                  CCLogStream::logInfo(v32[3], "[dk] %s@%d:DynSAR: %7s %9s %6s %8s %9s %5s %10s %10s %7s %6s %6s\n", "getDynSARDetailV2", 2341, "Opt", "TxDur", "%TxDC", "PAv:mw", "PlimAv:mw", "Util%", "Energy", "Qsar:mw*ms", "FS(us)", "Util_pred", "Util_hist");
                  v32 = *v6;
                }
              }

              if (v32[3] && CCLogStream::shouldLog())
              {
                AppleBCMWLANTxPowerManager::getDynSARDetailV2(v6);
              }

              v29 = *(v12 + 14);
              v35 = (*v6 + 11264);
              if (*(v12 + 14))
              {
                *(*v6 + 23093) = v62;
              }

              else
              {
                *(*v6 + 23092) = v61;
              }

              LOBYTE(v36) = *(v12 + 13);
              v64 = v31;
              if (v36)
              {
                v37 = 0;
                v38 = 0;
                v39 = 1440 * v66;
                do
                {
                  v40 = &v12[v37];
                  if (*&v12[v37 + 16])
                  {
                    v41 = *(v40 + 7);
                    if (v41)
                    {
                      v42 = v12 + v31;
                      v43 = *(v12 + v31 + 348) / 0xAu;
                      v44 = ((v41 >> 1) + 100 * *(v12 + v31 + 344)) / v41;
                      if ((*v6)[3] && CCLogStream::shouldLog())
                      {
                        v48 = 84;
                        if ((v40[12] & 8) == 0)
                        {
                          v48 = 46;
                        }

                        v49 = 77;
                        if ((v40[12] & 4) == 0)
                        {
                          v49 = 46;
                        }

                        v59 = v48;
                        v50 = 70;
                        if ((v40[12] & 2) == 0)
                        {
                          v50 = 46;
                        }

                        v51 = 80;
                        if ((v40[12] & 1) == 0)
                        {
                          v51 = 46;
                        }

                        CCLogStream::logInfo((*v6)[3], "[dk] %s@%d:DynSAR: %c%c%c%c %2u %9u %6u %8s %9s %5u %10s %10s %7s %6u %6u\n", "getDynSARDetailV2", 2369, v51, v50, v49, v59, v38, *(v42 + 86), v44, "N/A", "N/A", v43, "N/A", "N/A", "N/A", *(v12 + v31 + 352) / 0xAu, *(v12 + v31 + 350) / 0xAu);
                      }

                      v29 = *(v12 + 14);
                      v45 = *(v40 + 4);
                      v46 = *v6;
                      if (*(v12 + 14))
                      {
                        v47 = 1440 * v66;
                        (&v46[1440 * v66])[4 * *(*v6 + 23093) + 5786] = v45;
                        BYTE6((&(*v6)[4 * *(*v6 + 23093)])[v47 + 5789]) = *(v40 + 24);
                        LODWORD((&(*v6)[4 * *(*v6 + 23093)])[v47 + 5787]) = *(v42 + 86);
                        HIBYTE((&(*v6)[4 * *(*v6 + 23093)])[v47 + 5789]) = v44;
                        HIDWORD((&(*v6)[4 * *(*v6 + 23093)])[v47 + 5787]) = 255;
                        LODWORD((&(*v6)[4 * *(*v6 + 23093)])[v47 + 5788]) = 255;
                        BYTE4((&(*v6)[4 * *(*v6 + 23093)])[v47 + 5789]) = v43;
                        BYTE5((&(*v6)[4 * *(*v6 + 23093)])[v47 + 5789]) = *(v12 + v31 + 350) / 0xAu;
                        HIDWORD((&(*v6)[4 * *(*v6 + 23093)])[v47 + 5788]) = 255;
                        LODWORD((&(*v6)[4 * (*(*v6 + 23093))++])[v47 + 5789]) = 255;
                        v36 = *(v12 + 13);
                        if (!v66 && v38 + 1 == v36)
                        {
                          v65 = *(*v6 + 23093);
                        }
                      }

                      else
                      {
                        (&v46[4 * *(*v6 + 23092)])[v39 + 26] = v45;
                        BYTE6((&(*v6)[4 * *(*v6 + 23092)])[v39 + 29]) = *(v40 + 24);
                        LODWORD((&(*v6)[4 * *(*v6 + 23092)])[v39 + 27]) = *(v42 + 86);
                        HIBYTE((&(*v6)[4 * *(*v6 + 23092)])[v39 + 29]) = v44;
                        HIDWORD((&(*v6)[4 * *(*v6 + 23092)])[v39 + 27]) = 255;
                        LODWORD((&(*v6)[4 * *(*v6 + 23092)])[v39 + 28]) = 255;
                        BYTE4((&(*v6)[4 * *(*v6 + 23092)])[v39 + 29]) = v43;
                        BYTE5((&(*v6)[4 * *(*v6 + 23092)])[v39 + 29]) = *(v12 + v31 + 350) / 0xAu;
                        HIDWORD((&(*v6)[4 * *(*v6 + 23092)])[v39 + 28]) = 255;
                        LODWORD((&(*v6)[4 * (*(*v6 + 23092))++])[v39 + 29]) = 255;
                        v36 = *(v12 + 13);
                        if (!v66 && v38 + 1 == v36)
                        {
                          v29 = 0;
                          v63 = *(*v6 + 23092);
                        }
                      }
                    }
                  }

                  ++v38;
                  v37 += 8;
                  v31 += 48;
                }

                while (v38 < v36);
              }

              v31 = v64 + 12;
              ++v66;
            }

            while (v66 < *(v12 + 12));
          }

          else
          {
            v63 = 0;
            v65 = 0;
          }

          v52 = *v6;
          if (v29)
          {
            if (v65 == *(*v6 + 23093))
            {
              if (v65 != 360)
              {
                goto LABEL_118;
              }

              *(*v6 + 23093) = 0;
              v53 = *v6;
              v54 = 26844;
              goto LABEL_116;
            }

            if (v52[3] && CCLogStream::shouldLog())
            {
              AppleBCMWLANTxPowerManager::getDynSARDetailV2(v6);
            }
          }

          else
          {
            if (v63 == *(*v6 + 23092))
            {
              if (v63 != 360)
              {
                goto LABEL_118;
              }

              *(*v6 + 23092) = 0;
              v53 = *v6;
              v54 = 26840;
LABEL_116:
              v55 = v54 | 0x10000u;
              if (!*(v53 + v55))
              {
                *(v53 + v55) = 1;
              }

              goto LABEL_118;
            }

            if (v52[3] && CCLogStream::shouldLog())
            {
              AppleBCMWLANTxPowerManager::getDynSARDetailV2(v6);
            }
          }
        }

        else if (v21 && CCLogStream::shouldLog())
        {
          v58 = *(v12 + 14);
          CCLogStream::logAlert((*v6)[3], "[dk] %s@%d:DynSAR: Slice index mismatch, input %d, output %d\n");
        }
      }

      else if ((*v6)[3] && CCLogStream::shouldLog())
      {
        v57 = *v12;
        CCLogStream::logAlert((*v6)[3], "[dk] %s@%d:DynSAR: Sub Command ID mismatch, input %d, output %d\n");
      }

      v18 = 3758097084;
LABEL_129:
      IOFreeData();
      return v18;
    }

    return 3758097085;
  }

  else
  {
    if ((*v6)[3] && CCLogStream::shouldLog())
    {
      AppleBCMWLANTxPowerManager::getDynSARDetailV2(v6);
    }

    return 0;
  }
}

uint64_t AppleBCMWLANTxPowerManager::handleDynSAREventToPopulateUnsharedTxDCUtil(uint64_t a1, unsigned int *a2)
{
  v4 = (a1 + 48);
  v5 = AppleBCMWLANCore::is4399Up(**(a1 + 48));
  if (AppleBCMWLANCore::checkForDynSARSupport(**v4))
  {
    if (v5)
    {
      v6 = 168;
    }

    else
    {
      v6 = 200;
    }

    v7 = IOMallocZeroData();
    if (v7)
    {
      v8 = v7;
      *v7 = 3;
      v38[0] = v7;
      v38[1] = v6;
      v37[0] = v7;
      v37[1] = v6 & 0xFFFFFF00FFFFFFFFLL | (v6 << 32);
      v9 = (*(***v4 + 88))(**v4);
      if ((*(*v9 + 136))(v9))
      {
        v36[0] = a1;
        v36[1] = AppleBCMWLANTxPowerManager::handleDynSAREventToPopulateUnsharedTxDCUtilAsyncCallback;
        v36[2] = a2;
        v10 = *(*(a1 + 48) + 16);
        v35 = v6 << 16;
        v11 = AppleBCMWLANCommander::sendIOVarGet(v10, "dynsar", v38, &v35, v36, 0);
        if (v11)
        {
          v12 = v11;
          if ((*v4)[3])
          {
            if (CCLogStream::shouldLog())
            {
              CCLogStream::logAlert((*v4)[3], "[dk] %s@%d: Failed GET IOCTL, cret[0x%08x]\n", "handleDynSAREventToPopulateUnsharedTxDCUtil", 2611, v12);
            }
          }
        }

        goto LABEL_11;
      }

      v14 = AppleBCMWLANCommander::runIOVarGet((*v4)[2], "dynsar", v38, v37, 0);
      if (v14)
      {
        v13 = v14;
        if ((*v4)[3] && CCLogStream::shouldLog())
        {
          AppleBCMWLANTxPowerManager::handleDynSAREventToPopulateUnsharedTxDCUtil(v4);
        }

        goto LABEL_36;
      }

      if (*v8 != 3)
      {
        if ((*v4)[3] && CCLogStream::shouldLog())
        {
          CCLogStream::logAlert((*v4)[3], "[dk] %s@%d:DynSAR: Sub Command ID mismatch, input %d, output %d\n", "handleDynSAREventToPopulateUnsharedTxDCUtil", 2622, 3, *v8);
        }

        goto LABEL_35;
      }

      v16 = v8 + 4;
      v15 = v8[4];
      v17 = v15 == 4 || v15 == 2;
      if (!v17 || *(v8 + 35) != 2 || *(v8 + 36) >= 9u)
      {
        if ((*v4)[3] && CCLogStream::shouldLog())
        {
          AppleBCMWLANTxPowerManager::handleDynSAREventToPopulateUnsharedTxDCUtil(v4);
        }

LABEL_35:
        v13 = 3758097084;
        goto LABEL_36;
      }

      if (v15 == 4)
      {
        v20 = *(v8 + 38);
        if (v20 + 16 * *(v8 + 32) > v8[5])
        {
          if ((*v4)[3] && CCLogStream::shouldLog())
          {
            AppleBCMWLANTxPowerManager::handleDynSAREventToPopulateUnsharedTxDCUtil(v4);
          }

          goto LABEL_35;
        }

        v21 = 0;
        v22 = v16 + v20;
      }

      else if (v15 == 2)
      {
        v19 = *(v8 + 38);
        if (v19 + 24 * *(v8 + 32) > v8[5])
        {
          if ((*v4)[3] && CCLogStream::shouldLog())
          {
            AppleBCMWLANTxPowerManager::handleDynSAREventToPopulateUnsharedTxDCUtil(v4);
          }

          goto LABEL_35;
        }

        v22 = 0;
        v21 = v16 + v19;
      }

      else
      {
        if ((*v4)[3] && CCLogStream::shouldLog())
        {
          AppleBCMWLANTxPowerManager::handleDynSAREventToPopulateUnsharedTxDCUtil(v4);
        }

        v21 = 0;
        v22 = 0;
      }

      if (!*(v8 + 3))
      {
        goto LABEL_11;
      }

      v23 = *(v8 + 32);
      if (*(v8 + 32))
      {
        v24 = 0;
        do
        {
          v25 = v24 + *a2 * v23;
          v26 = *v16;
          if (v26 == 4)
          {
            v28 = *(v8 + 3);
            if (v24 == 2)
            {
              if (v28)
              {
                v28 = 100 * *&v22[8 * v25] / v28;
              }

              *(a2 + 72) = v28;
              *(a2 + 73) = *&v22[8 * v25 + 4] / 0xAu;
            }

            else if (v24 == 1)
            {
              if (v28)
              {
                v28 = 100 * *&v22[8 * v25] / v28;
              }

              *(a2 + 70) = v28;
              *(a2 + 71) = *&v22[8 * v25 + 4] / 0xAu;
            }

            else if (v24)
            {
              if (v28)
              {
                v28 = 100 * *&v22[8 * v25] / v28;
              }

              *(a2 + 74) = v28;
              *(a2 + 75) = *&v22[8 * v25 + 4] / 0xAu;
            }

            else
            {
              if (v28)
              {
                v28 = 100 * *&v22[8 * v25] / v28;
              }

              *(a2 + 68) = v28;
              *(a2 + 69) = *&v22[8 * v25 + 4] / 0xAu;
            }
          }

          else if (v26 == 2)
          {
            v27 = *(v8 + 3);
            if (v24 == 2)
            {
              if (v27)
              {
                v27 = 100 * *&v21[12 * v25 + 8] / v27;
              }

              *(a2 + 72) = v27;
              *(a2 + 73) = 100 * *&v21[12 * v25 + 4] / *&v21[12 * v25];
            }

            else if (v24 == 1)
            {
              if (v27)
              {
                v27 = 100 * *&v21[12 * v25 + 8] / v27;
              }

              *(a2 + 70) = v27;
              *(a2 + 71) = 100 * *&v21[12 * v25 + 4] / *&v21[12 * v25];
            }

            else if (v24)
            {
              if (v27)
              {
                v27 = 100 * *&v21[12 * v25 + 8] / v27;
              }

              *(a2 + 74) = v27;
              *(a2 + 75) = 100 * *&v21[12 * v25 + 4] / *&v21[12 * v25];
            }

            else
            {
              if (v27)
              {
                v27 = 100 * *&v21[12 * v25 + 8] / v27;
              }

              *(a2 + 68) = v27;
              *(a2 + 69) = 100 * *&v21[12 * v25 + 4] / *&v21[12 * v25];
            }
          }

          else if ((*v4)[3] && CCLogStream::shouldLog())
          {
            AppleBCMWLANTxPowerManager::handleDynSAREventToPopulateUnsharedTxDCUtil(v4);
          }

          ++v24;
          v23 = *(v8 + 32);
        }

        while (v24 < v23);
      }

      if (!AppleBCMWLANCore::getIOReporterPerSlice(**v4))
      {
        goto LABEL_11;
      }

      v29 = *(a2 + 32);
      v30 = *(a2 + 80);
      IOReporterPerSlice = AppleBCMWLANCore::getIOReporterPerSlice(**(a1 + 48));
      v13 = AppleBCMWLANIOReportingPerSlice::reportDSA(IOReporterPerSlice, *a2, a2);
      AppleBCMWLANTxPowerManager::sendDynSARStatsEventCoreAnalytics(a1, a2);
      IOFree(a2, 0x58uLL);
      if (v13)
      {
        AppleBCMWLANTxPowerManager::handleDynSAREventToPopulateUnsharedTxDCUtil(v4, v36);
        v13 = LODWORD(v36[0]);
        goto LABEL_36;
      }

      if (v29 != 2 || !v30)
      {
        goto LABEL_36;
      }

      if ((*v4)[3] && CCLogStream::shouldLog())
      {
        CCLogStream::logAlert((*v4)[3], "[dk] %s@%d:DynSAR: Fail Safe Mode Reported in DSA Event. Trigger CoreCapture with fail safe reason code %d\n", "handleDynSAREventToPopulateUnsharedTxDCUtil", 2718, v30);
        if ((v30 & 1) == 0)
        {
LABEL_100:
          if ((v30 & 2) != 0)
          {
            v32 = (*v4)[4];
            v33 = -469789950;
            v34 = 2722;
          }

          else
          {
            v32 = (*v4)[4];
            if ((v30 & 4) != 0)
            {
              v33 = -469789949;
              v34 = 2724;
            }

            else
            {
              v33 = -469789947;
              v34 = 2726;
            }
          }

          goto LABEL_108;
        }
      }

      else if ((v30 & 1) == 0)
      {
        goto LABEL_100;
      }

      v32 = (*v4)[4];
      v34 = 2720;
      v33 = -469789951;
LABEL_108:
      CCFaultReporter::reportFault(v32, 4u, "/Library/Caches/com.apple.xbs/Sources/AppleBCMWLANV3_driverkit/AppleBCMWLANTxPowerManager.cpp", v34, "handleDynSAREventToPopulateUnsharedTxDCUtil", 0, v33, 0);
LABEL_11:
      v13 = 0;
LABEL_36:
      IOFreeData();
      return v13;
    }

    return 3758097085;
  }

  else
  {
    if ((*v4)[3] && CCLogStream::shouldLog())
    {
      AppleBCMWLANTxPowerManager::handleDynSAREventToPopulateUnsharedTxDCUtil(v4);
    }

    return 0;
  }
}

uint64_t AppleBCMWLANTxPowerManager::configureDynSARPwrBoostPerRSSI(AppleBCMWLANCore ***this, int a2)
{
  v4 = (this + 6);
  result = AppleBCMWLANCore::checkForDynSARSupport(*this[6]);
  if (result)
  {
    if (*(*v4 + 40) == 1 && (*(*v4 + 41) & 1) == 0)
    {
      result = AppleBCMWLANTxPowerManager::getDynSARPwrBoostPerRSSI(this, a2);
      v6 = this[6];
      if (*(v6 + 14) != result)
      {
        v7 = *(v6 + 20) - a2;
        if (v7 < 0)
        {
          v7 = -v7;
        }

        if (v7 >= 3)
        {
          v8 = result;
          mach_continuous_time();
          v9 = *(*v4 + 88);
          absolutetime_to_nanoseconds();
          AppleBCMWLANTxPowerManager::configureDynSARPwrBoost(this, v8);
          this[6][11] = mach_continuous_time();
          *(this[6] + 20) = a2;
          if (AppleBCMWLANTxPowerManager::getDynSARStatus(this) && *(*v4 + 24) && CCLogStream::shouldLog())
          {
            AppleBCMWLANTxPowerManager::configureDynSARPwrBoostPerRSSI(v4);
          }

          result = AppleBCMWLANTxPowerManager::getDynSARAggStats(this, 0x14u);
          if (result)
          {
            result = *(*v4 + 24);
            if (result)
            {
              result = CCLogStream::shouldLog();
              if (result)
              {
                return AppleBCMWLANTxPowerManager::configureDynSARPwrBoostPerRSSI(v4);
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANTxPowerManager::processDynSAREvent(uint64_t result, uint64_t a2)
{
  v3 = *(a2 + 9);
  v4 = *(a2 + 4);
  v6 = (result + 48);
  v5 = *(result + 48);
  v7 = (v5 + 4 * v3);
  v8 = v7[47];
  v9 = v4 >= v8;
  v10 = v4 - v8;
  if (!v9)
  {
    v10 = 0;
  }

  v11 = *(v5 + v3 + 184);
  if (v11 <= 3)
  {
    if (!*(v5 + v3 + 184))
    {
      v7[32] += v10;
      goto LABEL_22;
    }

    if (v11 == 1)
    {
      v7[34] += v10;
      goto LABEL_22;
    }

    if (v11 == 2)
    {
      v7[36] += v10;
      goto LABEL_22;
    }
  }

  else if (*(v5 + v3 + 184) > 7u)
  {
    if (v11 == 8)
    {
      v7[42] += v10;
      goto LABEL_22;
    }

    if (v11 == 9)
    {
      v7[44] += v10;
      goto LABEL_22;
    }
  }

  else
  {
    if (v11 == 4)
    {
      v7[38] += v10;
      goto LABEL_22;
    }

    if (v11 == 5)
    {
      v7[40] += v10;
      goto LABEL_22;
    }
  }

  result = *(v5 + 24);
  if (result)
  {
    result = CCLogStream::shouldLog();
    if (result)
    {
      result = AppleBCMWLANTxPowerManager::processDynSAREvent(v6);
    }
  }

LABEL_22:
  *(*v6 + 4 * v3 + 188) = *(a2 + 4);
  *(*v6 + v3 + 184) = *(a2 + 10);
  ++*(*v6 + 4 * v3 + 196);
  return result;
}

uint64_t AppleBCMWLANTxPowerManager::txSDBEnable(AppleBCMWLANTxPowerManager *this, int a2)
{
  v2 = a2;
  v5 = (this + 48);
  v4 = *(this + 6);
  v6 = v4[42];
  if (a2)
  {
    if (v4[42])
    {
      return 0;
    }

    v8 = 1;
  }

  else
  {
    v8 = 0;
    v7 = 0;
    if (!v4[42])
    {
      return v7;
    }
  }

  v21 = v8;
  v9 = (*(**v4 + 88))();
  if ((*(*v9 + 136))(v9))
  {
    v18 = this;
    v19 = AppleBCMWLANTxPowerManager::handleConfigureTxSDBAsyncCallback;
    v20 = 0;
    v10 = AppleBCMWLANCommander::sendIOVarSet(*(*(this + 6) + 16), "txsdb");
  }

  else
  {
    v11 = (*v5)[2];
    v18 = &v21;
    v19 = 4;
    v10 = AppleBCMWLANCommander::runIOVarSet(v11, "txsdb", &v18, 0, 0);
  }

  v7 = v10;
  v12 = *v5;
  v13 = (*v5)[3];
  if (v7)
  {
    if (v13)
    {
      v14 = (*v5)[3];
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANTxPowerManager::txSDBEnable(v5);
      }
    }
  }

  else
  {
    if (v13)
    {
      v15 = (*v5)[3];
      shouldLog = CCLogStream::shouldLog();
      v12 = *v5;
      if (shouldLog)
      {
        AppleBCMWLANTxPowerManager::txSDBEnable(v12);
        v12 = v18;
      }
    }

    v7 = 0;
    *(v12 + 42) = v2;
  }

  return v7;
}

AppleBCMWLANCore *AppleBCMWLANTxPowerManager::dynTxSDBStartUpdate(AppleBCMWLANCore ***this, char a2)
{
  v4 = this + 6;
  result = AppleBCMWLANCore::isDynTxSDBEnabled(*this[6]);
  if (result)
  {
    result = AppleBCMWLANCore::getTxSDBFeatureFlag(**v4);
    if (result)
    {
      *(*v4 + 23) |= 1 << a2;
      v6 = *v4;
      if (*(*v4 + 23) == 3)
      {
        if (*(v6 + 22))
        {
          result = v6[3];
          if (result)
          {
            result = CCLogStream::shouldLog();
            if (result)
            {
              return AppleBCMWLANTxPowerManager::dynTxSDBStartUpdate(v4);
            }
          }
        }

        else
        {

          return AppleBCMWLANTxPowerManager::txSDBEnable(this, 1);
        }
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANTxPowerManager::dynTxSDBStopUpdate(AppleBCMWLANCore ***this, char a2)
{
  result = AppleBCMWLANCore::isDynTxSDBEnabled(*this[6]);
  if (result)
  {
    result = AppleBCMWLANCore::getTxSDBFeatureFlag(*this[6]);
    if (result)
    {
      *(this[6] + 23) &= ~(1 << a2);

      return AppleBCMWLANTxPowerManager::txSDBEnable(this, 0);
    }
  }

  return result;
}

uint64_t AppleBCMWLANTxPowerManager::dynTxSDBPause(AppleBCMWLANCore ***this, char a2)
{
  v4 = this + 6;
  result = AppleBCMWLANCore::isDynTxSDBEnabled(*this[6]);
  if (result)
  {
    result = AppleBCMWLANCore::getTxSDBFeatureFlag(**v4);
    if (result)
    {
      *(*v4 + 22) |= 1 << a2;
      if (*(*v4 + 23) == 3)
      {
        if ((*v4)[3] && CCLogStream::shouldLog())
        {
          AppleBCMWLANTxPowerManager::dynTxSDBPause(v4);
        }

        return AppleBCMWLANTxPowerManager::txSDBEnable(this, 0);
      }
    }
  }

  return result;
}

AppleBCMWLANCore *AppleBCMWLANTxPowerManager::dynTxSDBUnPause(AppleBCMWLANCore ***this, char a2)
{
  result = AppleBCMWLANCore::isDynTxSDBEnabled(*this[6]);
  if (result)
  {
    result = AppleBCMWLANCore::getTxSDBFeatureFlag(*this[6]);
    if (result)
    {
      *(this[6] + 22) &= ~(1 << a2);
      v5 = this[6];
      if (*(v5 + 23) == 3)
      {
        result = v5[3];
        if (result)
        {
          result = CCLogStream::shouldLog();
          v5 = this[6];
          if (result)
          {
            result = CCLogStream::logNotice(v5[3], "[dk] %s@%d:DynTxSDB: dynTxSDBUnPause %x\n", "dynTxSDBUnPause", 2910, *(v5 + 22));
            v5 = this[6];
          }
        }

        if (!*(v5 + 22))
        {

          return AppleBCMWLANTxPowerManager::txSDBEnable(this, 1);
        }
      }
    }
  }

  return result;
}

uint64_t *OUTLINED_FUNCTION_4_16(uint64_t a1)
{
  v1 = *(a1 + 24);
  result = *a1;
  v3 = *result;
  return result;
}

uint64_t *OUTLINED_FUNCTION_8_13(uint64_t ***a1)
{
  v1 = (*a1)[3];
  result = **a1;
  v3 = *result;
  return result;
}

OSObject *AppleBCMWLANCommandMonitor::withMonitorLengthProviderAndLogger(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  pObject = 0xAAAAAAAAAAAAAAAALL;
  if (OSObjectAllocate(gAppleBCMWLANCommandMonitorMetaClass, &pObject))
  {
    return 0;
  }

  v16 = pObject;
  if (pObject && ((pObject->OSMetaClassBase::__vftable[1].getMetaClass)(pObject, a1, a2, a3, a4, a5, a6, a7, a8) & 1) == 0)
  {
    (v16->release)(v16);
    return 0;
  }

  return v16;
}

uint64_t AppleBCMWLANCommandMonitor::initWithMonitorLengthProviderAndLogger(uint64_t a1, uint64_t a2, int a3, const OSMetaClassBase *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v17 = OSObject::init(a1);
  result = 0;
  if (!a4)
  {
    return result;
  }

  if (!v17)
  {
    return result;
  }

  v19 = IOMallocZeroTyped();
  result = 0;
  *(a1 + 48) = v19;
  v20 = a1 + 48;
  if (!a5 || !v19)
  {
    return result;
  }

  *(v19 + 72) = a5;
  (*(**(*v20 + 72) + 8))(*(*v20 + 72));
  v21 = *v20;
  if (!a3)
  {
    result = *(v21 + 72);
    if (!result)
    {
      return result;
    }

    result = CCLogStream::shouldLog();
    if (!result)
    {
      return result;
    }

    AppleBCMWLANCommandMonitor::initWithMonitorLengthProviderAndLogger(a1 + 48);
    return 0;
  }

  *(v21 + 80) = a4;
  *(*v20 + 216) = OSMetaClassBase::safeMetaCast(a4, gAppleBCMWLANCoreMetaClass);
  v22 = *v20;
  if (!*(*v20 + 216))
  {
    result = *(v22 + 72);
    if (!result)
    {
      return result;
    }

    result = CCLogStream::shouldLog();
    if (!result)
    {
      return result;
    }

    AppleBCMWLANCommandMonitor::initWithMonitorLengthProviderAndLogger(a1 + 48);
    return 0;
  }

  *(v22 + 24) = a2;
  v23 = *v20;
  if (!a6)
  {
    result = *(v23 + 72);
    if (!result)
    {
      return result;
    }

    result = CCLogStream::shouldLog();
    if (!result)
    {
      return result;
    }

    AppleBCMWLANCommandMonitor::initWithMonitorLengthProviderAndLogger(a1 + 48);
    return 0;
  }

  *(v23 + 88) = a6;
  (*(**(*v20 + 88) + 8))(*(*v20 + 88));
  *(*v20 + 96) = a7;
  (*(**(*v20 + 96) + 8))(*(*v20 + 96));
  *(*v20 + 32) = a9;
  *(*v20 + 40) = a8;
  *(*v20 + 112) = a3;
  v33 = 0;
  *(*v20 + 10) = 0;
  if (IOParseBootArgNumber("wlan.commander.panic_rateexceeded", &v33, 4))
  {
    *(*v20 + 10) = v33 == 1;
  }

  *(*v20 + 104) = OSDictionary::withCapacity(0x64u);
  if (!*(*v20 + 104))
  {
    result = *(*v20 + 72);
    if (!result)
    {
      return result;
    }

    result = CCLogStream::shouldLog();
    if (!result)
    {
      return result;
    }

    AppleBCMWLANCommandMonitor::initWithMonitorLengthProviderAndLogger(a1 + 48);
    return 0;
  }

  *(*v20 + 16) = OSSet::withCapacity(0x64, v24);
  v25 = *v20;
  if (!*(*v20 + 16))
  {
    result = *(v25 + 72);
    if (!result)
    {
      return result;
    }

    result = CCLogStream::shouldLog();
    if (!result)
    {
      return result;
    }

    AppleBCMWLANCommandMonitor::initWithMonitorLengthProviderAndLogger(a1 + 48);
    return 0;
  }

  v26 = 0;
  *(v25 + 48) = 1;
  *(*v20 + 52) = 10;
  *(*v20 + 56) = 64;
  *(*v20 + 60) = 1000;
  *(*v20 + 64) = 5000;
  *(*v20 + 68) = 10000;
  *(*v20 + 124) = 5000;
  *(*v20 + 128) = 10000;
  *(*v20 + 132) = 2500000;
  *(*v20 + 136) = 5000000;
  *(*v20 + 140) = 0x7FFFFFFF;
  *(*v20 + 144) = 5000;
  *(*v20 + 148) = 10000;
  *(*v20 + 152) = 1000000;
  *(*v20 + 156) = 2000000;
  *(*v20 + 160) = 0x7FFFFFFF;
  *(*v20 + 164) = 10;
  *(*v20 + 168) = 20;
  *(*v20 + 172) = 750000;
  *(*v20 + 176) = 1500000;
  *(*v20 + 180) = 0x7FFFFFFF;
  for (i = off_1003CF5B0; ; i += 2)
  {
    v28 = v26 == 3 ? 0 : v26;
    *(*(a1 + 48) + 8 * v26 + 184) = AppleBCMWLANCommandMonitor::createCommandQueueTimeReporter(a1, v26, (*(a1 + 48) + 20 * v28 + 124));
    v29 = *(a1 + 48);
    v30 = *(v29 + 8 * v26 + 184);
    if (!v30)
    {
      break;
    }

    OSSet::setObject(*(v29 + 16), v30);
    v31 = *(*v20 + 8 * v26 + 184);
    (*(*v31 + 16))(v31);
    v32 = *i;
    (*(*v20 + 40))(*(*v20 + 24), *(*v20 + 80), *(*v20 + 8 * v26++ + 184), "Commander Response Time", v32);
    if (v26 == 4)
    {
      return 1;
    }
  }

  result = *(v29 + 72);
  if (result)
  {
    result = CCLogStream::shouldLog();
    if (result)
    {
      CCLogStream::logAlert(*(*v20 + 72), "[dk] %s@%d:unable to create ivars->fcommandQueueTimeStats for queue type %u\n", "initWithMonitorLengthProviderAndLogger", 210, v26);
      return 0;
    }
  }

  return result;
}

uint64_t AppleBCMWLANCommandMonitor::createCommandQueueTimeReporter(uint64_t a1, unsigned int a2, unsigned int *a3)
{
  v4 = 0;
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v13[3] = v5;
  v13[4] = v5;
  v13[1] = v5;
  v13[2] = v5;
  v13[0] = v5;
  do
  {
    v6 = *a3++;
    v7 = &v13[v4];
    *&v13[v4] = v6;
    if (v4 == 4)
    {
      v8 = 4;
    }

    else
    {
      v8 = 1;
    }

    *(v7 + 2) = v8;
    *(v7 + 3) = 1;
    ++v4;
  }

  while (v4 != 5);
  IO80211Controller::getReporterProvider(*(*(a1 + 48) + 216));
  v9 = (&kCommandRespTimeMapping + 16 * a2);
  v10 = *v9;
  v11 = v9[1];
  return IOHistogramReporter::with();
}

uint64_t AppleBCMWLANCommandMonitor::reportQueueWaitTimeus(uint64_t a1, int a2, unsigned int a3)
{
  result = 3758097090;
  if (a2 <= 3)
  {
    v5 = *(*(a1 + 48) + 8 * a2 + 184);
    if (v5)
    {
      IOHistogramReporter::tallyValue(v5, a3);
      return 0;
    }
  }

  return result;
}

uint64_t AppleBCMWLANCommandMonitor::freeResources(AppleBCMWLANCommandMonitor *this)
{
  v2 = *(this + 6);
  v3 = v2[12];
  if (v3)
  {
    (*(*v3 + 16))(v3);
    *(*(this + 6) + 96) = 0;
    v2 = *(this + 6);
  }

  v4 = v2[2];
  if (v4)
  {
    (*(*v4 + 16))(v4);
    *(*(this + 6) + 16) = 0;
    v2 = *(this + 6);
  }

  v5 = v2[13];
  if (v5)
  {
    (*(*v5 + 16))(v5);
    *(*(this + 6) + 104) = 0;
    v2 = *(this + 6);
  }

  v6 = v2[11];
  if (v6)
  {
    (*(*v6 + 16))(v6);
    *(*(this + 6) + 88) = 0;
    v2 = *(this + 6);
  }

  v2[5] = 0;
  *(*(this + 6) + 32) = 0;
  result = *(*(this + 6) + 72);
  if (result)
  {
    result = (*(*result + 16))(result);
    *(*(this + 6) + 72) = 0;
  }

  return result;
}

void AppleBCMWLANCommandMonitor::free(void **this)
{
  if (this[6])
  {
    AppleBCMWLANCommandMonitor::freeResources(this);
    memset_s(this[6], 0xE0uLL, 0, 0xE0uLL);
    v2 = this[6];
    if (v2)
    {
      IOFree(v2, 0xE0uLL);
      this[6] = 0;
    }
  }

  OSObject::free(this);
}

uint64_t AppleBCMWLANCommandMonitor::setRateThreshold(AppleBCMWLANCommandMonitor *this, unsigned int a2, int a3)
{
  v6 = *(this + 6);
  if (*(v6 + 112) < a2)
  {
    *(v6 + 112) = a2;
    v6 = *(this + 6);
  }

  *(v6 + 116) = a2;
  *(*(this + 6) + 120) = a3;
  if (*(*(this + 6) + 72) && CCLogStream::shouldLog())
  {
    CCLogStream::logAlert(*(*(this + 6) + 72), "[dk] %s@%d:Applying command rate threshold of %d commands within %d ms\n", "setRateThreshold", 320, a2, a3);
  }

  return 1;
}

BOOL AppleBCMWLANCommandMonitor::monitorCmdPrepared(AppleBCMWLANCommandMonitor *this, AppleBCMWLANCommand *a2)
{
  if (a2)
  {
    if (AppleBCMWLANCommand::getCmdName(a2))
    {
      CmdName = AppleBCMWLANCommand::getCmdName(a2);
      v5 = OSString::withCString(CmdName);
      if (v5)
      {
        v6 = v5;
        v7 = this + 48;
        Object = OSDictionary::getObject(*(*(this + 6) + 104), v5);
        v9 = OSMetaClassBase::safeMetaCast(Object, gOSDictionaryMetaClass);
        if (!v9)
        {
          if (AppleBCMWLANCommandMonitor::monitorCmdPrepared(this + 48, v6, &v43))
          {
            goto LABEL_53;
          }

          v9 = v43;
        }

        v10 = OSDictionary::getObject(v9, "CommandMonitorTimeHistoryKey");
        v11 = OSMetaClassBase::safeMetaCast(v10, gOSOrderedSetMetaClass);
        if (v11)
        {
          goto LABEL_8;
        }

        v12 = *(*v7 + 112);
        v13 = OSOrderedSet::withCapacity();
        if (!v13)
        {
          if (*(*v7 + 72) && CCLogStream::shouldLog())
          {
            AppleBCMWLANCommandMonitor::monitorCmdPrepared(this + 48, a2);
          }

          goto LABEL_53;
        }

        v11 = v13;
        v14 = OSDictionary::setObject(v9, "CommandMonitorTimeHistoryKey", v13);
        (v11->release)(v11);
        if (v14)
        {
LABEL_8:
          v15 = AppleBCMWLANCommand::getQueuedTime_ns(a2, 1u) / 0xF4240uLL;
          v16 = OSNumber::withNumber(v15, 0x40uLL);
          if (!v16)
          {
            if (*(*v7 + 72) && CCLogStream::shouldLog())
            {
              v21 = *(*v7 + 72);
              v22 = AppleBCMWLANCommand::getCmdName(a2);
              CCLogStream::logAlert(v21, "[dk] %s@%d:Failed to create timeAtPending %lld for cmd %s\n", "monitorCmdPrepared", 382, v15, v22);
            }

            goto LABEL_53;
          }

          v17 = v16;
          if (!(v11->__vftable[1].Dispatch)(v11))
          {
            goto LABEL_22;
          }

          if (*(*v7 + 8) == 1)
          {
            v18 = OSDictionary::getObject(v9, "CommandMonitorHistogramKey");
            v19 = OSMetaClassBase::safeMetaCast(v18, gIOHistogramReporterMetaClass);
            if (!v19)
            {
              HistogramReporter = AppleBCMWLANCommandMonitor::makeHistogramReporter(this, v6);
              if (!HistogramReporter)
              {
                if (*(*v7 + 72) && CCLogStream::shouldLog())
                {
                  AppleBCMWLANCommandMonitor::monitorCmdPrepared(this + 48, a2);
                }

                goto LABEL_52;
              }

              v20 = HistogramReporter;
              OSDictionary::setObject(v9, "CommandMonitorHistogramKey", HistogramReporter);
              v23 = 1;
LABEL_18:
              FirstObject = OSOrderedSet::getFirstObject(v11);
              v25 = OSMetaClassBase::safeMetaCast(FirstObject, gOSNumberMetaClass);
              if (v25)
              {
                v26 = OSNumber::unsigned64BitValue(v25);
                if (v20 && v26)
                {
                  IOHistogramReporter::tallyValue(v20, v15 - v26);
                }

LABEL_22:
                if ((v11->__vftable[1].Dispatch)(v11) == *(*v7 + 112))
                {
                  LastObject = OSOrderedSet::getLastObject(v11);
                  v28 = OSMetaClassBase::safeMetaCast(LastObject, gOSNumberMetaClass);
                  OSSet::removeObject(v11, v28);
                }

                OSOrderedSet::setFirstObject(v11, v17);
                if ((*(*v7 + 116) || *(*v7 + 120)) && (v11->__vftable[1].Dispatch)(v11) >= *(*v7 + 116))
                {
                  v29 = OSOrderedSet::getLastObject(v11);
                  v30 = OSMetaClassBase::safeMetaCast(v29, gOSNumberMetaClass);
                  if (v30)
                  {
                    v31 = v15 - OSNumber::unsigned64BitValue(v30);
                    v32 = *v7;
                    if (v31 < *(*v7 + 120))
                    {
                      if (*(v32 + 72))
                      {
                        shouldLog = CCLogStream::shouldLog();
                        v32 = *v7;
                        if (shouldLog)
                        {
                          v41 = *(v32 + 72);
                          v42 = AppleBCMWLANCommand::getCmdName(a2);
                          CCLogStream::logEmergency(v41, "[dk] %s@%d: Command %s rate exceeded %d calls within %d ms, rule is %d calls within %d ms\n", "monitorCmdPrepared", 445, v42, *(*v7 + 116), v31, *(*v7 + 116), *(*v7 + 120));
                          v32 = *v7;
                        }
                      }

                      if (*(v32 + 10))
                      {
                        v34 = 6;
                      }

                      else
                      {
                        v34 = 4;
                      }

                      v35 = *(v32 + 96);
                      v36 = AppleBCMWLANCommand::getCmdName(a2);
                      CCFaultReporter::reportFault(v35, v34, "/Library/Caches/com.apple.xbs/Sources/AppleBCMWLANV3_driverkit/AppleBCMWLANCommandMonitor.cpp", 0x1C4u, "monitorCmdPrepared", 0, -469793765, "cmd=%s", v36);
                      if ((v11->__vftable[1].Dispatch)(v11) >= 2)
                      {
                        do
                        {
                          v37 = OSOrderedSet::getLastObject(v11);
                          v38 = OSMetaClassBase::safeMetaCast(v37, gOSNumberMetaClass);
                          OSSet::removeObject(v11, v38);
                        }

                        while ((v11->__vftable[1].Dispatch)(v11) > 1);
                      }
                    }
                  }
                }

                goto LABEL_52;
              }

              if (*(*v7 + 72) && CCLogStream::shouldLog())
              {
                AppleBCMWLANCommandMonitor::monitorCmdPrepared(v7, a2, v11);
                if (!v23)
                {
                  goto LABEL_52;
                }
              }

              else if (!v23)
              {
LABEL_52:
                (v17->release)(v17);
                goto LABEL_53;
              }

              OSDictionary::removeObject(v9, "CommandMonitorHistogramKey");
              (*(*v20 + 16))(v20);
              goto LABEL_52;
            }

            v20 = v19;
          }

          else
          {
            v20 = 0;
          }

          v23 = 0;
          goto LABEL_18;
        }

LABEL_53:
        (v6->release)(v6);
      }
    }
  }

  return a2 != 0;
}

const OSMetaClassBase *AppleBCMWLANCommandMonitor::makeHistogramReporter(AppleBCMWLANCommandMonitor *this, OSString *a2)
{
  *&v3 = 0xAAAAAAAAAAAAAAAALL;
  *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v21[4] = v3;
  v21[5] = v3;
  v21[2] = v3;
  v21[3] = v3;
  v21[0] = v3;
  v21[1] = v3;
  v5 = this + 48;
  v4 = *(this + 6);
  *__str = -1431655766;
  snprintf(__str, 4uLL, "%03d", *v4);
  v6 = 0;
  ++**v5;
  v7 = *v5;
  v8 = (*v5 + 48);
  do
  {
    v9 = *v8++;
    v10 = &v21[v6];
    *&v21[v6] = v9;
    if (v6 == 5)
    {
      v11 = 5;
    }

    else
    {
      v11 = 1;
    }

    *(v10 + 2) = v11;
    *(v10 + 3) = 1;
    ++v6;
  }

  while (v6 != 6);
  IO80211Controller::getReporterProvider(v7[27]);
  OSString::getCStringNoCopy(a2);
  v12 = IOHistogramReporter::with();
  v13 = *v5;
  if (v12)
  {
    OSSet::setObject(v13[2], v12);
    (v12->release)(v12);
    v14 = *v5;
    v15 = *(*v5 + 40);
    v16 = *(*v5 + 24);
    v17 = *(v14 + 10);
    CStringNoCopy = OSString::getCStringNoCopy(a2);
    v15(v16, v17, v12, "Commands Issued Histogram", CStringNoCopy);
  }

  else if (v13[9] && CCLogStream::shouldLog())
  {
    AppleBCMWLANCommandMonitor::makeHistogramReporter(v5);
  }

  return v12;
}

BOOL AppleBCMWLANCommandMonitor::monitorCmdCompleted(AppleBCMWLANCommandMonitor *this, AppleBCMWLANCommand *a2)
{
  if (a2)
  {
    if (AppleBCMWLANCommand::getCmdName(a2))
    {
      CmdName = AppleBCMWLANCommand::getCmdName(a2);
      v5 = OSString::withCString(CmdName);
      *__str = -1431655766;
      if (v5)
      {
        v6 = v5;
        v8 = this + 48;
        v7 = *(this + 6);
        if (*(v7 + 9) == 1)
        {
          Object = OSDictionary::getObject(*(v7 + 104), v5);
          v10 = OSMetaClassBase::safeMetaCast(Object, gOSDictionaryMetaClass);
          if (!v10)
          {
            v10 = OSDictionary::withCapacity(2u);
            OSDictionary::setObject(*(*v8 + 104), v6, v10);
          }

          v11 = OSDictionary::getObject(v10, "CommandMonitorSimpleKey");
          v12 = OSMetaClassBase::safeMetaCast(v11, gIOSimpleReporterMetaClass);
          if (!v12)
          {
            SimpleReporter = AppleBCMWLANCommandMonitor::makeSimpleReporter(this, v6);
            if (!SimpleReporter)
            {
              if (*(*v8 + 72) && CCLogStream::shouldLog())
              {
                AppleBCMWLANCommandMonitor::monitorCmdCompleted(this + 48, a2);
              }

              goto LABEL_31;
            }

            v12 = SimpleReporter;
            OSDictionary::setObject(v10, "CommandMonitorSimpleKey", SimpleReporter);
          }

          v14 = OSDictionary::getObject(v10, "CommandMonitorSimpleChannelIDKey");
          v15 = OSMetaClassBase::safeMetaCast(v14, gOSNumberMetaClass);
          if (!v15)
          {
            snprintf(__str, 4uLL, "%03d", *(*v8 + 4));
            ++*(*v8 + 4);
            v16 = (__str[0] << 16) | (__str[1] << 8);
            v17 = __str[2] | 0x434D445374000000;
            ++*(*v8 + 4);
            v18 = OSNumber::withNumber(v16 | v17, 0x40uLL);
            if (!v18)
            {
              if (*(*v8 + 72) && CCLogStream::shouldLog())
              {
                AppleBCMWLANCommandMonitor::monitorCmdCompleted(v8, a2);
              }

              goto LABEL_31;
            }

            v15 = v18;
            OSDictionary::setObject(v10, "CommandMonitorSimpleChannelIDKey", v18);
          }

          v19 = OSNumber::unsigned64BitValue(v15);
          Status = AppleBCMWLANCommand::getStatus(a2);
          v21 = (Status << 24) | (((Status >> 8) & 0x3F) << 32);
          if (IOSimpleReporter::incrementValue(v12, v21 | v19, 1))
          {
            v36 = 0;
            v22 = *(*v8 + 80);
            v23 = AppleBCMWLANCommand::getStatus(a2);
            if (IOService::StringFromReturn(v22, v23, &v36, 0))
            {
              if (*(*v8 + 72) && CCLogStream::shouldLog())
              {
                AppleBCMWLANCommandMonitor::monitorCmdCompleted(v8, a2);
              }
            }

            else
            {
              CStringNoCopy = OSString::getCStringNoCopy(v36);
              v25 = IOReporter::addChannel(v12, v21 | v19, CStringNoCopy);
              if (v36)
              {
                (v36->release)(v36);
                v36 = 0;
              }

              if (v25)
              {
                if (*(*v8 + 72) && CCLogStream::shouldLog())
                {
                  AppleBCMWLANCommandMonitor::monitorCmdCompleted(v8, a2);
                }
              }

              else
              {
                IOSimpleReporter::incrementValue(v12, v21 | v19, 1);
                v26 = *(*v8 + 24);
                v27 = *(*v8 + 32);
                v28 = *(*v8 + 80);
                v29 = AppleBCMWLANCommand::getCmdName(a2);
                v27(v26, v28, 0, "Commands Issued", v29);
                v30 = *v8;
                v31 = *(*v8 + 40);
                v32 = *(*v8 + 24);
                v33 = *(v30 + 80);
                v34 = AppleBCMWLANCommand::getCmdName(a2);
                v31(v32, v33, v12, "Commands Issued", v34);
              }
            }
          }
        }

LABEL_31:
        (v6->release)(v6);
      }
    }
  }

  return a2 != 0;
}

const OSMetaClassBase *AppleBCMWLANCommandMonitor::makeSimpleReporter(AppleBCMWLANCommandMonitor *this, OSString *a2)
{
  v3 = this + 48;
  ReporterProvider = IO80211Controller::getReporterProvider(*(*(this + 6) + 216));
  v6 = IOSimpleReporter::with(ReporterProvider, 0x8010, 0, v5);
  v7 = *v3;
  if (v6)
  {
    OSSet::setObject(*(v7 + 16), v6);
    (v6->release)(v6);
    v8 = *v3;
    v9 = *(*v3 + 40);
    v10 = *(*v3 + 24);
    v11 = *(v8 + 80);
    CStringNoCopy = OSString::getCStringNoCopy(a2);
    v9(v10, v11, v6, "Commands Issued", CStringNoCopy);
  }

  else if (*(v7 + 72) && CCLogStream::shouldLog())
  {
    AppleBCMWLANCommandMonitor::makeSimpleReporter(v3);
  }

  return v6;
}

uint64_t AppleBCMWLANCommandMonitor::configureReport(OSObject *this, OSCollection *a2, OSData *a3, unsigned int *a4)
{
  v16 = 0;
  p_refcount = &this[1].refcount;
  v6 = *(*&this[1].refcount + 16);
  if (!v6)
  {
    return 3758097084;
  }

  result = (*(*v6 + 72))(v6);
  if (result)
  {
    v17 = IOReporter::configureAllReports(*(*&this[1].refcount + 16), a2, a3, &v16, v11);
    v12 = *&this[1].refcount;
    v13 = *(v12 + 72);
    v14 = *(v12 + 96);
    ClassNameHelper = getClassNameHelper(this);
    v17 = testPostConfigureAllAndAdjustV3(v13, v14, ClassNameHelper, a3, &v17, a4, v16, -2);
    if (v17)
    {
      AppleBCMWLANCommandMonitor::configureReport(p_refcount);
    }

    return v17;
  }

  return result;
}

uint64_t AppleBCMWLANCommandMonitor::updateReport(OSObject *this, OSCollection *a2, OSData *a3, unsigned int *a4, unint64_t *a5, unint64_t *a6, IOMemoryDescriptor *a7)
{
  result = 3758097084;
  v26 = 0;
  v9 = *&this[1].refcount;
  if (*(v9 + 88))
  {
    v10 = *(v9 + 16);
    if (v10)
    {
      result = (*(*v10 + 72))(v10);
      if (result)
      {
        v17 = *(*&this[1].refcount + 72);
        ClassNameHelper = getClassNameHelper(this);
        testPreUpdateAllReportersV3(v17, ClassNameHelper, *(*&this[1].refcount + 16), *a5, *a6, a7);
        updated = IOReporter::updateAllReports(*(*&this[1].refcount + 16), a2, a3, &v26, *a5, *a6, a7, v19);
        v20 = *&this[1].refcount;
        v21 = *(v20 + 72);
        v22 = *(v20 + 96);
        v23 = getClassNameHelper(this);
        updated = testPostUpdateAllAndAdjustV3(v21, v22, v23, &updated, v26, a4, a5, a6, -2);
        if (updated && *(*&this[1].refcount + 72))
        {
          if (CCLogStream::shouldLog())
          {
            v24 = *(*&this[1].refcount + 72);
            v25 = getClassNameHelper(this);
            CCLogStream::logEmergency(v24, "[dk] %s@%d:DKReporter::%s::%s(%d) testAndAdjustOffsetAndCapacity failed count %u outElementCount %u offset %llu capacity %llu", "updateReport", 687, v25, "updateReport", 687, v26, *a4, *a5, *a6);
          }
        }

        return updated;
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANCommandMonitor::recordStats(uint64_t this, char a2)
{
  *(*(this + 48) + 8) = a2;
  *(*(this + 48) + 9) = a2;
  return this;
}

uint64_t OUTLINED_FUNCTION_0_22(uint64_t a1, AppleBCMWLANCommand *this)
{
  v3 = *(*a1 + 72);

  return AppleBCMWLANCommand::getCmdName(this);
}

OSObject *AppleBCMWLANPCIeCompletionRing::withOptions(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = 0xAAAAAAAAAAAAAAAALL;
  if (OSObjectAllocate(gAppleBCMWLANPCIeCompletionRingMetaClass, &v12))
  {
    return 0;
  }

  v10 = v12;
  if (v12 && ((v12->OSMetaClassBase::__vftable[5].release)(v12, a1, a2, a3, a4, a5) & 1) == 0)
  {
    (v10->release)(v10);
    return 0;
  }

  return v10;
}

uint64_t AppleBCMWLANPCIeCompletionRing::initWithOwnerAndOptions(AppleBCMWLANRxItemRing *a1, OSObject *a2, void (*a3)(OSObject *, ...), void (*a4)(OSObject *, AppleBCMWLANByteRing *, int, void *), uint64_t a5, uint64_t a6)
{
  result = AppleBCMWLANRxItemRing::initWithOptions(a1, a2, a3, a4);
  if (!result)
  {
    return result;
  }

  result = IOMallocZeroTyped();
  *(a1 + 14) = result;
  if (!result)
  {
    return result;
  }

  if (!a6)
  {
    ClassNameHelper = getClassNameHelper(a1);
    IOLog("%s::%s(): Unable to get debug logger\n", ClassNameHelper, "initWithOwnerAndOptions");
    return 0;
  }

  *(result + 200) = a6;
  v11 = *(*(a1 + 14) + 200);
  if (v11)
  {
    (*(*v11 + 8))(v11);
  }

  AppleBCMWLANByteRing::setLogger(a1, a6);
  **(a1 + 14) = a2;
  *(*(a1 + 14) + 56) = *a5;
  *(*(a1 + 14) + 58) = *(a5 + 2);
  AppleBCMWLANItemRing::setItemCount(a1, *(a5 + 8));
  AppleBCMWLANItemRing::setItemSize(a1, *(a5 + 4));
  v12 = *(a5 + 112);
  *(*(a1 + 14) + 64) = *(a5 + 104);
  v13 = (*(a5 + 8) * *(a5 + 4));
  if (v13 % v12)
  {
    v14 = v12 - v13 % v12;
  }

  else
  {
    v14 = 0;
  }

  *(*(a1 + 14) + 96) = (v14 + v13);
  v15 = *(a5 + 88);
  *(*(a1 + 14) + 32) = *(a5 + 80) + 4 * *(*(a1 + 14) + 56);
  *(*(a1 + 14) + 40) = v15 + 4 * *(*(a1 + 14) + 56);
  v16 = *(a5 + 24);
  *(*(a1 + 14) + 128) = *(a5 + 16);
  *(*(a1 + 14) + 136) = v16;
  *(*(a1 + 14) + 144) = *(a5 + 48);
  *(*(a1 + 14) + 152) = *(a5 + 56);
  *(*(a1 + 14) + 8) = 1;
  *(*(a1 + 14) + 104) = *(*(a1 + 14) + 96);
  if (AppleBCMWLANPCIeAllocateDartMappedMemory(*(a1 + 14) + 72, v12, 1, *(a5 + 120)))
  {
    *(*(a1 + 14) + 48) = *(*(a1 + 14) + 120);
    *(*(a1 + 14) + 52) = *(*(a1 + 14) + 124);
    *(*(a1 + 14) + 176) = a1;
    **(*(a1 + 14) + 40) = 0;
    **(*(a1 + 14) + 32) = 0;
    return 1;
  }

  result = AppleBCMWLANByteRing::getLogger(a1);
  if (result)
  {
    AppleBCMWLANByteRing::getLogger(a1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      AppleBCMWLANPCIeCompletionRing::initWithOwnerAndOptions(a1, a1 + 112);
      return 0;
    }
  }

  return result;
}

uint64_t AppleBCMWLANPCIeCompletionRing::free(void **this)
{
  if (this[14])
  {
    if (AppleBCMWLANByteRing::getLogger(this))
    {
      AppleBCMWLANByteRing::getLogger(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANPCIeCompletionRing::free(this);
      }
    }

    v2 = this[14];
    v3 = v2[25];
    if (v3)
    {
      (*(*v3 + 16))(v3);
      *(this[14] + 25) = 0;
      v2 = this[14];
    }

    AppleBCMWLANPCIeFreeDartMappedMemory((v2 + 9));
    memset_s(this[14], 0xD0uLL, 0, 0xD0uLL);
    v4 = this[14];
    if (v4)
    {
      IOFree(v4, 0xD0uLL);
      this[14] = 0;
    }
  }

  return AppleBCMWLANTxItemRing::free(this);
}

uint64_t AppleBCMWLANPCIeCompletionRing::requestRingDrain(AppleBCMWLANPCIeCompletionRing *this)
{
  v2 = (*(*this + 224))(this);
  v3 = (*(*this + 232))(this);
  ReadableItemCount = AppleBCMWLANItemRing::getReadableItemCount(this, v3, v2);
  ItemCount = AppleBCMWLANItemRing::getItemCount(this);
  v6 = 0;
  if (AppleBCMWLANItemRing::getReadableItemCount(this, v3, v2))
  {
    v7 = ItemCount >> 1;
    do
    {
      v8 = *(*(this + 14) + 112);
      v9 = AppleBCMWLANItemRing::getItemSize(this) * v2;
      v10 = (*(*this + 184))(this);
      v11 = **(this + 14);
      ReadableItemCountContinuous = AppleBCMWLANItemRing::getReadableItemCountContinuous(this, v3, v2);
      v13 = v10(v11, this, v8 + v9, ReadableItemCountContinuous);
      v2 += v13;
      if (v2 >= AppleBCMWLANItemRing::getItemCount(this))
      {
        v2 = 0;
        *(*(this + 14) + 8) ^= 1u;
      }

      v6 = (v13 + v6);
      **(*(this + 14) + 32) = v2;
    }

    while (AppleBCMWLANItemRing::getReadableItemCount(this, v3, v2));
    if (v6)
    {
      mach_continuous_time();
      v14 = *(this + 14);
      absolutetime_to_nanoseconds();
      *(*(this + 14) + 168) = v2;
      if (ReadableItemCount >= v7)
      {
        AppleBCMWLANPCIeDoorbell::ring(*(*(this + 14) + 144), *(*(this + 14) + 152), 0, 0);
      }
    }
  }

  return v6;
}

uint64_t AppleBCMWLANPCIeCompletionRing::getReadIndex(AppleBCMWLANPCIeCompletionRing *this)
{
  v2 = **(*(this + 14) + 32);
  if (v2 >= AppleBCMWLANItemRing::getItemCount(this))
  {
    AppleBCMWLANPCIeCompletionRing::getReadIndex(this);
  }

  return v2;
}

uint64_t AppleBCMWLANPCIeCompletionRing::getWriteIndex(AppleBCMWLANPCIeCompletionRing *this)
{
  v2 = **(*(this + 14) + 40);
  if (v2 >= AppleBCMWLANItemRing::getItemCount(this))
  {
    AppleBCMWLANPCIeCompletionRing::getWriteIndex(this);
  }

  return v2;
}

uint64_t AppleBCMWLANPCIeCompletionRing::getIndices(AppleBCMWLANPCIeCompletionRing *this, unsigned int *a2, unsigned int *a3)
{
  v6 = **(*(this + 14) + 32);
  if (v6 >= AppleBCMWLANItemRing::getItemCount(this) || (*a2 = v6, v6 = **(*(this + 14) + 40), result = AppleBCMWLANItemRing::getItemCount(this), v6 >= result))
  {
    AppleBCMWLANItemRing::CallErrorAction(this, 3825173271, 0);
    panic("AppleBCMWLANPCIeCompletionRing::getIndices() Invalid index(0x%x)\n", v6);
  }

  *a3 = v6;
  return result;
}

uint64_t AppleBCMWLANPCIeCompletionRing::getBusAddress(uint64_t result, _DWORD *a2)
{
  *a2 = *(*(result + 112) + 48);
  a2[1] = *(*(result + 112) + 52);
  return result;
}

uint64_t non-virtual thunk toAppleBCMWLANPCIeCompletionRing::getBusAddress(uint64_t result, _DWORD *a2)
{
  *a2 = *(*(result + 8) + 48);
  a2[1] = *(*(result + 8) + 52);
  return result;
}

uint64_t AppleBCMWLANPCIeCompletionRing::checkForWork(AppleBCMWLANPCIeCompletionRing *this)
{
  if (IO80211WorkSource::isEnabled(this))
  {
    if (AppleBCMWLANItemRing::getReadableItemCount(this))
    {
      ReadableItemCount = AppleBCMWLANItemRing::getReadableItemCount(this);
      (*(*this + 192))(this, ReadableItemCount);
    }

    if (AppleBCMWLANItemRing::getReadableItemCount(this))
    {
      IO80211WorkSource::signalWorkAvailable(this);
    }
  }

  return 0;
}

uint64_t AppleBCMWLANPCIeCompletionRing::dumpRingState(AppleBCMWLANPCIeCompletionRing *this, const char *a2, char *a3)
{
  AppleBCMWLANByteRing::getLogger(this);
  IO80211WorkSource::isEnabled(this);
  v4 = *(this + 14);
  v5 = **(v4 + 32);
  v6 = **(v4 + 40);
  AppleBCMWLANItemRing::getReadableItemCount(this);
  AppleBCMWLANItemRing::getWritableItemCount(this);
  AppleBCMWLANItemRing::getItemSize(this);
  (*(*this + 248))(this);
  v7 = *(this + 14);
  v8 = *(v7 + 160);
  v13 = *(v7 + 112);
  v11 = *(v7 + 128) != 0;
  v12 = *(v7 + 136) != 0;
  v10 = *(v7 + 168);
  return IO80211Print();
}