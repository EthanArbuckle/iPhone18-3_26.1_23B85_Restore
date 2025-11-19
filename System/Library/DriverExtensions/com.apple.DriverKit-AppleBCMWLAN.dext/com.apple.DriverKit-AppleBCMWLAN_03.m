uint64_t AppleBCMWLANJoinAdapter::set4WayHandshakeProtection(AppleBCMWLANJoinAdapter *this, int a2, int a3)
{
  v21 = -1431655766;
  v20[0] = &v21;
  v20[1] = 0x400040004;
  v5 = this + 48;
  v6 = *(*(this + 6) + 64);
  v18 = &v21;
  v19 = 4;
  result = AppleBCMWLANCommander::runIOVarGet(v6, "btc_wifi_prot", &v18, v20, 0);
  if (v21 == 2)
  {
    if (*(*v5 + 72) && CCLogStream::shouldLog())
    {
      AppleBCMWLANJoinAdapter::set4WayHandshakeProtection(v5);
    }

    v13 = IOMallocZeroData();
    if (v13)
    {
      v14 = v13;
      *v13 = 0xC000100140002;
      if (a3)
      {
        v15 = 31;
      }

      else
      {
        v15 = 1;
      }

      *(v13 + 10) = v15;
      *(v13 + 12) = 6553600;
      *(v13 + 16) = 0;
      v16 = *(*v5 + 64);
      v18 = v14;
      v19 = 20;
      if (AppleBCMWLANCommander::runIOVarSet(v16, "btc_wifi_prot", &v18, 0, 0) && *(*v5 + 72) && CCLogStream::shouldLog())
      {
        AppleBCMWLANJoinAdapter::set4WayHandshakeProtection(v5);
      }

      return IOFreeData();
    }

    result = *(*v5 + 72);
    if (result)
    {
      result = CCLogStream::shouldLog();
      if (result)
      {
        return AppleBCMWLANJoinAdapter::set4WayHandshakeProtection(v5);
      }
    }
  }

  else
  {
    if (v21 != 1)
    {
      return result;
    }

    if (*(*v5 + 72) && CCLogStream::shouldLog())
    {
      AppleBCMWLANJoinAdapter::set4WayHandshakeProtection(v5);
    }

    v8 = IOMallocZeroData();
    if (v8)
    {
      v9 = v8;
      *v8 = 0x8000100100001;
      *(v8 + 8) = a2;
      *(v8 + 12) = 0;
      v10 = *(*v5 + 64);
      v18 = v9;
      v19 = 16;
      v11 = AppleBCMWLANCommander::runIOVarSet(v10, "btc_wifi_prot", &v18, 0, 0);
      v12 = *(*v5 + 72);
      if (v11)
      {
        if (v12)
        {
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANJoinAdapter::set4WayHandshakeProtection(v5);
          }
        }
      }

      else if (v12 && CCLogStream::shouldLog())
      {
        if (a2)
        {
          v17 = "ENABLED";
        }

        else
        {
          v17 = "DISABLED";
        }

        CCLogStream::logInfo(*(*v5 + 72), "[dk] %s@%d:Set btc_wifi_prot to %s\n", "set4WayHandshakeProtection", 1299, v17);
      }

      return IOFreeData();
    }

    result = *(*v5 + 72);
    if (result)
    {
      result = CCLogStream::shouldLog();
      if (result)
      {
        return AppleBCMWLANJoinAdapter::set4WayHandshakeProtection(v5);
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANJoinAdapter::addInstantHSAppleDeviceIE(AppleBCMWLANJoinAdapter *this, int a2, char a3)
{
  v6 = IOMallocZeroData();
  if (!v6)
  {
    return 12;
  }

  v7 = v6;
  *v6 = -35;
  *(v6 + 1) = 5888;
  *(v6 + 3) = -14;
  *(v6 + 8) = a3;
  *(v6 + 9) = 0;
  *(v6 + 11) = 0;
  *(v6 + 4) = 67174411;
  bzero(v10, 0x814uLL);
  v11 = 4;
  v12 = a2;
  v13 = 0xC00000008;
  v8 = *v7;
  v15 = *(v7 + 8);
  v14 = v8;
  AppleBCMWLANCore::setVendorIE(*(*(this + 6) + 56), 0, v10);
  IOFreeData();
  return 0;
}

uint64_t AppleBCMWLANJoinAdapter::clearWepKeysSync(AppleBCMWLANJoinAdapter *this)
{
  v2 = 0;
  v17 = 0u;
  v16 = 0u;
  v15 = 0u;
  v14 = 0u;
  v13 = 0u;
  v12 = 0u;
  v11 = 0u;
  v10 = 0u;
  v9 = 0u;
  v8 = 0u;
  while (1)
  {
    v7 = v2;
    v3 = AppleBCMWLANJoinAdapter::programKeySync(this, &v7);
    if (v3)
    {
      break;
    }

    if (++v2 == 4)
    {
      return v3;
    }
  }

  v5 = *(this + 6);
  v4 = this + 48;
  if (*(v5 + 72) && CCLogStream::shouldLog())
  {
    AppleBCMWLANJoinAdapter::clearWepKeysSync(v4, v3, v2);
  }

  return v3;
}

uint64_t AppleBCMWLANJoinAdapter::setKey(AppleBCMWLANJoinAdapter *a1, _DWORD *a2, int a3, unint64_t a4, unsigned int a5)
{
  v11 = a1 + 48;
  v10 = *(a1 + 6);
  if (*(v10 + 72))
  {
    shouldLog = CCLogStream::shouldLog();
    v10 = *v11;
    if (shouldLog)
    {
      CCLogStream::logAlert(*(v10 + 72), "[dk] %s@%d:Join Adaptor SetKey enter PMK: Cipher=0x%x Len=%d\n", "setKey", 1961, a2[2], a2[1]);
      v10 = *v11;
    }
  }

  if ((*(**(v10 + 56) + 128))(*(v10 + 56)))
  {
    v13 = a2[2];
    if (v13 <= 6)
    {
      if (!v13)
      {
        return v13;
      }

      if (v13 != 6)
      {
        goto LABEL_30;
      }

      goto LABEL_18;
    }

    if (v13 != 10)
    {
      if (v13 != 9)
      {
        if (v13 == 7)
        {
          if ((AppleBCMWLANCore::useAppleRSNSupplicant(*(*v11 + 56)) & 1) == 0 && *(*v11 + 72) && CCLogStream::shouldLog())
          {
            AppleBCMWLANJoinAdapter::setKey(v11);
          }

          return 0;
        }

LABEL_30:
        memset(v23, 0, 164);
        v18 = mapAppleKeyToBcomKey(v23, a2);
        v19 = *v11;
        if (v18)
        {
          v13 = v18;
          if (*(v19 + 72) && CCLogStream::shouldLog())
          {
            AppleBCMWLANJoinAdapter::setKey(v11);
          }

          return v13;
        }

        v22 = (*(**(v19 + 56) + 88))(*(v19 + 56));
        if ((*(*v22 + 136))(v22))
        {
          return AppleBCMWLANJoinAdapter::programKeyAsync(a1, v23);
        }

        else
        {
          return AppleBCMWLANJoinAdapter::programKeySync(a1, v23);
        }
      }

LABEL_18:
      v14 = *v11;
      if (*(*v11 + 72))
      {
        v15 = CCLogStream::shouldLog();
        v14 = *v11;
        if (v15)
        {
          CCLogStream::logAlert(*(v14 + 72), "[dk] %s@%d:SetKey save PMK:\n", "setKey", 1978);
          v14 = *v11;
        }
      }

      AppleBCMWLANCore::saveCUR_PMK(*(v14 + 56), a2);
      if (AppleBCMWLANCore::useAppleRSNSupplicant(*(*v11 + 56)))
      {
        return 0;
      }

      *v23 = a2[1];
      memset(&v23[2], 0, 262);
      memcpy(&v23[4], a2 + 4, *v23);
      if (a3 && *v23)
      {
        AppleBCMWLANJoinAdapter::enableSupplicantEvents(a1);
        AppleBCMWLANJoinAdapter::configureSupplicantTimeOut(a1, 6000);
      }

      return AppleBCMWLANJoinAdapter::programPMK(a1, v23);
    }

    if (AppleBCMWLANCore::useAppleRSNSupplicant(*(*v11 + 56)))
    {
      return 0;
    }

    memset(&v23[4], 0, 260);
    v20 = a2[1];
    if (v20 >= 0x40)
    {
      v21 = 64;
    }

    else
    {
      v21 = v20;
    }

    *v23 = v21;
    memcpy(&v23[4], a2 + 4, v21);
    if (a3 && v20)
    {
      AppleBCMWLANJoinAdapter::enableSupplicantEvents(a1);
      AppleBCMWLANJoinAdapter::configureSupplicantTimeOut(a1, 6000);
    }

    *&v23[2] = 1;
    v13 = AppleBCMWLANJoinAdapter::programPMK(a1, v23);
    if (a4 && a5)
    {
      AppleBCMWLANJoinAdapter::setAssocWsecInfoPMKPassword(a1, a4, a5, (a2 + 4), *v23);
    }
  }

  else
  {
    v13 = 3758097084;
    if (*(*v11 + 72) && CCLogStream::shouldLog())
    {
      AppleBCMWLANJoinAdapter::setKey(v11);
    }
  }

  return v13;
}

uint64_t AppleBCMWLANJoinAdapter::enableICVErrorEvents(AppleBCMWLANJoinAdapter *this)
{
  v2 = this + 48;
  v1 = *(this + 6);
  if (*(v1 + 72))
  {
    shouldLog = CCLogStream::shouldLog();
    v1 = *v2;
    if (shouldLog)
    {
      CCLogStream::logNotice(*(v1 + 72), "[dk] %s@%d: enabling WLC_E_ICV_ERROR events \n", "enableICVErrorEvents", 2440);
      v1 = *v2;
    }
  }

  result = AppleBCMWLANCore::setEventBit(*(v1 + 56));
  if (result)
  {
    result = *(*v2 + 72);
    if (result)
    {
      result = CCLogStream::shouldLog();
      if (result)
      {
        return AppleBCMWLANJoinAdapter::enableICVErrorEvents(v2);
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANJoinAdapter::enableSupplicantEvents(AppleBCMWLANJoinAdapter *this)
{
  v2 = this + 48;
  v1 = *(this + 6);
  if (*(v1 + 72))
  {
    shouldLog = CCLogStream::shouldLog();
    v1 = *v2;
    if (shouldLog)
    {
      CCLogStream::logNoticeIf(*(v1 + 72), 0x100uLL, "[dk] %s@%d:enabling supplicant events\n", "enableSupplicantEvents", 2461);
      v1 = *v2;
    }
  }

  v4 = AppleBCMWLANCore::setEventBit(*(v1 + 56));
  if (v4 && *(*v2 + 72) && CCLogStream::shouldLog())
  {
    AppleBCMWLANJoinAdapter::enableSupplicantEvents(v2);
  }

  return v4;
}

uint64_t AppleBCMWLANJoinAdapter::setAssocRSNIE(AppleBCMWLANJoinAdapter *this, const unsigned __int8 *a2, uint64_t a3)
{
  if (a3)
  {
    v4 = a3;
    if (a3)
    {
      v5 = a2;
    }

    else
    {
      v5 = 0;
    }

    if (!a2)
    {
      v4 = 0;
    }

    *&v11 = v5;
    *(&v11 + 1) = v4;
  }

  else
  {
    v11 = kNoTxPayload;
  }

  v6 = this + 48;
  v7 = (*(**(*(this + 6) + 56) + 88))(*(*(this + 6) + 56));
  if ((*(*v7 + 136))(v7))
  {
    v8 = AppleBCMWLANCommander::sendIOVarSet(*(*(this + 6) + 64), "wpaie");
  }

  else
  {
    v8 = AppleBCMWLANCommander::runIOVarSet(*(*v6 + 64), "wpaie", &v11, 0, 0);
  }

  v9 = v8;
  if (v8 && *(*v6 + 72) && CCLogStream::shouldLog())
  {
    AppleBCMWLANJoinAdapter::setAssocRSNIE(v6);
  }

  return v9;
}

uint64_t AppleBCMWLANJoinAdapter::setAssocWsecInfo(AppleBCMWLANJoinAdapter *this, int a2, int a3, int a4, int a5, int a6)
{
  v42 = a5;
  v41 = 0xAAAAAAAAAAAAAAAALL;
  v40 = 0;
  v39 = -1431655766;
  if (a2 <= 265)
  {
    if (a2 == 262)
    {
      LODWORD(v41) = 1 << a3;
      HIDWORD(v41) = 1 << a3;
      v9 = 8;
      v10 = &v41;
      v22 = 16;
      goto LABEL_71;
    }

    if (a2 != 263)
    {
      goto LABEL_43;
    }

    v13 = 0;
    v39 = 0;
    if ((a3 & 0x40000000) != 0)
    {
      v13 = 2;
      v39 = 2;
      if (AppleBCMWLANCore::checkFor6GSupportCardCapability(*(*(this + 6) + 56)))
      {
        if ((a4 & 1) == 0)
        {
          v13 = 34;
          v39 = 34;
        }
      }
    }

    if ((a3 & 4) != 0)
    {
      v14 = v13 | 1;
      v39 = v13 | 1;
      if (a6 && AppleBCMWLANCore::featureFlagIsBitSet(*(*(this + 6) + 56), 114))
      {
        if (*(*(this + 6) + 72) && CCLogStream::shouldLog())
        {
          AppleBCMWLANJoinAdapter::setAssocWsecInfo(this + 48);
        }

        v14 = v13 | 9;
        v39 = v13 | 9;
      }

      if (!AppleBCMWLANCore::checkFor6GSupportCardCapability(*(*(this + 6) + 56)) || (a4 & 1) != 0)
      {
        v13 = v14;
        if ((a3 & 0x100) == 0)
        {
          goto LABEL_54;
        }

        goto LABEL_26;
      }

      v13 = v14 | 0x20;
      v39 = v14 | 0x20;
    }

    if ((a3 & 0x100) == 0)
    {
      goto LABEL_54;
    }

LABEL_26:
    if (AppleBCMWLANCore::checkFor6GSupportCardCapability(*(*(this + 6) + 56)))
    {
      v15 = v13 | 0x20;
      if (a4)
      {
        v15 = v13;
      }

      v13 = v15 | 0x10;
    }

    else
    {
      v13 |= 4u;
    }

    v39 = v13;
LABEL_54:
    if (!AppleBCMWLANCore::checkForOWESupport(*(*(this + 6) + 56)))
    {
      goto LABEL_66;
    }

    if ((a3 & 0x20000001) != 0)
    {
      v25 = v13 | 0x30000;
      v39 = v13 | 0x30000;
      if (AppleBCMWLANCore::checkFor6GSupportCardCapability(*(*(this + 6) + 56)) && (a4 & 1) == 0)
      {
        v25 = v13 | 0xB0000;
        v39 = v13 | 0xB0000;
      }

      if ((a3 & 0x40000) == 0)
      {
        goto LABEL_60;
      }
    }

    else
    {
      v25 = v13;
      if ((a3 & 0x40000) == 0)
      {
LABEL_60:
        v13 = v25;
LABEL_66:
        if (*(*(this + 6) + 72) && CCLogStream::shouldLog())
        {
          CCLogStream::logAlert(*(*(this + 6) + 72), "[dk] %s@%d:allow_auths 0x%X  ap_restrict = 0x%X\n", "setAssocWsecInfo", 2357, a3, v13);
        }

        v9 = 4;
        v10 = &v39;
        goto LABEL_70;
      }
    }

    if (AppleBCMWLANCore::checkFor6GSupportCardCapability(*(*(this + 6) + 56)) ^ 1 | a4)
    {
      v26 = v25;
    }

    else
    {
      v26 = v25 | 0x80000;
    }

    v13 = v26 | 0x40000;
    v39 = v26 | 0x40000;
    goto LABEL_66;
  }

  if (a2 == 266)
  {
    v17 = this + 48;
    v16 = *(this + 6);
    v18 = *(v16 + 72);
    if (a3)
    {
      if (v18)
      {
        v20 = *(v16 + 72);
        shouldLog = CCLogStream::shouldLog();
        v16 = *v17;
        if (shouldLog)
        {
          AppleBCMWLANJoinAdapter::setAssocWsecInfo(v16, this + 48);
          v16 = v36;
        }
      }

      if (*(v16 + 72) && CCLogStream::shouldLog())
      {
        CCLogStream::logAlert(*(*v17 + 72), "[dk] %s@%d:SAEPK state %x\n", "setAssocWsecInfo", 2380, a5);
      }

      v9 = 4;
      v10 = &v42;
      goto LABEL_70;
    }

    if (v18)
    {
      v23 = *(v16 + 72);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANJoinAdapter::setAssocWsecInfo(this + 48);
      }
    }

    return 0;
  }

  if (a2 == 268)
  {
    HIDWORD(v40) = a3;
    if (*(*(this + 6) + 72) && CCLogStream::shouldLog())
    {
      CCLogStream::logAlert(*(*(this + 6) + 72), "[dk] %s@%d:TD policy %x\n", "setAssocWsecInfo", 2367, a3);
    }

    v9 = 4;
    v10 = (&v40 + 4);
    goto LABEL_70;
  }

  if (a2 != 270)
  {
LABEL_43:
    if (*(*(this + 6) + 72) && CCLogStream::shouldLog())
    {
      CCLogStream::logAlert(*(*(this + 6) + 72), "[dk] %s@%d:%s: Unknown wsec_info type %d\n", "setAssocWsecInfo", 2390, "setAssocWsecInfo", a2);
    }

    return 0;
  }

  LODWORD(v40) = a3;
  if (*(*(this + 6) + 72) && CCLogStream::shouldLog())
  {
    CCLogStream::logAlert(*(*(this + 6) + 72), "[dk] %s@%d:OCV capability %x\n", "setAssocWsecInfo", 2387, a3);
  }

  v9 = 4;
  v10 = &v40;
LABEL_70:
  v22 = 12;
LABEL_71:
  v27 = IOMallocZeroData();
  if (v27)
  {
    v28 = v27;
    *v27 = 1;
    *(v27 + 3) = 1;
    *(v27 + 4) = a2;
    *(v27 + 6) = v9;
    memcpy((v27 + 8), v10, v9);
    v29 = this + 48;
    v30 = (*(**(*(this + 6) + 56) + 88))(*(*(this + 6) + 56));
    if ((*(*v30 + 136))(v30))
    {
      v36 = this;
      v37 = AppleBCMWLANJoinAdapter::setWsecInfoCallback;
      v38 = 0;
      v31 = AppleBCMWLANCommander::sendIOVarSet(*(*(this + 6) + 64), "wsec_info");
    }

    else
    {
      v34 = *(*v29 + 64);
      v36 = v28;
      v37 = v22;
      v31 = AppleBCMWLANCommander::runIOVarSet(v34, "wsec_info", &v36, 0, 0);
    }

    v24 = v31;
    if (v31 && *(*v29 + 72) && CCLogStream::shouldLog())
    {
      AppleBCMWLANJoinAdapter::setAssocWsecInfo(this + 6, v24, a2, a3);
    }

    IOFreeData();
  }

  else
  {
    v24 = 3758097085;
    v33 = *(this + 6);
    v32 = this + 48;
    if (*(v33 + 72) && CCLogStream::shouldLog())
    {
      AppleBCMWLANJoinAdapter::setAssocWsecInfo(v32);
    }
  }

  return v24;
}

void AppleBCMWLANJoinAdapter::adjustMfp(uint64_t a1, uint64_t a2, int *a3)
{
  if (!*a3)
  {
    return;
  }

  v3 = *(a2 + 20);
  if (v3 >= 0x2000)
  {
    v4 = 2;
    if (v3 >= 0x8000)
    {
      if (v3 != 0x8000)
      {
        if (v3 != 0x10000 && v3 != 0x20000)
        {
          return;
        }

        goto LABEL_22;
      }

LABEL_25:
      *a3 = v4;
      return;
    }

    if (v3 != 0x2000)
    {
      if (v3 != 0x4000)
      {
        return;
      }

      goto LABEL_25;
    }

LABEL_22:
    if ((*(a2 + 531) & 0x40) != 0)
    {
      v4 = 1;
    }

    else
    {
      v4 = 2;
    }

    goto LABEL_25;
  }

  if (v3 > 1023)
  {
    if (v3 != 1024)
    {
      if (v3 != 4096)
      {
        return;
      }

      goto LABEL_22;
    }

LABEL_17:
    if ((*(a2 + 531) & 0x40) == 0)
    {
      return;
    }

    v4 = 1;
    goto LABEL_25;
  }

  if (v3 == 8 || v3 == 16)
  {
    goto LABEL_17;
  }
}

uint64_t AppleBCMWLANJoinAdapter::setAssocBip(AppleBCMWLANJoinAdapter *this, uint64_t a2)
{
  v2 = a2;
  if (a2 <= 16)
  {
    if (!a2)
    {
      return v2;
    }

    if (a2 == 13)
    {
      v4 = 111939328;
      goto LABEL_11;
    }
  }

  else
  {
    switch(a2)
    {
      case 0x11:
        v4 = 229379840;
        goto LABEL_11;
      case 0x13:
        v4 = 212602624;
        goto LABEL_11;
      case 0x12:
        v4 = 195825408;
LABEL_11:
        v9 = v4;
        v5 = this + 48;
        v6 = *(*(this + 6) + 64);
        v8[0] = &v9;
        v8[1] = 4;
        v2 = AppleBCMWLANCommander::runIOVarSet(v6, "bip", v8, 0, 0);
        if (v2 && *(*v5 + 72) && CCLogStream::shouldLog())
        {
          AppleBCMWLANJoinAdapter::setAssocBip(v5);
        }

        return v2;
    }
  }

  if (*(*(this + 6) + 72) && CCLogStream::shouldLog())
  {
    CCLogStream::logAlert(*(*(this + 6) + 72), "[dk] %s@%d: %s: unknown BIP type %d\n", "setAssocBip", 2191, "setAssocBip", v2);
  }

  return 0;
}

uint64_t AppleBCMWLANJoinAdapter::customUnAssocDwell(AppleBCMWLANJoinAdapter *this, unsigned int a2)
{
  v13 = a2;
  if (a2 > 0x12B)
  {
    return 3758097084;
  }

  v4 = this + 48;
  v5 = (*(**(*(this + 6) + 56) + 88))(*(*(this + 6) + 56));
  if ((*(*v5 + 136))(v5))
  {
    v10 = this;
    v11 = AppleBCMWLANJoinAdapter::handleCustomUnAssocDwellAsyncCallBack;
    v12 = 0;
    v2 = AppleBCMWLANCommander::sendIOVarSet(*(*(this + 6) + 64), "scan_unassoc_time");
    if (v2 && *(*v4 + 72) && CCLogStream::shouldLog())
    {
      AppleBCMWLANJoinAdapter::customUnAssocDwell(v4);
    }
  }

  else
  {
    v6 = *(*v4 + 64);
    v10 = &v13;
    v11 = 4;
    v7 = AppleBCMWLANCommander::runIOVarSet(v6, "scan_unassoc_time", &v10, 0, 0);
    v2 = v7;
    v8 = v7 == -469794537 || v7 == 0;
    if (!v8 && *(*v4 + 72) && CCLogStream::shouldLog())
    {
      AppleBCMWLANJoinAdapter::customUnAssocDwell(v4);
    }
  }

  return v2;
}

uint64_t AppleBCMWLANJoinAdapter::createAdhocNetwork(AppleBCMWLANJoinAdapter *a1, uint64_t a2)
{
  v32 = 0;
  if (!a2)
  {
    return 3758097090;
  }

  v4 = a1 + 48;
  if (IO80211BssManager::setAssocSSID(*(*(a1 + 6) + 48), (a2 + 32), *(a2 + 28)) && *(*v4 + 72) && CCLogStream::shouldLog())
  {
    AppleBCMWLANJoinAdapter::createAdhocNetwork(v4);
  }

  v5 = AppleBCMWLANJoinAdapter::clearWepKeysSync(a1);
  if (!v5)
  {
    if (*(*v4 + 72) && CCLogStream::shouldLog())
    {
      AppleBCMWLANJoinAdapter::createAdhocNetwork(v4, a2);
    }

    v6 = mapAppleAPModeToBcomBssType(&v32, *(a2 + 4));
    v7 = *v4;
    if (v6)
    {
      v5 = v6;
      if (*(v7 + 72) && CCLogStream::shouldLog())
      {
        AppleBCMWLANJoinAdapter::createAdhocNetwork(v4);
      }
    }

    else
    {
      v9 = *(v7 + 64);
      *v33 = &v32;
      *&v33[8] = 4;
      v10 = AppleBCMWLANCommander::runIOCtlSet(v9, 20, v33, 0, 0);
      if (v10)
      {
        v5 = v10;
        if (*(*v4 + 72) && CCLogStream::shouldLog())
        {
          AppleBCMWLANJoinAdapter::createAdhocNetwork(v4, &v32);
        }
      }

      else
      {
        v11 = mapAppleLowerAuthToBcomAuth(&v32, *(a2 + 8));
        v12 = *v4;
        if (v11)
        {
          v5 = v11;
          if (*(v12 + 72) && CCLogStream::shouldLog())
          {
            AppleBCMWLANJoinAdapter::createAdhocNetwork(v4);
          }
        }

        else
        {
          v13 = *(v12 + 64);
          *v33 = &v32;
          *&v33[8] = 4;
          v14 = AppleBCMWLANCommander::runIOCtlSet(v13, 22, v33, 0, 0);
          if (v14)
          {
            v5 = v14;
            if (*(*v4 + 72) && CCLogStream::shouldLog())
            {
              AppleBCMWLANJoinAdapter::createAdhocNetwork(v4, &v32);
            }
          }

          else
          {
            v15 = mapAppleUpperAuthToBcomWpaAuth(&v32, *(a2 + 12), 0, 0, 0xFFFF);
            v16 = *v4;
            if (v15)
            {
              v5 = v15;
              if (*(v16 + 72) && CCLogStream::shouldLog())
              {
                AppleBCMWLANJoinAdapter::createAdhocNetwork(v4);
              }
            }

            else
            {
              v17 = *(v16 + 64);
              *v33 = &v32;
              *&v33[8] = 4;
              v18 = AppleBCMWLANCommander::runIOCtlSet(v17, 165, v33, 0, 0);
              if (v18)
              {
                v5 = v18;
                if (*(*v4 + 72) && CCLogStream::shouldLog())
                {
                  AppleBCMWLANJoinAdapter::createAdhocNetwork(v4, &v32);
                }
              }

              else
              {
                v32 = 0;
                v19 = mapAppleCipherToBcomWsecFlags(&v32, *(a2 + 72));
                if (v19)
                {
                  v5 = v19;
                  if (*(*v4 + 72) && CCLogStream::shouldLog())
                  {
                    AppleBCMWLANJoinAdapter::createAdhocNetwork(v4);
                  }
                }

                else if ((*(a2 + 72) - 1) <= 1 && (v20 = AppleBCMWLANJoinAdapter::setKey(a1, (a2 + 64), 0, 0, 0), v20))
                {
                  v5 = v20;
                  if (*(*v4 + 72) && CCLogStream::shouldLog())
                  {
                    AppleBCMWLANJoinAdapter::createAdhocNetwork(v4);
                  }
                }

                else
                {
                  v21 = *(*v4 + 64);
                  *v33 = &v32;
                  *&v33[8] = 4;
                  v22 = AppleBCMWLANCommander::runIOCtlSet(v21, 134, v33, 0, 0);
                  if (v22)
                  {
                    v5 = v22;
                    if (*(*v4 + 72) && CCLogStream::shouldLog())
                    {
                      AppleBCMWLANJoinAdapter::createAdhocNetwork(v4, &v32);
                    }
                  }

                  else
                  {
                    v31 = *(a2 + 20);
                    v23 = *(*v4 + 64);
                    *v33 = &v31;
                    *&v33[8] = 4;
                    v24 = AppleBCMWLANCommander::runIOCtlSet(v23, 30, v33, 0, 0);
                    if (v24)
                    {
                      v5 = v24;
                      if (*(*v4 + 72) && CCLogStream::shouldLog())
                      {
                        AppleBCMWLANJoinAdapter::createAdhocNetwork(v4, &v32);
                      }
                    }

                    else
                    {
                      v34 = 0u;
                      *&v33[4] = 0u;
                      v25 = *(a2 + 28);
                      if (v25 >= 0x20)
                      {
                        v26 = 32;
                      }

                      else
                      {
                        v26 = v25;
                      }

                      *v33 = v26;
                      memcpy(&v33[4], (a2 + 32), v26);
                      v27 = *v4;
                      v28 = *(*v4 + 72);
                      if (v28)
                      {
                        CCLogStream::shouldLog(v28, 0x100uLL);
                        v27 = *v4;
                      }

                      v29 = *(v27 + 64);
                      v30[0] = v33;
                      v30[1] = 36;
                      v5 = AppleBCMWLANCommander::runIOCtlSet(v29, 26, v30, 0, 0);
                      if (v5 && *(*v4 + 72) && CCLogStream::shouldLog())
                      {
                        AppleBCMWLANJoinAdapter::createAdhocNetwork(v4);
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
  }

  return v5;
}

uint64_t AppleBCMWLANJoinAdapter::abortFirmwareJoinSync(AppleBCMWLANJoinAdapter *this, int a2)
{
  v16 = 0;
  v15 = 3;
  v4 = this + 48;
  v3 = *(this + 6);
  if (*(v3 + 72))
  {
    shouldLog = CCLogStream::shouldLog();
    v3 = *v4;
    if (shouldLog)
    {
      CCLogStream::logAlert(*(v3 + 72), "[dk] %s@%d: Host sending firmware ('WLC_DISASSOC')/%u, val[%u] reason[%u]\n", "abortFirmwareJoinSync", 884, 52, 3, 3);
      v3 = *v4;
    }
  }

  v6 = *(v3 + 64);
  v14[0] = &v15;
  v14[1] = 12;
  v7 = AppleBCMWLANCommander::runIOCtlSet(v6, 52, v14, 0, 0);
  v8 = v7;
  if (v7 == -469793788 || v7 == 0)
  {
    if (!a2)
    {
      goto LABEL_11;
    }

LABEL_10:
    AppleBCMWLANCore::postMessageInfra(*(*v4 + 56), 0xD6u, 0, 0);
    goto LABEL_11;
  }

  v11 = *v4;
  if (*(*v4 + 72))
  {
    v12 = *(*v4 + 72);
    v13 = CCLogStream::shouldLog();
    v11 = *v4;
    if (v13)
    {
      AppleBCMWLANJoinAdapter::abortFirmwareJoinSync(v11);
      v11 = v14[0];
    }
  }

  AppleBCMWLANCore::recoverFromDisassocFailure(*(v11 + 56), v8);
  if (a2)
  {
    goto LABEL_10;
  }

LABEL_11:
  *(*v4 + 1) = 0;
  return v8;
}

uint64_t AppleBCMWLANJoinAdapter::configureSupplicantTimeOut(AppleBCMWLANJoinAdapter *this, int a2)
{
  v13 = a2;
  v3 = this + 48;
  isAdhocCreated = IO80211BssManager::isAdhocCreated(*(*(this + 6) + 48));
  v5 = *v3;
  if (isAdhocCreated)
  {
    if (*(v5 + 72) && CCLogStream::shouldLog())
    {
      AppleBCMWLANJoinAdapter::configureSupplicantTimeOut(v3);
    }

    return 0;
  }

  else
  {
    v8 = (*(**(v5 + 56) + 88))(*(v5 + 56));
    if ((*(*v8 + 136))(v8))
    {
      v10 = this;
      v11 = AppleBCMWLANJoinAdapter::handleSupplicantTimeoutConfigAsyncCallBack;
      v12 = 0;
      v6 = AppleBCMWLANCommander::sendIOVarSet(*(*(this + 6) + 64), "sup_wpa_tmo");
      if (v6 && *(*v3 + 72) && CCLogStream::shouldLog())
      {
        AppleBCMWLANJoinAdapter::configureSupplicantTimeOut(v3);
      }
    }

    else
    {
      v9 = *(*v3 + 64);
      v10 = &v13;
      v11 = 4;
      v6 = AppleBCMWLANCommander::runIOVarSet(v9, "sup_wpa_tmo", &v10, 0, 0);
      if (v6 && *(*v3 + 72) && CCLogStream::shouldLog())
      {
        AppleBCMWLANJoinAdapter::configureSupplicantTimeOut(v3);
      }
    }
  }

  return v6;
}

uint64_t AppleBCMWLANJoinAdapter::handleSupplicantTimeoutConfigAsyncCallBack(uint64_t result, uint64_t a2, int a3)
{
  if (a3)
  {
    v3 = result + 48;
    result = *(*(result + 48) + 72);
    if (result)
    {
      result = CCLogStream::shouldLog();
      if (result)
      {
        return AppleBCMWLANJoinAdapter::handleSupplicantTimeoutConfigAsyncCallBack(v3);
      }
    }
  }

  return result;
}

double AppleBCMWLANJoinAdapter::reset(AppleBCMWLANJoinAdapter *this)
{
  *(*(this + 6) + 104) = 0;
  v1 = *(this + 6);
  *(v1 + 368) = 0;
  result = 0.0;
  *(v1 + 336) = 0u;
  *(v1 + 352) = 0u;
  *(v1 + 304) = 0u;
  *(v1 + 320) = 0u;
  *(v1 + 272) = 0u;
  *(v1 + 288) = 0u;
  *(v1 + 240) = 0u;
  *(v1 + 256) = 0u;
  *(v1 + 208) = 0u;
  *(v1 + 224) = 0u;
  *(v1 + 176) = 0u;
  *(v1 + 192) = 0u;
  *(v1 + 144) = 0u;
  *(v1 + 160) = 0u;
  *(v1 + 112) = 0u;
  *(v1 + 128) = 0u;
  *(*(this + 6) + 1) = 0;
  return result;
}

AppleBCMWLANJoinAdapter *AppleBCMWLANJoinAdapter::updateTransDisabledModeAsync(AppleBCMWLANJoinAdapter *this, int a2)
{
  *(*(this + 6) + 1840) = a2;
  if (*(*(this + 6) + 1840))
  {
    return AppleBCMWLANJoinAdapter::getBSSInfoAsync(this);
  }

  return this;
}

uint64_t AppleBCMWLANJoinAdapter::getBSSInfoAsync(AppleBCMWLANJoinAdapter *this)
{
  v8 = 1932;
  v7[0] = this;
  v7[1] = AppleBCMWLANJoinAdapter::getBSSInfoAsyncCallback;
  v7[2] = 0;
  v2 = this + 48;
  v3 = *(*(this + 6) + 64);
  v6[0] = &v8;
  v6[1] = 4;
  v5 = 126615688;
  result = AppleBCMWLANCommander::sendIOCtlGet(v3, 136, v6, &v5, v7, 0);
  if (result)
  {
    if (*(*v2 + 72))
    {
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANJoinAdapter::getBSSInfoAsync(v2);
      }
    }

    return AppleBCMWLANJoinAdapter::sendConnectComplete(this);
  }

  return result;
}

uint64_t AppleBCMWLANJoinAdapter::updateTransDisabledMode(AppleBCMWLANJoinAdapter *this, int a2, char a3)
{
  v6 = this + 48;
  v7 = AppleBCMWLANCore::checkForWPA3SAESupport(*(*(this + 6) + 56));
  result = 0;
  if (a2 && v7)
  {
    v9 = a2 & 0x30000;
    if ((a2 & 0x3000) != 0)
    {
      ++v9;
    }

    if (!v9)
    {
      return 0;
    }

    if (AppleBCMWLANJoinAdapter::setAssocWsecInfo(this, 268, a3 & 1, 0, 0, 0))
    {
      result = *(*v6 + 72);
      if (result)
      {
        result = CCLogStream::shouldLog();
        if (result)
        {
          AppleBCMWLANJoinAdapter::updateTransDisabledMode(v6);
          return 0;
        }
      }
    }

    else
    {
      return 1;
    }
  }

  return result;
}

uint64_t AppleBCMWLANJoinAdapter::initWithDriver(uint64_t a1, AppleBCMWLANCore *a2)
{
  v4 = OSObject::init(a1);
  result = 0;
  if (a2)
  {
    if (v4)
    {
      result = IOMallocZeroTyped();
      *(a1 + 48) = result;
      v6 = a1 + 48;
      if (result)
      {
        *(result + 56) = a2;
        *(*v6 + 72) = (*(*a2 + 1952))(a2);
        v7 = *(*v6 + 72);
        if (v7)
        {
          (*(*v7 + 8))(v7);
          *(*v6 + 64) = AppleBCMWLANCore::getCommander(a2);
          v8 = *(*v6 + 64);
          if (v8)
          {
            (*(*v8 + 8))(v8);
            *(*v6 + 48) = AppleBCMWLANCore::getBssManager(a2);
            v9 = *(*v6 + 48);
            if (v9)
            {
              (*(*v9 + 8))(v9);
              *(*v6 + 88) = AppleBCMWLANCore::getPowerManager(a2);
              v10 = *(*v6 + 88);
              if (v10)
              {
                (*(*v10 + 8))(v10);
                *(*(a1 + 48) + 80) = AppleBCMWLANCore::getFaultReporter(*(*(a1 + 48) + 56));
                (*(**(*(a1 + 48) + 80) + 8))(*(*(a1 + 48) + 80));
                v11 = *(*(a1 + 48) + 80);
                getClassNameHelper(a1);
                CCFaultReporter::registerCallbacks();
                *(*(a1 + 48) + 640) = -1;
                *(*(a1 + 48) + 642) = -1;
                *(*(a1 + 48) + 1) = 0;
                return 1;
              }

              if (*(*v6 + 72))
              {
                if (CCLogStream::shouldLog())
                {
                  AppleBCMWLANJoinAdapter::initWithDriver(a1 + 48);
                }
              }
            }

            else if (*(*v6 + 72) && CCLogStream::shouldLog())
            {
              AppleBCMWLANJoinAdapter::initWithDriver(a1 + 48);
            }
          }

          else if (*(*v6 + 72) && CCLogStream::shouldLog())
          {
            AppleBCMWLANJoinAdapter::initWithDriver(a1 + 48);
          }
        }

        else
        {
          ClassNameHelper = getClassNameHelper(a1);
          IOLog("%s::%s(): Unable to get debug logger\n", ClassNameHelper, "initWithDriver");
        }

        AppleBCMWLANJoinAdapter::freeResources(a1);
        return 0;
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANJoinAdapter::collectImmediateFaultDataCallback(AppleBCMWLANJoinAdapter *this, CCFaultReport *a2)
{
  v4 = IOMallocZeroData();
  if (v4)
  {
    v5 = v4;
    AppleBCMWLANJoinAdapter::logState(this, v4);
    v6 = OSString::withCString("JoinManagerState.txt");
    v7 = OSString::withCString(v5);
    (*(*a2 + 192))(a2, v6, v7);
    IOFreeData();
  }

  return 0;
}

uint64_t AppleBCMWLANJoinAdapter::induceFaultCallback(AppleBCMWLANJoinAdapter *this, int a2, const char *a3)
{
  if (a2 == -469792511)
  {
    v3 = this + 48;
    if (*(*(this + 6) + 72))
    {
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANJoinAdapter::induceFaultCallback(v3);
      }
    }
  }

  return 0;
}

CCFaultReporter *AppleBCMWLANJoinAdapter::stop(OSObject *this)
{
  result = *(*&this[1].refcount + 80);
  if (result)
  {
    return CCFaultReporter::unregisterCallbacks(result, this);
  }

  return result;
}

uint64_t AppleBCMWLANJoinAdapter::configure6GDefaultUnAssocDwell(AppleBCMWLANJoinAdapter *this)
{
  if (!AppleBCMWLANCore::checkFor6GSupportCardCapability(*(*(this + 6) + 56)))
  {
    return 3758097084;
  }

  return AppleBCMWLANJoinAdapter::custom6GUnAssocDwell(this, 0x6Eu);
}

uint64_t AppleBCMWLANJoinAdapter::custom6GUnAssocDwell(AppleBCMWLANJoinAdapter *this, unsigned int a2)
{
  v14 = a2;
  v4 = this + 48;
  v5 = 3758097084;
  if (AppleBCMWLANCore::checkFor6GSupportCardCapability(*(*(this + 6) + 56)) && a2 <= 0x12B)
  {
    v6 = (*(**(*v4 + 56) + 88))(*(*v4 + 56));
    if ((*(*v6 + 136))(v6))
    {
      v11 = this;
      v12 = AppleBCMWLANJoinAdapter::handleCustom6GUnAssocDwellAsyncCallBack;
      v13 = 0;
      v5 = AppleBCMWLANCommander::sendIOVarSet(*(*(this + 6) + 64), "scan_6g_unassoc_time");
      if (v5 && *(*v4 + 72) && CCLogStream::shouldLog())
      {
        AppleBCMWLANJoinAdapter::custom6GUnAssocDwell(v4);
      }
    }

    else
    {
      v7 = *(*v4 + 64);
      v11 = &v14;
      v12 = 4;
      v8 = AppleBCMWLANCommander::runIOVarSet(v7, "scan_6g_unassoc_time", &v11, 0, 0);
      v5 = v8;
      v9 = v8 == -469794537 || v8 == 0;
      if (!v9 && *(*v4 + 72) && CCLogStream::shouldLog())
      {
        AppleBCMWLANJoinAdapter::custom6GUnAssocDwell(v4);
      }
    }
  }

  return v5;
}

uint64_t AppleBCMWLANJoinAdapter::handleCustom6GUnAssocDwellAsyncCallBack(uint64_t result, uint64_t a2, int a3)
{
  if (a3)
  {
    v3 = result + 48;
    result = *(*(result + 48) + 72);
    if (result)
    {
      result = CCLogStream::shouldLog();
      if (result)
      {
        return AppleBCMWLANJoinAdapter::handleCustom6GUnAssocDwellAsyncCallBack(v3);
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANJoinAdapter::handleBeaconProtectionAsyncCallBack(uint64_t result, uint64_t a2, int a3)
{
  if (a3)
  {
    v3 = result + 48;
    result = *(*(result + 48) + 72);
    if (result)
    {
      result = CCLogStream::shouldLog();
      if (result)
      {
        return AppleBCMWLANJoinAdapter::handleBeaconProtectionAsyncCallBack(v3);
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANJoinAdapter::setBeaconProtectionParams(AppleBCMWLANJoinAdapter *this, const char *a2, __int16 a3, void *a4, unsigned int a5, int a6)
{
  v12 = this + 48;
  v13 = AppleBCMWLANCore::checkForBeaconProtectionSupport(*(*(this + 6) + 56));
  if (a6 || (v13 & 1) != 0)
  {
    v15 = IOMallocZeroData();
    if (v15)
    {
      v16 = v15;
      *v15 = 1;
      v15[1] = a5;
      v15[2] = a3;
      memcpy(v15 + 3, a4, a5);
      if (a5 == 0xFFFA)
      {
        v17 = 0;
      }

      else
      {
        v17 = v16;
      }

      v20[0] = v17;
      v20[1] = (a5 + 6);
      v18 = (*(**(*v12 + 56) + 88))(*(*v12 + 56));
      if ((*(*v18 + 136))(v18))
      {
        v14 = AppleBCMWLANCommander::sendIOVarSet(*(*(this + 6) + 64), "bcnprot");
        if (v14 && *(*v12 + 72) && CCLogStream::shouldLog())
        {
          CCLogStream::logAlert(*(*v12 + 72), "[dk] %s@%d: Failed SET IOCTL bcnprot, cret[0x%08x]\n", "setBeaconProtectionParams", 1588, v14);
        }
      }

      else
      {
        v14 = AppleBCMWLANCommander::runIOVarSet(*(*v12 + 64), "bcnprot", v20, 0, 0);
        if (v14 && *(*v12 + 72) && CCLogStream::shouldLog())
        {
          AppleBCMWLANJoinAdapter::setBeaconProtectionParams(v12, v14, a2);
        }
      }

      IOFreeData();
    }

    else
    {
      v14 = 3758097085;
      if (*(*v12 + 72) && CCLogStream::shouldLog())
      {
        AppleBCMWLANJoinAdapter::setBeaconProtectionParams(v12);
      }
    }
  }

  else
  {
    v14 = 3758097095;
    if (*(*v12 + 72) && CCLogStream::shouldLog())
    {
      AppleBCMWLANJoinAdapter::setBeaconProtectionParams(v12);
      return 3758097095;
    }
  }

  return v14;
}

uint64_t AppleBCMWLANJoinAdapter::handleCustomUnAssocDwellAsyncCallBack(uint64_t result, uint64_t a2, int a3)
{
  if (a3)
  {
    v3 = result + 48;
    result = *(*(result + 48) + 72);
    if (result)
    {
      result = CCLogStream::shouldLog();
      if (result)
      {
        return AppleBCMWLANJoinAdapter::handleCustomUnAssocDwellAsyncCallBack(v3);
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANJoinAdapter::collectJoinTimeoutAwdMetrics(AppleBCMWLANJoinAdapter *this)
{
  v1 = this + 48;
  if (!AppleBCMWLANCore::checkForAWDDataInfoSupport(*(*(this + 6) + 56)))
  {
    return 3758097095;
  }

  v2 = (*v1 + 1324);
  v6 = 0;
  v7[0] = &v6;
  v7[1] = 4;
  bzero(v2, 0x204uLL);
  v5[0] = v2;
  v5[1] = 0x20400010204;
  v3 = AppleBCMWLANCommander::runIOVarGet(*(*v1 + 64), "awd_data_info", v7, v5, 0);
  if (v3 && *(*v1 + 72) && CCLogStream::shouldLog())
  {
    AppleBCMWLANJoinAdapter::collectJoinTimeoutAwdMetrics(v1);
  }

  return v3;
}

uint64_t AppleBCMWLANJoinAdapter::collectCCAForJoinTimeout(AppleBCMWLANJoinAdapter *this, unsigned int *a2)
{
  v4 = this + 48;
  v3 = *(this + 6);
  v5 = *(v3 + 628);
  if (v5 >= 3)
  {
    v6 = 3;
  }

  else
  {
    v6 = v5;
  }

  if (*(v3 + 72) && CCLogStream::shouldLog())
  {
    CCLogStream::logInfo(*(*v4 + 72), "[dk] %s@%d:bss count %d\n", "collectCCAForJoinTimeout", 1701, v6);
  }

  *a2 = 0;
  if (v5)
  {
    v7 = 0;
    do
    {
      v22[0] = 0;
      v22[1] = 0;
      v23 = 0;
      v8 = *v4;
      LOWORD(v22[0]) = *(*v4 + 2 * v7 + 632);
      if (*(v8 + 72))
      {
        shouldLog = CCLogStream::shouldLog();
        v8 = *v4;
        if (shouldLog)
        {
          CCLogStream::logInfo(*(v8 + 72), "[dk] %s@%d:chanspec %x\n", "collectCCAForJoinTimeout", 1708, LOWORD(v22[0]));
          v8 = *v4;
        }
      }

      v21[0] = v22;
      v21[1] = 0x1800000018;
      v10 = *(v8 + 64);
      v20[0] = v22;
      v20[1] = 24;
      v11 = AppleBCMWLANCommander::runIOVarGet(v10, "cca_get_stats", v20, v21, 0);
      if (v11)
      {
        AppleBCMWLANJoinAdapter::collectCCAForJoinTimeout(v4, v11, v20);
        return LODWORD(v20[0]);
      }

      v12 = WORD1(v22[0]);
      if (!WORD1(v22[0]))
      {
        goto LABEL_26;
      }

      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v17 = &v23;
      do
      {
        v18 = *(v17 - 3);
        if (v18)
        {
          v16 += v18;
          v15 += *(v17 - 2);
          v14 += *(v17 - 1);
          v13 += *v17;
        }

        v17 = (v17 + 20);
        --v12;
      }

      while (v12);
      if (!v16)
      {
LABEL_26:
        AppleBCMWLANJoinAdapter::collectCCAForJoinTimeout();
        return 0;
      }

      *a2 += 100 * (v14 + v15 + v13) / v16;
      if (*(*v4 + 72) && CCLogStream::shouldLog())
      {
        CCLogStream::logInfo(*(*v4 + 72), "[dk] %s@%d:CCA during join : chanspec:%x duration:%d congest_ibss:%d congest_obss:%d interference:%d timestamp:%d num_secs:%d\n", "collectCCAForJoinTimeout", 1731, LOWORD(v22[0]), v16, v15, v14, v13, HIDWORD(v23), WORD1(v22[0]));
      }

      ++v7;
    }

    while (v7 != v6);
    *a2 /= v6;
    result = *(*v4 + 72);
    if (result)
    {
      result = CCLogStream::shouldLog();
      if (result)
      {
        CCLogStream::logInfo(*(*v4 + 72), "[dk] %s@%d:CCA %d\n", "collectCCAForJoinTimeout", 1735, *a2);
        return 0;
      }
    }
  }

  else
  {
    AppleBCMWLANJoinAdapter::collectCCAForJoinTimeout();
    return LODWORD(v22[0]);
  }

  return result;
}

uint64_t AppleBCMWLANJoinAdapter::setAssocRSNIEAsyncCallback(uint64_t result, uint64_t a2, int a3)
{
  if (a3)
  {
    v3 = result + 48;
    result = *(*(result + 48) + 72);
    if (result)
    {
      result = CCLogStream::shouldLog();
      if (result)
      {
        return AppleBCMWLANJoinAdapter::setAssocRSNIEAsyncCallback(v3);
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANJoinAdapter::setCustomAssocIE(AppleBCMWLANJoinAdapter *this, char *a2, uint64_t a3)
{
  v3 = a3;
  if (a3)
  {
    v6 = isMemZero(a2, a3);
    if (*(*(this + 6) + 72) && CCLogStream::shouldLog())
    {
      v7 = "nonzero";
      if (v6)
      {
        v7 = "all zeros";
      }

      CCLogStream::logAlertIf(*(*(this + 6) + 72), 0x800uLL, "[dk] %s@%d: Setting WAPI IE has len %d, is %s\n", "setCustomAssocIE", 1785, v3, v7);
    }
  }

  else if (*(*(this + 6) + 72) && CCLogStream::shouldLog())
  {
    AppleBCMWLANJoinAdapter::setCustomAssocIE(this + 48);
  }

  v8 = this + 48;
  v9 = (*(**(*(this + 6) + 56) + 88))(*(*(this + 6) + 56));
  if ((*(*v9 + 136))(v9))
  {
    v16 = this;
    v17 = AppleBCMWLANJoinAdapter::setCustomAssocIEAsyncCallback;
    v18 = 0;
    v10 = AppleBCMWLANCommander::sendIOVarSet(*(*(this + 6) + 64), "wapiie");
  }

  else
  {
    v11 = *(*v8 + 64);
    v12 = v3;
    if (v3)
    {
      v13 = a2;
    }

    else
    {
      v13 = 0;
    }

    if (!a2)
    {
      v12 = 0;
    }

    v16 = v13;
    v17 = v12;
    v10 = AppleBCMWLANCommander::runIOVarSet(v11, "wapiie", &v16, 0, 0);
  }

  v14 = v10;
  if (v10 && *(*v8 + 72) && CCLogStream::shouldLog())
  {
    AppleBCMWLANJoinAdapter::setCustomAssocIE(this + 48);
  }

  return v14;
}

uint64_t AppleBCMWLANJoinAdapter::setCustomAssocIEAsyncCallback(uint64_t result, uint64_t a2, int a3)
{
  if (a3)
  {
    v3 = result + 48;
    result = *(*(result + 48) + 72);
    if (result)
    {
      result = CCLogStream::shouldLog();
      if (result)
      {
        return AppleBCMWLANJoinAdapter::setCustomAssocIEAsyncCallback(v3);
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANJoinAdapter::getAssocRSNXE(AppleBCMWLANJoinAdapter *this, unsigned __int8 *a2, unint64_t *a3)
{
  v6 = 3758097090;
  if (AppleBCMWLANCore::checkForSaePKSupport(*(*(this + 6) + 56)) && AppleBCMWLANCore::checkForWPA3SAESupport(*(*(this + 6) + 56)))
  {
    v7 = *(this + 6);
    v8 = *(v7 + 104);
    if (*a3 >= v8)
    {
      memcpy(a2, (v7 + 112), v8);
      v6 = 0;
      *a3 = *(*(this + 6) + 104);
    }

    else
    {
      return 3758097115;
    }
  }

  return v6;
}

void *AppleBCMWLANJoinAdapter::getAssociatedRSNXEAsyncCallback(uint64_t a1, uint64_t a2, int a3, const void **a4)
{
  v5 = a1 + 48;
  v4 = *(a1 + 48);
  if (a3)
  {
    result = *(v4 + 72);
    if (result)
    {
      result = CCLogStream::shouldLog();
      if (result)
      {
        return AppleBCMWLANJoinAdapter::getAssociatedRSNXEAsyncCallback(v5);
      }
    }
  }

  else
  {
    v7 = *a4;

    return memcpy((v4 + 369), v7, 0x101uLL);
  }

  return result;
}

uint64_t AppleBCMWLANJoinAdapter::getAssociatedRSNXE(AppleBCMWLANJoinAdapter *this)
{
  v2 = 3758097090;
  v3 = this + 48;
  if (!AppleBCMWLANCore::checkForSaePKSupport(*(*(this + 6) + 56)) || !AppleBCMWLANCore::checkForWPA3SAESupport(*(*v3 + 56)))
  {
    return v2;
  }

  v4 = (*(**(*v3 + 56) + 88))(*(*v3 + 56));
  if (!(*(*v4 + 136))(v4))
  {
    v6 = *v3;
    v9 = (*v3 + 369);
    v10 = 0x10101010101;
    if (AppleBCMWLANCommander::runIOVarGet(*(v6 + 64), "rsnxe", &kNoTxPayload, &v9, 0))
    {
      goto LABEL_5;
    }

    return 0;
  }

  v9 = this;
  v10 = AppleBCMWLANJoinAdapter::getAssociatedRSNXEAsyncCallback;
  v11 = 0;
  v5 = *(*(this + 6) + 64);
  v8 = 16843009;
  if (!AppleBCMWLANCommander::sendIOVarGet(v5, "rsnxe", &kNoTxPayload, &v8, &v9, 0))
  {
    return 0;
  }

LABEL_5:
  if (*(*v3 + 72) && CCLogStream::shouldLog())
  {
    AppleBCMWLANJoinAdapter::getAssociatedRSNXE(v3);
  }

  return v2;
}

uint64_t AppleBCMWLANJoinAdapter::setAssocRSNXE(AppleBCMWLANJoinAdapter *this, const unsigned __int8 *a2, size_t a3)
{
  v6 = 3758097090;
  if (AppleBCMWLANCore::checkForSaePKSupport(*(*(this + 6) + 56)) && AppleBCMWLANCore::checkForWPA3SAESupport(*(*(this + 6) + 56)))
  {
    if (a3 <= 0x101)
    {
      v7 = *(this + 6);
      if (a3)
      {
        memcpy((v7 + 112), a2, a3);
      }

      else
      {
        *(v7 + 368) = 0;
        *(v7 + 336) = 0u;
        *(v7 + 352) = 0u;
        *(v7 + 304) = 0u;
        *(v7 + 320) = 0u;
        *(v7 + 272) = 0u;
        *(v7 + 288) = 0u;
        *(v7 + 240) = 0u;
        *(v7 + 256) = 0u;
        *(v7 + 208) = 0u;
        *(v7 + 224) = 0u;
        *(v7 + 176) = 0u;
        *(v7 + 192) = 0u;
        *(v7 + 144) = 0u;
        *(v7 + 160) = 0u;
        *(v7 + 112) = 0u;
        *(v7 + 128) = 0u;
      }

      v6 = 0;
      *(*(this + 6) + 104) = a3;
    }

    else
    {
      return 3758097115;
    }
  }

  return v6;
}

uint64_t AppleBCMWLANJoinAdapter::programPMK(uint64_t a1, unsigned __int16 *a2)
{
  v3 = a1 + 48;
  v4 = *(*(a1 + 48) + 64);
  v7[0] = a2;
  v7[1] = 264;
  v5 = AppleBCMWLANCommander::runIOCtlSet(v4, 268, v7, 0, 0);
  if (v5)
  {
    if (*(*v3 + 72) && CCLogStream::shouldLog())
    {
      AppleBCMWLANJoinAdapter::programPMK(v3);
    }

    if (v5 == -469794530 && *a2)
    {
      CCFaultReporter::reportFault(*(*v3 + 80), 5u, "/Library/Caches/com.apple.xbs/Sources/AppleBCMWLANV3_driverkit/AppleBCMWLANJoinAdapter.cpp", 0x862u, "programPMK", 0, -469792504, "WLC_SET_WSEC_PMK key len %x", *a2);
    }
  }

  return v5;
}

uint64_t AppleBCMWLANJoinAdapter::setAssocWsecInfoPMKPassword(AppleBCMWLANJoinAdapter *this, unint64_t a2, unsigned int a3, unint64_t a4, unsigned int a5)
{
  if (a5 | a3 && a2 | a4)
  {
    if (!a2 || (a3 & 0xFFEF) == 0x20)
    {
      v12 = (a3 & 0xFFFC) + 4;
      if ((a3 & 3) == 0)
      {
        v12 = a3;
      }

      v13 = (a5 & 0xFFFC) + 4;
      if ((a5 & 3) == 0)
      {
        v13 = a5;
      }

      v14 = v12 + 36;
      v15 = v12 + 36 + v13;
      v16 = IOMallocZeroData();
      if (v16)
      {
        v17 = v16;
        *v16 = 1;
        *(v16 + 3) = 1;
        *(v16 + 4) = 264;
        *(v16 + 6) = v15;
        *(v16 + 8) = 256;
        v18 = v16 + 8;
        v19 = 36;
        *(v16 + 10) = v15;
        if (a3)
        {
          *(v16 + 36) = a3;
          *(v16 + 38) = 36;
          memcpy((v16 + 44), a2, a3);
          v19 = v14;
        }

        if (a5)
        {
          v17[20] = a5;
          v17[21] = v19;
          memcpy((v18 + v19), a4, a5);
        }

        v21 = *(this + 6);
        v20 = this + 48;
        v22 = *(v21 + 64);
        if (v15 == 0xFFF8)
        {
          v23 = 0;
        }

        else
        {
          v23 = v17;
        }

        v26[0] = v23;
        v26[1] = (v15 + 8);
        v10 = AppleBCMWLANCommander::runIOVarSet(v22, "wsec_info", v26, 0, 0);
        if (v10 && *(*v20 + 72) && CCLogStream::shouldLog())
        {
          AppleBCMWLANJoinAdapter::setAssocWsecInfoPMKPassword(v20);
        }

        bzero(v17, v15 + 8);
        IOFreeData();
      }

      else
      {
        v25 = *(this + 6);
        v24 = this + 48;
        v10 = 3758097085;
        if (*(v25 + 72) && CCLogStream::shouldLog())
        {
          AppleBCMWLANJoinAdapter::setAssocWsecInfoPMKPassword(v24);
        }
      }
    }

    else
    {
      v10 = 3758097090;
      if (*(*(this + 6) + 72) && CCLogStream::shouldLog())
      {
        CCLogStream::logAlert(*(*(this + 6) + 72), "[dk] %s@%d:Invalid PMK length (pmkLen %u)\n");
      }
    }
  }

  else
  {
    v10 = 3758097090;
    if (*(*(this + 6) + 72) && CCLogStream::shouldLog())
    {
      CCLogStream::logAlert(*(*(this + 6) + 72), "[dk] %s@%d:Invalid parameters (pmk: %p pmkLen %u pwd %p pwdLen %u\n");
    }
  }

  return v10;
}

uint64_t AppleBCMWLANJoinAdapter::programKeyAsync(uint64_t a1, uint64_t a2)
{
  v7[0] = a1;
  v7[1] = AppleBCMWLANJoinAdapter::programKeyAsyncCallback;
  v7[2] = 0;
  v2 = a1 + 48;
  v3 = *(*(a1 + 48) + 64);
  v6[0] = a2;
  v6[1] = 164;
  v4 = AppleBCMWLANCommander::sendIOCtlSet(v3, 45, v6, kNoRxExpected, v7, 0);
  if (v4 && *(*v2 + 72) && CCLogStream::shouldLog())
  {
    AppleBCMWLANJoinAdapter::programKeyAsync(v2);
  }

  return v4;
}

uint64_t AppleBCMWLANJoinAdapter::programKeySync(uint64_t a1, uint64_t a2)
{
  v2 = a1 + 48;
  v3 = *(*(a1 + 48) + 64);
  v6[0] = a2;
  v6[1] = 164;
  v4 = AppleBCMWLANCommander::runIOCtlSet(v3, 45, v6, 0, 0);
  if (v4 && *(*v2 + 72) && CCLogStream::shouldLog())
  {
    AppleBCMWLANJoinAdapter::programKeySync(v2);
  }

  return v4;
}

uint64_t AppleBCMWLANJoinAdapter::programKeyAsyncCallback(uint64_t result, uint64_t a2, int a3)
{
  if (a3)
  {
    v3 = result + 48;
    result = *(*(result + 48) + 72);
    if (result)
    {
      result = CCLogStream::shouldLog();
      if (result)
      {
        return AppleBCMWLANJoinAdapter::programKeyAsyncCallback(v3);
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANJoinAdapter::setWsecInfoCallback(uint64_t result, uint64_t a2, int a3)
{
  if (a3)
  {
    v3 = result + 48;
    result = *(*(result + 48) + 72);
    if (result)
    {
      result = CCLogStream::shouldLog();
      if (result)
      {
        return AppleBCMWLANJoinAdapter::setWsecInfoCallback(v3);
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANJoinAdapter::handleAuth(uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 8);
  v2 = *(a2 + 8);
  if (v2 == 6)
  {
    return 3758097084;
  }

  memset(v29, 0, sizeof(v29));
  v30 = 0;
  if (v2 || *(a2 + 12))
  {
    v7 = a1 + 48;
    if ((!*(*(a1 + 48) + 72) || (CCLogStream::shouldLogConsole() & 1) == 0) && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a2 + 8);
      v9 = stringFromStatusInEvent(*(a2 + 8), 0);
      v27 = *(a2 + 2);
      v25 = *(a2 + 12);
      v26 = v9;
      v28 = *(a2 + 16);
      v10 = 0;
      if (IO80211_io80211isSensitiveInfoAllowed())
      {
        v10 = *(a2 + 24);
      }

      if (IO80211_io80211isSensitiveInfoAllowed())
      {
        v24 = *(a2 + 25);
      }

      else
      {
        v24 = 0;
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

      *buf = 67112962;
      v32 = 65;
      v33 = 2080;
      v34 = "handleAuth";
      v35 = 1024;
      v36 = 2487;
      v37 = 2080;
      v38 = "handleAuth";
      v39 = 1024;
      v40 = 2487;
      v41 = 2048;
      v42 = v8;
      v43 = 2080;
      v44 = v26;
      v45 = 2048;
      v46 = v25;
      v47 = 1024;
      v48 = v27;
      v49 = 2048;
      v50 = v28;
      v51 = 1024;
      v52 = v10;
      v53 = 1024;
      v54 = v24;
      v55 = 1024;
      v56 = v11;
      v57 = 1024;
      v58 = v12;
      v59 = 1024;
      v60 = v13;
      v61 = 1024;
      v62 = v14;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%c [dk] %s@%d: %s:%d: status = %lu %s, reason = %lu, flags = 0x%x, authtype = %lu, addr = %02x:%02x:%02x:%02x:%02x:%02x\n", buf, 0x7Au);
    }

    if (*(*v7 + 72) && CCLogStream::shouldLog())
    {
      AppleBCMWLANJoinAdapter::handleAuth(a1 + 48, v3);
    }
  }

  v15 = *(a1 + 48);
  v16 = -680;
  while (1)
  {
    v17 = v15 + v16;
    if (*(v15 + v16 + 1332) == *(a2 + 24) && *(v15 + v16 + 1336) == *(a2 + 28))
    {
      break;
    }

    if (*(v17 + 1338) == *(a2 + 24) && *(v17 + 1342) == *(a2 + 28))
    {
      break;
    }

    v16 += 68;
    if (!v16)
    {
      goto LABEL_41;
    }
  }

  *(v17 + 1346) = 1;
  *(*(a1 + 48) + v16 + 1348) = mapBcmStatusToApple80211IOReturnScan(*(a2 + 8));
  *(*(a1 + 48) + v16 + 1352) = mapBcmStatusToApple80211IOReturnIEEEStatus(*(a2 + 12));
  *(&v29[1] + 1) = *(a2 + 28);
  *(v29 + 5) = *(a2 + 24);
  v15 = *(a1 + 48);
  BYTE4(v29[0]) = *(v15 + v16 + 1346);
  *(&v29[1] + 4) = *(v15 + v16 + 1348);
LABEL_41:
  mapBcomStatusEventToIEEEStatus((v15 + 640), *(a2 + 8), *(a2 + 12));
  *(*(a1 + 48) + 642) = -1;
  v20 = *(a2 + 8);
  if (v20 > 1)
  {
    if (v20 == 2)
    {
      v21 = *(a1 + 48);
      v22 = 1002;
    }

    else
    {
      if (v20 != 5)
      {
        goto LABEL_53;
      }

      v21 = *(a1 + 48);
      v22 = 1001;
    }

    goto LABEL_52;
  }

  if ((v20 + 3094) >= 2)
  {
    if (v20 != -3092)
    {
      goto LABEL_53;
    }

    v21 = *(a1 + 48);
    if (*(a2 + 12) == -3089)
    {
      goto LABEL_44;
    }

    v22 = 1017;
LABEL_52:
    *(v21 + 642) = v22;
    goto LABEL_53;
  }

  v21 = *(a1 + 48);
LABEL_44:
  *(v21 + 640) = 15;
LABEL_53:
  mapBcmStatusToApple80211IOReturnScan(v20);
  mapBcmStatusToApple80211IOReturnIEEEStatus(*(a2 + 12));
  v23 = *(a1 + 48);
  if (*(v23 + 640))
  {
    LODWORD(v29[0]) = *(v23 + 640);
    AppleBCMWLANCore::postMessageInfra(*(v23 + 56), 0xD3u, v29, 0x1CuLL);
  }

  return 0;
}

uint64_t AppleBCMWLANJoinAdapter::handleAssoc(AppleBCMWLANJoinAdapter *a1, uint64_t a2)
{
  v3 = (a2 + 8);
  v2 = *(a2 + 8);
  if (v2 == 6)
  {
    return 3758097084;
  }

  memset(v29, 0, sizeof(v29));
  v30 = 0;
  if (v2 || *(a2 + 12))
  {
    v7 = (a1 + 48);
    if ((!*(*(a1 + 6) + 72) || (CCLogStream::shouldLogConsole() & 1) == 0) && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a2 + 8);
      v9 = stringFromStatusInEvent(*(a2 + 8), 0);
      v27 = *(a2 + 2);
      v25 = *(a2 + 12);
      v26 = v9;
      v28 = *(a2 + 16);
      v10 = 0;
      if (IO80211_io80211isSensitiveInfoAllowed())
      {
        v10 = *(a2 + 24);
      }

      if (IO80211_io80211isSensitiveInfoAllowed())
      {
        v24 = *(a2 + 25);
      }

      else
      {
        v24 = 0;
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

      *buf = 67112962;
      v32 = 65;
      v33 = 2080;
      v34 = "handleAssoc";
      v35 = 1024;
      v36 = 2557;
      v37 = 2080;
      v38 = "handleAssoc";
      v39 = 1024;
      v40 = 2557;
      v41 = 2048;
      v42 = v8;
      v43 = 2080;
      v44 = v26;
      v45 = 2048;
      v46 = v25;
      v47 = 1024;
      v48 = v27;
      v49 = 2048;
      v50 = v28;
      v51 = 1024;
      v52 = v10;
      v53 = 1024;
      v54 = v24;
      v55 = 1024;
      v56 = v11;
      v57 = 1024;
      v58 = v12;
      v59 = 1024;
      v60 = v13;
      v61 = 1024;
      v62 = v14;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%c [dk] %s@%d: %s:%d: status = %lu %s, reason = %lu, flags = 0x%x, authtype = %lu, addr = %02x:%02x:%02x:%02x:%02x:%02x\n", buf, 0x7Au);
    }

    if (*(*v7 + 72) && CCLogStream::shouldLog())
    {
      AppleBCMWLANJoinAdapter::handleAssoc(a1 + 48, v3);
    }
  }

  v15 = *(a1 + 6);
  v16 = 684;
  while (1)
  {
    v17 = v15 + v16;
    if (*(v15 + v16 - 32) == *(a2 + 24) && *(v15 + v16 - 28) == *(a2 + 28))
    {
      break;
    }

    if (*(v17 - 26) == *(a2 + 24) && *(v17 - 22) == *(a2 + 28))
    {
      break;
    }

    v16 += 68;
    if (v16 == 1364)
    {
      goto LABEL_43;
    }
  }

  *(v17 - 8) = 1;
  *(*(a1 + 6) + v16 - 4) = mapBcmStatusToApple80211IOReturnScan(*(a2 + 8));
  *(*(a1 + 6) + v16) = mapBcmStatusToApple80211IOReturnIEEEStatus(*(a2 + 12));
  *(v29 + 5) = *(a2 + 24);
  *(&v29[1] + 1) = *(a2 + 28);
  v20 = *(a1 + 6) + v16;
  BYTE4(v29[0]) = *(v20 - 18);
  if (BYTE4(v29[0]) == 1)
  {
    *(&v29[1] + 4) = *(v20 - 16);
  }

  HIDWORD(v29[2]) = mapBcmStatusToApple80211IOReturnScan(*(a2 + 8));
  v30 = mapBcmStatusToApple80211IOReturnIEEEStatus(*(a2 + 12));
  v15 = *(a1 + 6);
LABEL_43:
  mapBcomStatusEventToIEEEStatus((v15 + 640), *(a2 + 8), *(a2 + 12));
  v21 = *(a2 + 8);
  if (v21 == 5)
  {
    v22 = 1003;
    goto LABEL_47;
  }

  if (v21 == 2)
  {
    v22 = 1004;
LABEL_47:
    *(*(a1 + 6) + 642) = v22;
  }

  v23 = *(a1 + 6);
  LODWORD(v29[0]) = *(v23 + 640);
  AppleBCMWLANCore::postMessageInfra(*(v23 + 56), 0xD3u, v29, 0x1CuLL);
  if (!*(*(a1 + 6) + 640))
  {
    AppleBCMWLANJoinAdapter::getBSSInfoAsync(a1);
  }

  return 0;
}

uint64_t AppleBCMWLANJoinAdapter::handleSetSSID(uint64_t *a1, uint64_t a2)
{
  v3 = a1 + 6;
  v2 = a1[6];
  if (a2)
  {
    v6 = 696;
    while (*(v2 + v6 - 44) != *(a2 + 24) || *(v2 + v6 - 40) != *(a2 + 28))
    {
      v6 += 68;
      if (v6 == 1376)
      {
        goto LABEL_17;
      }
    }

    *(v2 + v6 - 8) = 1;
    *(*v3 + v6 - 4) = mapBcmStatusToApple80211IOReturnScan(*(a2 + 8));
    *(*v3 + v6) = mapBcmStatusToApple80211IOReturnIEEEStatus(*(a2 + 12));
LABEL_17:
    v9 = (a2 + 8);
    if (*(a2 + 8) || *(a2 + 12))
    {
      if ((!*(*v3 + 72) || (CCLogStream::shouldLogConsole() & 1) == 0) && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        v28 = *(*v3 + 96);
        v10 = *(a2 + 8);
        v11 = stringFromStatusInEvent(*(a2 + 8), 0);
        v24 = *(a2 + 2);
        v22 = *(a2 + 12);
        v23 = v11;
        v26 = *(a2 + 16);
        v25 = *(*v3 + 640);
        v27 = *(*v3 + 642);
        v12 = 0;
        if (IO80211_io80211isSensitiveInfoAllowed())
        {
          v12 = *(a2 + 24);
        }

        if (IO80211_io80211isSensitiveInfoAllowed())
        {
          v13 = *(a2 + 25);
        }

        else
        {
          v13 = 0;
        }

        if (IO80211_io80211isSensitiveInfoAllowed())
        {
          v14 = *(a2 + 26);
        }

        else
        {
          v14 = 0;
        }

        if (IO80211_io80211isSensitiveInfoAllowed())
        {
          v15 = *(a2 + 27);
        }

        else
        {
          v15 = 0;
        }

        if (IO80211_io80211isSensitiveInfoAllowed())
        {
          v16 = *(a2 + 28);
        }

        else
        {
          v16 = 0;
        }

        if (IO80211_io80211isSensitiveInfoAllowed())
        {
          v17 = *(a2 + 29);
        }

        else
        {
          v17 = 0;
        }

        *buf = 67113218;
        v30 = 78;
        *v31 = 2080;
        *&v31[2] = "handleSetSSID";
        *&v31[10] = 1024;
        v32 = 2630;
        v33 = 2048;
        v34 = v28;
        v35 = 2048;
        v36 = v10;
        v37 = 2080;
        v38 = v23;
        v39 = 2048;
        v40 = v22;
        v41 = 1024;
        v42 = v24;
        v43 = 2048;
        v44 = v26;
        v45 = 2048;
        v46 = v25;
        v47 = 2048;
        v48 = v27;
        v49 = 1024;
        v50 = v12;
        v51 = 1024;
        v52 = v13;
        v53 = 1024;
        v54 = v14;
        v55 = 1024;
        v56 = v15;
        v57 = 1024;
        v58 = v16;
        v59 = 1024;
        v60 = v17;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%c [dk] %s@%d:  interface %lu event_status = %lu %s, reason = %lu, flags = 0x%x, authtype = %lu, join_status = %lu join_ext_status = %lu addr = %02x:%02x:%02x:%02x:%02x:%02x\n", buf, 0x88u);
      }

      if (*(*v3 + 72) && CCLogStream::shouldLog())
      {
        AppleBCMWLANJoinAdapter::handleSetSSID(v3, (a2 + 8), a2, (a2 + 24));
      }

      v18 = *v9;
      if (*v9 == 2)
      {
        if ((!*(*v3 + 72) || (CCLogStream::shouldLogConsole() & 1) == 0) && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109634;
          v30 = 78;
          *v31 = 2080;
          *&v31[2] = "handleSetSSID";
          *&v31[10] = 1024;
          v32 = 2637;
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%c [dk] %s@%d: Timed out waiting for first beacon of the network", buf, 0x18u);
        }

        if (*(*v3 + 72) && CCLogStream::shouldLog())
        {
          AppleBCMWLANJoinAdapter::handleSetSSID(v3);
        }

        v18 = *v9;
      }

      if (v18 == 3)
      {
        *(*v3 + 642) = 1000;
      }
    }

    else
    {
      v18 = 0;
    }

    mapBcomSsidEventToAppleStatus((*v3 + 640), v18, *(a2 + 12));
    *v31 = 0;
    v19 = *(a2 + 24);
    *v31 = *(a2 + 28);
    *buf = *(*v3 + 640);
    v30 = v19;
    *&v31[4] = mapBcmStatusToApple80211IOReturnScan(*(a2 + 8));
    *&v31[8] = mapBcmStatusToApple80211IOReturnIEEEStatus(*(a2 + 12));
    v20 = *(*v3 + 640);
    AppleBCMWLANCore::postMessageInfra(*(*v3 + 56), 0xD4u, buf, 0x14uLL);
    if (v20)
    {
      AppleBCMWLANJoinAdapter::sendConnectComplete(a1);
    }

    else if (*(*v3 + 5) == 1)
    {
      AppleBCMWLANJoinAdapter::getBSSInfoAsync(a1);
    }

    return 0;
  }

  else
  {
    if ((!*(v2 + 72) || (CCLogStream::shouldLogConsole() & 1) == 0) && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109634;
      v30 = 67;
      *v31 = 2080;
      *&v31[2] = "handleSetSSID";
      *&v31[10] = 1024;
      v32 = 2609;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%c [dk] %s@%d:  no event specified\n", buf, 0x18u);
    }

    v8 = 3758097090;
    if (*(*v3 + 72) && CCLogStream::shouldLog())
    {
      AppleBCMWLANJoinAdapter::handleSetSSID(v3);
    }
  }

  return v8;
}

uint64_t AppleBCMWLANJoinAdapter::sendConnectComplete(uint64_t this)
{
  v1 = *(this + 48);
  if (*(v1 + 1))
  {
    if ((*(v1 + 4) & 1) == 0)
    {
      v2 = *(v1 + 640);
      if (v2 != 0xFFFF)
      {
        v3 = this;
        v4 = 0;
        v18 = 0u;
        v17 = 0u;
        v16 = 0u;
        v15 = 0u;
        v14 = 0u;
        v13 = 0u;
        v12 = 0u;
        v11 = 0u;
        v10 = 0u;
        v8[0] = v2;
        v8[1] = *(v1 + 642);
        v5 = (v1 + 652);
        v9 = 0u;
        do
        {
          v6 = &v8[v4];
          *(v6 + 6) = *(v5 + 7);
          v7 = *v5;
          v6[4] = *(v5 + 2);
          *(v6 + 1) = v7;
          v4 += 8;
          v5 += 17;
        }

        while (v4 != 80);
        this = AppleBCMWLANCore::postMessageInfra(*(v1 + 56), 0xD5u, v8, 0xA4uLL);
        *(*(v3 + 48) + 4) = 1;
        *(*(v3 + 48) + 1) = 0;
      }
    }
  }

  return this;
}

uint64_t AppleBCMWLANJoinAdapter::handleICVErrorEvent(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v4 = (a2 + 8);
    if ((*(a2 + 8) || *(a2 + 12)) && *(*(a1 + 48) + 72) && CCLogStream::shouldLog())
    {
      AppleBCMWLANJoinAdapter::handleICVErrorEvent(a1 + 48, v4);
    }

    mapBcomStatusEventToIEEEStatus((*(a1 + 48) + 640), 1u, *(a2 + 12));
    *(*(a1 + 48) + 642) = 1008;
    AppleBCMWLANCore::clearEventBit(*(*(a1 + 48) + 56), 0x31u);
    AppleBCMWLANJoinAdapter::sendConnectComplete(a1);
    return 0;
  }

  else
  {
    v5 = 3758097090;
    v6 = a1 + 48;
    if (*(*(a1 + 48) + 72) && CCLogStream::shouldLog())
    {
      AppleBCMWLANJoinAdapter::handleICVErrorEvent(v6);
    }
  }

  return v5;
}

uint64_t AppleBCMWLANJoinAdapter::handleSupplicantEvent(uint64_t a1, uint64_t a2)
{
  v3 = a1 + 48;
  v2 = *(a1 + 48);
  if (a2)
  {
    v6 = 708;
    while (*(v2 + v6 - 56) != *(a2 + 24) || *(v2 + v6 - 52) != *(a2 + 28))
    {
      v6 += 68;
      if (v6 == 1388)
      {
        goto LABEL_17;
      }
    }

    *(v2 + v6 - 8) = 1;
    *(*v3 + v6 - 4) = mapBcmStatusToApple80211IOReturnSupplicantStatus(*(a2 + 8));
    *(*v3 + v6) = mapBcmReasonToApple80211IOReturnSupplicant(*(a2 + 12));
LABEL_17:
    LODWORD(v9) = *(a2 + 8);
    if (v9 || *(a2 + 12))
    {
      if (*(*v3 + 72))
      {
        shouldLog = CCLogStream::shouldLog();
        v9 = *(a2 + 8);
        if (shouldLog)
        {
          v27 = *(*v3 + 72);
          v26 = stringFromStatusInEvent(v9, *(a2 + 4));
          v11 = *(a2 + 12);
          v12 = stringFromReason(*(a2 + 4), *(a2 + 12));
          v24 = *(a2 + 2);
          v25 = v12;
          v23 = *(a2 + 16);
          if (IO80211_io80211isSensitiveInfoAllowed())
          {
            v13 = *(a2 + 24);
          }

          else
          {
            v13 = 0;
          }

          if (IO80211_io80211isSensitiveInfoAllowed())
          {
            v18 = *(a2 + 25);
          }

          else
          {
            v18 = 0;
          }

          if (IO80211_io80211isSensitiveInfoAllowed())
          {
            v19 = *(a2 + 26);
          }

          else
          {
            v19 = 0;
          }

          if (IO80211_io80211isSensitiveInfoAllowed())
          {
            v20 = *(a2 + 27);
          }

          else
          {
            v20 = 0;
          }

          if (IO80211_io80211isSensitiveInfoAllowed())
          {
            v21 = *(a2 + 28);
          }

          else
          {
            v21 = 0;
          }

          if (IO80211_io80211isSensitiveInfoAllowed())
          {
            v22 = *(a2 + 29);
          }

          else
          {
            v22 = 0;
          }

          CCLogStream::logAlert(v27, "[dk] %s@%d:status = %lu %s, reason = %lu %s, flags = 0x%x, authtype = %lu, addr = %02x:%02x:%02x:%02x:%02x:%02x\n", "handleSupplicantEvent", 2720, v9, v26, v11, v25, v24, v23, v13, v18, v19, v20, v21, v22);
          LODWORD(v9) = *(a2 + 8);
        }
      }
    }

    else
    {
      LODWORD(v9) = 0;
    }

    *(*v3 + 640) = mapBcmSupplicantEventToAppleStatus(v9, *(a2 + 12));
    if ((*(a2 + 12) - 15) >= 5)
    {
      v14 = -1;
    }

    else
    {
      v14 = 1005;
    }

    *(*v3 + 642) = v14;
    v15 = *v3;
    v16 = *(*v3 + 640);
    if (!*(*v3 + 640))
    {
      if (*(v15 + 3) != 1)
      {
        goto LABEL_31;
      }

      *(v15 + 3) = 0;
      v16 = *(*v3 + 640);
    }

    if (v16 == 0xFFFF)
    {
      return 0;
    }

LABEL_31:
    AppleBCMWLANJoinAdapter::sendConnectComplete(a1);
    return 0;
  }

  if ((!*(v2 + 72) || (CCLogStream::shouldLogConsole() & 1) == 0) && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109634;
    v29 = 67;
    v30 = 2080;
    v31 = "handleSupplicantEvent";
    v32 = 1024;
    v33 = 2704;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%c [dk] %s@%d:  no event specified\n", buf, 0x18u);
  }

  v8 = 3758097090;
  if (*(*v3 + 72) && CCLogStream::shouldLog())
  {
    AppleBCMWLANJoinAdapter::handleSupplicantEvent(v3);
  }

  return v8;
}

uint64_t AppleBCMWLANJoinAdapter::getBSSInfoAsyncCallback(AppleBCMWLANJoinAdapter *this, uint64_t a2, int a3, uint64_t *a4)
{
  if (a3)
  {
    v6 = (this + 48);
    v5 = *(this + 6);
    if (*(v5 + 72))
    {
      v7 = *(v5 + 72);
      shouldLog = CCLogStream::shouldLog();
      v5 = *v6;
      if (shouldLog)
      {
        AppleBCMWLANJoinAdapter::getBSSInfoAsyncCallback(v5);
        v5 = v21;
      }
    }

    *(v5 + 640) = -1;

    return AppleBCMWLANJoinAdapter::sendConnectComplete(this);
  }

  else
  {
    v10 = *a4;
    v11 = this + 48;
    ChanSpecHandler = AppleBCMWLANCore::getChanSpecHandler(*(*(this + 6) + 56));
    AppleChannelSpec = AppleBCMWLANChanSpec::getAppleChannelSpec(ChanSpecHandler, *(v10 + 76));
    v14 = *(v10 + 8);
    v15 = *(*v11 + 72);
    v16 = (*(**(*v11 + 56) + 1944))();
    v17 = AppleBCMWLANBSSBeacon::fromWLBSSInfo((v10 + 4), AppleChannelSpec, v14, v15, v16);
    if (v17)
    {
      v18 = v17;
      if ((*(*v17 + 472))(v17) == 1 || (*(*v18 + 472))(v18) == 2 || (*(*v18 + 472))(v18) == 16)
      {
        if (*(*v11 + 72) && CCLogStream::shouldLog())
        {
          AppleBCMWLANJoinAdapter::getBSSInfoAsyncCallback(this + 48);
        }

        AppleBCMWLANJoinAdapter::sendConnectComplete(this);
      }

      if (*(*v11 + 1840))
      {
        CurrentBSSAKMs = IO80211BSSBeacon::getCurrentBSSAKMs(v18);
        AppleBCMWLANJoinAdapter::updateTransDisabledMode(this, CurrentBSSAKMs, *(*(this + 6) + 1840));
        *(*(this + 6) + 1840) = 0;
      }

      v20 = *(*v18 + 16);

      return v20(v18);
    }

    else
    {
      return AppleBCMWLANJoinAdapter::getBSSInfoAsyncCallback();
    }
  }
}

uint64_t AppleBCMWLANJoinAdapter::handleDeauthDisassocEvent(uint64_t this, int a2)
{
  if (a2)
  {
    v2 = a2;
  }

  else
  {
    v2 = 12;
  }

  *(*(this + 48) + 640) = v2;
  return AppleBCMWLANJoinAdapter::sendConnectComplete(this);
}

uint64_t AppleBCMWLANJoinAdapter::triggerCC(AppleBCMWLANJoinAdapter *a1, uint64_t a2)
{
  v11 = 0;
  v4 = *(a1 + 6);
  v5 = *(a2 + 16);
  *(v4 + 16) = *a2;
  *(v4 + 32) = v5;
  AppleBCMWLANCore::dumpEventBitField(*(*(a1 + 6) + 56), 0);
  if (!AppleBCMWLANJoinAdapter::collectJoinTimeoutAwdMetrics(a1))
  {
    *(*(a1 + 6) + 2) = 1;
  }

  v6 = *(a1 + 6);
  if (*(v6 + 20) == -528342010)
  {
    ++*(v6 + 8);
  }

  AppleBCMWLANJoinAdapter::collectCCAForJoinTimeout(a1, &v11);
  if ((!*(*(a1 + 6) + 72) || (CCLogStream::shouldLogConsole() & 1) == 0) && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109890;
    v13 = 73;
    v14 = 2080;
    v15 = "triggerCC";
    v16 = 1024;
    v17 = 2899;
    v18 = 1024;
    v19 = v11;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%c [dk] %s@%d: Average CCA %d\n", buf, 0x1Eu);
  }

  v7 = *(a1 + 6);
  if (*(v7 + 72))
  {
    shouldLog = CCLogStream::shouldLog();
    v7 = *(a1 + 6);
    v9 = v11;
    if (shouldLog)
    {
      CCLogStream::logInfo(*(v7 + 72), "[dk] %s@%d:Average CCA %d\n", "triggerCC", 2899, v11);
      v7 = *(a1 + 6);
    }
  }

  else
  {
    v9 = v11;
  }

  CCFaultReporter::reportFault(*(v7 + 80), *(a2 + 16), "/Library/Caches/com.apple.xbs/Sources/AppleBCMWLANV3_driverkit/AppleBCMWLANJoinAdapter.cpp", 0xB55u, "triggerCC", 0, *(a2 + 4), "CCA %u, fStateFlags = 0x%x", v9, *(a2 + 12));
  return 0;
}

uint64_t AppleBCMWLANJoinAdapter::copyJoinTimeoutBlob(AppleBCMWLANJoinAdapter *this, unsigned __int8 *a2, size_t a3)
{
  v6 = 3758097084;
  if (!AppleBCMWLANCore::checkForAWDDataInfoSupport(*(*(this + 6) + 56)))
  {
    return 3758097095;
  }

  if (a3 <= 0x204)
  {
    memcpy(a2, (*(this + 6) + 1324), a3);
    return 0;
  }

  return v6;
}

uint64_t AppleBCMWLANJoinAdapter::logState(AppleBCMWLANJoinAdapter *this, char *a2)
{
  *v13 = 0u;
  v14 = 0u;
  v10 = 32;
  *v11 = 0u;
  memset(v12, 0, sizeof(v12));
  v9 = 37;
  IO80211BssManager::getAssocSSID(*(*(this + 6) + 48), v13, &v10);
  IO80211BssManager::getAssocColocatedNetworkScopeId(*(*(this + 6) + 48), v11, &v9);
  v3 = *(this + 6);
  v4 = *(v3 + 72);
  v5 = *(v3 + 40);
  v7 = *(v3 + 28);
  v8 = *(v3 + 16);
  return IO80211Print();
}

uint64_t *OUTLINED_FUNCTION_0_6(uint64_t a1)
{
  v1 = *(*a1 + 72);
  result = *(*a1 + 56);
  v3 = *result;
  return result;
}

uint64_t *OUTLINED_FUNCTION_1_8(uint64_t a1, unsigned int *a2)
{
  v2 = *(*a1 + 72);
  v3 = *a2;
  result = *(*a1 + 56);
  v5 = *result;
  return result;
}

uint64_t *OUTLINED_FUNCTION_2_5@<X0>(uint64_t a1@<X8>)
{
  result = *(a1 + 56);
  v2 = *result;
  return result;
}

uint64_t *OUTLINED_FUNCTION_3_4(uint64_t a1)
{
  v1 = *(a1 + 72);
  result = *(a1 + 56);
  v3 = *result;
  return result;
}

const char *OUTLINED_FUNCTION_7_5(uint64_t a1, int *a2)
{
  *(v2 - 88) = *(*a1 + 72);
  v4 = *a2;

  return stringFromStatusInEvent(v4, 0);
}

uint64_t OUTLINED_FUNCTION_14_2(uint64_t a1)
{
  *(v2 - 96) = a1;
  v4 = *(v1 + 2);
  v5 = *(v1 + 12);
  v6 = *(v1 + 16);

  return IO80211_io80211isSensitiveInfoAllowed();
}

AppleBCMWLANPowerStateAdapter *AppleBCMWLANPowerStateAdapter::withDriver(AppleBCMWLANPowerStateAdapter *this, AppleBCMWLANCore *a2)
{
  v5 = 0xAAAAAAAAAAAAAAAALL;
  if (OSObjectAllocate(gAppleBCMWLANPowerStateAdapterMetaClass, &v5))
  {
    return 0;
  }

  v3 = v5;
  if (v5 && (AppleBCMWLANPowerStateAdapter::initWithDriver(v5, this) & 1) == 0)
  {
    (*(*v3 + 16))(v3);
    return 0;
  }

  return v3;
}

uint64_t AppleBCMWLANPowerStateAdapter::initWithDriver(AppleBCMWLANPowerStateAdapter *this, AppleBCMWLANCore *a2)
{
  v4 = IOMallocZeroTyped();
  *(this + 5) = v4;
  if (v4)
  {
    *v4 = a2;
    v5 = **(this + 5);
    if (v5)
    {
      *(*(this + 5) + 8) = AppleBCMWLANCore::getCommander(v5);
      if (*(*(this + 5) + 8))
      {
        *(*(this + 5) + 16) = (*(*a2 + 1952))(a2);
        v6 = *(*(this + 5) + 16);
        if (v6)
        {
          (*(*v6 + 8))(v6);
          if (OSObject::init(this))
          {
            *(*(this + 5) + 24) = AppleBCMWLANCore::getPrimaryInterface(**(this + 5));
            *(*(this + 5) + 136) = 0;
            return 1;
          }

          IOLog("AppleBCMWLANPowerStateAdapter super init failied\n");
        }

        else
        {
          IOLog("AppleBCMWLANPowerStateAdapter Failed to init fLogger\n");
        }
      }

      else
      {
        IOLog("AppleBCMWLANPowerStateAdapter commander is null\n");
      }
    }

    else
    {
      IOLog("AppleBCMWLANPowerStateAdapter driver is null\n");
    }
  }

  else
  {
    IOLog("Failed to allocate AppleBCMWLANPowerStateAdapter_IVars\n");
  }

  return 0;
}

void AppleBCMWLANPowerStateAdapter::free(OSObject *this)
{
  v2 = this[1].OSMetaClassBase::__vftable;
  if (v2)
  {
    release = v2->release;
    if (!release || ((*(*release + 16))(v2->release), this[1].release = 0, (v2 = this[1].OSMetaClassBase::__vftable) != 0))
    {
      IOFree(v2, 0x90uLL);
      this[1].OSMetaClassBase::__vftable = 0;
    }
  }

  OSObject::free(this);
}

uint64_t AppleBCMWLANPowerStateAdapter::configureBeaconSOI(AppleBCMWLANPowerStateAdapter *a1, int *a2)
{
  v5 = a2[1];
  v4 = a2[2];
  v6 = *a2;
  if (*(*(a1 + 5) + 16) && CCLogStream::shouldLog())
  {
    CCLogStream::logAlert(*(*(a1 + 5) + 16), "[dk] %s@%d:dtim (%d), beacon interval (%d) ms, Wakeup interval (%d) ms", "configureBeaconSOI", 127, v6, v5, v4);
  }

  if (v4 <= v5)
  {
    AppleBCMWLANPowerStateAdapter::configureDefaultListenInterval(a1);
  }

  else
  {
    AppleBCMWLANPowerStateAdapter::configureExtendedListenInterval(a1, v6, v5, v4);
  }

  AppleBCMWLANPowerStateAdapter::configureBeaconFRTS(a1, a2[4]);
  AppleBCMWLANPowerStateAdapter::configureMulticastBroadcastWaitPeriod(a1, 1000 * a2[5], 1000 * a2[6]);
  return 0;
}

uint64_t AppleBCMWLANPowerStateAdapter::configureExtendedListenInterval(AppleBCMWLANPowerStateAdapter *this, int a2, int a3, unsigned int a4)
{
  v8 = (this + 40);
  v7 = *(this + 5);
  v19 = 0;
  v9 = *(v7 + 8);
  v17 = &v19;
  v18 = 4;
  if (AppleBCMWLANCommander::runIOVarSet(v9, "bcn_li_bcn", &v17, 0, 0) && (*v8)[2] && CCLogStream::shouldLog())
  {
    AppleBCMWLANPowerStateAdapter::configureExtendedListenInterval(v8);
  }

  v10 = 0;
  v11 = a3 * a2;
  do
  {
    ++v10;
    v11 += a3 * a2;
  }

  while (v11 < a4);
  v12 = *v8;
  if ((*v8)[2])
  {
    shouldLog = CCLogStream::shouldLog();
    v12 = *v8;
    if (shouldLog)
    {
      CCLogStream::logAlert(v12[2], "[dk] %s@%d:extendedDTIM (%d)\n", "configureExtendedListenInterval", 160, v10);
      v12 = *v8;
    }
  }

  v19 = v10;
  v14 = v12[1];
  v17 = &v19;
  v18 = 4;
  v15 = AppleBCMWLANCommander::runIOVarSet(v14, "bcn_li_dtim", &v17, 0, 0);
  if (v15 && (*v8)[2] && CCLogStream::shouldLog())
  {
    AppleBCMWLANPowerStateAdapter::configureExtendedListenInterval(v8);
  }

  return v15;
}

uint64_t AppleBCMWLANPowerStateAdapter::configureDefaultListenInterval(AppleBCMWLANPowerStateAdapter *this)
{
  v2 = (this + 40);
  v1 = *(this + 5);
  v13 = 1;
  v3 = *(v1 + 8);
  v11 = &v13;
  v12 = 4;
  v4 = AppleBCMWLANCommander::runIOVarSet(v3, "bcn_li_bcn", &v11, 0, 0);
  v5 = *v2;
  if (v4)
  {
    if (v5[2])
    {
      v6 = v5[2];
      shouldLog = CCLogStream::shouldLog();
      v5 = *v2;
      if (shouldLog)
      {
        AppleBCMWLANPowerStateAdapter::configureDefaultListenInterval(v5, v4, v2, &v11);
        v5 = v11;
      }
    }
  }

  v13 = 0;
  v8 = v5[1];
  v11 = &v13;
  v12 = 4;
  v9 = AppleBCMWLANCommander::runIOVarSet(v8, "bcn_li_dtim", &v11, 0, 0);
  if (v9 && (*v2)[2] && CCLogStream::shouldLog())
  {
    AppleBCMWLANPowerStateAdapter::configureDefaultListenInterval(v2);
  }

  return v9;
}

uint64_t AppleBCMWLANPowerStateAdapter::configureBeaconFRTS(AppleBCMWLANPowerStateAdapter *this, int a2)
{
  v10 = a2;
  v3 = (this + 40);
  v2 = *(this + 5);
  if (v2[2])
  {
    shouldLog = CCLogStream::shouldLog();
    v2 = *v3;
    if (shouldLog)
    {
      CCLogStream::logAlert(v2[2], "[dk] %s@%d:Unicast wait period - %d ms", "configureBeaconFRTS", 196, a2);
      v2 = *v3;
    }
  }

  v6 = v2[1];
  v9[0] = &v10;
  v9[1] = 4;
  v7 = AppleBCMWLANCommander::runIOVarSet(v6, "pm2_bcn_sleep_ret", v9, 0, 0);
  if (v7 && (*v3)[2] && CCLogStream::shouldLog())
  {
    AppleBCMWLANPowerStateAdapter::configureBeaconFRTS(v3, &v10, v7);
  }

  return v7;
}

uint64_t AppleBCMWLANPowerStateAdapter::configureMulticastBroadcastWaitPeriod(AppleBCMWLANPowerStateAdapter *this, int a2, int a3)
{
  v22 = a3;
  v23 = a2;
  v5 = (this + 40);
  v4 = *(this + 5);
  if (v4[2])
  {
    shouldLog = CCLogStream::shouldLog();
    v4 = *v5;
    if (shouldLog)
    {
      CCLogStream::logAlert(v4[2], "[dk] %s@%d:wait_period %u moredata_wait_period %u\n", "configureMulticastBroadcastWaitPeriod", 223, a2, a3);
      v4 = *v5;
    }
  }

  v9 = (*(**v4 + 88))();
  if ((*(*v9 + 136))(v9))
  {
    v19 = this;
    v20 = AppleBCMWLANPowerStateAdapter::handleMulticastBroadcastWaitPeriodConfigAsyncCallBack;
    v21 = 0;
    v10 = AppleBCMWLANCommander::sendIOVarSet(*(*(this + 5) + 8), "pm_bcmc_moredata_wait");
    v11 = v10 == -469794537 || v10 == 0;
    if (!v11 && (*v5)[2] && CCLogStream::shouldLog())
    {
      AppleBCMWLANPowerStateAdapter::configureMulticastBroadcastWaitPeriod(v5);
    }

    v12 = AppleBCMWLANCommander::sendIOVarSet((*v5)[1], "pm_bcmc_wait");
  }

  else
  {
    v13 = (*v5)[1];
    v19 = &v22;
    v20 = 4;
    v14 = AppleBCMWLANCommander::runIOVarSet(v13, "pm_bcmc_moredata_wait", &v19, 0, 0);
    v15 = v14 == -469794537 || v14 == 0;
    if (!v15 && (*v5)[2] && CCLogStream::shouldLog())
    {
      AppleBCMWLANPowerStateAdapter::configureMulticastBroadcastWaitPeriod(v5);
    }

    v16 = (*v5)[1];
    v19 = &v23;
    v20 = 4;
    v12 = AppleBCMWLANCommander::runIOVarSet(v16, "pm_bcmc_wait", &v19, 0, 0);
  }

  v17 = v12;
  if (v12 && (*v5)[2] && CCLogStream::shouldLog())
  {
    AppleBCMWLANPowerStateAdapter::configureMulticastBroadcastWaitPeriod(v5);
  }

  return v17;
}

uint64_t AppleBCMWLANPowerStateAdapter::handleMulticastBroadcastWaitPeriodConfigAsyncCallBack(uint64_t result, uint64_t a2, int a3)
{
  if (a3 != -469794537 && a3 != 0)
  {
    v4 = (result + 40);
    result = *(*(result + 40) + 16);
    if (result)
    {
      result = CCLogStream::shouldLog();
      if (result)
      {
        return AppleBCMWLANPowerStateAdapter::handleMulticastBroadcastWaitPeriodConfigAsyncCallBack(v4);
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANPowerStateAdapter::configureDataSOI(AppleBCMWLANPowerStateAdapter *a1, _DWORD *a2)
{
  v4 = a1 + 40;
  if (*(*(a1 + 5) + 16) && CCLogStream::shouldLog())
  {
    AppleBCMWLANPowerStateAdapter::configureDataSOI(v4, a2);
  }

  if (a2[3] == 1)
  {
    v5 = a2[1];

    return AppleBCMWLANPowerStateAdapter::disableDFRTSAndSetFRTS(a1, v5);
  }

  else
  {

    return AppleBCMWLANPowerStateAdapter::configureDFRTSLogicAnd(a1, a2);
  }
}

uint64_t AppleBCMWLANPowerStateAdapter::disableDFRTSAndSetFRTS(AppleBCMWLANPowerStateAdapter *this, unsigned int a2)
{
  v9 = a2;
  AppleBCMWLANPowerStateAdapter::disableDFRTS(this);
  v4 = *(this + 5);
  v3 = (this + 40);
  v5 = *(v4 + 8);
  v8[0] = &v9;
  v8[1] = 4;
  v6 = AppleBCMWLANCommander::runIOVarSet(v5, "pm2_sleep_ret", v8, 0, 0);
  if (v6 && (*v3)[2] && CCLogStream::shouldLog())
  {
    AppleBCMWLANPowerStateAdapter::disableDFRTSAndSetFRTS(v3, &v9);
  }

  return v6;
}

uint64_t AppleBCMWLANPowerStateAdapter::configureDFRTSLogicAnd(uint64_t a1, _DWORD *a2)
{
  v5 = a2[1];
  v6 = a2[2];
  v7 = a2[3];
  v2 = (a1 + 40);
  v3 = AppleBCMWLANCommander::sendIOVarSet(*(*(a1 + 40) + 8), "pm2_sleep_ret_ext");
  if (v3 && (*v2)[2] && CCLogStream::shouldLog())
  {
    AppleBCMWLANPowerStateAdapter::configureDFRTSLogicAnd(v2);
  }

  return v3;
}

uint64_t AppleBCMWLANPowerStateAdapter::handleDFRTSConfigAsyncCallBack(uint64_t result, uint64_t a2, int a3)
{
  if (a3)
  {
    v3 = (result + 40);
    result = *(*(result + 40) + 16);
    if (result)
    {
      result = CCLogStream::shouldLog();
      if (result)
      {
        return AppleBCMWLANPowerStateAdapter::handleDFRTSConfigAsyncCallBack(v3);
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANPowerStateAdapter::disableDFRTS(AppleBCMWLANPowerStateAdapter *this)
{
  v1 = (this + 40);
  v2 = AppleBCMWLANCommander::sendIOVarSet(*(*(this + 5) + 8), "pm2_sleep_ret_ext");
  if (v2 && (*v1)[2] && CCLogStream::shouldLog())
  {
    AppleBCMWLANPowerStateAdapter::disableDFRTS(v1);
  }

  return v2;
}

uint64_t AppleBCMWLANPowerStateAdapter::configureExcessPMAlert(AppleBCMWLANPowerStateAdapter *a1, uint64_t a2)
{
  v4 = *(a2 + 4);
  v5 = *(a2 + 8) / 0x3E8u;
  if (*(*(a1 + 5) + 16) && CCLogStream::shouldLog())
  {
    CCLogStream::logAlert(*(*(a1 + 5) + 16), "[dk] %s@%d:PM alert monitoring period - %d sec, percent - %d %%", "configureExcessPMAlert", 363, v5, v4);
  }

  if (*a2)
  {
    v6 = v5;
    v7 = v4;
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  return AppleBCMWLANPowerStateAdapter::setExcessPMAlertParams(a1, v6, v7);
}

uint64_t AppleBCMWLANPowerStateAdapter::setExcessPMAlertParams(AppleBCMWLANPowerStateAdapter *this, int a2, int a3)
{
  v18 = a2;
  v4 = (this + 40);
  v5 = *(*(this + 5) + 8);
  v16 = &v18;
  v17 = 4;
  v6 = AppleBCMWLANCommander::runIOVarSet(v5, "excess_pm_period", &v16, 0, 0);
  v7 = *v4;
  if (v6)
  {
    v8 = v6;
    if (v7[2])
    {
      shouldLog = CCLogStream::shouldLog();
      v7 = *v4;
      if (shouldLog)
      {
        v13 = v7[2];
        v14 = v18;
        v15 = (*(**v7 + 112))(*v7, v8);
        CCLogStream::logAlert(v13, "[dk] %s@%d:Failed to set excess_pm_period to %d : ret %x: %s\n", "setExcessPMAlertParams", 384, v14, v8, v15);
        v7 = *v4;
      }
    }
  }

  v18 = a3;
  v10 = v7[1];
  v16 = &v18;
  v17 = 4;
  v11 = AppleBCMWLANCommander::runIOVarSet(v10, "excess_pm_percent", &v16, 0, 0);
  if (v11 && (*v4)[2] && CCLogStream::shouldLog())
  {
    AppleBCMWLANPowerStateAdapter::setExcessPMAlertParams(v4, &v18, v11);
  }

  return v11;
}

uint64_t AppleBCMWLANPowerStateAdapter::configureRoamScanForAssociatedSleep(AppleBCMWLANPowerStateAdapter *a1, uint64_t a2, int a3)
{
  if (*a2)
  {
    v5 = *(a2 + 4);
  }

  else
  {
    v5 = -1;
  }

  if (*(*(a1 + 5) + 16) && CCLogStream::shouldLog())
  {
    CCLogStream::logAlert(*(*(a1 + 5) + 16), "[dk] %s@%d:Roam scan quota - %d ms", "configureRoamScanForAssociatedSleep", 408, v5);
  }

  if (a3)
  {

    return AppleBCMWLANPowerStateAdapter::configureRoamScanQuota(a1, v5);
  }

  else
  {

    return AppleBCMWLANPowerStateAdapter::unconfigureRoamScanQuota(a1);
  }
}

uint64_t AppleBCMWLANPowerStateAdapter::configureRoamScanQuota(AppleBCMWLANPowerStateAdapter *this, unsigned int a2)
{
  if (a2 <= 1)
  {
    v3 = 1;
  }

  else
  {
    v3 = a2;
  }

  v5 = *(this + 5);
  v4 = (this + 40);
  v10[0] = -1;
  v10[1] = v3;
  v6 = *(v5 + 8);
  v9[0] = v10;
  v9[1] = 8;
  v7 = AppleBCMWLANCommander::runIOVarSet(v6, "pfn_roam_alert_thresh", v9, 0, 0);
  if (v7 && (*v4)[2] && CCLogStream::shouldLog())
  {
    AppleBCMWLANPowerStateAdapter::configureRoamScanQuota(v4, v7, a2);
  }

  return v7;
}

uint64_t AppleBCMWLANPowerStateAdapter::unconfigureRoamScanQuota(AppleBCMWLANPowerStateAdapter *this)
{
  v1 = this + 40;
  v2 = *(*(this + 5) + 8);
  v5[0] = &v6;
  v5[1] = 8;
  v6 = 0;
  v3 = AppleBCMWLANCommander::runIOVarSet(v2, "pfn_roam_alert_thresh", v5, 0, 0);
  if (v3 && *(*v1 + 16) && CCLogStream::shouldLog())
  {
    AppleBCMWLANPowerStateAdapter::unconfigureRoamScanQuota(v1);
  }

  return v3;
}

uint64_t *OUTLINED_FUNCTION_0_7(uint64_t ***a1)
{
  v1 = (*a1)[2];
  result = **a1;
  v3 = *result;
  return result;
}

uint64_t AppleBCMWLANLowLatencyInterface::init(AppleBCMWLANLowLatencyInterface *this)
{
  if (!AppleBCMWLANSkywalkInterface::init(this))
  {
    return 0;
  }

  if (!*(this + 20))
  {
    v2 = IOMallocZeroTyped();
    *(this + 20) = v2;
    if (!v2)
    {
      return 0;
    }
  }

  v3 = 1;
  IO80211SkywalkInterface::setLowLatencyEnabled(this, 1);
  return v3;
}

uint64_t AppleBCMWLANLowLatencyInterface::free(AppleBCMWLANLowLatencyInterface *this)
{
  v2 = *(this + 20);
  if (v2)
  {
    IOFree(v2, 8uLL);
    *(this + 20) = 0;
  }

  return AppleBCMWLANSkywalkInterface::free(this);
}

uint64_t AppleBCMWLANLowLatencyInterface::start(AppleBCMWLANLowLatencyInterface *this, IOService *anObject)
{
  v3 = OSMetaClassBase::safeMetaCast(anObject, gAppleBCMWLANCoreMetaClass);
  v4 = *(*this + 3064);

  return v4(this, v3, 0);
}

uint64_t non-virtual thunk toAppleBCMWLANLowLatencyInterface::start(AppleBCMWLANLowLatencyInterface *this, IOService *anObject)
{
  v3 = OSMetaClassBase::safeMetaCast(anObject, gAppleBCMWLANCoreMetaClass);
  v4 = *(*(this - 6) + 3064);

  return v4(this - 48, v3, 0);
}

BOOL AppleBCMWLANLowLatencyInterface::start(IO80211SkywalkInterface *a1, IOService *anObject)
{
  if (anObject)
  {
    v4 = anObject[1].OSObject::OSObjectInterface::__vftable;
    if (LOBYTE(v4[889].release) == 1 && LODWORD(v4[889].isEqualTo) == 2)
    {
      IO80211SkywalkInterface::setInitMacAddress(a1, &v4[890]);
    }
  }

  return AppleBCMWLANSkywalkInterface::start(a1, anObject);
}

uint64_t AppleBCMWLANLowLatencyInterface::setInterfaceEnable(uint64_t this, int a2)
{
  IO80211SkywalkInterface::validateDispatchQueue(this);
  if ((*(*this + 1088))(this))
  {
    (*(*this + 1088))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANLowLatencyInterface::setInterfaceEnable(this, this & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000, a2);
    }
  }

  result = AppleBCMWLANSkywalkInterface::setInterfaceEnable(this, a2);
  if (a2)
  {
    v5 = (*(*this + 128))(this, 3, 128);
    (*(*this + 1464))(this, 2, 1, 0, 0, 0);
    return v5;
  }

  return result;
}

uint64_t AppleBCMWLANLowLatencyInterface::setMacAddress(IO80211SkywalkInterface *a1)
{
  IO80211SkywalkInterface::validateDispatchQueue(a1);
  v2 = (*(*a1 + 728))(a1);
  v3 = *AppleBCMWLANCore::getBus(v2);
  v4 = (*(v3 + 752))();
  v5 = OSMetaClassBase::safeMetaCast(v4, gAppleBCMWLANBusSkywalkMetaClass);
  if (AppleBCMWLANSkywalkInterface::isEnabled(a1))
  {
    (v5->__vftable[1].Dispatch)(v5, a1);
    (v5->__vftable[1].isEqualTo)(v5, a1);
  }

  return 0;
}

uint64_t AppleBCMWLANLowLatencyInterface::logTxPacket(uint64_t a1, IO80211NetworkPacket *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = (*(*a2 + 480))(a2);
  v11 = v10 + IO80211NetworkPacket::getHeadroom(a2);
  *(a3 + 40) = (*(v11 + 63) >> 4) & 8;
  *(a3 + 28) = bswap32(*(v11 + 64)) >> 16;

  return IO80211InfraInterface::logTxPacket(a1, a2, a3, a4, a5);
}

uint64_t AppleBCMWLANLowLatencyInterface::inputPacket(uint64_t a1, IO80211NetworkPacket *a2, uint64_t a3, uint64_t a4)
{
  v8 = (*(*a2 + 480))(a2);
  *(a3 + 34) = bswap32(*(v8 + IO80211NetworkPacket::getHeadroom(a2) + 64)) >> 16;

  return IO80211InfraInterface::inputPacket(a1, a2, a3, a4, 0, 0);
}

AppleBCMWLAN11beAdapter *AppleBCMWLAN11beAdapter::withDriver(AppleBCMWLAN11beAdapter *this, AppleBCMWLANCore *a2)
{
  v5 = 0xAAAAAAAAAAAAAAAALL;
  if (OSObjectAllocate(gAppleBCMWLAN11beAdapterMetaClass, &v5))
  {
    return 0;
  }

  v3 = v5;
  if (v5 && (AppleBCMWLAN11beAdapter::initWithDriver(v5, this) & 1) == 0)
  {
    (*(*v3 + 16))(v3);
    return 0;
  }

  return v3;
}

uint64_t AppleBCMWLAN11beAdapter::initWithDriver(OSObject *this, AppleBCMWLANCore *a2)
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
      if (this[1].retain)
      {
        this[1].release = (*(*a2 + 1952))(a2);
        release = this[1].release;
        if (release)
        {
          (*(*release + 8))(release);
          if (OSObject::init(this))
          {
            return 1;
          }

          IOLog("AppleBCMWLAN11beAdapter super init failied\n");
        }

        else
        {
          IOLog("AppleBCMWLAN11beAdapter Failed to init fLogger\n");
        }
      }

      else
      {
        IOLog("AppleBCMWLAN11beAdapter commander is null\n");
      }
    }

    else
    {
      IOLog("AppleBCMWLAN11beAdapter driver is null\n");
    }
  }

  else
  {
    IOLog("Failed to allocate AppleBCMWLAN11beAdapter_IVars\n");
  }

  return 0;
}

void AppleBCMWLAN11beAdapter::free(OSObject *this)
{
  v2 = this[1].OSMetaClassBase::__vftable;
  if (v2)
  {
    release = v2->release;
    if (!release || ((*(*release + 16))(v2->release), this[1].release = 0, (v2 = this[1].OSMetaClassBase::__vftable) != 0))
    {
      IOFree(v2, 0x20uLL);
      this[1].OSMetaClassBase::__vftable = 0;
    }
  }

  OSObject::free(this);
}

uint64_t AppleBCMWLAN11beAdapter::setupInitConfig(AppleBCMWLAN11beAdapter *this)
{
  AppleBCMWLAN11beAdapter::configureMloPref(this);
  AppleBCMWLAN11beAdapter::setMultilinkActiveMode(this, 3);

  return AppleBCMWLAN11beAdapter::configureMloFeaturesInit(this);
}

uint64_t AppleBCMWLAN11beAdapter::configureMloPref(AppleBCMWLAN11beAdapter *this)
{
  v7 = 0x1400010014000BLL;
  v8 = 3;
  v9 = 257;
  v10 = 5;
  v2 = (this + 40);
  v1 = *(this + 5);
  v11 = 0;
  v12 = 0;
  v3 = *(v1 + 8);
  v6[0] = &v7;
  v6[1] = 24;
  v4 = AppleBCMWLANCommander::runIOVarSet(v3, "mlo", v6, 0, 0);
  if ((*v2)[2] && CCLogStream::shouldLog())
  {
    AppleBCMWLAN11beAdapter::configureMloPref(v2, v4);
  }

  return v4;
}

uint64_t AppleBCMWLAN11beAdapter::setMultilinkActiveMode(AppleBCMWLAN11beAdapter *this, int a2)
{
  v4 = (this + 40);
  v3 = *(this + 5);
  v9[0] = 65543;
  v9[1] = a2;
  v5 = *(v3 + 8);
  v8[0] = v9;
  v8[1] = 8;
  v6 = AppleBCMWLANCommander::runIOVarSet(v5, "mlo", v8, 0, 0);
  if ((*v4)[2] && CCLogStream::shouldLog())
  {
    AppleBCMWLAN11beAdapter::setMultilinkActiveMode(v4, v6, a2);
  }

  return v6;
}

uint64_t AppleBCMWLAN11beAdapter::configureMloFeaturesInit(AppleBCMWLAN11beAdapter *this)
{
  v6 = 0xC0001000C000DLL;
  v7 = 0x80000023FLL;
  v1 = (this + 40);
  v2 = *(*(this + 5) + 8);
  v5[0] = &v6;
  v5[1] = 16;
  v3 = AppleBCMWLANCommander::runIOVarSet(v2, "mlo", v5, 0, 0);
  if ((*v1)[2] && CCLogStream::shouldLog())
  {
    AppleBCMWLAN11beAdapter::configureMloFeaturesInit(v1, &v7, &v7 + 4, v3);
  }

  return v3;
}

uint64_t AppleBCMWLAN11beAdapter::setupJoinConfig(uint64_t a1, int a2, uint64_t a3, int a4)
{
  if (a2)
  {
    v7 = 3;
  }

  else
  {
    v7 = 0;
  }

  result = *(*(a1 + 40) + 16);
  if (result && (result = CCLogStream::shouldLog(), result))
  {
    result = CCLogStream::logAlert(*(*(a1 + 40) + 16), "[dk] %s@%d:MLO Enabled=<%d> numberOfLinks<%d>-><%d> force=%d\n", "setupJoinConfig", 161, a2, *(*(a1 + 40) + 24), v7, a4);
    if ((a4 & 1) == 0)
    {
LABEL_7:
      if (v7 == *(*(a1 + 40) + 24))
      {
        return result;
      }
    }
  }

  else if ((a4 & 1) == 0)
  {
    goto LABEL_7;
  }

  result = AppleBCMWLAN11beAdapter::configureMlo(a1, v7, a3);
  *(*(a1 + 40) + 24) = v7;
  return result;
}

uint64_t AppleBCMWLAN11beAdapter::disableMlo(AppleBCMWLAN11beAdapter *this, ether_addr *a2)
{
  v5 = 0;
  v4 = 0;
  v6 = 0;
  v3 = *a2;
  return AppleBCMWLAN11beAdapter::setupJoinConfig(this, 0, &v3, 0);
}

uint64_t AppleBCMWLAN11beAdapter::configureMlo(uint64_t a1, int a2, uint64_t a3)
{
  v6 = 8 * a2;
  v7 = (8 * a2 + 20) & 0xFFFC;
  v8 = IOMallocZeroData();
  if (!v8)
  {
    AppleBCMWLAN11beAdapter::configureMlo();
  }

  v9 = v8;
  *v8 = 1;
  *(v8 + 2) = v6 + 16;
  *(v8 + 4) = 1;
  *(v8 + 6) = v6 + 16;
  *(v8 + 8) = 0;
  *(v8 + 12) = a2;
  *(v8 + 13) = 2;
  v10 = *(a3 + 4);
  *(v8 + 14) = *a3;
  v11 = (v8 + 14);
  *(v8 + 18) = v10;
  if (a2)
  {
    v12 = 0;
    v13 = v8 + 20;
    v14 = (a3 + 6);
    do
    {
      v15 = *v14;
      *(v13 + 4) = *(v14 + 2);
      *v13 = v15;
      if (*(*(a1 + 40) + 16) && CCLogStream::shouldLog())
      {
        AppleBCMWLAN11beAdapter::configureMlo(a1 + 40, v13, v12);
      }

      ++v12;
      v13 += 8;
      v14 = (v14 + 6);
    }

    while (a2 != v12);
  }

  v16 = *(*(a1 + 40) + 8);
  v28[0] = v9;
  v28[1] = v7;
  v17 = AppleBCMWLANCommander::runIOVarSet(v16, "mlo", v28, 0, 0);
  if (*(*(a1 + 40) + 16) && CCLogStream::shouldLog())
  {
    v19 = *(a1 + 40);
    v27 = v19[2];
    v20 = (*(**v19 + 112))(*v19, v17);
    if (IO80211_io80211isSensitiveInfoAllowed())
    {
      v21 = *v11;
    }

    else
    {
      v21 = 0;
    }

    if (IO80211_io80211isSensitiveInfoAllowed())
    {
      v22 = v9[15];
    }

    else
    {
      v22 = 0;
    }

    if (IO80211_io80211isSensitiveInfoAllowed())
    {
      v23 = v9[16];
    }

    else
    {
      v23 = 0;
    }

    if (IO80211_io80211isSensitiveInfoAllowed())
    {
      v24 = v9[17];
    }

    else
    {
      v24 = 0;
    }

    if (IO80211_io80211isSensitiveInfoAllowed())
    {
      v25 = v9[18];
    }

    else
    {
      v25 = 0;
    }

    if (IO80211_io80211isSensitiveInfoAllowed())
    {
      v26 = v9[19];
    }

    else
    {
      v26 = 0;
    }

    CCLogStream::logAlert(v27, "[dk] %s@%d:configureMlo %d[%s] numberOfLinks=<%d> %02x:%02x:%02x:%02x:%02x:%02x\n", "configureMlo", 203, v17, v20, a2, v21, v22, v23, v24, v25, v26);
  }

  IOFreeData();
  return v17;
}

uint64_t AppleBCMWLAN11beAdapter::dumpMloStatus(AppleBCMWLAN11beAdapter *this, char *a2)
{
  v56 = 2;
  v2 = (this + 40);
  v3 = AppleBCMWLANCommander::getMaxCmdRxPayload(*(*(this + 5) + 8)) - 4;
  v4 = IOMallocZeroData();
  if (!v4)
  {
    AppleBCMWLAN11beAdapter::dumpMloStatus();
  }

  v5 = v4;
  v6 = v3 | (v3 << 32) | 0x10000;
  if (v3)
  {
    v7 = v4;
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  v55[0] = v7;
  v55[1] = v6;
  v8 = (*v2)[1];
  v54[0] = &v56;
  v54[1] = 4;
  v9 = AppleBCMWLANCommander::runIOVarGet(v8, "mlo", v54, v55, 0);
  v32 = v9;
  if (v9)
  {
    AppleBCMWLAN11beAdapter::dumpMloStatus(v2, v9);
    goto LABEL_27;
  }

  if (v5[11])
  {
    v10 = 0;
  }

  else
  {
    v11 = (*v2)[2];
    v12 = IO80211Print();
    if (!v5[11])
    {
      goto LABEL_27;
    }

    v10 = v12;
  }

  v13 = 0;
  v36 = v2;
  v14 = 12;
  v35 = v5;
  do
  {
    v40 = v10;
    v15 = &v5[v14];
    v42 = v15[2];
    v43 = v15[3];
    v44 = v15[4];
    v45 = v15[5];
    v46 = v15[6];
    v16 = v15[7];
    v17 = *(v15 + 4);
    v18 = v14 + 12;
    v47 = v5[v18];
    v48 = v5[v18 + 1];
    v49 = v5[v18 + 2];
    v50 = v5[v18 + 3];
    v51 = v5[v18 + 4];
    v52 = v5[v18 + 5];
    v19 = v5[v18 + 6];
    v20 = v5[v18 + 7];
    v21 = v5[v18 + 8];
    v22 = v5[v18 + 9];
    v23 = v5[v18 + 10];
    v24 = v5[v18 + 11];
    v53 = v14 + 24;
    ChanSpecHandler = AppleBCMWLANCore::getChanSpecHandler(**v2);
    v41 = v13;
    AppleBCMWLANChanSpec::getAppleChannelSpec(ChanSpecHandler, v17);
    if (v13)
    {
      v26 = v40;
    }

    else
    {
      v37 = v5[11];
      v38 = (*v2)[2];
      if (IO80211_io80211isSensitiveInfoAllowed())
      {
        v34 = v5[4];
      }

      if (IO80211_io80211isSensitiveInfoAllowed())
      {
        v27 = v5[5];
      }

      if (IO80211_io80211isSensitiveInfoAllowed())
      {
        v28 = v5[6];
      }

      if (IO80211_io80211isSensitiveInfoAllowed())
      {
        v33 = v5[7];
      }

      if (IO80211_io80211isSensitiveInfoAllowed())
      {
        v29 = v5[8];
      }

      if (IO80211_io80211isSensitiveInfoAllowed())
      {
        v30 = v5[9];
      }

      IO80211_io80211isSensitiveInfoAllowed();
      IO80211_io80211isSensitiveInfoAllowed();
      IO80211_io80211isSensitiveInfoAllowed();
      IO80211_io80211isSensitiveInfoAllowed();
      IO80211_io80211isSensitiveInfoAllowed();
      IO80211_io80211isSensitiveInfoAllowed();
      v26 = v40 + IO80211Print();
      v2 = v36;
    }

    v39 = (*v2)[2];
    IO80211_io80211isSensitiveInfoAllowed();
    IO80211_io80211isSensitiveInfoAllowed();
    IO80211_io80211isSensitiveInfoAllowed();
    IO80211_io80211isSensitiveInfoAllowed();
    IO80211_io80211isSensitiveInfoAllowed();
    IO80211_io80211isSensitiveInfoAllowed();
    IO80211_io80211isSensitiveInfoAllowed();
    IO80211_io80211isSensitiveInfoAllowed();
    IO80211_io80211isSensitiveInfoAllowed();
    IO80211_io80211isSensitiveInfoAllowed();
    IO80211_io80211isSensitiveInfoAllowed();
    IO80211_io80211isSensitiveInfoAllowed();
    v2 = v36;
    v10 = v26 + IO80211Print();
    ++v13;
    v5 = v35;
    v14 = v53;
  }

  while (v41 + 1 < v35[11]);
LABEL_27:
  IOFreeData();
  return v32;
}

uint64_t AppleBCMWLAN11beAdapter::getMloContext(uint64_t a1, uint64_t a2)
{
  v25 = 2;
  v3 = (a1 + 40);
  v4 = AppleBCMWLANCommander::getMaxCmdRxPayload(*(*(a1 + 40) + 8)) - 4;
  v5 = IOMallocZeroData();
  if (!v5)
  {
    AppleBCMWLAN11beAdapter::getMloContext();
  }

  v6 = v5;
  v7 = v4 | (v4 << 32) | 0x10000;
  if (v4)
  {
    v8 = v5;
  }

  else
  {
    v7 = 0;
    v8 = 0;
  }

  v24[0] = v8;
  v24[1] = v7;
  v9 = (*v3)[1];
  v26 = &v25;
  v27 = 4;
  v10 = AppleBCMWLANCommander::runIOVarGet(v9, "mlo", &v26, v24, 0);
  if (v10)
  {
    AppleBCMWLAN11beAdapter::getMloContext(v3, v10);
  }

  else
  {
    v11 = *(v6 + 11);
    if (v11 >= 3)
    {
      v12 = 3;
    }

    else
    {
      v12 = *(v6 + 11);
    }

    *(a2 + 54) = v12;
    v13 = *(v6 + 4);
    *(a2 + 46) = *(v6 + 8);
    *(a2 + 42) = v13;
    if (v11)
    {
      v14 = 0;
      v15 = 12;
      v16 = a2;
      do
      {
        v17 = v6 + v15;
        v18 = *v17;
        v19 = *(v17 + 8);
        v20 = v6 + v15 + 12;
        v26 = *v20;
        LODWORD(v27) = *(v20 + 8);
        if (!v14)
        {
          v21 = *(v20 + 6);
          *(a2 + 52) = *(v20 + 10);
          *(a2 + 48) = v21;
        }

        v15 += 24;
        ChanSpecHandler = AppleBCMWLANCore::getChanSpecHandler(**v3);
        *v16 = AppleBCMWLANChanSpec::getAppleChannelSpec(ChanSpecHandler, v19);
        *(v16 + 6) = HIWORD(v18);
        *(v16 + 2) = v18 >> 16;
        *(v16 + 8) = v26;
        *(v16 + 12) = WORD2(v26);
        ++v14;
        v16 += 14;
      }

      while (v14 < *(a2 + 54));
    }
  }

  IOFreeData();
  return v10;
}

uint64_t AppleBCMWLAN11beAdapter::getMloStatus(AppleBCMWLANCore ***this)
{
  v61 = 2;
  v63 = 0;
  v62 = 0;
  v1 = (this + 5);
  LQM = AppleBCMWLANCore::getLQM(*this[5]);
  v2 = AppleBCMWLANCommander::getMaxCmdRxPayload((*v1)[1]) - 4;
  v3 = IOMallocZeroData();
  if (!v3)
  {
    AppleBCMWLAN11beAdapter::getMloStatus();
  }

  v4 = v3;
  v5 = v2 | (v2 << 32) | 0x10000;
  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  v60[0] = v6;
  v60[1] = v5;
  v7 = (*v1)[1];
  v59[0] = &v61;
  v59[1] = 4;
  v8 = AppleBCMWLANCommander::runIOVarGet(v7, "mlo", v59, v60, 0);
  if (v8)
  {
    AppleBCMWLAN11beAdapter::getMloStatus(v1, v8, v59);
    v41 = LODWORD(v59[0]);
  }

  else if (LQM)
  {
    if ((*v1)[2] && CCLogStream::shouldLog())
    {
      AppleBCMWLAN11beAdapter::getMloStatus(v1, v4);
    }

    AppleBCMWLANLQM::updateNumOfMloLinks(LQM, *(v4 + 11));
    if (*(v4 + 11))
    {
      v56 = v1;
      v9 = 0;
      v10 = 12;
      do
      {
        v11 = (v4 + v10);
        v55 = *v11;
        v12 = v11[1];
        v13 = v11[2];
        v14 = v11[3];
        v15 = v11[4];
        v16 = v11[5];
        v17 = v11[6];
        v18 = v11[7];
        v19 = *(v11 + 4);
        v20 = v10 + 12;
        v21 = *(v4 + v20);
        v63 = *(v4 + v20 + 8);
        v62 = v21;
        v10 += 24;
        if ((*v56)[2])
        {
          v58 = v12;
          shouldLog = CCLogStream::shouldLog();
          v12 = v58;
          if (shouldLog)
          {
            v54 = (*v56)[2];
            if (IO80211_io80211isSensitiveInfoAllowed())
            {
              v23 = v13;
            }

            else
            {
              v23 = 0;
            }

            v53 = v23;
            if (IO80211_io80211isSensitiveInfoAllowed())
            {
              v24 = v14;
            }

            else
            {
              v24 = 0;
            }

            v52 = v24;
            if (IO80211_io80211isSensitiveInfoAllowed())
            {
              v25 = v15;
            }

            else
            {
              v25 = 0;
            }

            v51 = v25;
            if (IO80211_io80211isSensitiveInfoAllowed())
            {
              v26 = v16;
            }

            else
            {
              v26 = 0;
            }

            v50 = v26;
            if (IO80211_io80211isSensitiveInfoAllowed())
            {
              v27 = v17;
            }

            else
            {
              v27 = 0;
            }

            v49 = v27;
            if (IO80211_io80211isSensitiveInfoAllowed())
            {
              v28 = v18;
            }

            else
            {
              v28 = 0;
            }

            v48 = v28;
            if (IO80211_io80211isSensitiveInfoAllowed())
            {
              v29 = v62;
            }

            else
            {
              v29 = 0;
            }

            v47 = v29;
            if (IO80211_io80211isSensitiveInfoAllowed())
            {
              v30 = BYTE1(v62);
            }

            else
            {
              v30 = 0;
            }

            v46 = v30;
            if (IO80211_io80211isSensitiveInfoAllowed())
            {
              v31 = BYTE2(v62);
            }

            else
            {
              v31 = 0;
            }

            v45 = v31;
            if (IO80211_io80211isSensitiveInfoAllowed())
            {
              v32 = BYTE3(v62);
            }

            else
            {
              v32 = 0;
            }

            v44 = v32;
            if (IO80211_io80211isSensitiveInfoAllowed())
            {
              v33 = BYTE4(v62);
            }

            else
            {
              v33 = 0;
            }

            v43 = v33;
            if (IO80211_io80211isSensitiveInfoAllowed())
            {
              v34 = BYTE5(v62);
            }

            else
            {
              v34 = 0;
            }

            if (IO80211_io80211isSensitiveInfoAllowed())
            {
              v35 = BYTE6(v62);
            }

            else
            {
              v35 = 0;
            }

            if (IO80211_io80211isSensitiveInfoAllowed())
            {
              v36 = HIBYTE(v62);
            }

            else
            {
              v36 = 0;
            }

            if (IO80211_io80211isSensitiveInfoAllowed())
            {
              v37 = v63;
            }

            else
            {
              v37 = 0;
            }

            if (IO80211_io80211isSensitiveInfoAllowed())
            {
              v38 = BYTE1(v63);
            }

            else
            {
              v38 = 0;
            }

            if (IO80211_io80211isSensitiveInfoAllowed())
            {
              v39 = BYTE2(v63);
            }

            else
            {
              v39 = 0;
            }

            if (IO80211_io80211isSensitiveInfoAllowed())
            {
              v40 = HIBYTE(v63);
            }

            else
            {
              v40 = 0;
            }

            CCLogStream::logAlert(v54, "[dk] %s@%d:[%d:%d]=link_id=<%d> link_idx<%d>  local link adrr =%02x:%02x:%02x:%02x:%02x:%02x, peer link adrr =%02x:%02x:%02x:%02x:%02x:%02x, peer mld adrr =%02x:%02x:%02x:%02x:%02x:%02x\n", "getMloStatus", 375, v9, v10, v55, v58, v53, v52, v51, v50, v49, v48, v47, v46, v45, v44, v43, v34, v35, v36, v37, v38, v39, v40);
            v12 = v58;
          }
        }

        AppleBCMWLANLQM::storeMloLinkInfo(LQM, v12, v19, &v62);
        ++v9;
      }

      while (v9 < *(v4 + 11));
      v41 = 0;
    }

    else
    {
      v41 = 0;
    }
  }

  else
  {
    v41 = 3758097084;
  }

  IOFreeData();
  return v41;
}

uint64_t AppleBCMWLAN11beAdapter::configureMloFeatures(AppleBCMWLANCore ***this, int a2)
{
  LQM = AppleBCMWLANCore::getLQM(*this[5]);
  if (a2)
  {
    v5 = 18;
  }

  else
  {
    v5 = 0;
  }

  v16 = 0xC0001000C000DLL;
  v17 = 54;
  v18 = v5;
  v6 = this[5][1];
  v15[0] = &v16;
  v15[1] = 16;
  v7 = AppleBCMWLANCommander::runIOVarSet(v6, "mlo", v15, 0, 0);
  if (this[5][2] && CCLogStream::shouldLog())
  {
    v9 = this[5];
    v10 = v9[2];
    v11 = v17;
    v12 = v18;
    v13 = (*(**v9 + 112))(*v9, v7);
    v14 = "FALSE";
    if (a2)
    {
      v14 = "TRUE";
    }

    CCLogStream::logAlert(v10, "[dk] %s@%d: mloFeaturesConfig_t mask:0x%x enab:0x%x  --> %d[%s], low-latency = %s \n", "configureMloFeatures", 450, v11, v12, v7, v13, v14);
    if (!v7)
    {
      goto LABEL_7;
    }
  }

  else if (!v7)
  {
LABEL_7:
    AppleBCMWLANLQM::updateMloTrafficSwitchState(LQM, a2);
  }

  return v7;
}

uint64_t AppleBCMWLAN11beAdapter::handleMloLinkEvent(uint64_t a1, uint64_t a2)
{
  result = AppleBCMWLANCore::getLQM(**(a1 + 40));
  if (result)
  {

    return AppleBCMWLANLQM::updateMloLinkChangeInfo(result, a2 + 48);
  }

  return result;
}

uint64_t AppleBCMWLANNANDataInterface::init(AppleBCMWLANNANDataInterface *this)
{
  result = IO80211SkywalkInterface::init(this);
  if (result)
  {
    v3 = IOMallocZeroTyped();
    *(this + 17) = v3;
    if (v3)
    {
      return 1;
    }

    else
    {
      IOLog("ERROR: nan data interface ivars alloc fail\n");
      return 0;
    }
  }

  return result;
}

uint64_t AppleBCMWLANNANDataInterface::start(AppleBCMWLANNANDataInterface *this, IOService *anObject)
{
  v3 = OSMetaClassBase::safeMetaCast(anObject, gAppleBCMWLANCoreMetaClass);

  return AppleBCMWLANNANDataInterface::start(this, v3);
}

uint64_t AppleBCMWLANNANDataInterface::start(uint64_t *a1, IOService *a2)
{
  v24 = 0;
  init = 0;
  if (a2 && (v4 = a2[1].OSObject::OSObjectInterface::__vftable, LOBYTE(v4[2223].free) == 1) && LODWORD(v4[2224].init) == 10)
  {
    v5 = v4 + 2225;
    init = v5->init;
    v24 = WORD2(v5->init);
  }

  else if ((*(*a1 + 1088))(a1))
  {
    (*(*a1 + 1088))(a1);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANNANDataInterface::start(a1);
    }
  }

  if ((*(*a1 + 1088))(a1))
  {
    (*(*a1 + 1088))(a1);
    if (CCLogStream::shouldLog())
    {
      v15 = (*(*a1 + 1088))(a1);
      CCLogStream::logAlert(v15, "[dk] %s@%d:%s: Initializing NAN data interface parameters %02x:%02x:%02x:%02x:%02x:%02x\n", "start", 162, "BOOL AppleBCMWLANNANDataInterface::start(AppleBCMWLANCore *, RegistrationInfo *)", init, BYTE1(init), BYTE2(init), HIBYTE(init), v24, HIBYTE(v24));
    }
  }

  v6 = (*(*a1 + 312))(a1);
  result = (*(*a1 + 1640))(a1, a2, &init, 10, v6);
  if (result)
  {
    p_free = &a2[1].OSObject::OSObjectInterface::__vftable[2223].free;
    *p_free = 0u;
    *(p_free + 1) = 0u;
    if (IO80211VirtualInterface::start(a1, a2))
    {
      v9 = *(a1[17] + 8);
      if (IO80211SkywalkInterface::getLogger(a1))
      {
        *(a1[17] + 32) = IO80211SkywalkInterface::getLogger(a1);
      }

      *(a1[17] + 120) = 0;
      *(a1[17] + 128) = 0;
      *(a1[17] + 136) = 0;
      *(a1[17] + 144) = 0;
      *(a1[17] + 152) = 0;
      (*(*v9 + 88))(v9);
      *(a1[17] + 56) = AppleBCMWLANCore::getBus(v9);
      v10 = (*(**(a1[17] + 56) + 752))();
      *(a1[17] + 64) = OSMetaClassBase::safeMetaCast(v10, gAppleBCMWLANBusSkywalkMetaClass);
      *&v11 = 0xAAAAAAAAAAAAAAAALL;
      *(&v11 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v21 = v11;
      v17 = v11;
      v19 = v11;
      v18 = v11;
      v20 = v11;
      v16 = a1;
      v12 = a1[17];
      LOBYTE(v17) = *(v12 + 72);
      *&v19 = v12 + 120;
      *(&v19 + 1) = v12 + 128;
      *&v20 = v12 + 136;
      *(&v20 + 1) = v12 + 144;
      *&v21 = v12 + 152;
      *(&v18 + 1) = v12 + 112;
      *(&v17 + 1) = v12 + 160;
      *&v18 = v12 + 80;
      WORD4(v21) = 64;
      v22 = (*(*a1 + 1088))(a1);
      v13 = (*(**(a1[17] + 64) + 56))(*(a1[17] + 64), &v16);
      v14 = *a1;
      if (v13)
      {
        result = (*(v14 + 1088))(a1);
        if (result)
        {
          (*(*a1 + 1088))(a1);
          result = CCLogStream::shouldLog();
          if (result)
          {
            AppleBCMWLANNANDataInterface::start(a1);
            return 0;
          }
        }
      }

      else
      {
        return (*(v14 + 536))(a1);
      }
    }

    else
    {
      result = (*(*a1 + 1088))(a1);
      if (result)
      {
        (*(*a1 + 1088))(a1);
        result = CCLogStream::shouldLog();
        if (result)
        {
          AppleBCMWLANNANDataInterface::start(a1);
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t non-virtual thunk toAppleBCMWLANNANDataInterface::start(AppleBCMWLANNANDataInterface *this, IOService *anObject)
{
  v2 = (this - 48);
  v3 = OSMetaClassBase::safeMetaCast(anObject, gAppleBCMWLANCoreMetaClass);

  return AppleBCMWLANNANDataInterface::start(v2, v3);
}

uint64_t AppleBCMWLANNANDataInterface::registerInterface(AppleBCMWLANNANDataInterface *this)
{
  *&v2 = 0xAAAAAAAAAAAAAAAALL;
  *(&v2 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v20[1] = v2;
  v20[2] = v2;
  v20[0] = v2;
  v3 = this & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000;
  v4 = (*(*this + 72))(this, &mediaTable, 2);
  if (v4)
  {
    v5 = v4;
    result = (*(*this + 1088))(this);
    if (result)
    {
      (*(*this + 1088))(this);
      result = CCLogStream::shouldLog();
      if (result)
      {
        AppleBCMWLANNANDataInterface::registerInterface(this, v3, v5);
        return 0;
      }
    }

    return result;
  }

  v7 = IOUserNetworkEthernet::SetTxPacketHeadroom(this, 0x40u);
  if (!v7)
  {
    v9 = *(this + 17);
    if (!*(v9 + 72))
    {
      goto LABEL_19;
    }

    v10 = 0;
    do
    {
      v11 = *(v9 + 8 * v10 + 80);
      *(v20 + v10) = v11;
      if ((*(*this + 1088))(this))
      {
        (*(*this + 1088))(this);
        if (CCLogStream::shouldLog())
        {
          v12 = (*(*this + 1088))(this);
          CCLogStream::logAlert(v12, "[dk] %s@%d:NANDataInterface: network queue[%u] %p, driver queue %p\n", "registerInterface", 288, v10, v11, *(*(this + 17) + 8 * v10 + 80));
        }
      }

      ++v10;
      v9 = *(this + 17);
    }

    while (v10 < *(v9 + 72));
    if (*(v9 + 72))
    {
      v13 = 0;
      do
      {
        (*(**(v9 + 8 * v13 + 80) + 272))(*(v9 + 8 * v13 + 80));
        *(*(this + 17) + 4 * *(*(this + 17) + 4 * v13 + 160) + 176) = AppleBCMWLANSkywalkTxSubmissionQueue::getQueueId(*(*(this + 17) + 8 * v13 + 80));
        ++v13;
        v9 = *(this + 17);
      }

      while (v13 < *(v9 + 72));
    }

    else
    {
LABEL_19:
      LOBYTE(v13) = 0;
    }

    *(v20 + v13) = *(v9 + 120);
    *(v20 + (v13 + 1)) = *(v9 + 128);
    v14 = v13 + 2;
    (*(**(v9 + 120) + 200))(*(v9 + 120));
    (*(**(*(this + 17) + 128) + 208))(*(*(this + 17) + 128));
    v15 = *(*(this + 17) + 136);
    if (v15)
    {
      (*(*v15 + 72))(v15);
    }

    v16 = (*(*this + 1072))(this);
    v17 = v14;
    v18 = (*(*this + 272))(this, v16 & 0xFFFFFFFFFFFFLL, *(*(this + 17) + 144), v20, v14);
    if ((*(*this + 1088))(this) && ((*(*this + 1088))(this), CCLogStream::shouldLog()))
    {
      v19 = (*(*this + 1088))(this);
      CCLogStream::logAlert(v19, "[dk] %s@%d:NANDataInterface: ret[0x%08x] MAC[%02x:%02x:%02x:%02x:%02x:%02x], pool[%p] queues[%p] numQueue[%2u]", "registerInterface", 310, v18, v16, BYTE1(v16), BYTE2(v16), BYTE3(v16), BYTE4(v16), BYTE5(v16), *(*(this + 17) + 144), v20, v17);
      if (v18)
      {
        goto LABEL_25;
      }
    }

    else if (v18)
    {
LABEL_25:
      result = (*(*this + 1088))(this);
      if (result)
      {
        (*(*this + 1088))(this);
        result = CCLogStream::shouldLog();
        if (result)
        {
          AppleBCMWLANNANDataInterface::registerInterface(this, v3, v18);
          return 0;
        }
      }

      return result;
    }

    IOService::RegisterService(this, 0);
    return 1;
  }

  v8 = v7;
  result = (*(*this + 1088))(this);
  if (result)
  {
    (*(*this + 1088))(this);
    result = CCLogStream::shouldLog();
    if (result)
    {
      AppleBCMWLANNANDataInterface::registerInterface(this, v3, v8);
      return 0;
    }
  }

  return result;
}

uint64_t AppleBCMWLANNANDataInterface::free(AppleBCMWLANNANDataInterface *this)
{
  v2 = *(this + 17);
  if (v2)
  {
    v3 = *(v2 + 48);
    if (v3)
    {
      (*(*v3 + 16))(v3);
      *(*(this + 17) + 48) = 0;
      v2 = *(this + 17);
    }

    *(v2 + 192) = 0;
    *(v2 + 160) = 0u;
    *(v2 + 176) = 0u;
    *(v2 + 128) = 0u;
    *(v2 + 144) = 0u;
    *(v2 + 96) = 0u;
    *(v2 + 112) = 0u;
    *(v2 + 64) = 0u;
    *(v2 + 80) = 0u;
    *(v2 + 32) = 0u;
    *(v2 + 48) = 0u;
    *v2 = 0u;
    *(v2 + 16) = 0u;
    v4 = *(this + 17);
    if (v4)
    {
      IOFree(v4, 0xC8uLL);
      *(this + 17) = 0;
    }
  }

  return IO80211VirtualInterface::free(this);
}

uint64_t AppleBCMWLANNANDataInterface::stop(AppleBCMWLANNANDataInterface *this, IOService *a2)
{
  WorkQueue = IO80211SkywalkInterface::getWorkQueue(this);
  IOLog("AppleBCMWLANNANDataInterface::stop[%u] stop( %p)\n", 349, a2);
  IO80211SkywalkInterface::validateDispatchQueue(this);
  if ((*(*this + 1088))(this))
  {
    (*(*this + 1088))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANNANDataInterface::stop(this);
    }
  }

  v5 = *(this + 17);
  if (*(v5 + 72))
  {
    v6 = 10;
    do
    {
      v7 = *(v5 + 8 * v6);
      if (v7)
      {
        (*(*v7 + 272))(v7);
        v5 = *(this + 17);
        v8 = *(v5 + 8 * v6);
        if (v8)
        {
          (*(*v8 + 16))(v8);
          *(*(this + 17) + 8 * v6) = 0;
          v5 = *(this + 17);
        }
      }

      v9 = v6 - 9;
      ++v6;
    }

    while (v9 < *(v5 + 72));
  }

  v10 = *(v5 + 120);
  if (v10)
  {
    (*(*v10 + 200))(v10);
    v5 = *(this + 17);
    v11 = *(v5 + 120);
    if (v11)
    {
      (*(*v11 + 16))(v11);
      *(*(this + 17) + 120) = 0;
      v5 = *(this + 17);
    }
  }

  v12 = *(v5 + 128);
  if (v12)
  {
    (*(*v12 + 208))(v12);
    v5 = *(this + 17);
    v13 = *(v5 + 128);
    if (v13)
    {
      (*(*v13 + 16))(v13);
      *(*(this + 17) + 128) = 0;
      v5 = *(this + 17);
    }
  }

  v14 = *(v5 + 136);
  if (v14)
  {
    (*(*v14 + 72))(v14);
    (*(*WorkQueue + 72))(WorkQueue, *(*(this + 17) + 136));
    v15 = *(*(this + 17) + 136);
    if (v15)
    {
      (*(*v15 + 16))(v15);
      *(*(this + 17) + 136) = 0;
    }
  }

  IOLog("AppleBCMWLANNANDataInterface::stop[%u] super::stop( %p) >>\n", 393, a2);

  return IO80211VirtualInterface::stop(this, a2);
}

uint64_t AppleBCMWLANNANDataInterface::resetInterface(AppleBCMWLANNANDataInterface *this)
{
  if (*(*(this + 17) + 42) == 1)
  {
    if ((*(*this + 1088))(this))
    {
      (*(*this + 1088))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANNANDataInterface::resetInterface(this);
      }
    }

    isPoweredOn = AppleBCMWLANCore::isPoweredOn(*(*(this + 17) + 8));
    v3 = *this + 1472;
    if (isPoweredOn)
    {
      v4 = 2;
    }

    else
    {
      v4 = 1;
    }

    (*(*this + 1472))(this, v4, 1);
  }

  return 0;
}

uint64_t AppleBCMWLANNANDataInterface::reset(AppleBCMWLANNANDataInterface *this)
{
  (*(*this + 1240))(this);
  IO80211SkywalkInterface::setInterfaceId(this, 0xFFFFFFFF);
  *(*(this + 17) + 42) = 0;
  return 0;
}

uint64_t non-virtual thunk toAppleBCMWLANNANDataInterface::reset(AppleBCMWLANNANDataInterface *this)
{
  v1 = (this - 96);
  (*(*(this - 12) + 1240))(this - 96);
  IO80211SkywalkInterface::setInterfaceId(v1, 0xFFFFFFFF);
  *(*(v1 + 17) + 42) = 0;
  return 0;
}

uint64_t AppleBCMWLANNANDataInterface::createNANChipInterface(unint64_t this, ether_addr *a2, char a3)
{
  v6 = (this + 136);
  *(*(this + 136) + 192) = 1;
  if (AppleBCMWLANCore::isHostAssignedInterfaceIndex(*(*(this + 136) + 8)))
  {
    IO80211SkywalkInterface::setInterfaceId(this, 4u);
    AppleBCMWLANCore::setNanDataSkywalkInterface(*(*(this + 136) + 8), 4u);
    v17 = 196636;
    v18 = 0;
    v19 = 0;
    v21[0] = 0;
    v21[1] = 0;
    v20 = 0;
    v22 = 0;
    v16 = 1835011;
    BYTE4(v19) = a3;
    v7 = *a2->octet;
    WORD2(v18) = *&a2->octet[4];
    HIDWORD(v17) = 10;
    LODWORD(v18) = v7;
    v15[0] = &v20;
    v15[1] = 0x1C001C001CLL;
    v8 = *(*(this + 136) + 24);
    v14[0] = &v16;
    v14[1] = 28;
    v9 = AppleBCMWLANCommander::runIOVarGet(v8, "interface_create", v14, v15, 0);
    v10 = (*(*this + 1088))(this);
    if (v9)
    {
      if (v10)
      {
        (*(*this + 1088))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANNANDataInterface::createNANChipInterface(this, this & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000, v9);
        }
      }
    }

    else
    {
      if (v10)
      {
        (*(*this + 1088))(this);
        if (CCLogStream::shouldLog())
        {
          v12 = (*(*this + 1088))(this);
          v13 = (*(*this + 160))(this);
          CCLogStream::logAlert(v12, "[dk] %s@%d:NAN Data Chip Interface %s Create, Return bssCfgIdx %d, ifIdx %d, ifName %s\n", "createNANChipInterface", 519, v13, BYTE2(v21[0]), BYTE3(v21[0]), v21 + 4);
        }
      }

      (*(**(*v6 + 64) + 104))(*(*v6 + 64), 4);
      v9 = 0;
      *(*v6 + 192) = 0;
    }
  }

  else
  {
    if ((*(*this + 1088))(this))
    {
      (*(*this + 1088))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANNANDataInterface::createNANChipInterface(this, this & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000, v6);
      }
    }

    *(*v6 + 192) = 0;
    return 1;
  }

  return v9;
}

uint64_t AppleBCMWLANNANDataInterface::setInterfaceEnable(AppleBCMWLANNANDataInterface *this, int a2)
{
  IO80211SkywalkInterface::validateDispatchQueue(this);
  if (IO80211VirtualInterface::setInterfaceEnable(this, a2))
  {
    if ((*(*this + 1088))(this))
    {
      (*(*this + 1088))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANNANDataInterface::setInterfaceEnable(this);
      }
    }
  }

  v4 = *(*(this + 17) + 42);
  v5 = (*(*this + 1088))(this);
  if (v4)
  {
    if (v5 && ((*(*this + 1088))(this), CCLogStream::shouldLog()))
    {
      AppleBCMWLANNANDataInterface::setInterfaceEnable(this, this & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000, a2);
      if (a2)
      {
LABEL_9:
        if (AppleBCMWLANCore::isConcurrencyEnabled(*(*(this + 17) + 8)) && AppleBCMWLANCore::isConcurrencyOpModeSet(*(*(this + 17) + 8), 4))
        {
          AppleBCMWLANCore::setSoftAPPowerState(*(*(this + 17) + 8), 1u, 0xEu);
        }

        v6 = (*(*this + 128))(this, 3, 128);
        (*(*this + 1320))(this, 0);
        goto LABEL_19;
      }
    }

    else if (a2)
    {
      goto LABEL_9;
    }

    v6 = (*(*this + 128))(this, 1, 130);
    (*(*this + 1328))(this, 0);
LABEL_19:
    AppleBCMWLANCore::setConcurrencyState(*(*(this + 17) + 8), 16, a2);
    if ((*(*this + 1088))(this))
    {
      (*(*this + 1088))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANNANDataInterface::setInterfaceEnable(this, this & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000, a2, v6);
      }
    }

    return v6;
  }

  if (v5)
  {
    (*(*this + 1088))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANNANDataInterface::setInterfaceEnable(this);
    }
  }

  return 0;
}

uint64_t AppleBCMWLANNANDataInterface::bringupLink(AppleBCMWLANNANDataInterface *this)
{
  if ((*(*this + 1088))(this))
  {
    (*(*this + 1088))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANNANDataInterface::bringupLink(this);
    }
  }

  if (AppleBCMWLANCore::isPoweredOn(*(*(this + 17) + 8)))
  {
    (*(*this + 1472))(this, 2, 1);
  }

  return 0;
}

uint64_t AppleBCMWLANNANDataInterface::bringdownLink(AppleBCMWLANNANDataInterface *this)
{
  if ((*(*this + 1088))(this))
  {
    (*(*this + 1088))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANNANDataInterface::bringdownLink(this);
    }
  }

  v3 = 0xAAAAAAAAAAAAAA00;
  IO80211Controller::postMessage(*(*(this + 17) + 8), this, 0x80u, &v3, 8uLL, 1);
  (*(*this + 1472))(this, 1, 1);
  return 0;
}

uint64_t AppleBCMWLANNANDataInterface::setNAN_INIT(uint64_t *a1)
{
  v2 = (*(*a1 + 1072))(a1);
  *v6.octet = v2;
  *&v6.octet[4] = WORD2(v2);
  v3 = AppleBCMWLANNANDataInterface::createNANChipInterface(a1, &v6, 4);
  v4 = *a1;
  if (v3)
  {
    if ((*(v4 + 1088))(a1))
    {
      (*(*a1 + 1088))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANNANDataInterface::setNAN_INIT(a1, a1 & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000, v3);
      }
    }
  }

  else
  {
    (*(v4 + 1680))(a1, 1);
    *(a1[17] + 42) = 1;
  }

  return v3;
}

uint64_t non-virtual thunk toAppleBCMWLANNANDataInterface::setNAN_INIT(uint64_t a1)
{
  return AppleBCMWLANNANDataInterface::setNAN_INIT((a1 - 112));
}

{
  return AppleBCMWLANNANDataInterface::setNAN_INIT((a1 - 128));
}

uint64_t AppleBCMWLANNANDataInterface::setCOMPANION_SKYWALK_IF_CREATE(uint64_t *a1, uint64_t a2)
{
  v3 = *(a2 + 4);
  if (v3)
  {
    if (v3 == 1)
    {
      v5 = a1 + 17;
      if (*(a1[17] + 48))
      {
        if ((*(*a1 + 1088))(a1))
        {
          (*(*a1 + 1088))(a1);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANNANDataInterface::setCOMPANION_SKYWALK_IF_CREATE(a1, a1 & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000, (a1 + 17));
          }
        }

        v6 = (*(**(*v5 + 48) + 160))(*(*v5 + 48));
        snprintf((a2 + 8), 0x10uLL, "%s", v6);
      }

      else
      {
        v20 = 0;
        v21 = 0uLL;
        v12 = (*(*a1 + 1072))(a1);
        LOBYTE(v20) = v12;
        v13.i64[0] = 0xFFFFFFFFFFFFLL;
        v13.i64[1] = 0xFFFFFFFFFFFFLL;
        v14 = vandq_s8(vdupq_n_s64(v12), v13);
        v15 = vshlq_u64(v14, xmmword_10033C2A0);
        *v14.i8 = vmovn_s64(vshlq_u64(v14, xmmword_10033C2B0));
        *v15.i8 = vmovn_s64(v15);
        v15.i16[1] = v15.i16[2];
        v15.i16[2] = v14.i16[0];
        v15.i16[3] = v14.i16[2];
        *(&v20 + 1) = vmovn_s16(v15).u32[0];
        BYTE5(v20) = BYTE5(v12);
        v19 = "llw";
        *&v21 = IO80211SkywalkInterface::getInterfaceId(a1);
        *(&v21 + 4) = 0x200000002;
        SkywalkInterface = AppleBCMWLANCore::createSkywalkInterface(*(a1[17] + 8), (a1[17] + 48), &v19, a1);
        if (SkywalkInterface)
        {
          return SkywalkInterface;
        }

        AppleBCMWLANSkywalkInterface::setInterfaceUnitNumber(*(a1[17] + 48), SDWORD1(v21));
        *(a2 + 8) = 7826540;
        v18 = a2 + 8;
        snprintf((v18 + 3), 0xDuLL, "%d", DWORD1(v21));
        if ((*(*a1 + 1088))(a1))
        {
          (*(*a1 + 1088))(a1);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANNANDataInterface::setCOMPANION_SKYWALK_IF_CREATE(a1, a1 & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000, v18);
          }
        }
      }
    }

    return 0;
  }

  else
  {
    v8 = a1[17];
    v9 = *(v8 + 48);
    if (v9)
    {
      v10 = *(v8 + 8);
      InterfaceId = IO80211SkywalkInterface::getInterfaceId(v9);
      AppleBCMWLANCore::destroySkywalkInterface(v10, InterfaceId);
      v7 = 0;
      *(a1[17] + 48) = 0;
    }

    else
    {
      v7 = 3758097088;
      if ((*(*a1 + 1088))(a1))
      {
        (*(*a1 + 1088))(a1);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANNANDataInterface::setCOMPANION_SKYWALK_IF_CREATE(a1);
        }
      }
    }
  }

  return v7;
}

uint64_t non-virtual thunk toAppleBCMWLANNANDataInterface::setCOMPANION_SKYWALK_IF_CREATE(uint64_t a1, uint64_t a2)
{
  return AppleBCMWLANNANDataInterface::setCOMPANION_SKYWALK_IF_CREATE((a1 - 112), a2);
}

{
  return AppleBCMWLANNANDataInterface::setCOMPANION_SKYWALK_IF_CREATE((a1 - 128), a2);
}

uint64_t non-virtual thunk toAppleBCMWLANNANDataInterface::getSTA_STATS()
{
  return 0;
}

{
  return 0;
}

uint64_t AppleBCMWLANNANDataInterface::handleEvent(uint64_t result, uint64_t a2)
{
  if (*(a2 + 4) == 54)
  {
    v3 = result;
    result = AppleBCMWLANCore::isHostAssignedInterfaceIndex(*(*(result + 136) + 8));
    if (result)
    {
      if ((*(*v3 + 1088))(v3))
      {
        (*(*v3 + 1088))(v3);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANNANDataInterface::handleEvent(v3, v3 & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000, (a2 + 48), a2);
        }
      }

      v4 = *(a2 + 48);
      result = IO80211SkywalkInterface::getInterfaceId(v3);
      if (result == v4)
      {
        **(v3 + 136) = *(a2 + 51);
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANNANDataInterface::setMacAddress(AppleBCMWLANNANDataInterface *this, ether_addr *a2)
{
  v4 = 3758097122;
  IO80211SkywalkInterface::validateDispatchQueue(this);
  v5 = *(this + 17);
  v6 = *(v5 + 16);
  if (v6)
  {
    if (AppleBCMWLANNANInterface::nanIsEnabled(v6))
    {
      return 3758097109;
    }

    v5 = *(this + 17);
  }

  if (*(v5 + 192))
  {
    return 3758097109;
  }

  isNANInitialized = AppleBCMWLANNANInterface::isNANInitialized(*(v5 + 16));
  v9 = *this;
  if (isNANInitialized)
  {
    if ((*(v9 + 664))(this) && (v10 = *(*(this + 17) + 24), InterfaceId = IO80211SkywalkInterface::getInterfaceId(this), v13[0] = a2, v13[1] = 6, v12 = AppleBCMWLANCommander::runVirtualIOVarSet(v10, InterfaceId, "cur_etheraddr", v13, 0, 0), v12))
    {
      v4 = v12;
      if ((*(*this + 1088))(this))
      {
        (*(*this + 1088))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANNANDataInterface::setMacAddress(this, this & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000, v4);
        }
      }
    }

    else
    {
      (*(*this + 128))(this, 2147483651, 128);
      return 0;
    }
  }

  else if ((*(v9 + 1088))(this))
  {
    (*(*this + 1088))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANNANDataInterface::setMacAddress(this);
    }
  }

  return v4;
}

uint64_t AppleBCMWLANNANDataInterface::enableDatapath(unint64_t this)
{
  v2 = *(*(this + 136) + 120);
  if (v2)
  {
    (*(*v2 + 192))(v2);
    v3 = *(*(this + 136) + 128);
    if (v3)
    {
      (*(*v3 + 200))(v3);
      v4 = *(this + 136);
      if (!*(v4 + 72))
      {
LABEL_7:
        v7 = (*(**(v4 + 128) + 120))(*(v4 + 128), 0, 0);
        if (v7)
        {
          if ((*(*this + 1088))(this))
          {
            (*(*this + 1088))(this);
            if (CCLogStream::shouldLog())
            {
              AppleBCMWLANNANDataInterface::enableDatapath(this, this & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000, v7);
            }
          }

          return 0;
        }

        return v7;
      }

      v5 = 0;
      while (1)
      {
        v6 = *(v4 + 8 * v5 + 80);
        if (!v6)
        {
          break;
        }

        (*(*v6 + 256))(v6);
        ++v5;
        v4 = *(this + 136);
        if (v5 >= *(v4 + 72))
        {
          goto LABEL_7;
        }
      }

      AppleBCMWLANNANDataInterface::enableDatapath(v5, this);
    }

    else
    {
      AppleBCMWLANNANDataInterface::enableDatapath(this);
    }
  }

  else
  {
    AppleBCMWLANNANDataInterface::enableDatapath(this);
  }

  v7 = 3758097084;
  if ((*(*this + 1088))(this))
  {
    (*(*this + 1088))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANNANDataInterface::enableDatapath(this);
    }
  }

  return v7;
}

uint64_t AppleBCMWLANNANDataInterface::enable(AppleBCMWLANNANDataInterface *this, unsigned int a2)
{
  v4 = this & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000;
  if ((*(*this + 1088))(this))
  {
    (*(*this + 1088))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANNANDataInterface::enable(this);
    }
  }

  IO80211SkywalkInterface::enable(this, a2);
  if (AppleBCMWLANCore::isPoweredOn(*(*(this + 17) + 8)) && (AppleBCMWLANCore::isWatchdogRunning(*(*(this + 17) + 8)) & 1) == 0)
  {
    (*(*this + 1232))(this);
  }

  else if ((*(*this + 1088))(this))
  {
    (*(*this + 1088))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANNANDataInterface::enable(this, v4, this + 136);
    }
  }

  return 0;
}

uint64_t AppleBCMWLANNANDataInterface::disableDatapath(AppleBCMWLANNANDataInterface *this)
{
  v2 = *(this + 17);
  if (*(v2 + 72))
  {
    v3 = 0;
    while (1)
    {
      v4 = *(v2 + 8 * v3 + 80);
      if (!v4)
      {
        break;
      }

      (*(*v4 + 272))(v4);
      ++v3;
      v2 = *(this + 17);
      if (v3 >= *(v2 + 72))
      {
        goto LABEL_5;
      }
    }

    AppleBCMWLANNANDataInterface::disableDatapath(v3, this);
  }

  else
  {
LABEL_5:
    v5 = *(v2 + 136);
    if (v5)
    {
      (*(*v5 + 72))(v5);
      v2 = *(this + 17);
    }

    v6 = *(v2 + 128);
    if (v6)
    {
      (*(*v6 + 208))(v6);
      v7 = *(*(this + 17) + 120);
      if (v7)
      {
        (*(*v7 + 200))(v7);
        return 0;
      }

      AppleBCMWLANNANDataInterface::disableDatapath(this);
    }

    else
    {
      AppleBCMWLANNANDataInterface::disableDatapath(this);
    }
  }

  v8 = 3758097084;
  if ((*(*this + 1088))(this))
  {
    (*(*this + 1088))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANNANDataInterface::disableDatapath(this);
    }
  }

  return v8;
}

uint64_t AppleBCMWLANNANDataInterface::disable(AppleBCMWLANNANDataInterface *this, unsigned int a2)
{
  if ((*(*this + 1088))(this))
  {
    (*(*this + 1088))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANNANDataInterface::disable(this);
    }
  }

  (*(*this + 1240))(this);

  return IO80211SkywalkInterface::disable(this, a2);
}

uint64_t AppleBCMWLANNANDataInterface::getTxSubQueue(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 136);
  v3 = *(v2 + 4 * a2 + 176);
  if (v3 >= *(v2 + 72))
  {
    return 0;
  }

  else
  {
    return *(v2 + 8 * v3 + 80);
  }
}

uint64_t non-virtual thunk toAppleBCMWLANNANDataInterface::getTxSubQueue(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 56);
  v3 = *(v2 + 4 * a2 + 176);
  if (v3 >= *(v2 + 72))
  {
    return 0;
  }

  else
  {
    return *(v2 + 8 * v3 + 80);
  }
}

uint64_t AppleBCMWLANNANInterface::init(AppleBCMWLANNANInterface *this)
{
  result = IO80211SkywalkInterface::init(this);
  if (result)
  {
    v3 = IOMallocZeroTyped();
    *(this + 17) = v3;
    if (v3)
    {
      return 1;
    }

    else
    {
      IOLog("ERROR: nan interface ivars alloc fail\n");
      return 0;
    }
  }

  return result;
}

uint64_t AppleBCMWLANNANInterface::start(AppleBCMWLANNANInterface *this, IOService *anObject)
{
  v3 = OSMetaClassBase::safeMetaCast(anObject, gAppleBCMWLANCoreMetaClass);

  return AppleBCMWLANNANInterface::start(this, v3);
}

uint64_t AppleBCMWLANNANInterface::start(IO80211SkywalkInterface *a1, IOService *a2)
{
  v30 = 0;
  init = 0;
  if (a2 && (v4 = a2[1].OSObject::OSObjectInterface::__vftable, LOBYTE(v4[2223].free) == 1) && LODWORD(v4[2224].init) == 9)
  {
    v5 = v4 + 2225;
    init = v5->init;
    v30 = WORD2(v5->init);
    v6 = init;
    v7 = BYTE1(init);
    v8 = BYTE2(init);
    v9 = HIBYTE(init);
    v10 = v30;
    v11 = HIBYTE(v30);
  }

  else
  {
    IOLog("%s: ERROR: NAN interface parameters invalid\n", "BOOL AppleBCMWLANNANInterface::start(AppleBCMWLANCore *, RegistrationInfo *)");
    v11 = 0;
    v10 = 0;
    v9 = 0;
    v8 = 0;
    v7 = 0;
    v6 = 0;
  }

  IOLog("%s: Initializing NAN interface parameters %02x:%02x:%02x:%02x:%02x:%02x\n", "BOOL AppleBCMWLANNANInterface::start(AppleBCMWLANCore *, RegistrationInfo *)", v6, v7, v8, v9, v10, v11);
  v12 = (*(*a1 + 312))(a1);
  result = (*(*a1 + 1640))(a1, a2, &init, 9, v12);
  if (result)
  {
    p_free = &a2[1].OSObject::OSObjectInterface::__vftable[2223].free;
    *p_free = 0u;
    *(p_free + 1) = 0u;
    if (IO80211VirtualInterface::start(a1, a2))
    {
      if (IO80211SkywalkInterface::getLogger(a1))
      {
        *(*(a1 + 17) + 80) = IO80211SkywalkInterface::getLogger(a1);
      }

      v15 = *(a1 + 17);
      v16 = *(v15 + 64);
      *(v15 + 176) = 0;
      *(*(a1 + 17) + 184) = 0;
      *(*(a1 + 17) + 192) = 0;
      *(*(a1 + 17) + 200) = 0;
      *(*(a1 + 17) + 208) = 0;
      (*(*v16 + 88))(v16);
      *(*(a1 + 17) + 112) = AppleBCMWLANCore::getBus(v16);
      v17 = (*(**(*(a1 + 17) + 112) + 752))();
      *(*(a1 + 17) + 120) = OSMetaClassBase::safeMetaCast(v17, gAppleBCMWLANBusSkywalkMetaClass);
      *&v18 = 0xAAAAAAAAAAAAAAAALL;
      *(&v18 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v23 = v18;
      v25 = v18;
      v24 = v18;
      v26 = v18;
      v27 = v18;
      v22 = a1;
      v19 = *(a1 + 17);
      LOBYTE(v23) = *(v19 + 128);
      *&v25 = v19 + 176;
      *(&v25 + 1) = v19 + 184;
      *&v26 = v19 + 192;
      *(&v26 + 1) = v19 + 200;
      *&v27 = v19 + 208;
      *(&v24 + 1) = v19 + 168;
      *(&v23 + 1) = v19 + 216;
      *&v24 = v19 + 136;
      WORD4(v27) = 64;
      v28 = (*(*a1 + 1088))(a1);
      v20 = (*(**(*(a1 + 17) + 120) + 56))(*(*(a1 + 17) + 120), &v22);
      v21 = *a1;
      if (v20)
      {
        result = (*(v21 + 1088))(a1);
        if (result)
        {
          (*(*a1 + 1088))(a1);
          result = CCLogStream::shouldLog();
          if (result)
          {
            AppleBCMWLANNANInterface::start(a1);
            return 0;
          }
        }
      }

      else
      {
        return (*(v21 + 536))(a1);
      }
    }

    else
    {
      result = (*(*a1 + 1088))(a1);
      if (result)
      {
        (*(*a1 + 1088))(a1);
        result = CCLogStream::shouldLog();
        if (result)
        {
          AppleBCMWLANNANInterface::start(a1);
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t non-virtual thunk toAppleBCMWLANNANInterface::start(AppleBCMWLANNANInterface *this, IOService *anObject)
{
  v2 = (this - 48);
  v3 = OSMetaClassBase::safeMetaCast(anObject, gAppleBCMWLANCoreMetaClass);

  return AppleBCMWLANNANInterface::start(v2, v3);
}

uint64_t AppleBCMWLANNANInterface::registerInterface(AppleBCMWLANNANInterface *this)
{
  *&v2 = 0xAAAAAAAAAAAAAAAALL;
  *(&v2 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v15[1] = v2;
  v15[2] = v2;
  v15[0] = v2;
  if ((*(*this + 72))(this, &mediaTable, 2))
  {
    result = (*(*this + 1088))(this);
    if (result)
    {
      (*(*this + 1088))(this);
      result = CCLogStream::shouldLog();
      if (result)
      {
        AppleBCMWLANNANInterface::registerInterface(this);
        return 0;
      }
    }

    return result;
  }

  if (!IOUserNetworkEthernet::SetTxPacketHeadroom(this, 0x40u))
  {
    v4 = *(this + 17);
    if (!*(v4 + 128))
    {
      goto LABEL_19;
    }

    v5 = 0;
    do
    {
      v6 = *(v4 + 8 * v5 + 136);
      *(v15 + v5) = v6;
      if ((*(*this + 1088))(this))
      {
        (*(*this + 1088))(this);
        if (CCLogStream::shouldLog())
        {
          v7 = (*(*this + 1088))(this);
          CCLogStream::logAlert(v7, "[dk] %s@%d:NANInterface: network queue[%u] %p, driver queue %p\n", "registerInterface", 413, v5, v6, *(*(this + 17) + 8 * v5 + 136));
        }
      }

      ++v5;
      v4 = *(this + 17);
    }

    while (v5 < *(v4 + 128));
    if (*(v4 + 128))
    {
      v8 = 0;
      do
      {
        (*(**(v4 + 8 * v8 + 136) + 272))(*(v4 + 8 * v8 + 136));
        *(*(this + 17) + 4 * *(*(this + 17) + 4 * v8 + 216) + 232) = AppleBCMWLANSkywalkTxSubmissionQueue::getQueueId(*(*(this + 17) + 8 * v8 + 136));
        ++v8;
        v4 = *(this + 17);
      }

      while (v8 < *(v4 + 128));
    }

    else
    {
LABEL_19:
      LOBYTE(v8) = 0;
    }

    *(v15 + v8) = *(v4 + 176);
    *(v15 + (v8 + 1)) = *(v4 + 184);
    v9 = v8 + 2;
    (*(**(v4 + 176) + 200))(*(v4 + 176));
    (*(**(*(this + 17) + 184) + 208))(*(*(this + 17) + 184));
    v10 = *(*(this + 17) + 192);
    if (v10)
    {
      (*(*v10 + 72))(v10);
    }

    v11 = (*(*this + 1072))(this);
    v12 = v9;
    v13 = (*(*this + 272))(this, v11 & 0xFFFFFFFFFFFFLL, *(*(this + 17) + 200), v15, v9);
    if ((*(*this + 1088))(this) && ((*(*this + 1088))(this), CCLogStream::shouldLog()))
    {
      v14 = (*(*this + 1088))(this);
      CCLogStream::logAlert(v14, "[dk] %s@%d:NANInterface: ret[0x%08x] MAC[%02x:%02x:%02x:%02x:%02x:%02x], pool[%p] queues[%p] numQueue[%2u]", "registerInterface", 435, v13, v11, BYTE1(v11), BYTE2(v11), BYTE3(v11), BYTE4(v11), BYTE5(v11), *(*(this + 17) + 200), v15, v12);
      if (v13)
      {
        goto LABEL_25;
      }
    }

    else if (v13)
    {
LABEL_25:
      result = (*(*this + 1088))(this);
      if (result)
      {
        (*(*this + 1088))(this);
        result = CCLogStream::shouldLog();
        if (result)
        {
          AppleBCMWLANNANInterface::registerInterface(this);
          return 0;
        }
      }

      return result;
    }

    IOService::RegisterService(this, 0);
    return 1;
  }

  result = (*(*this + 1088))(this);
  if (result)
  {
    (*(*this + 1088))(this);
    result = CCLogStream::shouldLog();
    if (result)
    {
      AppleBCMWLANNANInterface::registerInterface(this);
      return 0;
    }
  }

  return result;
}

uint64_t AppleBCMWLANNANInterface::free(AppleBCMWLANNANInterface *this)
{
  v2 = *(this + 17);
  if (v2)
  {
    v3 = *(v2 + 96);
    if (v3)
    {
      (*(*v3 + 16))(v3);
      *(*(this + 17) + 96) = 0;
      v2 = *(this + 17);
    }

    *(v2 + 224) = 0u;
    *(v2 + 240) = 0u;
    *(v2 + 192) = 0u;
    *(v2 + 208) = 0u;
    *(v2 + 160) = 0u;
    *(v2 + 176) = 0u;
    *(v2 + 128) = 0u;
    *(v2 + 144) = 0u;
    *(v2 + 96) = 0u;
    *(v2 + 112) = 0u;
    *(v2 + 64) = 0u;
    *(v2 + 80) = 0u;
    *(v2 + 32) = 0u;
    *(v2 + 48) = 0u;
    *v2 = 0u;
    *(v2 + 16) = 0u;
    v4 = *(this + 17);
    if (v4)
    {
      IOFree(v4, 0x100uLL);
      *(this + 17) = 0;
    }
  }

  return IO80211VirtualInterface::free(this);
}

uint64_t AppleBCMWLANNANInterface::stop(AppleBCMWLANNANInterface *this, IOService *a2)
{
  WorkQueue = IO80211SkywalkInterface::getWorkQueue(this);
  IOLog("AppleBCMWLANNANInterface::stop[%u] stop( %p)\n", 472, a2);
  IO80211SkywalkInterface::validateDispatchQueue(this);
  if ((*(*this + 1088))(this))
  {
    (*(*this + 1088))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANNANInterface::stop(this);
    }
  }

  v5 = *(this + 17);
  if (*(v5 + 128))
  {
    v6 = 17;
    do
    {
      v7 = *(v5 + 8 * v6);
      if (v7)
      {
        (*(*v7 + 272))(v7);
        v5 = *(this + 17);
        v8 = *(v5 + 8 * v6);
        if (v8)
        {
          (*(*v8 + 16))(v8);
          *(*(this + 17) + 8 * v6) = 0;
          v5 = *(this + 17);
        }
      }

      v9 = v6 - 16;
      ++v6;
    }

    while (v9 < *(v5 + 128));
  }

  v10 = *(v5 + 176);
  if (v10)
  {
    (*(*v10 + 200))(v10);
    v5 = *(this + 17);
    v11 = *(v5 + 176);
    if (v11)
    {
      (*(*v11 + 16))(v11);
      *(*(this + 17) + 176) = 0;
      v5 = *(this + 17);
    }
  }

  v12 = *(v5 + 184);
  if (v12)
  {
    (*(*v12 + 208))(v12);
    v5 = *(this + 17);
    v13 = *(v5 + 184);
    if (v13)
    {
      (*(*v13 + 16))(v13);
      *(*(this + 17) + 184) = 0;
      v5 = *(this + 17);
    }
  }

  v14 = *(v5 + 192);
  if (v14)
  {
    (*(*v14 + 72))(v14);
    (*(*WorkQueue + 72))(WorkQueue, *(*(this + 17) + 192));
    v15 = *(*(this + 17) + 192);
    if (v15)
    {
      (*(*v15 + 16))(v15);
      *(*(this + 17) + 192) = 0;
    }
  }

  IOLog("AppleBCMWLANNANInterface::stop[%u] super::stop( %p) >>\n", 516, a2);

  return IO80211VirtualInterface::stop(this, a2);
}

uint64_t AppleBCMWLANNANInterface::reset(AppleBCMWLANNANInterface *this)
{
  if ((*(*this + 1088))(this))
  {
    (*(*this + 1088))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANNANInterface::reset(this);
    }
  }

  *(*(this + 17) + 88) = 0;
  *(*(this + 17) + 93) = 0;
  *(*(this + 17) + 94) = 0;
  (*(*this + 1240))(this);
  IO80211SkywalkInterface::setInterfaceId(this, 0xFFFFFFFF);

  return IO80211VirtualInterface::reset(this);
}

uint64_t AppleBCMWLANNANInterface::resetInterface(AppleBCMWLANNANInterface *this)
{
  if (*(*(this + 17) + 88))
  {
    if ((*(*this + 1088))(this))
    {
      (*(*this + 1088))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANNANInterface::resetInterface(this);
      }
    }

    isPoweredOn = AppleBCMWLANCore::isPoweredOn(*(*(this + 17) + 64));
    v3 = *this + 1472;
    if (isPoweredOn)
    {
      v4 = 2;
    }

    else
    {
      v4 = 1;
    }

    (*(*this + 1472))(this, v4, 1);
  }

  return 0;
}

uint64_t AppleBCMWLANNANInterface::createNANChipInterface(AppleBCMWLANNANInterface *this, ether_addr *a2, char a3)
{
  v6 = this + 136;
  if (AppleBCMWLANCore::isHostAssignedInterfaceIndex(*(*(this + 17) + 64)))
  {
    IO80211SkywalkInterface::setInterfaceId(this, 3u);
    AppleBCMWLANCore::setNanMgtSkywalkInterface(*(*(this + 17) + 64), 3u);
    v17 = 196636;
    v18 = 0;
    v19 = 0;
    v21[0] = 0;
    v21[1] = 0;
    v20 = 0;
    v22 = 0;
    v16 = 1835011;
    BYTE4(v19) = a3;
    v7 = *a2->octet;
    WORD2(v18) = *&a2->octet[4];
    HIDWORD(v17) = 10;
    LODWORD(v18) = v7;
    v15[0] = &v20;
    v15[1] = 0x1C001C001CLL;
    v8 = *(*(this + 17) + 72);
    v14[0] = &v16;
    v14[1] = 28;
    v9 = AppleBCMWLANCommander::runIOVarGet(v8, "interface_create", v14, v15, 0);
    v10 = (*(*this + 1088))(this);
    if (v9)
    {
      if (v10)
      {
        (*(*this + 1088))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANNANInterface::createNANChipInterface(this);
        }
      }
    }

    else
    {
      if (v10)
      {
        (*(*this + 1088))(this);
        if (CCLogStream::shouldLog())
        {
          v12 = (*(*this + 1088))(this);
          v13 = (*(*this + 160))(this);
          CCLogStream::logAlert(v12, "[dk] %s@%d:NAN Chip Interface %s Create, Return bssCfgIdx %d, ifIdx %d, ifName %s\n", "createNANChipInterface", 647, v13, BYTE2(v21[0]), BYTE3(v21[0]), v21 + 4);
        }
      }

      (*(**(*v6 + 120) + 104))(*(*v6 + 120), 3);
    }
  }

  else if ((*(*this + 1088))(this))
  {
    (*(*this + 1088))(this);
    v9 = 1;
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANNANInterface::createNANChipInterface(this);
    }
  }

  else
  {
    return 1;
  }

  return v9;
}

uint64_t AppleBCMWLANNANInterface::setInterfaceEnable(AppleBCMWLANNANInterface *this, int a2)
{
  IO80211SkywalkInterface::validateDispatchQueue(this);
  if (IO80211VirtualInterface::setInterfaceEnable(this, a2))
  {
    if ((*(*this + 1088))(this))
    {
      (*(*this + 1088))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANNANInterface::setInterfaceEnable(this);
      }
    }
  }

  v4 = *(*(this + 17) + 88);
  v5 = (*(*this + 1088))(this);
  if (v4)
  {
    if (v5 && ((*(*this + 1088))(this), CCLogStream::shouldLog()))
    {
      AppleBCMWLANNANInterface::setInterfaceEnable(this, this & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000, a2);
      if (a2)
      {
LABEL_9:
        if (AppleBCMWLANCore::isConcurrencyEnabled(*(*(this + 17) + 64)) && AppleBCMWLANCore::isConcurrencyOpModeSet(*(*(this + 17) + 64), 4))
        {
          AppleBCMWLANCore::setSoftAPPowerState(*(*(this + 17) + 64), 1u, 0xDu);
        }

        v6 = (*(*this + 128))(this, 3, 128);
        (*(*this + 1320))(this, 0);
        goto LABEL_19;
      }
    }

    else if (a2)
    {
      goto LABEL_9;
    }

    v6 = (*(*this + 128))(this, 1, 130);
    (*(*this + 1328))(this, 0);
LABEL_19:
    AppleBCMWLANCore::setConcurrencyState(*(*(this + 17) + 64), 8, a2);
    if ((*(*this + 1088))(this))
    {
      (*(*this + 1088))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANNANInterface::setInterfaceEnable(this, this & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000, a2, v6);
      }
    }

    return v6;
  }

  if (v5)
  {
    (*(*this + 1088))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANNANInterface::setInterfaceEnable(this);
    }
  }

  return 0;
}

uint64_t AppleBCMWLANNANInterface::setMacAddress(AppleBCMWLANNANInterface *this, ether_addr *a2)
{
  if (*(*(this + 17) + 93))
  {
    return 3758097109;
  }

  if (IO80211SkywalkInterface::getInterfaceId(this) != 3)
  {
    return 0;
  }

  v2 = AppleBCMWLANNANInterface::setNAN_InterfaceAddr(this, a2);
  if (!v2)
  {
    v5 = *(*(this + 17) + 72);
    InterfaceId = IO80211SkywalkInterface::getInterfaceId(this);
    v8[0] = a2;
    v8[1] = 6;
    v2 = AppleBCMWLANCommander::runVirtualIOVarSet(v5, InterfaceId, "cur_etheraddr", v8, 0, 0);
    if (v2)
    {
      if ((*(*this + 1088))(this))
      {
        (*(*this + 1088))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANNANInterface::setMacAddress(this);
        }
      }
    }
  }

  return v2;
}

uint64_t AppleBCMWLANNANInterface::setNAN_InterfaceAddr(AppleBCMWLANNANInterface *this, ether_addr *a2)
{
  v3 = AppleBCMWLANNANInterface::issueSyncSetIOVAR(this, 269, a2, 6u);
  if (v3)
  {
    if ((*(*this + 1088))(this))
    {
      (*(*this + 1088))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANNANInterface::setNAN_InterfaceAddr(this);
      }
    }
  }

  return v3;
}

uint64_t AppleBCMWLANNANInterface::bringupLink(AppleBCMWLANNANInterface *this)
{
  if ((*(*this + 1088))(this))
  {
    (*(*this + 1088))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANNANInterface::bringupLink(this);
    }
  }

  if (AppleBCMWLANCore::isPoweredOn(*(*(this + 17) + 64)))
  {
    (*(*this + 1472))(this, 2, 1);
  }

  return 0;
}

uint64_t AppleBCMWLANNANInterface::bringdownLink(AppleBCMWLANNANInterface *this)
{
  if ((*(*this + 1088))(this))
  {
    (*(*this + 1088))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANNANInterface::bringdownLink(this);
    }
  }

  v3 = 0xAAAAAAAAAAAAAA00;
  IO80211Controller::postMessage(*(*(this + 17) + 64), this, 0x80u, &v3, 8uLL, 1);
  if (*(*(this + 17) + 88))
  {
    AppleBCMWLANNANInterface::disableNAN(this);
  }

  (*(*this + 1472))(this, 1, 1);
  return 0;
}

uint64_t AppleBCMWLANNANInterface::disableNAN(AppleBCMWLANNANInterface *this)
{
  v4 = 0;
  v2 = AppleBCMWLANNANInterface::issueSyncSetIOVAR(this, 278, &v4, 1u);
  if (v2)
  {
    if ((*(*this + 1088))(this))
    {
      (*(*this + 1088))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANNANInterface::disableNAN(this);
      }
    }
  }

  else if (*(*(this + 17) + 92) == 1)
  {
    if ((*(*this + 1088))(this))
    {
      (*(*this + 1088))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANNANInterface::disableNAN(this);
      }
    }

    AppleBCMWLANCore::setBTCSlottedBssPolicy(*(*(this + 17) + 64));
  }

  return v2;
}

uint64_t AppleBCMWLANNANInterface::handleEvent(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 20) + 47;
  v5 = __CFADD__(v4, a2);
  v6 = v4 + a2;
  v7 = v5;
  v8 = *(a2 + 4);
  if (v8 > 99)
  {
    if ((v8 - 100) <= 0x3B && ((1 << (v8 - 100)) & 0xC00000000000001) != 0)
    {
      switch(*(a2 + 12))
      {
        case 3:

          result = AppleBCMWLANNANInterface::handleEventNANStateChanged(result, a2);
          break;
        case 5:

          result = AppleBCMWLANNANInterface::handleEventNANDiscoveryResultReceived(result, a2);
          break;
        case 6:

          result = AppleBCMWLANNANInterface::handleEventNANPublishReplied(result, a2);
          break;
        case 7:
          AppleBCMWLANNANInterface::handleEventNANPublishTerminated(result, a2);

          result = AppleBCMWLANNANInterface::handleEventNANSubscribeTerminated(v3, a2);
          break;
        case 8:

          result = AppleBCMWLANNANInterface::handleEventNANFollowupReceived(result, a2);
          break;
        case 0xA:

          result = AppleBCMWLANNANInterface::handleEventNANClusterIDChanged(result, a2);
          break;
        case 0x14:

          result = AppleBCMWLANNANInterface::handleNANEventPeerDataPathIndication(result, a2);
          break;
        case 0x15:

          result = AppleBCMWLANNANInterface::handleNANEventDataPathEstablished(result, a2);
          break;
        case 0x17:

          result = AppleBCMWLANNANInterface::handleNANEventDataPathEnd(result, a2);
          break;
        case 0x18:

          result = AppleBCMWLANNANInterface::handleNANEventBeaconReceived(result, a2);
          break;
        case 0x19:

          result = AppleBCMWLANNANInterface::handleNANEventPeerDataPathResponse(result, a2);
          break;
        case 0x1A:

          result = AppleBCMWLANNANInterface::handleNANEventPeerDataPathConfirm(result, a2);
          break;
        case 0x1B:

          result = AppleBCMWLANNANInterface::handleNANEventRangeRequestIndication(result, a2);
          break;
        case 0x1C:

          result = AppleBCMWLANNANInterface::handleNANEventRangeReportIndication(result, a2);
          break;
        case 0x1D:

          result = AppleBCMWLANNANInterface::handleNANEventRangeTerminateIndication(result, a2);
          break;
        case 0x1F:

          result = AppleBCMWLANNANInterface::handleNANEventNAFTxComplete(result, a2);
          break;
        case 0x20:

          result = AppleBCMWLANNANInterface::handleNANEventDWStart(result, a2);
          break;
        case 0x21:

          result = AppleBCMWLANNANInterface::handleNANEventDWEnd(result, a2);
          break;
        case 0x22:

          result = AppleBCMWLANNANInterface::handleNANEventChanBoundary(result, a2);
          break;
        case 0x23:

          result = AppleBCMWLANNANInterface::handleEventNANMasterChanged(result, a2);
          break;
        case 0x24:

          result = AppleBCMWLANNANInterface::handleNANEventRangeResponseIndication(result, a2);
          break;
        case 0x25:

          result = AppleBCMWLANNANInterface::handleEventNANPeerScheduleUpdate(result, a2);
          break;
        case 0x29:

          result = AppleBCMWLANNANInterface::handleEventNANFWDataPathTerminated(result, a2);
          break;
        case 0x2C:

          result = AppleBCMWLANNANInterface::handleEventNANHostAssistRequest(result, a2);
          break;
        case 0x2F:

          result = AppleBCMWLANNANInterface::handleNANEventOobActionFrameTxStatus(result, a2);
          break;
        case 0x30:

          result = AppleBCMWLANNANInterface::handleNANEventOobActionFrameRx(result, a2);
          break;
        case 0x3C:

          result = AppleBCMWLANNANInterface::handleNANEventAuthFrameRx(result, a2);
          break;
        default:
          return result;
      }
    }
  }

  else
  {
    switch(v8)
    {
      case 13:

        return AppleBCMWLANNANInterface::handleNANEventQuiteIE(result);
      case 38:

        return AppleBCMWLANNANInterface::handelNANEventInfraAssociatioStart(result, a2);
      case 54:
        if ((v7 & 1) != 0 || (v10 = (a2 + 48), a2 + 52 < a2) || (a2 + 48) >= 0xFFFFFFFFFFFFFFFCLL || a2 + 52 > v6 || v10 < a2 || v6 < v10)
        {
          result = (*(*result + 1088))(result);
          if (result)
          {
            (*(*v3 + 1088))(v3);
            result = CCLogStream::shouldLog();
            if (result)
            {
              return AppleBCMWLANNANInterface::handleEvent(v3);
            }
          }
        }

        else
        {
          result = AppleBCMWLANCore::isHostAssignedInterfaceIndex(*(*(result + 136) + 64));
          if (result)
          {
            if ((*(*v3 + 1088))(v3))
            {
              (*(*v3 + 1088))(v3);
              if (CCLogStream::shouldLog())
              {
                AppleBCMWLANNANInterface::handleEvent(v3, v3 & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000, (a2 + 48), a2);
              }
            }

            v11 = *v10;
            result = IO80211SkywalkInterface::getInterfaceId(v3);
            if (result == v11)
            {
              *(v3[17] + 104) = *(a2 + 51);
            }
          }
        }

        break;
    }
  }

  return result;
}

uint64_t AppleBCMWLANNANInterface::handleEventNANStateChanged(uint64_t *a1, uint64_t a2)
{
  v3 = *(a2 + 20);
  if (v3 <= 3)
  {
    if ((*(*a1 + 1088))(a1))
    {
      (*(*a1 + 1088))(a1);
      v4 = 1;
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANNANInterface::handleEventNANStateChanged(a1);
      }

      return v4;
    }

    return 1;
  }

  v6 = a2 + 48;
  v7 = v3 - 1 + a2 + 48;
  v8 = __CFADD__(v3 - 1, a2 + 48);
  if (*(a2 + 48) == 261)
  {
    v9 = *(a2 + 50);
    if (v9 < 0x3C || v9 + 4 > v3)
    {
      if (!(*(*a1 + 1088))(a1))
      {
        return 1;
      }

      (*(*a1 + 1088))(a1);
      v4 = 1;
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANNANInterface::handleEventNANStateChanged(a1);
      }
    }

    else if (v8 || (v12 = a2 + 52, a2 + 111 < v6) || (a2 + 52) >= 0xFFFFFFFFFFFFFFC5 || a2 + 111 > v7 || v6 > v12 || v7 < v12)
    {
      if (!(*(*a1 + 1088))(a1))
      {
        return 1;
      }

      (*(*a1 + 1088))(a1);
      v4 = 1;
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANNANInterface::handleEventNANStateChanged(a1);
      }
    }

    else
    {
      if ((*(*a1 + 1088))(a1))
      {
        (*(*a1 + 1088))(a1);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANNANInterface::handleEventNANStateChanged(a1);
        }
      }

      v17 = 0;
      v18 = 0;
      v13 = *(a2 + 59);
      v14 = 0x10200uLL >> (8 * v13);
      v15 = v13 >= 5;
      if (v13 >= 5)
      {
        v16 = 0;
      }

      else
      {
        v16 = 0x102030300uLL >> (8 * v13);
      }

      if (v15)
      {
        LOBYTE(v14) = 0;
      }

      LOBYTE(v17) = v16;
      BYTE4(v17) = v14;
      LOBYTE(v18) = *(a2 + 97);
      IO80211Controller::postMessage(*(a1[17] + 64), a1, 0x5Fu, &v17, 0xCuLL, 1);
      return 0;
    }
  }

  else
  {
    if (!(*(*a1 + 1088))(a1))
    {
      return 1;
    }

    (*(*a1 + 1088))(a1);
    v4 = 1;
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANNANInterface::handleEventNANStateChanged(a1);
    }
  }

  return v4;
}

uint64_t AppleBCMWLANNANInterface::handleEventNANClusterIDChanged(uint64_t *a1, uint64_t a2)
{
  v3 = *(a2 + 20);
  if (v3 <= 3)
  {
    if ((*(*a1 + 1088))(a1))
    {
      (*(*a1 + 1088))(a1);
      v4 = 1;
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANNANInterface::handleEventNANClusterIDChanged(a1);
      }

      return v4;
    }

    return 1;
  }

  v6 = a2 + 48;
  v7 = v3 - 1 + a2 + 48;
  v8 = __CFADD__(v3 - 1, a2 + 48);
  if (*(a2 + 48) == 261)
  {
    v9 = *(a2 + 50);
    if (v9 < 0x3C || v9 + 4 > v3)
    {
      if (!(*(*a1 + 1088))(a1))
      {
        return 1;
      }

      (*(*a1 + 1088))(a1);
      v4 = 1;
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANNANInterface::handleEventNANClusterIDChanged(a1);
      }
    }

    else if (v8 || (v12 = a2 + 52, a2 + 111 < v6) || (a2 + 52) >= 0xFFFFFFFFFFFFFFC5 || a2 + 111 > v7 || v6 > v12 || v7 < v12)
    {
      if (!(*(*a1 + 1088))(a1))
      {
        return 1;
      }

      (*(*a1 + 1088))(a1);
      v4 = 1;
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANNANInterface::handleEventNANClusterIDChanged(a1);
      }
    }

    else
    {
      if ((*(*a1 + 1088))(a1))
      {
        (*(*a1 + 1088))(a1);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANNANInterface::handleEventNANClusterIDChanged(a1);
        }
      }

      v13 = *(a2 + 60);
      v14 = *(a2 + 64);
      IO80211Controller::postMessage(*(a1[17] + 64), a1, 0x61u, &v13, 6uLL, 1);
      return 0;
    }
  }

  else
  {
    if (!(*(*a1 + 1088))(a1))
    {
      return 1;
    }

    (*(*a1 + 1088))(a1);
    v4 = 1;
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANNANInterface::handleEventNANClusterIDChanged(a1);
    }
  }

  return v4;
}

uint64_t AppleBCMWLANNANInterface::handleEventNANPublishReplied(uint64_t *a1, uint64_t a2)
{
  v3 = *(a2 + 20);
  if (v3 <= 3)
  {
    if ((*(*a1 + 1088))(a1))
    {
      (*(*a1 + 1088))(a1);
      v4 = 1;
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANNANInterface::handleEventNANPublishReplied(a1);
      }

      return v4;
    }

    return 1;
  }

  v7 = a2 + 48;
  v6 = *(a2 + 48);
  v8 = v3 - 1 + a2 + 48;
  v9 = __CFADD__(v3 - 1, a2 + 48);
  v10 = a2 + 48;
  if (v6 != 776)
  {
    if (v6 == 512)
    {
      v13 = 24;
    }

    else
    {
      v13 = 16;
    }

    v14 = 50;
    if (v6 == 512)
    {
      v14 = 52;
    }

    v15 = *(a2 + v14);
    ChanSpecHandler = AppleBCMWLANCore::getChanSpecHandler(*(a1[17] + 64));
    AppleBCMWLANChanSpec::getAppleChannelSpec(ChanSpecHandler, bswap32(v15) >> 16);
    ChanSpecConvToApple80211Channel();
    v3 = *(a2 + 20);
    if (v3 < v13)
    {
      if (!(*(*a1 + 1088))(a1))
      {
        return 1;
      }

      (*(*a1 + 1088))(a1);
      v4 = 1;
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANNANInterface::handleEventNANPublishReplied(a1);
      }

      return v4;
    }

    v10 = v7 + v13;
    if (*v10 != 776)
    {
      if (!(*(*a1 + 1088))(a1))
      {
        return 1;
      }

      (*(*a1 + 1088))(a1);
      v4 = 1;
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANNANInterface::handleEventNANPublishReplied(a1);
      }

      return v4;
    }
  }

  v11 = *(v10 + 2);
  if (v11 < 0xC || v11 + 4 > v3)
  {
    if (!(*(*a1 + 1088))(a1))
    {
      return 1;
    }

    (*(*a1 + 1088))(a1);
    v4 = 1;
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANNANInterface::handleEventNANPublishReplied(a1);
    }
  }

  else
  {
    if (!v9)
    {
      v18 = (v10 + 4);
      if (v10 + 15 >= v7 && (v10 + 4) < 0xFFFFFFFFFFFFFFF5 && v10 + 15 <= v8 && v7 <= v18 && v8 >= v18)
      {
        v19 = *(v10 + 14);
        v20 = IOMallocZeroData();
        if (!v20)
        {
          return 12;
        }

        v21 = v20;
        if ((*(*a1 + 1088))(a1))
        {
          (*(*a1 + 1088))(a1);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANNANInterface::handleEventNANPublishReplied(a1);
          }
        }

        v22 = &v21[v19 + 25];
        v23 = __CFADD__(v19 + 25, v21);
        *v21 = *(v10 + 10);
        v21[7] = *(v10 + 11);
        v21[8] = *(v10 + 12);
        *(v21 + 12) = 0;
        *(v21 + 5) = 0;
        if (v10 + 9 < v7 || v10 + 9 > v8)
        {
          if ((*(*a1 + 1088))(a1))
          {
            (*(*a1 + 1088))(a1);
            v4 = 1;
            if (CCLogStream::shouldLog())
            {
              AppleBCMWLANNANInterface::handleEventNANPublishReplied(a1);
            }

            goto LABEL_88;
          }
        }

        else if (v23 || (v24 = v21 + 1, (v21 + 6) < v21) || (v21 + 1) >= 0xFFFFFFFFFFFFFFFBLL || (v21 + 6) > v22 || v21 > v24 || v22 < v24)
        {
          if ((*(*a1 + 1088))(a1))
          {
            (*(*a1 + 1088))(a1);
            v4 = 1;
            if (CCLogStream::shouldLog())
            {
              AppleBCMWLANNANInterface::handleEventNANPublishReplied(a1);
            }

            goto LABEL_88;
          }
        }

        else
        {
          v25 = *v18;
          *(v21 + 5) = *(v10 + 8);
          *v24 = v25;
          v26 = *(v10 + 14);
          *(v21 + 12) = v26;
          if (!v26 || ((v27 = (v10 + 16), v28 = v26 - 1, v29 = v26 - 1 + v10 + 16, !__CFADD__(v26 - 1, v10 + 16)) ? (v30 = 0) : (v30 = 1), v29 < v7 || v30 || v29 > v8 || v7 > v27 || v8 < v27))
          {
            if ((*(*a1 + 1088))(a1))
            {
              (*(*a1 + 1088))(a1);
              v4 = 1;
              if (CCLogStream::shouldLog())
              {
                AppleBCMWLANNANInterface::handleEventNANPublishReplied(a1);
              }

              goto LABEL_88;
            }
          }

          else
          {
            v31 = v21 + 26;
            v32 = __CFADD__(v28, v21 + 26);
            v33 = &v21[v28 + 26];
            v34 = v32;
            if (v33 >= v21 && !v34 && v33 <= v22 && v21 <= v31 && v22 >= v31)
            {
              memcpy(v31, v27, v26);
              IO80211Controller::postMessage(*(a1[17] + 64), a1, 0x66u, v21, v19 + 26, 1);
              v4 = 0;
LABEL_88:
              IOFreeData();
              return v4;
            }

            if ((*(*a1 + 1088))(a1))
            {
              (*(*a1 + 1088))(a1);
              v4 = 1;
              if (CCLogStream::shouldLog())
              {
                AppleBCMWLANNANInterface::handleEventNANPublishReplied(a1);
              }

              goto LABEL_88;
            }
          }
        }

        v4 = 1;
        goto LABEL_88;
      }
    }

    if (!(*(*a1 + 1088))(a1))
    {
      return 1;
    }

    (*(*a1 + 1088))(a1);
    v4 = 1;
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANNANInterface::handleEventNANPublishReplied(a1);
    }
  }

  return v4;
}

uint64_t AppleBCMWLANNANInterface::handleEventNANPublishTerminated(uint64_t *a1, uint64_t a2)
{
  v3 = *(a2 + 20);
  if (v3 <= 3)
  {
    if ((*(*a1 + 1088))(a1))
    {
      (*(*a1 + 1088))(a1);
      v4 = 1;
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANNANInterface::handleEventNANPublishTerminated(a1);
      }

      return v4;
    }

    return 1;
  }

  v6 = a2 + 48;
  v7 = v3 - 1 + a2 + 48;
  v8 = __CFADD__(v3 - 1, a2 + 48);
  if (*(a2 + 48) == 775)
  {
    v9 = *(a2 + 50);
    if (v9 < 8 || v9 + 4 > v3)
    {
      if (!(*(*a1 + 1088))(a1))
      {
        return 1;
      }

      (*(*a1 + 1088))(a1);
      v4 = 1;
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANNANInterface::handleEventNANPublishTerminated(a1);
      }
    }

    else if (v8 || (v12 = a2 + 52, a2 + 59 < v6) || (a2 + 52) >= 0xFFFFFFFFFFFFFFF9 || a2 + 59 > v7 || v6 > v12 || v7 < v12)
    {
      if (!(*(*a1 + 1088))(a1))
      {
        return 1;
      }

      (*(*a1 + 1088))(a1);
      v4 = 1;
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANNANInterface::handleEventNANPublishTerminated(a1);
      }
    }

    else
    {
      if (!*(a2 + 54))
      {
        if ((*(*a1 + 1088))(a1))
        {
          (*(*a1 + 1088))(a1);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANNANInterface::handleEventNANPublishTerminated(a1);
          }
        }

        v13 = *(a2 + 52);
        IO80211Controller::postMessage(*(a1[17] + 64), a1, 0x68u, &v13, 2uLL, 1);
      }

      return 0;
    }
  }

  else
  {
    if (!(*(*a1 + 1088))(a1))
    {
      return 1;
    }

    (*(*a1 + 1088))(a1);
    v4 = 1;
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANNANInterface::handleEventNANPublishTerminated(a1);
    }
  }

  return v4;
}

uint64_t AppleBCMWLANNANInterface::handleEventNANSubscribeTerminated(uint64_t *a1, uint64_t a2)
{
  v3 = *(a2 + 20);
  if (v3 <= 3)
  {
    if ((*(*a1 + 1088))(a1))
    {
      (*(*a1 + 1088))(a1);
      v4 = 1;
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANNANInterface::handleEventNANSubscribeTerminated(a1);
      }

      return v4;
    }

    return 1;
  }

  v6 = a2 + 48;
  v7 = v3 - 1 + a2 + 48;
  v8 = __CFADD__(v3 - 1, a2 + 48);
  if (*(a2 + 48) == 775)
  {
    v9 = *(a2 + 50);
    if (v9 < 8 || v9 + 4 > v3)
    {
      if (!(*(*a1 + 1088))(a1))
      {
        return 1;
      }

      (*(*a1 + 1088))(a1);
      v4 = 1;
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANNANInterface::handleEventNANSubscribeTerminated(a1);
      }
    }

    else if (v8 || (v12 = a2 + 52, a2 + 59 < v6) || (a2 + 52) >= 0xFFFFFFFFFFFFFFF9 || a2 + 59 > v7 || v6 > v12 || v7 < v12)
    {
      if (!(*(*a1 + 1088))(a1))
      {
        return 1;
      }

      (*(*a1 + 1088))(a1);
      v4 = 1;
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANNANInterface::handleEventNANSubscribeTerminated(a1);
      }
    }

    else
    {
      if (*(a2 + 54) == 1)
      {
        if ((*(*a1 + 1088))(a1))
        {
          (*(*a1 + 1088))(a1);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANNANInterface::handleEventNANSubscribeTerminated(a1);
          }
        }

        v13 = *(a2 + 52);
        IO80211Controller::postMessage(*(a1[17] + 64), a1, 0x69u, &v13, 2uLL, 1);
      }

      return 0;
    }
  }

  else
  {
    if (!(*(*a1 + 1088))(a1))
    {
      return 1;
    }

    (*(*a1 + 1088))(a1);
    v4 = 1;
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANNANInterface::handleEventNANSubscribeTerminated(a1);
    }
  }

  return v4;
}

uint64_t AppleBCMWLANNANInterface::handleEventNANDiscoveryResultReceived(uint64_t *a1, uint64_t a2)
{
  v3 = *(a2 + 20);
  if (v3 <= 3)
  {
    if ((*(*a1 + 1088))(a1))
    {
      (*(*a1 + 1088))(a1);
      v4 = 1;
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANNANInterface::handleEventNANDiscoveryResultReceived(a1);
      }

      return v4;
    }

    return 1;
  }

  v7 = a2 + 48;
  v6 = *(a2 + 48);
  v8 = v3 - 1 + a2 + 48;
  v9 = __CFADD__(v3 - 1, a2 + 48);
  v10 = a2 + 48;
  if (v6 != 778)
  {
    if (v6 == 512)
    {
      v13 = 24;
    }

    else
    {
      v13 = 16;
    }

    v14 = 50;
    if (v6 == 512)
    {
      v14 = 52;
    }

    v15 = *(a2 + v14);
    ChanSpecHandler = AppleBCMWLANCore::getChanSpecHandler(*(a1[17] + 64));
    AppleBCMWLANChanSpec::getAppleChannelSpec(ChanSpecHandler, bswap32(v15) >> 16);
    ChanSpecConvToApple80211Channel();
    v3 = *(a2 + 20);
    if (v3 < v13)
    {
      if (!(*(*a1 + 1088))(a1))
      {
        return 1;
      }

      (*(*a1 + 1088))(a1);
      v4 = 1;
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANNANInterface::handleEventNANDiscoveryResultReceived(a1);
      }

      return v4;
    }

    v10 = v7 + v13;
    if (*v10 != 778)
    {
      if (!(*(*a1 + 1088))(a1))
      {
        return 1;
      }

      (*(*a1 + 1088))(a1);
      v4 = 1;
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANNANInterface::handleEventNANDiscoveryResultReceived(a1);
      }

      return v4;
    }
  }

  v11 = *(v10 + 2);
  if (v11 < 0xC || v11 + 4 > v3)
  {
    if (!(*(*a1 + 1088))(a1))
    {
      return 1;
    }

    (*(*a1 + 1088))(a1);
    v4 = 1;
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANNANInterface::handleEventNANDiscoveryResultReceived(a1);
    }
  }

  else
  {
    if (!v9)
    {
      v18 = v10 + 4;
      if (v10 + 15 >= v7 && (v10 + 4) < 0xFFFFFFFFFFFFFFF5 && v10 + 15 <= v8 && v7 <= v18 && v8 >= v18)
      {
        v19 = *(v10 + 14);
        v20 = IOMallocZeroData();
        if (!v20)
        {
          return 12;
        }

        v21 = v20;
        if ((*(*a1 + 1088))(a1))
        {
          (*(*a1 + 1088))(a1);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANNANInterface::handleEventNANDiscoveryResultReceived(a1);
          }
        }

        v22 = &v21[v19 + 25];
        v23 = __CFADD__(v19 + 25, v21);
        v21[1] = *(v10 + 4);
        *v21 = *(v10 + 5);
        v21[8] = *(v10 + 12);
        *(v21 + 12) = 0;
        *(v21 + 5) = 0;
        v24 = (v10 + 6);
        if (v10 + 11 < v7 || (v10 + 6) >= 0xFFFFFFFFFFFFFFFBLL || v10 + 11 > v8 || v7 > v24 || v8 < v24)
        {
          if ((*(*a1 + 1088))(a1))
          {
            (*(*a1 + 1088))(a1);
            v4 = 1;
            if (CCLogStream::shouldLog())
            {
              AppleBCMWLANNANInterface::handleEventNANDiscoveryResultReceived(a1);
            }

            goto LABEL_91;
          }
        }

        else if (v23 || (v25 = v21 + 2, (v21 + 7) < v21) || (v21 + 2) >= 0xFFFFFFFFFFFFFFFBLL || (v21 + 7) > v22 || v21 > v25 || v22 < v25)
        {
          if ((*(*a1 + 1088))(a1))
          {
            (*(*a1 + 1088))(a1);
            v4 = 1;
            if (CCLogStream::shouldLog())
            {
              AppleBCMWLANNANInterface::handleEventNANDiscoveryResultReceived(a1);
            }

            goto LABEL_91;
          }
        }

        else
        {
          v26 = *v24;
          *(v21 + 3) = *(v10 + 10);
          *v25 = v26;
          v27 = *(v10 + 14);
          *(v21 + 12) = v27;
          if (!v27 || ((v28 = (v10 + 16), v29 = v27 - 1, v30 = v27 - 1 + v10 + 16, !__CFADD__(v27 - 1, v10 + 16)) ? (v31 = 0) : (v31 = 1), v30 < v7 || v31 || v30 > v8 || v7 > v28 || v8 < v28))
          {
            if ((*(*a1 + 1088))(a1))
            {
              (*(*a1 + 1088))(a1);
              v4 = 1;
              if (CCLogStream::shouldLog())
              {
                AppleBCMWLANNANInterface::handleEventNANDiscoveryResultReceived(a1);
              }

              goto LABEL_91;
            }
          }

          else
          {
            v32 = v21 + 26;
            v33 = __CFADD__(v29, v21 + 26);
            v34 = &v21[v29 + 26];
            v35 = v33;
            if (v34 >= v21 && !v35 && v34 <= v22 && v21 <= v32 && v22 >= v32)
            {
              memcpy(v32, v28, v27);
              IO80211Controller::postMessage(*(a1[17] + 64), a1, 0x64u, v21, v19 + 26, 1);
              v4 = 0;
LABEL_91:
              IOFreeData();
              return v4;
            }

            if ((*(*a1 + 1088))(a1))
            {
              (*(*a1 + 1088))(a1);
              v4 = 1;
              if (CCLogStream::shouldLog())
              {
                AppleBCMWLANNANInterface::handleEventNANDiscoveryResultReceived(a1);
              }

              goto LABEL_91;
            }
          }
        }

        v4 = 1;
        goto LABEL_91;
      }
    }

    if (!(*(*a1 + 1088))(a1))
    {
      return 1;
    }

    (*(*a1 + 1088))(a1);
    v4 = 1;
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANNANInterface::handleEventNANDiscoveryResultReceived(a1);
    }
  }

  return v4;
}

uint64_t AppleBCMWLANNANInterface::handleEventNANFollowupReceived(uint64_t *a1, uint64_t a2)
{
  v3 = *(a2 + 20);
  if (v3 <= 3)
  {
    if ((*(*a1 + 1088))(a1))
    {
      (*(*a1 + 1088))(a1);
      v4 = 1;
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANNANInterface::handleEventNANFollowupReceived(a1);
      }

      return v4;
    }

    return 1;
  }

  v7 = a2 + 48;
  v6 = *(a2 + 48);
  v8 = v3 - 1 + a2 + 48;
  v9 = __CFADD__(v3 - 1, a2 + 48);
  v10 = a2 + 48;
  if (v6 != 777)
  {
    if (v6 == 512)
    {
      v13 = 24;
    }

    else
    {
      v13 = 16;
    }

    v14 = 50;
    if (v6 == 512)
    {
      v14 = 52;
    }

    v15 = *(a2 + v14);
    ChanSpecHandler = AppleBCMWLANCore::getChanSpecHandler(*(a1[17] + 64));
    AppleBCMWLANChanSpec::getAppleChannelSpec(ChanSpecHandler, bswap32(v15) >> 16);
    ChanSpecConvToApple80211Channel();
    v3 = *(a2 + 20);
    if (v3 < v13)
    {
      if (!(*(*a1 + 1088))(a1))
      {
        return 1;
      }

      (*(*a1 + 1088))(a1);
      v4 = 1;
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANNANInterface::handleEventNANFollowupReceived(a1);
      }

      return v4;
    }

    v10 = v7 + v13;
    if (*v10 != 777)
    {
      if (!(*(*a1 + 1088))(a1))
      {
        return 1;
      }

      (*(*a1 + 1088))(a1);
      v4 = 1;
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANNANInterface::handleEventNANFollowupReceived(a1);
      }

      return v4;
    }
  }

  v11 = *(v10 + 2);
  if (v11 < 0xC || v11 + 4 > v3)
  {
    if (!(*(*a1 + 1088))(a1))
    {
      return 1;
    }

    (*(*a1 + 1088))(a1);
    v4 = 1;
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANNANInterface::handleEventNANFollowupReceived(a1);
    }
  }

  else
  {
    if (!v9)
    {
      v18 = (v10 + 4);
      if (v10 + 15 >= v7 && (v10 + 4) < 0xFFFFFFFFFFFFFFF5 && v10 + 15 <= v8 && v7 <= v18 && v8 >= v18)
      {
        v19 = *(v10 + 14);
        v20 = IOMallocZeroData();
        if (!v20)
        {
          return 12;
        }

        v21 = v20;
        if ((*(*a1 + 1088))(a1))
        {
          (*(*a1 + 1088))(a1);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANNANInterface::handleEventNANFollowupReceived(a1);
          }
        }

        v22 = &v21[v19 + 25];
        v23 = __CFADD__(v19 + 25, v21);
        *v21 = *(v10 + 10);
        v21[1] = *(v10 + 11);
        v21[8] = *(v10 + 12);
        *(v21 + 12) = 0;
        *(v21 + 5) = 0;
        if (v10 + 9 < v7 || v10 + 9 > v8)
        {
          if ((*(*a1 + 1088))(a1))
          {
            (*(*a1 + 1088))(a1);
            v4 = 1;
            if (CCLogStream::shouldLog())
            {
              AppleBCMWLANNANInterface::handleEventNANFollowupReceived(a1);
            }

            goto LABEL_92;
          }
        }

        else if (v23 || (v24 = v21 + 2, (v21 + 7) < v21) || (v21 + 2) >= 0xFFFFFFFFFFFFFFFBLL || (v21 + 7) > v22 || v21 > v24 || v22 < v24)
        {
          if ((*(*a1 + 1088))(a1))
          {
            (*(*a1 + 1088))(a1);
            v4 = 1;
            if (CCLogStream::shouldLog())
            {
              AppleBCMWLANNANInterface::handleEventNANFollowupReceived(a1);
            }

            goto LABEL_92;
          }
        }

        else
        {
          v25 = *v18;
          *(v21 + 3) = *(v10 + 8);
          *v24 = v25;
          v26 = *(v10 + 14);
          *(v21 + 12) = v26;
          if (!v26 || ((v27 = (v10 + 16), v28 = v26 - 1, v29 = v26 - 1 + v10 + 16, !__CFADD__(v26 - 1, v10 + 16)) ? (v30 = 0) : (v30 = 1), v29 < v7 || v30 || v29 > v8 || v7 > v27 || v8 < v27))
          {
            if ((*(*a1 + 1088))(a1))
            {
              (*(*a1 + 1088))(a1);
              v4 = 1;
              if (CCLogStream::shouldLog())
              {
                AppleBCMWLANNANInterface::handleEventNANFollowupReceived(a1);
              }

              goto LABEL_92;
            }
          }

          else
          {
            v31 = v21 + 26;
            v32 = __CFADD__(v28, v21 + 26);
            v33 = &v21[v28 + 26];
            v34 = v32;
            if (v33 >= v21 && !v34 && v33 <= v22 && v21 <= v31 && v22 >= v31)
            {
              memcpy(v21 + 26, v27, v26);
              v35 = 0;
              do
              {
                if (*v31 == 36)
                {
                  *(v31 + 97) = bswap32(*(v31 + 97)) >> 16;
                }

                v36 = *(v31 + 1) + 3;
                v31 += v36;
                v35 += v36;
              }

              while (v35 < *(v10 + 14));
              IO80211Controller::postMessage(*(a1[17] + 64), a1, 0x6Au, v21, v19 + 26, 1);
              v4 = 0;
              goto LABEL_92;
            }

            if ((*(*a1 + 1088))(a1))
            {
              (*(*a1 + 1088))(a1);
              v4 = 1;
              if (CCLogStream::shouldLog())
              {
                AppleBCMWLANNANInterface::handleEventNANFollowupReceived(a1);
              }

              goto LABEL_92;
            }
          }
        }

        v4 = 1;
LABEL_92:
        IOFreeData();
        return v4;
      }
    }

    if (!(*(*a1 + 1088))(a1))
    {
      return 1;
    }

    (*(*a1 + 1088))(a1);
    v4 = 1;
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANNANInterface::handleEventNANFollowupReceived(a1);
    }
  }

  return v4;
}

uint64_t AppleBCMWLANNANInterface::handleNANEventNAFTxComplete(uint64_t *a1, uint64_t a2)
{
  v3 = *(a2 + 20);
  if (v3 <= 3)
  {
    if ((*(*a1 + 1088))(a1))
    {
      (*(*a1 + 1088))(a1);
      v4 = 1;
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANNANInterface::handleNANEventNAFTxComplete(a1);
      }

      return v4;
    }

    return 1;
  }

  v6 = a2 + 48;
  v7 = v3 - 1 + a2 + 48;
  v8 = __CFADD__(v3 - 1, a2 + 48);
  if (*(a2 + 48) != 308)
  {
    if ((*(*a1 + 1088))(a1))
    {
      (*(*a1 + 1088))(a1);
      v4 = 1;
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANNANInterface::handleNANEventNAFTxComplete(a1);
      }

      return v4;
    }

    return 1;
  }

  v9 = *(a2 + 50);
  if (v9 < 8 || v9 + 4 > v3)
  {
    if ((*(*a1 + 1088))(a1))
    {
      (*(*a1 + 1088))(a1);
      v4 = 1;
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANNANInterface::handleNANEventNAFTxComplete(a1);
      }

      return v4;
    }

    return 1;
  }

  if (v8 || (v11 = (a2 + 52), a2 + 59 < v6) || (a2 + 52) >= 0xFFFFFFFFFFFFFFF9 || a2 + 59 > v7 || v6 > v11 || v7 < v11)
  {
    if ((*(*a1 + 1088))(a1))
    {
      (*(*a1 + 1088))(a1);
      v4 = 1;
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANNANInterface::handleNANEventNAFTxComplete(a1);
      }

      return v4;
    }

    return 1;
  }

  shouldLog = (*(*a1 + 1088))(a1);
  if (shouldLog)
  {
    (*(*a1 + 1088))(a1);
    shouldLog = CCLogStream::shouldLog();
    if (shouldLog)
    {
      shouldLog = AppleBCMWLANNANInterface::handleNANEventNAFTxComplete(a1);
    }
  }

  if (*v11 || (v13 = *(a2 + 53), (v13 - 2) > 2))
  {
    v14 = 0;
  }

  else
  {
    v14 = (v13 - 1);
  }

  if (!*(a2 + 58))
  {
    return 0;
  }

  v15 = 0;
  v16 = 0;
  v17 = 0;
  v18 = 0;
  v19 = (a2 + 60);
  while (1)
  {
    if (v19 + 5 < v6 || v19 >= 0xFFFFFFFFFFFFFFFBLL || v19 + 5 > v7 || v6 > v19 || v7 < v19)
    {
      if (!(*(*a1 + 1088))(a1))
      {
        return 1;
      }

      (*(*a1 + 1088))(a1);
      v4 = 1;
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANNANInterface::handleNANEventNAFTxComplete(a1);
      }

      return v4;
    }

    v24 = *v19;
    if (v24 <= 0x503)
    {
      if (v24 == 779)
      {
        v17 = v19 + 2;
        if (v19 + 5 < v6 || v19 == -5 || v19 + 5 > v7 || v6 > v17 || v7 < v17)
        {
          if (!(*(*a1 + 1088))(a1))
          {
            return 1;
          }

          (*(*a1 + 1088))(a1);
          v4 = 1;
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANNANInterface::handleNANEventNAFTxComplete(a1);
          }

          return v4;
        }
      }

      else if (v24 == 787)
      {
        v15 = v19 + 2;
        if (v19 + 9 < v6 || (v19 + 2) >= 0xFFFFFFFFFFFFFFFBLL || v19 + 9 > v7 || v6 > v15 || v7 < v15)
        {
          if (!(*(*a1 + 1088))(a1))
          {
            return 1;
          }

          (*(*a1 + 1088))(a1);
          v4 = 1;
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANNANInterface::handleNANEventNAFTxComplete(a1);
          }

          return v4;
        }
      }

      goto LABEL_79;
    }

    if (v24 != 1284)
    {
      break;
    }

    v16 = v19 + 2;
    if (v19 + 11 < v6 || (v19 + 2) >= 0xFFFFFFFFFFFFFFF9 || v19 + 11 > v7 || v6 > v16 || v7 < v16)
    {
      if (!(*(*a1 + 1088))(a1))
      {
        return 1;
      }

      (*(*a1 + 1088))(a1);
      v4 = 1;
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANNANInterface::handleNANEventNAFTxComplete(a1);
      }

      return v4;
    }

LABEL_79:
    v26 = ((v19[1] + 3) & 0x1FFFC) + 4;
    v18 += v26;
    v19 = (v19 + v26);
    if (*(a2 + 58) <= v18)
    {
      if (v16)
      {
        v30 = 0;
        *(&v31 + 4) = 0;
        LODWORD(v31) = v14;
        BYTE4(v31) = *v16;
        AppleBCMWLANNANInterface::convertNANFWFrameType(shouldLog, *(a2 + 56), &v30, &v31 + 11);
        v27 = *(v16 + 1);
        *(&v31 + 9) = v16[3];
        *(&v31 + 5) = v27;
        IO80211Controller::postMessage(*(a1[17] + 64), a1, 0x74u, &v31, 0xCuLL, 1);
      }

      if (v17)
      {
        v31 = 0uLL;
        v32 = 0;
        DWORD1(v31) = *(a2 + 54);
        DWORD2(v31) = v14;
        LOWORD(v31) = *v17;
        if (v15)
        {
          v28 = *v15;
          LOWORD(v32) = v15[2];
          HIDWORD(v31) = v28;
        }

        IO80211Controller::postMessage(*(a1[17] + 64), a1, 0x63u, &v31, 0x14uLL, 1);
      }

      return 0;
    }
  }

  if (v24 != 1794)
  {
    goto LABEL_79;
  }

  v25 = v19 + 2;
  if (v19 + 7 >= v6 && (v19 + 2) < 0xFFFFFFFFFFFFFFFDLL && v19 + 7 <= v7 && v6 <= v25 && v7 >= v25)
  {
    goto LABEL_79;
  }

  if (!(*(*a1 + 1088))(a1))
  {
    return 1;
  }

  (*(*a1 + 1088))(a1);
  v4 = 1;
  if (CCLogStream::shouldLog())
  {
    AppleBCMWLANNANInterface::handleNANEventNAFTxComplete(a1);
  }

  return v4;
}

uint64_t AppleBCMWLANNANInterface::handleNANEventBeaconReceived(uint64_t *a1, uint64_t a2)
{
  v3 = *(a2 + 20);
  if (v3 <= 0x10)
  {
    if ((*(*a1 + 1088))(a1))
    {
      (*(*a1 + 1088))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANNANInterface::handleNANEventBeaconReceived(a1);
      }
    }

    return 22;
  }

  v6 = a2 + 48;
  v7 = v3 - 1 + a2 + 48;
  if (!__CFADD__(v3 - 1, a2 + 48))
  {
    v8 = a2 + 63;
    if (v8 >= v6 && v6 < 0xFFFFFFFFFFFFFFF1 && v8 <= v7 && v7 >= v6)
    {
      v47 = 0;
      v46 = 0u;
      v45 = 0u;
      memset(v44, 0, sizeof(v44));
      v42 = *(a2 + 24);
      v43 = *(a2 + 28);
      if (*(a2 + 48) != 512)
      {
        v10 = 50;
        v11 = 64;
        v12 = 56;
        v13 = 60;
        v14 = 52;
LABEL_23:
        v15 = bswap32(*(a2 + v14));
        v16 = bswap32(*(a2 + v13));
        v17 = *(a2 + v12);
        *(&v45 + 2) = v16;
        *(&v45 + 6) = v15;
        *(&v45 + 10) = bswap32(v17);
        v18 = a2 + v11;
        ChanSpecHandler = AppleBCMWLANCore::getChanSpecHandler(*(a1[17] + 64));
        AppleBCMWLANChanSpec::getAppleChannelSpec(ChanSpecHandler, bswap32(*(a2 + v10)) >> 16);
        v20 = v18 + 5;
        if (v18 >= 0xFFFFFFFFFFFFFFFBLL || v20 < v6 || v20 > v7 || v6 > v18 || v7 < v18)
        {
          if ((*(*a1 + 1088))(a1))
          {
            (*(*a1 + 1088))(a1);
            if (CCLogStream::shouldLog())
            {
              AppleBCMWLANNANInterface::handleNANEventBeaconReceived(a1);
            }
          }

          return 22;
        }

        if (*v18 != 1025)
        {
          if ((*(*a1 + 1088))(a1))
          {
            (*(*a1 + 1088))(a1);
            if (CCLogStream::shouldLog())
            {
              AppleBCMWLANNANInterface::handleNANEventBeaconReceived(a1);
            }
          }

          return 22;
        }

        v21 = *(v18 + 2);
        v22 = IOMallocZeroData();
        if (!v22)
        {
          return 12;
        }

        v23 = v22;
        v41 = v21 + 29 + v22;
        v24 = __CFADD__(v21 + 29, v22);
        *v22 = v15;
        *(v22 + 16) = v16;
        ChanSpecConvToApple80211Channel();
        v25 = v18 + 4;
        v26 = v18 + 15;
        if ((v18 + 4) >= 0xFFFFFFFFFFFFFFF5 || v26 < v6 || v26 > v7 || v6 > v25 || v7 < v25)
        {
          if ((*(*a1 + 1088))(a1))
          {
            (*(*a1 + 1088))(a1);
            if (CCLogStream::shouldLog())
            {
              AppleBCMWLANNANInterface::handleNANEventBeaconReceived(a1);
            }
          }
        }

        else
        {
          *(v23 + 20) = vrev64_s32(*(v18 + 4));
          v27 = *(v18 + 12);
          *(v23 + 28) = v27;
          if (!v27 || (v28 = (v18 + 16), v29 = v27 - 1, v30 = &v28[v27 - 1], __CFADD__(v27 - 1, v28)) || v30 < v6 || v30 > v7 || v6 > v28 || v7 < v28)
          {
            if ((*(*a1 + 1088))(a1))
            {
              (*(*a1 + 1088))(a1);
              if (CCLogStream::shouldLog())
              {
                AppleBCMWLANNANInterface::handleNANEventBeaconReceived(a1);
              }
            }
          }

          else if (v24 || ((v32 = (v23 + 30), v33 = __CFADD__(v29, v23 + 30), v34 = v29 + v23 + 30, !v33) ? (v35 = 0) : (v35 = 1), v34 < v23 || v35 || v34 > v41 || v23 > v32 || v41 < v32))
          {
            if ((*(*a1 + 1088))(a1))
            {
              (*(*a1 + 1088))(a1);
              if (CCLogStream::shouldLog())
              {
                AppleBCMWLANNANInterface::handleNANEventBeaconReceived(a1);
              }
            }
          }

          else
          {
            memcpy(v32, v28, v27);
            IO80211Controller::postMessage(*(a1[17] + 64), a1, 0x62u, v23, v21 + 18, 1);
            v36 = *(v23 + 4);
            *(v44 + 14) = *(v23 + 12);
            *(v44 + 6) = v36;
            v37 = *(v23 + 28);
            MgmtFramePool = IO80211VirtualInterface::getMgmtFramePool(a1);
            v39 = (*(*MgmtFramePool + 56))(MgmtFramePool);
            if (v39)
            {
              v40 = v39;
              if (IO80211Buffer::writeBytes(v39, 0, v28, v37))
              {
                IO80211Buffer::setLength(v40, v37);
                IO80211VirtualInterface::bpfTapInput(a1, v40, 0xCu, &v42, 0x48uLL);
                v4 = 0;
                goto LABEL_71;
              }

              if ((*(*a1 + 1088))(a1))
              {
                (*(*a1 + 1088))(a1);
                if (CCLogStream::shouldLog())
                {
                  AppleBCMWLANNANInterface::handleNANEventBeaconReceived(a1);
                }
              }

              IO80211Buffer::returnBuffer(v40);
            }

            else if ((*(*a1 + 1088))(a1))
            {
              (*(*a1 + 1088))(a1);
              if (CCLogStream::shouldLog())
              {
                AppleBCMWLANNANInterface::handleNANEventBeaconReceived(a1);
              }
            }
          }
        }

        v4 = 22;
LABEL_71:
        IOFreeData();
        return v4;
      }

      if (v3 <= 0x18)
      {
        if ((*(*a1 + 1088))(a1))
        {
          (*(*a1 + 1088))(a1);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANNANInterface::handleNANEventBeaconReceived(a1);
          }
        }

        return 22;
      }

      if (a2 + 71 >= v6 && v6 < 0xFFFFFFFFFFFFFFE9 && a2 + 71 <= v7)
      {
        v10 = 52;
        v11 = 72;
        v12 = 60;
        v13 = 64;
        v14 = 56;
        goto LABEL_23;
      }

      if ((*(*a1 + 1088))(a1))
      {
        (*(*a1 + 1088))(a1);
        v4 = 1;
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANNANInterface::handleNANEventBeaconReceived(a1);
        }

        return v4;
      }

      return 1;
    }
  }

  if (!(*(*a1 + 1088))(a1))
  {
    return 1;
  }

  (*(*a1 + 1088))(a1);
  v4 = 1;
  if (CCLogStream::shouldLog())
  {
    AppleBCMWLANNANInterface::handleNANEventBeaconReceived(a1);
  }

  return v4;
}

uint64_t AppleBCMWLANNANInterface::handleNANEventPeerDataPathIndication(uint64_t *a1, uint64_t a2)
{
  v3 = *(a2 + 20);
  if (v3 <= 3)
  {
    if ((*(*a1 + 1088))(a1))
    {
      (*(*a1 + 1088))(a1);
      v4 = 1;
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANNANInterface::handleNANEventPeerDataPathIndication(a1);
      }

      return v4;
    }

    return 1;
  }

  v6 = a2 + 48;
  v7 = v3 - 1 + a2 + 48;
  v8 = __CFADD__(v3 - 1, a2 + 48);
  if (*(a2 + 48) == 1282)
  {
    v9 = *(a2 + 50);
    if (v9 < 0x24 || v9 + 4 > v3)
    {
      if (!(*(*a1 + 1088))(a1))
      {
        return 1;
      }

      (*(*a1 + 1088))(a1);
      v4 = 1;
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANNANInterface::handleNANEventPeerDataPathIndication(a1);
      }
    }

    else
    {
      if (!v8)
      {
        v11 = a2 + 52;
        if (a2 + 87 >= v6 && (a2 + 52) < 0xFFFFFFFFFFFFFFDDLL && a2 + 87 <= v7 && v6 <= v11 && v7 >= v11)
        {
          if (*(a2 + 86))
          {
            v12 = 0;
            v13 = (a2 + 88);
            v14 = 18;
            while (1)
            {
              v15 = v13 + 5 >= v6 && v13 < 0xFFFFFFFFFFFFFFFBLL;
              v16 = v15 && v13 + 5 <= v7;
              v17 = v16 && v6 <= v13;
              if (!v17 || v7 < v13)
              {
                break;
              }

              v19 = v13[1];
              if (*v13 == 774)
              {
                if (v19 <= 7)
                {
                  v14 = 18;
                }

                else
                {
                  v14 = v19 + 11;
                }

                v21 = 1;
                goto LABEL_57;
              }

              v20 = ((v19 + 3) & 0x1FFFC) + 4;
              v12 += v20;
              v13 = (v13 + v20);
              if (*(a2 + 86) <= v12)
              {
                v21 = 0;
                v13 = 0;
                goto LABEL_57;
              }
            }

            if (!(*(*a1 + 1088))(a1))
            {
              return 1;
            }

            (*(*a1 + 1088))(a1);
            v4 = 1;
            if (CCLogStream::shouldLog())
            {
              AppleBCMWLANNANInterface::handleNANEventPeerDataPathIndication(a1);
            }

            return v4;
          }

          v21 = 0;
          v13 = 0;
          v14 = 18;
LABEL_57:
          v23 = IOMallocZeroData();
          if (!v23)
          {
            return 12;
          }

          v24 = v23;
          v25 = v14 - 1 + v23;
          if (__CFADD__(v14 - 1, v23) || (v26 = v23 + 17, v26 < v23 || v23 >= 0xFFFFFFFFFFFFFFEFLL || v26 > v25 || v25 < v23))
          {
            if ((*(*a1 + 1088))(a1))
            {
              (*(*a1 + 1088))(a1);
              v4 = 1;
              if (CCLogStream::shouldLog())
              {
                AppleBCMWLANNANInterface::handleNANEventPeerDataPathIndication(a1);
              }

              goto LABEL_101;
            }
          }

          else
          {
            *v23 = *(a2 + 53);
            *(v23 + 1) = *(a2 + 54);
            *(v23 + 2) = *(a2 + 55);
            v27 = (a2 + 68);
            if (a2 + 73 < v6 || (a2 + 68) >= 0xFFFFFFFFFFFFFFFBLL || a2 + 73 > v7 || v6 > v27 || v7 < v27)
            {
              if ((*(*a1 + 1088))(a1))
              {
                (*(*a1 + 1088))(a1);
                v4 = 1;
                if (CCLogStream::shouldLog())
                {
                  AppleBCMWLANNANInterface::handleNANEventPeerDataPathIndication(a1);
                }

                goto LABEL_101;
              }
            }

            else
            {
              v28 = *v27;
              *(v23 + 7) = *(a2 + 72);
              *(v23 + 3) = v28;
              v29 = (a2 + 56);
              if (a2 + 61 < v6 || (a2 + 56) >= 0xFFFFFFFFFFFFFFFBLL || a2 + 61 > v7 || v6 > v29 || v7 < v29)
              {
                if ((*(*a1 + 1088))(a1))
                {
                  (*(*a1 + 1088))(a1);
                  v4 = 1;
                  if (CCLogStream::shouldLog())
                  {
                    AppleBCMWLANNANInterface::handleNANEventPeerDataPathIndication(a1);
                  }

                  goto LABEL_101;
                }
              }

              else
              {
                v30 = *v29;
                *(v23 + 13) = *(a2 + 60);
                *(v23 + 9) = v30;
                if (!v21)
                {
LABEL_111:
                  IO80211Controller::postMessage(*(a1[17] + 64), a1, 0x70u, v24, v14, 1);
                  v4 = 0;
                  goto LABEL_101;
                }

                v31 = v13 + 2;
                if ((v13 + 5) < v6 || (v13 + 2) >= 0xFFFFFFFFFFFFFFFALL || (v13 + 5) > v7 || v6 > v31 || v7 < v31)
                {
                  if ((*(*a1 + 1088))(a1))
                  {
                    (*(*a1 + 1088))(a1);
                    v4 = 1;
                    if (CCLogStream::shouldLog())
                    {
                      AppleBCMWLANNANInterface::handleNANEventPeerDataPathIndication(a1);
                    }

                    goto LABEL_101;
                  }
                }

                else
                {
                  v32 = v13[1];
                  if (v32 >= 7)
                  {
                    v33 = v32 - 7;
                  }

                  else
                  {
                    v33 = 0;
                  }

                  *(v23 + 16) = v33;
                  if (v32 >= 8)
                  {
                    v34 = v13 + 11;
                    v35 = v13 + v33 + 10;
                    v36 = __CFADD__(v33 - 1, v13 + 11);
                    if (v35 >= v6 && !v36 && v35 <= v7 && v6 <= v34 && v7 >= v34)
                    {
                      memcpy((v23 + 18), v34, v33);
                      goto LABEL_111;
                    }
                  }

                  if ((*(*a1 + 1088))(a1))
                  {
                    (*(*a1 + 1088))(a1);
                    v4 = 1;
                    if (CCLogStream::shouldLog())
                    {
                      AppleBCMWLANNANInterface::handleNANEventPeerDataPathIndication(a1);
                    }

                    goto LABEL_101;
                  }
                }
              }
            }
          }

          v4 = 1;
LABEL_101:
          IOFreeData();
          return v4;
        }
      }

      if (!(*(*a1 + 1088))(a1))
      {
        return 1;
      }

      (*(*a1 + 1088))(a1);
      v4 = 1;
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANNANInterface::handleNANEventPeerDataPathIndication(a1);
      }
    }
  }

  else
  {
    if (!(*(*a1 + 1088))(a1))
    {
      return 1;
    }

    (*(*a1 + 1088))(a1);
    v4 = 1;
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANNANInterface::handleNANEventPeerDataPathIndication(a1);
    }
  }

  return v4;
}

uint64_t AppleBCMWLANNANInterface::handleNANEventPeerDataPathResponse(uint64_t *a1, uint64_t a2)
{
  v3 = *(a2 + 20);
  if (v3 <= 3)
  {
    if ((*(*a1 + 1088))(a1))
    {
      (*(*a1 + 1088))(a1);
      v4 = 1;
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANNANInterface::handleNANEventPeerDataPathResponse(a1);
      }

      return v4;
    }

    return 1;
  }

  v6 = a2 + 48;
  v7 = v3 - 1 + a2 + 48;
  v8 = __CFADD__(v3 - 1, a2 + 48);
  if (*(a2 + 48) == 1282)
  {
    v9 = *(a2 + 50);
    if (v9 < 0x24 || v9 + 4 > v3)
    {
      if (!(*(*a1 + 1088))(a1))
      {
        return 1;
      }

      (*(*a1 + 1088))(a1);
      v4 = 1;
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANNANInterface::handleNANEventPeerDataPathResponse(a1);
      }
    }

    else
    {
      if (!v8)
      {
        v11 = a2 + 52;
        if (a2 + 87 >= v6 && (a2 + 52) < 0xFFFFFFFFFFFFFFDDLL && a2 + 87 <= v7 && v6 <= v11 && v7 >= v11)
        {
          if (*(a2 + 86))
          {
            v12 = 0;
            v13 = (a2 + 88);
            v14 = 22;
            while (1)
            {
              v15 = v13 + 5 >= v6 && v13 < 0xFFFFFFFFFFFFFFFBLL;
              v16 = v15 && v13 + 5 <= v7;
              v17 = v16 && v6 <= v13;
              if (!v17 || v7 < v13)
              {
                break;
              }

              v19 = v13[1];
              if (*v13 == 774)
              {
                if (v19 <= 7)
                {
                  v14 = 22;
                }

                else
                {
                  v14 = v19 + 15;
                }

                v21 = 1;
                goto LABEL_57;
              }

              v20 = ((v19 + 3) & 0x1FFFC) + 4;
              v12 += v20;
              v13 = (v13 + v20);
              if (*(a2 + 86) <= v12)
              {
                v21 = 0;
                v13 = 0;
                goto LABEL_57;
              }
            }

            if (!(*(*a1 + 1088))(a1))
            {
              return 1;
            }

            (*(*a1 + 1088))(a1);
            v4 = 1;
            if (CCLogStream::shouldLog())
            {
              AppleBCMWLANNANInterface::handleNANEventPeerDataPathResponse(a1);
            }

            return v4;
          }

          v21 = 0;
          v13 = 0;
          v14 = 22;
LABEL_57:
          v23 = IOMallocZeroData();
          if (!v23)
          {
            return 12;
          }

          v24 = v23;
          v25 = v14 - 1 + v23;
          if (__CFADD__(v14 - 1, v23) || (v26 = v23 + 21, v26 < v23 || v23 >= 0xFFFFFFFFFFFFFFEBLL || v26 > v25 || v25 < v23))
          {
            if ((*(*a1 + 1088))(a1))
            {
              (*(*a1 + 1088))(a1);
              v4 = 1;
              if (CCLogStream::shouldLog())
              {
                AppleBCMWLANNANInterface::handleNANEventPeerDataPathResponse(a1);
              }

              goto LABEL_95;
            }
          }

          else
          {
            *v23 = *(a2 + 53);
            *(v23 + 1) = *(a2 + 54);
            v27 = *(a2 + 56);
            *(v23 + 6) = *(a2 + 60);
            *(v23 + 2) = v27;
            v28 = *(a2 + 68);
            *(v23 + 12) = *(a2 + 72);
            *(v23 + 8) = v28;
            v29 = *(a2 + 62);
            *(v23 + 18) = *(a2 + 66);
            *(v23 + 14) = v29;
            if (!v21)
            {
LABEL_94:
              IO80211Controller::postMessage(*(a1[17] + 64), a1, 0x71u, v24, v14, 1);
              v4 = 0;
              goto LABEL_95;
            }

            v30 = v13 + 2;
            if ((v13 + 5) < v6 || (v13 + 2) >= 0xFFFFFFFFFFFFFFFALL || (v13 + 5) > v7 || v6 > v30 || v7 < v30)
            {
              if ((*(*a1 + 1088))(a1))
              {
                (*(*a1 + 1088))(a1);
                v4 = 1;
                if (CCLogStream::shouldLog())
                {
                  AppleBCMWLANNANInterface::handleNANEventPeerDataPathResponse(a1);
                }

                goto LABEL_95;
              }
            }

            else
            {
              v31 = v13[1];
              if (v31 >= 7)
              {
                v32 = v31 - 7;
              }

              else
              {
                v32 = 0;
              }

              *(v23 + 20) = v32;
              if (v31 >= 8)
              {
                v33 = v13 + 11;
                v34 = v13 + v32 + 10;
                v35 = __CFADD__(v32 - 1, v13 + 11);
                if (v34 >= v6 && !v35 && v34 <= v7 && v6 <= v33 && v7 >= v33)
                {
                  memcpy((v23 + 22), v33, v32);
                  goto LABEL_94;
                }
              }

              if ((*(*a1 + 1088))(a1))
              {
                (*(*a1 + 1088))(a1);
                v4 = 1;
                if (CCLogStream::shouldLog())
                {
                  AppleBCMWLANNANInterface::handleNANEventPeerDataPathResponse(a1);
                }

                goto LABEL_95;
              }
            }
          }

          v4 = 1;
LABEL_95:
          IOFreeData();
          return v4;
        }
      }

      if (!(*(*a1 + 1088))(a1))
      {
        return 1;
      }

      (*(*a1 + 1088))(a1);
      v4 = 1;
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANNANInterface::handleNANEventPeerDataPathResponse(a1);
      }
    }
  }

  else
  {
    if (!(*(*a1 + 1088))(a1))
    {
      return 1;
    }

    (*(*a1 + 1088))(a1);
    v4 = 1;
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANNANInterface::handleNANEventPeerDataPathResponse(a1);
    }
  }

  return v4;
}

uint64_t AppleBCMWLANNANInterface::handleNANEventPeerDataPathConfirm(uint64_t *a1, uint64_t a2)
{
  v3 = *(a2 + 20);
  if (v3 <= 3)
  {
    if ((*(*a1 + 1088))(a1))
    {
      (*(*a1 + 1088))(a1);
      v4 = 1;
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANNANInterface::handleNANEventPeerDataPathConfirm(a1);
      }

      return v4;
    }

    return 1;
  }

  v6 = a2 + 48;
  v7 = v3 - 1 + a2 + 48;
  v8 = __CFADD__(v3 - 1, a2 + 48);
  if (*(a2 + 48) == 1282)
  {
    v9 = *(a2 + 50);
    if (v9 < 0x24 || v9 + 4 > v3)
    {
      if (!(*(*a1 + 1088))(a1))
      {
        return 1;
      }

      (*(*a1 + 1088))(a1);
      v4 = 1;
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANNANInterface::handleNANEventPeerDataPathConfirm(a1);
      }
    }

    else if (v8 || (v11 = a2 + 52, a2 + 87 < v6) || (a2 + 52) >= 0xFFFFFFFFFFFFFFDDLL || a2 + 87 > v7 || v6 > v11 || v7 < v11)
    {
      if (!(*(*a1 + 1088))(a1))
      {
        return 1;
      }

      (*(*a1 + 1088))(a1);
      v4 = 1;
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANNANInterface::handleNANEventPeerDataPathConfirm(a1);
      }
    }

    else
    {
      v12 = (a2 + 88);
      if (a2 + 93 < v6 || (a2 + 88) >= 0xFFFFFFFFFFFFFFFBLL || a2 + 93 > v7 || v6 > v12 || v7 < v12)
      {
        if (!(*(*a1 + 1088))(a1))
        {
          return 1;
        }

        (*(*a1 + 1088))(a1);
        v4 = 1;
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANNANInterface::handleNANEventPeerDataPathConfirm(a1);
        }
      }

      else
      {
        if (*v12 == 774)
        {
          v13 = *(a2 + 90);
          v14 = IOMallocZeroData();
          if (!v14)
          {
            return 12;
          }

          v15 = v14;
          v16 = v13 + 8 + v14;
          if (__CFADD__(v13 + 8, v14) || (v18 = v14 + 15, v18 < v14 || v14 >= 0xFFFFFFFFFFFFFFF1 || v18 > v16 || v16 < v14))
          {
            if ((*(*a1 + 1088))(a1))
            {
              (*(*a1 + 1088))(a1);
              v4 = 1;
              if (CCLogStream::shouldLog())
              {
                AppleBCMWLANNANInterface::handleNANEventPeerDataPathConfirm(a1);
              }

              goto LABEL_115;
            }
          }

          else
          {
            *v14 = *(a2 + 53);
            *(v14 + 1) = *(a2 + 74);
            v19 = (a2 + 68);
            if (a2 + 73 < v6 || (a2 + 68) >= 0xFFFFFFFFFFFFFFFBLL || a2 + 73 > v7 || v6 > v19 || v7 < v19)
            {
              if ((*(*a1 + 1088))(a1))
              {
                (*(*a1 + 1088))(a1);
                v4 = 1;
                if (CCLogStream::shouldLog())
                {
                  AppleBCMWLANNANInterface::handleNANEventPeerDataPathConfirm(a1);
                }

                goto LABEL_115;
              }
            }

            else
            {
              v20 = (v14 + 2);
              if (v14 + 7 < v14 || (v14 + 2) >= 0xFFFFFFFFFFFFFFFBLL || v14 + 7 > v16 || v14 > v20 || v16 < v20)
              {
                if ((*(*a1 + 1088))(a1))
                {
                  (*(*a1 + 1088))(a1);
                  v4 = 1;
                  if (CCLogStream::shouldLog())
                  {
                    AppleBCMWLANNANInterface::handleNANEventPeerDataPathConfirm(a1);
                  }

                  goto LABEL_115;
                }
              }

              else
              {
                v21 = *v19;
                *(v14 + 6) = *(a2 + 72);
                *v20 = v21;
                v22 = (a2 + 56);
                if (a2 + 61 < v6 || (a2 + 56) >= 0xFFFFFFFFFFFFFFFBLL || a2 + 61 > v7 || v6 > v22 || v7 < v22)
                {
                  if ((*(*a1 + 1088))(a1))
                  {
                    (*(*a1 + 1088))(a1);
                    v4 = 1;
                    if (CCLogStream::shouldLog())
                    {
                      AppleBCMWLANNANInterface::handleNANEventPeerDataPathConfirm(a1);
                    }

                    goto LABEL_115;
                  }
                }

                else
                {
                  v23 = (v14 + 8);
                  if (v14 + 13 < v14 || (v14 + 8) >= 0xFFFFFFFFFFFFFFFBLL || v14 + 13 > v16 || v14 > v23 || v16 < v23)
                  {
                    if ((*(*a1 + 1088))(a1))
                    {
                      (*(*a1 + 1088))(a1);
                      v4 = 1;
                      if (CCLogStream::shouldLog())
                      {
                        AppleBCMWLANNANInterface::handleNANEventPeerDataPathConfirm(a1);
                      }

                      goto LABEL_115;
                    }
                  }

                  else
                  {
                    v24 = *v22;
                    *(v14 + 12) = *(a2 + 60);
                    *v23 = v24;
                    v25 = *(a2 + 90);
                    if (v25 > 6)
                    {
                      v26 = v25 - 7;
                      *(v14 + 14) = v26;
                      if (!v26 || ((v27 = (a2 + 99), v28 = v26, v29 = v26 - 1, v30 = v29 + a2 + 99, !__CFADD__(v29, a2 + 99)) ? (v31 = 0) : (v31 = 1), v30 < v6 || v31 || v30 > v7 || v6 > v27 || v7 < v27))
                      {
                        if ((*(*a1 + 1088))(a1))
                        {
                          (*(*a1 + 1088))(a1);
                          v4 = 1;
                          if (CCLogStream::shouldLog())
                          {
                            AppleBCMWLANNANInterface::handleNANEventPeerDataPathConfirm(a1);
                          }

                          goto LABEL_115;
                        }
                      }

                      else
                      {
                        v32 = (v14 + 16);
                        v33 = __CFADD__(v29, v15 + 16);
                        v34 = &v15[v29 + 16];
                        v35 = v33;
                        if (v34 >= v15 && !v35 && v34 <= v16 && v15 <= v32 && v16 >= v32)
                        {
                          memcpy(v32, v27, v28);
                          IO80211Controller::postMessage(*(a1[17] + 64), a1, 0x72u, v15, v13 + 9, 1);
                          v4 = 0;
LABEL_115:
                          IOFreeData();
                          return v4;
                        }

                        if ((*(*a1 + 1088))(a1))
                        {
                          (*(*a1 + 1088))(a1);
                          v4 = 1;
                          if (CCLogStream::shouldLog())
                          {
                            AppleBCMWLANNANInterface::handleNANEventPeerDataPathConfirm(a1);
                          }

                          goto LABEL_115;
                        }
                      }
                    }

                    else if ((*(*a1 + 1088))(a1))
                    {
                      (*(*a1 + 1088))(a1);
                      v4 = 1;
                      if (CCLogStream::shouldLog())
                      {
                        AppleBCMWLANNANInterface::handleNANEventPeerDataPathConfirm(a1);
                      }

                      goto LABEL_115;
                    }
                  }
                }
              }
            }
          }

          v4 = 1;
          goto LABEL_115;
        }

        if (!(*(*a1 + 1088))(a1))
        {
          return 1;
        }

        (*(*a1 + 1088))(a1);
        v4 = 1;
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANNANInterface::handleNANEventPeerDataPathConfirm(a1);
        }
      }
    }
  }

  else
  {
    if (!(*(*a1 + 1088))(a1))
    {
      return 1;
    }

    (*(*a1 + 1088))(a1);
    v4 = 1;
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANNANInterface::handleNANEventPeerDataPathConfirm(a1);
    }
  }

  return v4;
}

uint64_t AppleBCMWLANNANInterface::handleNANEventDataPathEstablished(uint64_t *a1, uint64_t a2)
{
  v3 = *(a2 + 20);
  if (v3 <= 3)
  {
    if ((*(*a1 + 1088))(a1))
    {
      (*(*a1 + 1088))(a1);
      v4 = 1;
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANNANInterface::handleNANEventDataPathEstablished(a1);
      }

      return v4;
    }

    return 1;
  }

  v6 = a2 + 48;
  v7 = v3 - 1 + a2 + 48;
  v8 = __CFADD__(v3 - 1, a2 + 48);
  if (*(a2 + 48) == 1282)
  {
    v9 = *(a2 + 50);
    if (v9 < 0x24 || v9 + 4 > v3)
    {
      if (!(*(*a1 + 1088))(a1))
      {
        return 1;
      }

      (*(*a1 + 1088))(a1);
      v4 = 1;
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANNANInterface::handleNANEventDataPathEstablished(a1);
      }
    }

    else if (v8 || (v12 = a2 + 52, a2 + 87 < v6) || (a2 + 52) >= 0xFFFFFFFFFFFFFFDDLL || a2 + 87 > v7 || v6 > v12 || v7 < v12)
    {
      if (!(*(*a1 + 1088))(a1))
      {
        return 1;
      }

      (*(*a1 + 1088))(a1);
      v4 = 1;
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANNANInterface::handleNANEventDataPathEstablished(a1);
      }
    }

    else
    {
      Bus = AppleBCMWLANCore::getBus(*(a1[17] + 64));
      v14 = (*(*Bus + 368))(Bus);
      if ((*(a2 + 74) & 0x10) == 0 && ((v15 = v14, (v14 - 4357) <= 0x15) ? (v16 = ((1 << (v14 - 5)) & 0x300001) == 0) : (v16 = 1), v16))
      {
        if ((*(a2 + 74) & 0x20) != 0)
        {
          AppleBCMWLANNANInterface::postEventNANDataPathEnd(a1, a2 + 52, 19);
        }

        else if ((*(*a1 + 1088))(a1))
        {
          (*(*a1 + 1088))(a1);
          if (CCLogStream::shouldLog())
          {
            v17 = (*(*a1 + 1088))(a1);
            CCLogStream::logAlert(v17, "[dk] %s@%d:Datapath Established event received on chip:%u with unknown status: %u, not notifying IO80211\n", "handleNANEventDataPathEstablished", 1793, v15, *(a2 + 74));
          }
        }
      }

      else
      {
        bzero(&v25 + 1, 0x80CuLL);
        if ((*(*a1 + 1088))(a1))
        {
          (*(*a1 + 1088))(a1);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANNANInterface::handleNANEventDataPathEstablished(a1);
          }
        }

        v18 = *(a2 + 52);
        v19 = *(a2 + 54);
        v20 = *(a2 + 56);
        v21 = *(a2 + 60);
        v22 = *(a2 + 62);
        v23 = *(a2 + 66);
        v25 = *(a2 + 72);
        v24 = *(a2 + 68);
        IO80211Controller::postMessage(*(a1[17] + 64), a1, 0x75u, &v18, 0x820uLL, 1);
        if (*(a1[17] + 92) == 1)
        {
          if ((*(*a1 + 1088))(a1))
          {
            (*(*a1 + 1088))(a1);
            if (CCLogStream::shouldLog())
            {
              AppleBCMWLANNANInterface::handleNANEventDataPathEstablished(a1);
            }
          }

          AppleBCMWLANCore::setBTCSlottedBssPolicy(*(a1[17] + 64));
        }
      }

      return 0;
    }
  }

  else
  {
    if (!(*(*a1 + 1088))(a1))
    {
      return 1;
    }

    (*(*a1 + 1088))(a1);
    v4 = 1;
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANNANInterface::handleNANEventDataPathEstablished(a1);
    }
  }

  return v4;
}

uint64_t AppleBCMWLANNANInterface::handleNANEventDataPathEnd(uint64_t *a1, uint64_t a2)
{
  v3 = *(a2 + 20);
  if (v3 <= 3)
  {
    if ((*(*a1 + 1088))(a1))
    {
      (*(*a1 + 1088))(a1);
      v4 = 1;
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANNANInterface::handleNANEventDataPathEnd(a1);
      }

      return v4;
    }

    return 1;
  }

  v5 = a2 + 48;
  v6 = v3 - 1 + a2 + 48;
  v7 = __CFADD__(v3 - 1, a2 + 48);
  if (*(a2 + 48) == 1282)
  {
    v8 = *(a2 + 50);
    if (v8 < 0x24 || v8 + 4 > v3)
    {
      if (!(*(*a1 + 1088))(a1))
      {
        return 1;
      }

      (*(*a1 + 1088))(a1);
      v4 = 1;
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANNANInterface::handleNANEventDataPathEnd(a1);
      }
    }

    else
    {
      if (!v7)
      {
        v11 = a2 + 52;
        if (a2 + 87 >= v5 && (a2 + 52) < 0xFFFFFFFFFFFFFFDDLL && a2 + 87 <= v6 && v5 <= v11 && v6 >= v11)
        {
          AppleBCMWLANNANInterface::postEventNANDataPathEnd(a1, a2 + 52, *(a2 + 74));
          return 0;
        }
      }

      if (!(*(*a1 + 1088))(a1))
      {
        return 1;
      }

      (*(*a1 + 1088))(a1);
      v4 = 1;
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANNANInterface::handleNANEventDataPathEnd(a1);
      }
    }
  }

  else
  {
    if (!(*(*a1 + 1088))(a1))
    {
      return 1;
    }

    (*(*a1 + 1088))(a1);
    v4 = 1;
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANNANInterface::handleNANEventDataPathEnd(a1);
    }
  }

  return v4;
}

uint64_t AppleBCMWLANNANInterface::handleNANEventRangeRequestIndication(uint64_t *a1, uint64_t a2)
{
  v3 = *(a2 + 20);
  if (v3 <= 3)
  {
    if ((*(*a1 + 1088))(a1))
    {
      (*(*a1 + 1088))(a1);
      v4 = 1;
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANNANInterface::handleNANEventRangeRequestIndication(a1);
      }

      return v4;
    }

    return 1;
  }

  v5 = a2 + 48;
  v6 = v3 - 1 + a2 + 48;
  v7 = __CFADD__(v3 - 1, a2 + 48);
  if (*(a2 + 48) == 1793)
  {
    v8 = *(a2 + 50);
    if (v8 < 0x10 || v8 + 4 > v3)
    {
      if (!(*(*a1 + 1088))(a1))
      {
        return 1;
      }

      (*(*a1 + 1088))(a1);
      v4 = 1;
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANNANInterface::handleNANEventRangeRequestIndication(a1);
      }
    }

    else
    {
      if (!v7)
      {
        v11 = (a2 + 52);
        if (a2 + 67 >= v5 && (a2 + 52) < 0xFFFFFFFFFFFFFFF1 && a2 + 67 <= v6 && v5 <= v11 && v6 >= v11)
        {
          v12 = *(a2 + 58);
          v13 = *v11;
          v14 = *(a2 + 56);
          IO80211Controller::postMessage(*(a1[17] + 64), a1, 0x6Cu, &v12, 7uLL, 1);
          return 0;
        }
      }

      if (!(*(*a1 + 1088))(a1))
      {
        return 1;
      }

      (*(*a1 + 1088))(a1);
      v4 = 1;
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANNANInterface::handleNANEventRangeRequestIndication(a1);
      }
    }
  }

  else
  {
    if (!(*(*a1 + 1088))(a1))
    {
      return 1;
    }

    (*(*a1 + 1088))(a1);
    v4 = 1;
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANNANInterface::handleNANEventRangeRequestIndication(a1);
    }
  }

  return v4;
}