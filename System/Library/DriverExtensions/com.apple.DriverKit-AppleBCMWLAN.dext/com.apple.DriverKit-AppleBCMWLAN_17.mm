uint64_t AppleBCMWLANCore::setRATE(uint64_t *a1, uint64_t a2)
{
  v10 = -1;
  v8 = &v10;
  v9 = 0x400040004;
  if (AppleBCMWLANCommander::runIOVarGet(*(a1[9] + 5408), "bg_rate", &kNoTxPayload, &v8, 0))
  {
    if ((*(*a1 + 1952))(a1))
    {
      (*(*a1 + 1952))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::setRATE(a1);
      }
    }
  }

  v10 = *(a2 + 8);
  v4 = *(a1[9] + 5408);
  v7[0] = &v10;
  v7[1] = 4;
  if (AppleBCMWLANCommander::runIOVarSet(v4, "bg_rate", v7, 0, 0))
  {
    if ((*(*a1 + 1952))(a1))
    {
      (*(*a1 + 1952))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::setRATE(a1);
      }
    }
  }

  v8 = &v10;
  v9 = 0x400040004;
  v5 = AppleBCMWLANCommander::runIOVarGet(*(a1[9] + 5408), "bg_rate", &kNoTxPayload, &v8, 0);
  if (v5)
  {
    if ((*(*a1 + 1952))(a1))
    {
      (*(*a1 + 1952))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::setRATE(a1);
      }
    }
  }

  return v5;
}

uint64_t AppleBCMWLANCore::setWOW_TEST(AppleBCMWLANCore *a1, uint64_t a2)
{
  if ((*(a2 + 4) - 601) < 0xFFFFFDA8)
  {
    return 3758097090;
  }

  v5 = 5;
  do
  {
    result = AppleBCMWLANCore::configureWoWTestModeEntry(a1, *(a2 + 4));
    if (!result)
    {
      break;
    }

    --v5;
  }

  while (v5);
  return result;
}

uint64_t AppleBCMWLANCore::configureWoWTestModeEntry(AppleBCMWLANCore *this, int a2)
{
  if ((a2 - 601) < 0xFFFFFDA8)
  {
    return 3758097090;
  }

  AppleBCMWLANCore::addEventBit(this);
  v6 = AppleBCMWLANCore::writeEventBitField(this);
  if (v6)
  {
    v2 = v6;
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::configureWoWTestModeEntry(this);
      }
    }
  }

  else
  {
    v10 = a2;
    v7 = *(*(this + 9) + 5408);
    v9[0] = &v10;
    v9[1] = 4;
    v2 = AppleBCMWLANCommander::runIOVarSet(v7, "wake_event", v9, 0, 0);
    v8 = (*(*this + 1952))(this);
    if (v2)
    {
      if (v8)
      {
        (*(*this + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::configureWoWTestModeEntry(this);
        }
      }
    }

    else
    {
      if (v8)
      {
        (*(*this + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::configureWoWTestModeEntry(this);
        }
      }

      *(*(this + 9) + 9480) = 1;
    }
  }

  return v2;
}

uint64_t AppleBCMWLANCore::setVendorIE(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  MaxCmdTxPayload = AppleBCMWLANCommander::getMaxCmdTxPayload(*(a1[9] + 5408));
  MaxCmdRxPayload = AppleBCMWLANCommander::getMaxCmdRxPayload(*(a1[9] + 5408));
  v8 = *(a1[9] + 5408);
  if (MaxCmdTxPayload >= MaxCmdRxPayload)
  {
    v9 = AppleBCMWLANCommander::getMaxCmdRxPayload(v8);
  }

  else
  {
    v9 = AppleBCMWLANCommander::getMaxCmdTxPayload(v8);
  }

  v10 = v9 - 8;
  v11 = *(a3 + 16) + 13;
  if (v11 > v9 - 8)
  {
    if ((*(*a1 + 1952))(a1))
    {
      (*(*a1 + 1952))(a1);
      if (CCLogStream::shouldLog())
      {
        v34 = (*(*a1 + 1952))(a1);
        CCLogStream::logCrit(v34, "[dk] %s@%d:ERROR: IE is too large setbuflen=%lu maxbuflen=%lu\n", "setVendorIE", 35741, v11, v10);
      }
    }

    return 12;
  }

  v13 = IOMallocZeroData();
  v14 = IOMallocZeroData();
  v15 = v14;
  if (!v13)
  {
    v19 = v14 == 0;
LABEL_20:
    if ((*(*a1 + 1952))(a1))
    {
      (*(*a1 + 1952))(a1);
      if (CCLogStream::shouldLog())
      {
        v35 = (*(*a1 + 1952))(a1);
        CCLogStream::logCrit(v35, "[dk] %s@%d:ERROR: failed to allocate setbuflen=%lu maxbuflen=%lu \n", "setVendorIE", 35749, v11, v10);
      }
    }

    v12 = 12;
    if (v19)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

  if (!v14)
  {
    v19 = 1;
    goto LABEL_20;
  }

  v16 = v10 | (v10 << 32) | 0x40000;
  if (v10)
  {
    v17 = v14;
  }

  else
  {
    v16 = 0;
    v17 = 0;
  }

  v41[0] = v17;
  v41[1] = v16;
  v18 = AppleBCMWLANCommander::runVirtualIOVarGet(*(a1[9] + 5408), a2, "vndr_ie", &kNoTxPayload, v41, 0);
  if (v18)
  {
    v12 = v18;
    if ((*(*a1 + 1952))(a1))
    {
      (*(*a1 + 1952))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::setVendorIE(a1, a1 & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000, v12, a2);
      }
    }
  }

  else
  {
    v37 = (v13 + 8);
    v38 = v13;
    v21 = (v15 + 1);
    if (*v15 < 1)
    {
LABEL_35:
      if (*(a3 + 8))
      {
        v13 = v38;
        *v38 = 0x100646461;
        v26 = (*(a3 + 4) >> 4) & 1;
        *(v38 + 8) = v26;
        if ((*(a3 + 4) & 0xF) != 0)
        {
          *v37 = *(a3 + 4) & 2 | (*(a3 + 4) >> 1) & 4 | (16 * (*(a3 + 4) & 1)) & 0xDF | (32 * ((*(a3 + 4) >> 2) & 1)) | v26;
        }

        *(v38 + 12) = *(a3 + 20);
        memmove((v38 + 14), (a3 + 21), (*(a3 + 16) - 1));
        *(v38 + 13) = *(a3 + 16) - 1;
        v27 = *(a1[9] + 5408);
        if (v11)
        {
          v28 = v38;
        }

        else
        {
          v28 = 0;
        }

        v39 = v28;
        v40 = v11;
        v12 = AppleBCMWLANCommander::runVirtualIOVarSet(v27, a2, "vndr_ie", &v39, 0, 0);
        if (v12)
        {
          if ((*(*a1 + 1952))(a1))
          {
            (*(*a1 + 1952))(a1);
            if (CCLogStream::shouldLog())
            {
              AppleBCMWLANCore::setVendorIE(a1);
            }
          }
        }
      }

      else
      {
        v12 = 0;
LABEL_66:
        v13 = v38;
      }
    }

    else
    {
      v22 = 0;
      v23 = &v21[v10];
      v36 = v13 + v11;
      while (1)
      {
        if ((v21 + 6) > v23)
        {
          v12 = 3758097128;
          if (!(*(*a1 + 1952))(a1))
          {
            goto LABEL_66;
          }

          (*(*a1 + 1952))(a1);
          v13 = v38;
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANCore::setVendorIE(a1);
          }

          goto LABEL_24;
        }

        v24 = v21[5];
        if (&v21[v24 + 6] > v23)
        {
          v12 = 3758097128;
          if (!(*(*a1 + 1952))(a1))
          {
            goto LABEL_66;
          }

          (*(*a1 + 1952))(a1);
          v13 = v38;
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANCore::setVendorIE(a1);
          }

          goto LABEL_24;
        }

        v25 = &v21[v24 + 4];
        if (&v25[v24 + 8] > v23)
        {
          v12 = 3758097128;
          if (!(*(*a1 + 1952))(a1))
          {
            goto LABEL_66;
          }

          (*(*a1 + 1952))(a1);
          v13 = v38;
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANCore::setVendorIE(a1);
          }

          goto LABEL_24;
        }

        if (AppleBCMWLANUtil::matchIESignature((a3 + 20), *(a3 + 12), v21 + 4))
        {
          break;
        }

        ++v22;
        v21 = v25 + 2;
        if (v22 >= *v15)
        {
          goto LABEL_35;
        }
      }

      *v38 = 0x1006C6564;
      v29 = v21[5] + 6;
      if (v37 + v29 > v36)
      {
        v12 = 3758097128;
        if ((*(*a1 + 1952))(a1))
        {
          (*(*a1 + 1952))(a1);
          if (CCLogStream::shouldLog())
          {
            v30 = (*(*a1 + 1952))(a1);
            CCLogStream::logWarn(v30, "[dk] %s@%d:WARNING: vendor IE information overrun max allowed %u, ie->len[%u]\n", "setVendorIE", 35817, v10, v21[5]);
          }
        }

        goto LABEL_66;
      }

      memmove(v37, v21, v29);
      v31 = *(a1[9] + 5408);
      if (v11)
      {
        v32 = v38;
      }

      else
      {
        v32 = 0;
      }

      v39 = v32;
      v40 = v11;
      v33 = AppleBCMWLANCommander::runVirtualIOVarSet(v31, a2, "vndr_ie", &v39, 0, 0);
      if (!v33)
      {
        goto LABEL_35;
      }

      v12 = v33;
      if (!(*(*a1 + 1952))(a1))
      {
        goto LABEL_66;
      }

      (*(*a1 + 1952))(a1);
      v13 = v38;
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::setVendorIE(a1);
      }
    }
  }

LABEL_24:
  IOFreeData();
LABEL_25:
  if (v13)
  {
    IOFreeData();
  }

  return v12;
}

uint64_t AppleBCMWLANCore::setIE(uint64_t *a1, uint64_t a2)
{
  if (!a2)
  {
    if ((*(*a1 + 1952))(a1))
    {
      (*(*a1 + 1952))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::setIE(a1);
      }
    }

    return 22;
  }

  v4 = *(a2 + 16);
  if ((v4 - 2049) <= 0xFFFFF7FF)
  {
    if ((*(*a1 + 1952))(a1))
    {
      (*(*a1 + 1952))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::setIE(a1);
      }
    }

    return 22;
  }

  if (*(a2 + 4) == 4 && *(a2 + 8) && (v6 = (a2 + 20), *(a2 + 20) == 68))
  {
    v7 = *(a1[9] + 5416);

    return AppleBCMWLANJoinAdapter::setCustomAssocIE(v7, v6, v4);
  }

  else
  {

    return AppleBCMWLANCore::setVendorIE(a1, 0, a2);
  }
}

uint64_t AppleBCMWLANCore::printLogOnDeadlock(AppleBCMWLANCore *this)
{
  if ((*(*this + 1952))(this))
  {
    (*(*this + 1952))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::printLogOnDeadlock(this);
    }
  }

  v2 = *(**(*(this + 9) + 5392) + 688);

  return v2();
}

BOOL AppleBCMWLANCore::is6ESupportedInCountry(AppleBCMWLANCore *this, const char *__s1)
{
  v2 = *(this + 9);
  v3 = *(v2 + 7788);
  if (!v3)
  {
    return 0;
  }

  v5 = 0;
  v6 = v2 + 7792;
  do
  {
    v7 = strcmp(__s1, (v6 + 4 * v5));
    result = v7 == 0;
    if (!v7)
    {
      break;
    }

    ++v5;
  }

  while (v3 > v5);
  return result;
}

uint64_t AppleBCMWLANCore::setSWDIV_RX_POLICY(AppleBCMWLANCore *this, int *a2)
{
  v3 = *(this + 9);
  v8 = *(v3 + 10392);
  v4 = *(v3 + 5408);
  v7[0] = &v8;
  v7[1] = 4;
  v5 = AppleBCMWLANCommander::runIOVarSet(v4, "swdiv_rx_policy", v7, 0, 0);
  if (v5)
  {
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::setSWDIV_RX_POLICY(this);
      }
    }
  }

  return v5;
}

uint64_t AppleBCMWLANCore::setSWDIV_TX_POLICY(AppleBCMWLANCore *this, int *a2)
{
  v3 = *(this + 9);
  v8 = *(v3 + 10396);
  v4 = *(v3 + 5408);
  v7[0] = &v8;
  v7[1] = 4;
  v5 = AppleBCMWLANCommander::runIOVarSet(v4, "swdiv_tx_policy", v7, 0, 0);
  if (v5)
  {
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::setSWDIV_TX_POLICY(this);
      }
    }
  }

  return v5;
}

uint64_t AppleBCMWLANCore::setSWDIV_CELL_POLICY(AppleBCMWLANCore *this, int *a2)
{
  v3 = *(this + 9);
  v8 = *(v3 + 10400);
  v4 = *(v3 + 5408);
  v7[0] = &v8;
  v7[1] = 4;
  v5 = AppleBCMWLANCommander::runIOVarSet(v4, "swdiv_cell_policy", v7, 0, 0);
  if (v5)
  {
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::setSWDIV_CELL_POLICY(this);
      }
    }
  }

  return v5;
}

uint64_t AppleBCMWLANCore::setMWS_NGC_COEX_BITMAPS(AppleBCMWLANCore *this, unsigned __int8 *a2)
{
  v8[0] = 1;
  v3 = *(this + 9);
  v8[1] = *(v3 + 10528);
  v8[2] = *(v3 + 10532);
  v8[3] = *(v3 + 10536);
  v4 = *(v3 + 5408);
  v7[0] = v8;
  v7[1] = 8;
  v5 = AppleBCMWLANCommander::runIOVarSet(v4, "nr_5gwifi_coex_bitmap", v7, 0, 0);
  if (v5)
  {
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::setMWS_NGC_COEX_BITMAPS(this);
      }
    }
  }

  return v5;
}

uint64_t AppleBCMWLANCore::setMWS_NGC_TimerGranularity(AppleBCMWLANCore *this, unsigned __int8 *a2)
{
  v3 = *(this + 9);
  v4 = *(v3 + 5408);
  v7[0] = v3 + 10700;
  v7[1] = 4;
  v5 = AppleBCMWLANCommander::runIOVarSet(v4, "nr_5gwifi_timer_granularity", v7, 0, 0);
  if (v5)
  {
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::setMWS_NGC_TimerGranularity(this);
      }
    }
  }

  return v5;
}

uint64_t AppleBCMWLANCore::setMWS_NGC_ACTIVITY_LEVEL_THRESHOLDS(AppleBCMWLANCore *this, unsigned __int8 *a2)
{
  v3 = *(this + 9);
  v4 = *(v3 + 5408);
  v7[0] = v3 + 10696;
  v7[1] = 4;
  v5 = AppleBCMWLANCommander::runIOVarSet(v4, "nr_5gwifi_inact_thresh", v7, 0, 0);
  if (v5)
  {
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::setMWS_NGC_ACTIVITY_LEVEL_THRESHOLDS(this);
      }
    }
  }

  return v5;
}

uint64_t AppleBCMWLANCore::setMWS2GWiFiType7Bitmap(int64_t this, unsigned __int8 *a2)
{
  v3 = IOMallocZeroData();
  if (v3)
  {
    *v3 = 16875520;
    *(v3 + 4) = 1;
    *(v3 + 8) = 1;
    *(v3 + 12) = *(*(this + 72) + 31084);
    *(v3 + 6) = 8;
    v9[0] = v3;
    v9[1] = 16;
    v4 = (*(*this + 88))(this);
    if ((*(*v4 + 136))(v4))
    {
      v5 = AppleBCMWLANCommander::sendIOVarSet(*(*(this + 72) + 5408), "mws");
    }

    else
    {
      v5 = AppleBCMWLANCommander::runIOVarSet(*(*(this + 72) + 5408), "mws", v9, 0, 0);
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
          AppleBCMWLANCore::setMWS2GWiFiType7Bitmap(this);
        }
      }
    }

    else if (v7)
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::setMWS2GWiFiType7Bitmap(this, this & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000, this + 72);
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
        AppleBCMWLANCore::setMWS2GWiFiType7Bitmap(this);
      }
    }
  }

  return v6;
}

uint64_t AppleBCMWLANCore::setMWSCoexBitmapsWiFiEnh(AppleBCMWLANCore *this, unsigned __int8 *a2)
{
  v3 = IOMallocZeroData();
  if (v3)
  {
    *v3 = 16875520;
    *(v3 + 4) = 2;
    *(v3 + 8) = 0x18000300000001;
    *(v3 + 16) = 7;
    *(v3 + 18) = *(*(this + 9) + 10540);
    *(v3 + 20) = *(*(this + 9) + 10544);
    *(v3 + 22) = *(*(this + 9) + 10548);
    *(v3 + 24) = *(*(this + 9) + 10552);
    *(v3 + 26) = *(*(this + 9) + 10556);
    *(v3 + 28) = *(*(this + 9) + 10560);
    *(v3 + 30) = *(*(this + 9) + 10564);
    *(v3 + 32) = *(*(this + 9) + 10568);
    *(v3 + 34) = *(*(this + 9) + 10572);
    *(v3 + 6) = 28;
    v9[0] = v3;
    v9[1] = 36;
    v4 = (*(*this + 88))(this);
    if ((*(*v4 + 136))(v4))
    {
      v5 = AppleBCMWLANCommander::sendIOVarSet(*(*(this + 9) + 5408), "mws");
    }

    else
    {
      v5 = AppleBCMWLANCommander::runIOVarSet(*(*(this + 9) + 5408), "mws", v9, 0, 0);
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
          AppleBCMWLANCore::setMWSCoexBitmapsWiFiEnh(this);
        }
      }
    }

    else if (v7)
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::setMWSCoexBitmapsWiFiEnh(this);
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
        AppleBCMWLANCore::setMWSCoexBitmapsWiFiEnh(this);
      }
    }
  }

  return v6;
}

uint64_t AppleBCMWLANCore::setOCLCoexBitmapsWiFiEnh(AppleBCMWLANCore *this, unsigned __int8 *a2)
{
  v3 = IOMallocZeroData();
  if (v3)
  {
    *v3 = 16875520;
    *(v3 + 4) = 3;
    *(v3 + 8) = 0x18000200000001;
    *(v3 + 16) = 7;
    *(v3 + 18) = *(*(this + 9) + 10580);
    *(v3 + 20) = *(*(this + 9) + 10584);
    *(v3 + 22) = *(*(this + 9) + 10588);
    *(v3 + 24) = *(*(this + 9) + 10592);
    *(v3 + 26) = *(*(this + 9) + 10596);
    *(v3 + 28) = *(*(this + 9) + 10600);
    *(v3 + 30) = *(*(this + 9) + 10604);
    *(v3 + 32) = *(*(this + 9) + 10608);
    *(v3 + 34) = *(*(this + 9) + 10612);
    *(v3 + 6) = 28;
    v9[0] = v3;
    v9[1] = 36;
    v4 = (*(*this + 88))(this);
    if ((*(*v4 + 136))(v4))
    {
      v5 = AppleBCMWLANCommander::sendIOVarSet(*(*(this + 9) + 5408), "mws");
    }

    else
    {
      v5 = AppleBCMWLANCommander::runIOVarSet(*(*(this + 9) + 5408), "mws", v9, 0, 0);
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
          AppleBCMWLANCore::setOCLCoexBitmapsWiFiEnh(this);
        }
      }
    }

    else if (v7)
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::setOCLCoexBitmapsWiFiEnh(this);
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
        AppleBCMWLANCore::setOCLCoexBitmapsWiFiEnh(this);
      }
    }
  }

  return v6;
}

uint64_t AppleBCMWLANCore::setWiFiType7BitmapsWiFiEnh(AppleBCMWLANCore *this, unsigned __int8 *a2)
{
  v3 = IOMallocZeroData();
  if (v3)
  {
    *v3 = 16875520;
    *(v3 + 4) = 6;
    *(v3 + 8) = 0x18000100000001;
    *(v3 + 16) = 7;
    *(v3 + 18) = *(*(this + 9) + 10616);
    *(v3 + 20) = *(*(this + 9) + 10620);
    *(v3 + 22) = *(*(this + 9) + 10624);
    *(v3 + 24) = *(*(this + 9) + 10628);
    *(v3 + 26) = *(*(this + 9) + 10632);
    *(v3 + 28) = *(*(this + 9) + 10636);
    *(v3 + 30) = *(*(this + 9) + 10640);
    *(v3 + 32) = *(*(this + 9) + 10644);
    *(v3 + 34) = *(*(this + 9) + 10648);
    *(v3 + 6) = 28;
    v9[0] = v3;
    v9[1] = 36;
    v4 = (*(*this + 88))(this);
    if ((*(*v4 + 136))(v4))
    {
      v5 = AppleBCMWLANCommander::sendIOVarSet(*(*(this + 9) + 5408), "mws");
    }

    else
    {
      v5 = AppleBCMWLANCommander::runIOVarSet(*(*(this + 9) + 5408), "mws", v9, 0, 0);
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
          AppleBCMWLANCore::setWiFiType7BitmapsWiFiEnh(this);
        }
      }
    }

    else if (v7)
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::setWiFiType7BitmapsWiFiEnh(this);
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
        AppleBCMWLANCore::setWiFiType7BitmapsWiFiEnh(this);
      }
    }
  }

  return v6;
}

uint64_t AppleBCMWLANCore::setWiFiType4BlankingBitmapsWiFiEnh(AppleBCMWLANCore *this, unsigned __int8 *a2)
{
  v3 = IOMallocZeroData();
  if (v3)
  {
    *v3 = 16875520;
    *(v3 + 4) = 7;
    *(v3 + 8) = 0x1C000200000001;
    *(v3 + 16) = 7;
    *(v3 + 18) = *(*(this + 9) + 10652);
    *(v3 + 20) = *(*(this + 9) + 10656);
    *(v3 + 22) = *(*(this + 9) + 10660);
    *(v3 + 24) = *(*(this + 9) + 10664);
    *(v3 + 26) = *(*(this + 9) + 10668);
    *(v3 + 28) = *(*(this + 9) + 10672);
    *(v3 + 30) = *(*(this + 9) + 10676);
    *(v3 + 32) = *(*(this + 9) + 10680);
    *(v3 + 34) = *(*(this + 9) + 10684);
    *(v3 + 36) = *(*(this + 9) + 10688);
    *(v3 + 6) = 32;
    v9[0] = v3;
    v9[1] = 40;
    v4 = (*(*this + 88))(this);
    if ((*(*v4 + 136))(v4))
    {
      v5 = AppleBCMWLANCommander::sendIOVarSet(*(*(this + 9) + 5408), "mws");
    }

    else
    {
      v5 = AppleBCMWLANCommander::runIOVarSet(*(*(this + 9) + 5408), "mws", v9, 0, 0);
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
          AppleBCMWLANCore::setWiFiType4BlankingBitmapsWiFiEnh(this);
        }
      }
    }

    else if (v7)
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::setWiFiType4BlankingBitmapsWiFiEnh(this);
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
        AppleBCMWLANCore::setWiFiType4BlankingBitmapsWiFiEnh(this);
      }
    }
  }

  return v6;
}

uint64_t AppleBCMWLANCore::setWiFiType4BlankingModeBitmapsWiFiEnh(AppleBCMWLANCore *this, unsigned __int8 *a2)
{
  v3 = IOMallocZeroData();
  if (v3)
  {
    *v3 = 16875520;
    *(v3 + 4) = 12;
    *(v3 + 8) = 0x1C000100000001;
    *(v3 + 16) = 2;
    *(v3 + 18) = *(*(this + 9) + 10652);
    *(v3 + 20) = 0;
    *(v3 + 22) = *(*(this + 9) + 10656);
    *(v3 + 24) = *(*(this + 9) + 10660);
    *(v3 + 26) = *(*(this + 9) + 10664);
    *(v3 + 28) = 0;
    *(v3 + 36) = 0;
    *(v3 + 6) = 32;
    v9[0] = v3;
    v9[1] = 40;
    v4 = (*(*this + 88))(this);
    if ((*(*v4 + 136))(v4))
    {
      v5 = AppleBCMWLANCommander::sendIOVarSet(*(*(this + 9) + 5408), "mws");
    }

    else
    {
      v5 = AppleBCMWLANCommander::runIOVarSet(*(*(this + 9) + 5408), "mws", v9, 0, 0);
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
          AppleBCMWLANCore::setWiFiType4BlankingModeBitmapsWiFiEnh(this);
        }
      }
    }

    else if (v7)
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::setWiFiType4BlankingModeBitmapsWiFiEnh(this);
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
        AppleBCMWLANCore::setWiFiType4BlankingModeBitmapsWiFiEnh(this);
      }
    }
  }

  return v6;
}

uint64_t AppleBCMWLANCore::setWiFiRfemConfigBitmapWiFiEnh(AppleBCMWLANCore *this, unsigned __int8 *a2)
{
  v12 = 0xAAAAAAAAAAAAAAAALL;
  v13 = 0xAAAAAAAAAAAAAAAALL;
  v3 = IOMallocZeroData();
  if (v3)
  {
    *v3 = 16875520;
    *(v3 + 4) = 8;
    *(v3 + 8) = 0x18000100000001;
    *(v3 + 16) = 0;
    v4 = *(*(this + 9) + 10576) & 1;
    *(v3 + 16) = v4;
    v5 = *(this + 9);
    v6 = *(v5 + 10576);
    if ((v6 & 2) != 0)
    {
      v4 |= 2u;
      *(v3 + 16) = v4;
      v5 = *(this + 9);
      v6 = *(v5 + 10576);
    }

    if ((v6 & 4) != 0)
    {
      *(v3 + 16) = v4 | 4;
      v5 = *(this + 9);
    }

    *(v3 + 18) = *(v5 + 10540);
    *(v3 + 20) = *(*(this + 9) + 10544);
    *(v3 + 22) = *(*(this + 9) + 10548);
    *(v3 + 24) = *(*(this + 9) + 10552);
    *(v3 + 26) = *(*(this + 9) + 10556);
    *(v3 + 28) = *(*(this + 9) + 10560);
    *(v3 + 30) = *(*(this + 9) + 10564);
    *(v3 + 32) = *(*(this + 9) + 10568);
    *(v3 + 34) = *(*(this + 9) + 10572);
    *(v3 + 6) = 28;
    v12 = v3;
    v13 = 36;
    v7 = (*(*this + 88))(this);
    if ((*(*v7 + 136))(v7))
    {
      v8 = AppleBCMWLANCommander::sendIOVarSet(*(*(this + 9) + 5408), "mws");
    }

    else
    {
      v8 = AppleBCMWLANCommander::runIOVarSet(*(*(this + 9) + 5408), "mws", &v12, 0, 0);
    }

    v9 = v8;
    v10 = (*(*this + 1952))(this);
    if (v9)
    {
      if (v10)
      {
        (*(*this + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::setWiFiRfemConfigBitmapWiFiEnh(this);
        }
      }
    }

    else if (v10)
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::setWiFiRfemConfigBitmapWiFiEnh(this);
      }
    }

    IOFreeData();
  }

  else
  {
    v9 = 3758097085;
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::setWiFiRfemConfigBitmapWiFiEnh(this);
      }
    }
  }

  return v9;
}

uint64_t AppleBCMWLANCore::setWiFiAssocProtectionConfigBitmapWiFiEnh(AppleBCMWLANCore *this, unsigned __int8 *a2)
{
  v3 = IOMallocZeroData();
  if (v3)
  {
    *v3 = 16875520;
    *(v3 + 4) = 13;
    *(v3 + 8) = 0x18000100000001;
    *(v3 + 16) = 7;
    *(v3 + 18) = *(*(this + 9) + 10540);
    *(v3 + 20) = *(*(this + 9) + 10544);
    *(v3 + 22) = *(*(this + 9) + 10548);
    *(v3 + 24) = *(*(this + 9) + 10552);
    *(v3 + 26) = *(*(this + 9) + 10556);
    *(v3 + 28) = *(*(this + 9) + 10560);
    *(v3 + 30) = *(*(this + 9) + 10564);
    *(v3 + 32) = *(*(this + 9) + 10568);
    *(v3 + 34) = *(*(this + 9) + 10572);
    *(v3 + 6) = 28;
    v9[0] = v3;
    v9[1] = 36;
    v4 = (*(*this + 88))(this);
    if ((*(*v4 + 136))(v4))
    {
      v5 = AppleBCMWLANCommander::sendIOVarSet(*(*(this + 9) + 5408), "mws");
    }

    else
    {
      v5 = AppleBCMWLANCommander::runIOVarSet(*(*(this + 9) + 5408), "mws", v9, 0, 0);
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
          AppleBCMWLANCore::setWiFiAssocProtectionConfigBitmapWiFiEnh(this);
        }
      }
    }

    else if (v7)
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::setWiFiAssocProtectionConfigBitmapWiFiEnh(this);
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
        AppleBCMWLANCore::setWiFiAssocProtectionConfigBitmapWiFiEnh(this);
      }
    }
  }

  return v6;
}

uint64_t AppleBCMWLANCore::setSCAN_FREQ_CHANNELS(AppleBCMWLANCore *this, unsigned __int8 *a2)
{
  v3 = *(this + 9);
  v4 = *(v3 + 5408);
  v7[0] = v3 + 10412;
  v7[1] = 10;
  v5 = AppleBCMWLANCommander::runIOVarSet(v4, "mws_scanreq_bm", v7, 0, 0);
  if (v5)
  {
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::setSCAN_FREQ_CHANNELS(this);
      }
    }
  }

  return v5;
}

uint64_t AppleBCMWLANCore::setLTE_TDD_CHANNELS(AppleBCMWLANCore *this, unsigned int *a2)
{
  v3 = *(this + 9);
  v4 = *(v3 + 5408);
  v7[0] = v3 + 10424;
  v7[1] = 4;
  v5 = AppleBCMWLANCommander::runIOVarSet(v4, "mws_tscoex_bitmap", v7, 0, 0);
  if (v5)
  {
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::setLTE_TDD_CHANNELS(this);
      }
    }
  }

  return v5;
}

uint64_t AppleBCMWLANCore::setANTENNA_SELECTION(AppleBCMWLANCore *this, unsigned __int8 *a2)
{
  v3 = *(this + 9);
  v4 = *(v3 + 5408);
  v7[0] = v3 + 10428;
  v7[1] = 8;
  v5 = AppleBCMWLANCommander::runIOVarSet(v4, "mws_antenna_selection", v7, 0, 0);
  if (v5)
  {
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::setANTENNA_SELECTION(this);
      }
    }
  }

  return v5;
}

uint64_t AppleBCMWLANCore::setANTENNA_SELECTION_V2(AppleBCMWLANCore *this, unsigned __int8 *a2)
{
  v3 = *(this + 9);
  v4 = *(v3 + 5408);
  v7[0] = v3 + 10436;
  v7[1] = 32;
  v5 = AppleBCMWLANCommander::runIOVarSet(v4, "mws_antenna_selection_2nd", v7, 0, 0);
  if (v5)
  {
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::setANTENNA_SELECTION_V2(this);
      }
    }
  }

  return v5;
}

uint64_t AppleBCMWLANCore::setANTENNA_SELECTION_V3_WiFiEnh(AppleBCMWLANCore *this, unsigned __int8 *a2)
{
  v3 = IOMallocZeroData();
  if (v3)
  {
    v4 = v3;
    *v3 = 16875520;
    *(v3 + 4) = 4;
    *(v3 + 8) = 0x68000300000001;
    v5 = *(*(this + 9) + 10468);
    *(v3 + 16) = v5;
    switch(v5)
    {
      case 1:
        v13 = (v3 + 18);
        v14 = 8;
        v15 = 10470;
        do
        {
          *v13++ = *(*(this + 9) + v15);
          v15 += 2;
          --v14;
        }

        while (v14);
        break;
      case 2:
        v10 = (v3 + 50);
        v11 = 8;
        v12 = 10470;
        do
        {
          *v10++ = *(*(this + 9) + v12);
          v12 += 2;
          --v11;
        }

        while (v11);
        break;
      case 3:
        v6 = (v3 + 82);
        v7 = 8;
        v8 = 10470;
        do
        {
          *v6++ = *(*(this + 9) + v8);
          v8 += 2;
          --v7;
        }

        while (v7);
        break;
      default:
        if ((*(*this + 1952))(this))
        {
          (*(*this + 1952))(this);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANCore::setANTENNA_SELECTION_V3_WiFiEnh(this);
          }
        }

        break;
    }

    *(v4 + 6) = 108;
    v20[0] = v4;
    v20[1] = 116;
    v16 = (*(*this + 88))(this);
    if ((*(*v16 + 136))(v16))
    {
      v17 = AppleBCMWLANCommander::sendIOVarSet(*(*(this + 9) + 5408), "mws");
    }

    else
    {
      v17 = AppleBCMWLANCommander::runIOVarSet(*(*(this + 9) + 5408), "mws", v20, 0, 0);
    }

    v9 = v17;
    v18 = (*(*this + 1952))(this);
    if (v9)
    {
      if (v18)
      {
        (*(*this + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::setANTENNA_SELECTION_V3_WiFiEnh(this);
        }
      }
    }

    else if (v18)
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::setANTENNA_SELECTION_V3_WiFiEnh(this);
      }
    }

    IOFreeData();
  }

  else
  {
    v9 = 3758097085;
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::setANTENNA_SELECTION_V3_WiFiEnh(this);
      }
    }
  }

  return v9;
}

uint64_t AppleBCMWLANCore::setWlanRxProt(AppleBCMWLANCore *this, int *a2)
{
  v3 = *(this + 9);
  v8 = *(v3 + 10488);
  v4 = *(v3 + 5408);
  v7[0] = &v8;
  v7[1] = 4;
  v5 = AppleBCMWLANCommander::runIOVarSet(v4, "mws_wlanrx_prot", v7, 0, 0);
  if (v5)
  {
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::setWlanRxProt(this);
      }
    }
  }

  return v5;
}

uint64_t AppleBCMWLANCore::setWCI2TxInd(AppleBCMWLANCore *this, int *a2)
{
  v3 = *(this + 9);
  v8 = *(v3 + 10492);
  v4 = *(v3 + 5408);
  v7[0] = &v8;
  v7[1] = 4;
  v5 = AppleBCMWLANCommander::runIOVarSet(v4, "wci2_txind", v7, 0, 0);
  if (v5)
  {
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::setWCI2TxInd(this);
      }
    }
  }

  return v5;
}

uint64_t AppleBCMWLANCore::setScanJoinProt(AppleBCMWLANCore *this, int *a2)
{
  v3 = *(this + 9);
  v8 = *(v3 + 10496);
  v4 = *(v3 + 5408);
  v7[0] = &v8;
  v7[1] = 4;
  v5 = AppleBCMWLANCommander::runIOVarSet(v4, "mws_scanjoin_prot", v7, 0, 0);
  if (v5)
  {
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::setScanJoinProt(this);
      }
    }
  }

  return v5;
}

uint64_t AppleBCMWLANCore::setAutoProtParams(AppleBCMWLANCore *this, int *a2)
{
  v3 = *(this + 9);
  v8 = *(v3 + 10500);
  v4 = *(v3 + 5408);
  v7[0] = &v8;
  v7[1] = 8;
  v5 = AppleBCMWLANCommander::runIOVarSet(v4, "mws_autoprot_params", v7, 0, 0);
  if (v5)
  {
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::setAutoProtParams(this);
      }
    }
  }

  return v5;
}

uint64_t AppleBCMWLANCore::setMwsFrameConfig(AppleBCMWLANCore *this, unsigned __int8 *a2)
{
  v3 = *(*(this + 9) + 5408);
  v4 = 28;
  if (!a2)
  {
    v4 = 0;
  }

  v7[0] = a2;
  v7[1] = v4;
  v5 = AppleBCMWLANCommander::runIOVarSet(v3, "mws_frame_config", v7, 0, 0);
  if (v5)
  {
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::setMwsFrameConfig(this);
      }
    }
  }

  return v5;
}

uint64_t AppleBCMWLANCore::setWCI2TxEnvelopeIndEnable(AppleBCMWLANCore *this, int *a2)
{
  v3 = *(this + 9);
  v8 = *(v3 + 10508);
  v4 = *(v3 + 5408);
  v7[0] = &v8;
  v7[1] = 4;
  v5 = AppleBCMWLANCommander::runIOVarSet(v4, "wci2_tx_envelope_ind_2g", v7, 0, 0);
  if (v5)
  {
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::setWCI2TxEnvelopeIndEnable(this);
      }
    }
  }

  return v5;
}

uint64_t AppleBCMWLANCore::setWCI2TxEnvelopeIdleTimeout(AppleBCMWLANCore *this, int *a2)
{
  v3 = *(this + 9);
  v8 = *(v3 + 10510);
  v4 = *(v3 + 5408);
  v7[0] = &v8;
  v7[1] = 4;
  v5 = AppleBCMWLANCommander::runIOVarSet(v4, "mws_tx_envelope_idle_timer", v7, 0, 0);
  if (v5)
  {
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::setWCI2TxEnvelopeIdleTimeout(this);
      }
    }
  }

  return v5;
}

uint64_t AppleBCMWLANCore::setWCI2TxInd5G(AppleBCMWLANCore *this, int *a2)
{
  v3 = *(this + 9);
  v8 = *(v3 + 10512);
  v4 = *(v3 + 5408);
  v7[0] = &v8;
  v7[1] = 4;
  v5 = AppleBCMWLANCommander::runIOVarSet(v4, "wci2_txind_5g", v7, 0, 0);
  if (v5)
  {
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::setWCI2TxInd5G(this);
      }
    }
  }

  return v5;
}

uint64_t AppleBCMWLANCore::setWiFiConditionIdBitmapsWiFiEnh(AppleBCMWLANCore *this, unsigned __int8 *a2)
{
  v3 = IOMallocZeroData();
  if (v3)
  {
    *v3 = 16875520;
    *(v3 + 4) = 10;
    *(v3 + 8) = 0x18000100000001;
    *(v3 + 16) = 7;
    *(v3 + 17) = *(*(this + 9) + 10692);
    *(v3 + 18) = *(*(this + 9) + 10540);
    *(v3 + 20) = *(*(this + 9) + 10544);
    *(v3 + 22) = *(*(this + 9) + 10548);
    *(v3 + 24) = *(*(this + 9) + 10552);
    *(v3 + 26) = *(*(this + 9) + 10556);
    *(v3 + 28) = *(*(this + 9) + 10560);
    *(v3 + 30) = *(*(this + 9) + 10564);
    *(v3 + 32) = *(*(this + 9) + 10568);
    *(v3 + 34) = *(*(this + 9) + 10572);
    *(v3 + 6) = 28;
    v9[0] = v3;
    v9[1] = 36;
    v4 = (*(*this + 88))(this);
    if ((*(*v4 + 136))(v4))
    {
      v5 = AppleBCMWLANCommander::sendIOVarSet(*(*(this + 9) + 5408), "mws");
    }

    else
    {
      v5 = AppleBCMWLANCommander::runIOVarSet(*(*(this + 9) + 5408), "mws", v9, 0, 0);
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
          AppleBCMWLANCore::setWiFiConditionIdBitmapsWiFiEnh(this);
        }
      }
    }

    else if (v7)
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::setWiFiConditionIdBitmapsWiFiEnh(this);
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
        AppleBCMWLANCore::setWiFiConditionIdBitmapsWiFiEnh(this);
      }
    }
  }

  return v6;
}

uint64_t AppleBCMWLANCore::setWCI2TxDurThresh(AppleBCMWLANCore *this, int *a2)
{
  v3 = *(this + 9);
  v8 = *(v3 + 10514);
  v4 = *(v3 + 5408);
  v7[0] = &v8;
  v7[1] = 4;
  v5 = AppleBCMWLANCommander::runIOVarSet(v4, "wci2_txdur_thresh", v7, 0, 0);
  if (v5)
  {
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::setWCI2TxDurThresh(this);
      }
    }
  }

  return v5;
}

uint64_t AppleBCMWLANCore::setmwsActiveScanThrottle(AppleBCMWLANCore *this, int *a2)
{
  v3 = *(this + 9);
  v8 = *(v3 + 10516);
  v4 = *(v3 + 5408);
  v7[0] = &v8;
  v7[1] = 4;
  v5 = AppleBCMWLANCommander::runIOVarSet(v4, "mws_active_scan_throttle", v7, 0, 0);
  if (v5)
  {
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::setmwsActiveScanThrottle(this);
      }
    }
  }

  return v5;
}

uint64_t AppleBCMWLANCore::setmwsActiveScanThrottleDwellTime(AppleBCMWLANCore *this, int *a2)
{
  v3 = *(this + 9);
  v8 = *(v3 + 10520);
  v4 = *(v3 + 5408);
  v7[0] = &v8;
  v7[1] = 4;
  v5 = AppleBCMWLANCommander::runIOVarSet(v4, "mws_active_dwell_time", v7, 0, 0);
  if (v5)
  {
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::setmwsActiveScanThrottleDwellTime(this);
      }
    }
  }

  return v5;
}

uint64_t AppleBCMWLANCore::setGPIOTxEnvelopeInd(AppleBCMWLANCore *this, int *a2)
{
  v3 = *(this + 9);
  v8 = *(v3 + 10524);
  v4 = *(v3 + 5408);
  v7[0] = &v8;
  v7[1] = 4;
  v5 = AppleBCMWLANCommander::runIOVarSet(v4, "gpio_tx_envelope_ind", v7, 0, 0);
  if (v5)
  {
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::setGPIOTxEnvelopeInd(this);
      }
    }
  }

  return v5;
}

uint64_t AppleBCMWLANCore::setUCMCoexProfileV1(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  v4 = a3[1];
  *v3 = *a2;
  *(v3 + 4) = 24;
  *(v3 + 2) = v4;
  *(v3 + 6) = *(a2 + 2);
  LODWORD(v5) = *(a2 + 3);
  *(v3 + 7) = v5;
  *(v3 + 8) = *(a2 + 4);
  *(v3 + 9) = *(a2 + 5);
  *(v3 + 10) = *(a2 + 6);
  *(v3 + 11) = *(a2 + 7);
  *(v3 + 12) = *(a2 + 8);
  *(v3 + 13) = *(a2 + 9);
  *(v3 + 14) = *(a2 + 10);
  *(v3 + 15) = *(a2 + 11);
  *(v3 + 16) = *(a2 + 12);
  *(v3 + 17) = *(a2 + 13);
  *(v3 + 18) = *(a2 + 14);
  *(v3 + 19) = *(a2 + 15);
  *(v3 + 20) = *(a2 + 16);
  *(v3 + 21) = *(a2 + 17);
  *(v3 + 22) = *(a2 + 18);
  if (v5)
  {
    if (v5 >= 5)
    {
      v5 = 5;
    }

    else
    {
      v5 = v5;
    }

    v6 = (a2 + 23);
    v7 = (v3 + 27);
    do
    {
      *(v7 - 3) = 8;
      *(v7 - 1) = *(v6 - 3);
      v8 = *v6;
      v6 = (v6 + 7);
      *v7 = v8;
      v7 += 2;
      --v5;
    }

    while (v5);
  }

  return 0;
}

uint64_t AppleBCMWLANCore::setUCMCoexProfileV2(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  v4 = a3[1];
  *v3 = *a2;
  *(v3 + 4) = 24;
  *(v3 + 2) = v4;
  *(v3 + 6) = *(a2 + 2);
  LODWORD(v5) = *(a2 + 3);
  *(v3 + 7) = v5;
  *(v3 + 8) = *(a2 + 4);
  *(v3 + 9) = *(a2 + 5);
  *(v3 + 10) = *(a2 + 6);
  *(v3 + 11) = *(a2 + 7);
  *(v3 + 12) = *(a2 + 8);
  *(v3 + 13) = *(a2 + 9);
  *(v3 + 14) = *(a2 + 10);
  *(v3 + 15) = *(a2 + 11);
  *(v3 + 16) = *(a2 + 12);
  *(v3 + 17) = *(a2 + 13);
  *(v3 + 18) = *(a2 + 14);
  *(v3 + 19) = *(a2 + 15);
  *(v3 + 20) = *(a2 + 16);
  *(v3 + 21) = *(a2 + 17);
  *(v3 + 22) = *(a2 + 18);
  *(v3 + 23) = *(a2 + 19);
  if (v5)
  {
    if (v5 >= 5)
    {
      v5 = 5;
    }

    else
    {
      v5 = v5;
    }

    v6 = (a2 + 23);
    v7 = (v3 + 27);
    do
    {
      *(v7 - 3) = 8;
      *(v7 - 1) = *(v6 - 3);
      v8 = *v6;
      v6 = (v6 + 7);
      *v7 = v8;
      v7 += 2;
      --v5;
    }

    while (v5);
  }

  return 0;
}

uint64_t AppleBCMWLANCore::setUCMCoexProfileV3(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  v4 = a3[1];
  *v3 = *a2;
  *(v3 + 4) = 24;
  *(v3 + 2) = v4;
  *(v3 + 6) = *(a2 + 2);
  LODWORD(v5) = *(a2 + 3);
  *(v3 + 7) = v5;
  *(v3 + 8) = *(a2 + 4);
  *(v3 + 9) = *(a2 + 5);
  *(v3 + 10) = *(a2 + 6);
  *(v3 + 11) = *(a2 + 7);
  *(v3 + 12) = *(a2 + 8);
  *(v3 + 13) = *(a2 + 9);
  *(v3 + 14) = *(a2 + 10);
  *(v3 + 15) = *(a2 + 11);
  *(v3 + 16) = *(a2 + 12);
  *(v3 + 17) = *(a2 + 13);
  *(v3 + 18) = *(a2 + 14);
  *(v3 + 19) = *(a2 + 15);
  *(v3 + 20) = *(a2 + 16);
  *(v3 + 21) = *(a2 + 17);
  *(v3 + 22) = *(a2 + 18);
  *(v3 + 23) = *(a2 + 19);
  if (v5)
  {
    if (v5 >= 5)
    {
      v5 = 5;
    }

    else
    {
      v5 = v5;
    }

    v6 = a2 + 26;
    v7 = v3 + 31;
    do
    {
      *(v7 - 7) = 8;
      *(v7 - 5) = *(v6 - 5);
      *(v7 - 1) = *(v6 - 1);
      v6 += 7;
      v7 += 8;
      --v5;
    }

    while (v5);
  }

  return 0;
}

uint64_t AppleBCMWLANCore::setBTCOEX_PROFILE(uint64_t *a1, unsigned __int16 *a2)
{
  if (!a2)
  {
    goto LABEL_27;
  }

  if (*(a2 + 3) > 4u)
  {
    goto LABEL_27;
  }

  v4 = *a2;
  if ((v4 - 4) < 0xFFFFFFFD || *(a2 + 4) > 9uLL)
  {
    goto LABEL_27;
  }

  v5 = a1[9] + 56 * *(a2 + 4) + 8914;
  v6 = *a2;
  v7 = *(a2 + 1);
  v8 = *(a2 + 2);
  *(v5 + 48) = *(a2 + 6);
  *(v5 + 16) = v7;
  *(v5 + 32) = v8;
  *v5 = v6;
  v9 = 8 * *(a2 + 3) + 24;
  AppleBCMWLANCommander::getMaxCmdRxPayload(*(a1[9] + 5408));
  v10 = IOMallocZeroData();
  v21 = IOMallocZeroData();
  v22 = v9;
  v23 = 0xAAAAAAAA00000004;
  v11 = -536870211;
  if (!v21)
  {
LABEL_22:
    if (!v10)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

  if (!v10)
  {
    goto LABEL_21;
  }

  v12 = *a1;
  if (v4 == 2)
  {
    (v12)[208](a1, a2, &v21);
  }

  else if (v4 == 1)
  {
    (v12)[207](a1, a2, &v21);
  }

  else
  {
    (v12)[209](a1, a2, &v21);
  }

  v13 = v21;
  if (v21)
  {
    v14 = v22;
  }

  else
  {
    v14 = 0;
  }

  if (!v22)
  {
    v13 = 0;
  }

  v20[0] = v13;
  v20[1] = v14;
  MaxCmdRxPayload = AppleBCMWLANCommander::getMaxCmdRxPayload(*(a1[9] + 5408));
  v16 = (AppleBCMWLANCommander::getMaxCmdRxPayload(*(a1[9] + 5408)) << 32) | MaxCmdRxPayload;
  if (MaxCmdRxPayload)
  {
    v17 = v10;
  }

  else
  {
    v16 = 0;
    v17 = 0;
  }

  v19[0] = v17;
  v19[1] = v16;
  v11 = AppleBCMWLANCommander::runIOVarSet(*(a1[9] + 5408), "btc_profile", v20, v19, 0);
  if (v21)
  {
LABEL_21:
    IOFreeData();
    goto LABEL_22;
  }

LABEL_23:
  IOFreeData();
LABEL_24:
  if (v11)
  {
LABEL_27:
    AppleBCMWLANCore::setBTCOEX_PROFILE(a1);
    return v21;
  }

  return 0;
}

uint64_t AppleBCMWLANCore::setRANGING_ENABLE(uint64_t *a1, uint64_t a2)
{
  v18 = 0xAAAAAAAAAAAAAAAALL;
  v19 = 0xAAAAAAAAAAAAAAAALL;
  v23 = 0xAAAAAAAAAAAAAAAALL;
  v17[0] = a1;
  v17[1] = AppleBCMWLANCore::setRangingAsyncCallBack;
  v17[2] = 0;
  if (!a2)
  {
    return 3758096385;
  }

  v3 = (a2 + 4);
  if (*(a2 + 4))
  {
    v4 = 2;
  }

  else if (*(a1[9] + 18414) == 1)
  {
    if ((*(*a1 + 1952))(a1))
    {
      (*(*a1 + 1952))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::setRANGING_ENABLE(a1);
      }
    }

    memcpy(__dst, &unk_1003AF9D0, sizeof(__dst));
    __dst[0] = 1;
    (*(*a1 + 1704))(a1, __dst);
    if (*v3)
    {
      v4 = 2;
    }

    else
    {
      v4 = 3;
    }
  }

  else
  {
    v4 = 3;
  }

  v20 = 1180416;
  v21 = v4;
  v22 = 4;
  LOBYTE(v23) = 1;
  *(&v23 + 2) = 0;
  if (IO80211SkywalkInterface::getInterfaceId(*(a1[9] + 11296)) == -1 || IO80211SkywalkInterface::getInterfaceId(*(a1[9] + 11296)) >= 0xC)
  {
    if ((*(*a1 + 1952))(a1))
    {
      (*(*a1 + 1952))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::setRANGING_ENABLE(a1);
      }
    }

    return 3758096385;
  }

  v18 = &v20;
  v19 = 18;
  v5 = a1[9];
  v6 = *(v5 + 5408);
  InterfaceId = IO80211SkywalkInterface::getInterfaceId(*(v5 + 11296));
  v8 = AppleBCMWLANCommander::sendVirtualIOVarSet(v6, InterfaceId, "proxd", &v18, kNoRxExpected, v17, 0);
  if (v8)
  {
    if ((*(*a1 + 1952))(a1))
    {
      (*(*a1 + 1952))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::setRANGING_ENABLE(a1, a1 & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000, v3, v8);
      }
    }
  }

  if (IO80211SkywalkInterface::getInterfaceId(*(a1[9] + 11296)) == -1 || IO80211SkywalkInterface::getInterfaceId(*(a1[9] + 11296)) >= 0xC)
  {
    if ((*(*a1 + 1952))(a1))
    {
      (*(*a1 + 1952))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::setRANGING_ENABLE(a1);
      }
    }

    return 3758096385;
  }

  if (!*v3)
  {
    v16 = 0;
    v10 = (*(*a1 + 88))(a1);
    v11 = (*(*v10 + 136))(v10);
    v12 = a1[9];
    v13 = *(v12 + 5408);
    v14 = IO80211SkywalkInterface::getInterfaceId(*(v12 + 11296));
    __dst[0] = &v16;
    __dst[1] = 4;
    if (v11)
    {
      v15 = AppleBCMWLANCommander::sendVirtualIOVarSet(v13, v14, "wsec", __dst, kNoRxExpected, v17, 0);
    }

    else
    {
      v15 = AppleBCMWLANCommander::runVirtualIOVarSet(v13, v14, "wsec", __dst, 0, 0);
    }

    v8 = v15;
  }

  if ((*(*a1 + 1952))(a1))
  {
    (*(*a1 + 1952))(a1);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::setRANGING_ENABLE(a1);
    }
  }

  return v8;
}

uint64_t AppleBCMWLANCore::setRANGING_START_V3(uint64_t *a1, uint64_t a2)
{
  v3 = a1 + 9;
  v2 = a1[9];
  v4 = *(v2 + 780);
  v44[0] = a1;
  v44[1] = AppleBCMWLANCore::setRangingAsyncCallBack;
  v44[2] = 0;
  if (!a2)
  {
    return 3758096385;
  }

  if (IO80211SkywalkInterface::getInterfaceId(*(v2 + 11296)) == -1 || IO80211SkywalkInterface::getInterfaceId(*(*v3 + 11296)) == 255)
  {
    if ((*(*a1 + 1952))(a1))
    {
      (*(*a1 + 1952))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::setRANGING_START_V3(a1);
      }
    }

    return 3758096385;
  }

  if ((*(*a1 + 1952))(a1))
  {
    (*(*a1 + 1952))(a1);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::setRANGING_START_V3(a1);
    }
  }

  atomic_fetch_and((*v3 + 10376), 0xFFFBFFFF);
  if (!*(a2 + 4))
  {
    *(v46 + 2) = 1;
    v45 = 0x4001300120300;
    LOWORD(v46[0]) = 0;
    v24 = *(*v3 + 5408);
    InterfaceId = IO80211SkywalkInterface::getInterfaceId(*(*v3 + 11296));
    v42 = &v45;
    v43 = 18;
    AppleBCMWLANCommander::sendVirtualIOVarSet(v24, InterfaceId, "proxd", &v42, kNoRxExpected, v44, 0);
    *(v46 + 2) = 1;
    v45 = 0x4000800120300;
    LOWORD(v46[0]) = 1;
    v26 = *(*v3 + 5408);
    v27 = IO80211SkywalkInterface::getInterfaceId(*(*v3 + 11296));
    v42 = &v45;
    v43 = 18;
    AppleBCMWLANCommander::sendVirtualIOVarSet(v26, v27, "proxd", &v42, kNoRxExpected, v44, 0);
    return 0;
  }

  if (!*(a2 + 20))
  {
    return 3758096385;
  }

  v9 = IOMallocZeroData();
  *v9 = 0x40004005C0300;
  *(v9 + 8) = 1;
  *(v9 + 10) = 1;
  v10 = *(a1[9] + 1032);
  v11 = *(a2 + 58);
  if (v11 == 80)
  {
    v10 = 4;
  }

  if (v11 == 40)
  {
    v10 = 3;
  }

  if (v11 == 20)
  {
    v10 = 2;
  }

  LODWORD(v42) = v10;
  v12 = *(a2 + 56);
  if (v12 >= 0xF)
  {
    v13 = 3;
  }

  else
  {
    v13 = 0;
  }

  ChanSpec = AppleBCMWLANCore::getChanSpec(a1, v12, v13, &v42);
  *(v9 + 12) = 262147;
  *(v9 + 16) = ChanSpec;
  *(v9 + 20) = 393234;
  v15 = *(a2 + 54);
  *(v9 + 24) = *(a2 + 50);
  *(v9 + 28) = v15;
  *(v9 + 32) = 262170;
  if (*(a2 + 144) == 4)
  {
    v16 = 163941;
  }

  else
  {
    v16 = 163937;
  }

  *(v9 + 36) = v16;
  *(v9 + 40) = 262169;
  if (*(a2 + 128))
  {
    v17 = v16;
  }

  else
  {
    v17 = v16 & 0xFFFF803F;
  }

  *(v9 + 44) = v17;
  v18 = *(a2 + 136);
  if (!*(a2 + 136))
  {
    v18 = 500;
  }

  *(v9 + 56) = 2;
  *(v9 + 48) = 524303;
  *(v9 + 52) = v18;
  v19 = *(a2 + 138);
  if (!*(a2 + 138))
  {
    v19 = 128;
  }

  *(v9 + 68) = 2;
  *(v9 + 60) = 524294;
  *(v9 + 64) = v19;
  *(v9 + 72) = 0xA00080007;
  *(v9 + 80) = 2;
  v20 = *(a2 + 130);
  if (!*(a2 + 130))
  {
    v20 = 3;
  }

  *(v9 + 84) = 131082;
  *(v9 + 88) = v20;
  if ((*(*a1 + 1952))(a1))
  {
    (*(*a1 + 1952))(a1);
    if (CCLogStream::shouldLog())
    {
      v39 = (*(*a1 + 1952))(a1);
      CCLogStream::logNotice(v39, "[dk] %s@%d:Ranging config session=%d for %02X:%02X:%02X:%02X:%02X:%02X on chanspec 0x%x flagsMask=0x%x\n", "setRANGING_START_V3", 37944, *(v9 + 8), *(a2 + 50), *(a2 + 51), *(a2 + 52), *(a2 + 53), *(a2 + 54), *(a2 + 55), ChanSpec, v16);
    }
  }

  v21 = *(*v3 + 5408);
  v22 = IO80211SkywalkInterface::getInterfaceId(*(*v3 + 11296));
  v45 = v9;
  v46[0] = 92;
  v23 = AppleBCMWLANCommander::sendVirtualIOVarSet(v21, v22, "proxd", &v45, kNoRxExpected, v44, 0);
  if (v23)
  {
    v7 = v23;
    if ((*(*a1 + 1952))(a1))
    {
      (*(*a1 + 1952))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::setRANGING_START_V3(a1);
      }
    }
  }

  else
  {
    v28 = IOMallocZeroData();
    v29 = v28;
    *v28 = 768;
    if (v28)
    {
      v30 = 22;
    }

    else
    {
      v30 = 0;
    }

    *(v28 + 2) = v30;
    *(v28 + 4) = 262162;
    *(v28 + 8) = 0;
    *(v28 + 10) = 1;
    *(v28 + 12) = 0x1000100040207;
    if (v4 <= 5 && (v40 = 1, v41 = 64, v31 = *(*v3 + 5408), v32 = IO80211SkywalkInterface::getInterfaceId(*(*v3 + 11296)), v45 = &v40, v46[0] = 3, v33 = AppleBCMWLANCommander::sendVirtualIOVarSet(v31, v32, "awdl_ftm_ranging_config", &v45, kNoRxExpected, v44, 0), v33))
    {
      v7 = v33;
      if ((*(*a1 + 1952))(a1))
      {
        (*(*a1 + 1952))(a1);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::setRANGING_START_V3(a1);
        }
      }
    }

    else
    {
      v34 = *(*v3 + 5408);
      v35 = IO80211SkywalkInterface::getInterfaceId(*(*v3 + 11296));
      v45 = v29;
      v46[0] = 22;
      v36 = AppleBCMWLANCommander::sendVirtualIOVarSet(v34, v35, "proxd", &v45, kNoRxExpected, v44, 0);
      if (v36)
      {
        v7 = v36;
        if ((*(*a1 + 1952))(a1))
        {
          (*(*a1 + 1952))(a1);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANCore::setRANGING_START_V3(a1);
          }
        }
      }

      else
      {
        atomic_fetch_or((a1[9] + 10376), 0x40000u);
        v37 = *(a2 + 60);
        *(a1[9] + 31080) = (v37 & 2) != 0;
        *(a1[9] + 31081) = (v37 & 4) != 0;
        if ((*(*a1 + 1952))(a1))
        {
          (*(*a1 + 1952))(a1);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANCore::setRANGING_START_V3(a1);
          }
        }

        v38 = *v3;
        if ((~*(a2 + 60) & 0x30) != 0 && *(v38 + 977) != 1)
        {
          v7 = 0;
          *(v38 + 36088) = 0;
        }

        else
        {
          v7 = 0;
          *(v38 + 36088) = 1;
        }
      }
    }

    IOFreeData();
  }

  IOFreeData();
  return v7;
}

uint64_t AppleBCMWLANCore::getChanSpec(uint64_t a1, unsigned int a2, int *a3)
{
  if (a2 >= 0xF)
  {
    v4 = 3;
  }

  else
  {
    v4 = 0;
  }

  return AppleBCMWLANCore::getChanSpec(a1, a2, v4, a3);
}

uint64_t AppleBCMWLANCore::setRANGING_START_V4(uint64_t *a1, uint64_t a2)
{
  v36[0] = a1;
  v36[1] = AppleBCMWLANCore::setRangingAsyncCallBack;
  v36[2] = 0;
  if (!a2)
  {
    return 3758096385;
  }

  v4 = a1 + 9;
  if (IO80211SkywalkInterface::getInterfaceId(*(a1[9] + 11296)) == -1 || IO80211SkywalkInterface::getInterfaceId(*(*v4 + 11296)) == 255)
  {
    if ((*(*a1 + 1952))(a1))
    {
      (*(*a1 + 1952))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::setRANGING_START_V4(a1);
      }
    }

    return 3758096385;
  }

  if ((*(*a1 + 1952))(a1))
  {
    (*(*a1 + 1952))(a1);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::setRANGING_START_V4(a1);
    }
  }

  atomic_fetch_and((*v4 + 10376), 0xFFFBFFFF);
  if (!*(a2 + 4))
  {
    *(v38 + 2) = 1;
    v37 = 0x4001300120400;
    LOWORD(v38[0]) = 0;
    v22 = *(*v4 + 5408);
    InterfaceId = IO80211SkywalkInterface::getInterfaceId(*(*v4 + 11296));
    v34 = &v37;
    v35 = 18;
    AppleBCMWLANCommander::sendVirtualIOVarSet(v22, InterfaceId, "proxd", &v34, kNoRxExpected, v36, 0);
    *(v38 + 2) = 1;
    v37 = 0x4000800120400;
    LOWORD(v38[0]) = 1;
    v24 = *(*v4 + 5408);
    v25 = IO80211SkywalkInterface::getInterfaceId(*(*v4 + 11296));
    v34 = &v37;
    v35 = 18;
    AppleBCMWLANCommander::sendVirtualIOVarSet(v24, v25, "proxd", &v34, kNoRxExpected, v36, 0);
    return 0;
  }

  if (!*(a2 + 20))
  {
    return 3758096385;
  }

  v7 = IOMallocZeroData();
  *v7 = 0x4000400640400;
  *(v7 + 8) = 1;
  *(v7 + 10) = 1;
  v8 = *(a1[9] + 1032);
  v9 = *(a2 + 58);
  if (v9 == 80)
  {
    v8 = 4;
  }

  if (v9 == 40)
  {
    v8 = 3;
  }

  if (v9 == 20)
  {
    v8 = 2;
  }

  LODWORD(v34) = v8;
  v10 = *(a2 + 56);
  if (v10 >= 0xF)
  {
    v11 = 3;
  }

  else
  {
    v11 = 0;
  }

  ChanSpec = AppleBCMWLANCore::getChanSpec(a1, v10, v11, &v34);
  *(v7 + 12) = 262147;
  *(v7 + 16) = ChanSpec;
  *(v7 + 20) = 393234;
  v13 = *(a2 + 54);
  *(v7 + 24) = *(a2 + 50);
  *(v7 + 28) = v13;
  *(v7 + 32) = 524314;
  if (*(a2 + 144) == 4)
  {
    v14 = 163941;
  }

  else
  {
    v14 = 163937;
  }

  *(v7 + 36) = v14;
  *(v7 + 44) = 524313;
  if (*(a2 + 128))
  {
    v15 = v14;
  }

  else
  {
    v15 = v14 & 0x3803F;
  }

  *(v7 + 48) = v15;
  v16 = *(a2 + 136);
  if (!*(a2 + 136))
  {
    v16 = 500;
  }

  *(v7 + 64) = 2;
  *(v7 + 56) = 524303;
  *(v7 + 60) = v16;
  v17 = *(a2 + 138);
  if (!*(a2 + 138))
  {
    v17 = 128;
  }

  *(v7 + 76) = 2;
  *(v7 + 68) = 524294;
  *(v7 + 72) = v17;
  *(v7 + 80) = 0xA00080007;
  *(v7 + 88) = 2;
  v18 = *(a2 + 130);
  if (!*(a2 + 130))
  {
    v18 = 3;
  }

  *(v7 + 92) = 131082;
  *(v7 + 96) = v18;
  if ((*(*a1 + 1952))(a1))
  {
    (*(*a1 + 1952))(a1);
    if (CCLogStream::shouldLog())
    {
      v33 = (*(*a1 + 1952))(a1);
      CCLogStream::logNotice(v33, "[dk] %s@%d:Ranging config session=%d for %02X:%02X:%02X:%02X:%02X:%02X on chanspec 0x%x flagsMask=0x%llx\n", "setRANGING_START_V4", 38200, *(v7 + 8), *(a2 + 50), *(a2 + 51), *(a2 + 52), *(a2 + 53), *(a2 + 54), *(a2 + 55), ChanSpec, v14);
    }
  }

  v19 = *(*v4 + 5408);
  v20 = IO80211SkywalkInterface::getInterfaceId(*(*v4 + 11296));
  v37 = v7;
  v38[0] = 100;
  v21 = AppleBCMWLANCommander::sendVirtualIOVarSet(v19, v20, "proxd", &v37, kNoRxExpected, v36, 0);
  if (v21)
  {
    v5 = v21;
    if ((*(*a1 + 1952))(a1))
    {
      (*(*a1 + 1952))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::setRANGING_START_V4(a1);
      }
    }
  }

  else
  {
    v26 = IOMallocZeroData();
    v27 = v26;
    if (v26)
    {
      v28 = 22;
    }

    else
    {
      v28 = 0;
    }

    *v26 = 1024;
    *(v26 + 2) = v28;
    *(v26 + 4) = 262162;
    *(v26 + 8) = 0;
    *(v26 + 10) = 1;
    *(v26 + 12) = 0x1000100040207;
    v29 = *(*v4 + 5408);
    v30 = IO80211SkywalkInterface::getInterfaceId(*(*v4 + 11296));
    v37 = v27;
    v38[0] = v28;
    v5 = AppleBCMWLANCommander::sendVirtualIOVarSet(v29, v30, "proxd", &v37, kNoRxExpected, v36, 0);
    if (v5)
    {
      if ((*(*a1 + 1952))(a1))
      {
        (*(*a1 + 1952))(a1);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::setRANGING_START_V4(a1);
        }
      }
    }

    else
    {
      atomic_fetch_or((a1[9] + 10376), 0x40000u);
      v31 = *(a2 + 60);
      *(a1[9] + 31080) = (v31 & 2) != 0;
      *(a1[9] + 31081) = (v31 & 4) != 0;
      if ((*(*a1 + 1952))(a1))
      {
        (*(*a1 + 1952))(a1);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::setRANGING_START_V4(a1);
        }
      }

      v32 = *v4;
      *(v32 + 36088) = (~*(a2 + 60) & 0x30) == 0 || *(v32 + 977) == 1;
    }

    IOFreeData();
  }

  IOFreeData();
  return v5;
}

uint64_t AppleBCMWLANCore::setRANGING_START(uint64_t *a1, uint64_t a2)
{
  v3 = (a2 + 4);
  v4 = a1[9];
  if (*(v4 + 18414) == (*(a2 + 4) != 0))
  {
    v5 = 3758097090;
    if ((*(*a1 + 1952))(a1))
    {
      (*(*a1 + 1952))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::setRANGING_START(a1);
      }
    }
  }

  else
  {
    if (*(v4 + 780) > 0x10u)
    {
      v6 = AppleBCMWLANCore::setRANGING_START_V4(a1, a2);
    }

    else
    {
      v6 = AppleBCMWLANCore::setRANGING_START_V3(a1, a2);
    }

    v5 = v6;
    if (!v6)
    {
      *(a1[9] + 18414) = *v3 != 0;
    }
  }

  return v5;
}

uint64_t AppleBCMWLANCore::setRANGING_AUTHENTICATE(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v52 = 12;
  v51 = 128;
  if (a3 && *(a3 + 112))
  {
    if (IO80211SkywalkInterface::getInterfaceId(*(a1[9] + 11296)) == -1 || IO80211SkywalkInterface::getInterfaceId(*(a1[9] + 11296)) == 255)
    {
      if ((*(*a1 + 1952))(a1))
      {
        (*(*a1 + 1952))(a1);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::setRANGING_AUTHENTICATE(a1);
        }
      }

      return 3758096385;
    }

    v50[0] = a1;
    v50[1] = AppleBCMWLANCore::setRangingAsyncCallBack;
    v50[2] = 0;
    if (*(a1[9] + 780) >= 0x11u)
    {
      v8 = 36;
    }

    else
    {
      v8 = 28;
    }

    v9 = IOMallocZeroData();
    v10 = v9;
    if (*(a1[9] + 780) > 0x10u)
    {
      *v9 = 1024;
      *(v9 + 2) = v8;
      *(v9 + 4) = 262148;
      *(v9 + 8) = 0;
      *(v9 + 10) = 1;
      *(v9 + 12) = 17;
      *(v9 + 16) = 1024;
      *(v9 + 24) = 524290;
      v11 = 8;
      *(v9 + 28) = 1024;
    }

    else
    {
      *v9 = 768;
      *(v9 + 2) = v8;
      *(v9 + 4) = 262148;
      *(v9 + 10) = 1;
      *(v9 + 12) = 17;
      *(v9 + 16) = 0x4000200000400;
      *(v9 + 24) = 1024;
      v11 = 4;
      *(v9 + 8) = 0;
    }

    *(v9 + 14) = v11;
    v12 = (*(*a1 + 88))(a1);
    v13 = (*(*v12 + 136))(v12);
    v14 = a1[9];
    v15 = *(v14 + 5408);
    InterfaceId = IO80211SkywalkInterface::getInterfaceId(*(v14 + 11296));
    v53[0] = v10;
    v53[1] = v8;
    if (v13)
    {
      v17 = AppleBCMWLANCommander::sendVirtualIOVarSet(v15, InterfaceId, "proxd", v53, kNoRxExpected, v50, 0);
    }

    else
    {
      v17 = AppleBCMWLANCommander::runVirtualIOVarSet(v15, InterfaceId, "proxd", v53, 0, 0);
    }

    v6 = v17;
    v18 = *a1;
    if (v17)
    {
      if ((*(v18 + 1952))(a1))
      {
        (*(*a1 + 1952))(a1);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::setRANGING_AUTHENTICATE(a1);
        }
      }

      goto LABEL_58;
    }

    v19 = (*(v18 + 88))(a1);
    v20 = (*(*v19 + 136))(v19);
    v21 = a1[9];
    v22 = *(v21 + 5408);
    v23 = IO80211SkywalkInterface::getInterfaceId(*(v21 + 11296));
    v53[0] = &v52;
    v53[1] = 4;
    if (v20)
    {
      v24 = AppleBCMWLANCommander::sendVirtualIOVarSet(v22, v23, "wsec", v53, kNoRxExpected, v50, 0);
    }

    else
    {
      v24 = AppleBCMWLANCommander::runVirtualIOVarSet(v22, v23, "wsec", v53, 0, 0);
    }

    v6 = v24;
    v25 = *a1;
    if (v24)
    {
      if ((*(v25 + 1952))(a1))
      {
        (*(*a1 + 1952))(a1);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::setRANGING_AUTHENTICATE(a1, a1 & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000, &v52, v6);
        }
      }

      goto LABEL_58;
    }

    v26 = (*(v25 + 88))(a1);
    v27 = (*(*v26 + 136))(v26);
    v28 = a1[9];
    v29 = *(v28 + 5408);
    v30 = IO80211SkywalkInterface::getInterfaceId(*(v28 + 11296));
    v53[0] = &v51;
    v53[1] = 4;
    if (v27)
    {
      v31 = AppleBCMWLANCommander::sendVirtualIOCtlSet(v29, v30, 165, v53, kNoRxExpected, v50, 0);
    }

    else
    {
      v31 = AppleBCMWLANCommander::runVirtualIOCtlSet(v29, v30, 165, v53, 0, 0);
    }

    v6 = v31;
    if (v31)
    {
      if ((*(*a1 + 1952))(a1))
      {
        (*(*a1 + 1952))(a1);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::setRANGING_AUTHENTICATE(a1, a1 & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000, &v51, v6);
        }
      }

      goto LABEL_58;
    }

    v32 = *(a3 + 112);
    v33 = IOMallocZeroData();
    if (!v33)
    {
      v6 = 3758097085;
LABEL_58:
      IOFreeData();
      return v6;
    }

    v34 = v33;
    *(v33 + 2) = v32 + 32;
    *(v33 + 4) = 0x100000002;
    v35 = *(a3 + 4) - 2;
    v36 = 1;
    if (v35 <= 2)
    {
      v36 = dword_1003B05F4[v35];
    }

    *(v33 + 12) = v36;
    v37 = *(a3 + 34);
    *(v33 + 20) = *(a3 + 38);
    *(v33 + 16) = v37;
    *(v33 + 24) = 1;
    *(v33 + 26) = v32;
    memcpy((v33 + 28), (a3 + 48), v32);
    v38 = (*(*a1 + 88))(a1);
    v39 = (*(*v38 + 136))(v38);
    v40 = a1[9];
    v41 = *(v40 + 5408);
    v42 = IO80211SkywalkInterface::getInterfaceId(*(v40 + 11296));
    if (v32 == 0xFFE0)
    {
      v43 = 0;
    }

    else
    {
      v43 = v34;
    }

    v53[0] = v43;
    v53[1] = (v32 + 32);
    if (v39)
    {
      v44 = AppleBCMWLANCommander::sendVirtualIOVarSet(v41, v42, "ptk_start", v53, kNoRxExpected, v50, 0);
    }

    else
    {
      v44 = AppleBCMWLANCommander::runVirtualIOVarSet(v41, v42, "ptk_start", v53, 0, 0);
    }

    v6 = v44;
    v45 = (*(*a1 + 1952))(a1);
    if (v6)
    {
      if (v45)
      {
        (*(*a1 + 1952))(a1);
        if (CCLogStream::shouldLog())
        {
          v46 = (*(*a1 + 1952))(a1);
          v47 = (*(*a1 + 112))(a1, v6);
          CCLogStream::logAlert(v46, "[dk] %s@%d: Failure to start ranging authentication: %s for %02X:%02X:%02X:%02X:%02X:%02X, role %d, pmkLen %d\n", "setRANGING_AUTHENTICATE", 38466, v47, *(a3 + 34), *(a3 + 35), *(a3 + 36), *(a3 + 37), *(a3 + 38), *(a3 + 39), *(v34 + 12), v32);
        }
      }

      goto LABEL_57;
    }

    if (v45 && ((*(*a1 + 1952))(a1), CCLogStream::shouldLog()))
    {
      v49 = (*(*a1 + 1952))(a1);
      CCLogStream::logNotice(v49, "[dk] %s@%d:Ranging authentication pmk-length=%d role=%d for %02X:%02X:%02X:%02X:%02X:%02X\n", "setRANGING_AUTHENTICATE", 38472, v32, *(v34 + 12), *(a3 + 34), *(a3 + 35), *(a3 + 36), *(a3 + 37), *(a3 + 38), *(a3 + 39));
      if (a2)
      {
        goto LABEL_54;
      }
    }

    else if (a2)
    {
LABEL_54:
      if (*(a3 + 4) == 4)
      {
        *(v53 + 4) = 0uLL;
        LODWORD(v53[0]) = 1;
        HIDWORD(v53[1]) = *(a3 + 34);
        LOWORD(v53[2]) = *(a3 + 38);
        v48 = *(a1[9] + 11288);
        if (v48)
        {
          IO80211Controller::postMessage(a1, v48, 0x54u, v53, 0x14uLL, 1);
        }
      }
    }

LABEL_57:
    IOFreeData();
    goto LABEL_58;
  }

  return 3758096385;
}

uint64_t AppleBCMWLANCore::HandleShutdownGated(AppleBCMWLANCore *this)
{
  if ((*(*this + 1952))(this))
  {
    (*(*this + 1952))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::HandleShutdownGated(this);
    }
  }

  v2 = 1;
  *(*(this + 9) + 18412) = 1;
  atomic_compare_exchange_strong((*(this + 9) + 4400), &v2, 0);
  if (v2 == 1)
  {
    IOService::AdjustBusy(this, -1, 0);
    v5 = 0;
    IOService::GetBusyState(this, &v5, 0);
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::HandleShutdownGated(this);
      }
    }

    v4 = *(*(this + 9) + 4400);
    io80211_os_log();
  }

  AppleBCMWLANCommander::pause(*(*(this + 9) + 5408));
  atomic_fetch_or((*(this + 9) + 10376), 0x2000u);
  AppleBCMWLANCore::halt(this);
  return 0;
}

uint64_t AppleBCMWLANCore::SetPowerState_Impl(IOService *this, uint32_t a2)
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x2000000000;
  v19 = -1431655766;
  v4 = this[1].OSObject::OSObjectInterface::__vftable;
  init = v4[344].init;
  if (init)
  {
    AppleBCMWLANIOReportingCore::reportSystemPowerState(init, 0, a2 == 2, 1, v4[2228].free);
  }

  if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this))
  {
    (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::SetPowerState_Impl(this);
    }
  }

  v6 = (*(*this[1].OSObject::OSObjectInterface::__vftable[1941].free + 168))(this[1].OSObject::OSObjectInterface::__vftable[1941].free);
  block[0] = _NSConcreteStackBlock;
  block[1] = 1107296256;
  block[2] = ___ZN16AppleBCMWLANCore18SetPowerState_ImplEj_block_invoke;
  block[3] = &__block_descriptor_tmp_2282;
  block[4] = &v16;
  block[5] = this;
  v15 = a2;
  IODispatchQueue::DispatchSync(v6, block);
  if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this))
  {
    (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::SetPowerState_Impl(this);
    }
  }

  free = this[1].OSObject::OSObjectInterface::__vftable[1941].free;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 0x40000000;
  v12[2] = ___ZN16AppleBCMWLANCore18SetPowerState_ImplEj_block_invoke_2284;
  v12[3] = &__block_descriptor_tmp_2286;
  v12[4] = this;
  v13 = a2;
  (*(*free + 112))(free, v12);
  v8 = IOService::SetPowerState(this, a2, &IO80211Controller::_Dispatch);
  *(v17 + 6) = v8;
  v9 = this[1].OSObject::OSObjectInterface::__vftable;
  v10 = v9[344].init;
  if (v10)
  {
    AppleBCMWLANIOReportingCore::reportSystemPowerState(v10, 0, a2 == 2, 1, v9[2228].free);
    v8 = *(v17 + 6);
  }

  _Block_object_dispose(&v16, 8);
  return v8;
}

AppleBCMWLANIOReportingCore *AppleBCMWLANCore::reportSystemPowerState(AppleBCMWLANCore *this, unint64_t *a2, int a3, int a4)
{
  v4 = *(this + 9);
  result = *(v4 + 5504);
  if (result)
  {
    return AppleBCMWLANIOReportingCore::reportSystemPowerState(result, a2, a3, a4, *(v4 + 35656));
  }

  return result;
}

uint64_t ___ZN16AppleBCMWLANCore18SetPowerState_ImplEj_block_invoke(uint64_t a1)
{
  result = AppleBCMWLANCore::SetPowerStateGated(*(a1 + 40), *(a1 + 48));
  *(*(*(a1 + 32) + 8) + 24) = 0;
  return result;
}

uint64_t AppleBCMWLANCore::SetPowerStateGated(AppleBCMWLANCore *this, int a2)
{
  v4 = this & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000;
  if ((*(*this + 1952))(this))
  {
    (*(*this + 1952))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::SetPowerStateGated(this, v4, a2);
    }
  }

  v5 = *(this + 9);
  v6 = *(v5 + 10376);
  if ((v6 & 0x30) == 0x20)
  {
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::SetPowerStateGated(this);
      }
    }
  }

  else if (a2 == 2)
  {
    if (v6)
    {
      if ((*(*this + 1952))(this))
      {
        (*(*this + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::SetPowerStateGated(this);
        }
      }
    }

    else
    {
      atomic_fetch_or((v5 + 10376), 1u);
      AppleBCMWLANCore::powerOnSystem(this);
    }
  }

  else if (a2)
  {
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::SetPowerStateGated(this);
      }
    }
  }

  else if (v6)
  {
    removePropertyHelper(this, "IO80211WokeSystem");
    atomic_fetch_and((*(this + 9) + 10376), 0xFFFFFFFE);
    AppleBCMWLANCore::powerOffSystem(this);
  }

  else if ((*(*this + 1952))(this))
  {
    (*(*this + 1952))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::SetPowerStateGated(this);
    }
  }

  return 0;
}

uint64_t ___ZN16AppleBCMWLANCore18SetPowerState_ImplEj_block_invoke_2284(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(a1 + 40) == 2)
  {
    if ((*(*v1 + 1952))(*(a1 + 32)))
    {
      (*(*v1 + 1952))(v1);
      if (CCLogStream::shouldLog())
      {
        ___ZN16AppleBCMWLANCore18SetPowerState_ImplEj_block_invoke_2284_cold_1(v1);
      }
    }

    v2 = v1[9];
    v3 = *(v2 + 11288);
    if (v3)
    {
      IOService::ChangePowerState(v3, 2u, 0);
      v2 = v1[9];
    }

    *(v2 + 30013) = 1;
    if (*(v1[9] + 30012) == 1)
    {
      IOService::RegisterService(v1, 0);
    }
  }

  else
  {
    *(v1[9] + 30013) = 0;
  }

  return 0;
}

uint64_t AppleBCMWLANCore::powerOffSystem(AppleBCMWLANCore *this)
{
  v11 = 0xAAAAAAAAAAAAAAAALL;
  AppleBCMWLANUtil::AutoreleasedTimeTrace::AutoreleasedTimeTrace(&v11, 0x40, 0, 1);
  mach_continuous_nanoseconds = AppleBCMWLANUtil::get_mach_continuous_nanoseconds(0, v2);
  AppleBCMWLANUtil::AutoreleasedTimeTrace::recordTraceWithTimestamp(&v11, mach_continuous_nanoseconds, 131074, 39328, "%s: %6u", "IOReturn AppleBCMWLANCore::powerOffSystem()", 39328);
  v4 = this + 72;
  v5 = *(*(this + 9) + 10376);
  if ((v5 & 0x20) != 0)
  {
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::powerOffSystem(this);
      }
    }

    if (AppleBCMWLANCore::waitForDriverEvent(this, 5u, 10000) == -536870186)
    {
      AppleBCMWLANCore::powerOffSystem();
    }

    v5 = *(*v4 + 10376);
  }

  if ((v5 & 0x80) != 0)
  {
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::powerOffSystem(this);
      }
    }

    atomic_fetch_or((*v4 + 10376), 0x400u);
    v5 = *(*v4 + 10376);
  }

  if ((v5 & 0x400) != 0)
  {
    if (AppleBCMWLANCore::waitForDriverEvent(this, 0, 5000))
    {
      if ((*(*this + 1952))(this))
      {
        (*(*this + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::powerOffSystem(this);
        }
      }
    }
  }

  if ((*(*this + 1952))(this))
  {
    (*(*this + 1952))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::powerOffSystem(this);
    }
  }

  v7 = AppleBCMWLANUtil::get_mach_continuous_nanoseconds(0, v6);
  AppleBCMWLANUtil::AutoreleasedTimeTrace::setMarkTimestamp(&v11, v7);
  if (!AppleBCMWLANCore::powerOff(this, 1))
  {
    *(*v4 + 6584) = 1;
  }

  AppleBCMWLANUtil::AutoreleasedTimeTrace::recordTraceFromMarkTimestamp(&v11, 0x20002, 39361, "%s: %6u", "IOReturn AppleBCMWLANCore::powerOffSystem()", 39361);
  if ((*(*v4 + 10376) & 0x8080) == 0x8000)
  {
    (*(**(*v4 + 5392) + 272))(*(*v4 + 5392));
  }

  v9 = AppleBCMWLANUtil::get_mach_continuous_nanoseconds(0, v8);
  AppleBCMWLANUtil::AutoreleasedTimeTrace::recordTraceWithTimestamp(&v11, (v9 - mach_continuous_nanoseconds), 131074, 39370, "%s: %6u", "IOReturn AppleBCMWLANCore::powerOffSystem()", 39370);
  AppleBCMWLANUtil::AutoreleasedTimeTrace::recordTraceWithTimestamp(&v11, v9, 131074, 39371, "%s: %6u", "IOReturn AppleBCMWLANCore::powerOffSystem()", 39371);
  AppleBCMWLANUtil::AutoreleasedTimeTrace::dumpToLog(&v11, 0, 0);
  if (v11)
  {
    (*(*v11 + 16))(v11);
  }

  return 0;
}

uint64_t AppleBCMWLANCore::powerOnSystem(AppleBCMWLANCore *this)
{
  v15 = 0xAAAAAAAAAAAAAAAALL;
  AppleBCMWLANUtil::AutoreleasedTimeTrace::AutoreleasedTimeTrace(&v15, 0x40, 0, 1);
  mach_continuous_nanoseconds = AppleBCMWLANUtil::get_mach_continuous_nanoseconds(0, v2);
  AppleBCMWLANUtil::AutoreleasedTimeTrace::recordTraceWithTimestamp(&v15, mach_continuous_nanoseconds, 65537, 38859, "%s: %6u", "IOReturn AppleBCMWLANCore::powerOnSystem()", 38859);
  v4 = this + 72;
  *(*(this + 9) + 35664) = mach_continuous_nanoseconds;
  v5 = *(this + 9);
  v6 = *(v5 + 10376);
  if ((v6 & 0x20) != 0)
  {
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::powerOnSystem(this);
      }
    }

    *(*v4 + 6584) = 0;
  }

  else if ((v6 & 0x8000) != 0)
  {
    v7 = *(v5 + 5388);
    if (v7 > 4)
    {
      AppleBCMWLANCore::watchdogFailed(this);
    }

    else
    {
      *(v5 + 5388) = v7 + 1;
      if ((*(*this + 1952))(this))
      {
        (*(*this + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::powerOnSystem(this);
        }
      }

      AppleBCMWLANCore::watchdog(this, 0);
    }
  }

  else
  {
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::powerOnSystem(this);
      }
    }

    v10 = AppleBCMWLANUtil::get_mach_continuous_nanoseconds(0, v9);
    AppleBCMWLANUtil::AutoreleasedTimeTrace::setMarkTimestamp(&v15, v10);
    AppleBCMWLANCore::powerOn(this);
    AppleBCMWLANUtil::AutoreleasedTimeTrace::recordTraceFromMarkTimestamp(&v15, 0x10001, 38882, "%s: %6u", "IOReturn AppleBCMWLANCore::powerOnSystem()", 38882);
    atomic_fetch_and((*(this + 9) + 10376), 0xFFFFFBFF);
    v11 = *(this + 9);
    v12 = *(v11 + 11288);
    if (v12)
    {
      IO80211Controller::postMessage(this, v12, 1u, 0, 0, 1);
      v11 = *(this + 9);
    }

    if (*(v11 + 6588))
    {
      if (*(v11 + 11288))
      {
        if ((*(*this + 1952))(this))
        {
          (*(*this + 1952))(this);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANCore::powerOnSystem(this);
          }
        }

        IO80211Controller::postMessage(this, *(*(this + 9) + 11288), 0x23u, 0, 0, 1);
        v11 = *(this + 9);
      }

      *(v11 + 6588) = 0;
      v11 = *v4;
    }

    *(v11 + 6584) = 0;
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::powerOnSystem(this);
      }
    }

    v14 = AppleBCMWLANUtil::get_mach_continuous_nanoseconds(0, v13);
    AppleBCMWLANUtil::AutoreleasedTimeTrace::recordTraceWithTimestamp(&v15, (v14 - mach_continuous_nanoseconds), 65537, 38910, "%s: %6u", "IOReturn AppleBCMWLANCore::powerOnSystem()", 38910);
    AppleBCMWLANUtil::AutoreleasedTimeTrace::recordTraceWithTimestamp(&v15, v14, 65537, 38911, "%s: %6u", "IOReturn AppleBCMWLANCore::powerOnSystem()", 38911);
    AppleBCMWLANUtil::AutoreleasedTimeTrace::dumpToLog(&v15, 0, 0);
  }

  if (v15)
  {
    (*(*v15 + 16))(v15);
  }

  return 0;
}

uint64_t AppleBCMWLANCore::watchdogFailed(AppleBCMWLANCore *this)
{
  if ((*(*this + 1952))(this))
  {
    (*(*this + 1952))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::watchdogFailed(this);
    }
  }

  (*(*(*(*(this + 9) + 5392) + 48) + 208))();
  atomic_fetch_or((*(this + 9) + 10376), 0x40u);
  atomic_fetch_or((*(this + 9) + 10376), 0x20u);
  AppleBCMWLANCore::signalDriverReady(this);
  AppleBCMWLANCore::halt(this);
  return 3758097084;
}

uint64_t AppleBCMWLANCore::allowLinkup(AppleBCMWLANCore *this)
{
  if ((*(*this + 1952))(this))
  {
    (*(*this + 1952))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::allowLinkup(this);
    }
  }

  v8 = 0;
  v2 = (*(*this + 88))(this);
  if ((*(*v2 + 136))(v2))
  {
    v5 = this;
    v6 = AppleBCMWLANCore::handleResetLinkParamsAsyncCallBack;
    v7 = 0;
    if (AppleBCMWLANCommander::sendIOVarSet(*(*(this + 9) + 5408), "nolinkup"))
    {
      if ((*(*this + 1952))(this))
      {
        (*(*this + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::allowLinkup(this);
        }
      }
    }
  }

  else
  {
    v3 = *(*(this + 9) + 5408);
    v5 = &v8;
    v6 = 4;
    if (AppleBCMWLANCommander::runIOVarSet(v3, "nolinkup", &v5, 0, 0))
    {
      if ((*(*this + 1952))(this))
      {
        (*(*this + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::allowLinkup(this);
        }
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
      return AppleBCMWLANCore::allowLinkup(this);
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::resetPorts(AppleBCMWLANCore *this)
{
  if ((*(*this + 1952))(this))
  {
    (*(*this + 1952))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::resetPorts(this);
    }
  }

  if (AppleBCMWLANCore::featureFlagIsBitSet(this, 31))
  {
    *(*(this + 9) + 10300) = 0;
    active = AppleBCMWLANCore::configureActivePortsInToChip(this, 858980353);
    if (active)
    {
      if ((*(*this + 1952))(this))
      {
        (*(*this + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::resetPorts(this);
        }
      }
    }
  }

  else
  {
    active = 0;
  }

  if ((*(*this + 1952))(this))
  {
    (*(*this + 1952))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::resetPorts(this);
    }
  }

  return active;
}

uint64_t AppleBCMWLANCore::collectScanForwardStats(AppleBCMWLANCore *this)
{
  v14 = 1;
  v15 = 6;
  v2 = IOMallocZeroData();
  if (v2)
  {
    v3 = v2;
    if (AppleBCMWLANCore::featureFlagIsBitSet(this, 117) && (*(*(this + 9) + 17523) & 2) != 0)
    {
      v4 = (*(*this + 88))(this);
      if ((*(*v4 + 136))(v4))
      {
        v11 = this;
        v12 = AppleBCMWLANCore::scanForwardStatsAsyncCallBack;
        v13 = 0;
        v5 = *(*(this + 9) + 5408);
        v9 = &v14;
        v10 = 6;
        v8 = 5636182;
        if (AppleBCMWLANCommander::sendIOVarGet(v5, "spmi_scan_fwd", &v9, &v8, &v11, 0) && (*(*this + 1952))(this))
        {
          (*(*this + 1952))(this);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANCore::collectScanForwardStats(this);
          }
        }
      }

      else
      {
        v11 = v3;
        v12 = 0x5600560056;
        v7 = *(*(this + 9) + 5408);
        v9 = &v14;
        v10 = 6;
        if (AppleBCMWLANCommander::runIOVarGet(v7, "spmi_scan_fwd", &v9, &v11, 0))
        {
          if ((*(*this + 1952))(this))
          {
            (*(*this + 1952))(this);
            if (CCLogStream::shouldLog())
            {
              AppleBCMWLANCore::collectScanForwardStats(this);
            }
          }
        }

        else
        {
          AppleBCMWLANCore::processScanForwardStats(this, v3);
        }
      }
    }

    return IOFreeData();
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
        return AppleBCMWLANCore::collectScanForwardStats(this);
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::processPowerStatsChangesInSleep(AppleBCMWLANCore *this, int a2)
{
  v2 = *(this + 9);
  if (*(v2 + 8819) != 1 || (*(v2 + 10376) & 1) == 0 || *(v2 + 19852) != 1)
  {
    return 0;
  }

  bzero(v40, 0x2C0uLL);
  v39 = 0xAAAAAAAAAAAAAAAALL;
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v38[0] = v5;
  v38[1] = v5;
  BYTE4(v38[0]) = 0;
  LODWORD(v38[0]) = 18;
  PowerStats = AppleBCMWLANCore::getPowerStats(this, v40, v38);
  if (PowerStats)
  {
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::processPowerStatsChangesInSleep(this);
      }
    }

    return PowerStats;
  }

  v8 = *(this + 9);
  v9 = v40[24] - *(v8 + 11440);
  v10 = v40[11] - *(v8 + 11388);
  v11 = (v40[1] - *(v8 + 11348));
  v12 = (v40[2] - *(v8 + 11352));
  v13 = (v40[0] - *(v8 + 11344));
  if (AppleBCMWLANBGScanAdapter::isPnoScanConfigured(*(v8 + 5496)))
  {
    v14 = 4;
  }

  else
  {
    v14 = 0;
  }

  v15 = (1.0 - ((v12 + v11) / v13)) * 1000.0;
  if ((*(*this + 1952))(this))
  {
    (*(*this + 1952))(this);
    if (CCLogStream::shouldLog())
    {
      v25 = (*(*this + 1952))(this);
      CCLogStream::logAlert(v25, "[dk] %s@%d: (0x%x) MpcDuration %dms PmDuration %dms SleepDuration %dms DutyCycle %d.%d%% RoamScanDuration %dms ConnectTime %dms, LPAS AvailableRoamTime %dms, WOW AvailableRoamTime %dms\n", "processPowerStatsChangesInSleep", 51523, v14, v12, v11, v13, v15 / 10, v15 % 10, v9, v10, *(*(this + 9) + 6660), *(*(this + 9) + 6632));
    }
  }

  v16 = *(this + 9);
  if (*(v16 + 776))
  {
    v17 = *(v16 + 35528);
    if (*(v16 + 777) == 1)
    {
      v14 = v14 | 1;
      if (v17)
      {
        if ((*(*this + 1952))(this))
        {
          (*(*this + 1952))(this);
          if (CCLogStream::shouldLog())
          {
            v18 = (*(*this + 1952))(this);
            CCLogStream::logAlert(v18, "[dk] %s@%d:LPAS (0x%x) power report: MpcDuration %dms PmDuration %dms SleepDuration %dms DutyCycle %d.%d%%\n", "processPowerStatsChangesInSleep");
          }
        }
      }

      else
      {
        AppleBCMWLANCore::calculateAvailableRoamTime(this, 2, v10 + v9, (v16 + 6660));
        if ((*(*this + 1952))(this))
        {
          (*(*this + 1952))(this);
          if (CCLogStream::shouldLog())
          {
            v23 = (*(*this + 1952))(this);
            v35 = *(*(this + 9) + 6660);
            CCLogStream::logAlert(v23, "[dk] %s@%d:LPAS (0x%x) power report: MpcDuration %dms PmDuration %dms SleepDuration %dms DutyCycle %d.%d%% RoamScanDuration %dms ConnectTime %dms AvailableRoamTime %dms\n", "processPowerStatsChangesInSleep", 51535, v14);
          }
        }
      }

      goto LABEL_36;
    }

    v14 = v14 | 2;
    if (!v17)
    {
      AppleBCMWLANCore::calculateAvailableRoamTime(this, 1, v10 + v9, (v16 + 6632));
      if ((*(*this + 1952))(this))
      {
        (*(*this + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          v26 = (*(*this + 1952))(this);
          v36 = *(*(this + 9) + 6632);
          CCLogStream::logAlert(v26, "[dk] %s@%d:WOW (0x%x) power report: MpcDuration %dms PmDuration %dms SleepDuration %dms DutyCycle %d.%d%% RoamScanDuration %dms ConnectTime %dms AvailableRoamTime %dms\n", "processPowerStatsChangesInSleep", 51546, v14);
        }
      }

      goto LABEL_36;
    }

    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        v19 = (*(*this + 1952))(this);
        v20 = (v15 / 10);
        v21 = (v15 % 10);
        v30 = v11;
        v31 = v13;
        v28 = v14;
        v29 = v12;
        v27 = 51548;
        v22 = "[dk] %s@%d:WOW (0x%x) power report: MpcDuration %dms PmDuration %dms SleepDuration %dms DutyCycle %d.%d%%\n";
        goto LABEL_29;
      }
    }
  }

  else if ((*(*this + 1952))(this))
  {
    (*(*this + 1952))(this);
    if (CCLogStream::shouldLog())
    {
      v19 = (*(*this + 1952))(this);
      v20 = (v15 / 10);
      v21 = (v15 % 10);
      v30 = v11;
      v31 = v13;
      v28 = v14;
      v29 = v12;
      v27 = 51552;
      v22 = "[dk] %s@%d:PNO (0x%x) power report: MpcDuration %dms PmDuration %dms SleepDuration %dms DutyCycle %d.%d%%\n";
LABEL_29:
      CCLogStream::logAlert(v19, v22, "processPowerStatsChangesInSleep", v27, v28, v29, v30, v31, v20, v21, v32, v33, v34);
    }
  }

LABEL_36:
  if (a2)
  {
    v37[0] = v14;
    v37[1] = v12;
    v37[2] = v11;
    v37[3] = v10 + v9;
    v37[4] = v13;
    *&v37[5] = v15 / 10.0;
    v24 = *(*(this + 9) + 11288);
    if (v24)
    {
      IO80211Controller::postMessage(this, v24, 0x3Du, v37, 0x18uLL, 1);
    }
  }

  return PowerStats;
}

IOLock *AppleBCMWLANCore::configureAssociatedSleepExit(AppleBCMWLANCore *this)
{
  v2 = this & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000;
  if ((*(*this + 1952))(this))
  {
    (*(*this + 1952))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::configureAssociatedSleepExit(this);
    }
  }

  v3 = this + 72;
  *(*(this + 9) + 778) = 1;
  AppleBCMWLANCore::updateInactivityAndSleepCounters(this, 0);
  AppleBCMWLANCore::configureAvgRssiParamsForAssociatedSleepExit(this);
  if (*(*(this + 9) + 777) == 1)
  {
    if (AppleBCMWLANCore::configureLPASExit(this))
    {
      if ((*(*this + 1952))(this))
      {
        (*(*this + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::configureAssociatedSleepExit(this);
        }
      }

      goto LABEL_19;
    }

    goto LABEL_13;
  }

  if (!AppleBCMWLANCore::configureWoWExit(this))
  {
LABEL_13:
    if (AppleBCMWLANCore::featureFlagIsBitSet(this, 87))
    {
      if ((*(*this + 1952))(this))
      {
        (*(*this + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::configureAssociatedSleepExit(this);
        }
      }

      AppleBCMWLANConfigManager::configureBeaconDriftOffsetConfig(*(*v3 + 5464), 0);
    }

    AppleBCMWLANCore::featureFlagIsBitSet(this, 82);
    goto LABEL_19;
  }

  if ((*(*this + 1952))(this))
  {
    (*(*this + 1952))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::configureAssociatedSleepExit(this);
    }
  }

LABEL_19:
  if (*(*v3 + 30092) == 1)
  {
    AppleBCMWLANCore::setupTrafficMonitoring(this, 1);
  }

  if (AppleBCMWLANCore::checkForEarlyBeconTerminationSupport(this) && (v4 = AppleBCMWLANPowerManager::configureEarlyBeaconTermination(*(*v3 + 5520), 1), v4))
  {
    v5 = v4;
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::configureAssociatedSleepExit(this);
      }
    }
  }

  else
  {
    if (AppleBCMWLANCore::isMIMOPowerSaveEnabled(this))
    {
      if (AppleBCMWLANPowerManager::configureMIMOPowerSaveAssociatedSleepExit(*(*v3 + 5520)))
      {
        if ((*(*this + 1952))(this))
        {
          (*(*this + 1952))(this);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANCore::configureAssociatedSleepExit(this);
          }
        }
      }
    }

    if ((IO80211BssManager::isAssociatedToAdhoc(*(*v3 + 5432)) & 1) != 0 || (v6 = AppleBCMWLANConfigManager::setupBeaconOffload(*(*v3 + 5464), 0, 0, *(*v3 + 208), 0), !v6))
    {
      v5 = AppleBCMWLANCore::configureAssociatedSleepExitParams(this);
      if (v5)
      {
        if ((*(*this + 1952))(this))
        {
          (*(*this + 1952))(this);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANCore::configureAssociatedSleepExit(this);
          }
        }
      }

      if ((*(*this + 1952))(this))
      {
        (*(*this + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::configureAssociatedSleepExit(this, v2, this + 72, v5);
        }
      }

      AppleBCMWLANCore::collectBeaconRxCounters(this, *(this + 9) + 19692, 0);
      *(*(this + 9) + 777) = 0;
      if ((*(*this + 1952))(this))
      {
        (*(*this + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::configureAssociatedSleepExit(this);
        }
      }
    }

    else
    {
      v5 = v6;
      if ((*(*this + 1952))(this))
      {
        (*(*this + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::configureAssociatedSleepExit(this);
        }
      }
    }
  }

  return v5;
}

uint64_t AppleBCMWLANCore::systemWokenByWiFi(AppleBCMWLANCore *this)
{
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  memset(__dst, 0, sizeof(__dst));
  v18 = 0;
  v2 = OSString::withCString("com.apple.iokit.pm.wakedescription");
  if (!v2 || (v3 = v2, v4 = IOService::StateNotificationItemCopy(*(*(this + 9) + 35536), v2, &v18, 0), (v3->release)(v3), v4))
  {
LABEL_17:
    result = (*(*this + 1952))(this);
    if (result)
    {
      (*(*this + 1952))(this);
      result = CCLogStream::shouldLog();
      if (result)
      {
        AppleBCMWLANCore::systemWokenByWiFi(this, this & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000, __dst);
        return 0;
      }
    }
  }

  else
  {
    Object = OSDictionary::getObject(v18, "com.apple.iokit.pm.wakereason");
    v6 = OSMetaClassBase::safeMetaCast(Object, gOSStringMetaClass);
    if (v6)
    {
      CStringNoCopy = OSString::getCStringNoCopy(v6);
      strlcpy(__dst, CStringNoCopy, 0x100uLL);
    }

    else
    {
      IOLog("AppleBCMWLANCore::systemWokenByWiFi: Failed, Unknown Wake reason, [%p]\n", 0);
      strcpy(__dst, "Unknown Wake reason");
    }

    if (v18)
    {
      (v18->release)(v18);
      v18 = 0;
    }

    v17 = 0;
    IOParseBootArgNumber("wifibt-external", &v17, 4);
    if (v17 && (*__str = 0, v22 = 0, *__little = 0, v20 = 0, snprintf(__str, 0x10uLL, "pci%04x,%04x", v17, HIWORD(v17)), v8 = strlen(__dst), strnstr(__dst, __str, v8)))
    {
      v9 = 0;
      while (1)
      {
        snprintf(__little, 0x10uLL, "ATC%d.CIOWakeup", v9);
        v10 = strlen(__dst);
        if (strnstr(__dst, __little, v10))
        {
          break;
        }

        if (++v9 == 4)
        {
          goto LABEL_13;
        }
      }

      if ((*(*this + 1952))(this))
      {
        (*(*this + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::systemWokenByWiFi(this);
        }
      }
    }

    else
    {
LABEL_13:
      v11 = 0;
      while (1)
      {
        v12 = kWoWWakeReasonStrings[v11];
        v13 = strlen(__dst);
        if (strnstr(__dst, v12, v13))
        {
          if ((*(**(*(this + 9) + 5392) + 816))(*(*(this + 9) + 5392), __dst, v12, 255))
          {
            break;
          }
        }

        if (++v11 == 4)
        {
          goto LABEL_17;
        }
      }

      if ((*(*this + 1952))(this))
      {
        (*(*this + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          v15 = (*(*this + 1952))(this);
          v16 = *(this + 9);
          if (v16)
          {
            LODWORD(v16) = *(v16 + 8824);
          }

          CCLogStream::logAlert(v15, "[dk] %s@%d:WoW Wake reason = %s, kern.wakereason: '%s', WiFiWakeType[0x%08x]\n", "systemWokenByWiFi", 44763, v12, __dst, v16);
        }
      }
    }

    return 1;
  }

  return result;
}

uint64_t acquireProperty<OSDictionary>(IOService *a1, const char *a2, OSMetaClassBase **a3, unint64_t a4, const char *a5)
{
  anObject = 0;
  result = acquirePropertyWithString(a1, a2, &anObject, a4, a5);
  if (result)
  {
    v7 = OSMetaClassBase::safeMetaCast(anObject, gOSDictionaryMetaClass);
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

BOOL AppleBCMWLANCore::setWiFiWakeType(AppleBCMWLANCore *this, int a2)
{
  v2 = *(this + 9);
  if (v2)
  {
    *(v2 + 8824) = a2;
  }

  else
  {
    AppleBCMWLANCore::setWiFiWakeType(this);
  }

  return v2 != 0;
}

uint64_t AppleBCMWLANCore::sendTxPowerCapValueToFirmware(uint64_t result, int a2, int a3)
{
  v4 = result + 72;
  v3 = *(result + 72);
  if ((*(v3 + 10376) & 0x2080B0) == 0)
  {
    if (a2 == -1)
    {
      return result;
    }

    if (a3 == -1)
    {
      return result;
    }

    result = *(v3 + 5464);
    if (!result)
    {
      return result;
    }

    result = AppleBCMWLANConfigManager::isDualPowerModeSupported(result);
    if (!result)
    {
      return result;
    }

    result = AppleBCMWLANConfigManager::getTxPowerCapConfig(*(*v4 + 5464));
    v8 = *(result + 12);
    if (v8 != 4)
    {
      if (v8 == 3)
      {
        *&v30[1] = 0xAAAAAAAAAAAAAAAALL;
        v31 = -21846;
        v30[0] = 3;
        v17 = *(result + 11);
        if (*(result + 11))
        {
          v18 = 0;
          if (a2 == 1 && a3 == 0)
          {
            v19 = 2;
          }

          else
          {
            v19 = 0;
          }

          v20 = result + 1;
          if (a2 == 0 && a3 == 1)
          {
            v19 = 1;
          }

          if (a3 | a2)
          {
            v21 = v19;
          }

          else
          {
            v21 = 3;
          }

          do
          {
            if (*(v20 + v18))
            {
              v22 = a3 == 0;
            }

            else
            {
              v22 = a2 == 0;
            }

            if (*(v20 + v18) == 2)
            {
              v23 = v21;
            }

            else
            {
              v23 = v22;
            }

            v30[++v18] = v23;
          }

          while (v18 < v17);
        }

        v15 = *(*v4 + 5408);
        v16 = 11;
      }

      else
      {
        if (v8 != 2)
        {
          return result;
        }

        v30[5] = -86;
        *&v30[1] = -1431655766;
        v30[0] = 2;
        v9 = *(result + 11);
        if (*(result + 11))
        {
          v10 = 0;
          v11 = result + 1;
          if (a2 == 1 && a3 == 0)
          {
            v12 = 2;
          }

          else
          {
            v12 = 0;
          }

          if (a2 == 0 && a3 == 1)
          {
            v12 = 1;
          }

          if (!(a3 | a2))
          {
            v12 = 3;
          }

          do
          {
            if (*(v11 + v10))
            {
              v13 = a3 == 0;
            }

            else
            {
              v13 = a2 == 0;
            }

            if (*(v11 + v10) == 2)
            {
              v14 = v12;
            }

            else
            {
              v14 = v13;
            }

            v30[++v10] = v14;
          }

          while (v10 < v9);
        }

        v15 = *(*v4 + 5408);
        v16 = 6;
      }

LABEL_58:
      v29[0] = v30;
      v29[1] = v16;
      result = AppleBCMWLANCommander::runIOVarSet(v15, "txcapstate", v29, 0, 0);
      if (result == -469793790 || result == -469793788)
      {
        v27 = *v4;
        if ((*(*v4 + 10376) & 0x80) != 0)
        {
          return result;
        }
      }

      else
      {
        if (!result)
        {
          return result;
        }

        v27 = *v4;
      }

      return CCFaultReporter::reportFault(*(v27 + 5536), 5u, "/Library/Caches/com.apple.xbs/Sources/AppleBCMWLANV3_driverkit/AppleBCMWLANCore.cpp", 0xD01Au, "sendTxPowerCapValueToFirmware", 0, result, "txcapstate failed");
    }

    *v30 = 772;
    if (*(result + 1))
    {
      if (*(result + 1) == 2)
      {
        if (a3 | a2)
        {
          if (a2 || a3 != 1)
          {
            if (a3)
            {
              v28 = 0;
            }

            else
            {
              v28 = a2 == 1;
            }

            if (v28)
            {
              v24 = 2;
            }

            else
            {
              v24 = 0;
            }
          }

          else
          {
            v24 = 1;
          }
        }

        else
        {
          v24 = 3;
        }

        goto LABEL_57;
      }

      v25 = a3 == 0;
    }

    else
    {
      v25 = a2 == 0;
    }

    v24 = v25;
LABEL_57:
    v30[2] = v24;
    v15 = *(*v4 + 5408);
    v16 = 3;
    goto LABEL_58;
  }

  v5 = result;
  result = (*(*result + 1952))(result);
  if (result)
  {
    (*(*v5 + 1952))(v5);
    result = CCLogStream::shouldLog();
    if (result)
    {
      return AppleBCMWLANCore::sendTxPowerCapValueToFirmware(v5);
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::resetRangingState(AppleBCMWLANCore *this)
{
  v2 = *(this + 9);
  if (*(v2 + 11288))
  {
    v10 = 0;
    v8[0] = &v9;
    v8[1] = 10;
    v9 = 0;
    if (AppleBCMWLANCommander::runIOVarSet(*(v2 + 5408), "awdl_ranging_config", v8, 0, 0))
    {
      if ((*(*this + 1952))(this))
      {
        (*(*this + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::resetRangingState(this);
        }
      }
    }

    v3 = *(this + 9);
    if ((*(v3 + 10378) & 4) != 0)
    {
      v6 = 1;
      v7 = 2;
      v4 = *(v3 + 11288);
      if (v4)
      {
        IO80211Controller::postMessage(this, v4, 0x53u, &v6, 0xCuLL, 1);
      }

      else if ((*(*this + 1952))(this))
      {
        (*(*this + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::resetRangingState(this);
        }
      }

      if ((*(*this + 1952))(this))
      {
        (*(*this + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::resetRangingState(this);
        }
      }

      v3 = *(this + 9);
    }

    atomic_fetch_and((v3 + 10376), 0xFFFBFFFF);
  }

  else if ((*(*this + 1952))(this))
  {
    (*(*this + 1952))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::resetRangingState(this);
    }
  }

  return 0;
}

uint64_t AppleBCMWLANCore::configureAssociatedSleepEntry(AppleBCMWLANCore *this)
{
  if ((*(*this + 1952))(this))
  {
    (*(*this + 1952))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::configureAssociatedSleepEntry(this);
    }
  }

  AppleBCMWLANCore::configureSupplicantTimeOutForEAPAssociation(this);
  v2 = this + 72;
  *(*(this + 9) + 777) = *(*(this + 9) + 6728);
  if ((*(*this + 1952))(this))
  {
    (*(*this + 1952))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::configureAssociatedSleepEntry(this);
    }
  }

  if (*(*v2 + 777) == 1)
  {
    v3 = AppleBCMWLANCore::configureLPASEntry(this);
    v4 = v3;
    if (v3 == -536870174)
    {
      return v4;
    }

    if (!v3)
    {
      if (AppleBCMWLANCore::featureFlagIsBitSet(this, 87))
      {
        if ((*(*this + 1952))(this))
        {
          (*(*this + 1952))(this);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANCore::configureAssociatedSleepEntry(this);
          }
        }

        AppleBCMWLANConfigManager::configureBeaconDriftOffsetConfig(*(*v2 + 5464), 1);
      }

      if (AppleBCMWLANCore::featureFlagIsBitSet(this, 82))
      {
        if ((*(*this + 1952))(this))
        {
          (*(*this + 1952))(this);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANCore::configureAssociatedSleepEntry(this);
          }
        }
      }

LABEL_28:
      if (AppleBCMWLANCore::checkForEarlyBeconTerminationSupport(this))
      {
        if (AppleBCMWLANPowerManager::configureEarlyBeaconTermination(*(*v2 + 5520), 0))
        {
          if ((*(*this + 1952))(this))
          {
            (*(*this + 1952))(this);
            if (CCLogStream::shouldLog())
            {
              AppleBCMWLANCore::configureAssociatedSleepEntry(this);
            }
          }
        }
      }

      if ((IO80211BssManager::isAssociatedToAdhoc(*(*v2 + 5432)) & 1) == 0)
      {
        if (AppleBCMWLANConfigManager::setupBeaconOffload(*(*v2 + 5464), 1, 0, *(*v2 + 208), 0))
        {
          if ((*(*this + 1952))(this))
          {
            (*(*this + 1952))(this);
            if (CCLogStream::shouldLog())
            {
              AppleBCMWLANCore::configureAssociatedSleepEntry(this);
            }
          }
        }
      }

      if (AppleBCMWLANCore::isMIMOPowerSaveEnabled(this))
      {
        AppleBCMWLANPowerManager::configureMIMOPowerSaveAssociatedSleepEntry(*(*v2 + 5520));
      }

      if (*(*v2 + 30092) == 1)
      {
        AppleBCMWLANCore::setupTrafficMonitoring(this, 0);
      }

      AppleBCMWLANCore::configureAssociatedSleepEntryParams(this);
      mach_continuous_time();
      absolutetime_to_nanoseconds();
      *(*(this + 9) + 17720) = 0;
      if ((*(*this + 1952))(this))
      {
        (*(*this + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::configureAssociatedSleepEntry(this);
        }
      }

      return 0;
    }

    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::configureAssociatedSleepEntry(this);
      }
    }
  }

  else
  {
    v5 = AppleBCMWLANCore::configureWoWEntry(this);
    if (!v5)
    {
      if (AppleBCMWLANCore::featureFlagIsBitSet(this, 87))
      {
        if ((*(*this + 1952))(this))
        {
          (*(*this + 1952))(this);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANCore::configureAssociatedSleepEntry(this);
          }
        }

        AppleBCMWLANConfigManager::configureBeaconDriftOffsetConfig(*(*v2 + 5464), 2);
      }

      goto LABEL_28;
    }

    v4 = v5;
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::configureAssociatedSleepEntry(this);
      }
    }
  }

  return v4;
}

uint64_t AppleBCMWLANCore::configureEventBitMaskForUnAssociatedSleep(AppleBCMWLANCore *this)
{
  if ((*(*this + 1952))(this))
  {
    (*(*this + 1952))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::configureEventBitMaskForUnAssociatedSleep(this);
    }
  }

  if (AppleBCMWLANCore::featureFlagIsBitSet(this, 34))
  {
    v2 = *(this + 9);
    v3 = *(v2 + 1184);
    IOLockLock(v3);
    *(v2 + 1118) &= ~0x10u;
    IOLockUnlock(v3);
    v4 = *(this + 9);
    v5 = *(v4 + 1184);
    IOLockLock(v5);
    *(v4 + 1117) &= ~0x10u;
    IOLockUnlock(v5);
  }

  v6 = *(this + 9);
  v7 = *(v6 + 1184);
  IOLockLock(v7);
  *(v6 + 1097) &= ~0x20u;
  IOLockUnlock(v7);
  v8 = *(this + 9);
  v9 = *(v8 + 1184);
  IOLockLock(v9);
  *(v8 + 1097) &= ~0x40u;
  IOLockUnlock(v9);
  v10 = *(this + 9);
  v11 = *(v10 + 1184);
  IOLockLock(v11);
  *(v10 + 1102) &= ~0x10u;
  IOLockUnlock(v11);
  v12 = *(this + 9);
  v13 = *(v12 + 1184);
  IOLockLock(v13);
  *(v12 + 1117) &= ~8u;
  IOLockUnlock(v13);
  if (AppleBCMWLANCore::featureFlagIsBitSet(this, 33))
  {
    v14 = *(this + 9);
    v15 = *(v14 + 1184);
    IOLockLock(v15);
    *(v14 + 1111) &= ~0x10u;
    IOLockUnlock(v15);
  }

  if (AppleBCMWLANCore::featureFlagIsBitSet(this, 34) && AppleBCMWLANCore::featureFlagIsBitSet(this, 76))
  {
    v16 = *(this + 9);
    v17 = *(v16 + 1184);
    IOLockLock(v17);
    *(v16 + 1119) &= ~0x20u;
    IOLockUnlock(v17);
  }

  if (AppleBCMWLANCore::featureFlagIsBitSet(this, 71))
  {
    v18 = *(this + 9);
    v19 = *(v18 + 1184);
    IOLockLock(v19);
    *(v18 + 1119) &= ~1u;
    IOLockUnlock(v19);
  }

  if (AppleBCMWLANCore::featureFlagIsBitSet(this, 79))
  {
    v20 = *(this + 9);
    v21 = *(v20 + 1184);
    IOLockLock(v21);
    *(v20 + 1119) &= ~0x40u;
    IOLockUnlock(v21);
  }

  if (AppleBCMWLANCore::featureFlagIsBitSet(this, 92))
  {
    v22 = *(this + 9);
    v23 = *(v22 + 1184);
    IOLockLock(v23);
    *(v22 + 1120) &= ~0x80u;
    IOLockUnlock(v23);
  }

  v24 = *(this + 9);
  v25 = *(v24 + 1184);
  IOLockLock(v25);
  *(v24 + 1099) &= ~4u;
  IOLockUnlock(v25);
  v26 = *(this + 9);
  v27 = *(v26 + 1184);
  IOLockLock(v27);
  *(v26 + 1122) &= ~2u;
  IOLockUnlock(v27);
  v28 = *(this + 9);
  v29 = *(v28 + 1184);
  IOLockLock(v29);
  *(v28 + 1122) &= ~0x10u;
  IOLockUnlock(v29);
  v30 = *(this + 9);
  v31 = *(v30 + 1184);
  IOLockLock(v31);
  *(v30 + 1101) &= ~0x40u;
  IOLockUnlock(v31);
  if (AppleBCMWLANCore::featureFlagIsBitSet(this, 115))
  {
    v32 = *(this + 9);
    v33 = *(v32 + 1184);
    IOLockLock(v33);
    *(v32 + 1121) &= ~8u;
    IOLockUnlock(v33);
  }

  if (AppleBCMWLANBGScanAdapter::isBGScanCacheRollOverEnabled(*(*(this + 9) + 5496)))
  {
    v34 = *(this + 9);
    v35 = *(v34 + 1184);
    IOLockLock(v35);
    *(v34 + 1103) &= ~2u;
    IOLockUnlock(v35);
  }

  else
  {
    AppleBCMWLANCore::addEventBit(this);
  }

  v36 = *(this + 9);
  v37 = *(v36 + 1184);
  IOLockLock(v37);
  *(v36 + 1104) &= ~0x20u;
  IOLockUnlock(v37);
  if (AppleBCMWLANCore::featureFlagIsBitSet(this, 95))
  {
    v38 = *(this + 9);
    v39 = *(v38 + 1184);
    IOLockLock(v39);
    *(v38 + 1121) &= ~1u;
    IOLockUnlock(v39);
  }

  if (AppleBCMWLANCore::featureFlagIsBitSet(this, 93))
  {
    v40 = *(this + 9);
    v41 = *(v40 + 1184);
    IOLockLock(v41);
    *(v40 + 1121) &= ~0x80u;
    IOLockUnlock(v41);
  }

  if (AppleBCMWLANCore::featureFlagIsBitSet(this, 101))
  {
    v42 = *(this + 9);
    v43 = *(v42 + 1184);
    IOLockLock(v43);
    *(v42 + 1119) &= ~8u;
    IOLockUnlock(v43);
  }

  IOLockLock(*(*(this + 9) + 1184));
  v44 = *(this + 9);
  v44[72] = *(v44 + 1096);
  *(v44 + 1164) = *(v44 + 1108);
  IOLockUnlock(*(*(this + 9) + 1184));
  v45 = AppleBCMWLANCore::writeEventBitField(this);
  v46 = (*(*this + 1952))(this);
  if (v45)
  {
    if (v46)
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::configureEventBitMaskForUnAssociatedSleep(this);
      }
    }
  }

  else if (v46)
  {
    (*(*this + 1952))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::configureEventBitMaskForUnAssociatedSleep(this);
    }
  }

  return v45;
}

uint64_t AppleBCMWLANCore::resetWoWStateMachine(AppleBCMWLANCore *this)
{
  if ((*(*this + 1952))(this))
  {
    (*(*this + 1952))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::resetWoWStateMachine(this);
    }
  }

  *(*(this + 9) + 8819) = 0;
  *(*(this + 9) + 9480) = 0;
  *(*(this + 9) + 9488) = 0;
  *(*(this + 9) + 8817) = 0;
  *(*(this + 9) + 8818) = 0;
  *(*(this + 9) + 8820) = 0;
  *(*(this + 9) + 10310) = 0;
  v2 = 9780;
  v3 = 10;
  do
  {
    v4 = (*(this + 9) + v2);
    *v4 = 0;
    v4[1] = 0;
    v2 += 16;
    --v3;
  }

  while (v3);
  *(*(this + 9) + 10036) = 0;
  *(*(this + 9) + 10040) = 0;
  *(*(this + 9) + 10041) = 0;
  *(*(this + 9) + 10042) = 0;
  *(*(this + 9) + 10043) = 0;
  *(*(this + 9) + 776) = 0;
  *(*(this + 9) + 6592) = 0;
  result = (*(*this + 1952))(this);
  if (result)
  {
    (*(*this + 1952))(this);
    result = CCLogStream::shouldLog();
    if (result)
    {
      return AppleBCMWLANCore::resetWoWStateMachine(this);
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::resetPktFilterParams(AppleBCMWLANCore *this)
{
  if ((*(*this + 1952))(this))
  {
    (*(*this + 1952))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::resetPktFilterParams(this);
    }
  }

  *(*(this + 9) + 9488) = 0;
  *(*(this + 9) + 10310) = 0;
  v2 = 9780;
  v3 = 10;
  do
  {
    v4 = (*(this + 9) + v2);
    *v4 = 0;
    v4[1] = 0;
    v2 += 16;
    --v3;
  }

  while (v3);
  result = (*(*this + 1952))(this);
  if (result)
  {
    (*(*this + 1952))(this);
    result = CCLogStream::shouldLog();
    if (result)
    {
      return AppleBCMWLANCore::resetPktFilterParams(this);
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::getSupportedBands(AppleBCMWLANCore *this)
{
  if (AppleBCMWLANCore::featureFlagIsBitSet(this, 28))
  {
    return 3;
  }

  else
  {
    return 1;
  }
}

uint64_t AppleBCMWLANCore::configureWeightAvgLQMUpdates(uint64_t *a1, _OWORD *a2)
{
  v2 = 3758097085;
  if (!a2)
  {
    return 3758097084;
  }

  v13[2] = "RSSI";
  v13[3] = "SNR";
  v13[4] = "TXRATE";
  v13[5] = "RXRATE";
  v5 = IOMallocZeroData();
  if (v5)
  {
    v6 = v5;
    *v5 = 0x10000000140000;
    *(v5 + 8) = *a2;
    v7 = *(a1[9] + 5408);
    v13[0] = v6;
    v13[1] = 24;
    v8 = AppleBCMWLANCommander::runIOVarSet(v7, "lq_wa_params", v13, 0, 0);
    if (v8 == -469794537)
    {
      if ((*(*a1 + 1952))(a1))
      {
        (*(*a1 + 1952))(a1);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::configureWeightAvgLQMUpdates(a1);
        }
      }

      AppleBCMWLANCore::featureFlagClearBit(a1, 71);
      v2 = 3825172759;
    }

    else
    {
      v2 = v8;
      if (v8)
      {
        if ((*(*a1 + 1952))(a1))
        {
          (*(*a1 + 1952))(a1);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANCore::configureWeightAvgLQMUpdates(a1);
          }
        }

        AppleBCMWLANCore::featureFlagClearBit(a1, 71);
      }

      else
      {
        v10 = 0;
        v11 = v6 + 8;
        do
        {
          if ((*(*a1 + 1952))(a1))
          {
            (*(*a1 + 1952))(a1);
            if (CCLogStream::shouldLog())
            {
              AppleBCMWLANCore::configureWeightAvgLQMUpdates(a1);
            }
          }

          v11 += 4;
        }

        while (v10++ < 3);
        AppleBCMWLANCore::featureFlagSetBit(a1, 71);
        AppleBCMWLANCore::addEventBit(a1);
        v2 = 0;
      }
    }

    IOFreeData();
  }

  else if ((*(*a1 + 1952))(a1))
  {
    (*(*a1 + 1952))(a1);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::configureWeightAvgLQMUpdates(a1);
    }
  }

  return v2;
}

IO80211Controller *AppleBCMWLANCore::reportLQMCrashTracerFeatureFlag(IO80211Controller *this)
{
  v1 = *(this + 9);
  v3 = *(v1 + 30064);
  v2 = *(v1 + 11288);
  if (v2)
  {
    return IO80211Controller::postMessage(this, v2, 0xB1u, &v3, 4uLL, 1);
  }

  return this;
}

IO80211Controller *AppleBCMWLANCore::reportP2PForULLRTInfraFeatureFlag(IO80211Controller *this)
{
  v1 = *(this + 9);
  v3 = *(v1 + 30080);
  v2 = *(v1 + 11288);
  if (v2)
  {
    return IO80211Controller::postMessage(this, v2, 0xC2u, &v3, 4uLL, 1);
  }

  return this;
}

uint64_t *AppleBCMWLANCore::setL3CtrlTxProfile(uint64_t *this, int a2)
{
  v2 = this[9];
  if (*(v2 + 18476) != a2)
  {
    v4 = this;
    *&v5 = 0xAAAAAAAAAAAAAAAALL;
    *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *&v17[12] = v5;
    *v17 = v5;
    v16 = v5;
    v15 = v5;
    v14 = v5;
    v13 = v5;
    if (a2)
    {
      *&v13 = 0x4000100200000;
      *(&v13 + 1) = 0x4000200000010;
      *&v14 = 0x400030000000CLL;
      *(&v14 + 1) = 0x4000700000000;
      LODWORD(v15) = 2000;
      v6 = 40;
      v7 = 1;
      v8 = 44;
    }

    else
    {
      LOWORD(v13) = 0;
      v6 = 6;
      v7 = 3;
      v8 = 10;
    }

    v11[0] = v7;
    v12 = 0;
    v11[1] = v6;
    v9 = *(v2 + 5408);
    v10[0] = v11;
    v10[1] = v8;
    this = AppleBCMWLANCommander::runIOVarSet(v9, "tx_profile", v10, 0, 0);
    if (!this)
    {
      this = (*(*v4 + 1952))(v4);
      if (this)
      {
        (*(*v4 + 1952))(v4);
        this = CCLogStream::shouldLog();
        if (this)
        {
          this = AppleBCMWLANCore::setL3CtrlTxProfile(v4, v4 & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000, v11);
        }
      }

      *(v4[9] + 18476) = a2;
    }
  }

  return this;
}

uint64_t AppleBCMWLANCore::enablePTKKeyBuffer(AppleBCMWLANCore *this)
{
  v6 = 1;
  v2 = *(*(this + 9) + 5408);
  v5[0] = &v6;
  v5[1] = 4;
  v3 = AppleBCMWLANCommander::runIOVarSet(v2, "buf_key_b4_m4", v5, 0, 0);
  if (v3)
  {
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::enablePTKKeyBuffer(this);
      }
    }
  }

  return v3;
}

uint64_t AppleBCMWLANCore::configureSupplicantTimeOutForEAPAssociation(AppleBCMWLANCore *this)
{
  CurrentBSS = AppleBCMWLANBssManager::getCurrentBSS(*(*(this + 9) + 5432));
  if (!CurrentBSS || !IO80211BSSBeacon::is8021xEnabled(CurrentBSS))
  {
    return 0;
  }

  v3 = *(*(this + 9) + 5416);

  return AppleBCMWLANJoinAdapter::configureSupplicantTimeOutForEAPAssociation(v3);
}

uint64_t AppleBCMWLANCore::sendTxDCSlice0Ant0StatsCoreAnalytics(AppleBCMWLANCore *this)
{
  v2 = OSString::withCString("com.apple.wifi.TxDCStatsSlice0Ant0");
  if (!v2)
  {
    return AppleBCMWLANCore::sendTxDCSlice0Ant0StatsCoreAnalytics(this);
  }

  v3 = v2;
  v4 = OSDictionary::withCapacity(0xAu);
  if (!v4)
  {
    AppleBCMWLANCore::sendTxDCSlice0Ant0StatsCoreAnalytics(this);
    goto LABEL_27;
  }

  v5 = OSString::withCString("Slice0Ant0TxDC0To10");
  if (!v5)
  {
    AppleBCMWLANCore::sendTxDCSlice0Ant0StatsCoreAnalytics(this);
    goto LABEL_27;
  }

  v6 = v5;
  v7 = OSNumber::withNumber(*(*(this + 9) + 6304), 0x40uLL);
  if (v7)
  {
    v8 = v7;
    OSDictionary::setObject(v4, v6, v7);
    (v6->release)(v6);
    (v8->release)(v8);
    v9 = OSString::withCString("Slice0Ant0TxDC10To20");
    if (!v9)
    {
      AppleBCMWLANCore::sendTxDCSlice0Ant0StatsCoreAnalytics(this);
      goto LABEL_27;
    }

    v6 = v9;
    v10 = OSNumber::withNumber(*(*(this + 9) + 6312), 0x40uLL);
    if (v10)
    {
      v11 = v10;
      OSDictionary::setObject(v4, v6, v10);
      (v6->release)(v6);
      (v11->release)(v11);
      v12 = OSString::withCString("Slice0Ant0TxDC20To30");
      if (!v12)
      {
        AppleBCMWLANCore::sendTxDCSlice0Ant0StatsCoreAnalytics(this);
        goto LABEL_27;
      }

      v6 = v12;
      v13 = OSNumber::withNumber(*(*(this + 9) + 6320), 0x40uLL);
      if (v13)
      {
        v14 = v13;
        OSDictionary::setObject(v4, v6, v13);
        (v6->release)(v6);
        (v14->release)(v14);
        v15 = OSString::withCString("Slice0Ant0TxDC30To40");
        if (!v15)
        {
          AppleBCMWLANCore::sendTxDCSlice0Ant0StatsCoreAnalytics(this);
          goto LABEL_27;
        }

        v6 = v15;
        v16 = OSNumber::withNumber(*(*(this + 9) + 6328), 0x40uLL);
        if (v16)
        {
          v17 = v16;
          OSDictionary::setObject(v4, v6, v16);
          (v6->release)(v6);
          (v17->release)(v17);
          v18 = OSString::withCString("Slice0Ant0TxDC40To50");
          if (!v18)
          {
            AppleBCMWLANCore::sendTxDCSlice0Ant0StatsCoreAnalytics(this);
            goto LABEL_27;
          }

          v6 = v18;
          v19 = OSNumber::withNumber(*(*(this + 9) + 6336), 0x40uLL);
          if (v19)
          {
            v20 = v19;
            OSDictionary::setObject(v4, v6, v19);
            (v6->release)(v6);
            (v20->release)(v20);
            v21 = OSString::withCString("Slice0Ant0TxDC50To60");
            if (!v21)
            {
              AppleBCMWLANCore::sendTxDCSlice0Ant0StatsCoreAnalytics(this);
              goto LABEL_27;
            }

            v6 = v21;
            v22 = OSNumber::withNumber(*(*(this + 9) + 6344), 0x40uLL);
            if (v22)
            {
              v23 = v22;
              OSDictionary::setObject(v4, v6, v22);
              (v6->release)(v6);
              (v23->release)(v23);
              v24 = OSString::withCString("Slice0Ant0TxDC60To70");
              if (!v24)
              {
                AppleBCMWLANCore::sendTxDCSlice0Ant0StatsCoreAnalytics(this);
                goto LABEL_27;
              }

              v6 = v24;
              v25 = OSNumber::withNumber(*(*(this + 9) + 6352), 0x40uLL);
              if (v25)
              {
                v26 = v25;
                OSDictionary::setObject(v4, v6, v25);
                (v6->release)(v6);
                (v26->release)(v26);
                v27 = OSString::withCString("Slice0Ant0TxDC70To80");
                if (!v27)
                {
                  AppleBCMWLANCore::sendTxDCSlice0Ant0StatsCoreAnalytics(this);
                  goto LABEL_27;
                }

                v6 = v27;
                v28 = OSNumber::withNumber(*(*(this + 9) + 6360), 0x40uLL);
                if (v28)
                {
                  v29 = v28;
                  OSDictionary::setObject(v4, v6, v28);
                  (v6->release)(v6);
                  (v29->release)(v29);
                  v30 = OSString::withCString("Slice0Ant0TxDC80To90");
                  if (!v30)
                  {
                    AppleBCMWLANCore::sendTxDCSlice0Ant0StatsCoreAnalytics(this);
                    goto LABEL_27;
                  }

                  v6 = v30;
                  v31 = OSNumber::withNumber(*(*(this + 9) + 6368), 0x40uLL);
                  if (v31)
                  {
                    v32 = v31;
                    OSDictionary::setObject(v4, v6, v31);
                    (v6->release)(v6);
                    (v32->release)(v32);
                    v33 = OSString::withCString("Slice0Ant0TxDC90To100");
                    if (!v33)
                    {
                      AppleBCMWLANCore::sendTxDCSlice0Ant0StatsCoreAnalytics(this);
                      goto LABEL_27;
                    }

                    v6 = v33;
                    v34 = OSNumber::withNumber(*(*(this + 9) + 6376), 0x40uLL);
                    if (v34)
                    {
                      v35 = v34;
                      OSDictionary::setObject(v4, v6, v34);
                      (v6->release)(v6);
                      (v35->release)(v35);
                      v36 = IOService::CoreAnalyticsSendEvent(this, 0, v3, v4, 0);
                      if (v36)
                      {
                        v37 = v36;
                        if ((*(*this + 1952))(this))
                        {
                          (*(*this + 1952))(this);
                          if (CCLogStream::shouldLog())
                          {
                            AppleBCMWLANCore::sendTxDCSlice0Ant0StatsCoreAnalytics(this, this & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000, v3, v37);
                          }
                        }
                      }

                      goto LABEL_27;
                    }

                    if (AppleBCMWLANCore::sendTxDCSlice0Ant0StatsCoreAnalytics(this))
                    {
                      goto LABEL_63;
                    }

                    v40 = 41788;
LABEL_65:
                    v41 = (*(*this + 1952))(this);
                    CCLogStream::logAlert(v41, "[dk] %s@%d:Fail to allocate numValue\n", "sendTxDCSlice0Ant0StatsCoreAnalytics", v40);
                    goto LABEL_66;
                  }

                  if ((AppleBCMWLANCore::sendTxDCSlice0Ant0StatsCoreAnalytics(this) & 1) == 0)
                  {
                    v40 = 41780;
                    goto LABEL_65;
                  }
                }

                else if ((AppleBCMWLANCore::sendTxDCSlice0Ant0StatsCoreAnalytics(this) & 1) == 0)
                {
                  v40 = 41772;
                  goto LABEL_65;
                }
              }

              else if ((AppleBCMWLANCore::sendTxDCSlice0Ant0StatsCoreAnalytics(this) & 1) == 0)
              {
                v40 = 41764;
                goto LABEL_65;
              }
            }

            else if ((AppleBCMWLANCore::sendTxDCSlice0Ant0StatsCoreAnalytics(this) & 1) == 0)
            {
              v40 = 41756;
              goto LABEL_65;
            }
          }

          else if ((AppleBCMWLANCore::sendTxDCSlice0Ant0StatsCoreAnalytics(this) & 1) == 0)
          {
            v40 = 41748;
            goto LABEL_65;
          }
        }

        else if ((AppleBCMWLANCore::sendTxDCSlice0Ant0StatsCoreAnalytics(this) & 1) == 0)
        {
          v40 = 41740;
          goto LABEL_65;
        }
      }

      else if ((AppleBCMWLANCore::sendTxDCSlice0Ant0StatsCoreAnalytics(this) & 1) == 0)
      {
        v40 = 41732;
        goto LABEL_65;
      }
    }

    else if ((AppleBCMWLANCore::sendTxDCSlice0Ant0StatsCoreAnalytics(this) & 1) == 0)
    {
      v40 = 41724;
      goto LABEL_65;
    }
  }

  else if ((AppleBCMWLANCore::sendTxDCSlice0Ant0StatsCoreAnalytics(this) & 1) == 0)
  {
    v40 = 41716;
    goto LABEL_65;
  }

LABEL_63:
  v6 = v42;
LABEL_66:
  (v6->release)(v6);
LABEL_27:
  result = (v3->release)(v3);
  if (v4)
  {
    release = v4->release;

    return (release)(v4);
  }

  return result;
}

uint64_t AppleBCMWLANCore::sendTxDCSlice1Ant0StatsCoreAnalytics(AppleBCMWLANCore *this)
{
  v2 = OSString::withCString("com.apple.wifi.TxDCStatsSlice1Ant0");
  if (!v2)
  {
    return AppleBCMWLANCore::sendTxDCSlice1Ant0StatsCoreAnalytics(this);
  }

  v3 = v2;
  v4 = OSDictionary::withCapacity(0xAu);
  if (!v4)
  {
    AppleBCMWLANCore::sendTxDCSlice1Ant0StatsCoreAnalytics(this);
    goto LABEL_27;
  }

  v5 = OSString::withCString("Slice1Ant0TxDC0To10");
  if (!v5)
  {
    AppleBCMWLANCore::sendTxDCSlice1Ant0StatsCoreAnalytics(this);
    goto LABEL_27;
  }

  v6 = v5;
  v7 = OSNumber::withNumber(*(*(this + 9) + 6392), 0x40uLL);
  if (v7)
  {
    v8 = v7;
    OSDictionary::setObject(v4, v6, v7);
    (v6->release)(v6);
    (v8->release)(v8);
    v9 = OSString::withCString("Slice1Ant0TxDC10To20");
    if (!v9)
    {
      AppleBCMWLANCore::sendTxDCSlice1Ant0StatsCoreAnalytics(this);
      goto LABEL_27;
    }

    v6 = v9;
    v10 = OSNumber::withNumber(*(*(this + 9) + 6400), 0x40uLL);
    if (v10)
    {
      v11 = v10;
      OSDictionary::setObject(v4, v6, v10);
      (v6->release)(v6);
      (v11->release)(v11);
      v12 = OSString::withCString("Slice1Ant0TxDC20To30");
      if (!v12)
      {
        AppleBCMWLANCore::sendTxDCSlice1Ant0StatsCoreAnalytics(this);
        goto LABEL_27;
      }

      v6 = v12;
      v13 = OSNumber::withNumber(*(*(this + 9) + 6408), 0x40uLL);
      if (v13)
      {
        v14 = v13;
        OSDictionary::setObject(v4, v6, v13);
        (v6->release)(v6);
        (v14->release)(v14);
        v15 = OSString::withCString("Slice1Ant0TxDC30To40");
        if (!v15)
        {
          AppleBCMWLANCore::sendTxDCSlice1Ant0StatsCoreAnalytics(this);
          goto LABEL_27;
        }

        v6 = v15;
        v16 = OSNumber::withNumber(*(*(this + 9) + 6416), 0x40uLL);
        if (v16)
        {
          v17 = v16;
          OSDictionary::setObject(v4, v6, v16);
          (v6->release)(v6);
          (v17->release)(v17);
          v18 = OSString::withCString("Slice1Ant0TxDC40To50");
          if (!v18)
          {
            AppleBCMWLANCore::sendTxDCSlice1Ant0StatsCoreAnalytics(this);
            goto LABEL_27;
          }

          v6 = v18;
          v19 = OSNumber::withNumber(*(*(this + 9) + 6424), 0x40uLL);
          if (v19)
          {
            v20 = v19;
            OSDictionary::setObject(v4, v6, v19);
            (v6->release)(v6);
            (v20->release)(v20);
            v21 = OSString::withCString("Slice1Ant0TxDC50To60");
            if (!v21)
            {
              AppleBCMWLANCore::sendTxDCSlice1Ant0StatsCoreAnalytics(this);
              goto LABEL_27;
            }

            v6 = v21;
            v22 = OSNumber::withNumber(*(*(this + 9) + 6432), 0x40uLL);
            if (v22)
            {
              v23 = v22;
              OSDictionary::setObject(v4, v6, v22);
              (v6->release)(v6);
              (v23->release)(v23);
              v24 = OSString::withCString("Slice1Ant0TxDC60To70");
              if (!v24)
              {
                AppleBCMWLANCore::sendTxDCSlice1Ant0StatsCoreAnalytics(this);
                goto LABEL_27;
              }

              v6 = v24;
              v25 = OSNumber::withNumber(*(*(this + 9) + 6440), 0x40uLL);
              if (v25)
              {
                v26 = v25;
                OSDictionary::setObject(v4, v6, v25);
                (v6->release)(v6);
                (v26->release)(v26);
                v27 = OSString::withCString("Slice1Ant0TxDC70To80");
                if (!v27)
                {
                  AppleBCMWLANCore::sendTxDCSlice1Ant0StatsCoreAnalytics(this);
                  goto LABEL_27;
                }

                v6 = v27;
                v28 = OSNumber::withNumber(*(*(this + 9) + 6448), 0x40uLL);
                if (v28)
                {
                  v29 = v28;
                  OSDictionary::setObject(v4, v6, v28);
                  (v6->release)(v6);
                  (v29->release)(v29);
                  v30 = OSString::withCString("Slice1Ant0TxDC80To90");
                  if (!v30)
                  {
                    AppleBCMWLANCore::sendTxDCSlice1Ant0StatsCoreAnalytics(this);
                    goto LABEL_27;
                  }

                  v6 = v30;
                  v31 = OSNumber::withNumber(*(*(this + 9) + 6456), 0x40uLL);
                  if (v31)
                  {
                    v32 = v31;
                    OSDictionary::setObject(v4, v6, v31);
                    (v6->release)(v6);
                    (v32->release)(v32);
                    v33 = OSString::withCString("Slice1Ant0TxDC90To100");
                    if (!v33)
                    {
                      AppleBCMWLANCore::sendTxDCSlice1Ant0StatsCoreAnalytics(this);
                      goto LABEL_27;
                    }

                    v6 = v33;
                    v34 = OSNumber::withNumber(*(*(this + 9) + 6464), 0x40uLL);
                    if (v34)
                    {
                      v35 = v34;
                      OSDictionary::setObject(v4, v6, v34);
                      (v6->release)(v6);
                      (v35->release)(v35);
                      v36 = IOService::CoreAnalyticsSendEvent(this, 0, v3, v4, 0);
                      if (v36)
                      {
                        v37 = v36;
                        if ((*(*this + 1952))(this))
                        {
                          (*(*this + 1952))(this);
                          if (CCLogStream::shouldLog())
                          {
                            AppleBCMWLANCore::sendTxDCSlice1Ant0StatsCoreAnalytics(this, this & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000, v3, v37);
                          }
                        }
                      }

                      goto LABEL_27;
                    }

                    if (AppleBCMWLANCore::sendTxDCSlice0Ant0StatsCoreAnalytics(this))
                    {
                      goto LABEL_63;
                    }

                    v40 = 41896;
LABEL_65:
                    v41 = (*(*this + 1952))(this);
                    CCLogStream::logAlert(v41, "[dk] %s@%d:Fail to allocate numValue\n", "sendTxDCSlice1Ant0StatsCoreAnalytics", v40);
                    goto LABEL_66;
                  }

                  if ((AppleBCMWLANCore::sendTxDCSlice0Ant0StatsCoreAnalytics(this) & 1) == 0)
                  {
                    v40 = 41888;
                    goto LABEL_65;
                  }
                }

                else if ((AppleBCMWLANCore::sendTxDCSlice0Ant0StatsCoreAnalytics(this) & 1) == 0)
                {
                  v40 = 41880;
                  goto LABEL_65;
                }
              }

              else if ((AppleBCMWLANCore::sendTxDCSlice0Ant0StatsCoreAnalytics(this) & 1) == 0)
              {
                v40 = 41872;
                goto LABEL_65;
              }
            }

            else if ((AppleBCMWLANCore::sendTxDCSlice0Ant0StatsCoreAnalytics(this) & 1) == 0)
            {
              v40 = 41864;
              goto LABEL_65;
            }
          }

          else if ((AppleBCMWLANCore::sendTxDCSlice0Ant0StatsCoreAnalytics(this) & 1) == 0)
          {
            v40 = 41856;
            goto LABEL_65;
          }
        }

        else if ((AppleBCMWLANCore::sendTxDCSlice0Ant0StatsCoreAnalytics(this) & 1) == 0)
        {
          v40 = 41848;
          goto LABEL_65;
        }
      }

      else if ((AppleBCMWLANCore::sendTxDCSlice0Ant0StatsCoreAnalytics(this) & 1) == 0)
      {
        v40 = 41840;
        goto LABEL_65;
      }
    }

    else if ((AppleBCMWLANCore::sendTxDCSlice0Ant0StatsCoreAnalytics(this) & 1) == 0)
    {
      v40 = 41832;
      goto LABEL_65;
    }
  }

  else if ((AppleBCMWLANCore::sendTxDCSlice0Ant0StatsCoreAnalytics(this) & 1) == 0)
  {
    v40 = 41824;
    goto LABEL_65;
  }

LABEL_63:
  v6 = v42;
LABEL_66:
  (v6->release)(v6);
LABEL_27:
  result = (v3->release)(v3);
  if (v4)
  {
    release = v4->release;

    return (release)(v4);
  }

  return result;
}

uint64_t AppleBCMWLANCore::sendDynSARPerSliceStatsCoreAnalytics(AppleBCMWLANCore *this, unsigned int a2)
{
  if (a2)
  {
    v4 = "com.apple.wifi.dsaSimpleStats.slice1";
  }

  else
  {
    v4 = "com.apple.wifi.dsaSimpleStats.slice0";
  }

  v5 = OSString::withCString(v4);
  if (!v5)
  {
    return AppleBCMWLANCore::sendDynSARPerSliceStatsCoreAnalytics(this);
  }

  v6 = v5;
  v7 = OSDictionary::withCapacity(8u);
  if (!v7)
  {
    AppleBCMWLANCore::sendDynSARPerSliceStatsCoreAnalytics(this);
    goto LABEL_26;
  }

  v8 = OSString::withCString("NoOptDuration");
  if (!v8)
  {
    AppleBCMWLANCore::sendDynSARPerSliceStatsCoreAnalytics(this);
    goto LABEL_26;
  }

  v9 = v8;
  v10 = a2;
  v11 = OSNumber::withNumber(*(*(this + 9) + (a2 << 6) + 4488), 0x40uLL);
  if (v11)
  {
    v12 = v11;
    OSDictionary::setObject(v7, v9, v11);
    (v9->release)(v9);
    (v12->release)(v12);
    v13 = OSString::withCString("PwrOptDuration");
    if (!v13)
    {
      AppleBCMWLANCore::sendDynSARPerSliceStatsCoreAnalytics(this);
      goto LABEL_26;
    }

    v9 = v13;
    v14 = OSNumber::withNumber(*(*(this + 9) + (v10 << 6) + 4496), 0x40uLL);
    if (v14)
    {
      v15 = v14;
      OSDictionary::setObject(v7, v9, v14);
      (v9->release)(v9);
      (v15->release)(v15);
      v16 = OSString::withCString("FailSafeDuration");
      if (!v16)
      {
        AppleBCMWLANCore::sendDynSARPerSliceStatsCoreAnalytics(this);
        goto LABEL_26;
      }

      v9 = v16;
      v17 = OSNumber::withNumber(*(*(this + 9) + (v10 << 6) + 4504), 0x40uLL);
      if (v17)
      {
        v18 = v17;
        OSDictionary::setObject(v7, v9, v17);
        (v9->release)(v9);
        (v18->release)(v18);
        v19 = OSString::withCString("NoMuteDuration");
        if (!v19)
        {
          AppleBCMWLANCore::sendDynSARPerSliceStatsCoreAnalytics(this);
          goto LABEL_26;
        }

        v9 = v19;
        v20 = OSNumber::withNumber(*(*(this + 9) + (v10 << 6) + 4512), 0x40uLL);
        if (v20)
        {
          v21 = v20;
          OSDictionary::setObject(v7, v9, v20);
          (v9->release)(v9);
          (v21->release)(v21);
          v22 = OSString::withCString("HybridDuration");
          if (!v22)
          {
            AppleBCMWLANCore::sendDynSARPerSliceStatsCoreAnalytics(this);
            goto LABEL_26;
          }

          v9 = v22;
          v23 = OSNumber::withNumber(*(*(this + 9) + (v10 << 6) + 4520), 0x40uLL);
          if (v23)
          {
            v24 = v23;
            OSDictionary::setObject(v7, v9, v23);
            (v9->release)(v9);
            (v24->release)(v24);
            v25 = OSString::withCString("TxDCThrottleDuration");
            if (!v25)
            {
              AppleBCMWLANCore::sendDynSARPerSliceStatsCoreAnalytics(this);
              goto LABEL_26;
            }

            v9 = v25;
            v26 = OSNumber::withNumber(*(*(this + 9) + (v10 << 6) + 4528), 0x40uLL);
            if (v26)
            {
              v27 = v26;
              OSDictionary::setObject(v7, v9, v26);
              (v9->release)(v9);
              (v27->release)(v27);
              v28 = OSString::withCString("PwrOptTxDCThrottleDuration");
              if (!v28)
              {
                AppleBCMWLANCore::sendDynSARPerSliceStatsCoreAnalytics(this);
                goto LABEL_26;
              }

              v9 = v28;
              v29 = OSNumber::withNumber(*(*(this + 9) + (v10 << 6) + 4536), 0x40uLL);
              if (v29)
              {
                v30 = v29;
                OSDictionary::setObject(v7, v9, v29);
                (v9->release)(v9);
                (v30->release)(v30);
                v31 = OSString::withCString("UpdatesPerSession");
                if (!v31)
                {
                  AppleBCMWLANCore::sendDynSARPerSliceStatsCoreAnalytics(this);
                  goto LABEL_26;
                }

                v9 = v31;
                v32 = OSNumber::withNumber(*(*(this + 9) + (v10 << 6) + 4544), 0x20uLL);
                if (v32)
                {
                  v33 = v32;
                  OSDictionary::setObject(v7, v9, v32);
                  (v9->release)(v9);
                  (v33->release)(v33);
                  v34 = IOService::CoreAnalyticsSendEvent(this, 0, v6, v7, 0);
                  if (v34)
                  {
                    v35 = v34;
                    if ((*(*this + 1952))(this))
                    {
                      (*(*this + 1952))(this);
                      if (CCLogStream::shouldLog())
                      {
                        AppleBCMWLANCore::sendDynSARPerSliceStatsCoreAnalytics(this, this & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000, v6, v35);
                      }
                    }
                  }

                  goto LABEL_26;
                }

                if (AppleBCMWLANCore::sendTxDCSlice0Ant0StatsCoreAnalytics(this))
                {
                  goto LABEL_56;
                }

                v38 = 41992;
LABEL_58:
                v39 = (*(*this + 1952))(this);
                CCLogStream::logAlert(v39, "[dk] %s@%d:Fail to allocate numValue\n", "sendDynSARPerSliceStatsCoreAnalytics", v38);
                goto LABEL_59;
              }

              if ((AppleBCMWLANCore::sendTxDCSlice0Ant0StatsCoreAnalytics(this) & 1) == 0)
              {
                v38 = 41984;
                goto LABEL_58;
              }
            }

            else if ((AppleBCMWLANCore::sendTxDCSlice0Ant0StatsCoreAnalytics(this) & 1) == 0)
            {
              v38 = 41976;
              goto LABEL_58;
            }
          }

          else if ((AppleBCMWLANCore::sendTxDCSlice0Ant0StatsCoreAnalytics(this) & 1) == 0)
          {
            v38 = 41968;
            goto LABEL_58;
          }
        }

        else if ((AppleBCMWLANCore::sendTxDCSlice0Ant0StatsCoreAnalytics(this) & 1) == 0)
        {
          v38 = 41960;
          goto LABEL_58;
        }
      }

      else if ((AppleBCMWLANCore::sendTxDCSlice0Ant0StatsCoreAnalytics(this) & 1) == 0)
      {
        v38 = 41952;
        goto LABEL_58;
      }
    }

    else if ((AppleBCMWLANCore::sendTxDCSlice0Ant0StatsCoreAnalytics(this) & 1) == 0)
    {
      v38 = 41944;
      goto LABEL_58;
    }
  }

  else if ((AppleBCMWLANCore::sendTxDCSlice0Ant0StatsCoreAnalytics(this) & 1) == 0)
  {
    v38 = 41936;
    goto LABEL_58;
  }

LABEL_56:
  v9 = v40;
LABEL_59:
  (v9->release)(v9);
LABEL_26:
  result = (v6->release)(v6);
  if (v7)
  {
    release = v7->release;

    return (release)(v7);
  }

  return result;
}

uint64_t AppleBCMWLANCore::sendHostScanStatsCoreAnalytics(AppleBCMWLANCore *this)
{
  v2 = OSString::withCString("com.apple.wifi.hostScanStats");
  if (!v2)
  {
    return AppleBCMWLANCore::sendHostScanStatsCoreAnalytics(this);
  }

  v3 = v2;
  v4 = OSDictionary::withCapacity(0x19u);
  if (v4)
  {
    AppleBCMWLANCore::prepareScanMotionStatsForCA(this, v4);
    AppleBCMWLANCore::prepareScanRoamStatsForCA(this, v4);
    AppleBCMWLANCore::prepareScanRejectStatsForCA(this, v4);
    v5 = IOService::CoreAnalyticsSendEvent(this, 0, v3, v4, 0);
    if (v5)
    {
      v6 = v5;
      if ((*(*this + 1952))(this))
      {
        (*(*this + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::sendHostScanStatsCoreAnalytics(this, this & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000, v3, v6);
        }
      }
    }
  }

  else
  {
    AppleBCMWLANCore::sendHostScanStatsCoreAnalytics(this);
  }

  result = (v3->release)(v3);
  if (v4)
  {
    release = v4->release;

    return (release)(v4);
  }

  return result;
}

uint64_t AppleBCMWLANCore::prepareScanMotionStatsForCA(AppleBCMWLANCore *this, OSDictionary *a2)
{
  if (!*(this + 9))
  {
    return AppleBCMWLANCore::prepareScanMotionStatsForCA(this);
  }

  mach_continuous_time();
  absolutetime_to_nanoseconds();
  if (!a2)
  {
    return AppleBCMWLANCore::prepareScanMotionStatsForCA(this);
  }

  v4 = OSString::withCString("SessionDur");
  if (!v4)
  {
    return AppleBCMWLANCore::prepareScanMotionStatsForCA(this);
  }

  v5 = v4;
  v6 = OSNumber::withNumber(-*(*(this + 9) + 19104), 0x40uLL);
  v34 = v6;
  v35 = v5;
  if (!v6)
  {
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::prepareScanMotionStatsForCA(this);
      }
    }

    goto LABEL_56;
  }

  OSDictionary::setObject(a2, v5, v6);
  v7 = OSString::withCString("NumNormalPrioMov");
  if (!v7)
  {
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::prepareScanMotionStatsForCA(this);
      }
    }

LABEL_56:
    v36 = 0;
LABEL_60:
    v31 = 0;
    v33 = 0;
LABEL_65:
    v17 = 0;
    v32 = 0;
LABEL_66:
    v19 = 0;
    v23 = 0;
    v27 = 0;
    v13 = 0;
LABEL_84:
    v21 = 0;
LABEL_85:
    v25 = 0;
    goto LABEL_86;
  }

  v8 = v7;
  v9 = OSNumber::withNumber(*(*(this + 9) + 19136), 0x20uLL);
  v36 = v8;
  if (!v9)
  {
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::prepareScanMotionStatsForCA(this);
      }
    }

    goto LABEL_60;
  }

  v33 = v9;
  OSDictionary::setObject(a2, v8, v9);
  v10 = OSString::withCString("NumNormalPrioStat");
  if (!v10)
  {
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::prepareScanMotionStatsForCA(this);
      }
    }

    v31 = 0;
    goto LABEL_65;
  }

  v11 = v10;
  v12 = OSNumber::withNumber(*(*(this + 9) + 19140), 0x20uLL);
  v32 = v11;
  if (!v12)
  {
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::prepareScanMotionStatsForCA(this);
      }
    }

    v31 = 0;
    v17 = 0;
    goto LABEL_66;
  }

  v13 = v12;
  OSDictionary::setObject(a2, v11, v12);
  v14 = OSString::withCString("NumLowPrioMov");
  if (!v14)
  {
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::prepareScanMotionStatsForCA(this);
      }
    }

    v31 = 0;
    goto LABEL_78;
  }

  v15 = v14;
  v16 = OSNumber::withNumber(*(*(this + 9) + 19144), 0x20uLL);
  v31 = v15;
  if (!v16)
  {
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::prepareScanMotionStatsForCA(this);
      }
    }

LABEL_78:
    v17 = 0;
LABEL_82:
    v19 = 0;
LABEL_83:
    v23 = 0;
    v27 = 0;
    goto LABEL_84;
  }

  v17 = v16;
  OSDictionary::setObject(a2, v15, v16);
  v18 = OSString::withCString("NumLowPrioStat");
  if (!v18)
  {
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::prepareScanMotionStatsForCA(this);
      }
    }

    goto LABEL_82;
  }

  v19 = v18;
  v20 = OSNumber::withNumber(*(*(this + 9) + 19148), 0x20uLL);
  if (!v20)
  {
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::prepareScanMotionStatsForCA(this);
      }
    }

    goto LABEL_83;
  }

  v21 = v20;
  OSDictionary::setObject(a2, v19, v20);
  v22 = OSString::withCString("NumHostScanReqMov");
  if (!v22)
  {
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::prepareScanMotionStatsForCA(this);
      }
    }

    v23 = 0;
    goto LABEL_97;
  }

  v23 = v22;
  v24 = OSNumber::withNumber(*(*(this + 9) + 19152), 0x20uLL);
  if (!v24)
  {
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::prepareScanMotionStatsForCA(this);
      }
    }

LABEL_97:
    v27 = 0;
    goto LABEL_85;
  }

  v25 = v24;
  OSDictionary::setObject(a2, v23, v24);
  v26 = OSString::withCString("NumHostScanRejectedMov");
  if (v26)
  {
    v27 = v26;
    v28 = OSNumber::withNumber(*(*(this + 9) + 19156), 0x20uLL);
    if (v28)
    {
      v29 = v28;
      OSDictionary::setObject(a2, v27, v28);
      if ((*(*this + 1952))(this))
      {
        (*(*this + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::prepareScanMotionStatsForCA(this);
        }
      }

      goto LABEL_20;
    }

    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::prepareScanMotionStatsForCA(this);
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
        AppleBCMWLANCore::prepareScanMotionStatsForCA(this);
      }
    }

    v27 = 0;
  }

LABEL_86:
  v29 = 0;
LABEL_20:
  (v35->release)(v35);
  if (v34)
  {
    (v34->release)(v34);
  }

  if (v36)
  {
    (v36->release)(v36);
  }

  if (v33)
  {
    (v33->release)(v33);
  }

  if (v32)
  {
    (v32->release)(v32);
  }

  if (v13)
  {
    (v13->release)(v13);
  }

  result = v31;
  if (v31)
  {
    result = (*(*v31 + 16))(v31);
  }

  if (v17)
  {
    result = (v17->release)(v17);
  }

  if (v19)
  {
    result = (v19->release)(v19);
  }

  if (v21)
  {
    result = (v21->release)(v21);
  }

  if (v23)
  {
    result = (v23->release)(v23);
  }

  if (v25)
  {
    result = (v25->release)(v25);
  }

  if (v27)
  {
    result = (v27->release)(v27);
  }

  if (v29)
  {
    return (v29->release)(v29);
  }

  return result;
}

uint64_t AppleBCMWLANCore::prepareScanRoamStatsForCA(AppleBCMWLANCore *this, OSDictionary *a2)
{
  if (!*(this + 9))
  {
    return AppleBCMWLANCore::prepareScanRoamStatsForCA(this);
  }

  v4 = OSString::withCString("RoamWithinX");
  if (!v4)
  {
    return AppleBCMWLANCore::prepareScanRoamStatsForCA(this);
  }

  v5 = v4;
  v6 = OSNumber::withNumber(*(*(this + 9) + 19056), 0x20uLL);
  v51 = v6;
  v52 = v5;
  if (!v6)
  {
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::prepareScanRoamStatsForCA(this);
      }
    }

    goto LABEL_77;
  }

  OSDictionary::setObject(a2, v5, v6);
  v7 = OSString::withCString("LocScanWithinRoam");
  if (!v7)
  {
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::prepareScanRoamStatsForCA(this);
      }
    }

LABEL_77:
    v50 = 0;
LABEL_81:
    v54 = 0;
LABEL_82:
    v37 = 0;
    v47 = 0;
    v48 = 0;
    v44 = 0;
    v45 = 0;
    v38 = 0;
    v49 = 0;
LABEL_83:
    v53 = 0;
    v23 = 0;
    v46 = 0;
    v43 = 0;
    v25 = 0;
    v27 = 0;
    v31 = 0;
    v34 = 0;
    v29 = 0;
    v33 = 0;
    v36 = 0;
    goto LABEL_24;
  }

  v8 = v7;
  v9 = OSNumber::withNumber(*(*(this + 9) + 19060), 0x20uLL);
  v50 = v8;
  if (!v9)
  {
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::prepareScanRoamStatsForCA(this);
      }
    }

    goto LABEL_81;
  }

  v54 = v9;
  OSDictionary::setObject(a2, v8, v9);
  v10 = OSString::withCString("NumHostScanReq");
  if (!v10)
  {
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::prepareScanRoamStatsForCA(this);
      }
    }

    goto LABEL_82;
  }

  v11 = v10;
  v12 = OSNumber::withNumber(*(*(this + 9) + 19064), 0x20uLL);
  v49 = v11;
  if (!v12)
  {
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::prepareScanRoamStatsForCA(this);
      }
    }

    v37 = 0;
    v47 = 0;
    v48 = 0;
    v44 = 0;
    v45 = 0;
    v38 = 0;
    goto LABEL_83;
  }

  v46 = v12;
  OSDictionary::setObject(a2, v11, v12);
  v13 = OSString::withCString("NumHostScanRejected");
  v41 = OSNumber::withNumber(*(*(this + 9) + 19068), 0x20uLL);
  v42 = v13;
  OSDictionary::setObject(a2, v13, v41);
  v14 = OSString::withCString("NumHostScanComp");
  v15 = OSNumber::withNumber(*(*(this + 9) + 19072), 0x20uLL);
  v48 = v14;
  if (!v15)
  {
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::prepareScanRoamStatsForCA(this);
      }
    }

    v45 = 0;
    v47 = 0;
    goto LABEL_102;
  }

  v47 = v15;
  OSDictionary::setObject(a2, v14, v15);
  v16 = OSString::withCString("NumHostScanLowPrio");
  if (!v16)
  {
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::prepareScanRoamStatsForCA(this);
      }
    }

    v45 = 0;
    goto LABEL_102;
  }

  v17 = v16;
  v18 = OSNumber::withNumber(*(*(this + 9) + 19076), 0x20uLL);
  v45 = v17;
  if (!v18)
  {
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::prepareScanRoamStatsForCA(this);
      }
    }

LABEL_102:
    v44 = 0;
LABEL_103:
    v53 = 0;
LABEL_104:
    v23 = 0;
    v43 = 0;
LABEL_105:
    v25 = 0;
LABEL_106:
    v27 = 0;
LABEL_107:
    v31 = 0;
    v34 = 0;
    v29 = 0;
LABEL_108:
    v33 = 0;
    goto LABEL_109;
  }

  v44 = v18;
  OSDictionary::setObject(a2, v17, v18);
  v19 = OSString::withCString("NumHostScanLowLatency");
  if (!v19)
  {
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::prepareScanRoamStatsForCA(this);
      }
    }

    goto LABEL_103;
  }

  v20 = v19;
  v21 = OSNumber::withNumber(*(*(this + 9) + 19080), 0x20uLL);
  v53 = v20;
  if (!v21)
  {
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::prepareScanRoamStatsForCA(this);
      }
    }

    goto LABEL_104;
  }

  v43 = v21;
  OSDictionary::setObject(a2, v20, v21);
  v22 = OSString::withCString("NumHostScanLowPrioOR");
  if (!v22)
  {
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::prepareScanRoamStatsForCA(this);
      }
    }

    v23 = 0;
    goto LABEL_105;
  }

  v23 = v22;
  v24 = OSNumber::withNumber(*(*(this + 9) + 19084), 0x20uLL);
  if (!v24)
  {
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::prepareScanRoamStatsForCA(this);
      }
    }

    goto LABEL_105;
  }

  v25 = v24;
  OSDictionary::setObject(a2, v23, v24);
  v26 = OSString::withCString("CntB2BHostScan");
  if (!v26)
  {
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::prepareScanRoamStatsForCA(this);
      }
    }

    goto LABEL_106;
  }

  v27 = v26;
  v28 = OSNumber::withNumber(*(*(this + 9) + 19088), 0x20uLL);
  if (!v28)
  {
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::prepareScanRoamStatsForCA(this);
      }
    }

    goto LABEL_107;
  }

  v29 = v28;
  OSDictionary::setObject(a2, v27, v28);
  v30 = OSString::withCString("CntB2BHostScanLow");
  if (!v30)
  {
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::prepareScanRoamStatsForCA(this);
      }
    }

    v31 = 0;
    goto LABEL_136;
  }

  v31 = v30;
  v32 = OSNumber::withNumber(*(*(this + 9) + 19096), 0x20uLL);
  if (!v32)
  {
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::prepareScanRoamStatsForCA(this);
      }
    }

LABEL_136:
    v34 = 0;
    goto LABEL_108;
  }

  v33 = v32;
  OSDictionary::setObject(a2, v31, v32);
  v34 = OSString::withCString("CntB2BHostScanHigh");
  v35 = OSNumber::withNumber(*(*(this + 9) + 19092), 0x20uLL);
  if (v35)
  {
    v36 = v35;
    OSDictionary::setObject(a2, v34, v35);
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::prepareScanRoamStatsForCA(this);
      }
    }

    goto LABEL_23;
  }

  if ((*(*this + 1952))(this))
  {
    (*(*this + 1952))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::prepareScanRoamStatsForCA(this);
    }
  }

LABEL_109:
  v36 = 0;
LABEL_23:
  v38 = v41;
  v37 = v42;
LABEL_24:
  (v52->release)(v52);
  if (v51)
  {
    (v51->release)(v51);
  }

  if (v50)
  {
    (v50->release)(v50);
  }

  if (v54)
  {
    (v54->release)(v54);
  }

  if (v49)
  {
    (v49->release)(v49);
  }

  if (v46)
  {
    (v46->release)(v46);
  }

  if (v37)
  {
    (v37->release)(v37);
  }

  if (v38)
  {
    (v38->release)(v38);
  }

  if (v48)
  {
    (v48->release)(v48);
  }

  if (v47)
  {
    (v47->release)(v47);
  }

  if (v45)
  {
    (v45->release)(v45);
  }

  if (v44)
  {
    (v44->release)(v44);
  }

  if (v53)
  {
    (v53->release)(v53);
  }

  result = v43;
  if (v43)
  {
    result = (*(*v43 + 16))(v43);
  }

  if (v23)
  {
    result = (v23->release)(v23);
  }

  if (v25)
  {
    result = (v25->release)(v25);
  }

  if (v27)
  {
    result = (v27->release)(v27);
  }

  if (v29)
  {
    result = (v29->release)(v29);
  }

  if (v31)
  {
    result = (v31->release)(v31);
  }

  if (v33)
  {
    result = (v33->release)(v33);
  }

  if (v34)
  {
    result = (v34->release)(v34);
  }

  if (v36)
  {
    release = v36->release;

    return (release)(v36);
  }

  return result;
}

uint64_t AppleBCMWLANCore::prepareScanRejectStatsForCA(AppleBCMWLANCore *this, OSDictionary *a2)
{
  if (!*(this + 9))
  {
    return AppleBCMWLANCore::prepareScanRejectStatsForCA(this);
  }

  v4 = OSString::withCString("NumRejLowPrio");
  if (!v4)
  {
    return AppleBCMWLANCore::prepareScanRejectStatsForCA(this);
  }

  v5 = v4;
  v6 = OSNumber::withNumber(*(*(this + 9) + 35928), 0x20uLL);
  v34 = v6;
  v35 = v5;
  if (!v6)
  {
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::prepareScanRejectStatsForCA(this);
      }
    }

    goto LABEL_56;
  }

  OSDictionary::setObject(a2, v5, v6);
  v7 = OSString::withCString("NumRejJoin");
  if (!v7)
  {
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::prepareScanRejectStatsForCA(this);
      }
    }

LABEL_56:
    v33 = 0;
LABEL_60:
    v26 = 0;
    v36 = 0;
LABEL_65:
    v28 = 0;
    v32 = 0;
LABEL_66:
    v14 = 0;
    v18 = 0;
    v22 = 0;
    v31 = 0;
LABEL_80:
    v16 = 0;
LABEL_90:
    v20 = 0;
LABEL_91:
    v24 = 0;
    goto LABEL_19;
  }

  v8 = v7;
  v9 = OSNumber::withNumber(*(*(this + 9) + 35932), 0x20uLL);
  v33 = v8;
  if (!v9)
  {
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::prepareScanRejectStatsForCA(this);
      }
    }

    goto LABEL_60;
  }

  v36 = v9;
  OSDictionary::setObject(a2, v8, v9);
  v10 = OSString::withCString("NumRejBusy");
  if (!v10)
  {
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::prepareScanRejectStatsForCA(this);
      }
    }

    v26 = 0;
    goto LABEL_65;
  }

  v11 = v10;
  v12 = OSNumber::withNumber(*(*(this + 9) + 35936), 0x20uLL);
  v32 = v11;
  if (!v12)
  {
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::prepareScanRejectStatsForCA(this);
      }
    }

    v26 = 0;
    v28 = 0;
    goto LABEL_66;
  }

  v31 = v12;
  OSDictionary::setObject(a2, v11, v12);
  v13 = OSString::withCString("NumRejIPRes");
  if (!v13)
  {
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::prepareScanRejectStatsForCA(this);
      }
    }

    v26 = 0;
    v28 = 0;
    v14 = 0;
    goto LABEL_79;
  }

  v14 = v13;
  v15 = OSNumber::withNumber(*(*(this + 9) + 35940), 0x20uLL);
  if (!v15)
  {
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::prepareScanRejectStatsForCA(this);
      }
    }

    v26 = 0;
    v28 = 0;
LABEL_79:
    v18 = 0;
    v22 = 0;
    goto LABEL_80;
  }

  v16 = v15;
  OSDictionary::setObject(a2, v14, v15);
  v17 = OSString::withCString("NumRejRssi");
  if (!v17)
  {
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::prepareScanRejectStatsForCA(this);
      }
    }

    v26 = 0;
    v28 = 0;
    v18 = 0;
    goto LABEL_89;
  }

  v18 = v17;
  v19 = OSNumber::withNumber(*(*(this + 9) + 35944), 0x20uLL);
  if (!v19)
  {
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::prepareScanRejectStatsForCA(this);
      }
    }

    v26 = 0;
    v28 = 0;
LABEL_89:
    v22 = 0;
    goto LABEL_90;
  }

  v20 = v19;
  OSDictionary::setObject(a2, v18, v19);
  v21 = OSString::withCString("NumRejLLS");
  if (!v21)
  {
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::prepareScanRejectStatsForCA(this);
      }
    }

    v26 = 0;
    v28 = 0;
    v22 = 0;
    goto LABEL_91;
  }

  v22 = v21;
  v23 = OSNumber::withNumber(*(*(this + 9) + 35948), 0x20uLL);
  if (!v23)
  {
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::prepareScanRejectStatsForCA(this);
      }
    }

    v26 = 0;
    v28 = 0;
    goto LABEL_91;
  }

  v24 = v23;
  OSDictionary::setObject(a2, v22, v23);
  v25 = OSString::withCString("NumRejScanBlock");
  if (v25)
  {
    v26 = v25;
    v27 = OSNumber::withNumber(*(*(this + 9) + 35952), 0x20uLL);
    if (v27)
    {
      v28 = v27;
      OSDictionary::setObject(a2, v26, v27);
      if ((*(*this + 1952))(this))
      {
        (*(*this + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::prepareScanRejectStatsForCA(this);
        }
      }

      goto LABEL_19;
    }

    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::prepareScanRejectStatsForCA(this);
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
        AppleBCMWLANCore::prepareScanRejectStatsForCA(this);
      }
    }

    v26 = 0;
  }

  v28 = 0;
LABEL_19:
  (v35->release)(v35);
  if (v34)
  {
    (v34->release)(v34);
  }

  if (v33)
  {
    (v33->release)(v33);
  }

  if (v36)
  {
    (v36->release)(v36);
  }

  if (v32)
  {
    (v32->release)(v32);
  }

  result = v31;
  if (v31)
  {
    result = (*(*v31 + 16))(v31);
  }

  if (v14)
  {
    result = (v14->release)(v14);
  }

  if (v16)
  {
    result = (v16->release)(v16);
  }

  if (v18)
  {
    result = (v18->release)(v18);
  }

  if (v20)
  {
    result = (v20->release)(v20);
  }

  if (v22)
  {
    result = (v22->release)(v22);
  }

  if (v24)
  {
    result = (v24->release)(v24);
  }

  if (v26)
  {
    result = (v26->release)(v26);
  }

  if (v28)
  {
    release = v28->release;

    return (release)(v28);
  }

  return result;
}

double AppleBCMWLANCore::resetSlicesScanModeStats(AppleBCMWLANCore *this)
{
  v1 = *(this + 9) + 19652;
  *(v1 + 32) = 0;
  result = 0.0;
  *v1 = 0u;
  *(v1 + 16) = 0u;
  return result;
}

uint64_t AppleBCMWLANCore::SendSlicesScanStatsCoreAnalytics(AppleBCMWLANCore *this)
{
  memset(v81, 170, 22);
  *__str = 0xAAAAAAAAAAAAAAAALL;
  v2 = OSString::withCString("com.apple.wifi.slicesScanStats");
  if (!v2)
  {
    return AppleBCMWLANCore::SendSlicesScanStatsCoreAnalytics(this);
  }

  v3 = v2;
  v4 = OSDictionary::withCapacity(0x36u);
  if (!v4)
  {
    AppleBCMWLANCore::SendSlicesScanStatsCoreAnalytics(this);
    v75 = v79;
    goto LABEL_47;
  }

  v77 = v3;
  v5 = 0;
  v6 = 19652;
  while (2)
  {
    v7 = 0;
    v8 = kSliceIdKeys[v5];
    v78 = v6;
    do
    {
      snprintf(__str, 0x1EuLL, "%s_%s", v8, kScanModeReportKeys[v7]);
      v9 = OSString::withCString(__str);
      if (!v9)
      {
        AppleBCMWLANCore::SendSlicesScanStatsCoreAnalytics(this);
LABEL_46:
        v75 = v79;
        v3 = v77;
        goto LABEL_47;
      }

      v10 = v9;
      v11 = OSNumber::withNumber(*(*(this + 9) + v6), 0x20uLL);
      if (!v11)
      {
        AppleBCMWLANCore::SendSlicesScanStatsCoreAnalytics(this);
        goto LABEL_46;
      }

      v12 = v11;
      OSDictionary::setObject(v4, v10, v11);
      (v10->release)(v10);
      (v12->release)(v12);
      v6 += 4;
      ++v7;
    }

    while (v7 != 3);
    snprintf(__str, 0x1EuLL, "%s_%s", v8, "UserScanCnt");
    v13 = OSString::withCString(__str);
    if (!v13)
    {
      AppleBCMWLANCore::SendSlicesScanStatsCoreAnalytics(this);
      goto LABEL_46;
    }

    v14 = v13;
    v15 = OSNumber::withNumber((*(*(this + 9) + 144 * v5 + 19160) - *(*(this + 9) + 20 * v5 + 19592)), 0x20uLL);
    if (!v15)
    {
      AppleBCMWLANCore::SendSlicesScanStatsCoreAnalytics(this);
      goto LABEL_46;
    }

    v16 = v15;
    OSDictionary::setObject(v4, v14, v15);
    (v14->release)(v14);
    (v16->release)(v16);
    snprintf(__str, 0x1EuLL, "%s_%s", v8, "AssocScanCnt");
    v17 = OSString::withCString(__str);
    if (!v17)
    {
      AppleBCMWLANCore::SendSlicesScanStatsCoreAnalytics(this);
      goto LABEL_46;
    }

    v18 = v17;
    v19 = OSNumber::withNumber((*(*(this + 9) + 144 * v5 + 19164) - *(*(this + 9) + 20 * v5 + 19596)), 0x20uLL);
    if (!v19)
    {
      AppleBCMWLANCore::SendSlicesScanStatsCoreAnalytics(this);
      goto LABEL_46;
    }

    v20 = v19;
    OSDictionary::setObject(v4, v18, v19);
    (v18->release)(v18);
    (v20->release)(v20);
    snprintf(__str, 0x1EuLL, "%s_%s", v8, "RoamScanCnt");
    v21 = OSString::withCString(__str);
    if (!v21)
    {
      AppleBCMWLANCore::SendSlicesScanStatsCoreAnalytics(this);
      goto LABEL_46;
    }

    v22 = v21;
    v23 = OSNumber::withNumber((*(*(this + 9) + 144 * v5 + 19168) - *(*(this + 9) + 20 * v5 + 19600)), 0x20uLL);
    if (!v23)
    {
      AppleBCMWLANCore::SendSlicesScanStatsCoreAnalytics(this);
      goto LABEL_46;
    }

    v24 = v23;
    OSDictionary::setObject(v4, v22, v23);
    (v22->release)(v22);
    (v24->release)(v24);
    snprintf(__str, 0x1EuLL, "%s_%s", v8, "PNOScanCnt");
    v25 = OSString::withCString(__str);
    if (!v25)
    {
      AppleBCMWLANCore::SendSlicesScanStatsCoreAnalytics(this);
      goto LABEL_46;
    }

    v26 = v25;
    v27 = OSNumber::withNumber((*(*(this + 9) + 144 * v5 + 19172) - *(*(this + 9) + 20 * v5 + 19604)), 0x20uLL);
    if (!v27)
    {
      AppleBCMWLANCore::SendSlicesScanStatsCoreAnalytics(this);
      goto LABEL_46;
    }

    v28 = v27;
    OSDictionary::setObject(v4, v26, v27);
    (v26->release)(v26);
    (v28->release)(v28);
    snprintf(__str, 0x1EuLL, "%s_%s", v8, "OtherScanCnt");
    v29 = OSString::withCString(__str);
    if (!v29)
    {
      AppleBCMWLANCore::SendSlicesScanStatsCoreAnalytics(this);
      goto LABEL_46;
    }

    v30 = v29;
    v31 = OSNumber::withNumber((*(*(this + 9) + 144 * v5 + 19176) - *(*(this + 9) + 20 * v5 + 19608)), 0x20uLL);
    if (!v31)
    {
      AppleBCMWLANCore::SendSlicesScanStatsCoreAnalytics(this);
      goto LABEL_46;
    }

    v32 = v31;
    OSDictionary::setObject(v4, v30, v31);
    (v30->release)(v30);
    (v32->release)(v32);
    snprintf(__str, 0x1EuLL, "%s_%s", v8, "UserScanDur");
    v33 = OSString::withCString(__str);
    if (!v33)
    {
      AppleBCMWLANCore::SendSlicesScanStatsCoreAnalytics(this);
      goto LABEL_46;
    }

    v34 = v33;
    v35 = OSNumber::withNumber(*(*(this + 9) + 144 * v5 + 19200), 0x40uLL);
    if (!v35)
    {
      AppleBCMWLANCore::SendSlicesScanStatsCoreAnalytics(this);
      goto LABEL_46;
    }

    v36 = v35;
    OSDictionary::setObject(v4, v34, v35);
    (v34->release)(v34);
    (v36->release)(v36);
    snprintf(__str, 0x1EuLL, "%s_%s", v8, "AssocScanDur");
    v37 = OSString::withCString(__str);
    if (!v37)
    {
      AppleBCMWLANCore::SendSlicesScanStatsCoreAnalytics(this);
      goto LABEL_46;
    }

    v38 = v37;
    v39 = OSNumber::withNumber(*(*(this + 9) + 144 * v5 + 19208), 0x40uLL);
    if (!v39)
    {
      AppleBCMWLANCore::SendSlicesScanStatsCoreAnalytics(this);
      goto LABEL_46;
    }

    v40 = v39;
    OSDictionary::setObject(v4, v38, v39);
    (v38->release)(v38);
    (v40->release)(v40);
    snprintf(__str, 0x1EuLL, "%s_%s", v8, "RoamScanDur");
    v41 = OSString::withCString(__str);
    if (!v41)
    {
      AppleBCMWLANCore::SendSlicesScanStatsCoreAnalytics(this);
      goto LABEL_46;
    }

    v42 = v41;
    v43 = OSNumber::withNumber(*(*(this + 9) + 144 * v5 + 19216), 0x40uLL);
    if (!v43)
    {
      AppleBCMWLANCore::SendSlicesScanStatsCoreAnalytics(this);
      goto LABEL_46;
    }

    v44 = v43;
    OSDictionary::setObject(v4, v42, v43);
    (v42->release)(v42);
    (v44->release)(v44);
    snprintf(__str, 0x1EuLL, "%s_%s", v8, "PNOScanDur");
    v45 = OSString::withCString(__str);
    if (!v45)
    {
      AppleBCMWLANCore::SendSlicesScanStatsCoreAnalytics(this);
      goto LABEL_46;
    }

    v46 = v45;
    v47 = OSNumber::withNumber(*(*(this + 9) + 144 * v5 + 19224), 0x40uLL);
    if (!v47)
    {
      AppleBCMWLANCore::SendSlicesScanStatsCoreAnalytics(this);
      goto LABEL_46;
    }

    v48 = v47;
    OSDictionary::setObject(v4, v46, v47);
    (v46->release)(v46);
    (v48->release)(v48);
    snprintf(__str, 0x1EuLL, "%s_%s", v8, "OtherScanDur");
    v49 = OSString::withCString(__str);
    if (!v49)
    {
      AppleBCMWLANCore::SendSlicesScanStatsCoreAnalytics(this);
      goto LABEL_46;
    }

    v50 = v49;
    v51 = OSNumber::withNumber(*(*(this + 9) + 144 * v5 + 19232), 0x40uLL);
    if (!v51)
    {
      AppleBCMWLANCore::SendSlicesScanStatsCoreAnalytics(this);
      goto LABEL_46;
    }

    v52 = v51;
    OSDictionary::setObject(v4, v50, v51);
    (v50->release)(v50);
    (v52->release)(v52);
    snprintf(__str, 0x1EuLL, "%s_%s", v8, "UserScanOffChDur");
    v53 = OSString::withCString(__str);
    if (!v53)
    {
      AppleBCMWLANCore::SendSlicesScanStatsCoreAnalytics(this);
      goto LABEL_46;
    }

    v54 = v53;
    v55 = OSNumber::withNumber(*(*(this + 9) + 144 * v5 + 19264), 0x40uLL);
    if (!v55)
    {
      AppleBCMWLANCore::SendSlicesScanStatsCoreAnalytics(this);
      goto LABEL_46;
    }

    v56 = v55;
    OSDictionary::setObject(v4, v54, v55);
    (v54->release)(v54);
    (v56->release)(v56);
    snprintf(__str, 0x1EuLL, "%s_%s", v8, "AssocScanOffChDur");
    v57 = OSString::withCString(__str);
    if (!v57)
    {
      AppleBCMWLANCore::SendSlicesScanStatsCoreAnalytics(this);
      goto LABEL_46;
    }

    v58 = v57;
    v59 = OSNumber::withNumber(*(*(this + 9) + 144 * v5 + 19272), 0x40uLL);
    if (!v59)
    {
      AppleBCMWLANCore::SendSlicesScanStatsCoreAnalytics(this);
      goto LABEL_46;
    }

    v60 = v59;
    OSDictionary::setObject(v4, v58, v59);
    (v58->release)(v58);
    (v60->release)(v60);
    snprintf(__str, 0x1EuLL, "%s_%s", v8, "RoamScanOffChDur");
    v61 = OSString::withCString(__str);
    if (!v61)
    {
      AppleBCMWLANCore::SendSlicesScanStatsCoreAnalytics(this);
      goto LABEL_46;
    }

    v62 = v61;
    v63 = OSNumber::withNumber(*(*(this + 9) + 144 * v5 + 19280), 0x40uLL);
    if (!v63)
    {
      AppleBCMWLANCore::SendSlicesScanStatsCoreAnalytics(this);
      goto LABEL_46;
    }

    v64 = v63;
    OSDictionary::setObject(v4, v62, v63);
    (v62->release)(v62);
    (v64->release)(v64);
    snprintf(__str, 0x1EuLL, "%s_%s", v8, "PNOScanOffChDur");
    v65 = OSString::withCString(__str);
    if (!v65)
    {
      AppleBCMWLANCore::SendSlicesScanStatsCoreAnalytics(this);
      goto LABEL_46;
    }

    v66 = v65;
    v67 = OSNumber::withNumber(*(*(this + 9) + 144 * v5 + 19288), 0x40uLL);
    if (!v67)
    {
      AppleBCMWLANCore::SendSlicesScanStatsCoreAnalytics(this);
      goto LABEL_46;
    }

    v68 = v67;
    OSDictionary::setObject(v4, v66, v67);
    (v66->release)(v66);
    (v68->release)(v68);
    snprintf(__str, 0x1EuLL, "%s_%s", v8, "OtherScanOffChDur");
    v69 = OSString::withCString(__str);
    if (!v69)
    {
      AppleBCMWLANCore::SendSlicesScanStatsCoreAnalytics(this);
      goto LABEL_46;
    }

    v70 = v69;
    v71 = OSNumber::withNumber(*(*(this + 9) + 144 * v5 + 19296), 0x40uLL);
    if (!v71)
    {
      AppleBCMWLANCore::SendSlicesScanStatsCoreAnalytics(this);
      goto LABEL_46;
    }

    v72 = v71;
    OSDictionary::setObject(v4, v70, v71);
    (v70->release)(v70);
    (v72->release)(v72);
    ++v5;
    v6 = v78 + 12;
    if (v5 != 3)
    {
      continue;
    }

    break;
  }

  v3 = v77;
  v73 = IOService::CoreAnalyticsSendEvent(this, 0, v77, v4, 0);
  if (v73)
  {
    v74 = v73;
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::SendSlicesScanStatsCoreAnalytics(this, this & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000, v77, v74);
      }
    }
  }

  v75 = 0;
LABEL_47:
  result = (v3->release)(v3);
  if (v4)
  {
    result = (v4->release)(v4);
  }

  if (v75)
  {
    return (*(*v75 + 16))(v75);
  }

  return result;
}

uint64_t AppleBCMWLANCore::sendePNOEventsCoreAnalytics(AppleBCMWLANCore *this, int a2)
{
  v3 = 0;
  if (a2 > 1)
  {
    if (a2 == 2)
    {
      v12 = OSString::withCString("com.apple.wifi.ePNOLostEventLegacy");
      if (!v12)
      {
        return AppleBCMWLANCore::sendePNOEventsCoreAnalytics(this);
      }

      v3 = v12;
      v13 = OSDictionary::withCapacity(1u);
      if (!v13)
      {
        AppleBCMWLANCore::sendePNOEventsCoreAnalytics(this);
        goto LABEL_48;
      }

      v4 = v13;
      v7 = "NetLostLegacyEvent";
    }

    else
    {
      v4 = 0;
      if (a2 != 3)
      {
        goto LABEL_29;
      }

      v8 = OSString::withCString("com.apple.wifi.ePNOLostEventLpsc");
      if (!v8)
      {
        return AppleBCMWLANCore::sendePNOEventsCoreAnalytics(this);
      }

      v3 = v8;
      v9 = OSDictionary::withCapacity(1u);
      if (!v9)
      {
        AppleBCMWLANCore::sendePNOEventsCoreAnalytics(this);
        goto LABEL_48;
      }

      v4 = v9;
      v7 = "NetLostLPSCEvent";
    }

LABEL_18:
    v14 = OSString::withCString(v7);
    if (v14)
    {
      v15 = v14;
      v16 = OSNumber::withNumber(1uLL, 0x20uLL);
      if (v16)
      {
        OSDictionary::setObject(v4, v15, v16);
        v17 = IOService::CoreAnalyticsSendEvent(this, 0, v3, v4, 0);
        if (v17)
        {
          v18 = v17;
          if ((*(*this + 1952))(this))
          {
            (*(*this + 1952))(this);
            if (CCLogStream::shouldLog())
            {
              AppleBCMWLANCore::sendePNOEventsCoreAnalytics(this, this & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000, v3, v18);
            }
          }
        }

        if ((*(*this + 1952))(this))
        {
          (*(*this + 1952))(this);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANCore::sendePNOEventsCoreAnalytics(this);
          }
        }
      }

      else
      {
        AppleBCMWLANCore::sendePNOEventsCoreAnalytics(this);
      }

      (v15->release)(v15);
      if (v16)
      {
        (v16->release)(v16);
      }

      goto LABEL_33;
    }

LABEL_29:
    result = (*(*this + 1952))(this);
    if (result)
    {
      (*(*this + 1952))(this);
      result = CCLogStream::shouldLog();
      if (result)
      {
        result = AppleBCMWLANCore::sendePNOEventsCoreAnalytics(this);
      }
    }

    if (!v3)
    {
      goto LABEL_34;
    }

    goto LABEL_33;
  }

  if (!a2)
  {
    v10 = OSString::withCString("com.apple.wifi.ePNOFoundEventLegacy");
    if (!v10)
    {
      return AppleBCMWLANCore::sendePNOEventsCoreAnalytics(this);
    }

    v3 = v10;
    v11 = OSDictionary::withCapacity(1u);
    if (!v11)
    {
      AppleBCMWLANCore::sendePNOEventsCoreAnalytics(this);
      goto LABEL_48;
    }

    v4 = v11;
    v7 = "NetFoundLegacyEvent";
    goto LABEL_18;
  }

  v4 = 0;
  if (a2 != 1)
  {
    goto LABEL_29;
  }

  v5 = OSString::withCString("com.apple.wifi.ePNOFoundEventLpsc");
  if (!v5)
  {
    return AppleBCMWLANCore::sendePNOEventsCoreAnalytics(this);
  }

  v3 = v5;
  v6 = OSDictionary::withCapacity(1u);
  if (v6)
  {
    v4 = v6;
    v7 = "NetFoundLPSCEvent";
    goto LABEL_18;
  }

  AppleBCMWLANCore::sendePNOEventsCoreAnalytics(this);
LABEL_48:
  v3 = v21;
  v4 = v22;
LABEL_33:
  result = (v3->release)(v3);
LABEL_34:
  if (v4)
  {
    release = v4->release;

    return (release)(v4);
  }

  return result;
}

uint64_t AppleBCMWLANCore::sendSCTxBlankingStatsEventCoreAnalytics(AppleBCMWLANCore *this)
{
  v2 = OSString::withCString("com.apple.wifi.SCTxBlankingStats");
  if (!v2)
  {
    return AppleBCMWLANCore::sendSCTxBlankingStatsEventCoreAnalytics(this);
  }

  v3 = v2;
  v4 = OSDictionary::withCapacity(0x11u);
  if (!v4)
  {
    AppleBCMWLANCore::sendSCTxBlankingStatsEventCoreAnalytics(this);
    goto LABEL_41;
  }

  v5 = OSString::withCString("NoBlkChannelCnt");
  if (!v5)
  {
    AppleBCMWLANCore::sendSCTxBlankingStatsEventCoreAnalytics(this);
    goto LABEL_41;
  }

  v6 = v5;
  v7 = OSNumber::withNumber(*(*(this + 9) + 18088), 0x40uLL);
  if (v7)
  {
    v8 = v7;
    OSDictionary::setObject(v4, v6, v7);
    (v6->release)(v6);
    (v8->release)(v8);
    v9 = OSString::withCString("UppBoundBin1");
    if (!v9)
    {
      AppleBCMWLANCore::sendSCTxBlankingStatsEventCoreAnalytics(this);
      goto LABEL_41;
    }

    v6 = v9;
    v10 = OSNumber::withNumber(*(*(this + 9) + 17960), 0x20uLL);
    if (v10)
    {
      v11 = v10;
      OSDictionary::setObject(v4, v6, v10);
      (v6->release)(v6);
      (v11->release)(v11);
      v12 = OSString::withCString("CntAcBtTxBin1");
      if (!v12)
      {
        AppleBCMWLANCore::sendSCTxBlankingStatsEventCoreAnalytics(this);
        goto LABEL_41;
      }

      v6 = v12;
      v13 = OSNumber::withNumber(*(*(this + 9) + 17968), 0x40uLL);
      if (v13)
      {
        v14 = v13;
        OSDictionary::setObject(v4, v6, v13);
        (v6->release)(v6);
        (v14->release)(v14);
        v15 = OSString::withCString("CntMcTxBin1");
        if (!v15)
        {
          AppleBCMWLANCore::sendSCTxBlankingStatsEventCoreAnalytics(this);
          goto LABEL_41;
        }

        v6 = v15;
        v16 = OSNumber::withNumber(*(*(this + 9) + 17976), 0x40uLL);
        if (v16)
        {
          v17 = v16;
          OSDictionary::setObject(v4, v6, v16);
          (v6->release)(v6);
          (v17->release)(v17);
          v18 = OSString::withCString("CntTotalBin1");
          if (!v18)
          {
            AppleBCMWLANCore::sendSCTxBlankingStatsEventCoreAnalytics(this);
            goto LABEL_41;
          }

          v6 = v18;
          v19 = OSNumber::withNumber(*(*(this + 9) + 17984), 0x40uLL);
          if (v19)
          {
            v20 = v19;
            OSDictionary::setObject(v4, v6, v19);
            (v6->release)(v6);
            (v20->release)(v20);
            v21 = OSString::withCString("UppBoundBin2");
            if (!v21)
            {
              AppleBCMWLANCore::sendSCTxBlankingStatsEventCoreAnalytics(this);
              goto LABEL_41;
            }

            v6 = v21;
            v22 = OSNumber::withNumber(*(*(this + 9) + 17992), 0x20uLL);
            if (v22)
            {
              v23 = v22;
              OSDictionary::setObject(v4, v6, v22);
              (v6->release)(v6);
              (v23->release)(v23);
              v24 = OSString::withCString("CntAcBtTxBin2");
              if (!v24)
              {
                AppleBCMWLANCore::sendSCTxBlankingStatsEventCoreAnalytics(this);
                goto LABEL_41;
              }

              v6 = v24;
              v25 = OSNumber::withNumber(*(*(this + 9) + 18000), 0x40uLL);
              if (v25)
              {
                v26 = v25;
                OSDictionary::setObject(v4, v6, v25);
                (v6->release)(v6);
                (v26->release)(v26);
                v27 = OSString::withCString("CntMcTxBin2");
                if (!v27)
                {
                  AppleBCMWLANCore::sendSCTxBlankingStatsEventCoreAnalytics(this);
                  goto LABEL_41;
                }

                v6 = v27;
                v28 = OSNumber::withNumber(*(*(this + 9) + 18008), 0x40uLL);
                if (v28)
                {
                  v29 = v28;
                  OSDictionary::setObject(v4, v6, v28);
                  (v6->release)(v6);
                  (v29->release)(v29);
                  v30 = OSString::withCString("CntTotalBin2");
                  if (!v30)
                  {
                    AppleBCMWLANCore::sendSCTxBlankingStatsEventCoreAnalytics(this);
                    goto LABEL_41;
                  }

                  v6 = v30;
                  v31 = OSNumber::withNumber(*(*(this + 9) + 18016), 0x40uLL);
                  if (v31)
                  {
                    v32 = v31;
                    OSDictionary::setObject(v4, v6, v31);
                    (v6->release)(v6);
                    (v32->release)(v32);
                    v33 = OSString::withCString("UppBoundBin3");
                    if (!v33)
                    {
                      AppleBCMWLANCore::sendSCTxBlankingStatsEventCoreAnalytics(this);
                      goto LABEL_41;
                    }

                    v6 = v33;
                    v34 = OSNumber::withNumber(*(*(this + 9) + 18024), 0x20uLL);
                    if (v34)
                    {
                      v35 = v34;
                      OSDictionary::setObject(v4, v6, v34);
                      (v6->release)(v6);
                      (v35->release)(v35);
                      v36 = OSString::withCString("CntAcBtTxBin3");
                      if (!v36)
                      {
                        AppleBCMWLANCore::sendSCTxBlankingStatsEventCoreAnalytics(this);
                        goto LABEL_41;
                      }

                      v6 = v36;
                      v37 = OSNumber::withNumber(*(*(this + 9) + 18032), 0x40uLL);
                      if (v37)
                      {
                        v38 = v37;
                        OSDictionary::setObject(v4, v6, v37);
                        (v6->release)(v6);
                        (v38->release)(v38);
                        v39 = OSString::withCString("CntMcTxBin3");
                        if (!v39)
                        {
                          AppleBCMWLANCore::sendSCTxBlankingStatsEventCoreAnalytics(this);
                          goto LABEL_41;
                        }

                        v6 = v39;
                        v40 = OSNumber::withNumber(*(*(this + 9) + 18040), 0x40uLL);
                        if (v40)
                        {
                          v41 = v40;
                          OSDictionary::setObject(v4, v6, v40);
                          (v6->release)(v6);
                          (v41->release)(v41);
                          v42 = OSString::withCString("CntTotalBin3");
                          if (!v42)
                          {
                            AppleBCMWLANCore::sendSCTxBlankingStatsEventCoreAnalytics(this);
                            goto LABEL_41;
                          }

                          v6 = v42;
                          v43 = OSNumber::withNumber(*(*(this + 9) + 18048), 0x40uLL);
                          if (v43)
                          {
                            v44 = v43;
                            OSDictionary::setObject(v4, v6, v43);
                            (v6->release)(v6);
                            (v44->release)(v44);
                            v45 = OSString::withCString("UppBoundBin4");
                            if (!v45)
                            {
                              AppleBCMWLANCore::sendSCTxBlankingStatsEventCoreAnalytics(this);
                              goto LABEL_41;
                            }

                            v6 = v45;
                            v46 = OSNumber::withNumber(*(*(this + 9) + 18056), 0x20uLL);
                            if (v46)
                            {
                              v47 = v46;
                              OSDictionary::setObject(v4, v6, v46);
                              (v6->release)(v6);
                              (v47->release)(v47);
                              v48 = OSString::withCString("CntAcBtTxBin4");
                              if (!v48)
                              {
                                AppleBCMWLANCore::sendSCTxBlankingStatsEventCoreAnalytics(this);
                                goto LABEL_41;
                              }

                              v6 = v48;
                              v49 = OSNumber::withNumber(*(*(this + 9) + 18064), 0x40uLL);
                              if (v49)
                              {
                                v50 = v49;
                                OSDictionary::setObject(v4, v6, v49);
                                (v6->release)(v6);
                                (v50->release)(v50);
                                v51 = OSString::withCString("CntMcTxBin4");
                                if (!v51)
                                {
                                  AppleBCMWLANCore::sendSCTxBlankingStatsEventCoreAnalytics(this);
                                  goto LABEL_41;
                                }

                                v6 = v51;
                                v52 = OSNumber::withNumber(*(*(this + 9) + 18072), 0x40uLL);
                                if (v52)
                                {
                                  v53 = v52;
                                  OSDictionary::setObject(v4, v6, v52);
                                  (v6->release)(v6);
                                  (v53->release)(v53);
                                  v54 = OSString::withCString("CntTotalBin4");
                                  if (!v54)
                                  {
                                    AppleBCMWLANCore::sendSCTxBlankingStatsEventCoreAnalytics(this);
                                    goto LABEL_41;
                                  }

                                  v6 = v54;
                                  v55 = OSNumber::withNumber(*(*(this + 9) + 18080), 0x40uLL);
                                  if (v55)
                                  {
                                    v56 = v55;
                                    OSDictionary::setObject(v4, v6, v55);
                                    (v6->release)(v6);
                                    (v56->release)(v56);
                                    v57 = IOService::CoreAnalyticsSendEvent(this, 0, v3, v4, 0);
                                    if (v57)
                                    {
                                      v58 = v57;
                                      if ((*(*this + 1952))(this))
                                      {
                                        (*(*this + 1952))(this);
                                        if (CCLogStream::shouldLog())
                                        {
                                          AppleBCMWLANCore::sendSCTxBlankingStatsEventCoreAnalytics(this, this & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000, v3, v58);
                                        }
                                      }
                                    }

                                    goto LABEL_41;
                                  }

                                  if (AppleBCMWLANCore::sendTxDCSlice0Ant0StatsCoreAnalytics(this))
                                  {
                                    goto LABEL_98;
                                  }

                                  v61 = 43223;
LABEL_100:
                                  v62 = (*(*this + 1952))(this);
                                  CCLogStream::logAlert(v62, "[dk] %s@%d:Fail to allocate numValue\n", "sendSCTxBlankingStatsEventCoreAnalytics", v61);
                                  goto LABEL_101;
                                }

                                if ((AppleBCMWLANCore::sendTxDCSlice0Ant0StatsCoreAnalytics(this) & 1) == 0)
                                {
                                  v61 = 43215;
                                  goto LABEL_100;
                                }
                              }

                              else if ((AppleBCMWLANCore::sendTxDCSlice0Ant0StatsCoreAnalytics(this) & 1) == 0)
                              {
                                v61 = 43207;
                                goto LABEL_100;
                              }
                            }

                            else if ((AppleBCMWLANCore::sendTxDCSlice0Ant0StatsCoreAnalytics(this) & 1) == 0)
                            {
                              v61 = 43199;
                              goto LABEL_100;
                            }
                          }

                          else if ((AppleBCMWLANCore::sendTxDCSlice0Ant0StatsCoreAnalytics(this) & 1) == 0)
                          {
                            v61 = 43191;
                            goto LABEL_100;
                          }
                        }

                        else if ((AppleBCMWLANCore::sendTxDCSlice0Ant0StatsCoreAnalytics(this) & 1) == 0)
                        {
                          v61 = 43183;
                          goto LABEL_100;
                        }
                      }

                      else if ((AppleBCMWLANCore::sendTxDCSlice0Ant0StatsCoreAnalytics(this) & 1) == 0)
                      {
                        v61 = 43175;
                        goto LABEL_100;
                      }
                    }

                    else if ((AppleBCMWLANCore::sendTxDCSlice0Ant0StatsCoreAnalytics(this) & 1) == 0)
                    {
                      v61 = 43167;
                      goto LABEL_100;
                    }
                  }

                  else if ((AppleBCMWLANCore::sendTxDCSlice0Ant0StatsCoreAnalytics(this) & 1) == 0)
                  {
                    v61 = 43159;
                    goto LABEL_100;
                  }
                }

                else if ((AppleBCMWLANCore::sendTxDCSlice0Ant0StatsCoreAnalytics(this) & 1) == 0)
                {
                  v61 = 43151;
                  goto LABEL_100;
                }
              }

              else if ((AppleBCMWLANCore::sendTxDCSlice0Ant0StatsCoreAnalytics(this) & 1) == 0)
              {
                v61 = 43143;
                goto LABEL_100;
              }
            }

            else if ((AppleBCMWLANCore::sendTxDCSlice0Ant0StatsCoreAnalytics(this) & 1) == 0)
            {
              v61 = 43135;
              goto LABEL_100;
            }
          }

          else if ((AppleBCMWLANCore::sendTxDCSlice0Ant0StatsCoreAnalytics(this) & 1) == 0)
          {
            v61 = 43127;
            goto LABEL_100;
          }
        }

        else if ((AppleBCMWLANCore::sendTxDCSlice0Ant0StatsCoreAnalytics(this) & 1) == 0)
        {
          v61 = 43119;
          goto LABEL_100;
        }
      }

      else if ((AppleBCMWLANCore::sendTxDCSlice0Ant0StatsCoreAnalytics(this) & 1) == 0)
      {
        v61 = 43111;
        goto LABEL_100;
      }
    }

    else if ((AppleBCMWLANCore::sendTxDCSlice0Ant0StatsCoreAnalytics(this) & 1) == 0)
    {
      v61 = 43103;
      goto LABEL_100;
    }
  }

  else if ((AppleBCMWLANCore::sendTxDCSlice0Ant0StatsCoreAnalytics(this) & 1) == 0)
  {
    v61 = 43095;
    goto LABEL_100;
  }

LABEL_98:
  v6 = v63;
LABEL_101:
  (v6->release)(v6);
LABEL_41:
  result = (v3->release)(v3);
  if (v4)
  {
    release = v4->release;

    return (release)(v4);
  }

  return result;
}

uint64_t *AppleBCMWLANCore::updateDynSARSimpleReport(uint64_t *this, unsigned int a2)
{
  v3 = this + 9;
  v4 = a2;
  v5 = (this[9] + (a2 << 6));
  v6 = v5[593];
  v7 = v5[577];
  v8 = v6 >= v7;
  v9 = v6 - v7;
  v10 = !v8;
  v11 = v5[594];
  v12 = v5[578];
  v8 = v11 >= v12;
  v13 = v11 - v12;
  v14 = !v8;
  v15 = v5[595];
  v16 = v5[579];
  v8 = v15 >= v16;
  v17 = v15 - v16;
  v18 = !v8;
  v19 = v5[596];
  v20 = v5[580];
  v8 = v19 >= v20;
  v21 = v19 - v20;
  v22 = !v8;
  v23 = v5[597];
  v24 = v5[581];
  v8 = v23 >= v24;
  v25 = v23 - v24;
  v26 = !v8;
  v27 = v5[598];
  v28 = v5[582];
  v8 = v27 >= v28;
  v29 = v27 - v28;
  v30 = !v8;
  v31 = v5[599];
  v32 = v5[583];
  v8 = v31 >= v32;
  v33 = v31 - v32;
  v34 = !v8;
  if ((v10 & 1) != 0 || (v14 & 1) != 0 || (v18 & 1) != 0 || (v22 & 1) != 0 || (v26 & 1) != 0 || (v30 & 1) != 0 || v34)
  {
    return AppleBCMWLANCore::updateDynSARSimpleReport(this);
  }

  v5[561] = v9;
  *(*v3 + (v4 << 6) + 4496) = v13;
  *(*v3 + (v4 << 6) + 4504) = v17;
  *(*v3 + (v4 << 6) + 4512) = v21;
  *(*v3 + (v4 << 6) + 4520) = v25;
  *(*v3 + (v4 << 6) + 4528) = v29;
  *(*v3 + (v4 << 6) + 4536) = v33;
  *(*v3 + (v4 << 6) + 4544) = *(*v3 + (v4 << 6) + 4800);
  return this;
}

double AppleBCMWLANCore::collectDynSARPerSliceSummary(AppleBCMWLANCore *this, unsigned int a2)
{
  v2 = a2;
  if (*(*(this + 9) + (a2 << 6) + 4800))
  {
    AppleBCMWLANCore::updateDynSARSimpleReport(this, a2);
    AppleBCMWLANCore::sendDynSARPerSliceStatsCoreAnalytics(this, a2);
    v5 = (*(this + 9) + (v2 << 6));
    v6 = (v5 + 4616);
    v5 = (v5 + 4744);
    v7 = v5[1];
    *v6 = *v5;
    v6[1] = v7;
    v8 = v5[3];
    v6[2] = v5[2];
    v6[3] = v8;
    v9 = (*(this + 9) + (v2 << 6) + 4488);
    result = 0.0;
    *v9 = 0u;
    v9[1] = 0u;
    v9[2] = 0u;
    v9[3] = 0u;
    v11 = (*(this + 9) + (v2 << 6) + 4744);
    v11[2] = 0u;
    v11[3] = 0u;
    *v11 = 0u;
    v11[1] = 0u;
  }

  return result;
}

double AppleBCMWLANCore::collectTxDCSlice0Ant0Summary(AppleBCMWLANCore *this)
{
  v2 = *(this + 9);
  if (*(v2 + 5504) && *(v2 + 6296))
  {
    AppleBCMWLANIOReportingCore::reportTxDCSlice0Ant0();
    v2 = *(this + 9);
  }

  if (*(v2 + 6296))
  {
    AppleBCMWLANCore::sendTxDCSlice0Ant0StatsCoreAnalytics(this);
    v2 = *(this + 9);
  }

  *(v2 + 6376) = 0;
  result = 0.0;
  *(v2 + 6344) = 0u;
  *(v2 + 6360) = 0u;
  *(v2 + 6312) = 0u;
  *(v2 + 6328) = 0u;
  *(v2 + 6296) = 0u;
  return result;
}

double AppleBCMWLANCore::collectTxDCSlice1Ant0Summary(AppleBCMWLANCore *this)
{
  v2 = *(this + 9);
  if (*(v2 + 5504) && *(v2 + 6384))
  {
    AppleBCMWLANIOReportingCore::reportTxDCSlice1Ant0();
    v2 = *(this + 9);
  }

  if (*(v2 + 6384))
  {
    AppleBCMWLANCore::sendTxDCSlice1Ant0StatsCoreAnalytics(this);
    v2 = *(this + 9);
  }

  *(v2 + 6464) = 0;
  result = 0.0;
  *(v2 + 6448) = 0u;
  *(v2 + 6432) = 0u;
  *(v2 + 6416) = 0u;
  *(v2 + 6400) = 0u;
  *(v2 + 6384) = 0u;
  return result;
}

double AppleBCMWLANCore::collectSCTxBlankingSummary(AppleBCMWLANCore *this)
{
  v2 = *(this + 9);
  v3 = *(v2 + 5504);
  if (v3)
  {
    AppleBCMWLANIOReportingCore::reportSCTxBlankingStats(v3, v2 + 17960);
  }

  AppleBCMWLANCore::sendSCTxBlankingStatsEventCoreAnalytics(this);
  v4 = *(this + 9);
  *(v4 + 18088) = 0;
  result = 0.0;
  *(v4 + 18056) = 0u;
  *(v4 + 18072) = 0u;
  *(v4 + 18024) = 0u;
  *(v4 + 18040) = 0u;
  *(v4 + 17992) = 0u;
  *(v4 + 18008) = 0u;
  *(v4 + 17960) = 0u;
  *(v4 + 17976) = 0u;
  v6 = *(this + 9);
  *(v6 + 18088) = 0;
  *(v6 + 18056) = 0u;
  *(v6 + 18072) = 0u;
  *(v6 + 18024) = 0u;
  *(v6 + 18040) = 0u;
  *(v6 + 17992) = 0u;
  *(v6 + 18008) = 0u;
  *(v6 + 17960) = 0u;
  *(v6 + 17976) = 0u;
  *(*(this + 9) + 17960) = 25;
  *(*(this + 9) + 17992) = 40;
  *(*(this + 9) + 18024) = 70;
  *(*(this + 9) + 18056) = 100;
  return result;
}

uint64_t AppleBCMWLANCore::configureLPASEntry(AppleBCMWLANCore *this)
{
  if ((*(*this + 1952))(this))
  {
    (*(*this + 1952))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::configureLPASEntry(this);
    }
  }

  v2 = AppleBCMWLANCore::configureLPASMode(this, 1);
  if (v2)
  {
    v3 = v2;
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::configureLPASEntry(this);
      }
    }
  }

  else
  {
    v4 = AppleBCMWLANCore::configurePktFilters(this);
    if (v4)
    {
      v3 = v4;
      AppleBCMWLANCore::unConfigurePktFilters(this);
      if ((*(*this + 1952))(this))
      {
        (*(*this + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::configureLPASEntry(this);
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
          AppleBCMWLANCore::configureLPASEntry(this);
        }
      }

      return 0;
    }
  }

  return v3;
}

uint64_t AppleBCMWLANCore::configureWoWEntry(AppleBCMWLANCore *this)
{
  if ((*(*this + 1952))(this))
  {
    (*(*this + 1952))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::configureWoWEntry(this);
    }
  }

  v2 = AppleBCMWLANKeepAliveOffload::configureKeepAlives(*(*(this + 9) + 5544));
  if (v2)
  {
    if (v2 == -536870201)
    {
      if ((*(*this + 1952))(this))
      {
        (*(*this + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::configureWoWEntry(this);
        }
      }
    }

    else if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::configureWoWEntry(this);
      }
    }
  }

  v3 = AppleBCMWLANCore::configurePktFilters(this);
  v4 = (*(*this + 1952))(this);
  if (v3)
  {
    if (v4)
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::configureWoWEntry(this);
      }
    }

    v5 = AppleBCMWLANCore::unConfigurePktFilters(this);
    if (v5)
    {
      if ((*(*this + 1952))(this))
      {
        (*(*this + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::configureWoWEntry(this);
        }
      }

      AppleBCMWLANCore::resetPktFilterParams(this);
    }
  }

  else
  {
    if (v4)
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::configureWoWEntry(this);
      }
    }

    return 0;
  }

  return v5;
}

uint64_t AppleBCMWLANCore::isMIMOPowerSaveEnabled(AppleBCMWLANCore *this)
{
  result = AppleBCMWLANCore::featureFlagIsBitSet(this, 44);
  if (result)
  {
    v3 = *(*(this + 9) + 5464);

    return AppleBCMWLANConfigManager::isMIMOPSSupported(v3);
  }

  return result;
}

uint64_t AppleBCMWLANCore::configureAssociatedSleepEntryParams(AppleBCMWLANCore *this)
{
  v2 = this & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000;
  if ((*(*this + 1952))(this))
  {
    (*(*this + 1952))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::configureAssociatedSleepEntryParams(this);
    }
  }

  v3 = *(this + 9);
  v13 = 1;
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
        AppleBCMWLANCore::configureAssociatedSleepEntryParams(this);
      }
    }
  }

  AppleBCMWLANCore::configureAvgRssiParamsForAssociatedSleepEntry(this);
  AppleBCMWLANCore::configureEventBitMaskForAssociatedSleep(this);
  AppleBCMWLANCore::resetClockDrifts(this);
  if (AppleBCMWLANCore::featureFlagIsBitSet(this, 39))
  {
    v10 = 0;
    v5 = *(*(this + 9) + 5408);
    v11 = &v10;
    v12 = 4;
    v6 = AppleBCMWLANCommander::runIOVarSet(v5, "lq_max_bcn_thresh", &v11, 0, 0);
    v7 = v6;
    if (v6 != -469794537 && v6 != 0)
    {
      if ((*(*this + 1952))(this))
      {
        (*(*this + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::configureAssociatedSleepEntryParams(this, v2, &v10, v7);
        }
      }
    }
  }

  if ((*(*this + 1952))(this))
  {
    (*(*this + 1952))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::configureAssociatedSleepEntryParams(this);
    }
  }

  *(*(this + 9) + 776) = 1;
  *(*(this + 9) + 778) = 1;
  if ((*(*this + 1952))(this))
  {
    (*(*this + 1952))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::configureAssociatedSleepEntryParams(this);
    }
  }

  return 0;
}

uint64_t AppleBCMWLANCore::configureLPASMode(AppleBCMWLANCore *this, int a2)
{
  v16 = a2;
  v4 = this & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000;
  if ((*(*this + 1952))(this))
  {
    (*(*this + 1952))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::configureLPASMode(this);
    }
  }

  if (AppleBCMWLANCore::featureFlagIsBitSet(this, 26) && (!AppleBCMWLANCore::featureFlagIsBitSet(this, 70) || (*(*(this + 9) + 19801) & 4) == 0))
  {
    v5 = (*(*this + 88))(this);
    if ((*(*v5 + 136))(v5))
    {
      v6 = IOMallocZeroTyped();
      if (!v6)
      {
        v8 = 0;
        goto LABEL_29;
      }

      v7 = v6;
      *v6 = a2;
      v13 = this;
      v14 = AppleBCMWLANCore::handleSetLpasAsyncCallBack;
      v15 = v6;
      v8 = AppleBCMWLANCommander::sendIOVarSet(*(*(this + 9) + 5408), "lpas");
      if (v8)
      {
        IOFree(v7, 4uLL);
      }
    }

    else
    {
      v9 = *(*(this + 9) + 5408);
      v13 = &v16;
      v14 = 4;
      v8 = AppleBCMWLANCommander::runIOVarSet(v9, "lpas", &v13, 0, 0);
    }

    v10 = (*(*this + 1952))(this);
    if (v8)
    {
      if (v10)
      {
        (*(*this + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::configureLPASMode(this);
        }
      }

      v11 = *(this + 9);
      goto LABEL_28;
    }

    if (v10)
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::configureLPASMode(this, v4, &v16);
      }
    }

    v11 = *(this + 9);
    if (v16 != 1)
    {
      v8 = 0;
LABEL_28:
      atomic_fetch_and((v11 + 10376), 0xFF7FFFFF);
      goto LABEL_29;
    }

    v8 = 0;
    atomic_fetch_or((v11 + 10376), 0x800000u);
LABEL_29:
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::configureLPASMode(this);
      }
    }

    return v8;
  }

  if ((*(*this + 1952))(this))
  {
    (*(*this + 1952))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::configureLPASMode(this);
    }
  }

  return 0;
}

uint64_t AppleBCMWLANCore::configurePktFilters(AppleBCMWLANCore *this)
{
  if ((*(*this + 1952))(this))
  {
    (*(*this + 1952))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::configurePktFilters(this);
    }
  }

  if (IO80211BssManager::isAssociated(*(*(this + 9) + 5432)))
  {
    v2 = IOMallocZeroData();
    if (!v2)
    {
      v5 = 3758097085;
      if ((*(*this + 1952))(this))
      {
        (*(*this + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::configurePktFilters(this);
        }
      }

      goto LABEL_18;
    }

    v3 = *(*(this + 9) + 11288);
    PacketFilterData = IO80211InfraInterface::getPacketFilterData();
    if (PacketFilterData)
    {
      v5 = PacketFilterData;
      if ((*(*this + 1952))(this))
      {
        (*(*this + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::configurePktFilters(this);
        }
      }

LABEL_18:
      IOFreeData();
      return v5;
    }

    v7 = v2[1];
    *(*(this + 9) + 9484) = *v2;
    *(*(this + 9) + 9488) = 0;
    *(*(this + 9) + 10036) = v7;
    v8 = *(this + 9);
    if (*(v8 + 10036))
    {
      v9 = 0;
      v10 = (v2 + 2);
      v11 = 9524;
      do
      {
        v12 = *v10++;
        *(v8 + v11) = v12;
        ++v9;
        v8 = *(this + 9);
        v11 += 16;
      }

      while (v9 < *(v8 + 10036));
    }

    v13 = (v8 + 9780);
    v13[14] = 0u;
    v13[15] = 0u;
    v13[12] = 0u;
    v13[13] = 0u;
    v13[10] = 0u;
    v13[11] = 0u;
    v13[8] = 0u;
    v13[9] = 0u;
    v13[6] = 0u;
    v13[7] = 0u;
    v13[4] = 0u;
    v13[5] = 0u;
    v13[2] = 0u;
    v13[3] = 0u;
    *v13 = 0u;
    v13[1] = 0u;
    v14 = *(this + 9);
    v15 = *(v14 + 9484);
    v16 = *(v14 + 9488);
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        v49 = (*(*this + 1952))(this);
        v43 = *(this + 9);
        v44 = *(v43 + 5464);
        if (v44)
        {
          v48 = AppleBCMWLANConfigManager::wompEnabled(v44);
          v43 = *(this + 9);
        }

        else
        {
          v48 = 0;
        }

        v47 = *(v43 + 10310);
        v45 = *(v43 + 10036);
        isIPv6AlreadyProgrammed = AppleBCMWLANCore::isIPv6AlreadyProgrammed(this);
        CCLogStream::logAlert(v49, "[dk] %s@%d: WOMP:[%u], configured[%u], wow ipv4[%u.%u.%u.%u], prog ipv4[%u.%u.%u.%u], fWoWIPv6AddressCount[%u] isIPv6AlreadyProgrammed[%u]\n", "configurePktFilters", 50107, v48, v47, v15, BYTE1(v15), BYTE2(v15), HIBYTE(v15), v16, BYTE1(v16), BYTE2(v16), HIBYTE(v16), v45, isIPv6AlreadyProgrammed);
      }
    }

    IsBitSet = AppleBCMWLANCore::featureFlagIsBitSet(this, 31);
    v18 = *(this + 9);
    if (IsBitSet)
    {
      if (AppleBCMWLANConfigManager::wompEnabled(*(v18 + 5464)))
      {
        goto LABEL_55;
      }

      if (*(*(this + 9) + 9484) == *(*(this + 9) + 9488))
      {
        v19 = 0;
      }

      else
      {
        AppleBCMWLANCore::deleteIPv4PktFilters(this);
        v21 = AppleBCMWLANCore::configureComplexFilters(this, 102, 0);
        if (v21)
        {
          v5 = v21;
          if ((*(*this + 1952))(this))
          {
            (*(*this + 1952))(this);
            if (CCLogStream::shouldLog())
            {
              AppleBCMWLANCore::configurePktFilters(this);
            }
          }

          goto LABEL_18;
        }

        v19 = 1;
      }

      if (!AppleBCMWLANCore::isIPv6AlreadyProgrammed(this))
      {
        AppleBCMWLANCore::deleteIPv6PktFilters(this);
        if (AppleBCMWLANCore::configureMaxPktFilter(this))
        {
          if ((*(*this + 1952))(this))
          {
            (*(*this + 1952))(this);
            if (CCLogStream::shouldLog())
            {
              AppleBCMWLANCore::configurePktFilters(this);
            }
          }
        }

        if (*(*(this + 9) + 10036))
        {
          v22 = 0;
          while (1)
          {
            v23 = AppleBCMWLANCore::configureComplexFilters(this, 107, v22);
            if (v23)
            {
              break;
            }

            if (*(*(this + 9) + 10036) <= ++v22)
            {
              goto LABEL_50;
            }
          }

          v5 = v23;
          if ((*(*this + 1952))(this))
          {
            (*(*this + 1952))(this);
            if (CCLogStream::shouldLog())
            {
              AppleBCMWLANCore::configurePktFilters(this);
            }
          }

          goto LABEL_18;
        }

LABEL_50:
        v19 |= 2u;
      }

      AppleBCMWLANCore::deleteEapolFilter(this);
      AppleBCMWLANCore::configureEapolFilter(this);
      if (!v19)
      {
LABEL_55:
        v24 = AppleBCMWLANConfigManager::wompEnabled(*(*(this + 9) + 5464));
        v25 = *(this + 9);
        if (v24 && (*(v25 + 10310) & 1) == 0)
        {
          AppleBCMWLANCore::deleteMagicPktFilters(this);
          v27 = AppleBCMWLANCore::configureMagicPktFilter(this, v26, 0, 14);
          if (v27)
          {
            v5 = v27;
            if ((*(*this + 1952))(this))
            {
              (*(*this + 1952))(this);
              if (CCLogStream::shouldLog())
              {
                AppleBCMWLANCore::configurePktFilters(this);
              }
            }

            goto LABEL_18;
          }

          *(*(this + 9) + 10310) = 1;
          v25 = *(this + 9);
        }

        if ((*(v25 + 10310) & 1) == 0)
        {
          AppleBCMWLANCore::deleteMagicPktFilters(this);
          v29 = *(this + 9);
          if (*(v29 + 19848) >= -1)
          {
            v30 = 0;
            while (1)
            {
              v31 = AppleBCMWLANCore::configureMagicPktFilter(this, v28, v30, 0);
              if (v31)
              {
                break;
              }

              v29 = *(this + 9);
              if (v30++ > *(v29 + 19848))
              {
                goto LABEL_67;
              }
            }

            v5 = v31;
            if ((*(*this + 1952))(this))
            {
              (*(*this + 1952))(this);
              if (CCLogStream::shouldLog())
              {
                AppleBCMWLANCore::configurePktFilters(this);
              }
            }

            goto LABEL_18;
          }

LABEL_67:
          *(v29 + 10310) = 1;
        }

        if (AppleBCMWLANCore::featureFlagIsBitSet(this, 31))
        {
          if (*(*(this + 9) + 777) == 1)
          {
            AppleBCMWLANCore::ignoreUnicastPackets(this);
          }

          else
          {
            if (!AppleBCMWLANCore::getActivePortsFromNetworkStack(this) && AppleBCMWLANCore::configureActivePortsInToChip(this, 286326785))
            {
              if ((*(*this + 1952))(this))
              {
                (*(*this + 1952))(this);
                if (CCLogStream::shouldLog())
                {
                  AppleBCMWLANCore::configurePktFilters(this);
                }
              }

              *(*(this + 9) + 10300) = 0;
            }

            if (!*(*(this + 9) + 10300))
            {
              AppleBCMWLANCore::configureActivePortsInToChip(this, 286326786);
            }
          }
        }

        if (AppleBCMWLANConfigManager::wompEnabled(*(*(this + 9) + 5464)))
        {
          v5 = AppleBCMWLANCore::enablePacketFilters(this, 104);
          v33 = (*(*this + 1952))(this);
          if (v5)
          {
            if (v33)
            {
              (*(*this + 1952))(this);
              if (CCLogStream::shouldLog())
              {
                AppleBCMWLANCore::configurePktFilters(this);
              }
            }

            goto LABEL_18;
          }

          if (v33)
          {
            (*(*this + 1952))(this);
            if (CCLogStream::shouldLog())
            {
              AppleBCMWLANCore::configurePktFilters(this);
            }
          }
        }

        else
        {
          if (*(*(this + 9) + 10041))
          {
            v5 = AppleBCMWLANCore::enablePacketFilters(this, 102);
            v34 = (*(*this + 1952))(this);
            if (v5)
            {
              if (v34)
              {
                (*(*this + 1952))(this);
                if (CCLogStream::shouldLog())
                {
                  AppleBCMWLANCore::configurePktFilters(this);
                }
              }

              goto LABEL_18;
            }

            if (v34)
            {
              (*(*this + 1952))(this);
              if (CCLogStream::shouldLog())
              {
                AppleBCMWLANCore::configurePktFilters(this);
              }
            }
          }

          v5 = AppleBCMWLANCore::configureARPOffload(this, 1);
          v35 = (*(*this + 1952))(this);
          if (v5)
          {
            if (v35)
            {
              (*(*this + 1952))(this);
              if (CCLogStream::shouldLog())
              {
                AppleBCMWLANCore::configurePktFilters(this);
              }
            }

            goto LABEL_18;
          }

          if (v35)
          {
            (*(*this + 1952))(this);
            if (CCLogStream::shouldLog())
            {
              AppleBCMWLANCore::configurePktFilters(this);
            }
          }

          if (!AppleBCMWLANCore::configureICMP(this, 1))
          {
            if ((*(*this + 1952))(this))
            {
              (*(*this + 1952))(this);
              if (CCLogStream::shouldLog())
              {
                AppleBCMWLANCore::configurePktFilters(this);
              }
            }
          }

          v5 = AppleBCMWLANCore::configureNeighbourDiscovery(this, 1);
          if (!v5)
          {
            if ((*(*this + 1952))(this))
            {
              (*(*this + 1952))(this);
              if (CCLogStream::shouldLog())
              {
                AppleBCMWLANCore::configurePktFilters(this);
              }
            }
          }

          if (*(*(this + 9) + 10040))
          {
            if ((*(*this + 1952))(this))
            {
              (*(*this + 1952))(this);
              if (CCLogStream::shouldLog())
              {
                AppleBCMWLANCore::configurePktFilters(this);
              }
            }
          }

          v36 = *(this + 9);
          if (*(v36 + 10040))
          {
            v37 = 107;
            while (1)
            {
              v5 = AppleBCMWLANCore::enablePacketFilters(this, v37);
              v38 = (*(*this + 1952))(this);
              if (v5)
              {
                break;
              }

              if (v38)
              {
                (*(*this + 1952))(this);
                if (CCLogStream::shouldLog())
                {
                  AppleBCMWLANCore::configurePktFilters(this);
                }
              }

              v36 = *(this + 9);
              v39 = v37 - 106;
              ++v37;
              if (v39 >= *(v36 + 10040))
              {
                v5 = 0;
                goto LABEL_132;
              }
            }

            if (v38)
            {
              (*(*this + 1952))(this);
              if (CCLogStream::shouldLog())
              {
                AppleBCMWLANCore::configurePktFilters(this);
              }
            }

            goto LABEL_18;
          }

LABEL_132:
          if (*(v36 + 19848) >= -1)
          {
            v40 = -1;
            while (1)
            {
              v41 = AppleBCMWLANCore::enablePacketFilters(this, v40 + 105);
              if (v41)
              {
                break;
              }

              if (++v40 > *(*(this + 9) + 19848))
              {
                v5 = 0;
                goto LABEL_137;
              }
            }

            v5 = v41;
            if ((*(*this + 1952))(this))
            {
              (*(*this + 1952))(this);
              if (CCLogStream::shouldLog())
              {
                AppleBCMWLANCore::configurePktFilters(this);
              }
            }

            goto LABEL_18;
          }

LABEL_137:
          if ((*(*this + 1952))(this))
          {
            (*(*this + 1952))(this);
            if (CCLogStream::shouldLog())
            {
              AppleBCMWLANCore::configurePktFilters(this);
            }
          }

          v42 = *(this + 9);
          if (!*(v42 + 19784) || !*(v42 + 10043))
          {
            goto LABEL_93;
          }

          if ((*(*this + 1952))(this))
          {
            (*(*this + 1952))(this);
            if (CCLogStream::shouldLog())
            {
              AppleBCMWLANCore::configurePktFilters(this);
            }
          }

          if (AppleBCMWLANCore::enablePacketFilters(this, 101))
          {
            if ((*(*this + 1952))(this))
            {
              (*(*this + 1952))(this);
              v5 = 1;
              if (CCLogStream::shouldLog())
              {
                AppleBCMWLANCore::configurePktFilters(this);
              }
            }

            else
            {
              v5 = 1;
            }

            goto LABEL_18;
          }
        }

        v5 = 0;
LABEL_93:
        if ((*(*this + 1952))(this))
        {
          (*(*this + 1952))(this);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANCore::configurePktFilters(this);
          }
        }

        goto LABEL_18;
      }
    }

    else
    {
      if (*(v18 + 9484) == *(v18 + 9488) || (AppleBCMWLANConfigManager::wompEnabled(*(v18 + 5464)) & 1) != 0)
      {
        goto LABEL_55;
      }

      AppleBCMWLANCore::deleteIPv4PktFilters(this);
      v20 = AppleBCMWLANCore::configureLegacyFilters(this);
      if (v20)
      {
        v5 = v20;
        if ((*(*this + 1952))(this))
        {
          (*(*this + 1952))(this);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANCore::configurePktFilters(this);
          }
        }

        goto LABEL_18;
      }

      *(*(this + 9) + 9488) = *(*(this + 9) + 9484);
    }

    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::configurePktFilters(this);
      }
    }

    goto LABEL_55;
  }

  if ((*(*this + 1952))(this))
  {
    (*(*this + 1952))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::configurePktFilters(this);
    }
  }

  return 3758096385;
}

uint64_t AppleBCMWLANCore::unConfigurePktFilters(AppleBCMWLANCore *this)
{
  v2 = this & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000;
  if ((*(*this + 1952))(this))
  {
    (*(*this + 1952))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::unConfigurePktFilters(this);
    }
  }

  if (AppleBCMWLANCore::featureFlagIsBitSet(this, 31))
  {
    *(*(this + 9) + 10300) = 0;
    active = AppleBCMWLANCore::configureActivePortsInToChip(this, 572653569);
    if (active)
    {
      if ((*(*this + 1952))(this))
      {
        (*(*this + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::unConfigurePktFilters(this);
        }
      }
    }
  }

  else
  {
    active = 0;
  }

  v4 = AppleBCMWLANConfigManager::wompEnabled(*(*(this + 9) + 5464));
  v5 = *(this + 9) + 0x2000;
  if (v4)
  {
    if (*(*(this + 9) + 10042))
    {
      active = AppleBCMWLANCore::disablePacketFilters(this, 104);
      if (active)
      {
        if ((*(*this + 1952))(this))
        {
          (*(*this + 1952))(this);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANCore::unConfigurePktFilters(this);
          }
        }
      }

      if ((*(*this + 1952))(this))
      {
        (*(*this + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          v6 = 50386;
LABEL_61:
          v12 = (*(*this + 1952))(this);
          CCLogStream::logInfo(v12, "[dk] %s@%d: Disabled Magic packet filter\n", "unConfigurePktFilters", v6);
        }
      }
    }
  }

  else
  {
    if (*(*(this + 9) + 10041))
    {
      if (AppleBCMWLANCore::disablePacketFilters(this, 102))
      {
        if ((*(*this + 1952))(this))
        {
          (*(*this + 1952))(this);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANCore::unConfigurePktFilters(this);
          }
        }
      }

      if ((*(*this + 1952))(this))
      {
        (*(*this + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::unConfigurePktFilters(this);
        }
      }
    }

    AppleBCMWLANCore::configureARPOffload(this, 0);
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::unConfigurePktFilters(this);
      }
    }

    active = AppleBCMWLANCore::configureICMP(this, 0);
    if (!active)
    {
      if ((*(*this + 1952))(this))
      {
        (*(*this + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::unConfigurePktFilters(this);
        }
      }
    }

    v7 = *(this + 9);
    if (*(v7 + 10040))
    {
      v8 = 107;
      do
      {
        active = AppleBCMWLANCore::disablePacketFilters(this, v8);
        if (active)
        {
          if ((*(*this + 1952))(this))
          {
            (*(*this + 1952))(this);
            if (CCLogStream::shouldLog())
            {
              AppleBCMWLANCore::unConfigurePktFilters(this);
            }
          }
        }

        v7 = *(this + 9);
        v9 = v8 - 106;
        ++v8;
      }

      while (v9 < *(v7 + 10040));
    }

    if (*(v7 + 19784) && *(v7 + 10043))
    {
      if ((*(*this + 1952))(this))
      {
        (*(*this + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::unConfigurePktFilters(this);
        }
      }

      AppleBCMWLANCore::disablePacketFilters(this, 101);
    }

    AppleBCMWLANCore::getNeighbourDiscoveryStats(this);
    AppleBCMWLANCore::configureNeighbourDiscovery(this, 0);
    if (*(*(this + 9) + 10042))
    {
      v10 = 0;
      do
      {
        active = AppleBCMWLANCore::disablePacketFilters(this, v10 + 104);
        if (active)
        {
          if ((*(*this + 1952))(this))
          {
            (*(*this + 1952))(this);
            if (CCLogStream::shouldLog())
            {
              AppleBCMWLANCore::unConfigurePktFilters(this, v2, active, v10 + 104);
            }
          }
        }

        ++v10;
      }

      while (v10 < *(*(this + 9) + 10042));
    }

    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        v6 = 50379;
        goto LABEL_61;
      }
    }
  }

  if ((*(*this + 1952))(this))
  {
    (*(*this + 1952))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::unConfigurePktFilters(this);
    }
  }

  return active;
}