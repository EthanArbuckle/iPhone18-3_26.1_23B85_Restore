uint64_t non-virtual thunk toAppleBCMWLANNANInterface::getNAN_LLW_PARAMS(uint64_t a1, char *a2)
{
  return AppleBCMWLANNANInterface::getHP2P_PARAMS((a1 - 112), a2, 355, 0);
}

{
  return AppleBCMWLANNANInterface::getHP2P_PARAMS((a1 - 128), a2, 355, 0);
}

uint64_t non-virtual thunk toAppleBCMWLANNANInterface::getHP2P_CAPS(uint64_t a1, char *a2)
{
  return AppleBCMWLANNANInterface::getHP2P_PARAMS((a1 - 112), a2, 356, 0);
}

{
  return AppleBCMWLANNANInterface::getHP2P_PARAMS((a1 - 128), a2, 356, 0);
}

uint64_t AppleBCMWLANNANInterface::getRLLW_STATS(AppleBCMWLANNANInterface *a1, char *a2)
{
  AppleBCMWLANNANInterface::getHP2P_PARAMS(a1, a2, 357, 0);

  return AppleBCMWLANNANInterface::getHP2P_PARAMS(a1, a2, 357, 1);
}

uint64_t non-virtual thunk toAppleBCMWLANNANInterface::getRLLW_STATS(uint64_t a1, char *a2)
{
  v3 = (a1 - 112);
  AppleBCMWLANNANInterface::getHP2P_PARAMS((a1 - 112), a2, 357, 0);

  return AppleBCMWLANNANInterface::getHP2P_PARAMS(v3, a2, 357, 1);
}

{
  v3 = (a1 - 128);
  AppleBCMWLANNANInterface::getHP2P_PARAMS((a1 - 128), a2, 357, 0);

  return AppleBCMWLANNANInterface::getHP2P_PARAMS(v3, a2, 357, 1);
}

uint64_t AppleBCMWLANNANInterface::setNAN_OOB_AF_TX(AppleBCMWLANNANInterface *a1, uint64_t a2)
{
  if (a2)
  {
    v4 = *(a2 + 39);
    if (*(a2 + 39))
    {
      if (*(a2 + 29) == 1)
      {
        v5 = ((v4 + 3) & 0x1FFFC) + 60;
        v6 = IOMallocZeroData();
        if (v6)
        {
          v7 = v6;
          v8 = *(a2 + 20);
          *(v6 + 24) = *(a2 + 24);
          *(v6 + 20) = v8;
          v9 = *(a2 + 8);
          *(v6 + 18) = *(a2 + 12);
          *(v6 + 14) = v9;
          v10 = *(a2 + 14);
          *(v6 + 12) = *(a2 + 18);
          *(v6 + 8) = v10;
          *(v6 + 26) = *(a2 + 33) != 0;
          *v6 = *a2;
          *(v6 + 36) = *(a2 + 37);
          *(v6 + 27) = *(a2 + 26);
          *(v6 + 28) = *(a2 + 27);
          *(v6 + 38) = *(a2 + 39) + 20;
          *(v6 + 30) = 768;
          *(v6 + 40) = 0;
          LOWORD(v10) = *(a2 + 39);
          *(v6 + 42) = v10 + 16;
          *(v6 + 58) = v10;
          memcpy((v6 + 60), (a2 + 41), *(a2 + 39));
          v11 = AppleBCMWLANNANInterface::issueSetIOVAR(a1, 2051, v7, v5);
          if (v11)
          {
            if ((*(*a1 + 1088))(a1))
            {
              (*(*a1 + 1088))(a1);
              if (CCLogStream::shouldLog())
              {
                AppleBCMWLANNANInterface::setNAN_OOB_AF_TX(a1);
              }
            }
          }

LABEL_18:
          IOFreeData();
          return v11;
        }

        if ((*(*a1 + 1088))(a1))
        {
          (*(*a1 + 1088))(a1);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANNANInterface::setNAN_OOB_AF_TX(a1);
          }
        }
      }

      else
      {
        v12 = v4 + 40;
        v13 = IOMallocZeroData();
        if (v13)
        {
          v14 = v13;
          v15 = *(a2 + 20);
          *(v13 + 24) = *(a2 + 24);
          *(v13 + 20) = v15;
          v16 = *(a2 + 8);
          *(v13 + 18) = *(a2 + 12);
          *(v13 + 14) = v16;
          v17 = *(a2 + 14);
          *(v13 + 12) = *(a2 + 18);
          *(v13 + 8) = v17;
          *(v13 + 26) = *(a2 + 33) != 0;
          *v13 = *a2;
          *(v13 + 36) = *(a2 + 37);
          *(v13 + 27) = *(a2 + 26);
          *(v13 + 28) = *(a2 + 27);
          *(v13 + 38) = *(a2 + 39);
          memcpy((v13 + 40), (a2 + 41), *(a2 + 39));
          v11 = AppleBCMWLANNANInterface::issueSetIOVAR(a1, 2051, v14, v12);
          if (v11)
          {
            if ((*(*a1 + 1088))(a1))
            {
              (*(*a1 + 1088))(a1);
              if (CCLogStream::shouldLog())
              {
                AppleBCMWLANNANInterface::setNAN_OOB_AF_TX(a1);
              }
            }
          }

          goto LABEL_18;
        }

        if ((*(*a1 + 1088))(a1))
        {
          (*(*a1 + 1088))(a1);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANNANInterface::setNAN_OOB_AF_TX(a1);
          }
        }
      }

      return 12;
    }
  }

  if ((*(*a1 + 1088))(a1))
  {
    (*(*a1 + 1088))(a1);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANNANInterface::setNAN_OOB_AF_TX(a1);
    }
  }

  return 22;
}

uint64_t non-virtual thunk toAppleBCMWLANNANInterface::setNAN_OOB_AF_TX(uint64_t a1, uint64_t a2)
{
  return AppleBCMWLANNANInterface::setNAN_OOB_AF_TX((a1 - 112), a2);
}

{
  return AppleBCMWLANNANInterface::setNAN_OOB_AF_TX((a1 - 128), a2);
}

uint64_t AppleBCMWLANNANInterface::setAWDL_DFSP_CONFIG(uint64_t *a1, uint64_t a2)
{
  if (IO80211SkywalkInterface::getInterfaceId(a1) == -1)
  {
    if ((*(*a1 + 1088))(a1))
    {
      (*(*a1 + 1088))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANNANInterface::setAWDL_DFSP_CONFIG(a1);
      }
    }

    return 16;
  }

  else
  {
    v5 = *(a2 + 4);
    v4 = a2 + 4;
    v6 = *(v4 + 8) | 0xD000;
    v15 = 1310721;
    v16 = v5;
    v17 = *(v4 + 2);
    v18 = v6;
    v7 = *(v4 + 14);
    v19 = *(v4 + 10);
    v20 = v7;
    v14[0] = a1;
    v14[1] = AppleBCMWLANNANInterface::handleProxIovarAsyncCallBack;
    v14[2] = 0;
    *(v4 + 8) = v6;
    v8 = *(a1[17] + 72);
    InterfaceId = IO80211SkywalkInterface::getInterfaceId(a1);
    v13[0] = &v15;
    v13[1] = 20;
    v10 = AppleBCMWLANCommander::sendVirtualIOVarSet(v8, InterfaceId, "awdl_dfsp_cfg", v13, kNoRxExpected, v14, 0);
    v11 = (*(*a1 + 1088))(a1);
    if (v10)
    {
      if (v11)
      {
        (*(*a1 + 1088))(a1);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANNANInterface::setAWDL_DFSP_CONFIG(a1);
        }
      }
    }

    else if (v11)
    {
      (*(*a1 + 1088))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANNANInterface::setAWDL_DFSP_CONFIG(a1);
      }
    }
  }

  return v10;
}

uint64_t non-virtual thunk toAppleBCMWLANNANInterface::setAWDL_DFSP_CONFIG(uint64_t a1, uint64_t a2)
{
  return AppleBCMWLANNANInterface::setAWDL_DFSP_CONFIG((a1 - 112), a2);
}

{
  return AppleBCMWLANNANInterface::setAWDL_DFSP_CONFIG((a1 - 128), a2);
}

uint64_t AppleBCMWLANNANInterface::setP2P_COEX_PROTECTION_2G_Only(IO80211SkywalkInterface *a1, uint64_t a2)
{
  v4 = IOMallocZeroData();
  if (!v4)
  {
    return 12;
  }

  v5 = v4;
  *v4 = 16875520;
  *(v4 + 4) = 2;
  *(v4 + 8) = 1;
  v6 = *(a2 + 74);
  *(v4 + 12) = v6;
  memcpy((v4 + 16), (a2 + 75), v6);
  *(v5 + 6) = v6 + 8;
  v14[0] = a1;
  v14[1] = AppleBCMWLANNANInterface::handleSlotBssIovarAsyncCallBack;
  v14[2] = 0;
  v7 = *(*(a1 + 17) + 72);
  InterfaceId = IO80211SkywalkInterface::getInterfaceId(a1);
  v13[0] = v5;
  v13[1] = v6 + ((v6 + 19) & 0x1FC) + 16;
  v9 = AppleBCMWLANCommander::sendVirtualIOVarSet(v7, InterfaceId, "slot_bss", v13, kNoRxExpected, v14, 0);
  if (v9)
  {
    v10 = v9;
    if ((*(*a1 + 1088))(a1))
    {
      (*(*a1 + 1088))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANNANInterface::setP2P_COEX_PROTECTION_2G_Only(a1);
      }
    }

    v11 = (*(*a1 + 1336))(a1, v10);
  }

  else
  {
    v11 = 0;
  }

  IOFreeData();
  return v11;
}

uint64_t AppleBCMWLANNANInterface::setP2P_COEX_PROTECTION(uint64_t *a1, unsigned __int8 *a2)
{
  if (IO80211SkywalkInterface::getInterfaceId(a1) == -1)
  {
    if ((*(*a1 + 1088))(a1))
    {
      (*(*a1 + 1088))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANNANInterface::setP2P_COEX_PROTECTION(a1);
      }
    }

    return 16;
  }

  if (AppleBCMWLANCore::is4388Up(*(a1[17] + 64)))
  {
    v4 = IOMallocZeroData();
    if (!v4)
    {
      return 12;
    }

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
    v17[1] = AppleBCMWLANNANInterface::handleSlotBssIovarAsyncCallBack;
    v17[2] = 0;
    v10 = *(a1[17] + 72);
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
          AppleBCMWLANNANInterface::setP2P_COEX_PROTECTION(a1);
        }
      }

      v14 = (*(*a1 + 1336))(a1, v13);
    }

    else
    {
      v14 = 0;
    }

    IOFreeData();
    return v14;
  }

  return AppleBCMWLANNANInterface::setP2P_COEX_PROTECTION_2G_Only(a1, a2);
}

uint64_t non-virtual thunk toAppleBCMWLANNANInterface::setP2P_COEX_PROTECTION(uint64_t a1, unsigned __int8 *a2)
{
  return AppleBCMWLANNANInterface::setP2P_COEX_PROTECTION((a1 - 112), a2);
}

{
  return AppleBCMWLANNANInterface::setP2P_COEX_PROTECTION((a1 - 128), a2);
}

uint64_t AppleBCMWLANNANInterface::enableDatapath(AppleBCMWLANNANInterface *this)
{
  if ((*(*this + 1064))(this))
  {
    v2 = *(*(this + 17) + 176);
    if (v2)
    {
      (*(*v2 + 192))(v2);
      v3 = *(*(this + 17) + 184);
      if (v3)
      {
        (*(*v3 + 200))(v3);
        v4 = *(this + 17);
        if (!*(v4 + 128))
        {
LABEL_8:
          v7 = (*(**(v4 + 184) + 120))(*(v4 + 184), 0, 0);
          if (v7)
          {
            if ((*(*this + 1088))(this))
            {
              (*(*this + 1088))(this);
              if (CCLogStream::shouldLog())
              {
                AppleBCMWLANNANInterface::enableDatapath(this);
              }
            }

            return 0;
          }

          return v7;
        }

        v5 = 0;
        while (1)
        {
          v6 = *(v4 + 8 * v5 + 136);
          if (!v6)
          {
            break;
          }

          (*(*v6 + 256))(v6);
          ++v5;
          v4 = *(this + 17);
          if (v5 >= *(v4 + 128))
          {
            goto LABEL_8;
          }
        }

        AppleBCMWLANNANInterface::enableDatapath(v5, this);
      }

      else
      {
        AppleBCMWLANNANInterface::enableDatapath(this);
      }
    }

    else
    {
      AppleBCMWLANNANInterface::enableDatapath(this);
    }
  }

  else
  {
    AppleBCMWLANNANInterface::enableDatapath(this);
  }

  v7 = 3758097084;
  if ((*(*this + 1088))(this))
  {
    (*(*this + 1088))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANNANInterface::enableDatapath(this);
    }
  }

  return v7;
}

uint64_t AppleBCMWLANNANInterface::enable(AppleBCMWLANNANInterface *this, unsigned int a2)
{
  v4 = this & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000;
  if ((*(*this + 1088))(this))
  {
    (*(*this + 1088))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANNANInterface::enable(this);
    }
  }

  IO80211SkywalkInterface::enable(this, a2);
  if (AppleBCMWLANCore::isPoweredOn(*(*(this + 17) + 64)) && (AppleBCMWLANCore::isWatchdogRunning(*(*(this + 17) + 64)) & 1) == 0)
  {
    (*(*this + 1232))(this);
  }

  else if ((*(*this + 1088))(this))
  {
    (*(*this + 1088))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANNANInterface::enable(this, v4, this + 136);
    }
  }

  return 0;
}

uint64_t AppleBCMWLANNANInterface::getTxSubQueue(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 136);
  v3 = *(v2 + 4 * a2 + 232);
  if (v3 >= *(v2 + 128))
  {
    return 0;
  }

  else
  {
    return *(v2 + 8 * v3 + 136);
  }
}

uint64_t non-virtual thunk toAppleBCMWLANNANInterface::getTxSubQueue(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 56);
  v3 = *(v2 + 4 * a2 + 232);
  if (v3 >= *(v2 + 128))
  {
    return 0;
  }

  else
  {
    return *(v2 + 8 * v3 + 136);
  }
}

uint64_t AppleBCMWLANNANInterface::disableDatapath(AppleBCMWLANNANInterface *this)
{
  if ((*(*this + 1088))(this))
  {
    (*(*this + 1088))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANNANInterface::disableDatapath(this);
    }
  }

  v2 = *(this + 17);
  if (*(v2 + 128))
  {
    v3 = 0;
    while (1)
    {
      v4 = *(v2 + 8 * v3 + 136);
      if (!v4)
      {
        break;
      }

      (*(*v4 + 272))(v4);
      ++v3;
      v2 = *(this + 17);
      if (v3 >= *(v2 + 128))
      {
        goto LABEL_8;
      }
    }

    AppleBCMWLANNANInterface::disableDatapath(v3, this);
  }

  else
  {
LABEL_8:
    v5 = *(v2 + 192);
    if (v5)
    {
      (*(*v5 + 72))(v5);
      v2 = *(this + 17);
    }

    v6 = *(v2 + 184);
    if (v6)
    {
      (*(*v6 + 208))(v6);
      v7 = *(*(this + 17) + 176);
      if (v7)
      {
        (*(*v7 + 200))(v7);
        return 0;
      }

      AppleBCMWLANNANInterface::disableDatapath(this);
    }

    else
    {
      AppleBCMWLANNANInterface::disableDatapath(this);
    }
  }

  v8 = 3758097084;
  if ((*(*this + 1088))(this))
  {
    (*(*this + 1088))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANNANInterface::disableDatapath(this);
    }
  }

  return v8;
}

uint64_t AppleBCMWLANNANInterface::disable(AppleBCMWLANNANInterface *this, unsigned int a2)
{
  if ((*(*this + 1088))(this))
  {
    (*(*this + 1088))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANNANInterface::disable(this);
    }
  }

  (*(*this + 1240))(this);

  return IO80211SkywalkInterface::disable(this, a2);
}

uint64_t AppleBCMWLANNANInterface::setPromiscuousModeEnable(AppleBCMWLANNANInterface *this, char a2)
{
  if ((*(*this + 1088))(this))
  {
    (*(*this + 1088))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANNANInterface::setPromiscuousModeEnable(this, this & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000, a2);
    }
  }

  return 0;
}

uint64_t AppleBCMWLANNANInterface::setNAN_PAIRING_KEYS(uint64_t *a1, int *a2)
{
  *&v56.octet[4] = 0;
  *v56.octet = 0;
  if (AppleBCMWLANNANInterface::getNAN_InterfaceAddr(a1, &v56))
  {
    v4 = 3758097084;
    if ((*(*a1 + 1088))(a1))
    {
      (*(*a1 + 1088))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANNANInterface::setNAN_PAIRING_KEYS(a1);
      }
    }

    return v4;
  }

  if (*a2 | *(a2 + 2))
  {
    v6 = *a2 != *v56.octet || *(a2 + 2) != *&v56.octet[4];
    if (*(a2 + 7) || *(a2 + 41) || *(a2 + 75) || *(a2 + 109) || *(a2 + 143) || *(a2 + 177) || *(a2 + 211))
    {
      if ((*(*a1 + 1088))(a1))
      {
        (*(*a1 + 1088))(a1);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANNANInterface::setNAN_PAIRING_KEYS(a1);
        }
      }

      if (*(a2 + 7))
      {
        v7 = ((*(a2 + 7) + 3) & 0x1FC) + 28;
      }

      else
      {
        v7 = 16;
      }

      if (*(a2 + 41))
      {
        v8 = ((*(a2 + 41) + 3) & 0x1FC) + 12;
      }

      else
      {
        v8 = 0;
      }

      v9 = v7 + v8;
      if (*(a2 + 75))
      {
        v10 = ((*(a2 + 75) + 3) & 0x1FC) + 12;
      }

      else
      {
        v10 = 0;
      }

      if (*(a2 + 109))
      {
        v11 = ((*(a2 + 109) + 3) & 0x1FC) + 12;
      }

      else
      {
        v11 = 0;
      }

      v12 = v9 + v10 + v11;
      if (*(a2 + 143))
      {
        v13 = ((*(a2 + 143) + 3) & 0x1FC) + 20;
      }

      else
      {
        v13 = 0;
      }

      if (*(a2 + 177))
      {
        v14 = ((*(a2 + 177) + 3) & 0x1FC) + 20;
      }

      else
      {
        v14 = 0;
      }

      v15 = v13 + v14;
      if (*(a2 + 211))
      {
        v16 = ((*(a2 + 211) + 3) & 0x1FC) + 20;
      }

      else
      {
        v16 = 0;
      }

      v17 = (v12 + v15 + v16);
      v18 = IOMallocZeroData();
      if (v18)
      {
        v19 = v18;
        *v18 = 0;
        v20 = v18 + 4;
        if (v6)
        {
          *v20 = *v56.octet;
          *(v18 + 8) = *&v56.octet[4];
          v20 = v18 + 10;
        }

        v21 = *a2;
        *(v20 + 4) = *(a2 + 2);
        *v20 = v21;
        v22 = (v18 + 16);
        v23 = *(a2 + 7);
        if (*(a2 + 7))
        {
          *(v18 + 16) = 5377;
          *(v18 + 18) = v23 + 8;
          *(v18 + 20) = *(a2 + 6);
          *(v18 + 22) = v23;
          memcpy((v18 + 28), a2 + 2, v23);
          v22 = (v22 + ((*(a2 + 7) + 3) & 0x1FC) + 12);
        }

        v24 = *(a2 + 41);
        if (*(a2 + 41))
        {
          *v22 = 5384;
          v22[1] = v24 + 8;
          v22[2] = *(a2 + 40);
          v22[3] = v24;
          v25 = (v22 + 6);
          memcpy(v25, a2 + 42, v24);
          v22 = &v25[(*(a2 + 41) + 3) & 0x1FC];
        }

        v26 = *(a2 + 75);
        if (*(a2 + 75))
        {
          *v22 = 5385;
          v22[1] = v26 + 8;
          v22[2] = *(a2 + 74);
          v22[3] = v26;
          v27 = (v22 + 6);
          memcpy(v27, a2 + 19, v26);
          v22 = &v27[(*(a2 + 75) + 3) & 0x1FC];
        }

        v28 = *(a2 + 109);
        if (*(a2 + 109))
        {
          *v22 = 5377;
          v22[1] = v28 + 8;
          v22[2] = *(a2 + 108);
          v22[3] = v28;
          v29 = (v22 + 6);
          memcpy(v29, a2 + 110, v28);
          v22 = &v29[(*(a2 + 109) + 3) & 0x1FC];
        }

        v30 = *(a2 + 143);
        if (*(a2 + 143))
        {
          if (v6)
          {
            v31 = 5379;
          }

          else
          {
            v31 = 5378;
          }

          *v22 = v31;
          v22[2] = *(a2 + 142);
          v22[3] = v30;
          v22[4] = 1540;
          v32 = *(a2 + 143);
          v22[1] = ((v32 + 9) & 0x1FC) + 8;
          v33 = (v22 + 6);
          memcpy(v33, a2 + 36, v32);
          v34 = &v33[*(a2 + 143)];
          *(v34 + 2) = 0;
          *v34 = 0;
          v22 = &v33[(*(a2 + 143) + 3) & 0x1FC];
        }

        v35 = *(a2 + 177);
        if (*(a2 + 177))
        {
          if (v6)
          {
            v36 = 5381;
          }

          else
          {
            v36 = 5380;
          }

          *v22 = v36;
          v22[2] = *(a2 + 176);
          v22[3] = v35;
          v22[4] = 1542;
          v37 = *(a2 + 177);
          v22[1] = ((v37 + 9) & 0x1FC) + 8;
          v38 = (v22 + 6);
          memcpy(v38, a2 + 178, v37);
          v39 = &v38[*(a2 + 177)];
          *(v39 + 2) = 0;
          *v39 = 0;
          v22 = &v38[(*(a2 + 177) + 3) & 0x1FC];
        }

        v40 = *(a2 + 211);
        if (*(a2 + 211))
        {
          if (v6)
          {
            v41 = 5383;
          }

          else
          {
            v41 = 5382;
          }

          *v22 = v41;
          v22[2] = *(a2 + 210);
          v22[3] = v40;
          v22[4] = 1537;
          v42 = *(a2 + 211);
          v22[1] = ((v42 + 9) & 0x1FC) + 8;
          v43 = (v22 + 6);
          memcpy(v43, a2 + 53, v42);
          v44 = &v43[*(a2 + 211)];
          *(v44 + 2) = 0;
          *v44 = 0;
        }

        v55 = -1431655766;
        IOParseBootArgNumber("wlan.enableNANDebug", &v55, 4);
        if (v55)
        {
          v45 = 0;
          v46 = v19;
          do
          {
            v47 = *(a1[17] + 80);
            IO80211Hexdump();
            v45 += 32;
            v46 += 32;
          }

          while (v45 < v17);
        }

        v4 = AppleBCMWLANNANInterface::issueSetIOVAR(a1, 5413, v19, v17);
        if (v4)
        {
          if ((*(*a1 + 1088))(a1))
          {
            (*(*a1 + 1088))(a1);
            if (CCLogStream::shouldLog())
            {
              AppleBCMWLANNANInterface::setNAN_PAIRING_KEYS(a1);
            }
          }
        }

LABEL_76:
        IOFreeData();
        return v4;
      }
    }

    else
    {
      if ((*(*a1 + 1088))(a1))
      {
        (*(*a1 + 1088))(a1);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANNANInterface::setNAN_PAIRING_KEYS(a1);
        }
      }

      v48 = IOMallocZeroData();
      if (v48)
      {
        v49 = v48;
        *v48 = 1;
        v50 = v48 + 4;
        if (v6)
        {
          *v50 = *v56.octet;
          *(v48 + 8) = *&v56.octet[4];
          v50 = v48 + 10;
        }

        v51 = *a2;
        *(v50 + 4) = *(a2 + 2);
        *v50 = v51;
        *(v48 + 16) = 0x1000000091501;
        *(v48 + 28) = 0;
        *(v48 + 32) = 0x1000000091508;
        *(v48 + 44) = 0;
        *(v48 + 48) = 0x1000000091507;
        *(v48 + 60) = 0;
        v55 = -1431655766;
        IOParseBootArgNumber("wlan.enableNANDebug", &v55, 4);
        if (v55)
        {
          v52 = -32;
          do
          {
            v53 = *(a1[17] + 80);
            v52 += 32;
            IO80211Hexdump();
          }

          while (v52 < 0x50);
        }

        v4 = AppleBCMWLANNANInterface::issueSetIOVAR(a1, 5413, v49, 0x70u);
        if (v4)
        {
          if ((*(*a1 + 1088))(a1))
          {
            (*(*a1 + 1088))(a1);
            if (CCLogStream::shouldLog())
            {
              AppleBCMWLANNANInterface::setNAN_PAIRING_KEYS(a1);
            }
          }
        }

        goto LABEL_76;
      }
    }

    return 12;
  }

  v4 = 3758097084;
  if ((*(*a1 + 1088))(a1))
  {
    (*(*a1 + 1088))(a1);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANNANInterface::setNAN_PAIRING_KEYS(a1);
    }
  }

  return v4;
}

uint64_t non-virtual thunk toAppleBCMWLANNANInterface::setNAN_PAIRING_KEYS(uint64_t a1, int *a2)
{
  return AppleBCMWLANNANInterface::setNAN_PAIRING_KEYS((a1 - 112), a2);
}

{
  return AppleBCMWLANNANInterface::setNAN_PAIRING_KEYS((a1 - 128), a2);
}

uint64_t non-virtual thunk toAppleBCMWLANNANInterface::setRADIO_CHANSEQ_CONTROL(uint64_t a1, _BYTE *a2)
{
  return AppleBCMWLANCore::setRADIO_CHANSEQ_CONTROL(*(*(a1 + 24) + 64), a2);
}

{
  return AppleBCMWLANCore::setRADIO_CHANSEQ_CONTROL(*(*(a1 + 8) + 64), a2);
}

uint64_t non-virtual thunk toAppleBCMWLANNANInterface::getAWDL_DFSP_CONFIG()
{
  return 3825172759;
}

{
  return 3825172759;
}

uint64_t AppleBCMWLANNANInterface::setNAN_CREATE_GCR_SESSION(IO80211SkywalkInterface *a1, uint64_t a2)
{
  v3 = 3758097090;
  v4 = *(*(a1 + 17) + 64);
  if (v4 && AppleBCMWLANCore::getGCRAdapter(v4))
  {
    GCRAdapter = AppleBCMWLANCore::getGCRAdapter(*(*(a1 + 17) + 64));
    InterfaceId = IO80211SkywalkInterface::getInterfaceId(a1);
    GCRSession = AppleBCMWLANGCRAdapter::createGCRSession(GCRAdapter, InterfaceId, a2);
    if (GCRSession)
    {
      v9 = GCRSession;
      if ((*(*a1 + 1088))(a1))
      {
        (*(*a1 + 1088))(a1);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANNANInterface::setNAN_CREATE_GCR_SESSION(a1);
        }
      }

      return v9;
    }

    else
    {
      v11 = *(*(a1 + 17) + 64);
      if (v11)
      {
        if (AppleBCMWLANCore::getGCRAdapter(v11))
        {
          v3 = AppleBCMWLANNANInterface::setNAN_GCR_Multicast_Bitmap(a1, *(a2 + 42) | (*(a2 + 46) << 32));
          if (v3)
          {
            if ((*(*a1 + 1088))(a1))
            {
              (*(*a1 + 1088))(a1);
              if (CCLogStream::shouldLog())
              {
                AppleBCMWLANNANInterface::setNAN_CREATE_GCR_SESSION(a1);
              }
            }
          }
        }
      }
    }
  }

  return v3;
}

uint64_t AppleBCMWLANNANInterface::setNAN_GCR_Multicast_Bitmap(AppleBCMWLANNANInterface *this, uint64_t a2)
{
  v4 = IOMallocZeroData();
  if (!v4)
  {
    return 12;
  }

  v5 = v4;
  *v4 = a2;
  *(v4 + 4) = WORD2(a2);
  *(v4 + 8) = 786706;
  *(v4 + 12) = 2049;
  *(v4 + 16) = -1;
  *(v4 + 24) = 786706;
  *(v4 + 28) = 2048;
  *(v4 + 32) = -1;
  if ((*(*this + 1088))(this))
  {
    (*(*this + 1088))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANNANInterface::setNAN_GCR_Multicast_Bitmap(this);
    }
  }

  v6 = AppleBCMWLANNANInterface::issueSetIOVAR(this, 290, v5, 0x28u);
  if (v6)
  {
    if ((*(*this + 1088))(this))
    {
      (*(*this + 1088))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANNANInterface::setNAN_GCR_Multicast_Bitmap(this);
      }
    }
  }

  IOFreeData();
  return v6;
}

uint64_t non-virtual thunk toAppleBCMWLANNANInterface::setNAN_CREATE_GCR_SESSION(uint64_t a1, uint64_t a2)
{
  return AppleBCMWLANNANInterface::setNAN_CREATE_GCR_SESSION((a1 - 112), a2);
}

{
  return AppleBCMWLANNANInterface::setNAN_CREATE_GCR_SESSION((a1 - 128), a2);
}

uint64_t AppleBCMWLANNANInterface::setNAN_JOIN_GCR_SESSION(IO80211SkywalkInterface *a1, uint64_t a2)
{
  v3 = *(*(a1 + 17) + 64);
  if (!v3 || !AppleBCMWLANCore::getGCRAdapter(v3))
  {
    return 3758097090;
  }

  GCRAdapter = AppleBCMWLANCore::getGCRAdapter(*(*(a1 + 17) + 64));
  InterfaceId = IO80211SkywalkInterface::getInterfaceId(a1);

  return AppleBCMWLANGCRAdapter::joinGCRSession(GCRAdapter, InterfaceId, a2);
}

uint64_t non-virtual thunk toAppleBCMWLANNANInterface::setNAN_JOIN_GCR_SESSION(uint64_t a1, uint64_t a2)
{
  return AppleBCMWLANNANInterface::setNAN_JOIN_GCR_SESSION((a1 - 112), a2);
}

{
  return AppleBCMWLANNANInterface::setNAN_JOIN_GCR_SESSION((a1 - 128), a2);
}

uint64_t AppleBCMWLANNANInterface::setNAN_GCR_RATE(IO80211SkywalkInterface *a1, uint64_t a2)
{
  v3 = *(*(a1 + 17) + 64);
  if (!v3 || !AppleBCMWLANCore::getGCRAdapter(v3))
  {
    return 3758097090;
  }

  GCRAdapter = AppleBCMWLANCore::getGCRAdapter(*(*(a1 + 17) + 64));
  InterfaceId = IO80211SkywalkInterface::getInterfaceId(a1);

  return AppleBCMWLANGCRAdapter::configureGCRRate(GCRAdapter, InterfaceId, a2);
}

uint64_t non-virtual thunk toAppleBCMWLANNANInterface::setNAN_GCR_RATE(uint64_t a1, uint64_t a2)
{
  return AppleBCMWLANNANInterface::setNAN_GCR_RATE((a1 - 112), a2);
}

{
  return AppleBCMWLANNANInterface::setNAN_GCR_RATE((a1 - 128), a2);
}

uint64_t AppleBCMWLANNANInterface::getNAN_GCR_LINK_CONDITION(IO80211SkywalkInterface *a1, uint64_t a2)
{
  v3 = *(*(a1 + 17) + 64);
  if (!v3 || !AppleBCMWLANCore::getGCRAdapter(v3))
  {
    return 3758097090;
  }

  GCRAdapter = AppleBCMWLANCore::getGCRAdapter(*(*(a1 + 17) + 64));
  InterfaceId = IO80211SkywalkInterface::getInterfaceId(a1);

  return AppleBCMWLANGCRAdapter::getGCRLinkCondition(GCRAdapter, InterfaceId, a2);
}

uint64_t non-virtual thunk toAppleBCMWLANNANInterface::getNAN_GCR_LINK_CONDITION(uint64_t a1, uint64_t a2)
{
  return AppleBCMWLANNANInterface::getNAN_GCR_LINK_CONDITION((a1 - 112), a2);
}

{
  return AppleBCMWLANNANInterface::getNAN_GCR_LINK_CONDITION((a1 - 128), a2);
}

void OUTLINED_FUNCTION_27_1()
{
  v2 = v1[10];
  v3 = *v0;
  v4 = v1[5];
  v5 = v1[6];
  v6 = v1[7];
  v7 = v1[8];
  v8 = v1[9];
}

uint64_t AppleBCMWLANProximityInterface::setChannel(AppleBCMWLANProximityInterface *this, int a2)
{
  v10 = a2;
  *(*(this + 17) + 680) = a2;
  v3 = *(this + 17);
  v4 = v3[8];
  if (v4)
  {
    if (AppleBCMWLANCore::isAssociated(v4))
    {
      return 0;
    }

    v3 = *(this + 17);
  }

  v6 = v3[3];
  v9[0] = this;
  v9[1] = v6;
  v9[2] = 0;
  v7 = v3[120];
  v8[0] = &v10;
  v8[1] = 4;
  return AppleBCMWLANCommander::sendIOCtlSet(v7, 30, v8, kNoRxExpected, v9, 0);
}

uint64_t non-virtual thunk toAppleBCMWLANProximityInterface::setSSID()
{
  return 102;
}

{
  return 102;
}

uint64_t AppleBCMWLANProximityInterface::resetInterface(AppleBCMWLANProximityInterface *this)
{
  v1 = this + 136;
  if (!*(*(this + 17) + 924))
  {
    return 0;
  }

  if ((*(*this + 1088))(this))
  {
    (*(*this + 1088))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANProximityInterface::resetInterface(this);
    }
  }

  isPoweredOn = AppleBCMWLANCore::isPoweredOn(*(*(this + 17) + 64));
  v4 = *this;
  if (isPoweredOn)
  {
    (*(v4 + 1232))(this);
    v4 = *this;
    v5 = 2;
  }

  else
  {
    v5 = 1;
  }

  (*(v4 + 1472))(this, v5, 1);
  AppleBCMWLANCore::addEventBit(*(*(this + 17) + 64));
  v6 = AppleBCMWLANCore::writeEventBitField(*(*(this + 17) + 64));
  if (v6)
  {
    if ((*(*this + 1088))(this))
    {
      (*(*this + 1088))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANProximityInterface::resetInterface(this);
      }
    }
  }

  else
  {
    AppleBCMWLANCore::updateCurrentFWCountryCode(*(*v1 + 64));
    *(*v1 + 72) = 0;
  }

  return v6;
}

uint64_t AppleBCMWLANProximityInterface::waitForDriverEvent(uint64_t *a1, unsigned int a2)
{
  clock_interval_to_deadline();
  v4 = (*(**(a1[17] + 64) + 104))(*(a1[17] + 64));
  v5 = (*(*v4 + 80))(v4, a1[17] + 4 * a2 + 84, 0xAAAAAAAAAAAAAAAALL);
  if (v5)
  {
    if ((*(*a1 + 1088))(a1))
    {
      (*(*a1 + 1088))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANProximityInterface::waitForDriverEvent(a1);
      }
    }
  }

  return v5;
}

uint64_t AppleBCMWLANProximityInterface::signalDriverEvent(uint64_t a1, unsigned int a2)
{
  v4 = *(*(*(**(*(a1 + 136) + 64) + 104))(*(*(a1 + 136) + 64)) + 88);
  v5 = *(a1 + 136) + 4 * a2 + 84;

  return v4();
}

void AppleBCMWLANProximityInterface::handleEvent(AppleBCMWLANProximityInterface *this, const IO80211BufferCursor *a2)
{
  v93 = -1431655766;
  v91 = 0;
  v92 = 0;
  v2 = *a2;
  if (!*a2)
  {
    return;
  }

  v3 = *(a2 + 1);
  if (v3 < 0x30)
  {
    return;
  }

  v4 = v2 + 12;
  if (v2 + 12 < v2)
  {
    AppleBCMWLANProximityInterface::handleEvent(this, a2);
  }

  v6 = v2[5];
  if (v6)
  {
    if (v6 + 48 > v3)
    {
      return;
    }

    v91 = v2 + 12;
    v92 = v6;
    v7 = v6;
  }

  else
  {
    v7 = 0;
    v4 = 0;
  }

  v8 = v2[1];
  if (v8 <= 74)
  {
    if (v8 <= 53)
    {
      switch(v8)
      {
        case 0:
          v40 = *(this + 17);
          v93 = *(v40 + 656);
          *(v40 + 836) = 0;
          v94[0] = this;
          v94[1] = AppleBCMWLANProximityInterface::handleProxIovarAsyncCallBack;
          v94[2] = 0;
          v41 = *(*(this + 17) + 960);
          InterfaceId = IO80211SkywalkInterface::getInterfaceId(this);
          v90[0] = &v93;
          v90[1] = 4;
          if (AppleBCMWLANCommander::sendVirtualIOVarSet(v41, InterfaceId, "awdl_presencemode", v90, kNoRxExpected, v94, 0))
          {
            if ((*(*this + 1088))(this))
            {
              (*(*this + 1088))(this);
              if (CCLogStream::shouldLog())
              {
                AppleBCMWLANProximityInterface::handleEvent(this);
              }
            }
          }

          if ((*(*this + 1088))(this))
          {
            (*(*this + 1088))(this);
            if (CCLogStream::shouldLog())
            {
              AppleBCMWLANProximityInterface::handleEvent(this);
            }
          }

          return;
        case 26:
          return;
        case 16:
          AppleBCMWLANProximityInterface::handleEvent(v2, this);
          return;
      }
    }

    else if (v8 > 59)
    {
      if (v8 == 60)
      {

        AppleBCMWLANProximityInterface::handleActionFrame_complete(this, a2);
        return;
      }

      if (v8 == 69)
      {
        AppleBCMWLANProximityInterface::handleEvent(this, v2);
        return;
      }
    }

    else
    {
      if (v8 == 54)
      {
        if (v6)
        {
          if (v6 <= 4)
          {
            AppleBCMWLANProximityInterface::handleEvent(this);
          }

          else if (v4 && v7)
          {
            v26 = IO80211BufferCursor::asType<wl_event_data_if>(&v91, 0, 5);
            v28 = (v26 + (v27 >> 32));
            if (__CFADD__(v26, v27 >> 32))
            {
              v29 = (v27 >> 63) + 1;
            }

            else
            {
              v29 = v27 >> 63;
            }

            v30 = v29 << 63 >> 63;
            if (v30 != v29 || v30 < 0)
            {
              AppleBCMWLANProximityInterface::handleEvent(v26, v27);
            }

            if (v28)
            {
              v31 = v27;
              v32 = HIDWORD(v27);
              if ((*(*this + 1088))(this))
              {
                (*(*this + 1088))(this);
                if (CCLogStream::shouldLog())
                {
                  v70 = (*(*this + 1088))(this);
                  if (v31 < 0 || v32 + 5 > v31)
                  {
                    AppleBCMWLANProximityInterface::handleEvent(v70, v71);
                  }

                  v72 = v70;
                  v73 = *v28;
                  v74 = v28[3];
                  FirmwareInterfaceVersion = AppleBCMWLANCore::getFirmwareInterfaceVersion(*(*(this + 17) + 64));
                  CCLogStream::logAlert(v72, "[dk] %s@%d: AWDL interface index is: %u (bsscfg=%u), fwVer %d opcode %d\n", "handleEvent", 446, v73, v74, FirmwareInterfaceVersion, v28[1]);
                }
              }

              isHostAssignedInterfaceIndex = AppleBCMWLANCore::isHostAssignedInterfaceIndex(*(*(this + 17) + 64));
              v36 = v31 >= 0 && v32 + 5 <= v31;
              if (isHostAssignedInterfaceIndex)
              {
                if (!v36)
                {
                  AppleBCMWLANProximityInterface::handleEvent(isHostAssignedInterfaceIndex, v34);
                }

                AppleBCMWLANProximityInterface::handleEvent(v28, this, this + 136);
              }

              else
              {
                if (!v36)
                {
                  AppleBCMWLANProximityInterface::handleEvent(isHostAssignedInterfaceIndex, v34);
                }

                AppleBCMWLANProximityInterface::handleEvent(v28, this + 136, this);
              }
            }
          }
        }

        return;
      }

      if (v8 == 59)
      {
        if ((*(*this + 1088))(this))
        {
          (*(*this + 1088))(this);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANProximityInterface::handleEvent(this);
          }
        }

        return;
      }
    }

    goto LABEL_141;
  }

  if (v8 <= 97)
  {
    if (v8 <= 95)
    {
      if (v8 == 75)
      {
LABEL_25:

        AppleBCMWLANProximityInterface::handleActionFrame_rx(this, a2);
        return;
      }

      if (v8 == 80)
      {
        AppleBCMWLANProximityInterface::handleEvent(this);
        return;
      }

      goto LABEL_141;
    }

    if (v8 != 96)
    {
      AppleBCMWLANProximityInterface::handleEvent(this, v2);
      return;
    }

    v10 = *(this + 17);
    if (!v10[166] || !v6)
    {
      return;
    }

    if (v6 <= 0x1B)
    {
      AppleBCMWLANProximityInterface::handleEvent(this);
      return;
    }

    if (!v4 || !v7)
    {
      return;
    }

    if (v7 < 0x1C)
    {
      v11 = 0;
      v12 = 0;
    }

    else
    {
      v11 = 28;
      if (v4 + 14 < v4)
      {
        AppleBCMWLANProximityInterface::handleEvent(this, a2);
      }

      v12 = v4;
    }

    v13 = (v12 + HIDWORD(v11));
    if (!v13)
    {
      return;
    }

    if (HIDWORD(v11) + 28 > v11)
    {
      AppleBCMWLANProximityInterface::handleEvent(this, a2);
    }

    v14 = *(v13 + 12);
    if (!*(v13 + 12) && (*(v13 + 14) & 1) == 0)
    {
      v10[187] = 0;
      v10 = *(this + 17);
    }

    if (!v10[178])
    {
LABEL_177:
      *(*(this + 17) + 916) = *(v13 + 18);
      if (*(v13 + 14))
      {
        AppleBCMWLANProximityInterface::handleAvailabilityWindowEnd(this, &v91);
      }

      else if (v14)
      {
        AppleBCMWLANProximityInterface::handleAvailabilityWindowExtension(this, &v91);
      }

      else
      {
        AppleBCMWLANProximityInterface::handleAvailabilityWindowStart(this, &v91);
      }

      return;
    }

    v15 = IO80211BufferCursor::asType<ether_addr>(&v91, 4, 6);
    if (v7 < 0x1C)
    {
      return;
    }

    v17 = v16;
    v18 = (v15 + (v16 >> 32));
    if (__CFADD__(v15, v16 >> 32))
    {
      v19 = (v16 >> 63) + 1;
    }

    else
    {
      v19 = v16 >> 63;
    }

    v20 = v19 << 63 >> 63;
    if (v20 != v19 || v20 < 0)
    {
      AppleBCMWLANProximityInterface::handleEvent(v15, v16);
    }

    if (!v18)
    {
      return;
    }

    if ((*(*this + 1088))(this))
    {
      (*(*this + 1088))(this);
      if (CCLogStream::shouldLog())
      {
        v76 = (*(*this + 1088))(this);
        if ((v17 & 0x8000000000000000) != 0 || HIDWORD(v17) + 6 > v17)
        {
          AppleBCMWLANProximityInterface::handleEvent(v76, v77);
        }

        CCLogStream::logNotice(v76, "[dk] %s@%d:AW Event: master(%02x:%02x:%02x:%02x:%02x:%02x), fw_time(%lu), aw_counter(%d), ext_count(%d), role(%d), flags(%02x) rssi %d rxBcnCount %u\n", "handleEvent", 732, *v18, v18[1], v18[2], v18[3], v18[4], v18[5], *v13, *(v13 + 5), *(v13 + 12), *(v13 + 13), *(v13 + 14), *(v13 + 17), *(v13 + 18) - *(*(this + 17) + 916));
      }
    }

    (*(*this + 1088))(this);
    IO80211Hexdump();
    if (*(v13 + 12) || (*(v13 + 13) != 2 ? (v21 = "s") : (v21 = "S"), (*(v13 + 14) & 1) != 0))
    {
      if (*(v13 + 14))
      {
        v22 = "e";
        v23 = "E";
      }

      else
      {
        v22 = "x";
        v23 = "X";
      }

      if (*(v13 + 13) == 2)
      {
        v21 = v23;
      }

      else
      {
        v21 = v22;
      }
    }

    v94[0] = 0xAAAAAAAAAAAAAAAALL;
    mach_continuous_time();
    absolutetime_to_nanoseconds();
    v48 = *(this + 17);
    v49 = v94[0] - *(v48 + 840);
    if (*(v48 + 712) >= 3u)
    {
      v50 = *v13;
      v51 = *(v48 + 860);
      if ((*(*this + 1088))(this))
      {
        (*(*this + 1088))(this);
        if (CCLogStream::shouldLog())
        {
          v52 = (*(*this + 1088))(this);
          v89 = *(*(this + 17) + 748);
          CCLogStream::logNotice(v52, "[dk] %s@%d:%s %3u/%3u (%5lu [%5lu]) %llu.%03llu [%llu.%03llu] act %lu\n", "handleEvent", 768, v21, *(v13 + 12), *(v13 + 5), (v50 / 32.7));
        }
      }

      goto LABEL_174;
    }

    if (*(v13 + 14))
    {
      if ((*(*this + 1088))(this))
      {
        (*(*this + 1088))(this);
        if (CCLogStream::shouldLog())
        {
          v53 = (*(*this + 1088))(this);
          v54 = v94[0] % 0x3B9ACA00uLL / 0xF4240;
          v55 = v49 / 0x3B9ACA00;
          v85 = (1125899907 * (v49 % 0x3B9ACA00)) >> 50;
          v86 = *(*(this + 17) + 748);
          v83 = *(v13 + 5);
          v84 = v94[0] / 0x3B9ACA00uLL;
          v81 = v21;
          v82 = *(v13 + 12);
          v80 = 773;
          v56 = "[dk] %s@%d:%s %3u/%3u %llu.%03llu [%llu.%03llu] act %lu\n";
          goto LABEL_243;
        }
      }
    }

    else if (!*(v13 + 12))
    {
      if ((*(*this + 1088))(this))
      {
        (*(*this + 1088))(this);
        if (CCLogStream::shouldLog())
        {
          v53 = (*(*this + 1088))(this);
          v54 = v94[0] % 0x3B9ACA00uLL / 0xF4240;
          v55 = v49 / 0x3B9ACA00;
          v85 = v49 % 0x3B9ACA00 / 0xF4240;
          v81 = v21;
          v82 = *(v13 + 12);
          v80 = 777;
          v83 = *(v13 + 5);
          v84 = v94[0] / 0x3B9ACA00uLL;
          v56 = "[dk] %s@%d:%s %3u/%3u %llu.%03llu [%llu.%03llu]\n";
LABEL_243:
          CCLogStream::logNotice(v53, v56, "handleEvent", v80, v81, v82, v83, v84, v54, v55, v85, v86, v87, v88);
        }
      }
    }

LABEL_174:
    v57 = v94[0];
    *(*(this + 17) + 880) = v94[0];
    v58 = *v13;
    *(*(this + 17) + 888) = *v13;
    v14 = *(v13 + 12);
    if (!*(v13 + 12) && (*(v13 + 14) & 1) == 0)
    {
      *(*(this + 17) + 860) = v58;
      *(*(this + 17) + 840) = v57;
    }

    goto LABEL_177;
  }

  if (v8 > 149)
  {
    if (v8 == 152)
    {
      v24 = v2[2];
      if (v24 > 2)
      {
        if (v24 == 3)
        {
          v25 = 2;
          goto LABEL_123;
        }

        if (v24 == 4)
        {
          v25 = 3;
          goto LABEL_123;
        }
      }

      else
      {
        if (v24 == 1)
        {
          LODWORD(v94[0]) = 0;
          goto LABEL_124;
        }

        if (v24 == 2)
        {
          v25 = 1;
LABEL_123:
          LODWORD(v94[0]) = v25;
          goto LABEL_124;
        }
      }

      LODWORD(v94[0]) = 4;
      if ((*(*this + 1088))(this))
      {
        (*(*this + 1088))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANProximityInterface::handleEvent(this);
        }
      }

LABEL_124:
      v46 = v2[3];
      if (v46 <= 2)
      {
        if (!v46)
        {
          HIDWORD(v94[0]) = 0;
          goto LABEL_133;
        }

        if (v46 == 1 || v46 == 2)
        {
LABEL_132:
          HIDWORD(v94[0]) = v2[3];
LABEL_133:
          v43 = *(*(this + 17) + 64);
          v44 = this;
          v45 = 135;
          v47 = 8;
LABEL_134:
          IO80211Controller::postMessage(v43, v44, v45, v94, v47, 1);
          return;
        }
      }

      else if (v46 <= 5 || v46 == 6)
      {
        goto LABEL_132;
      }

      HIDWORD(v94[0]) = 7;
      if ((*(*this + 1088))(this))
      {
        (*(*this + 1088))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANProximityInterface::handleEvent(this);
        }
      }

      goto LABEL_133;
    }

    if (v8 == 150)
    {
      AppleBCMWLANProximityInterface::handleEvent(v2, this);
      return;
    }

LABEL_141:
    if ((*(*this + 1088))(this))
    {
      (*(*this + 1088))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANProximityInterface::handleEvent(this);
      }
    }

    return;
  }

  if (v8 != 98)
  {
    if (v8 == 109)
    {
      v9 = *(*(this + 17) + 64);

      AppleBCMWLANCore::handleRangingEvent(v9, v2);
      return;
    }

    goto LABEL_141;
  }

  v38 = this + 136;
  v37 = *(this + 17);
  if (!*(v37 + 664))
  {
    return;
  }

  v39 = v2[2];
  if (v39 > 8)
  {
    if (v39 <= 19)
    {
      if (v39 != 19)
      {
        if (v39 == 9)
        {
          AppleBCMWLANProximityInterface::handleEvent(v2, *(this + 17), this);
        }

        else if (v39 == 18)
        {
          AppleBCMWLANProximityInterface::handleEvent(v4, v7, v37, this);
        }

        return;
      }

      LODWORD(v94[0]) = 0x10000;
      if ((*(*this + 1088))(this))
      {
        (*(*this + 1088))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANProximityInterface::handleEvent(this);
        }
      }
    }

    else
    {
      if (v39 != 20)
      {
        if (v39 != 21)
        {
          return;
        }

        LODWORD(v94[0]) = 0x10000;
        if ((*(*this + 1088))(this))
        {
          (*(*this + 1088))(this);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANProximityInterface::handleEvent(this);
          }
        }

        v43 = *(*(this + 17) + 64);
        v44 = this;
        v45 = 204;
        goto LABEL_186;
      }

      LODWORD(v94[0]) = 0x1000000;
      if ((*(*this + 1088))(this))
      {
        (*(*this + 1088))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANProximityInterface::handleEvent(this);
        }
      }
    }

    v43 = *(*(this + 17) + 64);
    v44 = this;
    v45 = 183;
LABEL_186:
    v47 = 4;
    goto LABEL_134;
  }

  if (v39 > 1)
  {
    if (v39 == 2)
    {

      AppleBCMWLANProximityInterface::handleProbeResponse_rx(this, v2);
      return;
    }

    if (v39 != 3)
    {
      return;
    }

    if (!v2[3])
    {
      v69 = *(v37 + 64);

      IO80211Controller::postMessage(v69, this, 0x40u, 0, 0, 1);
      return;
    }

    if (v6 != 2)
    {
      if ((*(*this + 1088))(this))
      {
        (*(*this + 1088))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANProximityInterface::handleEvent(this);
        }
      }

      return;
    }

    if (!v4 || v7 < 2)
    {
      return;
    }

    LOWORD(v94[0]) = *v4;
    v43 = *(v37 + 64);
    v44 = this;
    v45 = 64;
    goto LABEL_222;
  }

  if (v39)
  {
    if (v39 != 1)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v2[3] != 1)
  {
    if ((*(*this + 1088))(this))
    {
      (*(*this + 1088))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANProximityInterface::handleEvent(this);
      }
    }

    v68 = *v38;
    if (*(*v38 + 81) == 1)
    {
      LOWORD(v94[0]) = 256;
      IO80211Controller::postMessage(*(v68 + 64), this, 0x7Eu, v94, 2uLL, 1);
      *(*(this + 17) + 81) = 0;
      return;
    }

    if (*(v68 + 82) != 1)
    {
      return;
    }

    *(v68 + 82) = 0;
    LOWORD(v94[0]) = 256;
    v43 = *(*(this + 17) + 64);
    v44 = this;
    v45 = 126;
LABEL_222:
    v47 = 2;
    goto LABEL_134;
  }

  if (v6 >= 4)
  {
    v59 = IO80211BufferCursor::asType<bcmv3_awdl_scan_event_data_min>(&v91, 0, 4);
    v61 = (v59 + (v60 >> 32));
    if (__CFADD__(v59, v60 >> 32))
    {
      v62 = (v60 >> 63) + 1;
    }

    else
    {
      v62 = v60 >> 63;
    }

    v63 = v62 << 63 >> 63;
    if (v63 != v62 || v63 < 0)
    {
      AppleBCMWLANProximityInterface::handleEvent(v59, v60);
    }

    if (v61)
    {
      v64 = v60;
      v65 = HIDWORD(v60);
      shouldLog = (*(*this + 1088))(this);
      if (shouldLog && ((*(*this + 1088))(this), shouldLog = CCLogStream::shouldLog(), shouldLog))
      {
        v78 = (*(*this + 1088))(this);
        if (v64 < 0 || v65 + 4 > v64)
        {
          AppleBCMWLANProximityInterface::handleEvent(v78, v79);
        }

        CCLogStream::logNoticeIf(v78, 0x440uLL, "[dk] %s@%d:WLC_E_AWDL_SCAN_START: usage: %d\n", "handleEvent", 490, *v61);
      }

      else if (v64 < 0 || v65 + 4 > v64)
      {
        AppleBCMWLANProximityInterface::handleEvent(shouldLog, v67);
      }

      if (!*v61)
      {
        bzero(v94, 0x322uLL);
        v95 = 1;
        IO80211Controller::postMessage(*(*(this + 17) + 64), this, 0x7Du, v94, 0x323uLL, 1);
        *(*(this + 17) + 81) = 1;
        return;
      }

      if (*v61 == 2)
      {
        bzero(v94, 0x322uLL);
        v95 = 1;
        v43 = *(*(this + 17) + 64);
        v44 = this;
        v45 = 125;
        v47 = 803;
        goto LABEL_134;
      }
    }
  }
}

uint64_t IO80211BufferCursor::asType<wl_event_data_if>(uint64_t *a1, uint64_t a2, const char *a3)
{
  result = IO80211BufferCursor::_asType<wl_event_data_if>(a1, a2, a3);
  if (__CFADD__(result, v4 >> 32))
  {
    v5 = (v4 >> 63) + 1;
  }

  else
  {
    v5 = v4 >> 63;
  }

  v6 = v5 << 63 >> 63;
  if (v6 != v5 || v6 < 0)
  {
    AppleBCMWLANProximityInterface::handleEvent(result, v4);
  }

  return result;
}

uint64_t IO80211BufferCursor::asType<bcmv3_awdl_scan_event_data_min>(uint64_t *a1, uint64_t a2, const char *a3)
{
  result = IO80211BufferCursor::_asType<bcmv3_awdl_scan_event_data_min>(a1, a2, a3);
  if (__CFADD__(result, v4 >> 32))
  {
    v5 = (v4 >> 63) + 1;
  }

  else
  {
    v5 = v4 >> 63;
  }

  v6 = v5 << 63 >> 63;
  if (v6 != v5 || v6 < 0)
  {
    AppleBCMWLANProximityInterface::handleEvent(result, v4);
  }

  return result;
}

uint64_t AppleBCMWLANProximityInterface::handleActionFrame_rx(AppleBCMWLANProximityInterface *this, const IO80211BufferCursor *a2)
{
  if (*(a2 + 1) < 0x30uLL)
  {
    v4 = 0;
    v3 = 0;
  }

  else
  {
    v3 = *a2;
    v4 = 48;
    if ((*a2 + 48) < *a2)
    {
      AppleBCMWLANProximityInterface::handleEvent(this, a2);
    }
  }

  v5 = v3 + HIDWORD(v4);
  if (v5)
  {
    if (HIDWORD(v4) + 48 > v4)
    {
      AppleBCMWLANProximityInterface::handleEvent(this, a2);
    }

    v6 = (v5 + 20);
    if (*(v5 + 20) <= 1u)
    {
      result = (*(*this + 1088))(this);
      if (result)
      {
        (*(*this + 1088))(this);
        result = CCLogStream::shouldLog();
        if (result)
        {
          return AppleBCMWLANProximityInterface::handleActionFrame_rx(this);
        }
      }

      return result;
    }

    v31 = 0xAAAAAAAAAAAAAAAALL;
    v32 = 0xAAAAAAAAAAAAAAAALL;
    v8 = IO80211BufferCursor::_crop(a2, 0x30uLL, 0xFFFFFFFFFFFFFFFFLL, &v31);
    v10 = v31;
    if (v31 && v32)
    {
      if (v32 < 0x10)
      {
        v11 = 0;
        v12 = 0;
      }

      else
      {
        v11 = 16;
        if (v31 + 16 < v31)
        {
          AppleBCMWLANProximityInterface::handleEvent(v8, v9);
        }

        v12 = v31;
      }

      v13 = (v12 + HIDWORD(v11));
      if (v13)
      {
        *v33 = 0xAAAAAAAAAAAAAAAALL;
        v34 = 0u;
        v35 = 0u;
        v36 = 0u;
        v37 = 0;
        *&v33[6] = 0u;
        *v33 = *(v5 + 24);
        *&v33[4] = *(v5 + 28);
        if (HIDWORD(v11) + 16 > v11)
        {
          AppleBCMWLANProximityInterface::handleEvent(v8, v9);
        }

        if (*v13 == 512)
        {
          if (v32 < 0x18)
          {
            v14 = 0;
            v10 = 0;
          }

          else
          {
            v14 = 24;
            if (v31 + 24 < v31)
            {
              AppleBCMWLANProximityInterface::handleEvent(v8, v9);
            }
          }

          v15 = (v10 + HIDWORD(v14));
          if (!v15 || *v6 <= 0x17u)
          {
            result = (*(*this + 1088))(this);
            if (result)
            {
              (*(*this + 1088))(this);
              result = CCLogStream::shouldLog();
              if (result)
              {
                return AppleBCMWLANProximityInterface::handleActionFrame_rx(this);
              }
            }

            return result;
          }

          if (HIDWORD(v14) + 24 > v14)
          {
            AppleBCMWLANProximityInterface::handleEvent(v8, v9);
          }

          v18 = 0;
          *(&v35 + 2) = bswap32(v15[2].u32[0]);
          *(&v35 + 6) = vrev32_s8(v15[1]);
          *(&v36 + 10) = 1;
          do
          {
            *(&v36 + v18 + 14) = v15[2].i8[v18 + 4];
            ++v18;
          }

          while (v18 != 4);
          ChanSpecHandler = AppleBCMWLANCore::getChanSpecHandler(*(*(this + 17) + 64));
          v20 = v15 + 2;
          v21 = -24;
          v22 = 24;
        }

        else
        {
          if (v32 < 0x10)
          {
            v16 = 0;
            v10 = 0;
          }

          else
          {
            v16 = 16;
            if (v31 + 16 < v31)
            {
              AppleBCMWLANProximityInterface::handleEvent(v8, v9);
            }
          }

          v17 = v10 + HIDWORD(v16);
          if (!v17 || *v6 <= 0xFu)
          {
            result = (*(*this + 1088))(this);
            if (result)
            {
              (*(*this + 1088))(this);
              result = CCLogStream::shouldLog();
              if (result)
              {
                return AppleBCMWLANProximityInterface::handleActionFrame_rx(this);
              }
            }

            return result;
          }

          if (HIDWORD(v16) + 16 > v16)
          {
            AppleBCMWLANProximityInterface::handleEvent(v8, v9);
          }

          *(&v35 + 2) = bswap32(*(v17 + 12));
          *(&v35 + 6) = vrev32_s8(*(v17 + 4));
          ChanSpecHandler = AppleBCMWLANCore::getChanSpecHandler(*(*(this + 17) + 64));
          v20 = (v17 + 2);
          v21 = -16;
          v22 = 16;
        }

        AppleBCMWLANChanSpec::getAppleChannelSpec(ChanSpecHandler, bswap32(*v20) >> 16);
        ChanSpecConvToApple80211Channel();
        v23 = *v6;
        if (IO80211VirtualInterface::getMgmtFramePool(this))
        {
          MgmtFramePool = IO80211VirtualInterface::getMgmtFramePool(this);
          v25 = (*(*MgmtFramePool + 56))(MgmtFramePool);
          if (v25)
          {
            v26 = v25;
            v29 = 0xAAAAAAAAAAAAAAAALL;
            v30 = 0xAAAAAAAAAAAAAAAALL;
            IO80211Buffer::getCursor(&v29, v25);
            if (!v29 || !v30)
            {
              if ((*(*this + 1088))(this))
              {
                (*(*this + 1088))(this);
                if (CCLogStream::shouldLog())
                {
                  AppleBCMWLANProximityInterface::handleActionFrame_rx(this);
                }
              }

              return IO80211Buffer::returnBuffer(v26);
            }

            v27 = 0xAAAAAAAAAAAAAAAALL;
            v28 = 0xAAAAAAAAAAAAAAAALL;
            IO80211BufferCursor::_crop(&v31, v22, 0xFFFFFFFFFFFFFFFFLL, &v27);
            if (!v27 || !v28)
            {
              if ((*(*this + 1088))(this))
              {
                (*(*this + 1088))(this);
                if (CCLogStream::shouldLog())
                {
                  AppleBCMWLANProximityInterface::handleActionFrame_rx(this);
                }
              }

              return IO80211Buffer::returnBuffer(v26);
            }

            if (IO80211BufferCursor::copyFrom(&v29, &v27, v21 + v23))
            {
              result = (*(*this + 1088))(this);
              if (result)
              {
                (*(*this + 1088))(this);
                result = CCLogStream::shouldLog();
                if (result)
                {
                  return AppleBCMWLANProximityInterface::handleActionFrame_rx(this);
                }
              }
            }

            else
            {
              IO80211Buffer::setLength(v26, v21 + v23);
              ++*(*(this + 17) + 748);
              return IO80211VirtualInterface::bpfTapInput(this, v26, 0xCu, v33, 0x48uLL);
            }
          }

          else
          {
            result = (*(*this + 1088))(this);
            if (result)
            {
              (*(*this + 1088))(this);
              result = CCLogStream::shouldLog();
              if (result)
              {
                return AppleBCMWLANProximityInterface::handleActionFrame_rx(this);
              }
            }
          }
        }

        else
        {
          result = (*(*this + 1088))(this);
          if (result)
          {
            (*(*this + 1088))(this);
            result = CCLogStream::shouldLog();
            if (result)
            {
              return AppleBCMWLANProximityInterface::handleActionFrame_rx(this);
            }
          }
        }
      }

      else
      {
        result = (*(*this + 1088))(this);
        if (result)
        {
          (*(*this + 1088))(this);
          result = CCLogStream::shouldLog();
          if (result)
          {
            return AppleBCMWLANProximityInterface::handleActionFrame_rx(this);
          }
        }
      }
    }

    else
    {
      result = (*(*this + 1088))(this);
      if (result)
      {
        (*(*this + 1088))(this);
        result = CCLogStream::shouldLog();
        if (result)
        {
          return AppleBCMWLANProximityInterface::handleActionFrame_rx(this);
        }
      }
    }
  }

  else
  {
    result = (*(*this + 1088))(this);
    if (result)
    {
      (*(*this + 1088))(this);
      result = CCLogStream::shouldLog();
      if (result)
      {
        return AppleBCMWLANProximityInterface::handleActionFrame_rx(this);
      }
    }
  }

  return result;
}

IO80211VirtualInterface *AppleBCMWLANProximityInterface::handleProbeResponse_rx(IO80211VirtualInterface *result, uint64_t a2)
{
  v2 = result;
  v3 = *(a2 + 20);
  if (v3 > 0x10)
  {
    v25 = 0;
    v24 = 0u;
    v23 = 0u;
    v22 = 0u;
    v21 = 0u;
    v19 = *(a2 + 24);
    v20 = *(a2 + 28);
    if (*(a2 + 48) == 512)
    {
      if (v3 <= 0x40)
      {
        return result;
      }

      v5 = -24;
      v6 = 72;
      v7 = 52;
      v8 = 60;
      v9 = 64;
      v10 = 56;
    }

    else
    {
      if (v3 < 0x39)
      {
        return result;
      }

      v5 = -16;
      v6 = 64;
      v7 = 50;
      v8 = 56;
      v9 = 60;
      v10 = 52;
    }

    v11 = bswap32(*(a2 + v10));
    *(&v23 + 2) = bswap32(*(a2 + v9));
    *(&v23 + 6) = v11;
    *(&v23 + 10) = bswap32(*(a2 + v8));
    ChanSpecHandler = AppleBCMWLANCore::getChanSpecHandler(*(*(result + 17) + 64));
    AppleBCMWLANChanSpec::getAppleChannelSpec(ChanSpecHandler, bswap32(*(a2 + v7)) >> 16);
    ChanSpecConvToApple80211Channel();
    v13 = *(a2 + 20);
    if (IO80211VirtualInterface::getMgmtFramePool(v2))
    {
      MgmtFramePool = IO80211VirtualInterface::getMgmtFramePool(v2);
      v15 = (*(*MgmtFramePool + 56))(MgmtFramePool);
      if (v15)
      {
        v16 = v15;
        v17 = v5 + v13;
        BytesNoCopy = IO80211Buffer::getBytesNoCopy(v15);
        *BytesNoCopy = -233373569;
        *(BytesNoCopy + 4) = 8;
        *(BytesNoCopy + 5) = 0;
        *(BytesNoCopy + 12) = 0;
        memcpy((BytesNoCopy + 16), (a2 + v6 + 40), v17 - 40);
        IO80211Buffer::setLength(v16, v17 - 24);
        ++*(*(v2 + 17) + 748);
        return IO80211VirtualInterface::bpfTapInput(v2, v16, 0xCu, &v19, 0x48uLL);
      }

      else
      {
        result = (*(*v2 + 1088))(v2);
        if (result)
        {
          (*(*v2 + 1088))(v2);
          result = CCLogStream::shouldLog();
          if (result)
          {
            return AppleBCMWLANProximityInterface::handleProbeResponse_rx(v2);
          }
        }
      }
    }

    else
    {
      result = (*(*v2 + 1088))(v2);
      if (result)
      {
        (*(*v2 + 1088))(v2);
        result = CCLogStream::shouldLog();
        if (result)
        {
          return AppleBCMWLANProximityInterface::handleProbeResponse_rx(v2);
        }
      }
    }
  }

  else
  {
    result = (*(*result + 1088))(result);
    if (result)
    {
      (*(*v2 + 1088))(v2);
      result = CCLogStream::shouldLog();
      if (result)
      {
        return AppleBCMWLANProximityInterface::handleProbeResponse_rx(v2);
      }
    }
  }

  return result;
}

uint64_t IO80211BufferCursor::asType<ether_addr>(uint64_t *a1, uint64_t a2, const char *a3)
{
  result = IO80211BufferCursor::_asType<ether_addr>(a1, a2, a3);
  if (__CFADD__(result, v4 >> 32))
  {
    v5 = (v4 >> 63) + 1;
  }

  else
  {
    v5 = v4 >> 63;
  }

  v6 = v5 << 63 >> 63;
  if (v6 != v5 || v6 < 0)
  {
    AppleBCMWLANProximityInterface::handleEvent(result, v4);
  }

  return result;
}

IO80211SkywalkInterface *AppleBCMWLANProximityInterface::handleAvailabilityWindowEnd(IO80211SkywalkInterface *this, const IO80211BufferCursor *a2)
{
  v3 = this;
  v23 = 0u;
  v22 = 0u;
  v4 = *(a2 + 1);
  if (v4 < 0x1C)
  {
    v6 = 0;
    v5 = 0;
  }

  else
  {
    v5 = *a2;
    v6 = 28;
    if ((*a2 + 28) < *a2)
    {
      AppleBCMWLANProximityInterface::handleEvent(this, a2);
    }
  }

  v7 = (v5 + HIDWORD(v6));
  if (v7)
  {
    if (HIDWORD(v6) + 28 > v6)
    {
      AppleBCMWLANProximityInterface::handleEvent(this, a2);
    }

    v8 = *v7;
    v21[0] = *(v7 + 12);
    v21[1] = v8;
    LOBYTE(v22) = *(v7 + 17);
    DWORD1(v22) = *(v7 + 18);
    if (v4 < 0x1E || (*(*(this + 17) + 109) & 1) == 0)
    {
      return AppleBCMWLANProximityInterface::handleAvailabilityWindowEnd(v3 + 136, v3, v21);
    }

    v9 = IO80211BufferCursor::asType<ether_addr>(a2, 28, 6);
    v11 = (v9 + (v10 >> 32));
    if (__CFADD__(v9, v10 >> 32))
    {
      v12 = (v10 >> 63) + 1;
    }

    else
    {
      v12 = v10 >> 63;
    }

    v13 = v12 << 63 >> 63;
    if (v13 != v12 || v13 < 0)
    {
      AppleBCMWLANProximityInterface::handleEvent(v9, v10);
    }

    v14 = v10;
    if (v11)
    {
      if (v10 < 0)
      {
        goto LABEL_36;
      }
    }

    else
    {
      v9 = AppleBCMWLANProximityInterface::handleAvailabilityWindowEnd(v3);
      if (v14 < 0)
      {
        goto LABEL_36;
      }
    }

    if (HIDWORD(v14) + 6 <= v14)
    {
      if (*v11)
      {
        if (*v11 == 1)
        {
          if (v4 <= 0x33)
          {
            AppleBCMWLANProximityInterface::handleAvailabilityWindowEnd(v3);
          }

          else
          {
            v15 = IO80211BufferCursor::asType<apple8021_awdl_cca_stats>(a2, 4, 0x14);
            v17 = v15 + (v16 >> 32);
            if (__CFADD__(v15, v16 >> 32))
            {
              v18 = (v16 >> 63) + 1;
            }

            else
            {
              v18 = v16 >> 63;
            }

            v19 = v18 << 63 >> 63;
            if (v19 != v18 || v19 < 0)
            {
              AppleBCMWLANProximityInterface::handleEvent(v15, v16);
            }

            if (v17)
            {
              DWORD2(v22) = *v11;
              if (v16 < 0 || HIDWORD(v16) + 20 > v16)
              {
                AppleBCMWLANProximityInterface::handleEvent(v15, v16);
              }

              HIDWORD(v22) = *v17;
              v23 = *(v17 + 4);
            }

            else
            {
              AppleBCMWLANProximityInterface::handleAvailabilityWindowEnd(v3);
            }
          }
        }

        else
        {
          ClassNameHelper = getClassNameHelper(v3);
          IO80211VirtualInterface::logDebug(v3, "%s::%s ERROR: pxtlv->id is set to random value (pxtlv->id: %u) \n", ClassNameHelper, "handleAvailabilityWindowEnd", *v11);
        }
      }

      return AppleBCMWLANProximityInterface::handleAvailabilityWindowEnd(v3 + 136, v3, v21);
    }

LABEL_36:
    AppleBCMWLANProximityInterface::handleEvent(v9, v10);
  }

  return this;
}

IO80211SkywalkInterface *AppleBCMWLANProximityInterface::handleAvailabilityWindowStart(IO80211SkywalkInterface *this, const IO80211BufferCursor *a2)
{
  v2 = this;
  v14 = 0u;
  v13 = 0u;
  v3 = *(a2 + 1);
  if (v3 < 0x1C)
  {
    v5 = 0;
    v4 = 0;
  }

  else
  {
    v4 = *a2;
    v5 = 28;
    if ((*a2 + 28) < *a2)
    {
      AppleBCMWLANProximityInterface::handleEvent(this, a2);
    }
  }

  v6 = v4 + HIDWORD(v5);
  if (v6)
  {
    if (HIDWORD(v5) + 28 > v5)
    {
      AppleBCMWLANProximityInterface::handleEvent(this, a2);
    }

    v7 = *(v6 + 13);
    if (v7 == 2)
    {
      v8 = 1;
      goto LABEL_11;
    }

    if (v7 == 1)
    {
      v8 = 3;
      goto LABEL_11;
    }

    if (!*(v6 + 13))
    {
      v8 = 2;
LABEL_11:
      LODWORD(v13) = v8;
LABEL_18:
      LODWORD(v14) = *v6;
      v9 = *(v6 + 10);
      v10 = *(v6 + 4);
      WORD4(v13) = *(v6 + 8);
      v12 = v9;
      DWORD1(v13) = v10;
      HIWORD(v13) = *(v6 + 26);
      *(&v13 + 10) = *(v6 + 22);
      ChanSpecHandler = AppleBCMWLANCore::getChanSpecHandler(*(*(v2 + 17) + 64));
      AppleBCMWLANChanSpec::getAppleChannelSpec(ChanSpecHandler, *(v6 + 15));
      ChanSpecConvToApple80211Channel();
      return IO80211Controller::postMessage(*(*(v2 + 17) + 64), v2, 0x29u, &v12, 0x24uLL, 1);
    }

    if (v3 >= 0x1C && *a2)
    {
      if ((*(*this + 1088))(this))
      {
        (*(*v2 + 1088))(v2);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANProximityInterface::handleAvailabilityWindowStart(v2);
        }
      }

      (*(*v2 + 1088))(v2);
      IO80211Hexdump();
      goto LABEL_18;
    }
  }

  return this;
}

_DWORD *AppleBCMWLANProximityInterface::handleAvailabilityWindowExtension(AppleBCMWLANProximityInterface *this, const IO80211BufferCursor *a2)
{
  if (*(a2 + 1) < 0x1CuLL)
  {
    v4 = 0;
    v2 = 0;
  }

  else
  {
    v2 = *a2;
    v3 = (*a2 + 28) >= *a2;
    v4 = 28;
    if (!v3)
    {
      AppleBCMWLANProximityInterface::handleEvent(this, 0x1C);
    }
  }

  return AppleBCMWLANProximityInterface::handleAvailabilityWindowExtension(&v6, v4, this, v2);
}

uint64_t AppleBCMWLANProximityInterface::handleMasterEvent(AppleBCMWLANProximityInterface *this)
{
  if (*(*(this + 17) + 712))
  {
    if ((*(*this + 1088))(this))
    {
      (*(*this + 1088))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANProximityInterface::handleMasterEvent(this);
      }
    }
  }

  *(*(this + 17) + 668) = 2;
  v5 = 0;
  v4 = 0;
  v3 = 1;
  IO80211Controller::postMessage(*(*(this + 17) + 64), this, 0x2Eu, &v3, 0x10uLL, 1);
  return AppleBCMWLANProximityInterface::setAfTxMode(this);
}

uint64_t AppleBCMWLANProximityInterface::handleSlaveEvent(AppleBCMWLANProximityInterface *this)
{
  if (*(*(this + 17) + 712))
  {
    if ((*(*this + 1088))(this))
    {
      (*(*this + 1088))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANProximityInterface::handleSlaveEvent(this);
      }
    }
  }

  v4 = 0xAAAAAAAAAAAAAAAALL;
  v5 = -1431655766;
  v3 = 2;
  IO80211Controller::postMessage(*(*(this + 17) + 64), this, 0x2Eu, &v3, 0x10uLL, 1);
  *(*(this + 17) + 668) = 0;
  return AppleBCMWLANProximityInterface::setAfTxMode(this);
}

uint64_t AppleBCMWLANProximityInterface::handleNonElectionMasterEvent(AppleBCMWLANProximityInterface *this)
{
  if (*(*(this + 17) + 712))
  {
    if ((*(*this + 1088))(this))
    {
      (*(*this + 1088))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANProximityInterface::handleNonElectionMasterEvent(this);
      }
    }
  }

  *(*(this + 17) + 668) = 1;
  v5 = 0;
  v4 = 0;
  v3 = 3;
  IO80211Controller::postMessage(*(*(this + 17) + 64), this, 0x2Eu, &v3, 0x10uLL, 1);
  return AppleBCMWLANProximityInterface::setAfTxMode(this);
}

void AppleBCMWLANProximityInterface::handleActionFrame_complete(AppleBCMWLANProximityInterface *this, const IO80211BufferCursor *a2)
{
  mach_continuous_time();
  v3 = absolutetime_to_nanoseconds();
  if (*(a2 + 1) >= 0x30uLL && (*a2 + 48) < *a2)
  {
    AppleBCMWLANProximityInterface::handleEvent(v3, v4);
  }

  AppleBCMWLANProximityInterface::handleActionFrame_complete();
}

uint64_t AppleBCMWLANProximityInterface::handleProxIovarAsyncCallBack(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a3 != -469794537 && a3 != 0)
  {
    v6 = result;
    result = (*(*result + 1088))(result);
    if (result)
    {
      (*(*v6 + 1088))(v6);
      result = CCLogStream::shouldLog();
      if (result)
      {
        return AppleBCMWLANProximityInterface::handleProxIovarAsyncCallBack(v6, v6 & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000, a3, a2);
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANProximityInterface::init(AppleBCMWLANProximityInterface *this)
{
  result = IO80211SkywalkInterface::init(this);
  if (result)
  {
    v3 = IOMallocZeroTyped();
    *(this + 17) = v3;
    return v3 != 0;
  }

  return result;
}

BOOL AppleBCMWLANProximityInterface::init(AppleBCMWLANProximityInterface *this, AppleBCMWLANCore *a2, ether_addr *a3, unsigned int a4, char *a5)
{
  if (!IO80211VirtualInterface::init(this, a2, a3, a4, a5))
  {
    return 0;
  }

  if (AppleBCMWLANCore::isHostAssignedInterfaceIndex(a2))
  {
    IO80211SkywalkInterface::setInterfaceId(this, 2u);
    AppleBCMWLANCore::setProxSkywalkInterface(a2, 2u);
  }

  else
  {
    IO80211SkywalkInterface::setInterfaceId(this, 0xFFFFFFFF);
  }

  *(*(this + 17) + 936) = 0;
  *(*(this + 17) + 120) = 0;
  *(*(this + 17) + 920) = 3;
  *(*(this + 17) + 24) = AppleBCMWLANProximityInterface::setChannelAsyncCallback;
  *(*(this + 17) + 64) = a2;
  *(*(this + 17) + 72) = 1;
  *(*(this + 17) + 680) = 6;
  *(*(this + 17) + 924) = 0;
  *(*(this + 17) + 868) = 1;
  *(*(this + 17) + 668) = 4;
  *(*(this + 17) + 732) = 100;
  *(*(this + 17) + 736) = 0;
  *(*(this + 17) + 788) = 3;
  *(*(this + 17) + 784) = 60;
  *(*(this + 17) + 780) = 40;
  *(*(this + 17) + 764) = 1;
  AppleBCMWLANProximityInterface::setLifeTime(this, 6);
  *(*(this + 17) + 720) = 200;
  AppleBCMWLANProximityInterface::setGuardTime(this, 20);
  AppleBCMWLANProximityInterface::setMaxNoMasterPeriod(this, 4);
  *(*(this + 17) + 656) = 1;
  *(*(this + 17) + 712) = 0;
  *(*(this + 17) + 696) = 12;
  *(*(this + 17) + 648) = 0;
  *(*(this + 17) + 559) = -45;
  *(*(this + 17) + 561) = -55;
  *(*(this + 17) + 562) = -50;
  *(*(this + 17) + 563) = -70;
  *(*(this + 17) + 560) = 5;
  *(*(this + 17) + 564) = 1;
  *(*(this + 17) + 565) = 3;
  *(*(this + 17) + 566) = 4;
  *(*(this + 17) + 524) = 0;
  *(*(this + 17) + 525) = 23;
  *(*(this + 17) + 526) = -14;
  *(*(this + 17) + 527) = 8;
  *(*(this + 17) + 16) = 1;
  *(*(this + 17) + 708) = 0;
  *(*(this + 17) + 660) = 90;
  if ((*(*this + 1088))(this))
  {
    (*(*this + 1088))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANProximityInterface::init(this);
    }
  }

  v12 = 0;
  if (IOParseBootArgNumber("awdl_log_flags_config", &v12, 4))
  {
    if ((*(*this + 1088))(this))
    {
      v8 = (*(*this + 1088))(this);
      (*(*v8 + 128))(v8, 1024);
      v9 = (*(*this + 1088))(this);
      (*(*v9 + 168))(v9, 1024);
    }

    if (v12 >= 2)
    {
      *(*(this + 17) + 712) = v12 - 1;
    }
  }

  *(*(this + 17) + 900) = -1;
  IOParseBootArgNumber("awdl_max_peers", (*(this + 17) + 900), 4);
  *(*(this + 17) + 904) = 1;
  IOParseBootArgNumber("awdl_low_latency_default_mapping", (*(this + 17) + 904), 4);
  *(*(this + 17) + 908) = 0;
  IOParseBootArgNumber("awdl_low_latency_tx_requeue", (*(this + 17) + 908), 4);
  *(*(this + 17) + 544) = 0;
  *(*(this + 17) + 92) = 0;
  *(*(this + 17) + 992) = AppleBCMWLANCore::getTxPowerManager(*(*(this + 17) + 64));
  v10 = *(*(this + 17) + 992);
  v7 = v10 != 0;
  if (v10)
  {
    (*(*v10 + 8))(v10);
    *(*(this + 17) + 960) = AppleBCMWLANCore::getCommander(*(*(this + 17) + 64));
    *(*(this + 17) + 937) = 4;
    *(*(this + 17) + 940) = 0;
    *(*(this + 17) + 944) = 1;
    *(*(this + 17) + 948) = 2;
    *(*(this + 17) + 952) = 3;
  }

  else
  {
    if ((*(*this + 1088))(this))
    {
      (*(*this + 1088))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANProximityInterface::init(this);
      }
    }

    (*(*this + 2168))(this);
  }

  return v7;
}

uint64_t AppleBCMWLANProximityInterface::setChannelAsyncCallback(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = (*(*a1 + 1088))(a1);
  if (result)
  {
    (*(*a1 + 1088))(a1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      return AppleBCMWLANProximityInterface::setChannelAsyncCallback(a1, a1 & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000, a3);
    }
  }

  return result;
}

{
  v5 = OUTLINED_FUNCTION_11_4(a1);
  v7 = (*(v6 + 1088))(v5);
  v8 = OUTLINED_FUNCTION_16_3(*(v3 + 136));
  (*(v9 + 112))(v8, a3);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v7, "[dk] %s@%d: WLC_SET_CHANNEL(), %s\n", v11, v12, v13);
}

uint64_t AppleBCMWLANProximityInterface::setLifeTime(AppleBCMWLANProximityInterface *this, int a2)
{
  result = (*(*this + 1088))(this);
  if (result)
  {
    (*(*this + 1088))(this);
    result = CCLogStream::shouldLog();
    if (result)
    {
      result = AppleBCMWLANProximityInterface::setLifeTime(this);
    }
  }

  *(*(this + 17) + 792) = a2;
  return result;
}

uint64_t AppleBCMWLANProximityInterface::setGuardTime(AppleBCMWLANProximityInterface *this, int a2)
{
  result = (*(*this + 1088))(this);
  if (result)
  {
    (*(*this + 1088))(this);
    result = CCLogStream::shouldLog();
    if (result)
    {
      result = AppleBCMWLANProximityInterface::setGuardTime(this);
    }
  }

  *(*(this + 17) + 692) = a2;
  return result;
}

uint64_t AppleBCMWLANProximityInterface::setMaxNoMasterPeriod(AppleBCMWLANProximityInterface *this, int a2)
{
  result = (*(*this + 1088))(this);
  if (result)
  {
    (*(*this + 1088))(this);
    result = CCLogStream::shouldLog();
    if (result)
    {
      result = AppleBCMWLANProximityInterface::setMaxNoMasterPeriod(this);
    }
  }

  *(*(this + 17) + 688) = a2;
  return result;
}

uint64_t AppleBCMWLANProximityInterface::freeResources(AppleBCMWLANProximityInterface *this)
{
  v2 = *(this + 17);
  if (*v2)
  {
    (*(**v2 + 80))(*v2);
    (*(***(this + 17) + 16))(**(this + 17));
    **(this + 17) = 0;
    v2 = *(this + 17);
  }

  v3 = v2[1];
  if (v3)
  {
    (*(*v3 + 80))(v3);
    (*(**(*(this + 17) + 8) + 16))(*(*(this + 17) + 8));
    *(*(this + 17) + 8) = 0;
    v2 = *(this + 17);
  }

  v4 = v2[124];
  if (v4)
  {
    (*(*v4 + 16))(v4);
    *(*(this + 17) + 992) = 0;
    v2 = *(this + 17);
  }

  result = v2[14];
  if (result)
  {
    result = (*(*result + 16))(result);
    *(*(this + 17) + 112) = 0;
  }

  return result;
}

uint64_t AppleBCMWLANProximityInterface::free(void **this)
{
  if (this[17])
  {
    (*(*this + 271))(this);
    bzero(this[17], 0x458uLL);
    v2 = this[17];
    if (v2)
    {
      IOFree(v2, 0x458uLL);
      this[17] = 0;
    }
  }

  return IO80211VirtualInterface::free(this);
}

uint64_t AppleBCMWLANProximityInterface::stop(AppleBCMWLANProximityInterface *this, IOService *a2)
{
  WorkQueue = IO80211SkywalkInterface::getWorkQueue(this);
  IOLog("AppleBCMWLANProximityInterface::stop[%u] stop( %p)\n", 1088, a2);
  IO80211SkywalkInterface::validateDispatchQueue(this);
  if ((*(*this + 1088))(this))
  {
    (*(*this + 1088))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANProximityInterface::stop(this);
    }
  }

  v5 = *(this + 17);
  if (*(v5 + 937))
  {
    v6 = 128;
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

      v9 = v6 - 127;
      ++v6;
    }

    while (v9 < *(v5 + 937));
  }

  v10 = *(v5 + 1000);
  if (v10)
  {
    (*(*v10 + 200))(v10);
    v5 = *(this + 17);
    v11 = *(v5 + 1000);
    if (v11)
    {
      (*(*v11 + 16))(v11);
      *(*(this + 17) + 1000) = 0;
      v5 = *(this + 17);
    }
  }

  v12 = *(v5 + 1008);
  if (v12)
  {
    (*(*v12 + 208))(v12);
    v5 = *(this + 17);
    v13 = *(v5 + 1008);
    if (v13)
    {
      (*(*v13 + 16))(v13);
      *(*(this + 17) + 1008) = 0;
      v5 = *(this + 17);
    }
  }

  v14 = *(v5 + 1056);
  if (v14)
  {
    (*(*v14 + 72))(v14);
    (*(*WorkQueue + 72))(WorkQueue, *(*(this + 17) + 1056));
    v15 = *(*(this + 17) + 1056);
    if (v15)
    {
      (*(*v15 + 16))(v15);
      *(*(this + 17) + 1056) = 0;
    }
  }

  IOLog("AppleBCMWLANProximityInterface::stop[%u] super::stop( %p) >>\n", 1131, a2);

  return IO80211VirtualInterface::stop(this, a2);
}

uint64_t AppleBCMWLANProximityInterface::getSTATE(uint64_t *a1, uint64_t a2)
{
  *(a2 + 4) = 4;
  if ((*(*a1 + 1088))(a1))
  {
    (*(*a1 + 1088))(a1);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANProximityInterface::getSTATE(a1);
    }
  }

  return 0;
}

uint64_t non-virtual thunk toAppleBCMWLANProximityInterface::getSTATE(uint64_t a1, uint64_t a2)
{
  AppleBCMWLANProximityInterface::getSTATE((a1 - 112), a2);
  return 0;
}

{
  AppleBCMWLANProximityInterface::getSTATE((a1 - 128), a2);
  return 0;
}

uint64_t AppleBCMWLANProximityInterface::setAWDL_AF_TX_MODE(IO80211SkywalkInterface *a1, uint64_t a2)
{
  v3 = (a2 + 4);
  v11 = *(a2 + 4);
  v10[0] = a1;
  v10[1] = AppleBCMWLANProximityInterface::handleProxIovarAsyncCallBack;
  v10[2] = 0;
  v4 = *(*(a1 + 17) + 960);
  InterfaceId = IO80211SkywalkInterface::getInterfaceId(a1);
  v9[0] = &v11;
  v9[1] = 4;
  v6 = AppleBCMWLANCommander::sendVirtualIOVarSet(v4, InterfaceId, "awdl_aftxmode", v9, kNoRxExpected, v10, 0);
  v7 = (*(*a1 + 1088))(a1);
  if (v6)
  {
    if (v7)
    {
      (*(*a1 + 1088))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANProximityInterface::setAWDL_AF_TX_MODE(a1);
      }
    }
  }

  else if (v7)
  {
    (*(*a1 + 1088))(a1);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANProximityInterface::setAWDL_AF_TX_MODE(a1, a1 & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000, v3);
    }
  }

  return v6;
}

uint64_t non-virtual thunk toAppleBCMWLANProximityInterface::setAWDL_AF_TX_MODE(uint64_t a1, uint64_t a2)
{
  return AppleBCMWLANProximityInterface::setAWDL_AF_TX_MODE((a1 - 112), a2);
}

{
  return AppleBCMWLANProximityInterface::setAWDL_AF_TX_MODE((a1 - 128), a2);
}

uint64_t AppleBCMWLANProximityInterface::getAWDL_AF_TX_MODE(IO80211SkywalkInterface *a1, uint64_t a2)
{
  v10 = 0;
  v9[0] = &v10;
  v9[1] = 0x400040004;
  v4 = *(*(a1 + 17) + 960);
  InterfaceId = IO80211SkywalkInterface::getInterfaceId(a1);
  v8[0] = &v10;
  v8[1] = 4;
  v6 = AppleBCMWLANCommander::runVirtualIOVarGet(v4, InterfaceId, "awdl_aftxmode", v8, v9, 0);
  if (v6)
  {
    if ((*(*a1 + 1088))(a1))
    {
      (*(*a1 + 1088))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANProximityInterface::getAWDL_AF_TX_MODE(a1);
      }
    }
  }

  else
  {
    *(a2 + 4) = v10;
    if ((*(*a1 + 1088))(a1))
    {
      (*(*a1 + 1088))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANProximityInterface::getAWDL_AF_TX_MODE(a1);
      }
    }
  }

  return v6;
}

uint64_t non-virtual thunk toAppleBCMWLANProximityInterface::getAWDL_AF_TX_MODE(uint64_t a1, uint64_t a2)
{
  return AppleBCMWLANProximityInterface::getAWDL_AF_TX_MODE((a1 - 112), a2);
}

{
  return AppleBCMWLANProximityInterface::getAWDL_AF_TX_MODE((a1 - 128), a2);
}

uint64_t AppleBCMWLANProximityInterface::bringdownLink(AppleBCMWLANProximityInterface *this)
{
  *(*(this + 17) + 32) = 0;
  v2 = *(this + 17);
  if (*(v2 + 664))
  {
    v3 = AppleBCMWLANProximityInterface::doSetSyncState(this, 0);
    v5[0] = 0;
    v5[1] = 0;
    IO80211Controller::postMessage(*(*(this + 17) + 64), this, 0x2Eu, v5, 0x10uLL, 1);
    v2 = *(this + 17);
  }

  else
  {
    v3 = 0;
  }

  *(v2 + 708) = 0;
  *(*(this + 17) + 872) = 0;
  if ((*(*this + 1088))(this))
  {
    (*(*this + 1088))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANProximityInterface::bringdownLink(this);
    }
  }

  (*(*this + 1472))(this, 1, 1);
  return v3;
}

uint64_t AppleBCMWLANProximityInterface::doSetSyncState(unint64_t this, int a2)
{
  v24 = a2;
  v4 = (this + 136);
  v5 = *(*(this + 136) + 64);
  if (v5)
  {
    AppleBCMWLANCore::reportSystemPowerState(v5, 2, a2, 1);
  }

  if ((*(*this + 1088))(this))
  {
    (*(*this + 1088))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANProximityInterface::doSetSyncState(this, this & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000, v4, a2);
    }
  }

  v6 = *v4;
  v7 = *(*v4 + 64);
  if (a2)
  {
    if (!v7)
    {
      return 0;
    }

    goto LABEL_13;
  }

  if (v7)
  {
    AppleBCMWLANCore::writeEventBitField(v7);
    (*(*this + 688))(this, 6, 0, 0, 0);
    v6 = *(this + 136);
  }

  v7 = *(v6 + 64);
  if (!v7)
  {
    return 0;
  }

  if (a2)
  {
LABEL_13:
    AppleBCMWLANCore::addEventBit(v7);
    AppleBCMWLANCore::addEventBit(*(*v4 + 64));
    AppleBCMWLANCore::addEventBit(*(*v4 + 64));
    AppleBCMWLANCore::removeEventBit(*(*v4 + 64), 0x4Bu);
    goto LABEL_25;
  }

  AppleBCMWLANCore::removeEventBit(v7, 0x60u);
  AppleBCMWLANCore::removeEventBit(*(*v4 + 64), 0x61u);
  AppleBCMWLANCore::removeEventBit(*(*v4 + 64), 0x62u);
  AppleBCMWLANCore::addEventBit(*(*v4 + 64));
  if (*(*v4 + 81) == 1)
  {
    if ((*(*this + 1088))(this))
    {
      (*(*this + 1088))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANProximityInterface::doSetSyncState(this);
      }
    }

    (*(*this + 688))(this, 6, 0, 0, 0);
    *(*(this + 136) + 81) = 0;
  }

  else if (*(*v4 + 82) == 1)
  {
    if ((*(*this + 1088))(this))
    {
      (*(*this + 1088))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANProximityInterface::doSetSyncState(this);
      }
    }

    *(*v4 + 82) = 0;
  }

  v23 = 0;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v18 = 0u;
  (*(*this + 1824))(this, &v18);
LABEL_25:
  v8 = AppleBCMWLANCore::writeEventBitField(*(*v4 + 64));
  if (v8)
  {
    v9 = v8;
    if ((*(*this + 1088))(this))
    {
      (*(*this + 1088))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANProximityInterface::doSetSyncState(this);
      }
    }
  }

  else
  {
    *&v18 = this;
    *(&v18 + 1) = AppleBCMWLANProximityInterface::handleProxIovarAsyncCallBack;
    *&v19 = 0;
    if (IO80211SkywalkInterface::getInterfaceId(this) == -1)
    {
      if ((*(*this + 1088))(this))
      {
        (*(*this + 1088))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANProximityInterface::doSetSyncState(this);
        }
      }

      return 22;
    }

    else
    {
      v10 = *(*(this + 136) + 960);
      InterfaceId = IO80211SkywalkInterface::getInterfaceId(this);
      v17[0] = &v24;
      v17[1] = 4;
      v12 = AppleBCMWLANCommander::sendVirtualIOVarSet(v10, InterfaceId, "awdl", v17, kNoRxExpected, &v18, 0);
      if (!v12)
      {
        *(*(this + 136) + 664) = a2;
        AppleBCMWLANProximityInterface::setAfTxMode(this);
        v13 = *(this + 136);
        if (*(v13 + 664))
        {
          AppleBCMWLANCore::writeEventBitField(*(v13 + 64));
          v13 = *v4;
        }

        *(*v4 + 968) = AppleBCMWLANCore::getPowerManager(*(v13 + 64));
        v14 = *(*v4 + 968);
        if (v14)
        {
          AppleBCMWLANPowerManager::configurePowerSaveForAWDL(v14, *(*v4 + 664) == 0);
        }

        else if ((*(*this + 1088))(this))
        {
          (*(*this + 1088))(this);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANProximityInterface::doSetSyncState(this);
          }
        }

        v15 = *(*v4 + 64);
        if (v15)
        {
          AppleBCMWLANCore::reportSystemPowerState(v15, 2, a2, 0);
        }

        return 0;
      }

      v9 = v12;
      if ((*(*this + 1088))(this))
      {
        (*(*this + 1088))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANProximityInterface::doSetSyncState(this, this & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000, v4, v9);
        }
      }
    }
  }

  return v9;
}

uint64_t AppleBCMWLANProximityInterface::setBssRates(unint64_t this)
{
  v2 = *(this + 136);
  v22 = 2 * *(v2 + 696);
  isFWAPIVer11nOnly = AppleBCMWLANCore::isFWAPIVer11nOnly(*(v2 + 64));
  if (isFWAPIVer11nOnly)
  {
    v4 = "bg_mrate";
  }

  else
  {
    v4 = "2g_mrate";
  }

  if (isFWAPIVer11nOnly)
  {
    v5 = "a_mrate";
  }

  else
  {
    v5 = "5g_mrate";
  }

  if (IO80211SkywalkInterface::getInterfaceId(this) == -1 || IO80211SkywalkInterface::getInterfaceId(this) == 255 || IO80211SkywalkInterface::getInterfaceId(this) >= 0xC)
  {
    result = (*(*this + 1088))(this);
    if (result)
    {
      (*(*this + 1088))(this);
      result = CCLogStream::shouldLog();
      if (result)
      {
        return AppleBCMWLANProximityInterface::setBssRates(this);
      }
    }
  }

  else
  {
    v7 = *(*(this + 136) + 960);
    InterfaceId = IO80211SkywalkInterface::getInterfaceId(this);
    v20 = &v22;
    v21 = 4;
    v9 = AppleBCMWLANCommander::runVirtualIOVarSet(v7, InterfaceId, v4, &v20, 0, 0);
    v10 = (*(*this + 1088))(this);
    if (v9)
    {
      if (v10)
      {
        (*(*this + 1088))(this);
        if (CCLogStream::shouldLog())
        {
          v11 = (*(*this + 1088))(this);
          v12 = v22 / 2;
          v13 = (*(*this + 920))(this, v9);
          CCLogStream::logAlert(v11, "[dk] %s@%d: Unable to send %s iovar with mrate %d Mbps,: %s \n", "setBssRates", 1310, v4, v12, v13);
        }
      }
    }

    else if (v10)
    {
      (*(*this + 1088))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANProximityInterface::setBssRates(this, this & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000, &v22, v4);
      }
    }

    if (IO80211SkywalkInterface::getInterfaceId(this) == -1 || IO80211SkywalkInterface::getInterfaceId(this) == 255 || IO80211SkywalkInterface::getInterfaceId(this) >= 0xC)
    {
      result = (*(*this + 1088))(this);
      if (result)
      {
        (*(*this + 1088))(this);
        result = CCLogStream::shouldLog();
        if (result)
        {
          return AppleBCMWLANProximityInterface::setBssRates(this);
        }
      }
    }

    else
    {
      result = AppleBCMWLANCore::isDualBand(*(*(this + 136) + 64));
      if (result)
      {
        v14 = *(*(this + 136) + 960);
        v15 = IO80211SkywalkInterface::getInterfaceId(this);
        v20 = &v22;
        v21 = 4;
        v16 = AppleBCMWLANCommander::runVirtualIOVarSet(v14, v15, v5, &v20, 0, 0);
        result = (*(*this + 1088))(this);
        if (v16)
        {
          if (result)
          {
            (*(*this + 1088))(this);
            result = CCLogStream::shouldLog();
            if (result)
            {
              v17 = (*(*this + 1088))(this);
              v18 = v22 / 2;
              v19 = (*(*this + 920))(this, v16);
              return CCLogStream::logAlert(v17, "[dk] %s@%d: Unable to send %s iovar with mrate %d Mbps,: %s \n", "setBssRates", 1326, v5, v18, v19);
            }
          }
        }

        else if (result)
        {
          (*(*this + 1088))(this);
          result = CCLogStream::shouldLog();
          if (result)
          {
            return AppleBCMWLANProximityInterface::setBssRates(this, this & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000, &v22, v5);
          }
        }
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANProximityInterface::bringupLink(AppleBCMWLANProximityInterface *this)
{
  v2 = this + 136;
  if (*(*(this + 17) + 72) == 1)
  {
    AppleBCMWLANProximityInterface::resetInterface(this);
  }

  if ((*(*this + 1088))(this))
  {
    (*(*this + 1088))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANProximityInterface::bringupLink(this);
    }
  }

  if (AppleBCMWLANCore::isPoweredOn(*(*v2 + 64)))
  {
    (*(*this + 1472))(this, 2, 1);
  }

  return 0;
}

uint64_t non-virtual thunk toAppleBCMWLANProximityInterface::getBSSID()
{
  return 3758096385;
}

{
  return 3758096385;
}

uint64_t AppleBCMWLANProximityInterface::getSSID(uint64_t a1, uint64_t a2)
{
  *(a2 + 4) = 0x6C64776100000004;
  *(a2 + 12) = 0;
  return 0;
}

uint64_t non-virtual thunk toAppleBCMWLANProximityInterface::getSSID(uint64_t a1, uint64_t a2)
{
  *(a2 + 4) = 0x6C64776100000004;
  *(a2 + 12) = 0;
  return 0;
}

{
  *(a2 + 4) = 0x6C64776100000004;
  *(a2 + 12) = 0;
  return 0;
}

uint64_t non-virtual thunk toAppleBCMWLANProximityInterface::getCHANNEL()
{
  return 0;
}

{
  return 0;
}

uint64_t AppleBCMWLANProximityInterface::setAfTxMode(AppleBCMWLANProximityInterface *this)
{
  v14 = 0;
  if ((*(*this + 1088))(this))
  {
    (*(*this + 1088))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANProximityInterface::setAfTxMode(this);
    }
  }

  v3 = this + 136;
  v2 = *(this + 17);
  if (*(v2 + 536))
  {
    v13[0] = this;
    v13[1] = AppleBCMWLANProximityInterface::handleProxIovarAsyncCallBack;
    v13[2] = 0;
    v4 = *(v2 + 960);
    InterfaceId = IO80211SkywalkInterface::getInterfaceId(this);
    v12[0] = &v14;
    v12[1] = 4;
    v6 = AppleBCMWLANCommander::sendVirtualIOVarSet(v4, InterfaceId, "awdl_aftxmode", v12, kNoRxExpected, v13, 0);
    if (v6)
    {
      if ((*(*this + 1088))(this))
      {
        (*(*this + 1088))(this);
        if (CCLogStream::shouldLog())
        {
          v7 = (*(*this + 1088))(this);
          v8 = *(*(this + 17) + 536);
          v9 = v14;
          v10 = (*(*this + 920))(this, v6);
          CCLogStream::logCrit(v7, "[dk] %s@%d:Critical Error: cannot send %s iovar ivars->fAfTxMode %lu mode %lu: %s\n", "setAfTxMode", 1651, "awdl_aftxmode", v8, v9, v10);
        }
      }
    }

    else
    {
      *(*v3 + 536) = v14;
    }

    v2 = *v3;
  }

  else
  {
    v6 = 0;
  }

  if (*(v2 + 712))
  {
    if ((*(*this + 1088))(this))
    {
      (*(*this + 1088))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANProximityInterface::setAfTxMode(this);
      }
    }
  }

  return v6;
}

uint64_t AppleBCMWLANProximityInterface::dump(OSObject *this, char *a2)
{
  (this->OSMetaClassBase::__vftable[19].isEqualTo)(this);
  meta = this[3].meta;
  v5 = meta[167];
  if (v5 <= 4)
  {
    v6 = off_1003C8858[v5];
  }

  meta[177];
  v17 = meta[223];
  v20 = meta[224];
  v7 = IO80211Print();
  (this->OSMetaClassBase::__vftable[19].isEqualTo)(this);
  v8 = this[3].meta;
  v27 = v8[176];
  v29 = v8[8];
  v23 = v8[187];
  v25 = v8[175];
  v18 = v8[154];
  v21 = v8[155];
  v13 = v8[164];
  v15 = v8[9];
  v9 = IO80211Print() + v7;
  (this->OSMetaClassBase::__vftable[19].isEqualTo)(this);
  v10 = this[3].meta;
  v28 = *(&v10[17].refcount + 3);
  v30 = LOBYTE(v10[17].__vftable);
  metaClassPrivate_high = HIDWORD(v10[16].metaClassPrivate);
  metaClassPrivate_low = LODWORD(v10[16].metaClassPrivate);
  v19 = LODWORD(v10[24].__vftable);
  meta_high = HIDWORD(v10[23].meta);
  refcount = v10[24].refcount;
  meta_low = LODWORD(v10[23].meta);
  v11 = IO80211Print() + v9;
  AppleBCMWLANProximityInterface::dumpSyncParams(this, a2);
  return v11;
}

uint64_t AppleBCMWLANProximityInterface::dumpSyncParams(OSObject *this, char *a2)
{
  if (!LODWORD(this[3].meta[20].metaClassPrivate))
  {
    return 0;
  }

  WorkQueue = IO80211SkywalkInterface::getWorkQueue(this);
  if ((*(*WorkQueue + 136))(WorkQueue))
  {
    (this->OSMetaClassBase::__vftable[19].isEqualTo)(this);
    getClassNameHelper(this);
    metaClassPrivate_low = LODWORD(this[3].meta[20].metaClassPrivate);
    IO80211Print();
    return 0;
  }

  v17 = 0;
  memset(v16, 0, sizeof(v16));
  v15[0] = v16;
  v15[1] = 0x2400240024;
  v5 = this[3].meta[30].__vftable;
  InterfaceId = IO80211SkywalkInterface::getInterfaceId(this);
  v14[0] = v16;
  v14[1] = 36;
  v7 = AppleBCMWLANCommander::runVirtualIOVarGet(v5, InterfaceId, "awdl_sync_params", v14, v15, 0);
  v8 = (this->OSMetaClassBase::__vftable[19].isEqualTo)(this);
  if (!v7)
  {
    getClassNameHelper(this);
    v12 = LODWORD(this[3].meta[20].metaClassPrivate);
    v9 = IO80211Print();
    (this->OSMetaClassBase::__vftable[19].isEqualTo)(this);
    reserved = this[3].meta[21].reserved;
    v10 = IO80211Print() + v9;
    (this->OSMetaClassBase::__vftable[19].isEqualTo)(this);
    LODWORD(v10) = IO80211Print() + v10;
    (this->OSMetaClassBase::__vftable[19].isEqualTo)(this);
    return IO80211HexdumpIfKernel() + v10;
  }

  if (!v8)
  {
    return 0;
  }

  (this->OSMetaClassBase::__vftable[19].isEqualTo)(this);
  result = CCLogStream::shouldLog();
  if (result)
  {
    AppleBCMWLANProximityInterface::dumpSyncParams(this);
    return 0;
  }

  return result;
}

uint64_t AppleBCMWLANProximityInterface::getAWDL_SYNC_ENABLED(uint64_t *a1, uint64_t a2)
{
  v11 = 0;
  v10[0] = &v11;
  v10[1] = 0x400040004;
  if (IO80211SkywalkInterface::getInterfaceId(a1) == -1 || (v4 = *(a1[17] + 960), InterfaceId = IO80211SkywalkInterface::getInterfaceId(a1), v9[0] = &v11, v9[1] = 4, v6 = AppleBCMWLANCommander::runVirtualIOVarGet(v4, InterfaceId, "awdl", v9, v10, 0), !v6))
  {
    v7 = 0;
    *(a2 + 8) = v11;
  }

  else
  {
    v7 = v6;
    if ((*(*a1 + 1088))(a1))
    {
      (*(*a1 + 1088))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANProximityInterface::getAWDL_SYNC_ENABLED(a1);
      }
    }
  }

  return v7;
}

uint64_t non-virtual thunk toAppleBCMWLANProximityInterface::getAWDL_SYNC_ENABLED(uint64_t a1, uint64_t a2)
{
  return AppleBCMWLANProximityInterface::getAWDL_SYNC_ENABLED((a1 - 112), a2);
}

{
  return AppleBCMWLANProximityInterface::getAWDL_SYNC_ENABLED((a1 - 128), a2);
}

uint64_t AppleBCMWLANProximityInterface::getAWDL_SYNC_PARAMS(IO80211SkywalkInterface *a1, _DWORD *a2)
{
  if (IO80211SkywalkInterface::getInterfaceId(a1) < 0xCu)
  {
    memset(v14, 0, sizeof(v14));
    v4 = (*(*a1 + 1744))(a1, v14);
    if (!v4)
    {
      v17 = 0;
      v15 = 0u;
      v16 = 0u;
      v13[0] = &v15;
      v13[1] = 0x2400240024;
      v5 = *(*(a1 + 17) + 960);
      InterfaceId = IO80211SkywalkInterface::getInterfaceId(a1);
      v12[0] = &v15;
      v12[1] = 36;
      if (!AppleBCMWLANCommander::runVirtualIOVarGet(v5, InterfaceId, "awdl_sync_params", v12, v13, 0))
      {
        v7 = v16;
        if (v16)
        {
          v8 = WORD5(v15);
          if (WORD5(v15))
          {
            v9 = HIWORD(v15);
            if (HIWORD(v15))
            {
              v4 = 0;
              v10 = WORD4(v15);
              *(*(a1 + 17) + 720) = WORD4(v15);
              a2[2] = v10;
              *(*(a1 + 17) + 732) = v8;
              a2[4] = v8;
              *(*(a1 + 17) + 724) = v9;
              a2[3] = v9;
              *(*(a1 + 17) + 716) = v7;
              a2[1] = v7;
              a2[5] = *(*(a1 + 17) + 660);
              return v4;
            }

            if ((*(*a1 + 1088))(a1))
            {
              (*(*a1 + 1088))(a1);
              if (CCLogStream::shouldLog())
              {
                AppleBCMWLANProximityInterface::getAWDL_SYNC_PARAMS(a1);
              }
            }
          }

          else if ((*(*a1 + 1088))(a1))
          {
            (*(*a1 + 1088))(a1);
            if (CCLogStream::shouldLog())
            {
              AppleBCMWLANProximityInterface::getAWDL_SYNC_PARAMS(a1);
            }
          }
        }

        else if ((*(*a1 + 1088))(a1))
        {
          (*(*a1 + 1088))(a1);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANProximityInterface::getAWDL_SYNC_PARAMS(a1);
          }
        }

        return 22;
      }

      if ((*(*a1 + 1088))(a1))
      {
        (*(*a1 + 1088))(a1);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANProximityInterface::getAWDL_SYNC_PARAMS(a1);
        }
      }

      return 97;
    }
  }

  else if ((*(*a1 + 1088))(a1))
  {
    (*(*a1 + 1088))(a1);
    v4 = 1;
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANProximityInterface::getAWDL_SYNC_PARAMS(a1);
    }
  }

  else
  {
    return 1;
  }

  return v4;
}

uint64_t non-virtual thunk toAppleBCMWLANProximityInterface::getAWDL_SYNC_PARAMS(uint64_t a1, _DWORD *a2)
{
  return AppleBCMWLANProximityInterface::getAWDL_SYNC_PARAMS((a1 - 112), a2);
}

{
  return AppleBCMWLANProximityInterface::getAWDL_SYNC_PARAMS((a1 - 128), a2);
}

uint64_t AppleBCMWLANProximityInterface::getAWDL_SYNC_STATE(IO80211SkywalkInterface *a1, uint64_t a2)
{
  v13 = 0;
  v14 = 0;
  v16 = 0;
  v15 = 0;
  v12[0] = &v13;
  v12[1] = 0x1C001C001CLL;
  v4 = *(*(a1 + 17) + 960);
  InterfaceId = IO80211SkywalkInterface::getInterfaceId(a1);
  v11[0] = &v13;
  v11[1] = 28;
  v6 = AppleBCMWLANCommander::runVirtualIOVarGet(v4, InterfaceId, "awdl_opmode", v11, v12, 0);
  if (v6)
  {
    if ((*(*a1 + 1088))(a1))
    {
      (*(*a1 + 1088))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANProximityInterface::getAWDL_SYNC_STATE(a1);
      }
    }
  }

  else
  {
    *(*(a1 + 17) + 660) = WORD1(v13);
    v7 = *(*(a1 + 17) + 668);
    if (v7 > 2)
    {
      v8 = 0;
    }

    else
    {
      v8 = dword_10033CAB4[v7];
    }

    v9 = HIDWORD(v13);
    *(a2 + 4) = v8;
    *(a2 + 8) = v9;
    *(a2 + 12) = v14;
  }

  return v6;
}

uint64_t non-virtual thunk toAppleBCMWLANProximityInterface::getAWDL_SYNC_STATE(uint64_t a1, uint64_t a2)
{
  return AppleBCMWLANProximityInterface::getAWDL_SYNC_STATE((a1 - 112), a2);
}

{
  return AppleBCMWLANProximityInterface::getAWDL_SYNC_STATE((a1 - 128), a2);
}

uint64_t AppleBCMWLANProximityInterface::getAWDL_DEV_STATS(IO80211SkywalkInterface *a1, uint64_t a2)
{
  if (IO80211SkywalkInterface::getInterfaceId(a1) == -1)
  {
    return 1;
  }

  if (AppleBCMWLANCore::getFirmwareInterfaceVersion(*(*(a1 + 17) + 64)) >= 4)
  {
    if (AppleBCMWLANCore::getFirmwareInterfaceVersion(*(*(a1 + 17) + 64)) >= 6)
    {
      v4 = 324;
    }

    else
    {
      v4 = 172;
    }
  }

  else
  {
    v4 = 184;
  }

  v6 = IOMallocZeroData();
  if (v6)
  {
    v7 = v6;
    v15[0] = v6;
    v15[1] = v4 | (v4 << 32);
    v8 = *(*(a1 + 17) + 960);
    InterfaceId = IO80211SkywalkInterface::getInterfaceId(a1);
    v14[0] = v7;
    v14[1] = v4;
    v5 = AppleBCMWLANCommander::runVirtualIOVarGet(v8, InterfaceId, "awdl_stats", v14, v15, 0);
    if (v5)
    {
      if ((*(*a1 + 1088))(a1))
      {
        (*(*a1 + 1088))(a1);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANProximityInterface::getAWDL_DEV_STATS(a1);
        }
      }

      goto LABEL_20;
    }

    if (AppleBCMWLANCore::getFirmwareInterfaceVersion(*(*(a1 + 17) + 64)) > 3)
    {
      if (AppleBCMWLANCore::getFirmwareInterfaceVersion(*(*(a1 + 17) + 64)) > 5)
      {
        *(a2 + 4) = *(v7 + 4);
        *(a2 + 32) = *(v7 + 12);
        *(a2 + 48) = *(v7 + 28);
        *(a2 + 56) = *(v7 + 32);
        v11 = *(v7 + 44);
        *(a2 + 64) = *(v7 + 40);
        *(a2 + 72) = v11;
        *(a2 + 76) = *(v7 + 48);
        *(a2 + 12) = vaddq_s32(*(v7 + 248), *(v7 + 168));
        v12 = *(v7 + 188);
        *(a2 + 28) = *(v7 + 264) + *(v7 + 184);
        *(a2 + 52) = *(v7 + 268) + v12;
        *(a2 + 68) = *(v7 + 272) + *(v7 + 192);
        goto LABEL_20;
      }

      *(a2 + 4) = *v7;
      *(a2 + 20) = *(v7 + 16);
      *(a2 + 36) = *(v7 + 32);
      *(a2 + 52) = *(v7 + 48);
      *(a2 + 68) = *(v7 + 64);
      *(a2 + 76) = *(v7 + 72);
      v10 = *(v7 + 104);
    }

    else
    {
      *(a2 + 4) = *v7;
      *(a2 + 20) = *(v7 + 16);
      *(a2 + 36) = *(v7 + 32);
      *(a2 + 52) = *(v7 + 48);
      *(a2 + 68) = *(v7 + 64);
      *(a2 + 76) = *(v7 + 72);
      v10 = *(v7 + 128);
    }

    *(a2 + 80) = v10;
LABEL_20:
    IOFreeData();
    return v5;
  }

  return 12;
}

uint64_t non-virtual thunk toAppleBCMWLANProximityInterface::getAWDL_DEV_STATS(uint64_t a1, uint64_t a2)
{
  return AppleBCMWLANProximityInterface::getAWDL_DEV_STATS((a1 - 112), a2);
}

{
  return AppleBCMWLANProximityInterface::getAWDL_DEV_STATS((a1 - 128), a2);
}

uint64_t AppleBCMWLANProximityInterface::getAWDL_CCA(IO80211SkywalkInterface *a1, uint64_t a2)
{
  if (*(a2 + 4) > 0x10u)
  {
    return 22;
  }

  if (IO80211SkywalkInterface::getInterfaceId(a1) == -1)
  {
    return 1;
  }

  v5 = IOMallocZeroData();
  if (!v5)
  {
    return 12;
  }

  v6 = v5;
  if (!*(a2 + 4))
  {
LABEL_18:
    v2 = 0;
    goto LABEL_19;
  }

  v7 = 0;
  v8 = a2 + 16;
  while (1)
  {
    v9 = *(v8 + 14);
    if (v9 - 1 >= 0xE && v9 - 36 > 0x81)
    {
      if ((*(*a1 + 1088))(a1))
      {
        (*(*a1 + 1088))(a1);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANProximityInterface::getAWDL_CCA(a1);
        }
      }

      goto LABEL_17;
    }

    v10 = *(v8 + 12);
    v11 = v9 >= 0xF ? -16384 : 0;
    *v6 = v11 | v9 | 0x1000;
    *(v6 + 2) = v10;
    *(v6 + 12) = 0;
    *(v6 + 4) = 0;
    *(v6 + 20) = 0;
    v17[0] = v6;
    v17[1] = 0x1800000018;
    v12 = *(*(a1 + 17) + 960);
    InterfaceId = IO80211SkywalkInterface::getInterfaceId(a1);
    v16[0] = v6;
    v16[1] = 24;
    v14 = AppleBCMWLANCommander::runVirtualIOVarGet(v12, InterfaceId, "cca_get_stats", v16, v17, 0);
    if (v14)
    {
      break;
    }

    *(v8 - 8) = *(v6 + 4);
    *(v8 - 4) = *(v6 + 8);
    *v8 = *(v6 + 12);
    *(v8 + 8) = *(v6 + 20);
LABEL_17:
    ++v7;
    v8 += 24;
    if (v7 >= *(a2 + 4))
    {
      goto LABEL_18;
    }
  }

  v2 = v14;
  if ((*(*a1 + 1088))(a1))
  {
    (*(*a1 + 1088))(a1);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANProximityInterface::getAWDL_CCA(a1);
    }
  }

LABEL_19:
  IOFreeData();
  return v2;
}

uint64_t non-virtual thunk toAppleBCMWLANProximityInterface::getAWDL_CCA(uint64_t a1, uint64_t a2)
{
  return AppleBCMWLANProximityInterface::getAWDL_CCA((a1 - 112), a2);
}

{
  return AppleBCMWLANProximityInterface::getAWDL_CCA((a1 - 128), a2);
}

uint64_t AppleBCMWLANProximityInterface::getAWDL_PRESENCE_MODE(IO80211SkywalkInterface *a1, uint64_t a2)
{
  v9 = 0;
  v8[0] = &v9;
  v8[1] = 0x400040004;
  v4 = *(*(a1 + 17) + 960);
  InterfaceId = IO80211SkywalkInterface::getInterfaceId(a1);
  v7[0] = &v9;
  v7[1] = 4;
  result = AppleBCMWLANCommander::runVirtualIOVarGet(v4, InterfaceId, "awdl_presencemode", v7, v8, 0);
  if (result)
  {
    if ((*(*a1 + 1088))(a1))
    {
      (*(*a1 + 1088))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANProximityInterface::getAWDL_PRESENCE_MODE(a1);
      }
    }

    return 97;
  }

  else
  {
    *(a2 + 4) = v9;
  }

  return result;
}

uint64_t non-virtual thunk toAppleBCMWLANProximityInterface::getAWDL_PRESENCE_MODE(uint64_t a1, uint64_t a2)
{
  return AppleBCMWLANProximityInterface::getAWDL_PRESENCE_MODE((a1 - 112), a2);
}

{
  return AppleBCMWLANProximityInterface::getAWDL_PRESENCE_MODE((a1 - 128), a2);
}

uint64_t AppleBCMWLANProximityInterface::getAWDL_DEVICE_CAPABILITIES(uint64_t a1, _DWORD *a2)
{
  ConfigManager = AppleBCMWLANCore::getConfigManager(*(*(a1 + 136) + 64));
  a2[3] = AppleBCMWLANConfigManager::getAWDLElectionMetric(ConfigManager);
  v5 = AppleBCMWLANCore::getConfigManager(*(*(a1 + 136) + 64));
  a2[4] = AppleBCMWLANConfigManager::getAWDLFlags(v5);
  a2[2] = 10;
  return 0;
}

uint64_t non-virtual thunk toAppleBCMWLANProximityInterface::getAWDL_DEVICE_CAPABILITIES(uint64_t a1, _DWORD *a2)
{
  AppleBCMWLANProximityInterface::getAWDL_DEVICE_CAPABILITIES(a1 - 112, a2);
  return 0;
}

{
  AppleBCMWLANProximityInterface::getAWDL_DEVICE_CAPABILITIES(a1 - 128, a2);
  return 0;
}

uint64_t AppleBCMWLANProximityInterface::getAWDL_EXTENSION_STATE_MACHINE_PARAMETERS(IO80211SkywalkInterface *a1, _DWORD *a2)
{
  v13 = 0;
  v12[0] = &v13;
  v12[1] = 0x400040004;
  v4 = *(*(a1 + 17) + 960);
  InterfaceId = IO80211SkywalkInterface::getInterfaceId(a1);
  v11[0] = &v13;
  v11[1] = 4;
  result = AppleBCMWLANCommander::runVirtualIOVarGet(v4, InterfaceId, "awdl_extcounts", v11, v12, 0);
  if (result)
  {
    if ((*(*a1 + 1088))(a1))
    {
      (*(*a1 + 1088))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANProximityInterface::getAWDL_EXTENSION_STATE_MACHINE_PARAMETERS(a1);
      }
    }

    return 97;
  }

  else
  {
    v7 = v13;
    *(*(a1 + 17) + 808) = v13;
    a2[4] = v7;
    v8 = BYTE2(v13);
    *(*(a1 + 17) + 812) = BYTE2(v13);
    a2[2] = v8;
    v9 = BYTE1(v13);
    *(*(a1 + 17) + 816) = BYTE1(v13);
    a2[1] = v9;
    v10 = HIBYTE(v13);
    *(*(a1 + 17) + 820) = HIBYTE(v13);
    a2[3] = v10;
  }

  return result;
}

uint64_t non-virtual thunk toAppleBCMWLANProximityInterface::getAWDL_EXTENSION_STATE_MACHINE_PARAMETERS(uint64_t a1, _DWORD *a2)
{
  return AppleBCMWLANProximityInterface::getAWDL_EXTENSION_STATE_MACHINE_PARAMETERS((a1 - 112), a2);
}

{
  return AppleBCMWLANProximityInterface::getAWDL_EXTENSION_STATE_MACHINE_PARAMETERS((a1 - 128), a2);
}

uint64_t AppleBCMWLANProximityInterface::setAWDL_EXTENSION_STATE_MACHINE_PARAMETERS(IO80211SkywalkInterface *a1, uint64_t a2)
{
  v4 = vmovn_s32(*(a2 + 4));
  v5 = vext_s8(v4, v4, 6uLL);
  v17 = vuzp1_s8(v5, v5).u32[0];
  v16[0] = a1;
  v16[1] = AppleBCMWLANProximityInterface::handleProxIovarAsyncCallBack;
  v16[2] = 0;
  v6 = *(*(a1 + 17) + 960);
  InterfaceId = IO80211SkywalkInterface::getInterfaceId(a1);
  v15[0] = &v17;
  v15[1] = 4;
  v8 = AppleBCMWLANCommander::sendVirtualIOVarSet(v6, InterfaceId, "awdl_extcounts", v15, kNoRxExpected, v16, 0);
  v9 = (*(*a1 + 1088))(a1);
  if (v8)
  {
    if (v9)
    {
      (*(*a1 + 1088))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANProximityInterface::setAWDL_EXTENSION_STATE_MACHINE_PARAMETERS(a1);
      }
    }
  }

  else
  {
    if (v9)
    {
      (*(*a1 + 1088))(a1);
      if (CCLogStream::shouldLog())
      {
        v13 = (*(*a1 + 1088))(a1);
        v14 = (*(*a1 + 920))(a1, 0);
        CCLogStream::logAlertIf(v13, 0x400uLL, "[dk] %s@%d: <%s> min %u maxuni %u maxmulti %u maxaction %u \n", "setAWDL_EXTENSION_STATE_MACHINE_PARAMETERS", 2137, v14, *(a2 + 16), *(a2 + 8), *(a2 + 4), *(a2 + 12));
      }
    }

    v10 = *(a2 + 12);
    *(*(a1 + 17) + 808) = *(a2 + 16);
    v11 = *(a2 + 4);
    *(*(a1 + 17) + 812) = *(a2 + 8);
    *(*(a1 + 17) + 816) = v11;
    *(*(a1 + 17) + 820) = v10;
  }

  return v8;
}

uint64_t non-virtual thunk toAppleBCMWLANProximityInterface::setAWDL_EXTENSION_STATE_MACHINE_PARAMETERS(uint64_t a1, uint64_t a2)
{
  return AppleBCMWLANProximityInterface::setAWDL_EXTENSION_STATE_MACHINE_PARAMETERS((a1 - 112), a2);
}

{
  return AppleBCMWLANProximityInterface::setAWDL_EXTENSION_STATE_MACHINE_PARAMETERS((a1 - 128), a2);
}

uint64_t AppleBCMWLANProximityInterface::logElectionTree(AppleBCMWLANProximityInterface *this, const char *a2)
{
  v3 = *(this + 17);
  v15 = *(v3 + 552);
  v4 = *(v3 + 553);
  v5 = *(v3 + 555);
  v6 = *(v3 + 559);
  v7 = *(v3 + 561);
  v8 = *(v3 + 562);
  v9 = *(v3 + 563);
  v10 = *(v3 + 564);
  v11 = *(v3 + 565);
  v12 = *(v3 + 566);
  result = (*(*this + 1088))(this);
  if (result)
  {
    (*(*this + 1088))(this);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v14 = (*(*this + 1088))(this);
      return CCLogStream::logAlertIf(v14, 0x400uLL, "[dk] %s@%d:[%s] flags 0x%x eid=%u self_metric=%u max_masters: close=%u mid=%u max_depth=%u sync: close=%d edge=%d range: close=%d mid=%d\n", "logElectionTree", 2154, a2, v15, v4, v5, v10, v11, v12, v6, v7, v8, v9);
    }
  }

  return result;
}

uint64_t AppleBCMWLANProximityInterface::getElectionParams(IO80211SkywalkInterface *a1, _OWORD *a2)
{
  *(a2 + 26) = 0u;
  *a2 = 0u;
  a2[1] = 0u;
  v4 = 0x2A002A002ALL;
  if (!a2)
  {
    v4 = 0;
  }

  v13[0] = a2;
  v13[1] = v4;
  v5 = *(*(a1 + 17) + 960);
  if (a2)
  {
    v6 = 42;
  }

  else
  {
    v6 = 0;
  }

  InterfaceId = IO80211SkywalkInterface::getInterfaceId(a1);
  v12[0] = a2;
  v12[1] = v6;
  v8 = AppleBCMWLANCommander::runVirtualIOVarGet(v5, InterfaceId, "awdl_election_tree", v12, v13, 0);
  v9 = (*(*a1 + 1088))(a1);
  if (v8)
  {
    if (v9)
    {
      (*(*a1 + 1088))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANProximityInterface::getElectionParams(a1);
      }
    }
  }

  else if (v9)
  {
    v10 = (*(*a1 + 1088))(a1);
    if (CCLogStream::shouldLog(v10, 0x400uLL))
    {
      AppleBCMWLANProximityInterface::logElectionTree(a1, "getElectionParams");
    }
  }

  return v8;
}

uint64_t AppleBCMWLANProximityInterface::getAWDL_ELECTION_ID(IO80211SkywalkInterface *a1, uint64_t a2)
{
  *&v3 = 0xAAAAAAAAAAAAAAAALL;
  *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&v6[10] = v3;
  v5 = v3;
  *v6 = v3;
  AppleBCMWLANProximityInterface::getElectionParams(a1, &v5);
  *(a2 + 4) = *(&v5 + 1);
  return 0;
}

uint64_t non-virtual thunk toAppleBCMWLANProximityInterface::getAWDL_ELECTION_ID(uint64_t a1, uint64_t a2)
{
  *&v3 = 0xAAAAAAAAAAAAAAAALL;
  *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&v6[10] = v3;
  v5 = v3;
  *v6 = v3;
  AppleBCMWLANProximityInterface::getElectionParams((a1 - 112), &v5);
  *(a2 + 4) = *(&v5 + 1);
  return 0;
}

{
  *&v3 = 0xAAAAAAAAAAAAAAAALL;
  *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&v6[10] = v3;
  v5 = v3;
  *v6 = v3;
  AppleBCMWLANProximityInterface::getElectionParams((a1 - 128), &v5);
  *(a2 + 4) = *(&v5 + 1);
  return 0;
}

uint64_t AppleBCMWLANProximityInterface::setAWDL_ELECTION_PARAMS(IO80211SkywalkInterface *a1, uint64_t a2)
{
  *(*(a1 + 17) + 552) = *(a2 + 16);
  *(*(a1 + 17) + 553) = *(a2 + 18);
  *(*(a1 + 17) + 577) = *(a2 + 20);
  v3 = *(a1 + 17) + 567;
  v4 = *(a2 + 22);
  *(v3 + 4) = *(a2 + 26);
  *v3 = v4;
  v5 = *(a2 + 32);
  *(*(a1 + 17) + 573) = *(a2 + 28);
  *(*(a1 + 17) + 555) = v5;
  v13[0] = a1;
  v13[1] = AppleBCMWLANProximityInterface::handleElectionTreeIovarAsyncCallBack;
  v13[2] = 0;
  v6 = *(*(a1 + 17) + 960);
  InterfaceId = IO80211SkywalkInterface::getInterfaceId(a1);
  v12[0] = *(a1 + 17) + 552;
  v12[1] = 42;
  v8 = AppleBCMWLANCommander::sendVirtualIOVarSet(v6, InterfaceId, "awdl_election_tree", v12, kNoRxExpected, v13, 0);
  v9 = (*(*a1 + 1088))(a1);
  if (v8)
  {
    if (v9)
    {
      (*(*a1 + 1088))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANProximityInterface::setAWDL_ELECTION_PARAMS(a1);
      }
    }
  }

  else
  {
    if (v9)
    {
      (*(*a1 + 1088))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANProximityInterface::setAWDL_ELECTION_PARAMS(a1);
      }
    }

    if ((*(*a1 + 1088))(a1))
    {
      v10 = (*(*a1 + 1088))(a1);
      if (CCLogStream::shouldLog(v10, 0x400uLL))
      {
        AppleBCMWLANProximityInterface::logElectionTree(a1, "setAWDL_ELECTION_PARAMS");
      }
    }
  }

  return v8;
}

uint64_t AppleBCMWLANProximityInterface::handleElectionTreeIovarAsyncCallBack(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = result;
    if (a3 == -469794557)
    {
      if ((*(*result + 1088))(result))
      {
        (*(*v4 + 1088))(v4);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANProximityInterface::handleElectionTreeIovarAsyncCallBack(v4);
        }
      }

      *(v4[17] + 589) = 0;
      *(v4[17] + 552) = 0;
      v9[0] = v4;
      v9[1] = AppleBCMWLANProximityInterface::handleProxIovarAsyncCallBack;
      v9[2] = 0;
      v5 = *(v4[17] + 960);
      InterfaceId = IO80211SkywalkInterface::getInterfaceId(v4);
      v8[0] = v4[17] + 552;
      v8[1] = 42;
      result = AppleBCMWLANCommander::sendVirtualIOVarSet(v5, InterfaceId, "awdl_election_tree", v8, kNoRxExpected, v9, 0);
      if (result)
      {
        result = (*(*v4 + 1088))(v4);
        if (result)
        {
          (*(*v4 + 1088))(v4);
          result = CCLogStream::shouldLog();
          if (result)
          {
            return AppleBCMWLANProximityInterface::handleElectionTreeIovarAsyncCallBack(v4);
          }
        }
      }
    }

    else
    {
      result = (*(*result + 1088))(result);
      if (result)
      {
        (*(*v4 + 1088))(v4);
        result = CCLogStream::shouldLog();
        if (result)
        {
          return AppleBCMWLANProximityInterface::handleElectionTreeIovarAsyncCallBack(v4, v4 & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000, a3, a2);
        }
      }
    }
  }

  return result;
}

uint64_t non-virtual thunk toAppleBCMWLANProximityInterface::setAWDL_ELECTION_PARAMS(uint64_t a1, uint64_t a2)
{
  return AppleBCMWLANProximityInterface::setAWDL_ELECTION_PARAMS((a1 - 112), a2);
}

{
  return AppleBCMWLANProximityInterface::setAWDL_ELECTION_PARAMS((a1 - 128), a2);
}

uint64_t AppleBCMWLANProximityInterface::setAWDL_AWDL_ADVERTISERS(IO80211SkywalkInterface *a1, __int128 *a2)
{
  if (!*(*(a1 + 17) + 664))
  {
    return 3758097084;
  }

  v4 = IOMallocZeroData();
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  *v4 = 0;
  v6 = *a2;
  v7 = a2[1];
  *(v4 + 32) = *(a2 + 28);
  *(v4 + 20) = v7;
  *(v4 + 4) = v6;
  *(v4 + 2) = 44;
  v13[0] = a1;
  v13[1] = AppleBCMWLANProximityInterface::handleProxIovarAsyncCallBack;
  v13[2] = 0;
  v8 = *(*(a1 + 17) + 960);
  InterfaceId = IO80211SkywalkInterface::getInterfaceId(a1);
  v12[0] = v5;
  v12[1] = 50;
  v10 = AppleBCMWLANCommander::sendVirtualIOVarSet(v8, InterfaceId, "awdl_advertisers", v12, kNoRxExpected, v13, 0);
  if (v10)
  {
    if ((*(*a1 + 1088))(a1))
    {
      (*(*a1 + 1088))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANProximityInterface::setAWDL_AWDL_ADVERTISERS(a1);
      }
    }
  }

  IOFreeData();
  return v10;
}

uint64_t non-virtual thunk toAppleBCMWLANProximityInterface::setAWDL_AWDL_ADVERTISERS(uint64_t a1, __int128 *a2)
{
  return AppleBCMWLANProximityInterface::setAWDL_AWDL_ADVERTISERS((a1 - 112), a2);
}

{
  return AppleBCMWLANProximityInterface::setAWDL_AWDL_ADVERTISERS((a1 - 128), a2);
}

uint64_t AppleBCMWLANProximityInterface::setAWDL_ELECTION_ID(IO80211SkywalkInterface *this, uint64_t a2)
{
  *(*(this + 17) + 553) = *(a2 + 4);
  v10[0] = this;
  v10[1] = AppleBCMWLANProximityInterface::handleElectionTreeIovarAsyncCallBack;
  v10[2] = 0;
  if (*(*(this + 17) + 120) != 1 || IO80211SkywalkInterface::getInterfaceId(this) == -1 || IO80211SkywalkInterface::getInterfaceId(this) == 255 || IO80211SkywalkInterface::getInterfaceId(this) >= 0xC)
  {
    if ((*(*this + 1088))(this))
    {
      (*(*this + 1088))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANProximityInterface::setAWDL_ELECTION_ID(this);
      }
    }

    return 0;
  }

  v5 = *(*(this + 17) + 960);
  InterfaceId = IO80211SkywalkInterface::getInterfaceId(this);
  v9[0] = *(this + 17) + 552;
  v9[1] = 42;
  v3 = AppleBCMWLANCommander::sendVirtualIOVarSet(v5, InterfaceId, "awdl_election_tree", v9, kNoRxExpected, v10, 0);
  v7 = (*(*this + 1088))(this);
  if (!v3)
  {
    if (v7)
    {
      (*(*this + 1088))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANProximityInterface::setAWDL_ELECTION_ID(this);
      }
    }

    if ((*(*this + 1088))(this))
    {
      v8 = (*(*this + 1088))(this);
      if (CCLogStream::shouldLog(v8, 0x400uLL))
      {
        AppleBCMWLANProximityInterface::logElectionTree(this, "setAWDL_ELECTION_ID");
      }
    }

    return 0;
  }

  if (v7)
  {
    (*(*this + 1088))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANProximityInterface::setAWDL_ELECTION_ID(this);
    }
  }

  return v3;
}

uint64_t non-virtual thunk toAppleBCMWLANProximityInterface::setAWDL_ELECTION_ID(uint64_t a1, uint64_t a2)
{
  return AppleBCMWLANProximityInterface::setAWDL_ELECTION_ID((a1 - 112), a2);
}

{
  return AppleBCMWLANProximityInterface::setAWDL_ELECTION_ID((a1 - 128), a2);
}

uint64_t AppleBCMWLANProximityInterface::getAWDL_ELECTION_METRIC(IO80211SkywalkInterface *a1, uint64_t a2)
{
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&v8[10] = v4;
  v7 = v4;
  *v8 = v4;
  ElectionParams = AppleBCMWLANProximityInterface::getElectionParams(a1, &v7);
  if (ElectionParams)
  {
    if ((*(*a1 + 1088))(a1))
    {
      (*(*a1 + 1088))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANProximityInterface::getAWDL_ELECTION_METRIC(a1);
      }
    }
  }

  else
  {
    *(a2 + 4) = *(&v7 + 3);
  }

  return ElectionParams;
}

uint64_t non-virtual thunk toAppleBCMWLANProximityInterface::getAWDL_ELECTION_METRIC(uint64_t a1, uint64_t a2)
{
  return AppleBCMWLANProximityInterface::getAWDL_ELECTION_METRIC((a1 - 112), a2);
}

{
  return AppleBCMWLANProximityInterface::getAWDL_ELECTION_METRIC((a1 - 128), a2);
}

uint64_t AppleBCMWLANProximityInterface::getAWDL_ELECTION_PARAMS(IO80211SkywalkInterface *a1, uint64_t a2)
{
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&v9[26] = v4;
  *v9 = v4;
  *&v9[16] = v4;
  ElectionParams = AppleBCMWLANProximityInterface::getElectionParams(a1, v9);
  if (ElectionParams)
  {
    if ((*(*a1 + 1088))(a1))
    {
      (*(*a1 + 1088))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANProximityInterface::getAWDL_ELECTION_PARAMS(a1);
      }
    }
  }

  else
  {
    v6 = *&v9[21];
    *(a2 + 20) = v9[25];
    *(a2 + 16) = v9[0];
    *(a2 + 18) = *&v9[1];
    v7 = *&v9[3];
    *(a2 + 28) = v6;
    *(a2 + 32) = v7;
    *(a2 + 22) = *&v9[15];
    *(a2 + 26) = *&v9[19];
  }

  return ElectionParams;
}

uint64_t non-virtual thunk toAppleBCMWLANProximityInterface::getAWDL_ELECTION_PARAMS(uint64_t a1, uint64_t a2)
{
  return AppleBCMWLANProximityInterface::getAWDL_ELECTION_PARAMS((a1 - 112), a2);
}

{
  return AppleBCMWLANProximityInterface::getAWDL_ELECTION_PARAMS((a1 - 128), a2);
}

uint64_t AppleBCMWLANProximityInterface::setAWDL_ELECTION_METRIC(uint64_t *a1, uint64_t a2)
{
  if (IO80211SkywalkInterface::getInterfaceId(a1) == -1 || IO80211SkywalkInterface::getInterfaceId(a1) >= 0xC)
  {
    v4 = 3758097090;
    if ((*(*a1 + 1088))(a1))
    {
      (*(*a1 + 1088))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANProximityInterface::setAWDL_ELECTION_METRIC(a1);
      }
    }
  }

  else
  {
    v11[0] = a1;
    v11[1] = AppleBCMWLANProximityInterface::handleProxIovarAsyncCallBack;
    v11[2] = 0;
    *(a1[17] + 555) = *(a2 + 4);
    v5 = *(a1[17] + 960);
    InterfaceId = IO80211SkywalkInterface::getInterfaceId(a1);
    v10[0] = a1[17] + 552;
    v10[1] = 42;
    v4 = AppleBCMWLANCommander::sendVirtualIOVarSet(v5, InterfaceId, "awdl_election_tree", v10, kNoRxExpected, v11, 0);
    v7 = (*(*a1 + 1088))(a1);
    if (v4)
    {
      if (v7)
      {
        (*(*a1 + 1088))(a1);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANProximityInterface::setAWDL_ELECTION_METRIC(a1);
        }
      }
    }

    else if (v7)
    {
      v8 = (*(*a1 + 1088))(a1);
      if (CCLogStream::shouldLog(v8, 0x400uLL))
      {
        AppleBCMWLANProximityInterface::logElectionTree(a1, "setAWDL_ELECTION_METRIC");
      }
    }
  }

  return v4;
}

uint64_t non-virtual thunk toAppleBCMWLANProximityInterface::setAWDL_ELECTION_METRIC(uint64_t a1, uint64_t a2)
{
  return AppleBCMWLANProximityInterface::setAWDL_ELECTION_METRIC((a1 - 112), a2);
}

{
  return AppleBCMWLANProximityInterface::setAWDL_ELECTION_METRIC((a1 - 128), a2);
}

uint64_t AppleBCMWLANProximityInterface::setAWDL_ELECTION_RSSI_THRESHOLDS(IO80211SkywalkInterface *a1, _DWORD *a2)
{
  v3 = a2[2];
  *(*(a1 + 17) + 563) = a2[1];
  *(*(a1 + 17) + 562) = v3;
  v4 = a2[4];
  *(*(a1 + 17) + 559) = a2[3];
  *(*(a1 + 17) + 561) = v4;
  v12[0] = a1;
  v12[1] = AppleBCMWLANProximityInterface::handleProxIovarAsyncCallBack;
  v12[2] = 0;
  v5 = *(*(a1 + 17) + 960);
  InterfaceId = IO80211SkywalkInterface::getInterfaceId(a1);
  v11[0] = *(a1 + 17) + 552;
  v11[1] = 42;
  v7 = AppleBCMWLANCommander::sendVirtualIOVarSet(v5, InterfaceId, "awdl_election_tree", v11, kNoRxExpected, v12, 0);
  v8 = (*(*a1 + 1088))(a1);
  if (v7)
  {
    if (v8)
    {
      (*(*a1 + 1088))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANProximityInterface::setAWDL_ELECTION_RSSI_THRESHOLDS(a1);
      }
    }
  }

  else if (v8)
  {
    v9 = (*(*a1 + 1088))(a1);
    if (CCLogStream::shouldLog(v9, 0x400uLL))
    {
      AppleBCMWLANProximityInterface::logElectionTree(a1, "setAWDL_ELECTION_RSSI_THRESHOLDS");
    }
  }

  return v7;
}

uint64_t non-virtual thunk toAppleBCMWLANProximityInterface::setAWDL_ELECTION_RSSI_THRESHOLDS(uint64_t a1, _DWORD *a2)
{
  return AppleBCMWLANProximityInterface::setAWDL_ELECTION_RSSI_THRESHOLDS((a1 - 112), a2);
}

{
  return AppleBCMWLANProximityInterface::setAWDL_ELECTION_RSSI_THRESHOLDS((a1 - 128), a2);
}

uint64_t AppleBCMWLANProximityInterface::getAWDL_ELECTION_RSSI_THRESHOLDS(IO80211SkywalkInterface *a1, _DWORD *a2)
{
  memset(v12, 0, 42);
  v11[0] = v12;
  v11[1] = 0x2A002A002ALL;
  v4 = *(*(a1 + 17) + 960);
  InterfaceId = IO80211SkywalkInterface::getInterfaceId(a1);
  v10[0] = v12;
  v10[1] = 42;
  v6 = AppleBCMWLANCommander::runVirtualIOVarGet(v4, InterfaceId, "awdl_election_tree", v10, v11, 0);
  if (v6)
  {
    if ((*(*a1 + 1088))(a1))
    {
      (*(*a1 + 1088))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANProximityInterface::getAWDL_ELECTION_RSSI_THRESHOLDS(a1);
      }
    }
  }

  else
  {
    v7 = SBYTE10(v12[0]);
    a2[1] = SBYTE11(v12[0]);
    a2[2] = v7;
    v8 = SBYTE9(v12[0]);
    a2[3] = SBYTE7(v12[0]);
    a2[4] = v8;
  }

  return v6;
}

uint64_t non-virtual thunk toAppleBCMWLANProximityInterface::getAWDL_ELECTION_RSSI_THRESHOLDS(uint64_t a1, _DWORD *a2)
{
  return AppleBCMWLANProximityInterface::getAWDL_ELECTION_RSSI_THRESHOLDS((a1 - 112), a2);
}

{
  return AppleBCMWLANProximityInterface::getAWDL_ELECTION_RSSI_THRESHOLDS((a1 - 128), a2);
}

void AppleBCMWLANProximityInterface::handleOobAfIovarAsyncCallBack(IO80211SkywalkInterface *a1, int a2, uint64_t a3, int a4, _WORD *address)
{
  --*(*(a1 + 17) + 48);
  if (a3 == -469794537 || a3 == 0)
  {
    if (!address)
    {
      return;
    }

    goto LABEL_12;
  }

  if (!(*(*a1 + 1088))(a1) || ((*(*a1 + 1088))(a1), !CCLogStream::shouldLog()))
  {
    if (!address)
    {
      return;
    }

    goto LABEL_11;
  }

  v9 = (*(*a1 + 1088))(a1);
  v10 = (*(*a1 + 920))(a1, a3);
  v11 = "notNull";
  if (!address)
  {
    v11 = "null";
  }

  CCLogStream::logAlert(v9, "[dk] %s@%d: Error: cannot send prox iovar %s [awdl_oob_af], # pending async flow control cmds (%d) Context %s \n", "handleOobAfIovarAsyncCallBack", 2416, v10, *(*(a1 + 17) + 48), v11);
  if (address)
  {
LABEL_11:
    v12 = *address;
    v13 = address[2];
    v14 = -38;
    IO80211Controller::postMessage(*(*(a1 + 17) + 64), a1, 0x45u, &v12, 7uLL, 1);
LABEL_12:
    IOFree(address, 6uLL);
  }
}

uint64_t AppleBCMWLANProximityInterface::handleSlotBssIovarAsyncCallBack(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a3 != -469794537 && a3 != 0)
  {
    v6 = result;
    result = (*(*result + 1088))(result);
    if (result)
    {
      (*(*v6 + 1088))(v6);
      result = CCLogStream::shouldLog();
      if (result)
      {
        return AppleBCMWLANProximityInterface::handleSlotBssIovarAsyncCallBack(v6, v6 & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000, a2, a3);
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANProximityInterface::sendUnicastAFIOVar(AppleBCMWLANProximityInterface *this, iovec *a2, unsigned int a3)
{
  v26 = 0;
  v27 = 0;
  v28 = 0;
  if (!a3)
  {
    goto LABEL_15;
  }

  v5 = 0;
  v6 = a3;
  p_iov_len = &a2->iov_len;
  v8 = a3;
  do
  {
    v9 = *p_iov_len;
    p_iov_len += 2;
    v5 += v9;
    --v8;
  }

  while (v8);
  if (v5 >= 0x26)
  {
    if (v5 + 11 >= AppleBCMWLANCommander::getMaxCmdTxPayload(*(*(this + 17) + 960)))
    {
      v20 = 3758097128;
      if ((*(*this + 1088))(this))
      {
        (*(*this + 1088))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANProximityInterface::sendUnicastAFIOVar(this);
          return 3758097128;
        }
      }
    }

    else
    {
      v10 = IOMallocZeroData();
      if (v10)
      {
        v11 = v10;
        v12 = IOMallocZeroTyped();
        if (v12)
        {
          v13 = v12;
          v14 = 0;
          v15 = &a2->iov_len;
          do
          {
            memcpy((v11 + v14), *(v15 - 1), *v15);
            v16 = *v15;
            v15 += 2;
            v14 += v16;
            --v6;
          }

          while (v6);
          v17 = *(v11 + 6);
          v13[2] = *(v11 + 10);
          *v13 = v17;
          v26 = this;
          v27 = AppleBCMWLANProximityInterface::handleOobAfIovarAsyncCallBack;
          v28 = v13;
          v18 = *(this + 17);
          v19 = *(v18 + 48);
          if (v19 <= 0x10)
          {
            *(v18 + 48) = v19 + 1;
            v22 = *(*(this + 17) + 960);
            InterfaceId = IO80211SkywalkInterface::getInterfaceId(this);
            if (v5)
            {
              v24 = v11;
            }

            else
            {
              v24 = 0;
            }

            v25[0] = v24;
            v25[1] = v5;
            v20 = AppleBCMWLANCommander::sendVirtualIOVarSet(v22, InterfaceId, "awdl_oob_af", v25, kNoRxExpected, &v26, 0);
            if (v20)
            {
              if ((*(*this + 1088))(this))
              {
                (*(*this + 1088))(this);
                if (CCLogStream::shouldLog())
                {
                  AppleBCMWLANProximityInterface::sendUnicastAFIOVar(this, this & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000, this + 136, v20);
                }
              }
            }
          }

          else
          {
            if ((*(*this + 1088))(this))
            {
              (*(*this + 1088))(this);
              if (CCLogStream::shouldLog())
              {
                AppleBCMWLANProximityInterface::sendUnicastAFIOVar(this);
              }
            }

            v20 = 3758097086;
            IOFree(v13, 6uLL);
          }
        }

        else
        {
          AppleBCMWLANProximityInterface::sendUnicastAFIOVar(this);
          v20 = LODWORD(v25[0]);
        }

        IOFreeData();
      }

      else
      {
        v20 = 3758097086;
        if ((*(*this + 1088))(this))
        {
          (*(*this + 1088))(this);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANProximityInterface::sendUnicastAFIOVar(this);
          }
        }
      }
    }
  }

  else
  {
LABEL_15:
    v20 = 3758097127;
    if ((*(*this + 1088))(this, a2))
    {
      (*(*this + 1088))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANProximityInterface::sendUnicastAFIOVar(this);
        return 3758097127;
      }
    }
  }

  return v20;
}

uint64_t AppleBCMWLANProximityInterface::sendIOVarSetCommand(AppleBCMWLANProximityInterface *this, iovec *a2, unsigned int a3, const char *__s)
{
  LODWORD(v5) = a3;
  v31[0] = this;
  v31[1] = AppleBCMWLANProximityInterface::handleFlowControlledProxIovarAsyncCallBack;
  v31[2] = 0;
  v8 = 0;
  if (a3)
  {
    v9 = a3;
    p_iov_len = &a2->iov_len;
    do
    {
      v11 = *p_iov_len;
      p_iov_len += 2;
      v8 += v11;
      --v9;
    }

    while (v9);
  }

  v12 = strlen(__s) + v8;
  v13 = this + 136;
  if (v12 >= AppleBCMWLANCommander::getMaxCmdTxPayload(*(*(this + 17) + 960)))
  {
    v20 = 3758097128;
    if ((*(*this + 1088))(this))
    {
      (*(*this + 1088))(this);
      if (CCLogStream::shouldLog())
      {
        v21 = (*(*this + 1088))(this);
        v22 = strlen(__s);
        MaxCmdTxPayload = AppleBCMWLANCommander::getMaxCmdTxPayload(*(*(this + 17) + 960));
        CCLogStream::logAlert(v21, "[dk] %s@%d: excessive payload length iovar_len %lu data_len %lu max %lu\n", "sendIOVarSetCommand", 2520, v22, v8, MaxCmdTxPayload);
        return 3758097128;
      }
    }
  }

  else
  {
    v14 = IOMallocZeroData();
    if (v14)
    {
      v15 = v14;
      if (v5)
      {
        v16 = 0;
        v5 = v5;
        v17 = &a2->iov_len;
        do
        {
          memcpy((v15 + v16), *(v17 - 1), *v17);
          v18 = *v17;
          v17 += 2;
          v16 += v18;
          --v5;
        }

        while (v5);
      }

      v19 = *(*v13 + 48);
      if (v19 <= 0x10)
      {
        *(*v13 + 48) = v19 + 1;
        v24 = *(*(this + 17) + 960);
        InterfaceId = IO80211SkywalkInterface::getInterfaceId(this);
        if (v8)
        {
          v26 = v15;
        }

        else
        {
          v26 = 0;
        }

        v30[0] = v26;
        v30[1] = v8;
        v20 = AppleBCMWLANCommander::sendVirtualIOVarSet(v24, InterfaceId, __s, v30, kNoRxExpected, v31, 0);
        if (v20)
        {
          if ((*(*this + 1088))(this))
          {
            (*(*this + 1088))(this);
            if (CCLogStream::shouldLog())
            {
              v28 = (*(*this + 1088))(this);
              v29 = (*(**(*(this + 17) + 64) + 112))(*(*(this + 17) + 64), v20);
              CCLogStream::logAlertIf(v28, 0x400uLL, "[dk] %s@%d: Error: cannot send %s %s\n", "sendIOVarSetCommand", 2546, __s, v29);
            }
          }
        }
      }

      else
      {
        v20 = 3758097086;
        if ((*(*this + 1088))(this))
        {
          (*(*this + 1088))(this);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANProximityInterface::sendIOVarSetCommand(this);
          }
        }
      }

      IOFreeData();
    }

    else
    {
      v20 = 3758097086;
      if ((*(*this + 1088))(this))
      {
        (*(*this + 1088))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANProximityInterface::sendIOVarSetCommand(this);
        }
      }
    }
  }

  return v20;
}

void *AppleBCMWLANProximityInterface::handleFlowControlledProxIovarAsyncCallBack(void *result, uint64_t a2, uint64_t a3)
{
  --*(result[17] + 48);
  if (a3 != -469794537 && a3 != 0)
  {
    v6 = result;
    result = (*(*result + 1088))(result);
    if (result)
    {
      (*(*v6 + 1088))(v6);
      result = CCLogStream::shouldLog();
      if (result)
      {
        v7 = (*(*v6 + 1088))(v6);
        v8 = (*(*v6 + 920))(v6, a3);
        v9 = *(a2 + 8);
        if (!v9)
        {
          v9 = "unknown";
        }

        return CCLogStream::logAlert(v7, "[dk] %s@%d: Error: cannot send prox iovar %s [%s], # pending async flow control cmds (%d) \n", "handleFlowControlledProxIovarAsyncCallBack", 3470, v8, v9, *(v6[17] + 48));
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANProximityInterface::updateSyncParams(AppleBCMWLANProximityInterface *this)
{
  if ((*(*this + 1088))(this))
  {
    (*(*this + 1088))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANProximityInterface::updateSyncParams(this);
    }
  }

  v2 = *(this + 17);
  if (!v2[170] || !v2[179] || !v2[180] || !v2[181])
  {
    return 22;
  }

  return AppleBCMWLANProximityInterface::setSyncParams(this);
}

uint64_t AppleBCMWLANProximityInterface::setSyncParams(AppleBCMWLANProximityInterface *this)
{
  v8[0] = this;
  v8[1] = AppleBCMWLANProximityInterface::handleProxIovarAsyncCallBack;
  v8[2] = 0;
  if (*(*(this + 17) + 120) != 1 || IO80211SkywalkInterface::getInterfaceId(this) == -1 || IO80211SkywalkInterface::getInterfaceId(this) == 255 || IO80211SkywalkInterface::getInterfaceId(this) >= 0xC)
  {
    if ((*(*this + 1088))(this))
    {
      (*(*this + 1088))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANProximityInterface::setSyncParams(this);
      }
    }

    return 0;
  }

  else
  {
    v9 = 0u;
    v10 = 0u;
    v11 = 0;
    *(&v9 + 1) = 36;
    v4 = *(this + 17);
    WORD4(v9) = *(v4 + 720);
    WORD5(v9) = *(v4 + 732);
    HIWORD(v9) = *(v4 + 724);
    LOWORD(v10) = *(v4 + 716);
    BYTE6(v9) = *(v4 + 680);
    v5 = *(v4 + 960);
    InterfaceId = IO80211SkywalkInterface::getInterfaceId(this);
    v7[0] = &v9;
    v7[1] = 36;
    v2 = AppleBCMWLANCommander::sendVirtualIOVarSet(v5, InterfaceId, "awdl_sync_params", v7, kNoRxExpected, v8, 0);
    if (v2)
    {
      if ((*(*this + 1088))(this))
      {
        (*(*this + 1088))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANProximityInterface::setSyncParams(this);
        }
      }
    }
  }

  return v2;
}

uint64_t AppleBCMWLANProximityInterface::setAWDL_SYNC_PARAMS(uint64_t *a1, _DWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a2)
  {
    return 8;
  }

  v9 = a1 + 17;
  v10 = a2[1];
  *(a1[17] + 720) = a2[2];
  v11 = a2[3];
  *(a1[17] + 732) = a2[4];
  *(a1[17] + 724) = v11;
  *(a1[17] + 716) = v10;
  *(a1[17] + 660) = a2[5];
  if ((*(*a1 + 1088))(a1, a2, a3, a4, a5, a6, a7, a8, 0, 0, 0, 0, 0, 0, 0, 0))
  {
    (*(*a1 + 1088))(a1);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANProximityInterface::setAWDL_SYNC_PARAMS(a1);
    }
  }

  *(*v9 + 856) = 0;
  *(*v9 + 860) = 0;
  *(*v9 + 864) = 0;
  *(*v9 + 668) = 2;
  v12 = *v9;
  if (*(*v9 + 680) && v12[179] && v12[180] && v12[181])
  {
    return AppleBCMWLANProximityInterface::setSyncParams(a1);
  }

  else
  {
    return 22;
  }
}

uint64_t non-virtual thunk toAppleBCMWLANProximityInterface::setAWDL_SYNC_PARAMS(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  return AppleBCMWLANProximityInterface::setAWDL_SYNC_PARAMS((a1 - 112), a2, a3, a4, a5, a6, a7, a8);
}

{
  return AppleBCMWLANProximityInterface::setAWDL_SYNC_PARAMS((a1 - 128), a2, a3, a4, a5, a6, a7, a8);
}

uint64_t AppleBCMWLANProximityInterface::setPSF_DWELL(IO80211SkywalkInterface *this, uint64_t a2)
{
  v9[0] = this;
  v9[1] = AppleBCMWLANProximityInterface::handleProxIovarAsyncCallBack;
  v9[2] = 0;
  if (a2)
  {
    v10 = 0;
    v3 = *(a2 + 8);
    WORD2(v10) = *(a2 + 4);
    HIWORD(v10) = v3;
    v4 = *(*(this + 17) + 960);
    InterfaceId = IO80211SkywalkInterface::getInterfaceId(this);
    v8[0] = &v10;
    v8[1] = 8;
    v6 = AppleBCMWLANCommander::sendVirtualIOVarSet(v4, InterfaceId, "awdl_psf_dwell", v8, kNoRxExpected, v9, 0);
    if (v6)
    {
      if ((*(*this + 1088))(this))
      {
        (*(*this + 1088))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANProximityInterface::setPSF_DWELL(this);
        }
      }
    }
  }

  else
  {
    v6 = 3758097090;
    if ((*(*this + 1088))(this))
    {
      (*(*this + 1088))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANProximityInterface::setPSF_DWELL(this);
      }
    }
  }

  return v6;
}

uint64_t non-virtual thunk toAppleBCMWLANProximityInterface::setPSF_DWELL(uint64_t a1, uint64_t a2)
{
  return AppleBCMWLANProximityInterface::setPSF_DWELL((a1 - 112), a2);
}

{
  return AppleBCMWLANProximityInterface::setPSF_DWELL((a1 - 128), a2);
}

uint64_t AppleBCMWLANProximityInterface::setAWDL_SYNC_STATE(uint64_t *a1, uint64_t a2)
{
  v16 = 0uLL;
  memset(v17, 0, sizeof(v17));
  *(&v16 + 1) = *(a1[17] + 660);
  v4 = *(a2 + 4);
  if (v4 == 1)
  {
    v5 = 2;
    goto LABEL_6;
  }

  if (v4 != 2)
  {
    if (v4 == 3)
    {
      v5 = 1;
LABEL_6:
      LOBYTE(v16) = v5;
      goto LABEL_11;
    }

    if ((*(*a1 + 1088))(a1))
    {
      (*(*a1 + 1088))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANProximityInterface::setAWDL_SYNC_STATE(a1);
      }
    }
  }

  v5 = 0;
LABEL_11:
  if (*(a2 + 20))
  {
    v5 |= *(a2 + 20);
    LOBYTE(v16) = v5;
  }

  v6 = *(a2 + 16);
  v15 = v6;
  if ((*(*a1 + 1088))(a1))
  {
    (*(*a1 + 1088))(a1);
    if (CCLogStream::shouldLog())
    {
      v11 = (*(*a1 + 1088))(a1);
      v12 = "SLAVE";
      if (v5 == 1)
      {
        v12 = "NE_MASTER";
      }

      if (v5 == 2)
      {
        v12 = "MASTER";
      }

      CCLogStream::logAlertIf(v11, 0x400uLL, "[dk] %s@%d: set awdl opmode %u %s ne_bcast_period %lu\n", "setAWDL_SYNC_STATE", 2744, v6, v12, *(a1[17] + 660));
    }
  }

  *(&v16 + 3) = *(a2 + 8);
  *(&v16 + 7) = *(a2 + 12);
  v14[0] = a1;
  v14[1] = AppleBCMWLANProximityInterface::handleProxIovarAsyncCallBack;
  v14[2] = 0;
  v7 = *(a1[17] + 960);
  InterfaceId = IO80211SkywalkInterface::getInterfaceId(a1);
  v13[0] = &v15;
  v13[1] = 28;
  v9 = AppleBCMWLANCommander::sendVirtualIOVarSet(v7, InterfaceId, "awdl_opmode", v13, kNoRxExpected, v14, 0);
  if (v9)
  {
    if ((*(*a1 + 1088))(a1))
    {
      (*(*a1 + 1088))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANProximityInterface::setAWDL_SYNC_STATE(a1);
      }
    }
  }

  return v9;
}

uint64_t non-virtual thunk toAppleBCMWLANProximityInterface::setAWDL_SYNC_STATE(uint64_t a1, uint64_t a2)
{
  return AppleBCMWLANProximityInterface::setAWDL_SYNC_STATE((a1 - 112), a2);
}

{
  return AppleBCMWLANProximityInterface::setAWDL_SYNC_STATE((a1 - 128), a2);
}

uint64_t AppleBCMWLANProximityInterface::setAWDL_SYNC_ENABLED(uint64_t *a1, uint64_t a2)
{
  if (AppleBCMWLANCore::isOpModeAllowed(*(a1[17] + 64), 2u))
  {

    return AppleBCMWLANProximityInterface::setSYNC_ENABLED_internal(a1, a2);
  }

  else
  {
    if ((*(*a1 + 1088))(a1))
    {
      (*(*a1 + 1088))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANProximityInterface::setAWDL_SYNC_ENABLED(a1);
      }
    }

    return 16;
  }
}

uint64_t AppleBCMWLANProximityInterface::setSYNC_ENABLED_internal(uint64_t *a1, uint64_t a2)
{
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  *__str = 0u;
  v17 = 0u;
  if (!a2)
  {
    return 3758097090;
  }

  if (*(a2 + 8))
  {
    v4 = snprintf(__str, 0x7FuLL, "set AWDL->ON pm %u minExt %u MasterChan %u/%u step %u [", *(a1[17] + 656), *(a1[17] + 808), *(a1[17] + 680), *(a1[17] + 684), *(a1[17] + 131));
    v5 = a1[17];
    LODWORD(v6) = *(v5 + 129);
    if (*(v5 + 129))
    {
      v7 = 0;
      v8 = 140;
      do
      {
        v9 = 127 - v4;
        if (v4 >= 127)
        {
          v9 = 0;
        }

        if (v7 == v6 - 1)
        {
          v10 = "";
        }

        else
        {
          v10 = " ";
        }

        v4 += snprintf(&__str[v4], v9, "%u%s", *(v5 + v8), v10);
        ++v7;
        v5 = a1[17];
        v6 = *(v5 + 129);
        v8 += 12;
      }

      while (v7 < v6);
    }

    v11 = 127 - v4;
    if (v4 >= 127)
    {
      v11 = 0;
    }

    snprintf(&__str[v4], v11, "]\n");
    if ((AppleBCMWLANCore::isConcurrencyEnabled(*(a1[17] + 64)) & 1) != 0 && AppleBCMWLANCore::isConcurrencyOpModeSet(*(a1[17] + 64), 4))
    {
      AppleBCMWLANCore::setSoftAPPowerState(*(a1[17] + 64), 1u, 6u);
    }

    if ((*(*a1 + 1088))(a1))
    {
      (*(*a1 + 1088))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANProximityInterface::setSYNC_ENABLED_internal(a1);
      }
    }

    if ((*(*a1 + 1088))(a1))
    {
      (*(*a1 + 1088))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANProximityInterface::setSYNC_ENABLED_internal(a1);
      }
    }
  }

  else if ((*(*a1 + 1088))(a1))
  {
    (*(*a1 + 1088))(a1);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANProximityInterface::setSYNC_ENABLED_internal(a1);
    }
  }

  AppleBCMWLANCore::setConcurrencyState(*(a1[17] + 64), 2, *(a2 + 8) != 0);
  v12 = AppleBCMWLANProximityInterface::doSetSyncState(a1, *(a2 + 8) != 0);
  if (v12)
  {
    AppleBCMWLANCore::setConcurrencyState(*(a1[17] + 64), 2, *(a2 + 8) == 0);
  }

  v13 = a1[17];
  if (*(a2 + 8))
  {
    v14 = 1;
    AppleBCMWLANCore::setTXQueueEnabled(*(v13 + 64), 1);
  }

  else
  {
    v14 = 0;
    *(v13 + 668) = 4;
  }

  *(a1[17] + 121) = v14;
  return v12;
}

uint64_t non-virtual thunk toAppleBCMWLANProximityInterface::setAWDL_SYNC_ENABLED(uint64_t a1, uint64_t a2)
{
  return AppleBCMWLANProximityInterface::setAWDL_SYNC_ENABLED((a1 - 112), a2);
}

{
  return AppleBCMWLANProximityInterface::setAWDL_SYNC_ENABLED((a1 - 128), a2);
}

uint64_t AppleBCMWLANProximityInterface::setCHANNEL(AppleBCMWLANProximityInterface *a1, uint64_t a2)
{
  AppleBCMWLANProximityInterface::setChannel(a1, *(a2 + 8));
  if ((*(*a1 + 1088))(a1))
  {
    (*(*a1 + 1088))(a1);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANProximityInterface::setCHANNEL(a1);
    }
  }

  return 0;
}

uint64_t non-virtual thunk toAppleBCMWLANProximityInterface::setCHANNEL(uint64_t a1, uint64_t a2)
{
  AppleBCMWLANProximityInterface::setCHANNEL((a1 - 112), a2);
  return 0;
}

{
  AppleBCMWLANProximityInterface::setCHANNEL((a1 - 128), a2);
  return 0;
}

uint64_t AppleBCMWLANProximityInterface::setAWDL_MASTER_CHANNEL(uint64_t *a1, uint64_t a2)
{
  v3 = *(a2 + 4);
  if (v3)
  {
    *(a1[17] + 680) = v3;
  }

  else if ((*(*a1 + 1088))(a1))
  {
    (*(*a1 + 1088))(a1);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANProximityInterface::setAWDL_MASTER_CHANNEL(a1);
    }
  }

  if ((*(*a1 + 1088))(a1))
  {
    (*(*a1 + 1088))(a1);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANProximityInterface::setAWDL_MASTER_CHANNEL(a1);
    }
  }

  AppleBCMWLANProximityInterface::updateSyncParams(a1);
  return 0;
}

uint64_t non-virtual thunk toAppleBCMWLANProximityInterface::setAWDL_MASTER_CHANNEL(uint64_t a1, uint64_t a2)
{
  AppleBCMWLANProximityInterface::setAWDL_MASTER_CHANNEL((a1 - 112), a2);
  return 0;
}

{
  AppleBCMWLANProximityInterface::setAWDL_MASTER_CHANNEL((a1 - 128), a2);
  return 0;
}

uint64_t AppleBCMWLANProximityInterface::getAWDL_SECONDARY_MASTER_CHANNEL(IO80211SkywalkInterface *a1, uint64_t a2)
{
  v10 = 0;
  v9[0] = &v10;
  v9[1] = 0x400040004;
  v4 = *(*(a1 + 17) + 960);
  InterfaceId = IO80211SkywalkInterface::getInterfaceId(a1);
  v8[0] = &v10;
  v8[1] = 4;
  result = AppleBCMWLANCommander::runVirtualIOVarGet(v4, InterfaceId, "awdl_osoc_chan", v8, v9, 0);
  if (result)
  {
    if ((*(*a1 + 1088))(a1))
    {
      (*(*a1 + 1088))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANProximityInterface::getAWDL_SECONDARY_MASTER_CHANNEL(a1);
      }
    }

    return 97;
  }

  else
  {
    v7 = v10;
    *(*(a1 + 17) + 684) = v10;
    *(a2 + 4) = v7;
  }

  return result;
}

uint64_t non-virtual thunk toAppleBCMWLANProximityInterface::getAWDL_SECONDARY_MASTER_CHANNEL(uint64_t a1, uint64_t a2)
{
  return AppleBCMWLANProximityInterface::getAWDL_SECONDARY_MASTER_CHANNEL((a1 - 112), a2);
}

{
  return AppleBCMWLANProximityInterface::getAWDL_SECONDARY_MASTER_CHANNEL((a1 - 128), a2);
}

uint64_t AppleBCMWLANProximityInterface::getAWDL_AF_SECONDARY_PAYLOAD_CAPABILITIES(IO80211SkywalkInterface *a1, uint64_t a2)
{
  v4 = IOMallocZeroTyped();
  if (!v4)
  {
    return 12;
  }

  v5 = v4;
  v13[0] = v4;
  v13[1] = 0x800080008;
  v6 = *(*(a1 + 17) + 960);
  InterfaceId = IO80211SkywalkInterface::getInterfaceId(a1);
  v12[0] = v5;
  v12[1] = 8;
  v8 = AppleBCMWLANCommander::runVirtualIOVarGet(v6, InterfaceId, "awdl_cap", v12, v13, 0);
  v9 = (*(*a1 + 1088))(a1);
  if (v8)
  {
    if (v9)
    {
      (*(*a1 + 1088))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANProximityInterface::getAWDL_AF_SECONDARY_PAYLOAD_CAPABILITIES(a1);
      }
    }
  }

  else
  {
    if (v9)
    {
      (*(*a1 + 1088))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANProximityInterface::getAWDL_AF_SECONDARY_PAYLOAD_CAPABILITIES(a1);
      }
    }

    *a2 = *v5;
    v10 = v5[4];
    *(a2 + 4) = v10;
    if (v10)
    {
      if ((*(*a1 + 1088))(a1))
      {
        (*(*a1 + 1088))(a1);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANProximityInterface::getAWDL_AF_SECONDARY_PAYLOAD_CAPABILITIES(a1);
        }
      }

      *(*(a1 + 17) + 108) = 1;
      v10 = *(a2 + 4);
    }

    if ((v10 & 2) != 0)
    {
      if ((*(*a1 + 1088))(a1))
      {
        (*(*a1 + 1088))(a1);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANProximityInterface::getAWDL_AF_SECONDARY_PAYLOAD_CAPABILITIES(a1);
        }
      }

      *(*(a1 + 17) + 109) = 1;
    }
  }

  IOFree(v5, 8uLL);
  return v8;
}

uint64_t non-virtual thunk toAppleBCMWLANProximityInterface::getAWDL_AF_SECONDARY_PAYLOAD_CAPABILITIES(uint64_t a1, uint64_t a2)
{
  return AppleBCMWLANProximityInterface::getAWDL_AF_SECONDARY_PAYLOAD_CAPABILITIES((a1 - 112), a2);
}

{
  return AppleBCMWLANProximityInterface::getAWDL_AF_SECONDARY_PAYLOAD_CAPABILITIES((a1 - 128), a2);
}

uint64_t AppleBCMWLANProximityInterface::setAWDL_SECONDARY_MASTER_CHANNEL(IO80211SkywalkInterface *a1, uint64_t a2)
{
  v9 = *(a2 + 4);
  v8[0] = a1;
  v8[1] = AppleBCMWLANProximityInterface::handleProxIovarAsyncCallBack;
  v8[2] = 0;
  v3 = *(*(a1 + 17) + 960);
  InterfaceId = IO80211SkywalkInterface::getInterfaceId(a1);
  v7[0] = &v9;
  v7[1] = 4;
  v5 = AppleBCMWLANCommander::sendVirtualIOVarSet(v3, InterfaceId, "awdl_osoc_chan", v7, kNoRxExpected, v8, 0);
  if (v5)
  {
    *(*(a1 + 17) + 684) = 0;
    if ((*(*a1 + 1088))(a1))
    {
      (*(*a1 + 1088))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANProximityInterface::setAWDL_SECONDARY_MASTER_CHANNEL(a1);
      }
    }
  }

  else
  {
    *(*(a1 + 17) + 684) = v9;
    if ((*(*a1 + 1088))(a1))
    {
      (*(*a1 + 1088))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANProximityInterface::setAWDL_SECONDARY_MASTER_CHANNEL(a1);
      }
    }
  }

  return v5;
}

uint64_t non-virtual thunk toAppleBCMWLANProximityInterface::setAWDL_SECONDARY_MASTER_CHANNEL(uint64_t a1, uint64_t a2)
{
  return AppleBCMWLANProximityInterface::setAWDL_SECONDARY_MASTER_CHANNEL((a1 - 112), a2);
}

{
  return AppleBCMWLANProximityInterface::setAWDL_SECONDARY_MASTER_CHANNEL((a1 - 128), a2);
}

uint64_t AppleBCMWLANProximityInterface::getAWDL_MASTER_CHANNEL(IO80211SkywalkInterface *a1, uint64_t a2)
{
  v14 = 0;
  v12 = 0u;
  v13 = 0u;
  v11[0] = &v12;
  v11[1] = 0x2400240024;
  v4 = *(*(a1 + 17) + 960);
  InterfaceId = IO80211SkywalkInterface::getInterfaceId(a1);
  v10[0] = &v12;
  v10[1] = 36;
  if (AppleBCMWLANCommander::runVirtualIOVarGet(v4, InterfaceId, "awdl_sync_params", v10, v11, 0))
  {
    if ((*(*a1 + 1088))(a1))
    {
      (*(*a1 + 1088))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANProximityInterface::getAWDL_MASTER_CHANNEL(a1);
      }
    }

    return 97;
  }

  else
  {
    v7 = v13;
    if (v13)
    {
      v8 = WORD5(v12);
      if (WORD5(v12))
      {
        v9 = HIWORD(v12);
        if (HIWORD(v12))
        {
          result = 0;
          *(*(a1 + 17) + 720) = WORD4(v12);
          *(*(a1 + 17) + 732) = v8;
          *(*(a1 + 17) + 724) = v9;
          *(*(a1 + 17) + 716) = v7;
          *(*(a1 + 17) + 680) = BYTE6(v12);
          *(a2 + 4) = *(*(a1 + 17) + 680);
          return result;
        }

        if ((*(*a1 + 1088))(a1))
        {
          (*(*a1 + 1088))(a1);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANProximityInterface::getAWDL_MASTER_CHANNEL(a1);
          }
        }
      }

      else if ((*(*a1 + 1088))(a1))
      {
        (*(*a1 + 1088))(a1);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANProximityInterface::getAWDL_MASTER_CHANNEL(a1);
        }
      }
    }

    else if ((*(*a1 + 1088))(a1))
    {
      (*(*a1 + 1088))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANProximityInterface::getAWDL_MASTER_CHANNEL(a1);
      }
    }

    return 22;
  }
}

uint64_t non-virtual thunk toAppleBCMWLANProximityInterface::getAWDL_MASTER_CHANNEL(uint64_t a1, uint64_t a2)
{
  return AppleBCMWLANProximityInterface::getAWDL_MASTER_CHANNEL((a1 - 112), a2);
}

{
  return AppleBCMWLANProximityInterface::getAWDL_MASTER_CHANNEL((a1 - 128), a2);
}

uint64_t AppleBCMWLANProximityInterface::setAWDL_ENCRYPTION_KEYS(uint64_t *a1, uint64_t a2)
{
  v11 = 0;
  memset(v10, 0, sizeof(v10));
  if ((*(*a1 + 1088))(a1))
  {
    v4 = (*(*a1 + 1088))(a1);
    CCLogStream::shouldLog(v4, 0x800uLL);
  }

  v5 = mapAppleKeyToBcomKey(v10, a2);
  if (v5)
  {
    v6 = v5;
    if ((*(*a1 + 1088))(a1))
    {
      (*(*a1 + 1088))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANProximityInterface::setAWDL_ENCRYPTION_KEYS(a1, a1 & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000, v6);
      }
    }
  }

  else
  {
    v7 = (*(**(a1[17] + 64) + 88))(*(a1[17] + 64));
    if ((*(*v7 + 136))(v7))
    {
      return AppleBCMWLANProximityInterface::programKeyAsync(a1, v10);
    }

    else
    {
      return AppleBCMWLANProximityInterface::programKeySync(a1, v10);
    }
  }

  return v6;
}

uint64_t AppleBCMWLANProximityInterface::programKeyAsync(uint64_t *a1, uint64_t a2)
{
  v4 = a1 & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000;
  if ((*(*a1 + 1088))(a1))
  {
    (*(*a1 + 1088))(a1);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANProximityInterface::programKeyAsync(a1);
    }
  }

  if ((*(*a1 + 1088))(a1))
  {
    v5 = (*(*a1 + 1088))(a1);
    CCLogStream::shouldLog(v5, 0x800uLL);
  }

  v11[0] = a1;
  v11[1] = AppleBCMWLANProximityInterface::handleProxIovarAsyncCallBack;
  v11[2] = 0;
  v6 = *(a1[17] + 960);
  InterfaceId = IO80211SkywalkInterface::getInterfaceId(a1);
  v10[0] = a2;
  v10[1] = 164;
  v8 = AppleBCMWLANCommander::sendVirtualIOVarSet(v6, InterfaceId, "wsec_key", v10, kNoRxExpected, v11, 0);
  if (v8)
  {
    if ((*(*a1 + 1088))(a1))
    {
      (*(*a1 + 1088))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANProximityInterface::programKeyAsync(a1, v4, (a1 + 17), v8);
      }
    }
  }

  return v8;
}

uint64_t AppleBCMWLANProximityInterface::programKeySync(uint64_t *a1, uint64_t a2)
{
  if ((*(*a1 + 1088))(a1))
  {
    (*(*a1 + 1088))(a1);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANProximityInterface::programKeySync(a1);
    }
  }

  if ((*(*a1 + 1088))(a1))
  {
    v4 = (*(*a1 + 1088))(a1);
    CCLogStream::shouldLog(v4, 0x800uLL);
  }

  v5 = *(a1[17] + 960);
  InterfaceId = IO80211SkywalkInterface::getInterfaceId(a1);
  v9[0] = a2;
  v9[1] = 164;
  v7 = AppleBCMWLANCommander::runVirtualIOVarSet(v5, InterfaceId, "wsec_key", v9, 0, 0);
  if (v7)
  {
    if ((*(*a1 + 1088))(a1))
    {
      (*(*a1 + 1088))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANProximityInterface::programKeySync(a1);
      }
    }
  }

  return v7;
}

uint64_t non-virtual thunk toAppleBCMWLANProximityInterface::setAWDL_ENCRYPTION_KEYS(uint64_t a1, uint64_t a2)
{
  return AppleBCMWLANProximityInterface::setAWDL_ENCRYPTION_KEYS((a1 - 112), a2);
}

{
  return AppleBCMWLANProximityInterface::setAWDL_ENCRYPTION_KEYS((a1 - 128), a2);
}

uint64_t AppleBCMWLANProximityInterface::getAWDL_ENCRYPTION_TYPE(IO80211SkywalkInterface *a1, uint64_t a2)
{
  v10 = 0;
  v11 = -1431655766;
  v9[0] = &v11;
  v9[1] = 0x400040004;
  v4 = *(*(a1 + 17) + 960);
  InterfaceId = IO80211SkywalkInterface::getInterfaceId(a1);
  v8[0] = &v11;
  v8[1] = 4;
  v6 = AppleBCMWLANCommander::runVirtualIOVarGet(v4, InterfaceId, "wsec", v8, v9, 0);
  if (v6)
  {
    if ((*(*a1 + 1088))(a1))
    {
      (*(*a1 + 1088))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANProximityInterface::getAWDL_ENCRYPTION_TYPE(a1);
      }
    }
  }

  else
  {
    mapBcomCryptoAlgToAppleCipher(&v10, v11);
    *(a2 + 4) = v10;
  }

  return v6;
}

uint64_t non-virtual thunk toAppleBCMWLANProximityInterface::getAWDL_ENCRYPTION_TYPE(uint64_t a1, uint64_t a2)
{
  return AppleBCMWLANProximityInterface::getAWDL_ENCRYPTION_TYPE((a1 - 112), a2);
}

{
  return AppleBCMWLANProximityInterface::getAWDL_ENCRYPTION_TYPE((a1 - 128), a2);
}

uint64_t AppleBCMWLANProximityInterface::setAWDL_ENCRYPTION_TYPE(IO80211SkywalkInterface *a1, uint64_t a2)
{
  v8 = 0;
  mapAppleCipherToBcomCryptoAlg(&v8, *(a2 + 4));
  v3 = *(*(a1 + 17) + 960);
  InterfaceId = IO80211SkywalkInterface::getInterfaceId(a1);
  v7[0] = &v8;
  v7[1] = 4;
  v5 = AppleBCMWLANCommander::runVirtualIOVarSet(v3, InterfaceId, "wsec", v7, 0, 0);
  if (v5)
  {
    if ((*(*a1 + 1088))(a1))
    {
      (*(*a1 + 1088))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANProximityInterface::setAWDL_ENCRYPTION_TYPE(a1);
      }
    }
  }

  return v5;
}

uint64_t non-virtual thunk toAppleBCMWLANProximityInterface::setAWDL_ENCRYPTION_TYPE(uint64_t a1, uint64_t a2)
{
  return AppleBCMWLANProximityInterface::setAWDL_ENCRYPTION_TYPE((a1 - 112), a2);
}

{
  return AppleBCMWLANProximityInterface::setAWDL_ENCRYPTION_TYPE((a1 - 128), a2);
}

uint64_t AppleBCMWLANProximityInterface::setAWDL_RTG_PEER_STATS_CONFIG(IO80211SkywalkInterface *this, uint64_t a2)
{
  v2 = a2;
  if (a2)
  {
    v4 = *(this + 17);
    if (*(v4 + 664) && *(v4 + 1104) != 1)
    {
      if (*a2 == 1)
      {
        AppleBCMWLANCore::reportPerPeerTxPerAndLatency(*(v4 + 64), (a2 + 4), *(a2 + 10), *(a2 + 12));
      }

      else if (!*a2)
      {
        v5 = *(a2 + 2) != 0;
        v6 = *(v4 + 64);
        v7 = *(a2 + 1);
        InterfaceId = IO80211SkywalkInterface::getInterfaceId(this);
        AppleBCMWLANCore::configPerPeerStats(v6, v5, v7, InterfaceId, (v2 + 4));
      }

      return 0;
    }

    else
    {
      v2 = 3758097109;
      if ((*(*this + 1088))(this))
      {
        (*(*this + 1088))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANProximityInterface::setAWDL_RTG_PEER_STATS_CONFIG(this);
        }
      }
    }
  }

  return v2;
}

uint64_t non-virtual thunk toAppleBCMWLANProximityInterface::setAWDL_RTG_PEER_STATS_CONFIG(uint64_t a1, uint64_t a2)
{
  return AppleBCMWLANProximityInterface::setAWDL_RTG_PEER_STATS_CONFIG((a1 - 112), a2);
}

{
  return AppleBCMWLANProximityInterface::setAWDL_RTG_PEER_STATS_CONFIG((a1 - 128), a2);
}

uint64_t AppleBCMWLANProximityInterface::setAWDL_PEER_TRAFFIC_REGISTRATION(uint64_t *a1, uint64_t a2)
{
  v34 = 0;
  v4 = (a2 + 16);
  if (!strncmp((a2 + 16), "CARPLAY_UUID", *(a2 + 12)))
  {
    v10 = a1[17];
    if (*(a2 + 168))
    {
      *(v10 + 92) = 1;
    }

    else
    {
      *(v10 + 92) = 0;
    }
  }

  else
  {
    if ((*(*a1 + 1088))(a1))
    {
      (*(*a1 + 1088))(a1);
      if (CCLogStream::shouldLog())
      {
        v30 = (*(*a1 + 1088))(a1);
        CCLogStream::logAlert(v30, "[dk] %s@%d:%s: set %s data->active %d\n", "setAWDL_PEER_TRAFFIC_REGISTRATION", 3155, "setAWDL_PEER_TRAFFIC_REGISTRATION", v4, *(a2 + 168));
      }
    }

    v5 = *(a2 + 12);
    if (!strncmp(v4, "wifid-assisted-discovery", v5))
    {
      v33[0] = a1;
      v33[1] = AppleBCMWLANProximityInterface::handleProxIovarAsyncCallBack;
      v33[2] = 0;
      v18 = a1 + 17;
      if (AppleBCMWLANCore::checkForRangingEnabled(*(a1[17] + 64)))
      {
        if (AppleBCMWLANCore::getFirmwareInterfaceVersion(*(*v18 + 64)) <= 4)
        {
          v19 = *(a2 + 168) != 0;
          v35[0] = 9;
          v35[1] = v19;
          v20 = *(*v18 + 960);
          v31 = v35;
          v32 = 8;
          v21 = AppleBCMWLANCommander::sendIOVarSet(v20, "btc_flags");
          if (v21)
          {
            v22 = v21;
            if ((*(*a1 + 1088))(a1))
            {
              (*(*a1 + 1088))(a1);
              if (CCLogStream::shouldLog())
              {
                AppleBCMWLANProximityInterface::setAWDL_PEER_TRAFFIC_REGISTRATION(a1, a1 & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000, (a1 + 17), v22);
              }
            }
          }
        }
      }

      if (!*(a2 + 168))
      {
        v35[0] = 0;
        if ((*(*a1 + 1088))(a1))
        {
          (*(*a1 + 1088))(a1);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANProximityInterface::setAWDL_PEER_TRAFFIC_REGISTRATION(a1);
          }
        }

        v23 = *(a1[17] + 960);
        InterfaceId = IO80211SkywalkInterface::getInterfaceId(a1);
        v31 = v35;
        v32 = 4;
        AppleBCMWLANCommander::sendVirtualIOVarSet(v23, InterfaceId, "wsec", &v31, kNoRxExpected, v33, 0);
      }
    }

    else if (!strncmp(v4, "sidecar", v5) || !strncmp(v4, "rtmode", v5) || (v6 = strncmp(v4, "airplay", v5), !v6))
    {
      v11 = a1[17];
      if (*(a2 + 168))
      {
        if (*(v11 + 112))
        {
          v12 = IOParseBootArgNumber("wlan.llw.awdlbssid", &v34, 4);
          v13 = a1[17];
          v14 = *(v13 + 112);
          v15 = v13 + 600;
          if (v12 && v34 != 0)
          {
            v16 = v15;
          }

          else
          {
            v16 = a2 + 4;
          }

          (*(*v14 + 1480))(v14, v16);
        }

        AppleBCMWLANProximityInterface::setLowLatencyTrafficState(a1, 1, 1);
        *(a1[17] + 548) = *(a2 + 176);
        v17 = *(a2 + 12);
        if (!strncmp(v4, "airplay", v17))
        {
          *(a1[17] + 94) = 1;
        }

        if (!strncmp(v4, "sidecar", v17))
        {
          *(a1[17] + 95) = 1;
          AppleBCMWLANTxPowerManager::dynTxSDBStartUpdate(*(a1[17] + 992), 0);
        }
      }

      else
      {
        if (*(v11 + 544) == 1)
        {
          v25 = *(v11 + 112);
          if (v25)
          {
            (*(*v25 + 1480))(v25, 0);
          }
        }

        AppleBCMWLANProximityInterface::setLowLatencyTrafficState(a1, 0, 0);
        v26 = *(a2 + 12);
        if (!strncmp(v4, "airplay", v26))
        {
          *(a1[17] + 94) = 0;
        }

        if (!strncmp(v4, "sidecar", v26))
        {
          *(a1[17] + 95) = 0;
          AppleBCMWLANTxPowerManager::dynTxSDBStopUpdate(*(a1[17] + 992), 0);
        }
      }
    }

    else
    {
      if (AppleBCMWLANProximityInterface::isRTGPeer(v6, v4, v5))
      {
        if (*(a2 + 168))
        {
          v7 = a1;
          v8 = 1;
          v9 = 1;
        }

        else
        {
          v27 = a1[17];
          if (*(v27 + 544) == 1)
          {
            v28 = *(v27 + 112);
            if (v28)
            {
              (*(*v28 + 1480))(v28, 0);
            }
          }

          v7 = a1;
          v8 = 0;
          v9 = 0;
        }

        goto LABEL_49;
      }

      if (!strncmp(v4, "airplay-connectivity-check", v5))
      {
        v8 = *(a1[17] + 544);
        v9 = *(a2 + 168) != 0;
        v7 = a1;
LABEL_49:
        AppleBCMWLANProximityInterface::setLowLatencyTrafficState(v7, v8, v9);
      }
    }
  }

  return 0;
}

uint64_t AppleBCMWLANProximityInterface::setLowLatencyTrafficState(uint64_t this, int a2, int a3)
{
  v3 = a3;
  v4 = a2;
  v5 = this;
  v6 = *(this + 136);
  if (*(v6 + 544) != a2 || *(v6 + 93) != a3)
  {
    v7[0] = a2;
    v7[1] = a3;
    AppleBCMWLANCore::postMessageInfra(*(v6 + 64), 0xD0u, v7, 2uLL);
    this = AppleBCMWLANCore::setBTMRejection(*(*(v5 + 136) + 64));
    v6 = *(v5 + 136);
  }

  *(v6 + 544) = v4;
  *(*(v5 + 136) + 93) = v3;
  return this;
}

uint64_t non-virtual thunk toAppleBCMWLANProximityInterface::setAWDL_PEER_TRAFFIC_REGISTRATION(uint64_t a1, uint64_t a2)
{
  AppleBCMWLANProximityInterface::setAWDL_PEER_TRAFFIC_REGISTRATION((a1 - 112), a2);
  return 0;
}

{
  AppleBCMWLANProximityInterface::setAWDL_PEER_TRAFFIC_REGISTRATION((a1 - 128), a2);
  return 0;
}

uint64_t AppleBCMWLANProximityInterface::setMacAddress(AppleBCMWLANProximityInterface *this, ether_addr *a2)
{
  v4 = (this + 136);
  v3 = *(this + 17);
  if (*(v3 + 664) || *(v3 + 1104) == 1)
  {
    v5 = 3758097109;
    if ((*(*this + 1088))(this, a2))
    {
      (*(*this + 1088))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANProximityInterface::setMacAddress(this);
      }
    }

    return v5;
  }

  if (*(v3 + 120) != 1)
  {
LABEL_12:
    Bus = AppleBCMWLANCore::getBus(*(v3 + 64));
    v11 = (*(*Bus + 752))(Bus);
    v12 = OSMetaClassBase::safeMetaCast(v11, gAppleBCMWLANBusSkywalkMetaClass);
    (v12->__vftable[1].Dispatch)(v12, this);
    (v12->__vftable[1].isEqualTo)(v12, this);
    return 0;
  }

  v7 = *(v3 + 960);
  InterfaceId = IO80211SkywalkInterface::getInterfaceId(this);
  v14[0] = a2;
  v14[1] = 6;
  v9 = AppleBCMWLANCommander::runVirtualIOVarSet(v7, InterfaceId, "cur_etheraddr", v14, 0, 0);
  if (!v9)
  {
    v3 = *v4;
    goto LABEL_12;
  }

  v5 = v9;
  if ((*(*this + 1088))(this))
  {
    (*(*this + 1088))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANProximityInterface::setMacAddress(this);
    }
  }

  return v5;
}

uint64_t IO80211BufferCursor::asType<apple8021_awdl_cca_stats>(uint64_t *a1, uint64_t a2, const char *a3)
{
  result = IO80211BufferCursor::_asType<apple8021_awdl_cca_stats>(a1, a2, a3);
  if (__CFADD__(result, v4 >> 32))
  {
    v5 = (v4 >> 63) + 1;
  }

  else
  {
    v5 = v4 >> 63;
  }

  v6 = v5 << 63 >> 63;
  if (v6 != v5 || v6 < 0)
  {
    AppleBCMWLANProximityInterface::handleEvent(result, v4);
  }

  return result;
}

uint64_t AppleBCMWLANProximityInterface::handleProxSlotBSSCompletion(uint64_t result, uint64_t a2, uint64_t a3, unsigned __int16 *a4)
{
  v4 = result;
  if (a3)
  {
    if ((*(*result + 1088))(result))
    {
      (*(*v4 + 1088))(v4);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANProximityInterface::handleProxSlotBSSCompletion(v4, v4 & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000, a3);
      }
    }

    FaultReporter = AppleBCMWLANCore::getFaultReporter(*(v4[17] + 64));
    return CCFaultReporter::reportFault(FaultReporter, 5u, "/Library/Caches/com.apple.xbs/Sources/AppleBCMWLANV3_driverkit/AppleBCMWLANProximityInterface.cpp", 0xD4Fu, "handleProxSlotBSSCompletion", 0, -469793489, " slot_bss, iovar retval %x", a3);
  }

  else
  {
    v8 = *(*a4 + 17);
    if (v8)
    {
      v9 = *(*a4 + 13);
      if ((*(*result + 1088))(result))
      {
        (*(*v4 + 1088))(v4);
        if (CCLogStream::shouldLog())
        {
          v15 = (*(*v4 + 1088))(v4);
          CCLogStream::logAlert(v15, "[dk] %s@%d:ERROR: Async callback for SlotBSS command (0x%x) failed, return status %d (0x%x)\n", "handleProxSlotBSSCompletion", 3418, v9, v8, v8);
        }
      }

      (*(*v4 + 1088))(v4);
      v10 = *a4;
      v11 = a4[4];
      result = IO80211Hexdump();
      if (v8 != -2081)
      {
        if (v8 == -16 || v8 == -25)
        {
          v13 = *(v4[17] + 64);

          return IO80211Controller::postMessage(v13, v4, 0xAAu, 0, 0, 1);
        }

        else
        {
          v14 = AppleBCMWLANCore::getFaultReporter(*(v4[17] + 64));
          return CCFaultReporter::reportFault(v14, 5u, "/Library/Caches/com.apple.xbs/Sources/AppleBCMWLANV3_driverkit/AppleBCMWLANProximityInterface.cpp", 0xD65u, "handleProxSlotBSSCompletion", 0, -469793489, " Cmd status %x", v8);
        }
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANProximityInterface::getTX_RATE(IO80211SkywalkInterface *a1, uint64_t a2)
{
  v10 = 0;
  HIDWORD(v10) = *(a2 + 4);
  v11 = 0;
  LOWORD(v11) = *(a2 + 8);
  WORD1(v10) = 8;
  v9[0] = &v10;
  v9[1] = 0xC000C000CLL;
  v4 = *(*(a1 + 17) + 960);
  InterfaceId = IO80211SkywalkInterface::getInterfaceId(a1);
  v8[0] = &v10;
  v8[1] = 12;
  v6 = AppleBCMWLANCommander::runVirtualIOVarGet(v4, InterfaceId, "txminrate", v8, v9, 0);
  if (v6)
  {
    if ((*(*a1 + 1088))(a1))
    {
      (*(*a1 + 1088))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANProximityInterface::getTX_RATE(a1);
      }
    }
  }

  else
  {
    *(a2 + 12) = HIWORD(v11);
  }

  return v6;
}

uint64_t AppleBCMWLANProximityInterface::setTX_RATE(IO80211SkywalkInterface *a1, uint64_t a2)
{
  v3 = *(a2 + 4);
  v11[0] = 0x80000;
  v11[1] = v3;
  v12 = *(a2 + 8);
  v13 = *(a2 + 12);
  (*(*a1 + 1088))(a1);
  IO80211Hexdump();
  v10[0] = a1;
  v10[1] = AppleBCMWLANProximityInterface::handleProxIovarAsyncCallBack;
  v10[2] = 0;
  v4 = *(*(a1 + 17) + 960);
  InterfaceId = IO80211SkywalkInterface::getInterfaceId(a1);
  v9[0] = v11;
  v9[1] = 12;
  v6 = AppleBCMWLANCommander::sendVirtualIOVarSet(v4, InterfaceId, "txminrate", v9, kNoRxExpected, v10, 0);
  v7 = (*(*a1 + 1088))(a1);
  if (v6)
  {
    if (v7)
    {
      (*(*a1 + 1088))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANProximityInterface::setTX_RATE(a1);
      }
    }
  }

  else if (v7)
  {
    (*(*a1 + 1088))(a1);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANProximityInterface::setTX_RATE(a1);
    }
  }

  return v6;
}

uint64_t non-virtual thunk toAppleBCMWLANProximityInterface::setTX_RATE(uint64_t a1, uint64_t a2)
{
  return AppleBCMWLANProximityInterface::setTX_RATE((a1 - 112), a2);
}

{
  return AppleBCMWLANProximityInterface::setTX_RATE((a1 - 128), a2);
}

uint64_t AppleBCMWLANProximityInterface::dumpAwdlStats(AppleBCMWLANProximityInterface *this, char *a2)
{
  v5 = 0;
  memset(v4, 0, sizeof(v4));
  (*(*this + 1824))(this, v4);
  (*(*this + 1088))(this);
  return IO80211Print();
}

uint64_t AppleBCMWLANProximityInterface::dumpPeerCache(AppleBCMWLANProximityInterface *this, char *a2)
{
  v3 = IOMallocZeroData();
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  if (AppleBCMWLANProximityInterface::copyPeerCache(this, v3, 676))
  {
    v5 = 0;
    goto LABEL_33;
  }

  v6 = *v4;
  if (v6 <= 0x2A4)
  {
    v7 = 0;
  }

  else
  {
    (*(*this + 1088))(this);
    v7 = IO80211Print();
    v6 = 676;
  }

  (*(*this + 1088))(this);
  v5 = IO80211Print() + v7;
  if (v6 >= 0xD)
  {
    v8 = (v4 + 1);
    do
    {
      (*(*this + 1088))(this);
      v22 = v8[4];
      v23 = v8[5];
      v20 = v8[2];
      v21 = v8[3];
      v15 = *v8;
      v19 = v8[1];
      v9 = IO80211Print();
      v38 = 0u;
      v39 = 0u;
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
      *__dst = 0u;
      v25 = 0u;
      v10 = *(v8 + 6);
      if ((v10 & 0x20) != 0)
      {
        strlcat(__dst, "awdl ", 0x100uLL);
        v10 = *(v8 + 6);
        if ((v10 & 0x10) == 0)
        {
LABEL_12:
          if ((v10 & 8) == 0)
          {
            goto LABEL_13;
          }

          goto LABEL_24;
        }
      }

      else if ((v10 & 0x10) == 0)
      {
        goto LABEL_12;
      }

      strlcat(__dst, "qos ", 0x100uLL);
      v10 = *(v8 + 6);
      if ((v10 & 8) == 0)
      {
LABEL_13:
        if ((v10 & 4) == 0)
        {
          goto LABEL_14;
        }

        goto LABEL_25;
      }

LABEL_24:
      strlcat(__dst, "aband ", 0x100uLL);
      v10 = *(v8 + 6);
      if ((v10 & 4) == 0)
      {
LABEL_14:
        if ((v10 & 2) == 0)
        {
          goto LABEL_15;
        }

        goto LABEL_26;
      }

LABEL_25:
      strlcat(__dst, "pm ", 0x100uLL);
      v10 = *(v8 + 6);
      if ((v10 & 2) == 0)
      {
LABEL_15:
        if (v10)
        {
          goto LABEL_27;
        }

        goto LABEL_16;
      }

LABEL_26:
      strlcat(__dst, "ampdu ", 0x100uLL);
      v10 = *(v8 + 6);
      if (v10)
      {
LABEL_27:
        strlcat(__dst, "ht ", 0x100uLL);
        if ((*(v8 + 6) & 0x40) == 0)
        {
          goto LABEL_18;
        }

LABEL_17:
        strlcat(__dst, "vht ", 0x100uLL);
        goto LABEL_18;
      }

LABEL_16:
      if ((v10 & 0x40) != 0)
      {
        goto LABEL_17;
      }

LABEL_18:
      (*(*this + 1088))(this);
      v16 = *(v8 + 6);
      v11 = v5 + v9 + IO80211Print();
      v12 = *(v8 + 5);
      if (v12 > 0x47 || (v13 = v12 + 13, v12 + 13 > v6))
      {
        (*(*this + 1088))(this);
        v18 = *(v8 + 5);
        v5 = v11 + IO80211Print();
        break;
      }

      if (*(v8 + 5))
      {
        (*(*this + 1088))(this);
        v17 = v8[13] + 1;
      }

      else
      {
        (*(*this + 1088))(this);
      }

      LOWORD(v6) = v6 - v13;
      v8 += v13;
      v5 = v11 + IO80211Print();
    }

    while (v6 > 0xCu);
  }

LABEL_33:
  IOFreeData();
  return v5;
}

uint64_t AppleBCMWLANProximityInterface::copyPeerCache(IO80211SkywalkInterface *a1, uint64_t a2, int a3)
{
  if (!a2)
  {
    return 0;
  }

  v4 = a3 | (((a3 << 16) | 4u) << 16);
  if (a3)
  {
    v5 = a2;
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  v10[0] = v5;
  v10[1] = v4;
  v6 = *(*(a1 + 17) + 960);
  InterfaceId = IO80211SkywalkInterface::getInterfaceId(a1);
  v8 = AppleBCMWLANCommander::runVirtualIOVarGet(v6, InterfaceId, "awdl_peer_op", &kNoTxPayload, v10, 0);
  if (v8)
  {
    if ((*(*a1 + 1088))(a1))
    {
      (*(*a1 + 1088))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANProximityInterface::copyPeerCache(a1);
      }
    }
  }

  return v8;
}

uint64_t AppleBCMWLANProximityInterface::setAWDL_CONFIG(uint64_t *a1, uint64_t a2)
{
  v3 = *(a2 + 4);
  if (v3)
  {
    v4 = v3 | 3;
  }

  else
  {
    v4 = 115;
  }

  v12 = v4;
  v5 = a1 & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000;
  if ((*(*a1 + 1088))(a1))
  {
    (*(*a1 + 1088))(a1);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANProximityInterface::setAWDL_CONFIG(a1);
    }
  }

  v11[0] = a1;
  v11[1] = AppleBCMWLANProximityInterface::handleProxIovarAsyncCallBack;
  v11[2] = 0;
  if (IO80211SkywalkInterface::getInterfaceId(a1) == -1)
  {
    if ((*(*a1 + 1088))(a1))
    {
      (*(*a1 + 1088))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANProximityInterface::setAWDL_CONFIG(a1);
      }
    }

    return 22;
  }

  else
  {
    v6 = *(a1[17] + 960);
    InterfaceId = IO80211SkywalkInterface::getInterfaceId(a1);
    v10[0] = &v12;
    v10[1] = 4;
    v8 = AppleBCMWLANCommander::sendVirtualIOVarSet(v6, InterfaceId, "awdl_config", v10, kNoRxExpected, v11, 0);
    if (v8)
    {
      if ((*(*a1 + 1088))(a1))
      {
        (*(*a1 + 1088))(a1);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANProximityInterface::setAWDL_CONFIG(a1, v5, a1 + 17, v8);
        }
      }
    }
  }

  return v8;
}

uint64_t non-virtual thunk toAppleBCMWLANProximityInterface::setAWDL_CONFIG(uint64_t a1, uint64_t a2)
{
  return AppleBCMWLANProximityInterface::setAWDL_CONFIG((a1 - 112), a2);
}

{
  return AppleBCMWLANProximityInterface::setAWDL_CONFIG((a1 - 128), a2);
}

uint64_t AppleBCMWLANProximityInterface::setAWDL_BSSID(uint64_t *a1, uint64_t a2)
{
  v34 = 0;
  v33 = 0;
  v4 = a1 & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000;
  if ((*(*a1 + 1088))(a1))
  {
    (*(*a1 + 1088))(a1);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANProximityInterface::setAWDL_BSSID(a1);
    }
  }

  if (*(a2 + 4) == v33 && *(a2 + 8) == v34)
  {
    ChipInterface = AppleBCMWLANProximityInterface::deleteChipInterface(a1);
    if (!ChipInterface)
    {
      if ((*(*a1 + 1088))(a1))
      {
        (*(*a1 + 1088))(a1);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANProximityInterface::setAWDL_BSSID(a1);
        }
      }

      return 0;
    }

    return ChipInterface;
  }

  v6 = a1[17];
  v7 = *(a2 + 4);
  *(v6 + 604) = *(a2 + 8);
  *(v6 + 600) = v7;
  ChipInterface = AppleBCMWLANProximityInterface::createChipInterface(a1);
  if (ChipInterface)
  {
    return ChipInterface;
  }

  ConfigManager = AppleBCMWLANCore::getConfigManager(*(a1[17] + 64));
  *(a1[17] + 555) = AppleBCMWLANConfigManager::getAWDLElectionMetric(ConfigManager);
  v10 = (*(*a1 + 1072))(a1);
  if ((*(*a1 + 1088))(a1))
  {
    (*(*a1 + 1088))(a1);
    if (CCLogStream::shouldLog())
    {
      v23 = (*(*a1 + 1088))(a1);
      CCLogStream::logAlert(v23, "[dk] %s@%d: bring up awdl if success! [%02X:%02X:%02X:%02X:%02X:%02X] election_metric=%ld\n", "setAWDL_BSSID", 3762, v10, BYTE1(v10), BYTE2(v10), BYTE3(v10), BYTE4(v10), BYTE5(v10), *(a1[17] + 555));
    }
  }

  v26 = -1431655766;
  v27 = -1431655766;
  v29 = -1;
  v28 = -1;
  v30 = 127;
  v11 = a1[17];
  v31 = *(v11 + 524);
  v32 = *(v11 + 525);
  if (IO80211SkywalkInterface::getInterfaceId(a1) == -1)
  {
    AppleBCMWLANProximityInterface::setAWDL_BSSID(a1, v4, &v24);
    v14 = v24;
  }

  else
  {
    v12 = *(a1[17] + 960);
    InterfaceId = IO80211SkywalkInterface::getInterfaceId(a1);
    v24 = &v28;
    v25 = 10;
    v14 = AppleBCMWLANCommander::runVirtualIOVarSet(v12, InterfaceId, "awdl_af_hdr", &v24, 0, 0);
    v15 = (*(*a1 + 1088))(a1);
    if (v14)
    {
      if (v15)
      {
        (*(*a1 + 1088))(a1);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANProximityInterface::setAWDL_BSSID(a1);
        }
      }
    }

    else
    {
      if (v15)
      {
        (*(*a1 + 1088))(a1);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANProximityInterface::setAWDL_BSSID(a1);
        }
      }

      v27 = 115;
      v16 = *(a1[17] + 960);
      v17 = IO80211SkywalkInterface::getInterfaceId(a1);
      v24 = &v27;
      v25 = 4;
      v14 = AppleBCMWLANCommander::runVirtualIOVarSet(v16, v17, "awdl_config", &v24, 0, 0);
      v18 = (*(*a1 + 1088))(a1);
      if (v14)
      {
        if (v18)
        {
          (*(*a1 + 1088))(a1);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANProximityInterface::setAWDL_BSSID(a1);
          }
        }
      }

      else
      {
        if (v18)
        {
          (*(*a1 + 1088))(a1);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANProximityInterface::setAWDL_BSSID(a1);
          }
        }

        v26 = -60;
        v19 = *(a1[17] + 960);
        v20 = IO80211SkywalkInterface::getInterfaceId(a1);
        v24 = &v26;
        v25 = 4;
        v14 = AppleBCMWLANCommander::runVirtualIOVarSet(v19, v20, "awdl_af_rssi", &v24, 0, 0);
        v21 = (*(*a1 + 1088))(a1);
        if (!v14)
        {
          if (v21)
          {
            (*(*a1 + 1088))(a1);
            if (CCLogStream::shouldLog())
            {
              AppleBCMWLANProximityInterface::setAWDL_BSSID(a1);
            }
          }

          if ((*(*a1 + 1088))(a1))
          {
            (*(*a1 + 1088))(a1);
            if (CCLogStream::shouldLog())
            {
              AppleBCMWLANProximityInterface::setAWDL_BSSID(a1);
            }
          }

          return 0;
        }

        if (v21)
        {
          (*(*a1 + 1088))(a1);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANProximityInterface::setAWDL_BSSID(a1);
          }
        }
      }
    }
  }

  if (AppleBCMWLANProximityInterface::deleteChipInterface(a1))
  {
    if ((*(*a1 + 1088))(a1))
    {
      (*(*a1 + 1088))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANProximityInterface::setAWDL_BSSID(a1);
      }
    }
  }

  return v14;
}

uint64_t AppleBCMWLANProximityInterface::deleteChipInterface(unint64_t this)
{
  v2 = *(this + 136);
  v3 = this & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000;
  if (*(v2 + 121) == 1)
  {
    if ((*(*this + 1088))(this))
    {
      (*(*this + 1088))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANProximityInterface::deleteChipInterface(this);
      }
    }

    v18 = 0;
    v17 = 0;
    AppleBCMWLANProximityInterface::setSYNC_ENABLED_internal(this, &v17);
    v2 = *(this + 136);
  }

  if (*(v2 + 120) != 1 || IO80211SkywalkInterface::getInterfaceId(this) == -1 || IO80211SkywalkInterface::getInterfaceId(this) == 255 || IO80211SkywalkInterface::getInterfaceId(this) >= 0xC)
  {
    if ((*(*this + 1088))(this))
    {
      (*(*this + 1088))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANProximityInterface::deleteChipInterface(this);
      }
    }

    return 0;
  }

  if (AppleBCMWLANCore::isHostAssignedInterfaceIndex(*(*(this + 136) + 64)))
  {
    v6 = *(*(this + 136) + 960);
    InterfaceId = IO80211SkywalkInterface::getInterfaceId(this);
    v8 = AppleBCMWLANCommander::runVirtualIOVarSet(v6, InterfaceId, "interface_remove", &kNoTxPayload, 0, 0);
    if (v8)
    {
      v4 = v8;
      if ((*(*this + 1088))(this))
      {
        (*(*this + 1088))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANProximityInterface::deleteChipInterface(this);
        }
      }

      return v4;
    }

LABEL_29:
    v4 = 0;
    *(*(this + 136) + 936) = 0;
    *(*(this + 136) + 120) = 0;
    return v4;
  }

  v19 = 0;
  v9 = *(this + 136);
  v10 = *(v9 + 600);
  HIDWORD(v17) = 0;
  v18 = v10;
  LOWORD(v19) = *(v9 + 604);
  LODWORD(v17) = *(v9 + 920);
  (*(*this + 1088))(this);
  IO80211Hexdump();
  v11 = *(*(this + 136) + 960);
  v12 = IO80211SkywalkInterface::getInterfaceId(this);
  v16[0] = &v17;
  v16[1] = 20;
  v13 = AppleBCMWLANCommander::runVirtualIOVarSet(v11, v12, "awdl_if", v16, 0, 0);
  if (!v13)
  {
    v14 = AppleBCMWLANProximityInterface::waitForDriverEvent(this, 1u);
    if (v14)
    {
      v15 = v14;
      if ((*(*this + 1088))(this))
      {
        (*(*this + 1088))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANProximityInterface::deleteChipInterface(this, v3, v15);
        }
      }
    }

    IO80211SkywalkInterface::setInterfaceId(this, 0xFFFFFFFF);
    goto LABEL_29;
  }

  v4 = v13;
  if ((*(*this + 1088))(this))
  {
    (*(*this + 1088))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANProximityInterface::deleteChipInterface(this);
    }
  }

  return v4;
}

uint64_t AppleBCMWLANProximityInterface::createChipInterface(unint64_t this)
{
  v2 = (this + 136);
  *(*(this + 136) + 1104) = 1;
  if (*(*(this + 136) + 120) == 1)
  {
    AppleBCMWLANProximityInterface::deleteChipInterface(this);
  }

  if ((*(*this + 1088))(this))
  {
    (*(*this + 1088))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANProximityInterface::createChipInterface(this);
    }
  }

  if (AppleBCMWLANCore::isHostAssignedInterfaceIndex(*(*v2 + 64)))
  {
    IO80211SkywalkInterface::setInterfaceId(this, 2u);
    AppleBCMWLANCore::setProxSkywalkInterface(*(*(this + 136) + 64), 2u);
    v24 = 131100;
    *&v25 = 0;
    *(&v25 + 1) = 0x200000000;
    v27[0] = 0;
    v27[1] = 0;
    v26 = 0;
    v28 = 0;
    v23 = 1835011;
    v3 = (*(*this + 1072))(this);
    WORD2(v25) = WORD2(v3);
    v4 = *(this + 136);
    *(&v25 + 6) = *(v4 + 600);
    WORD5(v25) = *(v4 + 604);
    HIDWORD(v24) = 26;
    LODWORD(v25) = v3;
    v22[0] = &v26;
    v22[1] = 0x1C001C001CLL;
    v5 = *(v4 + 960);
    v21[0] = &v23;
    v21[1] = 28;
    v6 = AppleBCMWLANCommander::runIOVarGet(v5, "interface_create", v21, v22, 0);
    if (v6)
    {
      v7 = v6;
      if ((*(*this + 1088))(this))
      {
        (*(*this + 1088))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANProximityInterface::createChipInterface(this);
        }
      }

      goto LABEL_21;
    }

    (*(**(*(this + 136) + 984) + 104))(*(*(this + 136) + 984), 2);
    if ((*(*this + 1088))(this))
    {
      (*(*this + 1088))(this);
      if (CCLogStream::shouldLog())
      {
        v20 = (*(*this + 1088))(this);
        CCLogStream::logAlert(v20, "[dk] %s@%d:%s: Return bssCfgIdx %d, ifIdx %d, ifName %s\n", "createChipInterface", 3902, "createChipInterface", BYTE2(v27[0]), BYTE3(v27[0]), v27 + 4);
      }
    }

    *(*v2 + 120) = 1;
LABEL_20:
    AppleBCMWLANProximityInterface::setBssRates(this);
    *(*(this + 136) + 924) = 1;
    AppleBCMWLANProximityInterface::resetInterface(this);
    v7 = 0;
    goto LABEL_21;
  }

  if (IO80211SkywalkInterface::getInterfaceId(this) != -1)
  {
    goto LABEL_20;
  }

  v8 = *(this + 136);
  HIDWORD(v24) = *(v8 + 600);
  LOWORD(v25) = *(v8 + 604);
  v9 = (*(*this + 1072))(this);
  *(&v25 + 2) = v9;
  WORD3(v25) = WORD2(v9);
  v23 = *(*(this + 136) + 920);
  LODWORD(v24) = 1;
  (*(*this + 1088))(this);
  IO80211Hexdump();
  v10 = *(*(this + 136) + 960);
  v26 = &v23;
  v27[0] = 20;
  v11 = AppleBCMWLANCommander::runIOVarSet(v10, "awdl_if", &v26, 0, 0);
  if (v11)
  {
    v7 = v11;
    if ((*(*this + 1088))(this))
    {
      (*(*this + 1088))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANProximityInterface::createChipInterface(this);
      }
    }

    goto LABEL_21;
  }

  v13 = *v2;
  if ((*(*v2 + 936) & 1) == 0)
  {
    v14 = AppleBCMWLANProximityInterface::waitForDriverEvent(this, 0);
    if (v14)
    {
      v7 = v14;
      if ((*(*this + 1088))(this))
      {
        (*(*this + 1088))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANProximityInterface::createChipInterface(this, this & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000, v7);
        }
      }

      FaultReporter = AppleBCMWLANCore::getFaultReporter(*(*v2 + 64));
      CCFaultReporter::reportFault(FaultReporter, 5u, "/Library/Caches/com.apple.xbs/Sources/AppleBCMWLANV3_driverkit/AppleBCMWLANProximityInterface.cpp", 0xF5Au, "createChipInterface", 0, -469793467, " AWDL if creation timedout error %x", v7);
      goto LABEL_21;
    }

    v13 = *v2;
  }

  *(v13 + 120) = 1;
  WORD2(v22[0]) = 0;
  LODWORD(v22[0]) = 0;
  v26 = v22;
  v27[0] = 0x600060006;
  v16 = *(*(this + 136) + 960);
  InterfaceId = IO80211SkywalkInterface::getInterfaceId(this);
  v7 = AppleBCMWLANCommander::runVirtualIOVarGet(v16, InterfaceId, "cur_etheraddr", &kNoTxPayload, &v26, 0);
  v18 = (*(*this + 1072))(this);
  LODWORD(v21[0]) = v18;
  WORD2(v21[0]) = WORD2(v18);
  if (!v7 && LODWORD(v22[0]) == LODWORD(v21[0]) && WORD2(v22[0]) == WORD2(v21[0]))
  {
    goto LABEL_20;
  }

  if ((*(*this + 1088))(this))
  {
    (*(*this + 1088))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANProximityInterface::createChipInterface(this);
    }
  }

LABEL_21:
  *(*v2 + 1104) = 0;
  return v7;
}

uint64_t non-virtual thunk toAppleBCMWLANProximityInterface::setAWDL_BSSID(uint64_t a1, uint64_t a2)
{
  return AppleBCMWLANProximityInterface::setAWDL_BSSID((a1 - 112), a2);
}

{
  return AppleBCMWLANProximityInterface::setAWDL_BSSID((a1 - 128), a2);
}

uint64_t AppleBCMWLANProximityInterface::setCOMPANION_SKYWALK_IF_CREATE(uint64_t *a1, uint64_t a2)
{
  v3 = *(a2 + 4);
  if (!v3)
  {
    v7 = a1[17];
    v8 = *(v7 + 112);
    if (!v8)
    {
      SkywalkInterface = 3758097088;
      if ((*(*a1 + 1088))(a1))
      {
        (*(*a1 + 1088))(a1);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANProximityInterface::setCOMPANION_SKYWALK_IF_CREATE(a1);
        }
      }

      return SkywalkInterface;
    }

    v9 = *(v7 + 64);
    InterfaceId = IO80211SkywalkInterface::getInterfaceId(v8);
    AppleBCMWLANCore::destroySkywalkInterface(v9, InterfaceId);
    return 0;
  }

  if (v3 != 1)
  {
    return 0;
  }

  v5 = a1 + 17;
  if (*(a1[17] + 112))
  {
    if ((*(*a1 + 1088))(a1))
    {
      (*(*a1 + 1088))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANProximityInterface::setCOMPANION_SKYWALK_IF_CREATE(a1, a1 & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000, (a1 + 17));
      }
    }

    v6 = (*(**(*v5 + 112) + 160))(*(*v5 + 112));
    strncpy((a2 + 8), v6, 0x10uLL);
    return 0;
  }

  v21 = 0;
  v22 = 0;
  v23 = 0;
  v13 = (*(*a1 + 1072))(a1);
  LODWORD(v23) = 2;
  LOBYTE(v21) = v13;
  v14.i64[0] = 0xFFFFFFFFFFFFLL;
  v14.i64[1] = 0xFFFFFFFFFFFFLL;
  v15 = vandq_s8(vdupq_n_s64(v13), v14);
  v16 = vshlq_u64(v15, xmmword_10033C2A0);
  *v15.i8 = vmovn_s64(vshlq_u64(v15, xmmword_10033C2B0));
  *v16.i8 = vmovn_s64(v16);
  v16.i16[1] = v16.i16[2];
  v16.i16[2] = v15.i16[0];
  v16.i16[3] = v15.i16[2];
  *(&v21 + 1) = vmovn_s16(v16).u32[0];
  BYTE5(v21) = BYTE5(v13);
  v22 = 9;
  v20 = "llw";
  SkywalkInterface = AppleBCMWLANCore::createSkywalkInterface(*(a1[17] + 64), (a1[17] + 112), &v20, a1);
  if (SkywalkInterface)
  {
    if ((*(*a1 + 1088))(a1))
    {
      (*(*a1 + 1088))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANProximityInterface::setCOMPANION_SKYWALK_IF_CREATE(a1);
      }
    }
  }

  else
  {
    v17 = *(a1[17] + 112);
    v18 = IO80211SkywalkInterface::getInterfaceId(a1);
    IO80211SkywalkInterface::setCompanionInterfaceId(v17, v18);
    v19 = (*(**(a1[17] + 112) + 160))(*(a1[17] + 112));
    strncpy((a2 + 8), v19, 0x10uLL);
  }

  return SkywalkInterface;
}

uint64_t non-virtual thunk toAppleBCMWLANProximityInterface::setCOMPANION_SKYWALK_IF_CREATE(uint64_t a1, uint64_t a2)
{
  return AppleBCMWLANProximityInterface::setCOMPANION_SKYWALK_IF_CREATE((a1 - 112), a2);
}

{
  return AppleBCMWLANProximityInterface::setCOMPANION_SKYWALK_IF_CREATE((a1 - 128), a2);
}

uint64_t AppleBCMWLANProximityInterface::getPEER_CACHE_MAXIMUM_SIZE(IO80211SkywalkInterface *a1, uint64_t a2)
{
  v12 = 0;
  if (IO80211SkywalkInterface::getInterfaceId(a1) < 0xCu)
  {
    v11[0] = &v12;
    v11[1] = 0x400040004;
    v5 = *(*(a1 + 17) + 960);
    InterfaceId = IO80211SkywalkInterface::getInterfaceId(a1);
    v10[0] = &v12;
    v10[1] = 4;
    v4 = AppleBCMWLANCommander::runVirtualIOVarGet(v5, InterfaceId, "awdl_maxpeers", v10, v11, 0);
    v7 = (*(*a1 + 1088))(a1);
    if (v4)
    {
      if (v7)
      {
        (*(*a1 + 1088))(a1);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANProximityInterface::getPEER_CACHE_MAXIMUM_SIZE(a1);
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
          AppleBCMWLANProximityInterface::getPEER_CACHE_MAXIMUM_SIZE(a1);
        }
      }

      v8 = *(*(a1 + 17) + 900);
      if (v8 >= v12)
      {
        v8 = v12;
      }

      *(a2 + 4) = v8;
    }
  }

  else
  {
    v4 = 3758097122;
    if ((*(*a1 + 1088))(a1))
    {
      (*(*a1 + 1088))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANProximityInterface::getPEER_CACHE_MAXIMUM_SIZE(a1);
      }
    }
  }

  return v4;
}

uint64_t non-virtual thunk toAppleBCMWLANProximityInterface::getPEER_CACHE_MAXIMUM_SIZE(uint64_t a1, uint64_t a2)
{
  return AppleBCMWLANProximityInterface::getPEER_CACHE_MAXIMUM_SIZE((a1 - 112), a2);
}

{
  return AppleBCMWLANProximityInterface::getPEER_CACHE_MAXIMUM_SIZE((a1 - 128), a2);
}

uint64_t AppleBCMWLANProximityInterface::setPEER_CACHE_CONTROL(uint64_t *a1, uint64_t a2)
{
  v4 = IOMallocZeroData();
  if (v4)
  {
    v5 = v4;
    v40 = 0;
    v41 = 0;
    v42 = 0;
    if (a2)
    {
      if ((*(*a1 + 1088))(a1))
      {
        (*(*a1 + 1088))(a1);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANProximityInterface::setPEER_CACHE_CONTROL(a1);
        }
      }

      v6 = *(a2 + 8);
      *(v5 + 6) = *(a2 + 12);
      *(v5 + 2) = v6;
      v7 = a1 + 17;
      if (AppleBCMWLANCore::forceDisableAwdlAmpdu(*(a1[17] + 64)))
      {
        v8 = 0;
      }

      else
      {
        v8 = *(a2 + 44) != 0;
      }

      *(v5 + 8) = v8;
      if (*(a2 + 60))
      {
        *(v5 + 8) = v8 | 4;
      }

      v10 = *(a2 + 4);
      switch(v10)
      {
        case 6:
          goto LABEL_17;
        case 2:
          *(v5 + 1) = 1;
          if ((*(*a1 + 1088))(a1))
          {
            (*(*a1 + 1088))(a1);
            if (CCLogStream::shouldLog())
            {
              AppleBCMWLANProximityInterface::setPEER_CACHE_CONTROL(a1);
            }
          }

          v13 = 9;
          goto LABEL_42;
        case 0:
LABEL_17:
          *(v5 + 1) = 0;
          if (*(a2 + 16) == 45 && *(a2 + 17) == 26)
          {
            if ((*(*a1 + 1088))(a1))
            {
              (*(*a1 + 1088))(a1);
              if (CCLogStream::shouldLog())
              {
                AppleBCMWLANProximityInterface::setPEER_CACHE_CONTROL(a1, a1 & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000, (v5 + 8));
              }
            }

            v11 = *(a2 + 16);
            *(v5 + 21) = *(a2 + 28);
            *(v5 + 9) = v11;
          }

          if (!AppleBCMWLANCore::isSupportedPhyMode11nOnly(*(*v7 + 64)) && *(a2 + 45) && *(a2 + 46) == 191 && *(a2 + 47) == 12)
          {
            if ((*(*a1 + 1088))(a1))
            {
              (*(*a1 + 1088))(a1);
              if (CCLogStream::shouldLog())
              {
                AppleBCMWLANProximityInterface::setPEER_CACHE_CONTROL(a1);
              }
            }

            v12 = *(a2 + 46);
            *(v5 + 43) = *(a2 + 52);
            *(v5 + 37) = v12;
            *__dst = 0;
            *__source = 0;
            IO80211CalculateMaxNSSAndVHTMCSForMCSMap(*(a2 + 52), __source, __dst);
            v13 = 51;
            if (*(a2 + 60) && *__source == 1)
            {
              *(v5 + 8) &= ~4u;
              if ((*(*a1 + 1088))(a1))
              {
                (*(*a1 + 1088))(a1);
                if (CCLogStream::shouldLog())
                {
                  AppleBCMWLANProximityInterface::setPEER_CACHE_CONTROL(a1);
                }
              }

              *(v5 + 51) = 19076863;
              *(v5 + 59) = 0;
              *(v5 + 60) = 0xC1F000D000E2004;
              *(v5 + 68) = 3072;
              *(v5 + 70) = 0;
              *(v5 + 71) = -65538;
              v13 = 75;
            }
          }

          else
          {
            v13 = 37;
          }

          (*(*a1 + 1088))(a1);
          IO80211HexdumpIf();
LABEL_42:
          if (!*(a2 + 4) && *(a2 + 70) == 3)
          {
            v14 = v5 + v13;
            *v14 = -35;
            *(v14 + 2) = 150083328;
            *(v14 + 6) = 18;
            v15 = *(a2 + 69);
            *(v14 + 7) = v15 - 1;
            *(v14 + 8) = *(a2 + 70) - 1;
            *(v14 + 9) = *(a2 + 72);
            *(v14 + 10) = *(a2 + 71);
            *(v14 + 11) = -1;
            v38 = v14;
            v16 = (v14 + 13);
            v39 = 2;
            v17 = *(a2 + 68);
            v44 = 0;
            *__source = 0;
            *__dst = 0u;
            v46 = 0u;
            v47 = 0u;
            v48 = 0u;
            v49 = 0u;
            v50 = 0u;
            if (v15)
            {
              v18 = 0;
              if ((v17 - 1) < 4)
              {
                v19 = v17 + 1;
              }

              else
              {
                v19 = 2;
              }

              v20 = (a2 + 84);
              while (1)
              {
                v39 = v19;
                if (*(v20 - 1))
                {
                  v21 = *v20;
                  if ((*v20 & 0x10) != 0)
                  {
                    if (v19 >= 4)
                    {
                      v19 = 4;
                    }

                    v22 = 3;
LABEL_62:
                    v23 = __rev16(AppleBCMWLANCore::getChanSpec(*(*v7 + 64), *(v20 - 1), v22, &v39));
                    *&v16[2 * v18] = v23;
                    snprintf(__source, 0xCuLL, "%0x,", v23);
                    if (strlcat(__dst, __source, 0x60uLL) > 0x5F)
                    {
                      break;
                    }

                    goto LABEL_63;
                  }

                  if ((v21 & 8) != 0)
                  {
                    v22 = 0;
                    goto LABEL_62;
                  }

                  if ((v21 & 0x2000) != 0)
                  {
                    v22 = 1;
                    goto LABEL_62;
                  }

                  if ((*(*a1 + 1088))(a1))
                  {
                    (*(*a1 + 1088))(a1);
                    if (CCLogStream::shouldLog())
                    {
                      AppleBCMWLANProximityInterface::setPEER_CACHE_CONTROL(a1);
                    }
                  }
                }

                else
                {
                  strcpy(__source, "0,");
                  strlcat(__dst, __source, 0x60uLL);
                }

LABEL_63:
                if (v18 <= 0x1E)
                {
                  ++v18;
                  v20 += 3;
                  if (v18 < *(a2 + 69))
                  {
                    continue;
                  }
                }

                break;
              }
            }

            if (*v16)
            {
              LOBYTE(v24) = 2 * *(a2 + 69);
            }

            else
            {
              v49 = 0u;
              v50 = 0u;
              v47 = 0u;
              v48 = 0u;
              *__dst = 0u;
              v46 = 0u;
              *(v38 + 8) = 0;
              LOBYTE(v24) = *(a2 + 69);
              if (v24)
              {
                v33 = 0;
                v34 = (a2 + 80);
                do
                {
                  v35 = *v34;
                  v34 += 3;
                  v16[v33] = v35;
                  snprintf(__source, 0xCuLL, "%u,", v35);
                  v36 = strlcat(__dst, __source, 0x60uLL);
                  v24 = *(a2 + 69);
                  if (v36 > 0x5F)
                  {
                    break;
                  }

                  if (v33 > 0x1E)
                  {
                    break;
                  }

                  ++v33;
                }

                while (v33 < v24);
              }
            }

            *(v38 + 1) = v24 + 11;
            v13 += (v24 + 13);
            if ((*(*a1 + 1088))(a1))
            {
              (*(*a1 + 1088))(a1);
              if (CCLogStream::shouldLog())
              {
                v37 = (*(*a1 + 1088))(a1);
                CCLogStream::logAlertIf(v37, 0x400uLL, "[dk] %s@%d:seqLen:%u end:%u dup:%u sc:%u fillChan:%u Channel Seq: %s \n", "setPEER_CACHE_CONTROL", 4364, *(v38 + 7), *(v38 + 8), *(v38 + 9), *(v38 + 10), *(v38 + 11), __dst);
              }
            }
          }

          v25 = IOMallocZeroData();
          if (v25)
          {
            v26 = v25;
            memcpy(v25, a2, 0x1D0uLL);
            v40 = a1;
            v41 = AppleBCMWLANProximityInterface::handleCacheControlAsyncCallBack;
            v42 = v26;
            v27 = *(a1[17] + 960);
            InterfaceId = IO80211SkywalkInterface::getInterfaceId(a1);
            if (v13)
            {
              v29 = v5;
            }

            else
            {
              v29 = 0;
            }

            *__dst = v29;
            *&__dst[8] = v13;
            v30 = AppleBCMWLANCommander::sendVirtualIOVarSet(v27, InterfaceId, "awdl_peer_op", __dst, kNoRxExpected, &v40, 0);
            v31 = (*(*a1 + 1088))(a1);
            if (v30)
            {
              if (v31)
              {
                (*(*a1 + 1088))(a1);
                if (CCLogStream::shouldLog())
                {
                  AppleBCMWLANProximityInterface::setPEER_CACHE_CONTROL(a1);
                }
              }

              IOFreeData();
              v9 = 6;
            }

            else
            {
              if (v31)
              {
                (*(*a1 + 1088))(a1);
                if (CCLogStream::shouldLog())
                {
                  AppleBCMWLANProximityInterface::setPEER_CACHE_CONTROL(a1);
                }
              }

              v9 = 0;
              ++*(*v7 + 528);
            }
          }

          else
          {
            v9 = 12;
          }

          goto LABEL_88;
      }

      if ((*(*a1 + 1088))(a1))
      {
        (*(*a1 + 1088))(a1);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANProximityInterface::setPEER_CACHE_CONTROL(a1);
        }
      }
    }

    v9 = 22;
LABEL_88:
    IOFreeData();
    return v9;
  }

  if (a2)
  {
    return 12;
  }

  else
  {
    return 22;
  }
}

uint64_t non-virtual thunk toAppleBCMWLANProximityInterface::setPEER_CACHE_CONTROL(uint64_t a1, uint64_t a2)
{
  return AppleBCMWLANProximityInterface::setPEER_CACHE_CONTROL((a1 - 112), a2);
}

{
  return AppleBCMWLANProximityInterface::setPEER_CACHE_CONTROL((a1 - 128), a2);
}

uint64_t AppleBCMWLANProximityInterface::getAWDL_SYNCHRONIZATION_CHANNEL_SEQUENCE(IO80211SkywalkInterface *a1, _BYTE *a2)
{
  if (!*(*(a1 + 17) + 664))
  {
    return 3758097084;
  }

  v4 = IOMallocZeroData();
  if (v4)
  {
    v5 = v4;
    if (a2)
    {
      v21[0] = v4;
      v21[1] = 0x8000080080;
      v6 = *(*(a1 + 17) + 960);
      InterfaceId = IO80211SkywalkInterface::getInterfaceId(a1);
      if (AppleBCMWLANCommander::runVirtualIOVarGet(v6, InterfaceId, "awdl_chan_seq", &kNoTxPayload, v21, 0))
      {
        if ((*(*a1 + 1088))(a1))
        {
          (*(*a1 + 1088))(a1);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANProximityInterface::getAWDL_SYNCHRONIZATION_CHANNEL_SEQUENCE(a1);
          }
        }

        v8 = 6;
      }

      else
      {
        v9 = *v5;
        a2[5] = v9 + 1;
        v10 = v5[1];
        a2[6] = v5[1] != 0;
        a2[7] = v5[3];
        a2[8] = v5[2];
        a2[9] = v5[4];
        if (v10)
        {
          v11 = a2 + 12;
          v12 = 3;
          do
          {
            if (*&v5[2 * v12])
            {
              v13 = __rev16(*&v5[2 * v12]);
              ChanSpecHandler = AppleBCMWLANCore::getChanSpecHandler(*(*(a1 + 17) + 64));
              AppleBCMWLANChanSpec::getAppleChannelSpec(ChanSpecHandler, v13);
              ChanSpecConvToApple80211Channel();
              LOBYTE(v9) = *v5;
            }

            v15 = v12 - 3;
            ++v12;
            v11 += 12;
          }

          while (v15 < v9);
        }

        else
        {
          v16 = v5 + 6;
          v17 = v9 + 1;
          v18 = a2 + 16;
          do
          {
            v19 = *v16++;
            *v18 = v19;
            v18 += 3;
            --v17;
          }

          while (v17);
        }

        v8 = 0;
      }
    }

    else
    {
      v8 = 22;
    }

    IOFreeData();
  }

  else if (a2)
  {
    return 12;
  }

  else
  {
    return 22;
  }

  return v8;
}

uint64_t non-virtual thunk toAppleBCMWLANProximityInterface::getAWDL_SYNCHRONIZATION_CHANNEL_SEQUENCE(uint64_t a1, _BYTE *a2)
{
  return AppleBCMWLANProximityInterface::getAWDL_SYNCHRONIZATION_CHANNEL_SEQUENCE((a1 - 112), a2);
}

{
  return AppleBCMWLANProximityInterface::getAWDL_SYNCHRONIZATION_CHANNEL_SEQUENCE((a1 - 128), a2);
}

uint64_t AppleBCMWLANProximityInterface::setAWDL_SYNCHRONIZATION_CHANNEL_SEQUENCE(uint64_t *a1, unsigned __int8 *a2)
{
  v18 = 0;
  if (a2[5] - 33 >= 0xFFFFFFE0 && a2[6] < 2u)
  {
    v6 = IOMallocZeroData();
    if (!v6)
    {
      return 12;
    }

    v7 = v6;
    if ((a2[4] & 0x30) != 0)
    {
      v8 = AppleBCMWLANProximityInterface::buildChanSequenceCommand(a1, a2, 0);
      v9 = (*(*a1 + 1088))(a1);
      if (v8)
      {
        if (v9)
        {
          (*(*a1 + 1088))(a1);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANProximityInterface::setAWDL_SYNCHRONIZATION_CHANNEL_SEQUENCE(a1, a1 & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000, a2 + 4, v8);
          }
        }

LABEL_29:
        v4 = 6;
LABEL_31:
        IOFreeData();
        return v4;
      }

      if (v9)
      {
        (*(*a1 + 1088))(a1);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANProximityInterface::setAWDL_SYNCHRONIZATION_CHANNEL_SEQUENCE(a1, a1 & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000, a2 + 4);
        }
      }
    }

    else
    {
      v10 = AppleBCMWLANProximityInterface::buildAWDLChanSequence(a1, a2, v6, &v18);
      v11 = (*(*a1 + 1088))(a1);
      if (v10)
      {
        if (v11)
        {
          (*(*a1 + 1088))(a1);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANProximityInterface::setAWDL_SYNCHRONIZATION_CHANNEL_SEQUENCE(a1);
          }
        }

        goto LABEL_29;
      }

      v12 = v18;
      IO80211HexdumpIf();
      v17[0] = a1;
      v17[1] = AppleBCMWLANProximityInterface::handleProxIovarAsyncCallBack;
      v17[2] = 0;
      v13 = *(a1[17] + 960);
      InterfaceId = IO80211SkywalkInterface::getInterfaceId(a1);
      if (v12)
      {
        v15 = v7;
      }

      else
      {
        v15 = 0;
      }

      v16[0] = v15;
      v16[1] = v12;
      if (AppleBCMWLANCommander::sendVirtualIOVarSet(v13, InterfaceId, "awdl_chan_seq", v16, kNoRxExpected, v17, 0))
      {
        if ((*(*a1 + 1088))(a1))
        {
          (*(*a1 + 1088))(a1);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANProximityInterface::setAWDL_SYNCHRONIZATION_CHANNEL_SEQUENCE(a1);
          }
        }

        goto LABEL_29;
      }
    }

    memcpy((a1[17] + 124), a2, 0x190uLL);
    v4 = 0;
    goto LABEL_31;
  }

  if ((*(*a1 + 1088))(a1))
  {
    (*(*a1 + 1088))(a1);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANProximityInterface::setAWDL_SYNCHRONIZATION_CHANNEL_SEQUENCE(a1);
    }
  }

  return 22;
}

uint64_t AppleBCMWLANProximityInterface::buildChanSequenceCommand(uint64_t *a1, _BYTE *a2, uint64_t a3)
{
  P2PNANMgmtDataInterface = AppleBCMWLANCore::getP2PNANMgmtDataInterface(*(a1[17] + 64));
  v43 = 0;
  v42 = 0;
  v41 = 0;
  v7 = IOMallocZeroData();
  if (v7)
  {
    v8 = v7;
    *v7 = 16875520;
    *(v7 + 4) = 1;
    *(v7 + 8) = 1;
    v40 = 8;
    v9 = v7 + 16;
    if (((v7 + 16) & 3) != 0)
    {
      v9 += 4 - ((v7 + 16) & 3u);
      v42 = 4 - ((v7 + 16) & 3);
    }

    if (a2)
    {
      v43 = 1;
      *v9 = 1;
      *(v9 + 4) = 0;
      v40 = 16;
      v10 = v9 + 8;
      v11 = AppleBCMWLANProximityInterface::buildAWDLChanSequence(a1, a2, v9 + 8, &v41);
      if (v11)
      {
        v12 = v11;
        if ((*(*a1 + 1088))(a1))
        {
          (*(*a1 + 1088))(a1);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANProximityInterface::buildChanSequenceCommand(a1);
          }
        }

        goto LABEL_65;
      }

      v26 = v41;
      *(v9 + 2) = v41 + 4;
      v9 += v26 + 8;
      if ((v9 & 3) != 0)
      {
        v27 = 4 - (v9 & 3);
        v9 += v27;
        v42 += v27;
      }

      v13 = v40 + v26;
      v40 += v26;
      if (!a3)
      {
LABEL_35:
        if (!v43)
        {
LABEL_57:
          v12 = 0;
          goto LABEL_65;
        }

        if (!a2)
        {
          if ((*(*a1 + 1088))(a1))
          {
            (*(*a1 + 1088))(a1);
            if (CCLogStream::shouldLog())
            {
              AppleBCMWLANProximityInterface::buildChanSequenceCommand(a1);
            }
          }

          goto LABEL_64;
        }

        AppleBCMWLANProximityInterface::fillSliceDataForStandAloneAWDL(a1, a2, v10, v9, &v43, &v40, &v42);
        if ((a2[4] & 0x10) != 0)
        {
          v28 = 4;
          v22 = a1;
        }

        else
        {
          v22 = a1;
          if ((a2[4] & 0x20) == 0)
          {
LABEL_45:
            v29 = v43;
            v30 = v42;
            v31 = v40 + v42;
            *(v8 + 6) = v40 + v42;
            *(v8 + 13) = v29;
            if (v31 >= 0x7F5u && (*(*v22 + 1088))(v22) && ((*(*v22 + 1088))(v22), CCLogStream::shouldLog()))
            {
              AppleBCMWLANProximityInterface::buildChanSequenceCommand(v22);
              if (!a2)
              {
LABEL_50:
                v32 = (v30 + *(v8 + 6) + 12);
                if (v30 + *(v8 + 6) == 0xFFF4)
                {
                  v33 = 0;
                }

                else
                {
                  v33 = v8;
                }

                v39[0] = v33;
                v39[1] = v32;
                v38[0] = v22;
                v38[1] = AppleBCMWLANProximityInterface::handleProxSlotBSSCompletion;
                v38[2] = 0;
                v34 = *(v22[17] + 960);
                InterfaceId = IO80211SkywalkInterface::getInterfaceId(v22);
                if (AppleBCMWLANCommander::sendVirtualIOVarSet(v34, InterfaceId, "slot_bss", v39, kNoRxExpected, v38, 0))
                {
                  if ((*(*v22 + 1088))(v22))
                  {
                    (*(*v22 + 1088))(v22);
                    if (CCLogStream::shouldLog())
                    {
                      AppleBCMWLANProximityInterface::buildChanSequenceCommand(v22);
                    }
                  }

LABEL_64:
                  v12 = 6;
                  goto LABEL_65;
                }

                goto LABEL_57;
              }
            }

            else if (!a2)
            {
              goto LABEL_50;
            }

            memcpy((v22[17] + 124), a2, 0x190uLL);
            goto LABEL_50;
          }

          v28 = 9;
        }

LABEL_44:
        *(v8 + 12) = v28;
        goto LABEL_45;
      }
    }

    else
    {
      v10 = 0;
      v13 = 8;
      if (!a3)
      {
        goto LABEL_35;
      }
    }

    v37 = a2;
    v14 = v43;
    v15 = v42;
    if (*(a3 + 6))
    {
      v16 = 0;
      do
      {
        *v9 = 3;
        *(v9 + 4) = 0;
        v17 = (*(*P2PNANMgmtDataInterface + 2424))(P2PNANMgmtDataInterface, a3, v9 + 8, v16);
        if (v17)
        {
          *(v9 + 2) = v17 + 4;
          v9 += 8 + v17;
          ++v14;
          v13 += v17 + 8;
        }

        v18 = 4 - (v9 & 3);
        if ((v9 & 3) != 0)
        {
          v19 = 4 - (v9 & 3);
        }

        else
        {
          v19 = 0;
        }

        v15 += v19;
        if ((v9 & 3) == 0)
        {
          v18 = 0;
        }

        v9 += v18;
        v16 = (v16 + 1);
      }

      while (v16 < *(a3 + 6));
      if (v14)
      {
        if (*(a3 + 6))
        {
          v20 = 0;
          v21 = a3 + 1284 * *(a3 + 6) - 1276;
          v22 = a1;
          while (1)
          {
            *v9 = 2;
            *(v9 + 4) = 0;
            *(v9 + 8) = v20;
            if ((AppleBCMWLANProximityInterface::convertCommittedAvailabilityToChanSpecSequence(a1, v21, (v9 + 12), (v9 + 9)) & 1) == 0)
            {
              break;
            }

            v23 = 4 - ((v9 + 140) & 3u);
            v24 = *(v9 + 9);
            v13 += 2 * v24 + 12;
            ++v14;
            *(v9 + 2) = 2 * v24 + 8;
            if (((v9 + 140) & 3) != 0)
            {
              v25 = 4 - ((v9 + 140) & 3);
            }

            else
            {
              v25 = 0;
            }

            v15 += v25;
            if (((v9 + 140) & 3) == 0)
            {
              v23 = 0;
            }

            v9 += 140 + v23;
            ++v20;
            v21 -= 1284;
            if (v20 >= *(a3 + 6))
            {
              goto LABEL_43;
            }
          }

          if (!(*(*a1 + 1088))(a1))
          {
            v12 = 6;
            goto LABEL_65;
          }

          (*(*a1 + 1088))(a1);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANProximityInterface::buildChanSequenceCommand(a1);
          }

          goto LABEL_64;
        }

        v22 = a1;
        goto LABEL_43;
      }
    }

    else
    {
      v22 = a1;
      if (v43)
      {
LABEL_43:
        v40 = v13;
        v43 = v14;
        v28 = 4;
        v42 = v15;
        a2 = v37;
        goto LABEL_44;
      }
    }

    v12 = 0;
LABEL_65:
    IOFreeData();
    return v12;
  }

  return 12;
}

uint64_t AppleBCMWLANProximityInterface::buildAWDLChanSequence(uint64_t *a1, _BYTE *a2, uint64_t a3, _WORD *a4)
{
  *a3 = a2[5] - 1;
  *(a3 + 3) = a2[7];
  *(a3 + 2) = a2[8];
  *(a3 + 4) = -1;
  BssManager = AppleBCMWLANCore::getBssManager(*(a1[17] + 64));
  CurrentBSS = AppleBCMWLANBssManager::getCurrentBSS(BssManager);
  v10 = CurrentBSS;
  v68 = 0;
  if (CurrentBSS)
  {
    v11 = (*(*CurrentBSS + 256))(CurrentBSS);
    v64 = (*(*v10 + 264))(v10) >> 14;
    isDFSChannel = AppleBCMWLANCore::isDFSChannel(*(a1[17] + 64), v11, v64);
    (*(**(a1[17] + 64) + 1008))();
    LODWORD(v10) = WORD2(v68) == 23128;
  }

  else
  {
    v11 = 0;
    isDFSChannel = 0;
    v64 = 0;
  }

  v13 = a1 & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000;
  if (a2[6])
  {
    *(a3 + 1) = AppleBCMWLANCore::getFWAPIVer(*(a1[17] + 64));
    SupportedMaxBW = AppleBCMWLANCore::getSupportedMaxBW(*(a1[17] + 64));
    v15 = a2[4] & 0xF;
    if ((v15 - 1) < 3)
    {
      v16 = (v15 + 1);
    }

    else
    {
      v16 = SupportedMaxBW;
    }

    v17 = a2[9];
    v66 = v16;
    if (v17 == 255)
    {
      v19 = 1;
    }

    else
    {
      v67 = v16;
      ChanSpec = AppleBCMWLANCore::getChanSpec(*(a1[17] + 64), v17, &v67);
      *(a3 + 4) = __rev16(ChanSpec);
      if (!ChanSpec)
      {
        LOBYTE(v54) = a2[9];
LABEL_99:
        if ((*(*a1 + 1088))(a1))
        {
          (*(*a1 + 1088))(a1);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANProximityInterface::buildAWDLChanSequence(a1, v13, v54);
          }
        }

        return 6;
      }

      if (v67 <= 1)
      {
        v19 = 1;
      }

      else
      {
        v19 = v67;
      }

      LODWORD(v16) = v66;
    }

    LOWORD(v21) = a2[5];
    if (a2[5])
    {
      v60 = a4;
      v26 = 0;
      v65 = a3 + 6;
      if (v16 >= 4)
      {
        v27 = 4;
      }

      else
      {
        v27 = v16;
      }

      v28 = "-";
      v62 = v27;
      v63 = isDFSChannel | v10;
      v29 = "DFS";
      if (!isDFSChannel)
      {
        v29 = "-";
      }

      if (v10)
      {
        v28 = "XZ";
      }

      v58 = v28;
      v59 = v29;
      v30 = (a2 + 16);
      while (1)
      {
        v31 = *v30;
        if (*v30)
        {
          break;
        }

LABEL_79:
        ++v26;
        v21 = a2[5];
        v30 += 3;
        if (v26 >= v21)
        {
          a4 = v60;
          goto LABEL_84;
        }
      }

      v67 = v16;
      v32 = v30[1];
      if ((v32 & 0x10) != 0)
      {
        v67 = v62;
        v33 = 3;
        if (!v11)
        {
          goto LABEL_65;
        }
      }

      else if ((v32 & 8) != 0)
      {
        v33 = 0;
        if (!v11)
        {
          goto LABEL_65;
        }
      }

      else
      {
        if ((v32 & 0x2000) == 0)
        {
          if ((*(*a1 + 1088))(a1))
          {
            (*(*a1 + 1088))(a1);
            if (CCLogStream::shouldLog())
            {
              AppleBCMWLANProximityInterface::buildAWDLChanSequence(a1);
            }
          }

LABEL_78:
          LODWORD(v16) = v66;
          goto LABEL_79;
        }

        v33 = 1;
        if (!v11)
        {
          goto LABEL_65;
        }
      }

      v35 = v31 == v11 && v64 == v33;
      if ((v35 & v63) == 1)
      {
        v36 = AppleBCMWLANCore::getBssManager(*(a1[17] + 64));
        v37 = *AppleBCMWLANBssManager::getCurrentBSS(v36);
        v38 = (*(v37 + 264))();
        v39 = v38;
        v40 = v38 >> 14;
        v41 = (v38 >> 11) & 7;
        if (v40 == 3 && v41 >= 5)
        {
          v67 = 4;
          *(v65 + 2 * v26) = __rev16(AppleBCMWLANCore::getChanSpec(*(a1[17] + 64), v11, 3, &v67));
          if ((*(*a1 + 1088))(a1))
          {
            (*(*a1 + 1088))(a1);
            if (CCLogStream::shouldLog())
            {
              v48 = (*(*a1 + 1088))(a1);
              v57 = *(v65 + 2 * v26);
              CCLogStream::logAlert(v48, "[dk] %s@%d: for %s||%s 5G Channel %u (infra: %d) try to use higher bandwidth (%d) than 80MHz result chanSpec 0x%X\n", "buildAWDLChanSequence");
            }
          }
        }

        else
        {
          v67 = (v38 >> 11) & 7;
          v61 = AppleBCMWLANCore::getChanSpec(*(a1[17] + 64), v11, v40, &v67);
          if (v67 != v41)
          {
            if ((*(*a1 + 1088))(a1))
            {
              (*(*a1 + 1088))(a1);
              if (CCLogStream::shouldLog())
              {
                v50 = (*(*a1 + 1088))(a1);
                CCLogStream::logAlert(v50, "[dk] %s@%d: requested bandwidth %d and actually bandwidth %d for channel %d\n", "buildAWDLChanSequence", 5382, v41, v67, v11);
              }
            }
          }

          *(v65 + 2 * v26) = __rev16(v61);
          if ((*(*a1 + 1088))(a1))
          {
            (*(*a1 + 1088))(a1);
            if (CCLogStream::shouldLog())
            {
              v49 = (*(*a1 + 1088))(a1);
              CCLogStream::logAlert(v49, "[dk] %s@%d: applying channel spec for %s||%s channel (%d) infraChan=%d, chanSpec=%d, bcmSpec=0x%x bw=%d\n", "buildAWDLChanSequence", 5385, v59, v58, v26, v11, v39, v61, v67);
            }
          }

          if (v40 == 3)
          {
            ChanSpecHandler = AppleBCMWLANCore::getChanSpecHandler(*(a1[17] + 64));
            if ((AppleBCMWLANChanSpec::isValid5GChanSpec(ChanSpecHandler, v61) & 1) == 0)
            {
              if ((*(*a1 + 1088))(a1))
              {
                (*(*a1 + 1088))(a1);
                if (CCLogStream::shouldLog())
                {
                  v44 = (*(*a1 + 1088))(a1);
                  CCLogStream::logAlert(v44, "[dk] %s@%d: invalid 5G bcm channel spec for %s||%s channel (%d) infraChan=%d, chanSpec=%d, bcmSpec=0x%x\n", "buildAWDLChanSequence");
                }
              }
            }
          }
        }

LABEL_76:
        if (v67 > v19)
        {
          v19 = v67;
        }

        goto LABEL_78;
      }

LABEL_65:
      if (AppleBCMWLANCore::isDFSChannel(*(a1[17] + 64), v31, v33))
      {
        v45 = v30[1];
        if ((v45 & 0x4C06) != 0 && (v45 & 0x4C00) == 0)
        {
          if ((v45 & 4) != 0)
          {
            v46 = 3;
          }

          else
          {
            v46 = 2;
          }

          v67 = v46;
        }

        if ((*(*a1 + 1088))(a1))
        {
          (*(*a1 + 1088))(a1);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANProximityInterface::buildAWDLChanSequence(a1);
          }
        }
      }

      v47 = AppleBCMWLANCore::getChanSpec(*(a1[17] + 64), *v30, v33, &v67);
      *(v65 + 2 * v26) = __rev16(v47);
      if (!v47)
      {
        v54 = *v30;
        v13 = a1 & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000;
        goto LABEL_99;
      }

      goto LABEL_76;
    }

LABEL_84:
    LOWORD(v21) = 2 * v21;
    v25 = v19;
  }

  else
  {
    *(a3 + 1) = 0;
    v20 = a2[9];
    if (v20 != 255)
    {
      *(a3 + 4) = v20;
    }

    LOWORD(v21) = a2[5];
    if (a2[5])
    {
      v22 = 0;
      v23 = (a2 + 16);
      do
      {
        v24 = *v23;
        v23 += 3;
        *(a3 + 6 + v22++) = v24;
        v21 = a2[5];
      }

      while (v22 < v21);
    }

    v25 = 2;
    v66 = 2;
  }

  *a4 = v21 + 6;
  if ((*(*a1 + 1088))(a1))
  {
    (*(*a1 + 1088))(a1);
    if (CCLogStream::shouldLog())
    {
      v55 = (*(*a1 + 1088))(a1);
      v56 = BW_STRING[v66];
      CCLogStream::logAlertIf(v55, 0x400uLL, "[dk] %s@%d: set channel sequence len %u step %u enc %u flags %u max_bw_req %s, bw_used %s\n", "buildAWDLChanSequence", 5438, a2[5], a2[7], a2[6], a2[4], v56, BW_STRING[v25]);
    }
  }

  v52 = *(a3 + 6);
  v51 = (a3 + 6);
  if (v52)
  {
    return 0;
  }

  if (a2[6])
  {
    v67 = 2;
    *v51 = __rev16(AppleBCMWLANCore::getChanSpec(*(a1[17] + 64), 6, 0, &v67));
    if ((*(*a1 + 1088))(a1))
    {
      (*(*a1 + 1088))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANProximityInterface::buildAWDLChanSequence(a1);
      }
    }

    return 0;
  }

  *v51 = 6;
  result = (*(*a1 + 1088))(a1);
  if (result)
  {
    (*(*a1 + 1088))(a1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      AppleBCMWLANProximityInterface::buildAWDLChanSequence(a1);
      return 0;
    }
  }

  return result;
}

uint64_t non-virtual thunk toAppleBCMWLANProximityInterface::setAWDL_SYNCHRONIZATION_CHANNEL_SEQUENCE(uint64_t a1, unsigned __int8 *a2)
{
  return AppleBCMWLANProximityInterface::setAWDL_SYNCHRONIZATION_CHANNEL_SEQUENCE((a1 - 112), a2);
}

{
  return AppleBCMWLANProximityInterface::setAWDL_SYNCHRONIZATION_CHANNEL_SEQUENCE((a1 - 128), a2);
}

uint64_t AppleBCMWLANProximityInterface::setAWDL_OOB_REQUEST(uint64_t *a1, uint64_t a2)
{
  if (!*(a1[17] + 664))
  {
    return 3758097084;
  }

  *&v13[7] = 0;
  v12 = 0;
  v11 = 0;
  *v13 = 0;
  v4 = *(a2 + 40);
  v9 = *(a2 + 4);
  v10 = *(a2 + 8);
  v7 = *(a2 + 22);
  v8 = *(a2 + 26);
  *&v13[8] = v4;
  LODWORD(v12) = *(a2 + 20);
  if ((*(*a1 + 1088))(a1))
  {
    (*(*a1 + 1088))(a1);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANProximityInterface::setAWDL_OOB_REQUEST(a1);
    }
  }

  v14.iov_base = &v7;
  v14.iov_len = 38;
  v5 = *(a2 + 40);
  v15 = *(a2 + 48);
  v16 = v5;
  return AppleBCMWLANProximityInterface::sendUnicastAFIOVar(a1, &v14, 2u);
}

uint64_t non-virtual thunk toAppleBCMWLANProximityInterface::setAWDL_OOB_REQUEST(uint64_t a1, uint64_t a2)
{
  return AppleBCMWLANProximityInterface::setAWDL_OOB_REQUEST((a1 - 112), a2);
}

{
  return AppleBCMWLANProximityInterface::setAWDL_OOB_REQUEST((a1 - 128), a2);
}

uint64_t AppleBCMWLANProximityInterface::setLLW_PARAMSCallback(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = result;
    if (*(a2 + 8))
    {
      v5 = *(a2 + 8);
    }

    else
    {
      v5 = "(null)";
    }

    if ((*(*result + 1088))(result))
    {
      (*(*v4 + 1088))(v4);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANProximityInterface::setLLW_PARAMSCallback(v4, v4 & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000, a3, v5);
      }
    }

    FaultReporter = AppleBCMWLANCore::getFaultReporter(*(*(v4 + 136) + 64));
    return CCFaultReporter::reportFault(FaultReporter, 5u, "/Library/Caches/com.apple.xbs/Sources/AppleBCMWLANV3_driverkit/AppleBCMWLANProximityInterface.cpp", 0x11DAu, "setLLW_PARAMSCallback", 0, -469793487, " %s iovar retval %x", v5, a3);
  }

  return result;
}

uint64_t AppleBCMWLANProximityInterface::setLLW_PARAMS(IO80211SkywalkInterface *a1, uint64_t a2)
{
  v53 = &_mh_execute_header;
  v54 = 2;
  v52 = 0;
  memset(v50, 170, sizeof(v50));
  v4 = IOMallocZeroData();
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0;
  }

  if (v4)
  {
    v7 = 1024;
  }

  else
  {
    v7 = 0;
  }

  if (v4)
  {
    v8 = v4 < 0xFFFFFFFFFFFFFC01;
  }

  else
  {
    v8 = 0;
  }

  if (v4)
  {
    v9 = v4 + 1023;
  }

  else
  {
    v9 = 0;
  }

  Bus = AppleBCMWLANCore::getBus(*(*(a1 + 17) + 64));
  if (((*(*Bus + 800))(Bus) & 1) == 0)
  {
    AppleBCMWLANProximityInterface::setLLW_PARAMS();
    goto LABEL_105;
  }

  if (!a2)
  {
    AppleBCMWLANProximityInterface::setLLW_PARAMS();
    goto LABEL_105;
  }

  if (!v5)
  {
    AppleBCMWLANProximityInterface::setLLW_PARAMS();
    return v51;
  }

  v11 = 0;
  v12 = *(a2 + 11) == 0;
  v13 = &v53;
  if (!*(a2 + 11))
  {
    v13 = &v52;
  }

  *v5 = 0x8000;
  if (v12)
  {
    v14 = 1;
  }

  else
  {
    v14 = 3;
  }

  *(v5 + 2) = v14;
  *(v5 + 3) = 1;
  v15 = 4;
  while (1)
  {
    if (!v8)
    {
      LODWORD(v25) = 4;
      goto LABEL_79;
    }

    v16 = v5 + v15;
    v17 = v16 + 7 >= v6 && v16 + 7 <= v9;
    v18 = v17 && v16 < 0xFFFFFFFFFFFFFFF9;
    v19 = v18 && v6 <= v16;
    if (!v19 || v9 < v16)
    {
      break;
    }

    v21 = *(v13 + v11);
    *v16 = v21;
    *(v16 + 4) = 1;
    v22 = v15 + 8;
    v23 = (v5 + v22);
    v24 = v5 + v22 + 3;
    if (v24 < v6 || v24 > v9 || v5 + v22 >= 0xFFFFFFFFFFFFFFFDLL || v6 > v23 || v9 < v23)
    {
      if ((*(*a1 + 1088))(a1))
      {
        (*(*a1 + 1088))(a1);
        if (CCLogStream::shouldLog())
        {
          v48 = (*(*a1 + 1088))(a1);
          CCLogStream::logAlert(v48, "[dk] %s@%d: Range check failed, count[%u] length[%u] chkSize[%lu], getSize[%lu]\n", "setLLW_PARAMS", 4638, *(v5 + 2), v22, 4, v7);
        }
      }

      LOWORD(v25) = v22;
      goto LABEL_71;
    }

    *v23 = 1;
    v25 = v15 + 12;
    v26 = (v5 + v25);
    v27 = v5 + v25 + 1;
    if (v27 < v6 || v27 > v9 || v5 + v25 == -1 || v6 > v26 || v9 < v26)
    {
      if ((*(*a1 + 1088))(a1))
      {
        (*(*a1 + 1088))(a1);
        if (CCLogStream::shouldLog())
        {
          v44 = (*(*a1 + 1088))(a1);
          CCLogStream::logAlert(v44, "[dk] %s@%d: Range check failed, count[%u] length[%u] chkSize[%lu], getSize[%lu]\n", "setLLW_PARAMS", 4650, *(v5 + 2), v25, 2, v7);
        }
      }

      goto LABEL_71;
    }

    *v26 = v21;
    if (v21 == 2)
    {
      v26[1] = 12;
      v25 = v15 + 16;
      v34 = v5 + v25;
      v35 = v5 + v25 + 11;
      if (v35 < v6 || v35 > v9 || v5 + v25 >= 0xFFFFFFFFFFFFFFF5 || v6 > v34 || v9 < v34)
      {
        if ((*(*a1 + 1088))(a1))
        {
          (*(*a1 + 1088))(a1);
          if (CCLogStream::shouldLog())
          {
            v46 = (*(*a1 + 1088))(a1);
            CCLogStream::logAlert(v46, "[dk] %s@%d: Range check failed, count[%u] length[%u] chkSize[%lu], getSize[%lu]\n", "setLLW_PARAMS", 4701, *(v5 + 2), v25, 12, v7);
          }
        }

        goto LABEL_71;
      }

      v36 = *(a2 + 4);
      *(v34 + 4) = *(a2 + 8);
      *v34 = v36;
      *(v34 + 8) = *(a2 + 10);
      LOWORD(v36) = *(v34 + 6) | *(a2 + 24) & 1;
      *(v34 + 6) = v36;
      LOWORD(v36) = v36 | *(a2 + 24) & 2;
      *(v34 + 6) = v36;
      LOWORD(v36) = v36 | *(a2 + 24) & 4;
      *(v34 + 6) = v36;
      *(v34 + 6) = v36 | *(a2 + 24) & 8;
      LODWORD(v25) = v15 + 28;
    }

    else if (v21 == 1)
    {
      v26[1] = 20;
      v25 = v15 + 16;
      v31 = v5 + v25;
      v32 = v5 + v25 + 19;
      if (v32 < v6 || v32 > v9 || v5 + v25 >= 0xFFFFFFFFFFFFFFEDLL || v6 > v31 || v9 < v31)
      {
        if ((*(*a1 + 1088))(a1))
        {
          (*(*a1 + 1088))(a1);
          if (CCLogStream::shouldLog())
          {
            v49 = (*(*a1 + 1088))(a1);
            CCLogStream::logAlert(v49, "[dk] %s@%d: Range check failed, count[%u] length[%u] chkSize[%lu], getSize[%lu]\n", "setLLW_PARAMS", 4676, *(v5 + 2), v25, 20, v7);
          }
        }

        goto LABEL_71;
      }

      v33 = *(a2 + 4);
      *(v31 + 4) = *(a2 + 8);
      *v31 = v33;
      *(v31 + 15) = *(a2 + 10);
      *(v31 + 16) = *(a2 + 21);
      *(v31 + 6) = *(a2 + 14);
      *(v31 + 18) = 14;
      *(v31 + 14) = 5;
      LOWORD(v33) = (2 * (*(a2 + 18) & 1)) | *(v31 + 10);
      *(v31 + 10) = v33;
      LOWORD(v33) = (*(a2 + 18) >> 1) & 1 | v33;
      *(v31 + 10) = v33;
      *(v31 + 10) = v33 | *(a2 + 18) & 4;
      LOBYTE(v33) = (*(a2 + 18) >> 3) & 0x10 | *(v31 + 12);
      *(v31 + 12) = v33;
      *(v31 + 12) = (*(a2 + 18) >> 3) & 0xF | v33;
      LOBYTE(v33) = *(a2 + 20);
      *(v31 + 13) = v33 >> 4;
      *(v31 + 13) = v33 & 0xF0 | *(a2 + 20) & 0xF;
      LODWORD(v25) = v15 + 36;
    }

    else if (!v21)
    {
      if (v26 + 3 < v6 || v26 + 3 > v9 || v26 >= 0xFFFFFFFFFFFFFFFDLL)
      {
        if ((*(*a1 + 1088))(a1))
        {
          (*(*a1 + 1088))(a1);
          if (CCLogStream::shouldLog())
          {
            v45 = (*(*a1 + 1088))(a1);
            CCLogStream::logAlert(v45, "[dk] %s@%d: Range check failed, count[%u] length[%u] chkSize[%lu], getSize[%lu]\n", "setLLW_PARAMS", 4659, *(v5 + 2), v25, 4, v7);
          }
        }

        goto LABEL_71;
      }

      v26[1] = 4;
      v28 = v26 + 2;
      v29 = v26 + 7;
      v30 = (v26 + 2) >= 0xFFFFFFFFFFFFFFFDLL;
      if (v29 < v6 || v29 > v9 || v30 || v6 > v28 || v9 < v28)
      {
        if ((*(*a1 + 1088))(a1))
        {
          (*(*a1 + 1088))(a1);
          if (CCLogStream::shouldLog())
          {
            v47 = (*(*a1 + 1088))(a1);
            CCLogStream::logAlert(v47, "[dk] %s@%d: Range check failed, count[%u] length[%u] chkSize[%lu], getSize[%lu]\n", "setLLW_PARAMS", 4665, *(v5 + 2), v25, 4, v7);
          }
        }

        goto LABEL_71;
      }

      *v28 = *(a2 + 11);
      LODWORD(v25) = v15 + 20;
    }

    *(v16 + 2) = v25 - (v15 + 8) + 4;
    ++v11;
    v15 = v25;
    if (v11 >= *(v5 + 2))
    {
      goto LABEL_71;
    }
  }

  LODWORD(v25) = v15;
LABEL_79:
  if ((*(*a1 + 1088))(a1))
  {
    (*(*a1 + 1088))(a1);
    if (CCLogStream::shouldLog())
    {
      v43 = (*(*a1 + 1088))(a1);
      CCLogStream::logAlert(v43, "[dk] %s@%d: Range check failed, count[%u] length[%u] chkSize[%lu], getSize[%lu]\n", "setLLW_PARAMS", 4624, *(v5 + 2), v25, 8, v7);
    }
  }

LABEL_71:
  v50[0] = a1;
  v50[1] = AppleBCMWLANProximityInterface::setLLW_PARAMSCallback;
  if (v25)
  {
    v37 = v6;
  }

  else
  {
    v37 = 0;
  }

  v50[2] = 0;
  v50[3] = v37;
  v50[4] = v25;
  v38 = *(*(a1 + 17) + 960);
  InterfaceId = IO80211SkywalkInterface::getInterfaceId(a1);
  v40 = AppleBCMWLANCommander::sendVirtualIOVarSet(v38, InterfaceId, "hp2p", &v50[3], kNoRxExpected, v50, 0);
  v41 = 0;
  if (v40)
  {
    AppleBCMWLANProximityInterface::setLLW_PARAMS(a1, v40, &v51);
LABEL_105:
    v41 = v51;
    if (!v5)
    {
      return v41;
    }
  }

  IOFreeData();
  return v41;
}