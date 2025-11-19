uint64_t non-virtual thunk toAppleBCMWLANProximityInterface::setLLW_PARAMS(uint64_t a1, uint64_t a2)
{
  return AppleBCMWLANProximityInterface::setLLW_PARAMS((a1 - 112), a2);
}

{
  return AppleBCMWLANProximityInterface::setLLW_PARAMS((a1 - 128), a2);
}

uint64_t AppleBCMWLANProximityInterface::getLLW_PARAMS(uint64_t *a1, uint64_t a2)
{
  v35 = &_mh_execute_header;
  v36 = 2;
  memset(v33, 170, sizeof(v33));
  if (IO80211SkywalkInterface::getInterfaceId(a1) == -1 || IO80211SkywalkInterface::getInterfaceId(a1) == 255 || IO80211SkywalkInterface::getInterfaceId(a1) >= 0xC)
  {
    v4 = 3758097122;
    if ((*(*a1 + 1088))(a1))
    {
      (*(*a1 + 1088))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANProximityInterface::getLLW_PARAMS(a1);
      }
    }

    return v4;
  }

  v6 = IOMallocZeroData();
  v7 = IOMallocZeroData();
  Bus = AppleBCMWLANCore::getBus(*(a1[17] + 64));
  if (((*(*Bus + 800))(Bus, v9, v10, v11) & 1) == 0)
  {
    AppleBCMWLANProximityInterface::getLLW_PARAMS();
    goto LABEL_42;
  }

  if (!a2)
  {
    AppleBCMWLANProximityInterface::getLLW_PARAMS();
    goto LABEL_42;
  }

  if (!v6)
  {
    AppleBCMWLANProximityInterface::getLLW_PARAMS();
    goto LABEL_42;
  }

  if (!v7)
  {
    AppleBCMWLANProximityInterface::getLLW_PARAMS();
    v4 = v34;
    goto LABEL_31;
  }

  v12 = 0;
  *v6 = 229376;
  v13 = (v6 + 8);
  v14 = 4;
  do
  {
    *(v13 - 2) = *(&v35 + v12);
    *(v13 - 1) = 4;
    *v13 = 1;
    v13 += 2;
    v14 += 8;
    ++v12;
  }

  while (v12 < *(v6 + 2));
  if (v14)
  {
    v15 = v6;
  }

  else
  {
    v15 = 0;
  }

  v33[2] = v15;
  v33[3] = v14;
  v33[0] = v7;
  v33[1] = 0x40000000400;
  v16 = *(a1[17] + 960);
  InterfaceId = IO80211SkywalkInterface::getInterfaceId(a1);
  v18 = AppleBCMWLANCommander::runVirtualIOVarGet(v16, InterfaceId, "hp2p", &v33[2], v33, 0);
  if (v18)
  {
    AppleBCMWLANProximityInterface::getLLW_PARAMS(a1, v18, &v34);
LABEL_42:
    v4 = v34;
    if (v7)
    {
      goto LABEL_29;
    }

    goto LABEL_30;
  }

  if (!*(v7 + 2))
  {
LABEL_28:
    v4 = 0;
    goto LABEL_29;
  }

  v19 = 0;
  v20 = 4;
  while (1)
  {
    v21 = (v7 + v20);
    v22 = *v21;
    if (v22 != 2)
    {
      break;
    }

    v28 = *(v21 + 2);
    *(a2 + 8) = v21[6];
    *(a2 + 4) = v28;
    *(a2 + 10) = *(v21 + 16);
    v29 = *(a2 + 24) & 0xFE | v21[7] & 1;
    *(a2 + 24) = v29;
    v30 = v29 & 0xFFFFFFFD | (2 * ((*(v21 + 14) >> 1) & 1));
    *(a2 + 24) = v30;
    v31 = v30 & 0xFFFFFFFB | (4 * ((*(v21 + 14) >> 2) & 1));
    *(a2 + 24) = v31;
    *(a2 + 24) = v31 & 0xF7 | v21[7] & 8;
    v23 = 16;
LABEL_26:
    v32 = v21[1];
    if (v23 > v32)
    {
      AppleBCMWLANProximityInterface::getLLW_PARAMS(a1);
      v4 = v34;
      goto LABEL_29;
    }

    v20 += v32 + 4;
    if (++v19 >= *(v7 + 2))
    {
      goto LABEL_28;
    }
  }

  if (v22 == 1)
  {
    v24 = *(v21 + 2);
    *(a2 + 8) = v21[6];
    *(a2 + 4) = v24;
    *(a2 + 10) = *(v21 + 23);
    *(a2 + 14) = *(v21 + 7);
    *(a2 + 21) = v21[12];
    v25 = *(a2 + 18) & 0xFFFE | v21[9] & 1;
    *(a2 + 18) = *(a2 + 18) & 0xFFFE | v21[9] & 1;
    v26 = v25 & 0xFFFFFFFD | (2 * ((v21[9] >> 1) & 1));
    *(a2 + 18) = v26;
    v27 = v26 & 0xFFFFFFFB | (4 * ((v21[9] >> 2) & 1));
    *(a2 + 18) = v27;
    LOBYTE(v24) = *(v21 + 21);
    *(a2 + 20) = *(a2 + 20) & 0xF0 | v24 & 0xF;
    *(a2 + 20) = *(v21 + 21) & 0xF0 | v24 & 0xF;
    LOWORD(v27) = v27 & 0xFF87 | (8 * (v21[10] & 0xF));
    *(a2 + 18) = v27;
    *(a2 + 18) = v27 & 0xFF7F | (8 * *(v21 + 20)) & 0x80;
    v23 = 24;
    goto LABEL_26;
  }

  if (!*v21)
  {
    *(a2 + 11) = *(v21 + 2) != 0;
    v23 = 8;
    goto LABEL_26;
  }

  if ((*(*a1 + 1088))(a1))
  {
    (*(*a1 + 1088))(a1);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANProximityInterface::getLLW_PARAMS(a1);
    }
  }

  v4 = 3758096385;
LABEL_29:
  IOFreeData();
LABEL_30:
  if (v6)
  {
LABEL_31:
    IOFreeData();
  }

  return v4;
}

uint64_t non-virtual thunk toAppleBCMWLANProximityInterface::getLLW_PARAMS(uint64_t a1, uint64_t a2)
{
  return AppleBCMWLANProximityInterface::getLLW_PARAMS((a1 - 112), a2);
}

{
  return AppleBCMWLANProximityInterface::getLLW_PARAMS((a1 - 128), a2);
}

uint64_t AppleBCMWLANProximityInterface::setAWDL_OOB_AUTO_REQUEST(uint64_t *a1, uint64_t a2)
{
  if (!*(a1[17] + 664))
  {
    return 3758097084;
  }

  v4 = *(a2 + 40);
  v10 = *(a2 + 4);
  v11 = *(a2 + 8);
  v8 = *(a2 + 22);
  v9 = *(a2 + 26);
  *&v14[7] = 0;
  *v14 = 0;
  v13 = 0;
  v12 = 0;
  v7 = vrev64_s32(*(a2 + 12));
  *&v14[8] = v4;
  *v14 = 12;
  LODWORD(v13) = *(a2 + 20);
  if ((*(*a1 + 1088))())
  {
    (*(*a1 + 1088))(a1);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANProximityInterface::setAWDL_OOB_AUTO_REQUEST(a1);
    }
  }

  v15.iov_base = &v7;
  v15.iov_len = 46;
  v5 = *(a2 + 40);
  v16 = *(a2 + 48);
  v17 = v5;
  return AppleBCMWLANProximityInterface::sendIOVarSetCommand(a1, &v15, 2u, "awdl_oob_af_auto");
}

uint64_t non-virtual thunk toAppleBCMWLANProximityInterface::setAWDL_OOB_AUTO_REQUEST(uint64_t a1, uint64_t a2)
{
  return AppleBCMWLANProximityInterface::setAWDL_OOB_AUTO_REQUEST((a1 - 112), a2);
}

{
  return AppleBCMWLANProximityInterface::setAWDL_OOB_AUTO_REQUEST((a1 - 128), a2);
}

uint64_t AppleBCMWLANProximityInterface::enableRoamEvents(AppleBCMWLANProximityInterface *this)
{
  v8[0] = 0;
  v8[1] = 0;
  v7[0] = v8;
  v7[1] = 0x1000100010;
  v2 = AppleBCMWLANCommander::runIOVarGet(*(*(this + 17) + 960), "event_msgs", &kNoTxPayload, v7, 0);
  result = (*(*this + 1088))(this);
  if (v2)
  {
    if (result)
    {
      (*(*this + 1088))(this);
      result = CCLogStream::shouldLog();
      if (result)
      {
        return AppleBCMWLANProximityInterface::enableRoamEvents(this);
      }
    }
  }

  else
  {
    if (result)
    {
      v4 = (*(*this + 1088))(this);
      (*(*v4 + 128))(v4, 16640);
    }

    BYTE2(v8[0]) |= 8u;
    *(v8 + 3) |= 0x2104u;
    v5 = *(*(this + 17) + 960);
    v6[0] = v8;
    v6[1] = 16;
    if (AppleBCMWLANCommander::runIOVarSet(v5, "event_msgs", v6, 0, 0))
    {
      if ((*(*this + 1088))(this))
      {
        (*(*this + 1088))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANProximityInterface::enableRoamEvents(this);
        }
      }
    }

    result = (*(*this + 1088))(this);
    if (result)
    {
      (*(*this + 1088))(this);
      result = CCLogStream::shouldLog();
      if (result)
      {
        return AppleBCMWLANProximityInterface::enableRoamEvents(this);
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANProximityInterface::dumpAwdlPeers(AppleBCMWLANProximityInterface *this, char *a2)
{
  v3 = IOMallocZeroData();
  if (v3)
  {
    v4 = v3;
    *&v5 = 0xAAAAAAAAAAAAAAAALL;
    *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *&v47[10] = v5;
    v46 = v5;
    *v47 = v5;
    AppleBCMWLANProximityInterface::getElectionParams(this, &v46);
    (*(*this + 1072))(this);
    (*(*this + 1088))(this);
    v43 = this;
    v6 = IO80211Print();
    v45[0] = v4;
    v45[1] = 0x3E8000003E8;
    v7 = *(*(this + 17) + 960);
    InterfaceId = IO80211SkywalkInterface::getInterfaceId(this);
    v44[0] = v4;
    v44[1] = 1000;
    v9 = AppleBCMWLANCommander::runVirtualIOVarGet(v7, InterfaceId, "awdl_advertisers", v44, v45, 0);
    if (v9)
    {
      v10 = v9;
      (*(*this + 1088))(this);
      (*(*this + 920))(this, v10);
    }

    else
    {
      v11 = *(v4 + 2);
      if (v11 < 0x3C1)
      {
        if (*(v4 + 2))
        {
          if (v11 >= 0x3C)
          {
            v13 = v4 + 4;
            v14 = *(v4 + 2) / 0x3Cu;
            v15 = (v4 + 22);
            do
            {
              v42 = v14;
              (*(*this + 1088))(this);
              IO80211Hexdump();
              (*(*this + 1088))(this);
              v41 = *(v15 + 10);
              v39 = *(v15 + 20);
              v40 = *(v15 + 21);
              v37 = *(v15 + 18);
              v38 = *(v15 + 19);
              v36 = *(v15 + 17);
              this = v43;
              v34 = *(v15 + 3);
              v35 = *(v15 + 16);
              v32 = *(v15 + 22);
              v33 = *(v15 + 1);
              v30 = *v15;
              v31 = *(v15 - 4);
              v28 = *(v15 - 5);
              v29 = *(v15 - 2);
              v27 = *(v15 - 7);
              v25 = *(v15 - 12);
              v26 = *(v15 - 11);
              v23 = *(v15 - 9);
              v24 = *(v15 - 1);
              v21 = *(v15 + 14);
              v22 = *(v15 + 15);
              v18 = *(v15 + 12);
              v20 = *(v15 + 13);
              v17 = *(v15 + 11);
              v6 = v6 + IO80211Print();
              ++v13;
              v15 += 30;
              v14 = v42 - 1;
            }

            while (v42 != 1);
          }
        }

        else
        {
          (*(*this + 1088))(this);
          getClassNameHelper(this);
          v19 = *(v4 + 2);
          v6 = IO80211Print() + v6;
        }

        goto LABEL_8;
      }

      (*(*this + 1088))(this);
      v16 = *(v4 + 2);
    }

    IO80211Print();
    v6 = 0;
LABEL_8:
    IOFreeData();
    return v6;
  }

  return 0;
}

uint64_t AppleBCMWLANProximityInterface::reset(AppleBCMWLANProximityInterface *this)
{
  if ((*(*this + 1088))(this))
  {
    (*(*this + 1088))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANProximityInterface::reset(this);
    }
  }

  v2 = *(this + 17);
  v3 = *(v2 + 112);
  if (v3 && AppleBCMWLANSkywalkInterface::isEnabled(*(v2 + 112)))
  {
    (*(*v3 + 1464))(v3, 1, 1, 0, 0, 0);
    (*(*v3 + 1240))(v3);
    (*(*v3 + 1480))(v3, 0);
  }

  (*(*this + 1240))(this);
  IO80211SkywalkInterface::setInterfaceId(this, 0xFFFFFFFF);
  *(*(this + 17) + 936) = 0;
  *(*(this + 17) + 120) = 0;
  *(*(this + 17) + 664) = 0;
  *(*(this + 17) + 80) = 0;
  *(*(this + 17) + 81) = 0;
  *(*(this + 17) + 82) = 0;
  *(*(this + 17) + 92) = 0;
  *(*(this + 17) + 72) = 1;
  if ((*(*this + 1088))(this))
  {
    (*(*this + 1088))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANProximityInterface::reset(this);
    }
  }

  AppleBCMWLANProximityInterface::setLowLatencyTrafficState(this, 0, 0);
  *(*(this + 17) + 548) = 0;
  *(*(this + 17) + 924) = 0;
  return 0;
}

uint64_t non-virtual thunk toAppleBCMWLANProximityInterface::getAWDL_MIN_RATE()
{
  return 3825172759;
}

{
  return 3825172759;
}

uint64_t AppleBCMWLANProximityInterface::setAWDL_MIN_RATE(IO80211SkywalkInterface *a1, uint64_t a2)
{
  v3 = a2 + 4;
  v10 = 2 * *(a2 + 4);
  v9[0] = a1;
  v9[1] = AppleBCMWLANProximityInterface::handleProxIovarAsyncCallBack;
  v9[2] = 0;
  v4 = *(*(a1 + 17) + 960);
  InterfaceId = IO80211SkywalkInterface::getInterfaceId(a1);
  v8[0] = &v10;
  v8[1] = 4;
  result = AppleBCMWLANCommander::sendVirtualIOVarSet(v4, InterfaceId, "awdl_min_rate", v8, kNoRxExpected, v9, 0);
  if (result)
  {
    v7 = result;
    if ((*(*a1 + 1088))(a1))
    {
      (*(*a1 + 1088))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANProximityInterface::setAWDL_MIN_RATE(a1, a1 & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000, v3, v7);
      }
    }

    return (*(*a1 + 1336))(a1, v7);
  }

  return result;
}

uint64_t non-virtual thunk toAppleBCMWLANProximityInterface::setAWDL_MIN_RATE(uint64_t a1, uint64_t a2)
{
  return AppleBCMWLANProximityInterface::setAWDL_MIN_RATE((a1 - 112), a2);
}

{
  return AppleBCMWLANProximityInterface::setAWDL_MIN_RATE((a1 - 128), a2);
}

uint64_t AppleBCMWLANProximityInterface::setAWDL_TXCAL_PERIOD(IO80211SkywalkInterface *a1, uint64_t a2)
{
  v9 = *(a2 + 4);
  v8[0] = a1;
  v8[1] = AppleBCMWLANProximityInterface::handleProxIovarAsyncCallBack;
  v8[2] = 0;
  v3 = *(*(a1 + 17) + 960);
  InterfaceId = IO80211SkywalkInterface::getInterfaceId(a1);
  v7[0] = &v9;
  v7[1] = 4;
  v5 = AppleBCMWLANCommander::sendVirtualIOVarSet(v3, InterfaceId, "awdl_phycal_period", v7, kNoRxExpected, v8, 0);
  if (v5)
  {
    if ((*(*a1 + 1088))(a1))
    {
      (*(*a1 + 1088))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANProximityInterface::setAWDL_TXCAL_PERIOD(a1);
      }
    }
  }

  return v5;
}

uint64_t non-virtual thunk toAppleBCMWLANProximityInterface::setAWDL_TXCAL_PERIOD(uint64_t a1, uint64_t a2)
{
  return AppleBCMWLANProximityInterface::setAWDL_TXCAL_PERIOD((a1 - 112), a2);
}

{
  return AppleBCMWLANProximityInterface::setAWDL_TXCAL_PERIOD((a1 - 128), a2);
}

uint64_t AppleBCMWLANProximityInterface::getAWDL_TXCAL_PERIOD(IO80211SkywalkInterface *a1, uint64_t a2)
{
  v10 = 0;
  v9[0] = &v10;
  v9[1] = 0x400040004;
  v4 = *(*(a1 + 17) + 960);
  InterfaceId = IO80211SkywalkInterface::getInterfaceId(a1);
  v8[0] = &v10;
  v8[1] = 4;
  v6 = AppleBCMWLANCommander::runVirtualIOVarGet(v4, InterfaceId, "awdl_phycal_period", v8, v9, 0);
  if (v6)
  {
    if ((*(*a1 + 1088))(a1))
    {
      (*(*a1 + 1088))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANProximityInterface::getAWDL_TXCAL_PERIOD(a1);
      }
    }
  }

  else
  {
    *(a2 + 4) = v10;
  }

  return v6;
}

uint64_t non-virtual thunk toAppleBCMWLANProximityInterface::getAWDL_TXCAL_PERIOD(uint64_t a1, uint64_t a2)
{
  return AppleBCMWLANProximityInterface::getAWDL_TXCAL_PERIOD((a1 - 112), a2);
}

{
  return AppleBCMWLANProximityInterface::getAWDL_TXCAL_PERIOD((a1 - 128), a2);
}

uint64_t AppleBCMWLANProximityInterface::setAWDL_DFSP_CONFIG(IO80211SkywalkInterface *a1, uint64_t a2)
{
  if (!*(*(a1 + 17) + 664))
  {
    return 3758097084;
  }

  v3 = *(a2 + 12) | 0xD000;
  v12 = 1310721;
  v13 = *(a2 + 4);
  v14 = *(a2 + 6);
  v15 = v3;
  v4 = *(a2 + 18);
  v16 = *(a2 + 14);
  v17 = v4;
  v11[0] = a1;
  v11[1] = AppleBCMWLANProximityInterface::handleProxIovarAsyncCallBack;
  v11[2] = 0;
  *(a2 + 12) = v3;
  v5 = *(*(a1 + 17) + 960);
  InterfaceId = IO80211SkywalkInterface::getInterfaceId(a1);
  v10[0] = &v12;
  v10[1] = 20;
  v7 = AppleBCMWLANCommander::sendVirtualIOVarSet(v5, InterfaceId, "awdl_dfsp_cfg", v10, kNoRxExpected, v11, 0);
  v8 = (*(*a1 + 1088))(a1);
  if (v7)
  {
    if (v8)
    {
      (*(*a1 + 1088))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANProximityInterface::setAWDL_DFSP_CONFIG(a1);
      }
    }
  }

  else if (v8)
  {
    (*(*a1 + 1088))(a1);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANProximityInterface::setAWDL_DFSP_CONFIG(a1);
    }
  }

  return v7;
}

uint64_t non-virtual thunk toAppleBCMWLANProximityInterface::setAWDL_DFSP_CONFIG(uint64_t a1, uint64_t a2)
{
  return AppleBCMWLANProximityInterface::setAWDL_DFSP_CONFIG((a1 - 112), a2);
}

{
  return AppleBCMWLANProximityInterface::setAWDL_DFSP_CONFIG((a1 - 128), a2);
}

uint64_t AppleBCMWLANProximityInterface::getAWDL_DFSP_CONFIG(IO80211SkywalkInterface *a1, uint64_t a2)
{
  v10[0] = &v11;
  v10[1] = 0x1400140014;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v4 = *(*(a1 + 17) + 960);
  InterfaceId = IO80211SkywalkInterface::getInterfaceId(a1);
  v9[0] = &v11;
  v9[1] = 20;
  v6 = AppleBCMWLANCommander::runVirtualIOVarGet(v4, InterfaceId, "awdl_dfsp_cfg", v9, v10, 0);
  v7 = (*(*a1 + 1088))(a1);
  if (v6)
  {
    if (v7)
    {
      (*(*a1 + 1088))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANProximityInterface::getAWDL_DFSP_CONFIG(a1);
      }
    }
  }

  else
  {
    if (v7)
    {
      (*(*a1 + 1088))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANProximityInterface::getAWDL_DFSP_CONFIG(a1);
      }
    }

    *a2 = v11;
    *(a2 + 8) = v12;
    *(a2 + 12) = WORD1(v12);
    *(a2 + 20) = HIWORD(v13);
    *(a2 + 14) = HIDWORD(v12);
    *(a2 + 18) = v13;
  }

  return v6;
}

uint64_t non-virtual thunk toAppleBCMWLANProximityInterface::getAWDL_DFSP_CONFIG(uint64_t a1, uint64_t a2)
{
  return AppleBCMWLANProximityInterface::getAWDL_DFSP_CONFIG((a1 - 112), a2);
}

{
  return AppleBCMWLANProximityInterface::getAWDL_DFSP_CONFIG((a1 - 128), a2);
}

uint64_t AppleBCMWLANProximityInterface::setAWDL_DFSP_UCSA_CONFIG(IO80211SkywalkInterface *a1, uint64_t a2)
{
  v11[0] = 1;
  v11[1] = *(a2 + 2);
  v3 = *(a2 + 8);
  v12 = *(a2 + 4);
  v13 = v3;
  v10[0] = a1;
  v10[1] = AppleBCMWLANProximityInterface::handleProxIovarAsyncCallBack;
  v10[2] = 0;
  v4 = *(*(a1 + 17) + 960);
  InterfaceId = IO80211SkywalkInterface::getInterfaceId(a1);
  v9[0] = v11;
  v9[1] = 12;
  v6 = AppleBCMWLANCommander::sendVirtualIOVarSet(v4, InterfaceId, "awdl_dfsp_ucsa", v9, kNoRxExpected, v10, 0);
  v7 = (*(*a1 + 1088))(a1);
  if (v6)
  {
    if (v7)
    {
      (*(*a1 + 1088))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANProximityInterface::setAWDL_DFSP_UCSA_CONFIG(a1);
      }
    }
  }

  else if (v7)
  {
    (*(*a1 + 1088))(a1);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANProximityInterface::setAWDL_DFSP_UCSA_CONFIG(a1);
    }
  }

  return v6;
}

uint64_t non-virtual thunk toAppleBCMWLANProximityInterface::setAWDL_DFSP_UCSA_CONFIG(uint64_t a1, uint64_t a2)
{
  return AppleBCMWLANProximityInterface::setAWDL_DFSP_UCSA_CONFIG((a1 - 112), a2);
}

{
  return AppleBCMWLANProximityInterface::setAWDL_DFSP_UCSA_CONFIG((a1 - 128), a2);
}

BOOL AppleBCMWLANProximityInterface::setup5GAnd24GSlices(AppleBCMWLANProximityInterface *this)
{
  v5 = 0;
  result = AppleBCMWLANCore::isSdbChip(*(*(this + 17) + 64), &v5);
  *(*(this + 17) + 96) = result;
  v3 = *(this + 17);
  if (*(v3 + 96) == 1)
  {
    v4 = v5;
    *(v3 + 100) = !v5;
    *(*(this + 17) + 104) = v4;
  }

  return result;
}

uint64_t AppleBCMWLANProximityInterface::fillSliceDataForStandAloneAWDL(AppleBCMWLANProximityInterface *this, _BYTE *a2, uint64_t a3, uint64_t a4, _BYTE *a5, int *a6, _DWORD *a7)
{
  *&v11 = 0xAAAAAAAAAAAAAAAALL;
  *(&v11 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v46 = v11;
  v47 = v11;
  v44 = v11;
  v45 = v11;
  v12 = (a3 + 6);
  v42 = (a3 + 6);
  if (!a2[6])
  {
    v43 = 2;
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    if (a2[5])
    {
      v13 = 0;
      do
      {
        if (*(v12 + v13))
        {
          ChanSpec = AppleBCMWLANCore::getChanSpec(*(*(this + 17) + 64), *(v12 + v13), &v43);
          v12 = v42;
          *(&v44 + v13) = __rev16(ChanSpec);
          if (!ChanSpec)
          {
            v15 = *(v42 + v13);
            if ((v15 - 1) <= 0xD)
            {
              *(&v44 + v13) = __rev16(v15 | 0x1000);
            }
          }
        }

        else
        {
          *(&v44 + v13) = 0;
        }

        ++v13;
      }

      while (v13 < a2[5]);
    }

    v42 = &v44;
  }

  v16 = a2[4];
  if ((v16 & 0x30) == 0)
  {
    if ((*(*this + 1088))(this))
    {
      (*(*this + 1088))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANProximityInterface::fillSliceDataForStandAloneAWDL(this);
      }
    }
  }

  AppleBCMWLANProximityInterface::setup5GAnd24GSlices(this);
  v17 = 0;
  v18 = a2[5];
  result = (2 * v18);
  v20 = a2 + 20;
  v21 = 1;
  v22 = a7;
  v23 = v42;
  do
  {
    v24 = v21;
    *a4 = 2;
    *a6 += 4;
    *(a4 + 4) = 0;
    v25 = *a6;
    *(a4 + 8) = v17;
    v26 = v25 + 8;
    *a6 = v25 + 8;
    *(a4 + 9) = v18;
    *(a4 + 10) = 2;
    if ((v16 & 0x10) != 0)
    {
      if (!v18)
      {
        goto LABEL_36;
      }

      v31 = (a4 + 12);
      v32 = v18;
      v33 = v20;
      v34 = v23;
      while ((v33[1] & 0x20) == 0)
      {
        v35 = *(v33 - 1);
        if (v35 >= 0xF)
        {
          break;
        }

        if (v35)
        {
          v36 = *(*(this + 17) + 100);
LABEL_27:
          if (v36 == v17)
          {
            LOWORD(v35) = *v34;
          }

          else
          {
            LOWORD(v35) = 0;
          }
        }

        *v31++ = v35;
        v34 = (v34 + 2);
        v33 += 12;
        if (!--v32)
        {
          goto LABEL_36;
        }
      }

      v36 = *(*(this + 17) + 104);
      goto LABEL_27;
    }

    if (v24)
    {
      if (v18)
      {
        v27 = (a4 + 12);
        v28 = v18;
        v29 = v23;
        do
        {
          v30 = *v29++;
          *v27++ = v30;
          --v28;
        }

        while (v28);
      }
    }

    else if (v18)
    {
      v37 = result;
      v38 = v20;
      bzero((a4 + 12), 2 * v18);
      result = v37;
      v20 = v38;
      v22 = a7;
      v23 = v42;
    }

LABEL_36:
    *a6 = result + v26;
    *(a4 + 2) = 2 * v18 + 8;
    a4 += 44;
    if ((a4 & 3) != 0)
    {
      v39 = 4 - (a4 & 3);
      a4 += v39;
      *v22 += v39;
    }

    v21 = 0;
    v17 = 1;
  }

  while ((v24 & 1) != 0);
  *a5 += 2;
  return result;
}

uint64_t AppleBCMWLANProximityInterface::convertCommittedAvailabilityToChanSpecSequence(AppleBCMWLANProximityInterface *this, uint64_t a2, unsigned __int16 *a3, _BYTE *a4)
{
  *(a3 + 6) = 0u;
  *(a3 + 7) = 0u;
  *(a3 + 4) = 0u;
  *(a3 + 5) = 0u;
  *(a3 + 2) = 0u;
  *(a3 + 3) = 0u;
  *a3 = 0u;
  *(a3 + 1) = 0u;
  if (!*(a2 + 1))
  {
LABEL_24:
    *a4 = 64;
    return 1;
  }

  v6 = this;
  v7 = 0;
  v8 = 0;
  v9 = a2 + 4;
  v10 = &channelBWMap;
  v29 = a2 + 4;
  v30 = a4;
  while (1)
  {
    v11 = v9 + 80 * v7;
    *v33 = 0;
    v32 = -1431655766;
    v12 = *(v11 + 74);
    if ((v12 + 125) > 3u)
    {
      AppleBCMWLANProximityInterface::convertOpClassToChannel(this, v12, *(v11 + 76), *(v11 + 75), &v33[1], v33);
      v14 = v10;
      v32 = v10[v33[0]];
      this = AppleBCMWLANCore::getChanSpec(*(*(v6 + 17) + 64), v33[1], &v32);
      ChanSpec = this;
    }

    else
    {
      v31 = 0;
      AppleBCMWLANProximityInterface::convertOpClassToNanChannel(v6, v12, *(v11 + 76), *(v11 + 75), &v33[1], v33, &v31);
      v13 = v33[0];
      v14 = v10;
      v32 = v10[v33[0]];
      v15 = v33[1];
      ChanSpec = AppleBCMWLANCore::getChanSpec(*(*(v6 + 17) + 64), v33[1], v31, &v32);
      this = (*(*v6 + 1088))(v6);
      if (this)
      {
        (*(*v6 + 1088))(v6);
        this = CCLogStream::shouldLog();
        if (this)
        {
          v17 = (*(*v6 + 1088))(v6);
          this = CCLogStream::logAlert(v17, "[dk] %s@%d:%s[%d]: bw %d channel %d tBw %x op_class %x op_class_bitmap %x prim_chan_bitmap %x chSpec %x\n", "convertCommittedAvailabilityToChanSpecSequence", 6105, "convertCommittedAvailabilityToChanSpecSequence", 6105, v13, v15, v32, *(v11 + 74), *(v11 + 76), *(v11 + 75), ChanSpec);
        }
      }
    }

    v18 = *(v11 + 4);
    v19 = 64 << *(v11 + 6);
    if ((v19 & 0xFFC0u) <= v8)
    {
      goto LABEL_11;
    }

    if ((v19 & 0xFFC0u) >= 0x401)
    {
      break;
    }

    v8 = (64 << *(v11 + 6));
LABEL_11:
    v20 = *(v11 + 8);
    if (*(v11 + 8))
    {
      v21 = 0;
      v22 = *(v11 + 7);
      v23 = 1 << v22;
      v24 = __rev16(ChanSpec);
      while (2)
      {
        for (i = 0; i != 8; ++i)
        {
          if ((*(v11 + 9 + v21) >> i))
          {
            if (v22 != 31)
            {
              v26 = 0;
              while (1)
              {
                v27 = &a3[v18];
                if (*v27)
                {
                  break;
                }

                *v27 = v24;
                ++v18;
                if (v23 <= ++v26)
                {
                  goto LABEL_21;
                }
              }

              if ((*(*v6 + 1088))(v6))
              {
                (*(*v6 + 1088))(v6);
                if (CCLogStream::shouldLog())
                {
                  AppleBCMWLANProximityInterface::convertCommittedAvailabilityToChanSpecSequence(v6, v6 & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000, v18, &a3[v18]);
                }
              }

              return 0;
            }
          }

          else
          {
            v18 += v23;
          }

LABEL_21:
          ;
        }

        if (++v21 < v20)
        {
          continue;
        }

        break;
      }
    }

    ++v7;
    v9 = v29;
    a4 = v30;
    v10 = v14;
    if (v7 >= *(a2 + 1))
    {
      goto LABEL_24;
    }
  }

  if ((*(*v6 + 1088))(v6))
  {
    (*(*v6 + 1088))(v6);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANProximityInterface::convertCommittedAvailabilityToChanSpecSequence(v6);
    }
  }

  return 0;
}

BOOL AppleBCMWLANProximityInterface::convertOpClassToChannel(AppleBCMWLANProximityInterface *this, int a2, unsigned int a3, unsigned int a4, unsigned __int8 *a5, unsigned __int8 *a6)
{
  v6 = 0;
  v7 = 0;
  for (i = &unk_10033C4A3; ; i += 67)
  {
    v9 = &operClassTable + 67 * v6;
    if (*v9 == a2)
    {
      break;
    }

LABEL_6:
    v7 = v6 > 0x11;
    if (++v6 == 19)
    {
      return 1;
    }
  }

  v10 = 0;
  while (((a3 >> v10) & 1) == 0)
  {
    if (++v10 == 64)
    {
      goto LABEL_6;
    }
  }

  *a5 = i[v10];
  v11 = v9[1];
  *a6 = v11;
  if (v11 == 2)
  {
    v12 = 0;
    v13 = *a5;
    v14 = &unk_10033C389;
    do
    {
      if (v13 == *(&bw80MHz + 5 * v12))
      {
        for (j = 0; j != 4; ++j)
        {
          if ((a4 >> j))
          {
            v13 = v14[j];
            *a5 = v13;
          }
        }
      }

      ++v12;
      v14 += 5;
    }

    while (v12 != 6);
  }

  return v7;
}

uint64_t AppleBCMWLANProximityInterface::convertOpClassToNanChannel(AppleBCMWLANProximityInterface *this, int a2, unsigned int a3, unsigned int a4, unsigned __int8 *a5, unsigned __int8 *a6, unsigned __int8 *a7)
{
  if ((a2 - 131) > 3)
  {
    if ((*(*this + 1088))(this))
    {
      (*(*this + 1088))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANProximityInterface::convertOpClassToNanChannel(this);
      }
    }
  }

  else
  {
    v12 = &byte_10033C99B;
    v13 = 4;
    do
    {
      if (*(v12 - 1) == a2)
      {
        v14 = *v12;
        *a6 = v14;
        *a7 = 1;
        goto LABEL_13;
      }

      v12 += 70;
      --v13;
    }

    while (v13);
    *a6 = 0;
    if ((*(*this + 1088))(this))
    {
      (*(*this + 1088))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANProximityInterface::convertOpClassToNanChannel(this);
      }
    }

    v14 = 0;
LABEL_13:
    if (a3 >> 8 != 1)
    {
      if ((*(*this + 1088))(this))
      {
        (*(*this + 1088))(this);
        if (CCLogStream::shouldLog())
        {
          v22 = (*(*this + 1088))(this);
          CCLogStream::logAlert(v22, "[dk] %s@%d:ERROR: opclass %x opclassbitmap %x primchanbitmap %x num_channels %d \n", "convertOpClassToNanChannel", 6034, a2, a3, a4, a3 >> 8);
        }
      }
    }

    v15 = 0;
    while (((a4 >> v15) & 1) == 0)
    {
      if (++v15 == 8)
      {
        v15 = 0;
        break;
      }
    }

    if (v14 > 1)
    {
      if (v14 == 2)
      {
        v18 = 0;
        v19 = bw80MHz6g;
        while (bw80MHz6g[v18] != a3)
        {
          v18 += 5;
          if (v18 == 70)
          {
            return 1;
          }
        }
      }

      else
      {
        if (v14 != 3)
        {
          return 1;
        }

        v18 = 0;
        v19 = bw160MHz6g;
        while (bw160MHz6g[v18] != a3)
        {
          v18 += 9;
          if (v18 == 63)
          {
            return 1;
          }
        }
      }

      v20 = v19[v15 + 1 + v18];
LABEL_40:
      *a5 = v20;
      return 1;
    }

    if (v14)
    {
      v16 = 0;
      v17 = &bw80MHz6g[v15 + 1];
      while (bw40MHz6g[v16] != a3)
      {
        v16 += 3;
        v17 += 5;
        if (v16 == 87)
        {
          return 1;
        }
      }

      v20 = *v17;
      goto LABEL_40;
    }

    *a5 = a3;
  }

  return 1;
}

uint64_t AppleBCMWLANProximityInterface::start(AppleBCMWLANProximityInterface *this, IOService *anObject)
{
  v3 = OSMetaClassBase::safeMetaCast(anObject, gAppleBCMWLANCoreMetaClass);

  return AppleBCMWLANProximityInterface::start(this, v3);
}

uint64_t AppleBCMWLANProximityInterface::start(IO80211SkywalkInterface *a1, IOService *a2)
{
  v29 = 0;
  init = 0;
  if (a2 && (v4 = a2[1].OSObject::OSObjectInterface::__vftable, LOBYTE(v4[2223].free) == 1) && LODWORD(v4[2224].init) == 6)
  {
    v5 = v4 + 2225;
    init = v5->init;
    v29 = WORD2(v5->init);
    v6 = init;
    v7 = BYTE1(init);
    v8 = BYTE2(init);
    v9 = HIBYTE(init);
    v10 = v29;
    v11 = HIBYTE(v29);
  }

  else
  {
    IOLog("%s: FAIL: AWDL interface parameters invalid\n", "BOOL AppleBCMWLANProximityInterface::start(AppleBCMWLANCore *, RegistrationInfo *)");
    v11 = 0;
    v10 = 0;
    v9 = 0;
    v8 = 0;
    v7 = 0;
    v6 = 0;
  }

  IOLog("%s: Initializing AWDL interface parameters %02x:%02x:%02x:%02x:%02x:%02x\n", "BOOL AppleBCMWLANProximityInterface::start(AppleBCMWLANCore *, RegistrationInfo *)", v6, v7, v8, v9, v10, v11);
  v12 = (*(*a1 + 312))(a1);
  result = (*(*a1 + 2160))(a1, a2, &init, 6, v12);
  if (result)
  {
    p_free = &a2[1].OSObject::OSObjectInterface::__vftable[2223].free;
    *p_free = 0u;
    *(p_free + 1) = 0u;
    if (IO80211VirtualInterface::start(a1, a2))
    {
      if (IO80211SkywalkInterface::getLogger(a1))
      {
        *(*(a1 + 17) + 56) = IO80211SkywalkInterface::getLogger(a1);
      }

      v15 = *(*(a1 + 17) + 64);
      *(*(a1 + 17) + 1096) = (*(*v15 + 88))(v15);
      *(*(a1 + 17) + 976) = AppleBCMWLANCore::getBus(v15);
      v16 = (*(**(*(a1 + 17) + 976) + 752))();
      *(*(a1 + 17) + 984) = OSMetaClassBase::safeMetaCast(v16, gAppleBCMWLANBusSkywalkMetaClass);
      *&v17 = 0xAAAAAAAAAAAAAAAALL;
      *(&v17 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v22 = v17;
      v24 = v17;
      v23 = v17;
      v25 = v17;
      v26 = v17;
      v21 = a1;
      v18 = *(a1 + 17);
      LOBYTE(v22) = *(v18 + 937);
      *&v24 = v18 + 1000;
      *(&v24 + 1) = v18 + 1008;
      *&v25 = v18 + 1056;
      *(&v25 + 1) = v18 + 1064;
      *&v26 = v18 + 1072;
      *(&v23 + 1) = v18 + 1016;
      *(&v22 + 1) = v18 + 940;
      *&v23 = v18 + 1024;
      v27 = (*(*a1 + 1088))(a1);
      WORD4(v26) = 64;
      v19 = (*(**(*(a1 + 17) + 984) + 56))(*(*(a1 + 17) + 984), &v21);
      v20 = *a1;
      if (v19)
      {
        result = (*(v20 + 1088))(a1);
        if (result)
        {
          (*(*a1 + 1088))(a1);
          result = CCLogStream::shouldLog();
          if (result)
          {
            AppleBCMWLANProximityInterface::start(a1);
            return 0;
          }
        }
      }

      else
      {
        return (*(v20 + 536))(a1);
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
          AppleBCMWLANProximityInterface::start(a1);
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t non-virtual thunk toAppleBCMWLANProximityInterface::start(AppleBCMWLANProximityInterface *this, IOService *anObject)
{
  v2 = (this - 48);
  v3 = OSMetaClassBase::safeMetaCast(anObject, gAppleBCMWLANCoreMetaClass);

  return AppleBCMWLANProximityInterface::start(v2, v3);
}

uint64_t AppleBCMWLANProximityInterface::registerInterface(AppleBCMWLANProximityInterface *this)
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
        AppleBCMWLANProximityInterface::registerInterface(this);
        return 0;
      }
    }

    return result;
  }

  if (!IOUserNetworkEthernet::SetTxPacketHeadroom(this, 0x40u))
  {
    v4 = *(this + 17);
    if (!*(v4 + 937))
    {
      goto LABEL_19;
    }

    v5 = 0;
    do
    {
      v6 = *(v4 + 8 * v5 + 1024);
      *(v15 + v5) = v6;
      if ((*(*this + 1088))(this))
      {
        (*(*this + 1088))(this);
        if (CCLogStream::shouldLog())
        {
          v7 = (*(*this + 1088))(this);
          CCLogStream::logAlert(v7, "[dk] %s@%d:ProximityInterface: network queue[%u] %p, driver queue %p\n", "registerInterface", 6312, v5, v6, *(*(this + 17) + 8 * v5 + 1024));
        }
      }

      ++v5;
      v4 = *(this + 17);
    }

    while (v5 < *(v4 + 937));
    if (*(v4 + 937))
    {
      v8 = 0;
      do
      {
        (*(**(v4 + 8 * v8 + 1024) + 272))(*(v4 + 8 * v8 + 1024));
        *(*(this + 17) + 4 * *(*(this + 17) + 4 * v8 + 940) + 1080) = AppleBCMWLANSkywalkTxSubmissionQueue::getQueueId(*(*(this + 17) + 8 * v8 + 1024));
        ++v8;
        v4 = *(this + 17);
      }

      while (v8 < *(v4 + 937));
    }

    else
    {
LABEL_19:
      LOBYTE(v8) = 0;
    }

    *(v15 + v8) = *(v4 + 1000);
    *(v15 + (v8 + 1)) = *(v4 + 1008);
    v9 = v8 + 2;
    (*(**(v4 + 1000) + 200))(*(v4 + 1000));
    (*(**(*(this + 17) + 1008) + 208))(*(*(this + 17) + 1008));
    v10 = *(*(this + 17) + 1056);
    if (v10)
    {
      (*(*v10 + 72))(v10);
    }

    v11 = (*(*this + 1072))(this);
    v12 = v9;
    v13 = (*(*this + 272))(this, v11 & 0xFFFFFFFFFFFFLL, *(*(this + 17) + 1064), v15, v9);
    if ((*(*this + 1088))(this) && ((*(*this + 1088))(this), CCLogStream::shouldLog()))
    {
      v14 = (*(*this + 1088))(this);
      CCLogStream::logAlert(v14, "[dk] %s@%d:ProximityInterface: ret[0x%08x] MAC[%02x:%02x:%02x:%02x:%02x:%02x], pool[%p] queues[%p] numQueue[%2u]", "registerInterface", 6331, v13, v11, BYTE1(v11), BYTE2(v11), BYTE3(v11), BYTE4(v11), BYTE5(v11), *(*(this + 17) + 1064), v15, v12);
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
          AppleBCMWLANProximityInterface::registerInterface(this);
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
      AppleBCMWLANProximityInterface::registerInterface(this);
      return 0;
    }
  }

  return result;
}

uint64_t AppleBCMWLANProximityInterface::setInterfaceEnable(AppleBCMWLANProximityInterface *this, int a2)
{
  IO80211SkywalkInterface::validateDispatchQueue(this);
  if (IO80211VirtualInterface::setInterfaceEnable(this, a2))
  {
    v4 = this & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000;
    if ((*(*this + 1088))(this))
    {
      (*(*this + 1088))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANProximityInterface::setInterfaceEnable(this);
      }
    }
  }

  else
  {
    v4 = this & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000;
  }

  if ((*(*this + 1088))(this))
  {
    (*(*this + 1088))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANProximityInterface::setInterfaceEnable(this, v4, a2);
    }
  }

  v5 = *this;
  if (*(*(this + 17) + 924))
  {
    v6 = *(v5 + 128);
    if (a2)
    {
      v7 = v6(this, 3, 128);
      (*(*this + 1320))(this, 0);
    }

    else
    {
      v7 = v6(this, 1, 130);
      (*(*this + 1328))(this, 0);
    }

    if ((*(*this + 1088))(this))
    {
      (*(*this + 1088))(this);
      if (CCLogStream::shouldLog())
      {
        v9 = (*(*this + 1088))(this);
        v10 = "Disable";
        if (a2)
        {
          v10 = "Enable";
        }

        CCLogStream::logAlert(v9, "[dk] %s@%d:AppleBCMWLANProximityInterface::(%s) ret=0x%08x\n", "setInterfaceEnable", 6399, v10, v7);
      }
    }
  }

  else
  {
    if ((*(v5 + 1088))(this))
    {
      (*(*this + 1088))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANProximityInterface::setInterfaceEnable(this);
      }
    }

    return 0;
  }

  return v7;
}

uint64_t AppleBCMWLANProximityInterface::enableDatapath(AppleBCMWLANProximityInterface *this)
{
  v2 = this & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000;
  v3 = (*(*this + 1064))(this);
  v4 = (*(*this + 1088))(this);
  if ((v3 & 1) == 0)
  {
    AppleBCMWLANProximityInterface::enableDatapath(v4 == 0, this, v2, &v14);
    return v14;
  }

  if (v4)
  {
    (*(*this + 1088))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANProximityInterface::enableDatapath(this);
    }
  }

  (*(**(*(this + 17) + 1000) + 192))(*(*(this + 17) + 1000));
  v5 = *(*(this + 17) + 1008);
  if (!v5)
  {
    AppleBCMWLANProximityInterface::enableDatapath(this, v2, &v14);
    return v14;
  }

  (*(*v5 + 200))(v5);
  v6 = *(this + 17);
  if (*(v6 + 937))
  {
    v7 = 128;
    while (1)
    {
      v8 = *(v6 + 8 * v7);
      if (!v8)
      {
        break;
      }

      (*(*v8 + 256))(v8);
      v9 = *(*(this + 17) + 8 * v7);
      (*(*v9 + 128))(v9, 0, 0);
      v6 = *(this + 17);
      v10 = v7 - 127;
      ++v7;
      if (v10 >= *(v6 + 937))
      {
        goto LABEL_10;
      }
    }

    AppleBCMWLANProximityInterface::enableDatapath(v7 - 128, this, v2, &v14);
    return v14;
  }

LABEL_10:
  if (*(v6 + 1056))
  {
    v11 = (*(*this + 728))(this);
    v12 = (*(*v11 + 88))(v11);
    (*(*v12 + 64))(v12, *(*(this + 17) + 1056));
    (*(**(*(this + 17) + 1056) + 64))(*(*(this + 17) + 1056));
    (*(**(*(this + 17) + 1056) + 120))(*(*(this + 17) + 1056));
    v6 = *(this + 17);
  }

  result = (*(**(v6 + 1008) + 120))(*(v6 + 1008), 0, 0);
  if (result)
  {
    result = (*(*this + 1088))(this);
    if (result)
    {
      (*(*this + 1088))(this);
      result = CCLogStream::shouldLog();
      if (result)
      {
        AppleBCMWLANProximityInterface::enableDatapath(this);
        return 0;
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANProximityInterface::disableDatapath(AppleBCMWLANProximityInterface *this)
{
  if ((*(*this + 1088))(this))
  {
    (*(*this + 1088))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANProximityInterface::disableDatapath(this);
    }
  }

  v2 = *(this + 17);
  if (*(v2 + 937))
  {
    v3 = 0;
    while (1)
    {
      v4 = *(v2 + 8 * v3 + 1024);
      if (!v4)
      {
        break;
      }

      (*(*v4 + 272))(v4);
      ++v3;
      v2 = *(this + 17);
      if (v3 >= *(v2 + 937))
      {
        goto LABEL_8;
      }
    }

    AppleBCMWLANProximityInterface::disableDatapath(v3, this);
  }

  else
  {
LABEL_8:
    v5 = *(v2 + 1056);
    if (v5)
    {
      (*(*v5 + 72))(v5);
      v6 = (*(*this + 728))(this);
      v7 = (*(*v6 + 88))(v6);
      (*(*v7 + 72))(v7, *(*(this + 17) + 1056));
      v2 = *(this + 17);
    }

    v8 = *(v2 + 1008);
    if (v8)
    {
      (*(*v8 + 208))(v8);
      v9 = *(*(this + 17) + 1000);
      if (v9)
      {
        (*(*v9 + 200))(v9);
        return 0;
      }

      AppleBCMWLANProximityInterface::disableDatapath(this);
    }

    else
    {
      AppleBCMWLANProximityInterface::disableDatapath(this);
    }
  }

  v10 = 3758097084;
  if ((*(*this + 1088))(this))
  {
    (*(*this + 1088))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANProximityInterface::disableDatapath(this);
    }
  }

  return v10;
}

uint64_t AppleBCMWLANProximityInterface::enable(AppleBCMWLANProximityInterface *this, unsigned int a2)
{
  if ((*(*this + 1088))(this))
  {
    (*(*this + 1088))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANProximityInterface::enable(this);
    }
  }

  IO80211SkywalkInterface::enable(this, a2);
  (*(*this + 1232))(this);
  return 0;
}

uint64_t AppleBCMWLANProximityInterface::disable(AppleBCMWLANProximityInterface *this, unsigned int a2)
{
  if ((*(*this + 1088))(this))
  {
    (*(*this + 1088))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANProximityInterface::disable(this);
    }
  }

  (*(*this + 1240))(this);

  return IO80211SkywalkInterface::disable(this, a2);
}

uint64_t AppleBCMWLANProximityInterface::getTxSubQueue(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 136);
  v3 = *(v2 + 4 * a2 + 1080);
  if (v3 >= *(v2 + 937))
  {
    return 0;
  }

  else
  {
    return *(v2 + 8 * v3 + 1024);
  }
}

uint64_t non-virtual thunk toAppleBCMWLANProximityInterface::getTxSubQueue(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 56);
  v3 = *(v2 + 4 * a2 + 1080);
  if (v3 >= *(v2 + 937))
  {
    return 0;
  }

  else
  {
    return *(v2 + 8 * v3 + 1024);
  }
}

uint64_t AppleBCMWLANProximityInterface::printDataPath(uint64_t *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = *(a2 + 28);
  v6 = *(a2 + 32);
  v7 = *(a2 + 24);
  if ((*(*a1 + 1088))(a1))
  {
    (*(*a1 + 1088))(a1);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANProximityInterface::printDataPath(a1);
    }
  }

  (*(*a1 + 1088))(a1);
  IO80211SkywalkInterface::getInterfaceRoleStr(a1);
  (*(*a1 + 160))(a1);
  v8 = IO80211Print() + v6;
  if (*(a1[17] + 937))
  {
    v9 = 0;
    do
    {
      (*(*a1 + 1088))(a1);
      v10 = IO80211Print();
      v8 = (*(**(a1[17] + 8 * v9 + 1024) + 216))(*(a1[17] + 8 * v9 + 1024), v4, v5, v7, v10 + v8);
      ++v9;
    }

    while (v9 < *(a1[17] + 937));
  }

  (*(*a1 + 1088))(a1);
  v11 = IO80211Print();
  v12 = (*(**(a1[17] + 1000) + 176))(*(a1[17] + 1000), v4, v5, v7, v11 + v8);
  (*(*a1 + 1088))(a1);
  v13 = IO80211Print();
  v14 = (*(**(a1[17] + 1008) + 184))(*(a1[17] + 1008), v4, v5, v7, v13 + v12);
  v15 = *(a2 + 28) + v14;
  *(a2 + 24) -= v14;
  *(a2 + 28) = v15;
  IO80211VirtualInterface::printDataPath();
  return 0;
}

uint64_t AppleBCMWLANProximityInterface::sendPendingPacketsToStack(AppleBCMWLANProximityInterface *this, IO80211NetworkPacket **a2, unsigned int a3)
{
  v4 = *(*(this + 17) + 1008);
  if (v4)
  {
    if (a3)
    {
      v5 = a2;
      v6 = a3;
      do
      {
        v7 = *v5++;
        (*(**(*(this + 17) + 1008) + 232))(*(*(this + 17) + 1008), v7, 0, 0);
        --v6;
      }

      while (v6);
      v4 = *(*(this + 17) + 1008);
    }

    result = (*(*v4 + 120))(v4, 0, 0);
    if (result)
    {
      v9 = *(**(*(this + 17) + 1008) + 192);

      return v9();
    }
  }

  else
  {
    result = (*(*this + 1088))(this, a2);
    if (result)
    {
      (*(*this + 1088))(this);
      result = CCLogStream::shouldLog();
      if (result)
      {
        return AppleBCMWLANProximityInterface::sendPendingPacketsToStack(this);
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANProximityInterface::freePendingPackets(AppleBCMWLANProximityInterface *this, IO80211NetworkPacket **a2)
{
  v3 = *(*(this + 17) + 1008);
  if (v3)
  {
    v4 = *(*v3 + 240);

    return v4();
  }

  else
  {
    result = (*(*this + 1088))(this, a2);
    if (result)
    {
      (*(*this + 1088))(this);
      result = CCLogStream::shouldLog();
      if (result)
      {
        return AppleBCMWLANProximityInterface::freePendingPackets(this);
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANProximityInterface::clearTrafficRegistrationState(AppleBCMWLANProximityInterface *this)
{
  if ((*(*this + 1088))(this))
  {
    (*(*this + 1088))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANProximityInterface::clearTrafficRegistrationState(this);
    }
  }

  *(*(this + 17) + 92) = 0;
  result = AppleBCMWLANProximityInterface::setLowLatencyTrafficState(this, 0, 0);
  *(*(this + 17) + 94) = 0;
  *(*(this + 17) + 95) = 0;
  return result;
}

uint64_t AppleBCMWLANProximityInterface::setP2P_COEX_PROTECTION(uint64_t *a1, unsigned __int8 *a2)
{
  if (IO80211SkywalkInterface::getInterfaceId(a1) == -1)
  {
    if ((*(*a1 + 1088))(a1))
    {
      (*(*a1 + 1088))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANProximityInterface::setP2P_COEX_PROTECTION(a1);
      }
    }

    return 16;
  }

  else if (AppleBCMWLANCore::is4388Up(*(a1[17] + 64)))
  {
    v4 = IOMallocZeroData();
    if (v4)
    {
      v5 = v4;
      *v4 = 16875520;
      *(v4 + 4) = 3;
      *(v4 + 8) = 1;
      *(v4 + 12) = 2;
      v6 = a2[4];
      *(v4 + 16) = 0;
      v7 = v4 + 16;
      *(v4 + 18) = v6;
      memcpy((v4 + 20), a2 + 5, v6);
      v8 = a2[74];
      v9 = v6 + v7;
      *(v9 + 4) = 1;
      *(v9 + 6) = v8;
      v6 += 8;
      memcpy((v7 + v6), a2 + 75, v8);
      *(v5 + 6) = v6 + v8 + 8;
      v17[0] = a1;
      v17[1] = AppleBCMWLANProximityInterface::handleSlotBssIovarAsyncCallBack;
      v17[2] = 0;
      v10 = *(a1[17] + 960);
      InterfaceId = IO80211SkywalkInterface::getInterfaceId(a1);
      v16[0] = v5;
      v16[1] = (v6 + v8 + ((v6 + v8 + 19) & 0x7FC) + 16);
      v12 = AppleBCMWLANCommander::sendVirtualIOVarSet(v10, InterfaceId, "slot_bss", v16, kNoRxExpected, v17, 0);
      if (v12)
      {
        v13 = v12;
        if ((*(*a1 + 1088))(a1))
        {
          (*(*a1 + 1088))(a1);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANProximityInterface::setP2P_COEX_PROTECTION(a1, a1 & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000, v13);
          }
        }

        v14 = (*(*a1 + 1336))(a1, v13);
      }

      else
      {
        v14 = 0;
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
    return 0;
  }

  return v14;
}

uint64_t non-virtual thunk toAppleBCMWLANProximityInterface::setP2P_COEX_PROTECTION(uint64_t a1, unsigned __int8 *a2)
{
  return AppleBCMWLANProximityInterface::setP2P_COEX_PROTECTION((a1 - 112), a2);
}

{
  return AppleBCMWLANProximityInterface::setP2P_COEX_PROTECTION((a1 - 128), a2);
}

uint64_t AppleBCMWLANProximityInterface::flushFlowQueues(AppleBCMWLANProximityInterface *this, ether_addr *a2)
{
  v4 = *(*(this + 17) + 112);
  if (v4)
  {
    AppleBCMWLANSkywalkInterface::flushFlowQueues(v4, a2);
  }

  return IO80211VirtualInterface::flushFlowQueues(this, a2);
}

uint64_t *IO80211BufferCursor::_crop@<X0>(uint64_t *this@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, void *a4@<X8>)
{
  if (a2 == -1)
  {
    v4 = 0;
  }

  else
  {
    v4 = a2;
  }

  v5 = this[1];
  if (v5)
  {
    v6 = v4 > v5;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    goto LABEL_27;
  }

  v7 = v5 - v4;
  v8 = a3 == -1 && v5 < v4;
  if (a3 != -1)
  {
    v7 = a3;
  }

  v9 = __CFADD__(v4, v7);
  if (__CFADD__(v4, v7))
  {
    v8 = 1;
  }

  v10 = v4 + v7 <= v5 && !v8;
  if (!v10 || v9 || (v11 = *this, *a4 = *this + v4, a4[1] = v7, v7 - 0x4000000000000000 < 0xC000000000000001) || !v11)
  {
LABEL_27:
    *a4 = 0;
    a4[1] = 0;
  }

  return this;
}

uint64_t IO80211BufferCursor::_asType<wl_event_data_if>(uint64_t *a1, uint64_t a2, const char *a3)
{
  v3 = &a3[a2];
  if (__CFADD__(a2, a3))
  {
    return 0;
  }

  if (a3 < 5)
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

uint64_t IO80211BufferCursor::_asType<bcmv3_awdl_scan_event_data_min>(uint64_t *a1, uint64_t a2, const char *a3)
{
  v3 = &a3[a2];
  if (__CFADD__(a2, a3))
  {
    return 0;
  }

  if (a3 < 4)
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

uint64_t IO80211BufferCursor::_asType<ether_addr>(uint64_t *a1, uint64_t a2, const char *a3)
{
  v3 = &a3[a2];
  if (__CFADD__(a2, a3))
  {
    return 0;
  }

  if (a3 < 6)
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

uint64_t IO80211BufferCursor::_asType<apple8021_awdl_cca_stats>(uint64_t *a1, uint64_t a2, const char *a3)
{
  v3 = &a3[a2];
  if (__CFADD__(a2, a3))
  {
    return 0;
  }

  if (a3 < 0x14)
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

uint64_t *OUTLINED_FUNCTION_16_3@<X0>(uint64_t a1@<X8>)
{
  result = *(a1 + 64);
  v2 = *result;
  return result;
}

uint64_t OUTLINED_FUNCTION_38_0()
{

  return CCLogStream::shouldLog();
}

uint64_t OUTLINED_FUNCTION_39_1()
{

  return IO80211SkywalkInterface::getInterfaceId(v0);
}

uint64_t AppleBCMWLANSkywalkPacketPool::initWithName(IOUserNetworkPacketBufferPool *a1, const char *a2, OSObject *a3, uint64_t a4)
{
  v5.dmaSpecification.options = 0;
  memset(v5.dmaSpecification._resv, 0, 192);
  v5.dmaSpecification.maxAddressBits = 64;
  *&v5.packetCount = *a4;
  *&v5.memorySegmentSize = *(a4 + 16);
  return IOUserNetworkPacketBufferPool::initWithName(a1, a2, a3, 1u, &v5);
}

uint64_t non-virtual thunk toAppleBCMWLANSkywalkPacketPool::initWithName(uint64_t a1, const char *a2, OSObject *a3, uint64_t a4)
{
  v5.dmaSpecification.options = 0;
  memset(v5.dmaSpecification._resv, 0, 192);
  v5.dmaSpecification.maxAddressBits = 64;
  *&v5.packetCount = *a4;
  *&v5.memorySegmentSize = *(a4 + 16);
  return IOUserNetworkPacketBufferPool::initWithName((a1 - 56), a2, a3, 1u, &v5);
}

uint64_t AppleBCMWLANSkywalkPacketPool::newPacket(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = (*(*a1 + 136))(a1);
  if (!v4)
  {
    return 3758097085;
  }

  v5 = v4;
  result = 0;
  *a3 = v5;
  return result;
}

uint64_t non-virtual thunk toAppleBCMWLANSkywalkPacketPool::newPacket(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = (*(*(a1 - 40) + 136))();
  if (!v4)
  {
    return 3758097085;
  }

  v5 = v4;
  result = 0;
  *a3 = v5;
  return result;
}

OSObject *AppleBCMWLANChipManagerPCIe4357::withChip(AppleBCMWLANChipManagerPCIe4357 *this, uint64_t a2)
{
  v6 = 0xAAAAAAAAAAAAAAAALL;
  if (OSObjectAllocate(gAppleBCMWLANChipManagerPCIe4357MetaClass, &v6))
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

BOOL AppleBCMWLANChipManagerPCIe4357::initWithChip(OSObject *this, int a2)
{
  result = AppleBCMWLANChipManagerPCIe::init(this);
  if (result)
  {
    AppleBCMWLANChipManagerPCIe::setOTPCoreID(this, 0);
    AppleBCMWLANChipManagerPCIe::setAWDLSupported(this, 1);
    AppleBCMWLANChipManagerPCIe::setChipNumber(this, a2);
    AppleBCMWLANChipManagerPCIe::setCoreCount(this, 9);
    AppleBCMWLANChipManagerPCIe::setCoreRegionList(this, &kBCOM4357ChipCores);
    AppleBCMWLANChipManagerPCIe::setWrapperCount(this, 18);
    AppleBCMWLANChipManagerPCIe::setWrapperRegionList(this, &kBCOM4357ChipWrappers);
    AppleBCMWLANChipManagerPCIe::setMemoryCount(this, 7);
    AppleBCMWLANChipManagerPCIe::setMemoryRegionList(this, &kBCOM4357ChipMemories);
    AppleBCMWLANChipManagerPCIe::setBackplaneWindowCount(this, 8);
    AppleBCMWLANChipManagerPCIe::setBackplaneWindows(this, &kBCOM4357ChipBackplaneWindows);
    AppleBCMWLANChipManagerPCIe::setOTPCoreID(this, 8);
    AppleBCMWLANChipManagerPCIe::setUserOTPRange(this, &kBCOM4357ChipUserOTP);
    AppleBCMWLANChipManagerPCIe::setChipOTPRange(this, &kBCOM4357ChipOTP);
    AppleBCMWLANChipManagerPCIe::setCoreIDTable(this, kBCOM4357CoreIDTable);
    AppleBCMWLANChipManagerPCIe::setUCodeRegionInfo(this, &kBCOM4357UCodeSCRRegionInfo, 0);
    AppleBCMWLANChipManagerPCIe::setUCodeRegionInfo(this, &kBCOM4357UCodeSHMRegionInfo, 1);
    AppleBCMWLANChipManagerPCIe::setConfigSpaceSaveRange(this, &kBCOM4357ChipConfigSpaceStateTable);
    AppleBCMWLANChipManagerPCIe::setConfigSpaceSaveCount(this, 3);
    AppleBCMWLANChipManagerPCIe::setMemoryRAMAddress(this, 1507328);
    AppleBCMWLANChipManagerPCIe::setPCIeHeaderLength(this, 256);
    AppleBCMWLANChipManagerPCIe::setSROMVersion(this, 16);
    AppleBCMWLANChipManagerPCIe::setSROMWordCount(this, 1024);
    AppleBCMWLANChipManagerPCIe::setSROMSignature(this, 17239);
    AppleBCMWLANChipManagerPCIe::setMultiFunctionChip(this, 0);
    AppleBCMWLANChipManagerPCIe::setNotSplitArchitecture(this, 1);
    AppleBCMWLANChipManagerPCIe::setBootMSIUnsupported(this, 1);
    AppleBCMWLANChipManagerPCIe::setTrapBeforeFLRUnSupported(this, 1);
    AppleBCMWLANChipManagerPCIe::sethostWakeToggleNotConfigured(this, 1);
    AppleBCMWLANChipManagerPCIe::setSafeToCaptureSoCRAM(this, 1);
    v10 = 0;
    while (1)
    {
      BackplaneWindows = AppleBCMWLANChipManagerPCIe::getBackplaneWindows(this);
      PacketCount = AppleBCMWLANPCIeFlowQueue::getPacketCount(this);
      if (!AppleBCMWLANChipManagerPCIe::findRemappableWindow(BackplaneWindows, PacketCount, 0, &v10))
      {
        break;
      }

      AppleBCMWLANChipManagerPCIe::incrementCoreRemapperCount(this);
    }

    v10 = 0;
    while (1)
    {
      v7 = AppleBCMWLANChipManagerPCIe::getBackplaneWindows(this);
      v8 = AppleBCMWLANPCIeFlowQueue::getPacketCount(this);
      if (!AppleBCMWLANChipManagerPCIe::findRemappableWindow(v7, v8, 1, &v10))
      {
        break;
      }

      AppleBCMWLANChipManagerPCIe::incrementWrapperRemapperCount(this);
    }

    v9 = OSDictionary::withCapacity(0x20u);
    return AppleBCMWLANChipManagerPCIe::setChipProvisioningData(this, v9);
  }

  return result;
}

OSObject *AppleBCMWLANChipManagerPCIe4387::withChip(AppleBCMWLANChipManagerPCIe4387 *this, uint64_t a2)
{
  v6 = 0xAAAAAAAAAAAAAAAALL;
  if (OSObjectAllocate(gAppleBCMWLANChipManagerPCIe4387MetaClass, &v6))
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

uint64_t AppleBCMWLANChipManagerPCIe4387::initWithChip(OSObject *this, int a2)
{
  result = AppleBCMWLANChipManagerPCIe::init(this);
  if (result)
  {
    result = IOMallocZeroTyped();
    this[1].ivars = result;
    if (result)
    {
      AppleBCMWLANChipManagerPCIe::setOTPCoreID(this, 0);
      AppleBCMWLANChipManagerPCIe::setAWDLSupported(this, 1);
      AppleBCMWLANChipManagerPCIe::setChipNumber(this, a2);
      AppleBCMWLANChipManagerPCIe::setCoreCount(this, 10);
      AppleBCMWLANChipManagerPCIe::setCoreRegionList(this, &kBCOM4387ChipCores);
      AppleBCMWLANChipManagerPCIe::setWrapperCount(this, 19);
      AppleBCMWLANChipManagerPCIe::setWrapperRegionList(this, &kBCOM4387ChipWrappers);
      AppleBCMWLANChipManagerPCIe::setMemoryCount(this, 7);
      AppleBCMWLANChipManagerPCIe::setMemoryRegionList(this, &kBCOM4387ChipMemories);
      AppleBCMWLANChipManagerPCIe::setBackplaneWindowCount(this, 9);
      AppleBCMWLANChipManagerPCIe::setBackplaneWindows(this, &kBCOM4387ChipBackplaneWindows);
      AppleBCMWLANChipManagerPCIe::setOTPCoreID(this, 8);
      AppleBCMWLANChipManagerPCIe::setUserOTPRange(this, &kBCOM4387ChipUserOTP);
      AppleBCMWLANChipManagerPCIe::setChipOTPRange(this, &kBCOM4387ChipOTP);
      AppleBCMWLANChipManagerPCIe::setCoreIDTable(this, kBCOM4387CoreIDTable);
      AppleBCMWLANChipManagerPCIe::setUCodeRegionInfo(this, &kBCOM4387UCodeSCRRegionInfo, 0);
      AppleBCMWLANChipManagerPCIe::setUCodeRegionInfo(this, &kBCOM4387UCodeSHMRegionInfo, 1);
      AppleBCMWLANChipManagerPCIe::setConfigSpaceSaveRange(this, &kBCOM4387ChipConfigSpaceStateTable);
      AppleBCMWLANChipManagerPCIe::setConfigSpaceSaveCount(this, 3);
      AppleBCMWLANChipManagerPCIe::setMemoryRAMAddress(this, 7602176);
      AppleBCMWLANChipManagerPCIe::setPCIeHeaderLength(this, 256);
      AppleBCMWLANChipManagerPCIe::setSROMVersion(this, 15);
      AppleBCMWLANChipManagerPCIe::setSROMWordCount(this, 2048);
      AppleBCMWLANChipManagerPCIe::setSROMSignature(this, 4368);
      AppleBCMWLANChipManagerPCIe::setSROMoffsetMacAddress(this, 4);
      AppleBCMWLANChipManagerPCIe::setSROMoffsetSKU(this, 14);
      AppleBCMWLANChipManagerPCIe::setSROMoffsetSignature(this, 2);
      AppleBCMWLANChipManagerPCIe::setMultiFunctionChip(this, 1);
      AppleBCMWLANChipManagerPCIe::setSafeToCaptureSoCRAM(this, 1);
      AppleBCMWLANChipManagerPCIe::setHMAPSupported(this, 1);
      AppleBCMWLANChipManagerPCIe::setHMAPBaseAddress(this, 1408);
      AppleBCMWLANChipManagerPCIe::sethostWakeToggleNotConfigured(this, 1);
      AppleBCMWLANChipManagerPCIe::setM2MResetOnSSResetDisabled(this, 1);
      AppleBCMWLANChipManagerPCIe::setPowerControlRequired(this, 1);
      AppleBCMWLANChipManagerPCIe::setPTMSupport(this, 1);
      v10 = 0;
      while (1)
      {
        BackplaneWindows = AppleBCMWLANChipManagerPCIe::getBackplaneWindows(this);
        PacketCount = AppleBCMWLANPCIeFlowQueue::getPacketCount(this);
        if (!AppleBCMWLANChipManagerPCIe::findRemappableWindow(BackplaneWindows, PacketCount, 0, &v10))
        {
          break;
        }

        AppleBCMWLANChipManagerPCIe::incrementCoreRemapperCount(this);
      }

      v10 = 0;
      while (1)
      {
        v7 = AppleBCMWLANChipManagerPCIe::getBackplaneWindows(this);
        v8 = AppleBCMWLANPCIeFlowQueue::getPacketCount(this);
        if (!AppleBCMWLANChipManagerPCIe::findRemappableWindow(v7, v8, 1, &v10))
        {
          break;
        }

        AppleBCMWLANChipManagerPCIe::incrementWrapperRemapperCount(this);
      }

      v9 = OSDictionary::withCapacity(0x20u);
      return AppleBCMWLANChipManagerPCIe::setChipProvisioningData(this, v9);
    }
  }

  return result;
}

void AppleBCMWLANChipManagerPCIe4387::free(OSObject *this)
{
  ivars = this[1].ivars;
  if (ivars)
  {
    memset_s(ivars, 8uLL, 0, 8uLL);
    v3 = this[1].ivars;
    if (v3)
    {
      IOFree(v3, 8uLL);
      this[1].ivars = 0;
    }
  }

  AppleBCMWLANChipManagerPCIe::free(this);
}

uint64_t OUTLINED_FUNCTION_3_6(int a1, const char *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, unint64_t a12, unsigned __int8 a13)
{

  return AppleBCMWLANChipManagerPCIe::getChipProvisioningData(v13, a2, &a13, 0x20uLL, &a12);
}

uint64_t OUTLINED_FUNCTION_4_8(uint64_t a1, const char *a2)
{

  return AppleBCMWLANChipManagerPCIe::setChipProvisioningData(v2, a2, v3);
}

OSObject *AppleBCMWLANAudioProtector::withDriver(AppleBCMWLANAudioProtector *this, AppleBCMWLANCore *a2, const OSString *a3)
{
  v7 = 0xAAAAAAAAAAAAAAAALL;
  if (OSObjectAllocate(gAppleBCMWLANAudioProtectorMetaClass, &v7))
  {
    return 0;
  }

  v5 = v7;
  if (v7 && ((v7->OSMetaClassBase::__vftable[2].getMetaClass)(v7, this, a2) & 1) == 0)
  {
    (v5->release)(v5);
    return 0;
  }

  return v5;
}

uint64_t AppleBCMWLANAudioProtector::initWithDriver(OSObject *this, AppleBCMWLANCore *a2, const OSString *a3)
{
  v6 = IO80211WorkSource::init(this, this, 0);
  result = 0;
  if (a2 && v6)
  {
    v8 = IOMallocZeroTyped();
    this[1].OSObjectInterface::__vftable = v8;
    v9 = &this[1].OSObjectInterface;
    if (v8)
    {
      v8[1].init = a2;
      *(*v9 + 32) = OSMetaClassBase::safeMetaCast(*(*v9 + 16), gIOServiceMetaClass);
      *(*v9 + 8) = (*(*a2 + 1952))(a2);
      v10 = *(*v9 + 8);
      if (!v10)
      {
        ClassNameHelper = getClassNameHelper(this);
        IOLog("%s:%s(): Unable to get debug logger\n", ClassNameHelper, "initWithDriver");
        goto LABEL_22;
      }

      (*(*v10 + 8))(v10);
      *(*v9 + 104) = AppleBCMWLANCore::getFaultReporter(*(*v9 + 16));
      (*(**(*v9 + 104) + 8))(*(*v9 + 104));
      **v9 = AppleBCMWLANCore::getCommander(a2);
      v11 = **v9;
      if (!v11)
      {
        AppleBCMWLANAudioProtector::initWithDriver(*v9);
        goto LABEL_22;
      }

      (*(*v11 + 8))(v11);
      if (a3)
      {
        v12 = OSString::withString(a3);
      }

      else
      {
        v12 = 0;
      }

      this[1].OSObjectInterface::__vftable[4].init = v12;
      (*(*this[1].OSObjectInterface::__vftable[1].init + 88))(this[1].OSObjectInterface::__vftable[1].init);
      this[1].OSObjectInterface::__vftable[3].free = IO80211TimerSource::allocWithParams();
      v14 = this[1].OSObjectInterface::__vftable;
      if (!v14[3].free)
      {
        AppleBCMWLANAudioProtector::initWithDriver(v14);
        goto LABEL_22;
      }

      if (AppleBCMWLANAudioProtector::createReportSet(this, v13))
      {
        if (AppleBCMWLANAudioProtector::createReportersAndLegend(this))
        {
          return 1;
        }

        if ((AppleBCMWLANAudioProtector::initWithDriver(&this[1].OSObjectInterface, &v16) & 1) == 0)
        {
LABEL_22:
          result = *v9;
          if (!*v9)
          {
            return result;
          }

          goto LABEL_23;
        }
      }

      else if ((AppleBCMWLANAudioProtector::initWithDriver(&this[1].OSObjectInterface, &v16) & 1) == 0)
      {
        goto LABEL_22;
      }

      result = v16;
LABEL_23:
      memset_s(result, 0x70uLL, 0, 0x70uLL);
      result = *v9;
      if (*v9)
      {
        IOFree(result, 0x70uLL);
        result = 0;
        *v9 = 0;
      }

      return result;
    }

    if (AppleBCMWLANAudioProtector::initWithDriver())
    {
      return 0;
    }

    goto LABEL_22;
  }

  return result;
}

uint64_t AppleBCMWLANAudioProtector::sendLDOCommmand(uint64_t a1)
{
  v2 = (a1 + 64);
  v1 = *(a1 + 64);
  v3 = *(v1 + 44);
  v16 = v3;
  isSleeping = AppleBCMWLANCommander::isSleeping(*v1);
  ++*(*v2 + 18);
  if (AppleBCMWLANCore::isWatchdogFailed((*v2)[2]))
  {
    v9 = -528336892;
    goto LABEL_31;
  }

  v5 = *v2;
  if (*(*v2 + 45) == *(*v2 + 44))
  {
    result = v5[1];
    if (result)
    {
      result = CCLogStream::shouldLog();
      if (result)
      {
        return AppleBCMWLANAudioProtector::sendLDOCommmand(v2);
      }
    }

    return result;
  }

  if (AppleBCMWLANCore::isSendingFWCommandPermitted(v5[2]))
  {
    if (isSleeping)
    {
      AppleBCMWLANCommander::wakeup(**v2);
    }

    if (v3)
    {
      v7 = 0x576C616E41504C6FLL;
    }

    else
    {
      v7 = 0x576C616E41504C66;
    }

    IOSimpleReporter::incrementValue((*v2)[10], v7, 1);
    v8 = **v2;
    v15[0] = &v16;
    v15[1] = 4;
    v9 = AppleBCMWLANCommander::runIOVarSet(v8, "ldo_prot_ovrd", v15, 0, 0);
    if (isSleeping && !AppleBCMWLANCore::isPowerChangeInProgress((*v2)[2]))
    {
      AppleBCMWLANCommander::quiesce(**v2);
    }

    if (!v9)
    {
      *(*v2 + 45) = *(*v2 + 44);
      *(*v2 + 12) = 0;
      if (*(*v2 + 45) == 1)
      {
        v10 = 0x466F726365204F4ELL;
      }

      else
      {
        v10 = 1635087471;
      }

      IOStateReporter::setChannelState((*v2)[11], 0x574946494C444F53uLL, v10);
      v14 = 0;
LABEL_26:
      result = (*v2)[1];
      if (result)
      {
        result = CCLogStream::shouldLog();
        if (result)
        {
          return AppleBCMWLANAudioProtector::sendLDOCommmand(v2, v14);
        }
      }

      return result;
    }

LABEL_31:
    AppleBCMWLANAudioProtector::sendLDOCommmand(v2, v9, v15);
    v14 = v15[0];
    goto LABEL_26;
  }

  v11 = *v2;
  if ((*v2)[1])
  {
    shouldLog = CCLogStream::shouldLog();
    v11 = *v2;
    if (shouldLog)
    {
      CCLogStream::logAlert(v11[1], "[dk] %s@%d:Sending FW command isn't permitted. Rearm the timer\n", "sendLDOCommmand", 336);
      v11 = *v2;
    }
  }

  v13 = *(*v11[7] + 56);

  return v13();
}

{
  return CCLogStream::logAlert(*(*a1 + 8), "[dk] %s@%d:LDO Request changed before sending command to FW. Skipping..\n", "sendLDOCommmand", 332);
}

BOOL AppleBCMWLANAudioProtector::createReportSet(AppleBCMWLANAudioProtector *this, unsigned int a2)
{
  v3 = OSSet::withCapacity(4, a2);
  v5 = *(this + 8);
  v4 = this + 64;
  *(v5 + 96) = v3;
  v6 = *(*v4 + 96);
  if (!v6 && *(*v4 + 8) && CCLogStream::shouldLog())
  {
    AppleBCMWLANAudioProtector::createReportSet(v4);
  }

  return v6 != 0;
}

uint64_t AppleBCMWLANAudioProtector::setLDOOnRequest(AppleBCMWLANAudioProtector *this, int a2)
{
  v4 = *(this + 8);
  if (*(v4 + 8))
  {
    shouldLog = CCLogStream::shouldLog();
    v4 = *(this + 8);
    if (shouldLog)
    {
      CCLogStream::logCrit(*(v4 + 8), "[dk] %s@%d:SetLDOOnRequest %u\n", "setLDOOnRequest", 256, a2);
      v4 = *(this + 8);
    }
  }

  *(v4 + 44) = a2;

  return IO80211WorkSource::signalWorkAvailable(this);
}

uint64_t AppleBCMWLANAudioProtector::freeResources(AppleBCMWLANAudioProtector *this)
{
  v2 = *(this + 8);
  v3 = v2[12];
  if (v3)
  {
    (*(*v3 + 16))(v3);
    *(*(this + 8) + 96) = 0;
    v2 = *(this + 8);
  }

  v4 = v2[7];
  if (v4)
  {
    (*(*v4 + 80))(v4);
    (*(**(*(this + 8) + 56) + 16))(*(*(this + 8) + 56));
    *(*(this + 8) + 56) = 0;
    v2 = *(this + 8);
  }

  v5 = v2[8];
  if (v5)
  {
    (*(*v5 + 16))(v5);
    *(*(this + 8) + 64) = 0;
    v2 = *(this + 8);
  }

  if (*v2)
  {
    (*(**v2 + 16))(*v2);
    **(this + 8) = 0;
    v2 = *(this + 8);
  }

  v6 = v2[13];
  if (v6)
  {
    (*(*v6 + 16))(v6);
    *(*(this + 8) + 104) = 0;
    v2 = *(this + 8);
  }

  result = v2[1];
  if (result)
  {
    result = (*(*result + 16))(result);
    *(*(this + 8) + 8) = 0;
  }

  return result;
}

uint64_t AppleBCMWLANAudioProtector::free(AppleBCMWLANAudioProtector *this)
{
  AppleBCMWLANAudioProtector::freeResources(this);
  v2 = *(this + 8);
  if (v2)
  {
    memset_s(v2, 0x70uLL, 0, 0x70uLL);
    v3 = *(this + 8);
    if (v3)
    {
      IOFree(v3, 0x70uLL);
      *(this + 8) = 0;
    }
  }

  return IO80211WorkSource::free(this);
}

uint64_t AppleBCMWLANAudioProtector::checkForWork(AppleBCMWLANAudioProtector *this)
{
  v1 = *(this + 8);
  if (*(v1 + 44) != *(v1 + 45))
  {
    if (*(v1 + 8))
    {
      shouldLog = CCLogStream::shouldLog();
      v1 = *(this + 8);
      if (shouldLog)
      {
        if (*(v1 + 44))
        {
          v5 = "on";
        }

        else
        {
          v5 = "off";
        }

        CCLogStream::logNotice(*(v1 + 8), "[dk] %s@%d:Will send a LDO %s command\n", "checkForWork", 314, v5);
        v1 = *(this + 8);
      }
    }

    (*(**(v1 + 56) + 64))(*(v1 + 56), 1);
  }

  return 0;
}

uint64_t AppleBCMWLANAudioProtector::configureReport(OSObject *this, OSCollection *a2, OSData *a3, unsigned int *a4, unsigned int *a5)
{
  v6 = a3;
  v13 = 0;
  v8 = &this[1].OSObjectInterface;
  v14 = IOReporter::configureAllReports(this[1].OSObjectInterface::__vftable[6].init, a2, a3, &v13, a5);
  free = v8->free;
  v10 = v8->__vftable[6].free;
  ClassNameHelper = getClassNameHelper(this);
  v14 = testPostConfigureAllAndAdjustV3(free, v10, ClassNameHelper, v6, &v14, a4, v13, -2);
  if (v14)
  {
    AppleBCMWLANAudioProtector::configureReport(v8, this);
  }

  return v14;
}

uint64_t AppleBCMWLANAudioProtector::updateReport(OSObject *this, OSCollection *a2, OSData *a3, unsigned int *a4, unint64_t *a5, unint64_t *a6, IOMemoryDescriptor *a7)
{
  v24 = 0;
  free = this[1].free;
  ClassNameHelper = getClassNameHelper(this);
  testPreUpdateAllReportersV3(free, ClassNameHelper, this[1].OSObjectInterface::__vftable[6].init, *a5, *a6, a7);
  updated = IOReporter::updateAllReports(this[1].OSObjectInterface::__vftable[6].init, a2, a3, &v24, *a5, *a6, a7, v16);
  v17 = this[1].OSObjectInterface::__vftable;
  v18 = v17->free;
  v19 = v17[6].free;
  v20 = getClassNameHelper(this);
  updated = testPostUpdateAllAndAdjustV3(v18, v19, v20, &updated, v24, a4, a5, a6, -2);
  if (updated && this[1].free && CCLogStream::shouldLog())
  {
    v22 = this[1].free;
    v23 = getClassNameHelper(this);
    CCLogStream::logEmergency(v22, "[dk] %s@%d:DKReporter::%s::%s(%d) testAndAdjustOffsetAndCapacity failed count %u outElementCount %u offset %llu capacity %llu", "updateReport", 493, v23, "updateReport", 493, v24, *a4, *a5, *a6);
  }

  return updated;
}

uint64_t OUTLINED_FUNCTION_2_9(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  *a2 = *a1;
  return *(v2 + 8);
}

char *convertBcomTagToString(int a1)
{
  v1 = &off_1003C8F70;
  v2 = 97;
  while (*(v1 - 2) != a1)
  {
    v1 += 3;
    if (!--v2)
    {
      return 0;
    }
  }

  return *v1;
}

char *convertBcomSetToString(int a1)
{
  v1 = &off_1003C9880;
  v2 = 44;
  while (*(v1 - 2) != a1)
  {
    v1 += 2;
    if (!--v2)
    {
      return 0;
    }
  }

  return *v1;
}

AppleBCMWLANCoreDbg *AppleBCMWLANCoreDbg::withCoreDriver(AppleBCMWLANCoreDbg *this, AppleBCMWLANCore *a2)
{
  v5 = 0xAAAAAAAAAAAAAAAALL;
  if (OSObjectAllocate(gAppleBCMWLANCoreDbgMetaClass, &v5))
  {
    return 0;
  }

  v3 = v5;
  if (v5 && (AppleBCMWLANCoreDbg::initWithCoreDriver(v5, this) & 1) == 0)
  {
    (*(*v3 + 16))(v3);
    return 0;
  }

  return v3;
}

uint64_t AppleBCMWLANCoreDbg::initWithCoreDriver(AppleBCMWLANCoreDbg *this, AppleBCMWLANCore *a2)
{
  if (a2)
  {
    (*(*a2 + 1952))(a2);
  }

  result = IO80211CoreDbg::initWithOptions();
  if (result)
  {
    result = IOMallocZeroTyped();
    *(this + 6) = result;
    if (result)
    {
      *result = a2;
      result = **(this + 6);
      if (result)
      {
        *(*(this + 6) + 8) = (*(*result + 1952))(result);
        return *(*(this + 6) + 8) != 0;
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANCoreDbg::free(AppleBCMWLANCoreDbg *this)
{
  v2 = *(this + 6);
  if (v2)
  {
    memset_s(v2, 0x10uLL, 0, 0x10uLL);
    v3 = *(this + 6);
    if (v3)
    {
      IOFree(v3, 0x10uLL);
      *(this + 6) = 0;
    }
  }

  return IO80211CoreDbg::free(this);
}

uint64_t AppleBCMWLANCoreDbg::dbgTriggerWatchdog(AppleBCMWLANCore ***this, char *a2)
{
  result = IOMallocZeroData();
  if (result)
  {
    v5 = result;
    strlcpy((result + 10), a2, 0x80uLL);
    v6 = AppleBCMWLANCoreDbg::cmdTriggerWatchdog(v5, *this[6]);
    IOFreeData();
    return v6;
  }

  return result;
}

uint64_t AppleBCMWLANCoreDbg::cmdTriggerWatchdog(uint64_t a1, AppleBCMWLANCore *a2)
{
  v4 = a1 + 241664;
  if (a1)
  {
    v5 = *(a1 + 245208);
    v6 = *(a1 + 245200);
  }

  v7 = (*(*a2 + 1952))(a2);
  v8 = *(a1 + 10);
  if (v8 != 84)
  {
    if (v8 == 116 && (v8 = *(a1 + 11), v8 == 116))
    {
      if (*(a1 + 12))
      {
        goto LABEL_12;
      }
    }

    else if (116 != v8)
    {
      goto LABEL_12;
    }

    AppleBCMWLANCore::featureFlagClearBit(a2, 23);
LABEL_12:
    if (strnstr((a1 + 10), "SoftErrorTriggeredChipReset", 0x80uLL))
    {
      if (v7 && CCLogStream::shouldLog())
      {
        CCLogStream::logNotice(v7, "[dk] %s@%d:Processing: SoftErrorTriggeredChipReset\n", "cmdTriggerWatchdog", 1134);
      }

      v11 = IO80211Print();
      result = IOMallocZeroData();
      if (result)
      {
        v28 = 0u;
        v29 = 0u;
        v26 = 0u;
        v27 = 0u;
        v24 = 0u;
        v25 = 0u;
        *v22 = 0u;
        v23 = 0u;
        if (IO80211ThreadProcessInfo::getProcessName(v22, 0x80, v12))
        {
          IO80211Controller::getProcessName(a2, v22, 0x80uLL);
        }

        FaultReporter = AppleBCMWLANCore::getFaultReporter(a2);
        CCFaultReporter::reportFault(FaultReporter, 5u, "/Library/Caches/com.apple.xbs/Sources/AppleBCMWLANV3_driverkit/AppleBCMWLANCoreDbg.cpp", 0x47Cu, "cmdTriggerWatchdog", 0, -469793501, "client=%s,call=cmdTriggerWatchdog", v22);
LABEL_28:
        *(v4 + 3520) = v11;
        IOFreeData();
        return 0;
      }
    }

    else if (strnstr((a1 + 10), "TriggerCoreCapture", 0x80uLL))
    {
      if (v7 && CCLogStream::shouldLog())
      {
        CCLogStream::logNotice(v7, "[dk] %s@%d:Processing: TriggerCoreCapture\n", "cmdTriggerWatchdog", 1157);
      }

      v11 = IO80211Print();
      result = IOMallocZeroData();
      if (result)
      {
        v28 = 0u;
        v29 = 0u;
        v26 = 0u;
        v27 = 0u;
        v24 = 0u;
        v25 = 0u;
        *v22 = 0u;
        v23 = 0u;
        if (IO80211ThreadProcessInfo::getProcessName(v22, 0x80, v14))
        {
          IO80211Controller::getProcessName(a2, v22, 0x80uLL);
        }

        v15 = AppleBCMWLANCore::getFaultReporter(a2);
        CCFaultReporter::reportFault(v15, 4u, "/Library/Caches/com.apple.xbs/Sources/AppleBCMWLANV3_driverkit/AppleBCMWLANCoreDbg.cpp", 0x493u, "cmdTriggerWatchdog", 0, -469793485, "client=%s,call=cmdTriggerCoreCapture", v22);
        goto LABEL_28;
      }
    }

    else if (strnstr((a1 + 10), "w", 0x80uLL) || strnstr((a1 + 10), "t", 0x80uLL) || strnstr((a1 + 10), "tt", 0x80uLL))
    {
      v11 = IO80211Print();
      result = IOMallocZeroData();
      if (result)
      {
        v28 = 0u;
        v29 = 0u;
        v26 = 0u;
        v27 = 0u;
        v24 = 0u;
        v25 = 0u;
        *v22 = 0u;
        v23 = 0u;
        if (IO80211ThreadProcessInfo::getProcessName(v22, 0x80, v16))
        {
          IO80211Controller::getProcessName(a2, v22, 0x80uLL);
        }

        v17 = AppleBCMWLANCore::getFaultReporter(a2);
        CCFaultReporter::reportFault(v17, 5u, "/Library/Caches/com.apple.xbs/Sources/AppleBCMWLANV3_driverkit/AppleBCMWLANCoreDbg.cpp", 0x4A9u, "cmdTriggerWatchdog", 0, -469793532, "client=%s,call=cmdTriggerWatchdog", v22);
        if (strnstr((a1 + 10), "-block", 0x80uLL))
        {
          clock_interval_to_deadline();
          v18 = (*(*a2 + 104))(a2);
          v19 = AppleBCMWLANCore::getFaultReporter(a2);
          (*(*v18 + 80))(v18, v19, 0xAAAAAAAAAAAAAAAALL);
        }

        goto LABEL_28;
      }
    }

    else
    {
      v20 = *(a1 + 10);
      if (v20 == 87)
      {
        v21 = -*(a1 + 11);
      }

      else
      {
        v21 = 87 - v20;
      }

      if (v21)
      {
        *(v4 + 3520) = 0;
        return 19;
      }

      v11 = IO80211Print();
      result = AppleBCMWLANCore::watchdog(a2, 0);
    }

    v10 = v11;
    goto LABEL_44;
  }

  if (*(a1 + 11))
  {
    goto LABEL_12;
  }

  LODWORD(v10) = IO80211Print();
  result = 0;
  v10 = v10;
LABEL_44:
  *(v4 + 3520) = v10;
  return result;
}

uint64_t AppleBCMWLANCoreDbg::dbgTriggerCrash(uint64_t a1, int a2)
{
  v4 = (*(***(a1 + 48) + 1952))(**(a1 + 48));
  v5 = v4;
  if (a2 <= 8 && v4 && CCLogStream::shouldLog())
  {
    AppleBCMWLANCoreDbg::dbgTriggerCrash(a2, v5);
  }

  if (a2 > 4)
  {
    if (a2 > 6)
    {
      if (a2 == 7)
      {
        IOLog("User induced Dext Core Terminate\n");
        Bus = **(a1 + 48);
      }

      else
      {
        if (a2 != 8)
        {
LABEL_22:
          if (v5 && CCLogStream::shouldLog())
          {
            CCLogStream::logAlert(v5, "[dk] %s@%d:Invalid command id %d\n", "dbgTriggerCrash", 945, a2);
          }

          return 0;
        }

        IOLog("User induced Dext Bus Terminate\n");
        Bus = AppleBCMWLANCore::getBus(**(a1 + 48));
      }

      IOService::Terminate(Bus, 0, 0);
      return 0;
    }

    if (a2 != 5)
    {
      AppleBCMWLANCoreDbg::dbgTriggerCrash();
    }

    v9 = AppleBCMWLANCore::getBus(**(a1 + 48));
    (*(*v9 + 440))(v9);
  }

  else
  {
    if (a2 <= 2)
    {
      if (a2 == 1)
      {
        Commander = AppleBCMWLANCore::getCommander(**(a1 + 48));
        AppleBCMWLANCommander::crashCommander(Commander);
      }

      if (a2 == 2)
      {
        v6 = AppleBCMWLANCore::getCommander(**(a1 + 48));
        AppleBCMWLANCommander::crashIOVar(v6);
LABEL_15:
        v8 = AppleBCMWLANCore::getBus(**(a1 + 48));
        (*(*v8 + 432))(v8);
        return 0;
      }

      goto LABEL_22;
    }

    if (a2 != 3)
    {
      goto LABEL_15;
    }
  }

  return 0;
}

uint64_t AppleBCMWLANCoreDbg::cmdPrintStats(uint64_t a1, IOService *a2)
{
  v4 = a1 + 241664;
  if (a1)
  {
    v5 = *(a1 + 245208);
    v6 = *(a1 + 245200);
  }

  else
  {
    v5 = 0;
  }

  (a2->OSObject::OSMetaClassBase::__vftable[34].free)(a2);
  v7 = AppleBCMWLANCore::captureDriverState(a2, 3825173763, v5);
  if (a1)
  {
    *(v4 + 3520) = v7;
  }

  return 0;
}

uint64_t AppleBCMWLANCoreDbg::cmdDebugAction(uint64_t a1, AppleBCMWLANCore *a2)
{
  v3 = IO80211CoreDbg::parseUInt32FromCMD();
  Bus = AppleBCMWLANCore::getBus(a2);
  (*(*Bus + 248))(Bus, v3, 0, 0, 0);
  return 0;
}

uint64_t AppleBCMWLANCoreDbg::cmdForceReAssoc(int a1, AppleBCMWLANCore *this)
{
  FaultReporter = AppleBCMWLANCore::getFaultReporter(this);

  return CCFaultReporter::reportFault(FaultReporter, 0x24u, "/Library/Caches/com.apple.xbs/Sources/AppleBCMWLANV3_driverkit/AppleBCMWLANCoreDbg.cpp", 0x3DBu, "cmdForceReAssoc", 0, -528348671, 0);
}

uint64_t AppleBCMWLANCoreDbg::cmdForceReCalibrate(int a1, AppleBCMWLANCore *this)
{
  FaultReporter = AppleBCMWLANCore::getFaultReporter(this);

  return CCFaultReporter::reportFault(FaultReporter, 0x24u, "/Library/Caches/com.apple.xbs/Sources/AppleBCMWLANV3_driverkit/AppleBCMWLANCoreDbg.cpp", 0x3E3u, "cmdForceReCalibrate", 0, -528348670, 0);
}

uint64_t AppleBCMWLANCoreDbg::cmdForceMacPhyReset(int a1, AppleBCMWLANCore *this)
{
  FaultReporter = AppleBCMWLANCore::getFaultReporter(this);

  return CCFaultReporter::reportFault(FaultReporter, 0x24u, "/Library/Caches/com.apple.xbs/Sources/AppleBCMWLANV3_driverkit/AppleBCMWLANCoreDbg.cpp", 0x3EBu, "cmdForceMacPhyReset", 0, -528348669, 0);
}

uint64_t AppleBCMWLANCoreDbg::cmdWorkQueueDelay(uint64_t a1, uint64_t a2)
{
  v4 = a1 + 241664;
  if (a1)
  {
    v5 = *(a1 + 245208);
    v6 = *(a1 + 245200);
  }

  (*(*a2 + 1952))(a2);
  v14 = 0;
  v15 = &v14;
  v16 = 0x2000000000;
  v17 = IO80211CoreDbg::parseUInt32FromCMD();
  if (!*(v15 + 6))
  {
    v10 = 0;
    v9 = 3758097090;
    if (!a1)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v12 = *(v15 + 6);
  v7 = IO80211Print();
  v8 = (*(*a2 + 88))(a2);
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 1107296256;
  v13[2] = ___ZN19AppleBCMWLANCoreDbg17cmdWorkQueueDelayEP24apple80211_debug_commandP16AppleBCMWLANCore_block_invoke;
  v13[3] = &__block_descriptor_tmp_2;
  v13[4] = &v14;
  v9 = (*(*v8 + 112))(v8, v13);
  v10 = v7;
  if (a1)
  {
LABEL_5:
    *(v4 + 3520) = v10;
  }

LABEL_6:
  _Block_object_dispose(&v14, 8);
  return v9;
}

uint64_t ___ZN19AppleBCMWLANCoreDbg17cmdWorkQueueDelayEP24apple80211_debug_commandP16AppleBCMWLANCore_block_invoke(uint64_t a1)
{
  *(*(*(a1 + 32) + 8) + 24) *= 1000;
  IODelay(*(*(*(a1 + 32) + 8) + 24));
  return 0;
}

uint64_t AppleBCMWLANCoreDbg::trafficNotificationCallback(const OSMetaClassBase *this, OSObject *a2, void *a3, int a4, int a5)
{
  v7 = a3;
  v8 = OSMetaClassBase::safeMetaCast(this, gAppleBCMWLANCoreMetaClass);
  mach_continuous_time();
  absolutetime_to_nanoseconds();
  result = (v8->__vftable[48].Dispatch)(v8);
  if (result)
  {
    (v8->__vftable[48].Dispatch)(v8);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v10 = (v8->__vftable[48].Dispatch)(v8);
      return CCLogStream::logAlert(v10, "[dk] %s@%d:Now:%llu elapsedMS:%u rtPacketCount:%u bgPacketCount:%u\n", "trafficNotificationCallback", 1036, 0, v7, a4, a5);
    }
  }

  return result;
}

uint64_t AppleBCMWLANCoreDbg::cmdTrafficNotification(uint64_t a1, AppleBCMWLANCore *a2)
{
  v4 = (*(*a2 + 88))(a2);
  if (AppleBCMWLANCore::getPrimaryInterface(a2))
  {
    PrimaryInterface = AppleBCMWLANCore::getPrimaryInterface(a2);
    TrafficMonitor = IO80211InfraInterface::getTrafficMonitor(PrimaryInterface);
  }

  else
  {
    TrafficMonitor = 0;
  }

  if (a1)
  {
    v7 = *(a1 + 245208);
    v8 = *(a1 + 245200);
  }

  (*(*a2 + 1952))(a2);
  if (v4 && TrafficMonitor)
  {
    if (!a1)
    {
      return 0;
    }

    if (strncmp("traffic-notification report-interval", (a1 + 10), 0x24uLL))
    {
      if (!strncmp("traffic-notification rt-packet-count", (a1 + 10), 0x24uLL))
      {
        v12 = IO80211CoreDbg::parseUInt32FromCMD();
        result = 0;
        v10 = 0;
        AppleBCMWLANCoreDbg::cmdTrafficNotification(apple80211_debug_command *,AppleBCMWLANCore *)::realtimePacketLimit = v12;
        goto LABEL_28;
      }

      if (!strncmp("traffic-notification bg-packet-count", (a1 + 10), 0x24uLL))
      {
        v13 = IO80211CoreDbg::parseUInt32FromCMD();
        result = 0;
        v10 = 0;
        AppleBCMWLANCoreDbg::cmdTrafficNotification(apple80211_debug_command *,AppleBCMWLANCore *)::backgroundPacketLimit = v13;
        goto LABEL_28;
      }

      if (!strncmp("traffic-notification enable", (a1 + 10), 0x80uLL))
      {
        if (!AppleBCMWLANCoreDbg::cmdTrafficNotification(apple80211_debug_command *,AppleBCMWLANCore *)::trafficNotification)
        {
          TrafficNotification = IO80211TrafficMonitor::createTrafficNotification();
          AppleBCMWLANCoreDbg::cmdTrafficNotification(apple80211_debug_command *,AppleBCMWLANCore *)::trafficNotification = TrafficNotification;
          if (TrafficNotification)
          {
            (*(*v4 + 64))(v4, TrafficNotification);
            (*(*AppleBCMWLANCoreDbg::cmdTrafficNotification(apple80211_debug_command *,AppleBCMWLANCore *)::trafficNotification + 64))(AppleBCMWLANCoreDbg::cmdTrafficNotification(apple80211_debug_command *,AppleBCMWLANCore *)::trafficNotification);
          }
        }
      }

      else
      {
        if (strncmp("traffic-notification disable", (a1 + 10), 0x80uLL))
        {
          result = 0;
          v10 = 0;
LABEL_28:
          *(a1 + 245184) = v10;
          return result;
        }

        if (AppleBCMWLANCoreDbg::cmdTrafficNotification(apple80211_debug_command *,AppleBCMWLANCore *)::trafficNotification)
        {
          (*(*AppleBCMWLANCoreDbg::cmdTrafficNotification(apple80211_debug_command *,AppleBCMWLANCore *)::trafficNotification + 72))(AppleBCMWLANCoreDbg::cmdTrafficNotification(apple80211_debug_command *,AppleBCMWLANCore *)::trafficNotification);
          (*(*v4 + 72))(v4, AppleBCMWLANCoreDbg::cmdTrafficNotification(apple80211_debug_command *,AppleBCMWLANCore *)::trafficNotification);
          if (AppleBCMWLANCoreDbg::cmdTrafficNotification(apple80211_debug_command *,AppleBCMWLANCore *)::trafficNotification)
          {
            (*(*AppleBCMWLANCoreDbg::cmdTrafficNotification(apple80211_debug_command *,AppleBCMWLANCore *)::trafficNotification + 16))(AppleBCMWLANCoreDbg::cmdTrafficNotification(apple80211_debug_command *,AppleBCMWLANCore *)::trafficNotification);
            AppleBCMWLANCoreDbg::cmdTrafficNotification(apple80211_debug_command *,AppleBCMWLANCore *)::trafficNotification = 0;
          }
        }
      }

      v10 = IO80211Print();
      result = 0;
      goto LABEL_28;
    }

    v11 = IO80211CoreDbg::parseUInt32FromCMD();
    result = 0;
    v10 = 0;
    AppleBCMWLANCoreDbg::cmdTrafficNotification(apple80211_debug_command *,AppleBCMWLANCore *)::reportIntervalMS = v11;
    goto LABEL_28;
  }

  v10 = IO80211Print();
  result = 0xFFFFFFFFLL;
  if (a1)
  {
    goto LABEL_28;
  }

  return result;
}

uint64_t AppleBCMWLANCoreDbg::cmdQueryBSSInfo(uint64_t a1, AppleBCMWLANCore *a2)
{
  v4 = a1 + 241664;
  if (a1)
  {
    v5 = *(a1 + 245208);
    v6 = *(a1 + 245200);
  }

  (*(*a2 + 1952))(a2);
  v7 = IOMallocZeroData();
  if (v7)
  {
    v8 = v7;
    *v7 = 1936;
    v27[0] = v7;
    v27[1] = 0x79000880790;
    Commander = AppleBCMWLANCore::getCommander(a2);
    *&__dst[0] = v8;
    *(&__dst[0] + 1) = 4;
    v10 = AppleBCMWLANCommander::runIOCtlGet(Commander, 136, __dst, v27, 0);
    if (v10)
    {
      (*(*a2 + 112))(a2, v10);
      v11 = IO80211Print();
      if (!a1)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v12 = IO80211HexdumpIfKernel();
      v13 = IO80211Print() + v12;
      v29 = 0;
      memset(__dst, 0, sizeof(__dst));
      if (*(v8 + 22) >= 0x20u)
      {
        v14 = 32;
      }

      else
      {
        v14 = *(v8 + 22);
      }

      memcpy(__dst, v8 + 23, v14);
      v15 = IO80211Print() + v13;
      v25 = *(v8 + 16);
      v26 = *(v8 + 17);
      v23 = *(v8 + 14);
      v24 = *(v8 + 15);
      v19 = *(v8 + 12);
      v21 = *(v8 + 13);
      v16 = IO80211Print() + v15;
      v20 = *(v8 + 41);
      v22 = *(v8 + 9);
      v17 = IO80211Print();
      if (!a1)
      {
        goto LABEL_14;
      }

      v11 = v17 + v16;
    }

    *(v4 + 3520) = v11;
LABEL_14:
    IOFreeData();
    return v10;
  }

  return 0;
}

uint64_t AppleBCMWLANCoreDbg::cmdAWDLDisableAMPDU(uint64_t a1, AppleBCMWLANCore *a2)
{
  v4 = a1 + 241664;
  if (a1)
  {
    v5 = *(a1 + 245208);
    v6 = *(a1 + 245200);
  }

  (*(*a2 + 1952))(a2);
  v7 = AppleBCMWLANCore::forceDisableAwdlAmpdu(a2);
  AppleBCMWLANCore::setForceDisableAwdlAmpdu(a2, v7 ^ 1);
  if (AppleBCMWLANCore::forceDisableAwdlAmpdu(a2))
  {
    AppleBCMWLANCore::setForceAwdlAmpdu(a2, 0);
  }

  AppleBCMWLANCore::forceDisableAwdlAmpdu(a2);
  v8 = IO80211Print();
  if (a1)
  {
    *(v4 + 3520) = v8;
  }

  return 0;
}

uint64_t AppleBCMWLANCoreDbg::cmdAWDLForceAMPDU(uint64_t a1, AppleBCMWLANCore *a2)
{
  v4 = a1 + 241664;
  if (a1)
  {
    v5 = *(a1 + 245208);
    v6 = *(a1 + 245200);
  }

  (*(*a2 + 1952))(a2);
  v7 = AppleBCMWLANCore::forceAwdlAmpdu(a2);
  AppleBCMWLANCore::setForceAwdlAmpdu(a2, v7 ^ 1);
  AppleBCMWLANCore::forceAwdlAmpdu(a2);
  v8 = IO80211Print();
  if (a1)
  {
    *(v4 + 3520) = v8;
  }

  return 0;
}

uint64_t AppleBCMWLANCoreDbg::cmdAWDLPeerCache(uint64_t a1, AppleBCMWLANCore *a2)
{
  v4 = a1 + 241664;
  if (a1)
  {
    v5 = *(a1 + 245208);
    v6 = *(a1 + 245200);
  }

  else
  {
    v5 = 0;
  }

  (*(*a2 + 1952))(a2);
  if (!AppleBCMWLANCore::getProximityInterface(a2))
  {
    v8 = 0;
    if (!a1)
    {
      return 0;
    }

    goto LABEL_6;
  }

  ProximityInterface = AppleBCMWLANCore::getProximityInterface(a2);
  v8 = AppleBCMWLANProximityInterface::dumpPeerCache(ProximityInterface, v5);
  if (a1)
  {
LABEL_6:
    *(v4 + 3520) = v8;
  }

  return 0;
}

uint64_t AppleBCMWLANCoreDbg::cmdAWDLPeers(uint64_t a1, AppleBCMWLANCore *a2)
{
  v4 = a1 + 241664;
  if (a1)
  {
    v5 = *(a1 + 245208);
    v6 = *(a1 + 245200);
  }

  else
  {
    v5 = 0;
  }

  (*(*a2 + 1952))(a2);
  if (!AppleBCMWLANCore::getProximityInterface(a2))
  {
    v8 = 0;
    if (!a1)
    {
      return 0;
    }

    goto LABEL_6;
  }

  ProximityInterface = AppleBCMWLANCore::getProximityInterface(a2);
  v8 = AppleBCMWLANProximityInterface::dumpAwdlPeers(ProximityInterface, v5);
  if (a1)
  {
LABEL_6:
    *(v4 + 3520) = v8;
  }

  return 0;
}

uint64_t AppleBCMWLANCoreDbg::cmdAWDLSNAP(uint64_t a1, AppleBCMWLANCore *a2)
{
  v4 = a1 + 241664;
  if (a1)
  {
    v5 = *(a1 + 245208);
    v6 = *(a1 + 245200);
  }

  (*(*a2 + 1952))(a2);
  LooseSnapHeader = AppleBCMWLANCore::getLooseSnapHeader(a2);
  AppleBCMWLANCore::setLooseSnapHeader(a2, LooseSnapHeader ^ 1);
  AppleBCMWLANCore::getLooseSnapHeader(a2);
  v8 = IO80211Print();
  if (a1)
  {
    *(v4 + 3520) = v8;
  }

  return 0;
}

uint64_t AppleBCMWLANCoreDbg::cmdAWDLDump(uint64_t a1, AppleBCMWLANCore *a2)
{
  v4 = a1 + 241664;
  if (a1)
  {
    v5 = *(a1 + 245208);
    v6 = *(a1 + 245200);
  }

  else
  {
    v5 = 0;
  }

  (*(*a2 + 1952))(a2);
  if (!AppleBCMWLANCore::getProximityInterface(a2))
  {
    v8 = 0;
    if (!a1)
    {
      return 0;
    }

    goto LABEL_6;
  }

  ProximityInterface = AppleBCMWLANCore::getProximityInterface(a2);
  v8 = AppleBCMWLANProximityInterface::dump(ProximityInterface, v5);
  if (a1)
  {
LABEL_6:
    *(v4 + 3520) = v8;
  }

  return 0;
}

uint64_t AppleBCMWLANCoreDbg::cmdAWDLStats(uint64_t a1, AppleBCMWLANCore *a2)
{
  v4 = a1 + 241664;
  if (a1)
  {
    v5 = *(a1 + 245208);
    v6 = *(a1 + 245200);
  }

  else
  {
    v5 = 0;
  }

  (*(*a2 + 1952))(a2);
  if (!AppleBCMWLANCore::getProximityInterface(a2))
  {
    v8 = 0;
    if (!a1)
    {
      return 0;
    }

    goto LABEL_6;
  }

  ProximityInterface = AppleBCMWLANCore::getProximityInterface(a2);
  v8 = AppleBCMWLANProximityInterface::dumpAwdlStats(ProximityInterface, v5);
  if (a1)
  {
LABEL_6:
    *(v4 + 3520) = v8;
  }

  return 0;
}

uint64_t AppleBCMWLANCoreDbg::cmdCommanderDump(uint64_t a1, AppleBCMWLANCore *a2)
{
  v4 = a1 + 241664;
  if (a1)
  {
    v5 = *(a1 + 245208);
    v6 = *(a1 + 245200);
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  (*(*a2 + 1952))(a2);
  if (!AppleBCMWLANCore::getCommander(a2))
  {
    v8 = 0;
    if (!a1)
    {
      return 0;
    }

    goto LABEL_6;
  }

  Commander = AppleBCMWLANCore::getCommander(a2);
  v8 = AppleBCMWLANCommander::dumpState(Commander, v5, 0, v6);
  if (a1)
  {
LABEL_6:
    *(v4 + 3520) = v8;
  }

  return 0;
}

uint64_t AppleBCMWLANCoreDbg::cmdCaptureDebugInfo(uint64_t a1, IO80211Controller *a2)
{
  v4 = strnstr((a1 + 10), "-msg=", 0x80uLL);
  if (IOMallocZeroData())
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    *v11 = 0u;
    v12 = 0u;
    if (IO80211ThreadProcessInfo::getProcessName(v11, 0x80, v5))
    {
      IO80211Controller::getProcessName(a2, v11, 0x80uLL);
    }

    FaultReporter = AppleBCMWLANCore::getFaultReporter(a2);
    v7 = "";
    if (v4)
    {
      v7 = v4 + 5;
    }

    CCFaultReporter::reportFault(FaultReporter, 4u, "/Library/Caches/com.apple.xbs/Sources/AppleBCMWLANV3_driverkit/AppleBCMWLANCoreDbg.cpp", 0x569u, "cmdCaptureDebugInfo", 0, -469793533, "client=%s,msg=%s,call=cmdCaptureDebugInfo", v11, v7);
    if (strnstr((a1 + 10), "-block", 0x80uLL))
    {
      clock_interval_to_deadline();
      v8 = (*(*a2 + 104))(a2);
      v9 = AppleBCMWLANCore::getFaultReporter(a2);
      (*(*v8 + 80))(v8, v9, 0xAAAAAAAAAAAAAAAALL);
    }

    IOFreeData();
  }

  return 0;
}

uint64_t AppleBCMWLANCoreDbg::cmdChannel(uint64_t a1, AppleBCMWLANCore *a2)
{
  v4 = a1 + 241664;
  if (a1)
  {
    v5 = *(a1 + 245208);
    v6 = *(a1 + 245200);
  }

  else
  {
    v5 = 0;
  }

  (*(*a2 + 1952))(a2);
  CurrentSupportedChannels = AppleBCMWLANCore::getCurrentSupportedChannels(a2, v5);
  if (a1)
  {
    *(v4 + 3520) = CurrentSupportedChannels;
  }

  return 0;
}

uint64_t AppleBCMWLANCoreDbg::cmdDumpEventBits(uint64_t a1, AppleBCMWLANCore *a2)
{
  v4 = a1 + 241664;
  if (a1)
  {
    v5 = *(a1 + 245208);
    v6 = *(a1 + 245200);
  }

  else
  {
    v5 = 0;
  }

  (*(*a2 + 1952))(a2);
  v7 = AppleBCMWLANCore::dumpEventBitField(a2, v5);
  if (a1)
  {
    *(v4 + 3520) = v7;
  }

  return 0;
}

uint64_t AppleBCMWLANCoreDbg::cmdSetExtendedDTIM(uint64_t a1, AppleBCMWLANCore *a2)
{
  v4 = a1 + 241664;
  if (a1)
  {
    v5 = *(a1 + 245208);
    v6 = *(a1 + 245200);
  }

  (*(*a2 + 1952))(a2);
  v7 = IO80211CoreDbg::parseUInt32FromCMD();
  v19 = v7;
  if (v7 >= 0x100)
  {
    v8 = IO80211Print();
    result = 0;
    if (!a1)
    {
      return result;
    }

LABEL_13:
    *(v4 + 3520) = v8;
    return result;
  }

  v18 = 0;
  Commander = AppleBCMWLANCore::getCommander(a2);
  v16 = &v18;
  v17 = 8;
  if (AppleBCMWLANCommander::runIOVarSet(Commander, "bcn_li_bcn", &v16, 0, 0))
  {
    v11 = IO80211Print();
  }

  else
  {
    v11 = 0;
  }

  AppleBCMWLANCore::setExtendedDTIM(a2, v7);
  AppleBCMWLANCore::setDbgExtDtimInSleep(a2, v7);
  DbgExtDtimInSleep = AppleBCMWLANCore::getDbgExtDtimInSleep(a2);
  AppleBCMWLANCore::setCurrentExtendedDTIM(a2, DbgExtDtimInSleep);
  v13 = AppleBCMWLANCore::getCommander(a2);
  v16 = &v19;
  v17 = 4;
  v14 = AppleBCMWLANCommander::runIOVarSet(v13, "bcn_li_dtim", &v16, 0, 0);
  if (v14)
  {
    (*(*a2 + 112))(a2, v14);
    v15 = IO80211Print();
    result = 3758097084;
  }

  else
  {
    v15 = IO80211Print();
    result = 0;
  }

  v8 = v11 + v15;
  if (a1)
  {
    goto LABEL_13;
  }

  return result;
}

uint64_t AppleBCMWLANCoreDbg::cmdFilterAdd(uint64_t a1, AppleBCMWLANCore *a2)
{
  v4 = a1 + 241664;
  if (a1)
  {
    v5 = *(a1 + 245208);
    v6 = *(a1 + 245200);
  }

  v7 = (*(*a2 + 1952))(a2);
  if (*(a1 + 20) != 77 || *(a1 + 21) != 80 || *(a1 + 22) != 44)
  {
    v16 = 0;
LABEL_18:
    result = 0;
    *(v4 + 3520) = v16;
    return result;
  }

  v8 = v7;
  v9 = IO80211CoreDbg::parseSInt32FromCMD();
  if (AppleBCMWLANCore::getMPOffetsCount(a2) >= 6)
  {
    IO80211Print();
    return 3758097086;
  }

  else
  {
    if (AppleBCMWLANCore::getMPOffetsCount(a2) && AppleBCMWLANCore::getWOMPFilterConfigured(a2))
    {
      if (AppleBCMWLANCore::getMPOffetsCount(a2))
      {
        v21 = v9;
        v10 = 0;
        v11 = 0;
        do
        {
          v23 = v10 + 104;
          v12 = IO80211Print();
          Commander = AppleBCMWLANCore::getCommander(a2);
          v22[0] = &v23;
          v22[1] = 4;
          v14 = AppleBCMWLANCommander::runIOVarSet(Commander, "pkt_filter_delete", v22, 0, 0);
          if (v14 && v8)
          {
            v15 = v14;
            if (CCLogStream::shouldLog())
            {
              CCLogStream::logAlert(v8, "[dk] %s@%d: Failed SET IOCTL, cret[0x%08x]\n", "cmdFilterAdd", 1506, v15);
            }
          }

          v11 += v12;
          ++v10;
        }

        while (v10 < AppleBCMWLANCore::getMPOffetsCount(a2));
        v9 = v21;
      }

      else
      {
        v11 = 0;
      }

      AppleBCMWLANCore::setWOMPFilterConfigured(a2, 0);
      AppleBCMWLANCore::setMPOffetsCount(a2, 0);
    }

    else
    {
      v11 = 0;
    }

    v18 = *(a2 + 9);
    v19 = *(v18 + 19848);
    *(v18 + 19848) = v19 + 1;
    *(v18 + 4 * v19 + 10312) = v9;
    v20 = IO80211Print();
    if (a1)
    {
      v16 = (v20 + v11);
      goto LABEL_18;
    }

    return 0;
  }
}

uint64_t AppleBCMWLANCoreDbg::cmdDumpFilters(uint64_t a1, AppleBCMWLANCore *a2)
{
  v4 = a1 + 241664;
  if (a1)
  {
    v5 = *(a1 + 245208);
    v6 = *(a1 + 245200);
  }

  (*(*a2 + 1952))(a2);
  v7 = IO80211Print();
  if (AppleBCMWLANCore::getMPOffetsCount(a2) && AppleBCMWLANCore::getMPOffetsCount(a2) >= 1)
  {
    v8 = 2578;
    do
    {
      v12 = *(*(a2 + 9) + 4 * v8);
      v7 += IO80211Print();
      MPOffetsCount = AppleBCMWLANCore::getMPOffetsCount(a2);
      v10 = v8 - 2577;
      ++v8;
    }

    while (v10 < MPOffetsCount);
  }

  if (a1)
  {
    *(v4 + 3520) = v7;
  }

  return 0;
}

uint64_t AppleBCMWLANCoreDbg::cmdFaultReporter(uint64_t a1, AppleBCMWLANCore *a2)
{
  v4 = a1 + 241664;
  if (a1)
  {
    v5 = *(a1 + 245208);
    v6 = *(a1 + 245200);
  }

  (*(*a2 + 1952))(a2);
  if (a1)
  {
    if (!strncmp("fr enable", (a1 + 10), 0x80uLL))
    {
      FaultReporter = AppleBCMWLANCore::getFaultReporter(a2);
      v14 = 1;
    }

    else
    {
      if (strncmp("fr disable", (a1 + 10), 0x80uLL))
      {
        if (strncmp("fr dump", (a1 + 10), 7uLL))
        {
          if (strncmp("fr trigger", (a1 + 10), 0xAuLL))
          {
            goto LABEL_8;
          }

          v23 = IO80211CoreDbg::parseUInt32FromCMD();
          (*(*a2 + 112))(a2, v23);
          v8 = IO80211Print();
          v19 = AppleBCMWLANCore::getFaultReporter(a2);
          CCFaultReporter::induceErrorCode(v19, v23, "AppleBCMWLANCoreDbg");
LABEL_36:
          *(v4 + 3520) = v8;
          return 0;
        }

        v18 = AppleBCMWLANCore::getFaultReporter(a2);
        CCFaultReporter::dumpClientListAndHistory(v18);
LABEL_19:
        v8 = 0;
        goto LABEL_36;
      }

      FaultReporter = AppleBCMWLANCore::getFaultReporter(a2);
      v14 = 0;
    }

    CCFaultReporter::setEnable(FaultReporter, v14);
    goto LABEL_19;
  }

LABEL_8:
  v7 = IO80211CoreDbg::parseUInt32FromCMD();
  if (v7 > 4)
  {
    if (v7 > 6)
    {
      if (v7 == 7)
      {
        v20 = IO80211CoreDbg::parseUInt32FromCMD();
        v8 = IO80211Print();
        v21 = AppleBCMWLANCore::getFaultReporter(a2);
        CCFaultReporter::setAction(v21, v20);
        goto LABEL_35;
      }

      if (v7 == 8)
      {
        v8 = IO80211Print();
        v17 = AppleBCMWLANCore::getFaultReporter(a2);
        CCFaultReporter::clearAction(v17);
        goto LABEL_35;
      }

      goto LABEL_34;
    }

    if (v7 == 5)
    {
      v8 = IO80211Print();
      v11 = AppleBCMWLANCore::getFaultReporter(a2);
      v12 = 1;
    }

    else
    {
      v8 = IO80211Print();
      v11 = AppleBCMWLANCore::getFaultReporter(a2);
      v12 = 0;
    }

    CCFaultReporter::enableCoreCapture(v11, v12);
  }

  else
  {
    if (v7 <= 2)
    {
      if (v7 == 1)
      {
        v8 = IO80211Print();
        v9 = AppleBCMWLANCore::getFaultReporter(a2);
        v10 = 1;
        goto LABEL_28;
      }

      if (v7 == 2)
      {
        v8 = IO80211Print();
        v9 = AppleBCMWLANCore::getFaultReporter(a2);
        v10 = 0;
LABEL_28:
        CCFaultReporter::enableCollectImmediateFaultData(v9, v10);
        goto LABEL_35;
      }

LABEL_34:
      v8 = IO80211Print();
      goto LABEL_35;
    }

    if (v7 == 3)
    {
      v8 = IO80211Print();
      v15 = AppleBCMWLANCore::getFaultReporter(a2);
      v16 = 1;
    }

    else
    {
      v8 = IO80211Print();
      v15 = AppleBCMWLANCore::getFaultReporter(a2);
      v16 = 0;
    }

    CCFaultReporter::enableCollectDeferredFaultData(v15, v16);
  }

LABEL_35:
  if (a1)
  {
    goto LABEL_36;
  }

  return 0;
}

uint64_t AppleBCMWLANCoreDbg::cmdPrintPowerMgmtParams(uint64_t a1, AppleBCMWLANCore *a2)
{
  v4 = a1 + 241664;
  if (a1)
  {
    v5 = *(a1 + 245208);
    v6 = *(a1 + 245200);
  }

  (*(*a2 + 1952))(a2);
  AppleBCMWLANCore::getExtendedDTIM(a2);
  v7 = *(*(a2 + 9) + 19832);
  v10 = *(*(a2 + 9) + 19844);
  AppleBCMWLANCore::getCurrentExtendedDTIM(a2);
  v8 = IO80211Print();
  if (a1)
  {
    *(v4 + 3520) = v8;
  }

  return 0;
}

uint64_t AppleBCMWLANCoreDbg::cmdHaltDriver(uint64_t a1, AppleBCMWLANCore *a2)
{
  v4 = a1 + 241664;
  if (a1)
  {
    v5 = *(a1 + 245208);
    v6 = *(a1 + 245200);
  }

  (*(*a2 + 1952))(a2);
  v7 = IO80211Print();
  AppleBCMWLANCore::halt(a2);
  if (a1)
  {
    *(v4 + 3520) = v7;
  }

  return 0;
}

uint64_t AppleBCMWLANCoreDbg::cmdSetInactiveDTIM(uint64_t a1, void *a2)
{
  v4 = a1 + 241664;
  if (a1)
  {
    v5 = *(a1 + 245208);
    v6 = *(a1 + 245200);
  }

  (*(*a2 + 1952))(a2);
  v7 = IO80211CoreDbg::parseUInt32FromCMD();
  if (v7 <= 0x2710)
  {
    *(a2[9] + 19844) = v7;
  }

  v8 = IO80211Print();
  if (a1)
  {
    *(v4 + 3520) = v8;
  }

  return 0;
}

uint64_t AppleBCMWLANCoreDbg::cmdKeepAliveDA(uint64_t a1, void *a2)
{
  v11 = a1 + 241664;
  if (a1)
  {
    v4 = *(a1 + 245208);
    v12 = *(a1 + 245200);
  }

  (*(*a2 + 1952))(a2);
  memset(v13, 170, sizeof(v13));
  v5 = IO80211Print();
  if (sscanf((a1 + 22), " %x:%x:%x:%x:%x:%x", v13, v13 + 4, &v13[1], &v13[1] + 4, &v13[2], &v13[2] + 4) != 6)
  {
    v8 = 3758097090;
    v9 = IO80211Print();
    if (!a1)
    {
      return v8;
    }

    v5 += v9;
LABEL_10:
    *(v11 + 3520) = v5;
    return v8;
  }

  v6 = 0;
  v7 = 10348;
  do
  {
    *(a2[9] + v7++) = *(v13 + v6);
    v6 += 4;
  }

  while (v6 != 24);
  v8 = 0;
  if (a1)
  {
    goto LABEL_10;
  }

  return v8;
}

uint64_t AppleBCMWLANCoreDbg::cmdKeepAliveIP(uint64_t a1, void *a2)
{
  v15 = a1 + 241664;
  if (a1)
  {
    v4 = *(a1 + 245208);
    v5 = *(a1 + 245200);
  }

  (*(*a2 + 1952))(a2);
  v17 = 0xAAAAAAAAAAAAAAAALL;
  v18 = 0xAAAAAAAAAAAAAAAALL;
  *(a2[9] + 10356) = 0;
  v6 = (a1 + 28);
  v16 = a1;
  v7 = IO80211Print();
  if (sscanf(v6, " %d.%d.%d.%d", &v17, &v17 + 4, &v18, &v18 + 4) != 4)
  {
    v12 = 3758097090;
    v11 = IO80211Print();
    if (!v16)
    {
      return v12;
    }

LABEL_9:
    *(v15 + 3520) = (v11 + v7);
    return v12;
  }

  v8 = 0;
  v9 = &v17;
  do
  {
    v10 = *v9;
    v9 = (v9 + 4);
    *(a2[9] + 10356) += v10 << v8;
    v8 += 8;
  }

  while (v8 != 32);
  v14 = *(a2[9] + 10356);
  v11 = IO80211Print();
  v12 = 0;
  if (v16)
  {
    goto LABEL_9;
  }

  return v12;
}

uint64_t AppleBCMWLANCoreDbg::toggleLogFlags(AppleBCMWLANCoreDbg *this, AppleBCMWLANCore *a2)
{
  v4 = (*(*this + 1952))(this);
  shouldLog = CCLogStream::shouldLog(v4, a2);
  v6 = *(*(*this + 1952))(this);
  if (shouldLog)
  {
    (*(v6 + 136))();
    v7 = (*(*this + 1952))(this);
    (*(*v7 + 176))(v7, a2);
  }

  else
  {
    (*(v6 + 128))();
    v8 = (*(*this + 1952))(this);
    (*(*v8 + 168))(v8, a2);
  }

  return shouldLog;
}

uint64_t AppleBCMWLANCoreDbg::setLogFlags(uint64_t a1, uint64_t a2)
{
  v4 = (*(*a1 + 1952))(a1);
  (*(*v4 + 128))(v4, a2);
  v5 = *(*(*(*a1 + 1952))(a1) + 168);

  return v5();
}

uint64_t AppleBCMWLANCoreDbg::clearLogFlags(uint64_t a1, uint64_t a2)
{
  v4 = (*(*a1 + 1952))(a1);
  (*(*v4 + 136))(v4, a2);
  v5 = *(*(*(*a1 + 1952))(a1) + 176);

  return v5();
}

uint64_t AppleBCMWLANCoreDbg::cmdLogging(uint64_t a1, IO80211Controller *a2)
{
  v4 = a1 + 241664;
  if (a1)
  {
    v5 = *(a1 + 245208);
    v6 = *(a1 + 245200);
  }

  v7 = (*(*a2 + 1952))(a2);
  if (v7)
  {
    v8 = v7;
    if (a1)
    {
      v9 = strnlen((a1 + 10), 0x100uLL);
      if (v9 == 15 && !strncasecmp((a1 + 10), "log_bus_failure", 0xFuLL))
      {
        *(*(a2 + 9) + 11329) ^= 1u;
        v23 = *(*(a2 + 9) + 11329);
      }

      else
      {
        if (!strncasecmp((a1 + 10), "log-rt=", 7uLL))
        {
          *(*(a2 + 9) + 18324) = strtoul((a1 + 17), 0, 10);
        }

        else
        {
          if (strncasecmp((a1 + 10), "log-rt", 6uLL))
          {
            if (!strncasecmp((a1 + 10), "log-driver=", 0xBuLL))
            {
              v11 = strtoul((a1 + 21), 0, 10);
              IO80211SetBPFLoggerTarget(a2);
              v10 = v11 != 0;
              goto LABEL_21;
            }

            if (v9 == 12)
            {
              if (!strncasecmp((a1 + 10), "log-datapath", 0xCuLL))
              {
                *(*(a2 + 9) + 11328) ^= 1u;
                v25 = *(*(a2 + 9) + 11328);
                goto LABEL_123;
              }

              if (strncasecmp((a1 + 10), "log-datapath=", 0xDuLL))
              {
                goto LABEL_66;
              }
            }

            else
            {
              if (v9 == 11)
              {
                if (!strncasecmp((a1 + 10), "log-credits", 0xBuLL))
                {
                  if (*(a1 + 21) == 61)
                  {
                    *(*(a2 + 9) + 14184) = strtoul((a1 + 22), 0, 10) != 0;
                  }

                  else
                  {
                    *(*(a2 + 9) + 14184) ^= 1u;
                  }

                  v27 = *(*(a2 + 9) + 14184);
                  goto LABEL_123;
                }
              }

              else if (v9 == 10 && !strncasecmp((a1 + 10), "log-driver", 0xAuLL))
              {
                IO80211SetBPFLoggerTarget(a2);
                v10 = IO80211GetBPFLoggerEnable() ^ 1;
LABEL_21:
                IO80211SetBPFLoggerEnable(v10);
                IO80211GetBPFLoggerEnable();
                goto LABEL_123;
              }

              if (strncasecmp((a1 + 10), "log-datapath=", 0xDuLL))
              {
                if (v9 <= 6)
                {
                  if (v9 == 5)
                  {
                    if (!strncasecmp((a1 + 10), "log-n", 5uLL))
                    {
                      AppleBCMWLANCoreDbg::toggleLogFlags(a2, 0x200);
                      (*(*v8 + 120))(v8);
                      goto LABEL_123;
                    }

                    if (!strncasecmp((a1 + 10), "log-j", 5uLL))
                    {
                      AppleBCMWLANCoreDbg::toggleLogFlags(a2, 0x100);
                      (*(*v8 + 120))(v8);
                      goto LABEL_123;
                    }

                    if (!strncasecmp((a1 + 10), "log-r", 5uLL))
                    {
                      if ((AppleBCMWLANCoreDbg::toggleLogFlags(a2, 0x4000) & 1) != 0 || (AppleBCMWLANCore::addEventBit(a2), AppleBCMWLANCore::addEventBit(a2), v16 = AppleBCMWLANCore::writeEventBitField(a2), !v16))
                      {
                        v17 = 0;
                      }

                      else
                      {
                        (*(*a2 + 112))(a2, v16);
                        v17 = IO80211Print();
                      }

                      (*(*v8 + 120))(v8);
                      v13 = IO80211Print() + v17;
                      goto LABEL_124;
                    }

                    goto LABEL_66;
                  }

                  if (v9 != 6)
                  {
LABEL_66:
                    if (!strncasecmp((a1 + 10), "wlan.log.flags=", 0xFuLL))
                    {
                      v26 = IO80211CoreDbg::parseUInt64FromCMD();
                      v13 = IO80211Print();
                      (*(*v8 + 152))(v8, v26);
                      goto LABEL_124;
                    }

                    if (!strncasecmp((a1 + 10), "wlan.log.flags", 0xEuLL))
                    {
                      (*(*v8 + 160))(v8);
                      goto LABEL_123;
                    }

                    if (!strncasecmp((a1 + 10), "wlan.log.level=", 0xFuLL))
                    {
                      v28 = IO80211CoreDbg::parseUInt64FromCMD();
                      v13 = IO80211Print();
                      (*(*v8 + 144))(v8, v28);
                      goto LABEL_124;
                    }

                    if (!strncasecmp((a1 + 10), "wlan.log.level", 0xEuLL))
                    {
                      CCLogStream::getConsoleLevel(v8);
                      goto LABEL_123;
                    }

                    if (!strncasecmp((a1 + 10), "wlan.log.ccflags=", 0x11uLL))
                    {
                      v31 = IO80211CoreDbg::parseUInt64FromCMD();
                      v13 = IO80211Print();
                      (*(*v8 + 112))(v8, v31);
                      goto LABEL_124;
                    }

                    if (strncasecmp((a1 + 10), "wlan.log.ccflags", 0x10uLL))
                    {
                      if (strncasecmp((a1 + 10), "wlan.log.cclevel=", 0x11uLL))
                      {
                        if (!strncasecmp((a1 + 10), "wlan.log.cclevel", 0x10uLL))
                        {
                          (*(*v8 + 104))(v8);
                        }

                        goto LABEL_123;
                      }

                      v32 = IO80211CoreDbg::parseUInt64FromCMD();
                      v13 = IO80211Print();
                      (*(*v8 + 96))(v8, v32);
LABEL_124:
                      *(v4 + 3520) = v13;
                      return 0;
                    }

LABEL_118:
                    (*(*v8 + 120))(v8);
                    goto LABEL_123;
                  }

                  if (!strncasecmp((a1 + 10), "log-pr", 6uLL))
                  {
                    AppleBCMWLANCoreDbg::toggleLogFlags(a2, 0x400);
                    (*(*v8 + 120))(v8);
                    goto LABEL_123;
                  }

                  if (!strncasecmp((a1 + 10), "log-sc", 6uLL))
                  {
                    if (*(a1 + 16) == 61)
                    {
                      if (strtoul((a1 + 17), 0, 10))
                      {
                        AppleBCMWLANCoreDbg::setLogFlags(a2, 64);
                      }

                      else
                      {
                        AppleBCMWLANCoreDbg::clearLogFlags(a2, 64);
                      }
                    }

                    else
                    {
                      AppleBCMWLANCoreDbg::toggleLogFlags(a2, 0x40);
                    }

                    goto LABEL_118;
                  }

                  if (!strncasecmp((a1 + 10), "log-in", 6uLL))
                  {
                    AppleBCMWLANCoreDbg::toggleLogFlags(a2, 0x80);
                    (*(*v8 + 120))(v8);
                    goto LABEL_123;
                  }

                  if (!strncasecmp((a1 + 10), "log-io", 6uLL))
                  {
                    AppleBCMWLANCoreDbg::toggleLogFlags(a2, 0x200000);
                    (*(*v8 + 120))(v8);
                    goto LABEL_123;
                  }

                  if (!strncasecmp((a1 + 10), "logl-e", 6uLL))
                  {
                    v12 = (*(*v8 + 104))(v8);
                    (*(*v8 + 96))(v8, 0);
                    (*(*v8 + 144))(v8, 0);
                  }

                  else if (!strncasecmp((a1 + 10), "logl-a", 6uLL))
                  {
                    v12 = (*(*v8 + 104))(v8);
                    (*(*v8 + 96))(v8, 1);
                    (*(*v8 + 144))(v8, 1);
                  }

                  else if (!strncasecmp((a1 + 10), "logl-c", 6uLL))
                  {
                    v12 = (*(*v8 + 104))(v8);
                    (*(*v8 + 96))(v8, 2);
                    (*(*v8 + 144))(v8, 2);
                  }

                  else if (!strncasecmp((a1 + 10), "logl-w", 6uLL))
                  {
                    v12 = (*(*v8 + 104))(v8);
                    (*(*v8 + 96))(v8, 3);
                    (*(*v8 + 144))(v8, 3);
                  }

                  else if (!strncasecmp((a1 + 10), "logl-n", 6uLL))
                  {
                    v12 = (*(*v8 + 104))(v8);
                    (*(*v8 + 96))(v8, 4);
                    (*(*v8 + 144))(v8, 4);
                  }

                  else if (!strncasecmp((a1 + 10), "logl-i", 6uLL))
                  {
                    v12 = (*(*v8 + 104))(v8);
                    (*(*v8 + 96))(v8, 5);
                    (*(*v8 + 144))(v8, 5);
                  }

                  else if (!strncasecmp((a1 + 10), "logl-d", 6uLL))
                  {
                    v12 = (*(*v8 + 104))(v8);
                    (*(*v8 + 96))(v8, 6);
                    (*(*v8 + 144))(v8, 6);
                  }

                  else
                  {
                    if (strncasecmp((a1 + 10), "logl-s", 6uLL))
                    {
                      goto LABEL_66;
                    }

                    v12 = (*(*v8 + 104))(v8);
                    (*(*v8 + 96))(v8, 7);
                    (*(*v8 + 144))(v8, 7);
                  }
                }

                else
                {
                  if (v9 != 9)
                  {
                    if (v9 != 8)
                    {
                      if (v9 == 7)
                      {
                        if (!strncasecmp((a1 + 10), "log-tag", 7uLL))
                        {
                          v29 = *(*(a2 + 9) + 11328);
                          goto LABEL_123;
                        }

                        if (!strncasecmp((a1 + 10), "log-cmd", 7uLL))
                        {
                          if (*(a1 + 17) == 61)
                          {
                            if (strtoul((a1 + 18), 0, 10))
                            {
                              AppleBCMWLANCoreDbg::setLogFlags(a2, 4);
                            }

                            else
                            {
                              AppleBCMWLANCoreDbg::clearLogFlags(a2, 4);
                            }

                            goto LABEL_118;
                          }

                          v18 = a2;
                          v19 = 4;
                        }

                        else if (!strncasecmp((a1 + 10), "log-pkt", 7uLL))
                        {
                          v18 = a2;
                          v19 = 8;
                        }

                        else
                        {
                          if (strncasecmp((a1 + 10), "log-irq", 7uLL))
                          {
                            if (!strncasecmp((a1 + 10), "log-cmh", 7uLL))
                            {
                              if (*(a1 + 17) == 61)
                              {
                                if (strtoul((a1 + 18), 0, 10))
                                {
                                  AppleBCMWLANCoreDbg::setLogFlags(a2, 0x10000000);
                                  AppleBCMWLANCoreDbg::setLogFlags(a2, 0x20000000);
                                  AppleBCMWLANCoreDbg::setLogFlags(a2, 0x40000000);
                                }

                                else
                                {
                                  AppleBCMWLANCoreDbg::clearLogFlags(a2, 0x10000000);
                                  AppleBCMWLANCoreDbg::clearLogFlags(a2, 0x20000000);
                                  AppleBCMWLANCoreDbg::clearLogFlags(a2, 0x40000000);
                                }
                              }

                              else
                              {
                                AppleBCMWLANCoreDbg::toggleLogFlags(a2, 0x10000000);
                                AppleBCMWLANCoreDbg::toggleLogFlags(a2, 0x20000000);
                                AppleBCMWLANCoreDbg::toggleLogFlags(a2, 0x40000000);
                              }

                              goto LABEL_118;
                            }

                            goto LABEL_66;
                          }

                          v18 = a2;
                          v19 = 2;
                        }

                        AppleBCMWLANCoreDbg::toggleLogFlags(v18, v19);
                        goto LABEL_118;
                      }

                      goto LABEL_66;
                    }

                    if (!strncasecmp((a1 + 10), "log-bc-v", 8uLL))
                    {
                      v14 = *(a2 + 9);
                      v15 = 18312;
                    }

                    else
                    {
                      if (strncasecmp((a1 + 10), "log-bc-i", 8uLL))
                      {
                        if (strncasecmp((a1 + 10), "logl-all", 8uLL))
                        {
                          goto LABEL_66;
                        }

                        v12 = (*(*v8 + 104))(v8);
                        (*(*v8 + 96))(v8, 127);
                        (*(*v8 + 144))(v8, 127);
                        goto LABEL_122;
                      }

                      v14 = *(a2 + 9);
                      v15 = 18308;
                    }

                    *(v14 + v15) ^= 1u;
                    v30 = *(*(a2 + 9) + v15);
                    goto LABEL_123;
                  }

                  if (strncasecmp((a1 + 10), "logl-none", 9uLL))
                  {
                    goto LABEL_66;
                  }

                  v12 = (*(*v8 + 104))(v8);
                  (*(*v8 + 96))(v8, 0xFFFFFFFFLL);
                  (*(*v8 + 144))(v8, 0xFFFFFFFFLL);
                }

LABEL_122:
                v20 = (*(*v8 + 104))(v8);
                getLogLevelName(v20);
                (*(*v8 + 104))(v8);
                getLogLevelName(v12);
                goto LABEL_123;
              }
            }

            *(*(a2 + 9) + 11328) = strtoul((a1 + 23), 0, 10);
            v24 = *(*(a2 + 9) + 11328);
            goto LABEL_123;
          }

          *(*(a2 + 9) + 18324) ^= 1u;
        }

        v22 = *(*(a2 + 9) + 18324);
      }

LABEL_123:
      v13 = IO80211Print();
      goto LABEL_124;
    }

    IO80211Print();
  }

  return 0;
}

uint64_t AppleBCMWLANCoreDbg::cmdLoopbackTest(uint64_t a1, AppleBCMWLANCore *a2)
{
  v4 = a1 + 241664;
  if (a1)
  {
    v5 = *(a1 + 245208);
    v6 = *(a1 + 245200);
  }

  v7 = (*(*a2 + 1952))(a2);
  v8 = strnstr((a1 + 10), "-f", 0x80uLL);
  v9 = strnstr((a1 + 10), "-i", 0x80uLL);
  v10 = strnstr((a1 + 10), "-l", 0x80uLL);
  v11 = strnstr((a1 + 10), "-r", 0x80uLL);
  v25 = 0;
  v26 = 0;
  v27 = 0;
  if (v9)
  {
    LODWORD(v25) = strtoul(v9 + 2, 0, 10);
  }

  if (v8)
  {
    LODWORD(v8) = strtoul(v8 + 2, 0, 16);
    HIDWORD(v25) = v8;
  }

  if (v10)
  {
    v26 = strtoul(v10 + 2, 0, 10);
  }

  if (v11)
  {
    v27 = strtoul(v11 + 2, 0, 10);
  }

  v12 = IO80211Print();
  if ((v8 & 1) == 0)
  {
    LODWORD(v22) = 1;
    v12 += IO80211Print();
    Commander = AppleBCMWLANCore::getCommander(a2);
    v23 = &v22;
    v24 = 4;
    v14 = AppleBCMWLANCommander::runIOVarSet(Commander, "bus:loopback", &v23, 0, 0);
    if (v14)
    {
      if (v7)
      {
        v15 = v14;
        if (CCLogStream::shouldLog())
        {
          CCLogStream::logAlert(v7, "[dk] %s@%d: Failed SET IOCTL, cret[0x%08x]\n", "cmdLoopbackTest", 2009, v15);
        }
      }
    }
  }

  v22 = 24;
  Bus = AppleBCMWLANCore::getBus(a2);
  (*(*Bus + 248))(Bus, 3, 0, &v25, &v22);
  if ((v25 & 0x100000000) == 0)
  {
    v21 = 0;
    LODWORD(v12) = IO80211Print() + v12;
    v17 = AppleBCMWLANCore::getCommander(a2);
    v23 = &v21;
    v24 = 4;
    v18 = AppleBCMWLANCommander::runIOVarSet(v17, "bus:loopback", &v23, 0, 0);
    if (v18)
    {
      if (v7)
      {
        v19 = v18;
        if (CCLogStream::shouldLog())
        {
          CCLogStream::logAlert(v7, "[dk] %s@%d: Failed SET IOCTL, cret[0x%08x]\n", "cmdLoopbackTest", 2021, v19);
          if (!a1)
          {
            return 0;
          }

          goto LABEL_21;
        }
      }
    }
  }

  if (a1)
  {
LABEL_21:
    *(v4 + 3520) = v12;
  }

  return 0;
}

uint64_t AppleBCMWLANCoreDbg::cmdLPASExtendedDTIM(uint64_t a1, AppleBCMWLANCore *a2)
{
  v4 = a1 + 241664;
  if (a1)
  {
    v5 = *(a1 + 245208);
    v6 = *(a1 + 245200);
  }

  (*(*a2 + 1952))(a2);
  v7 = IO80211CoreDbg::parseUInt32FromCMD();
  v13 = v7;
  if (v7 < 0x100)
  {
    *(*(a2 + 9) + 6700) = v7;
    if (!v7)
    {
      Commander = AppleBCMWLANCore::getCommander(a2);
      v12[0] = &v13;
      v12[1] = 4;
      v9 = AppleBCMWLANCommander::runIOVarSet(Commander, "bcn_li_dtim", v12, 0, 0);
      if (v9)
      {
        (*(*a2 + 112))(a2, v9);
      }
    }
  }

  v10 = IO80211Print();
  if (a1)
  {
    *(v4 + 3520) = v10;
  }

  return 0;
}

uint64_t AppleBCMWLANCoreDbg::cmdLPASPercent(uint64_t a1, void *a2)
{
  v4 = a1 + 241664;
  if (a1)
  {
    v5 = *(a1 + 245208);
    v6 = *(a1 + 245200);
  }

  (*(*a2 + 1952))(a2);
  *(a2[9] + 6636) = IO80211CoreDbg::parseUInt32FromCMD();
  v9 = *(a2[9] + 6636);
  v7 = IO80211Print();
  if (a1)
  {
    *(v4 + 3520) = v7;
  }

  return 0;
}

uint64_t AppleBCMWLANCoreDbg::cmdLPASPeriod(uint64_t a1, void *a2)
{
  v4 = a1 + 241664;
  if (a1)
  {
    v5 = *(a1 + 245208);
    v6 = *(a1 + 245200);
  }

  (*(*a2 + 1952))(a2);
  *(a2[9] + 6640) = IO80211CoreDbg::parseUInt32FromCMD();
  v9 = *(a2[9] + 6640);
  v7 = IO80211Print();
  if (a1)
  {
    *(v4 + 3520) = v7;
  }

  return 0;
}

uint64_t AppleBCMWLANCoreDbg::cmdLQMThreashold(uint64_t a1, AppleBCMWLANCore *a2)
{
  v4 = a1 + 241664;
  if (a1)
  {
    v5 = *(a1 + 245208);
    v6 = *(a1 + 245200);
  }

  (*(*a2 + 1952))(a2);
  v7 = IO80211CoreDbg::parseUInt32FromCMD();
  if (!AppleBCMWLANCore::getLQM(a2))
  {
    v10 = 0;
    if (!a1)
    {
      return 0;
    }

    goto LABEL_5;
  }

  v8 = IO80211Print();
  LQM = AppleBCMWLANCore::getLQM(a2);
  AppleBCMWLANLQM::setGoodLQMRssiThreshold(LQM, -v7);
  v10 = v8;
  if (a1)
  {
LABEL_5:
    *(v4 + 3520) = v10;
  }

  return 0;
}

uint64_t AppleBCMWLANCoreDbg::cmdLRL(uint64_t a1, AppleBCMWLANCore *a2)
{
  v4 = a1 + 241664;
  if (a1)
  {
    v5 = *(a1 + 245208);
    v6 = *(a1 + 245200);
  }

  (*(*a2 + 1952))(a2);
  v7 = IO80211CoreDbg::parseUInt32FromCMD();
  if (v7 <= 0x14 && AppleBCMWLANCore::getNetAdapter(a2))
  {
    NetAdapter = AppleBCMWLANCore::getNetAdapter(a2);
    AppleBCMWLANNetAdapter::configureLongRetryLimit(NetAdapter, v7);
  }

  v9 = IO80211Print();
  if (a1)
  {
    *(v4 + 3520) = v9;
  }

  return 0;
}

uint64_t AppleBCMWLANCoreDbg::cmdSetMinCreditsToSpend(uint64_t a1, uint64_t a2)
{
  (*(*a2 + 1952))(a2);
  v4 = IO80211CoreDbg::parseUInt32FromCMD();
  AppleBCMWLANCore::setMinFreeCreditsToSpend(a2, v4);
  if (a1)
  {
    *(a1 + 245184) = 0;
  }

  return 0;
}

uint64_t AppleBCMWLANCoreDbg::cmdGetMinCreditsToSpend(uint64_t a1, AppleBCMWLANCore *a2)
{
  v4 = a1 + 241664;
  if (a1)
  {
    v5 = *(a1 + 245208);
    v6 = *(a1 + 245200);
  }

  (*(*a2 + 1952))(a2);
  AppleBCMWLANCore::getMinFreeCreditsToSpend(a2);
  v7 = IO80211Print();
  if (a1)
  {
    *(v4 + 3520) = v7;
  }

  return 0;
}

uint64_t AppleBCMWLANCoreDbg::cmdGetLastFWInitTime(uint64_t a1, void *a2)
{
  v4 = a1 + 241664;
  if (a1)
  {
    v5 = *(a1 + 245208);
    v6 = *(a1 + 245200);
  }

  (*(*a2 + 1952))(a2);
  mach_continuous_time();
  absolutetime_to_nanoseconds();
  absolutetime_to_nanoseconds();
  v7 = a2[9];
  v10 = *(v7 + 6520) / 0xF4240uLL;
  v11 = *(v7 + 6528) / 0xF4240uLL;
  v8 = IO80211Print();
  if (a1)
  {
    *(v4 + 3520) = v8;
  }

  return 0;
}

uint64_t AppleBCMWLANCoreDbg::cmdDumpBusStatistics(uint64_t a1, AppleBCMWLANCore *a2)
{
  (*(*a2 + 1952))(a2);
  v4 = *AppleBCMWLANCore::getBus(a2);
  (*(v4 + 320))();
  if (a1)
  {
    *(a1 + 245184) = 0;
  }

  return 0;
}

uint64_t AppleBCMWLANCoreDbg::cmdLogLowLevelBusState(uint64_t a1, AppleBCMWLANCore *a2)
{
  (*(*a2 + 1952))(a2);
  v4 = *AppleBCMWLANCore::getBus(a2);
  (*(v4 + 336))();
  if (a1)
  {
    *(a1 + 245184) = 0;
  }

  return 0;
}

uint64_t AppleBCMWLANCoreDbg::cmdSetVoViECWMAX(uint64_t a1, AppleBCMWLANCore *a2)
{
  v4 = a1 + 241664;
  if (a1)
  {
    v5 = *(a1 + 245208);
    v6 = *(a1 + 245200);
  }

  (*(*a2 + 1952))(a2);
  v7 = IO80211CoreDbg::parseUInt32FromCMD();
  NetAdapter = AppleBCMWLANCore::getNetAdapter(a2);
  AppleBCMWLANNetAdapter::setRealTimeVoViEcwmax(NetAdapter, v7);
  v9 = IO80211Print();
  if (a1)
  {
    *(v4 + 3520) = v9;
  }

  return 0;
}

uint64_t AppleBCMWLANCoreDbg::cmdLPASMaxSleep(uint64_t a1, void *a2)
{
  v4 = a1 + 241664;
  if (a1)
  {
    v5 = *(a1 + 245208);
    v6 = *(a1 + 245200);
  }

  (*(*a2 + 1952))(a2);
  *(a2[9] + 6720) = IO80211CoreDbg::parseUInt32FromCMD();
  v9 = *(a2[9] + 6720);
  v7 = IO80211Print();
  if (a1)
  {
    *(v4 + 3520) = v7;
  }

  return 0;
}

uint64_t AppleBCMWLANCoreDbg::cmdWoWMaxSleep(uint64_t a1, void *a2)
{
  v4 = a1 + 241664;
  if (a1)
  {
    v5 = *(a1 + 245208);
    v6 = *(a1 + 245200);
  }

  (*(*a2 + 1952))(a2);
  *(a2[9] + 6716) = IO80211CoreDbg::parseUInt32FromCMD();
  v9 = *(a2[9] + 6716);
  v7 = IO80211Print();
  if (a1)
  {
    *(v4 + 3520) = v7;
  }

  return 0;
}

uint64_t AppleBCMWLANCoreDbg::cmdMCASTList(uint64_t a1, void *a2)
{
  v4 = a1 + 241664;
  if (a1)
  {
    v5 = *(a1 + 245208);
    v6 = *(a1 + 245200);
  }

  (*(*a2 + 1952))(a2);
  v13 = *(a2[9] + 564);
  v7 = IO80211Print();
  v8 = a2[9];
  if (*(v8 + 564))
  {
    v9 = 0;
    v10 = 573;
    do
    {
      v11 = (v8 + v10);
      v18 = *(v11 - 1);
      v19 = *v11;
      v16 = *(v11 - 3);
      v17 = *(v11 - 2);
      v14 = *(v11 - 5);
      v15 = *(v11 - 4);
      v7 += IO80211Print();
      ++v9;
      v8 = a2[9];
      v10 += 6;
    }

    while (v9 < *(v8 + 564));
  }

  if (a1)
  {
    *(v4 + 3520) = v7;
  }

  return 0;
}

uint64_t AppleBCMWLANCoreDbg::cmdDumpNeighborDiscoveryStats(uint64_t a1, AppleBCMWLANCore *a2)
{
  AppleBCMWLANCore::getNeighbourDiscoveryStats(a2);
  AppleBCMWLANCore::getActivePortsFromNetworkStack(a2);
  return 0;
}

uint64_t AppleBCMWLANCoreDbg::cmdWhenIsNow(uint64_t a1, uint64_t a2)
{
  v3 = a1 + 241664;
  if (a1)
  {
    v4 = *(a1 + 245208);
    v5 = *(a1 + 245200);
  }

  (*(*a2 + 1952))(a2);
  mach_continuous_time();
  absolutetime_to_nanoseconds();
  IOLog("%llu.%09llu [%s] -+---\n", 0x2DD01FC06, 473034410, (a1 + 10));
  v6 = IO80211Print();
  if (a1)
  {
    *(v3 + 3520) = v6;
  }

  return 0;
}

uint64_t AppleBCMWLANCoreDbg::cmdDumpPowerStats(uint64_t a1, AppleBCMWLANCore *a2)
{
  v4 = a1 + 241664;
  if (a1)
  {
    v5 = *(a1 + 245208);
    v6 = *(a1 + 245200);
  }

  (*(*a2 + 1952))(a2);
  v7 = IOMallocZeroData();
  if (v7)
  {
    v8 = v7;
    v78 = v4;
    AppleBCMWLANCore::featureFlagClearBit(a2, 24);
    v80 = 0xAAAAAAAAAAAAAAAALL;
    *&v9 = 0xAAAAAAAAAAAAAAAALL;
    *(&v9 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v79[0] = v9;
    v79[1] = v9;
    BYTE4(v79[0]) = 0;
    LODWORD(v79[0]) = 13;
    AppleBCMWLANCore::getPowerStats(a2, v8, v79);
    v50 = v8[12];
    v55 = v8[14];
    v40 = v8[10];
    v45 = *v8;
    v28 = v8[2];
    v34 = v8[11];
    v22 = v8[1];
    v10 = IO80211Print();
    v46 = v8[8];
    v51 = v8[9];
    v35 = v8[6];
    v41 = v8[7];
    v23 = v8[4];
    v29 = v8[5];
    v17 = v8[3];
    v11 = IO80211Print() + v10;
    v65 = v8[27];
    v68 = v8[28];
    v59 = v8[25];
    v62 = v8[26];
    v52 = v8[29];
    v56 = v8[30];
    v42 = v8[23];
    v47 = v8[24];
    v30 = v8[21];
    v36 = v8[22];
    v18 = v8[19];
    v24 = v8[20];
    v12 = IO80211Print() + v11;
    v76 = v8[81];
    v77 = v8[82];
    v74 = v8[79];
    v75 = v8[80];
    v72 = v8[77];
    v73 = v8[78];
    v70 = v8[75];
    v71 = v8[76];
    v66 = v8[73];
    v69 = v8[74];
    v60 = v8[71];
    v63 = v8[72];
    v53 = v8[69];
    v57 = v8[70];
    v43 = v8[67];
    v48 = v8[68];
    v31 = v8[61];
    v37 = v8[64];
    v19 = v8[60];
    v25 = v8[65];
    v13 = IO80211Print() + v12;
    v32 = v8[58];
    v38 = v8[59];
    v20 = v8[56];
    v26 = v8[57];
    v14 = IO80211Print() + v13;
    *v8 = 0u;
    *(v8 + 1) = 0u;
    *(v8 + 7) = 0u;
    AppleBCMWLANCore::getInactivityPowerStats(a2, v8);
    v64 = v8[10];
    v67 = v8[7];
    v58 = v8[9];
    v61 = v8[8];
    v49 = v8[2];
    v54 = v8[6];
    v39 = v8[3];
    v44 = v8[5];
    v27 = v8[1];
    v33 = v8[4];
    v21 = *v8;
    v15 = IO80211Print();
    if (a1)
    {
      *(v78 + 3520) = (v15 + v14);
    }

    IOFreeData();
  }

  return 0;
}

uint64_t AppleBCMWLANCoreDbg::cmdPMPercent(uint64_t a1, void *a2)
{
  v4 = a1 + 241664;
  if (a1)
  {
    v5 = *(a1 + 245208);
    v6 = *(a1 + 245200);
  }

  (*(*a2 + 1952))(a2);
  *(a2[9] + 6600) = IO80211CoreDbg::parseUInt32FromCMD();
  v9 = *(a2[9] + 6600);
  v7 = IO80211Print();
  if (a1)
  {
    *(v4 + 3520) = v7;
  }

  return 0;
}

uint64_t AppleBCMWLANCoreDbg::cmdPMPeriod(uint64_t a1, void *a2)
{
  v4 = a1 + 241664;
  if (a1)
  {
    v5 = *(a1 + 245208);
    v6 = *(a1 + 245200);
  }

  (*(*a2 + 1952))(a2);
  *(a2[9] + 6604) = IO80211CoreDbg::parseUInt32FromCMD();
  v9 = *(a2[9] + 6604);
  v7 = IO80211Print();
  if (a1)
  {
    *(v4 + 3520) = v7;
  }

  return 0;
}

uint64_t AppleBCMWLANCoreDbg::cmdPrintRoam(uint64_t a1, AppleBCMWLANCore *a2)
{
  v4 = a1 + 241664;
  if (a1)
  {
    v5 = *(a1 + 245208);
    v6 = *(a1 + 245200);
  }

  else
  {
    v5 = 0;
  }

  (*(*a2 + 1952))(a2);
  ConfigManager = AppleBCMWLANCore::getConfigManager(a2);
  v8 = AppleBCMWLANConfigManager::printRoamParams(ConfigManager, v5);
  if (a1)
  {
    *(v4 + 3520) = v8;
  }

  return 0;
}

uint64_t AppleBCMWLANCoreDbg::cmdRet2Sleep(uint64_t a1, AppleBCMWLANCore *a2)
{
  v4 = a1 + 241664;
  if (a1)
  {
    v5 = *(a1 + 245208);
    v6 = *(a1 + 245200);
  }

  v7 = (*(*a2 + 1952))(a2);
  v8 = IO80211CoreDbg::parseUInt32FromCMD();
  v9 = v8;
  if (v8 < 0x3E9)
  {
    v19 = v8;
    Commander = AppleBCMWLANCore::getCommander(a2);
    v17 = &v19;
    v18 = 8;
    v11 = AppleBCMWLANCommander::runIOVarSet(Commander, "pm2_sleep_ret", &v17, 0, 0);
    if (v11)
    {
      if (v7)
      {
        v12 = v11;
        if (CCLogStream::shouldLog())
        {
          CCLogStream::logAlert(v7, "[dk] %s@%d: Failed SET IOCTL, cret[0x%08x]\n", "cmdRet2Sleep", 2400, v12);
        }
      }
    }

    LODWORD(v17) = -1431655766;
    HIDWORD(v17) = v9;
    v18 = v9 | 0x500000000;
    PowerStateAdapter = AppleBCMWLANCore::getPowerStateAdapter(a2);
    v14 = AppleBCMWLANPowerStateAdapter::configureDFRTSLogicAnd(PowerStateAdapter, &v17);
    if (v14)
    {
      (*(*a2 + 112))(a2, v14);
    }
  }

  v15 = IO80211Print();
  if (a1)
  {
    *(v4 + 3520) = v15;
  }

  return 0;
}

uint64_t AppleBCMWLANCoreDbg::cmdRoamBoost(uint64_t a1, AppleBCMWLANCore *a2)
{
  v4 = (*(*a2 + 1952))(a2);
  v5 = strncmp((a1 + 19), "2.4GHz,", 7uLL);
  v6 = IO80211CoreDbg::parseSInt32FromCMD();
  if (AppleBCMWLANCore::getFirmwareInterfaceVersion(a2) > 0x10)
  {
    if (v4 && CCLogStream::shouldLog())
    {
      CCLogStream::logAlert(v4, "[dk] %s@%d:%s WiFiRoam : Not yet supported for the current chipset\n", "cmdRoamBoost", 2445, "cmdRoamBoost");
      if (!a1)
      {
        return 0;
      }
    }

    else if (!a1)
    {
      return 0;
    }

LABEL_10:
    *(a1 + 245184) = 0;
    return 0;
  }

  if (v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  AppleBCMWLANCore::applyRoamingCandidateBoost(a2, v7, v6);
  if (a1)
  {
    goto LABEL_10;
  }

  return 0;
}

uint64_t AppleBCMWLANCoreDbg::cmdRoamScan(uint64_t a1, AppleBCMWLANCore *a2)
{
  v42 = a1 + 241664;
  if (a1)
  {
    v43 = *(a1 + 245208);
    v4 = *(a1 + 245200);
  }

  (*(*a2 + 1952))(a2);
  memset(v52, 0, sizeof(v52));
  v50 = -1;
  v51 = -1;
  v5 = a1 + 10;
  v44 = a1;
  v6 = a1 + 13;
  v7 = 0;
  v8 = 8;
  memset(v49, 0, 142);
  v48 = 0u;
  while (1)
  {
    while (1)
    {
      v9 = *(v5 + v8);
      if (v9 != 32)
      {
        break;
      }

LABEL_24:
      v18 = 1;
LABEL_25:
      v8 += v18;
    }

    if (!*(v5 + v8))
    {
      goto LABEL_35;
    }

    if (*(v5 + v8 + 2) == 58)
    {
      break;
    }

    if ((v9 - 48) > 9)
    {
      goto LABEL_24;
    }

    v19 = v52[v7 + 3];
    do
    {
      v19 = 10 * v19 + v9 - 48;
      v9 = *(v5 + ++v8);
    }

    while ((v9 - 48) < 0xA);
    v52[v7 + 3] = v19;
    if (v19 <= 0xFFu)
    {
      if (v19 >= 0xFu)
      {
        v20 = -16384;
      }

      else
      {
        v20 = 0;
      }

      v41 = v7;
      v21 = v19 | v20 | 0x1000;
      v40 = v6;
      ChanSpecHandler = AppleBCMWLANCore::getChanSpecHandler(a2);
      v23 = v21;
      v7 = v41;
      BCMChannelSpec = AppleBCMWLANChanSpec::getBCMChannelSpec(ChanSpecHandler, v23);
      v6 = v40;
      v52[v41 + 3] = BCMChannelSpec;
    }

    ++v7;
  }

  v10 = *(v5 + v8);
  if (v10)
  {
    v11 = 0;
    v12 = (v6 + v8);
    while (1)
    {
      v13 = *(v12 - 2);
      if (!*(v12 - 2))
      {
        break;
      }

      if (v10 <= 64)
      {
        v14 = 64;
      }

      else
      {
        v14 = 9;
      }

      v15 = v14 + v10;
      if (v13 <= 64)
      {
        v16 = -48;
      }

      else
      {
        v16 = -55;
      }

      if (v13 > 96)
      {
        v16 = -87;
      }

      *(&v50 + v11) = v13 + 16 * v15 + v16;
      if (v11 == 5)
      {
        v18 = 18;
        goto LABEL_25;
      }

      if (*(v12 - 1) == 58 || !*(v12 - 1))
      {
        ++v11;
        v17 = *v12;
        v12 += 3;
        v10 = v17;
        if (v17)
        {
          continue;
        }
      }

      break;
    }
  }

LABEL_35:
  *&v52[1] = v7;
  if (AppleBCMWLANCore::getProximityInterface(a2))
  {
    ProximityInterface = AppleBCMWLANCore::getProximityInterface(a2);
    AppleBCMWLANProximityInterface::enableRoamEvents(ProximityInterface);
  }

  v47[3] = 0xAAAAAAAAAAAAAAAALL;
  mach_continuous_time();
  absolutetime_to_nanoseconds();
  v26 = IO80211Print();
  if (v7)
  {
    v27 = 0;
    LODWORD(v28) = IO80211Print() + v26;
    do
    {
      v39 = v52[v27 + 3];
      v28 = IO80211Print() + v28;
      ++v27;
    }

    while (v7 != v27);
    v26 = IO80211Print() + v28;
  }

  v29 = IO80211Print() + v26;
  v30 = a2;
  if (AppleBCMWLANCore::getFirmwareInterfaceVersion(a2) < 0x11)
  {
    v35 = &v50;
    v36 = 68;
  }

  else
  {
    DWORD1(v48) = v50;
    WORD4(v48) = v51;
    v31 = v52[0];
    if (v52[0] >= 7u)
    {
      v31 = 7;
    }

    WORD5(v48) = v31;
    if (v7 >= 0x32)
    {
      v32 = 50;
    }

    else
    {
      v32 = v7;
    }

    HIDWORD(v48) = v32;
    v33 = (2 * v32);
    v34 = (6 * v31);
    v35 = &v48;
    memcpy(v49, &v52[3], v33 + v34);
    v36 = (v33 + 16) + v34;
  }

  IO80211Hexdump();
  v47[0] = v30;
  v47[1] = AppleBCMWLANCore::startRoamScanAsyncCallback;
  v47[2] = 0;
  Commander = AppleBCMWLANCore::getCommander(v30);
  v46[0] = v35;
  v46[1] = v36;
  v45 = (v36 << 16) | 6;
  if (AppleBCMWLANCommander::sendIOCtlSet(Commander, 53, v46, &v45, v47, 0))
  {
    LODWORD(v29) = IO80211Print() + v29;
  }

  if (v44)
  {
    *(v42 + 3520) = v29;
  }

  return 0;
}

uint64_t AppleBCMWLANCoreDbg::cmdRTSThreashold(uint64_t a1, AppleBCMWLANCore *a2)
{
  v4 = a1 + 241664;
  if (a1)
  {
    v5 = *(a1 + 245208);
    v6 = *(a1 + 245200);
  }

  (*(*a2 + 1952))(a2);
  if (IO80211CoreDbg::parseUInt32FromCMD() <= 0x92B && AppleBCMWLANCore::getNetAdapter(a2))
  {
    NetAdapter = AppleBCMWLANCore::getNetAdapter(a2);
    AppleBCMWLANNetAdapter::configureRTSThreshold(NetAdapter);
  }

  v8 = IO80211Print();
  if (a1)
  {
    *(v4 + 3520) = v8;
  }

  return 0;
}

uint64_t AppleBCMWLANCoreDbg::cmdSetTXWatermark(int a1, AppleBCMWLANCore *this)
{
  Bus = AppleBCMWLANCore::getBus(this);
  v3 = IO80211CoreDbg::parseUInt32FromCMD();
  (*(*Bus + 248))(Bus, 2, v3, 0, 0);
  return 0;
}

uint64_t AppleBCMWLANCoreDbg::cmdTXStall(uint64_t a1, void *a2)
{
  v4 = a1 + 241664;
  if (a1)
  {
    v5 = *(a1 + 245208);
    v6 = *(a1 + 245200);
  }

  (*(*a2 + 1952))(a2);
  *(a2[9] + 19856) = IO80211CoreDbg::parseUInt32FromCMD();
  v9 = *(a2[9] + 19856);
  v7 = IO80211Print();
  if (a1)
  {
    *(v4 + 3520) = v7;
  }

  return 0;
}

uint64_t AppleBCMWLANCoreDbg::cmdEventTraceLogs(uint64_t a1, AppleBCMWLANCore *a2)
{
  v4 = a1 + 241664;
  if (a1)
  {
    v5 = *(a1 + 245208);
    v6 = *(a1 + 245200);
  }

  (*(*a2 + 1952))(a2);
  v7 = strlen((a1 + 10));
  if (!strncmp((a1 + 10), "et", v7))
  {
    AppleBCMWLANCore::isEventBitSet(a2);
  }

  else
  {
    if (IO80211CoreDbg::parseUInt32FromCMD())
    {
      v8 = AppleBCMWLANCore::setEventBit(a2);
    }

    else
    {
      v8 = AppleBCMWLANCore::clearEventBit(a2, 0x34u);
    }

    v9 = v8;
    AppleBCMWLANCore::isEventBitSet(a2);
    (*(*a2 + 112))(a2, v9);
  }

  v10 = IO80211Print();
  if (a1)
  {
    *(v4 + 3520) = v10;
  }

  return 0;
}

uint64_t AppleBCMWLANCoreDbg::cmdEventEnable(uint64_t a1, AppleBCMWLANCore *a2)
{
  v19 = a1 + 241664;
  if (a1)
  {
    v4 = *(a1 + 245208);
    v5 = *(a1 + 245200);
  }

  else
  {
    v4 = 0;
  }

  (*(*a2 + 1952))(a2);
  v6 = (a1 + 12);
  v7 = IO80211Print();
  v8 = convertStringToEvent((a1 + 12));
  v9 = a1;
  if (v8 == -1)
  {
    v18 = a1;
    v12 = IO80211Print() + v7;
    v13 = *v6;
    if (v13 == 104)
    {
      v14 = 0;
      LODWORD(v12) = IO80211Print() + v12;
      do
      {
        convertEventToString(v14, 0, 0);
        LODWORD(v12) = IO80211Print() + v12;
        ++v14;
      }

      while (v14 != 219);
      v13 = *v6;
    }

    if (v13 == 97)
    {
      v15 = *(v9 + 13);
      if (v15 == 108)
      {
        v15 = *(v9 + 14);
      }

      if (108 != v15)
      {
        goto LABEL_20;
      }
    }

    else if (97 != v13)
    {
      goto LABEL_20;
    }

    for (i = 0; i != 219; ++i)
    {
      convertEventToString(i, 0, 0);
      LODWORD(v12) = v12 + IO80211Print();
      AppleBCMWLANCore::addEventBit(a2);
    }

    AppleBCMWLANCore::writeEventBitField(a2);
    LODWORD(v12) = v12 + IO80211Print();
    AppleBCMWLANCore::dumpEventBitField(a2, v4);
    if (!v18)
    {
      return 0;
    }

LABEL_20:
    v11 = v12;
    goto LABEL_21;
  }

  convertEventToString(v8, 0, 0);
  v10 = IO80211Print();
  AppleBCMWLANCore::setEventBit(a2);
  if (a1)
  {
    v11 = (v10 + v7);
LABEL_21:
    *(v19 + 3520) = v11;
  }

  return 0;
}

uint64_t AppleBCMWLANCoreDbg::cmdEventDisable(uint64_t a1, AppleBCMWLANCore *a2)
{
  v20 = a1 + 241664;
  if (a1)
  {
    v4 = *(a1 + 245208);
    v5 = *(a1 + 245200);
  }

  else
  {
    v4 = 0;
  }

  (*(*a2 + 1952))(a2);
  v6 = (a1 + 14);
  v7 = IO80211Print();
  v8 = convertStringToEvent((a1 + 14));
  v9 = a1;
  if (v8 == -1)
  {
    v19 = a1;
    v13 = IO80211Print() + v7;
    v14 = *v6;
    if (v14 == 104)
    {
      v15 = 0;
      LODWORD(v13) = IO80211Print() + v13;
      do
      {
        convertEventToString(v15, 0, 0);
        LODWORD(v13) = IO80211Print() + v13;
        ++v15;
      }

      while (v15 != 219);
      v14 = *v6;
    }

    if (v14 == 97)
    {
      v16 = *(v9 + 15);
      if (v16 == 108)
      {
        v16 = *(v9 + 16);
      }

      if (108 != v16)
      {
        goto LABEL_20;
      }
    }

    else if (97 != v14)
    {
      goto LABEL_20;
    }

    for (i = 0; i != 219; ++i)
    {
      convertEventToString(i, 0, 0);
      LODWORD(v13) = v13 + IO80211Print();
      AppleBCMWLANCore::removeEventBit(a2, i);
    }

    AppleBCMWLANCore::writeEventBitField(a2);
    LODWORD(v13) = v13 + IO80211Print();
    AppleBCMWLANCore::dumpEventBitField(a2, v4);
    if (!v19)
    {
      return 0;
    }

LABEL_20:
    v12 = v13;
    goto LABEL_21;
  }

  v10 = v8;
  convertEventToString(v8, 0, 0);
  v11 = IO80211Print();
  AppleBCMWLANCore::clearEventBit(a2, v10);
  if (a1)
  {
    v12 = (v11 + v7);
LABEL_21:
    *(v20 + 3520) = v12;
  }

  return 0;
}

uint64_t AppleBCMWLANCoreDbg::cmdLpasRoamQuota(uint64_t a1, void *a2)
{
  v4 = a1 + 241664;
  if (a1)
  {
    v5 = *(a1 + 245208);
    v6 = *(a1 + 245200);
  }

  (*(*a2 + 1952))(a2);
  *(a2[9] + 6660) = IO80211CoreDbg::parseUInt32FromCMD();
  v7 = IO80211Print();
  if (a1)
  {
    *(v4 + 3520) = v7;
  }

  return 0;
}

uint64_t AppleBCMWLANCoreDbg::cmdMotionState(uint64_t a1, AppleBCMWLANCore *a2)
{
  v4 = a1 + 241664;
  if (a1)
  {
    v5 = *(a1 + 245208);
    v6 = *(a1 + 245200);
  }

  (*(*a2 + 1952))(a2);
  BGScanAdapter = AppleBCMWLANCore::getBGScanAdapter(a2);
  AppleBCMWLANBGScanAdapter::getMotionProfileState(BGScanAdapter);
  v8 = IO80211Print();
  if (a1)
  {
    *(v4 + 3520) = v8;
  }

  return 0;
}

uint64_t AppleBCMWLANCoreDbg::cmdRoamMode(uint64_t a1, uint64_t a2)
{
  v3 = a1 + 241664;
  if (a1)
  {
    v4 = *(a1 + 245208);
    v5 = *(a1 + 245200);
  }

  (*(*a2 + 1952))(a2);
  v6 = IO80211Print();
  if (a1)
  {
    *(v3 + 3520) = v6;
  }

  return 0;
}

uint64_t AppleBCMWLANCoreDbg::cmdRoamStatus(uint64_t a1, void *a2)
{
  v4 = a1 + 241664;
  if (a1)
  {
    v5 = *(a1 + 245208);
    v6 = *(a1 + 245200);
  }

  (*(*a2 + 1952))(a2);
  v7 = a2[9];
  if ((*(v7 + 13996) & 0x1FFu) <= 0xB)
  {
    v8 = off_1003CAF90[*(v7 + 13996) & 0x1FF];
  }

  v11 = *(v7 + 13992);
  v9 = IO80211Print();
  if (a1)
  {
    *(v4 + 3520) = v9;
  }

  return 0;
}

uint64_t AppleBCMWLANCoreDbg::cmdBGScanPrivateMac(uint64_t a1, AppleBCMWLANCore *a2)
{
  v4 = a1 + 241664;
  if (a1)
  {
    v5 = *(a1 + 245208);
    v6 = *(a1 + 245200);
  }

  (*(*a2 + 1952))(a2);
  memset(v17, 170, sizeof(v17));
  v16 = 0;
  *v15 = 0;
  memset(v14, 170, 6);
  v7 = sscanf((a1 + 29), "%x:%x:%x:%x:%x:%x", v17, v17 + 4, &v17[1], &v17[1] + 4, &v17[2], &v17[2] + 4);
  if (v7 == -1)
  {
    BGScanAdapter = AppleBCMWLANCore::getBGScanAdapter(a2);
    AppleBCMWLANBGScanAdapter::getBGScanPrivateMac(BGScanAdapter, v14);
    IO80211Print();
    return 0;
  }

  if (v7 == 6)
  {
    for (i = 0; i != 6; ++i)
    {
      v15[i] = *(v17 + i);
    }

    v15[0] = v15[0] & 0xFC | 2;
    v9 = AppleBCMWLANCore::getBGScanAdapter(a2);
    AppleBCMWLANBGScanAdapter::configureBGScanPrivateMac(v9, v15);
    v10 = IO80211Print();
    if (a1)
    {
      v11 = 0;
LABEL_12:
      *(v4 + 3520) = v10;
      return v11;
    }

    return 0;
  }

  v11 = 3758097090;
  v10 = IO80211Print();
  if (a1)
  {
    goto LABEL_12;
  }

  return v11;
}

uint64_t AppleBCMWLANCoreDbg::cmdBGScanMacRandomMask(uint64_t a1, AppleBCMWLANCore *a2)
{
  v4 = a1 + 241664;
  if (a1)
  {
    v5 = *(a1 + 245208);
    v6 = *(a1 + 245200);
  }

  (*(*a2 + 1952))(a2);
  memset(v17, 170, sizeof(v17));
  v16 = 0;
  *v15 = 0;
  memset(v14, 170, 6);
  v7 = sscanf((a1 + 30), "%x:%x:%x:%x:%x:%x", v17, v17 + 4, &v17[1], &v17[1] + 4, &v17[2], &v17[2] + 4);
  if (v7 == -1)
  {
    BGScanAdapter = AppleBCMWLANCore::getBGScanAdapter(a2);
    AppleBCMWLANBGScanAdapter::getBGScanMacRandomMask(BGScanAdapter, v14);
    IO80211Print();
    return 0;
  }

  if (v7 == 6)
  {
    for (i = 0; i != 6; ++i)
    {
      v15[i] = *(v17 + i);
    }

    v15[0] &= 0xFCu;
    v9 = AppleBCMWLANCore::getBGScanAdapter(a2);
    AppleBCMWLANBGScanAdapter::configureBGScanMacRandomMask(v9, v15);
    v10 = IO80211Print();
    if (a1)
    {
      v11 = 0;
LABEL_12:
      *(v4 + 3520) = v10;
      return v11;
    }

    return 0;
  }

  v11 = 3758097090;
  v10 = IO80211Print();
  if (a1)
  {
    goto LABEL_12;
  }

  return v11;
}

uint64_t AppleBCMWLANCoreDbg::cmdBGScanPrivateMacTimeout(uint64_t a1, AppleBCMWLANCore *a2)
{
  (*(*a2 + 1952))(a2);
  v4 = IO80211CoreDbg::parseUInt32FromCMD();
  BGScanAdapter = AppleBCMWLANCore::getBGScanAdapter(a2);
  AppleBCMWLANBGScanAdapter::configureBGScanPrivateMacTimeout(BGScanAdapter, v4);
  if (a1)
  {
    *(a1 + 245184) = 0;
  }

  return 0;
}

uint64_t AppleBCMWLANCoreDbg::cmdSd_devreg(uint64_t a1, AppleBCMWLANCore *a2)
{
  v4 = a1 + 241664;
  if (a1)
  {
    v5 = *(a1 + 245208);
    v6 = *(a1 + 245200);
  }

  (*(*a2 + 1952))(a2);
  *&v7 = 0xAAAAAAAAAAAAAAAALL;
  *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&v15[12] = v7;
  v14 = v7;
  *v15 = v7;
  v13 = v7;
  v11 = -1431655766;
  v12 = -1431655766;
  v10 = -1431655766;
  sscanf((a1 + 10), "%s %x %x %x", &v13, &v12, &v11, &v10);
  v8 = *AppleBCMWLANCore::getBus(a2);
  (*(v8 + 288))();
  if (a1)
  {
    *(v4 + 3520) = 0;
  }

  return 0;
}

uint64_t AppleBCMWLANCoreDbg::cmdSbreg(uint64_t a1, AppleBCMWLANCore *a2)
{
  v4 = a1 + 241664;
  if (a1)
  {
    v5 = *(a1 + 245208);
    v6 = *(a1 + 245200);
  }

  (*(*a2 + 1952))(a2);
  *&v7 = 0xAAAAAAAAAAAAAAAALL;
  *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&v14[12] = v7;
  v13 = v7;
  *v14 = v7;
  v12 = v7;
  v10 = -1431655766;
  v11 = -1431655766;
  sscanf((a1 + 10), "%s %x %x", &v12, &v11, &v10);
  v8 = *AppleBCMWLANCore::getBus(a2);
  (*(v8 + 296))();
  if (a1)
  {
    *(v4 + 3520) = 0;
  }

  return 0;
}

uint64_t AppleBCMWLANCoreDbg::cmdTxPowerCapConfig(uint64_t a1, AppleBCMWLANCore *a2)
{
  (*(*a2 + 1952))(a2);
  AppleBCMWLANCore::configTxPowerCapControl(a2);
  if (a1)
  {
    *(a1 + 245184) = 0;
  }

  return 0;
}

uint64_t AppleBCMWLANCoreDbg::cmdSetTxPowerCapHigh(uint64_t a1, void *a2)
{
  (*(*a2 + 1952))(a2);
  v4 = IO80211CoreDbg::parseUInt32FromCMD() == 0;
  *(a2[9] + 19776) = v4;
  *(a2[9] + 19772) = v4;
  AppleBCMWLANCore::setTxPowerCapState(a2);
  if (a1)
  {
    *(a1 + 245184) = 0;
  }

  return 0;
}

uint64_t AppleBCMWLANCoreDbg::cmdDumpTxPwrCapState(uint64_t a1, AppleBCMWLANCore *a2)
{
  v4 = a1 + 241664;
  if (a1)
  {
    v5 = *(a1 + 245208);
    v6 = *(a1 + 245200);
  }

  (*(*a2 + 1952))(a2);
  ConfigManager = AppleBCMWLANCore::getConfigManager(a2);
  v8 = *(AppleBCMWLANConfigManager::getTxPowerCapConfig(ConfigManager) + 12);
  switch(v8)
  {
    case 4:
      memset(v11, 170, 3);
      AppleBCMWLANCore::getTxPowerCapStateV4(a2, v11);
      break;
    case 3:
      memset(v11, 170, 11);
      AppleBCMWLANCore::getTxPowerCapStateV3(a2, v11);
      break;
    case 2:
      memset(v11, 170, 6);
      AppleBCMWLANCore::getTxPowerCapState(a2, v11);
      break;
    default:
      v9 = 0;
      if (!a1)
      {
        return 0;
      }

      goto LABEL_10;
  }

  v9 = IO80211Print();
  if (a1)
  {
LABEL_10:
    *(v4 + 3520) = v9;
  }

  return 0;
}

uint64_t AppleBCMWLANCoreDbg::cmdDumpTxPwrCapDebugV3(uint64_t a1, uint64_t *a2)
{
  v3 = a1;
  v4 = a1 + 241664;
  if (a1)
  {
    v5 = *(a1 + 245208);
    v6 = *(a1 + 245200);
  }

  (*(*a2 + 1952))(a2);
  v7 = IOMallocZeroTyped();
  if (v7)
  {
    v8 = v7;
    *&v9 = 0xAAAAAAAAAAAAAAAALL;
    *(&v9 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v108[14] = v9;
    v108[15] = v9;
    v108[12] = v9;
    v108[13] = v9;
    v108[10] = v9;
    v108[11] = v9;
    v108[8] = v9;
    v108[9] = v9;
    v108[6] = v9;
    v108[7] = v9;
    v108[4] = v9;
    v108[5] = v9;
    v108[2] = v9;
    v108[3] = v9;
    v108[0] = v9;
    v108[1] = v9;
    AppleBCMWLANCore::getTxPowerCapDebugInfoV3(a2, v7);
    v10 = v8[22] * v8[21];
    v11 = *v8;
    if (v11 == 3)
    {
      v95 = v8[21];
      v99 = v8[33];
      v77 = v8[32];
      v87 = *(v8 + 1);
      v57 = v8[2];
      v67 = v8[3];
      v49 = v8[20];
      v12 = IO80211Print();
      v8[18];
      v68 = v8[31];
      v78 = v8[19];
      v58 = v8[22];
      v13 = IO80211Print() + v12;
      v79 = v8[11];
      v88 = v8[12];
      v59 = v8[9];
      v69 = v8[10];
      v50 = v8[8];
      v14 = IO80211Print() + v13;
      v80 = v8[16];
      v89 = v8[17];
      v60 = v8[14];
      v70 = v8[15];
      v51 = v8[13];
      v15 = IO80211Print() + v14;
      v100 = v8[29];
      v102 = v8[30];
      v90 = v8[27];
      v96 = v8[28];
      v71 = v8[25];
      v81 = v8[26];
      v52 = v8[23];
      v61 = v8[24];
      v16 = IO80211Print() + v15;
      if ((v10 - 1) <= 0x3E)
      {
        v104 = v3;
        v106 = v4;
        v17 = 0;
        v18 = v8 + 34;
        v19 = v10;
        v20 = v10;
        while (1)
        {
          v21 = *v18++;
          v17 += snprintf(v108 + v17, 0x100uLL, "%03d ", v21);
          if (v17 >= 252)
          {
            break;
          }

          if (!--v20)
          {
            goto LABEL_12;
          }
        }

        strcpy(v108, "Print buffer is too small");
LABEL_12:
        v22 = 0;
        v23 = IO80211Print() + v16;
        v24 = v8 + 114;
        v25 = v10;
        while (1)
        {
          v26 = *v24++;
          v22 += snprintf(v108 + v22, 0x100uLL, "%03d ", v26);
          if (v22 >= 252)
          {
            break;
          }

          if (!--v25)
          {
            goto LABEL_17;
          }
        }

        strcpy(v108, "Print buffer is too small");
LABEL_17:
        v27 = 0;
        v28 = IO80211Print() + v23;
        v29 = v8 + 194;
        v30 = v10;
        while (1)
        {
          v31 = *v29++;
          v27 += snprintf(v108 + v27, 0x100uLL, "%03d ", v31);
          if (v27 >= 252)
          {
            break;
          }

          if (!--v30)
          {
            goto LABEL_22;
          }
        }

        strcpy(v108, "Print buffer is too small");
LABEL_22:
        v32 = 0;
        v16 = IO80211Print() + v28;
        v33 = v8 + 274;
        while (1)
        {
          v34 = *v33++;
          v32 += snprintf(v108 + v32, 0x100uLL, "%03d ", v34);
          if (v32 >= 252)
          {
            break;
          }

          if (!--v19)
          {
            goto LABEL_27;
          }
        }

        strcpy(v108, "Print buffer is too small");
LABEL_27:
        LODWORD(v16) = IO80211Print() + v16;
        v3 = v104;
        v4 = v106;
      }

      v11 = *v8;
    }

    else
    {
      LODWORD(v16) = 0;
    }

    if (v11 == 2)
    {
      v91 = *(v8 + 1);
      v97 = v8[21];
      v72 = v8[3];
      v82 = v8[32];
      v53 = v8[20];
      v62 = v8[2];
      v35 = v16 + IO80211Print();
      v8[18];
      v73 = v8[31];
      v83 = v8[19];
      v63 = v8[22];
      v36 = v35 + IO80211Print();
      v84 = v8[11];
      v92 = v8[12];
      v64 = v8[9];
      v74 = v8[10];
      v54 = v8[8];
      v37 = v36 + IO80211Print();
      v85 = v8[16];
      v93 = v8[17];
      v65 = v8[14];
      v75 = v8[15];
      v55 = v8[13];
      v38 = v37 + IO80211Print();
      v101 = v8[29];
      v103 = v8[30];
      v94 = v8[27];
      v98 = v8[28];
      v76 = v8[25];
      v86 = v8[26];
      v56 = v8[23];
      v66 = v8[24];
      v39 = v38 + IO80211Print();
      LODWORD(v16) = v39;
      if ((v10 - 1) <= 0x3E)
      {
        v105 = v3;
        v107 = v4;
        v40 = 0;
        v41 = v8 + 33;
        v42 = v10;
        while (1)
        {
          v43 = *v41++;
          v40 += snprintf(v108 + v40, 0x100uLL, "%03d ", v43);
          if (v40 >= 252)
          {
            break;
          }

          if (!--v42)
          {
            goto LABEL_36;
          }
        }

        strcpy(v108, "Print buffer is too small");
LABEL_36:
        v44 = 0;
        v45 = v39 + IO80211Print();
        v46 = v8 + 113;
        v3 = v105;
        while (1)
        {
          v47 = *v46++;
          v44 += snprintf(v108 + v44, 0x100uLL, "%03d ", v47);
          if (v44 >= 252)
          {
            break;
          }

          if (!--v10)
          {
            goto LABEL_41;
          }
        }

        strcpy(v108, "Print buffer is too small");
LABEL_41:
        LODWORD(v16) = v45 + IO80211Print();
        v4 = v107;
      }
    }

    if (v3)
    {
      *(v4 + 3520) = v16;
    }

    IOFree(v8, 0x164uLL);
  }

  return 0;
}

uint64_t AppleBCMWLANCoreDbg::cmdDumpTxPwrCapDebugV5(uint64_t a1, AppleBCMWLANCore *a2)
{
  v4 = a1 + 241664;
  if (a1)
  {
    v5 = *(a1 + 245208);
    v6 = *(a1 + 245200);
  }

  (*(*a2 + 1952))(a2);
  Commander = AppleBCMWLANCore::getCommander(a2);
  MaxCmdRxPayload = AppleBCMWLANCommander::getMaxCmdRxPayload(Commander);
  v9 = IOMallocZeroData();
  if (v9)
  {
    v10 = v9;
    if (AppleBCMWLANCore::getTxPowerCapDebugInfoV5(a2, v9, MaxCmdRxPayload) || *v10 != 5)
    {
      goto LABEL_34;
    }

    v41 = v10[4];
    v28 = v10[2];
    v36 = v10[3];
    v44 = v10[13] & 1;
    v45 = v10[12];
    v11 = IO80211Print();
    v37 = v10[10];
    v42 = v10[11];
    v29 = v10[9];
    v12 = IO80211Print() + v11;
    if (v10[8])
    {
      v48 = a1;
      v49 = v4;
      v55[0] = "main-2g-nonsdb";
      v55[1] = "main-5g-nonsdb";
      v55[2] = "aux-2g-nonsdb";
      v55[3] = "aux-5g-nonsdb";
      v55[4] = "main-2g-sdb";
      v55[5] = "main-5g-sdb";
      v55[6] = "aux-2g-sdb";
      v55[7] = "aux-5g-sdb";
      if (!v10[1])
      {
        goto LABEL_32;
      }

      v13 = 0;
      v14 = v10 + 14;
      v50 = 1922;
      while (1)
      {
        v47 = v13;
        v30 = v55[v14[3]];
        v15 = IO80211Print() + v12;
        v31 = *v14;
        v38 = v14[1];
        LODWORD(v12) = IO80211Print() + v15;
        if (!v14[1] || v14[3] > 7u || (v16 = v14[1], v17 = (80 * v16) | 4, v50 < v17))
        {
LABEL_32:
          v4 = v49;
          if (v48)
          {
            goto LABEL_33;
          }

          goto LABEL_34;
        }

        v18 = 14;
        v19 = &word_10033D020;
        while (*v19 != *v14)
        {
          v19 += 5;
          if (!--v18)
          {
            goto LABEL_32;
          }
        }

        v46 = (80 * v16) | 4;
        v50 -= v17;
        v20 = 0;
        v51 = v19;
        v21 = v14 + 4;
        v52 = *(v19 + 2);
        do
        {
          v53 = v21;
          v54 = v20;
          if (v14[2])
          {
            v22 = 0;
            v23 = v21;
            do
            {
              if (v10[9])
              {
                v24 = 0;
                do
                {
                  v32 = v23[v24];
                  LODWORD(v12) = v12 + IO80211Print();
                  ++v24;
                }

                while (v24 < v10[9]);
              }

              LODWORD(v12) = v12 + IO80211Print();
              ++v22;
              v23 += 8;
            }

            while (v22 < v14[2]);
          }

          v25 = (v54 >> 1) & 1;
          v26 = v54 & 1;
          if (v52 == 3)
          {
            v40 = off_1003CAE00[*(v51 + v25 + 5)];
            v43 = off_1003CAE00[*(v51 + v26 + 3)];
            v35 = off_1003CAE00[*(v51 + ((v54 >> 2) & 1) + 7)];
            LODWORD(v12) = v12 + IO80211Print();
          }

          else
          {
            if (v52 == 2)
            {
              v34 = off_1003CAE00[*(v51 + v25 + 5)];
              v39 = off_1003CAE00[*(v51 + v26 + 3)];
            }

            else
            {
              if (v52 != 1)
              {
                goto LABEL_30;
              }

              v33 = off_1003CAE00[*(v51 + v26 + 3)];
            }

            LODWORD(v12) = v12 + IO80211Print();
          }

LABEL_30:
          LODWORD(v12) = v12 + IO80211Print();
          v20 = v54 + 1;
          v21 = v53 + 80;
        }

        while (v54 + 1 < v14[1]);
        v12 = IO80211Print() + v12;
        v14 += v46;
        v13 = v47 + 1;
        if (v47 + 1 >= v10[1])
        {
          goto LABEL_32;
        }
      }
    }

    LODWORD(v12) = IO80211Print() + v12;
    if (a1)
    {
LABEL_33:
      *(v4 + 3520) = v12;
    }

LABEL_34:
    IOFreeData();
  }

  return 0;
}

uint64_t AppleBCMWLANCoreDbg::cmdDumpTxPwrCapDebugV7(uint64_t a1, AppleBCMWLANCore *a2)
{
  v4 = a1 + 241664;
  if (a1)
  {
    v5 = *(a1 + 245208);
    v6 = *(a1 + 245200);
  }

  (*(*a2 + 1952))(a2);
  Commander = AppleBCMWLANCore::getCommander(a2);
  MaxCmdRxPayload = AppleBCMWLANCommander::getMaxCmdRxPayload(Commander);
  v9 = IOMallocZeroData();
  if (v9)
  {
    v10 = v9;
    if (!AppleBCMWLANCore::getTxPowerCapDebugInfoV7(a2, v9, MaxCmdRxPayload) && *v10 == 7)
    {
      v48 = a1;
      v40 = v10[4];
      v27 = v10[2];
      v35 = v10[3];
      v43 = v10[13] & 1;
      v44 = v10[12];
      v11 = IO80211Print();
      v36 = v10[10];
      v41 = v10[11];
      v28 = v10[9];
      v12 = IO80211Print() + v11;
      v49 = v4;
      if (v10[8])
      {
        if (v10[1])
        {
          v13 = 0;
          v14 = v10 + 38;
          v47 = 1898;
LABEL_9:
          v46 = v13;
          v29 = off_1003CAE50[v14[3]];
          v15 = IO80211Print() + v12;
          v30 = *v14;
          v37 = v14[1];
          LODWORD(v12) = IO80211Print() + v15;
          if (!v14[1])
          {
            goto LABEL_34;
          }

          if (v14[3] > 0xBu)
          {
            goto LABEL_34;
          }

          v16 = (80 * v14[1]) | 4;
          if (v47 < v16)
          {
            goto LABEL_34;
          }

          v17 = 14;
          v18 = &word_10033D020;
          while (*v18 != *v14)
          {
            v18 += 5;
            if (!--v17)
            {
              goto LABEL_34;
            }
          }

          v45 = (80 * v14[1]) | 4;
          v47 -= v16;
          v19 = 0;
          v50 = v18;
          v20 = v14 + 4;
          v51 = *(v18 + 2);
          while (1)
          {
            v52 = v20;
            v53 = v19;
            if (v14[2])
            {
              v21 = 0;
              v22 = v20;
              do
              {
                if (v10[9])
                {
                  v23 = 0;
                  do
                  {
                    v31 = v22[v23];
                    LODWORD(v12) = v12 + IO80211Print();
                    ++v23;
                  }

                  while (v23 < v10[9]);
                }

                LODWORD(v12) = v12 + IO80211Print();
                ++v21;
                v22 += 8;
              }

              while (v21 < v14[2]);
            }

            v24 = (v53 >> 1) & 1;
            v25 = v53 & 1;
            if (v51 == 3)
            {
              v39 = off_1003CAE00[*(v50 + v24 + 5)];
              v42 = off_1003CAE00[*(v50 + v25 + 3)];
              v34 = off_1003CAE00[*(v50 + ((v53 >> 2) & 1) + 7)];
              LODWORD(v12) = v12 + IO80211Print();
              goto LABEL_30;
            }

            if (v51 == 2)
            {
              break;
            }

            if (v51 == 1)
            {
              v32 = off_1003CAE00[*(v50 + v25 + 3)];
LABEL_28:
              LODWORD(v12) = v12 + IO80211Print();
            }

LABEL_30:
            LODWORD(v12) = v12 + IO80211Print();
            v19 = v53 + 1;
            v20 = v52 + 80;
            if (v53 + 1 >= v14[1])
            {
              v12 = IO80211Print() + v12;
              v14 += v45;
              v13 = v46 + 1;
              if (v46 + 1 >= v10[1])
              {
                goto LABEL_34;
              }

              goto LABEL_9;
            }
          }

          v33 = off_1003CAE00[*(v50 + v24 + 5)];
          v38 = off_1003CAE00[*(v50 + v25 + 3)];
          goto LABEL_28;
        }
      }

      else
      {
        LODWORD(v12) = IO80211Print() + v12;
      }

LABEL_34:
      if (v48)
      {
        *(v49 + 3520) = v12;
      }
    }

    IOFreeData();
  }

  return 0;
}

uint64_t AppleBCMWLANCoreDbg::cmdDumpTxPwrCapDebug(uint64_t a1, AppleBCMWLANCore *this)
{
  ConfigManager = AppleBCMWLANCore::getConfigManager(this);
  v5 = *(AppleBCMWLANConfigManager::getTxPowerCapConfig(ConfigManager) + 12);
  switch(v5)
  {
    case 4:
      AppleBCMWLANCoreDbg::cmdDumpTxPwrCapDebugV7(a1, this);
      break;
    case 3:
      AppleBCMWLANCoreDbg::cmdDumpTxPwrCapDebugV5(a1, this);
      break;
    case 2:
      AppleBCMWLANCoreDbg::cmdDumpTxPwrCapDebugV3(a1, this);
      break;
    default:
      IOLog("Unsupported TxCap version \n");
      break;
  }

  return 0;
}

uint64_t AppleBCMWLANCoreDbg::cmdSetTxCapHighPowerTimeout(uint64_t a1, AppleBCMWLANCore *a2)
{
  (*(*a2 + 1952))(a2);
  v4 = IO80211CoreDbg::parseUInt32FromCMD();
  AppleBCMWLANCore::setTxHighCapTimeout(a2, v4);
  if (a1)
  {
    *(a1 + 245184) = 0;
  }

  return 0;
}

uint64_t AppleBCMWLANCoreDbg::cmdGetTxCapHighPowerTimeout(uint64_t a1, AppleBCMWLANCore *a2)
{
  v4 = a1 + 241664;
  if (a1)
  {
    v5 = *(a1 + 245208);
    v6 = *(a1 + 245200);
  }

  (*(*a2 + 1952))(a2);
  v9 = -1431655766;
  AppleBCMWLANCore::getTxHighCapTimeout(a2, &v9);
  v7 = IO80211Print();
  if (a1)
  {
    *(v4 + 3520) = v7;
  }

  return 0;
}

uint64_t AppleBCMWLANCoreDbg::cmdDecodeError(uint64_t a1, uint64_t a2)
{
  v4 = a1 + 241664;
  if (a1)
  {
    v5 = *(a1 + 245208);
    v6 = *(a1 + 245200);
  }

  (*(*a2 + 1952))(a2);
  v9 = 0;
  sscanf((a1 + 10), "%*s %i", &v9);
  (*(*a2 + 112))(a2, v9);
  v7 = IO80211Print();
  if (a1)
  {
    *(v4 + 3520) = v7;
  }

  return 0;
}

uint64_t AppleBCMWLANCoreDbg::cmdDumpErrorCodes(uint64_t a1, uint64_t a2)
{
  (*(*a2 + 1952))(a2);
  forEachAppleBCMWLANReturnCodes(printRetCodeName, 0);
  if (a1)
  {
    *(a1 + 245184) = 0;
  }

  return 0;
}

uint64_t AppleBCMWLANCoreDbg::cmdBusState(uint64_t a1, AppleBCMWLANCore *a2)
{
  v4 = a1 + 241664;
  if (a1)
  {
    v5 = *(a1 + 245208);
    v6 = *(a1 + 245200);
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  (*(*a2 + 1952))(a2);
  if (a1 && strnlen((a1 + 10), 0x100uLL) == 3 && !strncasecmp((a1 + 10), "bs2", 3uLL))
  {
    Bus = AppleBCMWLANCore::getBus(a2);
    v8 = (*(*Bus + 256))(Bus, v5, 0, v6, 1);
    goto LABEL_9;
  }

  v7 = AppleBCMWLANCore::getBus(a2);
  (*(*(v7 + 48) + 344))();
  if (a1)
  {
    v8 = 0;
LABEL_9:
    *(v4 + 3520) = v8;
  }

  return 0;
}

uint64_t AppleBCMWLANCoreDbg::cmdToggleDeviceWake(uint64_t a1, AppleBCMWLANCore *a2)
{
  v4 = a1 + 241664;
  if (a1)
  {
    v5 = *(a1 + 245208);
    v6 = *(a1 + 245200);
  }

  (*(*a2 + 1952))(a2);
  v7 = *AppleBCMWLANCore::getBus(a2);
  (*(v7 + 280))();
  v8 = IO80211Print();
  if (a1)
  {
    *(v4 + 3520) = v8;
  }

  return 0;
}

uint64_t AppleBCMWLANCoreDbg::cmdLowerWlanRegOn(uint64_t a1, AppleBCMWLANCore *a2)
{
  (*(*a2 + 1952))(a2);
  v4 = *AppleBCMWLANCore::getBus(a2);
  (*(v4 + 304))();
  if (a1)
  {
    *(a1 + 245184) = 0;
  }

  return 0;
}

uint64_t AppleBCMWLANCoreDbg::cmdDSEnableDisable(uint64_t a1, AppleBCMWLANCore *a2)
{
  (*(*a2 + 1952))(a2);
  v4 = *AppleBCMWLANCore::getBus(a2);
  (*(v4 + 312))();
  if (a1)
  {
    *(a1 + 245184) = 0;
  }

  return 0;
}

uint64_t AppleBCMWLANCoreDbg::cmdDumpPCIeRegisters(uint64_t a1, uint64_t a2)
{
  (*(*a2 + 1952))(a2);
  if (a1)
  {
    *(a1 + 245184) = 0;
  }

  return 0;
}

uint64_t AppleBCMWLANCoreDbg::cmdDumpPCIeMMIOLog(uint64_t a1, uint64_t a2)
{
  (*(*a2 + 1952))(a2);
  if (a1)
  {
    *(a1 + 245184) = 0;
  }

  return 0;
}

uint64_t AppleBCMWLANCoreDbg::cmdBusTrap(int a1, AppleBCMWLANCore *this)
{
  Bus = AppleBCMWLANCore::getBus(this);
  (*(*Bus + 216))(Bus, 2);
  v4 = AppleBCMWLANCore::getBus(this);
  (*(*v4 + 200))(v4, 3713);
  return 0;
}

uint64_t AppleBCMWLANCoreDbg::cmdTxUART(uint64_t a1, uint64_t a2)
{
  v3 = a1 + 241664;
  if (a1)
  {
    v4 = *(a1 + 245208);
    v5 = *(a1 + 245200);
  }

  (*(*a2 + 1952))(a2);
  v6 = IO80211Print();
  if (a1)
  {
    *(v3 + 3520) = v6;
  }

  return 0;
}

uint64_t AppleBCMWLANCoreDbg::cmdNATKeepAliveIP(uint64_t a1, void *a2)
{
  v15 = a1 + 241664;
  if (a1)
  {
    v4 = *(a1 + 245208);
    v5 = *(a1 + 245200);
  }

  (*(*a2 + 1952))(a2);
  v17 = 0xAAAAAAAAAAAAAAAALL;
  v18 = 0xAAAAAAAAAAAAAAAALL;
  *(a2[9] + 10360) = 0;
  v6 = (a1 + 20);
  v16 = a1;
  v7 = IO80211Print();
  if (sscanf(v6, " %d.%d.%d.%d", &v17, &v17 + 4, &v18, &v18 + 4) != 4)
  {
    v13 = 3758097090;
    v12 = IO80211Print();
    if (!v16)
    {
      return v13;
    }

LABEL_9:
    *(v15 + 3520) = (v12 + v7);
    return v13;
  }

  v8 = 0;
  v9 = &v17;
  do
  {
    v10 = *v9;
    v9 = (v9 + 4);
    *(a2[9] + 10360) += v10 << v8;
    v8 += 8;
  }

  while (v8 != 32);
  v11 = *(a2[9] + 10360);
  v12 = IO80211Print();
  v13 = 0;
  if (v16)
  {
    goto LABEL_9;
  }

  return v13;
}

uint64_t AppleBCMWLANCoreDbg::cmdDumpPrivateMac(uint64_t a1, AppleBCMWLANCore *a2)
{
  *v9 = 0;
  v10 = 0;
  *v7 = 0;
  v8 = 0;
  if (a1)
  {
    v3 = *(a1 + 245208);
    v4 = *(a1 + 245200);
  }

  (*(*a2 + 1952))(a2);
  BGScanAdapter = AppleBCMWLANCore::getBGScanAdapter(a2);
  AppleBCMWLANBGScanAdapter::getPrevAndCurrentBGScanPrivateMac(BGScanAdapter, v9, v7);
  if (AppleBCMWLANCore::isAssociated(a2))
  {
    v10 = 0;
    *v9 = 0;
  }

  IO80211Print();
  return 0;
}

uint64_t AppleBCMWLANCoreDbg::cmdStaticSMPS(uint64_t a1, uint64_t a2)
{
  (*(*a2 + 1952))(a2);
  IO80211CoreDbg::parseUInt32FromCMD();
  if (a1)
  {
    *(a1 + 245184) = 0;
  }

  return 0;
}

uint64_t AppleBCMWLANCoreDbg::cmdGetMIMOMode(uint64_t a1, AppleBCMWLANCore *a2)
{
  v4 = a1 + 241664;
  if (a1)
  {
    v5 = *(a1 + 245208);
    v6 = *(a1 + 245200);
  }

  (*(*a2 + 1952))(a2);
  v7 = IOMallocZeroData();
  if (v7)
  {
    v8 = v7;
    v9 = IOMallocZeroData();
    if (v9)
    {
      v10 = v9;
      AppleBCMWLANPowerManager::getCurrentRadioChainConfig(*(*(a2 + 9) + 5520), v8);
      AppleBCMWLANCore::featureFlagClearBit(a2, 24);
      v31 = 0xAAAAAAAAAAAAAAAALL;
      *&v11 = 0xAAAAAAAAAAAAAAAALL;
      *(&v11 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v30[0] = v11;
      v30[1] = v11;
      BYTE4(v30[0]) = 0;
      LODWORD(v30[0]) = 13;
      AppleBCMWLANCore::getPowerStats(a2, v10, v30);
      v8[3];
      v12 = v8[4];
      if (v12 < 3)
      {
        v13 = off_1003CB048[v12];
      }

      v8[9];
      v8[8];
      v8[10];
      v8[7];
      v28 = v10[90];
      v29 = v10[91];
      v26 = v10[88];
      v27 = v10[89];
      v24 = v10[85];
      v25 = v10[87];
      v22 = v10[84];
      v23 = v10[86];
      v21 = v10[83];
      v19 = v8[5];
      v20 = v8[6];
      v18 = v8[2];
      v16 = *v8;
      v17 = v8[1];
      v14 = IO80211Print();
      if (a1)
      {
        *(v4 + 3520) = v14;
      }

      IOFreeData();
    }

    IOFreeData();
  }

  return 0;
}

uint64_t AppleBCMWLANCoreDbg::cmdConfigureMIMOPS(uint64_t a1, AppleBCMWLANCore *a2)
{
  v4 = a1 + 241664;
  if (a1)
  {
    v5 = *(a1 + 245208);
    v6 = *(a1 + 245200);
  }

  (*(*a2 + 1952))(a2);
  v7 = IO80211CoreDbg::parseUInt32FromCMD();
  ConfigManager = AppleBCMWLANCore::getConfigManager(a2);
  if (v7 <= 1)
  {
    AppleBCMWLANConfigManager::configureMIMOPSSupport(ConfigManager, v7 != 0);
    v9 = 0;
    if (!a1)
    {
      return 0;
    }

    goto LABEL_7;
  }

  AppleBCMWLANConfigManager::isMIMOPSSupported(ConfigManager);
  v9 = IO80211Print();
  if (a1)
  {
LABEL_7:
    *(v4 + 3520) = v9;
  }

  return 0;
}

uint64_t AppleBCMWLANCoreDbg::cmdGetMIMOPSStatus(uint64_t a1, AppleBCMWLANCore *a2)
{
  v4 = a1 + 241664;
  if (a1)
  {
    v5 = *(a1 + 245208);
    v6 = *(a1 + 245200);
  }

  v7 = (*(*a2 + 1952))(a2);
  v20 = 2;
  v21 = 0;
  v19[0] = &v20;
  v19[1] = 0x1000100010;
  Commander = AppleBCMWLANCore::getCommander(a2);
  v18[0] = &v20;
  v18[1] = 16;
  v9 = AppleBCMWLANCommander::runIOVarGet(Commander, "mimo_ps_status", v18, v19, 0);
  if (v9)
  {
    if (v7 && CCLogStream::shouldLog())
    {
      CCLogStream::logAlert(v7, "[dk] %s@%d:Failed to collect MIMO PS Status values \n", "cmdGetMIMOPSStatus", 3897);
    }
  }

  else
  {
    v10 = BYTE1(v20) & 0xF;
    if (v10 < 3)
    {
      v11 = off_1003CAFF0[v10];
    }

    if (BYTE2(v20) < 3u)
    {
      v12 = off_1003CB008[BYTE2(v20)];
    }

    if (BYTE3(v20) < 5u)
    {
      v13 = off_1003CB020[BYTE3(v20)];
    }

    if (HIBYTE(v20) < 3u)
    {
      v14 = off_1003CB048[HIBYTE(v20)];
    }

    if (BYTE4(v21) < 3u)
    {
      v15 = off_1003CB048[BYTE4(v21)];
    }

    v16 = IO80211Print();
    if (a1)
    {
      *(v4 + 3520) = v16;
    }
  }

  return v9;
}

uint64_t AppleBCMWLANCoreDbg::cmdConfigureOCL(uint64_t a1, AppleBCMWLANCore *a2)
{
  v4 = a1 + 241664;
  if (a1)
  {
    v5 = *(a1 + 245208);
    v6 = *(a1 + 245200);
  }

  v7 = (*(*a2 + 1952))(a2);
  if (AppleBCMWLANCore::isOCLEnabled(a2))
  {
    v8 = strlen((a1 + 10));
    if (!strncmp((a1 + 10), "ocl_enable", v8))
    {
      ConfigManager = AppleBCMWLANCore::getConfigManager(a2);
      AppleBCMWLANConfigManager::isOCLSupportedInDriver(ConfigManager);
      v22 = 0;
      v21[0] = &v22;
      v21[1] = 0x400040004;
      Commander = AppleBCMWLANCore::getCommander(a2);
      v20[0] = &v22;
      v20[1] = 4;
      v13 = AppleBCMWLANCommander::runIOVarGet(Commander, "ocl_enable", v20, v21, 0);
      v16 = IO80211Print();
      v17 = IO80211Print();
      if (a1)
      {
        v18 = (v17 + v16);
LABEL_20:
        *(v4 + 3520) = v18;
      }
    }

    else
    {
      v9 = IO80211CoreDbg::parseUInt32FromCMD();
      if (v9 > 1)
      {
        v11 = IO80211Print();
        v13 = 3758097090;
        if (!a1)
        {
          return v13;
        }

        goto LABEL_19;
      }

      v10 = v9;
      v11 = IO80211Print();
      v12 = *(*(a2 + 9) + 5520);
      if (v10 == 1)
      {
        AppleBCMWLANPowerManager::configureOCLParams(v12);
      }

      else
      {
        AppleBCMWLANPowerManager::configureOCLSetting(v12, 0);
      }

      v13 = 0;
      if (a1)
      {
LABEL_19:
        v18 = v11;
        goto LABEL_20;
      }
    }
  }

  else
  {
    if (v7 && CCLogStream::shouldLog())
    {
      CCLogStream::logAlert(v7, "[dk] %s@%d:OCL Feature is not Enabled on this platform\n", "cmdConfigureOCL", 3919);
    }

    v13 = 3758097095;
    if (a1)
    {
      *(v4 + 3520) = 0;
    }
  }

  return v13;
}

uint64_t AppleBCMWLANCoreDbg::cmdOCLRssiThreshold(uint64_t a1, AppleBCMWLANCore *a2)
{
  v4 = a1 + 241664;
  if (a1)
  {
    v5 = *(a1 + 245208);
    v6 = *(a1 + 245200);
  }

  v7 = (*(*a2 + 1952))(a2);
  if (AppleBCMWLANCore::isOCLEnabled(a2))
  {
    v8 = strlen((a1 + 10));
    if (strncmp((a1 + 10), "ocl_rssi_threshold", v8))
    {
      v9 = IO80211CoreDbg::parseSInt32FromCMD();
      if (v9 < 0xFFFFFF81)
      {
        v10 = IO80211Print();
        v11 = 3758097090;
        if (!a1)
        {
          return v11;
        }
      }

      else
      {
        AppleBCMWLANPowerManager::configureOCLRssiThreshold(*(*(a2 + 9) + 5520), v9);
        v10 = IO80211Print();
        v11 = 0;
        if (!a1)
        {
          return v11;
        }
      }

      goto LABEL_14;
    }

    v16 = 0;
    v15[0] = &v16;
    v15[1] = 0x400040004;
    Commander = AppleBCMWLANCore::getCommander(a2);
    v14[0] = &v16;
    v14[1] = 4;
    v11 = AppleBCMWLANCommander::runIOVarGet(Commander, "ocl_rssi_threshold", v14, v15, 0);
    v10 = IO80211Print();
    if (a1)
    {
LABEL_14:
      *(v4 + 3520) = v10;
    }
  }

  else
  {
    if (v7 && CCLogStream::shouldLog())
    {
      CCLogStream::logAlert(v7, "[dk] %s@%d:OCL Feature is not Enabled on this platform\n", "cmdOCLRssiThreshold", 3971);
    }

    v11 = 3758097095;
    if (a1)
    {
      *(v4 + 3520) = 0;
    }
  }

  return v11;
}

uint64_t AppleBCMWLANCoreDbg::cmdGetOCLStatus(uint64_t a1, AppleBCMWLANCore *a2)
{
  v4 = a1 + 241664;
  if (a1)
  {
    v5 = *(a1 + 245208);
    v6 = *(a1 + 245200);
  }

  v7 = (*(*a2 + 1952))(a2);
  if (AppleBCMWLANCore::isOCLEnabled(a2))
  {
    if (AppleBCMWLANCore::getFirmwareInterfaceVersion(a2) >= 0xC)
    {
      if (AppleBCMWLANCore::getFirmwareInterfaceVersion(a2) >= 0xE)
      {
        v8 = 56;
      }

      else
      {
        v8 = 52;
      }
    }

    else
    {
      v8 = 6;
    }

    v10 = v8;
    v11 = IOMallocZeroData();
    if (v11)
    {
      v12 = v11;
      v25[0] = v11;
      v25[1] = v10 | ((v10 | (v10 << 16)) << 16);
      Commander = AppleBCMWLANCore::getCommander(a2);
      v9 = AppleBCMWLANCommander::runIOVarGet(Commander, "ocl_status", &kNoTxPayload, v25, 0);
      if (v9)
      {
        if (v7 && CCLogStream::shouldLog())
        {
          CCLogStream::logAlert(v7, "[dk] %s@%d:Failed to collect OCL Status values \n", "cmdGetOCLStatus", 4053);
          if (!a1)
          {
            goto LABEL_37;
          }

          goto LABEL_19;
        }

        if (a1)
        {
LABEL_19:
          v14 = 0;
LABEL_36:
          *(v4 + 3520) = v14;
        }

LABEL_37:
        IOFreeData();
        return v9;
      }

      if (AppleBCMWLANCore::getFirmwareInterfaceVersion(a2) > 0xB)
      {
        AppleBCMWLANCore::getFirmwareInterfaceVersion(a2);
        v15 = *(v12 + 4);
        v16 = 3;
        v17 = 2;
      }

      else
      {
        LOWORD(v15) = *(v12 + 2);
        v16 = 5;
        v17 = 4;
      }

      v23 = *(v12 + v17);
      v24 = *(v12 + v16);
      v18 = IO80211Print();
      v19 = IO80211Print() + v18;
      if ((v15 & 2) != 0)
      {
        v19 += IO80211Print();
        if ((v15 & 4) == 0)
        {
LABEL_26:
          if ((v15 & 8) == 0)
          {
            goto LABEL_27;
          }

          goto LABEL_41;
        }
      }

      else if ((v15 & 4) == 0)
      {
        goto LABEL_26;
      }

      v19 += IO80211Print();
      if ((v15 & 8) == 0)
      {
LABEL_27:
        if ((v15 & 0x10) == 0)
        {
          goto LABEL_28;
        }

        goto LABEL_42;
      }

LABEL_41:
      v19 += IO80211Print();
      if ((v15 & 0x10) == 0)
      {
LABEL_28:
        if ((v15 & 0x20) == 0)
        {
          goto LABEL_29;
        }

        goto LABEL_43;
      }

LABEL_42:
      v19 += IO80211Print();
      if ((v15 & 0x20) == 0)
      {
LABEL_29:
        if ((v15 & 0x40) == 0)
        {
          goto LABEL_31;
        }

        goto LABEL_30;
      }

LABEL_43:
      v19 += IO80211Print();
      if ((v15 & 0x40) == 0)
      {
LABEL_31:
        v20 = IO80211Print() + v19;
        if (v23)
        {
          v20 += IO80211Print();
          if ((v23 & 2) == 0)
          {
LABEL_33:
            if ((v23 & 0x80) == 0)
            {
              goto LABEL_34;
            }

LABEL_47:
            LODWORD(v20) = IO80211Print() + v20;
LABEL_34:
            v21 = IO80211Print();
            if (a1)
            {
              v14 = (v21 + v20);
              goto LABEL_36;
            }

            goto LABEL_37;
          }
        }

        else if ((v23 & 2) == 0)
        {
          goto LABEL_33;
        }

        v20 += IO80211Print();
        if ((v23 & 0x80) == 0)
        {
          goto LABEL_34;
        }

        goto LABEL_47;
      }

LABEL_30:
      v19 += IO80211Print();
      goto LABEL_31;
    }

    return 12;
  }

  else
  {
    if (v7 && CCLogStream::shouldLog())
    {
      CCLogStream::logAlert(v7, "[dk] %s@%d:OCL Feature is not Enabled on this platform\n", "cmdGetOCLStatus", 4023);
    }

    v9 = 3758097095;
    if (a1)
    {
      *(v4 + 3520) = 0;
    }
  }

  return v9;
}

uint64_t AppleBCMWLANCoreDbg::cmdGetMWSOclCoexChannelMap(uint64_t a1, AppleBCMWLANCore *a2)
{
  v4 = a1 + 241664;
  if (a1)
  {
    v5 = *(a1 + 245208);
    v6 = *(a1 + 245200);
  }

  v7 = (*(*a2 + 1952))(a2);
  if (AppleBCMWLANCore::isOCLEnabled(a2))
  {
    v16 = 0;
    v15 = 1;
    v14[0] = &v15;
    v14[1] = 0xA000A000ALL;
    Commander = AppleBCMWLANCore::getCommander(a2);
    v13[0] = &v15;
    v13[1] = 10;
    v9 = AppleBCMWLANCommander::runIOVarGet(Commander, "mws_ocl_override", v13, v14, 0);
    if (v9)
    {
      if (v7 && CCLogStream::shouldLog())
      {
        CCLogStream::logAlert(v7, "[dk] %s@%d:Failed to get MWS OCL Coex Channel Map \n", "cmdGetMWSOclCoexChannelMap", 4153);
        if (!a1)
        {
          return v9;
        }

        goto LABEL_8;
      }

      if (a1)
      {
LABEL_8:
        v10 = 0;
LABEL_16:
        *(v4 + 3520) = v10;
      }
    }

    else
    {
      v11 = IO80211Print();
      if (a1)
      {
        v10 = v11;
        goto LABEL_16;
      }
    }
  }

  else
  {
    if (v7 && CCLogStream::shouldLog())
    {
      CCLogStream::logAlert(v7, "[dk] %s@%d:OCL Feature is not Enabled on this platform\n", "cmdGetMWSOclCoexChannelMap", 4127);
    }

    v9 = 3758097095;
    if (a1)
    {
      *(v4 + 3520) = 0;
    }
  }

  return v9;
}

uint64_t AppleBCMWLANCoreDbg::cmdStopDataPath(uint64_t a1, AppleBCMWLANCore *a2)
{
  (*(*a2 + 1952))(a2);
  v4 = *AppleBCMWLANCore::getBus(a2);
  (*(v4 + 616))();
  if (a1)
  {
    *(a1 + 245184) = 0;
  }

  return 0;
}

uint64_t AppleBCMWLANCoreDbg::cmdEnablePacketTimestamping(uint64_t a1, uint64_t a2)
{
  (*(*a2 + 1952))(a2);
  result = (*(*a2 + 296))(a2);
  if (a1)
  {
    *(a1 + 245184) = 0;
  }

  return result;
}

uint64_t AppleBCMWLANCoreDbg::cmdDisablePacketTimestamping(uint64_t a1, uint64_t a2)
{
  (*(*a2 + 1952))(a2);
  result = (*(*a2 + 304))(a2);
  if (a1)
  {
    *(a1 + 245184) = 0;
  }

  return result;
}

uint64_t AppleBCMWLANCoreDbg::cmdTstTimeSync(uint64_t a1, AppleBCMWLANCore *a2)
{
  v4 = a1 + 241664;
  if (a1)
  {
    v5 = *(a1 + 245208);
    v6 = *(a1 + 245200);
  }

  (*(*a2 + 1952))(a2);
  if (a1)
  {
    if (!strncasecmp((a1 + 10), "tst_timesync=", 0xDuLL))
    {
      IO80211CoreDbg::parseUInt32FromCMD();
      v8 = *AppleBCMWLANCore::getBus(a2);
      (*(v8 + 504))();
      v7 = IO80211Print();
    }

    else
    {
      v7 = 0;
    }

    *(v4 + 3520) = v7;
  }

  return 0;
}

uint64_t AppleBCMWLANCoreDbg::cmdTimeSyncInfo(uint64_t a1, AppleBCMWLANCore *a2)
{
  v4 = a1 + 241664;
  if (a1)
  {
    v5 = *(a1 + 245208);
    v6 = *(a1 + 245200);
  }

  (*(*a2 + 1952))(a2);
  v7 = *AppleBCMWLANCore::getBus(a2);
  v8 = (*(v7 + 512))();
  if (a1)
  {
    *(v4 + 3520) = v8;
  }

  return 0;
}

uint64_t AppleBCMWLANCoreDbg::cmdIfCounters(uint64_t a1, AppleBCMWLANCore *a2)
{
  (*(*a2 + 1952))(a2);
  result = AppleBCMWLANCore::issueIfCounterIOVar(a2, 0);
  if (a1)
  {
    *(a1 + 245184) = 0;
  }

  return result;
}

uint64_t AppleBCMWLANCoreDbg::cmdGetRingSize(uint64_t a1, void *a2)
{
  v4 = a1 + 241664;
  if (a1)
  {
    v5 = *(a1 + 245208);
    v6 = *(a1 + 245200);
  }

  (*(*a2 + 1952))(a2);
  v7 = a2[9];
  v10 = *(v7 + 4436);
  v11 = *(v7 + 4440);
  v8 = IO80211Print();
  if (a1)
  {
    *(v4 + 3520) = v8;
  }

  return 0;
}

uint64_t AppleBCMWLANCoreDbg::cmdSkywalkDump(uint64_t a1, void *a2)
{
  v14 = a1 + 241664;
  if (a1)
  {
    v3 = *(a1 + 245208);
    v4 = *(a1 + 245200);
  }

  (*(*a2 + 1952))(a2);
  v5 = a2[9];
  v12 = *(v5 + 4436);
  v13 = *(v5 + 4440);
  v6 = IO80211Print();
  v7 = 0;
  do
  {
    v16 = 0;
    v8 = (*(*a2 + 1992))(a2, v7);
    if (v8)
    {
      v9 = v8;
      acquireProperty<OSString>(v8, "IO80211InterfaceRole", &v16, 0, "IOService");
      IO80211SkywalkInterface::getInterfaceId(v9);
      if (v16)
      {
        OSString::getCStringNoCopy(v16);
      }

      v10 = v6 + IO80211Print();
      (*(*v9 + 1136))(v9);
      (*(*v9 + 1144))(v9);
      v6 = v10 + IO80211Print();
      (*(*v9 + 1112))(v9);
      if (v16)
      {
        (v16->release)(v16);
      }
    }

    v7 = (v7 + 1);
  }

  while (v7 != 12);
  if (a1)
  {
    *(v14 + 3520) = v6;
  }

  return 0;
}

uint64_t acquireProperty<OSString>(IOService *a1, const char *a2, OSMetaClassBase **a3, unint64_t a4, const char *a5)
{
  anObject = 0;
  result = acquirePropertyWithString(a1, a2, &anObject, a4, a5);
  if (result)
  {
    v7 = OSMetaClassBase::safeMetaCast(anObject, gOSStringMetaClass);
    if (v7)
    {
      *a3 = v7;
      return 1;
    }

    else
    {
      result = anObject;
      if (anObject)
      {
        (anObject->release)(anObject);
        return 0;
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANCoreDbg::cmdDumpColocatedCache(uint64_t a1, uint64_t a2)
{
  (*(*a2 + 1952))(a2);
  IO80211CoreDbg::parseUInt32FromCMD();
  if (a1)
  {
    *(a1 + 245184) = 0;
  }

  return 0;
}

uint64_t AppleBCMWLANCoreDbg::cmdScanSuppress(uint64_t a1, uint64_t a2)
{
  v4 = a1 + 241664;
  if (a1)
  {
    v5 = *(a1 + 245208);
    v6 = *(a1 + 245200);
  }

  (*(*a2 + 1952))(a2);
  v7 = IO80211CoreDbg::parseUInt32FromCMD();
  (*(*a2 + 1784))(a2, v7 != 0);
  v8 = IO80211Print();
  if (a1)
  {
    *(v4 + 3520) = v8;
  }

  return 0;
}

uint64_t AppleBCMWLANCoreDbg::cmdMloStatus(uint64_t a1, AppleBCMWLANCore *a2)
{
  v4 = a1 + 241664;
  if (a1)
  {
    v5 = *(a1 + 245208);
    v6 = *(a1 + 245200);
  }

  else
  {
    v5 = 0;
  }

  (*(*a2 + 1952))(a2);
  if (AppleBCMWLANCore::featureFlagIsBitSet(a2, 115))
  {
    v7 = *(*(a2 + 9) + 5592);
    if (v7)
    {
      AppleBCMWLAN11beAdapter::dumpMloStatus(v7, v5);
    }
  }

  if (a1)
  {
    *(v4 + 3520) = 0;
  }

  return 0;
}

uint64_t AppleBCMWLANCoreDbg::cmdForceLPSCForNDDForActive(uint64_t a1, AppleBCMWLANCore *a2)
{
  (*(*a2 + 1952))(a2);
  v4 = IO80211CoreDbg::parseUInt32FromCMD() != 0;
  NDDAdapter = AppleBCMWLANCore::getNDDAdapter(a2);
  AppleBCMWLANNearbyDeviceDiscoveryAdapter::dbgForceLPSCForNDD(NDDAdapter, v4);
  if (a1)
  {
    *(a1 + 245184) = 0;
  }

  return 0;
}

uint64_t AppleBCMWLANCoreDbg::cmdSetNDDTimeoutForActive(uint64_t a1, AppleBCMWLANCore *a2)
{
  (*(*a2 + 1952))(a2);
  v4 = IO80211CoreDbg::parseSInt32FromCMD();
  NDDAdapter = AppleBCMWLANCore::getNDDAdapter(a2);
  AppleBCMWLANNearbyDeviceDiscoveryAdapter::dbgSetNDDTimeoutMsForActive(NDDAdapter, v4);
  if (a1)
  {
    *(a1 + 245184) = 0;
  }

  return 0;
}

uint64_t AppleBCMWLANCoreDbg::cmdSetNDDNumReports(uint64_t a1, AppleBCMWLANCore *a2)
{
  (*(*a2 + 1952))(a2);
  v4 = IO80211CoreDbg::parseSInt32FromCMD();
  NDDAdapter = AppleBCMWLANCore::getNDDAdapter(a2);
  AppleBCMWLANNearbyDeviceDiscoveryAdapter::dbgSetNDDNumReports(NDDAdapter, v4);
  if (a1)
  {
    *(a1 + 245184) = 0;
  }

  return 0;
}

uint64_t AppleBCMWLANCoreDbg::cmdSetBTCoexMode(uint64_t a1, void *a2)
{
  (*(*a2 + 1952))(a2);
  v6 = IO80211CoreDbg::parseUInt32FromCMD();
  v5[0] = &v6;
  v5[1] = 4;
  result = AppleBCMWLANCommander::runIOVarSet(*(a2[9] + 5408), "btc_mode", v5, 0, 0);
  if (a1)
  {
    if (!result)
    {
      *(a1 + 245184) = 0;
    }
  }

  return result;
}

uint64_t AppleBCMWLANCoreDbg::cmdGetBTCoexMode(uint64_t a1, void *a2)
{
  v4 = a1 + 241664;
  if (a1)
  {
    v5 = *(a1 + 245208);
    v6 = *(a1 + 245200);
  }

  (*(*a2 + 1952))(a2);
  v24 = 0;
  v23[0] = &v24;
  v23[1] = 0x400040004;
  v7 = *(a2[9] + 5408);
  v22[0] = &v24;
  v22[1] = 4;
  v8 = AppleBCMWLANCommander::runIOVarGet(v7, "btc_mode", v22, v23, 0);
  if (v24 >= 7u || BYTE1(v24) >= 7u)
  {
    IO80211Print();
    return 0;
  }

  else
  {
    v9 = v8;
    v21 = off_1003CB0D0[v24 & 7];
    v10 = off_1003CB060[v24 & 7];
    v11 = (v24 >> 8) & 7;
    v12 = off_1003CB060[v11];
    v18 = off_1003CB098[v11];
    v19 = off_1003CB098[v24 & 7];
    v20 = off_1003CB0D0[v11];
    v13 = IO80211Print();
    v14 = IO80211Print() + v13;
    v15 = v14 + IO80211Print();
    v16 = IO80211Print();
    if (a1)
    {
      *(v4 + 3520) = (v15 + v16);
    }
  }

  return v9;
}

uint64_t AppleBCMWLANCoreDbg::cmdGetMinBTRSSI(uint64_t a1, void *a2)
{
  v4 = a1 + 241664;
  if (a1)
  {
    v5 = *(a1 + 245208);
    v6 = *(a1 + 245200);
  }

  (*(*a2 + 1952))(a2);
  v12 = 0;
  v13[0] = &v12;
  v13[1] = 0x400040004;
  v7 = *(a2[9] + 5408);
  v11[0] = &v12;
  v11[1] = 4;
  v8 = AppleBCMWLANCommander::runIOVarGet(v7, "btc_btrssi_avg", v11, v13, 0);
  v9 = IO80211Print();
  if (a1)
  {
    *(v4 + 3520) = v9;
  }

  return v8;
}

uint64_t AppleBCMWLANCoreDbg::cmdGetScanSuppress(uint64_t a1, void *a2)
{
  v4 = a1 + 241664;
  if (a1)
  {
    v5 = *(a1 + 245208);
    v6 = *(a1 + 245200);
  }

  v7 = (*(*a2 + 1952))(a2);
  v14 = 0;
  v13[0] = &v14;
  v13[1] = 0x400040004;
  v8 = *(a2[9] + 5408);
  v12[0] = &v14;
  v12[1] = 4;
  v9 = AppleBCMWLANCommander::runIOCtlGet(v8, 115, v12, v13, 0);
  if (v9)
  {
    if (v7 && CCLogStream::shouldLog())
    {
      CCLogStream::logAlert(v7, "[dk] %s@%d:Unable to get scansuppress state %d: %d\n", "cmdGetScanSuppress", 4589, v14, v9);
    }
  }

  else
  {
    v10 = IO80211Print();
    if (a1)
    {
      *(v4 + 3520) = v10;
    }
  }

  return v9;
}

uint64_t AppleBCMWLANCoreDbg::cmdGetLimAggPolicy(uint64_t a1, void *a2)
{
  v4 = a1 + 241664;
  if (a1)
  {
    v5 = *(a1 + 245208);
    v6 = *(a1 + 245200);
  }

  (*(*a2 + 1952))(a2);
  v12 = 0;
  v13[0] = &v12;
  v13[1] = 0x400040004;
  v7 = *(a2[9] + 5408);
  v11[0] = &v12;
  v11[1] = 4;
  v8 = AppleBCMWLANCommander::runIOVarGet(v7, "btc_lim_agg_enab", v11, v13, 0);
  v9 = IO80211Print();
  if (a1)
  {
    *(v4 + 3520) = v9;
  }

  return v8;
}

uint64_t AppleBCMWLANCoreDbg::cmdSetLimAggPolicy(uint64_t a1, void *a2)
{
  v4 = a1 + 241664;
  if (a1)
  {
    v5 = *(a1 + 245208);
    v6 = *(a1 + 245200);
  }

  (*(*a2 + 1952))(a2);
  if (!AppleBCMWLANNetAdapter::isLimitedAggregationSupported(*(a2[9] + 5600)))
  {
    LODWORD(v8) = IO80211Print();
    result = 0;
    v8 = v8;
    if (!a1)
    {
      return result;
    }

    goto LABEL_7;
  }

  v10 = IO80211CoreDbg::parseUInt32FromCMD();
  v9[0] = &v10;
  v9[1] = 4;
  result = AppleBCMWLANCommander::runIOVarSet(*(a2[9] + 5408), "btc_lim_agg_enab", v9, 0, 0);
  v8 = 0;
  if (a1)
  {
LABEL_7:
    *(v4 + 3520) = v8;
  }

  return result;
}

uint64_t AppleBCMWLANCoreDbg::htSisoOnly(uint64_t a1, void *a2)
{
  v4 = a1 + 241664;
  if (a1)
  {
    v5 = *(a1 + 245208);
    v6 = *(a1 + 245200);
  }

  (*(*a2 + 1952))(a2);
  AppleBCMWLANPowerManager::getHtSisoOnly(*(a2[9] + 5520));
  v7 = IO80211Print();
  if (a1)
  {
    *(v4 + 3520) = v7;
  }

  return 0;
}

uint64_t AppleBCMWLANCoreDbg::injectBssTransEvent(uint64_t a1, AppleBCMWLANCore *a2)
{
  (*(*a2 + 1952))(a2);
  v4 = IOMallocZeroData();
  if (!v4)
  {
    return 12;
  }

  v5 = v4;
  *(v4 + 8) = 7;
  *(v4 + 20) = 23;
  *(v4 + 51) |= 1u;
  *(v4 + 49) = 7;
  *(v4 + 55) = 3636;
  *(v4 + 68) = IO80211CoreDbg::parseUInt32FromCMD();
  if (AppleBCMWLANCore::getNetAdapter(a2))
  {
    NetAdapter = AppleBCMWLANCore::getNetAdapter(a2);
    AppleBCMWLANNetAdapter::handleBssTransEvent(NetAdapter, v5);
  }

  if (a1)
  {
    *(a1 + 245184) = 0;
  }

  IOFreeData();
  return 0;
}

uint64_t AppleBCMWLANCoreDbg::injectBeaconMiti(uint64_t a1, AppleBCMWLANCore *a2)
{
  (*(*a2 + 1952))(a2);
  v12 = 0;
  v13 = &v12;
  v14 = 0x5802000000;
  v15 = __Block_byref_object_copy_;
  v16 = __Block_byref_object_dispose_;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  DWORD1(v17) = 188;
  HIDWORD(v17) = IO80211CoreDbg::parseUInt32FromCMD();
  NetAdapter = AppleBCMWLANCore::getNetAdapter(a2);
  AppleBCMWLANNetAdapter::getBeaconMuteMitigationVersion(NetAdapter);
  *(v13 + 15) = 8;
  if (AppleBCMWLANCore::getBssManager(a2))
  {
    BssManager = AppleBCMWLANCore::getBssManager(a2);
    if (AppleBCMWLANBssManager::getCurrentBSS(BssManager))
    {
      v6 = AppleBCMWLANCore::getBssManager(a2);
      CurrentBSS = AppleBCMWLANBssManager::getCurrentBSS(v6);
      (*(*CurrentBSS + 136))(CurrentBSS, v13 + 8);
    }
  }

  if (AppleBCMWLANCore::getNetAdapter(a2))
  {
    v8 = (*(*a2 + 88))(a2);
    v9 = (*(*v8 + 168))(v8);
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 1107296256;
    v11[2] = ___ZN19AppleBCMWLANCoreDbg16injectBeaconMitiEP24apple80211_debug_commandP16AppleBCMWLANCore_block_invoke;
    v11[3] = &__block_descriptor_tmp_437;
    v11[4] = &v12;
    v11[5] = a2;
    IODispatchQueue::DispatchAsync(v9, v11);
  }

  if (a1)
  {
    *(a1 + 245184) = 0;
  }

  _Block_object_dispose(&v12, 8);
  return 0;
}

__n128 __Block_byref_object_copy_(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  v3 = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 56) = v3;
  *(a1 + 40) = result;
  return result;
}

uint64_t ___ZN19AppleBCMWLANCoreDbg16injectBeaconMitiEP24apple80211_debug_commandP16AppleBCMWLANCore_block_invoke(uint64_t a1)
{
  NetAdapter = AppleBCMWLANCore::getNetAdapter(*(a1 + 40));
  v3 = *(*(a1 + 32) + 8) + 40;

  return AppleBCMWLANNetAdapter::handleBeaconMuteMitigation(NetAdapter, v3);
}

uint64_t AppleBCMWLANCoreDbg::injectDeauth(uint64_t a1, AppleBCMWLANCore *a2)
{
  (*(*a2 + 1952))(a2);
  v11 = 0;
  v12 = &v11;
  v13 = 0x5802000000;
  v14 = __Block_byref_object_copy_;
  v15 = __Block_byref_object_dispose_;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  DWORD1(v16) = 6;
  if (AppleBCMWLANCore::getBssManager(a2))
  {
    BssManager = AppleBCMWLANCore::getBssManager(a2);
    if (AppleBCMWLANBssManager::getCurrentBSS(BssManager))
    {
      v5 = AppleBCMWLANCore::getBssManager(a2);
      CurrentBSS = AppleBCMWLANBssManager::getCurrentBSS(v5);
      (*(*CurrentBSS + 136))(CurrentBSS, v12 + 8);
    }
  }

  v7 = (*(*a2 + 88))(a2);
  v8 = (*(*v7 + 168))(v7);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = ___ZN19AppleBCMWLANCoreDbg12injectDeauthEP24apple80211_debug_commandP16AppleBCMWLANCore_block_invoke;
  v10[4] = &v11;
  v10[5] = a2;
  v10[3] = &__block_descriptor_tmp_440;
  IODispatchQueue::DispatchAsync(v8, v10);
  if (a1)
  {
    *(a1 + 245184) = 0;
  }

  _Block_object_dispose(&v11, 8);
  return 0;
}

uint64_t AppleBCMWLANCoreDbg::cmdMissingCCLogFiles(uint64_t a1, AppleBCMWLANCore *a2)
{
  (*(*a2 + 1952))(a2);
  v4 = IO80211CoreDbg::parseUInt32FromCMD();
  Bus = AppleBCMWLANCore::getBus(a2);
  AppleBCMWLANBusInterface::setCCLogDebugFlags(Bus, v4);
  if (a1)
  {
    *(a1 + 245184) = 0;
  }

  return 0;
}

uint64_t AppleBCMWLANCoreDbg::cmdEnableDisableAdaptiveRoaming(uint64_t a1, uint64_t a2)
{
  (*(*a2 + 1952))(a2);
  if (a1)
  {
    *(a1 + 245184) = 0;
  }

  return 3758097095;
}

uint64_t AppleBCMWLANCoreDbg::cmdEnableDisableGarp(uint64_t a1, uint64_t a2)
{
  (*(*a2 + 1952))(a2);
  if (a1)
  {
    *(a1 + 245184) = 0;
  }

  return 0;
}

uint64_t AppleBCMWLANCoreDbg::cmdConfigureBcnlossCoreCapture(uint64_t a1, AppleBCMWLANCore *a2)
{
  v4 = a1 + 241664;
  if (a1)
  {
    v5 = *(a1 + 245208);
    v6 = *(a1 + 245200);
  }

  (*(*a2 + 1952))(a2);
  v7 = strlen((a1 + 10));
  if (!strncmp((a1 + 10), "bcnlosscc", v7))
  {
    AppleBCMWLANCore::getBcnLossCCState(a2);
  }

  else
  {
    if (!strncmp((a1 + 20), "enable,", 7uLL))
    {
      v8 = IO80211CoreDbg::parseUInt32FromCMD();
    }

    else
    {
      v8 = 5;
    }

    AppleBCMWLANCore::dbgConfigureBcnlossCoreCapture(a2, v8);
  }

  v9 = IO80211Print();
  if (a1)
  {
    *(v4 + 3520) = v9;
  }

  return 0;
}

uint64_t AppleBCMWLANCoreDbg::cmdConfigureTrafficEngineering(uint64_t a1, uint64_t a2)
{
  (*(*a2 + 1952))(a2);
  if (a1)
  {
    *(a1 + 245184) = 0;
  }

  return 0;
}

uint64_t AppleBCMWLANCoreDbg::cmdGetRoamInfo(uint64_t a1, void *a2)
{
  v4 = a1 + 241664;
  if (a1)
  {
    v5 = *(a1 + 245208);
    v6 = *(a1 + 245200);
  }

  (*(*a2 + 1952))(a2);
  v7 = strlen((a1 + 10));
  if (!strncmp((a1 + 10), "roamInfo", v7))
  {
    v46 = a1;
    v47 = v4;
    v10 = 0;
    LODWORD(v8) = 0;
    v11 = -1800;
    do
    {
      v12 = IO80211Print();
      v13 = (a2[9] + v11);
      v44 = v13[14090];
      v45 = v13[14091];
      v42 = v13[14088];
      v43 = v13[14089];
      v39 = v13[14086];
      v41 = v13[14087];
      v35 = v13[14084];
      v37 = v13[14085];
      v31 = v13[14082];
      v33 = v13[14083];
      v27 = v13[14080];
      v29 = v13[14081];
      v14 = v8 + v12 + IO80211Print();
      v15 = a2[9] + v11;
      v16 = *(v15 + 14024);
      v17 = v10;
      v18 = *(v15 + 14028);
      v19 = *(v15 + 14032);
      v20 = *(v15 + 14036);
      stringFromReason(19, *(v15 + 14580));
      v21 = a2[9] + v11;
      v22 = *(v21 + 14008) - *(v21 + 14000);
      *(v21 + 14588);
      v23 = v14 + IO80211Print();
      v24 = (a2[9] + v11 + 12780);
      v38 = v24[1372];
      v40 = v24[1373];
      v34 = v24[1369];
      v36 = v24[1370];
      v30 = v24[1367];
      v32 = v24[1368];
      v26 = v24[1366];
      v28 = v24[1365];
      v25 = v23 + IO80211Print();
      v8 = v25 + IO80211Print();
      v10 = v17 + 1;
      v11 += 600;
    }

    while (v11);
    v4 = v47;
    if (v46)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v8 = 0;
    if (a1)
    {
LABEL_5:
      *(v4 + 3520) = v8;
    }
  }

  return 0;
}

uint64_t AppleBCMWLANCoreDbg::cmdEnableDisableCongestionControl(uint64_t a1, uint64_t a2)
{
  (*(*a2 + 1952))(a2);
  if (a1)
  {
    *(a1 + 245184) = 0;
  }

  return 0;
}

uint64_t AppleBCMWLANCoreDbg::cmdTrafficEngPacketRateConfig(uint64_t a1, uint64_t a2)
{
  (*(*a2 + 1952))(a2);
  if (a1)
  {
    *(a1 + 245184) = 0;
  }

  return 0;
}

uint64_t AppleBCMWLANCoreDbg::cmdConfigureDequeueRatio(uint64_t a1, uint64_t a2)
{
  (*(*a2 + 1952))(a2);
  if (a1)
  {
    *(a1 + 245184) = 0;
  }

  return 0;
}

uint64_t AppleBCMWLANCoreDbg::cmdGetPktLifetime(uint64_t a1, void *a2)
{
  v4 = (*(*a2 + 1952))(a2);
  v15 = 0;
  v5 = *(a1 + 19);
  if (v5 == 118)
  {
    v7 = *(a1 + 20);
    if (v7 == 111)
    {
      v8 = 3;
    }

    else
    {
      v8 = 0;
    }

    if (v7 == 105)
    {
      v6 = 2;
    }

    else
    {
      v6 = v8;
    }
  }

  else
  {
    v6 = v5 == 98 && *(a1 + 20) == 107;
  }

  LODWORD(v15) = v6;
  v14[0] = &v15;
  v14[1] = 0x800080008;
  v9 = *(a2[9] + 5408);
  v13[0] = &v15;
  v13[1] = 8;
  v10 = AppleBCMWLANCommander::runIOVarGet(v9, "lifetime", v13, v14, 0);
  if (v10)
  {
    if (v4 && CCLogStream::shouldLog())
    {
      v11 = (*(*a2 + 112))(a2, v10);
      CCLogStream::logAlert(v4, "[dk] %s@%d: Error: Unable to get packet lifetime. ret %s\n", "cmdGetPktLifetime", 5070, v11);
    }
  }

  else
  {
    v13[0] = v15;
    IO80211CoreDbg::pktLifetimePrint();
  }

  *(a1 + 245184) = 0;
  return v10;
}

uint64_t AppleBCMWLANCoreDbg::cmdGetBTMRssiThreshold(uint64_t a1, void *a2)
{
  v4 = (*(*a2 + 1952))(a2);
  v11 = 0;
  v10[0] = &v11;
  v10[1] = 0x400040004;
  v5 = *(a2[9] + 5408);
  v9[0] = &v11;
  v9[1] = 4;
  v6 = AppleBCMWLANCommander::runIOVarGet(v5, "wnm_btm_rssi_thresh", v9, v10, 0);
  if (v6)
  {
    if (v4 && CCLogStream::shouldLog())
    {
      v7 = (*(*a2 + 112))(a2, v6);
      CCLogStream::logAlert(v4, "[dk] %s@%d: Error: Failed to Get BTM Rssi Threshold :  Ret %s\n", "cmdGetBTMRssiThreshold", 5094, v7);
    }
  }

  else
  {
    IO80211CoreDbg::btmThresholdCmdPrint();
  }

  if (a1)
  {
    *(a1 + 245184) = 0;
  }

  return v6;
}

uint64_t AppleBCMWLANCoreDbg::cmdSOI(uint64_t a1, void *a2)
{
  v4 = (*(*a2 + 1952))(a2);
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13[0] = &v10;
  v13[1] = 0x1800180018;
  *__str = &v10;
  v5 = *(a2[9] + 5408);
  *&__str[8] = 24;
  v6 = AppleBCMWLANCommander::runIOVarGet(v5, "pm2_sleep_ret_ext", __str, v13, 0);
  if (v6)
  {
    if (v4 && CCLogStream::shouldLog())
    {
      v7 = (*(*a2 + 112))(a2, v6);
      CCLogStream::logAlert(v4, "[dk] %s@%d:Error: cannot get FRTS state : ret %x: %s\n", "cmdSOI", 5116, v6, v7);
    }
  }

  else
  {
    *&v8 = 0xAAAAAAAAAAAAAAAALL;
    *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v28 = v8;
    v29 = v8;
    v26 = v8;
    v27 = v8;
    v24 = v8;
    v25 = v8;
    v22 = v8;
    v23 = v8;
    v20 = v8;
    v21 = v8;
    v18 = v8;
    v19 = v8;
    v16 = v8;
    v17 = v8;
    *__str = v8;
    v15 = v8;
    snprintf(__str, 0x100uLL, "Logic:\t%u\nData SOI Low:\t%u\nData SOI High:\t%u\nRx Pkt Threshold:\t%u\nTx Pkt Threshold:\t%u\nTx Rx Pkt Threshold:\t%u\nRx Bytes Threshold:\t%u\nTx Bytes Threshold:\t%u\nTx Rx Bytes Threshold:\t%u\n", v10, WORD1(v10), WORD2(v10), HIWORD(v10), v11, WORD1(v11), HIDWORD(v11), v12, HIDWORD(v12));
    IO80211CoreDbg::soiCmdPrint();
  }

  if (a1)
  {
    *(a1 + 245184) = 0;
  }

  return v6;
}

uint64_t AppleBCMWLANCoreDbg::cmdPwrScanStats(uint64_t a1, uint64_t a2)
{
  v4 = a1 + 241664;
  if (a1)
  {
    v5 = *(a1 + 245208);
    v6 = *(a1 + 245200);
  }

  v7 = (*(*a2 + 1952))(a2);
  v8 = IOMallocZeroData();
  if (!v8)
  {
    return 0;
  }

  v9 = v8;
  AppleBCMWLANCore::featureFlagClearBit(a2, 24);
  if (AppleBCMWLANCore::isAssociated(a2))
  {
    if (!strncmp((a1 + 20), "maincore", 8uLL))
    {
      v10 = 0;
    }

    else if (!strncmp((a1 + 20), "auxcore", 7uLL))
    {
      v10 = 0;
    }

    else if (!strncmp((a1 + 20), "scancore", 8uLL))
    {
      if (!AppleBCMWLANCore::checkForScanCoreSupport(a2) || AppleBCMWLANCore::checkForLPSCDisable(a2))
      {
        if (v7 && CCLogStream::shouldLog())
        {
          AppleBCMWLANCoreDbg::cmdPwrScanStats(a2, a2 & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000, v7);
        }

        v10 = 0;
        goto LABEL_24;
      }

      v10 = 0;
    }

    else
    {
      (*(*a2 + 112))(a2, 0);
      v10 = IO80211Print();
    }

    AppleBCMWLANCore::getPowerStatsPerSliceIndex();
    if (v12)
    {
      v11 = v12;
      if (v7 && CCLogStream::shouldLog())
      {
        v13 = (*(*a2 + 112))(a2, v11);
        CCLogStream::logAlert(v7, "[dk] %s@%d: Error: Failed to Get Scan Power Stats:  Ret %s\n", "cmdPwrScanStats", 5170, v13);
      }

      goto LABEL_25;
    }

    v14 = *(v9 + 516);
    IO80211CoreDbg::scanStatsPrint();
  }

  else
  {
    v10 = IO80211Print();
  }

LABEL_24:
  v11 = 0;
LABEL_25:
  if (a1)
  {
    *(v4 + 3520) = v10;
  }

  IOFreeData();
  return v11;
}

uint64_t AppleBCMWLANCoreDbg::cmdTvpmInfo(uint64_t a1, AppleBCMWLANCore *a2)
{
  v4 = (*(*a2 + 1952))(a2);
  v5 = IOMallocZeroData();
  if (v5)
  {
    v6 = v5;
    *v5 = 0xC000300140001;
    Commander = AppleBCMWLANCore::getCommander(a2);
    v8 = AppleBCMWLANCommander::getMaxCmdRxPayload(Commander) - 5;
    v9 = IOMallocZeroData();
    if (!v9)
    {
      AppleBCMWLANCoreDbg::cmdTvpmInfo();
    }

    v10 = v9;
    v11 = v8 | (v8 << 32) | 0x10000;
    if (v8)
    {
      v12 = v9;
    }

    else
    {
      v11 = 0;
      v12 = 0;
    }

    v20[0] = v12;
    v20[1] = v11;
    v13 = *(*(a2 + 9) + 5408);
    v19[0] = v6;
    v19[1] = 20;
    v14 = AppleBCMWLANCommander::runIOVarGet(v13, "tvpm", v19, v20, 0);
    if (v14)
    {
      if (v4 && CCLogStream::shouldLog())
      {
        v15 = (*(*a2 + 112))(a2, v14);
        CCLogStream::logAlert(v4, "[dk] %s@%d:Error: cannot get tvpminfo %s\n", "cmdTvpmInfo", 5216, v15);
      }
    }

    else
    {
      v16 = *(v10 + 2);
      v17 = *(v10 + 8);
      IO80211CoreDbg::tvpmCmdPrint();
    }

    if (a1)
    {
      *(a1 + 245184) = 0;
    }

    IOFreeData();
    IOFreeData();
  }

  else
  {
    if (v4 && CCLogStream::shouldLog())
    {
      CCLogStream::logAlert(v4, "[dk] %s@%d:No memory\n", "cmdTvpmInfo", 5192);
    }

    return 12;
  }

  return v14;
}

uint64_t AppleBCMWLANCoreDbg::cmdGetHotlistChannel(uint64_t a1, AppleBCMWLANCore *a2)
{
  v4 = (*(*a2 + 1952))(a2);
  v13[0] = 0;
  v13[1] = 0;
  bzero(v12, 0x5FAuLL);
  *(&v12[1] + 2) = 380;
  v11[0] = v12;
  v11[1] = 0x5F4000405FALL;
  v5 = AppleBCMWLANCommander::runIOVarGet(*(*(a2 + 9) + 5408), "roam_channels_in_hotlist", &kNoTxPayload, v11, 0);
  if (v5)
  {
    if (v4 && CCLogStream::shouldLog())
    {
      v6 = (*(*a2 + 112))(a2, v5);
      CCLogStream::logAlert(v4, "[dk] %s@%d:Error: cannot get roam channel hot list %s\n", "cmdGetHotlistChannel", 5241, v6);
    }
  }

  else
  {
    if (v12[0] >= 7u)
    {
      v7 = 7;
    }

    else
    {
      v7 = v12[0];
    }

    v14 = v7;
    if (v12[0])
    {
      v8 = 0;
      do
      {
        ChanSpecHandler = AppleBCMWLANCore::getChanSpecHandler(a2);
        *(v13 + v8) = AppleBCMWLANChanSpec::getAppleChannelSpec(ChanSpecHandler, LOWORD(v12[v8 + 1]));
        ++v8;
      }

      while (v8 < v14);
    }

    IO80211CoreDbg::hotListChannelsPrint();
  }

  if (a1)
  {
    *(a1 + 245184) = 0;
  }

  return v5;
}

uint64_t AppleBCMWLANCoreDbg::cmdAmpduRxAggr(uint64_t a1, void *a2)
{
  v4 = a1 + 241664;
  if (a1)
  {
    v5 = *(a1 + 245208);
    v6 = *(a1 + 245200);
  }

  (*(*a2 + 1952))(a2);
  memset(v14, 0, 6);
  v12 = 0;
  v15[0] = v14;
  v15[1] = 0x600060006;
  v7 = *(a2[9] + 5408);
  v11[0] = v14;
  v11[1] = 6;
  v8 = AppleBCMWLANCommander::runIOVarGet(v7, "ampdu_rxaggr", v11, v15, 0);
  if (!v8)
  {
    LOBYTE(v12) = v14[0];
    v13 = *(v14 + 2);
    IO80211CoreDbg::rxAggrStatusCmdPrint();
    v9 = 0;
    if (!a1)
    {
      return v8;
    }

    goto LABEL_5;
  }

  (*(*a2 + 112))(a2, v8);
  v9 = IO80211Print();
  if (a1)
  {
LABEL_5:
    *(v4 + 3520) = v9;
  }

  return v8;
}

uint64_t AppleBCMWLANCoreDbg::cmdDumpAmpdu(uint64_t a1, AppleBCMWLANCore *a2)
{
  v4 = 3758097084;
  v5 = (*(*a2 + 1952))(a2);
  memset(v19, 170, sizeof(v19));
  Commander = AppleBCMWLANCore::getCommander(a2);
  v7 = (AppleBCMWLANCommander::getMaxCmdRxPayload(Commander) - 5);
  v8 = IOMallocZeroData();
  v9 = IOMallocZeroData();
  v10 = v9;
  v11 = v9 == 0;
  if (v8)
  {
    if (v9)
    {
      if (!AppleBCMWLANCore::isAssociated(a2))
      {
        goto LABEL_29;
      }

      if (!strncmp((a1 + 10), "dumpampdu", 9uLL))
      {
        strcpy(v10, "ampdu");
        goto LABEL_23;
      }

      if (*(*(a2 + 9) + 780) < 6u)
      {
        goto LABEL_23;
      }

      v12 = *(a1 + 20);
      if (v12 == 116)
      {
        if (*(a1 + 21) != 120)
        {
          goto LABEL_23;
        }

        v10[8] = 0;
        v13 = "ampdu_tx";
      }

      else
      {
        if (v12 != 114 || *(a1 + 21) != 120)
        {
          goto LABEL_23;
        }

        v10[8] = 0;
        v13 = "ampdu_rx";
      }

      *v10 = *v13;
LABEL_23:
      v19[2] = v10;
      v19[3] = 100;
      v14 = v7 | (v7 << 32) | 0x10000;
      if (v7)
      {
        v15 = v8;
      }

      else
      {
        v14 = 0;
        v15 = 0;
      }

      v19[0] = v15;
      v19[1] = v14;
      v16 = AppleBCMWLANCommander::runIOVarGet(*(*(a2 + 9) + 5408), "dump", &v19[2], v19, 0);
      v4 = v16;
      if ((!v16 || v16 == -469794535) && (*(*(a2 + 9) + 10376) & 1) == 0)
      {
        if (v5 && CCLogStream::shouldLog())
        {
          v18 = (*(*a2 + 112))(a2, v4);
          CCLogStream::logAlert(v5, "[dk] %s@%d:Failed to dump ampdu - %s\n", "cmdDumpAmpdu", 5316, v18);
        }

        goto LABEL_30;
      }

LABEL_29:
      IO80211CoreDbg::ampduDumpCmdPrint();
LABEL_30:
      v11 = 0;
      goto LABEL_31;
    }

    if (v5)
    {
      v11 = 1;
      if (CCLogStream::shouldLog())
      {
        CCLogStream::logAlert(v5, "[dk] %s@%d:ampduReq.isAllocationFailure()\n", "cmdDumpAmpdu", 5296);
      }
    }

    else
    {
      v11 = 1;
    }
  }

  else if (v5 && CCLogStream::shouldLog())
  {
    CCLogStream::logAlert(v5, "[dk] %s@%d:ampduResp.isAllocationFailure()\n", "cmdDumpAmpdu", 5295);
  }

LABEL_31:
  if (a1)
  {
    *(a1 + 245184) = 0;
  }

  if (!v11)
  {
    IOFreeData();
  }

  if (v8)
  {
    IOFreeData();
  }

  return v4;
}

uint64_t AppleBCMWLANCoreDbg::cmdDumpAmsdu(uint64_t a1, AppleBCMWLANCore *a2)
{
  v4 = 3758097084;
  v5 = (*(*a2 + 1952))(a2);
  memset(v17, 170, sizeof(v17));
  Commander = AppleBCMWLANCore::getCommander(a2);
  v7 = (AppleBCMWLANCommander::getMaxCmdRxPayload(Commander) - 5);
  v8 = IOMallocZeroData();
  v9 = IOMallocZeroData();
  v10 = v9;
  v11 = v9 == 0;
  if (v8)
  {
    if (v9)
    {
      if (!AppleBCMWLANCore::isAssociated(a2) || strncmp((a1 + 10), "dumpamsdu", 9uLL))
      {
        goto LABEL_11;
      }

      strcpy(v10, "amsdu");
      v17[2] = v10;
      v17[3] = 100;
      v12 = v7 | (v7 << 32) | 0x10000;
      if (v7)
      {
        v13 = v8;
      }

      else
      {
        v12 = 0;
        v13 = 0;
      }

      if (((v17[0] = v13, v17[1] = v12, v14 = AppleBCMWLANCommander::runIOVarGet(*(*(a2 + 9) + 5408), "dump", &v17[2], v17, 0), v4 = v14, !v14) || v14 == -469794535) && (*(*(a2 + 9) + 10376) & 1) == 0)
      {
        if (v5 && CCLogStream::shouldLog())
        {
          v16 = (*(*a2 + 112))(a2, v4);
          CCLogStream::logAlert(v5, "[dk] %s@%d:Failed to dump amsdu - %s\n", "cmdDumpAmsdu", 5352, v16);
        }
      }

      else
      {
LABEL_11:
        IO80211CoreDbg::amsduDumpCmdPrint();
      }

      v11 = 0;
      if (!a1)
      {
        goto LABEL_24;
      }

LABEL_23:
      *(a1 + 245184) = 0;
      goto LABEL_24;
    }

    if (!v5)
    {
      v11 = 1;
      if (!a1)
      {
        goto LABEL_24;
      }

      goto LABEL_23;
    }

    v11 = 1;
    if (CCLogStream::shouldLog())
    {
      CCLogStream::logAlert(v5, "[dk] %s@%d:amsduReq.isAllocationFailure()\n", "cmdDumpAmsdu", 5343);
    }

    if (a1)
    {
      goto LABEL_23;
    }
  }

  else
  {
    if (v5 && CCLogStream::shouldLog())
    {
      CCLogStream::logAlert(v5, "[dk] %s@%d:amsduResp.isAllocationFailure()\n", "cmdDumpAmsdu", 5342);
    }

    if (a1)
    {
      goto LABEL_23;
    }
  }

LABEL_24:
  if (!v11)
  {
    IOFreeData();
  }

  if (v8)
  {
    IOFreeData();
  }

  return v4;
}

uint64_t AppleBCMWLANCoreDbg::cmdGet6GHzPowerMode(uint64_t a1, AppleBCMWLANCore *a2)
{
  v4 = a1 + 241664;
  if (a1)
  {
    v5 = *(a1 + 245208);
    v6 = *(a1 + 245200);
  }

  v7 = 3758097084;
  (*(*a2 + 1952))(a2);
  v8 = IOMallocZeroData();
  if (v8)
  {
    v9 = v8;
    if (AppleBCMWLANCore::getBssManager(a2))
    {
      BssManager = AppleBCMWLANCore::getBssManager(a2);
      if (IO80211BssManager::isAssociatedOn6G(BssManager))
      {
        if (AppleBCMWLANCore::getFirmwareInterfaceVersion(a2) >= 0x11)
        {
          *(v9 + 44) = 47;
          *v9 = 7;
          *(v9 + 58) = 12;
          v25[0] = v9;
          v25[1] = 181;
          v24[0] = v9;
          v24[1] = 0xB5000000B5;
          Commander = AppleBCMWLANCore::getCommander(a2);
          v12 = AppleBCMWLANCommander::runIOCtlGet(Commander, 256, v25, v24, 0);
          if (v12)
          {
            v13 = v12;
            IO80211Print();
            v7 = v13;
LABEL_14:
            IOFreeData();
            return v7;
          }

          if (*(v9 + 44) == 47)
          {
            v16 = *(v9 + 58);
            if (v16)
            {
              v14 = 0;
              v17 = 0;
              v18 = (v9 + 168);
              do
              {
                if (*v18 == 66 && v18[1] == 1)
                {
                  v19 = v18[2];
                  if (v19 <= 2)
                  {
                    v20 = power_mode_table[v19];
                  }

                  v14 += IO80211Print();
                  v16 = *(v9 + 58);
                }

                v21 = v18[1];
                v22 = v17 + v21;
                v17 += v21 + 2;
                v18 += v21 + 2;
              }

              while (v16 > (v22 + 2));
            }

            else
            {
              v14 = 0;
            }

            goto LABEL_10;
          }

          v23 = *(v9 + 44);
        }

        IO80211Print();
        goto LABEL_14;
      }
    }

    v14 = IO80211Print();
LABEL_10:
    v7 = 0;
    if (a1)
    {
      *(v4 + 3520) = v14;
    }

    goto LABEL_14;
  }

  return 3758097085;
}

OSObject *AppleBCMWLANPCIeSkywalk::withProviderAndCapacity(OSObject *this, AppleBCMWLANBusInterfacePCIe *a2, int a3, int a4, int a5, int a6, CCLogStream *a7, CCLogStream *a8, CCFaultReporter *a9)
{
  v15 = a2;
  pObject = 0xAAAAAAAAAAAAAAAALL;
  if (OSObjectAllocate(gAppleBCMWLANPCIeSkywalkMetaClass, &pObject))
  {
    return 0;
  }

  v17 = pObject;
  if (pObject && (AppleBCMWLANPCIeSkywalk::initWithProviderAndCapacity(pObject, this, v15, a3, a4, a5, a6, a7, a8) & 1) == 0)
  {
    (v17->release)(v17);
    return 0;
  }

  return v17;
}

uint64_t AppleBCMWLANPCIeSkywalk::allocSkywalkCommonResources(AppleBCMWLANPCIeSkywalk *this, OSObject *a2)
{
  v20 = 0;
  v21 = 0;
  v5 = (this + 56);
  v4 = *(this + 7);
  v6 = *(v4 + 36);
  v17 = v6;
  v18 = v6;
  v19 = 1;
  HIDWORD(v20) = 805306368;
  if (v4[7])
  {
    if (*v4)
    {
      shouldLog = CCLogStream::shouldLog();
      v4 = *v5;
      if (shouldLog)
      {
        CCLogStream::logAlert(*v4, "[dk] %s@%d:common resource packet pool already allocated, skip to allocate again\n", "allocSkywalkCommonResources", 327);
        v4 = *v5;
      }
    }
  }

  else
  {
    (*v5)[7] = AppleBCMWLANPCIeSkywalkPacketPool::withName("AppleBCMWLANSkywalkPool", v4[6], *v4, v4[2], &v17);
    v4 = *v5;
    if (!(*v5)[7])
    {
      v8 = 3758097086;
      if (*v4 && CCLogStream::shouldLog())
      {
        AppleBCMWLANPCIeSkywalk::allocSkywalkCommonResources(v5);
      }

      return v8;
    }
  }

  if (v4[8])
  {
    if (*v4 && CCLogStream::shouldLog())
    {
      AppleBCMWLANPCIeSkywalk::allocSkywalkCommonResources(v5);
    }

    goto LABEL_10;
  }

  v10 = OSMetaClassBase::safeMetaCast(v4[6], gAppleBCMWLANBusInterfacePCIeMetaClass);
  (*v5)[8] = AppleBCMWLANPCIeSkywalkRxSubmissionQueue::withProviderAndQueueInfoAndPool(v10, a2, 0, 0, *(*v5 + 8), (*v5)[7], **v5, (*v5)[2], v16);
  v11 = *v5;
  if ((*v5)[8])
  {
    ActionRxSubmissionQueueDataAvailable = AppleBCMWLANBusInterfacePCIe::CreateActionRxSubmissionQueueDataAvailable(v11[6], 0, v11 + 22);
    v13 = *v5;
    if (ActionRxSubmissionQueueDataAvailable)
    {
      v8 = ActionRxSubmissionQueueDataAvailable;
      if (*v13 && CCLogStream::shouldLog())
      {
        CCLogStream::logEmergency(**v5, "[dk] %s@%d:Failed to allocate osaction RXSubmissionQueueDataAvailable, ret:%d\n", "allocSkywalkCommonResources", 360, v8);
      }
    }

    else
    {
      (*(*v13[8] + 72))(v13[8], v13 + 23);
      v14 = *v5;
      v15 = (*v5)[23];
      if (v15)
      {
        IODataQueueDispatchSource::SetDataAvailableHandler(v15, v14[22], 0);
LABEL_10:
        (*(**(*(this + 7) + 48) + 80))(*(*(this + 7) + 48));
        v8 = 0;
        *(*(this + 7) + 104) = IO80211TimerSource::allocWithParams();
        return v8;
      }

      v8 = 3758097086;
      if (*v14 && CCLogStream::shouldLog())
      {
        AppleBCMWLANPCIeSkywalk::allocSkywalkCommonResources(v5);
      }
    }
  }

  else
  {
    v8 = 3758097086;
    if (*v11 && CCLogStream::shouldLog())
    {
      AppleBCMWLANPCIeSkywalk::allocSkywalkCommonResources(v5);
    }
  }

  return v8;
}